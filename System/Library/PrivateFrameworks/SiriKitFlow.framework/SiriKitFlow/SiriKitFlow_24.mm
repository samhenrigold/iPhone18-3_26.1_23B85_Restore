uint64_t HandleIntentFlowFrame.namespace.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

void *sub_1DCD7B2E8()
{
  v1 = *(v0 + 56);
  v2 = v1;
  return v1;
}

void *sub_1DCD7B31C()
{
  v1 = *(v0 + 64);
  v2 = v1;
  return v1;
}

void sub_1DCD7B348(uint64_t a1)
{
  v2 = *(v1 + 64);
  *(v1 + 64) = a1;
}

void HandleIntentFlowFrame.__allocating_init(delegate:app:intent:)(uint64_t a1, uint64_t a2, void *a3)
{
  OUTLINED_FUNCTION_5_5();
  swift_allocObject();
  HandleIntentFlowFrame.init(delegate:app:intent:)(a1, a2, a3);
}

void HandleIntentFlowFrame.init(delegate:app:intent:)(uint64_t a1, uint64_t a2, void *a3)
{
  v3[2] = 0xD000000000000012;
  v3[3] = 0x80000001DD11BFB0;
  v3[7] = 0;
  v3[8] = 0;
  v3[4] = a1;
  v3[5] = a2;
  v3[6] = a3;
  swift_unknownObjectRetain();
  sub_1DD0DCF8C();
}

uint64_t HandleIntentFlowFrame.__allocating_init(delegate:app:intent:deviceState:)(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4)
{
  OUTLINED_FUNCTION_5_5();
  v8 = swift_allocObject();
  HandleIntentFlowFrame.init(delegate:app:intent:deviceState:)(a1, a2, a3, a4);
  return v8;
}

void *HandleIntentFlowFrame.init(delegate:app:intent:deviceState:)(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4)
{
  v4[2] = 0xD000000000000012;
  v4[3] = 0x80000001DD11BFB0;
  v4[7] = 0;
  v4[8] = 0;
  v4[4] = a1;
  v4[5] = a2;
  v4[6] = a3;
  sub_1DCB18FF0(a4, (v4 + 9));
  return v4;
}

uint64_t sub_1DCD7B560(uint64_t a1, uint64_t a2, void (*a3)(char *))
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA9BE0, &qword_1DD0E9590);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v13 - v6;
  if (qword_1EDE4F908 != -1)
  {
    OUTLINED_FUNCTION_1_5(&qword_1EDE4F908);
  }

  v8 = qword_1EDE57E18;
  v9 = sub_1DD0DE6EC();
  sub_1DD0DD7EC("HandleFlow onInput called, this is unexpected", 45, 2, &dword_1DCAFC000, v8, v9, MEMORY[0x1E69E7CC0]);
  v10 = *MEMORY[0x1E699F738];
  sub_1DD0DB34C();
  OUTLINED_FUNCTION_2();
  (*(v11 + 104))(v7, v10);
  swift_storeEnumTagMultiPayload();
  a3(v7);
  return sub_1DCB0E9D8(v7, &unk_1ECCA9BE0, &qword_1DD0E9590);
}

void sub_1DCD7B6B0(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v36 = a2;
  v37 = a3;
  v35 = a1;
  v5 = *v3;
  sub_1DD0DD85C();
  OUTLINED_FUNCTION_9();
  v38 = v7;
  v39 = v6;
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDE4F908 != -1)
  {
    OUTLINED_FUNCTION_1_5(&qword_1EDE4F908);
  }

  v11 = qword_1EDE57E18;
  sub_1DD0DD82C();
  sub_1DD0DE7FC();
  sub_1DD0DD81C();
  v12 = v3[5];
  v27 = v3[4];
  v13 = sub_1DCD7B2E0();
  v34 = v10;
  v14 = *(v5 + 88);
  v24 = *(v5 + 80);
  (*(v14 + 104))(&v40, v12, v13);

  v15 = v40;
  v16 = v42;
  v31 = v42;
  v32 = v40;
  v25 = v43;
  v26 = v41;
  v18 = v44;
  v17 = v45;
  v29 = v45;
  v30 = v44;
  sub_1DD0DE7EC();
  sub_1DD0DD81C();
  v33 = v35[3];
  v35 = __swift_project_boxed_opaque_existential_1(v35, v33);
  v28 = sub_1DCD7B2E0();
  v19 = sub_1DCD7B2E0();
  LODWORD(v27) = (*(v14 + 296))(v19, v24, v14);

  v40 = v15;
  v41 = v26;
  v42 = v16;
  v43 = v25;
  v44 = v18;
  v45 = v17;
  OUTLINED_FUNCTION_92_2();
  v20 = swift_allocObject();
  v21 = v36;
  v22 = v37;
  v20[2] = v4;
  v20[3] = v21;
  v20[4] = v22;
  swift_getAssociatedTypeWitness();
  sub_1DD0DCF8C();
}

void sub_1DCD7B9D0(uint64_t a1, uint64_t *a2, void (*a3)(void **))
{
  v5 = *a1;
  v4 = *(a1 + 8);
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  if (qword_1EDE4F908 != -1)
  {
    swift_once();
  }

  v8 = qword_1EDE57E18;
  v9 = sub_1DD0DE6DC();
  if (os_log_type_enabled(v8, v9))
  {
    v29 = sub_1DD0DE6DC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA25F0, &unk_1DD0E3370);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1DD0E07C0;
    v34 = 0;
    v35 = 0xE000000000000000;
    v30 = v5;
    v31 = v4;
    v32 = v6;
    v33 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA5690, &qword_1DD0F22F8);
    sub_1DD0DEDBC();
    *(v10 + 56) = MEMORY[0x1E69E6158];
    *(v10 + 64) = sub_1DCB34060();
    *(v10 + 32) = 0;
    *(v10 + 40) = 0xE000000000000000;
    sub_1DD0DD7EC("HandleIntentFlowFrame executeHandle response %@", 47, 2, &dword_1DCAFC000, v8, v29, v10);

    if ((v7 & 1) == 0)
    {
      goto LABEL_5;
    }

LABEL_9:
    v24 = sub_1DD0DE6EC();
    sub_1DD0DD7EC("HandleIntentProcessing resulted in a failure.", 45, 2, &dword_1DCAFC000, v8, v24, MEMORY[0x1E69E7CC0]);
    type metadata accessor for CommandFailure();
    sub_1DCC7AE30();
    swift_allocError();
    *v25 = v5;
    sub_1DD0DCF8C();
  }

  v23 = sub_1DD0DE6CC();
  sub_1DD0DD7EC("HandleIntentFlowFrame executeHandle response", 44, 2, &dword_1DCAFC000, v8, v23, MEMORY[0x1E69E7CC0]);
  if (v7)
  {
    goto LABEL_9;
  }

LABEL_5:
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = v6;
  v13 = v5;
  v14 = sub_1DCB3BACC(AssociatedTypeWitness, AssociatedTypeWitness);
  if (!v14)
  {
LABEL_11:

    type metadata accessor for CommandFailure();
    swift_allocObject();
    v26 = CommandFailure.init(errorCode:reason:)(-1, 0xD00000000000002ALL, 0x80000001DD11C480);
    sub_1DCC7AE30();
    v27 = swift_allocError();
    *v28 = v26;
    v30 = v27;
    v31 = 0;
    LOBYTE(v32) = 1;
    a3(&v30);
    goto LABEL_12;
  }

  v15 = v14;
  v16 = swift_getAssociatedTypeWitness();
  v17 = sub_1DCB3BB68(v16, v16);
  if (!v17)
  {

    v13 = v12;
    v12 = v15;
    goto LABEL_11;
  }

  v18 = v17;
  v19 = v17;
  v20 = v15;
  sub_1DCD7B310(v18);
  v30 = v15;
  v31 = v18;
  LOBYTE(v32) = 0;
  v21 = v20;
  v22 = v19;
  a3(&v30);

LABEL_12:
  sub_1DCB74F28(v30, v31, v32);
}

uint64_t sub_1DCD7BDD0(uint64_t a1, uint64_t *a2, void (*a3)(char *), void (*a4)(char *))
{
  v5 = v4;
  v50 = a4;
  v48 = a3;
  v46 = a1;
  v7 = *v5;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA9BF0, &qword_1DD0EA250);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = v41 - v10;
  v49 = sub_1DD0DD85C();
  OUTLINED_FUNCTION_9();
  v47 = v12;
  v14 = *(v13 + 64);
  v17 = MEMORY[0x1EEE9AC00](v15, v16);
  v43 = v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = v41 - v19;
  v21 = *a2;
  v44 = a2[1];
  v45 = v21;
  if (qword_1EDE4F908 != -1)
  {
    OUTLINED_FUNCTION_1_5(&qword_1EDE4F908);
  }

  v22 = qword_1EDE57E18;
  sub_1DD0DD82C();
  v23 = v5[4];
  v24 = sub_1DCD7B2E0();
  v25 = sub_1DCD7B2E8();
  v51 = v20;
  v28 = v7 + 80;
  v26 = *(v7 + 80);
  v27 = *(v28 + 8);
  v29 = *(v27 + 288);
  v41[1] = v23;
  v30 = v29(v24, v25, v5 + 9, v26, v27);

  if ((v30 & 1) == 0)
  {
    sub_1DD0DE7FC();
    v31 = v51;
    sub_1DD0DD81C();
    v42 = v5[5];
    v32 = v47;
    v33 = v43;
    v34 = v49;
    (*(v47 + 16))(v43, v31, v49);
    v35 = (*(v32 + 80) + 32) & ~*(v32 + 80);
    v36 = (v14 + v35 + 7) & 0xFFFFFFFFFFFFFFF8;
    v37 = swift_allocObject();
    *(v37 + 16) = v26;
    *(v37 + 24) = v27;
    (*(v32 + 32))(v37 + v35, v33, v34);
    *(v37 + v36) = v5;
    v38 = (v37 + ((v36 + 15) & 0xFFFFFFFFFFFFFFF8));
    v39 = v50;
    *v38 = v48;
    v38[1] = v39;
    sub_1DD0DCF8C();
  }

  type metadata accessor for SiriKitFlowFrameInput(0);
  sub_1DD0DB32C();
  swift_storeEnumTagMultiPayload();
  v48(v11);
  sub_1DCB0E9D8(v11, &qword_1ECCA9BF0, &qword_1DD0EA250);
  return (*(v47 + 8))(v51, v49);
}

uint64_t sub_1DCD7C150(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *))
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA9BF0, &qword_1DD0EA250);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = (v19 - v8);
  sub_1DD0DE7EC();
  if (qword_1EDE4F908 != -1)
  {
    swift_once();
  }

  v10 = qword_1EDE57E18;
  sub_1DD0DD81C();
  if (a1)
  {
    swift_getErrorValue();
    v19[3] = v6;
    v11 = a1;
    v12 = sub_1DD0DF18C();
    v14 = v13;
    type metadata accessor for CommandFailure();
    swift_allocObject();
    v15 = CommandFailure.init(errorCode:reason:)(-1, v12, v14);
    sub_1DCC7AE30();
    swift_allocError();
    *v16 = v15;
    sub_1DD0DCF8C();
  }

  v17 = sub_1DD0DE6DC();
  sub_1DD0DD7EC("HandleIntentFlowFrame exiting successfully", 42, 2, &dword_1DCAFC000, v10, v17, MEMORY[0x1E69E7CC0]);
  type metadata accessor for SiriKitFlowFrameInput(0);
  sub_1DD0DB32C();
  swift_storeEnumTagMultiPayload();
  a4(v9);
  return sub_1DCB0E9D8(v9, &qword_1ECCA9BF0, &qword_1DD0EA250);
}

void *sub_1DCD7C48C@<X0>(uint64_t a1@<X8>)
{
  result = sub_1DCD7B31C();
  if (result)
  {
    v3 = 0;
  }

  else
  {
    v5 = sub_1DCD7B2E8();
    if (v5)
    {
      v3 = v5;
      result = sub_1DCD7B2E0();
      v4 = 0;
      goto LABEL_6;
    }

    type metadata accessor for CommandFailure();
    swift_allocObject();
    v6 = CommandFailure.init(errorCode:reason:)(-1, 0xD000000000000034, 0x80000001DD11C020);
    sub_1DCC7AE30();
    result = swift_allocError();
    v3 = 0;
    *v7 = v6;
  }

  v4 = 1;
LABEL_6:
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  return result;
}

void sub_1DCD7C544(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v78 = a6;
  v79 = a7;
  v76 = a2;
  v77 = a5;
  v75 = a1;
  v80 = v8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA7470, &qword_1DD0E16E0);
  v13 = MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v72 = &v70 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v15);
  v71 = &v70 - v16;
  v17 = [a4 _intentResponseCode];
  if (qword_1EDE4F908 != -1)
  {
    OUTLINED_FUNCTION_1_5(&qword_1EDE4F908);
  }

  sub_1DD0DE6DC();
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA25F0, &unk_1DD0E3370);
  v18 = swift_allocObject();
  OUTLINED_FUNCTION_9_37(v18, xmmword_1DD0E4010);
  type metadata accessor for INIntentResponseCode(0);
  v70 = v19;
  sub_1DD0DEDBC();
  v20 = v81;
  v21 = v82;
  v18[3].n128_u64[1] = MEMORY[0x1E69E6158];
  v74 = sub_1DCB34060();
  v18[4].n128_u64[0] = v74;
  v18[2].n128_u64[0] = v20;
  v18[2].n128_u64[1] = v21;
  v18[6].n128_u64[0] = OUTLINED_FUNCTION_12_35();
  v18[6].n128_u64[1] = swift_getWitnessTable();
  v18[4].n128_u64[1] = a3;
  v18[8].n128_u64[1] = OUTLINED_FUNCTION_12_35();
  v18[9].n128_u64[0] = swift_getWitnessTable();
  v18[7].n128_u64[0] = a4;
  v22 = a3;
  v23 = a4;
  OUTLINED_FUNCTION_6_1();
  sub_1DD0DD7EC(v24);

  if ([v23 _requiresAuthentication])
  {
    sub_1DCCFA914();
    v25 = sub_1DD0DE93C();
    v26 = sub_1DD0DE70C();
    sub_1DD0DD7EC("HandleIntentFlowFrame Handle IntentResponse with type: authentication required", 78, 2, &dword_1DCAFC000, v25, v26, MEMORY[0x1E69E7CC0]);

    sub_1DCD7CC64(v75, v76, v22, v27, v77, v78, v79);
  }

  switch(v17)
  {
    case 0uLL:
    case 1uLL:
    case 5uLL:
    case 7uLL:
    case 8uLL:
      v28 = OUTLINED_FUNCTION_1_60();
      sub_1DCD7D078(v28, v29, v30, v31, v32, v33, v34);
    case 2uLL:
    case 6uLL:
      sub_1DD0DE6DC();
      v35 = OUTLINED_FUNCTION_11_38();
      *(v35 + 16) = xmmword_1DD0E07C0;
      v36 = 0x80000001DD11BCF0;
      v37 = 0xD000000000000019;
      if (v17 == 2)
      {
        v37 = 0x65756E69746E6F63;
      }

      *(v35 + 56) = MEMORY[0x1E69E6158];
      *(v35 + 64) = v74;
      if (v17 == 2)
      {
        v36 = 0xED00007070416E49;
      }

      *(v35 + 32) = v37;
      *(v35 + 40) = v36;
      OUTLINED_FUNCTION_6_1();
      sub_1DD0DD7EC(v38);

      v39 = OUTLINED_FUNCTION_1_60();
      sub_1DCD7CE68(v39, v40, v41, v42, v43, v44, v45);
    case 3uLL:
      sub_1DD0DE6DC();
      OUTLINED_FUNCTION_6_1();
      sub_1DD0DD7EC(v46);
      v47 = OUTLINED_FUNCTION_1_60();
      sub_1DCD7CF90(v47, v48);
    case 4uLL:
      sub_1DD0DE6DC();
      OUTLINED_FUNCTION_6_1();
      sub_1DD0DD7EC(v49);
      v50 = OUTLINED_FUNCTION_1_60();
      sub_1DCD7CD80(v50, v51);
    default:
      sub_1DD0DE6EC();
      v52 = OUTLINED_FUNCTION_11_38();
      OUTLINED_FUNCTION_9_37(v52, xmmword_1DD0E07C0);
      sub_1DD0DEDBC();
      v53 = v81;
      v54 = v82;
      v55 = v74;
      v52[3].n128_u64[1] = MEMORY[0x1E69E6158];
      v52[4].n128_u64[0] = v55;
      v52[2].n128_u64[0] = v53;
      v52[2].n128_u64[1] = v54;
      OUTLINED_FUNCTION_6_1();
      sub_1DD0DD7EC(v56);

      if (qword_1EDE4F900 != -1)
      {
        swift_once();
      }

      v57 = sub_1DD0DD8FC();
      v58 = __swift_project_value_buffer(v57, qword_1EDE57E00);
      v59 = *(v57 - 8);
      v60 = v71;
      (*(v59 + 16))(v71, v58, v57);
      __swift_storeEnumTagSinglePayload(v60, 0, 1, v57);
      v61 = v60;
      v62 = v72;
      sub_1DCBCF6C8(v61, v72);
      if (__swift_getEnumTagSinglePayload(v62, 1, v57) == 1)
      {
        sub_1DCB0E9D8(v72, &unk_1ECCA7470, &qword_1DD0E16E0);
      }

      else
      {
        v63 = sub_1DD0DD8EC();
        v64 = sub_1DD0DE6EC();
        if (os_log_type_enabled(v63, v64))
        {
          v65 = swift_slowAlloc();
          v66 = swift_slowAlloc();
          v81 = v66;
          *v65 = 136315650;
          v67 = sub_1DD0DEC3C();
          v69 = sub_1DCB10E9C(v67, v68, &v81);

          *(v65 + 4) = v69;
          *(v65 + 12) = 2048;
          *(v65 + 14) = 177;
          *(v65 + 22) = 2080;
          *(v65 + 24) = sub_1DCB10E9C(0xD000000000000020, 0x80000001DD11C1F0, &v81);
          _os_log_impl(&dword_1DCAFC000, v63, v64, "FatalError at %s:%lu - %s", v65, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x1E12A8390](v66, -1, -1);
          MEMORY[0x1E12A8390](v65, -1, -1);
        }

        (*(v59 + 8))(v72, v57);
      }

      static SiriKitLifecycle._logCrashToEventBus(_:)(0xD000000000000020, 0x80000001DD11C1F0);
  }
}

void sub_1DCD7CC64(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  OUTLINED_FUNCTION_92_2();
  v10 = swift_allocObject();
  v10[2] = v7;
  v10[3] = a6;
  v10[4] = a7;
  sub_1DD0DCF8C();
}

void sub_1DCD7CD80(void *a1, uint64_t a2)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  OUTLINED_FUNCTION_92_2();
  v2 = swift_allocObject();
  OUTLINED_FUNCTION_10_38(v2);
  OUTLINED_FUNCTION_7_38();
  OUTLINED_FUNCTION_7_38();
  sub_1DD0DCF8C();
}

void sub_1DCD7CE68(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  OUTLINED_FUNCTION_92_2();
  v10 = swift_allocObject();
  v10[2] = v7;
  v10[3] = a6;
  v10[4] = a7;
  sub_1DD0DCF8C();
}

void sub_1DCD7CF90(void *a1, uint64_t a2)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  OUTLINED_FUNCTION_92_2();
  v2 = swift_allocObject();
  OUTLINED_FUNCTION_10_38(v2);
  OUTLINED_FUNCTION_7_38();
  OUTLINED_FUNCTION_7_38();
  sub_1DD0DCF8C();
}

void sub_1DCD7D078(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  if (qword_1EDE4F908 != -1)
  {
    OUTLINED_FUNCTION_1_5(&qword_1EDE4F908);
  }

  v13 = qword_1EDE57E18;
  v14 = sub_1DD0DE6DC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA25F0, &unk_1DD0E3370);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1DD0E07C0;
  [a4 _code];
  v16 = sub_1DD0DF03C();
  v18 = v17;
  *(v15 + 56) = MEMORY[0x1E69E6158];
  *(v15 + 64) = sub_1DCB34060();
  *(v15 + 32) = v16;
  *(v15 + 40) = v18;
  sub_1DD0DD7EC("HandleIntentFlowFrame Handle IntentResponse with error code: %@", 63, 2, &dword_1DCAFC000, v13, v14, v15);

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  OUTLINED_FUNCTION_92_2();
  v19 = swift_allocObject();
  v19[2] = v8;
  v19[3] = a6;
  v19[4] = a7;
  sub_1DD0DCF8C();
}

uint64_t sub_1DCD7D278(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  if (a2)
  {
    if (qword_1EDE4F908 != -1)
    {
      OUTLINED_FUNCTION_1_5(&qword_1EDE4F908);
    }

    sub_1DD0DE6EC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA25F0, &unk_1DD0E3370);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_1DD0E07C0;
    swift_getErrorValue();
    v6 = sub_1DD0DF18C();
    v8 = v7;
    *(v5 + 56) = MEMORY[0x1E69E6158];
    *(v5 + 64) = sub_1DCB34060();
    *(v5 + 32) = v6;
    *(v5 + 40) = v8;
    sub_1DD0DD7EC("HandleIntentFlowFrame encountered an error while processing a response: %s", v13);

    v9 = a1;
  }

  else
  {
    if (qword_1EDE4F908 != -1)
    {
      OUTLINED_FUNCTION_1_5(&qword_1EDE4F908);
    }

    v10 = qword_1EDE57E18;
    v11 = sub_1DD0DE6DC();
    sub_1DD0DD7EC("HandleIntentFlowFrame successfully processed a response", 55, 2, &dword_1DCAFC000, v10, v11, MEMORY[0x1E69E7CC0]);
    v9 = 0;
  }

  return a3(v9);
}

uint64_t HandleIntentFlowFrame.deinit()
{

  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 72));
  return v0;
}

uint64_t HandleIntentFlowFrame.__deallocating_deinit()
{
  HandleIntentFlowFrame.deinit();
  OUTLINED_FUNCTION_5_5();

  return swift_deallocClassInstance();
}

uint64_t sub_1DCD7D530(void *a1)
{
  v3 = *(sub_1DD0DD85C() - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v1 + v5);
  v7 = *(v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_1DCD7C150(a1, v1 + v4, v6, v7);
}

uint64_t sub_1DCD7D5DC(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

void sub_1DCD7D618(uint64_t a1)
{
  v2 = *(a1 + 8);
}

uint64_t sub_1DCD7D654(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *a1;
  *a1 = *a2;
  v6 = v4;

  v7 = *(a2 + 8);
  v8 = *(a1 + 8);
  *(a1 + 8) = v7;
  v9 = v7;

  return a1;
}

uint64_t sub_1DCD7D6AC(uint64_t a1, _OWORD *a2)
{
  v4 = *(a1 + 8);
  *a1 = *a2;

  return a1;
}

void sub_1DCD7D8DC(uint64_t a1, uint64_t a2, void *a3, void *a4, void (*a5)(void, void, void, void, void, void, void), uint64_t a6, uint64_t a7, uint64_t a8)
{
  v21 = a5;
  v22 = a3;
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_22_0();
  v23 = v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  (*(a8 + 176))(a7, a8);
  OUTLINED_FUNCTION_126();
  v17 = swift_allocObject();
  v17[2] = a7;
  v17[3] = a8;
  v18 = v21;
  v19 = v22;
  v17[4] = a4;
  v17[5] = v18;
  v17[6] = a6;
  v17[7] = a1;
  v17[8] = a2;
  v17[9] = v19;
  v17[10] = v24;
  v21 = *(swift_getAssociatedConformanceWitness() + 168);
  v20 = a4;
  sub_1DD0DCF8C();
}

uint64_t sub_1DCD7DACC(uint64_t a1, void *a2, uint64_t (*a3)(uint64_t, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v16);
  memcpy(__dst, a1, 0x49uLL);
  v17 = __dst[0];
  if (__dst[9])
  {
    if (qword_1EDE4F908 != -1)
    {
      swift_once();
    }

    v18 = qword_1EDE57E18;
    v19 = sub_1DD0DE6EC();
    sub_1DD0DD7EC("Failed to create Interstitial Dialog Template", 45, 2, &dword_1DCAFC000, v18, v19, MEMORY[0x1E69E7CC0]);
    return a3(v17, 1);
  }

  else
  {
    v31 = a3;
    v21 = __dst[1];
    if (__dst[1])
    {
      if (a2)
      {
        v29 = *(a10 + 152);
        sub_1DCD7E9E4(__dst, v35);
        v30 = a2;
        v29(a9, a10);
        v22 = swift_allocObject();
        *(v22 + 16) = a9;
        *(v22 + 24) = a10;
        *(v22 + 32) = v17;
        *(v22 + 40) = v21;
        v23 = *(a1 + 32);
        *(v22 + 48) = *(a1 + 16);
        *(v22 + 64) = v23;
        *(v22 + 80) = *(a1 + 48);
        *(v22 + 96) = *(a1 + 64);
        *(v22 + 104) = a8;
        *(v22 + 112) = a5;
        *(v22 + 120) = a7;
        *(v22 + 128) = a2;
        *(v22 + 136) = a6;
        *(v22 + 144) = v31;
        *(v22 + 152) = a4;
        swift_getAssociatedConformanceWitness();
        v24 = v30;
        sub_1DD0DCF8C();
      }

      if (qword_1EDE4F908 != -1)
      {
        swift_once();
      }

      v27 = qword_1EDE57E18;
      v28 = sub_1DD0DE6DC();
      sub_1DD0DD7EC("IntentResponse is nil, not displaying interstitial", 50, 2, &dword_1DCAFC000, v27, v28, MEMORY[0x1E69E7CC0]);
    }

    else
    {
      if (qword_1EDE4F908 != -1)
      {
        swift_once();
      }

      v25 = qword_1EDE57E18;
      v26 = sub_1DD0DE6DC();
      sub_1DD0DD7EC("No interstitial Dialog returned, continuing", 43, 2, &dword_1DCAFC000, v25, v26, MEMORY[0x1E69E7CC0]);
    }

    return v31(0, 0);
  }
}

uint64_t sub_1DCD7DF0C(uint64_t a1, char a2, void *a3, uint64_t a4, uint64_t a5, void *a6, void *a7, uint64_t a8, uint64_t (*a9)(uint64_t, uint64_t), uint64_t a10, uint64_t a11, uint64_t a12)
{
  v43 = a8;
  v44 = a5;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA3270, &qword_1DD0E0F70);
  MEMORY[0x1EEE9AC00](v18 - 8, v19);
  v21 = &v34 - v20;
  v22 = type metadata accessor for AceOutput(0);
  MEMORY[0x1EEE9AC00](v22 - 8, v23);
  if (a2)
  {
    if (qword_1EDE4F908 != -1)
    {
      swift_once();
    }

    v24 = qword_1EDE57E18;
    v25 = sub_1DD0DE6EC();
    sub_1DD0DD7EC("Failed to create interstitial ace views", 39, 2, &dword_1DCAFC000, v24, v25, MEMORY[0x1E69E7CC0]);
    v26 = a1;
    v27 = 1;
  }

  else
  {
    if (sub_1DCB08B14(a1) || *(a3[4] + 16) || *(a3[5] + 16))
    {
      v41 = a9;
      v42 = a10;
      memcpy(__dst, a3, 0x48uLL);
      sub_1DCB17CA0(a4 + 64, v46);
      v37 = *(*(a4 + 16) + 16);
      v35 = a3[7] - 3;
      v36 = (*(a12 + 320))(a6, a11, a12);
      v29 = type metadata accessor for NLContextUpdate(0);
      __swift_storeEnumTagSinglePayload(v21, 1, 1, v29);
      LOBYTE(v45[0]) = 33;
      v30 = *(a12 + 304);
      v39 = a6;
      v40 = a7;
      v38 = a11;
      v31 = v30(v45, a6, a7, a11, a12);
      v32 = v31;
      if (v31)
      {
        v33 = type metadata accessor for DefaultFlowActivity();
        v31 = sub_1DCCAE20C();
      }

      else
      {
        v33 = 0;
        v45[1] = 0;
        v45[2] = 0;
      }

      v45[0] = v32;
      v45[3] = v33;
      v45[4] = v31;
      static AceOutputHelper.makeConfirmedViewOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)(__dst, v46, v37, a1, v35 < 0xFFFFFFFFFFFFFFFELL, v36 & 1, v21, MEMORY[0x1E69E7CC0]);
      sub_1DCB16D50(v21, &unk_1ECCA3270, &qword_1DD0E0F70);
      __swift_destroy_boxed_opaque_existential_1Tm(v46);
      sub_1DCB16D50(v45, &unk_1ECCA3280, &unk_1DD0E23D0);
      sub_1DCB82888();
    }

    v26 = 0;
    v27 = 0;
  }

  return a9(v26, v27);
}

