uint64_t View.quickLookPreview<A>(_:in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v26 = a5;
  v24 = a7;
  v25 = a3;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E189150, &qword_23B822080);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v24 - v13;
  v15 = *(a4 - 8);
  MEMORY[0x28223BE20](v12);
  v17 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for QuickLookPreviewModifier(0, a4, a6, v18);
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = &v24 - v21;
  (*(v15 + 16))(v17, a2, a4);
  sub_23B8202AC(a1, v14, &qword_27E189150, &qword_23B822080);
  sub_23B81B824(v17, v14, a4, a6, v22);
  MEMORY[0x23EEABF20](v22, v25, v19, v26);
  return (*(v20 + 8))(v22, v19);
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

uint64_t sub_23B81B824@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = type metadata accessor for QuickLookPreviewModifier(0, a3, a4, a4);
  (*(*(a3 - 8) + 32))(a5 + *(v9 + 36), a1, a3);

  return sub_23B81FF40(a2, a5);
}

uint64_t View.quickLookPreview(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v25 = a3;
  v7 = sub_23B8217EC();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E189158, &qword_23B822088);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v24 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E189150, &qword_23B822080);
  MEMORY[0x23EEABF50](v17);
  sub_23B8202AC(v16, v14, &qword_27E189158, &qword_23B822088);
  if ((*(v8 + 48))(v14, 1, v7) == 1)
  {
    v18 = MEMORY[0x277D84F90];
  }

  else
  {
    v19 = *(v8 + 32);
    v19(v10, v14, v7);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E189170, &qword_23B822098);
    v20 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_23B822070;
    v19((v18 + v20), v10, v7);
  }

  sub_23B8206D8(v16, &qword_27E189158, &qword_23B822088);
  v26 = v18;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E189160, &qword_23B822090);
  v22 = sub_23B81FEF8(&qword_27E189168, &qword_27E189160, &qword_23B822090, MEMORY[0x277D83980]);
  View.quickLookPreview<A>(_:in:)(a1, &v26, a2, v21, v25, v22, a4);
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

void sub_23B81BBAC(uint64_t a1)
{
  sub_23B81E348(319);
  if (v1 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      swift_initClassMetadata2();
    }
  }
}

uint64_t sub_23B81BC88(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E189158, &qword_23B822088);
  MEMORY[0x28223BE20](v2 - 8);
  sub_23B8202AC(a1, &v5 - v3, &qword_27E189158, &qword_23B822088);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E189150, &qword_23B822080);
  sub_23B82198C();
  return sub_23B8206D8(a1, &qword_27E189158, &qword_23B822088);
}

uint64_t sub_23B81BD54(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](a1);
  v19 = *(v2 + 16);
  v19(&v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_23B821A1C();
  v4 = sub_23B821A0C();
  v5 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  v6 = swift_allocObject();
  v7 = MEMORY[0x277D85700];
  *(v6 + 2) = v4;
  *(v6 + 3) = v7;
  v8 = *(a1 + 16);
  v17 = *(a1 + 24);
  v9 = v17;
  v18 = v8;
  *(v6 + 4) = v8;
  *(v6 + 5) = v9;
  v10 = *(v2 + 32);
  v10(&v6[v5], &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  (v19)(&v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v20, a1);
  v11 = sub_23B821A0C();
  v12 = swift_allocObject();
  *(v12 + 2) = v11;
  v13 = v17;
  v14 = v18;
  *(v12 + 3) = MEMORY[0x277D85700];
  *(v12 + 4) = v14;
  *(v12 + 5) = v13;
  v10(&v12[v5], &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  sub_23B8219AC();
  return v21;
}

uint64_t sub_23B81BF4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, _BYTE *a5@<X8>)
{
  v28 = a5;
  v27 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E189158, &qword_23B822088);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v13 = v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = v26 - v14;
  v26[1] = a4;
  v17 = type metadata accessor for QuickLookPreviewModifier(0, a3, a4, v16);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E189150, &qword_23B822080);
  MEMORY[0x23EEABF50](v18);
  v19 = sub_23B8217EC();
  v20 = *(v19 - 8);
  v21 = *(v20 + 48);
  if (v21(v15, 1, v19) == 1)
  {
    result = sub_23B8206D8(v15, &qword_27E189158, &qword_23B822088);
    v23 = 0;
LABEL_5:
    *v28 = v23 & 1;
    return result;
  }

  sub_23B8206D8(v15, &qword_27E189158, &qword_23B822088);
  v24 = v27;
  (*(v27 + 16))(v9, a2 + *(v17 + 36), a3);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E189150, &qword_23B822080);
  MEMORY[0x23EEABF50](v25);
  result = (v21)(v13, 1, v19);
  if (result != 1)
  {
    sub_23B820268(&qword_27E1893E8, MEMORY[0x277CC9278]);
    v23 = sub_23B8219FC();
    (*(v24 + 8))(v9, a3);
    result = (*(v20 + 8))(v13, v19);
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t sub_23B81C224(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E189158, &qword_23B822088);
  result = MEMORY[0x28223BE20](v9 - 8);
  v12 = &v15 - v11;
  if ((*a1 & 1) == 0)
  {
    v13 = sub_23B8217EC();
    (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
    type metadata accessor for QuickLookPreviewModifier(0, a5, a6, v14);
    return sub_23B81BC88(v12);
  }

  return result;
}

uint64_t sub_23B81C314@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v60 = a1;
  v63 = a3;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E189158, &qword_23B822088);
  v5 = MEMORY[0x28223BE20](v62);
  v61 = &v43 - v6;
  v57 = *(a2 - 8);
  v58 = *(v57 + 64);
  MEMORY[0x28223BE20](v5);
  v56 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getWitnessTable();
  v8 = sub_23B82183C();
  v9 = *(a2 + 16);
  v53 = *(a2 + 24);
  v54 = v9;
  type metadata accessor for PreviewController(255, v9, v53, v10);
  v11 = sub_23B82182C();
  WitnessTable = swift_getWitnessTable();
  v71 = MEMORY[0x277CE06C0];
  v59 = MEMORY[0x277CDFAD8];
  v12 = swift_getWitnessTable();
  v13 = MEMORY[0x277CE0F78];
  v66 = v11;
  v67 = MEMORY[0x277CE0F78];
  v14 = MEMORY[0x277CE0F60];
  v68 = v12;
  v69 = MEMORY[0x277CE0F60];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v45 = v8;
  v16 = swift_getWitnessTable();
  v47 = v16;
  v66 = v11;
  v67 = v13;
  v68 = v12;
  v69 = v14;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v66 = v8;
  v67 = OpaqueTypeMetadata2;
  v68 = v16;
  v69 = OpaqueTypeConformance2;
  v51 = MEMORY[0x277CDE868];
  v49 = swift_getOpaqueTypeMetadata2();
  v55 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v44 = &v43 - v17;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1893D8, &qword_23B8221F8);
  v18 = sub_23B82182C();
  v50 = *(v18 - 8);
  v19 = MEMORY[0x28223BE20](v18);
  v48 = &v43 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v52 = &v43 - v21;
  v43 = v3;
  sub_23B81BD54(a2);
  v22 = v56;
  v23 = v57;
  (*(v57 + 16))(v56, v3, a2);
  v24 = (*(v23 + 80) + 32) & ~*(v23 + 80);
  v25 = swift_allocObject();
  v26 = v53;
  *(v25 + 16) = v54;
  *(v25 + 24) = v26;
  (*(v23 + 32))(v25 + v24, v22, a2);
  v27 = swift_checkMetadataState();
  v28 = swift_checkMetadataState();
  v29 = OpaqueTypeConformance2;
  v30 = v47;
  v31 = v44;
  sub_23B82191C();

  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E189150, &qword_23B822080);
  v33 = v61;
  MEMORY[0x23EEABF50](v32);
  v66 = v27;
  v67 = v28;
  v68 = v30;
  v69 = v29;
  v34 = swift_getOpaqueTypeConformance2();
  sub_23B81FE58();
  v35 = v48;
  v36 = v49;
  sub_23B82195C();
  sub_23B8206D8(v33, &qword_27E189158, &qword_23B822088);
  (*(v55 + 8))(v31, v36);
  v37 = sub_23B81FEF8(&qword_27E1893F0, &qword_27E1893D8, &qword_23B8221F8, MEMORY[0x277CE0400]);
  v64 = v34;
  v65 = v37;
  swift_getWitnessTable();
  v38 = v50;
  v39 = *(v50 + 16);
  v40 = v52;
  v39(v52, v35, v18);
  v41 = *(v38 + 8);
  v41(v35, v18);
  v39(v63, v40, v18);
  return (v41)(v40, v18);
}

