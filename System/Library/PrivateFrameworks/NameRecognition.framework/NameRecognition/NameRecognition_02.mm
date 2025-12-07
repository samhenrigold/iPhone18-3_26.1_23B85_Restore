unint64_t sub_25AE70694()
{
  result = qword_27FA1E270;
  if (!qword_27FA1E270)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA1E128, &qword_25AEA5910);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA1E270);
  }

  return result;
}

id static CollectedEnrollment.fetchRequest()()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v1 = sub_25AEA2178();
  v2 = [v0 initWithEntityName_];

  return v2;
}

void sub_25AE70788(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 audioSourceRawValue];
  if (v3)
  {
    v4 = v3;
    v5 = sub_25AEA21A8();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *a2 = v5;
  a2[1] = v7;
}

void sub_25AE707F0(void *a1, void **a2)
{
  v2 = *a2;
  if (a1[1])
  {
    v3 = sub_25AEA2178();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  [v2 setAudioSourceRawValue_];
}

void sub_25AE70860(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D380, &unk_25AEA3E80);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v11 - v5;
  sub_25AE6884C(a1, &v11 - v5);
  v7 = *a2;
  v8 = sub_25AEA0E48();
  v9 = *(v8 - 8);
  v10 = 0;
  if ((*(v9 + 48))(v6, 1, v8) != 1)
  {
    v10 = sub_25AEA0E18();
    (*(v9 + 8))(v6, v8);
  }

  [v7 setIdentifier_];
}

void sub_25AE7098C(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 audioData];
  if (v3)
  {
    v4 = v3;
    v5 = sub_25AEA0DE8();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0xF000000000000000;
  }

  *a2 = v5;
  a2[1] = v7;
}

void sub_25AE709F4(void *a1, void **a2)
{
  v2 = *a2;
  if (a1[1] >> 60 == 15)
  {
    v3 = 0;
  }

  else
  {
    v3 = sub_25AEA0DD8();
  }

  v4 = v3;
  [v2 setAudioData_];
}

uint64_t sub_25AE70A6C@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for CollectedEnrollment();
  result = sub_25AEA2698();
  *a2 = result;
  return result;
}

id sub_25AE70AEC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 nameConfiguration];
  *a2 = result;
  return result;
}

uint64_t sub_25AE70B3C@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = sub_25AEA18E8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E280, &qword_25AEA5990);
  MEMORY[0x28223BE20](v8);
  v10 = &v13 - v9;
  sub_25AE479E0(v2, &v13 - v9, &qword_27FA1E280, &qword_25AEA5990);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_25AE49BE4(v10, a1, &qword_27FA1E320, &qword_25AEA5AB0);
  }

  sub_25AEA2498();
  v12 = sub_25AEA1A98();
  sub_25AEA1298();

  sub_25AEA18D8();
  swift_getAtKeyPath();

  return (*(v5 + 8))(v7, v4);
}

void *NameRecognitionSettingsView.init()@<X0>(uint64_t *a1@<X8>)
{
  *a1 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E280, &qword_25AEA5990);
  swift_storeEnumTagMultiPayload();
  v2 = type metadata accessor for NameRecognitionSettingsView(0);
  v3 = (a1 + *(v2 + 20));
  type metadata accessor for NameRecognitionSettingsViewModel(0);
  swift_allocObject();
  NameRecognitionSettingsViewModel.init()();
  sub_25AE78AB8(&qword_27FA1E288, type metadata accessor for NameRecognitionSettingsViewModel, &protocol conformance descriptor for NameRecognitionSettingsViewModel);
  *v3 = sub_25AEA16D8();
  v3[1] = v4;
  v5 = a1 + *(v2 + 24);
  result = sub_25AEA1E68();
  *v5 = v7;
  *(v5 + 1) = v8;
  return result;
}

uint64_t NameRecognitionSettingsView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v74 = a1;
  v2 = type metadata accessor for NameRecognitionSettingsView(0);
  v75 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v79 = v3;
  v69 = v54 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  OpaqueTypeConformance2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E290, &qword_25AEA5998);
  v61 = *(OpaqueTypeConformance2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeConformance2);
  v5 = v54 - v4;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E298, &qword_25AEA59A0);
  v64 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v76 = v54 - v6;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E2A0, &qword_25AEA59A8);
  v66 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v77 = v54 - v7;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E2A8, &qword_25AEA59B0);
  MEMORY[0x28223BE20](v70);
  v68 = v54 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E2B0, &qword_25AEA59B8);
  v72 = *(v9 - 8);
  v73 = v9;
  MEMORY[0x28223BE20](v9);
  v71 = v54 - v10;
  v80 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E2B8, &qword_25AEA59C0);
  sub_25AE47F60(&qword_27FA1E2C0, &qword_27FA1E2B8, &qword_25AEA59C0, MEMORY[0x277CE14C0]);
  v60 = v5;
  sub_25AEA1B58();
  sub_25AEA1958();
  if (qword_27FA1D250 != -1)
  {
    swift_once();
  }

  v11 = qword_27FA22788;
  v12 = qword_27FA22788;
  v63 = v11;
  v13 = v12;
  v55 = sub_25AEA1BB8();
  v15 = v14;
  v17 = v16;
  v54[2] = v18;
  v19 = v1 + *(v2 + 24);
  v20 = *v19;
  v21 = *(v19 + 8);
  LOBYTE(v85) = v20;
  v86 = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D408, &qword_25AEA3BA0);
  v22 = sub_25AEA1E98();
  v54[1] = v54;
  v56 = v2;
  MEMORY[0x28223BE20](v22);
  v78 = v1;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D698, &qword_25AEA4080);
  v58 = sub_25AE47F60(&qword_27FA1E2C8, &qword_27FA1E290, &qword_25AEA5998, MEMORY[0x277CDE5A0]);
  v59 = sub_25AE47F60(&qword_27FA1D690, &qword_27FA1D698, &qword_25AEA4080, MEMORY[0x277CDF028]);
  v23 = OpaqueTypeConformance2;
  v24 = v55;
  v25 = v60;
  sub_25AEA1CE8();

  sub_25AE479D0(v24, v15, v17 & 1);

  (*(v61 + 8))(v25, v23);
  v26 = v78;
  v27 = (v78 + *(v56 + 20));
  v28 = v27[1];
  v61 = *v27;
  v60 = v28;
  v56 = type metadata accessor for NameRecognitionSettingsViewModel(0);
  sub_25AE78AB8(&qword_27FA1E288, type metadata accessor for NameRecognitionSettingsViewModel, &protocol conformance descriptor for NameRecognitionSettingsViewModel);
  sub_25AEA16E8();
  swift_getKeyPath();
  sub_25AEA16F8();

  v29 = v69;
  sub_25AE7776C(v26, v69);
  v75 = *(v75 + 80);
  v30 = (v75 + 16) & ~v75;
  v31 = swift_allocObject();
  sub_25AE777D4(v29, v31 + v30);
  v55 = type metadata accessor for OnboardingCoordinatorView(0);
  v81 = v23;
  v82 = v57;
  v83 = v58;
  v84 = v59;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v32 = sub_25AE78AB8(&qword_27FA1E2D8, type metadata accessor for OnboardingCoordinatorView, &protocol conformance descriptor for OnboardingCoordinatorView);
  v33 = v65;
  v34 = v76;
  sub_25AEA1CF8();

  (*(v64 + 8))(v34, v33);
  sub_25AEA16E8();
  swift_getKeyPath();
  sub_25AEA16F8();

  v35 = v78;
  sub_25AE7776C(v78, v29);
  v36 = swift_allocObject();
  sub_25AE777D4(v29, v36 + v30);
  type metadata accessor for ErrorView(0);
  v81 = v33;
  v82 = v55;
  v83 = OpaqueTypeConformance2;
  v84 = v32;
  swift_getOpaqueTypeConformance2();
  sub_25AE78AB8(&qword_27FA1D418, type metadata accessor for ErrorView, &protocol conformance descriptor for ErrorView);
  v37 = v68;
  v38 = v67;
  v39 = v77;
  sub_25AEA1CF8();

  (*(v66 + 8))(v39, v38);
  sub_25AE7776C(v35, v29);
  v40 = swift_allocObject();
  sub_25AE777D4(v29, v40 + v30);
  v41 = v70;
  v42 = (v37 + *(v70 + 36));
  *v42 = sub_25AE7795C;
  v42[1] = v40;
  v42[2] = 0;
  v42[3] = 0;
  sub_25AEA1958();
  v43 = sub_25AEA1BB8();
  v45 = v44;
  LOBYTE(v29) = v46;
  v47 = sub_25AE77990();
  v48 = v71;
  sub_25AEA1C88();
  sub_25AE479D0(v43, v45, v29 & 1);

  v49 = sub_25AE41938(v37, &qword_27FA1E2A8, &qword_25AEA59B0);
  MEMORY[0x28223BE20](v49);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E2E8, &qword_25AEA5A20);
  v81 = v41;
  v82 = v47;
  swift_getOpaqueTypeConformance2();
  v50 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA1E2F0, &qword_25AEA5A28);
  v51 = sub_25AE47F60(&qword_27FA1E2F8, &qword_27FA1E2F0, &qword_25AEA5A28, MEMORY[0x277CDDB60]);
  v81 = v50;
  v82 = v51;
  swift_getOpaqueTypeConformance2();
  v52 = v73;
  sub_25AEA1D28();
  return (*(v72 + 8))(v48, v52);
}

uint64_t sub_25AE71AC8@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a2;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E3F0, &qword_25AEA5D48);
  v34 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v33 = &v32 - v3;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E3F8, &qword_25AEA5D50);
  MEMORY[0x28223BE20](v36);
  v5 = &v32 - v4;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E400, &qword_25AEA5D58);
  MEMORY[0x28223BE20](v37);
  v32 = &v32 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E408, &qword_25AEA5D60);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v38 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v35 = &v32 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E410, &qword_25AEA5D68);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v32 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E418, &qword_25AEA5D70);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v18 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v32 - v19;
  type metadata accessor for NameRecognitionSettingsView(0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_25AEA1478((&v41 + 1));

  if (BYTE1(v41) == 1)
  {
    sub_25AE72148();
    (*(v12 + 32))(v20, v14, v11);
    v21 = 0;
  }

  else
  {
    v21 = 1;
  }

  (*(v12 + 56))(v20, v21, 1, v11);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_25AEA1478(&v41);

  if (v41 == 1)
  {
    v23 = v32;
    sub_25AE72574(v32);
    sub_25AE479E0(v23, v5, &qword_27FA1E400, &qword_25AEA5D58);
    swift_storeEnumTagMultiPayload();
    sub_25AE47F60(&qword_27FA1E438, &qword_27FA1E400, &qword_25AEA5D58, MEMORY[0x277CE14C0]);
    sub_25AE789B8();
    v24 = v35;
    sub_25AEA19E8();
    sub_25AE41938(v23, &qword_27FA1E400, &qword_25AEA5D58);
  }

  else
  {
    MEMORY[0x28223BE20](v22);
    *(&v32 - 2) = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E420, &qword_25AEA5DC0);
    sub_25AE788AC();
    v25 = v33;
    sub_25AEA1F68();
    v26 = v34;
    v27 = v39;
    (*(v34 + 16))(v5, v25, v39);
    swift_storeEnumTagMultiPayload();
    sub_25AE47F60(&qword_27FA1E438, &qword_27FA1E400, &qword_25AEA5D58, MEMORY[0x277CE14C0]);
    sub_25AE789B8();
    v24 = v35;
    sub_25AEA19E8();
    (*(v26 + 8))(v25, v27);
  }

  sub_25AE479E0(v20, v18, &qword_27FA1E418, &qword_25AEA5D70);
  v28 = v38;
  sub_25AE479E0(v24, v38, &qword_27FA1E408, &qword_25AEA5D60);
  v29 = v40;
  sub_25AE479E0(v18, v40, &qword_27FA1E418, &qword_25AEA5D70);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E448, &qword_25AEA5DC8);
  sub_25AE479E0(v28, v29 + *(v30 + 48), &qword_27FA1E408, &qword_25AEA5D60);
  sub_25AE41938(v24, &qword_27FA1E408, &qword_25AEA5D60);
  sub_25AE41938(v20, &qword_27FA1E418, &qword_25AEA5D70);
  sub_25AE41938(v28, &qword_27FA1E408, &qword_25AEA5D60);
  return sub_25AE41938(v18, &qword_27FA1E418, &qword_25AEA5D70);
}

uint64_t sub_25AE72148()
{
  v1 = (*(v0 + *(type metadata accessor for NameRecognitionSettingsView(0) + 20) + 8) + OBJC_IVAR____TtC15NameRecognition32NameRecognitionSettingsViewModel_language);
  swift_beginAccess();
  v2 = *v1;
  v3 = v1[1];
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D2C0, &qword_25AEA35C0);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_25AEA3540;
    *(v4 + 56) = MEMORY[0x277D837D0];
    *(v4 + 64) = sub_25AE4172C();
    *(v4 + 32) = v2;
    *(v4 + 40) = v3;
    v5 = qword_27FA1D250;

    if (v5 != -1)
    {
      swift_once();
    }

    v6 = qword_27FA22788;
    if (qword_27FA22788)
    {
      v7 = qword_27FA22788;
    }

    else
    {
      v7 = [objc_opt_self() mainBundle];
      v6 = 0;
    }

    v8 = v6;
    sub_25AEA0CC8();

    sub_25AEA21B8();
  }

  else
  {
    sub_25AE656C8(0xD00000000000001FLL, 0x800000025AEA9760, v2, 0);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_25AEA1478(v17);

  if (LOBYTE(v17[0]) == 1)
  {

    if (qword_27FA1D250 != -1)
    {
      swift_once();
    }

    v9 = qword_27FA22788;
    if (qword_27FA22788)
    {
      v10 = qword_27FA22788;
    }

    else
    {
      v10 = [objc_opt_self() mainBundle];
      v9 = 0;
    }

    v11 = v9;
    v12 = sub_25AEA0CC8();
    v14 = v13;

    v17[0] = v12;
    v17[1] = v14;
    sub_25AEA2278();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_25AEA1478(v17);

  if (LOBYTE(v17[0]) == 1)
  {
    v15 = sub_25AEA1D88();
  }

  else
  {
    v15 = sub_25AEA1D78();
  }

  MEMORY[0x28223BE20](v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E450, &unk_25AEA5E18);
  sub_25AE47F60(&qword_27FA1E458, &qword_27FA1E450, &unk_25AEA5E18, MEMORY[0x277CE14C0]);
  sub_25AEA1F68();
}

uint64_t sub_25AE72574@<X0>(char *a1@<X8>)
{
  v62 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E3F0, &qword_25AEA5D48);
  v59 = *(v2 - 8);
  v60 = v2;
  MEMORY[0x28223BE20](v2);
  v54 = &v54 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E4A0, &qword_25AEA5ED8);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v65 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v54 - v7;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E4A8, &qword_25AEA5EE0);
  v61 = *(v69 - 8);
  v9 = MEMORY[0x28223BE20](v69);
  v68 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v71 = &v54 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E4B0, &qword_25AEA5EE8);
  v66 = *(v12 - 8);
  v67 = v12;
  v13 = MEMORY[0x28223BE20](v12);
  v70 = &v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = &v54 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E4B8, &qword_25AEA5EF0);
  v63 = *(v17 - 8);
  v64 = v17;
  v18 = MEMORY[0x28223BE20](v17);
  v20 = &v54 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v54 - v21;
  v72 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E4C0, &qword_25AEA5EF8);
  sub_25AE78E30();
  v23 = v22;
  sub_25AEA1F68();
  if (qword_27FA1D250 != -1)
  {
    swift_once();
  }

  v24 = qword_27FA22788;
  if (qword_27FA22788)
  {
    v25 = qword_27FA22788;
  }

  else
  {
    v25 = [objc_opt_self() mainBundle];
    v24 = 0;
  }

  v26 = v24;
  v27 = sub_25AEA0CC8();
  v29 = v28;

  v73 = v27;
  v74 = v29;
  v73 = sub_25AEA2278();
  v74 = v30;
  MEMORY[0x28223BE20](v73);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E4E0, &qword_25AEA5F08);
  sub_25AE78EF0();
  sub_25AE4E8AC();
  sub_25AEA1F58();
  sub_25AE748A4(v71);
  v31 = AXIsInternalInstall();
  if (v31)
  {
    MEMORY[0x28223BE20](v31);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E420, &qword_25AEA5DC0);
    sub_25AE788AC();
    v32 = v54;
    sub_25AEA1F68();
    v34 = v59;
    v33 = v60;
    (*(v59 + 32))(v8, v32, v60);
    v35 = 0;
  }

  else
  {
    v35 = 1;
    v34 = v59;
    v33 = v60;
  }

  (*(v34 + 56))(v8, v35, 1, v33);
  v36 = *(v63 + 16);
  v37 = v20;
  v38 = v20;
  v57 = v20;
  v58 = v23;
  v39 = v64;
  v36(v38, v23, v64);
  v60 = *(v66 + 16);
  v56 = v16;
  v60(v70, v16, v67);
  v40 = v61;
  v55 = v8;
  v41 = *(v61 + 16);
  v41(v68, v71, v69);
  sub_25AE479E0(v8, v65, &qword_27FA1E4A0, &qword_25AEA5ED8);
  v42 = v62;
  v36(v62, v37, v39);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E510, &qword_25AEA5F20);
  v44 = v67;
  v60(&v42[v43[12]], v70, v67);
  v46 = v68;
  v45 = v69;
  v41(&v42[v43[16]], v68, v69);
  v47 = &v42[v43[20]];
  v48 = v65;
  sub_25AE479E0(v65, v47, &qword_27FA1E4A0, &qword_25AEA5ED8);
  sub_25AE41938(v55, &qword_27FA1E4A0, &qword_25AEA5ED8);
  v49 = *(v40 + 8);
  v49(v71, v45);
  v50 = *(v66 + 8);
  v50(v56, v44);
  v51 = v64;
  v52 = *(v63 + 8);
  v52(v58, v64);
  sub_25AE41938(v48, &qword_27FA1E4A0, &qword_25AEA5ED8);
  v49(v46, v69);
  v50(v70, v44);
  return (v52)(v57, v51);
}

uint64_t sub_25AE72D34(uint64_t a1)
{
  v2 = type metadata accessor for NameRecognitionSettingsView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E3E8, &qword_25AEA5D40);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v19 - v6;
  if (qword_27FA1D250 != -1)
  {
    swift_once();
  }

  v8 = qword_27FA22788;
  if (qword_27FA22788)
  {
    v9 = qword_27FA22788;
  }

  else
  {
    v9 = [objc_opt_self() mainBundle];
    v8 = 0;
  }

  v10 = v8;
  v11 = sub_25AEA0CC8();
  v13 = v12;

  v19 = v11;
  v20 = v13;
  v19 = sub_25AEA2278();
  v20 = v14;
  sub_25AEA14E8();
  v15 = sub_25AEA14F8();
  (*(*(v15 - 8) + 56))(v7, 0, 1, v15);
  sub_25AE7776C(a1, &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v17 = swift_allocObject();
  sub_25AE777D4(&v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16);
  sub_25AE4E8AC();
  return sub_25AEA1EC8();
}

uint64_t sub_25AE72FCC(uint64_t a1)
{
  type metadata accessor for NameRecognitionSettingsView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D408, &qword_25AEA3BA0);
  return sub_25AEA1E88();
}

uint64_t sub_25AE73064@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for NameRecognitionSettingsView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  sub_25AE7776C(a1, &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v8 = swift_allocObject();
  sub_25AE777D4(&v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7);
  *a2 = sub_25AE559D8;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v9 = type metadata accessor for OnboardingCoordinatorView(0);
  v10 = *(v9 + 20);
  *(a2 + v10) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D420, &qword_25AEA47E0);
  result = swift_storeEnumTagMultiPayload();
  v12 = (a2 + *(v9 + 24));
  *v12 = sub_25AE786D4;
  v12[1] = v8;
  return result;
}

uint64_t sub_25AE731C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  sub_25AEA2368();
  v4[3] = sub_25AEA2358();
  v6 = sub_25AEA2348();
  v4[4] = v6;
  v4[5] = v5;

  return MEMORY[0x2822009F8](sub_25AE73258, v6, v5);
}

uint64_t sub_25AE73258()
{
  type metadata accessor for NameRecognitionSettingsView(0);
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_25AE732FC;

  return sub_25AE88450();
}

uint64_t sub_25AE732FC()
{
  v1 = *v0;

  v2 = *(v1 + 40);
  v3 = *(v1 + 32);

  return MEMORY[0x2822009F8](sub_25AE7341C, v3, v2);
}

uint64_t sub_25AE7341C()
{

  sub_25AE73480();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_25AE73480()
{
  v1 = v0;
  v2 = sub_25AEA1F88();
  v49 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E3D0, &qword_25AEA5D00);
  MEMORY[0x28223BE20](v48);
  v6 = &v39 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E320, &qword_25AEA5AB0);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v46 = (&v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v8);
  v11 = (&v39 - v10);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E3D8, &qword_25AEA5D08);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v47 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v39 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v39 - v18;
  type metadata accessor for NameRecognitionSettingsView(0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_25AEA1478(&v50);

  if (v50 == 1)
  {
    sub_25AE70B3C(v11);
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E2D0, &qword_25AEA59F0);
    v22 = *(v21 - 8);
    v23 = *(v22 + 48);
    v41 = v22 + 48;
    v42 = v23;
    v24 = v23(v11, 1, v21);
    v44 = v1;
    v45 = v4;
    v43 = v21;
    if (v24 == 1)
    {
      sub_25AE41938(v11, &qword_27FA1E320, &qword_25AEA5AB0);
      v25 = 1;
    }

    else
    {
      MEMORY[0x25F859A10](v21);
      sub_25AE41938(v11, &qword_27FA1E2D0, &qword_25AEA59F0);
      v25 = 0;
    }

    v26 = v49;
    v27 = *(v49 + 56);
    v27(v19, v25, 1, v2);
    v28 = *(v26 + 104);
    v40 = *MEMORY[0x277CDF0D8];
    v39 = v28;
    v28(v17);
    v27(v17, 0, 1, v2);
    v29 = *(v48 + 48);
    sub_25AE479E0(v19, v6, &qword_27FA1E3D8, &qword_25AEA5D08);
    sub_25AE479E0(v17, &v6[v29], &qword_27FA1E3D8, &qword_25AEA5D08);
    v30 = *(v26 + 48);
    if (v30(v6, 1, v2) == 1)
    {
      sub_25AE41938(v17, &qword_27FA1E3D8, &qword_25AEA5D08);
      sub_25AE41938(v19, &qword_27FA1E3D8, &qword_25AEA5D08);
      if (v30(&v6[v29], 1, v2) == 1)
      {
        v31 = &qword_27FA1E3D8;
        v32 = &qword_25AEA5D08;
        v33 = v6;
        return sub_25AE41938(v33, v31, v32);
      }
    }

    else
    {
      v34 = v47;
      sub_25AE479E0(v6, v47, &qword_27FA1E3D8, &qword_25AEA5D08);
      if (v30(&v6[v29], 1, v2) != 1)
      {
        v37 = v49;
        v35 = v45;
        (*(v49 + 32))(v45, &v6[v29], v2);
        sub_25AE78AB8(&qword_27FA1E3E0, MEMORY[0x277CDF0E0], MEMORY[0x277CDF0E8]);
        LODWORD(v48) = sub_25AEA2168();
        v38 = *(v37 + 8);
        v38(v35, v2);
        sub_25AE41938(v17, &qword_27FA1E3D8, &qword_25AEA5D08);
        sub_25AE41938(v19, &qword_27FA1E3D8, &qword_25AEA5D08);
        v38(v47, v2);
        result = sub_25AE41938(v6, &qword_27FA1E3D8, &qword_25AEA5D08);
        if (v48)
        {
          return result;
        }

        goto LABEL_11;
      }

      sub_25AE41938(v17, &qword_27FA1E3D8, &qword_25AEA5D08);
      sub_25AE41938(v19, &qword_27FA1E3D8, &qword_25AEA5D08);
      (*(v49 + 8))(v34, v2);
    }

    sub_25AE41938(v6, &qword_27FA1E3D0, &qword_25AEA5D00);
    v35 = v45;
LABEL_11:
    v36 = v46;
    sub_25AE70B3C(v46);
    if (v42(v36, 1, v43) == 1)
    {
      v31 = &qword_27FA1E320;
      v32 = &qword_25AEA5AB0;
    }

    else
    {
      v39(v35, v40, v2);
      sub_25AEA1F08();
      v31 = &qword_27FA1E2D0;
      v32 = &qword_25AEA59F0;
    }

    v33 = v36;
    return sub_25AE41938(v33, v31, v32);
  }

  return result;
}

