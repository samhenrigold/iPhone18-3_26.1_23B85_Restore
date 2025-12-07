uint64_t sub_24EFC6778@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_24F91F7C8();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = sub_24F92B088();
  v6 = [a1 vendorName];
  if (v6)
  {
    v7 = v6;
    sub_24F92B0D8();
  }

  else
  {
    sub_24F92B018();
    if (qword_27F211820 != -1)
    {
      swift_once();
    }

    v8 = qword_27F24F280;
    sub_24F91F778();
    sub_24F92B148();
  }

  sub_24E600AEC();
  v9 = sub_24F925E18();
  v11 = v10;
  v13 = v12;
  v15 = v14;
  KeyPath = swift_getKeyPath();
  if (qword_27F210D48 != -1)
  {
    swift_once();
  }

  v17 = qword_27F39D2D8;
  v18 = swift_getKeyPath();
  v19 = swift_getKeyPath();
  *a2 = v9;
  *(a2 + 8) = v11;
  *(a2 + 16) = v13 & 1;
  *(a2 + 24) = v15;
  *(a2 + 32) = KeyPath;
  *(a2 + 40) = 1;
  *(a2 + 48) = 0;
  *(a2 + 56) = v18;
  *(a2 + 64) = v17;
  *(a2 + 72) = v19;
  *(a2 + 80) = 0x3FE999999999999ALL;
}

uint64_t sub_24EFC6A04@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v134 = a2;
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235DE8, &qword_24F9B99C8) - 8;
  MEMORY[0x28223BE20](v133);
  v124 = &v101 - v3;
  v4 = sub_24F9241F8();
  v5 = *(v4 - 8);
  v129 = v4;
  v130 = v5;
  MEMORY[0x28223BE20](v4);
  v125 = &v101 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = sub_24F923DF8();
  v123 = *(v122 - 8);
  MEMORY[0x28223BE20](v122);
  v121 = &v101 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = sub_24F923418();
  v114 = *(v113 - 8);
  MEMORY[0x28223BE20](v113);
  v104 = (&v101 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for OverlayGameControllerControls(0);
  v107 = *(v9 - 8);
  v135 = *(v107 + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v101 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235DF0, &qword_24F9B99D0);
  MEMORY[0x28223BE20](v106);
  v13 = &v101 - v12;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235DF8, &qword_24F9B99D8);
  v116 = *(v115 - 8);
  MEMORY[0x28223BE20](v115);
  v136 = &v101 - v14;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235E00, &qword_24F9B99E0);
  v118 = *(v117 - 8);
  MEMORY[0x28223BE20](v117);
  v111 = &v101 - v15;
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235E08, &qword_24F9B99E8);
  v120 = *(v119 - 8);
  MEMORY[0x28223BE20](v119);
  v112 = &v101 - v16;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235E10, &qword_24F9B99F0);
  v108 = *(v110 - 8);
  MEMORY[0x28223BE20](v110);
  v105 = &v101 - v17;
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235E18, &qword_24F9B99F8);
  MEMORY[0x28223BE20](v127);
  v109 = &v101 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235E20, &qword_24F9B9A00);
  v131 = *(v19 - 8);
  v132 = v19;
  MEMORY[0x28223BE20](v19);
  v128 = &v101 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v126 = &v101 - v22;
  v138 = a1;
  v137 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235E28, &qword_24F9B9A08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235E30, &qword_24F9B9A10);
  v23 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F235E38, &qword_24F9B9A18);
  v24 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27F23B740, &qword_24F93EC10);
  v25 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F235E40, &qword_24F9B9A20);
  v26 = sub_24EFCCB44();
  v140 = v25;
  v141 = v26;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v28 = sub_24EFCC404();
  v140 = v23;
  v141 = v24;
  v142 = OpaqueTypeConformance2;
  v143 = v28;
  swift_getOpaqueTypeConformance2();
  sub_24E602068(&qword_27F235E80, &qword_27F235E30, &qword_24F9B9A10, MEMORY[0x277CE14C0]);
  v102 = v13;
  sub_24F925AB8();
  sub_24EFCC4A4(a1, v11);
  v29 = (*(v107 + 80) + 16) & ~*(v107 + 80);
  v30 = swift_allocObject();
  v31 = v11;
  sub_24EFCC508(v11, v30 + v29);
  v32 = v106;
  v33 = &v13[*(v106 + 36)];
  *v33 = sub_24EFCCF38;
  v33[1] = v30;
  v33[2] = 0;
  v33[3] = 0;
  v34 = v104;
  v103 = a1;
  sub_24EFC5B8C(v104);
  sub_24EFCC4A4(a1, v31);
  v35 = swift_allocObject();
  sub_24EFCC508(v31, v35 + v29);
  v36 = sub_24EFCD018();
  v37 = sub_24EFCC2E8(&qword_27F235EA0, MEMORY[0x277CDD6C8], MEMORY[0x277CDD6D0]);
  v38 = v34;
  v39 = v32;
  v40 = v113;
  v41 = v102;
  sub_24F926AB8();

  (*(v114 + 8))(v38, v40);
  sub_24E601704(v41, &qword_27F235DF0, &qword_24F9B99D0);
  v42 = v103;
  v139 = sub_24EFC5D8C() & 1;
  sub_24EFCC4A4(v42, v31);
  v43 = v105;
  v44 = swift_allocObject();
  sub_24EFCC508(v31, v44 + v29);
  v140 = v39;
  v141 = v40;
  v142 = v36;
  v143 = v37;
  v45 = swift_getOpaqueTypeConformance2();
  v46 = MEMORY[0x277D839B0];
  v47 = MEMORY[0x277D839C8];
  v48 = v111;
  v49 = v115;
  v50 = v136;
  sub_24F926AB8();

  (*(v116 + 8))(v50, v49);
  v51 = v121;
  sub_24F923DE8();
  v140 = v49;
  v141 = v46;
  v52 = v124;
  v142 = v45;
  v143 = v47;
  v53 = swift_getOpaqueTypeConformance2();
  v54 = sub_24EFCC2E8(&qword_27F230BA8, MEMORY[0x277CDD9E0], MEMORY[0x277CDD9D8]);
  v55 = v112;
  v56 = v117;
  v57 = v122;
  v58 = v48;
  v59 = v109;
  sub_24F926BB8();
  v60 = v51;
  v61 = v57;
  (*(v123 + 8))(v60, v57);
  (*(v118 + 8))(v58, v56);
  v62 = v125;
  sub_24F9241E8();
  v140 = v56;
  v141 = v61;
  v142 = v53;
  v143 = v54;
  swift_getOpaqueTypeConformance2();
  sub_24EFCC2E8(&qword_27F212838, MEMORY[0x277CDDB18], MEMORY[0x277CDDB08]);
  v63 = v119;
  v64 = v129;
  sub_24F926178();
  (*(v130 + 8))(v62, v64);
  (*(v120 + 8))(v55, v63);
  v65 = *(sub_24F924258() + 20);
  v66 = *MEMORY[0x277CE0118];
  v67 = sub_24F924B38();
  (*(*(v67 - 8) + 104))(&v52[v65], v66, v67);
  __asm { FMOV            V0.2D, #5.0 }

  *v52 = _Q0;
  *&v52[*(sub_24F924248() + 20)] = 0xC010000000000000;
  _s7SwiftUI5ColorV12GameStoreKitE05focusC0ACvgZ_0();
  v73 = sub_24F926D08();

  *&v52[*(v133 + 60)] = v73;
  sub_24E60169C(v52, v59, &qword_27F235DE8, &qword_24F9B99C8);
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235EA8, &qword_24F9B9A48);
  v75 = v108;
  v76 = v110;
  (*(v108 + 16))(v59 + v74[9], v43);
  v77 = v59 + v74[10];
  *v77 = sub_24F923398() & 1;
  *(v77 + 8) = v78;
  *(v77 + 16) = v79 & 1;
  v80 = v59 + v74[11];
  *v80 = swift_getKeyPath();
  *(v80 + 8) = 0;
  if (qword_27F211808 != -1)
  {
    swift_once();
  }

  v81 = qword_27F24E488;
  v82 = sub_24F923398();
  v84 = v83;
  v86 = v85;
  v87 = v59 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235EB0, &qword_24F9B9A50) + 36);
  *v87 = v81;
  *(v87 + 8) = v82 & 1;
  *(v87 + 16) = v84;
  *(v87 + 24) = v86 & 1;
  LOBYTE(v81) = sub_24F923398();
  v89 = v88;
  LOBYTE(v84) = v90;
  sub_24E601704(v52, &qword_27F235DE8, &qword_24F9B99C8);
  (*(v75 + 8))(v43, v76);
  v91 = v59 + *(v127 + 36);
  *v91 = v81 & 1;
  *(v91 + 8) = v89;
  *(v91 + 16) = v84 & 1;
  sub_24EFCC920(&qword_27F235EB8, &qword_27F235E18, &qword_24F9B99F8, sub_24EFCD150);
  v92 = v126;
  sub_24F926888();
  sub_24E601704(v59, &qword_27F235E18, &qword_24F9B99F8);
  v94 = v131;
  v93 = v132;
  v95 = *(v131 + 16);
  v96 = v128;
  v95(v128, v92, v132);
  v97 = v134;
  v95(v134, v96, v93);
  v98 = &v97[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235ED0, &qword_24F9B9A58) + 48)];
  *v98 = 0;
  v98[8] = 1;
  v99 = *(v94 + 8);
  v99(v92, v93);
  return (v99)(v96, v93);
}

uint64_t sub_24EFC794C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v77 = a2;
  v3 = sub_24F91F7C8();
  MEMORY[0x28223BE20](v3 - 8);
  v73 = &v62 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_24F92B088();
  MEMORY[0x28223BE20](v5 - 8);
  v72 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222D08, &unk_24F973580);
  v76 = *(v84 - 8);
  MEMORY[0x28223BE20](v84);
  v75 = &v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v74 = &v62 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235EE0, &qword_24F9B9AA0);
  v69 = *(v10 - 8);
  v70 = v10;
  MEMORY[0x28223BE20](v10);
  v81 = &v62 - v11;
  v68 = sub_24F9271F8();
  v67 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v66 = &v62 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v80 = &v62 - v14;
  v15 = type metadata accessor for OverlayGameControllerControls(0);
  v83 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v82 = v16;
  v17 = &v62 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235EE8, &qword_24F9B9AA8);
  v64 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v79 = &v62 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v78 = &v62 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235EF0, &qword_24F9B9AB0);
  MEMORY[0x28223BE20](v21 - 8);
  v71 = &v62 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v85 = &v62 - v24;
  type metadata accessor for GCOverlaySettingsObserver(0);
  sub_24EFCC2E8(&qword_27F235C90, type metadata accessor for GCOverlaySettingsObserver, &unk_24F9B95C8);
  sub_24F923628();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24F923098();

  if (v86)
  {

    sub_24F923628();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_24F923098();

    swift_getKeyPath();
    v63 = a1;
    v62 = v17;
    sub_24EFCC4A4(a1, v17);
    v25 = (*(v83 + 80) + 16) & ~*(v83 + 80);
    v26 = swift_allocObject();
    sub_24EFCC508(v17, v26 + v25);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235C20, &qword_24F9B95A0);
    sub_24E602068(&qword_27F235F00, &qword_27F235C20, &qword_24F9B95A0, MEMORY[0x277D83980]);
    sub_24EFCD310();
    sub_24E602068(&qword_27F222D00, &qword_27F222D08, &unk_24F973580, MEMORY[0x277CDF028]);
    v27 = v78;
    sub_24F927228();
    v28 = v80;
    sub_24F9271E8();
    v29 = v64;
    v30 = *(v64 + 16);
    v31 = v79;
    v32 = v27;
    v33 = v65;
    v30(v79, v32, v65);
    v34 = v67;
    v35 = *(v67 + 16);
    v36 = v66;
    v37 = v28;
    v38 = v68;
    v35(v66, v37, v68);
    v30(v81, v31, v33);
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235F10, &unk_24F9B9AE0);
    v40 = v81;
    v35(&v81[*(v39 + 48)], v36, v38);
    v41 = *(v34 + 8);
    v41(v80, v38);
    v42 = *(v29 + 8);
    v42(v78, v33);
    v41(v36, v38);
    v42(v79, v33);
    v43 = v85;
    sub_24EFCD378(v40, v85);
    v44 = 0;
    v45 = v63;
    v46 = v62;
  }

  else
  {
    v44 = 1;
    v45 = a1;
    v43 = v85;
    v46 = v17;
  }

  v47 = v83;
  (*(v69 + 56))(v43, v44, 1, v70);
  sub_24F92B018();
  if (qword_27F211820 != -1)
  {
    swift_once();
  }

  v48 = qword_27F24F280;
  sub_24F91F778();
  v86 = sub_24F92B148();
  v87 = v49;
  sub_24EFCC4A4(v45, v46);
  v50 = (*(v47 + 80) + 16) & ~*(v47 + 80);
  v51 = swift_allocObject();
  sub_24EFCC508(v46, v51 + v50);
  sub_24E600AEC();
  v52 = v74;
  sub_24F926FB8();
  v53 = v71;
  sub_24E60169C(v43, v71, &qword_27F235EF0, &qword_24F9B9AB0);
  v55 = v75;
  v54 = v76;
  v56 = *(v76 + 16);
  v57 = v84;
  v56(v75, v52, v84);
  v58 = v77;
  sub_24E60169C(v53, v77, &qword_27F235EF0, &qword_24F9B9AB0);
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235EF8, &unk_24F9B9AB8);
  v56((v58 + *(v59 + 48)), v55, v57);
  v60 = *(v54 + 8);
  v60(v52, v57);
  sub_24E601704(v85, &qword_27F235EF0, &qword_24F9B9AB0);
  v60(v55, v57);
  return sub_24E601704(v53, &qword_27F235EF0, &qword_24F9B9AB0);
}

uint64_t sub_24EFC8390(void **a1, uint64_t a2)
{
  v4 = type metadata accessor for OverlayGameControllerControls(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  *&v7 = MEMORY[0x28223BE20](v4 - 8).n128_u64[0];
  v8 = *a1;
  v9 = [v8 name];
  v10 = sub_24F92B0D8();
  v12 = v11;

  v17[0] = v10;
  v17[1] = v12;
  sub_24EFCC4A4(a2, v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v14 = swift_allocObject();
  sub_24EFCC508(v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13);
  *(v14 + ((v6 + v13 + 7) & 0xFFFFFFFFFFFFFFF8)) = v8;
  sub_24E600AEC();
  v15 = v8;
  return sub_24F926FB8();
}

double sub_24EFC850C(uint64_t a1, uint64_t a2)
{
  type metadata accessor for OverlayGameControllerControls(0);
  type metadata accessor for GCOverlaySettingsObserver(0);
  sub_24EFCC2E8(&qword_27F235C90, type metadata accessor for GCOverlaySettingsObserver, &unk_24F9B95C8);
  [*(sub_24F923628() + OBJC_IVAR____TtC12GameStoreKit25GCOverlaySettingsObserver_settings) setSelectedProfile_];

  return result;
}

uint64_t sub_24EFC85E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v27 = sub_24F9248C8();
  v3 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235E40, &qword_24F9B9A20);
  MEMORY[0x28223BE20](v6);
  v8 = &v26 - v7;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235E38, &qword_24F9B9A18);
  v29 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v10 = &v26 - v9;
  v11 = sub_24F9249A8();
  LOBYTE(v36) = 0;
  v28 = a1;
  sub_24EFC8AB4(v40);
  *&v39[7] = v40[0];
  *&v39[23] = v40[1];
  *&v39[39] = v40[2];
  *&v39[55] = v40[3];
  v12 = v36;
  if (qword_27F210D58 != -1)
  {
    swift_once();
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F10, &unk_24F93BE10);
  v14 = __swift_project_value_buffer(v13, qword_27F39D2E8);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235E68, &qword_24F9B9A30);
  sub_24E60169C(v14, &v8[*(v15 + 36)], &qword_27F213F10, &unk_24F93BE10);
  v16 = *v39;
  *(v8 + 33) = *&v39[16];
  *(v8 + 49) = *&v39[32];
  *(v8 + 65) = *&v39[48];
  *v8 = v11;
  *(v8 + 1) = 0x4010000000000000;
  v8[16] = v12;
  *(v8 + 10) = *&v39[63];
  *(v8 + 17) = v16;
  if (qword_27F210D50 != -1)
  {
    swift_once();
  }

  v17 = qword_27F39D2E0;
  KeyPath = swift_getKeyPath();
  v19 = &v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235E58, &qword_24F9B9A28) + 36)];
  *v19 = KeyPath;
  v19[1] = v17;
  v8[*(v6 + 36)] = 0;

  sub_24F9248B8();
  v20 = sub_24EFCCB44();
  _s7SwiftUI4ViewP12GameStoreKitE18componentFocusable_12interactionsQrSb_AA17FocusInteractionsVtF_0();
  (*(v3 + 8))(v5, v27);
  sub_24E601704(v8, &qword_27F235E40, &qword_24F9B9A20);
  v21 = v28 + *(type metadata accessor for OverlayGameControllerControls(0) + 36);
  v22 = *(v21 + 32);
  v23 = *(v21 + 16);
  v36 = *v21;
  v37 = v23;
  v38 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235ED8, &qword_24F9B9A60);
  sub_24F923348();
  v36 = v34;
  v37 = v35;
  v34 = xmmword_24F9B9570;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23B740, &qword_24F93EC10);
  v32 = v6;
  v33 = v20;
  swift_getOpaqueTypeConformance2();
  sub_24EFCC404();
  v24 = v30;
  sub_24F9269B8();

  return (*(v29 + 8))(v10, v24);
}

uint64_t sub_24EFC8AB4@<X0>(uint64_t a2@<X8>)
{
  v3 = sub_24F91F7C8();
  MEMORY[0x28223BE20](v3 - 8);
  v4 = sub_24F92B088();
  MEMORY[0x28223BE20](v4 - 8);
  type metadata accessor for OverlayGameControllerControls(0);
  type metadata accessor for GCOverlaySettingsObserver(0);
  sub_24EFCC2E8(&qword_27F235C90, type metadata accessor for GCOverlaySettingsObserver, &unk_24F9B95C8);
  sub_24F923628();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24F923098();

  if (v17)
  {
    v5 = [v17 name];

    sub_24F92B0D8();
  }

  else
  {
    sub_24F92B018();
    if (qword_27F211820 != -1)
    {
      swift_once();
    }

    v6 = qword_27F24F280;
    sub_24F91F778();
    sub_24F92B148();
  }

  sub_24E600AEC();
  v7 = sub_24F925E18();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  KeyPath = swift_getKeyPath();
  v15 = sub_24F926DF8();
  *a2 = v7;
  *(a2 + 8) = v9;
  *(a2 + 16) = v11 & 1;
  *(a2 + 24) = v13;
  *(a2 + 32) = KeyPath;
  *(a2 + 40) = 1;
  *(a2 + 48) = 0;
  *(a2 + 56) = v15;
  sub_24E5FD138(v7, v9, v11 & 1);

  sub_24E600B40(v7, v9, v11 & 1);
}

void sub_24EFC8DF8(uint64_t a1)
{
  type metadata accessor for OverlayGameControllerControls(0);
  type metadata accessor for GCOverlaySettingsObserver(0);
  sub_24EFCC2E8(&qword_27F235C90, type metadata accessor for GCOverlaySettingsObserver, &unk_24F9B95C8);
  [*(sub_24F923628() + OBJC_IVAR____TtC12GameStoreKit25GCOverlaySettingsObserver_settings) refresh];

  v1 = sub_24F923628();
  sub_24EFC5EE4();
  v2 = *(v1 + OBJC_IVAR____TtC12GameStoreKit25GCOverlaySettingsObserver_settings);
  if (v3)
  {
    v4 = sub_24F92B098();
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  [v2 setGameBundleIdentifier_];
}

double sub_24EFC8F4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_24F923418();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 104))(v7, *MEMORY[0x277CDD6B8], v3, v5);
  v8 = sub_24F923408();
  (*(v4 + 8))(v7, v3);
  if (v8)
  {
    type metadata accessor for OverlayGameControllerControls(0);
    type metadata accessor for GCOverlaySettingsObserver(0);
    sub_24EFCC2E8(&qword_27F235C90, type metadata accessor for GCOverlaySettingsObserver, &unk_24F9B95C8);
    [*(sub_24F923628() + OBJC_IVAR____TtC12GameStoreKit25GCOverlaySettingsObserver_settings) refresh];
  }

  return result;
}

double sub_24EFC90E4(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  if (*a2 == 1)
  {
    type metadata accessor for OverlayGameControllerControls(0);
    type metadata accessor for GCOverlaySettingsObserver(0);
    sub_24EFCC2E8(&qword_27F235C90, type metadata accessor for GCOverlaySettingsObserver, &unk_24F9B95C8);
    [*(sub_24F923628() + OBJC_IVAR____TtC12GameStoreKit25GCOverlaySettingsObserver_settings) refresh];
  }

  return result;
}

uint64_t sub_24EFC91BC@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_24F91F7C8();
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v51 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_24F92B088();
  MEMORY[0x28223BE20](v5 - 8);
  sub_24F92B018();
  if (qword_27F211820 != -1)
  {
    swift_once();
  }

  v6 = qword_27F24F280;
  v7 = qword_27F24F280;
  sub_24F91F778();
  v8 = v7;
  v51[2] = v6;
  v61 = sub_24F92B148();
  v62 = v9;
  v51[1] = sub_24E600AEC();
  v10 = sub_24F925E18();
  v12 = v11;
  v14 = v13;
  sub_24E72FF4C();
  v15 = sub_24F925C58();
  v17 = v16;
  v51[0] = v4;
  v19 = v18;
  sub_24E600B40(v10, v12, v14 & 1);

  if (qword_27F210D48 != -1)
  {
    swift_once();
  }

  v20 = sub_24F925C98();
  v54 = v21;
  v55 = v20;
  v52 = v22;
  v56 = v23;
  sub_24E600B40(v15, v17, v19 & 1);

  KeyPath = swift_getKeyPath();
  sub_24F92B018();
  sub_24F91F778();
  v61 = sub_24F92B148();
  v62 = v24;
  v25 = sub_24F925E18();
  v27 = v26;
  v29 = v28;
  if (qword_27F210D58 != -1)
  {
    swift_once();
  }

  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F10, &unk_24F93BE10);
  __swift_project_value_buffer(v30, qword_27F39D2E8);
  sub_24E602068(&qword_27F214428, &qword_27F213F10, &unk_24F93BE10, MEMORY[0x277CE03C0]);
  v31 = sub_24F925C58();
  v33 = v32;
  v35 = v34;
  sub_24E600B40(v25, v27, v29 & 1);

  if (qword_27F210D50 != -1)
  {
    swift_once();
  }

  v36 = sub_24F925C98();
  v38 = v37;
  v40 = v39;
  v42 = v41;
  sub_24E600B40(v31, v33, v35 & 1);

  v43 = swift_getKeyPath();
  v44 = v52 & 1;
  LOBYTE(v61) = v52 & 1;
  v60 = v52 & 1;
  v59 = 0;
  v45 = v40 & 1;
  v58 = v40 & 1;
  v57 = 0;
  v46 = v40 & 1;
  v48 = v54;
  v47 = v55;
  *a1 = v55;
  *(a1 + 8) = v48;
  *(a1 + 16) = v44;
  v49 = KeyPath;
  *(a1 + 24) = v56;
  *(a1 + 32) = v49;
  *(a1 + 40) = 1;
  *(a1 + 48) = 0;
  *(a1 + 56) = v36;
  *(a1 + 64) = v38;
  *(a1 + 72) = v46;
  *(a1 + 80) = v42;
  *(a1 + 88) = v43;
  *(a1 + 96) = 1;
  *(a1 + 104) = 0;
  sub_24E5FD138(v47, v48, v44);

  sub_24E5FD138(v36, v38, v45);

  sub_24E600B40(v36, v38, v45);

  sub_24E600B40(v47, v48, v61);
}

unint64_t sub_24EFC971C(uint64_t a1, float a2)
{
  result = 0xD000000000000011;
  if (a1 == 1)
  {
    return 0xD000000000000017;
  }

  if (a2 >= 0.0 && a2 < 0.02 || a2 >= 0.03 && a2 < 0.15)
  {
    return 0xD000000000000010;
  }

  if ((a2 < 0.15 || a2 >= 0.4) && (a2 < 0.4 || a2 >= 0.6) && (a2 < 0.6 || a2 >= 0.85))
  {
    return 0xD000000000000012;
  }

  return result;
}

uint64_t sub_24EFC9878@<X0>(uint64_t a1@<X8>)
{
  v36 = a1;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235DA8, &qword_24F9B9910);
  MEMORY[0x28223BE20](v34);
  v35 = &v33 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214698, &unk_24F95F810);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v33 - v4;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235DB0, &qword_24F9B9918);
  MEMORY[0x28223BE20](v33);
  v7 = (&v33 - v6);
  v8 = (v1 + *(type metadata accessor for OverlayGameControllerControls(0) + 32));
  v9 = *v8;
  v10 = v8[1];
  v42 = *v8;
  v43 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2363A0, &qword_24F9B97F0);
  sub_24F926F38();
  v11 = v40;
  swift_getKeyPath();
  v42 = v11;
  sub_24EFCC2E8(&qword_27F220F48, type metadata accessor for GameControllerObserver, &protocol conformance descriptor for GameControllerObserver);
  sub_24F91FD88();

  v12 = OBJC_IVAR____TtC12GameStoreKit22GameControllerObserver__batteryState;
  swift_beginAccess();
  v13 = *&v11[v12];

  if (v13 == -1)
  {
    swift_storeEnumTagMultiPayload();
    sub_24EFCCA7C();
    return sub_24F924E28();
  }

  else
  {
    v40 = v9;
    v41 = v10;
    sub_24F926F38();
    v14 = v37;
    swift_getKeyPath();
    v40 = v14;
    sub_24F91FD88();

    v15 = &v14[OBJC_IVAR____TtC12GameStoreKit22GameControllerObserver__batteryLevel];
    swift_beginAccess();
    v16 = *v15;

    v37 = v9;
    v38 = v10;
    sub_24F926F38();
    v17 = v39;
    swift_getKeyPath();
    v37 = v17;
    sub_24F91FD88();

    v18 = OBJC_IVAR____TtC12GameStoreKit22GameControllerObserver__batteryState;
    swift_beginAccess();
    v19 = *&v17[v18];

    sub_24EFC971C(v19, v16);
    v20 = sub_24F926DF8();
    v21 = sub_24F925908();
    (*(*(v21 - 8) + 56))(v5, 1, 1, v21);
    sub_24F925968();
    sub_24E601704(v5, &qword_27F214698, &unk_24F95F810);
    sub_24F925938();
    v22 = sub_24F9259A8();

    KeyPath = swift_getKeyPath();
    v24 = (v7 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F230A50, &unk_24F9A30C0) + 36));
    v25 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22DF30, &qword_24F958D50) + 28);
    v26 = *MEMORY[0x277CE1048];
    v27 = sub_24F926E78();
    (*(*(v27 - 8) + 104))(v24 + v25, v26, v27);
    *v24 = swift_getKeyPath();
    *v7 = v20;
    v7[1] = KeyPath;
    v7[2] = v22;
    LODWORD(v20) = sub_24F9251C8();
    v28 = v7 + *(v33 + 36);
    v29 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F10, &unk_24F93BE10) + 36);
    v30 = *MEMORY[0x277CE13B8];
    v31 = sub_24F927748();
    (*(*(v31 - 8) + 104))(&v28[v29], v30, v31);
    *v28 = v20;
    sub_24E60169C(v7, v35, &qword_27F235DB0, &qword_24F9B9918);
    swift_storeEnumTagMultiPayload();
    sub_24EFCCA7C();
    sub_24F924E28();
    return sub_24E601704(v7, &qword_27F235DB0, &qword_24F9B9918);
  }
}

uint64_t sub_24EFC9DE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v81 = a2;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235CB0, &qword_24F9B97C8);
  MEMORY[0x28223BE20](v82);
  v4 = (&v68 - v3);
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235CB8, &qword_24F9B97D0);
  MEMORY[0x28223BE20](v80);
  v6 = &v68 - v5;
  v7 = sub_24F924B38();
  v78 = *(v7 - 8);
  v79 = v7;
  MEMORY[0x28223BE20](v7);
  v77 = &v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24F9241F8();
  v73 = *(v9 - 8);
  *&v74 = v9;
  MEMORY[0x28223BE20](v9);
  v72 = &v68 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for OverlayGameControllerControls(0);
  v12 = v11 - 8;
  v69 = *(v11 - 8);
  v13 = *(v69 + 64);
  MEMORY[0x28223BE20](v11);
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235CC0, &qword_24F9B97D8);
  MEMORY[0x28223BE20](v70);
  v15 = &v68 - v14;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235CC8, &qword_24F9B97E0);
  MEMORY[0x28223BE20](v71);
  v76 = &v68 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235CD0, &qword_24F9B97E8);
  MEMORY[0x28223BE20](v17);
  v75 = &v68 - v18;
  v19 = (a1 + *(v12 + 40));
  v21 = *v19;
  v20 = v19[1];
  v83[0] = v21;
  v83[1] = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2363A0, &qword_24F9B97F0);
  sub_24F926F38();
  v22 = v83[5];
  swift_getKeyPath();
  v83[0] = v22;
  sub_24EFCC2E8(&qword_27F220F48, type metadata accessor for GameControllerObserver, &protocol conformance descriptor for GameControllerObserver);
  sub_24F91FD88();

  v23 = OBJC_IVAR____TtC12GameStoreKit22GameControllerObserver__controller;
  swift_beginAccess();
  v24 = *&v22[v23];
  v25 = v24;

  if (v24)
  {
    *v4 = 1024;
    v26 = v4 + *(v82 + 40);
    *v26 = sub_24F9249A8();
    *(v26 + 1) = 0x4020000000000000;
    v26[16] = 0;
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235D78, &qword_24F9B98A8);
    sub_24EFCA7CC(v25, &v26[*(v27 + 44)]);
    sub_24E60169C(v4, v6, &qword_27F235CB0, &qword_24F9B97C8);
    swift_storeEnumTagMultiPayload();
    sub_24E602068(&qword_27F235D58, &qword_27F235CB0, &qword_24F9B97C8, &unk_24F99F820);
    sub_24EFCC920(&qword_27F235D60, &qword_27F235CD0, &qword_24F9B97E8, sub_24EFCC9A4);
    sub_24F924E28();

    v28 = v4;
    v29 = &qword_27F235CB0;
    v30 = &qword_24F9B97C8;
  }

  else
  {
    sub_24EFCC4A4(a1, &v68 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
    v31 = (*(v69 + 80) + 16) & ~*(v69 + 80);
    v32 = swift_allocObject();
    v33 = sub_24EFCC508(&v68 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v32 + v31);
    MEMORY[0x28223BE20](v33);
    *(&v68 - 2) = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235CE0, &qword_24F9B9828);
    sub_24EFCC58C();
    sub_24F926F88();
    v34 = v72;
    sub_24F9241E8();
    sub_24EFCC834();
    sub_24EFCC2E8(&qword_27F212838, MEMORY[0x277CDDB18], MEMORY[0x277CDDB08]);
    v35 = v76;
    v36 = v74;
    sub_24F926178();
    (*(v73 + 8))(v34, v36);
    sub_24E601704(v15, &qword_27F235CC0, &qword_24F9B97D8);
    v37 = (v35 + *(v71 + 36));
    v38 = sub_24F924258();
    v39 = *MEMORY[0x277CE0118];
    v40 = v78;
    v41 = v79;
    v42 = *(v78 + 104);
    v42(&v37[*(v38 + 20)], v39, v79);
    __asm { FMOV            V0.2D, #24.0 }

    v74 = _Q0;
    *v37 = _Q0;
    v48 = v77;
    v42(v77, v39, v41);
    v83[3] = v38;
    v83[4] = sub_24EFCC2E8(&qword_27F212868, MEMORY[0x277CDFC08], MEMORY[0x277CDFBE0]);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v83);
    (*(v40 + 16))(boxed_opaque_existential_1 + *(v38 + 20), v48, v41);
    *boxed_opaque_existential_1 = v74;
    (*(v40 + 8))(v48, v41);
    v50 = v75;
    sub_24E60169C(v83, v75, &qword_27F235D40, &qword_24F9B9868);
    v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235D48, &qword_24F9B9870);
    sub_24E60169C(v35, v50 + v51[9], &qword_27F235CC8, &qword_24F9B97E0);
    v52 = v50 + v51[10];
    *v52 = sub_24F923398() & 1;
    *(v52 + 8) = v53;
    *(v52 + 16) = v54 & 1;
    v55 = v50 + v51[11];
    *v55 = swift_getKeyPath();
    *(v55 + 8) = 0;
    if (qword_27F211808 != -1)
    {
      swift_once();
    }

    v56 = qword_27F24E488;
    v57 = sub_24F923398();
    v59 = v58;
    v61 = v60;
    v62 = v50 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235D50, &qword_24F9B98A0) + 36);
    *v62 = v56;
    *(v62 + 8) = v57 & 1;
    *(v62 + 16) = v59;
    *(v62 + 24) = v61 & 1;
    LOBYTE(v56) = sub_24F923398();
    v64 = v63;
    LOBYTE(v59) = v65;
    sub_24E601704(v35, &qword_27F235CC8, &qword_24F9B97E0);
    sub_24E601704(v83, &qword_27F235D40, &qword_24F9B9868);
    v66 = v50 + *(v17 + 36);
    *v66 = v56 & 1;
    *(v66 + 8) = v64;
    *(v66 + 16) = v59 & 1;
    sub_24E60169C(v50, v6, &qword_27F235CD0, &qword_24F9B97E8);
    swift_storeEnumTagMultiPayload();
    sub_24E602068(&qword_27F235D58, &qword_27F235CB0, &qword_24F9B97C8, &unk_24F99F820);
    sub_24EFCC920(&qword_27F235D60, &qword_27F235CD0, &qword_24F9B97E8, sub_24EFCC9A4);
    sub_24F924E28();
    v28 = v50;
    v29 = &qword_27F235CD0;
    v30 = &qword_24F9B97E8;
  }

  return sub_24E601704(v28, v29, v30);
}