uint64_t sub_23B81C988@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v50 = a4;
  v7 = sub_23B82185C();
  v48 = *(v7 - 8);
  v49 = v7;
  MEMORY[0x28223BE20](v7);
  v47 = &WitnessTable - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E189150, &qword_23B822080);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v45 = &WitnessTable - v11;
  v12 = *(a2 - 8);
  MEMORY[0x28223BE20](v10);
  v14 = &WitnessTable - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for PreviewController(0, a2, a3, v15);
  v44 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v43 = &WitnessTable - v17;
  v18 = sub_23B82182C();
  v41 = v18;
  v46 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v42 = &WitnessTable - v19;
  WitnessTable = swift_getWitnessTable();
  v55 = WitnessTable;
  v56 = MEMORY[0x277CE06C0];
  v40 = swift_getWitnessTable();
  v51 = v18;
  v52 = MEMORY[0x277CE0F78];
  v53 = v40;
  v54 = MEMORY[0x277CE0F60];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v21 = *(OpaqueTypeMetadata2 - 8);
  v22 = MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v24 = &WitnessTable - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v26 = &WitnessTable - v25;
  v28 = type metadata accessor for QuickLookPreviewModifier(0, a2, a3, v27);
  v29 = *(v12 + 16);
  v30 = a2;
  v29(v14, a1 + *(v28 + 36), a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E189150, &qword_23B822080);
  v31 = v45;
  sub_23B82199C();
  v32 = v43;
  sub_23B81CEC0(v14, v31, v30, v43, a3);
  sub_23B8218FC();
  v33 = v42;
  sub_23B82193C();
  (*(v44 + 8))(v32, v16);
  v51 = sub_23B82196C();
  v34 = v47;
  sub_23B82184C();
  v35 = v41;
  sub_23B82192C();
  (*(v48 + 8))(v34, v49);

  (*(v46 + 8))(v33, v35);
  v36 = *(v21 + 16);
  v36(v26, v24, OpaqueTypeMetadata2);
  v37 = *(v21 + 8);
  v37(v24, OpaqueTypeMetadata2);
  v36(v50, v26, OpaqueTypeMetadata2);
  return (v37)(v26, OpaqueTypeMetadata2);
}

uint64_t sub_23B81CEC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, uint64_t a5@<X3>)
{
  (*(*(a3 - 8) + 32))(a4, a1);
  v10 = a4 + *(type metadata accessor for PreviewController(0, a3, a5, v9) + 36);

  return sub_23B81FF40(a2, v10);
}

id sub_23B81CFC8(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E189150, &qword_23B822080);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v7 - v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E189150, &qword_23B822080);
  sub_23B82199C();
  return sub_23B8204A8(v5, v1, *(a1 + 16), *(a1 + 16), *(a1 + 24), *(a1 + 24));
}

uint64_t sub_23B81D088(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E189150, &qword_23B822080);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v10 - v6;
  swift_getWitnessTable();
  sub_23B8218EC();
  sub_23B8218DC();
  v8 = v10[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E189150, &qword_23B822080);
  sub_23B82199C();
  sub_23B81D6E4(a1, v7, v3);

  return sub_23B8206D8(v7, &qword_27E189150, &qword_23B822080);
}

uint64_t sub_23B81D1D4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E189150, &qword_23B822080);
  MEMORY[0x28223BE20](v1);
  v3 = &v6 - v2;
  v4 = *((*MEMORY[0x277D85000] & *v0) + 0x78);
  swift_beginAccess();
  sub_23B8202AC(v0 + v4, v3, &qword_27E189150, &qword_23B822080);
  MEMORY[0x23EEABF50](v1);
  return sub_23B8206D8(v3, &qword_27E189150, &qword_23B822080);
}

uint64_t sub_23B81D2DC(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E189158, &qword_23B822088);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v11 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E189150, &qword_23B822080);
  MEMORY[0x28223BE20](v6);
  v8 = &v11 - v7;
  v9 = *((*MEMORY[0x277D85000] & *v1) + 0x78);
  swift_beginAccess();
  sub_23B8202AC(v1 + v9, v8, &qword_27E189150, &qword_23B822080);
  sub_23B8202AC(a1, v5, &qword_27E189158, &qword_23B822088);
  sub_23B82198C();
  sub_23B8206D8(a1, &qword_27E189158, &qword_23B822088);
  return sub_23B8206D8(v8, &qword_27E189150, &qword_23B822080);
}

uint64_t sub_23B81D464@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *MEMORY[0x277D85000];
  v5 = *((*MEMORY[0x277D85000] & *v1) + 0x80);
  swift_beginAccess();
  return (*(*(*((v4 & v3) + 0x58) - 8) + 16))(a1, &v1[v5]);
}

