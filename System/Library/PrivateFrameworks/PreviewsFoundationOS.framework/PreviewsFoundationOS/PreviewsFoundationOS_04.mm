uint64_t sub_25F1F9B58(uint64_t a1, uint64_t a2)
{
  sub_25F30685C();
  v2 = sub_25F30685C();
  MEMORY[0x25F8D7130](v2);

  MEMORY[0x25F8D7130](8250, 0xE200000000000000);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FD52B48, &qword_25F3084D0);
  sub_25F30619C();
  MEMORY[0x25F8D7130](2570, 0xE200000000000000);
  MEMORY[0x25F8D7130](0, 0xE000000000000000);

  sub_25F1BF118();
  v3 = sub_25F305D2C();

  return v3;
}

uint64_t sub_25F1F9CA4(void *a1)
{
  sub_25F2000A4(a1);
  v2 = [a1 localizedDescription];
  v3 = sub_25F304E0C();
  v5 = v4;

  MEMORY[0x25F8D7130](v3, v5);

  MEMORY[0x25F8D7130](8250, 0xE200000000000000);

  v6 = [a1 localizedRecoverySuggestion];
  if (v6)
  {
    v7 = v6;
    v8 = sub_25F304E0C();
    v10 = v9;

    MEMORY[0x25F8D7130](2570, 0xE200000000000000);
    MEMORY[0x25F8D7130](v8, v10);
  }

  sub_25F1FFC94(a1);
  if (v12)
  {
    v13 = v11;
    v14 = v12;
    MEMORY[0x25F8D7130](2570, 0xE200000000000000);
    MEMORY[0x25F8D7130](v13, v14);
  }

  sub_25F1BF118();
  v15 = sub_25F305D2C();

  return v15;
}

uint64_t sub_25F1F9E3C()
{
  v1 = type metadata accessor for CrashReport(0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for CrashReportError(0);
  v4 = __swift_allocate_boxed_opaque_existential_1(&v31);
  sub_25F2025A0(v0, v4);
  __swift_project_boxed_opaque_existential_1(&v31, v33);
  swift_getDynamicType();
  v5 = sub_25F30685C();
  v7 = v6;
  __swift_destroy_boxed_opaque_existential_1(&v31);
  v35 = v5;
  v36 = v7;
  sub_25F1AE8B4(&v31);
  v8 = v33;
  v9 = v34;
  __swift_project_boxed_opaque_existential_1(&v31, v33);
  v10 = (*(v9 + 16))(v8, v9);
  v12 = v11;
  __swift_destroy_boxed_opaque_existential_1(&v31);
  if (v12)
  {
    v31 = 8250;
    v32 = 0xE200000000000000;
    MEMORY[0x25F8D7130](v10, v12);

    MEMORY[0x25F8D7130](v31, v32);
  }

  sub_25F1AE8B4(&v31);
  v13 = v33;
  v14 = v34;
  __swift_project_boxed_opaque_existential_1(&v31, v33);
  v15 = (*(v14 + 24))(v13, v14);
  v17 = v16;
  __swift_destroy_boxed_opaque_existential_1(&v31);
  if (v17)
  {
    MEMORY[0x25F8D7130](2570, 0xE200000000000000);
    MEMORY[0x25F8D7130](v15, v17);
  }

  sub_25F1AE8B4(&v31);
  v18 = v33;
  v19 = v34;
  __swift_project_boxed_opaque_existential_1(&v31, v33);
  (*(v19 + 8))(v18, v19);
  __swift_destroy_boxed_opaque_existential_1(&v31);
  v20 = CrashReport.formattedAsLegacyCrashReport()();
  v21 = sub_25F2EFA04(0, 1, 1, MEMORY[0x277D84F90]);
  v23 = *(v21 + 2);
  v22 = *(v21 + 3);
  if (v23 >= v22 >> 1)
  {
    v21 = sub_25F2EFA04((v22 > 1), v23 + 1, 1, v21);
  }

  *(v21 + 2) = v23 + 1;
  v24 = &v21[24 * v23];
  *(v24 + 2) = v20;
  v24[48] = 0;
  v25 = Array<A>.builtDescription.getter(v21);
  v27 = v26;

  sub_25F1AF760(v3);
  MEMORY[0x25F8D7130](2570, 0xE200000000000000);
  MEMORY[0x25F8D7130](v25, v27);

  v31 = v35;
  v32 = v36;
  v30[3] = 28252;
  v30[4] = 0xE200000000000000;
  v30[1] = 10;
  v30[2] = 0xE100000000000000;
  sub_25F1BF118();
  v28 = sub_25F305D2C();

  return v28;
}

uint64_t sub_25F1FA180()
{
  v1 = v0;
  v19 = &type metadata for LowValueError;
  v2 = swift_allocObject();
  v17 = v2;
  v3 = *(v0 + 16);
  *(v2 + 16) = *v0;
  *(v2 + 32) = v3;
  *(v2 + 48) = *(v0 + 32);
  *(v2 + 64) = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1(&v17, &type metadata for LowValueError);
  swift_getDynamicType();
  sub_25F2024B8(v0, &v15);
  v4 = sub_25F30685C();
  v6 = v5;
  __swift_destroy_boxed_opaque_existential_1(&v17);
  v15 = v4;
  v16 = v6;
  v7 = *v1;
  v8 = v1[1];
  v17 = 8250;
  v18 = 0xE200000000000000;
  MEMORY[0x25F8D7130](v7, v8);
  MEMORY[0x25F8D7130](v17, v18);

  v9 = v1[3];
  if (v9)
  {
    v10 = v1[2];
    MEMORY[0x25F8D7130](2570, 0xE200000000000000);
    MEMORY[0x25F8D7130](v10, v9);
  }

  v11 = v1[5];
  if (v11)
  {
    v12 = v1[4];
    MEMORY[0x25F8D7130](2570, 0xE200000000000000);
    MEMORY[0x25F8D7130](v12, v11);
  }

  v17 = v15;
  v18 = v16;
  sub_25F1BF118();
  v13 = sub_25F305D2C();

  return v13;
}

uint64_t sub_25F1FA32C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v20 = &type metadata for TimeoutError;
  v8 = swift_allocObject();
  v17 = v8;
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  *(v8 + 32) = a3;
  v9 = a4 & 1;
  *(v8 + 40) = a4 & 1;
  __swift_project_boxed_opaque_existential_1(&v17, &type metadata for TimeoutError);
  swift_getDynamicType();
  sub_25F2024A8(a1, a2, a3, a4 & 1);
  v10 = sub_25F30685C();
  v12 = v11;
  __swift_destroy_boxed_opaque_existential_1(&v17);
  v21 = v10;
  v22 = v12;
  v17 = a1;
  v18 = a2;
  v19 = a3;
  LOBYTE(v20) = v9;
  v13 = TimeoutError.highValueTitle.getter();
  if (v14)
  {
    v17 = 8250;
    v18 = 0xE200000000000000;
    MEMORY[0x25F8D7130](v13);

    MEMORY[0x25F8D7130](v17, v18);

    v10 = v21;
    v12 = v22;
  }

  v17 = v10;
  v18 = v12;
  sub_25F1BF118();
  v15 = sub_25F305D2C();

  return v15;
}

uint64_t sub_25F1FA4B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = &type metadata for Unreachable;
  v8 = swift_allocObject();
  v14[0] = v8;
  v8[2] = a1;
  v8[3] = a2;
  v8[4] = a3;
  v8[5] = a4;
  __swift_project_boxed_opaque_existential_1(v14, &type metadata for Unreachable);
  swift_getDynamicType();

  v9 = sub_25F30685C();
  v11 = v10;
  __swift_destroy_boxed_opaque_existential_1(v14);
  v14[0] = v9;
  v14[1] = v11;
  MEMORY[0x25F8D7130](0xD000000000000021, 0x800000025F318160);
  MEMORY[0x25F8D7130](2570, 0xE200000000000000);
  MEMORY[0x25F8D7130](a1, a2);
  if (a4)
  {
    MEMORY[0x25F8D7130](2570, 0xE200000000000000);
    MEMORY[0x25F8D7130](a3, a4);
  }

  sub_25F1BF118();
  v12 = sub_25F305D2C();

  return v12;
}

uint64_t sub_25F1FA644(uint64_t a1, uint64_t a2)
{
  v11 = &type metadata for InvalidUUID;
  v9 = a1;
  v10 = a2;
  __swift_project_boxed_opaque_existential_1(&v9, &type metadata for InvalidUUID);
  swift_getDynamicType();

  v4 = sub_25F30685C();
  v6 = v5;
  __swift_destroy_boxed_opaque_existential_1(&v9);
  v9 = v4;
  v10 = v6;
  sub_25F305FAC();

  MEMORY[0x25F8D7130](a1, a2);
  MEMORY[0x25F8D7130](0xD000000000000015, 0x800000025F318100);

  MEMORY[0x25F8D7130](8250, 0xE200000000000000);

  sub_25F1BF118();
  v7 = sub_25F305D2C();

  return v7;
}

uint64_t HumanReadableError.fullDiagnosticsOutput.getter(uint64_t a1, uint64_t a2)
{
  (*(a2 + 88))();
  v4 = (*(a2 + 24))(a1, a2);
  if (v5 || (v4 = (*(a2 + 32))(a1, a2), v6))
  {
    MEMORY[0x25F8D7130](v4);

    MEMORY[0x25F8D7130](8250, 0xE200000000000000);
  }

  v7 = (*(a2 + 40))(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = v8;
    MEMORY[0x25F8D7130](2570, 0xE200000000000000);
    MEMORY[0x25F8D7130](v9, v10);
  }

  v11 = (*(a2 + 48))(a1, a2);
  if (v12)
  {
    v13 = v11;
    v14 = v12;
    MEMORY[0x25F8D7130](2570, 0xE200000000000000);
    MEMORY[0x25F8D7130](v13, v14);
  }

  sub_25F1BF118();
  v15 = sub_25F305D2C();

  return v15;
}

void *sub_25F1FA9A4@<X0>(void *a1@<X8>)
{
  v31 = type metadata accessor for CrashReportError(0);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v29);
  sub_25F2025A0(v1, boxed_opaque_existential_1);
  __swift_project_boxed_opaque_existential_1(&v29, v31);
  swift_getDynamicType();
  v24 = sub_25F30685C();
  v4 = v3;
  __swift_destroy_boxed_opaque_existential_1(&v29);
  sub_25F1AE8B4(&v29);
  v5 = v31;
  v6 = v32;
  __swift_project_boxed_opaque_existential_1(&v29, v31);
  v7 = (*(v6 + 16))(v5, v6);
  v9 = v8;
  __swift_destroy_boxed_opaque_existential_1(&v29);
  sub_25F1AE8B4(&v29);
  v10 = v31;
  v11 = v32;
  __swift_project_boxed_opaque_existential_1(&v29, v31);
  v12 = (*(v11 + 24))(v10, v11);
  v14 = v13;
  __swift_destroy_boxed_opaque_existential_1(&v29);
  v15 = CrashReportError.additionalDiagnostics.getter();
  v17 = v16;
  sub_25F1AE8B4(&v29);
  v19 = v31;
  v18 = v32;
  __swift_project_boxed_opaque_existential_1(&v29, v31);
  (*(v18 + 32))(&v26, v19, v18);
  if (v27)
  {
    __swift_destroy_boxed_opaque_existential_1(&v29);
    v20 = 2;
  }

  else
  {
    v21 = v26;
    __swift_destroy_boxed_opaque_existential_1(&v29);
    v20 = v21 | 2;
  }

  v28 = 0;
  *&v29 = v24;
  *(&v29 + 1) = v4;
  v30 = v7;
  v31 = v9;
  v32 = 0;
  v33 = 0;
  v34 = v12;
  v35 = v14;
  v36 = v15;
  v37 = v17;
  v38 = v20;
  v39 = 0;
  v40 = 258;
  v41 = 1;
  v22 = sub_25F1FEE3C(&v29);
  sub_25F1FFB90(&v29);
  result = sub_25F252514(v22, &v26);
  *a1 = v26;
  return result;
}

void *sub_25F1FABA8@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  *(&v15 + 1) = &type metadata for InvalidUUID;
  *&v14 = a1;
  *(&v14 + 1) = a2;
  __swift_project_boxed_opaque_existential_1(&v14, &type metadata for InvalidUUID);
  swift_getDynamicType();

  v6 = sub_25F30685C();
  v8 = v7;
  __swift_destroy_boxed_opaque_existential_1(&v14);
  *&v14 = 0;
  *(&v14 + 1) = 0xE000000000000000;
  sub_25F305FAC();

  *&v14 = 0xD000000000000015;
  *(&v14 + 1) = 0x800000025F318100;
  MEMORY[0x25F8D7130](a1, a2);
  v9 = v14;
  v13 = 1;
  *&v14 = v6;
  *(&v14 + 1) = v8;
  v15 = v9;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0;
  v20 = 1;
  v21 = 2;
  v22 = 1;
  v10 = sub_25F1FEE3C(&v14);
  sub_25F1FFB90(&v14);
  result = sub_25F252514(v10, &v12);
  *a3 = v12;
  return result;
}

void *sub_25F1FACE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v20 = &type metadata for Unreachable;
  v10 = swift_allocObject();
  *&v18 = v10;
  v10[2] = a1;
  v10[3] = a2;
  v10[4] = a3;
  v10[5] = a4;
  __swift_project_boxed_opaque_existential_1(&v18, &type metadata for Unreachable);
  swift_getDynamicType();

  v11 = sub_25F30685C();
  v13 = v12;
  __swift_destroy_boxed_opaque_existential_1(&v18);
  v17 = 1;
  *&v18 = v11;
  *(&v18 + 1) = v13;
  v19 = 0;
  v20 = 0;
  v21 = 0xD00000000000001FLL;
  v22 = 0x800000025F318190;
  v23 = a1;
  v24 = a2;
  v25 = a3;
  v26 = a4;
  v27 = 0;
  v28 = 1;
  v29 = 2;
  v30 = 1;

  v14 = sub_25F1FEE3C(&v18);
  sub_25F1FFB90(&v18);
  result = sub_25F252514(v14, &v16);
  *a5 = v16;
  return result;
}

void *sub_25F1FAE28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, void *a5@<X8>)
{
  v20 = a1;
  v21 = a2;
  v22 = a3;
  v9 = a4 & 1;
  v23 = a4 & 1;
  v26 = &type metadata for TimeoutError;
  v10 = swift_allocObject();
  *&v24 = v10;
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  *(v10 + 32) = a3;
  *(v10 + 40) = v9;
  __swift_project_boxed_opaque_existential_1(&v24, &type metadata for TimeoutError);
  swift_getDynamicType();
  sub_25F2024A8(a1, a2, a3, v9);
  v11 = sub_25F30685C();
  v13 = v12;
  __swift_destroy_boxed_opaque_existential_1(&v24);
  v14 = TimeoutError.highValueTitle.getter();
  v19 = 1;
  *&v24 = v11;
  *(&v24 + 1) = v13;
  v25 = v14;
  v26 = v15;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0;
  v31 = 1;
  v32 = 258;
  v33 = 1;
  v16 = sub_25F1FEE3C(&v24);
  sub_25F1FFB90(&v24);
  result = sub_25F252514(v16, &v18);
  *a5 = v18;
  return result;
}

void *sub_25F1FAF60@<X0>(void *a1@<X8>)
{
  v16 = &type metadata for LowValueError;
  v3 = swift_allocObject();
  *&v15 = v3;
  v4 = *(v1 + 16);
  *(v3 + 16) = *v1;
  *(v3 + 32) = v4;
  *(v3 + 48) = *(v1 + 32);
  *(v3 + 64) = *(v1 + 48);
  __swift_project_boxed_opaque_existential_1(&v15, &type metadata for LowValueError);
  swift_getDynamicType();
  sub_25F2024B8(v1, &v19);
  v5 = sub_25F30685C();
  v7 = v6;
  __swift_destroy_boxed_opaque_existential_1(&v15);
  v8 = (*(v1 + 48) == 2) | *(v1 + 48);
  v10 = *v1;
  v9 = *(v1 + 8);
  v11 = *(v1 + 32);
  v15 = *(v1 + 16);
  v18 = v11;
  v24 = v15;
  v25 = v11;
  v17 = 1;
  *&v19 = v5;
  *(&v19 + 1) = v7;
  v20 = 0;
  v21 = 0;
  v22 = v10;
  v23 = v9;
  v26 = 0;
  v27 = 513;
  v28 = v8 & 1;
  v29 = 1;

  sub_25F2024F0(&v15, v14);
  sub_25F2024F0(&v18, v14);
  v12 = sub_25F1FEE3C(&v19);
  sub_25F1FFB90(&v19);
  result = sub_25F252514(v12, v14);
  *a1 = v14[0];
  return result;
}

void *sub_25F1FB0AC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v26 = &type metadata for AccumulatedError;
  *&v24 = a1;
  __swift_project_boxed_opaque_existential_1(&v24, &type metadata for AccumulatedError);
  swift_getDynamicType();

  v20 = sub_25F30685C();
  v4 = v3;
  __swift_destroy_boxed_opaque_existential_1(&v24);
  v5 = sub_25F2B9B8C(a1);
  v7 = v6;
  v8 = sub_25F2B9A70(a1);
  v10 = v9;
  v11 = sub_25F2B9C88(a1);
  v13 = v12;
  v14 = sub_25F2B9D84(a1);
  v16 = v15;
  v17 = sub_25F2B9E80(a1);
  v23 = 1;
  *&v24 = v20;
  *(&v24 + 1) = v4;
  v25 = v5;
  v26 = v7;
  v27 = v8;
  v28 = v10;
  v29 = v11;
  v30 = v13;
  v31 = v14;
  v32 = v16;
  v33 = 0;
  v34 = 513;
  v35 = v17 & 1;
  v36 = 1;
  v18 = sub_25F1FEE3C(&v24);
  sub_25F1FFB90(&v24);
  result = sub_25F252514(v18, &v22);
  *a2 = v22;
  return result;
}

void *sub_25F1FB1F0@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = sub_25F2000A4(a1);
  v6 = v5;
  v7 = [a1 localizedDescription];
  v8 = sub_25F304E0C();
  v10 = v9;

  v11 = [a1 localizedRecoverySuggestion];
  if (v11)
  {
    v12 = v11;
    v13 = sub_25F304E0C();
    v15 = v14;
  }

  else
  {
    v13 = 0;
    v15 = 0;
  }

  sub_25F1FFC94(a1);
  v21 = 1;
  *&v22 = v4;
  *(&v22 + 1) = v6;
  v23 = 0;
  v24 = 0;
  v25 = v8;
  v26 = v10;
  v27 = v13;
  v28 = v15;
  v29 = v16;
  v30 = v17;
  v31 = 0;
  v32 = 1;
  v33 = 258;
  v34 = 0;
  v18 = sub_25F1FEE3C(&v22);
  sub_25F1FFB90(&v22);
  result = sub_25F252514(v18, &v20);
  *a2 = v20;
  return result;
}

void *sub_25F1FB310@<X0>(uint64_t a1@<X0>, uint64_t *a3@<X8>)
{
  v5 = sub_25F30685C();
  v7 = v6;
  v8 = sub_25F30685C();
  MEMORY[0x25F8D7130](v8);

  MEMORY[0x25F8D7130](8250, 0xE200000000000000);
  v11 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FD52B48, &qword_25F3084D0);
  sub_25F30619C();
  v12 = 1;
  *&v13[0] = v5;
  *(&v13[0] + 1) = v7;
  memset(&v13[1], 0, 48);
  v14 = 0;
  v15 = 0xE000000000000000;
  v16 = 0;
  v17 = 1;
  v18 = 258;
  v19 = 0;
  v9 = sub_25F1FEE3C(v13);
  sub_25F1FFB90(v13);
  result = sub_25F252514(v9, &v11);
  *a3 = v11;
  return result;
}

void *sub_25F1FB430@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a7@<W6>, void *a8@<X8>)
{
  *(&v24 + 1) = a5;
  v15 = swift_allocObject();
  *&v23 = v15;
  v15[2] = a1;
  v15[3] = a2;
  v15[4] = a3;
  v15[5] = a4;
  __swift_project_boxed_opaque_existential_1(&v23, a5);
  swift_getDynamicType();

  v16 = sub_25F30685C();
  v18 = v17;
  __swift_destroy_boxed_opaque_existential_1(&v23);
  v22 = 1;
  *&v23 = v16;
  *(&v23 + 1) = v18;
  v24 = 0u;
  v25 = 0u;
  v26 = a1;
  v27 = a2;
  v28 = a3;
  v29 = a4;
  v30 = 0;
  v31 = 513;
  v32 = a7;
  v33 = 1;

  v19 = sub_25F1FEE3C(&v23);
  sub_25F1FFB90(&v23);
  result = sub_25F252514(v19, &v21);
  *a8 = v21;
  return result;
}

void *sub_25F1FB560@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v13 = a1;
  *&v14 = a1;
  v16 = &type metadata for InvalidAuditTokenDeserialization;
  __swift_project_boxed_opaque_existential_1(&v14, &type metadata for InvalidAuditTokenDeserialization);
  swift_getDynamicType();

  v3 = sub_25F30685C();
  v5 = v4;
  __swift_destroy_boxed_opaque_existential_1(&v14);
  v6 = sub_25F202928();
  v7 = (*(v6 + 24))(&type metadata for InvalidAuditTokenDeserialization, v6);
  v12 = 1;
  *&v14 = v3;
  *(&v14 + 1) = v5;
  v15 = v7;
  v16 = v8;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0;
  v21 = 1;
  v22 = 2;
  v23 = 1;
  v9 = sub_25F1FEE3C(&v14);
  sub_25F1FFB90(&v14);
  result = sub_25F252514(v9, &v11);
  *a2 = v11;
  return result;
}

void *sub_25F1FB668@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v15 = a1;
  v18 = &type metadata for JITError;
  *&v16 = a1;
  __swift_project_boxed_opaque_existential_1(&v16, &type metadata for JITError);
  swift_getDynamicType();

  v4 = sub_25F30685C();
  v6 = v5;
  __swift_destroy_boxed_opaque_existential_1(&v16);
  if (*(a1 + 16))
  {
    v7 = 0xD000000000000017;
  }

  else
  {
    v7 = 0;
  }

  if (*(a1 + 16))
  {
    v8 = 0x800000025F318140;
  }

  else
  {
    v8 = 0;
  }

  v9 = JITError.additionalDiagnostics.getter();
  v14 = 0;
  *&v16 = v4;
  *(&v16 + 1) = v6;
  v17 = 0;
  v18 = 0;
  v19 = v7;
  v20 = v8;
  v21 = 0;
  v22 = 0;
  v23 = v9;
  v24 = v10;
  v25 = 64;
  v26 = 0;
  v27 = 258;
  v28 = 1;
  v11 = sub_25F1FEE3C(&v16);
  sub_25F1FFB90(&v16);
  result = sub_25F252514(v11, &v13);
  *a2 = v13;
  return result;
}

void *HumanReadableError.plistRepresentation.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = (*(a2 + 88))();
  v27 = v6;
  v28 = v5;
  v7 = (*(a2 + 24))(a1, a2);
  v25 = v8;
  v26 = v7;
  v9 = (*(a2 + 32))(a1, a2);
  v23 = v10;
  v24 = v9;
  v11 = (*(a2 + 40))(a1, a2);
  v13 = v12;
  v14 = (*(a2 + 48))(a1, a2);
  v16 = v15;
  (*(a2 + 56))(&v30, a1, a2);
  v17 = v30;
  v18 = v31;
  (*(a2 + 64))(&v44, a1, a2);
  v19 = (*(a2 + 96))(a1, a2);
  v20 = (*(a2 + 128))(a1, a2);
  v32 = v18;
  *&v33 = v28;
  *(&v33 + 1) = v27;
  v34 = v26;
  v35 = v25;
  v36 = v24;
  v37 = v23;
  v38 = v11;
  v39 = v13;
  v40 = v14;
  v41 = v16;
  v42 = v17;
  v43 = v18;
  BYTE1(v44) = v19 & 1;
  BYTE2(v44) = v20 & 1;
  v21 = sub_25F1FEE3C(&v33);
  sub_25F1FFB90(&v33);
  result = sub_25F252514(v21, &v30);
  *a3 = v30;
  return result;
}

Swift::String __swiftcall Error.describe()()
{
  v2 = v0;
  (MEMORY[0x28223BE20])();
  (*(v4 + 16))(&v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v1, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52D98, &unk_25F3083E0);
  if (!swift_dynamicCast())
  {
    v19 = 0;
    v17 = 0u;
    v18 = 0u;
    sub_25F1AF698(&v17, &qword_27FD54840, &unk_25F30BAD8);
    goto LABEL_5;
  }

  v5 = *(&v18 + 1);
  v6 = v19;
  __swift_project_boxed_opaque_existential_1(&v17, *(&v18 + 1));
  v7 = (*(v6 + 24))(v5, v6);
  if (!v8)
  {
    v13 = (*(v6 + 32))(v5, v6);
    v15 = v14;
    __swift_destroy_boxed_opaque_existential_1(&v17);
    if (v15)
    {
      v11 = v15;
      v12 = v13;
      goto LABEL_9;
    }

LABEL_5:
    *&v17 = 0;
    *(&v17 + 1) = 0xE000000000000000;
    sub_25F30653C();

    v11 = *(&v17 + 1);
    v12 = v17;
    goto LABEL_9;
  }

  v9 = v7;
  v10 = v8;
  __swift_destroy_boxed_opaque_existential_1(&v17);
  v11 = v10;
  v12 = v9;
LABEL_9:
  result._object = v11;
  result._countAndFlagsBits = v12;
  return result;
}