uint64_t sub_25AE73B30(char *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_25AEA1488();
}

int *sub_25AE73BA0@<X0>(uint64_t *a1@<X8>)
{
  v3 = type metadata accessor for NameRecognitionSettingsView(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_25AEA1478(&v27);

  v6 = v28;
  v26 = v27;
  if (qword_27FA1D250 != -1)
  {
    swift_once();
  }

  v7 = qword_27FA22788;
  if (qword_27FA22788)
  {
    v8 = qword_27FA22788;
  }

  else
  {
    v8 = [objc_opt_self() mainBundle];
    v7 = 0;
  }

  v9 = v7;
  v10 = sub_25AEA0CC8();
  v12 = v11;

  v27 = v10;
  v28 = v12;
  v13 = sub_25AEA2278();
  v15 = v14;
  sub_25AE7776C(v1, &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v17 = swift_allocObject();
  sub_25AE777D4(&v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16);
  sub_25AE7776C(v1, &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = swift_allocObject();
  sub_25AE777D4(&v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v16);
  *a1 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D420, &qword_25AEA47E0);
  swift_storeEnumTagMultiPayload();
  result = type metadata accessor for ErrorView(0);
  v20 = (a1 + result[5]);
  *v20 = v26;
  v20[1] = v6;
  v21 = (a1 + result[6]);
  *v21 = v13;
  v21[1] = v15;
  *(a1 + result[7]) = 1;
  v22 = (a1 + result[8]);
  *v22 = sub_25AE79644;
  v22[1] = v17;
  v23 = (a1 + result[9]);
  *v23 = 0;
  v23[1] = 0;
  v24 = (a1 + result[10]);
  *v24 = sub_25AE786B8;
  v24[1] = v18;
  return result;
}

uint64_t sub_25AE73EAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  sub_25AEA2368();
  v4[3] = sub_25AEA2358();
  v6 = sub_25AEA2348();
  v4[4] = v6;
  v4[5] = v5;

  return MEMORY[0x2822009F8](sub_25AE73F44, v6, v5);
}

uint64_t sub_25AE73F44()
{
  type metadata accessor for NameRecognitionSettingsView(0);
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_25AE73FE8;

  return sub_25AE88450();
}

uint64_t sub_25AE73FE8()
{
  v1 = *v0;

  v2 = *(v1 + 40);
  v3 = *(v1 + 32);

  return MEMORY[0x2822009F8](sub_25AE79674, v3, v2);
}

uint64_t sub_25AE74108(uint64_t a1)
{
  v2 = sub_25AEA1A28();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E2F0, &qword_25AEA5A28);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9[-v5];
  sub_25AEA19F8();
  v10 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E390, &qword_25AEA5BC8);
  sub_25AE47F60(&qword_27FA1E398, &qword_27FA1E390, &qword_25AEA5BC8, MEMORY[0x277CE14C0]);
  sub_25AEA17A8();
  v7 = sub_25AE47F60(&qword_27FA1E2F8, &qword_27FA1E2F0, &qword_25AEA5A28, MEMORY[0x277CDDB60]);
  MEMORY[0x25F859550](v6, v3, v7);
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_25AE742F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a2;
  v3 = type metadata accessor for NameRecognitionSettingsView(0);
  v34 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v35 = v4;
  v36 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E3A0, &qword_25AEA5BD0);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v38 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v33 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = &v33 - v11;
  v13 = sub_25AEA1528();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E3A8, &qword_25AEA5BD8);
  v18 = MEMORY[0x28223BE20](v17 - 8);
  v20 = &v33 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v33 - v21;
  v37 = a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_25AEA1478(&v40);

  if (v40 == 1)
  {
    sub_25AEA1518();
    (*(v14 + 32))(v22, v16, v13);
    v23 = 0;
  }

  else
  {
    v23 = 1;
  }

  v24 = 1;
  (*(v14 + 56))(v22, v23, 1, v13);
  if (AXIsInternalInstall())
  {
    v25 = v36;
    sub_25AE7776C(v37, v36);
    v26 = (*(v34 + 80) + 16) & ~*(v34 + 80);
    v27 = swift_allocObject();
    sub_25AE777D4(v25, v27 + v26);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E3C0, &qword_25AEA5C38);
    sub_25AE783EC();
    sub_25AEA1EB8();
    v24 = 0;
  }

  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E3B0, &qword_25AEA5C28);
  (*(*(v28 - 8) + 56))(v10, v24, 1, v28);
  sub_25AE49BE4(v10, v12, &qword_27FA1E3A0, &qword_25AEA5BD0);
  sub_25AE479E0(v22, v20, &qword_27FA1E3A8, &qword_25AEA5BD8);
  v29 = v38;
  sub_25AE479E0(v12, v38, &qword_27FA1E3A0, &qword_25AEA5BD0);
  v30 = v39;
  sub_25AE479E0(v20, v39, &qword_27FA1E3A8, &qword_25AEA5BD8);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E3B8, &qword_25AEA5C30);
  sub_25AE479E0(v29, v30 + *(v31 + 48), &qword_27FA1E3A0, &qword_25AEA5BD0);
  sub_25AE41938(v12, &qword_27FA1E3A0, &qword_25AEA5BD0);
  sub_25AE41938(v22, &qword_27FA1E3A8, &qword_25AEA5BD8);
  sub_25AE41938(v29, &qword_27FA1E3A0, &qword_25AEA5BD0);
  return sub_25AE41938(v20, &qword_27FA1E3A8, &qword_25AEA5BD8);
}

uint64_t sub_25AE747C4@<X0>(uint64_t a1@<X8>)
{
  sub_25AEA1958();
  if (qword_27FA1D250 != -1)
  {
    swift_once();
  }

  v2 = qword_27FA22788;
  result = sub_25AEA1BB8();
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5 & 1;
  *(a1 + 24) = v6;
  return result;
}

uint64_t sub_25AE748A4@<X0>(uint64_t a1@<X8>)
{
  v45 = a1;
  v2 = sub_25AEA1F88();
  v43 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v41 = &v38[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E3D0, &qword_25AEA5D00);
  MEMORY[0x28223BE20](v4);
  v6 = &v38[-v5];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E320, &qword_25AEA5AB0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v38[-v8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E3D8, &qword_25AEA5D08);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v42 = &v38[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v38[-v14];
  MEMORY[0x28223BE20](v13);
  v17 = &v38[-v16];
  v18 = *(v1 + *(type metadata accessor for NameRecognitionSettingsView(0) + 20) + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  v44 = v18;
  sub_25AEA1478(v46);

  if ((v46[0] & 1) == 0)
  {
    v40 = v1;
    sub_25AE70B3C(v9);
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E2D0, &qword_25AEA59F0);
    if ((*(*(v20 - 8) + 48))(v9, 1, v20) == 1)
    {
      sub_25AE41938(v9, &qword_27FA1E320, &qword_25AEA5AB0);
      v21 = 1;
    }

    else
    {
      MEMORY[0x25F859A10](v20);
      sub_25AE41938(v9, &qword_27FA1E2D0, &qword_25AEA59F0);
      v21 = 0;
    }

    v22 = v43;
    v23 = *(v43 + 56);
    v23(v17, v21, 1, v2);
    (*(v22 + 104))(v15, *MEMORY[0x277CDF0D0], v2);
    v23(v15, 0, 1, v2);
    v24 = *(v4 + 48);
    sub_25AE479E0(v17, v6, &qword_27FA1E3D8, &qword_25AEA5D08);
    sub_25AE479E0(v15, &v6[v24], &qword_27FA1E3D8, &qword_25AEA5D08);
    v25 = *(v22 + 48);
    if (v25(v6, 1, v2) == 1)
    {
      sub_25AE41938(v15, &qword_27FA1E3D8, &qword_25AEA5D08);
      sub_25AE41938(v17, &qword_27FA1E3D8, &qword_25AEA5D08);
      if (v25(&v6[v24], 1, v2) == 1)
      {
        v19 = sub_25AE41938(v6, &qword_27FA1E3D8, &qword_25AEA5D08);
        goto LABEL_13;
      }

      goto LABEL_10;
    }

    v26 = v42;
    sub_25AE479E0(v6, v42, &qword_27FA1E3D8, &qword_25AEA5D08);
    if (v25(&v6[v24], 1, v2) == 1)
    {
      sub_25AE41938(v15, &qword_27FA1E3D8, &qword_25AEA5D08);
      sub_25AE41938(v17, &qword_27FA1E3D8, &qword_25AEA5D08);
      (*(v43 + 8))(v26, v2);
LABEL_10:
      sub_25AE41938(v6, &qword_27FA1E3D0, &qword_25AEA5D00);
LABEL_11:
      swift_getKeyPath();
      swift_getKeyPath();
      sub_25AEA1478(v46);

      goto LABEL_13;
    }

    v27 = v43;
    v28 = &v6[v24];
    v29 = v41;
    (*(v43 + 32))(v41, v28, v2);
    sub_25AE78AB8(&qword_27FA1E3E0, MEMORY[0x277CDF0E0], MEMORY[0x277CDF0E8]);
    v39 = sub_25AEA2168();
    v30 = *(v27 + 8);
    v30(v29, v2);
    sub_25AE41938(v15, &qword_27FA1E3D8, &qword_25AEA5D08);
    sub_25AE41938(v17, &qword_27FA1E3D8, &qword_25AEA5D08);
    v30(v26, v2);
    v19 = sub_25AE41938(v6, &qword_27FA1E3D8, &qword_25AEA5D08);
    if ((v39 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

LABEL_13:
  MEMORY[0x28223BE20](v19);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_25AEA1478(v46);

  if (LOBYTE(v46[0]) == 1)
  {
    sub_25AEA1958();
    if (qword_27FA1D250 != -1)
    {
      swift_once();
    }

    v31 = qword_27FA22788;
    v32 = sub_25AEA1BB8();
    v36 = v35 & 1;
  }

  else
  {
    v32 = 0;
    v33 = 0;
    v36 = 0;
    v34 = 0;
  }

  v46[0] = v32;
  v46[1] = v33;
  v46[2] = v36;
  v46[3] = v34;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E420, &qword_25AEA5DC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E518, &qword_25AEA5F78);
  sub_25AE788AC();
  sub_25AE79160(&qword_27FA1E520, &qword_27FA1E518, &qword_25AEA5F78, MEMORY[0x277CE1550]);
  return sub_25AEA1F78();
}

uint64_t sub_25AE750B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v50 = a4;
  v54 = a5;
  v8 = type metadata accessor for NameRecognitionSettingsView(0);
  v45[0] = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v45[1] = v9;
  v46 = v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E460, &qword_25AEA5E28);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v53 = v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v51 = v45 - v13;
  v14 = sub_25AEA1A68();
  v48 = *(v14 - 8);
  v49 = v14;
  MEMORY[0x28223BE20](v14);
  v16 = v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E468, &qword_25AEA5E30);
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = v45 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E470, &qword_25AEA5E38);
  v22 = v21 - 8;
  v23 = MEMORY[0x28223BE20](v21);
  v52 = v45 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v26 = v45 - v25;
  v58[0] = a1;
  v58[1] = a2;
  v47 = a3;
  swift_getKeyPath();
  swift_getKeyPath();

  sub_25AEA1478(&v56);

  v57 = 0;
  v55 = 0x3FF0000000000000;
  sub_25AE4E8AC();
  sub_25AE78A64();
  sub_25AEA1628();
  sub_25AEA1A58();
  sub_25AE47F60(&qword_27FA1E480, &qword_27FA1E468, &qword_25AEA5E30, MEMORY[0x277CDD7F8]);
  sub_25AE78AB8(&qword_27FA1E488, MEMORY[0x277CDE240], MEMORY[0x277CDE238]);
  v27 = v49;
  sub_25AEA1BF8();
  (*(v48 + 8))(v16, v27);
  (*(v18 + 8))(v20, v17);
  KeyPath = swift_getKeyPath();
  v58[0] = v50;

  v29 = sub_25AEA1678();
  v30 = &v26[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E490, &qword_25AEA5EB8) + 36)];
  *v30 = KeyPath;
  v30[1] = v29;
  v31 = sub_25AEA2038();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_25AEA1478(v58);

  v32 = v58[0];
  v33 = &v26[*(v22 + 44)];
  *v33 = v31;
  v33[8] = v32;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_25AEA1478(v58);

  if (LOBYTE(v58[0]) == 1)
  {
    v34 = v46;
    sub_25AE7776C(v47, v46);
    v35 = (*(v45[0] + 80) + 16) & ~*(v45[0] + 80);
    v36 = swift_allocObject();
    sub_25AE777D4(v34, v36 + v35);
    v37 = v51;
    sub_25AEA1EB8();
    v38 = 0;
  }

  else
  {
    v38 = 1;
    v37 = v51;
  }

  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D698, &qword_25AEA4080);
  (*(*(v39 - 8) + 56))(v37, v38, 1, v39);
  v40 = v52;
  sub_25AE479E0(v26, v52, &qword_27FA1E470, &qword_25AEA5E38);
  v41 = v53;
  sub_25AE479E0(v37, v53, &qword_27FA1E460, &qword_25AEA5E28);
  v42 = v54;
  sub_25AE479E0(v40, v54, &qword_27FA1E470, &qword_25AEA5E38);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E498, &qword_25AEA5EC0);
  sub_25AE479E0(v41, v42 + *(v43 + 48), &qword_27FA1E460, &qword_25AEA5E28);
  sub_25AE41938(v37, &qword_27FA1E460, &qword_25AEA5E28);
  sub_25AE41938(v26, &qword_27FA1E470, &qword_25AEA5E38);
  sub_25AE41938(v41, &qword_27FA1E460, &qword_25AEA5E28);
  return sub_25AE41938(v40, &qword_27FA1E470, &qword_25AEA5E38);
}

uint64_t sub_25AE75798(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for NameRecognitionSettingsView(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E9B0, &qword_25AEA5C40);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v17 - v9;
  v11 = sub_25AEA2388();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  sub_25AE7776C(a1, &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_25AEA2368();
  v12 = sub_25AEA2358();
  v13 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v14 = swift_allocObject();
  v15 = MEMORY[0x277D85700];
  *(v14 + 16) = v12;
  *(v14 + 24) = v15;
  sub_25AE777D4(&v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13);
  sub_25AE82E98(0, 0, v10, a3, v14);
}

uint64_t sub_25AE7594C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  sub_25AEA2368();
  v4[3] = sub_25AEA2358();
  v6 = sub_25AEA2348();
  v4[4] = v6;
  v4[5] = v5;

  return MEMORY[0x2822009F8](sub_25AE759E4, v6, v5);
}

uint64_t sub_25AE759E4()
{
  v1 = *(v0 + 16);
  *(v0 + 48) = *(v1 + *(type metadata accessor for NameRecognitionSettingsView(0) + 20) + 8);

  return MEMORY[0x2822009F8](sub_25AE75A60, 0, 0);
}

uint64_t sub_25AE75A60()
{
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  *v1 = v0;
  v1[1] = sub_25AE75AFC;

  return sub_25AE98864();
}

uint64_t sub_25AE75AFC()
{
  v2 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v3 = sub_25AE75C18;
    v4 = 0;
    v5 = 0;
  }

  else
  {
    v4 = *(v2 + 32);
    v5 = *(v2 + 40);
    v3 = sub_25AE5E700;
  }

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_25AE75C18()
{
  v1 = v0[8];
  NRLogError(_:additionalMessage:)(v1, 0, 0);

  v2 = v0[4];
  v3 = v0[5];

  return MEMORY[0x2822009F8](sub_25AE5E700, v2, v3);
}

uint64_t sub_25AE75C90@<X0>(uint64_t a1@<X8>)
{
  sub_25AEA1958();
  if (qword_27FA1D250 != -1)
  {
    swift_once();
  }

  v2 = qword_27FA22788;
  result = sub_25AEA1BB8();
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5 & 1;
  *(a1 + 24) = v6;
  return result;
}

uint64_t sub_25AE75D70@<X0>(uint64_t a2@<X8>)
{
  type metadata accessor for NameRecognitionSettingsView(0);
  type metadata accessor for NameRecognitionSettingsViewModel(0);
  sub_25AE78AB8(&qword_27FA1E288, type metadata accessor for NameRecognitionSettingsViewModel, &protocol conformance descriptor for NameRecognitionSettingsViewModel);
  sub_25AEA16E8();
  swift_getKeyPath();
  sub_25AEA16F8();

  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E540, &qword_25AEA6050);
  sub_25AEA1F18();

  sub_25AEA1ED8();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_25AEA1478(v9);

  v3 = v9[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D408, &qword_25AEA3BA0);
  sub_25AEA1E98();
  v4 = v9[0];
  v5 = v9[1];
  v6 = v10;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E4C0, &qword_25AEA5EF8);
  v8 = a2 + *(result + 36);
  *v8 = v3;
  *(v8 + 8) = v4;
  *(v8 + 16) = v5;
  *(v8 + 24) = v6;
  return result;
}

uint64_t sub_25AE75FBC@<X0>(uint64_t a1@<X8>)
{
  sub_25AEA1958();
  if (qword_27FA1D250 != -1)
  {
    swift_once();
  }

  v2 = qword_27FA22788;
  result = sub_25AEA1BB8();
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5 & 1;
  *(a1 + 24) = v6;
  return result;
}

uint64_t sub_25AE7609C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for NameRecognitionSettingsView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_25AEA1478(&v14);

  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E150, &qword_25AEA5848);
  sub_25AE47F60(&qword_27FA1E528, &qword_27FA1E150, &qword_25AEA5848, MEMORY[0x277D83980]);
  sub_25AE791C8();
  sub_25AEA1F48();
  sub_25AE7776C(a1, &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v8 = swift_allocObject();
  sub_25AE777D4(&v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7);
  v9 = swift_allocObject();
  *(v9 + 16) = sub_25AE7921C;
  *(v9 + 24) = v8;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_25AE792C4;
  *(v10 + 24) = v9;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E4E0, &qword_25AEA5F08);
  v12 = (a2 + *(result + 36));
  *v12 = sub_25AE792CC;
  v12[1] = v10;
  return result;
}

uint64_t sub_25AE76320@<X0>(uint64_t a2@<X8>)
{
  sub_25AE4E8AC();

  result = sub_25AEA1BC8();
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5 & 1;
  *(a2 + 24) = v6;
  return result;
}

uint64_t sub_25AE7638C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E9B0, &qword_25AEA5C40);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v24 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E538, &qword_25AEA5FF0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v24 - v8;
  sub_25AE479E0(a1, &v24 - v8, &qword_27FA1E538, &qword_25AEA5FF0);
  v10 = sub_25AEA0ED8();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_25AE41938(v9, &qword_27FA1E538, &qword_25AEA5FF0);
  }

  v13 = sub_25AEA0EC8();
  v15 = v14;
  result = (*(v11 + 8))(v9, v10);
  if ((v15 & 1) == 0)
  {
    v16 = *(a2 + *(type metadata accessor for NameRecognitionSettingsView(0) + 20) + 8);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_25AEA1478(&v25);

    if ((v13 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v13 < *(v25 + 16))
    {
      v17 = (v25 + 32 * v13);
      v19 = v17[4];
      v18 = v17[5];
      v21 = v17[6];
      v20 = v17[7];

      v22 = sub_25AEA2388();
      (*(*(v22 - 8) + 56))(v6, 1, 1, v22);
      v23 = swift_allocObject();
      v23[2] = 0;
      v23[3] = 0;
      v23[4] = v16;
      v23[5] = v19;
      v23[6] = v18;
      v23[7] = v21;
      v23[8] = v20;

      sub_25AE82E98(0, 0, v6, &unk_25AEA5FF8, v23);
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_25AE76658(uint64_t a1, void (*a2)(char *))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E538, &qword_25AEA5FF0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v10 - v5;
  v7 = sub_25AEA0ED8();
  v8 = *(v7 - 8);
  (*(v8 + 16))(v6, a1, v7);
  (*(v8 + 56))(v6, 0, 1, v7);
  a2(v6);
  return sub_25AE41938(v6, &qword_27FA1E538, &qword_25AEA5FF0);
}

uint64_t sub_25AE76780()
{
  sub_25AEA1E08();
  sub_25AEA1958();
  if (qword_27FA1D250 != -1)
  {
    swift_once();
  }

  v0 = qword_27FA22788;
  v1 = sub_25AEA1BB8();
  v3 = v2;
  v5 = v4;
  sub_25AEA1C98();
  sub_25AE479D0(v1, v3, v5 & 1);
}

uint64_t sub_25AE768D4@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for NameRecognitionSettingsView(0);
  v7 = v6 - 8;
  v8 = *(v6 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v6);
  sub_25AE7776C(a1, v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v11 = swift_allocObject();
  sub_25AE777D4(v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10);
  sub_25AEA1EB8();
  v12 = (a1 + *(v7 + 32));
  v13 = *v12;
  v14 = *(v12 + 1);
  v21 = v13;
  v22 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D408, &qword_25AEA3BA0);
  sub_25AEA1E98();
  v15 = v19[1];
  v16 = v19[2];
  LOBYTE(v8) = v20;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E420, &qword_25AEA5DC0);
  v18 = a3 + *(result + 36);
  *v18 = a2;
  *(v18 + 8) = v15;
  *(v18 + 16) = v16;
  *(v18 + 24) = v8;
  return result;
}

uint64_t sub_25AE76A7C(uint64_t a1)
{
  type metadata accessor for NameRecognitionSettingsView(0);
  swift_getKeyPath();
  swift_getKeyPath();
  v1 = sub_25AEA1468();
  *v2 = !*v2;
  v1(&v4, 0);
}

uint64_t sub_25AE76B30@<X0>(uint64_t a1@<X8>)
{
  sub_25AEA1958();
  if (qword_27FA1D250 != -1)
  {
    swift_once();
  }

  v2 = qword_27FA22788;
  result = sub_25AEA1BB8();
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5 & 1;
  *(a1 + 24) = v6;
  return result;
}

