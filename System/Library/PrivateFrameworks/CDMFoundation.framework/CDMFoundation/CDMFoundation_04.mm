id _s13CDMFoundation20CDMProtobufConverterC26serializeTokenizerResponse8response10formatTypeSSSgSo033SIRINLUINTERNALTOKENIZERTokenizerF0CSg_SStFZ_0(void *a1, uint64_t a2, uint64_t a3)
{
  v50 = a3;
  v51 = a2;
  v4 = sub_1DC5166EC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1DC51670C();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C750, &qword_1DC523370);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v45 - v10;
  v12 = sub_1DC5137DC();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1 || (v16 = [a1 data]) == 0)
  {
    if (qword_1ECC81EE0 != -1)
    {
      swift_once();
    }

    v21 = off_1ECC8F578;
    v22 = sub_1DC517BAC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7C290, &qword_1DC524690);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_1DC522F20;
    *&v52 = sub_1DC298C74(0, &qword_1ECC7C758, 0x1E69D13C8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7C760, &qword_1DC523378);
    v24 = sub_1DC51777C();
    v26 = v25;
    *(v23 + 56) = MEMORY[0x1E69E6158];
    *(v23 + 64) = sub_1DC2C0FA4(v24, v25, v27);
    *(v23 + 32) = v24;
    *(v23 + 40) = v26;
    sub_1DC516EFC("Unable to get proto data from %@", 32, 2, &dword_1DC287000, v21, v22, v23);

    return 0;
  }

  v17 = v16;
  v45 = v5;
  v46 = v15;
  v47 = v13;
  v18 = sub_1DC510A0C();
  v20 = v19;

  v54 = 0;
  v52 = 0u;
  v53 = 0u;
  sub_1DC2A6784(v18, v20);
  sub_1DC5166FC();
  sub_1DC302048(&qword_1EDAC8018, MEMORY[0x1E69D1040]);
  v48 = v18;
  v49 = v20;
  sub_1DC51677C();
  __swift_storeEnumTagSinglePayload(v11, 0, 1, v12);
  v31 = v46;
  v30 = v47;
  (*(v47 + 32))(v46, v11, v12);
  v32 = v50;
  v33 = v51;
  v34 = v51 == 1852797802 && v50 == 0xE400000000000000;
  if (v34 || (sub_1DC51825C() & 1) != 0)
  {
    sub_1DC5166DC();
    sub_1DC5166CC();
    v28 = sub_1DC51673C();
    sub_1DC2AD740(v48, v49);
    (*(v45 + 8))(v7, v4);
LABEL_22:
    (*(v30 + 8))(v31, v12);
    return v28;
  }

  v35 = v33 == 0x343665736162 && v32 == 0xE600000000000000;
  if (!v35 && (sub_1DC51825C() & 1) == 0)
  {
    if (qword_1ECC81EE0 != -1)
    {
      swift_once();
    }

    v40 = off_1ECC8F578;
    v41 = sub_1DC517BAC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7C290, &qword_1DC524690);
    v42 = swift_allocObject();
    *(v42 + 16) = xmmword_1DC522F20;
    *(v42 + 56) = MEMORY[0x1E69E6158];
    *(v42 + 64) = sub_1DC2C0FA4(v42, v43, v44);
    *(v42 + 32) = v51;
    *(v42 + 40) = v32;

    sub_1DC516EFC("Invalid provided format type:  %@", 33, 2, &dword_1DC287000, v40, v41, v42);

    sub_1DC2AD740(v48, v49);
    (*(v30 + 8))(v31, v12);
    return 0;
  }

  result = [a1 data];
  if (result)
  {
    v36 = result;
    v37 = sub_1DC510A0C();
    v39 = v38;

    v28 = sub_1DC5109FC();
    sub_1DC2AD740(v37, v39);
    sub_1DC2AD740(v48, v49);
    goto LABEL_22;
  }

  __break(1u);
  return result;
}

id _s13CDMFoundation20CDMProtobufConverterC26serializeSpanMatchResponse8response10formatTypeSSSgSo028SIRINLUINTERNALSPANMATCHSpanfG0CSg_SStFZ_0(void *a1, uint64_t a2, uint64_t a3)
{
  v50 = a3;
  v51 = a2;
  v4 = sub_1DC5166EC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1DC51670C();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C728, &qword_1DC523358);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v45 - v10;
  v12 = sub_1DC51224C();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1 || (v16 = [a1 data]) == 0)
  {
    if (qword_1ECC81EE0 != -1)
    {
      swift_once();
    }

    v21 = off_1ECC8F578;
    v22 = sub_1DC517BAC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7C290, &qword_1DC524690);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_1DC522F20;
    *&v52 = sub_1DC298C74(0, &qword_1ECC7C730, 0x1E69D13A0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7C738, &qword_1DC523360);
    v24 = sub_1DC51777C();
    v26 = v25;
    *(v23 + 56) = MEMORY[0x1E69E6158];
    *(v23 + 64) = sub_1DC2C0FA4(v24, v25, v27);
    *(v23 + 32) = v24;
    *(v23 + 40) = v26;
    sub_1DC516EFC("Unable to get proto data from %@", 32, 2, &dword_1DC287000, v21, v22, v23);

    return 0;
  }

  v17 = v16;
  v45 = v5;
  v46 = v15;
  v47 = v13;
  v18 = sub_1DC510A0C();
  v20 = v19;

  v54 = 0;
  v52 = 0u;
  v53 = 0u;
  sub_1DC2A6784(v18, v20);
  sub_1DC5166FC();
  sub_1DC302048(&unk_1EDAC8040, MEMORY[0x1E69D0CE8]);
  v48 = v18;
  v49 = v20;
  sub_1DC51677C();
  __swift_storeEnumTagSinglePayload(v11, 0, 1, v12);
  v31 = v46;
  v30 = v47;
  (*(v47 + 32))(v46, v11, v12);
  v32 = v50;
  v33 = v51;
  v34 = v51 == 1852797802 && v50 == 0xE400000000000000;
  if (v34 || (sub_1DC51825C() & 1) != 0)
  {
    sub_1DC5166DC();
    sub_1DC5166CC();
    v28 = sub_1DC51673C();
    sub_1DC2AD740(v48, v49);
    (*(v45 + 8))(v7, v4);
LABEL_22:
    (*(v30 + 8))(v31, v12);
    return v28;
  }

  v35 = v33 == 0x343665736162 && v32 == 0xE600000000000000;
  if (!v35 && (sub_1DC51825C() & 1) == 0)
  {
    if (qword_1ECC81EE0 != -1)
    {
      swift_once();
    }

    v40 = off_1ECC8F578;
    v41 = sub_1DC517BAC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7C290, &qword_1DC524690);
    v42 = swift_allocObject();
    *(v42 + 16) = xmmword_1DC522F20;
    *(v42 + 56) = MEMORY[0x1E69E6158];
    *(v42 + 64) = sub_1DC2C0FA4(v42, v43, v44);
    *(v42 + 32) = v51;
    *(v42 + 40) = v32;

    sub_1DC516EFC("Invalid provided format type:  %@", 33, 2, &dword_1DC287000, v40, v41, v42);

    sub_1DC2AD740(v48, v49);
    (*(v30 + 8))(v31, v12);
    return 0;
  }

  result = [a1 data];
  if (result)
  {
    v36 = result;
    v37 = sub_1DC510A0C();
    v39 = v38;

    v28 = sub_1DC5109FC();
    sub_1DC2AD740(v37, v39);
    sub_1DC2AD740(v48, v49);
    goto LABEL_22;
  }

  __break(1u);
  return result;
}

id _s13CDMFoundation20CDMProtobufConverterC26serializeNlv4ParserRequest7request10formatTypeSSSgSo030SIRINLUINTERNALNLV4_PARSERNLv4fG0CSg_SStFZ_0(void *a1, uint64_t a2, uint64_t a3)
{
  v50 = a3;
  v51 = a2;
  v4 = sub_1DC5166EC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1DC51670C();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C700, &qword_1DC523340);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v45 - v10;
  v12 = sub_1DC51383C();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1 || (v16 = [a1 data]) == 0)
  {
    if (qword_1ECC81EE0 != -1)
    {
      swift_once();
    }

    v21 = off_1ECC8F578;
    v22 = sub_1DC517BAC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7C290, &qword_1DC524690);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_1DC522F20;
    *&v52 = sub_1DC298C74(0, &qword_1ECC7C708, 0x1E69D1310);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7C710, &qword_1DC523348);
    v24 = sub_1DC51777C();
    v26 = v25;
    *(v23 + 56) = MEMORY[0x1E69E6158];
    *(v23 + 64) = sub_1DC2C0FA4(v24, v25, v27);
    *(v23 + 32) = v24;
    *(v23 + 40) = v26;
    sub_1DC516EFC("Unable to get proto data from %@", 32, 2, &dword_1DC287000, v21, v22, v23);

    return 0;
  }

  v17 = v16;
  v45 = v5;
  v46 = v15;
  v47 = v13;
  v18 = sub_1DC510A0C();
  v20 = v19;

  v54 = 0;
  v52 = 0u;
  v53 = 0u;
  sub_1DC2A6784(v18, v20);
  sub_1DC5166FC();
  sub_1DC302048(&unk_1EDAC8008, MEMORY[0x1E69D1090]);
  v48 = v18;
  v49 = v20;
  sub_1DC51677C();
  __swift_storeEnumTagSinglePayload(v11, 0, 1, v12);
  v31 = v46;
  v30 = v47;
  (*(v47 + 32))(v46, v11, v12);
  v32 = v50;
  v33 = v51;
  v34 = v51 == 1852797802 && v50 == 0xE400000000000000;
  if (v34 || (sub_1DC51825C() & 1) != 0)
  {
    sub_1DC5166DC();
    sub_1DC5166CC();
    v28 = sub_1DC51673C();
    sub_1DC2AD740(v48, v49);
    (*(v45 + 8))(v7, v4);
LABEL_22:
    (*(v30 + 8))(v31, v12);
    return v28;
  }

  v35 = v33 == 0x343665736162 && v32 == 0xE600000000000000;
  if (!v35 && (sub_1DC51825C() & 1) == 0)
  {
    if (qword_1ECC81EE0 != -1)
    {
      swift_once();
    }

    v40 = off_1ECC8F578;
    v41 = sub_1DC517BAC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7C290, &qword_1DC524690);
    v42 = swift_allocObject();
    *(v42 + 16) = xmmword_1DC522F20;
    *(v42 + 56) = MEMORY[0x1E69E6158];
    *(v42 + 64) = sub_1DC2C0FA4(v42, v43, v44);
    *(v42 + 32) = v51;
    *(v42 + 40) = v32;

    sub_1DC516EFC("Invalid provided format type:  %@", 33, 2, &dword_1DC287000, v40, v41, v42);

    sub_1DC2AD740(v48, v49);
    (*(v30 + 8))(v31, v12);
    return 0;
  }

  result = [a1 data];
  if (result)
  {
    v36 = result;
    v37 = sub_1DC510A0C();
    v39 = v38;

    v28 = sub_1DC5109FC();
    sub_1DC2AD740(v37, v39);
    sub_1DC2AD740(v48, v49);
    goto LABEL_22;
  }

  __break(1u);
  return result;
}

id _s13CDMFoundation20CDMProtobufConverterC27serializeNlv4ParserResponse8response10formatTypeSSSgSo030SIRINLUINTERNALNLV4_PARSERNLv4fG0CSg_SStFZ_0(void *a1, uint64_t a2, uint64_t a3)
{
  v50 = a3;
  v51 = a2;
  v4 = sub_1DC5166EC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1DC51670C();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C6D8, &qword_1DC523328);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v45 - v10;
  v12 = sub_1DC51384C();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1 || (v16 = [a1 data]) == 0)
  {
    if (qword_1ECC81EE0 != -1)
    {
      swift_once();
    }

    v21 = off_1ECC8F578;
    v22 = sub_1DC517BAC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7C290, &qword_1DC524690);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_1DC522F20;
    *&v52 = sub_1DC298C74(0, &qword_1ECC7C6E0, 0x1E69D1318);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7C6E8, &qword_1DC523330);
    v24 = sub_1DC51777C();
    v26 = v25;
    *(v23 + 56) = MEMORY[0x1E69E6158];
    *(v23 + 64) = sub_1DC2C0FA4(v24, v25, v27);
    *(v23 + 32) = v24;
    *(v23 + 40) = v26;
    sub_1DC516EFC("Unable to get proto data from %@", 32, 2, &dword_1DC287000, v21, v22, v23);

    return 0;
  }

  v17 = v16;
  v45 = v5;
  v46 = v15;
  v47 = v13;
  v18 = sub_1DC510A0C();
  v20 = v19;

  v54 = 0;
  v52 = 0u;
  v53 = 0u;
  sub_1DC2A6784(v18, v20);
  sub_1DC5166FC();
  sub_1DC302048(&qword_1EDAC8000, MEMORY[0x1E69D10A0]);
  v48 = v18;
  v49 = v20;
  sub_1DC51677C();
  __swift_storeEnumTagSinglePayload(v11, 0, 1, v12);
  v31 = v46;
  v30 = v47;
  (*(v47 + 32))(v46, v11, v12);
  v32 = v50;
  v33 = v51;
  v34 = v51 == 1852797802 && v50 == 0xE400000000000000;
  if (v34 || (sub_1DC51825C() & 1) != 0)
  {
    sub_1DC5166DC();
    sub_1DC5166CC();
    v28 = sub_1DC51673C();
    sub_1DC2AD740(v48, v49);
    (*(v45 + 8))(v7, v4);
LABEL_22:
    (*(v30 + 8))(v31, v12);
    return v28;
  }

  v35 = v33 == 0x343665736162 && v32 == 0xE600000000000000;
  if (!v35 && (sub_1DC51825C() & 1) == 0)
  {
    if (qword_1ECC81EE0 != -1)
    {
      swift_once();
    }

    v40 = off_1ECC8F578;
    v41 = sub_1DC517BAC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7C290, &qword_1DC524690);
    v42 = swift_allocObject();
    *(v42 + 16) = xmmword_1DC522F20;
    *(v42 + 56) = MEMORY[0x1E69E6158];
    *(v42 + 64) = sub_1DC2C0FA4(v42, v43, v44);
    *(v42 + 32) = v51;
    *(v42 + 40) = v32;

    sub_1DC516EFC("Invalid provided format type:  %@", 33, 2, &dword_1DC287000, v40, v41, v42);

    sub_1DC2AD740(v48, v49);
    (*(v30 + 8))(v31, v12);
    return 0;
  }

  result = [a1 data];
  if (result)
  {
    v36 = result;
    v37 = sub_1DC510A0C();
    v39 = v38;

    v28 = sub_1DC5109FC();
    sub_1DC2AD740(v37, v39);
    sub_1DC2AD740(v48, v49);
    goto LABEL_22;
  }

  __break(1u);
  return result;
}

id _s13CDMFoundation20CDMProtobufConverterC18serializeMDRequest7request10formatTypeSSSgSo53SIRINLUINTERNALMENTION_DETECTORMentionDetectorRequestCSg_SStFZ_0(void *a1, uint64_t a2, uint64_t a3)
{
  v50 = a3;
  v51 = a2;
  v4 = sub_1DC5166EC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1DC51670C();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C6B0, &qword_1DC523310);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v45 - v10;
  v12 = sub_1DC51385C();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1 || (v16 = [a1 data]) == 0)
  {
    if (qword_1ECC81EE0 != -1)
    {
      swift_once();
    }

    v21 = off_1ECC8F578;
    v22 = sub_1DC517BAC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7C290, &qword_1DC524690);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_1DC522F20;
    *&v52 = sub_1DC298C74(0, &qword_1ECC7C6B8, 0x1E69D12E8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7C6C0, &qword_1DC523318);
    v24 = sub_1DC51777C();
    v26 = v25;
    *(v23 + 56) = MEMORY[0x1E69E6158];
    *(v23 + 64) = sub_1DC2C0FA4(v24, v25, v27);
    *(v23 + 32) = v24;
    *(v23 + 40) = v26;
    sub_1DC516EFC("Unable to get proto data from %@", 32, 2, &dword_1DC287000, v21, v22, v23);

    return 0;
  }

  v17 = v16;
  v45 = v5;
  v46 = v15;
  v47 = v13;
  v18 = sub_1DC510A0C();
  v20 = v19;

  v54 = 0;
  v52 = 0u;
  v53 = 0u;
  sub_1DC2A6784(v18, v20);
  sub_1DC5166FC();
  sub_1DC302048(&qword_1EDAC7FF8, MEMORY[0x1E69D10B0]);
  v48 = v18;
  v49 = v20;
  sub_1DC51677C();
  __swift_storeEnumTagSinglePayload(v11, 0, 1, v12);
  v31 = v46;
  v30 = v47;
  (*(v47 + 32))(v46, v11, v12);
  v32 = v50;
  v33 = v51;
  v34 = v51 == 1852797802 && v50 == 0xE400000000000000;
  if (v34 || (sub_1DC51825C() & 1) != 0)
  {
    sub_1DC5166DC();
    sub_1DC5166CC();
    v28 = sub_1DC51673C();
    sub_1DC2AD740(v48, v49);
    (*(v45 + 8))(v7, v4);
LABEL_22:
    (*(v30 + 8))(v31, v12);
    return v28;
  }

  v35 = v33 == 0x343665736162 && v32 == 0xE600000000000000;
  if (!v35 && (sub_1DC51825C() & 1) == 0)
  {
    if (qword_1ECC81EE0 != -1)
    {
      swift_once();
    }

    v40 = off_1ECC8F578;
    v41 = sub_1DC517BAC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7C290, &qword_1DC524690);
    v42 = swift_allocObject();
    *(v42 + 16) = xmmword_1DC522F20;
    *(v42 + 56) = MEMORY[0x1E69E6158];
    *(v42 + 64) = sub_1DC2C0FA4(v42, v43, v44);
    *(v42 + 32) = v51;
    *(v42 + 40) = v32;

    sub_1DC516EFC("Invalid provided format type:  %@", 33, 2, &dword_1DC287000, v40, v41, v42);

    sub_1DC2AD740(v48, v49);
    (*(v30 + 8))(v31, v12);
    return 0;
  }

  result = [a1 data];
  if (result)
  {
    v36 = result;
    v37 = sub_1DC510A0C();
    v39 = v38;

    v28 = sub_1DC5109FC();
    sub_1DC2AD740(v37, v39);
    sub_1DC2AD740(v48, v49);
    goto LABEL_22;
  }

  __break(1u);
  return result;
}

id _s13CDMFoundation20CDMProtobufConverterC19serializeMDResponse8response10formatTypeSSSgSo54SIRINLUINTERNALMENTION_DETECTORMentionDetectorResponseCSg_SStFZ_0(void *a1, uint64_t a2, uint64_t a3)
{
  v50 = a3;
  v51 = a2;
  v4 = sub_1DC5166EC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1DC51670C();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C688, &qword_1DC5232F8);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v45 - v10;
  v12 = sub_1DC51386C();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1 || (v16 = [a1 data]) == 0)
  {
    if (qword_1ECC81EE0 != -1)
    {
      swift_once();
    }

    v21 = off_1ECC8F578;
    v22 = sub_1DC517BAC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7C290, &qword_1DC524690);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_1DC522F20;
    *&v52 = sub_1DC298C74(0, &qword_1ECC7C690, 0x1E69D12F0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7C698, &qword_1DC523300);
    v24 = sub_1DC51777C();
    v26 = v25;
    *(v23 + 56) = MEMORY[0x1E69E6158];
    *(v23 + 64) = sub_1DC2C0FA4(v24, v25, v27);
    *(v23 + 32) = v24;
    *(v23 + 40) = v26;
    sub_1DC516EFC("Unable to get proto data from %@", 32, 2, &dword_1DC287000, v21, v22, v23);

    return 0;
  }

  v17 = v16;
  v45 = v5;
  v46 = v15;
  v47 = v13;
  v18 = sub_1DC510A0C();
  v20 = v19;

  v54 = 0;
  v52 = 0u;
  v53 = 0u;
  sub_1DC2A6784(v18, v20);
  sub_1DC5166FC();
  sub_1DC302048(&qword_1EDAC7FF0, MEMORY[0x1E69D10C0]);
  v48 = v18;
  v49 = v20;
  sub_1DC51677C();
  __swift_storeEnumTagSinglePayload(v11, 0, 1, v12);
  v31 = v46;
  v30 = v47;
  (*(v47 + 32))(v46, v11, v12);
  v32 = v50;
  v33 = v51;
  v34 = v51 == 1852797802 && v50 == 0xE400000000000000;
  if (v34 || (sub_1DC51825C() & 1) != 0)
  {
    sub_1DC5166DC();
    sub_1DC5166CC();
    v28 = sub_1DC51673C();
    sub_1DC2AD740(v48, v49);
    (*(v45 + 8))(v7, v4);
LABEL_22:
    (*(v30 + 8))(v31, v12);
    return v28;
  }

  v35 = v33 == 0x343665736162 && v32 == 0xE600000000000000;
  if (!v35 && (sub_1DC51825C() & 1) == 0)
  {
    if (qword_1ECC81EE0 != -1)
    {
      swift_once();
    }

    v40 = off_1ECC8F578;
    v41 = sub_1DC517BAC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7C290, &qword_1DC524690);
    v42 = swift_allocObject();
    *(v42 + 16) = xmmword_1DC522F20;
    *(v42 + 56) = MEMORY[0x1E69E6158];
    *(v42 + 64) = sub_1DC2C0FA4(v42, v43, v44);
    *(v42 + 32) = v51;
    *(v42 + 40) = v32;

    sub_1DC516EFC("Invalid provided format type:  %@", 33, 2, &dword_1DC287000, v40, v41, v42);

    sub_1DC2AD740(v48, v49);
    (*(v30 + 8))(v31, v12);
    return 0;
  }

  result = [a1 data];
  if (result)
  {
    v36 = result;
    v37 = sub_1DC510A0C();
    v39 = v38;

    v28 = sub_1DC5109FC();
    sub_1DC2AD740(v37, v39);
    sub_1DC2AD740(v48, v49);
    goto LABEL_22;
  }

  __break(1u);
  return result;
}

id _s13CDMFoundation20CDMProtobufConverterC18serializeMRRequest7request10formatTypeSSSgSo53SIRINLUINTERNALMENTION_RESOLVERMentionResolverRequestCSg_SStFZ_0(void *a1, uint64_t a2, uint64_t a3)
{
  v50 = a3;
  v51 = a2;
  v4 = sub_1DC5166EC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1DC51670C();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C660, &qword_1DC5232E0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v45 - v10;
  v12 = sub_1DC51387C();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1 || (v16 = [a1 data]) == 0)
  {
    if (qword_1ECC81EE0 != -1)
    {
      swift_once();
    }

    v21 = off_1ECC8F578;
    v22 = sub_1DC517BAC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7C290, &qword_1DC524690);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_1DC522F20;
    *&v52 = sub_1DC298C74(0, &qword_1ECC7C668, 0x1E69D12F8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7C670, &qword_1DC5232E8);
    v24 = sub_1DC51777C();
    v26 = v25;
    *(v23 + 56) = MEMORY[0x1E69E6158];
    *(v23 + 64) = sub_1DC2C0FA4(v24, v25, v27);
    *(v23 + 32) = v24;
    *(v23 + 40) = v26;
    sub_1DC516EFC("Unable to get proto data from %@", 32, 2, &dword_1DC287000, v21, v22, v23);

    return 0;
  }

  v17 = v16;
  v45 = v5;
  v46 = v15;
  v47 = v13;
  v18 = sub_1DC510A0C();
  v20 = v19;

  v54 = 0;
  v52 = 0u;
  v53 = 0u;
  sub_1DC2A6784(v18, v20);
  sub_1DC5166FC();
  sub_1DC302048(&qword_1EDAC7FE8, MEMORY[0x1E69D10D0]);
  v48 = v18;
  v49 = v20;
  sub_1DC51677C();
  __swift_storeEnumTagSinglePayload(v11, 0, 1, v12);
  v31 = v46;
  v30 = v47;
  (*(v47 + 32))(v46, v11, v12);
  v32 = v50;
  v33 = v51;
  v34 = v51 == 1852797802 && v50 == 0xE400000000000000;
  if (v34 || (sub_1DC51825C() & 1) != 0)
  {
    sub_1DC5166DC();
    sub_1DC5166CC();
    v28 = sub_1DC51673C();
    sub_1DC2AD740(v48, v49);
    (*(v45 + 8))(v7, v4);
LABEL_22:
    (*(v30 + 8))(v31, v12);
    return v28;
  }

  v35 = v33 == 0x343665736162 && v32 == 0xE600000000000000;
  if (!v35 && (sub_1DC51825C() & 1) == 0)
  {
    if (qword_1ECC81EE0 != -1)
    {
      swift_once();
    }

    v40 = off_1ECC8F578;
    v41 = sub_1DC517BAC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7C290, &qword_1DC524690);
    v42 = swift_allocObject();
    *(v42 + 16) = xmmword_1DC522F20;
    *(v42 + 56) = MEMORY[0x1E69E6158];
    *(v42 + 64) = sub_1DC2C0FA4(v42, v43, v44);
    *(v42 + 32) = v51;
    *(v42 + 40) = v32;

    sub_1DC516EFC("Invalid provided format type:  %@", 33, 2, &dword_1DC287000, v40, v41, v42);

    sub_1DC2AD740(v48, v49);
    (*(v30 + 8))(v31, v12);
    return 0;
  }

  result = [a1 data];
  if (result)
  {
    v36 = result;
    v37 = sub_1DC510A0C();
    v39 = v38;

    v28 = sub_1DC5109FC();
    sub_1DC2AD740(v37, v39);
    sub_1DC2AD740(v48, v49);
    goto LABEL_22;
  }

  __break(1u);
  return result;
}

id _s13CDMFoundation20CDMProtobufConverterC19serializeMRResponse8response10formatTypeSSSgSo54SIRINLUINTERNALMENTION_RESOLVERMentionResolverResponseCSg_SStFZ_0(void *a1, uint64_t a2, uint64_t a3)
{
  v50 = a3;
  v51 = a2;
  v4 = sub_1DC5166EC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1DC51670C();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7C638, &qword_1DC5232C8);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v45 - v10;
  v12 = sub_1DC51388C();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1 || (v16 = [a1 data]) == 0)
  {
    if (qword_1ECC81EE0 != -1)
    {
      swift_once();
    }

    v21 = off_1ECC8F578;
    v22 = sub_1DC517BAC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7C290, &qword_1DC524690);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_1DC522F20;
    *&v52 = sub_1DC298C74(0, &qword_1ECC7B930, 0x1E69D1300);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7C648, &qword_1DC5232D0);
    v24 = sub_1DC51777C();
    v26 = v25;
    *(v23 + 56) = MEMORY[0x1E69E6158];
    *(v23 + 64) = sub_1DC2C0FA4(v24, v25, v27);
    *(v23 + 32) = v24;
    *(v23 + 40) = v26;
    sub_1DC516EFC("Unable to get proto data from %@", 32, 2, &dword_1DC287000, v21, v22, v23);

    return 0;
  }

  v17 = v16;
  v45 = v5;
  v46 = v15;
  v47 = v13;
  v18 = sub_1DC510A0C();
  v20 = v19;

  v54 = 0;
  v52 = 0u;
  v53 = 0u;
  sub_1DC2A6784(v18, v20);
  sub_1DC5166FC();
  sub_1DC302048(&qword_1ECC7BDA0, MEMORY[0x1E69D10E0]);
  v48 = v18;
  v49 = v20;
  sub_1DC51677C();
  __swift_storeEnumTagSinglePayload(v11, 0, 1, v12);
  v31 = v46;
  v30 = v47;
  (*(v47 + 32))(v46, v11, v12);
  v32 = v50;
  v33 = v51;
  v34 = v51 == 1852797802 && v50 == 0xE400000000000000;
  if (v34 || (sub_1DC51825C() & 1) != 0)
  {
    sub_1DC5166DC();
    sub_1DC5166CC();
    v28 = sub_1DC51673C();
    sub_1DC2AD740(v48, v49);
    (*(v45 + 8))(v7, v4);
LABEL_22:
    (*(v30 + 8))(v31, v12);
    return v28;
  }

  v35 = v33 == 0x343665736162 && v32 == 0xE600000000000000;
  if (!v35 && (sub_1DC51825C() & 1) == 0)
  {
    if (qword_1ECC81EE0 != -1)
    {
      swift_once();
    }

    v40 = off_1ECC8F578;
    v41 = sub_1DC517BAC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7C290, &qword_1DC524690);
    v42 = swift_allocObject();
    *(v42 + 16) = xmmword_1DC522F20;
    *(v42 + 56) = MEMORY[0x1E69E6158];
    *(v42 + 64) = sub_1DC2C0FA4(v42, v43, v44);
    *(v42 + 32) = v51;
    *(v42 + 40) = v32;

    sub_1DC516EFC("Invalid provided format type:  %@", 33, 2, &dword_1DC287000, v40, v41, v42);

    sub_1DC2AD740(v48, v49);
    (*(v30 + 8))(v31, v12);
    return 0;
  }

  result = [a1 data];
  if (result)
  {
    v36 = result;
    v37 = sub_1DC510A0C();
    v39 = v38;

    v28 = sub_1DC5109FC();
    sub_1DC2AD740(v37, v39);
    sub_1DC2AD740(v48, v49);
    goto LABEL_22;
  }

  __break(1u);
  return result;
}

id _s13CDMFoundation20CDMProtobufConverterC26serializeSNLCParserRequest7request10formatTypeSSSgSo029SIRINLUINTERNALSNLCSNLCParserF0CSg_SStFZ_0(void *a1, uint64_t a2, uint64_t a3)
{
  v50 = a3;
  v51 = a2;
  v4 = sub_1DC5166EC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1DC51670C();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C610, &qword_1DC5232B0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v45 - v10;
  v12 = sub_1DC511F0C();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1 || (v16 = [a1 data]) == 0)
  {
    if (qword_1ECC81EE0 != -1)
    {
      swift_once();
    }

    v21 = off_1ECC8F578;
    v22 = sub_1DC517BAC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7C290, &qword_1DC524690);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_1DC522F20;
    *&v52 = sub_1DC298C74(0, &qword_1ECC7C618, 0x1E69D1388);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7C620, &qword_1DC5232B8);
    v24 = sub_1DC51777C();
    v26 = v25;
    *(v23 + 56) = MEMORY[0x1E69E6158];
    *(v23 + 64) = sub_1DC2C0FA4(v24, v25, v27);
    *(v23 + 32) = v24;
    *(v23 + 40) = v26;
    sub_1DC516EFC("Unable to get proto data from %@", 32, 2, &dword_1DC287000, v21, v22, v23);

    return 0;
  }

  v17 = v16;
  v45 = v5;
  v46 = v15;
  v47 = v13;
  v18 = sub_1DC510A0C();
  v20 = v19;

  v54 = 0;
  v52 = 0u;
  v53 = 0u;
  sub_1DC2A6784(v18, v20);
  sub_1DC5166FC();
  sub_1DC302048(&qword_1ECC7BDC8, MEMORY[0x1E69D0C08]);
  v48 = v18;
  v49 = v20;
  sub_1DC51677C();
  __swift_storeEnumTagSinglePayload(v11, 0, 1, v12);
  v31 = v46;
  v30 = v47;
  (*(v47 + 32))(v46, v11, v12);
  v32 = v50;
  v33 = v51;
  v34 = v51 == 1852797802 && v50 == 0xE400000000000000;
  if (v34 || (sub_1DC51825C() & 1) != 0)
  {
    sub_1DC5166DC();
    sub_1DC5166CC();
    v28 = sub_1DC51673C();
    sub_1DC2AD740(v48, v49);
    (*(v45 + 8))(v7, v4);
LABEL_22:
    (*(v30 + 8))(v31, v12);
    return v28;
  }

  v35 = v33 == 0x343665736162 && v32 == 0xE600000000000000;
  if (!v35 && (sub_1DC51825C() & 1) == 0)
  {
    if (qword_1ECC81EE0 != -1)
    {
      swift_once();
    }

    v40 = off_1ECC8F578;
    v41 = sub_1DC517BAC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7C290, &qword_1DC524690);
    v42 = swift_allocObject();
    *(v42 + 16) = xmmword_1DC522F20;
    *(v42 + 56) = MEMORY[0x1E69E6158];
    *(v42 + 64) = sub_1DC2C0FA4(v42, v43, v44);
    *(v42 + 32) = v51;
    *(v42 + 40) = v32;

    sub_1DC516EFC("Invalid provided format type:  %@", 33, 2, &dword_1DC287000, v40, v41, v42);

    sub_1DC2AD740(v48, v49);
    (*(v30 + 8))(v31, v12);
    return 0;
  }

  result = [a1 data];
  if (result)
  {
    v36 = result;
    v37 = sub_1DC510A0C();
    v39 = v38;

    v28 = sub_1DC5109FC();
    sub_1DC2AD740(v37, v39);
    sub_1DC2AD740(v48, v49);
    goto LABEL_22;
  }

  __break(1u);
  return result;
}