void Error.humanReadable.getter(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  v6 = *(a1 - 8);
  v7 = MEMORY[0x28223BE20](a1);
  v9 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v43 - v11;
  MEMORY[0x28223BE20](v10);
  v13 = *(v6 + 16);
  v13(&v43 - v14, v3, a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52D98, &unk_25F3083E0);
  if (swift_dynamicCast())
  {
    goto LABEL_7;
  }

  v51 = 0;
  v49 = 0u;
  v50 = 0u;
  sub_25F1AF698(&v49, &qword_27FD54840, &unk_25F30BAD8);
  v13(v12, v3, a1);
  v15 = sub_25F30650C();
  if (v15)
  {
    v16 = v15;
    (*(v6 + 8))(v12, a1);
  }

  else
  {
    v16 = swift_allocError();
    (*(v6 + 32))(v17, v12, a1);
  }

  v18 = sub_25F3043EC();

  sub_25F200258(v18, &v49);
  if (*(&v50 + 1))
  {

LABEL_7:
    sub_25F1A42F8(&v49, &v52);
    sub_25F1A42F8(&v52, a3);
    return;
  }

  v44 = a3;
  sub_25F1AF698(&v49, &qword_27FD54840, &unk_25F30BAD8);
  v19 = [v18 userInfo];
  v20 = sub_25F304A6C();

  v21 = *(v20 + 16);

  if (v21)
  {
    v22 = [v18 userInfo];
    v23 = sub_25F304A6C();

    v24 = sub_25F304E0C();
    if (*(v23 + 16))
    {
      v26 = sub_25F219234(v24, v25);
      v28 = v27;

      v29 = v44;
      if (v28)
      {
        sub_25F1B7118(*(v23 + 56) + 32 * v26, &v52);

        __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FD52B48, &qword_25F3084D0);
        if (swift_dynamicCast())
        {
          v30 = v49;
          v29[3] = &type metadata for UnderlyingErrorWrapper;
          v29[4] = sub_25F201634();
          v31 = swift_allocObject();
          *v29 = v31;
          v31[5] = &type metadata for HumanReadableNSError;
          v31[6] = sub_25F2015E0();
          v31[2] = v18;
          swift_getErrorValue();
          v32 = v47;
          v33 = v48;
          v34 = v18;
          Error.humanReadable.getter(v32, v33, (v31 + 7));

          return;
        }
      }

      else
      {
      }
    }

    else
    {

      v29 = v44;
    }

    v29[3] = &type metadata for HumanReadableNSError;
    v29[4] = sub_25F2015E0();
    *v29 = v18;
  }

  else
  {
    v13(v9, v3, a1);
    v35 = sub_25F30650C();
    if (v35)
    {
      v36 = v35;
      (*(v6 + 8))(v9, a1);
    }

    else
    {
      v36 = swift_allocError();
      (*(v6 + 32))(v37, v9, a1);
    }

    v38 = v44;
    swift_getErrorValue();
    v39 = v45;
    v40 = v46;
    v53 = v46;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v52);
    (*(*(v40 - 8) + 16))(boxed_opaque_existential_1, v39, v40);
    __swift_project_boxed_opaque_existential_1(&v52, v53);
    DynamicType = swift_getDynamicType();
    __swift_destroy_boxed_opaque_existential_1(&v52);
    v38[3] = &type metadata for HumanReadableSwiftError;
    v38[4] = sub_25F201688();

    *v38 = v36;
    v38[1] = DynamicType;
  }
}

void HumanReadableError.withUnderlying(_:)(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v5 = v4;
  if (a1)
  {
    a4[3] = &type metadata for UnderlyingErrorWrapper;
    a4[4] = sub_25F201634();
    v10 = swift_allocObject();
    *a4 = v10;
    v10[5] = a2;
    v10[6] = a3;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v10 + 2);
    (*(*(a2 - 8) + 16))(boxed_opaque_existential_1, v5, a2);
    swift_getErrorValue();
    v12 = a1;
    Error.humanReadable.getter(v15, (v10 + 7));
  }

  else
  {
    a4[3] = a2;
    a4[4] = a3;
    v13 = __swift_allocate_boxed_opaque_existential_1(a4);
    v14 = *(*(a2 - 8) + 16);

    v14(v13, v5, a2);
  }
}

PreviewsFoundationOS::HumanReadableErrorSeverity_optional __swiftcall HumanReadableErrorSeverity.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_25F3063BC();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t HumanReadableErrorSeverity.rawValue.getter()
{
  if (*v0)
  {
    return 1868983913;
  }

  else
  {
    return 0x726F727265;
  }
}

uint64_t sub_25F1FC338(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 1868983913;
  }

  else
  {
    v3 = 0x726F727265;
  }

  if (v2)
  {
    v4 = 0xE500000000000000;
  }

  else
  {
    v4 = 0xE400000000000000;
  }

  if (*a2)
  {
    v5 = 1868983913;
  }

  else
  {
    v5 = 0x726F727265;
  }

  if (*a2)
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_25F30659C();
  }

  return v8 & 1;
}

uint64_t sub_25F1FC3D4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEE00656C74695465;
  v3 = 0x756C615668676968;
  v4 = a1;
  if (a1 <= 3u)
  {
    v13 = 0x65756C6156776F6CLL;
    v14 = 0xED0000656C746954;
    if (a1 != 2)
    {
      v13 = 0x6E6F697469646461;
      v14 = 0xEE006F666E496C61;
    }

    v15 = 0x800000025F317270;
    v16 = 0xD000000000000014;
    if (a1)
    {
      v16 = 0x756C615668676968;
      v15 = 0xEE00656C74695465;
    }

    if (a1 <= 1u)
    {
      v11 = v16;
    }

    else
    {
      v11 = v13;
    }

    if (v4 <= 1)
    {
      v12 = v15;
    }

    else
    {
      v12 = v14;
    }
  }

  else
  {
    v5 = 0xE800000000000000;
    v6 = 0x7974697265766573;
    v7 = 0x800000025F3172F0;
    v8 = 0x65766974614E7369;
    if (a1 == 7)
    {
      v8 = 0xD000000000000010;
    }

    else
    {
      v7 = 0xE800000000000000;
    }

    if (a1 != 6)
    {
      v6 = v8;
      v5 = v7;
    }

    v9 = 0x800000025F3172C0;
    v10 = 0xD000000000000015;
    if (a1 != 4)
    {
      v10 = 0x736E6F6974706FLL;
      v9 = 0xE700000000000000;
    }

    if (a1 <= 5u)
    {
      v11 = v10;
    }

    else
    {
      v11 = v6;
    }

    if (v4 <= 5)
    {
      v12 = v9;
    }

    else
    {
      v12 = v5;
    }
  }

  if (a2 <= 3u)
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v2 = 0xED0000656C746954;
        if (v11 != 0x65756C6156776F6CLL)
        {
          goto LABEL_50;
        }
      }

      else
      {
        v2 = 0xEE006F666E496C61;
        if (v11 != 0x6E6F697469646461)
        {
          goto LABEL_50;
        }
      }

      goto LABEL_47;
    }

    if (!a2)
    {
      v2 = 0x800000025F317270;
      if (v11 != 0xD000000000000014)
      {
        goto LABEL_50;
      }

      goto LABEL_47;
    }
  }

  else
  {
    if (a2 <= 5u)
    {
      if (a2 == 4)
      {
        v2 = 0x800000025F3172C0;
        if (v11 != 0xD000000000000015)
        {
          goto LABEL_50;
        }
      }

      else
      {
        v2 = 0xE700000000000000;
        if (v11 != 0x736E6F6974706FLL)
        {
          goto LABEL_50;
        }
      }

      goto LABEL_47;
    }

    if (a2 == 6)
    {
      v2 = 0xE800000000000000;
      if (v11 != 0x7974697265766573)
      {
        goto LABEL_50;
      }

      goto LABEL_47;
    }

    if (a2 == 7)
    {
      v2 = 0x800000025F3172F0;
      if (v11 != 0xD000000000000010)
      {
        goto LABEL_50;
      }

      goto LABEL_47;
    }

    v2 = 0xE800000000000000;
    v3 = 0x65766974614E7369;
  }

  if (v11 != v3)
  {
LABEL_50:
    v17 = sub_25F30659C();
    goto LABEL_51;
  }

LABEL_47:
  if (v12 != v2)
  {
    goto LABEL_50;
  }

  v17 = 1;
LABEL_51:

  return v17 & 1;
}

uint64_t sub_25F1FC6E4()
{
  sub_25F30671C();
  sub_25F304F0C();

  return sub_25F30676C();
}

uint64_t sub_25F1FC75C(uint64_t a1)
{
  sub_25F304F0C();
}

uint64_t sub_25F1FC7C0(uint64_t a1, unsigned __int8 a2)
{
  sub_25F304F0C();
}

uint64_t sub_25F1FC944(uint64_t a1)
{
  sub_25F30671C();
  sub_25F304F0C();

  return sub_25F30676C();
}

void sub_25F1FC9C4(uint64_t *a1@<X8>)
{
  v2 = 1868983913;
  if (!*v1)
  {
    v2 = 0x726F727265;
  }

  v3 = 0xE500000000000000;
  if (*v1)
  {
    v3 = 0xE400000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

void *sub_25F1FCA78@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_25F1FCAA4@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

void *sub_25F1FCB54@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t HumanReadableError.unwrapped.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = *(a1 - 8);
  MEMORY[0x28223BE20](a1);
  v9 = *(v7 + 16);
  v9(&v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v3, a1);
  if (swift_dynamicCast())
  {
    v17[2] = v14;
    v17[3] = v15;
    v17[4] = v16;
    v17[0] = v12;
    v17[1] = v13;
    sub_25F1BF03C(v17, a3);
    return sub_25F2016DC(v17);
  }

  else
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v12 = 0u;
    sub_25F1AF698(&v12, &qword_27FD54860, &qword_25F30BAE8);
    a3[3] = a1;
    a3[4] = a2;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a3);
    return (v9)(boxed_opaque_existential_1, v3, a1);
  }
}

double HumanReadableError.underlying.getter@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  MEMORY[0x28223BE20](a1);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (swift_dynamicCast())
  {
    v12[0] = v8;
    v12[1] = v9;
    v12[2] = v10;
    v11[0] = v6;
    v11[1] = v7;
    sub_25F1BF03C(v12 + 8, a2);
    sub_25F2016DC(v11);
  }

  else
  {
    v9 = 0u;
    v10 = 0u;
    v7 = 0u;
    v8 = 0u;
    v6 = 0u;
    sub_25F1AF698(&v6, &qword_27FD54860, &qword_25F30BAE8);
    *(a2 + 32) = 0;
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

uint64_t HumanReadableError.effectiveTitle.getter(uint64_t a1, uint64_t a2)
{
  result = (*(a2 + 24))();
  if (!v5)
  {
    return (*(a2 + 32))(a1, a2);
  }

  return result;
}

void *HumanReadableError.effectiveOptions.getter@<X0>(uint64_t a1@<X1>, void *a2@<X8>)
{
  result = (*(a1 + 56))(&v5);
  if (v6)
  {
    v4 = 0;
  }

  else
  {
    v4 = v5;
  }

  *a2 = v4;
  return result;
}

id HumanReadableError.serializableNSError.getter(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD54868, &qword_25F30BAF0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25F3081E0;
  *(inited + 32) = sub_25F304E0C();
  *(inited + 40) = v5;
  v6 = (*(a2 + 24))(a1, a2);
  if (v7)
  {
    *(inited + 72) = MEMORY[0x277D837D0];
  }

  else
  {
    v6 = (*(a2 + 32))(a1, a2);
    *(inited + 72) = MEMORY[0x277D837D0];
    if (!v7)
    {
      v7 = 0x800000025F318090;
      v6 = 0xD000000000000018;
    }
  }

  *(inited + 48) = v6;
  *(inited + 56) = v7;
  v8 = objc_opt_self();
  *(inited + 80) = 0xD000000000000014;
  *(inited + 88) = 0x800000025F3180B0;
  (*(a2 + 120))(&v13, a1, a2);
  v9 = v13;
  *(inited + 120) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD54870, &unk_25F30BAF8);
  *(inited + 96) = v9;
  sub_25F1B5EF0(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52C98, &qword_25F308150);
  swift_arrayDestroy();
  v10 = sub_25F304A5C();

  v11 = [v8 uv:v10 errorWithUserInfo:?];

  return v11;
}

uint64_t sub_25F1FD0C4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x72657070617277;
  }

  else
  {
    v3 = 1717658988;
  }

  if (v2)
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE700000000000000;
  }

  if (*a2)
  {
    v5 = 0x72657070617277;
  }

  else
  {
    v5 = 1717658988;
  }

  if (*a2)
  {
    v6 = 0xE700000000000000;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_25F30659C();
  }

  return v8 & 1;
}

uint64_t sub_25F1FD164()
{
  sub_25F30671C();
  sub_25F304F0C();

  return sub_25F30676C();
}

uint64_t sub_25F1FD1E0(uint64_t a1)
{
  sub_25F304F0C();
}

uint64_t sub_25F1FD248(uint64_t a1)
{
  sub_25F30671C();
  sub_25F304F0C();

  return sub_25F30676C();
}

void sub_25F1FD2CC(uint64_t *a1@<X8>)
{
  v2 = 1717658988;
  if (*v1)
  {
    v2 = 0x72657070617277;
  }

  v3 = 0xE400000000000000;
  if (*v1)
  {
    v3 = 0xE700000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_25F1FD304(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
    if (a4)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD54680, &qword_25F3122C0);
      v10 = swift_allocObject();
      *(v10 + 16) = xmmword_25F3081E0;
      v11 = MEMORY[0x277D837D0];
      *(v10 + 56) = MEMORY[0x277D837D0];
      v12 = sub_25F1F7190();
      *(v10 + 32) = a1;
      *(v10 + 40) = a2;
      *(v10 + 96) = v11;
      *(v10 + 104) = v12;
      *(v10 + 64) = v12;
      *(v10 + 72) = a3;
      *(v10 + 80) = a4;

      return sub_25F304E3C();
    }

    else
    {

      return a1;
    }
  }

  else
  {

    return a3;
  }
}

uint64_t sub_25F1FD3F8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x69796C7265646E75;
  }

  else
  {
    v3 = 1852399981;
  }

  if (v2)
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xEA0000000000676ELL;
  }

  if (*a2)
  {
    v5 = 0x69796C7265646E75;
  }

  else
  {
    v5 = 1852399981;
  }

  if (*a2)
  {
    v6 = 0xEA0000000000676ELL;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_25F30659C();
  }

  return v8 & 1;
}

uint64_t sub_25F1FD49C()
{
  sub_25F30671C();
  sub_25F304F0C();

  return sub_25F30676C();
}

uint64_t sub_25F1FD51C(uint64_t a1)
{
  sub_25F304F0C();
}

uint64_t sub_25F1FD588(uint64_t a1)
{
  sub_25F30671C();
  sub_25F304F0C();

  return sub_25F30676C();
}

uint64_t sub_25F1FD610@<X0>(char *a3@<X8>)
{
  v4 = sub_25F3063BC();

  if (v4 == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  if (!v4)
  {
    v6 = 0;
  }

  *a3 = v6;
  return result;
}

void sub_25F1FD66C(uint64_t *a1@<X8>)
{
  v2 = 1852399981;
  if (*v1)
  {
    v2 = 0x69796C7265646E75;
  }

  v3 = 0xE400000000000000;
  if (*v1)
  {
    v3 = 0xEA0000000000676ELL;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_25F1FD6A8()
{
  if (*v0)
  {
    return 0x69796C7265646E75;
  }

  else
  {
    return 1852399981;
  }
}

uint64_t sub_25F1FD6E0(void *a1)
{
  v2 = a1[3];
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v2);
  (*(v3 + 120))(&v18, v2, v3);
  v4 = a1[8];
  v5 = a1[9];
  __swift_project_boxed_opaque_existential_1(a1 + 5, v4);
  (*(v5 + 120))(&v17, v4, v5);
  v6 = v18;
  v7 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD54938, &unk_25F3103B0);
  inited = swift_initStackObject();
  v9 = inited;
  *(inited + 16) = xmmword_25F3081F0;
  *(inited + 32) = 0x707954726F727265;
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 80) = &protocol witness table for String;
  *(inited + 40) = 0xE900000000000065;
  *(inited + 48) = 0x72657070617277;
  *(inited + 56) = 0xE700000000000000;
  *(inited + 88) = 1852399981;
  *(inited + 96) = 0xE400000000000000;
  if (v6)
  {
    v10 = &protocol witness table for PropertyList;
    v11 = &type metadata for PropertyList;
  }

  else
  {
    v11 = 0;
    v10 = 0;
    *(inited + 112) = 0;
    *(inited + 120) = 0;
  }

  *(inited + 104) = v6;
  *(inited + 128) = v11;
  *(inited + 136) = v10;
  *(inited + 144) = 0x69796C7265646E75;
  *(inited + 152) = 0xEA0000000000676ELL;
  if (v7)
  {
    v12 = &protocol witness table for PropertyList;
    v13 = &type metadata for PropertyList;
  }

  else
  {
    v13 = 0;
    v12 = 0;
    *(inited + 168) = 0;
    *(inited + 176) = 0;
  }

  *(inited + 160) = v7;
  *(inited + 184) = v13;
  *(inited + 192) = v12;

  v14 = sub_25F1B58D4(v9);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52C88, &qword_25F308140);
  swift_arrayDestroy();
  v15 = sub_25F267FCC(v14);

  return v15;
}

uint64_t sub_25F1FD900@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v11 = &type metadata for UnderlyingErrorWrapper.Key;
  v12 = &off_287160630;
  LOBYTE(v10) = 0;
  sub_25F1FDD24(&v10, v4, v9);
  if (v2)
  {

    return __swift_destroy_boxed_opaque_existential_1(&v10);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(&v10);
    v5 = *&v9[0];
    v11 = &type metadata for UnderlyingErrorWrapper.Key;
    v12 = &off_287160630;
    LOBYTE(v10) = 1;
    sub_25F1FDD24(&v10, v4, v9);

    __swift_destroy_boxed_opaque_existential_1(&v10);
    v6 = *&v9[0];
    *&v9[0] = v5;
    unarchiveHumanReadableError(from:)(v9, &v10);

    v8 = v6;
    unarchiveHumanReadableError(from:)(&v8, v9);

    sub_25F1A42F8(&v10, a2);
    return sub_25F1A42F8(v9, a2 + 40);
  }
}

double sub_25F1FDA48(void *a1, uint64_t a2)
{
  v5 = a1[3];
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v5);
  v7 = (*(v6 + 8))(v5, v6);
  if (!*(a2 + 16))
  {

    goto LABEL_5;
  }

  v9 = sub_25F219234(v7, v8);
  v11 = v10;

  if ((v11 & 1) == 0)
  {
LABEL_5:
    sub_25F202604();
    swift_allocError();
    v14 = v13;
    *v13 = a2;
    sub_25F1BF03C(a1, (v13 + 1));
    *(v14 + 112) = 0;
    swift_willThrow();

    return v2;
  }

  sub_25F1B7118(*(a2 + 56) + 32 * v9, v16);
  sub_25F1B707C(v16, v17);
  sub_25F200D40(v17, a1, a2);
  v2 = v12;
  __swift_destroy_boxed_opaque_existential_1(v17);
  return v2;
}

uint64_t sub_25F1FDB80(void *a1, uint64_t a2)
{
  v5 = a1[3];
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v5);
  v7 = (*(v6 + 8))(v5, v6);
  if (!*(a2 + 16))
  {

    goto LABEL_7;
  }

  v9 = sub_25F219234(v7, v8);
  v11 = v10;

  if ((v11 & 1) == 0)
  {
LABEL_7:
    sub_25F202604();
    swift_allocError();
    v15 = v14;
    *v14 = a2;
    sub_25F1BF03C(a1, (v14 + 1));
    *(v15 + 112) = 0;
    swift_willThrow();

    return a2;
  }

  sub_25F1B7118(*(a2 + 56) + 32 * v9, v17);
  sub_25F1B707C(v17, v18);
  sub_25F1BF03C(a1, v17);
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  sub_25F1A42F8(v17, v12 + 24);
  sub_25F1B7118(v18, v17);

  v13 = sub_25F254D18(v17, sub_25F202658, v12);
  if (!v2)
  {
    a2 = sub_25F2013BC(v13);
  }

  __swift_destroy_boxed_opaque_existential_1(v18);
  return a2;
}

uint64_t sub_25F1FDD24@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = a1[3];
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v6);
  v8 = (*(v7 + 8))(v6, v7);
  if (*(a2 + 16))
  {
    v10 = sub_25F219234(v8, v9);
    v12 = v11;

    if (v12)
    {
      sub_25F1B7118(*(a2 + 56) + 32 * v10, v16);
      sub_25F1B707C(v16, v17);
      sub_25F201028(v17, a1, a2, a3);
      return __swift_destroy_boxed_opaque_existential_1(v17);
    }
  }

  else
  {
  }

  sub_25F202604();
  swift_allocError();
  v15 = v14;
  *v14 = a2;
  sub_25F1BF03C(a1, (v14 + 1));
  *(v15 + 112) = 0;
  swift_willThrow();
}

uint64_t sub_25F1FDE58(void *a1, uint64_t a2)
{
  v4 = a1[3];
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v4);
  v6 = (*(v5 + 8))(v4, v5);
  if (!*(a2 + 16))
  {

    goto LABEL_5;
  }

  v8 = sub_25F219234(v6, v7);
  v10 = v9;

  if ((v10 & 1) == 0)
  {
LABEL_5:
    sub_25F202604();
    swift_allocError();
    v12 = v11;
    *v11 = a2;
    sub_25F1BF03C(a1, (v11 + 1));
    *(v12 + 112) = 0;
    swift_willThrow();

    return a2;
  }

  sub_25F1B7118(*(a2 + 56) + 32 * v8, v14);
  sub_25F1B707C(v14, v15);
  a2 = sub_25F2012C8(v15, a1, a2);
  __swift_destroy_boxed_opaque_existential_1(v15);
  return a2;
}

uint64_t sub_25F1FDF90@<X0>(void *a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X8>)
{
  v6 = a1[3];
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v6);
  v8 = (*(v7 + 8))(v6, v7);
  if (*(a2 + 16))
  {
    v10 = sub_25F219234(v8, v9);
    v12 = v11;

    if (v12)
    {
      sub_25F1B7118(*(a2 + 56) + 32 * v10, v16);
      sub_25F1B707C(v16, v17);
      sub_25F2011B4(v17, a1, a2, a3);
      return __swift_destroy_boxed_opaque_existential_1(v17);
    }
  }

  else
  {
  }

  sub_25F202604();
  swift_allocError();
  v15 = v14;
  *v14 = a2;
  sub_25F1BF03C(a1, (v14 + 1));
  *(v15 + 112) = 0;
  swift_willThrow();
}

uint64_t sub_25F1FE0C4(void *a1, uint64_t a2)
{
  v5 = a1[3];
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v5);
  v7 = (*(v6 + 8))(v5, v6);
  if (!*(a2 + 16))
  {

    goto LABEL_6;
  }

  v9 = sub_25F219234(v7, v8);
  v11 = v10;

  if ((v11 & 1) == 0)
  {
LABEL_6:
    sub_25F202604();
    swift_allocError();
    v15 = v14;
    *v14 = a2;
    sub_25F1BF03C(a1, (v14 + 1));
    *(v15 + 112) = 0;
    swift_willThrow();

    return a2;
  }

  sub_25F1B7118(*(a2 + 56) + 32 * v9, v22);
  sub_25F1B707C(v22, v23);
  v12 = sub_25F2012C8(v23, a1, a2);
  if (!v2)
  {
    a2 = v12;
    v17 = v13;

    v18 = sub_25F3063BC();
    if (v18)
    {
      if (v18 != 1)
      {
        sub_25F202604();
        swift_allocError();
        v20 = v19;
        v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD54978, &unk_25F310BC0);
        *v20 = &type metadata for ErrorType;
        *(v20 + 56) = MEMORY[0x277D837D0];
        *(v20 + 24) = v21;
        *(v20 + 32) = a2;
        *(v20 + 40) = v17;
        *(v20 + 112) = 3;
        swift_willThrow();

        goto LABEL_4;
      }

      a2 = 1;
    }

    else
    {
      a2 = 0;
    }

    swift_bridgeObjectRelease_n();
    __swift_destroy_boxed_opaque_existential_1(v23);
    return a2;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v23);
  return a2;
}

void *unarchiveHumanReadableError(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  *(&v18 + 1) = MEMORY[0x277D837D0];
  *&v19 = &protocol witness table for String;
  *&v17 = 0x707954726F727265;
  *(&v17 + 1) = 0xE900000000000065;
  v5 = sub_25F1FE0C4(&v17, v4);
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(&v17);
  }

  v7 = v5;
  __swift_destroy_boxed_opaque_existential_1(&v17);
  if (v7)
  {
    a2[3] = &type metadata for UnderlyingErrorWrapper;
    a2[4] = sub_25F201634();
    v8 = swift_allocObject();
    *a2 = v8;
    v16 = v4;

    result = sub_25F1FD900(&v16, &v17);
    v9 = v20;
    v8[3] = v19;
    v8[4] = v9;
    v8[5] = v21;
    v10 = v18;
    v8[1] = v17;
    v8[2] = v10;
  }

  else
  {
    a2[3] = &type metadata for RemoteHumanReadableError;
    a2[4] = sub_25F20175C();
    v11 = swift_allocObject();
    *a2 = v11;
    *&v17 = v4;

    result = sub_25F1FF270(&v17, v14);
    v12 = v14[3];
    v11[3] = v14[2];
    v11[4] = v12;
    v11[5] = v15[0];
    *(v11 + 92) = *(v15 + 12);
    v13 = v14[1];
    v11[1] = v14[0];
    v11[2] = v13;
  }

  return result;
}

unint64_t sub_25F1FE44C(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x756C615668676968;
    v6 = 0x65756C6156776F6CLL;
    if (a1 != 2)
    {
      v6 = 0x6E6F697469646461;
    }

    if (!a1)
    {
      v5 = 0xD000000000000014;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x7974697265766573;
    v2 = 0x65766974614E7369;
    if (a1 == 7)
    {
      v2 = 0xD000000000000010;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0xD000000000000015;
    if (a1 != 4)
    {
      v3 = 0x736E6F6974706FLL;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_25F1FE59C()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  result = (*(v2 + 24))(v1, v2);
  if (!v4)
  {
    v5 = v0[8];
    v6 = v0[9];
    __swift_project_boxed_opaque_existential_1(v0 + 5, v5);
    return (*(v6 + 24))(v5, v6);
  }

  return result;
}

uint64_t sub_25F1FE628()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  result = (*(v2 + 32))(v1, v2);
  if (!v4)
  {
    v5 = v0[8];
    v6 = v0[9];
    __swift_project_boxed_opaque_existential_1(v0 + 5, v5);
    return (*(v6 + 32))(v5, v6);
  }

  return result;
}

uint64_t sub_25F1FE6B4()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  v3 = (*(v2 + 40))(v1, v2);
  v5 = v4;
  v6 = v0[8];
  v7 = v0[9];
  __swift_project_boxed_opaque_existential_1(v0 + 5, v6);
  v8 = (*(v7 + 40))(v6, v7);
  v10 = sub_25F1FD304(v3, v5, v8, v9, 0x4025203A4025, 0xE600000000000000);

  return v10;
}

void *sub_25F1FE794@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[3];
  v4 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  result = (*(v4 + 56))(&v8, v3, v4);
  if (v9)
  {
    v6 = v1[8];
    v7 = v1[9];
    __swift_project_boxed_opaque_existential_1(v1 + 5, v6);
    return (*(v7 + 56))(v6, v7);
  }

  else
  {
    *a1 = v8;
    *(a1 + 8) = 0;
  }

  return result;
}

void *sub_25F1FE850@<X0>(_BYTE *a1@<X8>)
{
  v3 = v1[3];
  v4 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  result = (*(v4 + 64))(&v8, v3, v4);
  if (v8 == 2)
  {
    v6 = v1[8];
    v7 = v1[9];
    __swift_project_boxed_opaque_existential_1(v1 + 5, v6);
    return (*(v7 + 64))(v6, v7);
  }

  else
  {
    *a1 = v8;
  }

  return result;
}