uint64_t sub_25AE76C10@<X0>(uint64_t a1@<X0>, uint64_t a5@<X8>)
{
  v7 = type metadata accessor for NameRecognitionSettingsView(0);
  v8 = v7 - 8;
  v9 = *(v7 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v7);
  sub_25AE7776C(a1, &v23[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v12 = swift_allocObject();
  sub_25AE777D4(&v23[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v11);
  sub_25AEA1EB8();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_25AEA1478(v23);

  v13 = v23[0];
  v14 = (a1 + *(v8 + 32));
  v15 = *v14;
  v16 = *(v14 + 1);
  v25 = v15;
  v26 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D408, &qword_25AEA3BA0);
  sub_25AEA1E98();
  v17 = v23[0];
  v18 = v23[1];
  v19 = v24;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E420, &qword_25AEA5DC0);
  v21 = a5 + *(result + 36);
  *v21 = v13;
  *(v21 + 8) = v17;
  *(v21 + 16) = v18;
  *(v21 + 24) = v19;
  return result;
}

uint64_t sub_25AE76DF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E9B0, &qword_25AEA5C40);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v12 - v6;
  v8 = *(a1 + *(type metadata accessor for NameRecognitionSettingsView(0) + 20) + 8);
  v9 = sub_25AEA2388();
  (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = v8;

  sub_25AE82E98(0, 0, v7, a3, v10);
}

uint64_t sub_25AE76F0C@<X0>(uint64_t a1@<X8>)
{
  sub_25AEA1958();
  if (qword_27FA1D250 != -1)
  {
    swift_once();
  }

  v2 = qword_27FA22788;
  v3 = sub_25AEA1BB8();
  v5 = v4;
  v7 = v6;
  sub_25AEA1D88();
  v8 = sub_25AEA1B78();
  v10 = v9;
  v12 = v11;
  v14 = v13;

  sub_25AE479D0(v3, v5, v7 & 1);

  *a1 = v8;
  *(a1 + 8) = v10;
  *(a1 + 16) = v12 & 1;
  *(a1 + 24) = v14;
  return result;
}

uint64_t sub_25AE77058(uint64_t a1)
{
  sub_25AE73480();
  type metadata accessor for NameRecognitionSettingsView(0);
  swift_getKeyPath();
  swift_getKeyPath();
  swift_retain_n();
  sub_25AEA1488();
  swift_getKeyPath();
  swift_getKeyPath();
  return sub_25AEA1488();
}

uint64_t sub_25AE77120@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X8>)
{
  v36 = a5;
  v37 = a4;
  v39 = a1;
  v41 = a6;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E340, &qword_25AEA5B58);
  v8 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v38 = &v35[-v9];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E348, &qword_25AEA5B60);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v13 = &v35[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v11);
  v15 = &v35[-v14];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E350, &qword_25AEA5B68);
  v17 = v16 - 8;
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v35[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v18);
  v22 = &v35[-v21];
  KeyPath = swift_getKeyPath();
  v24 = swift_allocObject();
  *(v24 + 16) = a2;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E358, &qword_25AEA5BA0);
  (*(*(v25 - 8) + 16))(v22, v39, v25);
  v26 = &v22[*(v17 + 44)];
  *v26 = KeyPath;
  v26[1] = sub_25AE59FC0;
  v26[2] = v24;
  if (a2)
  {
    v42 = sub_25AEA1DB8();
    v43 = 0;
    v27 = swift_allocObject();
    *(v27 + 16) = a2 & 1;
    *(v27 + 24) = a3;
    *(v27 + 32) = v37;
    *(v27 + 40) = v36 & 1;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E368, &qword_25AEA5BB0);
    sub_25AE78274();
    v28 = v38;
    sub_25AEA1C58();

    v29 = v40;
    (*(v8 + 32))(v15, v28, v40);
    v30 = 0;
    v31 = v29;
  }

  else
  {
    v30 = 1;
    v31 = v40;
  }

  (*(v8 + 56))(v15, v30, 1, v31);
  sub_25AE479E0(v22, v20, &qword_27FA1E350, &qword_25AEA5B68);
  sub_25AE479E0(v15, v13, &qword_27FA1E348, &qword_25AEA5B60);
  v32 = v41;
  sub_25AE479E0(v20, v41, &qword_27FA1E350, &qword_25AEA5B68);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E360, &qword_25AEA5BA8);
  sub_25AE479E0(v13, v32 + *(v33 + 48), &qword_27FA1E348, &qword_25AEA5B60);
  sub_25AE41938(v15, &qword_27FA1E348, &qword_25AEA5B60);
  sub_25AE41938(v22, &qword_27FA1E350, &qword_25AEA5B68);
  sub_25AE41938(v13, &qword_27FA1E348, &qword_25AEA5B60);
  return sub_25AE41938(v20, &qword_27FA1E350, &qword_25AEA5B68);
}

uint64_t sub_25AE77574@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *v2;
  v6 = *(v2 + 8);
  v7 = *(v2 + 16);
  v8 = *(v2 + 24);
  *a2 = sub_25AEA1FF8();
  a2[1] = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E338, &qword_25AEA5B50);
  return sub_25AE77120(a1, v5, v6, v7, v8, a2 + *(v10 + 44));
}

uint64_t sub_25AE77614(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E320, &qword_25AEA5AB0);
  MEMORY[0x28223BE20](v2 - 8);
  sub_25AE479E0(a1, &v5 - v3, &qword_27FA1E320, &qword_25AEA5AB0);
  return sub_25AEA18A8();
}

uint64_t type metadata accessor for NameRecognitionSettingsView(uint64_t a1)
{
  result = qword_27FA1E308;
  if (!qword_27FA1E308)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25AE7776C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NameRecognitionSettingsView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25AE777D4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NameRecognitionSettingsView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_25AE77838@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for NameRecognitionSettingsView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_25AE73064(v4, a1);
}

unint64_t sub_25AE77990()
{
  result = qword_27FA1E2E0;
  if (!qword_27FA1E2E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA1E2A8, &qword_25AEA59B0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA1E2A0, &qword_25AEA59A8);
    type metadata accessor for ErrorView(255);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA1E298, &qword_25AEA59A0);
    type metadata accessor for OnboardingCoordinatorView(255);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA1E290, &qword_25AEA5998);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA1D698, &qword_25AEA4080);
    sub_25AE47F60(&qword_27FA1E2C8, &qword_27FA1E290, &qword_25AEA5998, MEMORY[0x277CDE5A0]);
    sub_25AE47F60(&qword_27FA1D690, &qword_27FA1D698, &qword_25AEA4080, MEMORY[0x277CDF028]);
    swift_getOpaqueTypeConformance2();
    sub_25AE78AB8(&qword_27FA1E2D8, type metadata accessor for OnboardingCoordinatorView, &protocol conformance descriptor for OnboardingCoordinatorView);
    swift_getOpaqueTypeConformance2();
    sub_25AE78AB8(&qword_27FA1D418, type metadata accessor for ErrorView, &protocol conformance descriptor for ErrorView);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA1E2E0);
  }

  return result;
}

uint64_t sub_25AE77C28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E300, &qword_25AEA5A88);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_25AE77D08(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E300, &qword_25AEA5A88);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

void sub_25AE77DD0(uint64_t a1)
{
  sub_25AE77E6C(319);
  if (v1 <= 0x3F)
  {
    sub_25AE77ED0(319);
    if (v2 <= 0x3F)
    {
      sub_25AE77F64();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_25AE77E6C(uint64_t a1)
{
  if (!qword_27FA1E318)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA1E320, &qword_25AEA5AB0);
    v1 = sub_25AEA15B8();
    if (!v2)
    {
      atomic_store(v1, &qword_27FA1E318);
    }
  }
}

void sub_25AE77ED0(uint64_t a1)
{
  if (!qword_27FA1E328)
  {
    type metadata accessor for NameRecognitionSettingsViewModel(255);
    sub_25AE78AB8(&qword_27FA1E288, type metadata accessor for NameRecognitionSettingsViewModel, &protocol conformance descriptor for NameRecognitionSettingsViewModel);
    v1 = sub_25AEA1708();
    if (!v2)
    {
      atomic_store(v1, &qword_27FA1E328);
    }
  }
}

void sub_25AE77F64()
{
  if (!qword_27FA1E330)
  {
    v0 = sub_25AEA1EA8();
    if (!v1)
    {
      atomic_store(v0, &qword_27FA1E330);
    }
  }
}

uint64_t sub_25AE77FB4()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA1E2B0, &qword_25AEA59B8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA1E2E8, &qword_25AEA5A20);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA1E2A8, &qword_25AEA59B0);
  sub_25AE77990();
  swift_getOpaqueTypeConformance2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA1E2F0, &qword_25AEA5A28);
  sub_25AE47F60(&qword_27FA1E2F8, &qword_27FA1E2F0, &qword_25AEA5A28, MEMORY[0x277CDDB60]);
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_25AE78104(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_25AE7814C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_25AE781D4()
{

  return MEMORY[0x2821FE8E8](v0, 41, 7);
}

unint64_t sub_25AE78274()
{
  result = qword_27FA1E370;
  if (!qword_27FA1E370)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA1E368, &qword_25AEA5BB0);
    sub_25AE47F60(&qword_27FA1E378, &qword_27FA1E380, &qword_25AEA5BB8, MEMORY[0x277CE0470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA1E370);
  }

  return result;
}

unint64_t sub_25AE783EC()
{
  result = qword_27FA1E3C8;
  if (!qword_27FA1E3C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA1E3C0, &qword_25AEA5C38);
    sub_25AE78AB8(&qword_27FA1D510, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA1E3C8);
  }

  return result;
}

uint64_t sub_25AE784A8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_25AE4F874;

  return sub_25AE89784(a1, v4, v5, v6);
}

uint64_t sub_25AE7855C(uint64_t a1)
{
  v4 = *(type metadata accessor for NameRecognitionSettingsView(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_25AE4F874;

  return sub_25AE73EAC(a1, v6, v7, v1 + v5);
}

uint64_t sub_25AE78708(uint64_t a1)
{
  v4 = *(type metadata accessor for NameRecognitionSettingsView(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_25AE4F874;

  return sub_25AE731C0(a1, v6, v7, v1 + v5);
}

uint64_t sub_25AE787F8()
{
  v1 = *(type metadata accessor for NameRecognitionSettingsView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_25AE72FCC(v2);
}

unint64_t sub_25AE788AC()
{
  result = qword_27FA1E428;
  if (!qword_27FA1E428)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA1E420, &qword_25AEA5DC0);
    sub_25AE47F60(&qword_27FA1D690, &qword_27FA1D698, &qword_25AEA4080, MEMORY[0x277CDF028]);
    sub_25AE78964();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA1E428);
  }

  return result;
}

unint64_t sub_25AE78964()
{
  result = qword_27FA1E430;
  if (!qword_27FA1E430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA1E430);
  }

  return result;
}

unint64_t sub_25AE789B8()
{
  result = qword_27FA1E440;
  if (!qword_27FA1E440)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA1E3F0, &qword_25AEA5D48);
    sub_25AE788AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA1E440);
  }

  return result;
}

unint64_t sub_25AE78A64()
{
  result = qword_27FA1E478;
  if (!qword_27FA1E478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA1E478);
  }

  return result;
}

uint64_t sub_25AE78AB8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_25AE78B00@<X0>(uint64_t *a1@<X8>)
{
  result = MEMORY[0x25F859380]();
  *a1 = result;
  return result;
}

uint64_t objectdestroy_51Tm()
{
  v1 = *(type metadata accessor for NameRecognitionSettingsView(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E280, &qword_25AEA5990);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E2D0, &qword_25AEA59F0);
    if (!(*(*(v5 - 8) + 48))(v0 + v3, 1, v5))
    {

      v6 = *(v5 + 32);
      v7 = sub_25AEA1F88();
      (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);
    }
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_25AE78D38(uint64_t a1)
{
  v4 = *(type metadata accessor for NameRecognitionSettingsView(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_25AE47200;

  return sub_25AE7594C(a1, v6, v7, v1 + v5);
}

unint64_t sub_25AE78E30()
{
  result = qword_27FA1E4C8;
  if (!qword_27FA1E4C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA1E4C0, &qword_25AEA5EF8);
    sub_25AE47F60(&qword_27FA1E4D0, &qword_27FA1E4D8, &qword_25AEA5F00, MEMORY[0x277CDF068]);
    sub_25AE78964();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA1E4C8);
  }

  return result;
}

unint64_t sub_25AE78EF0()
{
  result = qword_27FA1E4E8;
  if (!qword_27FA1E4E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA1E4E0, &qword_25AEA5F08);
    sub_25AE79160(&qword_27FA1E4F0, &qword_27FA1E4F8, &qword_25AEA5F10, MEMORY[0x277CE1290]);
    sub_25AE47F60(&qword_27FA1E500, &qword_27FA1E508, &qword_25AEA5F18, MEMORY[0x277CE04A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA1E4E8);
  }

  return result;
}

uint64_t objectdestroy_47Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_25AE79098(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_25AE4F874;

  return sub_25AE89060(a1, v4, v5, v6);
}

uint64_t sub_25AE79160(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

unint64_t sub_25AE791C8()
{
  result = qword_27FA1E530;
  if (!qword_27FA1E530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA1E530);
  }

  return result;
}

uint64_t sub_25AE7921C(uint64_t a1)
{
  v3 = *(type metadata accessor for NameRecognitionSettingsView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_25AE7638C(a1, v4);
}

uint64_t sub_25AE7928C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_25AE792F4()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_25AE79344(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_25AE4F874;

  return sub_25AE88A8C(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t objectdestroyTm_4()
{
  v1 = *(type metadata accessor for NameRecognitionSettingsView(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E280, &qword_25AEA5990);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E2D0, &qword_25AEA59F0);
    if (!(*(*(v5 - 8) + 48))(v0 + v3, 1, v5))
    {

      v6 = *(v5 + 32);
      v7 = sub_25AEA1F88();
      (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);
    }
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_25AE79678(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = (result + 56);
    do
    {
      v4 = *(v2 - 1);
      v3 = *v2;

      swift_bridgeObjectRetain_n();
      sub_25AE9CE10(&v5, v4, v3);

      v2 += 4;
      --v1;
    }

    while (v1);
  }

  return result;
}

uint64_t sub_25AE79730()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_25AEA1478(&v1);

  swift_getKeyPath();
  swift_getKeyPath();

  return sub_25AEA1488();
}

uint64_t sub_25AE79814()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_25AEA1478(&v1);

  return v1;
}

uint64_t sub_25AE79888()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_25AEA1478(&v1);

  return v1;
}

uint64_t sub_25AE79910(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_25AEA1478(&v3);

  return v3;
}

uint64_t sub_25AE79990()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_25AEA1478(&v1);

  return v1;
}

uint64_t sub_25AE79A04()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_25AEA1478(&v1);

  return v1;
}

uint64_t sub_25AE79A8C@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_25AEA1478(a1);
}

void sub_25AE79B04()
{
  v1 = *(v0 + OBJC_IVAR____TtC15NameRecognition21EnrollmentCoordinator_audioManager);
  if (v1)
  {
    v3 = v1;
    sub_25AE7BE80(v3);
  }

  else
  {
    v2 = OBJC_IVAR____TtC15NameRecognition21EnrollmentCoordinator_engineStateSubscription;
    if (*(v0 + OBJC_IVAR____TtC15NameRecognition21EnrollmentCoordinator_engineStateSubscription))
    {

      sub_25AEA1408();
    }

    *(v0 + v2) = 0;
  }
}

uint64_t sub_25AE79BC4()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E9B0, &qword_25AEA5C40);
  MEMORY[0x28223BE20](v2 - 8);
  v75 = &v57 - v3;
  v4 = sub_25AEA11E8();
  MEMORY[0x28223BE20](v4 - 8);
  v74 = &v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E6A0, &qword_25AEA6580);
  v72 = *(v6 - 8);
  v73 = v6;
  MEMORY[0x28223BE20](v6);
  v71 = &v57 - v7;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1DD00, &qword_25AEA4E48);
  v8 = MEMORY[0x28223BE20](v70);
  v69 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v68 = &v57 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E698, &qword_25AEA6578);
  v66 = *(v11 - 8);
  v67 = v11;
  MEMORY[0x28223BE20](v11);
  v65 = &v57 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D4A0, &qword_25AEA3D30);
  v63 = *(v13 - 8);
  v64 = v13;
  MEMORY[0x28223BE20](v13);
  v62 = &v57 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D5F0, &qword_25AEA6570);
  v60 = *(v15 - 8);
  v61 = v15;
  MEMORY[0x28223BE20](v15);
  v59 = &v57 - v16;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E688, &qword_25AEA6560);
  v17 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v19 = &v57 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E680, &qword_25AEA6558);
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = &v57 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E678, &qword_25AEA6550);
  v25 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v27 = &v57 - v26;
  v28 = OBJC_IVAR____TtC15NameRecognition21EnrollmentCoordinator__navigationPath;
  v77 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1DA50, &qword_25AEA4810);
  sub_25AEA1438();
  (*(v25 + 32))(v1 + v28, v27, v24);
  v29 = OBJC_IVAR____TtC15NameRecognition21EnrollmentCoordinator__currentStage;
  LOBYTE(v77) = 0;
  sub_25AEA1438();
  (*(v21 + 32))(v1 + v29, v23, v20);
  v30 = OBJC_IVAR____TtC15NameRecognition21EnrollmentCoordinator__enrolledName;
  v77 = 0;
  v78 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D388, &qword_25AEA5220);
  sub_25AEA1438();
  (*(v17 + 32))(v1 + v30, v19, v58);
  v31 = OBJC_IVAR____TtC15NameRecognition21EnrollmentCoordinator__isGeneratedAudioComplete;
  LOBYTE(v77) = 0;
  v32 = v59;
  sub_25AEA1438();
  v33 = v61;
  v34 = *(v60 + 32);
  v34(v1 + v31, v32, v61);
  v35 = OBJC_IVAR____TtC15NameRecognition21EnrollmentCoordinator__engineState;
  LOBYTE(v77) = 0;
  v36 = v62;
  sub_25AEA1438();
  (*(v63 + 32))(v1 + v35, v36, v64);
  v37 = OBJC_IVAR____TtC15NameRecognition21EnrollmentCoordinator__audioEnrollmentProgress;
  LOWORD(v77) = 1024;
  v38 = v65;
  sub_25AEA1438();
  (*(v66 + 32))(v1 + v37, v38, v67);
  v39 = OBJC_IVAR____TtC15NameRecognition21EnrollmentCoordinator__enrollmentComplete;
  LOBYTE(v77) = 0;
  sub_25AEA1438();
  v34(v1 + v39, v32, v33);
  v40 = OBJC_IVAR____TtC15NameRecognition21EnrollmentCoordinator__lastCollectionState;
  v41 = sub_25AEA1148();
  v42 = v68;
  (*(*(v41 - 8) + 56))(v68, 1, 1, v41);
  sub_25AE479E0(v42, v69, &qword_27FA1DD00, &qword_25AEA4E48);
  v43 = v71;
  sub_25AEA1438();
  sub_25AE41938(v42, &qword_27FA1DD00, &qword_25AEA4E48);
  (*(v72 + 32))(v1 + v40, v43, v73);
  *(v1 + OBJC_IVAR____TtC15NameRecognition21EnrollmentCoordinator_speechCollector) = 0;
  v44 = v1 + OBJC_IVAR____TtC15NameRecognition21EnrollmentCoordinator_speechSession;
  *v44 = 0u;
  *(v44 + 16) = 0u;
  *(v44 + 32) = 0;
  *(v1 + OBJC_IVAR____TtC15NameRecognition21EnrollmentCoordinator_audioManager) = 0;
  *(v1 + OBJC_IVAR____TtC15NameRecognition21EnrollmentCoordinator_ttsNameAudio) = 0;
  v45 = OBJC_IVAR____TtC15NameRecognition21EnrollmentCoordinator_ttsTempEnrolment;
  v46 = type metadata accessor for EnrollmentCoordinator.TempCollectedEnrollment(0);
  (*(*(v46 - 8) + 56))(v1 + v45, 1, 1, v46);
  *(v1 + OBJC_IVAR____TtC15NameRecognition21EnrollmentCoordinator_currentEnrolledNames) = 0;
  *(v1 + OBJC_IVAR____TtC15NameRecognition21EnrollmentCoordinator_numberOfSamples) = 26;
  *(v1 + OBJC_IVAR____TtC15NameRecognition21EnrollmentCoordinator_engineStateSubscription) = 0;
  v47 = (v1 + OBJC_IVAR____TtC15NameRecognition21EnrollmentCoordinator_dismissEnrollmentFlow);
  *v47 = nullsub_1;
  v47[1] = 0;
  v48 = sub_25AEA2328();
  *(v48 + 16) = 26;
  *(v48 + 32) = 0u;
  *(v48 + 48) = 0u;
  *(v48 + 64) = 0u;
  *(v48 + 80) = 0u;
  *(v48 + 96) = 0u;
  *(v48 + 112) = 0u;
  *(v48 + 128) = 0;
  swift_beginAccess();
  v76 = v48;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1DD18, &unk_25AEA6090);
  sub_25AEA1438();
  swift_endAccess();
  if (qword_27FA1D278 != -1)
  {
    swift_once();
  }

  v49 = qword_27FA1E140;
  *(v1 + OBJC_IVAR____TtC15NameRecognition21EnrollmentCoordinator_client) = qword_27FA1E140;
  *(v1 + OBJC_IVAR____TtC15NameRecognition21EnrollmentCoordinator_collectedEnrollments) = MEMORY[0x277D84F90];
  type metadata accessor for NameGenerator();
  v50 = swift_allocObject();
  *(v50 + 16) = 0;
  sub_25AEA0FC8();
  v51 = v49;
  *(v50 + 24) = sub_25AEA0FB8();
  *(v1 + OBJC_IVAR____TtC15NameRecognition21EnrollmentCoordinator_nameGenerator) = v50;
  sub_25AEA2478();
  v52 = MEMORY[0x25F859F80]();
  LOBYTE(v50) = [v52 isNameRecognitionEnabled];

  *(v1 + OBJC_IVAR____TtC15NameRecognition21EnrollmentCoordinator_wasNameRecognitinoEnabledBeforeOnboarding) = v50;
  sub_25AEA11D8();
  sub_25AE81704(&qword_27FA1E6A8, type metadata accessor for EnrollmentCoordinator, &unk_25AEA6178);
  sub_25AEA1058();
  swift_allocObject();

  *(v1 + OBJC_IVAR____TtC15NameRecognition21EnrollmentCoordinator_speechCollector) = sub_25AEA1038();

  v53 = sub_25AEA2388();
  v54 = v75;
  (*(*(v53 - 8) + 56))(v75, 1, 1, v53);
  v55 = swift_allocObject();
  v55[2] = 0;
  v55[3] = 0;
  v55[4] = v1;

  sub_25AE82E98(0, 0, v54, &unk_25AEA6590, v55);

  return v1;
}

