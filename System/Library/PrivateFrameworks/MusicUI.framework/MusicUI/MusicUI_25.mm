uint64_t sub_21690C2C0@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for FlowcaseLockup(0);
  v3 = v2 - 8;
  MEMORY[0x28223BE20](v2);
  v5 = &v13[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for FlowcaseLockupView(0);
  v16 = sub_2170067A4();
  v17 = sub_2166D4620(&qword_280E4A480, MEMORY[0x277D2A460], MEMORY[0x277D2A398]);
  __swift_allocate_boxed_opaque_existential_1Tm(&v15);
  sub_216CCC250();
  sub_216DE9978();
  sub_216683A80(&v5[*(v3 + 32)], v13, &qword_27CAB6DB0, &qword_217016C00);
  sub_2169107A0(v5, type metadata accessor for FlowcaseLockup);
  LOBYTE(v5) = v14 != 0;
  sub_2167FDB84(v13, &qword_27CAB6DB0);
  v6 = type metadata accessor for ContextMenuPreview(0);
  v7 = v6[7];
  v8 = sub_21700C4B4();
  __swift_storeEnumTagSinglePayload(a1 + v7, 1, 1, v8);
  v9 = v6[8];
  v10 = sub_21700C444();
  __swift_storeEnumTagSinglePayload(a1 + v9, 1, 1, v10);
  sub_2167B8EF0(&v15, a1 + v6[6]);
  *(a1 + v6[5]) = v5;
  v11 = type metadata accessor for ContextMenuPreview.ViewModel(0);
  return __swift_storeEnumTagSinglePayload(a1, 1, 1, v11);
}

uint64_t sub_21690C488()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6DE8, "dP\r");
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v26 - v1;
  v27 = sub_2170075A4();
  v3 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_2170067A4();
  v6 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for FlowcaseLockup(0);
  v10 = v9 - 8;
  MEMORY[0x28223BE20](v9);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for FlowcaseLockupView(0);
  sub_216DE9978();
  sub_216683A80(&v12[*(v10 + 32)], v29, &qword_27CAB6DB0, &qword_217016C00);
  sub_2169107A0(v12, type metadata accessor for FlowcaseLockup);
  sub_216CCC250();
  v13 = sub_216C0C534(v28);
  sub_216C0C548(v13, v14, v15, v16, v17, v18, v19, v20, v26, v27, v28[0], v28[1], v28[2], v28[3], v28[4], v29[0], v29[1], v29[2], v29[3], v29[4]);
  v21 = type metadata accessor for MenuContext(0);
  __swift_storeEnumTagSinglePayload(v2, 1, 1, v21);
  sub_2167B9BDC(v29, v8, v28, v5, v2, v22, v23, v24, v26, v27, v28[0], v28[1], v28[2], v28[3], v28[4], v29[0], v29[1], v29[2], v29[3], v29[4]);
  sub_2167FDB84(v2, &qword_27CAB6DE8);
  (*(v3 + 8))(v5, v27);
  sub_2167FDB84(v28, &qword_27CAB7310);
  (*(v6 + 8))(v8, v26);
  return sub_2167FDB84(v29, &qword_27CAB6DB0);
}

uint64_t sub_21690C77C@<X0>(uint64_t a1@<X8>)
{
  v50 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA020, &unk_21701F640);
  MEMORY[0x28223BE20](v1 - 8);
  v49 = &v44 - v2;
  v47 = sub_217009D24();
  MEMORY[0x28223BE20](v47);
  v48 = &v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF770, &unk_21701A670);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v44 - v5;
  v45 = sub_217007474();
  v7 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v9 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v44 - v11;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7680, &unk_21701F610);
  MEMORY[0x28223BE20](v46);
  v14 = &v44 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA028, &qword_21703CC50);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v44 - v19;
  type metadata accessor for FlowcaseLockupView(0);
  v51[3] = sub_2170067A4();
  v51[4] = sub_2166D4620(&qword_280E4A480, MEMORY[0x277D2A460], MEMORY[0x277D2A398]);
  __swift_allocate_boxed_opaque_existential_1Tm(v51);
  sub_216CCC250();
  sub_2167BB664(v51);
  __swift_destroy_boxed_opaque_existential_1Tm(v51);
  sub_216683A80(v20, v17, &qword_27CABA028, &qword_21703CC50);
  v21 = type metadata accessor for ContextMenuPreview.ContextPreviewArtwork(0);
  if (__swift_getEnumTagSinglePayload(v17, 1, v21) == 1)
  {
    sub_2167FDB84(v20, &qword_27CABA028);
    sub_2167FDB84(v17, &qword_27CABA028);
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA010, &qword_21703CC10);
    v23 = v50;
    v24 = 1;
  }

  else
  {
    sub_216683A80(v17, v6, &qword_27CABF770, &unk_21701A670);
    sub_217007434();
    sub_2170073E4();
    v25 = *(v7 + 8);
    v44 = v14;
    v26 = v45;
    v25(v9, v45);
    v27 = &v17[*(v21 + 20)];
    v28 = *v27;
    v29 = v27[1];
    v30 = swift_allocObject();
    *(v30 + 16) = v28;
    *(v30 + 24) = v29;
    sub_2167B8890(v28, v29);
    sub_2167C505C();
    v31 = v44;
    sub_2170073F4();

    v25(v12, v26);
    if (qword_280E2C2C8 != -1)
    {
      swift_once();
    }

    v32 = qword_280E73AA0;
    v33 = byte_280E73AA8;
    v34 = qword_280E73AB0;
    v35 = v49;
    sub_217009D14();
    __swift_storeEnumTagSinglePayload(v35, 0, 1, v47);
    sub_217009D04();
    sub_2167FDB84(v35, &qword_27CABA020);
    v36 = v31 + *(v46 + 36);
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB76F0, &qword_21701F630);
    v38 = v31;
    v39 = v36 + *(v37 + 36);
    sub_217009374();
    sub_2167FDB84(v20, &qword_27CABA028);
    *(v39 + *(type metadata accessor for InsettableConcentricRectangle(0) + 20)) = 0;
    v40 = v38 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB76E0, &unk_21701F620) + 36);
    sub_216910410(v39, v40, type metadata accessor for InsettableConcentricRectangle);
    *(v40 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB76E8, &unk_217017550) + 36)) = 256;
    *v36 = v32;
    *(v36 + 8) = v33;
    *(v36 + 16) = v34;
    v41 = v36 + *(v37 + 40);
    *v41 = swift_getKeyPath();
    *(v41 + 8) = 0;

    sub_2169107A0(v17, type metadata accessor for ContextMenuPreview.ContextPreviewArtwork);
    v42 = v50;
    sub_2167C5834(v38, v50, &qword_27CAB7680, &unk_21701F610);
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA010, &qword_21703CC10);
    *(v42 + *(v22 + 36)) = xmmword_21701F260;
    v23 = v42;
    v24 = 0;
  }

  return __swift_storeEnumTagSinglePayload(v23, v24, 1, v22);
}

uint64_t sub_21690CE1C()
{
  v1 = v0;
  v2 = type metadata accessor for FlowcaseLockupView.ContentView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABC658, &qword_217064E60);
  v6 = (v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = (&v16 - v7);
  sub_216683A80(v1, &v16 - v7, &qword_27CAB6DB0, &qword_217016C00);
  v9 = v6[13];
  v10 = sub_217007F04();
  __swift_storeEnumTagSinglePayload(v8 + v9, 1, 1, v10);
  sub_216910410(v1, &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for FlowcaseLockupView.ContentView);
  v11 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v12 = swift_allocObject();
  sub_21691046C(&v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v11, type metadata accessor for FlowcaseLockupView.ContentView);
  v13 = v6[14];
  *(v8 + v13) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0, &qword_217018AF0);
  swift_storeEnumTagMultiPayload();
  v14 = v8 + v6[15];
  *v14 = swift_getKeyPath();
  v14[40] = 0;
  v8[5] = sub_216910D7C;
  v8[6] = v12;
  v8[7] = 0;
  v8[8] = 0;
  sub_216E316B8();
  return sub_2167FDB84(v8, &qword_27CABC658);
}

uint64_t sub_21690D050@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_2170093B4();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABC660, &qword_2170270A0);
  return sub_21690D0A4(a1, a2 + *(v4 + 44));
}

uint64_t sub_21690D0A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  v3 = type metadata accessor for FlowcaseLockupView.ContentView.ArtworkView(0);
  v4 = (v3 - 8);
  MEMORY[0x28223BE20](v3);
  v39 = v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = v38 - v7;
  v9 = type metadata accessor for FlowcaseLockupView.ContentView.TitleView(0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = v38 - v13;
  v15 = *(a1 + 40);
  v40 = *(a1 + 80);
  v16 = v40;
  v17 = *(a1 + 88);
  v18 = *(a1 + 89);
  *v14 = v15;
  v19 = *(a1 + 48);
  v38[0] = *(a1 + 64);
  v20 = v38[0];
  v38[1] = v19;
  *(v14 + 8) = v19;
  *(v14 + 24) = v20;
  *(v14 + 5) = v16;
  v14[48] = v17;
  v14[49] = v18;
  v22 = *(v21 + 44);
  *&v14[v22] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7580, &qword_21701F580);
  swift_storeEnumTagMultiPayload();
  v23 = type metadata accessor for FlowcaseLockupView.ContentView(0);
  sub_216683A80(a1 + v23[11], v8, &qword_27CAB6D60, &qword_217014E40);
  v24 = *(a1 + 96);
  v25 = *(a1 + 104);
  sub_216683A80(a1 + v23[12], &v8[v4[8]], &qword_27CAB6D60, &qword_217014E40);
  v26 = v23[14];
  v27 = (a1 + v23[13]);
  v28 = *v27;
  v29 = v27[1];
  LOBYTE(v27) = *(a1 + v26);
  v30 = &v8[v4[7]];
  *v30 = v24;
  *(v30 + 1) = v25;
  v31 = &v8[v4[9]];
  *v31 = v28;
  *(v31 + 1) = v29;
  v8[v4[10]] = v27;
  v32 = &v8[v4[11]];
  *v32 = swift_getKeyPath();
  v32[8] = 0;
  sub_216910410(v14, v11, type metadata accessor for FlowcaseLockupView.ContentView.TitleView);
  v33 = v39;
  sub_216910410(v8, v39, type metadata accessor for FlowcaseLockupView.ContentView.ArtworkView);
  v34 = v41;
  sub_216910410(v11, v41, type metadata accessor for FlowcaseLockupView.ContentView.TitleView);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABC668, &qword_2170270E0);
  v36 = v34 + *(v35 + 48);
  *v36 = 0;
  *(v36 + 8) = 1;
  sub_216910410(v33, v34 + *(v35 + 64), type metadata accessor for FlowcaseLockupView.ContentView.ArtworkView);
  sub_21700DF14();
  sub_21700DF14();
  sub_21700DF14();
  sub_21700DF14();
  sub_21700DF14();
  sub_2169107A0(v8, type metadata accessor for FlowcaseLockupView.ContentView.ArtworkView);
  sub_2169107A0(v14, type metadata accessor for FlowcaseLockupView.ContentView.TitleView);
  sub_2169107A0(v33, type metadata accessor for FlowcaseLockupView.ContentView.ArtworkView);
  return sub_2169107A0(v11, type metadata accessor for FlowcaseLockupView.ContentView.TitleView);
}

uint64_t sub_21690D3F8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v123 = a1;
  v121 = sub_217008B44();
  MEMORY[0x28223BE20](v121);
  v122 = &v103 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7530, &unk_21701A660);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v103 - v5;
  v7 = sub_21700C444();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v113 = &v103 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = sub_2170090F4();
  v107 = *(v108 - 8);
  MEMORY[0x28223BE20](v108);
  v11 = &v103 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60, &qword_217014E40);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v103 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v103 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF770, &unk_21701A670);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v103 - v19;
  v112 = sub_217007474();
  v111 = *(v112 - 8);
  MEMORY[0x28223BE20](v112);
  v124 = &v103 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v110 = &v103 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB76F8, &qword_217017590);
  v115 = *(v24 - 8);
  v116 = v24;
  MEMORY[0x28223BE20](v24);
  *&v125 = &v103 - v25;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABC698, &qword_2170271B0);
  MEMORY[0x28223BE20](v109);
  v117 = &v103 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABC6A0, &qword_2170271B8);
  v119 = *(v27 - 8);
  v120 = v27;
  MEMORY[0x28223BE20](v27);
  v29 = &v103 - v28;
  sub_216683A80(v2, v17, &qword_27CAB6D60, &qword_217014E40);
  v30 = type metadata accessor for Artwork(0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v17, 1, v30);
  v114 = v6;
  if (EnumTagSinglePayload == 1)
  {
    sub_2167FDB84(v17, &qword_27CAB6D60);
    v32 = sub_21700C4B4();
    v33 = v20;
    v34 = 1;
  }

  else
  {
    v35 = sub_21700C4B4();
    (*(*(v35 - 8) + 16))(v20, v17, v35);
    sub_2169107A0(v17, type metadata accessor for Artwork);
    v33 = v20;
    v34 = 0;
    v32 = v35;
  }

  __swift_storeEnumTagSinglePayload(v33, v34, 1, v32);
  v36 = type metadata accessor for FlowcaseLockupView.ContentView.ArtworkView(0);
  v37 = v2 + v36[9];
  v38 = *v37;
  LODWORD(v37) = *(v37 + 8);
  v118 = v29;
  if (v37 != 1)
  {

    sub_21700ED94();
    v105 = v8;
    v39 = sub_217009C34();
    v106 = v2;
    v40 = v7;
    v41 = v39;
    sub_217007BC4();

    sub_2170090E4();
    swift_getAtKeyPath();
    sub_216684F5C(v38, 0);
    v104 = v30;
    v42 = *(v107 + 1);
    v107 = v20;
    v43 = v14;
    v44 = v108;
    v42(v11, v108);

    sub_21700ED94();
    v45 = sub_217009C34();
    v7 = v40;
    v2 = v106;
    sub_217007BC4();

    v8 = v105;
    sub_2170090E4();
    swift_getAtKeyPath();
    sub_216684F5C(v38, 0);
    v46 = v44;
    v14 = v43;
    v42(v11, v46);
    v30 = v104;
  }

  v47 = v113;
  sub_217007434();
  sub_216683A80(v2, v14, &qword_27CAB6D60, &qword_217014E40);
  v48 = __swift_getEnumTagSinglePayload(v14, 1, v30);
  v49 = v114;
  if (v48 == 1)
  {
    sub_2167FDB84(v14, &qword_27CAB6D60);
    __swift_storeEnumTagSinglePayload(v49, 1, 1, v7);
    sub_21700C404();
    if (__swift_getEnumTagSinglePayload(v49, 1, v7) != 1)
    {
      sub_2167FDB84(v49, &qword_27CAB7530);
    }
  }

  else
  {
    (*(v8 + 16))(v114, &v14[*(v30 + 20)], v7);
    sub_2169107A0(v14, type metadata accessor for Artwork);
    __swift_storeEnumTagSinglePayload(v49, 0, 1, v7);
    (*(v8 + 32))(v47, v49, v7);
  }

  v50 = v110;
  v51 = v124;
  sub_2170073E4();
  (*(v8 + 8))(v47, v7);
  v52 = *(v111 + 8);
  v53 = v112;
  v52(v51, v112);
  *(swift_allocObject() + 16) = xmmword_217016ED0;
  sub_2167C505C();
  sub_2170073F4();

  v52(v50, v53);
  v54 = sub_21700B374();
  v56 = v55;
  v57 = v117;
  v58 = &v117[*(v109 + 36)];
  v59 = v36[6];
  v60 = (v2 + v36[5]);
  v62 = *v60;
  v61 = v60[1];
  v63 = type metadata accessor for FlowcaseLockupView.ContentView.OverlayView(0);
  sub_216683A80(v2 + v59, &v58[v63[5]], &qword_27CAB6D60, &qword_217014E40);
  v64 = (v2 + v36[7]);
  v65 = *v64;
  v66 = v64[1];
  LOBYTE(v64) = *(v2 + v36[8]);
  *v58 = v62;
  *(v58 + 1) = v61;
  v67 = &v58[v63[6]];
  *v67 = v65;
  *(v67 + 1) = v66;
  v58[v63[7]] = v64;
  v126[0] = 100.0;
  sub_2167CD8D8();
  sub_21700DF14();
  sub_21700DF14();
  sub_2170082B4();
  v68 = &v58[v63[9]];
  *v68 = swift_getKeyPath();
  v68[8] = 0;
  v69 = &v58[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABC6A8, &qword_2170271C0) + 36)];
  *v69 = v54;
  v69[1] = v56;
  (*(v115 + 32))(v57, v125, v116);
  v70 = v121;
  v71 = *(v121 + 20);
  v72 = *MEMORY[0x277CE0118];
  v73 = sub_217009294();
  v74 = *(*(v73 - 8) + 104);
  v75 = v122;
  v74(&v122[v71], v72, v73);
  __asm { FMOV            V0.2D, #14.0 }

  v125 = _Q0;
  *v75 = _Q0;
  if (qword_280E2C2C8 != -1)
  {
    swift_once();
  }

  v81 = v118;
  sub_216E2F9E0();
  sub_2169107A0(v75, MEMORY[0x277CDFC08]);
  sub_2167FDB84(v57, &qword_27CABC698);
  if (qword_280E2C2D8 != -1)
  {
    swift_once();
  }

  v82 = xmmword_280E73AF0;
  v83 = qword_280E73B00;
  v84 = qword_280E73B08;
  v74(&v75[*(v70 + 20)], v72, v73);
  *v75 = v125;
  v85 = sub_21700B3B4();
  v87 = v86;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABC6B0, &qword_2170271C8);
  v89 = v123;
  v90 = v123 + *(v88 + 36);
  sub_216910410(v75, v90, MEMORY[0x277CDFC08]);
  v91 = v90 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB73B0, &unk_217016CE0) + 36);
  *v91 = v84;
  *(v91 + 8) = v83;
  *(v91 + 16) = v82;

  LOBYTE(v84) = sub_217009C84();
  sub_217007F24();
  v93 = v92;
  v95 = v94;
  v97 = v96;
  v99 = v98;
  v100 = v90 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB73B8, &unk_21701F5F0) + 36);
  *v100 = v84;
  *(v100 + 8) = v93;
  *(v100 + 16) = v95;
  *(v100 + 24) = v97;
  *(v100 + 32) = v99;
  *(v100 + 40) = 0;
  v101 = (v90 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9FF8, &qword_2170271D0) + 36));
  *v101 = v85;
  v101[1] = v87;
  (*(v119 + 32))(v89, v81, v120);
  return sub_2169107A0(v75, MEMORY[0x277CDFC08]);
}

void *sub_21690E0C4@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABC6B8, &qword_2170271D8);
  v4 = v3 - 8;
  MEMORY[0x28223BE20](v3);
  v6 = &__src[-v5];
  *v6 = sub_2170093C4();
  *(v6 + 1) = 0;
  v6[16] = 0;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABC6C0, &qword_2170271E0);
  sub_21690E22C(v1, &v6[*(v7 + 44)]);
  KeyPath = swift_getKeyPath();
  v9 = &v6[*(v4 + 44)];
  *v9 = KeyPath;
  v9[8] = 0;
  sub_21700B3C4();
  sub_217008BB4();
  sub_2167C5834(v6, a1, &qword_27CABC6B8, &qword_2170271D8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABC6C8, &qword_217027218);
  return memcpy((a1 + *(v10 + 36)), __src, 0x70uLL);
}

uint64_t sub_21690E22C@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v90 = a2;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABC6D0, &qword_217027220);
  v91 = *(v92 - 8);
  MEMORY[0x28223BE20](v92);
  v100 = &v78 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v99 = &v78 - v5;
  v105 = sub_21700D864();
  v104 = *(v105 - 8);
  MEMORY[0x28223BE20](v105);
  v7 = &v78 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = sub_21700D8E4();
  v8 = *(v106 - 8);
  MEMORY[0x28223BE20](v106);
  v10 = &v78 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABC6D8, &qword_217027228);
  v101 = *(v97 - 8);
  MEMORY[0x28223BE20](v97);
  v84 = &v78 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v78 - v13;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABC6E0, &qword_217027230);
  v88 = *(v89 - 8);
  MEMORY[0x28223BE20](v89);
  v87 = &v78 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v98 = &v78 - v17;
  MEMORY[0x28223BE20](v18);
  v103 = &v78 - v19;
  MEMORY[0x28223BE20](v20);
  v102 = &v78 - v21;
  v22 = a1[1];
  v86 = a1;
  if (v22)
  {
    v23 = *a1;
    v24 = v22;
  }

  else
  {
    v23 = 0;
    v24 = 0xE000000000000000;
  }

  v25 = qword_27CAB5A10;
  sub_21700DF14();
  if (v25 != -1)
  {
    swift_once();
  }

  v82 = v10;
  v107 = v8;
  v26 = qword_27CABC590;
  KeyPath = swift_getKeyPath();
  v28 = qword_27CAB5A28;

  if (v28 != -1)
  {
    swift_once();
  }

  *&__dst[0] = v23;
  *(&__dst[0] + 1) = v24;
  *&__dst[1] = 0;
  *(&__dst[1] + 1) = MEMORY[0x277D84F90];
  *&__dst[2] = KeyPath;
  *(&__dst[2] + 1) = v26;
  *&__dst[3] = qword_27CABC5A8;

  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABC6E8, &qword_217027268);
  v30 = sub_21691118C();
  sub_21700ABA4();

  v31 = *MEMORY[0x277D22068];
  v32 = v104;
  v33 = *(v104 + 104);
  v34 = v105;
  v94 = v104 + 104;
  v93 = v33;
  v33(v7, v31, v105);
  memset(__dst, 0, 32);
  memset(__src, 0, 32);
  v35 = v82;
  sub_21700D874();
  sub_2167FDB84(__src, &unk_27CABF7A0);
  sub_2167FDB84(__dst, &unk_27CABF7A0);
  v37 = *(v32 + 8);
  v36 = v32 + 8;
  v95 = v37;
  v37(v7, v34);
  v85 = v29;
  *&__dst[0] = v29;
  *(&__dst[0] + 1) = v30;
  v83 = v30;
  v38 = v35;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v40 = v97;
  v81 = OpaqueTypeConformance2;
  sub_21700A204();
  v41 = *(v107 + 8);
  v107 += 8;
  v96 = v41;
  v41(v35, v106);
  v42 = *(v101 + 8);
  v101 += 8;
  v80 = v42;
  v42(v14, v40);
  v43 = v86;
  if (v86[3])
  {
    v44 = v86[2];
    v45 = v86[3];
  }

  else
  {
    v44 = 0;
    v45 = 0xE000000000000000;
  }

  v104 = v36;
  v46 = qword_27CAB5A18;
  sub_21700DF14();
  if (v46 != -1)
  {
    swift_once();
  }

  v47 = qword_27CABC598;
  v48 = swift_getKeyPath();
  v49 = qword_27CAB5A30;

  if (v49 != -1)
  {
    swift_once();
  }

  *&__dst[0] = v44;
  *(&__dst[0] + 1) = v45;
  *&__dst[1] = 0;
  *(&__dst[1] + 1) = MEMORY[0x277D84F90];
  *&__dst[2] = v48;
  *(&__dst[2] + 1) = v47;
  *&__dst[3] = qword_27CABC5B0;
  v50 = v43[5];
  v79 = v43[4];

  v51 = v84;
  sub_21700ABA4();

  v52 = v105;
  v93(v7, *MEMORY[0x277D22050], v105);
  memset(__dst, 0, 32);
  memset(__src, 0, 32);
  sub_21700D874();
  sub_2167FDB84(__src, &unk_27CABF7A0);
  sub_2167FDB84(__dst, &unk_27CABF7A0);
  v95(v7, v52);
  v53 = v97;
  sub_21700A204();
  v96(v38, v106);
  v80(v51, v53);
  v54 = qword_27CAB5A20;
  sub_21700DF14();
  if (v54 != -1)
  {
    swift_once();
  }

  v55 = qword_27CABC5A0;
  v56 = swift_getKeyPath();
  v57 = qword_27CAB5A38;

  if (v57 != -1)
  {
    swift_once();
  }

  if (v50)
  {
    v58 = MEMORY[0x277D84F90];
  }

  else
  {
    v58 = 0;
  }

  if (v50)
  {
    v59 = v79;
  }

  else
  {
    v59 = 0;
  }

  v60 = qword_27CABC5B8;
  v61 = swift_getKeyPath();
  v111 = 0;
  *&__src[0] = v59;
  *(&__src[0] + 1) = v50;
  *&__src[1] = 0;
  *(&__src[1] + 1) = v58;
  *&__src[2] = v56;
  *(&__src[2] + 1) = v55;
  *&__src[3] = v60;
  *(&__src[3] + 1) = v61;
  *&__src[4] = 1;
  BYTE8(__src[4]) = 0;
  v62 = v105;
  v93(v7, *MEMORY[0x277D22070], v105);
  memset(__dst, 0, 32);
  memset(v108, 0, sizeof(v108));

  sub_21700D874();
  sub_2167FDB84(v108, &unk_27CABF7A0);
  sub_2167FDB84(__dst, &unk_27CABF7A0);
  v95(v7, v62);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABC6F8, &unk_2170272A0);
  sub_216911244();
  v63 = v99;
  sub_21700A204();
  v96(v38, v106);
  memcpy(__dst, __src, 0x49uLL);
  sub_2167FDB84(__dst, &qword_27CABC6F8);
  v64 = v88;
  v65 = *(v88 + 16);
  v66 = v98;
  v67 = v89;
  v65(v98, v102, v89);
  v68 = v87;
  v65(v87, v103, v67);
  v69 = v91;
  v107 = *(v91 + 16);
  v70 = v63;
  v71 = v92;
  (v107)(v100, v70, v92);
  v72 = v90;
  v65(v90, v66, v67);
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABC708, &unk_2170272B0);
  v65(&v72[*(v73 + 48)], v68, v67);
  v74 = v100;
  (v107)(&v72[*(v73 + 64)], v100, v71);
  v75 = *(v69 + 8);
  v75(v99, v71);
  v76 = *(v64 + 8);
  v76(v103, v67);
  v76(v102, v67);
  v75(v74, v71);
  v76(v68, v67);
  return (v76)(v98, v67);
}

uint64_t sub_21690EEE0@<X0>(uint64_t *a2@<X8>)
{
  *a2 = sub_21700B374();
  a2[1] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABC798, &qword_217027348);
  return sub_21690EF2C(v2, a2 + *(v5 + 44));
}

uint64_t sub_21690EF2C@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v35 = a2;
  v3 = type metadata accessor for FlowcaseLockupView.ContentView.OverlayView.OverlayContentView(0);
  MEMORY[0x28223BE20](v3);
  v37 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = (&v28 - v6);
  v8 = a1[1];
  v36 = *a1;
  v9 = v8;
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB95E8, &unk_217027360);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_217013D90;
    *(v10 + 32) = sub_21700ACD4();
    if (qword_27CAB5A48 != -1)
    {
      swift_once();
    }

    *(v10 + 40) = qword_27CABC5C8;

    MEMORY[0x21CE9C070](v10);
    sub_21700B544();
    sub_21700B554();
    sub_2170085D4();
    type metadata accessor for FlowcaseLockupView.ContentView.OverlayView(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7A40, &unk_217017FA0);
    sub_2170082C4();
    sub_21700B3A4();
    sub_2170083C4();
    v11 = v43[11];
    v12 = v43[12];
    v14 = v43[13];
    v13 = v43[14];
    v33 = v43[16];
    v34 = v43[15];
    v32 = v43[17];
    v40 = v43[19];
    v41 = v43[18];
    v38 = v43[21];
    v39 = v43[20];
  }

  else
  {
    v11 = 0;
    v12 = 0;
    v14 = 0;
    v13 = 0;
    v33 = 0;
    v34 = 0;
    v32 = 0;
    v40 = 0;
    v41 = 0;
    v38 = 0;
    v39 = 0;
  }

  v31 = v13;
  v15 = type metadata accessor for FlowcaseLockupView.ContentView.OverlayView(0);
  sub_216683A80(a1 + v15[5], v7 + v3[5], &qword_27CAB6D60, &qword_217014E40);
  v16 = v15[7];
  v17 = (a1 + v15[6]);
  v18 = *v17;
  v19 = v17[1];
  LOBYTE(v17) = *(a1 + v16);
  v20 = v37;
  *v7 = v36;
  v7[1] = v9;
  v21 = (v7 + v3[6]);
  *v21 = v18;
  v21[1] = v19;
  *(v7 + v3[7]) = v17;
  sub_216910410(v7, v20, type metadata accessor for FlowcaseLockupView.ContentView.OverlayView.OverlayContentView);
  v42[0] = v11;
  v42[1] = v12;
  v29 = v12;
  v30 = v14;
  v42[2] = v14;
  v42[3] = v13;
  v23 = v33;
  v22 = v34;
  v42[4] = v34;
  v42[5] = v33;
  v36 = v7;
  v24 = v32;
  v42[6] = v32;
  v42[7] = v41;
  v42[8] = v40;
  v42[9] = v39;
  v42[10] = v38;
  v25 = v35;
  memcpy(v35, v42, 0x58uLL);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABC7A0, &qword_217027350);
  sub_216910410(v20, v25 + *(v26 + 48), type metadata accessor for FlowcaseLockupView.ContentView.OverlayView.OverlayContentView);
  sub_21700DF14();
  sub_21700DF14();
  sub_216683A80(v42, v43, &qword_27CABC7A8, &qword_217027358);
  sub_2169107A0(v36, type metadata accessor for FlowcaseLockupView.ContentView.OverlayView.OverlayContentView);
  sub_2169107A0(v20, type metadata accessor for FlowcaseLockupView.ContentView.OverlayView.OverlayContentView);
  v43[0] = v11;
  v43[1] = v29;
  v43[2] = v30;
  v43[3] = v31;
  v43[4] = v22;
  v43[5] = v23;
  v43[6] = v24;
  v43[7] = v41;
  v43[8] = v40;
  v43[9] = v39;
  v43[10] = v38;
  return sub_2167FDB84(v43, &qword_27CABC7A8);
}