uint64_t sub_23B81D518(uint64_t a1)
{
  v3 = *v1;
  v4 = *MEMORY[0x277D85000];
  v5 = *((*MEMORY[0x277D85000] & *v1) + 0x80);
  swift_beginAccess();
  (*(*(*((v4 & v3) + 0x58) - 8) + 40))(&v1[v5], a1);
  return swift_endAccess();
}

uint64_t sub_23B81D5D4(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  v6 = sub_23B82075C(v5);

  return v6;
}

void (*sub_23B81D620(void *a1, uint64_t a2, void *a3, void (*a4)(char *, uint64_t)))(char *, uint64_t)
{
  v6 = a3;
  v7 = a1;
  v8 = sub_23B820868(a4);

  return v8;
}

void sub_23B81D684(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_23B820CAC();
}

uint64_t sub_23B81D6E4(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v79 = a3;
  v75 = a1;
  v6 = *v3;
  v7 = MEMORY[0x277D85000];
  v8 = *MEMORY[0x277D85000];
  v9 = *((*MEMORY[0x277D85000] & v6) + 0x58);
  v77 = *(v9 - 8);
  MEMORY[0x28223BE20](a1);
  v76 = &v60 - v10;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E189408, qword_23B822208);
  MEMORY[0x28223BE20](v74);
  v73 = &v60 - v11;
  v64 = *((v8 & v6) + 0x68);
  v72 = *(*(v64 + 8) + 8);
  v78 = v9;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v63 = sub_23B821A8C();
  v62 = *(v63 - 8);
  v13 = MEMORY[0x28223BE20](v63);
  v66 = &v60 - v14;
  v69 = AssociatedTypeWitness;
  v68 = *(AssociatedTypeWitness - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v61 = &v60 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v67 = &v60 - v17;
  v18 = sub_23B8217EC();
  v19 = *(v18 - 8);
  v20 = MEMORY[0x28223BE20](v18);
  v65 = &v60 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v23 = &v60 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E189158, &qword_23B822088);
  v25 = MEMORY[0x28223BE20](v24 - 8);
  v70 = &v60 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v25);
  v29 = &v60 - v28;
  v30 = MEMORY[0x28223BE20](v27);
  v32 = &v60 - v31;
  MEMORY[0x28223BE20](v30);
  v34 = &v60 - v33;
  sub_23B81D1D4();
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E189150, &qword_23B822080);
  v81 = v32;
  MEMORY[0x23EEABF50](v35);
  v36 = *((*v7 & *v4) + 0x78);
  swift_beginAccess();
  sub_23B820668(a2, v4 + v36);
  swift_endAccess();
  v37 = *(v19 + 48);
  v80 = v34;
  if (v37(v34, 1, v18) == 1 && v37(v81, 1, v18) == 1)
  {
    goto LABEL_17;
  }

  sub_23B8202AC(v81, v29, &qword_27E189158, &qword_23B822088);
  v38 = v37(v29, 1, v18);
  v71 = v19;
  if (v38 == 1)
  {
    sub_23B8206D8(v29, &qword_27E189158, &qword_23B822088);
  }

  else
  {
    (*(v19 + 32))(v23, v29, v18);
    sub_23B820268(&qword_27E1893E8, MEMORY[0x277CC9278]);
    v39 = v66;
    v60 = v23;
    sub_23B821A6C();
    v41 = v68;
    v40 = v69;
    if ((*(v68 + 48))(v39, 1, v69) == 1)
    {
      (*(v71 + 8))(v60, v18);
      (*(v62 + 8))(v39, v63);
    }

    else
    {
      (*(v41 + 32))(v67, v39, v40);
      v42 = v61;
      sub_23B821A4C();
      v43 = v67;
      v44 = sub_23B821A3C();
      v45 = *(v41 + 8);
      v45(v42, v40);
      [v75 setCurrentPreviewItemIndex_];
      v45(v43, v40);
      (*(v71 + 8))(v60, v18);
    }
  }

  v46 = v73;
  v47 = *(v74 + 48);
  sub_23B8202AC(v80, v73, &qword_27E189158, &qword_23B822088);
  sub_23B8202AC(v81, v46 + v47, &qword_27E189158, &qword_23B822088);
  if (v37(v46, 1, v18) == 1)
  {
    if (v37((v46 + v47), 1, v18) == 1)
    {
      sub_23B8206D8(v46, &qword_27E189158, &qword_23B822088);
      goto LABEL_15;
    }

    goto LABEL_13;
  }

  v48 = v70;
  sub_23B8202AC(v46, v70, &qword_27E189158, &qword_23B822088);
  if (v37((v46 + v47), 1, v18) == 1)
  {
    (*(v71 + 8))(v48, v18);
LABEL_13:
    sub_23B8206D8(v46, qword_27E189408, qword_23B822208);
LABEL_16:
    v58 = v76;
    (*(v77 + 16))(v76, v79, v78);
    sub_23B81D518(v58);
    [v75 reloadData];
    goto LABEL_17;
  }

  v49 = v71;
  v50 = v46 + v47;
  v51 = v65;
  (*(v71 + 32))(v65, v50, v18);
  sub_23B820268(&qword_27E1893E8, MEMORY[0x277CC9278]);
  v52 = v48;
  v53 = sub_23B8219DC();
  v54 = *(v49 + 8);
  v54(v51, v18);
  v54(v52, v18);
  sub_23B8206D8(v46, &qword_27E189158, &qword_23B822088);
  if ((v53 & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_15:
  v55 = v76;
  sub_23B81D464(v76);
  sub_23B820268(&qword_27E1893E8, MEMORY[0x277CC9278]);
  v56 = v78;
  v57 = sub_23B8219EC();
  (*(v77 + 8))(v55, v56);
  if ((v57 & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_17:
  sub_23B8206D8(v80, &qword_27E189158, &qword_23B822088);
  return sub_23B8206D8(v81, &qword_27E189158, &qword_23B822088);
}

void sub_23B81E030()
{
  v1 = v0;
  swift_getKeyPath();
  v2 = sub_23B8217AC();

  v3 = *((*MEMORY[0x277D85000] & *v1) + 0x70);
  v4 = *(v1 + v3);
  *(v1 + v3) = v2;
}

void sub_23B81E0DC()
{
  v1 = *(v0 + *((*MEMORY[0x277D85000] & *v0) + 0x70));
  if (v1)
  {
    v2 = v1;
    sub_23B82179C();
  }
}

id sub_23B81E1C8()
{
  v1 = *((*MEMORY[0x277D85000] & *v0) + 0x60);
  v4[0] = *((*MEMORY[0x277D85000] & *v0) + 0x50);
  v4[1] = v1;
  v2 = type metadata accessor for PreviewController.PreviewCoordinator(0, v4);
  v5.receiver = v0;
  v5.super_class = v2;
  return objc_msgSendSuper2(&v5, sel_dealloc);
}

uint64_t sub_23B81E240(uint64_t *a1)
{
  v2 = MEMORY[0x277D85000];
  v3 = *a1;
  v4 = *MEMORY[0x277D85000];

  sub_23B8206D8(a1 + *((*v2 & *a1) + 0x78), &qword_27E189150, &qword_23B822080);
  v5 = *(*(*((v4 & v3) + 0x58) - 8) + 8);
  v6 = a1 + *((*v2 & *a1) + 0x80);

  return v5(v6);
}

void sub_23B81E348(uint64_t a1)
{
  if (!qword_27E1892B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E189158, &qword_23B822088);
    v1 = sub_23B8219BC();
    if (!v2)
    {
      atomic_store(v1, &qword_27E1892B8);
    }
  }
}

id sub_23B81E3C8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_23B81CFC8(a1);
  *a2 = result;
  return result;
}

uint64_t sub_23B81E42C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28212EF70](a1, a2, a3, WitnessTable);
}