uint64_t sub_25F1FE908(uint64_t a1)
{
  v3 = v1[3];
  v4 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  (*(v4 + 72))(a1, v3, v4);
  v5 = v1[8];
  v6 = v1[9];
  __swift_project_boxed_opaque_existential_1(v1 + 5, v5);
  return (*(v6 + 72))(a1, v5, v6);
}

uint64_t sub_25F1FE9A4()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  if ((*(v2 + 80))(v1, v2))
  {
    return 1;
  }

  v4 = v0[8];
  v5 = v0[9];
  __swift_project_boxed_opaque_existential_1(v0 + 5, v4);
  return (*(v5 + 80))(v4, v5) & 1;
}

uint64_t sub_25F1FEA3C()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  v7 = (*(v2 + 88))(v1, v2);
  MEMORY[0x25F8D7130](46, 0xE100000000000000);
  v3 = v0[8];
  v4 = v0[9];
  __swift_project_boxed_opaque_existential_1(v0 + 5, v3);
  v5 = (*(v4 + 88))(v3, v4);
  MEMORY[0x25F8D7130](v5);

  return v7;
}

uint64_t sub_25F1FEAF8()
{
  v1 = v0[8];
  v2 = v0[9];
  __swift_project_boxed_opaque_existential_1(v0 + 5, v1);
  return (*(v2 + 96))(v1, v2) & 1;
}

uint64_t sub_25F1FEB50()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  return (*(v2 + 128))(v1, v2) & 1;
}

void *sub_25F1FEBA8@<X0>(void *a1@<X8>)
{
  v3 = sub_25F1FD6E0(v1);
  result = sub_25F252514(v3, &v5);
  *a1 = v5;
  return result;
}

uint64_t sub_25F1FEC00()
{
  v1 = v0[8];
  v2 = v0[9];
  __swift_project_boxed_opaque_existential_1(v0 + 5, v1);
  (*(v2 + 112))(v1, v2);
  v3 = v0[3];
  v4 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v3);
  v8 = (*(v4 + 112))(v3, v4);

  MEMORY[0x25F8D7130](0xD000000000000026, 0x800000025F3180D0);

  v5._countAndFlagsBits = 2105468;
  v5._object = 0xE300000000000000;
  v6 = String.prefixingEachLine(with:startingOnLine:)(v5, 0);

  MEMORY[0x25F8D7130](v6._countAndFlagsBits, v6._object);

  return v8;
}

uint64_t sub_25F1FED44()
{
  v1 = *v0;
  sub_25F30671C();
  sub_25F1FC7C0(v3, v1);
  return sub_25F30676C();
}

uint64_t sub_25F1FED94(uint64_t a1)
{
  v2 = *v1;
  sub_25F30671C();
  sub_25F1FC7C0(v4, v2);
  return sub_25F30676C();
}

unint64_t sub_25F1FEDD8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_25F2028DC(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_25F1FEE08@<X0>(unint64_t *a1@<X8>)
{
  result = sub_25F1FE44C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_25F1FEE3C(__int128 *a1)
{
  v41 = *a1;
  v2 = *(a1 + 2);
  v1 = *(a1 + 3);
  v4 = *(a1 + 4);
  v3 = *(a1 + 5);
  v6 = *(a1 + 6);
  v5 = *(a1 + 7);
  v8 = *(a1 + 8);
  v7 = *(a1 + 9);
  v35 = *(a1 + 10);
  v36 = *(a1 + 88);
  v37 = *(a1 + 89);
  v38 = *(a1 + 90);
  v39 = *(a1 + 91);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD54938, &unk_25F3103B0);
  inited = swift_initStackObject();
  *(inited + 32) = 0xD000000000000014;
  *(inited + 16) = xmmword_25F30BAB0;
  *(inited + 40) = 0x800000025F317270;
  v10 = MEMORY[0x277D837D0];
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 80) = &protocol witness table for String;
  *(inited + 48) = v41;
  strcpy((inited + 88), "highValueTitle");
  *(inited + 103) = -18;
  if (v1)
  {
    v11 = &protocol witness table for String;
    v12 = MEMORY[0x277D837D0];
    v13 = v1;
  }

  else
  {
    v2 = 0;
    v13 = 0;
    v12 = 0;
    v11 = 0;
    *(inited + 120) = 0;
  }

  *(inited + 104) = v2;
  *(inited + 112) = v13;
  *(inited + 128) = v12;
  *(inited + 136) = v11;
  strcpy((inited + 144), "lowValueTitle");
  *(inited + 158) = -4864;
  if (v3)
  {
    v14 = &protocol witness table for String;
    v15 = MEMORY[0x277D837D0];
    v16 = v3;
  }

  else
  {
    v4 = 0;
    v16 = 0;
    v15 = 0;
    v14 = 0;
    *(inited + 176) = 0;
  }

  *(inited + 160) = v4;
  *(inited + 168) = v16;
  *(inited + 184) = v15;
  *(inited + 192) = v14;
  strcpy((inited + 200), "additionalInfo");
  *(inited + 215) = -18;
  if (v5)
  {
    v17 = &protocol witness table for String;
    v18 = MEMORY[0x277D837D0];
    v19 = v5;
  }

  else
  {
    v6 = 0;
    v19 = 0;
    v18 = 0;
    v17 = 0;
    *(inited + 232) = 0;
  }

  *(inited + 216) = v6;
  *(inited + 224) = v19;
  *(inited + 240) = v18;
  *(inited + 248) = v17;
  *(inited + 256) = 0xD000000000000015;
  *(inited + 264) = 0x800000025F3172C0;
  if (v7)
  {
    v20 = &protocol witness table for String;
    v21 = MEMORY[0x277D837D0];
    v22 = v7;
  }

  else
  {
    v8 = 0;
    v22 = 0;
    v21 = 0;
    v20 = 0;
    *(inited + 288) = 0;
  }

  *(inited + 272) = v8;
  *(inited + 280) = v22;
  *(inited + 296) = v21;
  *(inited + 304) = v20;
  *(inited + 312) = 0x736E6F6974706FLL;
  *(inited + 320) = 0xE700000000000000;
  if (v36)
  {
    v23 = 0;
    v24 = 0;
    v25 = 0;
    *(inited + 336) = 0;
    *(inited + 344) = 0;
  }

  else
  {
    v25 = &protocol witness table for Int;
    v24 = MEMORY[0x277D83B88];
    v23 = v35;
  }

  *(inited + 328) = v23;
  *(inited + 352) = v24;
  *(inited + 360) = v25;
  *(inited + 368) = 0x7974697265766573;
  *(inited + 376) = 0xE800000000000000;
  if (v37 == 2)
  {
    v26 = 0;
    v27 = 0;
    v28 = 0;
    v29 = 0;
    *(inited + 400) = 0;
  }

  else
  {
    v26 = 1868983913;
    if ((v37 & 1) == 0)
    {
      v26 = 0x726F727265;
    }

    v27 = 0xE500000000000000;
    if (v37)
    {
      v27 = 0xE400000000000000;
    }

    v29 = &protocol witness table for String;
    v28 = MEMORY[0x277D837D0];
  }

  *(inited + 384) = v26;
  *(inited + 392) = v27;
  *(inited + 408) = v28;
  *(inited + 416) = v29;
  *(inited + 424) = 0xD000000000000010;
  *(inited + 432) = 0x800000025F3172F0;
  v30 = MEMORY[0x277D839B0];
  *(inited + 464) = MEMORY[0x277D839B0];
  *(inited + 472) = &protocol witness table for Bool;
  *(inited + 440) = v38;
  *(inited + 480) = 0x65766974614E7369;
  *(inited + 488) = 0xE800000000000000;
  *(inited + 520) = v30;
  *(inited + 528) = &protocol witness table for Bool;
  *(inited + 496) = v39;
  *(inited + 536) = 0x707954726F727265;
  *(inited + 544) = 0xE900000000000065;
  *(inited + 576) = v10;
  *(inited + 584) = &protocol witness table for String;
  *(inited + 552) = 1717658988;
  *(inited + 560) = 0xE400000000000000;
  v31 = inited;
  sub_25F1E8C70(&v41, v40);

  v32 = sub_25F1B58D4(v31);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52C88, &qword_25F308140);
  swift_arrayDestroy();
  v33 = sub_25F267FCC(v32);

  return v33;
}

uint64_t sub_25F1FF270@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v31 = &type metadata for RemoteHumanReadableError.Key;
  LOBYTE(v29) = 0;
  v5 = sub_25F1FF638(&v29, v4);
  if (v2)
  {

    return __swift_destroy_boxed_opaque_existential_1(&v29);
  }

  else
  {
    v7 = v5;
    v8 = v6;
    __swift_destroy_boxed_opaque_existential_1(&v29);
    if (v8)
    {
      if ((sub_25F30505C() & 1) == 0)
      {
        v29 = 0x5D65746F6D65525BLL;
        v30 = 0xE900000000000020;
        MEMORY[0x25F8D7130](v7, v8);

        v7 = v29;
        v8 = v30;
      }
    }

    else
    {
      v8 = 0x800000025F3181B0;
      v7 = 0xD000000000000016;
    }

    v31 = &type metadata for RemoteHumanReadableError.Key;
    v32 = &off_287160640;
    LOBYTE(v29) = 1;
    v9 = sub_25F1FF638(&v29, v4);
    v11 = v10;
    __swift_destroy_boxed_opaque_existential_1(&v29);
    v31 = &type metadata for RemoteHumanReadableError.Key;
    v32 = &off_287160640;
    LOBYTE(v29) = 2;
    v25 = sub_25F1FF638(&v29, v4);
    v26 = v12;
    __swift_destroy_boxed_opaque_existential_1(&v29);
    v31 = &type metadata for RemoteHumanReadableError.Key;
    v32 = &off_287160640;
    LOBYTE(v29) = 3;
    v23 = sub_25F1FF638(&v29, v4);
    v24 = v13;
    __swift_destroy_boxed_opaque_existential_1(&v29);
    v31 = &type metadata for RemoteHumanReadableError.Key;
    v32 = &off_287160640;
    LOBYTE(v29) = 4;
    v21 = sub_25F1FF638(&v29, v4);
    v22 = v14;
    __swift_destroy_boxed_opaque_existential_1(&v29);
    v31 = &type metadata for RemoteHumanReadableError.Key;
    v32 = &off_287160640;
    LOBYTE(v29) = 5;
    sub_25F1FF740(&v29, v4, &v27);
    __swift_destroy_boxed_opaque_existential_1(&v29);
    v20 = v27;
    v19 = v28;
    v31 = &type metadata for RemoteHumanReadableError.Key;
    v32 = &off_287160640;
    LOBYTE(v29) = 6;
    sub_25F1FF844(&v29, v4, &v33);
    __swift_destroy_boxed_opaque_existential_1(&v29);
    v18 = v33;
    v31 = &type metadata for RemoteHumanReadableError.Key;
    v32 = &off_287160640;
    LOBYTE(v29) = 7;
    v17 = sub_25F1FF978(&v29, v4);
    __swift_destroy_boxed_opaque_existential_1(&v29);
    v31 = &type metadata for RemoteHumanReadableError.Key;
    v32 = &off_287160640;
    LOBYTE(v29) = 8;
    v15 = sub_25F1FF978(&v29, v4);

    result = __swift_destroy_boxed_opaque_existential_1(&v29);
    *a2 = v7;
    *(a2 + 8) = v8;
    *(a2 + 16) = v9;
    *(a2 + 24) = v11;
    *(a2 + 32) = v25;
    *(a2 + 40) = v26;
    *(a2 + 48) = v23;
    *(a2 + 56) = v24;
    *(a2 + 64) = v21;
    *(a2 + 72) = v22;
    *(a2 + 80) = v20;
    *(a2 + 88) = v19;
    *(a2 + 89) = v18;
    *(a2 + 90) = (v17 == 2) | v17 & 1;
    *(a2 + 91) = v15 & 1;
  }

  return result;
}

uint64_t sub_25F1FF638(void *a1, uint64_t a2)
{
  v5 = a1[3];
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v5);
  v7 = (*(v6 + 8))(v5, v6);
  if (!*(a2 + 16))
  {

    return 0;
  }

  v9 = sub_25F219234(v7, v8);
  v11 = v10;

  if ((v11 & 1) == 0)
  {
    return 0;
  }

  sub_25F1B7118(*(a2 + 56) + 32 * v9, v15);
  sub_25F1B707C(v15, v16);
  v12 = sub_25F2012C8(v16, a1, a2);
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v16);
  }

  v14 = v12;
  __swift_destroy_boxed_opaque_existential_1(v16);
  return v14;
}

uint64_t sub_25F1FF740@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = a1[3];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v7);
  v9 = (*(v8 + 8))(v7, v8);
  if (!*(a2 + 16))
  {

    goto LABEL_6;
  }

  v11 = sub_25F219234(v9, v10);
  v13 = v12;

  if ((v13 & 1) == 0)
  {
LABEL_6:
    *a3 = 0;
    *(a3 + 8) = 1;
    return result;
  }

  sub_25F1B7118(*(a2 + 56) + 32 * v11, v15);
  sub_25F1B707C(v15, v16);
  sub_25F200F2C(v16, a1, a2, a3);
  result = __swift_destroy_boxed_opaque_existential_1(v16);
  if (!v3)
  {
    *(a3 + 8) = 0;
  }

  return result;
}

uint64_t sub_25F1FF844@<X0>(void *a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v7 = a1[3];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v7);
  v9 = (*(v8 + 8))(v7, v8);
  if (!*(a2 + 16))
  {

    goto LABEL_6;
  }

  v11 = sub_25F219234(v9, v10);
  v13 = v12;

  if ((v13 & 1) == 0)
  {
LABEL_6:
    *a3 = 2;
    return result;
  }

  sub_25F1B7118(*(a2 + 56) + 32 * v11, v19);
  sub_25F1B707C(v19, v20);
  v15 = sub_25F2012C8(v20, a1, a2);
  if (v3)
  {
    return __swift_destroy_boxed_opaque_existential_1(v20);
  }

  v17 = v16;
  v18 = v15;

  sub_25F24DF30(v18, v17, a3);
  __swift_destroy_boxed_opaque_existential_1(v20);
}

uint64_t sub_25F1FF978(void *a1, uint64_t a2)
{
  v4 = a1[3];
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v4);
  v6 = (*(v5 + 8))(v4, v5);
  if (*(a2 + 16))
  {
    v8 = sub_25F219234(v6, v7);
    v10 = v9;

    if (v10)
    {
      sub_25F1B7118(*(a2 + 56) + 32 * v8, v13);
      sub_25F1B707C(v13, v14);
      v11 = sub_25F200E34(v14, a1, a2);
      __swift_destroy_boxed_opaque_existential_1(v14);
      return v11 & 1;
    }
  }

  else
  {
  }

  return 2;
}

uint64_t sub_25F1FFA70()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t sub_25F1FFAA0()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t sub_25F1FFAD0()
{
  v1 = *(v0 + 64);

  return v1;
}

void sub_25F1FFB00(uint64_t a1@<X8>)
{
  v2 = *(v1 + 88);
  *a1 = *(v1 + 80);
  *(a1 + 8) = v2;
}

void *sub_25F1FFB30@<X0>(void *a1@<X8>)
{
  v3 = v1[3];
  v8[2] = v1[2];
  v8[3] = v3;
  v9[0] = v1[4];
  *(v9 + 12) = *(v1 + 76);
  v4 = v1[1];
  v8[0] = *v1;
  v8[1] = v4;
  v5 = sub_25F1FEE3C(v8);
  result = sub_25F252514(v5, &v7);
  *a1 = v7;
  return result;
}

uint64_t sub_25F1FFBD8()
{
  v0 = sub_25F30685C();
  MEMORY[0x25F8D7130](v0);

  MEMORY[0x25F8D7130](8250, 0xE200000000000000);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FD52B48, &qword_25F3084D0);
  sub_25F30619C();
  return 0;
}

void sub_25F1FFC94(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52E50, &qword_25F3084A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25F3081F0;
  *(inited + 32) = sub_25F304E0C();
  v30 = inited + 32;
  *(inited + 40) = v3;
  *(inited + 48) = sub_25F304E0C();
  *(inited + 56) = v4;
  *(inited + 64) = sub_25F304E0C();
  *(inited + 72) = v5;
  v6 = [a1 domain];
  v7 = sub_25F304E0C();
  v9 = v8;

  *&v35 = v7;
  *(&v35 + 1) = v9;
  MEMORY[0x25F8D7130](10272, 0xE200000000000000);
  *&v32 = [a1 code];
  v10 = sub_25F3064DC();
  MEMORY[0x25F8D7130](v10);

  MEMORY[0x25F8D7130](14889, 0xE200000000000000);
  *&v36[5] = v35;
  v11 = [a1 userInfo];
  v12 = sub_25F304A6C();

  v13 = 0;
  v14 = 1 << *(v12 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & *(v12 + 64);
  v17 = (v14 + 63) >> 6;
  if (!v16)
  {
    goto LABEL_7;
  }

  do
  {
    while (1)
    {
      v18 = v13;
LABEL_14:
      v21 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
      v22 = v21 | (v18 << 6);
      v23 = (*(v12 + 48) + 16 * v22);
      v25 = *v23;
      v24 = v23[1];
      sub_25F1B7118(*(v12 + 56) + 32 * v22, v31);
      *&v32 = v25;
      *(&v32 + 1) = v24;
      sub_25F1B707C(v31, &v33);

      v20 = v18;
LABEL_15:
      v35 = v32;
      *v36 = v33;
      *&v36[2] = v34;
      v26 = *(&v32 + 1);
      if (!*(&v32 + 1))
      {

        swift_setDeallocating();
        swift_arrayDestroy();
        return;
      }

      v27 = v35;
      v28 = sub_25F1B707C(v36, &v32);
      *&v31[0] = v27;
      *(&v31[0] + 1) = v26;
      MEMORY[0x28223BE20](v28);
      v29[2] = v31;
      if (sub_25F232C34(sub_25F1F8CB8, v29, inited))
      {
        break;
      }

      *&v31[0] = 0;
      *(&v31[0] + 1) = 0xE000000000000000;
      MEMORY[0x25F8D7130](4013322, 0xE300000000000000);
      MEMORY[0x25F8D7130](v27, v26);

      MEMORY[0x25F8D7130](8250, 0xE200000000000000);
      sub_25F30619C();
      MEMORY[0x25F8D7130](*&v31[0], *(&v31[0] + 1));

      __swift_destroy_boxed_opaque_existential_1(&v32);
      v13 = v20;
      if (!v16)
      {
        goto LABEL_7;
      }
    }

    __swift_destroy_boxed_opaque_existential_1(&v32);

    v13 = v20;
  }

  while (v16);
LABEL_7:
  if (v17 <= v13 + 1)
  {
    v19 = v13 + 1;
  }

  else
  {
    v19 = v17;
  }

  v20 = v19 - 1;
  while (1)
  {
    v18 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v18 >= v17)
    {
      v16 = 0;
      v34 = 0u;
      v33 = 0u;
      v32 = 0u;
      goto LABEL_15;
    }

    v16 = *(v12 + 64 + 8 * v18);
    ++v13;
    if (v16)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
}

uint64_t sub_25F2000A4(void *a1)
{
  v2 = [a1 domain];
  v3 = sub_25F304E0C();
  v5 = v4;

  MEMORY[0x25F8D7130](v3, v5);

  MEMORY[0x25F8D7130](46, 0xE100000000000000);
  [a1 code];
  v6 = sub_25F3064DC();
  MEMORY[0x25F8D7130](v6);

  return 0x2E726F727245534ELL;
}

uint64_t sub_25F200180()
{
  v1 = [*v0 localizedDescription];
  v2 = sub_25F304E0C();

  return v2;
}

uint64_t sub_25F2001D8()
{
  v1 = [*v0 localizedRecoverySuggestion];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_25F304E0C();

  return v3;
}

uint64_t sub_25F200258@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [a1 userInfo];
  v4 = sub_25F304A6C();

  if (*(v4 + 16) && (v5 = sub_25F219234(0xD000000000000014, 0x800000025F3180B0), (v6 & 1) != 0))
  {
    sub_25F1B7118(*(v4 + 56) + 32 * v5, v10);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD54870, &unk_25F30BAF8);
    result = swift_dynamicCast();
    if (result)
    {
      unarchiveHumanReadableError(from:)(&v12, v10);

      v8 = v10[1];
      v9 = v11;
      *a2 = v10[0];
      *(a2 + 16) = v8;
      *(a2 + 32) = v9;
      return result;
    }
  }

  else
  {
  }

  *(a2 + 32) = 0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  return result;
}

uint64_t Error.errorTypeDescription.getter(uint64_t a1)
{
  v3 = *(a1 - 8);
  MEMORY[0x28223BE20](a1);
  v5 = *(v3 + 16);
  v5(&v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v1, a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52D98, &unk_25F3083E0);
  if (swift_dynamicCast())
  {
    v6 = *(&v13 + 1);
    v7 = v14;
    __swift_project_boxed_opaque_existential_1(&v12, *(&v13 + 1));
    v8 = (*(v7 + 88))(v6, v7);
  }

  else
  {
    v14 = 0;
    v12 = 0u;
    v13 = 0u;
    sub_25F1AF698(&v12, &qword_27FD54840, &unk_25F30BAD8);
    *(&v13 + 1) = a1;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v12);
    v5(boxed_opaque_existential_1, v1, a1);
    __swift_project_boxed_opaque_existential_1(&v12, *(&v13 + 1));
    swift_getDynamicType();
    v8 = sub_25F30685C();
  }

  v10 = v8;
  __swift_destroy_boxed_opaque_existential_1(&v12);
  return v10;
}

PreviewsFoundationOS::UnhandledUnknownCaseError __swiftcall UnhandledUnknownCaseError.init()()
{
  *v0 = 0u;
  v0[1] = 0u;
  return result;
}

uint64_t UnhandledUnknownCaseError.additionalInfo.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t UnhandledUnknownCaseError.additionalInfo.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t UnhandledUnknownCaseError.additionalDiagnostics.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t UnhandledUnknownCaseError.additionalDiagnostics.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t sub_25F2007D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *v3;
  v5 = v3[1];
  v8 = v3[2];
  v7 = v3[3];
  v12[3] = a1;
  v9 = swift_allocObject();
  v12[0] = v9;
  v9[2] = v6;
  v9[3] = v5;
  v9[4] = v8;
  v9[5] = v7;
  __swift_project_boxed_opaque_existential_1(v12, a1);
  swift_getDynamicType();

  v10 = sub_25F30685C();
  __swift_destroy_boxed_opaque_existential_1(v12);
  return v10;
}

uint64_t LowValueError.lowValueTitle.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t LowValueError.additionalInfo.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t LowValueError.additionalInfo.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t LowValueError.additionalDiagnostics.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t LowValueError.additionalDiagnostics.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

void __swiftcall LowValueError.init(_:isPotentialCrash:)(PreviewsFoundationOS::LowValueError *__return_ptr retstr, Swift::String _, Swift::Bool_optional isPotentialCrash)
{
  retstr->additionalInfo = 0u;
  retstr->additionalDiagnostics = 0u;
  retstr->title = _;
  retstr->potentialCrash = isPotentialCrash;
}

uint64_t sub_25F200A64(uint64_t a1)
{
  v4 = *v1;
  v3 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v8 = v1[4];
  v7 = v1[5];
  v9 = *(v1 + 48);
  v13[3] = a1;
  v10 = swift_allocObject();
  v13[0] = v10;
  *(v10 + 16) = v4;
  *(v10 + 24) = v3;
  *(v10 + 32) = v6;
  *(v10 + 40) = v5;
  *(v10 + 48) = v8;
  *(v10 + 56) = v7;
  *(v10 + 64) = v9;
  __swift_project_boxed_opaque_existential_1(v13, a1);
  swift_getDynamicType();

  v11 = sub_25F30685C();
  __swift_destroy_boxed_opaque_existential_1(v13);
  return v11;
}

uint64_t sub_25F200B94(uint64_t a1)
{
  v4 = *v1;
  v3 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v10[3] = a1;
  v7 = swift_allocObject();
  v10[0] = v7;
  v7[2] = v4;
  v7[3] = v3;
  v7[4] = v6;
  v7[5] = v5;
  __swift_project_boxed_opaque_existential_1(v10, a1);
  swift_getDynamicType();

  v8 = sub_25F30685C();
  __swift_destroy_boxed_opaque_existential_1(v10);
  return v8;
}

uint64_t sub_25F200C60(uint64_t a1)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v10[3] = a1;
  v7 = swift_allocObject();
  v10[0] = v7;
  *(v7 + 16) = v3;
  *(v7 + 24) = v4;
  *(v7 + 32) = v5;
  *(v7 + 40) = v6;
  __swift_project_boxed_opaque_existential_1(v10, a1);
  swift_getDynamicType();
  sub_25F2024A8(v3, v4, v5, v6);
  v8 = sub_25F30685C();
  __swift_destroy_boxed_opaque_existential_1(v10);
  return v8;
}

uint64_t sub_25F200D40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_25F1B7118(a1, v10);
  v6 = MEMORY[0x277D85048];
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
    sub_25F202604();
    swift_allocError();
    v9 = v8;
    *v8 = a3;
    sub_25F1BF03C(a2, (v8 + 1));
    sub_25F1B7118(a1, (v9 + 6));
    v9[13] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD54958, &qword_25F30C4C8);
    v9[10] = v6;
    *(v9 + 112) = 1;
    swift_willThrow();
  }

  return result;
}

uint64_t sub_25F200E34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_25F1B7118(a1, v12);
  v6 = MEMORY[0x277D839B0];
  if (swift_dynamicCast())
  {
    v7 = v11;
  }

  else
  {
    sub_25F202604();
    swift_allocError();
    v9 = v8;
    *v8 = a3;
    sub_25F1BF03C(a2, (v8 + 1));
    sub_25F1B7118(a1, (v9 + 6));
    v9[13] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD54960, &qword_25F30C4D0);
    v9[10] = v6;
    *(v9 + 112) = 1;
    swift_willThrow();
  }

  return v7 & 1;
}

uint64_t sub_25F200F2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  sub_25F1B7118(a1, v13);
  v8 = MEMORY[0x277D83B88];
  result = swift_dynamicCast();
  if (result)
  {
    *a4 = v12;
  }

  else
  {
    sub_25F202604();
    swift_allocError();
    v11 = v10;
    *v10 = a3;
    sub_25F1BF03C(a2, (v10 + 1));
    sub_25F1B7118(a1, (v11 + 6));
    v11[13] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD54968, &qword_25F30C4D8);
    v11[10] = v8;
    *(v11 + 112) = 1;
    swift_willThrow();
  }

  return result;
}