uint64_t sub_21690F2DC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABC7D0, &qword_2170273E0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &__src[-v5];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABC7D8, &qword_2170273E8);
  v8 = v7 - 8;
  MEMORY[0x28223BE20](v7);
  v10 = &__src[-v9];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABC7E0, &qword_2170273F0);
  v12 = v11 - 8;
  MEMORY[0x28223BE20](v11);
  v14 = &__src[-v13];
  *v6 = sub_217009194();
  *(v6 + 1) = 0;
  v6[16] = 1;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABC7E8, &qword_2170273F8);
  sub_21690F58C(v2, &v6[*(v15 + 44)]);
  sub_21700B3B4();
  sub_217008BB4();
  sub_2167C5834(v6, v10, &qword_27CABC7D0, &qword_2170273E0);
  memcpy(&v10[*(v8 + 44)], __src, 0x70uLL);
  LOBYTE(v6) = sub_217009C74();
  sub_217007F24();
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  sub_2167C5834(v10, v14, &qword_27CABC7D8, &qword_2170273E8);
  v24 = &v14[*(v12 + 44)];
  *v24 = v6;
  *(v24 + 1) = v17;
  *(v24 + 2) = v19;
  *(v24 + 3) = v21;
  *(v24 + 4) = v23;
  v24[40] = 0;
  LOBYTE(v6) = sub_217009CA4();
  sub_217007F24();
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  sub_2167C5834(v14, a1, &qword_27CABC7E0, &qword_2170273F0);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABC7F0, &qword_217027400);
  v34 = a1 + *(result + 36);
  *v34 = v6;
  *(v34 + 8) = v26;
  *(v34 + 16) = v28;
  *(v34 + 24) = v30;
  *(v34 + 32) = v32;
  *(v34 + 40) = 0;
  return result;
}

uint64_t sub_21690F58C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v44 = a2;
  v49 = type metadata accessor for FlowcaseLockupView.ContentView.OverlayView.OverlayContentView.CoverArtworkView(0);
  MEMORY[0x28223BE20](v49);
  v4 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60, &qword_217014E40);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v38 - v6;
  v8 = type metadata accessor for Artwork(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABC7F8, &qword_217027408);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v38 - v15;
  v17 = a1[1];
  if (v17)
  {
    v50 = *a1;
    v18 = qword_27CAB5A40;
    sub_21700DF14();
    if (v18 != -1)
    {
      swift_once();
    }

    v19 = qword_27CABC5C0;
    KeyPath = swift_getKeyPath();
    v48 = v19;

    v46 = sub_21700ACF4();
    v45 = swift_getKeyPath();
    v43 = swift_getKeyPath();
    v42 = swift_getKeyPath();
    LOBYTE(v52[0]) = 0;
    v20 = MEMORY[0x277D84F90];
    v41 = 2;
  }

  else
  {
    v50 = 0;
    v20 = 0;
    KeyPath = 0;
    v48 = 0;
    v45 = 0;
    v46 = 0;
    v43 = 0;
    v42 = 0;
    v41 = 0;
  }

  v21 = type metadata accessor for FlowcaseLockupView.ContentView.OverlayView.OverlayContentView(0);
  sub_216683A80(a1 + v21[5], v7, &qword_27CAB6D60, &qword_217014E40);
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    sub_2167FDB84(v7, &qword_27CAB6D60);
    __swift_storeEnumTagSinglePayload(v16, 1, 1, v49);
  }

  else
  {
    sub_21691046C(v7, v10, type metadata accessor for Artwork);
    sub_21691046C(v10, v4, type metadata accessor for Artwork);
    v22 = v21[7];
    v23 = (a1 + v21[6]);
    v24 = *v23;
    v25 = v23[1];
    LOBYTE(v23) = *(a1 + v22);
    v26 = v49;
    v27 = &v4[*(v49 + 20)];
    *v27 = v24;
    *(v27 + 1) = v25;
    v4[*(v26 + 24)] = v23;
    sub_21691046C(v4, v16, type metadata accessor for FlowcaseLockupView.ContentView.OverlayView.OverlayContentView.CoverArtworkView);
    __swift_storeEnumTagSinglePayload(v16, 0, 1, v26);
    sub_21700DF14();
  }

  sub_216683A80(v16, v13, &qword_27CABC7F8, &qword_217027408);
  __src[0] = v50;
  __src[1] = v17;
  __src[2] = 0;
  __src[3] = v20;
  v28 = KeyPath;
  __src[4] = KeyPath;
  v29 = v48;
  v49 = v20;
  v30 = v45;
  __src[5] = v48;
  __src[6] = v45;
  v39 = v16;
  v40 = v17;
  v31 = v46;
  v32 = v43;
  __src[7] = v46;
  __src[8] = v43;
  v33 = v42;
  __src[9] = 0;
  __src[10] = v42;
  v34 = v41;
  __src[11] = v41;
  LOBYTE(__src[12]) = 0;
  v35 = v44;
  memcpy(v44, __src, 0x61uLL);
  v35[13] = 0;
  *(v35 + 112) = 1;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABC800, &qword_217027410);
  sub_216683A80(v13, v35 + *(v36 + 64), &qword_27CABC7F8, &qword_217027408);
  sub_216683A80(__src, v52, &qword_27CABC808, &qword_217027418);
  sub_2167FDB84(v39, &qword_27CABC7F8);
  sub_2167FDB84(v13, &qword_27CABC7F8);
  v52[0] = v50;
  v52[1] = v40;
  v52[2] = 0;
  v52[3] = v49;
  v52[4] = v28;
  v52[5] = v29;
  v52[6] = v30;
  v52[7] = v31;
  v52[8] = v32;
  v52[9] = 0;
  v52[10] = v33;
  v52[11] = v34;
  v53 = 0;
  return sub_2167FDB84(v52, &qword_27CABC808);
}

uint64_t sub_21690FB00@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + *(type metadata accessor for FlowcaseLockupView.ContentView.OverlayView.OverlayContentView.CoverArtworkView(0) + 24));
  v4 = v3 > 0x16;
  v5 = (1 << v3) & 0x403040;
  if (v4 || v5 == 0)
  {
    v7 = 59.0;
  }

  else
  {
    v7 = 104.888889;
  }

  *a1 = sub_21700B384();
  a1[1] = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABC840, &qword_2170274B8);
  return sub_21690FBA8(v1, a1 + *(v9 + 44), v7, 59.0);
}

uint64_t sub_21690FBA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  v62 = a2;
  v5 = sub_21700C4B4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_217007474();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v60 - v14;
  v63 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABC848, &qword_2170274C0) - 8);
  MEMORY[0x28223BE20](v63);
  v61 = &v60 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v17);
  v20 = &v60 - v19;
  (*(v6 + 16))(v8, a1, v5, v18);
  sub_217007484();
  type metadata accessor for Artwork(0);
  sub_2170073E4();
  v21 = *(v10 + 8);
  v21(v12, v9);
  v60 = type metadata accessor for FlowcaseLockupView.ContentView.OverlayView.OverlayContentView.CoverArtworkView(0);
  LOBYTE(v65[0]) = *(a1 + *(v60 + 24));
  v22 = sub_216E41068(v65, 0);
  v24 = v23;
  v25 = swift_allocObject();
  *(v25 + 16) = v22;
  *(v25 + 24) = v24;
  sub_2167C505C();
  sub_2170073F4();

  v21(v15, v9);
  v26 = &v20[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABC850, &qword_2170274C8) + 36)];
  *v26 = 0;
  *(v26 + 4) = 257;
  v27 = &v20[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABC858, &qword_2170274D0) + 36)];
  v28 = *(sub_217008B44() + 20);
  v29 = *MEMORY[0x277CE0118];
  v30 = sub_217009294();
  (*(*(v30 - 8) + 104))(&v27[v28], v29, v30);
  __asm { FMOV            V0.2D, #5.0 }

  *v27 = _Q0;
  *&v27[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7438, &qword_21701A4C0) + 36)] = 256;
  sub_21700B3B4();
  sub_2170083C4();
  v36 = *(v63 + 11);
  v63 = v20;
  v37 = &v20[v36];
  v38 = v74;
  *v37 = v73;
  *(v37 + 1) = v38;
  *(v37 + 2) = v75;
  v39 = (a1 + *(v60 + 20));
  v40 = v39[1];
  if (v40)
  {
    v41 = *v39;
    v42 = MEMORY[0x277D84F90];
  }

  else
  {
    v41 = 0;
    v42 = 0;
  }

  sub_21700DF14();
  v43 = sub_217009E94();
  KeyPath = swift_getKeyPath();
  v60 = sub_21700ACF4();
  v45 = sub_217009CD4();
  v46 = sub_217009CC4();
  sub_217009CC4();
  if (sub_217009CC4() != v45)
  {
    v46 = sub_217009CC4();
  }

  sub_217007F24();
  v48 = v47;
  v50 = v49;
  v52 = v51;
  v54 = v53;
  v72 = 0;
  v55 = v61;
  sub_216710680(v63, v61);
  v56 = v62;
  sub_216710680(v55, v62);
  v57 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABC860, &qword_2170274D8) + 48);
  v64[0] = v41;
  v64[1] = v40;
  v64[2] = 0;
  v64[3] = v42;
  v64[4] = KeyPath;
  v64[5] = v43;
  v58 = v60;
  v64[6] = v60;
  LOBYTE(v64[7]) = v46;
  v64[8] = v48;
  v64[9] = v50;
  v64[10] = v52;
  v64[11] = v54;
  LOBYTE(v64[12]) = 0;
  memcpy((v56 + v57), v64, 0x61uLL);
  sub_216683A80(v64, v65, &qword_27CABC868, &qword_2170274E0);
  sub_2167FDB84(v63, &qword_27CABC848);
  v65[0] = v41;
  v65[1] = v40;
  v65[2] = 0;
  v65[3] = v42;
  v65[4] = KeyPath;
  v65[5] = v43;
  v65[6] = v58;
  v66 = v46;
  v67 = v48;
  v68 = v50;
  v69 = v52;
  v70 = v54;
  v71 = 0;
  sub_2167FDB84(v65, &qword_27CABC868);
  return sub_2167FDB84(v55, &qword_27CABC848);
}

uint64_t sub_216910140@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  *a2 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0, &qword_217018AF0);
  swift_storeEnumTagMultiPayload();
  v4 = type metadata accessor for FlowcaseLockupView(0);
  v5 = a2 + *(v4 + 20);
  result = swift_getKeyPath();
  *v5 = result;
  v5[40] = 0;
  *(a2 + *(v4 + 24)) = a1;
  return result;
}

uint64_t sub_216910230(uint64_t a1)
{
  result = sub_2166D4620(qword_280E3EF78, type metadata accessor for FlowcaseLockupView, &unk_217026E70);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216910288()
{
  sub_217009E84();
  sub_217009DE4();
  v0 = sub_217009E34();

  qword_27CABC590 = v0;
  return result;
}

uint64_t sub_2169102CC(uint64_t a1)
{
  result = sub_217009E24();
  qword_27CABC598 = result;
  return result;
}

uint64_t sub_2169102EC(uint64_t a1)
{
  result = sub_217009E24();
  qword_27CABC5A0 = result;
  return result;
}

uint64_t sub_21691030C(uint64_t a1)
{
  result = sub_21700AD34();
  qword_27CABC5A8 = result;
  return result;
}

uint64_t sub_21691032C(uint64_t a1)
{
  result = sub_21700AD14();
  qword_27CABC5B0 = result;
  return result;
}

uint64_t sub_21691034C(uint64_t a1)
{
  result = sub_21700AD34();
  qword_27CABC5B8 = result;
  return result;
}

uint64_t sub_21691036C(uint64_t a1)
{
  result = sub_217009E94();
  qword_27CABC5C0 = result;
  return result;
}

uint64_t sub_21691038C(uint64_t a1)
{
  sub_21700ACC4();
  v1 = sub_21700AD04();

  qword_27CABC5C8 = v1;
  return result;
}

uint64_t sub_216910410(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_34();
  v4 = OUTLINED_FUNCTION_8();
  v5(v4);
  return a2;
}

uint64_t sub_21691046C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_34();
  v4 = OUTLINED_FUNCTION_8();
  v5(v4);
  return a2;
}

uint64_t sub_2169104C8()
{
  v0 = type metadata accessor for FlowcaseLockupView(0);
  OUTLINED_FUNCTION_36(v0);
  OUTLINED_FUNCTION_31_3(*(v1 + 80));

  return sub_21690C488();
}

unint64_t sub_21691051C()
{
  result = qword_27CABC610;
  if (!qword_27CABC610)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABC5F0, &qword_217026F78);
    sub_216910600(&qword_27CABC618, &qword_27CABC5E8, &qword_217026F70, sub_216910680);
    sub_21669E098(&qword_280E2A810, &qword_27CAB8A90, &qword_21701ADD0, MEMORY[0x277CE07A8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABC610);
  }

  return result;
}

uint64_t sub_216910600(unint64_t *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    v7 = OUTLINED_FUNCTION_100(0, a2);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v7, v8);
    a4();
    sub_2167B8C60();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_216910680()
{
  result = qword_27CABC620;
  if (!qword_27CABC620)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABC5E0, &qword_217026F68);
    sub_2166D4620(&qword_27CABC628, type metadata accessor for FlowcaseLockupView.ContentView, &unk_217027048);
    sub_2167B8760();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABC620);
  }

  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1Tm(uint64_t *a1)
{
  OUTLINED_FUNCTION_17();
  if ((*(v2 + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v3;
  }

  return a1;
}

uint64_t sub_2169107A0(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_9_0();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_21691081C(uint64_t a1)
{
  sub_2169109EC(319, &qword_280E2A2A8, &qword_27CAB6D68, &qword_2170153A0, MEMORY[0x277D83D88]);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    sub_2166DAA70(319, &qword_280E2A070, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    v2 = v4;
    if (v5 <= 0x3F)
    {
      sub_2169110D0(319, &qword_280E2BF20, type metadata accessor for Artwork, MEMORY[0x277D83D88]);
      if (v7 > 0x3F)
      {
        return v6;
      }

      else
      {
        sub_2166DAA70(319, &qword_280E452C8, &type metadata for ContentKind, MEMORY[0x277D83D88]);
        v2 = v8;
        if (v9 <= 0x3F)
        {
          sub_2166DAA70(319, &qword_280E2B480, MEMORY[0x277D85048], MEMORY[0x277CDF468]);
          v2 = v10;
          if (v11 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
            return 0;
          }
        }
      }
    }
  }

  return v2;
}

void sub_2169109EC(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
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

unint64_t sub_216910A50()
{
  result = qword_27CABC648;
  if (!qword_27CABC648)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABC630, &unk_217026FF0);
    sub_216910ADC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABC648);
  }

  return result;
}

unint64_t sub_216910ADC()
{
  result = qword_27CABC650;
  if (!qword_27CABC650)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABC608, &qword_217026F90);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABC5D8, &unk_217026F58);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABC5D0, &qword_217026F50);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABC5F8, &qword_217026F80);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABA000, &unk_21701F600);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABC5F0, &qword_217026F78);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB8AA0, &qword_21701ADE0);
    type metadata accessor for ContextMenuPreview(255);
    sub_21691051C();
    sub_21669E098(qword_280E2BAE8, &qword_27CAB8AA0, &qword_21701ADE0, &unk_217037028);
    sub_2166D4620(qword_280E3F158, type metadata accessor for ContextMenuPreview, &unk_217017238);
    swift_getOpaqueTypeConformance2();
    sub_21686AF54();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_21669E098(&qword_280E2A700, &qword_27CAB7388, &qword_21701B6A0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABC650);
  }

  return result;
}

uint64_t sub_216910D7C@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for FlowcaseLockupView.ContentView(0);
  OUTLINED_FUNCTION_36(v2);
  v4 = OUTLINED_FUNCTION_31_3(*(v3 + 80));

  return sub_21690D050(v4, a1);
}

uint64_t sub_216910E48(uint64_t a1)
{
  sub_2169110D0(319, &qword_280E2BF20, type metadata accessor for Artwork, MEMORY[0x277D83D88]);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    sub_2166DAA70(319, &qword_280E2A070, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    if (v5 > 0x3F)
    {
      return v4;
    }

    else
    {
      sub_2166DAA70(319, &qword_280E452C8, &type metadata for ContentKind, MEMORY[0x277D83D88]);
      v2 = v6;
      if (v7 <= 0x3F)
      {
        sub_2166DAA70(319, &qword_280E2B480, MEMORY[0x277D85048], MEMORY[0x277CDF468]);
        v2 = v8;
        if (v9 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return v2;
}

void sub_216910FE4(uint64_t a1)
{
  sub_2166DAA70(319, &qword_280E2A070, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_2169110D0(319, &qword_280E2B450, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2169110D0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_21691118C()
{
  result = qword_27CABC6F0;
  if (!qword_27CABC6F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABC6E8, &qword_217027268);
    sub_2167C4CBC();
    sub_21669E098(&qword_280E2A828, &qword_27CABA400, &qword_217020410, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABC6F0);
  }

  return result;
}

unint64_t sub_216911244()
{
  result = qword_27CABC700;
  if (!qword_27CABC700)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABC6F8, &unk_2170272A0);
    sub_21691118C();
    sub_21669E098(&qword_280E2A6F8, &qword_27CAB7638, &unk_217017490, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABC700);
  }

  return result;
}

uint64_t sub_216911324(uint64_t a1)
{
  sub_2166DAA70(319, &qword_280E2A070, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    sub_2169110D0(319, &qword_280E2BF20, type metadata accessor for Artwork, MEMORY[0x277D83D88]);
    if (v5 > 0x3F)
    {
      return v4;
    }

    else
    {
      sub_2166DAA70(319, &qword_280E452C8, &type metadata for ContentKind, MEMORY[0x277D83D88]);
      v2 = v6;
      if (v7 <= 0x3F)
      {
        sub_2167D1C30(319);
        v2 = v8;
        if (v9 <= 0x3F)
        {
          sub_2166DAA70(319, &qword_280E2B480, MEMORY[0x277D85048], MEMORY[0x277CDF468]);
          v2 = v10;
          if (v11 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
            return 0;
          }
        }
      }
    }
  }

  return v2;
}

unint64_t sub_2169114AC()
{
  result = qword_27CABC720;
  if (!qword_27CABC720)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABC6B0, &qword_2170271C8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABC728, &unk_2170272D0);
    sub_2169115A0();
    swift_getOpaqueTypeConformance2();
    sub_21669E098(&qword_280E2AC00, &qword_27CAB9FF8, &qword_2170271D0, MEMORY[0x277CE0328]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABC720);
  }

  return result;
}

unint64_t sub_2169115A0()
{
  result = qword_27CABC730;
  if (!qword_27CABC730)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABC728, &unk_2170272D0);
    sub_216911658();
    sub_21669E098(&qword_280E2A808, &qword_27CAB72E8, &unk_21701F5E0, MEMORY[0x277CE07A8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABC730);
  }

  return result;
}

unint64_t sub_216911658()
{
  result = qword_27CABC738;
  if (!qword_27CABC738)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABC740, &unk_2170650B0);
    sub_216911710();
    sub_21669E098(qword_280E382B8, &qword_27CAB7440, &unk_217016D40, &unk_21705A1D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABC738);
  }

  return result;
}

unint64_t sub_216911710()
{
  result = qword_27CABC748;
  if (!qword_27CABC748)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABC750, &qword_2170272E0);
    sub_21691179C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABC748);
  }

  return result;
}

unint64_t sub_21691179C()
{
  result = qword_27CABC758;
  if (!qword_27CABC758)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABC760, &unk_2170650A0);
    sub_216911854();
    sub_21669E098(&qword_280E2B390, &qword_27CAB7438, &qword_21701A4C0, MEMORY[0x277CDF4F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABC758);
  }

  return result;
}

unint64_t sub_216911854()
{
  result = qword_27CABC768;
  if (!qword_27CABC768)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABC698, &qword_2170271B0);
    sub_2167C505C();
    swift_getOpaqueTypeConformance2();
    sub_21669E098(&qword_27CABC770, &qword_27CABC6A8, &qword_2170271C0, MEMORY[0x277CDFC88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABC768);
  }

  return result;
}

unint64_t sub_216911938()
{
  result = qword_27CABC778;
  if (!qword_27CABC778)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABC6C8, &qword_217027218);
    sub_2169119C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABC778);
  }

  return result;
}

unint64_t sub_2169119C4()
{
  result = qword_27CABC780;
  if (!qword_27CABC780)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABC6B8, &qword_2170271D8);
    sub_21669E098(&qword_27CABC788, &unk_27CABC790, &unk_2170272E8, MEMORY[0x277CE1198]);
    sub_21669E098(&qword_280E2A730, &qword_27CAB8688, qword_2170272F0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABC780);
  }

  return result;
}

uint64_t sub_216911B0C(uint64_t a1)
{
  sub_2166DAA70(319, &qword_280E2A070, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    sub_2169110D0(319, &qword_280E2BF20, type metadata accessor for Artwork, MEMORY[0x277D83D88]);
    if (v5 > 0x3F)
    {
      return v4;
    }

    else
    {
      sub_2166DAA70(319, &qword_280E452C8, &type metadata for ContentKind, MEMORY[0x277D83D88]);
      v2 = v6;
      if (v7 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return v2;
}

void sub_216911C9C(uint64_t a1)
{
  type metadata accessor for Artwork(319);
  if (v1 <= 0x3F)
  {
    sub_2166DAA70(319, &qword_280E2A070, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_2166DAA70(319, &qword_280E452C8, &type metadata for ContentKind, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_216911D80()
{
  result = qword_27CABC820;
  if (!qword_27CABC820)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABC7F0, &qword_217027400);
    sub_216911E0C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABC820);
  }

  return result;
}

unint64_t sub_216911E0C()
{
  result = qword_27CABC828;
  if (!qword_27CABC828)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABC7E0, &qword_2170273F0);
    sub_216911E98();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABC828);
  }

  return result;
}

unint64_t sub_216911E98()
{
  result = qword_27CABC830;
  if (!qword_27CABC830)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABC7D8, &qword_2170273E8);
    sub_21669E098(&qword_27CABC838, &qword_27CABC7D0, &qword_2170273E0, MEMORY[0x277CE1138]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABC830);
  }

  return result;
}

id sub_216911F6C()
{
  result = [objc_allocWithZone(type metadata accessor for MonogramArtworkDataSource()) init];
  qword_280E73C20 = result;
  return result;
}

void sub_216911FB4(void *a1, void *a2, void (**a3)(void, void, void))
{
  v6 = sub_21700B5A4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_21700B5E4();
  v32 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = swift_allocObject();
  *(v13 + 16) = a3;
  _Block_copy(a3);
  v14 = [a1 token];
  sub_21700F1E4();
  swift_unknownObjectRelease();
  type metadata accessor for MonogramArtworkToken();
  if (!swift_dynamicCast())
  {
    goto LABEL_7;
  }

  v31 = v10;
  v15 = v34;
  v16 = [a1 visualIdenticalityIdentifier];
  if (!v16)
  {

LABEL_7:
    a3[2](a3, 0, 0);
    goto LABEL_8;
  }

  v17 = v16;
  v29 = v7;
  v30 = v6;
  [a1 fittingSize];
  v19 = v18;
  v21 = v20;
  if (qword_280E354B8 != -1)
  {
    swift_once();
  }

  v28 = qword_280E354C0;
  v22 = swift_allocObject();
  v22[2] = a2;
  v22[3] = v15;
  v22[4] = v19;
  v22[5] = v21;
  v22[6] = v17;
  v22[7] = sub_2169131C8;
  v22[8] = v13;
  aBlock[4] = sub_2169131D0;
  aBlock[5] = v22;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2169F0990;
  aBlock[3] = &block_descriptor_6;
  v23 = _Block_copy(aBlock);
  v24 = a2;
  v27 = v15;
  swift_unknownObjectRetain();

  sub_21700B5C4();
  v34 = MEMORY[0x277D84F90];
  sub_2169131EC(&qword_280E2A480, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABC970, &unk_2170187C0);
  sub_216913234(&qword_280E29E50, &unk_27CABC970, &unk_2170187C0);
  v25 = v30;
  sub_21700F214();
  MEMORY[0x21CE9FCB0](0, v12, v9, v23);
  _Block_release(v23);

  swift_unknownObjectRelease();
  (*(v29 + 8))(v9, v25);
  (*(v32 + 8))(v12, v31);

LABEL_8:

  _Block_release(a3);
}

uint64_t sub_2169123F4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(id, void), uint64_t a5, double a6, double a7)
{
  swift_unknownObjectRetain();

  return sub_216912488(a2, a6, a7, a6, a7, a1, a3, a4);
}

uint64_t sub_216912488(uint64_t a1, double a2, double a3, double a4, double a5, uint64_t a6, uint64_t a7, void (*a8)(id, void))
{
  if (a3 >= a2)
  {
    v13 = a2;
  }

  else
  {
    v13 = a3;
  }

  v14 = 26.0;
  v15 = CGFAbs(26.0 - v13);
  if (v15 >= 1.79769313e308)
  {
    v14 = 0.0;
  }

  v16 = fmin(v15, 1.79769313e308);
  v17 = CGFAbs(32.0 - v13);
  if (v17 < v16)
  {
    v14 = 32.0;
    v16 = v17;
  }

  v18 = CGFAbs(40.0 - v13);
  if (v18 < v16)
  {
    v14 = 40.0;
    v16 = v18;
  }

  v19 = CGFAbs(42.0 - v13);
  if (v19 < v16)
  {
    v14 = 42.0;
    v16 = v19;
  }

  v20 = CGFAbs(45.0 - v13);
  if (v20 < v16)
  {
    v14 = 45.0;
    v16 = v20;
  }

  v21 = CGFAbs(57.0 - v13);
  if (v21 < v16)
  {
    v14 = 57.0;
    v16 = v21;
  }

  v22 = CGFAbs(60.0 - v13);
  if (v22 < v16)
  {
    v14 = 60.0;
    v16 = v22;
  }

  v23 = CGFAbs(76.0 - v13);
  if (v23 < v16)
  {
    v14 = 76.0;
    v16 = v23;
  }

  v24 = CGFAbs(89.0 - v13);
  if (v24 < v16)
  {
    v14 = 89.0;
    v16 = v24;
  }

  v25 = CGFAbs(92.0 - v13);
  if (v25 < v16)
  {
    v14 = 92.0;
    v16 = v25;
  }

  v26 = CGFAbs(96.0 - v13);
  if (v26 < v16)
  {
    v14 = 96.0;
    v16 = v26;
  }

  v27 = CGFAbs(120.0 - v13);
  if (v27 < v16)
  {
    v14 = 120.0;
    v16 = v27;
  }

  v28 = CGFAbs(180.0 - v13);
  if (v28 < v16)
  {
    v14 = 180.0;
    v16 = v28;
  }

  if (CGFAbs(256.0 - v13) >= v16)
  {
    v29 = v14;
  }

  else
  {
    v29 = 256.0;
  }

  if (*(a1 + OBJC_IVAR____TtC7MusicUI20MonogramArtworkToken_imageType))
  {
    v30 = sub_216912EAC(v29);

    v31 = [objc_opt_self() representationForVisualIdentity:a7 withSize:v30 image:{a4, a5}];
    v32 = v31;
    a8(v31, 0);
    swift_unknownObjectRelease();
  }

  else
  {
    v33 = a1 + OBJC_IVAR____TtC7MusicUI20MonogramArtworkToken_fullName;
    v34 = *(a1 + OBJC_IVAR____TtC7MusicUI20MonogramArtworkToken_fullName);
    v35 = *(v33 + 8);
    sub_216685F4C(0, &qword_280E29B00, 0x277CBDA58);
    sub_21700DF14();
    v36 = sub_216912F80(v34, v35, 0, 0);
    v37 = [objc_opt_self() mainScreen];
    [v37 scale];
    v39 = v38;

    v40 = [objc_opt_self() scopeWithPointSize:0 scale:0 rightToLeft:v29 style:{v29, v39}];
    v41 = sub_216912BA0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC2EE0, &unk_217023900);
    v42 = swift_allocObject();
    *(v42 + 16) = xmmword_21701D820;
    *(v42 + 32) = v36;
    v43 = v36;
    v44 = sub_21700E804();

    v45 = [v41 avatarImageForContacts:v44 scope:v40];

    v46 = objc_opt_self();
    v30 = v45;
    v47 = [v46 representationForVisualIdentity:a7 withSize:v30 image:{a4, a5}];
    v32 = v47;
    a8(v47, 0);
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
  }
}

void sub_2169129D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_217005D24();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1);
}

id sub_216912A40()
{
  result = *(v0 + OBJC_IVAR____TtC7MusicUI25MonogramArtworkDataSource_rendererToken);
  if (result)
  {
    return [result cancel];
  }

  return result;
}

