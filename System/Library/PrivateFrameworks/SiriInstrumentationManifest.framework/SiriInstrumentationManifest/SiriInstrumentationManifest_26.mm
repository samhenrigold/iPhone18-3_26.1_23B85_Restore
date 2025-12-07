uint64_t sub_26731F184(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26731F1E8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26731F24C()
{
  result = qword_2800EF900;
  if (!qword_2800EF900)
  {
    sub_26731F2A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800EF900);
  }

  return result;
}

unint64_t sub_26731F2A4()
{
  result = qword_2800EF8F8;
  if (!qword_2800EF8F8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800EF8F8);
  }

  return result;
}

uint64_t static SISchemaVerticalLayoutCardSectionInvocationContext.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = sub_26738113C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v10[-v5];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  (*(v1 + 104))(v3, *MEMORY[0x277D3E530], v0);
  v10[0] = 1;
  sub_26738114C();
  v7 = sub_26738116C();
  (*(*(v7 - 8) + 56))(v6, 0, 1, v7);
  v8 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000010, 0x800000026749E020);
  return v8(v10, 0);
}

uint64_t sub_26731F540(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26731F5A4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26731F608()
{
  result = qword_2800FA1E8;
  if (!qword_2800FA1E8)
  {
    sub_26731F660();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800FA1E8);
  }

  return result;
}

unint64_t sub_26731F660()
{
  result = qword_2800FA1E0;
  if (!qword_2800FA1E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800FA1E0);
  }

  return result;
}

uint64_t static SISchemaViewContainer.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = sub_26738113C();
  v30 = v0;
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v23 - v5;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v7 = *MEMORY[0x277D3E530];
  v29 = *(v1 + 104);
  v28 = v7;
  v29(v3, v7, v0);
  v31[0] = 1;
  sub_26738114C();
  v8 = sub_26738116C();
  v9 = *(v8 - 8);
  v24 = *(v9 + 56);
  v10 = v9 + 56;
  v27 = v8;
  v24(v6, 0, 1, v8);
  v26 = v10;
  v11 = sub_2673811AC();
  sub_266EC637C(v6, 0x444977656976, 0xE600000000000000);
  v11(v31, 0);
  v12 = v7;
  v13 = v29;
  v14 = v30;
  v25 = v1 + 104;
  v29(v3, v12, v30);
  v31[0] = 1;
  sub_26738114C();
  v15 = v8;
  v16 = v24;
  v24(v6, 0, 1, v15);
  v17 = sub_2673811AC();
  sub_266EC637C(v6, 0x4374657070696E73, 0xEC0000007373616CLL);
  v17(v31, 0);
  v23 = "iri.uei.UUFRSaid";
  v18 = v28;
  v13(v3, v28, v14);
  v31[0] = 1;
  sub_26738114C();
  v19 = v27;
  v16(v6, 0, 1, v27);
  v20 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000010, v23 | 0x8000000000000000);
  v20(v31, 0);
  v13(v3, v18, v30);
  v31[0] = 1;
  sub_26738114C();
  v16(v6, 0, 1, v19);
  v21 = sub_2673811AC();
  sub_266EC637C(v6, 0x6850676F6C616964, 0xEB00000000657361);
  return v21(v31, 0);
}

uint64_t sub_26731FB6C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26731FBD0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26731FC34()
{
  result = qword_2800FA1D8;
  if (!qword_2800FA1D8)
  {
    sub_26731FC8C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800FA1D8);
  }

  return result;
}

unint64_t sub_26731FC8C()
{
  result = qword_2800FA1D0;
  if (!qword_2800FA1D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800FA1D0);
  }

  return result;
}

uint64_t static SISchemaViewRegionDesignation.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = MEMORY[0x277D84F90];
  sub_266ECA394(MEMORY[0x277D84F90]);
  sub_266ECDCE4(v0);
  sub_26738110C();
  v1 = sub_26738111C();
  v3 = v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = *v3;
  *v3 = 0x8000000000000000;
  sub_266ECD368(0, 0xD000000000000029, 0x800000026749E0A0, isUniquelyReferenced_nonNull_native);
  *v3 = v18;

  v1(v22, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v19 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000022, 0x800000026749E0D0, v8);
  *v7 = v19;

  v5(v22, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v20 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000001CLL, 0x800000026749E100, v12);
  *v11 = v20;

  v9(v22, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v21 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000001ELL, 0x800000026749E120, v16);
  *v15 = v21;

  return v13(v22, 0);
}