uint64_t sub_25F201028@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  sub_25F1BF03C(a2, v21);
  sub_25F1B7118(a1, v20);
  sub_25F1B7118(v20, v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD54870, &unk_25F30BAF8);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1(v20);
    result = __swift_destroy_boxed_opaque_existential_1(v21);
    *a4 = v19[0];
  }

  else
  {
    v19[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD54970, &unk_25F30C4E0);
    v19[0] = &type metadata for PropertyList;
    *&v15[0] = a3;
    sub_25F1BF03C(v21, v15 + 8);
    sub_25F1B7118(v20, v16);
    sub_25F1B7118(v19, v17);
    v18 = 2;
    sub_25F202604();
    swift_allocError();
    v8 = v16[0];
    v10 = v15[0];
    v9 = v15[1];
    *(v11 + 32) = v15[2];
    *(v11 + 48) = v8;
    *v11 = v10;
    *(v11 + 16) = v9;
    v13 = v17[0];
    v12 = v17[1];
    v14 = v16[1];
    *(v11 + 112) = v18;
    *(v11 + 80) = v13;
    *(v11 + 96) = v12;
    *(v11 + 64) = v14;

    __swift_destroy_boxed_opaque_existential_1(v19);
    swift_willThrow();
    __swift_destroy_boxed_opaque_existential_1(v20);
    return __swift_destroy_boxed_opaque_existential_1(v21);
  }

  return result;
}

uint64_t sub_25F2011B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, __int128 *a4@<X8>)
{
  sub_25F1B7118(a1, v13);
  v8 = MEMORY[0x277CC9318];
  result = swift_dynamicCast();
  if (result)
  {
    *a4 = v12;
  }

  else
  {
    sub_25F1D4B9C(0, 0xF000000000000000);
    sub_25F202604();
    swift_allocError();
    v11 = v10;
    *v10 = a3;
    sub_25F1BF03C(a2, (v10 + 1));
    sub_25F1B7118(a1, (v11 + 6));
    v11[13] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD54948, &qword_25F30C4B8);
    v11[10] = v8;
    *(v11 + 112) = 1;
    swift_willThrow();
  }

  return result;
}

uint64_t sub_25F2012C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_25F1B7118(a1, v11);
  v6 = MEMORY[0x277D837D0];
  if (swift_dynamicCast())
  {
    return v10;
  }

  sub_25F202604();
  swift_allocError();
  v9 = v8;
  *v8 = a3;
  sub_25F1BF03C(a2, (v8 + 1));
  sub_25F1B7118(a1, (v9 + 6));
  v9[13] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD54950, &qword_25F30C4C0);
  v9[10] = v6;
  *(v9 + 112) = 1;
  swift_willThrow();
}

uint64_t sub_25F2013BC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v10 = MEMORY[0x277D84F90];
    sub_25F1BD028(0, v1, 0);
    v3 = a1;
    v4 = v10;
    v5 = *(v10 + 16);
    v6 = 32;
    do
    {
      v7 = *(v3 + v6);
      v8 = *(v10 + 24);
      if (v5 >= v8 >> 1)
      {
        sub_25F1BD028((v8 > 1), v5 + 1, 1);
        v3 = a1;
      }

      *(v10 + 16) = v5 + 1;
      *(v10 + 4 * v5 + 32) = v7;
      v6 += 4;
      ++v5;
      --v1;
    }

    while (v1);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return v4;
}

uint64_t sub_25F2014C0(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  v6[3] = a1;
  v6[0] = v2;
  v6[1] = v3;
  __swift_project_boxed_opaque_existential_1(v6, a1);
  swift_getDynamicType();

  v4 = sub_25F30685C();
  __swift_destroy_boxed_opaque_existential_1(v6);
  return v4;
}

uint64_t sub_25F20154C(uint64_t a1)
{
  v2 = *v1;
  v5[3] = a1;
  v5[0] = v2;
  __swift_project_boxed_opaque_existential_1(v5, a1);
  swift_getDynamicType();

  v3 = sub_25F30685C();
  __swift_destroy_boxed_opaque_existential_1(v5);
  return v3;
}

unint64_t sub_25F2015E0()
{
  result = qword_27FD54848;
  if (!qword_27FD54848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD54848);
  }

  return result;
}

unint64_t sub_25F201634()
{
  result = qword_27FD54850;
  if (!qword_27FD54850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD54850);
  }

  return result;
}

unint64_t sub_25F201688()
{
  result = qword_27FD54858;
  if (!qword_27FD54858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD54858);
  }

  return result;
}

uint64_t __swift_deallocate_boxed_opaque_existential_1(uint64_t result)
{
  if ((*(*(*(result + 24) - 8) + 80) & 0x20000) != 0)
  {
    JUMPOUT(0x25F8D9510);
  }

  return result;
}

unint64_t sub_25F20175C()
{
  result = qword_27FD54878;
  if (!qword_27FD54878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD54878);
  }

  return result;
}

unint64_t sub_25F2017B4()
{
  result = qword_27FD54880;
  if (!qword_27FD54880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD54880);
  }

  return result;
}

unint64_t sub_25F201818()
{
  result = qword_27FD54888;
  if (!qword_27FD54888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD54888);
  }

  return result;
}

unint64_t sub_25F201870()
{
  result = qword_27FD54890;
  if (!qword_27FD54890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD54890);
  }

  return result;
}

unint64_t sub_25F2018D4()
{
  result = qword_27FD54898;
  if (!qword_27FD54898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD54898);
  }

  return result;
}

unint64_t sub_25F20192C()
{
  result = qword_27FD548A0;
  if (!qword_27FD548A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD548A0);
  }

  return result;
}

unint64_t sub_25F2019AC()
{
  result = qword_27FD548A8;
  if (!qword_27FD548A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD548A8);
  }

  return result;
}

unint64_t sub_25F201A00()
{
  result = qword_27FD548B0;
  if (!qword_27FD548B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD548B0);
  }

  return result;
}

unint64_t sub_25F201A58()
{
  result = qword_27FD548B8;
  if (!qword_27FD548B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD548B8);
  }

  return result;
}

unint64_t sub_25F201AD8()
{
  result = qword_27FD548C0;
  if (!qword_27FD548C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD548C0);
  }

  return result;
}

unint64_t sub_25F201B2C()
{
  result = qword_27FD548C8;
  if (!qword_27FD548C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD548C8);
  }

  return result;
}

unint64_t sub_25F201B84()
{
  result = qword_27FD548D0;
  if (!qword_27FD548D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD548D0);
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

uint64_t sub_25F201D3C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 49))
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

uint64_t sub_25F201D84(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
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

uint64_t sub_25F201E10(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_25F201E58(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

__n128 __swift_memcpy92_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 76) = *(a2 + 76);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_25F201EF0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 92))
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

uint64_t sub_25F201F38(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 88) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 92) = 1;
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

    *(result + 92) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_25F201FA4()
{
  result = qword_27FD548D8;
  if (!qword_27FD548D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD548D8);
  }

  return result;
}

unint64_t sub_25F202008()
{
  result = qword_27FD548E0;
  if (!qword_27FD548E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD548E0);
  }

  return result;
}

unint64_t sub_25F202060()
{
  result = qword_27FD548E8;
  if (!qword_27FD548E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD548E8);
  }

  return result;
}

unint64_t sub_25F2020B8()
{
  result = qword_27FD548F0;
  if (!qword_27FD548F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD548F0);
  }

  return result;
}

unint64_t sub_25F202138()
{
  result = qword_27FD548F8;
  if (!qword_27FD548F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD548F8);
  }

  return result;
}

unint64_t sub_25F20218C()
{
  result = qword_27FD54900;
  if (!qword_27FD54900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD54900);
  }

  return result;
}

unint64_t sub_25F20220C()
{
  result = qword_27FD54908;
  if (!qword_27FD54908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD54908);
  }

  return result;
}

unint64_t sub_25F202260()
{
  result = qword_27FD54910;
  if (!qword_27FD54910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD54910);
  }

  return result;
}

unint64_t sub_25F2022E0()
{
  result = qword_27FD54918;
  if (!qword_27FD54918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD54918);
  }

  return result;
}

unint64_t sub_25F202334()
{
  result = qword_27FD54920;
  if (!qword_27FD54920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD54920);
  }

  return result;
}

uint64_t sub_25F2023B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4(a1, a2, a3);
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_25F2023F0()
{
  result = qword_27FD54928;
  if (!qword_27FD54928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD54928);
  }

  return result;
}

unint64_t sub_25F202444()
{
  result = qword_27FD54930;
  if (!qword_27FD54930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD54930);
  }

  return result;
}

uint64_t sub_25F202498(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
  }

  return result;
}

uint64_t sub_25F2024A8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
  }

  return result;
}

uint64_t sub_25F2024F0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52D50, &qword_25F3085B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroy_43Tm()
{

  return swift_deallocObject();
}

uint64_t sub_25F2025A0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CrashReportError(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_25F202604()
{
  result = qword_27FD54940;
  if (!qword_27FD54940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD54940);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RemoteHumanReadableError.Key(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for RemoteHumanReadableError.Key(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_25F2027D8()
{
  result = qword_27FD54980;
  if (!qword_27FD54980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD54980);
  }

  return result;
}

unint64_t sub_25F202830()
{
  result = qword_27FD54988;
  if (!qword_27FD54988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD54988);
  }

  return result;
}

unint64_t sub_25F202888()
{
  result = qword_27FD54990;
  if (!qword_27FD54990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD54990);
  }

  return result;
}

unint64_t sub_25F2028DC(uint64_t a1, uint64_t a2)
{
  v2 = sub_25F3063BC();

  if (v2 >= 9)
  {
    return 9;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_25F202928()
{
  result = qword_27FD54998;
  if (!qword_27FD54998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD54998);
  }

  return result;
}

double static ExecutionLane.main.getter@<D0>(_OWORD *a1@<X8>)
{
  *&result = 1;
  *a1 = xmmword_25F3077E0;
  return result;
}

uint64_t static ExecutionLane.queue(label:qos:attributes:target:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t *a6@<X8>)
{
  v26 = a2;
  v27 = a5;
  v24 = a3;
  v25 = a4;
  v28 = a1;
  v29 = a6;
  v6 = sub_25F305A9C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_25F305A4C();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_25F30494C();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25F1F54F4();
  (*(v15 + 16))(v17, v24, v14);
  (*(v11 + 16))(v13, v25, v10);
  (*(v7 + 104))(v9, *MEMORY[0x277D85260], v6);
  v18 = v27;

  v19 = sub_25F305ACC();
  if (qword_27FD52798 != -1)
  {
    swift_once();
  }

  v20 = off_27FD559A0;
  os_unfair_lock_lock(off_27FD559A0 + 6);
  v21 = *(v20 + 2);
  *(v20 + 2) = v21 + 1;
  os_unfair_lock_unlock(v20 + 6);
  if (qword_27FD52770 != -1)
  {
    swift_once();
  }

  v30 = v21;
  v31 = 0;
  result = sub_25F305A7C();
  v23 = v29;
  *v29 = v19;
  v23[1] = v21;
  return result;
}

uint64_t ExecutionLane.execute(_:)(uint64_t (*a1)(uint64_t, uint64_t), uint64_t a2)
{
  v4 = ExecutionLane.isCurrentLane.getter();
  if (v4)
  {
    return a1(v4, v5);
  }

  else
  {
    return sub_25F202E08(a1, a2);
  }
}

uint64_t ExecutionLane.isCurrentLane.getter()
{
  if (!*v0)
  {
    return 1;
  }

  if (*v0 == 1)
  {
    return [objc_opt_self() isMainThread];
  }

  v2 = v0[1];
  sub_25F1F54F4();
  if (qword_27FD52770 != -1)
  {
    swift_once();
  }

  sub_25F305A6C();
  return (v2 == v3) & ~v4;
}

uint64_t sub_25F202E08(uint64_t (*a1)(uint64_t), uint64_t a2)
{
  v5 = sub_25F30490C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_25F30494C();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *v2;
  if (!*v2)
  {
    return a1(v11);
  }

  v19[0] = v11;
  if (v14 == 1)
  {
    sub_25F1F54F4();
    v15 = sub_25F305AAC();
    v24 = a1;
    v25 = a2;
    aBlock = MEMORY[0x277D85DD0];
    v21 = 1107296256;
    v22 = sub_25F1D8C38;
    v23 = &block_descriptor_9;
    v16 = _Block_copy(&aBlock);

    sub_25F30492C();
    aBlock = MEMORY[0x277D84F90];
    sub_25F1D9034();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD53AA0, &qword_25F30C7D0);
    sub_25F1D908C();
    sub_25F305E5C();
    MEMORY[0x25F8D7C70](0, v13, v8, v16);
    _Block_release(v16);

    (*(v6 + 8))(v8, v5);
    return (*(v10 + 8))(v13, v19[0]);
  }

  else
  {
    v24 = a1;
    v25 = a2;
    aBlock = MEMORY[0x277D85DD0];
    v21 = 1107296256;
    v22 = sub_25F1D8C38;
    v23 = &block_descriptor_3;
    v18 = _Block_copy(&aBlock);

    sub_25F2033CC(v14);
    sub_25F30492C();
    v19[1] = MEMORY[0x277D84F90];
    sub_25F1D9034();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD53AA0, &qword_25F30C7D0);
    sub_25F1D908C();
    sub_25F305E5C();
    MEMORY[0x25F8D7C70](0, v13, v8, v18);
    _Block_release(v18);
    sub_25F2033DC(v14);
    (*(v6 + 8))(v8, v5);
    (*(v10 + 8))(v13, v19[0]);
  }
}

uint64_t sub_25F2031B8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD549A8, &qword_25F30C7D8);
  swift_allocObject();
  result = sub_25F3048FC();
  qword_27FD549A0 = result;
  return result;
}

uint64_t get_enum_tag_for_layout_string_20PreviewsFoundationOS13ExecutionLaneV0E033_D866D51B8C459CAD90E6009209CB15C7LLO(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_25F20321C(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFFD && *(a1 + 16))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 2;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_25F203278(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = a2 - 2147483646;
    *(result + 8) = 0;
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_25F2032D4(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 16))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25F203328(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void *sub_25F203384(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = (a2 - 1);
  }

  *result = v2;
  return result;
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_25F2033CC(id result)
{
  if (result >= 2)
  {
    return result;
  }

  return result;
}

void sub_25F2033DC(id a1)
{
  if (a1 >= 2)
  {
  }
}

unint64_t sub_25F203400()
{
  result = qword_27FD549B0[0];
  if (!qword_27FD549B0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FD549B0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AnalyticsHints(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_25F203578(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a3 + a4 - 8);
  MEMORY[0x28223BE20](a1);
  v6 = &v12 - v5;
  (*(v7 + 16))(&v12 - v5);
  v10 = type metadata accessor for UncheckedSendable(0, v4, v8, v9);
  return UncheckedSendable.wrappedValue.setter(v6, v10);
}

void (*UncheckedSendable.wrappedValue.modify(void *a1, uint64_t a2))(uint64_t a1, char a2)
{
  v5 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x30uLL);
  }

  v7 = v6;
  *a1 = v6;
  *v6 = v2;
  v8 = *(a2 + 16);
  v6[1] = v8;
  v9 = *(v8 - 8);
  v10 = v9;
  v6[2] = v9;
  v6[3] = v9;
  v11 = *(v9 + 64);
  if (v5)
  {
    v6[4] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v6[4] = malloc(*(v9 + 64));
    v12 = malloc(v11);
  }

  v7[5] = v12;
  (*(v10 + 16))();
  return sub_25F2037AC;
}

void sub_25F2037AC(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  if (a2)
  {
    v5 = v2[2];
    v6 = v2[3];
    v8 = *v2;
    v7 = v2[1];
    (*(v6 + 16))(*(*a1 + 32), v4, v7);
    (*(v5 + 40))(v8, v3, v7);
    (*(v6 + 8))(v4, v7);
  }

  else
  {
    (*(v2[2] + 40))(*v2, v4);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t CGFloat.init(_:)(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  v2 = sub_25F2039A8(a1, a2, &v4);

  if (v2)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25F20393C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = 0;
  v4 = sub_25F2039A8(a1, a2, &v7);

  v6 = v7;
  if (!v4)
  {
    v6 = 0;
  }

  *a3 = v6;
  *(a3 + 8) = !v4;
  return result;
}

BOOL sub_25F2039A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      if (a1 > 0x20u || ((0x100003E01uLL >> a1) & 1) == 0)
      {
        goto LABEL_10;
      }

      return 0;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      v4 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      if (v4 >= 0x21 || ((0x100003E01uLL >> v4) & 1) == 0)
      {
LABEL_10:
        v6 = _swift_stdlib_strtod_clocale();
        return v6 && *v6 == 0;
      }

      return 0;
    }
  }

  sub_25F305F6C();
  if (!v3)
  {
    return v8;
  }

  return v5;
}

unint64_t sub_25F203AA4()
{
  result = qword_27FD54A38;
  if (!qword_27FD54A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD54A38);
  }

  return result;
}

_BYTE *sub_25F203AF8@<X0>(_BYTE *result@<X0>, BOOL *a2@<X8>)
{
  v2 = *result;
  v3 = v2 > 0x20;
  v4 = (1 << v2) & 0x100003E01;
  if (v3 || v4 == 0)
  {
    result = _swift_stdlib_strtod_clocale();
    if (result)
    {
      v7 = *result == 0;
    }

    else
    {
      v7 = 0;
    }

    *a2 = v7;
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

uint64_t OSAllocatedUnfairLock.init(value:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_25F203E0C(a1, a2);
  (*(*(a2 - 8) + 8))(a1, a2);
  return v4;
}

void OSAllocatedUnfairLock.syncRead<A>(callsite:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = (*(*a4 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((a4 + v5));
  sub_25F203E10();
  os_unfair_lock_unlock((a4 + v5));
}

void OSAllocatedUnfairLock.syncWrite<A>(callsite:_:)(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, uint64_t a4)
{
  v6 = *(*a4 + *MEMORY[0x277D841D0] + 16);
  v7 = (*(*a4 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((a4 + v7));
  a2(a4 + v6);
  os_unfair_lock_unlock((a4 + v7));
}

uint64_t sub_25F203D90(uint64_t a1, uint64_t a2)
{
  type metadata accessor for os_unfair_lock_s(255);
  sub_25F30604C();
  return sub_25F30603C();
}

uint64_t sub_25F203E38@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *a1;
  *(a1 + ((*(v4 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  return (*(*(*(v4 + *MEMORY[0x277D841D0]) - 8) + 16))(a2, v3);
}

id sub_25F203ED0()
{
  v0 = objc_allocWithZone(MEMORY[0x277CCAC68]);
  result = sub_25F2B3AE4(0xD000000000000010, 0x800000025F3182B0, 16);
  qword_27FD54A40 = result;
  return result;
}

id sub_25F203F88()
{
  v0 = objc_allocWithZone(MEMORY[0x277CCAC68]);
  result = sub_25F2B3AE4(0x203A5C726F727265, 0xED000024292A2E28, 16);
  qword_27FD54A48 = result;
  return result;
}

uint64_t sub_25F204090(uint64_t a1, uint64_t a2, void *a3, void **a4, uint64_t a5)
{
  if (*a3 == -1)
  {
    v5 = *a4;
    if (!*a4)
    {
      return 0;
    }
  }

  else
  {
    swift_once();
    v5 = *a4;
    if (!*a4)
    {
      return 0;
    }
  }

  v6 = v5;
  v7 = sub_25F304DDC();
  v8 = [v6 firstMatchInString:v7 options:0 range:{0, sub_25F304F2C()}];

  if (v8)
  {
    v9 = [v8 rangeAtIndex_];
    v11 = v10;

    v12 = sub_25F304DDC();
    v13 = [v12 substringWithRange_];

    sub_25F304E0C();
    v14 = sub_25F3050BC();

    return v14;
  }

  return 0;
}

Swift::Void __swiftcall NSRunLoop.spin(count:)(Swift::Int count)
{
  v2 = v1;
  v4 = sub_25F30462C();
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = count - 1;
  if (count >= 1)
  {
    v9 = *MEMORY[0x277CBE640];
    v10 = (v5 + 8);
    do
    {
      sub_25F3045EC();
      v11 = sub_25F3045BC();
      (*v10)(v7, v4);
      v12 = [v2 runMode:v9 beforeDate:v11];

      v14 = v8-- != 0;
    }

    while (v12 && v14);
  }
}

uint64_t NSRunLoop.spin(timeout:until:)(uint64_t a1, char a2, uint64_t (*a3)(void), uint64_t a4)
{
  v23 = a3;
  v24 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD54A50, &unk_25F30C9B8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v23 - v6;
  v8 = sub_25F30462C();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v23 - v13;
  if (a2)
  {
    (*(v9 + 56))(v7, 1, 1, v8);
    sub_25F30459C();
    if ((*(v9 + 48))(v7, 1, v8) != 1)
    {
      sub_25F204624(v7);
    }
  }

  else
  {
    sub_25F30461C();
    sub_25F3045AC();
    (*(v9 + 8))(v12, v8);
    (*(v9 + 56))(v7, 0, 1, v8);
    (*(v9 + 32))(v14, v7, v8);
  }

  v15 = objc_opt_self();
  v16 = *MEMORY[0x277CBE640];
  v17 = (v9 + 8);
  do
  {
    v18 = [v15 currentRunLoop];
    v19 = sub_25F3045BC();
    v20 = [v18 runMode:v16 beforeDate:v19];

    if (!v20)
    {
      break;
    }

    if (v23())
    {
      break;
    }

    sub_25F30461C();
    v21 = sub_25F3045CC();
    (*v17)(v12, v8);
  }

  while ((v21 & 1) == 0);
  return (*v17)(v14, v8);
}

uint64_t sub_25F204624(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD54A50, &unk_25F30C9B8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t Unreachable.init(_:diagnostics:callsite:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _OWORD *a5@<X4>, void *a6@<X8>)
{
  v6 = a5[1];
  v8[0] = *a5;
  v8[1] = v6;
  v9[0] = a5[2];
  *(v9 + 9) = *(a5 + 41);
  *a6 = a1;
  a6[1] = a2;
  a6[2] = a3;
  a6[3] = a4;
  return sub_25F213F98(v8);
}

uint64_t Unreachable.message.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t Unreachable.additionalDiagnostics.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t Unreachable.additionalInfo.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t static Result.unreachable(_:callsite:)@<X0>(uint64_t (*a1)(void, uint64_t, _OWORD *, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t)@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>)
{
  v10 = a3[1];
  v17[0] = *a3;
  v17[1] = v10;
  v18[0] = a3[2];
  *(v18 + 9) = *(a3 + 41);
  v11 = a1(a1, a2, a3, a4, a5, a6, a7, a8);
  v13 = v12;
  sub_25F1C172C();
  v14 = swift_allocError();
  *v15 = v11;
  v15[1] = v13;
  v15[2] = 0;
  v15[3] = 0;
  sub_25F213F98(v17);
  *a9 = v14;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27FD52B48, &qword_25F3084D0);
  sub_25F30678C();

  return swift_storeEnumTagMultiPayload();
}

unint64_t sub_25F204884(uint64_t a1)
{
  *(a1 + 8) = sub_25F2048B4();
  result = sub_25F204908();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_25F2048B4()
{
  result = qword_27FD54A58;
  if (!qword_27FD54A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD54A58);
  }

  return result;
}

unint64_t sub_25F204908()
{
  result = qword_27FD54A60[0];
  if (!qword_27FD54A60[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FD54A60);
  }

  return result;
}

uint64_t CountedSet.init()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X8>)
{
  v6 = MEMORY[0x277D83B88];
  swift_getTupleTypeMetadata2();
  v7 = sub_25F3052DC();
  v8 = sub_25F1CCBBC(v7, a1, v6, a2);

  *a3 = v8;
  return result;
}

uint64_t CountedSet.init(arrayLiteral:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = *(a2 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](a1);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x277D83B88];
  swift_getTupleTypeMetadata2();
  v12 = sub_25F3052DC();
  v13 = sub_25F1CCBBC(v12, a2, v11, a3);

  v23 = v13;
  if (sub_25F30531C())
  {
    v20 = v9;
    v21 = a4;
    v14 = 0;
    while (1)
    {
      v15 = sub_25F3052FC();
      sub_25F30528C();
      if (v15)
      {
        (*(v8 + 16))(v10, a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v14, a2);
        v17 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          goto LABEL_10;
        }
      }

      else
      {
        result = sub_25F30601C();
        if (v20 != 8)
        {
          __break(1u);
          return result;
        }

        v22 = result;
        (*(v8 + 16))(v10, &v22, a2);
        swift_unknownObjectRelease();
        v17 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
LABEL_10:
          __break(1u);
LABEL_11:

          v13 = v23;
          a4 = v21;
          goto LABEL_13;
        }
      }

      v18 = type metadata accessor for CountedSet(0, a2, a3, v16);
      CountedSet.insert(_:)(v10, v18);
      (*(v8 + 8))(v10, a2);
      ++v14;
      if (v17 == sub_25F30531C())
      {
        goto LABEL_11;
      }
    }
  }

LABEL_13:
  *a4 = v13;
  return result;
}

uint64_t CountedSet.insert(_:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](a1);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25F304B8C();
  if (v10)
  {
    v7 = 0;
  }

  else
  {
    v7 = v9;
  }

  result = (*(v4 + 16))(v6, a1, v3);
  if (__OFADD__(v7, 1))
  {
    __break(1u);
  }

  else
  {
    v9 = v7 + 1;
    v10 = 0;
    sub_25F304B4C();
    return sub_25F304B9C();
  }

  return result;
}

uint64_t CountedSet.remove(_:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](a1);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25F304B8C();
  v7 = v10;
  v8 = v11;
  (*(v4 + 16))(v6, a1, v3);
  if ((v8 & 1) != 0 || v7 < 2)
  {
    v10 = 0;
    v11 = 1;
  }

  else
  {
    v10 = v7 - 1;
    v11 = 0;
  }

  sub_25F304B4C();
  return sub_25F304B9C();
}

uint64_t CountedSet.count(of:)(uint64_t a1, uint64_t a2)
{
  sub_25F304B8C();
  if (v4)
  {
    return 0;
  }

  else
  {
    return v3;
  }
}

uint64_t CountedSet.totalCount.getter(uint64_t a1)
{
  sub_25F304B4C();

  swift_getWitnessTable();
  sub_25F30519C();

  return v2;
}

uint64_t CountedSet.hashValue.getter(uint64_t a1)
{
  sub_25F30671C();
  sub_25F304B5C();
  return sub_25F30676C();
}

uint64_t sub_25F2050CC(uint64_t a1, uint64_t a2)
{
  sub_25F30671C();
  CountedSet.hash(into:)(v4, a2);
  return sub_25F30676C();
}

uint64_t sub_25F205140@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *a1;
  result = swift_getTupleTypeMetadata2();
  v7 = *(a2 + *(result + 48));
  v8 = __OFADD__(v5, v7);
  v9 = v5 + v7;
  if (v8)
  {
    __break(1u);
  }

  else
  {
    *a3 = v9;
  }

  return result;
}

uint64_t sub_25F2051CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_25F205208(void *a1, uint64_t a2, void (*a3)(__int128 *), uint64_t a4)
{
  v9 = swift_allocObject();
  v9[2] = a1;
  v9[3] = a2;
  v9[4] = a3;
  v9[5] = a4;
  v10 = *(v4 + 88);
  sub_25F2033CC(a1);

  os_unfair_lock_lock(v10 + 25);
  sub_25F209764(&v10[4], &v18);
  os_unfair_lock_unlock(v10 + 25);
  *&v17[10] = *(v20 + 10);
  v16[0] = v18;
  v16[1] = v19;
  *v17 = v20[0];
  if (BYTE9(v20[1]) == 255)
  {
  }

  else
  {
    v21[0] = v18;
    v21[1] = v19;
    v22[0] = v20[0];
    *(v22 + 10) = *(v20 + 10);
    v13 = v18;
    v14 = v19;
    v15[0] = v20[0];
    *(v15 + 10) = *(v20 + 10);
    sub_25F1B7174(&v13, v12, qword_27FD54C30, &qword_25F314C70);
    sub_25F27630C(v21, a1, a2, a3, a4);

    sub_25F1AF698(v16, &qword_27FD54C28, &unk_25F30CD20);
  }

  v13 = v18;
  v14 = v19;
  v15[0] = v20[0];
  *(v15 + 10) = *(v20 + 10);
  return sub_25F1AF698(&v13, &qword_27FD54C28, &unk_25F30CD20);
}

uint64_t sub_25F2053B8@<X0>(unint64_t a1@<X0>, unint64_t *a2@<X8>)
{
  if (a1 >> 62)
  {
    result = sub_25F30631C();
    if (result)
    {
      goto LABEL_3;
    }

LABEL_8:

    result = sub_25F208CE4(0, 0);
    *a2 = 0;
    a2[1] = 0;
    return result;
  }

  result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((a1 & 0xC000000000000001) != 0)
  {
    result = MEMORY[0x25F8D81E0](0, a1);
    goto LABEL_6;
  }

  if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {

LABEL_6:
    *a2 = a1;
    a2[1] = result;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t Sequence.traverse<A>(callsite:andAccumulateErrors:_:)(__int128 *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = a1[1];
  v8[0] = *a1;
  v8[1] = v6;
  v9[0] = a1[2];
  *(v9 + 9) = *(a1 + 41);
  return sub_25F2056B0(v8, a2, a3, a4, a5, a6);
}

uint64_t sub_25F205490(_OWORD *a1, char a2, unint64_t a3)
{

  sub_25F2053B8(a3, &v11);
  v7 = v11;
  v6 = v12;
  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD54BF0, &qword_25F30CCF0);
    v8 = swift_allocObject();

    return sub_25F205D50(a1, (a2 & 1), v7, v6, v8);
  }

  else
  {
    sub_25F208CE4(0, v12);
    *&v13[0] = MEMORY[0x277D84F90];
    v14 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD54BE8, &qword_25F30CCE8);
    swift_allocObject();
    v10 = sub_25F1C0374(a1);

    sub_25F1C0C90(v13);

    return v10;
  }
}

uint64_t sub_25F2055A0(_OWORD *a1, char a2, unint64_t a3)
{

  sub_25F2053B8(a3, &v11);
  v7 = v11;
  v6 = v12;
  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD54C18, &qword_25F30CD10);
    v8 = swift_allocObject();

    return sub_25F2064B8(a1, (a2 & 1), v7, v6, v8);
  }

  else
  {
    sub_25F208CE4(0, v12);
    *&v13[0] = MEMORY[0x277D84F90];
    v14 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD54C10, &qword_25F30CD08);
    swift_allocObject();
    v10 = sub_25F1C063C(a1);

    sub_25F1C0FD0(v13);

    return v10;
  }
}