double sub_24EFCA7CC@<D0>(void *a1@<X1>, uint64_t *a2@<X8>)
{
  v40 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235D80, &qword_24F9B98B0);
  MEMORY[0x28223BE20](v3 - 8);
  v42 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v43 = &v35 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235D88, &qword_24F9B98B8);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v35 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235D90, &unk_24F9B98C0);
  v11 = v10 - 8;
  MEMORY[0x28223BE20](v10);
  v41 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v35 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = &v35 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214698, &unk_24F95F810);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v35 - v20;
  v39 = sub_24F926DF8();
  v22 = sub_24F925908();
  (*(*(v22 - 8) + 56))(v21, 1, 1, v22);
  sub_24F925968();
  sub_24E601704(v21, &qword_27F214698, &unk_24F95F810);
  sub_24F925958();
  v38 = sub_24F9259A8();

  KeyPath = swift_getKeyPath();
  *v9 = sub_24F924C98();
  *(v9 + 1) = 0x4008000000000000;
  v9[16] = 0;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235D98, &qword_24F9B9900);
  sub_24EFC649C(v40, &v9[*(v23 + 44)]);
  sub_24F927628();
  sub_24F9242E8();
  sub_24E6009C8(v9, v15, &qword_27F235D88, &qword_24F9B98B8);
  v24 = &v15[*(v11 + 44)];
  v25 = v49;
  *(v24 + 4) = v48;
  *(v24 + 5) = v25;
  *(v24 + 6) = v50;
  v26 = v45;
  *v24 = v44;
  *(v24 + 1) = v26;
  v27 = v47;
  *(v24 + 2) = v46;
  *(v24 + 3) = v27;
  v36 = v18;
  sub_24E6009C8(v15, v18, &qword_27F235D90, &unk_24F9B98C0);
  v28 = v43;
  sub_24EFC9878(v43);
  v29 = v41;
  sub_24E60169C(v18, v41, &qword_27F235D90, &unk_24F9B98C0);
  v30 = v42;
  sub_24E60169C(v28, v42, &qword_27F235D80, &qword_24F9B98B0);
  v31 = v38;
  *a2 = v39;
  a2[1] = KeyPath;
  a2[2] = v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235DA0, &qword_24F9B9908);
  sub_24E60169C(v29, a2 + v32[12], &qword_27F235D90, &unk_24F9B98C0);
  v33 = a2 + v32[16];
  *v33 = 0;
  v33[8] = 0;
  sub_24E60169C(v30, a2 + v32[20], &qword_27F235D80, &qword_24F9B98B0);

  sub_24E601704(v43, &qword_27F235D80, &qword_24F9B98B0);
  sub_24E601704(v36, &qword_27F235D90, &unk_24F9B98C0);
  sub_24E601704(v30, &qword_27F235D80, &qword_24F9B98B0);
  sub_24E601704(v29, &qword_27F235D90, &unk_24F9B98C0);

  return result;
}

uint64_t sub_24EFCACB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235D10, &qword_24F9B9840);
  v4 = *(v3 - 8);
  v36 = v3;
  v37 = v4;
  MEMORY[0x28223BE20](v3);
  v6 = &v35 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235F18, &qword_24F9B9B20);
  v39 = *(v7 - 8);
  v40 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v35 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235D08, &qword_24F9B9838);
  v11 = v10 - 8;
  MEMORY[0x28223BE20](v10);
  v35 = &v35 - v12;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235CF8, &qword_24F9B9830);
  MEMORY[0x28223BE20](v41);
  v38 = &v35 - v13;
  v14 = sub_24F927618();
  v16 = v15;
  sub_24EFCB234(a1, v51);
  memcpy(v49, v51, 0x1F1uLL);
  memcpy(v50, v51, 0x1F1uLL);
  sub_24E60169C(v49, v45, &qword_27F235F20, &qword_24F9B9B28);
  sub_24E601704(v50, &qword_27F235F20, &qword_24F9B9B28);
  memcpy(&v45[16], v49, 0x1F1uLL);
  *v45 = v14;
  *&v45[8] = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235D18, &unk_24F9B9848);
  v18 = sub_24E602068(&qword_27F235D20, &qword_27F235D18, &unk_24F9B9848, MEMORY[0x277CE11A8]);
  sub_24F926B78();
  memcpy(v51, v45, 0x201uLL);
  sub_24E601704(v51, &qword_27F235D18, &unk_24F9B9848);
  v19 = a1 + *(type metadata accessor for OverlayGameControllerControls(0) + 36);
  v20 = *(v19 + 32);
  v21 = *(v19 + 16);
  *v45 = *v19;
  *&v45[16] = v21;
  *&v45[32] = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235ED8, &qword_24F9B9A60);
  sub_24F923348();
  *v45 = v46;
  *&v45[16] = v47;
  *&v46 = 0xD000000000000012;
  *(&v46 + 1) = 0x800000024FA67190;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23B740, &qword_24F93EC10);
  v43 = v17;
  v44 = v18;
  swift_getOpaqueTypeConformance2();
  sub_24EFCC404();
  v22 = v36;
  sub_24F9269B8();

  v23 = v6;
  v24 = v35;
  (*(v37 + 8))(v23, v22);
  sub_24F927618();
  sub_24F9242E8();
  (*(v39 + 32))(v24, v9, v40);
  v25 = (v24 + *(v11 + 44));
  v26 = *&v45[80];
  v25[4] = *&v45[64];
  v25[5] = v26;
  v25[6] = *&v45[96];
  v27 = *&v45[16];
  *v25 = *v45;
  v25[1] = v27;
  v28 = *&v45[48];
  v25[2] = *&v45[32];
  v25[3] = v28;
  if (qword_27F210D78 != -1)
  {
    swift_once();
  }

  sub_24F927618();
  sub_24F9238C8();
  v29 = v38;
  sub_24E6009C8(v24, v38, &qword_27F235D08, &qword_24F9B9838);
  v30 = (v29 + *(v41 + 36));
  v31 = v47;
  *v30 = v46;
  v30[1] = v31;
  v30[2] = v48;
  v32 = v29;
  v33 = v42;
  sub_24E6009C8(v32, v42, &qword_27F235CF8, &qword_24F9B9830);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235CE0, &qword_24F9B9828);
  *(v33 + *(result + 36)) = 0;
  return result;
}

double sub_24EFCB234@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_24F9249A8();
  v50 = 0;
  sub_24EFCB4D0(a1, __src);
  memcpy(__dst, __src, 0x119uLL);
  memcpy(v54, __src, 0x119uLL);
  sub_24E60169C(__dst, v47, &qword_27F235F28, &qword_24F9B9B30);
  sub_24E601704(v54, &qword_27F235F28, &qword_24F9B9B30);
  memcpy(&v49[7], __dst, 0x119uLL);
  v5 = v50;
  v6 = sub_24F925838();
  v7 = sub_24F925848();
  sub_24F925848();
  if (sub_24F925848() != v6)
  {
    v7 = sub_24F925848();
  }

  sub_24F923318();
  v45 = v9;
  v46 = v8;
  v43 = v11;
  v44 = v10;
  v51 = 0;
  v12 = sub_24F925858();
  v13 = sub_24F925848();
  sub_24F925848();
  if (sub_24F925848() != v12)
  {
    v13 = sub_24F925848();
  }

  sub_24F923318();
  v41 = v15;
  v42 = v14;
  v39 = v17;
  v40 = v16;
  v52 = 0;
  v18 = sub_24F925818();
  v19 = sub_24F925848();
  sub_24F925848();
  if (sub_24F925848() != v18)
  {
    v19 = sub_24F925848();
  }

  sub_24F923318();
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v47[0] = 0;
  v28 = sub_24F925828();
  v29 = sub_24F925848();
  sub_24F925848();
  if (sub_24F925848() != v28)
  {
    v29 = sub_24F925848();
  }

  sub_24F923318();
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v37 = v36;
  *a2 = v4;
  *(a2 + 8) = 0x4020000000000000;
  *(a2 + 16) = v5;
  memcpy((a2 + 17), v49, 0x120uLL);
  *(a2 + 312) = v7;
  *(a2 + 320) = v46;
  *(a2 + 328) = v45;
  *(a2 + 336) = v44;
  *(a2 + 344) = v43;
  *(a2 + 352) = 0;
  *(a2 + 360) = v13;
  *(a2 + 368) = v42;
  *(a2 + 376) = v41;
  result = v39;
  *(a2 + 384) = v40;
  *(a2 + 392) = v39;
  *(a2 + 400) = 0;
  *(a2 + 408) = v19;
  *(a2 + 416) = v21;
  *(a2 + 424) = v23;
  *(a2 + 432) = v25;
  *(a2 + 440) = v27;
  *(a2 + 448) = 0;
  *(a2 + 456) = v29;
  *(a2 + 464) = v31;
  *(a2 + 472) = v33;
  *(a2 + 480) = v35;
  *(a2 + 488) = v37;
  *(a2 + 496) = 0;
  return result;
}

double sub_24EFCB4D0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214698, &unk_24F95F810);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v33 - v4;
  v35 = sub_24F926DF8();
  v6 = sub_24F925908();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  sub_24F925968();
  sub_24E601704(v5, &qword_27F214698, &unk_24F95F810);
  sub_24F925958();
  v34 = sub_24F9259A8();

  KeyPath = swift_getKeyPath();
  v8 = sub_24F924C98();
  v36[0] = 0;
  sub_24EFC91BC(&v39);
  v49 = *&v40[48];
  v50[0] = *&v40[64];
  *(v50 + 9) = *&v40[73];
  v45 = v39;
  v46 = *v40;
  v47 = *&v40[16];
  v48 = *&v40[32];
  v51[0] = v39;
  v51[1] = *v40;
  v51[2] = *&v40[16];
  v51[3] = *&v40[32];
  v51[4] = *&v40[48];
  *v52 = *&v40[64];
  *&v52[9] = *&v40[73];
  sub_24E60169C(&v45, &v37, &qword_27F235F30, &qword_24F9B9B38);
  sub_24E601704(v51, &qword_27F235F30, &qword_24F9B9B38);
  *(&v42[3] + 7) = v48;
  *(&v42[4] + 7) = v49;
  *(&v42[5] + 7) = v50[0];
  v42[6] = *(v50 + 9);
  *(v42 + 7) = v45;
  *(&v42[1] + 7) = v46;
  *(&v42[2] + 7) = v47;
  v9 = v36[0];
  sub_24F927628();
  sub_24F9242E8();
  *(&v43[6] + 7) = *&v43[21];
  *(&v43[8] + 7) = *&v43[23];
  *(&v43[10] + 7) = *&v43[25];
  *(&v43[12] + 7) = v44;
  *(v43 + 7) = *&v43[15];
  *(&v43[2] + 7) = *&v43[17];
  *(&v43[4] + 7) = *&v43[19];
  *&v37 = v8;
  *(&v37 + 1) = 0x4008000000000000;
  v38[0] = v9;
  v10 = v42[2];
  *&v38[33] = v42[2];
  v11 = v42[1];
  *&v38[17] = v42[1];
  v12 = v42[0];
  *&v38[1] = v42[0];
  v13 = v42[6];
  *&v38[97] = v42[6];
  v14 = v42[5];
  *&v38[81] = v42[5];
  v15 = v42[4];
  *&v38[65] = v42[4];
  v16 = v42[3];
  *&v38[49] = v42[3];
  v17 = *&v43[6];
  *&v38[161] = *&v43[6];
  v18 = *&v43[4];
  *&v38[145] = *&v43[4];
  v19 = *&v43[2];
  *&v38[129] = *&v43[2];
  v20 = *v43;
  *&v38[113] = *v43;
  *&v38[224] = *(&v44 + 1);
  v21 = *&v43[12];
  *&v38[209] = *&v43[12];
  v22 = *&v43[10];
  *&v38[193] = *&v43[10];
  v23 = *&v43[8];
  *&v38[177] = *&v43[8];
  v24 = *&v38[16];
  *(a2 + 72) = *&v38[32];
  *(a2 + 56) = v24;
  v25 = v37;
  *(a2 + 40) = *v38;
  *(a2 + 24) = v25;
  v26 = *&v38[80];
  *(a2 + 136) = *&v38[96];
  *(a2 + 120) = v26;
  v27 = *&v38[48];
  *(a2 + 104) = *&v38[64];
  *(a2 + 88) = v27;
  v28 = *&v38[144];
  *(a2 + 200) = *&v38[160];
  *(a2 + 184) = v28;
  v29 = *&v38[112];
  *(a2 + 168) = *&v38[128];
  *(a2 + 152) = v29;
  *(a2 + 248) = *&v38[208];
  v30 = *&v38[176];
  *(a2 + 232) = *&v38[192];
  *(a2 + 216) = v30;
  *&v40[49] = v16;
  *&v40[65] = v15;
  *&v40[81] = v14;
  *&v40[97] = v13;
  *&v40[1] = v12;
  *&v40[17] = v11;
  *&v40[33] = v10;
  *&v40[177] = v23;
  *&v40[193] = v22;
  *v41 = v21;
  v36[248] = 0;
  v31 = v34;
  *a2 = v35;
  *(a2 + 8) = KeyPath;
  *(a2 + 16) = v31;
  *(a2 + 264) = *&v38[224];
  *(a2 + 272) = 0;
  *(a2 + 280) = 0;
  *&v39 = v8;
  *(&v39 + 1) = 0x4008000000000000;
  v40[0] = v9;
  *&v41[15] = *(&v43[13] + 7);
  *&v40[113] = v20;
  *&v40[129] = v19;
  *&v40[145] = v18;
  *&v40[161] = v17;

  sub_24E60169C(&v37, v36, &qword_27F235F38, &qword_24F9B9B40);
  sub_24E601704(&v39, &qword_27F235F38, &qword_24F9B9B40);

  return result;
}

void sub_24EFCBA18(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24F923098();

  *a2 = v3;
}

uint64_t sub_24EFCBA98(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_24F9230A8();
}

void sub_24EFCBB14(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24F923098();

  *a2 = v3;
}

uint64_t sub_24EFCBB98(void **a1, uint64_t *a2)
{
  v2 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;

  return sub_24F9230A8();
}

uint64_t sub_24EFCBC2C()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

id sub_24EFCBC78@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 selectedProfile];
  *a2 = result;
  return result;
}

uint64_t block_copy_helper_98(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t objectdestroy_42Tm_0(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *(v3 - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);

  (*(v4 + 8))(v2 + v5, v3);

  return swift_deallocObject();
}

uint64_t sub_24EFCBE20(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a1, a2) - 8);
  v5 = *(v3 + 16);
  v6 = v3 + ((*(v4 + 80) + 24) & ~*(v4 + 80));

  return a3(v5, v6);
}

uint64_t sub_24EFCBEA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235C68, &unk_24F9B9740);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 32));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_24EFCBF84(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235C68, &unk_24F9B9740);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 32)) = (a2 - 1);
  }

  return result;
}

void sub_24EFCC068(uint64_t a1)
{
  sub_24EFCC330(319, &qword_27F235C80, MEMORY[0x277CDD6C8], MEMORY[0x277CDF468]);
  if (v1 <= 0x3F)
  {
    sub_24EB999AC();
    if (v2 <= 0x3F)
    {
      sub_24EFCC1F0(319, &qword_27F21B368, &unk_27F23B740, &qword_24F93EC10, MEMORY[0x277CDF468]);
      if (v3 <= 0x3F)
      {
        sub_24EFCC254(319);
        if (v4 <= 0x3F)
        {
          sub_24EFCC330(319, &qword_27F235C98, type metadata accessor for GameControllerObserver, MEMORY[0x277CE10B8]);
          if (v5 <= 0x3F)
          {
            sub_24EFCC394(319);
            if (v6 <= 0x3F)
            {
              sub_24E65E73C();
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

void sub_24EFCC1F0(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
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

void sub_24EFCC254(uint64_t a1)
{
  if (!qword_27F235C88)
  {
    type metadata accessor for GCOverlaySettingsObserver(255);
    sub_24EFCC2E8(&qword_27F235C90, type metadata accessor for GCOverlaySettingsObserver, &unk_24F9B95C8);
    v1 = sub_24F923648();
    if (!v2)
    {
      atomic_store(v1, &qword_27F235C88);
    }
  }
}

uint64_t sub_24EFCC2E8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_24EFCC330(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_24EFCC394(uint64_t a1)
{
  if (!qword_27F235CA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27F23B740, &qword_24F93EC10);
    sub_24EFCC404();
    v1 = sub_24F9233B8();
    if (!v2)
    {
      atomic_store(v1, &qword_27F235CA0);
    }
  }
}

unint64_t sub_24EFCC404()
{
  result = qword_27F235CA8;
  if (!qword_27F235CA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27F23B740, &qword_24F93EC10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F235CA8);
  }

  return result;
}

uint64_t sub_24EFCC4A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OverlayGameControllerControls(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24EFCC508(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OverlayGameControllerControls(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_24EFCC58C()
{
  result = qword_27F235CE8;
  if (!qword_27F235CE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F235CE0, &qword_24F9B9828);
    sub_24EFCC644();
    sub_24E602068(&qword_27F212A60, &qword_27F223340, &qword_24F939830, MEMORY[0x277CE0470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F235CE8);
  }

  return result;
}

unint64_t sub_24EFCC644()
{
  result = qword_27F235CF0;
  if (!qword_27F235CF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F235CF8, &qword_24F9B9830);
    sub_24EFCC6D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F235CF0);
  }

  return result;
}

unint64_t sub_24EFCC6D0()
{
  result = qword_27F235D00;
  if (!qword_27F235D00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F235D08, &qword_24F9B9838);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F235D10, &qword_24F9B9840);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27F23B740, &qword_24F93EC10);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F235D18, &unk_24F9B9848);
    sub_24E602068(&qword_27F235D20, &qword_27F235D18, &unk_24F9B9848, MEMORY[0x277CE11A8]);
    swift_getOpaqueTypeConformance2();
    sub_24EFCC404();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F235D00);
  }

  return result;
}

unint64_t sub_24EFCC834()
{
  result = qword_27F235D28;
  if (!qword_27F235D28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F235CC0, &qword_24F9B97D8);
    sub_24E602068(&qword_27F235D30, &qword_27F235D38, &unk_24F9B9858, MEMORY[0x277CDF028]);
    sub_24E602068(&unk_27F2129E0, &unk_27F22E040, &unk_24F940690, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F235D28);
  }

  return result;
}

uint64_t sub_24EFCC920(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    sub_24E600F3C();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24EFCC9A4()
{
  result = qword_27F235D68;
  if (!qword_27F235D68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F235D50, &qword_24F9B98A0);
    sub_24E602068(&qword_27F235D70, &qword_27F235D48, &qword_24F9B9870, &unk_24FA2648C);
    sub_24E600EE8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F235D68);
  }

  return result;
}

unint64_t sub_24EFCCA7C()
{
  result = qword_27F235DB8;
  if (!qword_27F235DB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F235DB0, &qword_24F9B9918);
    sub_24EE08B20();
    sub_24E602068(&qword_27F213F88, &qword_27F213F90, &qword_24F93BE60, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F235DB8);
  }

  return result;
}

unint64_t sub_24EFCCB44()
{
  result = qword_27F235E48;
  if (!qword_27F235E48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F235E40, &qword_24F9B9A20);
    sub_24EFCCBFC();
    sub_24E602068(&qword_27F212A60, &qword_27F223340, &qword_24F939830, MEMORY[0x277CE0470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F235E48);
  }

  return result;
}

unint64_t sub_24EFCCBFC()
{
  result = qword_27F235E50;
  if (!qword_27F235E50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F235E58, &qword_24F9B9A28);
    sub_24EFCCCB4();
    sub_24E602068(&unk_27F212AB0, &qword_27F236350, &qword_24F939870, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F235E50);
  }

  return result;
}

unint64_t sub_24EFCCCB4()
{
  result = qword_27F235E60;
  if (!qword_27F235E60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F235E68, &qword_24F9B9A30);
    sub_24E602068(&qword_27F235E70, &qword_27F235E78, &qword_24F9B9A38, MEMORY[0x277CE1138]);
    sub_24E602068(&qword_27F213F88, &qword_27F213F90, &qword_24F93BE60, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F235E60);
  }

  return result;
}

uint64_t objectdestroy_56Tm_0()
{
  v1 = type metadata accessor for OverlayGameControllerControls(0);
  v2 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v3 = v0 + v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235CD8, &qword_24F9B9820);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_24F923418();
    (*(*(v4 - 8) + 8))(v0 + v2, v4);
  }

  else
  {
  }

  sub_24E62A5EC(*(v3 + v1[5]), *(v3 + v1[5] + 8));
  sub_24E74C370(*(v3 + v1[6]), *(v3 + v1[6] + 8), *(v3 + v1[6] + 16));
  sub_24E683950(*(v3 + v1[7]), *(v3 + v1[7] + 8));

  return swift_deallocObject();
}

void sub_24EFCCF38()
{
  v1 = *(type metadata accessor for OverlayGameControllerControls(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  sub_24EFC8DF8(v2);
}

double sub_24EFCCF98(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for OverlayGameControllerControls(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_24EFC8F4C(a1, a2, v6);
}

unint64_t sub_24EFCD018()
{
  result = qword_27F235E88;
  if (!qword_27F235E88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F235DF0, &qword_24F9B99D0);
    sub_24E602068(&qword_27F235E90, &qword_27F235E98, &qword_24F9B9A40, MEMORY[0x277CDE5B0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F235E88);
  }

  return result;
}

double sub_24EFCD0D0(uint64_t a1, _BYTE *a2)
{
  v5 = *(type metadata accessor for OverlayGameControllerControls(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_24EFC90E4(a1, a2, v6);
}

unint64_t sub_24EFCD150()
{
  result = qword_27F235EC0;
  if (!qword_27F235EC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F235EB0, &qword_24F9B9A50);
    sub_24E602068(&qword_27F235EC8, &qword_27F235EA8, &qword_24F9B9A48, &unk_24FA2648C);
    sub_24E600EE8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F235EC0);
  }

  return result;
}

uint64_t sub_24EFCD290(void **a1)
{
  v3 = *(type metadata accessor for OverlayGameControllerControls(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_24EFC8390(a1, v4);
}

unint64_t sub_24EFCD310()
{
  result = qword_27F235F08;
  if (!qword_27F235F08)
  {
    sub_24E69A5C4(255, &qword_27F235C50, 0x277CCB090);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F235F08);
  }

  return result;
}

uint64_t sub_24EFCD378(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235EE0, &qword_24F9B9AA0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24EFCD3E8()
{
  v1 = type metadata accessor for OverlayGameControllerControls(0);
  v2 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = v0 + v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235CD8, &qword_24F9B9820);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_24F923418();
    (*(*(v5 - 8) + 8))(v0 + v2, v5);
  }

  else
  {
  }

  sub_24E62A5EC(*(v4 + v1[5]), *(v4 + v1[5] + 8));
  sub_24E74C370(*(v4 + v1[6]), *(v4 + v1[6] + 8), *(v4 + v1[6] + 16));
  sub_24E683950(*(v4 + v1[7]), *(v4 + v1[7] + 8));

  return swift_deallocObject();
}

double sub_24EFCD594()
{
  v1 = *(type metadata accessor for OverlayGameControllerControls(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_24EFC850C(v0 + v2, v3);
}

unint64_t sub_24EFCD62C()
{
  result = qword_27F235F40;
  if (!qword_27F235F40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F235F48, &qword_24F9B9B48);
    sub_24EFCD6B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F235F40);
  }

  return result;
}

unint64_t sub_24EFCD6B0()
{
  result = qword_27F235F50;
  if (!qword_27F235F50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F235F58, &qword_24F9B9B50);
    sub_24E602068(&qword_27F235D58, &qword_27F235CB0, &qword_24F9B97C8, &unk_24F99F820);
    sub_24EFCC920(&qword_27F235D60, &qword_27F235CD0, &qword_24F9B97E8, sub_24EFCC9A4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F235F50);
  }

  return result;
}

uint64_t sub_24EFCD7B0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 49))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_24EFCD80C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t sub_24EFCD89C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220818, &qword_24F964440);
  sub_24F926F38();
  if (v4 == 0x69562F6F69647541 && v5 == 0xEB000000006F6564)
  {
LABEL_8:

    goto LABEL_9;
  }

  v1 = sub_24F92CE08();

  if ((v1 & 1) == 0)
  {
    sub_24F926F38();
    if (v4 != 0x6C6143656E6F6850 || v5 != 0xE90000000000006CLL)
    {
      v2 = sub_24F92CE08();

      return v2 & 1;
    }

    goto LABEL_8;
  }

LABEL_9:
  v2 = 1;
  return v2 & 1;
}

uint64_t sub_24EFCD9E4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v56 = a1;
  v3 = sub_24F91F7C8();
  MEMORY[0x28223BE20](v3 - 8);
  v48[2] = v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_24F92B088();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2360F8, &qword_24F9B9F10);
  MEMORY[0x28223BE20](v6 - 8);
  v50 = v48 - v7;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236150, &qword_24F9B9FE0);
  MEMORY[0x28223BE20](v49);
  v9 = v48 - v8;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236158, &qword_24F9B9FE8);
  MEMORY[0x28223BE20](v51);
  v52 = v48 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236160, &unk_24F9B9FF0);
  v54 = *(v11 - 8);
  v55 = v11;
  MEMORY[0x28223BE20](v11);
  v53 = v48 - v12;
  v13 = *(v1 + 17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2357E0, &qword_24F93B8F0);
  v14 = swift_allocObject();
  v15 = v14;
  *(v14 + 16) = xmmword_24F93FC20;
  v16 = 0x800000024FA400F0;
  v17 = 0xD000000000000012;
  if (v13)
  {
    v17 = 0x2E72656B61657073;
    v16 = 0xEC0000006C6C6966;
  }

  *(v14 + 32) = v17;
  *(v14 + 40) = v16;
  *(v14 + 48) = 0xD000000000000013;
  *(v14 + 56) = 0x800000024FA67390;
  *(v14 + 64) = 0xD000000000000013;
  *(v14 + 72) = 0x800000024FA673B0;
  *(v14 + 80) = 0xD000000000000013;
  *(v14 + 88) = 0x800000024FA40110;
  v18 = sub_24F926C38();
  v68 = *(v1 + 24);
  v63 = *(v1 + 24);
  v48[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A6F0, &unk_24F95ACB0);
  sub_24F926F58();
  v19 = v57;
  v20 = v58;
  v57 = *v1;
  LOBYTE(v58) = *(v1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236230, &qword_24F9B9F40);
  sub_24F923378();
  LOBYTE(v57) = v13;
  *(&v57 + 1) = v15;
  *&v58 = v18;
  BYTE8(v58) = 1;
  *&v59 = CGSizeMake;
  *(&v59 + 1) = 0;
  v60 = v19;
  *&v61[0] = v20;
  *(v61 + 8) = v63;
  BYTE8(v61[1]) = v64;
  sub_24F92B018();
  if (qword_27F211820 != -1)
  {
    swift_once();
  }

  v21 = qword_27F24F280;
  sub_24F91F778();
  *&v62 = sub_24F92B148();
  *(&v62 + 1) = v22;
  sub_24EFD2C14();
  sub_24E600AEC();
  v23 = v50;
  sub_24F926538();

  v65 = v59;
  v66 = v60;
  v67[0] = v61[0];
  *(v67 + 9) = *(v61 + 9);
  v63 = v57;
  v64 = v58;
  sub_24EFD2C68(&v63);
  v24 = swift_allocObject();
  v25 = v2[5];
  *(v24 + 5) = v2[4];
  *(v24 + 6) = v25;
  v26 = v2[7];
  *(v24 + 7) = v2[6];
  *(v24 + 8) = v26;
  v27 = v2[1];
  *(v24 + 1) = *v2;
  *(v24 + 2) = v27;
  v28 = v2[3];
  *(v24 + 3) = v2[2];
  *(v24 + 4) = v28;
  sub_24E6009C8(v23, v9, &qword_27F2360F8, &qword_24F9B9F10);
  v29 = &v9[*(v49 + 36)];
  *v29 = sub_24EFD2ED0;
  v29[1] = v24;
  v29[2] = 0;
  v29[3] = 0;
  v30 = swift_allocObject();
  v31 = v2[5];
  *(v30 + 80) = v2[4];
  *(v30 + 96) = v31;
  v32 = v2[7];
  *(v30 + 112) = v2[6];
  *(v30 + 128) = v32;
  v33 = v2[1];
  *(v30 + 16) = *v2;
  *(v30 + 32) = v33;
  v34 = v2[3];
  *(v30 + 48) = v2[2];
  *(v30 + 64) = v34;
  v35 = v52;
  sub_24E6009C8(v9, v52, &qword_27F236150, &qword_24F9B9FE0);
  v36 = (v35 + *(v51 + 36));
  *v36 = 0;
  v36[1] = 0;
  v36[2] = sub_24EFD2ED8;
  v36[3] = v30;
  v62 = v68;
  sub_24EFD2484(v2, &v57);
  sub_24EFD2484(v2, &v57);
  sub_24F926F38();
  v37 = swift_allocObject();
  v38 = v2[5];
  v37[5] = v2[4];
  v37[6] = v38;
  v39 = v2[7];
  v37[7] = v2[6];
  v37[8] = v39;
  v40 = v2[1];
  v37[1] = *v2;
  v37[2] = v40;
  v41 = v2[3];
  v37[3] = v2[2];
  v37[4] = v41;
  sub_24EFD2484(v2, &v57);
  sub_24EFD2EE8();
  v42 = v53;
  sub_24F926AB8();

  sub_24E601704(v35, &qword_27F236158, &qword_24F9B9FE8);
  LOBYTE(v30) = sub_24EFCD89C();
  KeyPath = swift_getKeyPath();
  v44 = swift_allocObject();
  *(v44 + 16) = (v30 & 1) == 0;
  v45 = v56;
  (*(v54 + 32))(v56, v42, v55);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236178, &unk_24F9BA000);
  v47 = (v45 + *(result + 36));
  *v47 = KeyPath;
  v47[1] = sub_24E602370;
  v47[2] = v44;
  return result;
}

double sub_24EFCE130(_OWORD *a1)
{
  v8[0] = a1[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236180, &unk_24F9BA010);
  sub_24F926F38();
  v2 = swift_allocObject();
  v3 = a1[5];
  v2[5] = a1[4];
  v2[6] = v3;
  v4 = a1[7];
  v2[7] = a1[6];
  v2[8] = v4;
  v5 = a1[1];
  v2[1] = *a1;
  v2[2] = v5;
  v6 = a1[3];
  v2[3] = a1[2];
  v2[4] = v6;
  sub_24EFD2484(a1, v8);
  sub_24EFDE684(sub_24EFD3080, v2);

  v9 = 0;
  sub_24F923688();
  v8[0] = a1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236220, &qword_24F93F6B0);
  sub_24F926F48();
  sub_24F9240D8();

  return result;
}

