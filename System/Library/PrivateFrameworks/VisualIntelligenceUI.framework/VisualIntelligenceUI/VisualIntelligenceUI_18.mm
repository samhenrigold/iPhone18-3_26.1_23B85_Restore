uint64_t sub_21E10C928@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD998, &qword_21E158DB8);
  v5 = v4 - 8;
  MEMORY[0x28223BE20](v4);
  v7 = v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = v24 - v9;
  v11 = sub_21E141CC4();
  v13 = v12;
  v14 = sub_21E141CC4();
  v15 = &v10[*(v5 + 44)];
  *v15 = v14;
  v15[1] = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD9A0, &qword_21E158DC0);
  sub_21E10CB24(a1, (v15 + *(v17 + 44)));
  v18 = sub_21E141CC4();
  v20 = v19;
  v21 = (v15 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD9A8, &qword_21E158DC8) + 36));
  *v21 = v18;
  v21[1] = v20;
  *v10 = v11;
  *(v10 + 1) = v13;
  *(v10 + 2) = 0;
  v10[24] = 1;
  v25 = *(a1 + 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD8C0, &qword_21E158600);
  sub_21E141714();
  v22 = *(v24[1] + 48);

  sub_21DF236C0(v10, v7, &qword_27CEAD998, &qword_21E158DB8);
  sub_21DF236C0(v7, a2, &qword_27CEAD998, &qword_21E158DB8);
  *(a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD9B0, &qword_21E158DD0) + 48)) = v22;

  sub_21DF23614(v10, &qword_27CEAD998, &qword_21E158DB8);

  return sub_21DF23614(v7, &qword_27CEAD998, &qword_21E158DB8);
}

uint64_t sub_21E10CB24@<X0>(__int128 *a1@<X0>, uint64_t *a2@<X8>)
{
  v64 = a2;
  *&v3 = COERCE_DOUBLE(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD9B8, &qword_21E158DD8));
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v56 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD9C0, &qword_21E158DE0);
  MEMORY[0x28223BE20](v7 - 8);
  v66 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v56 - v10;
  v65 = sub_21E1414A4();
  v88 = *(a1 + 8);
  v68 = *(a1 + 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD8C0, &qword_21E158600);
  sub_21E141714();
  x = v75.origin.x;
  swift_getKeyPath();
  *&v68 = x;
  sub_21E10E7A8(&qword_280F69AD8, type metadata accessor for FocusSelectionGestureContext, &unk_21E158A1C);
  sub_21E13D3C4();

  v13 = *(*&x + OBJC_IVAR____TtC20VisualIntelligenceUI28FocusSelectionGestureContext__showObjectHighlight);

  v67 = v11;
  if (v13 == 1)
  {
    v14 = a1[3];
    v15 = a1[5];
    v72 = a1[4];
    v73 = v15;
    v74 = *(a1 + 12);
    v16 = a1[1];
    v68 = *a1;
    v69 = v16;
    v70 = a1[2];
    v71 = v14;
    v17 = *(a1 + 40);
    v75.origin = *(a1 + 24);
    v75.size = v17;
    v76.width = *(a1 + 7);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD990, &qword_21E158D38);
    sub_21E141714();
    v18 = v79;
    v19 = v80;
    v20 = v81;
    v21 = v82;
    v22 = *a1;
    swift_getKeyPath();
    v63 = *&OBJC_IVAR____TtC20VisualIntelligenceUI19FocusSelectionModel___observationRegistrar;
    v75.origin.x = v22;
    v62 = sub_21E10E7A8(&qword_280F6A5B0, type metadata accessor for FocusSelectionModel, &protocol conformance descriptor for FocusSelectionModel);
    sub_21E13D3C4();

    v23 = (*&v22 + OBJC_IVAR____TtC20VisualIntelligenceUI19FocusSelectionModel__contentsRect);
    swift_beginAccess();
    sub_21E10D3B8(v6, v18, v19, v20, v21, *v23, v23[1], v23[2], v23[3]);
    sub_21E13F6D4();
    sub_21E13F6B4();
    sub_21E141D74();
    v61 = *&v3;
    sub_21E141D04();

    sub_21E13F6F4();

    v24 = sub_21E13F684();

    *&v6[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD9D8, &qword_21E158DF8) + 36)] = v24;
    swift_getKeyPath();
    *&v68 = v22;
    sub_21E13D3C4();

    v25 = OBJC_IVAR____TtC20VisualIntelligenceUI19FocusSelectionModel__selectionCount;
    swift_beginAccess();
    v26 = *(*&v22 + v25);
    v11 = v67;
    *&v6[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD9E0, &qword_21E158E00) + 52)] = v26;
    v27 = swift_allocObject();
    v28 = a1[5];
    *(v27 + 80) = a1[4];
    *(v27 + 96) = v28;
    *(v27 + 112) = *(a1 + 12);
    v29 = a1[1];
    *(v27 + 16) = *a1;
    *(v27 + 32) = v29;
    v30 = a1[3];
    *(v27 + 48) = a1[2];
    *(v27 + 64) = v30;
    v31 = v61;
    v32 = &v6[*(*&v61 + 36)];
    *v32 = 0;
    *(v32 + 1) = 0;
    *(v32 + 2) = sub_21E111178;
    *(v32 + 3) = v27;
    sub_21DF3DE9C(v6, v11, &qword_27CEAD9B8, &qword_21E158DD8);
    (*(v4 + 56))(v11, 0, 1, COERCE_CGFLOAT(*&v31));
    sub_21DFA1C44(a1, &v68);
  }

  else
  {
    (*(v4 + 56))(v11, 1, 1, v3);
  }

  v68 = v88;
  sub_21E141714();
  v33 = *(*&v75.origin.x + 40);

  swift_getKeyPath();
  *&v68 = v33;
  sub_21E10E7A8(&qword_280F6A3E0, type metadata accessor for WandVFXOverlayModel, &unk_21E158A00);
  sub_21E13D3C4();

  v35 = *(v33 + 32);
  v34 = *(v33 + 40);
  sub_21E110D04(v35, v34);

  if (v35 >= 2)
  {

    v68 = v88;
    sub_21E141714();
    v63 = *(*&v75.origin.x + 40);

    v40 = a1[5];
    v85 = a1[4];
    v86 = v40;
    v87 = *(a1 + 12);
    v41 = a1[5];
    v68 = a1[4];
    v69 = v41;
    *&v70 = *(a1 + 12);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD990, &qword_21E158D38);
    sub_21E141714();
    CGRectGetWidth(v75);
    v68 = v85;
    v69 = v86;
    *&v70 = v87;
    sub_21E141714();
    CGRectGetHeight(v75);
    sub_21E141CC4();
    sub_21E13F664();
    v42 = LOBYTE(v80);
    v61 = v81;
    v62 = *&v79;
    v43 = LOBYTE(v82);
    v59 = v84;
    v60 = v83;
    v68 = v85;
    v69 = v86;
    *&v70 = v87;
    sub_21E141714();
    MinX = CGRectGetMinX(v75);
    v68 = v85;
    v69 = v86;
    *&v70 = v87;
    sub_21E141714();
    MinY = CGRectGetMinY(v75);
    LOBYTE(v68) = v42;
    LOBYTE(v75.origin.x) = v43;
    *&v37 = v42;
    *&v36 = v43;
  }

  else
  {
    sub_21E110DB4(v35, v34);
    v62 = 0;
    v63 = 0.0;
    v60 = 0;
    v61 = 0.0;
    v59 = 0;
    v36 = 0.0;
    v37 = 0.0;
    MinX = 0.0;
    MinY = 0.0;
  }

  v57 = v37;
  v58 = v36;
  v44 = v66;
  sub_21DF236C0(v11, v66, &qword_27CEAD9C0, &qword_21E158DE0);
  v45 = v64;
  *v64 = v65;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD9C8, &qword_21E158DE8);
  sub_21DF236C0(v44, v45 + *(v46 + 48), &qword_27CEAD9C0, &qword_21E158DE0);
  v47 = (v45 + *(v46 + 64));
  v48 = v62;
  v49 = v63;
  v75.origin.x = v63;
  *&v75.origin.y = v62;
  v75.size.width = v37;
  v50 = v61;
  v75.size.height = v61;
  v76.width = v36;
  v52 = v59;
  v51 = v60;
  *&v76.height = v60;
  *&v77.width = v59;
  v77.height = MinX;
  v78 = MinY;
  v47[4].width = MinY;
  v53 = v77;
  v47[2] = v76;
  v47[3] = v53;
  size = v75.size;
  *v47 = v75.origin;
  v47[1] = size;

  sub_21DF236C0(&v75, &v68, &qword_27CEAD9D0, &qword_21E158DF0);
  sub_21DF23614(v67, &qword_27CEAD9C0, &qword_21E158DE0);
  *&v68 = v49;
  *(&v68 + 1) = v48;
  *&v69 = v57;
  *(&v69 + 1) = v50;
  *&v70 = v58;
  *(&v70 + 1) = v51;
  *&v71 = v52;
  *(&v71 + 1) = MinX;
  *&v72 = MinY;
  sub_21DF23614(&v68, &qword_27CEAD9D0, &qword_21E158DF0);
  sub_21DF23614(v44, &qword_27CEAD9C0, &qword_21E158DE0);
}

uint64_t sub_21E10D3B8@<X0>(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>, double a6@<D4>, double a7@<D5>, double a8@<D6>, double a9@<D7>)
{
  v77 = a1;
  v18 = sub_21E140034();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v66 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD9E8, &qword_21E158E30);
  v72 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v69 = &v66 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD9F0, &qword_21E158E38);
  MEMORY[0x28223BE20](v24 - 8);
  v26 = (&v66 - v25);
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD9F8, &qword_21E158E40);
  MEMORY[0x28223BE20](v75);
  v76 = &v66 - v27;
  v28 = *(v9 + 80);
  v88[4] = *(v9 + 64);
  v88[5] = v28;
  v89 = *(v9 + 96);
  v29 = *(v9 + 16);
  v88[0] = *v9;
  v88[1] = v29;
  v30 = *(v9 + 48);
  v88[2] = *(v9 + 32);
  v88[3] = v30;
  *v26 = sub_21E141CC4();
  v26[1] = v31;
  v70 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEADA00, &qword_21E158E48) + 44);
  v32 = *&v88[0];
  swift_getKeyPath();
  v33 = OBJC_IVAR____TtC20VisualIntelligenceUI19FocusSelectionModel___observationRegistrar;
  *&v83 = v32;
  v73 = sub_21E10E7A8(&qword_280F6A5B0, type metadata accessor for FocusSelectionModel, &protocol conformance descriptor for FocusSelectionModel);
  v74 = v33;
  sub_21E13D3C4();

  v34 = *(v32 + OBJC_IVAR____TtC20VisualIntelligenceUI19FocusSelectionModel__imageEdges);
  if (v34)
  {
    v35 = swift_allocObject();
    v68 = &v66;
    v35[2] = a6;
    v35[3] = a7;
    v35[4] = a8;
    v35[5] = a9;
    v36 = MEMORY[0x28223BE20](v35);
    v64 = v34;
    v65 = v88;
    (*(v19 + 104))(v21, *MEMORY[0x277CE00F0], v18, v36);
    *&v67 = v34;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEADA18, &qword_21E158E88);
    v64 = sub_21DF23E5C(&unk_27CEADA20, &qword_27CEADA18, &qword_21E158E88, MEMORY[0x277CE14C0]);
    v37 = v69;
    sub_21E1417A4();

    v38 = v72;
    v39 = v70;
    (*(v72 + 32))(v26 + v70, v37, v22);
    v40 = 0;
    v41 = v38;
    v42 = v39;
  }

  else
  {
    v40 = 1;
    v41 = v72;
    v42 = v70;
  }

  v71 = v26;
  v43 = (*(v41 + 56))(v26 + v42, v40, 1, v22);
  MEMORY[0x28223BE20](v43);
  *(&v66 - 10) = a2;
  *(&v66 - 9) = a3;
  *(&v66 - 8) = a4;
  *(&v66 - 7) = a5;
  *(&v66 - 6) = a6;
  *(&v66 - 5) = a7;
  *(&v66 - 4) = a8;
  *(&v66 - 3) = a9;
  v64 = v88;
  sub_21E140BB4();
  v90 = *(v88 + 8);
  v83 = *(v88 + 8);
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD8C0, &qword_21E158600);
  sub_21E141714();
  v44 = v81;
  swift_getKeyPath();
  *&v83 = v44;
  v69 = sub_21E10E7A8(&qword_280F69AD8, type metadata accessor for FocusSelectionGestureContext, &unk_21E158A1C);
  sub_21E13D3C4();

  v45 = *(v44 + OBJC_IVAR____TtC20VisualIntelligenceUI28FocusSelectionGestureContext__shouldFillHighlight);

  v46 = 0.2;
  if (v45)
  {
    v46 = 1.0;
  }

  v81 = *&v84[5];
  v82[0] = *&v84[7];
  *&v82[1] = __PAIR64__(LODWORD(v46), v85);
  WORD4(v82[1]) = 256;
  v70 = sub_21E141484();
  swift_getKeyPath();
  *&v83 = v32;
  sub_21E13D3C4();

  v47 = OBJC_IVAR____TtC20VisualIntelligenceUI19FocusSelectionModel__contentsScale;
  swift_beginAccess();
  sub_21E13F4E4();
  LODWORD(v68) = LOBYTE(v82[1]);
  *(v80 + 7) = *&v86[27];
  *(&v80[1] + 7) = *&v86[35];
  *(&v80[2] + 7) = v87;
  v66 = v82[0];
  v67 = v81;
  sub_21DF236C0(&v81, &v83, &qword_27CEADA08, &qword_21E158E78);
  v48 = sub_21E141CC4();
  v50 = v49;
  v83 = v81;
  *v84 = v82[0];
  *(&v84[1] + 2) = *(v82 + 10);
  *&v86[3] = v81;
  *&v86[11] = *v84;
  *&v86[19] = *&v84[2];
  swift_getKeyPath();
  *&v79 = v32;
  sub_21E13D3C4();

  v51 = *(v32 + v47) * 20.0;
  v52 = sub_21E141D84();
  v79 = v90;
  sub_21E141714();
  v53 = v78;
  swift_getKeyPath();
  *&v79 = v53;
  sub_21E13D3C4();

  v54 = *(v53 + OBJC_IVAR____TtC20VisualIntelligenceUI28FocusSelectionGestureContext__shouldFillHighlight);

  v55 = v76;
  sub_21DF3DE9C(v71, v76, &qword_27CEAD9F0, &qword_21E158E38);
  v56 = v55 + *(v75 + 36);
  v57 = v66;
  *v56 = v67;
  *(v56 + 16) = v57;
  *(v56 + 32) = v68;
  v58 = v80[1];
  *(v56 + 33) = v80[0];
  *(v56 + 49) = v58;
  *(v56 + 64) = *(&v80[1] + 15);
  *(v56 + 80) = v70;
  *(v56 + 88) = 256;
  *(v56 + 90) = *v86;
  *(v56 + 106) = *&v86[8];
  *(v56 + 122) = *&v86[16];
  *(v56 + 136) = *&v86[23];
  *(v56 + 144) = v48;
  *(v56 + 152) = v50;
  *(v56 + 160) = v51;
  *(v56 + 168) = 0;
  *(v56 + 176) = v52;
  *(v56 + 184) = v54;
  v59 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEADA10, &qword_21E158E80) + 36);
  v60 = *MEMORY[0x277CE13B8];
  v61 = sub_21E141D94();
  v62 = v77;
  (*(*(v61 - 8) + 104))(v77 + v59, v60, v61);
  return sub_21DF3DE9C(v55, v62, &qword_27CEAD9F8, &qword_21E158E40);
}

void sub_21E10DC64(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD8C0, &qword_21E158600);
  sub_21E141714();
  v2 = *(v9 + 40);

  if (*(v2 + 48) == 1)
  {
    *(v2 + 48) = 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21E10E7A8(&qword_280F6A3E0, type metadata accessor for WandVFXOverlayModel, &unk_21E158A00);
    sub_21E13D3B4();
  }

  v4 = *a1;
  swift_getKeyPath();
  sub_21E10E7A8(&qword_280F6A5B0, type metadata accessor for FocusSelectionModel, &protocol conformance descriptor for FocusSelectionModel);
  sub_21E13D3C4();

  v5 = v4 + OBJC_IVAR____TtC20VisualIntelligenceUI19FocusSelectionModel__didHighlight;
  swift_beginAccess();
  v6 = *v5;
  if (*v5)
  {
    v7 = *(v5 + 8);

    v6(v8);
    sub_21DF1F1DC(v6, v7);
  }
}

uint64_t sub_21E10DE80(uint64_t a1)
{
  v1[7] = a1;
  v1[8] = sub_21E1423C4();
  v1[9] = sub_21E1423B4();
  v3 = sub_21E142364();
  v1[10] = v3;
  v1[11] = v2;

  return MEMORY[0x2822009F8](sub_21E10DF1C, v3, v2);
}

uint64_t sub_21E10DF1C()
{
  *(v0 + 16) = *(*(v0 + 56) + 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD8C0, &qword_21E158600);
  sub_21E141714();
  *(v0 + 96) = *(*(v0 + 32) + 40);

  *(v0 + 104) = sub_21E1423B4();
  v2 = sub_21E142364();
  *(v0 + 112) = v2;
  *(v0 + 120) = v1;

  return MEMORY[0x2822009F8](sub_21E10DFE8, v2, v1);
}

uint64_t sub_21E10DFE8()
{
  v1 = v0[12];
  swift_getKeyPath();
  v0[5] = v1;
  sub_21E10E7A8(&qword_280F6A3E0, type metadata accessor for WandVFXOverlayModel, &unk_21E158A00);
  sub_21E13D3C4();

  if (*(v1 + 32))
  {

    v2 = v0[10];
    v3 = v0[11];

    return MEMORY[0x2822009F8](sub_21E10E38C, v2, v3);
  }

  else
  {
    v4 = v0[12];
    swift_getKeyPath();
    v5 = swift_task_alloc();
    *(v5 + 16) = v4;
    *(v5 + 24) = xmmword_21E1585B0;
    v0[6] = v4;
    sub_21E13D3B4();

    v6 = swift_task_alloc();
    v0[16] = v6;
    *v6 = v0;
    v6[1] = sub_21E10E1E0;

    return sub_21E10B1D8();
  }
}

uint64_t sub_21E10E1E0(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 136) = a1;
  *(v4 + 144) = a2;

  v5 = *(v3 + 120);
  v6 = *(v3 + 112);

  return MEMORY[0x2822009F8](sub_21E10E308, v6, v5);
}

uint64_t sub_21E10E308()
{
  v1 = v0[17];
  v2 = v0[18];

  sub_21E10AB34(v1, v2);

  v3 = v0[10];
  v4 = v0[11];

  return MEMORY[0x2822009F8](sub_21E10E38C, v3, v4);
}

uint64_t sub_21E10E38C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21E10E3EC()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_21DF4AA04;

  return sub_21E10DE80(v0 + 16);
}

unint64_t sub_21E10E480()
{
  result = qword_280F68F48;
  if (!qword_280F68F48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEAD898, &qword_21E1585C8);
    sub_21DF23E5C(&qword_280F68D10, &unk_27CEAD8C8, &qword_21E158608, MEMORY[0x277CE11A8]);
    sub_21E10E7A8(&unk_280F68FF0, MEMORY[0x277CDD8B0], MEMORY[0x277CDD8A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F68F48);
  }

  return result;
}

unint64_t sub_21E10E568()
{
  result = qword_280F69D18[0];
  if (!qword_280F69D18[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280F69D18);
  }

  return result;
}

uint64_t sub_21E10E5BC(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD8C0, &qword_21E158600);
  sub_21E141714();

  v2 = sub_21E10B6AC();

  if ((v2 & 1) == 0)
  {
    sub_21E141714();
    v4 = *(v6 + 48);

    v5 = *(v4 + 16);

    swift_getKeyPath();
    sub_21E10E7A8(&qword_280F6B250, type metadata accessor for NewSaliencyModel, &protocol conformance descriptor for NewSaliencyModel);
    sub_21E13D3C4();

    if (!*(v5 + OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__presentedEntity))
    {
      swift_getKeyPath();
      sub_21E13D3C4();

      if ((*(v5 + OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__textInteractionInProgress) & 1) == 0)
      {
        sub_21E141D64();
        sub_21E13F864();
      }
    }
  }

  return result;
}

uint64_t sub_21E10E7A8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_21E10E7F0(uint64_t a1)
{
  swift_getKeyPath();
  sub_21E10E7A8(&qword_280F6B250, type metadata accessor for NewSaliencyModel, &protocol conformance descriptor for NewSaliencyModel);
  sub_21E13D3C4();

  v2 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__selectedEntity;
  swift_beginAccess();
  if (!*(a1 + v2) || (swift_getKeyPath(), sub_21E13D3C4(), , v3 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__showVI, swift_beginAccess(), v4 = *(a1 + v3), sub_21E141D64(), sub_21E13F864(), result = , v4 == 1))
  {
    swift_getKeyPath();
    sub_21E13D3C4();

    swift_getKeyPath();
    sub_21E13D3E4();

    v6 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__showVI;
    swift_beginAccess();
    *(a1 + v6) = (*(a1 + v6) & 1) == 0;
    swift_getKeyPath();
    sub_21E13D3D4();
  }

  return result;
}

uint64_t sub_21E10EA18(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  v3 = *a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD8C0, &qword_21E158600);
  sub_21E141714();
  v4 = (v3 ^ 1) & 1;
  if (v4 == *(v7 + OBJC_IVAR____TtC20VisualIntelligenceUI28FocusSelectionGestureContext__isEnabled))
  {
    *(v7 + OBJC_IVAR____TtC20VisualIntelligenceUI28FocusSelectionGestureContext__isEnabled) = v4;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21E10E7A8(&qword_280F69AD8, type metadata accessor for FocusSelectionGestureContext, &unk_21E158A1C);
    sub_21E13D3B4();
  }
}

uint64_t sub_21E10EB7C@<X0>(double *a1@<X8>)
{
  v2 = sub_21E140324();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21E140544();
  sub_21E13F724();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  result = (*(v3 + 8))(v5, v2);
  *a1 = v7;
  *(a1 + 1) = v9;
  *(a1 + 2) = v11;
  *(a1 + 3) = v13;
  return result;
}

uint64_t sub_21E10EC88(__int128 *a1, uint64_t *a2)
{
  v11 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD990, &qword_21E158D38);
  sub_21E141724();
  sub_21E141714();
  swift_getKeyPath();
  sub_21E10E7A8(&qword_280F6A5B0, type metadata accessor for FocusSelectionModel, &protocol conformance descriptor for FocusSelectionModel);
  sub_21E13D3C4();

  swift_beginAccess();
  ITKRectFromNormalizedSubrect();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  CGRectGetMidX(v11);
  v12.origin.x = v3;
  v12.origin.y = v5;
  v12.size.width = v7;
  v12.size.height = v9;
  CGRectGetMidX(v12);
  CGRectGetMidY(v11);
  v13.origin.x = v3;
  v13.origin.y = v5;
  v13.size.width = v7;
  v13.size.height = v9;
  CGRectGetMidY(v13);
  v14.origin.x = v3;
  v14.origin.y = v5;
  v14.size.width = v7;
  v14.size.height = v9;
  CGRectGetWidth(v14);
  v15.origin.x = v3;
  v15.origin.y = v5;
  v15.size.width = v7;
  v15.size.height = v9;
  CGRectGetHeight(v15);
  return sub_21E141724();
}

uint64_t sub_21E10EED4(uint64_t a1, double *a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD990, &qword_21E158D38);
  sub_21E141714();
  ITKRectFromNormalizedSubrect();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  CGRectGetMidX(v12);
  v13.origin.x = v4;
  v13.origin.y = v6;
  v13.size.width = v8;
  v13.size.height = v10;
  CGRectGetMidX(v13);
  CGRectGetMidY(v12);
  v14.origin.x = v4;
  v14.origin.y = v6;
  v14.size.width = v8;
  v14.size.height = v10;
  CGRectGetMidY(v14);
  v15.origin.x = v4;
  v15.origin.y = v6;
  v15.size.width = v8;
  v15.size.height = v10;
  CGRectGetWidth(v15);
  v16.origin.x = v4;
  v16.origin.y = v6;
  v16.size.width = v8;
  v16.size.height = v10;
  CGRectGetHeight(v16);
  return sub_21E141724();
}

unint64_t sub_21E10F068()
{
  result = qword_280F68F88;
  if (!qword_280F68F88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEAD8B0, &qword_21E1585E0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEAD8A8, &qword_21E1585D8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEAD8A0, &qword_21E1585D0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEAD890, &qword_21E1585C0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEAD898, &qword_21E1585C8);
    sub_21E10E480();
    sub_21E10E568();
    swift_getOpaqueTypeConformance2();
    sub_21DF23E5C(&unk_280F69000, &qword_27CEAD890, &qword_21E1585C0, MEMORY[0x277CDF728]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_21DF23E5C(&qword_280F68E20, &qword_27CEAD8D8, &qword_21E158660, MEMORY[0x277CE06A8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F68F88);
  }

  return result;
}

uint64_t sub_21E10F280(uint64_t *a1, double a2, double a3, double a4, double a5, double a6, double a7)
{
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CEADA50, &qword_21E14FAF0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = v20 - v17;
  v21 = 0x6867694C6B636162;
  v22 = 0xE900000000000074;
  sub_21E13FA04();
  v21 = 0x6764456567616D69;
  v22 = 0xEA00000000007365;
  sub_21E13FA04();
  v20[22] = v15;
  *&v20[23] = a4;
  *&v20[24] = a5;
  *&v20[25] = a6;
  *&v20[26] = a7;
  *&v20[27] = a2;
  *&v20[28] = a3;
  sub_21E13FB24();
  sub_21E13FB14();
  v20[12] = v18;
  *&v20[13] = a4;
  *&v20[14] = a5;
  *&v20[15] = a6;
  *&v20[16] = a7;
  *&v20[17] = a2;
  *&v20[18] = a3;
  sub_21E13FB24();
  sub_21E13FB14();
  v20[2] = v18;
  *&v20[3] = a4;
  *&v20[4] = a5;
  *&v20[5] = a6;
  *&v20[6] = a7;
  *&v20[7] = a2;
  *&v20[8] = a3;
  sub_21E13FB24();
  sub_21DF23614(v15, &unk_27CEADA50, &qword_21E14FAF0);
  return sub_21DF23614(v18, &unk_27CEADA50, &qword_21E14FAF0);
}

uint64_t sub_21E10F4B4(uint64_t *a1, uint64_t a2, double a3, double a4, double a5, double a6, double a7, double a8)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CEADA50, &qword_21E14FAF0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v21 - v10;
  v12 = sub_21E13FA14();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_21E13FA84();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v21 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21E13FAE4();
  sub_21E13FA74();
  sub_21E13FB04();
  (*(v17 + 8))(v19, v16);
  sub_21DF236C0(a2, v11, &unk_27CEADA50, &qword_21E14FAF0);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    return sub_21DF23614(v11, &unk_27CEADA50, &qword_21E14FAF0);
  }

  (*(v13 + 32))(v15, v11, v12);
  sub_21E142624();
  sub_21E13FA44();
  return (*(v13 + 8))(v15, v12);
}

uint64_t sub_21E10F770(uint64_t *a1, uint64_t a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CEADA50, &qword_21E14FAF0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v22 - v11;
  v13 = sub_21E13FA14();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_21E13FA84();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v22 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21E13FAE4();
  sub_21E13FA64();
  sub_21E13FB04();
  (*(v18 + 8))(v20, v17);
  sub_21DF236C0(a2, v12, &unk_27CEADA50, &qword_21E14FAF0);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    return sub_21DF23614(v12, &unk_27CEADA50, &qword_21E14FAF0);
  }

  (*(v14 + 32))(v16, v12, v13);
  sub_21E142624();
  sub_21E13FA44();
  return (*(v14 + 8))(v16, v13);
}

uint64_t sub_21E10FA38@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v44 = a1;
  v47 = a2;
  v2 = type metadata accessor for LighterRotatingContentLight.LoadingState(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v38 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6868, &qword_21E158E90);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v38 - v9;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEADA30, &qword_21E158E98);
  v43 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v45 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v38 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CEADA38, &unk_21E158EA0);
  v41 = *(v15 - 8);
  v16 = v41;
  v42 = v15;
  MEMORY[0x28223BE20](v15);
  v18 = &v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v38 - v20;
  v22 = v44;
  *v21 = sub_21E1415F4();
  *(v21 + 1) = 0x6764456567616D69;
  *(v21 + 2) = 0xEA00000000007365;
  v21[24] = 1;
  v40 = v21;
  *(v10 + 1) = 0x4046800000000000;
  type metadata accessor for LighterRotatingContentLight(0);
  v23 = sub_21E13F834();
  (*(*(v23 - 8) + 56))(v7, 1, 2, v23);
  sub_21E1111AC(v7, v4);
  sub_21E141704();
  sub_21E035544(v7);
  *v10 = 1;
  sub_21E111210(v10, v14);
  v24 = &v14[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6870, &unk_21E144BF0) + 36)];
  v38 = v14;
  v39 = v18;
  *v24 = 0x6867694C6B636162;
  *(v24 + 1) = 0xE900000000000074;
  v24[16] = 1;
  v25 = *(v16 + 16);
  v26 = v21;
  v27 = v42;
  v25(v18, v26, v42);
  v28 = v43;
  v29 = *(v43 + 16);
  v30 = v45;
  v31 = v14;
  v32 = v46;
  v29(v45, v31, v46);
  v33 = v47;
  v25(v47, v18, v27);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEADA48, &unk_21E158EB0);
  v29(&v33[*(v34 + 48)], v30, v32);
  v35 = *(v28 + 8);
  v35(v38, v32);
  v36 = *(v41 + 8);
  v36(v40, v27);
  v35(v30, v32);
  return (v36)(v39, v27);
}

uint64_t sub_21E10FE8C(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9, double a10)
{
  ITKRectFromNormalizedSubrect();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD8C0, &qword_21E158600);
  sub_21E141714();
  swift_getKeyPath();
  sub_21E10E7A8(&qword_280F69AD8, type metadata accessor for FocusSelectionGestureContext, &unk_21E158A1C);
  sub_21E13D3C4();

  v10 = *(v16 + 56);

  v11 = *(v10 + 16);
  if (v11)
  {
    ITKPointFromNormalizedRect();
    sub_21E140B44();
    v12 = v11 - 1;
    if (v12)
    {
      v13 = v10 + 72;
      do
      {
        ITKPointFromNormalizedRect();
        sub_21E140B64();
        v13 += 24;
        --v12;
      }

      while (v12);
    }
  }

  sub_21E141714();
  swift_getKeyPath();
  sub_21E13D3C4();

  v14 = *(v16 + OBJC_IVAR____TtC20VisualIntelligenceUI28FocusSelectionGestureContext__shouldFillHighlight);

  if (v14)
  {
    return sub_21E140B34();
  }

  return result;
}

uint64_t sub_21E1100B4(uint64_t a1)
{
  result = sub_21E13D304();
  if (v2 <= 0x3F)
  {
    result = sub_21E13D404();
    if (v3 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_21E110204(uint64_t a1)
{
  result = sub_21E13D404();
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

__n128 __swift_memcpy104_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 12);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_21E1102F0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_21E110338(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_20VisualIntelligenceUI19WandVFXOverlayModelC12LoadingStateO(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_21E1103B8(uint64_t *a1, unsigned int a2)
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

uint64_t sub_21E11040C(uint64_t result, unsigned int a2, unsigned int a3)
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

void *sub_21E110468(void *result, int a2)
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

unint64_t sub_21E1104BC()
{
  result = qword_280F6B538;
  if (!qword_280F6B538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F6B538);
  }

  return result;
}

uint64_t sub_21E110510@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21E10E7A8(&unk_280F6B040, type metadata accessor for OverlayViewModel, &protocol conformance descriptor for OverlayViewModel);
  sub_21E13D3C4();

  *a2 = *(v3 + 80);
  return result;
}

__n128 sub_21E1105E0@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21E10E7A8(&unk_280F6B040, type metadata accessor for OverlayViewModel, &protocol conformance descriptor for OverlayViewModel);
  sub_21E13D3C4();

  result = *(v3 + 88);
  v5 = *(v3 + 104);
  *a2 = result;
  *(a2 + 16) = v5;
  return result;
}

id sub_21E1106B8(uint64_t a1, unsigned __int8 *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CEAD960, &qword_21E158A90);
  sub_21E1408B4();
  v3 = [objc_allocWithZone(MEMORY[0x277D757F8]) initWithTarget:v6 action:sel_didPan_];

  v4 = v3;
  sub_21E1408B4();
  [v4 setDelegate_];

  [v4 setMaximumNumberOfTouches_];
  swift_getKeyPath();
  sub_21E10E7A8(&qword_280F69AD8, type metadata accessor for FocusSelectionGestureContext, &unk_21E158A1C);
  sub_21E13D3C4();

  [v4 setEnabled_];

  return v4;
}

uint64_t sub_21E11081C(void *a1, uint64_t a2, void *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CEAD960, &qword_21E158A90);
  sub_21E1408B4();
  [a1 setDelegate_];

  swift_getKeyPath();
  v15 = a3;
  sub_21E10E7A8(&qword_280F69AD8, type metadata accessor for FocusSelectionGestureContext, &unk_21E158A1C);
  sub_21E13D3C4();

  v5 = OBJC_IVAR____TtC20VisualIntelligenceUI28FocusSelectionGestureContext__isEnabled;
  [a1 setEnabled_];
  swift_getKeyPath();
  v15 = a3;
  sub_21E13D3C4();

  if ((*(a3 + v5) & 1) == 0)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v15 = a3;
    sub_21E13D3B4();

    if (*(a3 + OBJC_IVAR____TtC20VisualIntelligenceUI28FocusSelectionGestureContext__showObjectHighlight) == 1)
    {
      *(a3 + OBJC_IVAR____TtC20VisualIntelligenceUI28FocusSelectionGestureContext__showObjectHighlight) = 1;
    }

    else
    {
      v7 = swift_getKeyPath();
      MEMORY[0x28223BE20](v7);
      v15 = a3;
      sub_21E13D3B4();
    }
  }

  v8 = a3[5];
  swift_getKeyPath();
  v15 = a3;
  sub_21E13D3C4();

  v9 = (*(a3 + v5) ^ 1) & 1;
  if (v9 == v8[49])
  {
    v8[49] = v9;
  }

  else
  {
    v10 = swift_getKeyPath();
    v14[1] = v14;
    MEMORY[0x28223BE20](v10);
    v15 = v8;
    sub_21E10E7A8(&qword_280F6A3E0, type metadata accessor for WandVFXOverlayModel, &unk_21E158A00);
    sub_21E13D3B4();
  }

  swift_getKeyPath();
  v15 = a3;
  sub_21E13D3C4();

  v12 = (*(a3 + v5) ^ 1) & 1;
  if (v12 == v8[48])
  {
    v8[48] = v12;
  }

  else
  {
    v13 = swift_getKeyPath();
    MEMORY[0x28223BE20](v13);
    v15 = v8;
    sub_21E10E7A8(&qword_280F6A3E0, type metadata accessor for WandVFXOverlayModel, &unk_21E158A00);
    sub_21E13D3B4();
  }

  return result;
}

id sub_21E110D04(id result, void *a2)
{
  if (result >= 2)
  {
    v3 = result;

    return a2;
  }

  return result;
}

unint64_t sub_21E110D48()
{
  result = qword_280F6B540;
  if (!qword_280F6B540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F6B540);
  }

  return result;
}

void sub_21E110DB4(void *a1, void *a2)
{
  if (a1 >= 2)
  {
  }
}

uint64_t sub_21E110E30(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_21DF8DAF8;

  return sub_21E109E00(a1, v4, v5, v7, v6);
}

uint64_t sub_21E110EF0()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtCV20VisualIntelligenceUI21FocusSelectionGesture11Coordinator_focusModel);
  swift_getKeyPath();
  sub_21E10E7A8(&qword_280F6A5B0, type metadata accessor for FocusSelectionModel, &protocol conformance descriptor for FocusSelectionModel);
  sub_21E13D3C4();

  v3 = OBJC_IVAR____TtC20VisualIntelligenceUI19FocusSelectionModel__active;
  swift_beginAccess();
  if (*(v2 + v3) == 1)
  {
    v4 = *(*(v1 + OBJC_IVAR____TtCV20VisualIntelligenceUI21FocusSelectionGesture11Coordinator_gestureContext) + 48);
    swift_getKeyPath();
    sub_21E10E7A8(&unk_280F6B040, type metadata accessor for OverlayViewModel, &protocol conformance descriptor for OverlayViewModel);

    sub_21E13D3C4();

    v5 = *(v4 + 80);

    v6 = v5 ^ 1;
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t sub_21E11107C()
{
  *(*(v0 + 16) + 16) = *(v0 + 24);
}

void sub_21E1110D4()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = v0[4];
  v4 = *(v2 + 32);
  v5 = *(v2 + 40);
  *(v2 + 32) = v1;
  *(v2 + 40) = v3;
  sub_21E110D04(v1, v3);
  sub_21E110DB4(v4, v5);
}

uint64_t objectdestroyTm_28()
{

  return swift_deallocObject();
}

uint64_t sub_21E1111AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LighterRotatingContentLight.LoadingState(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21E111210(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6868, &qword_21E158E90);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21E1113C0@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v6 = v1;
  sub_21E11782C(&qword_280F6BEE0, type metadata accessor for NewBarModel, &protocol conformance descriptor for NewBarModel);
  sub_21E13D3C4();

  v3 = OBJC_IVAR____TtC20VisualIntelligenceUI11NewBarModel__entryPoint;
  swift_beginAccess();
  v4 = sub_21E13D834();
  return (*(*(v4 - 8) + 16))(a1, v6 + v3, v4);
}

void sub_21E111508(char a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = a1 & 1;
  v6 = *a2;
  swift_beginAccess();
  if (*(v4 + v6) == v5)
  {
    *(v4 + v6) = v5;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21E11782C(&qword_280F6BEE0, type metadata accessor for NewBarModel, &protocol conformance descriptor for NewBarModel);
    sub_21E13D3B4();
  }
}

uint64_t NewBarModel.ask.getter()
{
  swift_getKeyPath();
  sub_21E11782C(&qword_280F6BEE0, type metadata accessor for NewBarModel, &protocol conformance descriptor for NewBarModel);
  sub_21E13D3C4();
}

uint64_t NewBarModel.items.getter()
{
  swift_getKeyPath();
  sub_21E11782C(&qword_280F6BEE0, type metadata accessor for NewBarModel, &protocol conformance descriptor for NewBarModel);
  sub_21E13D3C4();

  swift_beginAccess();
}

uint64_t sub_21E1117B8(uint64_t a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_21E11782C(&qword_280F6BEE0, type metadata accessor for NewBarModel, &protocol conformance descriptor for NewBarModel);
  sub_21E13D3C4();

  v4 = *a2;
  swift_beginAccess();
  return *(v2 + v4);
}

uint64_t NewBarModel.Item.id.getter()
{
  v1 = sub_21E13D344();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = v0[1];
  (*(v2 + 16))(v5, *v0 + OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel_id, v1, v3);
  v7 = sub_21E13D314();
  v9 = v8;
  (*(v2 + 8))(v5, v1);
  v13[0] = v7;
  v13[1] = v9;
  MEMORY[0x223D52A60](45, 0xE100000000000000);
  v10 = *(v6 + 16);
  v11 = *(v6 + 24);

  MEMORY[0x223D52A60](v10, v11);

  return v13[0];
}

uint64_t sub_21E1119A8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_21E13D834();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC20VisualIntelligenceUI11NewBarModel__entryPoint;
  swift_beginAccess();
  v9 = *(v5 + 16);
  v9(v7, v2 + v8, v4);
  sub_21E11782C(&qword_280F690E0, MEMORY[0x277D78DD0], MEMORY[0x277D78DD8]);
  v15[0] = a1;
  LOBYTE(a1) = sub_21E142074();
  v10 = *(v5 + 8);
  v10(v7, v4);
  if (a1)
  {
    v9(v7, v15[0], v4);
    swift_beginAccess();
    (*(v5 + 24))(v2 + v8, v7, v4);
    swift_endAccess();
    sub_21E1148E4(v11);
    v10(v7, v4);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v13 = v15[0];
    v15[-2] = v2;
    v15[-1] = v13;
    v15[1] = v2;
    sub_21E11782C(&qword_280F6BEE0, type metadata accessor for NewBarModel, &protocol conformance descriptor for NewBarModel);
    sub_21E13D3B4();
  }

  return (v10)(v15[0], v4);
}

void sub_21E111C64(char a1)
{
  v2 = v1;
  LOBYTE(v3) = a1;
  v4 = sub_21E13D834();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F69E50 != -1)
  {
LABEL_32:
    swift_once();
  }

  if (byte_280F6FD20 == 1)
  {
    swift_getKeyPath();
    v8 = OBJC_IVAR____TtC20VisualIntelligenceUI11NewBarModel___observationRegistrar;
    v37 = v2;
    v9 = sub_21E11782C(&qword_280F6BEE0, type metadata accessor for NewBarModel, &protocol conformance descriptor for NewBarModel);
    sub_21E13D3C4();

    v10 = OBJC_IVAR____TtC20VisualIntelligenceUI11NewBarModel__entryPoint;
    swift_beginAccess();
    (*(v5 + 16))(v7, v2 + v10, v4);
    LOBYTE(v10) = sub_21E13D814();
    (*(v5 + 8))(v7, v4);
    if (v10)
    {
      sub_21E13DE14();
      if (sub_21E13DE04() & 1) != 0 && (v3)
      {
        swift_getKeyPath();
        v36 = v2;
        sub_21E13D3C4();

        v11 = OBJC_IVAR____TtC20VisualIntelligenceUI11NewBarModel__items;
        swift_beginAccess();
        v33 = v11;
        v12 = *(v2 + v11);
        v5 = *(v12 + 16);
        v4 = 0x27CEA6000uLL;
        if (v5)
        {
          v31 = v9;
          v32 = v8;

          v3 = 0;
          v13 = (v12 + 40);
          while (1)
          {
            if (v3 >= *(v12 + 16))
            {
              __break(1u);
              goto LABEL_32;
            }

            v7 = *v13;
            v14 = qword_27CEA6808;

            if (v14 != -1)
            {
              swift_once();
            }

            v15 = qword_27CEB7738;

            if (v7 == v15)
            {
              break;
            }

            ++v3;
            v13 += 2;
            if (v5 == v3)
            {

              goto LABEL_20;
            }
          }

          swift_getKeyPath();
          v35 = v2;
          sub_21E13D3C4();

          v16 = v33;
          if (v3 >= *(*(v2 + v33) + 16) - 1)
          {
            return;
          }

          swift_getKeyPath();
          v35 = v2;
          sub_21E13D3C4();

          v35 = v2;
          swift_getKeyPath();
          sub_21E13D3E4();

          swift_beginAccess();
          sub_21E001CD4(v3, &v34);
          swift_endAccess();
          v35 = v2;
          swift_getKeyPath();
          sub_21E13D3D4();

          v30 = v34;
          swift_getKeyPath();
          v35 = v2;

          sub_21E13D3C4();

          v35 = v2;
          swift_getKeyPath();
          sub_21E13D3E4();

          swift_beginAccess();
          v17 = *(v2 + v16);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *(v2 + v16) = v17;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v17 = sub_21E06ABFC(0, *(v17 + 2) + 1, 1, v17);
            *(v2 + v16) = v17;
          }

          v20 = *(v17 + 2);
          v19 = *(v17 + 3);
          if (v20 >= v19 >> 1)
          {
            v17 = sub_21E06ABFC((v19 > 1), v20 + 1, 1, v17);
          }

          *(v17 + 2) = v20 + 1;
          *&v17[16 * v20 + 32] = v30;
          *(v2 + v16) = v17;
          swift_endAccess();
          v35 = v2;
          swift_getKeyPath();
          sub_21E13D3D4();
        }

        else
        {
LABEL_20:
          if (qword_27CEA6800 != -1)
          {
            swift_once();
          }

          v21 = qword_27CEB7730;
          v22 = qword_27CEA6808;

          v23 = v33;
          if (v22 != -1)
          {
            swift_once();
          }

          v24 = qword_27CEB7738;
          swift_getKeyPath();
          v35 = v2;

          sub_21E13D3C4();

          v35 = v2;
          swift_getKeyPath();
          sub_21E13D3E4();

          swift_beginAccess();
          v25 = *(v2 + v23);
          v26 = swift_isUniquelyReferenced_nonNull_native();
          *(v2 + v23) = v25;
          if ((v26 & 1) == 0)
          {
            v25 = sub_21E06ABFC(0, *(v25 + 2) + 1, 1, v25);
            *(v2 + v23) = v25;
          }

          v28 = *(v25 + 2);
          v27 = *(v25 + 3);
          if (v28 >= v27 >> 1)
          {
            v25 = sub_21E06ABFC((v27 > 1), v28 + 1, 1, v25);
          }

          *(v25 + 2) = v28 + 1;
          v29 = &v25[16 * v28];
          *(v29 + 4) = v21;
          *(v29 + 5) = v24;
          *(v2 + v23) = v25;
          swift_endAccess();
          v35 = v2;
          swift_getKeyPath();
          sub_21E13D3D4();
        }
      }
    }
  }
}

uint64_t NewBarModel.__allocating_init(fullscreenEntity:)(uint64_t a1)
{
  swift_allocObject();
  v2 = sub_21E117318(a1);

  return v2;
}

void NewBarModel.apply(entity:isSelected:isHighlighted:)(uint64_t a1, int a2, int a3)
{
  LODWORD(v252) = a3;
  LODWORD(v253) = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6D48, &unk_21E148070);
  MEMORY[0x28223BE20](v5 - 8);
  v230 = &v195 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v235 = &v195 - v8;
  MEMORY[0x28223BE20](v9);
  v220 = &v195 - v10;
  v241 = sub_21E13EEB4();
  v228 = *(v241 - 8);
  MEMORY[0x28223BE20](v241);
  v12 = &v195 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v210 = &v195 - v14;
  MEMORY[0x28223BE20](v15);
  v209 = &v195 - v16;
  MEMORY[0x28223BE20](v17);
  v234 = &v195 - v18;
  MEMORY[0x28223BE20](v19);
  v233 = &v195 - v20;
  MEMORY[0x28223BE20](v21);
  v232 = &v195 - v22;
  MEMORY[0x28223BE20](v23);
  v205 = &v195 - v24;
  MEMORY[0x28223BE20](v25);
  v204 = &v195 - v26;
  MEMORY[0x28223BE20](v27);
  v203 = &v195 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6D98, &qword_21E145DC0);
  MEMORY[0x28223BE20](v29 - 8);
  v207 = &v195 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v223 = &v195 - v32;
  MEMORY[0x28223BE20](v33);
  v35 = &v195 - v34;
  MEMORY[0x28223BE20](v36);
  v221 = &v195 - v37;
  v38 = sub_21E13D994();
  v229 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v206 = &v195 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v40);
  v199 = &v195 - v41;
  MEMORY[0x28223BE20](v42);
  v198 = &v195 - v43;
  MEMORY[0x28223BE20](v44);
  v224 = &v195 - v45;
  MEMORY[0x28223BE20](v46);
  v231 = &v195 - v47;
  MEMORY[0x28223BE20](v48);
  v239 = (&v195 - v49);
  MEMORY[0x28223BE20](v50);
  v208 = (&v195 - v51);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA77B8, &qword_21E1557F0);
  MEMORY[0x28223BE20](v52 - 8);
  v54 = &v195 - v53;
  v258 = sub_21E13F274();
  v244 = *(v258 - 1);
  MEMORY[0x28223BE20](v258);
  v255 = &v195 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v56);
  v259 = &v195 - v57;
  v257 = sub_21E13D344();
  v256 = *(v257 - 8);
  MEMORY[0x28223BE20](v257);
  v254 = &v195 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v59 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel___observationRegistrar;
  v264 = a1;
  v60 = sub_21E11782C(&qword_280F6B6A0, type metadata accessor for NewEntityModel, &protocol conformance descriptor for NewEntityModel);
  v213 = v59;
  v214 = v60;
  sub_21E13D3C4();

  v61 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__actions;
  swift_beginAccess();
  v246 = a1;
  v212 = v61;
  v62 = *(a1 + v61);
  if (v62 >> 62)
  {
    goto LABEL_61;
  }

  v63 = *((v62 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v64 = MEMORY[0x277D84F90];
  v211 = v12;
  v249 = v35;
  v245 = v38;
  if (v63)
  {
    v263 = MEMORY[0x277D84F90];
    v65 = v63 & ~(v63 >> 63);

    sub_21DF5C3A4(0, v65, 0);
    if (v63 < 0)
    {
      __break(1u);
      goto LABEL_63;
    }

    v247 = v54;
    v66 = 0;
    v64 = v263;
    do
    {
      if ((v62 & 0xC000000000000001) != 0)
      {
        v67 = MEMORY[0x223D530F0](v66, v62);
      }

      else
      {
        v67 = *(v62 + 8 * v66 + 32);
      }

      v263 = v64;
      v69 = *(v64 + 16);
      v68 = *(v64 + 24);
      v70 = v246;

      if (v69 >= v68 >> 1)
      {
        sub_21DF5C3A4((v68 > 1), v69 + 1, 1);
        v64 = v263;
      }

      ++v66;
      *(v64 + 16) = v69 + 1;
      v71 = v64 + 16 * v69;
      *(v71 + 32) = v70;
      *(v71 + 40) = v67;
    }

    while (v63 != v66);

    v54 = v247;
  }

  v265 = v64;
  v3 = *(v201 + OBJC_IVAR____TtC20VisualIntelligenceUI11NewBarModel_fullscreenEntity);
  v72 = v256;
  v73 = v254;
  v74 = v257;
  v256[2](v254, v3 + OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel_id, v257);
  sub_21E11782C(&qword_280F6C088, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
  v75 = sub_21E142074();
  (v72[1])(v73, v74);
  v35 = v258;
  if (v75 & 1) != 0 || (v253 & 1) != 0 || (v252)
  {
    v76 = v64;
LABEL_136:
    NewBarModel.items.setter(v76);
    return;
  }

  swift_getKeyPath();
  v263 = v3;
  v238 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel___observationRegistrar;
  sub_21E13D3C4();

  v77 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__textAction;
  swift_beginAccess();
  v78 = *(v3 + v77);
  v222 = v3;
  if (!v78)
  {
LABEL_67:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEADA60, &qword_21E158FB8);
    v114 = v229;
    v115 = *(v229 + 72);
    v116 = (*(v229 + 80) + 32) & ~*(v229 + 80);
    v117 = swift_allocObject();
    *(v117 + 16) = xmmword_21E155250;
    v118 = *(v114 + 104);
    v118(v117 + v116, *MEMORY[0x277D78F60], v245);
    v118(v117 + v116 + v115, *MEMORY[0x277D78F98], v245);
    v118(v117 + v116 + 2 * v115, *MEMORY[0x277D78F20], v245);
    v118(v117 + v116 + 3 * v115, *MEMORY[0x277D78F88], v245);
    v118(v117 + v116 + 4 * v115, *MEMORY[0x277D78F40], v245);
    v119 = v208;
    *v208 = 0;
    v119[1] = 0xE000000000000000;
    v119[2] = 0;
    v119[3] = 0xE000000000000000;
    v118(v119, *MEMORY[0x277D78F30], v245);
    sub_21E13D974();
    v120 = *(v114 + 8);
    v120(v119, v245);
    v121 = v239;
    v118(v239, *MEMORY[0x277D78FA0], v245);
    v122 = v245;
    sub_21E13D974();
    v237 = v114 + 8;
    v236 = v120;
    v120(v121, v122);
    v200 = sub_21E0EBF34(v117);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    swift_getKeyPath();
    v262 = v3;
    sub_21E13D3C4();

    v123 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__actions;
    swift_beginAccess();
    KeyPath = *(v3 + v123);
    if (KeyPath >> 62)
    {
      goto LABEL_141;
    }

    v217 = KeyPath & 0xFFFFFFFFFFFFFF8;
    v125 = *((KeyPath & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_69:
    v126 = v235;
    v127 = v221;

    v196 = KeyPath;
    if (v125)
    {
      v128 = 0;
      v216 = KeyPath & 0xC000000000000001;
      v215 = KeyPath + 32;
      v258 = (v229 + 56);
      v240 = (v228 + 32);
      v239 = (v228 + 88);
      LODWORD(v238) = *MEMORY[0x277D79680];
      v226 = (v228 + 8);
      v225 = (v228 + 96);
      v242 = (v229 + 32);
      v243 = (v229 + 48);
      v197 = MEMORY[0x277D84F90];
      v202 = v125;
      while (1)
      {
        if (v216)
        {
          v253 = MEMORY[0x223D530F0](v128, v196);
          v86 = __OFADD__(v128++, 1);
          if (v86)
          {
            goto LABEL_139;
          }
        }

        else
        {
          if (v128 >= *(v217 + 16))
          {
            goto LABEL_140;
          }

          v253 = *(v215 + 8 * v128);

          v86 = __OFADD__(v128++, 1);
          if (v86)
          {
            goto LABEL_139;
          }
        }

        v129 = v122;
        swift_getKeyPath();
        v130 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewActionModel___observationRegistrar;
        v131 = v253;
        v261 = v253;
        v132 = sub_21E11782C(&qword_280F6B830, type metadata accessor for NewActionModel, &protocol conformance descriptor for NewActionModel);
        v247 = v130;
        v259 = v132;
        sub_21E13D3C4();

        v133 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewActionModel__pill;
        swift_beginAccess();
        v229 = v133;
        v134 = v220;
        sub_21DF236C0(v131 + v133, v220, &qword_27CEA6D48, &unk_21E148070);
        v135 = sub_21E13EEE4();
        v136 = *(v135 - 8);
        v137 = *(v136 + 48);
        v257 = v135;
        v256 = v137;
        v255 = (v136 + 48);
        if ((v137)(v134, 1))
        {
          sub_21DF23614(v134, &qword_27CEA6D48, &unk_21E148070);
          v254 = *v258;
          (v254)(v127, 1, 1, v129);
        }

        else
        {
          v138 = v204;
          sub_21E13EEC4();
          sub_21DF23614(v134, &qword_27CEA6D48, &unk_21E148070);
          v139 = *v240;
          v140 = v203;
          v141 = v241;
          (*v240)(v203, v138, v241);
          v142 = v205;
          v139(v205, v140, v141);
          v143 = v142;
          v144 = (*v239)(v142, v141);
          if (v144 == v238)
          {
            (*v225)(v142, v141);
            v127 = v221;
            v129 = v245;
            (*v242)(v221, v143, v245);
            v254 = *v258;
            (v254)(v127, 0, 1, v129);
          }

          else
          {
            v127 = v221;
            v129 = v245;
            v254 = *v258;
            (v254)(v221, 1, 1, v245);
            (*v226)(v143, v141);
          }

          if ((*v243)(v127, 1, v129) != 1)
          {
            sub_21DF23614(v127, &qword_27CEA6D98, &qword_21E145DC0);
            goto LABEL_85;
          }
        }

        sub_21DF23614(v127, &qword_27CEA6D98, &qword_21E145DC0);
        KeyPath = swift_getKeyPath();
        v145 = v253;
        v261 = v253;
        sub_21E13D3C4();

        if (*(v145 + OBJC_IVAR____TtC20VisualIntelligenceUI14NewActionModel__specialActionType) == 1)
        {

          v122 = v129;
          goto LABEL_72;
        }

LABEL_85:
        KeyPath = swift_getKeyPath();
        v146 = v246;
        v261 = v246;
        sub_21E13D3C4();

        v147 = *(v146 + v212);
        v219 = v128;
        if (v147 >> 62)
        {
          v148 = sub_21E1427B4();
        }

        else
        {
          v148 = *((v147 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v122 = v129;
        v244 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewActionModel__specialActionType;

        if (v148)
        {
          v149 = 0;
          v252 = v147 & 0xC000000000000001;
          v251 = v147 & 0xFFFFFFFFFFFFFF8;
          v250 = v147;
          v248 = v148;
          while (1)
          {
            if (v252)
            {
              KeyPath = MEMORY[0x223D530F0](v149, v147);
              v150 = v149 + 1;
              if (__OFADD__(v149, 1))
              {
                goto LABEL_137;
              }
            }

            else
            {
              if (v149 >= *(v251 + 16))
              {
                goto LABEL_138;
              }

              KeyPath = v147[v149 + 4];

              v150 = v149 + 1;
              if (__OFADD__(v149, 1))
              {
LABEL_137:
                __break(1u);
LABEL_138:
                __break(1u);
LABEL_139:
                __break(1u);
LABEL_140:
                __break(1u);
LABEL_141:
                v217 = KeyPath & 0xFFFFFFFFFFFFFF8;
                v125 = sub_21E1427B4();
                goto LABEL_69;
              }
            }

            swift_getKeyPath();
            v261 = KeyPath;
            sub_21E13D3C4();

            v151 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewActionModel__pill;
            swift_beginAccess();
            sub_21DF236C0(KeyPath + v151, v126, &qword_27CEA6D48, &unk_21E148070);
            if ((v256)(v126, 1, v257))
            {
              break;
            }

            v157 = v233;
            sub_21E13EEC4();
            sub_21DF23614(v126, &qword_27CEA6D48, &unk_21E148070);
            v158 = *v240;
            v159 = v232;
            v160 = v241;
            (*v240)(v232, v157, v241);
            v161 = v234;
            v158(v234, v159, v160);
            v162 = *v239;
            v163 = (*v239)(v161, v160);
            if (v163 == v238)
            {
              (*v225)(v161, v160);
              v164 = v249;
              v122 = v245;
              (*v242)(v249, v161, v245);
              (v254)(v164, 0, 1, v122);
            }

            else
            {
              v165 = v161;
              v166 = v249;
              v122 = v245;
              (v254)(v249, 1, 1, v245);
              v167 = v165;
              v164 = v166;
              (*v226)(v167, v160);
            }

            v168 = *v243;
            if ((*v243)(v164, 1, v122) == 1)
            {
              v155 = v164;
              v152 = v235;
              v154 = v122;
LABEL_95:
              sub_21DF23614(v155, &qword_27CEA6D98, &qword_21E145DC0);
              swift_getKeyPath();
              v261 = KeyPath;
              sub_21E13D3C4();

              if ((*(KeyPath + OBJC_IVAR____TtC20VisualIntelligenceUI14NewActionModel__specialActionType) & 1) == 0)
              {
                swift_getKeyPath();
                v156 = v253;
                v261 = v253;
                sub_21E13D3C4();

                if ((*(v156 + v244) & 1) == 0)
                {

                  v122 = v154;
                  v126 = v152;
LABEL_122:

                  v127 = v221;
                  v125 = v202;
                  v128 = v219;
                  goto LABEL_72;
                }
              }

              v122 = v154;
              v126 = v152;
              goto LABEL_98;
            }

            v227 = v162;
            v228 = v168;
            v169 = v224;
            sub_21E13D974();
            v236(v164, v122);
            v170 = *v242;
            (*v242)(v231, v169, v122);
            swift_getKeyPath();
            v171 = v253;
            v261 = v253;
            sub_21E13D3C4();

            v172 = v230;
            sub_21DF236C0(v171 + v229, v230, &qword_27CEA6D48, &unk_21E148070);
            if ((v256)(v172, 1, v257))
            {
              sub_21DF23614(v172, &qword_27CEA6D48, &unk_21E148070);
              v153 = v223;
              (v254)(v223, 1, 1, v122);
              v152 = v235;
              goto LABEL_112;
            }

            v218 = v170;
            v173 = v210;
            sub_21E13EEC4();
            sub_21DF23614(v230, &qword_27CEA6D48, &unk_21E148070);
            v174 = v209;
            v175 = v241;
            v158(v209, v173, v241);
            v176 = v211;
            v158(v211, v174, v175);
            v177 = v227(v176, v175);
            if (v177 == v238)
            {
              (*v225)(v176, v175);
              v153 = v223;
              v122 = v245;
              v218(v223, v176, v245);
              (v254)(v153, 0, 1, v122);
            }

            else
            {
              v178 = v223;
              v122 = v245;
              (v254)(v223, 1, 1, v245);
              v179 = v175;
              v153 = v178;
              (*v226)(v176, v179);
            }

            v126 = v235;
            if ((v228)(v153, 1, v122) == 1)
            {
              v152 = v126;
LABEL_112:
              v154 = v122;
              v236(v231, v122);
LABEL_94:
              v155 = v153;
              goto LABEL_95;
            }

            v180 = v199;
            sub_21E13D974();
            v181 = v236;
            v236(v153, v122);
            v182 = v198;
            v218(v198, v180, v122);
            v183 = v231;
            v184 = MEMORY[0x223D4E180](v231, v182);
            v181(v182, v122);
            v181(v183, v122);
            if (v184)
            {

              goto LABEL_122;
            }

LABEL_98:
            v147 = v250;
            ++v149;
            if (v150 == v248)
            {
              goto LABEL_118;
            }
          }

          v152 = v126;
          sub_21DF23614(v126, &qword_27CEA6D48, &unk_21E148070);
          v153 = v249;
          v154 = v122;
          (v254)(v249, 1, 1, v122);
          goto LABEL_94;
        }

LABEL_118:

        v185 = v207;
        sub_21DFE76F0(v207);
        if ((*v243)(v185, 1, v122) == 1)
        {
          sub_21DF23614(v185, &qword_27CEA6D98, &qword_21E145DC0);
          v127 = v221;
          v189 = v222;
          v125 = v202;
          v128 = v219;
LABEL_124:

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v197 = sub_21E06ABFC(0, *(v197 + 2) + 1, 1, v197);
          }

          v191 = *(v197 + 2);
          v190 = *(v197 + 3);
          KeyPath = v191 + 1;
          if (v191 >= v190 >> 1)
          {
            v197 = sub_21E06ABFC((v190 > 1), v191 + 1, 1, v197);
          }

          v192 = v197;
          *(v197 + 2) = KeyPath;
          v193 = &v192[16 * v191];
          v194 = v253;
          *(v193 + 4) = v189;
          *(v193 + 5) = v194;
          goto LABEL_72;
        }

        v186 = v206;
        (*v242)(v206, v185, v122);
        v187 = v208;
        sub_21E13D974();
        KeyPath = sub_21E0BEC5C(v187, v200);
        v188 = v236;
        v236(v187, v122);
        v188(v186, v122);
        v127 = v221;
        v189 = v222;
        v125 = v202;
        v128 = v219;
        if (KeyPath)
        {
          goto LABEL_124;
        }

LABEL_72:
        if (v128 == v125)
        {
          goto LABEL_135;
        }
      }
    }

    v197 = MEMORY[0x277D84F90];
LABEL_135:

    sub_21DF5B574(v197);
    v76 = v265;
    goto LABEL_136;
  }

  swift_getKeyPath();
  v79 = v246;
  v262 = v246;
  v237 = v78;

  sub_21E13D3C4();

  v80 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__textAction;
  swift_beginAccess();
  if (*(v79 + v80))
  {

    v81 = sub_21DFE4554();
  }

  else
  {
    v81 = MEMORY[0x277D84FA0];
  }

  v82 = sub_21DFE4554();
  v12 = &unk_280F6B000;
  if (*(v81 + 16) <= *(v82 + 16) >> 3)
  {
    v262 = v82;
    sub_21E115E9C(v81);

    v257 = v262;
  }

  else
  {
    v257 = sub_21E1160B8(v81, v82);
  }

  swift_getKeyPath();
  v262 = v3;
  sub_21E13D3C4();

  v83 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__dataDetectors;
  swift_beginAccess();
  v65 = *(v3 + v83);
  v262 = MEMORY[0x277D84F90];
  v38 = v65 & 0xFFFFFFFFFFFFFF8;
  if (!(v65 >> 62))
  {
    v62 = *((v65 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_26;
  }

LABEL_63:
  v62 = sub_21E1427B4();
LABEL_26:

  v236 = v65;
  if (v62)
  {
    v84 = 0;
    v251 = v65 & 0xC000000000000001;
    v248 = v65 + 32;
    v250 = (v244 + 48);
    v240 = (v244 + 32);
    v254 = (v257 + 56);
    v253 = v244 + 16;
    v256 = (v244 + 8);
    v252 = MEMORY[0x277D84F90];
    v247 = v54;
    v243 = v38;
    v242 = v62;
    while (1)
    {
      while (1)
      {
        if (v251)
        {
          v85 = MEMORY[0x223D530F0](v84, v236);
          v86 = __OFADD__(v84++, 1);
          if (v86)
          {
            goto LABEL_59;
          }
        }

        else
        {
          if (v84 >= *(v38 + 16))
          {
            goto LABEL_60;
          }

          v85 = *(v248 + 8 * v84);

          v86 = __OFADD__(v84++, 1);
          if (v86)
          {
LABEL_59:
            __break(1u);
LABEL_60:
            __break(1u);
LABEL_61:
            v63 = sub_21E1427B4();
            goto LABEL_3;
          }
        }

        swift_getKeyPath();
        v260 = v85;
        sub_21E11782C(&qword_280F6B830, type metadata accessor for NewActionModel, &protocol conformance descriptor for NewActionModel);
        sub_21E13D3C4();

        v87 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewActionModel__semanticDataDetectorActionable;
        swift_beginAccess();
        sub_21DF236C0(v85 + v87, v54, &qword_27CEA77B8, &qword_21E1557F0);
        if ((*v250)(v54, 1, v35) != 1)
        {
          break;
        }

        sub_21DF23614(v54, &qword_27CEA77B8, &qword_21E1557F0);
LABEL_29:
        v3 = v222;
        if (v84 == v62)
        {
          goto LABEL_48;
        }
      }

      (*v240)(v259, v54, v35);
      if (!*(v257 + 16) || (v88 = v257, sub_21E11782C(&qword_27CEAD5E0, MEMORY[0x277D796D0], MEMORY[0x277D796D8]), v89 = sub_21E142014(), v90 = -1 << *(v88 + 32), v91 = v89 & ~v90, ((*&v254[(v91 >> 3) & 0xFFFFFFFFFFFFFF8] >> v91) & 1) == 0))
      {
LABEL_39:

        v35 = v258;
        (*v256)(v259, v258);
        v54 = v247;
        v12 = &unk_280F6B000;
        v38 = v243;
        v62 = v242;
        goto LABEL_29;
      }

      v92 = ~v90;
      v93 = *(v244 + 72);
      v94 = *(v244 + 16);
      while (1)
      {
        v95 = v255;
        v96 = v258;
        v94(v255, *(v257 + 48) + v93 * v91, v258);
        sub_21E11782C(&qword_27CEA77C0, MEMORY[0x277D796D0], MEMORY[0x277D796E0]);
        v97 = sub_21E142074();
        v98 = *v256;
        (*v256)(v95, v96);
        if (v97)
        {
          break;
        }

        v91 = (v91 + 1) & v92;
        if (((*&v254[(v91 >> 3) & 0xFFFFFFFFFFFFFF8] >> v91) & 1) == 0)
        {
          goto LABEL_39;
        }
      }

      v35 = v258;
      v99 = (v98)(v259, v258);
      MEMORY[0x223D52AF0](v99);
      v62 = v242;
      if (*((v262 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v262 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_21E1422F4();
      }

      sub_21E142324();
      v252 = v262;
      v3 = v222;
      v54 = v247;
      v12 = &unk_280F6B000;
      v38 = v243;
      if (v84 == v62)
      {
        goto LABEL_48;
      }
    }
  }

  v252 = MEMORY[0x277D84F90];
LABEL_48:

  v100 = v252;
  if (!(v252 >> 62))
  {
    v101 = *((v252 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v101)
    {
      goto LABEL_50;
    }

LABEL_65:

    v104 = MEMORY[0x277D84F90];
LABEL_66:
    sub_21DF5B574(v104);

    goto LABEL_67;
  }

  v111 = v252;
  v112 = sub_21E1427B4();
  v113 = v111;
  v101 = v112;
  v100 = v113;
  if (!v101)
  {
    goto LABEL_65;
  }

LABEL_50:
  v102 = v100;
  v262 = MEMORY[0x277D84F90];
  sub_21DF5C3A4(0, v101 & ~(v101 >> 63), 0);
  if ((v101 & 0x8000000000000000) == 0)
  {
    v103 = 0;
    v104 = v262;
    v105 = v102;
    v106 = v102 & 0xC000000000000001;
    do
    {
      if (v106)
      {
        v107 = MEMORY[0x223D530F0](v103, v105);
      }

      else
      {
        v107 = *(v105 + 8 * v103 + 32);
      }

      v262 = v104;
      v109 = *(v104 + 16);
      v108 = *(v104 + 24);

      if (v109 >= v108 >> 1)
      {
        sub_21DF5C3A4((v108 > 1), v109 + 1, 1);
        v104 = v262;
      }

      ++v103;
      *(v104 + 16) = v109 + 1;
      v110 = v104 + 16 * v109;
      *(v110 + 32) = v3;
      *(v110 + 40) = v107;
      v105 = v252;
    }

    while (v101 != v103);

    goto LABEL_66;
  }

  __break(1u);
}

uint64_t NewBarModel.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC20VisualIntelligenceUI11NewBarModel_id;
  v4 = sub_21E13D344();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_21E1148E4(__n128 a1)
{
  v2 = v1;
  v24 = sub_21E13EE04();
  v3 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21E13D834();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_21E13EEE4();
  v10 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v22 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v22 - v13;
  swift_getKeyPath();
  v25 = v1;
  sub_21E11782C(&qword_280F6BEE0, type metadata accessor for NewBarModel, &protocol conformance descriptor for NewBarModel);
  sub_21E13D3C4();

  v15 = OBJC_IVAR____TtC20VisualIntelligenceUI11NewBarModel__entryPoint;
  swift_beginAccess();
  (*(v7 + 16))(v9, v2 + v15, v6);
  LOBYTE(v15) = sub_21E13D7F4();
  (*(v7 + 8))(v9, v6);
  v16 = MEMORY[0x277D79668];
  if ((v15 & 1) == 0)
  {
    v16 = MEMORY[0x277D79660];
  }

  v17 = v24;
  (*(v3 + 104))(v5, *v16, v24);
  sub_21E13EDF4();
  (*(v3 + 8))(v5, v17);
  v19 = v22;
  v18 = v23;
  (*(v10 + 16))(v22, v14, v23);
  type metadata accessor for NewActionModel(0);
  swift_allocObject();
  v20 = NewActionModel.init(pill:)(v19);
  sub_21E114C48(v20);
  return (*(v10 + 8))(v14, v18);
}

uint64_t sub_21E114C48(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC20VisualIntelligenceUI11NewBarModel__ask;
  v5 = *(v1 + OBJC_IVAR____TtC20VisualIntelligenceUI11NewBarModel__ask);
  sub_21E1423C4();
  v10 = v5;
  v11 = a1;

  v6 = sub_21E0C372C(sub_21DF60774, v9, "VisualIntelligenceUI/NewActionModel.swift", 41, 2, 173);

  if (v6)
  {
    *(v2 + v4) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v12 = v2;
    sub_21E11782C(&qword_280F6BEE0, type metadata accessor for NewBarModel, &protocol conformance descriptor for NewBarModel);
    sub_21E13D3B4();
  }
}

uint64_t sub_21E114DC8(uint64_t a1, uint64_t a2)
{
  v4 = sub_21E13D834();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a2, v4, v6);
  v9 = OBJC_IVAR____TtC20VisualIntelligenceUI11NewBarModel__entryPoint;
  swift_beginAccess();
  (*(v5 + 24))(a1 + v9, v8, v4);
  swift_endAccess();
  sub_21E1148E4(v10);
  return (*(v5 + 8))(v8, v4);
}

double NewBarModel.items.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC20VisualIntelligenceUI11NewBarModel__items;
  swift_beginAccess();

  v5 = sub_21E0E0558(v4, a1);

  if (v5)
  {
    *(v1 + v3) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21E11782C(&qword_280F6BEE0, type metadata accessor for NewBarModel, &protocol conformance descriptor for NewBarModel);
    sub_21E13D3B4();
  }

  return result;
}

void sub_21E115054(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC20VisualIntelligenceUI11NewBarModel__items;
  swift_beginAccess();
  *(a1 + v4) = a2;
}

uint64_t (*NewBarModel.items.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC20VisualIntelligenceUI11NewBarModel___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_21E11782C(&qword_280F6BEE0, type metadata accessor for NewBarModel, &protocol conformance descriptor for NewBarModel);
  sub_21E13D3C4();

  *v4 = v1;
  swift_getKeyPath();
  sub_21E13D3E4();

  swift_beginAccess();
  return sub_21E11520C;
}

void sub_21E115274(uint64_t a1, char a2)
{
  v4 = OBJC_IVAR____TtC20VisualIntelligenceUI11NewBarModel__isAskPressed;
  swift_beginAccess();
  *(a1 + v4) = a2;
}

uint64_t type metadata accessor for NewBarModel(uint64_t a1)
{
  result = qword_280F6BED0;
  if (!qword_280F6BED0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t (*NewBarModel.isAskPressed.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC20VisualIntelligenceUI11NewBarModel___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_21E11782C(&qword_280F6BEE0, type metadata accessor for NewBarModel, &protocol conformance descriptor for NewBarModel);
  sub_21E13D3C4();

  *v4 = v1;
  swift_getKeyPath();
  sub_21E13D3E4();

  swift_beginAccess();
  return sub_21E115484;
}

void sub_21E1154A4(uint64_t *a1@<X0>, uint64_t *a3@<X4>, _BYTE *a4@<X8>)
{
  v6 = *a1;
  swift_getKeyPath();
  sub_21E11782C(&qword_280F6BEE0, type metadata accessor for NewBarModel, &protocol conformance descriptor for NewBarModel);
  sub_21E13D3C4();

  v7 = *a3;
  swift_beginAccess();
  *a4 = *(v6 + v7);
}

void sub_21E115594(uint64_t a1, char a2)
{
  v4 = OBJC_IVAR____TtC20VisualIntelligenceUI11NewBarModel__isSearchPressed;
  swift_beginAccess();
  *(a1 + v4) = a2;
}

uint64_t (*NewBarModel.isSearchPressed.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC20VisualIntelligenceUI11NewBarModel___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_21E11782C(&qword_280F6BEE0, type metadata accessor for NewBarModel, &protocol conformance descriptor for NewBarModel);
  sub_21E13D3C4();

  *v4 = v1;
  swift_getKeyPath();
  sub_21E13D3E4();

  swift_beginAccess();
  return sub_21E115758;
}

uint64_t NewBarModel.init(fullscreenEntity:)(uint64_t a1)
{
  v1 = sub_21E117318(a1);

  return v1;
}

uint64_t static NewBarModel.Item.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = *a2;
  v4 = a2[1];
  sub_21E1423C4();
  v11 = v3;
  v12 = v5;
  v6 = sub_21E0C372C(sub_21DF23B64, v10, "VisualIntelligenceUI/NewEntityModel.swift", 41, 2, 233);
  if (v6)
  {
    MEMORY[0x28223BE20](v6);
    v9[2] = v2;
    v9[3] = v4;
    v7 = sub_21E0C372C(sub_21DF35578, v9, "VisualIntelligenceUI/NewActionModel.swift", 41, 2, 173);
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

uint64_t sub_21E115890@<X0>(uint64_t *a1@<X8>)
{
  result = NewBarModel.Item.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_21E1158B8(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = *a2;
  v4 = a2[1];
  sub_21E1423C4();
  v11 = v3;
  v12 = v5;
  v6 = sub_21E0C372C(sub_21DF6078C, v10, "VisualIntelligenceUI/NewEntityModel.swift", 41, 2, 233);
  if (v6)
  {
    MEMORY[0x28223BE20](v6);
    v9[2] = v2;
    v9[3] = v4;
    v7 = sub_21E0C372C(sub_21DF60774, v9, "VisualIntelligenceUI/NewActionModel.swift", 41, 2, 173);
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

uint64_t NewBarModel.numberOfItems.getter()
{
  swift_getKeyPath();
  v3 = v0;
  sub_21E11782C(&qword_280F6BEE0, type metadata accessor for NewBarModel, &protocol conformance descriptor for NewBarModel);
  sub_21E13D3C4();

  v1 = OBJC_IVAR____TtC20VisualIntelligenceUI11NewBarModel__items;
  swift_beginAccess();
  return *(*(v3 + v1) + 16);
}

uint64_t NewBarModel.deinit()
{
  v1 = OBJC_IVAR____TtC20VisualIntelligenceUI11NewBarModel_id;
  v2 = sub_21E13D344();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC20VisualIntelligenceUI11NewBarModel__entryPoint;
  v4 = sub_21E13D834();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  v5 = OBJC_IVAR____TtC20VisualIntelligenceUI11NewBarModel___observationRegistrar;
  v6 = sub_21E13D404();
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  return v0;
}

uint64_t NewBarModel.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC20VisualIntelligenceUI11NewBarModel_id;
  v2 = sub_21E13D344();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC20VisualIntelligenceUI11NewBarModel__entryPoint;
  v4 = sub_21E13D834();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  v5 = OBJC_IVAR____TtC20VisualIntelligenceUI11NewBarModel___observationRegistrar;
  v6 = sub_21E13D404();
  (*(*(v6 - 8) + 8))(v0 + v5, v6);

  return swift_deallocClassInstance();
}

uint64_t sub_21E115CDC@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC20VisualIntelligenceUI11NewBarModel_id;
  v5 = sub_21E13D344();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_21E115D58()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CEA6858, &unk_21E147300);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_21E144A20;
  if (qword_27CEA6808 != -1)
  {
    swift_once();
  }

  *(v0 + 32) = qword_27CEB7738;
  type metadata accessor for NewEntityModel(0);
  swift_allocObject();

  result = NewEntityModel.init(actions:searchActions:)(v0, MEMORY[0x277D84F90]);
  qword_27CEB7730 = result;
  return result;
}

uint64_t sub_21E115E24()
{
  type metadata accessor for NewActionModel(0);
  swift_allocObject();
  result = NewActionModel.init(title:systemImage:)(0x65706F6C65766544, 0xEE00756E654D2072, 0xD000000000000019, 0x800000021E15FC00);
  qword_27CEB7738 = result;
  return result;
}

void sub_21E115E9C(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA77B8, &qword_21E1557F0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v17 - v4;
  v6 = sub_21E13F274();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(*v1 + 16))
  {
    v10 = 1 << *(a1 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(a1 + 56);
    v13 = (v10 + 63) >> 6;
    v17[0] = v7 + 8;
    v17[1] = v7 + 16;

    v14 = 0;
    while (v12)
    {
      v15 = v14;
LABEL_10:
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
      (*(v7 + 16))(v9, *(a1 + 48) + *(v7 + 72) * (v16 | (v15 << 6)), v6);
      sub_21E0E5FC4(v9, v5);
      (*(v7 + 8))(v9, v6);
      sub_21DF23614(v5, &qword_27CEA77B8, &qword_21E1557F0);
    }

    while (1)
    {
      v15 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v15 >= v13)
      {

        return;
      }

      v12 = *(a1 + 56 + 8 * v15);
      ++v14;
      if (v12)
      {
        v14 = v15;
        goto LABEL_10;
      }
    }

    __break(1u);
  }
}

uint64_t sub_21E1160B8(uint64_t a1, uint64_t a2)
{
  v95 = *MEMORY[0x277D85DE8];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA77B8, &qword_21E1557F0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = (&v66 - v9);
  v11 = sub_21E13F274();
  MEMORY[0x28223BE20](v11);
  v86 = (&v66 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v13);
  v15 = (&v66 - v14);
  MEMORY[0x28223BE20](v16);
  v81 = (&v66 - v18);
  if (!*(a2 + 16))
  {

    return MEMORY[0x277D84FA0];
  }

  v67 = v10;
  v69 = v7;
  v20 = a1 + 56;
  v19 = *(a1 + 56);
  v21 = -1 << *(a1 + 32);
  v80 = ~v21;
  if (-v21 < 64)
  {
    v22 = ~(-1 << -v21);
  }

  else
  {
    v22 = -1;
  }

  v88 = (v22 & v19);
  v73 = (63 - v21) >> 6;
  v87 = v17 + 16;
  v78 = (v17 + 48);
  v79 = (v17 + 56);
  v77 = (v17 + 32);
  v83 = (a2 + 56);
  v68 = v17;
  v89 = (v17 + 8);

  v24 = 0;
  v70 = a1;
  for (i = a1 + 56; ; v20 = i)
  {
    v25 = v88;
    v26 = v24;
    if (v88)
    {
LABEL_14:
      v2 = (v25 - 1) & v25;
      v30 = v67;
      (*(v68 + 16))(v67, *(a1 + 48) + *(v68 + 72) * (__clz(__rbit64(v25)) | (v26 << 6)), v11);
      v31 = 0;
      v28 = v26;
    }

    else
    {
      v27 = v73 <= (v24 + 1) ? v24 + 1 : v73;
      v28 = v27 - 1;
      v29 = v24;
      while (1)
      {
        v26 = v29 + 1;
        if (__OFADD__(v29, 1))
        {
          goto LABEL_57;
        }

        if (v26 >= v73)
        {
          break;
        }

        v25 = *(v20 + 8 * v26);
        ++v29;
        if (v25)
        {
          goto LABEL_14;
        }
      }

      v2 = 0;
      v31 = 1;
      v30 = v67;
    }

    v75 = *v79;
    v75(v30, v31, 1, v11);
    v90 = a1;
    v91 = v20;
    v92 = v80;
    v93 = v28;
    v94 = v2;
    v74 = *v78;
    if (v74(v30, 1, v11) == 1)
    {
      sub_21DF23614(v30, &qword_27CEA77B8, &qword_21E1557F0);
      goto LABEL_52;
    }

    v72 = *v77;
    v72(v81, v30, v11);
    v71 = sub_21E11782C(&qword_27CEAD5E0, MEMORY[0x277D796D0], MEMORY[0x277D796D8]);
    v32 = sub_21E142014();
    v33 = -1 << *(a2 + 32);
    v24 = v32 & ~v33;
    v26 = v24 >> 6;
    v20 = 1 << v24;
    if (((1 << v24) & v83[v24 >> 6]) != 0)
    {
      break;
    }

    (*v89)(v81, v11);
LABEL_22:
    v24 = v28;
    v88 = v2;
  }

  v66 = v89 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v82 = ~v33;
  v34 = *(v68 + 72);
  v84 = *(v68 + 16);
  v85 = v34;
  while (1)
  {
    v84(v15, *(a2 + 48) + v85 * v24, v11);
    v35 = sub_21E11782C(&qword_27CEA77C0, MEMORY[0x277D796D0], MEMORY[0x277D796E0]);
    v36 = sub_21E142074();
    v88 = *v89;
    v88(v15, v11);
    if (v36)
    {
      break;
    }

    v24 = (v24 + 1) & v82;
    v26 = v24 >> 6;
    v20 = 1 << v24;
    if (((1 << v24) & v83[v24 >> 6]) == 0)
    {
      a1 = v70;
      v88(v81, v11);
      goto LABEL_22;
    }
  }

  v82 = v35;
  v37 = (v88)(v81, v11);
  v38 = *(a2 + 32);
  v66 = ((1 << v38) + 63) >> 6;
  v23 = 8 * v66;
  a1 = v70;
  if ((v38 & 0x3Fu) > 0xD)
  {
    goto LABEL_58;
  }

  while (2)
  {
    v67 = &v66;
    MEMORY[0x28223BE20](v37);
    v40 = &v66 - ((v39 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v40, v83, v39);
    v41 = *&v40[8 * v26] & ~v20;
    v42 = *(a2 + 16);
    v81 = v40;
    *&v40[8 * v26] = v41;
    v43 = v42 - 1;
    v24 = v69;
    v44 = i;
    v45 = v73;
LABEL_26:
    v68 = v43;
    while (v2)
    {
      v46 = v28;
LABEL_38:
      v49 = __clz(__rbit64(v2));
      v2 &= v2 - 1;
      v84(v24, *(a1 + 48) + (v49 | (v46 << 6)) * v85, v11);
      v50 = 0;
LABEL_39:
      v75(v24, v50, 1, v11);
      v90 = a1;
      v91 = v44;
      v92 = v80;
      v93 = v28;
      v94 = v2;
      if (v74(v24, 1, v11) == 1)
      {
        sub_21DF23614(v24, &qword_27CEA77B8, &qword_21E1557F0);
        a2 = sub_21E116FF0(v81, v66, v68, a2, v59);
        goto LABEL_52;
      }

      v72(v86, v24, v11);
      v51 = sub_21E142014();
      v52 = a2;
      v53 = -1 << *(a2 + 32);
      v54 = v51 & ~v53;
      v26 = v54 >> 6;
      v20 = 1 << v54;
      if (((1 << v54) & v83[v54 >> 6]) != 0)
      {
        v84(v15, *(v52 + 48) + v54 * v85, v11);
        v55 = sub_21E142074();
        v88(v15, v11);
        if ((v55 & 1) == 0)
        {
          v56 = ~v53;
          do
          {
            v54 = (v54 + 1) & v56;
            v26 = v54 >> 6;
            v20 = 1 << v54;
            if (((1 << v54) & v83[v54 >> 6]) == 0)
            {
              goto LABEL_27;
            }

            v84(v15, *(v52 + 48) + v54 * v85, v11);
            v57 = sub_21E142074();
            v88(v15, v11);
          }

          while ((v57 & 1) == 0);
        }

        v88(v86, v11);
        v58 = v81[v26];
        v81[v26] = v58 & ~v20;
        a2 = v52;
        a1 = v70;
        v24 = v69;
        v44 = i;
        v45 = v73;
        if ((v58 & v20) != 0)
        {
          v43 = v68 - 1;
          if (__OFSUB__(v68, 1))
          {
            __break(1u);
          }

          if (v68 == 1)
          {

            a2 = MEMORY[0x277D84FA0];
            goto LABEL_52;
          }

          goto LABEL_26;
        }
      }

      else
      {
LABEL_27:
        v88(v86, v11);
        a2 = v52;
        a1 = v70;
        v24 = v69;
        v44 = i;
        v45 = v73;
      }
    }

    if (v45 <= (v28 + 1))
    {
      v47 = v28 + 1;
    }

    else
    {
      v47 = v45;
    }

    v48 = v47 - 1;
    while (1)
    {
      v46 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        break;
      }

      if (v46 >= v45)
      {
        v2 = 0;
        v50 = 1;
        v28 = v48;
        goto LABEL_39;
      }

      v2 = *(v44 + 8 * v46);
      ++v28;
      if (v2)
      {
        v28 = v46;
        goto LABEL_38;
      }
    }

    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    v61 = v23;

    v81 = a2;
    v62 = v61;
    if (swift_stdlib_isStackAllocationSafe())
    {
      v63 = v81;

      a2 = v63;
      continue;
    }

    break;
  }

  v64 = swift_slowAlloc();
  memcpy(v64, v83, v62);
  sub_21E116B1C(v64, v66, v81, v24, &v90);
  a2 = v65;

  MEMORY[0x223D540B0](v64, -1, -1);
LABEL_52:
  sub_21DF5F790();
  return a2;
}

void sub_21E116B1C(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v48 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA77B8, &qword_21E1557F0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v47 - v10;
  v12 = sub_21E13F274();
  MEMORY[0x28223BE20](v12);
  v58 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v14);
  v64 = &v47 - v16;
  v17 = *(a3 + 16);
  v18 = (a4 >> 3) & 0x1FFFFFFFFFFFFFF8;
  v19 = *(a1 + v18);
  v50 = a1;
  v51 = v11;
  *(a1 + v18) = v19 & ((-1 << a4) - 1);
  v20 = v17 - 1;
  v61 = v21 + 16;
  v62 = a3;
  v55 = (v21 + 48);
  v56 = (v21 + 56);
  v54 = (v21 + 32);
  v60 = a3 + 56;
  v57 = v21;
  v63 = (v21 + 8);
  v52 = a5;
  while (2)
  {
    v49 = v20;
    do
    {
      while (1)
      {
        v23 = *a5;
        v24 = a5[1];
        v26 = a5[2];
        v25 = a5[3];
        v27 = a5[4];
        if (!v27)
        {
          v29 = (v26 + 64) >> 6;
          if (v29 <= v25 + 1)
          {
            v30 = v25 + 1;
          }

          else
          {
            v30 = (v26 + 64) >> 6;
          }

          v31 = v30 - 1;
          while (1)
          {
            v28 = v25 + 1;
            if (__OFADD__(v25, 1))
            {
              break;
            }

            if (v28 >= v29)
            {
              v32 = 0;
              v33 = 1;
              goto LABEL_15;
            }

            v27 = *(v24 + 8 * v28);
            ++v25;
            if (v27)
            {
              goto LABEL_14;
            }
          }

          __break(1u);
          goto LABEL_29;
        }

        v28 = a5[3];
LABEL_14:
        v32 = (v27 - 1) & v27;
        (*(v57 + 16))(v11, *(v23 + 48) + *(v57 + 72) * (__clz(__rbit64(v27)) | (v28 << 6)), v12, v15);
        v33 = 0;
        v31 = v28;
LABEL_15:
        (*v56)(v11, v33, 1, v12);
        *a5 = v23;
        a5[1] = v24;
        a5[2] = v26;
        a5[3] = v31;
        a5[4] = v32;
        if ((*v55)(v11, 1, v12) == 1)
        {
          sub_21DF23614(v11, &qword_27CEA77B8, &qword_21E1557F0);
          v45 = v62;

          sub_21E116FF0(v50, v48, v49, v45, v46);
          return;
        }

        (*v54)(v64, v11, v12);
        v34 = v62;
        sub_21E11782C(&qword_27CEAD5E0, MEMORY[0x277D796D0], MEMORY[0x277D796D8]);
        v35 = sub_21E142014();
        v36 = -1 << *(v34 + 32);
        v37 = v35 & ~v36;
        v38 = v37 >> 6;
        v39 = 1 << v37;
        if (((1 << v37) & *(v60 + 8 * (v37 >> 6))) != 0)
        {
          break;
        }

        v22 = *v63;
LABEL_4:
        v22(v64, v12);
      }

      v53 = v63 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v59 = ~v36;
      v40 = *(v57 + 72);
      v41 = *(v57 + 16);
      while (1)
      {
        v42 = v58;
        v41(v58, *(v62 + 48) + v40 * v37, v12);
        sub_21E11782C(&qword_27CEA77C0, MEMORY[0x277D796D0], MEMORY[0x277D796E0]);
        v43 = sub_21E142074();
        v22 = *v63;
        (*v63)(v42, v12);
        if (v43)
        {
          break;
        }

        v37 = (v37 + 1) & v59;
        v38 = v37 >> 6;
        v39 = 1 << v37;
        if (((1 << v37) & *(v60 + 8 * (v37 >> 6))) == 0)
        {
          v11 = v51;
          a5 = v52;
          goto LABEL_4;
        }
      }

      v22(v64, v12);
      v11 = v51;
      v44 = v50[v38];
      v50[v38] = v44 & ~v39;
      a5 = v52;
    }

    while ((v44 & v39) == 0);
    v20 = v49 - 1;
    if (__OFSUB__(v49, 1))
    {
LABEL_29:
      __break(1u);
      return;
    }

    if (v49 != 1)
    {
      continue;
    }

    break;
  }
}

uint64_t sub_21E116FF0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, __n128 a5)
{
  v36 = sub_21E13F274();
  v9 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v35 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return MEMORY[0x277D84FA0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD5E8, &unk_21E1591D0);
  result = sub_21E142864();
  v11 = result;
  if (a2 < 1)
  {
    v13 = 0;
  }

  else
  {
    v13 = *a1;
  }

  v14 = 0;
  v15 = result + 56;
  v31 = (v9 + 32);
  v32 = v9 + 16;
  v30 = a4;
  while (v13)
  {
    v16 = __clz(__rbit64(v13));
    v33 = (v13 - 1) & v13;
LABEL_16:
    v19 = *(a4 + 48);
    v34 = *(v9 + 72);
    (*(v9 + 16))(v35, v19 + v34 * (v16 | (v14 << 6)), v36);
    sub_21E11782C(&qword_27CEAD5E0, MEMORY[0x277D796D0], MEMORY[0x277D796D8]);
    result = sub_21E142014();
    v20 = -1 << *(v11 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v15 + 8 * (v21 >> 6))) == 0)
    {
      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v15 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v15 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v15 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    result = (*v31)(*(v11 + 48) + v23 * v34, v35, v36);
    ++*(v11 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v30;
    v13 = v33;
    if (!a3)
    {
LABEL_28:

      return v11;
    }
  }

  v17 = v14;
  while (1)
  {
    v14 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v14 >= a2)
    {
      goto LABEL_28;
    }

    v18 = a1[v14];
    ++v17;
    if (v18)
    {
      v16 = __clz(__rbit64(v18));
      v33 = (v18 - 1) & v18;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_21E117318(uint64_t a1)
{
  v2 = v1;
  v22 = a1;
  v3 = sub_21E13D344();
  v20 = *(v3 - 8);
  v21 = v3;
  MEMORY[0x28223BE20](v3);
  v19 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_21E13EEE4();
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_21E13EE04();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtC20VisualIntelligenceUI11NewBarModel__entryPoint;
  v13 = *MEMORY[0x277D78DC0];
  v14 = sub_21E13D834();
  (*(*(v14 - 8) + 104))(v2 + v12, v13, v14);
  v15 = *(v9 + 104);
  v15(v11, *MEMORY[0x277D79668], v8);
  sub_21E13EDF4();
  v16 = *(v9 + 8);
  v16(v11, v8);
  type metadata accessor for NewActionModel(0);
  swift_allocObject();
  *(v2 + OBJC_IVAR____TtC20VisualIntelligenceUI11NewBarModel__ask) = NewActionModel.init(pill:)(v7);
  *(v2 + OBJC_IVAR____TtC20VisualIntelligenceUI11NewBarModel__items) = MEMORY[0x277D84F90];
  *(v2 + OBJC_IVAR____TtC20VisualIntelligenceUI11NewBarModel__isAskPressed) = 0;
  *(v2 + OBJC_IVAR____TtC20VisualIntelligenceUI11NewBarModel__isSearchPressed) = 0;
  sub_21E13D3F4();
  v17 = v19;
  _s20VisualIntelligenceUI9CardModelC2id14cardTopPadding0g6BottomI013executeActionAC10Foundation4UUIDV_12CoreGraphics7CGFloatVAMyAA03NewlE0CcSgtcfcfA__0();
  (*(v20 + 32))(v2 + OBJC_IVAR____TtC20VisualIntelligenceUI11NewBarModel_id, v17, v21);
  *(v2 + OBJC_IVAR____TtC20VisualIntelligenceUI11NewBarModel_fullscreenEntity) = v22;
  v15(v11, *MEMORY[0x277D79658], v8);

  sub_21E13EDF4();
  v16(v11, v8);
  swift_allocObject();
  *(v2 + OBJC_IVAR____TtC20VisualIntelligenceUI11NewBarModel_search) = NewActionModel.init(pill:)(v7);
  return v2;
}

uint64_t sub_21E1176C0(uint64_t a1)
{
  result = sub_21E13D344();
  if (v2 <= 0x3F)
  {
    result = sub_21E13D834();
    if (v3 <= 0x3F)
    {
      result = sub_21E13D404();
      if (v4 <= 0x3F)
      {
        return swift_updateClassMetadata2();
      }
    }
  }

  return result;
}

uint64_t sub_21E11782C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_21E117890()
{
  *(*(v0 + 16) + OBJC_IVAR____TtC20VisualIntelligenceUI11NewBarModel__ask) = *(v0 + 24);
}

uint64_t FeedbackController.__allocating_init(saliencyModel:)(uint64_t a1)
{
  v2 = swift_allocObject();
  FeedbackController.init(saliencyModel:)(a1);
  return v2;
}

id sub_21E117914()
{
  swift_getKeyPath();
  sub_21E11D2EC(&qword_280F6A900, type metadata accessor for FeedbackController, &protocol conformance descriptor for FeedbackController);
  sub_21E13D3C4();

  swift_beginAccess();
  v1 = *(v0 + 16);

  return v1;
}

void sub_21E1179D8(void *a1)
{
  v2 = v1;
  swift_beginAccess();
  v4 = *(v1 + 16);
  sub_21E141F44();
  v5 = v4;
  v6 = sub_21E1426D4();

  if (v6)
  {
    v7 = *(v2 + 16);
    *(v2 + 16) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21E11D2EC(&qword_280F6A900, type metadata accessor for FeedbackController, &protocol conformance descriptor for FeedbackController);
    sub_21E13D3B4();
  }
}

void sub_21E117B28(uint64_t a1, void *a2)
{
  swift_beginAccess();
  v4 = *(a1 + 16);
  *(a1 + 16) = a2;
  v5 = a2;
}

uint64_t (*sub_21E117B88(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC20VisualIntelligenceUI18FeedbackController___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_21E11D2EC(&qword_280F6A900, type metadata accessor for FeedbackController, &protocol conformance descriptor for FeedbackController);
  sub_21E13D3C4();

  *v4 = v1;
  swift_getKeyPath();
  sub_21E13D3E4();

  v4[7] = sub_21DF607EC(v4);
  return sub_21E117CC0;
}

uint64_t sub_21E117D1C()
{
  swift_getKeyPath();
  sub_21E11D2EC(&qword_280F6A900, type metadata accessor for FeedbackController, &protocol conformance descriptor for FeedbackController);
  sub_21E13D3C4();

  swift_beginAccess();
}

uint64_t sub_21E117DD4(uint64_t a1)
{
  swift_getKeyPath();
  sub_21E11D2EC(&qword_280F6A900, type metadata accessor for FeedbackController, &protocol conformance descriptor for FeedbackController);
  sub_21E13D3B4();
}

uint64_t sub_21E117EA4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(a1 + 24) = a2;
}

uint64_t (*sub_21E117F0C(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC20VisualIntelligenceUI18FeedbackController___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_21E11D2EC(&qword_280F6A900, type metadata accessor for FeedbackController, &protocol conformance descriptor for FeedbackController);
  sub_21E13D3C4();

  *v4 = v1;
  swift_getKeyPath();
  sub_21E13D3E4();

  v4[7] = sub_21E117CCC(v4);
  return sub_21E118044;
}

uint64_t sub_21E1180B0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21E11D2EC(&qword_280F6A900, type metadata accessor for FeedbackController, &protocol conformance descriptor for FeedbackController);
  sub_21E13D3C4();

  v4 = OBJC_IVAR____TtC20VisualIntelligenceUI18FeedbackController__lastResetDate;
  swift_beginAccess();
  v5 = sub_21E13D304();
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

uint64_t sub_21E1181A8(uint64_t a1)
{
  v2 = sub_21E13D304();
  v3 = MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v5, a1, v3);
  return sub_21E11836C(v5);
}

uint64_t sub_21E118274@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v6 = v1;
  sub_21E11D2EC(&qword_280F6A900, type metadata accessor for FeedbackController, &protocol conformance descriptor for FeedbackController);
  sub_21E13D3C4();

  v3 = OBJC_IVAR____TtC20VisualIntelligenceUI18FeedbackController__lastResetDate;
  swift_beginAccess();
  v4 = sub_21E13D304();
  return (*(*(v4 - 8) + 16))(a1, v6 + v3, v4);
}

uint64_t sub_21E11836C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_21E13D304();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC20VisualIntelligenceUI18FeedbackController__lastResetDate;
  swift_beginAccess();
  v9 = *(v5 + 16);
  v9(v7, v2 + v8, v4);
  sub_21E11D2EC(&qword_27CEAA468, MEMORY[0x277CC9578], MEMORY[0x277CC9598]);
  v14[0] = a1;
  LOBYTE(a1) = sub_21E142074();
  v10 = *(v5 + 8);
  v10(v7, v4);
  if (a1)
  {
    v9(v7, v14[0], v4);
    swift_beginAccess();
    (*(v5 + 40))(v2 + v8, v7, v4);
    swift_endAccess();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v12 = v14[0];
    v14[-2] = v2;
    v14[-1] = v12;
    v14[1] = v2;
    sub_21E11D2EC(&qword_280F6A900, type metadata accessor for FeedbackController, &protocol conformance descriptor for FeedbackController);
    sub_21E13D3B4();
  }

  return (v10)(v14[0], v4);
}

uint64_t sub_21E11860C(uint64_t a1, uint64_t a2)
{
  v4 = sub_21E13D304();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a2, v4, v6);
  v9 = OBJC_IVAR____TtC20VisualIntelligenceUI18FeedbackController__lastResetDate;
  swift_beginAccess();
  (*(v5 + 40))(a1 + v9, v8, v4);
  return swift_endAccess();
}

uint64_t (*sub_21E118728(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC20VisualIntelligenceUI18FeedbackController___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_21E11D2EC(&qword_280F6A900, type metadata accessor for FeedbackController, &protocol conformance descriptor for FeedbackController);
  sub_21E13D3C4();

  *v4 = v1;
  swift_getKeyPath();
  sub_21E13D3E4();

  v4[7] = sub_21E118050(v4);
  return sub_21E118860;
}

uint64_t sub_21E11886C()
{
  v1 = sub_21E13D4B4();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v10 = v0;
  sub_21E11D2EC(&qword_280F6A900, type metadata accessor for FeedbackController, &protocol conformance descriptor for FeedbackController);
  sub_21E13D3C4();

  swift_beginAccess();
  v5 = *(v0 + 16);
  (*(v2 + 104))(v4, *MEMORY[0x277D084F8], v1);
  v6 = v5;
  v7 = sub_21E141F04();

  (*(v2 + 8))(v4, v1);
  return v7;
}

uint64_t FeedbackController.init(saliencyModel:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_21E13D304();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEADA68, &qword_21E159258);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v14[-v9];
  v11 = sub_21E13D4D4();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  v12 = objc_allocWithZone(sub_21E141F44());
  *(v2 + 16) = sub_21E141F34();
  *(v2 + 24) = 0;
  sub_21E13D2F4();
  (*(v5 + 32))(v2 + OBJC_IVAR____TtC20VisualIntelligenceUI18FeedbackController__lastResetDate, v7, v4);
  sub_21E13D3F4();
  swift_getKeyPath();
  v15 = v2;
  v16 = a1;
  v17 = v2;
  sub_21E11D2EC(&qword_280F6A900, type metadata accessor for FeedbackController, &protocol conformance descriptor for FeedbackController);
  sub_21E13D3B4();

  return v2;
}

uint64_t type metadata accessor for FeedbackController(uint64_t a1)
{
  result = qword_280F6A8E8;
  if (!qword_280F6A8E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21E118CC0()
{
  v1 = sub_21E13D304();
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v7 = v0;
  sub_21E11D2EC(&qword_280F6A900, type metadata accessor for FeedbackController, &protocol conformance descriptor for FeedbackController);
  sub_21E13D3C4();

  swift_beginAccess();
  v4 = *(v0 + 16);
  sub_21E141F24();

  sub_21E13D2F4();
  return sub_21E11836C(v3);
}

uint64_t sub_21E118DDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[8] = a3;
  v4[9] = v3;
  v4[6] = a1;
  v4[7] = a2;
  v5 = sub_21E13F1B4();
  v4[10] = v5;
  v4[11] = *(v5 - 8);
  v4[12] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8838, &qword_21E1520B0);
  v4[13] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEADA68, &qword_21E159258);
  v4[14] = swift_task_alloc();
  v6 = sub_21E13D4D4();
  v4[15] = v6;
  v4[16] = *(v6 - 8);
  v4[17] = swift_task_alloc();
  sub_21E1423C4();
  v4[18] = sub_21E1423B4();
  v8 = sub_21E142364();
  v4[19] = v8;
  v4[20] = v7;

  return MEMORY[0x2822009F8](sub_21E118FA0, v8, v7);
}

uint64_t sub_21E118FA0()
{
  v1 = v0[13];
  v2 = sub_21E13DF64();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = swift_task_alloc();
  v0[21] = v3;
  *v3 = v0;
  v3[1] = sub_21E119080;
  v5 = v0[13];
  v4 = v0[14];
  v6 = v0[8];
  v7 = v0[6];
  v8 = v0[7];

  return sub_21E11BFCC(v4, v5, v7, v8, v6);
}

uint64_t sub_21E119080()
{
  v1 = *v0;
  v2 = *(*v0 + 104);

  sub_21DF23614(v2, &qword_27CEA8838, &qword_21E1520B0);
  v3 = *(v1 + 160);
  v4 = *(v1 + 152);

  return MEMORY[0x2822009F8](sub_21E1191D4, v4, v3);
}

uint64_t sub_21E1191D4()
{
  v1 = v0[15];
  v2 = v0[16];
  v3 = v0[14];

  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_21DF23614(v0[14], &qword_27CEADA68, &qword_21E159258);
  }

  else
  {
    (*(v0[16] + 32))(v0[17], v0[14], v0[15]);
    sub_21E13EBC4();
    v4 = sub_21E13F1A4();
    v5 = sub_21E142554();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_21DF05000, v4, v5, "Sending a dislike", v6, 2u);
      MEMORY[0x223D540B0](v6, -1, -1);
    }

    v8 = v0[16];
    v7 = v0[17];
    v9 = v0[15];
    v11 = v0[11];
    v10 = v0[12];
    v13 = v0[9];
    v12 = v0[10];

    (*(v11 + 8))(v10, v12);
    swift_getKeyPath();
    v0[5] = v13;
    sub_21E11D2EC(&qword_280F6A900, type metadata accessor for FeedbackController, &protocol conformance descriptor for FeedbackController);
    sub_21E13D3C4();

    swift_beginAccess();
    v14 = *(v13 + 16);
    sub_21E141EF4();

    (*(v8 + 8))(v7, v9);
  }

  v15 = v0[1];

  return v15();
}

uint64_t sub_21E119428(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v5 + 176) = a4;
  *(v5 + 64) = a3;
  *(v5 + 72) = v4;
  *(v5 + 48) = a1;
  *(v5 + 56) = a2;
  v6 = sub_21E13F1B4();
  *(v5 + 80) = v6;
  *(v5 + 88) = *(v6 - 8);
  *(v5 + 96) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8838, &qword_21E1520B0);
  *(v5 + 104) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEADA68, &qword_21E159258);
  *(v5 + 112) = swift_task_alloc();
  v7 = sub_21E13D4D4();
  *(v5 + 120) = v7;
  *(v5 + 128) = *(v7 - 8);
  *(v5 + 136) = swift_task_alloc();
  sub_21E1423C4();
  *(v5 + 144) = sub_21E1423B4();
  v9 = sub_21E142364();
  *(v5 + 152) = v9;
  *(v5 + 160) = v8;

  return MEMORY[0x2822009F8](sub_21E1195F0, v9, v8);
}

uint64_t sub_21E1195F0()
{
  v1 = v0[13];
  v2 = sub_21E13DF64();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = swift_task_alloc();
  v0[21] = v3;
  *v3 = v0;
  v3[1] = sub_21E1196D0;
  v5 = v0[13];
  v4 = v0[14];
  v6 = v0[8];
  v7 = v0[6];
  v8 = v0[7];

  return sub_21E11BFCC(v4, v5, v7, v8, v6);
}

uint64_t sub_21E1196D0()
{
  v1 = *v0;
  v2 = *(*v0 + 104);

  sub_21DF23614(v2, &qword_27CEA8838, &qword_21E1520B0);
  v3 = *(v1 + 160);
  v4 = *(v1 + 152);

  return MEMORY[0x2822009F8](sub_21E119824, v4, v3);
}

uint64_t sub_21E119824()
{
  v1 = v0[15];
  v2 = v0[16];
  v3 = v0[14];

  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_21DF23614(v0[14], &qword_27CEADA68, &qword_21E159258);
  }

  else
  {
    (*(v0[16] + 32))(v0[17], v0[14], v0[15]);
    sub_21E13EBC4();
    v4 = sub_21E13F1A4();
    v5 = sub_21E142554();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_21DF05000, v4, v5, "Sending a like", v6, 2u);
      MEMORY[0x223D540B0](v6, -1, -1);
    }

    v8 = v0[16];
    v7 = v0[17];
    v9 = v0[15];
    v11 = v0[11];
    v10 = v0[12];
    v13 = v0[9];
    v12 = v0[10];

    (*(v11 + 8))(v10, v12);
    swift_getKeyPath();
    v0[5] = v13;
    sub_21E11D2EC(&qword_280F6A900, type metadata accessor for FeedbackController, &protocol conformance descriptor for FeedbackController);
    sub_21E13D3C4();

    swift_beginAccess();
    v14 = *(v13 + 16);
    sub_21E141EE4();

    (*(v8 + 8))(v7, v9);
  }

  v15 = v0[1];

  return v15();
}

uint64_t sub_21E119A84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[8] = a3;
  v4[9] = v3;
  v4[6] = a1;
  v4[7] = a2;
  v5 = sub_21E13F1B4();
  v4[10] = v5;
  v4[11] = *(v5 - 8);
  v4[12] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8838, &qword_21E1520B0);
  v4[13] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEADA68, &qword_21E159258);
  v4[14] = swift_task_alloc();
  v6 = sub_21E13D4D4();
  v4[15] = v6;
  v4[16] = *(v6 - 8);
  v4[17] = swift_task_alloc();
  sub_21E1423C4();
  v4[18] = sub_21E1423B4();
  v8 = sub_21E142364();
  v4[19] = v8;
  v4[20] = v7;

  return MEMORY[0x2822009F8](sub_21E119C48, v8, v7);
}

uint64_t sub_21E119C48()
{
  v1 = v0[13];
  v2 = sub_21E13DF64();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = swift_task_alloc();
  v0[21] = v3;
  *v3 = v0;
  v3[1] = sub_21E119D28;
  v5 = v0[13];
  v4 = v0[14];
  v6 = v0[8];
  v7 = v0[6];
  v8 = v0[7];

  return sub_21E11BFCC(v4, v5, v7, v8, v6);
}

uint64_t sub_21E119D28()
{
  v1 = *v0;
  v2 = *(*v0 + 104);

  sub_21DF23614(v2, &qword_27CEA8838, &qword_21E1520B0);
  v3 = *(v1 + 160);
  v4 = *(v1 + 152);

  return MEMORY[0x2822009F8](sub_21E119E7C, v4, v3);
}

uint64_t sub_21E119E7C()
{
  v1 = v0[15];
  v2 = v0[16];
  v3 = v0[14];

  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_21DF23614(v0[14], &qword_27CEADA68, &qword_21E159258);
  }

  else
  {
    (*(v0[16] + 32))(v0[17], v0[14], v0[15]);
    sub_21E13EBC4();
    v4 = sub_21E13F1A4();
    v5 = sub_21E142554();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_21DF05000, v4, v5, "Sending a report a concern", v6, 2u);
      MEMORY[0x223D540B0](v6, -1, -1);
    }

    v8 = v0[16];
    v7 = v0[17];
    v9 = v0[15];
    v11 = v0[11];
    v10 = v0[12];
    v13 = v0[9];
    v12 = v0[10];

    (*(v11 + 8))(v10, v12);
    swift_getKeyPath();
    v0[5] = v13;
    sub_21E11D2EC(&qword_280F6A900, type metadata accessor for FeedbackController, &protocol conformance descriptor for FeedbackController);
    sub_21E13D3C4();

    swift_beginAccess();
    v14 = *(v13 + 16);
    sub_21E141F14();

    (*(v8 + 8))(v7, v9);
  }

  v15 = v0[1];

  return v15();
}

uint64_t sub_21E11A0D0(uint64_t a1)
{
  v2[6] = a1;
  v2[7] = v1;
  v3 = sub_21E13F1B4();
  v2[8] = v3;
  v2[9] = *(v3 - 8);
  v2[10] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6D98, &qword_21E145DC0);
  v2[11] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEADA68, &qword_21E159258);
  v2[12] = swift_task_alloc();
  v4 = sub_21E13D4D4();
  v2[13] = v4;
  v2[14] = *(v4 - 8);
  v2[15] = swift_task_alloc();
  sub_21E1423C4();
  v2[16] = sub_21E1423B4();
  v6 = sub_21E142364();
  v2[17] = v6;
  v2[18] = v5;

  return MEMORY[0x2822009F8](sub_21E11A290, v6, v5);
}

uint64_t sub_21E11A290()
{
  v1 = v0[11];
  v2 = sub_21E13D994();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = swift_task_alloc();
  v0[19] = v3;
  *v3 = v0;
  v3[1] = sub_21E11A374;
  v5 = v0[11];
  v4 = v0[12];
  v6 = v0[6];

  return sub_21E11BFCC(v4, v6, v5, 0, 0);
}

uint64_t sub_21E11A374()
{
  v1 = *v0;
  v2 = *(*v0 + 88);

  sub_21DF23614(v2, &qword_27CEA6D98, &qword_21E145DC0);
  v3 = *(v1 + 144);
  v4 = *(v1 + 136);

  return MEMORY[0x2822009F8](sub_21E11A4C8, v4, v3);
}

uint64_t sub_21E11A4C8()
{
  v1 = v0[13];
  v2 = v0[14];
  v3 = v0[12];

  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_21DF23614(v0[12], &qword_27CEADA68, &qword_21E159258);
  }

  else
  {
    (*(v0[14] + 32))(v0[15], v0[12], v0[13]);
    sub_21E13EBC4();
    v4 = sub_21E13F1A4();
    v5 = sub_21E142554();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_21DF05000, v4, v5, "Sending a dislike", v6, 2u);
      MEMORY[0x223D540B0](v6, -1, -1);
    }

    v8 = v0[14];
    v7 = v0[15];
    v9 = v0[13];
    v11 = v0[9];
    v10 = v0[10];
    v13 = v0[7];
    v12 = v0[8];

    (*(v11 + 8))(v10, v12);
    swift_getKeyPath();
    v0[5] = v13;
    sub_21E11D2EC(&qword_280F6A900, type metadata accessor for FeedbackController, &protocol conformance descriptor for FeedbackController);
    sub_21E13D3C4();

    swift_beginAccess();
    v14 = *(v13 + 16);
    sub_21E141EF4();

    (*(v8 + 8))(v7, v9);
  }

  v15 = v0[1];

  return v15();
}

uint64_t sub_21E11A71C(uint64_t a1, char a2)
{
  *(v3 + 160) = a2;
  *(v3 + 48) = a1;
  *(v3 + 56) = v2;
  v4 = sub_21E13F1B4();
  *(v3 + 64) = v4;
  *(v3 + 72) = *(v4 - 8);
  *(v3 + 80) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6D98, &qword_21E145DC0);
  *(v3 + 88) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEADA68, &qword_21E159258);
  *(v3 + 96) = swift_task_alloc();
  v5 = sub_21E13D4D4();
  *(v3 + 104) = v5;
  *(v3 + 112) = *(v5 - 8);
  *(v3 + 120) = swift_task_alloc();
  sub_21E1423C4();
  *(v3 + 128) = sub_21E1423B4();
  v7 = sub_21E142364();
  *(v3 + 136) = v7;
  *(v3 + 144) = v6;

  return MEMORY[0x2822009F8](sub_21E11A8E0, v7, v6);
}

uint64_t sub_21E11A8E0()
{
  v1 = v0[11];
  v2 = sub_21E13D994();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = swift_task_alloc();
  v0[19] = v3;
  *v3 = v0;
  v3[1] = sub_21E11A9C4;
  v5 = v0[11];
  v4 = v0[12];
  v6 = v0[6];

  return sub_21E11BFCC(v4, v6, v5, 0, 0);
}

uint64_t sub_21E11A9C4()
{
  v1 = *v0;
  v2 = *(*v0 + 88);

  sub_21DF23614(v2, &qword_27CEA6D98, &qword_21E145DC0);
  v3 = *(v1 + 144);
  v4 = *(v1 + 136);

  return MEMORY[0x2822009F8](sub_21E11AB18, v4, v3);
}

uint64_t sub_21E11AB18()
{
  v1 = v0[13];
  v2 = v0[14];
  v3 = v0[12];

  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_21DF23614(v0[12], &qword_27CEADA68, &qword_21E159258);
  }

  else
  {
    (*(v0[14] + 32))(v0[15], v0[12], v0[13]);
    sub_21E13EBC4();
    v4 = sub_21E13F1A4();
    v5 = sub_21E142554();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_21DF05000, v4, v5, "Sending a like", v6, 2u);
      MEMORY[0x223D540B0](v6, -1, -1);
    }

    v8 = v0[14];
    v7 = v0[15];
    v9 = v0[13];
    v11 = v0[9];
    v10 = v0[10];
    v13 = v0[7];
    v12 = v0[8];

    (*(v11 + 8))(v10, v12);
    swift_getKeyPath();
    v0[5] = v13;
    sub_21E11D2EC(&qword_280F6A900, type metadata accessor for FeedbackController, &protocol conformance descriptor for FeedbackController);
    sub_21E13D3C4();

    swift_beginAccess();
    v14 = *(v13 + 16);
    sub_21E141EE4();

    (*(v8 + 8))(v7, v9);
  }

  v15 = v0[1];

  return v15();
}

uint64_t sub_21E11AD78(uint64_t a1)
{
  v2[6] = a1;
  v2[7] = v1;
  v3 = sub_21E13F1B4();
  v2[8] = v3;
  v2[9] = *(v3 - 8);
  v2[10] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6D98, &qword_21E145DC0);
  v2[11] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEADA68, &qword_21E159258);
  v2[12] = swift_task_alloc();
  v4 = sub_21E13D4D4();
  v2[13] = v4;
  v2[14] = *(v4 - 8);
  v2[15] = swift_task_alloc();
  sub_21E1423C4();
  v2[16] = sub_21E1423B4();
  v6 = sub_21E142364();
  v2[17] = v6;
  v2[18] = v5;

  return MEMORY[0x2822009F8](sub_21E11AF38, v6, v5);
}

uint64_t sub_21E11AF38()
{
  v1 = v0[11];
  v2 = sub_21E13D994();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = swift_task_alloc();
  v0[19] = v3;
  *v3 = v0;
  v3[1] = sub_21E11B01C;
  v5 = v0[11];
  v4 = v0[12];
  v6 = v0[6];

  return sub_21E11BFCC(v4, v6, v5, 0, 0);
}

uint64_t sub_21E11B01C()
{
  v1 = *v0;
  v2 = *(*v0 + 88);

  sub_21DF23614(v2, &qword_27CEA6D98, &qword_21E145DC0);
  v3 = *(v1 + 144);
  v4 = *(v1 + 136);

  return MEMORY[0x2822009F8](sub_21E11B170, v4, v3);
}

uint64_t sub_21E11B170()
{
  v1 = v0[13];
  v2 = v0[14];
  v3 = v0[12];

  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_21DF23614(v0[12], &qword_27CEADA68, &qword_21E159258);
  }

  else
  {
    (*(v0[14] + 32))(v0[15], v0[12], v0[13]);
    sub_21E13EBC4();
    v4 = sub_21E13F1A4();
    v5 = sub_21E142554();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_21DF05000, v4, v5, "Sending a report a concern", v6, 2u);
      MEMORY[0x223D540B0](v6, -1, -1);
    }

    v8 = v0[14];
    v7 = v0[15];
    v9 = v0[13];
    v11 = v0[9];
    v10 = v0[10];
    v13 = v0[7];
    v12 = v0[8];

    (*(v11 + 8))(v10, v12);
    swift_getKeyPath();
    v0[5] = v13;
    sub_21E11D2EC(&qword_280F6A900, type metadata accessor for FeedbackController, &protocol conformance descriptor for FeedbackController);
    sub_21E13D3C4();

    swift_beginAccess();
    v14 = *(v13 + 16);
    sub_21E141F14();

    (*(v8 + 8))(v7, v9);
  }

  v15 = v0[1];

  return v15();
}

uint64_t sub_21E11B3C4(uint64_t a1)
{
  v2[15] = a1;
  v2[16] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAC550, &qword_21E146C90);
  v2[17] = swift_task_alloc();
  sub_21E13EEE4();
  v2[18] = swift_task_alloc();
  v3 = sub_21E13D994();
  v2[19] = v3;
  v2[20] = *(v3 - 8);
  v2[21] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6D28, &unk_21E145D10);
  v2[22] = swift_task_alloc();
  v4 = sub_21E13D504();
  v2[23] = v4;
  v2[24] = *(v4 - 8);
  v2[25] = swift_task_alloc();
  sub_21E1423C4();
  v2[26] = sub_21E1423B4();
  v6 = sub_21E142364();
  v2[27] = v6;
  v2[28] = v5;

  return MEMORY[0x2822009F8](sub_21E11B5B0, v6, v5);
}

uint64_t sub_21E11B5B0()
{
  v1 = v0[16];
  swift_getKeyPath();
  v0[11] = v1;
  sub_21E11D2EC(&qword_280F6A900, type metadata accessor for FeedbackController, &protocol conformance descriptor for FeedbackController);
  sub_21E13D3C4();

  swift_beginAccess();
  v2 = *(v1 + 24);
  v0[29] = v2;
  if (v2)
  {
    swift_getKeyPath();
    v0[12] = v2;
    sub_21E11D2EC(&qword_280F6B250, type metadata accessor for NewSaliencyModel, &protocol conformance descriptor for NewSaliencyModel);

    sub_21E13D3C4();

    v3 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__targetEntity;
    swift_beginAccess();
    v0[30] = *(v2 + v3);
    type metadata accessor for ViewAnnotator();

    v4 = swift_task_alloc();
    v0[31] = v4;
    *v4 = v0;
    v4[1] = sub_21E11B820;
    v5 = v0[22];

    return static ViewAnnotator.getPresentedViewAnnotatedContentAsync()(v5);
  }

  else
  {

    v7 = v0[1];

    return v7(0);
  }
}

uint64_t sub_21E11B820()
{
  v1 = *v0;

  v2 = *(v1 + 224);
  v3 = *(v1 + 216);

  return MEMORY[0x2822009F8](sub_21E11B940, v3, v2);
}

uint64_t sub_21E11B940()
{
  v2 = *(v0 + 184);
  v1 = *(v0 + 192);
  v3 = *(v0 + 176);
  if ((*(v1 + 48))(v3, 1, v2) == 1)
  {

    sub_21DF23614(v3, &qword_27CEA6D28, &unk_21E145D10);

    v4 = *(v0 + 8);

    return v4(0);
  }

  else
  {
    v6 = *(v0 + 200);
    v7 = *(v0 + 160);
    v8 = *(v0 + 168);
    v9 = *(v0 + 144);
    v10 = *(v0 + 152);
    v18 = *(v0 + 136);
    v11 = *(v0 + 120);
    (*(v1 + 32))(v6, v3, v2);
    v12 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6D20, &unk_21E147360) + 48);
    (*(v1 + 16))(v8, v6, v2);
    (*(v1 + 56))(v8, 0, 1, v2);
    *(v8 + v12) = v11;
    (*(v7 + 104))(v8, *MEMORY[0x277D78F68], v10);

    sub_21E13D954();
    (*(v7 + 8))(v8, v10);
    type metadata accessor for NewActionModel(0);
    swift_allocObject();
    v13 = NewActionModel.init(pill:)(v9);
    *(v0 + 256) = v13;
    v14 = sub_21E13DFD4();
    (*(*(v14 - 8) + 56))(v18, 1, 1, v14);
    *(v0 + 272) = 9;
    v15 = swift_task_alloc();
    *(v0 + 264) = v15;
    *v15 = v0;
    v15[1] = sub_21E11BC38;
    v16 = *(v0 + 240);
    v17 = *(v0 + 136);

    return NewSaliencyModel.performAction(_:from:executionParameter:updatesPresentation:analyticsSource:)(v13, v16, v17, 0, (v0 + 272));
  }
}

uint64_t sub_21E11BC38()
{
  v1 = *v0;
  v2 = *(*v0 + 136);

  sub_21DF23614(v2, &qword_27CEAC550, &qword_21E146C90);
  v3 = *(v1 + 224);
  v4 = *(v1 + 216);

  return MEMORY[0x2822009F8](sub_21E11BD8C, v4, v3);
}

uint64_t sub_21E11BD8C()
{
  v1 = v0[30];
  v2 = v0[24];
  v9 = v0[23];
  v10 = v0[25];

  swift_getKeyPath();
  v0[13] = v1;
  sub_21E11D2EC(&qword_280F6B6A0, type metadata accessor for NewEntityModel, &protocol conformance descriptor for NewEntityModel);
  sub_21E13D3C4();

  v3 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__cardModel;
  swift_beginAccess();
  v4 = *(v1 + v3);
  swift_getKeyPath();
  v0[14] = v4;
  sub_21E11D2EC(&qword_280F69240, type metadata accessor for CardModel, &protocol conformance descriptor for CardModel);

  sub_21E13D3C4();

  (*(v2 + 8))(v10, v9);
  v5 = *(v4 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__feedback);
  v6 = *(v4 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__feedback + 8);
  sub_21DF355B8(v5, *(v4 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__feedback + 8));

  if (v6 != 255)
  {
    if ((v6 & 1) == 0)
    {
      goto LABEL_5;
    }

    sub_21DF34758(v5, v6);
  }

  v5 = 0;
LABEL_5:

  v7 = v0[1];

  return v7(v5);
}

uint64_t sub_21E11BFCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[13] = a5;
  v6[14] = v5;
  v6[11] = a3;
  v6[12] = a4;
  v6[9] = a1;
  v6[10] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8838, &qword_21E1520B0);
  v6[15] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6D98, &qword_21E145DC0);
  v6[16] = swift_task_alloc();
  v7 = sub_21E13F1B4();
  v6[17] = v7;
  v6[18] = *(v7 - 8);
  v6[19] = swift_task_alloc();
  sub_21E1423C4();
  v6[20] = sub_21E1423B4();
  v9 = sub_21E142364();
  v6[21] = v9;
  v6[22] = v8;

  return MEMORY[0x2822009F8](sub_21E11C138, v9, v8);
}

uint64_t sub_21E11C138()
{
  v1 = v0[10];
  v2 = sub_21E13DF64();
  v0[23] = v2;
  v3 = *(v2 - 8);
  v0[24] = v3;
  v5 = v3 + 48;
  v4 = *(v3 + 48);
  v0[25] = v4;
  v0[26] = v5 & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v4(v1, 1, v2) == 1)
  {
    v6 = _s20VisualIntelligenceUI13ViewAnnotatorC16extraAnnotations3for6resultSay15FeedbackService15FBKSInteractionC16AnnotatedContentVG0aB4Core13BuiltInActionOSg_SSSgtFZ_0(v0[11], v0[12], v0[13]);
  }

  else
  {
    v6 = _s20VisualIntelligenceUI13ViewAnnotatorC16extraAnnotations3forSay15FeedbackService15FBKSInteractionC16AnnotatedContentVG0aB4Core17ResultLookupStateOSg_tFZ_0(v1);
  }

  v7 = v6;
  v0[27] = v6;
  v8 = swift_task_alloc();
  v0[28] = v8;
  *v8 = v0;
  v8[1] = sub_21E11C274;

  return sub_21E11B3C4(v7);
}

uint64_t sub_21E11C274(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 232) = a1;

  v3 = *(v2 + 176);
  v4 = *(v2 + 168);

  return MEMORY[0x2822009F8](sub_21E11C3C0, v4, v3);
}

uint64_t sub_21E11C3C0()
{
  v1 = v0[29];

  if (v1)
  {
    v2 = v0[29];
    v0[8] = v2;
    sub_21E13EBC4();
    v3 = sub_21E13F1A4();
    v4 = sub_21E142554();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = v0[29];
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      *v6 = 138412290;
      *(v6 + 4) = v2;
      *v7 = v5;
      v8 = v2;
      _os_log_impl(&dword_21DF05000, v3, v4, "Sending a feedback with interaction data: %@", v6, 0xCu);
      sub_21DF23614(v7, &unk_27CEAC540, &qword_21E146680);
      MEMORY[0x223D540B0](v7, -1, -1);
      MEMORY[0x223D540B0](v6, -1, -1);
    }

    v9 = v0[25];
    v10 = v0[23];
    v12 = v0[18];
    v11 = v0[19];
    v13 = v0[17];
    v14 = v0[10];

    (*(v12 + 8))(v11, v13);
    if (v9(v14, 1, v10) == 1)
    {
      v15 = v0[15];
      v16 = v0[11];
      (*(v0[24] + 56))(v15, 1, 1, v0[23]);
      swift_beginAccess();
      sub_21E11DF50(v0 + 8, v15, v16);
      swift_endAccess();
      v17 = &qword_27CEA8838;
      v18 = &qword_21E1520B0;
    }

    else
    {
      v15 = v0[16];
      v21 = v0[10];
      v22 = sub_21E13D994();
      (*(*(v22 - 8) + 56))(v15, 1, 1, v22);
      swift_beginAccess();
      sub_21E11DF50(v0 + 8, v21, v15);
      swift_endAccess();
      v17 = &qword_27CEA6D98;
      v18 = &qword_21E145DC0;
    }

    sub_21DF23614(v15, v17, v18);
    v23 = v0[9];
    *v23 = v2;
    v24 = *MEMORY[0x277D08530];
    v25 = sub_21E13D4D4();
    v26 = *(v25 - 8);
    (*(v26 + 104))(v23, v24, v25);
    (*(v26 + 56))(v23, 0, 1, v25);
  }

  else
  {
    v19 = v0[9];
    v20 = sub_21E13D4D4();
    (*(*(v20 - 8) + 56))(v19, 1, 1, v20);
  }

  v27 = v0[1];

  return v27();
}

uint64_t FeedbackController.deinit()
{

  v1 = OBJC_IVAR____TtC20VisualIntelligenceUI18FeedbackController__lastResetDate;
  v2 = sub_21E13D304();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC20VisualIntelligenceUI18FeedbackController___observationRegistrar;
  v4 = sub_21E13D404();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t FeedbackController.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC20VisualIntelligenceUI18FeedbackController__lastResetDate;
  v2 = sub_21E13D304();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC20VisualIntelligenceUI18FeedbackController___observationRegistrar;
  v4 = sub_21E13D404();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t sub_21E11C8F8(uint64_t a1)
{
  result = sub_21E13D304();
  if (v2 <= 0x3F)
  {
    result = sub_21E13D404();
    if (v3 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t dispatch thunk of FeedbackController.sendDislike(action:result:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(*v3 + 280) + **(*v3 + 280));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_21DF8DAF8;

  return v10(a1, a2, a3);
}

uint64_t dispatch thunk of FeedbackController.sendLike(action:result:showFeedbackForm:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = (*(*v4 + 288) + **(*v4 + 288));
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = sub_21DF8DAF8;

  return v12(a1, a2, a3, a4);
}

uint64_t dispatch thunk of FeedbackController.reportConcern(action:result:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(*v3 + 296) + **(*v3 + 296));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_21DF8DAF8;

  return v10(a1, a2, a3);
}

uint64_t dispatch thunk of FeedbackController.sendDislike(resultLookupState:)(uint64_t a1)
{
  v6 = (*(*v1 + 312) + **(*v1 + 312));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_21DF4AA04;

  return v6(a1);
}

uint64_t dispatch thunk of FeedbackController.sendLike(resultLookupState:showFeedbackForm:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 320) + **(*v2 + 320));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_21DF8DAF8;

  return v8(a1, a2);
}

uint64_t dispatch thunk of FeedbackController.reportConcern(resultLookupState:)(uint64_t a1)
{
  v6 = (*(*v1 + 328) + **(*v1 + 328));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_21DF8DAF8;

  return v6(a1);
}

uint64_t sub_21E11D2EC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_21E11D334(uint64_t a1)
{
  v29 = sub_21E13F1B4();
  v2 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8838, &qword_21E1520B0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v28 - v6;
  v8 = sub_21E13DF64();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v28 - v13;
  sub_21DF236C0(a1, v7, &qword_27CEA8838, &qword_21E1520B0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_21DF23614(v7, &qword_27CEA8838, &qword_21E1520B0);
    sub_21E13EBC4();
    v15 = sub_21E13F1A4();
    v16 = sub_21E142564();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_21DF05000, v15, v16, "No result lookup state provided", v17, 2u);
      MEMORY[0x223D540B0](v17, -1, -1);
    }

    (*(v2 + 8))(v4, v29);
  }

  else
  {
    (*(v9 + 32))(v14, v7, v8);
    (*(v9 + 16))(v11, v14, v8);
    v18 = (*(v9 + 88))(v11, v8);
    if (v18 != *MEMORY[0x277D79268])
    {
      if (v18 == *MEMORY[0x277D79270])
      {
        v21 = *(v9 + 8);
        v21(v14, v8);
        v21(v11, v8);
        return 0;
      }

      if (v18 != *MEMORY[0x277D79280])
      {
        if (v18 == *MEMORY[0x277D79220])
        {
          v22 = *(v9 + 8);
          v22(v14, v8);
          v22(v11, v8);
          return 2;
        }

        if (v18 != *MEMORY[0x277D79230] && v18 != *MEMORY[0x277D79260])
        {
          if (v18 == *MEMORY[0x277D79248])
          {
            v23 = *(v9 + 8);
            v23(v14, v8);
            v23(v11, v8);
            return 5;
          }

          if (v18 == *MEMORY[0x277D79288])
          {
            v24 = *(v9 + 8);
            v24(v14, v8);
            v24(v11, v8);
            return 3;
          }

          if (v18 == *MEMORY[0x277D79228])
          {
            v25 = *(v9 + 8);
            v25(v14, v8);
            v25(v11, v8);
            return 1;
          }

          if (v18 == *MEMORY[0x277D79240])
          {
            v26 = *(v9 + 8);
            v26(v14, v8);
            v26(v11, v8);
            return 6;
          }

          if (v18 != *MEMORY[0x277D79290] && v18 != *MEMORY[0x277D79258])
          {
            if (v18 == *MEMORY[0x277D79238])
            {
              v27 = *(v9 + 8);
              v27(v14, v8);
              v27(v11, v8);
              return 7;
            }

            if (v18 != *MEMORY[0x277D79278] && v18 != *MEMORY[0x277D79250])
            {
              result = sub_21E142B04();
              __break(1u);
              return result;
            }
          }
        }
      }
    }

    v19 = *(v9 + 8);
    v19(v14, v8);
    v19(v11, v8);
  }

  return 8;
}

uint64_t sub_21E11D8FC(uint64_t a1)
{
  v24 = sub_21E13F1B4();
  v2 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6D98, &qword_21E145DC0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v23 - v6;
  v8 = sub_21E13D994();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v23 - v13;
  sub_21DF236C0(a1, v7, &qword_27CEA6D98, &qword_21E145DC0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_21DF23614(v7, &qword_27CEA6D98, &qword_21E145DC0);
    sub_21E13EBC4();
    v15 = sub_21E13F1A4();
    v16 = sub_21E142564();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_21DF05000, v15, v16, "No action provided", v17, 2u);
      MEMORY[0x223D540B0](v17, -1, -1);
    }

    (*(v2 + 8))(v4, v24);
    return 8;
  }

  (*(v9 + 32))(v14, v7, v8);
  (*(v9 + 16))(v11, v14, v8);
  v19 = (*(v9 + 88))(v11, v8);
  if (v19 != *MEMORY[0x277D78F80])
  {
    if (v19 == *MEMORY[0x277D78F30])
    {
      v21 = *(v9 + 8);
      v21(v14, v8);
      v21(v11, v8);
    }

    else if (v19 == *MEMORY[0x277D78F38])
    {
      (*(v9 + 8))(v14, v8);
      (*(v9 + 96))(v11, v8);
      v22 = sub_21E13E3F4();
      (*(*(v22 - 8) + 8))(v11, v22);
    }

    else if (v19 == *MEMORY[0x277D78F68])
    {
      (*(v9 + 8))(v14, v8);
      (*(v9 + 96))(v11, v8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6D20, &unk_21E147360);

      sub_21DF23614(v11, &qword_27CEA6D28, &unk_21E145D10);
    }

    else
    {
      if (v19 == *MEMORY[0x277D78F70])
      {
        (*(v9 + 8))(v14, v8);
        return 0;
      }

      if (v19 != *MEMORY[0x277D78F78])
      {
        if (v19 == *MEMORY[0x277D78F28])
        {
          (*(v9 + 8))(v14, v8);
          return 6;
        }

        if (v19 == *MEMORY[0x277D78F98] || v19 == *MEMORY[0x277D78F20])
        {
          (*(v9 + 8))(v14, v8);
          return 5;
        }

        if (v19 == *MEMORY[0x277D78F88])
        {
          (*(v9 + 8))(v14, v8);
          return 3;
        }

        if (v19 == *MEMORY[0x277D78F60])
        {
          (*(v9 + 8))(v14, v8);
          return 1;
        }

        if (v19 != *MEMORY[0x277D78F58] && v19 != *MEMORY[0x277D78F48] && v19 != *MEMORY[0x277D78F90] && v19 != *MEMORY[0x277D78F50] && v19 != *MEMORY[0x277D78FA0] && v19 != *MEMORY[0x277D78F40])
        {
          result = sub_21E142B04();
          __break(1u);
          return result;
        }
      }

      (*(v9 + 8))(v14, v8);
    }

    return 8;
  }

  v20 = *(v9 + 8);
  v20(v14, v8);
  v20(v11, v8);
  return 2;
}

uint64_t sub_21E11DF50(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21E13E1A4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_21E13F1B4();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v58 - v15;
  v17 = sub_21E13DF64();
  if ((*(*(v17 - 8) + 48))(a2, 1, v17) == 1)
  {
    v18 = sub_21E11D8FC(a3);
    if (v18 == 8)
    {
      sub_21E13EBC4();
      v19 = sub_21E13F1A4();
      v20 = sub_21E142564();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        *v21 = 0;
        _os_log_impl(&dword_21DF05000, v19, v20, "No feedback sub-feature defined for built in action", v21, 2u);
        MEMORY[0x223D540B0](v21, -1, -1);
      }

      return (*(v11 + 8))(v13, v10);
    }

LABEL_11:
    v26 = v18;
    if (v18 <= 4u)
    {
LABEL_12:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CEADA70, &unk_21E159400);
      v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6BE0, &qword_21E145528);
      v28 = (*(*(v27 - 8) + 80) + 32) & ~*(*(v27 - 8) + 80);
      v29 = swift_allocObject();
      v60 = xmmword_21E145380;
      *(v29 + 16) = xmmword_21E145380;
      v30 = v29 + v28;
      strcpy(v30, ":sub_feature");
      *(v30 + 13) = 0;
      *(v30 + 14) = -5120;
      v31 = *MEMORY[0x277D08658];
      v32 = sub_21E13D534();
      (*(*(v32 - 8) + 104))(v30, v31, v32);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA76D0, &qword_21E1476B0);
      v33 = swift_allocObject();
      *(v33 + 16) = v60;
      if (v26 > 3)
      {
        if (v26 > 5)
        {
          if (v26 == 6)
          {
            v34 = 0xEC00000068637261;
            v35 = 0x65735F6567616D69;
          }

          else
          {
            v34 = 0xEC000000736E6F69;
            v35 = 0x7463615F74786574;
          }
        }

        else
        {
          if (v26 == 4)
          {
            v35 = 0x74616C736E617274;
          }

          else
          {
            v35 = 0x7A6972616D6D7573;
          }

          v34 = 0xE900000000000065;
        }
      }

      else if (v26 > 1)
      {
        if (v26 == 2)
        {
          v34 = 0xE800000000000000;
          v35 = 0x696F705F7370616DLL;
        }

        else
        {
          v34 = 0xEA00000000006475;
          v35 = 0x6F6C615F64616572;
        }
      }

      else if (v26)
      {
        v34 = 0xEE006E6F69746165;
        v35 = 0x72635F746E657665;
      }

      else
      {
        v34 = 0xEE0070755F6B6F6FLL;
        v35 = 0x6C5F6C6175736976;
      }

      v57 = *(v27 + 48);
      *(v33 + 32) = v35;
      *(v33 + 40) = v34;
      *(v30 + v57) = v33;
      sub_21DF2723C(v29);
      swift_setDeallocating();
      sub_21DF23614(v30, &qword_27CEA6BE0, &qword_21E145528);
      swift_deallocClassInstance();
      return sub_21E13D514();
    }

    if (v18 == 5)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CEADA70, &unk_21E159400);
      v50 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6BE0, &qword_21E145528) - 8);
      v51 = (*(*v50 + 80) + 32) & ~*(*v50 + 80);
      v52 = swift_allocObject();
      *(v52 + 16) = xmmword_21E145380;
      v53 = v52 + v51;
      v54 = v50[14];
      strcpy(v53, ":sub_feature");
      *(v53 + 13) = 0;
      *(v53 + 14) = -5120;
      v55 = *MEMORY[0x277D08658];
      v56 = sub_21E13D534();
      (*(*(v56 - 8) + 104))(v53, v55, v56);
      *(v53 + v54) = &unk_282F3C470;
      sub_21DF2723C(v52);
      swift_setDeallocating();
      sub_21DF23614(v53, &qword_27CEA6BE0, &qword_21E145528);
      swift_deallocClassInstance();
    }

    else
    {
      if (v18 != 6)
      {
        goto LABEL_12;
      }

      *&v60 = *a1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CEADA70, &unk_21E159400);
      v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6BE0, &qword_21E145528);
      v37 = *(*(v36 - 8) + 72);
      v38 = (*(*(v36 - 8) + 80) + 32) & ~*(*(v36 - 8) + 80);
      v39 = swift_allocObject();
      *(v39 + 16) = xmmword_21E147C80;
      v40 = v39 + v38;
      v58 = *(v36 + 48);
      v59 = v39;
      strcpy(v40, ":sub_feature");
      *(v40 + 13) = 0;
      *(v40 + 14) = -5120;
      v41 = *MEMORY[0x277D08658];
      v42 = sub_21E13D534();
      v43 = *(*(v42 - 8) + 104);
      v43(v40, v41, v42);
      *(v40 + v58) = &unk_282F3C440;
      v44 = (v40 + v37);
      v58 = *(v36 + 48);
      *v44 = 0xD000000000000012;
      v44[1] = 0x800000021E15FC90;
      v43(v44, v41, v42);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA76D0, &qword_21E1476B0);
      v45 = swift_allocObject();
      *(v45 + 16) = xmmword_21E145380;
      sub_21E13E154();
      v46 = sub_21E13E164();
      v48 = v47;
      (*(v7 + 8))(v9, v6);
      *(v45 + 32) = v46;
      *(v45 + 40) = v48;
      v49 = v59;
      *(v44 + v58) = v45;
      sub_21DF2723C(v49);
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
    }

    return sub_21E13D514();
  }

  v18 = sub_21E11D334(a2);
  if (v18 != 8)
  {
    goto LABEL_11;
  }

  sub_21E13EBC4();
  v23 = sub_21E13F1A4();
  v24 = sub_21E142564();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&dword_21DF05000, v23, v24, "No feedback sub-feature defined for result lookup", v25, 2u);
    MEMORY[0x223D540B0](v25, -1, -1);
  }

  return (*(v11 + 8))(v16, v10);
}

uint64_t sub_21E11E870()
{
  swift_getKeyPath();
  sub_21E125408(&unk_280F6B040, type metadata accessor for OverlayViewModel, &protocol conformance descriptor for OverlayViewModel);
  sub_21E13D3C4();

  return *(v0 + 32);
}

uint64_t sub_21E11E910(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEADA80, &qword_21E148AB0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = v13 - v7;
  v9 = OBJC_IVAR____TtC20VisualIntelligenceUI16OverlayViewModel__overlaySupportData;
  swift_beginAccess();
  sub_21E1251B0(v1 + v9, v8);
  v10 = sub_21E124B68(v8, a1);
  sub_21DF23614(v8, &qword_27CEADA80, &qword_21E148AB0);
  if (v10)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v13[-2] = v1;
    v13[-1] = a1;
    v13[2] = v1;
    sub_21E125408(&unk_280F6B040, type metadata accessor for OverlayViewModel, &protocol conformance descriptor for OverlayViewModel);
    sub_21E13D3B4();
  }

  else
  {
    sub_21E1251B0(a1, v8);
    sub_21E1251B0(v1 + v9, v5);
    swift_beginAccess();
    sub_21E125220(v8, v1 + v9);
    swift_endAccess();
    sub_21E121958(v5);
    sub_21DF23614(v5, &qword_27CEADA80, &qword_21E148AB0);
    sub_21DF23614(v8, &qword_27CEADA80, &qword_21E148AB0);
  }

  return sub_21DF23614(a1, &qword_27CEADA80, &qword_21E148AB0);
}

uint64_t sub_21E11EB68()
{
  swift_getKeyPath();
  sub_21E125408(&unk_280F6B040, type metadata accessor for OverlayViewModel, &protocol conformance descriptor for OverlayViewModel);
  sub_21E13D3C4();

  return swift_unknownObjectWeakLoadStrong();
}

uint64_t OverlayViewModel.__allocating_init(saliencyModel:)(uint64_t a1)
{
  v2 = swift_allocObject();
  OverlayViewModel.init(saliencyModel:)(a1);
  return v2;
}

void *sub_21E11EC4C()
{
  swift_getKeyPath();
  sub_21E125408(&unk_280F6B040, type metadata accessor for OverlayViewModel, &protocol conformance descriptor for OverlayViewModel);
  sub_21E13D3C4();

  v1 = *(v0 + 152);
  v2 = v1;
  return v1;
}

id sub_21E11ECF4(char a1)
{
  v2 = v1;
  if (*(v1 + 32) == (a1 & 1))
  {
    *(v1 + 32) = a1 & 1;
    swift_getKeyPath();
    sub_21E125408(&unk_280F6B040, type metadata accessor for OverlayViewModel, &protocol conformance descriptor for OverlayViewModel);
    sub_21E13D3C4();

    v5 = (*(v1 + 32) ^ 1) & 1;
    v6 = OBJC_IVAR____TtC20VisualIntelligenceUI16OverlayViewModel__isActive;
    if (v5 == *(v2 + OBJC_IVAR____TtC20VisualIntelligenceUI16OverlayViewModel__isActive))
    {
      *(v2 + OBJC_IVAR____TtC20VisualIntelligenceUI16OverlayViewModel__isActive) = v5;
      swift_getKeyPath();
      sub_21E13D3C4();

      if (*(v2 + OBJC_IVAR____TtC20VisualIntelligenceUI16OverlayViewModel__analysis) && (swift_getKeyPath(), sub_21E13D3C4(), , *(v2 + v6) == 1))
      {
        return [*(v2 + 24) setActiveInteractionTypes_];
      }

      else
      {
        return [*(v2 + 24) setActiveInteractionTypes_];
      }
    }

    else
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x28223BE20](KeyPath);
      sub_21E13D3B4();
    }
  }

  else
  {
    v3 = swift_getKeyPath();
    MEMORY[0x28223BE20](v3);
    sub_21E125408(&unk_280F6B040, type metadata accessor for OverlayViewModel, &protocol conformance descriptor for OverlayViewModel);
    sub_21E13D3B4();
  }
}

void sub_21E11EFC8(void *a1)
{
  v3 = *(v1 + 152);
  if (!v3)
  {
    if (!a1)
    {
      v7 = 0;
      v5 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21E125408(&unk_280F6B040, type metadata accessor for OverlayViewModel, &protocol conformance descriptor for OverlayViewModel);
    sub_21E13D3B4();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_21E13D734();
  v4 = v3;
  v5 = a1;
  v6 = sub_21E1426D4();

  if ((v6 & 1) == 0)
  {
    goto LABEL_6;
  }

  v7 = *(v1 + 152);
LABEL_8:
  *(v1 + 152) = a1;
  v9 = v5;

  sub_21E120C84();
}

uint64_t sub_21E11F168(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v12.origin.x = a1;
  v12.origin.y = a2;
  v12.size.width = a3;
  v12.size.height = a4;
  if (CGRectEqualToRect(*(v4 + 48), v12))
  {
    *(v4 + 48) = a1;
    *(v4 + 56) = a2;
    *(v4 + 64) = a3;
    *(v4 + 72) = a4;

    return sub_21E1202F0();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21E125408(&unk_280F6B040, type metadata accessor for OverlayViewModel, &protocol conformance descriptor for OverlayViewModel);
    sub_21E13D3B4();
  }
}

id sub_21E11F2DC(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v12.origin.x = a1;
  v12.origin.y = a2;
  v12.size.width = a3;
  v12.size.height = a4;
  if (CGRectEqualToRect(*(v4 + 88), v12))
  {
    *(v4 + 88) = a1;
    *(v4 + 96) = a2;
    *(v4 + 104) = a3;
    *(v4 + 112) = a4;

    return sub_21E1209C4();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21E125408(&unk_280F6B040, type metadata accessor for OverlayViewModel, &protocol conformance descriptor for OverlayViewModel);
    sub_21E13D3B4();
  }
}

double sub_21E11F450()
{
  swift_getKeyPath();
  sub_21E125408(&unk_280F6B040, type metadata accessor for OverlayViewModel, &protocol conformance descriptor for OverlayViewModel);
  sub_21E13D3C4();

  return *(v0 + 120);
}

double sub_21E11F4F4()
{
  swift_getKeyPath();
  sub_21E125408(&unk_280F6B040, type metadata accessor for OverlayViewModel, &protocol conformance descriptor for OverlayViewModel);
  sub_21E13D3C4();

  return *(v0 + 88);
}

void *sub_21E11F598()
{
  swift_getKeyPath();
  sub_21E125408(&unk_280F6B040, type metadata accessor for OverlayViewModel, &protocol conformance descriptor for OverlayViewModel);
  sub_21E13D3C4();

  v1 = *(v0 + 40);
  v2 = v1;
  return v1;
}

uint64_t sub_21E11F640(char a1)
{
  if (*(v1 + 80) == (a1 & 1))
  {
    *(v1 + 80) = a1 & 1;
    swift_getKeyPath();
    sub_21E125408(&unk_280F6B040, type metadata accessor for OverlayViewModel, &protocol conformance descriptor for OverlayViewModel);
    sub_21E13D3C4();

    if (*(v1 + 80) == 1)
    {
      sub_21E141D64();
      sub_21E13F864();
    }
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21E125408(&unk_280F6B040, type metadata accessor for OverlayViewModel, &protocol conformance descriptor for OverlayViewModel);
    sub_21E13D3B4();
  }

  return result;
}

uint64_t sub_21E11F808()
{
  swift_getKeyPath();
  sub_21E125408(&unk_280F6B040, type metadata accessor for OverlayViewModel, &protocol conformance descriptor for OverlayViewModel);
  sub_21E13D3C4();

  return *(v0 + 80);
}

uint64_t OverlayViewModel.init(saliencyModel:)(uint64_t a1)
{
  *(v1 + 24) = [objc_allocWithZone(MEMORY[0x277D78510]) init];
  *(v1 + 32) = 0;
  *(v1 + 40) = 0;
  _s20VisualIntelligenceUI30VIUIAnnotationCanvasRenderablePAAE12contentsRectSo6CGRectVvg_0();
  *(v1 + 48) = v3;
  *(v1 + 56) = v4;
  *(v1 + 64) = v5;
  *(v1 + 72) = v6;
  *(v1 + 80) = 0;
  _s20VisualIntelligenceUI30VIUIAnnotationCanvasRenderablePAAE12contentsRectSo6CGRectVvg_0();
  *(v1 + 88) = v7;
  *(v1 + 96) = v8;
  *(v1 + 104) = v9;
  *(v1 + 112) = v10;
  _s20VisualIntelligenceUI30VIUIAnnotationCanvasRenderablePAAE12contentsRectSo6CGRectVvg_0();
  *(v1 + 120) = v11;
  *(v1 + 128) = v12;
  *(v1 + 136) = v13;
  *(v1 + 144) = v14;
  *(v1 + 152) = 0;
  swift_unknownObjectWeakInit();
  *(v1 + 168) = 0;
  v15 = OBJC_IVAR____TtC20VisualIntelligenceUI16OverlayViewModel__overlaySupportData;
  v16 = sub_21E13E084();
  (*(*(v16 - 8) + 56))(v1 + v15, 1, 1, v16);
  *(v1 + OBJC_IVAR____TtC20VisualIntelligenceUI16OverlayViewModel__analysis) = 0;
  *(v1 + OBJC_IVAR____TtC20VisualIntelligenceUI16OverlayViewModel__isActive) = 0;
  sub_21E13D3F4();
  *(v1 + 16) = a1;
  *(v1 + OBJC_IVAR____TtC20VisualIntelligenceUI16OverlayViewModel__isTranslating) = 0;
  [*(v1 + 24) setWantsAutomaticContentsRectCalculation_];
  return v1;
}

id sub_21E11F9C8(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v13.origin.x = a1;
  v13.origin.y = a2;
  v13.size.width = a3;
  v13.size.height = a4;
  if (CGRectEqualToRect(*(v4 + 120), v13))
  {
    *(v4 + 120) = a1;
    *(v4 + 128) = a2;
    *(v4 + 136) = a3;
    *(v4 + 144) = a4;
    v9 = *(v4 + 24);

    return [v9 updateContentsRect];
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21E125408(&unk_280F6B040, type metadata accessor for OverlayViewModel, &protocol conformance descriptor for OverlayViewModel);
    sub_21E13D3B4();
  }
}

id sub_21E11FB48(char a1)
{
  v2 = OBJC_IVAR____TtC20VisualIntelligenceUI16OverlayViewModel__isActive;
  if (*(v1 + OBJC_IVAR____TtC20VisualIntelligenceUI16OverlayViewModel__isActive) == (a1 & 1))
  {
    *(v1 + OBJC_IVAR____TtC20VisualIntelligenceUI16OverlayViewModel__isActive) = a1 & 1;
    swift_getKeyPath();
    sub_21E125408(&unk_280F6B040, type metadata accessor for OverlayViewModel, &protocol conformance descriptor for OverlayViewModel);
    sub_21E13D3C4();

    if (*(v1 + OBJC_IVAR____TtC20VisualIntelligenceUI16OverlayViewModel__analysis) && (swift_getKeyPath(), sub_21E13D3C4(), , *(v1 + v2) == 1))
    {
      return [*(v1 + 24) setActiveInteractionTypes_];
    }

    else
    {
      return [*(v1 + 24) setActiveInteractionTypes_];
    }
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21E125408(&unk_280F6B040, type metadata accessor for OverlayViewModel, &protocol conformance descriptor for OverlayViewModel);
    sub_21E13D3B4();
  }
}

id sub_21E11FD48(char a1)
{
  v2 = OBJC_IVAR____TtC20VisualIntelligenceUI16OverlayViewModel__isTranslating;
  if (*(v1 + OBJC_IVAR____TtC20VisualIntelligenceUI16OverlayViewModel__isTranslating) == (a1 & 1))
  {
    *(v1 + OBJC_IVAR____TtC20VisualIntelligenceUI16OverlayViewModel__isTranslating) = a1 & 1;
    swift_getKeyPath();
    sub_21E125408(&unk_280F6B040, type metadata accessor for OverlayViewModel, &protocol conformance descriptor for OverlayViewModel);
    sub_21E13D3C4();

    v6 = *(v1 + v2);
    MEMORY[0x28223BE20](v5);
    sub_21E141D64();
    sub_21E13F864();

    return [*(v1 + 24) set:v6 isShowingTranslationOverlay:?];
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21E125408(&unk_280F6B040, type metadata accessor for OverlayViewModel, &protocol conformance descriptor for OverlayViewModel);
    sub_21E13D3B4();
  }
}

id sub_21E11FF54(uint64_t a1, char a2)
{
  *(a1 + 32) = a2;
  swift_getKeyPath();
  sub_21E125408(&unk_280F6B040, type metadata accessor for OverlayViewModel, &protocol conformance descriptor for OverlayViewModel);
  sub_21E13D3C4();

  v3 = (*(a1 + 32) ^ 1) & 1;
  v4 = OBJC_IVAR____TtC20VisualIntelligenceUI16OverlayViewModel__isActive;
  if (v3 == *(a1 + OBJC_IVAR____TtC20VisualIntelligenceUI16OverlayViewModel__isActive))
  {
    *(a1 + OBJC_IVAR____TtC20VisualIntelligenceUI16OverlayViewModel__isActive) = v3;
    swift_getKeyPath();
    sub_21E13D3C4();

    if (*(a1 + OBJC_IVAR____TtC20VisualIntelligenceUI16OverlayViewModel__analysis) && (swift_getKeyPath(), sub_21E13D3C4(), , *(a1 + v4) == 1))
    {
      return [*(a1 + 24) setActiveInteractionTypes_];
    }

    else
    {
      return [*(a1 + 24) setActiveInteractionTypes_];
    }
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21E13D3B4();
  }
}

void sub_21E120160(void *a1)
{
  v2 = v1;
  v4 = *(v1 + 40);
  if (!v4)
  {
    if (!a1)
    {
      v8 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21E125408(&unk_280F6B040, type metadata accessor for OverlayViewModel, &protocol conformance descriptor for OverlayViewModel);
    sub_21E13D3B4();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_21DF3ED18(0, &qword_280F68C28, 0x277D755B8);
  v5 = v4;
  v6 = a1;
  v7 = sub_21E1426D4();

  if ((v7 & 1) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(v2 + 40);
LABEL_8:
  *(v2 + 40) = a1;
}

uint64_t sub_21E1202F0()
{
  v1 = *(v0 + 2);
  swift_getKeyPath();
  sub_21E125408(&qword_280F6B250, type metadata accessor for NewSaliencyModel, &protocol conformance descriptor for NewSaliencyModel);
  sub_21E13D3C4();

  v2 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__userSelection;
  swift_beginAccess();
  v3 = *(v1 + v2);
  swift_getKeyPath();
  sub_21E125408(&unk_280F6B040, type metadata accessor for OverlayViewModel, &protocol conformance descriptor for OverlayViewModel);

  sub_21E13D3C4();

  v5 = v0[6];
  v4 = v0[7];
  v7 = v0[8];
  v6 = v0[9];
  v8 = (v3 + OBJC_IVAR____TtC20VisualIntelligenceUI19FocusSelectionModel__normalizedVisibleRect);
  swift_beginAccess();
  v11.origin.x = v5;
  v11.origin.y = v4;
  v11.size.width = v7;
  v11.size.height = v6;
  if (CGRectEqualToRect(*v8, v11))
  {
    v8->origin.x = v5;
    v8->origin.y = v4;
    v8->size.width = v7;
    v8->size.height = v6;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21E125408(&qword_280F6A5B0, type metadata accessor for FocusSelectionModel, &protocol conformance descriptor for FocusSelectionModel);
    sub_21E13D3B4();
  }
}

double sub_21E12056C()
{
  swift_getKeyPath();
  sub_21E125408(&unk_280F6B040, type metadata accessor for OverlayViewModel, &protocol conformance descriptor for OverlayViewModel);
  sub_21E13D3C4();

  return *(v0 + 48);
}

uint64_t sub_21E120610(double *a1, double a2, double a3, double a4, double a5)
{
  a1[6] = a2;
  a1[7] = a3;
  a1[8] = a4;
  a1[9] = a5;
  return sub_21E1202F0();
}

uint64_t sub_21E120644(uint64_t a1, char a2)
{
  *(a1 + 80) = a2;
  swift_getKeyPath();
  sub_21E125408(&unk_280F6B040, type metadata accessor for OverlayViewModel, &protocol conformance descriptor for OverlayViewModel);
  sub_21E13D3C4();

  if (*(a1 + 80) == 1)
  {
    sub_21E141D64();
    sub_21E13F864();
  }

  return result;
}

void sub_21E120738(uint64_t a1)
{
  v1 = *(a1 + 16);
  NewSaliencyModel.presentedEntity.setter(0);
  swift_getKeyPath();
  v12 = v1;
  sub_21E125408(&qword_280F6B250, type metadata accessor for NewSaliencyModel, &protocol conformance descriptor for NewSaliencyModel);
  sub_21E13D3C4();

  v2 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__entities;
  swift_beginAccess();
  v3 = *(v1 + v2);
  if (v3 >> 62)
  {
    v4 = sub_21E1427B4();
    if (!v4)
    {
      return;
    }
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v4)
    {
      return;
    }
  }

  if (v4 < 1)
  {
    __break(1u);
  }

  else
  {
    v5 = v3 & 0xC000000000000001;

    v6 = 0;
    v10 = v3 & 0xC000000000000001;
    do
    {
      if (v5)
      {
        v8 = MEMORY[0x223D530F0](v6, v3);
      }

      else
      {
        v8 = *(v3 + 8 * v6 + 32);
      }

      if (*(v8 + OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__prominence) == 2)
      {
      }

      else
      {
        KeyPath = swift_getKeyPath();
        v11 = &v9;
        MEMORY[0x28223BE20](KeyPath);
        *(&v9 - 2) = v8;
        *(&v9 - 8) = 2;
        v13 = v8;
        sub_21E125408(&qword_280F6B6A0, type metadata accessor for NewEntityModel, &protocol conformance descriptor for NewEntityModel);
        sub_21E13D3B4();

        v5 = v10;
      }

      ++v6;
    }

    while (v4 != v6);
  }
}

id sub_21E1209C4()
{
  v1 = v0;
  v2 = *(v0 + 16);
  swift_getKeyPath();
  sub_21E125408(&qword_280F6B250, type metadata accessor for NewSaliencyModel, &protocol conformance descriptor for NewSaliencyModel);
  sub_21E13D3C4();

  v3 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__userSelection;
  swift_beginAccess();
  v4 = *(v2 + v3);
  swift_getKeyPath();
  sub_21E125408(&unk_280F6B040, type metadata accessor for OverlayViewModel, &protocol conformance descriptor for OverlayViewModel);

  sub_21E13D3C4();

  v6 = *(v1 + 88);
  v5 = *(v1 + 96);
  v8 = *(v1 + 104);
  v7 = *(v1 + 112);
  v9 = (v4 + OBJC_IVAR____TtC20VisualIntelligenceUI19FocusSelectionModel__contentsRect);
  swift_beginAccess();
  v12.origin.x = v6;
  v12.origin.y = v5;
  v12.size.width = v8;
  v12.size.height = v7;
  if (CGRectEqualToRect(*v9, v12))
  {
    v9->origin.x = v6;
    v9->origin.y = v5;
    v9->size.width = v8;
    v9->size.height = v7;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21E125408(&qword_280F6A5B0, type metadata accessor for FocusSelectionModel, &protocol conformance descriptor for FocusSelectionModel);
    sub_21E13D3B4();
  }

  return [*(v1 + 24) updateContentsRect];
}

id sub_21E120C50(double *a1, double a2, double a3, double a4, double a5)
{
  a1[11] = a2;
  a1[12] = a3;
  a1[13] = a4;
  a1[14] = a5;
  return sub_21E1209C4();
}

void sub_21E120C84()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD980, &qword_21E146EB0);
  MEMORY[0x28223BE20](v2 - 8);
  v40[0] = v40 - v3;
  swift_getKeyPath();
  v4 = OBJC_IVAR____TtC20VisualIntelligenceUI16OverlayViewModel___observationRegistrar;
  v42 = v0;
  v5 = sub_21E125408(&unk_280F6B040, type metadata accessor for OverlayViewModel, &protocol conformance descriptor for OverlayViewModel);
  sub_21E13D3C4();

  v6 = *(v0 + 152);
  v40[1] = v4;
  v40[2] = v5;
  if (v6)
  {
    v7 = v6;
    v8 = sub_21E13D714();
    v10 = v9;
  }

  else
  {
    v8 = 0;
    v10 = 0;
  }

  v11 = *(v1 + 16);
  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);
  v40[-4] = v11;
  v40[-3] = v8;
  v40[-2] = v10;
  v42 = v11;
  sub_21E125408(&qword_280F6B250, type metadata accessor for NewSaliencyModel, &protocol conformance descriptor for NewSaliencyModel);
  swift_unknownObjectRetain();
  sub_21E13D3B4();

  swift_unknownObjectRelease();
  swift_getKeyPath();
  v42 = v11;
  sub_21E13D3C4();

  v13 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__userSelection;
  swift_beginAccess();
  v14 = *(v11 + v13);
  if (v6)
  {
    v15 = v6;

    v16 = sub_21E13D704();
  }

  else
  {

    v16 = 0;
  }

  v17 = OBJC_IVAR____TtC20VisualIntelligenceUI19FocusSelectionModel_pixelBuffer;
  swift_beginAccess();
  v18 = *(v14 + v17);
  *(v14 + v17) = v16;
  v19 = v16;

  sub_21E1039BC(v16);
  v20 = OBJC_IVAR____TtC20VisualIntelligenceUI19FocusSelectionModel__active;
  swift_beginAccess();
  if (((v8 != 0) ^ *(v14 + v20)))
  {
    v21 = swift_getKeyPath();
    MEMORY[0x28223BE20](v21);
    v40[-2] = v14;
    LOBYTE(v40[-1]) = v8 != 0;
    v41 = v14;
    sub_21E125408(&qword_280F6A5B0, type metadata accessor for FocusSelectionModel, &protocol conformance descriptor for FocusSelectionModel);
    sub_21E13D3B4();
  }

  else
  {
    *(v14 + v20) = v8 != 0;
  }

  v22 = OBJC_IVAR____TtC20VisualIntelligenceUI16OverlayViewModel__analysis;
  if (*(v1 + OBJC_IVAR____TtC20VisualIntelligenceUI16OverlayViewModel__analysis))
  {
    v23 = swift_getKeyPath();
    MEMORY[0x28223BE20](v23);
    v40[-2] = v1;
    v40[-1] = 0;
    v41 = v1;
    sub_21E13D3B4();
  }

  else
  {
    sub_21E124E58(0);
  }

  v24 = OBJC_IVAR____TtC20VisualIntelligenceUI16OverlayViewModel__isActive;
  if (*(v1 + OBJC_IVAR____TtC20VisualIntelligenceUI16OverlayViewModel__isActive))
  {
    v25 = swift_getKeyPath();
    MEMORY[0x28223BE20](v25);
    v40[-2] = v1;
    LOBYTE(v40[-1]) = 0;
    v41 = v1;
    sub_21E13D3B4();

    if (!v6)
    {
      goto LABEL_26;
    }
  }

  else
  {
    *(v1 + OBJC_IVAR____TtC20VisualIntelligenceUI16OverlayViewModel__isActive) = 0;
    swift_getKeyPath();
    v41 = v1;
    sub_21E13D3C4();

    if (*(v1 + v22) && (swift_getKeyPath(), v41 = v1, sub_21E13D3C4(), , *(v1 + v24) == 1))
    {
      [*(v1 + 24) setActiveInteractionTypes_];
    }

    else
    {
      [*(v1 + 24) setActiveInteractionTypes_];
    }

    if (!v6)
    {
      goto LABEL_26;
    }
  }

  v26 = v6;
  v27 = sub_21E13D724();

  v28 = sub_21E13D754();
  if (!v28)
  {

LABEL_26:
    swift_unknownObjectRelease();

    return;
  }

  objc_opt_self();
  v29 = swift_dynamicCastObjCClass();
  if (v29)
  {
    v30 = v29;
    v31 = sub_21E1420F4();
    v32 = NSSelectorFromString(v31);

    if ([v30 respondsToSelector_])
    {
      v33 = sub_21E1423F4();
      v34 = v40[0];
      (*(*(v33 - 8) + 56))(v40[0], 1, 1, v33);
      v35 = swift_allocObject();
      swift_weakInit();
      sub_21E1423C4();
      v36 = v26;
      swift_unknownObjectRetain();

      v37 = sub_21E1423B4();
      v38 = swift_allocObject();
      v39 = MEMORY[0x277D85700];
      v38[2] = v37;
      v38[3] = v39;
      v38[4] = v30;
      v38[5] = v35;
      v38[6] = v6;

      sub_21E0C2E04(0, 0, v34, &unk_21E159758, v38);
      swift_unknownObjectRelease();

      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();

      swift_unknownObjectRelease();
    }
  }

  else
  {

    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
  }
}

id sub_21E121448@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21E125408(&unk_280F6B040, type metadata accessor for OverlayViewModel, &protocol conformance descriptor for OverlayViewModel);
  sub_21E13D3C4();

  v4 = *(v3 + 152);
  *a2 = v4;

  return v4;
}

void sub_21E121500(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_21E11EFC8(v1);
}

void sub_21E121530(char a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if ((a1 & 1) == 0)
  {
    sub_21E0CD660(0);
    return;
  }

  swift_getKeyPath();
  v13 = v2;
  sub_21E125408(&qword_280F6B250, type metadata accessor for NewSaliencyModel, &protocol conformance descriptor for NewSaliencyModel);
  sub_21E13D3C4();

  v3 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__entities;
  swift_beginAccess();
  v4 = *(v2 + v3);
  if (v4 >> 62)
  {
    v5 = sub_21E1427B4();
    if (!v5)
    {
      return;
    }
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v5)
    {
      return;
    }
  }

  if (v5 < 1)
  {
    __break(1u);
  }

  else
  {
    v6 = v4 & 0xC000000000000001;

    v7 = 0;
    v11 = v4 & 0xC000000000000001;
    do
    {
      if (v6)
      {
        v9 = MEMORY[0x223D530F0](v7, v4);
      }

      else
      {
        v9 = *(v4 + 8 * v7 + 32);
      }

      if (*(v9 + OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__prominence) == 2)
      {
      }

      else
      {
        KeyPath = swift_getKeyPath();
        v12 = &v10;
        MEMORY[0x28223BE20](KeyPath);
        *(&v10 - 2) = v9;
        *(&v10 - 8) = 2;
        v14 = v9;
        sub_21E125408(&qword_280F6B6A0, type metadata accessor for NewEntityModel, &protocol conformance descriptor for NewEntityModel);
        sub_21E13D3B4();

        v6 = v11;
      }

      ++v7;
    }

    while (v5 != v7);
  }
}

uint64_t sub_21E1217C4(uint64_t a1)
{
  swift_unknownObjectWeakAssign();
  v2 = *(v1 + 24);
  v3 = sub_21E1420F4();
  v4 = NSSelectorFromString(v3);

  if ([v2 respondsToSelector_])
  {
    swift_getKeyPath();
    sub_21E125408(&unk_280F6B040, type metadata accessor for OverlayViewModel, &protocol conformance descriptor for OverlayViewModel);
    sub_21E13D3C4();

    [v2 set:swift_unknownObjectWeakLoadStrong() viHostDelegate:?];
    swift_unknownObjectRelease();
    return swift_unknownObjectRelease();
  }

  else
  {

    return swift_unknownObjectRelease();
  }
}

uint64_t sub_21E121958(uint64_t a1)
{
  v2 = v1;
  v4 = sub_21E13E084();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEADA80, &qword_21E148AB0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v21 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD610, &qword_21E1573E0);
  v12 = v11 - 8;
  MEMORY[0x28223BE20](v11);
  v14 = &v21 - v13;
  swift_getKeyPath();
  v22 = v1;
  sub_21E125408(&unk_280F6B040, type metadata accessor for OverlayViewModel, &protocol conformance descriptor for OverlayViewModel);
  sub_21E13D3C4();

  v15 = OBJC_IVAR____TtC20VisualIntelligenceUI16OverlayViewModel__overlaySupportData;
  swift_beginAccess();
  v16 = *(v12 + 56);
  sub_21E1251B0(v2 + v15, v14);
  sub_21E1251B0(a1, &v14[v16]);
  v17 = *(v5 + 48);
  if (v17(v14, 1, v4) == 1)
  {
    if (v17(&v14[v16], 1, v4) == 1)
    {
      return sub_21DF23614(v14, &qword_27CEADA80, &qword_21E148AB0);
    }

    goto LABEL_6;
  }

  sub_21E1251B0(v14, v10);
  if (v17(&v14[v16], 1, v4) == 1)
  {
    (*(v5 + 8))(v10, v4);
LABEL_6:
    sub_21DF23614(v14, &qword_27CEAD610, &qword_21E1573E0);
    return sub_21E121DA8();
  }

  (*(v5 + 32))(v7, &v14[v16], v4);
  sub_21E125408(&qword_280F690D0, MEMORY[0x277D79330], MEMORY[0x277D79338]);
  v19 = sub_21E142074();
  v20 = *(v5 + 8);
  v20(v7, v4);
  v20(v10, v4);
  result = sub_21DF23614(v14, &qword_27CEADA80, &qword_21E148AB0);
  if ((v19 & 1) == 0)
  {
    return sub_21E121DA8();
  }

  return result;
}

uint64_t sub_21E121CE0@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_21E125408(&unk_280F6B040, type metadata accessor for OverlayViewModel, &protocol conformance descriptor for OverlayViewModel);
  sub_21E13D3C4();

  v3 = OBJC_IVAR____TtC20VisualIntelligenceUI16OverlayViewModel__overlaySupportData;
  swift_beginAccess();
  return sub_21E1251B0(v5 + v3, a1);
}

uint64_t sub_21E121DA8()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD980, &qword_21E146EB0);
  MEMORY[0x28223BE20](v2 - 8);
  v61 = v51 - v3;
  v4 = sub_21E13D834();
  v57 = *(v4 - 8);
  v58 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEADA80, &qword_21E148AB0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v51 - v8;
  v10 = sub_21E13E084();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v59 = v12;
  v60 = v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = v51 - v14;
  v16 = *(v0 + 16);
  v17 = sub_21E12308C();
  sub_21E0CCB90(v17);
  swift_getKeyPath();
  v18 = OBJC_IVAR____TtC20VisualIntelligenceUI16OverlayViewModel___observationRegistrar;
  v64 = v1;
  sub_21E125408(&unk_280F6B040, type metadata accessor for OverlayViewModel, &protocol conformance descriptor for OverlayViewModel);
  v56 = v18;
  sub_21E13D3C4();

  v19 = OBJC_IVAR____TtC20VisualIntelligenceUI16OverlayViewModel__overlaySupportData;
  swift_beginAccess();
  v20 = v1 + v19;
  v21 = v11;
  sub_21E1251B0(v20, v9);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_21DF23614(v9, &qword_27CEADA80, &qword_21E148AB0);
  }

  v23 = (v11 + 32);
  v55 = *(v21 + 32);
  v55(v15, v9, v10);
  v24 = v21;
  v25 = sub_21E13E044();
  if (!v25)
  {
    return (*(v21 + 8))(v15, v10);
  }

  v26 = v25;
  v53 = v24;
  v54 = v10;
  v27 = objc_allocWithZone(MEMORY[0x277CE2CC8]);
  v52 = v26;
  v28 = [v27 initWithCRDocumentOutputRegion:v26 requestRevision:0];
  swift_getKeyPath();
  v63 = v16;
  sub_21E125408(&qword_280F6B250, type metadata accessor for NewSaliencyModel, &protocol conformance descriptor for NewSaliencyModel);
  sub_21E13D3C4();

  v29 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__entryPoint;
  swift_beginAccess();
  v31 = v57;
  v30 = v58;
  (*(v57 + 16))(v6, v16 + v29, v58);
  v32 = sub_21E13D7F4();
  (*(v31 + 8))(v6, v30);
  v51[0] = v28;
  v51[1] = v23;
  if (v32)
  {
    v33 = [objc_opt_self() analysisWithDocumentObservation_];
  }

  else
  {
    swift_getKeyPath();
    v62 = v1;
    sub_21E13D3C4();

    v34 = *(v1 + 152);
    if (v34 && (v35 = v34, v36 = sub_21E13D724(), v35, v37 = sub_21E13D754(), v36, v37))
    {
      objc_opt_self();
      v33 = swift_dynamicCastObjCClass();
      if (v33)
      {
        v38 = objc_opt_self();
        v39 = v28;
        v33 = [v38 analysisWithDocumentObservation:v39 request:{v33, v51[0]}];
      }

      swift_unknownObjectRelease();
    }

    else
    {
      v33 = 0;
    }
  }

  v58 = sub_21E123CD0();
  v40 = sub_21E1423F4();
  v41 = v61;
  (*(*(v40 - 8) + 56))(v61, 1, 1, v40);
  v42 = v53;
  v43 = v54;
  v44 = v15;
  v45 = v60;
  (*(v53 + 16))(v60, v44, v54);
  sub_21E1423C4();

  v46 = sub_21E1423B4();
  v47 = (*(v42 + 80) + 56) & ~*(v42 + 80);
  v48 = swift_allocObject();
  v49 = MEMORY[0x277D85700];
  *(v48 + 2) = v46;
  *(v48 + 3) = v49;
  *(v48 + 4) = v1;
  *(v48 + 5) = v33;
  *(v48 + 6) = v58;
  v55(&v48[v47], v45, v43);
  v50 = v33;
  sub_21E0C2E04(0, 0, v41, &unk_21E159898, v48);

  return (*(v42 + 8))(v44, v43);
}

uint64_t sub_21E122448@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21E125408(&unk_280F6B040, type metadata accessor for OverlayViewModel, &protocol conformance descriptor for OverlayViewModel);
  sub_21E13D3C4();

  v4 = OBJC_IVAR____TtC20VisualIntelligenceUI16OverlayViewModel__overlaySupportData;
  swift_beginAccess();
  return sub_21E1251B0(v3 + v4, a2);
}

uint64_t sub_21E122510(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEADA80, &qword_21E148AB0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v6 - v3;
  sub_21E1251B0(a1, &v6 - v3);
  return sub_21E11E910(v4);
}

uint64_t sub_21E1225A4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEADA80, &qword_21E148AB0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v12[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v9 = &v12[-v8];
  sub_21E1251B0(a2, &v12[-v8]);
  v10 = OBJC_IVAR____TtC20VisualIntelligenceUI16OverlayViewModel__overlaySupportData;
  swift_beginAccess();
  sub_21E1251B0(a1 + v10, v6);
  swift_beginAccess();
  sub_21E125220(v9, a1 + v10);
  swift_endAccess();
  sub_21E121958(v6);
  sub_21DF23614(v6, &qword_27CEADA80, &qword_21E148AB0);
  return sub_21DF23614(v9, &qword_27CEADA80, &qword_21E148AB0);
}

void *sub_21E1226EC()
{
  swift_getKeyPath();
  sub_21E125408(&unk_280F6B040, type metadata accessor for OverlayViewModel, &protocol conformance descriptor for OverlayViewModel);
  sub_21E13D3C4();

  v1 = *(v0 + OBJC_IVAR____TtC20VisualIntelligenceUI16OverlayViewModel__analysis);
  v2 = v1;
  return v1;
}

id sub_21E12279C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21E125408(&unk_280F6B040, type metadata accessor for OverlayViewModel, &protocol conformance descriptor for OverlayViewModel);
  sub_21E13D3C4();

  v4 = *(v3 + OBJC_IVAR____TtC20VisualIntelligenceUI16OverlayViewModel__analysis);
  *a2 = v4;

  return v4;
}

void sub_21E12285C(void *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC20VisualIntelligenceUI16OverlayViewModel__analysis);
  if (!v2)
  {
    if (!a1)
    {
      goto LABEL_4;
    }

LABEL_8:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21E125408(&unk_280F6B040, type metadata accessor for OverlayViewModel, &protocol conformance descriptor for OverlayViewModel);
    sub_21E13D3B4();

    return;
  }

  if (!a1)
  {
    goto LABEL_8;
  }

  sub_21DF3ED18(0, &qword_27CEADA88, 0x277D78508);
  v3 = v2;
  v4 = sub_21E1426D4();

  if ((v4 & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  sub_21E124E58(a1);
}

Swift::Void __swiftcall OverlayViewModel.reset()()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC20VisualIntelligenceUI16OverlayViewModel__isActive;
  if (*(v0 + OBJC_IVAR____TtC20VisualIntelligenceUI16OverlayViewModel__isActive))
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21E125408(&unk_280F6B040, type metadata accessor for OverlayViewModel, &protocol conformance descriptor for OverlayViewModel);
    sub_21E13D3B4();
  }

  else
  {
    *(v0 + OBJC_IVAR____TtC20VisualIntelligenceUI16OverlayViewModel__isActive) = 0;
    swift_getKeyPath();
    sub_21E125408(&unk_280F6B040, type metadata accessor for OverlayViewModel, &protocol conformance descriptor for OverlayViewModel);
    sub_21E13D3C4();

    if (*(v0 + OBJC_IVAR____TtC20VisualIntelligenceUI16OverlayViewModel__analysis) && (swift_getKeyPath(), sub_21E13D3C4(), , *(v0 + v2) == 1))
    {
      [*(v0 + 24) setActiveInteractionTypes_];
    }

    else
    {
      [*(v0 + 24) setActiveInteractionTypes_];
    }
  }

  sub_21E11FD48(0);
  v4 = *(v0 + 24);
  [*(v1 + 24) setActiveInteractionTypes_];
  [v4 resetSelection];
  [v4 updateContentsRect];
  sub_21E0C8F90(0);
  sub_21E11F640(0);
}

uint64_t sub_21E122C44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD980, &qword_21E146EB0);
  v6[5] = swift_task_alloc();
  v6[6] = sub_21E1423C4();
  v6[7] = sub_21E1423B4();
  v8 = sub_21E142364();

  return MEMORY[0x2822009F8](sub_21E122D1C, v8, v7);
}

uint64_t sub_21E122D1C()
{
  v1 = v0[2];

  v2 = [v1 blockingGenerateImage];
  if (v2)
  {
    v3 = v2;
    v4 = v0[5];
    v5 = v0[3];
    v6 = v0[4];
    v7 = sub_21E1423F4();
    (*(*(v7 - 8) + 56))(v4, 1, 1, v7);
    v8 = v6;
    v9 = v3;

    v10 = sub_21E1423B4();
    v11 = swift_allocObject();
    v12 = MEMORY[0x277D85700];
    v11[2] = v10;
    v11[3] = v12;
    v11[4] = v5;
    v11[5] = v6;
    v11[6] = v9;
    sub_21E0C2E04(0, 0, v4, &unk_21E159768, v11);
  }

  v13 = v0[1];

  return v13();
}

uint64_t sub_21E122E7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[7] = a5;
  v6[8] = a6;
  v6[6] = a4;
  sub_21E1423C4();
  v6[9] = sub_21E1423B4();
  v8 = sub_21E142364();

  return MEMORY[0x2822009F8](sub_21E122F18, v8, v7);
}

uint64_t sub_21E122F18()
{

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = v0[7];
    swift_getKeyPath();
    v0[5] = v2;
    sub_21E125408(&unk_280F6B040, type metadata accessor for OverlayViewModel, &protocol conformance descriptor for OverlayViewModel);
    sub_21E13D3C4();

    v4 = *(v2 + 152);
    if (v3)
    {
      if (!v4)
      {
        goto LABEL_6;
      }

      v5 = v0[7];
      sub_21E13D734();
      v6 = v4;
      v7 = v5;
      v8 = sub_21E1426D4();

      if ((v8 & 1) == 0)
      {
        goto LABEL_6;
      }
    }

    else if (v4)
    {
      goto LABEL_6;
    }

    v9 = v0[8];
    v10 = v9;
    sub_21E120160(v9);
LABEL_6:
  }

  v11 = v0[1];

  return v11();
}

uint64_t sub_21E12308C()
{
  v27 = sub_21E13D344();
  v1 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v3 = &v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_21E13D384();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = sub_21E1420E4();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = swift_allocObject();
  swift_weakInit();
  sub_21E142084();
  sub_21DF3ED18(0, &qword_280F68C20, 0x277CCA8D8);
  if (!sub_21E1426B4())
  {
    v7 = [objc_opt_self() mainBundle];
  }

  sub_21E13D374();
  v8 = sub_21E142184();
  v10 = v9;
  swift_getKeyPath();
  v29 = v0;
  sub_21E125408(&unk_280F6B040, type metadata accessor for OverlayViewModel, &protocol conformance descriptor for OverlayViewModel);
  sub_21E13D3C4();

  v11 = *(v0 + OBJC_IVAR____TtC20VisualIntelligenceUI16OverlayViewModel__isTranslating);
  type metadata accessor for NewActionModel(0);
  v12 = swift_allocObject();
  *(v12 + 32) = 1;
  *(v12 + 40) = 0;
  *(v12 + 48) = 0;
  *(v12 + 72) = 0;
  *(v12 + 80) = 0;
  v13 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewActionModel__semanticDataDetectorActionable;
  v14 = sub_21E13F274();
  (*(*(v14 - 8) + 56))(v12 + v13, 1, 1, v14);
  v15 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewActionModel__pill;
  v16 = sub_21E13EEE4();
  (*(*(v16 - 8) + 56))(v12 + v15, 1, 1, v16);
  *(v12 + OBJC_IVAR____TtC20VisualIntelligenceUI14NewActionModel__isSelected) = 0;
  *(v12 + OBJC_IVAR____TtC20VisualIntelligenceUI14NewActionModel__specialActionType) = 1;
  sub_21E13D3F4();
  _s20VisualIntelligenceUI9CardModelC2id14cardTopPadding0g6BottomI013executeActionAC10Foundation4UUIDV_12CoreGraphics7CGFloatVAMyAA03NewlE0CcSgtcfcfA__0();
  v17 = sub_21E13D314();
  v19 = v18;
  (*(v1 + 8))(v3, v27);
  *(v12 + 16) = v17;
  *(v12 + 24) = v19;
  *(v12 + 56) = v8;
  *(v12 + 64) = v10;
  *(v12 + 88) = 0x74616C736E617274;
  *(v12 + 96) = 0xE900000000000065;
  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);
  *(&v26 - 4) = v12;
  *(&v26 - 3) = sub_21E125400;
  *(&v26 - 2) = v6;
  v29 = v12;
  sub_21E125408(&qword_280F6B830, type metadata accessor for NewActionModel, &protocol conformance descriptor for NewActionModel);

  sub_21E13D3B4();

  v21 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewActionModel__isSelected;
  swift_beginAccess();
  if (v11 == *(v12 + v21))
  {
    *(v12 + v21) = v11;
  }

  else
  {
    v22 = swift_getKeyPath();
    MEMORY[0x28223BE20](v22);
    *(&v26 - 2) = v12;
    *(&v26 - 8) = v11;
    v28 = v12;
    sub_21E13D3B4();
  }

  v23 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewActionModel__specialActionType;
  if (*(v12 + OBJC_IVAR____TtC20VisualIntelligenceUI14NewActionModel__specialActionType))
  {
    v24 = swift_getKeyPath();
    MEMORY[0x28223BE20](v24);
    *(&v26 - 2) = v12;
    *(&v26 - 8) = 0;
    v28 = v12;
    sub_21E13D3B4();
  }

  else
  {

    *(v12 + v23) = 0;
  }

  return v12;
}

uint64_t sub_21E123684(uint64_t a1)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_21E123720();
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {

    NewSaliencyModel.toggleTranslateActionSelection()();
  }

  return result;
}

uint64_t sub_21E123720()
{
  v1 = v0;
  swift_getKeyPath();
  sub_21E125408(&unk_280F6B040, type metadata accessor for OverlayViewModel, &protocol conformance descriptor for OverlayViewModel);
  sub_21E13D3C4();

  swift_getKeyPath();
  sub_21E13D3E4();

  v2 = OBJC_IVAR____TtC20VisualIntelligenceUI16OverlayViewModel__isTranslating;
  *(v0 + OBJC_IVAR____TtC20VisualIntelligenceUI16OverlayViewModel__isTranslating) = (*(v0 + OBJC_IVAR____TtC20VisualIntelligenceUI16OverlayViewModel__isTranslating) & 1) == 0;
  swift_getKeyPath();
  sub_21E13D3C4();

  v3 = *(v0 + v2);
  sub_21E141D64();
  sub_21E13F864();

  [*(v1 + 24) set:v3 isShowingTranslationOverlay:?];
  swift_getKeyPath();
  sub_21E13D3D4();
}

id sub_21E1238E0(uint64_t a1, char a2)
{
  v3 = OBJC_IVAR____TtC20VisualIntelligenceUI16OverlayViewModel__isTranslating;
  *(a1 + OBJC_IVAR____TtC20VisualIntelligenceUI16OverlayViewModel__isTranslating) = a2;
  swift_getKeyPath();
  sub_21E125408(&unk_280F6B040, type metadata accessor for OverlayViewModel, &protocol conformance descriptor for OverlayViewModel);
  sub_21E13D3C4();

  v4 = *(a1 + v3);
  sub_21E141D64();
  sub_21E13F864();

  return [*(a1 + 24) set:v4 isShowingTranslationOverlay:?];
}

uint64_t sub_21E123A0C(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_21E125408(&unk_280F6B040, type metadata accessor for OverlayViewModel, &protocol conformance descriptor for OverlayViewModel);
  sub_21E13D3C4();

  return *(v2 + *a2);
}

uint64_t type metadata accessor for OverlayViewModel(uint64_t a1)
{
  result = qword_280F6B030;
  if (!qword_280F6B030)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21E123AF8@<X0>(uint64_t *a1@<X0>, void *a3@<X4>, _BYTE *a4@<X8>)
{
  v6 = *a1;
  swift_getKeyPath();
  sub_21E125408(&unk_280F6B040, type metadata accessor for OverlayViewModel, &protocol conformance descriptor for OverlayViewModel);
  sub_21E13D3C4();

  *a4 = *(v6 + *a3);
  return result;
}

id sub_21E123BAC(uint64_t a1, char a2)
{
  v3 = OBJC_IVAR____TtC20VisualIntelligenceUI16OverlayViewModel__isActive;
  *(a1 + OBJC_IVAR____TtC20VisualIntelligenceUI16OverlayViewModel__isActive) = a2;
  swift_getKeyPath();
  sub_21E125408(&unk_280F6B040, type metadata accessor for OverlayViewModel, &protocol conformance descriptor for OverlayViewModel);
  sub_21E13D3C4();

  if (*(a1 + OBJC_IVAR____TtC20VisualIntelligenceUI16OverlayViewModel__analysis))
  {
    swift_getKeyPath();
    sub_21E13D3C4();

    if (*(a1 + v3))
    {
      v4 = 9;
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  return [*(a1 + 24) setActiveInteractionTypes_];
}

uint64_t sub_21E123CD0()
{
  v0 = sub_21E1420F4();
  v1 = NSSelectorFromString(v0);

  sub_21DF3ED18(0, &qword_280F68C70, 0x277D78528);
  v2 = [swift_getObjCClassFromMetadata() instancesRespondToSelector_];
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v4 = sub_21E13E074();
    v5 = v4;
    v17 = v3;
    v6 = v4 & 0xFFFFFFFFFFFFFF8;
    if (v4 >> 62)
    {
LABEL_22:
      v7 = sub_21E1427B4();
      if (v7)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v7 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v7)
      {
LABEL_4:
        v8 = 0;
        v16 = MEMORY[0x277D84F90];
        while (1)
        {
          v9 = v8;
          while (1)
          {
            if ((v5 & 0xC000000000000001) != 0)
            {
              v10 = MEMORY[0x223D530F0](v9, v5);
            }

            else
            {
              if (v9 >= *(v6 + 16))
              {
                goto LABEL_21;
              }

              v10 = *(v5 + 8 * v9 + 32);
            }

            v11 = v10;
            v8 = v9 + 1;
            if (__OFADD__(v9, 1))
            {
              __break(1u);
LABEL_21:
              __break(1u);
              goto LABEL_22;
            }

            v12 = [v10 observation];
            if (v12)
            {
              break;
            }

LABEL_7:
            ++v9;
            if (v8 == v7)
            {
              goto LABEL_24;
            }
          }

          v13 = v12;
          v14 = [objc_allocWithZone(MEMORY[0x277D78528]) initWithBarcodeObservation_];

          if (!v14)
          {
            goto LABEL_7;
          }

          MEMORY[0x223D52AF0]();
          if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_21E1422F4();
          }

          sub_21E142324();
          v16 = v17;
          if (v8 == v7)
          {
LABEL_24:

            return v16;
          }
        }
      }
    }

    v16 = MEMORY[0x277D84F90];
    goto LABEL_24;
  }

  return v3;
}

uint64_t sub_21E123EE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[10] = a6;
  v7[11] = a7;
  v7[8] = a4;
  v7[9] = a5;
  v8 = sub_21E13EC94();
  v7[12] = v8;
  v7[13] = *(v8 - 8);
  v7[14] = swift_task_alloc();
  v7[15] = swift_task_alloc();
  v9 = sub_21E13E844();
  v7[16] = v9;
  v7[17] = *(v9 - 8);
  v7[18] = swift_task_alloc();
  sub_21E1423C4();
  v7[19] = sub_21E1423B4();
  v11 = sub_21E142364();

  return MEMORY[0x2822009F8](sub_21E124048, v11, v10);
}

id sub_21E124048()
{
  v2 = v0[8];
  v1 = v0[9];

  v3 = OBJC_IVAR____TtC20VisualIntelligenceUI16OverlayViewModel__analysis;
  v4 = *(v2 + OBJC_IVAR____TtC20VisualIntelligenceUI16OverlayViewModel__analysis);
  if (!v4)
  {
    if (!v1)
    {
      v9 = v0[9];
      v7 = v9;
      goto LABEL_8;
    }

LABEL_6:
    v11 = v0[8];
    v10 = v0[9];
    swift_getKeyPath();
    v12 = swift_task_alloc();
    *(v12 + 16) = v11;
    *(v12 + 24) = v10;
    v0[2] = v11;
    sub_21E125408(&unk_280F6B040, type metadata accessor for OverlayViewModel, &protocol conformance descriptor for OverlayViewModel);
    sub_21E13D3B4();

    goto LABEL_9;
  }

  if (!v1)
  {
    goto LABEL_6;
  }

  v5 = v0[9];
  sub_21DF3ED18(0, &qword_27CEADA88, 0x277D78508);
  v6 = v4;
  v7 = v5;
  v8 = sub_21E1426D4();

  if ((v8 & 1) == 0)
  {
    goto LABEL_6;
  }

  v9 = v0[9];
LABEL_8:
  v13 = v7;
  sub_21E124E58(v9);

LABEL_9:
  v15 = v0[8];
  v14 = v0[9];
  v16 = OBJC_IVAR____TtC20VisualIntelligenceUI16OverlayViewModel__isActive;
  if (((v14 != 0) ^ *(v15 + OBJC_IVAR____TtC20VisualIntelligenceUI16OverlayViewModel__isActive)))
  {
    v17 = v14 != 0;
    swift_getKeyPath();
    v18 = swift_task_alloc();
    *(v18 + 16) = v15;
    *(v18 + 24) = v17;
    v0[3] = v15;
    sub_21E125408(&unk_280F6B040, type metadata accessor for OverlayViewModel, &protocol conformance descriptor for OverlayViewModel);
    sub_21E13D3B4();
  }

  else
  {
    *(v15 + OBJC_IVAR____TtC20VisualIntelligenceUI16OverlayViewModel__isActive) = v14 != 0;
    swift_getKeyPath();
    v0[6] = v15;
    sub_21E125408(&unk_280F6B040, type metadata accessor for OverlayViewModel, &protocol conformance descriptor for OverlayViewModel);
    sub_21E13D3C4();

    if (*(v2 + v3) && (v20 = v0[8], swift_getKeyPath(), v0[7] = v20, sub_21E13D3C4(), , *(v15 + v16) == 1))
    {
      result = [*(v0[8] + 24) setActiveInteractionTypes_];
    }

    else
    {
      result = [*(v0[8] + 24) setActiveInteractionTypes_];
    }
  }

  v21 = v0[10];
  if (v21 >> 62)
  {
    result = sub_21E1427B4();
    v22 = result;
    if (!result)
    {
      goto LABEL_24;
    }
  }

  else
  {
    v22 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v22)
    {
      goto LABEL_24;
    }
  }

  if (v22 < 1)
  {
    __break(1u);
    return result;
  }

  v23 = 0;
  v24 = *(v0[8] + 24);
  v25 = v21 & 0xC000000000000001;
  v26 = v0[10] + 32;
  do
  {
    if (v25)
    {
      v27 = MEMORY[0x223D530F0](v23, v0[10]);
    }

    else
    {
      v27 = *(v26 + 8 * v23);
    }

    v28 = v27;
    ++v23;
    [v24 _addAsyncMRCElement_];
  }

  while (v22 != v23);
LABEL_24:
  v30 = v0[14];
  v29 = v0[15];
  v31 = v0[12];
  v32 = v0[13];
  v33 = v0[8];
  sub_21E13E054();
  sub_21E13E824();
  v0[4] = 0;
  sub_21E125408(&qword_280F69098, MEMORY[0x277D79608], MEMORY[0x277D79610]);
  sub_21E142AE4();
  sub_21E13E7F4();
  sub_21E142644();
  v34 = *(v32 + 8);
  v34(v30, v31);
  v34(v29, v31);
  v35 = _s20VisualIntelligenceUI30VIUIAnnotationCanvasRenderablePAAE12contentsRectSo6CGRectVvg_0();
  v36 = MEMORY[0x223D53780](v35);
  v38 = v37;
  v40 = v39;
  v42 = v41;
  v51.origin.x = v36;
  v51.origin.y = v37;
  v51.size.width = v39;
  v51.size.height = v41;
  v43 = CGRectEqualToRect(*(v33 + 120), v51);
  v45 = v0[17];
  v44 = v0[18];
  v46 = v0[16];
  v47 = v0[8];
  if (v43)
  {
    *(v33 + 120) = v36;
    *(v33 + 128) = v38;
    *(v33 + 136) = v40;
    *(v33 + 144) = v42;
    [*(v47 + 24) updateContentsRect];
    (*(v45 + 8))(v44, v46);
  }

  else
  {
    swift_getKeyPath();
    v48 = swift_task_alloc();
    *(v48 + 2) = v47;
    v48[3] = v36;
    v48[4] = v38;
    v48[5] = v40;
    v48[6] = v42;
    v0[5] = v47;
    sub_21E125408(&unk_280F6B040, type metadata accessor for OverlayViewModel, &protocol conformance descriptor for OverlayViewModel);
    sub_21E13D3B4();

    (*(v45 + 8))(v44, v46);
  }

  v49 = v0[1];

  return v49();
}

id *OverlayViewModel.deinit()
{

  sub_21DF18E8C((v0 + 20));
  sub_21DF23614(v0 + OBJC_IVAR____TtC20VisualIntelligenceUI16OverlayViewModel__overlaySupportData, &qword_27CEADA80, &qword_21E148AB0);

  v1 = OBJC_IVAR____TtC20VisualIntelligenceUI16OverlayViewModel___observationRegistrar;
  v2 = sub_21E13D404();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t OverlayViewModel.__deallocating_deinit()
{
  OverlayViewModel.deinit();

  return swift_deallocClassInstance();
}

void sub_21E124808(uint64_t a1)
{
  sub_21E124958(319);
  if (v1 <= 0x3F)
  {
    sub_21E13D404();
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_21E124958(uint64_t a1)
{
  if (!qword_280F690C0)
  {
    sub_21E13E084();
    v1 = sub_21E142724();
    if (!v2)
    {
      atomic_store(v1, &qword_280F690C0);
    }
  }
}

id sub_21E1249B0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 40);
  *(v1 + 88) = *(v0 + 24);
  *(v1 + 104) = v2;
  return sub_21E1209C4();
}

void sub_21E124A1C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + 40);
  *(v1 + 40) = v2;
  v4 = v2;
}

uint64_t sub_21E124AC4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 40);
  *(v1 + 48) = *(v0 + 24);
  *(v1 + 64) = v2;
  return sub_21E1202F0();
}

void sub_21E124B00()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = *(v2 + 152);
  *(v2 + 152) = v1;
  v4 = v1;

  sub_21E120C84();
}

uint64_t sub_21E124B68(uint64_t a1, uint64_t a2)
{
  v4 = sub_21E13E084();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEADA80, &qword_21E148AB0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v21 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD610, &qword_21E1573E0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v21 - v12;
  v15 = *(v14 + 56);
  sub_21E1251B0(a1, &v21 - v12);
  sub_21E1251B0(a2, &v13[v15]);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    sub_21E1251B0(v13, v10);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v13[v15], v4);
      sub_21E125408(&qword_280F690D0, MEMORY[0x277D79330], MEMORY[0x277D79338]);
      v18 = sub_21E142074();
      v19 = *(v5 + 8);
      v19(v7, v4);
      v19(v10, v4);
      sub_21DF23614(v13, &qword_27CEADA80, &qword_21E148AB0);
      v17 = v18 ^ 1;
      return v17 & 1;
    }

    (*(v5 + 8))(v10, v4);
    goto LABEL_6;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
LABEL_6:
    sub_21DF23614(v13, &qword_27CEAD610, &qword_21E1573E0);
    v17 = 1;
    return v17 & 1;
  }

  sub_21DF23614(v13, &qword_27CEADA80, &qword_21E148AB0);
  v17 = 0;
  return v17 & 1;
}

id sub_21E124E58(void *a1)
{
  v2 = v1;
  v3 = OBJC_IVAR____TtC20VisualIntelligenceUI16OverlayViewModel__analysis;
  v4 = *(v1 + OBJC_IVAR____TtC20VisualIntelligenceUI16OverlayViewModel__analysis);
  *(v2 + OBJC_IVAR____TtC20VisualIntelligenceUI16OverlayViewModel__analysis) = a1;
  v5 = a1;

  v6 = *(v2 + 24);
  swift_getKeyPath();
  sub_21E125408(&unk_280F6B040, type metadata accessor for OverlayViewModel, &protocol conformance descriptor for OverlayViewModel);
  sub_21E13D3C4();

  [v6 setAnalysis_];
  return [v6 updateContentsRect];
}

uint64_t sub_21E124F3C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_21DF4AA04;

  return sub_21E122C44(a1, v4, v5, v6, v7, v8);
}

void sub_21E125004()
{
  v1 = *(v0 + 24);
  v2 = v1;
  sub_21E124E58(v1);
}

uint64_t sub_21E12504C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_21DF8DAF8;

  return sub_21E122E7C(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_21E1251B0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEADA80, &qword_21E148AB0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21E125220(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEADA80, &qword_21E148AB0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_21E1252AC(uint64_t a1)
{
  v4 = *(sub_21E13E084() - 8);
  v5 = (*(v4 + 80) + 56) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = v1[6];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_21DF8DAF8;

  return sub_21E123EE8(a1, v6, v7, v8, v9, v10, v1 + v5);
}

id sub_21E1253B8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 40);
  *(v1 + 120) = *(v0 + 24);
  *(v1 + 136) = v2;
  return [*(v1 + 24) updateContentsRect];
}

uint64_t sub_21E125408(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_21E125508(void *a1, uint64_t a2)
{
  [a1 dismissViewControllerAnimated:1 completion:0];
  v4 = v2 + OBJC_IVAR____TtCV20VisualIntelligenceUI23EventEditViewController11Coordinator_parent;
  v5 = [*(v2 + OBJC_IVAR____TtCV20VisualIntelligenceUI23EventEditViewController11Coordinator_parent) eventIdentifier];
  if (v5)
  {
    v7 = v5;
    v8 = sub_21E142124();
    v10 = v9;

    v11 = *(v4 + 8);
    if (v11)
    {
      v12 = *(v4 + 16);

      v11(a2 == 1, v8, v10);
      sub_21DF1F1DC(v11, v12);
    }
  }

  return result;
}

id sub_21E125690()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EventEditViewController.Coordinator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t get_enum_tag_for_layout_string_SbSSIegyg_Sg(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_21E12574C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_21E125794(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

void *sub_21E1257EC@<X0>(void *a1@<X8>)
{
  v4 = *v1;
  v3 = *(v1 + 8);
  v5 = *(v1 + 16);
  v6 = type metadata accessor for EventEditViewController.Coordinator();
  v7 = objc_allocWithZone(v6);
  v8 = &v7[OBJC_IVAR____TtCV20VisualIntelligenceUI23EventEditViewController11Coordinator_parent];
  *v8 = v4;
  *(v8 + 1) = v3;
  *(v8 + 2) = v5;
  v9 = v4;
  sub_21DF09028(v3, v5);
  v11.receiver = v7;
  v11.super_class = v6;
  result = objc_msgSendSuper2(&v11, sel_init);
  *a1 = result;
  return result;
}

uint64_t sub_21E125878(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21E125A40();

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_21E1258DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21E125A40();

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_21E125940(uint64_t a1)
{
  sub_21E125A40();
  sub_21E1407A4();
  __break(1u);
}

id sub_21E12596C(uint64_t a1, void *a2)
{
  v3 = [objc_allocWithZone(MEMORY[0x277CC5B70]) init];
  v4 = [a2 eventStore];
  [v3 setEventStore_];

  [v3 setEvent_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEADB08, &unk_21E159A80);
  sub_21E1408A4();
  [v3 setEditViewDelegate_];

  return v3;
}

unint64_t sub_21E125A40()
{
  result = qword_27CEADB10;
  if (!qword_27CEADB10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEADB10);
  }

  return result;
}

uint64_t VisualSearchState.hash(into:)(uint64_t a1)
{
  v2 = sub_21E13F0A4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21E13EFC4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for VisualSearchState(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21E1262CC(v1, v12);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    (*(v7 + 32))(v9, v12, v6);
    v14 = 0;
    goto LABEL_5;
  }

  if (EnumCaseMultiPayload == 1)
  {
    (*(v7 + 32))(v9, v12, v6);
    v14 = 1;
LABEL_5:
    MEMORY[0x223D53460](v14);
    sub_21E126378(&qword_27CEADB20, MEMORY[0x277D78688], MEMORY[0x277D78690]);
    sub_21E142024();
    return (*(v7 + 8))(v9, v6);
  }

  (*(v3 + 32))(v5, v12, v2);
  MEMORY[0x223D53460](2);
  sub_21E126378(&qword_27CEA6D00, MEMORY[0x277D788A8], MEMORY[0x277D788B0]);
  sub_21E142024();
  return (*(v3 + 8))(v5, v2);
}

uint64_t VisualSearchState.hashValue.getter()
{
  sub_21E142C14();
  VisualSearchState.hash(into:)(v1);
  return sub_21E142C44();
}

uint64_t sub_21E125DC0()
{
  sub_21E142C14();
  VisualSearchState.hash(into:)(v1);
  return sub_21E142C44();
}

uint64_t sub_21E125E04(uint64_t a1)
{
  sub_21E142C14();
  VisualSearchState.hash(into:)(v2);
  return sub_21E142C44();
}

uint64_t _s20VisualIntelligenceUI0A11SearchStateO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v38 = a1;
  v39 = a2;
  v2 = sub_21E13F0A4();
  v36 = *(v2 - 8);
  v37 = v2;
  MEMORY[0x28223BE20](v2);
  v35 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_21E13EFC4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v34 - v9;
  v11 = type metadata accessor for VisualSearchState(0);
  MEMORY[0x28223BE20](v11);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v34 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v34 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEADB40, &unk_21E159B40);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = &v34 - v21;
  v24 = *(v23 + 56);
  sub_21E1262CC(v38, &v34 - v21);
  sub_21E1262CC(v39, &v22[v24]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_21E1262CC(v22, v16);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        (*(v5 + 32))(v7, &v22[v24], v4);
        v26 = MEMORY[0x223D4F7F0](v16, v7);
        v27 = *(v5 + 8);
        v27(v7, v4);
        v27(v16, v4);
LABEL_14:
        sub_21E1264EC(v22);
        return v26 & 1;
      }

      (*(v5 + 8))(v16, v4);
    }

    else
    {
      sub_21E1262CC(v22, v13);
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v29 = v35;
        v28 = v36;
        v30 = v37;
        (*(v36 + 32))(v35, &v22[v24], v37);
        v26 = sub_21E13F084();
        v31 = *(v28 + 8);
        v31(v29, v30);
        v31(v13, v30);
        goto LABEL_14;
      }

      (*(v36 + 8))(v13, v37);
    }
  }

  else
  {
    sub_21E1262CC(v22, v19);
    if (!swift_getEnumCaseMultiPayload())
    {
      (*(v5 + 32))(v10, &v22[v24], v4);
      v26 = MEMORY[0x223D4F7F0](v19, v10);
      v32 = *(v5 + 8);
      v32(v10, v4);
      v32(v19, v4);
      goto LABEL_14;
    }

    (*(v5 + 8))(v19, v4);
  }

  sub_21E126484(v22);
  v26 = 0;
  return v26 & 1;
}

uint64_t type metadata accessor for VisualSearchState(uint64_t a1)
{
  result = qword_27CEADB30;
  if (!qword_27CEADB30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21E1262CC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VisualSearchState(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21E126378(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_21E126410(uint64_t a1)
{
  result = sub_21E13EFC4();
  if (v2 <= 0x3F)
  {
    result = sub_21E13F0A4();
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_21E126484(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEADB40, &unk_21E159B40);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21E1264EC(uint64_t a1)
{
  v2 = type metadata accessor for VisualSearchState(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for VisualSearchCardDebugView(uint64_t a1)
{
  result = qword_27CEADB48;
  if (!qword_27CEADB48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21E1265BC(uint64_t a1)
{
  result = sub_21E13F064();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_21E126678()
{
  result = qword_27CEADB58;
  if (!qword_27CEADB58)
  {
    type metadata accessor for VisualSearchCardDebugView(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEADB58);
  }

  return result;
}

uint64_t sub_21E1266EC()
{
  v0 = sub_21E13D264();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEADB60, &qword_21E159D20);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v29 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEADBA8, &qword_21E159C50);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = (v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v10);
  v12 = v29 - v11;
  sub_21E13F024();
  v13 = sub_21E13F174();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v6, 1, v13) == 1)
  {
    v15 = 7104878;
    sub_21DF23614(v6, &qword_27CEADB60, &qword_21E159D20);
    v16 = sub_21E13F154();
    (*(*(v16 - 8) + 56))(v12, 1, 1, v16);
    sub_21DF23614(v12, &qword_27CEADBA8, &qword_21E159C50);
    return v15;
  }

  sub_21E13F164();
  (*(v14 + 8))(v6, v13);
  v17 = sub_21E13F154();
  v18 = *(v17 - 8);
  (*(v18 + 56))(v12, 0, 1, v17);
  sub_21E128D0C(v12, v9);
  v19 = (*(v18 + 88))(v9, v17);
  if (v19 == *MEMORY[0x277D78B70])
  {
    (*(v18 + 8))(v9, v17);
    return 0x7461446567616D69;
  }

  if (v19 == *MEMORY[0x277D78B68])
  {
    (*(v18 + 96))(v9, v17);
    (*(v1 + 32))(v3, v9, v0);
    v15 = sub_21E13D1B4();
    (*(v1 + 8))(v3, v0);
    return v15;
  }

  if (v19 == *MEMORY[0x277D78B50])
  {
    (*(v18 + 96))(v9, v17);
    v20 = *v9;
    v21 = v9[1];
    v23 = v9[2];
    v22 = v9[3];
    v29[0] = 0;
    v29[1] = 0xE000000000000000;
    sub_21E142884();

    strcpy(v29, "bundle name: ");
    HIWORD(v29[1]) = -4864;
    MEMORY[0x223D52A60](v20, v21);

    MEMORY[0x223D52A60](0x203A6469202CLL, 0xE600000000000000);
    if (v22)
    {
      v24 = v23;
    }

    else
    {
      v24 = 7104878;
    }

    if (v22)
    {
      v25 = v22;
    }

    else
    {
      v25 = 0xE300000000000000;
    }

    goto LABEL_16;
  }

  if (v19 == *MEMORY[0x277D78B58])
  {
    (*(v18 + 96))(v9, v17);
    v24 = *v9;
    v25 = v9[1];
    strcpy(v29, "systemImage: ");
    HIWORD(v29[1]) = -4864;
LABEL_16:
    MEMORY[0x223D52A60](v24, v25);

    return v29[0];
  }

  v26 = *MEMORY[0x277D78B60];
  v27 = v19;
  (*(v18 + 8))(v9, v17);
  if (v27 == v26)
  {
    return 0x6F72506567616D69;
  }

  else
  {
    return 0x6E776F6E6B6E75;
  }
}

uint64_t sub_21E126C40()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEADB60, &qword_21E159D20);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v17 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEADBA0, &qword_21E159C48);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v17 - v7;
  sub_21E13F024();
  v9 = sub_21E13F174();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v2, 1, v9) == 1)
  {
    sub_21DF23614(v2, &qword_27CEADB60, &qword_21E159D20);
    v11 = sub_21E13F0D4();
    (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
    v12 = 7104878;
  }

  else
  {
    sub_21E13F0E4();
    (*(v10 + 8))(v2, v9);
    v13 = sub_21E13F0D4();
    v14 = *(v13 - 8);
    (*(v14 + 56))(v8, 0, 1, v13);
    sub_21DF236C0(v8, v5, &qword_27CEADBA0, &qword_21E159C48);
    v15 = (*(v14 + 88))(v5, v13);
    if (v15 == *MEMORY[0x277D78B28])
    {
      v12 = 0x746C7561666564;
    }

    else if (v15 == *MEMORY[0x277D78B30])
    {
      v12 = 0x72616C7563726963;
    }

    else
    {
      (*(v14 + 8))(v5, v13);
      v12 = 0x6E776F6E6B6E75;
    }
  }

  sub_21DF23614(v8, &qword_27CEADBA0, &qword_21E159C48);
  return v12;
}

uint64_t sub_21E126F50()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEADB60, &qword_21E159D20);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v17 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEADB90, &qword_21E159C38);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v17 - v7;
  sub_21E13F024();
  v9 = sub_21E13F174();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v2, 1, v9) == 1)
  {
    sub_21DF23614(v2, &qword_27CEADB60, &qword_21E159D20);
    v11 = sub_21E13F0F4();
    (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
    v12 = 7104878;
  }

  else
  {
    sub_21E13F104();
    (*(v10 + 8))(v2, v9);
    v13 = sub_21E13F0F4();
    v14 = *(v13 - 8);
    (*(v14 + 56))(v8, 0, 1, v13);
    sub_21DF236C0(v8, v5, &qword_27CEADB90, &qword_21E159C38);
    v15 = (*(v14 + 88))(v5, v13);
    if (v15 == *MEMORY[0x277D78B48])
    {
      v12 = 0x6974616D6F747561;
    }

    else if (v15 == *MEMORY[0x277D78B38])
    {
      v12 = 0x6C616E696769726FLL;
    }

    else if (v15 == *MEMORY[0x277D78B40])
    {
      v12 = 0x6574616C706D6574;
    }

    else
    {
      (*(v14 + 8))(v5, v13);
      v12 = 0x6E776F6E6B6E75;
    }
  }

  sub_21DF23614(v8, &qword_27CEADB90, &qword_21E159C38);
  return v12;
}

uint64_t sub_21E127290()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEADB60, &qword_21E159D20);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = v25 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEADB98, &qword_21E159C40);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = v25 - v12;
  v26 = 0;
  v27 = 0xE000000000000000;
  MEMORY[0x223D52A60](540690472, 0xE400000000000000, v11);
  sub_21E13F024();
  v14 = sub_21E13F174();
  v15 = *(v14 - 8);
  v16 = *(v15 + 48);
  if (v16(v6, 1, v14) == 1)
  {
    sub_21DF23614(v6, &qword_27CEADB60, &qword_21E159D20);
  }

  else
  {
    v25[1] = v0;
    sub_21E13F144();
    (*(v15 + 8))(v6, v14);
    v17 = sub_21E13F134();
    v18 = *(v17 - 8);
    if ((*(v18 + 48))(v13, 1, v17) == 1)
    {
      sub_21DF23614(v13, &qword_27CEADB98, &qword_21E159C40);
    }

    else
    {
      sub_21E13F124();
      (*(v18 + 8))(v13, v17);
    }
  }

  sub_21E142484();
  MEMORY[0x223D52A60](0x203A57202CLL, 0xE500000000000000);
  sub_21E13F024();
  if (v16(v3, 1, v14) == 1)
  {
    v19 = &qword_27CEADB60;
    v20 = &qword_21E159D20;
    v21 = v3;
  }

  else
  {
    sub_21E13F144();
    (*(v15 + 8))(v3, v14);
    v22 = sub_21E13F134();
    v23 = *(v22 - 8);
    if ((*(v23 + 48))(v9, 1, v22) != 1)
    {
      sub_21E13F114();
      (*(v23 + 8))(v9, v22);
      goto LABEL_12;
    }

    v19 = &qword_27CEADB98;
    v20 = &qword_21E159C40;
    v21 = v9;
  }

  sub_21DF23614(v21, v19, v20);
LABEL_12:
  sub_21E142484();
  MEMORY[0x223D52A60](41, 0xE100000000000000);
  return v26;
}

uint64_t sub_21E1276A0@<X0>(char *a1@<X8>)
{
  v33 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEADB60, &qword_21E159D20);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v30 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEADB68, &qword_21E159C10);
  MEMORY[0x28223BE20](v5 - 8);
  v32 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v30 - v8;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEADB70, &qword_21E159C18);
  v10 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v30 - v14;
  v34 = v1;
  v35 = xmmword_21E149900;
  v36 = 0;
  v37 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEADB78, &unk_21E159C20);
  sub_21DF23E5C(&qword_27CEADB80, &qword_27CEADB78, &unk_21E159C20, MEMORY[0x277CE14C0]);
  v16 = v15;
  sub_21E141AB4();
  sub_21E13F024();
  v17 = sub_21E13F174();
  v18 = 1;
  v19 = (*(*(v17 - 8) + 48))(v4, 1, v17);
  v20 = sub_21DF23614(v4, &qword_27CEADB60, &qword_21E159D20);
  if (v19 != 1)
  {
    MEMORY[0x28223BE20](v20);
    *(&v30 - 2) = v1;
    v35 = xmmword_21E159B50;
    v36 = 0;
    v37 = MEMORY[0x277D84F90];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA88C0, &qword_21E149A08);
    sub_21DF23E5C(&qword_27CEA88C8, &qword_27CEA88C0, &qword_21E149A08, MEMORY[0x277CE14C0]);
    sub_21E141AB4();
    v18 = 0;
  }

  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA88B8, &qword_21E149A00);
  (*(*(v21 - 8) + 56))(v9, v18, 1, v21);
  v22 = v10;
  v23 = *(v10 + 16);
  v24 = v31;
  v23(v12, v15, v31);
  v25 = v32;
  sub_21DF236C0(v9, v32, &qword_27CEADB68, &qword_21E159C10);
  v26 = v33;
  v23(v33, v12, v24);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEADB88, &qword_21E159C30);
  sub_21DF236C0(v25, &v26[*(v27 + 48)], &qword_27CEADB68, &qword_21E159C10);
  sub_21DF23614(v9, &qword_27CEADB68, &qword_21E159C10);
  v28 = *(v22 + 8);
  v28(v16, v24);
  sub_21DF23614(v25, &qword_27CEADB68, &qword_21E159C10);
  return (v28)(v12, v24);
}

uint64_t sub_21E127B70@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v86 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8918, &qword_21E149A40);
  v92 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v75 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAC660, &unk_21E159D90);
  MEMORY[0x28223BE20](v6 - 8);
  v79 = &v75 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v76 = (&v75 - v9);
  MEMORY[0x28223BE20](v10);
  v12 = &v75 - v11;
  v13 = sub_21E13D134();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v80 = &v75 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v77 = &v75 - v17;
  MEMORY[0x28223BE20](v18);
  v20 = &v75 - v19;
  MEMORY[0x28223BE20](v21);
  v23 = &v75 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8940, &unk_21E149A60);
  MEMORY[0x28223BE20](v24 - 8);
  v85 = &v75 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v84 = &v75 - v27;
  MEMORY[0x28223BE20](v28);
  v83 = &v75 - v29;
  MEMORY[0x28223BE20](v30);
  v82 = &v75 - v31;
  MEMORY[0x28223BE20](v32);
  v91 = &v75 - v33;
  MEMORY[0x28223BE20](v34);
  v36 = &v75 - v35;
  v90 = a1;
  sub_21E13F034();
  v89 = *(v14 + 48);
  v37 = v89(v12, 1, v13);
  v87 = v5;
  v88 = v3;
  v78 = v20;
  if (v37 == 1)
  {
    sub_21DF23614(v12, &qword_27CEAC660, &unk_21E159D90);
  }

  else
  {
    (*(v14 + 32))(v23, v12, v13);
    (*(v14 + 16))(v20, v23, v13);
    v38 = sub_21E142194();
    v40 = v39;
    v41 = swift_allocObject();
    v81 = v14;
    v75 = &v75;
    *(v41 + 16) = v38;
    *(v41 + 24) = v40;
    MEMORY[0x28223BE20](v41);
    *(&v75 - 4) = v38;
    *(&v75 - 3) = v40;
    *(&v75 - 2) = 0x656C746954;
    *(&v75 - 1) = 0xE500000000000000;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8920, &qword_21E149A48);
    v42 = v92;
    sub_21DF23E5C(&qword_27CEA8928, &qword_27CEA8920, &qword_21E149A48, MEMORY[0x277CDEFF0]);
    v43 = v87;
    v14 = v81;
    v3 = v88;
    sub_21E141764();

    (*(v14 + 8))(v23, v13);
    (*(v42 + 32))(v36, v43, v3);
  }

  v44 = v36;
  v45 = v13;
  v46 = *(v92 + 56);
  v81 = v44;
  v46();
  v47 = v76;
  sub_21E13F044();
  if (v89(v47, 1, v45) == 1)
  {
    sub_21DF23614(v47, &qword_27CEAC660, &unk_21E159D90);
    v48 = 1;
    v49 = v91;
  }

  else
  {
    v50 = v77;
    (*(v14 + 32))(v77, v47, v45);
    (*(v14 + 16))(v78, v50, v45);
    v51 = sub_21E142194();
    v53 = v52;
    v54 = swift_allocObject();
    v75 = &v75;
    *(v54 + 16) = v51;
    *(v54 + 24) = v53;
    MEMORY[0x28223BE20](v54);
    *(&v75 - 4) = v51;
    *(&v75 - 3) = v53;
    *(&v75 - 2) = 0x656C746974627553;
    *(&v75 - 1) = 0xE800000000000000;

    v76 = v46;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8920, &qword_21E149A48);
    v3 = v88;
    sub_21DF23E5C(&qword_27CEA8928, &qword_27CEA8920, &qword_21E149A48, MEMORY[0x277CDEFF0]);
    v55 = v87;
    sub_21E141764();

    (*(v14 + 8))(v77, v45);
    v49 = v91;
    v56 = v55;
    v46 = v76;
    (*(v92 + 32))(v91, v56, v3);
    v48 = 0;
  }

  v57 = v79;
  (v46)(v49, v48, 1, v3);
  sub_21E13F004();
  if (v89(v57, 1, v45) == 1)
  {
    sub_21DF23614(v57, &qword_27CEAC660, &unk_21E159D90);
    v58 = 1;
    v59 = v82;
  }

  else
  {
    v60 = v80;
    (*(v14 + 32))(v80, v57, v45);
    (*(v14 + 16))(v78, v60, v45);
    v61 = sub_21E142194();
    v63 = v62;
    v64 = swift_allocObject();
    v65 = v92;
    v90 = &v75;
    *(v64 + 16) = v61;
    *(v64 + 24) = v63;
    MEMORY[0x28223BE20](v64);
    v89 = v45;
    *(&v75 - 4) = v61;
    *(&v75 - 3) = v63;
    *(&v75 - 2) = 0xD000000000000010;
    *(&v75 - 1) = 0x800000021E15FE90;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8920, &qword_21E149A48);
    v3 = v88;
    sub_21DF23E5C(&qword_27CEA8928, &qword_27CEA8920, &qword_21E149A48, MEMORY[0x277CDEFF0]);
    v66 = v87;
    sub_21E141764();

    (*(v14 + 8))(v80, v89);
    v59 = v82;
    (*(v65 + 32))(v82, v66, v3);
    v58 = 0;
  }

  (v46)(v59, v58, 1, v3);
  v67 = v81;
  v68 = v83;
  sub_21DF236C0(v81, v83, &qword_27CEA8940, &unk_21E149A60);
  v69 = v91;
  v70 = v84;
  sub_21DF236C0(v91, v84, &qword_27CEA8940, &unk_21E149A60);
  v71 = v85;
  sub_21DF236C0(v59, v85, &qword_27CEA8940, &unk_21E149A60);
  v72 = v86;
  sub_21DF236C0(v68, v86, &qword_27CEA8940, &unk_21E149A60);
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEADBB0, &qword_21E159C58);
  sub_21DF236C0(v70, v72 + *(v73 + 48), &qword_27CEA8940, &unk_21E149A60);
  sub_21DF236C0(v71, v72 + *(v73 + 64), &qword_27CEA8940, &unk_21E149A60);
  sub_21DF23614(v59, &qword_27CEA8940, &unk_21E149A60);
  sub_21DF23614(v69, &qword_27CEA8940, &unk_21E149A60);
  sub_21DF23614(v67, &qword_27CEA8940, &unk_21E149A60);
  sub_21DF23614(v71, &qword_27CEA8940, &unk_21E149A60);
  sub_21DF23614(v70, &qword_27CEA8940, &unk_21E149A60);
  return sub_21DF23614(v68, &qword_27CEA8940, &unk_21E149A60);
}

uint64_t sub_21E12864C@<X0>(uint64_t a1@<X8>)
{
  v52 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8918, &qword_21E149A40);
  v55 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v51 = &v46 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v50 = &v46 - v4;
  MEMORY[0x28223BE20](v5);
  v49 = &v46 - v6;
  MEMORY[0x28223BE20](v7);
  v48 = &v46 - v8;
  MEMORY[0x28223BE20](v9);
  v47 = &v46 - v10;
  MEMORY[0x28223BE20](v11);
  v13 = &v46 - v12;
  MEMORY[0x28223BE20](v14);
  v53 = &v46 - v15;
  MEMORY[0x28223BE20](v16);
  v54 = &v46 - v17;
  v18 = sub_21E1266EC();
  v20 = v19;
  v21 = swift_allocObject();
  *(v21 + 16) = v18;
  *(v21 + 24) = v20;
  v66 = v18;
  v67 = v20;
  strcpy(v68, "Content Type");
  HIBYTE(v68[6]) = 0;
  v68[7] = -5120;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8920, &qword_21E149A48);
  sub_21DF23E5C(&qword_27CEA8928, &qword_27CEA8920, &qword_21E149A48, MEMORY[0x277CDEFF0]);
  sub_21E141764();

  v22 = sub_21E126C40();
  v24 = v23;
  v25 = swift_allocObject();
  *(v25 + 16) = v22;
  *(v25 + 24) = v24;
  v63 = v22;
  v64 = v24;
  strcpy(v65, "Display Style");
  v65[7] = -4864;

  sub_21E141764();

  v26 = sub_21E127290();
  v28 = v27;
  v29 = swift_allocObject();
  *(v29 + 16) = v26;
  *(v29 + 24) = v28;
  v59 = v26;
  v60 = v28;
  v61 = 0xD000000000000010;
  v62 = 0x800000021E15C030;

  v30 = v13;
  v46 = v13;
  sub_21E141764();

  v31 = sub_21E126F50();
  v33 = v32;
  v34 = swift_allocObject();
  *(v34 + 16) = v31;
  *(v34 + 24) = v33;
  v56 = v31;
  v57 = v33;
  strcpy(v58, "Rendering Mode");
  v58[15] = -18;

  v35 = v47;
  sub_21E141764();

  v36 = *(v55 + 16);
  v37 = v48;
  v36(v48, v54, v1);
  v38 = v49;
  v36(v49, v53, v1);
  v39 = v50;
  v36(v50, v30, v1);
  v40 = v51;
  v41 = v35;
  v36(v51, v35, v1);
  v42 = v52;
  v36(v52, v37, v1);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8980, &qword_21E149AA0);
  v36((v42 + v43[12]), v38, v1);
  v36((v42 + v43[16]), v39, v1);
  v36((v42 + v43[20]), v40, v1);
  v44 = *(v55 + 8);
  v44(v41, v1);
  v44(v46, v1);
  v44(v53, v1);
  v44(v54, v1);
  v44(v40, v1);
  v44(v39, v1);
  v44(v38, v1);
  return (v44)(v37, v1);
}

uint64_t sub_21E128D0C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEADBA8, &qword_21E159C50);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_21E128DC4(uint64_t a1)
{
  sub_21E12E204(319, &qword_27CEA7108, MEMORY[0x277CE02A8], MEMORY[0x277CDF468]);
  if (v1 <= 0x3F)
  {
    sub_21E13F064();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_21E128EB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v75 = a2;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEADBF0, &qword_21E159D18) - 8;
  MEMORY[0x28223BE20](v73);
  v74 = &v63 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v72 = (&v63 - v5);
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEADB60, &qword_21E159D20);
  MEMORY[0x28223BE20](v69);
  v65 = &v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v63 - v8;
  v10 = type metadata accessor for VisualSearchCardImageView(0);
  v11 = v10 - 8;
  MEMORY[0x28223BE20](v10);
  v13 = (&v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEADBF8, &qword_21E159D28);
  v15 = v14 - 8;
  MEMORY[0x28223BE20](v14);
  v64 = &v63 - v16;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEADC00, &qword_21E159D30) - 8;
  MEMORY[0x28223BE20](v70);
  v68 = &v63 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEADC08, &qword_21E159D38);
  v19 = v18 - 8;
  MEMORY[0x28223BE20](v18);
  v66 = &v63 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEADC10, &qword_21E159D40);
  v22 = v21 - 8;
  MEMORY[0x28223BE20](v21);
  v71 = &v63 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v26 = &v63 - v25;
  MEMORY[0x28223BE20](v27);
  v67 = &v63 - v28;
  v29 = type metadata accessor for VisualSearchCardView(0);
  v63 = a1;
  sub_21E13F024();
  v30 = *(a1 + *(v29 + 36));
  *v13 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7140, &qword_21E149F40);
  swift_storeEnumTagMultiPayload();
  *(v13 + *(v11 + 32)) = v30;
  v31 = sub_21E13F174();
  (*(*(v31 - 8) + 56))(v9, 1, 1, v31);
  sub_21DF236C0(v9, v65, &qword_27CEADB60, &qword_21E159D20);
  sub_21E141704();
  sub_21DF23614(v9, &qword_27CEADB60, &qword_21E159D20);
  sub_21E141CC4();
  sub_21E13FCE4();
  v32 = v64;
  sub_21E12A928(v13, v64);
  v33 = (v32 + *(v15 + 44));
  v34 = v81;
  v33[4] = v80;
  v33[5] = v34;
  v33[6] = v82;
  v35 = v77;
  *v33 = v76;
  v33[1] = v35;
  v36 = v79;
  v33[2] = v78;
  v33[3] = v36;
  v37 = _s20VisualIntelligenceUI17PinStyleProvidingPAAE15foregroundColor9isEnabled05SwiftC00H0VSb_tF_0();
  LOBYTE(v30) = sub_21E140914();
  v38 = v32;
  v39 = v68;
  sub_21DF3DE9C(v38, v68, &qword_27CEADBF8, &qword_21E159D28);
  v40 = v39 + *(v70 + 44);
  *v40 = v37;
  *(v40 + 8) = v30;
  v41 = v39;
  v42 = v66;
  sub_21DF3DE9C(v41, v66, &qword_27CEADC00, &qword_21E159D30);
  *(v42 + *(v19 + 44)) = 1;
  v43 = sub_21E141CC4();
  v45 = v44;
  v46 = &v26[*(v22 + 44)];
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8B70, &qword_21E14A5C0);
  v48 = v63;
  sub_21E1295A4(v63, v46 + *(v47 + 36));
  *v46 = v43;
  v46[1] = v45;
  sub_21DF3DE9C(v42, v26, &qword_27CEADC08, &qword_21E159D38);
  v49 = v67;
  sub_21DF3DE9C(v26, v67, &qword_27CEADC10, &qword_21E159D40);
  v50 = sub_21E1401D4();
  v51 = v72;
  *v72 = v50;
  *(v51 + 8) = 0x4014000000000000;
  *(v51 + 16) = 0;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEADC18, &qword_21E159D78);
  sub_21E129E44(v48, v51 + *(v52 + 44));
  LOBYTE(v43) = sub_21E140904();
  sub_21E13F374();
  v53 = v51 + *(v73 + 44);
  *v53 = v43;
  *(v53 + 8) = v54;
  *(v53 + 16) = v55;
  *(v53 + 24) = v56;
  *(v53 + 32) = v57;
  *(v53 + 40) = 0;
  v58 = v71;
  sub_21DF236C0(v49, v71, &qword_27CEADC10, &qword_21E159D40);
  v59 = v74;
  sub_21DF236C0(v51, v74, &qword_27CEADBF0, &qword_21E159D18);
  v60 = v75;
  sub_21DF236C0(v58, v75, &qword_27CEADC10, &qword_21E159D40);
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEADC20, &unk_21E159D80);
  sub_21DF236C0(v59, v60 + *(v61 + 48), &qword_27CEADBF0, &qword_21E159D18);
  sub_21DF23614(v51, &qword_27CEADBF0, &qword_21E159D18);
  sub_21DF23614(v49, &qword_27CEADC10, &qword_21E159D40);
  sub_21DF23614(v59, &qword_27CEADBF0, &qword_21E159D18);
  return sub_21DF23614(v58, &qword_27CEADC10, &qword_21E159D40);
}

uint64_t sub_21E1295A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v55 = a2;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8B88, &qword_21E149E18);
  MEMORY[0x28223BE20](v52);
  v54 = &v44 - v3;
  v53 = sub_21E13FCA4();
  MEMORY[0x28223BE20](v53);
  v5 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8B90, &qword_21E149E20);
  MEMORY[0x28223BE20](v47);
  v49 = &v44 - v6;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8B98, &qword_21E149E28);
  MEMORY[0x28223BE20](v45);
  v8 = &v44 - v7;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8BA0, &qword_21E149E30);
  MEMORY[0x28223BE20](v48);
  v46 = &v44 - v9;
  v10 = sub_21E1404F4();
  MEMORY[0x28223BE20](v10);
  v12 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8BA8, &unk_21E149E38);
  MEMORY[0x28223BE20](v51);
  v50 = &v44 - v13;
  v14 = sub_21E1401B4();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = (&v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = type metadata accessor for VisualSearchCardView(0);
  if (*(a1 + v18[8]) == 1 && (sub_21E021E10(v17), v19 = sub_21E1401A4(), (*(v15 + 8))(v17, v14), (v19 & 1) == 0))
  {
    v25 = *(a1 + v18[5]);
    if (*(a1 + v18[7]) > 1uLL)
    {
      v41 = *(v53 + 20);
      v42 = *MEMORY[0x277CE0118];
      v43 = sub_21E140144();
      (*(*(v43 - 8) + 104))(&v5[v41], v42, v43);
      *v5 = v25;
      *(v5 + 1) = v25;
      sub_21E12E010(v5, v49, MEMORY[0x277CDFC08]);
      swift_storeEnumTagMultiPayload();
      sub_21DFB8EC8();
      sub_21E12E4B8(&qword_27CEA8BC8, MEMORY[0x277CDFC08], MEMORY[0x277CDFBE8]);
      v38 = v50;
      sub_21E1402F4();
      v39 = MEMORY[0x277CDFC08];
      v40 = v5;
    }

    else
    {
      sub_21E140344();
      v27 = v26;
      v29 = v28;
      v31 = v30;
      v33 = v32;
      v34 = *(v10 + 20);
      v35 = *MEMORY[0x277CE0118];
      v36 = sub_21E140144();
      (*(*(v36 - 8) + 104))(&v12[v34], v35, v36);
      *v12 = v27;
      *(v12 + 1) = v29;
      *(v12 + 2) = v31;
      *(v12 + 3) = v33;
      sub_21E12E010(v12, v8, MEMORY[0x277CE0550]);
      swift_storeEnumTagMultiPayload();
      sub_21E12E4B8(&qword_27CEA8BC0, MEMORY[0x277CE0550], MEMORY[0x277CE0538]);
      v37 = v46;
      sub_21E1402F4();
      sub_21DF236C0(v37, v49, &qword_27CEA8BA0, &qword_21E149E30);
      swift_storeEnumTagMultiPayload();
      sub_21DFB8EC8();
      sub_21E12E4B8(&qword_27CEA8BC8, MEMORY[0x277CDFC08], MEMORY[0x277CDFBE8]);
      v38 = v50;
      sub_21E1402F4();
      sub_21DF23614(v37, &qword_27CEA8BA0, &qword_21E149E30);
      v39 = MEMORY[0x277CE0550];
      v40 = v12;
    }

    sub_21E12E078(v40, v39);
    sub_21DF236C0(v38, v54, &qword_27CEA8BA8, &unk_21E149E38);
    swift_storeEnumTagMultiPayload();
    sub_21DFB8E0C();
    sub_21E12E4B8(&qword_27CEA8BC8, MEMORY[0x277CDFC08], MEMORY[0x277CDFBE8]);
    sub_21E1402F4();
    return sub_21DF23614(v38, &qword_27CEA8BA8, &unk_21E149E38);
  }

  else
  {
    v20 = *(a1 + v18[5]);
    v21 = *(v53 + 20);
    v22 = *MEMORY[0x277CE0118];
    v23 = sub_21E140144();
    (*(*(v23 - 8) + 104))(&v5[v21], v22, v23);
    *v5 = v20;
    *(v5 + 1) = v20;
    sub_21E12E010(v5, v54, MEMORY[0x277CDFC08]);
    swift_storeEnumTagMultiPayload();
    sub_21DFB8E0C();
    sub_21E12E4B8(&qword_27CEA8BC8, MEMORY[0x277CDFC08], MEMORY[0x277CDFBE8]);
    sub_21E1402F4();
    return sub_21E12E078(v5, MEMORY[0x277CDFC08]);
  }
}

uint64_t sub_21E129E44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v92 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8E70, &qword_21E14A450);
  MEMORY[0x28223BE20](v3 - 8);
  v91 = &v75 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v90 = &v75 - v6;
  v83 = sub_21E140A64();
  v7 = *(v83 - 8);
  MEMORY[0x28223BE20](v83);
  v82 = &v75 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_21E1401B4();
  v96 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v94 = (&v75 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAC660, &unk_21E159D90);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v75 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v75 - v15;
  v17 = sub_21E13D134();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v86 = &v75 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v75 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8E18, &qword_21E14A378);
  MEMORY[0x28223BE20](v23 - 8);
  v89 = &v75 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v95 = &v75 - v26;
  v27 = *(type metadata accessor for VisualSearchCardView(0) + 24);
  v97 = a1;
  v81 = v27;
  sub_21E13F034();
  v28 = *(v18 + 48);
  v93 = v17;
  v29 = v28(v16, 1, v17);
  v87 = v13;
  v76 = v18;
  v84 = v28;
  if (v29 == 1)
  {
    sub_21E13D104();
    if (v28(v16, 1, v93) != 1)
    {
      sub_21DF23614(v16, &qword_27CEAC660, &unk_21E159D90);
    }
  }

  else
  {
    (*(v18 + 32))(v22, v16, v93);
  }

  v30 = sub_21E140C84();
  v79 = v31;
  v80 = v30;
  v33 = v32;
  v78 = v34;
  KeyPath = swift_getKeyPath();
  v35 = v94;
  sub_21E021E10(v94);
  v36 = sub_21E1401A4();
  v37 = *(v96 + 8);
  v88 = v9;
  v96 += 8;
  v85 = v37;
  v37(v35, v9);
  if (v36)
  {
    v38 = 5;
  }

  else
  {
    v38 = 2;
  }

  v39 = swift_getKeyPath();
  v40 = v33 & 1;
  v117 = v33 & 1;
  v116 = 0;
  sub_21E140994();
  sub_21E140A04();
  sub_21E140A54();

  v42 = v82;
  v41 = v83;
  (*(v7 + 104))(v82, *MEMORY[0x277CE0A10], v83);
  v43 = sub_21E140A94();

  (*(v7 + 8))(v42, v41);
  v44 = swift_getKeyPath();
  sub_21E141CD4();
  sub_21E13FCE4();
  *&v103 = v80;
  *(&v103 + 1) = v79;
  LOBYTE(v104) = v40;
  *(&v104 + 1) = v78;
  *&v105[0] = KeyPath;
  BYTE8(v105[0]) = 0;
  *&v105[1] = v39;
  *(&v105[1] + 1) = v38;
  LOBYTE(v106) = 0;
  *(&v106 + 1) = v44;
  *&v107 = v43;
  WORD4(v113[1]) = 256;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8E20, &qword_21E14A410);
  sub_21DFC2288();
  sub_21E141164();
  v114[9] = v111;
  v114[10] = v112;
  v115[0] = v113[0];
  *(v115 + 10) = *(v113 + 10);
  v114[6] = v108;
  v114[7] = v109;
  v114[8] = v110;
  v114[2] = v105[0];
  v114[3] = v105[1];
  v114[4] = v106;
  v114[5] = v107;
  v114[0] = v103;
  v114[1] = v104;
  sub_21DF23614(v114, &qword_27CEA8E20, &qword_21E14A410);
  v45 = v87;
  sub_21E13F044();
  v46 = v93;
  v47 = v84;
  if (v84(v45, 1, v93) == 1)
  {
    sub_21E13D104();
    if (v47(v45, 1, v46) != 1)
    {
      sub_21DF23614(v45, &qword_27CEAC660, &unk_21E159D90);
    }
  }

  else
  {
    (*(v76 + 32))(v86, v45, v46);
  }

  v48 = sub_21E140C84();
  v50 = v49;
  v52 = v51;
  sub_21E140994();
  v53 = sub_21E140C44();
  v55 = v54;
  v57 = v56;

  sub_21DF3DE8C(v48, v50, v52 & 1);

  LODWORD(v103) = sub_21E1404B4();
  v58 = sub_21E140C24();
  v60 = v59;
  v62 = v61;
  v64 = v63;
  sub_21DF3DE8C(v53, v55, v57 & 1);

  v65 = v94;
  sub_21E021E10(v94);
  LOBYTE(v48) = sub_21E1401A4();
  v85(v65, v88);
  if (v48)
  {
    v66 = 5;
  }

  else
  {
    v66 = 2;
  }

  v67 = swift_getKeyPath();
  v102 = v62 & 1;
  v101 = 0;
  *&v98 = v58;
  *(&v98 + 1) = v60;
  LOBYTE(v99) = v62 & 1;
  *(&v99 + 1) = v64;
  *&v100[0] = v67;
  *(&v100[0] + 1) = v66;
  LOBYTE(v100[1]) = 0;
  *(&v100[1] + 1) = 256;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8EA0, &unk_21E14A480);
  sub_21DFC2510();
  v68 = v90;
  sub_21E141164();
  v103 = v98;
  v104 = v99;
  v105[0] = v100[0];
  *(v105 + 15) = *(v100 + 15);
  sub_21DF23614(&v103, &qword_27CEA8EA0, &unk_21E14A480);
  v69 = v95;
  v70 = v89;
  sub_21DF236C0(v95, v89, &qword_27CEA8E18, &qword_21E14A378);
  v71 = v91;
  sub_21DF236C0(v68, v91, &qword_27CEA8E70, &qword_21E14A450);
  v72 = v92;
  sub_21DF236C0(v70, v92, &qword_27CEA8E18, &qword_21E14A378);
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEADC28, &unk_21E159E30);
  sub_21DF236C0(v71, v72 + *(v73 + 48), &qword_27CEA8E70, &qword_21E14A450);
  sub_21DF23614(v68, &qword_27CEA8E70, &qword_21E14A450);
  sub_21DF23614(v69, &qword_27CEA8E18, &qword_21E14A378);
  sub_21DF23614(v71, &qword_27CEA8E70, &qword_21E14A450);
  return sub_21DF23614(v70, &qword_27CEA8E18, &qword_21E14A378);
}

uint64_t sub_21E12A7DC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEADBD8, &qword_21E159D08);
  MEMORY[0x28223BE20](v1);
  v3 = &v6 - v2;
  *v3 = sub_21E1401C4();
  *(v3 + 1) = 0x4020000000000000;
  v3[16] = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEADBE0, &qword_21E159D10);
  sub_21E128EB0(v0, &v3[*(v4 + 44)]);
  sub_21DF23E5C(&qword_27CEADBE8, &qword_27CEADBD8, &qword_21E159D08, MEMORY[0x277CE1198]);
  sub_21E141164();
  return sub_21DF23614(v3, &qword_27CEADBD8, &qword_21E159D08);
}

uint64_t sub_21E12A928(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VisualSearchCardImageView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21E12A98C@<X0>(uint64_t a1@<X8>)
{
  v60 = a1;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEADC68, &qword_21E159EC8);
  MEMORY[0x28223BE20](v57);
  v3 = (&v50 - v2);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEADC70, &unk_21E159ED0);
  MEMORY[0x28223BE20](v58);
  v59 = &v50 - v4;
  v54 = sub_21E13F134();
  v52 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v51 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEADB60, &qword_21E159D20);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v50 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEADB98, &qword_21E159C40);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v55 = &v50 - v16;
  v17 = type metadata accessor for VisualSearchCardImageView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEADC30, &unk_21E159E40);
  sub_21E141714();
  v18 = sub_21E13F174();
  v19 = *(v18 - 8);
  v20 = *(v19 + 48);
  v21 = v20(v8, 1, v18);
  v56 = v1;
  v53 = v17;
  if (v21 == 1)
  {
    sub_21DF236C0(v1 + *(v17 + 20), v11, &qword_27CEADB60, &qword_21E159D20);
    if (v20(v8, 1, v18) != 1)
    {
      sub_21DF23614(v8, &qword_27CEADB60, &qword_21E159D20);
    }
  }

  else
  {
    (*(v19 + 32))(v11, v8, v18);
    (*(v19 + 56))(v11, 0, 1, v18);
  }

  if (v20(v11, 1, v18) == 1)
  {
    sub_21DF23614(v11, &qword_27CEADB60, &qword_21E159D20);
    v22 = v52;
    v23 = v55;
    v24 = v54;
    (*(v52 + 56))(v55, 1, 1, v54);
  }

  else
  {
    v23 = v55;
    sub_21E13F144();
    (*(v19 + 8))(v11, v18);
    v24 = v54;
    v22 = v52;
  }

  sub_21DF236C0(v23, v14, &qword_27CEADB98, &qword_21E159C40);
  if ((*(v22 + 48))(v14, 1, v24) == 1)
  {
    sub_21DF23614(v14, &qword_27CEADB98, &qword_21E159C40);
    v25 = 1.0;
  }

  else
  {
    v26 = v51;
    (*(v22 + 32))(v51, v14, v24);
    sub_21E13F114();
    v28 = v27;
    sub_21E13F124();
    v30 = v29;
    (*(v22 + 8))(v26, v24);
    v25 = v28 / v30;
  }

  v31 = v56;
  v32 = dbl_21E159C70[*(v56 + *(v53 + 24)) == 1];
  if (v25 > v32)
  {
    v32 = v25;
  }

  if (v32 <= 1.6)
  {
    v33 = v32;
  }

  else
  {
    v33 = 1.6;
  }

  *v3 = sub_21E141CC4();
  v3[1] = v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEADC78, &qword_21E159EE0);
  sub_21E12B120(v31, v3 + *(v35 + 44));
  v36 = v3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEADC80, &qword_21E159EE8) + 36);
  *v36 = 0;
  *(v36 + 4) = 1;
  sub_21E141CC4();
  sub_21E13FCE4();
  v37 = (v3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEADC88, &qword_21E159EF0) + 36));
  v38 = v66;
  v37[4] = v65;
  v37[5] = v38;
  v37[6] = v67;
  v39 = v62;
  *v37 = v61;
  v37[1] = v39;
  v40 = v64;
  v37[2] = v63;
  v37[3] = v40;
  v41 = v3 + *(v57 + 36);
  *v41 = v33;
  *(v41 + 4) = 0;
  sub_21E141CC4();
  sub_21E13FCE4();
  sub_21DF23614(v23, &qword_27CEADB98, &qword_21E159C40);
  v42 = v59;
  sub_21DF3DE9C(v3, v59, &qword_27CEADC68, &qword_21E159EC8);
  v43 = (v42 + *(v58 + 36));
  v44 = v73;
  v43[4] = v72;
  v43[5] = v44;
  v43[6] = v74;
  v45 = v69;
  *v43 = v68;
  v43[1] = v45;
  v46 = v71;
  v43[2] = v70;
  v43[3] = v46;
  v47 = v42;
  v48 = v60;
  sub_21DF3DE9C(v47, v60, &qword_27CEADC70, &unk_21E159ED0);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEADC90, &qword_21E159EF8);
  *(v48 + *(result + 36)) = 1;
  return result;
}

uint64_t sub_21E12B120@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v151 = a2;
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEADC98, &qword_21E159F00);
  MEMORY[0x28223BE20](v143);
  v144 = (&v107 - v3);
  v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEADCA0, &qword_21E159F08);
  MEMORY[0x28223BE20](v150);
  v145 = &v107 - v4;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEADCA8, &qword_21E159F10);
  MEMORY[0x28223BE20](v120);
  v121 = (&v107 - v5);
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEADCB0, &qword_21E159F18);
  MEMORY[0x28223BE20](v141);
  v122 = &v107 - v6;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEADCB8, &qword_21E159F20);
  MEMORY[0x28223BE20](v112);
  v114 = (&v107 - v7);
  v8 = type metadata accessor for VisualSearchCardImageView(0);
  v108 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v109 = v9;
  v110 = &v107 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEADCC0, &qword_21E159F28);
  MEMORY[0x28223BE20](v146);
  v111 = &v107 - v10;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEADCC8, &qword_21E159F30);
  MEMORY[0x28223BE20](v117);
  v113 = &v107 - v11;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEADCD0, &qword_21E159F38);
  MEMORY[0x28223BE20](v115);
  v116 = (&v107 - v12);
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEADCD8, &unk_21E159F40);
  MEMORY[0x28223BE20](v119);
  v118 = &v107 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9990, &qword_21E148DD0);
  MEMORY[0x28223BE20](v14 - 8);
  v123 = &v107 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v124 = &v107 - v17;
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8FE0, &qword_21E159F50);
  v127 = *(v136 - 8);
  MEMORY[0x28223BE20](v136);
  v126 = &v107 - v18;
  v132 = sub_21E13D264();
  v125 = *(v132 - 8);
  MEMORY[0x28223BE20](v132);
  v131 = &v107 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEADCE0, &qword_21E159F58);
  MEMORY[0x28223BE20](v147);
  v149 = &v107 - v20;
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEADCE8, &unk_21E159F60);
  MEMORY[0x28223BE20](v137);
  v139 = &v107 - v21;
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEADCF0, &unk_21E15A200);
  MEMORY[0x28223BE20](v133);
  v134 = (&v107 - v22);
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEADCF8, &qword_21E159F70);
  MEMORY[0x28223BE20](v138);
  v135 = &v107 - v23;
  v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEADD00, &qword_21E159F78);
  MEMORY[0x28223BE20](v148);
  v140 = &v107 - v24;
  v130 = sub_21E141624();
  v129 = *(v130 - 8);
  MEMORY[0x28223BE20](v130);
  v128 = &v107 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEADB60, &qword_21E159D20);
  MEMORY[0x28223BE20](v26 - 8);
  v28 = &v107 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v31 = &v107 - v30;
  v32 = sub_21E13F154();
  v142 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v34 = (&v107 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  v35 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEADC30, &unk_21E159E40);
  v36 = a1;
  sub_21E141714();
  v37 = sub_21E13F174();
  v38 = *(v37 - 8);
  v39 = *(v38 + 48);
  if (v39(v28, 1, v37) == 1)
  {
    sub_21DF236C0(a1 + *(v35 + 20), v31, &qword_27CEADB60, &qword_21E159D20);
    if (v39(v28, 1, v37) != 1)
    {
      sub_21DF23614(v28, &qword_27CEADB60, &qword_21E159D20);
    }
  }

  else
  {
    (*(v38 + 32))(v31, v28, v37);
    (*(v38 + 56))(v31, 0, 1, v37);
  }

  if (v39(v31, 1, v37) == 1)
  {
    sub_21DF23614(v31, &qword_27CEADB60, &qword_21E159D20);
  }

  else
  {
    sub_21E13F164();
    (*(v38 + 8))(v31, v37);
    v48 = v142;
    v49 = (*(v142 + 88))(v34, v32);
    if (v49 == *MEMORY[0x277D78B70])
    {
      (*(v48 + 96))(v34, v32);
      v50 = *v34;
      v51 = v34[1];
      sub_21DFAD958(*v34, v51);
      if (sub_21E141604())
      {
        v52 = v129;
        v53 = v128;
        v54 = v130;
        (*(v129 + 104))(v128, *MEMORY[0x277CE0FE0], v130);
        v55 = sub_21E141664();

        (*(v52 + 8))(v53, v54);
      }

      else
      {
        v55 = 0;
      }

      *v134 = v55;
      swift_storeEnumTagMultiPayload();

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEADD28, &unk_21E15A190);
      sub_21E12E644();
      sub_21DF23E5C(&qword_27CEA8FE8, &qword_27CEA8FE0, &qword_21E159F50, MEMORY[0x277CDD638]);
      v78 = v135;
      sub_21E1402F4();
      sub_21DF236C0(v78, v139, &qword_27CEADCF8, &qword_21E159F70);
      swift_storeEnumTagMultiPayload();
      sub_21E12E58C();
      sub_21E12E6C0();
      v79 = v140;
      sub_21E1402F4();
      sub_21DF23614(v78, &qword_27CEADCF8, &qword_21E159F70);
      sub_21DF236C0(v79, v149, &qword_27CEADD00, &qword_21E159F78);
      swift_storeEnumTagMultiPayload();
      sub_21E12E500();
      sub_21E12E864();
      sub_21E1402F4();
      sub_21DFA15AC(v50, v51);

      v45 = v79;
      v46 = &qword_27CEADD00;
      v47 = &qword_21E159F78;
      return sub_21DF23614(v45, v46, v47);
    }

    if (v49 == *MEMORY[0x277D78B68])
    {
      (*(v48 + 96))(v34, v32);
      v56 = v125;
      v58 = v131;
      v57 = v132;
      (*(v125 + 32))(v131, v34, v132);
      v59 = v124;
      (*(v56 + 16))(v124, v58, v57);
      (*(v56 + 56))(v59, 0, 1, v57);
      sub_21DF236C0(v59, v123, &qword_27CEA9990, &qword_21E148DD0);
      v60 = swift_allocObject();
      v60[2] = sub_21E12CC00;
      v60[3] = 0;
      v60[4] = sub_21DFB7CE0;
      v60[5] = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8BE8, &qword_21E149E60);
      sub_21DFB8FD0();
      v61 = v126;
      sub_21E13F334();
      sub_21DF23614(v59, &qword_27CEA9990, &qword_21E148DD0);
      v62 = v127;
      v63 = v136;
      (*(v127 + 16))(v134, v61, v136);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEADD28, &unk_21E15A190);
      sub_21E12E644();
      sub_21DF23E5C(&qword_27CEA8FE8, &qword_27CEA8FE0, &qword_21E159F50, MEMORY[0x277CDD638]);
      v64 = v135;
      sub_21E1402F4();
      sub_21DF236C0(v64, v139, &qword_27CEADCF8, &qword_21E159F70);
      swift_storeEnumTagMultiPayload();
      sub_21E12E58C();
      sub_21E12E6C0();
      v65 = v140;
      sub_21E1402F4();
      sub_21DF23614(v64, &qword_27CEADCF8, &qword_21E159F70);
      sub_21DF236C0(v65, v149, &qword_27CEADD00, &qword_21E159F78);
      swift_storeEnumTagMultiPayload();
      sub_21E12E500();
      sub_21E12E864();
      sub_21E1402F4();
      sub_21DF23614(v65, &qword_27CEADD00, &qword_21E159F78);
      (*(v62 + 8))(v61, v63);
      return (*(v56 + 8))(v131, v132);
    }

    if (v49 == *MEMORY[0x277D78B50])
    {
      (*(v48 + 96))(v34, v32);
      v67 = v34[3];
      if (v67)
      {
        v68 = v34[2];
        v69 = sub_21E1420F4();
        v70 = [objc_opt_self() bundleWithIdentifier_];

        v71 = v118;

        if (v70)
        {
          v72 = v70;
          sub_21E141674();
          v73 = v129;
          v74 = v128;
          v75 = v130;
          (*(v129 + 104))(v128, *MEMORY[0x277CE0FE0], v130);
          v76 = sub_21E141664();

          (*(v73 + 8))(v74, v75);
          *v114 = v76;
          swift_storeEnumTagMultiPayload();
          sub_21E12E3D0();

          v77 = v113;
          sub_21E1402F4();
        }

        else
        {
          v99 = sub_21E1404B4();
          v100 = v110;
          sub_21E12E010(v36, v110, type metadata accessor for VisualSearchCardImageView);
          v101 = (*(v108 + 80) + 32) & ~*(v108 + 80);
          v102 = swift_allocObject();
          *(v102 + 16) = v68;
          *(v102 + 24) = v67;
          sub_21E12A928(v100, v102 + v101);
          v103 = v111;
          v104 = &v111[*(v146 + 36)];
          sub_21E13F844();
          sub_21E1423D4();
          *v104 = &unk_21E159FA8;
          *(v104 + 1) = v102;
          *v103 = v99;
          *(v103 + 4) = 1053609165;
          *(v103 + 8) = 256;
          sub_21DF236C0(v103, v114, &qword_27CEADCC0, &qword_21E159F28);
          swift_storeEnumTagMultiPayload();
          sub_21E12E3D0();
          v77 = v113;
          sub_21E1402F4();
          sub_21DF23614(v103, &qword_27CEADCC0, &qword_21E159F28);
        }

        sub_21DF236C0(v77, v116, &qword_27CEADCC8, &qword_21E159F30);
        swift_storeEnumTagMultiPayload();
        sub_21E12E7D8();
        sub_21E1402F4();
        sub_21DF23614(v77, &qword_27CEADCC8, &qword_21E159F30);
      }

      else
      {
        sub_21E141674();
        v95 = v129;
        v96 = v128;
        v97 = v130;
        (*(v129 + 104))(v128, *MEMORY[0x277CE0FE0], v130);
        v98 = sub_21E141664();

        (*(v95 + 8))(v96, v97);
        *v116 = v98;
        swift_storeEnumTagMultiPayload();
        sub_21E12E7D8();
        v71 = v118;
        sub_21E1402F4();
      }

      v43 = &qword_27CEADCD8;
      v44 = &unk_21E159F40;
      sub_21DF236C0(v71, v121, &qword_27CEADCD8, &unk_21E159F40);
      swift_storeEnumTagMultiPayload();
      sub_21E12E74C();
      v105 = v122;
      sub_21E1402F4();
      sub_21DF236C0(v105, v139, &qword_27CEADCB0, &qword_21E159F18);
      swift_storeEnumTagMultiPayload();
      sub_21E12E58C();
      sub_21E12E6C0();
      v106 = v140;
      sub_21E1402F4();
      sub_21DF23614(v105, &qword_27CEADCB0, &qword_21E159F18);
      sub_21DF236C0(v106, v149, &qword_27CEADD00, &qword_21E159F78);
      swift_storeEnumTagMultiPayload();
      sub_21E12E500();
      sub_21E12E864();
      sub_21E1402F4();
      sub_21DF23614(v106, &qword_27CEADD00, &qword_21E159F78);
      v45 = v71;
      goto LABEL_8;
    }

    if (v49 == *MEMORY[0x277D78B58])
    {
      (*(v48 + 96))(v34, v32);
      sub_21E141614();
      v80 = v129;
      v81 = v128;
      v82 = v130;
      (*(v129 + 104))(v128, *MEMORY[0x277CE0FE0], v130);
      v83 = sub_21E141664();

      (*(v80 + 8))(v81, v82);
      *v121 = v83;
      swift_storeEnumTagMultiPayload();
      sub_21E12E74C();

      v84 = v122;
      sub_21E1402F4();
      sub_21DF236C0(v84, v139, &qword_27CEADCB0, &qword_21E159F18);
      swift_storeEnumTagMultiPayload();
      sub_21E12E58C();
      sub_21E12E6C0();
      v85 = v140;
      sub_21E1402F4();
      sub_21DF23614(v84, &qword_27CEADCB0, &qword_21E159F18);
      sub_21DF236C0(v85, v149, &qword_27CEADD00, &qword_21E159F78);
      swift_storeEnumTagMultiPayload();
      sub_21E12E500();
      sub_21E12E864();
      sub_21E1402F4();

      v45 = v85;
      v46 = &qword_27CEADD00;
      v47 = &qword_21E159F78;
      return sub_21DF23614(v45, v46, v47);
    }

    if (v49 == *MEMORY[0x277D78B60])
    {
      (*(v48 + 96))(v34, v32);
      v86 = *v34;
      v87 = v34[1];
      v88 = sub_21E1404B4();
      v89 = v110;
      sub_21E12E010(v36, v110, type metadata accessor for VisualSearchCardImageView);
      v90 = (*(v108 + 80) + 32) & ~*(v108 + 80);
      v91 = swift_allocObject();
      *(v91 + 16) = v86;
      *(v91 + 24) = v87;
      v142 = v87;
      sub_21E12A928(v89, v91 + v90);
      v92 = v111;
      v93 = &v111[*(v146 + 36)];
      sub_21E13F844();

      sub_21E1423D4();
      *v93 = &unk_21E159F98;
      *(v93 + 1) = v91;
      *v92 = v88;
      *(v92 + 4) = 1053609165;
      *(v92 + 8) = 256;
      sub_21DF236C0(v92, v144, &qword_27CEADCC0, &qword_21E159F28);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8C00, &unk_21E159F80);
      sub_21E12E3D0();
      sub_21DF23E5C(&qword_27CEA8BF8, &qword_27CEA8C00, &unk_21E159F80, MEMORY[0x277CDF3A0]);
      v94 = v145;
      sub_21E1402F4();
      sub_21DF236C0(v94, v149, &qword_27CEADCA0, &qword_21E159F08);
      swift_storeEnumTagMultiPayload();
      sub_21E12E500();
      sub_21E12E864();
      sub_21E1402F4();

      sub_21DF23614(v94, &qword_27CEADCA0, &qword_21E159F08);
      v45 = v92;
      v46 = &qword_27CEADCC0;
      v47 = &qword_21E159F28;
      return sub_21DF23614(v45, v46, v47);
    }

    (*(v48 + 8))(v34, v32);
  }

  v40 = sub_21E1404B4();
  v41 = v144;
  *v144 = v40;
  v41[1] = 1053609165;
  *(v41 + 4) = 256;
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8C00, &unk_21E159F80);
  sub_21E12E3D0();
  sub_21DF23E5C(&qword_27CEA8BF8, &qword_27CEA8C00, &unk_21E159F80, MEMORY[0x277CDF3A0]);
  v42 = v145;
  sub_21E1402F4();
  v43 = &qword_27CEADCA0;
  v44 = &qword_21E159F08;
  sub_21DF236C0(v42, v149, &qword_27CEADCA0, &qword_21E159F08);
  swift_storeEnumTagMultiPayload();
  sub_21E12E500();
  sub_21E12E864();
  sub_21E1402F4();
  v45 = v42;
LABEL_8:
  v46 = v43;
  v47 = v44;
  return sub_21DF23614(v45, v46, v47);
}

uint64_t sub_21E12CC00@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_21E141624();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 104))(v7, *MEMORY[0x277CE0FE0], v3, v5);
  v8 = sub_21E141664();
  result = (*(v4 + 8))(v7, v3);
  *a2 = v8;
  return result;
}

uint64_t sub_21E12CD14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = *(type metadata accessor for VisualSearchCardImageView(0) - 8);
  v3[5] = v4;
  v3[6] = *(v4 + 64);
  v3[7] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD980, &qword_21E146EB0);
  v3[8] = swift_task_alloc();
  v5 = sub_21E142994();
  v3[9] = v5;
  v3[10] = *(v5 - 8);
  v3[11] = swift_task_alloc();
  v3[12] = sub_21E1423C4();
  v3[13] = sub_21E1423B4();
  v7 = sub_21E142364();
  v3[14] = v7;
  v3[15] = v6;

  return MEMORY[0x2822009F8](sub_21E12CEA8, v7, v6);
}

uint64_t sub_21E12CEA8(uint64_t a1)
{
  sub_21E142BB4();
  v2 = swift_task_alloc();
  *(v1 + 128) = v2;
  *v2 = v1;
  v2[1] = sub_21E12CF74;

  return sub_21E077260(500000000000000000, 0, 0, 0, 1);
}

uint64_t sub_21E12CF74()
{
  v3 = *v1;
  v2 = *v1;

  v4 = v2[11];
  v5 = v2[10];
  v6 = v2[9];
  if (v0)
  {

    (*(v5 + 8))(v4, v6);
    v7 = v3[14];
    v8 = v3[15];
    v9 = sub_21E12F544;
  }

  else
  {
    (*(v5 + 8))(v4, v6);
    v7 = v3[14];
    v8 = v3[15];
    v9 = sub_21E12D108;
  }

  return MEMORY[0x2822009F8](v9, v7, v8);
}

uint64_t sub_21E12D108()
{

  v1 = sub_21E1420F4();
  v2 = [objc_opt_self() bundleWithIdentifier_];

  if (v2)
  {
    v4 = v0[7];
    v3 = v0[8];
    v5 = v0[5];
    v6 = v0[4];

    v7 = sub_21E1423F4();
    (*(*(v7 - 8) + 56))(v3, 1, 1, v7);
    sub_21E12E010(v6, v4, type metadata accessor for VisualSearchCardImageView);
    v8 = sub_21E1423B4();
    v9 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v10 = swift_allocObject();
    v11 = MEMORY[0x277D85700];
    *(v10 + 16) = v8;
    *(v10 + 24) = v11;
    sub_21E12A928(v4, v10 + v9);
    sub_21E0C2E04(0, 0, v3, &unk_21E159FB8, v10);
  }

  v12 = v0[1];

  return v12();
}

uint64_t sub_21E12D2C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEADB60, &qword_21E159D20);
  v4[3] = swift_task_alloc();
  sub_21E1423C4();
  v4[4] = sub_21E1423B4();
  v6 = sub_21E142364();

  return MEMORY[0x2822009F8](sub_21E12D394, v6, v5);
}

uint64_t sub_21E12D394()
{
  v1 = v0[3];
  v2 = v0[2];

  v3 = type metadata accessor for VisualSearchCardImageView(0);
  sub_21DF236C0(v2 + *(v3 + 20), v1, &qword_27CEADB60, &qword_21E159D20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEADC30, &unk_21E159E40);
  sub_21E141724();

  v4 = v0[1];

  return v4();
}

uint64_t sub_21E12D458(int *a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a3;
  v5 = *(type metadata accessor for VisualSearchCardImageView(0) - 8);
  v3[3] = v5;
  v3[4] = *(v5 + 64);
  v3[5] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD980, &qword_21E146EB0);
  v3[6] = swift_task_alloc();
  v6 = sub_21E13F174();
  v3[7] = v6;
  v7 = *(v6 - 8);
  v3[8] = v7;
  v3[9] = *(v7 + 64);
  v3[10] = swift_task_alloc();
  v8 = swift_task_alloc();
  v3[11] = v8;
  v3[12] = sub_21E1423C4();
  v3[13] = sub_21E1423B4();
  v11 = (a1 + *a1);
  v9 = swift_task_alloc();
  v3[14] = v9;
  *v9 = v3;
  v9[1] = sub_21E12D684;

  return v11(v8);
}

uint64_t sub_21E12D684()
{
  *(*v1 + 120) = v0;

  v3 = sub_21E142364();
  if (v0)
  {
    v4 = sub_21E12D9E4;
  }

  else
  {
    v4 = sub_21E12D7E0;
  }

  return MEMORY[0x2822009F8](v4, v3, v2);
}

uint64_t sub_21E12D7E0()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[8];
  v18 = v2;
  v5 = v0[6];
  v4 = v0[7];
  v6 = v0[5];
  v17 = v0[4];
  v8 = v0[2];
  v7 = v0[3];

  v9 = sub_21E1423F4();
  (*(*(v9 - 8) + 56))(v5, 1, 1, v9);
  sub_21E12E010(v8, v6, type metadata accessor for VisualSearchCardImageView);
  (*(v3 + 16))(v1, v2, v4);
  v10 = sub_21E1423B4();
  v11 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v12 = (v17 + *(v3 + 80) + v11) & ~*(v3 + 80);
  v13 = swift_allocObject();
  v14 = MEMORY[0x277D85700];
  *(v13 + 16) = v10;
  *(v13 + 24) = v14;
  sub_21E12A928(v6, v13 + v11);
  (*(v3 + 32))(v13 + v12, v1, v4);
  sub_21E0C2E04(0, 0, v5, &unk_21E159FD8, v13);

  (*(v3 + 8))(v18, v4);

  v15 = v0[1];

  return v15();
}

uint64_t sub_21E12D9E4()
{
  v1 = v0[15];
  v3 = v0[5];
  v2 = v0[6];
  v4 = v0[3];
  v5 = v0[2];

  v6 = sub_21E1423F4();
  (*(*(v6 - 8) + 56))(v2, 1, 1, v6);
  sub_21E12E010(v5, v3, type metadata accessor for VisualSearchCardImageView);
  v7 = sub_21E1423B4();
  v8 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v9 = swift_allocObject();
  v10 = MEMORY[0x277D85700];
  *(v9 + 16) = v7;
  *(v9 + 24) = v10;
  sub_21E12A928(v3, v9 + v8);
  sub_21E0C2E04(0, 0, v2, &unk_21E159FC8, v9);

  v11 = v0[1];

  return v11();
}

uint64_t sub_21E12DB68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEADB60, &qword_21E159D20);
  v5[4] = swift_task_alloc();
  v5[5] = swift_task_alloc();
  sub_21E1423C4();
  v5[6] = sub_21E1423B4();
  v7 = sub_21E142364();

  return MEMORY[0x2822009F8](sub_21E12DC44, v7, v6);
}

uint64_t sub_21E12DC44()
{
  v1 = v0[5];
  v3 = v0[3];
  v2 = v0[4];

  v4 = sub_21E13F174();
  v5 = *(v4 - 8);
  (*(v5 + 16))(v1, v3, v4);
  (*(v5 + 56))(v1, 0, 1, v4);
  type metadata accessor for VisualSearchCardImageView(0);
  sub_21DF236C0(v1, v2, &qword_27CEADB60, &qword_21E159D20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEADC30, &unk_21E159E40);
  sub_21E141724();
  sub_21DF23614(v1, &qword_27CEADB60, &qword_21E159D20);

  v6 = v0[1];

  return v6();
}

uint64_t sub_21E12DDA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEADB60, &qword_21E159D20);
  v4[3] = swift_task_alloc();
  v4[4] = swift_task_alloc();
  sub_21E1423C4();
  v4[5] = sub_21E1423B4();
  v6 = sub_21E142364();

  return MEMORY[0x2822009F8](sub_21E12DE80, v6, v5);
}

uint64_t sub_21E12DE80()
{
  v1 = v0[4];
  v2 = v0[3];

  v3 = sub_21E13F174();
  (*(*(v3 - 8) + 56))(v1, 1, 1, v3);
  type metadata accessor for VisualSearchCardImageView(0);
  sub_21DF236C0(v1, v2, &qword_27CEADB60, &qword_21E159D20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEADC30, &unk_21E159E40);
  sub_21E141724();
  sub_21DF23614(v1, &qword_27CEADB60, &qword_21E159D20);

  v4 = v0[1];

  return v4();
}

uint64_t sub_21E12DFAC@<X0>(uint64_t a1@<X8>)
{
  result = sub_21E13FF44();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_21E12E010(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21E12E078(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_21E12E100(uint64_t a1)
{
  sub_21E12E204(319, &qword_27CEA7108, MEMORY[0x277CE02A8], MEMORY[0x277CDF468]);
  if (v1 <= 0x3F)
  {
    sub_21E12E204(319, &qword_27CEADC48, MEMORY[0x277D78B78], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_21E12E268(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_21E12E204(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_21E12E268(uint64_t a1)
{
  if (!qword_27CEADC50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEADB60, &qword_21E159D20);
    v1 = sub_21E141744();
    if (!v2)
    {
      atomic_store(v1, &qword_27CEADC50);
    }
  }
}

unint64_t sub_21E12E2CC()
{
  result = qword_27CEADC58;
  if (!qword_27CEADC58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEADC60, qword_21E159E70);
    sub_21DF23E5C(&qword_27CEADBE8, &qword_27CEADBD8, &qword_21E159D08, MEMORY[0x277CE1198]);
    sub_21E12E4B8(&qword_27CEA9E80, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEADC58);
  }

  return result;
}

unint64_t sub_21E12E3D0()
{
  result = qword_27CEADD08;
  if (!qword_27CEADD08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEADCC0, &qword_21E159F28);
    sub_21DF23E5C(&qword_27CEA8BF8, &qword_27CEA8C00, &unk_21E159F80, MEMORY[0x277CDF3A0]);
    sub_21E12E4B8(&unk_280F68FF0, MEMORY[0x277CDD8B0], MEMORY[0x277CDD8A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEADD08);
  }

  return result;
}

uint64_t sub_21E12E4B8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_21E12E500()
{
  result = qword_27CEADD10;
  if (!qword_27CEADD10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEADD00, &qword_21E159F78);
    sub_21E12E58C();
    sub_21E12E6C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEADD10);
  }

  return result;
}

unint64_t sub_21E12E58C()
{
  result = qword_27CEADD18;
  if (!qword_27CEADD18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEADCF8, &qword_21E159F70);
    sub_21E12E644();
    sub_21DF23E5C(&qword_27CEA8FE8, &qword_27CEA8FE0, &qword_21E159F50, MEMORY[0x277CDD638]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEADD18);
  }

  return result;
}

unint64_t sub_21E12E644()
{
  result = qword_27CEADD20;
  if (!qword_27CEADD20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEADD28, &unk_21E15A190);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEADD20);
  }

  return result;
}

unint64_t sub_21E12E6C0()
{
  result = qword_27CEADD30;
  if (!qword_27CEADD30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEADCB0, &qword_21E159F18);
    sub_21E12E74C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEADD30);
  }

  return result;
}

unint64_t sub_21E12E74C()
{
  result = qword_27CEADD38;
  if (!qword_27CEADD38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEADCD8, &unk_21E159F40);
    sub_21E12E7D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEADD38);
  }

  return result;
}

unint64_t sub_21E12E7D8()
{
  result = qword_27CEADD40;
  if (!qword_27CEADD40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEADCC8, &qword_21E159F30);
    sub_21E12E3D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEADD40);
  }

  return result;
}

unint64_t sub_21E12E864()
{
  result = qword_27CEADD48;
  if (!qword_27CEADD48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEADCA0, &qword_21E159F08);
    sub_21E12E3D0();
    sub_21DF23E5C(&qword_27CEA8BF8, &qword_27CEA8C00, &unk_21E159F80, MEMORY[0x277CDF3A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEADD48);
  }

  return result;
}

uint64_t sub_21E12E91C()
{
  v2 = *(type metadata accessor for VisualSearchCardImageView(0) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_21DF8DAF8;

  return sub_21E12D458(v4, v5, v0 + v3);
}

uint64_t objectdestroyTm_29(void (*a1)(void))
{
  v3 = type metadata accessor for VisualSearchCardImageView(0);
  v4 = (*(*(v3 - 8) + 80) + 32) & ~*(*(v3 - 8) + 80);
  a1(*(v1 + 24));
  v5 = v1 + v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7140, &qword_21E149F40);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_21E1401B4();
    (*(*(v6 - 8) + 8))(v1 + v4, v6);
  }

  else
  {
  }

  v7 = *(v3 + 20);
  v8 = sub_21E13F174();
  v9 = *(v8 - 8);
  v10 = *(v9 + 48);
  if (!v10(v5 + v7, 1, v8))
  {
    (*(v9 + 8))(v5 + v7, v8);
  }

  v11 = v5 + *(v3 + 28);
  if (!v10(v11, 1, v8))
  {
    (*(v9 + 8))(v11, v8);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEADC30, &unk_21E159E40);

  return swift_deallocObject();
}

uint64_t sub_21E12EC28()
{
  v2 = *(type metadata accessor for VisualSearchCardImageView(0) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_21DF4AA04;

  return sub_21E12CD14(v4, v5, v0 + v3);
}

uint64_t sub_21E12ED04(uint64_t a1)
{
  v4 = *(type metadata accessor for VisualSearchCardImageView(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_21DF8DAF8;

  return sub_21E12D2C4(a1, v6, v7, v1 + v5);
}

uint64_t objectdestroy_34Tm()
{
  v1 = type metadata accessor for VisualSearchCardImageView(0);
  v2 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  swift_unknownObjectRelease();
  v3 = v0 + v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7140, &qword_21E149F40);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_21E1401B4();
    (*(*(v4 - 8) + 8))(v0 + v2, v4);
  }

  else
  {
  }

  v5 = *(v1 + 20);
  v6 = sub_21E13F174();
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  if (!v8(v3 + v5, 1, v6))
  {
    (*(v7 + 8))(v3 + v5, v6);
  }

  v9 = v3 + *(v1 + 28);
  if (!v8(v9, 1, v6))
  {
    (*(v7 + 8))(v9, v6);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEADC30, &unk_21E159E40);

  return swift_deallocObject();
}

uint64_t sub_21E12F01C(uint64_t a1)
{
  v4 = *(type metadata accessor for VisualSearchCardImageView(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_21DF8DAF8;

  return sub_21E12DDA4(a1, v6, v7, v1 + v5);
}

uint64_t sub_21E12F10C(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for VisualSearchCardImageView(0) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_21E13F174() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_21DF8DAF8;

  return sub_21E12DB68(a1, v10, v11, v1 + v6, v1 + v9);
}

unint64_t sub_21E12F25C()
{
  result = qword_27CEADD50;
  if (!qword_27CEADD50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEADC90, &qword_21E159EF8);
    sub_21E12F2E8();
    sub_21DFEA160();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEADD50);
  }

  return result;
}

unint64_t sub_21E12F2E8()
{
  result = qword_27CEADD58;
  if (!qword_27CEADD58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEADC70, &unk_21E159ED0);
    sub_21E12F374();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEADD58);
  }

  return result;
}

unint64_t sub_21E12F374()
{
  result = qword_27CEADD60;
  if (!qword_27CEADD60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEADC68, &qword_21E159EC8);
    sub_21E12F400();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEADD60);
  }

  return result;
}

unint64_t sub_21E12F400()
{
  result = qword_27CEADD68;
  if (!qword_27CEADD68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEADC88, &qword_21E159EF0);
    sub_21E12F48C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEADD68);
  }

  return result;
}

unint64_t sub_21E12F48C()
{
  result = qword_27CEADD70;
  if (!qword_27CEADD70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEADC80, &qword_21E159EE8);
    sub_21DF23E5C(&qword_27CEADD78, &qword_27CEADD80, &unk_21E159FE0, MEMORY[0x277CE11A8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEADD70);
  }

  return result;
}

uint64_t sub_21E12F550(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VisualSearchState(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t VisualSearchCarouselView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v48 = a1;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEADD88, &unk_21E159FF0);
  MEMORY[0x28223BE20](v49);
  v2 = &v37 - v1;
  v3 = sub_21E13F0A4();
  v37 = *(v3 - 8);
  v38 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21E1400C4();
  MEMORY[0x28223BE20](v6 - 8);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA91D0, &unk_21E14A930);
  MEMORY[0x28223BE20](v39);
  v8 = &v37 - v7;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA91D8, &qword_21E15A000);
  MEMORY[0x28223BE20](v42);
  v40 = &v37 - v9;
  v10 = sub_21E13EFC4();
  v43 = *(v10 - 8);
  v44 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEADD90, &qword_21E15A008);
  MEMORY[0x28223BE20](v46);
  v14 = &v37 - v13;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEADD98, &qword_21E15A010);
  MEMORY[0x28223BE20](v41);
  v16 = &v37 - v15;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEADDA0, &qword_21E15A018);
  MEMORY[0x28223BE20](v47);
  v18 = &v37 - v17;
  v19 = type metadata accessor for VisualSearchState(0);
  MEMORY[0x28223BE20](v19);
  v21 = &v37 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21E1262CC(v45, v21);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      (*(v43 + 32))(v12, v21, v44);
      sub_21E1400B4();
      sub_21E1400A4();
      v45 = v12;
      sub_21E13EFA4();
      sub_21E140094();

      sub_21E1400A4();
      sub_21E1400E4();
      sub_21DF23B80();
      if (!sub_21E1426B4())
      {
        v23 = [objc_opt_self() mainBundle];
      }

      v24 = sub_21E140C64();
      v26 = v25;
      v28 = v27;
      v30 = v29;
      v31 = *(v39 + 36);
      *&v8[v31] = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD070, &qword_21E146170);
      swift_storeEnumTagMultiPayload();
      *v8 = v24;
      *(v8 + 1) = v26;
      v8[16] = v28 & 1;
      *(v8 + 3) = v30;
      sub_21DFCFB7C();
      v32 = v40;
      sub_21E141164();
      sub_21DF23614(v8, &qword_27CEA91D0, &unk_21E14A930);
      sub_21DF236C0(v32, v16, &qword_27CEA91D8, &qword_21E15A000);
      swift_storeEnumTagMultiPayload();
      sub_21DFCFAC0();
      sub_21E1402F4();
      sub_21DF236C0(v18, v14, &qword_27CEADDA0, &qword_21E15A018);
      swift_storeEnumTagMultiPayload();
      sub_21E130520();
      sub_21DF23E5C(&qword_27CEADDB8, &qword_27CEADD88, &unk_21E159FF0, MEMORY[0x277CE1198]);
      sub_21E1402F4();
      sub_21DF23614(v18, &qword_27CEADDA0, &qword_21E15A018);
      sub_21DF23614(v32, &qword_27CEA91D8, &qword_21E15A000);
      return (*(v43 + 8))(v45, v44);
    }

    else
    {
      v35 = v37;
      v34 = v38;
      (*(v37 + 32))(v5, v21, v38);
      *v2 = sub_21E1401C4();
      *(v2 + 1) = 0;
      v2[16] = 1;
      v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEADDA8, &qword_21E15A020);
      sub_21E12FE30(v5, &v2[*(v36 + 44)]);
      sub_21DF1DE08(v2, v14);
      swift_storeEnumTagMultiPayload();
      sub_21E130520();
      sub_21DF23E5C(&qword_27CEADDB8, &qword_27CEADD88, &unk_21E159FF0, MEMORY[0x277CE1198]);
      sub_21E1402F4();
      sub_21DF1DE78(v2);
      return (*(v35 + 8))(v5, v34);
    }
  }

  else
  {
    swift_storeEnumTagMultiPayload();
    sub_21DFCFAC0();
    sub_21E1402F4();
    sub_21DF236C0(v18, v14, &qword_27CEADDA0, &qword_21E15A018);
    swift_storeEnumTagMultiPayload();
    sub_21E130520();
    sub_21DF23E5C(&qword_27CEADDB8, &qword_27CEADD88, &unk_21E159FF0, MEMORY[0x277CE1198]);
    sub_21E1402F4();
    sub_21DF23614(v18, &qword_27CEADDA0, &qword_21E15A018);
    return sub_21E1264EC(v21);
  }
}

uint64_t sub_21E12FE30@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v42 = a1;
  v55 = a2;
  v3 = sub_21E140714();
  v4 = *(v3 - 8);
  v53 = v3;
  v54 = v4;
  MEMORY[0x28223BE20](v3);
  v47 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAA830, &qword_21E1558E0);
  v52 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v46 = &v40 - v6;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEADDE0, &qword_21E15A110);
  v49 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v48 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v57 = &v40 - v9;
  v43 = sub_21E1406C4();
  v10 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEADDE8, &qword_21E15A118);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v40 - v15;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEADDF0, &qword_21E15A120);
  v56 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v44 = &v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v40 - v19;
  sub_21E1408D4();
  v59 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEADDF8, &qword_21E15A128);
  sub_21DF23E5C(&qword_27CEADE00, &qword_27CEADDF8, &qword_21E15A128, MEMORY[0x277CDF330]);
  sub_21E13F3C4();
  sub_21E1406B4();
  sub_21DF23E5C(&qword_27CEADE08, &qword_27CEADDE8, &qword_21E15A118, MEMORY[0x277CDD6E0]);
  v41 = v20;
  v21 = v43;
  sub_21E141114();
  (*(v10 + 8))(v12, v21);
  (*(v14 + 8))(v16, v13);
  v58 = v42;
  v22 = v46;
  sub_21E141764();
  v23 = v47;
  sub_21E140704();
  sub_21DF23E5C(&qword_27CEAA840, &qword_27CEAA830, &qword_21E1558E0, MEMORY[0x277CDF028]);
  sub_21E132A08(&qword_27CEA72E8, MEMORY[0x277CDE400], MEMORY[0x277CDE3E8]);
  v24 = v57;
  v25 = v50;
  v26 = v53;
  sub_21E140DC4();
  (*(v54 + 8))(v23, v26);
  (*(v52 + 8))(v22, v25);
  v27 = *(v56 + 16);
  v28 = v44;
  v29 = v20;
  v30 = v45;
  v27(v44, v29, v45);
  v31 = v48;
  v32 = v49;
  v33 = *(v49 + 16);
  v34 = v51;
  v33(v48, v24, v51);
  v35 = v55;
  v27(v55, v28, v30);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEADE10, &unk_21E15A130);
  v33(&v35[*(v36 + 48)], v31, v34);
  v37 = *(v32 + 8);
  v37(v57, v34);
  v38 = *(v56 + 8);
  v38(v41, v30);
  v37(v31, v34);
  return (v38)(v28, v30);
}

unint64_t sub_21E130520()
{
  result = qword_27CEADDB0;
  if (!qword_27CEADDB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEADDA0, &qword_21E15A018);
    sub_21DFCFAC0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEADDB0);
  }

  return result;
}

uint64_t sub_21E1305C8(uint64_t a1)
{
  v1 = sub_21E140404();
  MEMORY[0x28223BE20](v1);
  sub_21E140004();
  sub_21E132A08(&qword_27CEADE20, MEMORY[0x277CE0428], MEMORY[0x277CE0448]);
  sub_21E142CC4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEADE28, &qword_21E15A140);
  sub_21E13239C();
  return sub_21E13F3A4();
}

uint64_t sub_21E130700(uint64_t a1)
{
  sub_21E13F074();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEADED0, &qword_21E15A1D8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEADED8, &unk_21E15A1E0);
  sub_21DF23E5C(&qword_27CEADEE0, &qword_27CEADED0, &qword_21E15A1D8, MEMORY[0x277D83980]);
  sub_21E132A08(&qword_27CEADEE8, MEMORY[0x277D78898], MEMORY[0x277D788A0]);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEADE38, &qword_21E15A148);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEADE40, &qword_21E15A150);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEADE48, &qword_21E15A158);
  sub_21E132568();
  swift_getOpaqueTypeConformance2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEADEC8, &unk_21E15A1B0);
  sub_21E13FD44();
  sub_21E132A08(&qword_27CEAD718, MEMORY[0x277CDFCB0], MEMORY[0x277CDFCA8]);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return sub_21E141A74();
}

uint64_t sub_21E130978@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v32[1] = a2;
  v2 = sub_21E140734();
  v33 = *(v2 - 8);
  v34 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEADE48, &qword_21E15A158);
  MEMORY[0x28223BE20](v5);
  v7 = v32 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEADE38, &qword_21E15A148);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v32 - v10;
  sub_21E130D9C(v7);
  *&v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEADE70, &qword_21E15A168) + 36)] = 257;
  v12 = &v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEADE60, &qword_21E15A160) + 36)];
  v13 = *(sub_21E13FCA4() + 20);
  v14 = *MEMORY[0x277CE0118];
  v15 = sub_21E140144();
  (*(*(v15 - 8) + 104))(&v12[v13], v14, v15);
  __asm { FMOV            V0.2D, #25.0 }

  *v12 = _Q0;
  *&v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8F18, &qword_21E14A4C0) + 36)] = 256;
  LOBYTE(v14) = sub_21E140904();
  sub_21E13F374();
  v21 = &v7[*(v5 + 36)];
  *v21 = v14;
  *(v21 + 1) = v22;
  *(v21 + 2) = v23;
  *(v21 + 3) = v24;
  *(v21 + 4) = v25;
  v21[40] = 0;
  sub_21E1408D4();
  sub_21E141CC4();
  v26 = sub_21E132568();
  sub_21E141144();
  sub_21DF23614(v7, &qword_27CEADE48, &qword_21E15A158);
  sub_21E140724();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEADE40, &qword_21E15A150);
  v35 = v5;
  v36 = v26;
  swift_getOpaqueTypeConformance2();
  v27 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEADEC8, &unk_21E15A1B0);
  v28 = sub_21E13FD44();
  v29 = sub_21E132A08(&qword_27CEAD718, MEMORY[0x277CDFCB0], MEMORY[0x277CDFCA8]);
  v35 = v28;
  v36 = v29;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v35 = v27;
  v36 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  sub_21E140FF4();
  (*(v33 + 8))(v4, v34);
  return (*(v9 + 8))(v11, v8);
}

void sub_21E130D9C(uint64_t a1@<X8>)
{
  v65 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9990, &qword_21E148DD0);
  MEMORY[0x28223BE20](v1 - 8);
  v50 = &v49 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v51 = &v49 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8FE0, &qword_21E159F50);
  v56 = *(v5 - 8);
  v57 = v5;
  MEMORY[0x28223BE20](v5);
  v55 = &v49 - v6;
  v7 = sub_21E13D264();
  v53 = *(v7 - 8);
  v54 = v7;
  MEMORY[0x28223BE20](v7);
  v52 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEADEF0, &qword_21E15A1F0);
  MEMORY[0x28223BE20](v62);
  v64 = (&v49 - v9);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEADEF8, &qword_21E15A1F8);
  MEMORY[0x28223BE20](v58);
  v60 = (&v49 - v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEADCF0, &unk_21E15A200);
  MEMORY[0x28223BE20](v11);
  v13 = (&v49 - v12);
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEADCF8, &qword_21E159F70);
  MEMORY[0x28223BE20](v59);
  v15 = &v49 - v14;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEADEA0, &unk_21E15A180);
  MEMORY[0x28223BE20](v63);
  v61 = &v49 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEADB60, &qword_21E159D20);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v49 - v18;
  v20 = sub_21E13F154();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = (&v49 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_21E13F024();
  v24 = sub_21E13F174();
  v25 = *(v24 - 8);
  if ((*(v25 + 48))(v19, 1, v24) == 1)
  {
    sub_21DF23614(v19, &qword_27CEADB60, &qword_21E159D20);
LABEL_3:
    v26 = sub_21E1404B4();
    v27 = v64;
    *v64 = v26;
    v27[1] = 1053609165;
    *(v27 + 4) = 256;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8C00, &unk_21E159F80);
    sub_21E132874();
    sub_21DF23E5C(&qword_27CEA8BF8, &qword_27CEA8C00, &unk_21E159F80, MEMORY[0x277CDF3A0]);
    sub_21E1402F4();
    return;
  }

  sub_21E13F164();
  (*(v25 + 8))(v19, v24);
  v28 = (*(v21 + 88))(v23, v20);
  if (v28 == *MEMORY[0x277D78B70])
  {
    (*(v21 + 96))(v23, v20);
    v29 = v23[1];
    v56 = *v23;
    sub_21DFAD958(v56, v29);
    *v13 = sub_21E141604();
    swift_storeEnumTagMultiPayload();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEADD28, &unk_21E15A190);
    sub_21E12E644();
    sub_21DF23E5C(&qword_27CEA8FE8, &qword_27CEA8FE0, &qword_21E159F50, MEMORY[0x277CDD638]);
    sub_21E1402F4();
    sub_21DF236C0(v15, v60, &qword_27CEADCF8, &qword_21E159F70);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEADEB0, &qword_21E15A1A0);
    sub_21E12E58C();
    sub_21E132900();
    v30 = v61;
    sub_21E1402F4();
    sub_21DF23614(v15, &qword_27CEADCF8, &qword_21E159F70);
    sub_21DF236C0(v30, v64, &qword_27CEADEA0, &unk_21E15A180);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8C00, &unk_21E159F80);
    sub_21E132874();
    sub_21DF23E5C(&qword_27CEA8BF8, &qword_27CEA8C00, &unk_21E159F80, MEMORY[0x277CDF3A0]);
    sub_21E1402F4();

    sub_21DFA15AC(v56, v29);
    v31 = v30;
  }

  else
  {
    if (v28 == *MEMORY[0x277D78B68])
    {
      (*(v21 + 96))(v23, v20);
      v33 = v52;
      v32 = v53;
      v34 = v54;
      (*(v53 + 32))(v52, v23, v54);
      v35 = v51;
      (*(v32 + 16))(v51, v33, v34);
      (*(v32 + 56))(v35, 0, 1, v34);
      sub_21DF236C0(v35, v50, &qword_27CEA9990, &qword_21E148DD0);
      v36 = swift_allocObject();
      v36[2] = sub_21E131D00;
      v36[3] = 0;
      v36[4] = sub_21DFB7CE0;
      v36[5] = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8BE8, &qword_21E149E60);
      sub_21DFB8FD0();
      v37 = v55;
      sub_21E13F334();
      sub_21DF23614(v35, &qword_27CEA9990, &qword_21E148DD0);
      v38 = v57;
      (*(v56 + 16))(v13, v37, v57);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEADD28, &unk_21E15A190);
      sub_21E12E644();
      sub_21DF23E5C(&qword_27CEA8FE8, &qword_27CEA8FE0, &qword_21E159F50, MEMORY[0x277CDD638]);
      sub_21E1402F4();
      sub_21DF236C0(v15, v60, &qword_27CEADCF8, &qword_21E159F70);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEADEB0, &qword_21E15A1A0);
      sub_21E12E58C();
      sub_21E132900();
      v39 = v61;
      sub_21E1402F4();
      sub_21DF23614(v15, &qword_27CEADCF8, &qword_21E159F70);
      sub_21DF236C0(v39, v64, &qword_27CEADEA0, &unk_21E15A180);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8C00, &unk_21E159F80);
      sub_21E132874();
      sub_21DF23E5C(&qword_27CEA8BF8, &qword_27CEA8C00, &unk_21E159F80, MEMORY[0x277CDF3A0]);
      sub_21E1402F4();
      sub_21DF23614(v39, &qword_27CEADEA0, &unk_21E15A180);
      (*(v56 + 8))(v55, v38);
      (*(v53 + 8))(v52, v54);
      return;
    }

    if (v28 == *MEMORY[0x277D78B50])
    {
      (*(v21 + 96))(v23, v20);
      if (v23[3])
      {
        v40 = sub_21E1420F4();
        v41 = [objc_opt_self() bundleWithIdentifier_];

        if (!v41)
        {
          __break(1u);
          return;
        }

        v66 = sub_21E141674();
        LOBYTE(v67) = 0;
      }

      else
      {
        v66 = sub_21E141674();
        LOBYTE(v67) = 1;
      }

      sub_21E1402F4();
      v66 = v68;
      v67 = v69;
      swift_retain_n();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEADEC0, &qword_21E15A1A8);
      sub_21E13298C();
      sub_21E1402F4();
      v46 = v69;
      v47 = v70;
      v48 = v60;
      *v60 = v68;
      *(v48 + 8) = v46;
      *(v48 + 9) = v47;
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEADEB0, &qword_21E15A1A0);
      sub_21E12E58C();
      sub_21E132900();
      v45 = v61;
      sub_21E1402F4();
      sub_21DF236C0(v45, v64, &qword_27CEADEA0, &unk_21E15A180);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8C00, &unk_21E159F80);
      sub_21E132874();
      sub_21DF23E5C(&qword_27CEA8BF8, &qword_27CEA8C00, &unk_21E159F80, MEMORY[0x277CDF3A0]);
      sub_21E1402F4();
    }

    else
    {
      if (v28 != *MEMORY[0x277D78B58])
      {
        (*(v21 + 8))(v23, v20);
        goto LABEL_3;
      }

      (*(v21 + 96))(v23, v20);
      v66 = sub_21E141614();
      v67 = 256;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEADEC0, &qword_21E15A1A8);
      sub_21E13298C();
      sub_21E1402F4();
      v42 = v69;
      v43 = v70;
      v44 = v60;
      *v60 = v68;
      *(v44 + 8) = v42;
      *(v44 + 9) = v43;
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEADEB0, &qword_21E15A1A0);
      sub_21E12E58C();
      sub_21E132900();
      v45 = v61;
      sub_21E1402F4();
      sub_21DF236C0(v45, v64, &qword_27CEADEA0, &unk_21E15A180);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8C00, &unk_21E159F80);
      sub_21E132874();
      sub_21DF23E5C(&qword_27CEA8BF8, &qword_27CEA8C00, &unk_21E159F80, MEMORY[0x277CDF3A0]);
      sub_21E1402F4();
    }

    v31 = v45;
  }

  sub_21DF23614(v31, &qword_27CEADEA0, &unk_21E15A180);
}

uint64_t sub_21E131D08(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEADEC8, &unk_21E15A1B0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v15 - v4;
  sub_21E140434();
  v6 = sub_21E13FD44();
  v7 = sub_21E132A08(&qword_27CEAD718, MEMORY[0x277CDFCB0], MEMORY[0x277CDFCA8]);
  sub_21E13F654();
  if (sub_21E140434())
  {
    v8 = 1.0;
  }

  else
  {
    v8 = 0.8;
  }

  _s20VisualIntelligenceUI17PinStyleProvidingPAAE6anchor05SwiftC09UnitPointVvg_0();
  v10 = v9;
  v12 = v11;
  v15[0] = v6;
  v15[1] = v7;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  MEMORY[0x223D4FE80](v2, OpaqueTypeConformance2, v8, v10, v12);
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_21E131ECC@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_21E13EFF4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v17[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEADE18, &qword_21E15A440);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v17[-v7];
  v9 = sub_21E1400C4();
  MEMORY[0x28223BE20](v9 - 8);
  sub_21E1400B4();
  sub_21E1400A4();
  sub_21E13F094();
  sub_21E13EFE4();
  (*(v3 + 8))(v5, v2);
  v10 = sub_21E13EFC4();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v8, 1, v10) == 1)
  {
    sub_21DF23614(v8, &qword_27CEADE18, &qword_21E15A440);
  }

  else
  {
    sub_21E13EFA4();
    (*(v11 + 8))(v8, v10);
  }

  sub_21E140094();

  sub_21E1400A4();
  sub_21E1400E4();
  sub_21DF23B80();
  if (!sub_21E1426B4())
  {
    v12 = [objc_opt_self() mainBundle];
  }

  result = sub_21E140C64();
  *a1 = result;
  *(a1 + 8) = v14;
  *(a1 + 16) = v15 & 1;
  *(a1 + 24) = v16;
  return result;
}

uint64_t type metadata accessor for VisualSearchCarouselView(uint64_t a1)
{
  result = qword_27CEADDC0;
  if (!qword_27CEADDC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21E132260(uint64_t a1)
{
  result = type metadata accessor for VisualSearchState(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_21E1322CC()
{
  result = qword_27CEADDD0;
  if (!qword_27CEADDD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEADDD8, &unk_21E15A100);
    sub_21E130520();
    sub_21DF23E5C(&qword_27CEADDB8, &qword_27CEADD88, &unk_21E159FF0, MEMORY[0x277CE1198]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEADDD0);
  }

  return result;
}

unint64_t sub_21E13239C()
{
  result = qword_27CEADE30;
  if (!qword_27CEADE30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEADE28, &qword_21E15A140);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEADE38, &qword_21E15A148);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEADE40, &qword_21E15A150);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEADE48, &qword_21E15A158);
    sub_21E132568();
    swift_getOpaqueTypeConformance2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEADEC8, &unk_21E15A1B0);
    sub_21E13FD44();
    sub_21E132A08(&qword_27CEAD718, MEMORY[0x277CDFCB0], MEMORY[0x277CDFCA8]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEADE30);
  }

  return result;
}

unint64_t sub_21E132568()
{
  result = qword_27CEADE50;
  if (!qword_27CEADE50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEADE48, &qword_21E15A158);
    sub_21E1325F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEADE50);
  }

  return result;
}

unint64_t sub_21E1325F4()
{
  result = qword_27CEADE58;
  if (!qword_27CEADE58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEADE60, &qword_21E15A160);
    sub_21E1326AC();
    sub_21DF23E5C(&qword_27CEA8F10, &qword_27CEA8F18, &qword_21E14A4C0, MEMORY[0x277CDF4F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEADE58);
  }

  return result;
}

unint64_t sub_21E1326AC()
{
  result = qword_27CEADE68;
  if (!qword_27CEADE68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEADE70, &qword_21E15A168);
    sub_21E132738();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEADE68);
  }

  return result;
}

unint64_t sub_21E132738()
{
  result = qword_27CEADE78;
  if (!qword_27CEADE78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEADE80, &qword_21E15A170);
    sub_21E1327BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEADE78);
  }

  return result;
}

unint64_t sub_21E1327BC()
{
  result = qword_27CEADE88;
  if (!qword_27CEADE88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEADE90, &qword_21E15A178);
    sub_21E132874();
    sub_21DF23E5C(&qword_27CEA8BF8, &qword_27CEA8C00, &unk_21E159F80, MEMORY[0x277CDF3A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEADE88);
  }

  return result;
}

unint64_t sub_21E132874()
{
  result = qword_27CEADE98;
  if (!qword_27CEADE98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEADEA0, &unk_21E15A180);
    sub_21E12E58C();
    sub_21E132900();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEADE98);
  }

  return result;
}

unint64_t sub_21E132900()
{
  result = qword_27CEADEA8;
  if (!qword_27CEADEA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEADEB0, &qword_21E15A1A0);
    sub_21E13298C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEADEA8);
  }

  return result;
}

unint64_t sub_21E13298C()
{
  result = qword_27CEADEB8;
  if (!qword_27CEADEB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEADEC0, &qword_21E15A1A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEADEB8);
  }

  return result;
}

uint64_t sub_21E132A08(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_21E132A50(__n128 a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr), uint64_t a4, void (*a5)(uint64_t *__return_ptr))
{
  if (sub_21E13F9C4())
  {
    a3(&v8);
    swift_retain_n();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8C00, &unk_21E159F80);
    sub_21DF23E5C(&qword_27CEA8BF8, &qword_27CEA8C00, &unk_21E159F80, MEMORY[0x277CDF3A0]);
    sub_21E1402F4();
  }

  else
  {
    a5(&v8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8C00, &unk_21E159F80);
    sub_21DF23E5C(&qword_27CEA8BF8, &qword_27CEA8C00, &unk_21E159F80, MEMORY[0x277CDF3A0]);
    sub_21E1402F4();
  }

  return v8;
}

uint64_t sub_21E132C08@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t *__return_ptr)@<X1>, uint64_t a3@<X2>, void (*a4)(uint64_t *__return_ptr)@<X3>, uint64_t a5@<X8>, __n128 a6@<Q0>)
{
  result = sub_21E132A50(a6, a1, a2, a3, a4);
  *a5 = result;
  *(a5 + 8) = v8;
  *(a5 + 10) = v9 & 1;
  return result;
}

uint64_t sub_21E132C3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, __n128 a3@<Q0>)
{
  result = sub_21E132A50(a3, a1, *(v3 + 16), *(v3 + 24), *(v3 + 32));
  *a2 = result;
  *(a2 + 8) = v6;
  *(a2 + 10) = v7 & 1;
  return result;
}

double sub_21E132C78@<D0>(_OWORD *a1@<X8>)
{
  sub_21DF497E0();
  sub_21E13FFA4();
  result = *&v3;
  *a1 = v3;
  return result;
}

uint64_t sub_21E132CC8(void *a1)
{
  sub_21DF497E0();

  return sub_21E13FFB4();
}

__n128 VisualSearchGridView.init(providerName:state:executionFailure:actionId:onClearExecutionFailure:configuration:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, char *a10)
{
  v16 = *(a4 + 32);
  v30 = a10[1];
  v31 = *a10;
  v17 = a10[2];
  v28 = *(a10 + 2);
  v29 = *(a10 + 1);
  *a9 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7140, &qword_21E149F40);
  swift_storeEnumTagMultiPayload();
  v18 = type metadata accessor for VisualSearchGridView(0);
  v19 = a9 + v18[5];
  *v19 = swift_getKeyPath();
  *(v19 + 1) = 0;
  v19[16] = 0;
  v20 = a9 + v18[12];
  sub_21E141704();
  *v20 = v35;
  *(v20 + 1) = v36;
  v21 = (a9 + v18[6]);
  *v21 = a1;
  v21[1] = a2;
  sub_21DF3DE9C(a3, a9 + v18[7], &qword_27CEA6D40, &unk_21E145D30);
  v22 = a9 + v18[8];
  result = *a4;
  v24 = *(a4 + 16);
  *v22 = *a4;
  *(v22 + 1) = v24;
  v22[32] = v16;
  v25 = (a9 + v18[9]);
  *v25 = a5;
  v25[1] = a6;
  v26 = (a9 + v18[10]);
  *v26 = a7;
  v26[1] = a8;
  v27 = a9 + v18[11];
  *v27 = v31;
  v27[1] = v30;
  v27[2] = v17;
  *(v27 + 1) = v29;
  *(v27 + 2) = v28;
  return result;
}

uint64_t type metadata accessor for VisualSearchGridView(uint64_t a1)
{
  result = qword_27CEADFC0;
  if (!qword_27CEADFC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21E132F04@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = sub_21E13FF94();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7140, &qword_21E149F40);
  MEMORY[0x28223BE20](v8);
  v10 = &v14 - v9;
  sub_21DF236C0(v2, &v14 - v9, &qword_27CEA7140, &qword_21E149F40);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_21E1401B4();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_21E142574();
    v13 = sub_21E1408C4();
    sub_21E13F184();

    sub_21E13FF84();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t VisualSearchGridView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v188 = a1;
  v169 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEADF00, &qword_21E15A288);
  MEMORY[0x28223BE20](v169);
  v170 = (v144 - v1);
  v187 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEADF08, &qword_21E15A290);
  MEMORY[0x28223BE20](v187);
  v171 = (v144 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v3);
  v172 = v144 - v4;
  v185 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEADF10, &qword_21E15A298);
  MEMORY[0x28223BE20](v185);
  v186 = v144 - v5;
  v181 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEADF18, &qword_21E15A2A0);
  MEMORY[0x28223BE20](v181);
  v182 = v144 - v6;
  v7 = type metadata accessor for VisualSearchGridView(0);
  v146 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v148 = v8;
  v149 = v144 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v183 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEADF20, &qword_21E15A2A8);
  MEMORY[0x28223BE20](v183);
  v162 = (v144 - v9);
  v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEADF28, &qword_21E15A2B0);
  v150 = *(v160 - 8);
  MEMORY[0x28223BE20](v160);
  v164 = v144 - v10;
  v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEADF30, &qword_21E15A2B8);
  v152 = *(v161 - 8);
  MEMORY[0x28223BE20](v161);
  v151 = v144 - v11;
  v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEADF38, &unk_21E15A2C0);
  MEMORY[0x28223BE20](v157);
  v159 = v144 - v12;
  v167 = sub_21E1406A4();
  v166 = *(v167 - 8);
  MEMORY[0x28223BE20](v167);
  v165 = v144 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_21E13D384();
  MEMORY[0x28223BE20](v14 - 8);
  v173 = v144 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_21E1420E4();
  MEMORY[0x28223BE20](v16 - 8);
  v154 = v144 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v147 = v144 - v19;
  MEMORY[0x28223BE20](v20);
  v144[1] = v144 - v21;
  v179 = type metadata accessor for EmptyResultsView(0);
  MEMORY[0x28223BE20](v179);
  v155 = (v144 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v23);
  v145 = (v144 - v24);
  v180 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA91A8, &qword_21E14A908);
  v168 = *(v180 - 8);
  MEMORY[0x28223BE20](v180);
  v156 = v144 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v153 = v144 - v27;
  v178 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEADF40, &qword_21E15A2D0);
  MEMORY[0x28223BE20](v178);
  v158 = v144 - v28;
  v177 = sub_21E13F0A4();
  v176 = *(v177 - 8);
  MEMORY[0x28223BE20](v177);
  v175 = v144 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for PillQueryResult(0);
  MEMORY[0x28223BE20](v30);
  v174 = v144 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEADF48, qword_21E15A2D8);
  MEMORY[0x28223BE20](v32);
  v184 = v144 - v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6D40, &unk_21E145D30);
  MEMORY[0x28223BE20](v34 - 8);
  v36 = v144 - v35;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6C58, &unk_21E1455A0);
  v38 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v40 = (v144 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v41);
  v43 = v144 - v42;
  v163 = v7;
  sub_21DF236C0(&OpaqueTypeConformance2[*(v7 + 28)], v36, &qword_27CEA6D40, &unk_21E145D30);
  if ((*(v38 + 48))(v36, 1, v37) == 1)
  {
    sub_21DF23614(v36, &qword_27CEA6D40, &unk_21E145D30);
    v44 = v170;
    *v170 = 0x4062C00000000000;
    *(v44 + 1) = 2;
    *(v44 + 1) = xmmword_21E14AFA0;
    v194 = xmmword_21E15A210;
    swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6FB8, &qword_21E1462A0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEADF50, &unk_21E15A310);
    sub_21DF3D8C8();
    sub_21E1361A0();
    sub_21E141A74();
    sub_21E141CC4();
    sub_21E13FCE4();
    v45 = v171;
    sub_21DF3DE9C(v44, v171, &qword_27CEADF00, &qword_21E15A288);
    v46 = (v45 + *(v187 + 36));
    v47 = v197;
    v48 = v199;
    v49 = v200;
    v46[4] = v198;
    v46[5] = v48;
    v46[6] = v49;
    v50 = v195;
    *v46 = v194;
    v46[1] = v50;
    v46[2] = v196;
    v46[3] = v47;
    v51 = v172;
    sub_21DF3DE9C(v45, v172, &qword_27CEADF08, &qword_21E15A290);
    sub_21DF236C0(v51, v186, &qword_27CEADF08, &qword_21E15A290);
    swift_storeEnumTagMultiPayload();
    sub_21E136258();
    sub_21E1366E8();
    sub_21E1402F4();
    v52 = v51;
    v53 = &qword_27CEADF08;
    v54 = &qword_21E15A290;
  }

  else
  {
    v172 = v32;
    sub_21DF3DE9C(v36, v43, &qword_27CEA6C58, &unk_21E1455A0);
    sub_21DF236C0(v43, v40, &qword_27CEA6C58, &unk_21E1455A0);
    v55 = v43;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v56 = *v40;
      sub_21E142084();
      sub_21DF23B80();
      v57 = sub_21E1426B4();
      v58 = v186;
      v59 = v184;
      if (!v57)
      {
        v60 = [objc_opt_self() mainBundle];
      }

      sub_21E13D374();
      v61 = sub_21E142184();
      v63 = v62;
      swift_getErrorValue();
      v64 = sub_21E142BC4();
      OpaqueTypeConformance2 = v56;
      v66 = v65;
      KeyPath = swift_getKeyPath();
      v68 = v155;
      *v155 = KeyPath;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD070, &qword_21E146170);
      swift_storeEnumTagMultiPayload();
      v69 = v179;
      v70 = (v68 + *(v179 + 24));
      *v70 = v61;
      v70[1] = v63;
      v71 = (v68 + v69[7]);
      *v71 = v64;
      v71[1] = v66;
      v72 = (v68 + v69[8]);
      *v72 = 0;
      v72[1] = 0;
      *(v68 + v69[5]) = 0x402C000000000000;
      v73 = v165;
      sub_21E140694();
      v74 = sub_21E1388FC(&qword_27CEA7FB0, type metadata accessor for EmptyResultsView, &protocol conformance descriptor for EmptyResultsView);
      v75 = v156;
      sub_21E1410B4();
      (*(v166 + 8))(v73, v167);
      sub_21E136964(v68, type metadata accessor for EmptyResultsView);
      v76 = v168;
      v77 = v180;
      (*(v168 + 16))(v182, v75, v180);
      swift_storeEnumTagMultiPayload();
      sub_21E13634C();
      *&v194 = v69;
      *(&v194 + 1) = v74;
      swift_getOpaqueTypeConformance2();
      sub_21E1402F4();

      (*(v76 + 8))(v75, v77);
    }

    else
    {
      v78 = v174;
      sub_21E13894C(v40, v174, type metadata accessor for PillQueryResult);
      v79 = v175;
      (*(v176 + 16))(v175, v78 + *(v30 + 20), v177);
      v80 = sub_21E13F074();
      v81 = *(v80 + 16);
      v59 = v184;
      v144[0] = v43;
      if (v81)
      {
        v82 = v80;
        v83 = sub_21E1401C4();
        v84 = v162;
        *v162 = v83;
        v84[1] = 0;
        *(v84 + 16) = 1;
        v85 = v84;
        v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEADFB8, &unk_21E15A370);
        v87 = OpaqueTypeConformance2;
        sub_21E134C2C(OpaqueTypeConformance2, v82, v79, v78, v85 + *(v86 + 44));

        v171 = type metadata accessor for VisualSearchGridView;
        v88 = v149;
        sub_21E1384F4(v87, v149, type metadata accessor for VisualSearchGridView);
        v89 = (*(v146 + 80) + 16) & ~*(v146 + 80);
        v90 = swift_allocObject();
        v170 = type metadata accessor for VisualSearchGridView;
        sub_21E13894C(v88, v90 + v89, type metadata accessor for VisualSearchGridView);
        v91 = (v85 + *(v183 + 36));
        *v91 = sub_21E1368B0;
        v91[1] = v90;
        v91[2] = 0;
        v91[3] = 0;
        v92 = &v87[*(v163 + 32)];
        v94 = *(v92 + 1);
        v95 = *(v92 + 2);
        v96 = *(v92 + 3);
        v97 = v92[32];
        *&v194 = *v92;
        v93 = v194;
        *(&v194 + 1) = v94;
        *&v195 = v95;
        *(&v195 + 1) = v96;
        LOBYTE(v196) = v97;
        sub_21E1384F4(v87, v88, v171);
        v98 = swift_allocObject();
        sub_21E13894C(v88, v98 + v89, v170);
        sub_21E136948(v93, v94, v95, v96, v97);
        v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA96C0, &qword_21E14B540);
        v100 = sub_21E136558();
        v101 = sub_21E136610();
        v171 = v99;
        v170 = v100;
        v102 = v162;
        sub_21E141324();

        sub_21DF354DC(v194, *(&v194 + 1), v195, *(&v195 + 1), v196);
        sub_21DF23614(v102, &qword_27CEADF20, &qword_21E15A2A8);
        sub_21E142084();
        sub_21DF23B80();
        if (!sub_21E1426B4())
        {
          v103 = [objc_opt_self() mainBundle];
        }

        sub_21E13D374();
        v192 = sub_21E142184();
        v193 = v104;
        v105 = &OpaqueTypeConformance2[*(v163 + 48)];
        v106 = *v105;
        v107 = *(v105 + 1);
        v190 = v106;
        v191 = v107;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6E78, &qword_21E1461C0);
        v108 = sub_21E141734();
        v173 = v144;
        MEMORY[0x28223BE20](v108);
        v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAA830, &qword_21E1558E0);
        *&v194 = v183;
        *(&v194 + 1) = v171;
        *&v195 = v170;
        *(&v195 + 1) = v101;
        OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
        *&v143 = sub_21DF252E0();
        *(&v143 + 1) = sub_21DF23E5C(&qword_27CEAA840, &qword_27CEAA830, &qword_21E1558E0, MEMORY[0x277CDF028]);
        v110 = v109;
        v111 = v151;
        v112 = v160;
        v113 = v164;
        sub_21E141244();

        (*(v150 + 8))(v113, v112);
        v114 = v152;
        v115 = v161;
        (*(v152 + 16))(v159, v111, v161);
        swift_storeEnumTagMultiPayload();
        v116 = sub_21E1388FC(&qword_27CEA7FB0, type metadata accessor for EmptyResultsView, &protocol conformance descriptor for EmptyResultsView);
        v117 = v179;
        *&v194 = v179;
        *(&v194 + 1) = v116;
        swift_getOpaqueTypeConformance2();
        *&v194 = v112;
        *(&v194 + 1) = MEMORY[0x277D837D0];
        *&v195 = v110;
        *(&v195 + 1) = OpaqueTypeConformance2;
        v196 = v143;
        swift_getOpaqueTypeConformance2();
        v118 = v158;
        sub_21E1402F4();
        (*(v114 + 8))(v111, v115);
        v59 = v184;
      }

      else
      {

        sub_21E142084();
        sub_21DF23B80();
        if (!sub_21E1426B4())
        {
          v119 = [objc_opt_self() mainBundle];
        }

        sub_21E13D374();
        v120 = sub_21E142184();
        v122 = v121;
        v123 = swift_getKeyPath();
        v124 = v145;
        *v145 = v123;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD070, &qword_21E146170);
        swift_storeEnumTagMultiPayload();
        v125 = v179;
        v126 = (v124 + *(v179 + 24));
        *v126 = v120;
        v126[1] = v122;
        v127 = (v124 + v125[7]);
        *v127 = 0;
        v127[1] = 0;
        v128 = (v124 + v125[8]);
        *v128 = 0;
        v128[1] = 0;
        *(v124 + v125[5]) = 0x402C000000000000;
        v129 = v165;
        sub_21E140694();
        v130 = sub_21E1388FC(&qword_27CEA7FB0, type metadata accessor for EmptyResultsView, &protocol conformance descriptor for EmptyResultsView);
        v131 = v153;
        sub_21E1410B4();
        (*(v166 + 8))(v129, v167);
        sub_21E136964(v124, type metadata accessor for EmptyResultsView);
        v132 = v168;
        v133 = v180;
        (*(v168 + 16))(v159, v131, v180);
        swift_storeEnumTagMultiPayload();
        *&v194 = v125;
        *(&v194 + 1) = v130;
        OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
        v134 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEAA830, &qword_21E1558E0);
        v135 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA96C0, &qword_21E14B540);
        v136 = sub_21E136558();
        v137 = sub_21E136610();
        *&v194 = v183;
        *(&v194 + 1) = v135;
        *&v195 = v136;
        *(&v195 + 1) = v137;
        v138 = swift_getOpaqueTypeConformance2();
        v139 = sub_21DF252E0();
        v140 = sub_21DF23E5C(&qword_27CEAA840, &qword_27CEAA830, &qword_21E1558E0, MEMORY[0x277CDF028]);
        *&v194 = v160;
        *(&v194 + 1) = MEMORY[0x277D837D0];
        *&v195 = v134;
        *(&v195 + 1) = v138;
        *&v196 = v139;
        *(&v196 + 1) = v140;
        v117 = v125;
        swift_getOpaqueTypeConformance2();
        v118 = v158;
        sub_21E1402F4();
        (*(v132 + 8))(v153, v133);
      }

      sub_21DF236C0(v118, v182, &qword_27CEADF40, &qword_21E15A2D0);
      swift_storeEnumTagMultiPayload();
      sub_21E13634C();
      v141 = sub_21E1388FC(&qword_27CEA7FB0, type metadata accessor for EmptyResultsView, &protocol conformance descriptor for EmptyResultsView);
      *&v194 = v117;
      *(&v194 + 1) = v141;
      swift_getOpaqueTypeConformance2();
      sub_21E1402F4();
      sub_21DF23614(v118, &qword_27CEADF40, &qword_21E15A2D0);
      (*(v176 + 8))(v175, v177);
      sub_21E136964(v174, type metadata accessor for PillQueryResult);
      v58 = v186;
      v55 = v144[0];
    }

    sub_21DF236C0(v59, v58, &qword_27CEADF48, qword_21E15A2D8);
    swift_storeEnumTagMultiPayload();
    sub_21E136258();
    sub_21E1366E8();
    sub_21E1402F4();
    sub_21DF23614(v59, &qword_27CEADF48, qword_21E15A2D8);
    v53 = &qword_27CEA6C58;
    v54 = &unk_21E1455A0;
    v52 = v55;
  }

  return sub_21DF23614(v52, v53, v54);
}

uint64_t sub_21E134C2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v115 = a4;
  v129 = a3;
  v138 = a1;
  v137 = a5;
  v6 = type metadata accessor for PillQueryResult(0);
  v116 = *(v6 - 8);
  MEMORY[0x28223BE20](v6 - 8);
  v117 = v7;
  v118 = &v109 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_21E1400C4();
  MEMORY[0x28223BE20](v8 - 8);
  v114 = &v109 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CEAD360, &qword_21E15A430);
  MEMORY[0x28223BE20](v119);
  v121 = (&v109 - v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAE000, &qword_21E15A438);
  v135 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v120 = &v109 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEADE18, &qword_21E15A440);
  MEMORY[0x28223BE20](v13 - 8);
  v128 = &v109 - v14;
  v127 = sub_21E13EFF4();
  v126 = *(v127 - 8);
  MEMORY[0x28223BE20](v127);
  v125 = &v109 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v140 = sub_21E13EFC4();
  v132 = *(v140 - 8);
  MEMORY[0x28223BE20](v140);
  v113 = &v109 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = v16;
  MEMORY[0x28223BE20](v17);
  v131 = &v109 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAE008, &qword_21E15A448);
  MEMORY[0x28223BE20](v19 - 8);
  v134 = &v109 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = &v109 - v22;
  v110 = type metadata accessor for VisualSearchGridView(0);
  v123 = *(v110 - 8);
  MEMORY[0x28223BE20](v110);
  v111 = &v109 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v139 = v24;
  MEMORY[0x28223BE20](v25);
  v27 = &v109 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAE010, &qword_21E15A450);
  MEMORY[0x28223BE20](v28);
  v30 = &v109 - v29;
  v31 = sub_21E1401B4();
  v32 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v34 = (&v109 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAE018, &qword_21E15A458);
  MEMORY[0x28223BE20](v124);
  v130 = &v109 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v38 = &v109 - v37;
  MEMORY[0x28223BE20](v39);
  v141 = &v109 - v40;
  v41 = *(a2 + 16);
  v136 = v11;
  v133 = v23;
  if (v41 == 1)
  {
    v42 = v138;
  }

  else
  {
    v42 = v138;
    sub_21E132F04(v34);
    v43 = sub_21E1401A4();
    (*(v32 + 8))(v34, v31);
    v41 = 1;
    if ((v43 & 1) == 0)
    {
      v41 = 2;
    }
  }

  *v30 = 0x4062C00000000000;
  *(v30 + 1) = v41;
  *(v30 + 1) = xmmword_21E14AFA0;
  v122 = *(v28 + 44);
  sub_21DFA8974(a2);
  v45 = v44;
  v142 = v44;
  swift_getKeyPath();
  sub_21E1384F4(v42, v27, type metadata accessor for VisualSearchGridView);
  v46 = *(v123 + 80);
  v47 = (v46 + 16) & ~v46;
  v48 = (v139 + v47 + 7) & 0xFFFFFFFFFFFFFFF8;
  v49 = swift_allocObject();
  sub_21E13894C(v27, v49 + v47, type metadata accessor for VisualSearchGridView);
  *(v49 + v48) = v45;
  v50 = swift_allocObject();
  *(v50 + 16) = sub_21E1382F0;
  *(v50 + 24) = v49;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAE020, &qword_21E15A498);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAE028, &qword_21E15A4A0);
  sub_21DF23E5C(&qword_27CEAE030, &qword_27CEAE020, &qword_21E15A498, MEMORY[0x277D83980]);
  v51 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEAE038, &qword_21E15A4A8);
  v52 = sub_21E13840C();
  v53 = sub_21DFBBB34();
  *&v143 = v51;
  *(&v143 + 1) = &type metadata for ImageSearchCardButtonStyle;
  *&v144 = v52;
  *(&v144 + 1) = v53;
  swift_getOpaqueTypeConformance2();
  sub_21E141A74();
  sub_21E141CC4();
  sub_21E13FCE4();
  sub_21DF3DE9C(v30, v38, &qword_27CEAE010, &qword_21E15A450);
  v54 = &v38[*(v124 + 36)];
  v55 = v148;
  *(v54 + 4) = v147;
  *(v54 + 5) = v55;
  *(v54 + 6) = v149;
  v56 = v144;
  *v54 = v143;
  *(v54 + 1) = v56;
  v57 = v146;
  *(v54 + 2) = v145;
  *(v54 + 3) = v57;
  sub_21DF3DE9C(v38, v141, &qword_27CEAE018, &qword_21E15A458);
  v58 = v125;
  sub_21E13F094();
  v59 = v128;
  sub_21E13EFE4();
  (*(v126 + 8))(v58, v127);
  v60 = v132;
  v61 = v140;
  if ((*(v132 + 48))(v59, 1, v140) == 1)
  {
    sub_21DF23614(v59, &qword_27CEADE18, &qword_21E15A440);
    v62 = 1;
    v63 = v136;
    v64 = v133;
  }

  else
  {
    v124 = ~v46;
    v125 = *(v60 + 32);
    v65 = v131;
    (v125)(v131, v59, v61);
    sub_21E1400B4();
    sub_21E1400A4();
    v66 = v138;
    sub_21E140094();
    sub_21E1400A4();
    v129 = sub_21E1400E4();
    v128 = v67;
    LODWORD(v126) = v68;
    v127 = v69;
    v70 = v118;
    sub_21E1384F4(v115, v118, type metadata accessor for PillQueryResult);
    v71 = v111;
    sub_21E1384F4(v66, v111, type metadata accessor for VisualSearchGridView);
    v72 = v60 + 16;
    v73 = v113;
    (*(v60 + 16))(v113, v65, v61);
    v74 = v60;
    v75 = (*(v116 + 80) + 16) & ~*(v116 + 80);
    v76 = (v117 + v46 + v75) & v124;
    v77 = (v139 + *(v72 + 64) + v76) & ~*(v72 + 64);
    v78 = swift_allocObject();
    v79 = v78 + v75;
    v80 = v140;
    sub_21E13894C(v70, v79, type metadata accessor for PillQueryResult);
    sub_21E13894C(v71, v78 + v76, type metadata accessor for VisualSearchGridView);
    (v125)(v78 + v77, v73, v80);
    KeyPath = swift_getKeyPath();
    v82 = v121;
    *v121 = KeyPath;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD070, &qword_21E146170);
    swift_storeEnumTagMultiPayload();
    v83 = v119;
    v84 = (v82 + *(v119 + 36));
    *v84 = 0;
    v84[1] = 0;
    v85 = (v82 + *(v83 + 40));
    *v85 = sub_21E13855C;
    v85[1] = v78;
    sub_21DF23B80();
    if (!sub_21E1426B4())
    {
      v86 = [objc_opt_self() mainBundle];
    }

    v87 = sub_21E140C64();
    v88 = v82 + *(v83 + 44);
    *v88 = v87;
    *(v88 + 8) = v89;
    *(v88 + 16) = v90 & 1;
    *(v88 + 24) = v91;
    v92 = sub_21E140934();
    sub_21E13F374();
    v94 = v93;
    v96 = v95;
    v98 = v97;
    v100 = v99;
    (*(v74 + 8))(v131, v80);
    v101 = v120;
    sub_21DF3DE9C(v82, v120, &unk_27CEAD360, &qword_21E15A430);
    v63 = v136;
    v102 = v101 + *(v136 + 36);
    *v102 = v92;
    *(v102 + 8) = v94;
    *(v102 + 16) = v96;
    *(v102 + 24) = v98;
    *(v102 + 32) = v100;
    *(v102 + 40) = 0;
    v64 = v133;
    sub_21DF3DE9C(v101, v133, &qword_27CEAE000, &qword_21E15A438);
    v62 = 0;
  }

  (*(v135 + 56))(v64, v62, 1, v63);
  v103 = v141;
  v104 = v130;
  sub_21DF236C0(v141, v130, &qword_27CEAE018, &qword_21E15A458);
  v105 = v134;
  sub_21DF236C0(v64, v134, &qword_27CEAE008, &qword_21E15A448);
  v106 = v137;
  sub_21DF236C0(v104, v137, &qword_27CEAE018, &qword_21E15A458);
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAE058, &qword_21E15A4B8);
  sub_21DF236C0(v105, v106 + *(v107 + 48), &qword_27CEAE008, &qword_21E15A448);
  sub_21DF23614(v64, &qword_27CEAE008, &qword_21E15A448);
  sub_21DF23614(v103, &qword_27CEAE018, &qword_21E15A458);
  sub_21DF23614(v105, &qword_27CEAE008, &qword_21E15A448);
  return sub_21DF23614(v104, &qword_27CEAE018, &qword_21E15A458);
}

uint64_t sub_21E135B50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21E13FF94();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a2 + *(type metadata accessor for VisualSearchGridView(0) + 20);
  v11 = *v10;
  if (*(v10 + 16) == 1)
  {
  }

  else
  {

    sub_21E142574();
    v12 = sub_21E1408C4();
    sub_21E13F184();

    sub_21E13FF84();
    swift_getAtKeyPath();
    sub_21DF446B8();
    (*(v7 + 8))(v9, v6);
    v11 = v14;
  }

  v11(a1, a3);
}

uint64_t sub_21E135CEC(uint64_t a1)
{
  result = type metadata accessor for VisualSearchGridView(0);
  if (*(a1 + *(result + 32) + 32) == 2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6E78, &qword_21E1461C0);
    return sub_21E141724();
  }

  return result;
}

uint64_t sub_21E135D74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = type metadata accessor for VisualSearchGridView(0);
  if (*(a3 + *(result + 32) + 32) == 2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6E78, &qword_21E1461C0);
    return sub_21E141724();
  }

  return result;
}

uint64_t sub_21E135DFC(uint64_t a1)
{
  v2 = type metadata accessor for VisualSearchGridView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = sub_21E13D384();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = sub_21E1420E4();
  MEMORY[0x28223BE20](v6 - 8);
  sub_21E142084();
  sub_21DF23B80();
  if (!sub_21E1426B4())
  {
    v7 = [objc_opt_self() mainBundle];
  }

  sub_21E13D374();
  v12[1] = sub_21E142184();
  v12[2] = v8;
  sub_21E1384F4(a1, v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for VisualSearchGridView);
  v9 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v10 = swift_allocObject();
  sub_21E13894C(v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9, type metadata accessor for VisualSearchGridView);
  sub_21DF252E0();
  return sub_21E141784();
}

uint64_t sub_21E136054(uint64_t a1)
{
  result = type metadata accessor for VisualSearchGridView(0);
  v3 = *(result + 36);
  if (*(a1 + v3 + 8))
  {
    v4 = (a1 + *(result + 40));
    if (*v4)
    {
      return (*v4)(*(a1 + v3));
    }
  }

  return result;
}

__n128 sub_21E1360AC@<Q0>(uint64_t a2@<X8>)
{
  v3 = sub_21E141454();
  sub_21E141CC4();
  sub_21E13FCE4();
  *&v5[6] = v6;
  *&v5[22] = v7;
  *&v5[38] = v8;
  *&v5[54] = v9;
  *&v5[86] = v11;
  *&v5[102] = v12;
  *&v5[70] = v10;
  *a2 = v3;
  *(a2 + 8) = 256;
  *(a2 + 58) = *&v5[48];
  *(a2 + 42) = *&v5[32];
  *(a2 + 26) = *&v5[16];
  *(a2 + 10) = *v5;
  result = *&v5[64];
  *(a2 + 120) = *(&v12 + 1);
  *(a2 + 106) = *&v5[96];
  *(a2 + 90) = *&v5[80];
  *(a2 + 74) = *&v5[64];
  return result;
}

unint64_t sub_21E1361A0()
{
  result = qword_27CEADF58;
  if (!qword_27CEADF58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEADF50, &unk_21E15A310);
    sub_21DF23E5C(&qword_27CEA74B8, &qword_27CEA74C0, &qword_21E146AF0, MEMORY[0x277CDF3A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEADF58);
  }

  return result;
}

unint64_t sub_21E136258()
{
  result = qword_27CEADF60;
  if (!qword_27CEADF60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEADF48, qword_21E15A2D8);
    sub_21E13634C();
    type metadata accessor for EmptyResultsView(255);
    sub_21E1388FC(&qword_27CEA7FB0, type metadata accessor for EmptyResultsView, &protocol conformance descriptor for EmptyResultsView);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEADF60);
  }

  return result;
}

unint64_t sub_21E13634C()
{
  result = qword_27CEADF68;
  if (!qword_27CEADF68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEADF40, &qword_21E15A2D0);
    type metadata accessor for EmptyResultsView(255);
    sub_21E1388FC(&qword_27CEA7FB0, type metadata accessor for EmptyResultsView, &protocol conformance descriptor for EmptyResultsView);
    swift_getOpaqueTypeConformance2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEADF28, &qword_21E15A2B0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEAA830, &qword_21E1558E0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEADF20, &qword_21E15A2A8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA96C0, &qword_21E14B540);
    sub_21E136558();
    sub_21E136610();
    swift_getOpaqueTypeConformance2();
    sub_21DF252E0();
    sub_21DF23E5C(&qword_27CEAA840, &qword_27CEAA830, &qword_21E1558E0, MEMORY[0x277CDF028]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEADF68);
  }

  return result;
}

unint64_t sub_21E136558()
{
  result = qword_27CEADF70;
  if (!qword_27CEADF70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEADF20, &qword_21E15A2A8);
    sub_21DF23E5C(&qword_27CEADF78, &qword_27CEADF80, &unk_21E15A320, MEMORY[0x277CE1198]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEADF70);
  }

  return result;
}

unint64_t sub_21E136610()
{
  result = qword_27CEADF88;
  if (!qword_27CEADF88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA96C0, &qword_21E14B540);
    sub_21E136694();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEADF88);
  }

  return result;
}

unint64_t sub_21E136694()
{
  result = qword_27CEADF90;
  if (!qword_27CEADF90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEADF90);
  }

  return result;
}

unint64_t sub_21E1366E8()
{
  result = qword_27CEADF98;
  if (!qword_27CEADF98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEADF08, &qword_21E15A290);
    sub_21E136774();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEADF98);
  }

  return result;
}

unint64_t sub_21E136774()
{
  result = qword_27CEADFA0;
  if (!qword_27CEADFA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEADF00, &qword_21E15A288);
    sub_21DF23E5C(&qword_27CEA9378, &qword_27CEA9380, &unk_21E14AC00, MEMORY[0x277CDF510]);
    sub_21E13682C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEADFA0);
  }

  return result;
}

unint64_t sub_21E13682C()
{
  result = qword_27CEADFA8;
  if (!qword_27CEADFA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEADFB0, &qword_21E15A330);
    sub_21E1361A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEADFA8);
  }

  return result;
}

uint64_t sub_21E1368C8(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for VisualSearchGridView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_21E135D74(a1, a2, v6);
}

void sub_21E136948(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5 != -1)
  {
    sub_21DF27ADC(a1, a2, a3, a4, a5);
  }
}

uint64_t sub_21E136964(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21E1369E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v55 = a1;
  v56 = a3;
  v62 = a5;
  v7 = type metadata accessor for VisualSearchGridView(0);
  v52 = *(v7 - 8);
  MEMORY[0x28223BE20](v7 - 8);
  v53 = v8;
  v54 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_21E13F064();
  v9 = *(v51 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v51);
  v50 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAE050, &qword_21E15A4B0);
  v60 = *(v11 - 8);
  v61 = v11;
  MEMORY[0x28223BE20](v11);
  v57 = &v47 - v12;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAE038, &qword_21E15A4A8);
  MEMORY[0x28223BE20](v59);
  v58 = &v47 - v13;
  v14 = sub_21E13D384();
  MEMORY[0x28223BE20](v14 - 8);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAC660, &unk_21E159D90);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v47 - v16;
  v18 = sub_21E13D134();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v49 = &v47 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = &v47 - v22;
  v47 = *(a4 + 16);
  v24 = a2;
  sub_21E13F004();
  v25 = *(v19 + 48);
  v63 = v18;
  if (v25(v17, 1, v18) == 1)
  {
    sub_21E13D104();
    if (v25(v17, 1, v63) != 1)
    {
      sub_21DF23614(v17, &qword_27CEAC660, &unk_21E159D90);
    }
  }

  else
  {
    (*(v19 + 32))(v23, v17, v63);
  }

  v48 = v23;
  sub_21E13D374();
  sub_21E13D124();
  v26 = v50;
  v27 = v51;
  v28 = v24;
  (*(v9 + 16))(v50, v24, v51);
  v29 = v56;
  v30 = v54;
  sub_21E1384F4(v56, v54, type metadata accessor for VisualSearchGridView);
  v31 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v32 = (v10 + *(v52 + 80) + v31) & ~*(v52 + 80);
  v33 = swift_allocObject();
  (*(v9 + 32))(v33 + v31, v26, v27);
  v34 = sub_21E13894C(v30, v33 + v32, type metadata accessor for VisualSearchGridView);
  MEMORY[0x28223BE20](v34);
  v35 = v55;
  *(&v47 - 6) = v28;
  *(&v47 - 5) = v35;
  *(&v47 - 32) = 0;
  *(&v47 - 3) = v47;
  *(&v47 - 2) = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAE060, &qword_21E15A4D0);
  v36 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEAE068, &qword_21E15A4D8);
  v37 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEAE070, &unk_21E15A4E0);
  v38 = sub_21E138760();
  v39 = sub_21E138848();
  v64 = v36;
  v65 = v37;
  v66 = v38;
  v67 = v39;
  swift_getOpaqueTypeConformance2();
  v40 = v57;
  sub_21E141764();
  v41 = v48;
  v42 = v63;
  (*(v19 + 16))(v49, v48, v63);
  v64 = sub_21E142194();
  v65 = v43;
  sub_21DF23E5C(&qword_27CEAE048, &qword_27CEAE050, &qword_21E15A4B0, MEMORY[0x277CDF028]);
  sub_21DF252E0();
  v44 = v58;
  v45 = v61;
  sub_21E141024();
  (*(v60 + 8))(v40, v45);

  sub_21E13840C();
  sub_21DFBBB34();
  sub_21E140DD4();
  sub_21DF23614(v44, &qword_27CEAE038, &qword_21E15A4A8);
  return (*(v19 + 8))(v41, v42);
}

uint64_t sub_21E1370D4(uint64_t a1, uint64_t a2)
{
  v62 = a2;
  v63 = sub_21E13F064();
  v3 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v58 = &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_21E13F1B4();
  v60 = *(v5 - 8);
  v61 = v5;
  MEMORY[0x28223BE20](v5);
  v59 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_21E13FF94();
  v54 = *(v7 - 8);
  v55 = v7;
  MEMORY[0x28223BE20](v7);
  v53 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6D40, &unk_21E145D30);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v53 - v10;
  v12 = type metadata accessor for PillQueryResult(0);
  MEMORY[0x28223BE20](v12 - 8);
  v56 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEADE18, &qword_21E15A440);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v53 - v15;
  v17 = sub_21E13EFF4();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v53 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_21E13EFC4();
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v24 = &v53 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = a1;
  sub_21E13F054();
  sub_21E13EFD4();
  (*(v18 + 8))(v20, v17);
  if ((*(v22 + 48))(v16, 1, v21) == 1)
  {
    sub_21DF23614(v16, &qword_27CEADE18, &qword_21E15A440);
    v25 = v62;
    v26 = v63;
LABEL_8:
    v32 = v59;
    sub_21E13EBE4();
    v33 = v58;
    (*(v3 + 16))(v58, v57, v26);
    v34 = sub_21E13F1A4();
    v35 = sub_21E142564();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v65[0] = v37;
      *v36 = 136315138;
      v38 = sub_21E13F014();
      v39 = v33;
      v41 = v40;
      (*(v3 + 8))(v39, v26);
      v42 = sub_21E0E08C0(v38, v41, v65);

      *(v36 + 4) = v42;
      _os_log_impl(&dword_21DF05000, v34, v35, "No predicted action for %s", v36, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v37);
      MEMORY[0x223D540B0](v37, -1, -1);
      MEMORY[0x223D540B0](v36, -1, -1);
    }

    else
    {

      (*(v3 + 8))(v33, v26);
    }

    (*(v60 + 8))(v32, v61);
    v43 = v25 + *(type metadata accessor for VisualSearchGridView(0) + 48);
    v44 = *v43;
    v45 = *(v43 + 8);
    LOBYTE(v65[0]) = v44;
    v65[1] = v45;
    v64 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6E78, &qword_21E1461C0);
    return sub_21E141724();
  }

  (*(v22 + 32))(v24, v16, v21);
  v27 = type metadata accessor for VisualSearchGridView(0);
  v25 = v62;
  sub_21DF236C0(v62 + *(v27 + 28), v11, &qword_27CEA6D40, &unk_21E145D30);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6C58, &unk_21E1455A0);
  v29 = (*(*(v28 - 8) + 48))(v11, 1, v28);
  v26 = v63;
  if (v29 == 1)
  {
    (*(v22 + 8))(v24, v21);
    v30 = &qword_27CEA6D40;
    v31 = &unk_21E145D30;
LABEL_7:
    sub_21DF23614(v11, v30, v31);
    goto LABEL_8;
  }

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v22 + 8))(v24, v21);
    v30 = &qword_27CEA6C58;
    v31 = &unk_21E1455A0;
    goto LABEL_7;
  }

  v47 = v11;
  v48 = v56;
  sub_21E13894C(v47, v56, type metadata accessor for PillQueryResult);
  v49 = v25 + *(v27 + 20);
  v50 = *v49;
  if (*(v49 + 16) == 1)
  {
  }

  else
  {

    sub_21E142574();
    v51 = sub_21E1408C4();
    sub_21E13F184();

    v52 = v53;
    sub_21E13FF84();
    swift_getAtKeyPath();
    sub_21DF446B8();
    (*(v54 + 8))(v52, v55);
    v50 = v65[0];
  }

  v50(v48, v24);

  sub_21E136964(v48, type metadata accessor for PillQueryResult);
  return (*(v22 + 8))(v24, v21);
}

uint64_t sub_21E1378B0(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAE068, &qword_21E15A4D8);
  MEMORY[0x28223BE20](v10);
  v12 = &v17[-v11];
  v13 = type metadata accessor for VisualSearchCardView(0);
  v14 = v13[6];
  v15 = sub_21E13F064();
  (*(*(v15 - 8) + 16))(v12 + v14, a1, v15);
  *v12 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7140, &qword_21E149F40);
  swift_storeEnumTagMultiPayload();
  *(v12 + v13[5]) = 0x4030000000000000;
  *(v12 + v13[7]) = a2;
  *(v12 + v13[8]) = a3;
  *(v12 + v13[9]) = a4;
  *(v12 + *(v10 + 36)) = sub_21E1404A4();
  v18 = a5;
  v19 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAE070, &unk_21E15A4E0);
  sub_21E138760();
  sub_21E138848();
  sub_21E140DE4();
  return sub_21DF23614(v12, &qword_27CEAE068, &qword_21E15A4D8);
}

uint64_t sub_21E137A84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for VisualSearchCardDebugView(0);
  v13 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + *(type metadata accessor for VisualSearchGridView(0) + 44) + 2) != 1)
  {
    goto LABEL_6;
  }

  if (qword_280F69E50 != -1)
  {
    swift_once();
  }

  if (byte_280F6FD20 == 1)
  {
    v9 = sub_21E13F064();
    (*(*(v9 - 8) + 16))(v8, a2, v9);
    sub_21E13894C(v8, a3, type metadata accessor for VisualSearchCardDebugView);
    return (*(v13 + 56))(a3, 0, 1, v6);
  }

  else
  {
LABEL_6:
    v11 = *(v13 + 56);

    return v11(a3, 1, 1, v6);
  }
}

void sub_21E137C8C(uint64_t a1)
{
  sub_21DFB48FC(319);
  if (v1 <= 0x3F)
  {
    sub_21E137E88(319, &qword_27CEADFD0, &qword_27CEADFD8, &unk_21E15A418, MEMORY[0x277CDF468]);
    if (v2 <= 0x3F)
    {
      sub_21E137E88(319, &qword_27CEADFE0, &qword_27CEA6C58, &unk_21E1455A0, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        sub_21E137EEC(319, &qword_27CEADFE8, &type metadata for CardModelError, MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          sub_21E137EEC(319, &qword_27CEA98A8, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
          if (v5 <= 0x3F)
          {
            sub_21E137E88(319, &qword_27CEA8280, &qword_27CEAD110, qword_21E148960, MEMORY[0x277D83D88]);
            if (v6 <= 0x3F)
            {
              sub_21E137EEC(319, &qword_280F68D48, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
              if (v7 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

void sub_21E137E88(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_21E137EEC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_21E137F3C()
{
  result = qword_27CEADFF0;
  if (!qword_27CEADFF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEADFF8, &qword_21E15A428);
    sub_21E136258();
    sub_21E1366E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEADFF0);
  }

  return result;
}

uint64_t objectdestroyTm_30()
{
  v1 = type metadata accessor for VisualSearchGridView(0);
  v2 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v3 = v0 + v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7140, &qword_21E149F40);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_21E1401B4();
    (*(*(v4 - 8) + 8))(v0 + v2, v4);
  }

  else
  {
  }

  sub_21DF446B8();

  v5 = (v3 + v1[7]);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6C58, &unk_21E1455A0);
  if (!(*(*(v6 - 8) + 48))(v5, 1, v6))
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
    }

    else
    {
      v7 = sub_21E13EEE4();
      (*(*(v7 - 8) + 8))(v5, v7);
      v8 = *(type metadata accessor for PillQueryResult(0) + 20);
      v9 = sub_21E13F0A4();
      (*(*(v9 - 8) + 8))(v5 + v8, v9);
    }
  }

  v10 = v3 + v1[8];
  v11 = *(v10 + 32);
  if (v11 != 255)
  {
    sub_21DF346C4(*v10, *(v10 + 8), *(v10 + 16), *(v10 + 24), v11);
  }

  if (*(v3 + v1[10]))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_21E13827C(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for VisualSearchGridView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_21E1382F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(type metadata accessor for VisualSearchGridView(0) - 8);
  v8 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v9 = *(v3 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_21E1369E0(a1, a2, v3 + v8, v9, a3);
}

uint64_t sub_21E1383A4(char *a1)
{
  v3 = *(v1 + 16);
  v4 = *a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA86B0, &unk_21E15A4C0);
  return v3(v4, &a1[*(v5 + 48)]);
}

unint64_t sub_21E13840C()
{
  result = qword_27CEAE040;
  if (!qword_27CEAE040)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEAE038, &qword_21E15A4A8);
    sub_21DF23E5C(&qword_27CEAE048, &qword_27CEAE050, &qword_21E15A4B0, MEMORY[0x277CDF028]);
    sub_21E1388FC(&qword_27CEA9E80, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEAE040);
  }

  return result;
}

uint64_t sub_21E1384F4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21E13855C()
{
  v1 = *(type metadata accessor for PillQueryResult(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for VisualSearchGridView(0) - 8);
  v5 = (v2 + v3 + *(v4 + 80)) & ~*(v4 + 80);
  v6 = *(v4 + 64);
  v7 = *(sub_21E13EFC4() - 8);
  v8 = v0 + ((v5 + v6 + *(v7 + 80)) & ~*(v7 + 80));

  return sub_21E135B50(v0 + v2, v0 + v5, v8);
}

uint64_t sub_21E138684()
{
  v1 = *(sub_21E13F064() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for VisualSearchGridView(0) - 8);
  v5 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  return sub_21E1370D4(v0 + v2, v5);
}

unint64_t sub_21E138760()
{
  result = qword_27CEAE078;
  if (!qword_27CEAE078)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEAE068, &qword_21E15A4D8);
    sub_21E1388FC(&qword_27CEAE080, type metadata accessor for VisualSearchCardView, &unk_21E159CB8);
    sub_21DF23E5C(&qword_280F68E00, &qword_27CEA8AA0, &qword_21E14B7D0, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEAE078);
  }

  return result;
}

unint64_t sub_21E138848()
{
  result = qword_27CEAE088;
  if (!qword_27CEAE088)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEAE070, &unk_21E15A4E0);
    sub_21E1388FC(&qword_27CEAE090, type metadata accessor for VisualSearchCardDebugView, &unk_21E159BB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEAE088);
  }

  return result;
}

uint64_t sub_21E1388FC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_21E13894C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t get_enum_tag_for_layout_string_20VisualIntelligenceUI21SummarizationCardViewV9ErrorInfoVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy88_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_21E1389F0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
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

uint64_t sub_21E138A38(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_21E138AB8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v67 = a1;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAE098, &qword_21E15A5F8);
  MEMORY[0x28223BE20](v63);
  v62 = (v57 - v3);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAE0A0, &qword_21E15A600);
  MEMORY[0x28223BE20](v64);
  v5 = v57 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAE0A8, &qword_21E15A608);
  MEMORY[0x28223BE20](v6);
  v8 = v57 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAE0B0, &qword_21E15A610);
  MEMORY[0x28223BE20](v9);
  v11 = v57 - v10;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAE0B8, &qword_21E15A618);
  MEMORY[0x28223BE20](v66);
  v13 = v57 - v12;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAE0C0, &unk_21E15A620);
  MEMORY[0x28223BE20](v65);
  v15 = v57 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7F48, &qword_21E148630);
  MEMORY[0x28223BE20](v16);
  v18 = (v57 - v17);
  v19 = *(v2 + 32);
  if (v19)
  {
    *&v69[0] = *(v2 + 24);
    *(&v69[0] + 1) = v19;
    v20 = *(v2 + 40);
    v70 = *(v2 + 56);
    v71 = v20;
    *v18 = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD070, &qword_21E146170);
    swift_storeEnumTagMultiPayload();
    v21 = type metadata accessor for EmptyResultsView(0);
    *(v18 + v21[6]) = v69[0];
    v22 = v70;
    *(v18 + v21[7]) = v71;
    *(v18 + v21[8]) = v22;
    *(v18 + v21[5]) = 0;
    sub_21E05C488(v69, v68);
    sub_21DF236C0(&v71, v68, &qword_27CEA8878, &unk_21E1498F0);
    sub_21DF236C0(&v70, v68, &qword_27CEA8878, &unk_21E1498F0);
    v23 = sub_21E140914();
    v24 = v18 + *(v16 + 36);
    *v24 = v23;
    *(v24 + 8) = xmmword_21E14F4B0;
    *(v24 + 24) = xmmword_21E1525F0;
    v24[40] = 0;
    sub_21DF236C0(v18, v15, &qword_27CEA7F48, &qword_21E148630);
    swift_storeEnumTagMultiPayload();
    sub_21DF8B204();
    sub_21E139FE8();
    sub_21E1402F4();
    v25 = v18;
    v26 = &qword_27CEA7F48;
    v27 = &qword_21E148630;
  }

  else
  {
    v57[0] = v11;
    v57[1] = v6;
    v58 = v9;
    v59 = v15;
    v60 = v8;
    v61 = v13;
    if ((*(v2 + 16) & 1) != 0 && (v69[0] = *(v2 + 72), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6E78, &qword_21E1461C0), sub_21E141714(), (v71 & 1) == 0))
    {
      v38 = swift_allocObject();
      v39 = *(v2 + 48);
      *(v38 + 48) = *(v2 + 32);
      *(v38 + 64) = v39;
      *(v38 + 80) = *(v2 + 64);
      *(v38 + 96) = *(v2 + 80);
      v40 = *(v2 + 16);
      *(v38 + 16) = *v2;
      *(v38 + 32) = v40;
      sub_21DF25738(v2, v69);
      v41 = sub_21DFED170();
      v43 = v42;
      KeyPath = swift_getKeyPath();
      v45 = v57[0];
      *v57[0] = KeyPath;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD070, &qword_21E146170);
      swift_storeEnumTagMultiPayload();
      v46 = type metadata accessor for CardSafetyInterstitial(0);
      v47 = (v45 + *(v46 + 20));
      *v47 = v41;
      v47[1] = v43;
      v48 = (v45 + *(v46 + 24));
      *v48 = sub_21E13A074;
      v48[1] = v38;
      v49 = sub_21E140914();
      v50 = v45 + *(v58 + 36);
      *v50 = v49;
      __asm { FMOV            V0.2D, #24.0 }

      *(v50 + 8) = _Q0;
      *(v50 + 24) = xmmword_21E15A4F0;
      *(v50 + 40) = 0;
      v34 = &qword_27CEAE0B0;
      v35 = &qword_21E15A610;
      sub_21DF236C0(v45, v60, &qword_27CEAE0B0, &qword_21E15A610);
      swift_storeEnumTagMultiPayload();
      sub_21E139D70();
      sub_21E139E2C();
      v36 = v61;
      sub_21E1402F4();
      v37 = v45;
    }

    else
    {
      v28 = sub_21E1401C4();
      v29 = v62;
      *v62 = v28;
      *(v29 + 8) = 0x4020000000000000;
      *(v29 + 16) = 0;
      v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAE0C8, &qword_21E15A630);
      sub_21E1392E0(v2, v29 + *(v30 + 44));
      sub_21DF23E5C(&qword_27CEAE0D0, &qword_27CEAE098, &qword_21E15A5F8, MEMORY[0x277CE1198]);
      v31 = v5;
      sub_21E141164();
      sub_21DF23614(v29, &qword_27CEAE098, &qword_21E15A5F8);
      v32 = sub_21E140914();
      v33 = &v5[*(v64 + 36)];
      *v33 = v32;
      *(v33 + 8) = xmmword_21E15A500;
      *(v33 + 24) = xmmword_21E15A4F0;
      v33[40] = 0;
      v34 = &qword_27CEAE0A0;
      v35 = &qword_21E15A600;
      sub_21DF236C0(v31, v60, &qword_27CEAE0A0, &qword_21E15A600);
      swift_storeEnumTagMultiPayload();
      sub_21E139D70();
      sub_21E139E2C();
      v36 = v61;
      sub_21E1402F4();
      v37 = v31;
    }

    sub_21DF23614(v37, v34, v35);
    sub_21DF236C0(v36, v59, &qword_27CEAE0B8, &qword_21E15A618);
    swift_storeEnumTagMultiPayload();
    sub_21DF8B204();
    sub_21E139FE8();
    sub_21E1402F4();
    v25 = v36;
    v26 = &qword_27CEAE0B8;
    v27 = &qword_21E15A618;
  }

  return sub_21DF23614(v25, v26, v27);
}

uint64_t sub_21E139274(uint64_t a1)
{
  sub_21E141D64();
  sub_21E13F864();
}

uint64_t sub_21E1392E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v97 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CEAD410, &qword_21E146960);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v85 - v4;
  v6 = sub_21E13D384();
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v85 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_21E1420E4();
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v85 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_21E1400C4();
  MEMORY[0x28223BE20](v12 - 8);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAE100, &qword_21E15A680);
  MEMORY[0x28223BE20](v13);
  v15 = &v85 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAE108, &qword_21E15A688);
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v94 = &v85 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAE110, &unk_21E15A690);
  MEMORY[0x28223BE20](v19 - 8);
  v96 = &v85 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v21);
  v95 = *(a1 + 17);
  v98 = &v85 - v22;
  if (v95)
  {
    (*(v17 + 56))(&v85 - v22, 1, 1, v16, v23);
  }

  else
  {
    v86 = v13;
    v87 = v11;
    v88 = v15;
    v89 = v17;
    v90 = v16;
    v91 = v8;
    v92 = a1;
    v93 = v5;
    sub_21E1400B4();
    sub_21E1400A4();
    sub_21E141634();
    sub_21E140084();

    sub_21E1400A4();
    sub_21E1400E4();
    v85 = sub_21DF23B80();
    if (!sub_21E1426B4())
    {
      v24 = [objc_opt_self() mainBundle];
    }

    v25 = sub_21E140C64();
    v27 = v26;
    v29 = v28;
    sub_21E140994();
    sub_21E140A04();
    sub_21E140A54();

    v30 = sub_21E140C44();
    v32 = v31;
    v34 = v33;

    sub_21DF3DE8C(v25, v27, v29 & 1);

    LODWORD(v115) = sub_21E1404B4();
    v35 = sub_21E140C24();
    v37 = v36;
    v39 = v38;
    v41 = v40;
    sub_21DF3DE8C(v30, v32, v34 & 1);

    sub_21E141CD4();
    sub_21E13FCE4();
    LOBYTE(v32) = v39 & 1;
    LOBYTE(v99) = v39 & 1;
    v42 = v88;
    v43 = &v88[*(v86 + 36)];
    v44 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8288, &qword_21E14AC50) + 28);
    v45 = *MEMORY[0x277CE1050];
    v46 = sub_21E141654();
    (*(*(v46 - 8) + 104))(v43 + v44, v45, v46);
    *v43 = swift_getKeyPath();
    *v42 = v35;
    *(v42 + 8) = v37;
    *(v42 + 16) = v32;
    *(v42 + 24) = v41;
    v47 = v120;
    *(v42 + 96) = v119;
    *(v42 + 112) = v47;
    *(v42 + 128) = v121;
    v48 = v116;
    *(v42 + 32) = v115;
    *(v42 + 48) = v48;
    v49 = v118;
    *(v42 + 64) = v117;
    *(v42 + 80) = v49;
    sub_21E142084();
    if (!sub_21E1426B4())
    {
      v50 = [objc_opt_self() mainBundle];
    }

    sub_21E13D374();
    *&v106 = sub_21E142184();
    *(&v106 + 1) = v51;
    sub_21E13A0E0();
    sub_21DF252E0();
    v52 = v94;
    sub_21E141024();

    sub_21DF23614(v42, &qword_27CEAE100, &qword_21E15A680);
    v53 = v98;
    sub_21E13A198(v52, v98);
    (*(v89 + 56))(v53, 0, 1, v90);
    a1 = v92;
    v5 = v93;
  }

  v54 = *(a1 + 8);
  *&v115 = *a1;
  *(&v115 + 1) = v54;
  sub_21DF252E0();

  v55 = sub_21E140C94();
  v57 = v56;
  v59 = v58;
  v60 = [objc_opt_self() defaultMetrics];
  [v60 scaledValueForValue_];

  v61 = sub_21E1409D4();
  (*(*(v61 - 8) + 56))(v5, 1, 1, v61);
  sub_21E140A24();
  sub_21DF23614(v5, &unk_27CEAD410, &qword_21E146960);
  v62 = sub_21E140C44();
  v64 = v63;
  v66 = v65;

  sub_21DF3DE8C(v55, v57, v59 & 1);

  sub_21E141524();
  v67 = sub_21E140C14();
  v93 = v69;
  v94 = v68;
  v71 = v70;
  v72 = v69;

  sub_21DF3DE8C(v62, v64, v66 & 1);

  sub_21E141CD4();
  sub_21E13FCE4();
  LOBYTE(v64) = v71 & 1;
  v125 = v71 & 1;
  v73 = v98;
  v74 = v96;
  sub_21DF236C0(v98, v96, &qword_27CEAE110, &unk_21E15A690);
  v75 = v97;
  sub_21DF236C0(v74, v97, &qword_27CEAE110, &unk_21E15A690);
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAE120, &qword_21E15A6D8);
  v77 = (v75 + *(v76 + 48));
  *&v106 = v67;
  v78 = v67;
  v79 = v94;
  *(&v106 + 1) = v94;
  LOBYTE(v107) = v64;
  *(&v107 + 1) = *v124;
  DWORD1(v107) = *&v124[3];
  *(&v107 + 1) = v72;
  v112 = v103;
  v113 = v104;
  v114 = v105;
  v110 = v101;
  v111 = v102;
  v108 = v99;
  v109 = v100;
  v80 = v104;
  v77[6] = v103;
  v77[7] = v80;
  v77[8] = v114;
  v81 = v109;
  v77[2] = v108;
  v77[3] = v81;
  v82 = v111;
  v77[4] = v110;
  v77[5] = v82;
  v83 = v107;
  *v77 = v106;
  v77[1] = v83;
  *(v75 + *(v76 + 64)) = (v95 & 1) == 0;
  sub_21DF236C0(&v106, &v115, &qword_27CEA72B0, &unk_21E1469C0);
  sub_21DF23614(v73, &qword_27CEAE110, &unk_21E15A690);
  *&v115 = v78;
  *(&v115 + 1) = v79;
  LOBYTE(v116) = v64;
  *(&v116 + 1) = *v124;
  DWORD1(v116) = *&v124[3];
  *(&v116 + 1) = v93;
  v121 = v103;
  v122 = v104;
  v123 = v105;
  v117 = v99;
  v118 = v100;
  v119 = v101;
  v120 = v102;
  sub_21DF23614(&v115, &qword_27CEA72B0, &unk_21E1469C0);
  return sub_21DF23614(v74, &qword_27CEAE110, &unk_21E15A690);
}

unint64_t sub_21E139D70()
{
  result = qword_27CEAE0D8;
  if (!qword_27CEAE0D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEAE0B0, &qword_21E15A610);
    sub_21E139FA0(&qword_27CEA9AE8, type metadata accessor for CardSafetyInterstitial, &unk_21E156808);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEAE0D8);
  }

  return result;
}

unint64_t sub_21E139E2C()
{
  result = qword_27CEAE0E0;
  if (!qword_27CEAE0E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEAE0A0, &qword_21E15A600);
    sub_21E139EB8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEAE0E0);
  }

  return result;
}

unint64_t sub_21E139EB8()
{
  result = qword_27CEAE0E8;
  if (!qword_27CEAE0E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEAE0F0, &unk_21E15A638);
    sub_21DF23E5C(&qword_27CEAE0D0, &qword_27CEAE098, &qword_21E15A5F8, MEMORY[0x277CE1198]);
    sub_21E139FA0(&qword_27CEA9E80, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEAE0E8);
  }

  return result;
}

uint64_t sub_21E139FA0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_21E139FE8()
{
  result = qword_27CEAE0F8;
  if (!qword_27CEAE0F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEAE0B8, &qword_21E15A618);
    sub_21E139D70();
    sub_21E139E2C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEAE0F8);
  }

  return result;
}

unint64_t sub_21E13A0E0()
{
  result = qword_27CEAE118;
  if (!qword_27CEAE118)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEAE100, &qword_21E15A680);
    sub_21DF4275C();
    sub_21DF23E5C(&qword_280F68DB8, &qword_27CEA8288, &qword_21E14AC50, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEAE118);
  }

  return result;
}

uint64_t sub_21E13A198(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAE108, &qword_21E15A688);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_21E13A218()
{
  result = qword_27CEAE128;
  if (!qword_27CEAE128)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEAE130, &qword_21E15A720);
    sub_21DF8B204();
    sub_21E139FE8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEAE128);
  }

  return result;
}

uint64_t VisualIntelligenceLookupView.init(state:fullScreenRequested:preferredHeight:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v11 = type metadata accessor for VisualIntelligenceLookupView(0);
  v12 = (a5 + *(v11 + 24));
  sub_21E141704();
  *v12 = v17;
  v12[1] = v18;
  v13 = sub_21E13D884();
  v14 = *(v13 - 8);
  (*(v14 + 16))(a5, a1, v13);
  v15 = a5 + *(v11 + 20);
  *v15 = a2;
  *(v15 + 8) = a3;
  *(v15 + 16) = a4;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6E68, &unk_21E1461B0);
  sub_21E141724();
  (*(v14 + 8))(a1, v13);
}

uint64_t type metadata accessor for VisualIntelligenceLookupView(uint64_t a1)
{
  result = qword_27CEAE170;
  if (!qword_27CEAE170)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t VisualIntelligenceLookupView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v67 = a1;
  v3 = sub_21E13D384();
  MEMORY[0x28223BE20](v3 - 8);
  v54 = &v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_21E1420E4();
  MEMORY[0x28223BE20](v5 - 8);
  v52 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = type metadata accessor for EmptyResultsView(0);
  MEMORY[0x28223BE20](v63);
  v53 = (&v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v8);
  v55 = &v52 - v9;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAE138, &qword_21E15A728);
  MEMORY[0x28223BE20](v59);
  v62 = &v52 - v10;
  v56 = type metadata accessor for VisualLookupSiriView(0);
  MEMORY[0x28223BE20](v56);
  v12 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAE140, &qword_21E15A730);
  MEMORY[0x28223BE20](v61);
  v58 = &v52 - v13;
  v14 = sub_21E13D7E4();
  v57 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v52 - v18;
  MEMORY[0x28223BE20](v20);
  v22 = &v52 - v21;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAE148, &qword_21E15A738);
  MEMORY[0x28223BE20](v66);
  v60 = &v52 - v23;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAE150, &unk_21E15A740);
  MEMORY[0x28223BE20](v65);
  v64 = &v52 - v24;
  v25 = sub_21E13D884();
  v26 = *(v25 - 8);
  v27 = MEMORY[0x28223BE20](v25);
  v29 = (&v52 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  v30 = v2;
  (*(v26 + 16))(v29, v2, v25, v27);
  v31 = (*(v26 + 88))(v29, v25);
  if (v31 != *MEMORY[0x277D78EE8])
  {
    if (v31 == *MEMORY[0x277D78ED8])
    {
      (*(v26 + 8))(v29, v25);
    }

    else if (v31 != *MEMORY[0x277D78EE0] && v31 != *MEMORY[0x277D78ED0])
    {
      result = sub_21E142B04();
      __break(1u);
      return result;
    }

    swift_storeEnumTagMultiPayload();
    sub_21E13AF18();
    return sub_21E1402F4();
  }

  (*(v26 + 96))(v29, v25);
  v32 = *v29;
  if (*(v32 + 16))
  {
    v33 = v57;
    v34 = *(v57 + 16);
    v34(v19, v32 + ((*(v57 + 80) + 32) & ~*(v57 + 80)), v14);

    (*(v33 + 32))(v22, v19, v14);
    v34(v16, v22, v14);
    v35 = (v30 + *(type metadata accessor for VisualIntelligenceLookupView(0) + 20));
    v36 = *v35;
    v37 = v35[1];
    LOBYTE(v35) = *(v35 + 16);
    v71 = v36;
    v72 = v37;
    v73 = v35;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8380, &qword_21E148D30);
    sub_21E1419F4();
    sub_21DFA435C(v16, v68, v69, v70, v12);
    sub_21E13AED0(&qword_27CEAE158, type metadata accessor for VisualLookupSiriView, &unk_21E1491C0);
    v38 = v58;
    sub_21E141164();
    sub_21E13B09C(v12, type metadata accessor for VisualLookupSiriView);
    sub_21DF236C0(v38, v62, &qword_27CEAE140, &qword_21E15A730);
    swift_storeEnumTagMultiPayload();
    sub_21E13ADE4();
    sub_21E13AED0(&qword_27CEA7FB0, type metadata accessor for EmptyResultsView, &protocol conformance descriptor for EmptyResultsView);
    v39 = v60;
    sub_21E1402F4();
    sub_21DF23614(v38, &qword_27CEAE140, &qword_21E15A730);
    (*(v33 + 8))(v22, v14);
  }

  else
  {

    sub_21E142084();
    sub_21DF23B80();
    if (!sub_21E1426B4())
    {
      v41 = [objc_opt_self() mainBundle];
    }

    sub_21E13D374();
    v42 = sub_21E142184();
    v44 = v43;
    KeyPath = swift_getKeyPath();
    v46 = v53;
    *v53 = KeyPath;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD070, &qword_21E146170);
    swift_storeEnumTagMultiPayload();
    v47 = v63;
    v48 = (v46 + *(v63 + 24));
    *v48 = v42;
    v48[1] = v44;
    v49 = (v46 + v47[7]);
    *v49 = 0xD000000000000023;
    v49[1] = 0x800000021E15FFA0;
    v50 = (v46 + v47[8]);
    *v50 = 0;
    v50[1] = 0;
    *(v46 + v47[5]) = 0x402C000000000000;
    v51 = v55;
    sub_21E13AFD4(v46, v55);
    sub_21E13B038(v51, v62);
    swift_storeEnumTagMultiPayload();
    sub_21E13ADE4();
    sub_21E13AED0(&qword_27CEA7FB0, type metadata accessor for EmptyResultsView, &protocol conformance descriptor for EmptyResultsView);
    v39 = v60;
    sub_21E1402F4();
    sub_21E13B09C(v51, type metadata accessor for EmptyResultsView);
  }

  sub_21DF236C0(v39, v64, &qword_27CEAE148, &qword_21E15A738);
  swift_storeEnumTagMultiPayload();
  sub_21E13AF18();
  sub_21E1402F4();
  return sub_21DF23614(v39, &qword_27CEAE148, &qword_21E15A738);
}

unint64_t sub_21E13ADE4()
{
  result = qword_27CEAE160;
  if (!qword_27CEAE160)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEAE140, &qword_21E15A730);
    sub_21E13AED0(&qword_27CEAE158, type metadata accessor for VisualLookupSiriView, &unk_21E1491C0);
    sub_21E13AED0(&qword_27CEA9E80, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEAE160);
  }

  return result;
}

uint64_t sub_21E13AED0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_21E13AF18()
{
  result = qword_27CEAE168;
  if (!qword_27CEAE168)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEAE148, &qword_21E15A738);
    sub_21E13ADE4();
    sub_21E13AED0(&qword_27CEA7FB0, type metadata accessor for EmptyResultsView, &protocol conformance descriptor for EmptyResultsView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEAE168);
  }

  return result;
}

uint64_t sub_21E13AFD4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EmptyResultsView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21E13B038(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EmptyResultsView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21E13B09C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_21E13B144(uint64_t a1)
{
  sub_21E13D884();
  if (v1 <= 0x3F)
  {
    sub_21DFA421C(319, &qword_280F68D00, MEMORY[0x277D839B0], MEMORY[0x277CE11F8]);
    if (v2 <= 0x3F)
    {
      sub_21DFA421C(319, &qword_280F68D70, MEMORY[0x277D85048], MEMORY[0x277CE10B8]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_21E13B228()
{
  result = qword_27CEAE180;
  if (!qword_27CEAE180)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEAE188, &unk_21E15A820);
    sub_21E13AF18();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEAE180);
  }

  return result;
}

uint64_t OmnibarContainer.init(model:sheetAssistant:additionalPartnerHorizontalPadding:isUnified:handler:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, uint64_t a11)
{
  *a9 = result;
  *(a9 + 8) = a2;
  *(a9 + 32) = a3;
  *(a9 + 40) = a4;
  *(a9 + 48) = a10;
  *(a9 + 56) = a5;
  *(a9 + 64) = a6;
  *(a9 + 72) = a7;
  *(a9 + 16) = a8;
  *(a9 + 24) = a11;
  return result;
}

uint64_t sub_21E13B2D4@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v6 = *(v1 + 16);
  v5 = *(v1 + 24);
  v12 = *(v1 + 56);
  v13 = *(v1 + 64);
  v14 = *(v1 + 72);

  v7 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8380, &qword_21E148D30);
  sub_21E1419F4();

  sub_21E141A14();
  return Omnibar.init(model:sheetAssistant:arePartnerActionsEnabled:isUnified:handler:)(v3, v7, v12, v13, v14, v9, v10, v11, a1, v6, v5);
}

char *OmnibarContainer.makeUIView(context:)()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAC478, &unk_21E15A830);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v24 - v2;
  v4 = *v0;
  v5 = *(v0 + 8);
  v7 = *(v0 + 16);
  v6 = *(v0 + 24);
  v8 = *(v0 + 32);
  v9 = *(v0 + 40);
  v10 = *(v0 + 48);
  v11 = *(v0 + 64);
  v12 = *(v0 + 72);
  v24 = *(v0 + 56);
  v25 = v11;
  LOBYTE(v26) = v12;
  swift_retain_n();
  v13 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8380, &qword_21E148D30);
  sub_21E1419F4();
  v14 = v27[0];
  v15 = v27[1];
  v16 = v28;
  LOBYTE(v27[0]) = 1;

  sub_21E141A14();
  Omnibar.init(model:sheetAssistant:arePartnerActionsEnabled:isUnified:handler:)(v4, v13, v24, v25, v26, v14, v15, v16, v3, v7, v6);
  v17 = type metadata accessor for Omnibar(0);
  (*(*(v17 - 8) + 56))(v3, 0, 1, v17);
  v18 = objc_allocWithZone(type metadata accessor for OmnibarContainerView());
  v19 = sub_21E0A020C(v4, v13, v3);

  v24 = v8;
  v25 = v9;
  v26 = v10;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEACC88, &qword_21E15A840);
  MEMORY[0x223D52200](v27, v20);
  v21 = v27[0];
  v22 = OBJC_IVAR____TtC20VisualIntelligenceUI20OmnibarContainerView_additionalPartnerHorizontalPadding;
  swift_beginAccess();
  *&v19[v22] = v21;
  [v19 setNeedsLayout];
  return v19;
}

void OmnibarContainer.updateUIView(_:context:)(uint64_t a1)
{
  v3 = type metadata accessor for Omnibar(0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  v7 = *(v1 + 8);
  v9 = *(v1 + 16);
  v8 = *(v1 + 24);
  v10 = *(v1 + 56);
  v11 = *(v1 + 64);
  v12 = *(v1 + 72);
  v13 = OBJC_IVAR____TtC20VisualIntelligenceUI20OmnibarContainerView_hostingView;
  swift_beginAccess();
  v14 = *(a1 + v13);
  if (v14)
  {
    v24 = v10;
    v25 = v11;
    v26 = v12;
    v15 = v14;

    v16 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8380, &qword_21E148D30);
    sub_21E1419F4();
    v17 = v21;
    v18 = v22;
    v19 = v23;
    LOBYTE(v21) = 1;

    sub_21E141A14();
    Omnibar.init(model:sheetAssistant:arePartnerActionsEnabled:isUnified:handler:)(v6, v16, v24, v25, v26, v17, v18, v19, v5, v9, v8);
    sub_21E13F994();
  }
}

void sub_21E13B734(uint64_t a1)
{
  v3 = type metadata accessor for Omnibar(0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC20VisualIntelligenceUI20OmnibarContainerView_hostingView;
  swift_beginAccess();
  v7 = *(a1 + v6);
  if (v7)
  {
    v8 = v1[3];
    v11[2] = v1[2];
    v12[0] = v8;
    *(v12 + 9) = *(v1 + 57);
    v9 = v1[1];
    v11[0] = *v1;
    v11[1] = v9;
    v10 = v7;
    sub_21E13B2D4(v5);
    sub_21E13F994();
  }
}

uint64_t sub_21E13B80C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21E13BA24();

  return MEMORY[0x28212E3C8](a1, a2, a3, v6);
}

uint64_t sub_21E13B870(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21E13BA24();

  return MEMORY[0x28212E358](a1, a2, a3, v6);
}

void sub_21E13B8D4(uint64_t a1)
{
  sub_21E13BA24();
  sub_21E1402A4();
  __break(1u);
}

unint64_t sub_21E13B900()
{
  result = qword_27CEAE190;
  if (!qword_27CEAE190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEAE190);
  }

  return result;
}

__n128 __swift_memcpy73_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 57) = *(a2 + 57);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_21E13B978(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 73))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_21E13B9C0(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

unint64_t sub_21E13BA24()
{
  result = qword_27CEAE198;
  if (!qword_27CEAE198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEAE198);
  }

  return result;
}

uint64_t type metadata accessor for Waypoint(uint64_t a1)
{
  result = qword_280F693C8;
  if (!qword_280F693C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_21E13BAEC(uint64_t a1)
{
  result = sub_21E13D834();
  if (v2 <= 0x3F)
  {
    result = sub_21DFB9568();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_21E13BBB0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v36 = a1;
  v3 = type metadata accessor for WaypointButtonStyle(0);
  MEMORY[0x28223BE20](v3);
  v5 = (&v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = type metadata accessor for Waypoint(0);
  v7 = (v6 - 8);
  v8 = *(v6 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAE1A0, &qword_21E15AA30);
  v11 = *(v10 - 8);
  v32 = v10;
  v33 = v11;
  MEMORY[0x28223BE20](v10);
  v13 = &v31 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAE1A8, &qword_21E15AA38);
  v15 = *(v14 - 8);
  v34 = v14;
  v35 = v15;
  MEMORY[0x28223BE20](v14);
  v17 = &v31 - v16;
  sub_21E13C20C(v2, &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v19 = swift_allocObject();
  sub_21E13C270(&v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v18);
  v37 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAE1B0, &qword_21E15AA40);
  sub_21E13C348();
  sub_21E141764();
  v20 = v3[5];
  v21 = sub_21E13D834();
  (*(*(v21 - 8) + 16))(v5 + v20, v2, v21);
  LOBYTE(v20) = *(v2 + v7[9]);
  v22 = *(v2 + v7[10]);
  *v5 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD070, &qword_21E146170);
  swift_storeEnumTagMultiPayload();
  *(v5 + v3[6]) = v20;
  *(v5 + v3[7]) = v22;
  v23 = sub_21DF23E5C(&qword_27CEAE1D0, &qword_27CEAE1A0, &qword_21E15AA30, MEMORY[0x277CDF028]);
  v24 = sub_21E13C690(&qword_27CEAE1D8, type metadata accessor for WaypointButtonStyle, &unk_21E147AB4);
  v25 = v32;
  sub_21E140DD4();
  sub_21E13C4B8(v5);
  (*(v33 + 8))(v13, v25);
  v26 = (v2 + v7[8]);
  v28 = *v26;
  v27 = v26[1];
  v42 = v28;
  v43 = v27;
  v38 = v25;
  v39 = v3;
  v40 = v23;
  v41 = v24;
  swift_getOpaqueTypeConformance2();
  sub_21DF252E0();
  v29 = v34;
  sub_21E141024();
  return (*(v35 + 8))(v17, v29);
}

uint64_t sub_21E13C01C@<X0>(uint64_t a2@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CEAD410, &qword_21E146960);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v16 - v4;
  type metadata accessor for Waypoint(0);

  v6 = sub_21E141634();
  sub_21E1409E4();
  v7 = sub_21E1409D4();
  (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
  v8 = sub_21E140A24();
  sub_21DF27DB8(v5);
  KeyPath = swift_getKeyPath();
  v10 = sub_21E1404A4();
  v11 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAE1B0, &qword_21E15AA40) + 36));
  v12 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9730, &qword_21E14B790) + 28);
  v13 = *MEMORY[0x277CDF3C0];
  v14 = sub_21E13F444();
  (*(*(v14 - 8) + 104))(&v11[v12], v13, v14);
  result = swift_getKeyPath();
  *v11 = result;
  *a2 = v6;
  *(a2 + 8) = KeyPath;
  *(a2 + 16) = v8;
  *(a2 + 24) = v10;
  return result;
}

uint64_t sub_21E13C20C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Waypoint(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21E13C270(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Waypoint(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_21E13C348()
{
  result = qword_27CEAE1B8;
  if (!qword_27CEAE1B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEAE1B0, &qword_21E15AA40);
    sub_21E13C400();
    sub_21DF23E5C(&qword_280F68DE0, &qword_27CEA9730, &qword_21E14B790, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEAE1B8);
  }

  return result;
}

unint64_t sub_21E13C400()
{
  result = qword_27CEAE1C0;
  if (!qword_27CEAE1C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEAE1C8, &qword_21E15AA48);
    sub_21E099354();
    sub_21DF23E5C(&qword_280F68E00, &qword_27CEA8AA0, &qword_21E14B7D0, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEAE1C0);
  }

  return result;
}

uint64_t sub_21E13C4B8(uint64_t a1)
{
  v2 = type metadata accessor for WaypointButtonStyle(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_21E13C514()
{
  result = qword_27CEAE1E0;
  if (!qword_27CEAE1E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEAE1E8, qword_21E15AAE0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEAE1A0, &qword_21E15AA30);
    type metadata accessor for WaypointButtonStyle(255);
    sub_21DF23E5C(&qword_27CEAE1D0, &qword_27CEAE1A0, &qword_21E15AA30, MEMORY[0x277CDF028]);
    sub_21E13C690(&qword_27CEAE1D8, type metadata accessor for WaypointButtonStyle, &unk_21E147AB4);
    swift_getOpaqueTypeConformance2();
    sub_21E13C690(&qword_27CEA9E80, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEAE1E0);
  }

  return result;
}

uint64_t sub_21E13C690(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

BOOL __isOSVersionAtLeast(int a1, int a2, int a3)
{
  if (qword_280F6C0E0 == -1)
  {
    v3 = _MergedGlobals < a1;
    if (_MergedGlobals > a1)
    {
      return 1;
    }
  }

  else
  {
    v5 = a3;
    v6 = a2;
    __isOSVersionAtLeast_cold_1();
    a2 = v6;
    a3 = v5;
    v3 = _MergedGlobals < a1;
    if (_MergedGlobals > a1)
    {
      return 1;
    }
  }

  if (v3)
  {
    return 0;
  }

  if (dword_280F6C0D4 > a2)
  {
    return 1;
  }

  if (dword_280F6C0D4 < a2)
  {
    return 0;
  }

  return dword_280F6C0D8 >= a3;
}

uint64_t __isPlatformVersionAtLeast(int a1, int a2, int a3, int a4)
{
  if (qword_280F6C0E8 == -1)
  {
    if (qword_280F6C0F0)
    {
      return _availability_version_check();
    }
  }

  else
  {
    v5 = a4;
    v6 = a3;
    v7 = a2;
    __isPlatformVersionAtLeast_cold_1();
    a2 = v7;
    a3 = v6;
    a4 = v5;
    if (qword_280F6C0F0)
    {
      return _availability_version_check();
    }
  }

  if (qword_280F6C0E0 != -1)
  {
    v9 = a4;
    v10 = a3;
    v11 = a2;
    __isOSVersionAtLeast_cold_1();
    a3 = v10;
    a4 = v9;
    v8 = _MergedGlobals < v11;
    if (_MergedGlobals > v11)
    {
      return 1;
    }

LABEL_7:
    if (!v8)
    {
      if (dword_280F6C0D4 > a3)
      {
        return 1;
      }

      if (dword_280F6C0D4 >= a3)
      {
        return dword_280F6C0D8 >= a4;
      }
    }

    return 0;
  }

  v8 = _MergedGlobals < a2;
  if (_MergedGlobals <= a2)
  {
    goto LABEL_7;
  }

  return 1;
}

uint64_t _initializeAvailabilityCheck(uint64_t result)
{
  v29 = *MEMORY[0x277D85DE8];
  v1 = qword_280F6C0F0;
  if (qword_280F6C0F0)
  {
    v2 = result == 0;
  }

  else
  {
    v2 = 0;
  }

  if (!v2)
  {
    if (MEMORY[0x28223BE68])
    {
      v1 = MEMORY[0x28223BE68];
      qword_280F6C0F0 = MEMORY[0x28223BE68];
    }

    if (v1)
    {
      v3 = result == 0;
    }

    else
    {
      v3 = 0;
    }

    if (!v3)
    {
      result = dlsym(0xFFFFFFFFFFFFFFFELL, "kCFAllocatorNull");
      if (result)
      {
        v4 = *result;
        result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDataCreateWithBytesNoCopy");
        if (result)
        {
          v5 = result;
          v6 = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateWithData");
          result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateFromXMLData");
          if (v6 | result)
          {
            v7 = result;
            result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringCreateWithCStringNoCopy");
            if (result)
            {
              v8 = result;
              result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDictionaryGetValue");
              if (result)
              {
                v9 = result;
                result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFGetTypeID");
                if (result)
                {
                  v10 = result;
                  result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetTypeID");
                  if (result)
                  {
                    v11 = result;
                    result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetCString");
                    v27 = result;
                    if (result)
                    {
                      result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFRelease");
                      if (result)
                      {
                        v12 = result;
                        result = fopen("/System/Library/CoreServices/SystemVersion.plist", "r");
                        if (result)
                        {
                          v13 = result;
                          v26 = v12;
                          fseek(result, 0, 2);
                          v14 = MEMORY[0x223D538F0](v13);
                          if (v14 < 0)
                          {
                            v16 = 0;
                          }

                          else
                          {
                            v15 = v14;
                            rewind(v13);
                            v16 = malloc(v15);
                            if (v16)
                            {
                              v25 = v16;
                              if (fread(v16, 1uLL, v15, v13) == v15 && (v17 = v5(0, v25, v15, v4)) != 0)
                              {
                                v18 = v17;
                                if (v6)
                                {
                                  v19 = (v6)(0, v17, 0, 0, 0);
                                }

                                else
                                {
                                  v19 = v7(0, v17, 0, 0);
                                }

                                v20 = v19;
                                if (v19)
                                {
                                  v21 = v8(0, "ProductVersion", 1536, v4);
                                  if (v21)
                                  {
                                    v22 = v21;
                                    v23 = v9(v20, v21);
                                    (v26)(v22);
                                    if (v23)
                                    {
                                      v24 = v10(v23);
                                      if (v24 == v11())
                                      {
                                        if (v27(v23, v28, 32, 134217984))
                                        {
                                          sscanf(v28, "%d.%d.%d", &_MergedGlobals, &dword_280F6C0D4, &dword_280F6C0D8);
                                        }
                                      }
                                    }
                                  }

                                  (v26)(v20);
                                }

                                (v26)(v18);
                                v16 = v25;
                              }

                              else
                              {
                                v16 = v25;
                              }
                            }
                          }

                          free(v16);
                          return fclose(v13);
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

CGRect CGRectInset(CGRect rect, CGFloat dx, CGFloat dy)
{
  MEMORY[0x2821115C8](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

CGRect CGRectIntersection(CGRect r1, CGRect r2)
{
  MEMORY[0x2821115D8](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGRect CGRectOffset(CGRect rect, CGFloat dx, CGFloat dy)
{
  MEMORY[0x282111608](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

CGRect CGRectUnion(CGRect r1, CGRect r2)
{
  MEMORY[0x282111618](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CLLocationCoordinate2D MKCoordinateForMapPoint(MKMapPoint mapPoint)
{
  MEMORY[0x282123638](mapPoint, *&mapPoint.y);
  result.longitude = v2;
  result.latitude = v1;
  return result;
}

MKMapPoint MKMapPointForCoordinate(CLLocationCoordinate2D coordinate)
{
  MEMORY[0x282123658](coordinate, *&coordinate.longitude);
  result.y = v2;
  result.x = v1;
  return result;
}