uint64_t sub_25F2056B0(__int128 *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v37 = a6;
  v35 = a4;
  v34 = a3;
  v33 = a2;
  v8 = *(a5 - 8);
  MEMORY[0x28223BE20](a1);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = v11;
  v14 = type metadata accessor for Inhabited(255, v13, v11, v12);
  v15 = sub_25F305C1C();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v32 - v18;
  v20 = *(v14 - 8);
  MEMORY[0x28223BE20](v17);
  v22 = &v32 - v21;
  v23 = a1[1];
  v43 = *a1;
  v44 = v23;
  v45[0] = a1[2];
  *(v45 + 9) = *(a1 + 41);
  (*(v8 + 16))(v10, v36, a5);
  WitnessTable = swift_getWitnessTable();
  PredicatedWrapper.init(_:)(v10, v14, WitnessTable, v19);
  if ((*(v20 + 48))(v19, 1, v14) == 1)
  {
    (*(v16 + 8))(v19, v15);
    v25 = sub_25F30539C();
    type metadata accessor for Future(0, v25, v26, v27);
    v40 = v43;
    v41 = v44;
    v42[0] = v45[0];
    *(v42 + 9) = *(v45 + 9);
    v38 = sub_25F3052DC();
    v39 = 0;
    v30 = sub_25F1BF710(&v40, &v38, v28, v29);
  }

  else
  {
    (*(v20 + 32))(v22, v19, v14);
    type metadata accessor for TraverseFuture(0, a5, v37, v32);
    v40 = v43;
    v41 = v44;
    v42[0] = v45[0];
    *(v42 + 9) = *(v45 + 9);
    swift_allocObject();
    v30 = sub_25F208D54(&v40, v33 & 1, v22, v34, v35);
    (*(v20 + 8))(v22, v14);
  }

  return v30;
}

uint64_t Sequence.invert<A>(callsite:andAccumulateErrors:)(__int128 *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a1[1];
  v8[0] = *a1;
  v8[1] = v5;
  v9[0] = a1[2];
  *(v9 + 9) = *(a1 + 41);
  v7[2] = a3;
  v7[3] = a4;
  v7[4] = a5;
  return sub_25F2056B0(v8, a2, sub_25F208D24, v7, a3, a4);
}

uint64_t static Future.inverting<A>(dsoHandle:file:line:column:function:accumulateErrors:_:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, unsigned __int8 a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v14 = *(v13 + 80);
  *&v17 = a2;
  *(&v17 + 1) = a3;
  v18 = a4;
  v19 = a5;
  v20 = a6;
  v21 = a7;
  v22 = a8;
  v23 = a9;
  v16[2] = a12;
  v16[3] = v14;
  v16[4] = a13;
  return sub_25F2056B0(&v17, a10, sub_25F208D24, v16, a12, v14);
}

uint64_t static Future.inverting(dsoHandle:file:line:column:function:accumulateErrors:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, unsigned __int8 a10)
{
  v14 = a4;
  v17 = *(v10 + 80);
  type metadata accessor for Future(255, v17, a3, a4);
  *&v24 = a2;
  *(&v24 + 1) = a3;
  v25 = v14;
  v26 = a5;
  v27 = a6;
  v28 = a7;
  v29 = a8;
  v30 = a9;
  v21 = sub_25F30539C();
  v22 = v17;
  WitnessTable = swift_getWitnessTable();
  return sub_25F2056B0(&v24, a10, sub_25F208D24, v20, v21, v17);
}

uint64_t sub_25F205C80@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>, uint64_t a5@<X3>)
{
  v7 = *a1;
  *a4 = a1;
  v8 = *(type metadata accessor for TraverseFuture.Activity.Fiber(0, a3, *(v7 + 80), a5) + 44);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27FD52B48, &qword_25F3084D0);
  sub_25F30678C();
  v9 = sub_25F305C1C();
  v10 = *(*(v9 - 8) + 32);

  return v10(&a4[v8], a2, v9);
}

uint64_t sub_25F205D50(_OWORD *a1, os_unfair_lock_s *a2, unint64_t a3, uint64_t a4, uint64_t a5)
{

  v9 = sub_25F206D34(a3);
  v52 = 0;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD54BF8, &qword_25F30CCF8);
  v10 = swift_allocObject();
  *(v10 + 24) = 0;
  *(v10 + 16) = v9;
  *(a5 + 104) = v10;
  *(a5 + 112) = a2;

  v11 = sub_25F1C0374(a1);
  v12 = v11;
  v47 = v9;
  v13 = v9[2];
  if (!v13)
  {
LABEL_31:

    return v12;
  }

  v14 = 0;
  v45 = v9[2];
  v46 = v47 + 4;
  v53 = v11;
  while (v14 < v47[2])
  {
    v15 = &v46[5 * v14];
    v17 = v15[2];
    v16 = v15[3];
    v18 = *v15;
    v19 = v15[1];
    v20 = *(v15 + 32);

    sub_25F208938(v19, v17, v16, v20);
    sub_25F208960(v19, v17, v16, v20);
    v21 = swift_allocObject();
    *(v21 + 16) = v12;
    *(v21 + 24) = v14;
    a3 = swift_allocObject();
    v51 = &v44;
    *(a3 + 16) = 0;
    *(a3 + 24) = 0;
    *(a3 + 32) = sub_25F208988;
    *(a3 + 40) = v21;
    v59 = v18;
    a2 = *(v18 + 88);
    v22 = MEMORY[0x28223BE20](a3);
    *(&v44 - 2) = sub_25F2089C0;
    *(&v44 - 1) = v22;
    swift_retain_n();
    swift_retain_n();
    os_unfair_lock_lock(a2 + 25);
    v23 = v52;
    sub_25F2089D8(&a2[4], &v73);
    if (v23)
    {
      goto LABEL_34;
    }

    os_unfair_lock_unlock(a2 + 25);
    *(v72 + 10) = *(v75 + 10);
    v70 = v73;
    v71 = v74;
    v72[0] = v75[0];
    v24 = BYTE9(v75[1]);
    if (BYTE9(v75[1]) != 255)
    {
      v48 = v14;
      v25 = v70;
      if (BYTE9(v75[1]))
      {
        if (BYTE9(v75[1]) == 1)
        {
          v67 = v73;
          v68 = v74;
          v69[0] = v75[0];
          *(v69 + 10) = *(v75 + 10);
          sub_25F1B7174(&v67, &v65, &qword_27FD54C08, &unk_25F314C50);
          v26 = v25;
          v27 = 0;
          v28 = 0;
          goto LABEL_13;
        }
      }

      else
      {
        v27 = *(&v70 + 1);
        v28 = v71;
        sub_25F1B7174(&v70, &v67, &qword_27FD54C00, &qword_25F30CD00);

LABEL_13:

        sub_25F208938(v25, v27, v28, v24);
        sub_25F207284();

        sub_25F208960(v25, v27, v28, v24);

        sub_25F208960(v25, v27, v28, v24);

        v13 = v45;
      }

      a2 = &qword_27FD54C00;
      sub_25F1AF698(&v70, &qword_27FD54C00, &qword_25F30CD00);
      v14 = v48;
      goto LABEL_16;
    }

    a2 = &qword_27FD54C00;
LABEL_16:
    v67 = v73;
    v68 = v74;
    v69[0] = v75[0];
    *(v69 + 10) = *(v75 + 10);
    sub_25F1AF698(&v67, &qword_27FD54C00, &qword_25F30CD00);
    v29 = swift_allocObject();
    v50 = &v44;
    v29[2] = 0;
    v29[3] = 0;
    v29[4] = sub_25F2089F4;
    v29[5] = v12;
    a3 = *(v59 + 88);
    v30 = MEMORY[0x28223BE20](v29);
    *(&v44 - 2) = sub_25F208A30;
    *(&v44 - 1) = v30;
    v49 = v30;
    swift_retain_n();
    os_unfair_lock_lock((a3 + 100));
    sub_25F20974C(a3 + 16, &v65);
    v52 = 0;
    os_unfair_lock_unlock((a3 + 100));
    *(v64 + 10) = *(&v66[1] + 10);
    v62 = v65;
    v63 = v66[0];
    v64[0] = v66[1];
    if (BYTE9(v66[2]) != 255)
    {
      v58 = v63;
      if (BYTE9(v66[2]))
      {
        v31 = v62;
        if (BYTE9(v66[2]) == 1)
        {
          v32 = v62;
          goto LABEL_22;
        }

        v57 = *(&v62 + 1);
        v33 = *(v12 + 104);

        os_unfair_lock_lock((v33 + 24));
        v34 = *(v33 + 16);
        if (v34)
        {
          v55 = v31;
          v56 = v34;
          v48 = v14;
          *(v33 + 16) = 0;
          os_unfair_lock_unlock((v33 + 24));
          v35 = v56;
          v54 = *(v56 + 16);
          if (v54)
          {
            a3 = 0;
            v36 = (v56 + 64);
            while (a3 < *(v35 + 16))
            {
              ++a3;
              v37 = *(v36 - 2);
              a2 = *(v36 - 1);
              v38 = *(v36 - 4);
              v39 = *(v36 - 3);
              v40 = *v36;
              v36 += 40;
              *&v60 = v55;
              *(&v60 + 1) = v57;
              *&v61[0] = v58;
              *(v61 + 8) = *(v66 + 8);
              *(&v61[1] + 8) = *(&v66[1] + 8);
              BYTE8(v61[2]) = BYTE8(v66[2]);
              v41 = *(*v38 + 192);

              sub_25F208938(v39, v37, a2, v40);
              v41(&v60);

              v42 = v39;
              v12 = v53;
              sub_25F208960(v42, v37, a2, v40);
              v35 = v56;
              if (v54 == a3)
              {
                goto LABEL_28;
              }
            }

            __break(1u);
            break;
          }

LABEL_28:

          v78 = *(v66 + 8);
          v79 = *(&v66[1] + 8);
          v80 = BYTE8(v66[2]);
          *&v76 = v55;
          *(&v76 + 1) = v57;
          v77 = v58;
          v81 = 2;
          sub_25F1C0C90(&v76);

          v13 = v45;
          v14 = v48;
          a2 = &qword_27FD54C00;
        }

        else
        {
          os_unfair_lock_unlock((v33 + 24));
        }
      }

      else
      {

LABEL_22:
      }

      sub_25F1AF698(&v62, &qword_27FD54C00, &qword_25F30CD00);
      goto LABEL_4;
    }

LABEL_4:
    ++v14;
    v60 = v65;
    v61[0] = v66[0];
    v61[1] = v66[1];
    *(&v61[1] + 10) = *(&v66[1] + 10);
    sub_25F1AF698(&v60, &qword_27FD54C00, &qword_25F30CD00);
    if (v14 == v13)
    {
      goto LABEL_31;
    }
  }

  __break(1u);
LABEL_34:

  os_unfair_lock_unlock(a2 + 25);

  __break(1u);

  os_unfair_lock_unlock((a3 + 100));

  __break(1u);
  return result;
}

uint64_t sub_25F2064B8(_OWORD *a1, os_unfair_lock_s *a2, unsigned __int8 *a3, uint64_t a4, uint64_t a5)
{

  v9 = sub_25F206FE0(a3);
  v47 = 0;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD54C20, &qword_25F30CD18);
  v10 = swift_allocObject();
  *(v10 + 24) = 0;
  *(v10 + 16) = v9;
  *(a5 + 104) = v10;
  *(a5 + 112) = a2;

  v11 = sub_25F1C063C(a1);
  v42 = v9[2];
  v43 = v9;
  if (!v42)
  {
LABEL_31:

    return v11;
  }

  v12 = 0;
  v41 = v43 + 4;
  while (v12 < v43[2])
  {
    v13 = &v41[4 * v12];
    v15 = v13[1];
    v14 = v13[2];
    v16 = *v13;
    v17 = *(v13 + 24);

    sub_25F208B84(v15, v14, v17);
    sub_25F208B9C(v15, v14, v17);
    v18 = swift_allocObject();
    *(v18 + 16) = v11;
    *(v18 + 24) = v12;
    a3 = swift_allocObject();
    *(a3 + 2) = 0;
    *(a3 + 3) = 0;
    *(a3 + 4) = sub_25F208BB4;
    *(a3 + 5) = v18;
    v48 = v16;
    a2 = *(v16 + 88);
    v19 = MEMORY[0x28223BE20](a3);
    *(&v39 - 2) = sub_25F208BE8;
    *(&v39 - 1) = v19;
    swift_retain_n();
    swift_retain_n();
    os_unfair_lock_lock(a2 + 25);
    v20 = v47;
    sub_25F208BF4(&a2[4], &v66);
    if (v20)
    {
      goto LABEL_34;
    }

    os_unfair_lock_unlock(a2 + 25);
    *(v65 + 10) = *(v68 + 10);
    v64[0] = v66;
    v64[1] = v67;
    v65[0] = v68[0];
    v21 = BYTE9(v68[1]);
    v46 = &v39;
    if (BYTE9(v68[1]) != 255)
    {
      v22 = v12;
      v23 = *&v64[0];
      if (BYTE9(v68[1]))
      {
        if (BYTE9(v68[1]) == 1)
        {
          v61 = v66;
          v62 = v67;
          v63[0] = v68[0];
          *(v63 + 10) = *(v68 + 10);
          sub_25F1B7174(&v61, &v58, qword_27FD54C30, &qword_25F314C70);
          v24 = v23;
          v25 = 0;
          goto LABEL_13;
        }
      }

      else
      {
        v25 = *(&v64[0] + 1);
        v61 = v66;
        v62 = v67;
        v63[0] = v68[0];
        *(v63 + 10) = *(v68 + 10);
        sub_25F1B7174(&v61, &v58, qword_27FD54C30, &qword_25F314C70);

LABEL_13:

        sub_25F208B84(v23, v25, v21);
        sub_25F207398();

        sub_25F208B9C(v23, v25, v21);

        sub_25F208B9C(v23, v25, v21);
      }

      sub_25F1AF698(v64, &qword_27FD54C28, &unk_25F30CD20);
      v12 = v22;
      goto LABEL_16;
    }

LABEL_16:
    v61 = v66;
    v62 = v67;
    v63[0] = v68[0];
    *(v63 + 10) = *(v68 + 10);
    sub_25F1AF698(&v61, &qword_27FD54C28, &unk_25F30CD20);
    v26 = swift_allocObject();
    v45 = &v39;
    v26[2] = 0;
    v26[3] = 0;
    v26[4] = sub_25F208C10;
    v26[5] = v11;
    a2 = v48;
    a3 = *(v48 + 88);
    v27 = MEMORY[0x28223BE20](v26);
    *(&v39 - 2) = sub_25F208C4C;
    *(&v39 - 1) = v27;
    v44 = v27;
    swift_retain_n();
    os_unfair_lock_lock(a3 + 25);
    sub_25F209764((a3 + 16), &v58);
    v47 = 0;
    os_unfair_lock_unlock(a3 + 25);
    *(v57 + 10) = *(v60 + 10);
    v56[0] = v58;
    v56[1] = v59;
    v57[0] = v60[0];
    if (BYTE9(v60[1]) != 255)
    {
      v52 = *(&v56[0] + 1);
      if (BYTE9(v60[1]))
      {
        v28 = *&v56[0];
        if (BYTE9(v60[1]) == 1)
        {
          v29 = *&v56[0];
          goto LABEL_22;
        }

        v30 = *(v11 + 104);

        os_unfair_lock_lock((v30 + 24));
        v31 = *(v30 + 16);
        if (v31)
        {
          v50 = v28;
          v51 = v31;
          v40 = v12;
          *(v30 + 16) = 0;
          os_unfair_lock_unlock((v30 + 24));
          v32 = v51;
          v49 = *(v51 + 16);
          if (v49)
          {
            v33 = 0;
            a3 = (v51 + 56);
            while (v33 < *(v32 + 16))
            {
              ++v33;
              a2 = *(a3 - 2);
              v34 = *(a3 - 1);
              v35 = *(a3 - 3);
              v36 = *a3;
              a3 += 32;
              *&v53 = v50;
              *(&v53 + 1) = v52;
              v54 = v59;
              v55[0] = v60[0];
              *(v55 + 9) = *(v60 + 9);
              v37 = *(*v35 + 192);

              sub_25F208B84(a2, v34, v36);
              v37(&v53);

              sub_25F208B9C(a2, v34, v36);
              v32 = v51;
              if (v49 == v33)
              {
                goto LABEL_28;
              }
            }

            __break(1u);
            break;
          }

LABEL_28:

          v69[1] = v59;
          *v70 = v60[0];
          *&v70[9] = *(v60 + 9);
          *&v69[0] = v50;
          *(&v69[0] + 1) = v52;
          v71 = 2;
          sub_25F1C0FD0(v69);

          v12 = v40;
          a2 = v48;
        }

        else
        {
          os_unfair_lock_unlock((v30 + 24));
        }
      }

      else
      {

LABEL_22:

        a2 = v11;
      }

      sub_25F1AF698(v56, &qword_27FD54C28, &unk_25F30CD20);
      goto LABEL_4;
    }

LABEL_4:
    ++v12;
    v53 = v58;
    v54 = v59;
    v55[0] = v60[0];
    *(v55 + 10) = *(v60 + 10);
    sub_25F1AF698(&v53, &qword_27FD54C28, &unk_25F30CD20);
    if (v12 == v42)
    {
      goto LABEL_31;
    }
  }

  __break(1u);
LABEL_34:

  os_unfair_lock_unlock(a2 + 25);

  __break(1u);

  os_unfair_lock_unlock(a3 + 25);

  __break(1u);
  return result;
}

uint64_t sub_25F206BF8@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t)@<X1>, uint64_t a3@<X3>, char *a5@<X8>, uint64_t x5_0@<X5>)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27FD52B48, &qword_25F3084D0);
  v11 = sub_25F30678C();
  v12 = sub_25F305C1C();
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v17 - v13;
  v15 = a2(a1);
  (*(*(v11 - 8) + 56))(v14, 1, 1, v11);
  return sub_25F205C80(v15, v14, a3, a5, x5_0);
}

