void sub_18F2434D4(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v50 = a4;
  v48 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v47 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v8 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v49 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v12 = &v42 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD32D0, &qword_18F540EB0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v42 - v14;
  v16 = type metadata accessor for DisplayRepresentation(0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18F1436A0(a2, *(*(a3 + 16) + 8));
  if (__swift_getEnumTagSinglePayload(v15, 1, v16) == 1)
  {
    v46 = v9;
    v19 = v49;
    sub_18F0EF1A8(v15, &qword_1EACD32D0, &qword_18F540EB0);
    v20 = [objc_opt_self() processInfo];
    v21 = [v20 ln_isTesting];

    if ((v21 & 1) == 0)
    {
      if (qword_1ED6FE088 != -1)
      {
        swift_once();
      }

      v22 = sub_18F52165C();
      __swift_project_value_buffer(v22, qword_1ED707760);
      v23 = v47;
      v24 = v48;
      (*(v48 + 16))(v47, a1, a2);
      v25 = sub_18F52163C();
      v45 = sub_18F52222C();
      if (os_log_type_enabled(v25, v45))
      {
        v26 = AssociatedTypeWitness;
        v27 = swift_slowAlloc();
        v42 = v27;
        v44 = swift_slowAlloc();
        v51 = v44;
        *v27 = 136315138;
        v28 = v12;
        v43 = v25;
        sub_18F521C0C();
        (*(v24 + 8))(v23, a2);
        swift_getAssociatedConformanceWitness();
        v29 = sub_18F522C9C();
        v31 = v30;
        (*(v19 + 8))(v28, v26);
        v32 = sub_18F11897C(v29, v31, &v51);

        v33 = v42;
        *(v42 + 1) = v32;
        v25 = v43;
        _os_log_impl(&dword_18F0E9000, v43, v45, "Programming error: a caseDisplayRepresentations entry for AppEnum case %s was not found. This case will be ignored.", v33, 0xCu);
        v34 = v44;
        __swift_destroy_boxed_opaque_existential_1Tm(v44);
        MEMORY[0x193ADD350](v34, -1, -1);
        MEMORY[0x193ADD350](v33, -1, -1);
      }

      else
      {
        (*(v24 + 8))(v23, a2);
      }
    }

    v41 = 0;
  }

  else
  {
    sub_18F143B8C(v15, v18);
    sub_18F521C0C();
    swift_getAssociatedConformanceWitness();
    v35 = sub_18F522C9C();
    v37 = v36;
    (*(v49 + 8))(v12, AssociatedTypeWitness);
    sub_18F13FE10();
    v39 = v38;
    v40 = objc_allocWithZone(MEMORY[0x1E69AC828]);
    v41 = sub_18F243AC4(v35, v37, v39);
    sub_18F115498(v18, type metadata accessor for DisplayRepresentation);
  }

  *v50 = v41;
}

id sub_18F243A1C(void *a1, void *a2, uint64_t a3)
{
  v4 = v3;
  if (a3)
  {
    sub_18F0F21A8(0, &qword_1ED6FEFA8, 0x1E69AC9E8);
    v7 = sub_18F521C8C();
  }

  else
  {
    v7 = 0;
  }

  v8 = [v4 initWithName:a1 numericFormat:a2 synonyms:v7];

  return v8;
}

id sub_18F243AC4(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_18F5218AC();

  v6 = [v3 initWithIdentifier:v5 displayRepresentation:a3];

  return v6;
}

id sub_18F243B28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, void *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17)
{
  v25 = sub_18F5218AC();

  v17 = sub_18F5218AC();

  v18 = sub_18F5216AC();

  sub_18F0F21A8(0, &qword_1ED6FE040, 0x1E69AC828);
  v26 = sub_18F521C8C();

  if (a10)
  {
    v19 = sub_18F5218AC();
  }

  else
  {
    v19 = 0;
  }

  if (a11)
  {
    type metadata accessor for LNPlatformName(0);
    sub_18F0F21A8(0, &qword_1ED6FEE98, 0x1E69AC708);
    sub_18F14748C();
    v20 = sub_18F5216AC();
  }

  else
  {
    v20 = 0;
  }

  if (a14)
  {
    v21 = sub_18F5218AC();
  }

  else
  {
    v21 = 0;
  }

  if (a15)
  {
    sub_18F0F21A8(0, &unk_1EACD32C0, 0x1E69AC6C8);
    v22 = sub_18F521C8C();
  }

  else
  {
    v22 = 0;
  }

  if (a17)
  {
    sub_18F0F21A8(0, &qword_1EACD32B8, 0x1E69ACA58);
    v23 = sub_18F521C8C();
  }

  else
  {
    v23 = 0;
  }

  v28 = [v27 initWithIdentifier:v25 mangledTypeName:v17 mangledTypeNameByBundleIdentifier:v18 effectiveBundleIdentifiers:a6 displayRepresentation:a7 cases:v26 customIntentEnumTypeName:v19 availabilityAnnotations:v20 system:a12 fullyQualifiedTypeName:v21 assistantDefinedSchemas:v22 visibilityMetadata:a16 allowedTargets:v23];

  return v28;
}

uint64_t sub_18F243E14()
{
  sub_18F52064C();
  swift_allocObject();
  result = sub_18F52063C();
  qword_1EACD3310 = result;
  return result;
}

uint64_t static CameraCaptureIntent.appContext.getter()
{
  OUTLINED_FUNCTION_69();
  v0[3] = v1;
  v0[4] = v2;
  v0[2] = v3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v0[5] = AssociatedTypeWitness;
  v5 = sub_18F52254C();
  v0[6] = v5;
  v0[7] = *(v5 - 8);
  v0[8] = swift_task_alloc();
  v0[9] = *(AssociatedTypeWitness - 8);
  v0[10] = swift_task_alloc();
  type metadata accessor for IntentContext(0);
  v0[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_18F243FBC, 0, 0);
}

uint64_t sub_18F243FBC(uint64_t a1)
{
  static IntentContext.current.getter(v1[11]);
  v2 = v1[11];
  v3 = *(v2 + 16);
  sub_18F178EA4(v2);
  v4 = [v3 encodedCaptureAppContext];

  v5 = sub_18F520D4C();
  v7 = v6;

  if (qword_1EACCF4C8 != -1)
  {
    swift_once();
  }

  swift_getAssociatedConformanceWitness();
  sub_18F52062C();
  v8 = v1[5];
  v10 = v1[9];
  v9 = v1[10];
  v11 = v1[8];
  v12 = v1[2];
  sub_18F123A1C(v5, v7);
  __swift_storeEnumTagSinglePayload(v11, 0, 1, v8);
  v13 = *(v10 + 32);
  v13(v9, v11, v8);
  v13(v12, v9, v8);
  __swift_storeEnumTagSinglePayload(v12, 0, 1, v8);

  OUTLINED_FUNCTION_71();

  return v14();
}

uint64_t sub_18F2442A0()
{
  OUTLINED_FUNCTION_69();
  v2 = *v1;
  OUTLINED_FUNCTION_8_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_8_0();
  *v5 = v4;
  *(v2 + 112) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_18F2443EC, 0, 0);
  }

  else
  {

    OUTLINED_FUNCTION_71();

    return v6();
  }
}

uint64_t sub_18F2443EC()
{

  OUTLINED_FUNCTION_71();

  return v0();
}

uint64_t static CameraCaptureIntent.updateAppContext(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return OUTLINED_FUNCTION_10_5();
}

uint64_t sub_18F24448C()
{
  OUTLINED_FUNCTION_69();
  if (qword_1ED6FF6D8 != -1)
  {
    OUTLINED_FUNCTION_2_1(&qword_1ED6FF6D8);
  }

  *(v0 + 40) = off_1ED6FF6C8;

  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_3_31(v1);

  return sub_18F39F528(v2, v3, v4, v5);
}

uint64_t sub_18F244548()
{
  OUTLINED_FUNCTION_69();
  v2 = *v1;
  OUTLINED_FUNCTION_8_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_8_0();
  *v5 = v4;
  *(v2 + 56) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_18F244674, 0, 0);
  }

  else
  {

    OUTLINED_FUNCTION_71();

    return v6();
  }
}

uint64_t sub_18F244674()
{
  OUTLINED_FUNCTION_69();

  OUTLINED_FUNCTION_71();

  return v0();
}

uint64_t static CameraCaptureIntent.updateIntentContext(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return OUTLINED_FUNCTION_10_5();
}

uint64_t sub_18F2446E8()
{
  OUTLINED_FUNCTION_69();
  if (qword_1ED6FF6D8 != -1)
  {
    OUTLINED_FUNCTION_2_1(&qword_1ED6FF6D8);
  }

  *(v0 + 40) = off_1ED6FF6C8;

  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_3_31(v1);

  return sub_18F39F528(v2, v3, v4, v5);
}

uint64_t sub_18F2447A4()
{
  OUTLINED_FUNCTION_69();
  v2 = *v1;
  OUTLINED_FUNCTION_8_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_8_0();
  *v5 = v4;
  *(v2 + 56) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_18F2448E8, 0, 0);
  }

  else
  {

    OUTLINED_FUNCTION_71();

    return v6();
  }
}

uint64_t dispatch thunk of _CustomURLRepresentationParameterConvertible.urlRepresentationParameter.getter(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 8) + **(a2 + 8));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_18F244A04;

  return v7(a1, a2);
}

uint64_t sub_18F244A04(uint64_t a1, uint64_t a2)
{
  v7 = *v2;

  v5 = *(v7 + 8);

  return v5(a1, a2);
}

uint64_t _UpdatableEntityProperty<>.init(title:_get:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v19 = a2;
  v8 = sub_18F520B3C();
  OUTLINED_FUNCTION_0();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v20[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v13, a1, v8);
  v14 = _s10AppIntents24_UpdatableEntityPropertyCA2A04FileD09ValueTypeRp_rlE5titleACyxq_G10Foundation23LocalizedStringResourceV_tcfC_0(v13);
  v15 = *(v4 + 88);
  v16 = *(a4 + 56);
  v17 = *(a4 + 8);
  v20[3] = v15;
  v20[4] = v17;
  __swift_allocate_boxed_opaque_existential_1(v20);

  v16(v19, a3, v15, a4);
  sub_18F1AAF80(v20);

  (*(v10 + 8))(a1, v8);
  return v14;
}

uint64_t _UpdatableEntityProperty<>.init(title:_get:_set:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v23 = a2;
  v24 = a4;
  v22 = a1;
  v11 = sub_18F520B3C();
  OUTLINED_FUNCTION_0();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v16, a1, v11);
  v17 = _s10AppIntents24_UpdatableEntityPropertyCA2A04FileD09ValueTypeRp_rlE5titleACyxq_G10Foundation23LocalizedStringResourceV_tcfC_0(v16);
  v18 = *(v6 + 88);
  v19 = *(a6 + 48);
  v20 = *(a6 + 8);
  v25[3] = v18;
  v25[4] = v20;
  __swift_allocate_boxed_opaque_existential_1(v25);

  v19(v23, a3, v24, a5, v18, a6);
  sub_18F1AAF80(v25);

  (*(v13 + 8))(v22, v11);
  return v17;
}

uint64_t sub_18F244E0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[9] = a3;
  v4[10] = v3;
  v4[7] = a1;
  v4[8] = a2;
  v5 = *(*v3 + 88);
  v4[11] = v5;
  v6 = sub_18F52254C();
  v4[12] = v6;
  v4[13] = *(v6 - 8);
  v4[14] = swift_task_alloc();
  v4[15] = *(v5 - 8);
  v4[16] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_18F244F3C, 0, 0);
}

uint64_t sub_18F244F3C(uint64_t a1)
{
  sub_18F1AAF20(a1, (v1 + 2));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0620, &unk_18F541850);
  v2 = swift_dynamicCast();
  v3 = v1[11];
  if (v2)
  {
    v5 = v1[15];
    v4 = v1[16];
    v6 = v1[14];
    v7 = v1[9];
    __swift_storeEnumTagSinglePayload(v6, 0, 1, v1[11]);
    (*(v5 + 32))(v4, v6, v3);
    v8 = (*(v7 + 64))(v3, v7);
    v1[17] = v9;
    v19 = (v8 + *v8);
    v10 = swift_task_alloc();
    v1[18] = v10;
    *v10 = v1;
    v10[1] = sub_18F245164;
    v11 = v1[7];
    v12 = v1[8];

    return v19(v11, v12);
  }

  else
  {
    v15 = v1[13];
    v14 = v1[14];
    v16 = OUTLINED_FUNCTION_8_24();
    __swift_storeEnumTagSinglePayload(v16, v17, v18, v3);
    (*(v15 + 8))(v14, v1);
    return sub_18F522A3C();
  }
}

uint64_t sub_18F245164()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_8_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_39();
  *v5 = v4;
  *(v6 + 152) = v0;

  if (v0)
  {
    v7 = sub_18F2452F4;
  }

  else
  {
    v7 = sub_18F245280;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_18F245280()
{
  OUTLINED_FUNCTION_69();
  v0 = OUTLINED_FUNCTION_6_35();
  v1(v0);

  OUTLINED_FUNCTION_71();

  return v2();
}

uint64_t sub_18F2452F4()
{
  OUTLINED_FUNCTION_69();
  v0 = OUTLINED_FUNCTION_6_35();
  v1(v0);

  OUTLINED_FUNCTION_71();

  return v2();
}

uint64_t sub_18F245368(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[9] = a3;
  v4[10] = v3;
  v4[7] = a1;
  v4[8] = a2;
  v5 = *(*v3 + 88);
  v4[11] = v5;
  v6 = sub_18F52254C();
  v4[12] = v6;
  v4[13] = *(v6 - 8);
  v4[14] = swift_task_alloc();
  v4[15] = *(v5 - 8);
  v4[16] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_18F245498, 0, 0);
}

uint64_t sub_18F245498(uint64_t a1)
{
  sub_18F1AAF20(a1, (v1 + 2));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0620, &unk_18F541850);
  v2 = swift_dynamicCast();
  v3 = v1[11];
  if (!v2)
  {
    v15 = v1[13];
    v14 = v1[14];
    v16 = OUTLINED_FUNCTION_8_24();
    __swift_storeEnumTagSinglePayload(v16, v17, v18, v3);
    (*(v15 + 8))(v14, v1);
    return sub_18F522A3C();
  }

  v5 = v1[15];
  v4 = v1[16];
  v6 = v1[14];
  v7 = v1[9];
  __swift_storeEnumTagSinglePayload(v6, 0, 1, v1[11]);
  (*(v5 + 32))(v4, v6, v3);
  v8 = (*(v7 + 72))(v3, v7);
  v1[17] = v8;
  v1[18] = v9;
  if (!v8)
  {
    return sub_18F522A3C();
  }

  v19 = (v8 + *v8);
  v10 = swift_task_alloc();
  v1[19] = v10;
  *v10 = v1;
  v10[1] = sub_18F2456E8;
  v11 = v1[7];
  v12 = v1[8];

  return v19(v12, v11);
}

uint64_t sub_18F2456E8()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_8_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_39();
  *v5 = v4;
  *(v6 + 160) = v0;

  if (v0)
  {
    v7 = sub_18F245868;
  }

  else
  {
    v7 = sub_18F2457E8;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_18F2457E8()
{
  v0 = OUTLINED_FUNCTION_9_25();
  v1(v0);

  OUTLINED_FUNCTION_71();

  return v2();
}

uint64_t sub_18F245868()
{
  v0 = OUTLINED_FUNCTION_9_25();
  v1(v0);

  OUTLINED_FUNCTION_71();

  return v2();
}

uint64_t AppEntity._value<A>(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  return OUTLINED_FUNCTION_10_5();
}

{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  return OUTLINED_FUNCTION_10_5();
}

uint64_t sub_18F245900()
{
  OUTLINED_FUNCTION_69();
  swift_getAtKeyPath();
  v0[7] = v0[2];
  v1 = swift_task_alloc();
  v0[8] = v1;
  *v1 = v0;
  v1[1] = sub_18F2459AC;
  v3 = v0[5];
  v2 = v0[6];
  v4 = v0[3];

  return sub_18F244E0C(v4, v2, v3);
}

uint64_t sub_18F2459AC()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  v3 = v2;
  OUTLINED_FUNCTION_8_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_39();
  *v6 = v5;
  *(v3 + 72) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_18F245AD0, 0, 0);
  }

  else
  {

    OUTLINED_FUNCTION_71();

    return v7();
  }
}

uint64_t sub_18F245AD0()
{
  OUTLINED_FUNCTION_69();

  OUTLINED_FUNCTION_71();

  return v0();
}

uint64_t AppEntity._setValue<A>(_:for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  return OUTLINED_FUNCTION_10_5();
}

{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  return OUTLINED_FUNCTION_10_5();
}

uint64_t sub_18F245B44()
{
  OUTLINED_FUNCTION_69();
  swift_getAtKeyPath();
  v0[7] = v0[2];
  v1 = swift_task_alloc();
  v0[8] = v1;
  *v1 = v0;
  v1[1] = sub_18F245BF0;
  v3 = v0[5];
  v2 = v0[6];
  v4 = v0[3];

  return sub_18F245368(v4, v2, v3);
}

uint64_t sub_18F245BF0()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  v3 = v2;
  OUTLINED_FUNCTION_8_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_39();
  *v6 = v5;
  *(v3 + 72) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_18F24602C, 0, 0);
  }

  else
  {

    OUTLINED_FUNCTION_71();

    return v7();
  }
}

uint64_t AppEntity._value<A>(for:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(*(*a1 + *MEMORY[0x1E69E77B0] + 8) + 88);
  v4 = sub_18F52254C();
  OUTLINED_FUNCTION_0();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v13 - v8;
  v10 = swift_getAtKeyPath();
  sub_18F1AAF20(v10, &v13);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0620, &unk_18F541850);
  if (swift_dynamicCast())
  {
    __swift_storeEnumTagSinglePayload(v9, 0, 1, v3);
    return (*(*(v3 - 8) + 32))(a2, v9, v3);
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v9, 1, 1, v3);
    (*(v6 + 8))(v9, v4);
    v13 = 0;
    v14 = 0xE000000000000000;
    sub_18F52279C();

    v13 = 0xD000000000000018;
    v14 = 0x800000018F527980;
    v12 = sub_18F52307C();
    MEMORY[0x193ADB000](v12);

    result = sub_18F522A3C();
    __break(1u);
  }

  return result;
}

{
  v3 = *(*(*a1 + *MEMORY[0x1E69E77B0] + 8) + 80);
  v4 = sub_18F52254C();
  OUTLINED_FUNCTION_11_0();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v12 - v8;
  swift_getAtKeyPath();
  sub_18F11E02C(&v12);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0620, &unk_18F541850);
  if (swift_dynamicCast())
  {
    __swift_storeEnumTagSinglePayload(v9, 0, 1, v3);
    return (*(*(v3 - 8) + 32))(a2, v9, v3);
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v9, 1, 1, v3);
    (*(v6 + 8))(v9, v4);
    v12 = 0;
    v13 = 0xE000000000000000;
    sub_18F52279C();

    v12 = 0xD000000000000018;
    v13 = 0x800000018F527980;
    v11 = sub_18F52307C();
    MEMORY[0x193ADB000](v11);

    result = sub_18F522A3C();
    __break(1u);
  }

  return result;
}

uint64_t AppEntity._setValue<A>(_:for:)(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  swift_getAtKeyPath();
  v4 = *(v3 + *MEMORY[0x1E69E77B0] + 8);
  v5 = *(v4 + 88);
  v6 = *(v4 + 104);
  v9[3] = v5;
  v9[4] = v6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v9);
  (*(*(v5 - 8) + 16))(boxed_opaque_existential_1, a1, v5);
  sub_18F1AAF80(v9);
}

{
  v3 = *a2;
  swift_getAtKeyPath();
  v8 = *(*(v3 + *MEMORY[0x1E69E77B0] + 8) + 80);
  v6 = v8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v7);
  (*(*(v6 - 8) + 16))(boxed_opaque_existential_1, a1);
  sub_18F31D30C(v7);
}

id sub_18F246030()
{
  v1 = [*(v0 + *(type metadata accessor for PerformActionExecutorTask(0) + 32)) viewActionIdentifier];
  v2 = v1;
  if (!v1)
  {
    return 0;
  }

  v3 = [v1 integerValue];

  return v3;
}

uint64_t sub_18F2460A4()
{
  OUTLINED_FUNCTION_69();
  v1[84] = v0;
  v2 = type metadata accessor for OpenURLTask(0);
  v1[85] = v2;
  OUTLINED_FUNCTION_10(v2);
  v1[86] = OUTLINED_FUNCTION_34_0();
  v3 = sub_18F520C8C();
  v1[87] = v3;
  OUTLINED_FUNCTION_51(v3);
  v1[88] = v4;
  v1[89] = OUTLINED_FUNCTION_34_0();
  v5 = type metadata accessor for ContinueInAppTask(0);
  v1[90] = v5;
  OUTLINED_FUNCTION_10(v5);
  v1[91] = OUTLINED_FUNCTION_34_0();
  v6 = type metadata accessor for RequestNeedsDisambiguationTask(0);
  v1[92] = v6;
  OUTLINED_FUNCTION_10(v6);
  v1[93] = OUTLINED_FUNCTION_34_0();
  v7 = type metadata accessor for Annotation(0);
  v1[94] = v7;
  OUTLINED_FUNCTION_10(v7);
  v1[95] = OUTLINED_FUNCTION_19_13();
  v1[96] = swift_task_alloc();
  v1[97] = swift_task_alloc();
  v1[98] = swift_task_alloc();
  v8 = type metadata accessor for RequestNeedsValueTask(0);
  v1[99] = v8;
  OUTLINED_FUNCTION_10(v8);
  v1[100] = OUTLINED_FUNCTION_34_0();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A0, &unk_18F53E6F0);
  OUTLINED_FUNCTION_10(v9);
  v1[101] = OUTLINED_FUNCTION_19_13();
  v1[102] = swift_task_alloc();
  v1[103] = swift_task_alloc();
  v10 = type metadata accessor for AppIntentError.Context(0);
  v1[104] = v10;
  OUTLINED_FUNCTION_10(v10);
  v1[105] = OUTLINED_FUNCTION_34_0();
  v11 = type metadata accessor for AppIntentError(0);
  v1[106] = v11;
  OUTLINED_FUNCTION_10(v11);
  v1[107] = OUTLINED_FUNCTION_19_13();
  v1[108] = swift_task_alloc();
  v12 = type metadata accessor for IntentContext(0);
  v1[109] = v12;
  OUTLINED_FUNCTION_10(v12);
  v1[110] = OUTLINED_FUNCTION_19_13();
  v1[111] = swift_task_alloc();
  v13 = OUTLINED_FUNCTION_9_12();

  return MEMORY[0x1EEE6DFA0](v13, v14, v15);
}

uint64_t sub_18F2462E8()
{
  OUTLINED_FUNCTION_69();
  v1 = v0[84];
  v2 = type metadata accessor for PerformActionExecutorTask(0);
  v0[112] = v2;
  v3 = *(v1 + *(v2 + 28));
  OUTLINED_FUNCTION_6_1(&dword_18F559B28);
  v8 = v4;
  v5 = swift_task_alloc();
  v0[113] = v5;
  *v5 = v0;
  v5[1] = sub_18F2463A8;
  v6 = OUTLINED_FUNCTION_171("InitializeAction");

  return v8(v6, 16, 2, v3);
}

uint64_t sub_18F2463A8()
{
  OUTLINED_FUNCTION_21();
  v3 = v2;
  OUTLINED_FUNCTION_85();
  v5 = v4;
  OUTLINED_FUNCTION_1_0();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_39();
  *v8 = v7;
  v5[114] = v3;
  v5[115] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_8_1();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    v5[82] = v3;
    v12 = swift_task_alloc();
    v5[116] = v12;
    *v12 = v7;
    OUTLINED_FUNCTION_12_3(v12);

    return sub_18F1316DC();
  }
}

uint64_t sub_18F24650C()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  v3 = v2;
  OUTLINED_FUNCTION_1_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_39();
  *v6 = v5;
  *(v3 + 936) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_13_0();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {
    swift_task_alloc();
    OUTLINED_FUNCTION_25();
    *(v3 + 944) = v10;
    *v10 = v11;
    v10[1] = sub_18F246660;

    return sub_18F249444();
  }
}

uint64_t sub_18F246660()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_5_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_39();
  *v5 = v4;
  *(v6 + 952) = v0;

  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_18F246758(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_61_4();
  OUTLINED_FUNCTION_70_2();
  *(v20 + 57) = 1;
  sub_18F0FD6C4(*(v20 + 912) + OBJC_IVAR____TtC10AppIntents14PreparedIntent_intent, v20 + 256);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD80B0, &qword_18F549620);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD3330, &qword_18F54B488);
  if (swift_dynamicCast() && (v21 = *(v20 + 896), v22 = *(v20 + 672), __swift_destroy_boxed_opaque_existential_1Tm((v20 + 296)), (v23 = *(v22 + *(v21 + 36))) != 0))
  {
    v24 = *(v20 + 952);
    v25 = *(v20 + 888);
    v26 = v23;
    static IntentContext.current.getter(v25);
    if (v24)
    {

      OUTLINED_FUNCTION_8_25();
      v45 = *(v20 + 784);
      v46 = *(v20 + 776);
      v47 = *(v20 + 768);
      v48 = *(v20 + 760);
      v49 = *(v20 + 744);
      v50 = *(v20 + 728);
      v51 = *(v20 + 712);
      v52 = *(v20 + 688);

      OUTLINED_FUNCTION_46_1();
      OUTLINED_FUNCTION_177_0();

      return v28(v27, v28, v29, v30, v31, v32, v33, v34, v45, v46, v47, v48, v49, v50, v51, v52, a17, a18, a19, a20);
    }

    v40 = *(v20 + 888);
    v41 = *(v40 + *(*(v20 + 872) + 56));
    OUTLINED_FUNCTION_0_49();
    sub_18F12FC8C(v40, v42);
    [v26 addChild:v41 withPendingUnitCount:1];
    objc_allocWithZone(sub_18F52118C());
    v43 = v26;
    v44 = v41;
    v36 = sub_18F52115C();
    if (v36)
    {
      sub_18F52117C();
    }
  }

  else
  {
    v36 = 0;
  }

  *(v20 + 960) = v36;
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v20 + 968) = v37;
  *v37 = v38;
  OUTLINED_FUNCTION_17_26(v37);
  OUTLINED_FUNCTION_177_0();

  return sub_18F24A30C();
}

uint64_t sub_18F246A10()
{
  OUTLINED_FUNCTION_21();
  v3 = v2;
  OUTLINED_FUNCTION_85();
  v5 = v4;
  OUTLINED_FUNCTION_1_0();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_39();
  *v8 = v7;
  *(v5 + 976) = v0;

  if (!v0)
  {
    *(v5 + 984) = v3;
  }

  OUTLINED_FUNCTION_8_1();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_18F246C90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_61_4();
  OUTLINED_FUNCTION_70_2();
  v31 = *(v20 + 920);
  v21 = OUTLINED_FUNCTION_4_38();
  OUTLINED_FUNCTION_14_27(v21);

  OUTLINED_FUNCTION_40_12();
  OUTLINED_FUNCTION_177_0();

  return v23(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10, a11, a12, a13, a14, a15, a16, v31, a18, a19, a20);
}

uint64_t sub_18F246D78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_61_4();
  OUTLINED_FUNCTION_70_2();
  v21 = *(v20 + 936);
  v22 = sub_18F2D94A8(v21);
  OUTLINED_FUNCTION_162_0(v22);

  v23 = OUTLINED_FUNCTION_8_25();
  OUTLINED_FUNCTION_28_25(v23);

  OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_177_0();

  return v25(v24, v25, v26, v27, v28, v29, v30, v31, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t sub_18F246E98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_61_4();
  OUTLINED_FUNCTION_70_2();

  v31 = *(v20 + 952);
  v21 = OUTLINED_FUNCTION_4_38();
  OUTLINED_FUNCTION_14_27(v21);

  OUTLINED_FUNCTION_40_12();
  OUTLINED_FUNCTION_177_0();

  return v23(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10, a11, a12, a13, a14, a15, a16, v31, a18, a19, a20);
}