uint64_t sub_1DCD7E360(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t *a8, uint64_t (*a9)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, void *, uint64_t, uint64_t *), uint64_t a10, uint64_t a11, uint64_t a12)
{
  if ((a2 & 1) == 0)
  {
    sub_1DCB17CA0(a3 + 104, v22);
    v21 = 33;
    v20 = 29;
    v18 = 3;
    v19 = 0;
    sub_1DCFA6D00(v22, &v21, a4, a5, a6, &v20, 0, 1, a7, &v18, *a8, a8[1], a11, a12);
  }

  return a9(a1, 1, a3, a4, a5, a6, a7, a8);
}

void sub_1DCD7E47C(uint64_t a1, uint64_t a2, void *a3, void *a4, void (*a5)(uint64_t, uint64_t (*)(), void *, uint64_t, uint64_t), uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v20 = a5;
  v21 = a6;
  v23 = a4;
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_22_0();
  v22 = v15;
  MEMORY[0x1EEE9AC00](v16, v17);
  (*(a8 + 176))(a7, a8);
  OUTLINED_FUNCTION_126();
  v18 = swift_allocObject();
  v18[2] = a7;
  v18[3] = a8;
  v19 = v21;
  v18[4] = v20;
  v18[5] = v19;
  v18[6] = v9;
  v18[7] = a2;
  v18[8] = a1;
  v18[9] = a3;
  v18[10] = v23;
  v20 = *(swift_getAssociatedConformanceWitness() + 136);
  sub_1DD0DCF8C();
}

uint64_t sub_1DCD7E668(uint64_t *a1, uint64_t (*a2)(void, uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA3270, &qword_1DD0E0F70);
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v17);
  v18 = *a1;
  if ((a1[9] & 1) == 0)
  {
    v20 = a8;
    v21 = a1[1];
    v28 = 7;
    v27 = 76;
    v25 = 0;
    LOWORD(v26) = 0;
    sub_1DCFA6D00((a4 + 104), &v28, a5, a6, a7, &v27, 0, 1, v20, &v25, v18, v21, a9, a10);
  }

  return a2(*a1, 1);
}

uint64_t sub_1DCD7E9E4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECCA5698, qword_1DD0F2358);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void *sub_1DCD7EB3C@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  sub_1DCD7EDD4(&v12);
  result = v12;
  v5 = v14;
  v6 = v14 >> 6;
  if (v6 == 2)
  {
    v7 = 0;
    goto LABEL_5;
  }

  v7 = v13;
  if (v6 != 1)
  {
    sub_1DCD7FBDC(v12, v13, v14);
    type metadata accessor for HandleIntentThenRespondFlow.HandleIntentThenRespondFlowError(0, *(v3 + 80), *(v3 + 88), v8);
    OUTLINED_FUNCTION_1_61();
    WitnessTable = swift_getWitnessTable();
    result = OUTLINED_FUNCTION_10_5(WitnessTable);
    v11 = v10;
    v7 = 0;
    *v11 = 0;
LABEL_5:
    v5 = 1;
  }

  *a1 = result;
  *(a1 + 8) = v7;
  *(a1 + 16) = v5 & 1;
  return result;
}

void sub_1DCD7EC04()
{
  if (qword_1EDE4F900 != -1)
  {
    swift_once();
  }

  v0 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v0, qword_1EDE57E00);
  sub_1DD0DCF8C();
}

id sub_1DCD7EDD4@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 40);
  v3 = *(v1 + 48);
  *a1 = v2;
  *(a1 + 8) = v3;
  v4 = *(v1 + 56);
  *(a1 + 16) = v4;
  return sub_1DCD7FB48(v2, v3, v4);
}

void sub_1DCD7EDE8(uint64_t a1)
{
  v2 = *(a1 + 16);
  v4 = *(v1 + 40);
  v3 = *(v1 + 48);
  *(v1 + 40) = *a1;
  v5 = *(v1 + 56);
  *(v1 + 56) = v2;
  sub_1DCD7FBDC(v4, v3, v5);

  sub_1DCD7EC04();
}

uint64_t sub_1DCD7EE2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  *(result + 40) = 0;
  *(result + 48) = 0;
  *(result + 32) = a3;
  *(result + 56) = -64;
  return result;
}

void sub_1DCD7EE80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for HandleIntentThenRespondFlow(0, *(*v4 + 80), *(*v4 + 88), a4);
  swift_getWitnessTable();
  Flow.deferToExecuteAsync(_:)();
}

uint64_t sub_1DCD7EF24(uint64_t a1)
{
  v2[9] = a1;
  v2[10] = v1;
  v2[11] = *v1;
  return MEMORY[0x1EEE6DFA0](sub_1DCD7EF6C, 0, 0);
}

uint64_t sub_1DCD7EF6C()
{
  v17 = v0;
  sub_1DCD7EDD4(v0 + 40);
  v3 = *(v0 + 40);
  v2 = *(v0 + 48);
  *(v0 + 96) = v3;
  *(v0 + 104) = v2;
  v4 = *(v0 + 56);
  if ((v4 >> 6) - 1 >= 2)
  {
    if (v4 >> 6)
    {
      if (!(v2 | v3) && v4 == 192)
      {
        v15 = xmmword_1DD0E5100;
        v16 = -64;
        sub_1DCD7EDE8(&v15);
      }

      type metadata accessor for HandleIntentThenRespondFlow.HandleIntentThenRespondFlowError(0, *(*(v0 + 88) + 80), *(*(v0 + 88) + 88), v1);
      OUTLINED_FUNCTION_1_61();
      swift_getWitnessTable();
      v12 = swift_allocError();
      *v13 = 1;
      v15 = v12;
      v16 = 0x80;
      sub_1DCD7EDE8(&v15);
    }

    v14 = (*(*(v0 + 80) + 24) + **(*(v0 + 80) + 24));
    v11 = swift_task_alloc();
    *(v0 + 112) = v11;
    *v11 = v0;
    v11[1] = sub_1DCD7F224;

    return v14(v3, v2);
  }

  else
  {
    sub_1DCD7FBDC(v3, v2, v4);
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
    }

    v5 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v5, qword_1EDE57E00);
    v6 = sub_1DD0DD8EC();
    v7 = sub_1DD0DE6DC();
    if (OUTLINED_FUNCTION_75(v7))
    {
      v8 = OUTLINED_FUNCTION_50_0();
      *v8 = 0;
      _os_log_impl(&dword_1DCAFC000, v6, v7, "Nothing left to do. Flow is complete and will exit.", v8, 2u);
      OUTLINED_FUNCTION_80();
    }

    static ExecuteResponse.complete()();
    OUTLINED_FUNCTION_29();

    return v9();
  }
}

uint64_t sub_1DCD7F224(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 120) = v1;

  if (v1)
  {
    v5 = sub_1DCD7F3FC;
  }

  else
  {
    *(v4 + 128) = a1;
    v5 = sub_1DCD7F34C;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

void sub_1DCD7F34C()
{
  v6 = v0;
  v1 = *(v0 + 104);
  v4[0] = *(v0 + 96);
  v4[1] = v1;
  v5 = 64;
  v2 = v4[0];
  v3 = v1;
  sub_1DCD7EDE8(v4);
}

void sub_1DCD7F3FC()
{
  v14 = v0;
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
  }

  v1 = *(v0 + 120);
  v2 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v2, qword_1EDE57E00);
  v3 = v1;
  v4 = sub_1DD0DD8EC();
  v5 = sub_1DD0DE6EC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v12[0] = v7;
    *v6 = 136315138;
    swift_getErrorValue();
    v8 = sub_1DD0DF18C();
    v10 = sub_1DCB10E9C(v8, v9, v12);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_1DCAFC000, v4, v5, "Unexpected error while attempting to create response flow: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    OUTLINED_FUNCTION_80();
    OUTLINED_FUNCTION_80();
  }

  v12[0] = *(v0 + 120);
  v12[1] = 0;
  v13 = 0x80;
  v11 = v12[0];
  sub_1DCD7EDE8(v12);
}

void sub_1DCD7F600(__int128 *a1)
{
  v1 = *(a1 + 16);
  v2 = *a1;
  v3 = v1;
  sub_1DCD7F640(&v2);
}

void sub_1DCD7F640(uint64_t a1)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *v1;
  sub_1DCD7EDD4(&v29);
  v7 = v31 >= 0xC0u && v29 == 1 && v30 == 0;
  if (v7 && v31 == 192)
  {
    if ((v4 & 1) == 0)
    {
      v20 = qword_1EDE4F900;
      v21 = v3;
      v22 = v2;
      if (v20 != -1)
      {
        OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
      }

      v23 = sub_1DD0DD8FC();
      __swift_project_value_buffer(v23, qword_1EDE57E00);
      v24 = sub_1DD0DD8EC();
      v25 = sub_1DD0DE6DC();
      if (OUTLINED_FUNCTION_75(v25))
      {
        v26 = OUTLINED_FUNCTION_50_0();
        *v26 = 0;
        _os_log_impl(&dword_1DCAFC000, v24, v25, "Received a successful result from HandleIntentFlow.", v26, 2u);
        OUTLINED_FUNCTION_80();
      }

      v29 = v3;
      v30 = v2;
      v31 = 0;
      v27 = v21;
      v28 = v22;
      sub_1DCD7EDE8(&v29);
    }

    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
    }

    v16 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v16, qword_1EDE57E00);
    v17 = sub_1DD0DD8EC();
    v18 = sub_1DD0DE6EC();
    if (OUTLINED_FUNCTION_75(v18))
    {
      v19 = OUTLINED_FUNCTION_50_0();
      *v19 = 0;
      _os_log_impl(&dword_1DCAFC000, v17, v18, "Received a non-successful result from HandleIntentFlow. Skipping response and returning result.", v19, 2u);
      OUTLINED_FUNCTION_80();
    }

    v29 = v3;
    v30 = v2;
    v31 = 65;
    sub_1DCD7B274(v3, v2, 1);
  }

  else
  {
    sub_1DCD7FBDC(v29, v30, v31);
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
    }

    v8 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v8, qword_1EDE57E00);
    v9 = sub_1DD0DD8EC();
    v10 = sub_1DD0DE6EC();
    if (OUTLINED_FUNCTION_75(v10))
    {
      v11 = OUTLINED_FUNCTION_50_0();
      *v11 = 0;
      _os_log_impl(&dword_1DCAFC000, v9, v10, "Called in an unexpected state. Moving to error state.", v11, 2u);
      OUTLINED_FUNCTION_80();
    }

    type metadata accessor for HandleIntentThenRespondFlow.HandleIntentThenRespondFlowError(0, *(v5 + 80), *(v5 + 88), v12);
    OUTLINED_FUNCTION_1_61();
    WitnessTable = swift_getWitnessTable();
    v14 = OUTLINED_FUNCTION_10_5(WitnessTable);
    *v15 = 1;
    v29 = v14;
    v30 = 0;
    v31 = 0x80;
  }

  sub_1DCD7EDE8(&v29);
}

uint64_t sub_1DCD7F920()
{
  v1 = *(v0 + 16);
  result = 0x6F5479646165722ELL;
  switch(v1 >> 6)
  {
    case 1u:
      result = 0x74656C706D6F632ELL;
      break;
    case 2u:
      swift_getErrorValue();
      v3 = sub_1DD0DF18C();
      MEMORY[0x1E12A6780](v3);

      MEMORY[0x1E12A6780](41, 0xE100000000000000);
      result = 0x28726F7272652ELL;
      break;
    case 3u:
      if (*v0 == 0 && v1 == 192)
      {
        result = 0x646574726174732ELL;
      }

      else
      {
        result = 0x676E69746961772ELL;
      }

      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DCD7FA80(uint64_t a1)
{
  sub_1DD0DF1DC();
  sub_1DCBB11C4(v3, *v1);
  return sub_1DD0DF20C();
}

void *sub_1DCD7FAC8()
{

  sub_1DCD7FBDC(*(v0 + 40), *(v0 + 48), *(v0 + 56));
  return v0;
}

uint64_t sub_1DCD7FAFC()
{
  sub_1DCD7FAC8();

  return swift_deallocClassInstance();
}

id sub_1DCD7FB48(id result, void *a2, unsigned __int8 a3)
{
  switch(a3 >> 6)
  {
    case 1:
      v5 = a3 & 1;

      result = sub_1DCD7B274(result, a2, v5);
      break;
    case 2:

      goto LABEL_4;
    case 3:
      return result;
    default:
      v4 = result;
      result = a2;

LABEL_4:
      result = result;
      break;
  }

  return result;
}

void sub_1DCD7FBDC(void *a1, void *a2, unsigned __int8 a3)
{
  switch(a3 >> 6)
  {
    case 1:
      v4 = a3 & 1;

      sub_1DCD7B270(a1, a2, v4);
      break;
    case 2:

      goto LABEL_4;
    case 3:
      return;
    default:

      a1 = a2;

LABEL_4:

      break;
  }
}

uint64_t sub_1DCD7FC60(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  sub_1DCD7FB48(*a2, v4, v5);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  return a1;
}

uint64_t sub_1DCD7FCAC(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  sub_1DCD7FB48(*a2, v4, v5);
  v6 = *a1;
  v7 = *(a1 + 8);
  *a1 = v3;
  *(a1 + 8) = v4;
  v8 = *(a1 + 16);
  *(a1 + 16) = v5;
  sub_1DCD7FBDC(v6, v7, v8);
  return a1;
}

uint64_t sub_1DCD7FD04(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *a1;
  v5 = *(a1 + 8);
  *a1 = *a2;
  v6 = *(a1 + 16);
  *(a1 + 16) = v3;
  sub_1DCD7FBDC(v4, v5, v6);
  return a1;
}

uint64_t sub_1DCD7FD4C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7D && *(a1 + 17))
    {
      v2 = *a1 + 124;
    }

    else
    {
      v2 = ((*(a1 + 16) >> 6) & 0xFFFFFF83 | (4 * ((*(a1 + 16) >> 1) & 0x1F))) ^ 0x7F;
      if (v2 >= 0x7C)
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

uint64_t sub_1DCD7FD98(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7C)
  {
    *(result + 16) = 0;
    *result = a2 - 125;
    *(result + 8) = 0;
    if (a3 >= 0x7D)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7D)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 2 * (((-a2 >> 2) & 0x1F) - 32 * a2);
    }
  }

  return result;
}

uint64_t sub_1DCD7FDEC(uint64_t a1)
{
  v1 = *(a1 + 16) >> 6;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1DCD7FE08(uint64_t result, unsigned int a2)
{
  if (a2 < 3)
  {
    v2 = *(result + 16) & 1 | (a2 << 6);
  }

  else
  {
    *result = a2 - 3;
    *(result + 8) = 0;
    v2 = -64;
  }

  *(result + 16) = v2;
  return result;
}

uint64_t sub_1DCD7FE6C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DCB3FF64;

  return sub_1DCD7EF24(a1);
}

uint64_t sub_1DCD7FF2C(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

_BYTE *sub_1DCD7FF88(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t static SimpleHandoffSessionToCompanionFlowHelper.makeHandoffFlowAsync(deviceState:outputPublisher:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for SimpleHandoffSessionToCompanionFlowHelper.SimpleHandoffSessionToCompanionFlowStrategyAsync();
  v4 = swift_allocObject();
  sub_1DCB17D04(a1, v7);
  sub_1DCB17D04(a2, v6);
  type metadata accessor for HandoffSessionToCompanionFlowAsync();
  OUTLINED_FUNCTION_30_4();
  swift_allocObject();
  return sub_1DCC4AF24(v4, v7, v6);
}

uint64_t sub_1DCD80158()
{
  OUTLINED_FUNCTION_42();
  v0[184] = v1;
  v0[183] = v2;
  v0[182] = v3;
  v0[181] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA3270, &qword_1DD0E0F70);
  OUTLINED_FUNCTION_20_0(v5);
  v0[185] = OUTLINED_FUNCTION_38();
  v6 = type metadata accessor for AceOutput(0);
  v0[186] = v6;
  OUTLINED_FUNCTION_20_0(v6);
  v0[187] = OUTLINED_FUNCTION_38();
  v7 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DCD8020C()
{
  OUTLINED_FUNCTION_42();
  v1 = *(v0 + 1456);
  swift_asyncLet_begin();
  sub_1DCB17D04(v1, v0 + 920);
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v0 + 1504) = v2;
  *v2 = v3;
  v2[1] = sub_1DCD802E0;

  return static ResponseTemplates.continueOnCompanion(deviceState:)(v0 + 696, v0 + 920);
}

uint64_t sub_1DCD802E0()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_12_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_27();
  *v6 = v5;
  *(v3 + 1512) = v0;

  sub_1DCB185D0(v3 + 920, &qword_1ECCA8AB0, &qword_1DD0E23E0);
  if (v0)
  {
    v7 = sub_1DCD8092C;
  }

  else
  {
    v7 = sub_1DCD803F8;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

void sub_1DCD803F8()
{
  v1 = *(v0 + 1480);
  v2 = *(v0 + 1456);
  memcpy((v0 + 808), (v0 + 696), 0x48uLL);
  v3 = v2[3];
  v4 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v3);
  v5 = (*(v4 + 96))(v3, v4);
  v6 = type metadata accessor for NLContextUpdate(0);
  OUTLINED_FUNCTION_7_5(v1, v7, v8, v6);
  *(v0 + 1032) = 0;
  *(v0 + 1000) = 0u;
  *(v0 + 1016) = 0u;
  memcpy(__dst, (v0 + 808), 0x48uLL);
  static AceOutputHelper.makeCompletionViewOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:requestEndBehavior:)(__dst, v2, v5 & 1, MEMORY[0x1E69E7CC0], 0, 1, v1, MEMORY[0x1E69E7CC0], v0 + 1000, 0, __dst[0], __dst[1], __dst[2], __dst[3], __dst[4], __dst[5], __dst[6], __dst[7], __dst[8], __dst[9], __dst[10], __dst[11]);
}

uint64_t sub_1DCD80658()
{
  *(v1 + 1528) = v0;
  if (v0)
  {
    return OUTLINED_FUNCTION_0_12(sub_1DCD80BFC);
  }

  else
  {
    return OUTLINED_FUNCTION_0_12(sub_1DCD80758);
  }
}

uint64_t sub_1DCD80684()
{
  *(v1 + 1536) = v0;
  if (v0)
  {
    return OUTLINED_FUNCTION_0_12(sub_1DCD80B20);
  }

  else
  {
    return OUTLINED_FUNCTION_0_12(sub_1DCD806B0);
  }
}

uint64_t sub_1DCD806B0()
{
  OUTLINED_FUNCTION_39();
  v1 = *(v0 + 1448);
  sub_1DCB6FFD8(*(v0 + 1496));
  v2 = *(v0 + 1384);
  v3 = *(v0 + 1392);
  v1[8] = 0;
  v1[9] = 0;
  sub_1DCAFF9E8((v0 + 1240), v1);
  v1[5] = v2;
  v1[6] = v3;
  v1[7] = 0;

  v4 = OUTLINED_FUNCTION_5_50();

  return MEMORY[0x1EEE6DEB0](v4, v5, v6, v0 + 1408);
}

uint64_t sub_1DCD80758()
{
  OUTLINED_FUNCTION_39();
  v1 = *(v0 + 1520);
  v2 = *(v0 + 1448);
  sub_1DCB6FFD8(*(v0 + 1496));
  v3 = *(v0 + 1384);
  v4 = *(v0 + 1392);
  v2[8] = 0;
  v2[9] = 0;
  sub_1DCAFF9E8((v0 + 1160), v2);
  v2[5] = v3;
  v2[6] = v4;
  v2[7] = v1;

  v5 = OUTLINED_FUNCTION_5_50();

  return MEMORY[0x1EEE6DEB0](v5, v6, v7, v0 + 1200);
}

uint64_t sub_1DCD80804()
{
  OUTLINED_FUNCTION_42();

  OUTLINED_FUNCTION_29();

  return v0();
}

uint64_t sub_1DCD8086C()
{
  *(v1 + 1544) = v0;
  if (v0)
  {
    return OUTLINED_FUNCTION_0_12(sub_1DCD80CE4);
  }

  else
  {
    return OUTLINED_FUNCTION_0_12(sub_1DCD80898);
  }
}

uint64_t sub_1DCD80898()
{
  OUTLINED_FUNCTION_39();
  v1 = *(v0 + 1448);
  sub_1DCB6FFD8(*(v0 + 1496));
  v2 = *(v0 + 1384);
  v3 = *(v0 + 1392);
  v1[8] = 0;
  v1[9] = 0;
  sub_1DCAFF9E8((v0 + 1080), v1);
  v1[5] = v2;
  v1[6] = v3;
  v1[7] = 0;

  v4 = OUTLINED_FUNCTION_5_50();

  return MEMORY[0x1EEE6DEB0](v4, v5, v6, v0 + 960);
}

uint64_t sub_1DCD8092C()
{
  OUTLINED_FUNCTION_41();
  v16 = v0;
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
  }

  v1 = *(v0 + 1512);
  v2 = sub_1DD0DD8FC();
  OUTLINED_FUNCTION_92(v2, qword_1EDE57E00);
  v3 = v1;
  v4 = sub_1DD0DD8EC();
  v5 = sub_1DD0DE6EC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = OUTLINED_FUNCTION_151();
    v7 = OUTLINED_FUNCTION_83();
    v15 = v7;
    *v6 = 136315138;
    swift_getErrorValue();
    v8 = sub_1DD0DF18C();
    v10 = sub_1DCB10E9C(v8, v9, &v15);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_1DCAFC000, v4, v5, "Unexpected error calling continueOnCompanion: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    OUTLINED_FUNCTION_80();
    OUTLINED_FUNCTION_80();
  }

  swift_willThrow();
  v11 = OUTLINED_FUNCTION_5_50();

  return MEMORY[0x1EEE6DEB0](v11, v12, v13, v0 + 656);
}

uint64_t sub_1DCD80AC0()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_66_5();

  OUTLINED_FUNCTION_29();

  return v0();
}

uint64_t sub_1DCD80B20()
{
  OUTLINED_FUNCTION_42();
  sub_1DCB6FFD8(*(v0 + 1496));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 1240));
  v1 = OUTLINED_FUNCTION_5_50();

  return MEMORY[0x1EEE6DEB0](v1, v2, v3, v0 + 1344);
}

uint64_t sub_1DCD80B9C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_66_5();

  OUTLINED_FUNCTION_29();

  return v0();
}

uint64_t sub_1DCD80BFC()
{
  OUTLINED_FUNCTION_42();
  v1 = *(v0 + 1496);

  sub_1DCB6FFD8(v1);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 1160));
  v2 = OUTLINED_FUNCTION_5_50();

  return MEMORY[0x1EEE6DEB0](v2, v3, v4, v0 + 1120);
}

uint64_t sub_1DCD80C84()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_66_5();

  OUTLINED_FUNCTION_29();

  return v0();
}

uint64_t sub_1DCD80CE4()
{
  OUTLINED_FUNCTION_42();
  sub_1DCB6FFD8(*(v0 + 1496));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 1080));
  v1 = OUTLINED_FUNCTION_5_50();

  return MEMORY[0x1EEE6DEB0](v1, v2, v3, v0 + 880);
}

uint64_t sub_1DCD80D60()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_66_5();

  OUTLINED_FUNCTION_29();

  return v0();
}

void HandoffSessionToCompanionFlowStrategy.makeHandoffResponse(_:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAAB70, &qword_1DD0E17E0);
  OUTLINED_FUNCTION_20_0(v4);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v15 - v7;
  v9 = sub_1DD0DE4BC();
  OUTLINED_FUNCTION_7_5(v8, v10, v11, v9);
  v12 = swift_allocObject();
  v13 = OUTLINED_FUNCTION_17_22(v12);
  v13[4] = v14;
  v13[5] = 0;
  v13[6] = a1;
  v13[7] = a2;
  sub_1DD0DCF8C();
}

uint64_t HandoffResponse.init(output:companionNotificationText:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  a4[8] = 0;
  a4[9] = 0;
  result = sub_1DCAFF9E8(a1, a4);
  a4[5] = a2;
  a4[6] = a3;
  a4[7] = 0;
  return result;
}

uint64_t sub_1DCD80F4C()
{
  OUTLINED_FUNCTION_42();
  v1 = v0;
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_11_0(v2);
  *v3 = v4;
  v3[1] = sub_1DCB4AE1C;

  return HandoffSessionToCompanionFlowStrategyAsync.makeHandoffResponse()(v1);
}

void sub_1DCD80FF0()
{
  OUTLINED_FUNCTION_42();
  if (qword_1EDE46628 != -1)
  {
    OUTLINED_FUNCTION_58_0(&qword_1EDE46628);
  }

  v1 = qword_1EDE46630;
  sub_1DCB4E718((v0 + 7));
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
  v0[5] = type metadata accessor for RefreshableDeviceState();
  v0[6] = &protocol witness table for RefreshableDeviceState;
  v0[2] = v1;
  sub_1DD0DCF8C();
}