id _s13CDMFoundation20CDMProtobufConverterC27serializeSNLCParserResponse8response10formatTypeSSSgSo029SIRINLUINTERNALSNLCSNLCParserF0CSg_SStFZ_0(void *a1, uint64_t a2, uint64_t a3)
{
  v50 = a3;
  v51 = a2;
  v4 = sub_1DC5166EC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1DC51670C();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C5E8, &qword_1DC523298);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v45 - v10;
  v12 = sub_1DC511F2C();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1 || (v16 = [a1 data]) == 0)
  {
    if (qword_1ECC81EE0 != -1)
    {
      swift_once();
    }

    v21 = off_1ECC8F578;
    v22 = sub_1DC517BAC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7C290, &qword_1DC524690);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_1DC522F20;
    *&v52 = sub_1DC298C74(0, &qword_1ECC7C5F0, 0x1E69D1390);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7C5F8, &qword_1DC5232A0);
    v24 = sub_1DC51777C();
    v26 = v25;
    *(v23 + 56) = MEMORY[0x1E69E6158];
    *(v23 + 64) = sub_1DC2C0FA4(v24, v25, v27);
    *(v23 + 32) = v24;
    *(v23 + 40) = v26;
    sub_1DC516EFC("Unable to get proto data from %@", 32, 2, &dword_1DC287000, v21, v22, v23);

    return 0;
  }

  v17 = v16;
  v45 = v5;
  v46 = v15;
  v47 = v13;
  v18 = sub_1DC510A0C();
  v20 = v19;

  v54 = 0;
  v52 = 0u;
  v53 = 0u;
  sub_1DC2A6784(v18, v20);
  sub_1DC5166FC();
  sub_1DC302048(&qword_1ECC7BDC0, MEMORY[0x1E69D0C28]);
  v48 = v18;
  v49 = v20;
  sub_1DC51677C();
  __swift_storeEnumTagSinglePayload(v11, 0, 1, v12);
  v31 = v46;
  v30 = v47;
  (*(v47 + 32))(v46, v11, v12);
  v32 = v50;
  v33 = v51;
  v34 = v51 == 1852797802 && v50 == 0xE400000000000000;
  if (v34 || (sub_1DC51825C() & 1) != 0)
  {
    sub_1DC5166DC();
    sub_1DC5166CC();
    v28 = sub_1DC51673C();
    sub_1DC2AD740(v48, v49);
    (*(v45 + 8))(v7, v4);
LABEL_22:
    (*(v30 + 8))(v31, v12);
    return v28;
  }

  v35 = v33 == 0x343665736162 && v32 == 0xE600000000000000;
  if (!v35 && (sub_1DC51825C() & 1) == 0)
  {
    if (qword_1ECC81EE0 != -1)
    {
      swift_once();
    }

    v40 = off_1ECC8F578;
    v41 = sub_1DC517BAC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7C290, &qword_1DC524690);
    v42 = swift_allocObject();
    *(v42 + 16) = xmmword_1DC522F20;
    *(v42 + 56) = MEMORY[0x1E69E6158];
    *(v42 + 64) = sub_1DC2C0FA4(v42, v43, v44);
    *(v42 + 32) = v51;
    *(v42 + 40) = v32;

    sub_1DC516EFC("Invalid provided format type:  %@", 33, 2, &dword_1DC287000, v40, v41, v42);

    sub_1DC2AD740(v48, v49);
    (*(v30 + 8))(v31, v12);
    return 0;
  }

  result = [a1 data];
  if (result)
  {
    v36 = result;
    v37 = sub_1DC510A0C();
    v39 = v38;

    v28 = sub_1DC5109FC();
    sub_1DC2AD740(v37, v39);
    sub_1DC2AD740(v48, v49);
    goto LABEL_22;
  }

  __break(1u);
  return result;
}

id _s13CDMFoundation20CDMProtobufConverterC25serializePSCParserRequest7request10formatTypeSSSgSo029SIRINLUINTERNALITFMITFMParserF0CSg_SStFZ_0(void *a1, uint64_t a2, uint64_t a3)
{
  v50 = a3;
  v51 = a2;
  v4 = sub_1DC5166EC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1DC51670C();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C5C0, &qword_1DC523280);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v45 - v10;
  v12 = sub_1DC511EFC();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1 || (v16 = [a1 data]) == 0)
  {
    if (qword_1ECC81EE0 != -1)
    {
      swift_once();
    }

    v21 = off_1ECC8F578;
    v22 = sub_1DC517BAC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7C290, &qword_1DC524690);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_1DC522F20;
    *&v52 = sub_1DC298C74(0, &qword_1ECC7C5C8, 0x1E69D12D0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7C5D0, &qword_1DC523288);
    v24 = sub_1DC51777C();
    v26 = v25;
    *(v23 + 56) = MEMORY[0x1E69E6158];
    *(v23 + 64) = sub_1DC2C0FA4(v24, v25, v27);
    *(v23 + 32) = v24;
    *(v23 + 40) = v26;
    sub_1DC516EFC("Unable to get proto data from %@", 32, 2, &dword_1DC287000, v21, v22, v23);

    return 0;
  }

  v17 = v16;
  v45 = v5;
  v46 = v15;
  v47 = v13;
  v18 = sub_1DC510A0C();
  v20 = v19;

  v54 = 0;
  v52 = 0u;
  v53 = 0u;
  sub_1DC2A6784(v18, v20);
  sub_1DC5166FC();
  sub_1DC302048(&qword_1EDAC8058, MEMORY[0x1E69D0BF8]);
  v48 = v18;
  v49 = v20;
  sub_1DC51677C();
  __swift_storeEnumTagSinglePayload(v11, 0, 1, v12);
  v31 = v46;
  v30 = v47;
  (*(v47 + 32))(v46, v11, v12);
  v32 = v50;
  v33 = v51;
  v34 = v51 == 1852797802 && v50 == 0xE400000000000000;
  if (v34 || (sub_1DC51825C() & 1) != 0)
  {
    sub_1DC5166DC();
    sub_1DC5166CC();
    v28 = sub_1DC51673C();
    sub_1DC2AD740(v48, v49);
    (*(v45 + 8))(v7, v4);
LABEL_22:
    (*(v30 + 8))(v31, v12);
    return v28;
  }

  v35 = v33 == 0x343665736162 && v32 == 0xE600000000000000;
  if (!v35 && (sub_1DC51825C() & 1) == 0)
  {
    if (qword_1ECC81EE0 != -1)
    {
      swift_once();
    }

    v40 = off_1ECC8F578;
    v41 = sub_1DC517BAC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7C290, &qword_1DC524690);
    v42 = swift_allocObject();
    *(v42 + 16) = xmmword_1DC522F20;
    *(v42 + 56) = MEMORY[0x1E69E6158];
    *(v42 + 64) = sub_1DC2C0FA4(v42, v43, v44);
    *(v42 + 32) = v51;
    *(v42 + 40) = v32;

    sub_1DC516EFC("Invalid provided format type:  %@", 33, 2, &dword_1DC287000, v40, v41, v42);

    sub_1DC2AD740(v48, v49);
    (*(v30 + 8))(v31, v12);
    return 0;
  }

  result = [a1 data];
  if (result)
  {
    v36 = result;
    v37 = sub_1DC510A0C();
    v39 = v38;

    v28 = sub_1DC5109FC();
    sub_1DC2AD740(v37, v39);
    sub_1DC2AD740(v48, v49);
    goto LABEL_22;
  }

  __break(1u);
  return result;
}

id _s13CDMFoundation20CDMProtobufConverterC26serializePSCParserResponse8response10formatTypeSSSgSo029SIRINLUINTERNALITFMITFMParserF0CSg_SStFZ_0(void *a1, uint64_t a2, uint64_t a3)
{
  v50 = a3;
  v51 = a2;
  v4 = sub_1DC5166EC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1DC51670C();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C598, &qword_1DC523268);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v45 - v10;
  v12 = sub_1DC511F1C();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1 || (v16 = [a1 data]) == 0)
  {
    if (qword_1ECC81EE0 != -1)
    {
      swift_once();
    }

    v21 = off_1ECC8F578;
    v22 = sub_1DC517BAC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7C290, &qword_1DC524690);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_1DC522F20;
    *&v52 = sub_1DC298C74(0, &qword_1ECC7C5A0, 0x1E69D12D8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7C5A8, &qword_1DC523270);
    v24 = sub_1DC51777C();
    v26 = v25;
    *(v23 + 56) = MEMORY[0x1E69E6158];
    *(v23 + 64) = sub_1DC2C0FA4(v24, v25, v27);
    *(v23 + 32) = v24;
    *(v23 + 40) = v26;
    sub_1DC516EFC("Unable to get proto data from %@", 32, 2, &dword_1DC287000, v21, v22, v23);

    return 0;
  }

  v17 = v16;
  v45 = v5;
  v46 = v15;
  v47 = v13;
  v18 = sub_1DC510A0C();
  v20 = v19;

  v54 = 0;
  v52 = 0u;
  v53 = 0u;
  sub_1DC2A6784(v18, v20);
  sub_1DC5166FC();
  sub_1DC302048(&qword_1EDAC8050, MEMORY[0x1E69D0C18]);
  v48 = v18;
  v49 = v20;
  sub_1DC51677C();
  __swift_storeEnumTagSinglePayload(v11, 0, 1, v12);
  v31 = v46;
  v30 = v47;
  (*(v47 + 32))(v46, v11, v12);
  v32 = v50;
  v33 = v51;
  v34 = v51 == 1852797802 && v50 == 0xE400000000000000;
  if (v34 || (sub_1DC51825C() & 1) != 0)
  {
    sub_1DC5166DC();
    sub_1DC5166CC();
    v28 = sub_1DC51673C();
    sub_1DC2AD740(v48, v49);
    (*(v45 + 8))(v7, v4);
LABEL_22:
    (*(v30 + 8))(v31, v12);
    return v28;
  }

  v35 = v33 == 0x343665736162 && v32 == 0xE600000000000000;
  if (!v35 && (sub_1DC51825C() & 1) == 0)
  {
    if (qword_1ECC81EE0 != -1)
    {
      swift_once();
    }

    v40 = off_1ECC8F578;
    v41 = sub_1DC517BAC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7C290, &qword_1DC524690);
    v42 = swift_allocObject();
    *(v42 + 16) = xmmword_1DC522F20;
    *(v42 + 56) = MEMORY[0x1E69E6158];
    *(v42 + 64) = sub_1DC2C0FA4(v42, v43, v44);
    *(v42 + 32) = v51;
    *(v42 + 40) = v32;

    sub_1DC516EFC("Invalid provided format type:  %@", 33, 2, &dword_1DC287000, v40, v41, v42);

    sub_1DC2AD740(v48, v49);
    (*(v30 + 8))(v31, v12);
    return 0;
  }

  result = [a1 data];
  if (result)
  {
    v36 = result;
    v37 = sub_1DC510A0C();
    v39 = v38;

    v28 = sub_1DC5109FC();
    sub_1DC2AD740(v37, v39);
    sub_1DC2AD740(v48, v49);
    goto LABEL_22;
  }

  __break(1u);
  return result;
}

id _s13CDMFoundation20CDMProtobufConverterC19serializeSSURequest7request10formatTypeSSSgSo28SIRINLUINTERNALSSUSSURequestCSg_SStFZ_0(void *a1, uint64_t a2, uint64_t a3)
{
  v50 = a3;
  v51 = a2;
  v4 = sub_1DC5166EC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1DC51670C();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C570, &qword_1DC523250);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v45 - v10;
  v12 = sub_1DC5117AC();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1 || (v16 = [a1 data]) == 0)
  {
    if (qword_1ECC81EE0 != -1)
    {
      swift_once();
    }

    v21 = off_1ECC8F578;
    v22 = sub_1DC517BAC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7C290, &qword_1DC524690);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_1DC522F20;
    *&v52 = sub_1DC298C74(0, &qword_1ECC7C578, 0x1E69D13A8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C580, &qword_1DC523258);
    v24 = sub_1DC51777C();
    v26 = v25;
    *(v23 + 56) = MEMORY[0x1E69E6158];
    *(v23 + 64) = sub_1DC2C0FA4(v24, v25, v27);
    *(v23 + 32) = v24;
    *(v23 + 40) = v26;
    sub_1DC516EFC("Unable to get proto data from %@", 32, 2, &dword_1DC287000, v21, v22, v23);

    return 0;
  }

  v17 = v16;
  v45 = v5;
  v46 = v15;
  v47 = v13;
  v18 = sub_1DC510A0C();
  v20 = v19;

  v54 = 0;
  v52 = 0u;
  v53 = 0u;
  sub_1DC2A6784(v18, v20);
  sub_1DC5166FC();
  sub_1DC302048(&qword_1ECC7C588, MEMORY[0x1E69D0AF8]);
  v48 = v18;
  v49 = v20;
  sub_1DC51677C();
  __swift_storeEnumTagSinglePayload(v11, 0, 1, v12);
  v31 = v46;
  v30 = v47;
  (*(v47 + 32))(v46, v11, v12);
  v32 = v50;
  v33 = v51;
  v34 = v51 == 1852797802 && v50 == 0xE400000000000000;
  if (v34 || (sub_1DC51825C() & 1) != 0)
  {
    sub_1DC5166DC();
    sub_1DC5166CC();
    v28 = sub_1DC51673C();
    sub_1DC2AD740(v48, v49);
    (*(v45 + 8))(v7, v4);
LABEL_22:
    (*(v30 + 8))(v31, v12);
    return v28;
  }

  v35 = v33 == 0x343665736162 && v32 == 0xE600000000000000;
  if (!v35 && (sub_1DC51825C() & 1) == 0)
  {
    if (qword_1ECC81EE0 != -1)
    {
      swift_once();
    }

    v40 = off_1ECC8F578;
    v41 = sub_1DC517BAC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7C290, &qword_1DC524690);
    v42 = swift_allocObject();
    *(v42 + 16) = xmmword_1DC522F20;
    *(v42 + 56) = MEMORY[0x1E69E6158];
    *(v42 + 64) = sub_1DC2C0FA4(v42, v43, v44);
    *(v42 + 32) = v51;
    *(v42 + 40) = v32;

    sub_1DC516EFC("Invalid provided format type:  %@", 33, 2, &dword_1DC287000, v40, v41, v42);

    sub_1DC2AD740(v48, v49);
    (*(v30 + 8))(v31, v12);
    return 0;
  }

  result = [a1 data];
  if (result)
  {
    v36 = result;
    v37 = sub_1DC510A0C();
    v39 = v38;

    v28 = sub_1DC5109FC();
    sub_1DC2AD740(v37, v39);
    sub_1DC2AD740(v48, v49);
    goto LABEL_22;
  }

  __break(1u);
  return result;
}

id _s13CDMFoundation20CDMProtobufConverterC20serializeSSUResponse8response10formatTypeSSSgSo29SIRINLUINTERNALSSUSSUResponseCSg_SStFZ_0(void *a1, uint64_t a2, uint64_t a3)
{
  v50 = a3;
  v51 = a2;
  v4 = sub_1DC5166EC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1DC51670C();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C548, &qword_1DC523238);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v45 - v10;
  v12 = sub_1DC5119EC();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1 || (v16 = [a1 data]) == 0)
  {
    if (qword_1ECC81EE0 != -1)
    {
      swift_once();
    }

    v21 = off_1ECC8F578;
    v22 = sub_1DC517BAC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7C290, &qword_1DC524690);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_1DC522F20;
    *&v52 = sub_1DC298C74(0, &qword_1ECC7C550, 0x1E69D13B0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C558, &qword_1DC523240);
    v24 = sub_1DC51777C();
    v26 = v25;
    *(v23 + 56) = MEMORY[0x1E69E6158];
    *(v23 + 64) = sub_1DC2C0FA4(v24, v25, v27);
    *(v23 + 32) = v24;
    *(v23 + 40) = v26;
    sub_1DC516EFC("Unable to get proto data from %@", 32, 2, &dword_1DC287000, v21, v22, v23);

    return 0;
  }

  v17 = v16;
  v45 = v5;
  v46 = v15;
  v47 = v13;
  v18 = sub_1DC510A0C();
  v20 = v19;

  v54 = 0;
  v52 = 0u;
  v53 = 0u;
  sub_1DC2A6784(v18, v20);
  sub_1DC5166FC();
  sub_1DC302048(&qword_1ECC7C560, MEMORY[0x1E69D0B60]);
  v48 = v18;
  v49 = v20;
  sub_1DC51677C();
  __swift_storeEnumTagSinglePayload(v11, 0, 1, v12);
  v31 = v46;
  v30 = v47;
  (*(v47 + 32))(v46, v11, v12);
  v32 = v50;
  v33 = v51;
  v34 = v51 == 1852797802 && v50 == 0xE400000000000000;
  if (v34 || (sub_1DC51825C() & 1) != 0)
  {
    sub_1DC5166DC();
    sub_1DC5166CC();
    v28 = sub_1DC51673C();
    sub_1DC2AD740(v48, v49);
    (*(v45 + 8))(v7, v4);
LABEL_22:
    (*(v30 + 8))(v31, v12);
    return v28;
  }

  v35 = v33 == 0x343665736162 && v32 == 0xE600000000000000;
  if (!v35 && (sub_1DC51825C() & 1) == 0)
  {
    if (qword_1ECC81EE0 != -1)
    {
      swift_once();
    }

    v40 = off_1ECC8F578;
    v41 = sub_1DC517BAC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7C290, &qword_1DC524690);
    v42 = swift_allocObject();
    *(v42 + 16) = xmmword_1DC522F20;
    *(v42 + 56) = MEMORY[0x1E69E6158];
    *(v42 + 64) = sub_1DC2C0FA4(v42, v43, v44);
    *(v42 + 32) = v51;
    *(v42 + 40) = v32;

    sub_1DC516EFC("Invalid provided format type:  %@", 33, 2, &dword_1DC287000, v40, v41, v42);

    sub_1DC2AD740(v48, v49);
    (*(v30 + 8))(v31, v12);
    return 0;
  }

  result = [a1 data];
  if (result)
  {
    v36 = result;
    v37 = sub_1DC510A0C();
    v39 = v38;

    v28 = sub_1DC5109FC();
    sub_1DC2AD740(v37, v39);
    sub_1DC2AD740(v48, v49);
    goto LABEL_22;
  }

  __break(1u);
  return result;
}

id _s13CDMFoundation20CDMProtobufConverterC26serializeUaaPParserRequest7request10formatTypeSSSgSo029SIRINLUINTERNALUAAP_PARSERUaafG0CSg_SStFZ_0(void *a1, uint64_t a2, uint64_t a3)
{
  v50 = a3;
  v51 = a2;
  v4 = sub_1DC5166EC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1DC51670C();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C520, &qword_1DC523220);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v45 - v10;
  v12 = sub_1DC51225C();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1 || (v16 = [a1 data]) == 0)
  {
    if (qword_1ECC81EE0 != -1)
    {
      swift_once();
    }

    v21 = off_1ECC8F578;
    v22 = sub_1DC517BAC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7C290, &qword_1DC524690);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_1DC522F20;
    *&v52 = sub_1DC298C74(0, &qword_1ECC7C528, 0x1E69D13E0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C530, &qword_1DC523228);
    v24 = sub_1DC51777C();
    v26 = v25;
    *(v23 + 56) = MEMORY[0x1E69E6158];
    *(v23 + 64) = sub_1DC2C0FA4(v24, v25, v27);
    *(v23 + 32) = v24;
    *(v23 + 40) = v26;
    sub_1DC516EFC("Unable to get proto data from %@", 32, 2, &dword_1DC287000, v21, v22, v23);

    return 0;
  }

  v17 = v16;
  v45 = v5;
  v46 = v15;
  v47 = v13;
  v18 = sub_1DC510A0C();
  v20 = v19;

  v54 = 0;
  v52 = 0u;
  v53 = 0u;
  sub_1DC2A6784(v18, v20);
  sub_1DC5166FC();
  sub_1DC302048(&qword_1ECC7C538, MEMORY[0x1E69D0CF8]);
  v48 = v18;
  v49 = v20;
  sub_1DC51677C();
  __swift_storeEnumTagSinglePayload(v11, 0, 1, v12);
  v31 = v46;
  v30 = v47;
  (*(v47 + 32))(v46, v11, v12);
  v32 = v50;
  v33 = v51;
  v34 = v51 == 1852797802 && v50 == 0xE400000000000000;
  if (v34 || (sub_1DC51825C() & 1) != 0)
  {
    sub_1DC5166DC();
    sub_1DC5166CC();
    v28 = sub_1DC51673C();
    sub_1DC2AD740(v48, v49);
    (*(v45 + 8))(v7, v4);
LABEL_22:
    (*(v30 + 8))(v31, v12);
    return v28;
  }

  v35 = v33 == 0x343665736162 && v32 == 0xE600000000000000;
  if (!v35 && (sub_1DC51825C() & 1) == 0)
  {
    if (qword_1ECC81EE0 != -1)
    {
      swift_once();
    }

    v40 = off_1ECC8F578;
    v41 = sub_1DC517BAC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7C290, &qword_1DC524690);
    v42 = swift_allocObject();
    *(v42 + 16) = xmmword_1DC522F20;
    *(v42 + 56) = MEMORY[0x1E69E6158];
    *(v42 + 64) = sub_1DC2C0FA4(v42, v43, v44);
    *(v42 + 32) = v51;
    *(v42 + 40) = v32;

    sub_1DC516EFC("Invalid provided format type:  %@", 33, 2, &dword_1DC287000, v40, v41, v42);

    sub_1DC2AD740(v48, v49);
    (*(v30 + 8))(v31, v12);
    return 0;
  }

  result = [a1 data];
  if (result)
  {
    v36 = result;
    v37 = sub_1DC510A0C();
    v39 = v38;

    v28 = sub_1DC5109FC();
    sub_1DC2AD740(v37, v39);
    sub_1DC2AD740(v48, v49);
    goto LABEL_22;
  }

  __break(1u);
  return result;
}

id _s13CDMFoundation20CDMProtobufConverterC27serializeUaaPParserResponse8response10formatTypeSSSgSo029SIRINLUINTERNALUAAP_PARSERUaafG0CSg_SStFZ_0(void *a1, uint64_t a2, uint64_t a3)
{
  v50 = a3;
  v51 = a2;
  v4 = sub_1DC5166EC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1DC51670C();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C4F8, &qword_1DC523208);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v45 - v10;
  v12 = sub_1DC51226C();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1 || (v16 = [a1 data]) == 0)
  {
    if (qword_1ECC81EE0 != -1)
    {
      swift_once();
    }

    v21 = off_1ECC8F578;
    v22 = sub_1DC517BAC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7C290, &qword_1DC524690);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_1DC522F20;
    *&v52 = sub_1DC298C74(0, &qword_1ECC7C500, 0x1E69D13E8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C508, &qword_1DC523210);
    v24 = sub_1DC51777C();
    v26 = v25;
    *(v23 + 56) = MEMORY[0x1E69E6158];
    *(v23 + 64) = sub_1DC2C0FA4(v24, v25, v27);
    *(v23 + 32) = v24;
    *(v23 + 40) = v26;
    sub_1DC516EFC("Unable to get proto data from %@", 32, 2, &dword_1DC287000, v21, v22, v23);

    return 0;
  }

  v17 = v16;
  v45 = v5;
  v46 = v15;
  v47 = v13;
  v18 = sub_1DC510A0C();
  v20 = v19;

  v54 = 0;
  v52 = 0u;
  v53 = 0u;
  sub_1DC2A6784(v18, v20);
  sub_1DC5166FC();
  sub_1DC302048(&qword_1ECC7C510, MEMORY[0x1E69D0D08]);
  v48 = v18;
  v49 = v20;
  sub_1DC51677C();
  __swift_storeEnumTagSinglePayload(v11, 0, 1, v12);
  v31 = v46;
  v30 = v47;
  (*(v47 + 32))(v46, v11, v12);
  v32 = v50;
  v33 = v51;
  v34 = v51 == 1852797802 && v50 == 0xE400000000000000;
  if (v34 || (sub_1DC51825C() & 1) != 0)
  {
    sub_1DC5166DC();
    sub_1DC5166CC();
    v28 = sub_1DC51673C();
    sub_1DC2AD740(v48, v49);
    (*(v45 + 8))(v7, v4);
LABEL_22:
    (*(v30 + 8))(v31, v12);
    return v28;
  }

  v35 = v33 == 0x343665736162 && v32 == 0xE600000000000000;
  if (!v35 && (sub_1DC51825C() & 1) == 0)
  {
    if (qword_1ECC81EE0 != -1)
    {
      swift_once();
    }

    v40 = off_1ECC8F578;
    v41 = sub_1DC517BAC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7C290, &qword_1DC524690);
    v42 = swift_allocObject();
    *(v42 + 16) = xmmword_1DC522F20;
    *(v42 + 56) = MEMORY[0x1E69E6158];
    *(v42 + 64) = sub_1DC2C0FA4(v42, v43, v44);
    *(v42 + 32) = v51;
    *(v42 + 40) = v32;

    sub_1DC516EFC("Invalid provided format type:  %@", 33, 2, &dword_1DC287000, v40, v41, v42);

    sub_1DC2AD740(v48, v49);
    (*(v30 + 8))(v31, v12);
    return 0;
  }

  result = [a1 data];
  if (result)
  {
    v36 = result;
    v37 = sub_1DC510A0C();
    v39 = v38;

    v28 = sub_1DC5109FC();
    sub_1DC2AD740(v37, v39);
    sub_1DC2AD740(v48, v49);
    goto LABEL_22;
  }

  __break(1u);
  return result;
}

id _s13CDMFoundation20CDMProtobufConverterC27serializeExternalNluRequest7request10formatTypeSSSgSo021SIRINLUEXTERNALCDMNluG0CSg_SStFZ_0(void *a1, uint64_t a2, uint64_t a3)
{
  v50 = a3;
  v51 = a2;
  v4 = sub_1DC5166EC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1DC51670C();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7C340, &qword_1DC5230C8);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v45 - v10;
  v12 = sub_1DC51373C();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1 || (v16 = [a1 data]) == 0)
  {
    if (qword_1ECC81EE0 != -1)
    {
      swift_once();
    }

    v21 = off_1ECC8F578;
    v22 = sub_1DC517BAC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7C290, &qword_1DC524690);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_1DC522F20;
    *&v52 = sub_1DC298C74(0, &qword_1ECC7C4E0, 0x1E69D1150);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C4E8, &qword_1DC5231F8);
    v24 = sub_1DC51777C();
    v26 = v25;
    *(v23 + 56) = MEMORY[0x1E69E6158];
    *(v23 + 64) = sub_1DC2C0FA4(v24, v25, v27);
    *(v23 + 32) = v24;
    *(v23 + 40) = v26;
    sub_1DC516EFC("Unable to get proto data from %@", 32, 2, &dword_1DC287000, v21, v22, v23);

    return 0;
  }

  v17 = v16;
  v45 = v5;
  v46 = v15;
  v47 = v13;
  v18 = sub_1DC510A0C();
  v20 = v19;

  v54 = 0;
  v52 = 0u;
  v53 = 0u;
  sub_1DC2A6784(v18, v20);
  sub_1DC5166FC();
  sub_1DC302048(&qword_1EDAC8030, MEMORY[0x1E69D1020]);
  v48 = v18;
  v49 = v20;
  sub_1DC51677C();
  __swift_storeEnumTagSinglePayload(v11, 0, 1, v12);
  v31 = v46;
  v30 = v47;
  (*(v47 + 32))(v46, v11, v12);
  v32 = v50;
  v33 = v51;
  v34 = v51 == 1852797802 && v50 == 0xE400000000000000;
  if (v34 || (sub_1DC51825C() & 1) != 0)
  {
    sub_1DC5166DC();
    sub_1DC5166CC();
    v28 = sub_1DC51673C();
    sub_1DC2AD740(v48, v49);
    (*(v45 + 8))(v7, v4);
LABEL_22:
    (*(v30 + 8))(v31, v12);
    return v28;
  }

  v35 = v33 == 0x343665736162 && v32 == 0xE600000000000000;
  if (!v35 && (sub_1DC51825C() & 1) == 0)
  {
    if (qword_1ECC81EE0 != -1)
    {
      swift_once();
    }

    v40 = off_1ECC8F578;
    v41 = sub_1DC517BAC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7C290, &qword_1DC524690);
    v42 = swift_allocObject();
    *(v42 + 16) = xmmword_1DC522F20;
    *(v42 + 56) = MEMORY[0x1E69E6158];
    *(v42 + 64) = sub_1DC2C0FA4(v42, v43, v44);
    *(v42 + 32) = v51;
    *(v42 + 40) = v32;

    sub_1DC516EFC("Invalid provided format type:  %@", 33, 2, &dword_1DC287000, v40, v41, v42);

    sub_1DC2AD740(v48, v49);
    (*(v30 + 8))(v31, v12);
    return 0;
  }

  result = [a1 data];
  if (result)
  {
    v36 = result;
    v37 = sub_1DC510A0C();
    v39 = v38;

    v28 = sub_1DC5109FC();
    sub_1DC2AD740(v37, v39);
    sub_1DC2AD740(v48, v49);
    goto LABEL_22;
  }

  __break(1u);
  return result;
}

id _s13CDMFoundation20CDMProtobufConverterC28serializeExternalNluResponse8response10formatTypeSSSgSo021SIRINLUEXTERNALCDMNluG0CSg_SStFZ_0(void *a1, uint64_t a2, uint64_t a3)
{
  v50 = a3;
  v51 = a2;
  v4 = sub_1DC5166EC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1DC51670C();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C370, &qword_1DC5230E0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v45 - v10;
  v12 = sub_1DC5137CC();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1 || (v16 = [a1 data]) == 0)
  {
    if (qword_1ECC81EE0 != -1)
    {
      swift_once();
    }

    v21 = off_1ECC8F578;
    v22 = sub_1DC517BAC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7C290, &qword_1DC524690);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_1DC522F20;
    *&v52 = sub_1DC298C74(0, &qword_1ECC7CFE0, 0x1E69D1158);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C4D0, &qword_1DC5231E8);
    v24 = sub_1DC51777C();
    v26 = v25;
    *(v23 + 56) = MEMORY[0x1E69E6158];
    *(v23 + 64) = sub_1DC2C0FA4(v24, v25, v27);
    *(v23 + 32) = v24;
    *(v23 + 40) = v26;
    sub_1DC516EFC("Unable to get proto data from %@", 32, 2, &dword_1DC287000, v21, v22, v23);

    return 0;
  }

  v17 = v16;
  v45 = v5;
  v46 = v15;
  v47 = v13;
  v18 = sub_1DC510A0C();
  v20 = v19;

  v54 = 0;
  v52 = 0u;
  v53 = 0u;
  sub_1DC2A6784(v18, v20);
  sub_1DC5166FC();
  sub_1DC302048(&qword_1EDAC8020, MEMORY[0x1E69D1030]);
  v48 = v18;
  v49 = v20;
  sub_1DC51677C();
  __swift_storeEnumTagSinglePayload(v11, 0, 1, v12);
  v31 = v46;
  v30 = v47;
  (*(v47 + 32))(v46, v11, v12);
  v32 = v50;
  v33 = v51;
  v34 = v51 == 1852797802 && v50 == 0xE400000000000000;
  if (v34 || (sub_1DC51825C() & 1) != 0)
  {
    sub_1DC5166DC();
    sub_1DC5166CC();
    v28 = sub_1DC51673C();
    sub_1DC2AD740(v48, v49);
    (*(v45 + 8))(v7, v4);
LABEL_22:
    (*(v30 + 8))(v31, v12);
    return v28;
  }

  v35 = v33 == 0x343665736162 && v32 == 0xE600000000000000;
  if (!v35 && (sub_1DC51825C() & 1) == 0)
  {
    if (qword_1ECC81EE0 != -1)
    {
      swift_once();
    }

    v40 = off_1ECC8F578;
    v41 = sub_1DC517BAC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7C290, &qword_1DC524690);
    v42 = swift_allocObject();
    *(v42 + 16) = xmmword_1DC522F20;
    *(v42 + 56) = MEMORY[0x1E69E6158];
    *(v42 + 64) = sub_1DC2C0FA4(v42, v43, v44);
    *(v42 + 32) = v51;
    *(v42 + 40) = v32;

    sub_1DC516EFC("Invalid provided format type:  %@", 33, 2, &dword_1DC287000, v40, v41, v42);

    sub_1DC2AD740(v48, v49);
    (*(v30 + 8))(v31, v12);
    return 0;
  }

  result = [a1 data];
  if (result)
  {
    v36 = result;
    v37 = sub_1DC510A0C();
    v39 = v38;

    v28 = sub_1DC5109FC();
    sub_1DC2AD740(v37, v39);
    sub_1DC2AD740(v48, v49);
    goto LABEL_22;
  }

  __break(1u);
  return result;
}