uint64_t sub_18F246F88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_61_4();
  OUTLINED_FUNCTION_70_2();
  v21 = *(v20 + 976);
  *(v20 + 664) = v21;
  v22 = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD9950, &qword_18F540020);
  v23 = swift_dynamicCast();
  v24 = *(v20 + 976);
  if (v23)
  {

    OUTLINED_FUNCTION_92_1();
    OUTLINED_FUNCTION_66();
    sub_18F1D57E0();
    sub_18F255288();
    OUTLINED_FUNCTION_43_1();
    switch(swift_getEnumCaseMultiPayload())
    {
      case 1u:
        v92 = *(v20 + 840);
        v93 = *(v20 + 776);
        v94 = *(v20 + 744);
        v95 = *(v92 + 40);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0570, &unk_18F547EA0);
        sub_18F0FD0B4(v92, v20 + 416);
        OUTLINED_FUNCTION_111();
        sub_18F144EA0();
        sub_18F0FD6C4(v20 + 416, v94 + 24);
        OUTLINED_FUNCTION_178();
        *v94 = "NeedsDisambiguation";
        *(v94 + 8) = 19;
        *(v94 + 16) = 2;
        *(v94 + 64) = v95;
        v96 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD3338, &qword_18F54B4A0) + 48);
        OUTLINED_FUNCTION_165_0();
        if (qword_1ED6FEFE8 != -1)
        {
          OUTLINED_FUNCTION_1_1(&qword_1ED6FEFE8);
        }

        v97 = *(v20 + 744);
        v98 = sub_18F52165C();
        __swift_project_value_buffer(v98, qword_1ED7077A8);
        OUTLINED_FUNCTION_22_21();
        (*(v99 + 16))(v93 + v96);
        OUTLINED_FUNCTION_22();
        swift_storeEnumTagMultiPayload();
        v100 = swift_task_alloc();
        *(v20 + 1016) = v100;
        *(v100 + 16) = v97;
        OUTLINED_FUNCTION_6_1(&unk_18F559BE8);
        v127 = v101;
        swift_task_alloc();
        OUTLINED_FUNCTION_25();
        *(v20 + 1024) = v102;
        *v102 = v103;
        v102[1] = sub_18F247FF0;
        goto LABEL_30;
      case 2u:
        v63 = *(v20 + 912);
        v64 = *(v20 + 840);
        v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD1FF8, &unk_18F547880);
        *(v20 + 58) = *(v64 + v65[12]);
        *(v20 + 1040) = *(v64 + v65[16]);
        v66 = (v64 + v65[20]);
        *(v20 + 1048) = *v66;
        *(v20 + 1056) = v66[1];
        *(v20 + 1064) = *(v64 + v65[24]);
        v67 = (v64 + v65[28]);
        *(v20 + 1072) = *v67;
        *(v20 + 1080) = v67[1];
        OUTLINED_FUNCTION_22();
        sub_18F144EA0();
        sub_18F0FD6C4(v63 + OBJC_IVAR____TtC10AppIntents14PreparedIntent_intent, v20 + 336);
        __swift_project_boxed_opaque_existential_1Tm((v20 + 336), *(v20 + 360));
        if (qword_1ED6FF6D8 != -1)
        {
          OUTLINED_FUNCTION_2_1(&qword_1ED6FF6D8);
        }

        *(v20 + 1088) = *(off_1ED6FF6C8 + 10);

        swift_task_alloc();
        OUTLINED_FUNCTION_25();
        *(v20 + 1096) = v68;
        *v68 = v69;
        v68[1] = sub_18F2485F8;
        OUTLINED_FUNCTION_153_0();
        OUTLINED_FUNCTION_177_0();

        return sub_18F2AF7E8();
      case 3u:
        v71 = *(v20 + 760);
        v72 = *(v20 + 712);
        v73 = *(v20 + 704);
        v74 = *(v20 + 696);
        v75 = *(v20 + 688);
        v76 = *(v20 + 680);
        (*(v73 + 32))(v72, *(v20 + 840), v74);
        (*(v73 + 16))(v75 + *(v76 + 20), v72, v74);
        *v75 = "OpenURL";
        *(v75 + 8) = 7;
        *(v75 + 16) = 2;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD3338, &qword_18F54B4A0);
        *v71 = "OpenURL";
        *(v71 + 8) = 7;
        *(v71 + 16) = 2;
        if (qword_1ED6FEFE8 != -1)
        {
          OUTLINED_FUNCTION_1_1(&qword_1ED6FEFE8);
        }

        v77 = *(v20 + 688);
        v78 = sub_18F52165C();
        __swift_project_value_buffer(v78, qword_1ED7077A8);
        OUTLINED_FUNCTION_22_21();
        v79 = OUTLINED_FUNCTION_112();
        v80(v79);
        OUTLINED_FUNCTION_22();
        swift_storeEnumTagMultiPayload();
        v81 = swift_task_alloc();
        *(v20 + 1128) = v81;
        *(v81 + 16) = v77;
        OUTLINED_FUNCTION_6_1(&dword_18F559C10);
        v128 = v82;
        v83 = swift_task_alloc();
        *(v20 + 1136) = v83;
        *v83 = v20;
        v83[1] = sub_18F248EE4;
        OUTLINED_FUNCTION_43_11();
        OUTLINED_FUNCTION_177_0();

        return v84(v84, v85, v86, v87, v88, v89, v90, v91, a9, a10, a11, a12, a13, a14, a15, v128, a17, a18, a19, a20);
      case 4u:
        v56 = *(v20 + 896);
        v57 = *(v20 + 856);
        v58 = *(v20 + 848);
        v59 = *(v20 + 672);
        sub_18F12FC8C(*(v20 + 840), type metadata accessor for AppIntentError.Context);
        v60 = sub_18F2199DC();
        v61 = OUTLINED_FUNCTION_28(v58, v60);
        OUTLINED_FUNCTION_91_2();
        sub_18F255288();
        v126 = sub_18F2D94A8(v61);
        swift_willThrow();
        OUTLINED_FUNCTION_3_32();
        sub_18F12FC8C(v57, v62);

        v41 = *(v59 + *(v56 + 36));
        goto LABEL_7;
      case 5u:
        OUTLINED_FUNCTION_3_32();
        sub_18F12FC8C(v112, v113);
        v114 = *(v20 + 880);

        static IntentContext.current.getter(v114);
        v115 = *(v20 + 880);
        Strong = swift_unknownObjectWeakLoadStrong();
        OUTLINED_FUNCTION_0_49();
        sub_18F12FC8C(v115, v117);
        if (!Strong)
        {
          v121 = *(v20 + 896);
          v122 = *(v20 + 672);
          v123 = sub_18F133EDC();
          OUTLINED_FUNCTION_28(&type metadata for PerformIntentError, v123);
          OUTLINED_FUNCTION_30_14(v124, 1);
          v126 = v125;
          swift_willThrow();
          v41 = *(v122 + *(v121 + 36));
          goto LABEL_7;
        }

        swift_unknownObjectRelease();
        swift_task_alloc();
        OUTLINED_FUNCTION_25();
        *(v20 + 968) = v118;
        *v118 = v119;
        OUTLINED_FUNCTION_17_26(v118);
        OUTLINED_FUNCTION_140();
        OUTLINED_FUNCTION_177_0();

        result = sub_18F24A30C();
        break;
      default:
        v25 = *(v20 + 840);
        v26 = *(v20 + 800);
        v27 = *(v20 + 784);
        v28 = (v25 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0568, &qword_18F5459F0) + 64));
        sub_18F0FD0B4(v25, v20 + 536);
        OUTLINED_FUNCTION_111();
        sub_18F144EA0();
        v29 = *(v28 + 25);
        v30 = v28[1];
        *(v20 + 112) = *v28;
        *(v20 + 128) = v30;
        *(v20 + 137) = v29;
        sub_18F0FD6C4(v20 + 536, v26 + 24);
        OUTLINED_FUNCTION_178();
        sub_18F0EF200();
        *v26 = "NeedsValue";
        *(v26 + 8) = 10;
        *(v26 + 16) = 2;
        v31 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD3338, &qword_18F54B4A0) + 48);
        OUTLINED_FUNCTION_165_0();
        if (qword_1ED6FEFE8 != -1)
        {
          OUTLINED_FUNCTION_1_1(&qword_1ED6FEFE8);
        }

        v32 = *(v20 + 800);
        v33 = sub_18F52165C();
        __swift_project_value_buffer(v33, qword_1ED7077A8);
        OUTLINED_FUNCTION_22_21();
        (*(v34 + 16))(v27 + v31);
        OUTLINED_FUNCTION_22();
        swift_storeEnumTagMultiPayload();
        v35 = swift_task_alloc();
        *(v20 + 992) = v35;
        *(v35 + 16) = v32;
        OUTLINED_FUNCTION_6_1(&unk_18F559BC8);
        v127 = v36;
        swift_task_alloc();
        OUTLINED_FUNCTION_25();
        *(v20 + 1000) = v37;
        *v37 = v38;
        v37[1] = sub_18F2479D0;
LABEL_30:
        OUTLINED_FUNCTION_48_5();
        OUTLINED_FUNCTION_177_0();

        return v110(v104, v105, v106, v107, v108, v109, v110, v111, a9, a10, a11, a12, a13, a14, a15, v127, a17, a18, a19, a20);
    }
  }

  else
  {
    v39 = *(v20 + 896);
    v40 = *(v20 + 672);

    v126 = sub_18F2D94A8(v24);
    swift_willThrow();

    v41 = *(v40 + *(v39 + 36));
LABEL_7:
    v42 = *(v20 + 960);
    if (v41)
    {
      if (v42)
      {
        v43 = v42;
        v44 = v41;
        sub_18F52116C();
      }

      else
      {
        v45 = v41;
      }

      [v41 setCompletedUnitCount_];
    }

    else
    {
    }

    v46 = OUTLINED_FUNCTION_4_38();
    OUTLINED_FUNCTION_14_27(v46);

    OUTLINED_FUNCTION_71();
    OUTLINED_FUNCTION_177_0();

    return v48(v47, v48, v49, v50, v51, v52, v53, v54, v126, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
  }

  return result;
}

uint64_t sub_18F2479D0()
{
  OUTLINED_FUNCTION_21();
  v2 = *v1;
  OUTLINED_FUNCTION_39();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 1008) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_1_44();
    sub_18F12FC8C(v4, v5);
  }

  else
  {
    v6 = *(v2 + 800);
    OUTLINED_FUNCTION_1_44();
    sub_18F12FC8C(v7, v8);

    OUTLINED_FUNCTION_20_19();
    sub_18F12FC8C(v6, v9);
  }

  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_18F247B28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_61_4();
  OUTLINED_FUNCTION_70_2();
  sub_18F18D79C(v20 + 160, v20 + 208);
  v21 = *(v20 + 856);
  v22 = *(v20 + 824);
  if (*(v20 + 248))
  {
    sub_18F20A0DC(*(v20 + 208));
  }

  else
  {
    sub_18F0FD0B4((v20 + 208), v20 + 576);
    sub_18F0FD6C4(v20 + 576, v20 + 616);
    v23 = *(v20 + 560);
    __swift_mutable_project_boxed_opaque_existential_1(v20 + 536, v23);
    OUTLINED_FUNCTION_172_0();
    v24(v20 + 616, v23);
    __swift_destroy_boxed_opaque_existential_1Tm((v20 + 576));
  }

  sub_18F18D7F8(v20 + 160);
  sub_18F0EF1A8(v20 + 112, &qword_1EACD0550, &qword_18F547EB0);
  sub_18F0EF1A8(v22, &qword_1EACCF7A0, &unk_18F53E6F0);
  OUTLINED_FUNCTION_3_32();
  sub_18F12FC8C(v21, v25);
  __swift_destroy_boxed_opaque_existential_1Tm((v20 + 536));
  v26 = *(v20 + 1008);
  v27 = *(v20 + 880);

  static IntentContext.current.getter(v27);
  if (v26)
  {
    a16 = v26;
    OUTLINED_FUNCTION_104_2();
    v30 = *(v29 + v28);
LABEL_6:
    v31 = *(v20 + 960);
    if (v30)
    {
      if (v31)
      {
        v32 = v31;
        v33 = v30;
        sub_18F52116C();
      }

      else
      {
        v41 = v30;
      }

      [v30 setCompletedUnitCount_];
    }

    else
    {
    }

    v42 = OUTLINED_FUNCTION_4_38();
    OUTLINED_FUNCTION_28_25(v42);

    OUTLINED_FUNCTION_71();
    OUTLINED_FUNCTION_177_0();

    return v44(v43, v44, v45, v46, v47, v48, v49, v50, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
  }

  v34 = *(v20 + 880);
  Strong = swift_unknownObjectWeakLoadStrong();
  OUTLINED_FUNCTION_0_49();
  sub_18F12FC8C(v34, v36);
  if (!Strong)
  {
    v51 = *(v20 + 896);
    v52 = *(v20 + 672);
    v53 = sub_18F133EDC();
    OUTLINED_FUNCTION_28(&type metadata for PerformIntentError, v53);
    OUTLINED_FUNCTION_30_14(v54, 1);
    OUTLINED_FUNCTION_162_0(v55);
    v30 = *(v52 + *(v51 + 36));
    goto LABEL_6;
  }

  swift_unknownObjectRelease();
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v20 + 968) = v37;
  *v37 = v38;
  OUTLINED_FUNCTION_17_26(v37);
  OUTLINED_FUNCTION_140();
  OUTLINED_FUNCTION_177_0();

  return sub_18F24A30C();
}

uint64_t sub_18F247E28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_61_4();
  OUTLINED_FUNCTION_70_2();
  v21 = *(v20 + 896);
  v22 = *(v20 + 856);
  v23 = *(v20 + 824);
  v24 = *(v20 + 672);
  OUTLINED_FUNCTION_20_19();
  sub_18F12FC8C(v25, v26);
  sub_18F0EF1A8(v20 + 112, &qword_1EACD0550, &qword_18F547EB0);
  sub_18F0EF1A8(v23, &qword_1EACCF7A0, &unk_18F53E6F0);
  OUTLINED_FUNCTION_3_32();
  sub_18F12FC8C(v22, v27);
  __swift_destroy_boxed_opaque_existential_1Tm((v20 + 536));

  v28 = *(v24 + *(v21 + 36));
  v29 = *(v20 + 960);
  if (v28)
  {
    if (v29)
    {
      v30 = v29;
      v31 = v28;
      sub_18F52116C();
    }

    else
    {
      v32 = v28;
    }

    [v28 setCompletedUnitCount_];
  }

  else
  {
  }

  v43 = *(v20 + 1008);
  v33 = OUTLINED_FUNCTION_4_38();
  OUTLINED_FUNCTION_14_27(v33);

  OUTLINED_FUNCTION_40_12();
  OUTLINED_FUNCTION_177_0();

  return v35(v34, v35, v36, v37, v38, v39, v40, v41, a9, a10, a11, a12, a13, a14, a15, a16, v43, a18, a19, a20);
}

uint64_t sub_18F247FF0()
{
  OUTLINED_FUNCTION_32_4();
  OUTLINED_FUNCTION_31();
  v2 = *v1;
  v3 = *v1;
  OUTLINED_FUNCTION_39();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 1032) = v0;

  if (v0)
  {
    sub_18F12FC8C(*(v2 + 776), type metadata accessor for Annotation);
  }

  else
  {
    v5 = *(v3 + 744);
    OUTLINED_FUNCTION_1_44();
    sub_18F12FC8C(v6, v7);

    OUTLINED_FUNCTION_19_22();
    sub_18F12FC8C(v5, v8);
  }

  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_31_9();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_18F248164(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_61_4();
  OUTLINED_FUNCTION_70_2();
  sub_18F18F490(v20 + 16, v20 + 64);
  v21 = *(v20 + 856);
  v22 = *(v20 + 816);
  if (*(v20 + 104))
  {
    sub_18F20A0DC(*(v20 + 64));
  }

  else
  {
    sub_18F0FD0B4((v20 + 64), v20 + 456);
    sub_18F0FD6C4(v20 + 456, v20 + 496);
    v23 = *(v20 + 440);
    __swift_mutable_project_boxed_opaque_existential_1(v20 + 416, v23);
    OUTLINED_FUNCTION_172_0();
    v24(v20 + 496, v23);
    __swift_destroy_boxed_opaque_existential_1Tm((v20 + 456));
  }

  sub_18F18F4EC(v20 + 16);
  sub_18F0EF1A8(v22, &qword_1EACCF7A0, &unk_18F53E6F0);
  OUTLINED_FUNCTION_3_32();
  sub_18F12FC8C(v21, v25);
  __swift_destroy_boxed_opaque_existential_1Tm((v20 + 416));
  v26 = *(v20 + 1032);
  v27 = *(v20 + 880);

  static IntentContext.current.getter(v27);
  if (v26)
  {
    a16 = v26;
    OUTLINED_FUNCTION_104_2();
    v30 = *(v29 + v28);
LABEL_6:
    v31 = *(v20 + 960);
    if (v30)
    {
      if (v31)
      {
        v32 = v31;
        v33 = v30;
        sub_18F52116C();
      }

      else
      {
        v41 = v30;
      }

      [v30 setCompletedUnitCount_];
    }

    else
    {
    }

    v42 = OUTLINED_FUNCTION_4_38();
    OUTLINED_FUNCTION_28_25(v42);

    OUTLINED_FUNCTION_71();
    OUTLINED_FUNCTION_177_0();

    return v44(v43, v44, v45, v46, v47, v48, v49, v50, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
  }

  v34 = *(v20 + 880);
  Strong = swift_unknownObjectWeakLoadStrong();
  OUTLINED_FUNCTION_0_49();
  sub_18F12FC8C(v34, v36);
  if (!Strong)
  {
    v51 = *(v20 + 896);
    v52 = *(v20 + 672);
    v53 = sub_18F133EDC();
    OUTLINED_FUNCTION_28(&type metadata for PerformIntentError, v53);
    OUTLINED_FUNCTION_30_14(v54, 1);
    OUTLINED_FUNCTION_162_0(v55);
    v30 = *(v52 + *(v51 + 36));
    goto LABEL_6;
  }

  swift_unknownObjectRelease();
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v20 + 968) = v37;
  *v37 = v38;
  OUTLINED_FUNCTION_17_26(v37);
  OUTLINED_FUNCTION_140();
  OUTLINED_FUNCTION_177_0();

  return sub_18F24A30C();
}

uint64_t sub_18F248448(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_61_4();
  OUTLINED_FUNCTION_70_2();
  v21 = *(v20 + 896);
  v22 = *(v20 + 856);
  v23 = *(v20 + 816);
  v24 = *(v20 + 672);
  OUTLINED_FUNCTION_19_22();
  sub_18F12FC8C(v25, v26);
  sub_18F0EF1A8(v23, &qword_1EACCF7A0, &unk_18F53E6F0);
  OUTLINED_FUNCTION_3_32();
  sub_18F12FC8C(v22, v27);
  __swift_destroy_boxed_opaque_existential_1Tm((v20 + 416));

  v28 = *(v24 + *(v21 + 36));
  v29 = *(v20 + 960);
  if (v28)
  {
    if (v29)
    {
      v30 = v29;
      v31 = v28;
      sub_18F52116C();
    }

    else
    {
      v32 = v28;
    }

    [v28 setCompletedUnitCount_];
  }

  else
  {
  }

  v43 = *(v20 + 1032);
  v33 = OUTLINED_FUNCTION_4_38();
  OUTLINED_FUNCTION_14_27(v33);

  OUTLINED_FUNCTION_40_12();
  OUTLINED_FUNCTION_177_0();

  return v35(v34, v35, v36, v37, v38, v39, v40, v41, a9, a10, a11, a12, a13, a14, a15, a16, v43, a18, a19, a20);
}

uint64_t sub_18F2485F8()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  v1 = *v0;
  OUTLINED_FUNCTION_39();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_9_12();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_18F2486F8()
{
  v1 = *(v0 + 1080);
  v2 = *(v0 + 1072);
  v26 = *(v0 + 1056);
  v27 = *(v0 + 1064);
  v24 = *(v0 + 1040);
  v25 = *(v0 + 1048);
  v3 = *(v0 + 58);
  v4 = *(v0 + 768);
  v5 = *(v0 + 728);
  v6 = *(v0 + 720);
  v7 = *(v0 + 392);
  v8 = *(v0 + 400);
  v23 = *(v0 + 408);
  v22 = *(v0 + 376);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 336));
  sub_18F0EF200();
  *v5 = "ContinueInApp";
  *(v5 + 8) = 13;
  *(v5 + 16) = 2;
  v9 = (v5 + v6[6]);
  *v9 = v2;
  v9[1] = v1;
  *(v5 + v6[7]) = 1;
  *(v5 + v6[8]) = v3;
  *(v5 + v6[9]) = v24;
  v10 = v5 + v6[10];
  *v10 = v22;
  *(v10 + 16) = v7;
  *(v10 + 24) = v8;
  *(v10 + 32) = v23;
  v11 = (v5 + v6[11]);
  *v11 = v25;
  v11[1] = v26;
  *(v5 + v6[12]) = v27;
  v12 = OUTLINED_FUNCTION_56();
  sub_18F0F693C(v12, v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD3338, &qword_18F54B4A0);
  *v4 = "ContinueInApp";
  *(v4 + 8) = 13;
  *(v4 + 16) = 2;
  if (qword_1ED6FEFE8 != -1)
  {
    OUTLINED_FUNCTION_1_1(&qword_1ED6FEFE8);
  }

  v14 = *(v0 + 728);
  v15 = sub_18F52165C();
  __swift_project_value_buffer(v15, qword_1ED7077A8);
  OUTLINED_FUNCTION_22_21();
  v16 = OUTLINED_FUNCTION_112();
  v17(v16);
  OUTLINED_FUNCTION_22();
  swift_storeEnumTagMultiPayload();
  v18 = swift_task_alloc();
  *(v0 + 1104) = v18;
  *(v18 + 16) = v14;
  OUTLINED_FUNCTION_6_1(&dword_18F559C10);
  v28 = v19;
  v20 = swift_task_alloc();
  *(v0 + 1112) = v20;
  *v20 = v0;
  v20[1] = sub_18F24896C;
  OUTLINED_FUNCTION_43_11();

  return v28();
}

uint64_t sub_18F24896C()
{
  OUTLINED_FUNCTION_32_4();
  OUTLINED_FUNCTION_31();
  v2 = *v1;
  v3 = *v1;
  OUTLINED_FUNCTION_39();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 1120) = v0;

  if (v0)
  {
    sub_18F12FC8C(*(v2 + 768), type metadata accessor for Annotation);
  }

  else
  {
    v5 = *(v3 + 728);
    OUTLINED_FUNCTION_1_44();
    sub_18F12FC8C(v6, v7);

    OUTLINED_FUNCTION_18_24();
    sub_18F12FC8C(v5, v8);
  }

  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_31_9();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_18F248AE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_61_4();
  OUTLINED_FUNCTION_70_2();
  v21 = *(v20 + 1120);
  v22 = *(v20 + 1080);
  v23 = *(v20 + 1072);
  v24 = *(v20 + 896);
  v25 = *(v20 + 856);
  v26 = *(v20 + 808);
  v27 = *(v20 + 672);
  OUTLINED_FUNCTION_18_24();
  sub_18F12FC8C(v28, v29);
  v30 = sub_18F2D94A8(v21);
  OUTLINED_FUNCTION_162_0(v30);

  sub_18F0F689C(v23, v22);
  sub_18F0EF1A8(v26, &qword_1EACCF7A0, &unk_18F53E6F0);
  OUTLINED_FUNCTION_3_32();
  sub_18F12FC8C(v25, v31);

  v32 = *(v27 + *(v24 + 36));
  v33 = *(v20 + 960);
  if (v32)
  {
    if (v33)
    {
      v34 = v33;
      v35 = v32;
      sub_18F52116C();
    }

    else
    {
      v36 = v32;
    }

    [v32 setCompletedUnitCount_];
  }

  else
  {
  }

  v37 = OUTLINED_FUNCTION_4_38();
  OUTLINED_FUNCTION_28_25(v37);

  OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_177_0();

  return v39(v38, v39, v40, v41, v42, v43, v44, v45, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t sub_18F248EE4()
{
  OUTLINED_FUNCTION_32_4();
  OUTLINED_FUNCTION_31();
  v2 = *v1;
  v3 = *v1;
  OUTLINED_FUNCTION_39();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 1144) = v0;

  if (v0)
  {
    sub_18F12FC8C(*(v2 + 760), type metadata accessor for Annotation);
  }

  else
  {
    v5 = *(v3 + 688);
    OUTLINED_FUNCTION_1_44();
    sub_18F12FC8C(v6, v7);

    OUTLINED_FUNCTION_93_2();
    sub_18F12FC8C(v5, v8);
  }

  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_31_9();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_18F249058(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_61_4();
  OUTLINED_FUNCTION_70_2();
  v21 = *(v20 + 1144);
  v22 = *(v20 + 896);
  v23 = *(v20 + 856);
  v24 = *(v20 + 712);
  v25 = *(v20 + 704);
  v26 = *(v20 + 696);
  v27 = *(v20 + 672);
  OUTLINED_FUNCTION_93_2();
  sub_18F12FC8C(v28, v29);
  v30 = sub_18F2D94A8(v21);
  OUTLINED_FUNCTION_162_0(v30);

  (*(v25 + 8))(v24, v26);
  OUTLINED_FUNCTION_3_32();
  sub_18F12FC8C(v23, v31);

  v32 = *(v27 + *(v22 + 36));
  v33 = *(v20 + 960);
  if (v32)
  {
    if (v33)
    {
      v34 = v33;
      v35 = v32;
      sub_18F52116C();
    }

    else
    {
      v36 = v32;
    }

    [v32 setCompletedUnitCount_];
  }

  else
  {
  }

  v37 = OUTLINED_FUNCTION_4_38();
  OUTLINED_FUNCTION_28_25(v37);

  OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_177_0();

  return v39(v38, v39, v40, v41, v42, v43, v44, v45, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t sub_18F249444()
{
  OUTLINED_FUNCTION_69();
  v1[25] = v2;
  v1[26] = v0;
  v3 = sub_18F520E6C();
  v1[27] = v3;
  OUTLINED_FUNCTION_51(v3);
  v1[28] = v4;
  v1[29] = OUTLINED_FUNCTION_34_0();
  v5 = type metadata accessor for Annotation(0);
  v1[30] = v5;
  OUTLINED_FUNCTION_10(v5);
  v1[31] = OUTLINED_FUNCTION_34_0();
  v6 = OUTLINED_FUNCTION_9_12();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_18F24950C()
{
  OUTLINED_FUNCTION_21();
  v1 = **(v0 + 200);
  *(v0 + 256) = v1;
  sub_18F0FD6C4(v1 + OBJC_IVAR____TtC10AppIntents14PreparedIntent_intent, v0 + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD80B0, &qword_18F549620);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD3388, &qword_18F54B588);
  if (swift_dynamicCast())
  {
    sub_18F0FD0B4((v0 + 96), v0 + 16);
    __swift_project_boxed_opaque_existential_1Tm((v0 + 16), *(v0 + 40));
    v2 = swift_task_alloc();
    *(v0 + 264) = v2;
    *v2 = v0;
    OUTLINED_FUNCTION_12_3(v2);
    v3 = OUTLINED_FUNCTION_22();

    return sub_18F3ACD78(v3, v4);
  }

  else
  {
    *(v0 + 128) = 0;
    *(v0 + 96) = 0u;
    *(v0 + 112) = 0u;
    sub_18F0EF1A8(v0 + 96, &qword_1EACD3390, &qword_18F54B590);

    OUTLINED_FUNCTION_6();

    return v6();
  }
}

uint64_t sub_18F249694()
{
  OUTLINED_FUNCTION_21();
  v3 = v2;
  OUTLINED_FUNCTION_85();
  v5 = v4;
  OUTLINED_FUNCTION_1_0();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_39();
  *v8 = v7;
  v5[34] = v9;
  v5[35] = v0;

  if (!v0)
  {
    v5[36] = v3;
  }

  OUTLINED_FUNCTION_8_1();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_18F24979C()
{
  OUTLINED_FUNCTION_69();
  *(v0 + 296) = (*(v0 + 288))();
  *(v0 + 304) = v1;
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v0 + 312) = v2;
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_34_13(v2);

  return v5(v4);
}

uint64_t sub_18F249870()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_5_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_39();
  *v5 = v4;
  *(v6 + 320) = v0;

  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_18F249968()
{
  *(v0 + 328) = *(v0 + 184);
  v1 = OUTLINED_FUNCTION_9_12();
  return MEMORY[0x1EEE6DFA0](v1, v2, v3);
}

uint64_t sub_18F249994()
{
  OUTLINED_FUNCTION_69();
  v1 = v0[41];
  if (v1)
  {
    v2 = swift_task_alloc();
    v0[42] = v2;
    *v2 = v0;
    v2[1] = sub_18F249A88;
    v3 = v0[25];

    return sub_18F24F578(v1, v3);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);

    OUTLINED_FUNCTION_6();

    return v5();
  }
}

uint64_t sub_18F249A88()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_5_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_39();
  *v5 = v4;
  *(v6 + 344) = v0;

  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_18F249BA8()
{
  OUTLINED_FUNCTION_69();
  *(v0 + 192) = *(v0 + 320);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD9950, &qword_18F540020);
  swift_willThrowTypedImpl();
  v1 = OUTLINED_FUNCTION_9_12();

  return MEMORY[0x1EEE6DFA0](v1, v2, v3);
}

uint64_t sub_18F249C30()
{
  OUTLINED_FUNCTION_21();

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  OUTLINED_FUNCTION_71();

  return v1();
}

uint64_t sub_18F249CC0()
{
  OUTLINED_FUNCTION_24_4();
  *(v0 + 136) = "ResolveParameters";
  v3 = *(v0 + 248);
  v2 = *(v0 + 256);
  *(v0 + 144) = 17;
  *(v0 + 152) = 2;
  *(v0 + 160) = v2;
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD3338, &qword_18F54B4A0) + 48);
  OUTLINED_FUNCTION_165_0();
  if (qword_1ED6FEFE8 != -1)
  {
    OUTLINED_FUNCTION_1_1(&qword_1ED6FEFE8);
  }

  v5 = sub_18F52165C();
  __swift_project_value_buffer(v5, qword_1ED7077A8);
  OUTLINED_FUNCTION_22_21();
  (*(v6 + 16))(v3 + v4);
  OUTLINED_FUNCTION_22();
  swift_storeEnumTagMultiPayload();
  v7 = swift_task_alloc();
  *(v0 + 352) = v7;
  *(v7 + 16) = v0 + 136;
  if (qword_1ED6FD140 != -1)
  {
    OUTLINED_FUNCTION_6_36(&qword_1ED6FD140);
  }

  v8 = *(v0 + 248);
  v10 = *(v0 + 224);
  v9 = *(v0 + 232);
  v11 = *(v0 + 216);
  _s10AppIntents09TransientA6EntityPAAE2id10Foundation4UUIDVvg_0();
  v12 = _s10Foundation4UUIDV10AppIntentsE22entityIdentifierStringSSvg_0();
  v14 = sub_18F12C810(0xCuLL, v12, v13);
  MEMORY[0x193ADAF70](v14);
  OUTLINED_FUNCTION_99_1();

  *(v0 + 360) = v1;
  (*(v10 + 8))(v9, v11);
  *(v0 + 168) = v4;
  *(v0 + 176) = v1;
  v15 = swift_task_alloc();
  *(v0 + 368) = v15;
  v15[2] = v8;
  v15[3] = 0;
  v15[4] = 0;
  v15[5] = &unk_18F54B5A0;
  v15[6] = v7;
  v16 = swift_task_alloc();
  *(v0 + 376) = v16;
  *v16 = v0;
  v16[1] = sub_18F249F2C;
  OUTLINED_FUNCTION_29_1();

  return MEMORY[0x1EEE6DE98](v17);
}

