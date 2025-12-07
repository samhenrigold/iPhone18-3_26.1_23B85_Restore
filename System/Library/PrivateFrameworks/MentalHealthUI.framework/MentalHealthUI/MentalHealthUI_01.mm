uint64_t sub_2589C1F34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v113 = a2;
  v3 = sub_258B024B4();
  v110 = *(v3 - 8);
  v111 = v3;
  MEMORY[0x28223BE20](v3);
  v109 = &v96 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = _s6StylesV6NoDataVMa(0);
  v6 = MEMORY[0x28223BE20](v5);
  v106 = &v96 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v98 = &v96 - v9;
  MEMORY[0x28223BE20](v8);
  v11 = &v96 - v10;
  v12 = type metadata accessor for StateOfMindTimeline.Styles(0);
  v13 = MEMORY[0x28223BE20](v12);
  v103 = &v96 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v96 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v96 - v18;
  sub_2589C4E64(0);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = &v96 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2589C59F0(0);
  MEMORY[0x28223BE20](v23 - 8);
  v25 = &v96 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2589C59C8(0);
  v99 = v26;
  MEMORY[0x28223BE20](v26);
  v97 = &v96 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2589C59A0(0);
  v100 = v28;
  MEMORY[0x28223BE20](v28);
  v105 = &v96 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2589C5878(0);
  v102 = v30;
  MEMORY[0x28223BE20](v30);
  v101 = &v96 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2589C5300(0, &qword_27F96CAC0, sub_2589C5878, &qword_27F96CB70, MEMORY[0x277CE0718]);
  v108 = v32;
  MEMORY[0x28223BE20](v32);
  v107 = &v96 - v33;
  *v25 = sub_258B01194();
  *(v25 + 1) = 0;
  v25[16] = 0;
  *v22 = sub_258B01194();
  *(v22 + 1) = 0;
  v22[16] = 0;
  sub_2589C65F0(0, &qword_27F96CBF8, sub_2589C4EF8);
  sub_2589C38D0(a1, &v22[*(v34 + 44)]);
  v35 = sub_258B01884();
  _s15EntryNoDataViewVMa(0);
  v112 = a1;
  sub_258AC1060(v19);
  v104 = v12;
  sub_2589C6C00(&v19[*(v12 + 36)], v11, _s6StylesV6NoDataVMa);
  sub_2589C6C68(v19, type metadata accessor for StateOfMindTimeline.Styles);
  if (v11[*(v5 + 24)] == 1)
  {
    sub_258B00A84();
  }

  sub_2589C6C68(v11, _s6StylesV6NoDataVMa);
  sub_2589C65F0(0, &qword_27F96CC00, sub_2589C5A8C);
  v37 = &v25[*(v36 + 44)];
  sub_258B00654();
  v39 = v38;
  v41 = v40;
  v43 = v42;
  v45 = v44;
  sub_2589C6654(v22, v37, sub_2589C4E64);
  sub_2589C5A8C(0);
  v47 = v37 + *(v46 + 36);
  *v47 = v35;
  *(v47 + 8) = v39;
  *(v47 + 16) = v41;
  *(v47 + 24) = v43;
  *(v47 + 32) = v45;
  *(v47 + 40) = 0;
  v48 = sub_258B018D4();
  sub_258AC1060(v17);
  v49 = v17;
  v50 = v104;
  v51 = v98;
  sub_2589C6C00(v49 + *(v104 + 36), v98, _s6StylesV6NoDataVMa);
  sub_2589C6C68(v49, type metadata accessor for StateOfMindTimeline.Styles);
  sub_258B00A84();
  sub_2589C6C68(v51, _s6StylesV6NoDataVMa);
  sub_258B00654();
  v53 = v52;
  v55 = v54;
  v57 = v56;
  v59 = v58;
  v60 = v25;
  v61 = v97;
  sub_2589C6654(v60, v97, sub_2589C59F0);
  v62 = v61 + *(v99 + 36);
  *v62 = v48;
  *(v62 + 8) = v53;
  *(v62 + 16) = v55;
  *(v62 + 24) = v57;
  *(v62 + 32) = v59;
  *(v62 + 40) = 0;
  LODWORD(v99) = sub_258B01864();
  v63 = v103;
  sub_258AC1060(v103);
  v64 = v106;
  sub_2589C6C00(v63 + *(v50 + 36), v106, _s6StylesV6NoDataVMa);
  sub_2589C6C68(v63, type metadata accessor for StateOfMindTimeline.Styles);
  sub_258B00A84();
  sub_2589C6C68(v64, _s6StylesV6NoDataVMa);
  sub_258B00654();
  v66 = v65;
  v68 = v67;
  v70 = v69;
  v72 = v71;
  v73 = v105;
  sub_2589C6654(v61, v105, sub_2589C59C8);
  v74 = v73 + *(v100 + 36);
  *v74 = v99;
  *(v74 + 8) = v66;
  *(v74 + 16) = v68;
  *(v74 + 24) = v70;
  *(v74 + 32) = v72;
  *(v74 + 40) = 0;
  v75 = v109;
  sub_258B024A4();
  v76 = v102;
  v78 = v110;
  v77 = v111;
  v79 = v101;
  (*(v110 + 16))(&v101[v102[17]], v75, v111);
  *v79 = 1;
  sub_2589C6C00(v73, &v79[v76[18]], sub_2589C59A0);
  v80 = v112;
  sub_2589C2938(&v79[v76[19]]);
  v81 = &v79[v76[20]];
  v114 = 0;
  sub_258B02114();
  v82 = v116;
  *v81 = v115;
  v81[1] = v82;
  v83 = &v79[v76[21]];
  v114 = 0;
  sub_258B02114();
  (*(v78 + 8))(v75, v77);
  v84 = v116;
  *v83 = v115;
  v83[1] = v84;
  sub_2589C6C68(v73, sub_2589C59A0);
  v85 = sub_2589C3068();
  LOBYTE(v83) = sub_258B01874();
  v86 = v107;
  v87 = sub_2589C6654(v79, v107, sub_2589C5878);
  v88 = v86 + *(v108 + 36);
  *v88 = v85;
  *(v88 + 8) = v83;
  MEMORY[0x28223BE20](v87);
  *(&v96 - 2) = v80;
  sub_2589C5FD0(0);
  sub_2589C633C();
  sub_2589C60B0(255);
  v90 = v89;
  sub_2589C6164(255);
  v92 = v91;
  v93 = sub_2589C6A98(&qword_27F96CBA8, sub_2589C6164, MEMORY[0x277CDD7A8]);
  v115 = v92;
  v116 = v93;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v115 = v90;
  v116 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  sub_258B01EE4();
  return sub_2589C66C4(v86);
}