uint64_t sub_1DCD810D0()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_12_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_27();
  *v6 = v5;
  *(v3 + 112) = v0;

  __swift_destroy_boxed_opaque_existential_1Tm((v3 + 16));
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1DCCC9358, 0, 0);
  }

  else
  {
    OUTLINED_FUNCTION_29();

    return v7();
  }
}

void sub_1DCD81208()
{
  OUTLINED_FUNCTION_42();
  if (qword_1EDE46628 != -1)
  {
    OUTLINED_FUNCTION_58_0(&qword_1EDE46628);
  }

  v1 = qword_1EDE46630;
  sub_1DCB4E718((v0 + 7));
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
  v0[5] = type metadata accessor for RefreshableDeviceState();
  v0[6] = &protocol witness table for RefreshableDeviceState;
  v0[2] = v1;
  sub_1DD0DCF8C();
}

uint64_t sub_1DCD812E8()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_12_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_27();
  *v6 = v5;
  *(v3 + 112) = v0;

  __swift_destroy_boxed_opaque_existential_1Tm((v3 + 16));
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1DCD8698C, 0, 0);
  }

  else
  {
    OUTLINED_FUNCTION_29();

    return v7();
  }
}

uint64_t HandoffResponse.companionNotificationText.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

void *HandoffResponse.runSiriKitExecutorCommand.getter()
{
  v1 = *(v0 + 56);
  v2 = v1;
  return v1;
}

uint64_t HandoffResponse.targetDeviceAssistantIdOverride.getter()
{
  v1 = *(v0 + 64);

  return v1;
}

uint64_t HandoffResponse.targetDeviceAssistantIdOverride.setter()
{
  OUTLINED_FUNCTION_60();

  *(v1 + 64) = v2;
  *(v1 + 72) = v0;
  return result;
}

uint64_t HandoffResponse.init(output:companionNotificationText:runSiriKitExecutorCommand:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  a5[8] = 0;
  a5[9] = 0;
  result = sub_1DCAFF9E8(a1, a5);
  a5[5] = a2;
  a5[6] = a3;
  a5[7] = a4;
  return result;
}

uint64_t sub_1DCD81564(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1DCD81614;

  return HandoffSessionToCompanionFlowStrategy.makeHandoffResponse()(a1, a2, a3);
}

uint64_t sub_1DCD81614()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_32_1();
  v2 = *v1;
  OUTLINED_FUNCTION_27();
  *v3 = v2;

  v5 = *(v2 + 8);
  if (!v0)
  {
    v4 = OUTLINED_FUNCTION_86();
  }

  return v5(v4);
}

uint64_t sub_1DCD8170C(uint64_t a1)
{
  *(v2 + 72) = v1;
  *(v2 + 80) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DCD8172C, 0, 0);
}

uint64_t sub_1DCD8172C()
{
  OUTLINED_FUNCTION_39();
  v1 = swift_task_alloc();
  *(v0 + 88) = v1;
  *(v1 + 16) = v0 + 72;
  v2 = swift_task_alloc();
  *(v0 + 96) = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA5500, &qword_1DD0F20A0);
  OUTLINED_FUNCTION_17();
  *v2 = v3;
  v2[1] = sub_1DCD8180C;
  v4 = OUTLINED_FUNCTION_22_20();

  return MEMORY[0x1EEE6DE38](v4);
}

uint64_t sub_1DCD8180C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_12_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_27();
  *v6 = v5;
  *(v3 + 104) = v0;

  if (v0)
  {
    v7 = sub_1DCCAA828;
  }

  else
  {

    v7 = sub_1DCD81910;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1DCD81910()
{
  OUTLINED_FUNCTION_42();
  sub_1DCAFF9E8((v0 + 16), *(v0 + 80));
  v1 = OUTLINED_FUNCTION_36_3();

  return v2(v1);
}

uint64_t HandoffSessionToCompanionFlowStrategy.makeHandoffResponse()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[11] = a3;
  v4[12] = v3;
  v4[9] = a1;
  v4[10] = a2;
  return OUTLINED_FUNCTION_0_12(sub_1DCD8198C);
}

uint64_t sub_1DCD8198C()
{
  OUTLINED_FUNCTION_39();
  v1 = *(v0 + 96);
  v2 = swift_task_alloc();
  *(v0 + 104) = v2;
  *(v2 + 16) = *(v0 + 80);
  *(v2 + 32) = v1;
  v3 = swift_task_alloc();
  *(v0 + 112) = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA5500, &qword_1DD0F20A0);
  OUTLINED_FUNCTION_17();
  *v3 = v4;
  v3[1] = sub_1DCD81A74;
  v5 = OUTLINED_FUNCTION_22_20();

  return MEMORY[0x1EEE6DE38](v5);
}

uint64_t sub_1DCD81A74()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_12_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_27();
  *v6 = v5;
  *(v3 + 120) = v0;

  if (v0)
  {
    v7 = sub_1DCD81BD8;
  }

  else
  {

    v7 = sub_1DCD81B78;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1DCD81B78()
{
  OUTLINED_FUNCTION_42();
  sub_1DCAFF9E8((v0 + 16), *(v0 + 72));
  v1 = OUTLINED_FUNCTION_36_3();

  return v2(v1);
}

uint64_t sub_1DCD81BD8()
{
  OUTLINED_FUNCTION_42();

  OUTLINED_FUNCTION_29();

  return v0();
}

void sub_1DCD81C4C()
{
  OUTLINED_FUNCTION_42();
  if (qword_1EDE46628 != -1)
  {
    OUTLINED_FUNCTION_58_0(&qword_1EDE46628);
  }

  v1 = qword_1EDE46630;
  sub_1DCB4E718((v0 + 17));
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 17);
  v0[15] = type metadata accessor for RefreshableDeviceState();
  v0[16] = &protocol witness table for RefreshableDeviceState;
  v0[12] = v1;
  sub_1DD0DCF8C();
}

uint64_t sub_1DCD81D40()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_12_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_27();
  *v6 = v5;
  *(v3 + 192) = v0;

  __swift_destroy_boxed_opaque_existential_1Tm((v3 + 96));
  if (v0)
  {
    v7 = sub_1DCD81EC8;
  }

  else
  {
    v7 = sub_1DCD81E44;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1DCD81E44()
{
  OUTLINED_FUNCTION_39();
  v1 = v0[22];
  sub_1DCB17D04((v0 + 2), v1);
  v3 = v0[7];
  v2 = v0[8];

  sub_1DCCCF318((v0 + 2));
  *(v1 + 40) = v3;
  *(v1 + 48) = v2;
  OUTLINED_FUNCTION_29();

  return v4();
}

uint64_t sub_1DCD81EEC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DCB4AD3C;

  return HandoffSessionToCompanionFlowStrategyAsync.makeHandoffResponse()(a1);
}

uint64_t sub_1DCD81F84(uint64_t a1)
{
  OUTLINED_FUNCTION_62_8(a1);
  v1 = OUTLINED_FUNCTION_33_1();
  sub_1DCB8D4CC(v1, v2);
  return OUTLINED_FUNCTION_33_1();
}

uint64_t HandoffSessionToCompanionFlow.__allocating_init(strategy:deviceState:outputPublisher:)()
{
  OUTLINED_FUNCTION_7_39();
  OUTLINED_FUNCTION_135();
  swift_allocObject();
  OUTLINED_FUNCTION_13_36();
  HandoffSessionToCompanionFlow.init(strategy:deviceState:outputPublisher:)();
  return v0;
}

uint64_t sub_1DCD82000(uint64_t a1, void *a2, void *a3)
{
  type metadata accessor for AnyHandoffSessionToCompanionFlowStrategyAsync();
  v7 = swift_allocObject();
  *(v7 + 16) = &unk_1DD0F2A38;
  *(v7 + 24) = a1;
  sub_1DCB17D04(a2, v13);
  sub_1DCB17D04(a3, v12);
  type metadata accessor for OutputPublisherAsyncAdapter();
  v8 = swift_allocObject();
  sub_1DCAFF9E8(v12, v8 + 16);
  type metadata accessor for HandoffSessionToCompanionFlowAsync();
  v9 = swift_allocObject();
  v10 = sub_1DCD8567C(v7, v13, v8, v9);
  __swift_destroy_boxed_opaque_existential_1Tm(a3);
  __swift_destroy_boxed_opaque_existential_1Tm(a2);
  *(v3 + 16) = v10;
  return v3;
}

void HandoffSessionToCompanionFlow.init(strategy:deviceState:outputPublisher:)()
{
  OUTLINED_FUNCTION_50();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  OUTLINED_FUNCTION_60_6();
  v9 = *(v8 + 80);
  OUTLINED_FUNCTION_0_1();
  v11 = v10;
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v12, v13);
  type metadata accessor for AnyHandoffSessionToCompanionFlowStrategyAsync();
  v14 = OUTLINED_FUNCTION_59_12();
  v15(v14, v7, v9);
  OUTLINED_FUNCTION_60_6();
  v16 = sub_1DCD82264();
  sub_1DCB17D04(v5, v21);
  sub_1DCB17D04(v3, v20);
  type metadata accessor for OutputPublisherAsyncAdapter();
  v17 = swift_allocObject();
  sub_1DCAFF9E8(v20, v17 + 16);
  type metadata accessor for HandoffSessionToCompanionFlowAsync();
  OUTLINED_FUNCTION_30_4();
  v18 = swift_allocObject();
  sub_1DCD8567C(v16, v21, v17, v18);
  v19 = OUTLINED_FUNCTION_39_1();
  __swift_destroy_boxed_opaque_existential_1Tm(v19);
  __swift_destroy_boxed_opaque_existential_1Tm(v5);
  (*(v11 + 8))(v7, v9);
  *(v1 + 16) = v16;
  OUTLINED_FUNCTION_49();
}

uint64_t sub_1DCD82264()
{
  OUTLINED_FUNCTION_7_39();
  swift_allocObject();
  v1 = OUTLINED_FUNCTION_13_36();
  sub_1DCD84B1C(v1, v2, v3);
  return v0;
}

uint64_t HandoffSessionToCompanionFlow.__allocating_init(strategy:deviceState:outputPublisherAsync:)()
{
  OUTLINED_FUNCTION_7_39();
  OUTLINED_FUNCTION_135();
  swift_allocObject();
  OUTLINED_FUNCTION_13_36();
  HandoffSessionToCompanionFlow.init(strategy:deviceState:outputPublisherAsync:)();
  return v0;
}

uint64_t sub_1DCD822E0(uint64_t a1, void *a2, void *a3)
{
  type metadata accessor for AnyHandoffSessionToCompanionFlowStrategyAsync();
  v7 = swift_allocObject();
  *(v7 + 16) = &unk_1DD0F2A38;
  *(v7 + 24) = a1;
  sub_1DCB17D04(a2, v20);
  sub_1DCB17D04(a3, v17);
  type metadata accessor for HandoffSessionToCompanionFlowAsync();
  v8 = swift_allocObject();
  v9 = v18;
  v10 = v19;
  v11 = __swift_mutable_project_boxed_opaque_existential_1(v17, v18);
  MEMORY[0x1EEE9AC00](v11, v11);
  v13 = v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v13);
  v15 = sub_1DCD8574C(v7, v20, v13, v8, v9, v10);
  __swift_destroy_boxed_opaque_existential_1Tm(a3);
  __swift_destroy_boxed_opaque_existential_1Tm(a2);
  __swift_destroy_boxed_opaque_existential_1Tm(v17);
  *(v3 + 16) = v15;
  return v3;
}

void HandoffSessionToCompanionFlow.init(strategy:deviceState:outputPublisherAsync:)()
{
  OUTLINED_FUNCTION_50();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v27 = v6;
  OUTLINED_FUNCTION_60_6();
  v9 = *(v8 + 80);
  OUTLINED_FUNCTION_0_1();
  v11 = v10;
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v26 - v14;
  type metadata accessor for AnyHandoffSessionToCompanionFlowStrategyAsync();
  (*(v11 + 16))(v15, v7, v9);
  OUTLINED_FUNCTION_60_6();
  v16 = sub_1DCD82264();
  sub_1DCB17D04(v5, v31);
  sub_1DCB17D04(v3, v28);
  type metadata accessor for HandoffSessionToCompanionFlowAsync();
  OUTLINED_FUNCTION_30_4();
  v17 = swift_allocObject();
  v18 = v29;
  v19 = v30;
  __swift_mutable_project_boxed_opaque_existential_1(v28, v29);
  OUTLINED_FUNCTION_0_1();
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v26 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v24 + 16))(v23);
  sub_1DCD8574C(v16, v31, v23, v17, v18, v19);
  v25 = OUTLINED_FUNCTION_39_1();
  __swift_destroy_boxed_opaque_existential_1Tm(v25);
  __swift_destroy_boxed_opaque_existential_1Tm(v5);
  (*(v11 + 8))(v27, v9);
  __swift_destroy_boxed_opaque_existential_1Tm(v28);
  *(v1 + 16) = v16;
  OUTLINED_FUNCTION_49();
}

void sub_1DCD82664()
{
  OUTLINED_FUNCTION_60();
  type metadata accessor for HandoffSessionToCompanionFlow(0, *(*v0 + 80), *(*v0 + 88), v1);
  OUTLINED_FUNCTION_86();
  Flow.deferToExecuteAsync(_:)();
}

uint64_t sub_1DCD826E4(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_12(sub_1DCD826FC);
}

uint64_t sub_1DCD826FC()
{
  OUTLINED_FUNCTION_42();
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v0 + 32) = v1;
  *v1 = v2;
  v1[1] = sub_1DCB3F98C;

  return sub_1DCD82C3C();
}

uint64_t HandoffSessionToCompanionFlow.__deallocating_deinit()
{
  HandoffSessionToCompanionFlow.deinit();
  OUTLINED_FUNCTION_135();

  return swift_deallocClassInstance();
}

uint64_t sub_1DCD82804(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DCB4AD3C;

  return sub_1DCD826E4(a1);
}

uint64_t sub_1DCD828A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1DCD81F84(a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

void sub_1DCD828D4(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  sub_1DCB8D4CC(*a1, v2);
  sub_1DCD82958(v1, v2);
}

uint64_t sub_1DCD8291C(uint64_t a1)
{
  OUTLINED_FUNCTION_62_8(a1);
  v1 = OUTLINED_FUNCTION_33_1();
  sub_1DCB8D4CC(v1, v2);
  return OUTLINED_FUNCTION_33_1();
}

void sub_1DCD82958(uint64_t a1, char a2)
{
  swift_beginAccess();
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  *(v2 + 16) = a1;
  *(v2 + 24) = a2 & 1;
  sub_1DCB79378(v5, v6);
}

uint64_t sub_1DCD829B8()
{
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_35_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_14_0(v1);
  OUTLINED_FUNCTION_121();

  return sub_1DCC1044C();
}

void HandoffSessionToCompanionFlowAsync.init<A>(strategy:deviceState:outputPublisher:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_50();
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  OUTLINED_FUNCTION_0_1();
  v31 = v30;
  MEMORY[0x1EEE9AC00](v32, v33);
  type metadata accessor for AnyHandoffSessionToCompanionFlowStrategyAsync();
  v34 = OUTLINED_FUNCTION_59_12();
  v35(v34, v29, v23);
  *(v20 + 32) = sub_1DCD82BF8();
  sub_1DCB17D04(v27, v20 + 40);
  sub_1DCB17D04(v25, v20 + 80);
  sub_1DCC4B974();
  v36 = swift_allocError();
  *v37 = 1;
  __swift_destroy_boxed_opaque_existential_1Tm(v25);
  __swift_destroy_boxed_opaque_existential_1Tm(v27);
  (*(v31 + 8))(v29, v23);
  *(v21 + 16) = v36;
  *(v21 + 24) = 1;
  OUTLINED_FUNCTION_49();
}

uint64_t sub_1DCD82BF8()
{
  OUTLINED_FUNCTION_7_39();
  swift_allocObject();
  OUTLINED_FUNCTION_13_36();
  sub_1DCD84860();
  return v0;
}

uint64_t sub_1DCD82C3C()
{
  OUTLINED_FUNCTION_42();
  v1[45] = v2;
  v1[46] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA1BD0, &qword_1DD0EB860);
  OUTLINED_FUNCTION_20_0(v3);
  v1[47] = OUTLINED_FUNCTION_38();
  v4 = type metadata accessor for AceOutput(0);
  v1[48] = v4;
  OUTLINED_FUNCTION_20_0(v4);
  v1[49] = OUTLINED_FUNCTION_38();
  v5 = sub_1DD0DE01C();
  v1[50] = v5;
  v1[51] = *(v5 - 8);
  v1[52] = OUTLINED_FUNCTION_38();
  v6 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1DCD82D38()
{
  OUTLINED_FUNCTION_42();
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v0 + 424) = v1;
  *v1 = v2;
  v1[1] = sub_1DCD82DCC;

  return sub_1DCD854B8(v0 + 16);
}

uint64_t sub_1DCD82DCC()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v2 = *v1;
  OUTLINED_FUNCTION_27();
  *v3 = v2;
  *(v4 + 432) = v0;

  if (v0)
  {
    v5 = sub_1DCD83D20;
  }

  else
  {
    v5 = sub_1DCD82ED0;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

void sub_1DCD82ED0()
{
  OUTLINED_FUNCTION_39();
  if (qword_1EDE4F6A8 != -1)
  {
    swift_once();
  }

  type metadata accessor for SiriKitEvent(0);
  SiriKitEvent.__allocating_init(activityType:taskType:statusReason:_:)();
}

uint64_t sub_1DCD83004()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v1 = *v0;
  OUTLINED_FUNCTION_27();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1DCD83104()
{
  v102 = v0;
  v1 = *(v0 + 72);
  if (v1)
  {
    v2 = qword_1EDE4F900;
    v3 = v1;
    if (v2 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
    }

    v4 = sub_1DD0DD8FC();
    OUTLINED_FUNCTION_92(v4, qword_1EDE57E00);
    v5 = sub_1DD0DD8EC();
    v6 = sub_1DD0DE6DC();
    if (OUTLINED_FUNCTION_23(v6))
    {
      *OUTLINED_FUNCTION_50_0() = 0;
      OUTLINED_FUNCTION_12_2(&dword_1DCAFC000, v7, v8, "HandoffSessionToCompanionFlow embedding RSKE command into handoff continuity data");
      OUTLINED_FUNCTION_80();
    }

    v9 = [objc_allocWithZone(MEMORY[0x1E696ACC8]) initRequiringSecureCoding_];
    [v9 encodeObject:v3 forKey:*MEMORY[0x1E696A508]];
    v10 = [v9 encodedData];
    v11 = sub_1DD0DAF2C();
    v13 = v12;

    sub_1DCB10E5C(0, &qword_1EDE460A0, 0x1E696AD98);
    v14 = sub_1DD0DE8BC();

    goto LABEL_9;
  }

  v15 = *(v0 + 368);
  v16 = v15[8];
  v17 = v15[9];
  __swift_project_boxed_opaque_existential_1(v15 + 5, v16);
  (*(v17 + 160))(v16, v17);
  if (v18)
  {
    v19 = *(v0 + 408);
    v20 = *(v0 + 416);
    v21 = *(v0 + 400);
    sub_1DD0DE00C();
    v11 = sub_1DD0DDFCC();
    v23 = v22;

    (*(v19 + 8))(v20, v21);
    v13 = v23;
    sub_1DCB10E5C(0, &qword_1EDE460A0, 0x1E696AD98);
    v14 = sub_1DD0DE8BC();
LABEL_9:
    *(v0 + 456) = v14;
    *(v0 + 464) = v13;
    *(v0 + 472) = v11;
    v24 = *(v0 + 88);
    if (!v24)
    {
      v37 = *(v0 + 368);
      v39 = v37[8];
      v38 = v37[9];
      __swift_project_boxed_opaque_existential_1(v37 + 5, v39);
      v40 = v14;
      sub_1DCCDEA6C(v39, v38);
    }

    v25 = *(v0 + 80);
    v26 = qword_1EDE4F900;
    v27 = v14;

    if (v26 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
    }

    v28 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v28, qword_1EDE57E00);
    OUTLINED_FUNCTION_39_1();

    v29 = sub_1DD0DD8EC();
    v30 = sub_1DD0DE6DC();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = OUTLINED_FUNCTION_151();
      v99 = OUTLINED_FUNCTION_83();
      v101 = v99;
      *v31 = 136315138;
      *(v0 + 328) = v25;
      *(v0 + 336) = v24;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2900, &qword_1DD0E7ED0);
      v32 = sub_1DD0DE02C();
      v34 = v14;
      v35 = v13;
      v36 = sub_1DCB10E9C(v32, v33, &v101);

      *(v31 + 4) = v36;
      v13 = v35;
      v14 = v34;
      _os_log_impl(&dword_1DCAFC000, v29, v30, "HandoffSessionToCompanionFlow using target ID override: %s", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v99);
      OUTLINED_FUNCTION_80();
      OUTLINED_FUNCTION_80();
    }

    sub_1DCB10E5C(0, &qword_1ECCA9330, 0x1E69C7828);
    v41 = sub_1DCF74350(*(v0 + 56), *(v0 + 64), v11, v13, v25, v24);
    *(v0 + 480) = v41;

    [v41 setIsSiriXRequest_];

    *(v0 + 352) = MEMORY[0x1E69E7CC0];
    sub_1DCB17D04(v0 + 16, v0 + 96);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAC3A0, &unk_1DD0E1640);
    if (swift_dynamicCast())
    {
      v45 = *(v0 + 392);
      v46 = *(v0 + 376);
      __swift_storeEnumTagSinglePayload(v46, 0, 1, *(v0 + 384));
      sub_1DCB6DF70(v46, v45);

      sub_1DCBB920C(v47);
      sub_1DCB6FFD8(v45);
    }

    else
    {
      v48 = *(v0 + 376);
      OUTLINED_FUNCTION_7_5(v48, v43, v44, *(v0 + 384));
      sub_1DCB185D0(v48, &qword_1ECCA1BD0, &qword_1DD0EB860);
      OUTLINED_FUNCTION_56_12();
      if (!v49)
      {
        OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
      }

      v50 = sub_1DD0DD8FC();
      OUTLINED_FUNCTION_92(v50, qword_1EDE57E00);
      v51 = sub_1DD0DD8EC();
      v52 = sub_1DD0DE6EC();
      if (os_log_type_enabled(v51, v52))
      {
        v53 = OUTLINED_FUNCTION_50_0();
        *v53 = 0;
        _os_log_impl(&dword_1DCAFC000, v51, v52, "Response Output is not of type AceOutput so we cannot append the prompt to the handoff command.", v53, 2u);
        OUTLINED_FUNCTION_80();
      }
    }

    v54 = v41;
    MEMORY[0x1E12A6920]();
    if (*((*(v0 + 352) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 352) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1DD0DE33C();
    }

    OUTLINED_FUNCTION_86();
    sub_1DD0DE3AC();
    v55 = *(v0 + 352);
    OUTLINED_FUNCTION_56_12();
    if (!v49)
    {
      OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
    }

    v56 = sub_1DD0DD8FC();
    OUTLINED_FUNCTION_92(v56, qword_1EDE57E00);
    v57 = sub_1DD0DD8EC();
    v58 = sub_1DD0DE6DC();
    if (OUTLINED_FUNCTION_23(v58))
    {
      *OUTLINED_FUNCTION_50_0() = 0;
      OUTLINED_FUNCTION_12_2(&dword_1DCAFC000, v59, v60, "HandoffSession publishing output");
      OUTLINED_FUNCTION_80();
    }

    v61 = *(v0 + 384);
    v62 = *(v0 + 368);

    v63 = v62[13];
    v64 = v62[14];
    __swift_project_boxed_opaque_existential_1(v62 + 10, v63);
    *(v0 + 192) = 0u;
    *(v0 + 208) = 0;
    *(v0 + 176) = 0u;
    *(v0 + 160) = v61;
    *(v0 + 168) = &protocol witness table for AceOutput;
    boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm((v0 + 136));
    v66 = v61[7];
    v67 = type metadata accessor for NLContextUpdate(0);
    OUTLINED_FUNCTION_7_5(boxed_opaque_existential_1Tm + v66, v68, v69, v67);
    v70 = v61[9];
    v71 = sub_1DD0DD10C();
    OUTLINED_FUNCTION_7_5(boxed_opaque_existential_1Tm + v70, v72, v73, v71);
    v74 = v61[8];
    v75 = *MEMORY[0x1E69D0678];
    sub_1DD0DD15C();
    OUTLINED_FUNCTION_112();
    (*(v76 + 104))(boxed_opaque_existential_1Tm + v74, v75);
    boxed_opaque_existential_1Tm[15] = 0;
    *(boxed_opaque_existential_1Tm + 13) = 0u;
    *(boxed_opaque_existential_1Tm + 11) = 0u;
    sub_1DCB6C5E8(v0 + 176, (boxed_opaque_existential_1Tm + 11));
    *(boxed_opaque_existential_1Tm + v61[10]) = 0;
    *boxed_opaque_existential_1Tm = v55;
    *(boxed_opaque_existential_1Tm + 1) = 0u;
    *(boxed_opaque_existential_1Tm + 3) = 0u;
    *(boxed_opaque_existential_1Tm + 5) = 0u;
    *(boxed_opaque_existential_1Tm + 7) = 0u;
    boxed_opaque_existential_1Tm[9] = 0;
    *(boxed_opaque_existential_1Tm + 80) = 3;
    OUTLINED_FUNCTION_25_1();
    v100 = (v77 + *v77);
    swift_task_alloc();
    OUTLINED_FUNCTION_45();
    *(v0 + 488) = v78;
    *v78 = v79;
    v78[1] = sub_1DCD83B60;

    return v100(v0 + 136, v63, v64);
  }

  OUTLINED_FUNCTION_56_12();
  if (!v49)
  {
    OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
  }

  v81 = sub_1DD0DD8FC();
  OUTLINED_FUNCTION_92(v81, qword_1EDE57E00);
  v82 = sub_1DD0DD8EC();
  v83 = sub_1DD0DE6EC();
  if (OUTLINED_FUNCTION_23(v83))
  {
    *OUTLINED_FUNCTION_50_0() = 0;
    OUTLINED_FUNCTION_12_2(&dword_1DCAFC000, v84, v85, "HandoffSessionToCompanionFlow cannot perform handoff because there is no ContinuityID present on DeviceState. Will redirect this request to the server, which may cause issues in multi-turn requests.");
    OUTLINED_FUNCTION_80();
  }

  v86 = *(v0 + 360);
  v87 = *(v0 + 368);

  sub_1DCC4B974();
  v88 = swift_allocError();
  *v89 = 0;
  swift_beginAccess();
  v90 = *(v87 + 16);
  v91 = *(v87 + 24);
  *(v87 + 16) = v88;
  *(v87 + 24) = 1;
  sub_1DCB79378(v90, v91);
  v92 = type metadata accessor for ExecuteResponse(0);
  v93 = *(v92 + 36);
  v94 = type metadata accessor for PluginAction(0);
  OUTLINED_FUNCTION_7_5(v86 + v93, v95, v96, v94);
  *v86 = 3;
  *(v86 + 8) = 0;
  *(v86 + 16) = 0;
  *(v86 + 32) = 0;
  *(v86 + 40) = 0;
  *(v86 + 24) = 0;
  *(v86 + 48) = 0x80;
  v97 = (v86 + *(v92 + 40));
  *v97 = 0u;
  v97[1] = 0u;
  sub_1DCCCF318(v0 + 16);
  OUTLINED_FUNCTION_31_16();

  OUTLINED_FUNCTION_29();

  return v98();
}