id _s13CDMFoundation20CDMProtobufConverterC41serializeExternalSubwordEmbeddingResponse8response10formatTypeSSSgSo039SIRINLUEXTERNALSUBWORD_EMBEDDINGSubwordgH0CSg_SStFZ_0(void *a1, uint64_t a2, uint64_t a3)
{
  v50 = a3;
  v51 = a2;
  v4 = sub_1DC5166EC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1DC51670C();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C4A0, &qword_1DC5231D0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v45 - v10;
  v12 = sub_1DC5138BC();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1 || (v16 = [a1 data]) == 0)
  {
    if (qword_1ECC81EE0 != -1)
    {
      swift_once();
    }

    v21 = off_1ECC8F578;
    v22 = sub_1DC517BAC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7C290, &qword_1DC524690);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_1DC522F20;
    *&v52 = sub_1DC298C74(0, &qword_1ECC7C4A8, 0x1E69D11F0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C4B0, &qword_1DC5231D8);
    v24 = sub_1DC51777C();
    v26 = v25;
    *(v23 + 56) = MEMORY[0x1E69E6158];
    *(v23 + 64) = sub_1DC2C0FA4(v24, v25, v27);
    *(v23 + 32) = v24;
    *(v23 + 40) = v26;
    sub_1DC516EFC("Unable to get proto data from %@", 32, 2, &dword_1DC287000, v21, v22, v23);

    return 0;
  }

  v17 = v16;
  v45 = v5;
  v46 = v15;
  v47 = v13;
  v18 = sub_1DC510A0C();
  v20 = v19;

  v54 = 0;
  v52 = 0u;
  v53 = 0u;
  sub_1DC2A6784(v18, v20);
  sub_1DC5166FC();
  sub_1DC302048(&qword_1ECC7C4B8, MEMORY[0x1E69D1100]);
  v48 = v18;
  v49 = v20;
  sub_1DC51677C();
  __swift_storeEnumTagSinglePayload(v11, 0, 1, v12);
  v31 = v46;
  v30 = v47;
  (*(v47 + 32))(v46, v11, v12);
  v32 = v50;
  v33 = v51;
  v34 = v51 == 1852797802 && v50 == 0xE400000000000000;
  if (v34 || (sub_1DC51825C() & 1) != 0)
  {
    sub_1DC5166DC();
    sub_1DC5166CC();
    v28 = sub_1DC51673C();
    sub_1DC2AD740(v48, v49);
    (*(v45 + 8))(v7, v4);
LABEL_22:
    (*(v30 + 8))(v31, v12);
    return v28;
  }

  v35 = v33 == 0x343665736162 && v32 == 0xE600000000000000;
  if (!v35 && (sub_1DC51825C() & 1) == 0)
  {
    if (qword_1ECC81EE0 != -1)
    {
      swift_once();
    }

    v40 = off_1ECC8F578;
    v41 = sub_1DC517BAC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7C290, &qword_1DC524690);
    v42 = swift_allocObject();
    *(v42 + 16) = xmmword_1DC522F20;
    *(v42 + 56) = MEMORY[0x1E69E6158];
    *(v42 + 64) = sub_1DC2C0FA4(v42, v43, v44);
    *(v42 + 32) = v51;
    *(v42 + 40) = v32;

    sub_1DC516EFC("Invalid provided format type:  %@", 33, 2, &dword_1DC287000, v40, v41, v42);

    sub_1DC2AD740(v48, v49);
    (*(v30 + 8))(v31, v12);
    return 0;
  }

  result = [a1 data];
  if (result)
  {
    v36 = result;
    v37 = sub_1DC510A0C();
    v39 = v38;

    v28 = sub_1DC5109FC();
    sub_1DC2AD740(v37, v39);
    sub_1DC2AD740(v48, v49);
    goto LABEL_22;
  }

  __break(1u);
  return result;
}

id _s13CDMFoundation20CDMProtobufConverterC35serializeExternalCdmPlannerResponse8response10formatTypeSSSgSo029SIRINLUEXTERNALCDM_PLANNERCdmgH0CSg_SStFZ_0(void *a1, uint64_t a2, uint64_t a3)
{
  v50 = a3;
  v51 = a2;
  v4 = sub_1DC5166EC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1DC51670C();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C478, &qword_1DC5231B8);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v45 - v10;
  v12 = sub_1DC5137FC();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1 || (v16 = [a1 data]) == 0)
  {
    if (qword_1ECC81EE0 != -1)
    {
      swift_once();
    }

    v21 = off_1ECC8F578;
    v22 = sub_1DC517BAC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7C290, &qword_1DC524690);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_1DC522F20;
    *&v52 = sub_1DC298C74(0, &qword_1ECC7C480, 0x1E69D1168);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C488, &qword_1DC5231C0);
    v24 = sub_1DC51777C();
    v26 = v25;
    *(v23 + 56) = MEMORY[0x1E69E6158];
    *(v23 + 64) = sub_1DC2C0FA4(v24, v25, v27);
    *(v23 + 32) = v24;
    *(v23 + 40) = v26;
    sub_1DC516EFC("Unable to get proto data from %@", 32, 2, &dword_1DC287000, v21, v22, v23);

    return 0;
  }

  v17 = v16;
  v45 = v5;
  v46 = v15;
  v47 = v13;
  v18 = sub_1DC510A0C();
  v20 = v19;

  v54 = 0;
  v52 = 0u;
  v53 = 0u;
  sub_1DC2A6784(v18, v20);
  sub_1DC5166FC();
  sub_1DC302048(&qword_1ECC7C490, MEMORY[0x1E69D1060]);
  v48 = v18;
  v49 = v20;
  sub_1DC51677C();
  __swift_storeEnumTagSinglePayload(v11, 0, 1, v12);
  v31 = v46;
  v30 = v47;
  (*(v47 + 32))(v46, v11, v12);
  v32 = v50;
  v33 = v51;
  v34 = v51 == 1852797802 && v50 == 0xE400000000000000;
  if (v34 || (sub_1DC51825C() & 1) != 0)
  {
    sub_1DC5166DC();
    sub_1DC5166CC();
    v28 = sub_1DC51673C();
    sub_1DC2AD740(v48, v49);
    (*(v45 + 8))(v7, v4);
LABEL_22:
    (*(v30 + 8))(v31, v12);
    return v28;
  }

  v35 = v33 == 0x343665736162 && v32 == 0xE600000000000000;
  if (!v35 && (sub_1DC51825C() & 1) == 0)
  {
    if (qword_1ECC81EE0 != -1)
    {
      swift_once();
    }

    v40 = off_1ECC8F578;
    v41 = sub_1DC517BAC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7C290, &qword_1DC524690);
    v42 = swift_allocObject();
    *(v42 + 16) = xmmword_1DC522F20;
    *(v42 + 56) = MEMORY[0x1E69E6158];
    *(v42 + 64) = sub_1DC2C0FA4(v42, v43, v44);
    *(v42 + 32) = v51;
    *(v42 + 40) = v32;

    sub_1DC516EFC("Invalid provided format type:  %@", 33, 2, &dword_1DC287000, v40, v41, v42);

    sub_1DC2AD740(v48, v49);
    (*(v30 + 8))(v31, v12);
    return 0;
  }

  result = [a1 data];
  if (result)
  {
    v36 = result;
    v37 = sub_1DC510A0C();
    v39 = v38;

    v28 = sub_1DC5109FC();
    sub_1DC2AD740(v37, v39);
    sub_1DC2AD740(v48, v49);
    goto LABEL_22;
  }

  __break(1u);
  return result;
}

void static CDMProtobufConverter.serializeObjCProto<A, B>(objcProto:formatType:swiftType:)()
{
  OUTLINED_FUNCTION_33();
  v72 = v0;
  v73 = v1;
  v3 = v2;
  v5 = v4;
  v71 = v6;
  v8 = v7;
  sub_1DC5166EC();
  OUTLINED_FUNCTION_0();
  v69 = v10;
  v70 = v9;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_2_1();
  v68 = v11;
  OUTLINED_FUNCTION_12();
  v12 = sub_1DC51670C();
  v13 = OUTLINED_FUNCTION_10(v12);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_5_8();
  sub_1DC517D8C();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_14_0();
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v63 - v16;
  v18 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_1();
  v21 = v20 - v19;
  if (!v8 || (v22 = [v8 data]) == 0)
  {
    if (qword_1ECC81EE0 != -1)
    {
      OUTLINED_FUNCTION_0_6();
      swift_once();
    }

    sub_1DC517BAC();
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7C290, &qword_1DC524690);
    v28 = OUTLINED_FUNCTION_124_0(v27);
    *(v28 + 16) = xmmword_1DC522F20;
    v74 = v5;
    MetatypeMetadata = swift_getMetatypeMetadata();
    v30 = OUTLINED_FUNCTION_168_0(MetatypeMetadata);
    v32 = v31;
    *(v28 + 56) = MEMORY[0x1E69E6158];
    *(v28 + 64) = sub_1DC2C0FA4(v30, v31, v33);
    *(v28 + 32) = v30;
    *(v28 + 40) = v32;
    OUTLINED_FUNCTION_61_2();
    sub_1DC516EFC(v34);

    goto LABEL_7;
  }

  v23 = v22;
  v64 = v21;
  v65 = v18;
  v24 = sub_1DC510A0C();
  v26 = v25;

  OUTLINED_FUNCTION_120();
  sub_1DC2A6784(v24, v26);
  sub_1DC5166FC();
  v66 = v24;
  v67 = v26;
  OUTLINED_FUNCTION_118_0();
  sub_1DC51677C();
  OUTLINED_FUNCTION_61();
  __swift_storeEnumTagSinglePayload(v35, v36, v37, v3);
  v38 = v64;
  OUTLINED_FUNCTION_97_0();
  v39(v38, v17, v3);
  v41 = v71;
  v40 = v72;
  v42 = v71 == 1852797802 && v72 == 0xE400000000000000;
  if (v42 || (OUTLINED_FUNCTION_87(), (sub_1DC51825C() & 1) != 0))
  {
    v43 = v68;
    sub_1DC5166DC();
    sub_1DC5166CC();
    sub_1DC51673C();
    sub_1DC2AD740(v66, v67);
    (*(v69 + 8))(v43, v70);
LABEL_21:
    v52 = OUTLINED_FUNCTION_147_0();
    v53(v52);
LABEL_7:
    OUTLINED_FUNCTION_34();
    return;
  }

  v46 = v41 == 0x343665736162 && v40 == 0xE600000000000000;
  if (!v46 && (sub_1DC51825C() & 1) == 0)
  {
    if (qword_1ECC81EE0 != -1)
    {
      OUTLINED_FUNCTION_0_6();
      swift_once();
    }

    sub_1DC517BAC();
    v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7C290, &qword_1DC524690);
    v55 = OUTLINED_FUNCTION_124_0(v54);
    *(v55 + 16) = xmmword_1DC522F20;
    *(v55 + 56) = MEMORY[0x1E69E6158];
    *(v55 + 64) = sub_1DC2C0FA4(v55, v56, v57);
    *(v55 + 32) = v41;
    *(v55 + 40) = v40;

    OUTLINED_FUNCTION_71_0();
    OUTLINED_FUNCTION_169_0(v58, v59, v60, v61, v62);

    sub_1DC2AD740(v66, v67);
    v44 = OUTLINED_FUNCTION_147_0();
    v45(v44);
    goto LABEL_7;
  }

  v47 = [v8 data];
  if (v47)
  {
    v48 = v47;
    v49 = sub_1DC510A0C();
    v51 = v50;

    sub_1DC5109FC();
    sub_1DC2AD740(v49, v51);
    sub_1DC2AD740(v66, v67);
    goto LABEL_21;
  }

  __break(1u);
}

void static CDMProtobufConverter.serializePreprocessingWrapper(wrapper:formatType:)()
{
  OUTLINED_FUNCTION_33();
  v34 = v3;
  v5 = v4;
  OUTLINED_FUNCTION_98();
  sub_1DC5166EC();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_18();
  v7 = sub_1DC51670C();
  v8 = OUTLINED_FUNCTION_10(v7);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_6_6();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C330, &qword_1DC5230C0);
  OUTLINED_FUNCTION_10(v9);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_122_0();
  v11 = sub_1DC511E2C();
  OUTLINED_FUNCTION_0();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_4_6();
  if (!v0 || (sub_1DC2C22C4(v0), OUTLINED_FUNCTION_146(), !v22 & v15))
  {
    if (qword_1ECC81EE0 != -1)
    {
      OUTLINED_FUNCTION_0_6();
      swift_once();
    }

    sub_1DC517BAC();
    OUTLINED_FUNCTION_61_2();
    sub_1DC516EFC(v16);
  }

  else
  {
    OUTLINED_FUNCTION_120();
    sub_1DC2A6784(v17, v18);
    sub_1DC5166FC();
    sub_1DC302048(&qword_1ECC7C338, MEMORY[0x1E69D0BC8]);
    OUTLINED_FUNCTION_118_0();
    sub_1DC51677C();
    OUTLINED_FUNCTION_61();
    __swift_storeEnumTagSinglePayload(v19, v20, v21, v11);
    (*(v13 + 32))(v1, v2, v11);
    v22 = v5 == 1852797802 && v34 == 0xE400000000000000;
    if (v22 || (OUTLINED_FUNCTION_87(), (sub_1DC51825C() & 1) != 0))
    {
      sub_1DC5166DC();
      sub_1DC5166CC();
      OUTLINED_FUNCTION_147_0();
      sub_1DC51673C();
      OUTLINED_FUNCTION_166_0();
      v23 = OUTLINED_FUNCTION_89();
      v24(v23);
      v25 = OUTLINED_FUNCTION_107();
      v26(v25);
    }

    else
    {
      if (qword_1ECC81EE0 != -1)
      {
        OUTLINED_FUNCTION_0_6();
        swift_once();
      }

      sub_1DC517BAC();
      v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7C290, &qword_1DC524690);
      v28 = OUTLINED_FUNCTION_124_0(v27);
      *(v28 + 16) = xmmword_1DC522F20;
      *(v28 + 56) = MEMORY[0x1E69E6158];
      *(v28 + 64) = sub_1DC2C0FA4(v28, v29, v30);
      *(v28 + 32) = v5;
      *(v28 + 40) = v34;

      OUTLINED_FUNCTION_71_0();
      sub_1DC516EFC(v31);

      OUTLINED_FUNCTION_166_0();
      v32 = OUTLINED_FUNCTION_107();
      v33(v32);
    }
  }

  OUTLINED_FUNCTION_34();
}

id sub_1DC2FB340(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t (*a5)(void *, uint64_t, uint64_t))
{
  v7 = sub_1DC51772C();
  v9 = v8;
  v10 = a3;
  a5(a3, v7, v9);
  v12 = v11;

  if (v12)
  {
    v13 = sub_1DC5176FC();
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

void static CDMProtobufConverter.siriExternalNluRequestJsonToObj(proto2Json:)()
{
  OUTLINED_FUNCTION_164();
  OUTLINED_FUNCTION_98();
  v2 = sub_1DC5166BC();
  v3 = OUTLINED_FUNCTION_10(v2);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_4_6();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7C340, &qword_1DC5230C8);
  OUTLINED_FUNCTION_10(v4);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_55_5();
  sub_1DC51373C();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_3();

  sub_1DC5166AC();
  v7 = sub_1DC302048(&qword_1EDAC8030, MEMORY[0x1E69D1020]);
  OUTLINED_FUNCTION_26_2(v7);
  if (v0)
  {

    OUTLINED_FUNCTION_36_5();
    __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
    sub_1DC28EB30(v1, &unk_1ECC7C340, &qword_1DC5230C8);
    if (qword_1ECC81EE0 != -1)
    {
      OUTLINED_FUNCTION_0_6();
      swift_once();
    }

    sub_1DC517BAC();
    OUTLINED_FUNCTION_61_2();
    sub_1DC516EFC(v12);
  }

  else
  {
    v13 = OUTLINED_FUNCTION_27_6();
    v14(v13);
    OUTLINED_FUNCTION_84();
    OUTLINED_FUNCTION_137();
    v15 = objc_allocWithZone(MEMORY[0x1E69D1150]);
    OUTLINED_FUNCTION_86_0();
    v16 = OUTLINED_FUNCTION_28_5();
    v17(v16);
  }

  OUTLINED_FUNCTION_161_0();
  OUTLINED_FUNCTION_154();
}

id sub_1DC2FB68C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v5 = sub_1DC51772C();
  v6 = a4(v5);

  return v6;
}

void static CDMProtobufConverter.siriExternalSubwordEmbeddingRequestJsonToObj(proto2Json:)()
{
  OUTLINED_FUNCTION_164();
  OUTLINED_FUNCTION_98();
  v2 = sub_1DC5166BC();
  v3 = OUTLINED_FUNCTION_10(v2);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_4_6();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C350, &qword_1DC5230D0);
  OUTLINED_FUNCTION_10(v4);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_55_5();
  sub_1DC51389C();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_3();

  sub_1DC5166AC();
  v7 = sub_1DC302048(&qword_1ECC7C358, MEMORY[0x1E69D10F0]);
  OUTLINED_FUNCTION_26_2(v7);
  if (v0)
  {

    OUTLINED_FUNCTION_36_5();
    __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
    sub_1DC28EB30(v1, &qword_1ECC7C350, &qword_1DC5230D0);
    if (qword_1ECC81EE0 != -1)
    {
      OUTLINED_FUNCTION_0_6();
      swift_once();
    }

    sub_1DC517BAC();
    OUTLINED_FUNCTION_61_2();
    sub_1DC516EFC(v12);
  }

  else
  {
    v13 = OUTLINED_FUNCTION_27_6();
    v14(v13);
    OUTLINED_FUNCTION_84();
    OUTLINED_FUNCTION_137();
    v15 = objc_allocWithZone(MEMORY[0x1E69D11E8]);
    OUTLINED_FUNCTION_86_0();
    v16 = OUTLINED_FUNCTION_28_5();
    v17(v16);
  }

  OUTLINED_FUNCTION_161_0();
  OUTLINED_FUNCTION_154();
}

void static CDMProtobufConverter.siriExternalCdmPlannerRequestJsonToObj(proto2Json:)()
{
  OUTLINED_FUNCTION_164();
  OUTLINED_FUNCTION_98();
  v2 = sub_1DC5166BC();
  v3 = OUTLINED_FUNCTION_10(v2);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_4_6();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C360, &qword_1DC5230D8);
  OUTLINED_FUNCTION_10(v4);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_55_5();
  sub_1DC5137EC();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_3();

  sub_1DC5166AC();
  v7 = sub_1DC302048(&qword_1ECC7C368, MEMORY[0x1E69D1050]);
  OUTLINED_FUNCTION_26_2(v7);
  if (v0)
  {

    OUTLINED_FUNCTION_36_5();
    __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
    sub_1DC28EB30(v1, &qword_1ECC7C360, &qword_1DC5230D8);
    if (qword_1ECC81EE0 != -1)
    {
      OUTLINED_FUNCTION_0_6();
      swift_once();
    }

    sub_1DC517BAC();
    OUTLINED_FUNCTION_61_2();
    sub_1DC516EFC(v12);
  }

  else
  {
    v13 = OUTLINED_FUNCTION_27_6();
    v14(v13);
    OUTLINED_FUNCTION_84();
    OUTLINED_FUNCTION_137();
    v15 = objc_allocWithZone(MEMORY[0x1E69D1160]);
    OUTLINED_FUNCTION_86_0();
    v16 = OUTLINED_FUNCTION_28_5();
    v17(v16);
  }

  OUTLINED_FUNCTION_161_0();
  OUTLINED_FUNCTION_154();
}

void static CDMProtobufConverter.nluResponseFromSIRINLUEXTERNALCDMNluResponse(response:formatType:)()
{
  OUTLINED_FUNCTION_33();
  v35 = v4;
  v36 = v3;
  v6 = v5;
  sub_1DC5166EC();
  OUTLINED_FUNCTION_0();
  v33 = v8;
  v34 = v7;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_18();
  v9 = sub_1DC51670C();
  v10 = OUTLINED_FUNCTION_10(v9);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_6_6();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C370, &qword_1DC5230E0);
  OUTLINED_FUNCTION_10(v11);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_122_0();
  v13 = sub_1DC5137CC();
  OUTLINED_FUNCTION_0();
  v15 = v14;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_3();
  sub_1DC2C22C4(v6);
  OUTLINED_FUNCTION_146();
  if (!v22 & v17)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_120();
    sub_1DC5166FC();
    sub_1DC302048(&qword_1EDAC8020, MEMORY[0x1E69D1030]);
    OUTLINED_FUNCTION_118_0();
    sub_1DC51677C();
    OUTLINED_FUNCTION_61();
    __swift_storeEnumTagSinglePayload(v18, v19, v20, v13);
    v21 = v15;
    (*(v15 + 32))(v0, v2, v13);
    v22 = v36 == 1852797802 && v35 == 0xE400000000000000;
    if (v22 || (OUTLINED_FUNCTION_87(), (sub_1DC51825C() & 1) != 0))
    {
      sub_1DC5166DC();
      sub_1DC5166CC();
      OUTLINED_FUNCTION_147_0();
      sub_1DC51673C();
      OUTLINED_FUNCTION_163();
      (*(v33 + 8))(v1, v34);
LABEL_16:
      (*(v21 + 8))(v0, v13);
LABEL_8:
      OUTLINED_FUNCTION_34();
      return;
    }

    v23 = v36 == 0x343665736162 && v35 == 0xE600000000000000;
    if (!v23 && (sub_1DC51825C() & 1) == 0)
    {
      if (qword_1ECC81EE0 != -1)
      {
        OUTLINED_FUNCTION_0_6();
        swift_once();
      }

      sub_1DC517BAC();
      v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7C290, &qword_1DC524690);
      v29 = OUTLINED_FUNCTION_124_0(v28);
      *(v29 + 16) = xmmword_1DC522F20;
      *(v29 + 56) = MEMORY[0x1E69E6158];
      *(v29 + 64) = sub_1DC2C0FA4(v29, v30, v31);
      *(v29 + 32) = v36;
      *(v29 + 40) = v35;

      OUTLINED_FUNCTION_71_0();
      sub_1DC516EFC(v32);

      (*(v21 + 8))(v0, v13);
      goto LABEL_8;
    }

    sub_1DC2C22C4(v6);
    OUTLINED_FUNCTION_146();
    if (!(!v22 & v17))
    {
      v26 = v24;
      v27 = v25;
      sub_1DC5109FC();
      OUTLINED_FUNCTION_163();
      sub_1DC301FE0(v26, v27);
      goto LABEL_16;
    }
  }

  __break(1u);
}

id sub_1DC2FC130(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t (*a5)(void))
{
  sub_1DC51772C();
  v7 = a3;
  a5();
  v9 = v8;

  if (v9)
  {
    v10 = sub_1DC5176FC();
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

void static CDMProtobufConverter.siriInternalMatchingSpanJsonToObj(proto2Json:)()
{
  OUTLINED_FUNCTION_164();
  OUTLINED_FUNCTION_98();
  v2 = sub_1DC5166BC();
  v3 = OUTLINED_FUNCTION_10(v2);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_4_6();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C378, &unk_1DC5230E8);
  OUTLINED_FUNCTION_10(v4);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_55_5();
  sub_1DC5113AC();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_3();

  sub_1DC5166AC();
  v7 = sub_1DC302048(&qword_1ECC7C380, MEMORY[0x1E69D0A20]);
  OUTLINED_FUNCTION_26_2(v7);
  if (v0)
  {

    OUTLINED_FUNCTION_36_5();
    __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
    sub_1DC28EB30(v1, &qword_1ECC7C378, &unk_1DC5230E8);
    if (qword_1ECC81EE0 != -1)
    {
      OUTLINED_FUNCTION_0_6();
      swift_once();
    }

    sub_1DC517BAC();
    OUTLINED_FUNCTION_61_2();
    sub_1DC516EFC(v12);
  }

  else
  {
    v13 = OUTLINED_FUNCTION_27_6();
    v14(v13);
    OUTLINED_FUNCTION_84();
    OUTLINED_FUNCTION_137();
    v15 = objc_allocWithZone(MEMORY[0x1E69D1308]);
    OUTLINED_FUNCTION_86_0();
    v16 = OUTLINED_FUNCTION_28_5();
    v17(v16);
  }

  OUTLINED_FUNCTION_161_0();
  OUTLINED_FUNCTION_154();
}

id CDMProtobufConverter.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CDMProtobufConverter.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CDMProtobufConverter();
  return objc_msgSendSuper2(&v2, sel_init);
}