uint64_t sub_18F249F2C()
{
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_85();
  v3 = v2;
  OUTLINED_FUNCTION_1_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_39();
  *v6 = v5;

  if (v0)
  {
  }

  else
  {
    v7 = *(v3 + 248);

    OUTLINED_FUNCTION_1_44();
    sub_18F12FC8C(v7, v8);
  }

  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_18F24A070()
{
  OUTLINED_FUNCTION_69();

  OUTLINED_FUNCTION_63_2();
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v0 + 312) = v1;
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_34_13(v1);

  return v4(v3);
}

uint64_t sub_18F24A10C()
{
  OUTLINED_FUNCTION_69();
  v1 = *(v0 + 248);

  OUTLINED_FUNCTION_1_44();
  sub_18F12FC8C(v1, v2);

  OUTLINED_FUNCTION_63_2();
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v0 + 312) = v3;
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_34_13(v3);

  return v6(v5);
}

uint64_t sub_18F24A1C0()
{
  OUTLINED_FUNCTION_21();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  OUTLINED_FUNCTION_71();

  return v1();
}

uint64_t sub_18F24A23C()
{
  OUTLINED_FUNCTION_29();
  v1 = *(v0 + 344);
  sub_18F2D94A8(v1);
  swift_willThrow();

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  OUTLINED_FUNCTION_71();

  return v2();
}

uint64_t sub_18F24A30C()
{
  OUTLINED_FUNCTION_69();
  v1[128] = v0;
  v1[127] = v2;
  v1[126] = v3;
  v4 = type metadata accessor for AppIntentError(0);
  v1[129] = v4;
  OUTLINED_FUNCTION_10(v4);
  v1[130] = OUTLINED_FUNCTION_19_13();
  v1[131] = swift_task_alloc();
  v5 = sub_18F520E6C();
  v1[132] = v5;
  OUTLINED_FUNCTION_51(v5);
  v1[133] = v6;
  v1[134] = OUTLINED_FUNCTION_34_0();
  v7 = type metadata accessor for PerformActionExecutorTask(0);
  v1[135] = v7;
  OUTLINED_FUNCTION_10(v7);
  v1[136] = OUTLINED_FUNCTION_19_13();
  v1[137] = swift_task_alloc();
  v1[138] = swift_task_alloc();
  v1[139] = swift_task_alloc();
  v1[140] = swift_task_alloc();
  v1[141] = swift_task_alloc();
  v1[142] = swift_task_alloc();
  v8 = type metadata accessor for Annotation(0);
  v1[143] = v8;
  OUTLINED_FUNCTION_10(v8);
  v1[144] = OUTLINED_FUNCTION_19_13();
  v1[145] = swift_task_alloc();
  v1[146] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A0, &unk_18F53E6F0);
  OUTLINED_FUNCTION_10(v9);
  v1[147] = OUTLINED_FUNCTION_19_13();
  v1[148] = swift_task_alloc();
  v10 = type metadata accessor for ContinueInAppTask(0);
  v1[149] = v10;
  OUTLINED_FUNCTION_10(v10);
  v1[150] = OUTLINED_FUNCTION_34_0();
  v11 = type metadata accessor for IntentContext(0);
  v1[151] = v11;
  OUTLINED_FUNCTION_10(v11);
  v1[152] = OUTLINED_FUNCTION_19_13();
  v1[153] = swift_task_alloc();
  v12 = OUTLINED_FUNCTION_9_12();

  return MEMORY[0x1EEE6DFA0](v12, v13, v14);
}

uint64_t sub_18F24A51C()
{
  OUTLINED_FUNCTION_69();
  *(v0 + 1232) = **(v0 + 1008);
  OUTLINED_FUNCTION_6_1(&dword_18F559C78);
  v4 = v1;
  v2 = swift_task_alloc();
  *(v0 + 1240) = v2;
  *v2 = v0;
  v2[1] = sub_18F24A5D0;

  return v4();
}

uint64_t sub_18F24A5D0()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_5_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_39();
  *v5 = v4;
  *(v6 + 1248) = v0;

  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_18F24B0C0()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  v1 = *v0;
  OUTLINED_FUNCTION_39();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_9_12();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_18F24B1C0()
{
  OUTLINED_FUNCTION_37_2();
  v1 = *(v0 + 1280);
  v2 = *(v0 + 1200);
  v3 = *(v0 + 1192);
  v4 = *(v0 + 1168);
  v5 = *(v0 + 208);
  v6 = *(v0 + 216);
  v7 = *(v0 + 224);
  v21 = *(v0 + 192);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 472));
  v8 = type metadata accessor for IntentDialog(0);
  OUTLINED_FUNCTION_181_1(v8);
  *v2 = "ContinueInApp";
  *(v2 + 8) = 13;
  *(v2 + 16) = 2;
  sub_18F144EA0();
  v9 = (v2 + v3[6]);
  *v9 = 0;
  v9[1] = 0;
  *(v2 + v3[7]) = 0;
  *(v2 + v3[8]) = 0;
  *(v2 + v3[9]) = v1;
  v10 = v2 + v3[10];
  *v10 = v21;
  *(v10 + 16) = v5;
  *(v10 + 24) = v6;
  *(v10 + 32) = v7;
  v11 = (v2 + v3[11]);
  *v11 = 0;
  v11[1] = 0;
  *(v2 + v3[12]) = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD3338, &qword_18F54B4A0);
  *v4 = "ContinueInApp";
  *(v4 + 8) = 13;
  *(v4 + 16) = 2;
  if (qword_1ED6FEFE8 != -1)
  {
    OUTLINED_FUNCTION_1_1(&qword_1ED6FEFE8);
  }

  v12 = *(v0 + 1200);
  v13 = sub_18F52165C();
  __swift_project_value_buffer(v13, qword_1ED7077A8);
  OUTLINED_FUNCTION_22_21();
  v14 = OUTLINED_FUNCTION_112();
  v15(v14);
  OUTLINED_FUNCTION_22();
  swift_storeEnumTagMultiPayload();
  v16 = swift_task_alloc();
  *(v0 + 1304) = v16;
  *(v16 + 16) = v12;
  OUTLINED_FUNCTION_6_1(&dword_18F559C10);
  v17 = swift_task_alloc();
  *(v0 + 1312) = v17;
  *v17 = v0;
  v17[1] = sub_18F24B3FC;
  OUTLINED_FUNCTION_43_11();
  OUTLINED_FUNCTION_180_0();

  return v18();
}

uint64_t sub_18F24B3FC()
{
  OUTLINED_FUNCTION_21();
  v2 = *v1;
  OUTLINED_FUNCTION_39();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 1320) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_1_44();
    sub_18F12FC8C(v4, v5);
  }

  else
  {
    v6 = *(v2 + 1200);
    OUTLINED_FUNCTION_1_44();
    sub_18F12FC8C(v7, v8);

    OUTLINED_FUNCTION_18_24();
    sub_18F12FC8C(v6, v9);
  }

  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_18F24BD48()
{
  OUTLINED_FUNCTION_18_24();
  sub_18F12FC8C(v1, v2);
  v3 = *(v0 + 1320);
  v4 = *(v0 + 1224);
  sub_18F2D94A8(v3);
  swift_willThrow();

  OUTLINED_FUNCTION_0_49();
  sub_18F12FC8C(v4, v5);
  OUTLINED_FUNCTION_11_24();
  OUTLINED_FUNCTION_27_21();
  OUTLINED_FUNCTION_85_3();

  OUTLINED_FUNCTION_71();

  return v6();
}

uint64_t sub_18F24BEBC()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  v3 = v2;
  OUTLINED_FUNCTION_1_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_39();
  *v6 = v5;
  *(v3 + 1384) = v0;

  OUTLINED_FUNCTION_1_44();
  sub_18F12FC8C(v7, v8);

  if (!v0)
  {
    sub_18F25576C(v3 + 128);
  }

  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

void sub_18F24BFEC()
{
  OUTLINED_FUNCTION_24_4();
  v1 = *(v0 + 1352);
  OUTLINED_FUNCTION_94_2();
  v2 = *(v0 + 1152);
  sub_18F0FD6C4(v4 + v3, v0 + 40);
  v5 = sub_18F246030();
  *(v0 + 16) = "LocateActionPerformer";
  *(v0 + 24) = 21;
  *(v0 + 32) = 2;
  *(v0 + 80) = v5;
  *(v0 + 88) = v6 & 1;
  *v2 = "LocateActionPerformer";
  *(v2 + 8) = 21;
  *(v2 + 16) = 2;
  OUTLINED_FUNCTION_111();
  v1();
  OUTLINED_FUNCTION_43_1();
  swift_storeEnumTagMultiPayload();
  v7 = swift_task_alloc();
  *(v0 + 1392) = v7;
  *(v7 + 16) = v0 + 16;
  OUTLINED_FUNCTION_6_1(&unk_18F559C28);
  v8 = swift_task_alloc();
  *(v0 + 1400) = v8;
  *v8 = v0;
  v8[1] = sub_18F24C14C;
  OUTLINED_FUNCTION_171(*(v0 + 1152));
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_29_1();

  __asm { BR              X5 }
}

uint64_t sub_18F24C14C()
{
  OUTLINED_FUNCTION_21();
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_85();
  v7 = v6;
  OUTLINED_FUNCTION_1_0();
  *v8 = v7;
  v9 = *v1;
  OUTLINED_FUNCTION_39();
  *v10 = v9;
  v7[176] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_1_44();
    sub_18F12FC8C(v11, v12);
  }

  else
  {
    v7[177] = v3;
    v7[178] = v5;
    OUTLINED_FUNCTION_1_44();
    sub_18F12FC8C(v13, v14);

    sub_18F25583C((v7 + 2));
  }

  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v15, v16, v17);
}

uint64_t sub_18F24C294(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_61_4();
  OUTLINED_FUNCTION_70_2();
  v21 = *(v20 + 1224);
  sub_18F25576C(v20 + 128);
  OUTLINED_FUNCTION_0_49();
  sub_18F12FC8C(v21, v22);
  v32 = *(v20 + 1384);
  OUTLINED_FUNCTION_9_26();

  OUTLINED_FUNCTION_40_12();
  OUTLINED_FUNCTION_177_0();

  return v24(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10, a11, a12, a13, a14, a15, a16, v32, a18, a19, a20);
}

uint64_t sub_18F24CA24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_61_4();
  OUTLINED_FUNCTION_70_2();
  v21 = *(v20 + 1224);
  sub_18F25583C(v20 + 16);
  OUTLINED_FUNCTION_0_49();
  sub_18F12FC8C(v21, v22);
  v32 = *(v20 + 1408);
  OUTLINED_FUNCTION_9_26();

  OUTLINED_FUNCTION_40_12();
  OUTLINED_FUNCTION_177_0();

  return v24(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10, a11, a12, a13, a14, a15, a16, v32, a18, a19, a20);
}

uint64_t sub_18F24CB28()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_5_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_39();
  *v5 = v4;
  *(v6 + 1440) = v0;

  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_18F24CDCC()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_5_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_39();
  *v5 = v4;
  *(v6 + 1464) = v0;

  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_18F24D09C()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_5_1();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 1480) = v3;

  v4 = OUTLINED_FUNCTION_9_12();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_18F24D184(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11)
{
  OUTLINED_FUNCTION_24_4();
  v12 = *(v11 + 1256);
  v13 = *(v11 + 1224);
  *(v11 + 1488) = sub_18F22B4E0();
  __swift_project_boxed_opaque_existential_1Tm((v11 + 352), *(v11 + 376));
  v14 = [*(v13 + 8) localeIdentifier];
  sub_18F5218DC();
  v16 = v15;

  *(v11 + 1496) = v16;
  v17 = *(v13 + 48);
  *(v11 + 92) = *(v13 + 32);
  *(v11 + 108) = v17;
  *(v11 + 124) = 0;
  *(v11 + 992) = 0;
  *(v11 + 1504) = [v12 exportedContentConfiguration];
  [v12 convertArrayResultToAsyncSequence];
  OUTLINED_FUNCTION_66();
  OUTLINED_FUNCTION_292();
  OUTLINED_FUNCTION_66();
  sub_18F0F9044(v18);
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v11 + 1512) = v19;
  *v19 = v20;
  v19[1] = sub_18F24D30C;
  OUTLINED_FUNCTION_29_1();

  return sub_18F3079A8(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10, a11);
}

uint64_t sub_18F24D30C()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_5_1();
  *v2 = v1;
  v4 = *(v3 + 1504);
  v5 = *v0;
  OUTLINED_FUNCTION_39();
  *v6 = v5;
  *(v8 + 1520) = v7;

  v9 = OUTLINED_FUNCTION_9_12();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

void sub_18F24D424()
{
  v63 = v0;
  v1 = *(v0 + 1464);
  sub_18F24EB48(*(v0 + 1232), *(v0 + 1520));
  if (v1)
  {
    v2 = *(v0 + 1480);
    v3 = *(v0 + 1224);

    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 352));
    OUTLINED_FUNCTION_0_49();
    sub_18F12FC8C(v3, v4);
    sub_18F0EF1A8(v0 + 552, &qword_1EACD3350, &unk_18F54B500);
    OUTLINED_FUNCTION_12_31();
    OUTLINED_FUNCTION_27_21();
    OUTLINED_FUNCTION_85_3();

    OUTLINED_FUNCTION_71();
    OUTLINED_FUNCTION_141_0();

    __asm { BRAA            X1, X16 }
  }

  v7 = [*(v0 + 1264) outputFlags];
  if (v7)
  {
    v8 = v7;
    OUTLINED_FUNCTION_2_46();
    sub_18F255288();
    v9 = sub_18F52163C();
    v10 = sub_18F52223C();
    v11 = os_log_type_enabled(v9, v10);
    v12 = *(v0 + 1104);
    if (v11)
    {
      v13 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      *v13 = 136446466;
      OUTLINED_FUNCTION_64_1();
      OUTLINED_FUNCTION_131_0();
      OUTLINED_FUNCTION_5_34();
      v14 = OUTLINED_FUNCTION_115();
      sub_18F11897C(v14, v15, v16);
      OUTLINED_FUNCTION_161_0();
      *(v13 + 4) = v12;
      *(v13 + 12) = 2082;
      OUTLINED_FUNCTION_170_0();
      MEMORY[0x193ADB000](78, 0xE100000000000000);
      OUTLINED_FUNCTION_125_0();
      OUTLINED_FUNCTION_168_0();
      if (!v17)
      {
        OUTLINED_FUNCTION_6_36(&qword_1ED6FD140);
      }

      sub_18F52305C();
      v18 = *(v0 + 896);
      MEMORY[0x193ADB000](*(v0 + 888), v18);

      OUTLINED_FUNCTION_116();
      sub_18F11897C(v61, v62, &v60);
      OUTLINED_FUNCTION_136_0();
      *(v13 + 14) = v18;
      _os_log_impl(&dword_18F0E9000, v9, v10, "[%{public}s %{public}s] Verifying that the returned type matches the expected types from metadata", v13, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_105();
      MEMORY[0x193ADD350](v13, -1, -1);
    }

    else
    {

      OUTLINED_FUNCTION_5_34();
    }

    v19 = *(v0 + 1264);
    [v8 unsignedIntegerValue];
    v20 = [v19 outputType];
    v21 = OUTLINED_FUNCTION_43_1();
    v1 = sub_18F18FCD0(v21, v22, v20);
    v24 = v23;

    if (v24)
    {
      OUTLINED_FUNCTION_2_46();
      sub_18F255288();
      _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
      v25 = sub_18F52163C();
      v26 = sub_18F52221C();

      if (os_log_type_enabled(v25, v26))
      {
        v27 = OUTLINED_FUNCTION_75();
        v28 = swift_slowAlloc();
        v60 = v28;
        *v27 = 136446722;
        v29 = OUTLINED_FUNCTION_64_1();
        v31 = v30;
        OUTLINED_FUNCTION_5_34();
        v32 = sub_18F11897C(v29, v31, &v60);

        *(v27 + 4) = v32;
        *(v27 + 12) = 2082;
        OUTLINED_FUNCTION_170_0();
        MEMORY[0x193ADB000](69, 0xE100000000000000);
        OUTLINED_FUNCTION_125_0();
        if (qword_1ED6FD140 != -1)
        {
          OUTLINED_FUNCTION_6_36(&qword_1ED6FD140);
        }

        sub_18F52305C();
        MEMORY[0x193ADB000](*(v0 + 872), *(v0 + 880));

        OUTLINED_FUNCTION_116();
        v33 = sub_18F11897C(v61, v62, &v60);

        *(v27 + 14) = v33;
        *(v27 + 22) = 2082;
        *(v27 + 24) = sub_18F11897C(v1, v24, &v60);
        _os_log_impl(&dword_18F0E9000, v25, v26, "[%{public}s %{public}s] %{public}s", v27, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x193ADD350](v28, -1, -1);
        OUTLINED_FUNCTION_65();
      }

      else
      {

        OUTLINED_FUNCTION_5_34();
      }

      sub_18F522A3C();
      OUTLINED_FUNCTION_141_0();
      return;
    }
  }

  sub_18F0FD6C4(v0 + 352, v0 + 672);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0848, &qword_18F542460);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD3358, &qword_18F54B510);
  if (swift_dynamicCast())
  {
    sub_18F0FD0B4((v0 + 712), v0 + 632);
    v34 = static IntentContext.connectionIdentifier.getter();
    if (qword_1ED6FF6D8 != -1)
    {
      OUTLINED_FUNCTION_2_1(&qword_1ED6FF6D8);
    }

    v35 = *(v0 + 1520);
    v36 = *(v0 + 1272);
    v37 = *(v0 + 1232);
    v38 = *(v0 + 1072);
    v1 = *(v0 + 1056);
    v39 = off_1ED6FF6C8;

    v40 = [v35 identifier];
    sub_18F520E4C();

    sub_18F0FD6C4(v37 + v36, v0 + 232);
    __swift_project_boxed_opaque_existential_1Tm((v0 + 232), *(v0 + 256));
    DynamicType = swift_getDynamicType();
    v42 = *(v0 + 264);
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 232));
    v43 = *(v0 + 656);
    v44 = *(v0 + 664);
    v45 = __swift_project_boxed_opaque_existential_1Tm((v0 + 632), v43);
    sub_18F3E9CA0(v34, v45, v38, DynamicType, v42, v39, v43, v44);

    v46 = OUTLINED_FUNCTION_66();
    v47(v46);
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 632));
  }

  else
  {
    OUTLINED_FUNCTION_109();
    sub_18F0EF1A8(v0 + 712, &qword_1EACD3360, &qword_18F54B518);
  }

  v48 = *(v0 + 1256);
  sub_18F0FD6C4(*(v0 + 1232) + *(v0 + 1272), v0 + 752);
  v49 = sub_18F24F40C(v48, (v0 + 752));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 752));
  if (!v49)
  {
    OUTLINED_FUNCTION_110_0();
    sub_18F0F21A8(0, &qword_1ED6FD860, 0x1E69AC640);
    OUTLINED_FUNCTION_88_2();

    sub_18F33AE40(v55);
    sub_18F22B420();
    v56 = objc_allocWithZone(MEMORY[0x1E69AD038]);
    OUTLINED_FUNCTION_133_0();
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 352));
    OUTLINED_FUNCTION_0_49();
    sub_18F12FC8C(v1, v57);
    sub_18F0EF1A8(v0 + 552, &qword_1EACD3350, &unk_18F54B500);

    OUTLINED_FUNCTION_12_7();
    OUTLINED_FUNCTION_141_0();

    __asm { BRAA            X2, X16 }
  }

  OUTLINED_FUNCTION_94_2();
  sub_18F0FD6C4(v51 + v50, v0 + 792);
  __swift_project_boxed_opaque_existential_1Tm((v0 + 792), *(v0 + 816));
  v52 = type metadata accessor for IntentDialog(0);
  OUTLINED_FUNCTION_181_1(v52);
  v53 = swift_task_alloc();
  *(v0 + 1528) = v53;
  *v53 = v0;
  v53[1] = sub_18F24DDE4;
  OUTLINED_FUNCTION_171(*(v0 + 1176));
  OUTLINED_FUNCTION_141_0();

  AppIntent.continueInForeground(_:alwaysConfirm:)();
}

uint64_t sub_18F24DDE4()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  v3 = v2;
  OUTLINED_FUNCTION_1_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_39();
  *v6 = v5;
  *(v3 + 1536) = v0;

  sub_18F0EF1A8(*(v3 + 1176), &qword_1EACCF7A0, &unk_18F53E6F0);
  if (v0)
  {
  }

  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_18F24DF18()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v1 + 792));
  OUTLINED_FUNCTION_110_0();
  OUTLINED_FUNCTION_85_3();
  sub_18F0F21A8(0, &qword_1ED6FD860, 0x1E69AC640);
  OUTLINED_FUNCTION_88_2();

  sub_18F33AE40(v2);
  sub_18F22B420();
  v3 = objc_allocWithZone(MEMORY[0x1E69AD038]);
  OUTLINED_FUNCTION_133_0();
  __swift_destroy_boxed_opaque_existential_1Tm((v1 + 352));
  OUTLINED_FUNCTION_0_49();
  sub_18F12FC8C(v0, v4);
  sub_18F0EF1A8(v1 + 552, &qword_1EACD3350, &unk_18F54B500);

  v5 = OUTLINED_FUNCTION_12_7();

  return v6(v5);
}

uint64_t sub_18F24E0EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_61_4();
  OUTLINED_FUNCTION_70_2();
  v30 = *(v20 + 1248);
  OUTLINED_FUNCTION_9_26();

  OUTLINED_FUNCTION_40_12();
  OUTLINED_FUNCTION_177_0();

  return v22(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10, a11, a12, a13, a14, a15, a16, v30, a18, a19, a20);
}

uint64_t sub_18F24E1D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_61_4();
  OUTLINED_FUNCTION_70_2();
  OUTLINED_FUNCTION_0_49();
  sub_18F12FC8C(v21, v22);
  __swift_destroy_boxed_opaque_existential_1Tm((v20 + 272));
  sub_18F0EF1A8(v20 + 552, &qword_1EACD3350, &unk_18F54B500);
  v32 = *(v20 + 1440);
  OUTLINED_FUNCTION_9_26();

  OUTLINED_FUNCTION_40_12();
  OUTLINED_FUNCTION_177_0();

  return v24(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10, a11, a12, a13, a14, a15, a16, v32, a18, a19, a20);
}

uint64_t sub_18F24E694()
{
  OUTLINED_FUNCTION_69();

  sub_18F3E74DC();

  v0 = OUTLINED_FUNCTION_9_12();

  return MEMORY[0x1EEE6DFA0](v0, v1, v2);
}

uint64_t sub_18F24E700()
{
  v1 = *(v0 + 1224);
  v2 = *(v0 + 1040);
  v3 = *(v0 + 1032);
  v4 = sub_18F2199DC();
  OUTLINED_FUNCTION_28(v3, v4);
  OUTLINED_FUNCTION_91_2();
  sub_18F255288();
  swift_willThrow();
  OUTLINED_FUNCTION_3_32();
  sub_18F12FC8C(v2, v5);
  OUTLINED_FUNCTION_0_49();
  sub_18F12FC8C(v1, v6);

  sub_18F0EF1A8(v0 + 552, &qword_1EACD3350, &unk_18F54B500);
  OUTLINED_FUNCTION_12_31();
  OUTLINED_FUNCTION_27_21();
  OUTLINED_FUNCTION_85_3();

  OUTLINED_FUNCTION_71();

  return v7();
}