uint64_t sub_23B81E4A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28212EF38](a1, a2, a3, WitnessTable);
}

void sub_23B81E540(uint64_t a1)
{
  swift_getWitnessTable();
  sub_23B8218BC();
  __break(1u);
}

id sub_23B81E580()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_23B8217EC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v1[OBJC_IVAR____TtC18_QuickLook_SwiftUI22QLPreviewItemContainer_didStartAccessingSecurityScopeResource] == 1)
  {
    (*(v4 + 16))(v6, &v1[OBJC_IVAR____TtC18_QuickLook_SwiftUI22QLPreviewItemContainer_url], v3);
    sub_23B8217CC();
    (*(v4 + 8))(v6, v3);
  }

  v8.receiver = v1;
  v8.super_class = ObjectType;
  return objc_msgSendSuper2(&v8, sel_dealloc);
}

uint64_t type metadata accessor for QLPreviewItemContainer(uint64_t a1)
{
  result = qword_27E189338;
  if (!qword_27E189338)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23B81E9E4(uint64_t a1)
{
  v2 = v1;
  swift_getObjectType();
  v4 = sub_23B8217EC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E189408, qword_23B822208);
  MEMORY[0x28223BE20](v8);
  v10 = &v40 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E189158, &qword_23B822088);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v44 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v40 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v40 - v17;
  sub_23B8202AC(a1, v46, &qword_27E189400, &qword_23B822200);
  if (!v47)
  {
    v33 = &qword_27E189400;
    v34 = &qword_23B822200;
    v35 = v46;
LABEL_14:
    sub_23B8206D8(v35, v33, v34);
    goto LABEL_15;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_15:
    v32 = 0;
    return v32 & 1;
  }

  v40 = v7;
  v42 = v10;
  v19 = v45;
  v20 = OBJC_IVAR____TtC18_QuickLook_SwiftUI22QLPreviewItemContainer_didStartAccessingSecurityScopeResource;
  v21 = *(v2 + OBJC_IVAR____TtC18_QuickLook_SwiftUI22QLPreviewItemContainer_didStartAccessingSecurityScopeResource);
  v43 = v45;
  if ((v21 & 1) == 0)
  {
    v22 = sub_23B8217DC();
    v19 = v43;
    *(v2 + v20) = v22 & 1;
  }

  v23 = *(v5 + 16);
  v23(v18, v2 + OBJC_IVAR____TtC18_QuickLook_SwiftUI22QLPreviewItemContainer_url, v4);
  v41 = v5;
  v24 = *(v5 + 56);
  v24(v18, 0, 1, v4);
  v25 = OBJC_IVAR____TtC18_QuickLook_SwiftUI22QLPreviewItemContainer_didStartAccessingSecurityScopeResource;
  if ((v19[OBJC_IVAR____TtC18_QuickLook_SwiftUI22QLPreviewItemContainer_didStartAccessingSecurityScopeResource] & 1) == 0)
  {
    v26 = sub_23B8217DC();
    v19 = v43;
    v43[v25] = v26 & 1;
  }

  v23(v16, &v19[OBJC_IVAR____TtC18_QuickLook_SwiftUI22QLPreviewItemContainer_url], v4);
  v24(v16, 0, 1, v4);
  v27 = *(v8 + 48);
  v28 = v19;
  v29 = v42;
  sub_23B8202AC(v18, v42, &qword_27E189158, &qword_23B822088);
  sub_23B8202AC(v16, v29 + v27, &qword_27E189158, &qword_23B822088);
  v30 = v41;
  v31 = *(v41 + 48);
  if (v31(v29, 1, v4) != 1)
  {
    v36 = v44;
    sub_23B8202AC(v29, v44, &qword_27E189158, &qword_23B822088);
    if (v31(v29 + v27, 1, v4) != 1)
    {
      v38 = v40;
      (*(v30 + 32))(v40, v29 + v27, v4);
      sub_23B820268(&qword_27E1893E8, MEMORY[0x277CC9278]);
      v32 = sub_23B8219DC();

      v39 = *(v30 + 8);
      v39(v38, v4);
      sub_23B8206D8(v16, &qword_27E189158, &qword_23B822088);
      sub_23B8206D8(v18, &qword_27E189158, &qword_23B822088);
      v39(v36, v4);
      sub_23B8206D8(v29, &qword_27E189158, &qword_23B822088);
      return v32 & 1;
    }

    sub_23B8206D8(v16, &qword_27E189158, &qword_23B822088);
    sub_23B8206D8(v18, &qword_27E189158, &qword_23B822088);
    (*(v30 + 8))(v36, v4);
    goto LABEL_13;
  }

  sub_23B8206D8(v16, &qword_27E189158, &qword_23B822088);
  sub_23B8206D8(v18, &qword_27E189158, &qword_23B822088);
  if (v31(v29 + v27, 1, v4) != 1)
  {
LABEL_13:
    v33 = qword_27E189408;
    v34 = qword_23B822208;
    v35 = v29;
    goto LABEL_14;
  }

  sub_23B8206D8(v29, &qword_27E189158, &qword_23B822088);
  v32 = 1;
  return v32 & 1;
}