uint64_t sub_26731FF5C(uint64_t a1)
{
  v2 = sub_267320060(&qword_2800FA7C0, &protocol conformance descriptor for SISchemaViewRegionDesignation);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_26731FFC4(uint64_t a1, uint64_t a2)
{
  v4 = sub_267320060(&qword_2800FA7C0, &protocol conformance descriptor for SISchemaViewRegionDesignation);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_267320060(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SISchemaViewRegionDesignation(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static SISchemaVoiceFeedback.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = MEMORY[0x277D84F90];
  sub_266ECA394(MEMORY[0x277D84F90]);
  sub_266ECDCE4(v0);
  sub_26738110C();
  v1 = sub_26738111C();
  v3 = v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v30 = *v3;
  *v3 = 0x8000000000000000;
  sub_266ECD368(0, 0xD000000000000024, 0x800000026749E170, isUniquelyReferenced_nonNull_native);
  *v3 = v30;

  v1(v37, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v31 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000027, 0x8000000267469880, v8);
  *v7 = v31;

  v5(v37, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v32 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000026, 0x80000002674698B0, v12);
  *v11 = v32;

  v9(v37, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v33 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000024, 0x80000002674698E0, v16);
  *v15 = v33;

  v13(v37, 0);
  v17 = sub_26738111C();
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v34 = *v19;
  *v19 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000017, 0x8000000267469910, v20);
  *v19 = v34;

  v17(v37, 0);
  v21 = sub_26738111C();
  v23 = v22;
  v24 = swift_isUniquelyReferenced_nonNull_native();
  v35 = *v23;
  *v23 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000024, 0x8000000267469930, v24);
  *v23 = v35;

  v21(v37, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = swift_isUniquelyReferenced_nonNull_native();
  v36 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(6, 0xD000000000000024, 0x8000000267469960, v28);
  *v27 = v36;

  return v25(v37, 0);
}

uint64_t sub_267320484(uint64_t a1)
{
  v2 = sub_267320588(&qword_2800FA7C8, &protocol conformance descriptor for SISchemaVoiceFeedback);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2673204EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_267320588(&qword_2800FA7C8, &protocol conformance descriptor for SISchemaVoiceFeedback);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_267320588(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SISchemaVoiceFeedback(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static SISchemaVoiceGender.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = MEMORY[0x277D84F90];
  sub_266ECA394(MEMORY[0x277D84F90]);
  sub_266ECDCE4(v0);
  sub_26738110C();
  v1 = sub_26738111C();
  v3 = v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = *v3;
  *v3 = 0x8000000000000000;
  sub_266ECD368(0, 0xD000000000000020, 0x800000026749E1D0, isUniquelyReferenced_nonNull_native);
  *v3 = v18;

  v1(v22, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v19 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000012, 0x800000026749E200, v8);
  *v7 = v19;

  v5(v22, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v20 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000010, 0x800000026749E220, v12);
  *v11 = v20;

  v9(v22, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v21 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000015, 0x800000026749E240, v16);
  *v15 = v21;

  v13(v22, 0);
  sub_266ECB128(&unk_287892E30);
  return sub_26738112C();
}

uint64_t sub_267320868(uint64_t a1)
{
  v2 = sub_26732096C(&qword_2800FA7D0, &protocol conformance descriptor for SISchemaVoiceGender);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2673208D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_26732096C(&qword_2800FA7D0, &protocol conformance descriptor for SISchemaVoiceGender);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_26732096C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SISchemaVoiceGender(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static SISchemaVoiceName.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = MEMORY[0x277D84F90];
  sub_266ECA394(MEMORY[0x277D84F90]);
  sub_266ECDCE4(v0);
  sub_26738110C();
  v1 = sub_26738111C();
  v3 = v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v402 = *v3;
  *v3 = 0x8000000000000000;
  sub_266ECD368(0, 0xD000000000000011, 0x800000026749E290, isUniquelyReferenced_nonNull_native);
  *v3 = v402;

  v1(v502, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v403 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0x4D414E4543494F56, 0xEF4E4F5241415F45, v8);
  *v7 = v403;

  v5(v502, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v404 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0x4D414E4543494F56, 0xEF4E414449415F45, v12);
  *v11 = v404;

  v9(v502, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v405 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0x4D414E4543494F56, 0xEF4853414B415F45, v16);
  *v15 = v405;

  v13(v502, 0);
  v17 = sub_26738111C();
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v406 = *v19;
  *v19 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000011, 0x800000026749E2B0, v20);
  *v19 = v406;

  v17(v502, 0);
  v21 = sub_26738111C();
  v23 = v22;
  v24 = swift_isUniquelyReferenced_nonNull_native();
  v407 = *v23;
  *v23 = 0x8000000000000000;
  sub_266ECD368(5, 0x4D414E4543494F56, 0xEE0041564C415F45, v24);
  *v23 = v407;

  v21(v502, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = swift_isUniquelyReferenced_nonNull_native();
  v408 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(6, 0xD000000000000010, 0x800000026749E2D0, v28);
  *v27 = v408;

  v25(v502, 0);
  v29 = sub_26738111C();
  v31 = v30;
  v32 = swift_isUniquelyReferenced_nonNull_native();
  v409 = *v31;
  *v31 = 0x8000000000000000;
  sub_266ECD368(7, 0x4D414E4543494F56, 0xEF4C45474E415F45, v32);
  *v31 = v409;

  v29(v502, 0);
  v33 = sub_26738111C();
  v35 = v34;
  v36 = swift_isUniquelyReferenced_nonNull_native();
  v410 = *v35;
  *v35 = 0x8000000000000000;
  sub_266ECD368(8, 0xD000000000000010, 0x800000026749E2F0, v36);
  *v35 = v410;

  v33(v502, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = swift_isUniquelyReferenced_nonNull_native();
  v411 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(9, 0x4D414E4543494F56, 0xEE004C4558415F45, v40);
  *v39 = v411;

  v37(v502, 0);
  v41 = sub_26738111C();
  v43 = v42;
  v44 = swift_isUniquelyReferenced_nonNull_native();
  v412 = *v43;
  *v43 = 0x8000000000000000;
  sub_266ECD368(10, 0xD000000000000011, 0x800000026749E310, v44);
  *v43 = v412;

  v41(v502, 0);
  v45 = sub_26738111C();
  v47 = v46;
  v48 = swift_isUniquelyReferenced_nonNull_native();
  v413 = *v47;
  *v47 = 0x8000000000000000;
  sub_266ECD368(11, 0xD000000000000010, 0x800000026749E330, v48);
  *v47 = v413;

  v45(v502, 0);
  v49 = sub_26738111C();
  v51 = v50;
  v52 = swift_isUniquelyReferenced_nonNull_native();
  v414 = *v51;
  *v51 = 0x8000000000000000;
  sub_266ECD368(12, 0xD000000000000010, 0x800000026749E350, v52);
  *v51 = v414;

  v49(v502, 0);
  v53 = sub_26738111C();
  v55 = v54;
  v56 = swift_isUniquelyReferenced_nonNull_native();
  v415 = *v55;
  *v55 = 0x8000000000000000;
  sub_266ECD368(13, 0xD000000000000013, 0x800000026749E370, v56);
  *v55 = v415;

  v53(v502, 0);
  v57 = sub_26738111C();
  v59 = v58;
  v60 = swift_isUniquelyReferenced_nonNull_native();
  v416 = *v59;
  *v59 = 0x8000000000000000;
  sub_266ECD368(14, 0xD000000000000012, 0x800000026749E390, v60);
  *v59 = v416;

  v57(v502, 0);
  v61 = sub_26738111C();
  v63 = v62;
  v64 = swift_isUniquelyReferenced_nonNull_native();
  v417 = *v63;
  *v63 = 0x8000000000000000;
  sub_266ECD368(15, 0xD000000000000013, 0x800000026749E3B0, v64);
  *v63 = v417;

  v61(v502, 0);
  v65 = sub_26738111C();
  v67 = v66;
  v68 = swift_isUniquelyReferenced_nonNull_native();
  v418 = *v67;
  *v67 = 0x8000000000000000;
  sub_266ECD368(16, 0x4D414E4543494F56, 0xEF4E4F4D41445F45, v68);
  *v67 = v418;

  v65(v502, 0);
  v69 = sub_26738111C();
  v71 = v70;
  v72 = swift_isUniquelyReferenced_nonNull_native();
  v419 = *v71;
  *v71 = 0x8000000000000000;
  sub_266ECD368(17, 0xD000000000000010, 0x800000026749E3D0, v72);
  *v71 = v419;

  v69(v502, 0);
  v73 = sub_26738111C();
  v75 = v74;
  v76 = swift_isUniquelyReferenced_nonNull_native();
  v420 = *v75;
  *v75 = 0x8000000000000000;
  sub_266ECD368(18, 0x4D414E4543494F56, 0xEF43454445445F45, v76);
  *v75 = v420;

  v73(v502, 0);
  v77 = sub_26738111C();
  v79 = v78;
  v80 = swift_isUniquelyReferenced_nonNull_native();
  v421 = *v79;
  *v79 = 0x8000000000000000;
  sub_266ECD368(19, 0x4D414E4543494F56, 0xEF44454445445F45, v80);
  *v79 = v421;

  v77(v502, 0);
  v81 = sub_26738111C();
  v83 = v82;
  v84 = swift_isUniquelyReferenced_nonNull_native();
  v422 = *v83;
  *v83 = 0x8000000000000000;
  sub_266ECD368(20, 0x4D414E4543494F56, 0xEE0046494C455F45, v84);
  *v83 = v422;

  v81(v502, 0);
  v85 = sub_26738111C();
  v87 = v86;
  v88 = swift_isUniquelyReferenced_nonNull_native();
  v423 = *v87;
  *v87 = 0x8000000000000000;
  sub_266ECD368(21, 0x4D414E4543494F56, 0xEF4E454C4C455F45, v88);
  *v87 = v423;

  v85(v502, 0);
  v89 = sub_26738111C();
  v91 = v90;
  v92 = swift_isUniquelyReferenced_nonNull_native();
  v424 = *v91;
  *v91 = 0x8000000000000000;
  sub_266ECD368(22, 0x4D414E4543494F56, 0xEE0045534C455F45, v92);
  *v91 = v424;

  v89(v502, 0);
  v93 = sub_26738111C();
  v95 = v94;
  v96 = swift_isUniquelyReferenced_nonNull_native();
  v425 = *v95;
  *v95 = 0x8000000000000000;
  sub_266ECD368(23, 0x4D414E4543494F56, 0xEF4342474E455F45, v96);
  *v95 = v425;

  v93(v502, 0);
  v97 = sub_26738111C();
  v99 = v98;
  v100 = swift_isUniquelyReferenced_nonNull_native();
  v426 = *v99;
  *v99 = 0x8000000000000000;
  sub_266ECD368(24, 0x4D414E4543494F56, 0xEF4442474E455F45, v100);
  *v99 = v426;

  v97(v502, 0);
  v101 = sub_26738111C();
  v103 = v102;
  v104 = swift_isUniquelyReferenced_nonNull_native();
  v427 = *v103;
  *v103 = 0x8000000000000000;
  sub_266ECD368(25, 0xD000000000000013, 0x800000026749E3F0, v104);
  *v103 = v427;

  v101(v502, 0);
  v105 = sub_26738111C();
  v107 = v106;
  v108 = swift_isUniquelyReferenced_nonNull_native();
  v428 = *v107;
  *v107 = 0x8000000000000000;
  sub_266ECD368(26, 0xD000000000000010, 0x800000026749E410, v108);
  *v107 = v428;

  v105(v502, 0);
  v109 = sub_26738111C();
  v111 = v110;
  v112 = swift_isUniquelyReferenced_nonNull_native();
  v429 = *v111;
  *v111 = 0x8000000000000000;
  sub_266ECD368(27, 0xD000000000000011, 0x800000026749E430, v112);
  *v111 = v429;

  v109(v502, 0);
  v113 = sub_26738111C();
  v115 = v114;
  v116 = swift_isUniquelyReferenced_nonNull_native();
  v430 = *v115;
  *v115 = 0x8000000000000000;
  sub_266ECD368(28, 0xD000000000000010, 0x800000026749E450, v116);
  *v115 = v430;

  v113(v502, 0);
  v117 = sub_26738111C();
  v119 = v118;
  v120 = swift_isUniquelyReferenced_nonNull_native();
  v431 = *v119;
  *v119 = 0x8000000000000000;
  sub_266ECD368(29, 0x4D414E4543494F56, 0xEE004F5249485F45, v120);
  *v119 = v431;

  v117(v502, 0);
  v121 = sub_26738111C();
  v123 = v122;
  v124 = swift_isUniquelyReferenced_nonNull_native();
  v432 = *v123;
  *v123 = 0x8000000000000000;
  sub_266ECD368(30, 0x4D414E4543494F56, 0xEF4E49594F485F45, v124);
  *v123 = v432;

  v121(v502, 0);
  v125 = sub_26738111C();
  v127 = v126;
  v128 = swift_isUniquelyReferenced_nonNull_native();
  v433 = *v127;
  *v127 = 0x8000000000000000;
  sub_266ECD368(31, 0xD000000000000010, 0x800000026749E470, v128);
  *v127 = v433;

  v125(v502, 0);
  v129 = sub_26738111C();
  v131 = v130;
  v132 = swift_isUniquelyReferenced_nonNull_native();
  v434 = *v131;
  *v131 = 0x8000000000000000;
  sub_266ECD368(32, 0x4D414E4543494F56, 0xEE00534E454A5F45, v132);
  *v131 = v434;

  v129(v502, 0);
  v133 = sub_26738111C();
  v135 = v134;
  v136 = swift_isUniquelyReferenced_nonNull_native();
  v435 = *v135;
  *v135 = 0x8000000000000000;
  sub_266ECD368(33, 0xD000000000000010, 0x800000026749E490, v136);
  *v135 = v435;

  v133(v502, 0);
  v137 = sub_26738111C();
  v139 = v138;
  v140 = swift_isUniquelyReferenced_nonNull_native();
  v436 = *v139;
  *v139 = 0x8000000000000000;
  sub_266ECD368(34, 0x4D414E4543494F56, 0xEE004E41414B5F45, v140);
  *v139 = v436;

  v137(v502, 0);
  v141 = sub_26738111C();
  v143 = v142;
  v144 = swift_isUniquelyReferenced_nonNull_native();
  v437 = *v143;
  *v143 = 0x8000000000000000;
  sub_266ECD368(35, 0x4D414E4543494F56, 0xEF41594E414B5F45, v144);
  *v143 = v437;

  v141(v502, 0);
  v145 = sub_26738111C();
  v147 = v146;
  v148 = swift_isUniquelyReferenced_nonNull_native();
  v438 = *v147;
  *v147 = 0x8000000000000000;
  sub_266ECD368(36, 0x4D414E4543494F56, 0xEF4E4159414B5F45, v148);
  *v147 = v438;

  v145(v502, 0);
  v149 = sub_26738111C();
  v151 = v150;
  v152 = swift_isUniquelyReferenced_nonNull_native();
  v439 = *v151;
  *v151 = 0x8000000000000000;
  sub_266ECD368(37, 0x4D414E4543494F56, 0xEF5241414C4B5F45, v152);
  *v151 = v439;

  v149(v502, 0);
  v153 = sub_26738111C();
  v155 = v154;
  v156 = swift_isUniquelyReferenced_nonNull_native();
  v440 = *v155;
  *v155 = 0x8000000000000000;
  sub_266ECD368(38, 0x4D414E4543494F56, 0xEF414E4F454C5F45, v156);
  *v155 = v440;

  v153(v502, 0);
  v157 = sub_26738111C();
  v159 = v158;
  v160 = swift_isUniquelyReferenced_nonNull_native();
  v441 = *v159;
  *v159 = 0x8000000000000000;
  sub_266ECD368(39, 0x4D414E4543494F56, 0xEE00554D494C5F45, v160);
  *v159 = v441;

  v157(v502, 0);
  v161 = sub_26738111C();
  v163 = v162;
  v164 = swift_isUniquelyReferenced_nonNull_native();
  v442 = *v163;
  *v163 = 0x8000000000000000;
  sub_266ECD368(40, 0xD000000000000010, 0x800000026749E4B0, v164);
  *v163 = v442;

  v161(v502, 0);
  v165 = sub_26738111C();
  v167 = v166;
  v168 = swift_isUniquelyReferenced_nonNull_native();
  v443 = *v167;
  *v167 = 0x8000000000000000;
  sub_266ECD368(41, 0xD000000000000011, 0x800000026749E4D0, v168);
  *v167 = v443;

  v165(v502, 0);
  v169 = sub_26738111C();
  v171 = v170;
  v172 = swift_isUniquelyReferenced_nonNull_native();
  v444 = *v171;
  *v171 = 0x8000000000000000;
  sub_266ECD368(42, 0x4D414E4543494F56, 0xEF415349554C5F45, v172);
  *v171 = v444;

  v169(v502, 0);
  v173 = sub_26738111C();
  v175 = v174;
  v176 = swift_isUniquelyReferenced_nonNull_native();
  v445 = *v175;
  *v175 = 0x8000000000000000;
  sub_266ECD368(43, 0x4D414E4543494F56, 0xEF455645414D5F45, v176);
  *v175 = v445;

  v173(v502, 0);
  v177 = sub_26738111C();
  v179 = v178;
  v180 = swift_isUniquelyReferenced_nonNull_native();
  v446 = *v179;
  *v179 = 0x8000000000000000;
  sub_266ECD368(44, 0x4D414E4543494F56, 0xEF444547414D5F45, v180);
  *v179 = v446;

  v177(v502, 0);
  v181 = sub_26738111C();
  v183 = v182;
  v184 = swift_isUniquelyReferenced_nonNull_native();
  v447 = *v183;
  *v183 = 0x8000000000000000;
  sub_266ECD368(45, 0x4D414E4543494F56, 0xEF454952414D5F45, v184);
  *v183 = v447;

  v181(v502, 0);
  v185 = sub_26738111C();
  v187 = v186;
  v188 = swift_isUniquelyReferenced_nonNull_native();
  v448 = *v187;
  *v187 = 0x8000000000000000;
  sub_266ECD368(46, 0xD000000000000010, 0x800000026749E4F0, v188);
  *v187 = v448;

  v185(v502, 0);
  v189 = sub_26738111C();
  v191 = v190;
  v192 = swift_isUniquelyReferenced_nonNull_native();
  v449 = *v191;
  *v191 = 0x8000000000000000;
  sub_266ECD368(47, 0xD000000000000010, 0x800000026749E510, v192);
  *v191 = v449;

  v189(v502, 0);
  v193 = sub_26738111C();
  v195 = v194;
  v196 = swift_isUniquelyReferenced_nonNull_native();
  v450 = *v195;
  *v195 = 0x8000000000000000;
  sub_266ECD368(48, 0xD000000000000010, 0x800000026749E530, v196);
  *v195 = v450;

  v193(v502, 0);
  v197 = sub_26738111C();
  v199 = v198;
  v200 = swift_isUniquelyReferenced_nonNull_native();
  v451 = *v199;
  *v199 = 0x8000000000000000;
  sub_266ECD368(49, 0xD000000000000010, 0x800000026749E550, v200);
  *v199 = v451;

  v197(v502, 0);
  v201 = sub_26738111C();
  v203 = v202;
  v204 = swift_isUniquelyReferenced_nonNull_native();
  v452 = *v203;
  *v203 = 0x8000000000000000;
  sub_266ECD368(50, 0x4D414E4543494F56, 0xEF494A4E494D5F45, v204);
  *v203 = v452;

  v201(v502, 0);
  v205 = sub_26738111C();
  v207 = v206;
  v208 = swift_isUniquelyReferenced_nonNull_native();
  v453 = *v207;
  *v207 = 0x8000000000000000;
  sub_266ECD368(51, 0x4D414E4543494F56, 0xEF4152494F4D5F45, v208);
  *v207 = v453;

  v205(v502, 0);
  v209 = sub_26738111C();
  v211 = v210;
  v212 = swift_isUniquelyReferenced_nonNull_native();
  v454 = *v211;
  *v211 = 0x8000000000000000;
  sub_266ECD368(52, 0x4D414E4543494F56, 0xEF4F444E414E5F45, v212);
  *v211 = v454;

  v209(v502, 0);
  v213 = sub_26738111C();
  v215 = v214;
  v216 = swift_isUniquelyReferenced_nonNull_native();
  v455 = *v215;
  *v215 = 0x8000000000000000;
  sub_266ECD368(53, 0x4D414E4543494F56, 0xEF594B43494E5F45, v216);
  *v215 = v455;

  v213(v502, 0);
  v217 = sub_26738111C();
  v219 = v218;
  v220 = swift_isUniquelyReferenced_nonNull_native();
  v456 = *v219;
  *v219 = 0x8000000000000000;
  sub_266ECD368(54, 0x4D414E4543494F56, 0xEE0041524F4E5F45, v220);
  *v219 = v456;

  v217(v502, 0);
  v221 = sub_26738111C();
  v223 = v222;
  v224 = swift_isUniquelyReferenced_nonNull_native();
  v457 = *v223;
  *v223 = 0x8000000000000000;
  sub_266ECD368(55, 0x4D414E4543494F56, 0xEE004E45524F5F45, v224);
  *v223 = v457;

  v221(v502, 0);
  v225 = sub_26738111C();
  v227 = v226;
  v228 = swift_isUniquelyReferenced_nonNull_native();
  v458 = *v227;
  *v227 = 0x8000000000000000;
  sub_266ECD368(56, 0x4D414E4543494F56, 0xEF4F4C4F41505F45, v228);
  *v227 = v458;

  v225(v502, 0);
  v229 = sub_26738111C();
  v231 = v230;
  v232 = swift_isUniquelyReferenced_nonNull_native();
  v459 = *v231;
  *v231 = 0x8000000000000000;
  sub_266ECD368(57, 0xD000000000000011, 0x800000026749E570, v232);
  *v231 = v459;

  v229(v502, 0);
  v233 = sub_26738111C();
  v235 = v234;
  v236 = swift_isUniquelyReferenced_nonNull_native();
  v460 = *v235;
  *v235 = 0x8000000000000000;
  sub_266ECD368(58, 0xD000000000000010, 0x800000026749E590, v236);
  *v235 = v460;

  v233(v502, 0);
  v237 = sub_26738111C();
  v239 = v238;
  v240 = swift_isUniquelyReferenced_nonNull_native();
  v461 = *v239;
  *v239 = 0x8000000000000000;
  sub_266ECD368(59, 0xD000000000000010, 0x800000026749E5B0, v240);
  *v239 = v461;

  v237(v502, 0);
  v241 = sub_26738111C();
  v243 = v242;
  v244 = swift_isUniquelyReferenced_nonNull_native();
  v462 = *v243;
  *v243 = 0x8000000000000000;
  sub_266ECD368(60, 0x4D414E4543494F56, 0xEF4E4E4955515F45, v244);
  *v243 = v462;

  v241(v502, 0);
  v245 = sub_26738111C();
  v247 = v246;
  v248 = swift_isUniquelyReferenced_nonNull_native();
  v463 = *v247;
  *v247 = 0x8000000000000000;
  sub_266ECD368(61, 0x4D414E4543494F56, 0xEE00415949525F45, v248);
  *v247 = v463;

  v245(v502, 0);
  v249 = sub_26738111C();
  v251 = v250;
  v252 = swift_isUniquelyReferenced_nonNull_native();
  v464 = *v251;
  *v251 = 0x8000000000000000;
  sub_266ECD368(62, 0xD000000000000010, 0x800000026749E5D0, v252);
  *v251 = v464;

  v249(v502, 0);
  v253 = sub_26738111C();
  v255 = v254;
  v256 = swift_isUniquelyReferenced_nonNull_native();
  v465 = *v255;
  *v255 = 0x8000000000000000;
  sub_266ECD368(63, 0x4D414E4543494F56, 0xEF52454D41535F45, v256);
  *v255 = v465;

  v253(v502, 0);
  v257 = sub_26738111C();
  v259 = v258;
  v260 = swift_isUniquelyReferenced_nonNull_native();
  v466 = *v259;
  *v259 = 0x8000000000000000;
  sub_266ECD368(64, 0xD000000000000010, 0x800000026749E5F0, v260);
  *v259 = v466;

  v257(v502, 0);
  v261 = sub_26738111C();
  v263 = v262;
  v264 = swift_isUniquelyReferenced_nonNull_native();
  v467 = *v263;
  *v263 = 0x8000000000000000;
  sub_266ECD368(65, 0x4D414E4543494F56, 0xEE00415241535F45, v264);
  *v263 = v467;

  v261(v502, 0);
  v265 = sub_26738111C();
  v267 = v266;
  v268 = swift_isUniquelyReferenced_nonNull_native();
  v468 = *v267;
  *v267 = 0x8000000000000000;
  sub_266ECD368(66, 0x4D414E4543494F56, 0xEE00555441535F45, v268);
  *v267 = v468;

  v265(v502, 0);
  v269 = sub_26738111C();
  v271 = v270;
  v272 = swift_isUniquelyReferenced_nonNull_native();
  v469 = *v271;
  *v271 = 0x8000000000000000;
  sub_266ECD368(67, 0xD000000000000010, 0x800000026749E610, v272);
  *v271 = v469;

  v269(v502, 0);
  v273 = sub_26738111C();
  v275 = v274;
  v276 = swift_isUniquelyReferenced_nonNull_native();
  v470 = *v275;
  *v275 = 0x8000000000000000;
  sub_266ECD368(68, 0xD000000000000010, 0x800000026749E630, v276);
  *v275 = v470;

  v273(v502, 0);
  v277 = sub_26738111C();
  v279 = v278;
  v280 = swift_isUniquelyReferenced_nonNull_native();
  v471 = *v279;
  *v279 = 0x8000000000000000;
  sub_266ECD368(69, 0x4D414E4543494F56, 0xEF494A4E49535F45, v280);
  *v279 = v471;

  v277(v502, 0);
  v281 = sub_26738111C();
  v283 = v282;
  v284 = swift_isUniquelyReferenced_nonNull_native();
  v472 = *v283;
  *v283 = 0x8000000000000000;
  sub_266ECD368(70, 0x4D414E4543494F56, 0xEE0041484F535F45, v284);
  *v283 = v472;

  v281(v502, 0);
  v285 = sub_26738111C();
  v287 = v286;
  v288 = swift_isUniquelyReferenced_nonNull_native();
  v473 = *v287;
  *v287 = 0x8000000000000000;
  sub_266ECD368(71, 0xD000000000000010, 0x800000026749E650, v288);
  *v287 = v473;

  v285(v502, 0);
  v289 = sub_26738111C();
  v291 = v290;
  v292 = swift_isUniquelyReferenced_nonNull_native();
  v474 = *v291;
  *v291 = 0x8000000000000000;
  sub_266ECD368(72, 0x4D414E4543494F56, 0xEE00495655535F45, v292);
  *v291 = v474;

  v289(v502, 0);
  v293 = sub_26738111C();
  v295 = v294;
  v296 = swift_isUniquelyReferenced_nonNull_native();
  v475 = *v295;
  *v295 = 0x8000000000000000;
  sub_266ECD368(73, 0x4D414E4543494F56, 0xEF41535345545F45, v296);
  *v295 = v475;

  v293(v502, 0);
  v297 = sub_26738111C();
  v299 = v298;
  v300 = swift_isUniquelyReferenced_nonNull_native();
  v476 = *v299;
  *v299 = 0x8000000000000000;
  sub_266ECD368(74, 0x4D414E4543494F56, 0xEF41485448545F45, v300);
  *v299 = v476;

  v297(v502, 0);
  v301 = sub_26738111C();
  v303 = v302;
  v304 = swift_isUniquelyReferenced_nonNull_native();
  v477 = *v303;
  *v303 = 0x8000000000000000;
  sub_266ECD368(75, 0x4D414E4543494F56, 0xEF42485448545F45, v304);
  *v303 = v477;

  v301(v502, 0);
  v305 = sub_26738111C();
  v307 = v306;
  v308 = swift_isUniquelyReferenced_nonNull_native();
  v478 = *v307;
  *v307 = 0x8000000000000000;
  sub_266ECD368(76, 0x4D414E4543494F56, 0xEF45444C49545F45, v308);
  *v307 = v478;

  v305(v502, 0);
  v309 = sub_26738111C();
  v311 = v310;
  v312 = swift_isUniquelyReferenced_nonNull_native();
  v479 = *v311;
  *v311 = 0x8000000000000000;
  sub_266ECD368(77, 0x4D414E4543494F56, 0xEE0049504F545F45, v312);
  *v311 = v479;

  v309(v502, 0);
  v313 = sub_26738111C();
  v315 = v314;
  v316 = swift_isUniquelyReferenced_nonNull_native();
  v480 = *v315;
  *v315 = 0x8000000000000000;
  sub_266ECD368(78, 0xD000000000000011, 0x800000026749E670, v316);
  *v315 = v480;

  v313(v502, 0);
  v317 = sub_26738111C();
  v319 = v318;
  v320 = swift_isUniquelyReferenced_nonNull_native();
  v481 = *v319;
  *v319 = 0x8000000000000000;
  sub_266ECD368(79, 0xD000000000000010, 0x800000026749E690, v320);
  *v319 = v481;

  v317(v502, 0);
  v321 = sub_26738111C();
  v323 = v322;
  v324 = swift_isUniquelyReferenced_nonNull_native();
  v482 = *v323;
  *v323 = 0x8000000000000000;
  sub_266ECD368(80, 0xD000000000000010, 0x800000026749E6B0, v324);
  *v323 = v482;

  v321(v502, 0);
  v325 = sub_26738111C();
  v327 = v326;
  v328 = swift_isUniquelyReferenced_nonNull_native();
  v483 = *v327;
  *v327 = 0x8000000000000000;
  sub_266ECD368(81, 0x4D414E4543494F56, 0xEF41444C45595F45, v328);
  *v327 = v483;

  v325(v502, 0);
  v329 = sub_26738111C();
  v331 = v330;
  v332 = swift_isUniquelyReferenced_nonNull_native();
  v484 = *v331;
  *v331 = 0x8000000000000000;
  sub_266ECD368(82, 0xD000000000000010, 0x800000026749E6D0, v332);
  *v331 = v484;

  v329(v502, 0);
  v333 = sub_26738111C();
  v335 = v334;
  v336 = swift_isUniquelyReferenced_nonNull_native();
  v485 = *v335;
  *v335 = 0x8000000000000000;
  sub_266ECD368(83, 0x4D414E4543494F56, 0xEE00414E55595F45, v336);
  *v335 = v485;

  v333(v502, 0);
  v337 = sub_26738111C();
  v339 = v338;
  v340 = swift_isUniquelyReferenced_nonNull_native();
  v486 = *v339;
  *v339 = 0x8000000000000000;
  sub_266ECD368(84, 0x4D414E4543494F56, 0xEF55485355595F45, v340);
  *v339 = v486;

  v337(v502, 0);
  v341 = sub_26738111C();
  v343 = v342;
  v344 = swift_isUniquelyReferenced_nonNull_native();
  v487 = *v343;
  *v343 = 0x8000000000000000;
  sub_266ECD368(85, 0x4D414E4543494F56, 0xED000056495A5F45, v344);
  *v343 = v487;

  v341(v502, 0);
  v345 = sub_26738111C();
  v347 = v346;
  v348 = swift_isUniquelyReferenced_nonNull_native();
  v488 = *v347;
  *v347 = 0x8000000000000000;
  sub_266ECD368(86, 0x4D414E4543494F56, 0xEF41594D534D5F45, v348);
  *v347 = v488;

  v345(v502, 0);
  v349 = sub_26738111C();
  v351 = v350;
  v352 = swift_isUniquelyReferenced_nonNull_native();
  v489 = *v351;
  *v351 = 0x8000000000000000;
  sub_266ECD368(87, 0x4D414E4543494F56, 0xEF42594D534D5F45, v352);
  *v351 = v489;

  v349(v502, 0);
  v353 = sub_26738111C();
  v355 = v354;
  v356 = swift_isUniquelyReferenced_nonNull_native();
  v490 = *v355;
  *v355 = 0x8000000000000000;
  sub_266ECD368(88, 0x4D414E4543494F56, 0xEF434E43485A5F45, v356);
  *v355 = v490;

  v353(v502, 0);
  v357 = sub_26738111C();
  v359 = v358;
  v360 = swift_isUniquelyReferenced_nonNull_native();
  v491 = *v359;
  *v359 = 0x8000000000000000;
  sub_266ECD368(89, 0x4D414E4543494F56, 0xEF444E43485A5F45, v360);
  *v359 = v491;

  v357(v502, 0);
  v361 = sub_26738111C();
  v363 = v362;
  v364 = swift_isUniquelyReferenced_nonNull_native();
  v492 = *v363;
  *v363 = 0x8000000000000000;
  sub_266ECD368(90, 0x4D414E4543494F56, 0xEF414E5649565F45, v364);
  *v363 = v492;

  v361(v502, 0);
  v365 = sub_26738111C();
  v367 = v366;
  v368 = swift_isUniquelyReferenced_nonNull_native();
  v493 = *v367;
  *v367 = 0x8000000000000000;
  sub_266ECD368(91, 0x4D414E4543494F56, 0xEF424E5649565F45, v368);
  *v367 = v493;

  v365(v502, 0);
  v369 = sub_26738111C();
  v371 = v370;
  v372 = swift_isUniquelyReferenced_nonNull_native();
  v494 = *v371;
  *v371 = 0x8000000000000000;
  sub_266ECD368(92, 0x4D414E4543494F56, 0xEF434E5649565F45, v372);
  *v371 = v494;

  v369(v502, 0);
  v373 = sub_26738111C();
  v375 = v374;
  v376 = swift_isUniquelyReferenced_nonNull_native();
  v495 = *v375;
  *v375 = 0x8000000000000000;
  sub_266ECD368(93, 0x4D414E4543494F56, 0xEF444E5649565F45, v376);
  *v375 = v495;

  v373(v502, 0);
  v377 = sub_26738111C();
  v379 = v378;
  v380 = swift_isUniquelyReferenced_nonNull_native();
  v496 = *v379;
  *v379 = 0x8000000000000000;
  sub_266ECD368(94, 0x4D414E4543494F56, 0xEF4355414E455F45, v380);
  *v379 = v496;

  v377(v502, 0);
  v381 = sub_26738111C();
  v383 = v382;
  v384 = swift_isUniquelyReferenced_nonNull_native();
  v497 = *v383;
  *v383 = 0x8000000000000000;
  sub_266ECD368(95, 0x4D414E4543494F56, 0xEF4455414E455F45, v384);
  *v383 = v497;

  v381(v502, 0);
  v385 = sub_26738111C();
  v387 = v386;
  v388 = swift_isUniquelyReferenced_nonNull_native();
  v498 = *v387;
  *v387 = 0x8000000000000000;
  sub_266ECD368(96, 0x4D414E4543494F56, 0xEF43544954495F45, v388);
  *v387 = v498;

  v385(v502, 0);
  v389 = sub_26738111C();
  v391 = v390;
  v392 = swift_isUniquelyReferenced_nonNull_native();
  v499 = *v391;
  *v391 = 0x8000000000000000;
  sub_266ECD368(97, 0x4D414E4543494F56, 0xEF44544954495F45, v392);
  *v391 = v499;

  v389(v502, 0);
  v393 = sub_26738111C();
  v395 = v394;
  v396 = swift_isUniquelyReferenced_nonNull_native();
  v500 = *v395;
  *v395 = 0x8000000000000000;
  sub_266ECD368(98, 0x4D414E4543494F56, 0xEF43524652465F45, v396);
  *v395 = v500;

  v393(v502, 0);
  v397 = sub_26738111C();
  v399 = v398;
  v400 = swift_isUniquelyReferenced_nonNull_native();
  v501 = *v399;
  *v399 = 0x8000000000000000;
  sub_266ECD368(99, 0x4D414E4543494F56, 0xEF44524652465F45, v400);
  *v399 = v501;

  return v397(v502, 0);
}

uint64_t sub_2673236A0(uint64_t a1)
{
  v2 = sub_2673237A4(&qword_2800FA7D8, &protocol conformance descriptor for SISchemaVoiceName);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_267323708(uint64_t a1, uint64_t a2)
{
  v4 = sub_2673237A4(&qword_2800FA7D8, &protocol conformance descriptor for SISchemaVoiceName);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2673237A4(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SISchemaVoiceName(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static SISchemaVoiceSettings.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = sub_26738113C();
  v14 = *(v1 - 8);
  v15 = v1;
  MEMORY[0x28223BE20](v1);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v14 - v5;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for SISchemaVoiceGender(0);
  sub_267323D90(&qword_2800F6408, type metadata accessor for SISchemaVoiceGender, &protocol conformance descriptor for SISchemaVoiceGender);
  sub_26738120C();
  v7 = sub_26738116C();
  v8 = *(*(v7 - 8) + 56);
  v8(v6, 0, 1, v7);
  v9 = sub_2673811AC();
  sub_266EC637C(v6, 0x6E65476563696F76, 0xEB00000000726564);
  v9(v16, 0);
  type metadata accessor for SISchemaLocale(0);
  sub_267323D90(&qword_2800EEFA8, type metadata accessor for SISchemaLocale, &protocol conformance descriptor for SISchemaLocale);
  sub_26738120C();
  v8(v6, 0, 1, v7);
  v10 = sub_2673811AC();
  sub_266EC637C(v6, 0x6363416563696F76, 0xEB00000000746E65);
  v10(v16, 0);
  (*(v14 + 104))(v3, *MEMORY[0x277D3E530], v15);
  v16[0] = 1;
  sub_26738114C();
  v8(v6, 0, 1, v7);
  v11 = sub_2673811AC();
  sub_266EC637C(v6, 0x6D614E6563696F76, 0xE900000000000065);
  v11(v16, 0);
  sub_266ECB294(0, &qword_2800F0438, 0x277D5A900);
  sub_266ECAF2C(&qword_2800F0440, &qword_2800F0438, 0x277D5A900, &protocol conformance descriptor for SISchemaISOLocale);
  sub_26738120C();
  v8(v6, 0, 1, v7);
  v12 = sub_2673811AC();
  sub_266EC637C(v6, 0x6363416563696F76, 0xED00003256746E65);
  v12(v16, 0);
  sub_266ECB128(&unk_287892E60);
  return sub_2673811CC();
}

uint64_t sub_267323CCC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267323D30(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_267323D90(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t static SISchemaVoiceTriggerMetrics.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a1;
  v3 = sub_26738113C();
  v31 = v3;
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v25[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v25[-v8];
  sub_266EC679C(MEMORY[0x277D84F90]);
  v10 = a2;
  sub_26738119C();
  v28 = "iceTriggerMetrics";
  v11 = *MEMORY[0x277D3E508];
  v30 = *(v4 + 104);
  v26 = v11;
  v30(v6, v11, v3);
  v34[0] = 1;
  sub_26738114C();
  v12 = sub_26738116C();
  v27 = *(*(v12 - 8) + 56);
  v33 = v12;
  v27(v9, 0, 1, v12);
  v13 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000012, v28 | 0x8000000000000000);
  v13(v34, 0);
  v28 = "implicitUtterances";
  v14 = v11;
  v16 = v30;
  v15 = v31;
  v30(v6, v14, v31);
  v34[0] = 1;
  sub_26738114C();
  v17 = v12;
  v18 = v27;
  v27(v9, 0, 1, v17);
  v29 = v10;
  v19 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000012, v28 | 0x8000000000000000);
  v19(v34, 0);
  v16(v6, v26, v15);
  v34[0] = 1;
  sub_26738114C();
  v20 = v33;
  v18(v9, 0, 1, v33);
  v21 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000011, 0x800000026749E7A0);
  v21(v34, 0);
  sub_266ECB294(0, &qword_2800F4820, 0x277D58A18);
  sub_266ECAF2C(&qword_2800F4818, &qword_2800F4820, 0x277D58A18, &protocol conformance descriptor for MHSchemaMHVoiceTriggerFirstPassStatistic);
  sub_26738122C();
  v18(v9, 0, 1, v20);
  v22 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000013, 0x800000026749E7C0);
  v22(v34, 0);
  sub_266ECB294(0, &qword_2800F4800, 0x277D58A10);
  sub_266ECAF2C(&qword_2800F47F8, &qword_2800F4800, 0x277D58A10, &protocol conformance descriptor for MHSchemaMHVoiceTriggerFirstPassDailyMetadata);
  sub_26738120C();
  v18(v9, 0, 1, v33);
  v23 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000011, 0x800000026749E7E0);
  return v23(v34, 0);
}

uint64_t sub_2673243E4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267324448(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static SIServiceBatchInfo.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = sub_26738118C();
  v27 = *(v1 - 8);
  v28 = v1;
  MEMORY[0x28223BE20](v1);
  v26 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_26738113C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v25 - v8;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  (*(v4 + 104))(v6, *MEMORY[0x277D3E4F8], v3);
  v29[0] = 1;
  sub_26738114C();
  v10 = sub_26738116C();
  v11 = *(*(v10 - 8) + 56);
  v11(v9, 0, 1, v10);
  v12 = sub_2673811AC();
  sub_266EC637C(v9, 0x64695F6863746162, 0xE800000000000000);
  v12(v29, 0);
  sub_266ECB294(0, &qword_2800FA7E0, 0x277D5ACD0);
  sub_266ECAF2C(&qword_2800FA7E8, &qword_2800FA7E0, 0x277D5ACD0, &protocol conformance descriptor for SIServiceDeviceUploadInfo);
  sub_26738121C();
  v11(v9, 0, 1, v10);
  v13 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000012, 0x800000026749E820);
  v13(v29, 0);
  sub_266ECB294(0, &qword_2800FA7F0, 0x277D5ACE8);
  sub_266ECAF2C(&qword_2800FA7F8, &qword_2800FA7F0, 0x277D5ACE8, &protocol conformance descriptor for SIServiceServerUploadInfo);
  sub_26738121C();
  v11(v9, 0, 1, v10);
  v14 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000012, 0x800000026749E840);
  v14(v29, 0);
  type metadata accessor for SIServiceBatchType(0);
  sub_267324BC0();
  sub_26738120C();
  v11(v9, 0, 1, v10);
  v15 = v26;
  v16 = sub_2673811AC();
  sub_266EC637C(v9, 0x79745F6863746162, 0xEA00000000006570);
  v16(v29, 0);
  sub_26738117C();
  v17 = sub_2673811BC();
  v19 = v18;
  v20 = *v18;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v19 = v20;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v20 = sub_266ECAD54(0, v20[2] + 1, 1, v20);
    *v19 = v20;
  }

  v23 = v20[2];
  v22 = v20[3];
  if (v23 >= v22 >> 1)
  {
    v20 = sub_266ECAD54((v22 > 1), v23 + 1, 1, v20);
    *v19 = v20;
  }

  v20[2] = v23 + 1;
  (*(v27 + 32))(v20 + ((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v23, v15, v28);
  return v17(v29, 0);
}

uint64_t sub_267324AFC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267324B60(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_267324BC0()
{
  result = qword_2800FA800;
  if (!qword_2800FA800)
  {
    type metadata accessor for SIServiceBatchType(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800FA800);
  }

  return result;
}

uint64_t static SIServiceBatchType.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = MEMORY[0x277D84F90];
  sub_266ECA394(MEMORY[0x277D84F90]);
  sub_266ECDCE4(v0);
  sub_26738110C();
  v1 = sub_26738111C();
  v3 = v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v3;
  *v3 = 0x8000000000000000;
  sub_266ECD368(0, 0x4E574F4E4B4E55, 0xE700000000000000, isUniquelyReferenced_nonNull_native);
  *v3 = v14;

  v1(v17, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v15 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 1096040772, 0xE400000000000000, v8);
  *v7 = v15;

  v5(v17, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0x4C454E49544E4553, 0xE800000000000000, v12);
  *v11 = v16;

  return v9(v17, 0);
}

uint64_t sub_267324E54(uint64_t a1)
{
  v2 = sub_267324F58(&qword_2800FA818, &protocol conformance descriptor for SIServiceBatchType);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_267324EBC(uint64_t a1, uint64_t a2)
{
  v4 = sub_267324F58(&qword_2800FA818, &protocol conformance descriptor for SIServiceBatchType);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_267324F58(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SIServiceBatchType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static SIServiceDeviceUploadInfo.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26738113C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v15 - v7;
  sub_266EC679C(MEMORY[0x277D84F90]);
  v15[1] = a1;
  sub_26738119C();
  v9 = *(v3 + 104);
  v9(v5, *MEMORY[0x277D3E530], v2);
  v16[0] = 1;
  sub_26738114C();
  v10 = sub_26738116C();
  v11 = *(*(v10 - 8) + 56);
  v11(v8, 0, 1, v10);
  v12 = sub_2673811AC();
  sub_266EC637C(v8, 0x64695F666572, 0xE600000000000000);
  v12(v16, 0);
  v9(v5, *MEMORY[0x277D3E540], v2);
  v16[0] = 1;
  sub_26738114C();
  v11(v8, 0, 1, v10);
  v13 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000013, 0x800000026749E8B0);
  return v13(v16, 0);
}

uint64_t sub_2673252BC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267325320(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_267325384()
{
  result = qword_2800FA7E8;
  if (!qword_2800FA7E8)
  {
    sub_2673253DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800FA7E8);
  }

  return result;
}

unint64_t sub_2673253DC()
{
  result = qword_2800FA7E0;
  if (!qword_2800FA7E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800FA7E0);
  }

  return result;
}

uint64_t static SIServiceInstrumentationBatch.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = sub_26738113C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v14[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v14[-v6];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  (*(v2 + 104))(v4, *MEMORY[0x277D3E530], v1);
  v14[0] = 1;
  sub_26738114C();
  v8 = sub_26738116C();
  v9 = *(*(v8 - 8) + 56);
  v9(v7, 0, 1, v8);
  v10 = sub_2673811AC();
  sub_266EC637C(v7, 0x64695F707061, 0xE600000000000000);
  v10(v14, 0);
  sub_266ECB294(0, &qword_2800FA810, 0x277D5ACC8);
  sub_266ECAF2C(&qword_2800FA808, &qword_2800FA810, 0x277D5ACC8, &protocol conformance descriptor for SIServiceBatchInfo);
  sub_26738120C();
  v9(v7, 0, 1, v8);
  v11 = sub_2673811AC();
  sub_266EC637C(v7, 0x6E695F6863746162, 0xEA00000000006F66);
  v11(v14, 0);
  sub_266ECB294(0, &qword_2800F1D90, 0x277D5A790);
  sub_266ECAF2C(&qword_2800F1D98, &qword_2800F1D90, 0x277D5A790, &protocol conformance descriptor for SISchemaAnyEvent);
  sub_26738122C();
  v9(v7, 0, 1, v8);
  v12 = sub_2673811AC();
  sub_266EC637C(v7, 0x746E657665, 0xE500000000000000);
  return v12(v14, 0);
}

uint64_t sub_26732581C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267325880(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static SIServiceInstrumentationBatchResponse.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v18 = a1;
  v1 = sub_26738113C();
  v17 = v1;
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v15 - v6;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v8 = *MEMORY[0x277D3E4F8];
  v16 = *(v2 + 104);
  v16(v4, v8, v1);
  v19[0] = 1;
  sub_26738114C();
  v9 = sub_26738116C();
  v10 = *(*(v9 - 8) + 56);
  v10(v7, 0, 1, v9);
  v11 = sub_2673811AC();
  sub_266EC637C(v7, 0x64695F6863746162, 0xE800000000000000);
  v11(v19, 0);
  type metadata accessor for SIServiceStatus(0);
  sub_267325E18(&qword_2800FA830, type metadata accessor for SIServiceStatus, &protocol conformance descriptor for SIServiceStatus);
  sub_26738120C();
  v10(v7, 0, 1, v9);
  v12 = sub_2673811AC();
  sub_266EC637C(v7, 0x635F737574617473, 0xEB0000000065646FLL);
  v12(v19, 0);
  v16(v4, *MEMORY[0x277D3E530], v17);
  v19[0] = 1;
  sub_26738114C();
  v10(v7, 0, 1, v9);
  v13 = sub_2673811AC();
  sub_266EC637C(v7, 0x6567617373656DLL, 0xE700000000000000);
  return v13(v19, 0);
}

uint64_t sub_267325D0C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267325D70(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_267325E18(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_267325E60()
{
  result = qword_2800FA840;
  if (!qword_2800FA840)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800FA840);
  }

  return result;
}

uint64_t static SIServiceServerUploadInfo.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = sub_26738113C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v10[-v5];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  (*(v1 + 104))(v3, *MEMORY[0x277D3E510], v0);
  v10[0] = 1;
  sub_26738114C();
  v7 = sub_26738116C();
  (*(*(v7 - 8) + 56))(v6, 0, 1, v7);
  v8 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000013, 0x800000026749E960);
  return v8(v10, 0);
}

uint64_t sub_2673260FC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267326160(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2673261C4()
{
  result = qword_2800FA7F8;
  if (!qword_2800FA7F8)
  {
    sub_26732621C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800FA7F8);
  }

  return result;
}

unint64_t sub_26732621C()
{
  result = qword_2800FA7F0;
  if (!qword_2800FA7F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800FA7F0);
  }

  return result;
}

uint64_t static SIServiceStatus.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = MEMORY[0x277D84F90];
  sub_266ECA394(MEMORY[0x277D84F90]);
  sub_266ECDCE4(v0);
  sub_26738110C();
  v1 = sub_26738111C();
  v3 = v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v3;
  *v3 = 0x8000000000000000;
  sub_266ECD368(0, 0x53534543435553, 0xE700000000000000, isUniquelyReferenced_nonNull_native);
  *v3 = v10;

  v1(v12, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v11 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0x4552554C494146, 0xE700000000000000, v8);
  *v7 = v11;

  return v5(v12, 0);
}

uint64_t sub_2673263F8(uint64_t a1)
{
  v2 = sub_2673264FC(&qword_2800FA848, &protocol conformance descriptor for SIServiceStatus);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_267326460(uint64_t a1, uint64_t a2)
{
  v4 = sub_2673264FC(&qword_2800FA848, &protocol conformance descriptor for SIServiceStatus);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2673264FC(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SIServiceStatus(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static SMTSchemaSMTAppLanguageModelAssetCopyContext.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v22 = sub_26738118C();
  v20 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v21 = &v19 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v19 - v3;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800FA850, 0x277D5AD18);
  sub_266ECAF2C(&qword_2800FA858, &qword_2800FA850, 0x277D5AD18, &protocol conformance descriptor for SMTSchemaSMTAppLanguageModelAssetCopyStarted);
  sub_26738121C();
  v5 = sub_26738116C();
  v6 = *(*(v5 - 8) + 56);
  v6(v4, 0, 1, v5);
  v7 = sub_2673811AC();
  sub_266EC637C(v4, 0xD000000000000010, 0x800000026741EB30);
  v7(v23, 0);
  sub_266ECB294(0, &qword_2800FA860, 0x277D5AD08);
  sub_266ECAF2C(&qword_2800FA868, &qword_2800FA860, 0x277D5AD08, &protocol conformance descriptor for SMTSchemaSMTAppLanguageModelAssetCopyEnded);
  sub_26738121C();
  v6(v4, 0, 1, v5);
  v8 = sub_2673811AC();
  sub_266EC637C(v4, 0x6465646E65, 0xE500000000000000);
  v8(v23, 0);
  sub_266ECB294(0, &qword_2800FA870, 0x277D5AD10);
  sub_266ECAF2C(&qword_2800FA878, &qword_2800FA870, 0x277D5AD10, &protocol conformance descriptor for SMTSchemaSMTAppLanguageModelAssetCopyFailed);
  sub_26738121C();
  v6(v4, 0, 1, v5);
  v9 = v21;
  v10 = sub_2673811AC();
  sub_266EC637C(v4, 0x64656C696166, 0xE600000000000000);
  v10(v23, 0);
  sub_26738117C();
  v11 = sub_2673811BC();
  v13 = v12;
  v14 = *v12;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v13 = v14;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v14 = sub_266ECAD54(0, v14[2] + 1, 1, v14);
    *v13 = v14;
  }

  v17 = v14[2];
  v16 = v14[3];
  if (v17 >= v16 >> 1)
  {
    v14 = sub_266ECAD54((v16 > 1), v17 + 1, 1, v14);
    *v13 = v14;
  }

  v14[2] = v17 + 1;
  (*(v20 + 32))(v14 + ((*(v20 + 80) + 32) & ~*(v20 + 80)) + *(v20 + 72) * v17, v9, v22);
  return v11(v23, 0);
}

uint64_t sub_267326A58(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267326ABC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static SMTSchemaSMTAppLanguageModelAssetCopyEnded.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = sub_26738113C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v10[-v5];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  (*(v1 + 104))(v3, *MEMORY[0x277D3E4E8], v0);
  v10[0] = 1;
  sub_26738114C();
  v7 = sub_26738116C();
  (*(*(v7 - 8) + 56))(v6, 0, 1, v7);
  v8 = sub_2673811AC();
  sub_266EC637C(v6, 0x737473697865, 0xE600000000000000);
  return v8(v10, 0);
}

uint64_t sub_267326DA8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267326E0C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_267326E70()
{
  result = qword_2800FA868;
  if (!qword_2800FA868)
  {
    sub_267326EC8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800FA868);
  }

  return result;
}

unint64_t sub_267326EC8()
{
  result = qword_2800FA860;
  if (!qword_2800FA860)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800FA860);
  }

  return result;
}

uint64_t static SMTSchemaSMTAppLanguageModelAssetCopyFailed.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = sub_26738113C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v10[-v5];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  (*(v1 + 104))(v3, *MEMORY[0x277D3E4E8], v0);
  v10[0] = 1;
  sub_26738114C();
  v7 = sub_26738116C();
  (*(*(v7 - 8) + 56))(v6, 0, 1, v7);
  v8 = sub_2673811AC();
  sub_266EC637C(v6, 0x737473697865, 0xE600000000000000);
  return v8(v10, 0);
}

uint64_t sub_26732715C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2673271C0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_267327224()
{
  result = qword_2800FA878;
  if (!qword_2800FA878)
  {
    sub_26732727C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800FA878);
  }

  return result;
}

unint64_t sub_26732727C()
{
  result = qword_2800FA870;
  if (!qword_2800FA870)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800FA870);
  }

  return result;
}

uint64_t static SMTSchemaSMTAppLanguageModelAssetCopyStarted.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = sub_26738113C();
  v2 = *(v1 - 8);
  v16 = v1;
  v17 = v2;
  MEMORY[0x28223BE20](v1);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v16 - v6;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for SISchemaLocale(0);
  sub_2673277C4(&qword_2800EEFA8, type metadata accessor for SISchemaLocale, &protocol conformance descriptor for SISchemaLocale);
  sub_26738120C();
  v8 = sub_26738116C();
  v9 = *(*(v8 - 8) + 56);
  v9(v7, 0, 1, v8);
  v10 = sub_2673811AC();
  sub_266EC637C(v7, 0x656C61636F6CLL, 0xE600000000000000);
  v10(v18, 0);
  v11 = *MEMORY[0x277D3E530];
  v12 = *(v17 + 104);
  v17 += 104;
  v12(v4, v11, v1);
  v18[0] = 1;
  sub_26738114C();
  v9(v7, 0, 1, v8);
  v13 = sub_2673811AC();
  sub_266EC637C(v7, 0x6C646E7542707061, 0xEB00000000644965);
  v13(v18, 0);
  v12(v4, v11, v16);
  v18[0] = 1;
  sub_26738114C();
  v9(v7, 0, 1, v8);
  v14 = sub_2673811AC();
  sub_266EC637C(v7, 0x7465737341707061, 0xEC00000068746150);
  return v14(v18, 0);
}

uint64_t sub_2673276B8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26732771C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_2673277C4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_26732780C()
{
  result = qword_2800FA850;
  if (!qword_2800FA850)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800FA850);
  }

  return result;
}

uint64_t static SMTSchemaSMTAppLanguageModelBuildContext.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v22 = sub_26738118C();
  v20 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v21 = &v19 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v19 - v3;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800FA890, 0x277D5AD38);
  sub_266ECAF2C(&qword_2800FA898, &qword_2800FA890, 0x277D5AD38, &protocol conformance descriptor for SMTSchemaSMTAppLanguageModelBuildStarted);
  sub_26738121C();
  v5 = sub_26738116C();
  v6 = *(*(v5 - 8) + 56);
  v6(v4, 0, 1, v5);
  v7 = sub_2673811AC();
  sub_266EC637C(v4, 0xD000000000000010, 0x800000026741EB30);
  v7(v23, 0);
  sub_266ECB294(0, &qword_2800FA8A0, 0x277D5AD28);
  sub_266ECAF2C(&qword_2800FA8A8, &qword_2800FA8A0, 0x277D5AD28, &protocol conformance descriptor for SMTSchemaSMTAppLanguageModelBuildEnded);
  sub_26738121C();
  v6(v4, 0, 1, v5);
  v8 = sub_2673811AC();
  sub_266EC637C(v4, 0x6465646E65, 0xE500000000000000);
  v8(v23, 0);
  sub_266ECB294(0, &qword_2800FA8B0, 0x277D5AD30);
  sub_266ECAF2C(&qword_2800FA8B8, &qword_2800FA8B0, 0x277D5AD30, &protocol conformance descriptor for SMTSchemaSMTAppLanguageModelBuildFailed);
  sub_26738121C();
  v6(v4, 0, 1, v5);
  v9 = v21;
  v10 = sub_2673811AC();
  sub_266EC637C(v4, 0x64656C696166, 0xE600000000000000);
  v10(v23, 0);
  sub_26738117C();
  v11 = sub_2673811BC();
  v13 = v12;
  v14 = *v12;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v13 = v14;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v14 = sub_266ECAD54(0, v14[2] + 1, 1, v14);
    *v13 = v14;
  }

  v17 = v14[2];
  v16 = v14[3];
  if (v17 >= v16 >> 1)
  {
    v14 = sub_266ECAD54((v16 > 1), v17 + 1, 1, v14);
    *v13 = v14;
  }

  v14[2] = v17 + 1;
  (*(v20 + 32))(v14 + ((*(v20 + 80) + 32) & ~*(v20 + 80)) + *(v20 + 72) * v17, v9, v22);
  return v11(v23, 0);
}