uint64_t sub_18F24E8A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_61_4();
  OUTLINED_FUNCTION_70_2();
  v21 = *(v20 + 1480);
  v22 = *(v20 + 1224);

  __swift_destroy_boxed_opaque_existential_1Tm((v20 + 352));
  OUTLINED_FUNCTION_0_49();
  sub_18F12FC8C(v22, v23);
  __swift_destroy_boxed_opaque_existential_1Tm((v20 + 792));
  sub_18F0EF1A8(v20 + 552, &qword_1EACD3350, &unk_18F54B500);
  v33 = *(v20 + 1536);
  OUTLINED_FUNCTION_9_26();

  OUTLINED_FUNCTION_40_12();
  OUTLINED_FUNCTION_177_0();

  return v25(v24, v25, v26, v27, v28, v29, v30, v31, a9, a10, a11, a12, a13, a14, a15, a16, v33, a18, a19, a20);
}

uint64_t sub_18F24E9DC(void *a1, uint64_t a2, uint64_t a3)
{
  if ([a1 oneShotForSpringBoardOnly])
  {
    goto LABEL_2;
  }

  v7 = *(a3 + 72);
  v7(&v13, a2, a3);
  v8 = v13;
  LOBYTE(v6) = (v13 & 1) == 0;
  v7(&v13, a2, a3);
  v9 = v13;
  v10 = [a1 interactionMode];
  if (v10 < 3)
  {
    v6 = (v9 >> 1) & 1;
    return v6 & 1;
  }

  if ((v10 - 3) > 1)
  {
    return v6 & 1;
  }

  if (v8)
  {
LABEL_2:
    LOBYTE(v6) = 0;
  }

  else
  {
    if (qword_1EACCF548 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for AppIntentError(0);
    __swift_project_value_buffer(v11, qword_1EACD4AB8);
    sub_18F2199DC();
    swift_allocError();
    sub_18F255288();
    swift_willThrow();
  }

  return v6 & 1;
}

void sub_18F24EB48(uint64_t a1, void *a2)
{
  v62 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD3370, &qword_18F54B570);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v54 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD3378, &qword_18F54B578);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v54 - v8;
  v10 = sub_18F52109C();
  v59 = *(v10 - 8);
  v60 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD3380, &qword_18F54B580);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v54 - v14;
  v61 = type metadata accessor for PerformActionExecutorTask(0);
  v16 = MEMORY[0x1EEE9AC00](v61);
  v58 = &v54 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v54 - v18;
  sub_18F0FD6C4(a1 + OBJC_IVAR____TtC10AppIntents14PreparedIntent_intent, &v67);
  __swift_project_boxed_opaque_existential_1Tm(&v67, v69);
  DynamicType = swift_getDynamicType();
  __swift_destroy_boxed_opaque_existential_1Tm(&v67);
  v21 = sub_18F113CB8(DynamicType);
  v22 = [objc_opt_self() audioRecordingProtocol];
  v65 = v22;
  v64 = &v65;
  sub_18F113CBC(sub_18F11559C, v63, v21);
  v24 = v23;

  if ((v24 & 1) == 0)
  {
    return;
  }

  v25 = [objc_opt_self() sharedInstance];
  v26 = [v25 isActive];

  if (!v26)
  {
    return;
  }

  sub_18F255288();
  v27 = sub_18F52163C();
  v57 = sub_18F52223C();
  if (os_log_type_enabled(v27, v57))
  {
    v56 = v27;
    v28 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    v70 = v55;
    *v28 = 136446466;
    v29 = sub_18F5227FC();
    v31 = v30;
    sub_18F12FC8C(v19, type metadata accessor for PerformActionExecutorTask);
    v32 = sub_18F11897C(v29, v31, &v70);

    *(v28 + 4) = v32;
    *(v28 + 12) = 2082;
    v67 = 15420;
    v68 = 0xE200000000000000;
    MEMORY[0x193ADB000](78, 0xE100000000000000);
    MEMORY[0x193ADB000](58, 0xE100000000000000);
    if (qword_1ED6FD140 != -1)
    {
      swift_once();
    }

    sub_18F52305C();
    MEMORY[0x193ADB000](v65, v66);

    MEMORY[0x193ADB000](15934, 0xE200000000000000);
    v33 = sub_18F11897C(v67, v68, &v70);

    *(v28 + 14) = v33;
    v34 = v56;
    _os_log_impl(&dword_18F0E9000, v56, v57, "[%{public}s %{public}s] Verifying that Audio Recording Intent started a Live Activity", v28, 0x16u);
    v35 = v55;
    swift_arrayDestroy();
    MEMORY[0x193ADD350](v35, -1, -1);
    MEMORY[0x193ADD350](v28, -1, -1);
  }

  else
  {

    sub_18F12FC8C(v19, type metadata accessor for PerformActionExecutorTask);
  }

  sub_18F52107C();
  sub_18F52106C();
  sub_18F2554F0(v62);
  if (v36)
  {
    sub_18F52104C();
    if (!v2)
    {

      v37 = sub_18F52102C();
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v37);
      sub_18F0EF1A8(v15, &qword_1EACD3380, &qword_18F54B580);
      if (EnumTagSinglePayload == 1)
      {
        goto LABEL_19;
      }

LABEL_14:

      return;
    }

    goto LABEL_18;
  }

  v39 = sub_18F52103C();
  __swift_storeEnumTagSinglePayload(v9, 1, 1, v39);
  v40 = sub_18F5210AC();
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v40);
  sub_18F52108C();
  v41 = sub_18F52105C();
  if (v2)
  {
    (*(v59 + 8))(v12, v60);
LABEL_18:

    goto LABEL_19;
  }

  v42 = v41;
  (*(v59 + 8))(v12, v60);
  v43 = *(v42 + 16);

  if (v43)
  {
    goto LABEL_14;
  }

LABEL_19:
  sub_18F255288();
  v44 = sub_18F52163C();
  v45 = sub_18F52221C();
  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v70 = v47;
    *v46 = 136446466;
    v48 = v58;
    v49 = sub_18F5227FC();
    v51 = v50;
    sub_18F12FC8C(v48, type metadata accessor for PerformActionExecutorTask);
    v52 = sub_18F11897C(v49, v51, &v70);

    *(v46 + 4) = v52;
    *(v46 + 12) = 2082;
    v67 = 15420;
    v68 = 0xE200000000000000;
    MEMORY[0x193ADB000](69, 0xE100000000000000);
    MEMORY[0x193ADB000](58, 0xE100000000000000);
    if (qword_1ED6FD140 != -1)
    {
      swift_once();
    }

    sub_18F52305C();
    MEMORY[0x193ADB000](v65, v66);

    MEMORY[0x193ADB000](15934, 0xE200000000000000);
    v53 = sub_18F11897C(v67, v68, &v70);

    *(v46 + 14) = v53;
    _os_log_impl(&dword_18F0E9000, v44, v45, "[%{public}s %{public}s] AudioRecordingIntent was performed with an active audio session but without a Live Activity", v46, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x193ADD350](v47, -1, -1);
    MEMORY[0x193ADD350](v46, -1, -1);
  }

  else
  {

    sub_18F12FC8C(v58, type metadata accessor for PerformActionExecutorTask);
  }

  sub_18F522A3C();
  __break(1u);
}

BOOL sub_18F24F40C(void *a1, void *a2)
{
  v4 = type metadata accessor for IntentContext(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1Tm(a2, a2[3]);
  swift_getDynamicType();
  (*(a2[4] + 72))(&v11);
  v7 = v11;
  if ([a1 interactionMode] > 2 || (v7 & 4) == 0)
  {
    return 0;
  }

  __swift_project_boxed_opaque_existential_1Tm(a2, a2[3]);
  AppIntent.systemContext.getter();
  static IntentContext.current.getter(v6);
  sub_18F21964C(&v11);
  sub_18F12FC8C(v6, type metadata accessor for IntentContext);
  return (v11 & 1) == 0;
}

uint64_t sub_18F24F578(uint64_t a1, uint64_t a2)
{
  v3[115] = v2;
  v3[114] = a2;
  v3[113] = a1;
  v3[116] = type metadata accessor for PerformActionExecutorTask(0);
  v3[117] = swift_task_alloc();
  v3[118] = type metadata accessor for NeedsConfirmationTask(0);
  v3[119] = swift_task_alloc();
  v3[120] = type metadata accessor for RequestNeedsDisambiguationTask(0);
  v3[121] = swift_task_alloc();
  v3[122] = type metadata accessor for Annotation(0);
  v3[123] = swift_task_alloc();
  v3[124] = swift_task_alloc();
  v3[125] = swift_task_alloc();
  v3[126] = swift_task_alloc();
  v3[127] = type metadata accessor for RequestNeedsValueTask(0);
  v3[128] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_18F24F6F8, 0, 0);
}

void sub_18F24F6F8()
{
  v3 = *(v0 + 904);
  type metadata accessor for _SuggestedAction.RequestValue(0);
  OUTLINED_FUNCTION_92();
  v4 = swift_dynamicCastClass();
  *(v0 + 1032) = v4;
  if (v4)
  {
    v5 = v4;
    v6 = *(v0 + 1024);
    v7 = *(v0 + 1016);
    v8 = *(v0 + 1008);
    OUTLINED_FUNCTION_37();
    swift_beginAccess();
    sub_18F0FD6C4(v5 + 16, v6 + 24);
    sub_18F0EF200();
    v9 = (v6 + *(v7 + 28));
    *(v9 + 25) = 0u;
    *v9 = 0u;
    v9[1] = 0u;
    *v6 = "NeedsValue";
    *(v6 + 8) = 10;
    *(v6 + 16) = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD3338, &qword_18F54B4A0);
    *v8 = "NeedsValue";
    *(v8 + 8) = 10;
    *(v8 + 16) = 2;
    if (qword_1ED6FEFE8 != -1)
    {
      OUTLINED_FUNCTION_1_1(&qword_1ED6FEFE8);
    }

    v10 = *(v0 + 1024);
    v11 = sub_18F52165C();
    __swift_project_value_buffer(v11, qword_1ED7077A8);
    OUTLINED_FUNCTION_22_21();
    v12 = OUTLINED_FUNCTION_112();
    v13(v12);
    OUTLINED_FUNCTION_22();
    swift_storeEnumTagMultiPayload();
    v14 = swift_task_alloc();
    *(v0 + 1040) = v14;
    *(v14 + 16) = v10;
    OUTLINED_FUNCTION_6_1(&unk_18F559BC8);
    swift_task_alloc();
    OUTLINED_FUNCTION_25();
    *(v0 + 1048) = v15;
    *v15 = v16;
    v15[1] = sub_18F250140;
  }

  else
  {
    type metadata accessor for _SuggestedAction.RequestDisambiguation(0);
    OUTLINED_FUNCTION_92();
    v17 = swift_dynamicCastClass();
    *(v0 + 1064) = v17;
    if (v17)
    {
      v18 = v17;
      v19 = *(v0 + 1000);
      v20 = *(v0 + 968);
      OUTLINED_FUNCTION_37();
      swift_beginAccess();
      sub_18F0FD6C4(v18 + 16, v20 + 24);
      v21 = *(v18 + 56);
      sub_18F0EF200();
      *v20 = "NeedsDisambiguation";
      *(v20 + 8) = 19;
      *(v20 + 16) = 2;
      *(v20 + 64) = v21;
      _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD3338, &qword_18F54B4A0);
      *v19 = "NeedsDisambiguation";
      *(v19 + 8) = 19;
      *(v19 + 16) = 2;
      if (qword_1ED6FEFE8 != -1)
      {
        OUTLINED_FUNCTION_1_1(&qword_1ED6FEFE8);
      }

      v22 = *(v0 + 968);
      v23 = sub_18F52165C();
      __swift_project_value_buffer(v23, qword_1ED7077A8);
      OUTLINED_FUNCTION_22_21();
      v24 = OUTLINED_FUNCTION_112();
      v25(v24);
      OUTLINED_FUNCTION_22();
      swift_storeEnumTagMultiPayload();
      v26 = swift_task_alloc();
      *(v0 + 1072) = v26;
      *(v26 + 16) = v22;
      OUTLINED_FUNCTION_6_1(&unk_18F559BE8);
      swift_task_alloc();
      OUTLINED_FUNCTION_25();
      *(v0 + 1080) = v27;
      *v27 = v28;
      v27[1] = sub_18F25046C;
    }

    else
    {
      type metadata accessor for _SuggestedAction.RequestConfirmation(0);
      OUTLINED_FUNCTION_92();
      v29 = swift_dynamicCastClass();
      if (v29)
      {
        v30 = v29;
        v31 = *(v0 + 992);
        v32 = *(v0 + 952);
        sub_18F0FD6C4(v29 + 16, v32 + 24);
        sub_18F0FD6C4(v30 + 56, v32 + 64);
        sub_18F0EF200();
        sub_18F0EF200();
        *v32 = "NeedsConfirmation";
        *(v32 + 8) = 17;
        *(v32 + 16) = 2;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD3338, &qword_18F54B4A0);
        *v31 = "NeedsConfirmation";
        *(v31 + 8) = 17;
        *(v31 + 16) = 2;
        if (qword_1ED6FEFE8 != -1)
        {
          OUTLINED_FUNCTION_1_1(&qword_1ED6FEFE8);
        }

        v33 = *(v0 + 952);
        v34 = sub_18F52165C();
        __swift_project_value_buffer(v34, qword_1ED7077A8);
        OUTLINED_FUNCTION_22_21();
        v35 = OUTLINED_FUNCTION_112();
        v36(v35);
        OUTLINED_FUNCTION_22();
        swift_storeEnumTagMultiPayload();
        v37 = swift_task_alloc();
        *(v0 + 1096) = v37;
        *(v37 + 16) = v33;
        OUTLINED_FUNCTION_6_1(&unk_18F559C98);
        swift_task_alloc();
        OUTLINED_FUNCTION_25();
        *(v0 + 1104) = v38;
        *v38 = v39;
        v38[1] = sub_18F250798;
      }

      else
      {
        type metadata accessor for _SuggestedAction.RequestActionConfirmation();
        OUTLINED_FUNCTION_92();
        v40 = swift_dynamicCastClass();
        if (!v40)
        {
          type metadata accessor for _SuggestedAction.ReadyToPerform();
          OUTLINED_FUNCTION_92();
          if (swift_dynamicCastClass())
          {
            OUTLINED_FUNCTION_37();
            swift_beginAccess();
            sub_18F0EF200();
            if (*(v0 + 720))
            {
              v61 = *(v0 + 912);
              sub_18F118710((v0 + 696), (v0 + 664));
              v62 = (*v61 + OBJC_IVAR____TtC10AppIntents14PreparedIntent_draftContext);
              if (*v62)
              {
                v63 = v62[1];
                ObjectType = swift_getObjectType();
                sub_18F0FECD4(v0 + 664, v0 + 728);
                v65 = *(v63 + 24);
                swift_unknownObjectRetain();
                v65(v0 + 728, ObjectType, v63);
                swift_unknownObjectRelease();
              }

              __swift_destroy_boxed_opaque_existential_1Tm((v0 + 664));
            }

            else
            {
              sub_18F0EF1A8(v0 + 696, &qword_1EACD3398, &unk_18F54B5B0);
            }
          }

          else
          {
            OUTLINED_FUNCTION_2_46();
            sub_18F255288();

            v66 = sub_18F52163C();
            v67 = sub_18F52221C();

            if (os_log_type_enabled(v66, v67))
            {
              v68 = *(v0 + 928);
              OUTLINED_FUNCTION_75();
              v82 = OUTLINED_FUNCTION_107_0();
              OUTLINED_FUNCTION_44_8(4.8754e-34);
              OUTLINED_FUNCTION_99_1();
              OUTLINED_FUNCTION_5_34();
              sub_18F11897C(v68, v1, &v82);
              OUTLINED_FUNCTION_88_2();

              OUTLINED_FUNCTION_29_20();
              v83 = v69;
              v84 = v70;
              MEMORY[0x193ADB000](69, 0xE100000000000000);
              OUTLINED_FUNCTION_125_0();
              if (qword_1ED6FD140 != -1)
              {
                OUTLINED_FUNCTION_6_36(&qword_1ED6FD140);
              }

              v71 = *(v0 + 904);
              sub_18F52305C();
              v72 = *(v0 + 888);
              MEMORY[0x193ADB000](*(v0 + 880), v72);

              OUTLINED_FUNCTION_116();
              sub_18F11897C(v83, v84, &v82);
              OUTLINED_FUNCTION_136_0();
              *(v3 + 14) = v72;
              *(v3 + 22) = v2;
              *(v0 + 896) = v71;
              type metadata accessor for _SuggestedAction();
              OUTLINED_FUNCTION_173_0();

              v73 = sub_18F52194C();
              sub_18F11897C(v73, v74, &v82);
              OUTLINED_FUNCTION_120_1();
              *(v3 + 24) = v71;
              OUTLINED_FUNCTION_32_19();
              _os_log_impl(v75, v76, v77, v78, v79, 0x20u);
              OUTLINED_FUNCTION_86_3();
              swift_arrayDestroy();
              OUTLINED_FUNCTION_65();
              OUTLINED_FUNCTION_26_0();
            }

            else
            {

              OUTLINED_FUNCTION_5_34();
            }
          }

          OUTLINED_FUNCTION_36_15();

          OUTLINED_FUNCTION_6();
          OUTLINED_FUNCTION_28_2();

          __asm { BRAA            X1, X16 }
        }

        v41 = v40;
        v42 = *(v0 + 984);
        v43 = *(v0 + 928);
        v44 = *(v0 + 920);
        *(v0 + 1120) = **(v0 + 912);
        sub_18F0F21A8(0, &qword_1ED6FD860, 0x1E69AC640);

        v46 = sub_18F33AE40(v45);
        sub_18F0EF200();
        v47 = *(v41 + 56);
        v48 = *(v41 + 64);
        v49 = *(v41 + 72);
        v50 = *(v44 + *(v43 + 32));
        v51 = v47;
        v52 = [v50 convertArrayResultToAsyncSequence];
        *(v0 + 16) = "NeedsActionConfirmation";
        *(v0 + 24) = 23;
        *(v0 + 32) = 2;
        *(v0 + 40) = v46;
        *(v0 + 88) = v51;
        *(v0 + 96) = v48;
        *(v0 + 104) = v49;
        *(v0 + 112) = v52;
        v53 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD3338, &qword_18F54B4A0) + 48);
        *v42 = "NeedsActionConfirmation";
        *(v42 + 8) = 23;
        *(v42 + 16) = 2;
        if (qword_1ED6FEFE8 != -1)
        {
          OUTLINED_FUNCTION_1_1(&qword_1ED6FEFE8);
        }

        v54 = sub_18F52165C();
        __swift_project_value_buffer(v54, qword_1ED7077A8);
        OUTLINED_FUNCTION_22_21();
        (*(v55 + 16))(v42 + v53);
        OUTLINED_FUNCTION_22();
        swift_storeEnumTagMultiPayload();
        v56 = swift_task_alloc();
        *(v0 + 1128) = v56;
        *(v56 + 16) = v0 + 16;
        OUTLINED_FUNCTION_6_1(&unk_18F559C98);
        swift_task_alloc();
        OUTLINED_FUNCTION_25();
        *(v0 + 1136) = v57;
        *v57 = v58;
        v57[1] = sub_18F250A5C;
      }
    }
  }

  OUTLINED_FUNCTION_48_5();
  OUTLINED_FUNCTION_28_2();

  __asm { BR              X6 }
}

uint64_t sub_18F250140()
{
  OUTLINED_FUNCTION_32_4();
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_85();
  v3 = v2;
  OUTLINED_FUNCTION_1_0();
  *v4 = v3;
  v6 = *(v5 + 1008);
  v7 = *v1;
  OUTLINED_FUNCTION_39();
  *v8 = v7;
  *(v3 + 1056) = v0;

  OUTLINED_FUNCTION_1_44();
  sub_18F12FC8C(v6, v9);

  if (!v0)
  {
    OUTLINED_FUNCTION_20_19();
    sub_18F12FC8C(v10, v11);
  }

  OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_31_9();

  return MEMORY[0x1EEE6DFA0](v12, v13, v14);
}

uint64_t sub_18F250288(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_29();
  sub_18F18D79C(v10 + 408, v10 + 456);
  if (*(v10 + 496))
  {
    sub_18F20A0DC(*(v10 + 456));
  }

  else
  {
    v11 = *(v10 + 1032);
    sub_18F0FD0B4((v10 + 456), v10 + 584);
    sub_18F0FD6C4(v10 + 584, v10 + 624);
    swift_beginAccess();
    v12 = *(v11 + 40);
    __swift_mutable_project_boxed_opaque_existential_1(v11 + 16, v12);
    OUTLINED_FUNCTION_172_0();
    v13(v10 + 624, v12);
    swift_endAccess();
    __swift_destroy_boxed_opaque_existential_1Tm((v10 + 584));
  }

  sub_18F18D7F8(v10 + 408);
  OUTLINED_FUNCTION_36_15();

  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_36();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10);
}

uint64_t sub_18F2503C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_154_0();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_20_19();
  sub_18F12FC8C(v10, v11);
  OUTLINED_FUNCTION_45_8();

  OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_43_2();

  return v13(v12, v13, v14, v15, v16, v17, v18, v19, a9, a10);
}

uint64_t sub_18F25046C()
{
  OUTLINED_FUNCTION_32_4();
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_85();
  v3 = v2;
  OUTLINED_FUNCTION_1_0();
  *v4 = v3;
  v6 = *(v5 + 1000);
  v7 = *v1;
  OUTLINED_FUNCTION_39();
  *v8 = v7;
  *(v3 + 1088) = v0;

  OUTLINED_FUNCTION_1_44();
  sub_18F12FC8C(v6, v9);

  if (!v0)
  {
    OUTLINED_FUNCTION_19_22();
    sub_18F12FC8C(v10, v11);
  }

  OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_31_9();

  return MEMORY[0x1EEE6DFA0](v12, v13, v14);
}

uint64_t sub_18F2505B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_29();
  sub_18F18F490(v10 + 312, v10 + 360);
  if (*(v10 + 400))
  {
    sub_18F20A0DC(*(v10 + 360));
  }

  else
  {
    v11 = *(v10 + 1064);
    sub_18F0FD0B4((v10 + 360), v10 + 504);
    sub_18F0FD6C4(v10 + 504, v10 + 544);
    swift_beginAccess();
    v12 = *(v11 + 40);
    __swift_mutable_project_boxed_opaque_existential_1(v11 + 16, v12);
    OUTLINED_FUNCTION_172_0();
    v13(v10 + 544, v12);
    swift_endAccess();
    __swift_destroy_boxed_opaque_existential_1Tm((v10 + 504));
  }

  sub_18F18F4EC(v10 + 312);
  OUTLINED_FUNCTION_36_15();

  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_36();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10);
}

uint64_t sub_18F2506F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_154_0();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_19_22();
  sub_18F12FC8C(v10, v11);
  OUTLINED_FUNCTION_45_8();

  OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_43_2();

  return v13(v12, v13, v14, v15, v16, v17, v18, v19, a9, a10);
}

uint64_t sub_18F250798()
{
  OUTLINED_FUNCTION_32_4();
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_85();
  v3 = v2;
  OUTLINED_FUNCTION_1_0();
  *v4 = v3;
  v6 = *(v5 + 992);
  v7 = *v1;
  OUTLINED_FUNCTION_39();
  *v8 = v7;
  *(v3 + 1112) = v0;

  OUTLINED_FUNCTION_1_44();
  sub_18F12FC8C(v6, v9);

  if (!v0)
  {
    OUTLINED_FUNCTION_101_3(*(v3 + 952));
  }

  OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_31_9();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_18F2508DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_29();
  v11 = v10 + 216;
  v12 = OUTLINED_FUNCTION_56();
  sub_18F18F5A4(v12, v13);
  if (*(v10 + 304))
  {
    sub_18F20A0DC(*(v10 + 264));
  }

  else
  {
    sub_18F18F600(v10 + 216);
    v11 = v10 + 264;
  }

  sub_18F18F600(v11);
  OUTLINED_FUNCTION_36_15();

  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_36();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10);
}

uint64_t sub_18F2509BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_154_0();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_101_3(*(v10 + 952));
  OUTLINED_FUNCTION_45_8();

  OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_43_2();

  return v12(v11, v12, v13, v14, v15, v16, v17, v18, a9, a10);
}

uint64_t sub_18F250A5C()
{
  OUTLINED_FUNCTION_32_4();
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_85();
  v3 = v2;
  OUTLINED_FUNCTION_1_0();
  *v4 = v3;
  v6 = *(v5 + 984);
  v7 = *v1;
  OUTLINED_FUNCTION_39();
  *v8 = v7;
  *(v3 + 1144) = v0;

  OUTLINED_FUNCTION_1_44();
  sub_18F12FC8C(v6, v9);

  if (!v0)
  {
    sub_18F255A74(v3 + 16);
  }

  OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_31_9();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_18F250BA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_29();
  v11 = v10 + 120;
  v12 = OUTLINED_FUNCTION_56();
  sub_18F18F5A4(v12, v13);
  if (*(v10 + 208))
  {
    sub_18F20A0DC(*(v10 + 168));
  }

  else
  {
    sub_18F18F600(v10 + 120);
    v11 = v10 + 168;
  }

  sub_18F18F600(v11);
  OUTLINED_FUNCTION_36_15();

  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_36();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10);
}

uint64_t sub_18F250C7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_154_0();
  OUTLINED_FUNCTION_29();
  sub_18F255A74(v10 + 16);
  OUTLINED_FUNCTION_45_8();

  OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_43_2();

  return v12(v11, v12, v13, v14, v15, v16, v17, v18, a9, a10);
}

uint64_t sub_18F250D1C()
{
  sub_18F52165C();
  OUTLINED_FUNCTION_10_0();
  v0 = OUTLINED_FUNCTION_56();

  return v1(v0);
}