void sub_24EFCE280(char a1, uint64_t a2, unint64_t a3, _OWORD *a4, float a5)
{
  if (qword_27F2113D8 != -1)
  {
    swift_once();
  }

  v10 = sub_24F9220D8();
  __swift_project_value_buffer(v10, qword_27F39E7D8);

  v11 = sub_24F9220B8();
  v12 = sub_24F92BDD8();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *&v18 = v14;
    *v13 = 134218498;
    v15 = a5;
    *(v13 + 4) = a5;
    *(v13 + 12) = 1024;
    *(v13 + 14) = a1 & 1;
    *(v13 + 18) = 2080;
    *(v13 + 20) = sub_24E7620D4(a2, a3, &v18);
    _os_log_impl(&dword_24E5DD000, v11, v12, "Callback %f, %{BOOL}d, %s", v13, 0x1Cu);
    __swift_destroy_boxed_opaque_existential_1(v14);
    MEMORY[0x2530542D0](v14, -1, -1);
    MEMORY[0x2530542D0](v13, -1, -1);
  }

  else
  {

    v15 = a5;
  }

  v18 = *(a4 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A6F0, &unk_24F95ACB0);
  sub_24F926F38();
  if (vabdd_f64(v15, v17) >= 0.0001 || (v18 = *(a4 + 40), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236220, &qword_24F93F6B0), sub_24F926F38(), LOBYTE(v17) != (a1 & 1)))
  {
    v18 = a4[7];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236220, &qword_24F93F6B0);
    sub_24F926F48();
    v18 = a4[6];
    sub_24F926F38();
    v16 = sub_24F923688();
    MEMORY[0x28223BE20](v16);
    sub_24F9240D8();
  }
}

uint64_t sub_24EFCE554(uint64_t a1, char a2, uint64_t a3, uint64_t a4, float a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236220, &qword_24F93F6B0);
  sub_24F926F48();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A6F0, &unk_24F95ACB0);
  sub_24F926F48();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220818, &qword_24F964440);
  return sub_24F926F48();
}

uint64_t sub_24EFCE65C(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236180, &unk_24F9BA010);
  sub_24F926F38();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236220, &qword_24F93F6B0);
  sub_24F926F48();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A6F0, &unk_24F95ACB0);
  sub_24F926F48();
  sub_24F926F38();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220818, &qword_24F964440);
  return sub_24F926F48();
}

double sub_24EFCE7A0(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236180, &unk_24F9BA010);
  sub_24F926F38();
  sub_24EFDEC48();

  return result;
}

void sub_24EFCE7FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v12 = *(a3 + 96);
  v9 = *(a3 + 96);
  v13 = *(&v12 + 1);
  sub_24E60169C(&v13, &v8, &qword_27F215140, &qword_24F93F750);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236220, &qword_24F93F6B0);
  sub_24F926F38();
  if ((v8 & 1) == 0)
  {
    v9 = *(a3 + 56);
    v10 = *(a3 + 72);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220818, &qword_24F964440);
    sub_24F926F38();
    if (v8 == __PAIR128__(0xE000000000000000, 0))
    {
    }

    else
    {
      v4 = sub_24F92CE08();

      if ((v4 & 1) == 0)
      {
        v9 = v12;
        LOBYTE(v8) = 1;
        sub_24F926F48();
        v5 = &v12;
        goto LABEL_9;
      }
    }
  }

  sub_24E601704(&v12, &qword_27F236220, &qword_24F93F6B0);
  v8 = *(a3 + 112);
  v9 = v8;
  v11 = *(&v8 + 1);
  sub_24E60169C(&v11, &v7, &qword_27F215140, &qword_24F93F750);
  sub_24F926F38();
  if ((LOBYTE(v7) & 1) == 0)
  {
    sub_24E601704(&v9, &qword_27F236220, &qword_24F93F6B0);
    v8 = *(a3 + 80);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236180, &unk_24F9BA010);
    sub_24F926F38();
    v8 = *(a3 + 24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A6F0, &unk_24F95ACB0);
    sub_24F926F38();
    v6 = v7;
    sub_24EFDE3E4(v6);

    return;
  }

  v8 = v9;
  LOBYTE(v7) = 0;
  sub_24F926F48();
  v5 = &v9;
LABEL_9:
  sub_24E601704(v5, &qword_27F236220, &qword_24F93F6B0);
}

void sub_24EFCEAA0(char a1)
{
  v2 = a1 & 1;
  v4 = *(v1 + 32);
  v5 = v4;
  v6 = *(&v4 + 1);
  sub_24E60169C(&v6, &v3, &qword_27F215140, &qword_24F93F750);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236220, &qword_24F93F6B0);
  sub_24F926F38();
  if (LOBYTE(v3) == v2)
  {
    sub_24E601704(&v5, &qword_27F236220, &qword_24F93F6B0);
  }

  else
  {
    v4 = v5;
    LOBYTE(v3) = v2;
    sub_24F926F48();
    sub_24E601704(&v5, &qword_27F236220, &qword_24F93F6B0);
    v4 = *(v1 + 16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A6F0, &unk_24F95ACB0);
    sub_24F926F38();
    sub_24EFCEBB8(v3);
  }
}

void sub_24EFCEBB8(double a1)
{
  v6 = v1[3];
  v7 = v6;
  v8 = *(&v6 + 1);
  sub_24E60169C(&v8, &v5, &qword_27F215140, &qword_24F93F750);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236220, &qword_24F93F6B0);
  sub_24F926F38();
  if (v5)
  {
    v6 = v7;
    LOBYTE(v5) = 0;
    sub_24F926F48();
    sub_24E601704(&v7, &qword_27F236220, &qword_24F93F6B0);
  }

  else
  {
    sub_24E601704(&v7, &qword_27F236220, &qword_24F93F6B0);
    v6 = *v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236128, &qword_24F9B9F48);
    sub_24F926F38();
    v3 = v5;
    if (*(v5 + 24) == a1)
    {
      *(v5 + 24) = a1;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x28223BE20](KeyPath);
      *&v6 = v3;
      sub_24EFD2D88(&qword_27F236130, type metadata accessor for OverlayControlsBrightnessViewModel, &unk_24F9BB140);
      sub_24F91FD78();
    }

    v6 = *v1;
    sub_24F926F38();
    v6 = v1[2];
    sub_24F926F38();
    sub_24EFE57EC((v5 & 1) == 0);
  }
}

uint64_t sub_24EFCEE0C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v72 = a1;
  v3 = sub_24F91F7C8();
  MEMORY[0x28223BE20](v3 - 8);
  v59 = v58 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_24F92B088();
  MEMORY[0x28223BE20](v5 - 8);
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2360F8, &qword_24F9B9F10);
  MEMORY[0x28223BE20](v62);
  v60 = v58 - v6;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236100, &qword_24F9B9F18);
  v66 = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  v63 = v58 - v7;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236108, &qword_24F9B9F20);
  v67 = *(v70 - 8);
  MEMORY[0x28223BE20](v70);
  v64 = v58 - v8;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236110, &qword_24F9B9F28);
  MEMORY[0x28223BE20](v61);
  v68 = v58 - v9;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236118, &unk_24F9B9F30);
  MEMORY[0x28223BE20](v65);
  v71 = v58 - v10;
  v11 = *(v1 + 81);
  if (v11)
  {
    v12 = &unk_2861C0F90;
  }

  else
  {
    v12 = &unk_2861C0FD0;
  }

  v13 = sub_24F926CF8();
  v14 = swift_allocObject();
  v15 = *(v1 + 48);
  v16 = *(v1 + 64);
  v17 = *(v1 + 16);
  *(v14 + 48) = *(v1 + 32);
  *(v14 + 64) = v15;
  *(v14 + 80) = v16;
  v18 = *(v1 + 16);
  *(v14 + 16) = *v1;
  *(v14 + 32) = v18;
  v85 = v18;
  *(v14 + 96) = *(v1 + 80);
  v74 = v17;
  sub_24EFD261C(v1, &v79);
  v58[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A6F0, &unk_24F95ACB0);
  sub_24F926F58();
  v19 = v79;
  v20 = v80;
  v79 = *(v1 + 64);
  LOBYTE(v80) = *(v1 + 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236230, &qword_24F9B9F40);
  sub_24F923378();
  v21 = v74;
  v22 = v75;
  LOBYTE(v74) = v11;
  *(&v74 + 1) = v12;
  *&v75 = v13;
  BYTE8(v75) = 0;
  *&v76 = sub_24EFD2BF0;
  *(&v76 + 1) = v14;
  v77 = v19;
  *&v78[0] = v20;
  *(v78 + 8) = v21;
  BYTE8(v78[1]) = v22;
  sub_24F92B018();
  if (qword_27F211820 != -1)
  {
    swift_once();
  }

  v23 = qword_27F24F280;
  sub_24F91F778();
  *&v84 = sub_24F92B148();
  *(&v84 + 1) = v24;
  sub_24EFD2C14();
  sub_24E600AEC();
  v25 = v60;
  sub_24F926538();

  v81 = v76;
  v82 = v77;
  v83[0] = v78[0];
  *(v83 + 9) = *(v78 + 9);
  v79 = v74;
  v80 = v75;
  sub_24EFD2C68(&v79);
  v84 = *v1;
  v74 = *v1;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236128, &qword_24F9B9F48);
  sub_24F926F38();
  v26 = v73;
  swift_getKeyPath();
  *&v74 = v26;
  v58[0] = sub_24EFD2D88(&qword_27F236130, type metadata accessor for OverlayControlsBrightnessViewModel, &unk_24F9BB140);
  sub_24F91FD88();

  v27 = *(v26 + 24);

  *&v73 = v27;
  v28 = swift_allocObject();
  v29 = *(v1 + 48);
  *(v28 + 48) = *(v1 + 32);
  *(v28 + 64) = v29;
  *(v28 + 80) = *(v1 + 64);
  *(v28 + 96) = *(v1 + 80);
  v30 = *(v1 + 16);
  *(v28 + 16) = *v1;
  *(v28 + 32) = v30;
  sub_24EFD261C(v1, &v74);
  v31 = sub_24EFD2CCC();
  v32 = MEMORY[0x277D839F8];
  v33 = MEMORY[0x277D83A28];
  v34 = v62;
  v35 = v63;
  sub_24F926AB8();

  sub_24E601704(v25, &qword_27F2360F8, &qword_24F9B9F10);
  v74 = v85;
  sub_24F926F38();
  v36 = swift_allocObject();
  v37 = *(v1 + 48);
  *(v36 + 48) = *(v1 + 32);
  *(v36 + 64) = v37;
  *(v36 + 80) = *(v1 + 64);
  *(v36 + 96) = *(v1 + 80);
  v38 = *(v1 + 16);
  *(v36 + 16) = *v1;
  *(v36 + 32) = v38;
  sub_24EFD261C(v1, &v74);
  *&v74 = v34;
  *(&v74 + 1) = v32;
  *&v75 = v31;
  *(&v75 + 1) = v33;
  swift_getOpaqueTypeConformance2();
  v39 = v64;
  v40 = v69;
  sub_24F926AB8();

  (*(v66 + 8))(v35, v40);
  v41 = swift_allocObject();
  v42 = *(v2 + 48);
  *(v41 + 48) = *(v2 + 32);
  *(v41 + 64) = v42;
  *(v41 + 80) = *(v2 + 64);
  *(v41 + 96) = *(v2 + 80);
  v43 = *(v2 + 16);
  *(v41 + 16) = *v2;
  *(v41 + 32) = v43;
  v44 = v68;
  (*(v67 + 32))(v68, v39, v70);
  v45 = (v44 + *(v61 + 36));
  *v45 = sub_24EFD2DF8;
  v45[1] = v41;
  v45[2] = 0;
  v45[3] = 0;
  v46 = swift_allocObject();
  v47 = *(v2 + 48);
  *(v46 + 48) = *(v2 + 32);
  *(v46 + 64) = v47;
  *(v46 + 80) = *(v2 + 64);
  *(v46 + 96) = *(v2 + 80);
  v48 = *(v2 + 16);
  *(v46 + 16) = *v2;
  *(v46 + 32) = v48;
  v49 = v71;
  sub_24E6009C8(v44, v71, &qword_27F236110, &qword_24F9B9F28);
  v50 = (v49 + *(v65 + 36));
  *v50 = 0;
  v50[1] = 0;
  v50[2] = sub_24EFD2E68;
  v50[3] = v46;
  v73 = v84;
  sub_24EFD261C(v2, &v74);
  sub_24EFD261C(v2, &v74);
  sub_24F926F38();
  v51 = v74;
  swift_getKeyPath();
  *&v74 = v51;
  sub_24F91FD88();

  v52 = *(v51 + 32);

  KeyPath = swift_getKeyPath();
  v54 = swift_allocObject();
  *(v54 + 16) = (v52 & 1) == 0;
  v55 = v72;
  sub_24E6009C8(v49, v72, &qword_27F236118, &unk_24F9B9F30);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236140, &qword_24F9B9FD0);
  v57 = (v55 + *(result + 36));
  *v57 = KeyPath;
  v57[1] = sub_24E600A48;
  v57[2] = v54;
  return result;
}

uint64_t sub_24EFCF778(uint64_t a1, double *a2, __int128 *a3)
{
  v4 = *a2;
  v9 = a3[1];
  v10 = v9;
  v11 = *(&v9 + 1);
  sub_24E60169C(&v11, &v8, &qword_27F236148, &qword_24F9B9FD8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A6F0, &unk_24F95ACB0);
  sub_24F926F38();
  if (vabdd_f64(v4, v8) >= 0.0001)
  {
    v9 = a3[3];
    LOBYTE(v8) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236220, &qword_24F93F6B0);
    sub_24F926F48();
    v9 = *a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236128, &qword_24F9B9F48);
    sub_24F926F38();
    v5 = v8;
    swift_getKeyPath();
    *&v9 = v5;
    sub_24EFD2D88(&qword_27F236130, type metadata accessor for OverlayControlsBrightnessViewModel, &unk_24F9BB140);
    sub_24F91FD88();

    v6 = *(*&v5 + 24);

    v9 = v10;
    v8 = v6;
    sub_24F926F48();
  }

  return sub_24E601704(&v10, &qword_27F21A6F0, &unk_24F95ACB0);
}

double sub_24EFCF92C(__int128 *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236128, &qword_24F9B9F48);
  sub_24F926F38();
  sub_24EFE5B20();

  sub_24F923688();
  sub_24F9240D8();

  return result;
}

uint64_t sub_24EFCF9E4(__int128 *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236220, &qword_24F93F6B0);
  sub_24F926F48();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236128, &qword_24F9B9F48);
  sub_24F926F38();
  sub_24EFE5400();

  sub_24F926F38();
  swift_getKeyPath();
  sub_24EFD2D88(&qword_27F236130, type metadata accessor for OverlayControlsBrightnessViewModel, &unk_24F9BB140);
  sub_24F91FD88();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A6F0, &unk_24F95ACB0);
  return sub_24F926F48();
}

uint64_t sub_24EFCFB60(__int128 *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236128, &qword_24F9B9F48);
  sub_24F926F38();
  sub_24EFE6188();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236220, &qword_24F93F6B0);
  sub_24F926F48();
  sub_24F926F38();
  sub_24EFE5400();

  sub_24F926F38();
  swift_getKeyPath();
  sub_24EFD2D88(&qword_27F236130, type metadata accessor for OverlayControlsBrightnessViewModel, &unk_24F9BB140);
  sub_24F91FD88();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A6F0, &unk_24F95ACB0);
  return sub_24F926F48();
}

uint64_t sub_24EFCFD40(unsigned __int8 *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235F60, &qword_24F9B9C08);
  MEMORY[0x28223BE20](v2);
  v4 = &v19 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235F68, &qword_24F9B9C10);
  MEMORY[0x28223BE20](v5);
  v7 = &v19 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235F70, &qword_24F9B9C18);
  MEMORY[0x28223BE20](v8);
  v10 = &v19 - v9;
  if (*a1)
  {
    if (qword_27F210D60 != -1)
    {
      swift_once();
    }

    v11 = qword_27F39D300;
    *v10 = sub_24F924C88();
    *(v10 + 1) = v11;
    v10[16] = 0;
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235F90, &qword_24F9B9C28);
    sub_24EFD00C0(a1, &v10[*(v12 + 44)]);
    sub_24E60169C(v10, v7, &qword_27F235F70, &qword_24F9B9C18);
    swift_storeEnumTagMultiPayload();
    sub_24E602068(&qword_27F235F80, &qword_27F235F70, &qword_24F9B9C18, MEMORY[0x277CE1198]);
    sub_24E602068(&qword_27F235F88, &qword_27F235F60, &qword_24F9B9C08, MEMORY[0x277CE1138]);
    sub_24F924E28();
    v13 = v10;
    v14 = &qword_27F235F70;
    v15 = &qword_24F9B9C18;
  }

  else
  {
    if (qword_27F210D60 != -1)
    {
      swift_once();
    }

    v16 = qword_27F39D300;
    *v4 = sub_24F9249A8();
    *(v4 + 1) = v16;
    v4[16] = 0;
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235F78, &qword_24F9B9C20);
    sub_24EFD1060(a1, &v4[*(v17 + 44)]);
    sub_24E60169C(v4, v7, &qword_27F235F60, &qword_24F9B9C08);
    swift_storeEnumTagMultiPayload();
    sub_24E602068(&qword_27F235F80, &qword_27F235F70, &qword_24F9B9C18, MEMORY[0x277CE1198]);
    sub_24E602068(&qword_27F235F88, &qword_27F235F60, &qword_24F9B9C08, MEMORY[0x277CE1138]);
    sub_24F924E28();
    v13 = v4;
    v14 = &qword_27F235F60;
    v15 = &qword_24F9B9C08;
  }

  return sub_24E601704(v13, v14, v15);
}

uint64_t sub_24EFD00C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v44 = a2;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235F98, &qword_24F9B9C30);
  MEMORY[0x28223BE20](v43);
  v38 = (&v35 - v3);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235FA0, &qword_24F9B9C38) - 8;
  MEMORY[0x28223BE20](v41);
  v42 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v35 - v6;
  v39 = sub_24F925508();
  v45 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235FA8, &qword_24F9B9C40);
  MEMORY[0x28223BE20](v10);
  v12 = &v35 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235FB0, &unk_24F9B9C48);
  MEMORY[0x28223BE20](v13);
  v40 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v35 - v16;
  v49 = *(a1 + 8);
  v50 = *(a1 + 24);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215670, &unk_24F961D00);
  sub_24F923348();
  v18 = v46;
  v19 = v47;
  v20 = v48;
  *v17 = 512;
  *(v17 + 1) = v18;
  *(v17 + 2) = v19;
  v17[24] = v20;
  *v12 = sub_24F924C98();
  *(v12 + 1) = 0;
  v12[16] = 0;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235FB8, &qword_24F9B9C58);
  sub_24EFD05E0(a1, &v12[*(v21 + 44)]);
  sub_24F9254E8();
  v36 = MEMORY[0x277CE1198];
  sub_24E602068(&qword_27F235FC0, &qword_27F235FA8, &qword_24F9B9C40, MEMORY[0x277CE1198]);
  sub_24F926678();
  v22 = *(v45 + 8);
  v45 += 8;
  v23 = v39;
  v22(v9, v39);
  sub_24E601704(v12, &qword_27F235FA8, &qword_24F9B9C40);
  v49 = *(a1 + 32);
  v50 = *(a1 + 48);
  sub_24F923348();
  v24 = v46;
  v25 = v47;
  v26 = v48;
  *v7 = 512;
  *(v7 + 1) = v24;
  *(v7 + 2) = v25;
  v7[24] = v26;
  v27 = sub_24F924C98();
  v28 = v38;
  *v38 = v27;
  *(v28 + 8) = 0;
  *(v28 + 16) = 0;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235FC8, &qword_24F9B9C60);
  sub_24EFD0B54(a1, (v28 + *(v29 + 44)));
  sub_24F9254E8();
  sub_24E602068(&qword_27F235FD0, &qword_27F235F98, &qword_24F9B9C30, v36);
  sub_24F926678();
  v22(v9, v23);
  sub_24E601704(v28, &qword_27F235F98, &qword_24F9B9C30);
  v30 = v40;
  sub_24E60169C(v17, v40, &qword_27F235FB0, &unk_24F9B9C48);
  v31 = v42;
  sub_24E60169C(v7, v42, &qword_27F235FA0, &qword_24F9B9C38);
  v32 = v44;
  sub_24E60169C(v30, v44, &qword_27F235FB0, &unk_24F9B9C48);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235FD8, &qword_24F9B9C68);
  sub_24E60169C(v31, v32 + *(v33 + 48), &qword_27F235FA0, &qword_24F9B9C38);
  sub_24E601704(v7, &qword_27F235FA0, &qword_24F9B9C38);
  sub_24E601704(v17, &qword_27F235FB0, &unk_24F9B9C48);
  sub_24E601704(v31, &qword_27F235FA0, &qword_24F9B9C38);
  return sub_24E601704(v30, &qword_27F235FB0, &unk_24F9B9C48);
}

uint64_t sub_24EFD05E0@<X0>(unsigned __int8 *a1@<X0>, void *a2@<X8>)
{
  v50 = a1;
  v53 = a2;
  v2 = sub_24F91F7C8();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = sub_24F92B088();
  MEMORY[0x28223BE20](v3 - 8);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235FE0, &unk_24F9B9C70);
  MEMORY[0x28223BE20](v4 - 8);
  v52 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v51 = &v49 - v7;
  sub_24F92B018();
  if (qword_27F211820 != -1)
  {
    swift_once();
  }

  v8 = qword_27F24F280;
  sub_24F91F778();
  *&v68 = sub_24F92B148();
  *(&v68 + 1) = v9;
  sub_24E600AEC();
  v10 = sub_24F925E18();
  v12 = v11;
  v14 = v13;
  *&v68 = _s7SwiftUI5ColorV12GameStoreKitE05focusC0ACvgZ_0();
  v15 = sub_24F925C58();
  v17 = v16;
  v19 = v18;
  sub_24E600B40(v10, v12, v14 & 1);

  if (qword_27F210D48 != -1)
  {
    swift_once();
  }

  v20 = sub_24F925C98();
  v22 = v21;
  v24 = v23;
  v26 = v25;
  sub_24E600B40(v15, v17, v19 & 1);

  v27 = sub_24F925838();
  v28 = sub_24F925848();
  sub_24F925848();
  if (sub_24F925848() != v27)
  {
    v28 = sub_24F925848();
  }

  sub_24F923318();
  v74 = v24 & 1;
  v73 = 0;
  *&v68 = v20;
  *(&v68 + 1) = v22;
  LOBYTE(v69) = v24 & 1;
  *(&v69 + 1) = v26;
  LOBYTE(v70) = v28;
  *(&v70 + 1) = v29;
  *v71 = v30;
  *&v71[8] = v31;
  *&v71[16] = v32;
  v71[24] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217790, &qword_24F946350);
  sub_24E6AF8AC();
  v33 = v51;
  sub_24F9265E8();
  v61[0] = *v71;
  *(v61 + 9) = *&v71[9];
  v60[1] = v69;
  v60[2] = v70;
  v60[0] = v68;
  sub_24E601704(v60, &qword_27F217790, &qword_24F946350);
  v34 = v50;
  v68 = *(v50 + 8);
  LOBYTE(v69) = v50[24];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215670, &unk_24F961D00);
  sub_24F923348();
  v35 = v62;
  v36 = v63;
  v37 = *v34;
  if (qword_27F210DA0 != -1)
  {
    swift_once();
  }

  sub_24EFD24EC(v35, *(&v35 + 1), v36, v37, &v54);
  v38 = v52;
  sub_24E60169C(v33, v52, &qword_27F235FE0, &unk_24F9B9C70);
  v39 = v53;
  *v53 = 0;
  *(v39 + 8) = 0;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235FF0, &qword_24F9B9C88);
  sub_24E60169C(v38, v39 + v40[12], &qword_27F235FE0, &unk_24F9B9C70);
  v41 = v39 + v40[16];
  v42 = v59;
  v67 = v59;
  v43 = v58;
  v44 = v56;
  v65 = v57;
  v66 = v58;
  v45 = v54;
  v46 = v55;
  v62 = v54;
  v63 = v55;
  v64 = v56;
  *(v41 + 3) = v57;
  *(v41 + 4) = v43;
  *(v41 + 1) = v46;
  *(v41 + 2) = v44;
  *(v41 + 40) = v42;
  *v41 = v45;
  v47 = v39 + v40[20];
  *v47 = 0;
  v47[8] = 0;
  sub_24EFD261C(&v62, &v68);
  sub_24E601704(v33, &qword_27F235FE0, &unk_24F9B9C70);
  v70 = v56;
  *v71 = v57;
  *&v71[16] = v58;
  v72 = v59;
  v68 = v54;
  v69 = v55;
  sub_24EFD2654(&v68);
  return sub_24E601704(v38, &qword_27F235FE0, &unk_24F9B9C70);
}

uint64_t sub_24EFD0B54@<X0>(unsigned __int8 *a1@<X0>, void *a2@<X8>)
{
  v48 = a1;
  v51 = a2;
  v2 = sub_24F91F7C8();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = sub_24F92B088();
  MEMORY[0x28223BE20](v3 - 8);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235FE0, &unk_24F9B9C70);
  MEMORY[0x28223BE20](v4 - 8);
  v50 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v49 = &v48 - v7;
  sub_24F92B018();
  if (qword_27F211820 != -1)
  {
    swift_once();
  }

  v8 = qword_27F24F280;
  sub_24F91F778();
  *&v70 = sub_24F92B148();
  *(&v70 + 1) = v9;
  sub_24E600AEC();
  v10 = sub_24F925E18();
  v12 = v11;
  v14 = v13;
  *&v70 = _s7SwiftUI5ColorV12GameStoreKitE05focusC0ACvgZ_0();
  v15 = sub_24F925C58();
  v17 = v16;
  v19 = v18;
  sub_24E600B40(v10, v12, v14 & 1);

  if (qword_27F210D48 != -1)
  {
    swift_once();
  }

  v20 = sub_24F925C98();
  v22 = v21;
  v24 = v23;
  v26 = v25;
  sub_24E600B40(v15, v17, v19 & 1);

  v27 = sub_24F925838();
  v28 = sub_24F925848();
  sub_24F925848();
  if (sub_24F925848() != v27)
  {
    v28 = sub_24F925848();
  }

  sub_24F923318();
  v78 = v24 & 1;
  v77 = 0;
  *&v70 = v20;
  *(&v70 + 1) = v22;
  LOBYTE(v71) = v24 & 1;
  *(&v71 + 1) = v26;
  LOBYTE(v72) = v28;
  *(&v72 + 1) = v29;
  *v73 = v30;
  *&v73[8] = v31;
  *&v73[16] = v32;
  v73[24] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217790, &qword_24F946350);
  sub_24E6AF8AC();
  v33 = v49;
  sub_24F9265E8();
  v60[2] = v72;
  v61[0] = *v73;
  *(v61 + 9) = *&v73[9];
  v60[0] = v70;
  v60[1] = v71;
  sub_24E601704(v60, &qword_27F217790, &qword_24F946350);
  v34 = v48;
  v70 = *(v48 + 2);
  LOBYTE(v71) = v48[48];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215670, &unk_24F961D00);
  sub_24F923348();
  sub_24EFD2284(v62, *(&v62 + 1), v63, *v34, &v52);
  v35 = v50;
  sub_24E60169C(v33, v50, &qword_27F235FE0, &unk_24F9B9C70);
  v36 = v51;
  *v51 = 0;
  *(v36 + 8) = 0;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235FE8, &qword_24F9B9C80);
  sub_24E60169C(v35, v36 + v37[12], &qword_27F235FE0, &unk_24F9B9C70);
  v38 = (v36 + v37[16]);
  v39 = v56;
  v40 = v57;
  v66 = v56;
  v67 = v57;
  v41 = v58;
  v42 = v59;
  v68 = v58;
  v69 = v59;
  v43 = v52;
  v44 = v53;
  v62 = v52;
  v63 = v53;
  v45 = v55;
  v64 = v54;
  v65 = v55;
  v38[2] = v54;
  v38[3] = v45;
  *v38 = v43;
  v38[1] = v44;
  v38[6] = v41;
  v38[7] = v42;
  v38[4] = v39;
  v38[5] = v40;
  v46 = v36 + v37[20];
  *v46 = 0;
  v46[8] = 0;
  sub_24EFD2484(&v62, &v70);
  sub_24E601704(v33, &qword_27F235FE0, &unk_24F9B9C70);
  *&v73[16] = v56;
  v74 = v57;
  v75 = v58;
  v76 = v59;
  v70 = v52;
  v71 = v53;
  v72 = v54;
  *v73 = v55;
  sub_24EFD24BC(&v70);
  return sub_24E601704(v35, &qword_27F235FE0, &unk_24F9B9C70);
}