id sub_2589C2938@<X0>(uint64_t a1@<X8>)
{
  v44 = a1;
  v1 = type metadata accessor for StateOfMindTimeline.Styles(0);
  v2 = MEMORY[0x28223BE20](v1 - 8);
  v4 = &v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v41 - v5;
  sub_2589C5BA4(0);
  v8 = v7 - 8;
  MEMORY[0x28223BE20](v7);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2589C5B7C(0);
  v41 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2589C5B54(0);
  v42 = v14;
  MEMORY[0x28223BE20](v14);
  v43 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2589C2D48();
  v16 = sub_258B01884();
  _s15EntryNoDataViewVMa(0);
  sub_258AC1060(v6);
  sub_2589C6C68(v6, type metadata accessor for StateOfMindTimeline.Styles);
  sub_258B00654();
  v17 = &v10[*(v8 + 44)];
  *v17 = v16;
  *(v17 + 1) = v18;
  *(v17 + 2) = v19;
  *(v17 + 3) = v20;
  *(v17 + 4) = v21;
  v17[40] = 0;
  v22 = sub_258B01894();
  sub_258AC1060(v4);
  sub_2589C6C68(v4, type metadata accessor for StateOfMindTimeline.Styles);
  result = MobileGestalt_get_current_device();
  if (result)
  {
    v24 = result;
    MobileGestalt_get_homeButtonType();

    sub_258B00654();
    v26 = v25;
    v28 = v27;
    v30 = v29;
    v32 = v31;
    sub_2589C6654(v10, v13, sub_2589C5BA4);
    v33 = &v13[*(v41 + 36)];
    *v33 = v22;
    *(v33 + 1) = v26;
    *(v33 + 2) = v28;
    *(v33 + 3) = v30;
    *(v33 + 4) = v32;
    v33[40] = 0;
    sub_258B024F4();
    sub_258B00C94();
    v34 = v43;
    sub_2589C6654(v13, v43, sub_2589C5B7C);
    v35 = (v34 + *(v42 + 36));
    v36 = v50;
    v35[4] = v49;
    v35[5] = v36;
    v35[6] = v51;
    v38 = v46;
    v37 = v47;
    *v35 = v45;
    v35[1] = v38;
    v39 = v48;
    v35[2] = v37;
    v35[3] = v39;
    sub_258B01874();
    v52 = 0u;
    v53 = 0u;
    v54 = 1;
    sub_2589C6DBC(0, &qword_27F96CB00, sub_2589C5B54, MEMORY[0x277CE0660], MEMORY[0x277CDFAB8]);
    v40 = v44;
    sub_258B01544();
    return sub_2589C6654(v34, v40, sub_2589C5B54);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2589C2D48()
{
  v1 = _s9LogButtonVMa(0);
  MEMORY[0x28223BE20](v1);
  v3 = (v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_27F96C240 != -1)
  {
    swift_once();
  }

  v4 = sub_258AFFD94();
  v6 = v5;
  v7 = _s15EntryNoDataViewVMa(0);
  v8 = (v0 + *(v7 + 28));
  v10 = *v8;
  v9 = v8[1];
  *v3 = swift_getKeyPath();
  sub_2589C6760(0, &qword_27F96CC08, type metadata accessor for StateOfMindTimeline.Styles, MEMORY[0x277CDF458]);
  swift_storeEnumTagMultiPayload();
  v11 = (v3 + *(v1 + 20));
  *v11 = v4;
  v11[1] = v6;
  v12 = (v3 + *(v1 + 24));
  *v12 = v10;
  v12[1] = v9;
  v13 = *(v0 + *(v7 + 36));

  sub_258B003E4();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v13 = sub_258A74828(0, *(v13 + 2) + 1, 1, v13);
  }

  v15 = *(v13 + 2);
  v14 = *(v13 + 3);
  if (v15 >= v14 >> 1)
  {
    v13 = sub_258A74828((v14 > 1), v15 + 1, 1, v13);
  }

  *(v13 + 2) = v15 + 1;
  v16 = &v13[16 * v15];
  *(v16 + 4) = 0xD000000000000010;
  *(v16 + 5) = 0x8000000258B36630;
  v19[1] = &unk_2869D4670;
  v17 = sub_258B003E4();
  sub_2589FC8C8(v17);
  sub_2589C6974(0, &qword_280DF8948, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
  sub_2589C6824();
  sub_258B02A34();

  sub_2589C6A98(&qword_27F96CB60, _s9LogButtonVMa, &unk_258B3287C);
  sub_258B01DD4();

  return sub_2589C6C68(v3, _s9LogButtonVMa);
}

uint64_t sub_2589C3068()
{
  v0 = type metadata accessor for StateOfMindTimeline.Styles(0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = aBlock - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_258B006A4();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = aBlock - v8;
  sub_2589C0D7C(aBlock - v8);
  (*(v4 + 104))(v7, *MEMORY[0x277CDF3D0], v3);
  sub_258B00694();
  v10 = *(v4 + 8);
  v10(v7, v3);
  v10(v9, v3);
  _s15EntryNoDataViewVMa(0);
  sub_258AC1060(v2);
  sub_2589C6C68(v2, type metadata accessor for StateOfMindTimeline.Styles);
  sub_258B01FE4();
  v11 = sub_258B02024();

  sub_2589C6974(0, &qword_27F96CC10, MEMORY[0x277CE0F78], MEMORY[0x277D84560]);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_258B2BE60;
  *(v12 + 32) = v11;

  sub_258AC1060(v2);
  sub_2589C6C68(v2, type metadata accessor for StateOfMindTimeline.Styles);
  v13 = objc_opt_self();
  v14 = [v13 secondarySystemGroupedBackgroundColor];
  v15 = [v13 tertiarySystemGroupedBackgroundColor];
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = v15;
  v16[4] = 0;
  v16[5] = v14;
  v17 = objc_allocWithZone(MEMORY[0x277D75348]);
  aBlock[4] = sub_2589C69C4;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_258A52B54;
  aBlock[3] = &block_descriptor;
  v18 = _Block_copy(aBlock);
  [v17 initWithDynamicProvider_];
  _Block_release(v18);

  *(v12 + 40) = sub_258B01F94();
  v19 = MEMORY[0x259C92A80](v12);

  return v19;
}

uint64_t sub_2589C33F4(uint64_t a1)
{
  v2 = sub_258B01384();
  MEMORY[0x28223BE20](v2 - 8);
  sub_2589C6164(0);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v16[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_2589C60B0(0);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v12 = &v16[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_258B01334();
  v17 = a1;
  sub_2589C6DBC(0, &qword_27F96CB90, MEMORY[0x277D126A0], MEMORY[0x277CDE470], MEMORY[0x277CDFAB8]);
  sub_2589C6218();
  sub_258B00784();
  v13 = sub_2589C6A98(&qword_27F96CBA8, sub_2589C6164, MEMORY[0x277CDD7A8]);
  MEMORY[0x259C91A00](v7, v4, v13);
  (*(v5 + 8))(v7, v4);
  v18 = v4;
  v19 = v13;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  MEMORY[0x259C91A00](v12, v9, OpaqueTypeConformance2);
  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_2589C36B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_2589C51A4(0);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v19 - v8;
  sub_2589C4E64(0);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v19 - v14;
  *v15 = sub_258B01194();
  *(v15 + 1) = 0;
  v15[16] = 0;
  sub_2589C65F0(0, &qword_27F96CBF8, sub_2589C4EF8);
  sub_2589C38D0(a1, &v15[*(v16 + 44)]);
  sub_2589C2D48();
  sub_2589C6C00(v15, v13, sub_2589C4E64);
  sub_2589C6C00(v9, v7, sub_2589C51A4);
  sub_2589C6C00(v13, a2, sub_2589C4E64);
  sub_2589C4E30(0);
  sub_2589C6C00(v7, a2 + *(v17 + 48), sub_2589C51A4);
  sub_2589C6C68(v9, sub_2589C51A4);
  sub_2589C6C68(v15, sub_2589C4E64);
  sub_2589C6C68(v7, sub_2589C51A4);
  return sub_2589C6C68(v13, sub_2589C4E64);
}

uint64_t sub_2589C38D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v128 = a2;
  v118 = sub_258B02554();
  v117 = *(v118 - 8);
  MEMORY[0x28223BE20](v118);
  v116 = &v103 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = sub_258B006A4();
  v114 = *(v115 - 8);
  v4 = MEMORY[0x28223BE20](v115);
  v112 = &v103 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v111 = &v103 - v6;
  v109 = sub_258B019F4();
  v108 = *(v109 - 8);
  MEMORY[0x28223BE20](v109);
  v107 = &v103 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2589C5144(0);
  v113 = v8;
  MEMORY[0x28223BE20](v8);
  v110 = &v103 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2589C6DBC(0, &qword_27F96CA18, sub_2589C5144, MEMORY[0x277CDE470], MEMORY[0x277CDFAB8]);
  MEMORY[0x28223BE20](v10 - 8);
  v121 = &v103 - v11;
  sub_2589C5074(0);
  v120 = v12;
  MEMORY[0x28223BE20](v12);
  v125 = &v103 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2589C504C(0);
  v124 = v14;
  v15 = MEMORY[0x28223BE20](v14);
  v127 = &v103 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v123 = &v103 - v18;
  MEMORY[0x28223BE20](v17);
  v126 = &v103 - v19;
  v20 = type metadata accessor for StateOfMindTimeline.Styles(0);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = &v103 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2589C5024(0);
  v24 = v23;
  MEMORY[0x28223BE20](v23);
  v26 = (&v103 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2589C4FDC(0);
  v28 = MEMORY[0x28223BE20](v27 - 8);
  v122 = &v103 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v31 = &v103 - v30;
  *v26 = swift_getKeyPath();
  v32 = MEMORY[0x277CDF458];
  sub_2589C6760(0, &qword_27F96C908, MEMORY[0x277CDF3E0], MEMORY[0x277CDF458]);
  swift_storeEnumTagMultiPayload();
  v33 = _s21StateOfMindSymbolViewVMa(0);
  v34 = *(v33 + 20);
  *(v26 + v34) = swift_getKeyPath();
  sub_2589C6760(0, &qword_27F96CC08, type metadata accessor for StateOfMindTimeline.Styles, v32);
  swift_storeEnumTagMultiPayload();
  v35 = a1;
  *(v26 + *(v33 + 24)) = 1;
  v106 = _s15EntryNoDataViewVMa(0);
  v36 = *(v106 + 20);
  sub_258AC1060(v22);
  v37 = v22;
  sub_2589C6C68(v22, type metadata accessor for StateOfMindTimeline.Styles);
  sub_258B024F4();
  sub_258B00854();
  v38 = (v26 + *(v24 + 36));
  v39 = v133;
  *v38 = v132;
  v38[1] = v39;
  v38[2] = v134;
  sub_2589C69E8();
  v119 = v31;
  sub_258B01D64();
  sub_2589C6C68(v26, sub_2589C5024);
  if (qword_27F96C240 != -1)
  {
    swift_once();
  }

  v130 = sub_258AFFD94();
  v131 = v40;
  sub_2589BFF58(v130, v40, v41);
  v42 = sub_258B01B44();
  v44 = v43;
  v46 = v45;
  v103 = v47;
  sub_258AC1060(v37);
  v129 = v35;
  v104 = type metadata accessor for StateOfMindTimeline.Styles;
  sub_2589C6C68(v37, type metadata accessor for StateOfMindTimeline.Styles);
  sub_258B019D4();
  v48 = v108;
  v49 = v107;
  v50 = v109;
  (*(v108 + 104))(v107, *MEMORY[0x277CE0A10], v109);
  sub_258B01A14();

  (*(v48 + 8))(v49, v50);
  v108 = sub_258B01AE4();
  v52 = v51;
  LOBYTE(v48) = v53;
  sub_2589BFFAC(v42, v44, v46 & 1);

  v109 = v36;
  v105 = v37;
  sub_258AC1060(v37);
  sub_2589C6C68(v37, v104);
  v54 = [objc_opt_self() secondaryLabelColor];
  v130 = sub_258B01F94();
  v55 = v108;
  v56 = sub_258B01AB4();
  v58 = v57;
  v60 = v59;
  v62 = v61;
  sub_2589BFFAC(v55, v52, v48 & 1);

  v63 = v111;
  sub_2589C0D7C(v111);
  v64 = v114;
  v65 = v112;
  v66 = v115;
  (*(v114 + 104))(v112, *MEMORY[0x277CDF3D0], v115);
  v67 = sub_258B00694();
  v68 = *(v64 + 8);
  v68(v65, v66);
  v68(v63, v66);
  v69 = v117;
  v70 = MEMORY[0x277CE13B0];
  if ((v67 & 1) == 0)
  {
    v70 = MEMORY[0x277CE13B8];
  }

  v71 = v116;
  v72 = v118;
  (*(v117 + 104))(v116, *v70, v118);
  v73 = v110;
  (*(v69 + 32))(&v110[*(v113 + 36)], v71, v72);
  *v73 = v56;
  *(v73 + 8) = v58;
  *(v73 + 16) = v60 & 1;
  *(v73 + 24) = v62;
  v74 = *(v129 + *(v106 + 36));
  sub_258B003E4();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v76 = v105;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v74 = sub_258A74828(0, *(v74 + 2) + 1, 1, v74);
  }

  v78 = *(v74 + 2);
  v77 = *(v74 + 3);
  if (v78 >= v77 >> 1)
  {
    v74 = sub_258A74828((v77 > 1), v78 + 1, 1, v74);
  }

  *(v74 + 2) = v78 + 1;
  v79 = &v74[16 * v78];
  *(v79 + 4) = 0x78655474756F6241;
  *(v79 + 5) = 0xE900000000000074;
  v130 = &unk_2869D4670;
  v80 = sub_258B003E4();
  sub_2589FC8C8(v80);
  sub_2589C6974(0, &qword_280DF8948, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
  sub_2589C6824();
  sub_258B02A34();

  sub_2589C6AE0();
  v81 = v121;
  sub_258B01DD4();

  sub_2589C6C68(v73, sub_2589C5144);
  KeyPath = swift_getKeyPath();
  v83 = v81;
  v84 = v125;
  sub_2589C6B58(v83, v125);
  v85 = v84 + *(v120 + 36);
  *v85 = KeyPath;
  *(v85 + 8) = 1;
  LOBYTE(KeyPath) = sub_258B018D4();
  sub_258AC1060(v76);
  sub_2589C6C68(v76, type metadata accessor for StateOfMindTimeline.Styles);
  sub_258B00654();
  v87 = v86;
  v89 = v88;
  v91 = v90;
  v93 = v92;
  v94 = v123;
  sub_2589C6654(v84, v123, sub_2589C5074);
  v95 = v94 + *(v124 + 36);
  *v95 = KeyPath;
  *(v95 + 8) = v87;
  *(v95 + 16) = v89;
  *(v95 + 24) = v91;
  *(v95 + 32) = v93;
  *(v95 + 40) = 0;
  v96 = v126;
  sub_2589C6654(v94, v126, sub_2589C504C);
  v97 = v119;
  v98 = v122;
  sub_2589C6C00(v119, v122, sub_2589C4FDC);
  v99 = v127;
  sub_2589C6C00(v96, v127, sub_2589C504C);
  v100 = v128;
  sub_2589C6C00(v98, v128, sub_2589C4FDC);
  sub_2589C4F2C(0);
  sub_2589C6C00(v99, v100 + *(v101 + 48), sub_2589C504C);
  sub_2589C6C68(v96, sub_2589C504C);
  sub_2589C6C68(v97, sub_2589C4FDC);
  sub_2589C6C68(v99, sub_2589C504C);
  return sub_2589C6C68(v98, sub_2589C4FDC);
}

uint64_t sub_2589C4614(uint64_t a1)
{
  v2 = _s15EntryNoDataViewVMa(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = sub_258B026D4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2589C6C00(a1, v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), _s15EntryNoDataViewVMa);
  v9 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v10 = swift_allocObject();
  sub_2589C6654(v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9, _s15EntryNoDataViewVMa);
  sub_258B026A4();
  v12[1] = &unk_2869D4670;
  sub_2589FC8C8(&unk_2869D46B0);
  sub_2589C6974(0, &qword_280DF8948, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
  sub_2589C6824();
  sub_258B02A34();

  sub_2589C68A0(&unk_2869D46D0);
  sub_2589C6A98(&qword_27F96CBA0, MEMORY[0x277D126A0], MEMORY[0x277D12690]);
  sub_258B01DD4();

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_2589C48BC(uint64_t a1)
{
  v17 = sub_258B00F84();
  v2 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x277CDD848];
  sub_2589C6760(0, &qword_27F96C968, MEMORY[0x277CDD848], MEMORY[0x277CDF458]);
  MEMORY[0x28223BE20](v6);
  v8 = &v16 - v7;
  v9 = sub_258B008A4();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = _s15EntryNoDataViewVMa(0);
  sub_2589C68F4(a1 + *(v13 + 24), v8, &qword_27F96C968, v5);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v10 + 32))(v12, v8, v9);
  }

  else
  {
    sub_258B02E94();
    v14 = sub_258B01824();
    sub_258B00354();

    sub_258B00F74();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v17);
  }

  sub_258B00894();
  return (*(v10 + 8))(v12, v9);
}

void sub_2589C4BFC(uint64_t a1)
{
  if (!qword_27F96C9A8)
  {
    sub_2589C4CF0(255);
    v5[0] = v2;
    v5[1] = _s14ShowMoreButtonVMa(255);
    v5[2] = sub_2589C5E10(&qword_27F96CA40, sub_2589C4CF0, sub_2589C51EC, MEMORY[0x277CDFC60]);
    v5[3] = sub_2589C6A98(&qword_27F96CA60, _s14ShowMoreButtonVMa, &unk_258B35744);
    v3 = type metadata accessor for UnlimitedHeightVStackWithFooter(a1, v5);
    if (!v4)
    {
      atomic_store(v3, &qword_27F96C9A8);
    }
  }
}

void sub_2589C4D68(uint64_t a1)
{
  if (!qword_27F96C9C8)
  {
    sub_2589C4DFC(255);
    sub_2589C6A98(&qword_27F96CA38, sub_2589C4DFC, MEMORY[0x277CE14C0]);
    v1 = sub_258B022D4();
    if (!v2)
    {
      atomic_store(v1, &qword_27F96C9C8);
    }
  }
}

void sub_2589C4E64(uint64_t a1)
{
  if (!qword_27F96C9E0)
  {
    sub_2589C4EF8(255);
    sub_2589C6A98(&qword_27F96CA28, sub_2589C4EF8, MEMORY[0x277CE14C0]);
    v1 = sub_258B022D4();
    if (!v2)
    {
      atomic_store(v1, &qword_27F96C9E0);
    }
  }
}

void sub_2589C4F60(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v7)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_2589C5074(uint64_t a1)
{
  if (!qword_27F96CA10)
  {
    sub_2589C6DBC(255, &qword_27F96CA18, sub_2589C5144, MEMORY[0x277CDE470], MEMORY[0x277CDFAB8]);
    sub_2589C6974(255, &qword_27F96C8C0, MEMORY[0x277CDF720], MEMORY[0x277CE0860]);
    v1 = sub_258B00B04();
    if (!v2)
    {
      atomic_store(v1, &qword_27F96CA10);
    }
  }
}

void sub_2589C5144(uint64_t a1)
{
  if (!qword_27F96CA20)
  {
    sub_258B00C84();
    v1 = sub_258B00B04();
    if (!v2)
    {
      atomic_store(v1, &qword_27F96CA20);
    }
  }
}

void sub_2589C5264(uint64_t a1)
{
  if (!qword_27F96CA68)
  {
    sub_2589C5300(255, &qword_27F96CA70, MEMORY[0x277CDFC08], &qword_27F96CA78, MEMORY[0x277CE0730]);
    sub_2589C5384();
    v1 = sub_258B01294();
    if (!v2)
    {
      atomic_store(v1, &qword_27F96CA68);
    }
  }
}

void sub_2589C5300(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), unint64_t *a4, uint64_t (*a5)(void, void, void))
{
  if (!*a2)
  {
    a3(255);
    sub_2589C5F70(255, a4, a5);
    v8 = sub_258B00B04();
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

unint64_t sub_2589C5384()
{
  result = qword_27F96CA80;
  if (!qword_27F96CA80)
  {
    v1 = MEMORY[0x277CE0730];
    sub_2589C5300(255, &qword_27F96CA70, MEMORY[0x277CDFC08], &qword_27F96CA78, MEMORY[0x277CE0730]);
    sub_2589C6A98(&qword_27F96CA88, MEMORY[0x277CDFC08], MEMORY[0x277CDFBE8]);
    sub_2589C54A0(&qword_27F96CA90, &qword_27F96CA78, v1, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96CA80);
  }

  return result;
}

uint64_t sub_2589C54A0(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(void, void, void), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_2589C5F70(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_2589C54E4(uint64_t a1)
{
  if (!qword_27F96CA98)
  {
    sub_258B00C34();
    sub_2589C6A98(&qword_27F96CAA0, MEMORY[0x277CDFC08], MEMORY[0x277CDFBF8]);
    v1 = sub_258B007A4();
    if (!v2)
    {
      atomic_store(v1, &qword_27F96CA98);
    }
  }
}

void sub_2589C5578(uint64_t a1)
{
  if (!qword_27F96CAB0)
  {
    sub_258B00A14();
    sub_2589C5710(255);
    sub_2589C5300(255, &qword_27F96CAC0, sub_2589C5878, &qword_27F96CB70, MEMORY[0x277CE0718]);
    sub_2589C5FD0(255);
    sub_2589C633C();
    sub_2589C60B0(255);
    sub_2589C6164(255);
    sub_2589C6A98(&qword_27F96CBA8, sub_2589C6164, MEMORY[0x277CDD7A8]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    v1 = sub_258B00B34();
    if (!v2)
    {
      atomic_store(v1, &qword_27F96CAB0);
    }
  }
}

void sub_2589C5710(uint64_t a1)
{
  if (!qword_27F96CAB8)
  {
    sub_2589C5300(255, &qword_27F96CAC0, sub_2589C5878, &qword_27F96CB70, MEMORY[0x277CE0718]);
    sub_2589C5FD0(255);
    sub_2589C633C();
    sub_2589C60B0(255);
    sub_2589C6164(255);
    sub_2589C6A98(&qword_27F96CBA8, sub_2589C6164, MEMORY[0x277CDD7A8]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F96CAB8);
    }
  }
}

void sub_2589C5878(uint64_t a1)
{
  if (!qword_27F96CAC8)
  {
    sub_2589C59A0(255);
    v3 = v2;
    sub_2589C6DBC(255, &qword_27F96CB00, sub_2589C5B54, MEMORY[0x277CE0660], MEMORY[0x277CDFAB8]);
    v7[0] = v3;
    v7[1] = v4;
    v7[2] = sub_258B024B4();
    v7[3] = sub_2589C5E10(&qword_27F96CB20, sub_2589C59A0, sub_2589C5C30, MEMORY[0x277CDF918]);
    v7[4] = sub_2589C5C6C();
    v7[5] = MEMORY[0x277CE1320];
    v5 = type metadata accessor for ScrollableWithPinnedFooter(a1, v7);
    if (!v6)
    {
      atomic_store(v5, &qword_27F96CAC8);
    }
  }
}

void sub_2589C59F0(uint64_t a1)
{
  if (!qword_27F96CAE0)
  {
    sub_2589C5A8C(255);
    sub_2589C5AB4(&qword_27F96CAF0, sub_2589C5A8C, &qword_27F96CAF8, sub_2589C4E64);
    v1 = sub_258B022D4();
    if (!v2)
    {
      atomic_store(v1, &qword_27F96CAE0);
    }
  }
}

uint64_t sub_2589C5AB4(unint64_t *a1, uint64_t (*a2)(uint64_t), unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    sub_2589C6A98(a3, a4, MEMORY[0x277CE1198]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_2589C5BCC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  if (!*a2)
  {
    a3(255);
    v5 = sub_258B00B04();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_2589C5C6C()
{
  result = qword_27F96CB38;
  if (!qword_27F96CB38)
  {
    sub_2589C6DBC(255, &qword_27F96CB00, sub_2589C5B54, MEMORY[0x277CE0660], MEMORY[0x277CDFAB8]);
    sub_2589C5E10(&qword_27F96CB40, sub_2589C5B54, sub_2589C5D98, MEMORY[0x277CDFC60]);
    sub_2589C6A98(&qword_27F96CB68, MEMORY[0x277CE0660], MEMORY[0x277CE0650]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96CB38);
  }

  return result;
}

uint64_t sub_2589C5E10(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t (*a3)(void), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2589C5E90()
{
  result = qword_27F96CB58;
  if (!qword_27F96CB58)
  {
    sub_2589C51A4(255);
    sub_2589C6A98(&qword_27F96CB60, _s9LogButtonVMa, &unk_258B3287C);
    sub_2589C6A98(&qword_280DF8950, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96CB58);
  }

  return result;
}

void sub_2589C5F70(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x277CE1318], MEMORY[0x277CE1310]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_2589C5FD0(uint64_t a1)
{
  if (!qword_27F96CB78)
  {
    sub_2589C60B0(255);
    sub_2589C6164(255);
    sub_2589C6A98(&qword_27F96CBA8, sub_2589C6164, MEMORY[0x277CDD7A8]);
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F96CB78);
    }
  }
}

void sub_2589C60B0(uint64_t a1)
{
  if (!qword_27F96CB80)
  {
    sub_2589C6164(255);
    sub_2589C6A98(&qword_27F96CBA8, sub_2589C6164, MEMORY[0x277CDD7A8]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F96CB80);
    }
  }
}

void sub_2589C6164(uint64_t a1)
{
  if (!qword_27F96CB88)
  {
    sub_2589C6DBC(255, &qword_27F96CB90, MEMORY[0x277D126A0], MEMORY[0x277CDE470], MEMORY[0x277CDFAB8]);
    sub_2589C6218();
    v1 = sub_258B00794();
    if (!v2)
    {
      atomic_store(v1, &qword_27F96CB88);
    }
  }
}

unint64_t sub_2589C6218()
{
  result = qword_27F96CB98;
  if (!qword_27F96CB98)
  {
    sub_2589C6DBC(255, &qword_27F96CB90, MEMORY[0x277D126A0], MEMORY[0x277CDE470], MEMORY[0x277CDFAB8]);
    sub_2589C6A98(&qword_27F96CBA0, MEMORY[0x277D126A0], MEMORY[0x277D12690]);
    sub_2589C6A98(&qword_280DF8950, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96CB98);
  }

  return result;
}

unint64_t sub_2589C633C()
{
  result = qword_27F96CBB0;
  if (!qword_27F96CBB0)
  {
    v1 = MEMORY[0x277CE0718];
    sub_2589C5300(255, &qword_27F96CAC0, sub_2589C5878, &qword_27F96CB70, MEMORY[0x277CE0718]);
    sub_2589C6A98(&qword_27F96CBB8, sub_2589C5878, &unk_258B305B0);
    sub_2589C54A0(&qword_27F96CBC0, &qword_27F96CB70, v1, MEMORY[0x277CE0728]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96CBB0);
  }

  return result;
}

unint64_t sub_2589C6458()
{
  result = qword_27F96CBD0;
  if (!qword_27F96CBD0)
  {
    sub_2589C4B6C(255);
    sub_2589C6508();
    sub_2589C6A98(&qword_27F96CBF0, sub_2589C54E4, MEMORY[0x277CDF4F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96CBD0);
  }

  return result;
}

unint64_t sub_2589C6508()
{
  result = qword_27F96CBD8;
  if (!qword_27F96CBD8)
  {
    sub_2589C4BB4(255);
    sub_2589C6A98(&qword_27F96CBE0, sub_2589C4BFC, &unk_258B2DB30);
    sub_2589C6A98(&qword_27F96CBE8, sub_2589C5264, MEMORY[0x277CE0328]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96CBD8);
  }

  return result;
}

void sub_2589C65F0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_258B00974();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_2589C6654(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2589C66C4(uint64_t a1)
{
  sub_2589C5300(0, &qword_27F96CAC0, sub_2589C5878, &qword_27F96CB70, MEMORY[0x277CE0718]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_2589C6760(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_2589C67C4()
{
  v1 = *(_s15EntryNoDataViewVMa(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_2589C48BC(v2);
}

unint64_t sub_2589C6824()
{
  result = qword_280DF8940;
  if (!qword_280DF8940)
  {
    sub_2589C6974(255, &qword_280DF8948, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DF8940);
  }

  return result;
}

uint64_t sub_2589C68F4(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_2589C6760(0, a3, a4, MEMORY[0x277CDF458]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void sub_2589C6974(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_2589C69E8()
{
  result = qword_27F96CC18;
  if (!qword_27F96CC18)
  {
    sub_2589C5024(255);
    sub_2589C6A98(&qword_27F96CC20, _s21StateOfMindSymbolViewVMa, &unk_258B2D618);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96CC18);
  }

  return result;
}

uint64_t sub_2589C6A98(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2589C6AE0()
{
  result = qword_27F96CC28;
  if (!qword_27F96CC28)
  {
    sub_2589C5144(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96CC28);
  }

  return result;
}

uint64_t sub_2589C6B58(uint64_t a1, uint64_t a2)
{
  sub_2589C6DBC(0, &qword_27F96CA18, sub_2589C5144, MEMORY[0x277CDE470], MEMORY[0x277CDFAB8]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2589C6C00(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2589C6C68(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_2589C6CC8()
{
  result = qword_27F96CC38;
  if (!qword_27F96CC38)
  {
    sub_2589C6DBC(255, &qword_27F96CC40, sub_2589C5578, sub_2589C4B6C, MEMORY[0x277CE0338]);
    sub_2589C6A98(&qword_27F96CBC8, sub_2589C5578, MEMORY[0x277CDDA18]);
    sub_2589C6458();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96CC38);
  }

  return result;
}

void sub_2589C6DBC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a4(255);
    v11 = a5(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

unint64_t sub_2589C6E40(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0x6F4C207972746E45;
    v6 = 0x6146207972746E45;
    if (a1 != 8)
    {
      v6 = 0xD000000000000010;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0x746169636F737341;
    if (a1 != 5)
    {
      v7 = 0x616D7269666E6F43;
    }

    if (a1 <= 6u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x696472616F626E4FLL;
    v2 = 0xD000000000000013;
    v3 = 0x736C6562614CLL;
    if (a1 == 3)
    {
      v3 = 0xD000000000000010;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (!a1)
    {
      v1 = 0xD000000000000017;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_2589C6FA4(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = sub_2589C6E40(*a1);
  v5 = v4;
  if (v3 == sub_2589C6E40(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_258B03454();
  }

  return v8 & 1;
}

uint64_t sub_2589C702C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEC0000006D6F6F52;
  v3 = 0x79726F6765746163;
  v4 = a1;
  v5 = 963733616;
  v6 = 0xE400000000000000;
  if (a1 == 6)
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v5 = 929325415;
  }

  v7 = 0x8000000258B36410;
  v8 = 0xD000000000000016;
  if (a1 != 4)
  {
    v8 = 0x47646E4139716870;
    v7 = 0xEB00000000376461;
  }

  if (a1 <= 5u)
  {
    v6 = v7;
  }

  else
  {
    v8 = v5;
  }

  v9 = 0xD000000000000011;
  v10 = 0x8000000258B363F0;
  if (a1 != 2)
  {
    v9 = 0x736E6F6974706FLL;
    v10 = 0xE700000000000000;
  }

  v11 = 0x6574617453676F6CLL;
  v12 = 0xEE00646E694D664FLL;
  if (!a1)
  {
    v11 = 0x79726F6765746163;
    v12 = 0xEC0000006D6F6F52;
  }

  if (a1 <= 1u)
  {
    v9 = v11;
    v10 = v12;
  }

  if (a1 <= 3u)
  {
    v13 = v9;
  }

  else
  {
    v13 = v8;
  }

  if (v4 <= 3)
  {
    v14 = v10;
  }

  else
  {
    v14 = v6;
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      v2 = 0xE400000000000000;
      if (a2 == 6)
      {
        if (v13 != 963733616)
        {
          goto LABEL_43;
        }
      }

      else if (v13 != 929325415)
      {
        goto LABEL_43;
      }
    }

    else if (a2 == 4)
    {
      v2 = 0x8000000258B36410;
      if (v13 != 0xD000000000000016)
      {
        goto LABEL_43;
      }
    }

    else
    {
      v2 = 0xEB00000000376461;
      if (v13 != 0x47646E4139716870)
      {
        goto LABEL_43;
      }
    }
  }

  else
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v2 = 0x8000000258B363F0;
        if (v13 != 0xD000000000000011)
        {
          goto LABEL_43;
        }

        goto LABEL_40;
      }

      v2 = 0xE700000000000000;
      v3 = 0x736E6F6974706FLL;
    }

    else if (a2)
    {
      v2 = 0xEE00646E694D664FLL;
      if (v13 != 0x6574617453676F6CLL)
      {
        goto LABEL_43;
      }

      goto LABEL_40;
    }

    if (v13 != v3)
    {
LABEL_43:
      v15 = sub_258B03454();
      goto LABEL_44;
    }
  }

LABEL_40:
  if (v14 != v2)
  {
    goto LABEL_43;
  }

  v15 = 1;
LABEL_44:

  return v15 & 1;
}

uint64_t sub_2589C729C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEE006D6F6F522065;
  v3 = 0x7079542061746144;
  v4 = a1;
  v5 = 0xE700000000000000;
  v6 = 0x7972616D6D7553;
  if (a1 != 5)
  {
    v6 = 0x746567646957;
    v5 = 0xE600000000000000;
  }

  v7 = 0x726353206B636F4CLL;
  v8 = 0xEB000000006E6565;
  if (a1 != 3)
  {
    v7 = 0x6E6C7566646E694DLL;
    v8 = 0xEB00000000737365;
  }

  if (a1 <= 4u)
  {
    v6 = v7;
    v5 = v8;
  }

  v9 = 0xE700000000000000;
  v10 = 0x7373656E746946;
  if (a1 != 1)
  {
    v10 = 0x6C616E72756F4ALL;
    v9 = 0xE700000000000000;
  }

  if (!a1)
  {
    v10 = 0x7079542061746144;
    v9 = 0xEE006D6F6F522065;
  }

  if (a1 <= 2u)
  {
    v11 = v10;
  }

  else
  {
    v11 = v6;
  }

  if (v4 <= 2)
  {
    v12 = v9;
  }

  else
  {
    v12 = v5;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      v2 = 0xE700000000000000;
      if (a2 == 1)
      {
        if (v11 != 0x7373656E746946)
        {
          goto LABEL_36;
        }
      }

      else if (v11 != 0x6C616E72756F4ALL)
      {
        goto LABEL_36;
      }

      goto LABEL_33;
    }
  }

  else
  {
    if (a2 > 4u)
    {
      if (a2 == 5)
      {
        v2 = 0xE700000000000000;
        if (v11 != 0x7972616D6D7553)
        {
          goto LABEL_36;
        }
      }

      else
      {
        v2 = 0xE600000000000000;
        if (v11 != 0x746567646957)
        {
          goto LABEL_36;
        }
      }

      goto LABEL_33;
    }

    if (a2 == 3)
    {
      v2 = 0xEB000000006E6565;
      if (v11 != 0x726353206B636F4CLL)
      {
        goto LABEL_36;
      }

      goto LABEL_33;
    }

    v3 = 0x6E6C7566646E694DLL;
    v2 = 0xEB00000000737365;
  }

  if (v11 != v3)
  {
LABEL_36:
    v13 = sub_258B03454();
    goto LABEL_37;
  }

LABEL_33:
  if (v12 != v2)
  {
    goto LABEL_36;
  }

  v13 = 1;
LABEL_37:

  return v13 & 1;
}

uint64_t sub_2589C74D8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 2u)
  {
    if (a1 == 3)
    {
      v6 = 0xE400000000000000;
      v5 = 1885956947;
    }

    else
    {
      if (a1 == 4)
      {
        v5 = 0xD000000000000014;
      }

      else
      {
        v5 = 0xD000000000000015;
      }

      if (v2 == 4)
      {
        v6 = 0x8000000258B35BF0;
      }

      else
      {
        v6 = 0x8000000258B35C10;
      }
    }
  }

  else
  {
    v3 = 0xE600000000000000;
    v4 = 0x6C65636E6143;
    if (a1 != 1)
    {
      v4 = 1801675074;
      v3 = 0xE400000000000000;
    }

    if (a1)
    {
      v5 = v4;
    }

    else
    {
      v5 = 1954047310;
    }

    if (v2)
    {
      v6 = v3;
    }

    else
    {
      v6 = 0xE400000000000000;
    }
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v7 = 0xE400000000000000;
      if (v5 != 1885956947)
      {
        goto LABEL_39;
      }
    }

    else
    {
      if (a2 == 4)
      {
        v8 = 0xD000000000000014;
      }

      else
      {
        v8 = 0xD000000000000015;
      }

      if (a2 == 4)
      {
        v7 = 0x8000000258B35BF0;
      }

      else
      {
        v7 = 0x8000000258B35C10;
      }

      if (v5 != v8)
      {
        goto LABEL_39;
      }
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v7 = 0xE600000000000000;
      if (v5 != 0x6C65636E6143)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v7 = 0xE400000000000000;
      if (v5 != 1801675074)
      {
LABEL_39:
        v9 = sub_258B03454();
        goto LABEL_40;
      }
    }
  }

  else
  {
    v7 = 0xE400000000000000;
    if (v5 != 1954047310)
    {
      goto LABEL_39;
    }
  }

  if (v6 != v7)
  {
    goto LABEL_39;
  }

  v9 = 1;
LABEL_40:

  return v9 & 1;
}

uint64_t sub_2589C7690(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE700000000000000;
  v4 = 0xD000000000000012;
  v5 = 0x8000000258B360E0;
  v6 = 0x6163696669746F4ELL;
  v7 = 0xEC0000006E6F6974;
  if (a1 != 4)
  {
    v6 = 0x6E694C2070656544;
    v7 = 0xE90000000000006BLL;
  }

  if (a1 != 3)
  {
    v4 = v6;
    v5 = v7;
  }

  v8 = 0x7079542065746144;
  v9 = 0xEE006D6F6F522065;
  if (a1 != 1)
  {
    v8 = 0x656C6369747241;
    v9 = 0xE700000000000000;
  }

  if (a1)
  {
    v3 = v9;
  }

  else
  {
    v8 = 0x7972616D6D7553;
  }

  if (a1 <= 2u)
  {
    v10 = v8;
  }

  else
  {
    v10 = v4;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v5;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v12 = 0x8000000258B360E0;
      if (v10 != 0xD000000000000012)
      {
        goto LABEL_34;
      }
    }

    else if (a2 == 4)
    {
      v12 = 0xEC0000006E6F6974;
      if (v10 != 0x6163696669746F4ELL)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xE90000000000006BLL;
      if (v10 != 0x6E694C2070656544)
      {
LABEL_34:
        v13 = sub_258B03454();
        goto LABEL_35;
      }
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v12 = 0xEE006D6F6F522065;
      if (v10 != 0x7079542065746144)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xE700000000000000;
      if (v10 != 0x656C6369747241)
      {
        goto LABEL_34;
      }
    }
  }

  else
  {
    v12 = 0xE700000000000000;
    if (v10 != 0x7972616D6D7553)
    {
      goto LABEL_34;
    }
  }

  if (v11 != v12)
  {
    goto LABEL_34;
  }

  v13 = 1;
LABEL_35:

  return v13 & 1;
}

uint64_t sub_2589C78A4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x6E69676542;
  v3 = a1;
  if (a1 <= 4u)
  {
    v13 = 0xE400000000000000;
    v14 = 1954047310;
    v15 = 0xE400000000000000;
    v16 = 1701736260;
    if (a1 != 3)
    {
      v16 = 0x74726F707845;
      v15 = 0xE600000000000000;
    }

    if (a1 != 2)
    {
      v14 = v16;
      v13 = v15;
    }

    v17 = 0x65736F6C43;
    if (!a1)
    {
      v17 = 0x6E69676542;
    }

    if (a1 <= 1u)
    {
      v11 = v17;
    }

    else
    {
      v11 = v14;
    }

    if (v3 <= 1)
    {
      v12 = 0xE500000000000000;
    }

    else
    {
      v12 = v13;
    }
  }

  else
  {
    v4 = 0x8000000258B35E80;
    v5 = 0x8000000258B35EA0;
    v6 = 0xD000000000000025;
    if (a1 == 9)
    {
      v6 = 0xD00000000000001ALL;
    }

    else
    {
      v5 = 0x8000000258B35EC0;
    }

    if (a1 == 8)
    {
      v6 = 0xD000000000000017;
    }

    else
    {
      v4 = v5;
    }

    v7 = 0x20656C6369747241;
    v8 = 0xED00006B63696C43;
    v9 = 0x696C43206F666E49;
    v10 = 0xEA00000000006B63;
    if (a1 != 6)
    {
      v9 = 0xD000000000000013;
      v10 = 0x8000000258B35E60;
    }

    if (a1 != 5)
    {
      v7 = v9;
      v8 = v10;
    }

    if (a1 <= 7u)
    {
      v11 = v7;
    }

    else
    {
      v11 = v6;
    }

    if (v3 <= 7)
    {
      v12 = v8;
    }

    else
    {
      v12 = v4;
    }
  }

  if (a2 <= 4u)
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v18 = 0xE400000000000000;
        if (v11 != 1954047310)
        {
          goto LABEL_61;
        }
      }

      else if (a2 == 3)
      {
        v18 = 0xE400000000000000;
        if (v11 != 1701736260)
        {
          goto LABEL_61;
        }
      }

      else
      {
        v18 = 0xE600000000000000;
        if (v11 != 0x74726F707845)
        {
          goto LABEL_61;
        }
      }

      goto LABEL_58;
    }

    v18 = 0xE500000000000000;
    if (a2)
    {
      if (v11 != 0x65736F6C43)
      {
        goto LABEL_61;
      }

      goto LABEL_58;
    }
  }

  else
  {
    if (a2 > 7u)
    {
      if (a2 == 8)
      {
        v18 = 0x8000000258B35E80;
        if (v11 != 0xD000000000000017)
        {
          goto LABEL_61;
        }
      }

      else if (a2 == 9)
      {
        v18 = 0x8000000258B35EA0;
        if (v11 != 0xD00000000000001ALL)
        {
          goto LABEL_61;
        }
      }

      else
      {
        v18 = 0x8000000258B35EC0;
        if (v11 != 0xD000000000000025)
        {
          goto LABEL_61;
        }
      }

      goto LABEL_58;
    }

    if (a2 == 5)
    {
      v18 = 0xED00006B63696C43;
      if (v11 != 0x20656C6369747241)
      {
        goto LABEL_61;
      }

      goto LABEL_58;
    }

    if (a2 == 6)
    {
      v18 = 0xEA00000000006B63;
      if (v11 != 0x696C43206F666E49)
      {
        goto LABEL_61;
      }

      goto LABEL_58;
    }

    v2 = 0xD000000000000013;
    v18 = 0x8000000258B35E60;
  }

  if (v11 != v2)
  {
LABEL_61:
    v19 = sub_258B03454();
    goto LABEL_62;
  }

LABEL_58:
  if (v12 != v18)
  {
    goto LABEL_61;
  }

  v19 = 1;
LABEL_62:

  return v19 & 1;
}

uint64_t sub_2589C7BF4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 0x6574614720656741;
    }

    else
    {
      v3 = 0xD000000000000010;
    }

    if (v2)
    {
      v4 = 0xEF6F72746E492064;
    }

    else
    {
      v4 = 0x8000000258B35DF0;
    }
  }

  else if (a1 == 2)
  {
    v4 = 0xE500000000000000;
    v3 = 0x6F72746E49;
  }

  else
  {
    if (a1 == 3)
    {
      v3 = 0x6E6F697473657551;
    }

    else
    {
      v3 = 0x746C75736552;
    }

    if (v2 == 3)
    {
      v4 = 0xE900000000000073;
    }

    else
    {
      v4 = 0xE600000000000000;
    }
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v6 = 0x6574614720656741;
    }

    else
    {
      v6 = 0xD000000000000010;
    }

    if (a2)
    {
      v5 = 0xEF6F72746E492064;
    }

    else
    {
      v5 = 0x8000000258B35DF0;
    }

    if (v3 != v6)
    {
      goto LABEL_34;
    }
  }

  else if (a2 == 2)
  {
    v5 = 0xE500000000000000;
    if (v3 != 0x6F72746E49)
    {
      goto LABEL_34;
    }
  }

  else if (a2 == 3)
  {
    v5 = 0xE900000000000073;
    if (v3 != 0x6E6F697473657551)
    {
      goto LABEL_34;
    }
  }

  else
  {
    v5 = 0xE600000000000000;
    if (v3 != 0x746C75736552)
    {
LABEL_34:
      v7 = sub_258B03454();
      goto LABEL_35;
    }
  }

  if (v4 != v5)
  {
    goto LABEL_34;
  }

  v7 = 1;
LABEL_35:

  return v7 & 1;
}

uint64_t sub_2589C7D98()
{
  v1 = *v0;
  sub_258B03514();
  sub_2589C6E40(v1);
  sub_258B02B74();

  return sub_258B03554();
}

uint64_t sub_2589C7DFC(unsigned __int8 a1)
{
  sub_258B03514();
  sub_258B02B74();

  return sub_258B03554();
}

uint64_t sub_2589C7EEC(unsigned __int8 a1)
{
  sub_258B03514();
  sub_258B02B74();

  return sub_258B03554();
}

uint64_t sub_2589C8010(uint64_t a1)
{
  sub_2589C6E40(*v1);
  sub_258B02B74();
}

uint64_t sub_2589C8064(uint64_t a1, unsigned __int8 a2)
{
  sub_258B02B74();
}

uint64_t sub_2589C81AC(uint64_t a1, unsigned __int8 a2)
{
  sub_258B02B74();
}

uint64_t sub_2589C833C(uint64_t a1)
{
  v2 = *v1;
  sub_258B03514();
  sub_2589C6E40(v2);
  sub_258B02B74();

  return sub_258B03554();
}

uint64_t sub_2589C839C(uint64_t a1, unsigned __int8 a2)
{
  sub_258B03514();
  sub_258B02B74();

  return sub_258B03554();
}

uint64_t sub_2589C84BC(uint64_t a1, unsigned __int8 a2)
{
  sub_258B03514();
  sub_258B02B74();

  return sub_258B03554();
}

uint64_t sub_2589C85A8(uint64_t a1, unsigned __int8 a2)
{
  sub_258B03514();
  sub_258B02B74();

  return sub_258B03554();
}

uint64_t sub_2589C86E4(uint64_t a1, unsigned __int8 a2)
{
  sub_258B03514();
  sub_258B02B74();

  return sub_258B03554();
}

unint64_t sub_2589C8840@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2589C9E64(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_2589C8870@<X0>(unint64_t *a1@<X8>)
{
  result = sub_2589C6E40(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_2589C88B0(uint64_t a1)
{
  sub_258B02B74();
}

unint64_t sub_2589C8990@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2589C9EB0(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_2589C89C0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 1954047310;
  v5 = 0xE400000000000000;
  v6 = 1885956947;
  v7 = 0xD000000000000014;
  v8 = 0x8000000258B35BF0;
  if (v2 != 4)
  {
    v7 = 0xD000000000000015;
    v8 = 0x8000000258B35C10;
  }

  if (v2 != 3)
  {
    v6 = v7;
    v5 = v8;
  }

  v9 = 0xE600000000000000;
  v10 = 0x6C65636E6143;
  if (v2 != 1)
  {
    v10 = 1801675074;
    v9 = 0xE400000000000000;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

uint64_t sub_2589C8A68(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x796C696144;
  }

  else
  {
    v3 = 0x7261746E656D6F4DLL;
  }

  if (v2)
  {
    v4 = 0xE900000000000079;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  if (*a2)
  {
    v5 = 0x796C696144;
  }

  else
  {
    v5 = 0x7261746E656D6F4DLL;
  }

  if (*a2)
  {
    v6 = 0xE500000000000000;
  }

  else
  {
    v6 = 0xE900000000000079;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_258B03454();
  }

  return v8 & 1;
}

uint64_t sub_2589C8B10()
{
  sub_258B03514();
  sub_258B02B74();

  return sub_258B03554();
}

uint64_t sub_2589C8B94(uint64_t a1)
{
  sub_258B02B74();
}

uint64_t sub_2589C8C04(uint64_t a1)
{
  sub_258B03514();
  sub_258B02B74();

  return sub_258B03554();
}

uint64_t sub_2589C8C84@<X0>(char *a2@<X8>)
{
  v3 = sub_258B03324();

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

  *a2 = v5;
  return result;
}

void sub_2589C8CE4(uint64_t *a1@<X8>)
{
  v2 = 0x7261746E656D6F4DLL;
  if (*v1)
  {
    v2 = 0x796C696144;
  }

  v3 = 0xE900000000000079;
  if (*v1)
  {
    v3 = 0xE500000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

MentalHealthUI::StateOfMindLoggingAnalyticsEntryPointType_optional __swiftcall StateOfMindLoggingAnalyticsEntryPointType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_258B03324();

  v5 = 13;
  if (v3 < 0xD)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t StateOfMindLoggingAnalyticsEntryPointType.rawValue.getter()
{
  result = 0x72635320656D6F48;
  switch(*v0)
  {
    case 1:
      result = 0xD000000000000012;
      break;
    case 2:
      result = 0xD00000000000001ALL;
      break;
    case 3:
      return result;
    case 4:
      result = 0x6C616E72756F4ALL;
      break;
    case 5:
      result = 0x726353206B636F4CLL;
      break;
    case 6:
      result = 0xD000000000000014;
      break;
    case 7:
      result = 0xD000000000000015;
      break;
    case 9:
      result = 0x207972616D6D7553;
      break;
    case 0xA:
      result = 0xD000000000000012;
      break;
    case 0xB:
      result = 0x746567646957;
      break;
    case 0xC:
      result = 0x6F4C206B63697551;
      break;
    default:
      result = 0xD000000000000017;
      break;
  }

  return result;
}

uint64_t sub_2589C8F04()
{
  v0 = StateOfMindLoggingAnalyticsEntryPointType.rawValue.getter();
  v2 = v1;
  if (v0 == StateOfMindLoggingAnalyticsEntryPointType.rawValue.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_258B03454();
  }

  return v5 & 1;
}

uint64_t sub_2589C8FA0()
{
  sub_258B03514();
  StateOfMindLoggingAnalyticsEntryPointType.rawValue.getter();
  sub_258B02B74();

  return sub_258B03554();
}

uint64_t sub_2589C9008(uint64_t a1)
{
  StateOfMindLoggingAnalyticsEntryPointType.rawValue.getter();
  sub_258B02B74();
}

uint64_t sub_2589C906C(uint64_t a1)
{
  sub_258B03514();
  StateOfMindLoggingAnalyticsEntryPointType.rawValue.getter();
  sub_258B02B74();

  return sub_258B03554();
}

unint64_t sub_2589C90DC@<X0>(unint64_t *a1@<X8>)
{
  result = StateOfMindLoggingAnalyticsEntryPointType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

MentalHealthUI::StateOfMindLoggingAnalyticsProvenanceType_optional __swiftcall StateOfMindLoggingAnalyticsProvenanceType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_258B03324();

  v5 = 7;
  if (v3 < 7)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t StateOfMindLoggingAnalyticsProvenanceType.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x7079542061746144;
  v3 = 0x7972616D6D7553;
  if (v1 != 5)
  {
    v3 = 0x746567646957;
  }

  v4 = 0x726353206B636F4CLL;
  if (v1 != 3)
  {
    v4 = 0x6E6C7566646E694DLL;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x7373656E746946;
  if (v1 != 1)
  {
    v5 = 0x6C616E72756F4ALL;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_2589C9308(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27F96CC48;
  if (!qword_27F96CC48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96CC48);
  }

  return result;
}

unint64_t sub_2589C936C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27F96CC50;
  if (!qword_27F96CC50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96CC50);
  }

  return result;
}

uint64_t sub_2589C93CC(uint64_t a1)
{
  sub_258B02B74();
}

void sub_2589C9508(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEE006D6F6F522065;
  v4 = 0x7079542061746144;
  v5 = 0xE700000000000000;
  v6 = 0x7972616D6D7553;
  if (v2 != 5)
  {
    v6 = 0x746567646957;
    v5 = 0xE600000000000000;
  }

  v7 = 0xEB000000006E6565;
  v8 = 0x726353206B636F4CLL;
  if (v2 != 3)
  {
    v8 = 0x6E6C7566646E694DLL;
    v7 = 0xEB00000000737365;
  }

  if (*v1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0x7373656E746946;
  if (v2 != 1)
  {
    v9 = 0x6C616E72756F4ALL;
  }

  if (*v1)
  {
    v4 = v9;
    v3 = 0xE700000000000000;
  }

  if (*v1 <= 2u)
  {
    v10 = v4;
  }

  else
  {
    v10 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v10;
  a1[1] = v3;
}

uint64_t getEnumTagSinglePayload for StateOfMindLoggingAnalyticsEntryPointType(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for StateOfMindLoggingAnalyticsEntryPointType(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for StateOfMindLoggingAnalyticsProvenanceType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for StateOfMindLoggingAnalyticsProvenanceType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for StateOfMindEntryPresentationStyle(unsigned __int8 *a1, unsigned int a2)
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
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for StateOfMindEntryPresentationStyle(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for StateOfMindLoggingAnalyticsActionType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for StateOfMindLoggingAnalyticsActionType(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for StateOfMindLoggingAnalyticsStepType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 9;
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

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for StateOfMindLoggingAnalyticsStepType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_2589C9D60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27F96CC58;
  if (!qword_27F96CC58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96CC58);
  }

  return result;
}

unint64_t sub_2589C9DB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27F96CC60;
  if (!qword_27F96CC60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96CC60);
  }

  return result;
}

unint64_t sub_2589C9E10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27F96CC68;
  if (!qword_27F96CC68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96CC68);
  }

  return result;
}

unint64_t sub_2589C9E64(uint64_t a1, uint64_t a2)
{
  v2 = sub_258B03324();

  if (v2 >= 0xA)
  {
    return 10;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_2589C9EB0(uint64_t a1, uint64_t a2)
{
  v2 = sub_258B03324();

  if (v2 >= 6)
  {
    return 6;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_2589C9EFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27F96CC70;
  if (!qword_27F96CC70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96CC70);
  }

  return result;
}

unint64_t sub_2589C9F50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27F96CC78;
  if (!qword_27F96CC78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96CC78);
  }

  return result;
}

void sub_2589C9FC0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t _s16TimelineDataViewVMa(uint64_t a1)
{
  result = qword_27F96CC90;
  if (!qword_27F96CC90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2589CA084(uint64_t a1)
{
  sub_2589C9FC0(319, &qword_27F96CC80, MEMORY[0x277CDFAA0], MEMORY[0x277CDF468]);
  if (v1 <= 0x3F)
  {
    sub_2589C9FC0(319, &qword_27F96C7E0, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
    if (v2 <= 0x3F)
    {
      sub_2589C9FC0(319, &qword_27F96C788, type metadata accessor for StateOfMindTimeline.Styles, MEMORY[0x277CDF468]);
      if (v3 <= 0x3F)
      {
        sub_2589C9FC0(319, &qword_27F96CC88, _s9ViewModelOMa, MEMORY[0x277CE11F8]);
        if (v4 <= 0x3F)
        {
          sub_2589C0D10();
          if (v5 <= 0x3F)
          {
            sub_2589D384C(319, &qword_27F96CCA0, MEMORY[0x277D85048], MEMORY[0x277CE10B8]);
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

uint64_t sub_2589CA274@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_258B00F84();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x277CDFAA0];
  v9 = MEMORY[0x277CDF458];
  sub_2589C9FC0(0, &qword_27F96CFA8, MEMORY[0x277CDFAA0], MEMORY[0x277CDF458]);
  MEMORY[0x28223BE20](v10);
  v12 = &v16 - v11;
  sub_2589D447C(v2, &v16 - v11, &qword_27F96CFA8, v8, v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_258B00AC4();
    return (*(*(v13 - 8) + 32))(a1, v12, v13);
  }

  else
  {
    sub_258B02E94();
    v15 = sub_258B01824();
    sub_258B00354();

    sub_258B00F74();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

double sub_2589CA4A0()
{
  v1 = sub_258B00F84();
  v23 = *(v1 - 8);
  v24 = v1;
  MEMORY[0x28223BE20](v1);
  v3 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x277CDF458];
  sub_2589C9FC0(0, &qword_27F96CC08, type metadata accessor for StateOfMindTimeline.Styles, MEMORY[0x277CDF458]);
  v6 = MEMORY[0x28223BE20](v5);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v23 - v9;
  v11 = type metadata accessor for StateOfMindTimeline.Styles(0);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v26 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v23 - v14;
  v16 = *(_s16TimelineDataViewVMa(0) + 24);
  v25 = v0;
  sub_2589D447C(v0 + v16, v10, &qword_27F96CC08, type metadata accessor for StateOfMindTimeline.Styles, v4);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2589D3650(v10, v15, type metadata accessor for StateOfMindTimeline.Styles);
    v18 = v23;
    v17 = v24;
  }

  else
  {
    sub_258B02E94();
    v19 = sub_258B01824();
    sub_258B00354();

    sub_258B00F74();
    swift_getAtKeyPath();

    v18 = v23;
    v17 = v24;
    (*(v23 + 8))(v3, v24);
  }

  sub_2589D4A80(v15, type metadata accessor for StateOfMindTimeline.Styles);
  sub_2589D447C(v25 + v16, v8, &qword_27F96CC08, type metadata accessor for StateOfMindTimeline.Styles, MEMORY[0x277CDF458]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v20 = v26;
    sub_2589D3650(v8, v26, type metadata accessor for StateOfMindTimeline.Styles);
  }

  else
  {
    sub_258B02E94();
    v21 = sub_258B01824();
    sub_258B00354();

    sub_258B00F74();
    v20 = v26;
    swift_getAtKeyPath();

    (*(v18 + 8))(v3, v17);
  }

  sub_2589D4A80(v20, type metadata accessor for StateOfMindTimeline.Styles);
  return 20.0;
}

double sub_2589CA888()
{
  v1 = type metadata accessor for StateOfMindTimeline.Styles(0);
  v2 = MEMORY[0x28223BE20](v1 - 8);
  v4 = v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = v36 - v6;
  MEMORY[0x28223BE20](v5);
  v9 = v36 - v8;
  v10 = _s9ViewModelOMa(0);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = v36 - v14;
  v16 = sub_2589CA4A0();
  v17 = _s16TimelineDataViewVMa(0);
  sub_2589C9FC0(0, &qword_27F96CC88, _s9ViewModelOMa, MEMORY[0x277CE11F8]);
  MEMORY[0x259C92900]();
  sub_2589D3650(v15, v13, _s9ViewModelOMa);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_2589D3788(0);

      v19 = sub_258B029C4();
      (*(*(v19 - 8) + 8))(v13, v19);
      v20 = 1.0;
    }

    else
    {
      v22 = *(v13 + 1);

      v20 = v22;
    }
  }

  else
  {
    sub_2589D3788(0);

    v21 = sub_258B029C4();
    (*(*(v21 - 8) + 8))(v13, v21);
    v20 = 0.0;
  }

  v23 = *(v0 + *(v17 + 32));
  v24 = sub_2589CA4A0();
  v25 = v23 - (v24 + v24);
  sub_258AC1060(v9);
  sub_2589D4A80(v9, type metadata accessor for StateOfMindTimeline.Styles);
  if (v25 <= 373.0)
  {
    v26 = v25;
  }

  else
  {
    v26 = 373.0;
  }

  sub_258AC1060(v7);
  sub_2589D4A80(v7, type metadata accessor for StateOfMindTimeline.Styles);
  v27 = (v0 + *(v17 + 52));
  v28 = *v27;
  v29 = v27[1];
  v36[2] = v28;
  v36[3] = v29;
  sub_2589D384C(0, &qword_27F96CCA0, MEMORY[0x277D85048], MEMORY[0x277CE10B8]);
  sub_258B02124();
  v30 = *&v36[1];
  v31 = sub_2589CA4A0();
  v32 = sub_2589CA4A0();
  v33 = v23 - (v32 + v32);
  sub_258AC1060(v4);
  sub_2589D4A80(v4, type metadata accessor for StateOfMindTimeline.Styles);
  if (v33 <= 373.0)
  {
    v34 = v33;
  }

  else
  {
    v34 = 373.0;
  }

  return v16 - v20 * (v26 + 10.0) + v30 + (v23 - (v31 + v31) - v34) * 0.5;
}

uint64_t sub_2589CAC60@<X0>(char *a1@<X0>, void *a2@<X8>)
{
  v178 = a2;
  v208 = *MEMORY[0x277D85DE8];
  v165 = _s9LogButtonVMa(0);
  MEMORY[0x28223BE20](v165);
  v185 = (&v145 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2589D3154(0, &qword_27F96CCF8, _s9LogButtonVMa, MEMORY[0x277CDF910]);
  v171 = v4;
  MEMORY[0x28223BE20](v4);
  v173 = &v145 - v5;
  sub_2589D19D8(0);
  v175 = v6;
  MEMORY[0x28223BE20](v6);
  v176 = &v145 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2589D19A4(0);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v177 = &v145 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v186 = &v145 - v11;
  v12 = sub_258B02554();
  v160 = *(v12 - 8);
  v161 = v12;
  MEMORY[0x28223BE20](v12);
  *&v159 = &v145 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v158 = sub_258B006A4();
  v155 = *(v158 - 8);
  v14 = MEMORY[0x28223BE20](v158);
  v154 = &v145 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v153 = &v145 - v16;
  v17 = sub_258B019F4();
  v148 = *(v17 - 8);
  v149 = v17;
  MEMORY[0x28223BE20](v17);
  v147 = &v145 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v187 = _s9ViewModelOMa(0);
  v19 = MEMORY[0x28223BE20](v187);
  v166 = &v145 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v164 = &v145 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v163 = &v145 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v162 = &v145 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v157 = &v145 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v156 = &v145 - v30;
  MEMORY[0x28223BE20](v29);
  v32 = &v145 - v31;
  sub_2589C5144(0);
  v181 = v33;
  MEMORY[0x28223BE20](v33);
  v152 = &v145 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2589D1970(0);
  v36 = MEMORY[0x28223BE20](v35 - 8);
  v174 = &v145 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v188 = &v145 - v38;
  v39 = type metadata accessor for StateOfMindTimeline.Styles(0);
  v40 = MEMORY[0x28223BE20](v39 - 8);
  v172 = &v145 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = MEMORY[0x28223BE20](v40);
  v180 = &v145 - v43;
  MEMORY[0x28223BE20](v42);
  v45 = &v145 - v44;
  sub_2589CA4A0();
  v46 = _s16TimelineDataViewVMa(0);
  sub_2589CA4A0();
  sub_2589CA4A0();
  v47 = *(v46 + 24);
  v179 = v46;
  v184 = v47;
  sub_258AC1060(v45);
  v146 = type metadata accessor for StateOfMindTimeline.Styles;
  sub_2589D4A80(v45, type metadata accessor for StateOfMindTimeline.Styles);
  sub_258B024F4();
  sub_258B00854();
  v169 = v198;
  v170 = v196;
  v167 = v201;
  v168 = v200;
  v195 = 1;
  v194 = v197;
  v193 = v199;
  v151 = *(v46 + 28);
  sub_2589C9FC0(0, &qword_27F96CC88, _s9ViewModelOMa, MEMORY[0x277CE11F8]);
  v182 = v48;
  v189 = a1;
  MEMORY[0x259C92900]();
  v183 = v32;
  v49 = sub_258AB2D70();
  v51 = v50;
  v150 = _s9ViewModelOMa;
  v52 = sub_2589D4A80(v32, _s9ViewModelOMa);
  v202 = v49;
  v203 = v51;
  sub_2589BFF58(v52, v53, v54);
  v55 = sub_258B01B44();
  v57 = v56;
  v59 = v58;
  v60 = v180;
  sub_258AC1060(v180);
  sub_2589D4A80(v60, type metadata accessor for StateOfMindTimeline.Styles);
  sub_258B019D4();
  v61 = v147;
  v62 = v148;
  v63 = v149;
  (*(v148 + 104))(v147, *MEMORY[0x277CE0A10], v149);
  sub_258B01A14();

  (*(v62 + 8))(v61, v63);
  v64 = sub_258B01AE4();
  v66 = v65;
  v68 = v67;
  sub_2589BFFAC(v55, v57, v59 & 1);

  v69 = v180;
  sub_258AC1060(v180);
  sub_2589D4A80(v69, v146);
  sub_258B01994();
  v70 = sub_258B01A94();
  v72 = v71;
  LODWORD(v149) = v73;
  v180 = v74;
  sub_2589BFFAC(v64, v66, v68 & 1);

  v75 = v153;
  sub_258AC14E8(v153);
  v76 = v154;
  v77 = v155;
  v78 = v158;
  (*(v155 + 104))(v154, *MEMORY[0x277CDF3D0], v158);
  LOBYTE(v66) = sub_258B00694();
  v79 = *(v77 + 8);
  v79(v76, v78);
  v79(v75, v78);
  v81 = v160;
  v80 = v161;
  v82 = MEMORY[0x277CE13B0];
  if ((v66 & 1) == 0)
  {
    v82 = MEMORY[0x277CE13B8];
  }

  v83 = v159;
  (*(v160 + 104))(v159, *v82, v161);
  v84 = v152;
  (*(v81 + 32))(&v152[*(v181 + 36)], v83, v80);
  *v84 = v70;
  *(v84 + 1) = v72;
  v84[16] = v149 & 1;
  *(v84 + 3) = v180;
  v85 = v84;
  v86 = MEMORY[0x277D837D0];
  sub_2589D384C(0, &qword_280DF88F0, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
  v180 = v87;
  inited = swift_initStackObject();
  v159 = xmmword_258B2C470;
  *(inited + 16) = xmmword_258B2C470;
  v90 = v182;
  v89 = v183;
  MEMORY[0x259C92900](v182);
  sub_2589D4A80(v89, v150);
  *(inited + 32) = 0xD000000000000013;
  *(inited + 40) = 0x8000000258B35D90;
  v160 = 0x8000000258B35D90;
  v91 = sub_258A74828(1, 2, 1, inited);
  *(v91 + 2) = 2;
  *(v91 + 6) = 0x6562614C65746144;
  *(v91 + 7) = 0xE90000000000006CLL;
  v202 = &unk_2869D4670;
  v92 = sub_258B003E4();
  sub_2589FC8C8(v92);
  sub_2589D384C(0, &qword_280DF8948, v86, MEMORY[0x277D83940]);
  v94 = v93;
  v95 = sub_2589C6824();
  v161 = v94;
  v158 = v95;
  sub_258B02A34();

  sub_2589C6AE0();
  sub_258B01DD4();

  sub_2589D4A80(v85, sub_2589C5144);
  v96 = v156;
  MEMORY[0x259C92900](v90);
  v97 = v157;
  sub_2589D3650(v96, v157, _s9ViewModelOMa);
  if (swift_getEnumCaseMultiPayload() > 1)
  {
    sub_2589D4A80(v97, _s9ViewModelOMa);
    v181 = 0x4030000000000000;
  }

  else
  {
    sub_2589D3788(0);

    v98 = sub_258B029C4();
    (*(*(v98 - 8) + 8))(v97, v98);
    v181 = 0;
  }

  v99 = v176;
  v100 = v173;
  v101 = v179;
  if (qword_27F96C240 != -1)
  {
    swift_once();
  }

  v102 = sub_258AFFD94();
  v104 = v103;
  v105 = &v189[*(v101 + 36)];
  v107 = *v105;
  v106 = *(v105 + 1);
  KeyPath = swift_getKeyPath();
  v109 = v185;
  *v185 = KeyPath;
  sub_2589C9FC0(0, &qword_27F96CC08, type metadata accessor for StateOfMindTimeline.Styles, MEMORY[0x277CDF458]);
  swift_storeEnumTagMultiPayload();
  v110 = v165;
  v111 = (v109 + *(v165 + 20));
  *v111 = v102;
  v111[1] = v104;
  v112 = (v109 + *(v110 + 24));
  *v112 = v107;
  v112[1] = v106;

  v113 = v162;
  v114 = v182;
  MEMORY[0x259C92900](v182);
  v115 = v163;
  sub_2589D3650(v113, v163, _s9ViewModelOMa);
  if (swift_getEnumCaseMultiPayload() > 1)
  {
    sub_2589D4A80(v115, _s9ViewModelOMa);
    v117 = 1.0;
  }

  else
  {
    sub_2589D3788(0);

    v116 = sub_258B029C4();
    (*(*(v116 - 8) + 8))(v115, v116);
    v117 = 0.0;
  }

  sub_2589D3650(v185, v100, _s9LogButtonVMa);
  *(v100 + *(v171 + 36)) = v117;
  v118 = v164;
  MEMORY[0x259C92900](v114);
  v119 = v166;
  sub_2589D3650(v118, v166, _s9ViewModelOMa);
  if (swift_getEnumCaseMultiPayload() > 1)
  {
    sub_2589D4A80(v119, _s9ViewModelOMa);
    v121 = 1;
  }

  else
  {
    sub_2589D3788(0);

    v120 = sub_258B029C4();
    (*(*(v120 - 8) + 8))(v119, v120);
    v121 = 0;
  }

  sub_2589D4820(v100, v99);
  v122 = v99 + *(v175 + 36);
  *v122 = 0;
  *(v122 + 8) = v121;
  v123 = swift_initStackObject();
  *(v123 + 16) = v159;
  v124 = v183;
  MEMORY[0x259C92900](v114);
  sub_2589D4A80(v124, _s9ViewModelOMa);
  *(v123 + 32) = 0xD000000000000013;
  *(v123 + 40) = v160;
  v125 = sub_258A74828(1, 2, 1, v123);
  *(v125 + 2) = 2;
  *(v125 + 6) = 0x6F74747542676F4CLL;
  *(v125 + 7) = 0xE90000000000006ELL;
  v202 = &unk_2869D4670;
  v126 = sub_258B003E4();
  sub_2589FC8C8(v126);
  sub_258B02A34();

  sub_2589D48A8();
  v127 = v99;
  v128 = v186;
  sub_258B01DD4();

  sub_2589D4A80(v127, sub_2589D19D8);
  sub_2589CA4A0();
  sub_2589CA4A0();
  sub_2589CA4A0();
  v129 = v172;
  sub_258AC1060(v172);
  sub_2589D4A80(v129, type metadata accessor for StateOfMindTimeline.Styles);
  sub_258B024F4();
  sub_258B00854();
  v189 = v202;
  v187 = v204;
  v184 = v207;
  v185 = v206;
  v192 = 1;
  v191 = v203;
  v190 = v205;
  LOBYTE(v124) = v195;
  v130 = v194;
  v131 = v193;
  v132 = v174;
  sub_2589D36B8(v188, v174, sub_2589D1970);
  v133 = v177;
  sub_2589D36B8(v128, v177, sub_2589D19A4);
  v134 = v192;
  LODWORD(v182) = v191;
  LODWORD(v183) = v190;
  v135 = v178;
  *v178 = 0;
  *(v135 + 8) = v124;
  v136 = v169;
  v135[2] = v170;
  *(v135 + 24) = v130;
  v135[4] = v136;
  *(v135 + 40) = v131;
  v137 = v167;
  v135[6] = v168;
  v135[7] = v137;
  sub_2589D18AC(0);
  v139 = v138;
  sub_2589D36B8(v132, v135 + v138[12], sub_2589D1970);
  v140 = v135 + v139[16];
  *v140 = v181;
  v140[8] = 0;
  sub_2589D36B8(v133, v135 + v139[20], sub_2589D19A4);
  v141 = v135 + v139[24];
  *v141 = 0;
  v141[8] = v134;
  *(v141 + 2) = v189;
  v141[24] = v182;
  v142 = v186;
  *(v141 + 4) = v187;
  v141[40] = v183;
  v143 = v184;
  *(v141 + 6) = v185;
  *(v141 + 7) = v143;
  sub_2589D4A80(v142, sub_2589D19A4);
  sub_2589D4A80(v188, sub_2589D1970);
  sub_2589D4A80(v133, sub_2589D19A4);
  return sub_2589D4A80(v132, sub_2589D1970);
}

__n128 sub_2589CBF38@<Q0>(uint64_t a1@<X8>)
{
  v49 = a1;
  v2 = _s9ViewModelOMa(0);
  v3 = MEMORY[0x28223BE20](v2);
  v5 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v3);
  v44 = &v43 - v7;
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v43 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = &v43 - v11;
  sub_2589D2F70(0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2589D2F48(0);
  v43 = v16;
  MEMORY[0x28223BE20](v16);
  v18 = &v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2589D2F20(0);
  v48 = v19;
  MEMORY[0x28223BE20](v19);
  v21 = &v43 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2589D2EF8(0);
  v47 = v22;
  MEMORY[0x28223BE20](v22);
  v46 = &v43 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v15 = sub_258B00FE4();
  *(v15 + 1) = 0;
  v15[16] = 0;
  sub_2589D35D4(0, &qword_27F96CF80, &qword_27F96CEF8, sub_2589D3024);
  sub_2589CC544(v1, &v15[*(v24 + 44)]);
  _s16TimelineDataViewVMa(0);
  sub_2589C9FC0(0, &qword_27F96CC88, _s9ViewModelOMa, MEMORY[0x277CE11F8]);
  v26 = v25;
  v45 = v1;
  MEMORY[0x259C92900]();
  sub_2589D3650(v12, v10, _s9ViewModelOMa);
  if (swift_getEnumCaseMultiPayload() > 1)
  {
    sub_2589D4A80(v10, _s9ViewModelOMa);
  }

  else
  {
    sub_2589D3788(0);

    v27 = sub_258B029C4();
    (*(*(v27 - 8) + 8))(v10, v27);
  }

  v28 = v49;
  v29 = v48;
  sub_258B024F4();
  sub_258B00854();
  sub_2589D3650(v15, v18, sub_2589D2F70);
  v30 = &v18[*(v43 + 36)];
  v31 = v51;
  *v30 = v50;
  *(v30 + 1) = v31;
  *(v30 + 2) = v52;
  v32 = v44;
  MEMORY[0x259C92900](v26);
  sub_2589D3650(v32, v5, _s9ViewModelOMa);
  if (swift_getEnumCaseMultiPayload() > 1)
  {
    sub_2589D4A80(v5, _s9ViewModelOMa);
    v34 = 1.0;
  }

  else
  {
    sub_2589D3788(0);

    v33 = sub_258B029C4();
    (*(*(v33 - 8) + 8))(v5, v33);
    v34 = 0.0;
  }

  sub_2589D3650(v18, v21, sub_2589D2F48);
  *&v21[*(v29 + 36)] = v34;
  v35 = sub_258B01894();
  v36 = v46;
  sub_2589D3650(v21, v46, sub_2589D2F20);
  v37 = v36 + *(v47 + 36);
  *v37 = v35;
  *(v37 + 8) = 0u;
  *(v37 + 24) = 0u;
  *(v37 + 40) = 1;
  sub_258B024F4();
  sub_258B00C94();
  sub_2589D3650(v36, v28, sub_2589D2EF8);
  sub_2589D2ED0(0);
  v39 = v28 + *(v38 + 36);
  v40 = v58;
  *(v39 + 64) = v57;
  *(v39 + 80) = v40;
  *(v39 + 96) = v59;
  v41 = v54;
  *v39 = v53;
  *(v39 + 16) = v41;
  result = v56;
  *(v39 + 32) = v55;
  *(v39 + 48) = result;
  return result;
}

uint64_t sub_2589CC544@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v73 = a2;
  v93 = *MEMORY[0x277D85DE8];
  v2 = _s9ViewModelOMa(0);
  MEMORY[0x28223BE20](v2 - 8);
  v65 = &v63 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2589D30F8(0);
  v64 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2589D30C4(0);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v72 = &v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v70 = &v63 - v10;
  v11 = type metadata accessor for StateOfMindTimeline.Styles(0);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v71 = &v63 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v63 - v15;
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v63 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = &v63 - v20;
  sub_2589CA4A0();
  v22 = _s16TimelineDataViewVMa(0);
  sub_2589CA4A0();
  sub_2589CA4A0();
  v74 = *(v22 + 24);
  sub_258AC1060(v21);
  sub_2589D4A80(v21, type metadata accessor for StateOfMindTimeline.Styles);
  sub_258B024F4();
  sub_258B00854();
  v69 = v81;
  v68 = v83;
  v67 = v85;
  v66 = v86;
  v80 = 1;
  v79 = v82;
  v78 = v84;
  sub_2589D3248(0, &qword_27F96CF28, MEMORY[0x277CE0BD8], MEMORY[0x277CDFC70], MEMORY[0x277CDFAB8]);
  sub_2589D329C();

  sub_258B02174();
  v23 = sub_258B01874();
  sub_2589D312C(0);
  v25 = &v6[*(v24 + 36)];
  *v25 = v23;
  *(v25 + 8) = 0u;
  *(v25 + 24) = 0u;
  v25[40] = 1;
  sub_258AC1060(v19);
  sub_2589D4A80(v19, type metadata accessor for StateOfMindTimeline.Styles);
  v26 = &v6[*(v64 + 36)];
  v27 = *(sub_258B00C34() + 20);
  v28 = *MEMORY[0x277CE0118];
  v29 = sub_258B010C4();
  (*(*(v29 - 8) + 104))(&v26[v27], v28, v29);
  __asm { FMOV            V0.2D, #26.0 }

  *v26 = _Q0;
  sub_258AC1060(v16);
  sub_2589D4A80(v16, type metadata accessor for StateOfMindTimeline.Styles);
  v35 = [objc_opt_self() systemGray5Color];
  v36 = sub_258B01F94();
  KeyPath = swift_getKeyPath();
  sub_2589D33D4(0, &qword_27F96CF40, MEMORY[0x277CDFC08], sub_2589D3448);
  v39 = &v26[*(v38 + 36)];
  *v39 = KeyPath;
  v39[1] = v36;
  v40 = sub_258B024F4();
  v42 = v41;
  sub_2589D3340(0);
  v44 = &v26[*(v43 + 36)];
  *v44 = v40;
  v44[1] = v42;
  v45 = MEMORY[0x277D837D0];
  sub_2589D384C(0, &qword_280DF88F0, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_258B2C470;
  sub_2589C9FC0(0, &qword_27F96CC88, _s9ViewModelOMa, MEMORY[0x277CE11F8]);
  v47 = v65;
  MEMORY[0x259C92900]();
  sub_2589D4A80(v47, _s9ViewModelOMa);
  *(inited + 32) = 0xD000000000000013;
  *(inited + 40) = 0x8000000258B35D90;
  v48 = sub_258A74828(1, 2, 1, inited);
  *(v48 + 2) = 2;
  *(v48 + 6) = 0x7475427472616843;
  *(v48 + 7) = 0xEB000000006E6F74;
  v87 = &unk_2869D4670;
  v49 = sub_258B003E4();
  sub_2589FC8C8(v49);
  sub_2589D384C(0, &qword_280DF8948, v45, MEMORY[0x277D83940]);
  sub_2589C6824();
  sub_258B02A34();

  sub_2589D389C();
  v50 = v70;
  sub_258B01DD4();

  sub_2589D4A80(v6, sub_2589D30F8);
  sub_2589CA4A0();
  sub_2589CA4A0();
  sub_2589CA4A0();
  v51 = v71;
  sub_258AC1060(v71);
  sub_2589D4A80(v51, type metadata accessor for StateOfMindTimeline.Styles);
  sub_258B024F4();
  sub_258B00854();
  v74 = v87;
  v71 = v89;
  v52 = v92;
  v65 = v91;
  v77 = 1;
  v76 = v88;
  v75 = v90;
  LOBYTE(v51) = v80;
  LOBYTE(v16) = v79;
  v53 = v78;
  v54 = v72;
  sub_2589D36B8(v50, v72, sub_2589D30C4);
  LOBYTE(v6) = v77;
  v55 = v76;
  LOBYTE(inited) = v75;
  v56 = v73;
  *v73 = 0;
  *(v56 + 8) = v51;
  v56[2] = v69;
  *(v56 + 24) = v16;
  v56[4] = v68;
  *(v56 + 40) = v53;
  v57 = v66;
  v56[6] = v67;
  v56[7] = v57;
  v58 = v56;
  sub_2589D3024(0);
  v60 = v59;
  sub_2589D36B8(v54, v58 + *(v59 + 48), sub_2589D30C4);
  v61 = v58 + *(v60 + 64);
  *v61 = 0;
  *(v61 + 8) = v6;
  *(v61 + 16) = v74;
  *(v61 + 24) = v55;
  *(v61 + 32) = v71;
  *(v61 + 40) = inited;
  *(v61 + 48) = v65;
  *(v61 + 56) = v52;
  sub_2589D4A80(v50, sub_2589D30C4);
  return sub_2589D4A80(v54, sub_2589D30C4);
}

__n128 sub_2589CCE7C@<Q0>(uint64_t a1@<X8>)
{
  if (qword_27F96C240 != -1)
  {
    swift_once();
  }

  *&v12 = sub_258AFFD94();
  *(&v12 + 1) = v2;
  sub_2589BFF58(v12, v2, v3);
  v4 = sub_258B01B44();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  sub_258B024F4();
  sub_258B00C94();
  *a1 = v4;
  *(a1 + 8) = v6;
  *(a1 + 16) = v8 & 1;
  *(a1 + 24) = v10;
  *(a1 + 96) = v16;
  *(a1 + 112) = v17;
  *(a1 + 128) = v18;
  *(a1 + 32) = v12;
  *(a1 + 48) = v13;
  result = v15;
  *(a1 + 64) = v14;
  *(a1 + 80) = v15;
  return result;
}

uint64_t sub_2589CCFDC@<X0>(char **a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v153 = a2;
  v5 = sub_258B01634();
  v150 = *(v5 - 8);
  v151 = v5;
  MEMORY[0x28223BE20](v5);
  v148 = &v121 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v152 = type metadata accessor for StateOfMindTimeline.DaySummary(0);
  v142 = *(v152 - 8);
  MEMORY[0x28223BE20](v152);
  v143 = v7;
  v144 = &v121 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = _s16TimelineDataViewVMa(0);
  v136 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v137 = v9;
  v138 = &v121 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for StateOfMindTimeline.Styles(0);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v135 = &v121 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v155 = &v121 - v13;
  v14 = _s9ViewModelOMa(0);
  v15 = MEMORY[0x28223BE20](v14);
  v149 = &v121 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v145 = &v121 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v123 = &v121 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v122 = &v121 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v25 = &v121 - v24;
  MEMORY[0x28223BE20](v23);
  v27 = &v121 - v26;
  v28 = _s16EntryLimitedViewVMa(0);
  v29 = v28 - 8;
  MEMORY[0x28223BE20](v28);
  v31 = (&v121 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2589D2370(0);
  v121 = v32;
  MEMORY[0x28223BE20](v32);
  v125 = &v121 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2589D2348(0);
  v124 = v34;
  MEMORY[0x28223BE20](v34);
  v127 = &v121 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2589D2320(0);
  v126 = v36;
  MEMORY[0x28223BE20](v36);
  v129 = &v121 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2589D22F8(0);
  v128 = v38;
  MEMORY[0x28223BE20](v38);
  v130 = &v121 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2589D22D0(0);
  v133 = v40;
  MEMORY[0x28223BE20](v40);
  v131 = &v121 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2589D2214(0);
  v140 = v42;
  v134 = *(v42 - 1);
  MEMORY[0x28223BE20](v42);
  v132 = &v121 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2589D2120(0);
  v141 = v44;
  v139 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v157 = &v121 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2589D20EC(0);
  v146 = v46;
  MEMORY[0x28223BE20](v46);
  v147 = &v121 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = v31 + *(v29 + 28);
  v154 = a1;
  sub_2589D36B8(a1, v48, type metadata accessor for StateOfMindTimeline.DaySummary);
  v49 = (v3 + *(v8 + 40));
  v50 = *v49;
  v51 = v49[1];
  *v31 = swift_getKeyPath();
  sub_2589C9FC0(0, &qword_27F96CC08, type metadata accessor for StateOfMindTimeline.Styles, MEMORY[0x277CDF458]);
  swift_storeEnumTagMultiPayload();
  v52 = (v31 + *(v29 + 32));
  *v52 = v50;
  v52[1] = v51;
  v53 = *(v8 + 28);
  sub_2589C9FC0(0, &qword_27F96CC88, _s9ViewModelOMa, MEMORY[0x277CE11F8]);
  v55 = v54;

  v156 = v55;
  MEMORY[0x259C92900](v55);
  sub_2589D3650(v27, v25, _s9ViewModelOMa);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_2589D3788(0);

      v57 = sub_258B029C4();
      (*(*(v57 - 8) + 8))(v25, v57);
      v58 = 1;
    }

    else
    {
      v58 = *(v25 + 1);
    }
  }

  else
  {
    sub_2589D3788(0);

    v59 = sub_258B029C4();
    (*(*(v59 - 8) + 8))(v25, v59);
    v58 = 0;
  }

  v60 = v155;
  v61 = v130;
  v155 = *v154;
  v62 = v58 != v155;
  KeyPath = swift_getKeyPath();
  v64 = swift_allocObject();
  *(v64 + 16) = v62;
  v65 = v125;
  sub_2589D3650(v31, v125, _s16EntryLimitedViewVMa);
  v66 = (v65 + *(v121 + 36));
  *v66 = KeyPath;
  v66[1] = sub_2589D46DC;
  v66[2] = v64;
  v67 = v122;
  MEMORY[0x259C92900](v156);
  v68 = v67;
  v69 = v123;
  sub_2589D3650(v68, v123, _s9ViewModelOMa);
  v130 = v14;
  v70 = swift_getEnumCaseMultiPayload();
  if (v70)
  {
    if (v70 == 1)
    {
      sub_2589D3788(0);

      v71 = sub_258B029C4();
      (*(*(v71 - 8) + 8))(v69, v71);
      v72 = 1;
    }

    else
    {
      v72 = *(v69 + 8);
    }
  }

  else
  {
    sub_2589D3788(0);

    v73 = sub_258B029C4();
    (*(*(v73 - 8) + 8))(v69, v73);
    v72 = 0;
  }

  v74 = v154;
  v154 = v53;
  if (v72 == v155)
  {
    sub_258AC1060(v60);
    sub_2589D4A80(v60, type metadata accessor for StateOfMindTimeline.Styles);
    sub_258B01FF4();
    v75 = sub_258B02024();
  }

  else
  {
    v75 = sub_258B02004();
  }

  sub_258AC1060(v60);
  sub_2589D4A80(v60, type metadata accessor for StateOfMindTimeline.Styles);
  v76 = v127;
  sub_2589D3650(v65, v127, sub_2589D2370);
  v77 = (v76 + *(v124 + 36));
  *v77 = v75;
  v77[1] = 0x4028000000000000;
  v77[2] = 0;
  v77[3] = 0;
  sub_2589D0E34(v74);
  sub_2589D1080();
  v79 = v78;
  sub_258AC1060(v60);
  sub_2589D4A80(v60, type metadata accessor for StateOfMindTimeline.Styles);
  v80 = v79 * -0.2 + 1.0;
  sub_258B025E4();
  v82 = v81;
  v84 = v83;
  v85 = v129;
  sub_2589D3650(v76, v129, sub_2589D2348);
  v86 = v85 + *(v126 + 36);
  *v86 = v80;
  *(v86 + 8) = v80;
  *(v86 + 16) = v82;
  *(v86 + 24) = v84;
  v87 = sub_2589CE158(v74);
  v89 = v88;
  sub_2589D3650(v85, v61, sub_2589D2320);
  v90 = (v61 + *(v128 + 36));
  *v90 = v87;
  *(v90 + 1) = v89;
  sub_2589D0E34(v74);
  sub_2589D1080();
  v92 = v91;
  sub_258AC1060(v60);
  sub_2589D4A80(v60, type metadata accessor for StateOfMindTimeline.Styles);
  v93 = v92 * -0.0 + 1.0;
  v94 = v135;
  sub_258AC1060(v135);
  sub_2589D4A80(v94, type metadata accessor for StateOfMindTimeline.Styles);
  if (v93 <= 0.1)
  {
    v93 = 0.1;
  }

  v95 = v131;
  sub_2589D3650(v61, v131, sub_2589D22F8);
  v96 = v133;
  *(v95 + v133[9]) = v93;
  v97 = v138;
  sub_2589D36B8(v3, v138, _s16TimelineDataViewVMa);
  v98 = v144;
  sub_2589D36B8(v74, v144, type metadata accessor for StateOfMindTimeline.DaySummary);
  v99 = (*(v136 + 80) + 16) & ~*(v136 + 80);
  v100 = (v137 + *(v142 + 80) + v99) & ~*(v142 + 80);
  v101 = swift_allocObject();
  sub_2589D3650(v97, v101 + v99, _s16TimelineDataViewVMa);
  sub_2589D3650(v98, v101 + v100, type metadata accessor for StateOfMindTimeline.DaySummary);
  v102 = sub_2589D28BC(&qword_27F96CDD8, sub_2589D22D0, sub_2589D23FC, MEMORY[0x277CDF900]);
  v103 = v132;
  sub_258B01C34();

  sub_2589D4A80(v95, sub_2589D22D0);
  v104 = v148;
  sub_258B01624();
  v158 = v96;
  v159 = v102;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v106 = v140;
  sub_258B01D84();
  (*(v150 + 8))(v104, v151);
  (*(v134 + 8))(v103, v106);
  v107 = v145;
  MEMORY[0x259C92900](v156);
  v108 = v149;
  sub_2589D3650(v107, v149, _s9ViewModelOMa);
  v109 = swift_getEnumCaseMultiPayload();
  if (v109)
  {
    v110 = v147;
    if (v109 == 1)
    {
      sub_2589D3788(0);

      v111 = sub_258B029C4();
      (*(*(v111 - 8) + 8))(v108, v111);
    }

    else
    {
    }
  }

  else
  {
    sub_2589D3788(0);

    v112 = sub_258B029C4();
    (*(*(v112 - 8) + 8))(v108, v112);
    v110 = v147;
  }

  v158 = v106;
  v159 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v113 = v141;
  v114 = v157;
  sub_258B01D64();
  (*(v139 + 8))(v114, v113);
  v115 = *(v74 + *(v152 + 36));
  sub_258B003E4();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v115 = sub_258A74828(0, *(v115 + 2) + 1, 1, v115);
  }

  v117 = *(v115 + 2);
  v116 = *(v115 + 3);
  if (v117 >= v116 >> 1)
  {
    v115 = sub_258A74828((v116 > 1), v117 + 1, 1, v115);
  }

  *(v115 + 2) = v117 + 1;
  v118 = &v115[16 * v117];
  *(v118 + 4) = 1685217603;
  *(v118 + 5) = 0xE400000000000000;
  v158 = &unk_2869D4670;
  v119 = sub_258B003E4();
  sub_2589FC8C8(v119);
  sub_2589D384C(0, &qword_280DF8948, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
  sub_2589C6824();
  sub_258B02A34();

  sub_2589D2CD0();
  sub_258B01DD4();

  return sub_2589D47C0(v110, sub_2589D20EC);
}

double sub_2589CE158(uint64_t *a1)
{
  v2 = v1;
  v4 = type metadata accessor for StateOfMindTimeline.Styles(0);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v20 - v8;
  v10 = sub_2589D0E34(a1);
  sub_2589D1080();
  v12 = v11;
  sub_2589D1310(v10);
  v14 = v13;
  v15 = _s16TimelineDataViewVMa(0);
  sub_258AC1060(v9);
  sub_2589D4A80(v9, type metadata accessor for StateOfMindTimeline.Styles);
  v16 = *(v2 + *(v15 + 32));
  v17 = sub_2589CA4A0();
  v18 = v16 - (v17 + v17);
  sub_258AC1060(v7);
  sub_2589D4A80(v7, type metadata accessor for StateOfMindTimeline.Styles);
  if (v18 > 373.0)
  {
    v18 = 373.0;
  }

  sub_258AC1060(v9);
  sub_2589D4A80(v9, type metadata accessor for StateOfMindTimeline.Styles);
  return v12 * v14 * 0.2 * (v18 + 10.0);
}

uint64_t sub_2589CE2E8(uint64_t a1, uint64_t *a2)
{
  v3 = _s9ViewModelOMa(0);
  MEMORY[0x28223BE20](v3 - 8);
  _s16TimelineDataViewVMa(0);
  sub_2589C9FC0(0, &qword_27F96CC88, _s9ViewModelOMa, MEMORY[0x277CE11F8]);
  MEMORY[0x259C92900]();
  sub_258AB2FA4(a2);
  return sub_258B02314();
}

uint64_t sub_2589CE3D4@<X0>(uint64_t a1@<X8>)
{
  v107 = a1;
  v2 = _s16TimelineDataViewVMa(0);
  v84.i64[0] = *(v2 - 1);
  v3 = *(v84.i64[0] + 64);
  MEMORY[0x28223BE20](v2);
  v85 = (&v80 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2589D1FF4(0);
  v106 = v4;
  v89 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v88 = &v80 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2589C9FC0(0, &qword_27F96CD60, sub_2589D1F58, MEMORY[0x277CE14B8]);
  v100 = v6;
  MEMORY[0x28223BE20](v6);
  v95 = &v80 - v7;
  v87 = _s15EntryNoDataViewVMa(0);
  v8 = MEMORY[0x28223BE20](v87);
  v92 = &v80 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v93 = (&v80 - v10);
  v11 = type metadata accessor for StateOfMindTimeline.Styles(0);
  MEMORY[0x28223BE20](v11 - 8);
  v86 = &v80 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2589D1FCC(0);
  v96 = v13;
  v14 = MEMORY[0x28223BE20](v13);
  v90 = &v80 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v91 = &v80 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v94 = (&v80 - v19);
  MEMORY[0x28223BE20](v18);
  v102 = (&v80 - v20);
  v21 = MEMORY[0x277CE0330];
  sub_2589D1E2C(0, &qword_27F96CFB8, MEMORY[0x277CE0330]);
  v104 = v22;
  MEMORY[0x28223BE20](v22);
  v105 = &v80 - v23;
  sub_2589D1EB8(0, &qword_27F96CFC0, v21);
  v97 = v24;
  MEMORY[0x28223BE20](v24);
  v98 = &v80 - v25;
  sub_2589D1EB8(0, &qword_27F96CD58, MEMORY[0x277CE0338]);
  v103 = v26;
  MEMORY[0x28223BE20](v26);
  v99 = &v80 - v27;
  v108 = _s20EntryPlaceholderViewVMa(0);
  MEMORY[0x28223BE20](v108);
  v29 = (&v80 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  v30 = _s9ViewModelOMa(0);
  v31 = MEMORY[0x28223BE20](v30);
  v33 = &v80 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v35 = &v80 - v34;
  v36 = v1;
  sub_2589C9FC0(0, &qword_27F96CC88, _s9ViewModelOMa, MEMORY[0x277CE11F8]);
  v38 = v37;
  MEMORY[0x259C92900]();
  v101 = v35;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      KeyPath = swift_getKeyPath();
      v41 = v102;
      *v102 = KeyPath;
      v42 = MEMORY[0x277CDF458];
      sub_2589C9FC0(0, &qword_27F96CC08, type metadata accessor for StateOfMindTimeline.Styles, MEMORY[0x277CDF458]);
      v83 = v43;
      swift_storeEnumTagMultiPayload();
      *(v41 + *(v108 + 20)) = 0;
      v88 = v2[6];
      v44 = v86;
      sub_258AC1060(v86);
      v85 = type metadata accessor for StateOfMindTimeline.Styles;
      sub_2589D4A80(v44, type metadata accessor for StateOfMindTimeline.Styles);
      sub_258B02604();
      v45 = *(v96 + 36);
      v84 = vdupq_n_s64(0x3FE999999999999AuLL);
      v46 = (v41 + v45);
      *v46 = v84;
      v46[1].i64[0] = v47;
      v46[1].i64[1] = v48;
      v49 = (v36 + v2[9]);
      v50 = v49[1];
      v82 = *v49;
      v51 = (v36 + v2[11]);
      v52 = v51[1];
      v81 = *v51;

      MEMORY[0x259C92900](v38);
      v89 = _s9ViewModelOMa;
      sub_2589D4A80(v33, _s9ViewModelOMa);
      v53 = swift_getKeyPath();
      v54 = v93;
      *v93 = v53;
      sub_2589C9FC0(0, &qword_27F96C908, MEMORY[0x277CDF3E0], v42);
      swift_storeEnumTagMultiPayload();
      v55 = swift_getKeyPath();
      v56 = v87;
      *(v54 + *(v87 + 24)) = v55;
      sub_2589C9FC0(0, &qword_27F96C968, MEMORY[0x277CDD848], v42);
      swift_storeEnumTagMultiPayload();
      v57 = v56[5];
      *(v54 + v57) = swift_getKeyPath();
      swift_storeEnumTagMultiPayload();
      v58 = (v54 + v56[7]);
      *v58 = v82;
      v58[1] = v50;
      v59 = (v54 + v56[8]);
      *v59 = v81;
      v59[1] = v52;
      *(v54 + v56[9]) = &unk_2869D4B10;
      v60 = swift_getKeyPath();
      v61 = v94;
      *v94 = v60;
      swift_storeEnumTagMultiPayload();
      *(v61 + *(v108 + 20)) = 0;
      sub_258AC1060(v44);
      sub_2589D4A80(v44, v85);
      sub_258B025F4();
      v62 = (v61 + *(v96 + 36));
      *v62 = v84;
      v62[1].i64[0] = v63;
      v62[1].i64[1] = v64;
      v65 = v91;
      sub_2589D36B8(v102, v91, sub_2589D1FCC);
      v66 = v92;
      sub_2589D36B8(v54, v92, _s15EntryNoDataViewVMa);
      v67 = v90;
      sub_2589D36B8(v61, v90, sub_2589D1FCC);
      v68 = v95;
      sub_2589D36B8(v65, v95, sub_2589D1FCC);
      sub_2589D1F58(0);
      v70 = v69;
      sub_2589D36B8(v66, v68 + *(v69 + 48), _s15EntryNoDataViewVMa);
      sub_2589D36B8(v67, v68 + *(v70 + 64), sub_2589D1FCC);
      sub_2589D4A80(v67, sub_2589D1FCC);
      sub_2589D4A80(v66, _s15EntryNoDataViewVMa);
      sub_2589D4A80(v65, sub_2589D1FCC);
      sub_2589D447C(v68, v98, &qword_27F96CD60, sub_2589D1F58, MEMORY[0x277CE14B8]);
      swift_storeEnumTagMultiPayload();
      sub_2589D4AE0(&qword_27F96CE88, _s20EntryPlaceholderViewVMa, &unk_258B33A68);
      sub_2589D4BDC(&qword_27F96CE90, &qword_27F96CD60, sub_2589D1F58);
      v71 = v99;
      sub_258B012A4();
      sub_2589D44EC(v71, v105);
      swift_storeEnumTagMultiPayload();
      sub_2589D2A88();
      sub_2589D2B78();
      sub_258B012A4();
      sub_2589D456C(v71);
      sub_2589D45E4(v68);
      sub_2589D4A80(v61, sub_2589D1FCC);
      sub_2589D4A80(v54, _s15EntryNoDataViewVMa);
      sub_2589D4A80(v102, sub_2589D1FCC);
      return sub_2589D4A80(v101, v89);
    }

    else
    {
      v109 = *v101;
      v74 = v85;
      sub_2589D36B8(v1, v85, _s16TimelineDataViewVMa);
      v75 = (*(v84.i64[0] + 80) + 16) & ~*(v84.i64[0] + 80);
      v76 = swift_allocObject();
      sub_2589D3650(v74, v76 + v75, _s16TimelineDataViewVMa);
      sub_2589C9FC0(0, &qword_27F96CD80, type metadata accessor for StateOfMindTimeline.DaySummary, MEMORY[0x277D83940]);
      sub_2589D33D4(0, &qword_27F96CD88, sub_2589D20EC, MEMORY[0x277CDE470]);
      sub_2589D25DC();
      sub_2589D2BF0();
      sub_2589D4AE0(&qword_27F96CFC8, type metadata accessor for StateOfMindTimeline.DaySummary, &protocol conformance descriptor for StateOfMindTimeline.DaySummary);
      v77 = v88;
      sub_258B023C4();
      v78 = v89;
      v79 = v106;
      (*(v89 + 2))(v105, v77, v106);
      swift_storeEnumTagMultiPayload();
      sub_2589D2A88();
      sub_2589D2B78();
      sub_258B012A4();
      return (*(v78 + 1))(v77, v79);
    }
  }

  else
  {
    *v29 = swift_getKeyPath();
    sub_2589C9FC0(0, &qword_27F96CC08, type metadata accessor for StateOfMindTimeline.Styles, MEMORY[0x277CDF458]);
    swift_storeEnumTagMultiPayload();
    *(v29 + *(v108 + 20)) = 1;
    sub_2589D36B8(v29, v98, _s20EntryPlaceholderViewVMa);
    swift_storeEnumTagMultiPayload();
    sub_2589D4AE0(&qword_27F96CE88, _s20EntryPlaceholderViewVMa, &unk_258B33A68);
    sub_2589D4BDC(&qword_27F96CE90, &qword_27F96CD60, sub_2589D1F58);
    v73 = v99;
    sub_258B012A4();
    sub_2589D44EC(v73, v105);
    swift_storeEnumTagMultiPayload();
    sub_2589D2A88();
    sub_2589D2B78();
    sub_258B012A4();
    sub_2589D456C(v73);
    sub_2589D4A80(v29, _s20EntryPlaceholderViewVMa);
    return sub_2589D4A80(v101, _s9ViewModelOMa);
  }
}

uint64_t sub_2589CF21C@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v122 = a2;
  sub_2589D2ED0(0);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v123 = v103 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v121 = v103 - v6;
  v110 = _s9ViewModelOMa(0);
  v7 = MEMORY[0x28223BE20](v110);
  v120 = v103 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v116 = v103 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v108 = v103 - v12;
  MEMORY[0x28223BE20](v11);
  v106 = v103 - v13;
  v14 = sub_258B007E4();
  MEMORY[0x28223BE20](v14 - 8);
  v103[1] = v103 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2589D2664(0);
  v104 = v16;
  MEMORY[0x28223BE20](v16);
  v18 = v103 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2589D1D98(0);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = v103 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = _s14EntryViewStackVMa(0);
  v23 = MEMORY[0x28223BE20](v22 - 8);
  v25 = v103 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v27 = (v103 - v26);
  sub_2589D1CA8(0);
  v103[0] = v28;
  MEMORY[0x28223BE20](v28);
  v30 = v103 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2589D1B9C(0);
  v109 = v31;
  v107 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v124 = v103 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2589D1B7C(0);
  v105 = v33;
  MEMORY[0x28223BE20](v33);
  v125 = v103 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2589D1AC4(0);
  v111 = v35;
  MEMORY[0x28223BE20](v35);
  v114 = v103 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2589D1A90(0);
  v113 = v37;
  v38 = MEMORY[0x28223BE20](v37);
  v119 = v103 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = MEMORY[0x28223BE20](v38);
  v112 = v103 - v41;
  MEMORY[0x28223BE20](v40);
  v118 = v103 - v42;
  sub_2589D17D0(0);
  v44 = v43 - 8;
  MEMORY[0x28223BE20](v43);
  v46 = v103 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2589D17A8(0);
  v48 = v47 - 8;
  v49 = MEMORY[0x28223BE20](v47);
  v117 = v103 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v49);
  v52 = v103 - v51;
  *v46 = sub_258B01004();
  *(v46 + 1) = 0;
  v46[16] = 0;
  sub_2589D35D4(0, &qword_27F96CF70, &qword_27F96CCD8, sub_2589D18AC);
  sub_2589CAC60(a1, &v46[*(v53 + 44)]);
  v54 = sub_258B01884();
  v55 = &v46[*(v44 + 44)];
  *v55 = v54;
  *(v55 + 8) = 0u;
  *(v55 + 24) = 0u;
  v55[40] = 1;
  sub_258B024F4();
  sub_258B00C94();
  sub_2589D3650(v46, v52, sub_2589D17D0);
  v56 = *(v48 + 44);
  v115 = v52;
  v57 = &v52[v56];
  v58 = v134;
  *(v57 + 4) = v133;
  *(v57 + 5) = v58;
  *(v57 + 6) = v135;
  v59 = v130;
  *v57 = v129;
  *(v57 + 1) = v59;
  v60 = v132;
  *(v57 + 2) = v131;
  *(v57 + 3) = v60;
  *v27 = swift_getKeyPath();
  sub_2589C9FC0(0, &qword_27F96CC08, type metadata accessor for StateOfMindTimeline.Styles, MEMORY[0x277CDF458]);
  swift_storeEnumTagMultiPayload();
  sub_2589D3650(v27, v25, _s14EntryViewStackVMa);
  sub_2589D36B8(v25, v21, _s14EntryViewStackVMa);
  sub_2589D36B8(v21, v30, sub_2589D1D98);
  sub_2589D1CD0(0);
  sub_2589CE3D4(&v30[*(v61 + 44)]);
  sub_2589D4A80(v21, sub_2589D1D98);
  sub_2589D4A80(v25, _s14EntryViewStackVMa);
  v62 = sub_2589CA888();
  v63 = &v30[*(v103[0] + 36)];
  *v63 = v62;
  *(v63 + 1) = 0;
  sub_258B007D4();
  sub_258B007F4();
  sub_2589D0064(&v18[*(v104 + 52)]);
  sub_258B00734();
  sub_2589D28BC(&qword_27F96CE60, sub_2589D1CA8, sub_2589D293C, MEMORY[0x277CDF748]);
  sub_2589D4AE0(&qword_27F96CEB0, sub_2589D2664, MEMORY[0x277CDDA40]);
  sub_258B01EB4();
  sub_2589D4A80(v18, sub_2589D2664);
  sub_2589D47C0(v30, sub_2589D1CA8);
  v64 = _s16TimelineDataViewVMa(0);
  sub_2589C9FC0(0, &qword_27F96CC88, _s9ViewModelOMa, MEMORY[0x277CE11F8]);
  v66 = v65;
  v67 = a1;
  v68 = v106;
  MEMORY[0x259C92900]();
  v69 = v108;
  sub_2589D3650(v68, v108, _s9ViewModelOMa);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v104 = v64;
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_2589D3788(0);

      v71 = sub_258B029C4();
      (*(*(v71 - 8) + 8))(v69, v71);
      v72 = 1;
    }

    else
    {
      sub_2589D4A80(v69, _s9ViewModelOMa);
      v72 = 2;
    }
  }

  else
  {
    sub_2589D3788(0);

    v73 = sub_258B029C4();
    (*(*(v73 - 8) + 8))(v69, v73);
    v72 = 0;
  }

  v74 = v123;
  v75 = v122;
  v76 = v121;
  v77 = v120;
  v78 = v125;
  (*(v107 + 32))(v125, v124, v109);
  v79 = (v78 + *(v105 + 36));
  *v79 = 0;
  v79[1] = v72;
  v80 = MEMORY[0x259C92B20](0.5, 1.0, 0.0);
  v81 = v116;
  MEMORY[0x259C92900](v66);
  sub_2589D3650(v81, v77, _s9ViewModelOMa);
  v82 = swift_getEnumCaseMultiPayload();
  if (v82)
  {
    if (v82 == 1)
    {
      sub_2589D3788(0);

      v83 = sub_258B029C4();
      (*(*(v83 - 8) + 8))(v77, v83);
      v84 = 1;
    }

    else
    {
      v84 = *(v77 + 8);
    }
  }

  else
  {
    sub_2589D3788(0);

    v85 = sub_258B029C4();
    (*(*(v85 - 8) + 8))(v77, v85);
    v84 = 0;
  }

  v86 = v114;
  v87 = sub_2589D3720(v125, v114, sub_2589D1B7C);
  v88 = (v86 + *(v111 + 36));
  *v88 = v80;
  v88[1] = v84;
  v89 = MEMORY[0x259C92B20](v87, 0.5, 1.0, 0.0);
  v90 = &v67[*(v104 + 52)];
  v91 = *v90;
  v92 = *(v90 + 1);
  v127 = v91;
  v128 = v92;
  sub_2589D384C(0, &qword_27F96CCA0, MEMORY[0x277D85048], MEMORY[0x277CE10B8]);
  sub_258B02124();
  v93 = v126;
  v94 = v112;
  sub_2589D3720(v86, v112, sub_2589D1AC4);
  v95 = (v94 + *(v113 + 36));
  *v95 = v89;
  v95[1] = v93;
  v96 = v118;
  sub_2589D3720(v94, v118, sub_2589D1A90);
  sub_2589CBF38(v76);
  v97 = v115;
  v98 = v117;
  sub_2589D36B8(v115, v117, sub_2589D17A8);
  v99 = v119;
  sub_2589A4A54(v96, v119);
  sub_2589D36B8(v76, v74, sub_2589D2ED0);
  sub_2589D36B8(v98, v75, sub_2589D17A8);
  sub_2589D1720(0);
  v101 = v100;
  sub_2589A4A54(v99, v75 + *(v100 + 48));
  sub_2589D36B8(v74, v75 + *(v101 + 64), sub_2589D2ED0);
  sub_2589D4A80(v76, sub_2589D2ED0);
  sub_2589D47C0(v96, sub_2589D1A90);
  sub_2589D4A80(v97, sub_2589D17A8);
  sub_2589D4A80(v74, sub_2589D2ED0);
  sub_2589D47C0(v99, sub_2589D1A90);
  return sub_2589D4A80(v98, sub_2589D17A8);
}

uint64_t sub_2589D0064@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v24 = a1;
  v3 = _s16TimelineDataViewVMa(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v20[0] = v5;
  v6 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_258B012E4();
  MEMORY[0x28223BE20](v7);
  v8 = sub_258B00704();
  v21 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2589D27E4(0);
  v12 = *(v11 - 8);
  v22 = v11;
  v23 = v12;
  MEMORY[0x28223BE20](v11);
  v14 = v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258B01514();
  sub_258B006D4();
  sub_2589D36B8(v2, v6, _s16TimelineDataViewVMa);
  v15 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v16 = swift_allocObject();
  sub_2589D3650(v6, v16 + v15, _s16TimelineDataViewVMa);
  sub_2589D4AE0(&qword_27F96CE38, MEMORY[0x277CDD730], MEMORY[0x277CDD728]);
  sub_2589D4AE0(&qword_27F96CE40, MEMORY[0x277CDD708], MEMORY[0x277CDD710]);
  sub_258B023F4();

  (*(v21 + 8))(v10, v8);
  sub_2589D36B8(v20[1], v6, _s16TimelineDataViewVMa);
  v17 = swift_allocObject();
  sub_2589D3650(v6, v17 + v15, _s16TimelineDataViewVMa);
  sub_2589D4AE0(&qword_27F96CE48, sub_2589D27E4, MEMORY[0x277CDFB18]);
  v18 = v22;
  sub_258B023E4();

  return (*(v23 + 8))(v14, v18);
}

void sub_2589D0470(uint64_t a1, uint64_t a2)
{
  v55 = a1;
  v3 = sub_258B00AC4();
  v57 = *(v3 - 8);
  v58 = v3;
  MEMORY[0x28223BE20](v3);
  v56 = v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = _s9ViewModelOMa(0);
  v5 = MEMORY[0x28223BE20](v54);
  v7 = v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = v52 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = v52 - v11;
  v13 = type metadata accessor for StateOfMindTimeline.Styles(0);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v16 = v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = v52 - v17;
  v19 = _s16TimelineDataViewVMa(0);
  v20 = *(a2 + *(v19 + 32));
  v21 = sub_2589CA4A0();
  v22 = v20 - (v21 + v21);
  v23 = *(v19 + 24);
  sub_258AC1060(v18);
  sub_2589D4A80(v18, type metadata accessor for StateOfMindTimeline.Styles);
  if (v22 > 373.0)
  {
    v22 = 373.0;
  }

  v52[1] = v23;
  sub_258AC1060(v16);
  sub_2589D4A80(v16, type metadata accessor for StateOfMindTimeline.Styles);
  v53 = v19;
  sub_2589C9FC0(0, &qword_27F96CC88, _s9ViewModelOMa, MEMORY[0x277CE11F8]);
  v25 = v24;
  MEMORY[0x259C92900]();
  sub_2589D3650(v12, v10, _s9ViewModelOMa);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_2589D3788(0);

      v27 = sub_258B029C4();
      (*(*(v27 - 8) + 8))(v10, v27);
      v28 = 1;
    }

    else
    {
      v28 = *(v10 + 1);
    }
  }

  else
  {
    sub_2589D3788(0);

    v29 = sub_258B029C4();
    (*(*(v29 - 8) + 8))(v10, v29);
    v28 = 0;
  }

  v30 = v58;
  v31 = v22 + 10.0;
  MEMORY[0x259C92900](v25);
  v32 = sub_258AB3128();
  sub_2589D4A80(v7, _s9ViewModelOMa);
  v33 = v31;
  if (v28 == v32)
  {
    sub_258AC1060(v16);
    sub_2589D4A80(v16, type metadata accessor for StateOfMindTimeline.Styles);
    v33 = 20.0;
  }

  MEMORY[0x259C92900](v25);
  sub_2589D4A80(v7, _s9ViewModelOMa);
  if (!v28)
  {
    sub_258AC1060(v16);
    sub_2589D4A80(v16, type metadata accessor for StateOfMindTimeline.Styles);
    v31 = 20.0;
  }

  v34 = v56;
  sub_2589CA274(v56);
  v35 = v57;
  if ((*(v57 + 88))(v34, v30) == *MEMORY[0x277CDFA90])
  {
    v36 = sub_258B006E4();
    v61 = v39;
    if (v33 >= -v31)
    {
      v59 = -v31;
      v60 = v33;
      sub_2589D3AB0(v36, v37, v38);
      v40 = MEMORY[0x277D85048];
      sub_258B02A44();
      v41 = (a2 + *(v53 + 52));
      v42 = *v41;
      v43 = v41[1];
      v59 = v42;
      v60 = v43;
      v62 = -v62;
      sub_2589D384C(0, &qword_27F96CCA0, v40, MEMORY[0x277CE10B8]);
      sub_258B02134();
      return;
    }

    __break(1u);
  }

  else
  {
    v44 = sub_258B006E4();
    v61 = v47;
    if (v31 >= -v33)
    {
      v59 = -v33;
      v60 = v31;
      sub_2589D3AB0(v44, v45, v46);
      v48 = MEMORY[0x277D85048];
      sub_258B02A44();
      v49 = (a2 + *(v53 + 52));
      v50 = *v49;
      v51 = v49[1];
      v59 = v50;
      v60 = v51;
      v61 = v62;
      sub_2589D384C(0, &qword_27F96CCA0, v48, MEMORY[0x277CE10B8]);
      sub_258B02134();
      (*(v35 + 8))(v34, v30);
      return;
    }
  }

  __break(1u);
}

uint64_t sub_2589D0A74(uint64_t a1, uint64_t a2)
{
  v30[2] = a1;
  v3 = _s9ViewModelOMa(0);
  MEMORY[0x28223BE20](v3 - 8);
  v30[1] = v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_258B00AC4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for StateOfMindTimeline.Styles(0);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v12 = v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = v30 - v13;
  v15 = _s16TimelineDataViewVMa(0);
  sub_258AC1060(v14);
  sub_2589D4A80(v14, type metadata accessor for StateOfMindTimeline.Styles);
  v16 = *(a2 + *(v15 + 32));
  v17 = sub_2589CA4A0();
  v18 = v16 - (v17 + v17);
  sub_258AC1060(v12);
  sub_2589D4A80(v12, type metadata accessor for StateOfMindTimeline.Styles);
  v19 = 373.0;
  if (v18 <= 373.0)
  {
    v19 = v18;
  }

  v20 = v19 * 0.1;
  if (v20 <= 35.0)
  {
    v21 = v20;
  }

  else
  {
    v21 = 35.0;
  }

  sub_2589CA274(v8);
  v22 = (*(v6 + 88))(v8, v5);
  v23 = *MEMORY[0x277CDFA90];
  sub_258B006E4();
  v25 = v24;
  if (v22 == v23)
  {
    v25 = -v24;
  }

  else
  {
    (*(v6 + 8))(v8, v5);
  }

  if (v25 < -v21)
  {
    sub_2589C9FC0(0, &qword_27F96CC88, _s9ViewModelOMa, MEMORY[0x277CE11F8]);
    MEMORY[0x259C92900]();
    sub_258AB3268();
LABEL_13:
    sub_258B02314();
    goto LABEL_14;
  }

  if (v21 <= v25)
  {
    sub_2589C9FC0(0, &qword_27F96CC88, _s9ViewModelOMa, MEMORY[0x277CE11F8]);
    MEMORY[0x259C92900]();
    sub_258AB33E4();
    goto LABEL_13;
  }

LABEL_14:
  v26 = (a2 + *(v15 + 52));
  v27 = *v26;
  v28 = v26[1];
  v30[4] = v27;
  v30[5] = v28;
  v30[3] = 0;
  sub_2589D384C(0, &qword_27F96CCA0, MEMORY[0x277D85048], MEMORY[0x277CE10B8]);
  return sub_258B02134();
}

double sub_2589D0E34(uint64_t *a1)
{
  v3 = type metadata accessor for StateOfMindTimeline.Styles(0);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v30 - v8;
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v30 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v30 - v13;
  v15 = sub_2589CA4A0();
  v16 = *a1;
  v17 = *(v1 + *(_s16TimelineDataViewVMa(0) + 32));
  v18 = sub_2589CA4A0();
  v19 = v17 - (v18 + v18);
  sub_258AC1060(v14);
  sub_2589D4A80(v14, type metadata accessor for StateOfMindTimeline.Styles);
  if (v19 <= 373.0)
  {
    v20 = v19;
  }

  else
  {
    v20 = 373.0;
  }

  sub_258AC1060(v12);
  sub_2589D4A80(v12, type metadata accessor for StateOfMindTimeline.Styles);
  v21 = sub_2589CA4A0();
  v22 = sub_2589CA4A0();
  v23 = v17 - (v22 + v22);
  sub_258AC1060(v9);
  sub_2589D4A80(v9, type metadata accessor for StateOfMindTimeline.Styles);
  if (v23 <= 373.0)
  {
    v24 = v23;
  }

  else
  {
    v24 = 373.0;
  }

  v25 = v15 - (v20 + 10.0) * v16 + (v17 - (v21 + v21) - v24) * 0.5;
  v26 = sub_2589CA888();
  v27 = sub_2589CA4A0();
  v28 = v17 - (v27 + v27);
  sub_258AC1060(v6);
  sub_2589D4A80(v6, type metadata accessor for StateOfMindTimeline.Styles);
  if (v28 > 373.0)
  {
    v28 = 373.0;
  }

  sub_258AC1060(v12);
  sub_2589D4A80(v12, type metadata accessor for StateOfMindTimeline.Styles);
  return (v25 - v26) / (v28 + 10.0);
}

uint64_t sub_2589D1080()
{
  v1 = sub_258B00F84();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x277CDF458];
  sub_2589C9FC0(0, &qword_27F96CC08, type metadata accessor for StateOfMindTimeline.Styles, MEMORY[0x277CDF458]);
  MEMORY[0x28223BE20](v6);
  v8 = &v15 - v7;
  v9 = type metadata accessor for StateOfMindTimeline.Styles(0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = _s16TimelineDataViewVMa(0);
  sub_2589D447C(v0 + *(v12 + 24), v8, &qword_27F96CC08, type metadata accessor for StateOfMindTimeline.Styles, v5);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2589D3650(v8, v11, type metadata accessor for StateOfMindTimeline.Styles);
  }

  else
  {
    sub_258B02E94();
    v13 = sub_258B01824();
    sub_258B00354();

    sub_258B00F74();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v1);
  }

  return sub_2589D4A80(v11, type metadata accessor for StateOfMindTimeline.Styles);
}

uint64_t sub_2589D1310(double a1)
{
  v21 = sub_258B00F84();
  v3 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v5 = v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x277CDF458];
  sub_2589C9FC0(0, &qword_27F96CC08, type metadata accessor for StateOfMindTimeline.Styles, MEMORY[0x277CDF458]);
  MEMORY[0x28223BE20](v7);
  v9 = v20 - v8;
  v10 = type metadata accessor for StateOfMindTimeline.Styles(0);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v13 = v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = v20 - v14;
  v16 = fabs(a1);
  v17 = *(_s16TimelineDataViewVMa(0) + 24);
  v22 = v1;
  v20[1] = v17;
  sub_2589D447C(v1 + v17, v9, &qword_27F96CC08, type metadata accessor for StateOfMindTimeline.Styles, v6);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2589D3650(v9, v15, type metadata accessor for StateOfMindTimeline.Styles);
  }

  else
  {
    sub_258B02E94();
    v18 = sub_258B01824();
    sub_258B00354();

    sub_258B00F74();
    swift_getAtKeyPath();

    (*(v3 + 8))(v5, v21);
  }

  result = sub_2589D4A80(v15, type metadata accessor for StateOfMindTimeline.Styles);
  if (v16 > 1.0)
  {
    sub_258AC1060(v13);
    sub_2589D4A80(v13, type metadata accessor for StateOfMindTimeline.Styles);
    sub_258AC1060(v13);
    return sub_2589D4A80(v13, type metadata accessor for StateOfMindTimeline.Styles);
  }

  return result;
}

uint64_t sub_2589D1640@<X0>(uint64_t a2@<X8>)
{
  *a2 = sub_258B01194();
  *(a2 + 8) = 0x402E000000000000;
  *(a2 + 16) = 0;
  sub_2589D1688(0);
  return sub_2589CF21C(v2, a2 + *(v4 + 44));
}

void sub_2589D1688(uint64_t a1)
{
  if (!qword_27F96CCA8)
  {
    sub_2589C9FC0(255, &qword_27F96CCB0, sub_2589D1720, MEMORY[0x277CE14B8]);
    v1 = sub_258B00974();
    if (!v2)
    {
      atomic_store(v1, &qword_27F96CCA8);
    }
  }
}

void sub_2589D1720(uint64_t a1)
{
  if (!qword_27F96CCB8)
  {
    sub_2589D17A8(255);
    sub_2589D1A90(255);
    sub_2589D2ED0(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_27F96CCB8);
    }
  }
}

void sub_2589D17F8(uint64_t a1)
{
  if (!qword_27F96CCD0)
  {
    sub_2589C9FC0(255, &qword_27F96CCD8, sub_2589D18AC, MEMORY[0x277CE14B8]);
    sub_2589D4BDC(&qword_27F96CD08, &qword_27F96CCD8, sub_2589D18AC);
    v1 = sub_258B021D4();
    if (!v2)
    {
      atomic_store(v1, &qword_27F96CCD0);
    }
  }
}

void sub_2589D18AC(uint64_t a1)
{
  if (!qword_27F96CCE0)
  {
    sub_2589D3248(255, &qword_27F96C7B8, MEMORY[0x277CE1180], MEMORY[0x277CDF688], MEMORY[0x277CDFAB8]);
    sub_2589D1970(255);
    sub_2589D19A4(255);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_27F96CCE0);
    }
  }
}

void sub_2589D19D8(uint64_t a1)
{
  if (!qword_27F96CCF0)
  {
    sub_2589D3154(255, &qword_27F96CCF8, _s9LogButtonVMa, MEMORY[0x277CDF910]);
    sub_2589D3248(255, &qword_27F96CD00, MEMORY[0x277D839B0], MEMORY[0x277D839C8], MEMORY[0x277CE0190]);
    v1 = sub_258B00B04();
    if (!v2)
    {
      atomic_store(v1, &qword_27F96CCF0);
    }
  }
}

void sub_2589D1AE4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_2589D3248(255, &qword_27F96CEB8, MEMORY[0x277D83B88], MEMORY[0x277D83BA8], MEMORY[0x277CE0190]);
    v4 = sub_258B00B04();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_2589D1B9C(uint64_t a1)
{
  if (!qword_27F96CD28)
  {
    sub_2589D1CA8(255);
    sub_2589D2664(255);
    sub_2589D28BC(&qword_27F96CE60, sub_2589D1CA8, sub_2589D293C, MEMORY[0x277CDF748]);
    sub_2589D4AE0(&qword_27F96CEB0, sub_2589D2664, MEMORY[0x277CDDA40]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F96CD28);
    }
  }
}

void sub_2589D1CD0(uint64_t a1)
{
  if (!qword_27F96CD38)
  {
    sub_2589D1D98(255);
    sub_2589D1E2C(255, &qword_27F96CD50, MEMORY[0x277CE0338]);
    sub_2589D4AE0(&qword_27F96CE18, sub_2589D1D98, MEMORY[0x277CDF500]);
    v1 = sub_258B00974();
    if (!v2)
    {
      atomic_store(v1, &qword_27F96CD38);
    }
  }
}

void sub_2589D1D98(uint64_t a1)
{
  if (!qword_27F96CD40)
  {
    _s14EntryViewStackVMa(255);
    sub_2589D4AE0(&qword_27F96CD48, _s14EntryViewStackVMa, &unk_258B2D948);
    v1 = sub_258B007B4();
    if (!v2)
    {
      atomic_store(v1, &qword_27F96CD40);
    }
  }
}

void sub_2589D1E2C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_2589D1EB8(255, &qword_27F96CD58, MEMORY[0x277CE0338]);
    v7 = v6;
    sub_2589D1FF4(255);
    v9 = a3(a1, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_2589D1EB8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = _s20EntryPlaceholderViewVMa(255);
    sub_2589C9FC0(255, &qword_27F96CD60, sub_2589D1F58, MEMORY[0x277CE14B8]);
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_2589D1F58(uint64_t a1)
{
  if (!qword_27F96CD68)
  {
    sub_2589D1FCC(255);
    _s15EntryNoDataViewVMa(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_27F96CD68);
    }
  }
}

void sub_2589D1FF4(uint64_t a1)
{
  if (!qword_27F96CD78)
  {
    sub_2589C9FC0(255, &qword_27F96CD80, type metadata accessor for StateOfMindTimeline.DaySummary, MEMORY[0x277D83940]);
    sub_2589D33D4(255, &qword_27F96CD88, sub_2589D20EC, MEMORY[0x277CDE470]);
    sub_2589D25DC();
    v1 = sub_258B023D4();
    if (!v2)
    {
      atomic_store(v1, &qword_27F96CD78);
    }
  }
}

void sub_2589D2120(uint64_t a1)
{
  if (!qword_27F96CD98)
  {
    sub_2589D2214(255);
    sub_2589D22D0(255);
    sub_2589D28BC(&qword_27F96CDD8, sub_2589D22D0, sub_2589D23FC, MEMORY[0x277CDF900]);
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F96CD98);
    }
  }
}

void sub_2589D2214(uint64_t a1)
{
  if (!qword_27F96CDA0)
  {
    sub_2589D22D0(255);
    sub_2589D28BC(&qword_27F96CDD8, sub_2589D22D0, sub_2589D23FC, MEMORY[0x277CDF900]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F96CDA0);
    }
  }
}

void sub_2589D2370(uint64_t a1)
{
  if (!qword_27F96CDC8)
  {
    _s16EntryLimitedViewVMa(255);
    sub_2589D384C(255, &qword_27F96CDD0, MEMORY[0x277D839B0], MEMORY[0x277CE0898]);
    v1 = sub_258B00B04();
    if (!v2)
    {
      atomic_store(v1, &qword_27F96CDC8);
    }
  }
}

unint64_t sub_2589D24B0()
{
  result = qword_27F96CDF8;
  if (!qword_27F96CDF8)
  {
    sub_2589D2370(255);
    sub_2589D4AE0(&qword_27F96CE00, _s16EntryLimitedViewVMa, &unk_258B32914);
    sub_2589D2560();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96CDF8);
  }

  return result;
}

unint64_t sub_2589D2560()
{
  result = qword_27F96CE08;
  if (!qword_27F96CE08)
  {
    sub_2589D384C(255, &qword_27F96CDD0, MEMORY[0x277D839B0], MEMORY[0x277CE0898]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96CE08);
  }

  return result;
}

unint64_t sub_2589D25DC()
{
  result = qword_27F96CE10;
  if (!qword_27F96CE10)
  {
    sub_2589C9FC0(255, &qword_27F96CD80, type metadata accessor for StateOfMindTimeline.DaySummary, MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96CE10);
  }

  return result;
}

void sub_2589D2664(uint64_t a1)
{
  if (!qword_27F96CE20)
  {
    sub_258B00804();
    sub_2589D2750(255);
    sub_2589D4AE0(&qword_27F96CE50, MEMORY[0x277CDD810], MEMORY[0x277CDD808]);
    sub_2589D4AE0(&qword_27F96CE58, sub_2589D2750, MEMORY[0x277CDF728]);
    v1 = sub_258B00B84();
    if (!v2)
    {
      atomic_store(v1, &qword_27F96CE20);
    }
  }
}

void sub_2589D2750(uint64_t a1)
{
  if (!qword_27F96CE28)
  {
    sub_2589D27E4(255);
    sub_2589D4AE0(&qword_27F96CE48, sub_2589D27E4, MEMORY[0x277CDFB18]);
    v1 = sub_258B00964();
    if (!v2)
    {
      atomic_store(v1, &qword_27F96CE28);
    }
  }
}

void sub_2589D27E4(uint64_t a1)
{
  if (!qword_27F96CE30)
  {
    sub_258B00704();
    sub_2589D4AE0(&qword_27F96CE38, MEMORY[0x277CDD730], MEMORY[0x277CDD728]);
    sub_2589D4AE0(&qword_27F96CE40, MEMORY[0x277CDD708], MEMORY[0x277CDD710]);
    v1 = sub_258B00B94();
    if (!v2)
    {
      atomic_store(v1, &qword_27F96CE30);
    }
  }
}

uint64_t sub_2589D28BC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t (*a3)(void), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2589D293C()
{
  result = qword_27F96CE68;
  if (!qword_27F96CE68)
  {
    sub_2589D1CD0(255);
    sub_2589D4AE0(&qword_27F96CE70, sub_2589D1D98, MEMORY[0x277CDF510]);
    sub_2589D29EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96CE68);
  }

  return result;
}

unint64_t sub_2589D29EC()
{
  result = qword_27F96CE78;
  if (!qword_27F96CE78)
  {
    sub_2589D1E2C(255, &qword_27F96CD50, MEMORY[0x277CE0338]);
    sub_2589D2A88();
    sub_2589D2B78();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96CE78);
  }

  return result;
}