uint64_t sub_267327D70(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267327DD4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static SMTSchemaSMTAppLanguageModelBuildEnded.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26738113C();
  v39 = v2;
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v31 - v7;
  sub_266EC679C(MEMORY[0x277D84F90]);
  v34 = a1;
  sub_26738119C();
  v9 = *MEMORY[0x277D3E540];
  v10 = *(v3 + 104);
  v37 = v3 + 104;
  v10(v5, v9, v2);
  v40[0] = 1;
  sub_26738114C();
  v11 = sub_26738116C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 56);
  v31[1] = v12 + 56;
  v38 = v11;
  v13(v8, 0, 1, v11);
  v14 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000018, 0x800000026749EB20);
  v14(v40, 0);
  v33 = "trainingDataSizeInTokens";
  v32 = v9;
  v10(v5, v9, v39);
  v36 = v10;
  v40[0] = 1;
  sub_26738114C();
  v35 = v13;
  v13(v8, 0, 1, v11);
  v15 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000012, v33 | 0x8000000000000000);
  v15(v40, 0);
  v33 = "numOutOfVocabulary";
  v10(v5, v9, v39);
  v40[0] = 1;
  sub_26738114C();
  v16 = v38;
  v13(v8, 0, 1, v38);
  v17 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000017, v33 | 0x8000000000000000);
  v17(v40, 0);
  LODWORD(v33) = *MEMORY[0x277D3E530];
  v18 = v39;
  v19 = v36;
  (v36)(v5);
  v40[0] = 1;
  sub_26738114C();
  v20 = v16;
  v21 = v35;
  v35(v8, 0, 1, v20);
  v22 = sub_2673811AC();
  sub_266EC637C(v8, 0x6D614E7465737361, 0xE900000000000065);
  v22(v40, 0);
  v31[0] = "numCustomPronunciations";
  v23 = v32;
  v19(v5, v32, v18);
  v40[0] = 1;
  sub_26738114C();
  v24 = v38;
  v21(v8, 0, 1, v38);
  v25 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000010, v31[0] | 0x8000000000000000);
  v25(v40, 0);
  v31[0] = "trainingTimeInNs";
  v26 = v36;
  v36(v5, v23, v39);
  v40[0] = 1;
  sub_26738114C();
  v27 = v35;
  v35(v8, 0, 1, v24);
  v28 = sub_2673811AC();
  sub_266EC637C(v8, 0xD00000000000001CLL, v31[0] | 0x8000000000000000);
  v28(v40, 0);
  v26(v5, v33, v39);
  v40[0] = 1;
  sub_26738114C();
  v27(v8, 0, 1, v38);
  v29 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000010, 0x800000026749EBC0);
  return v29(v40, 0);
}

uint64_t sub_2673285B8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26732861C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_267328680()
{
  result = qword_2800FA8A8;
  if (!qword_2800FA8A8)
  {
    sub_2673286D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800FA8A8);
  }

  return result;
}

unint64_t sub_2673286D8()
{
  result = qword_2800FA8A0;
  if (!qword_2800FA8A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800FA8A0);
  }

  return result;
}

uint64_t static SMTSchemaSMTAppLanguageModelBuildFailed.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = sub_26738113C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v13[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v13[-v6];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  (*(v2 + 104))(v4, *MEMORY[0x277D3E530], v1);
  v13[0] = 1;
  sub_26738114C();
  v8 = sub_26738116C();
  v9 = *(*(v8 - 8) + 56);
  v9(v7, 0, 1, v8);
  v10 = sub_2673811AC();
  sub_266EC637C(v7, 0x6D614E7465737361, 0xE900000000000065);
  v10(v13, 0);
  type metadata accessor for SMTSchemaSMTAppLanguageModelBuildFailureReason(0);
  sub_267328B50(&qword_2800FA8D0, type metadata accessor for SMTSchemaSMTAppLanguageModelBuildFailureReason, &protocol conformance descriptor for SMTSchemaSMTAppLanguageModelBuildFailureReason);
  sub_26738120C();
  v9(v7, 0, 1, v8);
  v11 = sub_2673811AC();
  sub_266EC637C(v7, 0x6E6F73616572, 0xE600000000000000);
  return v11(v13, 0);
}

uint64_t sub_267328A44(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267328AA8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_267328B50(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_267328B98()
{
  result = qword_2800FA8B0;
  if (!qword_2800FA8B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800FA8B0);
  }

  return result;
}

uint64_t static SMTSchemaSMTAppLanguageModelBuildFailureReason.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = MEMORY[0x277D84F90];
  sub_266ECA394(MEMORY[0x277D84F90]);
  sub_266ECDCE4(v0);
  sub_26738110C();
  v1 = sub_26738111C();
  v3 = v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v3;
  *v3 = 0x8000000000000000;
  sub_266ECD368(0, 0xD00000000000002DLL, 0x800000026749EC60, isUniquelyReferenced_nonNull_native);
  *v3 = v14;

  v1(v17, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v15 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000002ELL, 0x800000026749EC90, v8);
  *v7 = v15;

  v5(v17, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000030, 0x800000026749ECC0, v12);
  *v11 = v16;

  return v9(v17, 0);
}

uint64_t sub_267328DF8(uint64_t a1)
{
  v2 = sub_267328EFC(&qword_2800FA8D8, &protocol conformance descriptor for SMTSchemaSMTAppLanguageModelBuildFailureReason);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_267328E60(uint64_t a1, uint64_t a2)
{
  v4 = sub_267328EFC(&qword_2800FA8D8, &protocol conformance descriptor for SMTSchemaSMTAppLanguageModelBuildFailureReason);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_267328EFC(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SMTSchemaSMTAppLanguageModelBuildFailureReason(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static SMTSchemaSMTAppLanguageModelBuildStarted.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a1;
  v3 = sub_26738113C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v17 - v8;
  sub_266EC679C(MEMORY[0x277D84F90]);
  v17[1] = a2;
  sub_26738119C();
  v18 = "nguageModelBuildStarted";
  v10 = *(v4 + 104);
  v10(v6, *MEMORY[0x277D3E540], v3);
  v20[0] = 1;
  sub_26738114C();
  v11 = sub_26738116C();
  v12 = *(*(v11 - 8) + 56);
  v12(v9, 0, 1, v11);
  v13 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000013, v18 | 0x8000000000000000);
  v13(v20, 0);
  v10(v6, *MEMORY[0x277D3E530], v3);
  v20[0] = 1;
  sub_26738114C();
  v12(v9, 0, 1, v11);
  v14 = sub_2673811AC();
  sub_266EC637C(v9, 0x6C646E7542707061, 0xEB00000000644965);
  v14(v20, 0);
  type metadata accessor for SISchemaLocale(0);
  sub_26732943C(&qword_2800EEFA8, type metadata accessor for SISchemaLocale, &protocol conformance descriptor for SISchemaLocale);
  sub_26738120C();
  v12(v9, 0, 1, v11);
  v15 = sub_2673811AC();
  sub_266EC637C(v9, 0x656C61636F6CLL, 0xE600000000000000);
  return v15(v20, 0);
}

uint64_t sub_267329330(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267329394(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_26732943C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_267329484()
{
  result = qword_2800FA890;
  if (!qword_2800FA890)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800FA890);
  }

  return result;
}

uint64_t static SMTSchemaSMTAppLanguageModelProfileRebuildContext.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v22 = sub_26738118C();
  v20 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v21 = &v19 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v19 - v3;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800FA8E0, 0x277D5AD58);
  sub_266ECAF2C(&qword_2800FA8E8, &qword_2800FA8E0, 0x277D5AD58, &protocol conformance descriptor for SMTSchemaSMTAppLanguageModelProfileRebuildStarted);
  sub_26738121C();
  v5 = sub_26738116C();
  v6 = *(*(v5 - 8) + 56);
  v6(v4, 0, 1, v5);
  v7 = sub_2673811AC();
  sub_266EC637C(v4, 0xD000000000000010, 0x800000026741EB30);
  v7(v23, 0);
  sub_266ECB294(0, &qword_2800FA8F0, 0x277D5AD48);
  sub_266ECAF2C(&qword_2800FA8F8, &qword_2800FA8F0, 0x277D5AD48, &protocol conformance descriptor for SMTSchemaSMTAppLanguageModelProfileRebuildEnded);
  sub_26738121C();
  v6(v4, 0, 1, v5);
  v8 = sub_2673811AC();
  sub_266EC637C(v4, 0x6465646E65, 0xE500000000000000);
  v8(v23, 0);
  sub_266ECB294(0, &qword_2800FA900, 0x277D5AD50);
  sub_266ECAF2C(&qword_2800FA908, &qword_2800FA900, 0x277D5AD50, &protocol conformance descriptor for SMTSchemaSMTAppLanguageModelProfileRebuildFailed);
  sub_26738121C();
  v6(v4, 0, 1, v5);
  v9 = v21;
  v10 = sub_2673811AC();
  sub_266EC637C(v4, 0x64656C696166, 0xE600000000000000);
  v10(v23, 0);
  sub_26738117C();
  v11 = sub_2673811BC();
  v13 = v12;
  v14 = *v12;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v13 = v14;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v14 = sub_266ECAD54(0, v14[2] + 1, 1, v14);
    *v13 = v14;
  }

  v17 = v14[2];
  v16 = v14[3];
  if (v17 >= v16 >> 1)
  {
    v14 = sub_266ECAD54((v16 > 1), v17 + 1, 1, v14);
    *v13 = v14;
  }

  v14[2] = v17 + 1;
  (*(v20 + 32))(v14 + ((*(v20 + 80) + 32) & ~*(v20 + 80)) + *(v20 + 72) * v17, v9, v22);
  return v11(v23, 0);
}

uint64_t sub_2673299E8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267329A4C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static SMTSchemaSMTAppLanguageModelProfileRebuildEnded.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = sub_26738113C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v10[-v5];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  (*(v1 + 104))(v3, *MEMORY[0x277D3E4E8], v0);
  v10[0] = 1;
  sub_26738114C();
  v7 = sub_26738116C();
  (*(*(v7 - 8) + 56))(v6, 0, 1, v7);
  v8 = sub_2673811AC();
  sub_266EC637C(v6, 0x737473697865, 0xE600000000000000);
  return v8(v10, 0);
}

uint64_t sub_267329D38(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267329D9C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_267329E00()
{
  result = qword_2800FA8F8;
  if (!qword_2800FA8F8)
  {
    sub_267329E58();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800FA8F8);
  }

  return result;
}

unint64_t sub_267329E58()
{
  result = qword_2800FA8F0;
  if (!qword_2800FA8F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800FA8F0);
  }

  return result;
}

uint64_t static SMTSchemaSMTAppLanguageModelProfileRebuildFailed.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = sub_26738113C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v10[-v5];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  (*(v1 + 104))(v3, *MEMORY[0x277D3E4E8], v0);
  v10[0] = 1;
  sub_26738114C();
  v7 = sub_26738116C();
  (*(*(v7 - 8) + 56))(v6, 0, 1, v7);
  v8 = sub_2673811AC();
  sub_266EC637C(v6, 0x737473697865, 0xE600000000000000);
  return v8(v10, 0);
}

uint64_t sub_26732A0EC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26732A150(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26732A1B4()
{
  result = qword_2800FA908;
  if (!qword_2800FA908)
  {
    sub_26732A20C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800FA908);
  }

  return result;
}

unint64_t sub_26732A20C()
{
  result = qword_2800FA900;
  if (!qword_2800FA900)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800FA900);
  }

  return result;
}

uint64_t static SMTSchemaSMTAppLanguageModelProfileRebuildStarted.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = sub_26738113C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v10[-v5];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  (*(v1 + 104))(v3, *MEMORY[0x277D3E530], v0);
  v10[0] = 1;
  sub_26738114C();
  v7 = sub_26738116C();
  (*(*(v7 - 8) + 56))(v6, 0, 1, v7);
  v8 = sub_2673811AC();
  sub_266EC637C(v6, 0x6C646E7542707061, 0xEB00000000644965);
  return v8(v10, 0);
}

uint64_t sub_26732A4AC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26732A510(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26732A574()
{
  result = qword_2800FA8E8;
  if (!qword_2800FA8E8)
  {
    sub_26732A5CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800FA8E8);
  }

  return result;
}

unint64_t sub_26732A5CC()
{
  result = qword_2800FA8E0;
  if (!qword_2800FA8E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800FA8E0);
  }

  return result;
}

uint64_t static SMTSchemaSMTClientEvent.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v37 = a1;
  v1 = sub_26738118C();
  v33 = *(v1 - 8);
  v34 = v1;
  MEMORY[0x28223BE20](v1);
  v32 = v31 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v31 - v4;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800FA920, 0x277D5AD68);
  sub_266ECAF2C(&qword_2800FA928, &qword_2800FA920, 0x277D5AD68, &protocol conformance descriptor for SMTSchemaSMTClientEventMetadata);
  sub_26738120C();
  v6 = sub_26738116C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 56);
  v8(v5, 0, 1, v6);
  v9 = sub_2673811AC();
  sub_266EC637C(v5, 0x74654D746E657665, 0xED00006174616461);
  v9(v39, 0);
  sub_266ECB294(0, &qword_2800FA888, 0x277D5AD00);
  sub_266ECAF2C(&qword_2800FA880, &qword_2800FA888, 0x277D5AD00, &protocol conformance descriptor for SMTSchemaSMTAppLanguageModelAssetCopyContext);
  sub_26738121C();
  v36 = v8;
  v31[1] = v7 + 56;
  v8(v5, 0, 1, v6);
  v10 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000020, 0x800000026749EEB0);
  v10(v39, 0);
  v11 = sub_2673811AC();
  v12 = sub_266ECB6CC(v38, 0xD000000000000020, 0x800000026749EEB0);
  v35 = *(v7 + 48);
  if (!v35(v13, 1, v6))
  {
    sub_266ECB128(&unk_287892E90);
    sub_26738115C();
  }

  (v12)(v38, 0);
  v11(v39, 0);
  sub_266ECB294(0, &qword_2800FA8C8, 0x277D5AD20);
  sub_266ECAF2C(&qword_2800FA8C0, &qword_2800FA8C8, 0x277D5AD20, &protocol conformance descriptor for SMTSchemaSMTAppLanguageModelBuildContext);
  sub_26738121C();
  v36(v5, 0, 1, v6);
  v14 = sub_2673811AC();
  sub_266EC637C(v5, 0xD00000000000001CLL, 0x800000026749EEE0);
  v14(v39, 0);
  v15 = sub_2673811AC();
  v16 = sub_266ECB6CC(v38, 0xD00000000000001CLL, 0x800000026749EEE0);
  if (!v35(v17, 1, v6))
  {
    sub_266ECB128(&unk_287892EB8);
    sub_26738115C();
  }

  (v16)(v38, 0);
  v15(v39, 0);
  sub_266ECB294(0, &qword_2800FA918, 0x277D5AD40);
  sub_266ECAF2C(&qword_2800FA910, &qword_2800FA918, 0x277D5AD40, &protocol conformance descriptor for SMTSchemaSMTAppLanguageModelProfileRebuildContext);
  sub_26738121C();
  v36(v5, 0, 1, v6);
  v18 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000025, 0x800000026749EF00);
  v18(v39, 0);
  v19 = sub_2673811AC();
  v20 = sub_266ECB6CC(v38, 0xD000000000000025, 0x800000026749EF00);
  if (!v35(v21, 1, v6))
  {
    sub_266ECB128(&unk_287892EE0);
    sub_26738115C();
  }

  (v20)(v38, 0);
  v19(v39, 0);
  v22 = v32;
  sub_26738117C();
  v23 = sub_2673811BC();
  v25 = v24;
  v26 = *v24;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v25 = v26;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v26 = sub_266ECAD54(0, v26[2] + 1, 1, v26);
    *v25 = v26;
  }

  v29 = v26[2];
  v28 = v26[3];
  if (v29 >= v28 >> 1)
  {
    v26 = sub_266ECAD54((v28 > 1), v29 + 1, 1, v26);
    *v25 = v26;
  }

  v26[2] = v29 + 1;
  (*(v33 + 32))(v26 + ((*(v33 + 80) + 32) & ~*(v33 + 80)) + *(v33 + 72) * v29, v22, v34);
  v23(v39, 0);
  sub_266ECB128(&unk_287892F08);
  return sub_2673811CC();
}

uint64_t sub_26732ADD0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = swift_getWitnessTable();

  return MEMORY[0x28219EF78](a1, WitnessTable, v5, a2);
}

uint64_t sub_26732AE68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getWitnessTable();
  swift_getWitnessTable();
  return sub_26738123C();
}

uint64_t sub_26732AF34(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26732AF98(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_26732AFF8(void *a1)
{
  a1[1] = sub_266ECAF2C(&qword_2800FA930, &qword_2800FA938, 0x277D5AD60, &protocol conformance descriptor for SMTSchemaSMTClientEvent);
  a1[2] = sub_266ECAF2C(&qword_2800FA940, &qword_2800FA938, 0x277D5AD60, &protocol conformance descriptor for SMTSchemaSMTClientEvent);
  result = sub_266ECAF2C(&qword_2800FA948, &qword_2800FA938, 0x277D5AD60, &protocol conformance descriptor for SMTSchemaSMTClientEvent);
  a1[3] = result;
  return result;
}

uint64_t static SMTSchemaSMTClientEventMetadata.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = v11 - v2;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78, &protocol conformance descriptor for SISchemaUUID);
  sub_26738120C();
  v4 = sub_26738116C();
  v5 = *(v4 - 8);
  (*(v5 + 56))(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0x6449746D73, 0xE500000000000000);
  v6(v12, 0);
  v7 = sub_2673811AC();
  v8 = sub_266ECB6CC(v11, 0x6449746D73, 0xE500000000000000);
  if (!(*(v5 + 48))(v9, 1, v4))
  {
    sub_266ECB128(&unk_287892F40);
    sub_26738115C();
  }

  (v8)(v11, 0);
  return v7(v12, 0);
}

uint64_t sub_26732B390(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26732B3F4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static SRSchemaSRCheckErrorResponse.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v9[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for SRSchemaSRPredictedErrorType(0);
  sub_26732B858(&qword_2800FA958, type metadata accessor for SRSchemaSRPredictedErrorType, &protocol conformance descriptor for SRSchemaSRPredictedErrorType);
  sub_26738120C();
  v4 = sub_26738116C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000012, 0x800000026749EF90);
  v6(v9, 0);
  type metadata accessor for SRSchemaSRSelectedRecoveryStrategy(0);
  sub_26732B858(&qword_2800FA960, type metadata accessor for SRSchemaSRSelectedRecoveryStrategy, &protocol conformance descriptor for SRSchemaSRSelectedRecoveryStrategy);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000018, 0x800000026749EFB0);
  return v7(v9, 0);
}

uint64_t sub_26732B74C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26732B7B0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_26732B858(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_26732B8A0()
{
  result = qword_2800FA970;
  if (!qword_2800FA970)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800FA970);
  }

  return result;
}

uint64_t static SRSchemaSRClientEvent.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v20 = sub_26738118C();
  v1 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v19 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v19 - v4;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800FA978, 0x277D5AD98);
  sub_266ECAF2C(&qword_2800FA980, &qword_2800FA978, 0x277D5AD98, &protocol conformance descriptor for SRSchemaSRClientEventMetadata);
  sub_26738120C();
  v6 = sub_26738116C();
  v7 = *(*(v6 - 8) + 56);
  v7(v5, 0, 1, v6);
  v8 = sub_2673811AC();
  sub_266EC637C(v5, 0x74654D746E657665, 0xED00006174616461);
  v8(v21, 0);
  sub_266ECB294(0, &qword_2800FA988, 0x277D5ADA0);
  sub_266ECAF2C(&qword_2800FA990, &qword_2800FA988, 0x277D5ADA0, &protocol conformance descriptor for SRSchemaSRErrorChecked);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v9 = v19;
  v10 = sub_2673811AC();
  sub_266EC637C(v5, 0x656843726F727265, 0xEC00000064656B63);
  v10(v21, 0);
  sub_26738117C();
  v11 = sub_2673811BC();
  v13 = v12;
  v14 = *v12;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v13 = v14;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v14 = sub_266ECAD54(0, v14[2] + 1, 1, v14);
    *v13 = v14;
  }

  v17 = v14[2];
  v16 = v14[3];
  if (v17 >= v16 >> 1)
  {
    v14 = sub_266ECAD54((v16 > 1), v17 + 1, 1, v14);
    *v13 = v14;
  }

  v14[2] = v17 + 1;
  (*(v1 + 32))(v14 + ((*(v1 + 80) + 32) & ~*(v1 + 80)) + *(v1 + 72) * v17, v9, v20);
  v11(v21, 0);
  sub_266ECB128(&unk_287892F68);
  return sub_2673811CC();
}

uint64_t sub_26732BD24(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = swift_getWitnessTable();

  return MEMORY[0x28219EF78](a1, WitnessTable, v5, a2);
}

uint64_t sub_26732BDBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getWitnessTable();
  swift_getWitnessTable();
  return sub_26738123C();
}

uint64_t sub_26732BE88(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26732BEEC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_26732BF4C(void *a1)
{
  a1[1] = sub_266ECAF2C(&qword_2800FA998, &qword_2800FA9A0, 0x277D5AD90, &protocol conformance descriptor for SRSchemaSRClientEvent);
  a1[2] = sub_266ECAF2C(&qword_2800FA9A8, &qword_2800FA9A0, 0x277D5AD90, &protocol conformance descriptor for SRSchemaSRClientEvent);
  result = sub_266ECAF2C(&qword_2800FA9B0, &qword_2800FA9A0, 0x277D5AD90, &protocol conformance descriptor for SRSchemaSRClientEvent);
  a1[3] = result;
  return result;
}

uint64_t static SRSchemaSRClientEventMetadata.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v21 - v3;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  v21[1] = sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78, &protocol conformance descriptor for SISchemaUUID);
  sub_26738120C();
  v5 = sub_26738116C();
  v6 = *(v5 - 8);
  v23 = *(v6 + 56);
  v23(v4, 0, 1, v5);
  v7 = sub_2673811AC();
  sub_266EC637C(v4, 1682535027, 0xE400000000000000);
  v7(v26, 0);
  v8 = sub_2673811AC();
  v9 = sub_266ECB6CC(v25, 1682535027, 0xE400000000000000);
  v10 = *(v6 + 48);
  v24 = v6 + 48;
  v22 = v10;
  if (!v10(v11, 1, v5))
  {
    sub_266ECB128(&unk_287892FA0);
    sub_26738115C();
  }

  (v9)(v25, 0);
  v8(v26, 0);
  v21[2] = a1;
  sub_26738120C();
  v23(v4, 0, 1, v5);
  v12 = sub_2673811AC();
  sub_266EC637C(v4, 0x4974736575716572, 0xE900000000000064);
  v12(v26, 0);
  v13 = sub_2673811AC();
  v14 = sub_266ECB6CC(v25, 0x4974736575716572, 0xE900000000000064);
  if (!v22(v15, 1, v5))
  {
    sub_266ECB128(&unk_287892FD0);
    sub_26738115C();
  }

  (v14)(v25, 0);
  v13(v26, 0);
  sub_26738120C();
  v23(v4, 0, 1, v5);
  v16 = sub_2673811AC();
  sub_266EC637C(v4, 0x6575716552627573, 0xEC00000064497473);
  v16(v26, 0);
  v17 = sub_2673811AC();
  v18 = sub_266ECB6CC(v25, 0x6575716552627573, 0xEC00000064497473);
  if (!v22(v19, 1, v5))
  {
    sub_266ECB128(&unk_287893000);
    sub_26738115C();
  }

  (v18)(v25, 0);
  return v17(v26, 0);
}

uint64_t sub_26732C540(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26732C5A4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static SRSchemaSRErrorChecked.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800FA970, 0x277D5AD88);
  sub_266ECAF2C(&qword_2800FA968, &qword_2800FA970, 0x277D5AD88, &protocol conformance descriptor for SRSchemaSRCheckErrorResponse);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000012, 0x800000026749F060);
  return v5(v7, 0);
}