uint64_t sub_18F250DC0(uint64_t a1)
{
  result = sub_18F520C8C();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_18F250E84(uint64_t a1)
{
  sub_18F0FDE68(319);
  if (v1 <= 0x3F)
  {
    sub_18F251494(319, &qword_1ED6FDC50, &qword_1EACD3318, &qword_18F54B258, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for LNContinueInAppRequestType(319);
      if (v3 <= 0x3F)
      {
        sub_18F0FE0AC(319, &qword_1ED6FDA40, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
        if (v4 <= 0x3F)
        {
          sub_18F0FE0AC(319, &qword_1EACCF430, &type metadata for ContinueInAppLaunchOption, MEMORY[0x1E69E62F8]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t get_enum_tag_for_layout_string_10AppIntents12IntentResult_pSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_18F25100C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 97))
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

uint64_t sub_18F25104C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 96) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 97) = 1;
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

    *(result + 97) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_18F251100(uint64_t a1)
{
  sub_18F251208(319, &qword_1ED6FC300, &protocol descriptor for _AnyIntentParameter);
  if (v1 <= 0x3F)
  {
    sub_18F251208(319, &qword_1ED6FCD58, &protocol descriptor for _IntentValue);
    if (v2 <= 0x3F)
    {
      sub_18F0FDE68(319);
      if (v3 <= 0x3F)
      {
        sub_18F0FE0AC(319, &qword_1ED6FCFD8, &type metadata for _SnippetViewContainer, MEMORY[0x1E69E6720]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_18F251208(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_59Tm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return OUTLINED_FUNCTION_6_33(*(a1 + 48));
  }

  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A0, &unk_18F53E6F0);
  v8 = a1 + *(a3 + 28);

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

void __swift_store_extra_inhabitant_index_60Tm()
{
  OUTLINED_FUNCTION_79();
  if (v3 == 0x7FFFFFFF)
  {
    *(v1 + 48) = (v0 - 1);
  }

  else
  {
    v4 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A0, &unk_18F53E6F0);
    v5 = OUTLINED_FUNCTION_138_0(*(v4 + 28));

    __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  }
}

void sub_18F2513AC(uint64_t a1)
{
  sub_18F251208(319, &qword_1ED6FC300, &protocol descriptor for _AnyIntentParameter);
  if (v1 <= 0x3F)
  {
    sub_18F251494(319, &qword_1EACCF420, &qword_1EACD1490, &qword_18F543C50, MEMORY[0x1E69E62F8]);
    if (v2 <= 0x3F)
    {
      sub_18F0FDE68(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_18F251494(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t))
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v7 = OUTLINED_FUNCTION_92();
    v8 = a5(v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_18F25153C(uint64_t a1)
{
  sub_18F251208(319, &qword_1ED6FC300, &protocol descriptor for _AnyIntentParameter);
  if (v1 <= 0x3F)
  {
    sub_18F0FDE68(319);
    if (v2 <= 0x3F)
    {
      sub_18F0FE0AC(319, &qword_1ED6FCFD8, &type metadata for _SnippetViewContainer, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_18F25162C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 64))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 48);
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

uint64_t sub_18F25166C(uint64_t result, int a2, int a3)
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
      *(result + 48) = (a2 - 1);
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

uint64_t sub_18F2516CC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 73))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 48);
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

uint64_t sub_18F25170C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 73) = 1;
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
      *(result + 48) = (a2 - 1);
      return result;
    }

    *(result + 73) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_18F251770(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_18F2517B0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_18F251848(uint64_t a1)
{
  sub_18F52165C();
  if (v1 <= 0x3F)
  {
    sub_18F520E6C();
    if (v2 <= 0x3F)
    {
      sub_18F0F21A8(319, &qword_1ED6FD860, 0x1E69AC640);
      if (v3 <= 0x3F)
      {
        sub_18F0F21A8(319, &qword_1EACCF3F8, 0x1E69ACD38);
        if (v4 <= 0x3F)
        {
          sub_18F25193C(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_18F25193C(uint64_t a1)
{
  if (!qword_1EACCF400)
  {
    sub_18F0F21A8(255, &qword_1ED6FEF50, 0x1E696AE38);
    v1 = sub_18F52254C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EACCF400);
    }
  }
}

uint64_t sub_18F2519A4()
{
  *(v1 + 440) = v0;
  v2 = OUTLINED_FUNCTION_9_12();
  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

uint64_t sub_18F2519CC()
{
  OUTLINED_FUNCTION_24_4();
  v23 = v0;
  sub_18F0FD6C4(v0[55] + 24, (v0 + 42));
  __swift_project_boxed_opaque_existential_1Tm(v0 + 42, v0[45]);
  v0[56] = swift_getDynamicType();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 42);
  v1 = OUTLINED_FUNCTION_66();
  static AppIntent.asSystemImplementedIntentType.getter(v1, v2);
  if (v21 != 8)
  {
    goto LABEL_5;
  }

  if (qword_1ED6FF6D8 != -1)
  {
    OUTLINED_FUNCTION_2_1(&qword_1ED6FF6D8);
  }

  v3 = OUTLINED_FUNCTION_66();
  v4 = AppManager.viewIntentExists(_:)(v3);

  if (!v4)
  {
    if (qword_1ED6FEFE8 != -1)
    {
      OUTLINED_FUNCTION_1_1(&qword_1ED6FEFE8);
    }

    v7 = v0[55];
    v8 = sub_18F52165C();
    __swift_project_value_buffer(v8, qword_1ED7077A8);
    sub_18F25586C(v7, (v0 + 32));
    v9 = sub_18F52163C();
    v10 = sub_18F5221FC();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = OUTLINED_FUNCTION_75();
      v20 = swift_slowAlloc();
      *v11 = 136446722;
      v12 = sub_18F5227FC();
      v14 = v13;
      sub_18F25583C((v0 + 32));
      sub_18F11897C(v12, v14, &v20);
      OUTLINED_FUNCTION_88_2();

      *(v11 + 4) = v12;
      *(v11 + 12) = 2082;
      v21 = 978205756;
      v22 = 0xE400000000000000;
      if (qword_1ED6FD140 != -1)
      {
        OUTLINED_FUNCTION_6_36(&qword_1ED6FD140);
      }

      sub_18F52305C();
      v15 = v0[52];
      MEMORY[0x193ADB000](v0[51], v15);

      OUTLINED_FUNCTION_116();
      sub_18F11897C(v21, v22, &v20);
      OUTLINED_FUNCTION_136_0();
      *(v11 + 14) = v15;
      *(v11 + 22) = 2080;
      v16 = sub_18F52307C();
      v18 = sub_18F11897C(v16, v17, &v20);

      *(v11 + 24) = v18;
      _os_log_impl(&dword_18F0E9000, v9, v10, "[%{public}s %{public}s] Intent type %s is neither a system nor an active view intent. Running default perform.", v11, 0x20u);
      OUTLINED_FUNCTION_111_0();
      OUTLINED_FUNCTION_105();
      MEMORY[0x193ADD350](v11, -1, -1);
    }

    else
    {

      sub_18F25583C((v0 + 32));
    }

    v19 = v0[1];

    return v19(0, 0);
  }

  else
  {
LABEL_5:
    if (qword_1ED6FF6D8 != -1)
    {
      OUTLINED_FUNCTION_2_1(&qword_1ED6FF6D8);
    }

    v0[57] = *(off_1ED6FF6C8 + 10);

    v5 = swift_task_alloc();
    v0[58] = v5;
    *v5 = v0;
    OUTLINED_FUNCTION_12_3(v5);
    OUTLINED_FUNCTION_66();

    return sub_18F2ADDE4();
  }
}

uint64_t sub_18F251D74()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  v3 = v2;
  OUTLINED_FUNCTION_1_0();
  *v4 = v3;
  *v4 = *v1;
  v3[59] = v5;
  v3[60] = v6;
  v3[61] = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_18F252258()
{
  OUTLINED_FUNCTION_69();

  OUTLINED_FUNCTION_71();

  return v0();
}

uint64_t sub_18F2522B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v4[6] = type metadata accessor for Annotation(0);
  v4[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_18F25234C, 0, 0);
}

uint64_t sub_18F25234C()
{
  OUTLINED_FUNCTION_29();
  if (qword_1ED6FEFE8 != -1)
  {
    OUTLINED_FUNCTION_1_1(&qword_1ED6FEFE8);
  }

  v1 = *(v0 + 56);
  v2 = *(v0 + 24);
  v3 = sub_18F52165C();
  v12 = *(v0 + 32);
  v4 = __swift_project_value_buffer(v3, qword_1ED7077A8);
  v5 = swift_task_alloc();
  *(v0 + 64) = v5;
  *(v5 + 16) = v12;
  *(v5 + 32) = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD3338, &qword_18F54B4A0);
  *v1 = "perform(view)";
  *(v1 + 8) = 13;
  *(v1 + 16) = 2;
  OUTLINED_FUNCTION_31_0();
  (*(v6 + 16))(v1 + v7, v4, v3);
  OUTLINED_FUNCTION_66();
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_6_1(&unk_18F559C58);
  v13 = v8;
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v0 + 72) = v9;
  *v9 = v10;
  v9[1] = sub_18F2524EC;
  OUTLINED_FUNCTION_48_5();

  return v13();
}

uint64_t sub_18F2524EC()
{
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_85();
  v3 = v2;
  OUTLINED_FUNCTION_1_0();
  *v4 = v3;
  v6 = *(v5 + 56);
  v7 = *v1;
  OUTLINED_FUNCTION_39();
  *v8 = v7;
  *(v3 + 80) = v0;

  OUTLINED_FUNCTION_1_44();
  sub_18F12FC8C(v6, v9);
  if (v0)
  {
    OUTLINED_FUNCTION_13_0();

    return MEMORY[0x1EEE6DFA0](v10, v11, v12);
  }

  else
  {

    OUTLINED_FUNCTION_6();

    return v13();
  }
}

uint64_t sub_18F25263C()
{
  OUTLINED_FUNCTION_69();

  OUTLINED_FUNCTION_71();

  return v0();
}

uint64_t sub_18F2526A0(uint64_t a1, int *a2, uint64_t a3, uint64_t a4)
{
  v9 = (a2 + *a2);
  v7 = swift_task_alloc();
  *(v4 + 16) = v7;
  *v7 = v4;
  v7[1] = sub_18F0FC874;

  return v9(a1, a4);
}

uint64_t sub_18F2527A8()
{
  OUTLINED_FUNCTION_69();
  v1[13] = v2;
  v1[14] = v0;
  v3 = type metadata accessor for IntentContext(0);
  v1[15] = v3;
  OUTLINED_FUNCTION_10(v3);
  v1[16] = OUTLINED_FUNCTION_19_13();
  v1[17] = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_9_12();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

void sub_18F252830()
{
  OUTLINED_FUNCTION_24_4();
  v0[18] = type metadata accessor for RequestNeedsValueTask(0);
  sub_18F0EF200();
  if (v0[5])
  {
    v1 = v0[17];
    sub_18F0FD6C4((v0 + 2), (v0 + 8));
    sub_18F18F3F8((v0 + 2));
    __swift_project_boxed_opaque_existential_1Tm(v0 + 8, v0[11]);
    static IntentContext.current.getter(v1);
    v6 = v0[17];
    OUTLINED_FUNCTION_160(v0[15]);
    OUTLINED_FUNCTION_0_49();
    sub_18F12FC8C(v6, v7);
    OUTLINED_FUNCTION_149_0();
    v8 = swift_task_alloc();
    v0[20] = v8;
    *v8 = v0;
    OUTLINED_FUNCTION_12_3(v8);
    OUTLINED_FUNCTION_150_0();
    OUTLINED_FUNCTION_147();

    __asm { BRAA            X4, X16 }
  }

  sub_18F0EF1A8((v0 + 2), &qword_1EACD0550, &qword_18F547EB0);
  v0[24] = 0;
  static IntentContext.current.getter(v0[16]);
  OUTLINED_FUNCTION_26_20();
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v0[25] = v2;
  *v2 = v3;
  OUTLINED_FUNCTION_42_8(v2);
  OUTLINED_FUNCTION_169_0();
  OUTLINED_FUNCTION_147();

  __asm { BRAA            X4, X16 }
}

uint64_t sub_18F252ACC()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  v3 = v2;
  OUTLINED_FUNCTION_1_0();
  *v4 = v3;
  *v4 = *v1;
  v3[21] = v5;
  v3[22] = v6;
  v3[23] = v0;

  if (v0)
  {
  }

  else
  {
  }

  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_18F252BE0()
{
  OUTLINED_FUNCTION_31();
  if (*(v0 + 176) >> 60 == 15)
  {
    v1 = 0;
  }

  else
  {
    sub_18F0F21A8(0, &qword_1EACD0558, 0x1E69AD0A0);
    v2 = OUTLINED_FUNCTION_56();
    v1 = sub_18F1F0988(v2, v3);
  }

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 64));
  v4 = *(v0 + 184);
  *(v0 + 192) = v1;
  static IntentContext.current.getter(*(v0 + 128));
  if (v4)
  {

    OUTLINED_FUNCTION_46_1();

    return v5();
  }

  else
  {
    v7 = *(v0 + 112);
    v8 = *(*(v0 + 144) + 24);
    OUTLINED_FUNCTION_26_20();
    v13 = v9;
    swift_task_alloc();
    OUTLINED_FUNCTION_25();
    *(v0 + 200) = v10;
    *v10 = v11;
    v12 = OUTLINED_FUNCTION_42_8(v10);

    return v13(v12, v7 + 24, v7 + v8, v1);
  }
}

uint64_t sub_18F252D5C()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_5_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_39();
  *v5 = v4;
  *(v6 + 208) = v0;

  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_18F252E54()
{
  OUTLINED_FUNCTION_21();
  v1 = *(v0 + 192);
  v2 = *(v0 + 128);
  OUTLINED_FUNCTION_0_49();
  sub_18F12FC8C(v2, v3);

  OUTLINED_FUNCTION_6();

  return v4();
}

uint64_t sub_18F252ED4()
{
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_0_49();
  sub_18F12FC8C(v1, v2);

  OUTLINED_FUNCTION_71();

  return v3();
}

uint64_t sub_18F252F58()
{
  OUTLINED_FUNCTION_31();

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 8);
  v0[24] = 0;
  static IntentContext.current.getter(v0[16]);
  OUTLINED_FUNCTION_26_20();
  v5 = v1;
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v0[25] = v2;
  *v2 = v3;
  OUTLINED_FUNCTION_42_8(v2);
  OUTLINED_FUNCTION_169_0();

  return v5();
}

uint64_t sub_18F25307C()
{
  OUTLINED_FUNCTION_69();
  v1[2] = v2;
  v1[3] = v0;
  v3 = type metadata accessor for IntentContext(0);
  v1[4] = v3;
  OUTLINED_FUNCTION_10(v3);
  v1[5] = OUTLINED_FUNCTION_34_0();
  v4 = OUTLINED_FUNCTION_9_12();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_18F2530F8()
{
  OUTLINED_FUNCTION_29();
  static IntentContext.current.getter(v0[5]);
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  v4 = *(v3 + 64);
  v5 = *(type metadata accessor for RequestNeedsDisambiguationTask(0) + 28);
  v10 = (*(v1 + *(v2 + 72)) + **(v1 + *(v2 + 72)));
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v0[6] = v6;
  *v6 = v7;
  v6[1] = sub_18F253268;
  v8 = v0[2];

  return v10(v8, v3 + 24, v4, v3 + v5);
}

uint64_t sub_18F253268()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_5_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_39();
  *v5 = v4;
  *(v6 + 56) = v0;

  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_18F253360()
{
  OUTLINED_FUNCTION_69();
  v1 = *(v0 + 40);
  OUTLINED_FUNCTION_0_49();
  sub_18F12FC8C(v1, v2);

  OUTLINED_FUNCTION_6();

  return v3();
}

uint64_t sub_18F2533C8()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_0_49();
  sub_18F12FC8C(v0, v1);

  OUTLINED_FUNCTION_71();

  return v2();
}

uint64_t sub_18F253430()
{
  OUTLINED_FUNCTION_69();
  v1[13] = v2;
  v1[14] = v0;
  v3 = type metadata accessor for IntentContext(0);
  v1[15] = v3;
  OUTLINED_FUNCTION_10(v3);
  v1[16] = OUTLINED_FUNCTION_19_13();
  v1[17] = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_9_12();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

void sub_18F2534B8()
{
  OUTLINED_FUNCTION_24_4();
  static IntentContext.current.getter(v0[17]);
  v0[18] = type metadata accessor for NeedsConfirmationTask(0);
  sub_18F0EF200();
  if (v0[5])
  {
    v1 = v0[16];
    sub_18F0FD6C4((v0 + 2), (v0 + 8));
    sub_18F18F3F8((v0 + 2));
    __swift_project_boxed_opaque_existential_1Tm(v0 + 8, v0[11]);
    static IntentContext.current.getter(v1);
    v6 = v0[16];
    OUTLINED_FUNCTION_160(v0[15]);
    OUTLINED_FUNCTION_0_49();
    sub_18F12FC8C(v6, v7);
    OUTLINED_FUNCTION_149_0();
    v8 = swift_task_alloc();
    v0[20] = v8;
    *v8 = v0;
    OUTLINED_FUNCTION_12_3(v8);
    OUTLINED_FUNCTION_150_0();
    OUTLINED_FUNCTION_147();

    __asm { BRAA            X4, X16 }
  }

  sub_18F0EF1A8((v0 + 2), &qword_1EACD0550, &qword_18F547EB0);
  v0[23] = 0;
  OUTLINED_FUNCTION_25_18();
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v0[24] = v2;
  *v2 = v3;
  OUTLINED_FUNCTION_41_12(v2);
  OUTLINED_FUNCTION_152_0();
  OUTLINED_FUNCTION_147();

  __asm { BRAA            X5, X16 }
}

uint64_t sub_18F25373C()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  v3 = v2;
  OUTLINED_FUNCTION_1_0();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 168) = v5;
  *(v3 + 176) = v6;

  if (v0)
  {
  }

  else
  {
  }

  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_18F25384C()
{
  OUTLINED_FUNCTION_31();
  if (v0[22] >> 60 == 15)
  {
    v1 = 0;
  }

  else
  {
    sub_18F0F21A8(0, &qword_1EACD0558, 0x1E69AD0A0);
    v2 = OUTLINED_FUNCTION_56();
    v1 = sub_18F1F0988(v2, v3);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 8);
  v0[23] = v1;
  v4 = v0[14];
  v5 = *(v0[18] + 28);
  OUTLINED_FUNCTION_25_18();
  v11 = v6;
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v0[24] = v7;
  *v7 = v8;
  v9 = OUTLINED_FUNCTION_41_12(v7);

  return v11(v9, v4 + 24, v4 + 64, v4 + v5, v1);
}

uint64_t sub_18F253964()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_5_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_39();
  *v5 = v4;
  *(v6 + 200) = v0;

  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_18F253A5C()
{
  OUTLINED_FUNCTION_69();
  v1 = *(v0 + 136);

  OUTLINED_FUNCTION_0_49();
  sub_18F12FC8C(v1, v2);

  OUTLINED_FUNCTION_6();

  return v3();
}

uint64_t sub_18F253AD4()
{
  OUTLINED_FUNCTION_69();
  v1 = *(v0 + 136);

  OUTLINED_FUNCTION_0_49();
  sub_18F12FC8C(v1, v2);

  OUTLINED_FUNCTION_71();

  return v3();
}

uint64_t sub_18F253B50()
{
  OUTLINED_FUNCTION_21();

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 8);
  v0[23] = 0;
  OUTLINED_FUNCTION_25_18();
  v5 = v1;
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v0[24] = v2;
  *v2 = v3;
  OUTLINED_FUNCTION_41_12(v2);
  OUTLINED_FUNCTION_152_0();

  return v5();
}

uint64_t sub_18F253C14()
{
  OUTLINED_FUNCTION_69();
  v1[9] = v2;
  v1[10] = v0;
  v3 = type metadata accessor for IntentContext(0);
  v1[11] = v3;
  OUTLINED_FUNCTION_10(v3);
  v1[12] = OUTLINED_FUNCTION_34_0();
  v4 = OUTLINED_FUNCTION_9_12();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_18F253C90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11)
{
  OUTLINED_FUNCTION_37_2();
  static IntentContext.current.getter(*(v11 + 96));
  sub_18F0EF200();
  if (*(v11 + 40))
  {
    v12 = *(v11 + 96);
    v13 = *(v11 + 80);
    __swift_project_boxed_opaque_existential_1Tm((v11 + 16), *(v11 + 40));
    v14 = [*(v12 + 8) localeIdentifier];
    sub_18F5218DC();
    v16 = v15;

    *(v11 + 104) = v16;
    v17 = *(v12 + 48);
    *(v11 + 152) = *(v12 + 32);
    *(v11 + 168) = v17;
    *(v11 + 184) = 0;
    v18 = *(v13 + 72);
    *(v11 + 56) = v18;
    *(v11 + 64) = *(v13 + 88);
    OUTLINED_FUNCTION_66();
    OUTLINED_FUNCTION_292();
    v19 = v18;
    swift_task_alloc();
    OUTLINED_FUNCTION_25();
    *(v11 + 112) = v20;
    *v20 = v21;
    v20[1] = sub_18F253F04;
    OUTLINED_FUNCTION_180_0();

    return sub_18F3079A8(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10, a11);
  }

  else
  {
    sub_18F0EF1A8(v11 + 16, &qword_1EACD2FE0, &unk_18F5579C0);
    *(v11 + 128) = 0;
    OUTLINED_FUNCTION_58_4();
    swift_task_alloc();
    OUTLINED_FUNCTION_25();
    *(v11 + 136) = v32;
    *v32 = v33;
    OUTLINED_FUNCTION_75_2(v32);
    OUTLINED_FUNCTION_37();
    OUTLINED_FUNCTION_180_0();

    return v34();
  }
}

uint64_t sub_18F253F04()
{
  OUTLINED_FUNCTION_21();
  v1 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_5_1();
  *v5 = v4;
  *(v7 + 120) = v6;

  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_18F254030()
{
  OUTLINED_FUNCTION_21();
  v1 = v0[15];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v0[16] = v1;
  OUTLINED_FUNCTION_58_4();
  v7 = v2;
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v0[17] = v3;
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_75_2(v3);

  return v7(v5);
}

uint64_t sub_18F2540E8()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_5_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_39();
  *v5 = v4;
  *(v6 + 144) = v0;

  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_18F2541E0()
{
  OUTLINED_FUNCTION_69();
  v1 = *(v0 + 96);

  OUTLINED_FUNCTION_0_49();
  sub_18F12FC8C(v1, v2);

  OUTLINED_FUNCTION_6();

  return v3();
}

uint64_t sub_18F254250()
{
  OUTLINED_FUNCTION_69();
  v1 = *(v0 + 96);

  OUTLINED_FUNCTION_0_49();
  sub_18F12FC8C(v1, v2);

  OUTLINED_FUNCTION_71();

  return v3();
}

uint64_t sub_18F2542C4()
{
  OUTLINED_FUNCTION_69();
  v1[7] = v0;
  v2 = sub_18F520F1C();
  OUTLINED_FUNCTION_10(v2);
  v1[8] = OUTLINED_FUNCTION_34_0();
  v3 = sub_18F520ADC();
  v1[9] = v3;
  OUTLINED_FUNCTION_51(v3);
  v1[10] = v4;
  v1[11] = OUTLINED_FUNCTION_34_0();
  v5 = sub_18F52189C();
  OUTLINED_FUNCTION_10(v5);
  v1[12] = OUTLINED_FUNCTION_34_0();
  v6 = sub_18F520B3C();
  OUTLINED_FUNCTION_10(v6);
  v1[13] = OUTLINED_FUNCTION_34_0();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A0, &unk_18F53E6F0);
  OUTLINED_FUNCTION_10(v7);
  v1[14] = OUTLINED_FUNCTION_34_0();
  v8 = type metadata accessor for IntentDialog(0);
  v1[15] = v8;
  OUTLINED_FUNCTION_10(v8);
  v1[16] = OUTLINED_FUNCTION_34_0();
  v9 = type metadata accessor for IntentContext(0);
  v1[17] = v9;
  OUTLINED_FUNCTION_10(v9);
  v1[18] = OUTLINED_FUNCTION_19_13();
  v1[19] = swift_task_alloc();
  v10 = OUTLINED_FUNCTION_9_12();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_18F254448(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_126_1();
  OUTLINED_FUNCTION_145();
  static IntentContext.current.getter(*(v24 + 152));
  v26 = *(v24 + 112);
  v25 = *(v24 + 120);
  v27 = *(v24 + 56);
  v28 = type metadata accessor for ContinueInAppTask(0);
  *(v24 + 160) = v28;
  v29 = *(v27 + v28[7]);
  v30 = (v27 + v28[10]);
  v50 = *v30;
  HIDWORD(a16) = *(v30 + 16);
  v48 = *(v30 + 4);
  v49 = *(v30 + 3);
  v31 = *(v27 + v28[11]);
  v51 = *(v27 + v28[12]);
  sub_18F0EF200();
  if (__swift_getEnumTagSinglePayload(v26, 1, v25) == 1)
  {
    a10 = *(v24 + 112);
    a11 = *(v24 + 120);
    a9 = *(v24 + 104);
    HIDWORD(a13) = v29;
    v33 = *(v24 + 80);
    v32 = *(v24 + 88);
    a12 = v31;
    v34 = *(v24 + 72);
    sub_18F52181C();
    *v32 = type metadata accessor for IntentContext.__();
    (*(v33 + 104))(v32, *MEMORY[0x1E6968E00], v34);
    sub_18F520EDC();
    OUTLINED_FUNCTION_13_0();
    sub_18F520B4C();
    IntentDialog.init(_:)();
    if (__swift_getEnumTagSinglePayload(a10, 1, a11) != 1)
    {
      sub_18F0EF1A8(*(v24 + 112), &qword_1EACCF7A0, &unk_18F53E6F0);
    }
  }

  else
  {
    sub_18F1D57E0();
  }

  v35 = *(*(v24 + 152) + *(*(v24 + 136) + 92));
  *(v24 + 16) = v50;
  *(v24 + 32) = BYTE4(a16);
  *(v24 + 40) = v49;
  *(v24 + 48) = v48;
  *&v50 = v35 + *v35;
  v36 = swift_task_alloc();
  *(v24 + 168) = v36;
  *v36 = v24;
  v36[1] = sub_18F2547B4;
  OUTLINED_FUNCTION_171(*(v24 + 128));
  OUTLINED_FUNCTION_68_2();

  return v45(v37, v38, v39, v40, v41, v42, v43, v44, a9, a10, a11, a12, a13, v48, v49, a16, v50, *(&v50 + 1), v51, a20, a21, a22, a23, a24);
}

uint64_t sub_18F2547B4()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_5_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_39();
  *v5 = v4;
  *(v6 + 176) = v0;

  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_18F2548AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_29();
  v11 = v10[20];
  v12 = v10[18];
  v13 = v10[16];
  v14 = v10[7];
  OUTLINED_FUNCTION_66();
  sub_18F255288();
  sub_18F2196F8(1);
  OUTLINED_FUNCTION_90_3();
  sub_18F12FC8C(v13, v15);
  sub_18F12FC8C(v12, type metadata accessor for IntentContext);
  v16 = OUTLINED_FUNCTION_56();
  sub_18F12FC8C(v16, v17);
  v18 = (v14 + *(v11 + 24));
  v19 = *v18;
  v10[23] = *v18;
  v10[24] = v18[1];
  if (v19)
  {

    v38 = v19 + *v19;
    v20 = swift_task_alloc();
    v10[25] = v20;
    *v20 = v10;
    OUTLINED_FUNCTION_12_3(v20);
    OUTLINED_FUNCTION_36();

    return v21(v21, v22, v23, v24, v25, v26, v27, v28, v38, a10);
  }

  else
  {
    OUTLINED_FUNCTION_158_0();

    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_36();

    return v31(v30, v31, v32, v33, v34, v35, v36, v37, a9, a10);
  }
}

uint64_t sub_18F254A90()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_5_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_39();
  *v5 = v4;
  *(v6 + 208) = v0;

  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_18F254B88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_154_0();
  OUTLINED_FUNCTION_29();
  v11 = *(v10 + 152);
  OUTLINED_FUNCTION_90_3();
  sub_18F12FC8C(v12, v13);
  OUTLINED_FUNCTION_0_49();
  sub_18F12FC8C(v11, v14);
  OUTLINED_FUNCTION_157_0();

  OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_43_2();

  return v16(v15, v16, v17, v18, v19, v20, v21, v22, a9, a10);
}

uint64_t sub_18F254C44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_29();
  sub_18F0F689C(*(v10 + 184), *(v10 + 192));
  OUTLINED_FUNCTION_158_0();

  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_36();

  return v12(v11, v12, v13, v14, v15, v16, v17, v18, a9, a10);
}

uint64_t sub_18F254CE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_154_0();
  OUTLINED_FUNCTION_29();
  sub_18F0F689C(*(v10 + 184), *(v10 + 192));
  OUTLINED_FUNCTION_157_0();

  OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_43_2();

  return v12(v11, v12, v13, v14, v15, v16, v17, v18, a9, a10);
}

uint64_t sub_18F254D88()
{
  OUTLINED_FUNCTION_69();
  v1[2] = v0;
  v2 = type metadata accessor for IntentContext(0);
  v1[3] = v2;
  OUTLINED_FUNCTION_10(v2);
  v1[4] = OUTLINED_FUNCTION_34_0();
  v3 = OUTLINED_FUNCTION_9_12();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_18F254E04()
{
  OUTLINED_FUNCTION_31();
  static IntentContext.current.getter(v0[4]);
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];
  v4 = *(type metadata accessor for OpenURLTask(0) + 20);
  v8 = (*(v2 + *(v1 + 96)) + **(v2 + *(v1 + 96)));
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v0[5] = v5;
  *v5 = v6;
  v5[1] = sub_18F254F64;

  return v8(v3 + v4);
}

uint64_t sub_18F254F64()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_5_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_39();
  *v5 = v4;
  *(v6 + 48) = v0;

  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_18F25505C()
{
  OUTLINED_FUNCTION_69();
  v1 = *(v0 + 32);
  OUTLINED_FUNCTION_0_49();
  sub_18F12FC8C(v1, v2);

  OUTLINED_FUNCTION_6();

  return v3();
}

uint64_t sub_18F2550C4()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_0_49();
  sub_18F12FC8C(v0, v1);

  OUTLINED_FUNCTION_71();

  return v2();
}

id sub_18F25512C(void *a1, void *a2, void *a3, uint64_t a4)
{
  sub_18F0F21A8(0, &qword_1ED6FC6F0, 0x1E69AC690);
  v8 = sub_18F521C8C();

  v9 = [v4 initWithAction:a1 output:a2 actionAppContext:a3 predictions:v8];

  return v9;
}

id sub_18F2551D0(void *a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  sub_18F0F21A8(0, &qword_1ED6FC6F0, 0x1E69AC690);
  v10 = sub_18F521C8C();

  v11 = [v5 initWithAction:a1 output:a2 actionAppContext:a3 predictions:v10 undoReference:a5];

  return v11;
}

uint64_t sub_18F255288()
{
  OUTLINED_FUNCTION_79();
  v1(0);
  OUTLINED_FUNCTION_10_0();
  v2 = OUTLINED_FUNCTION_56();
  v3(v2);
  return v0;
}

uint64_t sub_18F2552E0()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_24_1();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_9_6(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_23_19(v1);

  return sub_18F34CADC();
}

uint64_t sub_18F255364()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_24_1();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_9_6(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_23_19(v1);

  return sub_18F34CA58();
}

uint64_t sub_18F2553E8()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_24_1();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_9_6(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_23_19(v1);

  return sub_18F34C484();
}

uint64_t sub_18F25546C()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_24_1();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_9_6(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_23_19(v1);

  return sub_18F34C508();
}

uint64_t sub_18F2554F0(void *a1)
{
  v1 = [a1 activityIdentifier];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_18F5218DC();

  return v3;
}

uint64_t sub_18F255554(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_18F2555EC;

  return sub_18F34C58C();
}

uint64_t sub_18F2555EC()
{
  OUTLINED_FUNCTION_32_4();
  OUTLINED_FUNCTION_31();
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_85();
  v7 = v6;
  OUTLINED_FUNCTION_1_0();
  *v8 = v7;
  v9 = *v1;
  OUTLINED_FUNCTION_39();
  *v10 = v9;

  if (!v0)
  {
    v11 = *(v7 + 16);
    *v11 = v5;
    v11[1] = v3;
  }

  OUTLINED_FUNCTION_31_9();

  return v13(v12, v13, v14, v15, v16, v17, v18, v19);
}

uint64_t sub_18F2556E8()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_24_1();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_9_6(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_23_19(v1);

  return sub_18F34C740(v3, v4);
}

uint64_t sub_18F25579C()
{
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_24_1();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_9_6(v1);
  *v2 = v3;
  v2[1] = sub_18F0FC870;
  v4 = OUTLINED_FUNCTION_16_5();

  return v5(v4, v0);
}

uint64_t sub_18F2558A4()
{
  OUTLINED_FUNCTION_21();
  v2 = v1;
  v4 = v3;
  v6 = *(v0 + 16);
  v5 = *(v0 + 24);
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_9_6(v7);
  *v8 = v9;
  v8[1] = sub_18F0FC870;

  return sub_18F2522B4(v4, v2, v6, v5);
}

uint64_t sub_18F25594C()
{
  OUTLINED_FUNCTION_21();
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_9_6(v4);
  *v5 = v6;
  v5[1] = sub_18F0FC874;
  v7 = OUTLINED_FUNCTION_16_5();

  return sub_18F2526A0(v7, v1, v2, v3);
}

uint64_t sub_18F2559F0()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_24_1();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_9_6(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_23_19(v1);

  return sub_18F34C37C();
}

uint64_t sub_18F255AA4()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_24_1();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_9_6(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_23_19(v1);

  return sub_18F34C400();
}

unint64_t OUTLINED_FUNCTION_97_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);

  return sub_18F11897C(v17, v18, va);
}