uint64_t sub_1DCD83B60()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_12_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_27();
  *v6 = v5;
  *(v3 + 496) = v0;

  if (v0)
  {
    v7 = sub_1DCD83E74;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v3 + 136));
    v7 = sub_1DCD83C64;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1DCD83C64()
{
  OUTLINED_FUNCTION_39();
  v1 = v0[60];
  v2 = v0[57];
  v3 = v0[46];
  sub_1DCB2C520(v0[59], v0[58]);

  swift_beginAccess();
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  sub_1DCB79378(v4, v5);
  static ExecuteResponse.complete()();
  sub_1DCCCF318((v0 + 2));
  OUTLINED_FUNCTION_31_16();

  OUTLINED_FUNCTION_29();

  return v6();
}

uint64_t sub_1DCD83D20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_139();
  a17 = v19;
  a18 = v20;
  OUTLINED_FUNCTION_41();
  a16 = v18;
  v21 = v18[54];
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
  }

  v22 = sub_1DD0DD8FC();
  OUTLINED_FUNCTION_92(v22, qword_1EDE57E00);
  v23 = v21;
  v24 = sub_1DD0DD8EC();
  v25 = sub_1DD0DE6EC();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = OUTLINED_FUNCTION_151();
    v27 = OUTLINED_FUNCTION_83();
    a9 = v27;
    OUTLINED_FUNCTION_64_7(4.8149e-34);
    v28 = sub_1DD0DF18C();
    v30 = sub_1DCB10E9C(v28, v29, &a9);

    *(v26 + 4) = v30;
    OUTLINED_FUNCTION_89(&dword_1DCAFC000, v31, v32, "Unexpected error executing handoff: %s");
    __swift_destroy_boxed_opaque_existential_1Tm(v27);
    OUTLINED_FUNCTION_80();
    OUTLINED_FUNCTION_80();
  }

  OUTLINED_FUNCTION_35_21();
  OUTLINED_FUNCTION_67_8();
  OUTLINED_FUNCTION_31_16();

  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_121();

  return v34(v33, v34, v35, v36, v37, v38, v39, v40, a9, a10);
}

uint64_t sub_1DCD83E74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_139();
  a17 = v19;
  a18 = v20;
  OUTLINED_FUNCTION_41();
  a16 = v18;
  v21 = *(v18 + 472);
  v22 = *(v18 + 480);
  v23 = *(v18 + 464);

  sub_1DCB2C520(v21, v23);
  sub_1DCCCF318(v18 + 16);
  __swift_destroy_boxed_opaque_existential_1Tm((v18 + 136));
  v24 = *(v18 + 496);
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
  }

  v25 = sub_1DD0DD8FC();
  OUTLINED_FUNCTION_92(v25, qword_1EDE57E00);
  v26 = v24;
  v27 = sub_1DD0DD8EC();
  v28 = sub_1DD0DE6EC();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = OUTLINED_FUNCTION_151();
    v30 = OUTLINED_FUNCTION_83();
    a9 = v30;
    OUTLINED_FUNCTION_64_7(4.8149e-34);
    v31 = sub_1DD0DF18C();
    v33 = sub_1DCB10E9C(v31, v32, &a9);

    *(v29 + 4) = v33;
    OUTLINED_FUNCTION_89(&dword_1DCAFC000, v34, v35, "Unexpected error executing handoff: %s");
    __swift_destroy_boxed_opaque_existential_1Tm(v30);
    OUTLINED_FUNCTION_80();
    OUTLINED_FUNCTION_80();
  }

  OUTLINED_FUNCTION_35_21();
  OUTLINED_FUNCTION_67_8();
  OUTLINED_FUNCTION_31_16();

  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_121();

  return v37(v36, v37, v38, v39, v40, v41, v42, v43, a9, a10);
}

uint64_t HandoffSessionToCompanionFlowAsync.deinit()
{
  sub_1DCB79378(*(v0 + 16), *(v0 + 24));

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 40));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 80));
  return v0;
}

uint64_t HandoffSessionToCompanionFlowAsync.__deallocating_deinit()
{
  HandoffSessionToCompanionFlowAsync.deinit();
  OUTLINED_FUNCTION_30_4();

  return swift_deallocClassInstance();
}

uint64_t sub_1DCD84084()
{
  OUTLINED_FUNCTION_42();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_13_17(v1);

  return sub_1DCD82C3C();
}

uint64_t sub_1DCD8410C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1DCD8291C(a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_1DCD84170(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, _BYTE *, _BYTE *))
{
  type metadata accessor for SimpleHandoffSessionToCompanionFlowHelper.SimpleHandoffSessionToCompanionFlowStrategy();
  v6 = swift_allocObject();
  sub_1DCB17D04(a1, v9);
  sub_1DCB17D04(a2, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECCA5720, &qword_1DD0F25F0);
  OUTLINED_FUNCTION_135();
  swift_allocObject();
  return a3(v6, v9, v8);
}

void static SimpleHandoffSessionToCompanionFlowHelper.makeServerOrLocalHandoffFlowAsync(runSiriKitExecutorProvider:deviceState:outputPublisher:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1DCB17D04(a3, v10);
  type metadata accessor for SimpleHandoffSessionToCompanionFlowHelper.PeerToPeerHandoffToCompanionFlowStrategyAsync();
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  sub_1DCAFF9E8(v10, v8 + 32);
  sub_1DCB17D04(a3, v10);
  sub_1DCB17D04(a4, &v9);
  type metadata accessor for HandoffSessionToCompanionFlowAsync();
  OUTLINED_FUNCTION_30_4();
  swift_allocObject();
  sub_1DD0DCF8C();
}

uint64_t SimpleHandoffSessionToCompanionFlowHelper.PeerToPeerHandoffToCompanionFlowStrategyAsync.__allocating_init(runSiriKitExecutorProvider:deviceState:)()
{
  OUTLINED_FUNCTION_7_39();
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  sub_1DCAFF9E8(v0, v3 + 32);
  return v3;
}

uint64_t sub_1DCD84314(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DCD86990;

  return sub_1DCD8170C(a1);
}

uint64_t sub_1DCD843E0()
{
  OUTLINED_FUNCTION_42();
  v1 = v0;
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_11_0(v2);
  *v3 = v4;
  v3[1] = sub_1DCB4AE1C;

  return sub_1DCD80FD8(v1);
}

uint64_t SimpleHandoffSessionToCompanionFlowHelper.PeerToPeerHandoffToCompanionFlowStrategyAsync.init(runSiriKitExecutorProvider:deviceState:)(uint64_t a1, uint64_t a2, __int128 *a3)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  sub_1DCAFF9E8(a3, v3 + 32);
  return v3;
}

uint64_t SimpleHandoffSessionToCompanionFlowHelper.PeerToPeerHandoffToCompanionFlowStrategyAsync.makeHandoffResponse()(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_12(sub_1DCD844C0);
}

uint64_t sub_1DCD844C0()
{
  OUTLINED_FUNCTION_39();
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v0 + 32) = v1;
  *v1 = v2;
  v1[1] = sub_1DCB8C57C;

  return sub_1DCD80158();
}

uint64_t SimpleHandoffSessionToCompanionFlowHelper.PeerToPeerHandoffToCompanionFlowStrategyAsync.deinit()
{

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 32));
  return v0;
}

uint64_t SimpleHandoffSessionToCompanionFlowHelper.PeerToPeerHandoffToCompanionFlowStrategyAsync.__deallocating_deinit()
{

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 32));

  return swift_deallocClassInstance();
}

uint64_t sub_1DCD845D0()
{
  OUTLINED_FUNCTION_42();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_13_17(v1);

  return SimpleHandoffSessionToCompanionFlowHelper.PeerToPeerHandoffToCompanionFlowStrategyAsync.makeHandoffResponse()(v3);
}

uint64_t sub_1DCD84658(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1DCD846EC;

  return static NotificationTemplates.genericHandoffNotification()();
}

uint64_t sub_1DCD846EC()
{
  OUTLINED_FUNCTION_33();
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_32_1();
  v7 = v6;
  OUTLINED_FUNCTION_12_0();
  *v8 = v7;
  v9 = *v1;
  OUTLINED_FUNCTION_27();
  *v10 = v9;

  if (v0)
  {
    v11 = *(v9 + 8);

    return v11();
  }

  else
  {
    *(v7 + 32) = v3;
    *(v7 + 40) = v5;

    return MEMORY[0x1EEE6DFA0](sub_1DCD84830, 0, 0);
  }
}

uint64_t sub_1DCD84830()
{
  v1 = v0[4];
  v2 = v0[2];
  *v2 = v0[5];
  v2[1] = v1;
  OUTLINED_FUNCTION_29();
  return v3();
}

uint64_t sub_1DCD84860()
{
  OUTLINED_FUNCTION_60();
  v4 = sub_1DCD848CC(v1, v2, v3);
  v6 = v5;
  OUTLINED_FUNCTION_112();
  v7 = OUTLINED_FUNCTION_86();
  v8(v7);
  *(v0 + 16) = v4;
  *(v0 + 24) = v6;
  return v0;
}

void *sub_1DCD848CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](a1, a1);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7);
  v8 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = a2;
  *(v9 + 24) = a3;
  (*(v5 + 32))(v9 + v8, v7, a2);
  return &unk_1DD0F2A58;
}

uint64_t sub_1DCD849EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = (*(a4 + 8) + **(a4 + 8));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_1DCB4AE1C;

  return v10(a1, a3, a4);
}

uint64_t sub_1DCD84B1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_0_1();
  v8 = v7;
  v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  *(v10 + 24) = a3;
  (*(v8 + 32))(v10 + v9, a1, a2);
  *(v3 + 16) = &unk_1DD0F2A68;
  *(v3 + 24) = v10;
  return v3;
}

uint64_t sub_1DCD84BF4(uint64_t a1, uint64_t a2)
{
  *(v2 + 112) = a2;
  *(v2 + 120) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DCD84C14, 0, 0);
}

uint64_t sub_1DCD84C14()
{
  OUTLINED_FUNCTION_42();
  v1 = swift_task_alloc();
  *(v0 + 128) = v1;
  *(v1 + 16) = v0 + 112;
  v2 = swift_task_alloc();
  *(v0 + 136) = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA5500, &qword_1DD0F20A0);
  OUTLINED_FUNCTION_17();
  *v2 = v3;
  v2[1] = sub_1DCD84CE0;
  v4 = OUTLINED_FUNCTION_16_27();

  return MEMORY[0x1EEE6DE38](v4);
}

uint64_t sub_1DCD84CE0()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_12_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_27();
  *v6 = v5;
  *(v3 + 144) = v0;

  if (v0)
  {
    v7 = sub_1DCD84E6C;
  }

  else
  {

    v7 = sub_1DCD84DE4;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1DCD84DE4()
{
  OUTLINED_FUNCTION_39();
  v1 = *(v0 + 120);
  v2 = *(v0 + 56);
  v3 = *(v0 + 64);
  sub_1DCAFF9E8((v0 + 16), v0 + 72);
  sub_1DCAFF9E8((v0 + 72), v1);
  v1[8] = 0;
  v1[9] = 0;
  v1[5] = v2;
  v1[6] = v3;
  v1[7] = 0;
  OUTLINED_FUNCTION_29();

  return v4();
}

uint64_t sub_1DCD84E6C()
{
  OUTLINED_FUNCTION_42();

  OUTLINED_FUNCTION_29();

  return v0();
}

uint64_t sub_1DCD84EC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[16] = a3;
  v4[17] = a4;
  v4[14] = a1;
  v4[15] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DCD84EEC, 0, 0);
}

uint64_t sub_1DCD84EEC()
{
  OUTLINED_FUNCTION_42();
  v1 = *(v0 + 120);
  v2 = swift_task_alloc();
  *(v0 + 144) = v2;
  *(v2 + 16) = *(v0 + 128);
  *(v2 + 32) = v1;
  v3 = swift_task_alloc();
  *(v0 + 152) = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA5500, &qword_1DD0F20A0);
  OUTLINED_FUNCTION_17();
  *v3 = v4;
  v3[1] = sub_1DCD84FC0;
  v5 = OUTLINED_FUNCTION_16_27();

  return MEMORY[0x1EEE6DE38](v5);
}

uint64_t sub_1DCD84FC0()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_12_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_27();
  *v6 = v5;
  *(v3 + 160) = v0;

  if (v0)
  {
    v7 = sub_1DCD8514C;
  }

  else
  {

    v7 = sub_1DCD850C4;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1DCD850C4()
{
  OUTLINED_FUNCTION_39();
  v1 = *(v0 + 112);
  v2 = *(v0 + 56);
  v3 = *(v0 + 64);
  sub_1DCAFF9E8((v0 + 16), v0 + 72);
  sub_1DCAFF9E8((v0 + 72), v1);
  v1[8] = 0;
  v1[9] = 0;
  v1[5] = v2;
  v1[6] = v3;
  v1[7] = 0;
  OUTLINED_FUNCTION_29();

  return v4();
}

uint64_t sub_1DCD8514C()
{
  OUTLINED_FUNCTION_42();

  OUTLINED_FUNCTION_29();

  return v0();
}

uint64_t sub_1DCD8541C(uint64_t a1)
{
  sub_1DCD86534(a1, &v2);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECCA5508, &unk_1DD0F76F0);
    return sub_1DD0DE45C();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECCA5508, &unk_1DD0F76F0);
    return sub_1DD0DE46C();
  }
}

uint64_t sub_1DCD854B8(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_12(sub_1DCD854D0);
}

uint64_t sub_1DCD854D0()
{
  OUTLINED_FUNCTION_42();
  v5 = (*(v0[3] + 16) + **(v0[3] + 16));
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  v0[4] = v1;
  *v1 = v2;
  v1[1] = sub_1DCB3F98C;
  v3 = v0[2];

  return v5(v3);
}

uint64_t sub_1DCD855BC()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1DCD855F4()
{
  OUTLINED_FUNCTION_42();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_13_17(v1);

  return sub_1DCD854B8(v3);
}

uint64_t sub_1DCD8567C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v11[3] = type metadata accessor for OutputPublisherAsyncAdapter();
  v11[4] = &protocol witness table for OutputPublisherAsyncAdapter;
  v11[0] = a3;
  type metadata accessor for AnyHandoffSessionToCompanionFlowStrategyAsync();
  swift_allocObject();
  *(a4 + 32) = sub_1DCC4B008(a1);
  sub_1DCB17D04(a2, a4 + 40);
  sub_1DCB17D04(v11, a4 + 80);
  sub_1DCC4B974();
  v8 = swift_allocError();
  *v9 = 1;
  __swift_destroy_boxed_opaque_existential_1Tm(a2);
  __swift_destroy_boxed_opaque_existential_1Tm(v11);
  *(a4 + 16) = v8;
  *(a4 + 24) = 1;
  return a4;
}

uint64_t sub_1DCD8574C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15[3] = a5;
  v15[4] = a6;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v15);
  (*(*(a5 - 8) + 32))(boxed_opaque_existential_1Tm, a3, a5);
  type metadata accessor for AnyHandoffSessionToCompanionFlowStrategyAsync();
  swift_allocObject();
  *(a4 + 32) = sub_1DCC4B008(a1);
  sub_1DCB17D04(a2, a4 + 40);
  sub_1DCB17D04(v15, a4 + 80);
  sub_1DCC4B974();
  v12 = swift_allocError();
  *v13 = 1;
  __swift_destroy_boxed_opaque_existential_1Tm(a2);
  __swift_destroy_boxed_opaque_existential_1Tm(v15);
  *(a4 + 16) = v12;
  *(a4 + 24) = 1;
  return a4;
}

uint64_t destroy for HandoffResponse(uint64_t a1)
{
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t initializeWithCopy for HandoffResponse(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  *(a1 + 24) = v4;
  (**(v4 - 8))();
  v5 = *(a2 + 48);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = v5;
  v7 = *(a2 + 56);
  v6 = *(a2 + 64);
  *(a1 + 56) = v7;
  *(a1 + 64) = v6;
  *(a1 + 72) = *(a2 + 72);

  v8 = v7;

  return a1;
}

void *assignWithCopy for HandoffResponse(void *a1, void *a2)
{
  __swift_assign_boxed_opaque_existential_1(a1, a2);
  a1[5] = a2[5];
  a1[6] = a2[6];

  v4 = a1[7];
  v5 = a2[7];
  a1[7] = v5;
  v6 = v5;

  a1[8] = a2[8];
  a1[9] = a2[9];

  return a1;
}

uint64_t assignWithTake for HandoffResponse(uint64_t a1, uint64_t a2)
{
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);

  v5 = *(a1 + 56);
  *(a1 + 56) = *(a2 + 56);

  v6 = *(a2 + 72);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = v6;

  return a1;
}

uint64_t dispatch thunk of HandoffSessionToCompanionFlowStrategy.makeHandoffResponse()()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_73_0(v0, v1, v2);
  OUTLINED_FUNCTION_25_1();
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_11_0(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_29_2(v4);

  return v7(v6);
}

uint64_t sub_1DCD85B90()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_32_1();
  v1 = *v0;
  OUTLINED_FUNCTION_27();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_86();

  return v4(v3);
}

uint64_t dispatch thunk of HandoffSessionToCompanionFlowStrategyAsync.makeHandoffResponse()()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_73_0(v0, v1, v2);
  OUTLINED_FUNCTION_25_1();
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_11_0(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_29_2(v4);

  return v7(v6);
}

uint64_t dispatch thunk of HandoffSessionToCompanionFlow.execute()()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_66();
  v6 = (*(v0 + 144) + **(v0 + 144));
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_11_0(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_13_17(v2);

  return v6(v4);
}

uint64_t dispatch thunk of HandoffSessionToCompanionFlowAsync.execute()()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_66();
  v6 = (*(v0 + 160) + **(v0 + 160));
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_11_0(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_13_17(v2);

  return v6(v4);
}

_BYTE *storeEnumTagSinglePayload for SimpleHandoffSessionToCompanionFlowHelper(_BYTE *result, int a2, int a3)
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

_BYTE *storeEnumTagSinglePayload for HandoffSessionToCompanionFlowAsync.HandoffErrors(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1DCD8638C()
{
  result = qword_1ECCA57A8;
  if (!qword_1ECCA57A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA57A8);
  }

  return result;
}

uint64_t sub_1DCD863E0(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DCB4AE1C;

  return sub_1DCD84BF4(a1, v4);
}

uint64_t sub_1DCD86534(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2288, &unk_1DD0E4840);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DCD865A4()
{
  OUTLINED_FUNCTION_39();
  v3 = v2;
  *(v1 + 16) = v0;
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v1 + 24) = v4;
  *v4 = v5;
  v4[1] = sub_1DCB81954;

  return sub_1DCD863E0(v3, (v1 + 16));
}

uint64_t sub_1DCD8665C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECCA5508, &unk_1DD0F76F0);
  OUTLINED_FUNCTION_20_0(v2);
  return sub_1DCD8541C(a1);
}

uint64_t sub_1DCD866C8()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_61_13();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_28_17(v1);

  return sub_1DCD849EC(v3, v4, v5, v6);
}

uint64_t objectdestroy_93Tm()
{
  OUTLINED_FUNCTION_112();
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 32) & ~*(v1 + 80)));

  return swift_deallocObject();
}

uint64_t sub_1DCD86800()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_61_13();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_28_17(v1);

  return sub_1DCD84EC8(v3, v4, v5, v6);
}

uint64_t objectdestroy_68Tm()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECCA5508, &unk_1DD0F76F0);
  OUTLINED_FUNCTION_112();
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return swift_deallocObject();
}

uint64_t HandoffSessionToCompanionFlowFrame.namespace.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t HandoffSessionToCompanionFlowFrame.__allocating_init(handoffDialog:notificationText:sessionHandOffContinuityID:deviceState:aceServiceInvoker:)(void *a1, const void *a2, uint64_t a3, uint64_t a4, void *a5, __int128 *a6)
{
  v12 = swift_allocObject();
  HandoffSessionToCompanionFlowFrame.init(handoffDialog:notificationText:sessionHandOffContinuityID:deviceState:aceServiceInvoker:)(a1, a2, a3, a4, a5, a6);
  return v12;
}

void *HandoffSessionToCompanionFlowFrame.init(handoffDialog:notificationText:sessionHandOffContinuityID:deviceState:aceServiceInvoker:)(void *__src, const void *a2, uint64_t a3, uint64_t a4, void *a5, __int128 *a6)
{
  v7 = v6;
  v7[2] = 0xD00000000000001DLL;
  v7[3] = 0x80000001DD116170;
  v7[35] = MEMORY[0x1E69E7CC0];
  memcpy(v7 + 6, __src, 0x48uLL);
  memcpy(v7 + 15, a2, 0x48uLL);
  v7[4] = a3;
  v7[5] = a4;
  v13 = a5[3];
  v14 = a5[4];
  __swift_project_boxed_opaque_existential_1(a5, v13);
  LOBYTE(a4) = (*(v14 + 96))(v13, v14);
  type metadata accessor for ViewFactory();
  v15 = swift_allocObject();
  *(v15 + 16) = a4 & 1;
  v7[24] = v15;
  sub_1DCB17CA0(a5, (v7 + 25));
  sub_1DCB18FF0(a6, (v7 + 30));
  __swift_destroy_boxed_opaque_existential_1Tm(a5);
  return v7;
}

uint64_t sub_1DCD86B54(uint64_t a1, uint64_t a2, void (*a3)(char *))
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA9BE0, &qword_1DD0E9590);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v11 - v6;
  v8 = *MEMORY[0x1E699F738];
  sub_1DD0DB34C();
  OUTLINED_FUNCTION_2();
  (*(v9 + 104))(v7, v8);
  swift_storeEnumTagMultiPayload();
  a3(v7);
  return sub_1DCB0E9D8(v7, &unk_1ECCA9BE0, &qword_1DD0E9590);
}

void sub_1DCD86C54(uint64_t a1, void *a2, void (*a3)(void *), uint64_t a4)
{
  v5 = a2[24];
  memcpy(__dst, a2 + 6, sizeof(__dst));
  memcpy(v12, a2 + 15, 0x48uLL);
  v6 = v12[5];
  v7 = *(*v5 + 120);
  sub_1DCBBF670(v12, v10);
  v7(__dst, MEMORY[0x1E69E7CC0], MEMORY[0x1E69E7CC0], 0, 0, 0);
  if (*(v6 + 16))
  {
  }

  sub_1DCD8787C();
  v8 = a2[28];
  v9 = a2[29];
  __swift_project_boxed_opaque_existential_1(a2 + 25, v8);
  sub_1DCCDEA6C(v8, v9);
}

void sub_1DCD86E34(uint64_t a1, uint64_t (*a2)(void, void))
{
  v3 = v2;
  v4 = v2[24];
  memcpy(__dst, v3 + 6, sizeof(__dst));
  memcpy(v11, v3 + 15, 0x48uLL);
  v5 = v11[5];
  v6 = *(*v4 + 120);
  sub_1DCBBF670(v11, v9);
  OUTLINED_FUNCTION_1_62();
  v6();
  if (*(v5 + 16))
  {
  }

  sub_1DCD8787C();
  v8 = v3[28];
  v7 = v3[29];
  __swift_project_boxed_opaque_existential_1(v3 + 25, v8);
  sub_1DCCDEA6C(v8, v7);
}

void static HandoffToCompanionAceCommands.buildAceCommands(viewFactory:handoffDialog:notificationText:sessionHandOffContinuityID:deviceState:)(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  memcpy(__dst, a2, sizeof(__dst));
  v8 = *(a3 + 40);
  OUTLINED_FUNCTION_1_62();
  v9();
  if (*(v8 + 16))
  {
  }

  sub_1DCD8787C();
  v10 = a6[3];
  v11 = a6[4];
  __swift_project_boxed_opaque_existential_1(a6, v10);
  sub_1DCCDEA6C(v10, v11);
}

void sub_1DCD87174(uint64_t a1, uint64_t a2)
{
  if (qword_1EDE4F908 != -1)
  {
    swift_once();
  }

  sub_1DD0DE6DC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA25F0, &unk_1DD0E3370);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1DD0E07C0;
  v7 = v2[4];
  v6 = v2[5];
  *(v5 + 56) = MEMORY[0x1E69E6158];
  *(v5 + 64) = sub_1DCB34060();
  *(v5 + 32) = v7;
  *(v5 + 40) = v6;

  sub_1DD0DD7EC("Submitting InitiateOnCompanion with session handOff continuityID: %s", v9);

  __swift_project_boxed_opaque_existential_1(v2 + 30, v2[33]);
  v8 = swift_allocObject();
  v8[2] = a1;
  v8[3] = a2;
  v8[4] = v2;

  sub_1DD0DCF8C();
}

uint64_t sub_1DCD87324(uint64_t a1, void (*a2)(uint64_t *), uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA9BF0, &qword_1DD0EA250);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = (v28 - v10);
  v12 = *(a1 + 8);
  if (v12 == 255)
  {
    if (qword_1EDE4F908 != -1)
    {
      swift_once();
    }

    v22 = qword_1EDE57E18;
    v23 = sub_1DD0DE6DC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA25F0, &unk_1DD0E3370);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_1DD0E07C0;
    v26 = *(a4 + 32);
    v25 = *(a4 + 40);
    *(v24 + 56) = MEMORY[0x1E69E6158];
    *(v24 + 64) = sub_1DCB34060();
    *(v24 + 32) = v26;
    *(v24 + 40) = v25;

    sub_1DD0DD7EC("HandoffSessionToCompanionFlowFrame exiting with status complete", 63, 2, &dword_1DCAFC000, v22, v23, v24);

    type metadata accessor for SiriKitFlowFrameInput(0);
    sub_1DD0DB32C();
    swift_storeEnumTagMultiPayload();
    a2(v11);
  }

  else
  {
    v28[1] = v8;
    v28[2] = a3;
    v29 = a2;
    v13 = *a1;
    sub_1DCB6DECC(v13, v12);
    if (qword_1EDE4F908 != -1)
    {
      swift_once();
    }

    v14 = qword_1EDE57E18;
    v15 = sub_1DD0DE6DC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA25F0, &unk_1DD0E3370);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_1DD0E07C0;
    v30 = v13;
    v31 = v12;
    sub_1DCB66C54();
    v17 = sub_1DD0DF18C();
    v19 = v18;
    *(v16 + 56) = MEMORY[0x1E69E6158];
    *(v16 + 64) = sub_1DCB34060();
    *(v16 + 32) = v17;
    *(v16 + 40) = v19;
    sub_1DD0DD7EC("HandoffSessionToCompanionFlowFrame exiting with error", 53, 2, &dword_1DCAFC000, v14, v15, v16);

    v20 = swift_allocError();
    *v21 = v13;
    *(v21 + 8) = v12;
    *v11 = v20;
    swift_storeEnumTagMultiPayload();
    sub_1DCB6DECC(v13, v12);
    v29(v11);
    sub_1DCBCC7B0(v13, v12);
  }

  return sub_1DCB0E9D8(v11, &qword_1ECCA9BF0, &qword_1DD0EA250);
}