id CDMProtobufConverter.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CDMProtobufConverter();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1DC2FC53C()
{
  OUTLINED_FUNCTION_102_0();
  OUTLINED_FUNCTION_38_2();
  v149 = sub_1DC513D3C();
  OUTLINED_FUNCTION_0();
  v148 = v2;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_14(v4);
  v173 = sub_1DC51652C();
  OUTLINED_FUNCTION_0();
  v151 = v5;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_2_1();
  v172 = v7;
  OUTLINED_FUNCTION_12();
  v171 = sub_1DC513A8C();
  OUTLINED_FUNCTION_0();
  v150 = v8;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_14(v10);
  v152 = sub_1DC513A0C();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_14(v13);
  v168 = sub_1DC51413C();
  OUTLINED_FUNCTION_0();
  v143 = v14;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_14(v16);
  v156 = sub_1DC5141FC();
  OUTLINED_FUNCTION_0();
  v157 = v17;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_14(v19);
  v154 = sub_1DC5144EC();
  OUTLINED_FUNCTION_0();
  v146 = v20;
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_14(v22);
  v23 = sub_1DC510B6C();
  v24 = OUTLINED_FUNCTION_10(v23);
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_14(v25);
  v165 = sub_1DC513A3C();
  OUTLINED_FUNCTION_0();
  v27 = v26;
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_14(v29);
  v174 = sub_1DC51446C();
  OUTLINED_FUNCTION_0();
  v31 = v30;
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_9_1();
  v33 = sub_1DC513E8C();
  OUTLINED_FUNCTION_0();
  v35 = v34;
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_1();
  v39 = v38 - v37;
  v40 = MEMORY[0x1E69E7CC0];
  v191 = MEMORY[0x1E69E7CC0];
  v164 = *(sub_1DC513B3C() + 16);
  if (v164)
  {
    v41 = 0;
    OUTLINED_FUNCTION_24();
    v159 = v42 + v43;
    v163 = v31;
    v158 = v33;
    v162 = v35;
    v161 = v39;
    v160 = v42;
    while (v41 < *(v42 + 16))
    {
      v169 = v41;
      (*(v35 + 16))(v39, v159 + *(v35 + 72) * v41, v33);
      v190 = v40;
      v44 = *(sub_1DC513ACC() + 16);
      if (v44)
      {
        OUTLINED_FUNCTION_24();
        v47 = v45 + v46;
        v175 = *(v31 + 16);
        v176 = *(v31 + 72);
        do
        {
          v175(v0, v47, v174);
          v48 = sub_1DC5139AC();
          v186 = v49;
          v188 = v48;
          v50 = sub_1DC51399C();
          v181 = v51;
          v183 = v50;
          v52 = sub_1DC51441C();
          v178 = v53;
          v180 = v52;
          v177 = sub_1DC5143DC();
          v54 = sub_1DC51442C();
          v55 = sub_1DC51443C();
          sub_1DC5143FC();
          v57 = v56;
          v58 = sub_1DC5143BC();
          v59 = sub_1DC51445C();
          v1 = sub_1DC51444C();
          v60 = sub_1DC51440C();
          v61 = OUTLINED_FUNCTION_85_0();
          v62(v61);
          v63 = objc_allocWithZone(MEMORY[0x1E69D24B8]);
          DWORD1(v142) = v58;
          *(&v142 + 1) = __PAIR64__(v1, v59);
          LOBYTE(v142) = v55 & 1;
          sub_1DC301570(v188, v186, v183, v181, v180, v178, v177 & 1, v54 & 1, v57, v142, v60);
          MEMORY[0x1E12962A0]();
          v64 = *((v190 & 0xFFFFFFFFFFFFFF8) + 0x18);
          if (*((v190 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v64 >> 1)
          {
            OUTLINED_FUNCTION_26(v64);
            sub_1DC517A3C();
          }

          OUTLINED_FUNCTION_73();
          sub_1DC517A5C();
          v47 += v176;
          --v44;
        }

        while (v44);
        v65 = v190;

        v40 = MEMORY[0x1E69E7CC0];
        v33 = v158;
      }

      else
      {

        v65 = v40;
      }

      v39 = v161;
      v66 = sub_1DC5139AC();
      v68 = v67;
      sub_1DC513E4C();
      v70 = v69;
      OUTLINED_FUNCTION_76_1();
      sub_1DC513E5C();
      v27 = v166;
      OUTLINED_FUNCTION_128_1();
      sub_1DC513A1C();
      OUTLINED_FUNCTION_37();
      v71(v1, v165);
      v72 = objc_allocWithZone(MEMORY[0x1E69D24B0]);
      sub_1DC301670(v66, v68, v65, v166, v70);
      MEMORY[0x1E12962A0]();
      v73 = *((v191 & 0xFFFFFFFFFFFFFF8) + 0x18);
      if (*((v191 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v73 >> 1)
      {
        OUTLINED_FUNCTION_26(v73);
        sub_1DC517A3C();
      }

      v41 = v169 + 1;
      OUTLINED_FUNCTION_73();
      sub_1DC517A5C();
      OUTLINED_FUNCTION_37();
      v74(v161, v33);
      v31 = v163;
      v35 = v162;
      v42 = v160;
      if (v169 + 1 == v164)
      {
        v180 = v191;

        goto LABEL_16;
      }
    }

    __break(1u);
    goto LABEL_40;
  }

  v180 = MEMORY[0x1E69E7CC0];
LABEL_16:
  v190 = v40;
  OUTLINED_FUNCTION_20_3();
  sub_1DC513B9C();
  OUTLINED_FUNCTION_144();
  sub_1DC5144DC();
  v75 = (v146 + 8);
  v27 = *(v146 + 8);
  v27(v0, v154);
  sub_1DC2FEE38(v155, &v190, v76, v77, v78, v79, v80, v81, v143, v144, v145, v146, v147, v148, v149, v150, v151, v152, v153, v154);
  v83 = v82;
  v1 = *(v157 + 8);
  (v1)(v155, v156);
  if ((v83 & 1) == 0)
  {
    if (qword_1ECC81EE0 == -1)
    {
LABEL_18:
      v84 = off_1ECC8F578;
      sub_1DC517BAC();
      OUTLINED_FUNCTION_61_2();
      sub_1DC516EFC(v85);
      v189 = sub_1DC517B9C();
      v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7C290, &qword_1DC524690);
      v87 = OUTLINED_FUNCTION_124_0(v86);
      *(v87 + 16) = xmmword_1DC522F20;
      sub_1DC513B9C();
      sub_1DC5144DC();
      v27(v153, v154);
      OUTLINED_FUNCTION_81_0();
      sub_1DC302048(v88, v89);
      v75 = v156;
      sub_1DC5165DC();
      OUTLINED_FUNCTION_163();
      v90 = (v1)(v155, v156);
      *(v87 + 56) = MEMORY[0x1E69E6158];
      *(v87 + 64) = sub_1DC2C0FA4(v90, v91, v92);
      *(v87 + 32) = v155;
      *(v87 + 40) = v27;
      sub_1DC516EFC("SystemDialogAct description: %@", 31, 2, &dword_1DC287000, v84, v189, v87);

      goto LABEL_19;
    }

LABEL_40:
    OUTLINED_FUNCTION_0_6();
    swift_once();
    goto LABEL_18;
  }

LABEL_19:
  v93 = sub_1DC513B8C();
  v94 = *(v93 + 16);
  if (v94)
  {
    v1 = *(v143 + 16);
    OUTLINED_FUNCTION_50_5();
    v96 = v93 + v95;
    v98 = *(v97 + 56);
    v75 = v97;
    do
    {
      (v1)(v167, v96, v168);
      sub_1DC2FE82C();
      v99 = OUTLINED_FUNCTION_160();
      v101 = v100(v99);
      MEMORY[0x1E12962A0](v101);
      OUTLINED_FUNCTION_145();
      if (v103)
      {
        OUTLINED_FUNCTION_26(v102);
        sub_1DC517A3C();
      }

      OUTLINED_FUNCTION_30();
      sub_1DC517A5C();
      v96 += v98;
      --v94;
    }

    while (v94);
    v179 = v40;

    v40 = MEMORY[0x1E69E7CC0];
  }

  else
  {

    v179 = MEMORY[0x1E69E7CC0];
  }

  v104 = sub_1DC513B4C();
  v105 = *(v104 + 16);
  if (v105)
  {
    sub_1DC298C74(0, &qword_1ECC7C390, 0x1E69D25D8);
    OUTLINED_FUNCTION_50_5();
    v107 = v104 + v106;
    v182 = *(v108 + 56);
    v184 = v109;
    OUTLINED_FUNCTION_130_0();
    v111 = (v110 + 8);
    do
    {
      v184(v144, v107, v152);
      sub_1DC5139EC();
      v112 = MEMORY[0x1E1296570]();
      (*v75)(v170, v171);
      sub_1DC5139FC();
      sub_1DC51651C();
      v114 = v113;
      (*v111)(v172, v173);
      v94 = [objc_allocWithZone(MEMORY[0x1E69D2568]) initWithTask:v112 score:v114];

      MEMORY[0x1E12962A0]();
      v1 = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v115 = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x18);
      if (v1 >= v115 >> 1)
      {
        OUTLINED_FUNCTION_26(v115);
        sub_1DC517A3C();
      }

      OUTLINED_FUNCTION_41();
      sub_1DC517A5C();
      v116 = OUTLINED_FUNCTION_85_0();
      v117(v116);
      v107 += v182;
      --v105;
    }

    while (v105);
    v118 = v40;

    v40 = MEMORY[0x1E69E7CC0];
  }

  else
  {

    v118 = MEMORY[0x1E69E7CC0];
  }

  v119 = sub_1DC513B6C();
  v120 = *(v119 + 16);
  if (v120)
  {
    sub_1DC298C74(0, &qword_1ECC7C390, 0x1E69D25D8);
    OUTLINED_FUNCTION_50_5();
    v94 = (v119 + v121);
    v185 = *(v122 + 56);
    v187 = v123;
    OUTLINED_FUNCTION_130_0();
    v125 = (v124 + 8);
    v127 = (v126 - 8);
    do
    {
      v187(v145, v94, v152);
      OUTLINED_FUNCTION_43_4();
      sub_1DC5139EC();
      v128 = MEMORY[0x1E1296570](v1);
      (*v118)(v1, v171);
      sub_1DC5139FC();
      sub_1DC51651C();
      v130 = v129;
      (*v125)(v172, v173);
      v1 = [objc_allocWithZone(MEMORY[0x1E69D2568]) initWithTask:v128 score:v130];

      MEMORY[0x1E12962A0]();
      v131 = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x18);
      if (*((v40 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v131 >> 1)
      {
        OUTLINED_FUNCTION_26(v131);
        sub_1DC517A3C();
      }

      OUTLINED_FUNCTION_89();
      sub_1DC517A5C();
      (*v127)(v145, v152);
      v94 += v185;
      --v120;
    }

    while (v120);
  }

  sub_1DC513B5C();
  sub_1DC300A30();
  v133 = v132;
  (*(v148 + 8))(v147, v149);
  v134 = v133;
  sub_1DC513BAC();
  OUTLINED_FUNCTION_151_0();
  v135 = sub_1DC513BBC();
  v136 = sub_1DC513B7C();
  v137 = objc_allocWithZone(MEMORY[0x1E69D2578]);
  v138 = sub_1DC30176C(v180, v179, v134, v94, v1, v135 & 1, v136);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C3F8, &qword_1DC5230F8);
  OUTLINED_FUNCTION_56_7();
  v139 = sub_1DC517A0C();

  [v138 setSystemDialogActs_];

  sub_1DC298C74(0, &qword_1ECC7C400, 0x1E69D2568);
  v140 = sub_1DC517A0C();

  [v138 setActiveTasks_];

  v141 = sub_1DC517A0C();

  [v138 setExecutedTasks_];

  OUTLINED_FUNCTION_101();
}

void sub_1DC2FD51C()
{
  OUTLINED_FUNCTION_102_0();
  OUTLINED_FUNCTION_38_2();
  v201 = sub_1DC5140BC();
  OUTLINED_FUNCTION_0();
  v200 = v1;
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_14(v3);
  sub_1DC51395C();
  OUTLINED_FUNCTION_0();
  v219 = v4;
  v220 = v5;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_14(v6);
  v222 = sub_1DC5139DC();
  OUTLINED_FUNCTION_0();
  v226 = v7;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_2_1();
  v221 = v9;
  OUTLINED_FUNCTION_12();
  v204 = sub_1DC51655C();
  OUTLINED_FUNCTION_0();
  v203 = v10;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_14(v12);
  v207 = sub_1DC5145CC();
  OUTLINED_FUNCTION_0();
  v206 = v13;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_14(v15);
  v210 = sub_1DC51435C();
  OUTLINED_FUNCTION_0();
  v209 = v16;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_14(v18);
  v213 = sub_1DC5144CC();
  OUTLINED_FUNCTION_0();
  v212 = v19;
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_14(v21);
  v216 = sub_1DC5142AC();
  OUTLINED_FUNCTION_0();
  v215 = v22;
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_14(v24);
  sub_1DC5143AC();
  OUTLINED_FUNCTION_0();
  v224 = v26;
  v225 = v25;
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_2_1();
  v223 = v27;
  OUTLINED_FUNCTION_12();
  sub_1DC513F0C();
  OUTLINED_FUNCTION_0();
  v227 = v29;
  v228 = v28;
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_18();
  v30 = sub_1DC513E2C();
  OUTLINED_FUNCTION_0();
  v229 = v31;
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_1();
  v35 = v34 - v33;
  v235 = sub_1DC513A8C();
  OUTLINED_FUNCTION_0();
  v233 = v36;
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_2_1();
  v234 = v38;
  OUTLINED_FUNCTION_12();
  v39 = sub_1DC510B6C();
  v40 = OUTLINED_FUNCTION_10(v39);
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_2_1();
  v232 = v41;
  OUTLINED_FUNCTION_12();
  sub_1DC513A3C();
  OUTLINED_FUNCTION_0();
  v230 = v42;
  v231 = v43;
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_1();
  v44 = sub_1DC513DCC();
  OUTLINED_FUNCTION_0();
  v46 = v45;
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_1();
  v50 = (v49 - v48);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C408, &qword_1DC523100);
  v52 = OUTLINED_FUNCTION_10(v51);
  MEMORY[0x1EEE9AC00](v52);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_123();
  MEMORY[0x1EEE9AC00](v53);
  v55 = &v199 - v54;
  sub_1DC513F1C();
  v56 = sub_1DC513F2C();
  OUTLINED_FUNCTION_39(v55, 1, v56);
  if (v57)
  {
    goto LABEL_3;
  }

  v217 = v55;
  v59 = OUTLINED_FUNCTION_159();
  sub_1DC28F358(v59, v60, v61, v62);
  v55 = *(v56 - 8);
  v63 = OUTLINED_FUNCTION_58_3();
  v65 = v64(v63);
  if (v65 == *MEMORY[0x1E69D15E0])
  {
    v66 = OUTLINED_FUNCTION_33_5();
    v67(v66);
    (*(v46 + 32))(v50, v0, v44);
    sub_1DC513D7C();
    sub_1DC513A1C();
    v68 = OUTLINED_FUNCTION_42_6();
    v69(v68);
    sub_1DC298C74(0, &qword_1ECC7C390, 0x1E69D25D8);
    v55 = v234;
    OUTLINED_FUNCTION_144();
    sub_1DC513D9C();
    MEMORY[0x1E1296570](v55);
    v70 = OUTLINED_FUNCTION_158();
    v71(v70);
    v72 = objc_allocWithZone(MEMORY[0x1E69D2580]);
    v73 = OUTLINED_FUNCTION_58_3();
    sub_1DC301238(v73, v74, v75);
    v76 = OUTLINED_FUNCTION_85_0();
    v77(v76);
LABEL_19:
    OUTLINED_FUNCTION_109_0();
LABEL_20:
    sub_1DC28EB30(v55, &qword_1ECC7C408, &qword_1DC523100);
    OUTLINED_FUNCTION_101();
    return;
  }

  if (v65 == *MEMORY[0x1E69D15E8])
  {
    v78 = OUTLINED_FUNCTION_33_5();
    v79(v78);
    v80 = v229;
    v81 = OUTLINED_FUNCTION_41();
    v82(v81);
    sub_1DC513DDC();
    sub_1DC513A1C();
    v83 = OUTLINED_FUNCTION_42_6();
    v84(v83);
    sub_1DC298C74(0, &qword_1ECC7C390, 0x1E69D25D8);
    v55 = v234;
    sub_1DC513DFC();
    MEMORY[0x1E1296570](v55);
    v85 = OUTLINED_FUNCTION_158();
    v86(v85);
    v87 = objc_allocWithZone(MEMORY[0x1E69D25A0]);
    v88 = OUTLINED_FUNCTION_107();
    sub_1DC301238(v88, v89, v90);
    (*(v80 + 8))(v35, v30);
    goto LABEL_19;
  }

  if (v65 == *MEMORY[0x1E69D15F0])
  {
    v91 = OUTLINED_FUNCTION_33_5();
    v92(v91);
    OUTLINED_FUNCTION_97_0();
    v93 = OUTLINED_FUNCTION_56();
    v94(v93);
    OUTLINED_FUNCTION_134();
    v95 = sub_1DC513EBC();
    OUTLINED_FUNCTION_104(v95);
    v96 = OUTLINED_FUNCTION_42_6();
    v97(v96);
    sub_1DC298C74(0, &qword_1ECC7C390, 0x1E69D25D8);
    OUTLINED_FUNCTION_30_4();
    sub_1DC513EDC();
    OUTLINED_FUNCTION_139();
    v98 = OUTLINED_FUNCTION_19_7();
    v99(v98);
    v100 = MEMORY[0x1E69D2590];
LABEL_12:
    v101 = objc_allocWithZone(v100);
    v102 = &selRef_initWithTaskId_reference_;
LABEL_18:
    sub_1DC301238(v55, v50, v102);
    v123 = OUTLINED_FUNCTION_56();
    v124(v123);
    goto LABEL_19;
  }

  if (v65 == *MEMORY[0x1E69D15D0])
  {
    v103 = OUTLINED_FUNCTION_33_5();
    v104(v103);
    OUTLINED_FUNCTION_97_0();
    v105 = OUTLINED_FUNCTION_56();
    v106(v105);
    OUTLINED_FUNCTION_134();
    v107 = sub_1DC51436C();
    OUTLINED_FUNCTION_104(v107);
    v108 = OUTLINED_FUNCTION_42_6();
    v109(v108);
    sub_1DC298C74(0, &qword_1ECC7C390, 0x1E69D25D8);
    OUTLINED_FUNCTION_30_4();
    sub_1DC51438C();
    OUTLINED_FUNCTION_139();
    v110 = OUTLINED_FUNCTION_19_7();
    v111(v110);
    v112 = MEMORY[0x1E69D25C0];
LABEL_17:
    v122 = objc_allocWithZone(v112);
    v102 = &selRef_initWithSystemDialogActId_reference_;
    goto LABEL_18;
  }

  if (v65 == *MEMORY[0x1E69D15B8])
  {
    v113 = OUTLINED_FUNCTION_33_5();
    v114(v113);
    OUTLINED_FUNCTION_76_1();
    v115 = OUTLINED_FUNCTION_56();
    v116(v115);
    OUTLINED_FUNCTION_134();
    v117 = sub_1DC51426C();
    OUTLINED_FUNCTION_104(v117);
    v118 = OUTLINED_FUNCTION_42_6();
    v119(v118);
    sub_1DC298C74(0, &qword_1ECC7C390, 0x1E69D25D8);
    OUTLINED_FUNCTION_30_4();
    sub_1DC51428C();
    OUTLINED_FUNCTION_139();
    v120 = OUTLINED_FUNCTION_19_7();
    v121(v120);
    v112 = MEMORY[0x1E69D2588];
    goto LABEL_17;
  }

  if (v65 == *MEMORY[0x1E69D15D8])
  {
    v125 = OUTLINED_FUNCTION_33_5();
    v126(v125);
    OUTLINED_FUNCTION_76_1();
    v127 = OUTLINED_FUNCTION_56();
    v128(v127);
    OUTLINED_FUNCTION_134();
    v129 = sub_1DC51447C();
    OUTLINED_FUNCTION_104(v129);
    v130 = OUTLINED_FUNCTION_42_6();
    v131(v130);
    sub_1DC298C74(0, &qword_1ECC7C390, 0x1E69D25D8);
    OUTLINED_FUNCTION_30_4();
    sub_1DC51449C();
    OUTLINED_FUNCTION_139();
    v132 = OUTLINED_FUNCTION_19_7();
    v133(v132);
    v100 = MEMORY[0x1E69D25B8];
    goto LABEL_12;
  }

  if (v65 == *MEMORY[0x1E69D15C0])
  {
    v134 = OUTLINED_FUNCTION_33_5();
    v135(v134);
    OUTLINED_FUNCTION_76_1();
    v136 = OUTLINED_FUNCTION_56();
    v137(v136);
    OUTLINED_FUNCTION_134();
    v138 = sub_1DC51430C();
    OUTLINED_FUNCTION_104(v138);
    v139 = OUTLINED_FUNCTION_42_6();
    v140(v139);
    sub_1DC298C74(0, &qword_1ECC7C390, 0x1E69D25D8);
    OUTLINED_FUNCTION_30_4();
    sub_1DC51432C();
    OUTLINED_FUNCTION_139();
    v141 = OUTLINED_FUNCTION_19_7();
    v142(v141);
    v100 = MEMORY[0x1E69D25B0];
    goto LABEL_12;
  }

  if (v65 != *MEMORY[0x1E69D15F8])
  {
    if (v65 == *MEMORY[0x1E69D15C8])
    {
      v186 = OUTLINED_FUNCTION_33_5();
      v187(v186);
      OUTLINED_FUNCTION_76_1();
      v188 = v199;
      v189 = OUTLINED_FUNCTION_56();
      v190 = v201;
      v191(v189);
      sub_1DC298C74(0, &qword_1ECC7C390, 0x1E69D25D8);
      OUTLINED_FUNCTION_30_4();
      sub_1DC51408C();
      OUTLINED_FUNCTION_139();
      v192 = OUTLINED_FUNCTION_19_7();
      v193(v192);
      if (sub_1DC517CBC())
      {
        v194 = sub_1DC51469C();
        sub_1DC301F18(v194, v195, v50);
      }

      else
      {
        sub_1DC301F18(0xD00000000000001CLL, 0x80000001DC53DF90, v50);
      }

      OUTLINED_FUNCTION_109_0();
      [objc_allocWithZone(MEMORY[0x1E69D25A8]) initWithTask_];

      (*(v35 + 8))(v188, v190);
      goto LABEL_20;
    }

    v55 += 8;
    v196 = OUTLINED_FUNCTION_58_3();
    v197(v196);
    OUTLINED_FUNCTION_109_0();
LABEL_3:
    if (qword_1ECC81EE0 != -1)
    {
      OUTLINED_FUNCTION_0_6();
      swift_once();
    }

    sub_1DC517BAC();
    OUTLINED_FUNCTION_61_2();
    sub_1DC516EFC(v58);
    goto LABEL_20;
  }

  v143 = OUTLINED_FUNCTION_33_5();
  v144(v143);
  v145 = v205;
  (*(v206 + 32))(v205, v0, v207);
  v146 = sub_1DC51457C();
  if ((v146 & 0x80000000) == 0)
  {
    v147 = v146;
    OUTLINED_FUNCTION_20_3();
    sub_1DC5145AC();
    v148 = sub_1DC51653C();
    v150 = v149;
    v151 = OUTLINED_FUNCTION_125();
    v152(v151, v204);
    v204 = sub_1DC51418C();
    v203 = v153;
    v154 = sub_1DC513ACC();
    v155 = *(v154 + 16);
    OUTLINED_FUNCTION_109_0();
    v157 = v221;
    v156 = v222;
    if (!v155)
    {

      v185 = MEMORY[0x1E69E7CC0];
LABEL_42:
      v198 = objc_allocWithZone(MEMORY[0x1E69D24C0]);
      sub_1DC300F44(v147, v148, v150, v204, v203, v185);
      (*(v206 + 8))(v145, v207);
      goto LABEL_20;
    }

    v200 = v150;
    v201 = v148;
    v202 = v147;
    v237 = MEMORY[0x1E69E7CC0];
    sub_1DC517FBC();
    v215 = sub_1DC298C74(0, &qword_1ECC7C390, 0x1E69D25D8);
    v158 = 0;
    OUTLINED_FUNCTION_24();
    v214 = v154 + v159;
    v213 = v160 + 16;
    v212 = v233 + 8;
    v211 = v160 + 8;
    v161 = v155;
    v210 = v154;
    v209 = v155;
    v208 = v220 + 16;
    while (v158 < *(v154 + 16))
    {
      v162 = *(v226 + 72);
      v231 = v158;
      (*(v226 + 16))(v157, v214 + v162 * v158, v156);
      v163 = sub_1DC5139AC();
      v230 = v164;
      v165 = sub_1DC51399C();
      v228 = v166;
      v229 = v165;
      LODWORD(v227) = sub_1DC51398C();
      LODWORD(v225) = sub_1DC51397C();
      v167 = v234;
      sub_1DC5139CC();
      v224 = MEMORY[0x1E1296570](v167);
      OUTLINED_FUNCTION_37();
      v168(v167, v235);
      sub_1DC5139BC();
      v170 = v169;
      v171 = sub_1DC51396C();
      v172 = *(v171 + 16);
      if (v172)
      {
        v223 = v163;
        v236 = MEMORY[0x1E69E7CC0];
        sub_1DC517FBC();
        OUTLINED_FUNCTION_24();
        v216 = v171;
        v174 = v171 + v173;
        v176 = *(v175 + 16);
        v232 = *(v175 + 72);
        v233 = v176;
        v177 = v219;
        v178 = v218;
        do
        {
          (v233)(v178, v174, v177);
          [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
          v179 = OUTLINED_FUNCTION_16();
          v180(v179);
          sub_1DC517F9C();
          v55 = *(v236 + 16);
          sub_1DC517FCC();
          sub_1DC517FDC();
          sub_1DC517FAC();
          v174 += v232;
          --v172;
        }

        while (v172);

        v181 = v236;
        OUTLINED_FUNCTION_109_0();
        v157 = v221;
        v156 = v222;
        v154 = v210;
        v161 = v209;
        v163 = v223;
      }

      else
      {

        v181 = MEMORY[0x1E69E7CC0];
      }

      v158 = v231 + 1;
      v182 = objc_allocWithZone(MEMORY[0x1E69D2530]);
      sub_1DC301138(v163, v230, v229, v228, v227, v225, v224, v181, v170);
      OUTLINED_FUNCTION_37();
      v183 = OUTLINED_FUNCTION_16();
      v184(v183);
      sub_1DC517F9C();
      sub_1DC517FCC();
      OUTLINED_FUNCTION_36();
      sub_1DC517FDC();
      sub_1DC517FAC();
      if (v158 == v161)
      {

        v185 = v237;
        v145 = v205;
        v147 = v202;
        v148 = v201;
        v150 = v200;
        goto LABEL_42;
      }
    }

    __break(1u);
  }

  __break(1u);
}

id sub_1DC2FE7B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v5 = sub_1DC5176FC();

  v6 = [v4 initWithGroupId:v5 seq:a3];

  return v6;
}

void sub_1DC2FE82C()
{
  OUTLINED_FUNCTION_102_0();
  OUTLINED_FUNCTION_98();
  v70 = sub_1DC513D6C();
  OUTLINED_FUNCTION_0();
  v73 = v3;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_2_1();
  v69 = v5;
  OUTLINED_FUNCTION_12();
  sub_1DC5142DC();
  OUTLINED_FUNCTION_0();
  v65 = v7;
  v67 = v6;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_2_1();
  v63 = v8;
  OUTLINED_FUNCTION_12();
  sub_1DC51655C();
  OUTLINED_FUNCTION_0();
  v74 = v10;
  v75 = v9;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_23_1();
  v72 = v12;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_123();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_153_1();
  v76 = sub_1DC51652C();
  OUTLINED_FUNCTION_0();
  v16 = v15;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_18();
  v18 = sub_1DC513A8C();
  OUTLINED_FUNCTION_0();
  v20 = v19;
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_1();
  v24 = v23 - v22;
  sub_1DC298C74(0, &qword_1ECC7C390, 0x1E69D25D8);
  sub_1DC51410C();
  MEMORY[0x1E1296570](v24);
  (*(v20 + 8))(v24, v18);
  sub_1DC5140FC();
  sub_1DC51651C();
  v26 = v25;
  (*(v16 + 8))(v2, v76);
  sub_1DC51412C();
  v27 = v0;
  v28 = sub_1DC51653C();
  v30 = v29;
  v31 = *(v74 + 8);
  v31(v27, v75);
  sub_1DC5140EC();
  v32 = v1;
  v33 = sub_1DC51653C();
  v35 = v34;
  v71 = v31;
  v31(v32, v75);
  v36 = 0;
  if (sub_1DC5140CC())
  {
    sub_1DC51411C();
    sub_1DC298C74(0, &qword_1ECC7C410, 0x1E69D24F0);
    sub_1DC5142CC();
    v37 = sub_1DC51653C();
    v38 = v35;
    v39 = v33;
    v41 = v40;
    v31(v72, v75);
    v42 = sub_1DC5142BC();
    v43 = v41;
    v33 = v39;
    v35 = v38;
    v36 = sub_1DC2FE7B0(v37, v43, v42);
    (*(v65 + 8))(v63, v67);
  }

  v44 = *(sub_1DC513A9C() + 16);

  if (v44)
  {
    v45 = sub_1DC513A9C();
    v46 = *(v45 + 16);
    if (v46)
    {
      v61 = v36;
      v62 = v33;
      v78 = MEMORY[0x1E69E7CC0];
      sub_1DC517FBC();
      v68 = *(v73 + 16);
      OUTLINED_FUNCTION_50_5();
      v48 = v45 + v47;
      v64 = (v49 - 8);
      v66 = *(v49 + 56);
      v50 = v70;
      do
      {
        v68(v69, v48, v50);
        sub_1DC513D4C();
        v77 = sub_1DC51653C();
        v52 = v51;
        v71(v72, v75);
        OUTLINED_FUNCTION_128_1();
        sub_1DC513D5C();
        v53 = sub_1DC51653C();
        v55 = v54;
        v56 = OUTLINED_FUNCTION_16();
        (v71)(v56);
        v57 = objc_allocWithZone(MEMORY[0x1E69D24E8]);
        v58 = v52;
        v50 = v70;
        sub_1DC301880(v77, v58, v53, v55, &selRef_initWithKey_value_);
        (*v64)(v69, v70);
        sub_1DC517F9C();
        sub_1DC517FCC();
        sub_1DC517FDC();
        sub_1DC517FAC();
        v48 += v66;
        --v46;
      }

      while (v46);

      v44 = v78;
      v33 = v62;
      v36 = v61;
    }

    else
    {

      v44 = MEMORY[0x1E69E7CC0];
    }
  }

  v59 = objc_allocWithZone(MEMORY[0x1E69D24C8]);
  v60 = OUTLINED_FUNCTION_162();
  sub_1DC30102C(v60, v28, v30, v33, v35, v36, v44, v26);
  OUTLINED_FUNCTION_101();
}

void sub_1DC2FEE38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_33();
  v169 = v24;
  OUTLINED_FUNCTION_38_2();
  sub_1DC51655C();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_12();
  v154 = sub_1DC51451C();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_14(v27);
  v28 = sub_1DC510B6C();
  v29 = OUTLINED_FUNCTION_10(v28);
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_12();
  v157 = sub_1DC513A3C();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_14(v31);
  v156 = sub_1DC51454C();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_14(v33);
  sub_1DC51405C();
  OUTLINED_FUNCTION_0();
  v159 = v35;
  v160 = v34;
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_2_1();
  v158 = v36;
  OUTLINED_FUNCTION_12();
  sub_1DC5142FC();
  OUTLINED_FUNCTION_0();
  v162 = v38;
  v163 = v37;
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_2_1();
  v161 = v39;
  OUTLINED_FUNCTION_12();
  v171 = sub_1DC51403C();
  OUTLINED_FUNCTION_0();
  v41 = v40;
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_8_2();
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_153_1();
  sub_1DC513EAC();
  OUTLINED_FUNCTION_0();
  v165 = v45;
  v166 = v44;
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_2_1();
  v164 = v46;
  OUTLINED_FUNCTION_12();
  v170 = sub_1DC513A8C();
  OUTLINED_FUNCTION_0();
  v168 = v47;
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_8();
  v51 = v49 - v50;
  MEMORY[0x1EEE9AC00](v52);
  OUTLINED_FUNCTION_62();
  v167 = v53;
  OUTLINED_FUNCTION_12();
  sub_1DC51407C();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v54);
  OUTLINED_FUNCTION_3();
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C418, &qword_1DC523108);
  v56 = OUTLINED_FUNCTION_10(v55);
  MEMORY[0x1EEE9AC00](v56);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_123();
  MEMORY[0x1EEE9AC00](v57);
  OUTLINED_FUNCTION_56_1();
  sub_1DC5141DC();
  v58 = sub_1DC5141CC();
  v59 = OUTLINED_FUNCTION_82_0();
  OUTLINED_FUNCTION_39(v59, v60, v58);
  if (v61)
  {
    goto LABEL_3;
  }

  v152 = v21;
  sub_1DC28F358(v21, v22, &qword_1ECC7C418, &qword_1DC523108);
  v64 = *(v58 - 8);
  v65 = OUTLINED_FUNCTION_58_3();
  v67 = v66(v65);
  if (v67 == *MEMORY[0x1E69D1658])
  {
    v68 = OUTLINED_FUNCTION_54_6();
    v69(v68);
    v70 = OUTLINED_FUNCTION_159();
    v71(v70);
    sub_1DC298C74(0, &qword_1ECC7C390, 0x1E69D25D8);
    sub_1DC51406C();
    v72 = MEMORY[0x1E1296570](v167);
    (*(v168 + 8))(v167, v170);
    v73 = [objc_allocWithZone(MEMORY[0x1E69D2550]) initWithReference_];

    v74 = OUTLINED_FUNCTION_73();
    v75(v74);
LABEL_39:
    sub_1DC28EB30(v152, &qword_1ECC7C418, &qword_1DC523108);
    swift_unknownObjectRetain();
    sub_1DC5141EC();
    v146 = sub_1DC51653C();
    v147 = OUTLINED_FUNCTION_51_5();
    v148(v147);
    sub_1DC5176FC();
    OUTLINED_FUNCTION_162();

    [v73 setRenderedText_];

    MEMORY[0x1E12962A0]();
    sub_1DC301904(*((*v169 & 0xFFFFFFFFFFFFFF8) + 0x10));
    OUTLINED_FUNCTION_36();
    sub_1DC517A5C();
    v149 = *v169;
    swift_unknownObjectRelease();
    *v169 = v149;
    goto LABEL_40;
  }

  if (v67 != *MEMORY[0x1E69D1648])
  {
    if (v67 == *MEMORY[0x1E69D1630])
    {
      v82 = OUTLINED_FUNCTION_54_6();
      v83(v82);
      (*(v162 + 32))(v161, v22, v163);
      v172 = MEMORY[0x1E69E7CC0];
      v84 = sub_1DC513A9C();
      v21 = 0;
      v85 = *(v84 + 16);
      v86 = (v41 + 8);
      while (1)
      {
        if (v85 == v21)
        {

          sub_1DC298C74(0, &unk_1ECC7C430, 0x1E69D2538);
          v108 = OUTLINED_FUNCTION_162();
          v73 = sub_1DC2FFD04(v108);
          (*(v162 + 8))(v161, v163);
          goto LABEL_39;
        }

        if (v21 >= *(v84 + 16))
        {
          __break(1u);
          goto LABEL_43;
        }

        OUTLINED_FUNCTION_24();
        (*(v41 + 16))(v23, v84 + v87 + *(v41 + 72) * v21, v171);
        sub_1DC2FD51C();
        if (!v88)
        {
          break;
        }

        v89 = swift_unknownObjectRetain();
        MEMORY[0x1E12962A0](v89);
        v90 = *((v172 & 0xFFFFFFFFFFFFFF8) + 0x18);
        if (*((v172 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v90 >> 1)
        {
          OUTLINED_FUNCTION_26(v90);
          sub_1DC517A3C();
        }

        sub_1DC517A5C();
        swift_unknownObjectRelease();
        (*v86)(v23, v171);
        ++v21;
      }

      if (qword_1ECC81EE0 != -1)
      {
        OUTLINED_FUNCTION_0_6();
        swift_once();
      }

      sub_1DC517BAC();
      v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7C290, &qword_1DC524690);
      v125 = OUTLINED_FUNCTION_124_0(v124);
      *(v125 + 16) = xmmword_1DC522F20;
      sub_1DC302048(&qword_1ECC7C428, MEMORY[0x1E69D1608]);
      sub_1DC5165DC();
      OUTLINED_FUNCTION_137();
      *(v125 + 56) = MEMORY[0x1E69E6158];
      *(v125 + 64) = sub_1DC2C0FA4(v126, v127, v128);
      *(v125 + 32) = v23;
      *(v125 + 40) = v21;
      OUTLINED_FUNCTION_61_2();
      OUTLINED_FUNCTION_169_0(v129, v130, v131, v132, v133);

      (*v86)(v23, v171);
      (*(v162 + 8))(v161, v163);
      v63 = v152;
      goto LABEL_5;
    }

    if (v67 == *MEMORY[0x1E69D1650])
    {
      v91 = OUTLINED_FUNCTION_54_6();
      v92(v91);
      (*(v159 + 32))(v158, v22, v160);
      v93 = sub_1DC513A9C();
      v94 = *(v93 + 16);
      if (v94)
      {
        sub_1DC298C74(0, &qword_1ECC7C390, 0x1E69D25D8);
        v95 = *(v168 + 16);
        OUTLINED_FUNCTION_50_5();
        v97 = v93 + v96;
        v99 = *(v98 + 56);
        do
        {
          v95(v51, v97, v170);
          MEMORY[0x1E1296570](v51);
          v100 = OUTLINED_FUNCTION_56();
          v102 = v101(v100);
          MEMORY[0x1E12962A0](v102);
          OUTLINED_FUNCTION_114();
          if (v104)
          {
            OUTLINED_FUNCTION_26(v103);
            sub_1DC517A3C();
          }

          OUTLINED_FUNCTION_16();
          sub_1DC517A5C();
          v97 += v99;
          --v94;
        }

        while (v94);
      }

      sub_1DC298C74(0, &qword_1ECC7C420, 0x1E69D2540);
      v145 = OUTLINED_FUNCTION_56_7();
      v73 = sub_1DC2FFD88(v145);
      (*(v159 + 8))(v158, v160);
      goto LABEL_39;
    }

    if (v67 == *MEMORY[0x1E69D1640])
    {
      v109 = OUTLINED_FUNCTION_54_6();
      v110(v109);
      OUTLINED_FUNCTION_106();
      v111 = v155;
      v112 = OUTLINED_FUNCTION_41();
      v113 = v156;
      v114(v112);
      OUTLINED_FUNCTION_20_3();
      sub_1DC51453C();
      sub_1DC513A1C();
      v115 = OUTLINED_FUNCTION_125();
      v116(v115, v157);
      sub_1DC298C74(0, &qword_1ECC7C390, 0x1E69D25D8);
      OUTLINED_FUNCTION_128_1();
      sub_1DC51452C();
      MEMORY[0x1E1296570](v167);
      v117 = OUTLINED_FUNCTION_132();
      v118(v117);
      v119 = objc_allocWithZone(MEMORY[0x1E69D2560]);
      v120 = OUTLINED_FUNCTION_36();
      v123 = sub_1DC301238(v120, v121, v122);
LABEL_37:
      v73 = v123;
      (*(v64 + 8))(v111, v113);
      goto LABEL_39;
    }

    if (v67 == *MEMORY[0x1E69D1638])
    {
      v134 = OUTLINED_FUNCTION_54_6();
      v135(v134);
      OUTLINED_FUNCTION_106();
      v111 = v153;
      v136 = OUTLINED_FUNCTION_41();
      v113 = v154;
      v137(v136);
      OUTLINED_FUNCTION_20_3();
      sub_1DC51450C();
      sub_1DC513A1C();
      v138 = OUTLINED_FUNCTION_125();
      v139(v138, v157);
      v140 = sub_1DC298C74(0, &qword_1ECC7C390, 0x1E69D25D8);
      OUTLINED_FUNCTION_128_1();
      sub_1DC5144FC();
      MEMORY[0x1E1296570](v167);
      v141 = OUTLINED_FUNCTION_132();
      v142(v141);
      v143 = objc_allocWithZone(MEMORY[0x1E69D2558]);
      v144 = OUTLINED_FUNCTION_162();
      v123 = sub_1DC3012D0(v144, 0, v140);
      goto LABEL_37;
    }

    v150 = OUTLINED_FUNCTION_58_3();
    v151(v150);
    v21 = v152;
LABEL_3:
    if (qword_1ECC81EE0 != -1)
    {
LABEL_43:
      OUTLINED_FUNCTION_0_6();
      swift_once();
    }

    sub_1DC517BAC();
    OUTLINED_FUNCTION_61_2();
    sub_1DC516EFC(v62);
    v63 = v21;
    goto LABEL_5;
  }

  v76 = OUTLINED_FUNCTION_54_6();
  v77(v76);
  (*(v165 + 32))(v164, v22, v166);
  sub_1DC513E9C();
  sub_1DC2FD51C();
  v79 = v78;
  (*(v41 + 8))(v20, v171);
  if (v79)
  {
    v73 = [objc_allocWithZone(MEMORY[0x1E69D2548]) initWithOfferedAct_];
    swift_unknownObjectRelease();
    v80 = OUTLINED_FUNCTION_60();
    v81(v80);
    goto LABEL_39;
  }

  if (qword_1ECC81EE0 != -1)
  {
    OUTLINED_FUNCTION_0_6();
    swift_once();
  }

  sub_1DC517BAC();
  OUTLINED_FUNCTION_61_2();
  sub_1DC516EFC(v105);
  v106 = OUTLINED_FUNCTION_60();
  v107(v106);
  v63 = v152;
LABEL_5:
  sub_1DC28EB30(v63, &qword_1ECC7C418, &qword_1DC523108);
LABEL_40:
  OUTLINED_FUNCTION_34();
}