uint64_t sub_26732C840(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26732C8A4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static SRSchemaSRPredictedErrorType.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = MEMORY[0x277D84F90];
  sub_266ECA394(MEMORY[0x277D84F90]);
  sub_266ECDCE4(v0);
  sub_26738110C();
  v1 = sub_26738111C();
  v3 = v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v42 = *v3;
  *v3 = 0x8000000000000000;
  sub_266ECD368(0, 0xD00000000000001CLL, 0x800000026749F0B0, isUniquelyReferenced_nonNull_native);
  *v3 = v42;

  v1(v52, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v43 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000019, 0x800000026749F0D0, v8);
  *v7 = v43;

  v5(v52, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v44 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000022, 0x800000026749F0F0, v12);
  *v11 = v44;

  v9(v52, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v45 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000020, 0x800000026749F120, v16);
  *v15 = v45;

  v13(v52, 0);
  v17 = sub_26738111C();
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v46 = *v19;
  *v19 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000025, 0x800000026749F150, v20);
  *v19 = v46;

  v17(v52, 0);
  v21 = sub_26738111C();
  v23 = v22;
  v24 = swift_isUniquelyReferenced_nonNull_native();
  v47 = *v23;
  *v23 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000025, 0x800000026749F180, v24);
  *v23 = v47;

  v21(v52, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = swift_isUniquelyReferenced_nonNull_native();
  v48 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(6, 0xD00000000000001ELL, 0x800000026749F1B0, v28);
  *v27 = v48;

  v25(v52, 0);
  v29 = sub_26738111C();
  v31 = v30;
  v32 = swift_isUniquelyReferenced_nonNull_native();
  v49 = *v31;
  *v31 = 0x8000000000000000;
  sub_266ECD368(7, 0xD000000000000024, 0x800000026749F1D0, v32);
  *v31 = v49;

  v29(v52, 0);
  v33 = sub_26738111C();
  v35 = v34;
  v36 = swift_isUniquelyReferenced_nonNull_native();
  v50 = *v35;
  *v35 = 0x8000000000000000;
  sub_266ECD368(8, 0xD000000000000028, 0x800000026749F200, v36);
  *v35 = v50;

  v33(v52, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = swift_isUniquelyReferenced_nonNull_native();
  v51 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(9, 0xD00000000000002FLL, 0x800000026749F230, v40);
  *v39 = v51;

  return v37(v52, 0);
}

uint64_t sub_26732CE74(uint64_t a1)
{
  v2 = sub_26732CF78(&qword_2800FA9C0, &protocol conformance descriptor for SRSchemaSRPredictedErrorType);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_26732CEDC(uint64_t a1, uint64_t a2)
{
  v4 = sub_26732CF78(&qword_2800FA9C0, &protocol conformance descriptor for SRSchemaSRPredictedErrorType);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_26732CF78(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SRSchemaSRPredictedErrorType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static SRSchemaSRSelectedRecoveryStrategy.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = MEMORY[0x277D84F90];
  sub_266ECA394(MEMORY[0x277D84F90]);
  sub_266ECDCE4(v0);
  sub_26738110C();
  v1 = sub_26738111C();
  v3 = v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v34 = *v3;
  *v3 = 0x8000000000000000;
  sub_266ECD368(0, 0xD000000000000022, 0x800000026749F2A0, isUniquelyReferenced_nonNull_native);
  *v3 = v34;

  v1(v42, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v35 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000002ELL, 0x800000026749F2D0, v8);
  *v7 = v35;

  v5(v42, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v36 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000002FLL, 0x800000026749F300, v12);
  *v11 = v36;

  v9(v42, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v37 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000003DLL, 0x800000026749F330, v16);
  *v15 = v37;

  v13(v42, 0);
  v17 = sub_26738111C();
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v38 = *v19;
  *v19 = 0x8000000000000000;
  sub_266ECD368(4, 0xD00000000000004FLL, 0x800000026749F370, v20);
  *v19 = v38;

  v17(v42, 0);
  v21 = sub_26738111C();
  v23 = v22;
  v24 = swift_isUniquelyReferenced_nonNull_native();
  v39 = *v23;
  *v23 = 0x8000000000000000;
  sub_266ECD368(5, 0xD00000000000003FLL, 0x800000026749F3C0, v24);
  *v23 = v39;

  v21(v42, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = swift_isUniquelyReferenced_nonNull_native();
  v40 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(6, 0xD000000000000035, 0x800000026749F400, v28);
  *v27 = v40;

  v25(v42, 0);
  v29 = sub_26738111C();
  v31 = v30;
  v32 = swift_isUniquelyReferenced_nonNull_native();
  v41 = *v31;
  *v31 = 0x8000000000000000;
  sub_266ECD368(7, 0xD000000000000039, 0x800000026749F440, v32);
  *v31 = v41;

  return v29(v42, 0);
}

uint64_t sub_26732D408(uint64_t a1)
{
  v2 = sub_26732D50C(&qword_2800FA9C8, &protocol conformance descriptor for SRSchemaSRSelectedRecoveryStrategy);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_26732D470(uint64_t a1, uint64_t a2)
{
  v4 = sub_26732D50C(&qword_2800FA9C8, &protocol conformance descriptor for SRSchemaSRSelectedRecoveryStrategy);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_26732D50C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SRSchemaSRSelectedRecoveryStrategy(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static SRSTSchemaSRSTClientEvent.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = sub_26738118C();
  v21 = *(v1 - 8);
  v22 = v1;
  MEMORY[0x28223BE20](v1);
  v20 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v19 - v4;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800FA9D0, 0x277D5AD78);
  sub_266ECAF2C(&qword_2800FA9D8, &qword_2800FA9D0, 0x277D5AD78, &protocol conformance descriptor for SRSTSchemaSRSTClientEventMetadata);
  sub_26738120C();
  v6 = sub_26738116C();
  v7 = *(*(v6 - 8) + 56);
  v7(v5, 0, 1, v6);
  v8 = sub_2673811AC();
  sub_266EC637C(v5, 0x74654D746E657665, 0xED00006174616461);
  v8(v23, 0);
  sub_266ECB294(0, &qword_2800FA9E0, 0x277D5AD80);
  sub_266ECAF2C(&qword_2800FA9E8, &qword_2800FA9E0, 0x277D5AD80, &protocol conformance descriptor for SRSTSchemaSRSTStateTransitionEvent);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v9 = sub_2673811AC();
  v10 = v20;
  sub_266EC637C(v5, 0xD000000000000014, 0x800000026749F4B0);
  v9(v23, 0);
  sub_26738117C();
  v11 = sub_2673811BC();
  v13 = v12;
  v14 = *v12;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v13 = v14;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v14 = sub_266ECAD54(0, v14[2] + 1, 1, v14);
    *v13 = v14;
  }

  v17 = v14[2];
  v16 = v14[3];
  if (v17 >= v16 >> 1)
  {
    v14 = sub_266ECAD54((v16 > 1), v17 + 1, 1, v14);
    *v13 = v14;
  }

  v14[2] = v17 + 1;
  (*(v21 + 32))(v14 + ((*(v21 + 80) + 32) & ~*(v21 + 80)) + *(v21 + 72) * v17, v10, v22);
  v11(v23, 0);
  sub_266ECB128(&unk_287893030);
  return sub_2673811CC();
}

uint64_t sub_26732D980(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = swift_getWitnessTable();

  return MEMORY[0x28219EF78](a1, WitnessTable, v5, a2);
}

uint64_t sub_26732DA18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getWitnessTable();
  swift_getWitnessTable();
  return sub_26738123C();
}

uint64_t sub_26732DAE4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26732DB48(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_26732DBA8(void *a1)
{
  a1[1] = sub_266ECAF2C(&qword_2800FA9F0, &qword_2800F1F10, 0x277D5AD70, &protocol conformance descriptor for SRSTSchemaSRSTClientEvent);
  a1[2] = sub_266ECAF2C(&qword_2800FA9F8, &qword_2800F1F10, 0x277D5AD70, &protocol conformance descriptor for SRSTSchemaSRSTClientEvent);
  result = sub_266ECAF2C(&qword_2800FAA00, &qword_2800F1F10, 0x277D5AD70, &protocol conformance descriptor for SRSTSchemaSRSTClientEvent);
  a1[3] = result;
  return result;
}

uint64_t static SRSTSchemaSRSTClientEventMetadata.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v13[1] = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = v13 - v2;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78, &protocol conformance descriptor for SISchemaUUID);
  sub_26738120C();
  v4 = sub_26738116C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 56);
  v6(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0x496E6F6973736573, 0xE900000000000064);
  v7(v15, 0);
  sub_26738120C();
  v6(v3, 0, 1, v4);
  v8 = sub_2673811AC();
  sub_266EC637C(v3, 0x644974737273, 0xE600000000000000);
  v8(v15, 0);
  v9 = sub_2673811AC();
  v10 = sub_266ECB6CC(v14, 0x644974737273, 0xE600000000000000);
  if (!(*(v5 + 48))(v11, 1, v4))
  {
    sub_266ECB128(&unk_287893068);
    sub_26738115C();
  }

  (v10)(v14, 0);
  v9(v15, 0);
  sub_266ECB128(&unk_287893098);
  return sub_2673811CC();
}

uint64_t sub_26732DFE8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26732E04C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static SRSTSchemaSRSTState.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = MEMORY[0x277D84F90];
  sub_266ECA394(MEMORY[0x277D84F90]);
  sub_266ECDCE4(v0);
  sub_26738110C();
  v1 = sub_26738111C();
  v3 = v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v42 = *v3;
  *v3 = 0x8000000000000000;
  sub_266ECD368(0, 0xD000000000000011, 0x800000026749F540, isUniquelyReferenced_nonNull_native);
  *v3 = v42;

  v1(v52, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v43 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000012, 0x800000026749F560, v8);
  *v7 = v43;

  v5(v52, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v44 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000014, 0x800000026749F580, v12);
  *v11 = v44;

  v9(v52, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v45 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000013, 0x800000026749F5A0, v16);
  *v15 = v45;

  v13(v52, 0);
  v17 = sub_26738111C();
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v46 = *v19;
  *v19 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000017, 0x800000026749F5C0, v20);
  *v19 = v46;

  v17(v52, 0);
  v21 = sub_26738111C();
  v23 = v22;
  v24 = swift_isUniquelyReferenced_nonNull_native();
  v47 = *v23;
  *v23 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000014, 0x800000026749F5E0, v24);
  *v23 = v47;

  v21(v52, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = swift_isUniquelyReferenced_nonNull_native();
  v48 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(6, 0xD000000000000014, 0x800000026749F600, v28);
  *v27 = v48;

  v25(v52, 0);
  v29 = sub_26738111C();
  v31 = v30;
  v32 = swift_isUniquelyReferenced_nonNull_native();
  v49 = *v31;
  *v31 = 0x8000000000000000;
  sub_266ECD368(7, 0xD000000000000011, 0x800000026749F620, v32);
  *v31 = v49;

  v29(v52, 0);
  v33 = sub_26738111C();
  v35 = v34;
  v36 = swift_isUniquelyReferenced_nonNull_native();
  v50 = *v35;
  *v35 = 0x8000000000000000;
  sub_266ECD368(8, 0xD00000000000001ELL, 0x800000026749F640, v36);
  *v35 = v50;

  v33(v52, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = swift_isUniquelyReferenced_nonNull_native();
  v51 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(9, 0xD00000000000001DLL, 0x800000026749F660, v40);
  *v39 = v51;

  v37(v52, 0);
  sub_266ECB128(&unk_2878930C8);
  return sub_26738112C();
}

uint64_t sub_26732E644(uint64_t a1)
{
  v2 = sub_26732E748(&qword_2800FAA10, &protocol conformance descriptor for SRSTSchemaSRSTState);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_26732E6AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_26732E748(&qword_2800FAA10, &protocol conformance descriptor for SRSTSchemaSRSTState);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_26732E748(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SRSTSchemaSRSTState(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static SRSTSchemaSRSTStateTransitionEvent.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v10[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for SRSTSchemaSRSTState(0);
  sub_26732EBEC(&qword_2800FAA08, type metadata accessor for SRSTSchemaSRSTState, &protocol conformance descriptor for SRSTSchemaSRSTState);
  sub_26738120C();
  v4 = sub_26738116C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0x53746E6572727563, 0xEC00000065746174);
  v6(v10, 0);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0x73756F6976657270, 0xED00006574617453);
  v7(v10, 0);
  type metadata accessor for SRSTSchemaSRSTStateTransitionReason(0);
  sub_26732EBEC(&qword_2800FAA18, type metadata accessor for SRSTSchemaSRSTStateTransitionReason, &protocol conformance descriptor for SRSTSchemaSRSTStateTransitionReason);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v8 = sub_2673811AC();
  sub_266EC637C(v3, 0x6E6F73616572, 0xE600000000000000);
  v8(v10, 0);
  sub_266ECB128(&unk_2878930F8);
  return sub_2673811CC();
}

uint64_t sub_26732EAE0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26732EB44(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_26732EBEC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_26732EC34()
{
  result = qword_2800FA9E0;
  if (!qword_2800FA9E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800FA9E0);
  }

  return result;
}

uint64_t static SRSTSchemaSRSTStateTransitionReason.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = MEMORY[0x277D84F90];
  sub_266ECA394(MEMORY[0x277D84F90]);
  sub_266ECDCE4(v0);
  sub_26738110C();
  v1 = sub_26738111C();
  v3 = v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v98 = *v3;
  *v3 = 0x8000000000000000;
  sub_266ECD368(0, 0xD000000000000021, 0x800000026749F700, isUniquelyReferenced_nonNull_native);
  *v3 = v98;

  v1(v122, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v99 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000021, 0x800000026749F730, v8);
  *v7 = v99;

  v5(v122, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v100 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000028, 0x800000026749F760, v12);
  *v11 = v100;

  v9(v122, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v101 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000028, 0x800000026749F790, v16);
  *v15 = v101;

  v13(v122, 0);
  v17 = sub_26738111C();
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v102 = *v19;
  *v19 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000020, 0x800000026749F7C0, v20);
  *v19 = v102;

  v17(v122, 0);
  v21 = sub_26738111C();
  v23 = v22;
  v24 = swift_isUniquelyReferenced_nonNull_native();
  v103 = *v23;
  *v23 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000021, 0x800000026749F7F0, v24);
  *v23 = v103;

  v21(v122, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = swift_isUniquelyReferenced_nonNull_native();
  v104 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(6, 0xD000000000000028, 0x800000026749F820, v28);
  *v27 = v104;

  v25(v122, 0);
  v29 = sub_26738111C();
  v31 = v30;
  v32 = swift_isUniquelyReferenced_nonNull_native();
  v105 = *v31;
  *v31 = 0x8000000000000000;
  sub_266ECD368(7, 0xD000000000000028, 0x800000026749F850, v32);
  *v31 = v105;

  v29(v122, 0);
  v33 = sub_26738111C();
  v35 = v34;
  v36 = swift_isUniquelyReferenced_nonNull_native();
  v106 = *v35;
  *v35 = 0x8000000000000000;
  sub_266ECD368(8, 0xD000000000000025, 0x800000026749F880, v36);
  *v35 = v106;

  v33(v122, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = swift_isUniquelyReferenced_nonNull_native();
  v107 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(9, 0xD000000000000029, 0x800000026749F8B0, v40);
  *v39 = v107;

  v37(v122, 0);
  v41 = sub_26738111C();
  v43 = v42;
  v44 = swift_isUniquelyReferenced_nonNull_native();
  v108 = *v43;
  *v43 = 0x8000000000000000;
  sub_266ECD368(10, 0xD00000000000002ALL, 0x800000026749F8E0, v44);
  *v43 = v108;

  v41(v122, 0);
  v45 = sub_26738111C();
  v47 = v46;
  v48 = swift_isUniquelyReferenced_nonNull_native();
  v109 = *v47;
  *v47 = 0x8000000000000000;
  sub_266ECD368(11, 0xD000000000000027, 0x800000026749F910, v48);
  *v47 = v109;

  v45(v122, 0);
  v49 = sub_26738111C();
  v51 = v50;
  v52 = swift_isUniquelyReferenced_nonNull_native();
  v110 = *v51;
  *v51 = 0x8000000000000000;
  sub_266ECD368(12, 0xD000000000000026, 0x800000026749F940, v52);
  *v51 = v110;

  v49(v122, 0);
  v53 = sub_26738111C();
  v55 = v54;
  v56 = swift_isUniquelyReferenced_nonNull_native();
  v111 = *v55;
  *v55 = 0x8000000000000000;
  sub_266ECD368(13, 0xD00000000000002ELL, 0x800000026749F970, v56);
  *v55 = v111;

  v53(v122, 0);
  v57 = sub_26738111C();
  v59 = v58;
  v60 = swift_isUniquelyReferenced_nonNull_native();
  v112 = *v59;
  *v59 = 0x8000000000000000;
  sub_266ECD368(14, 0xD000000000000021, 0x800000026749F9A0, v60);
  *v59 = v112;

  v57(v122, 0);
  v61 = sub_26738111C();
  v63 = v62;
  v64 = swift_isUniquelyReferenced_nonNull_native();
  v113 = *v63;
  *v63 = 0x8000000000000000;
  sub_266ECD368(15, 0xD000000000000024, 0x800000026749F9D0, v64);
  *v63 = v113;

  v61(v122, 0);
  v65 = sub_26738111C();
  v67 = v66;
  v68 = swift_isUniquelyReferenced_nonNull_native();
  v114 = *v67;
  *v67 = 0x8000000000000000;
  sub_266ECD368(16, 0xD000000000000022, 0x800000026749FA00, v68);
  *v67 = v114;

  v65(v122, 0);
  v69 = sub_26738111C();
  v71 = v70;
  v72 = swift_isUniquelyReferenced_nonNull_native();
  v115 = *v71;
  *v71 = 0x8000000000000000;
  sub_266ECD368(17, 0xD000000000000020, 0x800000026749FA30, v72);
  *v71 = v115;

  v69(v122, 0);
  v73 = sub_26738111C();
  v75 = v74;
  v76 = swift_isUniquelyReferenced_nonNull_native();
  v116 = *v75;
  *v75 = 0x8000000000000000;
  sub_266ECD368(18, 0xD000000000000022, 0x800000026749FA60, v76);
  *v75 = v116;

  v73(v122, 0);
  v77 = sub_26738111C();
  v79 = v78;
  v80 = swift_isUniquelyReferenced_nonNull_native();
  v117 = *v79;
  *v79 = 0x8000000000000000;
  sub_266ECD368(19, 0xD00000000000002BLL, 0x800000026749FA90, v80);
  *v79 = v117;

  v77(v122, 0);
  v81 = sub_26738111C();
  v83 = v82;
  v84 = swift_isUniquelyReferenced_nonNull_native();
  v118 = *v83;
  *v83 = 0x8000000000000000;
  sub_266ECD368(20, 0xD000000000000026, 0x800000026749FAC0, v84);
  *v83 = v118;

  v81(v122, 0);
  v85 = sub_26738111C();
  v87 = v86;
  v88 = swift_isUniquelyReferenced_nonNull_native();
  v119 = *v87;
  *v87 = 0x8000000000000000;
  sub_266ECD368(21, 0xD000000000000021, 0x800000026749FAF0, v88);
  *v87 = v119;

  v85(v122, 0);
  v89 = sub_26738111C();
  v91 = v90;
  v92 = swift_isUniquelyReferenced_nonNull_native();
  v120 = *v91;
  *v91 = 0x8000000000000000;
  sub_266ECD368(22, 0xD00000000000001FLL, 0x800000026749FB20, v92);
  *v91 = v120;

  v89(v122, 0);
  v93 = sub_26738111C();
  v95 = v94;
  v96 = swift_isUniquelyReferenced_nonNull_native();
  v121 = *v95;
  *v95 = 0x8000000000000000;
  sub_266ECD368(23, 0xD00000000000001ELL, 0x800000026749FB40, v96);
  *v95 = v121;

  v93(v122, 0);
  sub_266ECB128(&unk_287893128);
  return sub_26738112C();
}

uint64_t sub_26732F7F8(uint64_t a1)
{
  v2 = sub_26732F8FC(&qword_2800FAA20, &protocol conformance descriptor for SRSTSchemaSRSTStateTransitionReason);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_26732F860(uint64_t a1, uint64_t a2)
{
  v4 = sub_26732F8FC(&qword_2800FAA20, &protocol conformance descriptor for SRSTSchemaSRSTStateTransitionReason);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_26732F8FC(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SRSTSchemaSRSTStateTransitionReason(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static STSchemaAnswerSythesisHydrationMetric.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v13 = sub_26738113C();
  v1 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v12 - v5;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for STSchemaSTAnswerSynthesisHydrationContentType(0);
  sub_26732FD80(&qword_2800FAA28, type metadata accessor for STSchemaSTAnswerSynthesisHydrationContentType, &protocol conformance descriptor for STSchemaSTAnswerSynthesisHydrationContentType);
  sub_26738120C();
  v7 = sub_26738116C();
  v8 = *(*(v7 - 8) + 56);
  v8(v6, 0, 1, v7);
  v9 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000016, 0x800000026749FBA0);
  v9(v14, 0);
  (*(v1 + 104))(v3, *MEMORY[0x277D3E508], v13);
  v14[0] = 1;
  sub_26738114C();
  v8(v6, 0, 1, v7);
  v10 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000021, 0x800000026749FBC0);
  return v10(v14, 0);
}

uint64_t sub_26732FC74(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26732FCD8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_26732FD80(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_26732FDC8()
{
  result = qword_2800FAA38;
  if (!qword_2800FAA38)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800FAA38);
  }

  return result;
}

uint64_t static STSchemaDocumentAttributes.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26738113C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v19 - v7;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v9 = *MEMORY[0x277D3E530];
  v10 = *(v3 + 104);
  v22 = v3 + 104;
  v23 = v2;
  v21 = v10;
  v10(v5, v9, v2);
  v26[0] = 1;
  sub_26738114C();
  v11 = sub_26738116C();
  v12 = *(v11 - 8);
  v20 = *(v12 + 56);
  v20(v8, 0, 1, v11);
  v13 = sub_2673811AC();
  sub_266EC637C(v8, 0x6449656C646E7562, 0xE800000000000000);
  v13(v26, 0);
  v24 = a1;
  v14 = sub_2673811AC();
  v15 = sub_266ECB6CC(v25, 0x6449656C646E7562, 0xE800000000000000);
  if (!(*(v12 + 48))(v16, 1, v11))
  {
    sub_266ECB128(&unk_287893158);
    sub_26738115C();
  }

  (v15)(v25, 0);
  v14(v26, 0);
  v21(v5, *MEMORY[0x277D3E538], v23);
  v26[0] = 1;
  sub_26738114C();
  v20(v8, 0, 1, v11);
  v17 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000012, 0x800000026749FC30);
  return v17(v26, 0);
}

uint64_t sub_2673301EC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267330250(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2673302B4()
{
  result = qword_2800FAA40;
  if (!qword_2800FAA40)
  {
    sub_26733030C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800FAA40);
  }

  return result;
}

unint64_t sub_26733030C()
{
  result = qword_2800FAA48;
  if (!qword_2800FAA48)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800FAA48);
  }

  return result;
}

uint64_t static STSchemaLLMQUPerfMetrics.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = sub_26738113C();
  v32 = v0;
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v26 - v5;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v28 = "iri.searchtool.LLMQUPerfMetrics";
  v8 = *(v1 + 104);
  v29 = *MEMORY[0x277D3E538];
  v7 = v29;
  v8(v3, v29, v0);
  v33 = v1 + 104;
  v27 = v8;
  v34[0] = 1;
  sub_26738114C();
  v30 = sub_26738116C();
  v9 = *(v30 - 8);
  v10 = *(v9 + 56);
  v31 = v9 + 56;
  v10(v6, 0, 1, v30);
  v11 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000018, v28 | 0x8000000000000000);
  v11(v34, 0);
  v12 = v7;
  v13 = v32;
  v8(v3, v12, v32);
  v34[0] = 1;
  sub_26738114C();
  v14 = v30;
  v10(v6, 0, 1, v30);
  v15 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000021, 0x800000026749FCA0);
  v15(v34, 0);
  v28 = "ationDurationInMs";
  v16 = v29;
  v17 = v13;
  v18 = v27;
  v27(v3, v29, v17);
  v34[0] = 1;
  sub_26738114C();
  v10(v6, 0, 1, v14);
  v19 = sub_2673811AC();
  sub_266EC637C(v6, 0xD00000000000001DLL, v28 | 0x8000000000000000);
  v19(v34, 0);
  v28 = "llmquPreWarmModelDurationInMs";
  v20 = v16;
  v21 = v32;
  v18(v3, v20, v32);
  v34[0] = 1;
  sub_26738114C();
  v22 = v30;
  v10(v6, 0, 1, v30);
  v23 = sub_2673811AC();
  sub_266EC637C(v6, 0xD00000000000001ALL, v28 | 0x8000000000000000);
  v23(v34, 0);
  v18(v3, v29, v21);
  v34[0] = 1;
  sub_26738114C();
  v10(v6, 0, 1, v22);
  v24 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000022, 0x800000026749FD10);
  return v24(v34, 0);
}

uint64_t sub_267330904(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267330968(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2673309CC()
{
  result = qword_2800FAA50;
  if (!qword_2800FAA50)
  {
    sub_267330A24();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800FAA50);
  }

  return result;
}

unint64_t sub_267330A24()
{
  result = qword_2800FAA58;
  if (!qword_2800FAA58)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800FAA58);
  }

  return result;
}

uint64_t static STSchemaLLMQUQueryArguments.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v13 = a1;
  v14 = sub_26738113C();
  v1 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v13 - v5;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78, &protocol conformance descriptor for SISchemaUUID);
  sub_26738120C();
  v7 = sub_26738116C();
  v8 = *(*(v7 - 8) + 56);
  v8(v6, 0, 1, v7);
  v9 = sub_2673811AC();
  sub_266EC637C(v6, 0x64496B6E696CLL, 0xE600000000000000);
  v9(v15, 0);
  (*(v1 + 104))(v3, *MEMORY[0x277D3E4E8], v14);
  v15[0] = 1;
  sub_26738114C();
  v8(v6, 0, 1, v7);
  v10 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000017, 0x800000026749FD80);
  v10(v15, 0);
  type metadata accessor for STSchemaSTLLMQUModelSortOrder(0);
  sub_267330EFC();
  sub_26738120C();
  v8(v6, 0, 1, v7);
  v11 = sub_2673811AC();
  sub_266EC637C(v6, 0x6564724F74726F73, 0xE900000000000072);
  return v11(v15, 0);
}

uint64_t sub_267330E38(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267330E9C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_267330EFC()
{
  result = qword_2800FAA60;
  if (!qword_2800FAA60)
  {
    type metadata accessor for STSchemaSTLLMQUModelSortOrder(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800FAA60);
  }

  return result;
}

uint64_t static STSchemaQueryAttributes.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800FAA78, 0x277D5ADC8);
  sub_266ECAF2C(&qword_2800FAA80, &qword_2800FAA78, 0x277D5ADC8, &protocol conformance descriptor for STSchemaQUTokenParseInfo);
  sub_26738122C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000010, 0x800000026749FDD0);
  return v5(v7, 0);
}

uint64_t sub_267331190(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2673311F4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static STSchemaQUTokenParseInfo.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = sub_26738113C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v10[-v5];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  (*(v1 + 104))(v3, *MEMORY[0x277D3E538], v0);
  v10[0] = 1;
  sub_26738114C();
  v7 = sub_26738116C();
  (*(*(v7 - 8) + 56))(v6, 0, 1, v7);
  v8 = sub_2673811AC();
  sub_266EC637C(v6, 0x6E654C6E656B6F74, 0xEB00000000687467);
  return v8(v10, 0);
}

uint64_t sub_2673314EC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267331550(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2673315B4()
{
  result = qword_2800FAA80;
  if (!qword_2800FAA80)
  {
    sub_26733160C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800FAA80);
  }

  return result;
}

unint64_t sub_26733160C()
{
  result = qword_2800FAA78;
  if (!qword_2800FAA78)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800FAA78);
  }

  return result;
}

uint64_t static STSchemaSTAnswerSynthesisContext.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v22 = sub_26738118C();
  v20 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v21 = &v19 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v19 - v3;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800FAA98, 0x277D5AE00);
  sub_266ECAF2C(&qword_2800FAAA0, &qword_2800FAA98, 0x277D5AE00, &protocol conformance descriptor for STSchemaSTAnswerSynthesisRequestStarted);
  sub_26738121C();
  v5 = sub_26738116C();
  v6 = *(*(v5 - 8) + 56);
  v6(v4, 0, 1, v5);
  v7 = sub_2673811AC();
  sub_266EC637C(v4, 0xD000000000000010, 0x800000026741EB30);
  v7(v23, 0);
  sub_266ECB294(0, &qword_2800FAAA8, 0x277D5ADF0);
  sub_266ECAF2C(&qword_2800FAAB0, &qword_2800FAAA8, 0x277D5ADF0, &protocol conformance descriptor for STSchemaSTAnswerSynthesisRequestEnded);
  sub_26738121C();
  v6(v4, 0, 1, v5);
  v8 = sub_2673811AC();
  sub_266EC637C(v4, 0x6465646E65, 0xE500000000000000);
  v8(v23, 0);
  sub_266ECB294(0, &qword_2800FAAB8, 0x277D5ADF8);
  sub_266ECAF2C(&qword_2800FAAC0, &qword_2800FAAB8, 0x277D5ADF8, &protocol conformance descriptor for STSchemaSTAnswerSynthesisRequestFailed);
  sub_26738121C();
  v6(v4, 0, 1, v5);
  v9 = v21;
  v10 = sub_2673811AC();
  sub_266EC637C(v4, 0x64656C696166, 0xE600000000000000);
  v10(v23, 0);
  sub_26738117C();
  v11 = sub_2673811BC();
  v13 = v12;
  v14 = *v12;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v13 = v14;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v14 = sub_266ECAD54(0, v14[2] + 1, 1, v14);
    *v13 = v14;
  }

  v17 = v14[2];
  v16 = v14[3];
  if (v17 >= v16 >> 1)
  {
    v14 = sub_266ECAD54((v16 > 1), v17 + 1, 1, v14);
    *v13 = v14;
  }

  v14[2] = v17 + 1;
  (*(v20 + 32))(v14 + ((*(v20 + 80) + 32) & ~*(v20 + 80)) + *(v20 + 72) * v17, v9, v22);
  return v11(v23, 0);
}

uint64_t sub_267331B70(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267331BD4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static STSchemaSTAnswerSynthesisDataMetrics.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a1;
  v3 = sub_26738113C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v26 - v8;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v10 = *MEMORY[0x277D3E538];
  v28 = *(v4 + 104);
  v32 = v4 + 104;
  v33 = v3;
  v28(v6, v10, v3);
  v34[0] = 1;
  sub_26738114C();
  v11 = sub_26738116C();
  v12 = *(*(v11 - 8) + 56);
  v27 = v11;
  v12(v9, 0, 1, v11);
  v30 = a2;
  v31 = v12;
  v13 = sub_2673811AC();
  sub_266EC637C(v9, 0x61434D4C4C6D756ELL, 0xEB00000000736C6CLL);
  v13(v34, 0);
  v14 = v3;
  v15 = v28;
  v28(v6, v10, v14);
  v34[0] = 1;
  sub_26738114C();
  v12(v9, 0, 1, v11);
  v16 = sub_2673811AC();
  sub_266EC637C(v9, 0x654C74706D6F7270, 0xEC0000006874676ELL);
  v16(v34, 0);
  v17 = v33;
  v15(v6, v10, v33);
  v34[0] = 1;
  sub_26738114C();
  v18 = v27;
  v31(v9, 0, 1, v27);
  v19 = sub_2673811AC();
  sub_266EC637C(v9, 0x65736E6F70736572, 0xEE006874676E654CLL);
  v19(v34, 0);
  v15(v6, v10, v17);
  v34[0] = 1;
  sub_26738114C();
  v20 = v31;
  v31(v9, 0, 1, v18);
  v21 = sub_2673811AC();
  sub_266EC637C(v9, 0x6577736E416D756ELL, 0xEA00000000007372);
  v21(v34, 0);
  v26 = "TAnswerSynthesisDataMetrics";
  v15(v6, v10, v33);
  v34[0] = 1;
  sub_26738114C();
  v20(v9, 0, 1, v18);
  v22 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000013, v26 | 0x8000000000000000);
  v22(v34, 0);
  v15(v6, *MEMORY[0x277D3E508], v33);
  v34[0] = 1;
  sub_26738114C();
  v20(v9, 0, 1, v18);
  v23 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000014, 0x800000026749FEC0);
  v23(v34, 0);
  sub_266ECB294(0, &qword_2800FAA38, 0x277D5ADA8);
  sub_266ECAF2C(&qword_2800FAA30, &qword_2800FAA38, 0x277D5ADA8, &protocol conformance descriptor for STSchemaAnswerSythesisHydrationMetric);
  sub_26738122C();
  v20(v9, 0, 1, v18);
  v24 = sub_2673811AC();
  sub_266EC637C(v9, 0xD00000000000001FLL, 0x800000026749FEE0);
  return v24(v34, 0);
}

uint64_t sub_2673323A0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267332404(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static STSchemaSTAnswerSynthesisFailureReason.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = MEMORY[0x277D84F90];
  sub_266ECA394(MEMORY[0x277D84F90]);
  sub_266ECDCE4(v0);
  sub_26738110C();
  v1 = sub_26738111C();
  v3 = v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v3;
  *v3 = 0x8000000000000000;
  sub_266ECD368(0, 0xD000000000000026, 0x800000026749FF40, isUniquelyReferenced_nonNull_native);
  *v3 = v14;

  v1(v17, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v15 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000026, 0x800000026749FF70, v8);
  *v7 = v15;

  v5(v17, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000002CLL, 0x800000026749FFA0, v12);
  *v11 = v16;

  return v9(v17, 0);
}

