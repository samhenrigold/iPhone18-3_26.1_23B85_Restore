uint64_t sub_2748F1F00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096ECF8, &qword_274A21E70);
  sub_27488EE4C(&unk_28096ED00);
  return sub_2749FBE34();
}

uint64_t sub_2748F1FA8@<X0>(char *a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v40 = a5;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096ED08, &qword_274A21E78);
  MEMORY[0x28223BE20](v38);
  v34 = &v33 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096ED10, &qword_274A21E80);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v33 - v14;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096ED18, &unk_274A21E88);
  v36 = *(v39 - 8);
  v16 = MEMORY[0x28223BE20](v39);
  v37 = &v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v19 = &v33 - v18;
  v35 = a1;
  v41 = a1;
  v42 = a2;
  v43 = a3;
  v44 = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096ED20, &unk_274A13370);
  sub_27488EE4C(&qword_2809689C0);
  v20 = v19;
  sub_2749FC794();
  if (sub_2747D93B8())
  {
    v21 = v34;
    sub_2748F233C(v35, a2, a3, a4, v34);
    sub_27475CF54(v21, v15, &qword_28096ED08, &qword_274A21E78);
    v22 = 0;
  }

  else
  {
    v22 = 1;
  }

  __swift_storeEnumTagSinglePayload(v15, v22, 1, v38);
  v23 = v36;
  v24 = v37;
  v25 = *(v36 + 16);
  v26 = v20;
  v27 = v39;
  v25(v37, v20, v39);
  sub_27473F28C(v15, v13, &qword_28096ED10, &qword_274A21E80);
  v28 = v13;
  v29 = v40;
  v25(v40, v24, v27);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096ED30, &qword_274A21E98);
  sub_27473F28C(v28, &v29[*(v30 + 48)], &qword_28096ED10, &qword_274A21E80);
  sub_27478C584(v15, &qword_28096ED10);
  v31 = *(v23 + 8);
  v31(v26, v27);
  sub_27478C584(v28, &qword_28096ED10);
  return (v31)(v24, v27);
}

uint64_t sub_2748F233C@<X0>(char *a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v118 = a2;
  v119 = a3;
  v117 = a1;
  v108 = a5;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096ED38, &qword_274A21EA0);
  v110 = *(v111 - 8);
  v6 = MEMORY[0x28223BE20](v111);
  v109 = &v102 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v115 = &v102 - v8;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096ED40, &qword_274A21EA8);
  v105 = *(v106 - 8);
  MEMORY[0x28223BE20](v106);
  v104 = &v102 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096ED48, &qword_274A21EB0);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v107 = &v102 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v102 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096ED50, &qword_274A21EB8);
  v103 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v102 = &v102 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096ED58, &qword_274A21EC0);
  v18 = MEMORY[0x28223BE20](v17 - 8);
  v114 = &v102 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v120 = &v102 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096ED60, &qword_274A21EC8);
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v24 = &v102 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096ED68, &qword_274A21ED0);
  v26 = MEMORY[0x28223BE20](v25 - 8);
  v113 = &v102 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v29 = &v102 - v28;
  v30 = sub_2747D753C();
  v31 = sub_27472D918(v30);

  v112 = v14;
  v116 = v29;
  if (v31)
  {
    sub_2749FCE14("Allow this shortcut to access", 29);
    if (qword_28159E3A8 != -1)
    {
      swift_once();
    }

    v32 = qword_28159E448;
    v33 = sub_2749FCD64();
    v34 = sub_2749FCD64();

    v35 = [v32 localizedStringForKey:v33 value:v34 table:0];

    v36 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
    v38 = v37;

    v121 = v36;
    v122 = v38;
    v123 = 0;
    v124 = 0;
    MEMORY[0x28223BE20](v39);
    v40 = v118;
    *(&v102 - 4) = v117;
    *(&v102 - 3) = v40;
    v100 = v119;
    v101 = a4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096ED70, &unk_274A21ED8);
    sub_2748550D0();
    sub_2748F54CC();
    sub_2749FC784();
    v29 = v116;
    (*(v22 + 32))(v116, v24, v21);
    v41 = 0;
    v14 = v112;
  }

  else
  {
    v41 = 1;
  }

  v42 = 1;
  __swift_storeEnumTagSinglePayload(v29, v41, 1, v21);
  v43 = *(sub_2747D7114() + 16);

  if (v43)
  {
    v121 = sub_2747D7114();
    swift_getKeyPath();
    v44 = swift_allocObject();
    v44[2] = v117;
    v45 = v119;
    v44[3] = v118;
    v44[4] = v45;
    v44[5] = a4;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096ED90, &qword_274A21F00);
    sub_27488EE4C(&unk_28096ED98);
    sub_2748F555C();
    v100 = sub_2748F55B0();
    v46 = v102;
    sub_2749FC754();
    v47 = v120;
    (*(v103 + 32))(v120, v46, v15);
    v42 = 0;
  }

  else
  {
    v47 = v120;
  }

  v48 = 1;
  __swift_storeEnumTagSinglePayload(v47, v42, 1, v15);
  v49 = sub_2747D7100();
  v50 = sub_27472D918(v49);

  if (v50)
  {
    sub_2749FCE14("Allow this shortcut to delete data?", 35);
    if (qword_28159E3A8 != -1)
    {
      swift_once();
    }

    v51 = qword_28159E448;
    v52 = sub_2749FCD64();
    v53 = sub_2749FCD64();

    v54 = [v51 localizedStringForKey:v52 value:v53 table:0];

    v55 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
    v57 = v56;

    sub_2749FCE14("Deletion is a permanent action.", 31);
    v58 = sub_2749FCD64();
    v59 = sub_2749FCD64();

    v60 = [v51 localizedStringForKey:v58 value:v59 table:0];

    v61 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
    v63 = v62;

    v121 = v55;
    v122 = v57;
    v123 = v61;
    v124 = v63;
    MEMORY[0x28223BE20](v64);
    v65 = v118;
    *(&v102 - 4) = v117;
    *(&v102 - 3) = v65;
    v100 = v119;
    v101 = a4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096EDB0, &qword_274A21F08);
    sub_2748550D0();
    sub_2748F5654();
    v66 = v104;
    sub_2749FC784();
    v67 = v106;
    (*(v105 + 32))(v14, v66, v106);
    v48 = 0;
  }

  else
  {
    v67 = v106;
  }

  __swift_storeEnumTagSinglePayload(v14, v48, 1, v67);
  sub_2749FCE14("Resetting this shortcut's privileges will not modify its actions or your data.", 78);
  if (qword_28159E3A8 != -1)
  {
    swift_once();
  }

  v68 = qword_28159E448;
  v69 = sub_2749FCD64();
  v70 = sub_2749FCD64();

  v71 = [v68 localizedStringForKey:v69 value:v70 table:0];

  v72 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  v74 = v73;

  v121 = v72;
  v122 = v74;
  sub_27475D0D0();
  v75 = sub_2749FBEE4();
  v77 = v76;
  LOBYTE(v74) = v78;
  v80 = v79;
  v81 = sub_2749FBC74();
  v82 = sub_2749FA9E4();
  v132 = v74 & 1;
  v131 = 0;
  v121 = v75;
  v122 = v77;
  LOBYTE(v123) = v74 & 1;
  v124 = v80;
  v125 = v81;
  v126 = v83;
  v127 = v84;
  v128 = v85;
  v129 = v86;
  v130 = 0;
  MEMORY[0x28223BE20](v82);
  v87 = v118;
  *(&v102 - 4) = v117;
  *(&v102 - 3) = v87;
  v100 = v119;
  v101 = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096EDD0, &qword_274A1E9B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967F68, &unk_274A10A20);
  sub_27489FAD0();
  sub_27478081C();
  v88 = v115;
  sub_2749FC7A4();
  v89 = v113;
  sub_27473F28C(v116, v113, &qword_28096ED68, &qword_274A21ED0);
  v90 = v114;
  sub_27473F28C(v120, v114, &qword_28096ED58, &qword_274A21EC0);
  v91 = v107;
  sub_27473F28C(v14, v107, &qword_28096ED48, &qword_274A21EB0);
  v92 = v110;
  v93 = *(v110 + 16);
  v94 = v109;
  v95 = v111;
  v93(v109, v88, v111);
  v96 = v108;
  sub_27473F28C(v89, v108, &qword_28096ED68, &qword_274A21ED0);
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096EDE0, &qword_274A21F20);
  sub_27473F28C(v90, v96 + v97[12], &qword_28096ED58, &qword_274A21EC0);
  sub_27473F28C(v91, v96 + v97[16], &qword_28096ED48, &qword_274A21EB0);
  v93((v96 + v97[20]), v94, v95);
  v98 = *(v92 + 8);
  v98(v115, v95);
  sub_27478C584(v112, &qword_28096ED48);
  sub_27478C584(v120, &qword_28096ED58);
  sub_27478C584(v116, &qword_28096ED68);
  v98(v94, v95);
  sub_27478C584(v91, &qword_28096ED48);
  sub_27478C584(v114, &qword_28096ED58);
  return sub_27478C584(v113, &qword_28096ED68);
}

uint64_t sub_2748F305C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_2747D753C();
  swift_getKeyPath();
  v8 = swift_allocObject();
  v8[2] = a1;
  v8[3] = a2;
  v8[4] = a3;
  v8[5] = a4;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280969110, &qword_274A14760);
  sub_27488EE4C(&unk_28096EDF0);
  sub_2748F0FD0(&qword_2809688B0);
  sub_27486A944();
  return sub_2749FC754();
}

uint64_t sub_2748F31A8@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = sub_2747DDFC8([*a1 contentDestination]);
  v6 = v5;
  v7 = [v3 contentDestination];
  v8 = [v7 icon];

  result = sub_2747D9438(v3);
  *a2 = 2;
  *(a2 + 8) = v4;
  *(a2 + 16) = v6;
  *(a2 + 24) = v8;
  *(a2 + 32) = result;
  *(a2 + 40) = v10;
  *(a2 + 48) = v11;
  return result;
}

uint64_t sub_2748F325C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  sub_2749FCE14("Reset Privacy", 13);
  if (qword_28159E3A8 != -1)
  {
    swift_once();
  }

  v10 = qword_28159E448;
  v11 = sub_2749FCD64();
  v12 = sub_2749FCD64();

  v13 = [v10 localizedStringForKey:v11 value:v12 table:0];

  _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  v14 = swift_allocObject();
  v14[2] = a1;
  v14[3] = a2;
  v14[4] = a3;
  v14[5] = a4;
  sub_27475D0D0();

  sub_2749FC644();
  v15 = sub_2749FC424();
  KeyPath = swift_getKeyPath();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096EDD0, &qword_274A1E9B0);
  v18 = (a5 + *(result + 36));
  *v18 = KeyPath;
  v18[1] = v15;
  return result;
}

uint64_t sub_2748F3414(__int128 *a1)
{
  v17 = *a1;
  sub_2749FCE14("Allow %@ to use", 15);
  if (qword_28159E3A8 != -1)
  {
    swift_once();
  }

  v6 = qword_28159E448;
  v7 = sub_2749FCD64();
  v8 = sub_2749FCD64();

  v9 = [v6 localizedStringForKey:v7 value:v8 table:0];

  _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967628, &qword_274A0FF40);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_274A0EF10;
  v11 = [v17 localizedName];
  v12 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  v14 = v13;

  *(v10 + 56) = MEMORY[0x277D837D0];
  *(v10 + 64) = sub_27475C4F4();
  *(v10 + 32) = v12;
  *(v10 + 40) = v14;
  sub_2749FCD74();

  MEMORY[0x28223BE20](v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096ED70, &unk_274A21ED8);
  sub_2748550D0();
  sub_2748F54CC();
  return sub_2749FC784();
}

uint64_t sub_2748F366C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getKeyPath();
  v10 = swift_allocObject();
  v10[2] = a3;
  v10[3] = a4;
  v10[4] = a5;
  v10[5] = a6;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280969110, &qword_274A14760);
  sub_27488EE4C(&unk_28096EDF0);
  sub_2748F0FD0(&qword_2809688B0);
  sub_27486A944();
  return sub_2749FC754();
}

uint64_t sub_2748F37BC@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = [*a1 sourceContentAttribution];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 origin];

    v5 = sub_2747DDFC8(v6);
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = [v3 sourceContentAttribution];
  v10 = v9;
  if (v9)
  {
    v11 = [v9 origin];

    v10 = [v11 icon];
  }

  result = sub_2747D9438(v3);
  *a2 = 0;
  *(a2 + 8) = v5;
  *(a2 + 16) = v8;
  *(a2 + 24) = v10;
  *(a2 + 32) = result;
  *(a2 + 40) = v13;
  *(a2 + 48) = v14;
  return result;
}

uint64_t sub_2748F38C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_2749FD0A4();

  v8 = sub_2749FD094();
  v9 = swift_allocObject();
  v10 = MEMORY[0x277D85700];
  v9[2] = v8;
  v9[3] = v10;
  v9[4] = a1;
  v9[5] = a2;
  v9[6] = a3;
  v9[7] = a4;

  v11 = sub_2749FD094();
  v12 = swift_allocObject();
  v12[2] = v11;
  v12[3] = v10;
  v12[4] = a1;
  v12[5] = a2;
  v12[6] = a3;
  v12[7] = a4;
  sub_2749FC6F4();
  return v14;
}

void sub_2748F39E0(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  [*(a5 + 16) setDisabledOnLockScreen_];

  sub_2748F3A50(a4, a5, a6, a7);
}

void sub_2748F3A50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a2 + 16);
  v9 = swift_allocObject();
  v9[2] = a1;
  v9[3] = a2;
  v9[4] = a3;
  v9[5] = a4;
  v11[4] = sub_2748F5888;
  v11[5] = v9;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 1107296256;
  v11[2] = sub_274865810;
  v11[3] = &block_descriptor_37;
  v10 = _Block_copy(v11);

  [v8 saveWithCompletionBlock_];
  _Block_release(v10);
}

uint64_t sub_2748F3B50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_2748F38C4(a1, a2, a3, a4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809689C8, &qword_274A13380);
  sub_27488EE4C(&qword_28096EC60);
  return sub_2749FC674();
}

uint64_t sub_2748F3C34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_2749FA304();
  sub_2748E9FC0(&qword_28159E800);
  return sub_2749FC584();
}

uint64_t sub_2748F3CFC@<X0>(uint64_t a1@<X8>)
{
  sub_2749FCE14("Allow Running When Locked", 25);
  if (qword_28159E3A8 != -1)
  {
    swift_once();
  }

  v2 = qword_28159E448;
  v3 = sub_2749FCD64();
  v4 = sub_2749FCD64();

  v5 = [v2 localizedStringForKey:v3 value:v4 table:0];

  _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  sub_27475D0D0();
  result = sub_2749FBEE4();
  *a1 = result;
  *(a1 + 8) = v7;
  *(a1 + 16) = v8 & 1;
  *(a1 + 24) = v9;
  return result;
}

uint64_t sub_2748F3E1C@<X0>(uint64_t a5@<X8>)
{
  v20[1] = a5;
  v5 = sub_2749FA2F4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2749FA2C4();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2748F404C();
  v15 = v14;
  v16 = [objc_allocWithZone(MEMORY[0x277D79E20]) initWithSystemColor_];
  v17 = [objc_allocWithZone(MEMORY[0x277D79FB8]) initWithColor_];

  v18 = objc_allocWithZone(MEMORY[0x277D7A158]);
  sub_27491A250(v13, v15, v17);
  (*(v10 + 104))(v12, *MEMORY[0x277D7D6A0], v9);
  (*(v6 + 104))(v8, *MEMORY[0x277D7D6D0], v5);
  return sub_2749FA314();
}

uint64_t sub_2748F404C()
{
  v0 = [objc_opt_self() currentDevice];
  v1 = [v0 idiom];

  result = 0x7369642E6B636F6CLL;
  switch(v1)
  {
    case 0uLL:
    case 4uLL:
      result = 0x6870692E6B636F6CLL;
      break;
    case 1uLL:
      result = 0x6170692E6B636F6CLL;
      break;
    case 2uLL:
      return result;
    case 3uLL:
      result = 0x7070612E6B636F6CLL;
      break;
    default:
      result = 1801678700;
      break;
  }

  return result;
}

uint64_t sub_2748F4154(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_2749FCA74();
  v20 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_2749FCAA4();
  v12 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_27471CF08(0, &qword_28159E4E0, 0x277D85C78);
  v15 = sub_2749FD404();
  v16 = swift_allocObject();
  v16[2] = a2;
  v16[3] = a3;
  v16[4] = a4;
  v16[5] = a5;
  aBlock[4] = sub_2748F589C;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_274760264;
  aBlock[3] = &block_descriptor_152;
  v17 = _Block_copy(aBlock);

  sub_2749FCA94();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_2748E9FC0(&qword_28159E580);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096DB60, &qword_274A0F640);
  sub_27488EE4C(&qword_28159E530);
  sub_2749FD7B4();
  MEMORY[0x277C5F170](0, v14, v11, v17);
  _Block_release(v17);

  (*(v20 + 8))(v11, v9);
  return (*(v12 + 8))(v14, v19);
}

double sub_2748F4464()
{
  type metadata accessor for ShortcutDetailsViewModel(0);
  sub_2748E9FC0(&qword_280967808);
  sub_2749FA874();
  sub_2749FA894();

  return result;
}

uint64_t sub_2748F44F8@<X0>(uint64_t a2@<X1>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v33 = a5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096EE90, &qword_274A22080) - 8;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v11);
  v13 = &v33 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096EE98, &qword_274A22088);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v15);
  v17 = &v33 - v16;
  v18 = sub_2749FB644();
  v37 = 0;
  sub_2748F4834(a2, a4, v35);
  memcpy(v38, v35, 0x51uLL);
  memcpy(__dst, v35, 0x51uLL);
  sub_27473F28C(v38, &v34, &qword_28096EEA0, &qword_274A22090);
  sub_27478C584(__dst, &qword_28096EEA0);
  memcpy(&v36[7], v38, 0x51uLL);
  v19 = v37;
  v20 = &v13[*(v10 + 44)];
  v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096EEA8, &qword_274A22098) + 28);
  v22 = sub_2749FBEA4();
  __swift_storeEnumTagSinglePayload(v20 + v21, 1, 1, v22);
  *v20 = swift_getKeyPath();
  *v13 = v18;
  *(v13 + 1) = 0x4010000000000000;
  v13[16] = v19;
  memcpy(v13 + 17, v36, 0x58uLL);
  v23 = sub_2749FBC54();
  v24 = [objc_opt_self() mainScreen];
  [v24 bounds];
  v26 = v25;

  if (v26 > 320.0)
  {
    v27 = [objc_opt_self() currentDevice];
    [v27 userInterfaceIdiom];
  }

  sub_2749FA9E4();
  OUTLINED_FUNCTION_36();
  sub_27475CF54(v13, v17, &qword_28096EE90, &qword_274A22080);
  v28 = &v17[*(v14 + 36)];
  *v28 = v23;
  *(v28 + 1) = v26;
  *(v28 + 2) = v5;
  *(v28 + 3) = v6;
  *(v28 + 4) = v7;
  v28[40] = 0;
  v29 = sub_2749FBC84();
  sub_2749FA9E4();
  OUTLINED_FUNCTION_36();
  v30 = v33;
  sub_27475CF54(v17, v33, &qword_28096EE98, &qword_274A22088);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096EEB0, &qword_274A220D0);
  v32 = v30 + *(result + 36);
  *v32 = v29;
  *(v32 + 8) = v26;
  *(v32 + 16) = v5;
  *(v32 + 24) = v6;
  *(v32 + 32) = v7;
  *(v32 + 40) = 0;
  return result;
}

uint64_t sub_2748F4834@<X0>(uint64_t a2@<X1>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  if (!a2)
  {
    v25 = 0;
    v49 = 0;
    v50 = 0;
    v24 = 0;
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v36 = 0;
    v38 = 0;
    v43 = 0;
    v41 = 0;
    KeyPath = 0;
    v44 = 0;
    goto LABEL_6;
  }

  sub_27475D0D0();
  v47 = a4;

  v6 = sub_2749FBEE4();
  v8 = v7;
  v10 = v9;
  sub_2749FBD94();
  sub_2749FBD54();
  sub_2749FBDA4();

  v11 = sub_2749FBEC4();
  v13 = v12;
  v15 = v14;

  sub_27477656C(v6, v8, v10 & 1);

  sub_2749FC494();
  v16 = sub_2749FBE84();
  v18 = v17;
  v20 = v19;
  v22 = v21;

  sub_27477656C(v11, v13, v15 & 1);

  v23 = v20 & 1;
  v24 = v22;
  v25 = v16;
  v49 = v23;
  v50 = v18;
  sub_274754DBC(v16, v18, v23);

  if (!v47)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_27475D0D0();

  v26 = sub_2749FBEE4();
  v28 = v27;
  v30 = v29;
  sub_2749FBCE4();
  v31 = sub_2749FBEC4();
  v33 = v32;
  v35 = v34;

  sub_27477656C(v26, v28, v30 & 1);

  sub_2749FC4A4();
  v36 = sub_2749FBE84();
  v38 = v37;
  v46 = v39;
  v41 = v40;

  sub_27477656C(v31, v33, v35 & 1);

  KeyPath = swift_getKeyPath();
  v43 = v46 & 1;
  sub_274754DBC(v36, v38, v46 & 1);

  v44 = 1;
LABEL_6:
  sub_2747FF76C(v25, v50, v49, v24);
  sub_2748555E8(v36, v38, v43, v41);
  sub_2747FF7B8(v25, v50, v49, v24);
  sub_274855638(v36, v38, v43, v41, KeyPath);
  *a5 = v25;
  *(a5 + 8) = v50;
  *(a5 + 16) = v49;
  *(a5 + 24) = v24;
  *(a5 + 32) = v36;
  *(a5 + 40) = v38;
  *(a5 + 48) = v43;
  *(a5 + 56) = v41;
  *(a5 + 64) = KeyPath;
  *(a5 + 72) = 0;
  *(a5 + 80) = v44;
  sub_274855638(v36, v38, v43, v41, KeyPath);
  return sub_2747FF7B8(v25, v50, v49, v24);
}

uint64_t sub_2748F4C18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(char *))
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v11);
  v13 = &v15 - v12;
  sub_27473F28C(a1, &v15 - v12, a5, a6);
  return a7(v13);
}

uint64_t sub_2748F4CC0(void *a1)
{
  v2 = [a1 searchAttributionAppBundleIdentifier];

  if (!v2)
  {
    return 0;
  }

  v3 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();

  return v3;
}

unint64_t sub_2748F4D40()
{
  result = qword_28096EB90;
  if (!qword_28096EB90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096EB98, &qword_274A21B28);
    sub_27488EE4C(&unk_28096EBA0);
    sub_2748E9FC0(&qword_28159E5A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096EB90);
  }

  return result;
}

unint64_t sub_2748F4E40()
{
  result = qword_28096EBE8;
  if (!qword_28096EBE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096EBE0, &qword_274A21B58);
    sub_27488EE4C(&unk_28096EBF0);
    sub_27488EE4C(&unk_28096EC00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096EBE8);
  }

  return result;
}

unint64_t sub_2748F4F4C(uint64_t a1)
{
  result = OUTLINED_FUNCTION_15_1(a1);
  if (!result)
  {
    v4 = OUTLINED_FUNCTION_108(0, v3);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v4, v5);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_2748F50A4()
{
  result = qword_28096EC90;
  if (!qword_28096EC90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096B3D8, &qword_274A21C40);
    sub_2748E9FC0(&qword_28159E800);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096EC90);
  }

  return result;
}

uint64_t objectdestroy_83Tm()
{
  swift_unknownObjectRelease();

  sub_274877EBC(*(v0 + 64), *(v0 + 72));
  __swift_destroy_boxed_opaque_existential_0((v0 + 80));

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_2748F5294(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_2748F52D4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *sub_2748F5340(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
          result = OUTLINED_FUNCTION_6_29(result, a2 + 2);
        }

        break;
    }
  }

  return result;
}

unint64_t sub_2748F541C()
{
  result = qword_28096ECF0;
  if (!qword_28096ECF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096ECF0);
  }

  return result;
}

unint64_t sub_2748F54CC()
{
  result = qword_28096ED80;
  if (!qword_28096ED80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_28096ED70, &unk_274A21ED8);
    sub_27486A944();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096ED80);
  }

  return result;
}

unint64_t sub_2748F555C()
{
  result = qword_28096EDA0;
  if (!qword_28096EDA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096EDA0);
  }

  return result;
}

unint64_t sub_2748F55B0()
{
  result = qword_28096EDA8;
  if (!qword_28096EDA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096ED60, &qword_274A21EC8);
    sub_2748550D0();
    sub_2748F54CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096EDA8);
  }

  return result;
}

unint64_t sub_2748F5654()
{
  result = qword_28096EDB8;
  if (!qword_28096EDB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096EDB0, &qword_274A21F08);
    sub_2748F5704(&qword_28096EDC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096EDB8);
  }

  return result;
}

unint64_t sub_2748F5704(uint64_t a1)
{
  result = OUTLINED_FUNCTION_15_1(a1);
  if (!result)
  {
    v5 = v4;
    v6 = OUTLINED_FUNCTION_108(0, v3);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v6, v7);
    v5();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

id sub_2748F57F4@<X0>(_BYTE *a1@<X8>)
{
  result = [*(*(v1 + 40) + 16) disabledOnLockScreen];
  *a1 = result ^ 1;
  return result;
}

uint64_t objectdestroy_139Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0);
}

unint64_t sub_2748F58B8()
{
  result = qword_28096EE48;
  if (!qword_28096EE48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096EE48);
  }

  return result;
}

uint64_t sub_2748F5954(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 32))
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

uint64_t sub_2748F59A8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_2748F5A0C()
{
  result = qword_28096EE70;
  if (!qword_28096EE70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096EE18, &qword_274A21FA8);
    sub_27488EE4C(&unk_28096EE78);
    sub_27488EE4C(&unk_28096EE88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096EE70);
  }

  return result;
}

unint64_t sub_2748F5B3C(uint64_t a1)
{
  result = OUTLINED_FUNCTION_15_1(a1);
  if (!result)
  {
    v5 = v4;
    v6 = OUTLINED_FUNCTION_108(0, v3);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v6, v7);
    v5();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_2748F5BB8()
{
  result = qword_28096EED0;
  if (!qword_28096EED0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096EE90, &qword_274A22080);
    sub_27488EE4C(&unk_28096EED8);
    sub_27488EE4C(&unk_28096EEE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096EED0);
  }

  return result;
}

uint64_t sub_2748F5CC0()
{
  type metadata accessor for GalleryLoader(0);
  swift_allocObject();
  result = sub_2748F6664();
  qword_28096EEF0 = result;
  return result;
}

double static GalleryLoader.shared.getter()
{
  if (qword_280966C58 != -1)
  {
    swift_once();
  }

  return result;
}

uint64_t static GalleryLoader.State.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  v5 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (v3 == 1)
    {
      if (v5 == 1)
      {
        swift_getErrorValue();
        v6 = 1;
        v7 = OUTLINED_FUNCTION_78_0();
        sub_27483019C(v7, v8);
        v9 = OUTLINED_FUNCTION_92();
        sub_27483019C(v9, v10);
        v11 = OUTLINED_FUNCTION_78_0();
        sub_27483019C(v11, v12);
        v13 = OUTLINED_FUNCTION_92();
        sub_27483019C(v13, v14);
        v15 = sub_2749FDD84();
        v17 = v16;
        swift_getErrorValue();
        if (v15 != sub_2749FDD84() || v17 != v18)
        {
          v6 = sub_2749FDCC4();
        }

        v20 = OUTLINED_FUNCTION_78_0();
        sub_2748301B8(v20, v21);
        v22 = OUTLINED_FUNCTION_92();
        sub_2748301B8(v22, v23);
        v24 = OUTLINED_FUNCTION_92();
        sub_2748301B8(v24, v25);
        v26 = OUTLINED_FUNCTION_78_0();
        sub_2748301B8(v26, v27);
        return v6 & 1;
      }
    }

    else if (v5 == 2 && v4 == 0)
    {
      sub_2748301B8(*a1, 2u);
      sub_2748301B8(0, 2u);
      v6 = 1;
      return v6 & 1;
    }
  }

  else if (!*(a2 + 8))
  {
    sub_27471CF08(0, &qword_28159E390, 0x277D82BB8);
    v28 = OUTLINED_FUNCTION_14_16();
    sub_27483019C(v28, v29);
    sub_27483019C(v2, 0);
    v30 = sub_2749FD604();
    sub_2748301B8(v2, 0);
    v31 = OUTLINED_FUNCTION_14_16();
    sub_2748301B8(v31, v32);
    return v30 & 1;
  }

  sub_27483019C(*a2, *(a2 + 8));
  sub_27483019C(v2, v3);
  sub_2748301B8(v2, v3);
  sub_2748301B8(v4, v5);
  v6 = 0;
  return v6 & 1;
}

void sub_2748F5F48(uint64_t a1@<X8>)
{
  sub_2748F62A0();
  *a1 = v2;
  *(a1 + 8) = v3;
}

void sub_2748F5F8C(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *a1;
  v3 = v1;
  sub_27483019C(v2, v1);
  sub_2748F6314(&v2);
}