id sub_1DC2FFD04(uint64_t a1)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C328, &qword_1DC5230B8);
  v2 = sub_1DC517A0C();

  v3 = [v1 initWithChoices_];

  return v3;
}

id sub_1DC2FFD88(uint64_t a1)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  sub_1DC298C74(0, &qword_1ECC7C390, 0x1E69D25D8);
  v2 = sub_1DC517A0C();

  v3 = [v1 initWithEntities_];

  return v3;
}

void sub_1DC2FFE10()
{
  OUTLINED_FUNCTION_102_0();
  OUTLINED_FUNCTION_38_2();
  v103 = sub_1DC5141FC();
  OUTLINED_FUNCTION_0();
  v100 = v3;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_122_0();
  sub_1DC51413C();
  OUTLINED_FUNCTION_0();
  v98 = v5;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_12();
  v116 = sub_1DC51652C();
  OUTLINED_FUNCTION_0();
  v101 = v7;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_1();
  v11 = v10 - v9;
  v114 = sub_1DC513A8C();
  OUTLINED_FUNCTION_0();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_1();
  v17 = v16 - v15;
  v18 = sub_1DC513A0C();
  OUTLINED_FUNCTION_0();
  v20 = v19;
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_56_1();
  v23 = MEMORY[0x1E69E7CC0];
  v121 = MEMORY[0x1E69E7CC0];
  v24 = *(sub_1DC513A9C() + 16);
  v104 = v2;
  v102 = v0;
  if (v24)
  {
    v25 = OUTLINED_FUNCTION_155();
    sub_1DC298C74(v25, v26, v27);
    v96 = v20;
    v29 = *(v20 + 16);
    v28 = v20 + 16;
    v109 = v29;
    OUTLINED_FUNCTION_24();
    v30 = v13;
    v94 = v23;
    v32 = v23 + v31;
    v107 = *(v28 + 56);
    v95 = v30;
    v106 = (v30 + 8);
    v105 = (v101 + 8);
    v33 = (v28 - 8);
    do
    {
      v109(v1, v32, v18);
      sub_1DC5139EC();
      v34 = v18;
      v35 = MEMORY[0x1E1296570](v17);
      (*v106)(v17, v114);
      sub_1DC5139FC();
      sub_1DC51651C();
      v37 = v36;
      (*v105)(v11, v116);
      [objc_allocWithZone(MEMORY[0x1E69D2568]) initWithTask:v35 score:v37];

      MEMORY[0x1E12962A0]();
      OUTLINED_FUNCTION_114();
      if (v39)
      {
        OUTLINED_FUNCTION_26(v38);
        sub_1DC517A3C();
      }

      sub_1DC517A5C();
      (*v33)(v1, v34);
      v32 += v107;
      --v24;
      v18 = v34;
    }

    while (v24);
    v99 = v121;

    v23 = MEMORY[0x1E69E7CC0];
    v20 = v96;
    v13 = v95;
  }

  else
  {

    v99 = MEMORY[0x1E69E7CC0];
  }

  v120 = v23;
  v40 = *(sub_1DC513AAC() + 16);
  if (v40)
  {
    v41 = OUTLINED_FUNCTION_155();
    sub_1DC298C74(v41, v42, v43);
    v44 = *(v20 + 16);
    v20 += 16;
    v111 = v44;
    OUTLINED_FUNCTION_24();
    v45 = v13;
    v96 = v23;
    v47 = v23 + v46;
    v108 = (v45 + 8);
    v110 = *(v20 + 56);
    v105 = (v20 - 8);
    do
    {
      v48 = v20;
      v111(v97, v47, v18);
      sub_1DC5139EC();
      v49 = v18;
      v50 = MEMORY[0x1E1296570](v17);
      (*v108)(v17, v114);
      sub_1DC5139FC();
      sub_1DC51651C();
      v52 = v51;
      (*(v101 + 8))(v11, v116);
      [objc_allocWithZone(MEMORY[0x1E69D2568]) initWithTask:v50 score:v52];

      MEMORY[0x1E12962A0]();
      OUTLINED_FUNCTION_114();
      if (v39)
      {
        OUTLINED_FUNCTION_26(v53);
        sub_1DC517A3C();
      }

      sub_1DC517A5C();
      (*v105)(v97, v49);
      v47 += v110;
      --v40;
      v18 = v49;
      v20 = v48;
    }

    while (v40);
    v112 = v120;

    v23 = MEMORY[0x1E69E7CC0];
  }

  else
  {

    v112 = MEMORY[0x1E69E7CC0];
  }

  v119 = v23;
  v54 = *(sub_1DC513ABC() + 16);
  if (v54)
  {
    v55 = *(v98 + 16);
    OUTLINED_FUNCTION_50_5();
    v58 = v56 + v57;
    v60 = *(v59 + 56);
    do
    {
      v61 = OUTLINED_FUNCTION_60();
      v55(v61);
      sub_1DC2FE82C();
      v62 = OUTLINED_FUNCTION_160();
      v64 = v63(v62);
      MEMORY[0x1E12962A0](v64);
      OUTLINED_FUNCTION_145();
      if (v39)
      {
        OUTLINED_FUNCTION_26(v65);
        sub_1DC517A3C();
      }

      OUTLINED_FUNCTION_30();
      sub_1DC517A5C();
      v58 += v60;
      --v54;
    }

    while (v54);
    v66 = v119;

    v23 = MEMORY[0x1E69E7CC0];
  }

  else
  {

    v66 = MEMORY[0x1E69E7CC0];
  }

  v118 = v23;
  v67 = *(sub_1DC513ACC() + 16);
  OUTLINED_FUNCTION_109_0();
  if (v67)
  {
    v113 = v66;
    v70 = *(v20 + 16);
    v69 = v20 + 16;
    v68 = v70;
    OUTLINED_FUNCTION_24();
    v73 = v71 + v72;
    v74 = *(v69 + 56);
    v75 = v103;
    v115 = v70;
    v117 = v74;
    do
    {
      v68(v2, v73, v75);
      sub_1DC2FEE38(v2, &v118, v76, v77, v78, v79, v80, v81, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105);
      if ((v82 & 1) == 0)
      {
        if (qword_1ECC81EE0 != -1)
        {
          OUTLINED_FUNCTION_0_6();
          swift_once();
        }

        v83 = off_1ECC8F578;
        v84 = sub_1DC517BAC();
        sub_1DC516EFC("Error getting system dialog act from turn context", 49, 2, &dword_1DC287000, v83, v84, MEMORY[0x1E69E7CC0]);
        v85 = sub_1DC517B9C();
        v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7C290, &qword_1DC524690);
        v87 = OUTLINED_FUNCTION_124_0(v86);
        *(v87 + 16) = xmmword_1DC522F20;
        OUTLINED_FUNCTION_81_0();
        sub_1DC302048(&qword_1ECC7C388, v88);
        OUTLINED_FUNCTION_56_7();
        v89 = sub_1DC5165DC();
        v91 = v90;
        *(v87 + 56) = MEMORY[0x1E69E6158];
        *(v87 + 64) = sub_1DC2C0FA4(v89, v90, v92);
        *(v87 + 32) = v89;
        *(v87 + 40) = v91;
        v75 = v103;
        v2 = v104;
        sub_1DC516EFC("SystemDialogAct description: %@", 31, 2, &dword_1DC287000, v83, v85, v87);

        v68 = v115;
        v74 = v117;
      }

      (*(v69 - 8))(v2, v75);
      v73 += v74;
      --v67;
    }

    while (v67);

    v93 = v118;
    v66 = v113;
  }

  else
  {

    v93 = MEMORY[0x1E69E7CC0];
  }

  objc_allocWithZone(MEMORY[0x1E69D24D8]);
  sub_1DC30137C(v93, v99, v112, v66);
  OUTLINED_FUNCTION_101();
}

void sub_1DC3006CC()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_38_2();
  v1 = sub_1DC51414C();
  OUTLINED_FUNCTION_0();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_18();
  v47 = sub_1DC51655C();
  OUTLINED_FUNCTION_0();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_1();
  v10 = v9 - v8;
  v11 = *(sub_1DC51416C() + 16);
  if (v11)
  {
    v43 = v0;
    v44 = v3;
    v12 = v6 + 16;
    OUTLINED_FUNCTION_24();
    v15 = v13 + v14;
    v45 = *(v12 + 56);
    v46 = v16;
    v17 = (v12 - 8);
    v18 = MEMORY[0x1E69E7CC0];
    do
    {
      v19 = v12;
      v46(v10, v15, v47);
      v20 = sub_1DC51653C();
      v22 = v21;
      (*v17)(v10, v47);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_18_3();
        v18 = sub_1DC2ACCD4(v26, v27, v28, v29);
      }

      v24 = *(v18 + 2);
      v23 = *(v18 + 3);
      if (v24 >= v23 >> 1)
      {
        OUTLINED_FUNCTION_26(v23);
        OUTLINED_FUNCTION_18_3();
        v18 = sub_1DC2ACCD4(v30, v31, v32, v33);
      }

      *(v18 + 2) = v24 + 1;
      v25 = &v18[16 * v24];
      *(v25 + 4) = v20;
      *(v25 + 5) = v22;
      v15 += v45;
      --v11;
      v12 = v19;
    }

    while (v11);

    v0 = v43;
    v3 = v44;
  }

  else
  {

    v18 = MEMORY[0x1E69E7CC0];
  }

  sub_1DC51419C();
  v34 = (*(v3 + 88))(v0, v1);
  if (v34 != *MEMORY[0x1E69D1620])
  {
    if (v34 == *MEMORY[0x1E69D1628])
    {
      v35 = 1;
      goto LABEL_18;
    }

    if (v34 == *MEMORY[0x1E69D1618])
    {
      v35 = 2;
      goto LABEL_18;
    }

    if (v34 == *MEMORY[0x1E69D1610])
    {
      v35 = 3;
      goto LABEL_18;
    }

    if (qword_1ECC81EE0 != -1)
    {
      OUTLINED_FUNCTION_0_6();
      swift_once();
    }

    sub_1DC517BAC();
    OUTLINED_FUNCTION_61_2();
    sub_1DC516EFC(v42);
    (*(v3 + 8))(v0, v1);
  }

  v35 = 0;
LABEL_18:
  v36 = sub_1DC51417C();
  v37 = sub_1DC51415C();
  v38 = sub_1DC51418C();
  v40 = v39;
  v41 = sub_1DC5141AC();
  objc_allocWithZone(MEMORY[0x1E69D24D0]);
  sub_1DC3014AC(v36 & 1, v37 & 1, v38, v40, v41 & 1, v18, v35);
  OUTLINED_FUNCTION_34();
}

void sub_1DC300A30()
{
  OUTLINED_FUNCTION_164();
  OUTLINED_FUNCTION_38_2();
  sub_1DC5141BC();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_113();
  sub_1DC513ADC();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_4_6();
  sub_1DC513D0C();
  sub_1DC2FFE10();
  v3 = v2;
  v4 = OUTLINED_FUNCTION_16();
  v5(v4);
  v6 = 0;
  if (sub_1DC513D2C())
  {
    sub_1DC513D1C();
    sub_1DC3006CC();
    v6 = v7;
    v8 = OUTLINED_FUNCTION_36();
    v9(v8);
  }

  [objc_msgSend(objc_allocWithZone(MEMORY[0x1E69D2570]) initWithNLContext_];

  OUTLINED_FUNCTION_154();
}

uint64_t sub_1DC300BB0@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = [a1 algorithmType];
  if (v4 == 2)
  {
    v5 = MEMORY[0x1E69D15A8];
  }

  else if (v4 == 1)
  {
    v5 = MEMORY[0x1E69D15A0];
  }

  else if (v4)
  {
    if (qword_1ECC81EE0 != -1)
    {
      OUTLINED_FUNCTION_0_6();
      swift_once();
    }

    v6 = off_1ECC8F578;
    v7 = sub_1DC517BAC();
    sub_1DC516EFC("parser algorithm type unrecognized", 34, 2, &dword_1DC287000, v6, v7, MEMORY[0x1E69E7CC0]);
    *a2 = [a1 algorithmType];
    v5 = MEMORY[0x1E69D1598];
  }

  else
  {
    v5 = MEMORY[0x1E69D15B0];
  }

  v8 = *v5;
  sub_1DC513E3C();
  OUTLINED_FUNCTION_35();
  v11 = *(v10 + 104);

  return v11(a2, v8, v9);
}

uint64_t sub_1DC300CDC@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  switch([a1 parserIdentifier])
  {
    case 0u:
      v4 = MEMORY[0x1E69D1698];
      break;
    case 1u:
      v4 = MEMORY[0x1E69D16A0];
      break;
    case 2u:
      v4 = MEMORY[0x1E69D1690];
      break;
    case 3u:
      v4 = MEMORY[0x1E69D1688];
      break;
    case 4u:
      v4 = MEMORY[0x1E69D1680];
      break;
    case 5u:
      v4 = MEMORY[0x1E69D1678];
      break;
    default:
      if (qword_1ECC81EE0 != -1)
      {
        OUTLINED_FUNCTION_0_6();
        swift_once();
      }

      sub_1DC517BAC();
      OUTLINED_FUNCTION_78_1();
      sub_1DC516EFC(v5);
      *a2 = [a1 parserIdentifier];
      v4 = MEMORY[0x1E69D1670];
      break;
  }

  v6 = *v4;
  sub_1DC51420C();
  OUTLINED_FUNCTION_35();
  v9 = *(v8 + 104);

  return v9(a2, v6, v7);
}

id sub_1DC300E40(uint64_t a1)
{
  OUTLINED_FUNCTION_146();
  if (!v3 & v2)
  {
    v4 = 0;
  }

  else
  {
    v4 = sub_1DC5109EC();
    v5 = OUTLINED_FUNCTION_73();
    sub_1DC301FE0(v5, v6);
  }

  v7 = [v1 initWithData_];

  return v7;
}

id sub_1DC300EAC(void *a1, void *a2, uint64_t a3)
{
  sub_1DC298C74(0, &unk_1ECC7C790, 0x1E69D2578);
  v6 = sub_1DC517A0C();

  v7 = [v3 initWithRequestId:a1 currentTurnInput:a2 previousTurnInputs:v6];

  return v7;
}

id sub_1DC300F44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a3)
  {
    v8 = sub_1DC5176FC();
  }

  else
  {
    v8 = 0;
  }

  v9 = sub_1DC5176FC();

  sub_1DC298C74(0, &unk_1ECC7C458, 0x1E69D2530);
  v10 = sub_1DC517A0C();

  v11 = [v6 initWithAsrHypothesisIndex:a1 rewrittenUtterace:v8 externalParserId:v9 spans:v10];

  return v11;
}

id sub_1DC30102C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, double a8)
{
  v9 = v8;
  v14 = sub_1DC5176FC();

  v15 = sub_1DC5176FC();

  if (a7)
  {
    sub_1DC298C74(0, &qword_1ECC7C450, 0x1E69D24E8);
    v16 = sub_1DC517A0C();
  }

  else
  {
    v16 = 0;
  }

  v17 = [v9 initWithEntity:a1 score:v14 entityId:v15 appBundleId:a6 groupId:v16 annotations:a8];

  return v17;
}

id sub_1DC301138(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, double a9)
{
  v14 = sub_1DC5176FC();

  v15 = sub_1DC5176FC();

  sub_1DC298C74(0, &qword_1ECC7B920, 0x1E696AD98);
  v16 = sub_1DC517A0C();

  v17 = [v9 initWithLabel:v14 input:v15 startTokenIndex:a5 endTokenIndex:a6 usoGraph:a7 score:v16 matcherNames:a9];

  return v17;
}

id sub_1DC301238(uint64_t a1, void *a2, SEL *a3)
{
  v5 = v3;
  v8 = sub_1DC510B2C();
  v9 = [v5 *a3];

  sub_1DC510B6C();
  OUTLINED_FUNCTION_35();
  (*(v10 + 8))(a1);
  return v9;
}

id sub_1DC3012D0(uint64_t a1, void *a2, void *a3)
{
  v4 = v3;
  v8 = sub_1DC510B2C();
  v9 = [v4 initWithTaskId:v8 reason:a2 task:a3];

  v10 = sub_1DC510B6C();
  (*(*(v10 - 8) + 8))(a1, v10);
  return v9;
}

id sub_1DC30137C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C3F8, &qword_1DC5230F8);
  v6 = sub_1DC517A0C();

  sub_1DC298C74(0, &qword_1ECC7C400, 0x1E69D2568);
  v7 = sub_1DC517A0C();

  v8 = sub_1DC517A0C();

  if (a4)
  {
    sub_1DC298C74(0, &qword_1ECC7C448, 0x1E69D24C8);
    v9 = sub_1DC517A0C();
  }

  else
  {
    v9 = 0;
  }

  v10 = [v4 initWithSystemDialogActs:v6 activeTasks:v7 executedTasks:v8 salientEntities:v9];

  return v10;
}

id sub_1DC3014AC(char a1, char a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  v13 = sub_1DC5176FC();

  if (a6)
  {
    v14 = sub_1DC517A0C();
  }

  else
  {
    v14 = 0;
  }

  v15 = [v7 initWithDictationPrompt:a1 & 1 strictPrompt:a2 & 1 previousDomainName:v13 listenAfterSpeaking:a5 & 1 renderedTexts:v14 legacyContextSource:a7];

  return v15;
}

id sub_1DC301570(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, char a8, double a9, __int128 a10, int a12)
{
  v15 = sub_1DC5176FC();

  v16 = sub_1DC5176FC();

  v17 = sub_1DC5176FC();

  v18 = [v11 initWithPostITNText:v15 phoneSequence:v16 ipaPhoneSequence:v17 addSpaceAfter:a7 & 1 removeSpaceAfter:a8 & 1 removeSpaceBefore:a10 & 1 confidenceScore:a9 beginIndex:*(&a10 + 4) endIndex:? startMilliSeconds:? endMilliSeconds:?];

  return v18;
}

id sub_1DC301670(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  v6 = v5;
  v9 = sub_1DC5176FC();

  sub_1DC298C74(0, &qword_1ECC7C470, 0x1E69D24B8);
  v10 = sub_1DC517A0C();

  v11 = sub_1DC510B2C();
  v12 = [v6 initWithUtterance:v9 probability:v10 asrTokens:v11 uuid:a5];

  v13 = sub_1DC510B6C();
  (*(*(v13 - 8) + 8))(a4, v13);
  return v12;
}

id sub_1DC30176C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7)
{
  v8 = v7;
  sub_1DC298C74(0, &qword_1ECC7C468, 0x1E69D24B0);
  v12 = sub_1DC517A0C();

  sub_1DC298C74(0, &qword_1ECC7C448, 0x1E69D24C8);
  v13 = sub_1DC517A0C();

  v14 = sub_1DC5176FC();

  v15 = [v8 initWithAsrOutputs:v12 salientEntities:v13 turnContext:a3 locale:v14 tapToEdit:a6 & 1 startTimestamp:a7];

  return v15;
}

id sub_1DC301880(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  v7 = sub_1DC5176FC();

  OUTLINED_FUNCTION_73();
  v8 = sub_1DC5176FC();

  v9 = [v5 *a5];

  return v9;
}

uint64_t sub_1DC301904(uint64_t result)
{
  if (result + 1 > *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    return sub_1DC517A3C();
  }

  return result;
}

void *sub_1DC301930(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = a2;
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 24);
    a2 = v7 >> 1;
    if ((v7 >> 1) < v5)
    {
      if (a2 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if (v8 <= v5)
      {
        a2 = v5;
      }

      else
      {
        a2 = v8;
      }
    }
  }

  v9 = *(a4 + 16);
  v10 = sub_1DC301B78(v9, a2, &qword_1ECC7C780, &qword_1DC523390, MEMORY[0x1E69D1570]);
  v11 = *(sub_1DC513C4C() - 8);
  if (v6)
  {
    v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    sub_1DC301C70(a4 + v12, v9, v10 + v12, MEMORY[0x1E69D1570]);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1DC301A54(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = a2;
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 24);
    a2 = v7 >> 1;
    if ((v7 >> 1) < v5)
    {
      if (a2 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if (v8 <= v5)
      {
        a2 = v5;
      }

      else
      {
        a2 = v8;
      }
    }
  }

  v9 = *(a4 + 16);
  v10 = sub_1DC301B78(v9, a2, &qword_1ECC7C778, &qword_1DC523388, MEMORY[0x1E69D1608]);
  v11 = *(sub_1DC51403C() - 8);
  if (v6)
  {
    v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    sub_1DC301C70(a4 + v12, v9, v10 + v12, MEMORY[0x1E69D1608]);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1DC301B78(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t))
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
  v8 = OUTLINED_FUNCTION_98();
  v9 = *(a5(v8) - 8);
  v10 = *(v9 + 72);
  v11 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v12 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v12);
  if (v10)
  {
    if ((result - v11) != 0x8000000000000000 || v10 != -1)
    {
      v12[2] = a1;
      v12[3] = 2 * ((result - v11) / v10);
      return v12;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1DC301C70(unint64_t a1, uint64_t a2, unint64_t a3, void (*a4)(void))
{
  if (a3 < a1 || (a4(0), OUTLINED_FUNCTION_35(), a1 + *(v8 + 72) * a2 <= a3))
  {
    a4(0);
    OUTLINED_FUNCTION_52_0();

    swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != a1)
  {
    OUTLINED_FUNCTION_52_0();

    swift_arrayInitWithTakeBackToFront();
  }
}

void *sub_1DC301D30(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1DC301D50(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1DC301D50(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_25:
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C788, &qword_1DC523398);
  v10 = *(sub_1DC51425C() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_24;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_1DC51425C() - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    sub_1DC301C70(a4 + v16, v8, v13 + v16, MEMORY[0x1E69D16D0]);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void sub_1DC301F18(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1DC5176FC();

  [a3 setPrintedForm_];
}

uint64_t sub_1DC301F7C(void *a1)
{
  v1 = [a1 rewrittenUtterance];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1DC51772C();

  return v3;
}

uint64_t sub_1DC301FE0(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1DC2AD740(result, a2);
  }

  return result;
}

uint64_t sub_1DC302048(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_56_7();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id OUTLINED_FUNCTION_86_0()
{

  return sub_1DC300E40(v0);
}

uint64_t OUTLINED_FUNCTION_104(uint64_t a1)
{

  return sub_1DC513A1C();
}

void OUTLINED_FUNCTION_116_0(uint64_t a1, uint64_t a2)
{
  __swift_storeEnumTagSinglePayload(v3, a2, 1, *(v4 - 200));
}

double OUTLINED_FUNCTION_120()
{
  *(v0 - 96) = 0;
  result = 0.0;
  *(v0 - 128) = 0u;
  *(v0 - 112) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_138()
{

  return swift_unknownObjectRelease();
}

uint64_t OUTLINED_FUNCTION_140_1()
{

  return sub_1DC514EDC();
}

uint64_t OUTLINED_FUNCTION_141(uint64_t a1, uint64_t a2)
{

  return swift_unknownObjectRetain();
}

uint64_t OUTLINED_FUNCTION_167()
{

  return swift_unknownObjectRelease();
}

uint64_t sub_1DC3022A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v151 = a2;
  v139 = sub_1DC510FDC();
  OUTLINED_FUNCTION_0();
  v132 = v3;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_14(v5);
  v144 = sub_1DC51179C();
  OUTLINED_FUNCTION_0();
  v131 = v6;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_2_1();
  v143 = v8;
  v145 = sub_1DC51164C();
  OUTLINED_FUNCTION_0();
  v142 = v9;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_14(v11);
  v135 = sub_1DC51122C();
  OUTLINED_FUNCTION_0();
  v133 = v12;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_2_1();
  v134 = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CA40, &unk_1DC5233A0);
  OUTLINED_FUNCTION_10(v15);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_14(&v118 - v17);
  v152 = sub_1DC5157EC();
  OUTLINED_FUNCTION_0();
  v147 = v18;
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_15();
  v136 = v20;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v21);
  v137 = &v118 - v22;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v23);
  v146 = &v118 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C158, &unk_1DC5234A0);
  OUTLINED_FUNCTION_10(v25);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v118 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C160, qword_1DC5233B0);
  OUTLINED_FUNCTION_10(v29);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v118 - v31;
  v33 = type metadata accessor for NLRouterNLParseResponse(0);
  OUTLINED_FUNCTION_35();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_2_1();
  v148 = v35;
  sub_1DC516F5C();
  OUTLINED_FUNCTION_0();
  v149 = v37;
  v150 = v36;
  MEMORY[0x1EEE9AC00](v36);
  v39 = &v118 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
  v40 = sub_1DC2BE518();
  v41 = OUTLINED_FUNCTION_130();
  sub_1DC2A2ED0("HeuristicRules.HomeAutomationRule", 33, 2, v40, v41 & 1, v39);

  v42 = type metadata accessor for NLRouterServiceRequest(0);
  sub_1DC28F358(a1 + *(v42 + 32), v28, &qword_1ECC7C158, &unk_1DC5234A0);
  v43 = type metadata accessor for NLRouterTurnProbingResult(0);
  if (__swift_getEnumTagSinglePayload(v28, 1, v43) == 1)
  {
    sub_1DC28EB30(v28, &qword_1ECC7C158, &unk_1DC5234A0);
    v44 = OUTLINED_FUNCTION_44();
    __swift_storeEnumTagSinglePayload(v44, v45, 1, v33);
LABEL_4:
    sub_1DC28EB30(v32, &qword_1ECC7C160, qword_1DC5233B0);
LABEL_5:
    v48 = v151;
    v49 = v152;
    v50 = 1;
LABEL_6:
    __swift_storeEnumTagSinglePayload(v48, v50, 1, v49);
    v51 = sub_1DC2BE518();
    sub_1DC2B8848(v39, "HeuristicRules.HomeAutomationRule", 33, 2, v51);

    return (*(v149 + 8))(v39, v150);
  }

  sub_1DC28F358(v28, v32, &qword_1ECC7C160, qword_1DC5233B0);
  sub_1DC2E5408(v28, type metadata accessor for NLRouterTurnProbingResult);
  v46 = OUTLINED_FUNCTION_44();
  if (__swift_getEnumTagSinglePayload(v46, v47, v33) == 1)
  {
    goto LABEL_4;
  }

  v53 = v32;
  v54 = v148;
  sub_1DC2E53A4(v53, v148);
  v55 = *(type metadata accessor for HeuristicRoutingRequest(0) + 20);
  sub_1DC32DBF4();
  if (v56)
  {
    OUTLINED_FUNCTION_4();
    sub_1DC2E5408(v54, v57);
    goto LABEL_5;
  }

  v58 = *(v147 + 16);
  v130 = a1;
  v59 = a1 + v55;
  v60 = v146;
  v61 = v152;
  v58(v146, v59, v152);
  sub_1DC298C74(0, &qword_1ECC7B9B0, 0x1E695E000);
  v62 = sub_1DC344464();
  v64 = v63;
  if (v62 == sub_1DC312FB4(0) && v64 == v65)
  {

    goto LABEL_19;
  }

  v67 = sub_1DC51825C();

  if (v67)
  {
LABEL_19:
    v76 = sub_1DC5157DC();
    OUTLINED_FUNCTION_4();
    sub_1DC2E5408(v148, v77);
    if (v76)
    {
      (*(v147 + 8))(v60, v61);
      v50 = 1;
      v78 = v151;
    }

    else
    {
      v78 = v151;
      (*(v147 + 32))(v151, v60, v61);
      v50 = 0;
    }

    v48 = v78;
    v49 = v61;
    goto LABEL_6;
  }

  v68 = sub_1DC344464();
  v70 = sub_1DC312F68(v68, v69);
  if (v70 == 4)
  {
    v71 = v141;
    v72 = OUTLINED_FUNCTION_44();
    __swift_storeEnumTagSinglePayload(v72, v73, 1, v61);
LABEL_18:
    sub_1DC28EB30(v71, &qword_1ECC7CA40, &unk_1DC5233A0);
    goto LABEL_19;
  }

  v71 = v141;
  sub_1DC312E7C(v70, v141);
  v74 = OUTLINED_FUNCTION_44();
  if (__swift_getEnumTagSinglePayload(v74, v75, v61) == 1)
  {
    goto LABEL_18;
  }

  v79 = v147;
  v80 = v147 + 32;
  v81 = v137;
  v127 = *(v147 + 32);
  v127(v137, v71, v61);
  v82 = v136;
  (*(v79 + 104))(v136, *MEMORY[0x1E69D02F0], v61);
  v83 = sub_1DC5157DC();
  v85 = *(v79 + 8);
  v84 = v79 + 8;
  v86 = v82;
  v87 = v85;
  result = (v85)(v86, v61);
  if ((v83 & 1) == 0)
  {
    v87(v81, v61);
    goto LABEL_19;
  }

  v125 = v87;
  v126 = v84;
  v88 = *v148;
  v89 = v140;
  v122 = *(*v148 + 16);
  if (!v122)
  {
LABEL_43:
    v125(v137, v61);
    goto LABEL_19;
  }

  v90 = 0;
  v91 = v88 + ((*(v133 + 80) + 32) & ~*(v133 + 80));
  v129 = v142 + 16;
  v141 = (v131 + 8);
  v128 = v132 + 8;
  v131 = v142 + 8;
  v124 = v133 + 8;
  v121 = v80;
  v120 = v88;
  v119 = v91;
  v118 = v133 + 16;
  while (2)
  {
    if (v90 < *(v88 + 16))
    {
      v92 = v90;
      (*(v133 + 16))(v134, v91 + *(v133 + 72) * v90, v135);
      v123 = v92 + 1;
      result = sub_1DC5111AC();
      v93 = result;
      v94 = 0;
      v132 = *(result + 16);
      while (v132 != v94)
      {
        if (v94 >= *(v93 + 16))
        {
          __break(1u);
          goto LABEL_49;
        }

        (*(v142 + 16))(v89, v93 + ((*(v142 + 80) + 32) & ~*(v142 + 80)) + *(v142 + 72) * v94, v145);
        if (sub_1DC302F98())
        {

          v108 = OUTLINED_FUNCTION_3_6();
          v109(v108);
          v60 = v146;
          goto LABEL_47;
        }

        v95 = v143;
        sub_1DC51154C();
        v96 = sub_1DC51177C();
        v97 = *v141;
        (*v141)(v95, v144);
        if (v96)
        {
          type metadata accessor for NLRouterBypassUtils();
          v98 = v143;
          sub_1DC51154C();
          v99 = v138;
          sub_1DC51178C();
          v97(v98, v144);
          v100 = sub_1DC307E5C(v99);
          OUTLINED_FUNCTION_37();
          v101 = v99;
          v89 = v140;
          v102(v101, v139);
          if (v100)
          {

            sub_1DC51478C();

            sub_1DC28F358(&v155, &v153, &qword_1ECC7D3F0, &qword_1DC5238B0);
            if (*(&v154 + 1))
            {
              sub_1DC514A8C();
              v103 = swift_dynamicCast();
              v60 = v146;
              if (v103)
              {

                sub_1DC28EB30(&v155, &qword_1ECC7D3F0, &qword_1DC5238B0);
                goto LABEL_46;
              }
            }

            else
            {
              OUTLINED_FUNCTION_14_4(&v153);
              v60 = v146;
            }

            v153 = v155;
            v154 = v156;
            if (*(&v156 + 1))
            {
              sub_1DC514B5C();
              if (swift_dynamicCast())
              {

LABEL_46:
                v110 = OUTLINED_FUNCTION_3_6();
                v111(v110);

LABEL_47:
                OUTLINED_FUNCTION_37();
                v112 = OUTLINED_FUNCTION_13_5();
                v113(v112);
                v114 = v136;
                v115 = v137;
                sub_1DC32DE40();
                v116 = v115;
                v61 = v152;
                v117 = v125;
                v125(v116, v152);
                v117(v60, v61);
                v127(v60, v114, v61);
                goto LABEL_19;
              }
            }

            else
            {
              OUTLINED_FUNCTION_14_4(&v153);
            }
          }
        }

        v104 = OUTLINED_FUNCTION_3_6();
        result = v105(v104);
        ++v94;
        v60 = v146;
      }

      OUTLINED_FUNCTION_37();
      v106 = OUTLINED_FUNCTION_13_5();
      v107(v106);

      v90 = v123;
      v61 = v152;
      v88 = v120;
      v91 = v119;
      if (v123 != v122)
      {
        continue;
      }

      goto LABEL_43;
    }

    break;
  }

LABEL_49:
  __break(1u);
  return result;
}