uint64_t sub_216912AC0(void *a1)
{
  v1 = [a1 token];
  sub_21700F1E4();
  swift_unknownObjectRelease();
  type metadata accessor for MonogramArtworkToken();
  if (swift_dynamicCast())
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

id sub_216912BA0()
{
  v1 = OBJC_IVAR____TtC7MusicUI25MonogramArtworkDataSource____lazy_storage___monogramRenderer;
  v2 = *(v0 + OBJC_IVAR____TtC7MusicUI25MonogramArtworkDataSource____lazy_storage___monogramRenderer);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC7MusicUI25MonogramArtworkDataSource____lazy_storage___monogramRenderer);
  }

  else
  {
    v4 = [objc_opt_self() defaultSettings];
    v5 = [objc_allocWithZone(MEMORY[0x277CBDBD0]) initWithSettings_];

    v6 = *(v0 + v1);
    *(v0 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

uint64_t sub_216912C4C()
{
  v7 = sub_21700EE74();
  v0 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v2 = v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_21700EE44();
  MEMORY[0x28223BE20](v3);
  v4 = sub_21700B5E4();
  MEMORY[0x28223BE20](v4 - 8);
  v6[1] = sub_216685F4C(0, &qword_280E29CD0, 0x277D85C78);
  sub_21700B5C4();
  v8 = MEMORY[0x277D84F90];
  sub_2169131EC(&qword_280E29CE0, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA810, &unk_217027550);
  sub_216913234(&qword_280E29E10, &qword_27CABA810, &unk_217027550);
  sub_21700F214();
  (*(v0 + 104))(v2, *MEMORY[0x277D85260], v7);
  result = sub_21700EEA4();
  qword_280E354C0 = result;
  return result;
}

id sub_216912EAC(double a1)
{
  v2 = v1;
  sub_216685F4C(0, qword_27CABC980, 0x277CCACA8);
  strcpy(v7, "placeHolder+");
  BYTE5(v7[1]) = 0;
  HIWORD(v7[1]) = -5120;
  v3 = sub_21700EB64();
  MEMORY[0x21CE9F490](v3);

  v4 = sub_2169130B0(v7[0], v7[1]);
  v5 = [*(v2 + OBJC_IVAR____TtC7MusicUI25MonogramArtworkDataSource_cache) objectForKey_];

  return v5;
}

id sub_216912F80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a2)
  {
    v5 = 0;
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v6 = 0;
    goto LABEL_6;
  }

  v5 = sub_21700E4D4();

  if (!a4)
  {
    goto LABEL_5;
  }

LABEL_3:
  v6 = sub_21700E4D4();

LABEL_6:
  v7 = [swift_getObjCClassFromMetadata() contactWithDisplayName:v5 emailOrPhoneNumber:v6];

  return v7;
}

id sub_21691302C()
{
  ObjectType = swift_getObjectType();
  *&v0[OBJC_IVAR____TtC7MusicUI25MonogramArtworkDataSource____lazy_storage___monogramRenderer] = 0;
  *&v0[OBJC_IVAR____TtC7MusicUI25MonogramArtworkDataSource_rendererToken] = 0;
  v2 = OBJC_IVAR____TtC7MusicUI25MonogramArtworkDataSource_cache;
  *&v0[v2] = [objc_allocWithZone(MEMORY[0x277CBEA78]) init];
  v4.receiver = v0;
  v4.super_class = ObjectType;
  return objc_msgSendSuper2(&v4, sel_init);
}

id sub_2169130B0(uint64_t a1, uint64_t a2)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_21700E4D4();

  v4 = [v2 initWithString_];

  return v4;
}

uint64_t sub_2169131EC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_216913234(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t type metadata accessor for ConnectSingDevicesAction(uint64_t a1)
{
  result = qword_280E36BE0;
  if (!qword_280E36BE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2169132FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_216913350()
{
  OUTLINED_FUNCTION_33();
  v0[17] = v1;
  v0[18] = v2;
  v0[15] = v3;
  v0[16] = v4;
  v0[13] = v5;
  v0[14] = v6;
  type metadata accessor for PlaybackItemsPresenter.PlaybackItems(0);
  v0[19] = swift_task_alloc();
  v0[20] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6BE8, &unk_2170142F0);
  v0[21] = swift_task_alloc();
  v7 = sub_217006A94();
  v0[22] = v7;
  v0[23] = *(v7 - 8);
  v0[24] = swift_task_alloc();
  sub_21700EA34();
  v0[25] = sub_21700EA24();
  v9 = sub_21700E9B4();
  v0[26] = v9;
  v0[27] = v8;

  return MEMORY[0x2822009F8](sub_2169134B0, v9, v8);
}

uint64_t sub_2169134B0()
{
  OUTLINED_FUNCTION_33();
  v1 = sub_216A59B6C();
  v0[28] = v1;
  v2 = swift_task_alloc();
  v0[29] = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAD0, &unk_217013D80);
  *v2 = v0;
  v2[1] = sub_216913578;
  v8 = v0[20];
  v7 = v0[21];
  v9 = MEMORY[0x277D84950];

  return MEMORY[0x282200430](v7, v1, v8, v3, v9, v4, v5, v6);
}

uint64_t sub_216913578()
{
  v2 = *v1;
  OUTLINED_FUNCTION_11();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 240) = v0;

  v5 = *(v2 + 216);
  v6 = *(v2 + 208);
  if (v0)
  {
    v7 = sub_216913B88;
  }

  else
  {
    v7 = sub_2169136C8;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_2169136C8()
{
  v2 = *(v0 + 168);
  v1 = *(v0 + 176);
  if (__swift_getEnumTagSinglePayload(v2, 1, v1) == 1)
  {
    v4 = *(v0 + 136);
    v3 = *(v0 + 144);

    sub_216913EB0(v2);
    type metadata accessor for DeepLinkPlayActionImplementation.Error(0, v4, v3, v5);
    swift_getWitnessTable();
    swift_allocError();
    swift_willThrow();
LABEL_6:

    OUTLINED_FUNCTION_3();

    return v15();
  }

  v6 = *(v0 + 240);
  v7 = *(v0 + 192);
  v9 = *(v0 + 144);
  v8 = *(v0 + 152);
  v10 = *(v0 + 136);
  v11 = *(v0 + 112);
  (*(*(v0 + 184) + 32))(v7, v2, v1);
  sub_216C95860(v11, v7, v10, v9, v8);
  if (v6)
  {
    (*(*(v0 + 184) + 8))(*(v0 + 192), *(v0 + 176));

    goto LABEL_6;
  }

  v12 = *(v0 + 144);
  v13 = *(v0 + 152);
  v14 = *(v0 + 136);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A30, &unk_217013D70);
  type metadata accessor for ObjectGraph(0);
  sub_21700E094();
  sub_216EAA8A0(v13, (v0 + 16), v14, v12, (v0 + 56));
  v17 = *(v0 + 136);
  v18 = *(v0 + 144);
  v19 = swift_task_alloc();
  *(v0 + 248) = v19;
  type metadata accessor for DeepLinkPlayActionImplementation(0, v17, v18, v20);
  swift_getWitnessTable();
  *v19 = v0;
  v19[1] = sub_2169139BC;

  return sub_216B6DB60();
}

uint64_t sub_2169139BC()
{
  OUTLINED_FUNCTION_33();
  v2 = *v1;
  OUTLINED_FUNCTION_11();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_11();
  *v5 = v4;
  v2[32] = v0;

  v6 = v2[26];
  v7 = v2[27];
  if (v0)
  {
    v8 = sub_216913C10;
  }

  else
  {
    v8 = sub_216913AC4;
  }

  return MEMORY[0x2822009F8](v8, v6, v7);
}

uint64_t sub_216913AC4()
{
  v1 = v0[24];
  v2 = v0[22];
  v3 = v0[23];
  v4 = v0[19];

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  sub_216913F30(v4);
  (*(v3 + 8))(v1, v2);

  OUTLINED_FUNCTION_3();

  return v5();
}

uint64_t sub_216913B88()
{

  OUTLINED_FUNCTION_3();

  return v0();
}

uint64_t sub_216913C10()
{
  v1 = v0[24];
  v2 = v0[22];
  v3 = v0[23];
  v4 = v0[19];

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  sub_216913F30(v4);
  (*(v3 + 8))(v1, v2);

  OUTLINED_FUNCTION_3();

  return v5();
}

uint64_t sub_216913CF0(uint64_t a1)
{
  sub_21700F8F4();
  sub_216775848();
  return sub_21700F944();
}

uint64_t sub_216913D34()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2167EE3B8;

  return sub_216913350();
}

uint64_t sub_216913DFC(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216913E44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return sub_216ED7B54(a1, a2, a3, WitnessTable);
}

uint64_t sub_216913EB0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6BE8, &unk_2170142F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_216913F30(uint64_t a1)
{
  v2 = type metadata accessor for PlaybackItemsPresenter.PlaybackItems(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

_BYTE *sub_216913F8C(_BYTE *result, int a2, int a3)
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

uint64_t sub_216914044(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = sub_217005EF4();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_216914104, 0, 0);
}

uint64_t sub_216914104()
{
  v28 = v0;
  v1 = v0[4];
  v2 = *(v1 + 24);
  v3 = *(v2 + 16);

  os_unfair_lock_lock(v3);
  v4 = *(v1 + 32);
  v5 = *(v2 + 16);
  v6 = v4;
  os_unfair_lock_unlock(v5);

  if (v4)
  {
    v7 = [v6 verificationURL];
    if (v7)
    {
      v8 = v7;
      v10 = v0[6];
      v9 = v0[7];
      v11 = v0[5];
      v12 = v0[3];
      sub_217005E64();

      sub_2169143A0(v9, v12);
      (*(v10 + 8))(v9, v11);
      goto LABEL_10;
    }
  }

  if (qword_280E397E0 != -1)
  {
    swift_once();
  }

  v13 = sub_217007CA4();
  __swift_project_value_buffer(v13, qword_280E397E8);

  v14 = sub_217007C84();
  v15 = sub_21700ED84();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v27 = v17;
    *v16 = 136446210;
    v18 = *(v2 + 16);

    os_unfair_lock_lock(v18);
    v19 = *(v1 + 32);
    v20 = *(v2 + 16);
    v21 = v19;
    os_unfair_lock_unlock(v20);

    v0[2] = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9DA8, &qword_21701ED30);
    v22 = sub_21700E594();
    v24 = sub_2166A85FC(v22, v23, &v27);

    *(v16 + 4) = v24;
    _os_log_impl(&dword_216679000, v14, v15, "Age verification required but no age verification URL was found: %{public}s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v17);
    MEMORY[0x21CEA1440](v17, -1, -1);
    MEMORY[0x21CEA1440](v16, -1, -1);
  }

LABEL_10:

  v25 = v0[1];

  return v25();
}

uint64_t sub_2169143A0(uint64_t a1, uint64_t a2)
{
  v28 = a2;
  v26 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABD770, &unk_217015610);
  v30 = *(v2 - 8);
  v31 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v25 - v3;
  v5 = sub_21700DA84();
  v27 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v25 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAE0, &unk_217015630);
  v29 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v25 - v8;
  v10 = sub_217005EF4();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for OpenFinancePageAction(0);
  MEMORY[0x28223BE20](v14);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21700D234();
  (*(v11 + 16))(v13, v26, v10);
  v17 = &v16[v14[5]];
  *v17 = 0xD000000000000015;
  *(v17 + 1) = 0x80000002170844F0;
  (*(v11 + 32))(&v16[v14[6]], v13, v10);
  type metadata accessor for OpenFinancePageAction.Kind(0);
  swift_storeEnumTagMultiPayload();
  *&v16[v14[7]] = 0;
  *&v16[v14[8]] = 0;
  v16[v14[9]] = 0;
  type metadata accessor for ObjectGraph(0);
  sub_21700E094();
  v18 = v25;
  sub_21700E094();
  v32[3] = v14;
  v32[4] = sub_21691493C();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v32);
  sub_216914994(v16, boxed_opaque_existential_1);
  v20 = v27;
  v21 = v18;
  (*(v27 + 16))(v4, v18, v5);
  v23 = v30;
  v22 = v31;
  (*(v30 + 104))(v4, *MEMORY[0x277D21E10], v31);
  sub_21700D5E4();

  (*(v23 + 8))(v4, v22);
  (*(v20 + 8))(v21, v5);
  (*(v29 + 8))(v9, v7);
  sub_2169149F8(v16);
  return __swift_destroy_boxed_opaque_existential_1Tm(v32);
}

uint64_t sub_2169147FC()
{
  v1 = *(v0 + 24);
  v2 = *(v1 + 16);

  os_unfair_lock_lock(v2);
  v3 = [objc_opt_self() defaultManager];
  v4 = [v3 ageVerificationState];

  sub_2166AD874(v4);
  os_unfair_lock_unlock(*(v1 + 16));
}

uint64_t sub_2169148D8()
{

  return v0;
}

uint64_t sub_216914908()
{
  sub_2169148D8();

  return MEMORY[0x2821FE8D8](v0);
}

unint64_t sub_21691493C()
{
  result = qword_280E3A550[0];
  if (!qword_280E3A550[0])
  {
    type metadata accessor for OpenFinancePageAction(255);
    result = swift_getWitnessTable();
    atomic_store(result, qword_280E3A550);
  }

  return result;
}

uint64_t sub_216914994(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OpenFinancePageAction(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2169149F8(uint64_t a1)
{
  v2 = type metadata accessor for OpenFinancePageAction(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_216914A64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[8] = a2;
  v3[9] = a3;
  v3[7] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABD770, &unk_217015610);
  v3[10] = v4;
  v3[11] = *(v4 - 8);
  v3[12] = OUTLINED_FUNCTION_80();
  v3[13] = type metadata accessor for PresentSheetAction(0);
  v3[14] = OUTLINED_FUNCTION_80();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAE0, &unk_217015630);
  v3[15] = v5;
  v3[16] = *(v5 - 8);
  v3[17] = OUTLINED_FUNCTION_80();
  v3[18] = type metadata accessor for MusicAppDestination(0);
  v3[19] = OUTLINED_FUNCTION_80();
  sub_21700EA34();
  v3[20] = sub_21700EA24();
  v7 = sub_21700E9B4();
  v3[21] = v7;
  v3[22] = v6;

  return MEMORY[0x2822009F8](sub_216914C10, v7, v6);
}

uint64_t sub_216914C10()
{
  v1 = v0[19];
  v2 = v0[14];
  v3 = v0[13];
  v4 = v0[11];
  v16 = v0[10];
  v17 = v0[12];
  v5 = v0[8];
  sub_21700C924();
  OUTLINED_FUNCTION_34();
  (*(v6 + 16))(v1, v5);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for ObjectGraph(0);
  sub_21700E094();
  sub_2169152B0(v1, v2 + *(v3 + 20), type metadata accessor for MusicAppDestination);
  type metadata accessor for ModalActionModelDestinations.Destination(0);
  swift_storeEnumTagMultiPayload();
  v7 = *(type metadata accessor for OpenMoveToFolderAction(0) + 20);
  sub_21700D284();
  OUTLINED_FUNCTION_34();
  (*(v8 + 16))(v2, v5 + v7);
  v0[5] = v3;
  v0[6] = sub_216915268(qword_280E3EA78, type metadata accessor for PresentSheetAction, &unk_217045370);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  sub_2169152B0(v2, boxed_opaque_existential_1, type metadata accessor for PresentSheetAction);
  (*(v4 + 104))(v17, *MEMORY[0x277D21E18], v16);
  v10 = swift_task_alloc();
  v0[23] = v10;
  *v10 = v0;
  v10[1] = sub_216914E5C;
  v11 = v0[15];
  v12 = v0[12];
  v13 = v0[9];
  v14 = v0[7];

  return MEMORY[0x28217F468](v14, v0 + 2, v12, v13, v11);
}

uint64_t sub_216914E5C()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v4 = *(*v1 + 88);
  v5 = *(*v1 + 80);
  *(*v1 + 192) = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v6 = v2[21];
    v7 = v2[22];
    v8 = sub_21691508C;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v2 + 2);
    v6 = v2[21];
    v7 = v2[22];
    v8 = sub_216914FDC;
  }

  return MEMORY[0x2822009F8](v8, v6, v7);
}

uint64_t sub_216914FDC()
{
  OUTLINED_FUNCTION_3_55();
  OUTLINED_FUNCTION_1_57();
  (*(v3 + 8))(v0, v1);
  OUTLINED_FUNCTION_0_69();

  v4 = *(v2 + 8);

  return v4();
}

uint64_t sub_21691508C()
{
  OUTLINED_FUNCTION_3_55();
  OUTLINED_FUNCTION_1_57();
  (*(v3 + 8))(v0, v1);
  OUTLINED_FUNCTION_0_69();
  __swift_destroy_boxed_opaque_existential_1Tm((v2 + 16));

  v4 = *(v2 + 8);

  return v4();
}

uint64_t sub_216915144(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2166DFAC0;

  return sub_216914A64(a1, a2, a3);
}

unint64_t sub_2169151F4(uint64_t a1)
{
  result = sub_2166DA8FC();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216915268(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2169152B0(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_34();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_216915310(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_34();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t type metadata accessor for PlayActionItem(uint64_t a1)
{
  result = qword_280E43170;
  if (!qword_280E43170)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2169153DC(uint64_t a1)
{
  sub_216915544(319, &qword_280E29D20, sub_2169154B0);
  if (v1 <= 0x3F)
  {
    sub_2169154F4();
    if (v2 <= 0x3F)
    {
      sub_216915544(319, &qword_280E40340, type metadata accessor for ContentDescriptor);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_2169154B0()
{
  result = qword_280E29D28;
  if (!qword_280E29D28)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280E29D28);
  }

  return result;
}

void sub_2169154F4()
{
  if (!qword_280E2A400)
  {
    v0 = sub_21700F164();
    if (!v1)
    {
      atomic_store(v0, &qword_280E2A400);
    }
  }
}

void sub_216915544(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_21700F164();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_216915598@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v30 = a3;
  v5 = sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00, &unk_217016B60);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v30 - v17;
  sub_21700CE04();
  (*(v7 + 16))(v10, a2, v5);
  v19 = v33;
  ContentDescriptor.init(deserializing:using:)(v15, v10, v20, v21, v22, v23, v24, v25, v30, v31, SWORD2(v31), SBYTE6(v31), SHIBYTE(v31), v32, v33, v34, v35, v36, v37, v38, v39, v40, v41);
  (*(v7 + 8))(a2, v5);
  if (v19)
  {
    return (*(v12 + 8))(a1, v31);
  }

  (*(v12 + 8))(a1, v31);
  v27 = type metadata accessor for ContentDescriptor(0);
  __swift_storeEnumTagSinglePayload(v18, 0, 1, v27);
  v28 = type metadata accessor for PlayActionItem(0);
  v29 = v30;
  result = sub_216816BC4(v18, v30 + *(v28 + 24));
  v29[1] = 0;
  v29[2] = 0;
  *v29 = 0;
  return result;
}

uint64_t sub_216915840(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[19] = a2;
  v3[20] = a3;
  v3[18] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABD770, &unk_217015610);
  v3[21] = v4;
  OUTLINED_FUNCTION_2(v4);
  v3[22] = v5;
  v3[23] = swift_task_alloc();
  v3[24] = swift_task_alloc();
  v6 = sub_21700D2A4();
  v3[25] = v6;
  OUTLINED_FUNCTION_2(v6);
  v3[26] = v7;
  v3[27] = swift_task_alloc();
  v3[28] = swift_task_alloc();
  v8 = sub_21700D3B4();
  v3[29] = v8;
  OUTLINED_FUNCTION_2(v8);
  v3[30] = v9;
  v3[31] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAE0, &unk_217015630);
  v3[32] = v10;
  OUTLINED_FUNCTION_2(v10);
  v3[33] = v11;
  v3[34] = swift_task_alloc();
  type metadata accessor for RoutedActionIntent(0);
  v3[35] = swift_task_alloc();
  sub_21700EA34();
  v3[36] = sub_21700EA24();
  v13 = sub_21700E9B4();
  v3[37] = v13;
  v3[38] = v12;

  return MEMORY[0x2822009F8](sub_216915A88, v13, v12);
}

uint64_t sub_216915A88()
{
  OUTLINED_FUNCTION_82_0();
  v1 = v0[35];
  v2 = v0[19];
  type metadata accessor for JSIntentDispatcher();
  type metadata accessor for ObjectGraph(0);
  sub_21700E094();
  v0[39] = v0[17];
  v3 = type metadata accessor for RoutedAction(0);
  v0[40] = v3;
  sub_216681B64(v2 + *(v3 + 24), v1, &qword_27CABA820, &unk_217018CE0);
  sub_21700E094();
  swift_task_alloc();
  OUTLINED_FUNCTION_52();
  v0[41] = v4;
  *v4 = v5;
  v4[1] = sub_216915BBC;
  v6 = v0[35];
  v7 = v0[31];
  v8 = v0[20];

  return sub_216A9B350(v7, v6, v8);
}

uint64_t sub_216915BBC()
{
  OUTLINED_FUNCTION_31();
  v2 = *v1;
  OUTLINED_FUNCTION_11();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 336) = v0;

  v5 = *(v2 + 304);
  v6 = *(v2 + 296);
  if (v0)
  {
    v7 = sub_216915F70;
  }

  else
  {
    v7 = sub_216915CF0;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_216915CF0()
{
  v2 = v0[30];
  v1 = v0[31];
  v3 = v0[29];
  v4 = v0[24];
  v5 = v0[21];
  v6 = v0[22];
  v7 = MEMORY[0x277D21D10];
  v0[15] = v3;
  v0[16] = v7;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 12);
  (*(v2 + 16))(boxed_opaque_existential_1, v1, v3);
  (*(v6 + 104))(v4, *MEMORY[0x277D21E18], v5);
  swift_task_alloc();
  OUTLINED_FUNCTION_52();
  v0[43] = v9;
  *v9 = v10;
  v9[1] = sub_216915E08;
  v11 = v0[32];
  v12 = v0[28];
  v13 = v0[24];
  v14 = v0[20];

  return MEMORY[0x28217F468](v12, v0 + 12, v13, v14, v11);
}

uint64_t sub_216915E08()
{
  OUTLINED_FUNCTION_31();
  v2 = *v1;
  OUTLINED_FUNCTION_11();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_11();
  *v5 = v4;
  v2[44] = v0;

  if (v0)
  {
    (*(v2[22] + 8))(v2[24], v2[21]);
    v6 = v2[37];
    v7 = v2[38];
    v8 = sub_2169165B8;
  }

  else
  {
    v9 = v2[28];
    v10 = v2[25];
    v11 = v2[26];
    (*(v2[22] + 8))(v2[24], v2[21]);
    (*(v11 + 8))(v9, v10);
    __swift_destroy_boxed_opaque_existential_1Tm(v2 + 12);
    v6 = v2[37];
    v7 = v2[38];
    v8 = sub_21691624C;
  }

  return MEMORY[0x2822009F8](v8, v6, v7);
}

uint64_t sub_216915F70()
{
  OUTLINED_FUNCTION_82_0();
  if (qword_27CAB5A58 != -1)
  {
    OUTLINED_FUNCTION_2_45(&qword_27CAB5A58);
  }

  v1 = *(v0 + 336);
  v2 = sub_217007CA4();
  __swift_project_value_buffer(v2, qword_27CABCA88);
  v3 = v1;
  v4 = sub_217007C84();
  v5 = sub_21700ED84();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 336);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_216679000, v4, v5, "Unable to perform action due to error: '%@'  Attempting to use fallback action.", v7, 0xCu);
    sub_21669987C(v8, &qword_27CABF880, &unk_21701D6E0);
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_6();
  }

  v11 = *(v0 + 320);
  v12 = *(v0 + 152);

  sub_216681B64(v12 + *(v11 + 20), v0 + 56, &qword_27CAB6DB0, &qword_217016C00);
  if (!*(v0 + 80))
  {
    v24 = *(v0 + 280);

    sub_21669987C(v0 + 56, &qword_27CAB6DB0, &qword_217016C00);
    swift_willThrow();

    v25 = OUTLINED_FUNCTION_5_36();
    v26(v25);
    sub_216916A88(v24);
    OUTLINED_FUNCTION_10_31();

    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_91_0();

    __asm { BRAA            X1, X16 }
  }

  v14 = *(v0 + 176);
  v13 = *(v0 + 184);
  v15 = *(v0 + 168);
  sub_2166A0F18((v0 + 56), v0 + 16);
  (*(v14 + 104))(v13, *MEMORY[0x277D21E18], v15);
  swift_task_alloc();
  OUTLINED_FUNCTION_52();
  *(v0 + 360) = v16;
  *v16 = v17;
  v16[1] = sub_216916368;
  OUTLINED_FUNCTION_91_0();

  return MEMORY[0x28217F468](v18, v19, v20, v21, v22);
}

uint64_t sub_21691624C()
{
  OUTLINED_FUNCTION_82_0();
  v1 = v0[35];
  v3 = v0[33];
  v2 = v0[34];
  v5 = v0[31];
  v4 = v0[32];
  v6 = v0[29];
  v7 = v0[30];

  (*(v7 + 8))(v5, v6);
  (*(v3 + 8))(v2, v4);
  sub_216916A88(v1);
  v8 = OUTLINED_FUNCTION_0_70();
  (*(v9 + 104))(v8, *MEMORY[0x277D21CA8]);

  OUTLINED_FUNCTION_3();

  return v10();
}

uint64_t sub_216916368()
{
  OUTLINED_FUNCTION_31();
  v2 = *v1;
  OUTLINED_FUNCTION_11();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_11();
  *v5 = v4;
  v2[46] = v0;

  if (v0)
  {
    (*(v2[22] + 8))(v2[23], v2[21]);
    v6 = v2[37];
    v7 = v2[38];
    v8 = sub_21691680C;
  }

  else
  {
    v10 = v2[26];
    v9 = v2[27];
    v11 = v2[25];
    (*(v2[22] + 8))(v2[23], v2[21]);
    (*(v10 + 8))(v9, v11);
    v6 = v2[37];
    v7 = v2[38];
    v8 = sub_2169164C8;
  }

  return MEMORY[0x2822009F8](v8, v6, v7);
}

void sub_2169164C8()
{
  OUTLINED_FUNCTION_82_0();
  OUTLINED_FUNCTION_7_36();

  __swift_destroy_boxed_opaque_existential_1Tm((v2 + 16));
  v3 = OUTLINED_FUNCTION_5_36();
  v4(v3);
  sub_216916A88(v1);
  v5 = OUTLINED_FUNCTION_0_70();
  (*(v6 + 104))(v5, *MEMORY[0x277D21CA8]);

  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_91_0();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_2169165B8()
{

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 12);
  if (qword_27CAB5A58 != -1)
  {
    OUTLINED_FUNCTION_2_45(&qword_27CAB5A58);
  }

  v1 = v0[44];
  v2 = sub_217007CA4();
  __swift_project_value_buffer(v2, qword_27CABCA88);
  v3 = v1;
  v4 = sub_217007C84();
  v5 = sub_21700ED84();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[44];
  v9 = v0[34];
  v8 = v0[35];
  v10 = v0[33];
  v11 = v0[30];
  v23 = v0[31];
  v24 = v0[32];
  v12 = v0[29];
  if (v6)
  {
    v22 = v0[35];
    v13 = swift_slowAlloc();
    v21 = v9;
    v14 = swift_slowAlloc();
    *v13 = 138412290;
    v15 = v7;
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 4) = v16;
    *v14 = v16;
    _os_log_impl(&dword_216679000, v4, v5, "Unable to perform action due to error: '%@'", v13, 0xCu);
    sub_21669987C(v14, &qword_27CABF880, &unk_21701D6E0);
    v9 = v21;
    OUTLINED_FUNCTION_6();
    v8 = v22;
    OUTLINED_FUNCTION_6();
  }

  (*(v11 + 8))(v23, v12);
  (*(v10 + 8))(v9, v24);
  sub_216916A88(v8);
  v17 = OUTLINED_FUNCTION_0_70();
  (*(v18 + 104))(v17, *MEMORY[0x277D21CA8]);

  OUTLINED_FUNCTION_3();

  return v19();
}