uint64_t sub_25AE7A670()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC15NameRecognition21EnrollmentCoordinator_engineStateSubscription;
  if (*(v0 + OBJC_IVAR____TtC15NameRecognition21EnrollmentCoordinator_engineStateSubscription))
  {

    sub_25AEA1408();
  }

  *(v0 + v2) = 0;

  v3 = OBJC_IVAR____TtC15NameRecognition21EnrollmentCoordinator__navigationPath;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E678, &qword_25AEA6550);
  (*(*(v4 - 8) + 8))(v1 + v3, v4);
  v5 = OBJC_IVAR____TtC15NameRecognition21EnrollmentCoordinator__currentStage;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E680, &qword_25AEA6558);
  (*(*(v6 - 8) + 8))(v1 + v5, v6);
  v7 = OBJC_IVAR____TtC15NameRecognition21EnrollmentCoordinator__enrolledName;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E688, &qword_25AEA6560);
  (*(*(v8 - 8) + 8))(v1 + v7, v8);
  v9 = OBJC_IVAR____TtC15NameRecognition21EnrollmentCoordinator__recordingMagnitudes;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E690, &qword_25AEA6568);
  (*(*(v10 - 8) + 8))(v1 + v9, v10);
  v11 = OBJC_IVAR____TtC15NameRecognition21EnrollmentCoordinator__isGeneratedAudioComplete;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D5F0, &qword_25AEA6570);
  v13 = *(*(v12 - 8) + 8);
  v13(v1 + v11, v12);
  v14 = OBJC_IVAR____TtC15NameRecognition21EnrollmentCoordinator__engineState;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D4A0, &qword_25AEA3D30);
  (*(*(v15 - 8) + 8))(v1 + v14, v15);
  v16 = OBJC_IVAR____TtC15NameRecognition21EnrollmentCoordinator__audioEnrollmentProgress;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E698, &qword_25AEA6578);
  (*(*(v17 - 8) + 8))(v1 + v16, v17);
  v13(v1 + OBJC_IVAR____TtC15NameRecognition21EnrollmentCoordinator__enrollmentComplete, v12);
  v18 = OBJC_IVAR____TtC15NameRecognition21EnrollmentCoordinator__lastCollectionState;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E6A0, &qword_25AEA6580);
  (*(*(v19 - 8) + 8))(v1 + v18, v19);

  sub_25AE41938(v1 + OBJC_IVAR____TtC15NameRecognition21EnrollmentCoordinator_speechSession, &qword_27FA1E660, &qword_25AEA6318);

  sub_25AE41938(v1 + OBJC_IVAR____TtC15NameRecognition21EnrollmentCoordinator_ttsTempEnrolment, &qword_27FA1D538, &qword_25AEA3DC0);

  return v1;
}

uint64_t sub_25AE7AA28()
{
  sub_25AE7A670();

  return swift_deallocClassInstance();
}

void sub_25AE7AAA8(uint64_t a1)
{
  sub_25AE7FD2C(319, &qword_27FA1E608, &qword_27FA1DA50, &qword_25AEA4810);
  if (v1 <= 0x3F)
  {
    sub_25AE7FCE0(319, &qword_27FA1E610, &type metadata for EnrollmentCoordinator.NavigationStage);
    if (v2 <= 0x3F)
    {
      sub_25AE7FD2C(319, &qword_27FA1E618, &qword_27FA1D388, &qword_25AEA5220);
      if (v3 <= 0x3F)
      {
        sub_25AE7FD2C(319, &qword_27FA1E620, &qword_27FA1DD18, &unk_25AEA6090);
        if (v4 <= 0x3F)
        {
          sub_25AE7FCE0(319, &qword_27FA1D5E8, MEMORY[0x277D839B0]);
          if (v5 <= 0x3F)
          {
            sub_25AE7FCE0(319, &qword_27FA1D898, &type metadata for AudioEngineState);
            if (v6 <= 0x3F)
            {
              sub_25AE7FCE0(319, &qword_27FA1E628, &type metadata for AudioEnrollmentProgress);
              if (v7 <= 0x3F)
              {
                sub_25AE7FD2C(319, &qword_27FA1E630, &qword_27FA1DD00, &qword_25AEA4E48);
                if (v8 <= 0x3F)
                {
                  sub_25AE7FD80(319);
                  if (v9 <= 0x3F)
                  {
                    swift_updateClassMetadata2();
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

uint64_t sub_25AE7AE1C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_25AEA1478(&v11);

  v0 = *(v11 + 2);

  swift_getKeyPath();
  swift_getKeyPath();
  if (v0)
  {
    sub_25AEA1478(&v11);

    v1 = *(v11 + 2);
    if (!v1)
    {
    }

    v2 = v11[v1 + 31];

    if (byte_286C3CAD0 == v2)
    {
      v4 = 0;
    }

    else if (byte_286C3CAD1 == v2)
    {
      v4 = 1u;
    }

    else if (byte_286C3CAD2 == v2)
    {
      v4 = 2u;
    }

    else
    {
      if (byte_286C3CAD3 != v2)
      {
        return result;
      }

      v4 = 3u;
    }

    v8 = *(&unk_286C3CAB0 + v4 + 33);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_25AEA1478(&v11);

    v5 = v11;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v5 = sub_25AE5B700(0, *(v5 + 2) + 1, 1, v5);
    }

    v10 = *(v5 + 2);
    v9 = *(v5 + 3);
    if (v10 >= v9 >> 1)
    {
      v5 = sub_25AE5B700((v9 > 1), v10 + 1, 1, v5);
    }

    *(v5 + 2) = v10 + 1;
    v5[v10 + 32] = v8;
  }

  else
  {
    sub_25AEA1478(&v11);

    v5 = v11;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v5 = sub_25AE5B700(0, *(v5 + 2) + 1, 1, v5);
    }

    v7 = *(v5 + 2);
    v6 = *(v5 + 3);
    if (v7 >= v6 >> 1)
    {
      v5 = sub_25AE5B700((v6 > 1), v7 + 1, 1, v5);
    }

    *(v5 + 2) = v7 + 1;
    v5[v7 + 32] = 1;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v11 = v5;

  sub_25AEA1488();
  return sub_25AE79730();
}

uint64_t sub_25AE7B0F0(char a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_25AEA1478(&v6);

  v2 = v6;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_25AE5B700(0, *(v2 + 2) + 1, 1, v2);
  }

  v4 = *(v2 + 2);
  v3 = *(v2 + 3);
  if (v4 >= v3 >> 1)
  {
    v2 = sub_25AE5B700((v3 > 1), v4 + 1, 1, v2);
  }

  *(v2 + 2) = v4 + 1;
  v2[v4 + 32] = a1;
  swift_getKeyPath();
  swift_getKeyPath();
  v6 = v2;

  sub_25AEA1488();
  return sub_25AE79730();
}

void sub_25AE7B21C()
{
  v1 = *(v0 + OBJC_IVAR____TtC15NameRecognition21EnrollmentCoordinator_numberOfSamples);
  if (v1 < 0)
  {
    __break(1u);
  }

  else
  {
    if (v1)
    {
      v2 = sub_25AEA2328();
      *(v2 + 16) = v1;
      bzero((v2 + 32), 4 * v1);
    }

    swift_getKeyPath();
    swift_getKeyPath();

    sub_25AEA1488();
    v7 = 0;
    memset(v6, 0, sizeof(v6));
    v3 = OBJC_IVAR____TtC15NameRecognition21EnrollmentCoordinator_speechSession;
    swift_beginAccess();
    sub_25AE62498(v6, v0 + v3, &qword_27FA1E660, &qword_25AEA6318);
    swift_endAccess();
    v4 = *(v0 + OBJC_IVAR____TtC15NameRecognition21EnrollmentCoordinator_audioManager);
    if (v4)
    {
      v5 = v4;
      sub_25AE506C0();
    }
  }
}

void sub_25AE7B33C()
{
  v1 = *(v0 + OBJC_IVAR____TtC15NameRecognition21EnrollmentCoordinator_numberOfSamples);
  if (v1 < 0)
  {
    __break(1u);
  }

  else
  {
    if (v1)
    {
      v2 = sub_25AEA2328();
      *(v2 + 16) = v1;
      bzero((v2 + 32), 4 * v1);
    }

    swift_getKeyPath();
    swift_getKeyPath();

    sub_25AEA1488();
    v8 = 0;
    memset(v7, 0, sizeof(v7));
    v3 = OBJC_IVAR____TtC15NameRecognition21EnrollmentCoordinator_speechSession;
    swift_beginAccess();
    sub_25AE62498(v7, v0 + v3, &qword_27FA1E660, &qword_25AEA6318);
    swift_endAccess();
    v4 = OBJC_IVAR____TtC15NameRecognition21EnrollmentCoordinator_audioManager;
    v5 = *(v0 + OBJC_IVAR____TtC15NameRecognition21EnrollmentCoordinator_audioManager);
    if (v5)
    {
      v6 = v5;
      sub_25AE504C4();

      v5 = *(v0 + v4);
    }

    *(v0 + v4) = 0;

    sub_25AE79B04();
  }
}

uint64_t sub_25AE7B478()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1DD00, &qword_25AEA4E48);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v14 - v7;
  MEMORY[0x28223BE20](v6);
  v10 = &v14 - v9;
  v11 = sub_25AEA1148();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  sub_25AE479E0(v10, v8, &qword_27FA1DD00, &qword_25AEA4E48);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_25AE479E0(v8, v5, &qword_27FA1DD00, &qword_25AEA4E48);

  sub_25AEA1488();
  sub_25AE41938(v8, &qword_27FA1DD00, &qword_25AEA4E48);
  sub_25AE41938(v10, &qword_27FA1DD00, &qword_25AEA4E48);
  v17 = 0;
  v15 = 0u;
  v16 = 0u;
  v12 = OBJC_IVAR____TtC15NameRecognition21EnrollmentCoordinator_speechSession;
  swift_beginAccess();
  sub_25AE62498(&v15, v0 + v12, &qword_27FA1E660, &qword_25AEA6318);
  swift_endAccess();
  if (*(v0 + OBJC_IVAR____TtC15NameRecognition21EnrollmentCoordinator_speechCollector))
  {

    sub_25AEA1048();

    if (v1)
    {
      return result;
    }
  }

  else
  {
    v17 = 0;
    v15 = 0u;
    v16 = 0u;
  }

  swift_beginAccess();
  sub_25AE62498(&v15, v0 + v12, &qword_27FA1E660, &qword_25AEA6318);
  return swift_endAccess();
}

uint64_t sub_25AE7B6EC(uint64_t a1, uint64_t a2)
{
  v3[11] = a2;
  v3[12] = v2;
  v3[10] = a1;
  v4 = type metadata accessor for EnrollmentCoordinator.TempCollectedEnrollment(0);
  v3[13] = v4;
  v3[14] = *(v4 - 8);
  v3[15] = swift_task_alloc();
  v5 = sub_25AEA1178();
  v3[16] = v5;
  v3[17] = *(v5 - 8);
  v3[18] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D538, &qword_25AEA3DC0);
  v3[19] = swift_task_alloc();
  sub_25AEA2368();
  v3[20] = sub_25AEA2358();
  v7 = sub_25AEA2348();
  v3[21] = v7;
  v3[22] = v6;

  return MEMORY[0x2822009F8](sub_25AE7B878, v7, v6);
}

uint64_t sub_25AE7B878()
{
  v1 = swift_task_alloc();
  v0[23] = v1;
  *v1 = v0;
  v1[1] = sub_25AE7B91C;
  v3 = v0[10];
  v2 = v0[11];

  return sub_25AE6638C(v3, v2);
}

uint64_t sub_25AE7B91C(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 192) = a1;
  *(v4 + 200) = v1;

  v5 = *(v3 + 176);
  v6 = *(v3 + 168);
  if (v1)
  {
    v7 = sub_25AE7BDF8;
  }

  else
  {
    v7 = sub_25AE7BA60;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_25AE7BA60()
{
  v1 = *(v0 + 192);
  v2 = *(v0 + 200);
  v3 = *(v0 + 96);

  v4 = *(v3 + OBJC_IVAR____TtC15NameRecognition21EnrollmentCoordinator_ttsNameAudio);
  *(v3 + OBJC_IVAR____TtC15NameRecognition21EnrollmentCoordinator_ttsNameAudio) = v1;
  v5 = v1;

  v6 = sub_25AE649DC();
  if (v2)
  {

    v7 = *(v0 + 8);
  }

  else
  {
    v8 = v6;
    v9 = *(v0 + 152);
    v10 = *(v0 + 120);
    v12 = *(v0 + 96);
    v11 = *(v0 + 104);
    (*(*(v0 + 136) + 104))(*(v0 + 144), *MEMORY[0x277D79828], *(v0 + 128));
    v13 = sub_25AEA1168();
    v15 = v14;
    sub_25AEA0E38();
    *(v9 + *(v11 + 20)) = v8;
    v16 = (v9 + *(v11 + 24));
    *v16 = v13;
    v16[1] = v15;
    sub_25AE8174C(v9, v10, type metadata accessor for EnrollmentCoordinator.TempCollectedEnrollment);
    v17 = OBJC_IVAR____TtC15NameRecognition21EnrollmentCoordinator_collectedEnrollments;
    swift_beginAccess();
    v18 = *(v12 + v17);
    v35 = v8;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v12 + v17) = v18;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v18 = sub_25AE5B81C(0, v18[2] + 1, 1, v18);
      *(v12 + v17) = v18;
    }

    v21 = v18[2];
    v20 = v18[3];
    if (v21 >= v20 >> 1)
    {
      v18 = sub_25AE5B81C((v20 > 1), v21 + 1, 1, v18);
    }

    v34 = *(v0 + 192);
    v22 = *(v0 + 144);
    v24 = *(v0 + 128);
    v23 = *(v0 + 136);
    v26 = *(v0 + 112);
    v25 = *(v0 + 120);
    v27 = *(v0 + 96);
    v30 = *(v0 + 104);
    v31 = *(v0 + 152);
    v32 = *(v0 + 80);
    v33 = *(v0 + 88);
    v18[2] = v21 + 1;
    sub_25AE8181C(v25, v18 + ((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v21, type metadata accessor for EnrollmentCoordinator.TempCollectedEnrollment);
    *(v12 + v17) = v18;
    swift_endAccess();
    (*(v23 + 8))(v22, v24);
    (*(v26 + 56))(v31, 0, 1, v30);
    v28 = OBJC_IVAR____TtC15NameRecognition21EnrollmentCoordinator_ttsTempEnrolment;
    swift_beginAccess();
    sub_25AE62498(v31, v27 + v28, &qword_27FA1D538, &qword_25AEA3DC0);
    swift_endAccess();
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 64) = v32;
    *(v0 + 72) = v33;

    sub_25AEA1488();
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 208) = 1;

    sub_25AEA1488();

    v7 = *(v0 + 8);
  }

  return v7();
}

uint64_t sub_25AE7BDF8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_25AE7BE80(uint64_t a1)
{
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D498, &unk_25AEA3D20);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA1D960, &unk_25AEA44A0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v13 - v9;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D4A0, &qword_25AEA3D30);
  sub_25AEA1448();
  swift_endAccess();
  sub_25AE47F60(&unk_27FA1D970, &qword_27FA1D498, &unk_25AEA3D20, MEMORY[0x277CBCEC8]);
  sub_25AE47690();
  sub_25AEA14A8();
  (*(v4 + 8))(v6, v3);
  swift_getKeyPath();
  v14 = v1;
  sub_25AE47F60(&qword_27FA1D980, &unk_27FA1D960, &unk_25AEA44A0, MEMORY[0x277CBCBE0]);
  v11 = sub_25AEA14C8();

  (*(v8 + 8))(v10, v7);
  *(v2 + OBJC_IVAR____TtC15NameRecognition21EnrollmentCoordinator_engineStateSubscription) = v11;
}

uint64_t sub_25AE7C10C@<X0>(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_25AEA1478(&v4);

  *a2 = v4;
  return result;
}

uint64_t sub_25AE7C18C(char *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_25AEA1488();
}

uint64_t sub_25AE7C200(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E9B0, &qword_25AEA5C40);
  MEMORY[0x28223BE20](v4 - 8);
  v34 = &v34 - v5;
  v6 = sub_25AEA1178();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for EnrollmentCoordinator.TempCollectedEnrollment(0);
  v11 = v10 - 8;
  v35 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v34 - v15;
  v17 = *MEMORY[0x277D79820];
  v18 = *(v7 + 104);
  v36 = v6;
  v18(v9, v17, v6);
  v19 = sub_25AEA1168();
  v21 = v20;
  sub_25AEA0E38();
  *&v16[*(v11 + 28)] = a1;
  v22 = &v16[*(v11 + 32)];
  *v22 = v19;
  v22[1] = v21;
  sub_25AE8181C(v16, v14, type metadata accessor for EnrollmentCoordinator.TempCollectedEnrollment);
  v23 = OBJC_IVAR____TtC15NameRecognition21EnrollmentCoordinator_collectedEnrollments;
  swift_beginAccess();
  v24 = *(v2 + v23);
  v25 = a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v2 + v23) = v24;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v24 = sub_25AE5B81C(0, v24[2] + 1, 1, v24);
    *(v2 + v23) = v24;
  }

  v28 = v24[2];
  v27 = v24[3];
  if (v28 >= v27 >> 1)
  {
    v24 = sub_25AE5B81C((v27 > 1), v28 + 1, 1, v24);
  }

  v24[2] = v28 + 1;
  sub_25AE8181C(v14, v24 + ((*(v35 + 80) + 32) & ~*(v35 + 80)) + *(v35 + 72) * v28, type metadata accessor for EnrollmentCoordinator.TempCollectedEnrollment);
  *(v2 + v23) = v24;
  swift_endAccess();
  (*(v7 + 8))(v9, v36);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_25AEA1478(&v37);

  v29 = sub_25AE8FCE0(v37);
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v37) = v29;
  BYTE1(v37) = 4;

  result = sub_25AEA1488();
  if (v29 == 3)
  {
    v31 = sub_25AEA2388();
    v32 = v34;
    (*(*(v31 - 8) + 56))(v34, 1, 1, v31);
    v33 = swift_allocObject();
    v33[2] = 0;
    v33[3] = 0;
    v33[4] = v2;

    sub_25AE93374(0, 0, v32, &unk_25AEA63D0, v33);
  }

  return result;
}

uint64_t sub_25AE7C648()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_25AE47200;

  return sub_25AE7C6D8();
}

uint64_t sub_25AE7C6D8()
{
  v1[2] = v0;
  type metadata accessor for NRNameConfiguration(0);
  v1[3] = swift_task_alloc();
  sub_25AEA2368();
  v1[4] = sub_25AEA2358();
  v3 = sub_25AEA2348();
  v1[5] = v3;
  v1[6] = v2;

  return MEMORY[0x2822009F8](sub_25AE7C79C, v3, v2);
}

uint64_t sub_25AE7C79C()
{
  sub_25AE7DB6C(v0[3]);
  v1 = v0[2];
  v2 = OBJC_IVAR____TtC15NameRecognition21EnrollmentCoordinator_client;
  v0[7] = OBJC_IVAR____TtC15NameRecognition21EnrollmentCoordinator_client;
  v3 = *(v1 + v2);
  v0[8] = v3;
  v3;
  v4 = swift_task_alloc();
  v0[9] = v4;
  *v4 = v0;
  v4[1] = sub_25AE7C8BC;
  v5 = v0[3];

  return NameRecognitionClient.add(nameConfig:)(v5);
}

uint64_t sub_25AE7C8BC()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  *(*v1 + 80) = v0;

  v4 = *(v2 + 48);
  v5 = *(v2 + 40);
  if (v0)
  {
    v6 = sub_25AE7CF1C;
  }

  else
  {
    v6 = sub_25AE7CA10;
  }

  return MEMORY[0x2822009F8](v6, v5, v4);
}

uint64_t sub_25AE7CA10()
{
  v1 = *(v0[2] + v0[7]);
  v0[11] = v1;
  v2 = v1;

  return MEMORY[0x2822009F8](sub_25AE7CA88, 0, 0);
}

uint64_t sub_25AE7CA88()
{
  sub_25AE6E8FC();
  *(v0 + 96) = v1;
  *(v0 + 120) = 1;
  v2 = swift_task_alloc();
  *(v0 + 104) = v2;
  *v2 = v0;
  v2[1] = sub_25AE7CB38;

  return sub_25AE41F28((v0 + 120), 0);
}

uint64_t sub_25AE7CB38(uint64_t a1)
{
  v3 = *v2;
  *(*v2 + 112) = v1;

  if (v1)
  {

    v4 = sub_25AE7CDB8;
  }

  else
  {
    v5 = *(v3 + 96);

    v4 = sub_25AE7CC70;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_25AE7CC70()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return MEMORY[0x2822009F8](sub_25AE7CCD4, v1, v2);
}

uint64_t sub_25AE7CCD4()
{
  v1 = *(v0 + 24);

  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 122) = 1;

  sub_25AEA1488();
  sub_25AE817B4(v1, type metadata accessor for NRNameConfiguration);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_25AE7CDB8()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return MEMORY[0x2822009F8](sub_25AE7CE1C, v1, v2);
}

uint64_t sub_25AE7CE1C()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 24);

  NRLogError(_:additionalMessage:)(v1, 0, 0);
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 121) = 1;

  sub_25AEA1488();

  sub_25AE817B4(v2, type metadata accessor for NRNameConfiguration);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_25AE7CF1C()
{
  v1 = *(v0 + 24);

  sub_25AE817B4(v1, type metadata accessor for NRNameConfiguration);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_25AE7CFA4()
{
  v1[2] = v0;
  v1[3] = sub_25AEA2368();
  v1[4] = sub_25AEA2358();
  v3 = sub_25AEA2348();
  v1[5] = v3;
  v1[6] = v2;

  return MEMORY[0x2822009F8](sub_25AE7D040, v3, v2);
}

uint64_t sub_25AE7D040()
{
  sub_25AE7EAC8();
  *(v0 + 56) = sub_25AEA2358();
  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  *v1 = v0;
  v1[1] = sub_25AE7D0E4;

  return sub_25AE7C6D8();
}

uint64_t sub_25AE7D0E4()
{
  *(*v1 + 72) = v0;

  v3 = sub_25AEA2348();
  if (v0)
  {
    v4 = sub_25AE7D310;
  }

  else
  {
    v4 = sub_25AE7D240;
  }

  return MEMORY[0x2822009F8](v4, v3, v2);
}

uint64_t sub_25AE7D240()
{

  sub_25AE7B0F0(4);
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return MEMORY[0x2822009F8](sub_25AE7D2B0, v1, v2);
}

uint64_t sub_25AE7D2B0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_25AE7D310()
{

  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return MEMORY[0x2822009F8](sub_25AE7D374, v1, v2);
}

uint64_t sub_25AE7D374()
{
  v1 = *(v0 + 72);

  sub_25AE7B21C();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_25AEA1478((v0 + 80));

  v2 = *(v0 + 80);
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 82) = v2;
  *(v0 + 83) = 2;

  sub_25AEA1488();
  NRLogError(_:additionalMessage:)(v1, 0, 0);

  v3 = *(v0 + 8);

  return v3();
}

void sub_25AE7D49C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_25AEA1478(&v4);

  v1 = v4;
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v4) = v1;
  BYTE1(v4) = 4;

  sub_25AEA1488();
  sub_25AE7B478();
  v2 = *(v0 + OBJC_IVAR____TtC15NameRecognition21EnrollmentCoordinator_audioManager);
  if (v2)
  {
    v3 = v2;
    sub_25AE50794();
  }
}

uint64_t sub_25AE7D65C()
{
  v1 = *(v0[5] + OBJC_IVAR____TtC15NameRecognition21EnrollmentCoordinator_client);
  v0[6] = v1;
  v1;
  v2 = swift_task_alloc();
  v0[7] = v2;
  *v2 = v0;
  v2[1] = sub_25AE7D710;

  return NameRecognitionClient.enrolledNames()();
}