uint64_t sub_1DC302F98()
{
  v75 = sub_1DC51665C();
  OUTLINED_FUNCTION_0();
  v72 = v0;
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_14(v2);
  v82 = sub_1DC511D8C();
  OUTLINED_FUNCTION_0();
  v77 = v3;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_15();
  v84 = v5;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v6);
  v83 = v69 - v7;
  v85 = sub_1DC511E1C();
  OUTLINED_FUNCTION_0();
  v76 = v8;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_2_1();
  v73 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C860, &qword_1DC5233E8);
  OUTLINED_FUNCTION_10(v11);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v12);
  v14 = v69 - v13;
  v15 = sub_1DC510FDC();
  OUTLINED_FUNCTION_0();
  v17 = v16;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_15();
  v86 = v19;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v20);
  v22 = v69 - v21;
  v23 = sub_1DC51179C();
  OUTLINED_FUNCTION_0();
  v25 = v24;
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_15();
  v81 = v27;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v28);
  v30 = v69 - v29;
  sub_1DC51154C();
  v31 = sub_1DC51177C();
  v32 = *(v25 + 8);
  v32(v30, v23);
  if ((v31 & 1) == 0)
  {
    return 0;
  }

  v70 = v14;
  type metadata accessor for NLRouterBypassUtils();
  sub_1DC51154C();
  sub_1DC51178C();
  v32(v30, v23);
  v33 = sub_1DC307E5C(v22);
  v36 = *(v17 + 8);
  v35 = v17 + 8;
  v34 = v36;
  v36(v22, v15);
  if (!v33)
  {
    return 0;
  }

  v79 = v34;
  v80 = v35;

  sub_1DC51478C();

  sub_1DC28F358(v90, v88, &qword_1ECC7D3F0, &qword_1DC5238B0);
  if (!v89)
  {
    sub_1DC28EB30(v88, &qword_1ECC7D3F0, &qword_1DC5238B0);
    v39 = v85;
LABEL_7:
    sub_1DC28F358(v90, v88, &qword_1ECC7D3F0, &qword_1DC5238B0);
    if (v89)
    {
      v40 = sub_1DC514DBC();
      if (OUTLINED_FUNCTION_9_2(v40))
      {
        goto LABEL_9;
      }

      sub_1DC28EB30(v90, &qword_1ECC7D3F0, &qword_1DC5238B0);
    }

    else
    {
      OUTLINED_FUNCTION_14_4(v90);

      OUTLINED_FUNCTION_14_4(v88);
    }

    return 0;
  }

  v37 = sub_1DC514C5C();
  v38 = OUTLINED_FUNCTION_9_2(v37);
  v39 = v85;
  if (!v38)
  {
    goto LABEL_7;
  }

LABEL_9:
  v69[1] = v33;

  v41 = v81;
  sub_1DC51154C();
  v42 = v86;
  sub_1DC51178C();
  v32(v41, v23);
  v43 = sub_1DC510FBC();
  result = v79(v42, v15);
  v45 = *(v43 + 16);
  v46 = v76;
  v47 = v73;
  if (!v45)
  {
LABEL_20:

    sub_1DC28EB30(v90, &qword_1ECC7D3F0, &qword_1DC5238B0);
    v66 = 1;
    v67 = v70;
LABEL_21:
    __swift_storeEnumTagSinglePayload(v67, v66, 1, v39);
    v68 = __swift_getEnumTagSinglePayload(v67, 1, v39) != 1;
    sub_1DC28EB30(v67, &qword_1ECC7C860, &qword_1DC5233E8);
    return v68;
  }

  v48 = 0;
  v71 = 0;
  v49 = v43 + ((*(v76 + 80) + 32) & ~*(v76 + 80));
  v86 = v76 + 16;
  LODWORD(v79) = *MEMORY[0x1E69D0BA8];
  v50 = v77++;
  v78 = (v50 + 13);
  v72 += 8;
  v51 = (v76 + 8);
  v80 = v49;
  v81 = v45;
  while (v48 < *(v43 + 16))
  {
    (*(v46 + 16))(v47, v49 + *(v46 + 72) * v48, v39);
    if (sub_1DC511DCC())
    {
      v52 = v51;
      v53 = v43;
      v54 = v83;
      sub_1DC511DAC();
      v55 = v84;
      v56 = v47;
      v57 = v82;
      (*v78)(v84, v79, v82);
      sub_1DC3037FC();
      sub_1DC5179EC();
      sub_1DC5179EC();
      v58 = *v77;
      (*v77)(v55, v57);
      v58(v54, v57);
      if (v88[0] == v87)
      {
        v43 = v53;
        v47 = v56;
        v51 = v52;
        if (sub_1DC511D9C())
        {
          v59 = v74;
          sub_1DC511E0C();
          v60 = sub_1DC51664C();
          v62 = v61;
          OUTLINED_FUNCTION_37();
          v64 = v63(v59, v75);
          v88[0] = v60;
          v88[1] = v62;
          MEMORY[0x1EEE9AC00](v64);
          v69[-2] = v88;
          v65 = v71;
          LOBYTE(v60) = sub_1DC2CF098(sub_1DC2CF174, &v69[-4], &unk_1F57F64A0);

          v49 = v80;
          v45 = v81;
          if (v60)
          {
            sub_1DC28EB30(v90, &qword_1ECC7D3F0, &qword_1DC5238B0);

            v67 = v70;
            v39 = v85;
            (*(v76 + 32))(v70, v47, v85);
            v66 = 0;
            goto LABEL_21;
          }

          v71 = v65;
          v39 = v85;
          v46 = v76;
        }

        else
        {
          v39 = v85;
          v49 = v80;
          v45 = v81;
        }
      }

      else
      {
        v39 = v85;
        v43 = v53;
        v47 = v56;
        v49 = v80;
        v45 = v81;
        v51 = v52;
      }
    }

    ++v48;
    result = (*v51)(v47, v39);
    if (v45 == v48)
    {
      goto LABEL_20;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1DC3037FC()
{
  result = qword_1ECC7C868;
  if (!qword_1ECC7C868)
  {
    sub_1DC511D8C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC7C868);
  }

  return result;
}

uint64_t sub_1DC303854(uint64_t a1, char *a2, uint64_t a3)
{
  v6 = sub_1DC5172FC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DC5171CC();
  v10 = sub_1DC5172DC();
  v11 = *(v7 + 8);
  v11(v9, v6);
  if (v10)
  {
    result = sub_1DC383A84(a3);
    v14 = result;
    v36 = v11;
    v37 = a2;
    v38 = a1;
    v15 = 0;
    v16 = *(a3 + 16);
    v17 = a3 + 40;
    v18 = MEMORY[0x1E69E7CC0];
    v35 = a3 + 40;
LABEL_5:
    for (i = (v17 + 16 * v15); ; i += 2)
    {
      if (v16 == v15)
      {

        v36(v37, v6);
        sub_1DC51721C();
        OUTLINED_FUNCTION_0_2();
        (*(v31 + 8))(v38);
        return v18;
      }

      if (v15 >= *(a3 + 16))
      {
        break;
      }

      if (*(v14 + 16))
      {
        v21 = *(i - 1);
        v20 = *i;

        v22 = sub_1DC2AEB04(v21, v20);
        if (v23)
        {
          v24 = (*(v14 + 56) + 16 * v22);
          v25 = v24[1];
          v33 = *v24;

          result = swift_isUniquelyReferenced_nonNull_native();
          v34 = v25;
          if ((result & 1) == 0)
          {
            result = sub_1DC303F84(0, v18[2] + 1, 1, v18);
            v18 = result;
          }

          v27 = v18[2];
          v26 = v18[3];
          v28 = v27 + 1;
          if (v27 >= v26 >> 1)
          {
            v32 = v27 + 1;
            result = sub_1DC303F84((v26 > 1), v27 + 1, 1, v18);
            v28 = v32;
            v18 = result;
          }

          ++v15;
          v18[2] = v28;
          v29 = &v18[4 * v27];
          v29[4] = v21;
          v29[5] = v20;
          v30 = v34;
          v29[6] = v33;
          v29[7] = v30;
          v17 = v35;
          goto LABEL_5;
        }
      }

      ++v15;
    }

    __break(1u);
  }

  else
  {

    v11(a2, v6);
    sub_1DC51721C();
    OUTLINED_FUNCTION_0_2();
    (*(v13 + 8))(a1);
    return 0;
  }

  return result;
}

uint64_t sub_1DC303BF4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v19 = MEMORY[0x1E69E7CC0];
    sub_1DC2DF6FC(0, v1, 0);
    v3 = (a1 + 56);
    do
    {
      v4 = *(v3 - 3);
      v5 = *(v3 - 2);
      v7 = *(v3 - 1);
      v6 = *v3;
      swift_bridgeObjectRetain_n();

      sub_1DC303DF0(1, v4, v5);
      v8 = sub_1DC517DAC();
      v10 = v9;

      v11 = sub_1DC303EB0(1uLL, v4, v5);
      sub_1DC30411C(v11, v12, v13);

      sub_1DC51789C();

      MEMORY[0x1E1296160](8250, 0xE200000000000000);
      MEMORY[0x1E1296160](v7, v6);

      v15 = *(v19 + 16);
      v14 = *(v19 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_1DC2DF6FC((v14 > 1), v15 + 1, 1);
      }

      *(v19 + 16) = v15 + 1;
      v16 = v19 + 16 * v15;
      *(v16 + 32) = v8;
      *(v16 + 40) = v10;
      v3 += 4;
      --v1;
    }

    while (v1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C130, &unk_1DC5240F0);
  sub_1DC2DFC38();
  v17 = sub_1DC5176AC();

  return v17;
}

uint64_t sub_1DC303DF0(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    sub_1DC51785C();
    v3 = sub_1DC5179AC();

    return v3;
  }

  return result;
}

unint64_t sub_1DC303EB0(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    if ((a3 & 0x2000000000000000) != 0)
    {
      v3 = HIBYTE(a3) & 0xF;
    }

    else
    {
      v3 = a2 & 0xFFFFFFFFFFFFLL;
    }

    v4 = 7;
    if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
    {
      v4 = 11;
    }

    v5 = v4 | (v3 << 16);
    result = sub_1DC51785C();
    if (v6)
    {
      result = v5;
    }

    if (4 * v3 >= result >> 14)
    {
      v7 = sub_1DC5179AC();

      return v7;
    }
  }

  __break(1u);
  return result;
}

void *sub_1DC303F84(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C878, &qword_1DC523440);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 32);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[4 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C880, &unk_1DC528A50);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1DC3040B4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7DFE0, &qword_1DC5227F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1DC30411C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECC7C870;
  if (!qword_1ECC7C870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC7C870);
  }

  return result;
}

uint64_t sub_1DC304180@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v110 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C220, &qword_1DC52F230);
  MEMORY[0x1EEE9AC00](v3 - 8);
  OUTLINED_FUNCTION_14(&v89 - v4);
  v105 = sub_1DC510FDC();
  OUTLINED_FUNCTION_0();
  v99 = v5;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_14(v8 - v7);
  v114 = sub_1DC51179C();
  OUTLINED_FUNCTION_0();
  v96 = v9;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_1();
  v13 = v12 - v11;
  v115 = sub_1DC51164C();
  OUTLINED_FUNCTION_0();
  v113 = v14;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_1();
  v18 = v17 - v16;
  v102 = sub_1DC51122C();
  OUTLINED_FUNCTION_0();
  v98 = v19;
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_1();
  v101 = v22 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C158, &unk_1DC5234A0);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v25 = &v89 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C160, qword_1DC5233B0);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v28 = &v89 - v27;
  v29 = type metadata accessor for NLRouterNLParseResponse(0);
  OUTLINED_FUNCTION_35();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_14(v32 - v31);
  sub_1DC516F5C();
  OUTLINED_FUNCTION_0();
  v108 = v34;
  v109 = v33;
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_1();
  v37 = v36 - v35;
  v38 = sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
  v39 = sub_1DC2BE518();
  v40 = OUTLINED_FUNCTION_130();
  v106 = v38;
  v107 = v37;
  sub_1DC2A2ED0("HeuristicRules.StopMediaRule", 28, 2, v39, v40 & 1, v37);

  v41 = type metadata accessor for NLRouterServiceRequest(0);
  v42 = *(v41 + 32);
  v112 = a1;
  sub_1DC28F358(a1 + v42, v25, &qword_1ECC7C158, &unk_1DC5234A0);
  v43 = type metadata accessor for NLRouterTurnProbingResult(0);
  if (__swift_getEnumTagSinglePayload(v25, 1, v43) == 1)
  {
    sub_1DC28EB30(v25, &qword_1ECC7C158, &unk_1DC5234A0);
    __swift_storeEnumTagSinglePayload(v28, 1, 1, v29);
LABEL_4:
    sub_1DC28EB30(v28, &qword_1ECC7C160, qword_1DC5233B0);
    v44 = sub_1DC5157EC();
    v45 = v110;
    goto LABEL_37;
  }

  sub_1DC28F358(v25, v28, &qword_1ECC7C160, qword_1DC5233B0);
  sub_1DC2E5408(v25, type metadata accessor for NLRouterTurnProbingResult);
  if (__swift_getEnumTagSinglePayload(v28, 1, v29) == 1)
  {
    goto LABEL_4;
  }

  v46 = v103;
  sub_1DC2E53A4(v28, v103);
  sub_1DC298C74(0, &qword_1ECC7B9B0, 0x1E695E000);
  v47 = sub_1DC344540();
  v49 = v48;
  if (v47 == sub_1DC312FB4(0) && v49 == v50)
  {

    v55 = v110;
  }

  else
  {
    v52 = sub_1DC51825C();

    v53 = v105;
    v54 = v104;
    v55 = v110;
    if ((v52 & 1) == 0)
    {
      v56 = type metadata accessor for NLRouterBypassUtils();
      v57 = *(v112 + *(v41 + 24));
      v100 = v56;
      result = sub_1DC308358(v57);
      if (result)
      {
        v59 = *v46;
        v91 = *(*v46 + 16);
        if (v91)
        {
          v60 = 0;
          v94 = v59 + ((*(v98 + 80) + 32) & ~*(v98 + 80));
          v93 = v98 + 16;
          v111 = v113 + 16;
          v61 = v96 + 1;
          ++v99;
          v62 = (v113 + 8);
          v92 = v98 + 8;
          v90 = v59;
          v96 = (v113 + 8);
          while (2)
          {
            if (v60 >= *(v59 + 16))
            {
LABEL_41:
              __break(1u);
              return result;
            }

            v63 = v60;
            (*(v98 + 16))(v101, v94 + *(v98 + 72) * v60, v102);
            v95 = v63 + 1;
            result = sub_1DC5111AC();
            v64 = result;
            v65 = 0;
            v112 = *(result + 16);
            while (v112 != v65)
            {
              if (v65 >= *(v64 + 16))
              {
                __break(1u);
                goto LABEL_41;
              }

              (*(v113 + 16))(v18, v64 + ((*(v113 + 80) + 32) & ~*(v113 + 80)) + *(v113 + 72) * v65, v115);
              sub_1DC51154C();
              v66 = sub_1DC51177C();
              v67 = *v61;
              (*v61)(v13, v114);
              if (v66)
              {
                sub_1DC51154C();
                sub_1DC51178C();
                v67(v13, v114);
                v68 = sub_1DC307E5C(v54);
                (*v99)(v54, v53);
                if (v68)
                {

                  sub_1DC51478C();

                  sub_1DC28F358(&v118, &v116, &qword_1ECC7D3F0, &qword_1DC5238B0);
                  if (*(&v117 + 1))
                  {
                    sub_1DC514AAC();
                    if (swift_dynamicCast())
                    {

                      sub_1DC514CFC();

                      if (v116 && (v69 = sub_1DC51484C(), , v69))
                      {
                        v70 = v97;
                        sub_1DC514ADC();

                        v71 = sub_1DC514AEC();
                        EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v70, 1, v71);
                        sub_1DC28EB30(v70, &qword_1ECC7C220, &qword_1DC52F230);
                        v53 = v105;
                        v54 = v104;
                        if (EnumTagSinglePayload != 1)
                        {
                          sub_1DC28EB30(&v118, &qword_1ECC7D3F0, &qword_1DC5238B0);
                          v62 = v96;
LABEL_39:
                          (*v62)(v18, v115);
                          v82 = OUTLINED_FUNCTION_4_7();
                          v83(v82);

                          OUTLINED_FUNCTION_4();
                          sub_1DC2E5408(v103, v84);
                          v85 = *MEMORY[0x1E69D02D8];
                          v86 = sub_1DC5157EC();
                          OUTLINED_FUNCTION_35();
                          v88 = v110;
                          (*(v87 + 104))(v110, v85, v86);
                          v45 = v88;
                          v77 = 0;
                          v44 = v86;
                          goto LABEL_38;
                        }
                      }

                      else
                      {

                        v53 = v105;
                        v54 = v104;
                      }
                    }

                    else
                    {
                    }
                  }

                  else
                  {

                    sub_1DC28EB30(&v116, &qword_1ECC7D3F0, &qword_1DC5238B0);
                  }

                  v116 = v118;
                  v117 = v119;
                  if (*(&v119 + 1))
                  {
                    sub_1DC51482C();
                    v73 = swift_dynamicCast();
                    v62 = v96;
                    if (v73)
                    {

                      goto LABEL_39;
                    }
                  }

                  else
                  {
                    sub_1DC28EB30(&v116, &qword_1ECC7D3F0, &qword_1DC5238B0);
                    v62 = v96;
                  }
                }
              }

              result = (*v62)(v18, v115);
              ++v65;
            }

            v74 = OUTLINED_FUNCTION_4_7();
            v75(v74);

            v60 = v95;
            v55 = v110;
            v46 = v103;
            v59 = v90;
            if (v95 != v91)
            {
              continue;
            }

            break;
          }
        }
      }
    }
  }

  OUTLINED_FUNCTION_4();
  sub_1DC2E5408(v46, v76);
  v44 = sub_1DC5157EC();
  v45 = v55;
LABEL_37:
  v77 = 1;
LABEL_38:
  __swift_storeEnumTagSinglePayload(v45, v77, 1, v44);
  v79 = v108;
  v78 = v109;
  v80 = v107;
  v81 = sub_1DC2BE518();
  sub_1DC2B8848(v80, "HeuristicRules.StopMediaRule", 28, 2, v81);

  return (*(v79 + 8))(v80, v78);
}

uint64_t sub_1DC304CF8()
{
  v0 = swift_allocObject();
  sub_1DC304D30();
  return v0;
}

uint64_t sub_1DC304D30()
{
  sub_1DC516DFC();
  swift_allocObject();
  *(v0 + 16) = sub_1DC516DEC();
  *(v0 + 24) = 0;
  *(v0 + 28) = 0;
  return v0;
}

void sub_1DC304D7C(char a1)
{
  os_unfair_lock_lock((v1 + 24));
  *(v1 + 28) = a1;

  os_unfair_lock_unlock((v1 + 24));
}

uint64_t sub_1DC304DBC()
{
  os_unfair_lock_lock((v0 + 24));
  v1 = *(v0 + 28);
  os_unfair_lock_unlock((v0 + 24));
  return v1;
}

uint64_t sub_1DC304DF0()
{

  return MEMORY[0x1EEE6BDC0](v0, 29, 7);
}

uint64_t sub_1DC304E4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a1 == a4)
  {
    if (a3)
    {
      if (a6)
      {
        v6 = a2 == a5 && a3 == a6;
        if (v6 || (sub_1DC51825C() & 1) != 0)
        {
          return 1;
        }
      }
    }

    else if (!a6)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_1DC304EAC(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1DC51832C();
  sub_1DC51832C();
  if (!a4)
  {
    return sub_1DC51831C();
  }

  sub_1DC51831C();
  OUTLINED_FUNCTION_45();

  return sub_1DC51769C();
}

uint64_t sub_1DC304F2C(unint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1DC5182FC();
  sub_1DC51832C();
  sub_1DC51832C();
  sub_1DC51831C();
  if (a3)
  {
    OUTLINED_FUNCTION_45();
    sub_1DC51769C();
  }

  return sub_1DC51833C();
}

uint64_t sub_1DC304FF8(uint64_t a1)
{
  v2 = *(v1 + 16);
  sub_1DC5182FC();
  sub_1DC51832C();
  sub_1DC51832C();
  sub_1DC51831C();
  if (v2)
  {
    sub_1DC51769C();
  }

  return sub_1DC51833C();
}

unint64_t sub_1DC305088(char a1, uint64_t a2, uint64_t a3)
{
  sub_1DC517F4C();

  if (a1)
  {
    v6 = 1702195828;
  }

  else
  {
    v6 = 0x65736C6166;
  }

  if (a1)
  {
    v7 = 0xE400000000000000;
  }

  else
  {
    v7 = 0xE500000000000000;
  }

  MEMORY[0x1E1296160](v6, v7);

  MEMORY[0x1E1296160](0x617053726D646D20, 0xEB0000000020736ELL);
  v8 = MEMORY[0x1E12962D0](a2, &type metadata for MDMRSpan);
  MEMORY[0x1E1296160](v8);

  MEMORY[0x1E1296160](0x49797469746E6520, 0xEB00000000207364);
  v9 = MEMORY[0x1E12962D0](a3, MEMORY[0x1E69E6158]);
  MEMORY[0x1E1296160](v9);

  return 0xD000000000000012;
}

unint64_t sub_1DC3051D4(void *a1, uint64_t a2, void *a3)
{
  v5 = sub_1DC308ACC(a3);
  v71 = 0;
  v72 = 0xE000000000000000;

  v6 = sub_1DC517B9C();
  sub_1DC297814();
  v7 = sub_1DC2BE518();
  if (os_log_type_enabled(v7, v6))
  {
    v8 = swift_slowAlloc();
    v69 = swift_slowAlloc();
    *v8 = 136315394;
    v9 = MEMORY[0x1E12962D0](v5, &type metadata for MDMRSpan);
    v11 = sub_1DC291244(v9, v10, &v69);

    *(v8 + 4) = v11;
    *(v8 + 12) = 2080;

    v12 = OUTLINED_FUNCTION_36();
    v15 = sub_1DC291244(v12, v13, v14);

    *(v8 + 14) = v15;
    _os_log_impl(&dword_1DC287000, v7, v6, "Decorating utterance with spans %s for query %s", v8, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_66();
    OUTLINED_FUNCTION_66();
  }

  v16 = *(v5 + 16);
  if (v16)
  {
    v18 = *(v5 + 32);
    v17 = *(v5 + 36);

    OUTLINED_FUNCTION_45();
    sub_1DC3294A0();

    v19 = OUTLINED_FUNCTION_42_2();
    MEMORY[0x1E1296160](v19);

    v66 = v5;
    v20 = v5 + 72;
    for (i = v16 - 1; ; --i)
    {
      sub_1DC428688(6);
      MEMORY[0x1E1296120]();

      v69 = a1;
      v70 = a2;
      sub_1DC2A32B0(v21, v22, v23);
      swift_bridgeObjectRetain_n();
      v24 = OUTLINED_FUNCTION_73_0(v18, &v69);
      v69 = a1;
      v70 = a2;

      result = OUTLINED_FUNCTION_73_0(v17, &v69);
      if (result >> 14 < v24 >> 14)
      {
        break;
      }

      v26 = OUTLINED_FUNCTION_72_2(result);
      v28 = v27;
      v30 = v29;
      v32 = v31;

      MEMORY[0x1E1296130](v26, v28, v30, v32);

      sub_1DC428688(7);
      MEMORY[0x1E1296120]();

      if (!i)
      {

        v5 = v66;
        goto LABEL_10;
      }

      v34 = *(v20 - 16);
      v33 = *(v20 - 12);

      v69 = a1;
      v70 = a2;

      v35 = OUTLINED_FUNCTION_73_0(v17, &v69);
      v69 = a1;
      v70 = a2;

      result = OUTLINED_FUNCTION_73_0(v34, &v69);
      if (result >> 14 < v35 >> 14)
      {
        goto LABEL_22;
      }

      v67 = v33;
      v36 = v34;
      v37 = OUTLINED_FUNCTION_72_2(result);
      v39 = v38;
      v41 = v40;
      v43 = v42;

      v44 = v37;
      v18 = v36;
      MEMORY[0x1E1296130](v44, v39, v41, v43);

      v20 += 24;
      v17 = v67;
    }

    __break(1u);
LABEL_22:
    __break(1u);
  }

  else
  {
LABEL_10:
    v45 = sub_1DC30570C(v5);
    v47 = v46;
    v49 = v48;

    if (v49 != 1)
    {
      OUTLINED_FUNCTION_36();
      v50 = sub_1DC51783C();
      sub_1DC30B30C(v45, v47, v49);
      if (HIDWORD(v45) < v50)
      {

        OUTLINED_FUNCTION_45();
        v53 = sub_1DC329368(v51, v52);
        v55 = v54;

        MEMORY[0x1E1296160](v53, v55);
      }
    }

    v57 = v71;
    v56 = v72;
    v58 = HIBYTE(v72) & 0xF;
    if ((v72 & 0x2000000000000000) == 0)
    {
      v58 = v71 & 0xFFFFFFFFFFFFLL;
    }

    if (v58)
    {

      v59 = sub_1DC517B9C();
      v60 = sub_1DC2BE518();
      if (os_log_type_enabled(v60, v59))
      {

        v61 = swift_slowAlloc();
        v62 = swift_slowAlloc();
        v69 = v62;
        *v61 = 136315138;
        v63 = sub_1DC291244(v57, v56, &v69);

        *(v61 + 4) = v63;
        _os_log_impl(&dword_1DC287000, v60, v59, "Decorated user query with md spans :%s", v61, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v62);
        OUTLINED_FUNCTION_66();
        OUTLINED_FUNCTION_66();
      }

      return v57;
    }

    else
    {

      v64 = sub_1DC517B9C();
      v65 = sub_1DC2BE518();
      sub_1DC516F0C(v64, &dword_1DC287000, v65, "This is odd. Result is empty. Return original query", 51, 2, MEMORY[0x1E69E7CC0]);

      return a1;
    }
  }

  return result;
}

uint64_t sub_1DC30570C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = *(a1 + 24 * v1 + 8);

  return v2;
}

void sub_1DC30576C()
{
  OUTLINED_FUNCTION_33();
  v31 = sub_1DC51122C();
  OUTLINED_FUNCTION_0();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_56_2();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C158, &unk_1DC5234A0);
  OUTLINED_FUNCTION_10(v5);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v6);
  v8 = v30 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C160, qword_1DC5233B0);
  OUTLINED_FUNCTION_10(v9);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v10);
  v11 = OUTLINED_FUNCTION_58_0();
  v12 = type metadata accessor for NLRouterNLParseResponse(v11);
  OUTLINED_FUNCTION_35();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_1();
  v16 = v15 - v14;
  v17 = OUTLINED_FUNCTION_54_2();
  sub_1DC28F3B8(v17, v18, &qword_1ECC7C158, &unk_1DC5234A0);
  v19 = type metadata accessor for NLRouterTurnProbingResult(0);
  OUTLINED_FUNCTION_39(v8, 1, v19);
  if (v20)
  {
    sub_1DC28EB30(v8, &qword_1ECC7C158, &unk_1DC5234A0);
    __swift_storeEnumTagSinglePayload(v1, 1, 1, v12);
    goto LABEL_6;
  }

  sub_1DC28F3B8(v8, v1, &qword_1ECC7C160, qword_1DC5233B0);
  sub_1DC30C114(v8, type metadata accessor for NLRouterTurnProbingResult);
  OUTLINED_FUNCTION_39(v1, 1, v12);
  if (v20)
  {
LABEL_6:
    sub_1DC28EB30(v1, &qword_1ECC7C160, qword_1DC5233B0);
    v21 = sub_1DC517B9C();
    sub_1DC297814();
    v22 = sub_1DC2BE518();
    sub_1DC516F0C(v21, &dword_1DC287000, v22, "probingResult/siriXParse missing from request", 45, 2, MEMORY[0x1E69E7CC0]);

LABEL_7:
    OUTLINED_FUNCTION_34();
    return;
  }

  sub_1DC30C0BC(v1, v16);
  v23 = *v16;
  v24 = *(*v16 + 16);
  v30[1] = v16;
  v30[2] = v3 + 16;

  v25 = 0;
  v26 = v31;
  while (1)
  {
    if (v24 == v25)
    {

      OUTLINED_FUNCTION_23_7();
      goto LABEL_7;
    }

    if (v25 >= *(v23 + 16))
    {
      break;
    }

    OUTLINED_FUNCTION_24();
    (*(v3 + 16))(v0, v23 + v27 + *(v3 + 72) * v25++, v26);
    sub_1DC305AEC();
    v29 = v28;
    (*(v3 + 8))(v0, v26);
    if (v29)
    {
      OUTLINED_FUNCTION_23_7();

      goto LABEL_7;
    }
  }

  __break(1u);
}