void sub_21691680C()
{
  OUTLINED_FUNCTION_82_0();
  OUTLINED_FUNCTION_7_36();

  __swift_destroy_boxed_opaque_existential_1Tm((v2 + 16));
  v3 = OUTLINED_FUNCTION_5_36();
  v4(v3);
  sub_216916A88(v1);
  OUTLINED_FUNCTION_10_31();

  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_91_0();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_2169168D8()
{
  v0 = sub_217007CA4();
  __swift_allocate_value_buffer(v0, qword_27CABCA88);
  __swift_project_value_buffer(v0, qword_27CABCA88);
  return sub_217007C94();
}

uint64_t sub_216916958()
{
  OUTLINED_FUNCTION_31();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  swift_task_alloc();
  OUTLINED_FUNCTION_52();
  *(v0 + 16) = v7;
  *v7 = v8;
  v7[1] = sub_21677A0BC;

  return sub_216915840(v6, v4, v2);
}

unint64_t sub_216916A00(uint64_t a1)
{
  result = sub_216857328();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_216916A2C()
{
  result = qword_27CABCAA0;
  if (!qword_27CABCAA0)
  {
    type metadata accessor for RoutedAction(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABCAA0);
  }

  return result;
}

uint64_t sub_216916A88(uint64_t a1)
{
  v2 = type metadata accessor for RoutedActionIntent(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for ContextMenuItem(uint64_t a1)
{
  result = qword_27CABCAA8;
  if (!qword_27CABCAA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_216916B58(uint64_t a1)
{
  type metadata accessor for MenuActionType(319);
  if (v1 <= 0x3F)
  {
    sub_216833F44(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_216916C08()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABCAB8, &qword_2170279A8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA360, &qword_2170202C8);
  sub_2166D9530(&qword_27CABCAC0, &qword_27CABCAB8, &qword_2170279A8, MEMORY[0x277CDD6A8]);
  sub_2169176E0();
  return sub_21700AE24();
}

uint64_t sub_216916CF8(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABCAD0, &qword_2170279B0);
  sub_2166D9530(&qword_27CABCAD8, &qword_27CABCAD0, &qword_2170279B0, MEMORY[0x277CE14C0]);
  return sub_217007FC4();
}

uint64_t sub_216917050()
{
  v1 = type metadata accessor for MenuActionType(0);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_7();
  v4 = v3 - v2;
  sub_21691775C(v0, v3 - v2);
  swift_getEnumCaseMultiPayload();
  sub_2169177C0(v4);
  return 0;
}

uint64_t sub_21691719C()
{
  v1 = sub_21700C924();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_7();
  v5 = v4 - v3;
  v6 = type metadata accessor for MenuActionType(0);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_7();
  v9 = v8 - v7;
  sub_21691775C(v0, v8 - v7);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
    case 0xDu:
    case 0x16u:
    case 0x17u:
    case 0x18u:
    case 0x19u:
    case 0x1Bu:
    case 0x1Cu:
    case 0x1Fu:
    case 0x24u:
    case 0x27u:
    case 0x29u:
      goto LABEL_6;
    case 2u:
    case 3u:
      sub_2169177C0(v9);
      return sub_21700ADB4();
    case 4u:
      (*(v2 + 32))(v5, v9, v1);
      v12 = sub_21700C6C4();
      if (v12 == 2 || (v12 & 1) == 0)
      {
        OUTLINED_FUNCTION_40();
      }

      (*(v2 + 8))(v5, v1);
      return sub_21700ADB4();
    case 5u:
      v11 = *(v9 + 16);

      if (v11)
      {
        return sub_21700ADA4();
      }

      else
      {
        return 0;
      }

    case 6u:
      OUTLINED_FUNCTION_40();
      sub_2169177C0(v9);
      return sub_21700ADB4();
    case 7u:
      sub_2169177C0(v9);
      return sub_21700ADD4();
    case 8u:
    case 9u:
    case 0xBu:
    case 0xCu:
    case 0xEu:
    case 0xFu:
    case 0x10u:
    case 0x11u:
    case 0x12u:
    case 0x14u:
    case 0x15u:
    case 0x1Au:
    case 0x20u:
    case 0x21u:
    case 0x22u:
    case 0x23u:
    case 0x25u:
    case 0x26u:
    case 0x28u:
    case 0x2Au:
    case 0x2Bu:
    case 0x2Cu:
      return sub_21700ADB4();
    case 0xAu:
    case 0x13u:
      OUTLINED_FUNCTION_40();
      return sub_21700ADB4();
    case 0x1Du:
    case 0x1Eu:
      OUTLINED_FUNCTION_40();
      return sub_21700ADB4();
    default:
      sub_2169177C0(v9);
LABEL_6:
      OUTLINED_FUNCTION_0_71();
      return sub_21700ADB4();
  }
}

unint64_t sub_2169176E0()
{
  result = qword_27CABCAC8;
  if (!qword_27CABCAC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABA360, &qword_2170202C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABCAC8);
  }

  return result;
}

uint64_t sub_21691775C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MenuActionType(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2169177C0(uint64_t a1)
{
  v2 = type metadata accessor for MenuActionType(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_216917824(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 64))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_216917864(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_2169178C8(void *a1)
{
  (*v1)();
  v3 = [a1 transitionCoordinator];
  if (v3)
  {
    v4 = v3;
    v5 = swift_allocObject();
    v6 = *(v1 + 16);
    v5[1] = *v1;
    v5[2] = v6;
    v7 = *(v1 + 48);
    v5[3] = *(v1 + 32);
    v5[4] = v7;
    OUTLINED_FUNCTION_0_72();
    OUTLINED_FUNCTION_1_58();
    v11[2] = v8;
    v11[3] = &block_descriptor_6;
    v9 = _Block_copy(v11);

    [v4 animateAlongsideTransition:0 completion:v9];
    _Block_release(v9);
    swift_unknownObjectRelease();
  }

  else
  {
    (*(v1 + 16))();
  }

  return 1;
}

uint64_t sub_216917A08(void *a1, uint64_t a2)
{
  result = [a1 isCancelled];
  if ((result & 1) == 0)
  {
    return (*(a2 + 16))();
  }

  return result;
}

uint64_t sub_216917A44(void *a1)
{
  (*(v1 + 32))();
  v3 = [a1 transitionCoordinator];
  if (v3)
  {
    v4 = v3;
    v5 = swift_allocObject();
    v6 = *(v1 + 16);
    v5[1] = *v1;
    v5[2] = v6;
    v7 = *(v1 + 48);
    v5[3] = *(v1 + 32);
    v5[4] = v7;
    OUTLINED_FUNCTION_0_72();
    OUTLINED_FUNCTION_1_58();
    v11[2] = v8;
    v11[3] = &block_descriptor_7;
    v9 = _Block_copy(v11);

    [v4 animateAlongsideTransition:0 completion:v9];
    _Block_release(v9);
    swift_unknownObjectRelease();
  }

  else
  {
    (*(v1 + 48))();
  }

  return 1;
}

uint64_t sub_216917B84(void *a1, uint64_t a2)
{
  result = [a1 isCancelled];
  if ((result & 1) == 0)
  {
    return (*(a2 + 48))();
  }

  return result;
}

uint64_t sub_216917C80(uint64_t a1, uint64_t a2)
{
  v66 = a2;
  v58 = a1;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABD770, &unk_217015610);
  OUTLINED_FUNCTION_1();
  v65 = v2;
  MEMORY[0x28223BE20](v3);
  v64 = &v56 - v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAE0, &unk_217015630);
  OUTLINED_FUNCTION_1();
  v62 = v6;
  v63 = v5;
  MEMORY[0x28223BE20](v5);
  v61 = &v56 - v7;
  sub_217006224();
  OUTLINED_FUNCTION_1();
  v59 = v9;
  v60 = v8;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_7();
  v57 = v11 - v10;
  type metadata accessor for FlowAction.Destination(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_7();
  v15 = v14 - v13;
  v16 = sub_21700D704();
  OUTLINED_FUNCTION_1();
  v18 = v17;
  MEMORY[0x28223BE20](v19);
  v21 = &v56 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v24 = &v56 - v23;
  v56 = sub_21700D284();
  OUTLINED_FUNCTION_1();
  v26 = v25;
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_7();
  v30 = v29 - v28;
  v31 = type metadata accessor for FlowAction(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_7();
  v35 = v34 - v33;
  if (sub_21688D828(0, 48))
  {
    sub_21700D234();
  }

  else
  {
    sub_21700D6F4();
    sub_21700D6D4();
    (*(v18 + 16))(v21, v24, v16);
    sub_21700D244();
    (*(v18 + 8))(v24, v16);
  }

  v36 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB80E8, &unk_21701D6A0) + 48);
  sub_21700C084();
  OUTLINED_FUNCTION_34();
  v38 = v58;
  (*(v37 + 16))(v15, v58);
  *(v15 + v36) = *(v38 + *(type metadata accessor for GoToAlbumAction(0) + 20));
  swift_storeEnumTagMultiPayload();
  v70 = 0;
  v68 = 0u;
  v69 = 0u;
  v39 = sub_217005EF4();
  OUTLINED_FUNCTION_3_57(v39);
  v40 = type metadata accessor for Page.Header(0);
  OUTLINED_FUNCTION_3_57(v40);
  v41 = type metadata accessor for ReferrerInfo(0);
  OUTLINED_FUNCTION_3_57(v41);
  v42 = v35 + v31[10];
  *(v42 + 32) = 0;
  *v42 = 0u;
  *(v42 + 16) = 0u;
  v43 = v56;
  (*(v26 + 16))(v35, v30, v56);
  sub_2167B9654(v15, v35 + v31[5], type metadata accessor for FlowAction.Destination);
  v44 = v57;
  sub_217006214();
  v58 = sub_2170061F4();
  v46 = v45;
  (*(v59 + 8))(v44, v60);
  sub_2167B96B4(v15, type metadata accessor for FlowAction.Destination);
  (*(v26 + 8))(v30, v43);
  v47 = (v35 + v31[6]);
  *v47 = v58;
  v47[1] = v46;
  *(v35 + v31[7]) = 0;
  sub_2167A66B4(&v68, v42);
  type metadata accessor for ObjectGraph(0);
  v48 = v61;
  v49 = v63;
  sub_21700E094();
  *(&v69 + 1) = v31;
  v70 = sub_2169182F0(qword_280E45BB8, type metadata accessor for FlowAction, &unk_21706E4A0);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v68);
  sub_2167B9654(v35, boxed_opaque_existential_1, type metadata accessor for FlowAction);
  v52 = v64;
  v51 = v65;
  v53 = v67;
  (*(v65 + 104))(v64, *MEMORY[0x277D21E18], v67);
  v54 = sub_21700D5E4();
  (*(v51 + 8))(v52, v53);
  (*(v62 + 8))(v48, v49);
  sub_2167B96B4(v35, type metadata accessor for FlowAction);
  __swift_destroy_boxed_opaque_existential_1Tm(&v68);
  return v54;
}

uint64_t sub_2169182F0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_216918338(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_21691838C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[12] = a7;
  v8[13] = a8;
  v8[10] = a3;
  v8[11] = a5;
  v8[8] = a1;
  v8[9] = a2;
  v9 = sub_21700D284();
  v8[14] = v9;
  OUTLINED_FUNCTION_2(v9);
  v8[15] = v10;
  v8[16] = OUTLINED_FUNCTION_80();
  GenericMusicItemStationAction = type metadata accessor for CreateGenericMusicItemStationAction(0);
  v8[17] = GenericMusicItemStationAction;
  OUTLINED_FUNCTION_36(GenericMusicItemStationAction);
  v8[18] = OUTLINED_FUNCTION_80();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7088, &qword_217020CA0);
  OUTLINED_FUNCTION_36(v12);
  v8[19] = OUTLINED_FUNCTION_80();
  v13 = sub_2170067A4();
  v8[20] = v13;
  OUTLINED_FUNCTION_2(v13);
  v8[21] = v14;
  v8[22] = swift_task_alloc();
  v8[23] = swift_task_alloc();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABF9C0, &qword_21701ADB0);
  OUTLINED_FUNCTION_36(v15);
  v8[24] = OUTLINED_FUNCTION_80();
  v16 = sub_217006924();
  v8[25] = v16;
  OUTLINED_FUNCTION_2(v16);
  v8[26] = v17;
  v8[27] = OUTLINED_FUNCTION_80();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00, &unk_217016B60);
  OUTLINED_FUNCTION_36(v18);
  v8[28] = OUTLINED_FUNCTION_80();
  v19 = type metadata accessor for ContentDescriptor(0);
  v8[29] = v19;
  OUTLINED_FUNCTION_36(v19);
  v8[30] = OUTLINED_FUNCTION_80();
  sub_21700EA34();
  v8[31] = sub_21700EA24();
  v21 = sub_21700E9B4();
  v8[32] = v21;
  v8[33] = v20;

  return MEMORY[0x2822009F8](sub_2169185F0, v21, v20);
}

uint64_t sub_2169185F0()
{
  v1 = v0[28];
  v2 = v0[29];
  v3 = v0[9];
  StationAction = type metadata accessor for CreateStationAction(0);
  sub_216919014(v3 + *(StationAction + 20), v1);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v1, 1, v2);
  v6 = v0[28];
  v7 = v0[25];
  if (EnumTagSinglePayload == 1)
  {
    v9 = v0[12];
    v8 = v0[13];

    sub_2166997CC(v6, &qword_27CAB6A00, &unk_217016B60);
    v11 = type metadata accessor for MapCreateStationActionImplementation.Error(0, v9, v8, v10);
    v12 = OUTLINED_FUNCTION_0_73(v11);
    OUTLINED_FUNCTION_3_0(v12);
    __swift_storeEnumTagSinglePayload(v13, 1, 2, v7);
    swift_willThrow();
    goto LABEL_9;
  }

  v14 = v0[24];
  sub_2168ED900(v0[28], v0[30]);
  sub_216C6C5E8(v14);
  if (__swift_getEnumTagSinglePayload(v14, 1, v7) == 1)
  {
    v15 = v0[30];
    v16 = v0[24];
    v17 = v0[25];
    v19 = v0[12];
    v18 = v0[13];

    sub_2166997CC(v16, &unk_27CABF9C0, &qword_21701ADB0);
    v21 = type metadata accessor for MapCreateStationActionImplementation.Error(0, v19, v18, v20);
    v22 = OUTLINED_FUNCTION_0_73(v21);
    OUTLINED_FUNCTION_3_0(v22);
    __swift_storeEnumTagSinglePayload(v23, 2, 2, v17);
    swift_willThrow();
LABEL_8:
    sub_2169190E4(v15, type metadata accessor for ContentDescriptor);
LABEL_9:
    OUTLINED_FUNCTION_5_37();

    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_7_3();

    __asm { BRAA            X1, X16 }
  }

  v25 = v0[19];
  v24 = v0[20];
  (*(v0[26] + 32))(v0[27], v0[24], v0[25]);
  sub_217006A84();
  if (__swift_getEnumTagSinglePayload(v25, 1, v24) == 1)
  {
    v15 = v0[30];
    v27 = v0[26];
    v26 = v0[27];
    v28 = v0[25];
    v29 = v0[19];
    v31 = v0[12];
    v30 = v0[13];

    sub_2166997CC(v29, &qword_27CAB7088, &qword_217020CA0);
    v33 = type metadata accessor for MapCreateStationActionImplementation.Error(0, v31, v30, v32);
    v34 = OUTLINED_FUNCTION_0_73(v33);
    OUTLINED_FUNCTION_3_0(v34);
    v36 = v35;
    (*(v27 + 16))(v35, v26, v28);
    __swift_storeEnumTagSinglePayload(v36, 0, 2, v28);
    swift_willThrow();
    (*(v27 + 8))(v26, v28);
    goto LABEL_8;
  }

  v37 = v0[22];
  v38 = v0[23];
  v39 = v0[20];
  v40 = v0[21];
  v41 = v0[18];
  v43 = v0[15];
  v42 = v0[16];
  v44 = v0[14];
  v45 = v0[9];
  (*(v40 + 32))(v38, v0[19], v39);
  (*(v40 + 16))(v37, v38, v39);
  (*(v43 + 16))(v42, v45, v44);
  sub_216A3F730(v37, v42, v41);
  v48 = v0[18];
  v50 = v0[12];
  v49 = v0[13];
  v0[5] = v0[17];
  v0[6] = sub_21691909C(&qword_27CABC010, type metadata accessor for CreateGenericMusicItemStationAction, &unk_217038D50);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  sub_2168F95F0(v48, boxed_opaque_existential_1);
  v52 = swift_task_alloc();
  v0[34] = v52;
  type metadata accessor for MapCreateStationActionImplementation(0, v50, v49, v53);
  swift_getWitnessTable();
  *v52 = v0;
  v52[1] = sub_216918AB4;
  OUTLINED_FUNCTION_7_3();

  return sub_216B6DB60();
}

uint64_t sub_216918AB4()
{
  v2 = *v1;
  *(*v1 + 280) = v0;

  if (v0)
  {
    v3 = v2[32];
    v4 = v2[33];
    v5 = sub_216918D04;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v2 + 2);
    v3 = v2[32];
    v4 = v2[33];
    v5 = sub_216918BD0;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_216918BD0()
{
  v1 = v0[30];
  v2 = v0[27];
  v4 = v0[25];
  v3 = v0[26];
  v5 = v0[23];
  v6 = v0[21];
  v7 = v0[20];
  v8 = v0[18];

  OUTLINED_FUNCTION_2_46();
  sub_2169190E4(v8, v9);
  (*(v6 + 8))(v5, v7);
  (*(v3 + 8))(v2, v4);
  OUTLINED_FUNCTION_1_59();
  sub_2169190E4(v1, v10);

  OUTLINED_FUNCTION_3();

  return v11();
}

void sub_216918D04()
{
  v1 = v0[30];
  v3 = v0[26];
  v2 = v0[27];
  v4 = v0[25];
  v5 = v0[23];
  v6 = v0[20];
  v7 = v0[21];
  v8 = v0[18];

  OUTLINED_FUNCTION_2_46();
  sub_2169190E4(v8, v9);
  (*(v7 + 8))(v5, v6);
  (*(v3 + 8))(v2, v4);
  OUTLINED_FUNCTION_1_59();
  sub_2169190E4(v1, v10);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  OUTLINED_FUNCTION_5_37();

  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_7_3();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_216918E20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v14 = swift_task_alloc();
  *(v6 + 16) = v14;
  v15 = *(a6 + 16);
  v16 = *(a6 + 24);
  *v14 = v6;
  v14[1] = sub_2167AF644;

  return sub_21691838C(a1, a2, a3, v12, a5, v13, v15, v16);
}

uint64_t sub_216918EE8(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216918F24(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216918FA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return sub_216ED7B54(a1, a2, a3, WitnessTable);
}

uint64_t sub_216919014(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00, &unk_217016B60);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21691909C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2169190E4(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_9_0();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_216919138(uint64_t a1)
{
  v1 = sub_217006924();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

uint64_t sub_2169191E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v85 = a3;
  v5 = sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v77 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_77();
  v80 = v14 - v15;
  MEMORY[0x28223BE20](v16);
  v82 = &v77 - v17;
  MEMORY[0x28223BE20](v18);
  v20 = &v77 - v19;
  MEMORY[0x28223BE20](v21);
  sub_21700D7A4();
  OUTLINED_FUNCTION_0_7();
  sub_21700CE04();
  v86 = v7;
  v22 = *(v7 + 16);
  v92 = a2;
  v89 = v5;
  v23 = v5;
  v24 = v85;
  v84 = v7 + 16;
  v78 = v22;
  v22(v10, a2, v23);
  v79 = v10;
  v25 = v87;
  sub_21700D734();
  v88 = a1;
  sub_21700CE04();
  v26 = sub_21700CDB4();
  v28 = v27;
  v31 = *(v12 + 8);
  v29 = (v12 + 8);
  v30 = v31;
  (v31)(v20, v25);
  v81 = v28;
  if (v28)
  {
    v32 = type metadata accessor for SocialCardLockup(0);
    v90 = v26;
    v91 = v28;
    sub_21700F364();
    sub_21700CE04();
    OUTLINED_FUNCTION_13_22();
    v33 = OUTLINED_FUNCTION_8_30();
    v30(v33);
    sub_21700CE04();
    sub_21700D2E4();
    v34 = OUTLINED_FUNCTION_8_30();
    v30(v34);
    sub_21700CE04();
    v35 = sub_21700CDB4();
    v37 = v36;
    v38 = OUTLINED_FUNCTION_8_30();
    v30(v38);
    v39 = (v24 + *(v32 + 36));
    *v39 = v35;
    v39[1] = v37;
    sub_21700CE04();
    v40 = sub_21700CDB4();
    v42 = v41;
    v43 = OUTLINED_FUNCTION_8_30();
    v30(v43);
    v83 = v32;
    v44 = (v24 + *(v32 + 40));
    *v44 = v40;
    v44[1] = v42;
    v45 = v82;
    sub_21700CE04();
    v46 = sub_21700CDB4();
    v48 = v47;
    (v30)(v45, v25);
    if (v48)
    {
      v49 = (v24 + *(v83 + 44));
      *v49 = v46;
      v49[1] = v48;
      v50 = v88;
      sub_21700CE04();
      OUTLINED_FUNCTION_13_22();
      v51 = OUTLINED_FUNCTION_8_30();
      v30(v51);
      type metadata accessor for Artwork(0);
      v82 = v29;
      v52 = v50;
      sub_21700CE04();
      v53 = v79;
      v54 = v48;
      v55 = v78;
      v78(v79, v54, v89);
      v56 = v83;
      sub_2166D70B4(&qword_280E2BF60, type metadata accessor for Artwork);
      OUTLINED_FUNCTION_8_30();
      sub_21700D734();
      type metadata accessor for ContentDescriptor(0);
      OUTLINED_FUNCTION_0_7();
      sub_21700CE04();
      v55(v53, v92, v89);
      sub_2166D70B4(qword_280E40390, type metadata accessor for ContentDescriptor);
      OUTLINED_FUNCTION_8_30();
      sub_21700D734();
      v57 = v80;
      sub_21700CE04();
      v58 = sub_21700CD44();
      (*(v86 + 8))(v92, v89);
      v59 = v87;
      (v30)(v52, v87);
      result = (v30)(v57, v59);
      *(v24 + *(v56 + 48)) = v58 & 1;
      return result;
    }

    v61 = v92;
    v70 = sub_21700E2E4();
    OUTLINED_FUNCTION_2_47();
    sub_2166D70B4(v71, v72);
    v73 = OUTLINED_FUNCTION_42_0();
    OUTLINED_FUNCTION_12(v73, v74);
    *v75 = 0x69546E6F74747562;
    v75[1] = 0xEB00000000656C74;
    v75[2] = v83;
    (*(*(v70 - 8) + 104))(v75, *MEMORY[0x277D22530], v70);
  }

  else
  {
    v61 = v92;
    v62 = sub_21700E2E4();
    OUTLINED_FUNCTION_2_47();
    sub_2166D70B4(v63, v64);
    v65 = OUTLINED_FUNCTION_42_0();
    OUTLINED_FUNCTION_12(v65, v66);
    v68 = v67;
    v69 = type metadata accessor for SocialCardLockup(0);
    *v68 = 25705;
    v68[1] = 0xE200000000000000;
    v68[2] = v69;
    (*(*(v62 - 8) + 104))(v68, *MEMORY[0x277D22530], v62);
  }

  swift_willThrow();
  (*(v86 + 8))(v61, v89);
  (v30)(v88, v25);
  result = sub_216697664(v24, &qword_27CAB6D58, &unk_217014E30);
  if (v81)
  {
    v76 = type metadata accessor for SocialCardLockup(0);
    sub_216788110(v24 + v76[5]);
    sub_216697664(v24 + v76[6], &qword_27CAB6DB0, &qword_217016C00);
    sub_216697664(v24 + v76[8], &qword_27CAB6DB0, &qword_217016C00);
  }

  return result;
}

uint64_t sub_216919AE8@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for ContentDescriptor(0);
  v4 = OUTLINED_FUNCTION_36(v3);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_77();
  v7 = v5 - v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v69 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00, &unk_217016B60);
  v12 = OUTLINED_FUNCTION_36(v11);
  MEMORY[0x28223BE20](v12);
  v14 = &v69 - v13;
  v15 = type metadata accessor for Artwork(0);
  v16 = OUTLINED_FUNCTION_36(v15);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_77();
  v19 = v17 - v18;
  MEMORY[0x28223BE20](v20);
  v22 = &v69 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60, &qword_217014E40);
  v24 = OUTLINED_FUNCTION_36(v23);
  MEMORY[0x28223BE20](v24);
  v26 = &v69 - v25;
  if (!sub_216FBDB0C())
  {
    v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABCB78, &qword_217027D48);
    v42 = sub_2167880BC();
    OUTLINED_FUNCTION_12(&type metadata for ProtobufError, v42);
    *v43 = xmmword_217014E10;
    *(v43 + 16) = v41;
    swift_willThrow();
    return OUTLINED_FUNCTION_0_74();
  }

  v69 = v7;
  v70 = v10;
  v71 = v14;
  v27 = sub_216FBD9AC();
  v29 = v28;
  v30 = type metadata accessor for SocialCardLockup(0);
  v31 = v30[5];
  v75 = v27;
  v76 = v29;
  v78 = v31;
  sub_21700F364();
  v32 = sub_21700D7A4();
  __swift_storeEnumTagSinglePayload(a1, 1, 1, v32);
  v33 = a1 + v30[6];
  *(v33 + 32) = 0;
  *v33 = 0u;
  *(v33 + 16) = 0u;
  v34 = a1 + v30[8];
  *(v34 + 32) = 0;
  *v34 = 0u;
  *(v34 + 16) = 0u;
  v35 = sub_216FBDD00();
  v36 = 0;
  v37 = 0;
  if (v35)
  {
    v36 = sub_216FBDBA0();
  }

  v38 = (a1 + v30[9]);
  *v38 = v36;
  v38[1] = v37;
  v74 = v37;
  if (sub_216FBDEF4())
  {
    v39 = sub_216FBDD94();
  }

  else
  {
    v39 = 0;
    v40 = 0;
  }

  v45 = (a1 + v30[10]);
  *v45 = v39;
  v45[1] = v40;
  v73 = v40;
  HIDWORD(v72) = sub_216FBED98();
  if ((v72 & 0x100000000) == 0)
  {
    v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABCB78, &qword_217027D48);
    v51 = sub_2167880BC();
    OUTLINED_FUNCTION_12(&type metadata for ProtobufError, v51);
    *v52 = xmmword_217027C30;
    *(v52 + 16) = v50;
    swift_willThrow();
    goto LABEL_13;
  }

  v46 = sub_216FBDBA0();
  v47 = (a1 + v30[11]);
  *v47 = v46;
  v47[1] = v48;
  v49 = a1 + v30[7];
  *(v49 + 32) = 0;
  *v49 = 0u;
  *(v49 + 16) = 0u;
  if (!sub_216FBE2DC())
  {
    v54 = 1;
    goto LABEL_21;
  }

  sub_216FBDF88(v22);
  sub_21691A084(v22, v19, type metadata accessor for Artwork);
  sub_216C7DA84(v19, v26);
  if (!v1)
  {
    OUTLINED_FUNCTION_3_58();
    v54 = 0;
LABEL_21:
    v55 = type metadata accessor for Artwork(0);
    v56 = 1;
    __swift_storeEnumTagSinglePayload(v26, v54, 1, v55);
    sub_21678818C(v26, a1 + v30[13], &qword_27CAB6D60, &qword_217014E40);
    if (sub_216FBE6B0())
    {
      v57 = v70;
      sub_216FBE33C(v70);
      v58 = v69;
      sub_21691A084(v57, v69, type metadata accessor for ContentDescriptor);
      sub_21689C518(v58, v59, v60, v61, v62, v63, v64, v65, v69, v70, SWORD1(v70), SWORD2(v70), SBYTE6(v70), SHIBYTE(v70), v71, v72, v73, v74, v75, v76, v77, v78, v79, v80);
      if (v1)
      {
        OUTLINED_FUNCTION_4_34();
        v53 = 1;
        goto LABEL_14;
      }

      OUTLINED_FUNCTION_4_34();
      v56 = 0;
    }

    v66 = type metadata accessor for ContentDescriptor(0);
    v67 = v71;
    __swift_storeEnumTagSinglePayload(v71, v56, 1, v66);
    sub_21678818C(v67, a1 + v30[14], &qword_27CAB6A00, &unk_217016B60);
    v68 = sub_216FBEE70();
    result = OUTLINED_FUNCTION_0_74();
    *(a1 + v30[12]) = v68 & 1;
    return result;
  }

  OUTLINED_FUNCTION_3_58();
LABEL_13:
  v53 = 0;
LABEL_14:
  OUTLINED_FUNCTION_0_74();
  sub_216697664(a1, &qword_27CAB6D58, &unk_217014E30);
  sub_216788110(a1 + v78);
  sub_216697664(v33, &qword_27CAB6DB0, &qword_217016C00);
  if ((v72 & 0x100000000) != 0)
  {
    sub_216697664(a1 + v30[7], &qword_27CAB6DB0, &qword_217016C00);
    sub_216697664(v34, &qword_27CAB6DB0, &qword_217016C00);
  }

  else
  {
    sub_216697664(v34, &qword_27CAB6DB0, &qword_217016C00);
  }

  if (v53)
  {
    return sub_216697664(a1 + v30[13], &qword_27CAB6D60, &qword_217014E40);
  }

  return result;
}

uint64_t sub_21691A084(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_34();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_21691A0E4(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_34();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_21691A188(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 84))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 83);
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

uint64_t sub_21691A1C8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 84) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 84) = 0;
    }

    if (a2)
    {
      *(result + 83) = -a2;
    }
  }

  return result;
}

uint64_t sub_21691A23C@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for PosterLockup(0);
  sub_2166A6EA4();
  if (v4)
  {
    return sub_2166A0F18(&v3, a1);
  }

  else
  {
    return sub_2166A6EA4();
  }
}

uint64_t sub_21691A2FC(char a1)
{
  if (a1)
  {
    return 0x656772616CLL;
  }

  else
  {
    return 0x72616C75676572;
  }
}

uint64_t sub_21691A354@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_216786440(*a1, a1[1], &unk_28290ED08);
  *a2 = result;
  return result;
}