void *HandoffSessionToCompanionFlowFrame.deinit()
{

  v1 = v0[12];
  v2 = v0[13];

  sub_1DCB409A8(v1, v2);

  v3 = v0[21];
  v4 = v0[22];

  sub_1DCB409A8(v3, v4);

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 25);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 30);

  return v0;
}

uint64_t HandoffSessionToCompanionFlowFrame.__deallocating_deinit()
{
  HandoffSessionToCompanionFlowFrame.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1DCD87830(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for HandoffSessionToCompanionFlowFrame();

  return MEMORY[0x1EEE089D8](a1, v5, a3);
}

unint64_t sub_1DCD8787C()
{
  result = qword_1ECCA9330;
  if (!qword_1ECCA9330)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ECCA9330);
  }

  return result;
}

unint64_t sub_1DCD878CC(uint64_t a1, uint64_t a2)
{
  result = sub_1DCD878F4(a1, a2);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1DCD878F4(uint64_t a1, uint64_t a2)
{
  result = qword_1ECCA57B0;
  if (!qword_1ECCA57B0)
  {
    type metadata accessor for HandoffSessionToCompanionFlowFrame();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA57B0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for HandoffToCompanionAceCommands(_BYTE *result, int a2, int a3)
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

void sub_1DCD87AB0(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = 0;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA57C0, &qword_1DD0F2C90);
  swift_allocObject();
  sub_1DD0DCACC();
}

void sub_1DCD87CD8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA57C0, &qword_1DD0F2C90);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1DD0DCF8C();
}

uint64_t sub_1DCD87D8C()
{
  OUTLINED_FUNCTION_42();
  v1[40] = v2;
  v1[41] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA7470, &qword_1DD0E16E0);
  OUTLINED_FUNCTION_20_0(v3);
  v1[42] = swift_task_alloc();
  v1[43] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA3270, &qword_1DD0E0F70);
  OUTLINED_FUNCTION_20_0(v4);
  v1[44] = OUTLINED_FUNCTION_38();
  v5 = type metadata accessor for AceOutput(0);
  v1[45] = v5;
  OUTLINED_FUNCTION_20_0(v5);
  v1[46] = OUTLINED_FUNCTION_38();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA1E90, &qword_1DD0E26F0);
  OUTLINED_FUNCTION_20_0(v6);
  v1[47] = OUTLINED_FUNCTION_38();
  v7 = type metadata accessor for IdentifiedUser(0);
  v1[48] = v7;
  OUTLINED_FUNCTION_20_0(v7);
  v1[49] = OUTLINED_FUNCTION_38();

  return MEMORY[0x1EEE6DFA0](sub_1DCD87ECC, 0, 0);
}

void sub_1DCD87ECC()
{
  v2 = v0;
  v1 = *(v0 + 328);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA57C0, &qword_1DD0F2C90);
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 304) = v1;
  sub_1DD0DCF8C();
}

uint64_t sub_1DCD88618()
{
  OUTLINED_FUNCTION_42();
  v5 = *v1;
  OUTLINED_FUNCTION_27();
  *v2 = v5;
  *(v5 + 440) = v0;

  if (v0)
  {
    v3 = sub_1DCD88AA0;
  }

  else
  {

    v3 = sub_1DCD88728;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

void sub_1DCD88728()
{
  v7 = v0;
  v1 = *(v0 + 352);
  v2 = *(v0 + 328);
  memcpy(__dst, (v0 + 16), sizeof(__dst));
  v3 = v2[11];
  v4 = v2[12];
  __swift_project_boxed_opaque_existential_1(v2 + 8, v3);
  (*(v4 + 96))(v3, v4);
  v5 = type metadata accessor for NLContextUpdate(0);
  __swift_storeEnumTagSinglePayload(v1, 1, 1, v5);
  *(v0 + 192) = 0;
  *(v0 + 176) = 0u;
  *(v0 + 160) = 0u;
  static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
}

uint64_t sub_1DCD8897C()
{
  v2 = *v1;
  v3 = *v1;
  OUTLINED_FUNCTION_27();
  *v4 = v3;

  if (v0)
  {

    v5 = sub_1DCD88E54;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v2 + 200));
    v5 = sub_1DCD88D98;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

void sub_1DCD88AA0()
{
  v19 = v0;
  v1 = v0[55];
  v2 = v0[51];
  v3 = v0[52];
  v4 = v0[42];
  v5 = v0[43];
  sub_1DD0DEC1C();

  v17 = 0xD00000000000001CLL;
  v18 = 0x80000001DD11CA50;
  v0[39] = v1;
  v6 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA33E0, &unk_1DD0E1650);
  v7 = sub_1DD0DE02C();
  MEMORY[0x1E12A6780](v7);

  v8 = v17;
  v9 = v18;
  v10 = *(v2 - 8);
  (*(v10 + 16))(v5, v3, v2);
  __swift_storeEnumTagSinglePayload(v5, 0, 1, v2);
  sub_1DCB09910(v5, v4, &unk_1ECCA7470, &qword_1DD0E16E0);
  if (__swift_getEnumTagSinglePayload(v4, 1, v2) == 1)
  {
    sub_1DCB0E9D8(v0[42], &unk_1ECCA7470, &qword_1DD0E16E0);
  }

  else
  {

    v11 = sub_1DD0DD8EC();
    v12 = sub_1DD0DE6EC();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *v13 = 136315650;
      v14 = sub_1DD0DEC3C();
      v16 = sub_1DCB10E9C(v14, v15, &v17);

      *(v13 + 4) = v16;
      *(v13 + 12) = 2048;
      *(v13 + 14) = 95;
      *(v13 + 22) = 2080;
      *(v13 + 24) = sub_1DCB10E9C(v8, v9, &v17);
      _os_log_impl(&dword_1DCAFC000, v11, v12, "FatalError at %s:%lu - %s", v13, 0x20u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_80();
      OUTLINED_FUNCTION_80();
    }

    (*(v10 + 8))(v0[42], v0[51]);
  }

  static SiriKitLifecycle._logCrashToEventBus(_:)(v8, v9);
}

uint64_t sub_1DCD88D98()
{
  v1 = *(v0 + 392);

  OUTLINED_FUNCTION_3_63();
  OUTLINED_FUNCTION_1_63();
  sub_1DCD89260(v1, v2);
  v3 = *(v0 + 328);
  static ExecuteResponse.complete()();
  *(v3 + 16) = 1;
  OUTLINED_FUNCTION_4_61();

  OUTLINED_FUNCTION_29();

  return v4();
}

uint64_t sub_1DCD88E54()
{
  v1 = *(v0 + 392);

  OUTLINED_FUNCTION_3_63();
  OUTLINED_FUNCTION_1_63();
  sub_1DCD89260(v1, v2);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 200));
  v3 = *(v0 + 328);
  static ExecuteResponse.complete()();
  *(v3 + 16) = 1;
  OUTLINED_FUNCTION_4_61();

  OUTLINED_FUNCTION_29();

  return v4();
}

void *sub_1DCD88F18()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 24));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 64));

  return v0;
}

uint64_t sub_1DCD88F48()
{
  sub_1DCD88F18();

  return swift_deallocClassInstance();
}

uint64_t sub_1DCD8903C()
{
  OUTLINED_FUNCTION_42();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DCB22EC8;

  return sub_1DCD87D8C();
}

unint64_t sub_1DCD890D4(uint64_t a1)
{
  result = sub_1DCD890FC();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1DCD890FC()
{
  result = qword_1ECCA57B8;
  if (!qword_1ECCA57B8)
  {
    type metadata accessor for HomePodSpeechProfileCheckFlow();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA57B8);
  }

  return result;
}

void sub_1DCD89150()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA57C0, &qword_1DD0F2C90);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1DD0DCF8C();
}

uint64_t sub_1DCD891FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IdentifiedUser(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DCD89260(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_2();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1DCD892B8(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ResponseFactory();
  swift_allocObject();
  *(v2 + 56) = ResponseFactory.init()();
  sub_1DCD8B01C(a2, &v6);
  if (!v7)
  {
    sub_1DCB82888();
  }

  sub_1DCB0E9D8(a2, &qword_1ECCA57C8, &unk_1DD0F2D20);
  sub_1DCAFF9E8(&v6, &v8);
  sub_1DCAFF9E8(&v8, v2 + 16);
  *(v2 + 64) = 0;
  *(v2 + 72) = a1;
  return v2;
}

uint64_t sub_1DCD893BC(uint64_t a1)
{
  *(v2 + 56) = a1;
  *(v2 + 64) = v1;
  return OUTLINED_FUNCTION_0_12(sub_1DCD893D4);
}

uint64_t sub_1DCD893D4()
{
  OUTLINED_FUNCTION_42();
  v1 = swift_task_alloc();
  *(v0 + 72) = v1;
  *v1 = v0;
  v1[1] = sub_1DCD89464;

  return sub_1DCD8A9D4();
}

uint64_t sub_1DCD89464()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_13_0();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 96) = v3;

  return MEMORY[0x1EEE6DFA0](sub_1DCD89558, 0, 0);
}

uint64_t sub_1DCD89558()
{
  OUTLINED_FUNCTION_42();
  if (*(v0 + 96) == 1)
  {
    static ExecuteResponse.complete()();
    OUTLINED_FUNCTION_29();

    return v1();
  }

  else
  {
    *(*(v0 + 64) + 64) = 1;
    swift_task_alloc();
    OUTLINED_FUNCTION_45();
    *(v0 + 80) = v3;
    *v3 = v4;
    v3[1] = sub_1DCD89634;

    return sub_1DCD89944();
  }
}

uint64_t sub_1DCD89634()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_13_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_27();
  *v5 = v4;
  *(v6 + 88) = v0;

  if (v0)
  {
    v7 = sub_1DCD897B8;
  }

  else
  {
    v7 = sub_1DCD89734;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1DCD89734()
{
  OUTLINED_FUNCTION_39();
  __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
  static ExecuteResponse.complete<A>(next:)();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  OUTLINED_FUNCTION_29();

  return v1();
}

uint64_t sub_1DCD897B8()
{
  OUTLINED_FUNCTION_33();
  *(*(v0 + 64) + 64) = 1;
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
  }

  v1 = *(v0 + 88);
  v2 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v2, qword_1EDE57E00);
  v3 = v1;
  v4 = sub_1DD0DD8EC();
  v5 = sub_1DD0DE6EC();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 88);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    OUTLINED_FUNCTION_15_8();
    _os_log_impl(v12, v13, v14, v15, v16, 0xCu);
    sub_1DCB0E9D8(v9, qword_1ECCA8AD0, &qword_1DD0E4F90);
    MEMORY[0x1E12A8390](v9, -1, -1);
    OUTLINED_FUNCTION_92_0();
  }

  else
  {
  }

  static ExecuteResponse.complete()();
  OUTLINED_FUNCTION_29();

  return v17();
}

uint64_t sub_1DCD89944()
{
  OUTLINED_FUNCTION_42();
  v1[45] = v2;
  v1[46] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA3270, &qword_1DD0E0F70);
  v1[47] = swift_task_alloc();
  v3 = *(type metadata accessor for AceOutput(0) - 8);
  v1[48] = v3;
  v1[49] = *(v3 + 64);
  v1[50] = swift_task_alloc();
  v1[51] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DCD89A48, 0, 0);
}

uint64_t sub_1DCD89A48()
{
  OUTLINED_FUNCTION_39();
  if (qword_1EDE48CE8 != -1)
  {
    swift_once();
  }

  v1 = sub_1DD0DDE9C();
  *(v0 + 416) = v1;
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v0 + 424) = v2;
  *v2 = v3;
  v2[1] = sub_1DCD89B60;

  return sub_1DCF66E08(v0 + 16, 134, v1, 0);
}

uint64_t sub_1DCD89B60()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_13_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_27();
  *v6 = v5;
  *(v3 + 432) = v0;

  if (v0)
  {
    v7 = sub_1DCD89F00;
  }

  else
  {
    v7 = sub_1DCD89C70;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

void sub_1DCD89C70()
{
  v3 = v0;
  memcpy(v0 + 11, v0 + 2, 0x48uLL);
  memcpy(__dst, v0 + 2, sizeof(__dst));
  if (qword_1EDE46628 != -1)
  {
    swift_once();
  }

  v1 = qword_1EDE46630;
  sub_1DCB4E718((v0 + 25));
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 25);
  v0[23] = type metadata accessor for RefreshableDeviceState();
  v0[24] = &protocol witness table for RefreshableDeviceState;
  v0[20] = v1;
  sub_1DD0DCF8C();
}

uint64_t sub_1DCD89F00()
{
  OUTLINED_FUNCTION_42();

  OUTLINED_FUNCTION_29();

  return v0();
}

uint64_t sub_1DCD89F70(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DCD89F90, 0, 0);
}

uint64_t sub_1DCD89F90()
{
  OUTLINED_FUNCTION_42();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v1[3] = type metadata accessor for AceOutput(0);
  v1[4] = &protocol witness table for AceOutput;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v1);
  sub_1DCB6FF74(v2, boxed_opaque_existential_1Tm);
  OUTLINED_FUNCTION_29();

  return v4();
}

void *sub_1DCD8A010()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  return v0;
}

uint64_t sub_1DCD8A040()
{
  sub_1DCD8A010();

  return swift_deallocClassInstance();
}

uint64_t sub_1DCD8A134()
{
  OUTLINED_FUNCTION_42();
  v2 = v1;
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v0 + 16) = v3;
  *v3 = v4;
  v3[1] = sub_1DCB4AD3C;

  return sub_1DCD893BC(v2);
}

uint64_t sub_1DCD8A1EC()
{
  OUTLINED_FUNCTION_39();
  v1 = [objc_allocWithZone(MEMORY[0x1E6959A48]) init];
  v0[19] = v1;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1DCD8A320;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA57D8, &qword_1DD0F2E88);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1DCD8A7DC;
  v0[13] = &block_descriptor_6;
  v0[14] = v2;
  [v1 aa:v0 + 10 primaryAppleAccountWithCompletion:?];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1DCD8A320()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_13_0();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 160) = v4;
  if (v4)
  {
    v5 = sub_1DCD8A774;
  }

  else
  {
    v5 = sub_1DCD8A424;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1DCD8A424()
{
  OUTLINED_FUNCTION_33();
  v1 = *(v0 + 144);
  if (v1)
  {
    if ([*(v0 + 144) isEnabledForDataclass_])
    {
      v2 = sub_1DCD8AEE4(v1);
      if (v3)
      {
        v4 = v2;
        v5 = v3;
        v6 = *(v0 + 152);

        v7 = *(v0 + 8);

        return v7(v4, v5);
      }

      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
      }

      v25 = sub_1DD0DD8FC();
      __swift_project_value_buffer(v25, qword_1EDE57E00);
      v26 = sub_1DD0DD8EC();
      v27 = sub_1DD0DE6EC();
      if (os_log_type_enabled(v26, v27))
      {
        *swift_slowAlloc() = 0;
        OUTLINED_FUNCTION_15_8();
        _os_log_impl(v28, v29, v30, v31, v32, 2u);
        OUTLINED_FUNCTION_92_0();
      }

      v13 = *(v0 + 152);

      sub_1DCD8AE90();
      swift_allocError();
      v24 = 2;
    }

    else
    {
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
      }

      v15 = sub_1DD0DD8FC();
      __swift_project_value_buffer(v15, qword_1EDE57E00);
      v16 = sub_1DD0DD8EC();
      v17 = sub_1DD0DE6EC();
      if (os_log_type_enabled(v16, v17))
      {
        *swift_slowAlloc() = 0;
        OUTLINED_FUNCTION_15_8();
        _os_log_impl(v18, v19, v20, v21, v22, 2u);
        OUTLINED_FUNCTION_92_0();
      }

      v13 = *(v0 + 152);

      sub_1DCD8AE90();
      swift_allocError();
      v24 = 1;
    }

    *v23 = v24;
    swift_willThrow();
  }

  else
  {
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
    }

    v9 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v9, qword_1EDE57E00);
    v10 = sub_1DD0DD8EC();
    v11 = sub_1DD0DE6EC();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_1DCAFC000, v10, v11, "No iCloud account activated on this device", v12, 2u);
      MEMORY[0x1E12A8390](v12, -1, -1);
    }

    v13 = *(v0 + 152);

    sub_1DCD8AE90();
    swift_allocError();
    *v14 = 0;
    swift_willThrow();
  }

  OUTLINED_FUNCTION_29();

  return v33();
}

uint64_t sub_1DCD8A774()
{
  OUTLINED_FUNCTION_39();
  v1 = *(v0 + 152);
  swift_willThrow();

  OUTLINED_FUNCTION_29();

  return v2();
}

uint64_t sub_1DCD8A7DC(uint64_t a1, void *a2, void *a3)
{
  __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v5 = a3;

    return sub_1DCEA2438();
  }

  else
  {
    v7 = a2;

    return sub_1DCBA2CF0();
  }
}

uint64_t sub_1DCD8A888(uint64_t a1, uint64_t a2)
{
  type metadata accessor for IdentifiedUser(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v4, v5);
  if (!a2)
  {
    sub_1DD0DCA6C();
  }

  return a1;
}

uint64_t sub_1DCD8A9EC()
{
  OUTLINED_FUNCTION_42();
  __swift_project_boxed_opaque_existential_1((*(v0 + 16) + 32), *(*(v0 + 16) + 56));
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_1DCD8AA84;

  return sub_1DCD8A1D8();
}

uint64_t sub_1DCD8AA84()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_13_0();
  *v3 = v2;
  *v3 = *v1;
  v2[4] = v4;
  v2[5] = v5;
  v2[6] = v0;

  if (v0)
  {
    v6 = sub_1DCD8AC54;
  }

  else
  {
    v6 = sub_1DCD8AB90;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1DCD8AB90()
{
  OUTLINED_FUNCTION_39();
  v1 = (*(v0[2] + 16))();
  if (v2)
  {
    if (v0[4] == v1 && v2 == v0[5])
    {
      v4 = 1;
    }

    else
    {
      v4 = sub_1DD0DF0AC();
    }
  }

  else
  {
    v4 = 0;
  }

  v5 = v0[1];

  return v5(v4 & 1);
}

uint64_t sub_1DCD8AC54()
{
  OUTLINED_FUNCTION_33();
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
  }

  v1 = *(v0 + 48);
  v2 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v2, qword_1EDE57E00);
  v3 = v1;
  v4 = sub_1DD0DD8EC();
  v5 = sub_1DD0DE6EC();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 48);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    OUTLINED_FUNCTION_15_8();
    _os_log_impl(v12, v13, v14, v15, v16, 0xCu);
    sub_1DCB0E9D8(v9, qword_1ECCA8AD0, &qword_1DD0E4F90);
    MEMORY[0x1E12A8390](v9, -1, -1);
    OUTLINED_FUNCTION_92_0();
  }

  else
  {
  }

  v17 = *(v0 + 8);

  return v17(0);
}

uint64_t sub_1DCD8ADD4()
{

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 32));

  return swift_deallocClassInstance();
}

uint64_t sub_1DCD8AE38(uint64_t a1, uint64_t a2)
{
  result = sub_1DCD8B08C(&qword_1ECCA57D0, a2, type metadata accessor for ICloudIdValidatorFlow, &unk_1DD0F2E18);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1DCD8AE90()
{
  result = qword_1ECCA57E0;
  if (!qword_1ECCA57E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA57E0);
  }

  return result;
}

uint64_t sub_1DCD8AEE4(void *a1)
{
  v1 = [a1 aa_altDSID];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1DD0DDFBC();

  return v3;
}

uint64_t sub_1DCD8AF48()
{
  OUTLINED_FUNCTION_39();
  v3 = v2;
  v4 = *(type metadata accessor for AceOutput(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v1 + 16) = v6;
  *v6 = v7;
  v6[1] = sub_1DCB4AD3C;

  return sub_1DCD89F70(v3, v0 + v5);
}

uint64_t sub_1DCD8B01C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA57C8, &unk_1DD0F2D20);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DCD8B08C(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

_BYTE *storeEnumTagSinglePayload for ACAccountICloudIdProvider.Errors(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1DCD8B1B4()
{
  result = qword_1ECCA57E8;
  if (!qword_1ECCA57E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA57E8);
  }

  return result;
}

void ActingFlow.BOOL(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_13_26();
  v8 = swift_allocObject();
  v8[2] = v4;
  v8[3] = a4;
  v8[4] = v6;
  v8[5] = v5;
  sub_1DD0DCF8C();
}

uint64_t sub_1DCD8B2B4@<X0>(_BYTE *a1@<X8>)
{
  result = (*(v1 + 32))();
  *a1 = result & 1;
  return result;
}

void sub_1DCD8B328(uint64_t a1@<X8>)
{
  if (*(v1 + 80))
  {
    sub_1DD0DCF8C();
  }

  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
}

uint64_t If.__allocating_init<A>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = swift_allocObject();
  If.init<A>(_:_:)(a1, a2, a3, a4);
  return v9;
}

uint64_t sub_1DCD8B470(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 80) = 0;
  *(v3 + 88) = 0;
  *(v3 + 40) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA57F0, &qword_1DD0F2F60);
  v7 = sub_1DCBF7DC0(&qword_1ECCA5940, &qword_1ECCA57F0, &qword_1DD0F2F60, &unk_1DD0F3088);
  *(v3 + 16) = a1;
  *(v3 + 48) = v7;
  *(v3 + 56) = a2;
  v8 = MEMORY[0x1E69E7CC0];
  *(v3 + 64) = a3;
  *(v3 + 72) = v8;
  *(v3 + 88) = 0;
  *(v3 + 96) = 0;
  *(v3 + 80) = 0;
  *(v3 + 104) = 2;
  return v3;
}

uint64_t If.init<A>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_13_26();
  *(v4 + 80) = 0;
  *(v4 + 88) = 0;
  *(v4 + 40) = v9;
  *(v4 + 48) = v10;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm((v4 + 16));
  v12 = *(a4 - 8);
  (*(v12 + 16))(boxed_opaque_existential_1Tm, v7, a4);
  *(v4 + 56) = v6;
  *(v4 + 64) = v5;
  (*(v12 + 8))(v7, a4);
  v13 = MEMORY[0x1E69E7CC0];
  v14 = *(v4 + 80);
  v15 = *(v4 + 88);
  *(v4 + 80) = 0;
  *(v4 + 88) = 0;
  *(v4 + 72) = v13;
  sub_1DCB370A4(v14, v15);
  *(v4 + 96) = 0;
  *(v4 + 104) = 2;
  return v4;
}

uint64_t If.__allocating_init(_:_:)(char a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA57F0, &qword_1DD0F2F60);
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  type metadata accessor for If();
  swift_allocObject();
  return sub_1DCD8B470(v6, a2, a3);
}

void sub_1DCD8B68C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA57F0, &qword_1DD0F2F60);
  sub_1DCBF7DC0(&qword_1ECCA5940, &qword_1ECCA57F0, &qword_1DD0F2F60, &unk_1DD0F3088);
  swift_beginAccess();
  sub_1DD0DCF8C();
}

void sub_1DCD8B798()
{
  OUTLINED_FUNCTION_13_26();
  v6 = v2;
  v7 = v3;
  __swift_allocate_boxed_opaque_existential_1Tm(v5);
  OUTLINED_FUNCTION_112();
  (*(v4 + 16))();
  v8 = v1;
  v9 = v0;
  swift_beginAccess();
  sub_1DD0DCF8C();
}

void sub_1DCD8B890(char a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA57F0, &qword_1DD0F2F60);
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  sub_1DCD8B68C(v6, a2, a3);
}

void sub_1DCD8B90C(uint64_t a1, uint64_t a2)
{
  *(v3 + 80) = a1;
  *(v3 + 88) = a2;
  sub_1DD0DCF8C();
}

uint64_t sub_1DCD8B978@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v11 = *(v9 + 96);
  if (!*(v9 + 104))
  {
    result = OUTLINED_FUNCTION_18_28(a1, a2, a3, a4, a5, a6, a7, a8, v31, v32);
    if ((v11 & 0x8000000000000000) == 0)
    {
      v14 = *(v9 + 72);
      if (v11 < *(v14 + 16))
      {
        sub_1DCB17D04(v14 + 56 * v11 + 32, &v36);
        __swift_project_boxed_opaque_existential_1(&v36, *(&v37 + 1));
        v15 = swift_allocObject();
        *(v15 + 16) = v11;
        *(v15 + 24) = v9;
        *(&v34 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA57F8, &qword_1DD0F2F68);
        OUTLINED_FUNCTION_5_51();
        v35 = sub_1DCBF7DC0(v16, &qword_1ECCA57F8, &qword_1DD0F2F68, v17);
        sub_1DD0DCF8C();
      }

      goto LABEL_23;
    }

    goto LABEL_21;
  }

  if (*(v9 + 104) == 1)
  {
    result = OUTLINED_FUNCTION_18_28(a1, a2, a3, a4, a5, a6, a7, a8, v31, v32);
    if ((v11 & 0x8000000000000000) == 0)
    {
      v13 = *(v9 + 72);
      if (v11 < *(v13 + 16))
      {
        sub_1DCD8DBC8(v13 + 56 * v11 + 32, &v33);
      }

      goto LABEL_22;
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    return result;
  }

  switch(v11)
  {
    case 1uLL:
      v23 = (*(v9 + 56))(a1, a2, a3, a4, a5, a6, a7, a8);
      v24 = v23;
      if (*(v23 + 16) == 1)
      {
        sub_1DCB17D04(v23 + 32, &v36);

        v25 = *(&v37 + 1);
      }

      else
      {
        v25 = type metadata accessor for Linearly();
        v26 = swift_allocObject();
        v27 = sub_1DCDB3694(v26, v24);
        *(v27 + 33) = 0;
        *(&v37 + 1) = v25;
        v38 = &protocol witness table for Linearly;
        *&v36 = v27;
      }

      __swift_project_boxed_opaque_existential_1(&v36, v25);
      sub_1DD0DCF8C();
    case 2uLL:
      sub_1DCD8B328(&v33);
      if (*(&v34 + 1))
      {
        sub_1DCAFF9E8(&v33, &v36);
        __swift_project_boxed_opaque_existential_1(&v36, *(&v37 + 1));
        sub_1DD0DCF8C();
      }

      sub_1DCBD0C9C(&v33);
      v38 = 0;
      v36 = 0u;
      v37 = 0u;
      v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA1D18, &qword_1DD10E980);
      *(&v34 + 1) = v28;
      v35 = &protocol witness table for Conclude<A>;
      boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(&v33);
      v30 = *(v28 + 32);
      sub_1DCBD0C2C(&v36, boxed_opaque_existential_1Tm + v30);
      *(boxed_opaque_existential_1Tm + *(v28 + 36)) = 0;
      boxed_opaque_existential_1Tm[3] = MEMORY[0x1E69E7CA8] + 8;
      sub_1DCBD0C9C(&v36);
      sub_1DCBD0C2C(boxed_opaque_existential_1Tm + v30, (boxed_opaque_existential_1Tm + 4));
      *(boxed_opaque_existential_1Tm + 72) = 0;
      type metadata accessor for FlowActionType(0);
      swift_storeEnumTagMultiPayload();
      result = sub_1DCAFF9E8(&v33, a9);
      break;
    case 3uLL:
      v35 = 0;
      v33 = 0u;
      v34 = 0u;
      v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA1D18, &qword_1DD10E980);
      v21 = OUTLINED_FUNCTION_13_37(v20, &protocol witness table for Conclude<A>);
      v22 = *(v20 + 32);
      sub_1DCBD0C2C(&v33, v21 + v22);
      *(v21 + *(v20 + 36)) = 0;
      v21[3] = MEMORY[0x1E69E7CA8] + 8;
      sub_1DCBD0C9C(&v33);
      sub_1DCBD0C2C(v21 + v22, (v21 + 4));
      *(v21 + 72) = 0;
      type metadata accessor for FlowActionType(0);
      result = swift_storeEnumTagMultiPayload();
      break;
    default:
      __swift_project_boxed_opaque_existential_1((v9 + 16), *(v9 + 40));
      *(&v34 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA57F8, &qword_1DD0F2F68);
      OUTLINED_FUNCTION_5_51();
      v35 = sub_1DCBF7DC0(v18, &qword_1ECCA57F8, &qword_1DD0F2F68, v19);
      sub_1DD0DCF8C();
  }

  return result;
}