uint64_t sub_25AE7D710(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 64) = v1;

  if (v1)
  {
    v5 = sub_25AE7DAF0;
  }

  else
  {

    *(v4 + 72) = a1;
    v5 = sub_25AE7D840;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_25AE7D840()
{
  sub_25AEA2368();
  *(v0 + 80) = sub_25AEA2358();
  v2 = sub_25AEA2348();

  return MEMORY[0x2822009F8](sub_25AE7D8D4, v2, v1);
}

uint64_t sub_25AE7D8D4()
{
  v1 = *(v0 + 72);

  v2 = *(v1 + 16);

  if (v2)
  {
    if (qword_27FA1D230 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    swift_getKeyPath();
    swift_getKeyPath();

    sub_25AEA1478((v0 + 88));

    if ((*(v0 + 88) & 1) == 0)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      *(v0 + 89) = 1;
      swift_retain_n();
      sub_25AEA1488();
      sub_25AEA2478();
      v3 = MEMORY[0x25F859F80]();
      swift_getKeyPath();
      swift_getKeyPath();
      sub_25AEA1478((v0 + 90));

      [v3 setNameRecognitionEnabled_];
    }

    v4 = *(*(v0 + 40) + OBJC_IVAR____TtC15NameRecognition21EnrollmentCoordinator_dismissEnrollmentFlow);

    v4(v5);
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_25AE7DAF0()
{
  v1 = *(v0 + 64);

  NRLogError(_:additionalMessage:)(v1, 0, 0);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_25AE7DB6C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v62 = a1;
  v90 = *MEMORY[0x277D85DE8];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1DE80, &unk_25AEA6E80);
  MEMORY[0x28223BE20](v3 - 8);
  v86 = v61 - v4;
  v78 = sub_25AEA0E48();
  v5 = *(v78 - 8);
  MEMORY[0x28223BE20](v78);
  v88 = v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for NRCollectedEnrollment(0);
  v75 = *(v7 - 8);
  v76 = v7;
  v8 = MEMORY[0x28223BE20](v7);
  v10 = v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v85 = v61 - v11;
  v12 = type metadata accessor for EnrollmentCoordinator.TempCollectedEnrollment(0);
  v77 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_25AEA0EB8();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = v61 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25AEA0EA8();
  v61[0] = sub_25AEA0E68();
  v63 = v19;
  (*(v16 + 8))(v18, v15);
  v20 = OBJC_IVAR____TtC15NameRecognition21EnrollmentCoordinator_collectedEnrollments;
  swift_beginAccess();
  v61[1] = v2;
  v21 = *(v2 + v20);
  v22 = *(v21 + 16);

  v74 = v22;
  if (v22)
  {
    v23 = 0;
    v68 = (v5 + 16);
    v67 = (v5 + 56);
    v66 = (v5 + 32);
    v24 = MEMORY[0x277D84F90];
    v65 = xmmword_25AEA5200;
    v73 = v5;
    v69 = v21;
    v72 = v14;
    v71 = v10;
    v70 = v12;
    while (1)
    {
      if (v23 >= *(v21 + 16))
      {
        __break(1u);
      }

      sub_25AE8174C(v21 + ((*(v77 + 80) + 32) & ~*(v77 + 80)) + *(v77 + 72) * v23, v14, type metadata accessor for EnrollmentCoordinator.TempCollectedEnrollment);
      v25 = [*&v14[*(v12 + 20)] audioBufferList];
      v26 = v25[2];
      if (!v26)
      {
        break;
      }

      v27 = *(v25 + 3);
      v87 = v24;
      v84 = v23;
      if (v27)
      {
        if (v27 <= 0xE)
        {
          *(&__dst + 6) = 0;
          *&__dst = 0;
          BYTE14(__dst) = v27;
          memcpy(&__dst, v26, v27);
          v83 = __dst;
          v30 = v64 & 0xF00000000000000 | DWORD2(__dst) | ((WORD6(__dst) | (BYTE14(__dst) << 16)) << 32);
          v64 = v30;
        }

        else
        {
          sub_25AEA0C88();
          swift_allocObject();
          v28 = sub_25AEA0C48();
          v29 = v28;
          if (v27 >= 0x7FFFFFFF)
          {
            sub_25AEA0DC8();
            v31 = swift_allocObject();
            *(v31 + 16) = 0;
            *(v31 + 24) = v27;
            v83 = v31;
            v30 = v29 | 0x8000000000000000;
          }

          else
          {
            v83 = v27 << 32;
            v30 = v28 | 0x4000000000000000;
          }
        }
      }

      else
      {
        v83 = 0;
        v30 = 0xC000000000000000;
      }

      v82 = v30;
      v32 = v78;
      (*v68)(v88, v14, v78);
      v33 = &v14[*(v12 + 24)];
      v34 = *v33;
      v80 = *(v33 + 1);
      v81 = v34;
      v35 = type metadata accessor for NRNameConfiguration(0);
      v36 = *(*(v35 - 8) + 56);
      v36(v86, 1, 1, v35);

      v37 = v85;
      sub_25AEA0E38();
      v38 = *v67;
      (*v67)(v37, 0, 1, v32);
      v39 = v76;
      v40 = (v37 + *(v76 + 20));
      v41 = v37 + *(v76 + 24);
      *v41 = v65;
      v79 = *(v39 + 28);
      v36(v37 + v79, 1, 1, v35);
      sub_25AE41938(v37, &qword_27FA1D380, &unk_25AEA3E80);
      (*v66)(v37, v88, v32);
      v38(v37, 0, 1, v32);
      v42 = v80;
      *v40 = v81;
      v40[1] = v42;
      sub_25AE623AC(*v41, *(v41 + 8));
      v43 = v82;
      *v41 = v83;
      *(v41 + 8) = v43;
      sub_25AE62498(v86, v37 + v79, &qword_27FA1DE80, &unk_25AEA6E80);
      v44 = v37;
      v45 = v71;
      sub_25AE8174C(v44, v71, type metadata accessor for NRCollectedEnrollment);
      v24 = v87;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v24 = sub_25AE5B7F4(0, v24[2] + 1, 1, v24);
      }

      v5 = v73;
      v46 = v84;
      v48 = v24[2];
      v47 = v24[3];
      v14 = v72;
      v12 = v70;
      if (v48 >= v47 >> 1)
      {
        v24 = sub_25AE5B7F4((v47 > 1), v48 + 1, 1, v24);
      }

      v23 = v46 + 1;
      sub_25AE817B4(v14, type metadata accessor for EnrollmentCoordinator.TempCollectedEnrollment);
      v24[2] = v48 + 1;
      sub_25AE8181C(v45, v24 + ((*(v75 + 80) + 32) & ~*(v75 + 80)) + *(v75 + 72) * v48, type metadata accessor for NRCollectedEnrollment);
      sub_25AE817B4(v85, type metadata accessor for NRCollectedEnrollment);
      v21 = v69;
      if (v74 == v23)
      {
        goto LABEL_19;
      }
    }

    sub_25AE426AC();
    swift_allocError();
    *v60 = 5;
    *(v60 + 8) = 0xD00000000000001DLL;
    *(v60 + 16) = 0x800000025AEA9B10;
    swift_willThrow();
    sub_25AE817B4(v14, type metadata accessor for EnrollmentCoordinator.TempCollectedEnrollment);
  }

  else
  {
    v24 = MEMORY[0x277D84F90];
LABEL_19:
    v87 = v24;

    swift_getKeyPath();
    swift_getKeyPath();
    sub_25AEA1478(&__dst);

    v85 = *(&__dst + 1);
    v86 = __dst;
    v49 = v88;
    sub_25AEA0E38();
    v50 = v62;
    sub_25AEA0E38();
    v51 = *(v5 + 56);
    v52 = v78;
    v51(v50, 0, 1, v78);
    v53 = type metadata accessor for NRNameConfiguration(0);
    v54 = (v50 + v53[5]);
    v55 = (v50 + v53[6]);
    v56 = v53[7];
    sub_25AE41938(v50, &qword_27FA1D380, &unk_25AEA3E80);
    (*(v5 + 32))(v50, v49, v52);
    result = (v51)(v50, 0, 1, v52);
    v58 = v85;
    *v54 = v86;
    v54[1] = v58;
    v59 = v63;
    *v55 = v61[0];
    v55[1] = v59;
    *(v50 + v56) = v87;
  }

  return result;
}

uint64_t sub_25AE7E508()
{
  v1 = *(v0[2] + OBJC_IVAR____TtC15NameRecognition21EnrollmentCoordinator_client);
  v0[3] = v1;
  v1;
  v2 = swift_task_alloc();
  v0[4] = v2;
  *v2 = v0;
  v2[1] = sub_25AE7E5BC;

  return NameRecognitionClient.enrolledNames()();
}

uint64_t sub_25AE7E5BC(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 40) = a1;
  *(v3 + 48) = v1;

  if (v1)
  {
    v4 = sub_25AE7E78C;
  }

  else
  {

    v4 = sub_25AE7E6D8;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_25AE7E6D8()
{
  v1 = v0[5];
  if (*(v1 + 16))
  {
    v2 = v0[2];
    v5 = MEMORY[0x277D84FA0];
    sub_25AE79678(v1);

    *(v2 + OBJC_IVAR____TtC15NameRecognition21EnrollmentCoordinator_currentEnrolledNames) = v5;
  }

  v3 = v0[1];

  return v3();
}

uint64_t sub_25AE7E78C()
{
  v1 = *(v0 + 48);

  NRLogError(_:additionalMessage:)(v1, 0, 0);
  v2 = *(v0 + 8);

  return v2();
}

char *sub_25AE7E808(void *a1)
{
  if ([a1 floatChannelData])
  {
    v4 = a1;
  }

  else
  {
    v16 = v1;
    v10 = a1;
    v17 = sub_25AE65170();
    if (v2)
    {
      return v10;
    }

    v4 = v17;
    v1 = v16;
  }

  v5 = [v4 recordingMagnitudesWithLevelMultiplier:*(v1 + OBJC_IVAR____TtC15NameRecognition21EnrollmentCoordinator_numberOfSamples) count:10.0];
  if (!v5 || (v6 = v5, sub_25AE4167C(0, &qword_27FA1D5F8, 0x277CCABB0), v7 = sub_25AEA22F8(), v6, !v7))
  {
LABEL_29:

    return MEMORY[0x277D84F90];
  }

  v25 = v7;
  if (v7 >> 62)
  {
    if (sub_25AEA25B8() < 4)
    {
      goto LABEL_28;
    }

    if (sub_25AEA25B8() < 3)
    {
      __break(1u);
      goto LABEL_28;
    }
  }

  else if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10) <= 3uLL)
  {
    goto LABEL_28;
  }

  sub_25AE813C0(0, 3);
  if (!(v7 >> 62))
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v8)
    {
      goto LABEL_9;
    }

    goto LABEL_28;
  }

  v8 = sub_25AEA25B8();
  if (!v8)
  {
LABEL_28:

    goto LABEL_29;
  }

LABEL_9:
  v24 = MEMORY[0x277D84F90];
  result = sub_25AE8D76C(0, v8 & ~(v8 >> 63), 0);
  if ((v8 & 0x8000000000000000) == 0)
  {
    v10 = v24;
    if ((v25 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v8; ++i)
      {
        MEMORY[0x25F85A1C0](i, v25);
        sub_25AEA23D8();
        v13 = v12;
        swift_unknownObjectRelease();
        v15 = v24[2];
        v14 = v24[3];
        if (v15 >= v14 >> 1)
        {
          sub_25AE8D76C((v14 > 1), v15 + 1, 1);
        }

        v24[2] = v15 + 1;
        *(v24 + v15 + 8) = v13;
      }
    }

    else
    {
      v18 = 32;
      do
      {
        v19 = *(v25 + v18);
        sub_25AEA23D8();
        v21 = v20;

        v23 = v24[2];
        v22 = v24[3];
        if (v23 >= v22 >> 1)
        {
          sub_25AE8D76C((v22 > 1), v23 + 1, 1);
        }

        v24[2] = v23 + 1;
        *(v24 + v23 + 8) = v21;
        v18 += 8;
        --v8;
      }

      while (v8);
    }

    return v10;
  }

  __break(1u);
  return result;
}

uint64_t sub_25AE7EAC8()
{
  v110 = sub_25AEA1178();
  v1 = *(v110 - 8);
  MEMORY[0x28223BE20](v110);
  v89 = &v80 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E668, &qword_25AEA6368);
  v3 = MEMORY[0x28223BE20](v107);
  v80 = &v80 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v6 = &v80 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D3A0, &qword_25AEA6370);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = &v80 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v82 = &v80 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v95 = &v80 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v80 - v16;
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v80 - v19;
  MEMORY[0x28223BE20](v18);
  v113 = &v80 - v21;
  v106 = type metadata accessor for EnrollmentCoordinator.TempCollectedEnrollment(0);
  v99 = *(v106 - 8);
  v22 = MEMORY[0x28223BE20](v106);
  v84 = &v80 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  v85 = &v80 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v92 = &v80 - v27;
  MEMORY[0x28223BE20](v26);
  v29 = &v80 - v28;
  v30 = OBJC_IVAR____TtC15NameRecognition21EnrollmentCoordinator_collectedEnrollments;
  result = swift_beginAccess();
  v88 = v0;
  v32 = *(v0 + v30);
  v98 = v32[2];
  if (!v98)
  {
    v37 = 0;
    v49 = 0;
    goto LABEL_39;
  }

  v91 = v17;
  v86 = v30;
  v81 = v10;
  v33 = 0;
  v83 = (*(v99 + 80) + 32) & ~*(v99 + 80);
  v97 = v32 + v83;
  v105 = (v1 + 104);
  v104 = *MEMORY[0x277D79820];
  v103 = (v1 + 56);
  v34 = (v1 + 48);
  v87 = (v1 + 32);
  v96 = (v1 + 8);
  v35 = v32;
  v102 = (v1 + 48);
  v100 = v29;
  v109 = v20;
  v111 = v32;
  while (1)
  {
    if (v33 >= v35[2])
    {
      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
      return result;
    }

    v108 = *(v99 + 72);
    v112 = v33;
    sub_25AE8174C(&v97[v108 * v33], v29, type metadata accessor for EnrollmentCoordinator.TempCollectedEnrollment);

    v38 = v113;
    sub_25AEA1158();
    v39 = *v105;
    v40 = v110;
    (*v105)(v20, v104, v110);
    v101 = *v103;
    v101(v20, 0, 1, v40);
    v41 = *(v107 + 48);
    sub_25AE479E0(v38, v6, &qword_27FA1D3A0, &qword_25AEA6370);
    sub_25AE479E0(v20, &v6[v41], &qword_27FA1D3A0, &qword_25AEA6370);
    v42 = v29;
    v43 = *v34;
    if ((*v34)(v6, 1, v40) == 1)
    {
      break;
    }

    v44 = v113;
    v45 = v91;
    sub_25AE479E0(v6, v91, &qword_27FA1D3A0, &qword_25AEA6370);
    if (v43(&v6[v41], 1, v40) != 1)
    {
      v93 = v43;
      v94 = v39;
      v46 = &v6[v41];
      v47 = v89;
      (*v87)(v89, v46, v40);
      sub_25AE81704(&qword_27FA1E670, MEMORY[0x277D79830], MEMORY[0x277D79838]);
      v90 = sub_25AEA2168();
      v48 = *v96;
      (*v96)(v47, v40);
      sub_25AE41938(v109, &qword_27FA1D3A0, &qword_25AEA6370);
      sub_25AE41938(v44, &qword_27FA1D3A0, &qword_25AEA6370);
      v29 = v100;
      sub_25AE817B4(v100, type metadata accessor for EnrollmentCoordinator.TempCollectedEnrollment);
      v48(v45, v40);
      result = sub_25AE41938(v6, &qword_27FA1D3A0, &qword_25AEA6370);
      v35 = v111;
      v37 = v112;
      if (v90)
      {
        goto LABEL_15;
      }

      goto LABEL_5;
    }

    sub_25AE41938(v109, &qword_27FA1D3A0, &qword_25AEA6370);
    sub_25AE41938(v44, &qword_27FA1D3A0, &qword_25AEA6370);
    sub_25AE817B4(v100, type metadata accessor for EnrollmentCoordinator.TempCollectedEnrollment);
    (*v96)(v45, v40);
    v37 = v112;
LABEL_4:
    result = sub_25AE41938(v6, &qword_27FA1E668, &qword_25AEA6368);
    v35 = v111;
    v29 = v100;
LABEL_5:
    v33 = v37 + 1;
    v34 = v102;
    v20 = v109;
    if (v98 == v33)
    {
      v37 = v35[2];
      v49 = v37;
      goto LABEL_39;
    }
  }

  sub_25AE41938(v20, &qword_27FA1D3A0, &qword_25AEA6370);
  sub_25AE41938(v113, &qword_27FA1D3A0, &qword_25AEA6370);
  sub_25AE817B4(v42, type metadata accessor for EnrollmentCoordinator.TempCollectedEnrollment);
  v36 = v43(&v6[v41], 1, v40);
  v37 = v112;
  if (v36 != 1)
  {
    goto LABEL_4;
  }

  v93 = v43;
  v94 = v39;
  result = sub_25AE41938(v6, &qword_27FA1D3A0, &qword_25AEA6370);
  v35 = v111;
LABEL_15:
  v49 = v37 + 1;
  v50 = v35[2];
  if (v50 - 1 != v37)
  {
    v51 = &qword_27FA1D3A0;
    v52 = v83 + v108 * v49;
    v53 = v80;
    v54 = v82;
    v55 = v95;
    v56 = v92;
    while (1)
    {
      if (v49 >= v50)
      {
        goto LABEL_41;
      }

      v112 = v52;
      v113 = v49;
      v111 = v35;
      sub_25AE8174C(v35 + v52, v56, type metadata accessor for EnrollmentCoordinator.TempCollectedEnrollment);

      sub_25AEA1158();
      v58 = v54;
      v59 = v54;
      v60 = v110;
      v94(v58, v104, v110);
      v101(v59, 0, 1, v60);
      v61 = *(v107 + 48);
      sub_25AE479E0(v55, v53, v51, &qword_25AEA6370);
      sub_25AE479E0(v59, v53 + v61, v51, &qword_25AEA6370);
      v62 = v51;
      v63 = v93;
      if (v93(v53, 1, v60) == 1)
      {
        sub_25AE41938(v59, v62, &qword_25AEA6370);
        sub_25AE41938(v55, v62, &qword_25AEA6370);
        v64 = v92;
        sub_25AE817B4(v92, type metadata accessor for EnrollmentCoordinator.TempCollectedEnrollment);
        v65 = v63((v53 + v61), 1, v60);
        v56 = v64;
        v51 = v62;
        v54 = v59;
        if (v65 != 1)
        {
          goto LABEL_26;
        }

        result = sub_25AE41938(v53, v62, &qword_25AEA6370);
        v35 = v111;
        v66 = v112;
      }

      else
      {
        v67 = v81;
        sub_25AE479E0(v53, v81, v62, &qword_25AEA6370);
        if (v63((v53 + v61), 1, v60) == 1)
        {
          v68 = v82;
          sub_25AE41938(v82, v62, &qword_25AEA6370);
          v69 = v60;
          sub_25AE41938(v95, v62, &qword_25AEA6370);
          v56 = v92;
          sub_25AE817B4(v92, type metadata accessor for EnrollmentCoordinator.TempCollectedEnrollment);
          v54 = v68;
          (*v96)(v67, v69);
          v51 = v62;
LABEL_26:
          result = sub_25AE41938(v53, &qword_27FA1E668, &qword_25AEA6368);
          v35 = v111;
          v66 = v112;
LABEL_27:
          v57 = v113;
          if (v113 != v37)
          {
            if ((v37 & 0x8000000000000000) != 0)
            {
              goto LABEL_42;
            }

            v70 = v35[2];
            if (v37 >= v70)
            {
              goto LABEL_43;
            }

            v71 = v37 * v108;
            result = sub_25AE8174C(v35 + v83 + v37 * v108, v85, type metadata accessor for EnrollmentCoordinator.TempCollectedEnrollment);
            if (v113 >= v70)
            {
              goto LABEL_44;
            }

            sub_25AE8174C(v35 + v66, v84, type metadata accessor for EnrollmentCoordinator.TempCollectedEnrollment);
            result = swift_isUniquelyReferenced_nonNull_native();
            v72 = v88;
            *(v88 + v86) = v35;
            if ((result & 1) == 0)
            {
              result = sub_25AE80F78(v35);
              v35 = result;
              *(v72 + v86) = result;
            }

            v56 = v92;
            if (v37 >= v35[2])
            {
              goto LABEL_45;
            }

            v73 = v51;
            result = sub_25AE816A0(v84, v35 + v83 + v71);
            v74 = v86;
            v75 = v88;
            *(v88 + v86) = v35;
            if (v113 >= v35[2])
            {
              goto LABEL_46;
            }

            result = sub_25AE816A0(v85, v35 + v66);
            v57 = v113;
            *(v75 + v74) = v35;
            v51 = v73;
          }

          v55 = v95;
          ++v37;
          goto LABEL_19;
        }

        v76 = v89;
        (*v87)(v89, (v53 + v61), v60);
        sub_25AE81704(&qword_27FA1E670, MEMORY[0x277D79830], MEMORY[0x277D79838]);
        v77 = sub_25AEA2168();
        v53 = v80;
        LODWORD(v109) = v77;
        v78 = *v96;
        (*v96)(v76, v60);
        v79 = v82;
        sub_25AE41938(v82, v62, &qword_25AEA6370);
        sub_25AE41938(v95, v62, &qword_25AEA6370);
        v56 = v92;
        sub_25AE817B4(v92, type metadata accessor for EnrollmentCoordinator.TempCollectedEnrollment);
        v54 = v79;
        v78(v67, v110);
        result = sub_25AE41938(v53, v62, &qword_25AEA6370);
        v51 = v62;
        v35 = v111;
        v66 = v112;
        if ((v109 & 1) == 0)
        {
          goto LABEL_27;
        }
      }

      v55 = v95;
      v57 = v113;
LABEL_19:
      v49 = v57 + 1;
      v50 = v35[2];
      v52 = v66 + v108;
      if (v49 == v50)
      {
        if (v49 < v37)
        {
          goto LABEL_47;
        }

        break;
      }
    }
  }

LABEL_39:
  sub_25AE815E0(v37, v49);
  return swift_endAccess();
}

void sub_25AE7F854()
{
  v1 = OBJC_IVAR____TtC15NameRecognition21EnrollmentCoordinator_audioManager;
  if (!*(v0 + OBJC_IVAR____TtC15NameRecognition21EnrollmentCoordinator_audioManager))
  {
    v2 = [objc_allocWithZone(type metadata accessor for AudioManager(0)) init];
    v3 = *(v0 + v1);
    *(v0 + v1) = v2;
    v4 = v2;

    sub_25AE79B04();
    v5 = *(v0 + v1);
    if (v5)
    {
      *(v5 + OBJC_IVAR____TtC15NameRecognition12AudioManager_delegate + 8) = &off_286C3E940;

      swift_unknownObjectWeakAssign();
    }
  }
}

uint64_t sub_25AE7F904(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_25AEA20C8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_25AEA20E8();
  v22 = *(v10 - 8);
  v23 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_25AE7E808(a1);
  v19[0] = a1;
  v19[1] = a2;
  sub_25AE4167C(0, &qword_27FA1D900, 0x277D85C78);
  v21 = sub_25AEA24C8();
  v14 = swift_allocObject();
  *(v14 + 16) = v2;
  *(v14 + 24) = v13;
  v27 = sub_25AE812A0;
  v28 = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_25AE93330;
  v26 = &block_descriptor_129;
  v20 = _Block_copy(aBlock);

  sub_25AEA20D8();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_25AE81704(&qword_27FA1D908, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D910, &qword_25AEA4DA0);
  sub_25AE47F60(&qword_27FA1D918, &qword_27FA1D910, &qword_25AEA4DA0, MEMORY[0x277D83970]);
  sub_25AEA2578();
  v15 = v20;
  v16 = v21;
  MEMORY[0x25F859FF0](0, v12, v9, v20);
  _Block_release(v15);

  (*(v7 + 8))(v9, v6);
  (*(v22 + 8))(v12, v23);
  v17 = OBJC_IVAR____TtC15NameRecognition21EnrollmentCoordinator_speechSession;
  swift_beginAccess();
  sub_25AE479E0(v3 + v17, aBlock, &qword_27FA1E660, &qword_25AEA6318);
  if (!v26)
  {
    return sub_25AE41938(aBlock, &qword_27FA1E660, &qword_25AEA6318);
  }

  sub_25AE81178(aBlock, v24);
  sub_25AE41938(aBlock, &qword_27FA1E660, &qword_25AEA6318);
  __swift_project_boxed_opaque_existential_0(v24, v24[3]);
  sub_25AEA11B8();
  return __swift_destroy_boxed_opaque_existential_0(v24);
}