uint64_t sub_21691A38C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21691A2FC(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

void sub_21691A3B8()
{
  OUTLINED_FUNCTION_22_3();
  v87 = v0;
  v105 = v2;
  v4 = v3;
  v95 = v5;
  v6 = sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v94 = v7;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_57();
  v10 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v14);
  v16 = &v81 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v81 - v18;
  MEMORY[0x28223BE20](v20);
  v22 = &v81 - v21;
  sub_21700D7A4();
  OUTLINED_FUNCTION_17_5();
  sub_21700CE04();
  v23 = *(v94 + 16);
  v93 = v6;
  v91 = v94 + 16;
  v90 = v23;
  (v23)(v1, v105, v6);
  v89 = v22;
  v88 = v1;
  v24 = v4;
  sub_21700D734();
  sub_21700CE04();
  v25 = sub_21700CDB4();
  v27 = v26;
  v28 = *(v12 + 8);
  v96 = v10;
  v29 = v10;
  v30 = v28;
  v28(v19, v29);
  v92 = v12 + 8;
  if (!v27)
  {
    v35 = sub_21700E2E4();
    OUTLINED_FUNCTION_5_38();
    v44 = sub_2166D5AF0(v42, v43, MEMORY[0x277D22550]);
    OUTLINED_FUNCTION_12(v35, v44);
    v40 = v45;
    v41 = type metadata accessor for PosterLockup(0);
    *v40 = 25705;
    v40[1] = 0xE200000000000000;
    goto LABEL_5;
  }

  v83 = v25;
  sub_21700CE04();
  v31 = sub_21700CD24();
  v32 = v24;
  v34 = v33;
  v30(v16, v96);
  if (v34)
  {

    v35 = sub_21700E2E4();
    OUTLINED_FUNCTION_5_38();
    v38 = sub_2166D5AF0(v36, v37, MEMORY[0x277D22550]);
    OUTLINED_FUNCTION_12(v35, v38);
    v40 = v39;
    v41 = type metadata accessor for PosterLockup(0);
    *v40 = 0xD000000000000014;
    v40[1] = 0x8000000217081C10;
LABEL_5:
    v40[2] = v41;
    (*(*(v35 - 8) + 104))(v40, *MEMORY[0x277D22530], v35);
    swift_willThrow();
    v46 = 0;
    v47 = v95;
    v48 = v93;
    goto LABEL_11;
  }

  v49 = type metadata accessor for PosterLockup(0);
  v50 = v83;
  *&v101 = v83;
  *(&v101 + 1) = v27;
  sub_21700DF14();
  v47 = v95;
  sub_21700F364();
  *(v47 + v49[8]) = v31;
  v51 = v89;
  sub_21700CE04();
  sub_21700D2E4();
  v30(v51, v96);
  v52 = v99;
  v84 = v32;
  if (v99)
  {
    v53 = v100;
    __swift_project_boxed_opaque_existential_1(v98, v99);
    *&v101 = v50;
    *(&v101 + 1) = v27;
    sub_21700F364();
    sub_216BA9D20(v97, v52, v53, &v101);
    sub_216788110(v97);
    __swift_destroy_boxed_opaque_existential_1Tm(v98);
  }

  else
  {

    sub_216697664(v98, &qword_27CAB6DB0, &qword_217016C00);
    v101 = 0u;
    v102 = 0u;
    v103 = 0;
  }

  v54 = v47 + v49[13];
  v55 = v102;
  *v54 = v101;
  *(v54 + 16) = v55;
  *(v54 + 32) = v103;
  sub_21700CE04();
  v48 = v93;
  v56 = v90;
  (v90)(v86, v105, v93);
  OUTLINED_FUNCTION_27_0();
  v57 = v87;
  sub_21691B028();
  if (!v57)
  {
    v59 = v49[6];
    v85 = 0;
    v60 = v48;
    memcpy((v47 + v59), v104, 0x54uLL);
    v87 = type metadata accessor for Artwork(0);
    v81 = v49;
    v61 = v89;
    v62 = v56;
    sub_21700CE04();
    v63 = v88;
    (v62)(v88, v105, v60);
    v86 = sub_2166D5AF0(&qword_280E2BF60, type metadata accessor for Artwork, &unk_21705A604);
    OUTLINED_FUNCTION_31_1();
    sub_21700D734();
    v64 = type metadata accessor for VideoArtwork(0);
    sub_21700CE04();
    (v90)(v63, v105, v93);
    v65 = v81;
    sub_2166D5AF0(qword_280E44448, type metadata accessor for VideoArtwork, &unk_217061470);
    OUTLINED_FUNCTION_31_1();
    sub_21700D734();
    sub_21700CE04();
    sub_21700CDB4();
    OUTLINED_FUNCTION_35_17();
    v82 = v30;
    OUTLINED_FUNCTION_23_20();
    (v30)();
    v66 = (v47 + v65[7]);
    *v66 = v64;
    v66[1] = v61;
    v67 = type metadata accessor for ContentDescriptor(0);
    OUTLINED_FUNCTION_17_5();
    sub_21700CE04();
    OUTLINED_FUNCTION_43_16();
    v90();
    v68 = v65;
    sub_2166D5AF0(qword_280E40390, type metadata accessor for ContentDescriptor, &protocol conformance descriptor for ContentDescriptor);
    OUTLINED_FUNCTION_31_1();
    sub_21700D734();
    sub_21700CE04();
    sub_21700D2E4();
    v69 = v96;
    v70 = v82;
    v82(v61, v96);
    OUTLINED_FUNCTION_32_1();
    sub_21700CE04();
    sub_21700CDB4();
    v71 = OUTLINED_FUNCTION_35_17();
    v70(v71, v69);
    v72 = (v47 + v65[9]);
    *v72 = v67;
    v72[1] = v61;
    sub_21700CE04();
    v73 = v88;
    OUTLINED_FUNCTION_43_16();
    v90();
    sub_21691E81C();
    sub_21700D734();
    v74 = v102;
    v75 = v47 + v65[10];
    *v75 = v101;
    *(v75 + 16) = v74;
    sub_21700CE04();
    sub_21700CDB4();
    v76 = OUTLINED_FUNCTION_35_17();
    v77 = v82;
    v82(v76, v69);
    v78 = (v47 + v68[16]);
    *v78 = v73;
    v78[1] = v61;
    sub_21700CE04();
    sub_21691E870();
    sub_21700CCC4();
    v77(v61, v69);
    *(v47 + v68[11]) = v101;
    type metadata accessor for ColorSchemeArtwork(0);
    OUTLINED_FUNCTION_32_1();
    sub_21700CE04();
    v79 = v90;
    OUTLINED_FUNCTION_43_16();
    v79();
    sub_2166D5AF0(&qword_27CABA350, type metadata accessor for ColorSchemeArtwork, &unk_21703EED4);
    sub_21700D734();
    sub_21700CE04();
    v80 = v93;
    OUTLINED_FUNCTION_43_16();
    v79();
    sub_21700D734();
    (*(v94 + 8))(v105, v80);
    OUTLINED_FUNCTION_23_20();
    (v82)();
    goto LABEL_14;
  }

  v46 = 1;
LABEL_11:
  (*(v94 + 8))(v105, v48);
  OUTLINED_FUNCTION_23_20();
  (v30)();
  sub_216697664(v47, &qword_27CAB6D58, &unk_217014E30);
  if (v46)
  {
    v58 = type metadata accessor for PosterLockup(0);
    sub_216788110(v47 + *(v58 + 20));
    sub_216697664(v47 + *(v58 + 52), &qword_27CAB6DB0, &qword_217016C00);
  }

LABEL_14:
  OUTLINED_FUNCTION_21_4();
}

void sub_21691B028()
{
  OUTLINED_FUNCTION_22_3();
  v69 = v2;
  *&v70 = v0;
  v75 = v3;
  v5 = v4;
  sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v73 = v7;
  v74 = v6;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1_0();
  v67[1] = v8;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v9);
  *&v68 = v67 - v10;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v11);
  v12 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v14 = v13;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_1_0();
  v67[0] = v16;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v17);
  MEMORY[0x28223BE20](v18);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_39_0();
  v96 = v5;
  sub_21700CE04();
  v20 = v12;
  v21 = sub_21700CDB4();
  v23 = v22;
  v71 = *(v14 + 8);
  v72 = v14 + 8;
  v71(v1, v20);
  if (!v23)
  {
    v29 = v20;
    v30 = sub_21700E2E4();
    OUTLINED_FUNCTION_5_38();
    v33 = sub_2166D5AF0(v31, v32, MEMORY[0x277D22550]);
    OUTLINED_FUNCTION_12(v30, v33);
    v35 = v34;
    *v34 = 1684957547;
    v34[1] = 0xE400000000000000;
    v34[2] = &type metadata for PosterLockup.Kind;
    v36 = MEMORY[0x277D22530];
    goto LABEL_10;
  }

  v24 = v21 == 0x7241657261757173 && v23 == 0xED00006B726F7774;
  if (!v24 && (OUTLINED_FUNCTION_45_16(0x7241657261757173, 0xED00006B726F7774) & 1) == 0)
  {
    v47 = v21 == 0x777472416C6C6174 && v23 == 0xEB000000006B726FLL;
    if (v47 || (OUTLINED_FUNCTION_45_16(0x777472416C6C6174, 0xEB000000006B726FLL) & 1) != 0)
    {

      OUTLINED_FUNCTION_38_14();
      v48();
      v49 = v73;
      v50 = v74;
      v51 = OUTLINED_FUNCTION_36_14();
      v52(v51);
      v53 = v70;
      sub_21691BD9C();
      if (v53)
      {
        v29 = v20;
        goto LABEL_11;
      }

      v70 = *&v84[45];
      v68 = *&v84[29];
      v39 = v85;
      v54 = v49;
      v40 = v86 | (v87 << 16);
      v77[0] = v88;
      v77[1] = v89;
      v78 = v90;
      (*(v54 + 8))(v21, v50);
      v55 = OUTLINED_FUNCTION_52_9();
      (v71)(v55);
      v43 = 1;
LABEL_13:
      v44 = v69;
      v45 = v70;
      *v69 = v68;
      v44[1] = v45;
      *(v44 + 4) = v39;
      *(v44 + 20) = v40;
      *(v44 + 42) = BYTE2(v40);
      v46 = v77[1];
      *(v44 + 43) = v77[0];
      *(v44 + 59) = v46;
      *(v44 + 75) = v78;
      *(v44 + 83) = v43;
      goto LABEL_14;
    }

    v56 = v21 == 0x64657265746E6563 && v23 == 0xEF6B726F77747241;
    if (v56 || (OUTLINED_FUNCTION_45_16(0x64657265746E6563, 0xEF6B726F77747241) & 1) != 0)
    {

      OUTLINED_FUNCTION_38_14();
      v57();
      v58 = OUTLINED_FUNCTION_36_14();
      v59(v58);
      OUTLINED_FUNCTION_27_0();
      v60 = v70;
      sub_21691BF78();
      v29 = v20;
      if (v60)
      {
        goto LABEL_11;
      }

      v70 = v92;
      v68 = v91;
      v39 = v93;
      v40 = v94 | (v95 << 16);
      v61 = OUTLINED_FUNCTION_31_1();
      v62(v61);
      v71(v23, v20);
      v43 = 2;
      goto LABEL_13;
    }

    v29 = v20;
    v30 = sub_21700E2E4();
    OUTLINED_FUNCTION_5_38();
    v65 = sub_2166D5AF0(v63, v64, MEMORY[0x277D22550]);
    OUTLINED_FUNCTION_12(v30, v65);
    v35 = v66;
    *v66 = v21;
    v66[1] = v23;
    v66[2] = &type metadata for PosterLockup.Kind;
    v36 = MEMORY[0x277D22520];
LABEL_10:
    (*(*(v30 - 8) + 104))(v35, *v36, v30);
    swift_willThrow();
    v23 = v96;
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_38_14();
  v25();
  v26 = OUTLINED_FUNCTION_36_14();
  v27(v26);
  OUTLINED_FUNCTION_27_0();
  v28 = v70;
  sub_21691BB18();
  if (!v28)
  {
    v70 = v80;
    v68 = v79;
    v39 = v81;
    v40 = v82 | (v83 << 16);
    v76[0] = *v84;
    *(v76 + 14) = *&v84[14];
    v41 = OUTLINED_FUNCTION_31_1();
    v42(v41);
    v71(v23, v20);
    v43 = 0;
    v77[0] = v76[0];
    *(v77 + 14) = *(v76 + 14);
    goto LABEL_13;
  }

  v29 = v20;
LABEL_11:
  v37 = OUTLINED_FUNCTION_31_1();
  v38(v37);
  v71(v23, v29);
LABEL_14:
  OUTLINED_FUNCTION_21_4();
}

void sub_21691B7B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13)
{
  OUTLINED_FUNCTION_22_3();
  v46 = v14;
  v16 = v15;
  OUTLINED_FUNCTION_58_10();
  v45 = sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v18 = v17;
  v42 = v17;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_7();
  v22 = v21 - v20;
  v23 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v25 = v24;
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_7();
  sub_21700CE04();
  v27 = sub_21700CDB4();
  v43 = v28;
  v44 = v27;
  v29 = *(v25 + 8);
  v30 = OUTLINED_FUNCTION_194();
  v29(v30);
  OUTLINED_FUNCTION_56_3();
  sub_21700CE04();
  (*(v18 + 16))(v22, v46, v45);
  sub_216AC6598();
  v32 = v31;
  sub_21700CE04();
  v33 = sub_21700CDB4();
  v40 = v34;
  v41 = v33;
  v35 = OUTLINED_FUNCTION_194();
  v29(v35);
  sub_21700CE04();
  v47 = sub_21700CD44();
  v36 = OUTLINED_FUNCTION_194();
  v29(v36);
  sub_21700CE04();
  sub_21691E918();
  sub_21700CCC4();
  v37 = OUTLINED_FUNCTION_194();
  v29(v37);
  OUTLINED_FUNCTION_17_5();
  sub_21700CE04();
  v38 = sub_21700CD44();
  (*(v42 + 8))(v46, v45);
  (v29)(v16, v23);
  v39 = OUTLINED_FUNCTION_194();
  v29(v39);
  *v13 = v44;
  *(v13 + 8) = v43;
  *(v13 + 16) = v32;
  *(v13 + 24) = v41;
  *(v13 + 32) = v40;
  *(v13 + 40) = v47;
  *(v13 + 41) = a13;
  *(v13 + 42) = v38;
  OUTLINED_FUNCTION_21_4();
}

double sub_21691BAD4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, _OWORD *a9@<X8>)
{
  sub_21691B7B0(a1, a2, a3, a4, a5, a6, a7, a8, v12, v14, SWORD2(v14), SBYTE6(v14), SHIBYTE(v14));
  if (!v9)
  {
    *a9 = v13;
    a9[1] = *v15;
    result = *&v15[11];
    *(a9 + 27) = *&v15[11];
  }

  return result;
}

void sub_21691BB18()
{
  OUTLINED_FUNCTION_22_3();
  v31 = v2;
  v4 = v3;
  v6 = v5;
  v7 = sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_1_0();
  v30 = v11;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v12);
  v14 = &v30 - v13;
  v32 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v16 = v15;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_39_0();
  sub_21700CE04();
  v19 = *(v9 + 16);
  v19(v14, v4, v7);
  sub_21691B7B0(v1, v14, v20, v21, v22, v23, v24, v25, v30, v31, SWORD2(v31), SBYTE6(v31), SHIBYTE(v31));
  if (v0)
  {
    (*(v9 + 8))(v4, v7);
    (*(v16 + 8))(v6, v32);
  }

  else
  {
    v35 = v37;
    *v36 = *v38;
    *&v36[11] = *&v38[11];
    OUTLINED_FUNCTION_50_9();
    sub_21700CE04();
    v19(v30, v4, v7);
    sub_21691E8C4();
    sub_21700D734();
    (*(v9 + 8))(v4, v7);
    (*(v16 + 8))(v6, v32);
    v26 = v34;
    v27 = v33;
    v28 = *v36;
    v29 = v31;
    *v31 = v35;
    v29[1] = v28;
    v29[2] = *&v36[16];
    v29[3] = v27;
    *(v29 + 64) = v26;
  }

  OUTLINED_FUNCTION_21_4();
}

void sub_21691BD9C()
{
  OUTLINED_FUNCTION_22_3();
  v2 = v1;
  v4 = v3;
  OUTLINED_FUNCTION_58_10();
  v5 = sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v7 = v6;
  v23 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_71_1();
  sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v24 = v10;
  v25 = v9;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_50_9();
  sub_21700CE04();
  v11 = *(v7 + 16);
  v12 = OUTLINED_FUNCTION_194();
  v11(v12);
  v13 = sub_21691E96C();
  OUTLINED_FUNCTION_29_18(v13, v14, &type metadata for PosterLockup.Kind.TallArtworkKind.Top);
  OUTLINED_FUNCTION_41_12();
  sub_21700CE04();
  v15 = OUTLINED_FUNCTION_194();
  v11(v15);
  v16 = sub_21691E9C0();
  OUTLINED_FUNCTION_29_18(v16, v17, &type metadata for PosterLockup.Bottom);
  (*(v23 + 8))(v2, v5);
  (*(v24 + 8))(v4, v25);
  v18 = OUTLINED_FUNCTION_59_9();
  *v0 = v26;
  *(v0 + 16) = v27;
  *(v0 + 32) = v28;
  *(v0 + 40) = v18;
  *(v0 + 56) = v19;
  *(v0 + 72) = v20;
  *(v0 + 82) = v21;
  *(v0 + 80) = v22;
  OUTLINED_FUNCTION_21_4();
}

void sub_21691BF78()
{
  OUTLINED_FUNCTION_22_3();
  v2 = v1;
  v4 = v3;
  OUTLINED_FUNCTION_58_10();
  v5 = sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_71_1();
  v20 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_41_12();
  sub_21700CE04();
  v12 = OUTLINED_FUNCTION_194();
  v13(v12);
  v14 = sub_21691E9C0();
  OUTLINED_FUNCTION_29_18(v14, v15, &type metadata for PosterLockup.Bottom);
  (*(v7 + 8))(v2, v5);
  (*(v10 + 8))(v4, v20);
  *v0 = OUTLINED_FUNCTION_59_9();
  *(v0 + 16) = v16;
  *(v0 + 32) = v17;
  *(v0 + 42) = v18;
  *(v0 + 40) = v19;
  OUTLINED_FUNCTION_21_4();
}

void sub_21691C0FC(void *a1@<X8>)
{
  sub_21691B028();
  if (!v1)
  {
    memcpy(a1, __src, 0x54uLL);
  }
}

unint64_t sub_21691C14C()
{
  result = qword_27CABCB80;
  if (!qword_27CABCB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABCB80);
  }

  return result;
}

void sub_21691C1E8()
{
  OUTLINED_FUNCTION_22_3();
  v14 = v1;
  v3 = v2;
  v4 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_77();
  v10 = v8 - v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_25_20();
  sub_21700CE04();
  sub_21700CDB4();
  v12 = *(v6 + 8);
  v12(v0, v4);
  OUTLINED_FUNCTION_17_5();
  sub_21700CE04();
  sub_21700CD44();
  sub_21700CF34();
  OUTLINED_FUNCTION_34();
  (*(v13 + 8))(v14);
  v12(v3, v4);
  v12(v10, v4);
  OUTLINED_FUNCTION_21_4();
}

void sub_21691C368(uint64_t a1@<X8>)
{
  sub_21691C1E8();
  if (!v1)
  {
    *a1 = v3;
    *(a1 + 8) = v4;
    *(a1 + 16) = v5 & 1;
  }
}

void sub_21691C39C(void *a1@<X8>)
{
  sub_21691BB18();
  if (!v1)
  {
    memcpy(a1, __src, 0x41uLL);
  }
}

double sub_21691C3E8@<D0>(_OWORD *a1@<X8>)
{
  sub_21691BF78();
  if (!v1)
  {
    *a1 = v4;
    a1[1] = *v5;
    result = *&v5[11];
    *(a1 + 27) = *&v5[11];
  }

  return result;
}

void sub_21691C42C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13)
{
  OUTLINED_FUNCTION_22_3();
  v39 = v14;
  v16 = v15;
  OUTLINED_FUNCTION_58_10();
  v17 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v19 = v18;
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_77();
  v23 = v21 - v22;
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_25_20();
  sub_21700CE04();
  v25 = sub_21700CDB4();
  v37 = v26;
  v38 = v25;
  v27 = *(v19 + 8);
  v28 = OUTLINED_FUNCTION_52_9();
  v27(v28);
  OUTLINED_FUNCTION_56_3();
  sub_21700CE04();
  v29 = sub_21700CDB4();
  v35 = v30;
  v36 = v29;
  v31 = OUTLINED_FUNCTION_52_9();
  v27(v31);
  OUTLINED_FUNCTION_17_5();
  sub_21700CE04();
  v32 = sub_21700CD44();
  (v27)(v23, v17);
  sub_21700CE04();
  sub_21691F0D4();
  sub_21700CCC4();
  sub_21700CF34();
  OUTLINED_FUNCTION_34();
  (*(v33 + 8))(v39);
  (v27)(v16, v17);
  v34 = OUTLINED_FUNCTION_52_9();
  v27(v34);
  *v13 = v38;
  *(v13 + 8) = v37;
  *(v13 + 16) = v36;
  *(v13 + 24) = v35;
  *(v13 + 32) = v32 & 1;
  *(v13 + 33) = a13;
  OUTLINED_FUNCTION_21_4();
}

uint64_t sub_21691C660(char a1)
{
  if (a1)
  {
    return 0x6E656E696D6F7270;
  }

  else
  {
    return 0x746C7561666564;
  }
}

uint64_t sub_21691C6C0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_216786440(*a1, a1[1], &unk_28290ED58);
  *a2 = result;
  return result;
}

uint64_t sub_21691C6F8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21691C660(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

double sub_21691C724@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  sub_21691C42C(a1, a2, a3, a4, a5, a6, a7, a8, v12, v13, SWORD2(v13), SBYTE6(v13), SBYTE7(v13));
  if (!v9)
  {
    result = *&v13;
    *a9 = v13;
    *(a9 + 16) = v14;
    *(a9 + 32) = v15;
  }

  return result;
}

void sub_21691C76C(void *a1@<X8>)
{
  sub_21691BD9C();
  if (!v1)
  {
    memcpy(a1, __src, 0x53uLL);
  }
}

void sub_21691C7F8()
{
  OUTLINED_FUNCTION_22_3();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = type metadata accessor for AccessoryBadge(0);
  v10 = OUTLINED_FUNCTION_36(v9);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_47_1();
  v13 = OUTLINED_FUNCTION_8_0(v12);
  v14 = type metadata accessor for ContentDescriptor(v13);
  v15 = OUTLINED_FUNCTION_36(v14);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_47_1();
  v113 = v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00, &unk_217016B60);
  OUTLINED_FUNCTION_36(v18);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v19);
  v21 = OUTLINED_FUNCTION_8_0(&v103 - v20);
  v22 = type metadata accessor for VideoArtwork(v21);
  v23 = OUTLINED_FUNCTION_36(v22);
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_47_1();
  v112 = v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBEA8, &unk_217026710);
  OUTLINED_FUNCTION_36(v26);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v27);
  v29 = OUTLINED_FUNCTION_8_0(&v103 - v28);
  v30 = type metadata accessor for Artwork(v29);
  v31 = OUTLINED_FUNCTION_36(v30);
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_77();
  v34 = v32 - v33;
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_39_0();
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60, &qword_217014E40);
  OUTLINED_FUNCTION_36(v36);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v37);
  v39 = &v103 - v38;
  v40 = type metadata accessor for PosterLockup.Kind(0);
  v41 = OUTLINED_FUNCTION_36(v40);
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v42);
  if (sub_216F283E0())
  {
    v104 = v4;
    v107 = v2;
    v43 = sub_216F28238();
    v44 = v8;
    v46 = v45;
    v47 = type metadata accessor for PosterLockup(0);
    v48 = *(v47 + 20);
    v116 = v43;
    v117 = v46;
    v49 = v44;
    v50 = v47;
    v105 = v48;
    sub_21700F364();
    v51 = sub_21700D7A4();
    __swift_storeEnumTagSinglePayload(v49, 1, 1, v51);
    OUTLINED_FUNCTION_55_12(v50[13]);
    v106 = v52;
    if ((sub_216F28A40() & 1) == 0)
    {
      OUTLINED_FUNCTION_46_13();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABCBC0, &unk_2170281A0);
      v60 = sub_2167880BC();
      v61 = OUTLINED_FUNCTION_12(&type metadata for ProtobufError, v60);
      OUTLINED_FUNCTION_33_5(xmmword_217021350, v61, v62);
      OUTLINED_FUNCTION_0_75();
      v54 = v6;
      goto LABEL_7;
    }

    sub_216F286C0();
    sub_21691E6E4();
    sub_21691D1AC();
    if (v0)
    {
      OUTLINED_FUNCTION_46_13();
      OUTLINED_FUNCTION_0_75();
      sub_21691E7C4(v6, v53);
      v54 = OUTLINED_FUNCTION_1_60();
LABEL_7:
      sub_21691E7C4(v54, v55);
      sub_216697664(v49, &qword_27CAB6D58, &unk_217014E30);
      OUTLINED_FUNCTION_43_16();
      sub_216788110(v49 + v63);
      sub_216697664(v106, &qword_27CAB6DB0, &qword_217016C00);
      goto LABEL_8;
    }

    v64 = OUTLINED_FUNCTION_1_60();
    sub_21691E7C4(v64, v65);
    memcpy((v49 + v50[6]), v118, 0x54uLL);
    if (sub_216F296D8())
    {
      sub_216F29390();
      sub_21691E6E4();
      sub_216C7DA84(v34, v39);
      OUTLINED_FUNCTION_21_24();
      v66 = 0;
    }

    else
    {
      v66 = 1;
    }

    v67 = type metadata accessor for Artwork(0);
    v68 = 1;
    __swift_storeEnumTagSinglePayload(v39, v66, 1, v67);
    sub_2167A4788();
    if (sub_216F29A80())
    {
      sub_216F29738();
      sub_21691E6E4();
      v69 = v115;
      sub_216DEFB24();
      OUTLINED_FUNCTION_19_25();
      v68 = 0;
    }

    else
    {
      v69 = v115;
    }

    v70 = type metadata accessor for VideoArtwork(0);
    __swift_storeEnumTagSinglePayload(v69, v68, 1, v70);
    sub_2167A4788();
    v71 = sub_216F28604();
    v72 = 0;
    v73 = 0;
    if (v71)
    {
      v72 = sub_216F2849C();
    }

    v74 = (v49 + v50[7]);
    *v74 = v72;
    v74[1] = v73;
    if (sub_216F29E5C())
    {
      sub_216F29AE0();
      v75 = v109;
      sub_21691E6E4();
      sub_21689C518(v75, v76, v77, v78, v79, v80, v81, v82, v103, v104, SWORD1(v104), SWORD2(v104), SBYTE6(v104), SHIBYTE(v104), v105, v106, v107, v108, v109, v110, v111, v112, v113, v114);
      OUTLINED_FUNCTION_18_22();
      v83 = 0;
    }

    else
    {
      v83 = 1;
    }

    v84 = type metadata accessor for ContentDescriptor(0);
    __swift_storeEnumTagSinglePayload(v114, v83, 1, v84);
    sub_2167A4788();
    OUTLINED_FUNCTION_55_12(v50[14]);
    v85 = sub_216F2A398();
    v86 = 0;
    v87 = 0;
    if (v85)
    {
      v86 = sub_216F2A18C();
    }

    v88 = (v49 + v50[9]);
    *v88 = v86;
    v88[1] = v87;
    if (sub_216F2A794())
    {
      sub_216F2A460(v110);
      v89 = v108;
      sub_21691E6E4();
      v90 = sub_216B91BA0(v89);
      v92 = v91;
      v94 = v93;
      OUTLINED_FUNCTION_17_29();
      v95 = v94 & 1;
    }

    else
    {
      v90 = 0;
      v92 = 0;
      v95 = 0;
    }

    v96 = v49 + v50[10];
    *v96 = v90;
    *(v96 + 8) = v92;
    *(v96 + 16) = v95;
    v97 = (v49 + v50[16]);
    v98 = v107;
    *v97 = v104;
    v97[1] = v98;
    v99 = sub_216F29EBC();
    OUTLINED_FUNCTION_0_75();
    sub_21691E7C4(v6, v100);
    *(v49 + v50[8]) = v99;
    *(v49 + v50[11]) = 0;
    v101 = v50[19];
    v102 = type metadata accessor for ColorSchemeArtwork(0);
    __swift_storeEnumTagSinglePayload(v49 + v101, 1, 1, v102);
    __swift_storeEnumTagSinglePayload(v49 + v50[12], 1, 1, v67);
  }

  else
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABCBC0, &unk_2170281A0);
    v56 = sub_2167880BC();
    v57 = OUTLINED_FUNCTION_12(&type metadata for ProtobufError, v56);
    OUTLINED_FUNCTION_33_5(xmmword_217014E10, v57, v58);
    OUTLINED_FUNCTION_0_75();
    sub_21691E7C4(v6, v59);
  }

LABEL_8:
  OUTLINED_FUNCTION_21_4();
}

void sub_21691D1AC()
{
  OUTLINED_FUNCTION_22_3();
  v44 = v1;
  v2 = type metadata accessor for PosterLockup.Kind.SquareArtwork(0);
  v3 = OUTLINED_FUNCTION_36(v2);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_47_1();
  v6 = OUTLINED_FUNCTION_8_0(v5);
  v7 = type metadata accessor for PosterLockup.Kind.TallArtwork(v6);
  v8 = OUTLINED_FUNCTION_36(v7);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v9);
  v11 = &v43 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABCBC8, &qword_2170281B0);
  OUTLINED_FUNCTION_36(v12);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v13);
  v15 = &v43 - v14;
  v16 = type metadata accessor for PosterLockup.Kind.OneOf_Kind(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v18);
  v20 = &v43 - v19;
  sub_2166A6EA4();
  if (__swift_getEnumTagSinglePayload(v15, 1, v16) != 1)
  {
    sub_21691E73C();
    sub_21691E6E4();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v26 = v46;
      sub_21691E73C();
      v27 = v45;
      sub_21691E6E4();
      sub_21691E274(v27, v49);
      if (v0)
      {
        v28 = OUTLINED_FUNCTION_1_60();
        sub_21691E7C4(v28, v29);
        OUTLINED_FUNCTION_4_35();
        v31 = v26;
LABEL_8:
        sub_21691E7C4(v31, v30);
        OUTLINED_FUNCTION_15_26();
        v24 = v20;
        goto LABEL_9;
      }

      memcpy(v47, v49, 0x41uLL);
      v34 = OUTLINED_FUNCTION_1_60();
      sub_21691E7C4(v34, v35);
      OUTLINED_FUNCTION_4_35();
      sub_21691E7C4(v26, v36);
      v37 = 0;
    }

    else
    {
      sub_21691E73C();
      sub_21691E6E4();
      sub_21691D5E0();
      if (v0)
      {
        v32 = OUTLINED_FUNCTION_1_60();
        sub_21691E7C4(v32, v33);
        OUTLINED_FUNCTION_2_48();
        v31 = v11;
        goto LABEL_8;
      }

      memcpy(v47, v48, sizeof(v47));
      v38 = OUTLINED_FUNCTION_1_60();
      sub_21691E7C4(v38, v39);
      OUTLINED_FUNCTION_2_48();
      sub_21691E7C4(v11, v40);
      v37 = 1;
    }

    OUTLINED_FUNCTION_15_26();
    sub_21691E7C4(v20, v41);
    v42 = v44;
    memcpy(v44, v47, 0x53uLL);
    v42[83] = v37;
    goto LABEL_10;
  }

  sub_216697664(v15, &qword_27CABCBC8, &qword_2170281B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABCBC0, &unk_2170281A0);
  v21 = sub_2167880BC();
  v22 = OUTLINED_FUNCTION_12(&type metadata for ProtobufError, v21);
  OUTLINED_FUNCTION_33_5(xmmword_217021350, v22, v23);
  v24 = OUTLINED_FUNCTION_1_60();