uint64_t sub_23B81F020()
{
  v1 = sub_23B8217EC();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E189158, &qword_23B822088);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v13 - v9;
  sub_23B821ACC();
  v11 = OBJC_IVAR____TtC18_QuickLook_SwiftUI22QLPreviewItemContainer_didStartAccessingSecurityScopeResource;
  if ((*(v0 + OBJC_IVAR____TtC18_QuickLook_SwiftUI22QLPreviewItemContainer_didStartAccessingSecurityScopeResource) & 1) == 0)
  {
    *(v0 + v11) = sub_23B8217DC() & 1;
  }

  (*(v2 + 16))(v10, v0 + OBJC_IVAR____TtC18_QuickLook_SwiftUI22QLPreviewItemContainer_url, v1);
  (*(v2 + 56))(v10, 0, 1, v1);
  sub_23B8202AC(v10, v8, &qword_27E189158, &qword_23B822088);
  if ((*(v2 + 48))(v8, 1, v1) == 1)
  {
    sub_23B821AAC();
  }

  else
  {
    (*(v2 + 32))(v4, v8, v1);
    sub_23B821AAC();
    sub_23B820268(&qword_27E1893F8, MEMORY[0x277CC9270]);
    sub_23B8219CC();
    (*(v2 + 8))(v4, v1);
  }

  sub_23B8206D8(v10, &qword_27E189158, &qword_23B822088);
  return sub_23B821ABC();
}

uint64_t sub_23B81F2E4(uint64_t a1)
{
  result = sub_23B8217EC();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_23B81F37C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for QuickLookPreviewModifier(255, a1[1], a1[3], a4);
  sub_23B82182C();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_23B81F410(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E189348, &unk_23B822150);
  sub_23B82182C();
  sub_23B81FEF8(qword_27E189350, &qword_27E189348, &unk_23B822150, &unk_23B8221A4);
  return swift_getWitnessTable();
}

void sub_23B81F4C4(uint64_t a1)
{
  sub_23B81E348(319);
  if (v1 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_23B81F54C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(sub_23B8217EC() - 8);
  v7 = v6;
  v8 = *(v6 + 84);
  if (v8)
  {
    v9 = v8 - 1;
  }

  else
  {
    v9 = 0;
  }

  if (v9 <= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  else
  {
    v10 = v9;
  }

  v11 = *(*(a3 + 16) - 8);
  v12 = *(v11 + 84);
  v13 = *(v6 + 80);
  v14 = *(v6 + 64);
  v15 = *(v11 + 80);
  if (v12 <= v10)
  {
    v16 = v10;
  }

  else
  {
    v16 = *(v11 + 84);
  }

  if (v8)
  {
    v17 = v14;
  }

  else
  {
    v17 = v14 + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v18 = v17 + ((v13 + 16) & ~v13) + v15;
  if (a2 <= v16)
  {
    goto LABEL_37;
  }

  v19 = (v18 & ~v15) + *(v11 + 64);
  v20 = 8 * v19;
  if (v19 <= 3)
  {
    v23 = ((a2 - v16 + ~(-1 << v20)) >> v20) + 1;
    if (HIWORD(v23))
    {
      v21 = *(a1 + v19);
      if (!v21)
      {
        goto LABEL_37;
      }

      goto LABEL_24;
    }

    if (v23 > 0xFF)
    {
      v21 = *(a1 + v19);
      if (!*(a1 + v19))
      {
        goto LABEL_37;
      }

      goto LABEL_24;
    }

    if (v23 < 2)
    {
LABEL_37:
      if (v10 >= v12)
      {
        v28 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
        if ((v9 & 0x80000000) != 0)
        {
          v30 = (*(v7 + 48))((v28 + v13 + 8) & ~v13);
          if (v30 >= 2)
          {
            return v30 - 1;
          }

          else
          {
            return 0;
          }
        }

        else
        {
          v29 = *v28;
          if (v29 >= 0xFFFFFFFF)
          {
            LODWORD(v29) = -1;
          }

          return (v29 + 1);
        }
      }

      else
      {
        v27 = *(v11 + 48);

        return v27((a1 + v18) & ~v15, v12);
      }
    }
  }

  v21 = *(a1 + v19);
  if (!*(a1 + v19))
  {
    goto LABEL_37;
  }

LABEL_24:
  v24 = (v21 - 1) << v20;
  if (v19 > 3)
  {
    v24 = 0;
  }

  if (v19)
  {
    if (v19 <= 3)
    {
      v25 = (v18 & ~v15) + *(v11 + 64);
    }

    else
    {
      v25 = 4;
    }

    if (v25 > 2)
    {
      if (v25 == 3)
      {
        v26 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v26 = *a1;
      }
    }

    else if (v25 == 1)
    {
      v26 = *a1;
    }

    else
    {
      v26 = *a1;
    }
  }

  else
  {
    v26 = 0;
  }

  return v16 + (v26 | v24) + 1;
}

void sub_23B81F7D8(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = 0;
  v9 = *(sub_23B8217EC() - 8);
  v10 = v9;
  v11 = *(v9 + 84);
  if (v11)
  {
    v12 = v11 - 1;
  }

  else
  {
    v12 = 0;
  }

  if (v12 <= 0x7FFFFFFF)
  {
    v13 = 0x7FFFFFFF;
  }

  else
  {
    v13 = v12;
  }

  v14 = *(*(a4 + 16) - 8);
  v15 = *(v14 + 84);
  v16 = *(v9 + 80);
  v17 = *(v9 + 64);
  v18 = *(v14 + 80);
  if (v15 <= v13)
  {
    v19 = v13;
  }

  else
  {
    v19 = *(v14 + 84);
  }

  v20 = (v16 + 16) & ~v16;
  if (v11)
  {
    v21 = v17;
  }

  else
  {
    v21 = v17 + 1;
  }

  v22 = v20 + v21;
  v23 = v20 + v21 + v18;
  v24 = (v23 & ~v18) + *(v14 + 64);
  if (a3 <= v19)
  {
    goto LABEL_27;
  }

  if (v24 > 3)
  {
    v8 = 1;
    if (v19 >= a2)
    {
      goto LABEL_16;
    }

LABEL_28:
    v27 = ~v19 + a2;
    if (v24 >= 4)
    {
      bzero(a1, v24);
      *a1 = v27;
      v28 = 1;
      if (v8 > 1)
      {
        goto LABEL_30;
      }

LABEL_66:
      if (v8)
      {
        a1[v24] = v28;
      }

      return;
    }

    v28 = (v27 >> (8 * v24)) + 1;
    if (v24)
    {
      v30 = v27 & ~(-1 << (8 * v24));
      bzero(a1, v24);
      if (v24 != 3)
      {
        if (v24 == 2)
        {
          *a1 = v30;
          if (v8 <= 1)
          {
            goto LABEL_66;
          }
        }

        else
        {
          *a1 = v27;
          if (v8 <= 1)
          {
            goto LABEL_66;
          }
        }

LABEL_30:
        if (v8 == 2)
        {
          *&a1[v24] = v28;
        }

        else
        {
          *&a1[v24] = v28;
        }

        return;
      }

      *a1 = v30;
      a1[2] = BYTE2(v30);
    }

    if (v8 <= 1)
    {
      goto LABEL_66;
    }

    goto LABEL_30;
  }

  v25 = ((a3 - v19 + ~(-1 << (8 * v24))) >> (8 * v24)) + 1;
  if (!HIWORD(v25))
  {
    if (v25 < 0x100)
    {
      v26 = 1;
    }

    else
    {
      v26 = 2;
    }

    if (v25 >= 2)
    {
      v8 = v26;
    }

    else
    {
      v8 = 0;
    }

LABEL_27:
    if (v19 < a2)
    {
      goto LABEL_28;
    }

    goto LABEL_16;
  }

  v8 = 4;
  if (v19 < a2)
  {
    goto LABEL_28;
  }

LABEL_16:
  if (v8 > 1)
  {
    if (v8 != 2)
    {
      *&a1[v24] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_35;
    }

    *&a1[v24] = 0;
  }

  else if (v8)
  {
    a1[v24] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_35;
  }

  if (!a2)
  {
    return;
  }

LABEL_35:
  if (v13 < v15)
  {
    v29 = *(v14 + 56);

    v29(&a1[v23] & ~v18, a2, v15);
    return;
  }

  if (v13 >= a2)
  {
    v34 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
    if ((v12 & 0x80000000) != 0)
    {
      v36 = v34 + v16 + 8;
      a1 = (v36 & ~v16);
      if (v12 >= a2)
      {
        v38 = *(v10 + 56);

        v38(v36 & ~v16, (a2 + 1));
      }

      else
      {
        if (v21 <= 3)
        {
          v37 = ~(-1 << (8 * v21));
        }

        else
        {
          v37 = -1;
        }

        if (v21)
        {
          v32 = v37 & (~v12 + a2);
          if (v21 <= 3)
          {
            v33 = v21;
          }

          else
          {
            v33 = 4;
          }

          bzero(a1, v21);
          if (v33 <= 2)
          {
            if (v33 == 1)
            {
              goto LABEL_54;
            }

            goto LABEL_81;
          }

LABEL_82:
          if (v33 == 3)
          {
            *a1 = v32;
            a1[2] = BYTE2(v32);
          }

          else
          {
            *a1 = v32;
          }
        }
      }
    }

    else
    {
      if ((a2 & 0x80000000) != 0)
      {
        v35 = a2 & 0x7FFFFFFF;
      }

      else
      {
        v35 = (a2 - 1);
      }

      *v34 = v35;
    }
  }

  else
  {
    if (v22 <= 3)
    {
      v31 = ~(-1 << (8 * v22));
    }

    else
    {
      v31 = -1;
    }

    if (v22)
    {
      v32 = v31 & (~v13 + a2);
      if (v22 <= 3)
      {
        v33 = v22;
      }

      else
      {
        v33 = 4;
      }

      bzero(a1, v22);
      if (v33 <= 2)
      {
        if (v33 == 1)
        {
LABEL_54:
          *a1 = v32;
          return;
        }

LABEL_81:
        *a1 = v32;
        return;
      }

      goto LABEL_82;
    }
  }
}

uint64_t sub_23B81FC40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = type metadata accessor for QuickLookPreviewModifier(0, v5, *(v4 + 24), a4);
  v7 = *(*(v6 - 8) + 80);
  v8 = (v7 + 32) & ~v7;
  v9 = *(*(v6 - 8) + 64);
  v10 = v4 + v8;

  v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E189150, &qword_23B822080) + 32);
  v12 = sub_23B8217EC();
  v13 = *(v12 - 8);
  if (!(*(v13 + 48))(v4 + v8 + v11, 1, v12))
  {
    (*(v13 + 8))(v10 + v11, v12);
  }

  (*(*(v5 - 8) + 8))(v10 + *(v6 + 36), v5);

  return MEMORY[0x2821FE8E8](v4, v8 + v9, v7 | 7);
}