uint64_t sub_24EFD1060@<X0>(unsigned __int8 *a1@<X0>, void *a2@<X8>)
{
  v160 = a2;
  v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235FF8, &qword_24F9B9C90);
  v146 = *(v148 - 8);
  MEMORY[0x28223BE20](v148);
  v145 = &v128 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236000, &qword_24F9B9C98);
  v156 = *(v4 - 8);
  v157 = v4;
  MEMORY[0x28223BE20](v4);
  v152 = &v128 - v5;
  v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236008, &qword_24F9B9CA0);
  MEMORY[0x28223BE20](v150);
  v155 = &v128 - v6;
  v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236010, &qword_24F9B9CA8);
  MEMORY[0x28223BE20](v154);
  v153 = &v128 - v7;
  v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236018, &qword_24F9B9CB0);
  MEMORY[0x28223BE20](v151);
  v159 = &v128 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v149 = &v128 - v10;
  MEMORY[0x28223BE20](v11);
  v158 = &v128 - v12;
  v13 = sub_24F924258();
  MEMORY[0x28223BE20](v13);
  v15 = (&v128 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236020, &qword_24F9B9CB8);
  v134 = *(v16 - 8);
  v135 = v16;
  MEMORY[0x28223BE20](v16);
  v133 = &v128 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236028, &qword_24F9B9CC0);
  v143 = *(v18 - 8);
  v144 = v18;
  MEMORY[0x28223BE20](v18);
  v140 = &v128 - v19;
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236030, &qword_24F9B9CC8);
  MEMORY[0x28223BE20](v138);
  v21 = &v128 - v20;
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236038, &qword_24F9B9CD0);
  MEMORY[0x28223BE20](v141);
  v142 = &v128 - v22;
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236040, &qword_24F9B9CD8);
  MEMORY[0x28223BE20](v139);
  v147 = &v128 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v137 = &v128 - v25;
  MEMORY[0x28223BE20](v26);
  v164 = &v128 - v27;
  v166[0] = *(a1 + 8);
  LOBYTE(v166[1]) = a1[24];
  v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215670, &unk_24F961D00);
  sub_24F923348();
  v28 = v165[0];
  v29 = v165[1];
  v163 = a1;
  v30 = *a1;
  if (qword_27F210DA0 != -1)
  {
    swift_once();
  }

  v162 = v13;

  v136 = v30;
  sub_24EFD24EC(v28, *(&v28 + 1), v29, v30, &v171);
  sub_24F927618();
  sub_24F9242E8();
  if (qword_27F210D90 != -1)
  {
    swift_once();
  }

  sub_24F927618();
  sub_24F9238C8();
  v193 = v180;
  v194 = v181;
  v195 = v182;
  v189 = v176;
  v190 = v177;
  v191 = v178;
  v192 = v179;
  v185 = v172;
  v186 = v173;
  v187 = v174;
  *&v196 = v183;
  v188 = v175;
  v184 = v171;
  v166[12] = v196;
  v166[13] = v197;
  v166[14] = v198;
  *&v166[15] = v199;
  v166[8] = v179;
  v166[9] = v180;
  v166[10] = v181;
  v166[11] = v182;
  v166[4] = v175;
  v166[5] = v176;
  v166[6] = v177;
  v166[7] = v178;
  v166[0] = v171;
  v166[1] = v172;
  v166[2] = v173;
  v166[3] = v174;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236048, &qword_24F9B9CE0);
  v32 = sub_24EFD2684();
  v33 = v133;
  sub_24F926B78();
  v169[12] = v166[12];
  v169[13] = v166[13];
  v169[14] = v166[14];
  v170 = *&v166[15];
  v169[8] = v166[8];
  v169[9] = v166[9];
  v169[10] = v166[10];
  v169[11] = v166[11];
  v169[4] = v166[4];
  v169[5] = v166[5];
  v169[6] = v166[6];
  v169[7] = v166[7];
  v169[0] = v166[0];
  v169[1] = v166[1];
  v169[2] = v166[2];
  v169[3] = v166[3];
  sub_24E601704(v169, &qword_27F236048, &qword_24F9B9CE0);
  v166[0] = *(v163 + 8);
  LOBYTE(v166[1]) = v163[24];
  sub_24F923348();
  *&v166[0] = v31;
  *(&v166[0] + 1) = v32;
  swift_getOpaqueTypeConformance2();
  v34 = v140;
  v35 = v135;
  sub_24F9269C8();

  (*(v134 + 8))(v33, v35);
  if (qword_27F210D98 != -1)
  {
    swift_once();
  }

  v36 = qword_27F39D330;
  v37 = *(v162 + 20);
  v38 = *MEMORY[0x277CE0118];
  v39 = sub_24F924B38();
  v40 = *(v39 - 8);
  v41 = *(v40 + 104);
  LODWORD(v135) = v38;
  v133 = v41;
  v134 = v39;
  v131 = v40 + 104;
  (v41)(v15 + v37, v38);
  *v15 = v36;
  v15[1] = v36;
  v42 = sub_24F924248();
  *(&v166[1] + 1) = v42;
  v130 = sub_24EFD2D88(&qword_27F236070, MEMORY[0x277CDFBC8], MEMORY[0x277CDFBB8]);
  *&v166[2] = v130;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v166);
  sub_24E6EB910(v15, boxed_opaque_existential_1);
  v132 = v42;
  *(boxed_opaque_existential_1 + *(v42 + 20)) = 0xC010000000000000;
  sub_24E6EB974(v15);
  sub_24E60169C(v166, v21, &qword_27F236078, &qword_24F9B9CF0);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236080, &qword_24F9B9CF8);
  v46 = v143;
  v45 = v144;
  (*(v143 + 16))(&v21[v44[9]], v34, v144);
  v47 = v34;
  v48 = &v21[v44[10]];
  *v48 = sub_24F923398() & 1;
  *(v48 + 1) = v49;
  v48[16] = v50 & 1;
  v51 = &v21[v44[11]];
  *v51 = swift_getKeyPath();
  v51[8] = 0;
  v128 = v15;
  if (qword_27F211808 != -1)
  {
    swift_once();
  }

  v52 = qword_27F24E488;
  v129 = v52;
  v53 = sub_24F923398();
  v55 = v54;
  v57 = v56;
  v58 = &v21[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236088, &qword_24F9B9D28) + 36)];
  *v58 = v52;
  v58[8] = v53 & 1;
  *(v58 + 2) = v55;
  v58[24] = v57 & 1;
  v59 = sub_24F923398();
  v61 = v60;
  v63 = v62;
  sub_24E601704(v166, &qword_27F236078, &qword_24F9B9CF0);
  (*(v46 + 8))(v47, v45);
  v64 = &v21[*(v138 + 36)];
  *v64 = v59 & 1;
  *(v64 + 1) = v61;
  v64[16] = v63 & 1;
  v65 = sub_24F925828();
  sub_24F923318();
  v67 = v66;
  v69 = v68;
  v71 = v70;
  v73 = v72;
  v74 = v142;
  sub_24E6009C8(v21, v142, &qword_27F236030, &qword_24F9B9CC8);
  v75 = v74 + *(v141 + 36);
  *v75 = v65;
  *(v75 + 8) = v67;
  *(v75 + 16) = v69;
  *(v75 + 24) = v71;
  *(v75 + 32) = v73;
  *(v75 + 40) = 0;
  v76 = v137;
  sub_24E6009C8(v74, v137, &qword_27F236038, &qword_24F9B9CD0);
  v77 = (v76 + *(v139 + 36));
  *v77 = CGSizeMake;
  v77[1] = 0;
  v77[2] = &unk_2861C1010;
  sub_24E6009C8(v76, v164, &qword_27F236040, &qword_24F9B9CD8);
  v78 = v163;
  v166[0] = *(v163 + 2);
  LOBYTE(v166[1]) = v163[48];
  sub_24F923348();
  sub_24EFD2284(*&v165[0], *(&v165[0] + 1), v165[1], v136, v167);
  sub_24F927618();
  sub_24F9242E8();
  sub_24F927618();
  sub_24F9238C8();
  v168[12] = v167[12];
  v168[13] = v167[13];
  v168[14] = v167[14];
  v168[8] = v167[8];
  v168[9] = v167[9];
  v168[10] = v167[10];
  v168[11] = v167[11];
  v168[4] = v167[4];
  v168[5] = v167[5];
  v168[6] = v167[6];
  v168[7] = v167[7];
  v168[0] = v167[0];
  v168[1] = v167[1];
  v168[2] = v167[2];
  v168[3] = v167[3];
  memcpy(v165, v168, sizeof(v165));
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236090, &qword_24F9B9D30);
  v80 = sub_24EFD27F8();
  v81 = v145;
  sub_24F926B78();
  memcpy(v166, v165, sizeof(v166));
  sub_24E601704(v166, &qword_27F236090, &qword_24F9B9D30);
  v165[0] = *(v78 + 2);
  LOBYTE(v165[1]) = v78[48];
  sub_24F923348();
  *&v165[0] = v79;
  *(&v165[0] + 1) = v80;
  swift_getOpaqueTypeConformance2();
  v82 = v152;
  v83 = v148;
  sub_24F9269C8();

  (*(v146 + 8))(v81, v83);
  v84 = qword_27F39D330;
  v85 = v128;
  (v133)(v128 + *(v162 + 20), v135, v134);
  *v85 = v84;
  v85[1] = v84;
  v86 = v132;
  *(&v165[1] + 1) = v132;
  *&v165[2] = v130;
  v87 = __swift_allocate_boxed_opaque_existential_1(v165);
  sub_24E6EB910(v85, v87);
  *(v87 + *(v86 + 20)) = 0xC010000000000000;
  sub_24E6EB974(v85);
  v88 = v155;
  sub_24E60169C(v165, v155, &qword_27F2360B8, &qword_24F9B9D40);
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2360C0, &qword_24F9B9D48);
  v91 = v156;
  v90 = v157;
  (*(v156 + 16))(v88 + v89[9], v82, v157);
  v92 = v88 + v89[10];
  *v92 = sub_24F923398() & 1;
  *(v92 + 8) = v93;
  *(v92 + 16) = v94 & 1;
  v95 = v88 + v89[11];
  *v95 = swift_getKeyPath();
  *(v95 + 8) = 0;
  LOBYTE(v95) = sub_24F923398();
  v97 = v96;
  v99 = v98;
  v100 = v88 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2360C8, &qword_24F9B9D50) + 36);
  *v100 = v129;
  *(v100 + 8) = v95 & 1;
  *(v100 + 16) = v97;
  *(v100 + 24) = v99 & 1;
  LOBYTE(v95) = sub_24F923398();
  v102 = v101;
  v104 = v103;
  sub_24E601704(v165, &qword_27F2360B8, &qword_24F9B9D40);
  (*(v91 + 8))(v82, v90);
  v105 = v88 + *(v150 + 36);
  *v105 = v95 & 1;
  *(v105 + 8) = v102;
  *(v105 + 16) = v104 & 1;
  LOBYTE(v87) = sub_24F925828();
  sub_24F923318();
  v107 = v106;
  v109 = v108;
  v111 = v110;
  v113 = v112;
  v114 = v153;
  sub_24E6009C8(v88, v153, &qword_27F236008, &qword_24F9B9CA0);
  v115 = v114 + *(v154 + 36);
  *v115 = v87;
  *(v115 + 8) = v107;
  *(v115 + 16) = v109;
  *(v115 + 24) = v111;
  *(v115 + 32) = v113;
  *(v115 + 40) = 0;
  v116 = v114;
  v117 = v149;
  sub_24E6009C8(v116, v149, &qword_27F236010, &qword_24F9B9CA8);
  v118 = (v117 + *(v151 + 36));
  *v118 = CGSizeMake;
  v118[1] = 0;
  v118[2] = &unk_2861C1040;
  v119 = v158;
  sub_24E6009C8(v117, v158, &qword_27F236018, &qword_24F9B9CB0);
  v120 = v164;
  v121 = v147;
  sub_24E60169C(v164, v147, &qword_27F236040, &qword_24F9B9CD8);
  v122 = v159;
  sub_24E60169C(v119, v159, &qword_27F236018, &qword_24F9B9CB0);
  v123 = v160;
  *v160 = 0;
  *(v123 + 8) = 0;
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2360D0, &qword_24F9B9D58);
  sub_24E60169C(v121, v123 + v124[12], &qword_27F236040, &qword_24F9B9CD8);
  v125 = v123 + v124[16];
  *v125 = 0;
  v125[8] = 0;
  sub_24E60169C(v122, v123 + v124[20], &qword_27F236018, &qword_24F9B9CB0);
  v126 = v123 + v124[24];
  *v126 = 0;
  v126[8] = 0;
  sub_24E601704(v119, &qword_27F236018, &qword_24F9B9CB0);
  sub_24E601704(v120, &qword_27F236040, &qword_24F9B9CD8);
  sub_24E601704(v122, &qword_27F236018, &qword_24F9B9CB0);
  return sub_24E601704(v121, &qword_27F236040, &qword_24F9B9CD8);
}

uint64_t sub_24EFD2248()
{
  v1 = *(v0 + 16);
  v3[0] = *v0;
  v3[1] = v1;
  v3[2] = *(v0 + 32);
  v4 = *(v0 + 48);
  return sub_24EFCFD40(v3);
}

void *sub_24EFD2284@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, char a4@<W3>, uint64_t a5@<X8>)
{
  sub_24F926F28();
  sub_24F926F28();
  sub_24F926F28();
  if (qword_27F210D40 != -1)
  {
    swift_once();
  }

  v11 = qword_27F39D2D0;
  type metadata accessor for OverlayControlsVolumeViewModel();

  sub_24F926F28();
  sub_24F926F28();
  LOBYTE(v11) = 0;
  result = sub_24F926F28();
  *a5 = a1;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3 & 1;
  *(a5 + 17) = a4 & 1;
  *(a5 + 18) = v16;
  *(a5 + 22) = v17;
  *(a5 + 24) = v12;
  *(a5 + 32) = v13;
  *(a5 + 40) = v12;
  *(a5 + 41) = v12;
  *(a5 + 44) = *(&v12 + 3);
  *(a5 + 48) = v13;
  *(a5 + 56) = v12;
  *(a5 + 64) = v13;
  *(a5 + 72) = v14;
  *(a5 + 80) = v12;
  *(a5 + 88) = v13;
  *(a5 + 96) = v12;
  *(a5 + 100) = *(&v11 + 3);
  *(a5 + 97) = v11;
  *(a5 + 104) = v13;
  *(a5 + 112) = v12;
  *(a5 + 113) = *v15;
  *(a5 + 116) = *&v15[3];
  *(a5 + 120) = v13;
  return result;
}

void *sub_24EFD24EC@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, char a5@<W4>, uint64_t a6@<X8>)
{
  type metadata accessor for OverlayControlsBrightnessViewModel(0);
  sub_24F926F28();
  sub_24F926F28();
  sub_24F926F28();
  result = sub_24F926F28();
  *a6 = v12;
  *(a6 + 8) = v13;
  *(a6 + 16) = v12;
  *(a6 + 24) = v13;
  *(a6 + 32) = v12;
  *(a6 + 33) = v12;
  *(a6 + 36) = *(&v12 + 3);
  *(a6 + 40) = v13;
  *(a6 + 48) = v12;
  *(a6 + 49) = 0;
  *(a6 + 52) = -805306368;
  *(a6 + 56) = v13;
  *(a6 + 64) = a2;
  *(a6 + 72) = a3;
  *(a6 + 80) = a4;
  *(a6 + 81) = a5;
  return result;
}

unint64_t sub_24EFD2684()
{
  result = qword_27F236050;
  if (!qword_27F236050)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F236048, &qword_24F9B9CE0);
    sub_24EFD2710();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F236050);
  }

  return result;
}

unint64_t sub_24EFD2710()
{
  result = qword_27F236058;
  if (!qword_27F236058)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F236060, &qword_24F9B9CE8);
    sub_24EFD279C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F236058);
  }

  return result;
}

unint64_t sub_24EFD279C()
{
  result = qword_27F236068;
  if (!qword_27F236068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F236068);
  }

  return result;
}

unint64_t sub_24EFD27F8()
{
  result = qword_27F236098;
  if (!qword_27F236098)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F236090, &qword_24F9B9D30);
    sub_24EFD2884();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F236098);
  }

  return result;
}

unint64_t sub_24EFD2884()
{
  result = qword_27F2360A0;
  if (!qword_27F2360A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2360A8, &qword_24F9B9D38);
    sub_24EFD2910();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2360A0);
  }

  return result;
}

unint64_t sub_24EFD2910()
{
  result = qword_27F2360B0;
  if (!qword_27F2360B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2360B0);
  }

  return result;
}

__n128 __swift_memcpy82_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_24EFD2998(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 82))
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

uint64_t sub_24EFD29E0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 82) = 1;
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

    *(result + 82) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_24EFD2A4C()
{
  result = qword_27F2360D8;
  if (!qword_27F2360D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2360E0, &qword_24F9B9E60);
    sub_24EFD2AD0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2360D8);
  }

  return result;
}

unint64_t sub_24EFD2AD0()
{
  result = qword_27F2360E8;
  if (!qword_27F2360E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2360F0, &qword_24F9B9E68);
    sub_24E602068(&qword_27F235F80, &qword_27F235F70, &qword_24F9B9C18, MEMORY[0x277CE1198]);
    sub_24E602068(&qword_27F235F88, &qword_27F235F60, &qword_24F9B9C08, MEMORY[0x277CE1138]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2360E8);
  }

  return result;
}

unint64_t sub_24EFD2C14()
{
  result = qword_27F236120;
  if (!qword_27F236120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F236120);
  }

  return result;
}

unint64_t sub_24EFD2CCC()
{
  result = qword_27F236138;
  if (!qword_27F236138)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2360F8, &qword_24F9B9F10);
    sub_24EFD2C14();
    sub_24EFD2D88(&qword_27F2141E0, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F236138);
  }

  return result;
}

uint64_t sub_24EFD2D88(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t objectdestroyTm_47()
{

  return swift_deallocObject();
}

unint64_t sub_24EFD2EE8()
{
  result = qword_27F236168;
  if (!qword_27F236168)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F236158, &qword_24F9B9FE8);
    sub_24EFD2F74();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F236168);
  }

  return result;
}

unint64_t sub_24EFD2F74()
{
  result = qword_27F236170;
  if (!qword_27F236170)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F236150, &qword_24F9B9FE0);
    sub_24EFD2CCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F236170);
  }

  return result;
}

uint64_t objectdestroy_45Tm()
{

  return swift_deallocObject();
}

unint64_t sub_24EFD30D0()
{
  result = qword_27F236188;
  if (!qword_27F236188)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F236140, &qword_24F9B9FD0);
    sub_24EFD3188();
    sub_24E602068(&qword_27F2129F0, &qword_27F255320, &unk_24F9397C0, MEMORY[0x277CE08A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F236188);
  }

  return result;
}

unint64_t sub_24EFD3188()
{
  result = qword_27F236190;
  if (!qword_27F236190)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F236118, &unk_24F9B9F30);
    sub_24EFD3214();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F236190);
  }

  return result;
}

unint64_t sub_24EFD3214()
{
  result = qword_27F236198;
  if (!qword_27F236198)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F236110, &qword_24F9B9F28);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F236100, &qword_24F9B9F18);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2360F8, &qword_24F9B9F10);
    sub_24EFD2CCC();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F236198);
  }

  return result;
}

unint64_t sub_24EFD3338()
{
  result = qword_27F2361A0;
  if (!qword_27F2361A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F236178, &unk_24F9BA000);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F236158, &qword_24F9B9FE8);
    sub_24EFD2EE8();
    swift_getOpaqueTypeConformance2();
    sub_24E602068(&qword_27F2129F0, &qword_27F255320, &unk_24F9397C0, MEMORY[0x277CE08A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2361A0);
  }

  return result;
}

uint64_t sub_24EFD3460()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F232348, &unk_24F9A9070);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_24F9479A0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2363A0, &qword_24F9B97F0);
  sub_24F926F38();
  swift_getKeyPath();
  sub_24EFDB7FC(&qword_27F220F48, type metadata accessor for GameControllerObserver, &protocol conformance descriptor for GameControllerObserver);
  sub_24F91FD88();

  v1 = &v10[OBJC_IVAR____TtC12GameStoreKit22GameControllerObserver__dpadXAxis];
  swift_beginAccess();
  v2 = *v1;

  *(v0 + 32) = v2;
  sub_24F926F38();
  swift_getKeyPath();
  sub_24F91FD88();

  v3 = &v8[OBJC_IVAR____TtC12GameStoreKit22GameControllerObserver__leftThumbstickXAxis];
  swift_beginAccess();
  v4 = *v3;

  *(v0 + 36) = v4;
  sub_24F926F38();
  swift_getKeyPath();
  sub_24F91FD88();

  v5 = &v9[OBJC_IVAR____TtC12GameStoreKit22GameControllerObserver__rightThumbstickXAxis];
  swift_beginAccess();
  v6 = *v5;

  *(v0 + 40) = v6;
  return v0;
}

uint64_t sub_24EFD369C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F232348, &unk_24F9A9070);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_24F9479A0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2363A0, &qword_24F9B97F0);
  sub_24F926F38();
  swift_getKeyPath();
  sub_24EFDB7FC(&qword_27F220F48, type metadata accessor for GameControllerObserver, &protocol conformance descriptor for GameControllerObserver);
  sub_24F91FD88();

  v1 = &v10[OBJC_IVAR____TtC12GameStoreKit22GameControllerObserver__dpadYAxis];
  swift_beginAccess();
  v2 = *v1;

  *(v0 + 32) = v2;
  sub_24F926F38();
  swift_getKeyPath();
  sub_24F91FD88();

  v3 = &v8[OBJC_IVAR____TtC12GameStoreKit22GameControllerObserver__leftThumbstickYAxis];
  swift_beginAccess();
  v4 = *v3;

  *(v0 + 36) = v4;
  sub_24F926F38();
  swift_getKeyPath();
  sub_24F91FD88();

  v5 = &v9[OBJC_IVAR____TtC12GameStoreKit22GameControllerObserver__rightThumbstickYAxis];
  swift_beginAccess();
  v6 = *v5;

  *(v0 + 40) = v6;
  return v0;
}

uint64_t sub_24EFD38D8()
{
  v1 = *(v0 + 104);
  if (v1 == 1)
  {
    v2 = *(sub_24EFD3460() + 16);

    if (!v2)
    {
      return result;
    }

    result = sub_24EFD3460();
  }

  else
  {
    v4 = *(sub_24EFD369C() + 16);

    if (!v4)
    {
      return result;
    }

    result = sub_24EFD369C();
  }

  if (*(result + 16))
  {
    v5 = *(result + 32);

    if (v1)
    {
      v6 = sub_24EFD3460();
      v7 = *(v6 + 16);
      if (!v7)
      {
      }
    }

    else
    {
      v6 = sub_24EFD369C();
      v7 = *(v6 + 16);
      if (!v7)
      {
      }
    }

    v8 = (v6 + 32);
    do
    {
      v9 = *v8++;
      v10 = v9;
      if (fabsf(v5) < fabsf(v9))
      {
        v5 = v10;
      }

      --v7;
    }

    while (v7);
  }

  __break(1u);
  return result;
}

uint64_t sub_24EFD39A0()
{
  v1 = sub_24F924848();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  if (*(v0 + 8) == 1)
  {
    if ((v5 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {

    sub_24F92BDC8();
    v7 = sub_24F9257A8();
    sub_24F921FD8();

    sub_24F924838();
    swift_getAtKeyPath();
    sub_24E62A5EC(v5, 0);
    (*(v2 + 8))(v4, v1);
    if (v12 != 1)
    {
      return 0;
    }
  }

  v8 = *(v0 + 40);
  v9 = *(v0 + 48);
  v12 = *(v0 + 32);
  v13 = v8;
  v14 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2363B0, &unk_24F94C9C0);
  MEMORY[0x25304CAF0]((&v11 + 7), v10);
  return HIBYTE(v11);
}

id sub_24EFD3B34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v55 = a1;
  v53 = a2;
  v3 = sub_24F924BE8();
  v51 = *(v3 - 8);
  v52 = v3;
  MEMORY[0x28223BE20](v3);
  v50 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ControlSliderControllerNavigableModifier(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236358, &qword_24F9BA530);
  v58 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v63 = &v47 - v9;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236360, &qword_24F9BA538);
  v57 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v56 = &v47 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236368, &qword_24F9BA540);
  MEMORY[0x28223BE20](v11);
  v13 = &v47 - v12;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236370, &qword_24F9BA548);
  MEMORY[0x28223BE20](v49);
  v47 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v48 = &v47 - v16;
  v17 = *(v2 + 104);
  v61 = v11;
  v62 = v13;
  if (v17 == 1)
  {
    v18 = sub_24EFD3460();
  }

  else
  {
    v18 = sub_24EFD369C();
  }

  v54 = v18;
  v66 = v18;
  sub_24EFDBFC4(v2, &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = *(v6 + 80);
  v20 = (v19 + 16) & ~v19;
  v21 = swift_allocObject();
  sub_24EFDC02C(&v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v21 + v20);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236378, &qword_24F9BA550);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236380, &qword_24F9BA558);
  v24 = sub_24E602068(&qword_27F236388, &qword_27F236378, &qword_24F9BA550, MEMORY[0x277CE04B0]);
  v25 = v2;
  v64 = v7;
  v26 = v24;
  v27 = sub_24EFDC110();
  sub_24F926AB8();

  LOBYTE(v65) = sub_24EFD39A0() & 1;
  sub_24EFDBFC4(v2, v8);
  v28 = swift_allocObject();
  sub_24EFDC02C(v8, v28 + v20);
  v66 = v22;
  v67 = v23;
  v68 = v26;
  v69 = v27;
  swift_getOpaqueTypeConformance2();
  v29 = v56;
  v30 = v60;
  v31 = v63;
  sub_24F926AB8();

  (*(v58 + 8))(v31, v30);
  sub_24EFDBFC4(v25, v8);
  v63 = v19;
  v32 = swift_allocObject();
  sub_24EFDC02C(v8, v32 + v20);
  v33 = v62;
  (*(v57 + 32))(v62, v29, v59);
  v34 = (v33 + *(v61 + 36));
  *v34 = 0;
  v34[1] = 0;
  v34[2] = sub_24EFDC20C;
  v34[3] = v32;
  v35 = v25[11];
  v36 = v25[12];
  v66 = v25[10];
  v67 = v35;
  v68 = v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2361D0, &qword_24F9BA090);
  MEMORY[0x25304CAF0](&v65, v37);
  result = AXFormatFloatWithPercentage();
  if (result)
  {
    v39 = result;
    v40 = sub_24F92B0D8();
    v42 = v41;

    v66 = v40;
    v67 = v42;
    sub_24EFDC268();
    sub_24E600AEC();
    v43 = v47;
    sub_24F926558();

    sub_24E601704(v33, &qword_27F236368, &qword_24F9BA540);
    v44 = v50;
    sub_24F924BB8();
    v45 = v48;
    sub_24F924018();
    (*(v51 + 8))(v44, v52);
    sub_24E601704(v43, &qword_27F236370, &qword_24F9BA548);
    sub_24EFDBFC4(v25, v8);
    v46 = swift_allocObject();
    sub_24EFDC02C(v8, v46 + v20);
    sub_24F924028();

    return sub_24E601704(v45, &qword_27F236370, &qword_24F9BA548);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_24EFD4260(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 40);
  v4 = *(a3 + 48);
  v9 = *(a3 + 32);
  v10 = v3;
  v11 = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2363B0, &unk_24F94C9C0);
  MEMORY[0x25304CAF0](&v8, v5);
  if (v8 == 1)
  {
    sub_24EFD38D8();
    return sub_24EFD4654(v6);
  }

  else
  {
    sub_24EFD42DC();
    return sub_24EFD448C();
  }
}

void *sub_24EFD42DC()
{
  LOBYTE(v5) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2363B0, &unk_24F94C9C0);
  sub_24F927178();
  type metadata accessor for ControlSliderControllerNavigableModifier(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2363C0, &qword_24F9BA5D8);
  result = sub_24F926F38();
  if (v5)
  {

    if (qword_27F2113D8 != -1)
    {
      swift_once();
    }

    v1 = sub_24F9220D8();
    __swift_project_value_buffer(v1, qword_27F39E7D8);
    v2 = sub_24F9220B8();
    v3 = sub_24F92BD98();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_24E5DD000, v2, v3, "Stopping long press timer.", v4, 2u);
      MEMORY[0x2530542D0](v4, -1, -1);
    }

    sub_24F926F38();
    [v5 invalidate];

    return sub_24F926F48();
  }

  return result;
}

uint64_t sub_24EFD448C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30, &qword_24F939880);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v14[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v4);
  v6 = &v14[-v5];
  v7 = *(v0 + 152);
  v16 = *(v0 + 144);
  v17 = v7;
  v15 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2363C8, &unk_24F9BA5E0);
  sub_24F926F48();
  v8 = sub_24F91F648();
  (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
  v9 = type metadata accessor for ControlSliderControllerNavigableModifier(0);
  sub_24E60169C(v6, v3, &unk_27F22EC30, &qword_24F939880);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2362B0, &unk_24F986B90);
  sub_24F926F48();
  sub_24E601704(v6, &unk_27F22EC30, &qword_24F939880);
  v10 = (v0 + *(v9 + 72));
  v11 = *v10;
  v12 = *(v10 + 1);
  v16 = v11;
  v17 = v12;
  v15 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236220, &qword_24F93F6B0);
  return sub_24F926F48();
}

void *sub_24EFD4654(float a1)
{
  v2 = v1;
  v4 = sub_24F927D88();
  v167 = *(v4 - 8);
  v168 = v4;
  MEMORY[0x28223BE20](v4);
  v164 = &v141 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24F927DC8();
  v165 = *(v6 - 8);
  v166 = v6;
  MEMORY[0x28223BE20](v6);
  v163 = &v141 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ControlSliderControllerNavigableModifier(0);
  v158 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v153 = &v141 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v159 = v9;
  MEMORY[0x28223BE20](v10);
  v160 = &v141 - v11;
  v171 = sub_24F927DE8();
  v162 = *(v171 - 8);
  MEMORY[0x28223BE20](v171);
  v157 = &v141 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v161 = &v141 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30, &qword_24F939880);
  MEMORY[0x28223BE20](v15 - 8);
  v154 = (&v141 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v17);
  v155 = &v141 - v18;
  MEMORY[0x28223BE20](v19);
  v156 = &v141 - v20;
  MEMORY[0x28223BE20](v21);
  v23 = &v141 - v22;
  v24 = sub_24F91F648();
  v25 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v151 = &v141 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v29 = &v141 - v28;
  MEMORY[0x28223BE20](v30);
  v32 = &v141 - v31;
  MEMORY[0x28223BE20](v33);
  v35 = &v141 - v34;
  v170 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2362B0, &unk_24F986B90);
  sub_24F926F38();
  v152 = *(v25 + 48);
  v36 = v152(v23, 1, v24);
  v169 = v25;
  if (v36 == 1)
  {
    sub_24E601704(v23, &unk_27F22EC30, &qword_24F939880);
  }

  else
  {
    (*(v25 + 32))(v35, v23, v24);
    sub_24F91F568();
    sub_24F91F618();
    v37 = sub_24F91F588();
    v38 = *(v25 + 8);
    v38(v29, v24);
    v38(v32, v24);
    result = (v38)(v35, v24);
    if (v37)
    {
      return result;
    }
  }

  v40 = *(v2 + 108);
  if (-v40 > a1)
  {
    v41 = 1;
  }

  else
  {
    v41 = 2 * (v40 < a1);
  }

  v42 = (v2 + *(v8 + 80));
  v43 = *v42;
  v44 = v42[1];
  aBlock = v43;
  v173 = v44;
  v178 = ((fabsf(a1) - v40) / (1.0 - v40));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A6F0, &unk_24F95ACB0);
  sub_24F926F48();
  v45 = *(v2 + 144);
  v46 = *(v2 + 152);
  LOBYTE(aBlock) = v45;
  v173 = v46;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2363C8, &unk_24F9BA5E0);
  result = sub_24F926F38();
  if (v41 == LOBYTE(v178))
  {
    if (v41)
    {
      return result;
    }
  }

  else if (v41)
  {
    LOBYTE(aBlock) = v45;
    v173 = v46;
    sub_24F926F38();
    if (LOBYTE(v178))
    {
      LOBYTE(aBlock) = v45;
      v173 = v46;
      result = sub_24F926F38();
      if (!LOBYTE(v178))
      {
        return result;
      }

      LOBYTE(aBlock) = v45;
      v173 = v46;
      result = sub_24F926F38();
      if (v41 == LOBYTE(v178))
      {
        return result;
      }

      if (qword_27F2113D8 != -1)
      {
        swift_once();
      }

      v148 = v8;
      v47 = sub_24F9220D8();
      v48 = __swift_project_value_buffer(v47, qword_27F39E7D8);
      v49 = v153;
      sub_24EFDBFC4(v2, v153);
      v145 = v48;
      v50 = sub_24F9220B8();
      LODWORD(v146) = sub_24F92BD98();
      if (os_log_type_enabled(v50, v146))
      {
        v147 = swift_slowAlloc();
        *&v144 = COERCE_DOUBLE(swift_slowAlloc());
        v178 = *&v144;
        *v147 = 136315394;
        v51 = *(v49 + 152);
        LOBYTE(aBlock) = *(v49 + 144);
        v173 = v51;
        v143 = v50;
        sub_24F926F38();
        v142 = sub_24F92B188();
        v53 = v52;
        sub_24EFDC6A4(v49);
        v54 = sub_24E7620D4(v142, v53, &v178);

        v55 = v147;
        *(v147 + 4) = v54;
        *(v55 + 12) = 2080;
        LOBYTE(aBlock) = v41;
        v56 = sub_24F92B188();
        v58 = sub_24E7620D4(v56, v57, &v178);

        v59 = v147;
        *(v147 + 14) = v58;
        v60 = v143;
        _os_log_impl(&dword_24E5DD000, v143, v146, "Direction changed (%s -> %s", v59, 0x16u);
        v61 = v144;
        swift_arrayDestroy();
        MEMORY[0x2530542D0](v61, -1, -1);
        MEMORY[0x2530542D0](v147, -1, -1);
      }

      else
      {

        sub_24EFDC6A4(v49);
      }

      LOBYTE(aBlock) = v45;
      v173 = v46;
      sub_24F926F38();
      LODWORD(v147) = LOBYTE(v178);
      sub_24EFD42DC();
      v153 = *(v148 + 64);
      v107 = v154;
      sub_24F926F38();
      v108 = v107;
      if (v152(v107, 1, v24) == 1)
      {
        sub_24E601704(v107, &unk_27F22EC30, &qword_24F939880);
      }

      else
      {
        v109 = v169;
        v110 = v151;
        (*(v169 + 32))(v151, v108, v24);
        v111 = v2 + *(v148 + 72);
        v112 = *v111;
        v113 = *(v111 + 8);
        LOBYTE(aBlock) = v112;
        v173 = v113;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236220, &qword_24F93F6B0);
        sub_24F926F38();
        if (LOBYTE(v178))
        {
          (*(v109 + 8))(v110, v24);
        }

        else
        {
          sub_24F91F638();
          sub_24F91F558();
          v115 = v114;
          v116 = *(v109 + 8);
          v116(v32, v24);
          if (v115 < *(v2 + 112))
          {
            v152 = v116;
            v117 = sub_24F9220B8();
            v118 = sub_24F92BD98();
            v154 = v117;
            if (os_log_type_enabled(v117, v118))
            {
              v119 = swift_slowAlloc();
              v146 = v119;
              v145 = swift_slowAlloc();
              aBlock = v145;
              *v119 = 136315138;
              LOBYTE(v119) = v147;
              LOBYTE(v178) = v147;
              v120 = sub_24F92B188();
              v122 = sub_24E7620D4(v120, v121, &aBlock);
              LODWORD(v144) = v118;
              v123 = v122;
              v110 = v151;

              v124 = v146;
              *(v146 + 1) = v123;
              v125 = v119;
              _os_log_impl(&dword_24E5DD000, v154, v144, "Short press detected on direction change (%s", v124, 0xCu);
              v126 = v145;
              __swift_destroy_boxed_opaque_existential_1(v145);
              MEMORY[0x2530542D0](v126, -1, -1);
              MEMORY[0x2530542D0](v146, -1, -1);
            }

            else
            {

              v125 = v147;
            }

            sub_24EFD624C(v125, 0, 1, *(v2 + 128));
            v116 = v152;
          }

          v116(v110, v24);
        }
      }

      sub_24EFD448C();
      LOBYTE(aBlock) = v45;
      v173 = v46;
      LOBYTE(v178) = v41;
      sub_24F926F48();
      v127 = v156;
      sub_24F91F638();
      (*(v169 + 56))(v127, 0, 1, v24);
      sub_24E60169C(v127, v155, &unk_27F22EC30, &qword_24F939880);
      sub_24F926F48();
      sub_24E601704(v127, &unk_27F22EC30, &qword_24F939880);
      v128 = v2 + *(v148 + 72);
      v129 = *v128;
      v130 = *(v128 + 8);
      LOBYTE(aBlock) = v129;
      v173 = v130;
      LOBYTE(v178) = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236220, &qword_24F93F6B0);
      sub_24F926F48();
      sub_24E69A5C4(0, &qword_27F222300, 0x277D85C78);
      v91 = sub_24F92BEF8();
      v131 = v157;
      sub_24F927DD8();
      v93 = v161;
      sub_24F927E58();
      v170 = *(v162 + 8);
      v170(v131, v171);
      v132 = v160;
      sub_24EFDBFC4(v2, v160);
      v133 = (*(v158 + 80) + 16) & ~*(v158 + 80);
      v134 = v41;
      v135 = v133 + v159;
      v136 = swift_allocObject();
      sub_24EFDC02C(v132, v136 + v133);
      *(v136 + v135) = v134;
      v176 = sub_24EFDC704;
      v177 = v136;
      aBlock = MEMORY[0x277D85DD0];
      v173 = 1107296256;
      v98 = &block_descriptor_99;
    }

    else
    {
      v75 = v41;
      if (qword_27F2113D8 != -1)
      {
        swift_once();
      }

      v76 = sub_24F9220D8();
      __swift_project_value_buffer(v76, qword_27F39E7D8);
      v77 = sub_24F9220B8();
      v78 = sub_24F92BD98();
      v79 = os_log_type_enabled(v77, v78);
      v149 = v2;
      v150 = v75;
      if (v79)
      {
        v80 = swift_slowAlloc();
        v154 = swift_slowAlloc();
        aBlock = v154;
        *v80 = 136315138;
        LOBYTE(v178) = v75;
        v81 = sub_24F92B188();
        v83 = v8;
        v84 = sub_24E7620D4(v81, v82, &aBlock);

        *(v80 + 4) = v84;
        v8 = v83;
        _os_log_impl(&dword_24E5DD000, v77, v78, "Press detected (%s", v80, 0xCu);
        v85 = v154;
        __swift_destroy_boxed_opaque_existential_1(v154);
        MEMORY[0x2530542D0](v85, -1, -1);
        MEMORY[0x2530542D0](v80, -1, -1);
      }

      LOBYTE(aBlock) = v45;
      v173 = v46;
      LOBYTE(v178) = v150;
      sub_24F926F48();
      v86 = v156;
      sub_24F91F638();
      (*(v169 + 56))(v86, 0, 1, v24);
      sub_24E60169C(v86, v155, &unk_27F22EC30, &qword_24F939880);
      v87 = v149;
      sub_24F926F48();
      sub_24E601704(v86, &unk_27F22EC30, &qword_24F939880);
      v88 = v87 + *(v8 + 72);
      v89 = *v88;
      v90 = *(v88 + 8);
      LOBYTE(aBlock) = v89;
      v173 = v90;
      LOBYTE(v178) = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236220, &qword_24F93F6B0);
      sub_24F926F48();
      sub_24E69A5C4(0, &qword_27F222300, 0x277D85C78);
      v91 = sub_24F92BEF8();
      v92 = v157;
      sub_24F927DD8();
      v93 = v161;
      sub_24F927E58();
      v170 = *(v162 + 8);
      v170(v92, v171);
      v94 = v160;
      sub_24EFDBFC4(v87, v160);
      v95 = (*(v158 + 80) + 16) & ~*(v158 + 80);
      v96 = v95 + v159;
      v97 = swift_allocObject();
      sub_24EFDC02C(v94, v97 + v95);
      *(v97 + v96) = v150;
      v176 = sub_24EFDC734;
      v177 = v97;
      aBlock = MEMORY[0x277D85DD0];
      v173 = 1107296256;
      v98 = &block_descriptor_82_3;
    }

    v174 = sub_24EAF8248;
    v175 = v98;
    v137 = _Block_copy(&aBlock);

    v138 = v163;
    sub_24F927DA8();
    aBlock = MEMORY[0x277D84F90];
    sub_24EFDB7FC(&qword_27F222930, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222310, &unk_24F951080);
    sub_24E602068(&qword_27F222940, &qword_27F222310, &unk_24F951080, MEMORY[0x277D83970]);
    v139 = v164;
    v140 = v168;
    sub_24F92C6A8();
    MEMORY[0x253051820](v93, v138, v139, v137);
    _Block_release(v137);

    (*(v167 + 8))(v139, v140);
    (*(v165 + 8))(v138, v166);
    return (v170)(v93, v171);
  }

  LOBYTE(aBlock) = v45;
  v173 = v46;
  result = sub_24F926F38();
  if (LOBYTE(v178))
  {
    LOBYTE(aBlock) = v45;
    v173 = v46;
    sub_24F926F38();
    v62 = v8;
    v63 = LOBYTE(v178);
    sub_24EFD42DC();
    v64 = v2 + *(v62 + 72);
    v65 = *v64;
    v66 = *(v64 + 8);
    LOBYTE(aBlock) = v65;
    v173 = v66;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236220, &qword_24F93F6B0);
    sub_24F926F38();
    if (LOBYTE(v178))
    {
      if (qword_27F2113D8 != -1)
      {
        swift_once();
      }

      v67 = sub_24F9220D8();
      __swift_project_value_buffer(v67, qword_27F39E7D8);
      v68 = sub_24F9220B8();
      v69 = sub_24F92BD98();
      if (os_log_type_enabled(v68, v69))
      {
        v70 = swift_slowAlloc();
        v71 = swift_slowAlloc();
        aBlock = v71;
        *v70 = 136315138;
        LOBYTE(v178) = v63;
        v72 = sub_24F92B188();
        v74 = sub_24E7620D4(v72, v73, &aBlock);

        *(v70 + 4) = v74;
        _os_log_impl(&dword_24E5DD000, v68, v69, "Long press released (%s", v70, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v71);
        MEMORY[0x2530542D0](v71, -1, -1);
        MEMORY[0x2530542D0](v70, -1, -1);
      }
    }

    else
    {
      if (qword_27F2113D8 != -1)
      {
        swift_once();
      }

      v99 = sub_24F9220D8();
      __swift_project_value_buffer(v99, qword_27F39E7D8);
      v100 = sub_24F9220B8();
      v101 = sub_24F92BD98();
      if (os_log_type_enabled(v100, v101))
      {
        v102 = swift_slowAlloc();
        v103 = swift_slowAlloc();
        aBlock = v103;
        *v102 = 136315138;
        LOBYTE(v178) = v63;
        v104 = sub_24F92B188();
        v106 = sub_24E7620D4(v104, v105, &aBlock);

        *(v102 + 4) = v106;
        _os_log_impl(&dword_24E5DD000, v100, v101, "Short press detected (%s", v102, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v103);
        MEMORY[0x2530542D0](v103, -1, -1);
        MEMORY[0x2530542D0](v102, -1, -1);
      }

      sub_24EFD624C(v63, 0, 1, *(v2 + 128));
    }

    return sub_24EFD448C();
  }

  return result;
}