void *sub_25F206D34(unint64_t result)
{
  v20 = result >> 62;
  if (result >> 62)
  {
    goto LABEL_44;
  }

  for (i = *((result & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_25F30631C())
  {
    v21 = MEMORY[0x277D84F90];
    v2 = sub_25F1BD128(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      __break(1u);
      return v2;
    }

    if (!i)
    {
      break;
    }

    v3 = result;
    v4 = result & 0xFFFFFFFFFFFFFF8;
    if (v20)
    {
      v3 = result;
      v18 = sub_25F30631C();
    }

    else
    {
      v18 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v11 = 0;
    v5 = v3 & 0xC000000000000001;
    while (v11 < i)
    {
      v12 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        goto LABEL_41;
      }

      if (v18 == v11)
      {
        goto LABEL_42;
      }

      if (v5)
      {
        v13 = MEMORY[0x25F8D81E0](v11, v3);
        v3 = result;
        v14 = v13;
      }

      else
      {
        if (v11 >= *((result & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_43;
        }

        v14 = *(v3 + 8 * v11 + 32);
      }

      v16 = *(v21 + 16);
      v15 = *(v21 + 24);
      if (v16 >= v15 >> 1)
      {
        sub_25F1BD128((v15 > 1), v16 + 1, 1);
        v3 = result;
      }

      *(v21 + 16) = v16 + 1;
      v17 = v21 + 40 * v16;
      *(v17 + 32) = v14;
      *(v17 + 40) = 0;
      *(v17 + 48) = 0;
      *(v17 + 56) = 0;
      *(v17 + 64) = -1;
      ++v11;
      if (v12 == i)
      {
        goto LABEL_8;
      }
    }

LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    ;
  }

  v3 = result;
  v4 = result & 0xFFFFFFFFFFFFFF8;
  v5 = result & 0xC000000000000001;
LABEL_8:
  if (v20)
  {
    while (1)
    {
      v3 = result;
      if (i == sub_25F30631C())
      {
        break;
      }

LABEL_12:
      if (v5)
      {
        v10 = MEMORY[0x25F8D81E0](i, v3);
        v3 = result;
        v6 = v10;
        if (__OFADD__(i, 1))
        {
          goto LABEL_38;
        }
      }

      else
      {
        if (i < 0)
        {
          __break(1u);
LABEL_38:
          __break(1u);
LABEL_39:
          __break(1u);
          goto LABEL_40;
        }

        if (i >= *(v4 + 16))
        {
          goto LABEL_39;
        }

        v6 = *(v3 + 8 * i + 32);

        if (__OFADD__(i, 1))
        {
          goto LABEL_38;
        }
      }

      v8 = *(v21 + 16);
      v7 = *(v21 + 24);
      if (v8 >= v7 >> 1)
      {
        sub_25F1BD128((v7 > 1), v8 + 1, 1);
        v3 = result;
      }

      *(v21 + 16) = v8 + 1;
      v9 = v21 + 40 * v8;
      *(v9 + 32) = v6;
      *(v9 + 40) = 0;
      *(v9 + 48) = 0;
      *(v9 + 56) = 0;
      *(v9 + 64) = -1;
      ++i;
      if (!v20)
      {
        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    if (i != *(v4 + 16))
    {
      goto LABEL_12;
    }
  }

  return v21;
}

void *sub_25F206FE0(unint64_t result)
{
  v20 = result >> 62;
  if (result >> 62)
  {
    goto LABEL_44;
  }

  for (i = *((result & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_25F30631C())
  {
    v21 = MEMORY[0x277D84F90];
    v2 = sub_25F1BD1A8(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      __break(1u);
      return v2;
    }

    if (!i)
    {
      break;
    }

    v3 = result;
    v4 = result & 0xFFFFFFFFFFFFFF8;
    if (v20)
    {
      v3 = result;
      v18 = sub_25F30631C();
    }

    else
    {
      v18 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v11 = 0;
    v5 = v3 & 0xC000000000000001;
    while (v11 < i)
    {
      v12 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        goto LABEL_41;
      }

      if (v18 == v11)
      {
        goto LABEL_42;
      }

      if (v5)
      {
        v13 = MEMORY[0x25F8D81E0](v11, v3);
        v3 = result;
        v14 = v13;
      }

      else
      {
        if (v11 >= *((result & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_43;
        }

        v14 = *(v3 + 8 * v11 + 32);
      }

      v16 = *(v21 + 16);
      v15 = *(v21 + 24);
      if (v16 >= v15 >> 1)
      {
        sub_25F1BD1A8((v15 > 1), v16 + 1, 1);
        v3 = result;
      }

      *(v21 + 16) = v16 + 1;
      v17 = v21 + 32 * v16;
      *(v17 + 40) = 0;
      *(v17 + 48) = 0;
      *(v17 + 32) = v14;
      *(v17 + 56) = -1;
      ++v11;
      if (v12 == i)
      {
        goto LABEL_8;
      }
    }

LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    ;
  }

  v3 = result;
  v4 = result & 0xFFFFFFFFFFFFFF8;
  v5 = result & 0xC000000000000001;
LABEL_8:
  if (v20)
  {
    while (1)
    {
      v3 = result;
      if (i == sub_25F30631C())
      {
        break;
      }

LABEL_12:
      if (v5)
      {
        v10 = MEMORY[0x25F8D81E0](i, v3);
        v3 = result;
        v6 = v10;
        if (__OFADD__(i, 1))
        {
          goto LABEL_38;
        }
      }

      else
      {
        if (i < 0)
        {
          __break(1u);
LABEL_38:
          __break(1u);
LABEL_39:
          __break(1u);
          goto LABEL_40;
        }

        if (i >= *(v4 + 16))
        {
          goto LABEL_39;
        }

        v6 = *(v3 + 8 * i + 32);

        if (__OFADD__(i, 1))
        {
          goto LABEL_38;
        }
      }

      v8 = *(v21 + 16);
      v7 = *(v21 + 24);
      if (v8 >= v7 >> 1)
      {
        sub_25F1BD1A8((v7 > 1), v8 + 1, 1);
        v3 = result;
      }

      *(v21 + 16) = v8 + 1;
      v9 = v21 + 32 * v8;
      *(v9 + 40) = 0;
      *(v9 + 48) = 0;
      *(v9 + 32) = v6;
      *(v9 + 56) = -1;
      ++i;
      if (!v20)
      {
        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    if (i != *(v4 + 16))
    {
      goto LABEL_12;
    }
  }

  return v21;
}

void sub_25F207284()
{
  v1 = *(v0 + 104);
  os_unfair_lock_lock((v1 + 24));
  sub_25F208B20((v1 + 16), &v11);
  os_unfair_lock_unlock((v1 + 24));
  if (v11)
  {
    if (*(v0 + 112))
    {
      sub_25F2B89D0(v11);
    }

    else
    {
      v2 = sub_25F2085B0(v11);
    }

    v4 = v2;
    v5 = v3;

    v6 = (v5 & 1) != 0;
    v11 = v4;
    v12 = v7;
    v13 = v8;
    v14 = v9;
    v15 = v10;
    v16 = v6;
    sub_25F208C90(v4, v6);
    sub_25F1C0C90(&v11);
    sub_25F1C5980(v4, v6);
    sub_25F1C5980(v4, v6);
  }
}

void sub_25F207398()
{
  v1 = *(v0 + 104);
  os_unfair_lock_lock((v1 + 24));
  sub_25F208C58((v1 + 16), &v11);
  os_unfair_lock_unlock((v1 + 24));
  if (v11)
  {
    if (*(v0 + 112))
    {
      sub_25F2B8CFC(v11);
    }

    else
    {
      v2 = sub_25F2086D4(v11);
    }

    v4 = v2;
    v5 = v3;

    v6 = (v5 & 1) != 0;
    v11 = v4;
    v12 = v7;
    v13 = v8;
    v14 = v9;
    v15 = v10;
    v16 = v6;
    sub_25F208C90(v4, v6);
    sub_25F1C0FD0(&v11);
    sub_25F1C5980(v4, v6);
    sub_25F1C5980(v4, v6);
  }
}

uint64_t sub_25F2074AC(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  *&v27 = *(v2 + 104);
  *&v34 = "/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/TraverseFuture.swift";
  *(&v34 + 1) = 126;
  v35[0] = 2;
  *&v35[8] = xmmword_25F30CC10;
  *&v35[24] = "receiveUnderlyingCompletion(at:with:)";
  *&v35[32] = 37;
  v35[40] = 2;
  v22 = v3[25];
  v4 = v3[26];
  v23 = v4;
  v24 = v3[27];
  v25 = a1;
  v26 = a2;
  type metadata accessor for TraverseFuture.Activity(255, v22, v4, v24);
  v5 = sub_25F30476C();

  v6 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27FD52B48, &qword_25F3084D0);
  sub_25F30678C();
  v7 = sub_25F30539C();
  v8 = sub_25F305C1C();
  WitnessTable = swift_getWitnessTable();
  SynchronousAccessProviding.syncWrite<A>(defaultCallsite:_:)(&v34, sub_25F208B3C, &v21, v5, v8, WitnessTable);

  if (*&v30[0])
  {
    if (*(v2 + 112) == 1)
    {
      *&v34 = *&v30[0];
      v11 = swift_getWitnessTable();
      v12 = Sequence.invertAndAccumulateErrors<A, B>()(v7, v4, v6, v11, MEMORY[0x277D84950]);
      v14 = v13;
    }

    else
    {
      v15 = swift_getWitnessTable();
      Sequence.invert<A, B>()(v7, v4, v6, v15, MEMORY[0x277D84950], &v34);

      v12 = v34;
      v14 = BYTE8(v34);
    }

    v32 = v12;
    v33 = v14 & 1;
    v16 = sub_25F30539C();
    v17 = sub_25F30678C();
    sub_25F3020F8(v17, v30);
    v27 = v30[0];
    v28 = v30[1];
    v29[0] = v31[0];
    *(v29 + 10) = *(v31 + 10);
    sub_25F2EA104(&v27);
    sub_25F1C5980(v12, v14 & 1);
    v34 = v27;
    *v35 = v28;
    *&v35[16] = v29[0];
    *&v35[26] = *(v29 + 10);
    v20 = type metadata accessor for FutureTermination(0, v16, v18, v19);
    return (*(*(v20 - 8) + 8))(&v34, v20);
  }

  return result;
}

void sub_25F2077DC(__int128 *a1)
{
  v2 = *(v1 + 104);
  os_unfair_lock_lock((v2 + 24));
  v3 = *(v2 + 16);
  if (v3)
  {
    *(v2 + 16) = 0;
    os_unfair_lock_unlock((v2 + 24));
    v14 = *(v3 + 16);
    if (v14)
    {
      v4 = 0;
      v5 = (v3 + 64);
      while (v4 < *(v3 + 16))
      {
        ++v4;
        v7 = *(v5 - 2);
        v6 = *(v5 - 1);
        v8 = *(v5 - 4);
        v9 = *(v5 - 3);
        v10 = *v5;
        v5 += 40;
        v11 = a1[1];
        v16 = *a1;
        v17 = v11;
        *v18 = a1[2];
        *&v18[9] = *(a1 + 41);
        v12 = *(*v8 + 192);

        sub_25F208938(v9, v7, v6, v10);
        v12(&v16);

        sub_25F208960(v9, v7, v6, v10);
        if (v14 == v4)
        {
          goto LABEL_6;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_6:

      v13 = a1[1];
      v16 = *a1;
      v17 = v13;
      *v18 = a1[2];
      *&v18[9] = *(a1 + 41);
      v19 = 2;
      sub_25F1C0C90(&v16);
    }
  }

  else
  {

    os_unfair_lock_unlock((v2 + 24));
  }
}

void sub_25F207970(__int128 *a1)
{
  v3 = *(v1 + 104);
  os_unfair_lock_lock((v3 + 24));
  v4 = *(v3 + 16);
  if (v4)
  {
    *(v3 + 16) = 0;
    os_unfair_lock_unlock((v3 + 24));
    v14 = *(v4 + 16);
    if (v14)
    {
      v5 = 0;
      v6 = (v4 + 56);
      while (v5 < *(v4 + 16))
      {
        ++v5;
        v8 = *(v6 - 2);
        v7 = *(v6 - 1);
        v9 = *(v6 - 3);
        v10 = *v6;
        v6 += 32;
        v11 = a1[1];
        v15 = *a1;
        v16 = v11;
        *v17 = a1[2];
        *&v17[9] = *(a1 + 41);
        v12 = *(*v9 + 192);

        sub_25F208B84(v8, v7, v10);
        v12(&v15);

        sub_25F208B9C(v8, v7, v10);
        if (v14 == v5)
        {
          goto LABEL_6;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_6:

      v13 = a1[1];
      v15 = *a1;
      v16 = v13;
      *v17 = a1[2];
      *&v17[9] = *(a1 + 41);
      v18 = 2;
      sub_25F1C0FD0(&v15);
    }
  }

  else
  {

    os_unfair_lock_unlock((v3 + 24));
  }
}

uint64_t sub_25F207AF4(__int128 *a1)
{
  v2 = *v1;
  v3 = a1[1];
  v19 = *a1;
  v20 = v3;
  v21[0] = a1[2];
  v4 = v21[0];
  *(v21 + 9) = *(a1 + 41);
  v22 = v19;
  v23 = v3;
  v24[0] = v4;
  *(v24 + 9) = *(v21 + 9);
  v17 = v1[13];
  *&v14 = "/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/TraverseFuture.swift";
  *(&v14 + 1) = 126;
  v15[0] = 2;
  *&v15[8] = xmmword_25F30CC20;
  *&v15[24] = "cancel(callsite:)";
  *&v15[32] = 17;
  v15[40] = 2;
  v11 = v2[25];
  v12 = v2[26];
  v13 = v2[27];
  type metadata accessor for TraverseFuture.Activity(255, v11, v12, v13);
  v5 = sub_25F30476C();
  type metadata accessor for TraverseFuture.Activity.Fiber(255, v11, v12, v13);
  sub_25F30539C();
  v6 = sub_25F305C1C();

  WitnessTable = swift_getWitnessTable();
  SynchronousAccessProviding.syncWrite<A>(defaultCallsite:_:)(&v14, sub_25F208898, &v10, v5, v6, WitnessTable);

  if (v18)
  {
    v9[1] = v9;
    *&v14 = v18;
    MEMORY[0x28223BE20](result);
    swift_getWitnessTable();
    sub_25F3051BC();

    v14 = v22;
    *v15 = v23;
    *&v15[16] = v24[0];
    *&v15[25] = *(v24 + 9);
    v16 = 2;
    return sub_25F2EA104(&v14);
  }

  return result;
}

uint64_t sub_25F207D70(uint64_t *a1, unint64_t a2, void *a3, uint64_t a4, uint64_t a5, char a6)
{
  v6 = *a1;
  if (!*a1)
  {
    return 0;
  }

  v11 = a1;
  v12 = a6 & 1;
  sub_25F208950(a3, a4, a5, a6 & 1);
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      goto LABEL_4;
    }

LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  result = sub_25F1E10D8(v6);
  v6 = result;
  if ((a2 & 0x8000000000000000) != 0)
  {
    goto LABEL_16;
  }

LABEL_4:
  if (v6[2] <= a2)
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v14 = &v6[5 * a2];
  v15 = v14[5];
  v16 = v14[6];
  v17 = v14[7];
  v14[5] = a3;
  v14[6] = a4;
  v14[7] = a5;
  v18 = *(v14 + 64);
  *(v14 + 64) = v12;
  sub_25F208960(v15, v16, v17, v18);
  v19 = v6[2];
  v20 = MEMORY[0x277D84F90];
  if (v19)
  {
    v32 = v11;
    v33 = MEMORY[0x277D84F90];
    sub_25F1BD0E8(0, v19, 0);
    v20 = v33;
    v30 = v19;
    v31 = v6;
    v21 = (v6 + 8);
    do
    {
      v22 = *(v21 - 3);
      v23 = *(v21 - 2);
      v24 = *(v21 - 1);
      v25 = *v21;
      sub_25F208938(v22, v23, v24, *v21);
      v27 = *(v33 + 16);
      v26 = *(v33 + 24);
      if (v27 >= v26 >> 1)
      {
        sub_25F1BD0E8((v26 > 1), v27 + 1, 1);
      }

      v21 += 40;
      *(v33 + 16) = v27 + 1;
      v28 = v33 + 32 * v27;
      *(v28 + 32) = v22;
      *(v28 + 40) = v23;
      *(v28 + 48) = v24;
      *(v28 + 56) = v25;
      --v19;
    }

    while (v19);
    v6 = v31;
    v11 = v32;
    v19 = v30;
  }

  v29 = sub_25F2DE000(v20);

  if (*(v29 + 16) == v19)
  {

    result = v29;
    *v11 = 0;
  }

  else
  {

    result = 0;
    *v11 = v6;
  }

  return result;
}

uint64_t sub_25F207F4C(uint64_t *a1, unint64_t a2, void *a3, uint64_t a4, char a5)
{
  v5 = *a1;
  if (!*a1)
  {
    return 0;
  }

  v9 = a1;
  v10 = a5 & 1;
  sub_25F1D93AC(a3, a4, a5 & 1);
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      goto LABEL_4;
    }

LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  result = sub_25F1E1100(v5);
  v5 = result;
  if ((a2 & 0x8000000000000000) != 0)
  {
    goto LABEL_16;
  }

LABEL_4:
  if (v5[2] <= a2)
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v12 = &v5[4 * a2];
  v13 = v12[5];
  v14 = v12[6];
  v12[5] = a3;
  v12[6] = a4;
  v15 = *(v12 + 56);
  *(v12 + 56) = v10;
  sub_25F208B9C(v13, v14, v15);
  v16 = v5[2];
  v17 = MEMORY[0x277D84F90];
  if (v16)
  {
    v28 = v9;
    v29 = MEMORY[0x277D84F90];
    sub_25F1BD188(0, v16, 0);
    v17 = v29;
    v26 = v16;
    v27 = v5;
    v18 = (v5 + 7);
    do
    {
      v19 = *(v18 - 2);
      v20 = *(v18 - 1);
      v21 = *v18;
      sub_25F208B84(v19, v20, *v18);
      v23 = *(v29 + 16);
      v22 = *(v29 + 24);
      if (v23 >= v22 >> 1)
      {
        sub_25F1BD188((v22 > 1), v23 + 1, 1);
      }

      v18 += 32;
      *(v29 + 16) = v23 + 1;
      v24 = v29 + 24 * v23;
      *(v24 + 32) = v19;
      *(v24 + 40) = v20;
      *(v24 + 48) = v21;
      --v16;
    }

    while (v16);
    v5 = v27;
    v9 = v28;
    v16 = v26;
  }

  v25 = sub_25F2DE124(v17);

  if (*(v25 + 16) == v16)
  {

    result = v25;
    *v9 = 0;
  }

  else
  {

    result = 0;
    *v9 = v5;
  }

  return result;
}

uint64_t sub_25F20810C@<X0>(uint64_t *a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  v44 = a6;
  v46 = a4;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27FD52B48, &qword_25F3084D0);
  v13 = sub_25F30678C();
  v14 = sub_25F305C1C();
  v15 = *(v14 - 8);
  result = MEMORY[0x28223BE20](v14);
  v18 = &v41 - v17;
  v45 = a1;
  v19 = *a1;
  if (*a1)
  {
    v43 = a7;
    v49 = v19;
    v20 = *(v13 - 8);
    v47 = v7;
    v21 = v20;
    v22 = *(v20 + 16);
    v41 = result;
    v22(v18, a3, v13);
    (*(v21 + 56))(v18, 0, 1, v13);
    v23 = a5;
    v42 = a5;
    v24 = v44;
    v25 = type metadata accessor for TraverseFuture.Activity.Fiber(255, v46, v23, v44);
    v26 = sub_25F30539C();
    sub_25F3052CC();
    v27 = v49;
    sub_25F24933C(a2, v49, v25);
    v28 = v27 + ((*(*(v25 - 8) + 80) + 32) & ~*(*(v25 - 8) + 80)) + *(*(v25 - 8) + 72) * a2 + *(v25 + 44);
    v29 = v41;
    (*(v15 + 40))(v28, v18, v41);
    nullsub_2();
    v30 = v49;
    v48 = v49;
    MEMORY[0x28223BE20](v31);
    v32 = v42;
    *(&v41 - 4) = v46;
    *(&v41 - 3) = v32;
    *(&v41 - 2) = v24;

    WitnessTable = swift_getWitnessTable();
    v34 = v47;
    v36 = sub_25F1C1AC4(sub_25F208B60, (&v41 - 6), v26, v29, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v35);
    v47 = v34;

    v48 = v36;
    v37 = sub_25F30539C();
    v38 = swift_getWitnessTable();
    default argument 0 of Collection.compacted<A>(type:)(v37, v13);
    v39 = Collection.compacted<A>(type:)(v13, v37, v13, v38);

    v40 = sub_25F30531C();
    if (v40 == sub_25F30531C())
    {

      *v45 = 0;
      *v43 = v39;
    }

    else
    {

      *v45 = v30;
      *v43 = 0;
    }
  }

  else
  {
    *a7 = 0;
  }

  return result;
}

uint64_t sub_25F2084F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, uint64_t a5@<X3>)
{
  v7 = *(type metadata accessor for TraverseFuture.Activity.Fiber(0, a2, a3, a5) + 44);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27FD52B48, &qword_25F3084D0);
  sub_25F30678C();
  v8 = sub_25F305C1C();
  return (*(*(v8 - 8) + 16))(a4, a1 + v7, v8);
}

void *sub_25F2085B0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F90];
  }

  v2 = (a1 + 56);
  v3 = MEMORY[0x277D84F90];
  while ((*v2 & 1) == 0)
  {
    v13 = *(v2 - 24);
    v4 = *(v2 - 1);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v3 = sub_25F2F09D0(0, v3[2] + 1, 1, v3);
    }

    v6 = v3[2];
    v5 = v3[3];
    v7 = v13;
    if (v6 >= v5 >> 1)
    {
      v9 = sub_25F2F09D0((v5 > 1), v6 + 1, 1, v3);
      v7 = v13;
      v3 = v9;
    }

    v3[2] = v6 + 1;
    v8 = &v3[3 * v6];
    *(v8 + 2) = v7;
    v8[6] = v4;
    v2 += 32;
    if (!--v1)
    {
      return v3;
    }
  }

  v10 = *(v2 - 3);
  v11 = v10;

  return v10;
}

void *sub_25F2086D4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F90];
  }

  v2 = (a1 + 48);
  v3 = MEMORY[0x277D84F90];
  while ((*v2 & 1) == 0)
  {
    v11 = *(v2 - 1);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v3 = sub_25F2F1030(0, v3[2] + 1, 1, v3);
    }

    v5 = v3[2];
    v4 = v3[3];
    v6 = v11;
    if (v5 >= v4 >> 1)
    {
      v7 = sub_25F2F1030((v4 > 1), v5 + 1, 1, v3);
      v6 = v11;
      v3 = v7;
    }

    v3[2] = v5 + 1;
    *&v3[2 * v5 + 4] = v6;
    v2 += 24;
    if (!--v1)
    {
      return v3;
    }
  }

  v8 = *(v2 - 2);
  v9 = v8;

  return v8;
}

uint64_t sub_25F2087E4()
{
  v0 = Future.deinit();

  return MEMORY[0x2821FE8D8](v0, 113, 7);
}

uint64_t sub_25F208844(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t *sub_25F208898@<X0>(uint64_t *result@<X0>, void *a2@<X8>)
{
  v2 = *result;
  if (*result)
  {
    *result = 0;
  }

  *a2 = v2;
  return result;
}

uint64_t sub_25F2088C4(uint64_t *a1)
{
  v2 = *(v1 + 40);
  v3 = *a1;
  v4 = v2[1];
  v6[0] = *v2;
  v6[1] = v4;
  v7[0] = v2[2];
  *(v7 + 9) = *(v2 + 41);
  return (*(*v3 + 192))(v6);
}

id sub_25F208938(id result, uint64_t a2, uint64_t a3, char a4)
{
  if (a4 != -1)
  {
    return sub_25F208950(result, a2, a3, a4 & 1);
  }

  return result;
}

id sub_25F208950(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
    return a1;
  }

  else
  {
  }
}

void sub_25F208960(void *result, uint64_t a2, uint64_t a3, char a4)
{
  if (a4 != -1)
  {
    sub_25F208978(result, a2, a3, a4 & 1);
  }
}

void sub_25F208978(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
  }

  else
  {
  }
}

void sub_25F2089F4(__int128 *a1)
{
  v1 = a1[1];
  v2[0] = *a1;
  v2[1] = v1;
  v3[0] = a1[2];
  *(v3 + 9) = *(a1 + 41);
  sub_25F2077DC(v2);
}

uint64_t sub_25F208A48(_OWORD *a1, uint64_t (*a2)(_OWORD *, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v4 = v2[2];
  v5 = v2[3];
  v6 = v2[4];
  v7 = v2[5];
  v8 = a1[1];
  v10[0] = *a1;
  v10[1] = v8;
  v11[0] = a1[2];
  *(v11 + 10) = *(a1 + 42);
  return a2(v10, v4, v5, v6, v7);
}

uint64_t sub_25F208A94(uint64_t (*a1)(__int128 *), uint64_t a2, __int128 *a3)
{
  v3 = *(a3 + 2);
  v4 = *(a3 + 24);
  v6 = *a3;
  v7 = v3;
  v8 = v4;
  return a1(&v6);
}

uint64_t sub_25F208AE4@<X0>(uint64_t *a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  result = sub_25F207D70(a1, a2, *a3, *(a3 + 8), *(a3 + 16), *(a3 + 24));
  if (!v4)
  {
    *a4 = result;
  }

  return result;
}

id sub_25F208B84(id result, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_25F1D93AC(result, a2, a3 & 1);
  }

  return result;
}

void sub_25F208B9C(void *a1, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    sub_25F1D93BC(a1, a2, a3 & 1);
  }
}

void sub_25F208C10(__int128 *a1)
{
  v1 = a1[1];
  v2[0] = *a1;
  v2[1] = v1;
  v3[0] = a1[2];
  *(v3 + 9) = *(a1 + 41);
  sub_25F207970(v2);
}

uint64_t sub_25F208C58@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_25F207F4C(a1, *(v2 + 16), **(v2 + 24), *(*(v2 + 24) + 8), *(*(v2 + 24) + 16));
  if (!v3)
  {
    *a2 = result;
  }

  return result;
}

id sub_25F208C90(id a1, char a2)
{
  if (a2)
  {
    return a1;
  }

  else
  {
  }
}

uint64_t objectdestroy_2Tm()
{
  v1 = *(v0 + 16);
  if (v1 >= 2)
  {
  }

  return swift_deallocObject();
}

uint64_t sub_25F208CE4(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_25F208D24(uint64_t a1)
{
  sub_25F20928C(a1);
}

uint64_t sub_25F208D54(_OWORD *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v46 = a5;
  v45 = a4;
  v44[1] = a3;
  LODWORD(v49) = a2;
  v7 = *(*v5 + 200);
  v8 = *(*v5 + 208);
  v9 = *(*v5 + 216);
  v10 = type metadata accessor for TraverseFuture.Activity.Fiber(255, v7, v8, v9);
  v52 = v10;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v51 = sub_25F305C1C();
  v48 = *(v51 - 8);
  v12 = MEMORY[0x28223BE20](v51);
  v50 = v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = (v44 - v15);
  v17 = *(v7 - 1);
  MEMORY[0x28223BE20](v14);
  v19 = v44 - v18;
  v20 = a1[1];
  v62[0] = *a1;
  v62[1] = v20;
  v63[0] = a1[2];
  *(v63 + 9) = *(a1 + 41);
  v22 = type metadata accessor for Inhabited(0, v7, v9, v21);
  WitnessTable = swift_getWitnessTable();
  PredicatedWrapper.value.getter(v22, WitnessTable, v19);
  v54 = v7;
  v55 = v8;
  v56 = v9;
  v57 = v45;
  v58 = v46;
  v25 = sub_25F2E3888(sub_25F209294, v53, v7, v10, MEMORY[0x277D84A98], v9, MEMORY[0x277D84AC0], v24);
  (*(v17 + 8))(v19, v7);
  v61[0] = v25;
  v26 = type metadata accessor for TraverseFuture.Activity(0, v7, v8, v9);
  v27 = sub_25F203E0C(v61, v26);
  v28 = v47;
  *(v47 + 13) = v27;
  v28[112] = v49;
  v32 = sub_25F2E95EC(v62, v29, v30, v31);
  v61[0] = v25;
  v33 = v52;
  v34 = sub_25F30539C();
  v35 = swift_getWitnessTable();
  MEMORY[0x25F8D72E0](&v60, v34, v35);

  v59 = v60;
  sub_25F3062EC();
  sub_25F3062BC();
  v49 = sub_25F3062DC();
  v36 = (v48 + 32);
  v48 = TupleTypeMetadata2 - 8;
  v47 = v33 - 8;
  v37 = v52;
  while (1)
  {
    v38 = v50;
    sub_25F3062CC();
    (*v36)(v16, v38, v51);
    if ((*(*(TupleTypeMetadata2 - 8) + 48))(v16, 1, TupleTypeMetadata2) == 1)
    {
      break;
    }

    v39 = *v16;
    v40 = *(TupleTypeMetadata2 + 48);
    v41 = *(*(v37 - 1) + 8);

    v41(v16 + v40, v37);
    v42 = swift_allocObject();
    *(v42 + 16) = v32;
    *(v42 + 24) = v39;

    Future.observeCompletion(_:)(sub_25F2092BC, v42);

    Future.observeCancelation(_:)(sub_25F2092E8, v32);
  }

  return v32;
}

uint64_t sub_25F2092E8(__int128 *a1)
{
  v1 = a1[1];
  v3[0] = *a1;
  v3[1] = v1;
  v4[0] = a1[2];
  *(v4 + 9) = *(a1 + 41);
  return sub_25F207AF4(v3);
}

uint64_t sub_25F209324(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for Future(319, *(a1 + 24), a3, a4);
  if (v5 <= 0x3F)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27FD52B48, &qword_25F3084D0);
    sub_25F30678C();
    result = sub_25F305C1C();
    if (v6 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_25F2093E0(unsigned __int16 *a1, int a2, uint64_t a3)
{
  v3 = *(*(a3 + 24) - 8);
  v4 = *(v3 + 64);
  if (v4 <= 8)
  {
    v4 = 8;
  }

  if (!a2)
  {
    return 0;
  }

  if ((a2 & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  v7 = v4 + (((*(v3 + 80) & 0xF8) + 15) & ~(*(v3 + 80) & 0xF8) & 0x1F8) + 1;
  v8 = 8 * v7;
  if (v7 > 3)
  {
    goto LABEL_10;
  }

  v10 = (a2 - 0x7FFFFFFF + ~(-1 << v8)) >> v8;
  if (v10 > 0xFFFE)
  {
    v9 = *(a1 + v7);
    if (!v9)
    {
      goto LABEL_5;
    }

    goto LABEL_19;
  }

  if (v10 <= 0xFE)
  {
    if (!v10)
    {
      goto LABEL_5;
    }

LABEL_10:
    v9 = *(a1 + v7);
    if (!*(a1 + v7))
    {
      goto LABEL_5;
    }

    goto LABEL_19;
  }

  v9 = *(a1 + v7);
  if (!*(a1 + v7))
  {
LABEL_5:
    v5 = *a1;
    if (*a1 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v5) = -1;
    }

    return (v5 + 1);
  }

LABEL_19:
  v11 = (v9 - 1) << v8;
  if (v7 > 3)
  {
    v11 = 0;
  }

  if (v7)
  {
    if (v7 > 3)
    {
      LODWORD(v7) = 4;
    }

    if (v7 > 2)
    {
      if (v7 == 3)
      {
        LODWORD(v7) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v7) = *a1;
      }
    }

    else if (v7 == 1)
    {
      LODWORD(v7) = *a1;
    }

    else
    {
      LODWORD(v7) = *a1;
    }
  }

  return (v7 | v11) ^ 0x80000000;
}

unsigned int *sub_25F209540(unsigned int *result, int a2, int a3, uint64_t a4)
{
  v4 = *(*(a4 + 24) - 8);
  v5 = *(v4 + 64);
  if (v5 <= 8)
  {
    v5 = 8;
  }

  v6 = v5 + (((*(v4 + 80) & 0xF8) + 15) & ~(*(v4 + 80) & 0xF8) & 0x1F8) + 1;
  if ((a3 & 0x80000000) == 0)
  {
    v7 = 0;
    if (a2 < 0)
    {
      goto LABEL_17;
    }

LABEL_26:
    if (v7 > 1)
    {
      if (v7 != 2)
      {
        *(result + v6) = 0;
        if (!a2)
        {
          return result;
        }

LABEL_33:
        *result = (a2 - 1);
        return result;
      }

      *(result + v6) = 0;
    }

    else if (v7)
    {
      *(result + v6) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_33;
    }

    if (!a2)
    {
      return result;
    }

    goto LABEL_33;
  }

  if (v6 <= 3)
  {
    v8 = (a3 - 0x7FFFFFFF + ~(-1 << (8 * v6))) >> (8 * v6);
    if (v8 > 0xFFFE)
    {
      v7 = 4;
      if (a2 < 0)
      {
        goto LABEL_17;
      }

      goto LABEL_26;
    }

    if (v8 < 0xFF)
    {
      v9 = 1;
    }

    else
    {
      v9 = 2;
    }

    if (v8)
    {
      v7 = v9;
    }

    else
    {
      v7 = 0;
    }

    if ((a2 & 0x80000000) == 0)
    {
      goto LABEL_26;
    }
  }

  else
  {
    v7 = 1;
    if ((a2 & 0x80000000) == 0)
    {
      goto LABEL_26;
    }
  }

LABEL_17:
  v10 = a2 & 0x7FFFFFFF;
  if (v6 >= 4)
  {
    v11 = result;
    bzero(result, v6);
    result = v11;
    *v11 = v10;
    v12 = 1;
    if (v7 > 1)
    {
      goto LABEL_42;
    }

    goto LABEL_39;
  }

  v12 = (v10 >> (8 * v6)) + 1;
  if (!v6)
  {
LABEL_38:
    if (v7 > 1)
    {
      goto LABEL_42;
    }

    goto LABEL_39;
  }

  v13 = a2;
  v14 = a2 & ~(-1 << (8 * v6));
  v15 = result;
  bzero(result, v6);
  result = v15;
  if (v6 == 3)
  {
    *v15 = v14;
    *(v15 + 2) = BYTE2(v14);
    goto LABEL_38;
  }

  if (v6 == 2)
  {
    *v15 = v14;
    if (v7 > 1)
    {
LABEL_42:
      if (v7 == 2)
      {
        *(result + v6) = v12;
      }

      else
      {
        *(result + v6) = v12;
      }

      return result;
    }
  }

  else
  {
    *v15 = v13;
    if (v7 > 1)
    {
      goto LABEL_42;
    }
  }

LABEL_39:
  if (v7)
  {
    *(result + v6) = v12;
  }

  return result;
}

uint64_t sub_25F20977C@<X0>(void (*a1)(char *, char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X6>, uint64_t a6@<X8>)
{
  v25 = a5;
  v26 = a2;
  v28 = a4;
  v27 = a1;
  v24 = *(a3 - 8);
  v10 = MEMORY[0x28223BE20](a1);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v13 + 16);
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v10);
  v18 = &v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v24 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v21 + 16))(v20, v6);
  v22 = 1;
  if ((*(v15 + 48))(v20, 1, v14) != 1)
  {
    (*(v15 + 32))(v18, v20, v14);
    v27(v18, v12);
    (*(v15 + 8))(v18, v14);
    if (v7)
    {
      return (*(v24 + 32))(v25, v12, a3);
    }

    v22 = 0;
  }

  return (*(*(v28 - 8) + 56))(a6, v22, 1);
}