uint64_t OUTLINED_FUNCTION_111_0()
{

  return swift_arrayDestroy();
}

void OUTLINED_FUNCTION_123_0()
{

  JUMPOUT(0x193ADB000);
}

void OUTLINED_FUNCTION_124_0()
{

  JUMPOUT(0x193ADB000);
}

void OUTLINED_FUNCTION_125_0()
{

  JUMPOUT(0x193ADB000);
}

id OUTLINED_FUNCTION_133_0()
{

  return sub_18F2551D0(v4, v1, v0, v2, v3);
}

uint64_t OUTLINED_FUNCTION_136_0()
{
}

void OUTLINED_FUNCTION_156_0()
{

  sub_18F2196F8(1);
}

uint64_t OUTLINED_FUNCTION_157_0()
{
}

double OUTLINED_FUNCTION_160@<D0>(uint64_t a1@<X8>)
{
  *(v2 + 152) = *(v1 + *(a1 + 88) + 8);

  return result;
}

uint64_t OUTLINED_FUNCTION_161_0()
{
}

void OUTLINED_FUNCTION_174_0()
{
  *(v1 + 128) = v0;
  *(v1 + 136) = 19;
  *(v1 + 144) = 2;
}

uint64_t OUTLINED_FUNCTION_178()
{

  return sub_18F0EF200();
}

void OUTLINED_FUNCTION_179_0()
{

  JUMPOUT(0x193ADB000);
}

uint64_t OUTLINED_FUNCTION_181_1(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v1, 1, 1, a1);
}

void OUTLINED_FUNCTION_185_0()
{

  JUMPOUT(0x193ADB000);
}

uint64_t OUTLINED_FUNCTION_186_0()
{
}

void IntentParameter<>.init(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:supportedValues:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  OUTLINED_FUNCTION_18();
  a19 = v23;
  a20 = v24;
  v67 = v25;
  v68 = v26;
  v66 = v27;
  v70 = v28;
  v71 = v29;
  v31 = v30;
  v65 = v30;
  v32 = a21;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A0, &unk_18F53E6F0);
  v34 = OUTLINED_FUNCTION_10(v33);
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v61 - v36;
  v61 = &v61 - v36;
  v69 = v21;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_28_1(AssociatedTypeWitness);
  OUTLINED_FUNCTION_18_23();
  OUTLINED_FUNCTION_2_2(v39, &a15);
  v41 = v40;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_23();
  v62 = v22;
  v43 = sub_18F520B3C();
  v44 = OUTLINED_FUNCTION_2_2(v43, &a17);
  v46 = v45;
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_4();
  (*(v46 + 16))(v48 - v47, v31);
  (*(v41 + 16))(v22, v71, v21);
  OUTLINED_FUNCTION_11_2();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_31_11();
  sub_18F39D018(v21, v32, v49);
  v50 = v66;
  sub_18F116908(v66, v37, &qword_1EACCF7A0, &unk_18F53E6F0);
  v51 = v67;
  sub_18F116908(v67, v64, &qword_1EACCF7A0, &unk_18F53E6F0);
  OUTLINED_FUNCTION_11_5();
  nullsub_1();
  v53 = v52;
  OUTLINED_FUNCTION_11_5();
  v58 = type metadata accessor for AppEnumOptionsProvider(v54, v55, v56, v57);
  v73 = OUTLINED_FUNCTION_0_50(v58);
  v72 = v53;
  OUTLINED_FUNCTION_4_0();
  sub_18F116B3C();
  sub_18F0EF148(v51, &qword_1EACCF7A0, &unk_18F53E6F0);
  sub_18F0EF148(v50, &qword_1EACCF7A0, &unk_18F53E6F0);
  (*(v41 + 8))(v71, v63);
  sub_18F0EF148(v70, &qword_1EACCF7A8, &qword_18F540440);
  v59 = OUTLINED_FUNCTION_22_4();
  v60(v59);
  OUTLINED_FUNCTION_32_0();
  OUTLINED_FUNCTION_16();
}

void IntentParameter<>.init(description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:supportedValues:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_18();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v49 = v25;
  v50 = v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A0, &unk_18F53E6F0);
  v28 = OUTLINED_FUNCTION_10(v27);
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_3();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_11_5();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v31 = OUTLINED_FUNCTION_28_1(AssociatedTypeWitness);
  OUTLINED_FUNCTION_2_2(v31, &a17);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_23();
  v33 = sub_18F520B3C();
  v34 = OUTLINED_FUNCTION_10(v33);
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_30_15();
  v35();
  OUTLINED_FUNCTION_11_2();
  OUTLINED_FUNCTION_11_5();
  v36 = swift_getAssociatedTypeWitness();
  sub_18F39D018(v36, v24, &v51);
  sub_18F116908(v49, v20, &qword_1EACCF7A0, &unk_18F53E6F0);
  v37 = OUTLINED_FUNCTION_33_1();
  sub_18F116908(v37, v38, &qword_1EACCF7A0, &unk_18F53E6F0);
  nullsub_1();
  v40 = type metadata accessor for AppEnumOptionsProvider(0, v36, v24, v39);
  OUTLINED_FUNCTION_0_50(v40);
  OUTLINED_FUNCTION_4_0();
  sub_18F116B3C();
  OUTLINED_FUNCTION_18_0();
  sub_18F0EF148(v41, v42, v43);
  OUTLINED_FUNCTION_18_0();
  sub_18F0EF148(v44, v45, v46);
  v47 = OUTLINED_FUNCTION_22_4();
  v48(v47);
  sub_18F0EF148(v50, &qword_1EACCF7A8, &qword_18F540440);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_16();
}

{
  OUTLINED_FUNCTION_18();
  a19 = v22;
  a20 = v23;
  v25 = v24;
  v67 = v26;
  v68 = v27;
  v66 = v28;
  v30 = v29;
  v64 = v29;
  v70 = v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A0, &unk_18F53E6F0);
  v33 = OUTLINED_FUNCTION_10(v32);
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_3();
  v65 = v34;
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_74();
  v63 = v21;
  v69 = v20;
  OUTLINED_FUNCTION_11_5();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v37 = OUTLINED_FUNCTION_28_1(AssociatedTypeWitness);
  OUTLINED_FUNCTION_2_2(v37, &a17);
  v39 = v38;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v40);
  v42 = &v62 - v41;
  v43 = sub_18F520B3C();
  v44 = OUTLINED_FUNCTION_10(v43);
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_25_0();
  (*(v39 + 16))(v42, v30, v37);
  OUTLINED_FUNCTION_11_2();
  OUTLINED_FUNCTION_12_2();
  v45 = swift_getAssociatedTypeWitness();
  sub_18F39D018(v45, v25, &v73);
  sub_18F116908(v66, v21, &qword_1EACCF7A0, &unk_18F53E6F0);
  v46 = OUTLINED_FUNCTION_33_1();
  sub_18F116908(v46, v47, &qword_1EACCF7A0, &unk_18F53E6F0);
  nullsub_1();
  v49 = v48;
  v50 = OUTLINED_FUNCTION_28_33();
  v53 = type metadata accessor for AppEnumOptionsProvider(v50, v51, v25, v52);
  v72 = OUTLINED_FUNCTION_0_50(v53);
  v71 = v49;
  OUTLINED_FUNCTION_4_0();
  sub_18F116B3C();
  OUTLINED_FUNCTION_18_0();
  sub_18F0EF148(v54, v55, v56);
  OUTLINED_FUNCTION_18_0();
  sub_18F0EF148(v57, v58, v59);
  v60 = OUTLINED_FUNCTION_22_4();
  v61(v60);
  sub_18F0EF148(v70, &qword_1EACCF7A8, &qword_18F540440);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_16();
}

void IntentParameter<>.init<A>(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:supportedValues:resolvers:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  OUTLINED_FUNCTION_18();
  a19 = v27;
  a20 = v28;
  v75 = v29;
  v80 = v30;
  v77 = v31;
  v78 = v32;
  v34 = v33;
  v71 = v33;
  v81 = v35;
  v37 = v36;
  v76 = v36;
  v73 = a25;
  v69 = a23;
  v38 = a21;
  v68 = a22;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A0, &unk_18F53E6F0);
  v40 = OUTLINED_FUNCTION_10(v39);
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v41);
  v82 = &v66 - v42;
  v79 = v25;
  OUTLINED_FUNCTION_30_15();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_28_1(AssociatedTypeWitness);
  OUTLINED_FUNCTION_18_23();
  OUTLINED_FUNCTION_2_2(v44, &a11);
  v46 = v45;
  v72 = v45;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_23();
  v67 = v26;
  v48 = sub_18F520B3C();
  v49 = OUTLINED_FUNCTION_2_2(v48, &a17);
  v51 = v50;
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_4();
  (*(v51 + 16))(v53 - v52, v37);
  (*(v46 + 16))(v26, v34, v25);
  OUTLINED_FUNCTION_24_22();
  v75();
  OUTLINED_FUNCTION_30_15();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_31_11();
  v54 = v73;
  sub_18F39D018(v38, v73, v55);
  v56 = v77;
  sub_18F116908(v77, v82, &qword_1EACCF7A0, &unk_18F53E6F0);
  v57 = v78;
  sub_18F116908(v78, v74, &qword_1EACCF7A0, &unk_18F53E6F0);
  nullsub_1();
  v59 = v58;
  v60 = OUTLINED_FUNCTION_12_2();
  v63 = type metadata accessor for AppEnumOptionsProvider(v60, v61, v54, v62);
  v84 = OUTLINED_FUNCTION_0_50(v63);
  v83 = v59;
  OUTLINED_FUNCTION_4_0();
  sub_18F116B3C();

  sub_18F0EF148(v57, &qword_1EACCF7A0, &unk_18F53E6F0);
  sub_18F0EF148(v56, &qword_1EACCF7A0, &unk_18F53E6F0);
  (*(v72 + 8))(v71, v70);
  sub_18F0EF148(v81, &qword_1EACCF7A8, &qword_18F540440);
  v64 = OUTLINED_FUNCTION_22_4();
  v65(v64);
  OUTLINED_FUNCTION_32_0();
  OUTLINED_FUNCTION_16();
}

void IntentParameter<>.init<A>(description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:supportedValues:resolvers:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_18();
  a19 = v26;
  a20 = v27;
  v29 = v28;
  v65 = v28;
  v70 = v30;
  v73 = v31;
  v74 = v32;
  v72 = v33;
  v35 = v34;
  v69 = v34;
  v76 = v36;
  v37 = a24;
  OUTLINED_FUNCTION_19_23();
  v66 = a21;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A0, &unk_18F53E6F0);
  v39 = OUTLINED_FUNCTION_10(v38);
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_3();
  v71 = v40;
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_74();
  v64 = v25;
  v75 = v24;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_28_1(AssociatedTypeWitness);
  OUTLINED_FUNCTION_18_23();
  OUTLINED_FUNCTION_2_2(v43, &a16);
  v45 = v44;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v46);
  v48 = &v63 - v47;
  v49 = sub_18F520B3C();
  v50 = OUTLINED_FUNCTION_10(v49);
  MEMORY[0x1EEE9AC00](v50);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_25_0();
  (*(v45 + 16))(v48, v35, v24);
  v79[3] = v66;
  v79[4] = v67;
  __swift_allocate_boxed_opaque_existential_1(v79);
  v70();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_31_11();
  sub_18F39D018(v29, v37, v51);
  sub_18F116908(v72, v25, &qword_1EACCF7A0, &unk_18F53E6F0);
  v52 = OUTLINED_FUNCTION_33_1();
  sub_18F116908(v52, v53, &qword_1EACCF7A0, &unk_18F53E6F0);
  nullsub_1();
  v55 = v54;
  v56 = OUTLINED_FUNCTION_12_2();
  v59 = type metadata accessor for AppEnumOptionsProvider(v56, v57, v37, v58);
  v78 = OUTLINED_FUNCTION_0_50(v59);
  v77 = v55;
  OUTLINED_FUNCTION_4_0();
  sub_18F116B3C();

  sub_18F0EF148(v29, &qword_1EACCF7A0, &unk_18F53E6F0);
  OUTLINED_FUNCTION_111();
  sub_18F0EF148(v60, v61, v62);
  (*(v45 + 8))(v69, v68);
  sub_18F0EF148(v76, &qword_1EACCF7A8, &qword_18F540440);
  OUTLINED_FUNCTION_32_0();
  OUTLINED_FUNCTION_16();
}

void IntentParameter<>.init<A>(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:supportedValues:optionsProvider:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_18();
  a19 = v26;
  a20 = v27;
  v73 = v28;
  v62[1] = v29;
  v70 = v30;
  v68 = v31;
  v74 = v32;
  v75 = v33;
  v35 = v34;
  v66 = v34;
  v71 = a22;
  v69 = a21;
  v67 = a24;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A0, &unk_18F53E6F0);
  v37 = OUTLINED_FUNCTION_10(v36);
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v38);
  v40 = v62 - v39;
  v62[0] = v62 - v39;
  v72 = v24;
  OUTLINED_FUNCTION_18_0();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v42 = OUTLINED_FUNCTION_28_1(AssociatedTypeWitness);
  OUTLINED_FUNCTION_2_2(v42, &a11);
  v44 = v43;
  v63 = v43;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v45);
  v46 = OUTLINED_FUNCTION_35_0();
  v47 = OUTLINED_FUNCTION_2_2(v46, &a14);
  v49 = v48;
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_4();
  v52 = v51 - v50;

  (*(v49 + 16))(v52, v35, v46);
  (*(v44 + 16))(v25, v75, v42);
  OUTLINED_FUNCTION_11_2();
  OUTLINED_FUNCTION_12_2();
  v53 = swift_getAssociatedTypeWitness();
  sub_18F39D018(v53, v67, &v77);
  sub_18F116908(v68, v40, &qword_1EACCF7A0, &unk_18F53E6F0);
  v54 = v70;
  sub_18F116908(v70, v64, &qword_1EACCF7A0, &unk_18F53E6F0);
  v55 = v69;
  v76[3] = v69;
  v76[4] = v71;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v76);
  v57 = *(v55 - 8);
  v58 = v73;
  (*(v57 + 16))(boxed_opaque_existential_1, v73, v55);
  OUTLINED_FUNCTION_4_0();
  sub_18F116B3C();
  (*(v57 + 8))(v58, v55);
  sub_18F0EF148(v54, &qword_1EACCF7A0, &unk_18F53E6F0);
  OUTLINED_FUNCTION_111();
  sub_18F0EF148(v59, v60, v61);
  (*(v63 + 8))(v75, v62[2]);
  sub_18F0EF148(v74, &qword_1EACCF7A8, &qword_18F540440);
  (*(v49 + 8))(v66, v65);
  OUTLINED_FUNCTION_32_0();
  OUTLINED_FUNCTION_16();
}

void IntentParameter<>.init<A>(description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:supportedValues:optionsProvider:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_18();
  a19 = v25;
  a20 = v26;
  v28 = v27;
  v66 = v29;
  v58[1] = v30;
  v62 = v31;
  v63 = v32;
  v34 = v33;
  v59 = v33;
  v67 = v35;
  v64 = a21;
  v61 = a23;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A0, &unk_18F53E6F0);
  v37 = OUTLINED_FUNCTION_10(v36);
  v38 = MEMORY[0x1EEE9AC00](v37);
  v40 = v58 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_74();
  v65 = v23;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v42 = OUTLINED_FUNCTION_28_1(AssociatedTypeWitness);
  OUTLINED_FUNCTION_2_2(v42, &a15);
  v44 = v43;
  v60 = v43;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v45);
  v47 = v58 - v46;
  v48 = sub_18F520B3C();
  v49 = OUTLINED_FUNCTION_10(v48);
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_4();

  OUTLINED_FUNCTION_25_0();
  (*(v44 + 16))(v47, v34, v42);
  OUTLINED_FUNCTION_11_2();
  OUTLINED_FUNCTION_12_2();
  v50 = swift_getAssociatedTypeWitness();
  sub_18F39D018(v50, v61, &v69);
  sub_18F116908(v62, v24, &qword_1EACCF7A0, &unk_18F53E6F0);
  v51 = v63;
  sub_18F116908(v63, v40, &qword_1EACCF7A0, &unk_18F53E6F0);
  v68[3] = v28;
  v68[4] = v64;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v68);
  v53 = *(v28 - 8);
  v54 = v66;
  (*(v53 + 16))(boxed_opaque_existential_1, v66, v28);
  OUTLINED_FUNCTION_4_0();
  sub_18F116B3C();
  (*(v53 + 8))(v54, v28);
  sub_18F0EF148(v51, &qword_1EACCF7A0, &unk_18F53E6F0);
  OUTLINED_FUNCTION_26_1();
  sub_18F0EF148(v55, v56, v57);
  (*(v60 + 8))(v59, v58[2]);
  sub_18F0EF148(v67, &qword_1EACCF7A8, &qword_18F540440);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_16();
}

void IntentParameter<>.init(title:description:default:capabilities:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:supportedValues:)()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_13_9(v2, v3, v4, v5, v6, v7, v8, v9);
  v11 = v10;
  OUTLINED_FUNCTION_19_23();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A0, &unk_18F53E6F0);
  v13 = OUTLINED_FUNCTION_10(v12);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_9();
  v15 = MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_27_6(v15, v16, v17, v18, v19, v20, v21, v22, v60);
  v63 = v0;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v68 = OUTLINED_FUNCTION_28_1(AssociatedTypeWitness);
  OUTLINED_FUNCTION_11_0();
  v25 = v24;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v60 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A8, &qword_18F540440);
  OUTLINED_FUNCTION_10(v29);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v30);
  v31 = OUTLINED_FUNCTION_35_0();
  OUTLINED_FUNCTION_11_0();
  v33 = v32;
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_21_2(v35);

  v66 = v11;
  sub_18F116908(v11, v1, &qword_1EACCF7A8, &qword_18F540440);
  v36 = OUTLINED_FUNCTION_29_2();
  if (__swift_getEnumTagSinglePayload(v36, v37, v31) == 1)
  {
    OUTLINED_FUNCTION_25_0();
    v38 = OUTLINED_FUNCTION_29_2();
    if (__swift_getEnumTagSinglePayload(v38, v39, v31) != 1)
    {
      sub_18F0EF148(v1, &qword_1EACCF7A8, &qword_18F540440);
    }
  }

  else
  {
    (*(v33 + 32))(v67, v1, v31);
  }

  (*(v25 + 16))(v28, v69, v68);
  OUTLINED_FUNCTION_11_2();
  v40 = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_30_15();
  v41 = v61;
  sub_18F39D018(v42, v61, v43);
  sub_18F116908(v65, v60, &qword_1EACCF7A0, &unk_18F53E6F0);
  sub_18F116908(v64, v62, &qword_1EACCF7A0, &unk_18F53E6F0);
  nullsub_1();
  v45 = v44;
  v47 = type metadata accessor for AppEnumOptionsProvider(0, v40, v41, v46);
  v71 = OUTLINED_FUNCTION_0_50(v47);
  v70 = v45;
  OUTLINED_FUNCTION_4_0();
  sub_18F116B3C();
  OUTLINED_FUNCTION_11_5();
  sub_18F0EF148(v48, v49, v50);
  OUTLINED_FUNCTION_11_5();
  sub_18F0EF148(v51, v52, v53);
  (*(v25 + 8))(v69, v68);
  OUTLINED_FUNCTION_26_1();
  sub_18F0EF148(v54, v55, v56);
  OUTLINED_FUNCTION_26_1();
  sub_18F0EF148(v57, v58, v59);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_16();
}

void IntentParameter<>.init<A>(title:description:default:capabilities:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:supportedValues:resolvers:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void (*a21)(void), uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_13_9(v28, v29, v30, v31, v32, v33, v34, v35);
  v37 = v36;
  v80 = a26;
  v76[3] = a24;
  v76[2] = a23;
  v81 = a22;
  v77 = a21;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A0, &unk_18F53E6F0);
  v39 = OUTLINED_FUNCTION_10(v38);
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v40);
  v78 = v76 - v41;
  v82 = v26;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v87 = OUTLINED_FUNCTION_28_1(AssociatedTypeWitness);
  OUTLINED_FUNCTION_11_0();
  v44 = v43;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v45);
  v47 = v76 - v46;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A8, &qword_18F540440);
  OUTLINED_FUNCTION_10(v48);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_35_0();
  OUTLINED_FUNCTION_18_23();
  OUTLINED_FUNCTION_11_0();
  v51 = v50;
  MEMORY[0x1EEE9AC00](v52);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_21_2(v53);

  v85 = v37;
  sub_18F116908(v37, v27, &qword_1EACCF7A8, &qword_18F540440);
  v54 = OUTLINED_FUNCTION_29_2();
  if (__swift_getEnumTagSinglePayload(v54, v55, v26) == 1)
  {
    OUTLINED_FUNCTION_25_0();
    v56 = OUTLINED_FUNCTION_29_2();
    if (__swift_getEnumTagSinglePayload(v56, v57, v26) != 1)
    {
      sub_18F0EF148(v27, &qword_1EACCF7A8, &qword_18F540440);
    }
  }

  else
  {
    (*(v51 + 32))(v86, v27, v26);
  }

  v58 = *(v44 + 16);
  v76[1] = v47;
  v58(v47, v88, v87);
  OUTLINED_FUNCTION_24_22();
  v77();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_31_11();
  OUTLINED_FUNCTION_11_5();
  v59 = v80;
  sub_18F39D018(v60, v80, v61);
  v62 = v84;
  sub_18F116908(v84, v78, &qword_1EACCF7A0, &unk_18F53E6F0);
  v63 = v83;
  sub_18F116908(v83, v79, &qword_1EACCF7A0, &unk_18F53E6F0);
  nullsub_1();
  v65 = v64;
  v66 = OUTLINED_FUNCTION_12_2();
  v69 = type metadata accessor for AppEnumOptionsProvider(v66, v67, v59, v68);
  v90 = OUTLINED_FUNCTION_0_50(v69);
  v89 = v65;
  OUTLINED_FUNCTION_4_0();
  sub_18F116B3C();

  sub_18F0EF148(v63, &qword_1EACCF7A0, &unk_18F53E6F0);
  sub_18F0EF148(v62, &qword_1EACCF7A0, &unk_18F53E6F0);
  (*(v44 + 8))(v88, v87);
  OUTLINED_FUNCTION_111();
  sub_18F0EF148(v70, v71, v72);
  OUTLINED_FUNCTION_111();
  sub_18F0EF148(v73, v74, v75);
  OUTLINED_FUNCTION_32_0();
  OUTLINED_FUNCTION_16();
}