void *sub_24EFD5B48(uint64_t a1, _BYTE *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30, &qword_24F939880);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v12 - v7;
  if (*a2)
  {
    sub_24F91F618();
    v9 = sub_24F91F648();
    (*(*(v9 - 8) + 56))(v8, 0, 1, v9);
    type metadata accessor for ControlSliderControllerNavigableModifier(0);
    sub_24E60169C(v8, v5, &unk_27F22EC30, &qword_24F939880);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2362B0, &unk_24F986B90);
    sub_24F926F48();
    return sub_24E601704(v8, &unk_27F22EC30, &qword_24F939880);
  }

  else
  {
    v11 = sub_24F91F648();
    (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
    type metadata accessor for ControlSliderControllerNavigableModifier(0);
    sub_24E60169C(v8, v5, &unk_27F22EC30, &qword_24F939880);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2362B0, &unk_24F986B90);
    sub_24F926F48();
    sub_24E601704(v8, &unk_27F22EC30, &qword_24F939880);
    sub_24EFD42DC();
    sub_24EFD448C();
    return sub_24EFD4654(0.0);
  }
}

void *sub_24EFD5D60(uint64_t a1, uint64_t a2)
{
  v4 = sub_24F924848();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24F9256B8();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v12, a1, v8, v10);
  result = (*(v9 + 88))(v12, v8);
  if (result == *MEMORY[0x277CDE498])
  {
    v14 = *a2;
    if (*(a2 + 8) == 1)
    {
      if ((v14 & 1) == 0)
      {
        return result;
      }
    }

    else
    {

      sub_24F92BDC8();
      v16 = sub_24F9257A8();
      sub_24F921FD8();

      sub_24F924838();
      swift_getAtKeyPath();
      sub_24E62A5EC(v14, 0);
      result = (*(v5 + 8))(v7, v4);
      if (v38 != 1)
      {
        return result;
      }
    }

    v17 = *(a2 + 40);
    v18 = *(a2 + 48);
    v38 = *(a2 + 32);
    v39 = v17;
    LOBYTE(v40) = v18;
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2363B0, &unk_24F94C9C0);
    result = MEMORY[0x25304CAF0](&v41, v19);
    if (LOBYTE(v41) != 1)
    {
      return result;
    }

    v20 = (a2 + *(type metadata accessor for ControlSliderControllerNavigableModifier(0) + 80));
    v21 = *v20;
    v22 = v20[1];
    v38 = v21;
    v39 = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A6F0, &unk_24F95ACB0);
    sub_24F926F38();
    v23 = v41 * (v41 * v41) * 0.1;
    v24 = *(a2 + 80);
    v25 = *(a2 + 88);
    v26 = *(a2 + 96);
    v38 = v24;
    v39 = v25;
    v40 = v26;
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2361D0, &qword_24F9BA090);
    MEMORY[0x25304CAF0](&v41);
    v28 = v23 + v41;
  }

  else
  {
    if (result != *MEMORY[0x277CDE490])
    {
      return (*(v9 + 8))(v12, v8);
    }

    v15 = *a2;
    if (*(a2 + 8) == 1)
    {
      if ((v15 & 1) == 0)
      {
        return result;
      }
    }

    else
    {

      sub_24F92BDC8();
      v29 = sub_24F9257A8();
      sub_24F921FD8();

      sub_24F924838();
      swift_getAtKeyPath();
      sub_24E62A5EC(v15, 0);
      result = (*(v5 + 8))(v7, v4);
      if (v38 != 1)
      {
        return result;
      }
    }

    v30 = *(a2 + 40);
    v31 = *(a2 + 48);
    v38 = *(a2 + 32);
    v39 = v30;
    LOBYTE(v40) = v31;
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2363B0, &unk_24F94C9C0);
    result = MEMORY[0x25304CAF0](&v41, v32);
    if (LOBYTE(v41) != 1)
    {
      return result;
    }

    v33 = (a2 + *(type metadata accessor for ControlSliderControllerNavigableModifier(0) + 80));
    v34 = *v33;
    v35 = v33[1];
    v38 = v34;
    v39 = v35;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A6F0, &unk_24F95ACB0);
    sub_24F926F38();
    v36 = v41 * (v41 * v41) * -0.1;
    v24 = *(a2 + 80);
    v25 = *(a2 + 88);
    v26 = *(a2 + 96);
    v38 = v24;
    v39 = v25;
    v40 = v26;
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2361D0, &qword_24F9BA090);
    MEMORY[0x25304CAF0](&v41);
    v28 = v41 + v36;
  }

  if (v28 <= 0.0)
  {
    v28 = 0.0;
  }

  if (v28 <= 1.0)
  {
    v37 = v28;
  }

  else
  {
    v37 = 1.0;
  }

  v38 = v24;
  v39 = v25;
  v40 = v26;
  result = MEMORY[0x25304CAF0](&v41, v27);
  if (v41 != v37)
  {
    v38 = v24;
    v39 = v25;
    v40 = v26;
    v41 = v37;
    return sub_24F927178();
  }

  return result;
}

void sub_24EFD624C(char a1, char a2, char a3, double a4)
{
  v5 = v4;
  v10 = sub_24F924848();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *v5;
  if (*(v5 + 8) == 1)
  {
    if ((v14 & 1) == 0)
    {
      return;
    }
  }

  else
  {

    sub_24F92BDC8();
    v15 = sub_24F9257A8();
    sub_24F921FD8();

    sub_24F924838();
    swift_getAtKeyPath();
    sub_24E62A5EC(v14, 0);
    (*(v11 + 8))(v13, v10);
    if (v31 != 1)
    {
      return;
    }
  }

  v16 = *(v5 + 40);
  v17 = *(v5 + 48);
  v31 = *(v5 + 32);
  v32 = v16;
  LOBYTE(v33) = v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2363B0, &unk_24F94C9C0);
  MEMORY[0x25304CAF0](&v30, v18);
  if (LOBYTE(v30) != 1)
  {
    return;
  }

  if (a2)
  {
    v19 = (v5 + *(type metadata accessor for ControlSliderControllerNavigableModifier(0) + 80));
    v20 = *v19;
    v21 = v19[1];
    v31 = v20;
    v32 = v21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A6F0, &unk_24F95ACB0);
    sub_24F926F38();
    v22 = v30 * (v30 * v30);
    if (a1 != 1)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v22 = 1.0;
  if (a1 == 1)
  {
LABEL_10:
    a4 = -a4;
  }

LABEL_11:
  v23 = a4 * v22;
  v24 = *(v5 + 80);
  v25 = *(v5 + 88);
  v26 = *(v5 + 96);
  v31 = v24;
  v32 = v25;
  v33 = v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2361D0, &qword_24F9BA090);
  MEMORY[0x25304CAF0](&v30);
  v28 = v23 + v30;
  if (a3)
  {
    v28 = round(v28 * *(v5 + 120)) / *(v5 + 120);
  }

  if (v28 <= 0.0)
  {
    v28 = 0.0;
  }

  if (v28 <= 1.0)
  {
    v29 = v28;
  }

  else
  {
    v29 = 1.0;
  }

  v31 = v24;
  v32 = v25;
  v33 = v26;
  MEMORY[0x25304CAF0](&v30, v27);
  if (v30 != v29)
  {
    v31 = v24;
    v32 = v25;
    v33 = v26;
    v30 = v29;
    sub_24F927178();
  }
}

uint64_t sub_24EFD651C(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30, &qword_24F939880);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v36 - v5;
  v7 = sub_24F91F648();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v36 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v36 - v15;
  v17 = type metadata accessor for ControlSliderControllerNavigableModifier(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2362B0, &unk_24F986B90);
  sub_24F926F38();
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    return sub_24E601704(v6, &unk_27F22EC30, &qword_24F939880);
  }

  (*(v8 + 32))(v16, v6, v7);
  v19 = *(a1 + 152);
  LOBYTE(v40) = *(a1 + 144);
  *(&v40 + 1) = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2363C8, &unk_24F9BA5E0);
  sub_24F926F38();
  if (v39 == v2)
  {
    v40 = *(a1 + *(v17 + 68));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2363C0, &qword_24F9BA5D8);
    sub_24F926F38();
    if (v39)
    {
    }

    else
    {
      sub_24F91F5A8();
      sub_24F91F638();
      sub_24EFDB7FC(&qword_27F2363D0, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
      LODWORD(v38) = sub_24F92AF78();
      v20 = v2;
      v21 = *(v8 + 8);
      v21(v10, v7);
      v21(v13, v7);
      if ((v38 & 1) == 0)
      {
        v22 = v20;
        if (qword_27F2113D8 != -1)
        {
          swift_once();
        }

        v23 = sub_24F9220D8();
        __swift_project_value_buffer(v23, qword_27F39E7D8);
        v24 = sub_24F9220B8();
        v25 = sub_24F92BD98();
        if (os_log_type_enabled(v24, v25))
        {
          v26 = swift_slowAlloc();
          v37 = v26;
          v38 = swift_slowAlloc();
          *&v40 = v38;
          *v26 = 136315138;
          LOBYTE(v39) = v22;
          v27 = sub_24F92B188();
          v29 = sub_24E7620D4(v27, v28, &v40);

          v30 = v37;
          *(v37 + 1) = v29;
          _os_log_impl(&dword_24E5DD000, v24, v25, "Long press triggered (%s", v30, 0xCu);
          v31 = v38;
          __swift_destroy_boxed_opaque_existential_1(v38);
          MEMORY[0x2530542D0](v31, -1, -1);
          MEMORY[0x2530542D0](v30, -1, -1);
        }

        v32 = (a1 + *(v17 + 72));
        v33 = *v32;
        v34 = *(v32 + 1);
        LOBYTE(v40) = v33;
        *(&v40 + 1) = v34;
        LOBYTE(v39) = 1;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236220, &qword_24F93F6B0);
        sub_24F926F48();
        sub_24EFD69B0(v22, v35);
      }
    }
  }

  return (*(v8 + 8))(v16, v7);
}

void sub_24EFD69B0(char a1, __n128 a2)
{
  v3 = v2;
  v5 = type metadata accessor for ControlSliderControllerNavigableModifier(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = (v2 + *(v8 + 68));
  v11 = *v9;
  v10 = v9[1];
  aBlock = *v9;
  v29 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2363C0, &qword_24F9BA5D8);
  sub_24F926F38();
  v12 = v34;
  if (v34)
  {
    goto LABEL_4;
  }

  sub_24F91F528();
  v13 = (v3 + *(v5 + 76));
  v14 = *v13;
  v15 = v13[1];
  aBlock = v14;
  v29 = v15;
  v34 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A6F0, &unk_24F95ACB0);
  sub_24F926F48();
  v17 = *(v3 + 64);
  v18 = *(v3 + 72);
  aBlock = *(v3 + 56);
  v29 = v17;
  LOBYTE(v30) = v18;
  LOBYTE(v34) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2363B0, &unk_24F94C9C0);
  sub_24F927178();
  v27 = objc_opt_self();
  v19 = [objc_opt_self() mainScreen];
  v20 = a1;
  v21 = [v19 maximumFramesPerSecond];

  sub_24EFDBFC4(v3, &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v23 = swift_allocObject();
  sub_24EFDC02C(&v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v23 + v22);
  *(v23 + v22 + v7) = v20;
  v32 = sub_24EFDCA30;
  v33 = v23;
  aBlock = MEMORY[0x277D85DD0];
  v29 = 1107296256;
  v30 = sub_24ECAEFC8;
  v31 = &block_descriptor_88_0;
  v24 = _Block_copy(&aBlock);

  v25 = [v27 scheduledTimerWithTimeInterval:1 repeats:v24 block:1.0 / v21];
  _Block_release(v24);
  aBlock = v11;
  v29 = v10;
  v34 = v25;
  sub_24F926F48();
  v26 = [objc_opt_self() mainRunLoop];
  aBlock = v11;
  v29 = v10;
  sub_24F926F38();
  v12 = v34;
  if (v34)
  {
    [v26 addTimer:v34 forMode:*MEMORY[0x277CBE738]];

LABEL_4:
    return;
  }

  __break(1u);
}

void sub_24EFD6CEC(uint64_t a1, char a2)
{
  v4 = *(a1 + 152);
  LOBYTE(v19) = *(a1 + 144);
  *(&v19 + 1) = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2363C8, &unk_24F9BA5E0);
  sub_24F926F38();
  if (v18 == a2)
  {
    v5 = type metadata accessor for ControlSliderControllerNavigableModifier(0);
    v19 = *(a1 + *(v5 + 68));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2363C0, &qword_24F9BA5D8);
    sub_24F926F38();
    if (v18)
    {
    }

    else
    {
      if (qword_27F2113D8 != -1)
      {
        swift_once();
      }

      v6 = sub_24F9220D8();
      __swift_project_value_buffer(v6, qword_27F39E7D8);
      v7 = sub_24F9220B8();
      v8 = sub_24F92BD98();
      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        v10 = swift_slowAlloc();
        *&v19 = v10;
        *v9 = 136315138;
        v11 = sub_24F92B188();
        v13 = sub_24E7620D4(v11, v12, &v19);

        *(v9 + 4) = v13;
        _os_log_impl(&dword_24E5DD000, v7, v8, "Long press triggered after direction change (%s", v9, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v10);
        MEMORY[0x2530542D0](v10, -1, -1);
        MEMORY[0x2530542D0](v9, -1, -1);
      }

      v14 = (a1 + *(v5 + 72));
      v15 = *v14;
      v16 = *(v14 + 1);
      LOBYTE(v19) = v15;
      *(&v19 + 1) = v16;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236220, &qword_24F93F6B0);
      sub_24F926F48();
      sub_24EFD69B0(a2, v17);
    }
  }
}

void *sub_24EFD6F24(__n128 a1, uint64_t a2, uint64_t a3, char a4)
{
  type metadata accessor for ControlSliderControllerNavigableModifier(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236220, &qword_24F93F6B0);
  result = sub_24F926F38();
  if (LOBYTE(v9) == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2363C8, &unk_24F9BA5E0);
    sub_24F926F38();
    if (LOBYTE(v9) == a4 && (sub_24EFD39A0() & 1) != 0)
    {
      sub_24F91F528();
      v8 = v7;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A6F0, &unk_24F95ACB0);
      sub_24F926F38();
      sub_24EFD624C(a4, 1, 0, (v8 - v9) * *(a3 + 136));
      return sub_24F926F48();
    }

    else
    {
      return sub_24EFD42DC();
    }
  }

  return result;
}

void *OverlayHorizontalControlSlider.init(value:in:isFocused:onEditingChanged:leadingSymbol:trailingSymbol:hideTrailingSymbol:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, double a11@<D1>, double a12@<D2>, uint64_t a13, char a14)
{
  sub_24F926F28();
  *(a9 + 104) = v27;
  *(a9 + 112) = v28;
  result = sub_24F926F28();
  *(a9 + 120) = v27;
  *(a9 + 128) = v28;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a10;
  *(a9 + 48) = a11;
  *(a9 + 56) = a12;
  *(a9 + 24) = a3;
  *(a9 + 32) = a4;
  *(a9 + 40) = a5;
  *(a9 + 64) = a6;
  *(a9 + 72) = a7;
  *(a9 + 80) = a8;
  *(a9 + 88) = a13;
  *(a9 + 96) = a14;
  return result;
}

uint64_t OverlayHorizontalControlSlider.body.getter@<X0>(uint64_t a1@<X8>)
{
  v104 = a1;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30, &qword_24F939880);
  MEMORY[0x28223BE20](v99);
  v98 = v90 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v100 = v90 - v4;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217DC0, &unk_24F9E9B60);
  MEMORY[0x28223BE20](v96);
  v97 = (v90 - v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2361B0, &qword_24F9BA070);
  MEMORY[0x28223BE20](v6);
  v93 = v90 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2361B8, &qword_24F9BA078);
  v10 = v9 - 8;
  MEMORY[0x28223BE20](v9);
  v94 = v90 - v11;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2361C0, &qword_24F9BA080);
  MEMORY[0x28223BE20](v106);
  v105 = v90 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2361C8, &qword_24F9BA088);
  v102 = *(v13 - 8);
  v103 = v13;
  MEMORY[0x28223BE20](v13);
  v101 = v90 - v14;
  v15 = v1[7];
  v119[0] = v1[6];
  v119[1] = v15;
  v16 = v1[3];
  v115[1] = v1[2];
  v116 = v16;
  v17 = v1[5];
  v117 = v1[4];
  v118 = v17;
  v18 = v1[1];
  v114 = *v1;
  v115[0] = v18;
  v120 = *v1;
  *&v119[2] = *(v1 + 16);
  v19 = LOBYTE(v119[0]);
  v121 = *(v1 + 2);
  v107 = v114;
  v108 = *(v1 + 2);
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2361D0, &qword_24F9BA090);
  sub_24F927198();
  v20 = v112;
  v21 = v113;
  v122 = v116;
  v22 = swift_allocObject();
  v23 = v119[1];
  *(v22 + 112) = v119[0];
  *(v22 + 128) = v23;
  *(v22 + 144) = *&v119[2];
  v24 = v116;
  *(v22 + 48) = v115[1];
  *(v22 + 64) = v24;
  v25 = v118;
  *(v22 + 80) = v117;
  *(v22 + 96) = v25;
  v26 = v115[0];
  *(v22 + 16) = v114;
  *(v22 + 32) = v26;
  v112 = v20;
  v27 = 80;
  if (v19)
  {
    v27 = 88;
  }

  v113 = v21;
  v28 = *(&v115[-1] + v27);

  v110 = v28;
  v111 = 0;
  sub_24EFD7EA0(&v114, &v107);
  sub_24EFD7ED8();
  sub_24F9265E8();

  *&v107 = *(&v118 + 1);
  BYTE8(v107) = v19;
  sub_24F9265E8();
  sub_24EFD7F2C();
  sub_24E62C088();
  v29 = v94;
  sub_24F9270A8();
  KeyPath = swift_getKeyPath();
  v31 = (v29 + *(v10 + 44));
  v32 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212858, &qword_24F950980) + 28);
  v33 = *MEMORY[0x277CDF3D0];
  v34 = sub_24F9234D8();
  (*(*(v34 - 8) + 104))(v31 + v32, v33, v34);
  *v31 = KeyPath;
  v35 = _s7SwiftUI5ColorV12GameStoreKitE05focusC0ACvgZ_0();
  v36 = *(v96 + 36);
  v37 = *MEMORY[0x277CE13D8];
  v38 = sub_24F927748();
  v39 = v97;
  (*(*(v38 - 8) + 104))(v97 + v36, v37, v38);
  *v39 = v35;
  sub_24E602068(&qword_27F236200, &qword_27F217DC0, &unk_24F9E9B60, MEMORY[0x277CE03C0]);
  v40 = sub_24F9238D8();
  v41 = swift_getKeyPath();
  *&v107 = v40;
  v42 = sub_24F9238D8();
  v43 = v105;
  sub_24EFDB2E0(v29, v105);
  v44 = (v43 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236208, &qword_24F9BA100) + 36));
  *v44 = v41;
  v44[1] = v42;
  v45 = (v43 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F236210, &unk_24F9BA108) + 36));
  v46 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217118, &qword_24F950C70) + 28);
  v47 = *MEMORY[0x277CDF438];
  v48 = sub_24F9234F8();
  (*(*(v48 - 8) + 104))(v45 + v46, v47, v48);
  *v45 = swift_getKeyPath();
  v112 = *(v119 + 8);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236220, &qword_24F93F6B0);
  sub_24F926F58();
  v50 = v107;
  LODWORD(v92) = v108;
  v122 = *(&v119[1] + 8);
  v112 = *(&v119[1] + 8);
  v97 = v49;
  sub_24F926F58();
  v51 = v107;
  LODWORD(v91) = v108;
  v107 = v120;
  v108 = v121;
  sub_24F927198();
  v52 = v112;
  v53 = v113;
  v54 = v43 + *(v106 + 36);
  *v54 = swift_getKeyPath();
  *(v54 + 8) = 0;
  if (qword_27F211808 != -1)
  {
    swift_once();
  }

  v55 = qword_27F24E488;
  *&v112 = qword_27F24E488;
  type metadata accessor for GameControllerObserver(0);
  v56 = v55;
  sub_24F926F28();
  v57 = *(&v107 + 1);
  *(v54 + 16) = v107;
  *(v54 + 24) = v57;
  *(v54 + 32) = v50;
  *(v54 + 48) = v92;
  *(v54 + 56) = v51;
  v93 = *(&v51 + 1);
  v94 = v51;
  *(v54 + 72) = v91;
  *(v54 + 80) = v52;
  v95 = *(&v52 + 1);
  v96 = v52;
  *(v54 + 96) = v53;
  *(v54 + 104) = 1;
  *(v54 + 108) = 1045220557;
  *(v54 + 112) = 0x3FD0000000000000;
  *(v54 + 120) = 16;
  *(v54 + 128) = xmmword_24F9BA020;
  LOBYTE(v112) = 0;

  sub_24F926F28();
  v58 = *(&v107 + 1);
  *(v54 + 144) = v107;
  *(v54 + 152) = v58;
  v59 = type metadata accessor for ControlSliderControllerNavigableModifier(0);
  v92 = v50;
  v60 = v59;
  v61 = sub_24F91F648();
  v62 = *(v61 - 8);
  v90[0] = *(v62 + 56);
  v90[1] = v62 + 56;
  v91 = *(&v50 + 1);
  v63 = v100;
  (v90[0])(v100, 1, 1, v61);
  v64 = v98;
  sub_24E60169C(v63, v98, &unk_27F22EC30, &qword_24F939880);
  sub_24F926F28();
  sub_24E601704(v63, &unk_27F22EC30, &qword_24F939880);
  v65 = v60[17];
  *&v112 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236228, &unk_24F9BA180);
  sub_24F926F28();
  *(v54 + v65) = v107;
  v66 = v54 + v60[18];
  LOBYTE(v112) = 0;
  sub_24F926F28();
  v67 = *(&v107 + 1);
  *v66 = v107;
  *(v66 + 8) = v67;
  v68 = (v54 + v60[19]);
  *&v112 = 0;
  sub_24F926F28();
  v69 = *(&v107 + 1);
  *v68 = v107;
  v68[1] = v69;
  v70 = (v54 + v60[20]);
  *&v112 = 0;
  sub_24F926F28();
  v71 = *(&v107 + 1);
  *v70 = v107;
  v70[1] = v71;
  (v90[0])(v63, 1, 1, v61);
  sub_24E60169C(v63, v64, &unk_27F22EC30, &qword_24F939880);
  sub_24F926F28();

  sub_24E601704(v63, &unk_27F22EC30, &qword_24F939880);
  v107 = *(v115 + 8);
  LOBYTE(v108) = BYTE8(v115[1]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236230, &qword_24F9B9F40);
  sub_24F923358();
  v72 = swift_allocObject();
  v73 = v119[1];
  *(v72 + 112) = v119[0];
  *(v72 + 128) = v73;
  *(v72 + 144) = *&v119[2];
  v74 = v116;
  *(v72 + 48) = v115[1];
  *(v72 + 64) = v74;
  v75 = v118;
  *(v72 + 80) = v117;
  *(v72 + 96) = v75;
  v76 = v115[0];
  *(v72 + 16) = v114;
  *(v72 + 32) = v76;
  sub_24EFD7EA0(&v114, &v107);
  v77 = sub_24EFDB4EC();
  v78 = MEMORY[0x277D839C8];
  v79 = v101;
  v80 = v105;
  v81 = v106;
  v82 = MEMORY[0x277D839B0];
  sub_24F926AB8();

  sub_24E601704(v80, &qword_27F2361C0, &qword_24F9BA080);
  v107 = v122;
  sub_24F926F38();
  v83 = swift_allocObject();
  v84 = v119[1];
  *(v83 + 112) = v119[0];
  *(v83 + 128) = v84;
  *(v83 + 144) = *&v119[2];
  v85 = v116;
  *(v83 + 48) = v115[1];
  *(v83 + 64) = v85;
  v86 = v118;
  *(v83 + 80) = v117;
  *(v83 + 96) = v86;
  v87 = v115[0];
  *(v83 + 16) = v114;
  *(v83 + 32) = v87;
  sub_24EFD7EA0(&v114, &v107);
  *&v107 = v81;
  *(&v107 + 1) = v82;
  v108 = v77;
  v109 = v78;
  swift_getOpaqueTypeConformance2();
  v88 = v103;
  sub_24F926AB8();

  return (*(v102 + 8))(v79, v88);
}

void *sub_24EFD7E0C(char a1, uint64_t a2)
{
  v2 = a1 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236220, &qword_24F93F6B0);
  result = sub_24F926F38();
  if (v4 != v2)
  {
    return sub_24F926F48();
  }

  return result;
}

unint64_t sub_24EFD7ED8()
{
  result = qword_27F2361D8;
  if (!qword_27F2361D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2361D8);
  }

  return result;
}

unint64_t sub_24EFD7F2C()
{
  result = qword_27F2361E0;
  if (!qword_27F2361E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2361B0, &qword_24F9BA070);
    sub_24EFD7ED8();
    sub_24EFDB7FC(&qword_27F2141E0, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2361E0);
  }

  return result;
}

unsigned __int8 *sub_24EFD7FF0(unsigned __int8 *result, unsigned __int8 *a2, uint64_t a3)
{
  if (*result != *a2)
  {
    v3 = *(a3 + 64);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236220, &qword_24F93F6B0);
    sub_24F926F38();
    return v3(v4);
  }

  return result;
}

uint64_t sub_24EFD8070@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F236330, &qword_24F9BA4F8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = v20 - v9;
  if (a2)
  {
    v11 = *(v7 + 56);

    return v11(a3, 1, 1, v6, v8);
  }

  else
  {
    v20[0] = v7;

    v13 = sub_24F925898();
    KeyPath = swift_getKeyPath();
    v20[1] = a1;
    v20[2] = KeyPath;
    v20[3] = v13;
    sub_24F925938();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F212AA0, &unk_24F9B2BE0);
    sub_24E60156C();
    sub_24F9260C8();

    v15 = swift_getKeyPath();
    v16 = &v10[*(v6 + 36)];
    v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212858, &qword_24F950980) + 28);
    v18 = *MEMORY[0x277CDF3C0];
    v19 = sub_24F9234D8();
    (*(*(v19 - 8) + 104))(v16 + v17, v18, v19);
    *v16 = v15;
    sub_24E6009C8(v10, a3, &unk_27F236330, &qword_24F9BA4F8);
    return (*(v20[0] + 56))(a3, 0, 1, v6);
  }
}