unint64_t sub_2589D2A88()
{
  result = qword_27F96CE80;
  if (!qword_27F96CE80)
  {
    sub_2589D1EB8(255, &qword_27F96CD58, MEMORY[0x277CE0338]);
    sub_2589D4AE0(&qword_27F96CE88, _s20EntryPlaceholderViewVMa, &unk_258B33A68);
    sub_2589D4BDC(&qword_27F96CE90, &qword_27F96CD60, sub_2589D1F58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96CE80);
  }

  return result;
}

unint64_t sub_2589D2B78()
{
  result = qword_27F96CE98;
  if (!qword_27F96CE98)
  {
    sub_2589D1FF4(255);
    sub_2589D2BF0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96CE98);
  }

  return result;
}

unint64_t sub_2589D2BF0()
{
  result = qword_27F96CEA0;
  if (!qword_27F96CEA0)
  {
    sub_2589D33D4(255, &qword_27F96CD88, sub_2589D20EC, MEMORY[0x277CDE470]);
    sub_2589D2CD0();
    sub_2589D4AE0(&qword_280DF8950, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96CEA0);
  }

  return result;
}

unint64_t sub_2589D2CD0()
{
  result = qword_27F96CEA8;
  if (!qword_27F96CEA8)
  {
    sub_2589D20EC(255);
    sub_2589D2214(255);
    sub_2589D22D0(255);
    sub_2589D28BC(&qword_27F96CDD8, sub_2589D22D0, sub_2589D23FC, MEMORY[0x277CDF900]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_2589D4AE0(&qword_280DF8950, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96CEA8);
  }

  return result;
}

void sub_2589D2E20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!qword_27F96CEC0)
  {
    sub_2589D2E7C(0, a2, a3);
    v3 = sub_258B010E4();
    if (!v4)
    {
      atomic_store(v3, &qword_27F96CEC0);
    }
  }
}