void IntentParameter<>.init<A>(title:description:default:capabilities:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:supportedValues:optionsProvider:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  OUTLINED_FUNCTION_18();
  v92 = v26;
  v89 = v27;
  v90 = v28;
  v83[1] = v29;
  v95 = v30;
  v91 = v31;
  v33 = v32;
  v84 = a25;
  v85 = a23;
  OUTLINED_FUNCTION_19_23();
  v87 = a21;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A0, &unk_18F53E6F0);
  v35 = OUTLINED_FUNCTION_10(v34);
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_9();
  v37 = MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_27_6(v37, v38, v39, v40, v41, v42, v43, v44, v83[0]);
  v88 = v25;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v94 = OUTLINED_FUNCTION_28_1(AssociatedTypeWitness);
  OUTLINED_FUNCTION_11_0();
  v47 = v46;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v48);
  v50 = v83 - v49;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A8, &qword_18F540440);
  OUTLINED_FUNCTION_10(v51);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v52);
  v54 = v83 - v53;
  v55 = sub_18F520B3C();
  OUTLINED_FUNCTION_11_0();
  v57 = v56;
  MEMORY[0x1EEE9AC00](v58);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_21_2(v59);

  v92 = v33;
  sub_18F116908(v33, v54, &qword_1EACCF7A8, &qword_18F540440);
  if (__swift_getEnumTagSinglePayload(v54, 1, v55) == 1)
  {
    OUTLINED_FUNCTION_25_0();
    if (__swift_getEnumTagSinglePayload(v54, 1, v55) != 1)
    {
      sub_18F0EF148(v54, &qword_1EACCF7A8, &qword_18F540440);
    }
  }

  else
  {
    (*(v57 + 32))(v93, v54, v55);
  }

  (*(v47 + 16))(v50, v95, v94);
  OUTLINED_FUNCTION_11_2();
  v60 = swift_getAssociatedTypeWitness();
  sub_18F39D018(v60, v84, &v97);
  OUTLINED_FUNCTION_26_1();
  sub_18F116908(v61, v62, v63, &unk_18F53E6F0);
  OUTLINED_FUNCTION_111();
  sub_18F116908(v64, v65, v66, &unk_18F53E6F0);
  v67 = v86;
  v96[3] = v86;
  v96[4] = v85;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v96);
  v69 = *(v67 - 8);
  v70 = v87;
  (*(v69 + 16))(boxed_opaque_existential_1, v87, v67);
  OUTLINED_FUNCTION_4_0();
  sub_18F116B3C();
  (*(v69 + 8))(v70, v67);
  OUTLINED_FUNCTION_18_0();
  sub_18F0EF148(v71, v72, v73);
  OUTLINED_FUNCTION_18_0();
  sub_18F0EF148(v74, v75, v76);
  (*(v47 + 8))(v95, v94);
  OUTLINED_FUNCTION_26_1();
  sub_18F0EF148(v77, v78, v79);
  OUTLINED_FUNCTION_26_1();
  sub_18F0EF148(v80, v81, v82);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_16();
}

void sub_18F2584D0()
{
  OUTLINED_FUNCTION_102();
  v1 = v0;
  v2 = sub_18F520B3C();
  v3 = OUTLINED_FUNCTION_10(v2);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_11_1();
  OUTLINED_FUNCTION_28_3();
  v1();
  OUTLINED_FUNCTION_101_0();
}

void sub_18F258614()
{
  OUTLINED_FUNCTION_102();
  v1 = OUTLINED_FUNCTION_4_4();
  v2 = OUTLINED_FUNCTION_10(v1);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_10_6();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_28_3();
  v0();
  OUTLINED_FUNCTION_101_0();
}

void sub_18F2586BC()
{
  OUTLINED_FUNCTION_102();
  v1 = OUTLINED_FUNCTION_4_4();
  v2 = OUTLINED_FUNCTION_10(v1);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_10_6();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_28_3();
  v0();
  OUTLINED_FUNCTION_101_0();
}

void sub_18F2588FC()
{
  OUTLINED_FUNCTION_18();
  v2 = OUTLINED_FUNCTION_4_4();
  OUTLINED_FUNCTION_0();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_4();
  (*(v4 + 16))(v7 - v6, v1, v2);
  OUTLINED_FUNCTION_11_1();
  OUTLINED_FUNCTION_28_3();
  v0();
  (*(v4 + 8))(v1, v2);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_16();
}

void sub_18F258AF0()
{
  OUTLINED_FUNCTION_18();
  v14 = v5;
  v7 = v6;
  OUTLINED_FUNCTION_3_8();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_4();
  v10 = OUTLINED_FUNCTION_5_0(v9);
  v11(v10);
  v14(v3, v2, v4, v1, 0, v0, v7);
  v12 = OUTLINED_FUNCTION_9_3();
  v13(v12);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_16();
}

void sub_18F258BFC()
{
  OUTLINED_FUNCTION_18();
  v14 = v5;
  v7 = v6;
  OUTLINED_FUNCTION_3_8();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_4();
  v10 = OUTLINED_FUNCTION_5_0(v9);
  v11(v10);
  v14(v3, v2, v4, 0, v1, v0, v7);
  v12 = OUTLINED_FUNCTION_9_3();
  v13(v12);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_16();
}

uint64_t sub_18F258F9C(uint64_t a1)
{
  v1 = sub_18F52190C();
  MEMORY[0x1EEE9AC00](v1 - 8);
  v2 = sub_18F52066C();
  MEMORY[0x1EEE9AC00](v2);
  sub_18F5206AC();
  swift_allocObject();
  sub_18F52069C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACD4430, &qword_18F54F460);
  *(swift_allocObject() + 16) = xmmword_18F53F800;
  sub_18F52065C();
  sub_18F259280();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACD4440, &qword_18F54B620);
  sub_18F2592D8();
  sub_18F52266C();
  sub_18F52067C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD33B0, &qword_18F54B628);
  sub_18F52298C();
  sub_18F25933C();
  v3 = sub_18F52068C();
  v5 = v4;

  sub_18F5218FC();
  v6 = sub_18F5218EC();
  if (v7)
  {
    v8 = v6;
    sub_18F123A1C(v3, v5);
  }

  else
  {
    sub_18F123A1C(v3, v5);

    return 32123;
  }

  return v8;
}

unint64_t sub_18F259240@<X0>(void *a1@<X8>)
{
  result = sub_18F258F80();
  *a1 = 0xD000000000000016;
  a1[1] = v3;
  return result;
}

unint64_t sub_18F259280()
{
  result = qword_1EACD33A0;
  if (!qword_1EACD33A0)
  {
    sub_18F52066C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD33A0);
  }

  return result;
}

unint64_t sub_18F2592D8()
{
  result = qword_1EACD33A8;
  if (!qword_1EACD33A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EACD4440, &qword_18F54B620);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD33A8);
  }

  return result;
}

unint64_t sub_18F25933C()
{
  result = qword_1EACD33B8[0];
  if (!qword_1EACD33B8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EACD33B8);
  }

  return result;
}

uint64_t sub_18F259390(uint64_t a1, unint64_t a2, uint64_t a3)
{
  result = MEMORY[0x1E69E7CC0];
  v11 = MEMORY[0x1E69E7CC0];
  v5 = *(a3 + 16);
  if (v5)
  {
    if (v5 == 1)
    {
      v7 = -1;
    }

    else
    {
      v7 = 0;
    }

    for (i = (a3 + 32); ; i += 5)
    {
      v9 = i[3];
      v10 = i[4];
      __swift_project_boxed_opaque_existential_1Tm(i, v9);
      result = sub_18F259454(i, &v11, a1, a2, v7, v9, v10);
      if (v7 == 0x7FFFFFFFFFFFFFFFLL)
      {
        break;
      }

      ++v7;
      if (!--v5)
      {
        return v11;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_18F259454(void *a1, uint64_t *a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v96 = a2;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A8, &qword_18F540440);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v86 = v79 - v12;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v85 = AssociatedTypeWitness;
  v84 = AssociatedConformanceWitness;
  v16 = type metadata accessor for _NLGRepresentationEntity(0, AssociatedTypeWitness, AssociatedConformanceWitness, v15);
  v17 = OUTLINED_FUNCTION_1_45(v16, v107);
  v19 = v18;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_3();
  v82 = v20;
  MEMORY[0x1EEE9AC00](v21);
  v88 = v79 - v22;
  v23 = sub_18F520F1C();
  MEMORY[0x1EEE9AC00](v23 - 8);
  v95 = v79 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_18F520B3C();
  v26 = OUTLINED_FUNCTION_1_45(v25, &v111);
  v28 = v27;
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_3();
  v94 = v29;
  MEMORY[0x1EEE9AC00](v30);
  v32 = v79 - v31;
  v33 = a1[3];
  __swift_project_boxed_opaque_existential_1Tm(a1, v33);
  v34 = sub_18F11D920(v33);
  v98 = *(v34 + 16);
  if (!v98)
  {
  }

  v35 = 0;
  v79[1] = v34;
  v97 = v34 + 32;
  v93 = (v28 + 16);
  v36 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v36 = a3 & 0xFFFFFFFFFFFFLL;
  }

  v92 = v36;
  v91 = v28 + 8;
  v81 = (v19 + 16);
  v80 = (v19 + 8);
  v90 = a4;
  v37 = a3;
  v89 = a3;
  v87 = a5;
  while (1)
  {
    sub_18F0FD724(v97 + 40 * v35, &v108);
    v38 = v109;
    v39 = v110;
    __swift_project_boxed_opaque_existential_1Tm(&v108, v109);
    (*(v39 + 72))(&v105, v38, v39);
    if (v106)
    {
      break;
    }

    sub_18F10095C(&v105);
LABEL_31:
    ++v35;
    __swift_destroy_boxed_opaque_existential_1Tm(&v108);
    if (v35 == v98)
    {
    }
  }

  sub_18F0FD0B4(&v105, v107);
  v41 = v109;
  v40 = v110;
  __swift_project_boxed_opaque_existential_1Tm(&v108, v109);
  (*(*(v40 + 8) + 32))(v41);
  sub_18F520EDC();
  sub_18F520B2C();
  (*v93)(v94, v32, v99);
  v42 = sub_18F52193C();
  v44 = v43;
  if (v92)
  {
    *&v105 = v37;
    *(&v105 + 1) = a4;
    _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
    MEMORY[0x193ADB000](46, 0xE100000000000000);
    MEMORY[0x193ADB000](v42, v44);

    v44 = *(&v105 + 1);
    v42 = v105;
  }

  if ((a5 & 0x8000000000000000) == 0)
  {
    *&v105 = v42;
    *(&v105 + 1) = v44;
    MEMORY[0x193ADB000](91, 0xE100000000000000);
    *&v103 = a5;
    v45 = sub_18F522C9C();
    MEMORY[0x193ADB000](v45);

    MEMORY[0x193ADB000](93, 0xE100000000000000);
    v44 = *(&v105 + 1);
    v42 = v105;
  }

  sub_18F0FD724(v107, &v105);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD1490, &qword_18F543C50);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACD4540, &qword_18F547E80);
  OUTLINED_FUNCTION_4_39();
  if (swift_dynamicCast())
  {
    sub_18F0FD0B4(&v103, &v100);
    v46 = v101;
    v47 = v102;
    __swift_project_boxed_opaque_existential_1Tm(&v100, v101);
    sub_18F259454(&v100, v96, v42, v44, -1, v46, v47);

    v48 = OUTLINED_FUNCTION_0_51();
    v49(v48);
    v50 = &v100;
    goto LABEL_23;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD3158, &qword_18F54A768);
  OUTLINED_FUNCTION_4_39();
  if (!swift_dynamicCast())
  {
    __swift_project_boxed_opaque_existential_1Tm(v107, v107[3]);
    sub_18F11E26C();
    if (!v101)
    {
      v69 = OUTLINED_FUNCTION_0_51();
      v70(v69);

      sub_18F10095C(&v100);
      goto LABEL_30;
    }

    sub_18F0FD0B4(&v100, &v103);
    __swift_project_boxed_opaque_existential_1Tm(&v103, v104);
    _IntentValue.asNLGValue.getter();
    v53 = v109;
    v54 = v110;
    __swift_project_boxed_opaque_existential_1Tm(&v108, v109);
    *&v100 = (*(v54 + 96))(v53, v54);
    *(&v100 + 1) = v55;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACD4530, &qword_18F549B50);
    sub_18F52194C();
    v56 = v86;
    sub_18F520ACC();
    __swift_storeEnumTagSinglePayload(v56, 0, 1, v99);
    _NLGRepresentationEntity.init(keyPath:format:value:type:title:)(0, 0, 0);
    v57 = v96;
    v58 = *v96;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v57 = v58;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_18F168C38();
      OUTLINED_FUNCTION_2_47(v77);
    }

    v60 = *(v58 + 16);
    a4 = v90;
    v37 = v89;
    if (v60 >= *(v58 + 24) >> 1)
    {
      sub_18F168C38();
      OUTLINED_FUNCTION_2_47(v78);
    }

    v61 = OUTLINED_FUNCTION_0_51();
    v62(v61);
    v63 = v82;
    v64 = v88;
    v65 = v83;
    (*v81)(v82, v88, v83);
    WitnessTable = swift_getWitnessTable();
    v67 = v63;
    v68 = v96;
    sub_18F317A70(v60, v67, v96, v65, WitnessTable);
    (*v80)(v64, v65);
    *v68 = v58;
    v50 = &v103;
LABEL_23:
    __swift_destroy_boxed_opaque_existential_1Tm(v50);
LABEL_30:
    __swift_destroy_boxed_opaque_existential_1Tm(&v105);
    __swift_destroy_boxed_opaque_existential_1Tm(v107);
    goto LABEL_31;
  }

  *&v100 = MEMORY[0x1E69E7CC0];
  v51 = *(v103 + 16);
  if (v51 != 1)
  {
    if (v51)
    {
      v52 = 0;
      goto LABEL_26;
    }

LABEL_29:

    sub_18F25DA4C(v100);
    v75 = OUTLINED_FUNCTION_0_51();
    v76(v75);
    a5 = v87;
    a4 = v90;
    v37 = v89;
    goto LABEL_30;
  }

  v52 = -1;
LABEL_26:
  v71 = (v103 + 32);
  while (1)
  {
    v72 = v71[3];
    v73 = v71[4];
    __swift_project_boxed_opaque_existential_1Tm(v71, v72);
    result = sub_18F259454(v71, &v100, v42, v44, v52, v72, v73);
    if (v52 == 0x7FFFFFFFFFFFFFFFLL)
    {
      break;
    }

    ++v52;
    v71 += 5;
    if (!--v51)
    {
      goto LABEL_29;
    }
  }

  __break(1u);
  return result;
}

uint64_t EntityQuerySort.Ordering.hashValue.getter(char a1)
{
  sub_18F522EFC();
  MEMORY[0x193ADC4F0](a1 & 1);
  return sub_18F522F4C();
}

uint64_t sub_18F259E64(uint64_t a1)
{
  sub_18F522EFC();
  EntityQuerySort.Ordering.hash(into:)(v3, *v1);
  return sub_18F522F4C();
}

uint64_t sub_18F259EB4@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  *a3 = result;
  *(a3 + 8) = a2 & 1;
  return result;
}

uint64_t EntityQuerySortableByProperty.init<A>(_:)@<X0>(uint64_t *a1@<X0>, uint64_t *a3@<X8>)
{
  a3[2] = a1;
  swift_getMetatypeMetadata();

  v7 = sub_18F52194C();
  v8 = v4;
  MEMORY[0x193ADB000](58, 0xE100000000000000);
  swift_getAssociatedTypeWitness();
  swift_getMetatypeMetadata();
  v5 = sub_18F52194C();
  MEMORY[0x193ADB000](v5);

  *a3 = v7;
  a3[1] = v8;
  return result;
}

uint64_t sub_18F259FF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

_BYTE *sub_18F25A044(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_18F25A128(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

unint64_t sub_18F25A17C(unint64_t result)
{
  if (result > 1)
  {
    sub_18F52279C();

    v1 = sub_18F522C9C();
    MEMORY[0x193ADB000](v1);

    result = sub_18F522A3C();
    __break(1u);
  }

  return result;
}

uint64_t static FileEntityIdentifier.file(url:)@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0360, &qword_18F5407D0);
  v4 = OUTLINED_FUNCTION_10(v3);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v13 - v5;
  v7 = sub_18F520C8C();
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v7);
  v8 = sub_18F520B7C();
  if (v1)
  {
    return sub_18F0EF148(v6, &qword_1EACD0360, &qword_18F5407D0);
  }

  v11 = v8;
  v12 = v9;
  result = sub_18F0EF148(v6, &qword_1EACD0360, &qword_18F5407D0);
  *a1 = v11;
  *(a1 + 8) = v12;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  return result;
}

uint64_t FileEntityIdentifier.fileURL.getter(uint64_t a1)
{
  *(v2 + 280) = a1;
  v3 = sub_18F520C8C();
  *(v2 + 288) = v3;
  *(v2 + 296) = *(v3 - 8);
  *(v2 + 304) = swift_task_alloc();
  *(v2 + 312) = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0360, &qword_18F5407D0);
  OUTLINED_FUNCTION_10(v4);
  *(v2 + 320) = swift_task_alloc();
  v5 = *(v1 + 16);
  *(v2 + 328) = *v1;
  *(v2 + 344) = v5;
  *(v2 + 416) = *(v1 + 32);

  return MEMORY[0x1EEE6DFA0](sub_18F25A47C, 0, 0);
}

uint64_t sub_18F25A47C()
{
  if (*(v0 + 416))
  {
    if (*(v0 + 416) != 1)
    {
      sub_18F25AD84();
      v1 = sub_18F5218AC();
      OUTLINED_FUNCTION_56();
      v2 = sub_18F5218AC();
      v3 = sub_18F25CA30(v1, v2);
      *(v0 + 360) = v3;
      if (v3)
      {
        v4 = v3;
        v5 = objc_opt_self();
        *(v0 + 368) = v5;
        v6 = [v5 defaultManager];
        *(v0 + 376) = v6;
        *(v0 + 16) = v0;
        *(v0 + 56) = v0 + 272;
        *(v0 + 24) = sub_18F25A754;
        v7 = swift_continuation_init();
        *(v0 + 200) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD34C8, &qword_18F54B7C0);
        *(v0 + 144) = MEMORY[0x1E69E9820];
        *(v0 + 152) = 1107296256;
        *(v0 + 160) = sub_18F10FD1C;
        *(v0 + 168) = &block_descriptor_4;
        *(v0 + 176) = v7;
        [v6 fetchItemForItemID:v4 completionHandler:v0 + 144];

        return MEMORY[0x1EEE6DEC8](v0 + 16);
      }
    }

    v8 = *(v0 + 280);
    v9 = *(v0 + 288);
    v10 = 1;
  }

  else
  {
    __swift_storeEnumTagSinglePayload(*(v0 + 320), 1, 1, *(v0 + 288));
    v11 = OUTLINED_FUNCTION_56();
    sub_18F16AAE0(v11, v12);
    OUTLINED_FUNCTION_56();
    sub_18F520BFC();
    v14 = *(v0 + 280);
    v13 = *(v0 + 288);
    sub_18F0EF148(*(v0 + 320), &qword_1EACD0360, &qword_18F5407D0);
    OUTLINED_FUNCTION_2_48();
    v8 = v14;
    v10 = 0;
    v9 = v13;
  }

  __swift_storeEnumTagSinglePayload(v8, v10, 1, v9);

  OUTLINED_FUNCTION_71();

  return v15();
}