uint64_t sub_24EFD82DC()
{
  v1 = sub_24F924848();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v8[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = *(v0 + 88);
  v5 = *(v0 + 80);
  v9 = v5;
  if (v10 != 1)
  {

    sub_24F92BDC8();
    v6 = sub_24F9257A8();
    sub_24F921FD8();

    sub_24F924838();
    swift_getAtKeyPath();
    sub_24E601704(&v9, &qword_27F223A10, &qword_24F9B2BF0);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v5) = v8[15];
  }

  return v5 & 1;
}

void sub_24EFD843C(double a1)
{
  v3 = sub_24F924848();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v15[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = *(v1 + 88);
  v7 = *(v1 + 80);
  v16 = v7;
  if (v17 == 1)
  {
    if ((v7 & 1) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    if (*(v1 + 40))
    {
      if (a1 <= 0.001)
      {
        if (*(*(v1 + 24) + 16))
        {
LABEL_18:

          return;
        }

        goto LABEL_24;
      }

      v9 = *(v1 + 24);
      v10 = *(v9 + 16);
      if (!v10)
      {
LABEL_23:
        __break(1u);
LABEL_24:
        __break(1u);
        return;
      }

      sub_24E6B8D5C(v9, v9 + 32, 1, (2 * v10) | 1);
      v12 = v11;
    }

    else
    {
      v12 = *(v1 + 24);
    }

    v13 = *(v12 + 16);
    v14 = round((v13 - 1) * a1);
    if ((*&v14 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v14 > -9.22337204e18)
    {
      if (v14 < 9.22337204e18)
      {
        if (v13)
        {

          return;
        }

        goto LABEL_22;
      }

LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

    __break(1u);
    goto LABEL_21;
  }

  sub_24F92BDC8();
  v8 = sub_24F9257A8();
  sub_24F921FD8();

  sub_24F924838();
  swift_getAtKeyPath();
  sub_24E601704(&v16, &qword_27F223A10, &qword_24F9B2BF0);
  (*(v4 + 8))(v6, v3);
  if (v15[15])
  {
    goto LABEL_6;
  }

LABEL_3:
  if (*(*(v1 + 24) + 16))
  {
    goto LABEL_18;
  }
}

uint64_t sub_24EFD86D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v38 = a1;
  v41 = a2;
  v37 = sub_24F9239C8();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v37);
  v36 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_24F924E98();
  MEMORY[0x28223BE20](v35);
  v39 = sub_24F923568();
  v40 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24F924158();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236550, &qword_24F9BA9F0);
  MEMORY[0x28223BE20](v34);
  v13 = &v34 - v12;
  sub_24F924148();
  v14 = swift_allocObject();
  v15 = *(v3 + 112);
  *(v14 + 112) = *(v3 + 96);
  *(v14 + 128) = v15;
  *(v14 + 144) = *(v3 + 128);
  *(v14 + 160) = *(v3 + 144);
  v16 = *(v3 + 48);
  *(v14 + 48) = *(v3 + 32);
  *(v14 + 64) = v16;
  v17 = *(v3 + 80);
  *(v14 + 80) = *(v3 + 64);
  *(v14 + 96) = v17;
  v18 = *(v3 + 16);
  *(v14 + 16) = *v3;
  *(v14 + 32) = v18;
  sub_24EFDD940(v3, v42);
  sub_24EFDB7FC(&qword_27F236558, MEMORY[0x277CDDAD8], MEMORY[0x277CDDAD0]);
  sub_24F927268();

  (*(v9 + 8))(v11, v8);
  sub_24F925228();
  sub_24F923518();
  v19 = v36;
  v20 = v37;
  (*(v4 + 16))(v36, v38, v37);
  v21 = (*(v4 + 80) + 168) & ~*(v4 + 80);
  v22 = swift_allocObject();
  v23 = *(v3 + 112);
  *(v22 + 112) = *(v3 + 96);
  *(v22 + 128) = v23;
  *(v22 + 144) = *(v3 + 128);
  *(v22 + 160) = *(v3 + 144);
  v24 = *(v3 + 48);
  *(v22 + 48) = *(v3 + 32);
  *(v22 + 64) = v24;
  v25 = *(v3 + 80);
  *(v22 + 80) = *(v3 + 64);
  *(v22 + 96) = v25;
  v26 = *(v3 + 16);
  *(v22 + 16) = *v3;
  *(v22 + 32) = v26;
  (*(v4 + 32))(v22 + v21, v19, v20);
  sub_24EFDD940(v3, v42);
  sub_24EFDB7FC(&unk_27F236560, MEMORY[0x277CDD730], MEMORY[0x277CDD728]);
  sub_24EFDB7FC(&qword_27F2180A0, MEMORY[0x277CDD708], MEMORY[0x277CDD710]);
  v27 = v39;
  sub_24F927278();

  (*(v40 + 8))(v7, v27);
  v28 = swift_allocObject();
  v29 = *(v3 + 112);
  *(v28 + 112) = *(v3 + 96);
  *(v28 + 128) = v29;
  *(v28 + 144) = *(v3 + 128);
  *(v28 + 160) = *(v3 + 144);
  v30 = *(v3 + 48);
  *(v28 + 48) = *(v3 + 32);
  *(v28 + 64) = v30;
  v31 = *(v3 + 80);
  *(v28 + 80) = *(v3 + 64);
  *(v28 + 96) = v31;
  v32 = *(v3 + 16);
  *(v28 + 16) = *v3;
  *(v28 + 32) = v32;
  sub_24EFDD940(v3, v42);
  sub_24E602068(&qword_27F236570, &qword_27F236550, &qword_24F9BA9F0, MEMORY[0x277CDDA40]);
  sub_24F927268();

  return sub_24E601704(v13, &qword_27F236550, &qword_24F9BA9F0);
}

uint64_t sub_24EFD8CA8(uint64_t a1, uint64_t a2)
{
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2361D0, &qword_24F9BA090);
  MEMORY[0x25304CAF0](&v5, v3);
  v6 = *(a2 + 120);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A6F0, &unk_24F95ACB0);
  sub_24F926F48();
  v6 = *(a2 + 64);
  LOBYTE(v5) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236220, &qword_24F93F6B0);
  return sub_24F926F48();
}

uint64_t sub_24EFD8D5C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A6F0, &unk_24F95ACB0);
  sub_24F926F38();
  sub_24F923558();
  sub_24F923538();
  sub_24F923998();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2361D0, &qword_24F9BA090);
  sub_24F927178();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236220, &qword_24F93F6B0);
  return sub_24F926F48();
}

BOOL sub_24EFD8E70()
{
  v1 = sub_24F924848();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v0 + 88);
  v5 = *(v0 + 80);
  v13 = v5;
  if (v14 == 1)
  {
    if ((v5 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {

    sub_24F92BDC8();
    v7 = sub_24F9257A8();
    sub_24F921FD8();

    sub_24F924838();
    swift_getAtKeyPath();
    sub_24E601704(&v13, &qword_27F223A10, &qword_24F9B2BF0);
    (*(v2 + 8))(v4, v1);
    if (v11 != 1)
    {
      return 0;
    }
  }

  v11 = *(v0 + 96);
  v12 = *(v0 + 112);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2361D0, &qword_24F9BA090);
  MEMORY[0x25304CAF0](&v10, v8);
  return v10 >= 0.125;
}

uint64_t sub_24EFD9028@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v75 = a1;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30, &qword_24F939880);
  MEMORY[0x28223BE20](v78);
  v68 = &v59 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v66 = &v59 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236470, &qword_24F9BA970);
  MEMORY[0x28223BE20](v6);
  v8 = (&v59 - v7);
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236478, &qword_24F9BA978);
  v73 = *(v74 - 8);
  MEMORY[0x28223BE20](v74);
  v72 = &v59 - v9;
  v10 = swift_allocObject();
  v11 = *(v1 + 112);
  *(v10 + 112) = *(v1 + 96);
  *(v10 + 128) = v11;
  *(v10 + 144) = *(v1 + 128);
  *(v10 + 160) = *(v1 + 144);
  v12 = *(v1 + 48);
  *(v10 + 48) = *(v1 + 32);
  *(v10 + 64) = v12;
  v13 = *(v1 + 80);
  *(v10 + 80) = *(v1 + 64);
  *(v10 + 96) = v13;
  v14 = *(v1 + 16);
  *(v10 + 16) = *v1;
  *(v10 + 32) = v14;
  sub_24EFDD940(v1, &v81);
  v67 = sub_24F9276F8();
  v15 = sub_24EFD8E70();
  v79 = *(v1 + 136);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236220, &qword_24F93F6B0);
  sub_24F926F58();
  v77 = *(&v81 + 1);
  v17 = v81;
  LODWORD(v61) = v82;
  v84 = *(v1 + 64);
  v79 = *(v1 + 64);
  v69 = v16;
  sub_24F926F58();
  v18 = *(&v81 + 1);
  v76 = v81;
  LODWORD(v60) = v82;
  v81 = *(v1 + 96);
  v82 = *(v1 + 112);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2361D0, &qword_24F9BA090);
  sub_24F927198();
  v19 = v79;
  v20 = v80;
  v71 = v6;
  v21 = *(v6 + 36);
  v70 = v8;
  v22 = v8 + v21;
  *v22 = swift_getKeyPath();
  v22[8] = 0;
  if (qword_27F211808 != -1)
  {
    swift_once();
  }

  v65 = v15;
  v23 = qword_27F24E488;
  *&v79 = qword_27F24E488;
  type metadata accessor for GameControllerObserver(0);
  v24 = v23;
  sub_24F926F28();
  v25 = *(&v81 + 1);
  *(v22 + 2) = v81;
  *(v22 + 3) = v25;
  v26 = v77;
  *(v22 + 4) = v17;
  *(v22 + 5) = v26;
  v22[48] = v61;
  *(v22 + 7) = v76;
  *(v22 + 8) = v18;
  v62 = v18;
  v22[72] = v60;
  *(v22 + 5) = v19;
  v63 = *(&v19 + 1);
  v64 = v19;
  *(v22 + 12) = v20;
  v22[104] = 0;
  *(v22 + 27) = 1045220557;
  *(v22 + 14) = 0x3FD0000000000000;
  *(v22 + 15) = 16;
  *(v22 + 8) = xmmword_24F9BA020;
  LOBYTE(v79) = 0;

  sub_24F926F28();
  v27 = *(&v81 + 1);
  v22[144] = v81;
  *(v22 + 19) = v27;
  v28 = type metadata accessor for ControlSliderControllerNavigableModifier(0);
  v61 = v17;
  v29 = v28;
  v30 = sub_24F91F648();
  v31 = *(v30 - 8);
  v59 = *(v31 + 56);
  v60 = v31 + 56;
  v32 = v66;
  v59(v66, 1, 1, v30);
  v33 = v68;
  sub_24E60169C(v32, v68, &unk_27F22EC30, &qword_24F939880);
  sub_24F926F28();
  sub_24E601704(v32, &unk_27F22EC30, &qword_24F939880);
  v34 = v29[17];
  *&v79 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236228, &unk_24F9BA180);
  sub_24F926F28();
  *&v22[v34] = v81;
  v35 = &v22[v29[18]];
  LOBYTE(v79) = 0;
  sub_24F926F28();
  v36 = *(&v81 + 1);
  *v35 = v81;
  *(v35 + 1) = v36;
  v37 = &v22[v29[19]];
  *&v79 = 0;
  sub_24F926F28();
  v38 = *(&v81 + 1);
  *v37 = v81;
  *(v37 + 1) = v38;
  v39 = &v22[v29[20]];
  *&v79 = 0;
  sub_24F926F28();
  v40 = *(&v81 + 1);
  *v39 = v81;
  *(v39 + 1) = v40;
  v59(v32, 1, 1, v30);
  sub_24E60169C(v32, v33, &unk_27F22EC30, &qword_24F939880);
  sub_24F926F28();

  sub_24E601704(v32, &unk_27F22EC30, &qword_24F939880);
  v41 = v70;
  *v70 = sub_24EFDD938;
  *(v41 + 8) = v10;
  *(v41 + 16) = v67;
  *(v41 + 24) = v65;
  v81 = *v2;
  LOBYTE(v82) = *(v2 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236230, &qword_24F9B9F40);
  sub_24F923358();
  v42 = swift_allocObject();
  v43 = *(v2 + 112);
  *(v42 + 112) = *(v2 + 96);
  *(v42 + 128) = v43;
  *(v42 + 144) = *(v2 + 128);
  *(v42 + 160) = *(v2 + 144);
  v44 = *(v2 + 48);
  *(v42 + 48) = *(v2 + 32);
  *(v42 + 64) = v44;
  v45 = *(v2 + 80);
  *(v42 + 80) = *(v2 + 64);
  *(v42 + 96) = v45;
  v46 = *(v2 + 16);
  *(v42 + 16) = *v2;
  *(v42 + 32) = v46;
  sub_24EFDD940(v2, &v81);
  v47 = sub_24EFDD9D0();
  v48 = MEMORY[0x277D839C8];
  v49 = v72;
  v50 = v71;
  v51 = MEMORY[0x277D839B0];
  sub_24F926AB8();

  sub_24E601704(v41, &qword_27F236470, &qword_24F9BA970);
  v81 = v84;
  sub_24F926F38();
  v52 = swift_allocObject();
  v53 = *(v2 + 112);
  *(v52 + 112) = *(v2 + 96);
  *(v52 + 128) = v53;
  *(v52 + 144) = *(v2 + 128);
  *(v52 + 160) = *(v2 + 144);
  v54 = *(v2 + 48);
  *(v52 + 48) = *(v2 + 32);
  *(v52 + 64) = v54;
  v55 = *(v2 + 80);
  *(v52 + 80) = *(v2 + 64);
  *(v52 + 96) = v55;
  v56 = *(v2 + 16);
  *(v52 + 16) = *v2;
  *(v52 + 32) = v56;
  sub_24EFDD940(v2, &v81);
  *&v81 = v50;
  *(&v81 + 1) = v51;
  v82 = v47;
  v83 = v48;
  swift_getOpaqueTypeConformance2();
  v57 = v74;
  sub_24F926AB8();

  return (*(v73 + 8))(v49, v57);
}

uint64_t sub_24EFD99CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v31 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2364D0, &qword_24F9BA9A0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v29 - v7;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2364D8, &qword_24F9BA9A8);
  MEMORY[0x28223BE20](v30);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2364E0, &qword_24F9BA9B0);
  MEMORY[0x28223BE20](v9);
  v11 = (v29 - v10);
  *v11 = sub_24F927608();
  v11[1] = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2364E8, &qword_24F9BA9B8);
  v14 = a1;
  sub_24EFD9E74(a1, a2, v11 + *(v13 + 44));
  *(v11 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2364F0, &unk_24F9BA9C0) + 36)) = 0;
  if (qword_27F210D98 != -1)
  {
    swift_once();
  }

  v15 = qword_27F39D330;
  v16 = *(v9 + 36);
  v29[1] = v9;
  v17 = (v11 + v16);
  v18 = *(sub_24F924258() + 20);
  v19 = *MEMORY[0x277CE0118];
  v20 = sub_24F924B38();
  (*(*(v20 - 8) + 104))(v17 + v18, v19, v20);
  *v17 = v15;
  v17[1] = v15;
  *(v17 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2164C8, &qword_24F9423C0) + 36)) = 256;
  sub_24EFD86D8(v14, v8);
  sub_24E602068(&qword_27F236500, &qword_27F2364D0, &qword_24F9BA9A0, MEMORY[0x277CDF728]);
  sub_24F927258();
  (*(v6 + 8))(v8, v5);
  sub_24E602068(&qword_27F236508, &qword_27F2364D8, &qword_24F9BA9A8, MEMORY[0x277CDF518]);
  v32[0] = sub_24F923258();
  sub_24F9235A8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236510, &qword_24F9BA9D0);
  sub_24EFDDC64();
  sub_24E602068(&qword_27F236540, &qword_27F236510, &qword_24F9BA9D0, MEMORY[0x277CDF308]);
  v21 = v31;
  sub_24F9269D8();

  sub_24E601704(v11, &qword_27F2364E0, &qword_24F9BA9B0);
  v22 = swift_allocObject();
  v23 = *(a2 + 112);
  *(v22 + 112) = *(a2 + 96);
  *(v22 + 128) = v23;
  *(v22 + 144) = *(a2 + 128);
  *(v22 + 160) = *(a2 + 144);
  v24 = *(a2 + 48);
  *(v22 + 48) = *(a2 + 32);
  *(v22 + 64) = v24;
  v25 = *(a2 + 80);
  *(v22 + 80) = *(a2 + 64);
  *(v22 + 96) = v25;
  v26 = *(a2 + 16);
  *(v22 + 16) = *a2;
  *(v22 + 32) = v26;
  v27 = (v21 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236548, &qword_24F9BA9E8) + 36));
  *v27 = sub_24EFDDE00;
  v27[1] = v22;
  v27[2] = 0;
  v27[3] = 0;
  return sub_24EFDD940(a2, v32);
}

uint64_t sub_24EFD9E74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v84 = a3;
  v5 = sub_24F927908();
  v76 = *(v5 - 8);
  v77 = v5;
  MEMORY[0x28223BE20](v5);
  v72 = &v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = sub_24F9278E8();
  v70 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v68 = &v66 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236578, &qword_24F9BA9F8);
  MEMORY[0x28223BE20](v67);
  v9 = &v66 - v8;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236580, &qword_24F9BAA00);
  MEMORY[0x28223BE20](v71);
  v75 = &v66 - v10;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236588, &qword_24F9BAA08);
  MEMORY[0x28223BE20](v74);
  v82 = &v66 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v69 = &v66 - v13;
  MEMORY[0x28223BE20](v14);
  v80 = &v66 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236590, &qword_24F9BAA10);
  MEMORY[0x28223BE20](v16);
  v83 = &v66 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v66 - v19;
  v21 = sub_24F926C98();
  if (qword_27F210D98 != -1)
  {
    swift_once();
  }

  v22 = qword_27F39D330;
  v23 = &v20[*(v16 + 36)];
  v24 = *(sub_24F924258() + 20);
  v25 = *MEMORY[0x277CE0118];
  v26 = sub_24F924B38();
  (*(*(v26 - 8) + 104))(v23 + v24, v25, v26);
  *v23 = v22;
  v23[1] = v22;
  *v20 = v21;
  *(v20 + 4) = 256;
  v78 = _s7SwiftUI5ColorV12GameStoreKitE05focusC0ACvgZ_0();
  sub_24F923998();
  if (sub_24EFD82DC())
  {
    *v87 = *(a2 + 96);
    v87[2] = *(a2 + 112);
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2361D0, &qword_24F9BA090);
    MEMORY[0x25304CAF0](v85, v27);
  }

  v79 = v20;
  v81 = a1;
  sub_24F927618();
  sub_24F9242E8();
  v66 = sub_24F927718();
  *v87 = *(a2 + 96);
  v87[2] = *(a2 + 112);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2361D0, &qword_24F9BA090);
  MEMORY[0x25304CAF0](v85);
  v29 = *&v85[0];
  *v87 = *(a2 + 96);
  v87[2] = *(a2 + 112);
  MEMORY[0x25304CAF0](v85, v28);
  sub_24EFD843C(*v85);
  v30 = sub_24F926DF8();
  v31 = sub_24F925888();
  KeyPath = swift_getKeyPath();
  v87[0] = v30;
  v87[1] = KeyPath;
  v87[2] = v31;
  sub_24F925958();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F212AA0, &unk_24F9B2BE0);
  sub_24E60156C();
  sub_24F9260C8();

  v33 = &v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236598, &unk_24F9BAA18) + 36)];
  v34 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2365A0, &unk_24F9B4DB0) + 28);
  sub_24F924CF8();
  v35 = sub_24F924D08();
  (*(*(v35 - 8) + 56))(v33 + v34, 0, 1, v35);
  *v33 = swift_getKeyPath();
  v36 = v68;
  sub_24F9278D8();
  v37 = v72;
  sub_24F9278F8();
  v38 = &v9[*(v67 + 36)];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2365A8, &qword_24F9ECB10);
  sub_24EFDB7FC(&qword_27F2365B0, MEMORY[0x277CE1598], MEMORY[0x277CE1590]);
  v39 = v73;
  sub_24F924388();
  (*(v76 + 8))(v37, v77);
  (*(v70 + 8))(v36, v39);
  *v38 = swift_getKeyPath();
  if (sub_24EFD8E70())
  {
    v40 = *(a2 + 32);
  }

  else
  {
    v40 = _s7SwiftUI5ColorV12GameStoreKitE05focusC0ACvgZ_0();
  }

  v41 = v79;
  v42 = v75;
  sub_24E6009C8(v9, v75, &qword_27F236578, &qword_24F9BA9F8);
  *(v42 + *(v71 + 36)) = v40;
  sub_24F923998();
  v44 = v43 * 0.5;
  sub_24F923998();
  v46 = v45 + -50.0;
  v47 = v69;
  sub_24E6009C8(v42, v69, &qword_27F236580, &qword_24F9BAA00);
  v48 = (v47 + *(v74 + 36));
  *v48 = v44;
  v48[1] = v46;
  v49 = v80;
  sub_24E6009C8(v47, v80, &qword_27F236588, &qword_24F9BAA08);
  v50 = v83;
  sub_24E60169C(v41, v83, &qword_27F236590, &qword_24F9BAA10);
  v51 = v41;
  v52 = v82;
  sub_24EFDE038(v49, v82);
  v53 = v84;
  sub_24E60169C(v50, v84, &qword_27F236590, &qword_24F9BAA10);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2365B8, &qword_24F9BAA90);
  v55 = v53 + *(v54 + 48);
  v56 = v78;
  *&v85[0] = v78;
  *(v85 + 8) = v88;
  *(&v85[1] + 8) = v89;
  *(&v85[6] + 8) = v94;
  *(&v85[3] + 8) = v91;
  *(&v85[4] + 8) = v92;
  *(&v85[5] + 8) = v93;
  *(&v85[2] + 8) = v90;
  v57 = v66;
  *(&v85[7] + 1) = v66;
  v86 = v29;
  v58 = v85[0];
  v59 = v85[1];
  v60 = v85[3];
  *(v55 + 32) = v85[2];
  *(v55 + 48) = v60;
  *v55 = v58;
  *(v55 + 16) = v59;
  v61 = v85[4];
  v62 = v85[5];
  v63 = v85[6];
  v64 = v85[7];
  *(v55 + 128) = v86;
  *(v55 + 96) = v63;
  *(v55 + 112) = v64;
  *(v55 + 64) = v61;
  *(v55 + 80) = v62;
  sub_24EFDE038(v52, v53 + *(v54 + 64));
  sub_24E60169C(v85, v87, &unk_27F2365C0, &qword_24F9BAA98);
  sub_24E601704(v49, &qword_27F236588, &qword_24F9BAA08);
  sub_24E601704(v51, &qword_27F236590, &qword_24F9BAA10);
  sub_24E601704(v52, &qword_27F236588, &qword_24F9BAA08);
  *&v87[7] = v91;
  *&v87[9] = v92;
  *&v87[11] = v93;
  *&v87[13] = v94;
  *&v87[1] = v88;
  *&v87[3] = v89;
  *&v87[5] = v90;
  v87[0] = v56;
  v87[15] = v57;
  v87[16] = v29;
  sub_24E601704(v87, &unk_27F2365C0, &qword_24F9BAA98);
  return sub_24E601704(v50, &qword_27F236590, &qword_24F9BAA10);
}

uint64_t sub_24EFDA82C(uint64_t a1)
{
  v5 = *(a1 + 96);
  v6 = *(a1 + 112);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2361D0, &qword_24F9BA090);
  MEMORY[0x25304CAF0](&v4, v2);
  v5 = *(a1 + 120);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A6F0, &unk_24F95ACB0);
  return sub_24F926F48();
}

double sub_24EFDA90C@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  if (*a1)
  {
    v34 = *(a1 + 48);
    *&v35 = *(a1 + 64);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2361D0, &qword_24F9BA090);
    sub_24F927198();
    v34 = *(a1 + 72);
    LOBYTE(v35) = *(a1 + 88);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236230, &qword_24F9B9F40);
    sub_24F923378();
    v4 = *(*(a1 + 8) + 16);
    if (v4)
    {
    }

    v10 = *(a1 + 32);
    v9 = *(a1 + 40);

    v11 = sub_24F926DF8();
    if (v4)
    {
    }

    v12 = sub_24F926DF8();
    sub_24F926F28();
    sub_24F926F28();
    v22 = v20;
    v23 = v21;
    v24 = xmmword_24F98B440;
    v25 = v10;
    v26 = v9;
    v27 = v11;
    v28 = v12;
    LOBYTE(v29) = 0;
    BYTE8(v29) = v34;
    v30 = *(&v34 + 1);
    LOBYTE(v31) = v34;
    *(&v31 + 1) = *(&v34 + 1);
    sub_24EFDD740(&v20);
  }

  else
  {
    v34 = *(a1 + 72);
    LOBYTE(v35) = *(a1 + 88);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236230, &qword_24F9B9F40);
    sub_24F923378();
    v5 = *(a1 + 8);
    v6 = *(a1 + 16);
    v19 = *(a1 + 24);
    v7 = *(a1 + 40);
    v18 = *(a1 + 32);
    v34 = *(a1 + 48);
    *&v35 = *(a1 + 64);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2361D0, &qword_24F9BA090);
    sub_24F927198();
    KeyPath = swift_getKeyPath();
    sub_24F926F28();
    sub_24F926F28();
    sub_24F926F28();
    *&v22 = v5;
    *(&v22 + 1) = v6;
    v23 = v19;
    *&v24 = v18;
    *(&v24 + 1) = v7;
    LOBYTE(v25) = v34;
    v26 = *(&v34 + 1);
    v27 = KeyPath;
    LOBYTE(v28) = 0;
    v29 = v20;
    v30 = v21;
    v31 = v34;
    v32 = v34;
    v33 = *(&v34 + 1);
    sub_24EFDD68C(&v20);
  }

  sub_24EFDD698();
  sub_24EFDD6EC();
  sub_24F924E28();
  v13 = v41;
  a2[6] = v40;
  a2[7] = v13;
  a2[8] = v42[0];
  *(a2 + 137) = *(v42 + 9);
  v14 = v37;
  a2[2] = v36;
  a2[3] = v14;
  v15 = v39;
  a2[4] = v38;
  a2[5] = v15;
  result = *&v34;
  v17 = v35;
  *a2 = v34;
  a2[1] = v17;
  return result;
}

double sub_24EFDACDC@<D0>(_OWORD *a1@<X8>)
{
  v3 = v1[3];
  v10[2] = v1[2];
  v10[3] = v3;
  v11[0] = v1[4];
  *(v11 + 9) = *(v1 + 73);
  v4 = v1[1];
  v10[0] = *v1;
  v10[1] = v4;
  sub_24EFDA90C(v10, v12);
  v5 = v12[7];
  a1[6] = v12[6];
  a1[7] = v5;
  a1[8] = v13[0];
  *(a1 + 137) = *(v13 + 9);
  v6 = v12[3];
  a1[2] = v12[2];
  a1[3] = v6;
  v7 = v12[5];
  a1[4] = v12[4];
  a1[5] = v7;
  result = *v12;
  v9 = v12[1];
  *a1 = v12[0];
  a1[1] = v9;
  return result;
}

uint64_t sub_24EFDAD70()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236420, &qword_24F9BA718);
  sub_24E602068(&qword_27F236428, &qword_27F236420, &qword_24F9BA718, MEMORY[0x277CE04B0]);
  sub_24EFDD4B0();
  return sub_24F9269E8();
}

id sub_24EFDAF24(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  *&v3[OBJC_IVAR____TtCV12GameStoreKit33UIArrowConsumingGestureRecognizer31GameControllerGestureRecognizer_recognizedPressTypes] = MEMORY[0x277D84F90];
  sub_24E60169C(a1, v17, &qword_27F2129B0, &unk_24F945320);
  v7 = v18;
  if (v18)
  {
    v8 = __swift_project_boxed_opaque_existential_1(v17, v18);
    v9 = *(v7 - 8);
    v10 = MEMORY[0x28223BE20](v8);
    v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v9 + 16))(v12, v10);
    v13 = sub_24F92CDE8();
    (*(v9 + 8))(v12, v7);
    __swift_destroy_boxed_opaque_existential_1(v17);
  }

  else
  {
    v13 = 0;
  }

  v16.receiver = v3;
  v16.super_class = ObjectType;
  v14 = objc_msgSendSuper2(&v16, sel_initWithTarget_action_, v13, a2);
  swift_unknownObjectRelease();
  sub_24E601704(a1, &qword_27F2129B0, &unk_24F945320);
  return v14;
}

void *sub_24EFDB254@<X0>(void *a1@<X8>)
{
  v4 = *(v1 + 8);
  v3 = *(v1 + 16);
  v5 = type metadata accessor for UIArrowConsumingGestureRecognizer.Coordinator();
  v6 = objc_allocWithZone(v5);
  v7 = &v6[OBJC_IVAR____TtCV12GameStoreKit33UIArrowConsumingGestureRecognizer11Coordinator_action];
  *v7 = v4;
  *(v7 + 1) = v3;
  v9.receiver = v6;
  v9.super_class = v5;

  result = objc_msgSendSuper2(&v9, sel_init);
  *a1 = result;
  return result;
}

uint64_t sub_24EFDB2E0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2361B8, &qword_24F9BA078);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24EFDB374(uint64_t a1)
{
  v2 = sub_24F9234F8();
  v3 = MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v5, a1, v3);
  return MEMORY[0x253049E50](v5);
}

uint64_t type metadata accessor for ControlSliderControllerNavigableModifier(uint64_t a1)
{
  result = qword_27F2362C0;
  if (!qword_27F2362C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_24EFDB4EC()
{
  result = qword_27F236238;
  if (!qword_27F236238)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2361C0, &qword_24F9BA080);
    sub_24EFDB5A8();
    sub_24EFDB7FC(&qword_27F236288, type metadata accessor for ControlSliderControllerNavigableModifier, &unk_24F9BA454);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F236238);
  }

  return result;
}

unint64_t sub_24EFDB5A8()
{
  result = qword_27F236240;
  if (!qword_27F236240)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27F236210, &unk_24F9BA108);
    sub_24EFDB660();
    sub_24E602068(&qword_27F236280, &qword_27F217118, &qword_24F950C70, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F236240);
  }

  return result;
}

unint64_t sub_24EFDB660()
{
  result = qword_27F236248;
  if (!qword_27F236248)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F236208, &qword_24F9BA100);
    sub_24EFDB718();
    sub_24E602068(&unk_27F236270, &qword_27F219DB0, &qword_24F987E00, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F236248);
  }

  return result;
}

unint64_t sub_24EFDB718()
{
  result = qword_27F236250;
  if (!qword_27F236250)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2361B8, &qword_24F9BA078);
    sub_24E602068(&qword_27F236258, &unk_27F236260, &unk_24F9BA190, MEMORY[0x277CDF048]);
    sub_24E602068(&qword_27F21B308, &qword_27F212858, &qword_24F950980, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F236250);
  }

  return result;
}

uint64_t sub_24EFDB7FC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t objectdestroyTm_48()
{

  return swift_deallocObject();
}