void sub_25AE7FCE0(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_25AEA1498();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_25AE7FD2C(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_25AEA1498();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_25AE7FD80(uint64_t a1)
{
  if (!qword_27FA1E638)
  {
    type metadata accessor for EnrollmentCoordinator.TempCollectedEnrollment(255);
    v1 = sub_25AEA2538();
    if (!v2)
    {
      atomic_store(v1, &qword_27FA1E638);
    }
  }
}

uint64_t sub_25AE7FDF8(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25AE7FE44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_25AEA0E48();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_25AE7FF14(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_25AEA0E48();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_25AE7FFCC(uint64_t a1)
{
  result = sub_25AEA0E48();
  if (v2 <= 0x3F)
  {
    result = sub_25AE4167C(319, qword_27FA1DFB0, 0x277CB83C8);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for EnrollmentCoordinator.NavigationStage(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for EnrollmentCoordinator.NavigationStage(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_25AE801FC(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_25AEA1488();
}

uint64_t sub_25AE80278@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for EnrollmentCoordinator(0);
  result = sub_25AEA1428();
  *a2 = result;
  return result;
}

uint64_t sub_25AE802BC(uint64_t a1)
{
  v2 = sub_25AEA20C8();
  v15 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_25AEA20E8();
  v5 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25AE4167C(0, &qword_27FA1D900, 0x277D85C78);
  v8 = sub_25AEA24C8();
  v9 = swift_allocObject();
  swift_weakInit();
  sub_25AE81178(a1, v17);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  sub_25AE8121C(v17, v10 + 24);
  aBlock[4] = sub_25AE81234;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_25AE93330;
  aBlock[3] = &block_descriptor_6;
  v11 = _Block_copy(aBlock);

  sub_25AEA20D8();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_25AE81704(&qword_27FA1D908, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D910, &qword_25AEA4DA0);
  sub_25AE47F60(&qword_27FA1D918, &qword_27FA1D910, &qword_25AEA4DA0, MEMORY[0x277D83970]);
  sub_25AEA2578();
  MEMORY[0x25F859FF0](0, v7, v4, v11);
  _Block_release(v11);

  (*(v15 + 8))(v4, v2);
  return (*(v5 + 8))(v7, v14);
}

uint64_t sub_25AE805EC(uint64_t a1, void *a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_25AE8064C(a2);
  }

  return result;
}

uint64_t sub_25AE8064C(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1DD00, &qword_25AEA4E48);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v34 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v3);
  v33 = &v31 - v6;
  MEMORY[0x28223BE20](v5);
  v32 = &v31 - v7;
  v8 = sub_25AEA1148();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v31 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v31 - v16;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_25AEA11C8();
  v18 = *(v9 + 16);
  v18(v15, v17, v8);
  v35 = v9;
  v19 = *(v9 + 88);
  if (v19(v15, v8) == *MEMORY[0x277D79800])
  {
    sub_25AE7B478();
    __swift_project_boxed_opaque_existential_0(a1, a1[3]);
    v25 = sub_25AEA11A8();
    sub_25AE7C200(v25);

    v26 = v17;
  }

  else
  {
    v18(v12, v17, v8);
    v20 = v19(v12, v8);
    if (v20 == *MEMORY[0x277D79808] || v20 == *MEMORY[0x277D79810] || v20 == *MEMORY[0x277D797F8])
    {
      sub_25AE7B21C();
      swift_getKeyPath();
      swift_getKeyPath();
      sub_25AEA1478(&v36);

      v23 = v36;
      swift_getKeyPath();
      swift_getKeyPath();
      LOBYTE(v36) = v23;
      BYTE1(v36) = 5;

      sub_25AEA1488();
      (*(v35 + 8))(v15, v8);
    }

    else
    {
      v24 = *(v35 + 8);
      v24(v12, v8);
      v24(v15, v8);
    }

    v26 = v17;
  }

  v31 = v26;
  v27 = v32;
  (v18)(v32);
  v28 = v35;
  (*(v35 + 56))(v27, 0, 1, v8);
  v29 = v33;
  sub_25AE479E0(v27, v33, &qword_27FA1DD00, &qword_25AEA4E48);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_25AE479E0(v29, v34, &qword_27FA1DD00, &qword_25AEA4E48);

  sub_25AEA1488();
  sub_25AE41938(v29, &qword_27FA1DD00, &qword_25AEA4E48);
  sub_25AE41938(v27, &qword_27FA1DD00, &qword_25AEA4E48);
  return (*(v28 + 8))(v31, v8);
}

uint64_t sub_25AE80BA0(void *a1)
{
  NRLogError(_:additionalMessage:)(a1, 0, 0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_25AEA1478(&v2);

  swift_getKeyPath();
  swift_getKeyPath();

  return sub_25AEA1488();
}

unint64_t sub_25AE80C78()
{
  result = qword_27FA1E658;
  if (!qword_27FA1E658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA1E658);
  }

  return result;
}

uint64_t sub_25AE80CCC@<X0>(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_25AEA1478(&v4);

  *a2 = v4;
  return result;
}

uint64_t sub_25AE80D4C(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_25AEA1488();
}

uint64_t sub_25AE80DC8@<X0>(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_25AEA1478(&v4);

  *a2 = v4;
  return result;
}

uint64_t sub_25AE80E48(char *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_25AEA1488();
}

unint64_t sub_25AE80EBC(uint64_t a1, char a2)
{
  v4 = *v2;
  isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v2 = v4;
  if ((isUniquelyReferenced_nonNull_bridgeObject & 1) == 0 || (result = 0, (v4 & 0x8000000000000000) != 0) || (v4 & 0x4000000000000000) != 0 || a1 > *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    if (v4 >> 62)
    {
      sub_25AEA25B8();
    }

    result = sub_25AEA26B8();
    *v2 = result;
  }

  return result;
}

void sub_25AE80F8C()
{
  if (qword_27FA1D230 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  swift_getKeyPath();
  swift_getKeyPath();

  sub_25AEA1478(v1);

  if (LOBYTE(v1[0]) == 1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v1[0]) = 0;
    swift_retain_n();
    sub_25AEA1488();
    sub_25AEA2478();
    v0 = MEMORY[0x25F859F80]();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_25AEA1478(v1);

    [v0 setNameRecognitionEnabled_];
  }
}

uint64_t sub_25AE81140()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_25AE81178(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_25AE811DC()
{

  __swift_destroy_boxed_opaque_existential_0((v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_25AE8121C(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_25AE81260()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_25AE812B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v3 = a3;
  v6 = a2;
  v10 = *v4;
  v4 = (*v4 & 0xFFFFFFFFFFFFFF8);
  v7 = v4 + 4;
  v5 = &v4[a1 + 4];
  sub_25AE4167C(0, &qword_27FA1D5F8, 0x277CCABB0);
  result = swift_arrayDestroy();
  v12 = __OFSUB__(v3, v9);
  v9 = v3 - v9;
  if (v12)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v9)
  {
    goto LABEL_17;
  }

  v8 = v10 >> 62;
  if (!(v10 >> 62))
  {
    result = v4[2];
    v13 = result - v6;
    if (!__OFSUB__(result, v6))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = sub_25AEA25B8();
  v13 = result - v6;
  if (__OFSUB__(result, v6))
  {
    goto LABEL_23;
  }

LABEL_6:
  v14 = (v5 + 8 * v3);
  v15 = &v7[v6];
  if (v14 != v15 || v14 >= &v15[8 * v13])
  {
    memmove(v14, v15, 8 * v13);
  }

  if (v8)
  {
    result = sub_25AEA25B8();
  }

  else
  {
    result = v4[2];
  }

  if (__OFADD__(result, v9))
  {
    goto LABEL_24;
  }

  v4[2] = result + v9;
LABEL_17:
  if (v3 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_25AE813C0(uint64_t a1, uint64_t a2)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = a2;
    v5 = a1;
    v6 = *v4;
    v7 = *v4 >> 62;
    if (!v7)
    {
      result = *((*v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = sub_25AEA25B8();
  if (result < v3)
  {
    goto LABEL_15;
  }

LABEL_4:
  if (__OFSUB__(v3, v5))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v9 = v5 - v3;
  if (__OFSUB__(0, v3 - v5))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v7)
  {
    v10 = sub_25AEA25B8();
  }

  else
  {
    v10 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v11 = __OFADD__(v10, v9);
  result = v10 + v9;
  if (v11)
  {
    goto LABEL_18;
  }

  sub_25AE80EBC(result, 1);

  return sub_25AE812B0(v5, v3, 0);
}

unint64_t sub_25AE81498(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  result = type metadata accessor for EnrollmentCoordinator.TempCollectedEnrollment(0);
  v10 = *(*(result - 8) + 72);
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_19;
  }

  v9 = *(*(result - 8) + 80);
  v12 = v7 + ((v9 + 32) & ~v9);
  v13 = v12 + v10 * a1;
  result = swift_arrayDestroy();
  v14 = a3 - v11;
  if (__OFSUB__(a3, v11))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v15 = v10 * a3;
  if (v14)
  {
    v16 = *(v7 + 16);
    if (!__OFSUB__(v16, a2))
    {
      result = v13 + v15;
      v17 = v12 + v10 * a2;
      if (v13 + v15 < v17 || result >= v17 + (v16 - a2) * v10)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v17)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v19 = *(v7 + 16);
      v20 = __OFADD__(v19, v14);
      v21 = v19 + v14;
      if (!v20)
      {
        *(v7 + 16) = v21;
        goto LABEL_15;
      }

LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      return result;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

LABEL_15:
  if (a3 >= 1 && v15 > 0)
  {
    goto LABEL_22;
  }

  return result;
}

unint64_t sub_25AE815E0(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = *v2;
  v5 = *(*v2 + 16);
  if (v5 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v5 + v7;
  if (__OFADD__(v5, v7))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!isUniquelyReferenced_nonNull_native || v8 > v4[3] >> 1)
  {
    if (v5 <= v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = v5;
    }

    v4 = sub_25AE5B81C(isUniquelyReferenced_nonNull_native, v10, 1, v4);
    *v2 = v4;
  }

  result = sub_25AE81498(v6, a2, 0);
  *v2 = v4;
  return result;
}

uint64_t sub_25AE816A0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EnrollmentCoordinator.TempCollectedEnrollment(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_25AE81704(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_25AE8174C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_25AE817B4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_25AE8181C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_25AE81888()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_25AE47200;

  return sub_25AE7C648();
}

uint64_t sub_25AE819F4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_25AE47200;

  return sub_25AE7E4E8(a1, v4, v5, v6);
}

uint64_t NameRecognitionError.errorDescription.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = RuntimeError.description.getter();
  MEMORY[0x25F859D40](v3);

  MEMORY[0x25F859D40](2108704, 0xE300000000000000);
  MEMORY[0x25F859D40](v1, v2);
  return 546086370;
}

uint64_t NameRecognitionError.description.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = RuntimeError.description.getter();
  MEMORY[0x25F859D40](v3);

  MEMORY[0x25F859D40](2108704, 0xE300000000000000);
  MEMORY[0x25F859D40](v1, v2);
  return 546086370;
}

unint64_t RuntimeError.description.getter()
{
  result = 0x6E45206F69647541;
  switch(*v0)
  {
    case 1:
      result = 0xD000000000000010;
      break;
    case 2:
      result = 0x4C20656369766544;
      break;
    case 3:
      result = 0xD00000000000001ELL;
      break;
    case 4:
      result = 0xD000000000000010;
      break;
    case 5:
      v2 = 5;
      goto LABEL_12;
    case 6:
      result = 0xD000000000000017;
      break;
    case 7:
      result = 0xD000000000000016;
      break;
    case 8:
      result = 0x6F72724520435049;
      break;
    case 9:
      result = 0x52206F7420706154;
      break;
    case 0xA:
      result = 0x6E614D20656C6946;
      break;
    case 0xB:
      v2 = 9;
LABEL_12:
      result = v2 | 0xD000000000000010;
      break;
    case 0xC:
      result = 0x6974616D6F747541;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_25AE81DA8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x45656D69746E7572;
  v4 = 0xEC000000726F7272;
  if (v2 != 1)
  {
    v3 = 0x6567617373656DLL;
    v4 = 0xE700000000000000;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x79745F726F727265;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xEA00000000006570;
  }

  v7 = 0x45656D69746E7572;
  v8 = 0xEC000000726F7272;
  if (*a2 != 1)
  {
    v7 = 0x6567617373656DLL;
    v8 = 0xE700000000000000;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x79745F726F727265;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xEA00000000006570;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_25AEA2828();
  }

  return v11 & 1;
}

uint64_t sub_25AE81EBC()
{
  sub_25AEA28B8();
  sub_25AEA21F8();

  return sub_25AEA28D8();
}

uint64_t sub_25AE81F6C(uint64_t a1)
{
  sub_25AEA21F8();
}

uint64_t sub_25AE82008(uint64_t a1)
{
  sub_25AEA28B8();
  sub_25AEA21F8();

  return sub_25AEA28D8();
}

unint64_t sub_25AE820B4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_25AE82D9C(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_25AE820E4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEA00000000006570;
  v4 = 0xEC000000726F7272;
  v5 = 0x45656D69746E7572;
  if (v2 != 1)
  {
    v5 = 0x6567617373656DLL;
    v4 = 0xE700000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x79745F726F727265;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_25AE82150()
{
  v1 = 0x45656D69746E7572;
  if (*v0 != 1)
  {
    v1 = 0x6567617373656DLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x79745F726F727265;
  }
}

unint64_t sub_25AE821B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_25AE82D9C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_25AE821E0(uint64_t a1)
{
  v2 = sub_25AE828D8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25AE8221C(uint64_t a1)
{
  v2 = sub_25AE828D8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t NameRecognitionError.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E6B0, &qword_25AEA65A0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v17 - v7;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_25AE828D8();
  sub_25AEA28E8();
  if (!v2)
  {
    v22 = 0;
    if (sub_25AEA27B8() == 0x656D69746E7572 && v9 == 0xE700000000000000)
    {
    }

    else
    {
      v11 = sub_25AEA2828();

      if ((v11 & 1) == 0)
      {
        v21 = 0;
        sub_25AEA26D8();
        swift_allocError();
        sub_25AE8292C();
        sub_25AEA26C8();
        swift_willThrow();
        (*(v6 + 8))(v8, v5);
        return __swift_destroy_boxed_opaque_existential_0(a1);
      }
    }

    v19 = 1;
    sub_25AE82990();
    sub_25AEA27C8();
    v12 = v20;
    v18 = 2;
    v14 = sub_25AEA27B8();
    v16 = v15;
    (*(v6 + 8))(v8, v5);
    *a2 = v12;
    *(a2 + 8) = v14;
    *(a2 + 16) = v16;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t NameRecognitionError.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E6D0, &qword_25AEA65A8);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v9 - v6;
  v10 = *v1;
  v9[1] = *(v1 + 1);
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_25AE828D8();
  sub_25AEA28F8();
  v14 = 0;
  sub_25AEA27D8();
  if (!v2)
  {
    v13 = v10;
    v12 = 1;
    sub_25AE829E4();
    sub_25AEA27E8();
    v11 = 2;
    sub_25AEA27D8();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_25AE826C4()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = RuntimeError.description.getter();
  MEMORY[0x25F859D40](v3);

  MEMORY[0x25F859D40](2108704, 0xE300000000000000);
  MEMORY[0x25F859D40](v1, v2);
  return 546086370;
}

NameRecognition::RuntimeError_optional __swiftcall RuntimeError.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 13;
  if (rawValue < 0xD)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_25AE827CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_25AE82DE8();
  v5 = sub_25AE82E3C();

  return MEMORY[0x2821FE2D0](a1, a2, v4, v5);
}

unint64_t sub_25AE828D8()
{
  result = qword_27FA1E6B8;
  if (!qword_27FA1E6B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA1E6B8);
  }

  return result;
}

unint64_t sub_25AE8292C()
{
  result = qword_27FA1E6C0;
  if (!qword_27FA1E6C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA1E6B0, &qword_25AEA65A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA1E6C0);
  }

  return result;
}

unint64_t sub_25AE82990()
{
  result = qword_27FA1E6C8;
  if (!qword_27FA1E6C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA1E6C8);
  }

  return result;
}

unint64_t sub_25AE829E4()
{
  result = qword_27FA1E6D8;
  if (!qword_27FA1E6D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA1E6D8);
  }

  return result;
}

unint64_t sub_25AE82A40()
{
  result = qword_27FA1E6E0;
  if (!qword_27FA1E6E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA1E6E0);
  }

  return result;
}

uint64_t sub_25AE82A94(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_25AE82ADC(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t getEnumTagSinglePayload for RuntimeError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF4)
  {
    goto LABEL_17;
  }

  if (a2 + 12 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 12) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 12;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 12;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 12;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xD;
  v8 = v6 - 13;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for RuntimeError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 12 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 12) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF4)
  {
    v4 = 0;
  }

  if (a2 > 0xF3)
  {
    v5 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 12;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_25AE82C98()
{
  result = qword_27FA1E6E8;
  if (!qword_27FA1E6E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA1E6E8);
  }

  return result;
}

unint64_t sub_25AE82CF0()
{
  result = qword_27FA1E6F0;
  if (!qword_27FA1E6F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA1E6F0);
  }

  return result;
}

unint64_t sub_25AE82D48()
{
  result = qword_27FA1E6F8;
  if (!qword_27FA1E6F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA1E6F8);
  }

  return result;
}

unint64_t sub_25AE82D9C(uint64_t a1, uint64_t a2)
{
  v2 = sub_25AEA2798();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_25AE82DE8()
{
  result = qword_27FA1E700;
  if (!qword_27FA1E700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA1E700);
  }

  return result;
}

unint64_t sub_25AE82E3C()
{
  result = qword_27FA1E708;
  if (!qword_27FA1E708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA1E708);
  }

  return result;
}

uint64_t sub_25AE82E98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E9B0, &qword_25AEA5C40);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_25AE479E0(a3, v25 - v10, &qword_27FA1E9B0, &qword_25AEA5C40);
  v12 = sub_25AEA2388();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_25AE41938(v11, &qword_27FA1E9B0, &qword_25AEA5C40);
  }

  else
  {
    sub_25AEA2378();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_25AEA2348();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_25AEA21E8() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_25AE41938(a3, &qword_27FA1E9B0, &qword_25AEA5C40);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_25AE41938(a3, &qword_27FA1E9B0, &qword_25AEA5C40);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_25AE83198(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E9B0, &qword_25AEA5C40);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_25AE479E0(a3, v25 - v10, &qword_27FA1E9B0, &qword_25AEA5C40);
  v12 = sub_25AEA2388();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_25AE41938(v11, &qword_27FA1E9B0, &qword_25AEA5C40);
  }

  else
  {
    sub_25AEA2378();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_25AEA2348();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_25AEA21E8() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E7E0, &qword_25AEA6E00);
      v21 = (v18 | v16);
      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v22 = swift_task_create();

      sub_25AE41938(a3, &qword_27FA1E9B0, &qword_25AEA5C40);

      return v22;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_25AE41938(a3, &qword_27FA1E9B0, &qword_25AEA5C40);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E7E0, &qword_25AEA6E00);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t NameRecognitionSettingsViewModel.__allocating_init()()
{
  v0 = swift_allocObject();
  NameRecognitionSettingsViewModel.init()();
  return v0;
}

uint64_t sub_25AE834E4@<X0>(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_25AEA1478(&v4);

  *a2 = v4;
  return result;
}

uint64_t sub_25AE83564(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_25AEA1488();
}

uint64_t sub_25AE835E0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_25AEA1478(&v1);

  return v1;
}

uint64_t sub_25AE83654(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_25AEA1488();
}

uint64_t (*sub_25AE836C4(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_25AEA1468();
  return sub_25AE8BCEC;
}

uint64_t sub_25AE83768(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E720, &qword_25AEA6A30);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  v10(&v12 - v8, a1, v3);
  v10(v7, v9, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E718, &qword_25AEA6A28);
  sub_25AEA1458();
  swift_endAccess();
  return (*(v4 + 8))(v9, v3);
}

uint64_t sub_25AE83908(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E720, &qword_25AEA6A30);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E718, &qword_25AEA6A28);
  sub_25AEA1458();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*sub_25AE83A40(uint64_t *a1))(uint64_t, char)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E720, &qword_25AEA6A30);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC15NameRecognition32NameRecognitionSettingsViewModel__settings;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E718, &qword_25AEA6A28);
  sub_25AEA1448();
  swift_endAccess();
  return sub_25AE8BCF0;
}

uint64_t (*sub_25AE83BD8(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_25AEA1468();
  return sub_25AE8BCEC;
}

uint64_t sub_25AE83C7C(char *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1DA38, &qword_25AEA4748);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  v10(&v12 - v8, a1, v3);
  v10(v7, v9, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D5F0, &qword_25AEA6570);
  sub_25AEA1458();
  swift_endAccess();
  return (*(v4 + 8))(v9, v3);
}

uint64_t sub_25AE83E1C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1DA38, &qword_25AEA4748);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D5F0, &qword_25AEA6570);
  sub_25AEA1458();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*sub_25AE83F54(uint64_t *a1))(uint64_t, char)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1DA38, &qword_25AEA4748);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC15NameRecognition32NameRecognitionSettingsViewModel__isPresentingOnboarding;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D5F0, &qword_25AEA6570);
  sub_25AEA1448();
  swift_endAccess();
  return sub_25AE8BCF0;
}

uint64_t (*sub_25AE84114(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_25AEA1468();
  return sub_25AE8BCEC;
}

uint64_t sub_25AE841B8(char *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1DA38, &qword_25AEA4748);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  v10(&v12 - v8, a1, v3);
  v10(v7, v9, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D5F0, &qword_25AEA6570);
  sub_25AEA1458();
  swift_endAccess();
  return (*(v4 + 8))(v9, v3);
}

uint64_t sub_25AE84358(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1DA38, &qword_25AEA4748);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D5F0, &qword_25AEA6570);
  sub_25AEA1458();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*sub_25AE84490(uint64_t *a1))(uint64_t, char)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1DA38, &qword_25AEA4748);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC15NameRecognition32NameRecognitionSettingsViewModel__maxEnrollmentsReached;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D5F0, &qword_25AEA6570);
  sub_25AEA1448();
  swift_endAccess();
  return sub_25AE8BCF0;
}

uint64_t (*sub_25AE84650(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_25AEA1468();
  return sub_25AE8BCEC;
}

uint64_t sub_25AE846F4(char *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1DA38, &qword_25AEA4748);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  v10(&v12 - v8, a1, v3);
  v10(v7, v9, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D5F0, &qword_25AEA6570);
  sub_25AEA1458();
  swift_endAccess();
  return (*(v4 + 8))(v9, v3);
}

uint64_t sub_25AE84894(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1DA38, &qword_25AEA4748);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D5F0, &qword_25AEA6570);
  sub_25AEA1458();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*sub_25AE849CC(uint64_t *a1))(uint64_t, char)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1DA38, &qword_25AEA4748);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC15NameRecognition32NameRecognitionSettingsViewModel__hasEnrolledNames;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D5F0, &qword_25AEA6570);
  sub_25AEA1448();
  swift_endAccess();
  return sub_25AE8BCF0;
}