void sub_1DCD8C048(unsigned __int8 *a1, uint64_t a2)
{
  v3 = *a1;
  if (qword_1EDE4F900 != -1)
  {
    swift_once();
  }

  v4 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v4, qword_1EDE57E00);
  v5 = sub_1DD0DD8EC();
  v6 = sub_1DD0DE6DC();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 67109120;
    *(v7 + 4) = v3;
    _os_log_impl(&dword_1DCAFC000, v5, v6, "if condition: %{BOOL}d", v7, 8u);
    MEMORY[0x1E12A8390](v7, -1, -1);
  }

  if (v3)
  {
    v8 = 2;
    v9 = 1;
  }

  else
  {
    swift_beginAccess();
    v9 = 2 * (*(*(a2 + 72) + 16) == 0);
    v8 = 2 * (*(*(a2 + 72) + 16) == 0);
  }

  *(a2 + 96) = v9;
  *(a2 + 104) = v8;
}

void sub_1DCD8C188(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  if (qword_1EDE4F900 != -1)
  {
    swift_once();
  }

  v6 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v6, qword_1EDE57E00);
  v7 = sub_1DD0DD8EC();
  v8 = sub_1DD0DE6DC();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 134218240;
    *(v9 + 4) = a2;
    *(v9 + 12) = 1024;
    *(v9 + 14) = v5;
    _os_log_impl(&dword_1DCAFC000, v7, v8, "elseIf[%ld] condition: %{BOOL}d", v9, 0x12u);
    MEMORY[0x1E12A8390](v9, -1, -1);
  }

  v10 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
    __break(1u);
  }

  else
  {
    if (v5)
    {
      v11 = 1;
    }

    else
    {
      swift_beginAccess();
      v12 = *(*(a3 + 72) + 16);
      v13 = v10 < v12;
      v14 = v10 >= v12;
      if (v13)
      {
        ++a2;
      }

      else
      {
        a2 = 2;
      }

      v11 = 2 * v14;
    }

    *(a3 + 96) = a2;
    *(a3 + 104) = v11;
  }
}

void sub_1DCD8C2E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_1EDE4F900 != -1)
  {
    swift_once();
  }

  v5 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v5, qword_1EDE57E00);
  v6 = sub_1DD0DD8EC();
  v7 = sub_1DD0DE6DC();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 134217984;
    *(v8 + 4) = a2;
    _os_log_impl(&dword_1DCAFC000, v6, v7, "run elseIf[%ld] body", v8, 0xCu);
    MEMORY[0x1E12A8390](v8, -1, -1);
  }

  *(a3 + 96) = 3;
  *(a3 + 104) = 2;
}

void sub_1DCD8C3E8(uint64_t a1, uint64_t a2, const char *a3)
{
  if (qword_1EDE4F900 != -1)
  {
    swift_once();
  }

  v5 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v5, qword_1EDE57E00);
  v6 = sub_1DD0DD8EC();
  v7 = sub_1DD0DE6DC();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_1DCAFC000, v6, v7, a3, v8, 2u);
    MEMORY[0x1E12A8390](v8, -1, -1);
  }

  *(a2 + 96) = 3;
  *(a2 + 104) = 2;
}

uint64_t sub_1DCD8C4DC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x66496B63656863 && a2 == 0xE700000000000000;
  if (v4 || (sub_1DD0DF0AC() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x646F4266496E7572 && a2 == 0xE900000000000079;
    if (v6 || (sub_1DD0DF0AC() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x736C456B63656863 && a2 == 0xEB00000000664965;
      if (v7 || (sub_1DD0DF0AC() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x4965736C456E7572 && a2 == 0xED000079646F4266;
        if (v8 || (sub_1DD0DF0AC() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x4265736C456E7572 && a2 == 0xEB0000000079646FLL;
          if (v9 || (sub_1DD0DF0AC() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 1701736292 && a2 == 0xE400000000000000)
          {

            return 5;
          }

          else
          {
            v11 = sub_1DD0DF0AC();

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

uint64_t sub_1DCD8C6E4(char a1)
{
  result = 0x66496B63656863;
  switch(a1)
  {
    case 1:
      result = 0x646F4266496E7572;
      break;
    case 2:
      result = 0x736C456B63656863;
      break;
    case 3:
      result = 0x4965736C456E7572;
      break;
    case 4:
      result = 0x4265736C456E7572;
      break;
    case 5:
      result = 1701736292;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DCD8C7B0(void *a1, uint64_t a2, int a3)
{
  v67 = a3;
  v68 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA5908, &qword_1DD0F30E8);
  OUTLINED_FUNCTION_9();
  v62 = v5;
  v63 = v4;
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v6, v7);
  OUTLINED_FUNCTION_34_0();
  v61 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA5910, &qword_1DD0F30F0);
  OUTLINED_FUNCTION_9();
  v59 = v10;
  v60 = v9;
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v11, v12);
  OUTLINED_FUNCTION_34_0();
  v58 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA5918, &qword_1DD0F30F8);
  OUTLINED_FUNCTION_9();
  v65 = v15;
  v66 = v14;
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v54 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA5920, &qword_1DD0F3100);
  OUTLINED_FUNCTION_9();
  v64 = v21;
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v22, v23);
  v25 = &v54 - v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA5928, &qword_1DD0F3108);
  OUTLINED_FUNCTION_9();
  v56 = v27;
  v57 = v26;
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v28, v29);
  OUTLINED_FUNCTION_34_0();
  v55 = v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA5930, &qword_1DD0F3110);
  OUTLINED_FUNCTION_9();
  v54 = v32;
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v33, v34);
  v36 = &v54 - v35;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA5938, &qword_1DD0F3118);
  OUTLINED_FUNCTION_9();
  v69 = v38;
  v70 = v37;
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v39, v40);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DCD8DFD8();
  sub_1DD0DF24C();
  if (!v67)
  {
    v73[0] = 2;
    sub_1DCD8E128();
    OUTLINED_FUNCTION_11_12(&type metadata for If.State.CheckElseIfCodingKeys, v73);
    sub_1DD0DEFEC();
    (*(v64 + 8))(v25, v20);
    v45 = OUTLINED_FUNCTION_9_38();
    v47 = v19;
    return v46(v45, v47);
  }

  if (v67 == 1)
  {
    v73[1] = 3;
    sub_1DCD8E0D4();
    v41 = v70;
    sub_1DD0DEF7C();
    v42 = v66;
    sub_1DD0DEFEC();
    v43 = OUTLINED_FUNCTION_17_23();
    v44(v43, v42);
    v45 = OUTLINED_FUNCTION_9_38();
    v47 = v41;
    return v46(v45, v47);
  }

  switch(v68)
  {
    case 1:
      v72 = 1;
      sub_1DCD8E17C();
      v49 = v55;
      OUTLINED_FUNCTION_11_12(&type metadata for If.State.RunIfBodyCodingKeys, &v72);
      v51 = v56;
      v50 = v57;
      goto LABEL_11;
    case 2:
      v74 = 4;
      sub_1DCD8E080();
      v49 = v58;
      OUTLINED_FUNCTION_11_12(&type metadata for If.State.RunElseBodyCodingKeys, &v74);
      v51 = v59;
      v50 = v60;
      goto LABEL_11;
    case 3:
      v75 = 5;
      sub_1DCD8E02C();
      v49 = v61;
      OUTLINED_FUNCTION_11_12(&type metadata for If.State.DoneCodingKeys, &v75);
      v51 = v62;
      v50 = v63;
LABEL_11:
      (*(v51 + 8))(v49, v50);
      break;
    default:
      v71 = 0;
      sub_1DCD8E1D0();
      OUTLINED_FUNCTION_11_12(&type metadata for If.State.CheckIfCodingKeys, &v71);
      (*(v54 + 8))(v36, v31);
      break;
  }

  v52 = OUTLINED_FUNCTION_9_38();
  return v53(v52, v19);
}

void sub_1DCD8CD44(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA5898, &qword_1DD0F30A8);
  OUTLINED_FUNCTION_9();
  v87 = v2;
  v88 = v3;
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v4, v5);
  OUTLINED_FUNCTION_34_0();
  v91 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA58A0, &qword_1DD0F30B0);
  OUTLINED_FUNCTION_9();
  v85 = v7;
  v86 = v8;
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v9, v10);
  OUTLINED_FUNCTION_34_0();
  v95 = v11;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA58A8, &qword_1DD0F30B8);
  OUTLINED_FUNCTION_9();
  v90 = v12;
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v13, v14);
  OUTLINED_FUNCTION_34_0();
  v92 = v15;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA58B0, &qword_1DD0F30C0);
  OUTLINED_FUNCTION_9();
  v89 = v16;
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v17, v18);
  OUTLINED_FUNCTION_34_0();
  v93 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA58B8, &qword_1DD0F30C8);
  OUTLINED_FUNCTION_9();
  v82 = v21;
  v83 = v20;
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v22, v23);
  v25 = &v77 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA58C0, &qword_1DD0F30D0);
  OUTLINED_FUNCTION_9();
  v81 = v27;
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v28, v29);
  v31 = &v77 - v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA58C8, &unk_1DD0F30D8);
  OUTLINED_FUNCTION_9();
  v33 = v32;
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v34, v35);
  v36 = a1[3];
  v96 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v36);
  sub_1DCD8DFD8();
  v37 = v97;
  sub_1DD0DF23C();
  if (v37)
  {
    goto LABEL_8;
  }

  v78 = v26;
  v79 = v31;
  v80 = v25;
  v38 = v95;
  v97 = v33;
  v39 = sub_1DD0DEF5C();
  sub_1DCB547F8(v39, 0);
  if (v42 == v43 >> 1)
  {
    goto LABEL_7;
  }

  v77 = 0;
  if (v42 >= (v43 >> 1))
  {
    __break(1u);
    return;
  }

  v44 = *(v41 + v42);
  sub_1DCB54800(v42 + 1, v43 >> 1, v40, v41, v42, v43);
  v46 = v45;
  v48 = v47;
  swift_unknownObjectRelease();
  if (v46 != v48 >> 1)
  {
LABEL_7:
    sub_1DD0DECAC();
    swift_allocError();
    v54 = v53;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA43D8, &qword_1DD0F0640);
    *v54 = &type metadata for If.State;
    sub_1DD0DEECC();
    sub_1DD0DEC8C();
    OUTLINED_FUNCTION_112();
    (*(v55 + 104))(v54);
    swift_willThrow();
    swift_unknownObjectRelease();
    v56 = OUTLINED_FUNCTION_1_64();
    v57(v56);
LABEL_8:
    __swift_destroy_boxed_opaque_existential_1Tm(v96);
    return;
  }

  switch(v44)
  {
    case 1:
      v99 = 1;
      sub_1DCD8E17C();
      OUTLINED_FUNCTION_2_56(&type metadata for If.State.RunIfBodyCodingKeys, &v99);
      swift_unknownObjectRelease();
      v61 = OUTLINED_FUNCTION_17_23();
      v62(v61);
      v63 = OUTLINED_FUNCTION_1_64();
      v64(v63);
      goto LABEL_14;
    case 2:
      v100 = 2;
      sub_1DCD8E128();
      OUTLINED_FUNCTION_2_56(&type metadata for If.State.CheckElseIfCodingKeys, &v100);
      sub_1DD0DEF3C();
      v60 = v96;
      swift_unknownObjectRelease();
      v69 = OUTLINED_FUNCTION_16_28();
      v70(v69);
      v71 = OUTLINED_FUNCTION_8_42();
      v72(v71);
      goto LABEL_15;
    case 3:
      v101 = 3;
      sub_1DCD8E0D4();
      OUTLINED_FUNCTION_2_56(&type metadata for If.State.RunElseIfBodyCodingKeys, &v101);
      sub_1DD0DEF3C();
      v60 = v96;
      swift_unknownObjectRelease();
      v73 = OUTLINED_FUNCTION_14_37();
      v74(v73);
      v75 = OUTLINED_FUNCTION_8_42();
      v76(v75);
      goto LABEL_15;
    case 4:
      v102 = 4;
      sub_1DCD8E080();
      OUTLINED_FUNCTION_2_56(&type metadata for If.State.RunElseBodyCodingKeys, &v102);
      swift_unknownObjectRelease();
      (*(v86 + 8))(v38, v85);
      v58 = OUTLINED_FUNCTION_1_64();
      v59(v58);
      goto LABEL_14;
    case 5:
      v103 = 5;
      sub_1DCD8E02C();
      OUTLINED_FUNCTION_2_56(&type metadata for If.State.DoneCodingKeys, &v103);
      swift_unknownObjectRelease();
      v65 = OUTLINED_FUNCTION_17_23();
      v66(v65);
      v67 = OUTLINED_FUNCTION_1_64();
      v68(v67);
      goto LABEL_14;
    default:
      v98 = 0;
      sub_1DCD8E1D0();
      OUTLINED_FUNCTION_2_56(&type metadata for If.State.CheckIfCodingKeys, &v98);
      swift_unknownObjectRelease();
      v49 = OUTLINED_FUNCTION_17_23();
      v50(v49, v78);
      v51 = OUTLINED_FUNCTION_1_64();
      v52(v51);
LABEL_14:
      v60 = v96;
LABEL_15:
      __swift_destroy_boxed_opaque_existential_1Tm(v60);
      break;
  }
}

uint64_t sub_1DCD8D588(uint64_t a1)
{
  v2 = sub_1DCD8E128();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DCD8D5C4(uint64_t a1)
{
  v2 = sub_1DCD8E128();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DCD8D600(uint64_t a1)
{
  v2 = sub_1DCD8E1D0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DCD8D63C(uint64_t a1)
{
  v2 = sub_1DCD8E1D0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DCD8D680@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DCD8C4DC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DCD8D6A8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DCD8C6DC();
  *a1 = result;
  return result;
}

uint64_t sub_1DCD8D6D0(uint64_t a1)
{
  v2 = sub_1DCD8DFD8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DCD8D70C(uint64_t a1)
{
  v2 = sub_1DCD8DFD8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DCD8D748(uint64_t a1)
{
  v2 = sub_1DCD8E02C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DCD8D784(uint64_t a1)
{
  v2 = sub_1DCD8E02C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DCD8D7C0(uint64_t a1)
{
  v2 = sub_1DCD8E080();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DCD8D7FC(uint64_t a1)
{
  v2 = sub_1DCD8E080();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DCD8D838(uint64_t a1)
{
  v2 = sub_1DCD8E0D4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DCD8D874(uint64_t a1)
{
  v2 = sub_1DCD8E0D4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DCD8D8B0(uint64_t a1)
{
  v2 = sub_1DCD8E17C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DCD8D8EC(uint64_t a1)
{
  v2 = sub_1DCD8E17C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1DCD8D928(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1DCD8CD44(a1);
  if (!v2)
  {
    *a2 = v4;
    *(a2 + 8) = v5;
  }
}

void *If.deinit()
{
  sub_1DCD8DC00(v0 + 2);

  sub_1DCB370A4(v0[10], v0[11]);
  return v0;
}

uint64_t If.__deallocating_deinit()
{
  If.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1DCD8DA00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(*v4 + 88);
  v6 = *(*v4 + 80);
  v7 = type metadata accessor for Conclude(0, v6, a3, a4);
  v8 = OUTLINED_FUNCTION_13_37(v7, &protocol witness table for Conclude<A>);
  type metadata accessor for ConcludeWithValueFlow(0, v6, v9, v10);
  swift_getWitnessTable();
  return ActingFlow.conclude(with:)(v4 + v5, v8);
}

uint64_t sub_1DCD8DABC()
{
  OUTLINED_FUNCTION_112();
  (*(v1 + 8))(v0 + v2);
  return v0;
}

uint64_t sub_1DCD8DB28()
{
  sub_1DCD8DABC();

  return swift_deallocClassInstance();
}

uint64_t sub_1DCD8DD28(uint64_t a1)
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

uint64_t getEnumTagSinglePayload for If.State(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 9))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 <= 2)
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

uint64_t storeEnumTagSinglePayload for If.State(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
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

uint64_t sub_1DCD8DE58(uint64_t a1)
{
  if (*(a1 + 8) <= 1u)
  {
    return *(a1 + 8);
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_1DCD8DE70(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t destroy for If.ConditionBodyPair(void *a1)
{
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

void initializeWithCopy for If.ConditionBodyPair(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  *(a1 + 24) = v4;
  (**(v4 - 8))();
  v5 = *(a2 + 48);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = v5;
  sub_1DD0DCF8C();
}

void assignWithCopy for If.ConditionBodyPair(void *a1, void *a2)
{
  __swift_assign_boxed_opaque_existential_1(a1, a2);
  v4 = a2[6];
  a1[5] = a2[5];
  a1[6] = v4;
  sub_1DD0DCF8C();
}

uint64_t assignWithTake for If.ConditionBodyPair(uint64_t a1, uint64_t a2)
{
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);

  return a1;
}

unint64_t sub_1DCD8DFD8()
{
  result = qword_1ECCA58D0;
  if (!qword_1ECCA58D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA58D0);
  }

  return result;
}

unint64_t sub_1DCD8E02C()
{
  result = qword_1ECCA58D8;
  if (!qword_1ECCA58D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA58D8);
  }

  return result;
}

unint64_t sub_1DCD8E080()
{
  result = qword_1ECCA58E0;
  if (!qword_1ECCA58E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA58E0);
  }

  return result;
}

unint64_t sub_1DCD8E0D4()
{
  result = qword_1ECCA58E8;
  if (!qword_1ECCA58E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA58E8);
  }

  return result;
}

unint64_t sub_1DCD8E128()
{
  result = qword_1ECCA58F0;
  if (!qword_1ECCA58F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA58F0);
  }

  return result;
}

unint64_t sub_1DCD8E17C()
{
  result = qword_1ECCA58F8;
  if (!qword_1ECCA58F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA58F8);
  }

  return result;
}

unint64_t sub_1DCD8E1D0()
{
  result = qword_1ECCA5900;
  if (!qword_1ECCA5900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA5900);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for If.State.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1DCD8E330(_BYTE *result, int a2, int a3)
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

unint64_t sub_1DCD8E400()
{
  result = qword_1ECCA5948;
  if (!qword_1ECCA5948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA5948);
  }

  return result;
}

unint64_t sub_1DCD8E458()
{
  result = qword_1ECCA5950;
  if (!qword_1ECCA5950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA5950);
  }

  return result;
}

unint64_t sub_1DCD8E4B0()
{
  result = qword_1ECCA5958;
  if (!qword_1ECCA5958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA5958);
  }

  return result;
}

unint64_t sub_1DCD8E508()
{
  result = qword_1ECCA5960;
  if (!qword_1ECCA5960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA5960);
  }

  return result;
}

unint64_t sub_1DCD8E560()
{
  result = qword_1ECCA5968;
  if (!qword_1ECCA5968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA5968);
  }

  return result;
}

unint64_t sub_1DCD8E5B8()
{
  result = qword_1ECCA5970;
  if (!qword_1ECCA5970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA5970);
  }

  return result;
}

unint64_t sub_1DCD8E610()
{
  result = qword_1ECCA5978;
  if (!qword_1ECCA5978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA5978);
  }

  return result;
}

unint64_t sub_1DCD8E668()
{
  result = qword_1ECCA5980;
  if (!qword_1ECCA5980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA5980);
  }

  return result;
}

unint64_t sub_1DCD8E6C0()
{
  result = qword_1ECCA5988;
  if (!qword_1ECCA5988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA5988);
  }

  return result;
}

unint64_t sub_1DCD8E718()
{
  result = qword_1ECCA5990;
  if (!qword_1ECCA5990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA5990);
  }

  return result;
}

unint64_t sub_1DCD8E770()
{
  result = qword_1ECCA5998;
  if (!qword_1ECCA5998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA5998);
  }

  return result;
}

unint64_t sub_1DCD8E7C8()
{
  result = qword_1ECCA59A0;
  if (!qword_1ECCA59A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA59A0);
  }

  return result;
}

unint64_t sub_1DCD8E820()
{
  result = qword_1ECCA59A8;
  if (!qword_1ECCA59A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA59A8);
  }

  return result;
}

unint64_t sub_1DCD8E878()
{
  result = qword_1ECCA59B0;
  if (!qword_1ECCA59B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA59B0);
  }

  return result;
}

unint64_t sub_1DCD8E8D0()
{
  result = qword_1ECCA59B8;
  if (!qword_1ECCA59B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA59B8);
  }

  return result;
}

unint64_t sub_1DCD8E928()
{
  result = qword_1ECCA59C0;
  if (!qword_1ECCA59C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA59C0);
  }

  return result;
}

unint64_t sub_1DCD8E980()
{
  result = qword_1ECCA59C8;
  if (!qword_1ECCA59C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA59C8);
  }

  return result;
}

uint64_t IFClientActionParse.clientAction.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1DD0DD08C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t IFClientActionParse.init(clientAction:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1DD0DD08C();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t sub_1DCD8EAB4(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6341746E65696C63 && a2 == 0xEC0000006E6F6974)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1DD0DF0AC();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1DCD8EB54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DCD8EAB4(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1DCD8EB80(uint64_t a1)
{
  v2 = sub_1DCD8ED50();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DCD8EBBC(uint64_t a1)
{
  v2 = sub_1DCD8ED50();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t IFClientActionParse.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA59D0, &qword_1DD0F3770);
  OUTLINED_FUNCTION_9();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DCD8ED50();
  sub_1DD0DF24C();
  sub_1DD0DD08C();
  sub_1DCD8EFF8(&qword_1ECCA59E0, MEMORY[0x1E69A8E18]);
  sub_1DD0DEFFC();
  return (*(v4 + 8))(v8, v2);
}

unint64_t sub_1DCD8ED50()
{
  result = qword_1ECCA59D8;
  if (!qword_1ECCA59D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA59D8);
  }

  return result;
}

uint64_t IFClientActionParse.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v3 = sub_1DD0DD08C();
  OUTLINED_FUNCTION_9();
  v24 = v4;
  MEMORY[0x1EEE9AC00](v5, v6);
  v25 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA59E8, &qword_1DD0F3778);
  OUTLINED_FUNCTION_9();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v22 - v13;
  v15 = type metadata accessor for IFClientActionParse(0);
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v18 = &v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DCD8ED50();
  v19 = v26;
  sub_1DD0DF23C();
  if (!v19)
  {
    v20 = v24;
    sub_1DCD8EFF8(&qword_1ECCA59F0, MEMORY[0x1E69A8E20]);
    sub_1DD0DEF4C();
    (*(v10 + 8))(v14, v8);
    (*(v20 + 32))(v18, v25, v3);
    sub_1DCD8F03C(v18, v23);
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t sub_1DCD8EFF8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_1DD0DD08C();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1DCD8F03C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IFClientActionParse(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t initializeBufferWithCopyOfBuffer for IFClientActionParse(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DD0DD08C();
  v5 = **(v4 - 8);

  return v5(a1, a2, v4);
}

uint64_t destroy for IFClientActionParse(uint64_t a1)
{
  v2 = sub_1DD0DD08C();
  v3 = *(*(v2 - 8) + 8);

  return v3(a1, v2);
}

uint64_t initializeWithCopy for IFClientActionParse(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DD0DD08C();
  (*(*(v4 - 8) + 16))(a1, a2, v4);
  return a1;
}

uint64_t assignWithCopy for IFClientActionParse(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DD0DD08C();
  (*(*(v4 - 8) + 24))(a1, a2, v4);
  return a1;
}

uint64_t initializeWithTake for IFClientActionParse(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DD0DD08C();
  (*(*(v4 - 8) + 32))(a1, a2, v4);
  return a1;
}

uint64_t assignWithTake for IFClientActionParse(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DD0DD08C();
  (*(*(v4 - 8) + 40))(a1, a2, v4);
  return a1;
}

uint64_t sub_1DCD8F35C(uint64_t a1)
{
  result = sub_1DD0DD08C();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for IFClientActionParse.CodingKeys(_BYTE *result, int a2, int a3)
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

unint64_t sub_1DCD8F498()
{
  result = qword_1ECCA59F8;
  if (!qword_1ECCA59F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA59F8);
  }

  return result;
}

unint64_t sub_1DCD8F4F0()
{
  result = qword_1ECCA5A00;
  if (!qword_1ECCA5A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA5A00);
  }

  return result;
}

unint64_t sub_1DCD8F548()
{
  result = qword_1ECCA5A08;
  if (!qword_1ECCA5A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA5A08);
  }

  return result;
}

uint64_t ImmediateContinuationFlow.__allocating_init(flowProducer:)(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  return result;
}

uint64_t ImmediateContinuationFlow.init(flowProducer:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

uint64_t sub_1DCD8F5E8(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1DCD8F608, 0, 0);
}

void sub_1DCD8F608()
{
  OUTLINED_FUNCTION_42();
  (*(*(v0 + 24) + 16))();
  static ExecuteResponse.complete(next:)();
}

uint64_t ImmediateContinuationFlow.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1DCD8F700()
{
  OUTLINED_FUNCTION_42();
  v2 = v1;
  v3 = swift_task_alloc();
  *(v0 + 16) = v3;
  *v3 = v0;
  v3[1] = sub_1DCBFA404;

  return sub_1DCD8F5E8(v2);
}