void sub_2748F5FD4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_2749FCB04();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *a1;
  v9 = *(a1 + 8);
  sub_27471CF08(0, &qword_28159E4E0, 0x277D85C78);
  *v7 = sub_2749FD404();
  (*(v5 + 104))(v7, *MEMORY[0x277D85200], v4);
  LOBYTE(a1) = sub_2749FCB24();
  (*(v5 + 8))(v7, v4);
  if ((a1 & 1) == 0)
  {
LABEL_16:
    __break(1u);
    return;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_2749FA904();

  v10 = v26;
  v11 = v27;
  v30 = v26;
  v31 = v27;
  v28 = v8;
  v29 = v9;
  v12 = static GalleryLoader.State.== infix(_:_:)(&v30, &v28);
  sub_2748301B8(v10, v11);
  if ((v12 & 1) == 0)
  {
    v13 = OBJC_IVAR____TtC10WorkflowUI13GalleryLoader_observers;
    swift_beginAccess();
    v25 = v2;
    v14 = *(v2 + v13);
    v15 = 1 << *(v14 + 32);
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    v17 = v16 & *(v14 + 64);
    v18 = (v15 + 63) >> 6;
    swift_bridgeObjectRetain_n();
    v19 = 0;
    while (v17)
    {
      v20 = v19;
LABEL_11:
      v21 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
      v22 = *(*(v14 + 56) + ((v20 << 10) | (16 * v21)) + 8);
      ObjectType = swift_getObjectType();
      v24 = *(v22 + 8);
      swift_unknownObjectRetain();
      v24(v25, ObjectType, v22);
      swift_unknownObjectRelease();
    }

    while (1)
    {
      v20 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v20 >= v18)
      {

        return;
      }

      v17 = *(v14 + 64 + 8 * v20);
      ++v19;
      if (v17)
      {
        v19 = v20;
        goto LABEL_11;
      }
    }

    __break(1u);
    goto LABEL_16;
  }
}

double sub_2748F62A0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_32();
  sub_2749FA904();

  return result;
}

void sub_2748F6314(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_32();
  sub_2749FA904();

  v1 = v3;
  v2 = v4;
  swift_getKeyPath();
  swift_getKeyPath();

  sub_2749FA914();
  sub_2748F5FD4(&v3);
  sub_2748301B8(v1, v2);
}

uint64_t sub_2748F6400(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096F030, &qword_274A22370);
  MEMORY[0x28223BE20](v2);
  v4 = &v7 - v3;
  (*(v5 + 16))(&v7 - v3, a1);
  return sub_2748F6540(v4);
}

uint64_t sub_2748F64D4()
{
  OUTLINED_FUNCTION_10_3(v0 + OBJC_IVAR____TtC10WorkflowUI13GalleryLoader__state, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096EF08, &qword_274A22168);
  sub_2749FA8D4();
  return swift_endAccess();
}

uint64_t sub_2748F6540(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096F030, &qword_274A22370);
  OUTLINED_FUNCTION_43();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  (*(v5 + 16))(&v10[-v7 - 8], a1, v3);
  OUTLINED_FUNCTION_10_3(v1 + OBJC_IVAR____TtC10WorkflowUI13GalleryLoader__state, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096EF08, &qword_274A22168);
  sub_2749FA8E4();
  swift_endAccess();
  return (*(v5 + 8))(a1, v3);
}

uint64_t sub_2748F6664()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096EF08, &qword_274A22168);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v11 - v3;
  v5 = OBJC_IVAR____TtC10WorkflowUI13GalleryLoader_lastDonationsLoadDate;
  v6 = sub_2749F90F4();
  __swift_storeEnumTagSinglePayload(v0 + v5, 1, 1, v6);
  v7 = OBJC_IVAR____TtC10WorkflowUI13GalleryLoader__state;
  v11 = 0;
  v12 = 2;
  sub_2749FA8C4();
  (*(v2 + 32))(v0 + v7, v4, v1);
  *(v0 + OBJC_IVAR____TtC10WorkflowUI13GalleryLoader_loadTimer) = 0;
  v8 = OBJC_IVAR____TtC10WorkflowUI13GalleryLoader_observers;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096EF20, &unk_274A22178);
  *(v0 + v8) = sub_2749FCCB4();
  sub_2748F69BC();
  v9 = [objc_opt_self() defaultCenter];
  [v9 addObserver:v0 selector:sel_applicationBecameActive name:*MEMORY[0x277D76648] object:0];

  return v0;
}

uint64_t sub_2748F6824(uint64_t a1, uint64_t a2)
{
  v5 = OBJC_IVAR____TtC10WorkflowUI13GalleryLoader_observers;
  OUTLINED_FUNCTION_10_3(v2 + OBJC_IVAR____TtC10WorkflowUI13GalleryLoader_observers, v9);
  swift_unknownObjectRetain();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v2 + v5);
  sub_2748FA640(a1, a2, a1, isUniquelyReferenced_nonNull_native);
  *(v2 + v5) = v8;
  return swift_endAccess();
}

uint64_t sub_2748F68B8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC10WorkflowUI13GalleryLoader_observers;
  OUTLINED_FUNCTION_10_3(v1 + OBJC_IVAR____TtC10WorkflowUI13GalleryLoader_observers, v7);
  sub_2747986A8(a1);
  if (v4)
  {
    swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v1 + v3);
    *(v1 + v3) = 0x8000000000000000;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096EF18, &qword_274A22170);
    sub_2749FDA84();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096EF20, &unk_274A22178);
    sub_2749FDAA4();
    *(v1 + v3) = v6;
    swift_unknownObjectRelease();
  }

  return swift_endAccess();
}

void sub_2748F69BC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096C960, &unk_274A10040);
  v2 = OUTLINED_FUNCTION_34(v1);
  MEMORY[0x28223BE20](v2);
  v67 = &v56 - v3;
  sub_2749FA454();
  OUTLINED_FUNCTION_43();
  v63 = v5;
  v64 = v4;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_5_1();
  v57 = v6;
  MEMORY[0x28223BE20](v7);
  v9 = &v56 - v8;
  v59 = sub_2749FA474();
  OUTLINED_FUNCTION_43();
  v58 = v10;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_5_1();
  v56 = v12;
  MEMORY[0x28223BE20](v13);
  v15 = &v56 - v14;
  v66 = sub_2749FA394();
  OUTLINED_FUNCTION_43();
  v60 = v16;
  v18 = MEMORY[0x28223BE20](v17);
  v62 = &v56 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = v19;
  MEMORY[0x28223BE20](v18);
  v65 = &v56 - v20;
  v21 = sub_2749FA4E4();
  OUTLINED_FUNCTION_43();
  v23 = v22;
  MEMORY[0x28223BE20](v24);
  v26 = &v56 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = 0;
  v72 = 2;
  v68 = v0;
  sub_2748F6314(&v71);
  sub_2749FA3D4();
  v27 = sub_2749FA4D4();
  v28 = sub_2749FD2E4();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = OUTLINED_FUNCTION_12_2();
    *v29 = 0;
    _os_log_impl(&dword_274719000, v27, v28, "Gallery is loading", v29, 2u);
    OUTLINED_FUNCTION_31();
  }

  (*(v23 + 8))(v26, v21);
  v30 = OUTLINED_FUNCTION_42_7(&unk_28839BC10);
  *(v30 + 16) = 32;
  v31 = OUTLINED_FUNCTION_42_7(&unk_28839BC38);
  *(v31 + 16) = 8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096EF30, &qword_274A22188);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_274A11F50;
  *(inited + 32) = sub_2748FA770;
  *(inited + 40) = v30;
  *(inited + 48) = sub_2748FB29C;
  *(inited + 56) = v31;
  *(inited + 64) = sub_2748FB294;
  *(inited + 72) = 0;
  sub_2749FA354();
  sub_2749FA464();
  v33 = v9;
  sub_2749FA434();
  v34 = sub_2749FA464();
  v35 = sub_2749FD464();
  if (sub_2749FD6B4())
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v38 = 0;
    v69 = v37;
    v70 = 0;
    *v36 = 258;
    v71 = v36 + 2;
    while (v38 != 48)
    {
      v39 = *(inited + v38 + 32);

      v39(&v71, &v70, &v69);

      v38 += 16;
    }

    v40 = v33;
    v41 = sub_2749FA444();
    _os_signpost_emit_with_name_impl(&dword_274719000, v34, v35, v41, "LoadGallery", "%s", v36, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v37);
    OUTLINED_FUNCTION_31();
    OUTLINED_FUNCTION_31();
  }

  else
  {

    v40 = v33;
  }

  v43 = v63;
  v42 = v64;
  (*(v63 + 16))(v57, v40, v64);
  sub_2749FA4B4();
  swift_allocObject();
  OUTLINED_FUNCTION_78_0();
  sub_2749FA4A4();
  v44 = v58;
  v45 = v59;
  (*(v58 + 16))(v56, v15, v59);
  v46 = v65;
  sub_2749FA3A4();
  (*(v43 + 8))(v40, v42);
  (*(v44 + 8))(v15, v45);
  v47 = sub_2749FD0E4();
  __swift_storeEnumTagSinglePayload(v67, 1, 1, v47);
  v48 = v60;
  v49 = v62;
  v50 = v66;
  (*(v60 + 16))(v62, v46, v66);
  sub_2749FD0A4();
  v51 = v68;

  v52 = sub_2749FD094();
  v53 = (*(v48 + 80) + 40) & ~*(v48 + 80);
  v54 = swift_allocObject();
  v55 = MEMORY[0x277D85700];
  *(v54 + 2) = v52;
  *(v54 + 3) = v55;
  *(v54 + 4) = v51;
  (*(v48 + 32))(&v54[v53], v49, v50);
  sub_27479930C();

  (*(v48 + 8))(v46, v50);
  OUTLINED_FUNCTION_46();
}

uint64_t sub_2748F70BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[10] = a4;
  v5[11] = a5;
  v6 = sub_2749FA4E4();
  v5[12] = v6;
  v5[13] = *(v6 - 8);
  v5[14] = swift_task_alloc();
  v7 = sub_2749FA484();
  v5[15] = v7;
  v5[16] = *(v7 - 8);
  v5[17] = swift_task_alloc();
  v8 = sub_2749FA454();
  v5[18] = v8;
  v5[19] = *(v8 - 8);
  v5[20] = swift_task_alloc();
  v9 = sub_2749FA474();
  v5[21] = v9;
  v5[22] = *(v9 - 8);
  v5[23] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096D2F0, &unk_274A1ED60);
  v5[24] = swift_task_alloc();
  v5[25] = sub_2749FD0A4();
  v5[26] = sub_2749FD094();
  v10 = swift_task_alloc();
  v5[27] = v10;
  *v10 = v5;
  v10[1] = sub_2748F730C;

  return sub_2748F7A4C();
}

uint64_t sub_2748F730C(uint64_t a1)
{
  v4 = *v2;
  OUTLINED_FUNCTION_8_1();
  *v5 = v4;
  *v5 = *v2;
  *(v4 + 224) = v1;

  if (v1)
  {
    v6 = sub_2749FD044();
    v8 = v7;
    v9 = sub_2748F76C0;
  }

  else
  {
    *(v4 + 232) = a1;
    v6 = sub_2749FD044();
    v8 = v10;
    v9 = sub_2748F7484;
  }

  return MEMORY[0x2822009F8](v9, v6, v8);
}

void sub_2748F7484(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_17();
  a21 = v25;
  a22 = v26;
  OUTLINED_FUNCTION_18_0();
  a20 = v22;
  v27 = v22[29];

  a10 = v27;
  LOBYTE(a11) = 0;
  sub_2748F6314(&a10);
  OUTLINED_FUNCTION_40_11();
  sub_2749F90F4();
  v28 = OUTLINED_FUNCTION_14_16();
  __swift_storeEnumTagSinglePayload(v28, v29, 1, v30);
  v31 = OBJC_IVAR____TtC10WorkflowUI13GalleryLoader_lastDonationsLoadDate;
  OUTLINED_FUNCTION_10_3(v23 + OBJC_IVAR____TtC10WorkflowUI13GalleryLoader_lastDonationsLoadDate, (v22 + 2));
  sub_2748FB084(v27, v23 + v31, &unk_28096D2F0, &unk_274A1ED60);
  swift_endAccess();
  sub_2749FA344();
  v32 = sub_2749FA374();
  v34 = v33;
  sub_2749FA384();
  sub_2749FA464();
  OUTLINED_FUNCTION_33_10();
  sub_2749FD454();
  if (sub_2749FD6B4())
  {
    if ((v34 & 1) == 0)
    {
      if (v32)
      {
LABEL_8:

        sub_2749FA4C4();

        v36 = OUTLINED_FUNCTION_37_11();
        if (v37(v36) == *MEMORY[0x277D85B00])
        {
          v34 = "[Error] Interval already ended";
        }

        else
        {
          (*(v22[16] + 8))(v22[17], v22[15]);
          v34 = "";
        }

        v24 = OUTLINED_FUNCTION_12_2();
        *v24 = 0;
        v38 = sub_2749FA444();
        OUTLINED_FUNCTION_8_27(&dword_274719000, v39, v40, v38);
        OUTLINED_FUNCTION_31();
        goto LABEL_12;
      }

      __break(1u);
    }

    if (HIDWORD(v32))
    {
      __break(1u);
    }

    else
    {
      OUTLINED_FUNCTION_28_13();
      if (v35)
      {
LABEL_17:
        __break(1u);
        return;
      }

      if (v32 >> 16 <= 0x10)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
    goto LABEL_17;
  }

LABEL_12:
  OUTLINED_FUNCTION_24_15();

  (*(v27 + 8))(v34, v24);
  v41 = OUTLINED_FUNCTION_13_20();
  v42(v41);

  OUTLINED_FUNCTION_48_0();
  OUTLINED_FUNCTION_9_4();

  v44(v43, v44, v45, v46, v47, v48, v49, v50, a9, a10, a11, a12, a13, a14);
}

void sub_2748F76C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_17();
  a21 = v24;
  a22 = v25;
  OUTLINED_FUNCTION_18_0();
  a20 = v22;
  v26 = v22[28];

  sub_2749FA3D4();
  v27 = v26;
  v28 = sub_2749FA4D4();
  v29 = sub_2749FD2C4();

  if (os_log_type_enabled(v28, v29))
  {
    v31 = v22[13];
    v30 = v22[14];
    v32 = v22[12];
    v33 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    a10 = v23;
    *v33 = 136315138;
    swift_getErrorValue();
    v34 = sub_2749FDD84();
    v36 = sub_2747AF460(v34, v35, &a10);

    *(v33 + 4) = v36;
    _os_log_impl(&dword_274719000, v28, v29, "Gallery load failed: %s", v33, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v23);
    OUTLINED_FUNCTION_31();
    OUTLINED_FUNCTION_31();

    (*(v31 + 8))(v30, v32);
  }

  else
  {
    v37 = v22[13];

    v32 = v37 + 8;
    v38 = OUTLINED_FUNCTION_32();
    v39(v38);
  }

  v40 = v22[28];
  a10 = v40;
  LOBYTE(a11) = 1;
  v41 = v40;
  sub_2748F6314(&a10);

  OUTLINED_FUNCTION_40_11();
  sub_2749F90F4();
  v42 = OUTLINED_FUNCTION_14_16();
  __swift_storeEnumTagSinglePayload(v42, v43, 1, v44);
  v45 = OBJC_IVAR____TtC10WorkflowUI13GalleryLoader_lastDonationsLoadDate;
  OUTLINED_FUNCTION_10_3(v32 + OBJC_IVAR____TtC10WorkflowUI13GalleryLoader_lastDonationsLoadDate, (v22 + 2));
  sub_2748FB084(v40, v32 + v45, &unk_28096D2F0, &unk_274A1ED60);
  swift_endAccess();
  sub_2749FA344();
  v46 = sub_2749FA374();
  v48 = v47;
  sub_2749FA384();
  sub_2749FA464();
  OUTLINED_FUNCTION_33_10();
  sub_2749FD454();
  if (sub_2749FD6B4())
  {
    if ((v48 & 1) == 0)
    {
      if (v46)
      {
LABEL_11:

        sub_2749FA4C4();

        v50 = OUTLINED_FUNCTION_37_11();
        if (v51(v50) == *MEMORY[0x277D85B00])
        {
          v48 = "[Error] Interval already ended";
        }

        else
        {
          (*(v22[16] + 8))(v22[17], v22[15]);
          v48 = "";
        }

        v23 = OUTLINED_FUNCTION_12_2();
        *v23 = 0;
        v52 = sub_2749FA444();
        OUTLINED_FUNCTION_8_27(&dword_274719000, v53, v54, v52);
        OUTLINED_FUNCTION_31();
        goto LABEL_15;
      }

      __break(1u);
    }

    if (HIDWORD(v46))
    {
      __break(1u);
    }

    else
    {
      OUTLINED_FUNCTION_28_13();
      if (v49)
      {
LABEL_20:
        __break(1u);
        return;
      }

      if (v46 >> 16 <= 0x10)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
    goto LABEL_20;
  }

LABEL_15:
  OUTLINED_FUNCTION_24_15();

  (*(v40 + 8))(v48, v23);
  v55 = OUTLINED_FUNCTION_13_20();
  v56(v55);

  OUTLINED_FUNCTION_48_0();
  OUTLINED_FUNCTION_9_4();

  v58(v57, v58, v59, v60, v61, v62, v63, v64, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_2748F7A4C()
{
  OUTLINED_FUNCTION_79();
  v0[3] = sub_2749FD0A4();
  v0[4] = sub_2749FD094();
  v2 = sub_2749FD044();
  v0[5] = v2;
  v0[6] = v1;

  return MEMORY[0x2822009F8](sub_2748F7AE0, v2, v1);
}

uint64_t sub_2748F7AE0()
{
  OUTLINED_FUNCTION_79();
  v1 = sub_2749FD094();
  *(v0 + 56) = v1;
  v2 = sub_27471CF08(0, &qword_28096F010, 0x277D7C470);
  v3 = swift_task_alloc();
  *(v0 + 64) = v3;
  *v3 = v0;
  v3[1] = sub_2748F7BDC;
  v4 = MEMORY[0x277D85700];

  return MEMORY[0x282200740](v0 + 16, &type metadata for GalleryLoader.GalleryComponent, v2, v1, v4, &unk_274A22348, 0, &type metadata for GalleryLoader.GalleryComponent);
}

uint64_t sub_2748F7BDC()
{
  OUTLINED_FUNCTION_79();
  OUTLINED_FUNCTION_21_1();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_8_1();
  *v5 = v4;
  v3[9] = v0;

  if (v0)
  {
    v6 = v3[5];
    v7 = v3[6];
    v8 = sub_2748F7D4C;
  }

  else
  {

    v6 = v3[5];
    v7 = v3[6];
    v8 = sub_2748F7CE8;
  }

  return MEMORY[0x2822009F8](v8, v6, v7);
}

uint64_t sub_2748F7CE8()
{
  OUTLINED_FUNCTION_79();

  v1 = *(v0 + 16);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_2748F7D4C()
{
  OUTLINED_FUNCTION_79();

  OUTLINED_FUNCTION_48_0();

  return v0();
}

uint64_t sub_2748F7DB4(uint64_t a1, uint64_t a2)
{
  v2[4] = a1;
  v2[5] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096C960, &unk_274A10040);
  v2[6] = swift_task_alloc();
  v2[7] = sub_2749FD0A4();
  v2[8] = sub_2749FD094();
  v4 = sub_2749FD044();
  v2[9] = v4;
  v2[10] = v3;

  return MEMORY[0x2822009F8](sub_2748F7E88, v4, v3);
}

uint64_t sub_2748F7E88()
{
  OUTLINED_FUNCTION_72();
  v1 = v0[6];
  sub_2749FD0E4();
  v2 = OUTLINED_FUNCTION_78_0();
  __swift_storeEnumTagSinglePayload(v2, v3, 1, v4);
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  *(v5 + 24) = 0;
  sub_2748F8DF0(v1, &unk_274A22358, v5);
  sub_27472ECBC(v1, &unk_28096C960, &unk_274A10040);
  v6 = MEMORY[0x277D84F90];
  v0[2] = MEMORY[0x277D84F90];
  v0[11] = 0;
  v0[12] = v6;
  v7 = sub_2749FD094();
  v0[13] = v7;
  v8 = swift_task_alloc();
  v0[14] = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096F018, &qword_274A22360);
  *v8 = v0;
  v8[1] = sub_2748F7FD8;
  v10 = MEMORY[0x277D85700];

  return MEMORY[0x2822004D0](v0 + 3, v7, v10, v9);
}

uint64_t sub_2748F7FD8()
{
  OUTLINED_FUNCTION_72();
  v2 = *v1;
  OUTLINED_FUNCTION_8_1();
  *v3 = v2;
  *v3 = *v1;
  v2[15] = v0;

  if (v0)
  {

    v4 = v2[9];
    v5 = v2[10];
    v6 = sub_2748F8308;
  }

  else
  {

    v4 = v2[9];
    v5 = v2[10];
    v6 = sub_2748F8114;
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

uint64_t sub_2748F8114()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    v2 = v1;
    MEMORY[0x277C5ECC0]();
    if (*(*(v0 + 16) + 16) >= *(*(v0 + 16) + 24) >> 1)
    {
      sub_2749FCFB4();
    }

    v3 = *(v0 + 88);
    sub_2749FCFF4();
    v4 = *(v0 + 16);

    *(v0 + 88) = v1;
    *(v0 + 96) = v4;
    v5 = sub_2749FD094();
    *(v0 + 104) = v5;
    v6 = swift_task_alloc();
    *(v0 + 112) = v6;
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096F018, &qword_274A22360);
    *v6 = v0;
    v6[1] = sub_2748F7FD8;
    v8 = MEMORY[0x277D85700];

    return MEMORY[0x2822004D0](v0 + 24, v5, v8, v7);
  }

  else
  {
    v9 = *(v0 + 88);

    if (v9)
    {
      **(v0 + 32) = *(v0 + 88);
    }

    else
    {
      sub_2748FB030();
      swift_allocError();
      swift_willThrow();
    }

    v10 = *(v0 + 8);

    return v10();
  }
}

uint64_t sub_2748F8308()
{
  OUTLINED_FUNCTION_79();
  v1 = *(v0 + 88);

  OUTLINED_FUNCTION_48_0();

  return v2();
}

uint64_t sub_2748F8374(uint64_t a1)
{
  v1[30] = a1;
  v2 = sub_2749FA484();
  v1[31] = v2;
  v1[32] = *(v2 - 8);
  v1[33] = swift_task_alloc();
  v3 = sub_2749FA454();
  v1[34] = v3;
  v1[35] = *(v3 - 8);
  v1[36] = swift_task_alloc();
  v1[37] = swift_task_alloc();
  v1[38] = swift_task_alloc();
  v4 = sub_2749FA474();
  v1[39] = v4;
  v1[40] = *(v4 - 8);
  v1[41] = swift_task_alloc();
  v1[42] = swift_task_alloc();
  v1[43] = swift_task_alloc();
  v5 = sub_2749FA394();
  v1[44] = v5;
  v1[45] = *(v5 - 8);
  v1[46] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2748F8578, 0, 0);
}

uint64_t sub_2748F8578()
{
  v28 = v0;
  v1 = OUTLINED_FUNCTION_42_7(&unk_28839BD90);
  *(v1 + 16) = 32;
  v2 = OUTLINED_FUNCTION_42_7(&unk_28839BDB8);
  *(v2 + 16) = 8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096EF30, &qword_274A22188);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_274A11F50;
  *(inited + 32) = sub_2748FB29C;
  *(inited + 40) = v1;
  *(inited + 48) = sub_2748FB29C;
  *(inited + 56) = v2;
  *(inited + 64) = sub_2748FB294;
  *(inited + 72) = 0;
  sub_2749FA354();
  sub_2749FA464();
  sub_2749FA434();
  v4 = sub_2749FA464();
  v5 = sub_2749FD464();
  if (sub_2749FD6B4())
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = 0;
    v26 = 0;
    v27 = v7;
    *v6 = 258;
    v25 = v6 + 2;
    while (v8 != 48)
    {
      v9 = *(inited + v8 + 32);

      v9(&v25, &v26, &v27);

      v8 += 16;
    }

    v10 = sub_2749FA444();
    _os_signpost_emit_with_name_impl(&dword_274719000, v4, v5, v10, "LoadMainPage", "%s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    OUTLINED_FUNCTION_31();
    OUTLINED_FUNCTION_31();
  }

  else
  {
  }

  v12 = v0[42];
  v11 = v0[43];
  v14 = v0[39];
  v13 = v0[40];
  v15 = v0[38];
  v17 = v0[34];
  v16 = v0[35];
  v18 = OUTLINED_FUNCTION_37_11();
  v19(v18);
  sub_2749FA4B4();
  swift_allocObject();
  sub_2749FA4A4();
  (*(v13 + 16))(v12, v11, v14);
  sub_2749FA3A4();
  v20 = *(v16 + 8);
  v0[47] = v20;
  v0[48] = (v16 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v20(v15, v17);
  v21 = *(v13 + 8);
  v0[49] = v21;
  v0[50] = (v13 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v21(v11, v14);
  v22 = [objc_opt_self() sharedManager];
  v0[51] = v22;
  v0[2] = v0;
  v0[7] = v0 + 28;
  v0[3] = sub_2748F8978;
  v23 = swift_continuation_init();
  v0[27] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096F028, &qword_274A22368);
  v0[20] = MEMORY[0x277D85DD0];
  v0[21] = 1107296256;
  v0[22] = sub_2748AECCC;
  v0[23] = &block_descriptor_50;
  v0[24] = v23;
  [v22 getHomeWithCompletionHandler_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_2748F8978()
{
  OUTLINED_FUNCTION_79();
  OUTLINED_FUNCTION_21_1();
  v1 = v0;
  v2 = *(v0 + 48);
  *(v1 + 416) = v2;
  if (v2)
  {
    v3 = sub_2748F8CF4;
  }

  else
  {
    v3 = sub_2748F8A80;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

void sub_2748F8A80()
{
  v1 = *(v0 + 328);
  v2 = *(v0 + 224);

  sub_2749FA344();
  v3 = sub_2749FA374();
  v5 = v4;
  sub_2749FA384();
  sub_2749FA464();
  OUTLINED_FUNCTION_33_10();
  sub_2749FD454();
  if (sub_2749FD6B4())
  {
    if ((v5 & 1) == 0)
    {
      if (v3)
      {
LABEL_8:

        sub_2749FA4C4();

        v7 = OUTLINED_FUNCTION_37_11();
        if (v8(v7) != *MEMORY[0x277D85B00])
        {
          (*(*(v0 + 256) + 8))(*(v0 + 264), *(v0 + 248));
        }

        *OUTLINED_FUNCTION_12_2() = 0;
        v9 = sub_2749FA444();
        OUTLINED_FUNCTION_8_27(&dword_274719000, v10, v11, v9);
        OUTLINED_FUNCTION_31();
        goto LABEL_11;
      }

      __break(1u);
    }

    if (HIDWORD(v3))
    {
      __break(1u);
    }

    else
    {
      OUTLINED_FUNCTION_28_13();
      if (v6)
      {
LABEL_16:
        __break(1u);
        return;
      }

      if (v3 >> 16 <= 0x10)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
    goto LABEL_16;
  }

LABEL_11:
  v12 = *(v0 + 376);
  v22 = *(v0 + 392);
  v14 = *(v0 + 360);
  v13 = *(v0 + 368);
  v24 = *(v0 + 352);
  v15 = *(v0 + 328);
  v23 = v2;
  v16 = *(v0 + 312);
  v17 = *(v0 + 288);
  v18 = v1;
  v19 = *(v0 + 272);
  v20 = *(v0 + 240);

  v12(v17, v19);
  v22(v15, v16);
  (*(v14 + 8))(v13, v24);
  *v20 = v23;

  OUTLINED_FUNCTION_48_0();

  v21();
}

uint64_t sub_2748F8CF4(__n128 a1)
{
  v2 = v1[51];
  v4 = v1[45];
  v3 = v1[46];
  v5 = v1[44];
  swift_willThrow();
  (*(v4 + 8))(v3, v5);

  OUTLINED_FUNCTION_48_0();

  return v6();
}

double sub_2748F8DF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096C960, &unk_274A10040);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v17 - v8;
  sub_27473F28C(a1, v17 - v8, &unk_28096C960, &unk_274A10040);
  v10 = sub_2749FD0E4();
  if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
  {
    sub_27472ECBC(v9, &unk_28096C960, &unk_274A10040);
  }

  else
  {
    sub_2749FD0D4();
    (*(*(v10 - 8) + 8))(v9, v10);
  }

  if (*(a3 + 16))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    v11 = sub_2749FD044();
    v13 = v12;
    swift_unknownObjectRelease();
  }

  else
  {
    v11 = 0;
    v13 = 0;
  }

  v14 = *v4;
  v15 = (v13 | v11);
  if (v13 | v11)
  {
    v18[0] = 0;
    v18[1] = 0;
    v15 = v18;
    v18[2] = v11;
    v18[3] = v13;
  }

  v17[1] = 1;
  v17[2] = v15;
  v17[3] = v14;
  swift_task_create();

  return result;
}

double sub_2748F8FB8()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096C960, &unk_274A10040);
  v3 = OUTLINED_FUNCTION_34(v2);
  MEMORY[0x28223BE20](v3);
  sub_2749FD0E4();
  v4 = OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v4, v5, 1, v6);
  sub_2749FD0A4();

  v7 = sub_2749FD094();
  v8 = swift_allocObject();
  v9 = MEMORY[0x277D85700];
  v8[2] = v7;
  v8[3] = v9;
  v8[4] = v1;
  sub_27479930C();

  return result;
}

uint64_t sub_2748F90B0()
{
  v0[2] = sub_2749FD0A4();
  v0[3] = sub_2749FD094();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_2747EC4A8;

  return sub_2748F9198();
}

uint64_t sub_2748F9198()
{
  OUTLINED_FUNCTION_79();
  v1[27] = v0;
  v2 = sub_2749FA4E4();
  v1[28] = v2;
  v1[29] = *(v2 - 8);
  v1[30] = swift_task_alloc();
  v1[31] = swift_task_alloc();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096D2F0, &unk_274A1ED60);
  OUTLINED_FUNCTION_34(v3);
  v1[32] = swift_task_alloc();
  v1[33] = swift_task_alloc();
  v4 = sub_2749F90F4();
  v1[34] = v4;
  v1[35] = *(v4 - 8);
  v1[36] = swift_task_alloc();
  v1[37] = swift_task_alloc();
  v1[38] = swift_task_alloc();
  sub_2749FD0A4();
  v1[39] = sub_2749FD094();
  v6 = sub_2749FD044();
  v1[40] = v6;
  v1[41] = v5;

  return MEMORY[0x2822009F8](sub_2748F9348, v6, v5);
}