uint64_t sub_24EFDB938()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2361C8, &qword_24F9BA088);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2361C0, &qword_24F9BA080);
  sub_24EFDB4EC();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_24EFDBA10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2362B0, &unk_24F986B90);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 64);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24EFDBAE0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2362B0, &unk_24F986B90);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 64);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_24EFDBB90(uint64_t a1)
{
  sub_24EFDBE64(319, &qword_27F2362D0, MEMORY[0x277D839B0], MEMORY[0x277CDF468]);
  if (v1 <= 0x3F)
  {
    sub_24EFDBE0C(319);
    if (v2 <= 0x3F)
    {
      sub_24EFDBE64(319, &qword_27F2362E0, MEMORY[0x277D839B0], MEMORY[0x277CE11F8]);
      if (v3 <= 0x3F)
      {
        sub_24EFDBE64(319, &qword_27F22B450, MEMORY[0x277D839F8], MEMORY[0x277CE11F8]);
        if (v4 <= 0x3F)
        {
          sub_24EFDBE64(319, &unk_27F2362F0, &type metadata for ControlSliderControllerNavigableModifier.AxisState, MEMORY[0x277CE10B8]);
          if (v5 <= 0x3F)
          {
            sub_24EB8E864(319, &qword_27F22A040, &unk_27F22EC30, &qword_24F939880);
            if (v6 <= 0x3F)
            {
              sub_24EB8E864(319, &unk_27F236300, &qword_27F236228, &unk_24F9BA180);
              if (v7 <= 0x3F)
              {
                sub_24EFDBE64(319, &qword_27F254E10, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
                if (v8 <= 0x3F)
                {
                  sub_24EFDBE64(319, &qword_27F236310, MEMORY[0x277D839F8], MEMORY[0x277CE10B8]);
                  if (v9 <= 0x3F)
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
  }
}

void sub_24EFDBE0C(uint64_t a1)
{
  if (!qword_27F235C98)
  {
    type metadata accessor for GameControllerObserver(255);
    v1 = sub_24F926F68();
    if (!v2)
    {
      atomic_store(v1, &qword_27F235C98);
    }
  }
}

void sub_24EFDBE64(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_24EFDBED8()
{
  result = qword_27F236320;
  if (!qword_27F236320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F236320);
  }

  return result;
}

unint64_t sub_24EFDBF30()
{
  result = qword_27F236328;
  if (!qword_27F236328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F236328);
  }

  return result;
}

uint64_t sub_24EFDBFC4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ControlSliderControllerNavigableModifier(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24EFDC02C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ControlSliderControllerNavigableModifier(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void *sub_24EFDC090(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for ControlSliderControllerNavigableModifier(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_24EFD4260(a1, a2, v6);
}

unint64_t sub_24EFDC110()
{
  result = qword_27F236390;
  if (!qword_27F236390)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F236380, &qword_24F9BA558);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F236390);
  }

  return result;
}

void *sub_24EFDC18C(uint64_t a1, _BYTE *a2)
{
  type metadata accessor for ControlSliderControllerNavigableModifier(0);

  return sub_24EFD5B48(a1, a2);
}

unint64_t sub_24EFDC268()
{
  result = qword_27F236398;
  if (!qword_27F236398)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F236368, &qword_24F9BA540);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F236358, &qword_24F9BA530);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F236378, &qword_24F9BA550);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F236380, &qword_24F9BA558);
    sub_24E602068(&qword_27F236388, &qword_27F236378, &qword_24F9BA550, MEMORY[0x277CE04B0]);
    sub_24EFDC110();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F236398);
  }

  return result;
}

uint64_t objectdestroy_51Tm()
{
  v1 = type metadata accessor for ControlSliderControllerNavigableModifier(0);
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));
  sub_24E62A5EC(*v2, *(v2 + 8));

  v3 = v2 + v1[16];
  v4 = sub_24F91F648();
  v5 = *(v4 - 8);
  v6 = *(v5 + 48);
  if (!v6(v3, 1, v4))
  {
    (*(v5 + 8))(v3, v4);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2362B0, &unk_24F986B90);

  v7 = v2 + v1[21];
  if (!v6(v7, 1, v4))
  {
    (*(v5 + 8))(v7, v4);
  }

  return swift_deallocObject();
}

void *sub_24EFDC61C(uint64_t a1)
{
  v3 = *(type metadata accessor for ControlSliderControllerNavigableModifier(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_24EFD5D60(a1, v4);
}

uint64_t sub_24EFDC6A4(uint64_t a1)
{
  v2 = type metadata accessor for ControlSliderControllerNavigableModifier(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t block_copy_helper_99(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24EFDC74C(uint64_t (*a1)(uint64_t, uint64_t))
{
  v2 = *(type metadata accessor for ControlSliderControllerNavigableModifier(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));
  v4 = *(v3 + *(v2 + 64));

  return a1(v3, v4);
}

uint64_t objectdestroy_75Tm()
{
  v1 = type metadata accessor for ControlSliderControllerNavigableModifier(0);
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));
  sub_24E62A5EC(*v2, *(v2 + 8));

  v3 = v2 + v1[16];
  v4 = sub_24F91F648();
  v5 = *(v4 - 8);
  v6 = *(v5 + 48);
  if (!v6(v3, 1, v4))
  {
    (*(v5 + 8))(v3, v4);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2362B0, &unk_24F986B90);

  v7 = v2 + v1[21];
  if (!v6(v7, 1, v4))
  {
    (*(v5 + 8))(v7, v4);
  }

  return swift_deallocObject();
}

void *sub_24EFDCA30(uint64_t a1)
{
  v3 = *(type metadata accessor for ControlSliderControllerNavigableModifier(0) - 8);
  v5 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));
  v6 = *(v5 + *(v3 + 64));

  return sub_24EFD6F24(v4, a1, v5, v6);
}

char *sub_24EFDCAD8(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236448, &unk_24F9BA828);
  sub_24F925798();
  v3 = [objc_allocWithZone(type metadata accessor for UIArrowConsumingGestureRecognizer.GameControllerGestureRecognizer()) initWithTarget:v9 action:sel_handleGesture];

  sub_24E69A5C4(0, &qword_27F22BD50, 0x277CCABB0);
  v4 = v3;
  v5 = sub_24F92B588();
  [v4 setAllowedTouchTypes_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F223440, &qword_24F941F10);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_24F9BA030;
  *(v6 + 32) = sub_24F92BB08();
  *(v6 + 40) = sub_24F92BB08();
  *(v6 + 48) = sub_24F92BB08();
  *(v6 + 56) = sub_24F92BB08();
  v7 = sub_24F92B588();

  [v4 setAllowedPressTypes_];

  *&v4[OBJC_IVAR____TtCV12GameStoreKit33UIArrowConsumingGestureRecognizer31GameControllerGestureRecognizer_recognizedPressTypes] = a2;

  sub_24F925798();
  [v4 setDelegate_];

  return v4;
}

void sub_24EFDCC94(void *a1)
{
  v1 = [a1 allPresses];
  sub_24E69A5C4(0, &qword_27F2363F0, 0x277D758B8);
  sub_24EFDD1F0(&qword_27F2363F8, &qword_27F2363F0, 0x277D758B8);
  v2 = sub_24F92BAA8();

  if ((v2 & 0xC000000000000001) != 0)
  {
    sub_24F92C6F8();
    sub_24F92BAE8();
    v2 = v41;
    v3 = v42;
    v4 = v43;
    v5 = v44;
    v6 = v45;
  }

  else
  {
    v5 = 0;
    v7 = -1 << *(v2 + 32);
    v3 = v2 + 56;
    v4 = ~v7;
    v8 = -v7;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v6 = v9 & *(v2 + 56);
  }

  v10 = (v4 + 64) >> 6;
  v39 = 0u;
  while (1)
  {
    if (v2 < 0)
    {
      if (!sub_24F92C778() || (swift_dynamicCast(), (v13 = v40) == 0))
      {
LABEL_29:
        sub_24E6586B4(v2);
        v24 = sqrt(vaddvq_f64(vmulq_f64(v39, v39)));
        v25 = *&v38[OBJC_IVAR____TtCV12GameStoreKit33UIArrowConsumingGestureRecognizer31GameControllerGestureRecognizer_recognizedPressTypes];
        v26 = *(v25 + 16);
        if (!v26)
        {
          if (v24 > 0.25)
          {
LABEL_56:
            [v38 setState_];
          }

          return;
        }

        v27 = vmulq_n_f64(v39, 1.0 / v24);
        v28 = atan2(v27.f64[0], v27.f64[1]);
        v29 = 0;
        v30 = v28 > 0.785398163;
        if (v28 >= 2.35619449)
        {
          v30 = 0;
        }

        v31 = v28 < -0.785398163;
        if (v28 <= -2.35619449)
        {
          v31 = 0;
        }

        v32 = fabs(v28);
        v33 = 0;
        while (1)
        {
          v34 = v33 + 1;
          if (__OFADD__(v33, 1))
          {
            goto LABEL_61;
          }

          v35 = *(v25 + 32 + 8 * v33);
          if (v35 > 1)
          {
            if (v35 == 2)
            {
              if (v31)
              {
                goto LABEL_52;
              }
            }

            else if (v35 == 3 && v30)
            {
LABEL_52:
              v29 = 1;
              if (v34 == v26)
              {
                return;
              }

              ++v33;
              if (v34 >= v26)
              {
                goto LABEL_54;
              }

              continue;
            }
          }

          else if (v35)
          {
            if (v35 == 1 && (v28 < -2.35619449 || v28 > 2.35619449))
            {
              goto LABEL_52;
            }
          }

          else if (v32 < 0.785398163)
          {
            goto LABEL_52;
          }

          ++v33;
          if (v34 == v26)
          {
            goto LABEL_55;
          }

          if (v33 >= v26)
          {
LABEL_54:
            __break(1u);
LABEL_55:
            if (v29 & 1 | (v24 <= 0.25))
            {
              return;
            }

            goto LABEL_56;
          }
        }
      }

      goto LABEL_18;
    }

    v11 = v5;
    v12 = v6;
    if (!v6)
    {
      break;
    }

LABEL_14:
    v6 = (v12 - 1) & v12;
    v13 = *(*(v2 + 48) + ((v5 << 9) | (8 * __clz(__rbit64(v12)))));
    if (!v13)
    {
      goto LABEL_29;
    }

LABEL_18:
    v14 = [v13 type];
    if (v14 > 1)
    {
      if (v14 == 2)
      {
        [v13 force];
        v23 = v22;

        v17.f64[0] = v39.f64[0] - v23;
        v18 = v39.f64[1] + 0.0;
LABEL_28:
        v17.f64[1] = v18;
        v39 = v17;
      }

      else
      {
        if (v14 != 3)
        {
          goto LABEL_8;
        }

        [v13 force];
        v37 = v19;

        v20 = v37;
LABEL_26:
        v39 = vaddq_f64(v39, v20);
      }
    }

    else
    {
      if (!v14)
      {
        [v13 force];
        v37 = v21;

        v20.f64[0] = 0.0;
        *&v20.f64[1] = v37;
        goto LABEL_26;
      }

      if (v14 == 1)
      {
        [v13 force];
        v16 = v15;

        v17.f64[0] = v39.f64[0] + 0.0;
        v18 = v39.f64[1] - v16;
        goto LABEL_28;
      }

LABEL_8:
    }
  }

  while (1)
  {
    v5 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v5 >= v10)
    {
      goto LABEL_29;
    }

    v12 = *(v3 + 8 * v5);
    ++v11;
    if (v12)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_61:
  __break(1u);
}

uint64_t sub_24EFDD0EC(void *a1, void *a2)
{
  v3 = [a1 view];
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = [v3 window];

  if (!v5)
  {
    return 0;
  }

  v6 = [v5 _focusSystemGesturesForFailureRequirements];

  if (!v6)
  {
    return 0;
  }

  sub_24E69A5C4(0, &qword_27F2363D8, 0x277D75548);
  sub_24EFDD1F0(&unk_27F2363E0, &qword_27F2363D8, 0x277D75548);
  v7 = sub_24F92BAA8();

  v8 = sub_24F4D44EC(a2, v7);

  return v8 & 1;
}

uint64_t sub_24EFDD1F0(unint64_t *a1, unint64_t *a2, void *a3)
{
  result = *a1;
  if (!result)
  {
    sub_24E69A5C4(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24EFDD244()
{
  result = qword_27F236400;
  if (!qword_27F236400)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F236408, &qword_24F9BA670);
    sub_24EFDD2C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F236400);
  }

  return result;
}

unint64_t sub_24EFDD2C8()
{
  result = qword_27F236410;
  if (!qword_27F236410)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27F236330, &qword_24F9BA4F8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27F212AA0, &unk_24F9B2BE0);
    sub_24E60156C();
    swift_getOpaqueTypeConformance2();
    sub_24E602068(&qword_27F21B308, &qword_27F212858, &qword_24F950980, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F236410);
  }

  return result;
}

unint64_t sub_24EFDD3C0()
{
  result = qword_27F236418;
  if (!qword_27F236418)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F236370, &qword_24F9BA548);
    sub_24EFDC268();
    sub_24EFDB7FC(&qword_27F2141E0, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F236418);
  }

  return result;
}

unint64_t sub_24EFDD4B0()
{
  result = qword_27F236430;
  if (!qword_27F236430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F236430);
  }

  return result;
}

uint64_t sub_24EFDD504(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 89))
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

uint64_t sub_24EFDD54C(uint64_t result, int a2, int a3)
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
      *(result + 89) = 1;
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

    *(result + 89) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24EFDD5C4()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F236420, &qword_24F9BA718);
  sub_24E602068(&qword_27F236428, &qword_27F236420, &qword_24F9BA718, MEMORY[0x277CE04B0]);
  sub_24EFDD4B0();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_24EFDD698()
{
  result = qword_27F236438;
  if (!qword_27F236438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F236438);
  }

  return result;
}

unint64_t sub_24EFDD6EC()
{
  result = qword_27F236440;
  if (!qword_27F236440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F236440);
  }

  return result;
}

uint64_t sub_24EFDD748(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 152))
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

uint64_t sub_24EFDD790(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 152) = 1;
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

    *(result + 152) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_24EFDD808()
{
  result = qword_27F236450;
  if (!qword_27F236450)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F236458, &qword_24F9BA910);
    sub_24EFDD88C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F236450);
  }

  return result;
}

unint64_t sub_24EFDD88C()
{
  result = qword_27F236460;
  if (!qword_27F236460)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F236468, &qword_24F9BA918);
    sub_24EFDD698();
    sub_24EFDD6EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F236460);
  }

  return result;
}

unint64_t sub_24EFDD9D0()
{
  result = qword_27F236480;
  if (!qword_27F236480)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F236470, &qword_24F9BA970);
    sub_24EFDDA8C();
    sub_24EFDB7FC(&qword_27F236288, type metadata accessor for ControlSliderControllerNavigableModifier, &unk_24F9BA454);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F236480);
  }

  return result;
}

unint64_t sub_24EFDDA8C()
{
  result = qword_27F236488;
  if (!qword_27F236488)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F236490, &qword_24F9BA980);
    sub_24EFDDB44();
    sub_24E602068(&unk_27F2129E0, &unk_27F22E040, &unk_24F940690, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F236488);
  }

  return result;
}

unint64_t sub_24EFDDB44()
{
  result = qword_27F236498;
  if (!qword_27F236498)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2364A0, &qword_24F9BA988);
    sub_24E602068(&qword_27F2364A8, &unk_27F2364B0, &unk_24F9BA990, MEMORY[0x277CDF7D8]);
    sub_24E602068(&qword_27F218870, &unk_27F2364C0, qword_24F962AC0, MEMORY[0x277CE01A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F236498);
  }

  return result;
}

uint64_t sub_24EFDDC28(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v3 = *a1;
  result = *a2;
  if (v3 != result)
  {
    return (*(v2 + 64))();
  }

  return result;
}

unint64_t sub_24EFDDC64()
{
  result = qword_27F236518;
  if (!qword_27F236518)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2364E0, &qword_24F9BA9B0);
    sub_24EFDDD1C();
    sub_24E602068(&qword_27F216528, &qword_27F2164C8, &qword_24F9423C0, MEMORY[0x277CDF4F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F236518);
  }

  return result;
}

unint64_t sub_24EFDDD1C()
{
  result = qword_27F236520;
  if (!qword_27F236520)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27F2364F0, &unk_24F9BA9C0);
    sub_24E602068(&qword_27F236528, &unk_27F236530, &unk_24F9BA9D8, MEMORY[0x277CE11A8]);
    sub_24E602068(&qword_27F212A60, &qword_27F223340, &qword_24F939830, MEMORY[0x277CE0470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F236520);
  }

  return result;
}

uint64_t sub_24EFDDE10()
{
  v1 = sub_24F9239C8();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 168) & ~*(v2 + 80);

  sub_24E62A5EC(*(v0 + 96), *(v0 + 104));

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_24EFDDF28()
{
  sub_24F9239C8();

  return sub_24EFD8D5C();
}

uint64_t objectdestroy_129Tm_0()
{

  sub_24E62A5EC(*(v0 + 96), *(v0 + 104));

  return swift_deallocObject();
}

uint64_t sub_24EFDE038(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236588, &qword_24F9BAA08);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24EFDE0A8()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F236478, &qword_24F9BA978);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F236470, &qword_24F9BA970);
  sub_24EFDD9D0();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_24EFDE1B0(uint64_t a1)
{
  type metadata accessor for OverlayControlsVolumeViewModel();
  v1 = swift_allocObject();
  result = sub_24EFDE1EC();
  qword_27F39D2D0 = v1;
  return result;
}

uint64_t sub_24EFDE1EC()
{
  v1 = [objc_allocWithZone(MEMORY[0x277CCABD8]) init];
  *(v0 + 16) = v1;
  *(v0 + 24) = 0xD000000000000013;
  *(v0 + 32) = 0x800000024FA675C0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2139A0, &unk_24F9BAB10);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_24F93A400;
  v3 = *MEMORY[0x277D26DE8];
  v4 = *MEMORY[0x277D26B00];
  *(v2 + 32) = *MEMORY[0x277D26DE8];
  *(v2 + 40) = v4;
  *(v0 + 40) = v2;
  *(v0 + 48) = 0;
  *(v0 + 56) = 0;
  *(v0 + 64) = 0;
  *(v0 + 72) = 0;
  *(v0 + 80) = 0;
  *(v0 + 88) = 0xE000000000000000;
  *(v0 + 96) = 0u;
  *(v0 + 112) = 0u;
  *(v0 + 128) = 0u;
  *(v0 + 144) = 0u;
  v5 = v3;
  v6 = v4;
  [v1 setMaxConcurrentOperationCount_];
  v7 = *(v0 + 16);

  v8 = sub_24F92B098();

  [v7 setName_];

  return v0;
}

uint64_t sub_24EFDE324(uint64_t a1)
{
  sub_24EFDEC48();

  sub_24E824448(*(v1 + 56), *(v1 + 64));

  sub_24E601704(v1 + 96, &qword_27F2129B0, &unk_24F945320);
  sub_24E601704(v1 + 128, &qword_27F2129B0, &unk_24F945320);

  return swift_deallocClassInstance();
}

void sub_24EFDE3E4(float a1)
{
  if (vabds_f32(*(v1 + 72), a1) >= 0.0001)
  {
    v3 = [objc_opt_self() sharedInstance];
    if (v3)
    {
      v19 = v3;
      v5 = *(v1 + 80);
      v4 = *(v1 + 88);
      v6 = v1;
      v7 = qword_27F2113D8;

      if (v7 != -1)
      {
        swift_once();
      }

      v8 = sub_24F9220D8();
      __swift_project_value_buffer(v8, qword_27F39E7D8);

      v9 = sub_24F9220B8();
      v10 = sub_24F92BDD8();

      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        v20 = v12;
        *v11 = 134218242;
        *(v11 + 4) = a1;
        *(v11 + 12) = 2080;
        *(v11 + 14) = sub_24E7620D4(v5, v4, &v20);
        _os_log_impl(&dword_24E5DD000, v9, v10, "Set volume to %f for %s", v11, 0x16u);
        __swift_destroy_boxed_opaque_existential_1(v12);
        MEMORY[0x2530542D0](v12, -1, -1);
        MEMORY[0x2530542D0](v11, -1, -1);
      }

      v13 = sub_24F92B098();

      *&v14 = a1;
      v15 = [v19 setVolumeTo:v13 forCategory:v14];

      if (v15)
      {

        *(v6 + 72) = a1;
      }

      else
      {
        v16 = sub_24F9220B8();
        v17 = sub_24F92BDB8();
        if (os_log_type_enabled(v16, v17))
        {
          v18 = swift_slowAlloc();
          *v18 = 0;
          _os_log_impl(&dword_24E5DD000, v16, v17, "Audio: Unable to set volume for active category", v18, 2u);
          MEMORY[0x2530542D0](v18, -1, -1);
        }
      }
    }
  }
}

void sub_24EFDE684(uint64_t a1, uint64_t a2)
{
  v45 = *MEMORY[0x277D85DE8];
  if ((*(v2 + 48) & 1) == 0)
  {
    v3 = v2;
    if (qword_27F2113D8 != -1)
    {
      swift_once();
    }

    v6 = sub_24F9220D8();
    __swift_project_value_buffer(v6, qword_27F39E7D8);
    v7 = sub_24F9220B8();
    v8 = sub_24F92BD98();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_24E5DD000, v7, v8, "startObservingVolumeChanges", v9, 2u);
      MEMORY[0x2530542D0](v9, -1, -1);
    }

    *(v3 + 48) = 1;
    v10 = *(v3 + 56);
    v11 = *(v3 + 64);
    *(v3 + 56) = a1;
    *(v3 + 64) = a2;

    sub_24E824448(v10, v11);
    sub_24EFDF090();
    v12 = [objc_opt_self() sharedInstance];
    if (!v12)
    {
      goto LABEL_9;
    }

    type metadata accessor for Name(0);
    v13 = v12;
    v14 = sub_24F92B588();
    v15 = *MEMORY[0x277D26DD0];
    aBlock = 0;
    v16 = [v13 setAttribute:v14 forKey:v15 error:&aBlock];

    if (v16)
    {
      v17 = aBlock;
LABEL_9:
      v18 = objc_opt_self();
      v19 = [v18 defaultCenter];
      v20 = *MEMORY[0x277D26DE8];
      v21 = *(v3 + 16);
      v22 = swift_allocObject();
      swift_weakInit();
      v43 = sub_24EFDF3FC;
      v44 = v22;
      aBlock = MEMORY[0x277D85DD0];
      v40 = 1107296256;
      v41 = sub_24EEFA694;
      ObjectType = &block_descriptor_100;
      v23 = _Block_copy(&aBlock);

      v24 = [v19 addObserverForName:v20 object:0 queue:v21 usingBlock:v23];
      _Block_release(v23);

      ObjectType = swift_getObjectType();
      aBlock = v24;
      swift_beginAccess();
      sub_24E8E7708(&aBlock, v3 + 96);
      swift_endAccess();
      v25 = [v18 defaultCenter];
      v26 = *MEMORY[0x277D26B00];
      v27 = swift_allocObject();
      swift_weakInit();
      v43 = sub_24EFDF3D8;
      v44 = v27;
      aBlock = MEMORY[0x277D85DD0];
      v40 = 1107296256;
      v41 = sub_24EEFA694;
      ObjectType = &block_descriptor_27_1;
      v28 = _Block_copy(&aBlock);

      v29 = [v25 addObserverForName:v26 object:0 queue:v21 usingBlock:v28];
      _Block_release(v28);

      ObjectType = swift_getObjectType();
      aBlock = v29;
      swift_beginAccess();
      sub_24E8E7708(&aBlock, v3 + 128);
      swift_endAccess();
      return;
    }

    v30 = aBlock;
    v31 = sub_24F91F278();

    swift_willThrow();
    v32 = v31;
    v33 = sub_24F9220B8();
    v34 = sub_24F92BDB8();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      *v35 = 138412290;
      v37 = v31;
      v38 = _swift_stdlib_bridgeErrorToNSError();
      *(v35 + 4) = v38;
      *v36 = v38;
      _os_log_impl(&dword_24E5DD000, v33, v34, "Audio: Could not subscribe to AVSystemController notifications: %@", v35, 0xCu);
      sub_24E601704(v36, &qword_27F227B20, &qword_24F944D30);
      MEMORY[0x2530542D0](v36, -1, -1);
      MEMORY[0x2530542D0](v35, -1, -1);
    }

    else
    {
    }
  }
}

double sub_24EFDEBF0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_24EFDF090();
  }

  return result;
}

void sub_24EFDEC48()
{
  v30 = *MEMORY[0x277D85DE8];
  if (*(v0 + 48) == 1)
  {
    v1 = v0;
    if (qword_27F2113D8 != -1)
    {
      swift_once();
    }

    v2 = sub_24F9220D8();
    __swift_project_value_buffer(v2, qword_27F39E7D8);
    v3 = sub_24F9220B8();
    v4 = sub_24F92BD98();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_24E5DD000, v3, v4, "stopObservingVolumeChanges", v5, 2u);
      MEMORY[0x2530542D0](v5, -1, -1);
    }

    *(v1 + 48) = 0;
    v6 = *(v1 + 56);
    v7 = *(v1 + 64);
    *(v1 + 56) = 0;
    *(v1 + 64) = 0;
    sub_24E824448(v6, v7);
    v8 = [objc_opt_self() sharedInstance];
    if (v8)
    {
      v9 = v8;
      sub_24EFDF33C();
      v10 = v9;
      v11 = MEMORY[0x253051CC0](MEMORY[0x277D84F90]);
      v12 = *MEMORY[0x277D26DD0];
      *&v28 = 0;
      v13 = [v10 setAttribute:v11 forKey:v12 error:&v28];

      if (v13)
      {
        v14 = v28;
      }

      else
      {
        v15 = v28;
        v16 = sub_24F91F278();

        swift_willThrow();
        v17 = v16;
        v18 = sub_24F9220B8();
        v19 = sub_24F92BDB8();

        if (os_log_type_enabled(v18, v19))
        {
          v20 = swift_slowAlloc();
          v21 = swift_slowAlloc();
          *v20 = 138412290;
          v22 = v16;
          v23 = _swift_stdlib_bridgeErrorToNSError();
          *(v20 + 4) = v23;
          *v21 = v23;
          _os_log_impl(&dword_24E5DD000, v18, v19, "Audio: Could not clear subscriptions to AVSystemController notifications: %@", v20, 0xCu);
          sub_24E601704(v21, &qword_27F227B20, &qword_24F944D30);
          MEMORY[0x2530542D0](v21, -1, -1);
          MEMORY[0x2530542D0](v20, -1, -1);
        }

        else
        {
        }
      }
    }

    swift_beginAccess();
    sub_24E94E17C(v1 + 96, &v26);
    if (v27)
    {
      sub_24E612B0C(&v26, &v28);
      v24 = [objc_opt_self() defaultCenter];
      __swift_project_boxed_opaque_existential_1(&v28, v29);
      [v24 removeObserver_];

      swift_unknownObjectRelease();
      __swift_destroy_boxed_opaque_existential_1(&v28);
    }

    else
    {
      sub_24E601704(&v26, &qword_27F2129B0, &unk_24F945320);
    }

    swift_beginAccess();
    sub_24E94E17C(v1 + 128, &v26);
    if (v27)
    {
      sub_24E612B0C(&v26, &v28);
      v25 = [objc_opt_self() defaultCenter];
      __swift_project_boxed_opaque_existential_1(&v28, v29);
      [v25 removeObserver_];

      swift_unknownObjectRelease();
      __swift_destroy_boxed_opaque_existential_1(&v28);
    }

    else
    {
      sub_24E601704(&v26, &qword_27F2129B0, &unk_24F945320);
    }
  }
}

void sub_24EFDF090()
{
  v25 = *MEMORY[0x277D85DE8];
  v1 = [objc_opt_self() sharedInstance];
  if (v1)
  {
    v2 = v1;
    v24 = 0.0;
    v23 = 0;
    v3 = [v1 getActiveCategoryVolume:&v24 andName:&v23];
    v4 = v23;
    if (!v3)
    {
      v8 = qword_27F2113D8;
      v9 = v23;
      if (v8 != -1)
      {
        swift_once();
      }

      v10 = sub_24F9220D8();
      __swift_project_value_buffer(v10, qword_27F39E7D8);
      v11 = sub_24F9220B8();
      v12 = sub_24F92BDB8();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        *v13 = 0;
        _os_log_impl(&dword_24E5DD000, v11, v12, "Audio: Could not fetch active category volume.", v13, 2u);
        MEMORY[0x2530542D0](v13, -1, -1);
      }

      goto LABEL_21;
    }

    if (v23)
    {
      v5 = sub_24F92B0D8();
      v7 = v6;
    }

    else
    {
      v5 = 0;
      v7 = 0xE000000000000000;
    }

    if (*(v0 + 80) == v5 && *(v0 + 88) == v7 || (sub_24F92CE08() & 1) != 0)
    {
      v14 = v4;

      v15 = (v0 + 72);
      v16 = v24;
      if (vabds_f32(*(v0 + 72), v24) < 0.0001)
      {

        goto LABEL_21;
      }
    }

    else
    {
      *(v0 + 80) = v5;
      *(v0 + 88) = v7;
      v17 = v4;

      v15 = (v0 + 72);
      v18 = *(v0 + 72);
      v16 = v24;
      if (vabds_f32(v18, v24) < 0.0001)
      {
LABEL_18:
        v19 = *(v0 + 56);
        if (v19)
        {
          v20 = *(v0 + 64);
          v21 = *(v0 + 80);
          v22 = *(v0 + 88);
          sub_24E5FCA4C(*(v0 + 56), v20);

          v19(0, v21, v22, v18);

          sub_24E824448(v19, v20);
LABEL_22:

          return;
        }

LABEL_21:
        v4 = v2;
        goto LABEL_22;
      }
    }

    *v15 = v16;
    v18 = v16;
    goto LABEL_18;
  }
}

unint64_t sub_24EFDF33C()
{
  result = qword_27F22F948;
  if (!qword_27F22F948)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F22F948);
  }

  return result;
}

uint64_t sub_24EFDF388()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t block_copy_helper_100(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24EFDF400()
{
  v0 = sub_24F91F7C8();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_24F92B088();
  MEMORY[0x28223BE20](v1 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2365E0, &qword_24F9BABD8);
  sub_24F926F38();
  swift_getKeyPath();
  sub_24EFE1EF0(&qword_27F2365E8, type metadata accessor for OverlayControlsGameModeViewModel, &unk_24F9BAFA8);
  sub_24F91FD88();

  v2 = *(v5 + 18);

  if (v2)
  {
    sub_24F92B018();
    if (qword_27F211820 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_6;
  }

  sub_24F92B018();
  if (qword_27F211820 != -1)
  {
LABEL_6:
    swift_once();
  }

LABEL_5:
  v3 = qword_27F24F280;
  sub_24F91F778();
  return sub_24F92B148();
}

uint64_t sub_24EFDF684@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v64 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214698, &unk_24F95F810);
  MEMORY[0x28223BE20](v3 - 8);
  v56 = v55 - v4;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F230A50, &unk_24F9A30C0);
  MEMORY[0x28223BE20](v57);
  v6 = (v55 - v5);
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236708, &unk_24F9BAD30);
  MEMORY[0x28223BE20](v61);
  v63 = v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v60 = v55 - v9;
  MEMORY[0x28223BE20](v10);
  v62 = v55 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217DC0, &unk_24F9E9B60);
  MEMORY[0x28223BE20](v12);
  v14 = (v55 - v13);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236710, &qword_24F9BAD40);
  MEMORY[0x28223BE20](v15);
  v17 = v55 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236718, &qword_24F9BAD48);
  MEMORY[0x28223BE20](v18);
  v59 = v55 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = v55 - v21;
  MEMORY[0x28223BE20](v23);
  v58 = v55 - v24;
  v70 = *a1;
  v67 = *a1;
  v55[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2365E0, &qword_24F9BABD8);
  sub_24F926F38();
  v25 = v66;
  swift_getKeyPath();
  *&v67 = v25;
  v55[0] = sub_24EFE1EF0(&qword_27F2365E8, type metadata accessor for OverlayControlsGameModeViewModel, &unk_24F9BAFA8);
  sub_24F91FD88();

  v26 = *(v25 + 18);

  v27 = _s7SwiftUI5ColorV12GameStoreKitE05focusC0ACvgZ_0();
  if (!v26)
  {
    v28 = sub_24F926D08();

    v27 = v28;
  }

  v29 = *(v12 + 36);
  v30 = *MEMORY[0x277CE13D8];
  v31 = sub_24F927748();
  (*(*(v31 - 8) + 104))(v14 + v29, v30, v31);
  *v14 = v27;
  sub_24E6009C8(v14, v17, &qword_27F217DC0, &unk_24F9E9B60);
  *&v17[*(v15 + 56)] = 256;
  v32 = v58;
  if (qword_27F210D78 != -1)
  {
    swift_once();
  }

  sub_24F927618();
  sub_24F9238C8();
  sub_24E6009C8(v17, v22, &qword_27F236710, &qword_24F9BAD40);
  v33 = &v22[*(v18 + 36)];
  v34 = v68;
  *v33 = v67;
  *(v33 + 1) = v34;
  *(v33 + 2) = v69;
  sub_24E6009C8(v22, v32, &qword_27F236718, &qword_24F9BAD48);
  v35 = sub_24F926E48();
  v36 = sub_24F925908();
  v37 = v56;
  (*(*(v36 - 8) + 56))(v56, 1, 1, v36);
  sub_24F925968();
  sub_24E601704(v37, &qword_27F214698, &unk_24F95F810);
  sub_24F925958();
  v38 = sub_24F9259A8();

  KeyPath = swift_getKeyPath();
  v40 = (v6 + *(v57 + 36));
  v41 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22DF30, &qword_24F958D50) + 28);
  v42 = *MEMORY[0x277CE1050];
  v43 = sub_24F926E78();
  (*(*(v43 - 8) + 104))(v40 + v41, v42, v43);
  *v40 = swift_getKeyPath();
  *v6 = v35;
  v6[1] = KeyPath;
  v6[2] = v38;
  v66 = v70;
  sub_24F926F38();
  v44 = v65;
  swift_getKeyPath();
  *&v66 = v44;
  sub_24F91FD88();

  LODWORD(v35) = *(v44 + 18);

  if (v35)
  {
    v45 = sub_24F926C38();
  }

  else
  {
    v45 = _s7SwiftUI5ColorV12GameStoreKitE05focusC0ACvgZ_0();
  }

  v46 = v45;
  v48 = v60;
  v47 = v61;
  sub_24E6009C8(v6, v60, &qword_27F230A50, &unk_24F9A30C0);
  *(v48 + *(v47 + 36)) = v46;
  v49 = v62;
  sub_24E6009C8(v48, v62, &qword_27F236708, &unk_24F9BAD30);
  v50 = v59;
  sub_24E60169C(v32, v59, &qword_27F236718, &qword_24F9BAD48);
  v51 = v63;
  sub_24E60169C(v49, v63, &qword_27F236708, &unk_24F9BAD30);
  v52 = v64;
  sub_24E60169C(v50, v64, &qword_27F236718, &qword_24F9BAD48);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236720, &qword_24F9BADB8);
  sub_24E60169C(v51, v52 + *(v53 + 48), &qword_27F236708, &unk_24F9BAD30);
  sub_24E601704(v49, &qword_27F236708, &unk_24F9BAD30);
  sub_24E601704(v32, &qword_27F236718, &qword_24F9BAD48);
  sub_24E601704(v51, &qword_27F236708, &unk_24F9BAD30);
  return sub_24E601704(v50, &qword_27F236718, &qword_24F9BAD48);
}