void sub_1DC305AEC()
{
  OUTLINED_FUNCTION_38_2();
  v337 = sub_1DC51166C();
  OUTLINED_FUNCTION_0();
  v299 = v1;
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_14(v4);
  v313 = sub_1DC51179C();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_54_0();
  v365 = sub_1DC51661C();
  OUTLINED_FUNCTION_0();
  v304 = v6;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_15();
  v364 = v8;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_62();
  v363 = v10;
  v362 = sub_1DC510FFC();
  OUTLINED_FUNCTION_0();
  v303 = v11;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_14(v14);
  sub_1DC51665C();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_14(v18);
  sub_1DC51133C();
  OUTLINED_FUNCTION_0();
  v377 = v20;
  v378 = v19;
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_14(v22);
  v367 = sub_1DC51667C();
  OUTLINED_FUNCTION_0();
  v302 = v23;
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_1();
  v366 = v26 - v25;
  v27 = sub_1DC5116FC();
  OUTLINED_FUNCTION_0();
  v29 = v28;
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_14(v40);
  v41 = sub_1DC511E1C();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_14(v44);
  v326 = sub_1DC510FDC();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_14(v47);
  v324 = sub_1DC510EEC();
  OUTLINED_FUNCTION_0();
  v49 = v48;
  MEMORY[0x1EEE9AC00](v50);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_14(v52 - v51);
  v308 = sub_1DC511EEC();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_14(v55 - v54);
  v327 = sub_1DC51164C();
  OUTLINED_FUNCTION_0();
  v57 = v56;
  MEMORY[0x1EEE9AC00](v58);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v59);
  OUTLINED_FUNCTION_62();
  v301 = v60;
  v61 = v27;
  v342 = v27;
  v376 = v29;
  v368 = v41;
  v317 = v57;
  v311 = *(sub_1DC5111AC() + 16);
  v309 = v0;
  if (v311)
  {
    LOBYTE(v62) = 0;
    OUTLINED_FUNCTION_24();
    v312 = v63 + v64;
    v322 = v49;
    v344 = ((v65 - 32) | 0x8000000000000000);
    OUTLINED_FUNCTION_62_7();
    v352 = v66;
    OUTLINED_FUNCTION_62_7();
    v375 = (v29 + 8);
    OUTLINED_FUNCTION_62_7();
    v349 = v67;
    OUTLINED_FUNCTION_62_7();
    v347 = v70;
    v369 = MEMORY[0x1E69E7CC0];
    v328 = MEMORY[0x1E69E7CC0];
    v71 = v351;
    v72 = v301;
    v73 = v61;
    v310 = v68;
    do
    {
      if (v69 >= *(v68 + 16))
      {
        goto LABEL_157;
      }

      v314 = v69;
      (*(v57 + 16))(v72, v312 + *(v57 + 72) * v69, v327);
      if (sub_1DC51151C())
      {
        sub_1DC51161C();
        v74 = sub_1DC5111AC();
        OUTLINED_FUNCTION_37();
        v75(v307, v308);
        v319 = *(v74 + 16);
        if (v319)
        {
          v76 = v322;
          OUTLINED_FUNCTION_24();
          v320 = v74 + v78;
          v318 = v74;
          do
          {
            if (v77 >= *(v74 + 16))
            {
              goto LABEL_155;
            }

            v79 = v77;
            (*(v76 + 16))(v323, v320 + *(v76 + 72) * v77, v324);
            v332 = v79 + 1;
            sub_1DC510EDC();
            (*(v76 + 8))(v323, v324);
            v80 = sub_1DC510FBC();
            v81 = *(v80 + 16);
            while (1)
            {
              if (!v81)
              {

                OUTLINED_FUNCTION_37();
                v90(v330, v326);
                v76 = v322;
                goto LABEL_63;
              }

              if (!*(v80 + 16))
              {
                goto LABEL_149;
              }

              OUTLINED_FUNCTION_22_0();
              (*(v83 + 16))(v325, v80 + v82, v41);
              sub_1DC511DBC();
              OUTLINED_FUNCTION_68_0();
              v87 = v87 && v344 == v85;
              if (v87)
              {
                break;
              }

              v88 = OUTLINED_FUNCTION_51_6(v84, v85, v86, v344);

              OUTLINED_FUNCTION_37();
              v89(v325, v41);
              if (v88)
              {
                goto LABEL_19;
              }
            }

            OUTLINED_FUNCTION_37();
            v91(v325, v41);
LABEL_19:

            v92 = v330;
            v370 = *(sub_1DC510FCC() + 16);
            if (v370)
            {
              v93 = 0;
              OUTLINED_FUNCTION_24();
              OUTLINED_FUNCTION_43_5(v94 + v95);
              v80 = v341;
              v359 = v96;
              while (1)
              {
                if (v93 >= *(v96 + 16))
                {
                  __break(1u);
LABEL_148:
                  __break(1u);
LABEL_149:
                  __break(1u);
LABEL_150:
                  __break(1u);
LABEL_151:
                  __break(1u);
LABEL_152:
                  __break(1u);
LABEL_153:
                  __break(1u);
LABEL_154:
                  __break(1u);
LABEL_155:
                  __break(1u);
LABEL_156:
                  __break(1u);
LABEL_157:
                  __break(1u);
LABEL_158:
                  __break(1u);
                  return;
                }

                (*(v376 + 16))(v80, v361 + *(v376 + 72) * v93, v73);
                sub_1DC51168C();
                v97 = sub_1DC51666C();
                v98 = *v352;
                (*v352)(v366, v367);
                sub_1DC5116DC();
                v99 = v80;
                v100 = sub_1DC51666C();
                v98(v366, v367);
                v373 = v97;
                if (v97 == v100)
                {
                  v101 = OUTLINED_FUNCTION_48_0();
                  v102(v101);
                  v41 = v368;
                  v80 = v99;
                  goto LABEL_45;
                }

                v103 = sub_1DC51167C();
                v104 = *(v103 + 16);
                if (!v104)
                {

                  v114 = 0;
                  v115 = 0;
                  goto LABEL_40;
                }

                v62 = 0;
                OUTLINED_FUNCTION_22_0();
                v107 = v103 + v106;
                while (1)
                {
                  if (v62 >= *(v103 + 16))
                  {
                    __break(1u);
                    goto LABEL_143;
                  }

                  (*(v105 + 16))(v71, v107 + *(v105 + 72) * v62, v378);
                  sub_1DC51131C();
                  OUTLINED_FUNCTION_36_6();
                  if (v87 && v109 == 0xEA00000000006563)
                  {
                  }

                  else
                  {
                    v111 = OUTLINED_FUNCTION_70_1(v108);

                    if ((v111 & 1) == 0)
                    {
                      goto LABEL_35;
                    }
                  }

                  if (sub_1DC51130C())
                  {
                    break;
                  }

LABEL_35:
                  ++v62;
                  v112 = OUTLINED_FUNCTION_52_5();
                  v113(v112);
                  v105 = v377;
                  if (v104 == v62)
                  {

                    v114 = 0;
                    v115 = 0;
                    goto LABEL_39;
                  }
                }

                sub_1DC5112FC();
                v114 = sub_1DC51664C();
                v115 = v116;
                OUTLINED_FUNCTION_37();
                OUTLINED_FUNCTION_69_3();
                v117();
                v118 = OUTLINED_FUNCTION_52_5();
                v119(v118);
LABEL_39:
                v73 = v342;
LABEL_40:
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v123 = OUTLINED_FUNCTION_13_0();
                  v369 = sub_1DC30AFA8(v123, v124, v125, v126);
                }

                v121 = *(v369 + 2);
                v120 = *(v369 + 3);
                if (v121 >= v120 >> 1)
                {
                  v127 = OUTLINED_FUNCTION_26(v120);
                  v369 = sub_1DC30AFA8(v127, v121 + 1, 1, v369);
                }

                (*v375)(v341, v73);
                *(v369 + 2) = v121 + 1;
                v122 = &v369[24 * v121];
                *(v122 + 8) = v373;
                *(v122 + 9) = v100;
                v80 = v341;
                *(v122 + 5) = v114;
                *(v122 + 6) = v115;
                v41 = v368;
LABEL_45:
                ++v93;
                v96 = v359;
                if (v93 == v370)
                {

                  v92 = v330;
                  goto LABEL_48;
                }
              }
            }

LABEL_48:
            v128 = sub_1DC510FCC();
            OUTLINED_FUNCTION_43_5(*(v128 + 16));
            if (v129)
            {
              OUTLINED_FUNCTION_22_0();
              v131 = v357;
              v355 = v128 + v132;
              v354 = *(v130 + 16);
              v354();
              v133 = v358;
              for (i = v128; ; v128 = i)
              {
                OUTLINED_FUNCTION_63_2();
                if (v135 == v134)
                {
                  break;
                }

                if (v134 >= *(v128 + 16))
                {
                  goto LABEL_148;
                }

                (v354)(v133, v355 + *(v376 + 72) * v134, v73);
                OUTLINED_FUNCTION_57_5();
                sub_1DC5116EC();
                sub_1DC510FEC();
                v371 = *v349;
                (*v349)(v80, v362);
                sub_1DC51660C();
                v137 = v136;
                v138 = *v347;
                (*v347)(v363, v365);
                OUTLINED_FUNCTION_57_5();
                sub_1DC5116EC();
                sub_1DC510FEC();
                v139 = OUTLINED_FUNCTION_54_2();
                (v371)(v139);
                sub_1DC51660C();
                v141 = v140;
                v138(v364, v365);
                v142 = *(v376 + 8);
                if (v137 >= v141)
                {
                  v133 = v358;
                  v142(v358, v73);
                  v71 = v351;
                  v131 = v357;
                }

                else
                {
                  v131 = v357;
                  v142(v357, v73);
                  OUTLINED_FUNCTION_37();
                  v133 = v358;
                  v143(v357, v358, v73);
                  v71 = v351;
                }
              }

              OUTLINED_FUNCTION_37();
              v144(v316, v131, v73);
              OUTLINED_FUNCTION_58_4();
              sub_1DC51165C();
              v145 = sub_1DC51664C();
              v147 = v146;
              OUTLINED_FUNCTION_37();
              OUTLINED_FUNCTION_69_3();
              v148();
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v156 = OUTLINED_FUNCTION_13_0();
                v159 = sub_1DC2ACCD4(v156, v157, v158, v328);
                OUTLINED_FUNCTION_60_4(v159);
              }

              v41 = v368;
              OUTLINED_FUNCTION_61_3();
              v151 = *(v149 + 16);
              v150 = *(v149 + 24);
              if (v151 >= v150 >> 1)
              {
                v160 = OUTLINED_FUNCTION_26(v150);
                v161 = sub_1DC2ACCD4(v160, v151 + 1, 1, v328);
                OUTLINED_FUNCTION_60_4(v161);
              }

              (*v375)(v316, v73);
              OUTLINED_FUNCTION_37();
              v152(v330, v326);
              OUTLINED_FUNCTION_61_3();
              *(v153 + 16) = v151 + 1;
              v154 = v153 + 16 * v151;
              *(v154 + 32) = v145;
              *(v154 + 40) = v147;
            }

            else
            {

              OUTLINED_FUNCTION_37();
              v155(v92, v326);
            }

            LOBYTE(v62) = 1;
            v76 = v322;
LABEL_63:
            v74 = v318;
            v77 = v332;
          }

          while (v332 != v319);

          v72 = v301;
        }

        else
        {
        }
      }

      OUTLINED_FUNCTION_37();
      v162(v72, v327);
      v69 = v314 + 1;
      v57 = v317;
      v68 = v310;
    }

    while (v314 + 1 != v311);
  }

  else
  {

    LOBYTE(v62) = 0;
    v369 = MEMORY[0x1E69E7CC0];
    v328 = MEMORY[0x1E69E7CC0];
    v73 = v61;
  }

  v163 = sub_1DC5111AC();
  v164 = v163;
  v333 = *(v163 + 16);
  if (!v333)
  {
    goto LABEL_143;
  }

  v165 = 0;
  v166 = v317;
  v331 = v163 + ((*(v166 + 80) + 32) & ~*(v166 + 80));
  v353 = *MEMORY[0x1E69D0A78];
  v350 = (v299 + 8);
  v374 = (v376 + 8);
  v334 = (v376 + 32);
  v348 = (v302 + 8);
  v346 = (v303 + 8);
  v345 = (v304 + 8);
  v167 = v327;
  v168 = v315;
  v321 = v163;
  do
  {
    if (v165 >= *(v164 + 16))
    {
      goto LABEL_156;
    }

    v339 = v165;
    (*(v166 + 16))(v168, v331 + *(v166 + 72) * v165, v167);
    if ((sub_1DC5114CC() & 1) == 0)
    {
      OUTLINED_FUNCTION_37();
      v180 = v168;
      v181 = v167;
LABEL_85:
      v179(v180, v181);
      goto LABEL_140;
    }

    sub_1DC51154C();
    if ((sub_1DC51177C() & 1) == 0)
    {
      OUTLINED_FUNCTION_37();
      v182 = OUTLINED_FUNCTION_38_6();
      v183(v182);
      OUTLINED_FUNCTION_37();
      v180 = v168;
      v181 = v327;
      goto LABEL_85;
    }

    OUTLINED_FUNCTION_58_4();
    sub_1DC51178C();
    v169 = sub_1DC510FBC();
    v170 = *(v169 + 16);
    while (1)
    {
      if (!v170)
      {

        v184 = OUTLINED_FUNCTION_10_6();
        v185(v184);
        OUTLINED_FUNCTION_37();
        v186 = OUTLINED_FUNCTION_38_6();
        v187(v186);
        v188 = OUTLINED_FUNCTION_12_7();
        v189(v188);
        goto LABEL_139;
      }

      if (!*(v169 + 16))
      {
        goto LABEL_154;
      }

      OUTLINED_FUNCTION_22_0();
      (*(v172 + 16))(v329, v169 + v171, v41);
      sub_1DC511DBC();
      OUTLINED_FUNCTION_68_0();
      if (v87 && 0x80000001DC53E3A0 == v174)
      {
        break;
      }

      v177 = OUTLINED_FUNCTION_51_6(v173, v174, v175, 0x80000001DC53E3A0);

      OUTLINED_FUNCTION_37();
      v178(v329, v41);
      if (v177)
      {
        goto LABEL_88;
      }
    }

    OUTLINED_FUNCTION_37();
    v190(v329, v41);
LABEL_88:

    v191 = sub_1DC510FCC();
    v192 = 0;
    OUTLINED_FUNCTION_43_5(*(v191 + 16));
    v372 = MEMORY[0x1E69E7CC0];
    v193 = v306;
    while (1)
    {
      OUTLINED_FUNCTION_63_2();
      if (v194 == v192)
      {
        break;
      }

      if (v192 >= *(v191 + 16))
      {
        goto LABEL_151;
      }

      v195 = v73;
      v196 = (*(v376 + 80) + 32) & ~*(v376 + 80);
      v197 = *(v376 + 72);
      (*(v376 + 16))(v193, v191 + v196 + v197 * v192, v195);
      OUTLINED_FUNCTION_58_4();
      sub_1DC5116BC();
      OUTLINED_FUNCTION_37();
      v198(v336, v353, v337);
      sub_1DC30C16C(&qword_1ECC7C230, MEMORY[0x1E69D0A80], MEMORY[0x1E69D0A88]);
      sub_1DC5179EC();
      sub_1DC5179EC();
      v199 = *v350;
      (*v350)(v336, v337);
      v200 = OUTLINED_FUNCTION_65_1();
      (v199)(v200);
      if (v380 == v379 && (sub_1DC5116AC() & 1) != 0 && (sub_1DC51169C() & 1) != 0)
      {
        v203 = *v334;
        (*v334)(v300, v193, v342);
        v204 = v372;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1DC30BC08(0, *(v372 + 16) + 1, 1);
          v193 = v306;
          v204 = v372;
        }

        v206 = *(v204 + 16);
        v205 = *(v204 + 24);
        if (v206 >= v205 >> 1)
        {
          v208 = OUTLINED_FUNCTION_26(v205);
          sub_1DC30BC08(v208, v206 + 1, 1);
          v193 = v306;
          v204 = v372;
        }

        ++v192;
        *(v204 + 16) = v206 + 1;
        v372 = v204;
        v207 = v204 + v196 + v206 * v197;
        v73 = v342;
        v203(v207, v300, v342);
        v41 = v368;
      }

      else
      {
        v201 = OUTLINED_FUNCTION_35_7();
        v73 = v342;
        v202(v201, v342);
        ++v192;
        v41 = v368;
      }
    }

    v209 = v372;
    OUTLINED_FUNCTION_43_5(*(v372 + 16));
    if (!v210)
    {

      v275 = OUTLINED_FUNCTION_10_6();
      v276(v275);
      OUTLINED_FUNCTION_37();
      v277 = OUTLINED_FUNCTION_38_6();
      v278(v277);
      v279 = OUTLINED_FUNCTION_12_7();
      v280(v279);
      goto LABEL_138;
    }

    v211 = 0;
    OUTLINED_FUNCTION_24();
    v356 = v372 + v212;
    do
    {
      if (v211 >= *(v209 + 16))
      {
        goto LABEL_152;
      }

      (*(v376 + 16))(v335, v356 + *(v376 + 72) * v211, v73);
      sub_1DC51168C();
      v213 = sub_1DC51666C();
      v214 = *v348;
      (*v348)(v366, v367);
      sub_1DC5116DC();
      v215 = sub_1DC51666C();
      v216 = OUTLINED_FUNCTION_35_0();
      (v214)(v216);
      if (v213 == v215)
      {
        (*v374)(v335, v73);
        v209 = v372;
        goto LABEL_124;
      }

      v217 = sub_1DC51167C();
      v218 = *(v217 + 16);
      if (v218)
      {
        v219 = 0;
        OUTLINED_FUNCTION_22_0();
        v222 = v217 + v221;
        v223 = v343;
        do
        {
          if (v219 >= *(v217 + 16))
          {
            goto LABEL_150;
          }

          (*(v220 + 16))(v223, v222 + *(v220 + 72) * v219, v378);
          sub_1DC51131C();
          OUTLINED_FUNCTION_36_6();
          if (v87 && v225 == 0xEA00000000006563)
          {

            v223 = v343;
          }

          else
          {
            v227 = OUTLINED_FUNCTION_70_1(v224);

            v223 = v343;
            if ((v227 & 1) == 0)
            {
              goto LABEL_116;
            }
          }

          if (sub_1DC51130C())
          {

            OUTLINED_FUNCTION_58_4();
            sub_1DC5112FC();
            v230 = sub_1DC51664C();
            v231 = v232;
            OUTLINED_FUNCTION_37();
            OUTLINED_FUNCTION_69_3();
            v233();
            v234 = OUTLINED_FUNCTION_35_7();
            v235(v234, v378);
            goto LABEL_119;
          }

LABEL_116:
          ++v219;
          v228 = OUTLINED_FUNCTION_35_7();
          v229(v228, v378);
          v220 = v377;
        }

        while (v218 != v219);
      }

      v230 = 0;
      v231 = 0;
LABEL_119:
      v209 = v372;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v241 = OUTLINED_FUNCTION_13_0();
        v369 = sub_1DC30AFA8(v241, v242, v243, v244);
      }

      v237 = *(v369 + 2);
      v236 = *(v369 + 3);
      v238 = v335;
      if (v237 >= v236 >> 1)
      {
        v245 = OUTLINED_FUNCTION_26(v236);
        v246 = sub_1DC30AFA8(v245, v237 + 1, 1, v369);
        v238 = v335;
        v369 = v246;
      }

      (*v374)(v238, v342);
      *(v369 + 2) = v237 + 1;
      v239 = &v369[24 * v237];
      *(v239 + 8) = v213;
      *(v239 + 9) = v215;
      v73 = v342;
      *(v239 + 5) = v230;
      *(v239 + 6) = v231;
      v41 = v368;
LABEL_124:
      ++v211;
      OUTLINED_FUNCTION_63_2();
    }

    while (v211 != v240);
    if (!*(v209 + 16))
    {
      goto LABEL_158;
    }

    OUTLINED_FUNCTION_67_1();
    v247();
    while (1)
    {
      OUTLINED_FUNCTION_63_2();
      if (v249 == v248)
      {
        break;
      }

      if (v248 >= *(v209 + 16))
      {
        goto LABEL_153;
      }

      OUTLINED_FUNCTION_67_1();
      v250();
      OUTLINED_FUNCTION_57_5();
      sub_1DC5116EC();
      sub_1DC510FEC();
      v251 = *v346;
      (*v346)(v209, v362);
      sub_1DC51660C();
      v253 = v252;
      v254 = *v345;
      (*v345)(v363, v365);
      OUTLINED_FUNCTION_57_5();
      sub_1DC5116EC();
      sub_1DC510FEC();
      v251(v209, v362);
      sub_1DC51660C();
      v256 = v255;
      v254(v364, v365);
      OUTLINED_FUNCTION_37_2();
      v257();
      if (v253 < v256)
      {
        OUTLINED_FUNCTION_37();
        v258(v340, v338, v73);
      }

      v41 = v368;
      v209 = v372;
    }

    OUTLINED_FUNCTION_37();
    v259(v305, v340, v73);
    sub_1DC51165C();
    v260 = sub_1DC51664C();
    v262 = v261;
    OUTLINED_FUNCTION_37();
    OUTLINED_FUNCTION_69_3();
    v263();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v281 = OUTLINED_FUNCTION_13_0();
      v285 = sub_1DC2ACCD4(v281, v282, v283, v284);
      OUTLINED_FUNCTION_60_4(v285);
    }

    OUTLINED_FUNCTION_61_3();
    v266 = *(v264 + 16);
    v265 = *(v264 + 24);
    if (v266 >= v265 >> 1)
    {
      v286 = OUTLINED_FUNCTION_26(v265);
      v287 = sub_1DC2ACCD4(v286, v266 + 1, 1, v328);
      OUTLINED_FUNCTION_60_4(v287);
    }

    OUTLINED_FUNCTION_37_2();
    v267();
    v268 = OUTLINED_FUNCTION_10_6();
    v269(v268);
    OUTLINED_FUNCTION_37();
    v270(v309, v313);
    v271 = OUTLINED_FUNCTION_12_7();
    v272(v271);
    OUTLINED_FUNCTION_61_3();
    *(v273 + 16) = v266 + 1;
    v274 = v273 + 16 * v266;
    *(v274 + 32) = v260;
    *(v274 + 40) = v262;
LABEL_138:
    LOBYTE(v62) = 1;
LABEL_139:
    v164 = v321;
LABEL_140:
    v165 = v339 + 1;
    v167 = v327;
    v166 = v317;
    v168 = v315;
  }

  while (v339 + 1 != v333);
LABEL_143:

  v290 = sub_1DC307C8C(v369, v288, v289);
  v291 = sub_1DC307D58(v290);
  v292 = sub_1DC517B9C();
  sub_1DC297814();
  v293 = sub_1DC2BE518();
  if (os_log_type_enabled(v293, v292))
  {
    v294 = swift_slowAlloc();
    v381 = swift_slowAlloc();
    *v294 = 136315138;

    sub_1DC305088(v62 & 1, v291, v328);

    v295 = OUTLINED_FUNCTION_54_2();
    v298 = sub_1DC291244(v295, v296, v297);

    *(v294 + 4) = v298;
    _os_log_impl(&dword_1DC287000, v293, v292, "MDMR Span Info %s", v294, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v381);
    OUTLINED_FUNCTION_66();
    OUTLINED_FUNCTION_66();
  }
}

uint64_t sub_1DC307C8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 16);
  v5 = sub_1DC30D8AC(a1, a2, a3);
  result = MEMORY[0x1E12963F0](v4, &type metadata for MDMRSpan, v5);
  v7 = 0;
  v14 = result;
  v8 = *(a1 + 16);
  for (i = (a1 + 48); ; i += 3)
  {
    if (v8 == v7)
    {

      return v14;
    }

    if (v7 >= *(a1 + 16))
    {
      break;
    }

    ++v7;
    v11 = *(i - 1);
    v10 = *i;
    v12 = *(i - 2);

    sub_1DC30B320(&v13, v12, v11, v10);
  }

  __break(1u);
  return result;
}

void *sub_1DC307D58(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = sub_1DC30B1C0(*(a1 + 16), 0);
  v4 = sub_1DC30D740(&v6, v3 + 4, v2, a1);
  sub_1DC30D8A4();
  if (v4 != v2)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x1E69E7CC0];
  }

  return v3;
}

BOOL sub_1DC307DE8(void *a1)
{
  if (a1[2] != 1)
  {
    return 0;
  }

  v2 = a1[7];
  if (v2)
  {
    v3 = a1[6] & 0xFFFFFFFFFFFFLL;
    v4 = v2;
  }

  else
  {
    v3 = 0;
    v4 = 0xE000000000000000;
  }

  v5 = HIBYTE(v4) & 0xF;
  if ((v4 & 0x2000000000000000) == 0)
  {
    v5 = v3;
  }

  return !v5;
}

uint64_t sub_1DC307E5C(uint64_t a1)
{
  sub_1DC5138FC();
  v1 = MEMORY[0x1E1292F90]();
  result = sub_1DC2C20B8(v1);
  if (!result)
  {

    return 0;
  }

  if ((v1 & 0xC000000000000001) != 0)
  {
    v3 = MEMORY[0x1E1296800](0, v1);
    goto LABEL_5;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v3 = *(v1 + 32);

LABEL_5:

    return v3;
  }

  __break(1u);
  return result;
}

uint64_t sub_1DC307F68(uint64_t a1)
{
  v3 = OUTLINED_FUNCTION_54_2();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_10(v5);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_28_0();
  sub_1DC510FDC();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_8();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v23 - v9;
  sub_1DC28F3B8(a1, v1, &qword_1ECC7C890, &qword_1DC5234B0);
  sub_1DC510F1C();
  OUTLINED_FUNCTION_49_6();
  OUTLINED_FUNCTION_39(v11, v12, v13);
  if (v14)
  {
    sub_1DC28EB30(v1, &qword_1ECC7C890, &qword_1DC5234B0);
    return 0;
  }

  else
  {
    sub_1DC510F0C();
    v15 = OUTLINED_FUNCTION_48_0();
    v16(v15);
    v17 = OUTLINED_FUNCTION_65_1();
    v18(v17);
    type metadata accessor for NLRouterBypassUtils();
    v19 = sub_1DC307E5C(v10);
    v20 = OUTLINED_FUNCTION_36();
    v21(v20);
  }

  return v19;
}

uint64_t sub_1DC308134@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BFC8, &unk_1DC524050);
  OUTLINED_FUNCTION_10(v7);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_28_0();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BFC0, &unk_1DC522540);
  OUTLINED_FUNCTION_10(v9);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v10);
  v11 = OUTLINED_FUNCTION_25_3();
  v12 = type metadata accessor for TurnSummary(v11);
  OUTLINED_FUNCTION_35();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_56_2();
  v14 = *(a1 + 16);
  if (!v14)
  {
    goto LABEL_9;
  }

  sub_1DC2D8C78(*(a1 + 48 * v14 + 16), v4);
  OUTLINED_FUNCTION_39(v4, 1, v12);
  if (v20)
  {
    v15 = &qword_1ECC7BFC0;
    v16 = &unk_1DC522540;
    v17 = v4;
LABEL_8:
    sub_1DC28EB30(v17, v15, v16);
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_20_8();
  sub_1DC30C0BC(v4, v3);
  v18 = *(v12 + 28);
  sub_1DC28F3B8(v3 + v18, v2, &qword_1ECC7BFC8, &unk_1DC524050);
  v19 = type metadata accessor for TurnSummary.ExecutionSource(0);
  OUTLINED_FUNCTION_39(v2, 1, v19);
  if (v20)
  {
    OUTLINED_FUNCTION_0_7();
    sub_1DC30C114(v3, v21);
    v15 = &qword_1ECC7BFC8;
    v16 = &unk_1DC524050;
    v17 = v2;
    goto LABEL_8;
  }

  sub_1DC28EB30(v2, &qword_1ECC7BFC8, &unk_1DC524050);
  v24 = *(v3 + *(v12 + 32));
  if (v24 == 2 || (v24 & 1) == 0)
  {
    sub_1DC28F3B8(v3 + v18, a2, &qword_1ECC7BFC8, &unk_1DC524050);
    OUTLINED_FUNCTION_0_7();
    return sub_1DC30C114(v3, v26);
  }

  OUTLINED_FUNCTION_0_7();
  sub_1DC30C114(v3, v25);
LABEL_9:
  v22 = type metadata accessor for TurnSummary.ExecutionSource(0);
  return __swift_storeEnumTagSinglePayload(a2, 1, 1, v22);
}

uint64_t sub_1DC308358(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BFC8, &unk_1DC524050);
  OUTLINED_FUNCTION_10(v3);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_28_0();
  type metadata accessor for TurnSummary.ExecutionSource(0);
  OUTLINED_FUNCTION_35();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_8();
  v8 = v6 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v23 - v10;
  sub_1DC308134(a1, v1);
  OUTLINED_FUNCTION_49_6();
  OUTLINED_FUNCTION_39(v12, v13, v14);
  if (v15)
  {
    sub_1DC28EB30(v1, &qword_1ECC7BFC8, &unk_1DC524050);
  }

  else
  {
    sub_1DC30C0BC(v1, v11);
    v16 = OUTLINED_FUNCTION_36();
    sub_1DC30C0BC(v16, v17);
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BFD8, &unk_1DC5270D0);
    if (!__swift_getEnumTagSinglePayload(v8, 4, v18))
    {
      sub_1DC5161CC();
      OUTLINED_FUNCTION_35();
      (*(v22 + 8))(v8);
      return 1;
    }

    OUTLINED_FUNCTION_8_3();
    sub_1DC30C114(v8, v20);
  }

  return 0;
}

uint64_t sub_1DC308500(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BFC8, &unk_1DC524050);
  OUTLINED_FUNCTION_10(v3);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_56_2();
  type metadata accessor for TurnSummary.ExecutionSource(0);
  OUTLINED_FUNCTION_35();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_8();
  v8 = v6 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v23 - v10;
  sub_1DC308134(a1, v1);
  OUTLINED_FUNCTION_49_6();
  OUTLINED_FUNCTION_39(v12, v13, v14);
  if (v15)
  {
    sub_1DC28EB30(v1, &qword_1ECC7BFC8, &unk_1DC524050);
    LOBYTE(v1) = 0;
  }

  else
  {
    v16 = OUTLINED_FUNCTION_17_3();
    sub_1DC30C0BC(v16, v11);
    v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BFD8, &unk_1DC5270D0);
    __swift_storeEnumTagSinglePayload(v8, 2, 4, v1);
    OUTLINED_FUNCTION_43();
    static TurnSummary.ExecutionSource.== infix(_:_:)();
    v18 = v17;
    OUTLINED_FUNCTION_8_3();
    sub_1DC30C114(v8, v19);
    if (v18)
    {
      OUTLINED_FUNCTION_8_3();
      sub_1DC30C114(v11, v20);
      LOBYTE(v1) = 1;
    }

    else
    {
      __swift_storeEnumTagSinglePayload(v8, 3, 4, v1);
      OUTLINED_FUNCTION_43();
      static TurnSummary.ExecutionSource.== infix(_:_:)();
      OUTLINED_FUNCTION_18_5();
      sub_1DC30C114(v8, v21);
      sub_1DC30C114(v11, v18);
    }
  }

  return v1 & 1;
}