uint64_t sub_23B81FDCC@<X0>(uint64_t a1@<X3>, char *a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  v6 = *(type metadata accessor for QuickLookPreviewModifier(0, v4, v5, a1) - 8);
  v7 = v2 + ((*(v6 + 80) + 32) & ~*(v6 + 80));

  return sub_23B81C988(v7, v4, v5, a2);
}

unint64_t sub_23B81FE58()
{
  result = qword_27E1893E0;
  if (!qword_27E1893E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E189158, &qword_23B822088);
    sub_23B820268(&qword_27E1893E8, MEMORY[0x277CC9278]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1893E0);
  }

  return result;
}

uint64_t sub_23B81FEF8(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

uint64_t sub_23B81FF40(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E189150, &qword_23B822080);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23B81FFB4@<X0>(uint64_t a1@<X3>, _BYTE *a2@<X8>)
{
  v4 = v2[4];
  v5 = v2[5];
  v6 = *(type metadata accessor for QuickLookPreviewModifier(0, v4, v5, a1) - 8);
  v7 = v2[2];
  v8 = v2 + ((*(v6 + 80) + 48) & ~*(v6 + 80));

  return sub_23B81BF4C(v7, v8, v4, v5, a2);
}

uint64_t objectdestroy_11Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 32);
  v6 = type metadata accessor for QuickLookPreviewModifier(0, v5, *(v4 + 40), a4);
  v7 = *(*(v6 - 8) + 80);
  v8 = (v7 + 48) & ~v7;
  v9 = *(*(v6 - 8) + 64);
  swift_unknownObjectRelease();
  v10 = v4 + v8;

  v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E189150, &qword_23B822080) + 32);
  v12 = sub_23B8217EC();
  v13 = *(v12 - 8);
  if (!(*(v13 + 48))(v4 + v8 + v11, 1, v12))
  {
    (*(v13 + 8))(v10 + v11, v12);
  }

  (*(*(v5 - 8) + 8))(v10 + *(v6 + 36), v5);

  return MEMORY[0x2821FE8E8](v4, v8 + v9, v7 | 7);
}

uint64_t sub_23B8201D8(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v4[4];
  v7 = v4[5];
  v8 = *(type metadata accessor for QuickLookPreviewModifier(0, v6, v7, a4) - 8);
  v9 = v4[2];
  v10 = v4[3];
  v11 = v4 + ((*(v8 + 80) + 48) & ~*(v8 + 80));

  return sub_23B81C224(a1, v9, v10, v11, v6, v7);
}