uint64_t sub_2748F9348(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_18_0();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2749FA904();

  v15 = *(v14 + 192);
  *(v14 + 336) = v15;
  if (*(v14 + 200))
  {
    sub_2748301B8(v15, *(v14 + 200));

LABEL_5:
    sub_2749FA3D4();
    v25 = sub_2749FA4D4();
    v26 = sub_2749FD2E4();
    v27 = os_log_type_enabled(v25, v26);
    v29 = *(v14 + 232);
    v28 = *(v14 + 240);
    v30 = *(v14 + 224);
    if (v27)
    {
      v31 = OUTLINED_FUNCTION_12_2();
      *v31 = 0;
      _os_log_impl(&dword_274719000, v25, v26, "Not reloading donations, since we haven't initially loaded yet", v31, 2u);
      OUTLINED_FUNCTION_31();
    }

    (*(v29 + 8))(v28, v30);
    goto LABEL_8;
  }

  v17 = *(v14 + 264);
  v16 = *(v14 + 272);
  v18 = *(v14 + 216);
  v19 = OBJC_IVAR____TtC10WorkflowUI13GalleryLoader_lastDonationsLoadDate;
  *(v14 + 344) = OBJC_IVAR____TtC10WorkflowUI13GalleryLoader_lastDonationsLoadDate;
  swift_beginAccess();
  sub_27473F28C(v18 + v19, v17, &unk_28096D2F0, &unk_274A1ED60);
  v20 = OUTLINED_FUNCTION_92();
  if (__swift_getEnumTagSinglePayload(v20, v21, v16) == 1)
  {
    v22 = *(v14 + 264);

    v23 = OUTLINED_FUNCTION_14_16();
    sub_2748301B8(v23, v24);
    sub_27472ECBC(v22, &unk_28096D2F0, &unk_274A1ED60);
    goto LABEL_5;
  }

  v41 = *(v14 + 296);
  v43 = *(v14 + 280);
  v42 = *(v14 + 288);
  v44 = *(v14 + 272);
  (*(v43 + 32))(*(v14 + 304), *(v14 + 264), v44);
  sub_2749F90A4();
  sub_2749F90E4();
  v45 = sub_2749F90C4();
  v46 = *(v43 + 8);
  *(v14 + 352) = v46;
  *(v14 + 360) = (v43 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v46(v42, v44);
  v46(v41, v44);
  if (v45)
  {

    sub_2749FA3D4();
    v47 = sub_2749FA4D4();
    v48 = sub_2749FD2E4();
    v49 = os_log_type_enabled(v47, v48);
    v50 = *(v14 + 304);
    a11 = *(v14 + 272);
    if (v49)
    {
      a10 = *(v14 + 304);
      v51 = OUTLINED_FUNCTION_12_2();
      *v51 = 0;
      _os_log_impl(&dword_274719000, v47, v48, "Not reloading donations, since they were fetched recently", v51, 2u);
      OUTLINED_FUNCTION_31();

      v52 = OUTLINED_FUNCTION_14_16();
      sub_2748301B8(v52, v53);
      v54 = OUTLINED_FUNCTION_13_20();
      v55(v54);
      v56 = a10;
    }

    else
    {

      v61 = OUTLINED_FUNCTION_14_16();
      sub_2748301B8(v61, v62);
      v63 = OUTLINED_FUNCTION_13_20();
      v64(v63);
      v56 = v50;
    }

    v46(v56, a11);
LABEL_8:
    OUTLINED_FUNCTION_41_10();

    OUTLINED_FUNCTION_48_0();
    OUTLINED_FUNCTION_9_4();

    return v33(v32, v33, v34, v35, v36, v37, v38, v39, a9, a10, a11, a12, a13, a14);
  }

  v57 = [objc_opt_self() sharedRecommender];
  *(v14 + 368) = v57;
  *(v14 + 16) = v14;
  *(v14 + 56) = v14 + 208;
  *(v14 + 24) = sub_2748F97E0;
  v58 = swift_continuation_init();
  *(v14 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096F000, &qword_274A22328);
  *(v14 + 80) = MEMORY[0x277D85DD0];
  *(v14 + 88) = 1107296256;
  *(v14 + 96) = sub_2748F9A5C;
  *(v14 + 104) = &block_descriptor_38;
  *(v14 + 112) = v58;
  [v57 fetchRecommendedDonationsForAppPredictionsWithCompletionHandler_];
  OUTLINED_FUNCTION_9_4();

  return MEMORY[0x282200938](v59);
}

uint64_t sub_2748F97E0()
{
  OUTLINED_FUNCTION_79();
  OUTLINED_FUNCTION_21_1();
  v1 = *(v0 + 328);
  v2 = *(v0 + 320);

  return MEMORY[0x2822009F8](sub_2748F98E0, v2, v1);
}

uint64_t sub_2748F98E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_17();
  a21 = v23;
  a22 = v24;
  OUTLINED_FUNCTION_18_0();
  a20 = v22;
  v25 = v22[46];

  v26 = v22[26];

  if (v26)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096F008, &qword_274A22330);
    v27 = sub_2749FCF74();
  }

  else
  {
    v27 = 0;
  }

  v28 = v22[44];
  v29 = v22[42];
  v30 = v22[43];
  v31 = v22[38];
  v32 = v22[34];
  v33 = v22[32];
  v34 = v22[27];
  [v29 setDonationsGroupedByApp_];

  a10 = v29;
  LOBYTE(a11) = 0;
  v35 = v29;
  sub_2748F6314(&a10);
  sub_2749F90E4();
  sub_2748301B8(v29, 0);
  v28(v31, v32);
  v36 = OUTLINED_FUNCTION_14_16();
  __swift_storeEnumTagSinglePayload(v36, v37, 1, v32);
  OUTLINED_FUNCTION_10_3(v34 + v30, (v22 + 21));
  sub_2748FB084(v33, v34 + v30, &unk_28096D2F0, &unk_274A1ED60);
  swift_endAccess();
  OUTLINED_FUNCTION_41_10();

  OUTLINED_FUNCTION_48_0();
  OUTLINED_FUNCTION_9_4();

  return v39(v38, v39, v40, v41, v42, v43, v44, v45, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_2748F9A5C(uint64_t a1, uint64_t a2)
{
  v3 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096F008, &qword_274A22330);
    v4 = sub_2749FCF84();
  }

  else
  {
    v4 = 0;
  }

  return sub_27491BB90(v3, v4);
}

uint64_t GalleryLoader.deinit()
{
  sub_27472ECBC(v0 + OBJC_IVAR____TtC10WorkflowUI13GalleryLoader_lastDonationsLoadDate, &unk_28096D2F0, &unk_274A1ED60);
  v1 = OBJC_IVAR____TtC10WorkflowUI13GalleryLoader__state;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096EF08, &qword_274A22168);
  OUTLINED_FUNCTION_9();
  (*(v2 + 8))(v0 + v1);
  swift_unknownObjectRelease();

  return v0;
}

uint64_t GalleryLoader.__deallocating_deinit()
{
  GalleryLoader.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_2748F9BCC@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for GalleryLoader(0);
  result = sub_2749FA874();
  *a2 = result;
  return result;
}

uint64_t sub_2748F9C0C(unint64_t **a1, uint64_t a2, uint64_t *a3)
{
  sub_2749FA364();
  v5 = sub_2749FD954();
  v7 = sub_2747AF460(v5, v6, a3);

  v9 = *a1;
  *v9 = v7;
  *a1 = v9 + 1;
  return result;
}

void sub_2748F9C64(uint64_t a1, uint64_t a2)
{
  v5 = sub_2749F9284();
  OUTLINED_FUNCTION_43();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_274797E40();
  OUTLINED_FUNCTION_0_33();
  if (v13)
  {
    __break(1u);
    goto LABEL_11;
  }

  v14 = v11;
  v15 = v12;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096EFE0, &unk_274A22300);
  if ((OUTLINED_FUNCTION_10_28(v16) & 1) == 0)
  {
    goto LABEL_5;
  }

  v17 = sub_274797E40();
  if ((v15 & 1) != (v18 & 1))
  {
LABEL_11:
    sub_2749FDD54();
    __break(1u);
    return;
  }

  v14 = v17;
LABEL_5:
  v19 = *v2;
  if (v15)
  {
    *(v19[7] + 8 * v14) = a1;
    OUTLINED_FUNCTION_46();
  }

  else
  {
    (*(v7 + 16))(v10, a2, v5);
    sub_2748FABCC(v14, v10, a1, v19);
    OUTLINED_FUNCTION_46();
  }
}

void sub_2748F9E1C()
{
  OUTLINED_FUNCTION_49_2();
  OUTLINED_FUNCTION_5_33();
  sub_274799308();
  OUTLINED_FUNCTION_0_33();
  if (v5)
  {
    __break(1u);
LABEL_11:
    sub_2749FDD54();
    __break(1u);
    return;
  }

  v6 = v3;
  v7 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096F040, &unk_274A22380);
  OUTLINED_FUNCTION_11_24();
  if (sub_2749FDA84())
  {
    sub_274799308();
    OUTLINED_FUNCTION_4_32();
    if (!v9)
    {
      goto LABEL_11;
    }

    v6 = v8;
  }

  if (v7)
  {
    v10 = OUTLINED_FUNCTION_32();
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(v10, v11);
    OUTLINED_FUNCTION_34(v12);
    OUTLINED_FUNCTION_18_19(*(v13 + 72));
  }

  else
  {
    sub_2748FAE64(v6, v2 & 1, v0, *v1, &qword_280967DA8, &qword_274A10080);
  }

  OUTLINED_FUNCTION_50_0();
}

void sub_2748F9F14()
{
  OUTLINED_FUNCTION_49_2();
  OUTLINED_FUNCTION_2_35(v2, v3, v4);
  OUTLINED_FUNCTION_0_33();
  if (v7)
  {
    __break(1u);
LABEL_12:
    sub_2749FDD54();
    __break(1u);
    return;
  }

  v8 = v5;
  v9 = v6;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096F088, &unk_274A223C0);
  if (OUTLINED_FUNCTION_10_28(v10))
  {
    OUTLINED_FUNCTION_32_12();
    OUTLINED_FUNCTION_4_32();
    if (!v12)
    {
      goto LABEL_12;
    }

    v8 = v11;
  }

  if (v9)
  {
    *(*(*v1 + 56) + 8 * v8) = v0;
    OUTLINED_FUNCTION_50_0();
  }

  else
  {
    v13 = OUTLINED_FUNCTION_12_24();
    sub_2748FAC84(v13, v14, v15, v16, v17);
    OUTLINED_FUNCTION_50_0();
  }
}

uint64_t sub_2748F9FD4(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  sub_2747984F8(a2, a3, a4);
  OUTLINED_FUNCTION_0_33();
  if (v12)
  {
    __break(1u);
    goto LABEL_13;
  }

  v13 = v10;
  v14 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096F070, &qword_274A223B0);
  if ((sub_2749FDA84() & 1) == 0)
  {
    goto LABEL_5;
  }

  v15 = sub_2747984F8(a2, a3, a4);
  if ((v14 & 1) != (v16 & 1))
  {
LABEL_13:
    result = sub_2749FDD54();
    __break(1u);
    return result;
  }

  v13 = v15;
LABEL_5:
  if (v14)
  {
    OUTLINED_FUNCTION_46();

    return sub_2748FB0D4(v17, v18);
  }

  else
  {
    sub_2748FACCC(v13, a2, a3, a4, a1, *v5);
    OUTLINED_FUNCTION_46();

    return sub_27477D408(v21, v22, v23);
  }
}

void sub_2748FA118(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_49_2();
  OUTLINED_FUNCTION_5_33();
  sub_2747985F4(v13);
  OUTLINED_FUNCTION_0_33();
  if (v16)
  {
    __break(1u);
    goto LABEL_13;
  }

  v17 = v14;
  v18 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096F068, &qword_274A223A8);
  OUTLINED_FUNCTION_11_24();
  if ((sub_2749FDA84() & 1) == 0)
  {
    goto LABEL_5;
  }

  v19 = sub_2747985F4(v12);
  if ((v18 & 1) != (v20 & 1))
  {
LABEL_13:
    sub_2749FDD54();
    __break(1u);
    return;
  }

  v17 = v19;
LABEL_5:
  if (v18)
  {
    *(*(*v11 + 56) + 8 * v17) = v10;
    OUTLINED_FUNCTION_50_0();
  }

  else
  {
    OUTLINED_FUNCTION_50_0();

    sub_2748FAD34(v23, v24, v25, v26);
  }
}

void sub_2748FA210(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_49_2();
  OUTLINED_FUNCTION_5_33();
  sub_2747985F4(v11);
  OUTLINED_FUNCTION_0_33();
  if (v13)
  {
    __break(1u);
LABEL_11:
    sub_2749FDD54();
    __break(1u);
    return;
  }

  v14 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096F058, &unk_274A298A0);
  OUTLINED_FUNCTION_11_24();
  if (sub_2749FDA84())
  {
    sub_2747985F4(v10);
    OUTLINED_FUNCTION_4_32();
    if (!v15)
    {
      goto LABEL_11;
    }
  }

  if (v14)
  {
    v16 = OUTLINED_FUNCTION_32();
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(v16, v17);
    OUTLINED_FUNCTION_34(v18);
    OUTLINED_FUNCTION_18_19(*(v19 + 72));
    OUTLINED_FUNCTION_50_0();
  }

  else
  {
    OUTLINED_FUNCTION_50_0();

    sub_2748FAD78(v20, v21, v22, v23);
  }
}

void sub_2748FA344(uint64_t a1, char a2, char a3, void (*a4)(void), uint64_t *a5, uint64_t *a6, uint64_t a7)
{
  a4(a2 & 1);
  OUTLINED_FUNCTION_0_33();
  if (v15)
  {
    __break(1u);
    goto LABEL_11;
  }

  v16 = v13;
  v17 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  if ((sub_2749FDA84() & 1) == 0)
  {
    goto LABEL_5;
  }

  v18 = (a4)(a2 & 1);
  if ((v17 & 1) != (v19 & 1))
  {
LABEL_11:
    sub_2749FDD54();
    __break(1u);
    return;
  }

  v16 = v18;
LABEL_5:
  v20 = *v7;
  if (v17)
  {
    v21 = *(v20 + 56);
    v22 = *(v21 + 8 * v16);
    *(v21 + 8 * v16) = a1;
  }

  else
  {
    sub_2748FAE30(v16, a2 & 1, a1, v20);
  }
}

void sub_2748FA474()
{
  OUTLINED_FUNCTION_49_2();
  OUTLINED_FUNCTION_5_33();
  sub_274799308();
  OUTLINED_FUNCTION_0_33();
  if (v5)
  {
    __break(1u);
LABEL_11:
    sub_2749FDD54();
    __break(1u);
    return;
  }

  v6 = v3;
  v7 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096EFE8, &unk_274A29830);
  OUTLINED_FUNCTION_11_24();
  if (sub_2749FDA84())
  {
    sub_274799308();
    OUTLINED_FUNCTION_4_32();
    if (!v9)
    {
      goto LABEL_11;
    }

    v6 = v8;
  }

  if (v7)
  {
    v10 = OUTLINED_FUNCTION_32();
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(v10, v11);
    OUTLINED_FUNCTION_34(v12);
    OUTLINED_FUNCTION_18_19(*(v13 + 72));
  }

  else
  {
    sub_2748FAE64(v6, v2 & 1, v0, *v1, &qword_28096EFF0, &qword_274A22310);
  }

  OUTLINED_FUNCTION_50_0();
}

void sub_2748FA56C()
{
  OUTLINED_FUNCTION_49_2();
  OUTLINED_FUNCTION_2_35(v2, v3, v4);
  OUTLINED_FUNCTION_0_33();
  if (v7)
  {
    __break(1u);
LABEL_14:
    sub_2749FDD54();
    __break(1u);
    return;
  }

  v8 = v5;
  v9 = v6;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096F038, &qword_274A22378);
  if (OUTLINED_FUNCTION_10_28(v10))
  {
    OUTLINED_FUNCTION_32_12();
    OUTLINED_FUNCTION_4_32();
    if (!v12)
    {
      goto LABEL_14;
    }

    v8 = v11;
  }

  if (v9)
  {
    *(*(*v1 + 56) + 8 * v8) = v0;
    OUTLINED_FUNCTION_50_0();
  }

  else
  {
    v14 = OUTLINED_FUNCTION_12_24();
    sub_2748FAC84(v14, v15, v16, v17, v18);
    OUTLINED_FUNCTION_50_0();
  }
}

unint64_t sub_2748FA640(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v9 = *v4;
  v10 = sub_2747986A8(a3);
  if (__OFADD__(v9[2], (v11 & 1) == 0))
  {
    __break(1u);
    goto LABEL_13;
  }

  v12 = v10;
  v13 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096EF18, &qword_274A22170);
  if ((sub_2749FDA84() & 1) == 0)
  {
    goto LABEL_5;
  }

  v14 = sub_2747986A8(a3);
  if ((v13 & 1) != (v15 & 1))
  {
LABEL_13:
    result = sub_2749FDD54();
    __break(1u);
    return result;
  }

  v12 = v14;
LABEL_5:
  v16 = *v5;
  if (v13)
  {
    v17 = (v16[7] + 16 * v12);
    *v17 = a1;
    v17[1] = a2;

    return swift_unknownObjectRelease();
  }

  else
  {

    return sub_2748FB130(v12, a3, a1, a2, v16);
  }
}

uint64_t sub_2748FA778()
{
  v1 = sub_2749FA394();
  OUTLINED_FUNCTION_34(v1);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_18(v4);
  *v5 = v6;
  v5[1] = sub_2747F2F14;
  v7 = OUTLINED_FUNCTION_27_9();

  return sub_2748F70BC(v7, v8, v2, v3, v9);
}

uint64_t type metadata accessor for GalleryLoader(uint64_t a1)
{
  result = qword_28096EF58;
  if (!qword_28096EF58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2748FA8C4(uint64_t a1)
{
  sub_2748A954C(319);
  if (v1 <= 0x3F)
  {
    sub_2748FAA7C();
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_2748FAA7C()
{
  if (!qword_28096EF70)
  {
    v0 = sub_2749FA924();
    if (!v1)
    {
      atomic_store(v0, &qword_28096EF70);
    }
  }
}

uint64_t get_enum_tag_for_layout_string_10WorkflowUI13GalleryLoaderC5StateO(uint64_t a1)
{
  if ((*(a1 + 8) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

uint64_t sub_2748FAAF8()
{
  OUTLINED_FUNCTION_49_2();
  OUTLINED_FUNCTION_2_35(v2, v3, v4);
  OUTLINED_FUNCTION_0_33();
  if (v7)
  {
    __break(1u);
LABEL_14:
    result = sub_2749FDD54();
    __break(1u);
    return result;
  }

  v8 = v5;
  v9 = v6;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096F078, &qword_274A223B8);
  if (OUTLINED_FUNCTION_10_28(v10))
  {
    OUTLINED_FUNCTION_32_12();
    OUTLINED_FUNCTION_4_32();
    if (!v12)
    {
      goto LABEL_14;
    }

    v8 = v11;
  }

  if (v9)
  {
    *(*(*v1 + 56) + 8 * v8) = v0;
    OUTLINED_FUNCTION_50_0();
  }

  else
  {
    v15 = OUTLINED_FUNCTION_12_24();
    sub_2748FAC84(v15, v16, v17, v18, v19);
    OUTLINED_FUNCTION_50_0();
  }
}

uint64_t sub_2748FABCC(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_2749F9284();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

unint64_t sub_2748FAC84(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

unint64_t sub_2748FACCC(unint64_t result, uint64_t a2, uint64_t a3, char a4, _OWORD *a5, void *a6)
{
  a6[(result >> 6) + 8] |= 1 << result;
  v6 = a6[6] + 24 * result;
  *v6 = a2;
  *(v6 + 8) = a3;
  *(v6 + 16) = a4;
  v7 = (a6[7] + (result << 6));
  v8 = a5[1];
  *v7 = *a5;
  v7[1] = v8;
  v7[2] = a5[2];
  *(v7 + 41) = *(a5 + 41);
  v9 = a6[2];
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v11;
  }

  return result;
}

unint64_t sub_2748FAD34(unint64_t result, char a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + result) = a2;
  *(a4[7] + 8 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

uint64_t sub_2748FAD78(unint64_t a1, char a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + a1) = a2;
  v7 = a4[7];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096F060, &qword_274A223A0);
  result = sub_27475CF54(a3, v7 + *(*(v8 - 8) + 72) * a1, &qword_28096F060, &qword_274A223A0);
  v10 = a4[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v12;
  }

  return result;
}

unint64_t sub_2748FAE30(unint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  result = OUTLINED_FUNCTION_25_11(a1, a2, a3, a4);
  *(*(v5 + 56) + 8 * result) = v6;
  v7 = *(v5 + 16);
  v8 = __OFADD__(v7, 1);
  v9 = v7 + 1;
  if (v8)
  {
    __break(1u);
  }

  else
  {
    *(v5 + 16) = v9;
  }

  return result;
}

uint64_t sub_2748FAE64(unint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  OUTLINED_FUNCTION_25_11(a1, a2, a3, a4);
  v12 = *(v11 + 56);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(v13, v14);
  OUTLINED_FUNCTION_34(v15);
  result = sub_27475CF54(a3, v12 + *(v16 + 72) * a1, a5, a6);
  v18 = *(a4 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a4 + 16) = v20;
  }

  return result;
}

uint64_t sub_2748FAEF8()
{
  OUTLINED_FUNCTION_72();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_18(v0);
  *v1 = v2;
  v1[1] = sub_2747ED3A8;
  OUTLINED_FUNCTION_27_9();

  return sub_2748F90B0();
}

uint64_t sub_2748FAF98()
{
  OUTLINED_FUNCTION_72();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_18(v0);
  *v1 = v2;
  v1[1] = sub_2747ED3A8;
  v3 = OUTLINED_FUNCTION_27_9();

  return sub_2748F8374(v3);
}

unint64_t sub_2748FB030()
{
  result = qword_28096F020;
  if (!qword_28096F020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096F020);
  }

  return result;
}

uint64_t sub_2748FB084(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_47(a1, a2, a3, a4);
  OUTLINED_FUNCTION_9();
  (*(v6 + 40))(v4, v5);
  return v4;
}

unint64_t sub_2748FB130(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  *(a5[6] + 8 * result) = a2;
  v5 = (a5[7] + 16 * result);
  *v5 = a3;
  v5[1] = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for GalleryLoaderError(_BYTE *result, int a2, int a3)
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

unint64_t sub_2748FB238()
{
  result = qword_28096F090;
  if (!qword_28096F090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096F090);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_18_19@<X0>(uint64_t a1@<X8>)
{

  return sub_2748FB084(v1, v5 + a1 * v4, v2, v3);
}

uint64_t OUTLINED_FUNCTION_33_10()
{

  return MEMORY[0x282200DB0]();
}

uint64_t sub_2748FB2DC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2749FA904();

  return v1;
}

uint64_t sub_2748FB350(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_2749FA914();
}

uint64_t sub_2748FB3C0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2749FA904();

  return v1;
}

uint64_t sub_2748FB434(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_2749FA914();
}

uint64_t sub_2748FB4A4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2749FA904();

  return v1;
}

uint64_t sub_2748FB518(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_2749FA914();
}

uint64_t sub_2748FB594()
{
  v1 = OBJC_IVAR____TtCC10WorkflowUI13WFIconPreviewP33_80F92779D897A46549571E219A3CDF5016IconPreviewModel__icon;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096F0F0, &qword_274A226E8);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtCC10WorkflowUI13WFIconPreviewP33_80F92779D897A46549571E219A3CDF5016IconPreviewModel__shadowColor;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096F0F8, &qword_274A226F0);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtCC10WorkflowUI13WFIconPreviewP33_80F92779D897A46549571E219A3CDF5016IconPreviewModel__accessibilityLabel;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809683D8, &qword_274A11720);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  return v0;
}

uint64_t sub_2748FB698()
{
  v0 = sub_2748FB594();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_2748FB6EC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809683D8, &qword_274A11720);
  v21 = *(v1 - 8);
  v22 = v1;
  MEMORY[0x28223BE20](v1);
  v3 = &v19 - v2;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096F0F8, &qword_274A226F0);
  v4 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v6 = &v19 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096F0F0, &qword_274A226E8);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v19 - v9;
  v11 = OBJC_IVAR____TtCC10WorkflowUI13WFIconPreviewP33_80F92779D897A46549571E219A3CDF5016IconPreviewModel__icon;
  v12 = [objc_opt_self() clearColor];
  v13 = [objc_allocWithZone(MEMORY[0x277D79FB8]) initWithColor_];

  v14 = [objc_allocWithZone(MEMORY[0x277D7A1D8]) initWithGlyph:61440 background:v13];
  v23 = v14;
  sub_27471CF08(0, &qword_280970690, 0x277D79FB0);
  sub_2749FA8C4();
  (*(v8 + 32))(v0 + v11, v10, v7);
  v15 = OBJC_IVAR____TtCC10WorkflowUI13WFIconPreviewP33_80F92779D897A46549571E219A3CDF5016IconPreviewModel__shadowColor;
  v16 = [objc_opt_self() systemGray3Color];
  v23 = sub_2749FC3E4();
  sub_2749FA8C4();
  (*(v4 + 32))(v0 + v15, v6, v20);
  v17 = OBJC_IVAR____TtCC10WorkflowUI13WFIconPreviewP33_80F92779D897A46549571E219A3CDF5016IconPreviewModel__accessibilityLabel;
  v23 = 0;
  v24 = 0xE000000000000000;
  sub_2749FA8C4();
  (*(v21 + 32))(v0 + v17, v3, v22);
  return v0;
}

id sub_2748FBA10()
{
  v1 = OBJC_IVAR____TtC10WorkflowUI13WFIconPreview____lazy_storage___iconView;
  v2 = *(v0 + OBJC_IVAR____TtC10WorkflowUI13WFIconPreview____lazy_storage___iconView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC10WorkflowUI13WFIconPreview____lazy_storage___iconView);
  }

  else
  {
    v4 = v0;
    type metadata accessor for WFIconPreview.IconPreviewModel(0);
    sub_2748FCE98(&qword_28096F100, type metadata accessor for WFIconPreview.IconPreviewModel, &unk_274A22594);

    sub_2749FAD84();
    v5 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096F108, &qword_274A226F8));
    v6 = sub_2749FADF4();
    v7 = *(v0 + v1);
    *(v4 + v1) = v6;
    v3 = v6;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

uint64_t sub_2748FBB0C@<X0>(uint64_t a1@<X8>)
{
  v18[1] = a1;
  v18[0] = sub_2749FA2F4();
  v1 = *(v18[0] - 8);
  MEMORY[0x28223BE20](v18[0]);
  v3 = v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096F0E0, &qword_274A22608);
  MEMORY[0x28223BE20](v4);
  v6 = v18 - v5;
  v7 = sub_2749FA2C4();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = v18 - v12;
  *(v18 - v12) = vdupq_n_s64(0x4056600000000000uLL);
  (*(v8 + 104))(v18 - v12, *MEMORY[0x277D7D690], v7);
  sub_2748FB2DC();
  (*(v8 + 16))(v11, v13, v7);
  (*(v1 + 104))(v3, *MEMORY[0x277D7D6D0], v18[0]);
  sub_2749FA314();
  v14 = sub_2748FB3C0();
  v15 = &v6[*(v4 + 36)];
  *v15 = v14;
  *(v15 + 8) = xmmword_274A224D0;
  *(v15 + 3) = 0x4024000000000000;
  v18[2] = sub_2748FB4A4();
  v18[3] = v16;
  sub_2748FCBB0();
  sub_27475D0D0();
  sub_2749FC0F4();

  sub_2748FCC6C(v6);
  return (*(v8 + 8))(v13, v7);
}

id sub_2748FBDE8(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC10WorkflowUI13WFIconPreview_model;
  type metadata accessor for WFIconPreview.IconPreviewModel(0);
  swift_allocObject();
  *&v4[v9] = sub_2748FB6EC();
  *&v4[OBJC_IVAR____TtC10WorkflowUI13WFIconPreview____lazy_storage___iconView] = 0;
  v13.receiver = v4;
  v13.super_class = type metadata accessor for WFIconPreview();
  v10 = objc_msgSendSuper2(&v13, sel_initWithFrame_, a1, a2, a3, a4);
  v11 = sub_2748FBA10();
  [v10 addSubview_];

  return v10;
}

void sub_2748FBEEC(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for WFIconPreview();
  objc_msgSendSuper2(&v3, sel_layoutSubviews);
  v2 = sub_2748FBA10();
  [v1 bounds];
  [v2 setFrame_];
}