uint64_t sub_2673326C0(uint64_t a1)
{
  v2 = sub_2673327C4(&qword_2800FAAF0, &protocol conformance descriptor for STSchemaSTAnswerSynthesisFailureReason);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_267332728(uint64_t a1, uint64_t a2)
{
  v4 = sub_2673327C4(&qword_2800FAAF0, &protocol conformance descriptor for STSchemaSTAnswerSynthesisFailureReason);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2673327C4(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for STSchemaSTAnswerSynthesisFailureReason(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static STSchemaSTAnswerSynthesisHydrationContentType.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = MEMORY[0x277D84F90];
  sub_266ECA394(MEMORY[0x277D84F90]);
  sub_266ECDCE4(v0);
  sub_26738110C();
  v1 = sub_26738111C();
  v3 = v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v70 = *v3;
  *v3 = 0x8000000000000000;
  sub_266ECD368(0, 0xD00000000000002DLL, 0x80000002674A0020, isUniquelyReferenced_nonNull_native);
  *v3 = v70;

  v1(v87, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v71 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000002BLL, 0x80000002674A0050, v8);
  *v7 = v71;

  v5(v87, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v72 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000002BLL, 0x80000002674A0080, v12);
  *v11 = v72;

  v9(v87, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v73 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000030, 0x80000002674A00B0, v16);
  *v15 = v73;

  v13(v87, 0);
  v17 = sub_26738111C();
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v74 = *v19;
  *v19 = 0x8000000000000000;
  sub_266ECD368(4, 0xD00000000000002ALL, 0x80000002674A00F0, v20);
  *v19 = v74;

  v17(v87, 0);
  v21 = sub_26738111C();
  v23 = v22;
  v24 = swift_isUniquelyReferenced_nonNull_native();
  v75 = *v23;
  *v23 = 0x8000000000000000;
  sub_266ECD368(5, 0xD00000000000002DLL, 0x80000002674A0120, v24);
  *v23 = v75;

  v21(v87, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = swift_isUniquelyReferenced_nonNull_native();
  v76 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(6, 0xD00000000000002ALL, 0x80000002674A0150, v28);
  *v27 = v76;

  v25(v87, 0);
  v29 = sub_26738111C();
  v31 = v30;
  v32 = swift_isUniquelyReferenced_nonNull_native();
  v77 = *v31;
  *v31 = 0x8000000000000000;
  sub_266ECD368(7, 0xD00000000000003CLL, 0x80000002674A0180, v32);
  *v31 = v77;

  v29(v87, 0);
  v33 = sub_26738111C();
  v35 = v34;
  v36 = swift_isUniquelyReferenced_nonNull_native();
  v78 = *v35;
  *v35 = 0x8000000000000000;
  sub_266ECD368(8, 0xD000000000000037, 0x80000002674A01C0, v36);
  *v35 = v78;

  v33(v87, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = swift_isUniquelyReferenced_nonNull_native();
  v79 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(9, 0xD000000000000038, 0x80000002674A0200, v40);
  *v39 = v79;

  v37(v87, 0);
  v41 = sub_26738111C();
  v43 = v42;
  v44 = swift_isUniquelyReferenced_nonNull_native();
  v80 = *v43;
  *v43 = 0x8000000000000000;
  sub_266ECD368(10, 0xD00000000000003CLL, 0x80000002674A0240, v44);
  *v43 = v80;

  v41(v87, 0);
  v45 = sub_26738111C();
  v47 = v46;
  v48 = swift_isUniquelyReferenced_nonNull_native();
  v81 = *v47;
  *v47 = 0x8000000000000000;
  sub_266ECD368(11, 0xD00000000000002ALL, 0x80000002674A0280, v48);
  *v47 = v81;

  v45(v87, 0);
  v49 = sub_26738111C();
  v51 = v50;
  v52 = swift_isUniquelyReferenced_nonNull_native();
  v82 = *v51;
  *v51 = 0x8000000000000000;
  sub_266ECD368(12, 0xD000000000000031, 0x80000002674A02B0, v52);
  *v51 = v82;

  v49(v87, 0);
  v53 = sub_26738111C();
  v55 = v54;
  v56 = swift_isUniquelyReferenced_nonNull_native();
  v83 = *v55;
  *v55 = 0x8000000000000000;
  sub_266ECD368(13, 0xD00000000000003BLL, 0x80000002674A02F0, v56);
  *v55 = v83;

  v53(v87, 0);
  v57 = sub_26738111C();
  v59 = v58;
  v60 = swift_isUniquelyReferenced_nonNull_native();
  v84 = *v59;
  *v59 = 0x8000000000000000;
  sub_266ECD368(14, 0xD000000000000031, 0x80000002674A0330, v60);
  *v59 = v84;

  v57(v87, 0);
  v61 = sub_26738111C();
  v63 = v62;
  v64 = swift_isUniquelyReferenced_nonNull_native();
  v85 = *v63;
  *v63 = 0x8000000000000000;
  sub_266ECD368(15, 0xD00000000000002BLL, 0x80000002674A0370, v64);
  *v63 = v85;

  v61(v87, 0);
  v65 = sub_26738111C();
  v67 = v66;
  v68 = swift_isUniquelyReferenced_nonNull_native();
  v86 = *v67;
  *v67 = 0x8000000000000000;
  sub_266ECD368(16, 0xD00000000000002ELL, 0x80000002674A03A0, v68);
  *v67 = v86;

  return v65(v87, 0);
}

uint64_t sub_267333048(uint64_t a1)
{
  v2 = sub_26733314C(&qword_2800FAAF8, &protocol conformance descriptor for STSchemaSTAnswerSynthesisHydrationContentType);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2673330B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_26733314C(&qword_2800FAAF8, &protocol conformance descriptor for STSchemaSTAnswerSynthesisHydrationContentType);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_26733314C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for STSchemaSTAnswerSynthesisHydrationContentType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static STSchemaSTAnswerSynthesisPerfMetrics.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26738113C();
  v68 = v2;
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v60 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v60 - v7;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v10 = *(v3 + 104);
  v64 = *MEMORY[0x277D3E538];
  v9 = v64;
  v10(v5, v64, v2);
  v72[0] = 1;
  sub_26738114C();
  v11 = sub_26738116C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 56);
  v70 = v12 + 56;
  v71 = v13;
  v13(v8, 0, 1, v11);
  v66 = a1;
  v14 = sub_2673811AC();
  v62 = 0xD000000000000022;
  sub_266EC637C(v8, 0xD000000000000022, 0x80000002674A0410);
  v14(v72, 0);
  v63 = "verallDurationInMs";
  v15 = v68;
  v10(v5, v9, v68);
  v72[0] = 1;
  sub_26738114C();
  v71(v8, 0, 1, v11);
  v16 = sub_2673811AC();
  sub_266EC637C(v8, 0xD00000000000001CLL, v63 | 0x8000000000000000);
  v16(v72, 0);
  v61 = "promptGenerationDurationInMs";
  v17 = v64;
  v10(v5, v64, v15);
  v65 = v3 + 104;
  v72[0] = 1;
  sub_26738114C();
  v18 = v71;
  v71(v8, 0, 1, v11);
  v19 = sub_2673811AC();
  v63 = 0xD000000000000019;
  sub_266EC637C(v8, 0xD000000000000019, v61 | 0x8000000000000000);
  v19(v72, 0);
  v61 = "dataFilteringDurationInMs";
  v20 = v17;
  v21 = v68;
  v67 = v10;
  v10(v5, v20, v68);
  v72[0] = 1;
  sub_26738114C();
  v69 = v11;
  v18(v8, 0, 1, v11);
  v22 = sub_2673811AC();
  sub_266EC637C(v8, v62, v61 | 0x8000000000000000);
  v22(v72, 0);
  v62 = "rocessDurationInMs";
  v23 = v64;
  v10(v5, v64, v21);
  v72[0] = 1;
  sub_26738114C();
  v71(v8, 0, 1, v11);
  v24 = sub_2673811AC();
  sub_266EC637C(v8, 0xD00000000000001BLL, v62 | 0x8000000000000000);
  v24(v72, 0);
  v62 = "llmPreWarmModelDurationInMs";
  v25 = v23;
  v26 = v23;
  v27 = v67;
  v28 = v68;
  v67(v5, v26, v68);
  v72[0] = 1;
  sub_26738114C();
  v29 = v71;
  v71(v8, 0, 1, v69);
  v30 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000018, v62 | 0x8000000000000000);
  v30(v72, 0);
  v27(v5, v25, v28);
  v31 = v27;
  v72[0] = 1;
  sub_26738114C();
  v32 = v69;
  v29(v8, 0, 1, v69);
  v33 = sub_2673811AC();
  sub_266EC637C(v8, 0xD00000000000001DLL, 0x80000002674A04F0);
  v33(v72, 0);
  v34 = v68;
  v27(v5, v64, v68);
  v72[0] = 1;
  sub_26738114C();
  v35 = v71;
  v71(v8, 0, 1, v32);
  v36 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000028, 0x80000002674A0510);
  v36(v72, 0);
  v62 = "thesisResultDurationInMs";
  v64 = *MEMORY[0x277D3E508];
  v37 = v64;
  v31(v5, v64, v34);
  v72[0] = 1;
  sub_26738114C();
  v38 = v69;
  v35(v8, 0, 1, v69);
  v39 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000025, v62 | 0x8000000000000000);
  v39(v72, 0);
  v40 = v37;
  v41 = v68;
  v67(v5, v40, v68);
  v72[0] = 1;
  sub_26738114C();
  v35(v8, 0, 1, v38);
  v42 = sub_2673811AC();
  sub_266EC637C(v8, 0xD00000000000002CLL, 0x80000002674A0570);
  v42(v72, 0);
  v62 = "odelPromptGenerationTimeInMs";
  v43 = v64;
  v44 = v41;
  v45 = v67;
  v67(v5, v64, v41);
  v72[0] = 1;
  sub_26738114C();
  v46 = v69;
  v71(v8, 0, 1, v69);
  v47 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000025, v62 | 0x8000000000000000);
  v47(v72, 0);
  v62 = "odelInferenceTimeInMs";
  v45(v5, v43, v44);
  v72[0] = 1;
  sub_26738114C();
  v48 = v71;
  v71(v8, 0, 1, v46);
  v49 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000020, v62 | 0x8000000000000000);
  v49(v72, 0);
  v62 = "nerationTimeInMs";
  v50 = v43;
  v51 = v44;
  v52 = v44;
  v53 = v67;
  v67(v5, v50, v52);
  v72[0] = 1;
  sub_26738114C();
  v54 = v69;
  v48(v8, 0, 1, v69);
  v55 = sub_2673811AC();
  sub_266EC637C(v8, v63, v62 | 0x8000000000000000);
  v55(v72, 0);
  v56 = v64;
  v53(v5, v64, v51);
  v72[0] = 1;
  sub_26738114C();
  v48(v8, 0, 1, v54);
  v57 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000025, 0x80000002674A0620);
  v57(v72, 0);
  v67(v5, v56, v68);
  v72[0] = 1;
  sub_26738114C();
  v48(v8, 0, 1, v69);
  v58 = sub_2673811AC();
  sub_266EC637C(v8, 0xD00000000000002ALL, 0x80000002674A0650);
  return v58(v72, 0);
}

uint64_t sub_267333F18(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267333F7C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_267333FE0()
{
  result = qword_2800FAB00;
  if (!qword_2800FAB00)
  {
    sub_267334038();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800FAB00);
  }

  return result;
}

unint64_t sub_267334038()
{
  result = qword_2800FAB08;
  if (!qword_2800FAB08)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800FAB08);
  }

  return result;
}

uint64_t static STSchemaSTAnswerSynthesisRequestEnded.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800FAB10, 0x277D5AE08);
  sub_266ECAF2C(&qword_2800FAB18, &qword_2800FAB10, 0x277D5AE08, &protocol conformance descriptor for STSchemaSTAnswerSynthesisResult);
  sub_26738122C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x746C75736572, 0xE600000000000000);
  return v5(v7, 0);
}

uint64_t sub_267334254(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800FAB10, 0x277D5AE08);
  sub_266ECAF2C(&qword_2800FAB18, &qword_2800FAB10, 0x277D5AE08, &protocol conformance descriptor for STSchemaSTAnswerSynthesisResult);
  sub_26738122C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x746C75736572, 0xE600000000000000);
  return v5(v7, 0);
}

uint64_t sub_2673343EC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267334450(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static STSchemaSTAnswerSynthesisRequestFailed.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v9[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for STSchemaSTAnswerSynthesisFailureReason(0);
  sub_26733483C();
  sub_26738120C();
  v4 = sub_26738116C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0x6E6F73616572, 0xE600000000000000);
  v6(v9, 0);
  sub_266ECB294(0, &qword_2800FAB20, 0x277D5AE40);
  sub_266ECAF2C(&qword_2800FAB28, &qword_2800FAB20, 0x277D5AE40, &protocol conformance descriptor for STSchemaSTFailureError);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0x726F7272457473, 0xE700000000000000);
  return v7(v9, 0);
}

uint64_t sub_267334778(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2673347DC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26733483C()
{
  result = qword_2800FAAE8;
  if (!qword_2800FAAE8)
  {
    type metadata accessor for STSchemaSTAnswerSynthesisFailureReason(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800FAAE8);
  }

  return result;
}

uint64_t static STSchemaSTAnswerSynthesisRequestStarted.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = sub_26738113C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v10[-v5];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  (*(v1 + 104))(v3, *MEMORY[0x277D3E4E8], v0);
  v10[0] = 1;
  sub_26738114C();
  v7 = sub_26738116C();
  (*(*(v7 - 8) + 56))(v6, 0, 1, v7);
  v8 = sub_2673811AC();
  sub_266EC637C(v6, 0x737473697865, 0xE600000000000000);
  return v8(v10, 0);
}

uint64_t sub_267334B20(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267334B84(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_267334BE8()
{
  result = qword_2800FAAA0;
  if (!qword_2800FAAA0)
  {
    sub_267334C40();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800FAAA0);
  }

  return result;
}

unint64_t sub_267334C40()
{
  result = qword_2800FAA98;
  if (!qword_2800FAA98)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800FAA98);
  }

  return result;
}

uint64_t static STSchemaSTAnswerSynthesisResult.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v17[0] = a1;
  v1 = sub_26738113C();
  v18 = v1;
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v17 - v6;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v8 = *MEMORY[0x277D3E530];
  v9 = *(v2 + 104);
  v17[1] = v2 + 104;
  v19 = v9;
  v9(v4, v8, v1);
  v20[0] = 1;
  sub_26738114C();
  v10 = sub_26738116C();
  v11 = *(*(v10 - 8) + 56);
  v11(v7, 0, 1, v10);
  v12 = sub_2673811AC();
  sub_266EC637C(v7, 0x6D754E6C65646F6DLL, 0xEB00000000726562);
  v12(v20, 0);
  sub_266ECB294(0, &qword_2800FAB08, 0x277D5ADE8);
  sub_266ECAF2C(&qword_2800FAB00, &qword_2800FAB08, 0x277D5ADE8, &protocol conformance descriptor for STSchemaSTAnswerSynthesisPerfMetrics);
  sub_26738120C();
  v11(v7, 0, 1, v10);
  v13 = sub_2673811AC();
  sub_266EC637C(v7, 0x7274654D66726570, 0xEB00000000736369);
  v13(v20, 0);
  sub_266ECB294(0, &qword_2800FAAE0, 0x277D5ADE0);
  sub_266ECAF2C(&qword_2800FAAD8, &qword_2800FAAE0, 0x277D5ADE0, &protocol conformance descriptor for STSchemaSTAnswerSynthesisDataMetrics);
  sub_26738120C();
  v11(v7, 0, 1, v10);
  v14 = sub_2673811AC();
  sub_266EC637C(v7, 0x7274654D61746164, 0xEB00000000736369);
  v14(v20, 0);
  v19(v4, *MEMORY[0x277D3E4E8], v18);
  v20[0] = 1;
  sub_26738114C();
  v11(v7, 0, 1, v10);
  v15 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000017, 0x80000002674A0780);
  return v15(v20, 0);
}

uint64_t sub_267335174(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2673351D8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static STSchemaSTClientEventMetadata.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = v11 - v2;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78, &protocol conformance descriptor for SISchemaUUID);
  sub_26738120C();
  v4 = sub_26738116C();
  v5 = *(v4 - 8);
  (*(v5 + 56))(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0x6F54686372616573, 0xEC00000064496C6FLL);
  v6(v12, 0);
  v7 = sub_2673811AC();
  v8 = sub_266ECB6CC(v11, 0x6F54686372616573, 0xEC00000064496C6FLL);
  if (!(*(v5 + 48))(v9, 1, v4))
  {
    sub_266ECB128(&unk_287893188);
    sub_26738115C();
  }

  (v8)(v11, 0);
  return v7(v12, 0);
}

uint64_t sub_26733552C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267335590(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static STSchemaSTDisambiguationContext.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v22 = sub_26738118C();
  v20 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v21 = &v19 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v19 - v3;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800FAB40, 0x277D5AE30);
  sub_266ECAF2C(&qword_2800FAB48, &qword_2800FAB40, 0x277D5AE30, &protocol conformance descriptor for STSchemaSTDisambiguationStarted);
  sub_26738121C();
  v5 = sub_26738116C();
  v6 = *(*(v5 - 8) + 56);
  v6(v4, 0, 1, v5);
  v7 = sub_2673811AC();
  sub_266EC637C(v4, 0xD000000000000010, 0x800000026741EB30);
  v7(v23, 0);
  sub_266ECB294(0, &qword_2800FAB50, 0x277D5AE20);
  sub_266ECAF2C(&qword_2800FAB58, &qword_2800FAB50, 0x277D5AE20, &protocol conformance descriptor for STSchemaSTDisambiguationEnded);
  sub_26738121C();
  v6(v4, 0, 1, v5);
  v8 = sub_2673811AC();
  sub_266EC637C(v4, 0x6465646E65, 0xE500000000000000);
  v8(v23, 0);
  sub_266ECB294(0, &qword_2800FAB60, 0x277D5AE28);
  sub_266ECAF2C(&qword_2800FAB68, &qword_2800FAB60, 0x277D5AE28, &protocol conformance descriptor for STSchemaSTDisambiguationFailed);
  sub_26738121C();
  v6(v4, 0, 1, v5);
  v9 = v21;
  v10 = sub_2673811AC();
  sub_266EC637C(v4, 0x64656C696166, 0xE600000000000000);
  v10(v23, 0);
  sub_26738117C();
  v11 = sub_2673811BC();
  v13 = v12;
  v14 = *v12;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v13 = v14;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v14 = sub_266ECAD54(0, v14[2] + 1, 1, v14);
    *v13 = v14;
  }

  v17 = v14[2];
  v16 = v14[3];
  if (v17 >= v16 >> 1)
  {
    v14 = sub_266ECAD54((v16 > 1), v17 + 1, 1, v14);
    *v13 = v14;
  }

  v14[2] = v17 + 1;
  (*(v20 + 32))(v14 + ((*(v20 + 80) + 32) & ~*(v20 + 80)) + *(v20 + 72) * v17, v9, v22);
  return v11(v23, 0);
}

uint64_t sub_267335B4C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267335BB0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static STSchemaSTDisambiguationEnded.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26738113C();
  v31 = v2;
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v26 - v7;
  sub_266EC679C(MEMORY[0x277D84F90]);
  v33 = a1;
  sub_26738119C();
  v9 = *MEMORY[0x277D3E4E8];
  v10 = *(v3 + 104);
  v32 = v3 + 104;
  v10(v5, v9, v2);
  v26 = v10;
  v34[0] = 1;
  sub_26738114C();
  v11 = sub_26738116C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 56);
  v30 = v12 + 56;
  v13(v8, 0, 1, v11);
  v14 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000016, 0x80000002674A0860);
  v14(v34, 0);
  v29 = v9;
  v15 = v31;
  v10(v5, v9, v31);
  v34[0] = 1;
  sub_26738114C();
  v28 = v13;
  v13(v8, 0, 1, v11);
  v16 = sub_2673811AC();
  sub_266EC637C(v8, 0x6974736575517369, 0xEF79726575516E6FLL);
  v16(v34, 0);
  v17 = v9;
  v18 = v26;
  v26(v5, v17, v15);
  v34[0] = 1;
  sub_26738114C();
  v27 = v11;
  v13(v8, 0, 1, v11);
  v19 = sub_2673811AC();
  sub_266EC637C(v8, 0x75516E65704F7369, 0xEB00000000797265);
  v19(v34, 0);
  v20 = v31;
  v18(v5, *MEMORY[0x277D3E538], v31);
  v34[0] = 1;
  sub_26738114C();
  v21 = v11;
  v22 = v28;
  v28(v8, 0, 1, v21);
  v23 = sub_2673811AC();
  sub_266EC637C(v8, 0x736552664F6D756ELL, 0xEC00000073746C75);
  v23(v34, 0);
  v18(v5, v29, v20);
  v34[0] = 1;
  sub_26738114C();
  v22(v8, 0, 1, v27);
  v24 = sub_2673811AC();
  sub_266EC637C(v8, 0x6E65746E6F437369, 0xEF68637261655374);
  return v24(v34, 0);
}

uint64_t sub_2673361EC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267336250(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2673362B4()
{
  result = qword_2800FAB58;
  if (!qword_2800FAB58)
  {
    sub_26733630C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800FAB58);
  }

  return result;
}

unint64_t sub_26733630C()
{
  result = qword_2800FAB50;
  if (!qword_2800FAB50)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800FAB50);
  }

  return result;
}

uint64_t static STSchemaSTDisambiguationFailed.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v9[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for STSchemaSTDisambiguationFailureReason(0);
  sub_2673366A0();
  sub_26738120C();
  v4 = sub_26738116C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0x6E6F73616572, 0xE600000000000000);
  v6(v9, 0);
  sub_266ECB294(0, &qword_2800FAB20, 0x277D5AE40);
  sub_266ECAF2C(&qword_2800FAB28, &qword_2800FAB20, 0x277D5AE40, &protocol conformance descriptor for STSchemaSTFailureError);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0x726F7272457473, 0xE700000000000000);
  return v7(v9, 0);
}

uint64_t sub_2673365DC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267336640(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2673366A0()
{
  result = qword_2800FAB80;
  if (!qword_2800FAB80)
  {
    type metadata accessor for STSchemaSTDisambiguationFailureReason(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800FAB80);
  }

  return result;
}

uint64_t static STSchemaSTDisambiguationFailureReason.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = MEMORY[0x277D84F90];
  sub_266ECA394(MEMORY[0x277D84F90]);
  sub_266ECDCE4(v0);
  sub_26738110C();
  v1 = sub_26738111C();
  v3 = v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v3;
  *v3 = 0x8000000000000000;
  sub_266ECD368(0, 0xD000000000000025, 0x80000002674A0900, isUniquelyReferenced_nonNull_native);
  *v3 = v14;

  v1(v17, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v15 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000025, 0x80000002674A0930, v8);
  *v7 = v15;

  v5(v17, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000002BLL, 0x80000002674A0960, v12);
  *v11 = v16;

  return v9(v17, 0);
}

uint64_t sub_267336954(uint64_t a1)
{
  v2 = sub_267336A58(&qword_2800FAB88, &protocol conformance descriptor for STSchemaSTDisambiguationFailureReason);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2673369BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_267336A58(&qword_2800FAB88, &protocol conformance descriptor for STSchemaSTDisambiguationFailureReason);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_267336A58(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for STSchemaSTDisambiguationFailureReason(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static STSchemaSTDisambiguationStarted.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = sub_26738113C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v10[-v5];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  (*(v1 + 104))(v3, *MEMORY[0x277D3E4E8], v0);
  v10[0] = 1;
  sub_26738114C();
  v7 = sub_26738116C();
  (*(*(v7 - 8) + 56))(v6, 0, 1, v7);
  v8 = sub_2673811AC();
  sub_266EC637C(v6, 0x737473697865, 0xE600000000000000);
  return v8(v10, 0);
}

uint64_t sub_267336CE4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267336D48(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_267336DAC()
{
  result = qword_2800FAB48;
  if (!qword_2800FAB48)
  {
    sub_267336E04();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800FAB48);
  }

  return result;
}

unint64_t sub_267336E04()
{
  result = qword_2800FAB40;
  if (!qword_2800FAB40)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800FAB40);
  }

  return result;
}

uint64_t static STSchemaSTEvent.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v2 = sub_26738118C();
  v37 = *(v2 - 8);
  v38 = v2;
  MEMORY[0x28223BE20](v2);
  v36 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v35 - v5;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800FAB38, 0x277D5AE10);
  sub_266ECAF2C(&qword_2800FAB30, &qword_2800FAB38, 0x277D5AE10, &protocol conformance descriptor for STSchemaSTClientEventMetadata);
  sub_26738120C();
  v7 = sub_26738116C();
  v40 = *(v7 - 8);
  v8 = *(v40 + 56);
  v8(v6, 0, 1, v7);
  v9 = sub_2673811AC();
  sub_266EC637C(v6, 0x74654D746E657665, 0xED00006174616461);
  v9(v42, 0);
  sub_266ECB294(0, &qword_2800FAB90, 0x277D5AE48);
  sub_266ECAF2C(&qword_2800FAB98, &qword_2800FAB90, 0x277D5AE48, &protocol conformance descriptor for STSchemaSTGeneralSearchContext);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v10 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000016, 0x80000002674A0A00);
  v10(v42, 0);
  sub_266ECB294(0, &qword_2800FABA0, 0x277D5AEE0);
  sub_266ECAF2C(&qword_2800FABA8, &qword_2800FABA0, 0x277D5AEE0, &protocol conformance descriptor for STSchemaSTLLMQueryUnderstandingContext);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v11 = sub_2673811AC();
  sub_266EC637C(v6, 0xD00000000000001ELL, 0x80000002674A0A20);
  v11(v42, 0);
  sub_266ECB294(0, &qword_2800FABB0, 0x277D5AEE8);
  sub_266ECAF2C(&qword_2800FABB8, &qword_2800FABB0, 0x277D5AEE8, &protocol conformance descriptor for STSchemaSTSpotlightContext);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v12 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000012, 0x80000002674A0A40);
  v12(v42, 0);
  sub_266ECB294(0, &qword_2800FAAD0, 0x277D5ADD8);
  sub_266ECAF2C(&qword_2800FAAC8, &qword_2800FAAD0, 0x277D5ADD8, &protocol conformance descriptor for STSchemaSTAnswerSynthesisContext);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v13 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000018, 0x80000002674A0A60);
  v13(v42, 0);
  sub_266ECB294(0, &qword_2800FABC0, 0x277D5AE78);
  sub_266ECAF2C(&qword_2800FABC8, &qword_2800FABC0, 0x277D5AE78, &protocol conformance descriptor for STSchemaSTGlobalSearchContext);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v14 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000015, 0x80000002674A0A80);
  v14(v42, 0);
  sub_266ECB294(0, &qword_2800FABD0, 0x277D5AEC0);
  sub_266ECAF2C(&qword_2800FABD8, &qword_2800FABD0, 0x277D5AEC0, &protocol conformance descriptor for STSchemaSTLLMQUQueryArgumentsTier1);
  v39 = a1;
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v15 = sub_2673811AC();
  sub_266EC637C(v6, 0xD00000000000001ALL, 0x80000002674A0AA0);
  v15(v42, 0);
  v16 = sub_2673811AC();
  v17 = sub_266ECB6CC(v41, 0xD00000000000001ALL, 0x80000002674A0AA0);
  v18 = *(v40 + 48);
  v40 += 48;
  v35 = v18;
  if (!v18(v19, 1, v7))
  {
    sub_266ECB128(&unk_2878931B8);
    sub_26738115C();
  }

  (v17)(v41, 0);
  v16(v42, 0);
  sub_266ECB294(0, &qword_2800FAB78, 0x277D5AE18);
  sub_266ECAF2C(&qword_2800FAB70, &qword_2800FAB78, 0x277D5AE18, &protocol conformance descriptor for STSchemaSTDisambiguationContext);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v20 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000017, 0x80000002674A0AC0);
  v20(v42, 0);
  sub_266ECB294(0, &qword_2800FABE0, 0x277D5AE58);
  sub_266ECAF2C(&qword_2800FABE8, &qword_2800FABE0, 0x277D5AE58, &protocol conformance descriptor for STSchemaSTGeneralSearchEndedTier1);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v21 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000011, 0x8000000267489590);
  v21(v42, 0);
  v22 = sub_2673811AC();
  v23 = sub_266ECB6CC(v41, 0xD000000000000011, 0x8000000267489590);
  if (!v35(v24, 1, v7))
  {
    sub_266ECB128(&unk_2878931E0);
    sub_26738115C();
  }

  (v23)(v41, 0);
  v22(v42, 0);
  sub_266ECB294(0, &qword_2800FABF0, 0x277D5AEA0);
  sub_266ECAF2C(&qword_2800FABF8, &qword_2800FABF0, 0x277D5AEA0, &protocol conformance descriptor for STSchemaSTHallucinationDetectionContext);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v25 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000027, 0x80000002674A0AE0);
  v25(v42, 0);
  v26 = v36;
  sub_26738117C();
  v27 = sub_2673811BC();
  v29 = v28;
  v30 = *v28;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v29 = v30;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v30 = sub_266ECAD54(0, v30[2] + 1, 1, v30);
    *v29 = v30;
  }

  v33 = v30[2];
  v32 = v30[3];
  if (v33 >= v32 >> 1)
  {
    v30 = sub_266ECAD54((v32 > 1), v33 + 1, 1, v30);
    *v29 = v30;
  }

  v30[2] = v33 + 1;
  (*(v37 + 32))(v30 + ((*(v37 + 80) + 32) & ~*(v37 + 80)) + *(v37 + 72) * v33, v26, v38);
  v27(v42, 0);
  sub_266ECB128(&unk_287893210);
  return sub_2673811CC();
}

uint64_t sub_267337A88(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = swift_getWitnessTable();

  return MEMORY[0x28219EF78](a1, WitnessTable, v5, a2);
}

uint64_t sub_267337B20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getWitnessTable();
  swift_getWitnessTable();
  return sub_26738123C();
}

uint64_t sub_267337BEC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267337C50(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_267337CB0(void *a1)
{
  a1[1] = sub_266ECAF2C(&qword_2800FAC00, &qword_2800FAC08, 0x277D5AE38, &protocol conformance descriptor for STSchemaSTEvent);
  a1[2] = sub_266ECAF2C(&qword_2800FAC10, &qword_2800FAC08, 0x277D5AE38, &protocol conformance descriptor for STSchemaSTEvent);
  result = sub_266ECAF2C(&qword_2800FAC18, &qword_2800FAC08, 0x277D5AE38, &protocol conformance descriptor for STSchemaSTEvent);
  a1[3] = result;
  return result;
}

uint64_t static STSchemaSTFailureError.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26738113C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v15 - v7;
  sub_266EC679C(MEMORY[0x277D84F90]);
  v15[1] = a1;
  sub_26738119C();
  v9 = *(v3 + 104);
  v9(v5, *MEMORY[0x277D3E530], v2);
  v16[0] = 1;
  sub_26738114C();
  v10 = sub_26738116C();
  v11 = *(*(v10 - 8) + 56);
  v11(v8, 0, 1, v10);
  v12 = sub_2673811AC();
  sub_266EC637C(v8, 0x6E69616D6F64, 0xE600000000000000);
  v12(v16, 0);
  v9(v5, *MEMORY[0x277D3E510], v2);
  v16[0] = 1;
  sub_26738114C();
  v11(v8, 0, 1, v10);
  v13 = sub_2673811AC();
  sub_266EC637C(v8, 1701080931, 0xE400000000000000);
  return v13(v16, 0);
}

uint64_t sub_2673380C4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267338128(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26733818C()
{
  result = qword_2800FAB28;
  if (!qword_2800FAB28)
  {
    sub_2673381E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800FAB28);
  }

  return result;
}

unint64_t sub_2673381E4()
{
  result = qword_2800FAB20;
  if (!qword_2800FAB20)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800FAB20);
  }

  return result;
}

uint64_t static STSchemaSTGeneralSearchContext.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v22 = sub_26738118C();
  v20 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v21 = &v19 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v19 - v3;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800FAC28, 0x277D5AE70);
  sub_266ECAF2C(&qword_2800FAC30, &qword_2800FAC28, 0x277D5AE70, &protocol conformance descriptor for STSchemaSTGeneralSearchStarted);
  sub_26738121C();
  v5 = sub_26738116C();
  v6 = *(*(v5 - 8) + 56);
  v6(v4, 0, 1, v5);
  v7 = sub_2673811AC();
  sub_266EC637C(v4, 0xD000000000000010, 0x800000026741EB30);
  v7(v23, 0);
  sub_266ECB294(0, &qword_2800FAC38, 0x277D5AE50);
  sub_266ECAF2C(&qword_2800FAC40, &qword_2800FAC38, 0x277D5AE50, &protocol conformance descriptor for STSchemaSTGeneralSearchEnded);
  sub_26738121C();
  v6(v4, 0, 1, v5);
  v8 = sub_2673811AC();
  sub_266EC637C(v4, 0x6465646E65, 0xE500000000000000);
  v8(v23, 0);
  sub_266ECB294(0, &qword_2800FAC48, 0x277D5AE60);
  sub_266ECAF2C(&qword_2800FAC50, &qword_2800FAC48, 0x277D5AE60, &protocol conformance descriptor for STSchemaSTGeneralSearchFailed);
  sub_26738121C();
  v6(v4, 0, 1, v5);
  v9 = v21;
  v10 = sub_2673811AC();
  sub_266EC637C(v4, 0x64656C696166, 0xE600000000000000);
  v10(v23, 0);
  sub_26738117C();
  v11 = sub_2673811BC();
  v13 = v12;
  v14 = *v12;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v13 = v14;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v14 = sub_266ECAD54(0, v14[2] + 1, 1, v14);
    *v13 = v14;
  }

  v17 = v14[2];
  v16 = v14[3];
  if (v17 >= v16 >> 1)
  {
    v14 = sub_266ECAD54((v16 > 1), v17 + 1, 1, v14);
    *v13 = v14;
  }

  v14[2] = v17 + 1;
  (*(v20 + 32))(v14 + ((*(v20 + 80) + 32) & ~*(v20 + 80)) + *(v20 + 72) * v17, v9, v22);
  return v11(v23, 0);
}