uint64_t (*sub_25AE84B64(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_25AEA1468();
  return sub_25AE84C08;
}

uint64_t sub_25AE84C0C(char *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1DA38, &qword_25AEA4748);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  v10(&v12 - v8, a1, v3);
  v10(v7, v9, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D5F0, &qword_25AEA6570);
  sub_25AEA1458();
  swift_endAccess();
  return (*(v4 + 8))(v9, v3);
}

uint64_t sub_25AE84DAC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1DA38, &qword_25AEA4748);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D5F0, &qword_25AEA6570);
  sub_25AEA1458();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*sub_25AE84EE4(uint64_t *a1))(uint64_t, char)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1DA38, &qword_25AEA4748);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC15NameRecognition32NameRecognitionSettingsViewModel__shouldShowErrorView;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D5F0, &qword_25AEA6570);
  sub_25AEA1448();
  swift_endAccess();
  return sub_25AE85054;
}

uint64_t sub_25AE85058@<X0>(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_25AEA1478(v5);

  v4 = v5[1];
  *a2 = v5[0];
  a2[1] = v4;
  return result;
}

uint64_t sub_25AE850D8(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_25AEA1488();
}

uint64_t sub_25AE8515C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_25AEA1478(&v1);

  return v1;
}

uint64_t sub_25AE851D0(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_25AEA1488();
}

uint64_t (*sub_25AE8524C(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_25AEA1468();
  return sub_25AE8BCEC;
}

uint64_t sub_25AE852F0(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E758, &qword_25AEA6BA8);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  v10(&v12 - v8, a1, v3);
  v10(v7, v9, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E750, &qword_25AEA6BA0);
  sub_25AEA1458();
  swift_endAccess();
  return (*(v4 + 8))(v9, v3);
}

uint64_t sub_25AE85490(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E758, &qword_25AEA6BA8);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E750, &qword_25AEA6BA0);
  sub_25AEA1458();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*sub_25AE855C8(uint64_t *a1))(uint64_t, char)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E758, &qword_25AEA6BA8);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC15NameRecognition32NameRecognitionSettingsViewModel__currentErrorTitle;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E750, &qword_25AEA6BA0);
  sub_25AEA1448();
  swift_endAccess();
  return sub_25AE8BCF0;
}

double sub_25AE85738@<D0>(double *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_25AEA1478(&v4);

  result = v4;
  *a2 = v4;
  return result;
}

uint64_t sub_25AE857B8(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_25AEA1488();
}

double sub_25AE85834()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_25AEA1478(&v1);

  return v1;
}

uint64_t sub_25AE858A8(double a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_25AEA1488();
}

uint64_t (*sub_25AE85920(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_25AEA1468();
  return sub_25AE8BCEC;
}

uint64_t sub_25AE859C4(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E770, &qword_25AEA6C00);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  v10(&v12 - v8, a1, v3);
  v10(v7, v9, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E768, &qword_25AEA6BF8);
  sub_25AEA1458();
  swift_endAccess();
  return (*(v4 + 8))(v9, v3);
}

uint64_t sub_25AE85B64(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E770, &qword_25AEA6C00);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E768, &qword_25AEA6BF8);
  sub_25AEA1458();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*sub_25AE85C9C(uint64_t *a1))(uint64_t, char)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E770, &qword_25AEA6C00);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC15NameRecognition32NameRecognitionSettingsViewModel__assetDownloadProgress;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E768, &qword_25AEA6BF8);
  sub_25AEA1448();
  swift_endAccess();
  return sub_25AE8BCF0;
}

uint64_t (*sub_25AE85E5C(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_25AEA1468();
  return sub_25AE8BCEC;
}

uint64_t sub_25AE85F00(char *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1DA38, &qword_25AEA4748);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  v10(&v12 - v8, a1, v3);
  v10(v7, v9, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D5F0, &qword_25AEA6570);
  sub_25AEA1458();
  swift_endAccess();
  return (*(v4 + 8))(v9, v3);
}

uint64_t sub_25AE860A0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1DA38, &qword_25AEA4748);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D5F0, &qword_25AEA6570);
  sub_25AEA1458();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*sub_25AE861D8(uint64_t *a1))(uint64_t, char)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1DA38, &qword_25AEA4748);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC15NameRecognition32NameRecognitionSettingsViewModel__shouldShowDownloadProgressView;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D5F0, &qword_25AEA6570);
  sub_25AEA1448();
  swift_endAccess();
  return sub_25AE8BCF0;
}

uint64_t sub_25AE86398(char a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_25AEA1488();
}

uint64_t (*sub_25AE86404(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_25AEA1468();
  return sub_25AE8BCEC;
}

void sub_25AE864A8(void *a1)
{
  v1 = *a1;
  (*(*a1 + 48))(*a1, 0);

  free(v1);
}

uint64_t sub_25AE86510(char *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1DA38, &qword_25AEA4748);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  v10(&v12 - v8, a1, v3);
  v10(v7, v9, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D5F0, &qword_25AEA6570);
  sub_25AEA1458();
  swift_endAccess();
  return (*(v4 + 8))(v9, v3);
}

uint64_t sub_25AE866B0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1DA38, &qword_25AEA4748);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D5F0, &qword_25AEA6570);
  sub_25AEA1458();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*sub_25AE867E8(uint64_t *a1))(uint64_t, char)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1DA38, &qword_25AEA4748);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC15NameRecognition32NameRecognitionSettingsViewModel__assetDownloadDidFail;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D5F0, &qword_25AEA6570);
  sub_25AEA1448();
  swift_endAccess();
  return sub_25AE8BCF0;
}

uint64_t sub_25AE86958@<X0>(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_25AEA1478(&v4);

  *a2 = v4;
  return result;
}

void sub_25AE869D8(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  sub_25AEA1488();
  sub_25AE899EC();
}

uint64_t sub_25AE86A58()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_25AEA1478(&v1);

  return v1;
}

void sub_25AE86ACC(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  sub_25AEA1488();
  sub_25AE899EC();
}

void (*sub_25AE86B40(void *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_25AEA1478(a1 + 1);

  *a1 = a1[1];
  return sub_25AE86BD4;
}

void sub_25AE86BD4(uint64_t *a1, char a2)
{
  v4 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  a1[1] = v4;

  if (a2)
  {

    sub_25AEA1488();
    sub_25AE899EC();
  }

  else
  {
    sub_25AEA1488();
    sub_25AE899EC();
  }
}

uint64_t sub_25AE86CB8(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t *a5, uint64_t *a6)
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  sub_25AEA1448();
  return swift_endAccess();
}

uint64_t sub_25AE86D34(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E798, &qword_25AEA6CE8);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  v10(&v12 - v8, a1, v3);
  v10(v7, v9, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E790, &qword_25AEA6CE0);
  sub_25AEA1458();
  swift_endAccess();
  return (*(v4 + 8))(v9, v3);
}

uint64_t sub_25AE86ED4(void *a1, uint64_t *a2, uint64_t *a3)
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  sub_25AEA1448();
  return swift_endAccess();
}

uint64_t sub_25AE86F4C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E798, &qword_25AEA6CE8);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E790, &qword_25AEA6CE0);
  sub_25AEA1458();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*sub_25AE87084(uint64_t *a1))(uint64_t, char)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E798, &qword_25AEA6CE8);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC15NameRecognition32NameRecognitionSettingsViewModel__enrolledNames;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E790, &qword_25AEA6CE0);
  sub_25AEA1448();
  swift_endAccess();
  return sub_25AE8BCF0;
}

uint64_t sub_25AE871F4(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (*a2 + OBJC_IVAR____TtC15NameRecognition32NameRecognitionSettingsViewModel_language);
  swift_beginAccess();
  *v4 = v3;
  v4[1] = v2;
}

uint64_t sub_25AE87260()
{
  v1 = (v0 + OBJC_IVAR____TtC15NameRecognition32NameRecognitionSettingsViewModel_language);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t sub_25AE872B8(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC15NameRecognition32NameRecognitionSettingsViewModel_language);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

uint64_t NameRecognitionSettingsViewModel.init()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E9B0, &qword_25AEA5C40);
  MEMORY[0x28223BE20](v1 - 8);
  v51 = &v41 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E790, &qword_25AEA6CE0);
  v49 = *(v3 - 8);
  v50 = v3;
  MEMORY[0x28223BE20](v3);
  v48 = &v41 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E768, &qword_25AEA6BF8);
  v46 = *(v5 - 8);
  v47 = v5;
  MEMORY[0x28223BE20](v5);
  v45 = &v41 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E750, &qword_25AEA6BA0);
  v43 = *(v7 - 8);
  v44 = v7;
  MEMORY[0x28223BE20](v7);
  v42 = &v41 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D5F0, &qword_25AEA6570);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v41 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E718, &qword_25AEA6A28);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v41 - v15;
  v17 = OBJC_IVAR____TtC15NameRecognition32NameRecognitionSettingsViewModel__settings;
  if (qword_27FA1D230 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v52 = qword_27FA1DA28;
  type metadata accessor for NRSettings(0);

  sub_25AEA1438();
  (*(v14 + 32))(v0 + v17, v16, v13);
  v18 = OBJC_IVAR____TtC15NameRecognition32NameRecognitionSettingsViewModel__isPresentingOnboarding;
  LOBYTE(v52) = 0;
  sub_25AEA1438();
  v19 = *(v10 + 32);
  v19(v0 + v18, v12, v9);
  v20 = OBJC_IVAR____TtC15NameRecognition32NameRecognitionSettingsViewModel__maxEnrollmentsReached;
  LOBYTE(v52) = 0;
  sub_25AEA1438();
  v19(v0 + v20, v12, v9);
  v21 = OBJC_IVAR____TtC15NameRecognition32NameRecognitionSettingsViewModel__hasEnrolledNames;
  LOBYTE(v52) = 0;
  sub_25AEA1438();
  v19(v0 + v21, v12, v9);
  v22 = OBJC_IVAR____TtC15NameRecognition32NameRecognitionSettingsViewModel__shouldShowErrorView;
  LOBYTE(v52) = 0;
  sub_25AEA1438();
  v19(v0 + v22, v12, v9);
  v23 = OBJC_IVAR____TtC15NameRecognition32NameRecognitionSettingsViewModel__currentErrorTitle;
  v52 = 0;
  v53 = 0xE000000000000000;
  v24 = v42;
  sub_25AEA1438();
  (*(v43 + 32))(v0 + v23, v24, v44);
  v25 = OBJC_IVAR____TtC15NameRecognition32NameRecognitionSettingsViewModel__assetDownloadProgress;
  v52 = 0;
  v26 = v45;
  sub_25AEA1438();
  (*(v46 + 32))(v0 + v25, v26, v47);
  v27 = OBJC_IVAR____TtC15NameRecognition32NameRecognitionSettingsViewModel__shouldShowDownloadProgressView;
  LOBYTE(v52) = 0;
  sub_25AEA1438();
  v19(v0 + v27, v12, v9);
  v28 = OBJC_IVAR____TtC15NameRecognition32NameRecognitionSettingsViewModel__assetDownloadDidFail;
  LOBYTE(v52) = 0;
  sub_25AEA1438();
  v19(v0 + v28, v12, v9);
  v29 = OBJC_IVAR____TtC15NameRecognition32NameRecognitionSettingsViewModel__enrolledNames;
  v52 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E150, &qword_25AEA5848);
  v30 = v48;
  sub_25AEA1438();
  (*(v49 + 32))(v0 + v29, v30, v50);
  v31 = (v0 + OBJC_IVAR____TtC15NameRecognition32NameRecognitionSettingsViewModel_language);
  *v31 = 0;
  v31[1] = 0;
  v32 = OBJC_IVAR____TtC15NameRecognition32NameRecognitionSettingsViewModel_client;
  if (qword_27FA1D278 != -1)
  {
    swift_once();
  }

  v33 = qword_27FA1E140;
  *(v0 + v32) = qword_27FA1E140;
  v34 = OBJC_IVAR____TtC15NameRecognition32NameRecognitionSettingsViewModel_speechHandler;
  v35 = qword_27FA1D290;
  v36 = v33;
  if (v35 != -1)
  {
    swift_once();
  }

  *(v0 + v34) = qword_27FA227A8;
  v37 = sub_25AEA2388();
  v38 = v51;
  (*(*(v37 - 8) + 56))(v51, 1, 1, v37);
  v39 = swift_allocObject();
  v39[2] = 0;
  v39[3] = 0;
  v39[4] = v0;

  sub_25AE82E98(0, 0, v38, &unk_25AEA6CF8, v39);

  return v0;
}

uint64_t sub_25AE87AD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[8] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E7E8, &qword_25AEA6E30);
  v4[9] = swift_task_alloc();
  v5 = sub_25AEA0EB8();
  v4[10] = v5;
  v4[11] = *(v5 - 8);
  v4[12] = swift_task_alloc();
  v4[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25AE87BDC, 0, 0);
}

uint64_t sub_25AE87BDC()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[9];
  v4 = *(v0[8] + OBJC_IVAR____TtC15NameRecognition32NameRecognitionSettingsViewModel_speechHandler);
  v0[14] = v4;
  v5 = OBJC_IVAR____TtC15NameRecognition23LanguageAssetDownloader_currentActiveLocale;
  swift_beginAccess();
  sub_25AE479E0(v4 + v5, v3, &qword_27FA1E7E8, &qword_25AEA6E30);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_25AE41938(v0[9], &qword_27FA1E7E8, &qword_25AEA6E30);
    v6 = swift_task_alloc();
    v0[15] = v6;
    *v6 = v0;
    v6[1] = sub_25AE87E18;
    v7 = v0[12];

    return sub_25AE9756C(v7);
  }

  else
  {
    v9 = *(v0[11] + 32);
    v9(v0[12], v0[9], v0[10]);
    v10 = v0[14];
    v11 = v0[8];
    v9(v0[13], v0[12], v0[10]);
    sub_25AEA0E68();
    v12 = sub_25AEA0E78();
    v14 = v13;

    v15 = (v11 + OBJC_IVAR____TtC15NameRecognition32NameRecognitionSettingsViewModel_language);
    swift_beginAccess();
    *v15 = v12;
    v15[1] = v14;

    *(v10 + 24) = &off_286C3ECC0;
    swift_unknownObjectWeakAssign();
    v16 = swift_task_alloc();
    v0[16] = v16;
    *v16 = v0;
    v16[1] = sub_25AE88038;

    return sub_25AE98864();
  }
}

uint64_t sub_25AE87E18()
{

  return MEMORY[0x2822009F8](sub_25AE87F14, 0, 0);
}

uint64_t sub_25AE87F14()
{
  v1 = v0[14];
  v2 = v0[8];
  (*(v0[11] + 32))(v0[13], v0[12], v0[10]);
  sub_25AEA0E68();
  v3 = sub_25AEA0E78();
  v5 = v4;

  v6 = (v2 + OBJC_IVAR____TtC15NameRecognition32NameRecognitionSettingsViewModel_language);
  swift_beginAccess();
  *v6 = v3;
  v6[1] = v5;

  *(v1 + 24) = &off_286C3ECC0;
  swift_unknownObjectWeakAssign();
  v7 = swift_task_alloc();
  v0[16] = v7;
  *v7 = v0;
  v7[1] = sub_25AE88038;

  return sub_25AE98864();
}

uint64_t sub_25AE88038()
{
  *(*v1 + 136) = v0;

  if (v0)
  {
    v2 = sub_25AE8814C;
  }

  else
  {
    v2 = sub_25AE881C8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_25AE8814C()
{
  v1 = *(v0 + 136);
  NRLogError(_:additionalMessage:)(v1, 0, 0);

  return MEMORY[0x2822009F8](sub_25AE881C8, 0, 0);
}

uint64_t sub_25AE881C8()
{
  (*(v0[11] + 8))(v0[13], v0[10]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_25AE88280()
{
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_25AE8831C;

  return sub_25AE98864();
}

uint64_t sub_25AE8831C()
{
  v2 = *v1;
  *(v2 + 32) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_25AE8BCE8, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_25AE88470()
{
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v1[1] = sub_25AE88510;

  return NameRecognitionClient.enrolledNames()();
}

uint64_t sub_25AE88510(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 48) = v1;

  if (v1)
  {
    v5 = sub_25AE88788;
  }

  else
  {
    *(v4 + 56) = a1;
    v5 = sub_25AE88638;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_25AE88638()
{
  sub_25AEA2368();
  *(v0 + 64) = sub_25AEA2358();
  v2 = sub_25AEA2348();

  return MEMORY[0x2822009F8](sub_25AE886CC, v2, v1);
}

uint64_t sub_25AE886CC()
{
  v1 = v0[7];

  swift_getKeyPath();
  swift_getKeyPath();
  v0[3] = v1;

  sub_25AEA1488();
  sub_25AE899EC();
  v2 = v0[1];

  return v2();
}

uint64_t sub_25AE88788()
{
  NRLogError(_:additionalMessage:)(*(v0 + 48), 0, 0);
  sub_25AEA2368();
  *(v0 + 72) = sub_25AEA2358();
  v2 = sub_25AEA2348();

  return MEMORY[0x2822009F8](sub_25AE8882C, v2, v1);
}

uint64_t sub_25AE8882C()
{

  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 16) = MEMORY[0x277D84F90];

  sub_25AEA1488();
  sub_25AE899EC();

  return MEMORY[0x2822009F8](sub_25AE888F0, 0, 0);
}

uint64_t sub_25AE888F0()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_25AE88950(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E9B0, &qword_25AEA5C40);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v13 - v4;
  v7 = *a1;
  v6 = a1[1];
  v9 = a1[2];
  v8 = a1[3];
  v10 = sub_25AEA2388();
  (*(*(v10 - 8) + 56))(v5, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = v1;
  v11[5] = v7;
  v11[6] = v6;
  v11[7] = v9;
  v11[8] = v8;

  sub_25AE82E98(0, 0, v5, &unk_25AEA5FF8, v11);
}

uint64_t sub_25AE88A8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[11] = a7;
  v8[12] = a8;
  v8[9] = a5;
  v8[10] = a6;
  v8[8] = a4;
  return MEMORY[0x2822009F8](sub_25AE88AB4, 0, 0);
}

uint64_t sub_25AE88AB4()
{
  v1 = swift_task_alloc();
  v0[13] = v1;
  *v1 = v0;
  v1[1] = sub_25AE88B5C;
  v3 = v0[9];
  v2 = v0[10];

  return NameRecognitionClient.deleteName(with:)(v3, v2);
}

uint64_t sub_25AE88B5C()
{
  v2 = *v1;
  *(v2 + 112) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_25AE88DBC, 0, 0);
  }

  else
  {
    v3 = swift_task_alloc();
    *(v2 + 120) = v3;
    *v3 = v2;
    v3[1] = sub_25AE88CC8;

    return sub_25AE88450();
  }
}

uint64_t sub_25AE88CC8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_25AE88DBC()
{
  v2 = *(v0 + 88);
  v1 = *(v0 + 96);
  NRLogError(_:additionalMessage:)(*(v0 + 112), 0, 0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D2C0, &qword_25AEA35C0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_25AEA3540;
  *(v3 + 56) = MEMORY[0x277D837D0];
  *(v3 + 64) = sub_25AE4172C();
  *(v3 + 32) = v2;
  *(v3 + 40) = v1;
  v4 = qword_27FA1D250;

  if (v4 != -1)
  {
    swift_once();
  }

  v5 = qword_27FA22788;
  if (qword_27FA22788)
  {
    v6 = qword_27FA22788;
  }

  else
  {
    v6 = [objc_opt_self() mainBundle];
    v5 = 0;
  }

  v7 = *(v0 + 112);
  v8 = v5;
  sub_25AEA0CC8();

  v9 = sub_25AEA21B8();
  v11 = v10;

  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 48) = v9;
  *(v0 + 56) = v11;

  sub_25AEA1488();
  swift_getKeyPath();
  swift_getKeyPath();
  v12 = sub_25AEA1468();
  *v13 = !*v13;
  v12(v0 + 16, 0);

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_25AE89080()
{
  v1 = swift_task_alloc();
  *(v0 + 88) = v1;
  *v1 = v0;
  v1[1] = sub_25AE89120;

  return NameRecognitionClient.deleteAllNames()();
}

uint64_t sub_25AE89120()
{
  v2 = *v1;
  *(v2 + 96) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_25AE89380, 0, 0);
  }

  else
  {
    v3 = swift_task_alloc();
    *(v2 + 104) = v3;
    *v3 = v2;
    v3[1] = sub_25AE8928C;

    return sub_25AE88450();
  }
}

uint64_t sub_25AE8928C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_25AE89380()
{
  NRLogError(_:additionalMessage:)(*(v0 + 96), 0, 0);
  if (qword_27FA1D250 != -1)
  {
    swift_once();
  }

  v1 = qword_27FA22788;
  if (qword_27FA22788)
  {
    v2 = qword_27FA22788;
  }

  else
  {
    v2 = [objc_opt_self() mainBundle];
    v1 = 0;
  }

  v3 = *(v0 + 96);
  v4 = v1;
  v5 = sub_25AEA0CC8();
  v7 = v6;

  *(v0 + 48) = v5;
  *(v0 + 56) = v7;
  v8 = sub_25AEA2278();
  v10 = v9;
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 64) = v8;
  *(v0 + 72) = v10;

  sub_25AEA1488();
  swift_getKeyPath();
  swift_getKeyPath();
  v11 = sub_25AEA1468();
  *v12 = !*v12;
  v11(v0 + 16, 0);

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_25AE895B8()
{
  swift_getKeyPath();
  swift_getKeyPath();

  sub_25AEA1488();
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_25AEA1488();
}

uint64_t sub_25AE89688(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E9B0, &qword_25AEA5C40);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v10 - v5;
  v7 = sub_25AEA2388();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v2;

  sub_25AE82E98(0, 0, v6, a2, v8);
}

uint64_t sub_25AE897A4()
{
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_25AE89844;

  return NameRecognitionClient.openTapToRadar()();
}

uint64_t sub_25AE89844()
{
  v2 = *v1;
  *(v2 + 32) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_25AE89978, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_25AE89978()
{
  v1 = *(v0 + 32);
  NRLogError(_:additionalMessage:)(v1, 0, 0);

  v2 = *(v0 + 8);

  return v2();
}

void sub_25AE899EC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_25AEA1478(&v3);

  v0 = *(v3 + 16);

  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v3) = v0 == 3;

  sub_25AEA1488();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_25AEA1478(&v3);

  v1 = *(v3 + 16);

  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v3) = v1 != 0;

  sub_25AEA1488();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_25AEA1478(&v3);

  if ((v3 & 1) == 0)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_25AEA1478(&v3);

    swift_getKeyPath();
    swift_getKeyPath();
    sub_25AEA1478(&v3);

    if (v3 == 1)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      sub_25AEA1478(&v3);

      swift_getKeyPath();
      swift_getKeyPath();
      LOBYTE(v3) = 0;

      sub_25AEA1488();
      sub_25AEA2478();
      v2 = MEMORY[0x25F859F80]();
      swift_getKeyPath();
      swift_getKeyPath();
      sub_25AEA1478(&v3);

      [v2 setNameRecognitionEnabled_];
    }
  }
}