double sub_2748FBF9C(void *a1)
{
  v2 = sub_27490C85C(a1);
  if (v3)
  {
    v4 = v2;
    v5 = v3;
    sub_27471CF08(0, &qword_28096BB10, 0x277D79DA8);

    v6 = sub_274903E28(v4, v5);
    sub_2748FB350(v6);

    v7 = objc_opt_self();

    v8 = [v7 systemGray3Color];
    sub_2749FC3E4();
    v9 = sub_2749FC484();

    sub_2748FB434(v9);

    sub_2749F93D4();
    sub_2749F93C4();
    v10 = sub_2749F93B4();
    v12 = v11;

    if (!v12)
    {
      sub_2749FCE14("App Icon", 8);
      if (qword_28159E3A8 != -1)
      {
        OUTLINED_FUNCTION_1_1(&qword_28159E3A8);
      }

      v13 = qword_28159E448;
      v14 = sub_2749FCD64();
      v15 = sub_2749FCD64();

      v16 = [v13 localizedStringForKey:v14 value:v15 table:0];

      v10 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
      v12 = v17;
    }

    sub_2749FCE14("Current selected icon: app icon of %1$@", 39);
    if (qword_28159E3A8 != -1)
    {
      OUTLINED_FUNCTION_1_1(&qword_28159E3A8);
    }

    v18 = sub_2749FCD64();
    v19 = sub_2749FCD64();

    v21 = OUTLINED_FUNCTION_52(v20, sel_localizedStringForKey_value_table_);

    _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967628, &qword_274A0FF40);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_274A0EF10;
    *(v22 + 56) = MEMORY[0x277D837D0];
    *(v22 + 64) = sub_27475C4F4();
    *(v22 + 32) = v10;
    *(v22 + 40) = v12;
    v23 = sub_2749FCD74();
    v25 = v24;
  }

  else
  {
    v26 = OUTLINED_FUNCTION_2_36();
    v27 = [v26 backgroundColor];
    v28 = [v27 gradient];

    v75 = [objc_allocWithZone(MEMORY[0x277D79FC0]) initWithGradient_];
    v74 = OBJC_IVAR____TtC10WorkflowUI13WFIconPreview_model;

    v29 = OUTLINED_FUNCTION_2_36();
    v30 = [v29 backgroundColor];
    v31 = [v30 gradient];

    v32 = [v31 baseColor];
    v33 = [v32 platformColor];

    sub_2749FC3E4();
    v34 = sub_2749FC484();

    sub_2748FB434(v34);

    v35 = OUTLINED_FUNCTION_2_36();
    [v35 glyphCharacter];

    v36 = WFNameForGlyphCharacter();
    if (!v36)
    {
      sub_2749FCE14("Unknown Icon", 12);
      if (qword_28159E3A8 != -1)
      {
        OUTLINED_FUNCTION_1_1(&qword_28159E3A8);
      }

      v37 = sub_2749FCD64();
      v38 = sub_2749FCD64();

      v36 = OUTLINED_FUNCTION_52(v39, sel_localizedStringForKey_value_table_);
    }

    v40 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
    v42 = v41;

    v43 = OUTLINED_FUNCTION_2_36();
    v44 = [v43 backgroundColor];

    v45 = sub_2748FCD6C(v44);
    if (v46)
    {
      v47 = v45;
      v48 = v46;
    }

    else
    {
      sub_2749FCE14("Icon Color", 10);
      if (qword_28159E3A8 != -1)
      {
        OUTLINED_FUNCTION_1_1(&qword_28159E3A8);
      }

      v49 = qword_28159E448;
      v50 = sub_2749FCD64();
      v51 = sub_2749FCD64();

      v52 = [v49 localizedStringForKey:v50 value:v51 table:0];

      v47 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
      v48 = v53;
    }

    sub_2749FCE14("Current selected icon: %1$@ with %2$@ background color", 54, v74);
    if (qword_28159E3A8 != -1)
    {
      OUTLINED_FUNCTION_1_1(&qword_28159E3A8);
    }

    v54 = qword_28159E448;
    v55 = sub_2749FCD64();
    v56 = sub_2749FCD64();

    v57 = [v54 localizedStringForKey:v55 value:v56 table:0];

    _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967628, &qword_274A0FF40);
    v58 = swift_allocObject();
    *(v58 + 16) = xmmword_274A0F620;
    v59 = MEMORY[0x277D837D0];
    *(v58 + 56) = MEMORY[0x277D837D0];
    v60 = sub_27475C4F4();
    *(v58 + 32) = v40;
    *(v58 + 40) = v42;
    *(v58 + 96) = v59;
    *(v58 + 104) = v60;
    *(v58 + 64) = v60;
    *(v58 + 72) = v47;
    *(v58 + 80) = v48;
    v23 = sub_2749FCD74();
    v25 = v61;

    v62 = [a1 icon];
    [v62 glyphCharacter];

    v63 = WFSystemImageNameForGlyphCharacter();
    if (v63)
    {
      v64 = v63;
      v65 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
      v67 = v66;

      v68 = objc_allocWithZone(MEMORY[0x277D7A158]);

      v69 = v75;
      v70 = sub_27491A250(v65, v67, v69);
      sub_2748FB350(v70);
    }

    else
    {

      v71 = [a1 icon];
      v72 = [v71 glyphCharacter];

      sub_2748FB350([objc_allocWithZone(MEMORY[0x277D7A1D8]) initWithGlyph:v72 background:v75]);
    }
  }

  sub_2748FB518(v23, v25);

  return result;
}

void sub_2748FC80C()
{
  v1 = OBJC_IVAR____TtC10WorkflowUI13WFIconPreview_model;
  type metadata accessor for WFIconPreview.IconPreviewModel(0);
  swift_allocObject();
  *(v0 + v1) = sub_2748FB6EC();
  *(v0 + OBJC_IVAR____TtC10WorkflowUI13WFIconPreview____lazy_storage___iconView) = 0;
  sub_2749FDAE4();
  __break(1u);
}

id sub_2748FC8C4(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for WFIconPreview();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t type metadata accessor for WFIconPreview.IconPreviewModel(uint64_t a1)
{
  result = qword_28096F0C8;
  if (!qword_28096F0C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2748FC9BC(uint64_t a1)
{
  sub_2748FCAE0(319);
  if (v1 <= 0x3F)
  {
    sub_2747254DC(319, &qword_28159E770, MEMORY[0x277CE0F78]);
    if (v2 <= 0x3F)
    {
      sub_2747254DC(319, &qword_28159E768, MEMORY[0x277D837D0]);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_2748FCAE0(uint64_t a1)
{
  if (!qword_28096F0D8)
  {
    sub_27471CF08(255, &qword_280970690, 0x277D79FB0);
    v1 = sub_2749FA924();
    if (!v2)
    {
      atomic_store(v1, &qword_28096F0D8);
    }
  }
}

uint64_t sub_2748FCB74@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for WFIconPreview();
  result = sub_2749FA874();
  *a2 = result;
  return result;
}

unint64_t sub_2748FCBB0()
{
  result = qword_28096F0E8;
  if (!qword_28096F0E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096F0E0, &qword_274A22608);
    sub_2748FCE98(&qword_28159E800, MEMORY[0x277D7D6E0], MEMORY[0x277D7D6D8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096F0E8);
  }

  return result;
}

uint64_t sub_2748FCC6C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096F0E0, &qword_274A22608);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2748FCD2C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_2748FB518(v1, v2);
}

uint64_t sub_2748FCD6C(void *a1)
{
  v2 = [a1 localizedPaletteName];

  if (!v2)
  {
    return 0;
  }

  v3 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();

  return v3;
}

unint64_t sub_2748FCDDC()
{
  result = qword_28096F110;
  if (!qword_28096F110)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096F118, &qword_274A22700);
    sub_2748FCBB0();
    sub_2748FCE98(&qword_28159E5A0, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096F110);
  }

  return result;
}

uint64_t sub_2748FCE98(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

id sub_2748FCEE0(void *a1)
{
  v2 = sub_2749F8FD4();
  v3 = [swift_getObjCClassFromMetadata() alertWithError_];

  return v3;
}

uint64_t MoveToFolderCoordinator.__allocating_init(database:)(void *a1)
{
  OUTLINED_FUNCTION_3_43();
  v2 = swift_allocObject();
  MoveToFolderCoordinator.init(database:)(a1);
  return v2;
}

uint64_t sub_2748FCF84(void *a1)
{
  v1 = a1[1];
  v2 = swift_unknownObjectRetain();
  return sub_2747878A4(v2, v1);
}

void (*sub_2748FCFC0(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v3[5] = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v5 = *(v1 + 40);
  v3[3] = Strong;
  v3[4] = v5;
  return sub_2747A88D4;
}

uint64_t MoveToFolderCoordinator.init(database:)(void *a1)
{
  *(v1 + 40) = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *(v1 + 56) = 0;
  *(v1 + 60) = 1;
  *(v1 + 16) = a1;
  type metadata accessor for ShortcutMoveService();
  v3 = swift_allocObject();
  *(v3 + 16) = a1;
  *(v3 + 24) = 0;
  *(v1 + 24) = v3;
  v4 = a1;
  return v1;
}

uint64_t MoveToFolderCoordinator.__allocating_init(database:service:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_3_43();
  v4 = swift_allocObject();
  MoveToFolderCoordinator.init(database:service:)(a1, a2);
  return v4;
}

uint64_t MoveToFolderCoordinator.init(database:service:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *(v2 + 56) = 0;
  *(v2 + 60) = 1;
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

void sub_2748FD154(uint64_t a1, void *a2)
{
  v3 = v2;
  swift_unknownObjectWeakAssign();
  v6 = *(v3 + 16);
  v7 = objc_allocWithZone(type metadata accessor for MoveToFolderViewController());
  v8 = v6;

  v9 = MoveToFolderViewController.init(database:shortcutsToMove:)(v8, a1);
  v10 = &v9[OBJC_IVAR____TtC10WorkflowUI26MoveToFolderViewController_delegate];
  swift_beginAccess();
  *(v10 + 1) = &protocol witness table for MoveToFolderCoordinator;
  swift_unknownObjectWeakAssign();
  v11 = [objc_allocWithZone(MEMORY[0x277D757A0]) initWithRootViewController_];
  [v11 setModalPresentationStyle_];
  [a2 presentViewController:v11 animated:1 completion:0];
}

void sub_2748FD264(uint64_t a1, void *a2, int a3)
{
  *(v3 + 56) = a3;
  *(v3 + 60) = 0;
  sub_2748FD154(a1, a2);
}

uint64_t MoveToFolderCoordinator.deinit()
{

  sub_2747545BC(v0 + 32);
  MEMORY[0x277C61150](v0 + 48);
  return v0;
}

uint64_t MoveToFolderCoordinator.__deallocating_deinit()
{
  MoveToFolderCoordinator.deinit();
  v0 = OUTLINED_FUNCTION_3_43();

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t MoveToFolderCoordinator.moveToFolderViewController(_:didRequestNewFolderCreationFor:)(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_2749FA3C4();
  OUTLINED_FUNCTION_43();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_2_0();
  v12 = v11 - v10;
  (*(v8 + 104))(v11 - v10, *MEMORY[0x277D79BB8], v6);
  v13 = sub_2749FA3B4();
  (*(v8 + 8))(v12, v6);
  if (v13)
  {
    v14 = *(v3 + 56);
    v15 = *(v3 + 60) != 0;
    v17 = *(v3 + 16);
    v16 = *(v3 + 24);
    aBlock = a2;
    v39 = v16;
    LODWORD(v40) = v14;
    BYTE4(v40) = v15 | 0x40;
    v18 = objc_allocWithZone(type metadata accessor for WFCollectionConfigurationViewController());

    v19 = WFCollectionConfigurationViewController.init(mode:updatingWithDatabase:)(&aBlock, v17);
    v20 = objc_allocWithZone(type metadata accessor for WFPreviewNavigationController());
    v21 = v19;
    v22 = sub_2748B8F5C(v21, 0, v20);
    [a1 presentViewController:v22 animated:1 completion:0];
  }

  else
  {
    aBlock = a2;
    LOBYTE(v39) = 0;
    v23 = objc_opt_self();

    v24 = [v23 defaultGlyphCharacter];
    v25 = objc_allocWithZone(type metadata accessor for NameIconComposeViewController());
    v26 = NameIconComposeViewController.init(_:glyphCharacter:)(&aBlock, v24);
    v27 = &v26[OBJC_IVAR____TtC10WorkflowUI29NameIconComposeViewController_delegate];
    swift_beginAccess();
    *(v27 + 1) = &protocol witness table for MoveToFolderCoordinator;
    swift_unknownObjectWeakAssign();
    v21 = v26;
    v28 = [v23 defaultName];
    v29 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
    v31 = v30;

    sub_2747F9654(v29, v31, v21);
    v22 = [objc_allocWithZone(MEMORY[0x277D757A0]) initWithRootViewController_];

    [v22 setModalPresentationStyle_];
    v32 = swift_allocObject();
    *(v32 + 16) = a1;
    v42 = sub_2748FE6AC;
    v43 = v32;
    aBlock = MEMORY[0x277D85DD0];
    v39 = 1107296256;
    v40 = sub_274760264;
    v41 = &block_descriptor_39;
    v33 = _Block_copy(&aBlock);
    v34 = a1;

    [v34 presentViewController:v22 animated:1 completion:v33];
    _Block_release(v33);
  }

  OUTLINED_FUNCTION_24();
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v36 = *(v3 + 40);
    ObjectType = swift_getObjectType();
    (*(v36 + 8))(v3, a2, ObjectType, v36);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t MoveToFolderCoordinator.moveToFolderViewController(_:didRequestMoving:to:)(void *a1, uint64_t a2, void *a3)
{
  sub_2749FA4E4();
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_2_0();
  v8 = *(v3 + 56);
  v9 = *(v3 + 60);
  v13 = a2;
  sub_2748E6B98(a2, a3, 0, 0);
  sub_2748E6E80(v8 | (v9 << 32));
  [a1 dismissViewControllerAnimated:1 completion:0];
  OUTLINED_FUNCTION_24();
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v11 = *(v3 + 40);
    ObjectType = swift_getObjectType();
    (*(v11 + 16))(v3, v13, a3, ObjectType, v11);
    return swift_unknownObjectRelease();
  }

  return result;
}

void MoveToFolderCoordinator.nameIconComposeViewController(_:didFinish:with:icon:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_2749FA4E4();
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_2_0();
  if ((*(a2 + 8) & 1) == 0)
  {
    MEMORY[0x28223BE20](v12);
    *(&v14 - 6) = v5;
    *(&v14 - 5) = a3;
    *(&v14 - 4) = a4;
    *(&v14 - 3) = a5;
    *(&v14 - 2) = v13;
    *(&v14 - 1) = a1;
    sub_2749FD234();
  }
}

void sub_2748FDF20(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5, void *a6)
{
  v60 = a5;
  v61 = a4;
  aBlock[7] = *MEMORY[0x277D85DE8];
  v9 = sub_2749FA4E4();
  v58 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v49[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = sub_2749FCA74();
  v54 = *(v12 - 8);
  v55 = v12;
  MEMORY[0x28223BE20](v12);
  v14 = &v49[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = sub_2749FCAA4();
  v52 = *(v15 - 8);
  v53 = v15;
  MEMORY[0x28223BE20](v15);
  v17 = &v49[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = *(a1 + 16);
  if (a3)
  {
    a3 = sub_2749FCD64();
  }

  v19 = [v61 glyphCharacter];
  aBlock[0] = 0;
  v20 = [v18 createFolderWithName:a3 icon:v19 error:aBlock];

  if (!v20)
  {
    v57 = a6;
    v28 = aBlock[0];
    v27 = sub_2749F8FE4();

    swift_willThrow();
    goto LABEL_8;
  }

  v56 = v20;
  v21 = v9;
  v22 = v60;
  if (!v60)
  {
    v39 = aBlock[0];
    goto LABEL_13;
  }

  v57 = a6;
  v51 = *(a1 + 56);
  v50 = *(a1 + 60);
  v23 = aBlock[0];
  v24 = v56;
  v25 = v56;
  v26 = v59;
  sub_2748E6B98(v22, v24, 0, 0);
  v27 = v26;
  if (!v26)
  {
    v59 = 0;
    LOBYTE(aBlock[0]) = v50;
    sub_2748E6E80(v51 | (v50 << 32));

    a6 = v57;
LABEL_13:
    sub_27471CF08(0, &qword_28159E4E0, 0x277D85C78);
    v40 = sub_2749FD404();
    v41 = swift_allocObject();
    v41[2] = a6;
    v41[3] = a1;
    aBlock[4] = sub_2748FE83C;
    aBlock[5] = v41;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_274760264;
    aBlock[3] = &block_descriptor_13;
    v42 = _Block_copy(aBlock);
    v43 = a6;

    sub_2749FCA94();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_27473FC78();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096DB60, &qword_274A0F640);
    sub_27473FCD0();
    v44 = v55;
    sub_2749FD7B4();
    MEMORY[0x277C5F170](0, v17, v14, v42);
    _Block_release(v42);

    (*(v54 + 8))(v14, v44);
    (*(v52 + 8))(v17, v53);
    v45 = [objc_allocWithZone(MEMORY[0x277D7C2C0]) init];
    sub_27484DB24(0x6F466F5465766F4DLL, 0xEC0000007265646CLL, v45, &selRef_setFolderSource_);
    v46 = v56;
    if (v60)
    {
      v47 = sub_27472D918(v60);
      if ((v47 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      v48 = v47;
      if (!HIDWORD(v47))
      {
        goto LABEL_18;
      }

      __break(1u);
    }

    v48 = 0;
LABEL_18:
    [v45 setShortcutCount_];
    [v45 setIcon_];
    [v45 track];

    return;
  }

  v9 = v21;
LABEL_8:
  aBlock[0] = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967C18, &qword_274A0FEA0);
  sub_27471CF08(0, qword_280967C90, 0x277CCA9B8);
  swift_dynamicCast();
  v29 = aBlock[6];
  sub_2749FA3D4();
  v30 = v29;
  v31 = sub_2749FA4D4();
  v32 = sub_2749FD2C4();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    *v33 = 138543362;
    *(v33 + 4) = v30;
    *v34 = v30;
    v35 = v30;
    _os_log_impl(&dword_274719000, v31, v32, "An error occurred while creating a folder in LibraryViewController: %{public}@", v33, 0xCu);
    sub_274793F58(v34);
    MEMORY[0x277C61040](v34, -1, -1);
    MEMORY[0x277C61040](v33, -1, -1);
  }

  (*(v58 + 8))(v11, v9);
  v36 = WFUserInterfaceFromViewController();
  sub_27471CF08(0, &qword_28096D720, 0x277CFC218);
  v37 = v30;
  v38 = sub_2748FCEE0(v37);
  [v36 presentAlert_];

  swift_unknownObjectRelease();
}

void sub_2748FE604(void *a1, uint64_t a2)
{
  [a1 dismissViewControllerAnimated:1 completion:0];
  Strong = swift_unknownObjectWeakLoadStrong();
  v3 = [Strong presentedViewController];

  [v3 dismissViewControllerAnimated:1 completion:0];
}

void sub_2748FE854(uint64_t a1@<X8>)
{
  v3 = sub_2749FB4C4();
  OUTLINED_FUNCTION_43();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_2_0();
  v9 = v8 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096D850, &unk_274A13E20);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v10);
  v12 = &v16 - v11;
  v13 = type metadata accessor for GalleryImportView(0);
  sub_27473ADB8(v1 + *(v13 + 32), v12, &qword_28096D850, &unk_274A13E20);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2749FAA94();
    OUTLINED_FUNCTION_9();
    (*(v14 + 32))(a1, v12);
  }

  else
  {
    sub_2749FD2D4();
    v15 = sub_2749FBC14();
    sub_2749FA424();

    sub_2749FB4B4();
    swift_getAtKeyPath();

    (*(v5 + 8))(v9, v3);
  }

  OUTLINED_FUNCTION_46();
}

void sub_2748FEA2C(uint64_t a1@<X8>)
{
  v2 = v1;
  v74 = a1;
  v65 = sub_2749FB4F4();
  OUTLINED_FUNCTION_43();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_2_0();
  v8 = v7 - v6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096F140, &qword_274A22940);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v10);
  v12 = &v61 - v11;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096F148, &qword_274A22948);
  OUTLINED_FUNCTION_43();
  v64 = v13;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v14);
  v16 = &v61 - v15;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096F150, &qword_274A22950);
  OUTLINED_FUNCTION_43();
  v66 = v17;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v18);
  v63 = &v61 - v19;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096F158, &qword_274A22958);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v20);
  v72 = &v61 - v21;
  v70 = sub_2749FB9A4();
  OUTLINED_FUNCTION_43();
  v62 = v22;
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_2_0();
  v26 = v25 - v24;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096F160, &qword_274A22960);
  OUTLINED_FUNCTION_43();
  v61 = v27;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v28);
  v30 = &v61 - v29;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096F168, &qword_274A22968);
  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_4();
  v32 = MEMORY[0x28223BE20](v31);
  v34 = &v61 - v33;
  if (*(v2 + 40))
  {
    *v12 = sub_2749FB634();
    *(v12 + 1) = 0;
    v12[16] = 1;
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096F170, &qword_274A22970);
    sub_2748FF530(v2, &v12[*(v35 + 44)]);
    v36 = sub_2749FAEE4();
    v37 = sub_2749FBC64();
    v38 = &v12[*(v9 + 36)];
    *v38 = v36;
    v38[8] = v37;
    v39 = v65;
    (*(v4 + 104))(v8, *MEMORY[0x277CDDDC0], v65);
    v40 = sub_274902B50();
    sub_2749FC224();
    (*(v4 + 8))(v8, v39);
    sub_27478C584(v12, &qword_28096F140);
    v75 = v9;
    v76 = v40;
    v41 = OUTLINED_FUNCTION_4_34();
    v42 = v63;
    v43 = v69;
    sub_2749FC194();
    (*(v64 + 8))(v16, v43);
    v44 = v66;
    v45 = v73;
    (*(v66 + 16))(v72, v42, v73);
    swift_storeEnumTagMultiPayload();
    v46 = OUTLINED_FUNCTION_7_24(&qword_28096F190, &qword_28096F160, &qword_274A22960);
    OUTLINED_FUNCTION_3_44();
    v49 = sub_27490398C(v47, 255, v48, MEMORY[0x277CDE298]);
    v75 = v67;
    v76 = v70;
    v77 = v46;
    v78 = v49;
    OUTLINED_FUNCTION_6_30();
    v75 = v43;
    v76 = v41;
    OUTLINED_FUNCTION_5_34();
    sub_2749FB7B4();
    (*(v44 + 8))(v42, v45);
  }

  else
  {
    MEMORY[0x28223BE20](v32);
    *(&v61 - 2) = v2;
    v51 = v50;
    v52 = sub_274902B50();
    v75 = v9;
    v76 = v52;
    v53 = OUTLINED_FUNCTION_4_34();
    v75 = v69;
    v76 = v53;
    v69 = OUTLINED_FUNCTION_5_34();
    sub_2749FAD74();
    sub_2749FB994();
    v54 = OUTLINED_FUNCTION_7_24(&qword_28096F190, &qword_28096F160, &qword_274A22960);
    OUTLINED_FUNCTION_3_44();
    v57 = sub_27490398C(v55, 255, v56, MEMORY[0x277CDE298]);
    v58 = v67;
    v59 = v70;
    sub_2749FBF54();
    (*(v62 + 8))(v26, v59);
    (*(v61 + 8))(v30, v58);
    v60 = v71;
    (*(v51 + 16))(v72, v34, v71);
    swift_storeEnumTagMultiPayload();
    v75 = v58;
    v76 = v59;
    v77 = v54;
    v78 = v57;
    OUTLINED_FUNCTION_6_30();
    sub_2749FB7B4();
    (*(v51 + 8))(v34, v60);
  }

  OUTLINED_FUNCTION_46();
}

uint64_t sub_2748FF124@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v20[1] = a2;
  v3 = sub_2749FB4F4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096F140, &qword_274A22940);
  MEMORY[0x28223BE20](v7);
  v9 = v20 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096F148, &qword_274A22948);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v20 - v12;
  *v9 = sub_2749FB634();
  *(v9 + 1) = 0;
  v9[16] = 1;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096F170, &qword_274A22970);
  sub_2748FF530(a1, &v9[*(v14 + 44)]);
  v15 = sub_2749FAEE4();
  v16 = sub_2749FBC64();
  v17 = &v9[*(v7 + 36)];
  *v17 = v15;
  v17[8] = v16;
  (*(v4 + 104))(v6, *MEMORY[0x277CDDDC0], v3);
  v18 = sub_274902B50();
  sub_2749FC224();
  (*(v4 + 8))(v6, v3);
  sub_27478C584(v9, &qword_28096F140);
  v20[2] = v7;
  v20[3] = v18;
  swift_getOpaqueTypeConformance2();
  sub_2749FC194();
  return (*(v11 + 8))(v13, v10);
}

uint64_t sub_2748FF3D8()
{
  v0 = sub_2749FAA94();
  OUTLINED_FUNCTION_43();
  v2 = v1;
  v4 = MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v13 - v7;
  sub_2748FE854(&v13 - v7);
  (*(v2 + 104))(v6, *MEMORY[0x277CDF3C0], v0);
  v9 = sub_2749FAA84();
  v10 = *(v2 + 8);
  v10(v6, v0);
  v10(v8, v0);
  if ((v9 & 1) == 0)
  {
    return sub_2749FC474();
  }

  v11 = [objc_opt_self() secondarySystemBackgroundColor];
  return sub_2749FC3E4();
}

uint64_t sub_2748FF530@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v144 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096F198, &qword_274A22980);
  v4 = MEMORY[0x28223BE20](v3);
  v146 = &v116 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = &v116 - v6;
  v130 = sub_2749FAF34();
  v129 = *(v130 - 8);
  MEMORY[0x28223BE20](v130);
  v128 = &v116 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096F1A0, &qword_274A22988);
  v123 = *(v124 - 8);
  MEMORY[0x28223BE20](v124);
  v121 = &v116 - v9;
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096F1A8, &qword_274A22990);
  MEMORY[0x28223BE20](v125);
  v126 = &v116 - v10;
  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096F1B0, &qword_274A22998);
  MEMORY[0x28223BE20](v140);
  v127 = &v116 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096F1B8, &qword_274A229A0);
  MEMORY[0x28223BE20](v12);
  v139 = &v116 - v13;
  v136 = sub_2749FBAE4();
  v135 = *(v136 - 8);
  MEMORY[0x28223BE20](v136);
  v134 = &v116 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = type metadata accessor for GalleryImportView(0);
  v138 = *(v117 - 8);
  MEMORY[0x28223BE20](v117);
  v147 = v15;
  v16 = (&v116 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096F1C0, &qword_274A229A8);
  v119 = *(v120 - 8);
  MEMORY[0x28223BE20](v120);
  v118 = &v116 - v17;
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096F1C8, &qword_274A229B0);
  MEMORY[0x28223BE20](v137);
  v122 = &v116 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096F1D0, &qword_274A229B8);
  v20 = MEMORY[0x28223BE20](v19 - 8);
  v145 = &v116 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v149 = &v116 - v22;
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096F1D8, &qword_274A229C0);
  v141 = *(v143 - 8);
  v23 = MEMORY[0x28223BE20](v143);
  v142 = &v116 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v26 = &v116 - v25;
  v150 = a1;
  sub_2749FBC44();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096F1E0, &unk_274A229C8);
  v27 = a1;
  sub_27472AC38(&qword_28096F1E8, &qword_28096F1E0, &unk_274A229C8, MEMORY[0x277CE14C0]);
  v148 = v26;
  sub_2749FAA54();
  v28 = *a1;
  v29 = [*a1 importQuestions];
  sub_27471CF08(0, &qword_28096EA30, 0x277D7CA80);
  v30 = sub_2749FCF84();

  v31 = sub_27472D918(v30);

  if (__OFSUB__(v31, 1))
  {
    __break(1u);
  }

  else
  {
    v131 = v12;
    v132 = v3;
    v133 = v7;
    v33 = *(a1 + 40);
    if (v33 >= v31 - 1)
    {
      sub_274902C18(a1, v16);
      v62 = v138;
      v63 = (*(v138 + 80) + 16) & ~*(v138 + 80);
      v64 = swift_allocObject();
      v65 = sub_274902C7C(v16, v64 + v63);
      MEMORY[0x28223BE20](v65);
      *(&v116 - 2) = a1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096F1F0, &qword_274A229D8);
      sub_274902CE8();
      v66 = v121;
      sub_2749FC624();
      v67 = v134;
      sub_2749FBAD4();
      sub_27472AC38(&qword_28096F230, &qword_28096F1A0, &qword_274A22988, MEMORY[0x277CDF028]);
      sub_27490398C(&qword_28096D440, 255, MEMORY[0x277CDE400], MEMORY[0x277CDE3E8]);
      v68 = v126;
      v69 = v124;
      v70 = v136;
      sub_2749FBFC4();
      (*(v135 + 8))(v67, v70);
      (*(v123 + 8))(v66, v69);
      v71 = sub_2749FC434();
      KeyPath = swift_getKeyPath();
      v151 = v71;
      v73 = sub_2749FABC4();
      v74 = (v68 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096F238, &unk_274A22A28) + 36));
      *v74 = KeyPath;
      v74[1] = v73;
      v75 = (v68 + *(v125 + 36));
      v76 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096D900, &qword_274A1BBB0) + 28);
      v77 = *MEMORY[0x277CDF420];
      v78 = sub_2749FAAA4();
      (*(*(v78 - 8) + 104))(v75 + v76, v77, v78);
      *v75 = swift_getKeyPath();
      v79 = v128;
      sub_2749FAF24();
      sub_2749031F4(&qword_28096F240, &qword_28096F1A8, &qword_274A22990, sub_274902FC0);
      v80 = v127;
      sub_2749FC0B4();
      (*(v129 + 8))(v79, v130);
      sub_27478C584(v68, &qword_28096F1A8);
      LOBYTE(v77) = sub_2749FBC54();
      sub_2749FA9E4();
      v81 = v139;
      v82 = v80 + *(v140 + 36);
      *v82 = v77;
      *(v82 + 8) = v83;
      *(v82 + 16) = v84;
      *(v82 + 24) = v85;
      *(v82 + 32) = v86;
      *(v82 + 40) = 0;
      sub_27473ADB8(v80, v81, &qword_28096F1B0, &qword_274A22998);
      swift_storeEnumTagMultiPayload();
      sub_27490313C();
      sub_27490341C();
      v61 = v149;
      sub_2749FB7B4();
      sub_27478C584(v80, &qword_28096F1B0);
    }

    else
    {
      v35 = *(a1 + 24);
      v34 = *(a1 + 32);
      v36 = v33 + 1;
      v37 = a1;
      v38 = *(a1 + 8);
      v39 = *(a1 + 16);
      v40 = *(v117 + 32);
      *(v16 + v40) = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096D850, &unk_274A13E20);
      swift_storeEnumTagMultiPayload();
      *v16 = v28;
      v16[1] = v38;
      v16[2] = v39;
      v16[3] = v35;
      v16[4] = v34;
      v16[5] = v36;

      v41 = v28;
      v42 = v39;
      v27 = v37;
      sub_27475D1E4(v38, v42);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096C050, &qword_274A1EF80);
      sub_27475C60C();
      sub_27490398C(&qword_28096D7F0, 255, type metadata accessor for GalleryImportView, &unk_274A228F0);
      v43 = v118;
      sub_2749FAD24();
      v44 = v134;
      sub_2749FBAD4();
      sub_27472AC38(&qword_28096F288, &qword_28096F1C0, &qword_274A229A8, MEMORY[0x277CDD938]);
      sub_27490398C(&qword_28096D440, 255, MEMORY[0x277CDE400], MEMORY[0x277CDE3E8]);
      v45 = v122;
      v46 = v120;
      v47 = v136;
      sub_2749FBFC4();
      (*(v135 + 8))(v44, v47);
      (*(v119 + 8))(v43, v46);
      v48 = sub_2749FC434();
      v49 = swift_getKeyPath();
      v151 = v48;
      v50 = sub_2749FABC4();
      v51 = (v45 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096F280, &qword_274A22A78) + 36));
      *v51 = v49;
      v51[1] = v50;
      v52 = (v45 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096F270, &qword_274A22A70) + 36));
      v53 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096D900, &qword_274A1BBB0) + 28);
      v54 = *MEMORY[0x277CDF420];
      v55 = sub_2749FAAA4();
      (*(*(v55 - 8) + 104))(v52 + v53, v54, v55);
      *v52 = swift_getKeyPath();
      LOBYTE(v54) = sub_2749FBC54();
      sub_2749FA9E4();
      v56 = v45 + *(v137 + 36);
      *v56 = v54;
      *(v56 + 8) = v57;
      *(v56 + 16) = v58;
      *(v56 + 24) = v59;
      *(v56 + 32) = v60;
      *(v56 + 40) = 0;
      sub_27473ADB8(v45, v139, &qword_28096F1C8, &qword_274A229B0);
      swift_storeEnumTagMultiPayload();
      sub_27490313C();
      sub_27490341C();
      v61 = v149;
      sub_2749FB7B4();
      sub_27478C584(v45, &qword_28096F1C8);
      v62 = v138;
    }

    sub_274902C18(v27, v16);
    v87 = (*(v62 + 80) + 16) & ~*(v62 + 80);
    v88 = swift_allocObject();
    sub_274902C7C(v16, v88 + v87);
    v89 = v133;
    sub_2749FC624();
    v90 = sub_2749FBC84();
    sub_2749FA9E4();
    v92 = v91;
    v94 = v93;
    v96 = v95;
    v98 = v97;
    v99 = v89 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096FC20, &qword_274A22A80) + 36);
    *v99 = v90;
    *(v99 + 8) = v92;
    *(v99 + 16) = v94;
    *(v99 + 24) = v96;
    *(v99 + 32) = v98;
    *(v99 + 40) = 0;
    v100 = sub_2749FBC74();
    sub_2749FA9E4();
    v101 = v89 + *(v132 + 36);
    *v101 = v100;
    *(v101 + 8) = v102;
    *(v101 + 16) = v103;
    *(v101 + 24) = v104;
    *(v101 + 32) = v105;
    *(v101 + 40) = 0;
    v106 = v141;
    v107 = v142;
    v108 = *(v141 + 16);
    v109 = v143;
    v108(v142, v148, v143);
    v110 = v145;
    sub_27473ADB8(v61, v145, &qword_28096F1D0, &qword_274A229B8);
    v111 = v146;
    sub_27473ADB8(v89, v146, &qword_28096F198, &qword_274A22980);
    v112 = v144;
    v108(v144, v107, v109);
    v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096F298, &qword_274A22A88);
    v114 = &v112[v113[12]];
    *v114 = 0;
    v114[8] = 1;
    sub_27473ADB8(v110, &v112[v113[16]], &qword_28096F1D0, &qword_274A229B8);
    sub_27473ADB8(v111, &v112[v113[20]], &qword_28096F198, &qword_274A22980);
    sub_27478C584(v89, &qword_28096F198);
    sub_27478C584(v149, &qword_28096F1D0);
    v115 = *(v106 + 8);
    v115(v148, v109);
    sub_27478C584(v111, &qword_28096F198);
    sub_27478C584(v110, &qword_28096F1D0);
    return (v115)(v107, v109);
  }

  return result;
}