uint64_t dispatch thunk of ImmediateContinuationFlow.execute()(uint64_t a1)
{
  v6 = (*(*v1 + 112) + **(*v1 + 112));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1DCBFA404;

  return v6(a1);
}

uint64_t Inform.__allocating_init(_:)(__int128 *a1)
{
  v2 = swift_allocObject();
  Inform.init(_:)(a1);
  return v2;
}

uint64_t sub_1DCD8F9D0()
{
  OUTLINED_FUNCTION_39();
  v2 = v1;
  v7 = (v3 + *v3);
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v0 + 16) = v4;
  *v4 = v5;
  v4[1] = sub_1DCB4AD3C;

  return v7(v2);
}

uint64_t sub_1DCD8FAC0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DCB4AE1C;

  return sub_1DCD8F9D0();
}

uint64_t Inform.Status.hashValue.getter()
{
  v1 = *v0;
  sub_1DD0DF1DC();
  MEMORY[0x1E12A7840](v1);
  return sub_1DD0DF20C();
}

uint64_t sub_1DCD8FC04(uint64_t a1, uint64_t a2)
{
  *(v2 + 64) = 255;
  *(v2 + 40) = &type metadata for ClosureOutputGenerator;
  *(v2 + 48) = &off_1F5860950;
  *(v2 + 56) = 0;
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

uint64_t Inform.init(_:)(__int128 *a1)
{
  *(v1 + 56) = 0;
  *(v1 + 64) = 255;
  sub_1DCAFF9E8(a1, v1 + 16);
  return v1;
}

uint64_t Inform.action.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA5A10, &unk_1DD0F39A0);
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = v35 - v5;
  v7 = *(v1 + 64);
  if (v7 == 255)
  {
    sub_1DCBD0994();
    v33 = swift_allocError();
    *v34 = 0xD000000000000020;
    v34[1] = 0x80000001DD11CC90;
    a1[3] = type metadata accessor for Abort(0);
    a1[4] = &protocol witness table for Abort;
    *__swift_allocate_boxed_opaque_existential_1Tm(a1) = v33;
    type metadata accessor for FlowActionType(0);

    return swift_storeEnumTagMultiPayload();
  }

  else
  {
    v8 = *(v1 + 56);
    if (v7 & 1) == 0 && *(v1 + 65) && (v8)
    {
      v39 = 0;
      v37 = 0u;
      v38 = 0u;
      v9 = &v6[v3[7]];
      *v9 = v8;
      v9[8] = 0;
      v10 = v3[8];
      sub_1DCBD0C2C(&v37, &v6[v10]);
      v6[v3[9]] = 0;
      v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA5A18, &unk_1DD0F39B0);
      *(v6 + 3) = v11;
      v12 = *v9;
      v13 = v9[8];
      *v6 = *v9;
      v6[8] = v13;
      v14 = OUTLINED_FUNCTION_90_0();
      sub_1DCD90038(v14, v15);
      sub_1DCB8D4CC(v12, v13);
      sub_1DCB16D50(&v37, &qword_1ECCA1D20, &qword_1DD0F0330);
      sub_1DCBD0C2C(&v6[v10], (v6 + 32));
      v6[72] = 0;
      type metadata accessor for FlowActionType(0);
      swift_storeEnumTagMultiPayload();
      v16 = *v9;
      LOBYTE(v9) = v9[8];
      sub_1DCBD0C2C(&v6[v10], v35);
      *(&v38 + 1) = v3;
      v39 = &protocol witness table for Conclude<A>;
      boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(&v37);
      v18 = boxed_opaque_existential_1Tm + v3[7];
      *v18 = v16;
      v18[8] = v9;
      v19 = v3[8];
      sub_1DCBD0C2C(v35, boxed_opaque_existential_1Tm + v19);
      *(boxed_opaque_existential_1Tm + v3[9]) = 1;
      boxed_opaque_existential_1Tm[3] = v11;
      v20 = *v18;
      v21 = v18[8];
      *boxed_opaque_existential_1Tm = *v18;
      *(boxed_opaque_existential_1Tm + 8) = v21;
      sub_1DCB8D4CC(v16, v9);
      sub_1DCB8D4CC(v20, v21);
      sub_1DCB16D50(v35, &qword_1ECCA1D20, &qword_1DD0F0330);
      sub_1DCBD0C2C(boxed_opaque_existential_1Tm + v19, (boxed_opaque_existential_1Tm + 4));
      *(boxed_opaque_existential_1Tm + 72) = 1;
      swift_storeEnumTagMultiPayload();
      sub_1DCB16D50(v6, &qword_1ECCA5A10, &unk_1DD0F39A0);
    }

    else
    {
      v36 = 0;
      memset(v35, 0, sizeof(v35));
      *(&v38 + 1) = v3;
      v39 = &protocol witness table for Conclude<A>;
      v22 = __swift_allocate_boxed_opaque_existential_1Tm(&v37);
      v23 = v22 + v3[7];
      *v23 = v8;
      v23[8] = v7 & 1;
      v24 = v3[8];
      sub_1DCBD0C2C(v35, v22 + v24);
      *(v22 + v3[9]) = 0;
      v22[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA5A18, &unk_1DD0F39B0);
      v25 = *v23;
      LOBYTE(v23) = v23[8];
      *v22 = v25;
      *(v22 + 8) = v23;
      v26 = OUTLINED_FUNCTION_90_0();
      sub_1DCD90038(v26, v27);
      v28 = OUTLINED_FUNCTION_90_0();
      sub_1DCD90038(v28, v29);
      sub_1DCB8D4CC(v25, v23);
      sub_1DCB16D50(v35, &qword_1ECCA1D20, &qword_1DD0F0330);
      sub_1DCBD0C2C(v22 + v24, (v22 + 4));
      *(v22 + 72) = 0;
      type metadata accessor for FlowActionType(0);
      swift_storeEnumTagMultiPayload();
      v30 = OUTLINED_FUNCTION_90_0();
      sub_1DCD90050(v30, v31);
    }

    return sub_1DCAFF9E8(&v37, a1);
  }
}

id sub_1DCD90038(id result, char a2)
{
  if (a2 != -1)
  {
    return sub_1DCB8D4CC(result, a2 & 1);
  }

  return result;
}

void sub_1DCD90050(void *a1, char a2)
{
  if (a2 != -1)
  {
    sub_1DCCA3874(a1, a2 & 1);
  }
}

uint64_t Inform.deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  sub_1DCD90050(*(v0 + 56), *(v0 + 64));
  return v0;
}

uint64_t Inform.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  sub_1DCD90050(*(v0 + 56), *(v0 + 64));

  return swift_deallocClassInstance();
}

void Inform.onSuccess(_:)(uint64_t a1, uint64_t a2)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA3020, &qword_1DD0E90D0);
  swift_allocObject();
  sub_1DD0DCF8C();
}

void ActingFlow<>.onSuccess(_:)(uint64_t a1, uint64_t a2)
{
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  sub_1DD0DCF8C();
}

uint64_t Inform.execute(with:)(uint64_t a1)
{
  *(v2 + 152) = a1;
  *(v2 + 160) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1DCD902E0, 0, 0);
}

uint64_t sub_1DCD902E0()
{
  v1 = *(v0 + 160);
  sub_1DCB17CA0(*(v0 + 152), v0 + 16);
  v2 = *(v0 + 40);
  *(v0 + 168) = v2;
  *(v0 + 184) = __swift_project_boxed_opaque_existential_1((v0 + 16), v2);
  v3 = v1[5];
  v4 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v3);
  v8 = (*(v4 + 8) + **(v4 + 8));
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v0 + 192) = v5;
  *v5 = v6;
  v5[1] = sub_1DCD9042C;

  return v8(v0 + 56, v3, v4);
}

uint64_t sub_1DCD9042C()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_27();
  *v5 = v4;
  v3[25] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1DCD90780, 0, 0);
  }

  else
  {
    OUTLINED_FUNCTION_9_39(v3[22]);
    v12 = (v6 + *v6);
    swift_task_alloc();
    OUTLINED_FUNCTION_45();
    v3[26] = v7;
    *v7 = v8;
    v7[1] = sub_1DCD90604;
    v9 = v3[22];
    v10 = v3[21];

    return (v12)(v3 + 7, v10, v9);
  }
}

uint64_t sub_1DCD90604()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_27();
  *v5 = v4;
  *(v3 + 216) = v0;

  __swift_destroy_boxed_opaque_existential_1Tm((v3 + 56));
  if (v0)
  {
    v6 = sub_1DCD908B0;
  }

  else
  {
    v6 = sub_1DCD90710;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1DCD90710()
{
  OUTLINED_FUNCTION_42();
  v1 = *(v0 + 160);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  v2 = *(v1 + 56);
  *(v1 + 56) = 0;
  v3 = *(v1 + 64);
  *(v1 + 64) = 0;
  sub_1DCD90050(v2, v3);
  OUTLINED_FUNCTION_29();

  return v4();
}

uint64_t sub_1DCD90780()
{
  OUTLINED_FUNCTION_39();
  v1 = *(v0 + 200);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  *(v0 + 112) = v1;
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA33E0, &unk_1DD0E1650);
  if (OUTLINED_FUNCTION_11_39(v3, v4, v5, &type metadata for BargeInError))
  {
    OUTLINED_FUNCTION_13_38();

    OUTLINED_FUNCTION_0_56();
    v6 = *(v0 + 112);
LABEL_3:

    goto LABEL_10;
  }

  *(v0 + 128) = v1;
  v7 = v1;
  if (OUTLINED_FUNCTION_10_39(v7, v8, v9, &type metadata for SubmitCommandError))
  {
    v11 = *(v0 + 96);
    v12 = *(v0 + 104);
    if (*(v0 + 104))
    {
      sub_1DCB6DE90(v11, v12);
    }

    else
    {
      *(v0 + 136) = v11;
      if (OUTLINED_FUNCTION_12_36(v11, v12, v10, &type metadata for BargeInError))
      {
        OUTLINED_FUNCTION_13_38();

        OUTLINED_FUNCTION_0_56();
        v6 = *(v0 + 128);
        goto LABEL_3;
      }
    }
  }

  OUTLINED_FUNCTION_5_52();
LABEL_10:
  OUTLINED_FUNCTION_29();

  return v13();
}

uint64_t sub_1DCD908B0()
{
  OUTLINED_FUNCTION_39();
  v1 = *(v0 + 216);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  *(v0 + 112) = v1;
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA33E0, &unk_1DD0E1650);
  if (OUTLINED_FUNCTION_11_39(v3, v4, v5, &type metadata for BargeInError))
  {
    OUTLINED_FUNCTION_13_38();

    OUTLINED_FUNCTION_0_56();
    v6 = *(v0 + 112);
LABEL_3:

    goto LABEL_10;
  }

  *(v0 + 128) = v1;
  v7 = v1;
  if (OUTLINED_FUNCTION_10_39(v7, v8, v9, &type metadata for SubmitCommandError))
  {
    v11 = *(v0 + 96);
    v12 = *(v0 + 104);
    if (*(v0 + 104))
    {
      sub_1DCB6DE90(v11, v12);
    }

    else
    {
      *(v0 + 136) = v11;
      if (OUTLINED_FUNCTION_12_36(v11, v12, v10, &type metadata for BargeInError))
      {
        OUTLINED_FUNCTION_13_38();

        OUTLINED_FUNCTION_0_56();
        v6 = *(v0 + 128);
        goto LABEL_3;
      }
    }
  }

  OUTLINED_FUNCTION_5_52();
LABEL_10:
  OUTLINED_FUNCTION_29();

  return v13();
}

void Inform.cancel(error:)(void *a1)
{
  v2 = a1;
  v3 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA33E0, &unk_1DD0E1650);
  if (swift_dynamicCast())
  {

    v4 = *(v1 + 56);
    v5 = *(v1 + 64);
    if (v5 == 255)
    {
      v6 = 1;
    }

    else
    {
      v6 = *(v1 + 56);
    }

    *(v1 + 56) = v6;
    *(v1 + 64) = (v5 != 255) & v5;
    sub_1DCD90038(v4, v5);
    v7 = v4;
    v8 = v5;
  }

  else
  {
    v9 = *(v1 + 56);
    v10 = *(v1 + 64);
    if (v10 == 255)
    {
      v14 = v2;
      v12 = *(v1 + 56);
      v11 = *(v1 + 64);
      v13 = 1;
    }

    else
    {
      v11 = *(v1 + 64);
      v12 = *(v1 + 56);
      v2 = v12;
      v13 = v11;
    }

    *(v1 + 56) = v2;
    *(v1 + 64) = v13 & 1;
    sub_1DCD90038(v9, v10);
    v7 = v12;
    v8 = v11;
  }

  sub_1DCD90050(v7, v8);
}

uint64_t sub_1DCD90B08(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DCB4AD3C;

  return Inform.execute(with:)(a1);
}

unint64_t sub_1DCD90BC8()
{
  result = qword_1ECCA5A20[0];
  if (!qword_1ECCA5A20[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECCA5A20);
  }

  return result;
}

uint64_t dispatch thunk of OutputGenerator.generate()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_9_39(a3);
  v11 = (v7 + *v7);
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v3 + 16) = v8;
  *v8 = v9;
  v8[1] = sub_1DCB4AD3C;

  return v11(a1, a2, a3);
}

_BYTE *storeEnumTagSinglePayload for Inform.Status(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1DCD90E64()
{
  result = qword_1ECCA3028[0];
  if (!qword_1ECCA3028[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCA3020, &qword_1DD0E90D0);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECCA3028);
  }

  return result;
}

void ReactiveFlowPlan.inform(flowProducer:)()
{
  OUTLINED_FUNCTION_1_65();
  v4 = swift_allocObject();
  v4[2] = v1;
  v4[3] = v0;
  v4[4] = v3;
  v4[5] = v2;
  swift_getAssociatedTypeWitness();
  v5 = OUTLINED_FUNCTION_3_64();
  ReactiveFlowPlan.push<A>(flowProducer:)(v5, v6, v7, v9, v8, v0);
}

uint64_t sub_1DCD90F8C@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t)@<X1>, uint64_t *a5@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCA33E0, &unk_1DD0E1650);
  v9 = sub_1DD0DF22C();
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v19 - v11;
  v13 = a2(a1);
  v16 = type metadata accessor for WrappingFlow(0, v9, v14, v15);
  v21 = type metadata accessor for Inform();
  v22 = &protocol witness table for Inform;
  *&v20 = v13;
  (*(*(AssociatedTypeWitness - 8) + 16))(v12, a1, AssociatedTypeWitness);
  swift_storeEnumTagMultiPayload();
  v17 = sub_1DCD91134(&v20, v12);
  a5[3] = v16;
  result = swift_getWitnessTable();
  a5[4] = result;
  *a5 = v17;
  return result;
}

void ReactiveFlowPlan.informOnError(outputGenerator:)()
{
  OUTLINED_FUNCTION_1_65();
  v2 = swift_allocObject();
  *(v2 + 16) = v1;
  *(v2 + 24) = v0;
  sub_1DD0DCF8C();
}

void sub_1DCD9120C(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = swift_allocObject();
  v8[2] = a2;
  v8[3] = a3;
  v8[4] = a1;
  type metadata accessor for Inform();
  swift_allocObject();
  sub_1DCD8FC04(&unk_1DD0F3BA0, v8);
  a4[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA5B28, &qword_1DD0F3BA8);
  a4[4] = sub_1DCBF7DC0(&qword_1ECCA5B30, &qword_1ECCA5B28, &qword_1DD0F3BA8, &unk_1DD0F63A0);
  swift_allocObject();
  sub_1DD0DCF8C();
}

uint64_t sub_1DCD9134C(uint64_t a1, int *a2, uint64_t a3, uint64_t a4)
{
  v9 = (a2 + *a2);
  v7 = swift_task_alloc();
  *(v4 + 16) = v7;
  *v7 = v4;
  v7[1] = sub_1DCD91454;

  return v9(a1, a4);
}

uint64_t sub_1DCD91454()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1DCD9154C(uint64_t a1)
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

uint64_t sub_1DCD915E8(__int128 *a1)
{
  (*(*(*(*v1 + 80) - 8) + 32))(v1 + *(*v1 + 88));
  sub_1DCAFF9E8(a1, v1 + *(*v1 + 96));
  return v1;
}

uint64_t sub_1DCD91684@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = v3;
  v6 = *(*v3 + 80);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v9 = v22 - v8 + 72;
  v11 = *(v10 + 96);
  swift_beginAccess();
  v14 = type metadata accessor for WrappingFlow.State(0, v6, v12, v13);
  (*(*(v14 - 8) + 16))(&v23, v4 + v11, v14);
  if (v24)
  {
    sub_1DCAFF9E8(&v23, v22);
    __swift_project_boxed_opaque_existential_1(v22, v22[3]);
    sub_1DD0DCF8C();
  }

  (*(v7 + 16))(v9, v4 + *(*v4 + 88), v6);
  a3[3] = type metadata accessor for Conclude(0, v6, v15, v16);
  a3[4] = &protocol witness table for Conclude<A>;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(a3);
  type metadata accessor for WrappingFlow(0, v6, v18, v19);
  swift_getWitnessTable();
  ActingFlow.conclude(with:)(v9, boxed_opaque_existential_1Tm);
  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_1DCD9192C(uint64_t a1, char *a2)
{
  v3 = *a2;
  v10 = 0;
  memset(v9, 0, sizeof(v9));
  v4 = *(v3 + 96);
  swift_beginAccess();
  v7 = type metadata accessor for WrappingFlow.State(0, *(v3 + 80), v5, v6);
  (*(*(v7 - 8) + 40))(&a2[v4], v9, v7);
  return swift_endAccess();
}

uint64_t sub_1DCD919EC()
{
  v1 = *(*v0 + 80);
  (*(*(v1 - 8) + 8))(v0 + *(*v0 + 88), v1);
  v2 = *(*v0 + 96);
  v5 = type metadata accessor for WrappingFlow.State(0, v1, v3, v4);
  (*(*(v5 - 8) + 8))(v0 + v2, v5);
  return v0;
}

uint64_t sub_1DCD91AC0()
{
  sub_1DCD919EC();

  return swift_deallocClassInstance();
}

uint64_t sub_1DCD91B2C(uint64_t a1, unsigned int a2)
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

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1DCD91B7C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
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

uint64_t sub_1DCD91C1C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1DCB193FC;

  return sub_1DCD9134C(a1, v4, v5, v6);
}

void sub_1DCD91CD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 72) = 1;
  *(v3 + 56) = type metadata accessor for Inform();
  *(v3 + 64) = &protocol witness table for Inform;
  *(v3 + 32) = a1;
  v5[0] = 0;
  v5[1] = 0xE000000000000000;
  sub_1DD0DCF8C();
}

uint64_t sub_1DCD91EF0(uint64_t a1, char a2, uint64_t a3, void (*a4)(uint64_t *))
{
  v6 = a1;
  v7 = a2 & 1;
  a4(&v6);
  result = swift_beginAccess();
  *(a3 + 72) = 0;
  return result;
}

unint64_t sub_1DCD91F74()
{
  sub_1DCD937B4([v0 _intentInstanceDescription]);
  v1 = MEMORY[0x1E69E7CC0];

  v17 = sub_1DCD70310(v2);
  sub_1DCD92CC8(&v17);

  v3 = v17;
  v4 = sub_1DCB08B14(v17);
  if (v4)
  {
    v5 = v4;
    v17 = v1;
    sub_1DD0DED0C();
    if ((v5 & 0x8000000000000000) == 0)
    {
      v6 = 0;
      v7 = MEMORY[0x1E69E7CC0];
      while (1)
      {
        v8 = (v6 + 1);
        if (__OFADD__(v6, 1))
        {
          break;
        }

        if ((v3 & 0xC000000000000001) != 0)
        {
          v9 = MEMORY[0x1E12A72C0](v6, v3);
        }

        else
        {
          if (v6 >= *(v3 + 16))
          {
            goto LABEL_15;
          }

          v9 = *(v3 + 8 * v6 + 32);
        }

        v10 = v9;
        v11 = sub_1DCF4B96C(v9);
        if (!v12)
        {
          goto LABEL_17;
        }

        v13 = v11;
        v14 = v12;
        v15 = [v10 resolveSelector];

        type metadata accessor for SiriKitParameterMetadata();
        swift_allocObject();
        SiriKitParameterMetadata.init(parameterName:shouldResolve:confirmationStates:)(v13, v14, v15 != 0, v7);
        sub_1DD0DECDC();
        sub_1DD0DED1C();
        sub_1DD0DED2C();
        sub_1DD0DECEC();
        ++v6;
        if (v8 == v5)
        {

          return v17;
        }
      }

      __break(1u);
LABEL_15:
      __break(1u);
    }

    __break(1u);
LABEL_17:
    __break(1u);

    __break(1u);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return result;
}

uint64_t sub_1DCD92184()
{
  result = sub_1DCD921A8();
  byte_1EDE489F8 = result & 1;
  return result;
}

uint64_t sub_1DCD921A8()
{
  v0 = [objc_opt_self() sharedPreferences];
  v1 = sub_1DCB1A7C0(v0);
  if (v2)
  {
    v3 = v1;
    v4 = v2;
    v5 = [objc_opt_self() sharedPreferences];
    if (v5)
    {
      v6 = v5;
      sub_1DCF4B534(v3, v4, v5);
    }

    else
    {
    }
  }

  else
  {
    if (qword_1EDE4F900 != -1)
    {
      swift_once();
    }

    v7 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v7, qword_1EDE57E00);
    v8 = sub_1DD0DD8EC();
    v9 = sub_1DD0DE6EC();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_1DCAFC000, v8, v9, "Unable to determine current Siri locale. Exceptions may be thrown when trying to convert intents to JSON if this process lacks proper entitlements.", v10, 2u);
      MEMORY[0x1E12A8390](v10, -1, -1);
    }
  }

  return 1;
}

Swift::String __swiftcall INIntent.jsonRepresentation()()
{
  v63 = *MEMORY[0x1E69E9840];
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA7470, &qword_1DD0E16E0);
  v3 = MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v60[0] = v60 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v3, v5);
  v8 = v60 - v7;
  v10 = MEMORY[0x1EEE9AC00](v6, v9);
  v12 = v60 - v11;
  MEMORY[0x1EEE9AC00](v10, v13);
  v15 = v60 - v14;
  v16 = sub_1DD0DE01C();
  MEMORY[0x1EEE9AC00](v16 - 8, v17);
  OUTLINED_FUNCTION_16();
  if (qword_1EDE489F0 != -1)
  {
    OUTLINED_FUNCTION_1_66(&qword_1EDE489F0);
  }

  v18 = objc_opt_self();
  v19 = [v0 _JSONDictionaryRepresentation];
  v20 = MEMORY[0x1E69E6158];
  sub_1DD0DDE6C();

  v21 = sub_1DD0DDE4C();

  v61 = 0;
  v22 = [v18 dataWithJSONObject:v21 options:0 error:&v61];

  v23 = v61;
  if (!v22)
  {
    v33 = v23;
    v34 = sub_1DD0DAE0C();

    swift_willThrow();
    if (qword_1EDE4F908 != -1)
    {
      OUTLINED_FUNCTION_2_8();
      swift_once();
    }

    v35 = qword_1EDE57E18;
    v36 = sub_1DD0DE6EC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA25F0, &unk_1DD0E3370);
    v37 = swift_allocObject();
    *(v37 + 16) = xmmword_1DD0E07C0;
    v61 = 0;
    v62 = 0xE000000000000000;
    v60[1] = v34;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA33E0, &unk_1DD0E1650);
    sub_1DD0DEDBC();
    v38 = v61;
    v39 = v62;
    *(v37 + 56) = v20;
    *(v37 + 64) = sub_1DCB34060();
    *(v37 + 32) = v38;
    *(v37 + 40) = v39;
    sub_1DD0DD7EC("Could not convert dictionary representation to JSON: %@", 55, 2, &dword_1DCAFC000, v35, v36, v37);

    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_1_2();
      swift_once();
    }

    v40 = sub_1DD0DD8FC();
    v41 = __swift_project_value_buffer(v40, qword_1EDE57E00);
    v42 = *(v40 - 8);
    (*(v42 + 16))(v8, v41, v40);
    __swift_storeEnumTagSinglePayload(v8, 0, 1, v40);
    v43 = v60[0];
    sub_1DCBCF6C8(v8, v60[0]);
    if (__swift_getEnumTagSinglePayload(v43, 1, v40) == 1)
    {
      sub_1DCB16D50(v60[0], &unk_1ECCA7470, &qword_1DD0E16E0);
    }

    else
    {
      v47 = sub_1DD0DD8EC();
      v48 = sub_1DD0DE6EC();
      if (os_log_type_enabled(v47, v48))
      {
        v49 = swift_slowAlloc();
        v61 = swift_slowAlloc();
        *v49 = 136315650;
        v50 = sub_1DD0DEC3C();
        v52 = sub_1DCB10E9C(v50, v51, &v61);

        *(v49 + 4) = v52;
        *(v49 + 12) = 2048;
        *(v49 + 14) = 119;
        *(v49 + 22) = 2080;
        *(v49 + 24) = sub_1DCB10E9C(0xD000000000000033, 0x80000001DD11CD80, &v61);
        _os_log_impl(&dword_1DCAFC000, v47, v48, "FatalError at %s:%lu - %s", v49, 0x20u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_80();
        OUTLINED_FUNCTION_80();
      }

      (*(v42 + 8))(v60[0], v40);
    }

    static SiriKitLifecycle._logCrashToEventBus(_:)(0xD000000000000033, 0x80000001DD11CD80);
  }

  v24 = sub_1DD0DAF2C();
  v26 = v25;

  sub_1DD0DE00C();
  v27 = sub_1DD0DDFDC();
  if (!v28)
  {
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_1_2();
      swift_once();
    }

    v44 = sub_1DD0DD8FC();
    v45 = __swift_project_value_buffer(v44, qword_1EDE57E00);
    v46 = *(v44 - 8);
    (*(v46 + 16))(v15, v45, v44);
    __swift_storeEnumTagSinglePayload(v15, 0, 1, v44);
    sub_1DCBCF6C8(v15, v12);
    if (__swift_getEnumTagSinglePayload(v12, 1, v44) == 1)
    {
      sub_1DCB16D50(v12, &unk_1ECCA7470, &qword_1DD0E16E0);
    }

    else
    {
      v53 = sub_1DD0DD8EC();
      v54 = sub_1DD0DE6EC();
      if (os_log_type_enabled(v53, v54))
      {
        v55 = swift_slowAlloc();
        v61 = swift_slowAlloc();
        *v55 = 136315650;
        v56 = sub_1DD0DEC3C();
        v58 = sub_1DCB10E9C(v56, v57, &v61);

        *(v55 + 4) = v58;
        *(v55 + 12) = 2048;
        *(v55 + 14) = 123;
        *(v55 + 22) = 2080;
        *(v55 + 24) = sub_1DCB10E9C(0xD000000000000027, 0x80000001DD11CE40, &v61);
        _os_log_impl(&dword_1DCAFC000, v53, v54, "FatalError at %s:%lu - %s", v55, 0x20u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_80();
        OUTLINED_FUNCTION_80();
      }

      (*(v46 + 8))(v12, v44);
    }

    static SiriKitLifecycle._logCrashToEventBus(_:)(0xD000000000000027, 0x80000001DD11CE40);
  }

  v29 = v27;
  v30 = v28;
  sub_1DCB21A14(v24, v26);
  v31 = v29;
  v32 = v30;
  result._object = v32;
  result._countAndFlagsBits = v31;
  return result;
}