uint64_t sub_23B820268(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_23B8217EC();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_23B8202AC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

id sub_23B820314(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = MEMORY[0x277D85000];
  v7 = *MEMORY[0x277D85000];
  v8 = *MEMORY[0x277D85000] & *v2;
  *&v2[*((v7 & v5) + 0x70)] = 0;
  sub_23B8202AC(a1, &v2[*((*v6 & *v2) + 0x78)], &qword_27E189150, &qword_23B822080);
  v9 = *((*v6 & *v2) + 0x80);
  v10 = *((v7 & v5) + 0x58);
  (*(*(v10 - 8) + 16))(&v2[v9], a2, v10);
  v14[0] = *((v7 & v5) + 0x50);
  v14[1] = v10;
  v15 = *(v8 + 96);
  v11 = type metadata accessor for PreviewController.PreviewCoordinator(0, v14);
  v16.receiver = v2;
  v16.super_class = v11;
  v12 = objc_msgSendSuper2(&v16, sel_init);
  sub_23B8206D8(a1, &qword_27E189150, &qword_23B822080);
  return v12;
}

id sub_23B8204A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10[0] = a3;
  v10[1] = a4;
  v10[2] = a5;
  v10[3] = a6;
  v8 = objc_allocWithZone(type metadata accessor for PreviewController.PreviewCoordinator(0, v10));
  return sub_23B820314(a1, a2);
}

id sub_23B820500(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [objc_allocWithZone(MEMORY[0x277CDAA58]) init];
  [v5 setForceModalPresentation_];
  type metadata accessor for PreviewController(255, a2, a3, v6);
  swift_getWitnessTable();
  sub_23B8218EC();
  sub_23B8218DC();
  [v5 setDataSource_];

  sub_23B8218DC();
  [v5 setDelegate_];

  sub_23B8218DC();
  sub_23B81E030();

  return v5;
}

id sub_23B820620@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 currentPreviewItemIndex];
  *a2 = result;
  return result;
}

uint64_t sub_23B820668(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E189150, &qword_23B822080);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_23B8206D8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_23B82075C(uint64_t a1)
{
  v2 = *((*MEMORY[0x277D85000] & *v1) + 0x58);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](a1);
  v5 = &v8 - v4;
  sub_23B81D464(&v8 - v4);
  v6 = sub_23B821A5C();
  (*(v3 + 8))(v5, v2);
  return v6;
}

void (*sub_23B820868(void (*a1)(char *, uint64_t)))(char *, uint64_t)
{
  v39 = a1;
  v2 = *v1;
  v3 = *MEMORY[0x277D85000];
  v43 = sub_23B8217EC();
  v41 = *(v43 - 8);
  v4 = MEMORY[0x28223BE20](v43);
  v42 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v40 = &v35 - v7;
  v8 = *((v3 & v2) + 0x58);
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v6);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v35 - v13;
  v36 = *((v3 & v2) + 0x68);
  v35 = *(*(v36 + 8) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v38 = AssociatedTypeWitness;
  v44 = *(AssociatedTypeWitness - 8);
  v16 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v18 = &v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v35 - v19;
  sub_23B81D464(v14);
  sub_23B81D464(v12);
  sub_23B821A4C();
  v21 = *(v9 + 8);
  v21(v12, v8);
  v37 = v20;
  sub_23B821A2C();
  v22 = *(v44 + 8);
  v44 += 8;
  v39 = v22;
  v22(v18, AssociatedTypeWitness);
  v21(v14, v8);
  sub_23B81D464(v14);
  v23 = sub_23B821A7C();
  v24 = v40;
  v25 = v41;
  v26 = *(v41 + 16);
  v27 = v43;
  v26(v40);
  v23(v46, 0);
  v21(v14, v8);
  v28 = v42;
  v29 = v24;
  (v26)(v42, v24, v27);
  v30 = type metadata accessor for QLPreviewItemContainer(0);
  v31 = objc_allocWithZone(v30);
  v31[OBJC_IVAR____TtC18_QuickLook_SwiftUI22QLPreviewItemContainer_didStartAccessingSecurityScopeResource] = 0;
  (v26)(&v31[OBJC_IVAR____TtC18_QuickLook_SwiftUI22QLPreviewItemContainer_url], v28, v27);
  v45.receiver = v31;
  v45.super_class = v30;
  v32 = objc_msgSendSuper2(&v45, sel_init);
  v33 = *(v25 + 8);
  v33(v28, v27);
  v33(v29, v27);
  v39(v37, v38);
  return v32;
}

uint64_t sub_23B820CAC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E189158, &qword_23B822088);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v5 - v1;
  v3 = sub_23B8217EC();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  return sub_23B81D2DC(v2);
}