void sub_1DC3086B0()
{
  OUTLINED_FUNCTION_33();
  v2 = v1;
  v51 = v3;
  sub_1DC515F3C();
  OUTLINED_FUNCTION_0();
  v50[1] = v5;
  v50[2] = v4;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_28_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CA40, &unk_1DC5233A0);
  OUTLINED_FUNCTION_10(v6);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_56_8();
  v8 = sub_1DC5157EC();
  OUTLINED_FUNCTION_0();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_8();
  v14 = v12 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = v50 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BFC0, &unk_1DC522540);
  OUTLINED_FUNCTION_10(v18);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v19);
  v21 = v50 - v20;
  v22 = type metadata accessor for TurnSummary(0);
  OUTLINED_FUNCTION_35();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_1();
  v26 = v25 - v24;
  v27 = *(v2 + 16);
  if (!v27)
  {
    goto LABEL_9;
  }

  sub_1DC2D8C78(*(v2 + 48 * v27 + 16), v21);
  OUTLINED_FUNCTION_39(v21, 1, v22);
  if (v31)
  {
    v28 = &qword_1ECC7BFC0;
    v29 = &unk_1DC522540;
    v30 = v21;
LABEL_8:
    sub_1DC28EB30(v30, v28, v29);
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_20_8();
  sub_1DC30C0BC(v21, v26);
  sub_1DC28F3B8(v26 + *(v22 + 36), v0, &qword_1ECC7CA40, &unk_1DC5233A0);
  OUTLINED_FUNCTION_39(v0, 1, v8);
  if (v31)
  {
    OUTLINED_FUNCTION_0_7();
    sub_1DC30C114(v26, v32);
    v28 = &qword_1ECC7CA40;
    v29 = &unk_1DC5233A0;
    v30 = v0;
    goto LABEL_8;
  }

  (*(v10 + 32))(v17, v0, v8);
  v38 = OUTLINED_FUNCTION_42_2();
  v39(v38);
  if ((*(v10 + 88))(v14, v8) == *MEMORY[0x1E69D02E0])
  {
    (*(v10 + 96))(v14, v8);
    v40 = OUTLINED_FUNCTION_48_0();
    v41(v40);
    v36 = v51;
    sub_1DC515E2C();
    v42 = OUTLINED_FUNCTION_31_0();
    v43(v42);
    v44 = OUTLINED_FUNCTION_35_0();
    v45(v44);
    OUTLINED_FUNCTION_0_7();
    sub_1DC30C114(v26, v46);
    v35 = 0;
    goto LABEL_10;
  }

  v47 = *(v10 + 8);
  v48 = OUTLINED_FUNCTION_35_0();
  v47(v48);
  OUTLINED_FUNCTION_0_7();
  sub_1DC30C114(v26, v49);
  (v47)(v14, v8);
LABEL_9:
  v33 = sub_1DC517B9C();
  sub_1DC297814();
  v34 = sub_1DC2BE518();
  sub_1DC516F0C(v33, &dword_1DC287000, v34, "no tool found", 13, 2, MEMORY[0x1E69E7CC0]);

  v35 = 1;
  v36 = v51;
LABEL_10:
  v37 = sub_1DC5161CC();
  __swift_storeEnumTagSinglePayload(v36, v35, 1, v37);
  OUTLINED_FUNCTION_34();
}

uint64_t sub_1DC308ACC(void *a1)
{
  v24 = a1;

  sub_1DC30BFDC(&v24, sub_1DC30D6C4, &type metadata for MDMRSpan, sub_1DC30C56C, sub_1DC30C3E0);
  v1 = v24[2];
  if (v1)
  {
    v3 = v24 + 6;
    v2 = v24[6];
    v4 = v24[5];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C8B0, &unk_1DC524040);
    v5 = swift_allocObject();
    v6 = *(v3 - 2);
    *(v5 + 16) = xmmword_1DC522F20;
    *(v5 + 32) = v6;
    *(v5 + 40) = v4;
    *(v5 + 48) = v2;

    while (1)
    {
      v7 = *(v5 + 16);
      if (v7)
      {
        break;
      }

LABEL_23:
      v3 += 3;
      if (!--v1)
      {
        goto LABEL_26;
      }
    }

    v9 = *(v3 - 4);
    v8 = *(v3 - 3);
    v10 = *(v3 - 1);
    v11 = *v3;
    v12 = v5 + 24 * v7;
    v13 = *(v12 + 8);
    v14 = *(v12 + 12);
    v15 = v12 + 8;
    if (v14 < v9)
    {
      v16 = *(v5 + 24);

      if (v7 >= v16 >> 1)
      {
        v5 = sub_1DC30AFA8((v16 > 1), v7 + 1, 1, v5);
      }

      *(v5 + 16) = v7 + 1;
      v17 = v5 + 24 * v7;
      *(v17 + 32) = v9;
      *(v17 + 36) = v8;
      *(v17 + 40) = v10;
      *(v17 + 48) = v11;
      goto LABEL_23;
    }

    v18 = *(v15 + 16);
    if (v11)
    {
      if (v18)
      {
        v19 = v13;
        v20 = v10 == *(v15 + 8) && v11 == v18;
        if (v20 || (OUTLINED_FUNCTION_65_1(), v21 = sub_1DC51825C(), v13 = v19, (v21 & 1) != 0))
        {

          v13 = v19;
LABEL_19:
          if (v8 <= v14)
          {
            v22 = v14;
          }

          else
          {
            v22 = v8;
          }

          *v15 = v13;
          *(v15 + 4) = v22;
          *(v15 + 8) = v10;
          *(v15 + 16) = v11;

          goto LABEL_23;
        }
      }
    }

    else if (!v18)
    {
LABEL_18:
      v11 = 0;
      goto LABEL_19;
    }

    v10 = 0;
    goto LABEL_18;
  }

  v5 = MEMORY[0x1E69E7CC0];
LABEL_26:

  return v5;
}

uint64_t sub_1DC308CDC()
{
  v1 = OUTLINED_FUNCTION_42_2();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_10(v3);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_54_0();
  v5 = sub_1DC5167EC();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_28_0();
  v7 = type metadata accessor for NLRouterTurnContext(0);
  OUTLINED_FUNCTION_71_1(*(v7 + 28));
  OUTLINED_FUNCTION_39(v0, 1, v5);
  if (v8)
  {
    sub_1DC28EB30(v0, &qword_1ECC7BFE0, &unk_1DC5253A0);
  }

  else
  {
    v9 = OUTLINED_FUNCTION_31_0();
    v10(v9);
    sub_1DC5167BC();
    v11 = OUTLINED_FUNCTION_66_4();
    v12(v11);
    if (v0)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_1DC308E38()
{
  v1 = OUTLINED_FUNCTION_42_2();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_10(v3);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_54_0();
  v5 = sub_1DC51190C();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_28_0();
  v7 = type metadata accessor for NLRouterTurnContext(0);
  OUTLINED_FUNCTION_71_1(*(v7 + 32));
  OUTLINED_FUNCTION_39(v0, 1, v5);
  if (v8)
  {
    sub_1DC28EB30(v0, &unk_1ECC7D3A0, &unk_1DC522560);
  }

  else
  {
    v9 = OUTLINED_FUNCTION_31_0();
    v10(v9);
    sub_1DC5118DC();
    v11 = OUTLINED_FUNCTION_66_4();
    v12(v11);
    if (v0)
    {
      return 1;
    }
  }

  return 0;
}

void sub_1DC308F94()
{
  OUTLINED_FUNCTION_33();
  v1 = v0;
  v2 = sub_1DC510FDC();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_14(v5 - v4);
  v44 = sub_1DC51176C();
  OUTLINED_FUNCTION_0();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_1();
  v43 = v10 - v9;
  v11 = sub_1DC5119DC();
  OUTLINED_FUNCTION_0();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_1();
  v17 = v16 - v15;
  v18 = *(v1 + 16);
  v19 = *(v18 + 16);
  if (v19)
  {
    v20 = 0;
    OUTLINED_FUNCTION_24();
    v46 = v18 + v21;
    v42 = (v7 + 8);
    v40 = v2;
    v22 = v41;
    v45 = v18;
    while (v20 < *(v18 + 16))
    {
      (*(v13 + 16))(v17, v46 + *(v13 + 72) * v20, v11);
      if (sub_1DC51194C())
      {
        sub_1DC5119CC();
        sub_1DC51175C();
        (*v42)(v43, v44);
        v25 = sub_1DC5138FC();
        OUTLINED_FUNCTION_37();
        v26(v22, v2);
        v27 = MEMORY[0x1E1292F90](v25);
        v28 = v27;
        if (v27 >> 62)
        {
          v29 = sub_1DC51802C();
        }

        else
        {
          v29 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (v29)
        {
          if ((v28 & 0xC000000000000001) != 0)
          {
            MEMORY[0x1E1296800](0, v28);
          }

          else
          {
            if (!*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_30;
            }
          }

          sub_1DC51478C();

          v30 = OUTLINED_FUNCTION_30_5();
          v31(v30, v11);
          v48[0] = v48[2];
          v48[1] = v49;
          v2 = v40;
          v22 = v41;
          if (*(&v49 + 1))
          {
            sub_1DC28F3B8(v48, v47, &qword_1ECC7D3F0, &qword_1DC5238B0);
            v32 = sub_1DC51497C();
            if (OUTLINED_FUNCTION_9_3(v32) || (v33 = sub_1DC51485C(), OUTLINED_FUNCTION_9_3(v33)) || (v34 = sub_1DC514D9C(), OUTLINED_FUNCTION_9_3(v34)) || (v35 = sub_1DC514B3C(), OUTLINED_FUNCTION_9_3(v35)) || (v36 = sub_1DC514D6C(), OUTLINED_FUNCTION_9_3(v36)) || (v37 = sub_1DC514D5C(), OUTLINED_FUNCTION_9_3(v37)))
            {

              __swift_destroy_boxed_opaque_existential_1Tm(v47);
              sub_1DC28EB30(v48, &qword_1ECC7D3F0, &qword_1DC5238B0);
              goto LABEL_27;
            }

            __swift_destroy_boxed_opaque_existential_1Tm(v47);
          }

          sub_1DC28EB30(v48, &qword_1ECC7D3F0, &qword_1DC5238B0);
        }

        else
        {
          v38 = OUTLINED_FUNCTION_30_5();
          v39(v38, v11);

          v22 = v41;
        }
      }

      else
      {
        v23 = OUTLINED_FUNCTION_30_5();
        v24(v23, v11);
      }

      ++v20;
      v18 = v45;
      if (v19 == v20)
      {
        goto LABEL_27;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {
LABEL_27:
    OUTLINED_FUNCTION_34();
  }
}

uint64_t sub_1DC309474(uint64_t a1)
{
  sub_1DC3094C4();
  if (v2)
  {
    type metadata accessor for NLRouterBypassUtils();
    v3 = type metadata accessor for NLRouterServiceRequest(0);
    v4 = sub_1DC308358(*(a1 + *(v3 + 24))) ^ 1;
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

void sub_1DC3094C4()
{
  OUTLINED_FUNCTION_33();
  v3 = v2;
  v4 = sub_1DC5119DC();
  OUTLINED_FUNCTION_0();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_28_0();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BFD0, &unk_1DC522550);
  OUTLINED_FUNCTION_10(v8);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v9);
  v10 = OUTLINED_FUNCTION_56_8();
  v11 = type metadata accessor for NLRouterTurnContext(v10);
  OUTLINED_FUNCTION_35();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_1();
  v15 = v14 - v13;
  v16 = type metadata accessor for NLRouterServiceRequest(0);
  sub_1DC28F3B8(v3 + *(v16 + 20), v1, &qword_1ECC7BFD0, &unk_1DC522550);
  OUTLINED_FUNCTION_39(v1, 1, v11);
  if (v17)
  {
    sub_1DC28EB30(v1, &qword_1ECC7BFD0, &unk_1DC522550);
LABEL_11:
    OUTLINED_FUNCTION_34();
  }

  else
  {
    OUTLINED_FUNCTION_21_7();
    v18 = sub_1DC30C0BC(v1, v15);
    v21 = 0;
    v22 = *(v15 + 16);
    v23 = *(v22 + 16);
    while (1)
    {
      if (v23 == v21)
      {
        goto LABEL_10;
      }

      if (v21 >= *(v22 + 16))
      {
        break;
      }

      OUTLINED_FUNCTION_24();
      (*(v6 + 16))(v0, v22 + v24 + *(v6 + 72) * v21, v4);
      if (sub_1DC51191C())
      {
        v28 = OUTLINED_FUNCTION_48_0();
        v18 = v29(v28);
LABEL_10:
        sub_1DC30D6EC(v18, v19, v20);
        sub_1DC51823C();
        MEMORY[0x1E1296160](32, 0xE100000000000000);
        v30 = sub_1DC51823C();
        MEMORY[0x1E1296160](v30);

        v31 = MEMORY[0x1E1296160](14897, 0xE200000000000000);
        sub_1DC2A32B0(v31, v32, v33);
        sub_1DC517E5C();

        OUTLINED_FUNCTION_19_8();
        sub_1DC30C114(v15, v34);
        goto LABEL_11;
      }

      ++v21;
      v25 = sub_1DC51195C();
      v26 = OUTLINED_FUNCTION_48_0();
      v18 = v27(v26);
      if (v25)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1DC3097BC(uint64_t a1)
{
  sub_1DC3094C4();
  if ((v2 & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for NLRouterBypassUtils();
  v3 = type metadata accessor for NLRouterServiceRequest(0);
  return sub_1DC308358(*(a1 + *(v3 + 24))) & 1;
}

uint64_t sub_1DC309808()
{
  sub_1DC308F94();
  if (v0 & 1) != 0 || (sub_1DC308CDC())
  {
    return 1;
  }

  else
  {
    return sub_1DC308E38() & 1;
  }
}

void sub_1DC309850()
{
  OUTLINED_FUNCTION_33();
  v2 = v1;
  v3 = sub_1DC5119DC();
  OUTLINED_FUNCTION_0();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_28_0();
  if ((sub_1DC309808() & 1) == 0)
  {
    v7 = 0;
    v8 = *(v2 + 16);
    v9 = *(v8 + 16);
    while (v9 != v7)
    {
      if (v7 >= *(v8 + 16))
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_24();
      (*(v5 + 16))(v0, v8 + v10 + *(v5 + 72) * v7, v3);
      if (sub_1DC51191C())
      {
        v14 = OUTLINED_FUNCTION_31_0();
        v15(v14);
        break;
      }

      ++v7;
      v11 = sub_1DC51195C();
      v12 = OUTLINED_FUNCTION_31_0();
      v13(v12);
      if (v11)
      {
        break;
      }
    }
  }

  OUTLINED_FUNCTION_34();
}

void sub_1DC309998()
{
  OUTLINED_FUNCTION_33();
  v38 = v1;
  v39 = v2;
  OUTLINED_FUNCTION_38_2();
  v37 = sub_1DC514E7C();
  OUTLINED_FUNCTION_0();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_58_0();
  v41 = sub_1DC514ECC();
  OUTLINED_FUNCTION_0();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_15();
  v33 = v9;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v31 - v11;
  v13 = sub_1DC514EFC();
  v14 = 0;
  v40 = *(v13 + 16);
  v15 = (v4 + 8);
  v35 = (v7 + 8);
  v36 = v7 + 16;
  v32 = (v7 + 32);
  v34 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if (v40 == v14)
    {

      OUTLINED_FUNCTION_34();
      return;
    }

    if (v14 >= *(v13 + 16))
    {
      break;
    }

    v16 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v17 = *(v7 + 72);
    (*(v7 + 16))(v12, v13 + v16 + v17 * v14, v41);
    sub_1DC514EBC();
    v18 = sub_1DC514E6C();
    v20 = v19;
    (*v15)(v0, v37);
    if (v18 == v38 && v20 == v39)
    {

LABEL_11:
      v23 = *v32;
      (*v32)(v33, v12, v41);
      v24 = v34;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v42 = v24;
      v31 = v23;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1DC30BC60(0, *(v24 + 16) + 1, 1);
        v24 = v42;
      }

      v27 = *(v24 + 16);
      v26 = *(v24 + 24);
      v28 = v27 + 1;
      if (v27 >= v26 >> 1)
      {
        v29 = OUTLINED_FUNCTION_26(v26);
        v34 = v30;
        sub_1DC30BC60(v29, v30, 1);
        v28 = v34;
        v24 = v42;
      }

      ++v14;
      *(v24 + 16) = v28;
      v34 = v24;
      v31(v24 + v16 + v27 * v17, v33, v41);
    }

    else
    {
      OUTLINED_FUNCTION_59_1();
      v22 = sub_1DC51825C();

      if (v22)
      {
        goto LABEL_11;
      }

      (*v35)(v12, v41);
      ++v14;
    }
  }

  __break(1u);
}

void sub_1DC309C94()
{
  OUTLINED_FUNCTION_33();
  v2 = sub_1DC5119DC();
  OUTLINED_FUNCTION_0();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_28_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BFD0, &unk_1DC522550);
  OUTLINED_FUNCTION_10(v6);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v7);
  v8 = OUTLINED_FUNCTION_25_3();
  v9 = type metadata accessor for NLRouterTurnContext(v8);
  OUTLINED_FUNCTION_35();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_1();
  v13 = v12 - v11;
  v14 = OUTLINED_FUNCTION_42_2();
  sub_1DC28F3B8(v14, v15, &qword_1ECC7BFD0, &unk_1DC522550);
  OUTLINED_FUNCTION_39(v1, 1, v9);
  if (v16)
  {
    sub_1DC28EB30(v1, &qword_1ECC7BFD0, &unk_1DC522550);
LABEL_12:
    OUTLINED_FUNCTION_34();
  }

  else
  {
    OUTLINED_FUNCTION_21_7();
    v17 = OUTLINED_FUNCTION_35_0();
    sub_1DC30C0BC(v17, v18);
    v19 = 0;
    v20 = *(v13 + 16);
    v21 = *(v20 + 16);
    while (1)
    {
      if (v21 == v19)
      {
        goto LABEL_11;
      }

      if (v19 >= *(v20 + 16))
      {
        break;
      }

      OUTLINED_FUNCTION_24();
      (*(v4 + 16))(v0, v20 + v22 + *(v4 + 72) * v19, v2);
      if (sub_1DC51194C() & 1) != 0 || (sub_1DC51191C())
      {
        v26 = OUTLINED_FUNCTION_31_0();
        v27(v26);
LABEL_11:
        OUTLINED_FUNCTION_19_8();
        sub_1DC30C114(v13, v28);
        goto LABEL_12;
      }

      v23 = sub_1DC51195C();
      v24 = OUTLINED_FUNCTION_31_0();
      v25(v24);
      ++v19;
      if (v23)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
  }
}

void sub_1DC309EE8()
{
  OUTLINED_FUNCTION_33();
  v2 = v1;
  OUTLINED_FUNCTION_38_2();
  sub_1DC51072C();
  OUTLINED_FUNCTION_0();
  v18 = v4;
  v19 = v3;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_1();
  v5 = OUTLINED_FUNCTION_58_0();
  v20[0] = *(v2 + *(type metadata accessor for HeuristicAgentKeywords(v5) + 24));

  sub_1DC30BFDC(v20, sub_1DC30D6D8, MEMORY[0x1E69E6158], sub_1DC30CA80, sub_1DC30C468);
  v6 = 0;
  v7 = v20[0];
  v8 = *(v20[0] + 16);
  for (i = v20[0] + 40; ; i += 16)
  {
    if (v8 == v6)
    {

LABEL_8:
      OUTLINED_FUNCTION_31_0();
      OUTLINED_FUNCTION_34();
      return;
    }

    if (v6 >= v7[2])
    {
      break;
    }

    v10 = *(i - 8);

    sub_1DC329B0C();
    if (v11)
    {

      sub_1DC329364(v10);

      v12 = OUTLINED_FUNCTION_39_4();
      v20[0] = sub_1DC329368(v12, v13);
      v20[1] = v14;
      v15 = sub_1DC5106FC();
      sub_1DC2A32B0(v15, v16, v17);
      sub_1DC517E0C();
      (*(v18 + 8))(v0, v19);

      goto LABEL_8;
    }

    ++v6;
  }

  __break(1u);

  __break(1u);
}

void sub_1DC30A0F8()
{
  OUTLINED_FUNCTION_33();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C1E0, qword_1DC52A6E0);
  OUTLINED_FUNCTION_10(v7);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_25_3();
  v10 = type metadata accessor for HeuristicAgentKeywords(v9);
  OUTLINED_FUNCTION_35();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_1();
  v14 = v13 - v12;
  v15 = *v6;
  v16 = v6[1];
  v17 = type metadata accessor for HeuristicRoutingRequest(0);
  sub_1DC28F3B8(v6 + *(v17 + 32), v0, &qword_1ECC7C1E0, qword_1DC52A6E0);
  OUTLINED_FUNCTION_39(v0, 1, v10);
  if (v18)
  {

    v22 = sub_1DC28EB30(v0, &qword_1ECC7C1E0, qword_1DC52A6E0);
  }

  else
  {
    sub_1DC30C0BC(v0, v14);
    type metadata accessor for NLRouterBypassUtils();

    OUTLINED_FUNCTION_65_1();
    sub_1DC309EE8();
    v15 = v19;
    v21 = v20;

    v22 = sub_1DC30C114(v14, type metadata accessor for HeuristicAgentKeywords);
    v16 = v21;
  }

  v24[0] = v15;
  v24[1] = v16;
  v23[1] = v4;
  MEMORY[0x1EEE9AC00](v22);
  v23[-2] = v2;
  v23[-1] = v24;
  sub_1DC51645C();
  sub_1DC517A6C();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_45();
  sub_1DC5179CC();

  OUTLINED_FUNCTION_34();
}

uint64_t sub_1DC30A320(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4 = sub_1DC51644C();
  v5 = sub_1DC517D8C();
  OUTLINED_FUNCTION_0();
  v7 = v6;
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v16 - v9;
  sub_1DC51645C();

  sub_1DC51642C();
  if (v3)
  {

    __swift_storeEnumTagSinglePayload(v10, 1, 1, v4);
LABEL_4:
    v11 = 0;
    goto LABEL_5;
  }

  v11 = 1;
  OUTLINED_FUNCTION_49_6();
  if (__swift_getEnumTagSinglePayload(v12, v13, v14) == 1)
  {
    goto LABEL_4;
  }

LABEL_5:
  (*(v7 + 8))(v10, v5);
  return v11;
}

void sub_1DC30A498()
{
  OUTLINED_FUNCTION_33();
  v108 = v1;
  OUTLINED_FUNCTION_38_2();
  sub_1DC5172FC();
  OUTLINED_FUNCTION_0();
  v106 = v3;
  v107 = v2;
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_1();
  v109 = v5 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BFF8, &qword_1DC522580);
  OUTLINED_FUNCTION_10(v6);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_14(&v86 - v8);
  v92 = sub_1DC5171DC();
  OUTLINED_FUNCTION_0();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_14(v13 - v12);
  v14 = sub_1DC516AFC();
  OUTLINED_FUNCTION_0();
  v16 = v15;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_8();
  v20 = v18 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v86 - v22;
  v24 = sub_1DC516C3C();
  OUTLINED_FUNCTION_0();
  v105 = v25;
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7();
  v28 = MEMORY[0x1EEE9AC00](v27);
  v30 = &v86 - v29;
  MEMORY[0x1EEE9AC00](v28);
  v32 = &v86 - v31;
  if (!*(v0 + *(type metadata accessor for NLRouterServiceRequest(0) + 36)) || (v33 = sub_1DC516D8C()) == 0)
  {
LABEL_34:
    OUTLINED_FUNCTION_34();
    return;
  }

  v86 = v10;
  v94 = v30;
  v34 = 0;
  v101 = *(v33 + 16);
  v104 = v105 + 16;
  v97 = *MEMORY[0x1E69A9058];
  v95 = (v16 + 8);
  v96 = v16 + 104;
  v103 = (v105 + 8);
  v88 = (v105 + 32);
  v93 = MEMORY[0x1E69E7CC0];
  v102 = v24;
  v98 = v33;
  while (v101 != v34)
  {
    if (v34 >= *(v33 + 16))
    {
      __break(1u);
      goto LABEL_36;
    }

    OUTLINED_FUNCTION_22_0();
    v100 = v35;
    v99 = *(v37 + 72);
    (*(v37 + 16))(v32, v35 + v36 + v99 * v34, v24);
    sub_1DC516C2C();
    v38 = OUTLINED_FUNCTION_35_7();
    v39(v38, v97, v14);
    sub_1DC30C16C(&qword_1ECC7BAE0, MEMORY[0x1E69A9090], MEMORY[0x1E69A90A0]);
    sub_1DC5179EC();
    sub_1DC5179EC();
    v40 = v112 == v110 && v113 == v111;
    if (v40)
    {
      v47 = *v95;
      (*v95)(v20, v14);
      v47(v23, v14);

LABEL_13:
      v48 = *v88;
      (*v88)(v89, v32, v102);
      v49 = v93;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v114 = v49;
      v87 = v48;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1DC30BCB8(0, *(v49 + 16) + 1, 1);
        v49 = v114;
      }

      v52 = v99;
      v51 = v100;
      v54 = *(v49 + 16);
      v53 = *(v49 + 24);
      if (v54 >= v53 >> 1)
      {
        v55 = OUTLINED_FUNCTION_26(v53);
        sub_1DC30BCB8(v55, v54 + 1, 1);
        v49 = v114;
      }

      ++v34;
      *(v49 + 16) = v54 + 1;
      v93 = v49;
      v24 = v102;
      v87(v51 + v49 + v54 * v52, v89, v102);
      v33 = v98;
    }

    else
    {
      v41 = sub_1DC51825C();
      v42 = v34;
      v43 = v32;
      v44 = v23;
      v45 = v20;
      v46 = *v95;
      (*v95)(v45, v14);
      v46(v44, v14);
      v20 = v45;
      v23 = v44;
      v32 = v43;
      v34 = v42;

      if (v41)
      {
        goto LABEL_13;
      }

      v24 = v102;
      (*v103)(v32, v102);
      v34 = v42 + 1;
      v33 = v98;
    }
  }

  v56 = *(v93 + 16);
  if (!v56)
  {
LABEL_33:

    goto LABEL_34;
  }

  v57 = 0;
  OUTLINED_FUNCTION_24();
  v60 = v58 + v59;
  v100 = (v86 + 16);
  LODWORD(v101) = *MEMORY[0x1E69DAE28];
  v61 = (v106 + 8);
  v62 = v90;
  while (v57 < *(v58 + 16))
  {
    v63 = v94;
    (*(v105 + 16))(v94, v60 + *(v105 + 72) * v57, v24);
    sub_1DC516C1C();
    v64 = sub_1DC5172AC();
    OUTLINED_FUNCTION_39(v62, 1, v64);
    if (v40)
    {
      (*v103)(v63, v24);
      sub_1DC28EB30(v62, &qword_1ECC7BFF8, &qword_1DC522580);
    }

    else
    {
      v65 = OUTLINED_FUNCTION_59_1();
      v67 = v66(v65);
      if (v67 == v101)
      {
        v68 = OUTLINED_FUNCTION_59_1();
        v69(v68);
        v70 = swift_projectBox();
        (*v100)(v91, v70, v92);

        sub_1DC5171CC();
        v71 = 0;
        v72 = *(v108 + 16);
        do
        {
          if (v72 == v71)
          {
            v82 = OUTLINED_FUNCTION_44_3();
            v83(v82);
            v24 = v102;
            v84 = OUTLINED_FUNCTION_40_7();
            v85(v84);
            (*v61)(v109, v107);
            v62 = v90;
            goto LABEL_32;
          }

          v73 = v71++;
          OUTLINED_FUNCTION_22_0();
          sub_1DC30C16C(&qword_1ECC7C040, MEMORY[0x1E69DB0B8], MEMORY[0x1E69DB0D0]);
        }

        while ((sub_1DC5176CC() & 1) == 0);
        v74 = OUTLINED_FUNCTION_44_3();
        v75(v74);
        v24 = v102;
        v76 = OUTLINED_FUNCTION_40_7();
        v77(v76);
        (*v61)(v109, v107);
        v40 = v72 == v73;
        v62 = v90;
        if (v40)
        {
          goto LABEL_32;
        }

        goto LABEL_33;
      }

      v78 = OUTLINED_FUNCTION_40_7();
      v79(v78);
      v80 = OUTLINED_FUNCTION_59_1();
      v81(v80);
    }

LABEL_32:
    ++v57;
    v58 = v93;
    if (v57 == v56)
    {
      goto LABEL_33;
    }
  }

LABEL_36:
  __break(1u);
}

void sub_1DC30AD70()
{
  OUTLINED_FUNCTION_33();
  v2 = v1;
  v3 = sub_1DC510FDC();
  OUTLINED_FUNCTION_0();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_58_0();
  v7 = sub_1DC51179C();
  OUTLINED_FUNCTION_0();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_1();
  v13 = v12 - v11;
  sub_1DC51154C();
  v14 = sub_1DC51177C();
  v15 = *(v9 + 8);
  v15(v13, v7);
  if (v14)
  {
    type metadata accessor for NLRouterBypassUtils();
    sub_1DC51154C();
    sub_1DC51178C();
    v15(v13, v7);
    v16 = sub_1DC307E5C(v0);
    (*(v5 + 8))(v0, v3);
    if (v16)
    {

      sub_1DC51478C();

      if (v21)
      {
        sub_1DC2BAD90(&v20, &v22);
        v17 = *(v2 + 16);
        v18 = (v2 + 32);
        do
        {
          if (!v17)
          {
            break;
          }

          v19 = *v18++;
          __swift_project_boxed_opaque_existential_1(&v22, v23);
          --v17;
        }

        while (v19 != swift_getDynamicType());
        __swift_destroy_boxed_opaque_existential_1Tm(&v22);
      }

      else
      {

        sub_1DC28EB30(&v20, &qword_1ECC7D3F0, &qword_1DC5238B0);
      }
    }
  }

  OUTLINED_FUNCTION_34();
}

char *sub_1DC30AFA8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C8B0, &unk_1DC524040);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[24 * v8] <= v12)
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1DC30B0C0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C8A0, &unk_1DC5235F0);
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

void *sub_1DC30B1C0(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C8B0, &unk_1DC524040);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * ((v5 - 32) / 24);
  return v4;
}

void sub_1DC30B244(unint64_t a1, uint64_t a2, unint64_t a3, void (*a4)(void))
{
  if (a3 < a1 || (a4(0), OUTLINED_FUNCTION_35(), a1 + *(v8 + 72) * a2 <= a3))
  {
    a4(0);
    OUTLINED_FUNCTION_39_4();

    swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != a1)
  {
    OUTLINED_FUNCTION_39_4();

    swift_arrayInitWithTakeBackToFront();
  }
}

uint64_t sub_1DC30B30C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 != 1)
  {
  }

  return result;
}

uint64_t sub_1DC30B320(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = HIDWORD(a2);
  v9 = *v4;
  sub_1DC5182FC();
  sub_1DC51832C();
  sub_1DC51832C();
  sub_1DC51831C();
  if (a4)
  {
    sub_1DC51769C();
  }

  v10 = sub_1DC51833C();
  v11 = -1 << *(v9 + 32);
  v12 = v10 & ~v11;
  if (((*(v9 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
  {
LABEL_20:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = *v24;

    sub_1DC30B760(a2, a3, a4, v12, isUniquelyReferenced_nonNull_native);
    *v24 = v26;
    *a1 = a2;
    *(a1 + 4) = v8;
    *(a1 + 8) = a3;
    *(a1 + 16) = a4;
    return 1;
  }

  v13 = ~v11;
  v14 = *(v9 + 48);
  while (1)
  {
    v15 = v14 + 24 * v12;
    if (*v15 != a2 || *(v15 + 4) != v8)
    {
      goto LABEL_19;
    }

    v17 = *(v15 + 16);
    if (v17)
    {
      break;
    }

    if (!a4)
    {
      goto LABEL_22;
    }

LABEL_19:
    v12 = (v12 + 1) & v13;
    if (((*(v9 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
    {
      goto LABEL_20;
    }
  }

  if (!a4)
  {
    goto LABEL_19;
  }

  v18 = *(v15 + 8) == a3 && v17 == a4;
  if (!v18 && (sub_1DC51825C() & 1) == 0)
  {
    goto LABEL_19;
  }

LABEL_22:
  v21 = (*(v9 + 48) + 24 * v12);
  v23 = v21[1];
  v22 = v21[2];
  *a1 = *v21;
  *(a1 + 8) = v23;
  *(a1 + 16) = v22;

  return 0;
}