uint64_t INIntent.safeJSONDictionaryRepresentation.getter()
{
  if (qword_1EDE489F0 != -1)
  {
    OUTLINED_FUNCTION_1_66(&qword_1EDE489F0);
  }

  v1 = [v0 _JSONDictionaryRepresentation];
  v2 = sub_1DD0DDE6C();

  return v2;
}

uint64_t INIntentResolutionResult.safeJSONDictionaryRepresentation(for:parameterName:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_1EDE489F0 != -1)
  {
    OUTLINED_FUNCTION_1_66(&qword_1EDE489F0);
  }

  v5 = sub_1DD0DDF8C();
  v6 = [v3 _JSONDictionaryRepresentationForIntent_parameterName_];

  v7 = sub_1DD0DDE6C();
  return v7;
}

uint64_t sub_1DCD92C5C(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v1 = result;
    if (result)
    {
      sub_1DCB10E5C(0, &unk_1EDE46150, 0x1E696E8B0);
      result = sub_1DD0DE38C();
      *((result & 0xFFFFFFFFFFFFFF8) + 0x10) = v1;
    }

    else
    {
      return MEMORY[0x1E69E7CC0];
    }
  }

  return result;
}

uint64_t sub_1DCD92CC8(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_1DCC224E4(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_1DCD92D44(v6);
  return sub_1DD0DECEC();
}

void sub_1DCD92D44(uint64_t *a1)
{
  v3 = a1[1];
  v4 = sub_1DD0DF02C();
  if (v4 < v3)
  {
    v5 = v4;
    v6 = sub_1DCD92C5C(v3 / 2);
    v8[0] = v7;
    v8[1] = (v3 / 2);
    sub_1DCD92F14(v8, v9, a1, v5);
    if (v1)
    {
      if (v3 < -1)
      {
        __break(1u);
        goto LABEL_5;
      }
    }

    else if (v3 < -1)
    {
LABEL_12:
      __break(1u);
      return;
    }

    *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;

    return;
  }

LABEL_5:
  if (v3 < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v3)
  {
    sub_1DCD92E24(0, v3, 1, a1);
  }
}

void sub_1DCD92E24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = *a4;
    v6 = *a4 + 8 * a3 - 8;
    v7 = a1 - a3;
    while (2)
    {
      v8 = *(v5 + 8 * v4);
      v17 = v7;
      v18 = v6;
      do
      {
        v9 = *v6;
        v10 = v8;
        v11 = v9;
        v12 = [v10 tag];
        v13 = [v11 tag];

        if (v12 >= v13)
        {
          break;
        }

        if (!v5)
        {
          __break(1u);
          return;
        }

        v14 = *v6;
        v8 = *(v6 + 8);
        *v6 = v8;
        *(v6 + 8) = v14;
        v6 -= 8;
      }

      while (!__CFADD__(v7++, 1));
      ++v4;
      v6 = v18 + 8;
      v7 = v17 - 1;
      if (v4 != a2)
      {
        continue;
      }

      break;
    }
  }
}

void sub_1DCD92F14(void ***a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_94:
    v111 = *a1;
    if (!*a1)
    {
      goto LABEL_135;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_96:
      v90 = (v8 + 16);
      v91 = *(v8 + 16);
      while (v91 >= 2)
      {
        if (!*a3)
        {
          goto LABEL_132;
        }

        v92 = v8;
        v93 = (v8 + 16 * v91);
        v94 = *v93;
        v95 = &v90[2 * v91];
        v8 = *(v95 + 1);
        sub_1DCD93584((*a3 + 8 * *v93), (*a3 + 8 * *v95), (*a3 + 8 * v8), v111);
        if (v5)
        {
          break;
        }

        if (v8 < v94)
        {
          goto LABEL_120;
        }

        if (v91 - 2 >= *v90)
        {
          goto LABEL_121;
        }

        *v93 = v94;
        v93[1] = v8;
        v96 = *v90 - v91;
        if (*v90 < v91)
        {
          goto LABEL_122;
        }

        v91 = *v90 - 1;
        sub_1DCC223A4(v95 + 16, v96, v95);
        *v90 = v91;
        v8 = v92;
      }

LABEL_104:

      return;
    }

LABEL_129:
    v8 = sub_1DCC22390(v8);
    goto LABEL_96;
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v9 = v7;
    v10 = v7 + 1;
    if (v7 + 1 < v6)
    {
      v99 = v8;
      v101 = v5;
      v11 = (*a3 + 8 * v7);
      v97 = 8 * v7;
      v13 = *v11;
      v12 = v11 + 2;
      v8 = *(*a3 + 8 * v10);
      v5 = v13;
      v107 = [v8 tag];
      v106 = [v5 tag];

      v103 = v9;
      v14 = v9 + 2;
      while (1)
      {
        v15 = v14;
        v16 = v10 + 1;
        if (v16 >= v6)
        {
          break;
        }

        LODWORD(v111) = v107 < v106;
        v17 = *(v12 - 1);
        v8 = *v12;
        v5 = v17;
        v18 = v16;
        v19 = [v8 tag];
        v20 = [v5 tag];

        v21 = v19 < v20;
        v10 = v18;
        v22 = !v21;
        v23 = v111 ^ v22;
        ++v12;
        v14 = v15 + 1;
        if ((v23 & 1) == 0)
        {
          goto LABEL_12;
        }
      }

      v10 = v6;
LABEL_12:
      if (v107 >= v106)
      {
        v8 = v99;
        v5 = v101;
        v9 = v103;
      }

      else
      {
        v9 = v103;
        if (v10 < v103)
        {
          goto LABEL_126;
        }

        if (v103 >= v10)
        {
          v8 = v99;
          v5 = v101;
        }

        else
        {
          if (v6 >= v15)
          {
            v24 = v15;
          }

          else
          {
            v24 = v6;
          }

          v25 = 8 * v24 - 8;
          v26 = v10;
          v27 = v103;
          v8 = v99;
          v5 = v101;
          v28 = v97;
          do
          {
            if (v27 != --v26)
            {
              v29 = *a3;
              if (!*a3)
              {
                goto LABEL_133;
              }

              v30 = *(v29 + v28);
              *(v29 + v28) = *(v29 + v25);
              *(v29 + v25) = v30;
            }

            ++v27;
            v25 -= 8;
            v28 += 8;
          }

          while (v27 < v26);
        }
      }
    }

    v31 = a3[1];
    if (v10 < v31)
    {
      if (__OFSUB__(v10, v9))
      {
        goto LABEL_125;
      }

      if (v10 - v9 < a4)
      {
        break;
      }
    }

LABEL_42:
    if (v10 < v9)
    {
      goto LABEL_124;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1DCE18BB0();
      v8 = v88;
    }

    v46 = *(v8 + 16);
    v47 = v46 + 1;
    if (v46 >= *(v8 + 24) >> 1)
    {
      sub_1DCE18BB0();
      v8 = v89;
    }

    *(v8 + 16) = v47;
    v48 = v8 + 32;
    v49 = (v8 + 32 + 16 * v46);
    *v49 = v9;
    v49[1] = v10;
    v109 = *a1;
    if (!*a1)
    {
      goto LABEL_134;
    }

    v111 = v10;
    if (v46)
    {
      while (1)
      {
        v50 = v47 - 1;
        v51 = (v48 + 16 * (v47 - 1));
        v52 = (v8 + 16 * v47);
        if (v47 >= 4)
        {
          break;
        }

        if (v47 == 3)
        {
          v53 = *(v8 + 32);
          v54 = *(v8 + 40);
          v63 = __OFSUB__(v54, v53);
          v55 = v54 - v53;
          v56 = v63;
LABEL_62:
          if (v56)
          {
            goto LABEL_111;
          }

          v68 = *v52;
          v67 = v52[1];
          v69 = __OFSUB__(v67, v68);
          v70 = v67 - v68;
          v71 = v69;
          if (v69)
          {
            goto LABEL_114;
          }

          v72 = v51[1];
          v73 = v72 - *v51;
          if (__OFSUB__(v72, *v51))
          {
            goto LABEL_117;
          }

          if (__OFADD__(v70, v73))
          {
            goto LABEL_119;
          }

          if (v70 + v73 >= v55)
          {
            if (v55 < v73)
            {
              v50 = v47 - 2;
            }

            goto LABEL_84;
          }

          goto LABEL_77;
        }

        if (v47 < 2)
        {
          goto LABEL_113;
        }

        v75 = *v52;
        v74 = v52[1];
        v63 = __OFSUB__(v74, v75);
        v70 = v74 - v75;
        v71 = v63;
LABEL_77:
        if (v71)
        {
          goto LABEL_116;
        }

        v77 = *v51;
        v76 = v51[1];
        v63 = __OFSUB__(v76, v77);
        v78 = v76 - v77;
        if (v63)
        {
          goto LABEL_118;
        }

        if (v78 < v70)
        {
          goto LABEL_91;
        }

LABEL_84:
        if (v50 - 1 >= v47)
        {
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
          goto LABEL_128;
        }

        if (!*a3)
        {
          goto LABEL_131;
        }

        v82 = v8;
        v83 = (v48 + 16 * (v50 - 1));
        v84 = *v83;
        v85 = v50;
        v8 = v48 + 16 * v50;
        v86 = *(v8 + 8);
        sub_1DCD93584((*a3 + 8 * *v83), (*a3 + 8 * *v8), (*a3 + 8 * v86), v109);
        if (v5)
        {
          goto LABEL_104;
        }

        if (v86 < v84)
        {
          goto LABEL_106;
        }

        v5 = *(v82 + 16);
        if (v85 > v5)
        {
          goto LABEL_107;
        }

        *v83 = v84;
        v83[1] = v86;
        if (v85 >= v5)
        {
          goto LABEL_108;
        }

        v87 = v85;
        v47 = (v5 - 1);
        sub_1DCC223A4((v8 + 16), &v5[-v87 - 1], v8);
        v8 = v82;
        *(v82 + 16) = v5 - 1;
        v21 = v5 > 2;
        v5 = 0;
        if (!v21)
        {
          goto LABEL_91;
        }
      }

      v57 = v48 + 16 * v47;
      v58 = *(v57 - 64);
      v59 = *(v57 - 56);
      v63 = __OFSUB__(v59, v58);
      v60 = v59 - v58;
      if (v63)
      {
        goto LABEL_109;
      }

      v62 = *(v57 - 48);
      v61 = *(v57 - 40);
      v63 = __OFSUB__(v61, v62);
      v55 = v61 - v62;
      v56 = v63;
      if (v63)
      {
        goto LABEL_110;
      }

      v64 = v52[1];
      v65 = v64 - *v52;
      if (__OFSUB__(v64, *v52))
      {
        goto LABEL_112;
      }

      v63 = __OFADD__(v55, v65);
      v66 = v55 + v65;
      if (v63)
      {
        goto LABEL_115;
      }

      if (v66 >= v60)
      {
        v80 = *v51;
        v79 = v51[1];
        v63 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v63)
        {
          goto LABEL_123;
        }

        if (v55 < v81)
        {
          v50 = v47 - 2;
        }

        goto LABEL_84;
      }

      goto LABEL_62;
    }

LABEL_91:
    v6 = a3[1];
    v7 = v111;
    if (v111 >= v6)
    {
      goto LABEL_94;
    }
  }

  v32 = v9 + a4;
  if (__OFADD__(v9, a4))
  {
    goto LABEL_127;
  }

  if (v32 >= v31)
  {
    v32 = a3[1];
  }

  if (v32 < v9)
  {
LABEL_128:
    __break(1u);
    goto LABEL_129;
  }

  if (v10 == v32)
  {
    goto LABEL_42;
  }

  v100 = v8;
  v102 = v5;
  v33 = *a3;
  v34 = *a3 + 8 * v10 - 8;
  v104 = v9;
  v35 = v9 - v10;
  v108 = v32;
LABEL_35:
  v111 = v10;
  v36 = *(v33 + 8 * v10);
  v37 = v35;
  v38 = v34;
  while (1)
  {
    v39 = *v38;
    v40 = v36;
    v41 = v39;
    v42 = [v40 tag];
    v43 = [v41 tag];

    if (v42 >= v43)
    {
LABEL_40:
      v10 = v111 + 1;
      v34 += 8;
      --v35;
      if ((v111 + 1) == v108)
      {
        v10 = v108;
        v8 = v100;
        v5 = v102;
        v9 = v104;
        goto LABEL_42;
      }

      goto LABEL_35;
    }

    if (!v33)
    {
      break;
    }

    v44 = *v38;
    v36 = *(v38 + 8);
    *v38 = v36;
    *(v38 + 8) = v44;
    v38 -= 8;
    if (__CFADD__(v37++, 1))
    {
      goto LABEL_40;
    }
  }

  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
LABEL_135:
  __break(1u);
}

uint64_t sub_1DCD93584(char *a1, id *a2, id *a3, void **a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 8;
  v9 = a3 - a2;
  if (v8 < v9)
  {
    sub_1DCD3F5B4(a1, (a2 - a1) / 8, a4);
    v10 = &v4[v8];
    for (i = v5; ; v5 = i)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_28;
      }

      v12 = v7;
      v13 = *v4;
      v14 = *v6;
      v15 = v13;
      v16 = [v14 tag];
      v17 = [v15 tag];

      if (v16 >= v17)
      {
        break;
      }

      v18 = v6;
      v19 = v12;
      v20 = v12 == v6++;
      if (!v20)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 = (v19 + 1);
    }

    v18 = v4;
    v19 = v12;
    v20 = v12 == v4++;
    if (v20)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v19 = *v18;
    goto LABEL_13;
  }

  sub_1DCD3F5B4(a2, a3 - a2, a4);
  v10 = &v4[v9];
  v33 = v7;
  v34 = v4;
LABEL_15:
  v21 = v6 - 1;
  --v5;
  while (v10 > v4 && v6 > v7)
  {
    v23 = v21;
    v24 = *v21;
    v25 = *(v10 - 1);
    v26 = v24;
    v27 = [v25 tag];
    v28 = [v26 tag];

    v29 = v5 + 1;
    if (v27 < v28)
    {
      v20 = v29 == v6;
      v6 = v23;
      v7 = v33;
      v4 = v34;
      if (!v20)
      {
        *v5 = *v23;
        v6 = v23;
      }

      goto LABEL_15;
    }

    if (v10 != v29)
    {
      *v5 = *(v10 - 1);
    }

    --v5;
    --v10;
    v7 = v33;
    v4 = v34;
    v21 = v23;
  }

LABEL_28:
  v30 = v10 - v4;
  if (v6 != v4 || v6 >= &v4[v30])
  {
    memmove(v6, v4, 8 * v30);
  }

  return 1;
}

uint64_t sub_1DCD937B4(void *a1)
{
  v2 = [a1 slotDescriptions];

  if (!v2)
  {
    return 0;
  }

  sub_1DCB10E5C(0, &unk_1EDE46150, 0x1E696E8B0);
  v3 = sub_1DD0DE2EC();

  return v3;
}

uint64_t getEnumTagSinglePayload for TaskFlowType(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for TaskFlowType(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
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

  *(result + 9) = v3;
  return result;
}

uint64_t sub_1DCD9387C(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1DCD93898(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    v2 = 1;
  }

  else
  {
    v2 = 0;
  }

  *(result + 8) = v2;
  return result;
}

double sub_1DCD938C8@<D0>(void *a1@<X0>, _OWORD *a2@<X8>, uint64_t a3@<X1>, unint64_t a4@<X2>)
{
  sub_1DCD9396C(a1, a3, a4);
  v6 = sub_1DD0DDF8C();

  v7 = [a1 valueForKeyPath_];

  if (v7)
  {
    sub_1DD0DEA6C();

    swift_unknownObjectRelease();
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t sub_1DCD9396C(void *a1, uint64_t a2, unint64_t a3)
{
  v4 = a2;
  v6 = sub_1DCD944A8(a1, a2, a3);
  v7 = [v6 facadePropertyName];
  if (v7)
  {
    v8 = v7;
    v4 = sub_1DD0DDFBC();
  }

  else
  {
    if (qword_1EDE4F900 != -1)
    {
      swift_once();
    }

    v9 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v9, qword_1EDE57E00);

    v10 = a1;
    v11 = sub_1DD0DD8EC();
    v12 = sub_1DD0DE6EC();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v21 = v14;
      *v13 = 136315394;
      *(v13 + 4) = sub_1DCB10E9C(v4, a3, &v21);
      *(v13 + 12) = 2080;
      v15 = [v10 typeName];
      v16 = sub_1DD0DDFBC();
      v18 = v17;

      v19 = sub_1DCB10E9C(v16, v18, &v21);

      *(v13 + 14) = v19;
      _os_log_impl(&dword_1DCAFC000, v11, v12, "Cannot get a key for parameter: %s on intent type: %s. Will use parameterName instead. This may result in a crash.", v13, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12A8390](v14, -1, -1);
      MEMORY[0x1E12A8390](v13, -1, -1);
    }
  }

  return v4;
}

uint64_t sub_1DCD93B8C(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA7470, &qword_1DD0E16E0);
  v14 = MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v16 = &v80 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v17);
  v19 = &v80 - v18;
  v20 = OUTLINED_FUNCTION_1_67();
  sub_1DCD938C8(v20, v23, v21, v22);
  if (*(a4 + 24) | v86)
  {
    v80 = v16;
    v29 = OUTLINED_FUNCTION_1_67();
    v32 = sub_1DCD9396C(v29, v30, v31);
    v81 = v33;
    v34 = OUTLINED_FUNCTION_1_67();
    v37 = sub_1DCD944A8(v34, v35, v36);
    v38 = v37;
    if ((a6 & 1) != 0 || [v37 valueStyle] != 3)
    {
      sub_1DCB28B08(a4, v84, &dword_1ECCA3CE0, &unk_1DD0E4F80);
    }

    else
    {
      v39 = OUTLINED_FUNCTION_1_67();
      sub_1DCD948F4(v39, a4, a5, v42, v40, v41);
    }

    v43 = v32;
    if ([v38 isEnum])
    {
      sub_1DCB28B08(v84, v82, &dword_1ECCA3CE0, &unk_1DD0E4F80);
      v44 = v83;
      sub_1DCB16D50(v82, &dword_1ECCA3CE0, &unk_1DD0E4F80);
      if (v44)
      {
        if (qword_1EDE4F900 != -1)
        {
          OUTLINED_FUNCTION_1_2();
          swift_once();
        }

        v60 = sub_1DD0DD8FC();
        v61 = __swift_project_value_buffer(v60, qword_1EDE57E00);

        v62 = a1;
        v63 = sub_1DD0DD8EC();
        v64 = sub_1DD0DE6DC();

        if (os_log_type_enabled(v63, v64))
        {
          v65 = swift_slowAlloc();
          v82[0] = swift_slowAlloc();
          *v65 = 136315394;
          v66 = sub_1DCB10E9C(v32, v81, v82);

          *(v65 + 4) = v66;
          *(v65 + 12) = 2080;
          v67 = [v62 typeName];
          v68 = sub_1DD0DDFBC();
          v70 = v69;

          v71 = sub_1DCB10E9C(v68, v70, v82);

          *(v65 + 14) = v71;
          _os_log_impl(&dword_1DCAFC000, v63, v64, "\nCannot generically set enumerated values due to incompatibilities between Swift and Objective-C.\nIf you are seeing this message please implement the code to apply values for parameter '%s' on intent type '%s' in your domain code.\nYou can use the typed setters on the intent to set enum types rather than using 'setValue'.", v65, 0x16u);
          swift_arrayDestroy();
          OUTLINED_FUNCTION_80();
          OUTLINED_FUNCTION_80();
        }

        else
        {
        }

        v72 = *(v60 - 8);
        (*(v72 + 16))(v19, v61, v60);
        __swift_storeEnumTagSinglePayload(v19, 0, 1, v60);
        v73 = v80;
        sub_1DCB28B08(v19, v80, &unk_1ECCA7470, &qword_1DD0E16E0);
        if (__swift_getEnumTagSinglePayload(v73, 1, v60) == 1)
        {
          sub_1DCB16D50(v80, &unk_1ECCA7470, &qword_1DD0E16E0);
        }

        else
        {
          v74 = sub_1DD0DD8EC();
          v75 = sub_1DD0DE6EC();
          if (os_log_type_enabled(v74, v75))
          {
            v76 = swift_slowAlloc();
            v82[0] = swift_slowAlloc();
            *v76 = 136315650;
            v77 = sub_1DD0DEC3C();
            v79 = sub_1DCB10E9C(v77, v78, v82);

            *(v76 + 4) = v79;
            *(v76 + 12) = 2048;
            *(v76 + 14) = 67;
            *(v76 + 22) = 2080;
            *(v76 + 24) = sub_1DCB10E9C(0xD000000000000044, 0x80000001DD11CE90, v82);
            _os_log_impl(&dword_1DCAFC000, v74, v75, "FatalError at %s:%lu - %s", v76, 0x20u);
            swift_arrayDestroy();
            OUTLINED_FUNCTION_80();
            OUTLINED_FUNCTION_80();
          }

          (*(v72 + 8))(v80, v60);
        }

        static SiriKitLifecycle._logCrashToEventBus(_:)(0xD000000000000044, 0x80000001DD11CE90);
      }

      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_1_2();
        swift_once();
      }

      v45 = sub_1DD0DD8FC();
      __swift_project_value_buffer(v45, qword_1EDE57E00);
      v46 = v81;

      v47 = sub_1DD0DD8EC();
      v48 = sub_1DD0DE6DC();

      if (os_log_type_enabled(v47, v48))
      {
        v49 = swift_slowAlloc();
        v50 = swift_slowAlloc();
        v82[0] = v50;
        *v49 = 136315138;
        *(v49 + 4) = sub_1DCB10E9C(v43, v46, v82);
        _os_log_impl(&dword_1DCAFC000, v47, v48, "Setting enum value for '%s' to rawValue=0. If this is not your default value then implement the code to remove values in your domain code.", v49, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v50);
        OUTLINED_FUNCTION_80();
        OUTLINED_FUNCTION_80();
      }

      v51 = sub_1DD0DE5BC();
      v52 = sub_1DD0DDF8C();

      [a1 setValue:v51 forKey:v52];

      v38 = v52;
    }

    else
    {
      sub_1DCB28B08(v84, v82, &dword_1ECCA3CE0, &unk_1DD0E4F80);
      v53 = v83;
      if (v83)
      {
        v54 = __swift_project_boxed_opaque_existential_1(v82, v83);
        v55 = *(v53 - 8);
        MEMORY[0x1EEE9AC00](v54, v54);
        v57 = &v80 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v55 + 16))(v57);
        v58 = sub_1DD0DF09C();
        (*(v55 + 8))(v57, v53);
        __swift_destroy_boxed_opaque_existential_1Tm(v82);
      }

      else
      {
        v58 = 0;
      }

      v51 = sub_1DD0DDF8C();

      [a1 setValue:v58 forKey:v51];
      swift_unknownObjectRelease();
    }

    sub_1DCB16D50(v84, &dword_1ECCA3CE0, &unk_1DD0E4F80);
  }

  else
  {
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_1_2();
      swift_once();
    }

    v24 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v24, qword_1EDE57E00);

    v25 = sub_1DD0DD8EC();
    v26 = sub_1DD0DE6DC();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v84[0] = v28;
      *v27 = 136315138;
      *(v27 + 4) = sub_1DCB10E9C(a2, a3, v84);
      _os_log_impl(&dword_1DCAFC000, v25, v26, "Parameter '%s' value is already nil. Nothing to do", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v28);
      OUTLINED_FUNCTION_80();
      OUTLINED_FUNCTION_80();
    }
  }

  return sub_1DCB16D50(v85, &dword_1ECCA3CE0, &unk_1DD0E4F80);
}

id sub_1DCD944A8(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA7470, &qword_1DD0E16E0);
  v8 = MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v11);
  v13 = &v36 - v12;
  v14 = [a1 _intentInstanceDescription];
  v15 = sub_1DD0DDF8C();
  v16 = [v14 slotByName_];

  if (!v16)
  {
    v18 = v13;
    v38 = 0;
    v39 = 0xE000000000000000;
    sub_1DD0DEC1C();
    MEMORY[0x1E12A6780](0xD000000000000032, 0x80000001DD11CF40);
    MEMORY[0x1E12A6780](a2, a3);
    MEMORY[0x1E12A6780](0xD000000000000011, 0x80000001DD11CF80);
    v19 = [a1 typeName];
    v20 = sub_1DD0DDFBC();
    v22 = v21;

    MEMORY[0x1E12A6780](v20, v22);

    v23 = v38;
    v24 = v39;
    v25 = qword_1EDE4F900;

    if (v25 != -1)
    {
      swift_once();
    }

    v26 = sub_1DD0DD8FC();
    v27 = __swift_project_value_buffer(v26, qword_1EDE57E00);
    v28 = *(v26 - 8);
    (*(v28 + 16))(v18, v27, v26);
    __swift_storeEnumTagSinglePayload(v18, 0, 1, v26);
    sub_1DCB28B08(v18, v10, &unk_1ECCA7470, &qword_1DD0E16E0);
    if (__swift_getEnumTagSinglePayload(v10, 1, v26) == 1)
    {
      sub_1DCB16D50(v10, &unk_1ECCA7470, &qword_1DD0E16E0);
    }

    else
    {

      v29 = sub_1DD0DD8EC();
      v30 = sub_1DD0DE6EC();

      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        v36 = swift_slowAlloc();
        v37 = v36;
        *v31 = 136315650;
        v32 = sub_1DD0DEC3C();
        v34 = sub_1DCB10E9C(v32, v33, &v37);

        *(v31 + 4) = v34;
        *(v31 + 12) = 2048;
        *(v31 + 14) = 115;
        *(v31 + 22) = 2080;
        *(v31 + 24) = sub_1DCB10E9C(v23, v24, &v37);
        _os_log_impl(&dword_1DCAFC000, v29, v30, "FatalError at %s:%lu - %s", v31, 0x20u);
        v35 = v36;
        swift_arrayDestroy();
        MEMORY[0x1E12A8390](v35, -1, -1);
        MEMORY[0x1E12A8390](v31, -1, -1);
      }

      (*(v28 + 8))(v10, v26);
    }

    static SiriKitLifecycle._logCrashToEventBus(_:)(v23, v24);
  }

  return v16;
}