uint64_t sub_274900654@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v114 = a2;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096F2A8, &qword_274A22AF8);
  v3 = MEMORY[0x28223BE20](v107);
  v110 = &v94 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v109 = (&v94 - v5);
  v104 = sub_2749FB5D4();
  v103 = *(v104 - 8);
  MEMORY[0x28223BE20](v104);
  v100 = &v94 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096CF90, &unk_274A1FB90);
  MEMORY[0x28223BE20](v7 - 8);
  v102 = &v94 - v8;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096D9C8, &qword_274A1F6D0);
  v9 = MEMORY[0x28223BE20](v101);
  v106 = &v94 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v99 = &v94 - v12;
  MEMORY[0x28223BE20](v11);
  v105 = &v94 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096F2B0, &qword_274A22B00);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v113 = &v94 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v112 = &v94 - v17;
  sub_2749FCE14("Configure This Shortcut", 23);
  if (qword_28159E3A8 != -1)
  {
    swift_once();
  }

  v18 = qword_28159E448;
  v19 = sub_2749FCD64();
  v20 = sub_2749FCD64();

  v97 = v18;
  v21 = [v18 localizedStringForKey:v19 value:v20 table:0];

  v22 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  v24 = v23;

  v115 = v22;
  v116 = v24;
  v98 = sub_27475D0D0();
  v25 = sub_2749FBEE4();
  v27 = v26;
  LOBYTE(v24) = v28;
  sub_2749FBD14();
  v29 = sub_2749FBEC4();
  v31 = v30;
  v33 = v32;

  sub_27477656C(v25, v27, v24 & 1);

  v34 = sub_2749FBEB4();
  v36 = v35;
  v111 = v37;
  v39 = v38;
  sub_27477656C(v29, v31, v33 & 1);

  v40 = *(a1 + 40);
  v108 = a1;
  v41 = *a1;
  v42 = [*a1 importQuestions];
  sub_27471CF08(0, &qword_28096EA30, 0x277D7CA80);
  v43 = sub_2749FCF84();

  v44 = sub_27472D918(v43);

  if (v40 >= v44)
  {
    v55 = 1;
    v47 = v112;
  }

  else
  {
    v45 = [v41 importQuestions];
    v46 = sub_2749FCF84();

    sub_2747B2790();
    v47 = v112;
    v94 = v36;
    if ((v46 & 0xC000000000000001) != 0)
    {
      v48 = MEMORY[0x277C5F6D0](v40, v46);
    }

    else
    {
      v48 = *(v46 + 8 * v40 + 32);
    }

    v49 = v48;

    v50 = v49;
    v51 = sub_2749036A0(v49);
    v96 = v39;
    v95 = v34;
    if (v52)
    {
      v53 = v51;
      v54 = v52;
    }

    else
    {
      sub_2749FCE14("What value?", 11);
      v56 = sub_2749FCD64();
      v57 = sub_2749FCD64();

      v58 = [v97 localizedStringForKey:v56 value:v57 table:0];

      v53 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
      v54 = v59;
    }

    v115 = v53;
    v116 = v54;
    v60 = sub_2749FBEE4();
    v62 = v61;
    v115 = v60;
    v116 = v61;
    v64 = v63 & 1;
    v117 = v63 & 1;
    v118 = v65;
    v66 = v100;
    sub_2749FB5C4();
    v67 = v102;
    sub_2749FC1D4();
    (*(v103 + 8))(v66, v104);
    sub_27477656C(v60, v62, v64);

    LOBYTE(v60) = sub_2749FBC64();
    sub_2749FA9E4();
    v69 = v68;
    v71 = v70;
    v73 = v72;
    v75 = v74;
    v76 = v99;
    sub_2747D31F8(v67, v99, &qword_28096CF90, &unk_274A1FB90);
    v77 = v76 + *(v101 + 36);
    *v77 = v60;
    *(v77 + 8) = v69;
    *(v77 + 16) = v71;
    *(v77 + 24) = v73;
    *(v77 + 32) = v75;
    *(v77 + 40) = 0;
    v78 = v105;
    sub_2747D31F8(v76, v105, &qword_28096D9C8, &qword_274A1F6D0);
    v79 = sub_2749FB644();
    v80 = v109;
    *v109 = v79;
    *(v80 + 8) = 0;
    *(v80 + 16) = 0;
    v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096F2C8, &qword_274A22B18);
    sub_274900F98(v50, (v80 + *(v81 + 44)));
    v82 = sub_2748FF3D8();
    v83 = sub_2749FBC64();
    v84 = v106;
    v85 = v80 + *(v107 + 36);
    *v85 = v82;
    *(v85 + 8) = v83;
    sub_27473ADB8(v78, v84, &qword_28096D9C8, &qword_274A1F6D0);
    v86 = v110;
    sub_27473ADB8(v80, v110, &qword_28096F2A8, &qword_274A22AF8);
    sub_27473ADB8(v84, v47, &qword_28096D9C8, &qword_274A1F6D0);
    v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096F2D0, &unk_274A22B20);
    sub_27473ADB8(v86, v47 + *(v87 + 48), &qword_28096F2A8, &qword_274A22AF8);

    sub_27478C584(v80, &qword_28096F2A8);
    sub_27478C584(v78, &qword_28096D9C8);
    sub_27478C584(v86, &qword_28096F2A8);
    sub_27478C584(v84, &qword_28096D9C8);
    v55 = 0;
    v39 = v96;
    v34 = v95;
    v36 = v94;
  }

  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096F2B8, &qword_274A22B08);
  __swift_storeEnumTagSinglePayload(v47, v55, 1, v88);
  v89 = v113;
  sub_27473ADB8(v47, v113, &qword_28096F2B0, &qword_274A22B00);
  v90 = v114;
  *v114 = v34;
  v90[1] = v36;
  v91 = v111 & 1;
  *(v90 + 16) = v111 & 1;
  v90[3] = v39;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096F2C0, &qword_274A22B10);
  sub_27473ADB8(v89, v90 + *(v92 + 48), &qword_28096F2B0, &qword_274A22B00);
  sub_274754DBC(v34, v36, v91);

  sub_27478C584(v47, &qword_28096F2B0);
  sub_27478C584(v89, &qword_28096F2B0);
  sub_27477656C(v34, v36, v91);
}

uint64_t sub_274900F98@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v49 = a2;
  v3 = sub_2749FC744();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v48 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v53 = &v45 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v45 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v45 - v12;
  sub_2749FC734();
  v52 = swift_allocObject();
  *(v52 + 16) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096FDC0, &qword_274A16220);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_274A0F620;
  v51 = a1;
  v15 = sub_2749FBC94();
  *(inited + 32) = v15;
  v16 = sub_2749FBCB4();
  *(inited + 33) = v16;
  v17 = sub_2749FBCA4();
  sub_2749FBCA4();
  if (sub_2749FBCA4() != v15)
  {
    v17 = sub_2749FBCA4();
  }

  sub_2749FBCA4();
  if (sub_2749FBCA4() == v16)
  {
    v50 = v17;
  }

  else
  {
    v50 = sub_2749FBCA4();
  }

  sub_2749FA9E4();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v78 = 0;
  v77 = 0;
  v26 = sub_2749FBC84();
  sub_2749FA9E4();
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v79 = 0;
  sub_2749FC734();
  v35 = v11;
  v46 = v11;
  v47 = v13;
  v36 = *(v4 + 16);
  v37 = v53;
  v36(v53, v13, v3);
  v38 = v48;
  v36(v48, v35, v3);
  v39 = v3;
  v40 = v49;
  v36(v49, v37, v39);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096F2D8, &qword_274A22B30);
  v42 = *(v41 + 48);
  v45 = sub_274903700;
  v58[0] = v51;
  v58[1] = sub_274903700;
  v58[2] = v52;
  LOBYTE(v58[3]) = 0;
  *(&v58[3] + 1) = *v57;
  HIDWORD(v58[3]) = *&v57[3];
  LOBYTE(v58[4]) = v50;
  *(&v58[4] + 1) = *v56;
  HIDWORD(v58[4]) = *&v56[3];
  v58[5] = v19;
  v58[6] = v21;
  v58[7] = v23;
  v58[8] = v25;
  LOBYTE(v58[9]) = 0;
  HIDWORD(v58[9]) = *&v55[3];
  *(&v58[9] + 1) = *v55;
  LOBYTE(v58[10]) = v26;
  HIDWORD(v58[10]) = *&v54[3];
  *(&v58[10] + 1) = *v54;
  v58[11] = v28;
  v58[12] = v30;
  v58[13] = v32;
  v58[14] = v34;
  LOBYTE(v58[15]) = 0;
  memcpy(&v40[v42], v58, 0x79uLL);
  v36(&v40[*(v41 + 64)], v38, v39);
  sub_27473ADB8(v58, v59, &qword_28096F2E0, &qword_274A22B38);
  v43 = *(v4 + 8);
  v43(v46, v39);
  v43(v47, v39);
  v43(v38, v39);
  v59[0] = v51;
  v59[1] = v45;
  v59[2] = v52;
  v60 = 0;
  *v61 = *v57;
  *&v61[3] = *&v57[3];
  v62 = v50;
  *v63 = *v56;
  *&v63[3] = *&v56[3];
  v64 = v19;
  v65 = v21;
  v66 = v23;
  v67 = v25;
  v68 = 0;
  *&v69[3] = *&v55[3];
  *v69 = *v55;
  v70 = v26;
  *&v71[3] = *&v54[3];
  *v71 = *v54;
  v72 = v28;
  v73 = v30;
  v74 = v32;
  v75 = v34;
  v76 = 0;
  sub_27478C584(v59, &qword_28096F2E0);
  return (v43)(v53, v39);
}

void *sub_274901450@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096C0A0, &qword_274A13E30);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = __src - v3;
  v5 = sub_2749FBE14();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = __src - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2749FCE14("NEXT_QUESTION_BUTTON", 20);
  sub_2749FCE14("Next", 4);
  if (qword_28159E3A8 != -1)
  {
    swift_once();
  }

  v9 = qword_28159E448;
  v10 = sub_2749FCD64();

  v11 = sub_2749FCD64();

  v12 = [v9 localizedStringForKey:v10 value:v11 table:0];

  v13 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  v15 = v14;

  __src[0] = v13;
  __src[1] = v15;
  sub_27475D0D0();
  v16 = sub_2749FBEE4();
  v18 = v17;
  v20 = v19;
  (*(v6 + 104))(v8, *MEMORY[0x277CE0AC0], v5);
  v21 = sub_2749FBD24();
  __swift_storeEnumTagSinglePayload(v4, 1, 1, v21);
  sub_2749FBD74();
  sub_27478C584(v4, &unk_28096C0A0);
  (*(v6 + 8))(v8, v5);
  sub_2749FBD54();
  sub_2749FBDA4();

  v22 = sub_2749FBEC4();
  v24 = v23;
  LOBYTE(v9) = v25;
  v27 = v26;

  sub_27477656C(v16, v18, v20 & 1);

  sub_2749FC914();
  sub_2749FB004();
  *a1 = v22;
  *(a1 + 8) = v24;
  *(a1 + 16) = v9 & 1;
  *(a1 + 24) = v27;
  return memcpy((a1 + 32), __src, 0x70uLL);
}

void *sub_2749017C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v50 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096C0A0, &qword_274A13E30);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v40 - v4;
  v6 = sub_2749FBE14();
  v49 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v47 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096D8E0, &qword_274A0FF48);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v40 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096F2A0, &qword_274A22AC0);
  MEMORY[0x28223BE20](v12);
  v14 = &v40 - v13;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096F208, &qword_274A229E0);
  MEMORY[0x28223BE20](v48);
  v16 = &v40 - v15;
  v17 = *(a1 + 32);
  if (v17)
  {
    __src[0] = *(a1 + 24);
    __src[1] = v17;
    sub_27475D0D0();

    *v14 = sub_2749FBEE4();
    *(v14 + 1) = v18;
    v14[16] = v19 & 1;
    *(v14 + 3) = v20;
    swift_storeEnumTagMultiPayload();
    sub_27472AC38(&unk_28096DEF0, &unk_28096D8E0, &qword_274A0FF48, MEMORY[0x277CDEFF0]);
    sub_2749FB7B4();
    v21 = v50;
  }

  else
  {
    v41 = v11;
    v42 = v12;
    v43 = v9;
    v44 = v8;
    v45 = v6;
    v46 = v5;
    sub_2749FCE14("ADD_SHORTCUT_BUTTON", 19);
    sub_2749FCE14("Add Shortcut", 12);
    if (qword_28159E3A8 != -1)
    {
      swift_once();
    }

    v22 = qword_28159E448;
    v23 = sub_2749FCD64();

    v24 = sub_2749FCD64();

    v25 = [v22 localizedStringForKey:v23 value:v24 table:0];

    v26 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
    v28 = v27;

    __src[0] = v26;
    __src[1] = v28;
    sub_27475D0D0();
    v29 = v41;
    sub_2749FC594();
    v30 = v43;
    v31 = v44;
    (*(v43 + 16))(v14, v29, v44);
    swift_storeEnumTagMultiPayload();
    sub_27472AC38(&unk_28096DEF0, &unk_28096D8E0, &qword_274A0FF48, MEMORY[0x277CDEFF0]);
    sub_2749FB7B4();
    (*(v30 + 8))(v29, v31);
    v21 = v50;
    v6 = v45;
    v5 = v46;
  }

  v32 = v49;
  v33 = v47;
  (*(v49 + 104))(v47, *MEMORY[0x277CE0AC0], v6);
  v34 = sub_2749FBD24();
  __swift_storeEnumTagSinglePayload(v5, 1, 1, v34);
  sub_2749FBD74();
  sub_27478C584(v5, &unk_28096C0A0);
  (*(v32 + 8))(v33, v6);
  sub_2749FBD54();
  v35 = sub_2749FBDA4();

  KeyPath = swift_getKeyPath();
  v37 = &v16[*(v48 + 36)];
  *v37 = KeyPath;
  v37[1] = v35;
  sub_2749FC914();
  sub_2749FB004();
  sub_2747D31F8(v16, v21, &qword_28096F208, &qword_274A229E0);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096F1F0, &qword_274A229D8);
  return memcpy((v21 + *(v38 + 36)), __src, 0x70uLL);
}

uint64_t sub_274901DF4(uint64_t result)
{
  v1 = *(result + 8);
  if (v1)
  {

    v1(v2);
    v3 = OUTLINED_FUNCTION_44();

    return sub_27471F8A4(v3, v4);
  }

  return result;
}

uint64_t sub_274901E4C@<X0>(uint64_t a1@<X8>)
{
  sub_2749FCE14("Skip Setup", 10);
  if (qword_28159E3A8 != -1)
  {
    swift_once();
  }

  v2 = qword_28159E448;
  v3 = sub_2749FCD64();
  v4 = sub_2749FCD64();

  v5 = [v2 localizedStringForKey:v3 value:v4 table:0];

  _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  sub_27475D0D0();
  v6 = sub_2749FBEE4();
  v8 = v7;
  LOBYTE(v2) = v9;
  sub_2749FBD44();
  v10 = sub_2749FBE74();
  v12 = v11;
  v14 = v13;
  v16 = v15;
  sub_27477656C(v6, v8, v2 & 1);

  *a1 = v10;
  *(a1 + 8) = v12;
  *(a1 + 16) = v14 & 1;
  *(a1 + 24) = v16;
  return result;
}

uint64_t sub_274901FD8(void *a1)
{
  type metadata accessor for GalleryImportQuestionStateStore();
  v2 = swift_allocObject();
  *(v2 + 24) = 0;
  *(v2 + 16) = a1;
  v3 = a1;
  return v2;
}

void sub_27490201C(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v45 = a4;
  v46 = a3;
  v44 = a2;
  v7 = sub_2749F9C04();
  OUTLINED_FUNCTION_43();
  v47 = v8;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_2_0();
  v12 = v11 - v10;
  v13 = sub_2749F9BD4();
  OUTLINED_FUNCTION_43();
  v15 = v14;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_2_0();
  v19 = v18 - v17;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096B3C0, &qword_274A1A068);
  OUTLINED_FUNCTION_43();
  v22 = v21;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v23);
  v25 = &v40 - v24;
  v26 = [a1 parameter];
  if (v26)
  {
    v27 = v26;
    type metadata accessor for GalleryImportQuestionStateStore();
    v41 = v7;
    v42 = v13;
    sub_27490398C(&qword_28096F2E8, v28, type metadata accessor for GalleryImportQuestionStateStore, &unk_274A22868);
    v43 = v20;
    v40 = v27;
    sub_2749FAB04();
    v29 = v15;
    sub_2749F9C44();
    swift_allocObject();
    v46 = a5;
    sub_27490398C(&qword_28096F300, v30, type metadata accessor for GalleryImportQuestionStateStore, &unk_274A228A0);
    sub_2749F9C54();
    (*(v47 + 104))(v12, *MEMORY[0x277D7BD78], v41);
    v31 = v40;
    sub_2749F9BC4();
    sub_27490398C(&qword_28096B3C8, 255, MEMORY[0x277D7BD30], MEMORY[0x277D7BD28]);
    v32 = v42;
    sub_2749FBEF4();

    (*(v29 + 8))(v19, v32);
    v33 = v46;
    v34 = v43;
    (*(v22 + 32))(v46, v25, v43);
    __swift_storeEnumTagSinglePayload(v33, 0, 1, v34);
    OUTLINED_FUNCTION_46();
  }

  else
  {
    OUTLINED_FUNCTION_46();

    __swift_storeEnumTagSinglePayload(v35, v36, v37, v38);
  }
}

id sub_2749023D8()
{
  v1 = *(v0 + 16);
  v2 = [v1 action];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = [v1 parameter];
  if (!v4)
  {

    return 0;
  }

  v5 = v4;
  if ((*(v0 + 24) & 1) != 0 || (v6 = [v1 defaultState]) == 0)
  {
    v8 = [v5 key];
    if (!v8)
    {
      _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
      v8 = sub_2749FCD64();
    }

    v7 = [v3 parameterStateForKey_];
  }

  else
  {
    v7 = v6;
  }

  return v7;
}

uint64_t sub_2749024E8(uint64_t a1)
{
  v2 = v1;
  v4 = *(v1 + 16);
  v5 = [v4 action];
  if (v5)
  {
    v6 = v5;
    v7 = [v4 parameter];
    if (v7)
    {
      v8 = v7;
      type metadata accessor for GalleryImportQuestionStateStore();
      sub_27490398C(&qword_28096F2E8, v9, type metadata accessor for GalleryImportQuestionStateStore, &unk_274A22868);
      sub_2749FA874();
      sub_2749FA894();

      *(v2 + 24) = 1;
      v10 = [v8 key];
      if (!v10)
      {
        _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
        v10 = sub_2749FCD64();
      }

      [v6 setParameterState:a1 forKey:v10];
    }

    else
    {
    }
  }

  return swift_unknownObjectRelease();
}

uint64_t sub_2749026B4()
{

  return MEMORY[0x2821FE8D8](v0, 25, 7);
}

uint64_t sub_274902710()
{
  sub_2749FDDF4();
  sub_2749FD614();
  return sub_2749FDE44();
}

uint64_t type metadata accessor for GalleryImportView(uint64_t a1)
{
  result = qword_28096F120;
  if (!qword_28096F120)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2749027C8(uint64_t a1)
{
  sub_27471CF08(319, &qword_28096BF80, 0x277D7CA60);
  if (v1 <= 0x3F)
  {
    sub_274776B60(319);
    if (v2 <= 0x3F)
    {
      sub_274902894();
      if (v3 <= 0x3F)
      {
        sub_2747B708C(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_274902894()
{
  if (!qword_28096D810)
  {
    v0 = sub_2749FD6C4();
    if (!v1)
    {
      atomic_store(v0, &qword_28096D810);
    }
  }
}

uint64_t (*sub_2749028EC(id *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = sub_2749023D8();
  return sub_274902934;
}

uint64_t sub_274902934(uint64_t *a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    return sub_2749024E8(*a1);
  }

  v2 = swift_unknownObjectRetain();
  sub_2749024E8(v2);

  return swift_unknownObjectRelease();
}

uint64_t sub_2749029BC@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for GalleryImportQuestionStateStore();
  result = sub_2749FA874();
  *a2 = result;
  return result;
}

uint64_t sub_274902A40(uint64_t a1)
{
  sub_2749FDDF4();
  sub_27490263C(v2);
  return sub_2749FDE44();
}

unint64_t sub_274902B50()
{
  result = qword_28096F178;
  if (!qword_28096F178)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096F140, &qword_274A22940);
    sub_27472AC38(&qword_28096F180, &unk_28096F188, &unk_274A22978, MEMORY[0x277CE1198]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096F178);
  }

  return result;
}

uint64_t sub_274902C18(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GalleryImportView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_274902C7C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GalleryImportView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_274902CE8()
{
  result = qword_28096F1F8;
  if (!qword_28096F1F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096F1F0, &qword_274A229D8);
    sub_274902D74();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096F1F8);
  }

  return result;
}

unint64_t sub_274902D74()
{
  result = qword_28096F200;
  if (!qword_28096F200)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096F208, &qword_274A229E0);
    sub_274902E2C();
    sub_27472AC38(&qword_28159E5C0, &unk_28096D8F0, &qword_274A1F550, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096F200);
  }

  return result;
}

unint64_t sub_274902E2C()
{
  result = qword_28096F210;
  if (!qword_28096F210)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096F218, &qword_274A229E8);
    sub_274902EB0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096F210);
  }

  return result;
}

unint64_t sub_274902EB0()
{
  result = qword_28096F220;
  if (!qword_28096F220)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096F228, &qword_274A229F0);
    sub_27472AC38(&unk_28096DEF0, &unk_28096D8E0, &qword_274A0FF48, MEMORY[0x277CDEFF0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096F220);
  }

  return result;
}

uint64_t sub_274902F68@<X0>(uint64_t *a1@<X8>)
{
  result = MEMORY[0x277C5D140]();
  *a1 = result;
  return result;
}

unint64_t sub_274902FC0()
{
  result = qword_28096F248;
  if (!qword_28096F248)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096F238, &unk_274A22A28);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096F1A0, &qword_274A22988);
    sub_2749FBAE4();
    sub_27472AC38(&qword_28096F230, &qword_28096F1A0, &qword_274A22988, MEMORY[0x277CDF028]);
    sub_27490398C(&qword_28096D440, 255, MEMORY[0x277CDE400], MEMORY[0x277CDE3E8]);
    swift_getOpaqueTypeConformance2();
    sub_27472AC38(&qword_28096F250, &unk_28096F258, &unk_274A22A68, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096F248);
  }

  return result;
}

unint64_t sub_27490313C()
{
  result = qword_28096F260;
  if (!qword_28096F260)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096F1C8, &qword_274A229B0);
    sub_2749031F4(&qword_28096F268, &qword_28096F270, &qword_274A22A70, sub_2749032A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096F260);
  }

  return result;
}

uint64_t sub_2749031F4(unint64_t *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    v7 = OUTLINED_FUNCTION_108(0, a2);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v7, v8);
    a4();
    sub_27472AC38(&qword_28096C070, &qword_28096D900, &qword_274A1BBB0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2749032A0()
{
  result = qword_28096F278;
  if (!qword_28096F278)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096F280, &qword_274A22A78);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096F1C0, &qword_274A229A8);
    sub_2749FBAE4();
    sub_27472AC38(&qword_28096F288, &qword_28096F1C0, &qword_274A229A8, MEMORY[0x277CDD938]);
    sub_27490398C(&qword_28096D440, 255, MEMORY[0x277CDE400], MEMORY[0x277CDE3E8]);
    swift_getOpaqueTypeConformance2();
    sub_27472AC38(&qword_28096F250, &unk_28096F258, &unk_274A22A68, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096F278);
  }

  return result;
}

unint64_t sub_27490341C()
{
  result = qword_28096F290;
  if (!qword_28096F290)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096F1B0, &qword_274A22998);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096F1A8, &qword_274A22990);
    sub_2749031F4(&qword_28096F240, &qword_28096F1A8, &qword_274A22990, sub_274902FC0);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096F290);
  }

  return result;
}

uint64_t objectdestroyTm_16()
{
  v1 = type metadata accessor for GalleryImportView(0);
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));

  if (*(v2 + 8))
  {
  }

  v3 = *(v1 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096D850, &unk_274A13E20);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2749FAA94();
    OUTLINED_FUNCTION_9();
    (*(v4 + 8))(v2 + v3);
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_2749036A0(void *a1)
{
  v1 = [a1 question];
  if (v1)
  {
    v2 = v1;
    _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  }

  return OUTLINED_FUNCTION_44();
}

uint64_t sub_274903714(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 25))
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

uint64_t sub_274903754(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

unint64_t sub_2749037A8()
{
  result = qword_28096F2F0;
  if (!qword_28096F2F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096F2F8, qword_274A22BE0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096F160, &qword_274A22960);
    sub_2749FB9A4();
    sub_27472AC38(&qword_28096F190, &qword_28096F160, &qword_274A22960, MEMORY[0x277CDD978]);
    sub_27490398C(&qword_28096CA60, 255, MEMORY[0x277CDE2A0], MEMORY[0x277CDE298]);
    swift_getOpaqueTypeConformance2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096F148, &qword_274A22948);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096F140, &qword_274A22940);
    sub_274902B50();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096F2F0);
  }

  return result;
}