uint64_t NameRecognitionSettingsViewModel.deinit()
{
  v1 = OBJC_IVAR____TtC15NameRecognition32NameRecognitionSettingsViewModel__settings;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E718, &qword_25AEA6A28);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC15NameRecognition32NameRecognitionSettingsViewModel__isPresentingOnboarding;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D5F0, &qword_25AEA6570);
  v5 = *(*(v4 - 8) + 8);
  v5(v0 + v3, v4);
  v5(v0 + OBJC_IVAR____TtC15NameRecognition32NameRecognitionSettingsViewModel__maxEnrollmentsReached, v4);
  v5(v0 + OBJC_IVAR____TtC15NameRecognition32NameRecognitionSettingsViewModel__hasEnrolledNames, v4);
  v5(v0 + OBJC_IVAR____TtC15NameRecognition32NameRecognitionSettingsViewModel__shouldShowErrorView, v4);
  v6 = OBJC_IVAR____TtC15NameRecognition32NameRecognitionSettingsViewModel__currentErrorTitle;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E750, &qword_25AEA6BA0);
  (*(*(v7 - 8) + 8))(v0 + v6, v7);
  v8 = OBJC_IVAR____TtC15NameRecognition32NameRecognitionSettingsViewModel__assetDownloadProgress;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E768, &qword_25AEA6BF8);
  (*(*(v9 - 8) + 8))(v0 + v8, v9);
  v5(v0 + OBJC_IVAR____TtC15NameRecognition32NameRecognitionSettingsViewModel__shouldShowDownloadProgressView, v4);
  v5(v0 + OBJC_IVAR____TtC15NameRecognition32NameRecognitionSettingsViewModel__assetDownloadDidFail, v4);
  v10 = OBJC_IVAR____TtC15NameRecognition32NameRecognitionSettingsViewModel__enrolledNames;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E790, &qword_25AEA6CE0);
  (*(*(v11 - 8) + 8))(v0 + v10, v11);

  return v0;
}

uint64_t NameRecognitionSettingsViewModel.__deallocating_deinit()
{
  NameRecognitionSettingsViewModel.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_25AE8A004@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for NameRecognitionSettingsViewModel(0);
  result = sub_25AEA1428();
  *a2 = result;
  return result;
}

uint64_t sub_25AE8A044(unint64_t a1, char a2, __n128 a3)
{
  if (a2)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    sub_25AEA1488();
    swift_getKeyPath();
    swift_getKeyPath();

    return sub_25AEA1488();
  }

  else
  {

    return sub_25AE8A17C(*&a1);
  }
}

uint64_t sub_25AE8A17C(double a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  sub_25AEA1488();
  swift_getKeyPath();
  swift_getKeyPath();

  sub_25AEA1488();
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_25AEA1488();
}

uint64_t sub_25AE8A27C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_25AE4F874;

  return sub_25AE87AD8(a1, v4, v5, v6);
}

uint64_t sub_25AE8A330()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_25AE8A588@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC15NameRecognition32NameRecognitionSettingsViewModel_language);
  swift_beginAccess();
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;
}

uint64_t type metadata accessor for NameRecognitionSettingsViewModel(uint64_t a1)
{
  result = qword_27FA1E7B0;
  if (!qword_27FA1E7B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_25AE8A638(uint64_t a1)
{
  sub_25AE8B5A8(319);
  if (v1 <= 0x3F)
  {
    sub_25AE7FCE0(319, &qword_27FA1D5E8, MEMORY[0x277D839B0]);
    if (v2 <= 0x3F)
    {
      sub_25AE7FCE0(319, &qword_27FA1E7C8, MEMORY[0x277D837D0]);
      if (v3 <= 0x3F)
      {
        sub_25AE7FCE0(319, &qword_27FA1E7D0, MEMORY[0x277D839F8]);
        if (v4 <= 0x3F)
        {
          sub_25AE8B600(319);
          if (v5 <= 0x3F)
          {
            swift_updateClassMetadata2();
          }
        }
      }
    }
  }
}

uint64_t dispatch thunk of NameRecognitionSettingsViewModel.downloadAssetsIfNeeded()()
{
  v4 = (*(*v0 + 696) + **(*v0 + 696));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_25AE4F874;

  return v4();
}

uint64_t dispatch thunk of NameRecognitionSettingsViewModel.updateEnrolledNames()()
{
  v4 = (*(*v0 + 704) + **(*v0 + 704));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_25AE4F874;

  return v4();
}

void sub_25AE8B5A8(uint64_t a1)
{
  if (!qword_27FA1E7C0)
  {
    type metadata accessor for NRSettings(255);
    v1 = sub_25AEA1498();
    if (!v2)
    {
      atomic_store(v1, &qword_27FA1E7C0);
    }
  }
}

void sub_25AE8B600(uint64_t a1)
{
  if (!qword_27FA1E7D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA1E150, &qword_25AEA5848);
    v1 = sub_25AEA1498();
    if (!v2)
    {
      atomic_store(v1, &qword_27FA1E7D8);
    }
  }
}

uint64_t sub_25AE8B664(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_25AE8B75C;

  return v6(a1);
}

uint64_t sub_25AE8B75C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_25AE8B854(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_25AE8B948;

  return v5(v2 + 32);
}

uint64_t sub_25AE8B948()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v5 = *v0;

  *v2 = *(v1 + 32);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_25AE8BA5C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_25AE8BA94(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_25AE4F874;

  return sub_25AE8B854(a1, v4);
}

uint64_t sub_25AE8BB4C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_25AE47200;

  return sub_25AE8B854(a1, v4);
}

uint64_t sub_25AE8BC04(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_25AE4F874;

  return sub_25AE8B664(a1, v4);
}

uint64_t sub_25AE8BCF4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEA00000000007265;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0xD000000000000010;
    }

    else
    {
      v4 = 0xD000000000000014;
    }

    if (v3 == 2)
    {
      v5 = 0x800000025AEA7B00;
    }

    else
    {
      v5 = 0x800000025AEA7B20;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0xD000000000000011;
    }

    else
    {
      v4 = 0x696669746E656469;
    }

    if (v3)
    {
      v5 = 0x800000025AEA7AE0;
    }

    else
    {
      v5 = 0xEA00000000007265;
    }
  }

  v6 = 0x800000025AEA7B00;
  v7 = 0xD000000000000014;
  if (a2 == 2)
  {
    v7 = 0xD000000000000010;
  }

  else
  {
    v6 = 0x800000025AEA7B20;
  }

  if (a2)
  {
    v8 = 0xD000000000000011;
  }

  else
  {
    v8 = 0x696669746E656469;
  }

  if (a2)
  {
    v2 = 0x800000025AEA7AE0;
  }

  if (a2 <= 1u)
  {
    v9 = v8;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v6;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_25AEA2828();
  }

  return v11 & 1;
}

uint64_t NRNameConfiguration.init(config:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1DE80, &unk_25AEA6E80);
  MEMORY[0x28223BE20](v4 - 8);
  v93 = &v79 - v5;
  v6 = type metadata accessor for NRCollectedEnrollment(0);
  v92 = *(v6 - 8);
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v79 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v79 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D380, &unk_25AEA3E80);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v90 = &v79 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v89 = &v79 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v79 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = &v79 - v20;
  sub_25AEA0E38();
  v22 = sub_25AEA0E48();
  v23 = *(v22 - 8);
  v97 = *(v23 + 56);
  v98 = v22;
  v96 = v23 + 56;
  (v97)(a2, 0, 1);
  v24 = a1;
  v91 = v11;
  if (a1 && (v25 = [a1 humanReadableName]) != 0)
  {
    v26 = v25;
    v27 = sub_25AEA21A8();
    v29 = v28;
  }

  else
  {
    v27 = 0;
    v29 = 0;
  }

  v30 = type metadata accessor for NRNameConfiguration(0);
  v31 = (a2 + v30[5]);
  v32 = (a2 + v30[6]);
  v95 = v30;
  v33 = v30[7];
  *v31 = v27;
  v31[1] = v29;
  v82 = v33;
  if (!v24)
  {
    v97(v21, 1, 1, v98);
    result = sub_25AE62498(v21, a2, &qword_27FA1D380, &unk_25AEA3E80);
    *v32 = 0;
    v32[1] = 0;
LABEL_34:
    v48 = MEMORY[0x277D84F90];
LABEL_35:
    *(a2 + v82) = v48;
    return result;
  }

  v34 = [v24 identifier];
  if (v34)
  {
    v35 = v34;
    sub_25AEA0E28();

    v36 = 0;
  }

  else
  {
    v36 = 1;
  }

  v97(v19, v36, 1, v98);
  sub_25AE62AE0(v19, v21);
  sub_25AE62498(v21, a2, &qword_27FA1D380, &unk_25AEA3E80);
  v38 = [v24 localeIdentifier];
  if (v38)
  {
    v39 = v9;
    v40 = v38;
    v41 = sub_25AEA21A8();
    v43 = v42;

    v9 = v39;
  }

  else
  {
    v41 = 0;
    v43 = 0;
  }

  *v32 = v41;
  v32[1] = v43;
  v44 = v24;
  v45 = sub_25AE6803C();

  if (!(v45 >> 62))
  {
    v46 = *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v46)
    {
      goto LABEL_15;
    }

    goto LABEL_33;
  }

  v46 = sub_25AEA25B8();
  if (!v46)
  {
LABEL_33:

    goto LABEL_34;
  }

LABEL_15:
  v99 = MEMORY[0x277D84F90];
  result = sub_25AE8D78C(0, v46 & ~(v46 >> 63), 0);
  if ((v46 & 0x8000000000000000) == 0)
  {
    v80 = v44;
    v81 = a2;
    v47 = 0;
    v48 = v99;
    v49 = v45;
    v84 = v95 - 2;
    v85 = v45 & 0xC000000000000001;
    v83 = xmmword_25AEA5200;
    v87 = v45;
    v88 = v6;
    v86 = v46;
    do
    {
      if (v85)
      {
        v50 = MEMORY[0x25F85A1C0](v47, v49);
      }

      else
      {
        v50 = *(v49 + 8 * v47 + 32);
      }

      v51 = v50;
      v52 = v90;
      sub_25AEA0E38();
      v53 = 1;
      v97(v9, 0, 1, v98);
      v54 = &v9[*(v6 + 24)];
      *v54 = v83;
      v55 = *(*(v95 - 1) + 56);
      v94 = *(v6 + 28);
      v55(&v9[v94], 1, 1);
      v56 = [v51 identifier];
      if (v56)
      {
        v57 = v56;
        sub_25AEA0E28();

        v53 = 0;
      }

      v97(v52, v53, 1, v98);
      v58 = v52;
      v59 = v89;
      sub_25AE62AE0(v58, v89);
      v60 = v59;
      v61 = v9;
      sub_25AE62498(v60, v9, &qword_27FA1D380, &unk_25AEA3E80);
      v62 = [v51 audioData];
      if (v62)
      {
        v63 = v62;
        v64 = sub_25AEA0DE8();
        v66 = v65;
      }

      else
      {
        v64 = 0;
        v66 = 0xF000000000000000;
      }

      sub_25AE623AC(*v54, *(v54 + 1));
      *v54 = v64;
      *(v54 + 1) = v66;
      v67 = [v51 audioSourceRawValue];
      if (v67)
      {
        v68 = v67;
        v69 = sub_25AEA21A8();
        v71 = v70;
      }

      else
      {
        v69 = 0;
        v71 = 0;
      }

      v6 = v88;
      v72 = &v61[*(v88 + 20)];
      *v72 = v69;
      v72[1] = v71;
      v9 = v61;
      v73 = [v51 nameConfiguration];
      v74 = v93;
      NRNameConfiguration.init(config:)(v73, v93);

      (v55)(v74, 0, 1, v95);
      sub_25AE62498(v74, &v61[v94], &qword_27FA1DE80, &unk_25AEA6E80);
      v75 = v61;
      v76 = v91;
      sub_25AE8D7D0(v75, v91);
      v99 = v48;
      v78 = *(v48 + 16);
      v77 = *(v48 + 24);
      if (v78 >= v77 >> 1)
      {
        sub_25AE8D78C((v77 > 1), v78 + 1, 1);
        v48 = v99;
      }

      ++v47;
      *(v48 + 16) = v78 + 1;
      sub_25AE8D7D0(v76, v48 + ((*(v92 + 80) + 32) & ~*(v92 + 80)) + *(v92 + 72) * v78);
      v49 = v87;
    }

    while (v86 != v47);

    a2 = v81;
    goto LABEL_35;
  }

  __break(1u);
  return result;
}

uint64_t type metadata accessor for NRNameConfiguration(uint64_t a1)
{
  result = qword_27FA1E838;
  if (!qword_27FA1E838)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t NRNameConfiguration.init(identifier:humanReadableName:localeIdentifier:collectedEnrollments:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  sub_25AEA0E38();
  v10 = sub_25AEA0E48();
  v11 = *(v10 - 8);
  v12 = *(v11 + 56);
  v12(a7, 0, 1, v10);
  v13 = type metadata accessor for NRNameConfiguration(0);
  v14 = (a7 + v13[5]);
  v15 = (a7 + v13[6]);
  v16 = v13[7];
  sub_25AE626EC(a7);
  (*(v11 + 32))(a7, a1, v10);
  result = (v12)(a7, 0, 1, v10);
  *v14 = a2;
  v14[1] = a3;
  *v15 = a4;
  v15[1] = a5;
  *(a7 + v16) = a6;
  return result;
}

uint64_t sub_25AE8C6E4()
{
  sub_25AEA28B8();
  sub_25AEA21F8();

  return sub_25AEA28D8();
}

uint64_t sub_25AE8C7B0(uint64_t a1)
{
  sub_25AEA21F8();
}

uint64_t sub_25AE8C868(uint64_t a1)
{
  sub_25AEA28B8();
  sub_25AEA21F8();

  return sub_25AEA28D8();
}

unint64_t sub_25AE8C930@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_25AE8E620(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_25AE8C960(unint64_t *a1@<X8>)
{
  v2 = 0xEA00000000007265;
  v3 = 0x696669746E656469;
  v4 = 0x800000025AEA7B00;
  v5 = 0xD000000000000014;
  if (*v1 == 2)
  {
    v5 = 0xD000000000000010;
  }

  else
  {
    v4 = 0x800000025AEA7B20;
  }

  if (*v1)
  {
    v3 = 0xD000000000000011;
    v2 = 0x800000025AEA7AE0;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

unint64_t sub_25AE8C9E8()
{
  v1 = 0x696669746E656469;
  v2 = 0xD000000000000014;
  if (*v0 == 2)
  {
    v2 = 0xD000000000000010;
  }

  if (*v0)
  {
    v1 = 0xD000000000000011;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_25AE8CA6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_25AE8E620(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_25AE8CAA0(uint64_t a1)
{
  v2 = sub_25AE8D834();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25AE8CADC(uint64_t a1)
{
  v2 = sub_25AE8D834();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t NRNameConfiguration.humanReadableName.getter()
{
  v1 = *(v0 + *(type metadata accessor for NRNameConfiguration(0) + 20));

  return v1;
}

uint64_t NRNameConfiguration.humanReadableName.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for NRNameConfiguration(0) + 20));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t NRNameConfiguration.localeIdentifier.getter()
{
  v1 = *(v0 + *(type metadata accessor for NRNameConfiguration(0) + 24));

  return v1;
}

uint64_t NRNameConfiguration.localeIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for NRNameConfiguration(0) + 24));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t NRNameConfiguration.collectedEnrollments.getter()
{
  type metadata accessor for NRNameConfiguration(0);
}

uint64_t NRNameConfiguration.collectedEnrollments.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for NRNameConfiguration(0) + 28);

  *(v1 + v3) = a1;
  return result;
}

uint64_t NRNameConfiguration.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a2;
  v3 = type metadata accessor for NRCollectedEnrollment(0);
  v44 = *(v3 - 8);
  v45 = v3;
  v4 = MEMORY[0x28223BE20](v3);
  v43 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v46 = &v41 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D380, &unk_25AEA3E80);
  MEMORY[0x28223BE20](v7 - 8);
  v50 = &v41 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E7F0, &qword_25AEA6E90);
  v48 = *(v9 - 8);
  v49 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v41 - v10;
  v12 = type metadata accessor for NRNameConfiguration(0);
  v13 = (v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25AEA0E38();
  v16 = sub_25AEA0E48();
  v17 = *(v16 - 8);
  v18 = *(v17 + 56);
  v19 = (v17 + 56);
  v47 = v16;
  v18(v15, 0, 1);
  v20 = &v15[v13[7]];
  *v20 = 0;
  v20[1] = 0;
  v21 = &v15[v13[8]];
  *v21 = 0;
  v21[1] = 0;
  v22 = v13[9];
  v52 = v15;
  *&v15[v22] = 0;
  v23 = a1;
  v24 = a1[3];
  v53 = v23;
  __swift_project_boxed_opaque_existential_0(v23, v24);
  sub_25AE8D834();
  v25 = v51;
  sub_25AEA28E8();
  if (v25)
  {
    v26 = v52;
  }

  else
  {
    v51 = v19;
    v41 = v22;
    LOBYTE(v54[0]) = 0;
    sub_25AE8DAD8(&qword_27FA1DE98, MEMORY[0x277CC95F0], MEMORY[0x277CC9618]);
    v27 = v47;
    sub_25AEA27C8();
    v28 = v50;
    (v18)(v50, 0, 1, v27);
    v26 = v52;
    sub_25AE62498(v28, v52, &qword_27FA1D380, &unk_25AEA3E80);
    LOBYTE(v54[0]) = 1;
    *v20 = sub_25AEA27B8();
    v20[1] = v29;
    LOBYTE(v54[0]) = 2;
    *v21 = sub_25AEA27B8();
    v21[1] = v31;
    v56 = 3;
    sub_25AEA27A8();
    v51 = v11;
    __swift_project_boxed_opaque_existential_0(v54, v55);
    v32 = sub_25AEA2818();
    v33 = MEMORY[0x277D84F90];
    if (v32)
    {
      v34 = v41;
    }

    else
    {
      v35 = v46;
      do
      {
        __swift_mutable_project_boxed_opaque_existential_1(v54, v55);
        sub_25AE8DAD8(&qword_27FA1E800, type metadata accessor for NRCollectedEnrollment, &protocol conformance descriptor for NRCollectedEnrollment);
        sub_25AEA2808();
        v36 = v43;
        sub_25AE8D938(v35, v43, type metadata accessor for NRCollectedEnrollment);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v33 = sub_25AE5B7F4(0, v33[2] + 1, 1, v33);
        }

        v37 = v44;
        v39 = v33[2];
        v38 = v33[3];
        if (v39 >= v38 >> 1)
        {
          v33 = sub_25AE5B7F4((v38 > 1), v39 + 1, 1, v33);
        }

        v35 = v46;
        sub_25AE8D8D8(v46, type metadata accessor for NRCollectedEnrollment);
        v33[2] = v39 + 1;
        sub_25AE8D7D0(v36, v33 + ((*(v37 + 80) + 32) & ~*(v37 + 80)) + *(v37 + 72) * v39);
        __swift_project_boxed_opaque_existential_0(v54, v55);
        v40 = sub_25AEA2818();
        v34 = v41;
      }

      while ((v40 & 1) == 0);
    }

    (*(v48 + 8))(v51, v49);
    *(v26 + v34) = v33;
    __swift_destroy_boxed_opaque_existential_0(v54);
    sub_25AE8D938(v26, v42, type metadata accessor for NRNameConfiguration);
  }

  __swift_destroy_boxed_opaque_existential_0(v53);
  return sub_25AE8D8D8(v26, type metadata accessor for NRNameConfiguration);
}

uint64_t NRNameConfiguration.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E808, &unk_25AEA6E98);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_25AE8D834();
  sub_25AEA28F8();
  LOBYTE(v11) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D380, &unk_25AEA3E80);
  sub_25AE632AC();
  sub_25AEA27E8();
  if (!v2)
  {
    v9 = type metadata accessor for NRNameConfiguration(0);
    v11 = *(v3 + v9[5]);
    v12 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D388, &qword_25AEA5220);
    sub_25AE63390();
    sub_25AEA27E8();
    v11 = *(v3 + v9[6]);
    v12 = 2;
    sub_25AEA27E8();
    *&v11 = *(v3 + v9[7]);
    v12 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E810, &qword_25AEA6EA8);
    sub_25AE8D9A0();
    sub_25AEA27E8();
  }

  return (*(v6 + 8))(v8, v5);
}

void *sub_25AE8D6E4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_25AE8E22C(a1, a2, a3, *v3, &qword_27FA1E878, &qword_25AEA70A0, MEMORY[0x277D797F0]);
  *v3 = result;
  return result;
}

void *sub_25AE8D728(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_25AE8E22C(a1, a2, a3, *v3, &qword_27FA1E870, &qword_25AEA7098, MEMORY[0x277D797D0]);
  *v3 = result;
  return result;
}

char *sub_25AE8D76C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_25AE8E128(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_25AE8D78C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_25AE8E22C(a1, a2, a3, *v3, &qword_27FA1DC10, &qword_25AEA4BF8, type metadata accessor for NRCollectedEnrollment);
  *v3 = result;
  return result;
}

uint64_t sub_25AE8D7D0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NRCollectedEnrollment(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_25AE8D834()
{
  result = qword_27FA1E7F8;
  if (!qword_27FA1E7F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA1E7F8);
  }

  return result;
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

uint64_t sub_25AE8D8D8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_25AE8D938(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_25AE8D9A0()
{
  result = qword_27FA1E818;
  if (!qword_27FA1E818)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA1E810, &qword_25AEA6EA8);
    sub_25AE8DA24();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA1E818);
  }

  return result;
}

unint64_t sub_25AE8DA24()
{
  result = qword_27FA1E820;
  if (!qword_27FA1E820)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA1E828, &qword_25AEA6EB0);
    sub_25AE8DAD8(&qword_27FA1E830, type metadata accessor for NRCollectedEnrollment, &protocol conformance descriptor for NRCollectedEnrollment);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA1E820);
  }

  return result;
}

uint64_t sub_25AE8DAD8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_25AE8DB34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D380, &unk_25AEA3E80);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_25AE8DC20(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D380, &unk_25AEA3E80);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  return result;
}

void sub_25AE8DCE8(uint64_t a1)
{
  sub_25AE8DD84(319);
  if (v1 <= 0x3F)
  {
    sub_25AE8DDDC();
    if (v2 <= 0x3F)
    {
      sub_25AE8DE2C(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_25AE8DD84(uint64_t a1)
{
  if (!qword_27FA1DEF0)
  {
    sub_25AEA0E48();
    v1 = sub_25AEA2538();
    if (!v2)
    {
      atomic_store(v1, &qword_27FA1DEF0);
    }
  }
}

void sub_25AE8DDDC()
{
  if (!qword_27FA1DEF8)
  {
    v0 = sub_25AEA2538();
    if (!v1)
    {
      atomic_store(v0, &qword_27FA1DEF8);
    }
  }
}

void sub_25AE8DE2C(uint64_t a1)
{
  if (!qword_27FA1E848)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA1E828, &qword_25AEA6EB0);
    v1 = sub_25AEA2538();
    if (!v2)
    {
      atomic_store(v1, &qword_27FA1E848);
    }
  }
}

uint64_t getEnumTagSinglePayload for NRNameConfiguration.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for NRNameConfiguration.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_25AE8DFE4()
{
  result = qword_27FA1E850;
  if (!qword_27FA1E850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA1E850);
  }

  return result;
}

unint64_t sub_25AE8E03C()
{
  result = qword_27FA1E858;
  if (!qword_27FA1E858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA1E858);
  }

  return result;
}

unint64_t sub_25AE8E094()
{
  result = qword_27FA1E860;
  if (!qword_27FA1E860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA1E860);
  }

  return result;
}

char *sub_25AE8E0E8(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_25AE8E408(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_25AE8E108(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_25AE8E514(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_25AE8E128(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E868, &qword_25AEA7090);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

void *sub_25AE8E22C(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}