unint64_t sub_2589D2E7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27F96CEC8;
  if (!qword_27F96CEC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96CEC8);
  }

  return result;
}

void sub_2589D2F70(uint64_t a1)
{
  if (!qword_27F96CEF0)
  {
    sub_2589C9FC0(255, &qword_27F96CEF8, sub_2589D3024, MEMORY[0x277CE14B8]);
    sub_2589D4BDC(&qword_27F96CF68, &qword_27F96CEF8, sub_2589D3024);
    v1 = sub_258B021D4();
    if (!v2)
    {
      atomic_store(v1, &qword_27F96CEF0);
    }
  }
}

void sub_2589D3024(uint64_t a1)
{
  if (!qword_27F96CF00)
  {
    sub_2589D3248(255, &qword_27F96C7B8, MEMORY[0x277CE1180], MEMORY[0x277CDF688], MEMORY[0x277CDFAB8]);
    sub_2589D30C4(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_27F96CF00);
    }
  }
}

void sub_2589D3154(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  if (!*a2)
  {
    a3(255);
    v5 = sub_258B00B04();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_2589D31B8(uint64_t a1)
{
  if (!qword_27F96CF20)
  {
    sub_2589D3248(255, &qword_27F96CF28, MEMORY[0x277CE0BD8], MEMORY[0x277CDFC70], MEMORY[0x277CDFAB8]);
    sub_2589D329C();
    v1 = sub_258B021B4();
    if (!v2)
    {
      atomic_store(v1, &qword_27F96CF20);
    }
  }
}

void sub_2589D3248(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t sub_2589D329C()
{
  result = qword_27F96CF30;
  if (!qword_27F96CF30)
  {
    sub_2589D3248(255, &qword_27F96CF28, MEMORY[0x277CE0BD8], MEMORY[0x277CDFC70], MEMORY[0x277CDFAB8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96CF30);
  }

  return result;
}

void sub_2589D3340(uint64_t a1)
{
  if (!qword_27F96CF38)
  {
    sub_2589D33D4(255, &qword_27F96CF40, MEMORY[0x277CDFC08], sub_2589D3448);
    sub_2589D34C4();
    v1 = sub_258B01294();
    if (!v2)
    {
      atomic_store(v1, &qword_27F96CF38);
    }
  }
}

void sub_2589D33D4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    v6 = sub_258B00B04();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_2589D3448(uint64_t a1)
{
  if (!qword_27F96CF48)
  {
    sub_2589D384C(255, &qword_27F96CF50, MEMORY[0x277CE0F78], MEMORY[0x277D83D88]);
    v1 = sub_258B017C4();
    if (!v2)
    {
      atomic_store(v1, &qword_27F96CF48);
    }
  }
}

unint64_t sub_2589D34C4()
{
  result = qword_27F96CF58;
  if (!qword_27F96CF58)
  {
    sub_2589D33D4(255, &qword_27F96CF40, MEMORY[0x277CDFC08], sub_2589D3448);
    sub_2589D4AE0(&qword_27F96CA88, MEMORY[0x277CDFC08], MEMORY[0x277CDFBE8]);
    sub_2589D4AE0(&qword_27F96CF60, sub_2589D3448, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96CF58);
  }

  return result;
}

void sub_2589D35D4(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    sub_2589C9FC0(255, a3, a4, MEMORY[0x277CE14B8]);
    v5 = sub_258B00974();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_2589D3650(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2589D36B8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2589D3720(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_2589D3788(uint64_t a1)
{
  if (!qword_27F96CF78)
  {
    sub_258B029C4();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F96CF78);
    }
  }
}

uint64_t sub_2589D37F4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_258B00DA4();
  *a1 = result;
  return result;
}

void sub_2589D384C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_2589D389C()
{
  result = qword_27F96CF88;
  if (!qword_27F96CF88)
  {
    sub_2589D30F8(255);
    sub_2589D394C();
    sub_2589D4AE0(&qword_27F96CFA0, sub_2589D3340, MEMORY[0x277CE0328]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96CF88);
  }

  return result;
}

unint64_t sub_2589D394C()
{
  result = qword_27F96CF90;
  if (!qword_27F96CF90)
  {
    sub_2589D312C(255);
    sub_2589D4AE0(&qword_27F96CF98, sub_2589D31B8, MEMORY[0x277CDF028]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96CF90);
  }

  return result;
}

uint64_t sub_2589D3A2C(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(_s16TimelineDataViewVMa(0) - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

unint64_t sub_2589D3AB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27F96CFB0;
  if (!qword_27F96CFB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96CFB0);
  }

  return result;
}

uint64_t objectdestroyTm()
{
  v1 = _s16TimelineDataViewVMa(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = v0 + v3;
  sub_2589C9FC0(0, &qword_27F96CFA8, MEMORY[0x277CDFAA0], MEMORY[0x277CDF458]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_258B00AC4();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  else
  {
  }

  v6 = v1[5];
  sub_2589C9FC0(0, &qword_27F96C908, MEMORY[0x277CDF3E0], MEMORY[0x277CDF458]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_258B006A4();
    (*(*(v7 - 8) + 8))(v4 + v6, v7);
  }

  else
  {
  }

  v8 = v4 + v1[6];
  sub_2589C9FC0(0, &qword_27F96CC08, type metadata accessor for StateOfMindTimeline.Styles, MEMORY[0x277CDF458]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v53 = v0 + v3;
    v54 = v1;
    v9 = sub_258B01504();
    v10 = *(v9 - 8);
    v11 = *(v10 + 48);
    if (!v11(v8, 1, v9))
    {
      (*(v10 + 8))(v8, v9);
    }

    v12 = type metadata accessor for StateOfMindTimeline.Styles(0);
    v13 = *(v12 + 20);
    v14 = sub_258B00AA4();
    v15 = *(*(v14 - 8) + 8);
    v16 = v8 + v13;
    v17 = v12;
    v15(v16, v14);
    v18 = *(v12 + 28);
    v19 = sub_258B006A4();
    v51 = *(*(v19 - 8) + 8);
    v52 = v19;
    v51(v8 + v18);
    v20 = v8 + v17[8];
    if (!v11(v20, 1, v9))
    {
      (*(v10 + 8))(v20, v9);
    }

    v21 = _s6StylesV8TimelineVMa(0);
    v15(v20 + *(v21 + 20), v14);
    v22 = v8 + v17[9];
    if (!v11(v22, 1, v9))
    {
      (*(v10 + 8))(v22, v9);
    }

    v23 = _s6StylesV6NoDataVMa(0);
    v15(v22 + *(v23 + 20), v14);
    v24 = v8 + v17[10];
    if (!v11(v24, 1, v9))
    {
      (*(v10 + 8))(v24, v9);
    }

    v25 = _s6StylesV11PlaceholderVMa(0);
    v15(v24 + *(v25 + 20), v14);
    v26 = v8 + v17[11];
    if (!v11(v26, 1, v9))
    {
      (*(v10 + 8))(v26, v9);
    }

    v27 = _s6StylesV6SymbolVMa(0);
    v15(v26 + *(v27 + 20), v14);
    v28 = v8 + v17[12];
    v55 = v17;
    if (!v11(v28, 1, v9))
    {
      (*(v10 + 8))(v28, v9);
    }

    v29 = v10;
    v30 = type metadata accessor for StateOfMindTimeline.Styles.Entry(0);
    v15(v28 + *(v30 + 20), v14);
    v31 = *(v30 + 28);
    v32 = v29;
    (v51)(v28 + v31, v52);
    v33 = v8 + v55[13];
    if (!v11(v33, 1, v9))
    {
      (*(v32 + 8))(v33, v9);
    }

    v34 = _s6StylesV5EmptyVMa(0);
    v15(v33 + *(v34 + 20), v14);
    v35 = v8 + v55[14];
    if (!v11(v35, 1, v9))
    {
      (*(v32 + 8))(v35, v9);
    }

    v36 = _s6StylesV5DailyVMa(0);
    v15(v35 + *(v36 + 20), v14);
    v37 = v8 + v55[15];
    if (!v11(v37, 1, v9))
    {
      (*(v32 + 8))(v37, v9);
    }

    v38 = _s6StylesV9MomentaryVMa(0);
    v15(v37 + *(v38 + 20), v14);
    v39 = v8 + v55[16];
    if (!v11(v39, 1, v9))
    {
      (*(v32 + 8))(v39, v9);
    }

    v40 = _s6StylesV6HeaderVMa(0);
    v15(v39 + *(v40 + 20), v14);
    v41 = v8 + v55[17];
    if (!v11(v41, 1, v9))
    {
      (*(v32 + 8))(v41, v9);
    }

    v42 = _s6StylesV11ChartButtonVMa(0);
    v15(v41 + *(v42 + 20), v14);
    v43 = v8 + v55[18];
    if (!v11(v43, 1, v9))
    {
      (*(v32 + 8))(v43, v9);
    }

    v44 = _s6StylesV15LogButtonFooterVMa(0);
    v15(v43 + *(v44 + 20), v14);
    v1 = v54;
    v4 = v53;
  }

  else
  {
  }

  v45 = v4 + v1[7];

  sub_2589C9FC0(0, &qword_27F96CC88, _s9ViewModelOMa, MEMORY[0x277CE11F8]);
  v47 = v45 + *(v46 + 32);
  _s9ViewModelOMa(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload >= 2)
  {
    if (EnumCaseMultiPayload != 2)
    {
      goto LABEL_38;
    }
  }

  else
  {
    v49 = sub_258B029C4();
    (*(*(v49 - 8) + 8))(v47, v49);
    sub_2589D3788(0);
  }

LABEL_38:

  return swift_deallocObject();
}

uint64_t sub_2589D447C(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t))
{
  sub_2589C9FC0(0, a3, a4, a5);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

uint64_t sub_2589D44EC(uint64_t a1, uint64_t a2)
{
  sub_2589D1EB8(0, &qword_27F96CD58, MEMORY[0x277CE0338]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2589D456C(uint64_t a1)
{
  sub_2589D1EB8(0, &qword_27F96CD58, MEMORY[0x277CE0338]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2589D45E4(uint64_t a1)
{
  sub_2589C9FC0(0, &qword_27F96CD60, sub_2589D1F58, MEMORY[0x277CE14B8]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2589D4670@<X0>(_BYTE *a1@<X8>)
{
  result = sub_258B00F14();
  *a1 = result & 1;
  return result;
}

uint64_t sub_2589D46F4()
{
  v1 = *(_s16TimelineDataViewVMa(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for StateOfMindTimeline.DaySummary(0) - 8);
  v5 = (v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80)));

  return sub_2589CE2E8(v0 + v2, v5);
}

uint64_t sub_2589D47C0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2589D4820(uint64_t a1, uint64_t a2)
{
  sub_2589D3154(0, &qword_27F96CCF8, _s9LogButtonVMa, MEMORY[0x277CDF910]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_2589D48A8()
{
  result = qword_27F96CFD0;
  if (!qword_27F96CFD0)
  {
    sub_2589D19D8(255);
    sub_2589D4928();
    sub_2589D49FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96CFD0);
  }

  return result;
}

unint64_t sub_2589D4928()
{
  result = qword_27F96CFD8;
  if (!qword_27F96CFD8)
  {
    sub_2589D3154(255, &qword_27F96CCF8, _s9LogButtonVMa, MEMORY[0x277CDF910]);
    sub_2589D4AE0(&qword_27F96CB60, _s9LogButtonVMa, &unk_258B3287C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96CFD8);
  }

  return result;
}

unint64_t sub_2589D49FC()
{
  result = qword_27F96CFE0;
  if (!qword_27F96CFE0)
  {
    sub_2589D3248(255, &qword_27F96CD00, MEMORY[0x277D839B0], MEMORY[0x277D839C8], MEMORY[0x277CE0190]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96CFE0);
  }

  return result;
}

uint64_t sub_2589D4A80(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2589D4AE0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_2589D4B28(uint64_t a1)
{
  if (!qword_27F96CFF0)
  {
    sub_2589C9FC0(255, &qword_27F96CCB0, sub_2589D1720, MEMORY[0x277CE14B8]);
    sub_2589D4BDC(&qword_27F96CFF8, &qword_27F96CCB0, sub_2589D1720);
    v1 = sub_258B022D4();
    if (!v2)
    {
      atomic_store(v1, &qword_27F96CFF0);
    }
  }
}

uint64_t sub_2589D4BDC(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_2589C9FC0(255, a2, a3, MEMORY[0x277CE14B8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t type metadata accessor for StateOfMindCalendarDateView(uint64_t a1)
{
  result = qword_27F96D008;
  if (!qword_27F96D008)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2589D4CB4(uint64_t a1)
{
  sub_2589D6944(319, &qword_27F96D000, MEMORY[0x277CE02A8], MEMORY[0x277CDF468]);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_2589D4D84@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_258B00F84();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2589D6944(0, &qword_27F96D0B8, MEMORY[0x277CE02A8], MEMORY[0x277CDF458]);
  MEMORY[0x28223BE20](v8);
  v10 = &v14 - v9;
  sub_2589D69A8(v2, &v14 - v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_258B01184();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_258B02E94();
    v13 = sub_258B01824();
    sub_258B00354();

    sub_258B00F74();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_2589D4F90@<X0>(uint64_t a1@<X8>)
{
  v74 = a1;
  sub_2589D5AFC(0);
  v69 = v2;
  MEMORY[0x28223BE20](v2);
  v76 = &v65 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2589D5B90(0);
  v71 = *(v4 - 8);
  v72 = v4;
  MEMORY[0x28223BE20](v4);
  v70 = &v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2589D5C58(0);
  v67 = v6;
  MEMORY[0x28223BE20](v6);
  v68 = &v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2589D5C80(0);
  v66 = v8;
  MEMORY[0x28223BE20](v8);
  v73 = &v65 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for StateOfMindCalendarDateView(0);
  v11 = (v1 + *(v10 + 24));
  v12 = v11[1];
  v77 = *v11;
  v78 = v12;
  sub_2589BFF58(v10, v13, v14);
  sub_258B003E4();
  v15 = sub_258B01B44();
  v17 = v16;
  v19 = v18;
  sub_258B01A34();
  v20 = sub_258B01AE4();
  v22 = v21;
  v24 = v23;

  sub_2589BFFAC(v15, v17, v19 & 1);

  sub_258B01994();
  v25 = sub_258B01A94();
  v27 = v26;
  v29 = v28;
  sub_2589BFFAC(v20, v22, v24 & 1);
  v30 = v75;

  if (*(v30 + *(v10 + 20)))
  {
    if (*(v30 + *(v10 + 20)) == 1)
    {
      sub_258B02014();
      goto LABEL_7;
    }

    v31 = [objc_opt_self() tertiaryLabelColor];
  }

  else
  {
    v31 = [objc_opt_self() secondaryLabelColor];
  }

  v32 = v31;
  sub_258B01F94();
LABEL_7:
  v33 = sub_258B01AA4();
  v35 = v34;
  v37 = v36;
  v39 = v38;

  sub_2589BFFAC(v25, v27, v29 & 1);

  v77 = v33;
  v78 = v35;
  v79 = v37 & 1;
  v80 = v39;
  v40 = *MEMORY[0x277CDF998];
  v41 = sub_258B00AA4();
  v42 = v76;
  (*(*(v41 - 8) + 104))(v76, v40, v41);
  sub_2589D6CA4(&qword_27F96D048, MEMORY[0x277CDFA28], MEMORY[0x277CDFA48]);
  result = sub_258B02AA4();
  if (result)
  {
    sub_2589D6CA4(&qword_27F96D030, sub_2589D5AFC, MEMORY[0x277D84470]);
    v44 = v70;
    sub_258B01C84();
    sub_2589D68E4(v42, sub_2589D5AFC);
    sub_2589BFFAC(v33, v35, v37 & 1);

    v45 = sub_258B01874();
    sub_258B00654();
    v47 = v46;
    v49 = v48;
    v51 = v50;
    v53 = v52;
    v54 = v68;
    (*(v71 + 32))(v68, v44, v72);
    v55 = v54 + *(v67 + 36);
    *v55 = v45;
    *(v55 + 8) = v47;
    *(v55 + 16) = v49;
    *(v55 + 24) = v51;
    *(v55 + 32) = v53;
    *(v55 + 40) = 0;
    v56 = v73;
    sub_2589D6314(v54, v73, sub_2589D5C58);
    *(v56 + *(v66 + 36)) = 257;
    v57 = sub_258B024F4();
    v59 = v58;
    sub_2589D637C(0, &qword_27F96D050, sub_2589D5C80, sub_2589D5D0C, MEMORY[0x277CDFAB8]);
    v61 = v74;
    v62 = v74 + *(v60 + 36);
    sub_2589D5560(v30, v62);
    sub_2589D5D0C(0);
    v64 = (v62 + *(v63 + 36));
    *v64 = v57;
    v64[1] = v59;
    return sub_2589D6314(v56, v61, sub_2589D5C80);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2589D5560@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v46 = a2;
  sub_2589D637C(0, &qword_27F96D0B0, sub_2589D5DB4, sub_2589D5EFC, MEMORY[0x277CE0330]);
  v44[1] = v2;
  MEMORY[0x28223BE20](v2);
  v4 = (v44 - v3);
  sub_2589D5E4C(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2589D5DB4(0);
  v45 = v8;
  v9 = MEMORY[0x28223BE20](v8);
  v11 = v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v44[0] = v44 - v12;
  v13 = sub_258B01184();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = v44 - v18;
  sub_2589D4D84(v44 - v18);
  (*(v14 + 104))(v17, *MEMORY[0x277CE0260], v13);
  v20 = sub_2589D6400(v19, v17);
  v21 = *(v14 + 8);
  v21(v17, v13);
  v21(v19, v13);
  if (v20)
  {
    v22 = *(sub_258B00C34() + 20);
    v23 = *MEMORY[0x277CE0118];
    v24 = sub_258B010C4();
    (*(*(v24 - 8) + 104))(&v7[v22], v23, v24);
    __asm { FMOV            V0.2D, #8.0 }

    *v7 = _Q0;
    sub_2589C54E4(0);
    *&v7[*(v30 + 36)] = 256;
    type metadata accessor for StateOfMindCalendarDateView(0);
    LOBYTE(v23) = sub_258B002A4();
    v31 = objc_opt_self();
    v32 = &selRef_tertiaryLabelColor;
    if ((v23 & 1) == 0)
    {
      v32 = &selRef_systemBackgroundColor;
    }

    v33 = [v31 *v32];
    v34 = sub_258B01F94();
    KeyPath = swift_getKeyPath();
    sub_2589D6818(v7, v11, sub_2589D5E4C);
    v36 = &v11[*(v45 + 36)];
    *v36 = KeyPath;
    v36[1] = v34;
    v37 = v44[0];
    sub_2589D6818(v11, v44[0], sub_2589D5DB4);
    sub_2589D6880(v37, v4);
    swift_storeEnumTagMultiPayload();
    sub_2589D5EFC(0);
    sub_2589D60B0(&qword_27F96D088, sub_2589D5DB4, sub_2589D6134);
    sub_2589D60B0(&qword_27F96D0A0, sub_2589D5EFC, sub_2589D62C0);
    sub_258B012A4();
    return sub_2589D68E4(v37, sub_2589D5DB4);
  }

  else
  {
    type metadata accessor for StateOfMindCalendarDateView(0);
    v39 = sub_258B002A4();
    v40 = objc_opt_self();
    v41 = &selRef_tertiaryLabelColor;
    if ((v39 & 1) == 0)
    {
      v41 = &selRef_systemBackgroundColor;
    }

    v42 = [v40 *v41];
    v43 = sub_258B01F94();
    *v4 = swift_getKeyPath();
    v4[1] = v43;
    swift_storeEnumTagMultiPayload();
    sub_2589D5EFC(0);
    sub_2589D60B0(&qword_27F96D088, sub_2589D5DB4, sub_2589D6134);
    sub_2589D60B0(&qword_27F96D0A0, sub_2589D5EFC, sub_2589D62C0);
    return sub_258B012A4();
  }
}

void sub_2589D5AFC(uint64_t a1)
{
  if (!qword_27F96D018)
  {
    sub_258B00AA4();
    sub_2589D6CA4(&qword_27F96D020, MEMORY[0x277CDFA28], MEMORY[0x277CDFA38]);
    v1 = sub_258B03304();
    if (!v2)
    {
      atomic_store(v1, &qword_27F96D018);
    }
  }
}

void sub_2589D5B90(uint64_t a1)
{
  if (!qword_27F96D028)
  {
    sub_2589D5AFC(255);
    sub_2589D6CA4(&qword_27F96D030, sub_2589D5AFC, MEMORY[0x277D84470]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F96D028);
    }
  }
}

void sub_2589D5CA8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  if (!*a2)
  {
    a3(255);
    v5 = sub_258B00B04();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_2589D5D0C(uint64_t a1)
{
  if (!qword_27F96D058)
  {
    sub_2589D637C(255, &qword_27F96D060, sub_2589D5DB4, sub_2589D5EFC, MEMORY[0x277CE0338]);
    sub_2589D5F8C();
    v1 = sub_258B01294();
    if (!v2)
    {
      atomic_store(v1, &qword_27F96D058);
    }
  }
}

void sub_2589D5DB4(uint64_t a1)
{
  if (!qword_27F96D068)
  {
    sub_2589D5E4C(255);
    sub_2589D6944(255, &qword_27F96CF48, sub_2589D5EAC, MEMORY[0x277CE0860]);
    v1 = sub_258B00B04();
    if (!v2)
    {
      atomic_store(v1, &qword_27F96D068);
    }
  }
}

void sub_2589D5E4C(uint64_t a1)
{
  if (!qword_27F96D070)
  {
    sub_2589C54E4(255);
    v1 = sub_258B00B04();
    if (!v2)
    {
      atomic_store(v1, &qword_27F96D070);
    }
  }
}

void sub_2589D5EAC()
{
  if (!qword_27F96CF50)
  {
    v0 = sub_258B030C4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96CF50);
    }
  }
}

void sub_2589D5EFC(uint64_t a1)
{
  if (!qword_27F96D078)
  {
    sub_2589D6944(255, &qword_27F96CF48, sub_2589D5EAC, MEMORY[0x277CE0860]);
    v1 = sub_258B00B04();
    if (!v2)
    {
      atomic_store(v1, &qword_27F96D078);
    }
  }
}

unint64_t sub_2589D5F8C()
{
  result = qword_27F96D080;
  if (!qword_27F96D080)
  {
    sub_2589D637C(255, &qword_27F96D060, sub_2589D5DB4, sub_2589D5EFC, MEMORY[0x277CE0338]);
    sub_2589D60B0(&qword_27F96D088, sub_2589D5DB4, sub_2589D6134);
    sub_2589D60B0(&qword_27F96D0A0, sub_2589D5EFC, sub_2589D62C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96D080);
  }

  return result;
}

uint64_t sub_2589D60B0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    sub_2589D6238();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2589D6134()
{
  result = qword_27F96D090;
  if (!qword_27F96D090)
  {
    sub_2589D5E4C(255);
    sub_2589D61E4(v1, v2, v3);
    sub_2589D6CA4(&qword_27F96CBF0, sub_2589C54E4, MEMORY[0x277CDF4F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96D090);
  }

  return result;
}

unint64_t sub_2589D61E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27F96D098;
  if (!qword_27F96D098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96D098);
  }

  return result;
}

unint64_t sub_2589D6238()
{
  result = qword_27F96CF60;
  if (!qword_27F96CF60)
  {
    sub_2589D6944(255, &qword_27F96CF48, sub_2589D5EAC, MEMORY[0x277CE0860]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96CF60);
  }

  return result;
}

unint64_t sub_2589D62C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27F96D0A8;
  if (!qword_27F96D0A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96D0A8);
  }

  return result;
}

uint64_t sub_2589D6314(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_2589D637C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a4(255);
    v11 = a5(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

BOOL sub_2589D6400(uint64_t a1, uint64_t a2)
{
  v19 = a2;
  v3 = sub_258B01184();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  v10 = *(v4 + 16);
  v10(&v18 - v8, a1, v3);
  v11 = *(v4 + 88);
  v12 = v11(v9, v3);
  v13 = 0;
  v14 = *MEMORY[0x277CE0268];
  if (v12 != *MEMORY[0x277CE0268])
  {
    if (v12 == *MEMORY[0x277CE0298])
    {
      v13 = 1;
      goto LABEL_24;
    }

    if (v12 == *MEMORY[0x277CE02A0])
    {
      v13 = 2;
      goto LABEL_24;
    }

    if (v12 == *MEMORY[0x277CE0290])
    {
      goto LABEL_7;
    }

    if (v12 == *MEMORY[0x277CE0260])
    {
      v13 = 4;
    }

    else if (v12 == *MEMORY[0x277CE0270])
    {
      v13 = 5;
    }

    else if (v12 == *MEMORY[0x277CE0248])
    {
      v13 = 6;
    }

    else if (v12 == *MEMORY[0x277CE0280])
    {
      v13 = 7;
    }

    else if (v12 == *MEMORY[0x277CE0278])
    {
      v13 = 8;
    }

    else if (v12 == *MEMORY[0x277CE0288])
    {
      v13 = 9;
    }

    else if (v12 == *MEMORY[0x277CE0250])
    {
      v13 = 10;
    }

    else
    {
      if (v12 != *MEMORY[0x277CE0258])
      {
        (*(v4 + 8))(v9, v3);
LABEL_7:
        v13 = 3;
        goto LABEL_24;
      }

      v13 = 11;
    }
  }

LABEL_24:
  v10(v7, v19, v3);
  v15 = v11(v7, v3);
  if (v15 == v14)
  {
    v16 = 0;
  }

  else if (v15 == *MEMORY[0x277CE0298])
  {
    v16 = 1;
  }

  else if (v15 == *MEMORY[0x277CE02A0])
  {
    v16 = 2;
  }

  else
  {
    if (v15 != *MEMORY[0x277CE0290])
    {
      if (v15 == *MEMORY[0x277CE0260])
      {
        v16 = 4;
        return v13 >= v16;
      }

      if (v15 == *MEMORY[0x277CE0270])
      {
        v16 = 5;
        return v13 >= v16;
      }

      if (v15 == *MEMORY[0x277CE0248])
      {
        v16 = 6;
        return v13 >= v16;
      }

      if (v15 == *MEMORY[0x277CE0280])
      {
        v16 = 7;
        return v13 >= v16;
      }

      if (v15 == *MEMORY[0x277CE0278])
      {
        v16 = 8;
        return v13 >= v16;
      }

      if (v15 == *MEMORY[0x277CE0288])
      {
        v16 = 9;
        return v13 >= v16;
      }

      if (v15 == *MEMORY[0x277CE0250])
      {
        v16 = 10;
        return v13 >= v16;
      }

      if (v15 == *MEMORY[0x277CE0258])
      {
        v16 = 11;
        return v13 >= v16;
      }

      (*(v4 + 8))(v7, v3);
    }

    v16 = 3;
  }

  return v13 >= v16;
}

uint64_t sub_2589D6818(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2589D6880(uint64_t a1, uint64_t a2)
{
  sub_2589D5DB4(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2589D68E4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_2589D6944(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_2589D69A8(uint64_t a1, uint64_t a2)
{
  sub_2589D6944(0, &qword_27F96D0B8, MEMORY[0x277CE02A8], MEMORY[0x277CDF458]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_2589D6A3C()
{
  result = qword_27F96D0C0;
  if (!qword_27F96D0C0)
  {
    sub_2589D637C(255, &qword_27F96D050, sub_2589D5C80, sub_2589D5D0C, MEMORY[0x277CDFAB8]);
    sub_2589D6B30();
    sub_2589D6CA4(&qword_27F96D0D8, sub_2589D5D0C, MEMORY[0x277CE0328]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96D0C0);
  }

  return result;
}

unint64_t sub_2589D6B30()
{
  result = qword_27F96D0C8;
  if (!qword_27F96D0C8)
  {
    sub_2589D5C80(255);
    sub_2589D6BB0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96D0C8);
  }

  return result;
}

unint64_t sub_2589D6BB0()
{
  result = qword_27F96D0D0;
  if (!qword_27F96D0D0)
  {
    sub_2589D5C58(255);
    sub_2589D5AFC(255);
    sub_2589D6CA4(&qword_27F96D030, sub_2589D5AFC, MEMORY[0x277D84470]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96D0D0);
  }

  return result;
}

uint64_t sub_2589D6CA4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t _s16EntryDayDataViewVMa(uint64_t a1)
{
  result = qword_27F96D0E0;
  if (!qword_27F96D0E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2589D6D60(uint64_t a1)
{
  sub_2589DC5CC(319, &qword_27F96C7E0, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
  if (v1 <= 0x3F)
  {
    sub_2589DC5CC(319, &qword_27F96C788, type metadata accessor for StateOfMindTimeline.Styles, MEMORY[0x277CDF468]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for StateOfMindTimeline.DaySummary(319);
      if (v3 <= 0x3F)
      {
        _s5EntryVMa(319);
        if (v4 <= 0x3F)
        {
          sub_2589DB8A8(319, &qword_280DF8948, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_2589D6ECC(char *a1, uint64_t a2, uint64_t a3)
{
  sub_258B003E4();
  sub_258B003E4();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    a1 = sub_258A74828(0, *(a1 + 2) + 1, 1, a1);
  }

  v7 = *(a1 + 2);
  v6 = *(a1 + 3);
  if (v7 >= v6 >> 1)
  {
    a1 = sub_258A74828((v6 > 1), v7 + 1, 1, a1);
  }

  *(a1 + 2) = v7 + 1;
  v8 = &a1[16 * v7];
  *(v8 + 4) = a2;
  *(v8 + 5) = a3;
  v9 = sub_258B003E4();
  sub_2589FC8C8(v9);
  sub_2589DB8A8(0, &qword_280DF8948, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
  sub_2589C6824();
  sub_258B02A34();

  sub_2589DC8AC(0, &qword_27F96D110, &type metadata for StateOfMindVisualization.ValenceImage, MEMORY[0x277CDF688]);
  sub_2589DC740();
  sub_258B01DD4();
}

uint64_t sub_2589D7078(char *a1, uint64_t a2, uint64_t a3)
{
  sub_258B003E4();
  sub_258B003E4();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    a1 = sub_258A74828(0, *(a1 + 2) + 1, 1, a1);
  }

  v7 = *(a1 + 2);
  v6 = *(a1 + 3);
  if (v7 >= v6 >> 1)
  {
    a1 = sub_258A74828((v6 > 1), v7 + 1, 1, a1);
  }

  *(a1 + 2) = v7 + 1;
  v8 = &a1[16 * v7];
  *(v8 + 4) = a2;
  *(v8 + 5) = a3;
  v9 = sub_258B003E4();
  sub_2589FC8C8(v9);
  sub_2589DB8A8(0, &qword_280DF8948, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
  sub_2589C6824();
  sub_258B02A34();

  sub_258B01DD4();
}

uint64_t sub_2589D7214(char *a1, uint64_t a2, uint64_t a3)
{
  sub_258B003E4();
  sub_258B003E4();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    a1 = sub_258A74828(0, *(a1 + 2) + 1, 1, a1);
  }

  v7 = *(a1 + 2);
  v6 = *(a1 + 3);
  if (v7 >= v6 >> 1)
  {
    a1 = sub_258A74828((v6 > 1), v7 + 1, 1, a1);
  }

  *(a1 + 2) = v7 + 1;
  v8 = &a1[16 * v7];
  *(v8 + 4) = a2;
  *(v8 + 5) = a3;
  v9 = sub_258B003E4();
  sub_2589FC8C8(v9);
  sub_2589DB8A8(0, &qword_280DF8948, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
  sub_2589C6824();
  sub_258B02A34();

  sub_2589DC8AC(0, &qword_27F96D1F8, MEMORY[0x277CE0BD8], MEMORY[0x277CDFC50]);
  sub_2589DC8FC();
  sub_258B01DD4();
}

uint64_t sub_2589D73B8(char *a1, uint64_t a2, uint64_t a3)
{
  sub_258B003E4();
  sub_258B003E4();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    a1 = sub_258A74828(0, *(a1 + 2) + 1, 1, a1);
  }

  v7 = *(a1 + 2);
  v6 = *(a1 + 3);
  if (v7 >= v6 >> 1)
  {
    a1 = sub_258A74828((v6 > 1), v7 + 1, 1, a1);
  }

  *(a1 + 2) = v7 + 1;
  v8 = &a1[16 * v7];
  *(v8 + 4) = a2;
  *(v8 + 5) = a3;
  v9 = sub_258B003E4();
  sub_2589FC8C8(v9);
  sub_2589DB8A8(0, &qword_280DF8948, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
  sub_2589C6824();
  sub_258B02A34();

  sub_2589BFBAC(0);
  sub_2589DC82C();
  sub_258B01DD4();
}

uint64_t sub_2589D7544@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_258B00F84();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2589DC5CC(0, &qword_27F96C908, MEMORY[0x277CDF3E0], MEMORY[0x277CDF458]);
  MEMORY[0x28223BE20](v8);
  v10 = &v14 - v9;
  sub_2589DC538(v2, &v14 - v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_258B006A4();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_258B02E94();
    v13 = sub_258B01824();
    sub_258B00354();

    sub_258B00F74();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

id sub_2589D7750()
{
  v1 = v0;
  v2 = _s6StylesV5DailyVMa(0);
  v3 = v2 - 8;
  MEMORY[0x28223BE20](v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for StateOfMindTimeline.Styles(0);
  v7 = v6 - 8;
  MEMORY[0x28223BE20](v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = _s16EntryDayDataViewVMa(0);
  sub_258AC1060(v9);
  sub_2589DC470(&v9[*(v7 + 64)], v5, _s6StylesV5DailyVMa);
  sub_2589DC4D8(v9, type metadata accessor for StateOfMindTimeline.Styles);
  v11 = *(v10 + 24);
  v12 = type metadata accessor for StateOfMindTimeline.DaySummary(0);
  if ((v5[*(v3 + 32)] & 1) != 0 || *(*(v1 + v11 + *(v12 + 32)) + 16) != 1)
  {
    return sub_2589DC4D8(v5, _s6StylesV5DailyVMa);
  }

  result = [objc_opt_self() sharedBehavior];
  if (result)
  {
    v14 = result;
    [result isiPad];

    return sub_2589DC4D8(v5, _s6StylesV5DailyVMa);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2589D79A4()
{
  v1 = sub_258B01634();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2589DB994(0, &qword_27F96D0F0, &qword_27F96D0F8, sub_2589DB514, &qword_27F96D168);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v18 - v6;
  sub_2589DBBB4(0);
  v9 = v8;
  MEMORY[0x28223BE20](v8);
  v11 = v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v7 = sub_258B01194();
  *(v7 + 1) = 0;
  v7[16] = 0;
  sub_2589DBFDC(0, &qword_27F96D178, &qword_27F96D0F8, sub_2589DB514);
  sub_2589D7C70(v0, &v7[*(v12 + 44)]);
  sub_258B024F4();
  sub_258B00C94();
  sub_2589DBC40(v7, v11);
  v13 = &v11[*(v9 + 36)];
  v14 = v18[5];
  *(v13 + 4) = v18[4];
  *(v13 + 5) = v14;
  *(v13 + 6) = v18[6];
  v15 = v18[1];
  *v13 = v18[0];
  *(v13 + 1) = v15;
  v16 = v18[3];
  *(v13 + 2) = v18[2];
  *(v13 + 3) = v16;
  sub_258B01614();
  sub_2589DC2F4(&qword_27F96D180, sub_2589DBBB4, sub_2589DBCD0, MEMORY[0x277CDFC60]);
  sub_258B01D84();
  (*(v2 + 8))(v4, v1);
  return sub_2589DC4D8(v11, sub_2589DBBB4);
}

uint64_t sub_2589D7C70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v66 = a2;
  v3 = MEMORY[0x277CE0338];
  sub_2589DBABC(0, &qword_27F96D160, MEMORY[0x277CE0338]);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v65 = &v56[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v70 = &v56[-v7];
  sub_2589DB8F8(0, &qword_27F96D138, v3);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v64 = &v56[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9);
  v69 = &v56[-v11];
  sub_2589DB83C(0, &qword_27F96D118, sub_2589DB6B0, MEMORY[0x277CE1428], MEMORY[0x277CE0338]);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v63 = &v56[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v13);
  v68 = &v56[-v15];
  v16 = _s6StylesV5DailyVMa(0);
  v17 = v16 - 8;
  MEMORY[0x28223BE20](v16);
  v19 = &v56[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = type metadata accessor for StateOfMindTimeline.Styles(0);
  v21 = v20 - 8;
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v56[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v22);
  v26 = &v56[-v25];
  sub_2589DB630(0);
  v28 = MEMORY[0x28223BE20](v27 - 8);
  v67 = &v56[-((v29 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v28);
  v31 = &v56[-v30];
  v32 = _s16EntryDayDataViewVMa(0);
  v33 = a1 + v32[7];
  v34 = *(v33 + *(_s5EntryVMa(0) + 36));
  sub_258AC1060(v26);
  sub_2589DC470(v26 + *(v21 + 64), v19, _s6StylesV5DailyVMa);
  sub_2589DC4D8(v26, type metadata accessor for StateOfMindTimeline.Styles);
  v35 = a1 + v32[6];
  v36 = *(*(v35 + *(type metadata accessor for StateOfMindTimeline.DaySummary(0) + 32)) + 16);
  LOBYTE(v26) = v19[*(v17 + 32)];
  sub_2589DC4D8(v19, _s6StylesV5DailyVMa);
  if (v26 & 1 | (v36 < 2))
  {
    v37 = 3;
  }

  else
  {
    v37 = 4;
  }

  LOBYTE(v74) = v37;
  StateOfMindVisualization.ValenceImageProvider.init(valence:imageScale:)(&v74, &v80, v34);
  v61 = v80;
  v38 = v81;
  sub_2589D7750();
  sub_2589D7750();
  sub_258B024F4();
  sub_258B00854();
  v80 = v61;
  v81 = v38;
  v39 = *(a1 + v32[8]);
  v62 = v31;
  sub_2589D6ECC(v39, 0x7A696C6175736956, 0xED00006E6F697461);
  sub_2589DBD54(&v80, &qword_27F96D110, &type metadata for StateOfMindVisualization.ValenceImage, MEMORY[0x277CDF688], sub_2589DC8AC);
  sub_258AC1060(v24);
  sub_2589DC4D8(v24, type metadata accessor for StateOfMindTimeline.Styles);
  sub_258B024F4();
  sub_258B00854();
  *&v61 = v74;
  v60 = v76;
  v59 = v78;
  v58 = v79;
  v73 = 1;
  v72 = v75;
  v71 = v77;
  v40 = v68;
  sub_2589D8430(v68);
  v41 = v69;
  sub_2589D9074(v69);
  v42 = v70;
  sub_2589D9D84();
  v43 = v67;
  sub_2589DC470(v31, v67, sub_2589DB630);
  LOBYTE(v38) = v73;
  v44 = v72;
  v57 = v71;
  v45 = v63;
  sub_2589DBDB4(v40, v63);
  v46 = v64;
  sub_2589DBE50(v41, v64, &qword_27F96D138, sub_2589DB8F8);
  v47 = v42;
  v48 = v65;
  sub_2589DBE50(v47, v65, &qword_27F96D160, sub_2589DBABC);
  v49 = v43;
  v50 = v66;
  sub_2589DC470(v49, v66, sub_2589DB630);
  sub_2589DB514(0);
  v52 = v51;
  v53 = v50 + *(v51 + 48);
  *v53 = 0;
  *(v53 + 8) = v38;
  *(v53 + 16) = v61;
  *(v53 + 24) = v44;
  *(v53 + 32) = v60;
  *(v53 + 40) = v57;
  v54 = v58;
  *(v53 + 48) = v59;
  *(v53 + 56) = v54;
  sub_2589DBDB4(v45, v50 + *(v51 + 64));
  sub_2589DBE50(v46, v50 + *(v52 + 80), &qword_27F96D138, sub_2589DB8F8);
  sub_2589DBE50(v48, v50 + *(v52 + 96), &qword_27F96D160, sub_2589DBABC);
  sub_2589DBED0(v70, &qword_27F96D160, sub_2589DBABC);
  sub_2589DBED0(v69, &qword_27F96D138, sub_2589DB8F8);
  sub_2589DBF48(v68);
  sub_2589DC4D8(v62, sub_2589DB630);
  sub_2589DBED0(v48, &qword_27F96D160, sub_2589DBABC);
  sub_2589DBED0(v46, &qword_27F96D138, sub_2589DB8F8);
  sub_2589DBF48(v45);
  return sub_2589DC4D8(v67, sub_2589DB630);
}

uint64_t sub_2589D8430@<X0>(uint64_t a1@<X8>)
{
  v120 = a1;
  v2 = sub_258B02554();
  v117 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v118 = &v92 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_258B006A4();
  v115 = *(v4 - 8);
  v116 = v4;
  v5 = MEMORY[0x28223BE20](v4);
  v114 = &v92 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v107 = &v92 - v7;
  v8 = sub_258B019F4();
  v105 = *(v8 - 8);
  v106 = v8;
  MEMORY[0x28223BE20](v8);
  v104 = &v92 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2589DC5CC(0, &qword_27F96D1C8, MEMORY[0x277CE09A8], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v92 - v11;
  v103 = sub_258B01A54();
  v102 = *(v103 - 8);
  MEMORY[0x28223BE20](v103);
  v14 = &v92 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for StateOfMindTimeline.Styles(0);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v92 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2589DB83C(0, &qword_27F96CA20, MEMORY[0x277CDFC38], MEMORY[0x277CE0BD8], MEMORY[0x277CDFAB8]);
  v110 = v18;
  MEMORY[0x28223BE20](v18);
  v112 = &v92 - v19;
  sub_2589DB778(0);
  v111 = v20;
  MEMORY[0x28223BE20](v20);
  v109 = &v92 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2589DB718(0);
  v113 = v22;
  MEMORY[0x28223BE20](v22);
  v108 = &v92 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2589DB6B0(0);
  v25 = v24;
  MEMORY[0x28223BE20](v24);
  v119 = &v92 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2589DB83C(0, &qword_27F96D1D8, sub_2589DB6B0, MEMORY[0x277CE1428], MEMORY[0x277CE0330]);
  v28 = v27;
  MEMORY[0x28223BE20](v27);
  v30 = &v92 - v29;
  v31 = _s16EntryDayDataViewVMa(0);
  v32 = v1 + *(v31 + 28);
  v33 = _s5EntryVMa(0);
  v36 = (v32 + *(v33 + 24));
  v37 = *v36;
  v38 = v36[1];
  v39 = HIBYTE(v38) & 0xF;
  if ((v38 & 0x2000000000000000) == 0)
  {
    v39 = v37 & 0xFFFFFFFFFFFFLL;
  }

  if (v39)
  {
    v99 = v28;
    v100 = v30;
    v101 = v25;
    v121 = v37;
    v122 = v38;
    sub_2589BFF58(v33, v34, v35);
    sub_258B003E4();
    v40 = sub_258B01B44();
    v97 = v2;
    v93 = v40;
    v42 = v41;
    v44 = v43;
    v92 = v45;
    v98 = v31;
    v96 = *(v31 + 20);
    v95 = v1;
    sub_258AC1060(v17);
    v94 = type metadata accessor for StateOfMindTimeline.Styles;
    sub_2589DC4D8(v17, type metadata accessor for StateOfMindTimeline.Styles);
    v46 = v102;
    v47 = v103;
    (*(v102 + 104))(v14, *MEMORY[0x277CE0A80], v103);
    v48 = *MEMORY[0x277CE09A0];
    v49 = sub_258B01954();
    v50 = *(v49 - 8);
    (*(v50 + 104))(v12, v48, v49);
    (*(v50 + 56))(v12, 0, 1, v49);
    sub_258B01994();
    sub_258B019B4();
    sub_2589DBD54(v12, &qword_27F96D1C8, MEMORY[0x277CE09A8], MEMORY[0x277D83D88], sub_2589DC5CC);
    (*(v46 + 8))(v14, v47);
    v51 = v104;
    v52 = v105;
    v53 = v106;
    (*(v105 + 104))(v104, *MEMORY[0x277CE0A10], v106);
    sub_258B01A14();

    (*(v52 + 8))(v51, v53);
    v54 = v93;
    v55 = sub_258B01AE4();
    v57 = v56;
    LOBYTE(v53) = v58;
    sub_2589BFFAC(v54, v42, v44 & 1);

    v59 = v17;
    v60 = v95;
    sub_258AC1060(v59);
    sub_2589DC4D8(v59, v94);
    v61 = [objc_opt_self() labelColor];
    v121 = sub_258B01F94();
    v62 = sub_258B01AB4();
    v64 = v63;
    v66 = v65;
    v106 = v67;
    sub_2589BFFAC(v55, v57, v53 & 1);

    v68 = v107;
    sub_2589D7544(v107);
    v70 = v114;
    v69 = v115;
    v71 = v116;
    (*(v115 + 104))(v114, *MEMORY[0x277CDF3D0], v116);
    LOBYTE(v57) = sub_258B00694();
    v72 = *(v69 + 8);
    v72(v70, v71);
    v72(v68, v71);
    v73 = v117;
    v74 = MEMORY[0x277CE13B0];
    if ((v57 & 1) == 0)
    {
      v74 = MEMORY[0x277CE13B8];
    }

    v75 = v118;
    v76 = v97;
    (*(v117 + 104))(v118, *v74, v97);
    v77 = *(v73 + 32);
    v78 = v112;
    v77(&v112[*(v110 + 36)], v75, v76);
    *v78 = v62;
    *(v78 + 1) = v64;
    v78[16] = v66 & 1;
    *(v78 + 3) = v106;
    KeyPath = swift_getKeyPath();
    v80 = v78;
    v81 = v109;
    sub_2589DC1F4(v80, v109);
    v82 = v81 + *(v111 + 36);
    *v82 = KeyPath;
    *(v82 + 8) = 1;
    v83 = v108;
    sub_2589DC290(v81, v108);
    *(v83 + *(v113 + 36)) = 256;
    v84 = *(v60 + *(v98 + 32));
    sub_258B003E4();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v84 = sub_258A74828(0, *(v84 + 2) + 1, 1, v84);
    }

    v85 = v100;
    v87 = *(v84 + 2);
    v86 = *(v84 + 3);
    if (v87 >= v86 >> 1)
    {
      v84 = sub_258A74828((v86 > 1), v87 + 1, 1, v84);
    }

    *(v84 + 2) = v87 + 1;
    v88 = &v84[16 * v87];
    *(v88 + 4) = 0x736C6562614CLL;
    *(v88 + 5) = 0xE600000000000000;
    v121 = &unk_2869D4670;
    v89 = sub_258B003E4();
    sub_2589FC8C8(v89);
    sub_2589DB8A8(0, &qword_280DF8948, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
    sub_2589C6824();
    sub_258B02A34();

    sub_2589DC2F4(&qword_27F96D1A8, sub_2589DB718, sub_2589DC374, MEMORY[0x277CDFC48]);
    v90 = v119;
    sub_258B01DD4();

    sub_2589DC4D8(v83, sub_2589DB718);
    sub_2589DC470(v90, v85, sub_2589DB6B0);
    swift_storeEnumTagMultiPayload();
    sub_2589DC630();
    sub_258B012A4();
    return sub_2589DC4D8(v90, sub_2589DB6B0);
  }

  else
  {
    swift_storeEnumTagMultiPayload();
    sub_2589DC630();
    return sub_258B012A4();
  }
}

uint64_t sub_2589D9074@<X0>(uint64_t a1@<X8>)
{
  v125 = a1;
  sub_2589DB994(0, &qword_27F96D140, &qword_27F96D148, sub_2589DBA34, &qword_27F96D158);
  v124 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = v96 - v3;
  sub_2589DB8F8(0, &qword_27F96D1C0, MEMORY[0x277CE0330]);
  v123 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = v96 - v6;
  v8 = sub_258B02554();
  v121 = *(v8 - 8);
  v122 = v8;
  MEMORY[0x28223BE20](v8);
  v120 = v96 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_258B006A4();
  v118 = *(v10 - 8);
  v119 = v10;
  v11 = MEMORY[0x28223BE20](v10);
  v117 = v96 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v116 = v96 - v13;
  v109 = sub_258B019F4();
  v108 = *(v109 - 8);
  MEMORY[0x28223BE20](v109);
  v107 = v96 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2589DC5CC(0, &qword_27F96D1C8, MEMORY[0x277CE09A8], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = v96 - v16;
  v106 = sub_258B01A54();
  v105 = *(v106 - 8);
  MEMORY[0x28223BE20](v106);
  v19 = v96 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for StateOfMindTimeline.Styles(0);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = v96 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2589DB83C(0, &qword_27F96CA20, MEMORY[0x277CDFC38], MEMORY[0x277CE0BD8], MEMORY[0x277CDFAB8]);
  v113 = v23;
  MEMORY[0x28223BE20](v23);
  v110 = v96 - v24;
  sub_2589DB778(0);
  v114 = v25;
  MEMORY[0x28223BE20](v25);
  v112 = v96 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2589DB718(0);
  v115 = v27;
  MEMORY[0x28223BE20](v27);
  v111 = v96 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2589DB6B0(0);
  v30 = v29;
  MEMORY[0x28223BE20](v29);
  v32 = v96 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = _s16EntryDayDataViewVMa(0);
  v34 = v1 + *(v33 + 28);
  v35 = _s5EntryVMa(0);
  v38 = (v34 + *(v35 + 24));
  v40 = *v38;
  v39 = v38[1];
  v41 = v40 & 0xFFFFFFFFFFFFLL;
  if ((v39 & 0x2000000000000000) != 0)
  {
    v42 = HIBYTE(v39) & 0xF;
  }

  else
  {
    v42 = v41;
  }

  if (v42)
  {
    *v4 = sub_258B01194();
    *(v4 + 1) = 0;
    v4[16] = 0;
    sub_2589DBFDC(0, &qword_27F96D198, &qword_27F96D148, sub_2589DBA34);
    sub_2589D9FA0(v1, &v4[*(v43 + 44)]);
    sub_2589DC058(v4, v7);
    swift_storeEnumTagMultiPayload();
    sub_2589DC630();
    sub_2589DC0E8();
    sub_258B012A4();
    return sub_2589DC16C(v4);
  }

  else
  {
    v102 = v32;
    v103 = v30;
    v104 = v7;
    v45 = v34 + *(v35 + 20);
    v46 = *(v45 + 8);
    v126 = *v45;
    v127 = v46;
    sub_2589BFF58(v35, v36, v37);
    sub_258B003E4();
    v98 = sub_258B01B44();
    v97 = v47;
    v49 = v48;
    v96[1] = v50;
    v101 = v33;
    v100 = *(v33 + 20);
    v51 = v1;
    sub_258AC1060(v22);
    v99 = type metadata accessor for StateOfMindTimeline.Styles;
    sub_2589DC4D8(v22, type metadata accessor for StateOfMindTimeline.Styles);
    v52 = v105;
    v53 = v106;
    (*(v105 + 104))(v19, *MEMORY[0x277CE0A80], v106);
    v54 = *MEMORY[0x277CE09A0];
    v55 = sub_258B01954();
    v56 = *(v55 - 8);
    (*(v56 + 104))(v17, v54, v55);
    (*(v56 + 56))(v17, 0, 1, v55);
    sub_258B01994();
    sub_258B019B4();
    sub_2589DBD54(v17, &qword_27F96D1C8, MEMORY[0x277CE09A8], MEMORY[0x277D83D88], sub_2589DC5CC);
    (*(v52 + 8))(v19, v53);
    v57 = v108;
    v58 = v107;
    v59 = v109;
    (*(v108 + 104))(v107, *MEMORY[0x277CE0A10], v109);
    sub_258B01A14();

    (*(v57 + 8))(v58, v59);
    v60 = v98;
    v61 = v97;
    v62 = sub_258B01AE4();
    v64 = v63;
    v66 = v65;
    v108 = v67;
    sub_2589BFFAC(v60, v61, v49 & 1);

    v96[0] = v51;
    sub_258AC1060(v22);
    sub_2589DC4D8(v22, v99);
    v68 = [objc_opt_self() labelColor];
    v126 = sub_258B01F94();
    v109 = sub_258B01AB4();
    v70 = v69;
    v72 = v71;
    v74 = v73;
    sub_2589BFFAC(v62, v64, v66 & 1);

    v75 = v116;
    sub_2589D7544(v116);
    v77 = v117;
    v76 = v118;
    v78 = v119;
    (*(v118 + 104))(v117, *MEMORY[0x277CDF3D0], v119);
    LOBYTE(v64) = sub_258B00694();
    v79 = *(v76 + 8);
    v79(v77, v78);
    v79(v75, v78);
    v81 = v120;
    v80 = v121;
    v82 = MEMORY[0x277CE13B0];
    if ((v64 & 1) == 0)
    {
      v82 = MEMORY[0x277CE13B8];
    }

    v83 = v122;
    (*(v121 + 104))(v120, *v82, v122);
    v84 = v110;
    (*(v80 + 32))(&v110[*(v113 + 36)], v81, v83);
    *v84 = v109;
    *(v84 + 8) = v70;
    *(v84 + 16) = v72 & 1;
    *(v84 + 24) = v74;
    KeyPath = swift_getKeyPath();
    v86 = v112;
    sub_2589DC1F4(v84, v112);
    v87 = v86 + *(v114 + 36);
    *v87 = KeyPath;
    *(v87 + 8) = 1;
    v88 = v111;
    sub_2589DC290(v86, v111);
    *(v88 + *(v115 + 36)) = 256;
    v89 = *(v96[0] + *(v101 + 32));
    sub_258B003E4();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v89 = sub_258A74828(0, *(v89 + 2) + 1, 1, v89);
    }

    v90 = v104;
    v91 = v102;
    v93 = *(v89 + 2);
    v92 = *(v89 + 3);
    if (v93 >= v92 >> 1)
    {
      v89 = sub_258A74828((v92 > 1), v93 + 1, 1, v89);
    }

    *(v89 + 2) = v93 + 1;
    v94 = &v89[16 * v93];
    *(v94 + 4) = 0x746E656D6F4DLL;
    *(v94 + 5) = 0xE600000000000000;
    v126 = &unk_2869D4670;
    v95 = sub_258B003E4();
    sub_2589FC8C8(v95);
    sub_2589DB8A8(0, &qword_280DF8948, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
    sub_2589C6824();
    sub_258B02A34();

    sub_2589DC2F4(&qword_27F96D1A8, sub_2589DB718, sub_2589DC374, MEMORY[0x277CDFC48]);
    sub_258B01DD4();

    sub_2589DC4D8(v88, sub_2589DB718);
    sub_2589DC470(v91, v90, sub_2589DB6B0);
    swift_storeEnumTagMultiPayload();
    sub_2589DC630();
    sub_2589DC0E8();
    sub_258B012A4();
    return sub_2589DC4D8(v91, sub_2589DB6B0);
  }
}

uint64_t sub_2589D9D84()
{
  sub_2589DB994(0, &qword_27F96D140, &qword_27F96D148, sub_2589DBA34, &qword_27F96D158);
  MEMORY[0x28223BE20](v1);
  v3 = &v15 - v2;
  sub_2589DBABC(0, &qword_27F96D190, MEMORY[0x277CE0330]);
  MEMORY[0x28223BE20](v4);
  v6 = &v15 - v5;
  v7 = v0 + *(_s16EntryDayDataViewVMa(0) + 28);
  v8 = (v7 + *(_s5EntryVMa(0) + 28));
  v10 = *v8;
  v9 = v8[1];
  v11 = v10 & 0xFFFFFFFFFFFFLL;
  if ((v9 & 0x2000000000000000) != 0)
  {
    v12 = HIBYTE(v9) & 0xF;
  }

  else
  {
    v12 = v11;
  }

  if (v12)
  {
    *v3 = sub_258B01194();
    *(v3 + 1) = 0;
    v3[16] = 0;
    sub_2589DBFDC(0, &qword_27F96D198, &qword_27F96D148, sub_2589DBA34);
    sub_2589DA9F4(v0, &v3[*(v13 + 44)]);
    sub_2589DC058(v3, v6);
    swift_storeEnumTagMultiPayload();
    sub_2589DC0E8();
    sub_258B012A4();
    return sub_2589DC16C(v3);
  }

  else
  {
    swift_storeEnumTagMultiPayload();
    sub_2589DC0E8();
    return sub_258B012A4();
  }
}

uint64_t sub_2589D9FA0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v103 = a2;
  v100 = sub_258B02554();
  v95 = *(v100 - 8);
  MEMORY[0x28223BE20](v100);
  v94 = v80 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = sub_258B006A4();
  v92 = *(v93 - 8);
  v4 = MEMORY[0x28223BE20](v93);
  v91 = v80 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v89 = v80 - v6;
  v82 = sub_258B019F4();
  v81 = *(v82 - 8);
  MEMORY[0x28223BE20](v82);
  v8 = v80 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2589DB83C(0, &qword_27F96CA20, MEMORY[0x277CDFC38], MEMORY[0x277CE0BD8], MEMORY[0x277CDFAB8]);
  v88 = v9 - 8;
  MEMORY[0x28223BE20](v9 - 8);
  v87 = v80 - v10;
  sub_2589DB778(0);
  v90 = v11 - 8;
  MEMORY[0x28223BE20](v11 - 8);
  v86 = v80 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2589DB718(0);
  v83 = v13;
  MEMORY[0x28223BE20](v13);
  v84 = v80 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2589DB6B0(0);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v102 = v80 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v101 = v80 - v18;
  v19 = type metadata accessor for StateOfMindTimeline.Styles(0);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = v80 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = _s16EntryDayDataViewVMa(0);
  v23 = *(v22 + 20);
  v24 = v22;
  v85 = v22;
  v25 = a1;
  v80[1] = v23;
  sub_258AC1060(v21);
  v80[0] = type metadata accessor for StateOfMindTimeline.Styles;
  sub_2589DC4D8(v21, type metadata accessor for StateOfMindTimeline.Styles);
  sub_258B024F4();
  sub_258B00854();
  v98 = v109;
  v99 = v107;
  v97 = v111;
  v96 = v112;
  v115 = 1;
  v114 = v108;
  v113 = v110;
  v26 = a1 + *(v24 + 28);
  v104 = v25;
  v27 = _s5EntryVMa(0);
  v28 = v26 + *(v27 + 20);
  v29 = *(v28 + 8);
  v105 = *v28;
  v106 = v29;
  sub_2589BFF58(v27, v30, v31);
  sub_258B003E4();
  v32 = sub_258B01B44();
  v34 = v33;
  LOBYTE(v25) = v35;
  sub_258AC1060(v21);
  sub_2589DC4D8(v21, type metadata accessor for StateOfMindTimeline.Styles);
  sub_258B018F4();
  v36 = v81;
  v37 = v82;
  (*(v81 + 104))(v8, *MEMORY[0x277CE0A10], v82);
  sub_258B01A14();

  (*(v36 + 8))(v8, v37);
  v38 = sub_258B01AE4();
  v40 = v39;
  LOBYTE(v36) = v41;
  v81 = v42;
  sub_2589BFFAC(v32, v34, v25 & 1);

  sub_258AC1060(v21);
  sub_2589DC4D8(v21, v80[0]);
  v43 = [objc_opt_self() labelColor];
  v105 = sub_258B01F94();
  v44 = sub_258B01AB4();
  v46 = v45;
  v48 = v47;
  v82 = v49;
  v50 = v84;
  sub_2589BFFAC(v38, v40, v36 & 1);

  v51 = v89;
  sub_2589D7544(v89);
  v52 = v92;
  v53 = v91;
  v54 = v93;
  (*(v92 + 104))(v91, *MEMORY[0x277CDF3D0], v93);
  LOBYTE(v24) = sub_258B00694();
  v55 = *(v52 + 8);
  v55(v53, v54);
  v55(v51, v54);
  v56 = v95;
  v57 = MEMORY[0x277CE13B0];
  if ((v24 & 1) == 0)
  {
    v57 = MEMORY[0x277CE13B8];
  }

  v58 = v94;
  v59 = v100;
  (*(v95 + 104))(v94, *v57, v100);
  v60 = v87;
  (*(v56 + 32))(&v87[*(v88 + 44)], v58, v59);
  *v60 = v44;
  *(v60 + 8) = v46;
  *(v60 + 16) = v48 & 1;
  *(v60 + 24) = v82;
  KeyPath = swift_getKeyPath();
  v62 = v86;
  sub_2589DC1F4(v60, v86);
  v63 = v62 + *(v90 + 44);
  *v63 = KeyPath;
  *(v63 + 8) = 1;
  sub_2589DC290(v62, v50);
  v64 = v50;
  *(v50 + *(v83 + 36)) = 256;
  v65 = *(v104 + *(v85 + 32));
  sub_258B003E4();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v65 = sub_258A74828(0, *(v65 + 2) + 1, 1, v65);
  }

  v67 = *(v65 + 2);
  v66 = *(v65 + 3);
  if (v67 >= v66 >> 1)
  {
    v65 = sub_258A74828((v66 > 1), v67 + 1, 1, v65);
  }

  *(v65 + 2) = v67 + 1;
  v68 = &v65[16 * v67];
  *(v68 + 4) = 0x746E656D6F4DLL;
  *(v68 + 5) = 0xE600000000000000;
  v105 = &unk_2869D4670;
  v69 = sub_258B003E4();
  sub_2589FC8C8(v69);
  sub_2589DB8A8(0, &qword_280DF8948, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
  sub_2589C6824();
  sub_258B02A34();

  sub_2589DC2F4(&qword_27F96D1A8, sub_2589DB718, sub_2589DC374, MEMORY[0x277CDFC48]);
  v70 = v101;
  sub_258B01DD4();

  sub_2589DC4D8(v64, sub_2589DB718);
  v71 = v115;
  v72 = v114;
  v73 = v113;
  v74 = v102;
  sub_2589DC470(v70, v102, sub_2589DB6B0);
  v75 = v103;
  *v103 = 0;
  *(v75 + 8) = v71;
  v76 = v98;
  v75[2] = v99;
  *(v75 + 24) = v72;
  v75[4] = v76;
  *(v75 + 40) = v73;
  v77 = v96;
  v75[6] = v97;
  v75[7] = v77;
  sub_2589DBA34(0);
  sub_2589DC470(v74, v75 + *(v78 + 48), sub_2589DB6B0);
  sub_2589DC4D8(v70, sub_2589DB6B0);
  return sub_2589DC4D8(v74, sub_2589DB6B0);
}

uint64_t sub_2589DA9F4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v114 = a2;
  v3 = sub_258B02554();
  v110 = *(v3 - 8);
  v111 = v3;
  MEMORY[0x28223BE20](v3);
  v109 = &v88 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = sub_258B006A4();
  v103 = *(v104 - 8);
  v5 = MEMORY[0x28223BE20](v104);
  v102 = &v88 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v100 = &v88 - v7;
  v95 = sub_258B019F4();
  v92 = *(v95 - 8);
  MEMORY[0x28223BE20](v95);
  v91 = &v88 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2589DB83C(0, &qword_27F96CA20, MEMORY[0x277CDFC38], MEMORY[0x277CE0BD8], MEMORY[0x277CDFAB8]);
  v99 = v9 - 8;
  MEMORY[0x28223BE20](v9 - 8);
  v98 = &v88 - v10;
  sub_2589DB778(0);
  v101 = v11 - 8;
  MEMORY[0x28223BE20](v11 - 8);
  v97 = &v88 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2589DB718(0);
  v93 = v13;
  MEMORY[0x28223BE20](v13);
  v96 = &v88 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2589DB6B0(0);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v113 = &v88 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v112 = &v88 - v18;
  v19 = _s6StylesV5DailyVMa(0);
  MEMORY[0x28223BE20](v19);
  v21 = &v88 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for StateOfMindTimeline.Styles(0);
  v23 = v22 - 8;
  v24 = MEMORY[0x28223BE20](v22);
  v26 = &v88 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v28 = &v88 - v27;
  v29 = _s16EntryDayDataViewVMa(0);
  v30 = *(v29 + 20);
  v31 = v29;
  v94 = v29;
  v90 = v30;
  sub_258AC1060(v28);
  sub_2589DC470(&v28[*(v23 + 64)], v21, _s6StylesV5DailyVMa);
  v89 = type metadata accessor for StateOfMindTimeline.Styles;
  sub_2589DC4D8(v28, type metadata accessor for StateOfMindTimeline.Styles);
  sub_2589DC4D8(v21, _s6StylesV5DailyVMa);
  sub_258B024F4();
  sub_258B00854();
  v108 = v121;
  v107 = v123;
  v106 = v125;
  v105 = v126;
  v120 = 1;
  v119 = v122;
  v118 = v124;
  v32 = *(v31 + 28);
  v115 = a1;
  v33 = a1 + v32;
  v34 = _s5EntryVMa(0);
  v35 = v33 + *(v34 + 28);
  v36 = *(v35 + 8);
  v116 = *v35;
  v117 = v36;
  sub_2589BFF58(v34, v37, v38);
  sub_258B003E4();
  v39 = sub_258B01B44();
  v41 = v40;
  LOBYTE(v23) = v42;
  sub_258AC1060(v26);
  sub_2589DC4D8(v26, type metadata accessor for StateOfMindTimeline.Styles);
  sub_258B018F4();
  v43 = v92;
  v44 = v91;
  v45 = v95;
  (*(v92 + 104))(v91, *MEMORY[0x277CE0A10], v95);
  sub_258B01A14();

  (*(v43 + 8))(v44, v45);
  v46 = sub_258B01AE4();
  v48 = v47;
  LOBYTE(v43) = v49;
  v95 = v50;
  sub_2589BFFAC(v39, v41, v23 & 1);

  sub_258AC1060(v26);
  sub_2589DC4D8(v26, v89);
  v51 = [objc_opt_self() secondaryLabelColor];
  v116 = sub_258B01F94();
  v52 = sub_258B01AB4();
  v54 = v53;
  v56 = v55;
  v58 = v57;
  sub_2589BFFAC(v46, v48, v43 & 1);

  v59 = v100;
  sub_2589D7544(v100);
  v60 = v103;
  v61 = v102;
  v62 = v104;
  (*(v103 + 104))(v102, *MEMORY[0x277CDF3D0], v104);
  v63 = sub_258B00694();
  v64 = *(v60 + 8);
  v64(v61, v62);
  v64(v59, v62);
  v66 = v109;
  v65 = v110;
  v67 = MEMORY[0x277CE13B0];
  if ((v63 & 1) == 0)
  {
    v67 = MEMORY[0x277CE13B8];
  }

  v68 = v111;
  (*(v110 + 104))(v109, *v67, v111);
  v69 = v98;
  (*(v65 + 32))(&v98[*(v99 + 44)], v66, v68);
  *v69 = v52;
  *(v69 + 8) = v54;
  v70 = v96;
  *(v69 + 16) = v56 & 1;
  *(v69 + 24) = v58;
  KeyPath = swift_getKeyPath();
  v72 = v97;
  sub_2589DC1F4(v69, v97);
  v73 = v72 + *(v101 + 44);
  *v73 = KeyPath;
  *(v73 + 8) = 1;
  sub_2589DC290(v72, v70);
  *(v70 + *(v93 + 36)) = 256;
  v74 = *(v115 + *(v94 + 32));
  sub_258B003E4();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v74 = sub_258A74828(0, *(v74 + 2) + 1, 1, v74);
  }

  v76 = *(v74 + 2);
  v75 = *(v74 + 3);
  if (v76 >= v75 >> 1)
  {
    v74 = sub_258A74828((v75 > 1), v76 + 1, 1, v74);
  }

  *(v74 + 2) = v76 + 1;
  v77 = &v74[16 * v76];
  *(v77 + 4) = 0xD000000000000011;
  *(v77 + 5) = 0x8000000258B36660;
  v116 = &unk_2869D4670;
  v78 = sub_258B003E4();
  sub_2589FC8C8(v78);
  sub_2589DB8A8(0, &qword_280DF8948, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
  sub_2589C6824();
  sub_258B02A34();

  sub_2589DC2F4(&qword_27F96D1A8, sub_2589DB718, sub_2589DC374, MEMORY[0x277CDFC48]);
  v79 = v112;
  sub_258B01DD4();

  sub_2589DC4D8(v70, sub_2589DB718);
  v80 = v120;
  v81 = v119;
  v82 = v118;
  v83 = v113;
  sub_2589DC470(v79, v113, sub_2589DB6B0);
  v84 = v114;
  *v114 = 0;
  *(v84 + 8) = v80;
  v84[2] = v108;
  *(v84 + 24) = v81;
  v84[4] = v107;
  *(v84 + 40) = v82;
  v85 = v105;
  v84[6] = v106;
  v84[7] = v85;
  sub_2589DBA34(0);
  sub_2589DC470(v83, v84 + *(v86 + 48), sub_2589DB6B0);
  sub_2589DC4D8(v79, sub_2589DB6B0);
  return sub_2589DC4D8(v83, sub_2589DB6B0);
}

void sub_2589DB514(uint64_t a1)
{
  if (!qword_27F96D100)
  {
    sub_2589DB630(255);
    sub_2589DC8AC(255, &qword_27F96C7B8, MEMORY[0x277CE1180], MEMORY[0x277CDF688]);
    sub_2589DB83C(255, &qword_27F96D118, sub_2589DB6B0, MEMORY[0x277CE1428], MEMORY[0x277CE0338]);
    v1 = MEMORY[0x277CE0338];
    sub_2589DB8F8(255, &qword_27F96D138, MEMORY[0x277CE0338]);
    sub_2589DBABC(255, &qword_27F96D160, v1);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v3)
    {
      atomic_store(TupleTypeMetadata, &qword_27F96D100);
    }
  }
}

void sub_2589DB630(uint64_t a1)
{
  if (!qword_27F96D108)
  {
    sub_2589DC8AC(255, &qword_27F96D110, &type metadata for StateOfMindVisualization.ValenceImage, MEMORY[0x277CDF688]);
    sub_258B017D4();
    v1 = sub_258B00B04();
    if (!v2)
    {
      atomic_store(v1, &qword_27F96D108);
    }
  }
}

void sub_2589DB6B0(uint64_t a1)
{
  if (!qword_27F96D120)
  {
    sub_2589DB718(255);
    sub_258B017D4();
    v1 = sub_258B00B04();
    if (!v2)
    {
      atomic_store(v1, &qword_27F96D120);
    }
  }
}

void sub_2589DB718(uint64_t a1)
{
  if (!qword_27F96D128)
  {
    sub_2589DB778(255);
    v1 = sub_258B00B04();
    if (!v2)
    {
      atomic_store(v1, &qword_27F96D128);
    }
  }
}

void sub_2589DB778(uint64_t a1)
{
  if (!qword_27F96D130)
  {
    sub_2589DB83C(255, &qword_27F96CA20, MEMORY[0x277CDFC38], MEMORY[0x277CE0BD8], MEMORY[0x277CDFAB8]);
    sub_2589DB8A8(255, &qword_27F96C8C0, MEMORY[0x277CDF720], MEMORY[0x277CE0860]);
    v1 = sub_258B00B04();
    if (!v2)
    {
      atomic_store(v1, &qword_27F96D130);
    }
  }
}

void sub_2589DB83C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

void sub_2589DB8A8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_2589DB8F8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_2589DB6B0(255);
    v7 = v6;
    sub_2589DB994(255, &qword_27F96D140, &qword_27F96D148, sub_2589DBA34, &qword_27F96D158);
    v9 = a3(a1, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_2589DB994(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t), unint64_t *a5)
{
  if (!*a2)
  {
    sub_2589DC5CC(255, a3, a4, MEMORY[0x277CE14B8]);
    sub_2589DBB50(a5, a3, a4);
    v9 = sub_258B022D4();
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_2589DBA34(uint64_t a1)
{
  if (!qword_27F96D150)
  {
    sub_2589DC8AC(255, &qword_27F96C7B8, MEMORY[0x277CE1180], MEMORY[0x277CDF688]);
    sub_2589DB6B0(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F96D150);
    }
  }
}

void sub_2589DBABC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void, uint64_t))
{
  if (!*a2)
  {
    sub_2589DB994(255, &qword_27F96D140, &qword_27F96D148, sub_2589DBA34, &qword_27F96D158);
    v7 = a3(a1, MEMORY[0x277CE1428], v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_2589DBB50(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_2589DC5CC(255, a2, a3, MEMORY[0x277CE14B8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_2589DBBB4(uint64_t a1)
{
  if (!qword_27F96D170)
  {
    sub_2589DB994(255, &qword_27F96D0F0, &qword_27F96D0F8, sub_2589DB514, &qword_27F96D168);
    v1 = sub_258B00B04();
    if (!v2)
    {
      atomic_store(v1, &qword_27F96D170);
    }
  }
}

uint64_t sub_2589DBC40(uint64_t a1, uint64_t a2)
{
  sub_2589DB994(0, &qword_27F96D0F0, &qword_27F96D0F8, sub_2589DB514, &qword_27F96D168);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_2589DBCD0()
{
  result = qword_27F96D188;
  if (!qword_27F96D188)
  {
    sub_2589DB994(255, &qword_27F96D0F0, &qword_27F96D0F8, sub_2589DB514, &qword_27F96D168);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96D188);
  }

  return result;
}

uint64_t sub_2589DBD54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = (a5)(0, a2, a3, a4);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_2589DBDB4(uint64_t a1, uint64_t a2)
{
  sub_2589DB83C(0, &qword_27F96D118, sub_2589DB6B0, MEMORY[0x277CE1428], MEMORY[0x277CE0338]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2589DBE50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void, uint64_t, void))
{
  v6 = a4(0, a3, MEMORY[0x277CE0338]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_2589DBED0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void, uint64_t, void))
{
  v4 = a3(0, a2, MEMORY[0x277CE0338]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2589DBF48(uint64_t a1)
{
  sub_2589DB83C(0, &qword_27F96D118, sub_2589DB6B0, MEMORY[0x277CE1428], MEMORY[0x277CE0338]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_2589DBFDC(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    sub_2589DC5CC(255, a3, a4, MEMORY[0x277CE14B8]);
    v5 = sub_258B00974();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_2589DC058(uint64_t a1, uint64_t a2)
{
  sub_2589DB994(0, &qword_27F96D140, &qword_27F96D148, sub_2589DBA34, &qword_27F96D158);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_2589DC0E8()
{
  result = qword_27F96D1A0;
  if (!qword_27F96D1A0)
  {
    sub_2589DB994(255, &qword_27F96D140, &qword_27F96D148, sub_2589DBA34, &qword_27F96D158);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96D1A0);
  }

  return result;
}

uint64_t sub_2589DC16C(uint64_t a1)
{
  sub_2589DB994(0, &qword_27F96D140, &qword_27F96D148, sub_2589DBA34, &qword_27F96D158);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2589DC1F4(uint64_t a1, uint64_t a2)
{
  sub_2589DB83C(0, &qword_27F96CA20, MEMORY[0x277CDFC38], MEMORY[0x277CE0BD8], MEMORY[0x277CDFAB8]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2589DC290(uint64_t a1, uint64_t a2)
{
  sub_2589DB778(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2589DC2F4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t (*a3)(void), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2589DC374()
{
  result = qword_27F96D1B0;
  if (!qword_27F96D1B0)
  {
    sub_2589DB778(255);
    sub_2589C6AE0();
    sub_2589DC3F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96D1B0);
  }

  return result;
}

unint64_t sub_2589DC3F4()
{
  result = qword_27F96D1B8;
  if (!qword_27F96D1B8)
  {
    sub_2589DB8A8(255, &qword_27F96C8C0, MEMORY[0x277CDF720], MEMORY[0x277CE0860]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96D1B8);
  }

  return result;
}

uint64_t sub_2589DC470(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2589DC4D8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2589DC538(uint64_t a1, uint64_t a2)
{
  sub_2589DC5CC(0, &qword_27F96C908, MEMORY[0x277CDF3E0], MEMORY[0x277CDF458]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_2589DC5CC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_2589DC630()
{
  result = qword_27F96D1D0;
  if (!qword_27F96D1D0)
  {
    sub_2589DB6B0(255);
    sub_2589DC2F4(&qword_27F96D1A8, sub_2589DB718, sub_2589DC374, MEMORY[0x277CDFC48]);
    sub_2589DC6E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96D1D0);
  }

  return result;
}

unint64_t sub_2589DC6E8()
{
  result = qword_280DF8950;
  if (!qword_280DF8950)
  {
    sub_258B017D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DF8950);
  }

  return result;
}

unint64_t sub_2589DC740()
{
  result = qword_27F96D1E0;
  if (!qword_27F96D1E0)
  {
    sub_2589DC8AC(255, &qword_27F96D110, &type metadata for StateOfMindVisualization.ValenceImage, MEMORY[0x277CDF688]);
    sub_2589DC7D8(v1, v2, v3);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96D1E0);
  }

  return result;
}

unint64_t sub_2589DC7D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27F96D1E8;
  if (!qword_27F96D1E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96D1E8);
  }

  return result;
}

unint64_t sub_2589DC82C()
{
  result = qword_27F96D1F0;
  if (!qword_27F96D1F0)
  {
    sub_2589BFBAC(255);
    sub_2589DC3F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96D1F0);
  }

  return result;
}

void sub_2589DC8AC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  if (!*a2)
  {
    v5 = sub_258B00B04();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_2589DC8FC()
{
  result = qword_27F96D200[0];
  if (!qword_27F96D200[0])
  {
    sub_2589DC8AC(255, &qword_27F96D1F8, MEMORY[0x277CE0BD8], MEMORY[0x277CDFC50]);
    result = swift_getWitnessTable();
    atomic_store(result, qword_27F96D200);
  }

  return result;
}

void sub_2589DC994(uint64_t a1)
{
  sub_2589DE924(319, &qword_27F96D288, &type metadata for StateOfMindEntryPhaseButtonConfiguration, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      sub_2589DE104(319, &qword_27F96D290, type metadata accessor for AssociationSelectionPhaseSpecs, MEMORY[0x277CDF468]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_2589DCA88(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFE)
  {
    v8 = 2147483646;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(sub_258B01504() - 8);
  v10 = *(v9 + 84);
  v11 = *(v9 + 64);
  v12 = sub_258B00AA4();
  v13 = *(*(v12 - 8) + 80);
  v14 = *(v6 + 80);
  if (v10)
  {
    v15 = v11;
  }

  else
  {
    v15 = v11 + 1;
  }

  v16 = 8;
  if (((v15 + v13) & ~v13) + *(*(v12 - 8) + 64) > 8)
  {
    v16 = ((v15 + v13) & ~v13) + *(*(v12 - 8) + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 <= v8)
  {
    goto LABEL_31;
  }

  v17 = (*(v9 + 80) | v13) & 0xF8 | 7u;
  v18 = v16 + ((((v14 + 80) & ~v14) + *(v6 + 64) + v17) & ~v17) + 1;
  v19 = 8 * v18;
  if (v18 <= 3)
  {
    v22 = ((a2 - v8 + ~(-1 << v19)) >> v19) + 1;
    if (HIWORD(v22))
    {
      v20 = *(a1 + v18);
      if (!v20)
      {
        goto LABEL_31;
      }

      goto LABEL_20;
    }

    if (v22 > 0xFF)
    {
      v20 = *(a1 + v18);
      if (!*(a1 + v18))
      {
        goto LABEL_31;
      }

      goto LABEL_20;
    }

    if (v22 < 2)
    {
LABEL_31:
      if (v7 > 0x7FFFFFFE)
      {
        v25 = *(v6 + 48);

        return v25((a1 + v14 + 80) & ~v14, v7, v5);
      }

      else
      {
        v24 = *(a1 + 1);
        if (v24 >= 0xFFFFFFFF)
        {
          LODWORD(v24) = -1;
        }

        if ((v24 + 1) >= 2)
        {
          return v24;
        }

        else
        {
          return 0;
        }
      }
    }
  }

  v20 = *(a1 + v18);
  if (!*(a1 + v18))
  {
    goto LABEL_31;
  }

LABEL_20:
  v23 = (v20 - 1) << v19;
  if (v18 > 3)
  {
    v23 = 0;
  }

  if (v18)
  {
    if (v18 > 3)
    {
      LODWORD(v18) = 4;
    }

    if (v18 > 2)
    {
      if (v18 == 3)
      {
        LODWORD(v18) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v18) = *a1;
      }
    }

    else if (v18 == 1)
    {
      LODWORD(v18) = *a1;
    }

    else
    {
      LODWORD(v18) = *a1;
    }
  }

  return v8 + (v18 | v23) + 1;
}

void sub_2589DCD74(_WORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v29 = *(a4 + 16);
  v7 = *(v29 - 8);
  v30 = v7;
  v8 = *(v7 + 84);
  if (v8 <= 0x7FFFFFFE)
  {
    v9 = 2147483646;
  }

  else
  {
    v9 = *(v7 + 84);
  }

  v10 = *(sub_258B01504() - 8);
  v11 = *(v10 + 84);
  v12 = *(v10 + 64);
  v13 = *(sub_258B00AA4() - 8);
  v14 = *(v13 + 80);
  v15 = *(v13 + 64);
  v16 = *(v7 + 80);
  v17 = (*(v10 + 80) | *(v13 + 80)) & 0xF8 | 7u;
  v18 = (((v16 + 80) & ~v16) + *(v7 + 64) + v17) & ~v17;
  if (v11)
  {
    v19 = v12;
  }

  else
  {
    v19 = v12 + 1;
  }

  v20 = ((v19 + v14) & ~v14) + v15;
  if (v20 <= 8)
  {
    v20 = 8;
  }

  v21 = v20 + v18 + 1;
  if (a3 <= v9)
  {
    v22 = 0;
  }

  else if (v21 <= 3)
  {
    v25 = ((a3 - v9 + ~(-1 << (8 * v21))) >> (8 * v21)) + 1;
    if (HIWORD(v25))
    {
      v22 = 4;
    }

    else
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
        v22 = v26;
      }

      else
      {
        v22 = 0;
      }
    }
  }

  else
  {
    v22 = 1;
  }

  if (v9 < a2)
  {
    v23 = ~v9 + a2;
    if (v21 < 4)
    {
      v24 = (v23 >> (8 * v21)) + 1;
      if (v21)
      {
        v27 = v23 & ~(-1 << (8 * v21));
        bzero(a1, v21);
        if (v21 != 3)
        {
          if (v21 == 2)
          {
            *a1 = v27;
            if (v22 > 1)
            {
LABEL_51:
              if (v22 == 2)
              {
                *(a1 + v21) = v24;
              }

              else
              {
                *(a1 + v21) = v24;
              }

              return;
            }
          }

          else
          {
            *a1 = v23;
            if (v22 > 1)
            {
              goto LABEL_51;
            }
          }

          goto LABEL_48;
        }

        *a1 = v27;
        *(a1 + 2) = BYTE2(v27);
      }

      if (v22 > 1)
      {
        goto LABEL_51;
      }
    }

    else
    {
      bzero(a1, v21);
      *a1 = v23;
      v24 = 1;
      if (v22 > 1)
      {
        goto LABEL_51;
      }
    }

LABEL_48:
    if (v22)
    {
      *(a1 + v21) = v24;
    }

    return;
  }

  if (v22 > 1)
  {
    if (v22 != 2)
    {
      *(a1 + v21) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_36;
    }

    *(a1 + v21) = 0;
  }

  else if (v22)
  {
    *(a1 + v21) = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_36;
  }

  if (!a2)
  {
    return;
  }

LABEL_36:
  if (v8 > 0x7FFFFFFE)
  {
    v28 = *(v30 + 56);

    v28((a1 + v16 + 80) & ~v16, a2, v8, v29);
  }

  else if (a2 > 0x7FFFFFFE)
  {
    *(a1 + 3) = 0u;
    *(a1 + 4) = 0u;
    *(a1 + 1) = 0u;
    *(a1 + 2) = 0u;
    *a1 = 0u;
    *a1 = a2 - 0x7FFFFFFF;
  }

  else
  {
    *(a1 + 1) = a2;
  }
}