uint64_t sub_27490398C(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2749039D4()
{
  result = qword_28096F308;
  if (!qword_28096F308)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096F310, &unk_274A22C40);
    sub_2749F9BD4();
    sub_27490398C(&qword_28096B3C8, 255, MEMORY[0x277D7BD30], MEMORY[0x277D7BD28]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096F308);
  }

  return result;
}

uint64_t sub_274903B04()
{
  OUTLINED_FUNCTION_30_10();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v0);
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_9_3();
  OUTLINED_FUNCTION_42_8();
  v1();
  swift_storeEnumTagMultiPayload();
  return OUTLINED_FUNCTION_35_11();
}

uint64_t sub_274903BAC()
{
  OUTLINED_FUNCTION_30_10();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_9_3();
  (*(v4 + 16))(v2, v1, v0);
  swift_storeEnumTagMultiPayload();
  return OUTLINED_FUNCTION_35_11();
}

uint64_t sub_274903C58@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  sub_2749FD6C4();
  OUTLINED_FUNCTION_9();
  v7 = *(v6 + 16);

  return v7(a3, a1, v5);
}

uint64_t sub_274903CC0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  if (a2 == 1)
  {
    TupleTypeMetadata = *(a3 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x28223BE20](a1);
    OUTLINED_FUNCTION_2_0();
    v9 = v8 - v7;
    for (i = 0; a2 != i; ++i)
    {
      *(v9 + 8 * i) = *((a3 & 0xFFFFFFFFFFFFFFFELL) + 8 * i);
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
  }

  OUTLINED_FUNCTION_9_3();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_2_0();
  v14 = v13 - v12;
  if (a2)
  {
    v15 = (a3 & 0xFFFFFFFFFFFFFFFELL);
    v16 = (TupleTypeMetadata + 32);
    v17 = a2;
    do
    {
      if (a2 == 1)
      {
        v18 = 0;
      }

      else
      {
        v18 = *v16;
      }

      v20 = *v15++;
      v19 = v20;
      v21 = *v5++;
      (*(*(v19 - 8) + 16))(v14 + v18, v21);
      v16 += 4;
      --v17;
    }

    while (v17);
  }

  return sub_2749FC9E4();
}

id sub_274903E28(uint64_t a1, uint64_t a2)
{
  v3 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  OUTLINED_FUNCTION_96();
  v4 = sub_2749FCD64();

  v5 = [v2 initWithBundleIdentifier_];

  return v5;
}

uint64_t IconEditorViewModel.__allocating_init(editedObject:)(void *a1)
{
  v2 = swift_allocObject();
  IconEditorViewModel.init(editedObject:)(a1);
  return v2;
}

uint64_t WorkflowIcon.id.getter()
{
  if (*(v0 + 8))
  {
    return 0x6E6F6349707041;
  }

  else
  {
    return 0x6870796C47;
  }
}

void WFWorkflow.workflowIcon.getter(uint64_t a1@<X8>)
{
  sub_27490C938(v1, &selRef_associatedAppBundleIdentifier);
  v4 = v3;
  if (v3)
  {
    sub_27471CF08(0, &qword_28096BB10, 0x277D79DA8);
    v5 = OUTLINED_FUNCTION_32();
    v7 = sub_274903E28(v5, v6);
  }

  else
  {
    v8 = [v1 icon];
    v7 = [v8 icon];
  }

  *a1 = v7;
  *(a1 + 8) = v4 != 0;
}

uint64_t EditorIconPickerView.init(viewModel:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(*a1 + 88);
  *(a2 + 16) = sub_274908988(0, 0);
  *(a2 + 24) = v5;
  *(a2 + 32) = v6;
  *(a2 + 40) = sub_2749089D8(0);
  *(a2 + 48) = v7;
  *(a2 + 56) = sub_274908B04;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  v8 = OUTLINED_FUNCTION_21_17();
  v11 = *(type metadata accessor for EditorIconPickerView(v8, v9, v4, v10) + 52);
  *(a2 + v11) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096BF50, &qword_274A11AE0);
  swift_storeEnumTagMultiPayload();

  result = sub_2749088AC(v12, v13, v14, v15);
  *a2 = result;
  *(a2 + 8) = v17;
  *(a2 + 80) = sub_27490C880;
  *(a2 + 88) = a1;
  *(a2 + 96) = 0;
  return result;
}

uint64_t ColorIconPopoverView.init(viewModel:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096ADE0, &qword_274A19718);
  OUTLINED_FUNCTION_34(v5);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v6);
  v8 = &v18 - v7;
  v10 = type metadata accessor for ColorIconPopoverView(0, *(v4 + 80), *(v4 + 88), v9);
  v11 = sub_2749F9D74();
  __swift_storeEnumTagSinglePayload(v8, 1, 1, v11);
  sub_274906BA8(v8);
  v12 = *(v10 + 40);
  *(a2 + v12) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096BF50, &qword_274A11AE0);
  swift_storeEnumTagMultiPayload();
  result = sub_2749088AC(a1, v13, v14, v15);
  *a2 = result;
  a2[1] = v17;
  return result;
}

id WFWorkflow.setIconGlyph(to:)(uint64_t a1)
{
  v2 = v1;
  v4 = [v2 icon];
  v5 = [v4 backgroundColorValue];

  v6 = objc_allocWithZone(MEMORY[0x277D7A1E0]);
  v7 = sub_27490C76C(v5, a1, 0, 0xF000000000000000);
  [v2 setIcon_];

  return [v2 save];
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> WFWorkflow.setAssociatedAppBundleIdentifier(to:)(Swift::String_optional to)
{
  if (to.value._object)
  {
    v2 = sub_2749FCD64();
  }

  else
  {
    v2 = 0;
  }

  [v1 setAssociatedAppBundleIdentifier_];

  [v1 save];
}

id WFWorkflow.setIconColor(to:)(void *a1)
{
  v2 = v1;
  v3 = [a1 RGBAValue];
  v4 = [v2 icon];
  v5 = [v4 glyphCharacter];

  v6 = objc_allocWithZone(MEMORY[0x277D7A1E0]);
  v7 = sub_27490C76C(v3, v5, 0, 0xF000000000000000);
  [v2 setIcon_];

  return [v2 save];
}

uint64_t WFWorkflow.editableName.getter()
{
  sub_2748BF950(v0);
  if (v1)
  {
    OUTLINED_FUNCTION_84();
  }

  else
  {
    v2 = [objc_opt_self() defaultName];
    _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
    OUTLINED_FUNCTION_84();
  }

  return OUTLINED_FUNCTION_44();
}

uint64_t WorkflowIcon.hash(into:)(uint64_t a1)
{
  sub_2749FCE24();

  return sub_2749FD614();
}

uint64_t static WorkflowIcon.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*(a1 + 8) == 1)
  {
    if ((*(a2 + 8) & 1) == 0)
    {
      return 0;
    }
  }

  else if (*(a2 + 8))
  {
    return 0;
  }

  sub_27471CF08(0, &qword_28159E390, 0x277D82BB8);
  v5 = v3;
  v6 = v2;
  v7 = sub_2749FD604();

  return v7 & 1;
}

uint64_t WorkflowIcon.hashValue.getter()
{
  sub_2749FDDF4();
  sub_2749FCE24();

  sub_2749FD614();
  return sub_2749FDE44();
}

uint64_t sub_274904638(uint64_t a1)
{
  v2 = *(v1 + 8);
  v5 = *v1;
  v6 = v2;
  sub_2749FDDF4();
  WorkflowIcon.hash(into:)(v4);
  return sub_2749FDE44();
}

uint64_t sub_274904688@<X0>(uint64_t *a1@<X8>)
{
  result = WorkflowIcon.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

id WFWorkflow.editableIconBackgroundColor.getter()
{
  v1 = [v0 icon];
  v2 = [v1 backgroundColor];

  return v2;
}

id WFWorkflow.editableIconGlyph.getter()
{
  v1 = [v0 icon];
  v2 = [v1 glyphCharacter];

  return v2;
}

id sub_274904768@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 record];
  *a2 = result;
  return result;
}

id WFWorkflow.collection.getter()
{
  v1 = [v0 reference];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = [objc_opt_self() defaultDatabase];
  v4 = [v3 folderForWorkflowReference_];

  return v4;
}

uint64_t WFWorkflow.nameIfNonDefaultOrEmpty.getter()
{
  v1 = sub_2748BF950(v0);
  if (!v2)
  {
    return 0;
  }

  v3 = v1;
  v4 = [objc_opt_self() defaultName];
  _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();

  LOBYTE(v4) = sub_2749FCE84();

  if (v4)
  {

    return 0;
  }

  return v3;
}

id sub_274904904(void *a1)
{
  v1 = a1;
  WFWorkflow.appBundleIdentifier.getter();
  v3 = v2;

  if (v3)
  {
    v4 = sub_2749FCD64();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void WFWorkflow.setCollection(to:)(uint64_t a1)
{
  v2 = v1;
  v13[1] = *MEMORY[0x277D85DE8];
  v4 = [v2 reference];
  if (v4)
  {
    v5 = v4;
    v6 = [objc_opt_self() defaultDatabase];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096C990, &qword_274A11FB0);
    OUTLINED_FUNCTION_23_2();
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_274A11F70;
    *(v7 + 32) = v5;
    sub_27471CF08(0, &qword_28159E4A8, 0x277D7CAA8);
    v8 = v5;
    v9 = sub_2749FCF74();

    v13[0] = 0;
    v10 = [v6 moveReferences:v9 toIndex:sub_2749F8E24() ofCollection:a1 error:v13];

    if (v10)
    {
      v11 = v13[0];
    }

    else
    {
      v12 = v13[0];
      sub_2749F8FE4();

      swift_willThrow();
    }
  }

  else
  {
    sub_27490C990();
    swift_allocError();
    swift_willThrow();
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> WFWorkflow.rename(to:)(Swift::String to)
{
  v2 = v1;
  v12[1] = *MEMORY[0x277D85DE8];
  v3 = [v1 reference];
  if (v3)
  {
    v4 = v3;
    v5 = [objc_opt_self() defaultDatabase];
    OUTLINED_FUNCTION_43_0();
    v6 = sub_2749FCD64();
    v12[0] = 0;
    v7 = [v5 renameReference:v4 to:v6 error:v12];

    if (v7)
    {
      v8 = v12[0];

      v9 = OUTLINED_FUNCTION_43_0();
      sub_27490C9E4(v9, v10, v2);
      [v2 save];
    }

    else
    {
      v11 = v12[0];
      sub_2749F8FE4();

      swift_willThrow();
    }
  }

  else
  {
    sub_27490C990();
    swift_allocError();
    swift_willThrow();
  }
}

uint64_t WFWorkflow.availableIcons.getter()
{
  v1 = v0;
  sub_27490C938(v0, &selRef_appBundleIdentifier);
  if (v2)
  {
    OUTLINED_FUNCTION_84();
    sub_27471CF08(0, &qword_28096BB10, 0x277D79DA8);
    v3 = OUTLINED_FUNCTION_44();
    v5 = sub_274903E28(v3, v4);
    sub_274763D14();
    v7 = v6;
    v8 = *(v6 + 16);
    if (v8 >= *(v6 + 24) >> 1)
    {
      sub_274763D14();
      v7 = v17;
    }

    *(v7 + 16) = v8 + 1;
    v9 = v7 + 16 * v8;
    *(v9 + 32) = v5;
    *(v9 + 40) = 1;
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  v10 = [v1 icon];
  v11 = [v10 icon];

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_274763D14();
    v7 = v15;
  }

  v12 = *(v7 + 16);
  if (v12 >= *(v7 + 24) >> 1)
  {
    sub_274763D14();
    v7 = v16;
  }

  *(v7 + 16) = v12 + 1;
  v13 = v7 + 16 * v12;
  *(v13 + 32) = v11;
  *(v13 + 40) = 0;
  return v7;
}

void WFWorkflow.setWorkflowIcon(to:)(uint64_t a1)
{
  if (*(a1 + 8) == 1)
  {
    v1 = [*a1 bundleIdentifier];
    v2 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
    v4 = v3;

    v5.value._countAndFlagsBits = v2;
    v5.value._object = v4;
    WFWorkflow.setAssociatedAppBundleIdentifier(to:)(v5);
  }

  else
  {
    WFWorkflow.setAssociatedAppBundleIdentifier(to:)(0);
  }
}

uint64_t WFWorkflowCollection.editableName.getter()
{
  v1 = [v0 name];
  _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();

  return OUTLINED_FUNCTION_32();
}

uint64_t WFWorkflowCollection.nameIfNonDefaultOrEmpty.getter()
{
  v1 = [v0 name];
  _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();

  v2 = [objc_opt_self() defaultName];
  _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();

  OUTLINED_FUNCTION_42();
  LOBYTE(v2) = sub_2749FCE84();

  if ((v2 & 1) == 0)
  {
    v3 = [v0 name];
    _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
    OUTLINED_FUNCTION_84();
  }

  return OUTLINED_FUNCTION_44();
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> WFWorkflowCollection.rename(to:)(Swift::String to)
{
  v2 = [objc_opt_self() defaultDatabase];
  [v1 glyphCharacter];
  OUTLINED_FUNCTION_42_8();
  v8 = sub_27490CA3C(v3, v4, v5, v6, v7, v2);

  v9 = 0;
  if (v8)
  {
  }

  else
  {
    v10 = v9;
    sub_2749F8FE4();

    swift_willThrow();
  }
}

void WFWorkflowCollection.setIconGlyph(to:)(uint64_t a1)
{
  v2 = v1;
  v3 = a1;
  v12[1] = *MEMORY[0x277D85DE8];
  v4 = [objc_opt_self() defaultDatabase];
  v5 = [v2 name];
  v6 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  v8 = v7;

  v12[0] = 0;
  v9 = sub_27490C8A0(v2, v6, v8, v3, v12, v4);

  v10 = v12[0];
  if (v9)
  {
  }

  else
  {
    v11 = v10;
    sub_2749F8FE4();

    swift_willThrow();
  }
}

void WFWorkflowCollection.workflowIcon.getter(uint64_t a1@<X8>)
{
  v3 = [v1 glyphCharacter];
  v4 = [objc_opt_self() clearBackground];
  v5 = [objc_allocWithZone(MEMORY[0x277D7A1D8]) initWithGlyph:v3 background:v4];

  *a1 = v5;
  *(a1 + 8) = 0;
}

uint64_t WFWorkflowCollection.availableIcons.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967A78, &unk_274A1BF40);
  OUTLINED_FUNCTION_49_0();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_274A0EF10;
  WFWorkflowCollection.workflowIcon.getter(v0 + 32);
  return v0;
}

uint64_t IconEditorViewModel.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = qword_2815A2A20;
  sub_2749F9164();
  OUTLINED_FUNCTION_9();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t sub_274905604()
{
  OUTLINED_FUNCTION_20_16();
  OUTLINED_FUNCTION_20_16();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2749FA904();

  return v1;
}

uint64_t sub_2749056B0(uint64_t a1)
{
  OUTLINED_FUNCTION_20_16();
  OUTLINED_FUNCTION_20_16();
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_2749FA914();
}

double sub_27490579C(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096C960, &unk_274A10040);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v15 - v5;
  v7 = *a1;
  v8 = *(a1 + 8);
  v9 = sub_2749FD0E4();
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v9);
  sub_2749FD0A4();
  v10 = v7;

  v11 = sub_2749FD094();
  v12 = swift_allocObject();
  v13 = MEMORY[0x277D85700];
  *(v12 + 16) = v11;
  *(v12 + 24) = v13;
  *(v12 + 32) = v2;
  *(v12 + 40) = v7;
  *(v12 + 48) = v8;
  sub_27479930C();

  return result;
}

uint64_t sub_2749058B8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, char a6)
{
  *(v6 + 48) = a6;
  *(v6 + 16) = a4;
  *(v6 + 24) = a5;
  *(v6 + 32) = *a4;
  sub_2749FD0A4();
  *(v6 + 40) = sub_2749FD094();
  v8 = sub_2749FD044();

  return MEMORY[0x2822009F8](sub_27490597C, v8, v7);
}

uint64_t sub_27490597C()
{
  v9 = v0;
  v1 = *(v0 + 32);

  v2 = sub_274905A70();
  v7 = v5;
  v8 = v6;
  (*(*(v1 + 88) + 144))(&v7, *(v1 + 80), v2);

  v3 = *(v0 + 8);

  return v3();
}

double sub_274905A70()
{
  OUTLINED_FUNCTION_20_16();
  OUTLINED_FUNCTION_20_16();
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_32();
  sub_2749FA904();

  return result;
}

void sub_274905B20(uint64_t a1)
{
  OUTLINED_FUNCTION_20_16();
  OUTLINED_FUNCTION_20_16();
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_32();
  sub_2749FA904();

  v1 = v2;
  swift_getKeyPath();
  swift_getKeyPath();

  sub_2749FA914();
  sub_27490579C(&v2);
}

char *IconEditorViewModel.init(editedObject:)(void *a1)
{
  v2 = v1;
  v4 = *v2;
  v5 = *(*v2 + 80);
  v110 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096C210, &unk_274A12840);
  v6 = sub_2749FD5E4();
  OUTLINED_FUNCTION_1_41();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_21_17();
  v108 = v7;
  sub_2749FA804();
  OUTLINED_FUNCTION_43();
  v103 = v9;
  v104 = v8;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_14();
  v102 = v11;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096F320, &unk_274A22D50);
  OUTLINED_FUNCTION_19_18();
  v96 = v12;
  v95 = sub_2749FD5E4();
  OUTLINED_FUNCTION_43();
  v94 = v13;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_14();
  v93 = v15;
  sub_27471CF08(255, &qword_28159E520, 0x277D7A1E0);
  OUTLINED_FUNCTION_19_18();
  v105 = v16;
  sub_2749FD5E4();
  OUTLINED_FUNCTION_43();
  v100 = v18;
  v101 = v17;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_14();
  v99 = v20;
  v109 = v6;
  v107 = *(v6 - 8);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_14();
  v106 = v22;
  OUTLINED_FUNCTION_19_18();
  sub_2749FD5E4();
  OUTLINED_FUNCTION_43();
  v97 = v24;
  v98 = v23;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v25);
  v27 = &v93 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096C270, &qword_274A129A0);
  OUTLINED_FUNCTION_43();
  v30 = v29;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v31);
  v33 = &v93 - v32;
  sub_2749F9154();
  v34 = qword_28159F5E8;
  v35 = *(v4 + 88);
  sub_274905584(0);
  (*(v30 + 32))(&v2[v34], v33, v28);
  if (sub_27472D918(MEMORY[0x277D84F90]))
  {
    sub_2747AF9E0(MEMORY[0x277D84F90], v36, v37, v38, v39, v40, v41, v42, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110);
  }

  else
  {
    v43 = MEMORY[0x277D84FA0];
  }

  *&v2[qword_28159F5E0] = v43;
  *(v2 + 2) = a1;
  v44 = v35[17];
  v45 = a1;
  *&v2[qword_2815A2A28] = v44(v5, v35);
  v46 = OUTLINED_FUNCTION_7_25();
  v48 = v47(v46);
  OUTLINED_FUNCTION_17_20(&v2[qword_28159F5F0]);
  sub_2749055B4(v48);
  swift_endAccess();
  v49 = OUTLINED_FUNCTION_7_25();
  v50(v49);
  v51 = v113;
  v52 = v114;
  OUTLINED_FUNCTION_17_20(&v2[qword_28159F5F8]);
  v111 = v51;
  v112 = v52;
  sub_274905760(&v111);
  swift_endAccess();
  v53 = v35[5];
  v54 = OUTLINED_FUNCTION_7_25();
  if (v53(v54))
  {
    OUTLINED_FUNCTION_19_18();
    sub_2749FDEA4();
    v55 = swift_dynamicCastClass();
    if (v55)
    {
      OUTLINED_FUNCTION_46_7(v55);
      OUTLINED_FUNCTION_86();
      v56 = swift_allocObject();
      OUTLINED_FUNCTION_25_12(v56);
      OUTLINED_FUNCTION_23_2();
      v57 = swift_allocObject();
      v57[2] = v5;
      v57[3] = v35;
      v57[4] = v51;
      OUTLINED_FUNCTION_1_41();
      swift_getWitnessTable();
      v51 = v27;
      sub_2749FA974();
      OUTLINED_FUNCTION_96();

      v58 = OUTLINED_FUNCTION_42();
      v59(v58);
      OUTLINED_FUNCTION_17_20(&v2[qword_28159F5E0]);
      sub_2749FA834();
      swift_endAccess();

      goto LABEL_12;
    }
  }

  v60 = OUTLINED_FUNCTION_7_25();
  if (v53(v60))
  {
    OUTLINED_FUNCTION_19_18();
    sub_2749FDEA4();
    v61 = swift_dynamicCastClass();
    if (v61)
    {
      v62 = v106;
      OUTLINED_FUNCTION_46_7(v61);
      OUTLINED_FUNCTION_86();
      v63 = swift_allocObject();
      OUTLINED_FUNCTION_25_12(v63);
      OUTLINED_FUNCTION_23_2();
      v64 = swift_allocObject();
      v64[2] = v5;
      v64[3] = v35;
      v64[4] = v51;
      v65 = v109;
      v51 = v62;
      sub_2749FA974();
      OUTLINED_FUNCTION_96();

      (*(v107 + 8))(v62, v65);
      OUTLINED_FUNCTION_17_20(&v2[qword_28159F5E0]);
      sub_2749FA834();
      swift_endAccess();
    }
  }

LABEL_12:
  v66 = v35[4];
  v67 = OUTLINED_FUNCTION_7_25();
  if (v66(v67))
  {
    OUTLINED_FUNCTION_19_18();
    sub_2749FDEA4();
    v68 = swift_dynamicCastClass();
    if (v68)
    {
      OUTLINED_FUNCTION_46_7(v68);
      OUTLINED_FUNCTION_86();
      v69 = swift_allocObject();
      OUTLINED_FUNCTION_25_12(v69);
      OUTLINED_FUNCTION_49_0();
      v70 = swift_allocObject();
      v70[2] = v5;
      v70[3] = v35;
      v70[4] = v51;
      v70[5] = v45;
      v71 = v45;
      OUTLINED_FUNCTION_1_41();
      swift_getWitnessTable();
      sub_2749FA974();
      OUTLINED_FUNCTION_96();

      v72 = OUTLINED_FUNCTION_53_6();
      v73(v72);
      OUTLINED_FUNCTION_17_20(&v2[qword_28159F5E0]);
      sub_2749FA834();
      swift_endAccess();
LABEL_19:

      goto LABEL_20;
    }
  }

  v74 = OUTLINED_FUNCTION_7_25();
  if (!v66(v74))
  {
    goto LABEL_21;
  }

  OUTLINED_FUNCTION_19_18();
  sub_2749FDEA4();
  v75 = swift_dynamicCastClass();
  if (v75)
  {
    OUTLINED_FUNCTION_46_7(v75);
    OUTLINED_FUNCTION_86();
    v76 = swift_allocObject();
    OUTLINED_FUNCTION_25_12(v76);
    OUTLINED_FUNCTION_49_0();
    v77 = swift_allocObject();
    v77[2] = v5;
    v77[3] = v35;
    v77[4] = v51;
    v77[5] = v45;
    v78 = v45;
    OUTLINED_FUNCTION_1_41();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_43_4();
    sub_2749FA974();

    v79 = OUTLINED_FUNCTION_53_6();
    v80(v79);
    OUTLINED_FUNCTION_17_20(&v2[qword_28159F5E0]);
    sub_2749FA834();
    swift_endAccess();
    goto LABEL_19;
  }

LABEL_20:

LABEL_21:
  v81 = OUTLINED_FUNCTION_7_25();
  if (v82(v81))
  {
    OUTLINED_FUNCTION_19_18();
    sub_2749FDEA4();
    v83 = swift_dynamicCastClass();
    if (v83)
    {
      v84 = v106;
      OUTLINED_FUNCTION_46_7(v83);
      sub_2747B26B0();
      v85 = v102;
      sub_2749FA964();
      v86 = OUTLINED_FUNCTION_43_0();
      v87(v86);
      OUTLINED_FUNCTION_86();
      v88 = swift_allocObject();
      OUTLINED_FUNCTION_25_12(v88);
      OUTLINED_FUNCTION_49_0();
      v89 = swift_allocObject();
      v89[2] = v5;
      v89[3] = v35;
      v89[4] = v84;
      v89[5] = v45;
      v90 = v45;
      v91 = v104;
      swift_getWitnessTable();
      OUTLINED_FUNCTION_43_4();
      sub_2749FA974();

      (*(v103 + 8))(v85, v91);
      OUTLINED_FUNCTION_17_20(&v2[qword_28159F5E0]);
      sub_2749FA834();
      swift_endAccess();
    }

    else
    {
    }
  }

  else
  {
  }

  return v2;
}

double sub_274906688(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v6 = OUTLINED_FUNCTION_21_17();
    type metadata accessor for IconEditorViewModel(v6, v7, a4, v8);
    OUTLINED_FUNCTION_0_34();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_107();
    sub_2749FA874();

    sub_2749FA894();
  }

  return result;
}

double sub_274906724(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v7 = OUTLINED_FUNCTION_21_17();
    type metadata accessor for IconEditorViewModel(v7, v8, a5, v9);
    OUTLINED_FUNCTION_0_34();
    swift_getWitnessTable();
    sub_2749FA874();

    sub_2749FA894();
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v11 = (*(a5 + 128))(a4, a5);
    sub_2749056B0(v11);
  }

  return result;
}

double sub_274906824(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    type metadata accessor for IconEditorViewModel(0, a4, a5, v7);
    swift_getWitnessTable();
    sub_2749FA874();

    sub_2749FA894();
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v9 = (*(a5 + 128))(a4, a5);
    sub_2749056B0(v9);
  }

  return result;
}

uint64_t IconEditorViewModel.deinit()
{
  v1 = qword_2815A2A20;
  sub_2749F9164();
  OUTLINED_FUNCTION_1_2();
  (*(v2 + 8))(v0 + v1);
  v3 = qword_28159F5E8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096C270, &qword_274A129A0);
  OUTLINED_FUNCTION_1_2();
  (*(v4 + 8))(v0 + v3);

  v5 = qword_28159F5F0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096F328, &qword_274A22D60);
  OUTLINED_FUNCTION_1_2();
  (*(v6 + 8))(v0 + v5);
  v7 = qword_28159F5F8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096F330, &unk_274A22D68);
  OUTLINED_FUNCTION_1_2();
  (*(v8 + 8))(v0 + v7);
  return v0;
}

uint64_t IconEditorViewModel.__deallocating_deinit()
{
  IconEditorViewModel.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_274906ACC@<X0>(uint64_t a1@<X0>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  type metadata accessor for IconEditorViewModel(0, *(a1 + 80), *(a1 + 88), a3);
  result = sub_2749FA874();
  *a4 = result;
  return result;
}

WorkflowUI::ColorIconPopoverField_optional __swiftcall ColorIconPopoverField.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (!rawValue)
  {
    v2 = 0;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_274906B70@<X0>(uint64_t *a1@<X8>)
{
  result = ColorIconPopoverField.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_274906BA8(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096ADE0, &qword_274A19718);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v2);
  sub_27490E8D8(a1, &v5 - v3, &qword_28096ADE0);
  OUTLINED_FUNCTION_43_0();
  sub_2749FC5B4();
  return sub_2747359D0(a1, &qword_28096ADE0, &qword_274A19718);
}

uint64_t sub_274906C60(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096ADE0, &qword_274A19718);
  MEMORY[0x28223BE20](v2 - 8);
  sub_27490E8D8(a1, &v5 - v3, &qword_28096ADE0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096B858, &unk_274A1B0E0);
  sub_2749FC5D4();
  return sub_2747359D0(a1, &qword_28096ADE0, &qword_274A19718);
}

uint64_t ColorIconPopoverView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096B8B8, &qword_274A1B2B0);
  OUTLINED_FUNCTION_34(v6);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v7);
  v9 = v37 - v8;
  v10 = OUTLINED_FUNCTION_42();
  __swift_instantiateConcreteTypeFromMangledNameV2(v10, v11);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_16();
  *v3 = sub_2749FB634();
  *(v3 + 8) = 0;
  *(v3 + 16) = 1;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096F340, &qword_274A22D80);
  sub_274907094(v2, *(a1 + 16), *(a1 + 24), v3 + *(v13 + 44));
  sub_274906D38();
  sub_2749F9D74();
  OUTLINED_FUNCTION_43_4();
  sub_27472AB6C(v14, v15, v16, v17);
  sub_27490E5C8(&qword_28096B7C8, MEMORY[0x277D7D2C8], MEMORY[0x277D7D2D0]);
  sub_2749FC254();
  sub_2747359D0(v9, &qword_28096B8B8, &qword_274A1B2B0);
  OUTLINED_FUNCTION_43_4();
  sub_2747359D0(v18, v19, v20);
  v21 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096F350, &unk_274A22D88) + 36));
  v22 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096D900, &qword_274A1BBB0) + 28);
  v23 = *MEMORY[0x277CDF440];
  sub_2749FAAA4();
  OUTLINED_FUNCTION_9();
  (*(v24 + 104))(v21 + v22, v23);
  *v21 = swift_getKeyPath();
  sub_2749FC914();
  sub_2749FABB4();
  v25 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096F358, &qword_274A22DC8) + 36));
  v26 = v37[1];
  *v25 = v37[0];
  v25[1] = v26;
  v25[2] = v37[2];
  LOBYTE(v23) = sub_2749FBCC4();
  sub_2749FA9E4();
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096F360, &qword_274A22DD0);
  v36 = a2 + *(result + 36);
  *v36 = v23;
  *(v36 + 8) = v28;
  *(v36 + 16) = v30;
  *(v36 + 24) = v32;
  *(v36 + 32) = v34;
  *(v36 + 40) = 0;
  return result;
}