uint64_t static AnalyticsValue.type<A>(of:)(uint64_t a1, uint64_t a2)
{
  v4[2] = a2;
  sub_25F305C1C();
  sub_25F20977C(sub_25F209BB4, v4, MEMORY[0x277D84A98], &type metadata for AnalyticsValue, v2, &v5);
  if (v6 == 255)
  {
    return 0;
  }

  else
  {
    return v5;
  }
}

uint64_t sub_25F209AFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v12 = a2;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v11);
  (*(*(a2 - 8) + 16))(boxed_opaque_existential_1, a1, a2);
  __swift_project_boxed_opaque_existential_1(v11, v12);
  swift_getDynamicType();
  v7 = sub_25F30685C();
  v9 = v8;
  result = __swift_destroy_boxed_opaque_existential_1(v11);
  *a3 = v7;
  *(a3 + 8) = v9;
  *(a3 + 16) = 0;
  return result;
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t get_enum_tag_for_layout_string_20PreviewsFoundationOS14AnalyticsValueO(uint64_t a1)
{
  if ((*(a1 + 16) & 7u) <= 4)
  {
    return *(a1 + 16) & 7;
  }

  else
  {
    return (*a1 + 5);
  }
}

uint64_t sub_25F209C0C(uint64_t a1, unsigned int a2)
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