uint64_t sub_18F25A754()
{
  v1 = *(*v0 + 48);
  *(*v0 + 384) = v1;
  if (v1)
  {
    v2 = sub_18F25ABBC;
  }

  else
  {
    v2 = sub_18F25A864;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_18F25A864()
{
  v2 = v0[46];
  v1 = v0[47];
  v3 = v0[38];
  v4 = v0[34];
  v0[49] = v4;

  v5 = [v2 defaultManager];
  v0[50] = v5;
  v0[10] = v0;
  v0[15] = v3;
  v0[11] = sub_18F25A9B8;
  v6 = swift_continuation_init();
  v0[33] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD34D0, &qword_18F54B7C8);
  v0[26] = MEMORY[0x1E69E9820];
  v0[27] = 1107296256;
  v0[28] = sub_18F25ADC8;
  v0[29] = &block_descriptor_4;
  v0[30] = v6;
  [v5 fetchURLForItem:v4 completionHandler:v0 + 26];

  return MEMORY[0x1EEE6DEC8](v0 + 10);
}

uint64_t sub_18F25A9B8()
{
  v1 = *(*v0 + 112);
  *(*v0 + 408) = v1;
  if (v1)
  {
    v2 = sub_18F25AC4C;
  }

  else
  {
    v2 = sub_18F25AAC8;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_18F25AAC8()
{
  v1 = *(v0 + 400);
  v2 = *(v0 + 360);
  v3 = *(v0 + 304);
  v4 = *(v0 + 312);
  v5 = *(v0 + 288);
  v6 = *(v0 + 296);
  v7 = *(v0 + 280);

  v8 = *(v6 + 32);
  v8(v4, v3, v5);

  v8(v7, v4, v5);
  __swift_storeEnumTagSinglePayload(v7, 0, 1, v5);

  OUTLINED_FUNCTION_71();

  return v9();
}

uint64_t sub_18F25ABBC(uint64_t a1)
{
  v2 = *(v1 + 376);
  v3 = *(v1 + 360);
  swift_willThrow();

  OUTLINED_FUNCTION_71();

  return v4();
}

uint64_t sub_18F25AC4C(uint64_t a1)
{
  v2 = v1[50];
  v3 = v1[49];
  v4 = v1[45];
  swift_willThrow();

  OUTLINED_FUNCTION_71();

  return v5();
}

uint64_t static FileEntityIdentifier.draft(identifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = a1;
  *(a3 + 8) = a2;
  *(a3 + 16) = 0;
  *(a3 + 24) = 0;
  *(a3 + 32) = 1;
  return _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
}

id FileEntityIdentifier.fpItemID.getter()
{
  if (*(v0 + 32) < 2u)
  {
    return 0;
  }

  sub_18F25AD84();
  v2 = sub_18F5218AC();
  v3 = sub_18F5218AC();
  return sub_18F25CA30(v2, v3);
}

unint64_t sub_18F25AD84()
{
  result = qword_1EACD34C0;
  if (!qword_1EACD34C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EACD34C0);
  }

  return result;
}

uint64_t sub_18F25ADC8(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_18F520C8C();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *__swift_project_boxed_opaque_existential_1Tm((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v9 = a3;

    return sub_18F10FDAC(v8, v9);
  }

  else
  {
    sub_18F520C3C();
    return sub_18F458654(v8, v7);
  }
}

uint64_t FileEntityIdentifier.draftIdentifier.getter()
{
  if (*(v0 + 32) != 1)
  {
    return 0;
  }

  v1 = *v0;
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  return v1;
}

uint64_t sub_18F25AEF4(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = a1[1];
  if (!*(a1 + 32))
  {
    if (!*(a2 + 32))
    {

      JUMPOUT(0x193ADA320);
    }

    return 0;
  }

  if (*(a1 + 32) != 1)
  {
    if (*(a2 + 32) == 2)
    {
      v7 = a1[2];
      v8 = a1[3];
      v9 = a2[2];
      v10 = a2[3];
      v11 = v4 == *a2 && v5 == a2[1];
      if (v11 || (sub_18F522D5C() & 1) != 0)
      {
        if (v7 != v9 || v8 != v10)
        {
          goto LABEL_24;
        }

        return 1;
      }
    }

    return 0;
  }

  if (*(a2 + 32) != 1)
  {
    return 0;
  }

  if (v4 == *a2 && v5 == a2[1])
  {
    return 1;
  }

LABEL_24:

  return sub_18F522D5C();
}

uint64_t sub_18F25B000(uint64_t a1, uint64_t a2)
{
  if (a1 == 1635017060 && a2 == 0xE400000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_18F522D5C();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_18F25B088(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6B72616D6B6F6F62 && a2 == 0xE800000000000000;
  if (v4 || (sub_18F522D5C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x7466617264 && a2 == 0xE500000000000000;
    if (v6 || (sub_18F522D5C() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x44496D6574497066 && a2 == 0xE800000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_18F522D5C();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_18F25B19C(uint64_t a1, uint64_t a2)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_18F522D5C();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_18F25B218(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000010 && 0x800000018F527C60 == a2;
  if (v3 || (sub_18F522D5C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E6564496D657469 && a2 == 0xEE00726569666974)
  {

    return 1;
  }

  else
  {
    v7 = sub_18F522D5C();

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

uint64_t sub_18F25B2F0(uint64_t a1)
{
  v4 = *v1;
  v3 = v1[1];
  if (*(v1 + 32))
  {
    if (*(v1 + 32) == 1)
    {
      MEMORY[0x193ADC4F0](1);
    }

    else
    {
      MEMORY[0x193ADC4F0](2);
      sub_18F5219CC();
    }

    return sub_18F5219CC();
  }

  else
  {
    MEMORY[0x193ADC4F0](0);

    return MEMORY[0x1EEDC45B0](a1, v4, v3);
  }
}

uint64_t sub_18F25B3C8()
{
  sub_18F522EFC();
  sub_18F25B2F0(v1);
  return sub_18F522F4C();
}

uint64_t sub_18F25B408@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v66 = a2;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD3578, &qword_18F54BCF8);
  v65 = *(v63 - 8);
  MEMORY[0x1EEE9AC00](v63);
  v68 = &v58 - v3;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD3580, &qword_18F54BD00);
  v64 = *(v67 - 8);
  MEMORY[0x1EEE9AC00](v67);
  v5 = &v58 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD3588, &qword_18F54BD08);
  v62 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v58 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD3590, &unk_18F54BD10);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v58 - v11;
  v13 = a1[3];
  v69 = a1;
  __swift_project_boxed_opaque_existential_1Tm(a1, v13);
  sub_18F1247D4();
  v14 = v72;
  sub_18F522FBC();
  if (v14)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(v69);
  }

  v59 = v6;
  v60 = v8;
  v15 = v67;
  v16 = v68;
  v61 = v10;
  v72 = v12;
  v17 = sub_18F522BBC();
  result = sub_18F34062C(v17, 0);
  v22 = v9;
  if (v20 == v21 >> 1)
  {
    goto LABEL_10;
  }

  v58 = 0;
  if (v20 >= (v21 >> 1))
  {
    __break(1u);
    return result;
  }

  v23 = *(v19 + v20);
  v24 = sub_18F340674(v20 + 1);
  v26 = v25;
  v28 = v27;
  swift_unknownObjectRelease();
  v29 = v24;
  if (v26 != v28 >> 1)
  {
    v22 = v9;
LABEL_10:
    v35 = sub_18F52285C();
    swift_allocError();
    v37 = v36;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD3598, &qword_18F558AF0);
    *v37 = &type metadata for FileEntityIdentifier.Storage;
    v38 = v72;
    sub_18F522B6C();
    sub_18F52284C();
    (*(*(v35 - 8) + 104))(v37, *MEMORY[0x1E69E6AF8], v35);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v61 + 8))(v38, v22);
    return __swift_destroy_boxed_opaque_existential_1Tm(v69);
  }

  v30 = v9;
  if (v23)
  {
    LODWORD(v62) = v23;
    v31 = v66;
    v32 = v72;
    if (v23 == 1)
    {
      LOBYTE(v70) = 1;
      sub_18F25CE08();
      v33 = v5;
      v34 = v58;
      sub_18F522B5C();
      if (v34)
      {
        (*(v61 + 8))(v32, v30);
LABEL_14:
        swift_unknownObjectRelease();
        return __swift_destroy_boxed_opaque_existential_1Tm(v69);
      }

      v51 = sub_18F522B8C();
      v53 = v52;
      swift_unknownObjectRelease();
      (*(v64 + 8))(v33, v15);
      (*(v61 + 8))(v32, v30);
      v67 = 0;
      v54 = 0;
      v39 = v62;
    }

    else
    {
      LOBYTE(v70) = 2;
      sub_18F124828();
      v43 = v16;
      v44 = v58;
      sub_18F522B5C();
      if (v44)
      {
        (*(v61 + 8))(v32, v30);
        swift_unknownObjectRelease();
        return __swift_destroy_boxed_opaque_existential_1Tm(v69);
      }

      LOBYTE(v70) = 0;
      v47 = v63;
      v48 = v43;
      v49 = sub_18F522B8C();
      v50 = v61;
      v53 = v55;
      v60 = v49;
      v64 = v29;
      LOBYTE(v70) = 1;
      v67 = sub_18F522B8C();
      v56 = (v65 + 8);
      v54 = v57;
      swift_unknownObjectRelease();
      (*v56)(v48, v47);
      (*(v50 + 8))(v72, v30);
      v31 = v66;
      v39 = v62;
      v51 = v60;
    }
  }

  else
  {
    v39 = 0;
    LOBYTE(v70) = 0;
    sub_18F25CE5C();
    v40 = v60;
    v41 = v72;
    v42 = v58;
    sub_18F522B5C();
    v31 = v66;
    if (v42)
    {
      (*(v61 + 8))(v41, v30);
      goto LABEL_14;
    }

    sub_18F174C08();
    v45 = v40;
    v46 = v59;
    sub_18F522BAC();
    swift_unknownObjectRelease();
    (*(v62 + 8))(v45, v46);
    (*(v61 + 8))(v41, v30);
    v67 = 0;
    v54 = 0;
    v51 = v70;
    v53 = v71;
  }

  result = __swift_destroy_boxed_opaque_existential_1Tm(v69);
  *v31 = v51;
  *(v31 + 8) = v53;
  *(v31 + 16) = v67;
  *(v31 + 24) = v54;
  *(v31 + 32) = v39;
  return result;
}

uint64_t sub_18F25BC34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_18F25B000(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_18F25BC60(uint64_t a1)
{
  v2 = sub_18F25CE5C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18F25BC9C(uint64_t a1)
{
  v2 = sub_18F25CE5C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_18F25BCD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_18F25B088(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_18F25BD00@<X0>(_BYTE *a1@<X8>)
{
  result = sub_18F25B194();
  *a1 = result;
  return result;
}

uint64_t sub_18F25BD28(uint64_t a1)
{
  v2 = sub_18F1247D4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18F25BD64(uint64_t a1)
{
  v2 = sub_18F1247D4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_18F25BDA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_18F25B19C(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_18F25BDD0(uint64_t a1)
{
  v2 = sub_18F25CE08();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18F25BE0C(uint64_t a1)
{
  v2 = sub_18F25CE08();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_18F25BE48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_18F25B218(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_18F25BE70(uint64_t a1)
{
  v2 = sub_18F124828();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18F25BEAC(uint64_t a1)
{
  v2 = sub_18F124828();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_18F25BF60(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v8 = *(a2 + 32);
  return sub_18F25AEF4(v5, v7) & 1;
}

double sub_18F25BFAC@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_18F25B408(a1, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    *(a2 + 32) = v7;
  }

  return result;
}

uint64_t static FileEntityIdentifier.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *a2;
  v7 = a2[1];
  v8 = *(a2 + 32);
  if (*(a1 + 32))
  {
    if (*(a1 + 32) == 1)
    {
      if (v8 != 1)
      {
        return 0;
      }

      if (v4 == v6 && v5 == v7)
      {
        return 1;
      }
    }

    else
    {
      if (v8 != 2)
      {
        return 0;
      }

      v10 = a1[2];
      v11 = a1[3];
      v12 = a2[2];
      v13 = a2[3];
      v14 = v4 == v6 && v5 == v7;
      if (!v14 && (sub_18F522D5C() & 1) == 0)
      {
        return 0;
      }

      if (v10 == v12 && v11 == v13)
      {
        return 1;
      }

      OUTLINED_FUNCTION_56();
    }

    if (sub_18F522D5C())
    {
      return 1;
    }
  }

  else if (!*(a2 + 32) && (MEMORY[0x193ADA320](v4, v5, v6, v7) & 1) != 0)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_18F25C0C0(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x656761726F7473 && a2 == 0xE700000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_18F522D5C();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_18F25C138@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_18F25C0C0(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_18F25C164(uint64_t a1)
{
  v2 = sub_18F1244EC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18F25C1A0(uint64_t a1)
{
  v2 = sub_18F1244EC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FileEntityIdentifier.hashValue.getter()
{
  OUTLINED_FUNCTION_1_46();
  sub_18F522EFC();
  sub_18F25B2F0(v1);
  return sub_18F522F4C();
}

uint64_t FileEntityIdentifier.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD34F0, &unk_18F54B7D8);
  OUTLINED_FUNCTION_0();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = v14 - v9;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_18F1244EC();
  sub_18F522FBC();
  if (!v2)
  {
    sub_18F25CB90();
    sub_18F522BAC();
    (*(v7 + 8))(v10, v5);
    v11 = v15;
    v12 = v14[1];
    *a2 = v14[0];
    *(a2 + 16) = v12;
    *(a2 + 32) = v11;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t sub_18F25C3D0()
{
  OUTLINED_FUNCTION_1_46();
  sub_18F522EFC();
  sub_18F25B2F0(v1);
  return sub_18F522F4C();
}

uint64_t static FileEntityIdentifier.entityIdentifier(for:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_18F52064C();
  swift_allocObject();
  sub_18F52063C();
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  v6 = sub_18F25C524(a1, a2);
  v8 = v7;
  sub_18F25CBE4();
  sub_18F52062C();
  sub_18F123A1C(v6, v8);

  *a3 = v10;
  *(a3 + 16) = v11;
  *(a3 + 32) = v12;
  return result;
}

uint64_t sub_18F25C524(uint64_t a1, unint64_t a2)
{
  v4 = 0;
  v45 = *MEMORY[0x1E69E9840];
  v39[0] = a1;
  v39[1] = a2;
  *&v42 = a1;
  *(&v42 + 1) = a2;
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD35A0, &qword_18F54BD20);
  if (swift_dynamicCast())
  {
    sub_18F0FD0B4(v40, &v43);
    __swift_project_boxed_opaque_existential_1Tm(&v43, v44);
    sub_18F5208BC();
    v40[0] = v42;
    __swift_destroy_boxed_opaque_existential_1Tm(&v43);
    goto LABEL_59;
  }

  v41 = 0;
  memset(v40, 0, sizeof(v40));
  sub_18F0EF148(v40, &qword_1EACD35A8, &qword_18F54BD28);
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_63;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    *&v40[0] = a1;
    *(&v40[0] + 1) = a2 & 0xFFFFFFFFFFFFFFLL;
    v5 = v40;
    v6 = HIBYTE(a2) & 0xF;
  }

  else if ((a1 & 0x1000000000000000) != 0)
  {
    v5 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v6 = a1 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v5 = sub_18F52286C();
  }

  sub_18F25CEB0(v5, v6, &v43);
  v7 = *(&v43 + 1);
  v8 = v43;
  if (*(&v43 + 1) >> 60 != 15)
  {
    v40[0] = v43;
    goto LABEL_59;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v9 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v9 = a1 & 0xFFFFFFFFFFFFLL;
  }

LABEL_12:
  *&v40[0] = MEMORY[0x193ADA2F0](v9);
  *(&v40[0] + 1) = v10;
  MEMORY[0x1EEE9AC00](*&v40[0]);
  v34[2] = v39;
  v11 = sub_18F25CFCC(sub_18F25D5A0, v34);
  v13 = *(&v40[0] + 1) >> 62;
  v14 = v11;
  v16 = v15;
  v18 = v17;
  v19 = BYTE14(v40[0]);
  switch(*(&v40[0] + 1) >> 62)
  {
    case 1:
      LODWORD(v20) = DWORD1(v40[0]) - LODWORD(v40[0]);
      if (__OFSUB__(DWORD1(v40[0]), v40[0]))
      {
        goto LABEL_66;
      }

      v20 = v20;
LABEL_22:
      if (v12 == v20)
      {
        goto LABEL_23;
      }

      if (v13 == 2)
      {
        v19 = *(*&v40[0] + 24);
      }

      else if (v13 == 1)
      {
        v19 = *&v40[0] >> 32;
      }

      goto LABEL_56;
    case 2:
      v22 = *(*&v40[0] + 16);
      v21 = *(*&v40[0] + 24);
      v23 = __OFSUB__(v21, v22);
      v20 = v21 - v22;
      if (!v23)
      {
        goto LABEL_22;
      }

      __break(1u);
LABEL_18:
      if (v12)
      {
        v19 = 0;
LABEL_56:
        if (v19 < v12)
        {
          __break(1u);
LABEL_66:
          __break(1u);
        }

        sub_18F520CFC();
LABEL_58:

        goto LABEL_59;
      }

LABEL_23:
      v34[4] = v4;
      v35 = v8;
      v36 = v7;
      LOBYTE(v24) = 0;
      if ((v16 & 0x2000000000000000) != 0)
      {
        v25 = HIBYTE(v16) & 0xF;
      }

      else
      {
        v25 = v11 & 0xFFFFFFFFFFFFLL;
      }

      v26 = (v11 >> 59) & 1;
      if ((v16 & 0x1000000000000000) == 0)
      {
        LOBYTE(v26) = 1;
      }

      v27 = 4 << v26;
      v37 = (v16 & 0xFFFFFFFFFFFFFFFLL) + 32;
      v38 = v16 & 0xFFFFFFFFFFFFFFLL;
      *(&v42 + 7) = 0;
      *&v42 = 0;
      break;
    case 3:
      goto LABEL_18;
    default:
      v20 = BYTE14(v40[0]);
      goto LABEL_22;
  }

  while (4 * v25 != v18 >> 14)
  {
    v4 = v18 & 0xC;
    v28 = v18;
    if (v4 == v27)
    {
      v28 = sub_18F1DE19C(v18, v14, v16);
    }

    v29 = v28 >> 16;
    if (v28 >> 16 >= v25)
    {
      __break(1u);
LABEL_61:
      __break(1u);
LABEL_62:
      __break(1u);
LABEL_63:
      v9 = sub_18F521A3C();
      v8 = 0;
      v7 = 0xF000000000000000;
      goto LABEL_12;
    }

    if ((v16 & 0x1000000000000000) != 0)
    {
      v31 = sub_18F521A7C();
    }

    else if ((v16 & 0x2000000000000000) != 0)
    {
      *&v43 = v14;
      *(&v43 + 1) = v38;
      v31 = *(&v43 + v29);
    }

    else
    {
      v30 = v37;
      if ((v14 & 0x1000000000000000) == 0)
      {
        v30 = sub_18F52286C();
      }

      v31 = *(v30 + v29);
    }

    if (v4 == v27)
    {
      v18 = sub_18F1DE19C(v18, v14, v16);
      if ((v16 & 0x1000000000000000) == 0)
      {
LABEL_41:
        v18 = (v18 & 0xFFFFFFFFFFFF0000) + 65540;
        goto LABEL_46;
      }
    }

    else if ((v16 & 0x1000000000000000) == 0)
    {
      goto LABEL_41;
    }

    if (v25 <= v18 >> 16)
    {
      goto LABEL_62;
    }

    v18 = sub_18F521A4C();
LABEL_46:
    *(&v42 + v24) = v31;
    v24 = v24 + 1;
    if ((v24 >> 8))
    {
      goto LABEL_61;
    }

    if (v24 == 14)
    {
      *&v43 = v42;
      *(&v43 + 6) = *(&v42 + 6);
      sub_18F520D1C();
      LOBYTE(v24) = 0;
    }
  }

  if (v24)
  {
    *&v43 = v42;
    *(&v43 + 6) = *(&v42 + 6);
    sub_18F520D1C();
    sub_18F190748(v35, v36);
    goto LABEL_58;
  }

  sub_18F190748(v35, v36);
LABEL_59:
  v32 = v40[0];
  sub_18F16AAE0(*&v40[0], *(&v40[0] + 1));

  sub_18F123A1C(v32, *(&v32 + 1));
  return v32;
}

id sub_18F25CA30(void *a1, void *a2)
{
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithProviderDomainID:a1 itemIdentifier:a2];

  return v4;
}

void FileEntityIdentifier.init(searchableItem:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [objc_allocWithZone(MEMORY[0x1E6967388]) initWithSearchableItem_];
  if (v4 && (v5 = v4, v6 = [v4 itemID], v5, v6))
  {
    v7 = [v6 providerDomainID];
    v8 = sub_18F5218DC();
    v10 = v9;

    v11 = [v6 identifier];
    v12 = sub_18F5218DC();
    v14 = v13;

    *a2 = v8;
    *(a2 + 8) = v10;
    *(a2 + 16) = v12;
    *(a2 + 24) = v14;
    v15 = 2;
  }

  else
  {

    *a2 = 0u;
    *(a2 + 16) = 0u;
    v15 = -1;
  }

  *(a2 + 32) = v15;
}

unint64_t sub_18F25CB90()
{
  result = qword_1EACD34F8;
  if (!qword_1EACD34F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD34F8);
  }

  return result;
}

unint64_t sub_18F25CBE4()
{
  result = qword_1EACD3500;
  if (!qword_1EACD3500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD3500);
  }

  return result;
}

unint64_t sub_18F25CC3C()
{
  result = qword_1EACD3510;
  if (!qword_1EACD3510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD3510);
  }

  return result;
}

uint64_t sub_18F25CCB8(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 33))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 32);
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

uint64_t sub_18F25CCF8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

unint64_t sub_18F25CD5C()
{
  result = qword_1EACD3518;
  if (!qword_1EACD3518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD3518);
  }

  return result;
}

unint64_t sub_18F25CDB4()
{
  result = qword_1EACD3520;
  if (!qword_1EACD3520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD3520);
  }

  return result;
}

unint64_t sub_18F25CE08()
{
  result = qword_1EACD3568;
  if (!qword_1EACD3568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD3568);
  }

  return result;
}

unint64_t sub_18F25CE5C()
{
  result = qword_1EACD3570;
  if (!qword_1EACD3570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD3570);
  }

  return result;
}

uint64_t sub_18F25CEB0@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = 0;
  v6 = 0xC000000000000000;
  if (a1 && a2)
  {
    if (a2 <= 14)
    {
      result = sub_18F520CAC();
      v6 = v9 & 0xFFFFFFFFFFFFFFLL;
    }

    else
    {
      sub_18F52080C();
      swift_allocObject();
      v8 = sub_18F5207CC();
      if (a2 >= 0x7FFFFFFF)
      {
        sub_18F520CEC();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = a2;
        v6 = v8 | 0x8000000000000000;
      }

      else
      {
        result = a2 << 32;
        v6 = v8 | 0x4000000000000000;
      }
    }
  }

  *a3 = result;
  a3[1] = v6;
  return result;
}

void *sub_18F25CF78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6[0] = a3;
  v6[1] = a4;
  v5[2] = v6;
  return sub_18F25D450(sub_18F25D5FC, v5, a1, a2);
}

uint64_t sub_18F25CFCC(void *(*a1)(uint64_t *__return_ptr, char *, char *), uint64_t a2)
{
  v5 = v2;
  v21[2] = *MEMORY[0x1E69E9840];
  v7 = *v2;
  v6 = v2[1];
  switch(v6 >> 62)
  {
    case 1uLL:
      v13 = v6 & 0x3FFFFFFFFFFFFFFFLL;

      sub_18F123A1C(v7, v6);
      *v5 = xmmword_18F54B7A0;
      sub_18F123A1C(0, 0xC000000000000000);
      v14 = v7 >> 32;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_16;
      }

      if (v14 < v7)
      {
        goto LABEL_23;
      }

      if (sub_18F5207DC() && __OFSUB__(v7, sub_18F5207FC()))
      {
        goto LABEL_24;
      }

      sub_18F52080C();
      swift_allocObject();
      v15 = sub_18F5207BC();

      v13 = v15;
LABEL_16:
      if (v14 < v7)
      {
        __break(1u);
LABEL_23:
        __break(1u);
LABEL_24:
        __break(1u);
      }

      v4 = sub_18F25D4B4(v7, v7 >> 32, a1, v16);

      v12 = v13 | 0x4000000000000000;
      if (v3)
      {
        goto LABEL_18;
      }

      goto LABEL_20;
    case 2uLL:
      v4 = v6 & 0x3FFFFFFFFFFFFFFFLL;

      sub_18F123A1C(v7, v6);
      v19 = v7;
      v20 = v6 & 0x3FFFFFFFFFFFFFFFLL;
      *v5 = xmmword_18F54B7A0;
      sub_18F123A1C(0, 0xC000000000000000);
      sub_18F520CBC();
      v7 = v19;
      v11 = sub_18F25D4B4(*(v19 + 16), *(v19 + 24), a1, v10);
      if (v3)
      {
        v12 = v20 | 0x8000000000000000;
LABEL_18:
        *v5 = v7;
        v5[1] = v12;
      }

      else
      {
        v4 = v11;
        v12 = v20 | 0x8000000000000000;
LABEL_20:
        *v5 = v7;
        v5[1] = v12;
      }

      return v4;
    case 3uLL:
      memset(v21, 0, 15);
      a1(&v19, v21, v21);
      if (!v3)
      {
        return v19;
      }

      return v4;
    default:
      v4 = v7 >> 8;
      sub_18F123A1C(v7, v6);
      v21[0] = v7;
      LOWORD(v21[1]) = v6;
      BYTE2(v21[1]) = BYTE2(v6);
      BYTE3(v21[1]) = BYTE3(v6);
      BYTE4(v21[1]) = BYTE4(v6);
      BYTE5(v21[1]) = BYTE5(v6);
      BYTE6(v21[1]) = BYTE6(v6);
      a1(&v19, v21, v21 + BYTE6(v6));
      if (!v3)
      {
        v4 = v19;
      }

      v9 = LODWORD(v21[1]) | ((WORD2(v21[1]) | (BYTE6(v21[1]) << 16)) << 32);
      *v5 = v21[0];
      v5[1] = v9;
      return v4;
  }
}

uint64_t sub_18F25D390@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v4 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    v5 = 0xC000000000000000;
    goto LABEL_5;
  }

  if (v4 <= 14)
  {
    result = sub_18F520CAC();
    v5 = v7 & 0xFFFFFFFFFFFFFFLL;
  }

  else if (v4 >= 0x7FFFFFFF)
  {
    result = MEMORY[0x193ADA2B0]();
    v5 = v8 | 0x8000000000000000;
  }

  else
  {
    result = MEMORY[0x193ADA2C0]();
    v5 = v6 | 0x4000000000000000;
  }

LABEL_5:
  *a3 = result;
  a3[1] = v5;
  return result;
}

uint64_t sub_18F25D408(uint64_t result)
{
  if (result)
  {
    result = sub_18F5227AC();
    if ((v1 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_18F25D450(void *(*a1)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v6 = a4 - a3;
    v7 = a3;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  result = a1(&v9, v7, v6);
  if (!v4)
  {
    return v9;
  }

  __break(1u);
  return result;
}

char *sub_18F25D4B4(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, char *, char *), __n128 a4)
{
  result = sub_18F5207DC();
  if (!result)
  {
    goto LABEL_12;
  }

  v9 = result;
  result = sub_18F5207FC();
  v10 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  v11 = __OFSUB__(a2, a1);
  v12 = a2 - a1;
  if (v11)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v13 = sub_18F5207EC();
  if (v13 >= v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = v13;
  }

  result = a3(&v15, &v9[v10], &v9[v10 + v14]);
  if (!v4)
  {
    return v15;
  }

  return result;
}

void *sub_18F25D568@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X8>)
{
  result = sub_18F25CF78(a1, a2, *a3, a3[1]);
  if (!v4)
  {
    *a4 = result;
    a4[1] = v7;
    a4[2] = v8;
    a4[3] = v9;
  }

  return result;
}

uint64_t sub_18F25D5BC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_18F25D408(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for FileEntityIdentifier.Storage.FpItemIDCodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_18F25D6EC()
{
  result = qword_1EACD35B0;
  if (!qword_1EACD35B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD35B0);
  }

  return result;
}

unint64_t sub_18F25D744()
{
  result = qword_1EACD35B8;
  if (!qword_1EACD35B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD35B8);
  }

  return result;
}

unint64_t sub_18F25D79C()
{
  result = qword_1EACD35C0;
  if (!qword_1EACD35C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD35C0);
  }

  return result;
}

unint64_t sub_18F25D7F4()
{
  result = qword_1EACD35C8;
  if (!qword_1EACD35C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD35C8);
  }

  return result;
}

uint64_t sub_18F25D984(uint64_t a1, uint64_t (*a2)(void), void (*a3)(uint64_t, uint64_t), void (*a4)(uint64_t, void, uint64_t))
{
  v9 = a2();
  v10 = (a2)(*v4);
  v11 = __OFADD__(v10, v9);
  result = v10 + v9;
  if (v11)
  {
    __break(1u);
    goto LABEL_8;
  }

  a3(result, 1);
  v13 = *v4;
  v14 = *v4 & 0xFFFFFFFFFFFFFF8;
  a4(v14 + 8 * *(v14 + 0x10) + 32, (*(v14 + 0x18) >> 1) - *(v14 + 0x10), a1);
  v16 = v15;

  if (v16 < v9)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v16 < 1)
  {
LABEL_6:
    *v4 = v13;
    return result;
  }

  v17 = *(v14 + 16);
  v11 = __OFADD__(v17, v16);
  v18 = v17 + v16;
  if (!v11)
  {
    *(v14 + 16) = v18;
    goto LABEL_6;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_18F25DA74(uint64_t a1)
{
  result = OUTLINED_FUNCTION_0_52(a1);
  if (v8)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v9 = v7;
  v10 = v6;
  result = v5(result, 1);
  v11 = *v2;
  if (!*(v3 + 16))
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  if ((*(v11 + 24) >> 1) - *(v11 + 16) < v1)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(v10, v9);
  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v11;
    return result;
  }

  v12 = *(v11 + 16);
  v8 = __OFADD__(v12, v1);
  v13 = v12 + v1;
  if (!v8)
  {
    *(v11 + 16) = v13;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_18F25DB50(uint64_t a1)
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

  result = sub_18F206444(result, 1);
  v6 = *v1;
  if (!*(a1 + 16))
  {

    if (!v3)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  if ((*(v6 + 24) >> 1) - *(v6 + 16) < v3)
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

  v7 = *(v6 + 16);
  v8 = __OFADD__(v7, v3);
  v9 = v7 + v3;
  if (!v8)
  {
    *(v6 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_18F25DC68(uint64_t a1)
{
  result = OUTLINED_FUNCTION_0_52(a1);
  if (v7)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v8 = v6;
  v5(result, 1);
  v9 = *v2;
  if (!*(v3 + 16))
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v10 = (*(v9 + 24) >> 1) - *(v9 + 16);
  result = v8(0);
  if (v10 < v1)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v9;
    return result;
  }

  v11 = *(v9 + 16);
  v7 = __OFADD__(v11, v1);
  v12 = v11 + v1;
  if (!v7)
  {
    *(v9 + 16) = v12;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

double _AssistantIntent.Value.init<A>(for:builder:)@<D0>(uint64_t (*a1)(void)@<X1>, uint64_t a2@<X8>)
{
  *a2 = sub_18F2328C8();
  *(a2 + 8) = v4;
  v5 = a1();

  *(a2 + 16) = v5;
  result = 0.0;
  *(a2 + 24) = 0u;
  *(a2 + 40) = 0u;
  *(a2 + 56) = 0;
  return result;
}

uint64_t _AssistantIntent.Value.init<A, B>(_:for:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  v7 = *a2;
  *a4 = sub_18F2328C8();
  a4[1] = v8;
  a4[2] = MEMORY[0x1E69E7CC0];
  v9 = *(v7 + *MEMORY[0x1E69E77B0] + 8);
  a4[6] = v9;
  a4[7] = *(*(a3 + 8) + 24);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a4 + 3);
  (*(*(v9 - 8) + 32))(boxed_opaque_existential_1, a1, v9);
}

uint64_t _AssistantIntent.Value.init<A>(_:for:)@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  *a2 = sub_18F2328C8();
  *(a2 + 8) = v4;
  *(a2 + 16) = MEMORY[0x1E69E7CC0];
  *(a2 + 48) = MEMORY[0x1E69E6370];
  *(a2 + 56) = sub_18F118844();

  *(a2 + 24) = a1;
  return result;
}

uint64_t _AssistantIntent.Value.init<A, B>(_:for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  *a3 = sub_18F2328C8();
  a3[1] = v6;
  a3[2] = MEMORY[0x1E69E7CC0];
  a3[6] = MEMORY[0x1E69E6158];
  a3[7] = sub_18F10F340();

  a3[3] = a1;
  a3[4] = a2;
  return result;
}

uint64_t static _AssistantIntent.StringValueBuilder.buildExpression(_:)(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0038, &qword_18F54C1C0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_18F53F800;
  *(v4 + 32) = a1;
  *(v4 + 40) = a2;
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  return v4;
}

uint64_t static _AssistantIntent.StringValueBuilder.buildBlock(_:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = (a1 + 40);
  for (i = MEMORY[0x1E69E7CC0]; v1; --v1)
  {
    v5 = *(v2 - 1);
    v4 = *v2;
    _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_18F141818();
      i = v8;
    }

    v6 = *(i + 16);
    if (v6 >= *(i + 24) >> 1)
    {
      sub_18F141818();
      i = v9;
    }

    *(i + 16) = v6 + 1;
    v7 = i + 16 * v6;
    *(v7 + 32) = v5;
    *(v7 + 40) = v4;
    v2 += 2;
  }

  return i;
}

void static _AssistantIntent.StringValueBuilder.buildBlock(_:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = (a1 + 32);
  v3 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    while (1)
    {
      v4 = *v2;
      v5 = *(*v2 + 16);
      v6 = *(v3 + 16);
      if (__OFADD__(v6, v5))
      {
        break;
      }

      _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
      if (!swift_isUniquelyReferenced_nonNull_native() || v6 + v5 > *(v3 + 24) >> 1)
      {
        sub_18F141818();
        v3 = v7;
      }

      if (*(v4 + 16))
      {
        if ((*(v3 + 24) >> 1) - *(v3 + 16) < v5)
        {
          goto LABEL_16;
        }

        swift_arrayInitWithCopy();

        if (v5)
        {
          v8 = *(v3 + 16);
          v9 = __OFADD__(v8, v5);
          v10 = v8 + v5;
          if (v9)
          {
            goto LABEL_17;
          }

          *(v3 + 16) = v10;
        }
      }

      else
      {

        if (v5)
        {
          goto LABEL_15;
        }
      }

      ++v2;
      if (!--v1)
      {
        return;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
  }
}

uint64_t sub_18F25E1F0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_18F25E230(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

_BYTE *_s18StringValueBuilderOwst(_BYTE *result, int a2, int a3)
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

uint64_t sub_18F25E33C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    result = sub_18F5226AC();
    v7 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v7 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return a3;
    }
  }

  if (v5)
  {
    result = sub_18F111F70(a3);
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD3638, &word_18F54C270);
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        sub_18F25E63C(&qword_1EACD3648, &qword_1EACD3640, &unk_18F54C278);
        for (i = 0; i != v7; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD3640, &unk_18F54C278);
          v9 = sub_18F230988(v12, i, a3);
          v11 = *v10;

          v9(v12, 0);
          *(v5 + 8 * i) = v11;
        }

        return a3;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_18F25E4BC(uint64_t result, uint64_t a2, unint64_t a3)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    result = sub_18F5226AC();
    v7 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v7 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return a3;
    }
  }

  if (v5)
  {
    result = sub_18F111F70(a3);
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD3620, &qword_18F54C260);
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        sub_18F25E63C(&qword_1EACD3630, &qword_1EACD3628, &qword_18F54C268);
        for (i = 0; i != v7; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD3628, &qword_18F54C268);
          v9 = sub_18F2309F0(v12, i, a3);
          v11 = *v10;

          v9(v12, 0);
          *(v5 + 8 * i) = v11;
        }

        return a3;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_18F25E63C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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