uint64_t sub_274907094@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v213 = a2;
  v210 = a4;
  v189 = type metadata accessor for GlyphPickerView(0);
  MEMORY[0x28223BE20](v189);
  v190 = &v184 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096F620, &qword_274A23630);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v209 = &v184 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v211 = &v184 - v11;
  v212 = a3;
  v13 = type metadata accessor for ColorIconPopoverView(0, a2, a3, v12);
  v203 = *(v13 - 8);
  v206 = *(v203 + 64);
  MEMORY[0x28223BE20](v13);
  v202 = &v184 - v14;
  v191 = type metadata accessor for ColorPickerView(0);
  MEMORY[0x28223BE20](v191);
  v192 = (&v184 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096F608, &qword_274A235E8);
  MEMORY[0x28223BE20](v16 - 8);
  v197 = &v184 - v17;
  v196 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096F628, &qword_274A23638);
  v18 = MEMORY[0x28223BE20](v196);
  v200 = &v184 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v194 = &v184 - v21;
  MEMORY[0x28223BE20](v20);
  v199 = &v184 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096F630, &unk_274A23640);
  v24 = MEMORY[0x28223BE20](v23 - 8);
  v208 = &v184 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v27 = &v184 - v26;
  v28 = sub_2749FC744();
  v205 = *(v28 - 8);
  v29 = MEMORY[0x28223BE20](v28);
  v31 = &v184 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v33 = &v184 - v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096BF08, &unk_274A1BE20);
  v35 = MEMORY[0x28223BE20](v34 - 8);
  v207 = &v184 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v38 = &v184 - v37;
  v39 = a1;
  v40 = *(a1 + 8);

  v41 = sub_274905604();

  v42 = *(v41 + 16);
  v43 = v213;

  v215 = v27;
  v216 = v38;
  v214 = v39;
  v204 = v13;
  v198 = v28;
  v195 = v31;
  v193 = v33;
  if (v42 < 2)
  {
    v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096BF00, &qword_274A23650);
    __swift_storeEnumTagSinglePayload(v38, 1, 1, v72);
    v68 = v38;
    v70 = v27;
    v69 = v212;
  }

  else
  {

    v201 = sub_274905604();

    v47 = sub_274908928(v13, v44, v45, v46);
    MEMORY[0x28223BE20](v47);
    v48 = v212;
    *(&v184 - 2) = v43;
    *(&v184 - 1) = v48;
    swift_getKeyPath();
    type metadata accessor for IconEditorViewModel(255, v43, v48, v49);
    swift_getWitnessTable();
    sub_2749FADA4();

    v50 = v220;
    v187 = v220;
    v51 = *(&v221 + 1);
    v185 = v221;
    LODWORD(v48) = v222;
    v52 = sub_2749FBC84();
    v53 = v52;
    LODWORD(v188) = v52;
    sub_2749FA9E4();
    v55 = v54;
    v57 = v56;
    v59 = v58;
    v61 = v60;
    LOBYTE(v220) = v48;
    v186 = v48;
    LOBYTE(__src[0]) = 0;
    sub_2749FC734();
    v62 = v31;
    v63 = v205;
    v64 = *(v205 + 16);
    v64(v62, v33, v28);
    __src[0] = v201;
    __src[1] = v50;
    v65 = v185;
    __src[2] = v185;
    __src[3] = v51;
    LOBYTE(__src[4]) = v48;
    *(&__src[4] + 1) = *v218;
    HIDWORD(__src[4]) = *&v218[3];
    LOBYTE(__src[5]) = v53;
    *(&__src[5] + 1) = *v217;
    HIDWORD(__src[5]) = *&v217[3];
    __src[6] = v55;
    __src[7] = v57;
    __src[8] = v59;
    __src[9] = v61;
    LOBYTE(__src[10]) = 0;
    memcpy(v216, __src, 0x51uLL);
    v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096BF28, &unk_274A23680);
    v64(&v216[*(v66 + 48)], v62, v28);
    sub_27490E8D8(__src, &v220, &qword_28096BF30);
    v67 = *(v63 + 8);
    v67(v33, v28);
    v67(v62, v28);
    v220 = v201;
    *&v221 = v187;
    *(&v221 + 1) = v65;
    v222 = v51;
    v68 = v216;
    v223 = v186;
    v69 = v212;
    *v224 = *v218;
    *&v224[3] = *&v218[3];
    v225 = v188;
    *v226 = *v217;
    *&v226[3] = *&v217[3];
    v227 = v55;
    v228 = v57;
    v229 = v59;
    v230 = v61;
    v70 = v215;
    v231 = 0;
    sub_2747359D0(&v220, &qword_28096BF30, &qword_274A1BE80);
    v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096BF00, &qword_274A23650);
    __swift_storeEnumTagSinglePayload(v68, 0, 1, v71);
    v40 = *(v214 + 8);
  }

  v73 = 1;
  v74 = sub_2747B2784();

  if (v74)
  {
    v75 = *(v69 + 16);
    v76 = *(v40 + 16);
    v77 = v213;
    v78 = v75(v213, v69);

    if (v78)
    {
      sub_2749FD0A4();
      v79 = v78;
      v80 = sub_2749FD094();
      v81 = swift_allocObject();
      v81[2] = v80;
      v82 = MEMORY[0x277D85700];
      v81[3] = MEMORY[0x277D85700];
      v81[4] = v79;
      v201 = v79;
      v83 = v203;
      v84 = v202;
      v85 = v204;
      (*(v203 + 16))(v202, v214, v204);
      v86 = sub_2749FD094();
      v87 = (*(v83 + 80) + 48) & ~*(v83 + 80);
      v88 = swift_allocObject();
      *(v88 + 2) = v86;
      *(v88 + 3) = v82;
      *(v88 + 4) = v77;
      *(v88 + 5) = v69;
      (*(v83 + 32))(&v88[v87], v84, v85);
      sub_27471CF08(0, &qword_280968670, 0x277D79E20);
      sub_2749FC6F4();
      v89 = v220;
      v188 = v221;
      KeyPath = swift_getKeyPath();
      v91 = v192;
      *v192 = KeyPath;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096D850, &unk_274A13E20);
      swift_storeEnumTagMultiPayload();
      v92 = v191;
      v93 = v91 + *(v191 + 20);
      *v93 = v89;
      *(v93 + 8) = v188;
      *(v91 + v92[6]) = MEMORY[0x277D84F90];
      *(v91 + v92[7]) = 0x4030000000000000;
      *(v91 + v92[8]) = 6;
      sub_2749FCE14("Color", 5);
      if (qword_28159E3A8 != -1)
      {
        swift_once();
      }

      v94 = qword_28159E448;
      v95 = sub_2749FCD64();
      v96 = sub_2749FCD64();

      v97 = [v94 localizedStringForKey:v95 value:v96 table:0];

      v98 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
      v100 = v99;

      v220 = v98;
      *&v221 = v100;
      sub_27490E5C8(&qword_28096F610, type metadata accessor for ColorPickerView, &unk_274A208A4);
      sub_27475D0D0();
      v101 = v197;
      sub_2749FC0F4();

      sub_27490E610(v91, type metadata accessor for ColorPickerView);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096FDC0, &qword_274A16220);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_274A0F620;
      v103 = sub_2749FBC94();
      *(inited + 32) = v103;
      v104 = sub_2749FBCB4();
      *(inited + 33) = v104;
      v105 = sub_2749FBCA4();
      sub_2749FBCA4();
      if (sub_2749FBCA4() != v103)
      {
        v105 = sub_2749FBCA4();
      }

      sub_2749FBCA4();
      v106 = sub_2749FBCA4();
      v107 = v198;
      v108 = v205;
      v109 = v193;
      if (v106 != v104)
      {
        v105 = sub_2749FBCA4();
      }

      v110 = v195;
      sub_2749FA9E4();
      v112 = v111;
      v114 = v113;
      v116 = v115;
      v118 = v117;
      v119 = v101;
      v120 = v194;
      sub_27490E880(v119, v194, &qword_28096F608);
      v121 = v120 + *(v196 + 36);
      *v121 = v105;
      *(v121 + 8) = v112;
      *(v121 + 16) = v114;
      *(v121 + 24) = v116;
      *(v121 + 32) = v118;
      *(v121 + 40) = 0;
      v122 = v199;
      sub_27490E880(v120, v199, &qword_28096F628);
      sub_2749FC734();
      v123 = v109;
      v124 = v200;
      sub_27490E8D8(v122, v200, &qword_28096F628);
      v125 = *(v108 + 16);
      v125(v110, v123, v107);
      v126 = v110;
      v127 = v215;
      sub_27490E8D8(v124, v215, &qword_28096F628);
      v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096F658, &qword_274A23678);
      v125((v127 + *(v128 + 48)), v126, v107);

      v129 = *(v108 + 8);
      v70 = v127;
      v129(v123, v107);
      sub_2747359D0(v122, &qword_28096F628, &qword_274A23638);
      v129(v126, v107);
      sub_2747359D0(v124, &qword_28096F628, &qword_274A23638);
      v73 = 0;
      v68 = v216;
    }

    else
    {
      v73 = 1;
      v68 = v216;
    }
  }

  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096F638, &qword_274A23658);
  v131 = 1;
  __swift_storeEnumTagSinglePayload(v70, v73, 1, v130);
  v132 = v214;

  v133 = sub_2747B2784();

  v134 = v211;
  if (v133)
  {

    sub_274905A70();

    v135 = v221;

    if (v135)
    {
      v131 = 1;
    }

    else
    {
      v136 = v203;
      v205 = *(v203 + 16);
      v137 = v202;
      v138 = v204;
      (v205)(v202, v132, v204);
      v201 = sub_2749FD0A4();
      v139 = sub_2749FD094();
      v140 = (*(v136 + 80) + 48) & ~*(v136 + 80);
      v141 = swift_allocObject();
      v141[2] = v139;
      v142 = v132;
      v143 = v213;
      v141[3] = MEMORY[0x277D85700];
      v141[4] = v143;
      v144 = v212;
      v141[5] = v212;
      v203 = *(v136 + 32);
      (v203)(v141 + v140, v137, v138);
      (v205)(v137, v142, v138);
      v145 = sub_2749FD094();
      v146 = swift_allocObject();
      v146[2] = v145;
      v147 = v213;
      v146[3] = MEMORY[0x277D85700];
      v146[4] = v147;
      v148 = v144;
      v146[5] = v144;
      (v203)(v146 + v140, v137, v138);
      type metadata accessor for WFGlyphCharacter(0);
      sub_2749FC6F4();
      v149 = v220;
      v150 = v221;
      v151 = WORD4(v221);
      v152 = v214;
      v153 = v148;
      v154 = *(v148 + 152);
      v155 = *(*(v214 + 8) + 16);
      v156 = v154(v147, v153);

      v157 = *(*(v152 + 8) + 16);
      v158 = v153;
      v159 = *(v153 + 160);
      v160 = v157;
      LOBYTE(v154) = v159(v147, v158);

      v161 = v189;
      v162 = *(v189 + 20);
      v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096BF10, &unk_274A1D480);
      v164 = v190;
      __swift_storeEnumTagSinglePayload(&v190[v162], 1, 1, v163);
      *v164 = v149;
      *(v164 + 8) = v150;
      *(v164 + 16) = v151;
      v165 = swift_allocObject();
      *(v165 + 16) = v154 & 1;
      v166 = v164 + *(v161 + 24);
      *v166 = sub_27487463C;
      *(v166 + 8) = v165;
      *(v166 + 16) = 0;
      v167 = swift_allocObject();
      *(v167 + 16) = v156 & 1;
      *(v167 + 17) = v154 & 1;
      v168 = v164 + *(v161 + 28);
      *v168 = sub_274874644;
      *(v168 + 8) = v167;
      *(v168 + 16) = 0;
      sub_2749FCE14("Glyph", 5);
      if (qword_28159E3A8 != -1)
      {
        swift_once();
      }

      v169 = qword_28159E448;
      v170 = sub_2749FCD64();
      v171 = sub_2749FCD64();

      v172 = [v169 localizedStringForKey:v170 value:v171 table:0];

      v173 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
      v175 = v174;

      v220 = v173;
      *&v221 = v175;
      sub_27490E5C8(&qword_28096F650, type metadata accessor for GlyphPickerView, &unk_274A1D4B4);
      sub_27475D0D0();
      v134 = v211;
      sub_2749FC0F4();

      sub_27490E610(v164, type metadata accessor for GlyphPickerView);
      v131 = 0;
      v70 = v215;
      v68 = v216;
    }
  }

  v176 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096F640, &qword_274A23660);
  __swift_storeEnumTagSinglePayload(v134, v131, 1, v176);
  v177 = v207;
  sub_27490E8D8(v68, v207, &qword_28096BF08);
  v178 = v68;
  v179 = v208;
  sub_27490E8D8(v70, v208, &qword_28096F630);
  v180 = v209;
  sub_27490E8D8(v134, v209, &qword_28096F620);
  v181 = v210;
  sub_27490E8D8(v177, v210, &qword_28096BF08);
  v182 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096F648, &unk_274A23668);
  sub_27490E8D8(v179, v181 + *(v182 + 48), &qword_28096F630);
  sub_27490E8D8(v180, v181 + *(v182 + 64), &qword_28096F620);
  sub_2747359D0(v134, &qword_28096F620, &qword_274A23630);
  sub_2747359D0(v215, &qword_28096F630, &unk_274A23640);
  sub_2747359D0(v178, &qword_28096BF08, &unk_274A1BE20);
  sub_2747359D0(v180, &qword_28096F620, &qword_274A23630);
  sub_2747359D0(v179, &qword_28096F630, &unk_274A23640);
  return sub_2747359D0(v177, &qword_28096BF08, &unk_274A1BE20);
}

void sub_2749085EC(uint64_t a1@<X8>)
{
  sub_274905A70();
  *a1 = v2;
  *(a1 + 8) = v3;
}

void sub_274908630(uint64_t a1)
{
  v1 = *(a1 + 8);
  v3 = *a1;
  v4 = v1;
  v2 = v3;
  sub_274905B20(&v3);
}

void sub_274908674(unsigned __int16 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096ADE0, &qword_274A19718);
  MEMORY[0x28223BE20](v10 - 8);
  v11 = *(a6 + 88);
  v12 = *a1;
  v13 = *(*(a4 + 8) + 16);
  v11(v12, a5, a6);
}

uint64_t sub_2749087E0(uint64_t a1)
{
  v2 = sub_2749F9D74();
  MEMORY[0x28223BE20](v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_2749FC364();
}

uint64_t sub_2749088AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for IconEditorViewModel(0, *(*a1 + 80), *(*a1 + 88), a4);
  OUTLINED_FUNCTION_0_34();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_44();

  return sub_2749FAD84();
}

uint64_t sub_274908928(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for IconEditorViewModel(0, *(a1 + 16), *(a1 + 24), a4);
  OUTLINED_FUNCTION_0_34();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_44();

  return sub_2749FAD94();
}

uint64_t sub_274908988(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096C210, &unk_274A12840);
  sub_2749FC5B4();
  return v3;
}

uint64_t sub_2749089D8(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096A998, &qword_274A18B20);
  sub_2749FC5B4();
  return v2;
}

uint64_t sub_274908A74()
{
  sub_2749F9DB4();
  sub_27490E5C8(&qword_28096C598, MEMORY[0x277D7D2E0], MEMORY[0x277D7D2D8]);

  return sub_2749FAB04();
}

uint64_t sub_274908B04()
{
  sub_2749F9DB4();
  swift_allocObject();
  return sub_2749F9DA4();
}

uint64_t sub_274908B4C()
{
  type metadata accessor for GlyphRegistry(0);
  sub_27490E5C8(&qword_28096C5A8, type metadata accessor for GlyphRegistry, &protocol conformance descriptor for GlyphRegistry);

  return sub_2749FAB04();
}

uint64_t sub_274908BDC(uint64_t a1)
{
  v1 = *(*a1 + 88);
  v2 = *(*a1 + 80);
  v3 = (*(v1 + 152))(v2, v1);
  LOBYTE(v1) = (*(v1 + 160))(v2, v1);
  type metadata accessor for GlyphRegistry(0);
  swift_allocObject();
  return GlyphRegistry.init(useSystemGlyphsOnly:useOutlineGlyphsOnly:hiddenCategories:)(v3 & 1, v1 & 1, &unk_28838F7F8);
}

uint64_t EditorIconPickerView.body.getter@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v46 = a2;
  v45 = sub_2749FBAC4();
  OUTLINED_FUNCTION_43();
  v44 = v3;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_2_0();
  v43 = v6 - v5;
  v40 = *(a1 - 8);
  v41 = *(v40 + 64);
  MEMORY[0x28223BE20](v7);
  v9 = v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096F368, &qword_274A22DD8);
  v10 = *(a1 + 24);
  v39 = *(a1 + 16);
  v38 = v10;
  type metadata accessor for EditorIconPickerView.GroupBackground(255, v39, v10, v11);
  OUTLINED_FUNCTION_1();
  sub_2749FAEA4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096F370, &qword_274A22DE0);
  OUTLINED_FUNCTION_18_20();
  sub_2749FAEA4();
  OUTLINED_FUNCTION_5_35();
  sub_2749FB7C4();
  OUTLINED_FUNCTION_18_20();
  sub_2749FD6C4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096F378, &qword_274A22DE8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096F380, &unk_274A22DF0);
  OUTLINED_FUNCTION_18_20();
  sub_2749FAEA4();
  sub_2749FAEA4();
  sub_2749FAEA4();
  OUTLINED_FUNCTION_18_20();
  sub_2749FD6C4();
  OUTLINED_FUNCTION_1();
  swift_getTupleTypeMetadata3();
  OUTLINED_FUNCTION_18_20();
  sub_2749FC9D4();
  OUTLINED_FUNCTION_15_18();
  OUTLINED_FUNCTION_5_35();
  sub_2749FC694();
  OUTLINED_FUNCTION_16_15();
  OUTLINED_FUNCTION_5_35();
  sub_2749FAA44();
  OUTLINED_FUNCTION_14_17();
  v34[1] = swift_getWitnessTable();
  v34[0] = sub_2749FAFE4();
  v12 = sub_2749FAEA4();
  v36 = v12;
  OUTLINED_FUNCTION_13_21();
  WitnessTable = swift_getWitnessTable();
  v53 = WitnessTable;
  v54 = MEMORY[0x277CDF918];
  OUTLINED_FUNCTION_0_8();
  v37 = swift_getWitnessTable();
  *&v55[0] = v12;
  *(&v55[0] + 1) = v37;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_43();
  v15 = v14;
  v17 = MEMORY[0x28223BE20](v16);
  v19 = v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = v34 - v20;
  v22 = v40;
  v23 = v9;
  (*(v40 + 16))(v9, v42, a1);
  v24 = (*(v22 + 80) + 32) & ~*(v22 + 80);
  v25 = swift_allocObject();
  v26 = v38;
  *(v25 + 16) = v39;
  *(v25 + 24) = v26;
  (*(v22 + 32))(v25 + v24, v23, a1);
  swift_checkMetadataState();
  *&v55[0] = sub_2749FAFD4();
  *(&v55[0] + 1) = v27;
  sub_2749FBC54();
  swift_checkMetadataState();
  sub_2749FC2B4();

  v55[0] = v50;
  v55[1] = v51;
  *v56 = v52[0];
  *&v56[9] = *(v52 + 9);
  v47 = v50;
  v48 = v51;
  v49[0] = v52[0];
  *(v49 + 9) = *(v52 + 9);
  v28 = v43;
  sub_2749FBAB4();
  v29 = swift_checkMetadataState();
  sub_2749FC204();
  (*(v44 + 8))(v28, v45);
  OUTLINED_FUNCTION_9_3();
  (*(v30 + 8))(v55, v29);
  v31 = *(v15 + 16);
  v31(v21, v19, OpaqueTypeMetadata2);
  v32 = *(v15 + 8);
  v32(v19, OpaqueTypeMetadata2);
  v31(v46, v21, OpaqueTypeMetadata2);
  return (v32)(v21, OpaqueTypeMetadata2);
}

uint64_t sub_274909274@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v21 = a5;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096F368, &qword_274A22DD8);
  type metadata accessor for EditorIconPickerView.GroupBackground(255, a3, a4, v9);
  sub_2749FAEA4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096F370, &qword_274A22DE0);
  sub_2749FAEA4();
  sub_2749FB7C4();
  sub_2749FD6C4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096F378, &qword_274A22DE8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096F380, &unk_274A22DF0);
  sub_2749FAEA4();
  sub_2749FAEA4();
  sub_2749FAEA4();
  sub_2749FD6C4();
  swift_getTupleTypeMetadata3();
  sub_2749FC9D4();
  swift_getWitnessTable();
  sub_2749FC694();
  swift_getWitnessTable();
  v10 = sub_2749FAA44();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v20 - v15;
  sub_2749FBC44();
  v22 = a3;
  v23 = a4;
  v24 = a2;
  v25 = a1;
  sub_2749FAA54();
  swift_getWitnessTable();
  v17 = *(v11 + 16);
  v17(v16, v14, v10);
  v18 = *(v11 + 8);
  v18(v14, v10);
  v17(v21, v16, v10);
  return (v18)(v16, v10);
}

uint64_t sub_274909594@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v21 = a5;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096F368, &qword_274A22DD8);
  type metadata accessor for EditorIconPickerView.GroupBackground(255, a3, a4, v9);
  sub_2749FAEA4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096F370, &qword_274A22DE0);
  sub_2749FAEA4();
  sub_2749FB7C4();
  sub_2749FD6C4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096F378, &qword_274A22DE8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096F380, &unk_274A22DF0);
  sub_2749FAEA4();
  sub_2749FAEA4();
  sub_2749FAEA4();
  sub_2749FD6C4();
  swift_getTupleTypeMetadata3();
  sub_2749FC9D4();
  swift_getWitnessTable();
  v10 = sub_2749FC694();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v20 - v15;
  v22 = a3;
  v23 = a4;
  v24 = a1;
  v25 = a2;
  sub_2749FB634();
  sub_2749FC684();
  swift_getWitnessTable();
  v17 = *(v11 + 16);
  v17(v16, v14, v10);
  v18 = *(v11 + 8);
  v18(v14, v10);
  v17(v21, v16, v10);
  return (v18)(v16, v10);
}

uint64_t sub_274909888@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v288 = a2;
  v314 = a5;
  v289 = type metadata accessor for GlyphPickerCachedView(0);
  MEMORY[0x28223BE20](v289);
  v292 = &v269 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096F380, &unk_274A22DF0);
  MEMORY[0x28223BE20](v9);
  v290 = &v269 - v10;
  v12 = type metadata accessor for EditorIconPickerView.GroupBackground(255, a3, a4, v11);
  v291 = v9;
  v13 = sub_2749FAEA4();
  v294 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v293 = &v269 - v14;
  v326 = v15;
  v16 = sub_2749FAEA4();
  v297 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v295 = &v269 - v17;
  v325 = v18;
  v19 = sub_2749FAEA4();
  v299 = *(v19 - 8);
  v20 = MEMORY[0x28223BE20](v19);
  v298 = &v269 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v296 = &v269 - v22;
  v327 = v23;
  v313 = sub_2749FD6C4();
  v310 = *(v313 - 8);
  v24 = MEMORY[0x28223BE20](v313);
  v324 = &v269 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v312 = &v269 - v26;
  v300 = type metadata accessor for ColorPickerView(0);
  MEMORY[0x28223BE20](v300);
  v301 = (&v269 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  v316 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096F578, &qword_274A235C0);
  MEMORY[0x28223BE20](v316);
  v302 = &v269 - v28;
  v309 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096F378, &qword_274A22DE8);
  v29 = MEMORY[0x28223BE20](v309);
  v311 = &v269 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v330 = &v269 - v31;
  v315 = type metadata accessor for EditorIconPickerView(0, a3, a4, v32);
  v303 = *(v315 - 8);
  v304 = *(v303 + 64);
  MEMORY[0x28223BE20](v315);
  v305 = &v269 - v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096F580, &qword_274A235C8);
  MEMORY[0x28223BE20](v34 - 8);
  v281 = &v269 - v35;
  v280 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096F588, &qword_274A235D0);
  MEMORY[0x28223BE20](v280);
  v282 = &v269 - v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096F370, &qword_274A22DE0);
  MEMORY[0x28223BE20](v37);
  v283 = &v269 - v38;
  v39 = sub_2749FAEA4();
  v286 = *(v39 - 8);
  v40 = MEMORY[0x28223BE20](v39);
  *&v285 = &v269 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = MEMORY[0x28223BE20](v40);
  v44 = &v269 - v43;
  MEMORY[0x28223BE20](v42);
  v284 = &v269 - v45;
  v46 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096F368, &qword_274A22DD8);
  v319 = v12;
  v47 = sub_2749FAEA4();
  v322 = v39;
  v48 = sub_2749FB7C4();
  v308 = *(v48 - 8);
  v49 = MEMORY[0x28223BE20](v48);
  v307 = &v269 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v49);
  v287 = &v269 - v51;
  v321 = v52;
  v323 = sub_2749FD6C4();
  v320 = *(v323 - 8);
  v53 = MEMORY[0x28223BE20](v323);
  v329 = &v269 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v53);
  v328 = &v269 - v55;
  v317 = a1;
  v56 = *(a1 + 8);

  LOBYTE(a1) = sub_2747B2784();

  v318 = v47;
  *&v306 = a4;
  if ((a1 & 1) == 0)
  {
    goto LABEL_7;
  }

  v57 = *(a4 + 16);
  v58 = *(v56 + 16);
  v59 = v57(a3, a4);

  if (!v59)
  {
    goto LABEL_7;
  }

  v60 = v317;

  v61 = sub_2747B2784();

  if ((v61 & 1) == 0)
  {

LABEL_7:
    v90 = v329;
    __swift_storeEnumTagSinglePayload(v329, 1, 1, v321);
    v91 = sub_27490DAD8();
    WitnessTable = swift_getWitnessTable();
    v388 = v91;
    v389 = WitnessTable;
    v93 = swift_getWitnessTable();
    v386 = sub_27490DC44();
    v387 = WitnessTable;
    v94 = swift_getWitnessTable();
    v384 = v93;
    v385 = v94;
    swift_getWitnessTable();
    v95 = v327;
    goto LABEL_8;
  }

  v62 = sub_274905604();

  v63 = *(v62 + 16);

  v279 = a3;
  if (v63 < 2)
  {
    v273 = v44;
    sub_2749FD0A4();
    v211 = v59;
    v212 = sub_2749FD094();
    v213 = swift_allocObject();
    v213[2] = v212;
    v213[3] = MEMORY[0x277D85700];
    v213[4] = v211;
    v272 = v211;
    v214 = v303;
    v215 = *(v303 + 16);
    v271 = v303 + 16;
    v274 = v215;
    v215(v305, v60, v315);
    v216 = sub_2749FD094();
    v270 = *(v214 + 80);
    v217 = (v270 + 48) & ~v270;
    v218 = swift_allocObject();
    *(v218 + 2) = v216;
    *(v218 + 3) = MEMORY[0x277D85700];
    *(v218 + 4) = a3;
    v219 = a3;
    *(v218 + 5) = v306;
    v275 = *(v214 + 32);
    v276 = v214 + 32;
    v220 = v217;
    v221 = v305;
    v275(&v218[v217], v305, v315);
    sub_27471CF08(0, &qword_280968670, 0x277D79E20);
    sub_2749FC6F4();
    v277 = *&v347[8];
    v278 = *v347;
    v269 = *&v347[16];
    v274(v221, v60, v315);
    v222 = sub_2749FD094();
    v223 = swift_allocObject();
    *(v223 + 2) = v222;
    *(v223 + 3) = MEMORY[0x277D85700];
    *(v223 + 4) = v219;
    v224 = v305;
    v225 = v306;
    *(v223 + 5) = v306;
    v275(&v223[v217], v224, v315);
    v274(v224, v60, v315);
    v226 = sub_2749FD094();
    v227 = swift_allocObject();
    *(v227 + 2) = v226;
    v228 = v279;
    *(v227 + 3) = MEMORY[0x277D85700];
    *(v227 + 4) = v228;
    *(v227 + 5) = v225;
    v229 = v269;
    v275(&v227[v220], v305, v315);
    type metadata accessor for WFGlyphCharacter(0);
    sub_2749FC6F4();
    *v347 = v278;
    *&v347[8] = v277;
    *&v347[16] = v229;
    *&v347[24] = v346[0];
    *&v347[32] = v346[1];
    *&v347[40] = v346[2];
    sub_2749FCE14("Icon Preview", 12);
    if (qword_28159E3A8 != -1)
    {
      swift_once();
    }

    v230 = qword_28159E448;
    v231 = sub_2749FCD64();
    v232 = sub_2749FCD64();

    v233 = [v230 localizedStringForKey:v231 value:v232 table:0];

    v234 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
    v236 = v235;

    v346[0] = v234;
    v346[1] = v236;
    sub_27490DE18();
    sub_27475D0D0();
    v237 = v281;
    sub_2749FC0F4();

    sub_2749FC914();
    sub_2749FB004();
    v238 = v237;
    v239 = v282;
    sub_27490E880(v238, v282, &qword_28096F580);
    memcpy((v239 + *(v280 + 36)), v347, 0x70uLL);
    LOBYTE(v233) = sub_2749FBCC4();
    sub_2749FA9E4();
    v241 = v240;
    v243 = v242;
    v245 = v244;
    v247 = v246;
    v248 = v283;
    sub_27490E880(v239, v283, &qword_28096F588);
    v249 = v248 + *(v37 + 36);
    *v249 = v233;
    *(v249 + 8) = v241;
    *(v249 + 16) = v243;
    *(v249 + 24) = v245;
    *(v249 + 32) = v247;
    *(v249 + 40) = 0;
    v250 = sub_27490DC44();
    v251 = v273;
    MEMORY[0x277C5E040](v250, v37, v319, v250);
    sub_2747359D0(v248, &qword_28096F370, &qword_274A22DE0);
    v252 = swift_getWitnessTable();
    v356 = v250;
    v357 = v252;
    v253 = v322;
    v283 = swift_getWitnessTable();
    v254 = v286;
    v255 = v286[2];
    v256 = v284;
    v255(v284, v251, v253);
    v257 = v254[1];
    v257(v251, v253);
    v258 = v285;
    v255(v285, v256, v253);
    v354 = sub_27490DAD8();
    v355 = v252;
    swift_getWitnessTable();
    v259 = v287;
    sub_274903BAC();

    v257(v258, v253);
    v257(v256, v253);
    v89 = v259;
  }

  else
  {

    v64 = sub_274905604();
    v286 = v59;
    v65 = v64;

    v69 = sub_274908928(v315, v66, v67, v68);
    MEMORY[0x28223BE20](v69);
    v70 = v306;
    swift_getKeyPath();
    type metadata accessor for IconEditorViewModel(255, a3, v70, v71);
    swift_getWitnessTable();
    sub_2749FADA4();

    v285 = *v347;
    v72 = *&v347[16];
    v73 = v347[24];
    sub_2749FC914();
    sub_2749FB004();
    v345[120] = v73;
    memcpy(&v345[7], __src, 0x70uLL);
    LOBYTE(v70) = v73;
    v74 = sub_2749FBC64();
    sub_2749FA9E4();
    v76 = v75;
    v78 = v77;
    v80 = v79;
    v82 = v81;
    v345[128] = 0;
    *&v347[8] = v285;
    *v347 = v65;
    *&v347[24] = v72;
    v347[32] = v70;
    memcpy(&v347[33], v345, 0x77uLL);
    v347[152] = v74;
    *&v347[160] = v76;
    *&v347[168] = v78;
    *&v347[176] = v80;
    *&v347[184] = v82;
    v347[192] = 0;
    v83 = sub_27490DAD8();
    MEMORY[0x277C5E040](v346, v83, v46, v319, v83);
    memcpy(v337, v347, 0xC1uLL);
    sub_2747359D0(v337, &qword_28096F368, &qword_274A22DD8);
    memcpy(v344, v346, 0xC1uLL);
    v84 = swift_getWitnessTable();
    v335 = v83;
    v336 = v84;
    v85 = v318;
    swift_getWitnessTable();
    v86 = *(v85 - 8);
    v87 = *(v86 + 16);
    v87(v347, v344, v85);
    memcpy(v338, v344, 0xC1uLL);
    v88 = *(v86 + 8);
    v88(v338, v85);
    memcpy(v339, v347, 0xC1uLL);
    memcpy(v344, v347, 0xC1uLL);
    v87(v334, v344, v85);
    memcpy(v340, v344, 0xC1uLL);
    v87(v343, v339, v85);
    v88(v340, v85);
    memcpy(v341, v334, 0xC1uLL);
    memcpy(v333, v334, sizeof(v333));
    v87(v344, v341, v85);
    v331 = sub_27490DC44();
    v332 = v84;
    swift_getWitnessTable();
    v89 = v287;
    sub_274903B04();

    memcpy(v342, v333, 0xC1uLL);
    v88(v342, v85);
    memcpy(v343, v334, 0xC1uLL);
    v88(v343, v85);
    memcpy(v344, v347, 0xC1uLL);
    v88(v344, v85);
  }

  v260 = sub_27490DAD8();
  v261 = swift_getWitnessTable();
  v352 = v260;
  v353 = v261;
  v262 = swift_getWitnessTable();
  v350 = sub_27490DC44();
  v351 = v261;
  v263 = swift_getWitnessTable();
  v348 = v262;
  v349 = v263;
  v264 = v321;
  swift_getWitnessTable();
  v266 = v307;
  v265 = v308;
  (*(v308 + 16))(v307, v89, v264);
  (*(v265 + 8))(v89, v264);
  v90 = v329;
  (*(v265 + 32))(v329, v266, v264);
  __swift_storeEnumTagSinglePayload(v90, 0, 1, v264);
  v95 = v327;
  a3 = v279;