uint64_t sub_25F209C54(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_25F209C98(uint64_t result, unsigned int a2)
{
  if (a2 >= 5)
  {
    *result = a2 - 5;
    *(result + 8) = 0;
    LOBYTE(a2) = 5;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t CrashReportError.DyldLibraryLoadCrashError.library.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t CrashReportError.DyldLibraryLoadCrashError.crashReport.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for CrashReportError.DyldLibraryLoadCrashError(0) + 28);

  return sub_25F1DF920(v3, a1);
}

uint64_t type metadata accessor for CrashReportError.DyldLibraryLoadCrashError(uint64_t a1)
{
  result = qword_27FD54CC0;
  if (!qword_27FD54CC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t CrashReportError.DyldLibraryLoadCrashError.highValueTitle.getter()
{
  sub_25F305FAC();
  v1 = v0[2];

  MEMORY[0x25F8D7130](0xD000000000000011, 0x800000025F3183E0);
  MEMORY[0x25F8D7130](v0[4], v0[5]);
  MEMORY[0x25F8D7130](0x7373696D20736920, 0xEB00000000676E69);
  return v1;
}

id sub_25F209E40()
{
  v0 = objc_allocWithZone(MEMORY[0x277CCAC68]);
  result = sub_25F2B3AE4(0xD000000000000062, 0x800000025F3184A0, 0);
  qword_27FD54CB8 = result;
  return result;
}

uint64_t static CrashReportError.DyldLibraryLoadCrashError.asiRegularExpression.getter()
{
  if (qword_27FD52788 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = qword_27FD54CB8;
  v1 = qword_27FD54CB8;
  return v0;
}

void static CrashReportError.DyldLibraryLoadCrashError.asiRegularExpression.setter(uint64_t a1)
{
  if (qword_27FD52788 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = qword_27FD54CB8;
  qword_27FD54CB8 = a1;
}

uint64_t (*static CrashReportError.DyldLibraryLoadCrashError.asiRegularExpression.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_27FD52788 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

id sub_25F20A07C@<X0>(void *a1@<X8>)
{
  if (qword_27FD52788 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = qword_27FD54CB8;
  *a1 = qword_27FD54CB8;

  return v2;
}

void sub_25F20A108(id *a1)
{
  v1 = *a1;
  v2 = qword_27FD52788;
  v3 = *a1;
  if (v2 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v4 = qword_27FD54CB8;
  qword_27FD54CB8 = v1;
}

uint64_t CrashReportError.DyldLibraryLoadCrashError.init(report:asi:match:)@<X0>(uint64_t a1@<X0>, void *a4@<X3>, uint64_t a5@<X8>)
{
  CrashError = type metadata accessor for CrashReportError.DyldLibraryLoadCrashError(0);
  v9 = *(CrashError - 8);
  MEMORY[0x28223BE20](CrashError);
  v11 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v11 = 0;
  v11[8] = 1;
  v12 = (a1 + *(type metadata accessor for CrashReport(0) + 20));
  v13 = v12[1];
  *(v11 + 2) = *v12;
  *(v11 + 3) = v13;

  v14 = sub_25F304DDC();

  v15 = sub_25F304DDC();
  v16 = [a4 rangeWithName_];
  v18 = v17;

  v19 = [v14 substringWithRange_];
  v20 = sub_25F304E0C();
  v22 = v21;

  v27[0] = v20;
  v27[1] = v22;
  v23 = sub_25F3050BC();
  v25 = v24;

  *(v11 + 4) = v23;
  *(v11 + 5) = v25;
  sub_25F20A3AC(a1, &v11[*(CrashError + 28)], type metadata accessor for CrashReport);
  sub_25F20A3AC(v11, a5, type metadata accessor for CrashReportError.DyldLibraryLoadCrashError);
  return (*(v9 + 56))(a5, 0, 1, CrashError);
}

uint64_t sub_25F20A3AC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_25F20A450(uint64_t a1)
{
  sub_25F1E1DA8();
  if (v1 <= 0x3F)
  {
    type metadata accessor for CrashReport(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void (*default argument 1 of captureWeak<A, B, C>(_:deinitialized:toInvoke:)(uint64_t a1, uint64_t a2, uint64_t a3))()
{
  v6 = swift_allocObject();
  v6[2] = a1;
  v6[3] = a2;
  v6[4] = a3;
  return nullsub_2;
}

uint64_t (*captureWeak<A, B, C>(_:deinitialized:toInvoke:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8))()
{
  v16 = swift_allocObject();
  v16[2] = a6;
  v16[3] = a7;
  v16[4] = a8;
  v16[5] = a4;
  v16[6] = a5;
  v17 = swift_allocObject();
  v17[2] = a6;
  v17[3] = a7;
  v17[4] = a8;
  v17[5] = a2;
  v17[6] = a3;
  captureWeak<A, B, C, D>(_:toInvoke:deinitialized:)(a1, sub_25F20D9BC, v16, sub_25F20D9E4, v17, a6, a7, a8, MEMORY[0x277D84F78] + 8);
  v19 = v18;

  v20 = swift_allocObject();
  v20[2] = a6;
  v20[3] = a7;
  v20[4] = a8;
  v20[5] = sub_25F20ECC0;
  v20[6] = v19;
  return sub_25F20DA0C;
}

uint64_t (*captureWeak<A, B>(toInvokeInstanceMethod:on:deinitialized:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7))()
{
  v14 = swift_allocObject();
  v14[2] = a6;
  v14[3] = a7;
  v14[4] = a1;
  v14[5] = a2;
  captureWeak<A, B>(_:toInvoke:deinitialized:)(a3, sub_25F20DA34, v14, a4, a5, a6, a7);

  return sub_25F20DA84;
}

uint64_t (*captureWeak<A, B>(_:toInvoke:deinitialized:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7))()
{
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v14 = swift_allocObject();
  v14[2] = a6;
  v14[3] = a7;
  v14[4] = v13;
  v14[5] = a4;
  v14[6] = a5;
  v14[7] = a2;
  v14[8] = a3;

  return sub_25F20DA84;
}

uint64_t (*captureWeak<A>(toInvokeInstanceMethod:deinitialized:on:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6))()
{
  v12 = swift_allocObject();
  v12[2] = a6;
  v12[3] = a1;
  v12[4] = a2;
  v13 = swift_allocObject();
  *(v13 + 16) = a3;
  *(v13 + 24) = a4;

  captureWeak<A, B>(toInvokeInstanceMethod:on:deinitialized:)(sub_25F20DA98, v12, a5, sub_25F20DAF8, v13, a6, MEMORY[0x277D84F78] + 8);
  v15 = v14;

  v16 = swift_allocObject();
  *(v16 + 16) = sub_25F20DA84;
  *(v16 + 24) = v15;
  return sub_25F20DB20;
}

uint64_t (*captureWeak<A, B, C>(toInvokeInstanceMethod:on:context:deinitialized:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9))()
{
  v17 = swift_allocObject();
  v17[2] = a7;
  v17[3] = a8;
  v17[4] = a9;
  v17[5] = a1;
  v17[6] = a2;
  captureWeak<A, B, C>(_:context:toInvoke:deinitialized:)(a3, a4, sub_25F20EF28, v17, a5, a6, a7, a8, a9);

  return sub_25F20DB28;
}

uint64_t (*captureWeak<A, B, C>(_:context:toInvoke:deinitialized:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9))()
{
  v22 = a7;
  v23 = a5;
  v24 = a3;
  v13 = *(a8 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](a1);
  v15 = swift_allocObject();
  swift_unknownObjectWeakInit();
  (*(v13 + 16))(&v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), a2, a8);
  v16 = (*(v13 + 80) + 64) & ~*(v13 + 80);
  v17 = swift_allocObject();
  v18 = v23;
  *(v17 + 2) = v22;
  *(v17 + 3) = a8;
  *(v17 + 4) = a9;
  *(v17 + 5) = v15;
  *(v17 + 6) = v18;
  *(v17 + 7) = a6;
  (*(v13 + 32))(&v17[v16], &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), a8);
  v19 = &v17[(v14 + v16 + 7) & 0xFFFFFFFFFFFFFFF8];
  *v19 = v24;
  v19[1] = a4;

  return sub_25F20DB28;
}

void (*default argument 1 of captureWeak<A, B>(toInvokeInstanceMethod:deinitialized:on:context:)(uint64_t a1, uint64_t a2))()
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  return nullsub_2;
}

uint64_t (*captureWeak<A, B>(toInvokeInstanceMethod:deinitialized:on:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8))()
{
  v16 = swift_allocObject();
  v16[2] = a7;
  v16[3] = a8;
  v16[4] = a1;
  v16[5] = a2;
  v17 = swift_allocObject();
  v17[2] = a7;
  v17[3] = a8;
  v17[4] = a3;
  v17[5] = a4;

  captureWeak<A, B, C>(toInvokeInstanceMethod:on:context:deinitialized:)(sub_25F20DBBC, v16, a5, a6, sub_25F1CDB58, v17, a7, a8, MEMORY[0x277D84F78] + 8);
  v19 = v18;

  v20 = swift_allocObject();
  *(v20 + 16) = sub_25F20DB28;
  *(v20 + 24) = v19;
  return sub_25F20EF34;
}

uint64_t (*captureWeak<A, B, C, D>(toInvokeInstanceMethod:on:context:_:deinitialized:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11))()
{
  v17 = swift_allocObject();
  v17[2] = a8;
  v17[3] = a9;
  v17[4] = a10;
  v17[5] = a11;
  v17[6] = a1;
  v17[7] = a2;
  captureWeak<A, B, C, D>(_:context:_:toInvoke:deinitialized:)(a3, a4, a5, sub_25F20EF2C, v17, a6, a7, a8, a9, a10, a11);

  return sub_25F20DBC0;
}

uint64_t (*captureWeak<A, B, C, D>(_:context:_:toInvoke:deinitialized:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11))()
{
  v32 = a8;
  v33 = a6;
  v34 = a7;
  v35 = a4;
  v36 = a5;
  v29 = a2;
  v30 = a3;
  v11 = *(a10 - 8);
  v12 = *(v11 + 64);
  v31 = a11;
  v13 = MEMORY[0x28223BE20](a1);
  v28 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a9 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = swift_allocObject();
  swift_unknownObjectWeakInit();
  (*(v14 + 16))(v16, v29, a9);
  (*(v11 + 16))(&v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v30, a10);
  v18 = (*(v14 + 80) + 72) & ~*(v14 + 80);
  v19 = (v15 + *(v11 + 80) + v18) & ~*(v11 + 80);
  v20 = swift_allocObject();
  v21 = v31;
  *(v20 + 2) = v32;
  *(v20 + 3) = a9;
  *(v20 + 4) = a10;
  *(v20 + 5) = v21;
  v22 = v33;
  v23 = v34;
  *(v20 + 6) = v17;
  *(v20 + 7) = v22;
  *(v20 + 8) = v23;
  (*(v14 + 32))(&v20[v18], v16, a9);
  (*(v11 + 32))(&v20[v19], v28, a10);
  v24 = &v20[(v12 + v19 + 7) & 0xFFFFFFFFFFFFFFF8];
  v25 = v36;
  *v24 = v35;
  v24[1] = v25;

  return sub_25F20DBC0;
}

void (*default argument 1 of captureWeak<A, B, C>(toInvokeInstanceMethod:deinitialized:on:context:_:)(uint64_t a1, uint64_t a2, uint64_t a3))()
{
  v6 = swift_allocObject();
  v6[2] = a1;
  v6[3] = a2;
  v6[4] = a3;
  return nullsub_2;
}

uint64_t (*captureWeak<A, B, C>(toInvokeInstanceMethod:deinitialized:on:context:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10))()
{
  v17 = swift_allocObject();
  v17[2] = a8;
  v17[3] = a9;
  v17[4] = a10;
  v17[5] = a1;
  v17[6] = a2;
  v18 = swift_allocObject();
  v18[2] = a8;
  v18[3] = a9;
  v18[4] = a10;
  v18[5] = a3;
  v18[6] = a4;

  captureWeak<A, B, C, D>(toInvokeInstanceMethod:on:context:_:deinitialized:)(sub_25F20DCB0, v17, a5, a6, a7, sub_25F20DCB4, v18, a8, a9, a10, MEMORY[0x277D84F78] + 8);
  v20 = v19;

  v21 = swift_allocObject();
  *(v21 + 16) = sub_25F20DBC0;
  *(v21 + 24) = v20;
  return sub_25F20EF34;
}

uint64_t (*captureWeak<A, B, C, D, E>(toInvokeInstanceMethod:on:context:_:_:deinitialized:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13))()
{
  v17 = swift_allocObject();
  v17[2] = a9;
  v17[3] = a10;
  v17[4] = a11;
  v17[5] = a12;
  v17[6] = a13;
  v17[7] = a1;
  v17[8] = a2;
  captureWeak<A, B, C, D, E>(_:context:_:_:toInvoke:deinitialized:)(a3, a4, a5, a6, sub_25F20EF30, v17, a7, a8, a9, a10, a11, a12, a13);

  return sub_25F20DCDC;
}

uint64_t (*captureWeak<A, B, C, D, E>(_:context:_:_:toInvoke:deinitialized:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13))()
{
  v52 = a7;
  v53 = a8;
  v54 = a5;
  v55 = a6;
  v49 = a4;
  v44 = a1;
  v45 = a2;
  v51 = a13;
  v46 = a12;
  v47 = a3;
  v13 = *(a12 - 8);
  v48 = *(v13 + 64);
  v50 = a9;
  v14 = MEMORY[0x28223BE20](a1);
  v16 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = v16;
  v17 = *(a11 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](v14);
  v42 = &v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = a10;
  v20 = *(a10 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v40 = &v37 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = swift_allocObject();
  swift_unknownObjectWeakInit();
  (*(v20 + 16))(&v37 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0), v45, a10);
  (*(v17 + 16))(&v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), v47, a11);
  v38 = v13;
  v22 = v46;
  (*(v13 + 16))(v16, v49, v46);
  v23 = (*(v20 + 80) + 80) & ~*(v20 + 80);
  v24 = (v21 + *(v17 + 80) + v23) & ~*(v17 + 80);
  v25 = (v18 + *(v13 + 80) + v24) & ~*(v13 + 80);
  v26 = (v48 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
  v27 = swift_allocObject();
  v28 = v51;
  v30 = v39;
  v29 = v40;
  *(v27 + 2) = v50;
  *(v27 + 3) = v30;
  *(v27 + 4) = a11;
  *(v27 + 5) = v22;
  v31 = v22;
  v32 = v41;
  *(v27 + 6) = v28;
  *(v27 + 7) = v32;
  v33 = v53;
  *(v27 + 8) = v52;
  *(v27 + 9) = v33;
  (*(v20 + 32))(&v27[v23], v29);
  (*(v17 + 32))(&v27[v24], v42, a11);
  (*(v38 + 32))(&v27[v25], v43, v31);
  v34 = &v27[v26];
  v35 = v55;
  *v34 = v54;
  v34[1] = v35;

  return sub_25F20DCDC;
}

void (*default argument 1 of captureWeak<A, B, C, D>(toInvokeInstanceMethod:deinitialized:on:context:_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4))()
{
  v8 = swift_allocObject();
  v8[2] = a1;
  v8[3] = a2;
  v8[4] = a3;
  v8[5] = a4;
  return nullsub_2;
}

uint64_t (*captureWeak<A, B, C, D>(toInvokeInstanceMethod:deinitialized:on:context:_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12))()
{
  v17 = swift_allocObject();
  v17[2] = a9;
  v17[3] = a10;
  v17[4] = a11;
  v17[5] = a12;
  v17[6] = a1;
  v17[7] = a2;
  v18 = swift_allocObject();
  v18[2] = a9;
  v18[3] = a10;
  v18[4] = a11;
  v18[5] = a12;
  v18[6] = a3;
  v18[7] = a4;

  captureWeak<A, B, C, D, E>(toInvokeInstanceMethod:on:context:_:_:deinitialized:)(sub_25F20DE28, v17, a5, a6, a7, a8, sub_25F20DE2C, v18, a9, a10, a11, a12, MEMORY[0x277D84F78] + 8);
  v20 = v19;

  v21 = swift_allocObject();
  *(v21 + 16) = sub_25F20DCDC;
  *(v21 + 24) = v20;
  return sub_25F20EF34;
}

uint64_t (*captureWeak<A, B, C>(toInvokeInstanceMethod:on:deinitialized:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8))(uint64_t a1)
{
  v16 = swift_allocObject();
  v16[2] = a6;
  v16[3] = a7;
  v16[4] = a8;
  v16[5] = a1;
  v16[6] = a2;
  captureWeak<A, B, C>(_:toInvoke:deinitialized:)(a3, sub_25F20DE54, v16, a4, a5, a6, a7, a8);

  return sub_25F20DEBC;
}

uint64_t (*captureWeak<A, B, C>(_:toInvoke:deinitialized:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8))(uint64_t a1)
{
  v15 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v16 = swift_allocObject();
  v16[2] = a6;
  v16[3] = a7;
  v16[4] = a8;
  v16[5] = v15;
  v16[6] = a4;
  v16[7] = a5;
  v16[8] = a2;
  v16[9] = a3;

  return sub_25F20DEBC;
}

void (*default argument 1 of captureWeak<A, B>(toInvokeInstanceMethod:deinitialized:on:)(uint64_t a1, uint64_t a2))()
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  return nullsub_2;
}

uint64_t (*captureWeak<A, B>(toInvokeInstanceMethod:deinitialized:on:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7))()
{
  v14 = swift_allocObject();
  v14[2] = a6;
  v14[3] = a7;
  v14[4] = a1;
  v14[5] = a2;
  v15 = swift_allocObject();
  v15[2] = a6;
  v15[3] = a7;
  v15[4] = a3;
  v15[5] = a4;

  captureWeak<A, B, C>(toInvokeInstanceMethod:on:deinitialized:)(sub_25F20EF40, v14, a5, sub_25F20EF1C, v15, a6, a7, MEMORY[0x277D84F78] + 8);
  v17 = v16;

  v18 = swift_allocObject();
  v18[2] = a6;
  v18[3] = a7;
  v18[4] = sub_25F20DEBC;
  v18[5] = v17;
  return sub_25F20DF6C;
}

uint64_t (*captureWeak<A, B, C, D>(toInvokeInstanceMethod:on:context:deinitialized:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10))(uint64_t a1)
{
  v17 = swift_allocObject();
  v17[2] = a7;
  v17[3] = a8;
  v17[4] = a9;
  v17[5] = a10;
  v17[6] = a1;
  v17[7] = a2;
  captureWeak<A, B, C, D>(_:context:toInvoke:deinitialized:)(a3, a4, sub_25F20DF94, v17, a5, a6, a7, a8, a9, a10);

  return sub_25F20E0B8;
}

uint64_t (*captureWeak<A, B, C, D>(_:context:toInvoke:deinitialized:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10))(uint64_t a1)
{
  v22 = a7;
  v23 = a8;
  v24 = a5;
  v25 = a3;
  v13 = *(a9 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](a1);
  v15 = swift_allocObject();
  swift_unknownObjectWeakInit();
  (*(v13 + 16))(&v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), a2, a9);
  v16 = (*(v13 + 80) + 72) & ~*(v13 + 80);
  v17 = swift_allocObject();
  v18 = v23;
  *(v17 + 2) = v22;
  *(v17 + 3) = v18;
  *(v17 + 4) = a9;
  *(v17 + 5) = a10;
  v19 = v24;
  *(v17 + 6) = v15;
  *(v17 + 7) = v19;
  *(v17 + 8) = a6;
  (*(v13 + 32))(&v17[v16], &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), a9);
  v20 = &v17[(v14 + v16 + 7) & 0xFFFFFFFFFFFFFFF8];
  *v20 = v25;
  v20[1] = a4;

  return sub_25F20E0B8;
}

void (*default argument 1 of captureWeak<A, B, C>(toInvokeInstanceMethod:deinitialized:on:context:)(uint64_t a1, uint64_t a2, uint64_t a3))()
{
  v6 = swift_allocObject();
  v6[2] = a1;
  v6[3] = a2;
  v6[4] = a3;
  return nullsub_2;
}

uint64_t (*captureWeak<A, B, C>(toInvokeInstanceMethod:deinitialized:on:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9))()
{
  v17 = swift_allocObject();
  v17[2] = a7;
  v17[3] = a8;
  v17[4] = a9;
  v17[5] = a1;
  v17[6] = a2;
  v18 = swift_allocObject();
  v18[2] = a7;
  v18[3] = a8;
  v18[4] = a9;
  v18[5] = a3;
  v18[6] = a4;

  captureWeak<A, B, C, D>(toInvokeInstanceMethod:on:context:deinitialized:)(sub_25F20EF44, v17, a5, a6, sub_25F20EF4C, v18, a7, a8, a9, MEMORY[0x277D84F78] + 8);
  v20 = v19;

  v21 = swift_allocObject();
  v21[2] = a7;
  v21[3] = a8;
  v21[4] = a9;
  v21[5] = sub_25F20E0B8;
  v21[6] = v20;
  return sub_25F20E1E0;
}

uint64_t (*captureWeak<A, B, C, D, E>(toInvokeInstanceMethod:on:context:_:deinitialized:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12))(uint64_t a1)
{
  v17 = swift_allocObject();
  v17[2] = a8;
  v17[3] = a9;
  v17[4] = a10;
  v17[5] = a11;
  v17[6] = a12;
  v17[7] = a1;
  v17[8] = a2;
  captureWeak<A, B, C, D, E>(_:context:_:toInvoke:deinitialized:)(a3, a4, a5, sub_25F20E208, v17, a6, a7, a8, a9, a10, a11, a12);

  return sub_25F20E524;
}

uint64_t (*captureWeak<A, B, C, D, E>(_:context:_:toInvoke:deinitialized:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12))(uint64_t a1)
{
  v33 = a8;
  v34 = a6;
  v35 = a7;
  v36 = a4;
  v37 = a5;
  v29 = a2;
  v30 = a3;
  v32 = a12;
  v12 = *(a11 - 8);
  v13 = *(v12 + 64);
  v31 = a9;
  v14 = MEMORY[0x28223BE20](a1);
  v28 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(a10 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = swift_allocObject();
  swift_unknownObjectWeakInit();
  (*(v15 + 16))(v17, v29, a10);
  (*(v12 + 16))(&v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v30, a11);
  v19 = (*(v15 + 80) + 80) & ~*(v15 + 80);
  v20 = (v16 + *(v12 + 80) + v19) & ~*(v12 + 80);
  v21 = swift_allocObject();
  v23 = v31;
  v22 = v32;
  *(v21 + 2) = v33;
  *(v21 + 3) = v23;
  *(v21 + 4) = a10;
  *(v21 + 5) = a11;
  *(v21 + 6) = v22;
  *(v21 + 7) = v18;
  v24 = v35;
  *(v21 + 8) = v34;
  *(v21 + 9) = v24;
  (*(v15 + 32))(&v21[v19], v17, a10);
  (*(v12 + 32))(&v21[v20], v28, a11);
  v25 = &v21[(v13 + v20 + 7) & 0xFFFFFFFFFFFFFFF8];
  v26 = v37;
  *v25 = v36;
  v25[1] = v26;

  return sub_25F20E524;
}

void (*default argument 1 of captureWeak<A, B, C, D>(toInvokeInstanceMethod:deinitialized:on:context:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4))()
{
  v8 = swift_allocObject();
  v8[2] = a1;
  v8[3] = a2;
  v8[4] = a3;
  v8[5] = a4;
  return nullsub_2;
}

uint64_t (*captureWeak<A, B, C, D>(toInvokeInstanceMethod:deinitialized:on:context:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11))()
{
  v17 = swift_allocObject();
  v17[2] = a8;
  v17[3] = a9;
  v17[4] = a10;
  v17[5] = a11;
  v17[6] = a1;
  v17[7] = a2;
  v18 = swift_allocObject();
  v18[2] = a8;
  v18[3] = a9;
  v18[4] = a10;
  v18[5] = a11;
  v18[6] = a3;
  v18[7] = a4;

  captureWeak<A, B, C, D, E>(toInvokeInstanceMethod:on:context:_:deinitialized:)(sub_25F20EF48, v17, a5, a6, a7, sub_25F20EF20, v18, a8, a9, a10, a11, MEMORY[0x277D84F78] + 8);
  v20 = v19;

  v21 = swift_allocObject();
  v21[2] = a8;
  v21[3] = a9;
  v21[4] = a10;
  v21[5] = a11;
  v21[6] = sub_25F20E524;
  v21[7] = v20;
  return sub_25F20E698;
}

uint64_t (*captureWeak<A, B, C, D, E, F>(toInvokeInstanceMethod:on:context:_:_:deinitialized:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14))(uint64_t a1)
{
  v17 = swift_allocObject();
  v17[2] = a9;
  v17[3] = a10;
  v17[4] = a11;
  v17[5] = a12;
  v17[6] = a13;
  v17[7] = a14;
  v17[8] = a1;
  v17[9] = a2;
  captureWeak<A, B, C, D, E, F>(_:context:_:_:toInvoke:deinitialized:)(a3, a4, a5, a6, sub_25F20E6C0, v17, a7, a8, a9, a10, a11, a12, a13, a14);

  return sub_25F20E9F4;
}

uint64_t (*captureWeak<A, B, C, D, E, F>(_:context:_:_:toInvoke:deinitialized:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14))(uint64_t a1)
{
  v54 = a7;
  v55 = a8;
  v56 = a5;
  v57 = a6;
  v47 = a2;
  v48 = a3;
  v50 = a4;
  v51 = a9;
  v52 = a10;
  v53 = a14;
  v45 = a1;
  v46 = a13;
  v14 = *(a13 - 8);
  v49 = *(v14 + 64);
  v15 = MEMORY[0x28223BE20](a1);
  v17 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = v17;
  v18 = *(a12 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x28223BE20](v15);
  v43 = &v39 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = a11;
  v21 = *(a11 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  v41 = &v39 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = swift_allocObject();
  swift_unknownObjectWeakInit();
  (*(v21 + 16))(&v39 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0), v47, a11);
  (*(v18 + 16))(&v39 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0), v48, a12);
  v39 = v14;
  v23 = v17;
  v24 = v46;
  (*(v14 + 16))(v23, v50, v46);
  v25 = (*(v21 + 80) + 88) & ~*(v21 + 80);
  v26 = (v22 + *(v18 + 80) + v25) & ~*(v18 + 80);
  v27 = (v19 + *(v14 + 80) + v26) & ~*(v14 + 80);
  v28 = (v49 + v27 + 7) & 0xFFFFFFFFFFFFFFF8;
  v29 = swift_allocObject();
  v30 = v52;
  *(v29 + 2) = v51;
  *(v29 + 3) = v30;
  v31 = v41;
  *(v29 + 4) = v40;
  *(v29 + 5) = a12;
  v32 = v24;
  v33 = v53;
  *(v29 + 6) = v24;
  *(v29 + 7) = v33;
  v34 = v54;
  v35 = v55;
  *(v29 + 8) = v42;
  *(v29 + 9) = v34;
  *(v29 + 10) = v35;
  (*(v21 + 32))(&v29[v25], v31);
  (*(v18 + 32))(&v29[v26], v43, a12);
  (*(v39 + 32))(&v29[v27], v44, v32);
  v36 = &v29[v28];
  v37 = v57;
  *v36 = v56;
  v36[1] = v37;

  return sub_25F20E9F4;
}

void (*default argument 1 of captureWeak<A, B, C, D, E>(toInvokeInstanceMethod:deinitialized:on:context:_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))()
{
  v10 = swift_allocObject();
  v10[2] = a1;
  v10[3] = a2;
  v10[4] = a3;
  v10[5] = a4;
  v10[6] = a5;
  return nullsub_2;
}

uint64_t (*captureWeak<A, B, C, D, E>(toInvokeInstanceMethod:deinitialized:on:context:_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13))()
{
  v17 = swift_allocObject();
  v17[2] = a9;
  v17[3] = a10;
  v17[4] = a11;
  v17[5] = a12;
  v17[6] = a13;
  v17[7] = a1;
  v17[8] = a2;
  v18 = swift_allocObject();
  v18[2] = a9;
  v18[3] = a10;
  v18[4] = a11;
  v18[5] = a12;
  v18[6] = a13;
  v18[7] = a3;
  v18[8] = a4;

  captureWeak<A, B, C, D, E, F>(toInvokeInstanceMethod:on:context:_:_:deinitialized:)(sub_25F20EB44, v17, a5, a6, a7, a8, sub_25F20EBD0, v18, a9, a10, a11, a12, a13, MEMORY[0x277D84F78] + 8);
  v20 = v19;

  v21 = swift_allocObject();
  v21[2] = a9;
  v21[3] = a10;
  v21[4] = a11;
  v21[5] = a12;
  v21[6] = a13;
  v21[7] = sub_25F20E9F4;
  v21[8] = v20;
  return sub_25F20EBF8;
}

uint64_t sub_25F20CC90(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, void (*a4)(void))
{
  swift_beginAccess();
  if (!swift_unknownObjectWeakLoadStrong())
  {
    return a2();
  }

  a4();
  return swift_unknownObjectRelease();
}

uint64_t (*captureWeak<A>(_:deinitialized:toInvoke:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6))()
{
  v12 = swift_allocObject();
  v12[2] = a6;
  v12[3] = a4;
  v12[4] = a5;
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  *(v13 + 24) = a3;
  captureWeak<A, B>(_:toInvoke:deinitialized:)(a1, sub_25F20EC20, v12, sub_25F20EF54, v13, a6, MEMORY[0x277D84F78] + 8);
  v15 = v14;

  v16 = swift_allocObject();
  *(v16 + 16) = sub_25F20DA84;
  *(v16 + 24) = v15;
  return sub_25F20EF34;
}

uint64_t sub_25F20CE74(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3, uint64_t a4, void (*a5)(void))
{
  swift_beginAccess();
  if (!swift_unknownObjectWeakLoadStrong())
  {
    return a2(a4);
  }

  a5();
  return swift_unknownObjectRelease();
}

void (*default argument 2 of captureWeak<A, B>(_:context:deinitialized:toInvoke:)(uint64_t a1, uint64_t a2))()
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  return nullsub_2;
}

uint64_t (*captureWeak<A, B>(_:context:deinitialized:toInvoke:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8))()
{
  v16 = swift_allocObject();
  v16[2] = a7;
  v16[3] = a8;
  v16[4] = a5;
  v16[5] = a6;
  v17 = swift_allocObject();
  v17[2] = a7;
  v17[3] = a8;
  v17[4] = a3;
  v17[5] = a4;
  captureWeak<A, B, C>(_:context:toInvoke:deinitialized:)(a1, a2, sub_25F20EC48, v16, sub_25F20EF1C, v17, a7, a8, MEMORY[0x277D84F78] + 8);
  v19 = v18;

  v20 = swift_allocObject();
  *(v20 + 16) = sub_25F20DB28;
  *(v20 + 24) = v19;
  return sub_25F20EF34;
}

uint64_t sub_25F20D0CC(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(void))
{
  swift_beginAccess();
  if (!swift_unknownObjectWeakLoadStrong())
  {
    return a2(a4, a5);
  }

  a6();
  return swift_unknownObjectRelease();
}

void (*default argument 3 of captureWeak<A, B, C>(_:context:_:deinitialized:toInvoke:)(uint64_t a1, uint64_t a2, uint64_t a3))()
{
  v6 = swift_allocObject();
  v6[2] = a1;
  v6[3] = a2;
  v6[4] = a3;
  return nullsub_2;
}

uint64_t (*captureWeak<A, B, C>(_:context:_:deinitialized:toInvoke:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10))()
{
  v17 = swift_allocObject();
  v17[2] = a8;
  v17[3] = a9;
  v17[4] = a10;
  v17[5] = a6;
  v17[6] = a7;
  v18 = swift_allocObject();
  v18[2] = a8;
  v18[3] = a9;
  v18[4] = a10;
  v18[5] = a4;
  v18[6] = a5;
  captureWeak<A, B, C, D>(_:context:_:toInvoke:deinitialized:)(a1, a2, a3, sub_25F20EC70, v17, sub_25F20EF4C, v18, a8, a9, a10, MEMORY[0x277D84F78] + 8);
  v20 = v19;

  v21 = swift_allocObject();
  *(v21 + 16) = sub_25F20DBC0;
  *(v21 + 24) = v20;
  return sub_25F20EF34;
}

uint64_t sub_25F20D350(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(void))
{
  swift_beginAccess();
  if (!swift_unknownObjectWeakLoadStrong())
  {
    return a2(a4, a5, a6);
  }

  a7();
  return swift_unknownObjectRelease();
}

void (*default argument 4 of captureWeak<A, B, C, D>(_:context:_:_:deinitialized:toInvoke:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4))()
{
  v8 = swift_allocObject();
  v8[2] = a1;
  v8[3] = a2;
  v8[4] = a3;
  v8[5] = a4;
  return nullsub_2;
}

uint64_t (*captureWeak<A, B, C, D>(_:context:_:_:deinitialized:toInvoke:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12))()
{
  v17 = swift_allocObject();
  v17[2] = a9;
  v17[3] = a10;
  v17[4] = a11;
  v17[5] = a12;
  v17[6] = a7;
  v17[7] = a8;
  v18 = swift_allocObject();
  v18[2] = a9;
  v18[3] = a10;
  v18[4] = a11;
  v18[5] = a12;
  v18[6] = a5;
  v18[7] = a6;
  captureWeak<A, B, C, D, E>(_:context:_:_:toInvoke:deinitialized:)(a1, a2, a3, a4, sub_25F20EC98, v17, sub_25F20EF20, v18, a9, a10, a11, a12, MEMORY[0x277D84F78] + 8);
  v20 = v19;

  v21 = swift_allocObject();
  *(v21 + 16) = sub_25F20DCDC;
  *(v21 + 24) = v20;
  return sub_25F20EF34;
}

uint64_t sub_25F20D5EC(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4, void (*a5)(void))
{
  swift_beginAccess();
  if (!swift_unknownObjectWeakLoadStrong())
  {
    return a3(a1);
  }

  a5();
  return swift_unknownObjectRelease();
}

void (*default argument 1 of captureWeak<A, B>(_:deinitialized:toInvoke:)(uint64_t a1, uint64_t a2))()
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  return nullsub_2;
}

uint64_t (*captureWeak<A, B>(_:deinitialized:toInvoke:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7))()
{
  v14 = swift_allocObject();
  v14[2] = a6;
  v14[3] = a7;
  v14[4] = a4;
  v14[5] = a5;
  v15 = swift_allocObject();
  v15[2] = a6;
  v15[3] = a7;
  v15[4] = a2;
  v15[5] = a3;
  captureWeak<A, B, C>(_:toInvoke:deinitialized:)(a1, sub_25F20EF50, v14, sub_25F20EF1C, v15, a6, a7, MEMORY[0x277D84F78] + 8);
  v17 = v16;

  v18 = swift_allocObject();
  v18[2] = a6;
  v18[3] = a7;
  v18[4] = sub_25F20DEBC;
  v18[5] = v17;
  return sub_25F20EF58;
}

uint64_t (*captureWeak<A, B, C, D>(_:toInvoke:deinitialized:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9))(uint64_t a1, uint64_t a2)
{
  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v17 = swift_allocObject();
  v17[2] = a6;
  v17[3] = a7;
  v17[4] = a8;
  v17[5] = a9;
  v17[6] = v16;
  v17[7] = a4;
  v17[8] = a5;
  v17[9] = a2;
  v17[10] = a3;

  return sub_25F20ECC0;
}

uint64_t sub_25F20D908(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t), uint64_t a5, void (*a6)(void))
{
  swift_beginAccess();
  if (!swift_unknownObjectWeakLoadStrong())
  {
    return a4(a1, a2);
  }

  a6();
  return swift_unknownObjectRelease();
}

uint64_t sub_25F20DA34()
{
  v1 = (*(v0 + 32))();
  v1();
}

uint64_t (*sub_25F20DA98())()
{
  v1 = (*(v0 + 24))();
  v3 = v2;
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = v3;
  return sub_25F20EF54;
}

uint64_t sub_25F20DBC0()
{
  v1 = *(v0 + 32);
  v2 = (*(*(*(v0 + 24) - 8) + 80) + 72) & ~*(*(*(v0 + 24) - 8) + 80);
  v3 = (v2 + *(*(*(v0 + 24) - 8) + 64) + *(*(v1 - 8) + 80)) & ~*(*(v1 - 8) + 80);
  return sub_25F20D0CC(*(v0 + 48), *(v0 + 56), *(v0 + 64), v0 + v2, v0 + v3, *(v0 + ((*(*(v1 - 8) + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_25F20DCDC()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v3 = (*(*(*(v0 + 24) - 8) + 80) + 80) & ~*(*(*(v0 + 24) - 8) + 80);
  v4 = (v3 + *(*(*(v0 + 24) - 8) + 64) + *(*(v1 - 8) + 80)) & ~*(*(v1 - 8) + 80);
  v5 = (v4 + *(*(v1 - 8) + 64) + *(*(v2 - 8) + 80)) & ~*(*(v2 - 8) + 80);
  return sub_25F20D350(*(v0 + 56), *(v0 + 64), *(v0 + 72), v0 + v3, v0 + v4, v0 + v5, *(v0 + ((*(*(v2 - 8) + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_25F20DE58(uint64_t a1, uint64_t a2)
{
  v4 = (*(v2 + 40))(a1);
  v4(a2);
}

uint64_t (*sub_25F20DEF0())()
{
  v6 = *(v0 + 16);
  v1 = (*(v0 + 32))();
  v3 = v2;
  v4 = swift_allocObject();
  *(v4 + 16) = v6;
  *(v4 + 32) = v1;
  *(v4 + 40) = v3;
  return sub_25F20EF1C;
}

uint64_t sub_25F20DF98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = (*(v3 + 48))(a1);
  v6(a2, a3);
}

uint64_t sub_25F20E004(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t), uint64_t a4, uint64_t a5, void (*a6)(void))
{
  swift_beginAccess();
  if (!swift_unknownObjectWeakLoadStrong())
  {
    return a3(a1, a5);
  }

  a6();
  return swift_unknownObjectRelease();
}

uint64_t (*sub_25F20E154())()
{
  v1 = *(v0 + 32);
  v7 = *(v0 + 16);
  v2 = (*(v0 + 40))();
  v4 = v3;
  v5 = swift_allocObject();
  *(v5 + 16) = v7;
  *(v5 + 32) = v1;
  *(v5 + 40) = v2;
  *(v5 + 48) = v4;
  return sub_25F20EF4C;
}

uint64_t sub_25F20E20C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = (*(v4 + 56))(a1);
  v8(a2, a3, a4);
}

void (*default argument 2 of captureWeak<A, B, C>(_:context:deinitialized:toInvoke:)(uint64_t a1, uint64_t a2, uint64_t a3))()
{
  v6 = swift_allocObject();
  v6[2] = a1;
  v6[3] = a2;
  v6[4] = a3;
  return nullsub_2;
}

uint64_t (*captureWeak<A, B, C>(_:context:deinitialized:toInvoke:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9))()
{
  v17 = swift_allocObject();
  v17[2] = a7;
  v17[3] = a8;
  v17[4] = a9;
  v17[5] = a5;
  v17[6] = a6;
  v18 = swift_allocObject();
  v18[2] = a7;
  v18[3] = a8;
  v18[4] = a9;
  v18[5] = a3;
  v18[6] = a4;
  captureWeak<A, B, C, D>(_:context:toInvoke:deinitialized:)(a1, a2, sub_25F20EF24, v17, sub_25F20EF4C, v18, a7, a8, a9, MEMORY[0x277D84F78] + 8);
  v20 = v19;

  v21 = swift_allocObject();
  v21[2] = a7;
  v21[3] = a8;
  v21[4] = a9;
  v21[5] = sub_25F20E0B8;
  v21[6] = v20;
  return sub_25F20EF5C;
}

uint64_t sub_25F20E45C(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(void))
{
  swift_beginAccess();
  if (!swift_unknownObjectWeakLoadStrong())
  {
    return a3(a1, a5, a6);
  }

  a7();
  return swift_unknownObjectRelease();
}

uint64_t sub_25F20E524(uint64_t a1)
{
  v2 = *(v1 + 40);
  v3 = (*(*(*(v1 + 32) - 8) + 80) + 80) & ~*(*(*(v1 + 32) - 8) + 80);
  v4 = (v3 + *(*(*(v1 + 32) - 8) + 64) + *(*(v2 - 8) + 80)) & ~*(*(v2 - 8) + 80);
  return sub_25F20E45C(a1, *(v1 + 56), *(v1 + 64), *(v1 + 72), v1 + v3, v1 + v4, *(v1 + ((*(*(v2 - 8) + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t (*sub_25F20E61C())()
{
  v6 = *(v0 + 32);
  v7 = *(v0 + 16);
  v1 = (*(v0 + 48))();
  v3 = v2;
  v4 = swift_allocObject();
  *(v4 + 16) = v7;
  *(v4 + 32) = v6;
  *(v4 + 48) = v1;
  *(v4 + 56) = v3;
  return sub_25F20EF20;
}

uint64_t sub_25F20E6C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = (*(v5 + 64))(a1);
  v10(a2, a3, a4, a5);
}

void (*default argument 3 of captureWeak<A, B, C, D>(_:context:_:deinitialized:toInvoke:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4))()
{
  v8 = swift_allocObject();
  v8[2] = a1;
  v8[3] = a2;
  v8[4] = a3;
  v8[5] = a4;
  return nullsub_2;
}

uint64_t (*captureWeak<A, B, C, D>(_:context:_:deinitialized:toInvoke:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11))()
{
  v17 = swift_allocObject();
  v17[2] = a8;
  v17[3] = a9;
  v17[4] = a10;
  v17[5] = a11;
  v17[6] = a6;
  v17[7] = a7;
  v18 = swift_allocObject();
  v18[2] = a8;
  v18[3] = a9;
  v18[4] = a10;
  v18[5] = a11;
  v18[6] = a4;
  v18[7] = a5;
  captureWeak<A, B, C, D, E>(_:context:_:toInvoke:deinitialized:)(a1, a2, a3, sub_25F20EF38, v17, sub_25F20EF20, v18, a8, a9, a10, a11, MEMORY[0x277D84F78] + 8);
  v20 = v19;

  v21 = swift_allocObject();
  v21[2] = a8;
  v21[3] = a9;
  v21[4] = a10;
  v21[5] = a11;
  v21[6] = sub_25F20E524;
  v21[7] = v20;
  return sub_25F20EF60;
}

uint64_t sub_25F20E91C(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void (*a8)(void))
{
  swift_beginAccess();
  if (!swift_unknownObjectWeakLoadStrong())
  {
    return a3(a1, a5, a6, a7);
  }

  a8();
  return swift_unknownObjectRelease();
}

uint64_t sub_25F20E9F4(uint64_t a1)
{
  v2 = *(v1 + 40);
  v3 = *(v1 + 48);
  v4 = (*(*(*(v1 + 32) - 8) + 80) + 88) & ~*(*(*(v1 + 32) - 8) + 80);
  v5 = (v4 + *(*(*(v1 + 32) - 8) + 64) + *(*(v2 - 8) + 80)) & ~*(*(v2 - 8) + 80);
  v6 = (v5 + *(*(v2 - 8) + 64) + *(*(v3 - 8) + 80)) & ~*(*(v3 - 8) + 80);
  return sub_25F20E91C(a1, *(v1 + 64), *(v1 + 72), *(v1 + 80), v1 + v4, v1 + v5, v1 + v6, *(v1 + ((*(*(v3 - 8) + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t (*sub_25F20EB44())()
{
  v1 = *(v0 + 48);
  v7 = *(v0 + 32);
  v8 = *(v0 + 16);
  v2 = (*(v0 + 56))();
  v4 = v3;
  v5 = swift_allocObject();
  *(v5 + 16) = v8;
  *(v5 + 32) = v7;
  *(v5 + 48) = v1;
  *(v5 + 56) = v2;
  *(v5 + 64) = v4;
  return sub_25F20EF3C;
}

void (*default argument 4 of captureWeak<A, B, C, D, E>(_:context:_:_:deinitialized:toInvoke:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))()
{
  v10 = swift_allocObject();
  v10[2] = a1;
  v10[3] = a2;
  v10[4] = a3;
  v10[5] = a4;
  v10[6] = a5;
  return nullsub_2;
}

uint64_t (*captureWeak<A, B, C, D, E>(_:context:_:_:deinitialized:toInvoke:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13))()
{
  v17 = swift_allocObject();
  v17[2] = a9;
  v17[3] = a10;
  v17[4] = a11;
  v17[5] = a12;
  v17[6] = a13;
  v17[7] = a7;
  v17[8] = a8;
  v18 = swift_allocObject();
  v18[2] = a9;
  v18[3] = a10;
  v18[4] = a11;
  v18[5] = a12;
  v18[6] = a13;
  v18[7] = a5;
  v18[8] = a6;
  captureWeak<A, B, C, D, E, F>(_:context:_:_:toInvoke:deinitialized:)(a1, a2, a3, a4, sub_25F20EEF4, v17, sub_25F20EF3C, v18, a9, a10, a11, a12, a13, MEMORY[0x277D84F78] + 8);
  v20 = v19;

  v21 = swift_allocObject();
  v21[2] = a9;
  v21[3] = a10;
  v21[4] = a11;
  v21[5] = a12;
  v21[6] = a13;
  v21[7] = sub_25F20E9F4;
  v21[8] = v20;
  return sub_25F20EF64;
}

uint64_t static CharacterSet.c99IdentifierAllowed.getter()
{
  v0 = sub_25F30427C();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v18 - v6;
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v18 - v9;
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v18 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v18 - v14;
  sub_25F30426C();
  sub_25F30421C();
  sub_25F30423C();
  v16 = *(v1 + 8);
  v16(v4, v0);
  v16(v7, v0);
  sub_25F30421C();
  sub_25F30423C();
  v16(v7, v0);
  v16(v10, v0);
  sub_25F30421C();
  sub_25F30423C();
  v16(v10, v0);
  v16(v13, v0);
  sub_25F30422C();
  sub_25F30423C();
  v16(v13, v0);
  return (v16)(v15, v0);
}

uint64_t sub_25F20F1D0(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_25F2D8ACC(v2);
  }

  v3 = v2[2];
  v18[0] = (v2 + 4);
  v18[1] = v3;
  result = sub_25F30647C();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 4;
      do
      {
        v11 = *&v2[2 * v9 + 4];
        v12 = v8;
        v13 = v10;
        do
        {
          if (*v13 < v11)
          {
            break;
          }

          v14 = v13[3];
          *(v13 + 1) = *v13;
          *v13 = v11;
          v13[1] = v14;
          v13 -= 2;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        v10 += 2;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52E48, &qword_25F308498);
      v7 = sub_25F3052EC();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x277D84F90];
    }

    v16[0] = v7 + 32;
    v16[1] = v6;
    sub_25F211AFC(v16, v17, v18, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t SchedulerInterval.init<A>(exactly:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v10, a1, a2);
  v11 = sub_25F20F44C(v10, a2, a3);
  v13 = v12;
  result = (*(v8 + 8))(a1, a2);
  if (v13)
  {
    v15 = 0;
  }

  else
  {
    v15 = v11;
  }

  *a4 = v15;
  *(a4 + 8) = v13 & 1;
  return result;
}

uint64_t sub_25F20F44C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (sub_25F305DAC() > 64)
  {
    sub_25F2129B0();
    sub_25F212A04();
    v5 = sub_25F304A4C();
    (*(*(a2 - 8) + 8))(a1, a2);
    if (v5)
    {
      v6 = v11;
      return *&v6;
    }

    return 0;
  }

  v7 = sub_25F305DBC();
  v8 = sub_25F305D9C();
  result = (*(*(a2 - 8) + 8))(a1, a2);
  if ((v7 & 1) == 0)
  {
    v6 = v8;
    if (v8 < 1.84467441e19 && v8 == v8)
    {
      return *&v6;
    }

    return 0;
  }

  v6 = v8;
  if (v8 >= 9.22337204e18)
  {
    return 0;
  }

  if (v6 <= -9.22337204e18)
  {
    __break(1u);
    return result;
  }

  if (v8 != v6)
  {
    return 0;
  }

  return *&v6;
}