LABEL_9:
  sub_21691E7C4(v24, v25);
LABEL_10:
  OUTLINED_FUNCTION_21_4();
}

void sub_21691D594(void *a1@<X8>)
{
  sub_21691D1AC();
  if (!v1)
  {
    memcpy(a1, __src, 0x54uLL);
  }
}

void sub_21691D5E0()
{
  OUTLINED_FUNCTION_22_3();
  v3 = v2;
  v67 = v4;
  v72 = type metadata accessor for PosterLockup.Kind.TallArtwork.Bottom(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1_0();
  v64 = v6;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_47_1();
  v65 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABCBD0, &qword_2170281B8);
  OUTLINED_FUNCTION_36(v9);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v10);
  v71 = &v64 - v11;
  v12 = type metadata accessor for PosterLockup.Kind.TallArtwork.Top(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_1_0();
  v69 = v14;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_47_1();
  v70 = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABCBD8, &qword_2170281C0);
  v18 = OUTLINED_FUNCTION_36(v17);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_77();
  v21 = v19 - v20;
  MEMORY[0x28223BE20](v22);
  v23 = OUTLINED_FUNCTION_57();
  v68 = type metadata accessor for PosterLockup.Kind.TallArtwork(v23);
  v24 = v3;
  sub_2166A6EA4();
  v73 = 1;
  LODWORD(v3) = OUTLINED_FUNCTION_17_13(v1);
  sub_216697664(v1, &qword_27CABCBD8, &qword_2170281C0);
  if (v3 == 1)
  {
    v69 = 0;
    v70 = 0;
    v25 = 0;
    HIDWORD(v66) = 0;
    v26 = v0;
    v27 = v24;
  }

  else
  {
    sub_2166A6EA4();
    v27 = v24;
    if (OUTLINED_FUNCTION_17_13(v21) == 1)
    {
      v28 = v70;
      sub_217007874();
      v29 = (v28 + v12[5]);
      *v29 = 0;
      v29[1] = 0;
      v30 = (v28 + v12[6]);
      *v30 = 0;
      v30[1] = 0;
      *(v28 + v12[7]) = 2;
      v31 = v28 + v12[8];
      *v31 = 0;
      *(v31 + 8) = 256;
      v32 = OUTLINED_FUNCTION_17_13(v21);
      v26 = v0;
      v33 = v69;
      if (v32 != 1)
      {
        sub_216697664(v21, &qword_27CABCBD8, &qword_2170281C0);
      }
    }

    else
    {
      v28 = v70;
      sub_21691E73C();
      v26 = v0;
      v33 = v69;
    }

    OUTLINED_FUNCTION_27_0();
    sub_21691E6E4();
    v34 = (v33 + v12[5]);
    v35 = *v34;
    v36 = v34[1];
    v37 = (v33 + v12[6]);
    v25 = v37[1];
    v69 = *v37;
    v70 = v35;
    v92 = *(v33 + v12[7]);
    OUTLINED_FUNCTION_42_17();
    v40 = v38 | v39;
    sub_21700DF14();
    sub_21700DF14();
    sub_21691DC64(v0, v40 & 1, v41, v42, v43, v44, v45, v46, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74[0], v74[1]);
    if (v26)
    {

      OUTLINED_FUNCTION_14_26();
      sub_21691E7C4(v33, v48);
      OUTLINED_FUNCTION_2_48();
      sub_21691E7C4(v27, v49);
      sub_21691E7C4(v28, v40);
      goto LABEL_16;
    }

    v50 = v47;
    v73 = v36;
    OUTLINED_FUNCTION_14_26();
    sub_21691E7C4(v33, v51);
    sub_21691E7C4(v28, v40);
    HIDWORD(v66) = v92 & 1 | (v50 << 8);
  }

  v52 = v71;
  sub_2166A6EA4();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v52, 1, v72);
  sub_216697664(v52, &qword_27CABCBD0, &qword_2170281B8);
  if (EnumTagSinglePayload == 1)
  {
    OUTLINED_FUNCTION_2_48();
    sub_21691E7C4(v27, v54);
    v55 = 0;
    v56 = 0;
    v57 = 0;
    v58 = 0;
    v59 = 0;
    v60 = 1;
LABEL_15:
    v75[0] = v70;
    v75[1] = v73;
    v75[2] = v69;
    v75[3] = v25;
    LOWORD(v75[4]) = WORD2(v66);
    v75[5] = v55;
    v75[6] = v60;
    v75[7] = v56;
    v75[8] = v57;
    v75[9] = v58;
    BYTE2(v75[10]) = BYTE2(v59);
    LOWORD(v75[10]) = v59;
    v76[0] = v70;
    v76[1] = v73;
    v76[2] = v69;
    v76[3] = v25;
    v77 = WORD2(v66);
    v78 = v55;
    v79 = v60;
    v80 = v56;
    v81 = v57;
    v82 = v58;
    v83 = v59;
    v84 = BYTE2(v59);
    sub_21691E634(v75, v74);
    sub_21691E66C(v76);
    memcpy(v67, v75, 0x53uLL);
    goto LABEL_16;
  }

  sub_216F2BEFC(v65);
  sub_21691E6E4();
  sub_21691DF30();
  if (!v26)
  {
    v55 = v85;
    v60 = v86;
    v56 = v87;
    v57 = v88;
    v58 = v89;
    v59 = v90 | (v91 << 16);
    OUTLINED_FUNCTION_2_48();
    sub_21691E7C4(v62, v63);
    OUTLINED_FUNCTION_8_33();
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_2_48();
  sub_21691E7C4(v27, v61);
  OUTLINED_FUNCTION_8_33();
  sub_21691E69C(v70, v73);
LABEL_16:
  OUTLINED_FUNCTION_21_4();
}

void sub_21691DB44(void *a1@<X8>)
{
  sub_21691D5E0();
  if (!v1)
  {
    memcpy(a1, __src, 0x53uLL);
  }
}

void sub_21691DC64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_22_3();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v24 = sub_217007CA4();
  OUTLINED_FUNCTION_1();
  v26 = v25;
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_7();
  v30 = v29 - v28;
  if ((v23 & 1) == 0)
  {
    sub_217007C94();
    v31 = sub_217007C84();
    v32 = sub_21700ED84();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      a10 = v34;
      *v33 = 136315394;
      v35 = sub_21700F784();
      v37 = sub_2166A85FC(v35, v36, &a10);

      *(v33 + 4) = v37;
      *(v33 + 12) = 2080;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABCBE0, &qword_2170281C8);
      v38 = sub_21700E594();
      v40 = sub_2166A85FC(v38, v39, &a10);

      *(v33 + 14) = v40;
      _os_log_impl(&dword_216679000, v31, v32, "Unrecognized value '%s' for type '%s'", v33, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x21CEA1440](v34, -1, -1);
      MEMORY[0x21CEA1440](v33, -1, -1);
    }

    (*(v26 + 8))(v30, v24);
  }

  OUTLINED_FUNCTION_21_4();
}

double sub_21691DEB0@<D0>(uint64_t a1@<X8>)
{
  sub_21691DB90();
  if (!v1)
  {
    result = *&v4;
    *a1 = v4;
    *(a1 + 16) = v5;
    *(a1 + 32) = v6;
  }

  return result;
}

uint64_t sub_21691DF30()
{
  v6 = OUTLINED_FUNCTION_48_12();
  type metadata accessor for PosterLockup.Kind.TallArtwork.Bottom(v6);
  v7 = OUTLINED_FUNCTION_47_14();
  sub_21700DF14();
  v8 = sub_21700DF14();
  v9 = v7;
  v10 = v3;
  v12 = sub_216F76E04(v8, v11, &type metadata for Link, v9);
  if (v10)
  {
    OUTLINED_FUNCTION_8_33();
  }

  else
  {
    OUTLINED_FUNCTION_49_13();
    v23 = v14;
    v15 = *(v2 + v5[10]);
    v16 = (v2 + v5[9]);
    if (*(v16 + 9))
    {
      sub_21700DF14();
      v17 = 2;
    }

    else
    {
      v22 = *(v2 + v5[10]);
      v18 = *(v16 + 8);
      v15 = *v16;
      sub_21700DF14();
      v17 = sub_21697DAF8(v15, v18 & 1);
      LOBYTE(v15) = v22;
    }

    v19 = *(v2 + v5[8]);
    OUTLINED_FUNCTION_8_33();
    *&v25 = v0;
    *(&v25 + 1) = v1;
    *v26 = v12;
    *&v26[8] = v23;
    *&v26[16] = v4;
    v26[24] = v15 & 1;
    v26[25] = v17;
    v26[26] = v19 & 1;
    v27[0] = v0;
    v27[1] = v1;
    v27[2] = v12;
    v27[3] = v23;
    v27[4] = v4;
    v28 = v15 & 1;
    v29 = v17;
    v30 = v19 & 1;
    sub_21686BE0C(&v25, v24);
    result = sub_21691E794(v27);
    v20 = *v26;
    v21 = v31;
    *v31 = v25;
    v21[1] = v20;
    *(v21 + 27) = *&v26[11];
  }

  return result;
}

uint64_t sub_21691E0B8()
{
  v6 = OUTLINED_FUNCTION_48_12();
  type metadata accessor for PosterLockup.Kind.SquareArtwork.Chin(v6);
  v7 = OUTLINED_FUNCTION_47_14();
  sub_21700DF14();
  v8 = sub_21700DF14();
  v9 = v7;
  v10 = v3;
  v12 = sub_216F76E04(v8, v11, &type metadata for Link, v9);
  if (v10)
  {
    OUTLINED_FUNCTION_20_21();
  }

  else
  {
    OUTLINED_FUNCTION_49_13();
    v22 = v14;
    v15 = (v2 + *(v5 + 36));
    if (*(v15 + 9))
    {
      sub_21700DF14();
      v16 = 2;
    }

    else
    {
      v17 = *(v15 + 8);
      v18 = *v15;
      sub_21700DF14();
      v16 = sub_21697DAF8(v18, v17 & 1);
    }

    v19 = *(v2 + *(v5 + 32));
    OUTLINED_FUNCTION_20_21();
    *&v24 = v0;
    *(&v24 + 1) = v1;
    *v25 = v12;
    *&v25[8] = v22;
    *&v25[16] = v4;
    v25[24] = 2;
    v25[25] = v16;
    v25[26] = v19 & 1;
    v26[0] = v0;
    v26[1] = v1;
    v26[2] = v12;
    v26[3] = v22;
    v26[4] = v4;
    v27 = 2;
    v28 = v16;
    v29 = v19 & 1;
    sub_21686BE0C(&v24, v23);
    result = sub_21691E794(v26);
    v20 = *v25;
    v21 = v30;
    *v30 = v24;
    v21[1] = v20;
    *(v21 + 27) = *&v25[11];
  }

  return result;
}

double sub_21691E230@<D0>(_OWORD *a1@<X8>)
{
  sub_21691DF30();
  if (!v1)
  {
    *a1 = v4;
    a1[1] = *v5;
    result = *&v5[11];
    *(a1 + 27) = *&v5[11];
  }

  return result;
}

uint64_t sub_21691E274@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for PosterLockup.Kind.SquareArtwork.Chin(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_7();
  v9 = (v8 - v7);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABCBE8, &qword_2170281D0);
  OUTLINED_FUNCTION_36(v10);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v11);
  v12 = OUTLINED_FUNCTION_71_1();
  type metadata accessor for PosterLockup.Kind.SquareArtwork(v12);
  sub_2166A6EA4();
  v13 = OUTLINED_FUNCTION_17_13(v3);
  sub_216697664(v3, &qword_27CABCBE8, &qword_2170281D0);
  if (v13 == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABCBC0, &unk_2170281A0);
    v14 = sub_2167880BC();
    v15 = OUTLINED_FUNCTION_12(&type metadata for ProtobufError, v14);
    OUTLINED_FUNCTION_33_5(xmmword_217027D50, v15, v16);
LABEL_4:
    OUTLINED_FUNCTION_4_35();
    return sub_21691E7C4(a1, v17);
  }

  sub_216F2CF94(v9);
  sub_21691E0B8();
  if (v2)
  {
    goto LABEL_4;
  }

  OUTLINED_FUNCTION_4_35();
  result = sub_21691E7C4(a1, v19);
  *v20 = *v22;
  *&v20[11] = *&v22[11];
  *a2 = v21;
  *(a2 + 16) = *v20;
  *(a2 + 32) = *&v20[16];
  *(a2 + 48) = xmmword_217016ED0;
  *(a2 + 64) = 0;
  return result;
}

void *sub_21691E428@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = sub_21691E274(a1, __src);
  if (!v2)
  {
    return memcpy(a2, __src, 0x41uLL);
  }

  return result;
}

unint64_t sub_21691E4C0()
{
  result = qword_27CABCB98;
  if (!qword_27CABCB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABCB98);
  }

  return result;
}

uint64_t sub_21691E69C(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_21691E6E4()
{
  OUTLINED_FUNCTION_92();
  v1(0);
  OUTLINED_FUNCTION_34();
  v2 = OUTLINED_FUNCTION_8();
  v3(v2);
  return v0;
}

uint64_t sub_21691E73C()
{
  OUTLINED_FUNCTION_92();
  v1(0);
  OUTLINED_FUNCTION_34();
  v2 = OUTLINED_FUNCTION_8();
  v3(v2);
  return v0;
}

uint64_t sub_21691E7C4(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_34();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_21691E81C()
{
  result = qword_280E43848;
  if (!qword_280E43848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E43848);
  }

  return result;
}

unint64_t sub_21691E870()
{
  result = qword_27CABCBF0;
  if (!qword_27CABCBF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABCBF0);
  }

  return result;
}

unint64_t sub_21691E8C4()
{
  result = qword_27CABCBF8;
  if (!qword_27CABCBF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABCBF8);
  }

  return result;
}

unint64_t sub_21691E918()
{
  result = qword_27CABCC00;
  if (!qword_27CABCC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABCC00);
  }

  return result;
}

unint64_t sub_21691E96C()
{
  result = qword_27CABCC08;
  if (!qword_27CABCC08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABCC08);
  }

  return result;
}

unint64_t sub_21691E9C0()
{
  result = qword_27CABCC10;
  if (!qword_27CABCC10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABCC10);
  }

  return result;
}

uint64_t sub_21691EA14(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 17))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_21691EA68(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_21691EACC(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 16))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_21691EB20(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_21691EB80(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 34))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_21691EBD4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 34) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 34) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

_BYTE *sub_21691EC3C(_BYTE *result, unsigned int a2, unsigned int a3)
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

__n128 __swift_memcpy43_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 27) = *(a2 + 27);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_21691ED2C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 43))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_21691ED80(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 42) = 0;
    *(result + 40) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 43) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 43) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_21691EDF4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0x7FFFFFFD && *(a1 + 43))
    {
      v2 = *a1 + 2147483645;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v4 = v3 - 1;
      if (v4 < 0)
      {
        v5 = -1;
      }

      else
      {
        v5 = v4;
      }

      v6 = v5 - 1;
      if (v4 < 1)
      {
        v2 = -1;
      }

      else
      {
        v2 = v6;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_21691EE54(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 42) = 0;
    *(result + 40) = 0;
    *result = a2 - 2147483646;
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 43) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 43) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_21691EECC(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0x7FFFFFFD && *(a1 + 83))
    {
      v2 = *a1 + 2147483645;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v4 = v3 - 1;
      if (v4 < 0)
      {
        v5 = -1;
      }

      else
      {
        v5 = v4;
      }

      v6 = v5 - 1;
      if (v4 < 1)
      {
        v2 = -1;
      }

      else
      {
        v2 = v6;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_21691EF2C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 82) = 0;
    *(result + 80) = 0;
    *result = a2 - 2147483646;
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 83) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 83) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_21691EFB0(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 65))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_21691F004(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 65) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 65) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_21691F080()
{
  result = qword_27CABCC18;
  if (!qword_27CABCC18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABCC18);
  }

  return result;
}

unint64_t sub_21691F0D4()
{
  result = qword_27CABCC20;
  if (!qword_27CABCC20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABCC20);
  }

  return result;
}

uint64_t sub_21691F164(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a1 == a4 && a2 == a5)
  {
    return 1;
  }

  else
  {
    return sub_21700F7D4();
  }
}

uint64_t sub_21691F188(uint64_t a1, uint64_t a2)
{
  sub_21700F8F4();
  sub_21700E614();
  return sub_21700F944();
}

void sub_21691F1FC(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, void *a5@<X8>)
{
  v26 = sub_217005EF4();
  v10 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [objc_opt_self() valueWithNewObjectInContext_];
  if (v13)
  {
    v14 = v13;
    v15 = sub_2166F1DCC();
    v29 = MEMORY[0x277D837D0];
    v27 = a2;
    v28 = a3;
    sub_21700DF14();
    v16 = a1;
    v17 = sub_2166F1E10(&v27, a1);
    sub_2166F1F64(v17, 25705, 0xE200000000000000);
    v18 = [a4 resourceURL];
    sub_217005E64();

    v19 = sub_217005DE4();
    v21 = v20;
    (*(v10 + 8))(v12, v26);
    v29 = MEMORY[0x277D837D0];
    v27 = v19;
    v28 = v21;
    v22 = v16;
    v23 = sub_2166F1E10(&v27, a1);
    sub_2166F1F64(v23, 7107189, 0xE300000000000000);
    v24 = MEMORY[0x277D225C8];
    a5[3] = v15;
    a5[4] = v24;
    *a5 = v14;
  }

  else
  {
    __break(1u);
  }
}

unint64_t sub_21691F410()
{
  result = qword_27CABCC28;
  if (!qword_27CABCC28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABCC28);
  }

  return result;
}

uint64_t sub_21691F474(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[14] = a3;
  v4[15] = a4;
  v4[12] = a1;
  v4[13] = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABD770, &unk_217015610);
  v4[16] = v5;
  OUTLINED_FUNCTION_2(v5);
  v4[17] = v6;
  v4[18] = OUTLINED_FUNCTION_80();
  v7 = sub_217006224();
  v4[19] = v7;
  OUTLINED_FUNCTION_2(v7);
  v4[20] = v8;
  v4[21] = OUTLINED_FUNCTION_80();
  v4[22] = type metadata accessor for FlowAction.Destination(0);
  v4[23] = OUTLINED_FUNCTION_80();
  v9 = sub_21700D704();
  v4[24] = v9;
  OUTLINED_FUNCTION_2(v9);
  v4[25] = v10;
  v4[26] = swift_task_alloc();
  v4[27] = swift_task_alloc();
  v11 = sub_21700D284();
  v4[28] = v11;
  OUTLINED_FUNCTION_2(v11);
  v4[29] = v12;
  v4[30] = OUTLINED_FUNCTION_80();
  v4[31] = type metadata accessor for FlowAction(0);
  v4[32] = OUTLINED_FUNCTION_80();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAE0, &unk_217015630);
  v4[33] = v13;
  OUTLINED_FUNCTION_2(v13);
  v4[34] = v14;
  v4[35] = OUTLINED_FUNCTION_80();
  v15 = sub_217008674();
  v4[36] = v15;
  OUTLINED_FUNCTION_2(v15);
  v4[37] = v16;
  v4[38] = OUTLINED_FUNCTION_80();
  sub_21700EA34();
  v4[39] = sub_21700EA24();
  v18 = sub_21700E9B4();
  v4[40] = v18;
  v4[41] = v17;

  return MEMORY[0x2822009F8](sub_21691F754, v18, v17);
}

uint64_t sub_21691F754()
{
  v2 = *(v0 + 296);
  v1 = *(v0 + 304);
  v3 = *(v0 + 288);
  *(v0 + 352) = 0;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_217007DE4();

  *(swift_task_alloc() + 16) = v0 + 352;
  sub_217008624();

  (*(v2 + 8))(v1, v3);
  if (*(v0 + 352))
  {

    if (qword_27CAB5A60 != -1)
    {
      swift_once();
    }

    v4 = sub_217007CA4();
    __swift_project_value_buffer(v4, qword_27CABCC30);
    v5 = sub_217007C84();
    v6 = sub_21700EDA4();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_216679000, v5, v6, "Now playing is already visible, not pushing another now playing page.", v7, 2u);
      MEMORY[0x21CEA1440](v7, -1, -1);
    }

    v8 = *(v0 + 96);

    v9 = *MEMORY[0x277D21CA8];
    sub_21700D2A4();
    OUTLINED_FUNCTION_34();
    (*(v10 + 104))(v8, v9);
    OUTLINED_FUNCTION_3_59();

    OUTLINED_FUNCTION_3();

    return v11();
  }

  else
  {
    type metadata accessor for ObjectGraph(0);
    sub_21700E094();
    if (sub_21688D828(24, 48))
    {
      sub_21700D234();
    }

    else
    {
      v14 = *(v0 + 208);
      v13 = *(v0 + 216);
      v15 = *(v0 + 192);
      v16 = *(v0 + 200);
      sub_21700D6F4();
      sub_21700D6D4();
      (*(v16 + 16))(v14, v13, v15);
      sub_21700D244();
      (*(v16 + 8))(v13, v15);
    }

    v18 = *(v0 + 248);
    v17 = *(v0 + 256);
    v20 = *(v0 + 232);
    v19 = *(v0 + 240);
    v21 = *(v0 + 224);
    v41 = v21;
    v22 = *(v0 + 184);
    v23 = *(v0 + 168);
    v42 = *(v0 + 160);
    v43 = *(v0 + 152);
    v44 = *(v0 + 136);
    v45 = *(v0 + 128);
    v46 = *(v0 + 144);
    v24 = *(v0 + 104);
    v25 = *v24;
    v26 = *(v24 + 1);
    LOBYTE(v24) = v24[16];
    *v22 = v25;
    *(v22 + 8) = v26;
    *(v22 + 16) = v24;
    swift_storeEnumTagMultiPayload();
    *(v0 + 48) = 0;
    *(v0 + 32) = 0u;
    *(v0 + 16) = 0u;
    v27 = sub_217005EF4();
    OUTLINED_FUNCTION_4_36(v27);
    v28 = type metadata accessor for Page.Header(0);
    OUTLINED_FUNCTION_4_36(v28);
    v29 = type metadata accessor for ReferrerInfo(0);
    OUTLINED_FUNCTION_4_36(v29);
    v30 = v17 + v18[10];
    *(v30 + 32) = 0;
    *v30 = 0u;
    *(v30 + 16) = 0u;
    (*(v20 + 16))(v17, v19, v21);
    sub_2167B9654(v22, v17 + v18[5], type metadata accessor for FlowAction.Destination);
    sub_217006214();
    v31 = sub_2170061F4();
    v33 = v32;
    (*(v42 + 8))(v23, v43);
    sub_2167B96B4(v22, type metadata accessor for FlowAction.Destination);
    (*(v20 + 8))(v19, v41);
    v34 = (v17 + v18[6]);
    *v34 = v31;
    v34[1] = v33;
    *(v17 + v18[7]) = 0;
    sub_2167A66B4(v0 + 16, v30);
    *(v0 + 80) = v18;
    *(v0 + 88) = sub_216920920(qword_280E45BB8, type metadata accessor for FlowAction, &unk_21706E4A0);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 56));
    sub_2167B9654(v17, boxed_opaque_existential_1, type metadata accessor for FlowAction);
    (*(v44 + 104))(v46, *MEMORY[0x277D21E18], v45);
    v36 = swift_task_alloc();
    *(v0 + 336) = v36;
    *v36 = v0;
    v36[1] = sub_21691FD24;
    v37 = *(v0 + 264);
    v38 = *(v0 + 144);
    v39 = *(v0 + 112);
    v40 = *(v0 + 96);

    return MEMORY[0x28217F468](v40, v0 + 56, v38, v39, v37);
  }
}

uint64_t sub_21691FD24()
{
  v2 = *v1;
  v3 = *(*v1 + 144);
  v4 = *(*v1 + 136);
  v5 = *(*v1 + 128);
  *(*v1 + 344) = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v6 = v2[40];
    v7 = v2[41];
    v8 = sub_21691FF8C;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v2 + 7);
    v6 = v2[40];
    v7 = v2[41];
    v8 = sub_21691FEA4;
  }

  return MEMORY[0x2822009F8](v8, v6, v7);
}

uint64_t sub_21691FEA4()
{
  v2 = v0[34];
  v1 = v0[35];
  v4 = v0[32];
  v3 = v0[33];

  OUTLINED_FUNCTION_1_61();
  sub_2167B96B4(v4, v5);
  (*(v2 + 8))(v1, v3);
  OUTLINED_FUNCTION_3_59();

  OUTLINED_FUNCTION_3();

  return v6();
}

uint64_t sub_21691FF8C()
{
  v2 = v0[34];
  v1 = v0[35];
  v4 = v0[32];
  v3 = v0[33];

  OUTLINED_FUNCTION_1_61();
  sub_2167B96B4(v4, v5);
  (*(v2 + 8))(v1, v3);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);

  OUTLINED_FUNCTION_3();

  return v6();
}

void sub_2169200A0(uint64_t a1, _BYTE *a2)
{
  v4 = sub_217008604();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABCC48, &qword_217028858);
  MEMORY[0x28223BE20](v8);
  v10 = &v40 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABCC50, &qword_217028860);
  MEMORY[0x28223BE20](v11);
  v13 = &v40 - v12;
  if (sub_216E9A414())
  {
    return;
  }

  if (__OFSUB__(MEMORY[0x21CE99410](), 1))
  {
    __break(1u);
  }

  else
  {
    v47 = v5;
    v45 = v7;
    sub_217008614();
    v14 = v52;
    __swift_project_boxed_opaque_existential_1(&v50, v52);
    LOBYTE(v14) = Hashable.representsNowPlaying.getter(v14);
    __swift_destroy_boxed_opaque_existential_1Tm(&v50);
    if (v14)
    {
      *a2 = 1;
      return;
    }

    v46 = v11;
    v42 = *(v47 + 16);
    v42(v10, a1, v4);
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABCC58, &qword_217028868);
    v41 = *(v15 + 36);
    v43 = v15;
    v44 = MEMORY[0x277CDD948];
    sub_216920920(&qword_27CABCC60, MEMORY[0x277CDD948], MEMORY[0x277CDD958]);
    sub_21700EC54();
    sub_21700EC94();
    v16 = *(v8 + 52);
    v42(&v10[v16], a1, v4);
    sub_2169208B0(v10, v13);
    v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABCC68, &unk_217028870) + 36);
    v18 = *&v10[v41];
    sub_216697664(v10, &qword_27CABCC58, &qword_217028868);
    *&v13[v17] = v18;
    (*(v47 + 32))(v45, &v10[v16], v4);
    v19 = &v13[*(v46 + 52)];
    sub_216920920(&qword_27CABCC70, v44, MEMORY[0x277CDD950]);
    sub_21700E754();
    v20 = *&v13[*(v43 + 40)];
    v47 = MEMORY[0x277D84F90];
    while (1)
    {
      v21 = *&v13[v17];
      if (v21 == v20)
      {
        break;
      }

      sub_21700ECA4();
      v22 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABCC78, &qword_217029F70) + 36);
      sub_21700EC94();
      if (*&v19[v22] == v48[0])
      {
        break;
      }

      v23 = sub_21700ECE4();
      sub_2167B7D58(v24, v49);
      v23(v48, 0);
      sub_21700ECA4();
      sub_2166A0F18(v49, v51);
      v25 = v53;
      __swift_project_boxed_opaque_existential_1(v51, v53);
      LOBYTE(v25) = Hashable.representsNowPlaying.getter(v25);
      __swift_destroy_boxed_opaque_existential_1Tm(v51);
      if (v25)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_216938800();
          v47 = v28;
        }

        v26 = *(v47 + 16);
        if (v26 >= *(v47 + 24) >> 1)
        {
          sub_216938800();
          v47 = v29;
        }

        v27 = v47;
        *(v47 + 16) = v26 + 1;
        *(v27 + 8 * v26 + 32) = v21;
      }
    }

    v13[*(v46 + 56)] = 1;
    sub_216697664(v13, &qword_27CABCC50, &qword_217028860);
    if (!*(v47 + 16))
    {

      return;
    }

    if (qword_27CAB5A60 == -1)
    {
      goto LABEL_16;
    }
  }

  swift_once();
LABEL_16:
  v30 = sub_217007CA4();
  __swift_project_value_buffer(v30, qword_27CABCC30);
  v31 = sub_217007C84();
  v32 = sub_21700EDA4();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v50 = v34;
    *v33 = 136446210;
    v35 = sub_21700DF14();
    v36 = MEMORY[0x21CE9F660](v35, MEMORY[0x277D83B88]);
    v38 = v37;

    v39 = sub_2166A85FC(v36, v38, &v50);

    *(v33 + 4) = v39;
    _os_log_impl(&dword_216679000, v31, v32, "Pushing Now Playing with previous Now Playing pages at indices: %{public}s", v33, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v34);
    MEMORY[0x21CEA1440](v34, -1, -1);
    MEMORY[0x21CEA1440](v33, -1, -1);
  }
}

uint64_t sub_2169206F8()
{
  v0 = sub_217007CA4();
  __swift_allocate_value_buffer(v0, qword_27CABCC30);
  __swift_project_value_buffer(v0, qword_27CABCC30);
  return sub_217007C94();
}

uint64_t sub_216920778(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_2167AF644;

  return sub_21691F474(a1, a2, a3, v8);
}