LABEL_8:
  sub_274903C58(v90, v328);
  v307 = *(v320 + 8);
  v308 = v320 + 8;
  (v307)(v90, v323);
  v96 = v317;

  v97 = 1;
  v98 = sub_2747B2784();

  if (v98)
  {
    v99 = *(v96[1] + 16);
    v100 = a3;
    v101 = v306;
    v102 = v96;
    v103 = *(v306 + 16);
    v104 = v99;
    v105 = v103(v100, v101);

    if (v105)
    {
      sub_2749FD0A4();
      v106 = v105;
      v107 = sub_2749FD094();
      v108 = swift_allocObject();
      v108[2] = v107;
      v108[3] = MEMORY[0x277D85700];
      v108[4] = v106;
      v287 = v106;
      v109 = v303;
      v110 = v305;
      v111 = v102;
      v112 = v315;
      (*(v303 + 16))(v305, v111, v315);
      v113 = sub_2749FD094();
      v114 = (*(v109 + 80) + 48) & ~*(v109 + 80);
      v115 = swift_allocObject();
      *(v115 + 2) = v113;
      *(v115 + 3) = MEMORY[0x277D85700];
      *(v115 + 4) = v100;
      *(v115 + 5) = v101;
      (*(v109 + 32))(&v115[v114], v110, v112);
      sub_27471CF08(0, &qword_280968670, 0x277D79E20);
      sub_2749FC6F4();
      v116 = v346[0];
      v306 = *&v346[1];
      KeyPath = swift_getKeyPath();
      v118 = v301;
      *v301 = KeyPath;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096D850, &unk_274A13E20);
      swift_storeEnumTagMultiPayload();
      v119 = v300;
      v120 = v118 + *(v300 + 20);
      *v120 = v116;
      *(v120 + 8) = v306;
      *(v118 + v119[6]) = MEMORY[0x277D84F90];
      *(v118 + v119[7]) = 0x4030000000000000;
      *(v118 + v119[8]) = 6;
      sub_2749FCE14("Color", 5);
      if (qword_28159E3A8 != -1)
      {
        swift_once();
      }

      v121 = qword_28159E448;
      v122 = sub_2749FCD64();
      v123 = sub_2749FCD64();

      v124 = [v121 localizedStringForKey:v122 value:v123 table:0];

      v125 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
      v127 = v126;

      v346[0] = v125;
      v346[1] = v127;
      sub_27490E5C8(&qword_28096F610, type metadata accessor for ColorPickerView, &unk_274A208A4);
      sub_27475D0D0();
      v128 = v302;
      sub_2749FC0F4();

      sub_27490E610(v118, type metadata accessor for ColorPickerView);
      v129 = [objc_opt_self() systemBackgroundColor];
      v130 = sub_2749FC3E4();
      LOBYTE(v125) = sub_2749FBC64();

      v131 = v128 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096F5F8, &qword_274A235E0) + 36);
      *v131 = v130;
      *(v131 + 8) = v125;
      v132 = (v128 + *(v316 + 36));
      v133 = *(sub_2749FAFC4() + 20);
      v134 = *MEMORY[0x277CE0118];
      v135 = sub_2749FB584();
      (*(*(v135 - 8) + 104))(&v132[v133], v134, v135);
      __asm { FMOV            V0.2D, #10.0 }

      *v132 = _Q0;
      *&v132[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280969C20, &qword_274A15F60) + 36)] = 256;
      sub_27490E880(v128, v330, &qword_28096F578);
      v97 = 0;
      v95 = v327;
    }

    else
    {
      v97 = 1;
    }
  }

  __swift_storeEnumTagSinglePayload(v330, v97, 1, v316);

  v141 = sub_2747B2784();

  v142 = MEMORY[0x277CDFC60];
  if ((v141 & 1) != 0 && (, sub_274905A70(), , v143 = v346[1], v346[0], (v143 & 1) == 0))
  {
    v149 = sub_27490BD84(v315);
    v151 = v150;
    v153 = v152;
    v154 = v289;
    v155 = *(v289 + 20);
    v156 = sub_2749FAF04();
    v157 = v292;
    (*(*(v156 - 8) + 16))(&v292[v155], v288, v156);
    __swift_storeEnumTagSinglePayload(v157 + v155, 0, 1, v156);
    v158 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096BF10, &unk_274A1D480);
    __swift_storeEnumTagSinglePayload(v157 + v155, 0, 1, v158);
    sub_274908A74();
    sub_274908B4C();
    *v157 = v149;
    *(v157 + 8) = v151;
    *(v157 + 16) = v153;
    v159 = (v157 + v154[6]);
    sub_2749F9DB4();
    sub_27490E5C8(&qword_28096C598, MEMORY[0x277D7D2E0], MEMORY[0x277D7D2D8]);
    *v159 = sub_2749FAD84();
    v159[1] = v160;
    v161 = (v157 + v154[7]);
    type metadata accessor for GlyphRegistry(0);
    sub_27490E5C8(&qword_28096C5A8, type metadata accessor for GlyphRegistry, &protocol conformance descriptor for GlyphRegistry);
    *v161 = sub_2749FAD84();
    v161[1] = v162;
    v163 = (v157 + v154[8]);
    *v163 = 0;
    v163[1] = 0;
    v164 = v157 + v154[9];
    v344[0] = 0;
    v344[1] = 0xE000000000000000;
    sub_2749FC5B4();
    v165 = v346[2];
    *v164 = *v346;
    *(v164 + 16) = v165;
    v166 = v157 + v154[10];
    LOBYTE(v344[0]) = 0;
    sub_2749FC5B4();
    v167 = v346[1];
    *v166 = v346[0];
    *(v166 + 8) = v167;
    v168 = v157 + v154[11];
    v344[0] = 0;
    v344[1] = 0xE000000000000000;
    sub_2749FC5B4();
    v169 = v346[2];
    *v168 = *v346;
    *(v168 + 16) = v169;
    v170 = v157 + v154[12];
    v346[0] = v154;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096C760, &qword_274A1D6E0);
    v346[0] = sub_2749FCDC4();
    v346[1] = v171;

    MEMORY[0x277C5EBC0](0xD000000000000010, 0x8000000274A30D80);

    v172 = v346[1];
    *v170 = v346[0];
    *(v170 + 8) = v172;
    sub_2749FCE14("Glyph", 5);
    if (qword_28159E3A8 != -1)
    {
      swift_once();
    }

    v173 = qword_28159E448;
    v174 = sub_2749FCD64();
    v175 = sub_2749FCD64();

    v176 = [v173 localizedStringForKey:v174 value:v175 table:0];

    v177 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
    v179 = v178;

    v346[0] = v177;
    v346[1] = v179;
    sub_27490E5C8(&qword_28096C7B0, type metadata accessor for GlyphPickerCachedView, &unk_274A1D504);
    sub_27475D0D0();
    v180 = v290;
    sub_2749FC0F4();

    sub_27490E610(v157, type metadata accessor for GlyphPickerCachedView);
    v181 = sub_27490DE6C();
    v182 = v293;
    MEMORY[0x277C5E040](v181, v291, v319, v181);
    sub_2747359D0(v180, &qword_28096F380, &unk_274A22DF0);
    sub_2749FC8E4();
    v183 = swift_getWitnessTable();
    v362 = v181;
    v363 = v183;
    v267 = v326;
    v268 = swift_getWitnessTable();
    v184 = v295;
    sub_2749FC264();
    (*(v294 + 8))(v182, v267);
    LOBYTE(v176) = sub_2749FBC44();
    v185 = sub_2749FC8F4();
    LOBYTE(v346[0]) = v176;
    v346[1] = v185;
    v346[2] = v186;
    v360 = v268;
    v361 = MEMORY[0x277CDFC60];
    v187 = v325;
    v188 = swift_getWitnessTable();
    v189 = v298;
    MEMORY[0x277C5E040](v346, v187, &type metadata for ContainerMinimumDimensionModifier, v188);
    (*(v297 + 8))(v184, v187);
    v190 = sub_27490DF58();
    v358 = v188;
    v359 = v190;
    v191 = v327;
    swift_getWitnessTable();
    v192 = v299;
    v193 = *(v299 + 16);
    v194 = v296;
    v193(v296, v189, v191);
    v195 = *(v192 + 8);
    v195(v189, v191);
    v193(v189, v194, v191);
    v195(v194, v191);
    v144 = v324;
    (*(v192 + 32))(v324, v189, v191);
    __swift_storeEnumTagSinglePayload(v144, 0, 1, v191);
  }

  else
  {
    v144 = v324;
    __swift_storeEnumTagSinglePayload(v324, 1, 1, v95);
    v145 = sub_27490DE6C();
    v146 = swift_getWitnessTable();
    v382 = v145;
    v383 = v146;
    v380 = swift_getWitnessTable();
    v381 = v142;
    v147 = swift_getWitnessTable();
    v148 = sub_27490DF58();
    v378 = v147;
    v379 = v148;
    swift_getWitnessTable();
  }

  v196 = v329;
  v197 = v312;
  sub_274903C58(v144, v312);
  v198 = v310;
  v317 = *(v310 + 8);
  v199 = v313;
  v317(v144, v313);
  v200 = v323;
  (*(v320 + 16))(v196, v328, v323);
  v346[0] = v196;
  v201 = v311;
  sub_27490E8D8(v330, v311, &qword_28096F378);
  v346[1] = v201;
  (*(v198 + 16))(v144, v197, v199);
  v346[2] = v144;
  v344[0] = v200;
  v344[1] = v309;
  v344[2] = v199;
  v202 = sub_27490DAD8();
  v203 = swift_getWitnessTable();
  v376 = v202;
  v377 = v203;
  v204 = swift_getWitnessTable();
  v374 = sub_27490DC44();
  v375 = v203;
  v205 = swift_getWitnessTable();
  v372 = v204;
  v373 = v205;
  v371 = swift_getWitnessTable();
  v343[0] = swift_getWitnessTable();
  v343[1] = sub_27490DFAC();
  v369 = sub_27490DE6C();
  v370 = v203;
  v367 = swift_getWitnessTable();
  v368 = MEMORY[0x277CDFC60];
  v206 = swift_getWitnessTable();
  v207 = sub_27490DF58();
  v365 = v206;
  v366 = v207;
  v364 = swift_getWitnessTable();
  v343[2] = swift_getWitnessTable();
  sub_274903CC0(v346, 3, v344);
  v208 = v317;
  v317(v197, v199);
  sub_2747359D0(v330, &qword_28096F378, &qword_274A22DE8);
  v209 = v307;
  (v307)(v328, v200);
  v208(v324, v199);
  sub_2747359D0(v201, &qword_28096F378, &qword_274A22DE8);
  return (v209)(v329, v200);
}

void sub_27490BCFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *(a6 + 96);
  v7 = *(*(a4 + 8) + 16);
  OUTLINED_FUNCTION_29_13();
  v6();
}

uint64_t sub_27490BD84(uint64_t a1)
{
  OUTLINED_FUNCTION_43();
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v6);
  v21 = *(v3 + 16);
  v21(&v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2749FD0A4();
  v7 = sub_2749FD094();
  v8 = swift_allocObject();
  v9 = MEMORY[0x277D85700];
  v8[2] = v7;
  v8[3] = v9;
  v10 = *(a1 + 16);
  v19 = *(a1 + 24);
  v11 = v19;
  v20 = v10;
  v8[4] = v10;
  v8[5] = v11;
  v12 = *(v3 + 32);
  OUTLINED_FUNCTION_29_13();
  v12();
  (v21)(&v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v22, a1);
  v13 = sub_2749FD094();
  v14 = swift_allocObject();
  v14[2] = v13;
  v15 = v19;
  v16 = v20;
  v14[3] = MEMORY[0x277D85700];
  v14[4] = v16;
  v14[5] = v15;
  OUTLINED_FUNCTION_29_13();
  v12();
  type metadata accessor for WFGlyphCharacter(0);
  sub_2749FC6F4();
  return v23;
}

void sub_27490BF6C(uint64_t a1@<X2>, uint64_t a2@<X4>, _WORD *a3@<X8>)
{
  v4 = a2;
  v6 = *(a2 + 24);
  v7 = *(*(a1 + 8) + 16);
  v8 = OUTLINED_FUNCTION_96();
  LOWORD(v4) = v6(v8, v4);

  *a3 = v4;
}

void sub_27490BFD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *(a6 + 88);
  v7 = *(*(a4 + 8) + 16);
  OUTLINED_FUNCTION_42_8();
  v6();
}

uint64_t sub_27490C0B0@<X0>(char *a1@<X8>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>)
{
  v24 = a1;
  type metadata accessor for EditorIconPickerView.GroupBackground(255, a2, a3, a4);
  swift_getWitnessTable();
  sub_2749FB894();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096D7E0, &qword_274A11B10);
  v4 = sub_2749FAEA4();
  v23 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v22 - v5;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280969C20, &qword_274A15F60);
  v7 = sub_2749FAEA4();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v22 - v12;
  v14 = [objc_opt_self() systemBackgroundColor];
  v29 = sub_2749FC3E4();
  WitnessTable = swift_getWitnessTable();
  sub_2749FBC64();
  sub_2749FBF94();

  v16 = sub_27472AB6C(&unk_28096BFB0, &qword_28096D7E0, &qword_274A11B10, MEMORY[0x277CE0728]);
  v27 = WitnessTable;
  v28 = v16;
  v17 = swift_getWitnessTable();
  sub_2749FC054();
  (*(v23 + 8))(v6, v4);
  v18 = sub_27472AB6C(&qword_28159E720, &qword_280969C20, &qword_274A15F60, MEMORY[0x277CDF4F0]);
  v25 = v17;
  v26 = v18;
  swift_getWitnessTable();
  v19 = *(v8 + 16);
  v19(v13, v11, v7);
  v20 = *(v8 + 8);
  v20(v11, v7);
  v19(v24, v13, v7);
  return (v20)(v13, v7);
}

uint64_t sub_27490C448@<X0>(uint64_t a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = a3;
  a5[1] = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096F558, &qword_274A234D8);
  return sub_27490C4BC(a1, a5 + *(v7 + 44));
}

uint64_t sub_27490C4BC@<X0>(uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v26 = a2;
  v27 = a3;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096F560, &qword_274A234E0);
  v24 = *(v3 - 8);
  v4 = v24;
  MEMORY[0x28223BE20](v3);
  v6 = &v23 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096F568, &qword_274A234E8);
  v25 = *(v7 - 8);
  v8 = v25;
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v23 - v12;
  v28 = sub_2749FC464();
  sub_2749FC914();
  sub_2749FC1E4();

  v14 = *(v8 + 16);
  v14(v11, v13, v7);
  v15 = *(v4 + 16);
  v16 = v6;
  v17 = v6;
  v18 = v3;
  v15(v17, v26, v3);
  v19 = v27;
  v14(v27, v11, v7);
  v20 = v19 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096F570, &qword_274A234F0) + 48);
  v15(v20, v16, v18);
  v21 = *(v25 + 8);
  v21(v13, v7);
  (*(v24 + 8))(v16, v18);
  return (v21)(v11, v7);
}

id sub_27490C76C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = a2;
  if (a4 >> 60 == 15)
  {
    v7 = 0;
  }

  else
  {
    OUTLINED_FUNCTION_50_7(a1, a2, a3);
    v7 = sub_2749F9074();
    v8 = OUTLINED_FUNCTION_43_0();
    sub_2747BD018(v8, v9);
  }

  v10 = [v4 initWithBackgroundColorValue:a1 glyphCharacter:v5 customImageData:v7];

  return v10;
}

uint64_t sub_27490C7F8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_274905604();
  *a1 = result;
  return result;
}

id sub_27490C8A0(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int16 a4, uint64_t a5, void *a6)
{
  v10 = sub_2749FCD64();

  v11 = [a6 updateFolder:a1 newName:v10 newIcon:a4 error:a5];

  return v11;
}

uint64_t sub_27490C938(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (v2)
  {
    v3 = v2;
    _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
    OUTLINED_FUNCTION_84();
  }

  return OUTLINED_FUNCTION_44();
}

unint64_t sub_27490C990()
{
  result = qword_28096F318;
  if (!qword_28096F318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096F318);
  }

  return result;
}

void sub_27490C9E4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_2749FCD64();
  [a3 setName_];
}

id sub_27490CA3C(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int16 a4, uint64_t a5, void *a6)
{
  v10 = sub_2749FCD64();
  v11 = [a6 updateFolder:a1 newName:v10 newIcon:a4 error:a5];

  return v11;
}

uint64_t objectdestroy_16Tm()
{

  OUTLINED_FUNCTION_49_0();

  return MEMORY[0x2821FE8E8](v1);
}

uint64_t sub_27490CB5C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = OUTLINED_FUNCTION_19_18();
  v10 = type metadata accessor for EditorIconPickerView(v7, v8, v6, v9);
  OUTLINED_FUNCTION_34(v10);
  v12 = v2 + ((*(v11 + 80) + 32) & ~*(v11 + 80));

  return sub_274909274(a1, v12, v5, v6, a2);
}

unint64_t sub_27490CBF4()
{
  result = qword_28096F388;
  if (!qword_28096F388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096F388);
  }

  return result;
}

unint64_t sub_27490CC4C()
{
  result = qword_28096F390;
  if (!qword_28096F390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096F390);
  }

  return result;
}

unint64_t sub_27490CCA4()
{
  result = qword_28096F398;
  if (!qword_28096F398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096F398);
  }

  return result;
}

unint64_t sub_27490CD44()
{
  result = qword_28096F3A0;
  if (!qword_28096F3A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096F3A0);
  }

  return result;
}

uint64_t sub_27490D068(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_31_4();
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_BYTE *sub_27490D0B4(_BYTE *result, int a2, int a3)
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

_BYTE *storeEnumTagSinglePayload for ColorIconPopoverField(_BYTE *result, unsigned int a2, unsigned int a3)
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

void sub_27490D268(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for IconEditorViewModel(255, *(a1 + 16), *(a1 + 24), a4);
  swift_getWitnessTable();
  sub_2749FADB4();
  if (v4 <= 0x3F)
  {
    sub_27472D100(319, &qword_28096B888, &qword_28096ADE0, &qword_274A19718, MEMORY[0x277CE10B8]);
    if (v5 <= 0x3F)
    {
      sub_27472D100(319, &qword_28096D3A0, &qword_28096B2A0, &qword_274A11BA0, MEMORY[0x277CDF468]);
      if (v6 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_27490D3B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for IconEditorViewModel(255, *(a1 + 16), *(a1 + 24), a4);
  swift_getWitnessTable();
  sub_2749FADB4();
  if (v4 <= 0x3F)
  {
    sub_27472D100(319, &qword_28096DDE8, &qword_28096C210, &unk_274A12840, MEMORY[0x277CE10B8]);
    if (v5 <= 0x3F)
    {
      sub_27472D100(319, &qword_28096F4B8, &qword_28096A998, &qword_274A18B20, MEMORY[0x277CE10B8]);
      if (v6 <= 0x3F)
      {
        sub_27490D57C(319);
        if (v7 <= 0x3F)
        {
          sub_27490D610(319);
          if (v8 <= 0x3F)
          {
            sub_27472D100(319, &qword_28096D3A0, &qword_28096B2A0, &qword_274A11BA0, MEMORY[0x277CDF468]);
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

void sub_27490D57C(uint64_t a1)
{
  if (!qword_28096C5D8)
  {
    sub_2749F9DB4();
    sub_27490E5C8(&qword_28096C598, MEMORY[0x277D7D2E0], MEMORY[0x277D7D2D8]);
    v1 = sub_2749FAB24();
    if (!v2)
    {
      atomic_store(v1, &qword_28096C5D8);
    }
  }
}

void sub_27490D610(uint64_t a1)
{
  if (!qword_28096C5E0)
  {
    type metadata accessor for GlyphRegistry(255);
    sub_27490E5C8(&qword_28096C5A8, type metadata accessor for GlyphRegistry, &protocol conformance descriptor for GlyphRegistry);
    v1 = sub_2749FAB24();
    if (!v2)
    {
      atomic_store(v1, &qword_28096C5E0);
    }
  }
}

unint64_t sub_27490D6A4()
{
  result = qword_28096F4C0;
  if (!qword_28096F4C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096F360, &qword_274A22DD0);
    sub_27490D730();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096F4C0);
  }

  return result;
}

unint64_t sub_27490D730()
{
  result = qword_28096F4C8;
  if (!qword_28096F4C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096F358, &qword_274A22DC8);
    sub_27490D7BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096F4C8);
  }

  return result;
}

unint64_t sub_27490D7BC()
{
  result = qword_28096F4D0[0];
  if (!qword_28096F4D0[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096F350, &unk_274A22D88);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096F338, &qword_274A22D78);
    sub_2749F9D74();
    sub_27472AB6C(&qword_28096F348, &qword_28096F338, &qword_274A22D78, MEMORY[0x277CE1198]);
    sub_27490E5C8(&qword_28096B7C8, MEMORY[0x277D7D2C8], MEMORY[0x277D7D2D0]);
    swift_getOpaqueTypeConformance2();
    sub_27472AB6C(&qword_28096C070, &qword_28096D900, &qword_274A1BBB0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, qword_28096F4D0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ContainerMinimumDimensionModifier(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ContainerMinimumDimensionModifier(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 24) = v3;
  return result;
}

uint64_t sub_27490D9F8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_27475F680;

  return sub_2749058B8(a1, v4, v5, v6, v7, v8);
}

unint64_t sub_27490DAD8()
{
  result = qword_28096F590;
  if (!qword_28096F590)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096F368, &qword_274A22DD8);
    sub_27490DB64();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096F590);
  }

  return result;
}

unint64_t sub_27490DB64()
{
  result = qword_28096F598;
  if (!qword_28096F598)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096F5A0, &qword_274A235D8);
    sub_27490DBF0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096F598);
  }

  return result;
}

unint64_t sub_27490DBF0()
{
  result = qword_28096F5A8;
  if (!qword_28096F5A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096F5A8);
  }

  return result;
}

unint64_t sub_27490DC44()
{
  result = qword_28096F5B0;
  if (!qword_28096F5B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096F370, &qword_274A22DE0);
    sub_27490DCD0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096F5B0);
  }

  return result;
}

unint64_t sub_27490DCD0()
{
  result = qword_28096F5B8;
  if (!qword_28096F5B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096F588, &qword_274A235D0);
    sub_27490DD5C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096F5B8);
  }

  return result;
}

unint64_t sub_27490DD5C()
{
  result = qword_28096F5C0;
  if (!qword_28096F5C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096F580, &qword_274A235C8);
    sub_27490DE18();
    sub_27490E5C8(&qword_28159E5A0, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096F5C0);
  }

  return result;
}

unint64_t sub_27490DE18()
{
  result = qword_28096F5C8;
  if (!qword_28096F5C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096F5C8);
  }

  return result;
}

unint64_t sub_27490DE6C()
{
  result = qword_28096F5D0;
  if (!qword_28096F5D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096F380, &unk_274A22DF0);
    sub_27490E5C8(&qword_28096C7B0, type metadata accessor for GlyphPickerCachedView, &unk_274A1D504);
    sub_27490E5C8(&qword_28159E5A0, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096F5D0);
  }

  return result;
}

unint64_t sub_27490DF58()
{
  result = qword_28096F5D8;
  if (!qword_28096F5D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096F5D8);
  }

  return result;
}

unint64_t sub_27490DFAC()
{
  result = qword_28096F5E0;
  if (!qword_28096F5E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096F378, &qword_274A22DE8);
    sub_27490E030();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096F5E0);
  }

  return result;
}

unint64_t sub_27490E030()
{
  result = qword_28096F5E8;
  if (!qword_28096F5E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096F578, &qword_274A235C0);
    sub_27490E0E8();
    sub_27472AB6C(&qword_28159E720, &qword_280969C20, &qword_274A15F60, MEMORY[0x277CDF4F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096F5E8);
  }

  return result;
}

unint64_t sub_27490E0E8()
{
  result = qword_28096F5F0;
  if (!qword_28096F5F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096F5F8, &qword_274A235E0);
    sub_27490E1A0();
    sub_27472AB6C(&unk_28096BFB0, &qword_28096D7E0, &qword_274A11B10, MEMORY[0x277CE0728]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096F5F0);
  }

  return result;
}

unint64_t sub_27490E1A0()
{
  result = qword_28096F600;
  if (!qword_28096F600)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096F608, &qword_274A235E8);
    sub_27490E5C8(&qword_28096F610, type metadata accessor for ColorPickerView, &unk_274A208A4);
    sub_27490E5C8(&qword_28159E5A0, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096F600);
  }

  return result;
}

void sub_27490E2A4()
{
  v0 = OUTLINED_FUNCTION_8_28();
  v2 = v1(v0);
  OUTLINED_FUNCTION_34(v2);
  v3 = OUTLINED_FUNCTION_6_31();
  sub_27490BCFC(v3, v4, v5, v6, v7, v8);
}

void sub_27490E320(_WORD *a1@<X8>)
{
  v4 = OUTLINED_FUNCTION_8_28();
  v6 = v5(v4);
  OUTLINED_FUNCTION_34(v6);
  sub_27490BF6C(v1 + ((*(v7 + 80) + 48) & ~*(v7 + 80)), v2, a1);
}

uint64_t objectdestroy_97Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for EditorIconPickerView(0, *(v5 + 32), *(v5 + 40), a4);
  OUTLINED_FUNCTION_49();
  v7 = (*(v6 + 80) + 48) & ~*(v6 + 80);
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_47_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096BF50, &qword_274A11AE0);
  OUTLINED_FUNCTION_107();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

  if (EnumCaseMultiPayload == 1)
  {

    v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096B2A0, &qword_274A11BA0) + 32);
    sub_2749FAF84();
    OUTLINED_FUNCTION_1_2();
    (*(v10 + 8))(v4 + v9);
  }

  return MEMORY[0x2821FE8E8](v5);
}