void sub_23B820DC0(uint64_t a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    sub_23B81E348(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_23B820E48(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = sub_23B8217EC();
  v9 = *(v8 - 8);
  v10 = v9;
  v11 = *(v9 + 84);
  if (v11)
  {
    v12 = v11 - 1;
  }

  else
  {
    v12 = 0;
  }

  if (v12 <= 0x7FFFFFFF)
  {
    v13 = 0x7FFFFFFF;
  }

  else
  {
    v13 = v12;
  }

  if (v13 <= v7)
  {
    v14 = v7;
  }

  else
  {
    v14 = v13;
  }

  v15 = *(v9 + 80);
  if (v11)
  {
    v16 = *(*(v8 - 8) + 64);
  }

  else
  {
    v16 = *(*(v8 - 8) + 64) + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v17 = v15 | 7;
  v18 = (v15 | 7) + *(v6 + 64);
  if (a2 <= v14)
  {
    goto LABEL_37;
  }

  v19 = v16 + ((v15 + 16) & ~v15) + (v18 & ~v17);
  v20 = 8 * v19;
  if (v19 <= 3)
  {
    v23 = ((a2 - v14 + ~(-1 << v20)) >> v20) + 1;
    if (HIWORD(v23))
    {
      v21 = *(a1 + v19);
      if (!v21)
      {
        goto LABEL_37;
      }

      goto LABEL_24;
    }

    if (v23 > 0xFF)
    {
      v21 = *(a1 + v19);
      if (!*(a1 + v19))
      {
        goto LABEL_37;
      }

      goto LABEL_24;
    }

    if (v23 < 2)
    {
LABEL_37:
      if (v7 >= v13)
      {
        v29 = *(v6 + 48);

        return v29(a1, v7, v5);
      }

      else
      {
        v27 = ((((a1 + v18) & ~v17) + 15) & 0xFFFFFFFFFFFFFFF8);
        if ((v12 & 0x80000000) != 0)
        {
          v30 = (*(v10 + 48))((v27 + v15 + 8) & ~v15);
          if (v30 >= 2)
          {
            return v30 - 1;
          }

          else
          {
            return 0;
          }
        }

        else
        {
          v28 = *v27;
          if (v28 >= 0xFFFFFFFF)
          {
            LODWORD(v28) = -1;
          }

          return (v28 + 1);
        }
      }
    }
  }

  v21 = *(a1 + v19);
  if (!*(a1 + v19))
  {
    goto LABEL_37;
  }

LABEL_24:
  v24 = (v21 - 1) << v20;
  if (v19 > 3)
  {
    v24 = 0;
  }

  if (v19)
  {
    if (v19 <= 3)
    {
      v25 = v19;
    }

    else
    {
      v25 = 4;
    }

    if (v25 > 2)
    {
      if (v25 == 3)
      {
        v26 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v26 = *a1;
      }
    }

    else if (v25 == 1)
    {
      v26 = *a1;
    }

    else
    {
      v26 = *a1;
    }
  }

  else
  {
    v26 = 0;
  }

  return v14 + (v26 | v24) + 1;
}

void sub_23B8210F4(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v37 = v8;
  v9 = *(v8 + 84);
  v10 = 0;
  v11 = *(sub_23B8217EC() - 8);
  v12 = v11;
  v13 = *(v11 + 84);
  v14 = *(v11 + 80);
  if (v13)
  {
    v15 = v13 - 1;
  }

  else
  {
    v15 = 0;
  }

  if (v15 <= 0x7FFFFFFF)
  {
    v16 = 0x7FFFFFFF;
  }

  else
  {
    v16 = v15;
  }

  if (v16 <= v9)
  {
    v17 = v9;
  }

  else
  {
    v17 = v16;
  }

  v18 = (v14 | 7) + *(v8 + 64);
  if (v13)
  {
    v19 = *(v11 + 64);
  }

  else
  {
    v19 = *(v11 + 64) + 1;
  }

  v20 = ((v14 + 16) & ~v14) + v19;
  v21 = (v18 & ~(v14 | 7)) + v20;
  if (a3 <= v17)
  {
    goto LABEL_27;
  }

  if (v21 > 3)
  {
    v10 = 1;
    if (v17 >= a2)
    {
      goto LABEL_16;
    }

LABEL_28:
    v24 = ~v17 + a2;
    if (v21 >= 4)
    {
      bzero(a1, v21);
      *a1 = v24;
      v25 = 1;
      if (v10 > 1)
      {
        goto LABEL_30;
      }

LABEL_66:
      if (v10)
      {
        a1[v21] = v25;
      }

      return;
    }

    v25 = (v24 >> (8 * v21)) + 1;
    if (v21)
    {
      v30 = v24 & ~(-1 << (8 * v21));
      bzero(a1, v21);
      if (v21 != 3)
      {
        if (v21 == 2)
        {
          *a1 = v30;
          if (v10 <= 1)
          {
            goto LABEL_66;
          }
        }

        else
        {
          *a1 = v24;
          if (v10 <= 1)
          {
            goto LABEL_66;
          }
        }

LABEL_30:
        if (v10 == 2)
        {
          *&a1[v21] = v25;
        }

        else
        {
          *&a1[v21] = v25;
        }

        return;
      }

      *a1 = v30;
      a1[2] = BYTE2(v30);
    }

    if (v10 <= 1)
    {
      goto LABEL_66;
    }

    goto LABEL_30;
  }

  v22 = ((a3 - v17 + ~(-1 << (8 * v21))) >> (8 * v21)) + 1;
  if (!HIWORD(v22))
  {
    if (v22 < 0x100)
    {
      v23 = 1;
    }

    else
    {
      v23 = 2;
    }

    if (v22 >= 2)
    {
      v10 = v23;
    }

    else
    {
      v10 = 0;
    }

LABEL_27:
    if (v17 < a2)
    {
      goto LABEL_28;
    }

    goto LABEL_16;
  }

  v10 = 4;
  if (v17 < a2)
  {
    goto LABEL_28;
  }

LABEL_16:
  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *&a1[v21] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_35;
    }

    *&a1[v21] = 0;
  }

  else if (v10)
  {
    a1[v21] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_35;
  }

  if (!a2)
  {
    return;
  }

LABEL_35:
  if (v9 >= v16)
  {
    v31 = *(v37 + 56);

    v31(a1, a2, v9, v7);
  }

  else
  {
    v26 = (&a1[v18] & ~(v14 | 7));
    if (v16 >= a2)
    {
      v32 = ((v26 + 15) & 0xFFFFFFFFFFFFFFF8);
      if ((v15 & 0x80000000) != 0)
      {
        v34 = v32 + v14 + 8;
        v26 = (v34 & ~v14);
        if (v15 >= a2)
        {
          v36 = *(v12 + 56);

          v36(v34 & ~v14, (a2 + 1));
        }

        else
        {
          if (v19 <= 3)
          {
            v35 = ~(-1 << (8 * v19));
          }

          else
          {
            v35 = -1;
          }

          if (v19)
          {
            v28 = v35 & (~v15 + a2);
            if (v19 <= 3)
            {
              v29 = v19;
            }

            else
            {
              v29 = 4;
            }

            bzero(v26, v19);
            if (v29 <= 2)
            {
              if (v29 == 1)
              {
                goto LABEL_46;
              }

              goto LABEL_81;
            }

            goto LABEL_82;
          }
        }
      }

      else
      {
        if ((a2 & 0x80000000) != 0)
        {
          v33 = a2 & 0x7FFFFFFF;
        }

        else
        {
          v33 = (a2 - 1);
        }

        *v32 = v33;
      }
    }

    else
    {
      if (v20 <= 3)
      {
        v27 = ~(-1 << (8 * v20));
      }

      else
      {
        v27 = -1;
      }

      if (v20)
      {
        v28 = v27 & (~v16 + a2);
        if (v20 <= 3)
        {
          v29 = ((v14 + 16) & ~v14) + v19;
        }

        else
        {
          v29 = 4;
        }

        bzero(v26, v20);
        if (v29 <= 2)
        {
          if (v29 == 1)
          {
LABEL_46:
            *v26 = v28;
            return;
          }

LABEL_81:
          *v26 = v28;
          return;
        }

LABEL_82:
        if (v29 == 3)
        {
          *v26 = v28;
          v26[2] = BYTE2(v28);
        }

        else
        {
          *v26 = v28;
        }
      }
    }
  }
}

uint64_t sub_23B821528(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  v5 = a1[1];
  type metadata accessor for QuickLookPreviewModifier(255, *a1, v5, a4);
  swift_getWitnessTable();
  sub_23B82183C();
  type metadata accessor for PreviewController(255, v4, v5, v6);
  sub_23B82182C();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getWitnessTable();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1893D8, &qword_23B8221F8);
  sub_23B82182C();
  swift_getOpaqueTypeConformance2();
  sub_23B81FEF8(&qword_27E1893F0, &qword_27E1893D8, &qword_23B8221F8, MEMORY[0x277CE0400]);
  return swift_getWitnessTable();
}