unint64_t sub_216920830(uint64_t a1)
{
  result = sub_2168572D4();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2169208B0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABCC58, &qword_217028868);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_216920920(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_216920968(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAE0, &unk_217015630);
  OUTLINED_FUNCTION_1();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = &v10 - v7;
  *(v1 + 16) = a1;
  type metadata accessor for ObjectGraph(0);

  sub_21700E094();

  (*(v5 + 32))(v1 + OBJC_IVAR____TtC7MusicUI31GoToTVEpisodeMenuActionProvider_actionDispatcher, v8, v3);
  return v1;
}

uint64_t sub_216920A70(uint64_t a1, uint64_t a2, char *a3)
{
  v6 = type metadata accessor for MenuContext(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6DF0, &unk_2170152D0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v18 - v10;
  swift_storeEnumTagMultiPayload();
  v12 = sub_217007374();
  sub_216920C14(a1, v8, v12, v13, a2, a3, v11);

  sub_2168CD6E4(v8);
  v14 = sub_21678C1C4();
  sub_2166997CC(v11, &qword_27CAB6DF0, &unk_2170152D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6DF8, &unk_217029FC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_217013DA0;
  *(inited + 32) = v14;
  v16 = sub_2167A2998(inited);
  swift_setDeallocating();
  sub_2169FAC94();
  return v16;
}

uint64_t sub_216920C14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X5>, uint64_t a7@<X8>)
{
  v73 = a6;
  v91 = a5;
  v83 = a4;
  v82 = a3;
  v86 = a1;
  v94 = sub_2170075A4();
  v93 = *(v94 - 8);
  MEMORY[0x28223BE20](v94);
  v90 = v10;
  v92 = &v69 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = type metadata accessor for GoToTVEpisodeAction(0);
  v87 = *(v85 - 8);
  MEMORY[0x28223BE20](v85);
  v89 = &v69 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = v11;
  MEMORY[0x28223BE20](v12);
  v84 = &v69 - v13;
  v81 = sub_21700CFB4();
  v14 = *(v81 - 8);
  MEMORY[0x28223BE20](v81);
  v80 = &v69 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_217005EF4();
  v72 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v18 = &v69 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = sub_21700D704();
  v78 = *(v79 - 8);
  MEMORY[0x28223BE20](v79);
  v75 = &v69 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v69 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820, &unk_217018CE0);
  MEMORY[0x28223BE20](v23 - 8);
  v25 = &v69 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v28 = &v69 - v27;
  v77 = sub_21700D284();
  v76 = *(v77 - 8);
  MEMORY[0x28223BE20](v77);
  v74 = &v69 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for MenuContext(0);
  MEMORY[0x28223BE20](v30);
  v32 = &v69 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_storeEnumTagMultiPayload();
  LOBYTE(a2) = sub_216B88F54(a2, v32);
  sub_2168CD6E4(v32);
  if (a2)
  {
    v71 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF810, &unk_21701A5D0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_217015230;
    *(inited + 32) = 0x4E6E6F6974636573;
    *(inited + 40) = 0xEB00000000656D61;
    v34 = &v73[*(type metadata accessor for MenuConfiguration(0) + 36)];
    v35 = *(v34 + 1);
    v36 = MEMORY[0x277D837D0];
    *(inited + 48) = *v34;
    *(inited + 56) = v35;
    *(inited + 72) = v36;
    *(inited + 80) = 1684957547;
    *(inited + 88) = 0xE400000000000000;
    *(inited + 96) = 0x646F736970457674;
    *(inited + 104) = 0xE900000000000065;
    *(inited + 120) = v36;
    *(inited + 128) = 0x657461676976616ELL;
    *(inited + 168) = v36;
    *(inited + 136) = 0xEA00000000006F54;
    *(inited + 144) = 0x776F68537674;
    *(inited + 152) = 0xE600000000000000;
    sub_21700DF14();
    v37 = sub_21700E384();
    __swift_storeEnumTagSinglePayload(v28, 1, 1, v16);
    v70 = v22;
    sub_21700D6F4();
    v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFB20, &unk_217015300);
    *&v97 = v37;
    sub_2166EF9C4(&v97, v96);
    v38 = MEMORY[0x277D84F98];
    swift_isUniquelyReferenced_nonNull_native();
    v95 = v38;
    sub_2166EF9D4();
    v39 = v95;
    v98 = v36;
    *&v97 = 0x657461676976616ELL;
    *(&v97 + 1) = 0xE800000000000000;
    sub_2166EF9C4(&v97, v96);
    swift_isUniquelyReferenced_nonNull_native();
    v95 = v39;
    sub_2166EF9D4();
    v40 = v95;
    v98 = v36;
    *&v97 = 0xD000000000000010;
    *(&v97 + 1) = 0x80000002170801D0;
    sub_2166EF9C4(&v97, v96);
    swift_isUniquelyReferenced_nonNull_native();
    v95 = v40;
    sub_2166EF9D4();
    v41 = v95;
    v73 = v28;
    sub_2167DE934(v28, v25);
    if (__swift_getEnumTagSinglePayload(v25, 1, v16) == 1)
    {
      sub_2166997CC(v25, &qword_27CABA820, &unk_217018CE0);
    }

    else
    {
      v44 = v72;
      (*(v72 + 32))(v18, v25, v16);
      v45 = sub_217005DE4();
      v98 = v36;
      *&v97 = v45;
      *(&v97 + 1) = v46;
      sub_2166EF9C4(&v97, v96);
      swift_isUniquelyReferenced_nonNull_native();
      v95 = v41;
      sub_2166EF9D4();
      v41 = v95;
      (*(v44 + 8))(v18, v16);
    }

    if (qword_280E46040 != -1)
    {
      swift_once();
    }

    v47 = sub_21700CF84();
    v48 = __swift_project_value_buffer(v47, qword_280E73DB0);
    v49 = v80;
    MEMORY[0x21CE9DD70](v82, v83, 0x6E6F74747562, 0xE600000000000000, v41, v48);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6E20, &unk_217017100);
    v50 = (*(v14 + 80) + 32) & ~*(v14 + 80);
    v51 = swift_allocObject();
    *(v51 + 16) = xmmword_217013DA0;
    v52 = v51 + v50;
    v53 = v81;
    (*(v14 + 16))(v52, v49, v81);
    v54 = v78;
    v55 = v70;
    v56 = v79;
    (*(v78 + 16))(v75, v70, v79);
    v57 = v74;
    sub_21700D244();
    (*(v14 + 8))(v49, v53);
    (*(v54 + 8))(v55, v56);
    sub_2166997CC(v73, &qword_27CABA820, &unk_217018CE0);
    v58 = sub_2170073D4();
    v59 = v84;
    (*(*(v58 - 8) + 16))(v84, v86, v58);
    (*(v76 + 32))(v59 + *(v85 + 20), v57, v77);
    type metadata accessor for MenuActionType(0);
    swift_storeEnumTagMultiPayload();
    v60 = v89;
    sub_21692199C(v59, v89);
    v61 = v93;
    v62 = v92;
    v63 = v94;
    (*(v93 + 16))(v92, v91, v94);
    v64 = (*(v87 + 80) + 24) & ~*(v87 + 80);
    v65 = (v88 + *(v61 + 80) + v64) & ~*(v61 + 80);
    v66 = swift_allocObject();
    *(v66 + 16) = v71;
    sub_21692199C(v60, v66 + v64);
    (*(v61 + 32))(v66 + v65, v62, v63);
    v67 = type metadata accessor for MenuAction(0);
    v68 = (a7 + *(v67 + 20));
    *v68 = sub_216921A00;
    v68[1] = v66;
    __swift_storeEnumTagSinglePayload(a7, 0, 1, v67);
  }

  else
  {
    v42 = type metadata accessor for MenuAction(0);
    return __swift_storeEnumTagSinglePayload(a7, 1, 1, v42);
  }
}

uint64_t sub_2169217D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6[3] = type metadata accessor for GoToTVEpisodeAction(0);
  v6[4] = sub_216921AD0();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v6);
  sub_216921B28(a2, boxed_opaque_existential_1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAE0, &unk_217015630);
  sub_21700D594();

  return __swift_destroy_boxed_opaque_existential_1Tm(v6);
}

uint64_t sub_216921880()
{

  v1 = OBJC_IVAR____TtC7MusicUI31GoToTVEpisodeMenuActionProvider_actionDispatcher;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAE0, &unk_217015630);
  OUTLINED_FUNCTION_9_0();
  (*(v2 + 8))(v0 + v1);

  return MEMORY[0x2821FE8D8](v0);
}

uint64_t type metadata accessor for GoToTVEpisodeMenuActionProvider(uint64_t a1)
{
  result = qword_280E303D8;
  if (!qword_280E303D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21692199C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GoToTVEpisodeAction(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_216921A00()
{
  v1 = *(type metadata accessor for GoToTVEpisodeAction(0) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(sub_2170075A4() - 8);
  v5 = *(v0 + 16);
  v6 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  return sub_2169217D4(v5, v0 + v2, v6);
}

unint64_t sub_216921AD0()
{
  result = qword_27CAB7488;
  if (!qword_27CAB7488)
  {
    type metadata accessor for GoToTVEpisodeAction(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB7488);
  }

  return result;
}

uint64_t sub_216921B28(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GoToTVEpisodeAction(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void *sub_216921B8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  v4[6] = 0;
  v4[2] = a1;
  v4[3] = a2;
  v4[4] = a3;
  return v4;
}

id sub_216921BA0()
{
  v1 = v0[6];
  v2 = v1;
  if (!v1)
  {
    if (v0[3])
    {
      v3 = v0[4];
      v4 = objc_allocWithZone(MEMORY[0x277D63FD0]);
      sub_21700DF14();
      v5 = v3;
      v2 = [v4 initWithHighlight_];

      v6 = v0[6];
      v0[6] = v2;
      v7 = v2;
    }

    else
    {
      v2 = 0;
    }
  }

  v8 = v1;
  return v2;
}

void sub_216921C48()
{
  v23 = type metadata accessor for MenuAction(0);
  v0 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v2 = (&v21 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));
  v3 = sub_216921BA0();
  if (v3)
  {
    v4 = sub_21692203C(v3);
    if (v4)
    {
      v5 = v4;
      v6 = sub_2166BF3C8(v4);
      if (!v6)
      {
LABEL_12:

        return;
      }

      v7 = v6;
      v24 = MEMORY[0x277D84F90];
      sub_216AB99F8(0, v6 & ~(v6 >> 63), 0);
      if ((v7 & 0x8000000000000000) == 0)
      {
        v8 = 0;
        v9 = v24;
        v22 = v5 & 0xC000000000000001;
        do
        {
          if (v22)
          {
            v10 = MEMORY[0x21CEA0220](v8, v5);
          }

          else
          {
            v10 = *(v5 + 8 * v8 + 32);
          }

          v11 = v10;
          v12 = [v10 title];
          v13 = sub_21700E514();
          v15 = v14;

          v16 = [v11 image];
          *v2 = v13;
          v2[1] = v15;
          v2[2] = v16;
          type metadata accessor for MenuActionType(0);
          swift_storeEnumTagMultiPayload();
          v17 = swift_allocObject();
          *(v17 + 16) = v11;
          v18 = (v2 + *(v23 + 20));
          *v18 = sub_2169220A4;
          v18[1] = v17;
          v24 = v9;
          v20 = *(v9 + 16);
          v19 = *(v9 + 24);
          if (v20 >= v19 >> 1)
          {
            sub_216AB99F8(v19 > 1, v20 + 1, 1);
            v9 = v24;
          }

          ++v8;
          *(v9 + 16) = v20 + 1;
          sub_2169220BC(v2, v9 + ((*(v0 + 80) + 32) & ~*(v0 + 80)) + *(v0 + 72) * v20);
        }

        while (v7 != v8);
        goto LABEL_12;
      }

      __break(1u);
    }
  }
}

void (*sub_216921EDC(void (*result)(uint64_t, uint64_t, id)))(uint64_t, uint64_t, id)
{
  v2 = v1[3];
  if (v2)
  {
    v3 = result;
    v4 = v1[2];
    v5 = v1[4];
    sub_21700DF14();
    v6 = v5;
    v3(v4, v2, v6);
  }

  return result;
}

uint64_t sub_216921F6C()
{
  sub_216921FF8(*(v0 + 16), *(v0 + 24), *(v0 + 32));

  return v0;
}

uint64_t sub_216921FA0()
{
  sub_216921F6C();

  return MEMORY[0x2821FE8D8](v0);
}

void sub_216921FF8(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
  }
}

uint64_t sub_21692203C(void *a1)
{
  v2 = [a1 contextMenuItems];

  if (!v2)
  {
    return 0;
  }

  sub_216922120();
  v3 = sub_21700E824();

  return v3;
}

uint64_t sub_2169220BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MenuAction(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_216922120()
{
  result = qword_27CABCC80;
  if (!qword_27CABCC80)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CABCC80);
  }

  return result;
}

uint64_t sub_216922164()
{
  sub_21692757C();
  sub_217009104();
  return v1;
}

double sub_2169221DC()
{
  sub_2169272B4();
  sub_217009104();
  return v1;
}

double sub_2169222A4()
{
  sub_2169274D4();
  sub_217009104();
  return v1;
}

void sub_2169222E4()
{
  OUTLINED_FUNCTION_17_6();
  *v0 = sub_2169222A4();
  *(v0 + 8) = v1;
  *(v0 + 16) = v2;
  *(v0 + 24) = v3;
}

uint64_t sub_21692237C()
{
  sub_217009714();
  sub_21692A060(&qword_280E2A8F0, MEMORY[0x277CE0428], MEMORY[0x277CE0448]);
  return sub_21700F9B4();
}

uint64_t sub_2169223FC()
{
  sub_216927528();
  sub_217009104();
  return v1;
}

uint64_t sub_216922438()
{
  OUTLINED_FUNCTION_17_6();
  result = sub_2169223FC();
  *v0 = result;
  return result;
}

uint64_t sub_2169224C4(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v6 = sub_216A1204C(a4);

  return sub_216927308(v6, v7, a2, a3);
}

void sub_216922530(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  OUTLINED_FUNCTION_149();
  v33 = v32;
  v54 = v34;
  v36 = v35;
  v55 = v37;
  v56 = v38;
  v40 = v39;
  v42 = v41;
  v44 = v43;
  v46 = v45;
  v47 = OUTLINED_FUNCTION_23_21();
  v49 = type metadata accessor for ShelfCollection(v47, v48);
  v50 = *(a32 - 8);
  (*(v50 + 16))(&v46[v49[21]], v44, a32);
  v51 = &v46[v49[22]];
  *v51 = v33;
  *(v51 + 1) = a31;
  v52 = &v46[v49[26]];
  *v52 = v36;
  *(v52 + 1) = v54;
  v53 = &v46[v49[23]];
  *v53 = v42;
  v53[8] = v40 & 1;
  v46[v49[24]] = v55;
  v46[v49[25]] = v56;
  (*(v50 + 8))(v44, a32);
  *v46 = MEMORY[0x277D84F90];
  OUTLINED_FUNCTION_148_0();
}

uint64_t sub_216922660@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v80 = a2;
  OUTLINED_FUNCTION_1();
  v78 = v3;
  v79 = *(v4 + 64);
  MEMORY[0x28223BE20](v5);
  v77 = &v58[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v74 = &v87;
  v8 = *(v7 + 16);
  OUTLINED_FUNCTION_16();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  v81 = &v58[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v82 = *(v13 + 32);
  v14 = sub_2170075B4();
  v15 = *(a1 + 72);
  swift_getAssociatedTypeWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v75 = *(a1 + 24);
  v17 = v75;
  OUTLINED_FUNCTION_12_6();
  WitnessTable = swift_getWitnessTable();
  v67 = v15;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v85 = v14;
  v86 = AssociatedTypeWitness;
  v87 = v17;
  v88 = WitnessTable;
  v89 = AssociatedConformanceWitness;
  sub_21700B174();
  swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_34_4();
  v20 = sub_21700B4E4();
  v72 = v20;
  OUTLINED_FUNCTION_0_2();
  v21 = swift_getWitnessTable();
  v71 = v21;
  v66 = *(a1 + 64);
  v22 = v66;
  v85 = v8;
  v86 = v20;
  *v74 = *(&v82 + 1);
  v88 = v21;
  v89 = v22;
  v90 = v15;
  v23 = type metadata accessor for _ShelfCollection(0, &v85);
  OUTLINED_FUNCTION_1();
  v74 = v24;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v25);
  v65 = &v58[-v26];
  OUTLINED_FUNCTION_11_31();
  v69 = swift_getWitnessTable();
  v85 = v23;
  v86 = v69;
  v70 = MEMORY[0x277D269F8];
  swift_getOpaqueTypeMetadata2();
  v27 = sub_217009564();
  OUTLINED_FUNCTION_1();
  v73 = v28;
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_77();
  v64 = v30 - v31;
  v33 = MEMORY[0x28223BE20](v32);
  v68 = &v58[-v34];
  v35 = v76;
  v36 = v8;
  (*(v10 + 16))(v81, v76 + *(a1 + 84), v8, v33);
  v37 = *(a1 + 96);
  v38 = v35 + *(a1 + 92);
  v63 = *v38;
  v62 = v38[8];
  v60 = *v35;
  v61 = *(v35 + v37);
  v59 = *(v35 + *(a1 + 100));
  v40 = v77;
  v39 = v78;
  (*(v78 + 16))(v77, v35, a1);
  v41 = (*(v39 + 80) + 80) & ~*(v39 + 80);
  v42 = swift_allocObject();
  *&v43 = v36;
  *(&v43 + 1) = v75;
  v44 = v82;
  *(v42 + 16) = v43;
  *(v42 + 32) = v44;
  *(v42 + 48) = *(a1 + 48);
  v45 = v66;
  v46 = v67;
  *(v42 + 64) = v66;
  *(v42 + 72) = v46;
  (*(v39 + 32))(v42 + v41, v40, a1);
  *(&v57 + 1) = v45;
  *&v57 = v71;
  *(&v56 + 1) = *(&v82 + 1);
  v55 = v36;
  *&v56 = v72;
  v47 = v65;
  LODWORD(v36) = v59;
  sub_2169238EC(v81, v63, v62, v60, v61, v59, sub_216927BD4, v42, v65, v55, v56, v57, v46);
  sub_21700DF14();
  v48 = v64;
  v49 = v36;
  v50 = v69;
  sub_2169239F4(v49, v23, v69, v64);
  (v74[1])(v47, v23);
  v85 = v23;
  v86 = v50;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v84 = v50;
  OUTLINED_FUNCTION_6_1();
  v51 = swift_getWitnessTable();
  v52 = v68;
  sub_2166C24DC(v48, v27, v51);
  v53 = *(v73 + 8);
  v53(v48, v27);
  sub_2166C24DC(v52, v27, v51);
  return (v53)(v52, v27);
}

uint64_t sub_216922C80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10)
{
  v109 = a7;
  v106 = a6;
  v81 = a2;
  v90 = a1;
  v100 = a8;
  v92 = *(a3 - 8);
  v97 = *(v92 + 64);
  v82 = a9;
  MEMORY[0x28223BE20](a1);
  v107 = &KeyPath - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v129 = v14;
  v130 = v15;
  v16 = v15;
  v131 = v17;
  v132 = v18;
  v133 = v19;
  v134 = v20;
  v135 = v21;
  v136 = a10;
  v103 = type metadata accessor for ShelfCollection(0, &v129);
  v105 = *(v103 - 8);
  v83 = *(v105 + 64);
  MEMORY[0x28223BE20](v103);
  v104 = &KeyPath - v22;
  v23 = sub_2170075B4();
  v86 = v23;
  MEMORY[0x28223BE20](v23);
  v108 = &KeyPath - v24;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v79 = a10;
  v94 = AssociatedTypeWitness;
  v26 = swift_getAssociatedTypeWitness();
  WitnessTable = swift_getWitnessTable();
  v85 = WitnessTable;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v129 = v23;
  v130 = v26;
  v102 = v16;
  v131 = v16;
  v132 = WitnessTable;
  v133 = AssociatedConformanceWitness;
  v93 = sub_21700B174();
  v96 = *(v93 - 8);
  MEMORY[0x28223BE20](v93);
  v80 = &KeyPath - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v89 = &KeyPath - v30;
  MEMORY[0x28223BE20](v31);
  v95 = &KeyPath - v32;
  v88 = *(a4 - 8);
  v33 = v88;
  MEMORY[0x28223BE20](v34);
  v36 = &KeyPath - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = MEMORY[0x28223BE20](v37);
  v91 = &KeyPath - v39;
  v40 = v103;
  v41 = v81;
  (*(v81 + *(v103 + 88)))(v38);
  v42 = v36;
  v87 = v36;
  v43 = v36;
  v44 = a4;
  v45 = v109;
  sub_2166C24DC(v43, a4, v109);
  v46 = *(v33 + 8);
  v98 = v33 + 8;
  v99 = v46;
  v46(v42, a4);
  v47 = a3;
  v101 = a5;
  v48 = v90;
  sub_21700EC34();
  v118 = a3;
  v119 = v102;
  v120 = a4;
  v121 = a5;
  v49 = v106;
  v122 = v106;
  v123 = v45;
  v50 = v82;
  v51 = v79;
  v124 = v82;
  v125 = v79;
  KeyPath = swift_getKeyPath();
  v52 = v105;
  (*(v105 + 16))(v104, v41, v40);
  v53 = v92;
  (*(v92 + 16))(v107, v48, v47);
  v54 = (*(v52 + 80) + 80) & ~*(v52 + 80);
  v55 = v53;
  v56 = (v83 + *(v53 + 80) + v54) & ~*(v53 + 80);
  v57 = swift_allocObject();
  v58 = v102;
  *(v57 + 2) = v47;
  *(v57 + 3) = v58;
  v59 = v101;
  *(v57 + 4) = v44;
  *(v57 + 5) = v59;
  *(v57 + 6) = v49;
  v60 = v109;
  *(v57 + 7) = v109;
  *(v57 + 8) = v50;
  *(v57 + 9) = v51;
  (*(v105 + 32))(&v57[v54], v104, v103);
  (*(v55 + 32))(&v57[v56], v107, v47);
  v61 = swift_allocObject();
  v62 = v47;
  v61[2] = v47;
  v61[3] = v58;
  v63 = v58;
  v64 = v101;
  v61[4] = v44;
  v61[5] = v64;
  v65 = v106;
  v61[6] = v106;
  v61[7] = v60;
  v61[8] = v50;
  v61[9] = v51;
  v61[10] = sub_216927C90;
  v61[11] = v57;
  v66 = v80;
  v67 = v63;
  sub_21700B154();
  v110 = v62;
  v111 = v67;
  v112 = v44;
  v113 = v64;
  v114 = v65;
  v115 = v60;
  v116 = v50;
  v117 = v51;
  swift_getKeyPath();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v68 = v89;
  v69 = v93;
  sub_21700B144();

  v70 = v96;
  v71 = *(v96 + 8);
  v71(v66, v69);
  v128[2] = v65;
  v72 = swift_getWitnessTable();
  v73 = v95;
  sub_2166C24DC(v68, v69, v72);
  v71(v68, v69);
  v74 = v87;
  v75 = v91;
  (*(v88 + 16))(v87, v91, v44);
  v129 = v74;
  (*(v70 + 16))(v68, v73, v69);
  v130 = v68;
  v128[0] = v44;
  v128[1] = v69;
  v126 = v109;
  v127 = v72;
  sub_216984F84(&v129, 2, v128);
  v71(v73, v69);
  v76 = v99;
  v99(v75, v44);
  v71(v68, v69);
  return v76(v74, v44);
}

uint64_t sub_216923620@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a5@<X5>, uint64_t a7@<X8>, uint64_t a8)
{
  v27 = a2;
  v28 = a1;
  v29 = a7;
  v10 = *(a5 - 8);
  MEMORY[0x28223BE20](a1);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v14 = MEMORY[0x28223BE20](v13);
  v16 = &v26 - v15;
  v30[0] = v17;
  v30[1] = v18;
  v30[2] = v19;
  v30[3] = v20;
  v30[4] = a8;
  v31 = v14;
  v32 = v21;
  v22 = *(a3 + *(type metadata accessor for ShelfCollection(0, v30) + 104));
  v23 = sub_21700EC74();
  v22(v27, v28, v23);
  sub_2166C24DC(v12, a5, a8);
  v24 = *(v10 + 8);
  v24(v12, a5);
  sub_2166C24DC(v16, a5, a8);
  return (v24)(v16, a5);
}

uint64_t sub_2169237C4(char *a1, uint64_t (*a2)(uint64_t, char *), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = *a1;
  swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  return a2(v9, &a1[*(TupleTypeMetadata2 + 48)]);
}

uint64_t sub_216923868(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + a3 - 16);
  v4 = *(v3 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  return v4(AssociatedTypeWitness, v3);
}

int *sub_2169238EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, char a5@<W4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, __int128 a11, __int128 a12, uint64_t a13)
{
  (*(*(a10 - 8) + 32))(a9, a1, a10);
  v24 = a10;
  v25 = a11;
  v26 = a12;
  v27 = a13;
  result = type metadata accessor for _ShelfCollection(0, &v24);
  v22 = a9 + result[17];
  *v22 = a2;
  *(v22 + 8) = a3 & 1;
  v23 = (a9 + result[18]);
  *v23 = a7;
  v23[1] = a8;
  *(a9 + result[20]) = a5;
  *(a9 + result[21]) = a6;
  *(a9 + result[19]) = a4;
  return result;
}

uint64_t sub_2169239F4@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v46 = a1;
  v50 = a4;
  OUTLINED_FUNCTION_16();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_77();
  v45 = v9 - v10;
  MEMORY[0x28223BE20](v11);
  v13 = &v43 - v12;
  sub_2170064D4();
  OUTLINED_FUNCTION_1();
  v43 = v15;
  v44 = v14;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v16);
  v18 = &v43 - v17;
  OUTLINED_FUNCTION_2_49();
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_1();
  v21 = v20;
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v23);
  v25 = &v43 - v24;
  sub_217009564();
  OUTLINED_FUNCTION_1();
  v48 = v27;
  v49 = v26;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v28);
  v30 = &v43 - v29;
  if (v46)
  {
    sub_21700A2A4();
    v31 = v44;
    sub_217006474();

    (*(v43 + 8))(v18, v31);
    OUTLINED_FUNCTION_2_49();
    v32 = OUTLINED_FUNCTION_30_19();
    v33 = OUTLINED_FUNCTION_26_22();
    sub_2166C24DC(v33, v34, v32);
    v35 = *(v21 + 8);
    v36 = OUTLINED_FUNCTION_26_22();
    v35(v36);
    sub_2166C24DC(v25, OpaqueTypeMetadata2, v32);
    OUTLINED_FUNCTION_26_22();
    sub_2166C2718();
    v37 = OUTLINED_FUNCTION_26_22();
    v35(v37);
    (v35)(v25, OpaqueTypeMetadata2);
  }

  else
  {
    sub_2166C24DC(v47, a2, a3);
    v38 = v45;
    sub_2166C24DC(v13, a2, a3);
    OUTLINED_FUNCTION_2_49();
    OUTLINED_FUNCTION_30_19();
    sub_2166C2CB0();
    v39 = *(v7 + 8);
    v39(v38, a2);
    v39(v13, a2);
  }

  OUTLINED_FUNCTION_2_49();
  v51 = OUTLINED_FUNCTION_30_19();
  v52 = a3;
  OUTLINED_FUNCTION_6_1();
  v40 = v49;
  WitnessTable = swift_getWitnessTable();
  sub_2166C24DC(v30, v40, WitnessTable);
  return (*(v48 + 8))(v30, v40);
}

uint64_t sub_216923DE0@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  OUTLINED_FUNCTION_50();
  result = (*(v8 + 16))(a4, v10, v9);
  if (a1)
  {
    v12 = swift_allocObject();
    *(v12 + 16) = a2;
    *(v12 + 24) = a3;

    sub_216DF3B2C(v13);
    v14 = *(*a4 + 16);
    result = sub_216DF3C90(v14);
    v15 = *a4;
    *(v15 + 16) = v14 + 1;
    v16 = v15 + 16 * v14;
    *(v16 + 32) = sub_2166EFCD4;
    *(v16 + 40) = v12;
    *a4 = v15;
  }

  return result;
}