uint64_t sub_24EFDFE54@<X0>(uint64_t a1@<X8>)
{
  v51 = a1;
  v50 = sub_24F924B38();
  v2 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v49 = &v48 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_24F9241F8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236618, &qword_24F9BAC18);
  MEMORY[0x28223BE20](v8);
  v10 = &v48 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236620, &qword_24F9BAC20);
  v12 = v11 - 8;
  MEMORY[0x28223BE20](v11);
  v14 = &v48 - v13;
  v15 = swift_allocObject();
  v16 = *(v1 + 16);
  *(v15 + 16) = *v1;
  *(v15 + 32) = v16;
  *(v15 + 48) = *(v1 + 32);
  *(v15 + 64) = *(v1 + 48);
  v52 = v1;
  sub_24EFE1AA0(v1, v53);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236628, &qword_24F9BAC28);
  sub_24EFE1AD8();
  sub_24F926F88();
  sub_24F9241E8();
  sub_24EFE1E0C();
  sub_24EFE1EF0(&qword_27F212838, MEMORY[0x277CDDB18], MEMORY[0x277CDDB08]);
  sub_24F926178();
  (*(v5 + 8))(v7, v4);
  sub_24E601704(v10, &qword_27F236618, &qword_24F9BAC18);
  v17 = &v14[*(v12 + 44)];
  v18 = sub_24F924258();
  v19 = *MEMORY[0x277CE0118];
  v20 = *(v2 + 104);
  v21 = v50;
  v20(&v17[*(v18 + 20)], v19, v50);
  __asm { FMOV            V0.2D, #24.0 }

  v48 = _Q0;
  *v17 = _Q0;
  v27 = v51;
  v28 = v49;
  v20(v49, v19, v21);
  v29 = v14;
  v53[3] = v18;
  v53[4] = sub_24EFE1EF0(&qword_27F212868, MEMORY[0x277CDFC08], MEMORY[0x277CDFBE0]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v53);
  (*(v2 + 16))(boxed_opaque_existential_1 + *(v18 + 20), v28, v21);
  *boxed_opaque_existential_1 = v48;
  (*(v2 + 8))(v28, v21);
  sub_24E60169C(v53, v27, &qword_27F2366A8, &qword_24F9BAC78);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236610, &qword_24F9BAC10);
  sub_24E60169C(v14, v27 + v31[9], &qword_27F236620, &qword_24F9BAC20);
  v32 = v27 + v31[10];
  *v32 = sub_24F923398() & 1;
  *(v32 + 8) = v33;
  *(v32 + 16) = v34 & 1;
  v35 = v27 + v31[11];
  *v35 = swift_getKeyPath();
  *(v35 + 8) = 0;
  if (qword_27F211808 != -1)
  {
    swift_once();
  }

  v36 = qword_27F24E488;
  v37 = sub_24F923398();
  v39 = v38;
  v41 = v40;
  v42 = v27 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236600, &qword_24F9BAC08) + 36);
  *v42 = v36;
  *(v42 + 8) = v37 & 1;
  *(v42 + 16) = v39;
  *(v42 + 24) = v41 & 1;
  LOBYTE(v36) = sub_24F923398();
  v44 = v43;
  LOBYTE(v39) = v45;
  sub_24E601704(v53, &qword_27F2366A8, &qword_24F9BAC78);
  sub_24E601704(v29, &qword_27F236620, &qword_24F9BAC20);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2365D8, &qword_24F9BABD0);
  v47 = v27 + *(result + 36);
  *v47 = v36 & 1;
  *(v47 + 8) = v44;
  *(v47 + 16) = v39 & 1;
  return result;
}

double sub_24EFE03EC(__int128 *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2365E0, &qword_24F9BABD8);
  sub_24F926F38();
  sub_24EFE4574();

  return result;
}

uint64_t sub_24EFE0448@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236660, &qword_24F9BAC48);
  MEMORY[0x28223BE20](v3);
  v5 = (&v32 - v4);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236658, &qword_24F9BAC40);
  v35 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v7 = &v32 - v6;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2366B0, &qword_24F9BACA8);
  v36 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v33 = &v32 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236650, &qword_24F9BAC38);
  v10 = v9 - 8;
  MEMORY[0x28223BE20](v9);
  v32 = &v32 - v11;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236640, &qword_24F9BAC30);
  MEMORY[0x28223BE20](v38);
  v13 = &v32 - v12;
  *v5 = sub_24F927618();
  v5[1] = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2366B8, &qword_24F9BACB0);
  sub_24EFE0A10(a1, v5 + *(v15 + 44));
  v16 = sub_24F9276F8();
  v40 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2365E0, &qword_24F9BABD8);
  sub_24F926F38();
  v17 = v47;
  swift_getKeyPath();
  *&v40 = v17;
  sub_24EFE1EF0(&qword_27F2365E8, type metadata accessor for OverlayControlsGameModeViewModel, &unk_24F9BAFA8);
  sub_24F91FD88();

  v18 = *(v17 + 18);

  v19 = v5 + *(v3 + 36);
  *v19 = v16;
  v19[8] = v18;
  v20 = sub_24EFE1D28();
  sub_24F926B78();
  sub_24E601704(v5, &qword_27F236660, &qword_24F9BAC48);
  v40 = a1[2];
  LOBYTE(v41) = *(a1 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215670, &unk_24F961D00);
  sub_24F923348();
  *&v40 = v3;
  *(&v40 + 1) = v20;
  swift_getOpaqueTypeConformance2();
  v21 = v33;
  v22 = v34;
  sub_24F9269C8();
  v23 = v32;

  (*(v35 + 8))(v7, v22);
  sub_24F927618();
  sub_24F9242E8();
  (*(v36 + 32))(v23, v21, v37);
  v24 = (v23 + *(v10 + 44));
  v25 = v45;
  v24[4] = v44;
  v24[5] = v25;
  v24[6] = v46;
  v26 = v41;
  *v24 = v40;
  v24[1] = v26;
  v27 = v43;
  v24[2] = v42;
  v24[3] = v27;
  if (qword_27F210D78 != -1)
  {
    swift_once();
  }

  sub_24F927618();
  sub_24F9238C8();
  sub_24E6009C8(v23, v13, &qword_27F236650, &qword_24F9BAC38);
  v28 = &v13[*(v38 + 36)];
  v29 = v48;
  *v28 = v47;
  *(v28 + 1) = v29;
  *(v28 + 2) = v49;
  v30 = v39;
  sub_24E6009C8(v13, v39, &qword_27F236640, &qword_24F9BAC30);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236628, &qword_24F9BAC28);
  *(v30 + *(result + 36)) = 0;
  return result;
}

uint64_t sub_24EFE0A10@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2366C0, &qword_24F9BACE8);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v62 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2366C8, &qword_24F9BACF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v62 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2366D0, &qword_24F9BACF8);
  MEMORY[0x28223BE20](v10);
  v12 = &v62 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2366D8, &qword_24F9BAD00);
  MEMORY[0x28223BE20](v13);
  v15 = &v62 - v14;
  *v6 = sub_24F9249A8();
  *(v6 + 1) = 0x4020000000000000;
  v6[16] = 0;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2366E0, &qword_24F9BAD08);
  sub_24EFE0E08(a1, &v6[*(v16 + 44)]);
  v17 = sub_24F925838();
  v18 = sub_24F925848();
  sub_24F925848();
  if (sub_24F925848() != v17)
  {
    v18 = sub_24F925848();
  }

  sub_24F923318();
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;
  sub_24E6009C8(v6, v9, &qword_27F2366C0, &qword_24F9BACE8);
  v27 = &v9[*(v7 + 36)];
  *v27 = v18;
  *(v27 + 1) = v20;
  *(v27 + 2) = v22;
  *(v27 + 3) = v24;
  *(v27 + 4) = v26;
  v27[40] = 0;
  v28 = sub_24F925858();
  v29 = sub_24F925848();
  sub_24F925848();
  if (sub_24F925848() != v28)
  {
    v29 = sub_24F925848();
  }

  sub_24F923318();
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v37 = v36;
  sub_24E6009C8(v9, v12, &qword_27F2366C8, &qword_24F9BACF0);
  v38 = &v12[*(v10 + 36)];
  *v38 = v29;
  *(v38 + 1) = v31;
  *(v38 + 2) = v33;
  *(v38 + 3) = v35;
  *(v38 + 4) = v37;
  v38[40] = 0;
  v39 = sub_24F925818();
  v40 = sub_24F925848();
  sub_24F925848();
  if (sub_24F925848() != v39)
  {
    v40 = sub_24F925848();
  }

  sub_24F923318();
  v42 = v41;
  v44 = v43;
  v46 = v45;
  v48 = v47;
  sub_24E6009C8(v12, v15, &qword_27F2366D0, &qword_24F9BACF8);
  v49 = &v15[*(v13 + 36)];
  *v49 = v40;
  *(v49 + 1) = v42;
  *(v49 + 2) = v44;
  *(v49 + 3) = v46;
  *(v49 + 4) = v48;
  v49[40] = 0;
  v50 = sub_24F925828();
  v51 = sub_24F925848();
  sub_24F925848();
  if (sub_24F925848() != v50)
  {
    v51 = sub_24F925848();
  }

  sub_24F923318();
  v53 = v52;
  v55 = v54;
  v57 = v56;
  v59 = v58;
  sub_24E6009C8(v15, a2, &qword_27F2366D8, &qword_24F9BAD00);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2366E8, &qword_24F9BAD10);
  v61 = a2 + *(result + 36);
  *v61 = v51;
  *(v61 + 8) = v53;
  *(v61 + 16) = v55;
  *(v61 + 24) = v57;
  *(v61 + 32) = v59;
  *(v61 + 40) = 0;
  return result;
}

uint64_t sub_24EFE0E08@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2366F0, &qword_24F9BAD18);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v23[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v9 = &v23[-v8];
  *v9 = sub_24F927618();
  v9[1] = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2366F8, &qword_24F9BAD20);
  sub_24EFDF684(a1, v9 + *(v11 + 44));
  v12 = sub_24F924C98();
  LOBYTE(v27[0]) = 0;
  sub_24EFE105C(v24);
  *&v23[7] = v24[0];
  *&v23[23] = v24[1];
  *&v23[39] = v24[2];
  *&v23[55] = v24[3];
  v13 = v27[0];
  sub_24E60169C(v9, v6, &qword_27F2366F0, &qword_24F9BAD18);
  sub_24E60169C(v6, a2, &qword_27F2366F0, &qword_24F9BAD18);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236700, &qword_24F9BAD28);
  v15 = a2 + *(v14 + 48);
  *&v25 = v12;
  *(&v25 + 1) = 0x4008000000000000;
  v26[0] = v13;
  *&v26[1] = *v23;
  *&v26[17] = *&v23[16];
  *&v26[33] = *&v23[32];
  *&v26[49] = *&v23[48];
  v16 = *&v23[63];
  *&v26[64] = *&v23[63];
  v17 = *v26;
  *v15 = v25;
  *(v15 + 16) = v17;
  v18 = *&v26[16];
  v19 = *&v26[32];
  v20 = *&v26[48];
  *(v15 + 80) = v16;
  *(v15 + 48) = v19;
  *(v15 + 64) = v20;
  *(v15 + 32) = v18;
  v21 = a2 + *(v14 + 64);
  *v21 = 0;
  *(v21 + 8) = 0;
  sub_24E60169C(&v25, v27, &qword_27F220848, &qword_24F964490);
  sub_24E601704(v9, &qword_27F2366F0, &qword_24F9BAD18);
  v27[0] = v12;
  v27[1] = 0x4008000000000000;
  v28 = v13;
  v30 = *&v23[16];
  v31 = *&v23[32];
  *v32 = *&v23[48];
  *&v32[15] = *&v23[63];
  v29 = *v23;
  sub_24E601704(v27, &qword_27F220848, &qword_24F964490);
  return sub_24E601704(v6, &qword_27F2366F0, &qword_24F9BAD18);
}

uint64_t sub_24EFE105C@<X0>(uint64_t a2@<X8>)
{
  v3 = sub_24F91F7C8();
  MEMORY[0x28223BE20](v3 - 8);
  v4 = sub_24F92B088();
  MEMORY[0x28223BE20](v4 - 8);
  sub_24F92B018();
  if (qword_27F211820 != -1)
  {
    swift_once();
  }

  v5 = qword_27F24F280;
  sub_24F91F778();
  sub_24F92B148();
  sub_24E600AEC();
  v6 = sub_24F925E18();
  v8 = v7;
  v10 = v9;
  sub_24E72FF4C();
  v11 = sub_24F925C58();
  v13 = v12;
  v15 = v14;
  sub_24E600B40(v6, v8, v10 & 1);

  if (qword_27F210D48 != -1)
  {
    swift_once();
  }

  v16 = sub_24F925C98();
  v40 = v17;
  v41 = v16;
  v39 = v18;
  v42 = v19;
  sub_24E600B40(v11, v13, v15 & 1);

  sub_24EFDF400();
  v20 = sub_24F925E18();
  v22 = v21;
  v24 = v23;
  if (qword_27F210D58 != -1)
  {
    swift_once();
  }

  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F10, &unk_24F93BE10);
  __swift_project_value_buffer(v25, qword_27F39D2E8);
  sub_24E602068(&qword_27F214428, &qword_27F213F10, &unk_24F93BE10, MEMORY[0x277CE03C0]);
  v26 = sub_24F925C58();
  v28 = v27;
  v30 = v29;
  sub_24E600B40(v20, v22, v24 & 1);

  v31 = sub_24F925C98();
  v33 = v32;
  v35 = v34;
  v37 = v36;
  sub_24E600B40(v26, v28, v30 & 1);

  *a2 = v41;
  *(a2 + 8) = v40;
  *(a2 + 16) = v39 & 1;
  *(a2 + 24) = v42;
  *(a2 + 32) = v31;
  *(a2 + 40) = v33;
  *(a2 + 48) = v35 & 1;
  *(a2 + 56) = v37;
  sub_24E5FD138(v41, v40, v39 & 1);

  sub_24E5FD138(v31, v33, v35 & 1);

  sub_24E600B40(v31, v33, v35 & 1);

  sub_24E600B40(v41, v40, v39 & 1);
}

uint64_t sub_24EFE14A0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2365D0, &qword_24F9BABC8);
  MEMORY[0x28223BE20](v1);
  v3 = v10 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2365D8, &qword_24F9BABD0);
  MEMORY[0x28223BE20](v4);
  v6 = v10 - v5;
  v11 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2365E0, &qword_24F9BABD8);
  sub_24F926F38();
  v7 = v10[1];
  swift_getKeyPath();
  *&v11 = v7;
  sub_24EFE1EF0(&qword_27F2365E8, type metadata accessor for OverlayControlsGameModeViewModel, &unk_24F9BAFA8);
  sub_24F91FD88();

  v8 = *(v7 + 17);

  if (v8 == 1)
  {
    sub_24EFDFE54(v6);
    sub_24E60169C(v6, v3, &qword_27F2365D8, &qword_24F9BABD0);
    swift_storeEnumTagMultiPayload();
    sub_24EFE18F4();
    sub_24F924E28();
    return sub_24E601704(v6, &qword_27F2365D8, &qword_24F9BABD0);
  }

  else
  {
    swift_storeEnumTagMultiPayload();
    sub_24EFE18F4();
    return sub_24F924E28();
  }
}

uint64_t sub_24EFE1738@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for OverlayControlsGameModeViewModel(0);
  v2 = swift_allocObject();
  sub_24EFE34B0(v2);
  sub_24F926F28();
  if (qword_27F211808 != -1)
  {
    swift_once();
  }

  v3 = qword_27F24E488;
  type metadata accessor for GameControllerObserver(0);
  v4 = v3;
  sub_24F926F28();
  result = sub_24F923398();
  *a1 = v8;
  *(a1 + 8) = v9;
  *(a1 + 16) = v8;
  *(a1 + 24) = v9;
  *(a1 + 32) = result & 1;
  *(a1 + 40) = v7;
  *(a1 + 48) = v6 & 1;
  return result;
}

uint64_t sub_24EFE1828(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 49))
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

uint64_t sub_24EFE1870(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

unint64_t sub_24EFE18F4()
{
  result = qword_27F2365F0;
  if (!qword_27F2365F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2365D8, &qword_24F9BABD0);
    sub_24EFE1980();
    sub_24E600F3C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2365F0);
  }

  return result;
}

unint64_t sub_24EFE1980()
{
  result = qword_27F2365F8;
  if (!qword_27F2365F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F236600, &qword_24F9BAC08);
    sub_24E602068(&qword_27F236608, &qword_27F236610, &qword_24F9BAC10, &unk_24FA2648C);
    sub_24E600EE8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2365F8);
  }

  return result;
}

uint64_t sub_24EFE1A38()
{

  return swift_deallocObject();
}

unint64_t sub_24EFE1AD8()
{
  result = qword_27F236630;
  if (!qword_27F236630)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F236628, &qword_24F9BAC28);
    sub_24EFE1B90();
    sub_24E602068(&qword_27F212A60, &qword_27F223340, &qword_24F939830, MEMORY[0x277CE0470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F236630);
  }

  return result;
}

unint64_t sub_24EFE1B90()
{
  result = qword_27F236638;
  if (!qword_27F236638)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F236640, &qword_24F9BAC30);
    sub_24EFE1C1C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F236638);
  }

  return result;
}

unint64_t sub_24EFE1C1C()
{
  result = qword_27F236648;
  if (!qword_27F236648)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F236650, &qword_24F9BAC38);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F236658, &qword_24F9BAC40);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F236660, &qword_24F9BAC48);
    sub_24EFE1D28();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F236648);
  }

  return result;
}

unint64_t sub_24EFE1D28()
{
  result = qword_27F236668;
  if (!qword_27F236668)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F236660, &qword_24F9BAC48);
    sub_24E602068(&qword_27F236670, &qword_27F236678, &qword_24F9BAC50, MEMORY[0x277CE11A8]);
    sub_24E602068(&qword_27F236680, &qword_27F236688, &unk_24F9BAC58, MEMORY[0x277CE01A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F236668);
  }

  return result;
}

unint64_t sub_24EFE1E0C()
{
  result = qword_27F236690;
  if (!qword_27F236690)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F236618, &qword_24F9BAC18);
    sub_24E602068(&qword_27F236698, &qword_27F2366A0, &unk_24F9BAC68, MEMORY[0x277CDF028]);
    sub_24E602068(&unk_27F2129E0, &unk_27F22E040, &unk_24F940690, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F236690);
  }

  return result;
}

uint64_t sub_24EFE1EF0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_24EFE1F5C()
{
  result = qword_27F236728;
  if (!qword_27F236728)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F236730, &qword_24F9BADC0);
    sub_24EFE18F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F236728);
  }

  return result;
}

void sub_24EFE2028(uint64_t a1, void (*a2)(void), uint64_t *a3)
{
  sub_24F925898();
  a2();
  v5 = sub_24F9259A8();

  *a3 = v5;
}

uint64_t sub_24EFE207C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F10, &unk_24F93BE10);
  __swift_allocate_value_buffer(v0, qword_27F39D2E8);
  v1 = __swift_project_value_buffer(v0, qword_27F39D2E8);
  v2 = sub_24F9251C8();
  v3 = *(v0 + 36);
  v4 = *MEMORY[0x277CE13B8];
  v5 = sub_24F927748();
  result = (*(*(v5 - 8) + 104))(&v1[v3], v4, v5);
  *v1 = v2;
  return result;
}

double sub_24EFE2130()
{
  if (qword_27F210D68 != -1)
  {
    swift_once();
  }

  result = *&qword_27F39D308;
  qword_27F39D300 = qword_27F39D308;
  return result;
}

void sub_24EFE21A8()
{
  v0 = [objc_opt_self() currentDevice];
  v1 = [v0 userInterfaceIdiom];

  if (v1 != 1)
  {
    if (qword_27F210D70 != -1)
    {
      swift_once();
    }

    v2 = *&qword_27F236740;
    if (qword_27F210D88 != -1)
    {
      swift_once();
    }

    v3 = v2 - (*&qword_27F39D320 + *&qword_27F39D320);
    v4 = MEMORY[0x277D84F90];
    for (i = 12; i != 17; ++i)
    {
      if (floor((v3 + i * -3.0) * 0.25) == (v3 + i * -3.0) * 0.25)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v4 = sub_24E615EC4(0, *(v4 + 2) + 1, 1, v4);
        }

        v7 = *(v4 + 2);
        v6 = *(v4 + 3);
        if (v7 >= v6 >> 1)
        {
          v4 = sub_24E615EC4((v6 > 1), v7 + 1, 1, v4);
        }

        *(v4 + 2) = v7 + 1;
        *&v4[8 * v7 + 32] = i;
      }
    }
  }
}

double sub_24EFE238C()
{
  v0 = [objc_opt_self() currentDevice];
  v1 = [v0 userInterfaceIdiom];

  if (v1 == 1)
  {
    return 394.0;
  }

  v3 = [objc_opt_self() mainScreen];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v22.origin.x = v5;
  v22.origin.y = v7;
  v22.size.width = v9;
  v22.size.height = v11;
  Height = CGRectGetHeight(v22);
  v23.origin.x = v5;
  v23.origin.y = v7;
  v23.size.width = v9;
  v23.size.height = v11;
  if (Height >= CGRectGetWidth(v23))
  {
    v17 = v5;
    v18 = v7;
    v19 = v9;
    v20 = v11;

    return CGRectGetWidth(*&v17);
  }

  else
  {
    v13 = v5;
    v14 = v7;
    v15 = v9;
    v16 = v11;

    return CGRectGetHeight(*&v13);
  }
}

void sub_24EFE24F4()
{
  v0 = [objc_opt_self() currentDevice];
  v1 = [v0 userInterfaceIdiom];

  if (v1 == 1)
  {
    v2 = 66.0;
  }

  else
  {
    if (qword_27F210D70 != -1)
    {
      swift_once();
    }

    v3 = *&qword_27F236740;
    if (qword_27F210D88 != -1)
    {
      swift_once();
    }

    v4 = v3 - (*&qword_27F39D320 + *&qword_27F39D320);
    if (qword_27F210D68 != -1)
    {
      swift_once();
    }

    v2 = (v4 + *&qword_27F39D308 * -3.0) * 0.25;
  }

  qword_27F39D310 = *&v2;
}

double sub_24EFE2634()
{
  if (qword_27F210D78 != -1)
  {
    swift_once();
  }

  v0 = *&qword_27F39D310;
  if (qword_27F210D68 != -1)
  {
    swift_once();
  }

  result = v0 * 4.0 + *&qword_27F39D308 * 3.0;
  *&qword_27F39D318 = result;
  return result;
}

void sub_24EFE26DC()
{
  v0 = [objc_opt_self() currentDevice];
  v1 = [v0 userInterfaceIdiom];

  if (v1 == 1)
  {
    v2 = 50.0;
  }

  else
  {
    if (qword_27F210D70 != -1)
    {
      swift_once();
    }

    v2 = 38.0;
    if (*&qword_27F236740 > 414.0)
    {
      v2 = 46.0;
    }
  }

  qword_27F39D320 = *&v2;
}

double sub_24EFE27A8()
{
  if (qword_27F210D78 != -1)
  {
    swift_once();
  }

  v0 = *&qword_27F39D310;
  if (qword_27F210D68 != -1)
  {
    swift_once();
  }

  result = v0 + v0 - *&qword_27F39D308;
  *&qword_27F39D328 = result;
  return result;
}

double sub_24EFE2844()
{
  if (qword_27F210D90 != -1)
  {
    swift_once();
  }

  result = *&qword_27F39D328 * 0.5;
  *&qword_27F39D330 = *&qword_27F39D328 * 0.5;
  return result;
}

unint64_t sub_24EFE28B8()
{
  result = qword_27F236748;
  if (!qword_27F236748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F236748);
  }

  return result;
}

uint64_t sub_24EFE291C()
{
  swift_getKeyPath();
  sub_24EFE48FC();
  sub_24F91FD88();

  return *(v0 + 16);
}

void sub_24EFE298C(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24EFE48FC();
  sub_24F91FD88();

  *a2 = *(v3 + 16);
}

void sub_24EFE2A04(char a1)
{
  if (*(v1 + 16) == (a1 & 1))
  {
    *(v1 + 16) = a1 & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24EFE48FC();
    sub_24F91FD78();
  }
}

uint64_t sub_24EFE2AE4()
{
  swift_getKeyPath();
  sub_24EFE48FC();
  sub_24F91FD88();

  return *(v0 + 17);
}

void sub_24EFE2B54(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24EFE48FC();
  sub_24F91FD88();

  *a2 = *(v3 + 17);
}

void sub_24EFE2BF4(char a1)
{
  if (*(v1 + 17) == (a1 & 1))
  {
    *(v1 + 17) = a1 & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24EFE48FC();
    sub_24F91FD78();
  }
}

uint64_t sub_24EFE2CD4()
{
  swift_getKeyPath();
  sub_24EFE48FC();
  sub_24F91FD88();

  return *(v0 + 18);
}

void sub_24EFE2D44(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24EFE48FC();
  sub_24F91FD88();

  *a2 = *(v3 + 18);
}

double sub_24EFE2DE4(unsigned __int8 a1)
{
  if (*(v1 + 18) != a1)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24EFE48FC();
    sub_24F91FD78();
  }

  return result;
}

uint64_t sub_24EFE2EBC()
{
  swift_getKeyPath();
  sub_24EFE48FC();
  sub_24F91FD88();

  swift_beginAccess();
  return *(v0 + 40);
}

void sub_24EFE2F40(uint64_t *a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24EFE48FC();
  sub_24F91FD88();

  swift_beginAccess();
  *a2 = *(v3 + 40);
}

double sub_24EFE2FCC(int a1)
{
  swift_beginAccess();
  if (*(v1 + 40) != a1)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24EFE48FC();
    sub_24F91FD78();
  }

  return result;
}

uint64_t sub_24EFE30B8()
{
  swift_getKeyPath();
  sub_24EFE48FC();
  sub_24F91FD88();

  swift_beginAccess();
  return *(v0 + 64);
}

void sub_24EFE313C(uint64_t *a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24EFE48FC();
  sub_24F91FD88();

  swift_beginAccess();
  *a2 = *(v3 + 64);
}

double sub_24EFE31C8(int a1)
{
  swift_beginAccess();
  if (*(v1 + 64) != a1)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24EFE48FC();
    sub_24F91FD78();
  }

  return result;
}

uint64_t sub_24EFE32B4()
{
  swift_getKeyPath();
  sub_24EFE48FC();
  sub_24F91FD88();

  swift_beginAccess();
  return *(v0 + 88);
}

void sub_24EFE3338(uint64_t *a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24EFE48FC();
  sub_24F91FD88();

  swift_beginAccess();
  *a2 = *(v3 + 88);
}

double sub_24EFE33C4(int a1)
{
  swift_beginAccess();
  if (*(v1 + 88) != a1)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24EFE48FC();
    sub_24F91FD78();
  }

  return result;
}

void *sub_24EFE34B0(uint64_t a1)
{
  v2 = v1;
  *(v1 + 24) = 0xD000000000000025;
  *(v1 + 32) = 0x800000024FA67890;
  *(v1 + 48) = 0xD000000000000029;
  *(v1 + 56) = 0x800000024FA678C0;
  *(v1 + 72) = 0xD00000000000002FLL;
  *(v1 + 80) = 0x800000024FA678F0;
  *(v1 + 96) = 0xD000000000000025;
  *(v1 + 104) = 0x800000024FA67920;
  *(v1 + 40) = 0;
  v3 = (v1 + 40);
  *(v1 + 64) = 0;
  v17 = (v1 + 64);
  *(v1 + 88) = 0;
  v18 = (v1 + 88);
  sub_24F91FDB8();
  *(v1 + 16) = 0;
  *(v1 + 18) = 0;
  sub_24E74EC40();
  v4 = sub_24F92BEF8();
  v5 = swift_allocObject();
  swift_weakInit();
  v23 = sub_24EFE4B64;
  v24 = v5;
  aBlock = MEMORY[0x277D85DD0];
  v20 = 1107296256;
  v21 = sub_24EADC100;
  v22 = &block_descriptor_101;
  v6 = _Block_copy(&aBlock);

  v7 = sub_24F92B1B8();
  swift_getKeyPath();
  aBlock = v2;
  sub_24EFE48FC();
  sub_24F91FD88();

  aBlock = v2;
  swift_getKeyPath();
  sub_24F91FDA8();

  swift_beginAccess();
  notify_register_dispatch((v7 + 32), v3, v4, v6);
  swift_endAccess();
  _Block_release(v6);

  aBlock = v2;
  swift_getKeyPath();
  sub_24F91FD98();

  v8 = sub_24F92BEF8();
  v9 = swift_allocObject();
  swift_weakInit();
  v23 = sub_24EFE4B84;
  v24 = v9;
  aBlock = MEMORY[0x277D85DD0];
  v20 = 1107296256;
  v21 = sub_24EADC100;
  v22 = &block_descriptor_67_2;
  v10 = _Block_copy(&aBlock);

  v11 = sub_24F92B1B8();
  swift_getKeyPath();
  aBlock = v2;
  sub_24F91FD88();

  aBlock = v2;
  swift_getKeyPath();
  sub_24F91FDA8();

  swift_beginAccess();
  notify_register_dispatch((v11 + 32), v17, v8, v10);
  swift_endAccess();
  _Block_release(v10);

  aBlock = v2;
  swift_getKeyPath();
  sub_24F91FD98();

  v12 = sub_24F92BEF8();
  v13 = swift_allocObject();
  swift_weakInit();

  v23 = sub_24EFE4B8C;
  v24 = v13;
  aBlock = MEMORY[0x277D85DD0];
  v20 = 1107296256;
  v21 = sub_24EADC100;
  v22 = &block_descriptor_71_1;
  v14 = _Block_copy(&aBlock);

  v15 = sub_24F92B1B8();
  swift_getKeyPath();
  aBlock = v2;
  sub_24F91FD88();

  aBlock = v2;
  swift_getKeyPath();
  sub_24F91FDA8();

  swift_beginAccess();
  notify_register_dispatch((v15 + 32), v18, v12, v14);
  swift_endAccess();
  _Block_release(v14);

  aBlock = v2;
  swift_getKeyPath();
  sub_24F91FD98();

  sub_24EFE4068();
  return v2;
}

double sub_24EFE3A4C(int a1, uint64_t a2)
{
  v8 = *MEMORY[0x277D85DE8];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    state64 = 0;
    if (notify_get_state(a1, &state64))
    {
LABEL_3:

      return result;
    }

    if (state64 == 1)
    {
      if (*(v5 + 16))
      {
        *(v5 + 16) = 1;
        goto LABEL_3;
      }
    }

    else if ((*(v5 + 16) & 1) == 0)
    {
      *(v5 + 16) = 0;
      goto LABEL_3;
    }

    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24EFE48FC();
    sub_24F91FD78();
  }

  return result;
}

double sub_24EFE3C30(int a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    state64 = 0;
    if (notify_get_state(a1, &state64))
    {
LABEL_3:

      return result;
    }

    v6 = *(v5 + 18);
    if (state64 == 2)
    {
      if (v6 == 2)
      {
        goto LABEL_3;
      }
    }

    else if (state64 == 1)
    {
      if (v6 == 1)
      {
        goto LABEL_3;
      }
    }

    else if (!*(v5 + 18))
    {
      goto LABEL_3;
    }

    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24EFE48FC();
    sub_24F91FD78();
  }

  return result;
}