uint64_t sub_267338748(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2673387AC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static STSchemaSTGeneralSearchEnded.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v11[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800FAC58, 0x277D5AE68);
  sub_266ECAF2C(&qword_2800FAC60, &qword_2800FAC58, 0x277D5AE68, &protocol conformance descriptor for STSchemaSTGeneralSearchResult);
  sub_26738122C();
  v4 = sub_26738116C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0x746C75736572, 0xE600000000000000);
  v6(v11, 0);
  type metadata accessor for STSchemaSTGeneralSearchResponseDialogSource(0);
  sub_267338D4C(&qword_2800FAC68, type metadata accessor for STSchemaSTGeneralSearchResponseDialogSource, &protocol conformance descriptor for STSchemaSTGeneralSearchResponseDialogSource);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000014, 0x80000002674A0BC0);
  v7(v11, 0);
  type metadata accessor for STSchemaSTGeneralSearchResponseDialogFallbackReason(0);
  sub_267338D4C(&qword_2800FAC70, type metadata accessor for STSchemaSTGeneralSearchResponseDialogFallbackReason, &protocol conformance descriptor for STSchemaSTGeneralSearchResponseDialogFallbackReason);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v8 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000014, 0x80000002674A0BE0);
  v8(v11, 0);
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78, &protocol conformance descriptor for SISchemaUUID);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v9 = sub_2673811AC();
  sub_266EC637C(v3, 0x64496B6E696CLL, 0xE600000000000000);
  return v9(v11, 0);
}

uint64_t sub_267338C88(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267338CEC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_267338D4C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t static STSchemaSTGeneralSearchEndedTier1.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v28 = sub_26738113C();
  v1 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v3 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v23 - v5;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78, &protocol conformance descriptor for SISchemaUUID);
  sub_26738120C();
  v7 = sub_26738116C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 56);
  v9(v6, 0, 1, v7);
  v10 = sub_2673811AC();
  sub_266EC637C(v6, 0x64496B6E696CLL, 0xE600000000000000);
  v10(v30, 0);
  v11 = *MEMORY[0x277D3E530];
  v12 = *(v1 + 104);
  v27 = v1 + 104;
  v23 = v12;
  v12(v3, v11, v28);
  v30[0] = 1;
  v25 = v3;
  sub_26738114C();
  v24 = v9;
  v9(v6, 0, 1, v7);
  v13 = sub_2673811AC();
  sub_266EC637C(v6, 0x6449746163, 0xE500000000000000);
  v13(v30, 0);
  v14 = sub_2673811AC();
  v15 = sub_266ECB6CC(v29, 0x6449746163, 0xE500000000000000);
  v16 = *(v8 + 48);
  v26 = v8 + 48;
  if (!v16(v17, 1, v7))
  {
    sub_266ECB128(&unk_287893248);
    sub_26738115C();
  }

  (v15)(v29, 0);
  v14(v30, 0);
  v23(v25, v11, v28);
  v30[0] = 1;
  sub_26738114C();
  v24(v6, 0, 1, v7);
  v18 = sub_2673811AC();
  sub_266EC637C(v6, 0x6944636974617473, 0xEE006449676F6C61);
  v18(v30, 0);
  v19 = sub_2673811AC();
  v20 = sub_266ECB6CC(v29, 0x6944636974617473, 0xEE006449676F6C61);
  if (!v16(v21, 1, v7))
  {
    sub_266ECB128(&unk_287893270);
    sub_26738115C();
  }

  (v20)(v29, 0);
  return v19(v30, 0);
}

uint64_t sub_267339328(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26733938C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static STSchemaSTGeneralSearchFailed.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v9[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for STSchemaSTGeneralSearchFailureReason(0);
  sub_267339778();
  sub_26738120C();
  v4 = sub_26738116C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0x6E6F73616572, 0xE600000000000000);
  v6(v9, 0);
  sub_266ECB294(0, &qword_2800FAB20, 0x277D5AE40);
  sub_266ECAF2C(&qword_2800FAB28, &qword_2800FAB20, 0x277D5AE40, &protocol conformance descriptor for STSchemaSTFailureError);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0x726F7272457473, 0xE700000000000000);
  return v7(v9, 0);
}

uint64_t sub_2673396B4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267339718(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_267339778()
{
  result = qword_2800FAC78;
  if (!qword_2800FAC78)
  {
    type metadata accessor for STSchemaSTGeneralSearchFailureReason(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800FAC78);
  }

  return result;
}

uint64_t static STSchemaSTGeneralSearchFailureReason.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = MEMORY[0x277D84F90];
  sub_266ECA394(MEMORY[0x277D84F90]);
  sub_266ECDCE4(v0);
  sub_26738110C();
  v1 = sub_26738111C();
  v3 = v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = *v3;
  *v3 = 0x8000000000000000;
  sub_266ECD368(0, 0xD000000000000024, 0x80000002674A0CC0, isUniquelyReferenced_nonNull_native);
  *v3 = v18;

  v1(v22, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v19 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000022, 0x80000002674A0CF0, v8);
  *v7 = v19;

  v5(v22, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v20 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000026, 0x80000002674A0D20, v12);
  *v11 = v20;

  v9(v22, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v21 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000002DLL, 0x80000002674A0D50, v16);
  *v15 = v21;

  return v13(v22, 0);
}

uint64_t sub_267339A98(uint64_t a1)
{
  v2 = sub_267339B9C(&qword_2800FAC80, &protocol conformance descriptor for STSchemaSTGeneralSearchFailureReason);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_267339B00(uint64_t a1, uint64_t a2)
{
  v4 = sub_267339B9C(&qword_2800FAC80, &protocol conformance descriptor for STSchemaSTGeneralSearchFailureReason);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_267339B9C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for STSchemaSTGeneralSearchFailureReason(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static STSchemaSTGeneralSearchResponseDialogFallbackReason.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = MEMORY[0x277D84F90];
  sub_266ECA394(MEMORY[0x277D84F90]);
  sub_266ECDCE4(v0);
  sub_26738110C();
  v1 = sub_26738111C();
  v3 = v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v26 = *v3;
  *v3 = 0x8000000000000000;
  sub_266ECD368(0, 0xD000000000000033, 0x80000002674A0DD0, isUniquelyReferenced_nonNull_native);
  *v3 = v26;

  v1(v32, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v27 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000004CLL, 0x80000002674A0E10, v8);
  *v7 = v27;

  v5(v32, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v28 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000048, 0x80000002674A0E60, v12);
  *v11 = v28;

  v9(v32, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v29 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000040, 0x80000002674A0EB0, v16);
  *v15 = v29;

  v13(v32, 0);
  v17 = sub_26738111C();
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v30 = *v19;
  *v19 = 0x8000000000000000;
  sub_266ECD368(4, 0xD00000000000003ELL, 0x80000002674A0F00, v20);
  *v19 = v30;

  v17(v32, 0);
  v21 = sub_26738111C();
  v23 = v22;
  v24 = swift_isUniquelyReferenced_nonNull_native();
  v31 = *v23;
  *v23 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000041, 0x80000002674A0F40, v24);
  *v23 = v31;

  return v21(v32, 0);
}

uint64_t sub_267339F44(uint64_t a1)
{
  v2 = sub_26733A048(&qword_2800FAC88, &protocol conformance descriptor for STSchemaSTGeneralSearchResponseDialogFallbackReason);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_267339FAC(uint64_t a1, uint64_t a2)
{
  v4 = sub_26733A048(&qword_2800FAC88, &protocol conformance descriptor for STSchemaSTGeneralSearchResponseDialogFallbackReason);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_26733A048(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for STSchemaSTGeneralSearchResponseDialogFallbackReason(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static STSchemaSTGeneralSearchResponseDialogSource.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = MEMORY[0x277D84F90];
  sub_266ECA394(MEMORY[0x277D84F90]);
  sub_266ECDCE4(v0);
  sub_26738110C();
  v1 = sub_26738111C();
  v3 = v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v26 = *v3;
  *v3 = 0x8000000000000000;
  sub_266ECD368(0, 0xD00000000000002BLL, 0x80000002674A0FE0, isUniquelyReferenced_nonNull_native);
  *v3 = v26;

  v1(v32, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v27 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000028, 0x80000002674A1010, v8);
  *v7 = v27;

  v5(v32, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v28 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000002CLL, 0x80000002674A1040, v12);
  *v11 = v28;

  v9(v32, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v29 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000002CLL, 0x80000002674A1070, v16);
  *v15 = v29;

  v13(v32, 0);
  v17 = sub_26738111C();
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v30 = *v19;
  *v19 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000030, 0x80000002674A10A0, v20);
  *v19 = v30;

  v17(v32, 0);
  v21 = sub_26738111C();
  v23 = v22;
  v24 = swift_isUniquelyReferenced_nonNull_native();
  v31 = *v23;
  *v23 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000029, 0x80000002674A10E0, v24);
  *v23 = v31;

  return v21(v32, 0);
}

uint64_t sub_26733A3F4(uint64_t a1)
{
  v2 = sub_26733A4F8(&qword_2800FAC90, &protocol conformance descriptor for STSchemaSTGeneralSearchResponseDialogSource);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_26733A45C(uint64_t a1, uint64_t a2)
{
  v4 = sub_26733A4F8(&qword_2800FAC90, &protocol conformance descriptor for STSchemaSTGeneralSearchResponseDialogSource);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_26733A4F8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for STSchemaSTGeneralSearchResponseDialogSource(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static STSchemaSTGeneralSearchResult.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v20 = sub_26738113C();
  v2 = *(v20 - 1);
  MEMORY[0x28223BE20](v20);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v18 - v6;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v19 = "TGeneralSearchResult";
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78, &protocol conformance descriptor for SISchemaUUID);
  v21 = a1;
  sub_26738120C();
  v8 = sub_26738116C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 56);
  (v10)(v7, 0, 1, v8);
  v11 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000015, v19 | 0x8000000000000000);
  v11(v23, 0);
  (*(v2 + 104))(v4, *MEMORY[0x277D3E530], v20);
  v23[0] = 1;
  sub_26738114C();
  v20 = v10;
  (v10)(v7, 0, 1, v8);
  v12 = sub_2673811AC();
  sub_266EC637C(v7, 0x6449656C646E7562, 0xE800000000000000);
  v12(v23, 0);
  v13 = sub_2673811AC();
  v14 = sub_266ECB6CC(v22, 0x6449656C646E7562, 0xE800000000000000);
  if (!(*(v9 + 48))(v15, 1, v8))
  {
    sub_266ECB128(&unk_287893298);
    sub_26738115C();
  }

  (v14)(v22, 0);
  v13(v23, 0);
  type metadata accessor for STSchemaSTGeneralSearchResultType(0);
  sub_26733AA80();
  sub_26738120C();
  (v20)(v7, 0, 1, v8);
  v16 = sub_2673811AC();
  sub_266EC637C(v7, 0x7954746C75736572, 0xEA00000000006570);
  return v16(v23, 0);
}

uint64_t sub_26733A9BC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26733AA20(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26733AA80()
{
  result = qword_2800FAC98;
  if (!qword_2800FAC98)
  {
    type metadata accessor for STSchemaSTGeneralSearchResultType(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800FAC98);
  }

  return result;
}

uint64_t static STSchemaSTGeneralSearchResultType.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = MEMORY[0x277D84F90];
  sub_266ECA394(MEMORY[0x277D84F90]);
  sub_266ECDCE4(v0);
  sub_26738110C();
  v1 = sub_26738111C();
  v3 = v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v22 = *v3;
  *v3 = 0x8000000000000000;
  sub_266ECD368(0, 0xD000000000000021, 0x80000002674A11B0, isUniquelyReferenced_nonNull_native);
  *v3 = v22;

  v1(v27, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v23 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000023, 0x80000002674A11E0, v8);
  *v7 = v23;

  v5(v27, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v24 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000032, 0x80000002674A1210, v12);
  *v11 = v24;

  v9(v27, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v25 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000020, 0x80000002674A1250, v16);
  *v15 = v25;

  v13(v27, 0);
  v17 = sub_26738111C();
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v26 = *v19;
  *v19 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000020, 0x80000002674A1280, v20);
  *v19 = v26;

  return v17(v27, 0);
}

uint64_t sub_26733AE18(uint64_t a1)
{
  v2 = sub_26733AF1C(&qword_2800FACA0, &protocol conformance descriptor for STSchemaSTGeneralSearchResultType);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_26733AE80(uint64_t a1, uint64_t a2)
{
  v4 = sub_26733AF1C(&qword_2800FACA0, &protocol conformance descriptor for STSchemaSTGeneralSearchResultType);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_26733AF1C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for STSchemaSTGeneralSearchResultType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static STSchemaSTGeneralSearchStarted.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26738113C();
  v17 = v2;
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v16 - v7;
  sub_266EC679C(MEMORY[0x277D84F90]);
  v16 = a1;
  sub_26738119C();
  v9 = *MEMORY[0x277D3E4E8];
  v10 = *(v3 + 104);
  v10(v5, v9, v2);
  v18[0] = 1;
  sub_26738114C();
  v11 = sub_26738116C();
  v12 = *(*(v11 - 8) + 56);
  v12(v8, 0, 1, v11);
  v13 = sub_2673811AC();
  sub_266EC637C(v8, 0x737473697865, 0xE600000000000000);
  v13(v18, 0);
  v10(v5, v9, v17);
  v18[0] = 1;
  sub_26738114C();
  v12(v8, 0, 1, v11);
  v14 = sub_2673811AC();
  sub_266EC637C(v8, 0x656D726157657270, 0xE900000000000064);
  return v14(v18, 0);
}

uint64_t sub_26733B280(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26733B2E4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26733B348()
{
  result = qword_2800FAC30;
  if (!qword_2800FAC30)
  {
    sub_26733B3A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800FAC30);
  }

  return result;
}

unint64_t sub_26733B3A0()
{
  result = qword_2800FAC28;
  if (!qword_2800FAC28)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800FAC28);
  }

  return result;
}

uint64_t static STSchemaSTGlobalSearchContext.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v22 = sub_26738118C();
  v20 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v21 = &v19 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v19 - v3;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800FACA8, 0x277D5AE90);
  sub_266ECAF2C(&qword_2800FACB0, &qword_2800FACA8, 0x277D5AE90, &protocol conformance descriptor for STSchemaSTGlobalSearchRequestStarted);
  sub_26738121C();
  v5 = sub_26738116C();
  v6 = *(*(v5 - 8) + 56);
  v6(v4, 0, 1, v5);
  v7 = sub_2673811AC();
  sub_266EC637C(v4, 0xD000000000000010, 0x800000026741EB30);
  v7(v23, 0);
  sub_266ECB294(0, &qword_2800FACB8, 0x277D5AE80);
  sub_266ECAF2C(&qword_2800FACC0, &qword_2800FACB8, 0x277D5AE80, &protocol conformance descriptor for STSchemaSTGlobalSearchRequestEnded);
  sub_26738121C();
  v6(v4, 0, 1, v5);
  v8 = sub_2673811AC();
  sub_266EC637C(v4, 0x6465646E65, 0xE500000000000000);
  v8(v23, 0);
  sub_266ECB294(0, &qword_2800FACC8, 0x277D5AE88);
  sub_266ECAF2C(&qword_2800FACD0, &qword_2800FACC8, 0x277D5AE88, &protocol conformance descriptor for STSchemaSTGlobalSearchRequestFailed);
  sub_26738121C();
  v6(v4, 0, 1, v5);
  v9 = v21;
  v10 = sub_2673811AC();
  sub_266EC637C(v4, 0x64656C696166, 0xE600000000000000);
  v10(v23, 0);
  sub_26738117C();
  v11 = sub_2673811BC();
  v13 = v12;
  v14 = *v12;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v13 = v14;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v14 = sub_266ECAD54(0, v14[2] + 1, 1, v14);
    *v13 = v14;
  }

  v17 = v14[2];
  v16 = v14[3];
  if (v17 >= v16 >> 1)
  {
    v14 = sub_266ECAD54((v16 > 1), v17 + 1, 1, v14);
    *v13 = v14;
  }

  v14[2] = v17 + 1;
  (*(v20 + 32))(v14 + ((*(v20 + 80) + 32) & ~*(v20 + 80)) + *(v20 + 72) * v17, v9, v22);
  return v11(v23, 0);
}

uint64_t sub_26733B904(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26733B968(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static STSchemaSTGlobalSearchFailureReason.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = MEMORY[0x277D84F90];
  sub_266ECA394(MEMORY[0x277D84F90]);
  sub_266ECDCE4(v0);
  sub_26738110C();
  v1 = sub_26738111C();
  v3 = v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = *v3;
  *v3 = 0x8000000000000000;
  sub_266ECD368(0, 0xD000000000000023, 0x80000002674A1370, isUniquelyReferenced_nonNull_native);
  *v3 = v18;

  v1(v22, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v19 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000028, 0x80000002674A13A0, v8);
  *v7 = v19;

  v5(v22, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v20 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000026, 0x80000002674A13D0, v12);
  *v11 = v20;

  v9(v22, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v21 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000028, 0x80000002674A1400, v16);
  *v15 = v21;

  return v13(v22, 0);
}

uint64_t sub_26733BC94(uint64_t a1)
{
  v2 = sub_26733BD98(&qword_2800FACE0, &protocol conformance descriptor for STSchemaSTGlobalSearchFailureReason);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_26733BCFC(uint64_t a1, uint64_t a2)
{
  v4 = sub_26733BD98(&qword_2800FACE0, &protocol conformance descriptor for STSchemaSTGlobalSearchFailureReason);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_26733BD98(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for STSchemaSTGlobalSearchFailureReason(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static STSchemaSTGlobalSearchRequestEnded.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800FACE8, 0x277D5AE98);
  sub_266ECAF2C(&qword_2800FACF0, &qword_2800FACE8, 0x277D5AE98, &protocol conformance descriptor for STSchemaSTGlobalSearchResult);
  sub_26738122C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x746C75736572, 0xE600000000000000);
  return v5(v7, 0);
}

uint64_t sub_26733BFAC(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800FACE8, 0x277D5AE98);
  sub_266ECAF2C(&qword_2800FACF0, &qword_2800FACE8, 0x277D5AE98, &protocol conformance descriptor for STSchemaSTGlobalSearchResult);
  sub_26738122C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x746C75736572, 0xE600000000000000);
  return v5(v7, 0);
}

uint64_t sub_26733C144(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26733C1A8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static STSchemaSTGlobalSearchRequestFailed.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v9[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for STSchemaSTGlobalSearchFailureReason(0);
  sub_26733C594();
  sub_26738120C();
  v4 = sub_26738116C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0x6E6F73616572, 0xE600000000000000);
  v6(v9, 0);
  sub_266ECB294(0, &qword_2800FAB20, 0x277D5AE40);
  sub_266ECAF2C(&qword_2800FAB28, &qword_2800FAB20, 0x277D5AE40, &protocol conformance descriptor for STSchemaSTFailureError);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0x726F7272457473, 0xE700000000000000);
  return v7(v9, 0);
}

uint64_t sub_26733C4D0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26733C534(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26733C594()
{
  result = qword_2800FACD8;
  if (!qword_2800FACD8)
  {
    type metadata accessor for STSchemaSTGlobalSearchFailureReason(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800FACD8);
  }

  return result;
}

uint64_t static STSchemaSTGlobalSearchRequestStarted.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = sub_26738113C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v10[-v5];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  (*(v1 + 104))(v3, *MEMORY[0x277D3E4E8], v0);
  v10[0] = 1;
  sub_26738114C();
  v7 = sub_26738116C();
  (*(*(v7 - 8) + 56))(v6, 0, 1, v7);
  v8 = sub_2673811AC();
  sub_266EC637C(v6, 0x737473697865, 0xE600000000000000);
  return v8(v10, 0);
}

uint64_t sub_26733C878(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26733C8DC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26733C940()
{
  result = qword_2800FACB0;
  if (!qword_2800FACB0)
  {
    sub_26733C998();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800FACB0);
  }

  return result;
}

unint64_t sub_26733C998()
{
  result = qword_2800FACA8;
  if (!qword_2800FACA8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800FACA8);
  }

  return result;
}

uint64_t static STSchemaSTGlobalSearchRequestType.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = MEMORY[0x277D84F90];
  sub_266ECA394(MEMORY[0x277D84F90]);
  sub_266ECDCE4(v0);
  sub_26738110C();
  v1 = sub_26738111C();
  v3 = v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v26 = *v3;
  *v3 = 0x8000000000000000;
  sub_266ECD368(0, 0xD000000000000021, 0x80000002674A1530, isUniquelyReferenced_nonNull_native);
  *v3 = v26;

  v1(v32, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v27 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000002BLL, 0x80000002674A1560, v8);
  *v7 = v27;

  v5(v32, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v28 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000001FLL, 0x80000002674A1590, v12);
  *v11 = v28;

  v9(v32, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v29 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000023, 0x80000002674A15B0, v16);
  *v15 = v29;

  v13(v32, 0);
  v17 = sub_26738111C();
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v30 = *v19;
  *v19 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000022, 0x80000002674A15E0, v20);
  *v19 = v30;

  v17(v32, 0);
  v21 = sub_26738111C();
  v23 = v22;
  v24 = swift_isUniquelyReferenced_nonNull_native();
  v31 = *v23;
  *v23 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000021, 0x80000002674A1610, v24);
  *v23 = v31;

  return v21(v32, 0);
}

uint64_t sub_26733CD50(uint64_t a1)
{
  v2 = sub_26733CE54(&qword_2800FAD00, &protocol conformance descriptor for STSchemaSTGlobalSearchRequestType);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_26733CDB8(uint64_t a1, uint64_t a2)
{
  v4 = sub_26733CE54(&qword_2800FAD00, &protocol conformance descriptor for STSchemaSTGlobalSearchRequestType);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_26733CE54(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for STSchemaSTGlobalSearchRequestType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static STSchemaSTGlobalSearchResult.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = sub_26738113C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v13[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v13[-v6];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  (*(v2 + 104))(v4, *MEMORY[0x277D3E508], v1);
  v13[0] = 1;
  sub_26738114C();
  v8 = sub_26738116C();
  v9 = *(*(v8 - 8) + 56);
  v9(v7, 0, 1, v8);
  v10 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000016, 0x80000002674A1680);
  v10(v13, 0);
  type metadata accessor for STSchemaSTGlobalSearchRequestType(0);
  sub_26733D2D0(&qword_2800FACF8, type metadata accessor for STSchemaSTGlobalSearchRequestType, &protocol conformance descriptor for STSchemaSTGlobalSearchRequestType);
  sub_26738120C();
  v9(v7, 0, 1, v8);
  v11 = sub_2673811AC();
  sub_266EC637C(v7, 0x5474736575716572, 0xEB00000000657079);
  return v11(v13, 0);
}

uint64_t sub_26733D1C4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26733D228(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_26733D2D0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_26733D318()
{
  result = qword_2800FACE8;
  if (!qword_2800FACE8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800FACE8);
  }

  return result;
}

uint64_t static STSchemaSTHallucinationDetectionContext.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v23 = sub_26738118C();
  v21 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v22 = &v20 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v20 - v3;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800FAD08, 0x277D5AEB8);
  sub_266ECAF2C(&qword_2800FAD10, &qword_2800FAD08, 0x277D5AEB8, &protocol conformance descriptor for STSchemaSTHallucinationDetectionStarted);
  sub_26738121C();
  v5 = sub_26738116C();
  v6 = *(*(v5 - 8) + 56);
  v6(v4, 0, 1, v5);
  v7 = sub_2673811AC();
  sub_266EC637C(v4, 0xD000000000000010, 0x800000026741EB30);
  v7(v24, 0);
  sub_266ECB294(0, &qword_2800FAD18, 0x277D5AEA8);
  sub_266ECAF2C(&qword_2800FAD20, &qword_2800FAD18, 0x277D5AEA8, &protocol conformance descriptor for STSchemaSTHallucinationDetectionEnded);
  sub_26738121C();
  v6(v4, 0, 1, v5);
  v8 = sub_2673811AC();
  sub_266EC637C(v4, 0x6465646E65, 0xE500000000000000);
  v8(v24, 0);
  sub_266ECB294(0, &qword_2800FAD28, 0x277D5AEB0);
  sub_266ECAF2C(&qword_2800FAD30, &qword_2800FAD28, 0x277D5AEB0, &protocol conformance descriptor for STSchemaSTHallucinationDetectionFailed);
  sub_26738121C();
  v6(v4, 0, 1, v5);
  v9 = sub_2673811AC();
  sub_266EC637C(v4, 0x64656C696166, 0xE600000000000000);
  v9(v24, 0);
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78, &protocol conformance descriptor for SISchemaUUID);
  sub_26738120C();
  v6(v4, 0, 1, v5);
  v10 = v22;
  v11 = sub_2673811AC();
  sub_266EC637C(v4, 0x49747865746E6F63, 0xE900000000000064);
  v11(v24, 0);
  sub_26738117C();
  v12 = sub_2673811BC();
  v14 = v13;
  v15 = *v13;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v14 = v15;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v15 = sub_266ECAD54(0, v15[2] + 1, 1, v15);
    *v14 = v15;
  }

  v18 = v15[2];
  v17 = v15[3];
  if (v18 >= v17 >> 1)
  {
    v15 = sub_266ECAD54((v17 > 1), v18 + 1, 1, v15);
    *v14 = v15;
  }

  v15[2] = v18 + 1;
  (*(v21 + 32))(v15 + ((*(v21 + 80) + 32) & ~*(v21 + 80)) + *(v21 + 72) * v18, v10, v23);
  return v12(v24, 0);
}

uint64_t sub_26733D944(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26733D9A8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static STSchemaSTHallucinationDetectionDetectedRule.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = MEMORY[0x277D84F90];
  sub_266ECA394(MEMORY[0x277D84F90]);
  sub_266ECDCE4(v0);
  sub_26738110C();
  v1 = sub_26738111C();
  v3 = v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v3;
  *v3 = 0x8000000000000000;
  sub_266ECD368(0, 0xD00000000000002CLL, 0x80000002674A1730, isUniquelyReferenced_nonNull_native);
  *v3 = v10;

  v1(v12, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v11 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000034, 0x80000002674A1760, v8);
  *v7 = v11;

  return v5(v12, 0);
}

uint64_t sub_26733DBF0(uint64_t a1)
{
  v2 = sub_26733DCF4(&qword_2800FAD40, &protocol conformance descriptor for STSchemaSTHallucinationDetectionDetectedRule);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_26733DC58(uint64_t a1, uint64_t a2)
{
  v4 = sub_26733DCF4(&qword_2800FAD40, &protocol conformance descriptor for STSchemaSTHallucinationDetectionDetectedRule);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_26733DCF4(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for STSchemaSTHallucinationDetectionDetectedRule(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static STSchemaSTHallucinationDetectionEnded.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = sub_26738113C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v13[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v13[-v6];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  (*(v2 + 104))(v4, *MEMORY[0x277D3E508], v1);
  v13[0] = 1;
  sub_26738114C();
  v8 = sub_26738116C();
  v9 = *(*(v8 - 8) + 56);
  v9(v7, 0, 1, v8);
  v10 = sub_2673811AC();
  sub_266EC637C(v7, 0xD00000000000001FLL, 0x80000002674A17E0);
  v10(v13, 0);
  type metadata accessor for STSchemaSTHallucinationDetectionDetectedRule(0);
  sub_26733E174(&qword_2800FAD38, type metadata accessor for STSchemaSTHallucinationDetectionDetectedRule, &protocol conformance descriptor for STSchemaSTHallucinationDetectionDetectedRule);
  sub_26738122C();
  v9(v7, 0, 1, v8);
  v11 = sub_2673811AC();
  sub_266EC637C(v7, 0xD00000000000001ALL, 0x80000002674A1800);
  return v11(v13, 0);
}

uint64_t sub_26733E068(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26733E0CC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_26733E174(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_26733E1BC()
{
  result = qword_2800FAD18;
  if (!qword_2800FAD18)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800FAD18);
  }

  return result;
}

uint64_t static STSchemaSTHallucinationDetectionFailed.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v9[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for STSchemaSTHallucinationDetectionFailureReason(0);
  sub_26733E550();
  sub_26738120C();
  v4 = sub_26738116C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0x6E6F73616572, 0xE600000000000000);
  v6(v9, 0);
  sub_266ECB294(0, &qword_2800FAB20, 0x277D5AE40);
  sub_266ECAF2C(&qword_2800FAB28, &qword_2800FAB20, 0x277D5AE40, &protocol conformance descriptor for STSchemaSTFailureError);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0x726F7272457473, 0xE700000000000000);
  return v7(v9, 0);
}

uint64_t sub_26733E48C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26733E4F0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26733E550()
{
  result = qword_2800FAD48;
  if (!qword_2800FAD48)
  {
    type metadata accessor for STSchemaSTHallucinationDetectionFailureReason(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800FAD48);
  }

  return result;
}

uint64_t static STSchemaSTHallucinationDetectionFailureReason.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = MEMORY[0x277D84F90];
  sub_266ECA394(MEMORY[0x277D84F90]);
  sub_266ECDCE4(v0);
  sub_26738110C();
  v1 = sub_26738111C();
  v3 = v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *v3;
  *v3 = 0x8000000000000000;
  sub_266ECD368(0, 0xD00000000000002DLL, 0x80000002674A18B0, isUniquelyReferenced_nonNull_native);
  *v3 = v6;

  return v1(v7, 0);
}

uint64_t sub_26733E70C(uint64_t a1)
{
  v2 = sub_26733E810(&qword_2800FAD50, &protocol conformance descriptor for STSchemaSTHallucinationDetectionFailureReason);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_26733E774(uint64_t a1, uint64_t a2)
{
  v4 = sub_26733E810(&qword_2800FAD50, &protocol conformance descriptor for STSchemaSTHallucinationDetectionFailureReason);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_26733E810(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for STSchemaSTHallucinationDetectionFailureReason(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static STSchemaSTHallucinationDetectionSource.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = MEMORY[0x277D84F90];
  sub_266ECA394(MEMORY[0x277D84F90]);
  sub_266ECDCE4(v0);
  sub_26738110C();
  v1 = sub_26738111C();
  v3 = v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v3;
  *v3 = 0x8000000000000000;
  sub_266ECD368(0, 0xD000000000000026, 0x80000002674A1920, isUniquelyReferenced_nonNull_native);
  *v3 = v14;

  v1(v17, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v15 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000029, 0x80000002674A1950, v8);
  *v7 = v15;

  v5(v17, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000024, 0x80000002674A1980, v12);
  *v11 = v16;

  return v9(v17, 0);
}

uint64_t sub_26733EA68(uint64_t a1)
{
  v2 = sub_26733EB6C(&qword_2800FAD60, &protocol conformance descriptor for STSchemaSTHallucinationDetectionSource);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_26733EAD0(uint64_t a1, uint64_t a2)
{
  v4 = sub_26733EB6C(&qword_2800FAD60, &protocol conformance descriptor for STSchemaSTHallucinationDetectionSource);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_26733EB6C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for STSchemaSTHallucinationDetectionSource(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static STSchemaSTHallucinationDetectionStarted.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for STSchemaSTHallucinationDetectionSource(0);
  sub_26733EEA0(&qword_2800FAD58, type metadata accessor for STSchemaSTHallucinationDetectionSource, &protocol conformance descriptor for STSchemaSTHallucinationDetectionSource);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0xD00000000000001CLL, 0x80000002674A19F0);
  return v5(v7, 0);
}

uint64_t sub_26733ED94(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26733EDF8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_26733EEA0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_26733EEE8()
{
  result = qword_2800FAD08;
  if (!qword_2800FAD08)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800FAD08);
  }

  return result;
}

uint64_t static STSchemaSTLLMQueryUnderstandingContext.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v22 = sub_26738118C();
  v20 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v21 = &v19 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v19 - v3;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800FAD68, 0x277D5AED8);
  sub_266ECAF2C(&qword_2800FAD70, &qword_2800FAD68, 0x277D5AED8, &protocol conformance descriptor for STSchemaSTLLMQURequestStarted);
  sub_26738121C();
  v5 = sub_26738116C();
  v6 = *(*(v5 - 8) + 56);
  v6(v4, 0, 1, v5);
  v7 = sub_2673811AC();
  sub_266EC637C(v4, 0xD000000000000010, 0x800000026741EB30);
  v7(v23, 0);
  sub_266ECB294(0, &qword_2800FAD78, 0x277D5AEC8);
  sub_266ECAF2C(&qword_2800FAD80, &qword_2800FAD78, 0x277D5AEC8, &protocol conformance descriptor for STSchemaSTLLMQURequestEnded);
  sub_26738121C();
  v6(v4, 0, 1, v5);
  v8 = sub_2673811AC();
  sub_266EC637C(v4, 0x6465646E65, 0xE500000000000000);
  v8(v23, 0);
  sub_266ECB294(0, &qword_2800FAD88, 0x277D5AED0);
  sub_266ECAF2C(&qword_2800FAD90, &qword_2800FAD88, 0x277D5AED0, &protocol conformance descriptor for STSchemaSTLLMQURequestFailed);
  sub_26738121C();
  v6(v4, 0, 1, v5);
  v9 = v21;
  v10 = sub_2673811AC();
  sub_266EC637C(v4, 0x64656C696166, 0xE600000000000000);
  v10(v23, 0);
  sub_26738117C();
  v11 = sub_2673811BC();
  v13 = v12;
  v14 = *v12;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v13 = v14;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v14 = sub_266ECAD54(0, v14[2] + 1, 1, v14);
    *v13 = v14;
  }

  v17 = v14[2];
  v16 = v14[3];
  if (v17 >= v16 >> 1)
  {
    v14 = sub_266ECAD54((v16 > 1), v17 + 1, 1, v14);
    *v13 = v14;
  }

  v14[2] = v17 + 1;
  (*(v20 + 32))(v14 + ((*(v20 + 80) + 32) & ~*(v20 + 80)) + *(v20 + 72) * v17, v9, v22);
  return v11(v23, 0);
}

uint64_t sub_26733F44C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26733F4B0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static STSchemaSTLLMQUFailureReason.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = MEMORY[0x277D84F90];
  sub_266ECA394(MEMORY[0x277D84F90]);
  sub_266ECDCE4(v0);
  sub_26738110C();
  v1 = sub_26738111C();
  v3 = v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = *v3;
  *v3 = 0x8000000000000000;
  sub_266ECD368(0, 0xD00000000000001CLL, 0x80000002674A1A90, isUniquelyReferenced_nonNull_native);
  *v3 = v18;

  v1(v22, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v19 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000028, 0x80000002674A1AB0, v8);
  *v7 = v19;

  v5(v22, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v20 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000022, 0x80000002674A1AE0, v12);
  *v11 = v20;

  v9(v22, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v21 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000001CLL, 0x80000002674A1B10, v16);
  *v15 = v21;

  return v13(v22, 0);
}