uint64_t sub_216923EB0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17[1] = a2;
  v3 = *(a1 - 1);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](a1);
  (*(v3 + 16))(v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  v17[0] = (*(v3 + 80) + 64) & ~*(v3 + 80);
  v6 = swift_allocObject();
  v7 = a1[2];
  v8 = a1[3];
  *(v6 + 2) = v7;
  *(v6 + 3) = v8;
  v9 = a1[4];
  v10 = a1[5];
  *(v6 + 4) = v9;
  *(v6 + 5) = v10;
  v11 = a1[6];
  v12 = a1[7];
  *(v6 + 6) = v11;
  *(v6 + 7) = v12;
  (*(v3 + 32))(&v6[v17[0]], v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  v20 = v7;
  v21 = v8;
  v22 = v9;
  v23 = v10;
  v24 = v11;
  v25 = v12;
  type metadata accessor for _ShelfCollection.ContentView(0, &v20);
  swift_getWitnessTable();
  v18 = sub_217008594();
  v19 = v13;
  v14 = sub_2170085A4();
  WitnessTable = swift_getWitnessTable();
  sub_2166C24DC(&v18, v14, WitnessTable);

  v18 = v20;
  v19 = v21;
  sub_2166C24DC(&v18, v14, WitnessTable);
}

uint64_t sub_2169240C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X7>, uint64_t a5@<X8>)
{
  v50 = a5;
  v48 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v47 = &v39[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v51 = v9;
  v52 = v10;
  v11 = v10;
  v44 = v12;
  v45 = v10;
  v53 = v12;
  v54 = v13;
  v14 = v12;
  v15 = v13;
  v42 = v16;
  v43 = v13;
  v55 = v16;
  v56 = v17;
  v18 = v16;
  v41 = v17;
  v19 = type metadata accessor for _ShelfCollection.ContentView(0, &v51);
  v49 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v21 = &v39[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v22);
  v46 = &v39[-v23];
  sub_217008444();
  v25 = v24;
  v51 = a3;
  v52 = v11;
  v53 = v14;
  v54 = v15;
  v55 = v18;
  v56 = a4;
  v26 = type metadata accessor for _ShelfCollection(0, &v51);
  v40 = *(a2 + v26[20]);
  v27 = a2 + v26[17];
  v28 = *v27;
  LOBYTE(v18) = *(v27 + 8);
  v29 = (a2 + v26[18]);
  v30 = *v29;
  v31 = v29[1];
  v32 = v47;
  (*(v48 + 16))(v47, a2, a3);
  *(&v38 + 1) = v42;
  *&v38 = v43;
  *(&v37 + 1) = v44;
  *&v37 = v45;
  sub_2169243B4(v40, v28, v18, v30, v31, v32, *(a2 + v26[19]), a3, v21, v25, v37, v38, v41);
  WitnessTable = swift_getWitnessTable();
  v34 = v46;
  sub_2166C24DC(v21, v19, WitnessTable);
  v35 = *(v49 + 8);

  sub_21700DF14();
  v35(v21, v19);
  sub_2166C24DC(v34, v19, WitnessTable);
  return v35(v34, v19);
}

uint64_t sub_2169243B4@<X0>(char a1@<W0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, __int128 a11, __int128 a12, uint64_t a13)
{
  *a9 = a10;
  *(a9 + 8) = a1;
  *(a9 + 16) = a2;
  *(a9 + 24) = a3 & 1;
  *(a9 + 32) = a4;
  *(a9 + 40) = a5;
  v22 = a8;
  v23 = a11;
  v24 = a12;
  v25 = a13;
  v17 = type metadata accessor for _ShelfCollection.ContentView(0, &v22);
  (*(*(a8 - 8) + 32))(a9 + v17[20], a6, a8);
  *(a9 + v17[21]) = a7;
  v18 = v17[22];
  *(a9 + v18) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABCCA0, &qword_217028CE0);
  swift_storeEnumTagMultiPayload();
  v19 = v17[23];
  *(a9 + v19) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7920, &unk_217028D10);
  result = swift_storeEnumTagMultiPayload();
  v21 = a9 + v17[24];
  *v21 = sub_216924518;
  *(v21 + 8) = 0;
  *(v21 + 16) = 0;
  *(a9 + v17[25]) = 0x407F400000000000;
  return result;
}

uint64_t sub_21692451C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v166 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB9E8, qword_217028D30);
  MEMORY[0x28223BE20](v3 - 8);
  v163 = &v121 - v4;
  v174 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABCCA8, &qword_217028DA0);
  v165 = *(v174 - 8);
  MEMORY[0x28223BE20](v174);
  v164 = &v121 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7930, &qword_21701A250);
  MEMORY[0x28223BE20](v6 - 8);
  v162 = &v121 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8600, &qword_217020AD0);
  MEMORY[0x28223BE20](v8 - 8);
  v161 = &v121 - v9;
  v177 = *(a1 - 1);
  v172 = *(v177 + 64);
  MEMORY[0x28223BE20](v10);
  v159 = &v121 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v160 = 0x8000000217084850;
  v154 = a1;
  *&v176 = a1[3];
  *&v175 = a1[5];
  sub_217008024();
  sub_21700B084();
  sub_217009564();
  v12 = sub_21700AD94();
  WitnessTable = swift_getWitnessTable();
  v14 = swift_getWitnessTable();
  v200 = WitnessTable;
  v201 = v14;
  v145 = MEMORY[0x277CE0340];
  v199 = swift_getWitnessTable();
  v15 = swift_getWitnessTable();
  v195 = v12;
  v196 = v15;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v195 = v12;
  v196 = v15;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v16 = sub_217008044();
  v170 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v167 = &v121 - v17;
  v18 = swift_getWitnessTable();
  v195 = v16;
  v196 = v18;
  v144 = v16;
  v19 = v18;
  v146 = v18;
  v20 = swift_getOpaqueTypeMetadata2();
  v156 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v171 = &v121 - v21;
  v195 = v16;
  v196 = v19;
  v22 = swift_getOpaqueTypeConformance2();
  v195 = v20;
  v196 = MEMORY[0x277D839B0];
  v23 = v20;
  v137 = v20;
  v197 = v22;
  v198 = MEMORY[0x277D839C8];
  v138 = v22;
  v151 = swift_getOpaqueTypeMetadata2();
  v155 = *(v151 - 8);
  MEMORY[0x28223BE20](v151);
  v148 = &v121 - v24;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABCCB0, &unk_217028DA8);
  v25 = sub_2170089F4();
  v152 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v149 = &v121 - v26;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB93F0, &qword_21702FD10);
  v141 = v25;
  v27 = sub_2170089F4();
  v153 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v147 = &v121 - v28;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABCC88, &unk_2170541D0);
  v142 = v27;
  sub_2170089F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABCC90, &unk_217028930);
  v29 = sub_2170089F4();
  v150 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v143 = &v121 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB7980, &qword_217017C60);
  v195 = v23;
  v196 = MEMORY[0x277D839B0];
  v197 = v22;
  v198 = MEMORY[0x277D839C8];
  v32 = swift_getOpaqueTypeConformance2();
  v140 = v32;
  v33 = sub_2166D9530(&qword_280E2A838, &qword_27CABCCB0, &unk_217028DA8, MEMORY[0x277CDE2D0]);
  v193 = v32;
  v194 = v33;
  v34 = MEMORY[0x277CDFAD8];
  v35 = swift_getWitnessTable();
  v136 = v35;
  v36 = MEMORY[0x277CE0868];
  v37 = sub_2166D9530(&qword_280E2A758, &qword_27CAB93F0, &qword_21702FD10, MEMORY[0x277CE0868]);
  v191 = v35;
  v192 = v37;
  v38 = swift_getWitnessTable();
  v139 = v38;
  v39 = v36;
  v157 = v36;
  v40 = sub_2166D9530(&qword_280E2A760, &qword_27CABCC88, &unk_2170541D0, v36);
  v189 = v38;
  v190 = v40;
  v158 = v34;
  v41 = swift_getWitnessTable();
  v42 = sub_2166D9530(&qword_280E2A740, &qword_27CABCC90, &unk_217028930, v39);
  v187 = v41;
  v188 = v42;
  v43 = v29;
  v44 = swift_getWitnessTable();
  v45 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB7990, &qword_217017C68);
  v46 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB7998, &qword_217017C70);
  v47 = sub_2167CBD04();
  v195 = v46;
  v196 = v47;
  v48 = swift_getOpaqueTypeConformance2();
  v195 = v45;
  v196 = v48;
  v49 = swift_getOpaqueTypeConformance2();
  v195 = v43;
  v196 = v31;
  v197 = v44;
  v198 = v49;
  v50 = swift_getOpaqueTypeMetadata2();
  v195 = v43;
  v196 = v31;
  v125 = v43;
  v197 = v44;
  v198 = v49;
  v51 = v44;
  v123 = v44;
  v52 = swift_getOpaqueTypeConformance2();
  v53 = sub_2167B2E14();
  v195 = v50;
  v196 = MEMORY[0x277D837D0];
  v54 = MEMORY[0x277D837D0];
  v197 = v52;
  v198 = v53;
  v55 = swift_getOpaqueTypeMetadata2();
  v195 = v50;
  v196 = v54;
  v197 = v52;
  v198 = v53;
  v56 = swift_getOpaqueTypeConformance2();
  v195 = v55;
  v196 = v54;
  v197 = v56;
  v198 = v53;
  v57 = swift_getOpaqueTypeMetadata2();
  v195 = v55;
  v196 = v54;
  v197 = v56;
  v198 = v53;
  v58 = swift_getOpaqueTypeConformance2();
  v195 = v57;
  v196 = v58;
  swift_getOpaqueTypeMetadata2();
  v59 = sub_217009564();
  v127 = v59;
  v133 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v124 = &v121 - v60;
  v61 = sub_2166D9530(&qword_280E48588, &qword_27CABCCA8, &qword_217028DA0, MEMORY[0x277CBCC18]);
  v129 = v61;
  v195 = v57;
  v196 = v58;
  v185 = swift_getOpaqueTypeConformance2();
  v186 = v51;
  v128 = swift_getWitnessTable();
  v195 = v174;
  v196 = v59;
  v197 = v61;
  v198 = v128;
  v131 = sub_217008B74();
  v135 = *(v131 - 8);
  MEMORY[0x28223BE20](v131);
  v126 = &v121 - v62;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABCCB8, &qword_217028DB8);
  v134 = sub_2170089F4();
  v145 = *(v134 - 8);
  MEMORY[0x28223BE20](v134);
  v130 = &v121 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v64);
  v132 = &v121 - v65;
  sub_217009C64();
  v66 = v154;
  *&v67 = v154[2];
  *(&v67 + 1) = v176;
  v176 = v67;
  *&v68 = v154[4];
  *(&v68 + 1) = v175;
  v175 = v68;
  v179 = v68;
  v178 = v67;
  v69 = v154[7];
  v180 = v154[6];
  v70 = v180;
  v181 = v69;
  v71 = v69;
  v72 = v173;
  v182 = v173;
  v73 = v167;
  sub_217008054();
  v74 = v144;
  sub_21700A874();
  v170[1](v73, v74);
  v75 = v177;
  v76 = *(v177 + 16);
  OpaqueTypeMetadata2 = v177 + 16;
  v170 = v76;
  v77 = v159;
  (v76)(v159, v72, v66);
  OpaqueTypeConformance2 = *(v75 + 80);
  v78 = (OpaqueTypeConformance2 + 64) & ~OpaqueTypeConformance2;
  v79 = swift_allocObject();
  v80 = v175;
  *(v79 + 16) = v176;
  *(v79 + 32) = v80;
  v121 = v70;
  *(v79 + 48) = v70;
  *(v79 + 56) = v71;
  v122 = v71;
  v167 = *(v75 + 32);
  v177 = v75 + 32;
  (v167)(v79 + v78, v77, v66);
  (v170)(v77, v72, v66);
  v81 = swift_allocObject();
  v82 = v175;
  *(v81 + 16) = v176;
  *(v81 + 32) = v82;
  *(v81 + 48) = v70;
  *(v81 + 56) = v71;
  v83 = v81 + v78;
  v84 = v78;
  v85 = v77;
  (v167)(v83, v77, v66);
  v86 = v148;
  v87 = v137;
  v88 = v171;
  sub_21700A844();

  (*(v156 + 8))(v88, v87);
  v195 = 0xD000000000000021;
  v196 = v160;
  v89 = v149;
  v90 = v151;
  sub_21700A594();
  (*(v155 + 8))(v86, v90);
  v91 = v173;
  v92 = *v173;
  v93 = v147;
  v94 = v141;
  sub_2169267B8(v141, v136, *v173);
  (*(v152 + 8))(v89, v94);
  v95 = sub_2170098A4();
  v96 = v161;
  __swift_storeEnumTagSinglePayload(v161, 1, 1, v95);
  v97 = v143;
  v98 = v142;
  sub_2169224C4(v96, v142, v139, v92);
  sub_2166997CC(v96, &qword_27CAB8600, &qword_217020AD0);
  (*(v153 + 8))(v93, v98);
  v99 = v162;
  sub_216C0C748();
  v100 = v124;
  v101 = v125;
  sub_216B51454();
  sub_2166997CC(v99, &qword_27CAB7930, &qword_21701A250);
  (*(v150 + 8))(v97, v101);
  v102 = v163;
  sub_216C0C94C();
  v103 = sub_216C093A4();
  sub_2166997CC(v102, &qword_27CABB9E8, qword_217028D30);
  v195 = v103;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABCCC0, &qword_217053CE0);
  sub_2166D9530(&qword_280E48520, &qword_27CABCCC0, &qword_217053CE0, MEMORY[0x277CBCD90]);
  v104 = v164;
  sub_217007E64();

  (v170)(v85, v91, v66);
  v105 = swift_allocObject();
  v106 = v175;
  *(v105 + 16) = v176;
  *(v105 + 32) = v106;
  v107 = v122;
  *(v105 + 48) = v121;
  *(v105 + 56) = v107;
  (v167)(v105 + v84, v85, v66);
  v108 = v126;
  v109 = v104;
  v110 = v127;
  v111 = v174;
  sub_21700ABE4();

  (*(v165 + 8))(v109, v111);
  (*(v133 + 8))(v100, v110);
  swift_getKeyPath();
  type metadata accessor for PersistentPageSectionManager();
  sub_21692A060(&unk_280E32060, type metadata accessor for PersistentPageSectionManager, &unk_21704AF8C);
  v195 = sub_2170081B4();
  v112 = v131;
  v113 = swift_getWitnessTable();
  v114 = v130;
  sub_21700A3D4();

  (*(v135 + 8))(v108, v112);
  v115 = sub_2166D9530(&qword_280E2A780, &qword_27CABCCB8, &qword_217028DB8, v157);
  v183 = v113;
  v184 = v115;
  v116 = v134;
  v117 = swift_getWitnessTable();
  v118 = v132;
  sub_2166C24DC(v114, v116, v117);
  v119 = *(v145 + 8);
  v119(v114, v116);
  sub_2166C24DC(v118, v116, v117);
  return (v119)(v118, v116);
}

uint64_t sub_216925B64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v51 = a7;
  v50 = a6;
  v48 = a5;
  v53 = a8;
  sub_217008024();
  sub_21700B084();
  v44 = sub_217009564();
  v12 = sub_21700AD94();
  v52 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v49 = &v38 - v13;
  WitnessTable = swift_getWitnessTable();
  v15 = swift_getWitnessTable();
  v69 = WitnessTable;
  v70 = v15;
  v42 = swift_getWitnessTable();
  v68 = v42;
  v40 = v12;
  v41 = swift_getWitnessTable();
  v62 = v12;
  v63 = v41;
  v45 = MEMORY[0x277CDEA40];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v47 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v38 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v39 = &v38 - v18;
  v19 = a3;
  v43 = *(a3 - 8);
  MEMORY[0x28223BE20](v20);
  v22 = &v38 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *(a1 + 32);
  v62 = a2;
  v63 = a3;
  v24 = v48;
  v64 = a4;
  v65 = v48;
  v25 = v50;
  v26 = v51;
  v66 = v50;
  v67 = v51;
  v27 = type metadata accessor for _ShelfCollection.ContentView(0, &v62);
  v23(a1 + *(v27 + 80));
  v54 = a2;
  v55 = v19;
  v28 = v19;
  v56 = a4;
  v57 = v24;
  v58 = v25;
  v59 = v26;
  v60 = a1;
  v61 = v22;
  v29 = v49;
  sub_21700AD84();
  v30 = v40;
  v31 = v41;
  OUTLINED_FUNCTION_2_14();
  v32 = v38;
  sub_21700A714();
  (*(v52 + 8))(v29, v30);
  v62 = v30;
  v63 = v31;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v34 = v39;
  v35 = OpaqueTypeMetadata2;
  sub_2166C24DC(v32, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  v36 = *(v47 + 8);
  v36(v32, v35);
  sub_2166C24DC(v34, v35, OpaqueTypeConformance2);
  v36(v34, v35);
  return (*(v43 + 8))(v22, v28);
}

uint64_t sub_216926014@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v49 = a7;
  v50 = a8;
  v46 = a3;
  v47 = a5;
  v48 = a2;
  v54 = a9;
  v12 = sub_21700B084();
  v44 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v43 = v40 - v16;
  v17 = sub_217009714();
  MEMORY[0x28223BE20](v17 - 8);
  v40[1] = v40 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_217008024();
  v42 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v21 = v40 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v41 = v40 - v23;
  v24 = sub_217009564();
  v52 = *(v24 - 8);
  v53 = v24;
  MEMORY[0x28223BE20](v24);
  v51 = v40 - v25;
  v26 = *(a1 + 8);
  sub_2170093C4();
  v45 = v40;
  v55 = v46;
  v56 = a4;
  v57 = v47;
  v58 = a6;
  v59 = v49;
  v60 = v50;
  v61 = v48;
  if (v26 == 1)
  {
    sub_21692237C();
    sub_217008014();
    WitnessTable = swift_getWitnessTable();
    v28 = v41;
    sub_2166C24DC(v21, v19, WitnessTable);
    v29 = *(v42 + 8);
    v29(v21, v19);
    sub_2166C24DC(v28, v19, WitnessTable);
    swift_getWitnessTable();
    v30 = v51;
    sub_2166C2718();
    v29(v21, v19);
    v31 = v28;
    v32 = v19;
  }

  else
  {
    sub_21700B074();
    v33 = swift_getWitnessTable();
    v34 = v43;
    sub_2166C24DC(v14, v12, v33);
    v29 = *(v44 + 8);
    v29(v14, v12);
    sub_2166C24DC(v34, v12, v33);
    swift_getWitnessTable();
    v30 = v51;
    sub_2166C2CB0();
    v29(v14, v12);
    v31 = v34;
    v32 = v12;
  }

  v29(v31, v32);
  v35 = swift_getWitnessTable();
  v36 = swift_getWitnessTable();
  v62 = v35;
  v63 = v36;
  v37 = v53;
  v38 = swift_getWitnessTable();
  sub_2166C24DC(v30, v37, v38);
  return (*(v52 + 8))(v30, v37);
}

uint64_t sub_21692659C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_16();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2166C24DC(v12, v13, v14);
  sub_2166C24DC(v11, a3, a5);
  return (*(v8 + 8))(v11, a3);
}

uint64_t sub_216926678@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, _BYTE *a8@<X8>)
{
  v22[0] = a2;
  v22[1] = a3;
  v22[2] = a4;
  v22[3] = a5;
  v22[4] = a6;
  v22[5] = a7;
  result = type metadata accessor for _ShelfCollection.ContentView(0, v22);
  v11 = *(*(a1 + *(result + 84)) + 16);
  if (v11)
  {
    v12 = result;
    sub_217008704();
    v14 = v13;
    sub_217008704();
    v16 = v14 + v15;
    sub_217008714();
    v18 = v16 + v17;
    sub_2170086F4();
    v20 = v18 + v19 + *(a1 + *(v12 + 100));
    result = sub_2170086E4();
    LOBYTE(v11) = v21 <= v20;
  }

  *a8 = v11;
  return result;
}

void sub_216926720(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (*a2 == 1)
  {
    v16[10] = v9;
    v16[11] = v10;
    v16[0] = a4;
    v16[1] = a5;
    v16[2] = a6;
    v16[3] = a7;
    v16[4] = a8;
    v16[5] = a9;
    v11 = *(a3 + *(type metadata accessor for _ShelfCollection.ContentView(0, v16) + 84));
    v12 = *(v11 + 16);
    if (v12)
    {
      v13 = v11 + 40;
      do
      {
        v14 = *(v13 - 8);

        v14(v15);

        v13 += 16;
        --v12;
      }

      while (v12);
    }
  }
}

uint64_t sub_2169267B8(uint64_t a1, uint64_t a2, double a3)
{
  swift_getKeyPath();
  sub_21700A3D4();
}

int *sub_216926834(int *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(result + 1);
  if (v8)
  {
    v9 = *(result + 2);
    v10 = *result;
    v11[0] = a3;
    v11[1] = a4;
    v11[2] = a5;
    v11[3] = a6;
    v11[4] = a7;
    v11[5] = a8;
    type metadata accessor for _ShelfCollection.ContentView(0, v11);
    type metadata accessor for PersistentPageSectionManager();
    sub_21692A060(&unk_280E32060, type metadata accessor for PersistentPageSectionManager, &unk_21704AF8C);
    sub_2170081B4();
    sub_216B7354C(v10 & 1, v8, v9);
  }

  return result;
}

void sub_21692693C(uint64_t a1@<X8>)
{
  *a1 = sub_216926928();
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
}

uint64_t sub_216926968(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_216927610();

  return MEMORY[0x282130D40](a1, a2, a3, a4, v8);
}

uint64_t sub_2169269CC@<X0>(_BYTE *a1@<X8>)
{
  result = OUTLINED_FUNCTION_10_4();
  *a1 = result;
  return result;
}

uint64_t sub_2169269F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_216927664();

  return MEMORY[0x282130D40](a1, a2, a3, a4, v8);
}

uint64_t sub_216926A58@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2167CB87C();
  *a1 = result;
  return result;
}

uint64_t sub_216926A80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v5 = v4;
  v35 = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8600, &qword_217020AD0);
  v10 = OUTLINED_FUNCTION_2(v9);
  v12 = v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v34 - v13;
  OUTLINED_FUNCTION_16();
  v16 = v15;
  v18 = *(v17 + 64);
  v20 = MEMORY[0x28223BE20](v19);
  (*(v16 + 16))(&v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), v5, a2, v20);
  sub_2169270E4(a1, v14);
  v21 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v22 = (v18 + v21 + *(v12 + 80)) & ~*(v12 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = a2;
  *(v23 + 24) = a3;
  (*(v16 + 32))(v23 + v21, &v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), a2);
  sub_216927154(v14, v23 + v22);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABCC88, &unk_2170541D0);
  OUTLINED_FUNCTION_19_0();
  sub_2170089F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABCC90, &unk_217028930);
  OUTLINED_FUNCTION_19_0();
  sub_2170089F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB93F0, &qword_21702FD10);
  sub_2170089F4();
  OUTLINED_FUNCTION_10_32();
  v26 = sub_2166D9530(v24, &qword_27CABCC88, &unk_2170541D0, v25);
  v40 = a3;
  v41 = v26;
  WitnessTable = swift_getWitnessTable();
  v28 = sub_2166D9530(&qword_280E2A740, &qword_27CABCC90, &unk_217028930, v21);
  v38 = WitnessTable;
  v39 = v28;
  OUTLINED_FUNCTION_26_22();
  v29 = swift_getWitnessTable();
  v30 = sub_2166D9530(&qword_280E2A758, &qword_27CAB93F0, &qword_21702FD10, v21);
  v36 = v29;
  v37 = v30;
  swift_getWitnessTable();
  result = sub_217008594();
  v32 = v35;
  *v35 = result;
  v32[1] = v33;
  return result;
}

uint64_t sub_216926D94@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v32 = a1;
  v33 = a4;
  v31 = a2;
  v35 = a5;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABCC88, &unk_2170541D0);
  sub_2170089F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABCC90, &unk_217028930);
  v6 = sub_2170089F4();
  v34 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v30 - v7;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB93F0, &qword_21702FD10);
  v9 = sub_2170089F4();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v30 - v14;
  sub_217008444();
  v16 = a3;
  v17 = v33;
  sub_2169224C4(v31, v16, v33, v18);
  sub_217008444();
  v20 = v19;
  v21 = MEMORY[0x277CE0868];
  v22 = sub_2166D9530(&qword_280E2A760, &qword_27CABCC88, &unk_2170541D0, MEMORY[0x277CE0868]);
  v40 = v17;
  v41 = v22;
  WitnessTable = swift_getWitnessTable();
  v24 = sub_2166D9530(&qword_280E2A740, &qword_27CABCC90, &unk_217028930, v21);
  v38 = WitnessTable;
  v39 = v24;
  v25 = swift_getWitnessTable();
  sub_2169267B8(v6, v25, v20);
  (*(v34 + 8))(v8, v6);
  v26 = sub_2166D9530(&qword_280E2A758, &qword_27CAB93F0, &qword_21702FD10, v21);
  v36 = v25;
  v37 = v26;
  v27 = swift_getWitnessTable();
  sub_2166C24DC(v12, v9, v27);
  v28 = *(v10 + 8);
  v28(v12, v9);
  sub_2166C24DC(v15, v9, v27);
  return (v28)(v15, v9);
}

uint64_t sub_2169270E4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8600, &qword_217020AD0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_216927154(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8600, &qword_217020AD0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2169271C4@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  OUTLINED_FUNCTION_16();
  v7 = *(v6 + 64);
  v8 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8600, &qword_217020AD0);
  OUTLINED_FUNCTION_36(v9);
  v11 = v1 + ((v8 + v7 + *(v10 + 80)) & ~*(v10 + 80));

  return sub_216926D94(v1 + v8, v11, v3, v4, a1);
}

unint64_t sub_2169272B4()
{
  result = qword_280E2EAC8;
  if (!qword_280E2EAC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2EAC8);
  }

  return result;
}

uint64_t sub_216927308(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABCC88, &unk_2170541D0);
  v6 = sub_2170089F4();
  OUTLINED_FUNCTION_1();
  v8 = v7;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v9);
  v11 = v15 - v10;
  v12 = qword_217028DF0[a1];
  swift_getKeyPath();
  LOBYTE(v16) = a1;
  sub_21700A3D4();

  swift_getKeyPath();
  v16 = 0;
  v17 = v12;
  v18 = 0;
  v19 = v12;
  v13 = sub_2166D9530(&qword_280E2A760, &qword_27CABCC88, &unk_2170541D0, MEMORY[0x277CE0868]);
  v15[0] = a4;
  v15[1] = v13;
  swift_getWitnessTable();
  sub_21700A3D4();

  return (*(v8 + 8))(v11, v6);
}

unint64_t sub_2169274D4()
{
  result = qword_280E2F200[0];
  if (!qword_280E2F200[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280E2F200);
  }

  return result;
}

unint64_t sub_216927528()
{
  result = qword_280E30C90[0];
  if (!qword_280E30C90[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280E30C90);
  }

  return result;
}

unint64_t sub_21692757C()
{
  result = qword_280E2D1A8;
  if (!qword_280E2D1A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2D1A8);
  }

  return result;
}

unint64_t sub_216927610()
{
  result = qword_280E2B4F8;
  if (!qword_280E2B4F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2B4F8);
  }

  return result;
}

unint64_t sub_216927664()
{
  result = qword_280E2C438;
  if (!qword_280E2C438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2C438);
  }

  return result;
}

unint64_t sub_2169276D0(uint64_t a1)
{
  sub_2169294B0(319, &qword_280E29DF0, &qword_27CABCC98, &unk_21702A060, MEMORY[0x277D83940]);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    v2 = swift_checkMetadataState();
    if (v4 <= 0x3F)
    {
      v2 = sub_2166B0B84();
      if (v5 <= 0x3F)
      {
        sub_216927B20();
        if (v7 > 0x3F)
        {
          return v6;
        }

        else
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return v2;
}

uint64_t sub_2169277DC(uint64_t result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 80);
  if (v6 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v5 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v8 >= a2)
  {
LABEL_26:
    if ((v6 & 0x80000000) != 0)
    {
      return __swift_getEnumTagSinglePayload((result + v7 + 8) & ~v7, v6, v4);
    }

    else
    {
      v17 = *result;
      if (*result >= 0xFFFFFFFFuLL)
      {
        LODWORD(v17) = -1;
      }

      return (v17 + 1);
    }
  }

  else
  {
    v9 = ((((((*(*(v4 - 8) + 64) + ((v7 + 8) & ~v7) + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 18) & 0xFFFFFFFFFFFFFFF8) + 16;
    v10 = a2 - v8;
    v11 = v9 & 0xFFFFFFF8;
    if ((v9 & 0xFFFFFFF8) != 0)
    {
      v12 = 2;
    }

    else
    {
      v12 = v10 + 1;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    switch(v14)
    {
      case 1:
        v15 = *(result + v9);
        if (!v15)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 2:
        v15 = *(result + v9);
        if (!v15)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v15 = *(result + v9);
        if (!v15)
        {
          goto LABEL_26;
        }

LABEL_22:
        v16 = v15 - 1;
        if (v11)
        {
          v16 = 0;
          LODWORD(v11) = *result;
        }

        result = v8 + (v11 | v16) + 1;
        break;
      default:
        goto LABEL_26;
    }
  }

  return result;
}

void sub_216927934(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = *(v7 + 84);
  }

  v10 = *(v7 + 80);
  v11 = ((((((*(*(v6 - 8) + 64) + ((v10 + 8) & ~v10) + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 18) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v9 >= a3)
  {
    v15 = 0;
  }

  else
  {
    v12 = a3 - v9;
    if (((((((*(*(v6 - 8) + 64) + ((v10 + 8) & ~v10) + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 18) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v13 = v12 + 1;
    }

    else
    {
      v13 = 2;
    }

    if (v13 >= 0x10000)
    {
      v14 = 4;
    }

    else
    {
      v14 = 2;
    }

    if (v13 < 0x100)
    {
      v14 = 1;
    }

    if (v13 >= 2)
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }
  }

  if (a2 <= v9)
  {
    switch(v15)
    {
      case 1:
        a1[v11] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 2:
        *&a1[v11] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 3:
LABEL_43:
        __break(1u);
        break;
      case 4:
        *&a1[v11] = 0;
        goto LABEL_31;
      default:
LABEL_31:
        if (a2)
        {
LABEL_32:
          if ((v8 & 0x80000000) != 0)
          {
            v19 = &a1[v10 + 8] & ~v10;

            __swift_storeEnumTagSinglePayload(v19, a2, v8, v6);
          }

          else
          {
            if ((a2 & 0x80000000) != 0)
            {
              v18 = a2 & 0x7FFFFFFF;
            }

            else
            {
              v18 = (a2 - 1);
            }

            *a1 = v18;
          }
        }

        break;
    }
  }

  else
  {
    if (((((((*(*(v6 - 8) + 64) + ((v10 + 8) & ~v10) + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 18) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v16 = a2 - v9;
    }

    else
    {
      v16 = 1;
    }

    if (((((((*(*(v6 - 8) + 64) + ((v10 + 8) & ~v10) + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 18) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v17 = ~v9 + a2;
      bzero(a1, v11);
      *a1 = v17;
    }

    switch(v15)
    {
      case 1:
        a1[v11] = v16;
        break;
      case 2:
        *&a1[v11] = v16;
        break;
      case 3:
        goto LABEL_43;
      case 4:
        *&a1[v11] = v16;
        break;
      default:
        return;
    }
  }
}