uint64_t sub_26733F7DC(uint64_t a1)
{
  v2 = sub_26733F8E0(&qword_2800FADA0, &protocol conformance descriptor for STSchemaSTLLMQUFailureReason);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_26733F844(uint64_t a1, uint64_t a2)
{
  v4 = sub_26733F8E0(&qword_2800FADA0, &protocol conformance descriptor for STSchemaSTLLMQUFailureReason);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_26733F8E0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for STSchemaSTLLMQUFailureReason(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static STSchemaSTLLMQUModelAppEntityStatus.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = MEMORY[0x277D84F90];
  sub_266ECA394(MEMORY[0x277D84F90]);
  sub_266ECDCE4(v0);
  sub_26738110C();
  v1 = sub_26738111C();
  v3 = v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v106 = *v3;
  *v3 = 0x8000000000000000;
  sub_266ECD368(0, 0xD000000000000023, 0x80000002674A1B70, isUniquelyReferenced_nonNull_native);
  *v3 = v106;

  v1(v132, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v107 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000024, 0x80000002674A1BA0, v8);
  *v7 = v107;

  v5(v132, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v108 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000026, 0x80000002674A1BD0, v12);
  *v11 = v108;

  v9(v132, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v109 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000023, 0x80000002674A1C00, v16);
  *v15 = v109;

  v13(v132, 0);
  v17 = sub_26738111C();
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v110 = *v19;
  *v19 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000021, 0x80000002674A1C30, v20);
  *v19 = v110;

  v17(v132, 0);
  v21 = sub_26738111C();
  v23 = v22;
  v24 = swift_isUniquelyReferenced_nonNull_native();
  v111 = *v23;
  *v23 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000022, 0x80000002674A1C60, v24);
  *v23 = v111;

  v21(v132, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = swift_isUniquelyReferenced_nonNull_native();
  v112 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(6, 0xD000000000000025, 0x80000002674A1C90, v28);
  *v27 = v112;

  v25(v132, 0);
  v29 = sub_26738111C();
  v31 = v30;
  v32 = swift_isUniquelyReferenced_nonNull_native();
  v113 = *v31;
  *v31 = 0x8000000000000000;
  sub_266ECD368(7, 0xD000000000000023, 0x80000002674A1CC0, v32);
  *v31 = v113;

  v29(v132, 0);
  v33 = sub_26738111C();
  v35 = v34;
  v36 = swift_isUniquelyReferenced_nonNull_native();
  v114 = *v35;
  *v35 = 0x8000000000000000;
  sub_266ECD368(8, 0xD000000000000025, 0x80000002674A1CF0, v36);
  *v35 = v114;

  v33(v132, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = swift_isUniquelyReferenced_nonNull_native();
  v115 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(9, 0xD000000000000020, 0x80000002674A1D20, v40);
  *v39 = v115;

  v37(v132, 0);
  v41 = sub_26738111C();
  v43 = v42;
  v44 = swift_isUniquelyReferenced_nonNull_native();
  v116 = *v43;
  *v43 = 0x8000000000000000;
  sub_266ECD368(10, 0xD000000000000023, 0x80000002674A1D50, v44);
  *v43 = v116;

  v41(v132, 0);
  v45 = sub_26738111C();
  v47 = v46;
  v48 = swift_isUniquelyReferenced_nonNull_native();
  v117 = *v47;
  *v47 = 0x8000000000000000;
  sub_266ECD368(11, 0xD000000000000020, 0x80000002674A1D80, v48);
  *v47 = v117;

  v45(v132, 0);
  v49 = sub_26738111C();
  v51 = v50;
  v52 = swift_isUniquelyReferenced_nonNull_native();
  v118 = *v51;
  *v51 = 0x8000000000000000;
  sub_266ECD368(12, 0xD000000000000024, 0x80000002674A1DB0, v52);
  *v51 = v118;

  v49(v132, 0);
  v53 = sub_26738111C();
  v55 = v54;
  v56 = swift_isUniquelyReferenced_nonNull_native();
  v119 = *v55;
  *v55 = 0x8000000000000000;
  sub_266ECD368(13, 0xD000000000000023, 0x80000002674A1DE0, v56);
  *v55 = v119;

  v53(v132, 0);
  v57 = sub_26738111C();
  v59 = v58;
  v60 = swift_isUniquelyReferenced_nonNull_native();
  v120 = *v59;
  *v59 = 0x8000000000000000;
  sub_266ECD368(14, 0xD000000000000021, 0x80000002674A1E10, v60);
  *v59 = v120;

  v57(v132, 0);
  v61 = sub_26738111C();
  v63 = v62;
  v64 = swift_isUniquelyReferenced_nonNull_native();
  v121 = *v63;
  *v63 = 0x8000000000000000;
  sub_266ECD368(15, 0xD000000000000020, 0x80000002674A1E40, v64);
  *v63 = v121;

  v61(v132, 0);
  v65 = sub_26738111C();
  v67 = v66;
  v68 = swift_isUniquelyReferenced_nonNull_native();
  v122 = *v67;
  *v67 = 0x8000000000000000;
  sub_266ECD368(16, 0xD000000000000022, 0x80000002674A1E70, v68);
  *v67 = v122;

  v65(v132, 0);
  v69 = sub_26738111C();
  v71 = v70;
  v72 = swift_isUniquelyReferenced_nonNull_native();
  v123 = *v71;
  *v71 = 0x8000000000000000;
  sub_266ECD368(17, 0xD000000000000022, 0x80000002674A1EA0, v72);
  *v71 = v123;

  v69(v132, 0);
  v73 = sub_26738111C();
  v75 = v74;
  v76 = swift_isUniquelyReferenced_nonNull_native();
  v124 = *v75;
  *v75 = 0x8000000000000000;
  sub_266ECD368(18, 0xD000000000000023, 0x80000002674A1ED0, v76);
  *v75 = v124;

  v73(v132, 0);
  v77 = sub_26738111C();
  v79 = v78;
  v80 = swift_isUniquelyReferenced_nonNull_native();
  v125 = *v79;
  *v79 = 0x8000000000000000;
  sub_266ECD368(19, 0xD000000000000022, 0x80000002674A1F00, v80);
  *v79 = v125;

  v77(v132, 0);
  v81 = sub_26738111C();
  v83 = v82;
  v84 = swift_isUniquelyReferenced_nonNull_native();
  v126 = *v83;
  *v83 = 0x8000000000000000;
  sub_266ECD368(20, 0xD000000000000024, 0x80000002674A1F30, v84);
  *v83 = v126;

  v81(v132, 0);
  v85 = sub_26738111C();
  v87 = v86;
  v88 = swift_isUniquelyReferenced_nonNull_native();
  v127 = *v87;
  *v87 = 0x8000000000000000;
  sub_266ECD368(21, 0xD000000000000021, 0x80000002674A1F60, v88);
  *v87 = v127;

  v85(v132, 0);
  v89 = sub_26738111C();
  v91 = v90;
  v92 = swift_isUniquelyReferenced_nonNull_native();
  v128 = *v91;
  *v91 = 0x8000000000000000;
  sub_266ECD368(22, 0xD000000000000024, 0x80000002674A1F90, v92);
  *v91 = v128;

  v89(v132, 0);
  v93 = sub_26738111C();
  v95 = v94;
  v96 = swift_isUniquelyReferenced_nonNull_native();
  v129 = *v95;
  *v95 = 0x8000000000000000;
  sub_266ECD368(23, 0xD000000000000022, 0x80000002674A1FC0, v96);
  *v95 = v129;

  v93(v132, 0);
  v97 = sub_26738111C();
  v99 = v98;
  v100 = swift_isUniquelyReferenced_nonNull_native();
  v130 = *v99;
  *v99 = 0x8000000000000000;
  sub_266ECD368(24, 0xD00000000000001FLL, 0x80000002674A1FF0, v100);
  *v99 = v130;

  v97(v132, 0);
  v101 = sub_26738111C();
  v103 = v102;
  v104 = swift_isUniquelyReferenced_nonNull_native();
  v131 = *v103;
  *v103 = 0x8000000000000000;
  sub_266ECD368(25, 0xD000000000000025, 0x80000002674A2010, v104);
  *v103 = v131;

  return v101(v132, 0);
}

uint64_t sub_267340594(uint64_t a1)
{
  v2 = sub_267340698(&qword_2800FADB0, &protocol conformance descriptor for STSchemaSTLLMQUModelAppEntityStatus);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2673405FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_267340698(&qword_2800FADB0, &protocol conformance descriptor for STSchemaSTLLMQUModelAppEntityStatus);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_267340698(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for STSchemaSTLLMQUModelAppEntityStatus(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static STSchemaSTLLMQUModelAppEntityType.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = MEMORY[0x277D84F90];
  sub_266ECA394(MEMORY[0x277D84F90]);
  sub_266ECDCE4(v0);
  sub_26738110C();
  v1 = sub_26738111C();
  v3 = v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v74 = *v3;
  *v3 = 0x8000000000000000;
  sub_266ECD368(0, 0xD000000000000021, 0x80000002674A2080, isUniquelyReferenced_nonNull_native);
  *v3 = v74;

  v1(v92, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v75 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000001ELL, 0x80000002674A20B0, v8);
  *v7 = v75;

  v5(v92, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v76 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000028, 0x80000002674A20D0, v12);
  *v11 = v76;

  v9(v92, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v77 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000001FLL, 0x80000002674A2100, v16);
  *v15 = v77;

  v13(v92, 0);
  v17 = sub_26738111C();
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v78 = *v19;
  *v19 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000025, 0x80000002674A2120, v20);
  *v19 = v78;

  v17(v92, 0);
  v21 = sub_26738111C();
  v23 = v22;
  v24 = swift_isUniquelyReferenced_nonNull_native();
  v79 = *v23;
  *v23 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000020, 0x80000002674A2150, v24);
  *v23 = v79;

  v21(v92, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = swift_isUniquelyReferenced_nonNull_native();
  v80 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(6, 0xD00000000000001ELL, 0x80000002674A2180, v28);
  *v27 = v80;

  v25(v92, 0);
  v29 = sub_26738111C();
  v31 = v30;
  v32 = swift_isUniquelyReferenced_nonNull_native();
  v81 = *v31;
  *v31 = 0x8000000000000000;
  sub_266ECD368(7, 0xD000000000000025, 0x80000002674A21A0, v32);
  *v31 = v81;

  v29(v92, 0);
  v33 = sub_26738111C();
  v35 = v34;
  v36 = swift_isUniquelyReferenced_nonNull_native();
  v82 = *v35;
  *v35 = 0x8000000000000000;
  sub_266ECD368(8, 0xD000000000000021, 0x80000002674A21D0, v36);
  *v35 = v82;

  v33(v92, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = swift_isUniquelyReferenced_nonNull_native();
  v83 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(9, 0xD000000000000026, 0x80000002674A2200, v40);
  *v39 = v83;

  v37(v92, 0);
  v41 = sub_26738111C();
  v43 = v42;
  v44 = swift_isUniquelyReferenced_nonNull_native();
  v84 = *v43;
  *v43 = 0x8000000000000000;
  sub_266ECD368(10, 0xD000000000000022, 0x80000002674A2230, v44);
  *v43 = v84;

  v41(v92, 0);
  v45 = sub_26738111C();
  v47 = v46;
  v48 = swift_isUniquelyReferenced_nonNull_native();
  v85 = *v47;
  *v47 = 0x8000000000000000;
  sub_266ECD368(11, 0xD000000000000027, 0x80000002674A2260, v48);
  *v47 = v85;

  v45(v92, 0);
  v49 = sub_26738111C();
  v51 = v50;
  v52 = swift_isUniquelyReferenced_nonNull_native();
  v86 = *v51;
  *v51 = 0x8000000000000000;
  sub_266ECD368(12, 0xD000000000000028, 0x80000002674A2290, v52);
  *v51 = v86;

  v49(v92, 0);
  v53 = sub_26738111C();
  v55 = v54;
  v56 = swift_isUniquelyReferenced_nonNull_native();
  v87 = *v55;
  *v55 = 0x8000000000000000;
  sub_266ECD368(13, 0xD000000000000021, 0x80000002674A22C0, v56);
  *v55 = v87;

  v53(v92, 0);
  v57 = sub_26738111C();
  v59 = v58;
  v60 = swift_isUniquelyReferenced_nonNull_native();
  v88 = *v59;
  *v59 = 0x8000000000000000;
  sub_266ECD368(14, 0xD000000000000024, 0x80000002674A22F0, v60);
  *v59 = v88;

  v57(v92, 0);
  v61 = sub_26738111C();
  v63 = v62;
  v64 = swift_isUniquelyReferenced_nonNull_native();
  v89 = *v63;
  *v63 = 0x8000000000000000;
  sub_266ECD368(15, 0xD000000000000026, 0x80000002674A2320, v64);
  *v63 = v89;

  v61(v92, 0);
  v65 = sub_26738111C();
  v67 = v66;
  v68 = swift_isUniquelyReferenced_nonNull_native();
  v90 = *v67;
  *v67 = 0x8000000000000000;
  sub_266ECD368(16, 0xD000000000000021, 0x80000002674A2350, v68);
  *v67 = v90;

  v65(v92, 0);
  v69 = sub_26738111C();
  v71 = v70;
  v72 = swift_isUniquelyReferenced_nonNull_native();
  v91 = *v71;
  *v71 = 0x8000000000000000;
  sub_266ECD368(17, 0xD00000000000001FLL, 0x80000002674A2380, v72);
  *v71 = v91;

  return v69(v92, 0);
}

uint64_t sub_267340F9C(uint64_t a1)
{
  v2 = sub_2673410A0(&qword_2800FADC0, &protocol conformance descriptor for STSchemaSTLLMQUModelAppEntityType);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_267341004(uint64_t a1, uint64_t a2)
{
  v4 = sub_2673410A0(&qword_2800FADC0, &protocol conformance descriptor for STSchemaSTLLMQUModelAppEntityType);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2673410A0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for STSchemaSTLLMQUModelAppEntityType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static STSchemaSTLLMQUModelEventType.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = MEMORY[0x277D84F90];
  sub_266ECA394(MEMORY[0x277D84F90]);
  sub_266ECDCE4(v0);
  sub_26738110C();
  v1 = sub_26738111C();
  v3 = v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v22 = *v3;
  *v3 = 0x8000000000000000;
  sub_266ECD368(0, 0xD00000000000001DLL, 0x80000002674A23E0, isUniquelyReferenced_nonNull_native);
  *v3 = v22;

  v1(v27, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v23 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000001BLL, 0x80000002674A2400, v8);
  *v7 = v23;

  v5(v27, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v24 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000020, 0x80000002674A2420, v12);
  *v11 = v24;

  v9(v27, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v25 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000001CLL, 0x80000002674A2450, v16);
  *v15 = v25;

  v13(v27, 0);
  v17 = sub_26738111C();
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v26 = *v19;
  *v19 = 0x8000000000000000;
  sub_266ECD368(4, 0xD00000000000001BLL, 0x80000002674A2470, v20);
  *v19 = v26;

  return v17(v27, 0);
}

uint64_t sub_2673413DC(uint64_t a1)
{
  v2 = sub_2673414E0(&qword_2800FADD0, &protocol conformance descriptor for STSchemaSTLLMQUModelEventType);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_267341444(uint64_t a1, uint64_t a2)
{
  v4 = sub_2673414E0(&qword_2800FADD0, &protocol conformance descriptor for STSchemaSTLLMQUModelEventType);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2673414E0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for STSchemaSTLLMQUModelEventType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static STSchemaSTLLMQUModelSortOrder.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = MEMORY[0x277D84F90];
  sub_266ECA394(MEMORY[0x277D84F90]);
  sub_266ECDCE4(v0);
  sub_26738110C();
  v1 = sub_26738111C();
  v3 = v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = *v3;
  *v3 = 0x8000000000000000;
  sub_266ECD368(0, 0xD00000000000001DLL, 0x80000002674A24D0, isUniquelyReferenced_nonNull_native);
  *v3 = v18;

  v1(v22, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v19 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000001ALL, 0x80000002674A24F0, v8);
  *v7 = v19;

  v5(v22, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v20 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000001ALL, 0x80000002674A2510, v12);
  *v11 = v20;

  v9(v22, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v21 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000001BLL, 0x80000002674A2530, v16);
  *v15 = v21;

  return v13(v22, 0);
}

uint64_t sub_2673417AC(uint64_t a1)
{
  v2 = sub_2673418B0(&qword_2800FADD8, &protocol conformance descriptor for STSchemaSTLLMQUModelSortOrder);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_267341814(uint64_t a1, uint64_t a2)
{
  v4 = sub_2673418B0(&qword_2800FADD8, &protocol conformance descriptor for STSchemaSTLLMQUModelSortOrder);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2673418B0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for STSchemaSTLLMQUModelSortOrder(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static STSchemaSTLLMQUQueryArgumentsTier1.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v22 - v3;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78, &protocol conformance descriptor for SISchemaUUID);
  sub_26738120C();
  v5 = sub_26738116C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 56);
  v7(v4, 0, 1, v5);
  v8 = sub_2673811AC();
  sub_266EC637C(v4, 0x64496B6E696CLL, 0xE600000000000000);
  v8(v26, 0);
  type metadata accessor for STSchemaSTLLMQUModelEventType(0);
  sub_267341FCC(&qword_2800FADC8, type metadata accessor for STSchemaSTLLMQUModelEventType, &protocol conformance descriptor for STSchemaSTLLMQUModelEventType);
  sub_26738120C();
  v24 = v7;
  v7(v4, 0, 1, v5);
  v9 = sub_2673811AC();
  sub_266EC637C(v4, 0x707954746E657665, 0xE900000000000065);
  v9(v26, 0);
  v10 = sub_2673811AC();
  v11 = sub_266ECB6CC(v25, 0x707954746E657665, 0xE900000000000065);
  v23 = *(v6 + 48);
  if (!v23(v12, 1, v5))
  {
    sub_266ECB128(&unk_2878932C8);
    sub_26738115C();
  }

  (v11)(v25, 0);
  v10(v26, 0);
  type metadata accessor for STSchemaSTLLMQUModelAppEntityType(0);
  sub_267341FCC(&qword_2800FADB8, type metadata accessor for STSchemaSTLLMQUModelAppEntityType, &protocol conformance descriptor for STSchemaSTLLMQUModelAppEntityType);
  v22[1] = a1;
  sub_26738120C();
  v24(v4, 0, 1, v5);
  v13 = sub_2673811AC();
  sub_266EC637C(v4, 0xD000000000000012, 0x80000002674A2590);
  v13(v26, 0);
  v14 = sub_2673811AC();
  v15 = sub_266ECB6CC(v25, 0xD000000000000012, 0x80000002674A2590);
  if (!v23(v16, 1, v5))
  {
    sub_266ECB128(&unk_2878932F0);
    sub_26738115C();
  }

  (v15)(v25, 0);
  v14(v26, 0);
  type metadata accessor for STSchemaSTLLMQUModelAppEntityStatus(0);
  sub_267341FCC(&qword_2800FADA8, type metadata accessor for STSchemaSTLLMQUModelAppEntityStatus, &protocol conformance descriptor for STSchemaSTLLMQUModelAppEntityStatus);
  sub_26738120C();
  v24(v4, 0, 1, v5);
  v17 = sub_2673811AC();
  sub_266EC637C(v4, 0xD000000000000014, 0x80000002674A25B0);
  v17(v26, 0);
  v18 = sub_2673811AC();
  v19 = sub_266ECB6CC(v25, 0xD000000000000014, 0x80000002674A25B0);
  if (!v23(v20, 1, v5))
  {
    sub_266ECB128(&unk_287893318);
    sub_26738115C();
  }

  (v19)(v25, 0);
  return v18(v26, 0);
}

uint64_t sub_267341F08(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267341F6C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_267341FCC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t static STSchemaSTLLMQURequestEnded.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v25 = a1;
  v1 = sub_26738113C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v23 - v6;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v8 = *MEMORY[0x277D3E530];
  v9 = *(v2 + 104);
  v23 = v1;
  v24 = v9;
  v9(v4, v8, v1);
  v27[0] = 1;
  sub_26738114C();
  v10 = sub_26738116C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 56);
  v13 = v11 + 56;
  v12(v7, 0, 1, v10);
  v26 = v13;
  v14 = sub_2673811AC();
  sub_266EC637C(v7, 0x6D754E6C65646F6DLL, 0xEB00000000726562);
  v14(v27, 0);
  v15 = *MEMORY[0x277D3E538];
  v16 = v1;
  v17 = v24;
  v24(v4, v15, v16);
  v27[0] = 1;
  sub_26738114C();
  v12(v7, 0, 1, v10);
  v18 = sub_2673811AC();
  sub_266EC637C(v7, 0x4C74736575716572, 0xED00006874676E65);
  v18(v27, 0);
  v17(v4, v15, v23);
  v27[0] = 1;
  sub_26738114C();
  v12(v7, 0, 1, v10);
  v19 = sub_2673811AC();
  sub_266EC637C(v7, 0x65736E6F70736572, 0xEE006874676E654CLL);
  v19(v27, 0);
  sub_266ECB294(0, &qword_2800FAA70, 0x277D5ADC0);
  sub_266ECAF2C(&qword_2800FAA68, &qword_2800FAA70, 0x277D5ADC0, &protocol conformance descriptor for STSchemaLLMQUQueryArguments);
  sub_26738120C();
  v12(v7, 0, 1, v10);
  v20 = sub_2673811AC();
  sub_266EC637C(v7, 0x6772417972657571, 0xEE0073746E656D75);
  v20(v27, 0);
  sub_266ECB294(0, &qword_2800FAA58, 0x277D5ADB8);
  sub_266ECAF2C(&qword_2800FAA50, &qword_2800FAA58, 0x277D5ADB8, &protocol conformance descriptor for STSchemaLLMQUPerfMetrics);
  sub_26738120C();
  v12(v7, 0, 1, v10);
  v21 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000010, 0x80000002674A2610);
  return v21(v27, 0);
}

uint64_t sub_267342618(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26734267C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static STSchemaSTLLMQURequestFailed.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v9[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for STSchemaSTLLMQUFailureReason(0);
  sub_267342A68();
  sub_26738120C();
  v4 = sub_26738116C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0x6E6F73616572, 0xE600000000000000);
  v6(v9, 0);
  sub_266ECB294(0, &qword_2800FAB20, 0x277D5AE40);
  sub_266ECAF2C(&qword_2800FAB28, &qword_2800FAB20, 0x277D5AE40, &protocol conformance descriptor for STSchemaSTFailureError);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0x726F7272457473, 0xE700000000000000);
  return v7(v9, 0);
}

uint64_t sub_2673429A4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267342A08(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_267342A68()
{
  result = qword_2800FAD98;
  if (!qword_2800FAD98)
  {
    type metadata accessor for STSchemaSTLLMQUFailureReason(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800FAD98);
  }

  return result;
}

uint64_t static STSchemaSTLLMQURequestStarted.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = sub_26738113C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v10[-v5];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  (*(v1 + 104))(v3, *MEMORY[0x277D3E4E8], v0);
  v10[0] = 1;
  sub_26738114C();
  v7 = sub_26738116C();
  (*(*(v7 - 8) + 56))(v6, 0, 1, v7);
  v8 = sub_2673811AC();
  sub_266EC637C(v6, 0x737473697865, 0xE600000000000000);
  return v8(v10, 0);
}

uint64_t sub_267342D4C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267342DB0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_267342E14()
{
  result = qword_2800FAD70;
  if (!qword_2800FAD70)
  {
    sub_267342E6C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800FAD70);
  }

  return result;
}

unint64_t sub_267342E6C()
{
  result = qword_2800FAD68;
  if (!qword_2800FAD68)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800FAD68);
  }

  return result;
}

uint64_t static STSchemaSTSpotlightContext.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v22 = sub_26738118C();
  v20 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v21 = &v19 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v19 - v3;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800FADE0, 0x277D5AF00);
  sub_266ECAF2C(&qword_2800FADE8, &qword_2800FADE0, 0x277D5AF00, &protocol conformance descriptor for STSchemaSTSpotlightRequestStarted);
  sub_26738121C();
  v5 = sub_26738116C();
  v6 = *(*(v5 - 8) + 56);
  v6(v4, 0, 1, v5);
  v7 = sub_2673811AC();
  sub_266EC637C(v4, 0xD000000000000010, 0x800000026741EB30);
  v7(v23, 0);
  sub_266ECB294(0, &qword_2800FADF0, 0x277D5AEF0);
  sub_266ECAF2C(&qword_2800FADF8, &qword_2800FADF0, 0x277D5AEF0, &protocol conformance descriptor for STSchemaSTSpotlightRequestEnded);
  sub_26738121C();
  v6(v4, 0, 1, v5);
  v8 = sub_2673811AC();
  sub_266EC637C(v4, 0x6465646E65, 0xE500000000000000);
  v8(v23, 0);
  sub_266ECB294(0, &qword_2800FAE00, 0x277D5AEF8);
  sub_266ECAF2C(&qword_2800FAE08, &qword_2800FAE00, 0x277D5AEF8, &protocol conformance descriptor for STSchemaSTSpotlightRequestFailed);
  sub_26738121C();
  v6(v4, 0, 1, v5);
  v9 = v21;
  v10 = sub_2673811AC();
  sub_266EC637C(v4, 0x64656C696166, 0xE600000000000000);
  v10(v23, 0);
  sub_26738117C();
  v11 = sub_2673811BC();
  v13 = v12;
  v14 = *v12;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v13 = v14;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v14 = sub_266ECAD54(0, v14[2] + 1, 1, v14);
    *v13 = v14;
  }

  v17 = v14[2];
  v16 = v14[3];
  if (v17 >= v16 >> 1)
  {
    v14 = sub_266ECAD54((v16 > 1), v17 + 1, 1, v14);
    *v13 = v14;
  }

  v14[2] = v17 + 1;
  (*(v20 + 32))(v14 + ((*(v20 + 80) + 32) & ~*(v20 + 80)) + *(v20 + 72) * v17, v9, v22);
  return v11(v23, 0);
}

uint64_t sub_2673433D0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267343434(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static STSchemaSTSpotlightFailureReason.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = MEMORY[0x277D84F90];
  sub_266ECA394(MEMORY[0x277D84F90]);
  sub_266ECDCE4(v0);
  sub_26738110C();
  v1 = sub_26738111C();
  v3 = v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v3;
  *v3 = 0x8000000000000000;
  sub_266ECD368(0, 0xD000000000000020, 0x80000002674A2730, isUniquelyReferenced_nonNull_native);
  *v3 = v14;

  v1(v17, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v15 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000020, 0x80000002674A2760, v8);
  *v7 = v15;

  v5(v17, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000002CLL, 0x80000002674A2790, v12);
  *v11 = v16;

  return v9(v17, 0);
}

uint64_t sub_2673436F0(uint64_t a1)
{
  v2 = sub_2673437F4(&qword_2800FAE18, &protocol conformance descriptor for STSchemaSTSpotlightFailureReason);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_267343758(uint64_t a1, uint64_t a2)
{
  v4 = sub_2673437F4(&qword_2800FAE18, &protocol conformance descriptor for STSchemaSTSpotlightFailureReason);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2673437F4(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for STSchemaSTSpotlightFailureReason(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static STSchemaSTSpotlightRequestEnded.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800FAE20, 0x277D5AF08);
  sub_266ECAF2C(&qword_2800FAE28, &qword_2800FAE20, 0x277D5AF08, &protocol conformance descriptor for STSchemaSTSpotlightResult);
  sub_26738122C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x746C75736572, 0xE600000000000000);
  return v5(v7, 0);
}

uint64_t sub_267343A08(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800FAE20, 0x277D5AF08);
  sub_266ECAF2C(&qword_2800FAE28, &qword_2800FAE20, 0x277D5AF08, &protocol conformance descriptor for STSchemaSTSpotlightResult);
  sub_26738122C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x746C75736572, 0xE600000000000000);
  return v5(v7, 0);
}

uint64_t sub_267343BA0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267343C04(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static STSchemaSTSpotlightRequestFailed.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v9[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for STSchemaSTSpotlightFailureReason(0);
  sub_267343FF0();
  sub_26738120C();
  v4 = sub_26738116C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0x6E6F73616572, 0xE600000000000000);
  v6(v9, 0);
  sub_266ECB294(0, &qword_2800FAB20, 0x277D5AE40);
  sub_266ECAF2C(&qword_2800FAB28, &qword_2800FAB20, 0x277D5AE40, &protocol conformance descriptor for STSchemaSTFailureError);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0x726F7272457473, 0xE700000000000000);
  return v7(v9, 0);
}

uint64_t sub_267343F2C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267343F90(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_267343FF0()
{
  result = qword_2800FAE10;
  if (!qword_2800FAE10)
  {
    type metadata accessor for STSchemaSTSpotlightFailureReason(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800FAE10);
  }

  return result;
}

uint64_t static STSchemaSTSpotlightRequestStarted.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = sub_26738113C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v10[-v5];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  (*(v1 + 104))(v3, *MEMORY[0x277D3E4E8], v0);
  v10[0] = 1;
  sub_26738114C();
  v7 = sub_26738116C();
  (*(*(v7 - 8) + 56))(v6, 0, 1, v7);
  v8 = sub_2673811AC();
  sub_266EC637C(v6, 0x737473697865, 0xE600000000000000);
  return v8(v10, 0);
}

uint64_t sub_2673442D4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267344338(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26734439C()
{
  result = qword_2800FADE8;
  if (!qword_2800FADE8)
  {
    sub_2673443F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800FADE8);
  }

  return result;
}

unint64_t sub_2673443F4()
{
  result = qword_2800FADE0;
  if (!qword_2800FADE0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800FADE0);
  }

  return result;
}

uint64_t static STSchemaSTSpotlightResult.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v66 = sub_26738113C();
  v4 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v6 = &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v56 - v8;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for STSchemaSTSpotlightSearchRetrievalType(0);
  sub_267345280();
  v59 = a1;
  sub_26738120C();
  v10 = sub_26738116C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 56);
  v12(v9, 0, 1, v10);
  v13 = sub_2673811AC();
  sub_266EC637C(v9, 0x6176656972746572, 0xED0000657079546CLL);
  v13(v68, 0);
  v14 = *MEMORY[0x277D3E530];
  v62 = *(v4 + 104);
  v63 = v4 + 104;
  v62(v6, v14, v66);
  v68[0] = 1;
  sub_26738114C();
  v64 = v12;
  v12(v9, 0, 1, v10);
  v15 = sub_2673811AC();
  sub_266EC637C(v9, 0x6449656C646E7562, 0xE800000000000000);
  v15(v68, 0);
  v65 = a2;
  v16 = sub_2673811AC();
  v17 = sub_266ECB6CC(v67, 0x6449656C646E7562, 0xE800000000000000);
  v18 = v10;
  if (!(*(v11 + 48))(v19, 1, v10))
  {
    sub_266ECB128(&unk_287893340);
    sub_26738115C();
  }

  (v17)(v67, 0);
  v16(v68, 0);
  v20 = *MEMORY[0x277D3E500];
  v21 = v62;
  v62(v6, v20, v66);
  v68[0] = 1;
  sub_26738114C();
  v22 = v10;
  v23 = v64;
  v64(v9, 0, 1, v22);
  v24 = sub_2673811AC();
  sub_266EC637C(v9, 0x6F68696C656B696CLL, 0xEA0000000000646FLL);
  v24(v68, 0);
  v56 = v6;
  v25 = v6;
  v60 = v20;
  v26 = v66;
  v21(v25, v20, v66);
  v68[0] = 1;
  sub_26738114C();
  v61 = v18;
  v23(v9, 0, 1, v18);
  v27 = sub_2673811AC();
  sub_266EC637C(v9, 0x696C616369706F74, 0xEA00000000007974);
  v27(v68, 0);
  v28 = v56;
  v21(v56, v20, v26);
  v68[0] = 1;
  sub_26738114C();
  v58 = v11 + 56;
  v23(v9, 0, 1, v18);
  v29 = v23;
  v30 = sub_2673811AC();
  sub_266EC637C(v9, 0x314C73656D6D6F70, 0xED000065726F6353);
  v30(v68, 0);
  v57 = "TSpotlightResult";
  v31 = v60;
  v32 = v66;
  v21(v28, v60, v66);
  v68[0] = 1;
  sub_26738114C();
  v33 = v61;
  v29(v9, 0, 1, v61);
  v34 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000015, v57 | 0x8000000000000000);
  v34(v68, 0);
  v57 = "pommesAdjustedL1Score";
  v35 = v32;
  v36 = v62;
  v62(v28, v31, v35);
  v68[0] = 1;
  sub_26738114C();
  v37 = v33;
  v38 = v64;
  v64(v9, 0, 1, v37);
  v39 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000017, v57 | 0x8000000000000000);
  v39(v68, 0);
  v57 = "pommesCalibratedL1Score";
  v40 = v66;
  v36(v28, v31, v66);
  v68[0] = 1;
  sub_26738114C();
  v41 = v61;
  v38(v9, 0, 1, v61);
  v42 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000013, v57 | 0x8000000000000000);
  v42(v68, 0);
  v57 = "embeddingSimilarity";
  v43 = v60;
  v44 = v40;
  v45 = v62;
  v62(v28, v60, v44);
  v68[0] = 1;
  sub_26738114C();
  v46 = v41;
  v47 = v41;
  v48 = v64;
  v64(v9, 0, 1, v46);
  v49 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000011, v57 | 0x8000000000000000);
  v49(v68, 0);
  v45(v28, v43, v66);
  v68[0] = 1;
  sub_26738114C();
  v48(v9, 0, 1, v47);
  v50 = sub_2673811AC();
  sub_266EC637C(v9, 0x73656E6873657266, 0xE900000000000073);
  v50(v68, 0);
  sub_266ECB294(0, &qword_2800FAA90, 0x277D5ADD0);
  sub_266ECAF2C(&qword_2800FAA88, &qword_2800FAA90, 0x277D5ADD0, &protocol conformance descriptor for STSchemaQueryAttributes);
  sub_26738120C();
  v48(v9, 0, 1, v47);
  v51 = sub_2673811AC();
  sub_266EC637C(v9, 0x7474417972657571, 0xEF73657475626972);
  v51(v68, 0);
  sub_266ECB294(0, &qword_2800FAA78, 0x277D5ADC8);
  sub_266ECAF2C(&qword_2800FAA80, &qword_2800FAA78, 0x277D5ADC8, &protocol conformance descriptor for STSchemaQUTokenParseInfo);
  sub_26738120C();
  v48(v9, 0, 1, v47);
  v52 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000010, 0x800000026749FDD0);
  v52(v68, 0);
  sub_266ECB294(0, &qword_2800FAA48, 0x277D5ADB0);
  sub_266ECAF2C(&qword_2800FAA40, &qword_2800FAA48, 0x277D5ADB0, &protocol conformance descriptor for STSchemaDocumentAttributes);
  sub_26738120C();
  v48(v9, 0, 1, v47);
  v53 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000012, 0x80000002674A2940);
  v53(v68, 0);
  sub_266ECB294(0, &qword_2800FAE38, 0x277D5AF10);
  sub_266ECAF2C(&qword_2800FAE40, &qword_2800FAE38, 0x277D5AF10, &protocol conformance descriptor for STSchemaTopicalityAttributes);
  sub_26738120C();
  v48(v9, 0, 1, v47);
  v54 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000014, 0x80000002674A2960);
  return v54(v68, 0);
}

uint64_t sub_2673451BC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267345220(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_267345280()
{
  result = qword_2800FAE30;
  if (!qword_2800FAE30)
  {
    type metadata accessor for STSchemaSTSpotlightSearchRetrievalType(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800FAE30);
  }

  return result;
}

uint64_t static STSchemaSTSpotlightSearchRetrievalType.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = MEMORY[0x277D84F90];
  sub_266ECA394(MEMORY[0x277D84F90]);
  sub_266ECDCE4(v0);
  sub_26738110C();
  v1 = sub_26738111C();
  v3 = v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v3;
  *v3 = 0x8000000000000000;
  sub_266ECD368(0, 0xD000000000000026, 0x80000002674A29C0, isUniquelyReferenced_nonNull_native);
  *v3 = v14;

  v1(v17, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v15 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000023, 0x80000002674A29F0, v8);
  *v7 = v15;

  v5(v17, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000027, 0x80000002674A2A20, v12);
  *v11 = v16;

  return v9(v17, 0);
}

uint64_t sub_267345530(uint64_t a1)
{
  v2 = sub_267345634(&qword_2800FAE48, &protocol conformance descriptor for STSchemaSTSpotlightSearchRetrievalType);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_267345598(uint64_t a1, uint64_t a2)
{
  v4 = sub_267345634(&qword_2800FAE48, &protocol conformance descriptor for STSchemaSTSpotlightSearchRetrievalType);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_267345634(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for STSchemaSTSpotlightSearchRetrievalType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static STSchemaTopicalityAttributes.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26738113C();
  v52 = v2;
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v45 - v7;
  sub_266EC679C(MEMORY[0x277D84F90]);
  v53 = a1;
  sub_26738119C();
  v47 = "opicalityAttributes";
  v9 = *MEMORY[0x277D3E538];
  v10 = *(v3 + 104);
  v10(v5, v9, v2);
  v54 = v10;
  v55[0] = 1;
  sub_26738114C();
  v11 = sub_26738116C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 56);
  v50 = v12 + 56;
  v13(v8, 0, 1, v11);
  v14 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000017, v47 | 0x8000000000000000);
  v14(v55, 0);
  v47 = "countAttributeQPQUMatch";
  v15 = v52;
  v10(v5, v9, v52);
  v49 = v3 + 104;
  v55[0] = 1;
  sub_26738114C();
  v51 = v11;
  v13(v8, 0, 1, v11);
  v16 = sub_2673811AC();
  sub_266EC637C(v8, 0xD00000000000001DLL, v47 | 0x8000000000000000);
  v16(v55, 0);
  v47 = "countAttributeQPQUprefixMatch";
  v17 = v5;
  v18 = v5;
  v19 = v15;
  v20 = v15;
  v21 = v54;
  v54(v18, v9, v19);
  v55[0] = 1;
  sub_26738114C();
  v13(v8, 0, 1, v11);
  v22 = sub_2673811AC();
  sub_266EC637C(v8, 0xD00000000000001ALL, v47 | 0x8000000000000000);
  v22(v55, 0);
  v47 = "countAttributeUnigramMatch";
  LODWORD(v48) = v9;
  v21(v17, v9, v20);
  v55[0] = 1;
  sub_26738114C();
  v23 = v51;
  v13(v8, 0, 1, v51);
  v24 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000019, v47 | 0x8000000000000000);
  v24(v55, 0);
  v47 = "countAttributeBigramMatch";
  v25 = v52;
  v26 = v54;
  v54(v17, v9, v52);
  v55[0] = 1;
  sub_26738114C();
  v13(v8, 0, 1, v23);
  v27 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000018, v47 | 0x8000000000000000);
  v27(v55, 0);
  v47 = "countAttributeNgramMatch";
  v28 = v48;
  v26(v17, v48, v25);
  v55[0] = 1;
  sub_26738114C();
  v29 = v51;
  v13(v8, 0, 1, v51);
  v30 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000020, v47 | 0x8000000000000000);
  v30(v55, 0);
  v47 = "igramPrefixMatch";
  v31 = v28;
  v32 = v52;
  v54(v17, v31, v52);
  v55[0] = 1;
  sub_26738114C();
  v13(v8, 0, 1, v29);
  v46 = v13;
  v33 = sub_2673811AC();
  sub_266EC637C(v8, 0xD00000000000001FLL, v47 | 0x8000000000000000);
  v33(v55, 0);
  v47 = "countAttributeBigramPrefixMatch";
  v34 = v54;
  v54(v17, v48, v32);
  v55[0] = 1;
  sub_26738114C();
  v35 = v51;
  v13(v8, 0, 1, v51);
  v36 = sub_2673811AC();
  sub_266EC637C(v8, 0xD00000000000001ELL, v47 | 0x8000000000000000);
  v36(v55, 0);
  v48 = "countAttributeNgramPrefixMatch";
  v37 = *MEMORY[0x277D3E500];
  v34(v17, v37, v32);
  v55[0] = 1;
  sub_26738114C();
  v38 = v46;
  v46(v8, 0, 1, v35);
  v39 = sub_2673811AC();
  sub_266EC637C(v8, 0xD00000000000001FLL, v48 | 0x8000000000000000);
  v39(v55, 0);
  v48 = "unCalibratedEmbeddingSimilarity";
  v40 = v52;
  v34(v17, v37, v52);
  v55[0] = 1;
  sub_26738114C();
  v41 = v51;
  v38(v8, 0, 1, v51);
  v42 = sub_2673811AC();
  sub_266EC637C(v8, 0xD00000000000001DLL, v48 | 0x8000000000000000);
  v42(v55, 0);
  v54(v17, *MEMORY[0x277D3E530], v40);
  v55[0] = 1;
  sub_26738114C();
  v38(v8, 0, 1, v41);
  v43 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000010, 0x80000002674A2BE0);
  return v43(v55, 0);
}

uint64_t sub_267346124(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267346188(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2673461EC()
{
  result = qword_2800FAE40;
  if (!qword_2800FAE40)
  {
    sub_267346244();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800FAE40);
  }

  return result;
}

unint64_t sub_267346244()
{
  result = qword_2800FAE38;
  if (!qword_2800FAE38)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800FAE38);
  }

  return result;
}

uint64_t static SUGSchemaSUGAggregateCounts.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = sub_26738113C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v16 - v5;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v7 = *MEMORY[0x277D3E538];
  v8 = *(v1 + 104);
  v17 = v0;
  v18 = v8;
  v8(v3, v7, v0);
  v20[0] = 1;
  sub_26738114C();
  v19 = sub_26738116C();
  v9 = *(*(v19 - 8) + 56);
  v9(v6, 0, 1, v19);
  v10 = sub_2673811AC();
  sub_266EC637C(v6, 0x437961447473616CLL, 0xEC000000746E756FLL);
  v10(v20, 0);
  v11 = v0;
  v12 = v18;
  v18(v3, v7, v11);
  v20[0] = 1;
  sub_26738114C();
  v9(v6, 0, 1, v19);
  v13 = sub_2673811AC();
  sub_266EC637C(v6, 0x6B6565577473616CLL, 0xEE0074656B637542);
  v13(v20, 0);
  v12(v3, v7, v17);
  v20[0] = 1;
  sub_26738114C();
  v9(v6, 0, 1, v19);
  v14 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000010, 0x80000002674A2C30);
  return v14(v20, 0);
}

uint64_t sub_26734667C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2673466E0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_267346744()
{
  result = qword_2800FAE50;
  if (!qword_2800FAE50)
  {
    sub_26734679C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800FAE50);
  }

  return result;
}

unint64_t sub_26734679C()
{
  result = qword_2800FAE58;
  if (!qword_2800FAE58)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800FAE58);
  }

  return result;
}

uint64_t static SUGSchemaSUGAutoCompleteQuery.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26738113C();
  v18 = v2;
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v16 - v7;
  sub_266EC679C(MEMORY[0x277D84F90]);
  v16[1] = a1;
  sub_26738119C();
  v17 = "iri.sug.SUGAutoCompleteQuery";
  v9 = *MEMORY[0x277D3E508];
  v10 = *(v3 + 104);
  v10(v5, v9, v2);
  v19[0] = 1;
  sub_26738114C();
  v11 = sub_26738116C();
  v12 = *(*(v11 - 8) + 56);
  v12(v8, 0, 1, v11);
  v13 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000014, v17 | 0x8000000000000000);
  v13(v19, 0);
  v10(v5, v9, v18);
  v19[0] = 1;
  sub_26738114C();
  v12(v8, 0, 1, v11);
  v14 = sub_2673811AC();
  sub_266EC637C(v8, 0x7364726F576D756ELL, 0xEF79726575516E49);
  return v14(v19, 0);
}

uint64_t sub_267346B20(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267346B84(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_267346BE8()
{
  result = qword_2800FAE60;
  if (!qword_2800FAE60)
  {
    sub_267346C40();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800FAE60);
  }

  return result;
}

unint64_t sub_267346C40()
{
  result = qword_2800FAE68;
  if (!qword_2800FAE68)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800FAE68);
  }

  return result;
}

uint64_t static SUGSchemaSUGAutoCompleteSuggestionMetaData.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for SUGSchemaSUGAutoCompleteSuggestionSource(0);
  sub_267346F7C(&qword_2800FAE70, type metadata accessor for SUGSchemaSUGAutoCompleteSuggestionSource, &protocol conformance descriptor for SUGSchemaSUGAutoCompleteSuggestionSource);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0xD00000000000001CLL, 0x80000002674A2CE0);
  return v5(v7, 0);
}

uint64_t sub_267346E70(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267346ED4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_267346F7C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_267346FC4()
{
  result = qword_2800FAE80;
  if (!qword_2800FAE80)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800FAE80);
  }

  return result;
}

uint64_t static SUGSchemaSUGAutoCompleteSuggestionSource.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = MEMORY[0x277D84F90];
  sub_266ECA394(MEMORY[0x277D84F90]);
  sub_266ECDCE4(v0);
  sub_26738110C();
  v1 = sub_26738111C();
  v3 = v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v30 = *v3;
  *v3 = 0x8000000000000000;
  sub_266ECD368(0, 0xD000000000000027, 0x80000002674A2D40, isUniquelyReferenced_nonNull_native);
  *v3 = v30;

  v1(v37, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v31 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000037, 0x80000002674A2D70, v8);
  *v7 = v31;

  v5(v37, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v32 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000002DLL, 0x80000002674A2DB0, v12);
  *v11 = v32;

  v9(v37, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v33 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000002ALL, 0x80000002674A2DE0, v16);
  *v15 = v33;

  v13(v37, 0);
  v17 = sub_26738111C();
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v34 = *v19;
  *v19 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000029, 0x80000002674A2E10, v20);
  *v19 = v34;

  v17(v37, 0);
  v21 = sub_26738111C();
  v23 = v22;
  v24 = swift_isUniquelyReferenced_nonNull_native();
  v35 = *v23;
  *v23 = 0x8000000000000000;
  sub_266ECD368(5, 0xD00000000000002ALL, 0x80000002674A2E40, v24);
  *v23 = v35;

  v21(v37, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = swift_isUniquelyReferenced_nonNull_native();
  v36 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(6, 0xD000000000000030, 0x80000002674A2E70, v28);
  *v27 = v36;

  return v25(v37, 0);
}

uint64_t sub_2673473E8(uint64_t a1)
{
  v2 = sub_2673474EC(&qword_2800FAE88, &protocol conformance descriptor for SUGSchemaSUGAutoCompleteSuggestionSource);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_267347450(uint64_t a1, uint64_t a2)
{
  v4 = sub_2673474EC(&qword_2800FAE88, &protocol conformance descriptor for SUGSchemaSUGAutoCompleteSuggestionSource);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2673474EC(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SUGSchemaSUGAutoCompleteSuggestionSource(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static SUGSchemaSUGChannel.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = MEMORY[0x277D84F90];
  sub_266ECA394(MEMORY[0x277D84F90]);
  sub_266ECDCE4(v0);
  sub_26738110C();
  v1 = sub_26738111C();
  v3 = v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v38 = *v3;
  *v3 = 0x8000000000000000;
  sub_266ECD368(0, 0xD000000000000012, 0x80000002674A2EE0, isUniquelyReferenced_nonNull_native);
  *v3 = v38;

  v1(v47, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v39 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000001CLL, 0x80000002674A2F00, v8);
  *v7 = v39;

  v5(v47, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v40 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000017, 0x80000002674A2F20, v12);
  *v11 = v40;

  v9(v47, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v41 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000014, 0x80000002674A2F40, v16);
  *v15 = v41;

  v13(v47, 0);
  v17 = sub_26738111C();
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v42 = *v19;
  *v19 = 0x8000000000000000;
  sub_266ECD368(4, 0xD00000000000001CLL, 0x80000002674A2F60, v20);
  *v19 = v42;

  v17(v47, 0);
  v21 = sub_26738111C();
  v23 = v22;
  v24 = swift_isUniquelyReferenced_nonNull_native();
  v43 = *v23;
  *v23 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000015, 0x80000002674A2F80, v24);
  *v23 = v43;

  v21(v47, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = swift_isUniquelyReferenced_nonNull_native();
  v44 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(6, 0xD000000000000020, 0x80000002674A2FA0, v28);
  *v27 = v44;

  v25(v47, 0);
  v29 = sub_26738111C();
  v31 = v30;
  v32 = swift_isUniquelyReferenced_nonNull_native();
  v45 = *v31;
  *v31 = 0x8000000000000000;
  sub_266ECD368(7, 0xD000000000000022, 0x80000002674A2FD0, v32);
  *v31 = v45;

  v29(v47, 0);
  v33 = sub_26738111C();
  v35 = v34;
  v36 = swift_isUniquelyReferenced_nonNull_native();
  v46 = *v35;
  *v35 = 0x8000000000000000;
  sub_266ECD368(8, 0xD000000000000016, 0x80000002674A3000, v36);
  *v35 = v46;

  return v33(v47, 0);
}

uint64_t sub_2673479E8(uint64_t a1)
{
  v2 = sub_267347AEC(&qword_2800FAE98, &protocol conformance descriptor for SUGSchemaSUGChannel);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_267347A50(uint64_t a1, uint64_t a2)
{
  v4 = sub_267347AEC(&qword_2800FAE98, &protocol conformance descriptor for SUGSchemaSUGChannel);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_267347AEC(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SUGSchemaSUGChannel(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static SUGSchemaSUGClientEvent.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_26738118C();
  v47 = *(v4 - 8);
  v48 = v4;
  MEMORY[0x28223BE20](v4);
  v46 = v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v45 - v7;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800FAEA0, 0x277D5AF38);
  sub_266ECAF2C(&qword_2800FAEA8, &qword_2800FAEA0, 0x277D5AF38, &protocol conformance descriptor for SUGSchemaSUGClientEventMetadata);
  v53 = a1;
  sub_26738120C();
  v9 = sub_26738116C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 56);
  (v11)(v8, 0, 1, v9);
  v12 = sub_2673811AC();
  sub_266EC637C(v8, 0x74654D746E657665, 0xED00006174616461);
  v12(v55, 0);
  v50 = "iri.sug.SUGClientEvent";
  sub_266ECB294(0, &qword_2800FAEB0, 0x277D5AFF0);
  sub_266ECAF2C(&qword_2800FAEB8, &qword_2800FAEB0, 0x277D5AFF0, &protocol conformance descriptor for SUGSchemaSUGSuggestionsGenerated);
  sub_26738121C();
  (v11)(v8, 0, 1, v9);
  v13 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000014, v50 | 0x8000000000000000);
  v13(v55, 0);
  sub_266ECB294(0, &qword_2800FAEC0, 0x277D5AF48);
  sub_266ECAF2C(&qword_2800FAEC8, &qword_2800FAEC0, 0x277D5AF48, &protocol conformance descriptor for SUGSchemaSUGEngagementReported);
  sub_26738121C();
  v50 = v11;
  v51 = v10 + 56;
  (v11)(v8, 0, 1, v9);
  v14 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000012, 0x80000002674A3070);
  v14(v55, 0);
  v52 = a2;
  v15 = sub_2673811AC();
  v16 = sub_266ECB6CC(v54, 0xD000000000000012, 0x80000002674A3070);
  v17 = *(v10 + 48);
  v45[1] = v10 + 48;
  v49 = v17;
  if (!v17(v18, 1, v9))
  {
    sub_266ECB128(&unk_287893370);
    sub_26738115C();
  }

  (v16)(v54, 0);
  v15(v55, 0);
  sub_266ECB294(0, &qword_2800FAED0, 0x277D5AFA0);
  sub_266ECAF2C(&qword_2800FAED8, &qword_2800FAED0, 0x277D5AFA0, &protocol conformance descriptor for SUGSchemaSUGRequestContext);
  sub_26738121C();
  v19 = v50;
  (v50)(v8, 0, 1, v9);
  v20 = sub_2673811AC();
  sub_266EC637C(v8, 0x4374736575716572, 0xEE00747865746E6FLL);
  v20(v55, 0);
  sub_266ECB294(0, &qword_2800FAEE0, 0x277D5AF68);
  sub_266ECAF2C(&qword_2800FAEE8, &qword_2800FAEE0, 0x277D5AF68, &protocol conformance descriptor for SUGSchemaSUGGenerationStepContext);
  sub_26738121C();
  v19(v8, 0, 1, v9);
  v21 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000015, 0x80000002674A3090);
  v21(v55, 0);
  sub_266ECB294(0, &qword_2800FAEF0, 0x277D5AFC0);
  sub_266ECAF2C(&qword_2800FAEF8, &qword_2800FAEF0, 0x277D5AFC0, &protocol conformance descriptor for SUGSchemaSUGResolutionStepContext);
  sub_26738121C();
  v19(v8, 0, 1, v9);
  v22 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000015, 0x80000002674A30B0);
  v22(v55, 0);
  sub_266ECB294(0, &qword_2800FAF00, 0x277D5AF50);
  sub_266ECAF2C(&qword_2800FAF08, &qword_2800FAF00, 0x277D5AF50, &protocol conformance descriptor for SUGSchemaSUGFilteringStepContext);
  sub_26738121C();
  v19(v8, 0, 1, v9);
  v23 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000014, 0x80000002674A30D0);
  v23(v55, 0);
  sub_266ECB294(0, &qword_2800FAF10, 0x277D5AF88);
  sub_266ECAF2C(&qword_2800FAF18, &qword_2800FAF10, 0x277D5AF88, &protocol conformance descriptor for SUGSchemaSUGRankingStepContext);
  sub_26738121C();
  v19(v8, 0, 1, v9);
  v24 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000012, 0x80000002674A30F0);
  v24(v55, 0);
  sub_266ECB294(0, &qword_2800FAF20, 0x277D5AF40);
  sub_266ECAF2C(&qword_2800FAF28, &qword_2800FAF20, 0x277D5AF40, &protocol conformance descriptor for SUGSchemaSUGEngagementMetricReported);
  sub_26738121C();
  v19(v8, 0, 1, v9);
  v25 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000018, 0x80000002674A3110);
  v25(v55, 0);
  sub_266ECB294(0, &qword_2800FAF30, 0x277D5B000);
  sub_266ECAF2C(&qword_2800FAF38, &qword_2800FAF30, 0x277D5B000, &protocol conformance descriptor for SUGSchemaSUGSuggestionsUIActivity);
  sub_26738121C();
  v19(v8, 0, 1, v9);
  v26 = sub_2673811AC();
  sub_266EC637C(v8, 0x6976697463416975, 0xEA00000000007974);
  v26(v55, 0);
  sub_266ECB294(0, &qword_2800FAF40, 0x277D5B018);
  sub_266ECAF2C(&qword_2800FAF48, &qword_2800FAF40, 0x277D5B018, &protocol conformance descriptor for SUGSchemaSUGTypingWindowEnded);
  sub_26738121C();
  v19(v8, 0, 1, v9);
  v27 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000011, 0x80000002674A3130);
  v27(v55, 0);
  sub_266ECB294(0, &qword_2800FAF50, 0x277D5AFF8);
  sub_266ECAF2C(&qword_2800FAF58, &qword_2800FAF50, 0x277D5AFF8, &protocol conformance descriptor for SUGSchemaSUGSuggestionsGeneratedTier1);
  sub_26738121C();
  v19(v8, 0, 1, v9);
  v28 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000011, 0x80000002674A3150);
  v28(v55, 0);
  v29 = sub_2673811AC();
  v30 = sub_266ECB6CC(v54, 0xD000000000000011, 0x80000002674A3150);
  if (!v49(v31, 1, v9))
  {
    sub_266ECB128(&unk_287893398);
    sub_26738115C();
  }

  (v30)(v54, 0);
  v29(v55, 0);
  sub_266ECB294(0, &qword_2800FAF60, 0x277D5B008);
  sub_266ECAF2C(&qword_2800FAF68, &qword_2800FAF60, 0x277D5B008, &protocol conformance descriptor for SUGSchemaSUGSuggestionsUIActivityTier1);
  sub_26738121C();
  (v50)(v8, 0, 1, v9);
  v32 = sub_2673811AC();
  sub_266EC637C(v8, 0x6976697463416975, 0xEF31726569547974);
  v32(v55, 0);
  v33 = sub_2673811AC();
  v34 = sub_266ECB6CC(v54, 0x6976697463416975, 0xEF31726569547974);
  if (!v49(v35, 1, v9))
  {
    sub_266ECB128(&unk_2878933C0);
    sub_26738115C();
  }

  (v34)(v54, 0);
  v33(v55, 0);
  v36 = v46;
  sub_26738117C();
  v37 = sub_2673811BC();
  v39 = v38;
  v40 = *v38;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v39 = v40;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v40 = sub_266ECAD54(0, v40[2] + 1, 1, v40);
    *v39 = v40;
  }

  v43 = v40[2];
  v42 = v40[3];
  if (v43 >= v42 >> 1)
  {
    v40 = sub_266ECAD54((v42 > 1), v43 + 1, 1, v40);
    *v39 = v40;
  }

  v40[2] = v43 + 1;
  (*(v47 + 32))(v40 + ((*(v47 + 80) + 32) & ~*(v47 + 80)) + *(v47 + 72) * v43, v36, v48);
  v37(v55, 0);
  sub_266ECB128(&unk_2878933E8);
  return sub_2673811CC();
}