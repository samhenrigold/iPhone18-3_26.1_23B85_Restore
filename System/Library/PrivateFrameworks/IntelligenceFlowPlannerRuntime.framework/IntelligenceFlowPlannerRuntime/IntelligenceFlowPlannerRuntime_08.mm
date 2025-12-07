uint64_t sub_22C424564(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  result = a3;
  switch(a3)
  {
    case 1u:
      result = 1;
      break;
    case 2u:
      result = 2;
      break;
    case 3u:
      result = 3;
      break;
    case 4u:
      if (a1 | a2)
      {
        result = 5;
      }

      else
      {
        result = 4;
      }

      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_22C4245F0(uint64_t a1)
{
  v2 = sub_22C430EE8();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_22C42462C(uint64_t a1)
{
  v2 = sub_22C430EE8();

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_22C424668()
{
  v1 = sub_22C9063DC();
  sub_22C369824();
  v38 = v2;
  MEMORY[0x28223BE20](v3);
  sub_22C369BE8();
  v4 = sub_22C9036EC();
  sub_22C369824();
  v6 = v5;
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v33 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v33 - v14;
  v16 = *(v6 + 16);
  v16(&v33 - v14, v0, v4);
  v17 = (*(v6 + 88))(v15, v4);
  v21 = v17 == *MEMORY[0x277D1ECE0] || v17 == *MEMORY[0x277D1ECE8] || v17 == *MEMORY[0x277D1ECD8] || v17 == *MEMORY[0x277D1ECD0] || v17 == *MEMORY[0x277D1ECF8];
  v22 = v21;
  v39 = v22;
  if (v21)
  {
    (*(v6 + 8))(v15, v4);
  }

  else
  {
    sub_22C903F7C();
    v16(v13, v0, v4);
    v23 = sub_22C9063CC();
    v37 = sub_22C90AADC();
    if (os_log_type_enabled(v23, v37))
    {
      v25 = swift_slowAlloc();
      v36 = v1;
      v26 = v25;
      v35 = swift_slowAlloc();
      v40 = v35;
      *v26 = 136315138;
      v16(v10, v13, v4);
      v34 = sub_22C90A1AC();
      v28 = v27;
      v29 = *(v6 + 8);
      v29(v13, v4);
      v30 = sub_22C36F9F4(v34, v28, &v40);

      *(v26 + 4) = v30;
      _os_log_impl(&dword_22C366000, v23, v37, "❗️[PromptMapperResolver] Unsupported tool type %s Please file a radar on IF Full Planner", v26, 0xCu);
      sub_22C36FF94(v35);
      sub_22C369B50();
      MEMORY[0x2318B9880]();
      sub_22C369B50();
      MEMORY[0x2318B9880]();

      (*(v38 + 8))(v0, v36);
      v29(v15, v4);
    }

    else
    {

      v31 = *(v6 + 8);
      v31(v13, v4);
      (*(v38 + 8))(v0, v1);
      v31(v15, v4);
    }
  }

  return v39;
}

uint64_t sub_22C424A04()
{
  sub_22C369980();
  v0[2] = v1;
  v0[3] = v2;
  v3 = sub_22C9063DC();
  v0[4] = v3;
  sub_22C3699B8(v3);
  v0[5] = v4;
  v0[6] = swift_task_alloc();
  v0[7] = swift_task_alloc();
  v5 = sub_22C36BB98();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_22C424ABC(uint64_t a1)
{
  sub_22C903F7C();
  v2 = sub_22C9063CC();
  v3 = sub_22C90AACC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_22C366000, v2, v3, "Prewarming FullPlanner's embedding db client, in case of out-of-prompt prediction", v4, 2u);
    sub_22C369B50();
    MEMORY[0x2318B9880]();
  }

  v5 = v1[7];
  v6 = v1[4];
  v7 = v1[5];

  v8 = *(v7 + 8);
  v8(v5, v6);
  sub_22C90717C();
  sub_22C903F7C();
  v9 = sub_22C9063CC();
  v10 = sub_22C90AACC();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_22C366000, v9, v10, "Finished prewarming FullPlanner's embedding db client", v11, 2u);
    sub_22C369B50();
    MEMORY[0x2318B9880]();
  }

  v12 = v1[6];
  v13 = v1[4];
  v15 = v1[2];
  v14 = v1[3];

  v8(v12, v13);
  *v15 = v14;

  sub_22C369A24();

  return v16();
}

uint64_t sub_22C424C78()
{
  sub_22C369980();
  v1[53] = v2;
  v1[54] = v0;
  v1[51] = v3;
  v1[52] = v4;
  v1[49] = v5;
  v1[50] = v6;
  v7 = sub_22C90880C();
  v1[55] = v7;
  sub_22C3699B8(v7);
  v1[56] = v8;
  v1[57] = swift_task_alloc();
  v9 = sub_22C90363C();
  v1[58] = v9;
  sub_22C3699B8(v9);
  v1[59] = v10;
  v1[60] = swift_task_alloc();
  v11 = type metadata accessor for PromptMapperResolver(0);
  sub_22C3699B8(v11);
  v1[61] = v12;
  v1[62] = *(v13 + 64);
  v1[63] = swift_task_alloc();
  v1[64] = swift_task_alloc();
  v14 = sub_22C902D0C();
  v1[65] = v14;
  sub_22C3699B8(v14);
  v1[66] = v15;
  v1[67] = swift_task_alloc();
  v1[68] = swift_task_alloc();
  v1[69] = swift_task_alloc();
  v1[70] = swift_task_alloc();
  v1[71] = swift_task_alloc();
  v16 = sub_22C9063DC();
  v1[72] = v16;
  sub_22C3699B8(v16);
  v1[73] = v17;
  v1[74] = swift_task_alloc();
  v18 = sub_22C36BB98();

  return MEMORY[0x2822009F8](v18, v19, v20);
}

uint64_t sub_22C424EBC()
{
  sub_22C369980();
  v1 = *(*(v0 + 432) + 344);
  v2 = swift_task_alloc();
  *(v0 + 600) = v2;
  v3 = sub_22C9071BC();
  *v2 = v0;
  v2[1] = sub_22C424F68;

  return MEMORY[0x282200460](v0 + 368, v1, v3);
}

uint64_t sub_22C424F68()
{
  sub_22C369980();

  v0 = sub_22C36BB98();

  return MEMORY[0x2822009F8](v0, v1, v2);
}

uint64_t sub_22C425058()
{
  v167 = v0;
  v1 = *(v0 + 408);
  v2 = *(v0 + 368);
  type metadata accessor for CachingQueryableToolbox();
  v3 = swift_allocObject();
  v4 = MEMORY[0x277D84F98];
  *(v3 + 16) = v2;
  *(v3 + 24) = v4;
  sub_22C903FFC();
  sub_22C425B78(v1, v0 + 80);
  v5 = sub_22C9063CC();
  v6 = sub_22C90AACC();
  sub_22C3DE2C8(v1);
  v163 = v3;
  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 592);
    v8 = *(v0 + 584);
    v9 = *(v0 + 576);
    v10 = *(v0 + 408);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v166 = v12;
    *v11 = 136642819;
    v14 = *(v10 + 16);
    v13 = *(v10 + 32);
    v15 = *(v10 + 48);
    *(v0 + 248) = *v10;
    *(v0 + 296) = v15;
    *(v0 + 264) = v14;
    *(v0 + 280) = v13;
    sub_22C425B78(v10, v0 + 304);
    v16 = sub_22C90A1AC();
    v18 = sub_22C36F9F4(v16, v17, &v166);

    *(v11 + 4) = v18;
    sub_22C36FF94(v12);
    sub_22C369B50();
    MEMORY[0x2318B9880]();
    sub_22C369B50();
    MEMORY[0x2318B9880]();

    (*(v8 + 8))(v7, v9);
  }

  else
  {
    v19 = *(v0 + 592);
    v20 = *(v0 + 584);
    v21 = *(v0 + 576);

    (*(v20 + 8))(v19, v21);
  }

  v22 = *(v0 + 432);
  v23 = *(v0 + 408);
  (*(*(v0 + 528) + 16))(*(v0 + 568), *(v0 + 400), *(v0 + 520));
  v24 = *(v23 + 8);
  *(v0 + 360) = v24;
  *(v0 + 376) = v24;
  v25 = v22[34];
  if (v25)
  {
    v164 = v22[35];
    v138 = v22[36];
    v142 = v22[37];
    v150 = *(v0 + 560);
    v153 = *(v0 + 568);
    v113 = *(v0 + 512);
    v146 = *(v0 + 504);
    v27 = *(v0 + 488);
    v26 = *(v0 + 496);
    v133 = *(v0 + 432);
    v28 = *(v0 + 408);
    v161 = *(v0 + 416);
    sub_22C3A5908(&qword_27D9BC1C0, &unk_22C912370);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_22C90F870;
    v129 = type metadata accessor for PromptMapperResolver;
    sub_22C430B88();
    v29 = (v26 + ((*(v27 + 80) + 16) & ~*(v27 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
    v30 = (v29 + 63) & 0xFFFFFFFFFFFFFFF8;
    v121 = v29;
    v125 = v30;
    v31 = (v30 + 39) & 0xFFFFFFFFFFFFFFF8;
    v32 = swift_allocObject();
    v117 = type metadata accessor for PromptMapperResolver;
    sub_22C430ABC();
    sub_22C430F8C(v32 + v29);
    v33 = (v32 + v30);
    *v33 = v25;
    v33[1] = v164;
    v33[2] = v138;
    v33[3] = v142;
    *(v32 + v31) = v163;
    *(v32 + ((v31 + 15) & 0xFFFFFFFFFFFFFFF8)) = v161;
    *(inited + 32) = sub_22C42B460;
    *(inited + 40) = v32;
    sub_22C430B88();
    v34 = swift_allocObject();
    sub_22C430ABC();
    sub_22C430F8C(v34 + v29);
    v35 = (v34 + v30);
    *v35 = v25;
    v35[1] = v164;
    v35[2] = v138;
    v35[3] = v142;
    *(v34 + v31) = v161;
    *(inited + 48) = sub_22C42B4E8;
    *(inited + 56) = v34;
    sub_22C3825F4();
    sub_22C425B78(v28, v0 + 136);
    sub_22C3825F4();

    sub_22C425B78(v28, v0 + 192);
    sub_22C3A7214();
    sub_22C42B564(v25, v164);

    sub_22C43E3E0(inited);
    v36 = *(v0 + 568);
    v37 = *(v0 + 560);
    v38 = *(v0 + 528);
    v39 = *(v0 + 520);
    v40 = sub_22C37B220();
    v41(v40);
    sub_22C430FF4();
    swift_setDeallocating();
    sub_22C59007C();
    (*(v38 + 32))(v36, v37, v39);
  }

  else
  {
  }

  v42 = *(v0 + 568);
  v43 = *(v0 + 552);
  v44 = *(v0 + 528);
  v45 = *(v0 + 520);
  v46 = *(v0 + 408);
  v157 = *(v0 + 432);
  v162 = *(v0 + 416);
  v47 = swift_task_alloc();
  *(v47 + 16) = v46;
  sub_22C439F24(v42, sub_22C427E80, v47, v48, v49, v50, v51, v52, v113, v117, v121, v125, v129, v133, v138, v142, v146, v150, v153, v157);

  v53 = *(v44 + 8);
  v54 = sub_22C372FA4();
  v53(v54);
  v55 = *(v44 + 32);
  v55(v42, v43, v45);
  v56 = swift_task_alloc();
  v56[2] = v46;
  v56[3] = v158;
  v56[4] = v163;
  v56[5] = v162;
  v56[6] = v0 + 376;
  sub_22C439F24(v42, sub_22C428494, v56, v57, v58, v59, v60, v61, v114, v118, v122, v126, v130, v134, v139, v143, v147, v55, v154, v158);
  v62 = *(v0 + 568);
  v165 = *(v0 + 552);
  v63 = *(v0 + 520);
  v64 = *(v0 + 472);
  v159 = *(v0 + 480);
  v144 = *(v0 + 464);
  (v53)(v62, v63);

  v65 = sub_22C36BA00();
  v66 = v151;
  (v151)(v65);
  v67 = swift_task_alloc();
  *(v67 + 16) = v0 + 376;
  sub_22C439F24(v62, sub_22C429864, v67, v68, v69, v70, v71, v72, v115, v119, v123, v127, v131, v135, v140, v144, v148, v151, v44 + 8, v159);
  v141 = 0;

  v149 = v53;
  (v53)(v62, v63);
  v66(v62, v165, v63);
  v73 = *MEMORY[0x277D1EC78];
  v74 = *(v64 + 104);
  v74(v160, v73, v145);
  LOBYTE(v45) = sub_22C90362C();
  v75 = *(v64 + 8);
  v75(v160, v145);
  v76 = v66;
  if (v45)
  {
    v77 = *(v0 + 568);
    v137 = *(v0 + 520);
    LODWORD(v145) = v73;
    v78 = v76;
    v79 = *(v0 + 424);
    v80 = *(v0 + 408);
    v81 = swift_task_alloc();
    *(v81 + 16) = v79;
    *(v81 + 24) = v80;
    v76 = v78;
    v73 = v145;
    sub_22C439F24(v77, sub_22C42B444, v81, v82, v83, v84, v85, v86, v116, v120, v124, v128, v132, v137, 0, v145, v53, v152, v155, v74);
    v74 = v160;

    v149(v77, v136);
    v87 = sub_22C372FA4();
    (v76)(v87);
  }

  v88 = *(v0 + 480);
  v89 = *(v0 + 464);
  v74(v88, v73, v89);
  v90 = sub_22C90362C();
  v75(v88, v89);
  if (v90)
  {
    v98 = *(v0 + 568);
    v99 = *(v0 + 520);
    sub_22C43CE88(v98, v91, v92, v93, v94, v95, v96, v97, v116, v120, v124, v128, v132, v136, v141, v145, v149, v152, v155, v160);
    v149(v98, v99);
    v100 = sub_22C36BBCC();
    (v76)(v100);
  }

  sub_22C90878C();
  v101 = sub_22C37B220();
  sub_22C42B148(v101, v102);
  v104 = *(v0 + 568);
  v105 = *(v0 + 536);
  v106 = *(v0 + 520);
  v107 = v76;
  v109 = *(v0 + 448);
  v108 = *(v0 + 456);
  v110 = *(v0 + 440);
  v111 = *(v0 + 392);

  (*(v109 + 8))(v108, v110);
  v149(v104, v106);
  v107(v104, v105, v106);
  v107(v111, v104, v106);

  sub_22C369A24();

  return v112();
}

uint64_t type metadata accessor for PromptMapperResolver(uint64_t a1)
{
  result = qword_27D9BC258;
  if (!qword_27D9BC258)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22C425BD4@<X0>(uint64_t a1@<X0>, double a2@<D0>, uint64_t a4@<X2>, uint64_t a5@<X3>, uint64_t a6@<X4>, uint64_t a7@<X5>, uint64_t a8@<X6>, uint64_t a9@<X7>, uint64_t *x8_0@<X8>)
{
  *&v11 = a5;
  *(&v11 + 1) = a6;
  v12 = a7;
  v13 = a2;
  return sub_22C425C20(a1, a4, &v11, a8, a9, x8_0);
}

uint64_t sub_22C425C20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v87 = a4;
  v85 = a5;
  v89 = a2;
  v91 = a6;
  v92 = a1;
  v7 = type metadata accessor for FullPlannerPreferences(0);
  MEMORY[0x28223BE20](v7 - 8);
  v84 = &v72 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22C3A5908(&qword_27D9BC200, &unk_22C9123F0);
  MEMORY[0x28223BE20](v9 - 8);
  v86 = &v72 - v10;
  v81 = type metadata accessor for ResolvableTool(0);
  MEMORY[0x28223BE20](v81);
  v83 = &v72 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = sub_22C3A5908(&qword_27D9BC198, &unk_22C916710);
  MEMORY[0x28223BE20](v90);
  v13 = (&v72 - v12);
  v14 = sub_22C902D0C();
  v93 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v72 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = sub_22C9063DC();
  v17 = *(v94 - 8);
  v18 = MEMORY[0x28223BE20](v94);
  v82 = &v72 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v21 = &v72 - v20;
  v80 = *a3;
  v79 = *(a3 + 2);
  v22 = *(a3 + 3);
  sub_22C903FFC();
  v23 = sub_22C9063CC();
  v24 = sub_22C90AABC();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&dword_22C366000, v23, v24, "Enforcing call string quoting", v25, 2u);
    MEMORY[0x2318B9880](v25, -1, -1);
  }

  v26 = *(v17 + 8);
  v26(v21, v94);
  v27 = v93;
  (*(v93 + 16))(v16, v92, v14);
  v28 = (*(v27 + 88))(v16, v14);
  if (v28 != *MEMORY[0x277D1D7C0])
  {
    (*(v27 + 8))(v16, v14);
    return sub_22C36C640(v91, 1, 1, v14);
  }

  HIDWORD(v78) = v28;
  (*(v27 + 96))(v16, v14);
  swift_projectBox();
  sub_22C3A7214();
  v29 = *(v13 + *(v90 + 48));
  v30 = sub_22C902D1C();
  v31 = *(v30 - 8);
  v32 = (*(v31 + 88))(v13, v30);
  if (v32 != *MEMORY[0x277D1D820])
  {

    (*(v31 + 8))(v13, v30);

    return sub_22C36C640(v91, 1, 1, v14);
  }

  v75 = v26;
  HIDWORD(v74) = v32;
  (*(v31 + 96))(v13, v30);
  v76 = v31;
  v33 = *v13;
  v34 = v13[1];

  v35 = v88;
  v77 = *(v88 + 352);
  v73 = v30;
  v36 = *(v88 + 360);
  sub_22C42F0B8(v88, v98);
  sub_22C378A4C(v35 + 304, v97);
  type metadata accessor for PromptMapperResolver(0);
  v92 = v29;
  v37 = v84;
  sub_22C430B88();

  v38 = v89;
  sub_22C425B78(v89, &v96);

  v39 = v85;

  v40 = v87;

  v69 = v39;
  v41 = v86;
  v42 = v40;
  v43 = v95;
  sub_22C431014(v33, v34, v92, v38, v77, v36, v98, v42, v97, v69, v37, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, *(&v80 + 1), v81);
  v44 = v43;
  if (v43)
  {
  }

  v85 = v33;
  v46 = v76;
  v87 = v34;
  if (sub_22C370B74(v41, 1, v81) == 1)
  {

    sub_22C36DD28(v41, &qword_27D9BC200, &unk_22C9123F0);
    v47 = v91;
    v48 = 1;
  }

  else
  {
    sub_22C430ABC();
    KeyPath = swift_getKeyPath();
    sub_22C903FFC();
    v50 = sub_22C9063CC();
    v51 = sub_22C90AABC();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v95 = 0;
      v53 = v52;
      *v52 = 0;
      _os_log_impl(&dword_22C366000, v50, v51, "Enforcing string quoting", v52, 2u);
      v54 = v53;
      v44 = v95;
      MEMORY[0x2318B9880](v54, -1, -1);
    }

    v55 = v75(v82, v94);
    MEMORY[0x28223BE20](v55);
    v56 = v83;
    v57 = v88;
    *(&v72 - 10) = v83;
    *(&v72 - 9) = v57;
    *(&v72 - 8) = KeyPath;
    *(&v72 - 7) = v80;
    *(&v72 - 5) = v79;
    v68 = v22;
    v69 = v89;
    v70 = sub_22C430F84;
    v71 = 0;
    sub_22C3B362C();
    if (v44)
    {

      return sub_22C430B30(v56, type metadata accessor for ResolvableTool);
    }

    sub_22C8D54F4();
    v59 = v58;

    v60 = sub_22C42C174(v59, &qword_27D9BC1F8, &qword_22C9126D0, sub_22C42F5CC);

    sub_22C430B30(v56, type metadata accessor for ResolvableTool);
    v61 = v90;
    v62 = swift_allocBox();
    v64 = v63;
    v65 = *(v61 + 48);
    v66 = v87;
    *v63 = v85;
    v63[1] = v66;
    (*(v46 + 104))(v63, HIDWORD(v74), v73);
    *(v64 + v65) = v60;
    v67 = v91;
    *v91 = v62;
    (*(v93 + 104))(v67, HIDWORD(v78), v14);
    v47 = v67;
    v48 = 0;
  }

  return sub_22C36C640(v47, v48, 1, v14);
}

uint64_t sub_22C426504@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, void (*a6)(uint64_t, void, uint64_t)@<X6>, uint64_t a7@<X8>, double a8@<D0>)
{
  *&v12 = a3;
  *(&v12 + 1) = a4;
  v13 = a5;
  v14 = a8;
  result = sub_22C426578(a1, a2, &v12, a6, a7);
  if (!v8)
  {
    v11 = sub_22C902D0C();
    return sub_22C36C640(a7, 0, 1, v11);
  }

  return result;
}

uint64_t sub_22C426578@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, void (*a4)(uint64_t, void, uint64_t)@<X3>, uint64_t a5@<X8>)
{
  v220 = a2;
  v214 = a4;
  v229 = a5;
  v7 = sub_22C3A5908(&qword_27D9BB640, &unk_22C912190);
  MEMORY[0x28223BE20](v7 - 8);
  v197 = &v179[-v8];
  v9 = sub_22C902C9C();
  v202 = *(v9 - 8);
  v203 = v9;
  MEMORY[0x28223BE20](v9);
  v195 = &v179[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = type metadata accessor for FullPlannerPreferences(0);
  MEMORY[0x28223BE20](v11 - 8);
  v213 = &v179[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v208 = sub_22C90972C();
  v212 = *(v208 - 8);
  MEMORY[0x28223BE20](v208);
  v207 = &v179[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = sub_22C90977C();
  v205 = *(v14 - 8);
  v206 = v14;
  MEMORY[0x28223BE20](v14);
  v204 = &v179[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = sub_22C907F9C();
  v210 = *(v16 - 8);
  v211 = v16;
  MEMORY[0x28223BE20](v16);
  KeyPath = &v179[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = type metadata accessor for ResolvableTool(0);
  MEMORY[0x28223BE20](v18 - 8);
  v215 = &v179[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = sub_22C3A5908(&qword_27D9BC1E8, &qword_22C9123B0);
  MEMORY[0x28223BE20](v20 - 8);
  v217 = &v179[-v21];
  v221 = sub_22C908EAC();
  v223 = *(v221 - 8);
  MEMORY[0x28223BE20](v221);
  v222 = &v179[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v225 = sub_22C3A5908(&qword_27D9BC1F0, &qword_22C9123B8);
  MEMORY[0x28223BE20](v225);
  v224 = &v179[-v23];
  v228 = sub_22C3A5908(&qword_27D9BC168, &unk_22C9123C0);
  MEMORY[0x28223BE20](v228);
  v227 = &v179[-v24];
  v232 = sub_22C902D0C();
  v25 = *(v232 - 8);
  v26 = MEMORY[0x28223BE20](v232);
  v193 = &v179[-((v27 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v28 = MEMORY[0x28223BE20](v26);
  v192 = &v179[-v29];
  v30 = MEMORY[0x28223BE20](v28);
  v198 = &v179[-v31];
  v32 = MEMORY[0x28223BE20](v30);
  v196 = &v179[-v33];
  v34 = MEMORY[0x28223BE20](v32);
  v36 = &v179[-v35];
  MEMORY[0x28223BE20](v34);
  v226 = &v179[-v37];
  v38 = sub_22C9063DC();
  v39 = *(v38 - 8);
  v40 = MEMORY[0x28223BE20](v38);
  v216 = &v179[-((v41 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v42 = MEMORY[0x28223BE20](v40);
  v194 = &v179[-v43];
  v44 = MEMORY[0x28223BE20](v42);
  v200 = &v179[-v45];
  v46 = MEMORY[0x28223BE20](v44);
  v209 = &v179[-v47];
  MEMORY[0x28223BE20](v46);
  v49 = &v179[-v48];
  v201 = *a3;
  v199 = *(a3 + 2);
  v50 = *(a3 + 3);
  sub_22C903FFC();
  v51 = sub_22C9063CC();
  v52 = sub_22C90AABC();
  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
    v234 = v39;
    v54 = v38;
    v55 = v25;
    v56 = v53;
    *v53 = 0;
    _os_log_impl(&dword_22C366000, v51, v52, "Enforcing infix string quoting", v53, 2u);
    v57 = v56;
    v25 = v55;
    v38 = v54;
    v39 = v234;
    MEMORY[0x2318B9880](v57, -1, -1);
  }

  v58 = *(v39 + 8);
  v234 = v39 + 8;
  v58(v49, v38);
  v59 = v232;
  v230 = *(v25 + 16);
  v231 = v25 + 16;
  v230(v36, a1, v232);
  v60 = *(v25 + 88);
  v61 = v60(v36, v59);
  if (v61 != *MEMORY[0x277D1D7D8])
  {
    (*(v25 + 8))(v36, v59);
LABEL_15:
    v98 = v229;
    v99 = a1;
LABEL_16:
    v100 = v59;
    return v230(v98, v99, v100);
  }

  v189 = v38;
  v190 = v60;
  v187 = v61;
  v188 = v58;
  v191 = a1;
  v62 = *(v25 + 96);
  v62(v36, v59);
  v63 = *v36;
  swift_projectBox();
  v64 = v227;
  sub_22C3A7214();
  v65 = v25;
  v66 = *(v228 + 48);
  if (*v64)
  {
    v67 = *(v25 + 8);
    v68 = *(v228 + 48);
    v67(&v64[*(v228 + 64)], v59);
    v67(&v64[v68], v59);
LABEL_14:

    a1 = v191;
    goto LABEL_15;
  }

  v69 = v62;
  v184 = *(v228 + 64);
  v185 = v63;
  v186 = v65;
  v70 = v66;
  v71 = v190;
  v72 = v190(&v64[v66], v59);
  if (v72 != *MEMORY[0x277D1D7B8])
  {
    v96 = v186[1];
    v96(&v64[v184], v59);
    v96(&v64[v70], v59);
    goto LABEL_14;
  }

  v180 = v72;
  v69(&v64[v70], v59);
  v183 = *&v64[v70];
  swift_projectBox();
  v73 = v224;
  sub_22C3A7214();
  v74 = &v73[*(v225 + 48)];
  v75 = v74[1];
  v182 = *v74;
  v76 = v71(v73, v59);
  if (v76 != *MEMORY[0x277D1D7C8])
  {

    v97 = v186[1];
    v97(v73, v59);

    v97(&v64[v184], v59);
    goto LABEL_14;
  }

  v181 = v75;
  LODWORD(v190) = v76;
  v69(v73, v59);
  v78 = *(*v73 + 16);
  v77 = *(*v73 + 24);

  v79 = v186 + 4;
  v80 = v186[4];
  v80(v226, &v64[v184], v59);
  v81 = v77;

  v82 = *(v220 + 40);
  v83 = v217;
  v227 = v78;
  sub_22C6056B0(v82, v217);
  v84 = v221;
  if (sub_22C370B74(v83, 1, v221) == 1)
  {
    sub_22C36DD28(v83, &qword_27D9BC1E8, &qword_22C9123B0);
    v85 = v216;
    sub_22C903FFC();

    v86 = v181;

    v87 = sub_22C9063CC();
    v88 = sub_22C90AACC();

    if (os_log_type_enabled(v87, v88))
    {
      v89 = v86;
      v90 = swift_slowAlloc();
      v91 = swift_slowAlloc();
      v235[0] = v91;
      *v90 = 136315394;
      v92 = sub_22C36F9F4(v227, v81, v235);
      v93 = v186;
      v94 = v92;

      *(v90 + 4) = v94;
      *(v90 + 12) = 2080;
      v95 = sub_22C36F9F4(v182, v89, v235);
      v59 = v232;

      *(v90 + 14) = v95;
      _os_log_impl(&dword_22C366000, v87, v88, "No tool mapping found for infix %s.%s. Skipping string alignment.", v90, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2318B9880](v91, -1, -1);
      MEMORY[0x2318B9880](v90, -1, -1);

      v188(v216, v189);
      (v93[1])(v226, v59);
    }

    else
    {

      v188(v85, v189);
      (v186[1])(v226, v59);
    }

    v98 = v229;
    v99 = v191;
    goto LABEL_16;
  }

  v185 = v80;
  v216 = v79;
  (*(v223 + 32))(v222, v83, v84);
  v102 = v209;
  sub_22C903FFC();

  v103 = sub_22C9063CC();
  v104 = sub_22C90AACC();

  if (os_log_type_enabled(v103, v104))
  {
    v105 = swift_slowAlloc();
    v106 = swift_slowAlloc();
    v235[0] = v106;
    *v105 = 136315138;
    *(v105 + 4) = sub_22C36F9F4(v227, v81, v235);
    _os_log_impl(&dword_22C366000, v103, v104, "Found infix slot filling on %s. Attempting string alignment.", v105, 0xCu);
    sub_22C36FF94(v106);
    MEMORY[0x2318B9880](v106, -1, -1);
    MEMORY[0x2318B9880](v105, -1, -1);
  }

  v188(v102, v189);
  v107 = v212;
  v108 = *(v219 + 360);
  v109 = *(type metadata accessor for PromptMapperResolver(0) + 36);
  v110 = v222;
  v111 = KeyPath;
  (*(v223 + 16))(KeyPath, v222, v84);
  (*(v210 + 104))(v111, *MEMORY[0x277D1E2A8], v211);
  v224 = v81;
  if (v108)
  {
    v217 = v109;

    v112 = v204;
    v113 = sub_22C908DDC();
    v114 = v207;
    MEMORY[0x2318B6C30](v113);
    (*(v205 + 8))(v112, v206);
    v115 = v208;
    if ((*(v107 + 88))(v114, v208) == *MEMORY[0x277D730E0])
    {

      (*(v107 + 96))(v114, v115);
    }

    else
    {
      (*(v107 + 8))(v114, v115);
    }

    v110 = v222;
  }

  sub_22C42F0B8(v219, v235);
  sub_22C430B88();

  v116 = v215;
  v117 = v233;
  sub_22C433EC0();
  v118 = v232;
  if (v117)
  {

    (*(v223 + 8))(v110, v84);
    return (v186[1])(v226, v118);
  }

  else
  {
    v233 = 0;
    KeyPath = swift_getKeyPath();
    sub_22C3A5908(&qword_27D9BAF20, &qword_22C90D7C8);
    v119 = (sub_22C3A5908(&qword_27D9BAF28, &unk_22C90D7D0) - 8);
    v120 = (*(*v119 + 80) + 32) & ~*(*v119 + 80);
    v121 = swift_allocObject();
    *(v121 + 16) = xmmword_22C90F800;
    v122 = (v121 + v120);
    v123 = v119[14];
    v124 = v181;
    *v122 = v182;
    v122[1] = v124;
    v125 = *(v202 + 104);
    LODWORD(v217) = *MEMORY[0x277D1D770];
    v214 = v125;
    v125(v122);
    v230(v122 + v123, v226, v118);
    sub_22C4309E4(&qword_27D9BC1A8, MEMORY[0x277D1D780], MEMORY[0x277D1D788]);

    sub_22C909F0C();
    v126 = v200;
    sub_22C903FFC();
    v127 = sub_22C9063CC();
    v128 = sub_22C90AABC();
    if (os_log_type_enabled(v127, v128))
    {
      v129 = swift_slowAlloc();
      *v129 = 0;
      _os_log_impl(&dword_22C366000, v127, v128, "Enforcing string quoting", v129, 2u);
      v130 = v129;
      v116 = v215;
      MEMORY[0x2318B9880](v130, -1, -1);
    }

    v131 = (v188)(v126, v189);
    MEMORY[0x28223BE20](v131);
    v133 = KeyPath;
    v132 = v219;
    *&v179[-80] = v116;
    *&v179[-72] = v132;
    *&v179[-64] = v133;
    *&v179[-56] = v201;
    *&v179[-40] = v199;
    *&v179[-32] = v50;
    *&v179[-24] = v220;
    *&v179[-16] = sub_22C430F84;
    *&v179[-8] = 0;
    v134 = v233;
    sub_22C3B362C();
    v135 = v224;
    if (v134)
    {

      (*(v223 + 8))(v222, v221);
      (v186[1])(v226, v232);
      return sub_22C430B30(v116, type metadata accessor for ResolvableTool);
    }

    else
    {

      sub_22C8D54F4();
      v137 = v136;

      v138 = sub_22C42C174(v137, &qword_27D9BC1F8, &qword_22C9126D0, sub_22C42F5CC);

      v139 = v195;
      v140 = v181;
      *v195 = v182;
      *(v139 + 8) = v140;
      v141 = v203;
      v214(v139, v217, v203);

      v142 = v197;
      sub_22C605658(v139, v138);

      (*(v202 + 8))(v139, v141);
      v143 = v232;
      if (sub_22C370B74(v142, 1, v232) == 1)
      {

        (*(v223 + 8))(v222, v221);
        (v186[1])(v226, v143);
        sub_22C430B30(v116, type metadata accessor for ResolvableTool);
        sub_22C36DD28(v142, &qword_27D9BB640, &unk_22C912190);
        v98 = v229;
        v99 = v191;
        v100 = v143;
        return v230(v98, v99, v100);
      }

      v233 = 0;
      v144 = v196;
      v185(v196, v142, v143);
      v145 = v228;
      v146 = swift_allocBox();
      v148 = v147;
      v149 = *(v145 + 48);
      v228 = *(v145 + 64);
      *v147 = 0;
      v150 = v225;
      v220 = swift_allocBox();
      v152 = v151;
      v153 = (v151 + *(v150 + 48));
      v154 = swift_allocObject();
      *(v154 + 16) = v227;
      *(v154 + 24) = v135;
      *v152 = v154;
      v155 = v186[13];
      v155(v152, v190, v232);
      v156 = v181;
      *v153 = v182;
      v153[1] = v156;
      v157 = v232;
      *&v148[v149] = v220;
      v155(&v148[v149], v180, v157);
      v158 = v144;
      v159 = v230;
      v230(&v148[v228], v158, v157);
      v160 = v198;
      *v198 = v146;
      v155(v160, v187, v157);
      v161 = v194;
      sub_22C903FFC();
      v162 = v192;
      v159(v192, v191, v157);
      v163 = v193;
      v159(v193, v160, v157);
      v164 = sub_22C9063CC();
      v165 = sub_22C90AACC();
      if (os_log_type_enabled(v164, v165))
      {
        v166 = swift_slowAlloc();
        v231 = swift_slowAlloc();
        v235[0] = v231;
        *v166 = 136315394;
        sub_22C4309E4(&qword_27D9BC188, MEMORY[0x277D1D800], MEMORY[0x277D1D818]);
        LODWORD(v230) = v165;
        v167 = sub_22C90B47C();
        v169 = v168;
        v228 = v164;
        v170 = v186[1];
        v170(v162, v232);
        v171 = sub_22C36F9F4(v167, v169, v235);
        v157 = v232;

        *(v166 + 4) = v171;
        *(v166 + 12) = 2080;
        v172 = sub_22C90B47C();
        v174 = v173;
        v170(v163, v157);
        v175 = sub_22C36F9F4(v172, v174, v235);

        *(v166 + 14) = v175;
        v176 = v228;
        _os_log_impl(&dword_22C366000, v228, v230, "[Original Infix: %s . Aligned Infix: %s", v166, 0x16u);
        v177 = v231;
        swift_arrayDestroy();
        MEMORY[0x2318B9880](v177, -1, -1);
        MEMORY[0x2318B9880](v166, -1, -1);

        v188(v194, v189);
        v170(v196, v157);
        (*(v223 + 8))(v222, v221);
        v170(v226, v157);
      }

      else
      {

        v178 = v186[1];
        v178(v163, v157);
        v178(v162, v157);
        v188(v161, v189);
        v178(v196, v157);
        (*(v223 + 8))(v222, v221);
        v178(v226, v157);
      }

      sub_22C430B30(v215, type metadata accessor for ResolvableTool);
      return v185(v229, v198, v157);
    }
  }
}

uint64_t sub_22C427DB8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 32);
  if (*(v3 + 16) && (sub_22C6280AC(), (v5 & 1) != 0))
  {
    v6 = v4;
    v7 = *(v3 + 56);
    v8 = sub_22C902D0C();
    (*(*(v8 - 8) + 16))(a2, v7 + *(*(v8 - 8) + 72) * v6, v8);
    v9 = a2;
    v10 = 0;
    v11 = v8;
  }

  else
  {
    v11 = sub_22C902D0C();
    v9 = a2;
    v10 = 1;
  }

  return sub_22C36C640(v9, v10, 1, v11);
}

uint64_t sub_22C427E9C@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void (*a5)(unint64_t, char *, int64_t)@<X4>, uint64_t *a6@<X5>, uint64_t *a7@<X8>)
{
  v54 = a6;
  v60 = a3;
  v61 = a5;
  v58 = a4;
  v59 = a2;
  v68 = a1;
  v64 = a7;
  v7 = type metadata accessor for FullPlannerPreferences(0);
  MEMORY[0x28223BE20](v7 - 8);
  v56 = (v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_22C3A5908(&qword_27D9BC200, &unk_22C9123F0);
  MEMORY[0x28223BE20](v9 - 8);
  v57 = v49 - v10;
  v55 = type metadata accessor for ResolvableTool(0);
  MEMORY[0x28223BE20](v55);
  v53 = v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_22C902D1C();
  v62 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_22C902D0C();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = (v49 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v17);
  v21 = v49 - v20;
  v22 = *(v16 + 16);
  v22(v49 - v20, v68, v15);
  v23 = *(v16 + 88);
  v68 = v21;
  v24 = v23(v21, v15) == *MEMORY[0x277D1D7C0];
  v25 = v64;
  if (!v24)
  {
    goto LABEL_7;
  }

  v22(v19, v68, v15);
  (*(v16 + 96))(v19, v15);
  v26 = *v19;
  v27 = sub_22C3A5908(&qword_27D9BC198, &unk_22C916710);
  v28 = swift_projectBox();
  v29 = *(v28 + *(v27 + 48));
  v30 = v62;
  if (v62[11]() != *MEMORY[0x277D1D820])
  {

    v25 = v64;
LABEL_7:
    sub_22C36C640(v25, 1, 1, v15);
    return (*(v16 + 8))(v68, v15);
  }

  v52 = v26;
  (v30[2])(v14, v28, v12);
  (v30[12])(v14, v12);
  v31 = *(v14 + 1);
  v62 = *v14;
  v32 = v60;
  v33 = *(v60 + 352);
  v50 = *(v60 + 360);
  v51 = v33;
  sub_22C42F0B8(v60, v67);
  sub_22C378A4C(v32 + 304, v66);
  type metadata accessor for PromptMapperResolver(0);
  v34 = v56;
  sub_22C430B88();

  v35 = v59;
  sub_22C425B78(v59, &v65);

  v36 = v61;

  v37 = v58;

  v47 = v34;
  v38 = v57;
  v39 = v37;
  v40 = v63;
  sub_22C431014(v62, v31, v29, v35, v51, v50, v67, v39, v66, v36, v47, v48, v49[0], v29, v50, v51, v52, v53, v54, v55, v31, v57, v58);
  if (v40)
  {
  }

  else
  {
    if (sub_22C370B74(v38, 1, v55) == 1)
    {

      sub_22C36DD28(v38, &qword_27D9BC200, &unk_22C9123F0);
      v42 = v64;
      v43 = 1;
    }

    else
    {
      v44 = v53;
      sub_22C430ABC();

      sub_22C42F114(v45, sub_22C4AA2B0, 0, v54);
      v46 = v64;
      sub_22C4284B8(v62, v56, v49[1], v44, v61, v64);
      sub_22C430B30(v44, type metadata accessor for ResolvableTool);

      v42 = v46;
      v43 = 0;
    }

    sub_22C36C640(v42, v43, 1, v15);
  }

  return (*(v16 + 8))(v68, v15);
}

void sub_22C4284B8(_DWORD *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void (*a5)(unint64_t, char *, int64_t)@<X5>, uint64_t *a6@<X8>)
{
  v164 = a2;
  v149 = a5;
  v163 = a1;
  v134 = a6;
  v136 = sub_22C90769C();
  v135 = *(v136 - 8);
  MEMORY[0x28223BE20](v136);
  v143 = &v124 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v153 = sub_22C902C5C();
  v141 = *(v153 - 8);
  MEMORY[0x28223BE20](v153);
  v152 = &v124 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v150 = sub_22C902C4C();
  v155 = *(v150 - 8);
  MEMORY[0x28223BE20](v150);
  v162 = &v124 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v160 = sub_22C3A5908(&qword_27D9BAF30, &unk_22C90FAA0);
  v11 = MEMORY[0x28223BE20](v160);
  v151 = &v124 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v166 = &v124 - v14;
  MEMORY[0x28223BE20](v13);
  v161 = &v124 - v15;
  v138 = sub_22C9063DC();
  v137 = *(v138 - 8);
  MEMORY[0x28223BE20](v138);
  v147 = &v124 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v146 = sub_22C901FAC();
  v145 = *(v146 - 8);
  v17 = MEMORY[0x28223BE20](v146);
  v133 = &v124 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v144 = &v124 - v19;
  v20 = sub_22C3A5908(&qword_27D9BB640, &unk_22C912190);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v140 = &v124 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v124 - v23;
  v25 = sub_22C902C9C();
  v26 = *(v25 - 8);
  v27 = MEMORY[0x28223BE20](v25);
  v139 = (&v124 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v27);
  v30 = (&v124 - v29);
  v167 = sub_22C902D0C();
  v159 = *(v167 - 8);
  v31 = MEMORY[0x28223BE20](v167);
  v33 = &v124 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x28223BE20](v31);
  v36 = &v124 - v35;
  MEMORY[0x28223BE20](v34);
  v158 = &v124 - v37;
  v38 = sub_22C424668();
  v39 = v165;
  if ((v38 & 1) == 0)
  {
    goto LABEL_8;
  }

  v132 = a4;
  *v30 = 0;
  v40 = *(v26 + 104);
  LODWORD(v130) = *MEMORY[0x277D1D778];
  v129 = v40;
  v40(v30);
  sub_22C605658(v30, a3);
  v142 = v26;
  v156 = *(v26 + 8);
  v157 = v25;
  v156(v30, v25);
  v41 = v167;
  if (sub_22C370B74(v24, 1, v167) == 1)
  {
    v38 = sub_22C36DD28(v24, &qword_27D9BB640, &unk_22C912190);
    v39 = v165;
    a4 = v132;
    goto LABEL_8;
  }

  v154 = v26 + 8;
  v148 = a3;
  v42 = v158;
  v43 = v159;
  v44 = *(v159 + 32);
  v128 = v159 + 32;
  v127 = v44;
  v44(v158, v24, v41);
  v45 = *(v43 + 16);
  v45(v36, v42, v41);
  if ((*(v43 + 88))(v36, v41) != *MEMORY[0x277D1D798])
  {
    v60 = *(v43 + 8);
    v60(v42, v41);
    v38 = (v60)(v36, v41);
    a4 = v132;
    a3 = v148;
    v39 = v165;
LABEL_8:
    MEMORY[0x28223BE20](v38);
    *(&v124 - 4) = a4;
    *(&v124 - 3) = a3;
    *(&v124 - 2) = v62;
    *(&v124 - 1) = v61;
    sub_22C604A84();
    if (!v39)
    {
      v64 = v63;
      sub_22C42E080(a4, v149);
      v65 = type metadata accessor for ResolvableTool(0);

      sub_22C90766C();
      v113 = sub_22C42B5FC(v64, *(a4 + *(v65 + 20)));

      v114 = sub_22C3A5908(&qword_27D9BC198, &unk_22C916710);
      v115 = swift_allocBox();
      v117 = v116;
      v118 = *(v114 + 48);
      (*(v135 + 32))(v116, v143, v136);
      v119 = *MEMORY[0x277D1D828];
      v120 = sub_22C902D1C();
      (*(*(v120 - 8) + 104))(v117, v119, v120);
      *(v117 + v118) = v113;
      *v134 = v115;
      (*(v159 + 104))();
    }

    return;
  }

  (*(v43 + 96))(v36, v41);
  v46 = swift_projectBox();
  v47 = *(v145 + 16);
  v126 = v145 + 16;
  v125 = v47;
  v47(v144, v46, v146);

  sub_22C903F7C();
  v136 = v43 + 16;
  v45(v33, v42, v41);
  v48 = sub_22C9063CC();
  v49 = v41;
  v50 = sub_22C90AACC();
  v51 = os_log_type_enabled(v48, v50);
  v131 = v45;
  if (v51)
  {
    v52 = swift_slowAlloc();
    v163 = v52;
    v164 = swift_slowAlloc();
    v168 = v164;
    *v52 = 136315138;
    sub_22C4309E4(&qword_27D9BC188, MEMORY[0x277D1D800], MEMORY[0x277D1D818]);
    v53 = sub_22C90B47C();
    v55 = v54;
    v143 = *(v43 + 8);
    (v143)(v33, v49);
    v56 = sub_22C36F9F4(v53, v55, &v168);

    v57 = v163;
    *(v163 + 1) = v56;
    v58 = v57;
    _os_log_impl(&dword_22C366000, v48, v50, "[PromptMapperResolver] Received a parameter update. Dropping anonymous target parameter %s", v57, 0xCu);
    v59 = v164;
    sub_22C36FF94(v164);
    MEMORY[0x2318B9880](v59, -1, -1);
    MEMORY[0x2318B9880](v58, -1, -1);
  }

  else
  {

    v143 = *(v43 + 8);
    (v143)(v33, v41);
  }

  (*(v137 + 8))(v147, v138);
  v66 = v139;
  *v139 = 0;
  v67 = v157;
  v129(v66, v130, v157);
  v68 = v148;

  sub_22C6287BC();
  if (v70)
  {
    v71 = v69;
    swift_isUniquelyReferenced_nonNull_native();
    v168 = v68;
    sub_22C3A5908(&qword_27D9BC1A0, &unk_22C9121B0);
    v67 = v157;
    sub_22C90B15C();
    v68 = v168;
    v72 = v142;
    v73 = v156;
    v156((v168[6] + *(v142 + 72) * v71), v67);
    v74 = v159;
    v75 = v140;
    v76 = v167;
    v127(v140, *(v68 + 56) + *(v159 + 72) * v71, v167);
    sub_22C4309E4(&qword_27D9BC1A8, MEMORY[0x277D1D780], MEMORY[0x277D1D788]);
    sub_22C90B17C();
    v77 = 0;
  }

  else
  {
    v77 = 1;
    v74 = v159;
    v72 = v142;
    v73 = v156;
    v75 = v140;
    v76 = v167;
  }

  sub_22C36C640(v75, v77, 1, v76);
  v73(v66, v67);
  sub_22C36DD28(v75, &qword_27D9BB640, &unk_22C912190);
  v78 = v68 + 64;
  v79 = 1 << *(v68 + 32);
  v80 = -1;
  if (v79 < 64)
  {
    v80 = ~(-1 << v79);
  }

  v81 = v80 & *(v68 + 64);
  v82 = (v79 + 63) >> 6;
  v163 = (v72 + 16);
  LODWORD(v140) = *MEMORY[0x277D1D768];
  v139 = (v141 + 104);
  v135 = v155 + 32;
  v130 = v155 + 40;
  v83 = v74;
  v141 = v74 + 8;
  v148 = v68;

  v84 = 0;
  v85 = MEMORY[0x277D84F98];
  v86 = v158;
  v138 = v78;
  v137 = v82;
  if (v81)
  {
    while (1)
    {
      v164 = v85;
LABEL_22:
      v88 = __clz(__rbit64(v81)) | (v84 << 6);
      v89 = v148;
      v90 = *(v148 + 48);
      v147 = *(v72 + 72);
      v91 = *(v72 + 16);
      v92 = v161;
      v93 = v157;
      v149 = v91;
      v91(v161, (v90 + v147 * v88), v157);
      v131(v92 + *(v160 + 48), *(v89 + 56) + *(v83 + 72) * v88, v167);
      sub_22C3A7214();
      (*v139)(v152, v140, v153);
      v94 = v151;
      sub_22C3A7214();
      sub_22C902C2C();
      v156(v94, v93);
      v95 = v164;
      swift_isUniquelyReferenced_nonNull_native();
      v168 = v95;
      sub_22C6287BC();
      if (__OFADD__(v95[2], (v97 & 1) == 0))
      {
        break;
      }

      v98 = v96;
      v99 = v97;
      sub_22C3A5908(&qword_27D9BC228, &qword_22C922850);
      if (sub_22C90B15C())
      {
        sub_22C6287BC();
        v102 = v159;
        v103 = v157;
        v72 = v142;
        if ((v99 & 1) != (v101 & 1))
        {
          goto LABEL_40;
        }

        v98 = v100;
      }

      else
      {
        v102 = v159;
        v103 = v157;
        v72 = v142;
      }

      v85 = v168;
      if (v99)
      {
        v83 = v102;
        (*(v155 + 40))(v168[7] + *(v155 + 72) * v98, v162, v150);
        sub_22C36DD28(v161, &qword_27D9BAF30, &unk_22C90FAA0);
      }

      else
      {
        v168[(v98 >> 6) + 8] |= 1 << v98;
        v149(v85[6] + v98 * v147, v166, v103);
        (*(v155 + 32))(v85[7] + *(v155 + 72) * v98, v162, v150);
        sub_22C36DD28(v161, &qword_27D9BAF30, &unk_22C90FAA0);
        v104 = v85[2];
        v105 = __OFADD__(v104, 1);
        v106 = v104 + 1;
        if (v105)
        {
          goto LABEL_39;
        }

        v83 = v102;
        v85[2] = v106;
      }

      v81 &= v81 - 1;
      v107 = *(v160 + 48);
      v108 = v166;
      v156(v166, v103);
      (v143)(&v108[v107], v167);
      v86 = v158;
      v78 = v138;
      v82 = v137;
      if (!v81)
      {
        goto LABEL_18;
      }
    }

LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    sub_22C90B54C();
    __break(1u);
  }

  else
  {
    while (1)
    {
LABEL_18:
      v87 = v84 + 1;
      if (__OFADD__(v84, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v87 >= v82)
      {
        break;
      }

      v81 = *(v78 + 8 * v87);
      ++v84;
      if (v81)
      {
        v164 = v85;
        v84 = v87;
        goto LABEL_22;
      }
    }

    sub_22C43670C();
    v110 = v109;

    v111 = type metadata accessor for ResolvableTool(0);
    v112 = v165;
    sub_22C42C214(v110, *(v132 + *(v111 + 20)));
    if (v112)
    {

      (*(v145 + 8))(v144, v146);
      (v143)(v86, v167);
    }

    else
    {

      sub_22C902CDC();
      v121 = swift_allocBox();
      v122 = v144;
      v123 = v146;
      v125(v133, v144, v146);
      sub_22C902CBC();
      (*(v145 + 8))(v122, v123);
      (v143)(v86, v167);
      *v134 = v121;
      (*(v83 + 104))();
    }
  }
}

uint64_t sub_22C42979C@<X0>(uint64_t *a1@<X1>, uint64_t a2@<X8>)
{
  v3 = *a1;
  if (*(*a1 + 16) && (sub_22C6280AC(), (v5 & 1) != 0))
  {
    v6 = v4;
    v7 = *(v3 + 56);
    v8 = sub_22C902D0C();
    (*(*(v8 - 8) + 16))(a2, v7 + *(*(v8 - 8) + 72) * v6, v8);
    v9 = a2;
    v10 = 0;
    v11 = v8;
  }

  else
  {
    v11 = sub_22C902D0C();
    v9 = a2;
    v10 = 1;
  }

  return sub_22C36C640(v9, v10, 1, v11);
}

uint64_t sub_22C429880@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v5 = v4;
  v56 = a3;
  v59 = a2;
  v8 = sub_22C9063DC();
  v53 = *(v8 - 8);
  v54 = v8;
  MEMORY[0x28223BE20](v8);
  v55 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22C90880C();
  v58 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22C902D0C();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v14 + 16);
  v57 = a1;
  v52 = v17;
  v17(v16, a1, v13);
  if ((*(v14 + 88))(v16, v13) != *MEMORY[0x277D1D7E8])
  {
    (*(v14 + 8))(v16, v13);
LABEL_10:
    v28 = a4;
    v29 = 1;
    return sub_22C36C640(v28, v29, 1, v13);
  }

  (*(v14 + 96))(v16, v13);
  v18 = *v16;
  if (*(*v16 + 32) != 4)
  {

    goto LABEL_10;
  }

  v50 = a4;
  v19 = *(v18 + 16);
  v49 = *(v18 + 24);

  v48 = v19;
  v20 = sub_22C429DE4(v19);
  v21 = sub_22C90878C();
  MEMORY[0x28223BE20](v21);
  *(&v48 - 2) = v12;
  v22 = v5;
  v23 = sub_22C5EC13C(sub_22C4309C4, (&v48 - 4), v20);
  v51 = v22;

  v24 = *(v58 + 8);
  v24(v12, v10);
  if (!v23)
  {
    v27 = v48;
    goto LABEL_9;
  }

  v25 = v48;
  sub_22C90878C();
  v26 = sub_22C42A1E0(v56);
  v24(v12, v10);
  if (v26)
  {
    v27 = v25;
LABEL_9:
    sub_22C4242E4(v27, v49, 4);
    a4 = v50;
    goto LABEL_10;
  }

  v31 = v55;
  sub_22C903F7C();
  v32 = v25;

  v33 = sub_22C9063CC();
  v34 = sub_22C90AACC();
  v35 = v25;
  v36 = v49;
  sub_22C4242E4(v35, v49, 4);
  if (os_log_type_enabled(v33, v34))
  {
    v37 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    v60 = v59;
    *v37 = 136315138;
    v38 = sub_22C429DE4(v32);
    sub_22C4242E4(v32, v36, 4);
    v39 = sub_22C901FAC();
    v40 = MEMORY[0x2318B7AD0](v38, v39);
    v42 = v41;

    v43 = sub_22C36F9F4(v40, v42, &v60);

    *(v37 + 4) = v43;
    _os_log_impl(&dword_22C366000, v33, v34, "Array expression %s is not permitted. Mapping to AST.Expr.unsupported.", v37, 0xCu);
    v44 = v59;
    sub_22C36FF94(v59);
    MEMORY[0x2318B9880](v44, -1, -1);
    MEMORY[0x2318B9880](v37, -1, -1);

    (*(v53 + 8))(v55, v54);
  }

  else
  {
    sub_22C4242E4(v32, v36, 4);

    (*(v53 + 8))(v31, v54);
  }

  v45 = swift_allocBox();
  v52(v46, v57, v13);
  v47 = v50;
  *v50 = v45;
  (*(v14 + 104))(v47, *MEMORY[0x277D1D7A0], v13);
  v28 = v47;
  v29 = 0;
  return sub_22C36C640(v28, v29, 1, v13);
}

uint64_t sub_22C429DE4(uint64_t a1)
{
  v2 = sub_22C901FAC();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v43 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v42 = &v34 - v7;
  MEMORY[0x28223BE20](v6);
  v9 = &v34 - v8;
  v10 = sub_22C902D0C();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v34 - v15;
  v17 = *(a1 + 16);
  if (!v17)
  {
    return MEMORY[0x277D84F90];
  }

  v19 = *(v11 + 16);
  v18 = v11 + 16;
  v20 = a1 + ((*(v18 + 64) + 32) & ~*(v18 + 64));
  v48 = *(v18 + 56);
  v49 = v19;
  v46 = (v18 + 72);
  v47 = (v18 + 16);
  v45 = *MEMORY[0x277D1D798];
  v36 = (v18 + 80);
  v37 = (v18 - 8);
  v35 = (v3 + 16);
  v44 = (v3 + 32);
  v21 = MEMORY[0x277D84F90];
  v40 = v3;
  v41 = v2;
  v38 = &v34 - v15;
  v39 = v18;
  v34 = v14;
  do
  {
    v49(v16, v20, v10);
    (*v47)(v14, v16, v10);
    v22 = (*v46)(v14, v10);
    if (v22 == v45)
    {
      (*v36)(v14, v10);
      v23 = swift_projectBox();
      v24 = v9;
      v25 = v43;
      (*v35)(v43, v23, v2);

      v26 = *v44;
      v27 = v42;
      v28 = v25;
      v9 = v24;
      (*v44)(v42, v28, v2);
      v26(v24, v27, v2);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_22C59298C();
        v21 = v31;
      }

      v29 = *(v21 + 16);
      v14 = v34;
      if (v29 >= *(v21 + 24) >> 1)
      {
        sub_22C59298C();
        v21 = v32;
      }

      *(v21 + 16) = v29 + 1;
      v30 = v21 + ((*(v40 + 80) + 32) & ~*(v40 + 80)) + *(v40 + 72) * v29;
      v2 = v41;
      v26(v30, v24, v41);
      v16 = v38;
    }

    else
    {
      (*v37)(v14, v10);
    }

    v20 += v48;
    --v17;
  }

  while (v17);
  return v21;
}

BOOL sub_22C42A1E0(uint64_t a1)
{
  v2 = v1;
  v4 = sub_22C3A5908(&qword_27D9BC208, &unk_22C912400);
  MEMORY[0x28223BE20](v4);
  v6 = &v126 - v5;
  v137 = sub_22C3A5908(&qword_27D9BC1F0, &qword_22C9123B8);
  MEMORY[0x28223BE20](v137);
  v136 = &v126 - v7;
  v8 = sub_22C3A5908(&qword_27D9BB640, &unk_22C912190);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = &v126 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v144 = &v126 - v12;
  v155 = sub_22C3A5908(&qword_27D9BC210, &unk_22C917470);
  v13 = MEMORY[0x28223BE20](v155);
  v152 = &v126 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v156 = &v126 - v16;
  MEMORY[0x28223BE20](v15);
  v151 = &v126 - v17;
  v18 = sub_22C3A5908(&qword_27D9BC218, &unk_22C912410);
  v19 = MEMORY[0x28223BE20](v18 - 8);
  v142 = &v126 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v143 = &v126 - v22;
  MEMORY[0x28223BE20](v21);
  v24 = &v126 - v23;
  v25 = sub_22C902D0C();
  v26 = MEMORY[0x28223BE20](v25);
  v28 = &v126 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x28223BE20](v26);
  v139 = &v126 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v138 = &v126 - v32;
  MEMORY[0x28223BE20](v31);
  v34 = (&v126 - v33);
  v35 = v2;
  v37 = v36;
  v159 = *(v36 + 16);
  v160 = v36 + 16;
  v159(&v126 - v33, v35, v25);
  v38 = *(v37 + 88);
  v149 = v37 + 88;
  v39 = v38(v34, v25);
  v40 = *MEMORY[0x277D1D7E8];
  v153 = v39;
  if (v39 != v40)
  {
    (*(v37 + 8))(v34, v25);
    return 0;
  }

  v41 = *(v37 + 96);
  v154 = v25;
  v141 = v37 + 96;
  v140 = v41;
  v41(v34, v25);
  v42 = *v34;
  if (*(v42 + 32) != 4)
  {
LABEL_30:

    return 0;
  }

  v130 = v11;
  v131 = v24;
  v126 = v4;
  v127 = v6;
  v43 = *(v42 + 16);
  v129 = *(v42 + 24);
  v135 = v43;

  v44 = *(a1 + 8);
  v45 = v44 + 64;
  v46 = 1 << *(v44 + 32);
  v47 = -1;
  if (v46 < 64)
  {
    v47 = ~(-1 << v46);
  }

  v48 = v47 & *(v44 + 64);
  v147 = v38;
  v148 = v44;
  v49 = (v46 + 63) >> 6;
  v161 = (v37 + 8);

  v51 = 0;
  v52 = v149;
  v150 = v37;
  v145 = v45;
  v146 = v49;
  while (1)
  {
    if (!v48)
    {
      while (1)
      {
        v54 = v51 + 1;
        if (__OFADD__(v51, 1))
        {
          break;
        }

        if (v54 >= v49)
        {
          sub_22C4242E4(v135, v129, 4);

          v86 = 1;
          v37 = v131;
          goto LABEL_32;
        }

        v48 = *(v45 + 8 * v54);
        ++v51;
        if (v48)
        {
          v53 = v28;
          v51 = v54;
          goto LABEL_12;
        }
      }

      __break(1u);
      goto LABEL_67;
    }

    v53 = v28;
LABEL_12:
    v55 = v148;
    v56 = *(v148 + 48);
    v158 = *(v37 + 72);
    v57 = v158 * (__clz(__rbit64(v48)) | (v51 << 6));
    v58 = v151;
    v59 = v154;
    v60 = v159;
    v159(v151, v56 + v57, v154);
    v61 = *(v55 + 56);
    v62 = v155;
    v60(&v58[*(v155 + 48)], v61 + v57, v59);
    sub_22C407C2C();
    v63 = v152;
    sub_22C3A7214();
    v64 = *(v62 + 48);
    v65 = v147(&v63[v64], v59);
    if (v65 != v153)
    {
      v78 = v52;
      v79 = *v161;
      (*v161)(&v63[v64], v59);
      v79(v63, v59);
      v52 = v78;
      v28 = v53;
LABEL_20:
      v49 = v146;
      goto LABEL_28;
    }

    v140(&v63[v64], v59);
    v66 = *&v63[v64];
    v28 = v53;
    if (*(v66 + 32) != 4)
    {

      (*v161)(v63, v59);
      goto LABEL_20;
    }

    v67 = *(v66 + 16);
    v133 = *(v66 + 24);

    v157 = *v161;
    v157(v63, v59);
    v68 = v135;
    v69 = *(v135 + 16);
    v70 = sub_22C4309E4(&qword_27D9BAAA8, MEMORY[0x277D1D800], MEMORY[0x277D1D808]);
    v71 = MEMORY[0x2318B7DB0](v69, v59, v70);
    v162 = v71;
    v72 = *(v68 + 16);
    v134 = v67;
    if (v72)
    {
      v128 = v70;
      v73 = v68 + ((*(v150 + 80) + 32) & ~*(v150 + 80));
      v74 = v28;
      v75 = v159;
      v76 = v138;
      v77 = v157;
      do
      {
        v75(v76, v73, v59);
        sub_22C6A538C();
        v77(v74, v59);
        v73 += v158;
        --v72;
      }

      while (v72);
      v132 = v162;
      v28 = v74;
      v67 = v134;
      v70 = v128;
    }

    else
    {
      v132 = v71;
    }

    v162 = MEMORY[0x2318B7DB0](*(v67 + 16), v59, v70);
    v80 = *(v67 + 16);
    if (v80)
    {
      v81 = v67 + ((*(v150 + 80) + 32) & ~*(v150 + 80));
      v82 = v139;
      v83 = v158;
      do
      {
        v159(v82, v81, v59);
        sub_22C6A538C();
        v157(v28, v59);
        v81 += v83;
        --v80;
      }

      while (v80);
      sub_22C4242E4(v134, v133, 4);
    }

    else
    {
      sub_22C4242E4(v67, v133, 4);
    }

    sub_22C5DBE68();
    v85 = v84;

    v52 = v149;
    v49 = v146;
    if (v85)
    {
      break;
    }

LABEL_28:
    v48 &= v48 - 1;
    sub_22C36DD28(v156, &qword_27D9BC210, &unk_22C917470);
    v37 = v150;
    v45 = v145;
  }

  sub_22C4242E4(v135, v129, 4);

  v37 = v131;
  sub_22C407C2C();
  v86 = 0;
LABEL_32:
  v87 = v155;
  sub_22C36C640(v37, v86, 1, v155);
  v88 = v143;
  sub_22C3A7214();
  v89 = sub_22C370B74(v88, 1, v87);
  v90 = v130;
  if (v89 == 1)
  {
    sub_22C36DD28(v88, &qword_27D9BC218, &unk_22C912410);
    v91 = v144;
    sub_22C36C640(v144, 1, 1, v154);
    goto LABEL_35;
  }

  v92 = *(v87 + 48);
  v93 = v150 + 32;
  v94 = v144;
  v95 = v154;
  (*(v150 + 32))(v144, v88, v154);
  sub_22C36C640(v94, 0, 1, v95);
  v96 = v88;
  v97 = *(v93 - 24);
  v91 = v94;
  v97(v96 + v92, v95);
  v98 = sub_22C370B74(v94, 1, v95);
  v99 = v140;
  if (v98 == 1)
  {
LABEL_35:
    sub_22C36DD28(v91, &qword_27D9BB640, &unk_22C912190);
    goto LABEL_36;
  }

  v107 = v154;
  if (v147(v94, v154) == *MEMORY[0x277D1D7B8])
  {
    v99(v94, v107);
    swift_projectBox();
    v108 = v136;
    sub_22C3A7214();
    v109 = &v108[*(v137 + 48)];
    v111 = *v109;
    v110 = *(v109 + 1);
    v97(v108, v107);

    if (v111 == 0x64657463656C6573 && v110 == 0xE800000000000000)
    {

      goto LABEL_61;
    }

    v113 = sub_22C90B4FC();

    if (v113)
    {
LABEL_61:
      sub_22C36DD28(v37, &qword_27D9BC218, &unk_22C912410);
      return 1;
    }
  }

  else
  {
    v97(v94, v107);
  }

LABEL_36:
  v100 = v142;
  sub_22C3A7214();
  v101 = v155;
  if (sub_22C370B74(v100, 1, v155) == 1)
  {
    sub_22C36DD28(v37, &qword_27D9BC218, &unk_22C912410);
    sub_22C36DD28(v100, &qword_27D9BC218, &unk_22C912410);
    sub_22C36C640(v90, 1, 1, v154);
LABEL_40:
    sub_22C36DD28(v90, &qword_27D9BB640, &unk_22C912190);
    return 0;
  }

  v102 = *(v101 + 48);
  v103 = v150 + 32;
  v104 = v154;
  (*(v150 + 32))(v90, v100, v154);
  sub_22C36C640(v90, 0, 1, v104);
  v105 = *(v103 - 24);
  v105(v100 + v102, v104);
  if (sub_22C370B74(v90, 1, v104) == 1)
  {
    sub_22C36DD28(v37, &qword_27D9BC218, &unk_22C912410);
    goto LABEL_40;
  }

  v114 = v147;
  if (v147(v90, v104) != *MEMORY[0x277D1D7D0])
  {
    sub_22C36DD28(v37, &qword_27D9BC218, &unk_22C912410);
    v105(v90, v104);
    return 0;
  }

  v115 = v140;
  v140(v90, v104);
  v160 = *v90;
  swift_projectBox();
  v116 = v114;
  v117 = v127;
  sub_22C3A7214();
  v118 = *(v126 + 48);
  v119 = v116(&v117[v118], v104);
  if (v119 != v153)
  {
    sub_22C36DD28(v37, &qword_27D9BC218, &unk_22C912410);
    v105(&v117[v118], v104);
    v105(v117, v104);
    goto LABEL_30;
  }

  v115(&v117[v118], v104);
  v120 = *&v117[v118];
  v121 = v117;
  if (*(v120 + 32) != 3)
  {
    sub_22C36DD28(v37, &qword_27D9BC218, &unk_22C912410);

    v105(v117, v104);
    goto LABEL_30;
  }

  v123 = *(v120 + 16);
  v122 = *(v120 + 24);

  v105(v121, v104);

  v50 = 0x64657463656C6573;
  if (v123 == 0x64657463656C6573 && v122 == 0xE800000000000000)
  {
LABEL_67:
    sub_22C4242E4(v50, 0xE800000000000000, 3);
    goto LABEL_61;
  }

  v125 = sub_22C90B4FC();
  sub_22C4242E4(v123, v122, 3);
  sub_22C36DD28(v37, &qword_27D9BC218, &unk_22C912410);
  return (v125 & 1) != 0;
}

uint64_t sub_22C42B148@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t)@<X8>)
{
  v25 = a1;
  v24 = a2;
  v2 = sub_22C902D0C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22C3A5908(&qword_27D9BAA18, &qword_22C911C40);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v23 - v7;
  v9 = sub_22C3A5908(&qword_27D9BC030, &unk_22C911CC0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v23 - v10;
  v28 = sub_22C9087DC();
  sub_22C3A5908(&qword_27D9BA9F0, &qword_22C912420);
  sub_22C3D32C8(&qword_27D9BA9F8, &qword_27D9BA9F0, &qword_22C912420, MEMORY[0x277D1E9D8]);
  sub_22C907E3C();

  v12 = sub_22C9070DC();
  if (sub_22C370B74(v8, 1, v12) == 1)
  {
    sub_22C36DD28(v8, &qword_27D9BAA18, &qword_22C911C40);
    v13 = 1;
  }

  else
  {
    sub_22C9068FC();
    (*(*(v12 - 8) + 8))(v8, v12);
    v13 = 0;
  }

  v14 = sub_22C901FAC();
  v15 = sub_22C36C640(v11, v13, 1, v14);
  MEMORY[0x28223BE20](v15);
  *(&v23 - 2) = v11;
  v16 = v26;
  sub_22C439F24(v25, sub_22C430A2C, (&v23 - 4), v17, v18, v19, v20, v21, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34);
  if (!v16)
  {
    (*(v3 + 32))(v24, v5, v2);
  }

  return sub_22C36DD28(v11, &qword_27D9BC030, &unk_22C911CC0);
}

uint64_t sub_22C42B460()
{
  v0 = sub_22C372138();
  sub_22C3699B8(v0);
  sub_22C388594();
  sub_22C37055C();
  v1 = sub_22C388EBC();
  return sub_22C425BD4(v1, v9, v2, v3, v4, v5, v6, v7, v8);
}

uint64_t sub_22C42B4E8()
{
  v0 = sub_22C372138();
  sub_22C3699B8(v0);
  sub_22C388594();
  sub_22C37055C();
  v1 = sub_22C388EBC();
  return sub_22C426504(v1, v2, v3, v4, v5, v6, v7, v8);
}

uint64_t sub_22C42B564(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_22C42B5B0(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_22C42B5FC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v66 = a2;
  v5 = sub_22C3A5908(&qword_27D9BC230, &qword_22C912430);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v56 - v6;
  v65 = type metadata accessor for ParameterPromptMap(0);
  v57 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v63 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = sub_22C3A5908(&qword_27D9BAF30, &unk_22C90FAA0);
  v62 = *(v73 - 8);
  v9 = MEMORY[0x28223BE20](v73);
  v74 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v64 = &v56 - v12;
  MEMORY[0x28223BE20](v11);
  v14 = &v56 - v13;
  v15 = *(a1 + 16);
  if (v15)
  {
    v77 = MEMORY[0x277D84F90];
    sub_22C3B70B8(0, v15, 0);
    v16 = v77;
    result = sub_22C6339F8();
    v19 = result;
    v20 = a1 + 64;
    v21 = v15 - 1;
    v60 = a1;
    v61 = v7;
    v58 = a1 + 64;
    for (i = v14; (result & 0x8000000000000000) == 0; v21 = v67 - 1)
    {
      if (v19 >= 1 << *(a1 + 32))
      {
        break;
      }

      if ((*(v20 + 8 * (v19 >> 6)) & (1 << v19)) == 0)
      {
        goto LABEL_24;
      }

      if (v18 != *(a1 + 36))
      {
        goto LABEL_25;
      }

      v69 = 1 << v19;
      v70 = v19 >> 6;
      v67 = v21;
      v68 = v18;
      v71 = v3;
      v72 = v16;
      v22 = v73;
      v23 = *(v73 + 48);
      v24 = *(a1 + 48);
      v25 = sub_22C902C9C();
      v26 = *(v25 - 8);
      v27 = v64;
      (*(v26 + 16))(v64, v24 + *(v26 + 72) * v19, v25);
      v28 = *(a1 + 56);
      v29 = sub_22C902D0C();
      v30 = *(v29 - 8);
      (*(v30 + 16))(v27 + v23, v28 + *(v30 + 72) * v19, v29);
      v31 = v74;
      (*(v26 + 32))(v74, v27, v25);
      v32 = *(v22 + 48);
      (*(v30 + 32))(&v31[v32], v27 + v23, v29);
      v33 = sub_22C902C7C();
      if (*(v66 + 16))
      {
        sub_22C36E2BC(v33, v34);
        v3 = v71;
        v16 = v72;
        if (v35)
        {
          v36 = v61;
          sub_22C430B88();
          v37 = 0;
          goto LABEL_12;
        }

        v37 = 1;
      }

      else
      {
        v37 = 1;
        v3 = v71;
        v16 = v72;
      }

      v36 = v61;
LABEL_12:
      v38 = v65;
      sub_22C36C640(v36, v37, 1, v65);

      if (sub_22C370B74(v36, 1, v38) == 1)
      {
        sub_22C36DD28(v36, &qword_27D9BC230, &qword_22C912430);
        v75 = 0;
        v76 = 0xE000000000000000;
        sub_22C90AF5C();
        MEMORY[0x2318B7850](0x100000000000001CLL, 0x800000022C9305C0);
        v51 = v74;
        v52 = sub_22C902C7C();
        MEMORY[0x2318B7850](v52);

        MEMORY[0x2318B7850](0xD000000000000022, 0x800000022C9305E0);

        MEMORY[0x2318B7850](0xD000000000000035, 0x800000022C930610);

        v53 = v75;
        v54 = v76;
        sub_22C430A48();
        swift_allocError();
        *v55 = v53;
        *(v55 + 8) = v54;
        *(v55 + 16) = 1;
        swift_willThrow();
        sub_22C36DD28(v51, &qword_27D9BAF30, &unk_22C90FAA0);
      }

      v39 = v63;
      v40 = sub_22C430ABC();
      MEMORY[0x28223BE20](v40);
      *(&v56 - 2) = v39;
      v41 = v74;
      sub_22C439F24(&v74[v32], sub_22C430F6C, (&v56 - 4), v42, v43, v44, v45, v46, v56, v57, v58, i, v60, v61, v62, v63, v64, v65, v66, v67);
      sub_22C9097DC();
      sub_22C902C6C();

      sub_22C430B30(v39, type metadata accessor for ParameterPromptMap);
      sub_22C36DD28(v41, &qword_27D9BAF30, &unk_22C90FAA0);
      v77 = v16;
      v48 = *(v16 + 16);
      v47 = *(v16 + 24);
      if (v48 >= v47 >> 1)
      {
        sub_22C3B70B8((v47 > 1), v48 + 1, 1);
        v16 = v77;
      }

      *(v16 + 16) = v48 + 1;
      result = sub_22C407C2C();
      a1 = v60;
      if (v19 >= -(-1 << *(v60 + 32)))
      {
        goto LABEL_26;
      }

      v20 = v58;
      if ((*(v58 + 8 * v70) & v69) == 0)
      {
        goto LABEL_27;
      }

      if (v68 != *(v60 + 36))
      {
        goto LABEL_28;
      }

      result = sub_22C90AE7C();
      if (!v67)
      {
        goto LABEL_21;
      }

      v19 = result;
      v18 = *(a1 + 36);
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {
LABEL_21:
    sub_22C8D54F4();
    v50 = v49;

    return sub_22C42C174(v50, &qword_27D9BC1F8, &qword_22C9126D0, sub_22C42FC3C);
  }

  return result;
}

uint64_t sub_22C42BD98@<X0>(uint64_t (*a1)(void, void, void)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v45 = a3;
  v43 = a1;
  v4 = sub_22C902D0C();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v35[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v10 = &v35[-v9];
  v11 = sub_22C9063DC();
  v44 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v35[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_22C903F7C();
  v14 = *(v5 + 16);
  v14(v10, a2, v4);
  v41 = v8;
  v15 = v43;
  v43 = v14;
  v14(v8, v15, v4);
  v42 = v13;
  v16 = sub_22C9063CC();
  v17 = sub_22C90AADC();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v40 = a2;
    v19 = v18;
    v39 = swift_slowAlloc();
    v46 = v39;
    *v19 = 136643075;
    sub_22C4309E4(&qword_27D9BC188, MEMORY[0x277D1D800], MEMORY[0x277D1D818]);
    v37 = v16;
    v20 = sub_22C90B47C();
    v36 = v17;
    v22 = v21;
    v38 = v11;
    v23 = *(v5 + 8);
    v23(v10, v4);
    v24 = sub_22C36F9F4(v20, v22, &v46);

    *(v19 + 4) = v24;
    *(v19 + 12) = 2085;
    v25 = v41;
    v26 = sub_22C90B47C();
    v28 = v27;
    v23(v25, v4);
    v29 = sub_22C36F9F4(v26, v28, &v46);

    *(v19 + 14) = v29;
    v30 = v37;
    _os_log_impl(&dword_22C366000, v37, v36, "❗️ Folding parameters, but parameter key has already been seen.\nTaking new value: %{sensitive}s\nover old value: %{sensitive}s", v19, 0x16u);
    v31 = v39;
    swift_arrayDestroy();
    MEMORY[0x2318B9880](v31, -1, -1);
    v32 = v19;
    a2 = v40;
    MEMORY[0x2318B9880](v32, -1, -1);

    (*(v44 + 8))(v42, v38);
  }

  else
  {

    v33 = *(v5 + 8);
    v33(v41, v4);
    v33(v10, v4);
    (*(v44 + 8))(v42, v11);
  }

  return v43(v45, a2, v4);
}

uint64_t sub_22C42C174(uint64_t a1, uint64_t *a2, uint64_t *a3, void (*a4)(uint64_t, uint64_t, uint64_t *))
{
  if (*(a1 + 16))
  {
    sub_22C3A5908(a2, a3);
    v7 = sub_22C90B1EC();
  }

  else
  {
    v7 = MEMORY[0x277D84F98];
  }

  v10 = v7;
  a4(a1, 1, &v10);
  v8 = v10;
  if (v4)
  {
  }

  return v8;
}

uint64_t sub_22C42C214(uint64_t a1, uint64_t a2)
{
  v95 = a2;
  v4 = sub_22C902C5C();
  MEMORY[0x28223BE20](v4 - 8);
  v91 = &v74 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22C3A5908(&qword_27D9BC230, &qword_22C912430);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v74 - v7;
  v94 = type metadata accessor for ParameterPromptMap(0);
  v75 = *(v94 - 8);
  MEMORY[0x28223BE20](v94);
  v90 = &v74 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = sub_22C902D0C();
  v10 = *(v96 - 8);
  v11 = MEMORY[0x28223BE20](v96);
  v89 = &v74 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v74 - v14;
  MEMORY[0x28223BE20](v13);
  v108 = &v74 - v16;
  v109 = sub_22C902C9C();
  v17 = *(v109 - 8);
  MEMORY[0x28223BE20](v109);
  v88 = &v74 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = sub_22C3A5908(&qword_27D9BC238, &qword_22C912438);
  v19 = MEMORY[0x28223BE20](v93);
  v110 = &v74 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v92 = &v74 - v21;
  v87 = sub_22C3A5908(&qword_27D9BAF48, &qword_22C90D7F0);
  v86 = *(v87 - 8);
  MEMORY[0x28223BE20](v87);
  v23 = &v74 - v22;
  v24 = *(a1 + 16);
  v25 = MEMORY[0x277D84F90];
  if (!v24)
  {
    return sub_22C42C174(v25, &qword_27D9BC240, &unk_22C9126E0, sub_22C430298);
  }

  v85 = v8;
  v106 = v2;
  v113 = MEMORY[0x277D84F90];
  sub_22C3B70D8(0, v24, 0);
  v25 = v113;
  result = sub_22C6339F8();
  v28 = a1 + 64;
  v107 = v17 + 16;
  v83 = v17 + 32;
  v84 = (v10 + 8);
  v79 = (v10 + 16);
  v78 = (v17 + 8);
  v29 = v24 - 1;
  v76 = v15;
  v82 = a1;
  v81 = v17;
  v80 = v23;
  v77 = a1 + 64;
  if ((result & 0x8000000000000000) == 0)
  {
    while (result < 1 << *(a1 + 32))
    {
      if ((*(v28 + 8 * (result >> 6)) & (1 << result)) == 0)
      {
        goto LABEL_22;
      }

      if (v27 != *(a1 + 36))
      {
        goto LABEL_23;
      }

      v100 = 1 << result;
      v101 = result >> 6;
      v98 = v29;
      v99 = v27;
      v30 = v93;
      v104 = *(v93 + 48);
      v105 = v25;
      v31 = *(a1 + 48) + *(v17 + 72) * result;
      v32 = *(v17 + 16);
      v33 = v17;
      v34 = v92;
      v35 = v15;
      v36 = result;
      v37 = v109;
      v102 = v32;
      v32(v92, v31, v109);
      v38 = *(a1 + 56);
      v39 = sub_22C902C4C();
      v40 = *(v39 - 8);
      v41 = *(v40 + 72);
      v103 = v36;
      v42 = v38 + v41 * v36;
      v43 = v35;
      v44 = v104;
      (*(v40 + 16))(&v34[v104], v42, v39);
      v45 = v110;
      (*(v33 + 32))(v110, v34, v37);
      v46 = &v34[v44];
      v47 = v43;
      (*(v40 + 32))(&v45[*(v30 + 48)], v46, v39);
      sub_22C902C1C();
      v48 = sub_22C902C7C();
      if (*(v95 + 16) && (sub_22C36E2BC(v48, v49), (v50 & 1) != 0))
      {
        v51 = v85;
        sub_22C430B88();
        v52 = 0;
      }

      else
      {
        v52 = 1;
        v51 = v85;
      }

      v53 = v94;
      sub_22C36C640(v51, v52, 1, v94);

      if (sub_22C370B74(v51, 1, v53) == 1)
      {
        sub_22C36DD28(v51, &qword_27D9BC230, &qword_22C912430);
        v111 = 0;
        v112 = 0xE000000000000000;
        sub_22C90AF5C();
        MEMORY[0x2318B7850](0x100000000000001CLL, 0x800000022C9305C0);
        v69 = v110;
        v70 = sub_22C902C7C();
        MEMORY[0x2318B7850](v70);

        MEMORY[0x2318B7850](0xD000000000000022, 0x800000022C9305E0);

        MEMORY[0x2318B7850](0xD000000000000035, 0x800000022C930610);

        v71 = v111;
        v72 = v112;
        sub_22C430A48();
        swift_allocError();
        *v73 = v71;
        *(v73 + 8) = v72;
        *(v73 + 16) = 1;
        swift_willThrow();
        (*v84)(v47, v96);
        sub_22C36DD28(v69, &qword_27D9BC238, &qword_22C912438);
      }

      v104 = *(v87 + 48);
      v54 = v90;
      v55 = sub_22C430ABC();
      MEMORY[0x28223BE20](v55);
      *(&v74 - 2) = v54;
      v56 = v106;
      sub_22C439F24(v43, sub_22C430B14, (&v74 - 4), v57, v58, v59, v60, v61, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85);
      v106 = v56;
      sub_22C9097DC();
      v62 = v88;
      v63 = v110;
      sub_22C902C6C();

      v97 = *v84;
      v64 = v96;
      v97(v43, v96);
      v65 = v109;
      sub_22C430B30(v54, type metadata accessor for ParameterPromptMap);
      v102(v80, v62, v65);
      sub_22C902C3C();
      v66 = v108;
      (*v79)(v89, v108, v64);
      sub_22C902C2C();
      v97(v66, v64);
      (*v78)(v62, v65);
      sub_22C36DD28(v63, &qword_27D9BC238, &qword_22C912438);
      v25 = v105;
      v113 = v105;
      v68 = *(v105 + 16);
      v67 = *(v105 + 24);
      if (v68 >= v67 >> 1)
      {
        sub_22C3B70D8((v67 > 1), v68 + 1, 1);
        v25 = v113;
      }

      *(v25 + 16) = v68 + 1;
      sub_22C407C2C();
      a1 = v82;
      result = v103;
      v17 = v81;
      if (v103 >= -(-1 << *(v82 + 32)))
      {
        goto LABEL_24;
      }

      v28 = v77;
      if ((*(v77 + 8 * v101) & v100) == 0)
      {
        goto LABEL_25;
      }

      if (v99 != *(v82 + 36))
      {
        goto LABEL_26;
      }

      result = sub_22C90AE7C();
      if (!v98)
      {
        return sub_22C42C174(v25, &qword_27D9BC240, &unk_22C9126E0, sub_22C430298);
      }

      v27 = *(a1 + 36);
      v29 = v98 - 1;
      v15 = v76;
      if (result < 0)
      {
        break;
      }
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_22C42CCE8@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(a2 + *(type metadata accessor for ParameterPromptMap(0) + 20));
  if (*(v4 + 16) && (sub_22C6280AC(), (v6 & 1) != 0))
  {
    v7 = v5;
    v8 = *(v4 + 56);
    v9 = sub_22C902D0C();
    (*(*(v9 - 8) + 16))(a3, v8 + *(*(v9 - 8) + 72) * v7, v9);
    v10 = a3;
    v11 = 0;
    v12 = v9;
  }

  else
  {
    v12 = sub_22C902D0C();
    v10 = a3;
    v11 = 1;
  }

  return sub_22C36C640(v10, v11, 1, v12);
}

uint64_t sub_22C42CDC8()
{
  sub_22C902D0C();
  sub_22C36985C();
  v0 = sub_22C36BBCC();

  return v1(v0);
}

uint64_t sub_22C42CE28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, double a9@<D0>, void (*a10)(uint64_t, char *), char *a11)
{
  v101 = a7;
  v103 = a5;
  v104 = a6;
  v102 = a4;
  v100 = a3;
  v122 = a1;
  v114 = a8;
  v13 = sub_22C902D0C();
  v107 = *(v13 - 8);
  v108 = v13;
  v14 = MEMORY[0x28223BE20](v13);
  v99 = &v97 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v105 = &v97 - v16;
  v106 = sub_22C3A5908(&qword_27D9BAF30, &unk_22C90FAA0);
  v17 = MEMORY[0x28223BE20](v106);
  v113 = &v97 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v109 = &v97 - v20;
  MEMORY[0x28223BE20](v19);
  v112 = &v97 - v21;
  v22 = sub_22C9063DC();
  v110 = *(v22 - 8);
  v111 = v22;
  v23 = MEMORY[0x28223BE20](v22);
  v116 = &v97 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v115 = &v97 - v25;
  v120 = type metadata accessor for RenderableTool(0);
  MEMORY[0x28223BE20](v120);
  v27 = &v97 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_22C3A5908(&qword_27D9BC028, &unk_22C9134B0);
  MEMORY[0x28223BE20](v28 - 8);
  v30 = &v97 - v29;
  v31 = sub_22C90941C();
  v118 = *(v31 - 8);
  v119 = v31;
  v32 = MEMORY[0x28223BE20](v31);
  v98 = (&v97 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v32);
  v117 = &v97 - v34;
  sub_22C3A5908(&qword_27D9BB818, qword_22C910430);
  v35 = sub_22C9036EC();
  (*(*(v35 - 8) + 16))(v27, a2, v35);
  sub_22C9037DC();
  v123[0] = MEMORY[0x277D84F90];
  sub_22C4309E4(&qword_27D9BB820, MEMORY[0x277D1ED48], MEMORY[0x277D1ED78]);
  sub_22C3A5908(&qword_27D9BB828, &unk_22C912AE0);
  sub_22C3D32C8(&qword_27D9BB830, &qword_27D9BB828, &unk_22C912AE0, MEMORY[0x277D83970]);
  sub_22C90AE4C();
  swift_storeEnumTagMultiPayload();
  v36 = type metadata accessor for ResolvableTool(0);
  v37 = v121;
  sub_22C436900(v122, v27, *(a2 + *(v36 + 20)), v30);
  result = sub_22C430B30(v27, type metadata accessor for RenderableTool);
  if (!v37)
  {
    v39 = v112;
    v40 = v113;
    v41 = v115;
    v42 = v117;
    v43 = v118;
    v44 = v119;
    if (sub_22C370B74(v30, 1, v119) == 1)
    {
      sub_22C36DD28(v30, &qword_27D9BC028, &unk_22C9134B0);
      sub_22C903FFC();
      sub_22C3A7214();
      v45 = sub_22C9063CC();
      v46 = sub_22C90AACC();
      if (os_log_type_enabled(v45, v46))
      {
        v47 = swift_slowAlloc();
        v48 = swift_slowAlloc();
        v121 = 0;
        v49 = v48;
        v123[0] = v48;
        *v47 = 136315138;
        v50 = v109;
        sub_22C3A7214();
        v51 = *(v106 + 48);
        v120 = sub_22C902C7C();
        v52 = v39;
        v54 = v53;
        sub_22C36DD28(v52, &qword_27D9BAF30, &unk_22C90FAA0);
        v55 = sub_22C902C9C();
        (*(*(v55 - 8) + 8))(v50, v55);
        (*(v107 + 8))(&v50[v51], v108);
        v56 = sub_22C36F9F4(v120, v54, v123);

        *(v47 + 4) = v56;
        _os_log_impl(&dword_22C366000, v45, v46, "Could not find parameter definition for key %s", v47, 0xCu);
        sub_22C36FF94(v49);
        MEMORY[0x2318B9880](v49, -1, -1);
        MEMORY[0x2318B9880](v47, -1, -1);

        (*(v110 + 8))(v115, v111);
      }

      else
      {

        sub_22C36DD28(v39, &qword_27D9BAF30, &unk_22C90FAA0);
        (*(v110 + 8))(v41, v111);
      }
    }

    else
    {
      (*(v43 + 32))(v42, v30, v44);
      if (sub_22C3D9564())
      {
        v116 = a11;
        v120 = a10;
        v57 = v122;
        v58 = v109;
        sub_22C3A7214();
        v59 = v106;
        v60 = *(v106 + 48);
        v61 = v99;
        v62 = swift_getAtKeyPath();
        MEMORY[0x28223BE20](v62);
        v63 = v103;
        *(&v97 - 6) = v102;
        *(&v97 - 5) = v63;
        *(&v97 - 4) = v104;
        *(&v97 - 3) = a9;
        *(&v97 - 2) = v64;
        sub_22C439F24(v61, sub_22C430958, (&v97 - 8), v65, v66, v67, v68, v69, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108);
        v121 = 0;
        v70 = v108;
        v71 = *(v107 + 8);
        v71(v61, v108);
        v71(&v58[v60], v70);
        v72 = sub_22C902C9C();
        v73 = *(v72 - 8);
        (*(v73 + 8))(v58, v72);
        v113 = *(v59 + 48);
        v74 = v57;
        sub_22C3A7214();
        v115 = *(v59 + 48);
        (*(v73 + 32))(v114, v58, v72);
        v75 = v105;
        v120(v74 + *(v59 + 48), v105);
        v71(v75, v70);
        (*(v118 + 8))(v117, v119);
        return (v71)(&v58[v115], v70);
      }

      sub_22C903FFC();
      v76 = v40;
      sub_22C3A7214();
      v77 = v98;
      (*(v43 + 16))(v98, v42, v44);
      v78 = sub_22C9063CC();
      LODWORD(v120) = sub_22C90AACC();
      v79 = os_log_type_enabled(v78, v120);
      v80 = v109;
      if (v79)
      {
        v81 = swift_slowAlloc();
        v115 = swift_slowAlloc();
        v123[0] = v115;
        *v81 = 136315394;
        v121 = 0;
        sub_22C3A7214();
        v82 = *(v106 + 48);
        v112 = sub_22C902C7C();
        v83 = v77;
        v85 = v84;
        sub_22C36DD28(v76, &qword_27D9BAF30, &unk_22C90FAA0);
        v86 = sub_22C902C9C();
        (*(*(v86 - 8) + 8))(v80, v86);
        (*(v107 + 8))(&v80[v82], v108);
        v87 = sub_22C36F9F4(v112, v85, v123);

        *(v81 + 4) = v87;
        *(v81 + 12) = 2080;
        v89 = sub_22C7F5E00(v88);
        v91 = v90;
        v92 = v119;
        v93 = *(v118 + 8);
        v93(v83, v119);
        v94 = sub_22C36F9F4(v89, v91, v123);

        *(v81 + 14) = v94;
        _os_log_impl(&dword_22C366000, v78, v120, "Skipping non quotable parameter Key: %s, Type: %s", v81, 0x16u);
        v95 = v115;
        swift_arrayDestroy();
        MEMORY[0x2318B9880](v95, -1, -1);
        MEMORY[0x2318B9880](v81, -1, -1);

        (*(v110 + 8))(v116, v111);
        v93(v117, v92);
      }

      else
      {

        v96 = *(v43 + 8);
        v96(v77, v44);
        sub_22C36DD28(v40, &qword_27D9BAF30, &unk_22C90FAA0);
        (*(v110 + 8))(v116, v111);
        v96(v42, v44);
      }
    }

    return sub_22C3A7214();
  }

  return result;
}

uint64_t sub_22C42DA44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  v52 = a4;
  v7 = a3(0);
  sub_22C369824();
  v9 = v8;
  v11 = MEMORY[0x28223BE20](v10);
  v46 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v42 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v42 - v16;
  sub_22C9063DC();
  sub_22C369824();
  v50 = v19;
  v51 = v18;
  MEMORY[0x28223BE20](v18);
  sub_22C369BE8();
  sub_22C903F7C();
  v20 = *(v9 + 16);
  v48 = a2;
  v20(v17, a2, v7);
  v20(v15, a1, v7);
  v49 = v4;
  v21 = sub_22C9063CC();
  v22 = sub_22C90AADC();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v44 = v22;
    v24 = v23;
    v45 = swift_slowAlloc();
    v53 = v45;
    *v24 = 136643075;
    v43 = v21;
    v25 = v46;
    v26 = sub_22C36BBCC();
    (v20)(v26);
    sub_22C372FA4();
    v27 = sub_22C90A1AC();
    v47 = v20;
    v29 = v28;
    v42 = v15;
    v30 = *(v9 + 8);
    v31 = sub_22C37B220();
    v30(v31);
    v32 = sub_22C36F9F4(v27, v29, &v53);

    *(v24 + 4) = v32;
    *(v24 + 12) = 2085;
    v33 = v42;
    v47(v25, v42, v7);
    sub_22C372FA4();
    v34 = sub_22C90A1AC();
    v36 = v35;
    (v30)(v33, v7);
    v37 = sub_22C36F9F4(v34, v36, &v53);
    v20 = v47;

    *(v24 + 14) = v37;
    v38 = v43;
    _os_log_impl(&dword_22C366000, v43, v44, "❗️ Folding parameters, but parameter key has already been seen.\nTaking new value: %{sensitive}s\nover old value: %{sensitive}s", v24, 0x16u);
    swift_arrayDestroy();
    sub_22C369B50();
    MEMORY[0x2318B9880]();
    sub_22C369B50();
    MEMORY[0x2318B9880]();
  }

  else
  {

    v39 = *(v9 + 8);
    v39(v15, v7);
    v40 = sub_22C37B220();
    (v39)(v40);
  }

  (*(v50 + 8))(v49, v51);
  return (v20)(v52, v48, v7);
}

uint64_t sub_22C42DDDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>, double a7@<D0>)
{
  v8 = v7;
  v43 = a5;
  v15 = sub_22C902D0C();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v18, a1, v15);
  v19 = (*(v16 + 88))(v18, v15);
  if (v19 != *MEMORY[0x277D1D7E8])
  {
    (*(v16 + 8))(v18, v15);
LABEL_7:
    v31 = a6;
    v32 = 1;
    return sub_22C36C640(v31, v32, 1, v15);
  }

  v20 = v19;
  (*(v16 + 96))(v18, v15);
  v21 = *v18;
  if (*(*v18 + 32) != 3)
  {

    goto LABEL_7;
  }

  v42 = a6;
  v22 = *(v21 + 16);
  v23 = *(v21 + 24);

  v44 = a2;
  v45 = a3;
  v46 = a4;
  v47 = a7;
  v24 = v22;
  v25 = StringExprsAreQuotesRequirement.enforce(_:quotes:)(v22, v23, v43);
  if (v8)
  {

    sub_22C4242E4(v22, v23, 3);
    v29 = 0;
    v30 = 0xE000000000000000;
  }

  else
  {
    v33 = v25;
    v34 = v26;
    v35 = v28;
    v36 = v24;
    v37 = v27;
    sub_22C4242E4(v36, v23, 3);
    v29 = MEMORY[0x2318B76D0](v33, v34, v37, v35);
    v30 = v38;
  }

  v39 = swift_allocObject();
  *(v39 + 16) = v29;
  *(v39 + 24) = v30;
  *(v39 + 32) = 3;
  v40 = v42;
  *v42 = v39;
  (*(v16 + 104))(v40, v20, v15);
  v31 = v40;
  v32 = 0;
  return sub_22C36C640(v31, v32, 1, v15);
}

uint64_t sub_22C42E080(uint64_t a1, uint64_t a2)
{
  v38 = a2;
  v3 = sub_22C9099FC();
  v42 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22C90384C();
  v40 = *(v6 - 8);
  v41 = v6;
  MEMORY[0x28223BE20](v6);
  v39 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22C9036EC();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_22C908EAC();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v11, a1, v8);
  v16 = (*(v9 + 88))(v11, v8);
  if (v16 == *MEMORY[0x277D1ECE0])
  {
    goto LABEL_2;
  }

  if (v16 == *MEMORY[0x277D1ECE8])
  {
    (*(v9 + 96))(v11, v8);
    v18 = v42;
    (*(v42 + 32))(v5, v11, v3);
    v19 = v45;
    v20 = sub_22C9099CC();
    if (!v19)
    {
      a1 = v20;
    }

    (*(v18 + 8))(v5, v3);
    return a1;
  }

  if (v16 == *MEMORY[0x277D1ECD8] || v16 == *MEMORY[0x277D1ECD0])
  {
LABEL_2:
    (*(v9 + 96))(v11, v8);
    (*(v13 + 32))(v15, v11, v12);
    a1 = sub_22C908E7C();
    (*(v13 + 8))(v15, v12);
    return a1;
  }

  if (v16 == *MEMORY[0x277D1ECF8])
  {
    (*(v9 + 96))(v11, v8);
    v22 = v39;
    v23 = v40;
    v24 = v11;
    v25 = v41;
    (*(v40 + 32))(v39, v24, v41);
    v26 = sub_22C374168((v37 + 304), *(v37 + 328));
    v27 = sub_22C90381C();
    v28 = MEMORY[0x28223BE20](v27);
    *(&v37 - 4) = v28;
    *(&v37 - 3) = v29;
    v30 = v38;
    *(&v37 - 2) = v38;
    *(&v37 - 1) = v26;
    sub_22C4FB170(v28, v29, sub_22C430BE0, (&v37 - 6), v30);

    v31 = sub_22C90A2CC();
    v33 = v32;

    v43 = v31;
    v44 = v33;
    MEMORY[0x2318B7850](95, 0xE100000000000000);
    sub_22C90382C();
    v34 = sub_22C90A2CC();
    v36 = v35;

    MEMORY[0x2318B7850](v34, v36);

    a1 = v43;
    (*(v23 + 8))(v22, v25);
    return a1;
  }

  result = sub_22C90B4EC();
  __break(1u);
  return result;
}

uint64_t sub_22C42E5A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v103 = a3;
  v96 = a2;
  v104 = a1;
  v3 = sub_22C3A5908(&qword_27D9BC030, &unk_22C911CC0);
  MEMORY[0x28223BE20](v3 - 8);
  v97 = &v82 - v4;
  v98 = sub_22C901FAC();
  v95 = *(v98 - 8);
  MEMORY[0x28223BE20](v98);
  v94 = &v82 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22C90759C();
  v7 = *(v6 - 8);
  v100 = v6;
  v101 = v7;
  v8 = MEMORY[0x28223BE20](v6);
  v93 = &v82 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v99 = &v82 - v10;
  v11 = sub_22C3A5908(&qword_27D9BC198, &unk_22C916710);
  MEMORY[0x28223BE20](v11);
  v13 = &v82 - v12;
  v14 = sub_22C902D0C();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v82 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_22C902D1C();
  v19 = *(v18 - 8);
  v20 = MEMORY[0x28223BE20](v18);
  v22 = (&v82 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = MEMORY[0x28223BE20](v20);
  v102 = &v82 - v24;
  MEMORY[0x28223BE20](v23);
  v26 = &v82 - v25;
  (*(v15 + 16))(v17, v104, v14);
  v27 = (*(v15 + 88))(v17, v14);
  if (v27 != *MEMORY[0x277D1D7C0])
  {
    (*(v15 + 8))(v17, v14);
    return sub_22C36C640(v103, 1, 1, v14);
  }

  v92 = v27;
  v104 = v15;
  (*(v15 + 96))(v17, v14);
  swift_projectBox();
  sub_22C3A7214();
  v91 = v11;
  (*(v19 + 32))(v26, v13, v18);
  v28 = sub_22C902C9C();
  v89 = sub_22C4309E4(&qword_27D9BC1A8, MEMORY[0x277D1D780], MEMORY[0x277D1D788]);
  v90 = v28;
  sub_22C909F0C();
  sub_22C74B2EC();
  v30 = v29;

  if ((v30 & 1) == 0)
  {
    (*(v19 + 8))(v26, v18);

    return sub_22C36C640(v103, 1, 1, v14);
  }

  v31 = v102;
  v88 = *(v19 + 16);
  v88(v102, v26, v18);
  v32 = v18;
  v33 = v19;
  if ((*(v19 + 88))(v31, v18) != *MEMORY[0x277D1D820])
  {
LABEL_24:
    v81 = *(v33 + 8);
    v81(v26, v32);
    sub_22C36C640(v103, 1, 1, v14);
    return (v81)(v31, v32);
  }

  v84 = v19 + 16;
  v85 = v26;
  v88(v22, v31, v18);
  v86 = v18;
  v87 = v19;
  (*(v19 + 96))(v22, v18);
  v35 = *v22;
  v34 = v22[1];
  v36 = *MEMORY[0x277D1E0A0];
  v37 = v100;
  v38 = v101;
  v39 = v99;
  v83 = *(v101 + 104);
  v83(v99, v36, v100);
  v40 = sub_22C90758C();
  v42 = v41;
  v43 = v37;
  v44 = v35;
  v45 = *(v38 + 8);
  v101 = v38 + 8;
  v45(v39, v43);
  if (v40 == v44 && v42 == v34)
  {
    v33 = v87;
LABEL_14:

    goto LABEL_15;
  }

  v47 = sub_22C90B4FC();

  if (v47)
  {
    v33 = v87;
LABEL_15:

    v26 = v85;
    v32 = v86;
    v31 = v102;
    goto LABEL_16;
  }

  v73 = v93;
  v74 = v44;
  v75 = v100;
  v83(v93, *MEMORY[0x277D1E090], v100);
  v76 = sub_22C90758C();
  v78 = v77;
  v45(v73, v75);
  if (v76 == v74 && v78 == v34)
  {
    v33 = v87;
    goto LABEL_14;
  }

  v80 = sub_22C90B4FC();

  v32 = v86;
  v33 = v87;
  v26 = v85;
  v31 = v102;
  if ((v80 & 1) == 0)
  {
    goto LABEL_24;
  }

LABEL_16:
  v51 = *(v33 + 8);
  v50 = v33 + 8;
  v49 = v51;
  (v51)(v31, v32);
  v52 = v97;
  sub_22C3A7214();
  v53 = v98;
  if (sub_22C370B74(v52, 1, v98) == 1)
  {
    sub_22C36DD28(v52, &qword_27D9BC030, &unk_22C911CC0);
    sub_22C430A48();
    swift_allocError();
    *v54 = xmmword_22C912340;
    *(v54 + 16) = 4;
    swift_willThrow();
    return (v49)(v26, v32);
  }

  else
  {
    v102 = v49;
    v55 = v95;
    v56 = v94;
    (*(v95 + 32))();
    v97 = v14;
    v57 = v91;
    v101 = swift_allocBox();
    v58 = *(v57 + 48);
    v99 = v59;
    v100 = v58;
    v88(v59, v26, v32);
    sub_22C3A5908(&qword_27D9BAF20, &qword_22C90D7C8);
    v60 = sub_22C3A5908(&qword_27D9BAF28, &unk_22C90D7D0);
    v87 = v50;
    v61 = v60 - 8;
    v62 = (*(*(v60 - 8) + 80) + 32) & ~*(*(v60 - 8) + 80);
    v63 = swift_allocObject();
    *(v63 + 16) = xmmword_22C90F800;
    v64 = (v63 + v62);
    v65 = *(v61 + 56);
    *v64 = 0;
    (*(*(v90 - 8) + 104))(v64, *MEMORY[0x277D1D778], v90);
    v66 = swift_allocBox();
    (*(v55 + 16))(v67, v56, v53);
    *(v64 + v65) = v66;
    v68 = *(v104 + 104);
    v69 = v64 + v65;
    v70 = v97;
    v68(v69, *MEMORY[0x277D1D798], v97);
    v71 = sub_22C909F0C();
    (*(v55 + 8))(v56, v53);
    (v102)(v85, v86);
    *&v99[v100] = v71;
    v72 = v103;
    *v103 = v101;
    v68(v72, v92, v70);
    return sub_22C36C640(v72, 0, 1, v70);
  }
}

BOOL sub_22C42EFE4(uint64_t a1)
{
  v1 = sub_22C3A5908(&qword_27D9BA808, &qword_22C90C6E0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7 - v2;
  sub_22C57F990(&v7 - v2);
  v4 = sub_22C908A0C();
  v5 = sub_22C370B74(v3, 1, v4) != 1;
  sub_22C36DD28(v3, &qword_27D9BA808, &qword_22C90C6E0);
  return v5;
}

uint64_t sub_22C42F114(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *a4;
  result = sub_22C42F188(a1, a2, a3, isUniquelyReferenced_nonNull_native, &v10);
  *a4 = v10;
  return result;
}

uint64_t sub_22C42F188(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v56 = a5;
  v8 = sub_22C902D0C();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v44 = v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v47 = v43 - v13;
  MEMORY[0x28223BE20](v12);
  v15 = v43 - v14;
  v16 = sub_22C3A5908(&qword_27D9BC248, &unk_22C912440);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = v43 - v17;
  sub_22C8920A0();
  v48 = v52;
  v49 = v53;
  v50 = v54;
  v51 = v55;
  v45 = v9;
  v46 = (v9 + 32);
  v43[4] = v9 + 8;
  v43[5] = v9 + 16;
  v43[3] = v9 + 40;
  v43[1] = a1;

  v43[0] = a3;

  while (1)
  {
    sub_22C890534();
    v19 = sub_22C3A5908(&qword_27D9BC190, &unk_22C9121A0);
    if (sub_22C370B74(v18, 1, v19) == 1)
    {
      sub_22C36A674(v48);
    }

    v20 = *(v19 + 48);
    v21 = *v46;
    (*v46)(v15, v18, v8);
    v21(v47, &v18[v20], v8);
    v22 = *v56;
    sub_22C6280AC();
    v25 = v24;
    v26 = v22[2];
    v27 = (v23 & 1) == 0;
    if (__OFADD__(v26, v27))
    {
      break;
    }

    v28 = v23;
    if (v22[3] >= v26 + v27)
    {
      if ((a4 & 1) == 0)
      {
        sub_22C3A5908(&qword_27D9BC250, qword_22C912450);
        sub_22C90B16C();
      }
    }

    else
    {
      sub_22C88CA14();
      sub_22C6280AC();
      if ((v28 & 1) != (v30 & 1))
      {
        goto LABEL_16;
      }

      v25 = v29;
    }

    v31 = *v56;
    if (v28)
    {
      v33 = v44;
      v32 = v45;
      v34 = v15;
      v35 = v47;
      (*(v45 + 16))(v44, v47, v8);
      v36 = *(v32 + 8);
      v37 = v35;
      v15 = v34;
      v36(v37, v8);
      v36(v34, v8);
      (*(v32 + 40))(v31[7] + *(v32 + 72) * v25, v33, v8);
      a4 = 1;
    }

    else
    {
      v31[(v25 >> 6) + 8] |= 1 << v25;
      v38 = *(v45 + 72) * v25;
      v21((v31[6] + v38), v15, v8);
      v21((v31[7] + v38), v47, v8);
      v39 = v31[2];
      v40 = __OFADD__(v39, 1);
      v41 = v39 + 1;
      if (v40)
      {
        goto LABEL_15;
      }

      v31[2] = v41;
      a4 = 1;
    }
  }

  __break(1u);
LABEL_15:
  __break(1u);
LABEL_16:
  result = sub_22C90B54C();
  __break(1u);
  return result;
}

void sub_22C42F5CC(uint64_t a1, char a2, void *a3)
{
  v71 = a3;
  v6 = sub_22C902D0C();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v51 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v51 - v14;
  v69 = sub_22C902C9C();
  v16 = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  v70 = &v51 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_22C3A5908(&qword_27D9BAF28, &unk_22C90D7D0);
  v19 = MEMORY[0x28223BE20](v18);
  v65 = &v51 - v21;
  v64 = *(a1 + 16);
  if (!v64)
  {
LABEL_16:

    return;
  }

  v22 = v16;
  v23 = 0;
  v63 = a1 + ((*(v20 + 80) + 32) & ~*(v20 + 80));
  v24 = *(v19 + 48);
  v61 = v7;
  v62 = v24;
  v68 = (v22 + 32);
  v66 = v3;
  v67 = (v7 + 32);
  v54 = v7 + 16;
  v55 = (v7 + 8);
  v56 = (v22 + 8);
  v57 = v22;
  v52 = (v7 + 40);
  v59 = v20;
  v60 = a1;
  v58 = v13;
  v53 = v10;
  while (1)
  {
    if (v23 >= *(a1 + 16))
    {
      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      sub_22C90B54C();
      __break(1u);
      goto LABEL_24;
    }

    v25 = v65;
    sub_22C3A7214();
    v26 = *v68;
    (*v68)(v70, v25, v69);
    v27 = *v67;
    v28 = &v25[v62];
    v29 = v6;
    (*v67)(v15, v28, v6);
    v30 = *v71;
    sub_22C6287BC();
    v33 = v32;
    v34 = v30[2];
    v35 = (v31 & 1) == 0;
    if (__OFADD__(v34, v35))
    {
      goto LABEL_21;
    }

    v36 = v31;
    if (v30[3] >= v34 + v35)
    {
      if ((a2 & 1) == 0)
      {
        sub_22C3A5908(&qword_27D9BC1A0, &unk_22C9121B0);
        sub_22C90B16C();
      }
    }

    else
    {
      sub_22C88E450();
      sub_22C6287BC();
      if ((v36 & 1) != (v38 & 1))
      {
        goto LABEL_23;
      }

      v33 = v37;
    }

    v39 = *v71;
    if (v36)
    {
      break;
    }

    v39[(v33 >> 6) + 8] |= 1 << v33;
    v26((v39[6] + *(v57 + 72) * v33), v70, v69);
    v45 = v39[7] + *(v61 + 72) * v33;
    v6 = v29;
    v27(v45, v15, v29);
    v46 = v39[2];
    v47 = __OFADD__(v46, 1);
    v48 = v46 + 1;
    if (v47)
    {
      goto LABEL_22;
    }

    v39[2] = v48;
LABEL_15:
    a1 = v60;
    ++v23;
    a2 = 1;
    if (v64 == v23)
    {
      goto LABEL_16;
    }
  }

  v40 = *(v61 + 72) * v33;
  v41 = v53;
  (*(v61 + 16))(v53, v39[7] + v40, v29);
  v42 = v58;
  v43 = v66;
  sub_22C42DA44(v41, v15, MEMORY[0x277D1D800], v58);
  v66 = v43;
  if (!v43)
  {
    v44 = *v55;
    (*v55)(v41, v29);
    v44(v15, v29);
    v6 = v29;
    (*v56)(v70, v69);
    (*v52)(v39[7] + v40, v42, v29);
    goto LABEL_15;
  }

  v49 = *v55;
  (*v55)(v41, v29);
  v74 = v66;
  v50 = v66;
  sub_22C3A5908(&qword_27D9BB188, &qword_22C90FE40);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v49(v15, v29);
    (*v56)(v70, v69);

    return;
  }

LABEL_24:
  v72 = 0;
  v73 = 0xE000000000000000;
  sub_22C90AF5C();
  MEMORY[0x2318B7850](0xD00000000000001BLL, 0x800000022C9305A0);
  sub_22C90B12C();
  MEMORY[0x2318B7850](39, 0xE100000000000000);
  sub_22C90B1AC();
  __break(1u);
}

void sub_22C42FC3C(uint64_t a1, char a2, void *a3)
{
  v71 = a3;
  v6 = sub_22C902D0C();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v51 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v51 - v14;
  v69 = sub_22C902C9C();
  v16 = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  v70 = &v51 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_22C3A5908(&qword_27D9BAF28, &unk_22C90D7D0);
  v19 = MEMORY[0x28223BE20](v18);
  v65 = &v51 - v21;
  v64 = *(a1 + 16);
  if (!v64)
  {
LABEL_16:

    return;
  }

  v22 = v16;
  v23 = 0;
  v63 = a1 + ((*(v20 + 80) + 32) & ~*(v20 + 80));
  v24 = *(v19 + 48);
  v61 = v7;
  v62 = v24;
  v68 = (v22 + 32);
  v66 = v3;
  v67 = (v7 + 32);
  v54 = v7 + 16;
  v55 = (v7 + 8);
  v56 = (v22 + 8);
  v57 = v22;
  v52 = (v7 + 40);
  v59 = v20;
  v60 = a1;
  v58 = v13;
  v53 = v10;
  while (1)
  {
    if (v23 >= *(a1 + 16))
    {
      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      sub_22C90B54C();
      __break(1u);
      goto LABEL_24;
    }

    v25 = v65;
    sub_22C3A7214();
    v26 = *v68;
    (*v68)(v70, v25, v69);
    v27 = *v67;
    v28 = &v25[v62];
    v29 = v6;
    (*v67)(v15, v28, v6);
    v30 = *v71;
    sub_22C6287BC();
    v33 = v32;
    v34 = v30[2];
    v35 = (v31 & 1) == 0;
    if (__OFADD__(v34, v35))
    {
      goto LABEL_21;
    }

    v36 = v31;
    if (v30[3] >= v34 + v35)
    {
      if ((a2 & 1) == 0)
      {
        sub_22C3A5908(&qword_27D9BC1A0, &unk_22C9121B0);
        sub_22C90B16C();
      }
    }

    else
    {
      sub_22C88E450();
      sub_22C6287BC();
      if ((v36 & 1) != (v38 & 1))
      {
        goto LABEL_23;
      }

      v33 = v37;
    }

    v39 = *v71;
    if (v36)
    {
      break;
    }

    v39[(v33 >> 6) + 8] |= 1 << v33;
    v26((v39[6] + *(v57 + 72) * v33), v70, v69);
    v45 = v39[7] + *(v61 + 72) * v33;
    v6 = v29;
    v27(v45, v15, v29);
    v46 = v39[2];
    v47 = __OFADD__(v46, 1);
    v48 = v46 + 1;
    if (v47)
    {
      goto LABEL_22;
    }

    v39[2] = v48;
LABEL_15:
    a1 = v60;
    ++v23;
    a2 = 1;
    if (v64 == v23)
    {
      goto LABEL_16;
    }
  }

  v40 = *(v61 + 72) * v33;
  v41 = v53;
  (*(v61 + 16))(v53, v39[7] + v40, v29);
  v42 = v58;
  v43 = v66;
  sub_22C42BD98(v41, v15, v58);
  v66 = v43;
  if (!v43)
  {
    v44 = *v55;
    (*v55)(v41, v29);
    v44(v15, v29);
    v6 = v29;
    (*v56)(v70, v69);
    (*v52)(v39[7] + v40, v42, v29);
    goto LABEL_15;
  }

  v49 = *v55;
  (*v55)(v41, v29);
  v74 = v66;
  v50 = v66;
  sub_22C3A5908(&qword_27D9BB188, &qword_22C90FE40);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v49(v15, v29);
    (*v56)(v70, v69);

    return;
  }

LABEL_24:
  v72 = 0;
  v73 = 0xE000000000000000;
  sub_22C90AF5C();
  MEMORY[0x2318B7850](0xD00000000000001BLL, 0x800000022C9305A0);
  sub_22C90B12C();
  MEMORY[0x2318B7850](39, 0xE100000000000000);
  sub_22C90B1AC();
  __break(1u);
}

void sub_22C430298(uint64_t a1, char a2, void *a3)
{
  v71 = a3;
  v6 = sub_22C902C4C();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v51 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v51 - v14;
  v69 = sub_22C902C9C();
  v16 = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  v70 = &v51 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_22C3A5908(&qword_27D9BAF48, &qword_22C90D7F0);
  v19 = MEMORY[0x28223BE20](v18);
  v65 = &v51 - v21;
  v64 = *(a1 + 16);
  if (!v64)
  {
LABEL_16:

    return;
  }

  v22 = v16;
  v23 = 0;
  v63 = a1 + ((*(v20 + 80) + 32) & ~*(v20 + 80));
  v24 = *(v19 + 48);
  v61 = v7;
  v62 = v24;
  v68 = (v22 + 32);
  v66 = v3;
  v67 = (v7 + 32);
  v54 = v7 + 16;
  v55 = (v7 + 8);
  v56 = (v22 + 8);
  v57 = v22;
  v52 = (v7 + 40);
  v59 = v20;
  v60 = a1;
  v58 = v13;
  v53 = v10;
  while (1)
  {
    if (v23 >= *(a1 + 16))
    {
      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      sub_22C90B54C();
      __break(1u);
      goto LABEL_24;
    }

    v25 = v65;
    sub_22C3A7214();
    v26 = *v68;
    (*v68)(v70, v25, v69);
    v27 = *v67;
    v28 = &v25[v62];
    v29 = v6;
    (*v67)(v15, v28, v6);
    v30 = *v71;
    sub_22C6287BC();
    v33 = v32;
    v34 = v30[2];
    v35 = (v31 & 1) == 0;
    if (__OFADD__(v34, v35))
    {
      goto LABEL_21;
    }

    v36 = v31;
    if (v30[3] >= v34 + v35)
    {
      if ((a2 & 1) == 0)
      {
        sub_22C3A5908(&qword_27D9BC228, &qword_22C922850);
        sub_22C90B16C();
      }
    }

    else
    {
      sub_22C88E6C4();
      sub_22C6287BC();
      if ((v36 & 1) != (v38 & 1))
      {
        goto LABEL_23;
      }

      v33 = v37;
    }

    v39 = *v71;
    if (v36)
    {
      break;
    }

    v39[(v33 >> 6) + 8] |= 1 << v33;
    v26((v39[6] + *(v57 + 72) * v33), v70, v69);
    v45 = v39[7] + *(v61 + 72) * v33;
    v6 = v29;
    v27(v45, v15, v29);
    v46 = v39[2];
    v47 = __OFADD__(v46, 1);
    v48 = v46 + 1;
    if (v47)
    {
      goto LABEL_22;
    }

    v39[2] = v48;
LABEL_15:
    a1 = v60;
    ++v23;
    a2 = 1;
    if (v64 == v23)
    {
      goto LABEL_16;
    }
  }

  v40 = *(v61 + 72) * v33;
  v41 = v53;
  (*(v61 + 16))(v53, v39[7] + v40, v29);
  v42 = v58;
  v43 = v66;
  sub_22C42DA44(v41, v15, MEMORY[0x277D1D758], v58);
  v66 = v43;
  if (!v43)
  {
    v44 = *v55;
    (*v55)(v41, v29);
    v44(v15, v29);
    v6 = v29;
    (*v56)(v70, v69);
    (*v52)(v39[7] + v40, v42, v29);
    goto LABEL_15;
  }

  v49 = *v55;
  (*v55)(v41, v29);
  v74 = v66;
  v50 = v66;
  sub_22C3A5908(&qword_27D9BB188, &qword_22C90FE40);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v49(v15, v29);
    (*v56)(v70, v69);

    return;
  }

LABEL_24:
  v72 = 0;
  v73 = 0xE000000000000000;
  sub_22C90AF5C();
  MEMORY[0x2318B7850](0xD00000000000001BLL, 0x800000022C9305A0);
  sub_22C90B12C();
  MEMORY[0x2318B7850](39, 0xE100000000000000);
  sub_22C90B1AC();
  __break(1u);
}

uint64_t sub_22C430908@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, double a9@<D0>, void (*a10)(uint64_t, char *), char *a11, void *a12)
{
  result = sub_22C42CE28(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11);
  if (v12)
  {
    *a12 = v12;
  }

  return result;
}

uint64_t sub_22C4309E4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_22C430A48()
{
  result = qword_27D9BC220;
  if (!qword_27D9BC220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BC220);
  }

  return result;
}

uint64_t sub_22C430ABC()
{
  sub_22C36986C();
  v1(0);
  sub_22C36985C();
  v2 = sub_22C36BA00();
  v3(v2);
  return v0;
}

uint64_t sub_22C430B30(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_22C36985C();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_22C430B88()
{
  sub_22C36986C();
  v1(0);
  sub_22C36985C();
  v2 = sub_22C36BA00();
  v3(v2);
  return v0;
}

uint64_t sub_22C430BEC(uint64_t a1)
{
  if ((*(a1 + 16) & 4) != 0)
  {
    return (*a1 + 4);
  }

  else
  {
    return *(a1 + 16) & 7;
  }
}

uint64_t sub_22C430C08(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFC && *(a1 + 17))
    {
      v2 = *a1 + 251;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 4)
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

uint64_t sub_22C430C48(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 16) = 0;
    *result = a2 - 252;
    *(result + 8) = 0;
    if (a3 >= 0xFC)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
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

uint64_t sub_22C430C8C(uint64_t result, unsigned int a2)
{
  if (a2 >= 4)
  {
    *result = a2 - 4;
    *(result + 8) = 0;
    LOBYTE(a2) = 4;
  }

  *(result + 16) = a2;
  return result;
}

void sub_22C430CDC(uint64_t a1)
{
  sub_22C430E9C(319, &qword_27D9BC268, &type metadata for StringExprsAreQuotesRequirement);
  if (v1 <= 0x3F)
  {
    sub_22C430DD8();
    if (v2 <= 0x3F)
    {
      sub_22C430E34(319);
      if (v3 <= 0x3F)
      {
        sub_22C430E9C(319, &qword_28142FA20, MEMORY[0x277D837D0]);
        if (v4 <= 0x3F)
        {
          type metadata accessor for FullPlannerPreferences(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

unint64_t sub_22C430DD8()
{
  result = qword_281434518;
  if (!qword_281434518)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_281434518);
  }

  return result;
}

void sub_22C430E34(uint64_t a1)
{
  if (!qword_27D9BC270)
  {
    sub_22C9071BC();
    v1 = sub_22C90A7EC();
    if (!v2)
    {
      atomic_store(v1, &qword_27D9BC270);
    }
  }
}

void sub_22C430E9C(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_22C90AC6C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_22C430EE8()
{
  result = qword_27D9BC278;
  if (!qword_27D9BC278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BC278);
  }

  return result;
}

uint64_t sub_22C430F3C(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 3u)
  {
  }

  return result;
}

__n128 sub_22C430F8C@<Q0>(uint64_t a1@<X8>)
{
  v3 = v1[1];
  result = v1[2];
  v4 = *v1;
  *(a1 + 48) = *(v1 + 6);
  *(a1 + 16) = v3;
  *(a1 + 32) = result;
  *a1 = v4;
  return result;
}

uint64_t sub_22C430FA8()
{
  sub_22C36FF94((v0 + v1));
  sub_22C36FF94((v0 + v1 + 40));
  sub_22C36FF94((v0 + v1 + 80));
  sub_22C36FF94((v0 + v1 + 120));

  return swift_unknownObjectRelease();
}

uint64_t sub_22C430FF4()
{
  v3 = *(v1 - 96);

  return sub_22C42B5B0(v0, v3);
}

void sub_22C431014(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23)
{
  sub_22C370030();
  v259 = v24;
  v260 = v23;
  v262 = v26;
  v263 = v25;
  v245 = v27;
  v257 = v29;
  v258 = v28;
  v31 = v30;
  v33 = v32;
  v252 = v34;
  v264 = a23;
  v261 = a22;
  v265 = a21;
  v35 = type metadata accessor for FullPlannerPreferences(0);
  v36 = sub_22C369914(v35);
  MEMORY[0x28223BE20](v36);
  sub_22C369838();
  v225 = v38 - v37;
  sub_22C36BA0C();
  sub_22C9014CC();
  sub_22C369824();
  v230 = v40;
  v231 = v39;
  MEMORY[0x28223BE20](v39);
  sub_22C369838();
  v229 = (v42 - v41);
  v43 = sub_22C3A5908(&qword_27D9BC288, &qword_22C912620);
  sub_22C369914(v43);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v44);
  v236 = v223 - v45;
  sub_22C36BA0C();
  v233 = sub_22C907F9C();
  sub_22C369824();
  v228 = v46;
  MEMORY[0x28223BE20](v47);
  sub_22C3698E4();
  v226 = v48;
  sub_22C369930();
  MEMORY[0x28223BE20](v49);
  sub_22C36BA64();
  v227 = v50;
  v51 = sub_22C3A5908(&qword_27D9BC290, &qword_22C912628);
  sub_22C369914(v51);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v52);
  v240 = v223 - v53;
  v54 = sub_22C3A5908(&qword_27D9BC200, &unk_22C9123F0);
  sub_22C369914(v54);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v55);
  v244 = v223 - v56;
  v57 = sub_22C36BA0C();
  v248 = type metadata accessor for RenderableTool(v57);
  sub_22C36985C();
  MEMORY[0x28223BE20](v58);
  sub_22C369838();
  v61 = v60 - v59;
  v242 = sub_22C9036EC();
  sub_22C369824();
  v249 = v62;
  MEMORY[0x28223BE20](v63);
  sub_22C3698E4();
  v239 = v64;
  sub_22C369930();
  MEMORY[0x28223BE20](v65);
  sub_22C36BA64();
  v241 = v66;
  sub_22C36BA0C();
  sub_22C9063DC();
  sub_22C369824();
  v250 = v68;
  v251 = v67;
  MEMORY[0x28223BE20](v67);
  sub_22C3698E4();
  v237 = v69;
  sub_22C369930();
  MEMORY[0x28223BE20](v70);
  v224 = v223 - v71;
  sub_22C369930();
  MEMORY[0x28223BE20](v72);
  v74 = v223 - v73;
  v75 = sub_22C3A5908(&qword_27D9BB640, &unk_22C912190);
  v76 = sub_22C369914(v75);
  MEMORY[0x28223BE20](v76);
  sub_22C3698E4();
  v235 = v77;
  sub_22C369930();
  MEMORY[0x28223BE20](v78);
  sub_22C36BA64();
  v247 = v79;
  sub_22C36BA0C();
  sub_22C902D0C();
  sub_22C369824();
  v253 = v81;
  v254 = v80;
  MEMORY[0x28223BE20](v80);
  sub_22C3698E4();
  v234 = v82;
  sub_22C369930();
  MEMORY[0x28223BE20](v83);
  sub_22C36BA64();
  v246 = v84;
  v85 = sub_22C3A5908(&qword_27D9BC298, &unk_22C912630);
  sub_22C369914(v85);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v86);
  v88 = v223 - v87;
  v89 = type metadata accessor for ToolPromptMap(0);
  sub_22C36985C();
  MEMORY[0x28223BE20](v90);
  sub_22C3698E4();
  v243 = v91;
  sub_22C369930();
  MEMORY[0x28223BE20](v92);
  v94 = v223 - v93;
  v255 = type metadata accessor for ResolvableTool(0);
  sub_22C36985C();
  MEMORY[0x28223BE20](v95);
  sub_22C3698E4();
  v223[1] = v96;
  sub_22C369930();
  MEMORY[0x28223BE20](v97);
  v232 = v223 - v98;
  sub_22C369930();
  MEMORY[0x28223BE20](v99);
  sub_22C36BA64();
  v238 = v100;
  v101 = v33;
  v102 = v33;
  v276 = v31;
  v103 = v257;
  sub_22C56F15C(v102, v31, v88);
  v104 = sub_22C370B74(v88, 1, v89);
  v256 = v101;
  if (v104 != 1)
  {
    sub_22C4362CC();
    sub_22C903FFC();
    v137 = sub_22C9063CC();
    v138 = sub_22C90AACC();
    if (os_log_type_enabled(v137, v138))
    {
      *swift_slowAlloc() = 0;
      sub_22C37F09C(&dword_22C366000, v139, v140, "Resolving tool using prompt mapper");
      sub_22C3699EC();
    }

    v141 = *(v250 + 8);
    v141(v74, v251);
    sub_22C436324();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v120 = v276;
    v247 = v141;
    if (EnumCaseMultiPayload == 1)
    {
      sub_22C3DE2C8(v103);
      sub_22C373278();
      sub_22C43637C(v61, v143);
    }

    else
    {
      v146 = *(sub_22C3A5908(&qword_27D9BB818, qword_22C910430) + 48);
      v147 = v249;
      v149 = v241;
      v148 = v242;
      (*(v249 + 32))(v241, v61, v242);
      sub_22C9037DC();
      sub_22C36985C();
      v151 = v61 + v146;
      v152 = v149;
      (*(v150 + 8))(v151);
      v153 = v239;
      (*(v147 + 16))(v239, v149, v148);
      v154 = (*(v147 + 88))(v153, v148);
      v157 = *(v147 + 8);
      v155 = v147 + 8;
      v156 = v157;
      if (v154 == *MEMORY[0x277D1ECF8])
      {
        v156(v153, v148);
        v248 = *(v103 + 8);
        v158 = sub_22C3A5908(&qword_27D9BC198, &unk_22C916710);
        v249 = v155;
        v159 = v158;
        v160 = swift_allocBox();
        v162 = v161;
        v163 = *(v159 + 48);
        *v161 = v256;
        v161[1] = v276;
        v164 = *MEMORY[0x277D1D820];
        sub_22C902D1C();
        sub_22C36985C();
        (*(v165 + 104))(v162, v164);
        sub_22C902C9C();
        sub_22C4366A0();
        sub_22C436234(v166, v167, MEMORY[0x277D1D788]);

        v168 = v254;
        *(v162 + v163) = sub_22C909F0C();
        v120 = v276;
        v169 = v234;
        *v234 = v160;
        v170 = v253;
        (*(v253 + 104))(v169, *MEMORY[0x277D1D7C0], v168);
        v171 = v235;
        sub_22C605684(v169, v248);
        sub_22C3DE2C8(v103);
        (*(v170 + 8))(v169, v168);
        v156(v241, v242);
        LODWORD(v169) = sub_22C370B74(v171, 1, v168);
        sub_22C36DD28(v171, &qword_27D9BB640, &unk_22C912190);
        v172 = v169 == 1;
        v173 = v264;
        v174 = v261;
        if (!v172)
        {

          sub_22C36A810();
          sub_22C43637C(v173, v175);
          sub_22C4366C8();
          sub_22C38B810();
          sub_22C43637C(v94, v176);
          goto LABEL_12;
        }

LABEL_19:
        v181 = v243;
        sub_22C436324();

        v277 = v94;
        v182 = sub_22C4323BC(v245, v259);
        v184 = v183;

        v185 = v265;
        sub_22C378A4C(v265, &v266);

        v186 = v244;
        v187 = v256;
        sub_22C3726C4();
        v188 = v260;
        sub_22C4328DC(v189, v258, v181, v182, v184, v190, v174, v191);
        if (v188)
        {

          sub_22C36A810();
          sub_22C43637C(v264, v192);
          sub_22C36FF94(v185);
          sub_22C3DF2E8(v263);
          sub_22C38B810();
          sub_22C43637C(v277, v193);
          goto LABEL_26;
        }

        sub_22C38B810();
        sub_22C43637C(v277, v194);
        if (sub_22C370B74(v186, 1, v255) != 1)
        {
          sub_22C36BC00();
          sub_22C4362CC();
LABEL_28:
          sub_22C36BC00();
          sub_22C4362CC();
          v197 = sub_22C434DCC();
          v199 = v198;
          v200 = v237;
          sub_22C903F7C();

          v201 = sub_22C9063CC();
          v202 = sub_22C90AACC();

          v278 = v201;
          if (os_log_type_enabled(v201, v202))
          {
            v203 = swift_slowAlloc();
            v266 = swift_slowAlloc();
            *v203 = 136315394;
            v204 = sub_22C36F9F4(v187, v120, &v266);

            *(v203 + 4) = v204;
            *(v203 + 12) = 2080;
            v205 = sub_22C36F9F4(v197, v199, &v266);

            *(v203 + 14) = v205;
            _os_log_impl(&dword_22C366000, v278, v202, "FullPlanner believes the planner's use of %s is refering to %s", v203, 0x16u);
            swift_arrayDestroy();
            sub_22C3699EC();
            sub_22C3699EC();

            sub_22C36A810();
            sub_22C43637C(v264, v206);
            sub_22C4366C8();
            v207 = v237;
          }

          else
          {

            sub_22C36A810();
            sub_22C43637C(v264, v209);
            sub_22C4366C8();
            v207 = v200;
          }

          v247(v207, v251);
          sub_22C36BC00();
          v196 = v252;
          sub_22C4362CC();
          v145 = 0;
          goto LABEL_25;
        }

        sub_22C36A810();
        sub_22C43637C(v264, v195);
        sub_22C4366C8();
        v178 = &qword_27D9BC200;
        v179 = &unk_22C9123F0;
        v180 = v186;
        goto LABEL_23;
      }

      v156(v152, v148);
      sub_22C3DE2C8(v103);
      v156(v153, v148);
    }

    v174 = v261;
    goto LABEL_19;
  }

  sub_22C36DD28(v88, &qword_27D9BC298, &unk_22C912630);
  v105 = v103;
  v106 = *(v103 + 8);
  v107 = sub_22C3A5908(&qword_27D9BC198, &unk_22C916710);
  v108 = swift_allocBox();
  v110 = v109;
  v111 = *(v107 + 48);
  *v109 = v101;
  v109[1] = v276;
  v112 = *MEMORY[0x277D1D820];
  sub_22C902D1C();
  sub_22C36985C();
  (*(v113 + 104))(v110, v112);
  sub_22C902C9C();
  sub_22C4366A0();
  sub_22C436234(v114, v115, MEMORY[0x277D1D788]);

  v116 = v254;
  *(v110 + v111) = sub_22C909F0C();
  v117 = v246;
  *v246 = v108;
  v118 = v253;
  (*(v253 + 104))(v117, *MEMORY[0x277D1D7C0], v116);
  v119 = v247;
  sub_22C605684(v117, v106);
  sub_22C3DE2C8(v105);
  (*(v118 + 8))(v117, v116);
  LODWORD(v105) = sub_22C370B74(v119, 1, v116);
  sub_22C36DD28(v119, &qword_27D9BB640, &unk_22C912190);
  if (v105 != 1)
  {

    sub_22C36A810();
    sub_22C43637C(v264, v144);
    sub_22C4366C8();
LABEL_12:
    v145 = 1;
LABEL_24:
    v196 = v252;
LABEL_25:
    sub_22C36C640(v196, v145, 1, v255);
    goto LABEL_26;
  }

  v120 = v276;

  v121 = v240;
  sub_22C3726C4();
  sub_22C90757C();
  v122 = sub_22C90759C();
  v123 = sub_22C370B74(v121, 1, v122);
  v124 = v263;
  v125 = v264;
  v126 = v265;
  v127 = v262;
  if (v123 != 1)
  {

    sub_22C36A810();
    sub_22C43637C(v125, v177);
    sub_22C36FF94(v126);
    sub_22C3DF2E8(v124);
    v178 = &qword_27D9BC290;
    v179 = &qword_22C912628;
    v180 = v121;
LABEL_23:
    sub_22C36DD28(v180, v178, v179);
    v145 = 1;
    goto LABEL_24;
  }

  sub_22C36DD28(v121, &qword_27D9BC290, &qword_22C912628);
  if (!v127)
  {

    v208 = v236;
    sub_22C36C640(v236, 1, 1, v233);
LABEL_35:
    sub_22C36DD28(v208, &qword_27D9BC288, &qword_22C912620);
    v266 = 0;
    v267 = 0xE000000000000000;
    sub_22C90AF5C();
    MEMORY[0x2318B7850](0x1000000000000017, 0x800000022C930650);
    v212 = sub_22C3726C4();
    MEMORY[0x2318B7850](v212);

    MEMORY[0x2318B7850](0xD00000000000003ELL, 0x800000022C930670);

    MEMORY[0x2318B7850](0xD000000000000035, 0x800000022C930610);

    v213 = v266;
    v214 = v267;
    sub_22C430A48();
    swift_allocError();
    *v215 = v213;
    *(v215 + 8) = v214;
    *(v215 + 16) = 0;
    swift_willThrow();

    sub_22C36A810();
    sub_22C43637C(v125, v216);
    sub_22C36FF94(v126);
    sub_22C3DF2E8(v263);
    goto LABEL_26;
  }

  sub_22C3726C4();
  sub_22C436CC8();

  v129 = v266;
  v128 = v267;
  v130 = v268;
  v131 = v269;
  v132 = v270;
  v271 = v266;
  v272 = v267;
  v273 = v268;
  v274 = v269;
  v275 = v270;
  v133 = v229;
  FullPlannerDBToolAlias.databaseValue.getter(v229);
  sub_22C43627C(v129, v128, v130, v131, v132);
  v134 = v236;
  v135 = v260;
  sub_22C43E9A0();
  if (!v135)
  {
    (*(v230 + 8))(v133, v231);

    v210 = v233;
    v211 = sub_22C370B74(v134, 1, v233);
    v125 = v264;
    v126 = v265;
    v208 = v134;
    if (v211 == 1)
    {

      goto LABEL_35;
    }

    (*(v228 + 32))(v227, v134, v210);
    v217 = v224;
    sub_22C903FFC();
    v218 = sub_22C9063CC();
    v219 = sub_22C90AACC();
    v220 = os_log_type_enabled(v218, v219);
    v187 = v256;
    if (v220)
    {
      *swift_slowAlloc() = 0;
      sub_22C37F09C(&dword_22C366000, v221, v222, "Resolving tool directly from the Toolbox");
      sub_22C3699EC();
    }

    v247 = *(v250 + 8);
    v247(v217, v251);
    (*(v228 + 16))(v226, v227, v233);
    sub_22C42F0B8(v263, &v266);
    sub_22C436324();

    sub_22C433EC0();
    (*(v228 + 8))(v227, v233);
    goto LABEL_28;
  }

  sub_22C36A810();
  sub_22C43637C(v264, v136);
  sub_22C4366C8();
  (*(v230 + 8))(v133, v231);
LABEL_26:
  sub_22C36FB20();
}

uint64_t sub_22C4323BC(uint64_t a1, uint64_t a2)
{
  v34 = a1;
  v35 = a2;
  v2 = sub_22C90972C();
  v32 = *(v2 - 8);
  v33 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = (&v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_22C90977C();
  v30 = *(v5 - 8);
  v31 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22C9036EC();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for RenderableTool(0);
  MEMORY[0x28223BE20](v12);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_22C3A5908(&qword_27D9BC1E8, &qword_22C9123B0);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v18 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v30 - v19;
  sub_22C436324();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_22C43637C(v14, type metadata accessor for RenderableTool);
    v21 = sub_22C908EAC();
    sub_22C36C640(v18, 1, 1, v21);
  }

  else
  {
    v22 = *(sub_22C3A5908(&qword_27D9BB818, qword_22C910430) + 48);
    (*(v9 + 32))(v11, v14, v8);
    sub_22C9036BC();
    (*(v9 + 8))(v11, v8);
    v23 = sub_22C9037DC();
    (*(*(v23 - 8) + 8))(&v14[v22], v23);
  }

  sub_22C407C2C();
  v24 = sub_22C908EAC();
  if (sub_22C370B74(v20, 1, v24) == 1)
  {
    sub_22C36DD28(v20, &qword_27D9BC1E8, &qword_22C9123B0);
LABEL_10:

    return v34;
  }

  if (!v35)
  {
    (*(*(v24 - 8) + 8))(v20, v24);
    goto LABEL_10;
  }

  v25 = sub_22C908DDC();
  MEMORY[0x2318B6C30](v25);
  (*(v30 + 8))(v7, v31);
  v27 = v32;
  v26 = v33;
  if ((*(v32 + 88))(v4, v33) != *MEMORY[0x277D730E0])
  {
    (*(v27 + 8))(v4, v26);
    (*(*(v24 - 8) + 8))(v20, v24);
    return v34;
  }

  (*(v27 + 96))(v4, v26);
  v28 = *v4;
  (*(*(v24 - 8) + 8))(v20, v24);
  return v28;
}

uint64_t sub_22C4328DC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, char *a6@<X6>, char *a7@<X7>, uint64_t a8@<X8>)
{
  v194 = a6;
  v196 = a7;
  v191 = a5;
  v174 = a4;
  v192 = a1;
  v188 = a8;
  v173 = sub_22C9063DC();
  v171 = *(v173 - 8);
  MEMORY[0x28223BE20](v173);
  v185 = &v157 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v172 = sub_22C9037DC();
  v170 = *(v172 - 8);
  v11 = MEMORY[0x28223BE20](v172);
  v169 = &v157 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v168 = &v157 - v13;
  v186 = sub_22C9036EC();
  v175 = *(v186 - 8);
  MEMORY[0x28223BE20](v186);
  v184 = &v157 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v166 = type metadata accessor for ParameterPromptMap(0);
  v165 = *(v166 - 8);
  MEMORY[0x28223BE20](v166);
  v164 = &v157 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v163 = sub_22C90981C();
  v167 = *(v163 - 8);
  MEMORY[0x28223BE20](v163);
  v162 = &v157 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_22C3A5908(&qword_27D9BC1E8, &qword_22C9123B0);
  MEMORY[0x28223BE20](v17 - 8);
  v159 = &v157 - v18;
  v160 = sub_22C908EAC();
  v158 = *(v160 - 8);
  MEMORY[0x28223BE20](v160);
  v157 = &v157 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v189 = type metadata accessor for RenderableTool(0);
  v20 = MEMORY[0x28223BE20](v189);
  v183 = &v157 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v161 = (&v157 - v22);
  v23 = sub_22C902C9C();
  v201 = *(v23 - 8);
  v24 = MEMORY[0x28223BE20](v23);
  v179 = (&v157 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v24);
  v182 = &v157 - v26;
  v27 = sub_22C3A5908(&qword_27D9BAF30, &unk_22C90FAA0);
  v28 = MEMORY[0x28223BE20](v27);
  v30 = &v157 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x28223BE20](v28);
  v33 = &v157 - v32;
  MEMORY[0x28223BE20](v31);
  v180 = &v157 - v34;
  v35 = sub_22C3A5908(&qword_27D9BC2A0, &qword_22C912640);
  v36 = MEMORY[0x28223BE20](v35 - 8);
  v38 = &v157 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v40 = &v157 - v39;
  v178 = sub_22C3A5908(&qword_27D9BB640, &unk_22C912190);
  v41 = MEMORY[0x28223BE20](v178);
  v177 = &v157 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = MEMORY[0x28223BE20](v41);
  v181 = &v157 - v44;
  MEMORY[0x28223BE20](v43);
  v46 = &v157 - v45;
  v187 = type metadata accessor for ResolvableTool(0);
  MEMORY[0x28223BE20](v187);
  v176 = &v157 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);

  v195 = a3;
  v198 = a3;

  v48 = v193;
  sub_22C8384D4(sub_22C4363D4, v197, a2);
  v50 = v49;
  v190 = v48;
  v193 = a2;

  sub_22C58B1A0(v50, v40);

  sub_22C3A7214();
  v51 = sub_22C370B74(v38, 1, v27);
  v192 = v23;
  if (v51 == 1)
  {
    sub_22C36DD28(v40, &qword_27D9BC2A0, &qword_22C912640);
    v52 = sub_22C902D0C();
    v53 = v46;
    v54 = 1;
  }

  else
  {
    v55 = v180;
    sub_22C407C2C();
    sub_22C3A7214();
    v56 = *(v27 + 48);
    (*(v201 + 32))(v30, v33, v23);
    v52 = sub_22C902D0C();
    v57 = *(v52 - 8);
    (*(v57 + 32))(&v30[v56], &v33[v56], v52);
    (*(v57 + 16))(v46, &v30[v56], v52);
    sub_22C36DD28(v30, &qword_27D9BAF30, &unk_22C90FAA0);
    sub_22C36DD28(v55, &qword_27D9BAF30, &unk_22C90FAA0);
    sub_22C36DD28(v40, &qword_27D9BC2A0, &qword_22C912640);
    v53 = v46;
    v54 = 0;
  }

  sub_22C36C640(v53, v54, 1, v52);
  v58 = v46;
  sub_22C902D0C();
  v59 = sub_22C370B74(v46, 1, v52);
  v60 = v195;
  v61 = v193;
  if (v59 == 1)
  {

    v62 = v183;
    sub_22C436324();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v64 = v187;
    if (EnumCaseMultiPayload == 1)
    {

      sub_22C43637C(v62, type metadata accessor for RenderableTool);
      sub_22C903F7C();
      v65 = sub_22C9063CC();
      v66 = sub_22C90AADC();
      if (os_log_type_enabled(v65, v66))
      {
        v67 = v60;
        v68 = swift_slowAlloc();
        *v68 = 0;
        v69 = v68;
        v60 = v67;
        MEMORY[0x2318B9880](v69, -1, -1);
      }

      (*(v171 + 8))(v185, v173);
      sub_22C36DD28(v58, &qword_27D9BB640, &unk_22C912190);
      goto LABEL_9;
    }

    sub_22C3A5908(&qword_27D9BB818, qword_22C910430);
    v81 = v175;
    v82 = *(v175 + 32);
    v182 = v58;
    v83 = v184;
    v84 = v186;
    v82();
    v85 = v170;
    v86 = v168;
    v87 = v64;
    v88 = v172;
    (*(v170 + 32))();
    v89 = v60;
    v90 = v176;
    (*(v81 + 16))(v176, v83, v84);
    v91 = type metadata accessor for ToolPromptMap(0);
    *&v90[v87[5]] = *(v89 + *(v91 + 20));
    *&v90[v87[6]] = *(v89 + *(v91 + 24));
    v92 = &v90[v87[7]];
    v93 = v191;
    *v92 = v174;
    v92[1] = v93;

    v94 = v169;
    sub_22C9037BC();
    sub_22C436234(&qword_27D9BB820, MEMORY[0x277D1ED48], MEMORY[0x277D1ED78]);
    v95 = v86;
    LODWORD(v201) = sub_22C90AE0C();

    v96 = *(v85 + 8);
    v96(v94, v88);
    v96(v95, v88);
    v97 = v89;
    (*(v81 + 8))(v184, v186);
    sub_22C36DD28(v182, &qword_27D9BB640, &unk_22C912190);
    v90[v87[8]] = v201 & 1;
LABEL_13:
    v98 = v188;
    sub_22C4362CC();
    sub_22C36C640(v98, 0, 1, v87);
    sub_22C36FF94(v194);
    v99 = v97;
    return sub_22C43637C(v99, type metadata accessor for ToolPromptMap);
  }

  v71 = v195;
  v72 = v182;
  *v182 = 7368801;
  *(v72 + 1) = 0xE300000000000000;
  v73 = *MEMORY[0x277D1D770];
  v185 = v52;
  v74 = v201;
  v75 = v192;
  v184 = *(v201 + 104);
  (v184)(v72, v73, v192);
  v76 = v181;
  sub_22C605658(v72, v61);
  v77 = v72;
  v78 = v76;
  v79 = *(v74 + 8);
  v201 = v74 + 8;
  v79(v77, v75);
  v80 = v185;
  if (sub_22C370B74(v78, 1, v185) == 1)
  {

    sub_22C36DD28(v78, &qword_27D9BB640, &unk_22C912190);
LABEL_20:
    v103 = v71;
LABEL_21:
    v199 = 0;
    v200 = 0xE000000000000000;
    sub_22C90AF5C();
    MEMORY[0x2318B7850](0x1000000000000028, 0x800000022C9306B0);
    v115 = v179;
    *v179 = 7368801;
    *(v115 + 8) = 0xE300000000000000;
    v116 = v73;
    v117 = v192;
    (v184)(v115, v116, v192);
    sub_22C605658(v115, v61);

    v79(v115, v117);
    v118 = sub_22C90A1AC();
    MEMORY[0x2318B7850](v118);

    MEMORY[0x2318B7850](0xD00000000000003ELL, 0x800000022C9306E0);

    MEMORY[0x2318B7850](0xD000000000000035, 0x800000022C930610);

    v119 = v199;
    v120 = v200;
    sub_22C430A48();
    swift_allocError();
    *v121 = v119;
    *(v121 + 8) = v120;
    *(v121 + 16) = 2;
    swift_willThrow();

    sub_22C36DD28(v58, &qword_27D9BB640, &unk_22C912190);
    sub_22C36FF94(v194);
    v99 = v103;
    return sub_22C43637C(v99, type metadata accessor for ToolPromptMap);
  }

  v100 = *(v80 - 8);
  if ((*(v100 + 88))(v78, v80) != *MEMORY[0x277D1D7E8])
  {

    (*(v100 + 8))(v78, v80);
    goto LABEL_20;
  }

  (*(v100 + 96))(v78, v80);
  v101 = *v78;
  v102 = *(*v78 + 32);
  v103 = v71;
  if (v102 != 3)
  {

    goto LABEL_21;
  }

  v182 = v58;
  v105 = *(v101 + 16);
  v104 = *(v101 + 24);

  v106 = v161;
  sub_22C436324();
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_22C4242E4(v105, v104, 3);

    sub_22C43637C(v106, type metadata accessor for RenderableTool);
    v103 = v195;
    v58 = v182;
    goto LABEL_21;
  }

  v108 = *v106;
  MEMORY[0x28223BE20](v107);
  v109 = v196;
  *(&v157 - 4) = v194;
  *(&v157 - 3) = v109;
  *(&v157 - 2) = v105;
  *(&v157 - 1) = v104;
  v110 = v159;
  v111 = v190;
  sub_22C6B0870(sub_22C4363F4, (&v157 - 6), v108);
  sub_22C4242E4(v105, v104, 3);

  v112 = v160;
  v113 = sub_22C370B74(v110, 1, v160);
  v114 = v182;
  if (v113 == 1)
  {

    sub_22C36DD28(v114, &qword_27D9BB640, &unk_22C912190);
    sub_22C36DD28(v110, &qword_27D9BC1E8, &qword_22C9123B0);
    v64 = v187;
    v60 = v195;
LABEL_9:
    sub_22C36FF94(v194);
    sub_22C43637C(v60, type metadata accessor for ToolPromptMap);
    return sub_22C36C640(v188, 1, 1, v64);
  }

  v122 = v158;
  v123 = v157;
  (*(v158 + 32))(v157, v110, v112);
  v124 = *(v122 + 16);
  v125 = v176;
  v124(v176, v123, v112);
  (*(v175 + 104))(v125, *MEMORY[0x277D1ECE0], v186);
  v126 = sub_22C909F0C();
  MEMORY[0x28223BE20](v126);
  *(&v157 - 2) = v123;
  sub_22C888618();
  v128 = v127;
  v190 = v111;

  sub_22C3A5908(&qword_27D9BC280, &qword_22C912618);
  result = sub_22C90B1CC();
  v129 = result;
  v130 = 0;
  v131 = *(v128 + 64);
  v180 = (v128 + 64);
  v192 = v128;
  v132 = 1 << *(v128 + 32);
  v133 = -1;
  if (v132 < 64)
  {
    v133 = ~(-1 << v132);
  }

  v134 = v133 & v131;
  v135 = (v132 + 63) >> 6;
  v186 = v167 + 16;
  v183 = (result + 64);
  v184 = (v167 + 8);
  v189 = result;
  v181 = v135;
  if (v134)
  {
    while (1)
    {
      v136 = __clz(__rbit64(v134));
      v193 = (v134 - 1) & v134;
LABEL_34:
      v139 = v136 | (v130 << 6);
      v140 = *(v192 + 56);
      v141 = (*(v192 + 48) + 16 * v139);
      v142 = v141[1];
      v201 = *v141;
      v143 = v167;
      v144 = *(v167 + 16);
      v145 = v162;
      v146 = v163;
      v144(v162, v140 + *(v167 + 72) * v139, v163);
      v147 = v164;
      v144(v164, v145, v146);
      sub_22C436234(&qword_27D9BAAA8, MEMORY[0x277D1D800], MEMORY[0x277D1D808]);

      v148 = sub_22C909F0C();
      (*(v143 + 8))(v145, v146);
      *&v147[*(v166 + 20)] = v148;
      *&v183[(v139 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v139;
      v129 = v189;
      v149 = (*(v189 + 48) + 16 * v139);
      *v149 = v201;
      v149[1] = v142;
      result = sub_22C4362CC();
      v150 = *(v129 + 16);
      v151 = __OFADD__(v150, 1);
      v152 = v150 + 1;
      if (v151)
      {
        break;
      }

      *(v129 + 16) = v152;
      v134 = v193;
      v135 = v181;
      if (!v193)
      {
        goto LABEL_29;
      }
    }
  }

  else
  {
LABEL_29:
    v137 = v130;
    while (1)
    {
      v130 = v137 + 1;
      if (__OFADD__(v137, 1))
      {
        break;
      }

      if (v130 >= v135)
      {

        v87 = v187;
        v153 = v176;
        *&v176[*(v187 + 20)] = v129;
        v154 = type metadata accessor for ToolPromptMap(0);
        v97 = v195;
        *&v153[v87[6]] = *(v195 + *(v154 + 24));
        v155 = &v153[v87[7]];
        v156 = v191;
        *v155 = v174;
        v155[1] = v156;

        sub_22C36DD28(v182, &qword_27D9BB640, &unk_22C912190);
        v153[v87[8]] = 0;
        (*(v158 + 8))(v157, v160);
        goto LABEL_13;
      }

      v138 = *&v180[8 * v130];
      ++v137;
      if (v138)
      {
        v136 = __clz(__rbit64(v138));
        v193 = (v138 - 1) & v138;
        goto LABEL_34;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_22C433EC0()
{
  sub_22C370030();
  v128 = v2;
  v132 = v3;
  v5 = v4;
  v119 = type metadata accessor for ParameterPromptMap(0);
  sub_22C369824();
  MEMORY[0x28223BE20](v6);
  sub_22C369838();
  v118 = v8 - v7;
  sub_22C36BA0C();
  v117 = sub_22C90981C();
  sub_22C369824();
  v122 = v9;
  MEMORY[0x28223BE20](v10);
  sub_22C369838();
  v116 = v12 - v11;
  v13 = sub_22C36BA0C();
  type metadata accessor for RenderableTool(v13);
  sub_22C36985C();
  MEMORY[0x28223BE20](v14);
  sub_22C3698E4();
  v125 = v15;
  sub_22C369930();
  MEMORY[0x28223BE20](v16);
  sub_22C36BA64();
  v115 = v17;
  sub_22C36BA0C();
  v18 = sub_22C908D6C();
  sub_22C369824();
  v20 = v19;
  MEMORY[0x28223BE20](v21);
  sub_22C369838();
  v24 = v23 - v22;
  v25 = sub_22C907F9C();
  sub_22C369824();
  v27 = v26;
  MEMORY[0x28223BE20](v28);
  sub_22C369838();
  v31 = v30 - v29;
  v32 = sub_22C908EAC();
  sub_22C369824();
  v130 = v33;
  MEMORY[0x28223BE20](v34);
  sub_22C369838();
  v35 = sub_22C36EC5C();
  v114 = type metadata accessor for ResolvableTool(v35);
  sub_22C36985C();
  MEMORY[0x28223BE20](v36);
  sub_22C369838();
  v123 = v38 - v37;
  (*(v27 + 16))(v31, v5, v25);
  v129 = v25;
  v131 = v27;
  if ((*(v27 + 88))(v31, v25) != *MEMORY[0x277D1E2A8])
  {
    (*(v27 + 8))(v31, v25);
    v46 = v132;
LABEL_13:
    sub_22C374168((v46 + 40), *(v46 + 64));
    sub_22C3A5908(&qword_27D9BB818, qword_22C910430);
    sub_22C435A54(v125);
    sub_22C9037DC();
    v50 = MEMORY[0x277D84F90];
    v134[0] = MEMORY[0x277D84F90];
    sub_22C436234(&qword_27D9BB820, MEMORY[0x277D1ED48], MEMORY[0x277D1ED78]);
    sub_22C3A5908(&qword_27D9BB828, &unk_22C912AE0);
    sub_22C3E011C();
    sub_22C90AE4C();
    swift_storeEnumTagMultiPayload();
    sub_22C4B9B90(v50);
    v51 = sub_22C37736C();
    v52(v51);
    if (!v0)
    {
      sub_22C373278();
      sub_22C43637C(v125, v55);

      sub_22C370574();
      v56 = v128;
      if (v57)
      {
        v58 = MEMORY[0x277D84F98];
        v59 = v123;
      }

      else
      {

        sub_22C49FB90(v134[0], v128);
        v59 = v123;
        v58 = v75;
      }

      v76 = sub_22C435A54(v59);
      MEMORY[0x28223BE20](v76);
      sub_22C379844();
      sub_22C435F74();
      v78 = v77;

      sub_22C3E022C(v134);
      v79 = sub_22C4366F4();
      v80(v79);
      v81 = v114;
      *(v59 + *(v114 + 20)) = v78;
      *(v59 + *(v114 + 24)) = v58;
      sub_22C388ED4();
LABEL_39:
      sub_22C3DF2E8(v132);
      *(v59 + *(v81 + 32)) = 0;
      sub_22C436324();
      sub_22C36A810();
      sub_22C43637C(v56, v109);
      v70 = type metadata accessor for ResolvableTool;
      v71 = v59;
      goto LABEL_23;
    }

    sub_22C382614();
    (*(v131 + 8))(v5, v129);
    sub_22C373278();
    sub_22C43637C(v125, v53);
    sub_22C3DF2E8(v132);
    v54 = v128;
LABEL_22:
    sub_22C36A810();
    v71 = v54;
LABEL_23:
    sub_22C43637C(v71, v70);
    sub_22C36FB20();
    return;
  }

  v124 = v5;
  (*(v27 + 96))(v31, v25);
  v121 = v32;
  (*(v130 + 32))(v1, v31, v32);
  v120 = v1;
  v39 = sub_22C908DEC();
  v40 = 0;
  v135 = *(v39 + 16);
  v41 = *MEMORY[0x277D72188];
  v42 = *MEMORY[0x277D72178];
  v43 = (v20 + 8);
  while (1)
  {
    if (v135 == v40)
    {
      v40 = v135;
      goto LABEL_11;
    }

    v44 = v39;
    (*(v20 + 16))(v24, v39 + ((*(v20 + 80) + 32) & ~*(v20 + 80)) + *(v20 + 72) * v40, v18);
    v45 = (*(v20 + 88))(v24, v18);
    if (v45 == v41)
    {
      break;
    }

    if (v45 == v42)
    {
      goto LABEL_10;
    }

    (*v43)(v24, v18);
    ++v40;
    v39 = v44;
  }

  (*v43)(v24, v18);
LABEL_10:
  v39 = v44;
LABEL_11:
  v47 = *(v39 + 16);
  v46 = v132;
  if (v40 == v47)
  {

    v48 = sub_22C376628();
    v49(v48);
    goto LABEL_13;
  }

  if (v40 >= v47)
  {
    goto LABEL_42;
  }

  if (!sub_22C4AF1C0())
  {

    sub_22C374168((v132 + 40), *(v132 + 64));
    sub_22C3A5908(&qword_27D9BABC0, &unk_22C90D460);
    v60 = (*(v130 + 80) + 32) & ~*(v130 + 80);
    v61 = swift_allocObject();
    *(v61 + 16) = xmmword_22C90F800;
    v62 = *(v130 + 16);
    v62(v61 + v60, v120, v121);
    *v115 = v61;
    swift_storeEnumTagMultiPayload();
    sub_22C4B9B90(MEMORY[0x277D84F90]);
    v63 = sub_22C37736C();
    v64(v63);
    if (v0)
    {

      sub_22C382614();
      v65 = sub_22C379FAC();
      v66(v65);
      sub_22C373278();
      sub_22C43637C(v115, v67);
      sub_22C3DF2E8(v132);
      v68 = sub_22C376628();
      v69(v68);
      v54 = v128;
      goto LABEL_22;
    }

    sub_22C373278();
    sub_22C43637C(v115, v72);

    v73 = sub_22C370574();
    if (v74)
    {
      v110 = MEMORY[0x277D84F98];
    }

    else
    {

      sub_22C49FB90(v134[0], v128);
      v110 = v82;
    }

    (v62)(v123, v120, v121, v73);
    v83 = *MEMORY[0x277D1ECE0];
    sub_22C9036EC();
    sub_22C36985C();
    (*(v84 + 104))(v123, v83);
    v85 = sub_22C909F0C();
    MEMORY[0x28223BE20](v85);
    sub_22C379844();
    sub_22C888618();
    v87 = v86;

    sub_22C3A5908(&qword_27D9BC280, &qword_22C912618);
    sub_22C90B1CC();
    v88 = 0;
    v112 = v87 + 64;
    v126 = v87;
    sub_22C36D280();
    v91 = v90 & v89;
    v111 = (v92 + 63) >> 6;
    v136 = v93;
    v113 = v93 + 64;
    v94 = v124;
    while (v91)
    {
      v95 = __clz(__rbit64(v91));
      v127 = (v91 - 1) & v91;
LABEL_36:
      v98 = v95 | (v88 << 6);
      v99 = (*(v126 + 48) + 16 * v98);
      v100 = v99[1];
      v133 = *v99;
      v101 = *(v122 + 16);
      v101(v116, *(v126 + 56) + *(v122 + 72) * v98, v117);
      v101(v118, v116, v117);
      sub_22C902D0C();
      sub_22C436234(&qword_27D9BAAA8, MEMORY[0x277D1D800], MEMORY[0x277D1D808]);

      v102 = sub_22C909F0C();
      (*(v122 + 8))(v116, v117);
      *(v118 + *(v119 + 20)) = v102;
      *(v113 + ((v98 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v98;
      v103 = (*(v136 + 48) + 16 * v98);
      *v103 = v133;
      v103[1] = v100;
      sub_22C436688();
      sub_22C4362CC();
      v104 = *(v136 + 16);
      v105 = __OFADD__(v104, 1);
      v106 = v104 + 1;
      if (v105)
      {
        goto LABEL_41;
      }

      *(v136 + 16) = v106;
      v94 = v124;
      v91 = v127;
    }

    v96 = v88;
    while (1)
    {
      v88 = v96 + 1;
      if (__OFADD__(v96, 1))
      {
        break;
      }

      if (v88 >= v111)
      {
        sub_22C3E022C(v134);

        (*(v131 + 8))(v94, v129);
        v81 = v114;
        v59 = v123;
        *(v123 + *(v114 + 20)) = v136;
        *(v123 + *(v114 + 24)) = v110;
        sub_22C388ED4();
        v107 = sub_22C37F080();
        v108(v107);
        v56 = v128;
        goto LABEL_39;
      }

      ++v96;
      if (*(v112 + 8 * v88))
      {
        sub_22C37FCE8();
        v127 = v97;
        goto LABEL_36;
      }
    }

    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_22C434DCC()
{
  v2 = v0;
  sub_22C90384C();
  sub_22C369824();
  v52 = v4;
  v53 = v3;
  MEMORY[0x28223BE20](v3);
  sub_22C369838();
  v51 = v6 - v5;
  sub_22C36BA0C();
  v7 = sub_22C908EAC();
  sub_22C369824();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  sub_22C369838();
  v13 = v12 - v11;
  v14 = sub_22C9099FC();
  sub_22C369824();
  v16 = v15;
  MEMORY[0x28223BE20](v17);
  sub_22C369838();
  sub_22C36EC5C();
  v18 = sub_22C9036EC();
  sub_22C369824();
  v20 = v19;
  MEMORY[0x28223BE20](v21);
  sub_22C369838();
  v24 = v23 - v22;
  (*(v20 + 16))(v23 - v22, v2, v18);
  v25 = (*(v20 + 88))(v24, v18);
  if (v25 == *MEMORY[0x277D1ECE0])
  {
    v26 = sub_22C3726B4();
    v27(v26);
    v28 = sub_22C3885B4();
    v29(v28);
    sub_22C4366B8();
    sub_22C90AF5C();

    sub_22C36A828();
    v54 = v30;
LABEL_10:
    v44 = sub_22C908E7C();
    MEMORY[0x2318B7850](v44);

    MEMORY[0x2318B7850](41, 0xE100000000000000);
    v46 = v54;
    (*(v9 + 8))(v13, v7);
    return v46;
  }

  if (v25 == *MEMORY[0x277D1ECE8])
  {
    v31 = sub_22C3726B4();
    v32(v31);
    (*(v16 + 32))(v1, v24, v14);
    sub_22C4366B8();
    sub_22C90AF5C();

    sub_22C36A828();
    v55 = v33 | 1;
    v34 = sub_22C9099CC();
    MEMORY[0x2318B7850](v34, v45);

    MEMORY[0x2318B7850](41, 0xE100000000000000);
    v46 = v55;
    (*(v16 + 8))(v1, v14);
    return v46;
  }

  if (v25 == *MEMORY[0x277D1ECD8])
  {
    v35 = sub_22C3726B4();
    v36(v35);
    v37 = sub_22C3885B4();
    v38(v37);
    sub_22C4366B8();
    sub_22C90AF5C();

    v39 = 0x53797469746E652ELL;
LABEL_9:
    v54 = v39;
    goto LABEL_10;
  }

  if (v25 == *MEMORY[0x277D1ECD0])
  {
    v40 = sub_22C3726B4();
    v41(v40);
    v42 = sub_22C3885B4();
    v43(v42);
    sub_22C4366B8();
    sub_22C90AF5C();

    v39 = 0x41746E65696C632ELL;
    goto LABEL_9;
  }

  if (v25 == *MEMORY[0x277D1ECF8])
  {
    v48 = sub_22C3726B4();
    v49(v48);
    (*(v52 + 32))(v51, v24, v53);
    v50 = sub_22C9037FC();
    MEMORY[0x2318B7850](v50);

    MEMORY[0x2318B7850](41, 0xE100000000000000);
    v46 = 0x72746E6F4369752ELL;
    (*(v52 + 8))(v51, v53);
    return v46;
  }

  result = sub_22C90B4EC();
  __break(1u);
  return result;
}

BOOL sub_22C4352DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v26 = a2;
  v27 = a3;
  v25 = a1;
  v3 = sub_22C3A5908(&qword_27D9BC160, &unk_22C912170);
  MEMORY[0x28223BE20](v3 - 8);
  v24 = &v24 - v4;
  v5 = sub_22C902C9C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for RenderableTool(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_22C3A5908(&qword_27D9BAF30, &unk_22C90FAA0);
  v13 = v12 - 8;
  MEMORY[0x28223BE20](v12);
  v15 = &v24 - v14;
  v16 = *(v6 + 16);
  v16(&v24 - v14, v25, v5);
  v17 = *(v13 + 56);
  v18 = sub_22C902D0C();
  (*(*(v18 - 8) + 16))(&v15[v17], v26, v18);
  sub_22C436324();
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_22C36DD28(v15, &qword_27D9BAF30, &unk_22C90FAA0);
    sub_22C43637C(v11, type metadata accessor for RenderableTool);
    return 0;
  }

  sub_22C43637C(v11, type metadata accessor for RenderableTool);
  v16(v8, v15, v5);
  if ((*(v6 + 88))(v8, v5) != *MEMORY[0x277D1D770])
  {
    sub_22C36DD28(v15, &qword_27D9BAF30, &unk_22C90FAA0);
    (*(v6 + 8))(v8, v5);
    return 0;
  }

  (*(v6 + 96))(v8, v5);
  if (qword_27D9BA620 != -1)
  {
    swift_once();
  }

  v19 = sub_22C3A5908(&qword_27D9BC170, &unk_22C912180);
  sub_22C37AA60(v19, qword_27D9BC2E0);
  v20 = v24;
  sub_22C437ADC();

  sub_22C36DD28(v15, &qword_27D9BAF30, &unk_22C90FAA0);
  v21 = sub_22C3A5908(&qword_27D9BC178, &unk_22C914830);
  v22 = sub_22C370B74(v20, 1, v21) != 1;
  sub_22C36DD28(v20, &qword_27D9BC160, &unk_22C912170);
  return v22;
}

uint64_t sub_22C4356E4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_22C90977C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v21[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_22C374168(a2, a2[3]);
  sub_22C47FCDC();
  v13 = sub_22C9096FC();
  v22 = v12;
  v15 = sub_22C4FB170(v13, v14, sub_22C436434, v21, a3);
  v17 = v16;

  (*(v10 + 8))(v12, v9);
  if (v15 == a4 && v17 == a5)
  {
    v19 = 1;
  }

  else
  {
    v19 = sub_22C90B4FC();
  }

  return v19 & 1;
}

void sub_22C435870()
{
  sub_22C370030();
  v19 = v0;
  v2 = v1;
  v3 = sub_22C90981C();
  sub_22C369824();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  sub_22C369838();
  v9 = v8 - v7;
  v10 = *v2;
  v20 = v2[1];
  v11 = sub_22C908DCC();
  v12 = 0;
  v21 = *(v11 + 16);
  while (1)
  {
    if (v21 == v12)
    {

      v17 = 1;
      v18 = v19;
      goto LABEL_13;
    }

    if (v12 >= *(v11 + 16))
    {
      break;
    }

    (*(v5 + 16))(v9, v11 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v12, v3);
    if (sub_22C9097DC() == v10 && v13 == v20)
    {

LABEL_12:

      v18 = v19;
      (*(v5 + 32))(v19, v9, v3);
      v17 = 0;
LABEL_13:
      sub_22C36C640(v18, v17, 1, v3);
      sub_22C36FB20();
      return;
    }

    v15 = v10;
    v16 = sub_22C90B4FC();

    if (v16)
    {
      goto LABEL_12;
    }

    (*(v5 + 8))(v9, v3);
    ++v12;
    v10 = v15;
  }

  __break(1u);
}

uint64_t sub_22C435A54@<X0>(uint64_t a1@<X8>)
{
  v22 = a1;
  v2 = sub_22C9036EC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22C908EAC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22C907F9C();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v13, v1, v10);
  v14 = (*(v11 + 88))(v13, v10);
  if (v14 == *MEMORY[0x277D1E2A8])
  {
    (*(v11 + 96))(v13, v10);
    v15 = *(v7 + 32);
    v15(v9, v13, v6);
    v16 = sub_22C908E5C();
    v15(v5, v9, v6);
    v17 = MEMORY[0x277D1ECD8];
    if ((v16 & 1) == 0)
    {
      v17 = MEMORY[0x277D1ECE0];
    }

    (*(v3 + 104))(v5, *v17, v2);
    return (*(v3 + 32))(v22, v5, v2);
  }

  else
  {
    v19 = v22;
    if (v14 == *MEMORY[0x277D1E2B0])
    {
      (*(v11 + 96))(v13, v10);
      v20 = sub_22C9099FC();
      (*(*(v20 - 8) + 32))(v19, v13, v20);
      return (*(v3 + 104))(v19, *MEMORY[0x277D1ECE8], v2);
    }

    else
    {
      result = sub_22C90B4EC();
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_22C435DA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_22C90981C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v10, a1, v7);
  v11 = type metadata accessor for _PromptMapper._ToolPromptMap._ParameterPromptMap(0);
  sub_22C49FB90(*(a1 + *(v11 + 20)), a2);
  if (v3)
  {
    return (*(v8 + 8))(v10, v7);
  }

  v14 = v12;

  (*(v8 + 32))(a3, v10, v7);
  result = type metadata accessor for ParameterPromptMap(0);
  *(a3 + *(result + 20)) = v14;
  return result;
}

uint64_t type metadata accessor for ResolvableTool(uint64_t a1)
{
  result = qword_27D9BC2A8;
  if (!qword_27D9BC2A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_22C435F74()
{
  sub_22C370030();
  v2 = v1;
  v30 = v3;
  v4 = type metadata accessor for ParameterPromptMap(0);
  MEMORY[0x28223BE20](v4 - 8);
  sub_22C369838();
  v5 = sub_22C36EC5C();
  v6 = type metadata accessor for _PromptMapper._ToolPromptMap._ParameterPromptMap(v5);
  MEMORY[0x28223BE20](v6 - 8);
  sub_22C369838();
  v9 = v8 - v7;
  sub_22C3A5908(&qword_27D9BC280, &qword_22C912618);
  v10 = 0;
  v31 = v2;
  v32 = sub_22C90B1CC();
  v11 = v2 + 64;
  sub_22C36D280();
  v14 = v13 & v12;
  v16 = (v15 + 63) >> 6;
  v29 = v17 + 64;
  if (v14)
  {
    while (1)
    {
      v18 = __clz(__rbit64(v14));
      v33 = (v14 - 1) & v14;
LABEL_8:
      v21 = v18 | (v10 << 6);
      v22 = (*(v31 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      sub_22C436324();

      v30(v9);
      if (v0)
      {
        break;
      }

      sub_22C43637C(v9, type metadata accessor for _PromptMapper._ToolPromptMap._ParameterPromptMap);
      *(v29 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      v25 = (*(v32 + 48) + 16 * v21);
      *v25 = v23;
      v25[1] = v24;
      sub_22C436688();
      sub_22C4362CC();
      v26 = *(v32 + 16);
      v27 = __OFADD__(v26, 1);
      v28 = v26 + 1;
      if (v27)
      {
        goto LABEL_15;
      }

      *(v32 + 16) = v28;
      v14 = v33;
      if (!v33)
      {
        goto LABEL_3;
      }
    }

    sub_22C43637C(v9, type metadata accessor for _PromptMapper._ToolPromptMap._ParameterPromptMap);
LABEL_13:
    sub_22C36FB20();
  }

  else
  {
LABEL_3:
    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v10 >= v16)
      {
        goto LABEL_13;
      }

      ++v19;
      if (*(v11 + 8 * v10))
      {
        sub_22C37FCE8();
        v33 = v20;
        goto LABEL_8;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
  }
}

uint64_t sub_22C436234(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_22C43627C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{

  if (a5)
  {
  }

  return result;
}

uint64_t sub_22C4362CC()
{
  sub_22C36986C();
  v1(0);
  sub_22C36985C();
  v2 = sub_22C36BA00();
  v3(v2);
  return v0;
}

uint64_t sub_22C436324()
{
  sub_22C36986C();
  v1(0);
  sub_22C36985C();
  v2 = sub_22C36BA00();
  v3(v2);
  return v0;
}

uint64_t sub_22C43637C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_22C36985C();
  (*(v3 + 8))(a1);
  return a1;
}

void sub_22C436464(uint64_t a1)
{
  sub_22C9036EC();
  if (v1 <= 0x3F)
  {
    sub_22C436520(319);
    if (v2 <= 0x3F)
    {
      sub_22C436588(319);
      if (v3 <= 0x3F)
      {
        sub_22C436620();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_22C436520(uint64_t a1)
{
  if (!qword_27D9BC2B8)
  {
    type metadata accessor for ParameterPromptMap(255);
    v1 = sub_22C909F2C();
    if (!v2)
    {
      atomic_store(v1, &qword_27D9BC2B8);
    }
  }
}

void sub_22C436588(uint64_t a1)
{
  if (!qword_27D9BC2C0)
  {
    sub_22C902D0C();
    sub_22C436234(&qword_27D9BAAA8, MEMORY[0x277D1D800], MEMORY[0x277D1D808]);
    v1 = sub_22C909F2C();
    if (!v2)
    {
      atomic_store(v1, &qword_27D9BC2C0);
    }
  }
}

void sub_22C436620()
{
  if (!qword_28142FA20)
  {
    v0 = sub_22C90AC6C();
    if (!v1)
    {
      atomic_store(v0, &qword_28142FA20);
    }
  }
}

uint64_t sub_22C4366C8()
{
  sub_22C36FF94(*(v0 + 344));
  v1 = *(v0 + 328);

  return sub_22C3DF2E8(v1);
}

void sub_22C43670C()
{
  sub_22C36BA7C();
  v2 = v1;
  v3 = sub_22C3A5908(&qword_27D9BC238, &qword_22C912438);
  sub_22C36985C();
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v4);
  sub_22C37FCFC();
  v16 = MEMORY[0x277D84F98];
  v5 = 1 << *(v2 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(v2 + 64);
  v8 = (v5 + 63) >> 6;

  for (i = 0; v7; i = v10)
  {
    v10 = i;
LABEL_8:
    v11 = __clz(__rbit64(v7)) | (v10 << 6);
    v12 = *(v2 + 48);
    sub_22C902C9C();
    sub_22C36985C();
    (*(v13 + 16))(v0, v12 + *(v13 + 72) * v11);
    v14 = *(v2 + 56);
    sub_22C902C4C();
    sub_22C36985C();
    (*(v15 + 16))(v0 + *(v3 + 48), v14 + *(v15 + 72) * v11);
    sub_22C438E40(&v16, v0);
    v7 &= v7 - 1;
    sub_22C36DD28(v0, &qword_27D9BC238, &qword_22C912438);
  }

  while (1)
  {
    v10 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v10 >= v8)
    {

      sub_22C36CC48();
      return;
    }

    v7 = *(v2 + 64 + 8 * v10);
    ++i;
    if (v7)
    {
      goto LABEL_8;
    }
  }

  __break(1u);

  sub_22C36DD28(v0, &qword_27D9BC238, &qword_22C912438);

  __break(1u);
}

uint64_t sub_22C436900@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v38 = a2;
  v39 = a4;
  v7 = sub_22C3A5908(&qword_27D9BC230, &qword_22C912430);
  sub_22C369914(v7);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v8);
  v10 = &v38 - v9;
  v11 = sub_22C3A5908(&qword_27D9BC0C0, &unk_22C911FA0);
  sub_22C369914(v11);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v12);
  sub_22C37B974();
  v13 = sub_22C90981C();
  sub_22C369824();
  v15 = v14;
  MEMORY[0x28223BE20](v16);
  sub_22C369ABC();
  v19 = v17 - v18;
  v21 = MEMORY[0x28223BE20](v20);
  v23 = &v38 - v22;
  MEMORY[0x28223BE20](v21);
  v25 = &v38 - v24;
  sub_22C437564(v4, a3);
  if (sub_22C370B74(v4, 1, v13) != 1)
  {
    v28 = (*(v15 + 32))(v25, v4, v13);
LABEL_5:
    v27 = v39;
    MEMORY[0x2318B6CE0](v28);
    (*(v15 + 8))(v25, v13);
    v26 = 0;
    goto LABEL_6;
  }

  sub_22C36DD28(v4, &qword_27D9BC0C0, &unk_22C911FA0);
  if (!sub_22C4371E0(a1, v38))
  {
    v31 = sub_22C902C7C();
    sub_22C6056C8(v31, v32, a3);

    v33 = type metadata accessor for ParameterPromptMap(0);
    if (sub_22C370B74(v10, 1, v33) == 1)
    {
      sub_22C36DD28(v10, &qword_27D9BC230, &qword_22C912430);
      v40 = 0;
      v41 = 0xE000000000000000;
      sub_22C90AF5C();
      sub_22C370594();
      sub_22C902C9C();
      sub_22C90B12C();
      MEMORY[0x2318B7850](0xD000000000000022, 0x800000022C9305E0);

      MEMORY[0x2318B7850](0xD000000000000035, 0x800000022C930610);

      v34 = v40;
      v35 = v41;
      sub_22C430A48();
      swift_allocError();
      *v36 = v34;
      *(v36 + 8) = v35;
      *(v36 + 16) = 1;
      return swift_willThrow();
    }

    (*(v15 + 16))(v19, v10, v13);
    sub_22C38B828();
    sub_22C4378D0(v10, v37);
    v28 = (*(v15 + 32))(v23, v19, v13);
    v25 = v23;
    goto LABEL_5;
  }

  v26 = 1;
  v27 = v39;
LABEL_6:
  v29 = sub_22C90941C();
  return sub_22C36C640(v27, v26, 1, v29);
}

void sub_22C436CC8()
{
  sub_22C36BA7C();
  v62 = v0;
  v2 = v1;
  v4 = v3;
  v6 = v5;
  sub_22C902D0C();
  sub_22C369824();
  v63 = v8;
  v64 = v7;
  MEMORY[0x28223BE20](v7);
  sub_22C369ABC();
  v61 = (v9 - v10);
  sub_22C369930();
  MEMORY[0x28223BE20](v11);
  sub_22C36BA64();
  v60 = v12;
  v13 = sub_22C3A5908(&qword_27D9BAF30, &unk_22C90FAA0);
  sub_22C36985C();
  MEMORY[0x28223BE20](v14);
  sub_22C369ABC();
  v17 = v15 - v16;
  v19 = MEMORY[0x28223BE20](v18);
  v21 = &v56 - v20;
  MEMORY[0x28223BE20](v19);
  sub_22C36BA64();
  v59 = v22;
  v23 = sub_22C3A5908(&qword_27D9BC2A0, &qword_22C912640);
  v24 = sub_22C369914(v23);
  MEMORY[0x28223BE20](v24);
  sub_22C369ABC();
  v27 = v25 - v26;
  MEMORY[0x28223BE20](v28);
  v30 = &v56 - v29;
  v31 = sub_22C3A5908(&qword_27D9BB640, &unk_22C912190);
  v32 = sub_22C369914(v31);
  MEMORY[0x28223BE20](v32);
  sub_22C369ABC();
  v35 = v33 - v34;
  MEMORY[0x28223BE20](v36);
  v38 = &v56 - v37;
  if (qword_27D9BA6A8 != -1)
  {
    sub_22C377BC0();
    swift_once();
  }

  if (!sub_22C5E935C(v4, v2, qword_27D9E3F80))
  {
    goto LABEL_14;
  }

  v57 = v4;
  v58 = v2;
  v39 = sub_22C4398D4(v62);
  sub_22C58B1A0(v39, v30);

  sub_22C3DB138(v30, v27, &qword_27D9BC2A0, &qword_22C912640);
  v40 = 1;
  if (sub_22C370B74(v27, 1, v13) != 1)
  {
    v41 = v59;
    sub_22C3DB08C(v27, v59, &qword_27D9BAF30, &unk_22C90FAA0);
    sub_22C3DB138(v41, v21, &qword_27D9BAF30, &unk_22C90FAA0);
    v42 = *(v13 + 48);
    sub_22C902C9C();
    sub_22C36985C();
    (*(v43 + 32))(v17, v21);
    v44 = v63;
    v45 = &v21[v42];
    v46 = v64;
    (*(v63 + 32))(v17 + v42, v45, v64);
    (*(v44 + 16))(v38, v17 + v42, v46);
    sub_22C36DD28(v17, &qword_27D9BAF30, &unk_22C90FAA0);
    sub_22C36DD28(v41, &qword_27D9BAF30, &unk_22C90FAA0);
    v40 = 0;
  }

  sub_22C36DD28(v30, &qword_27D9BC2A0, &qword_22C912640);
  v47 = v64;
  sub_22C36C640(v38, v40, 1, v64);
  sub_22C3DB08C(v38, v35, &qword_27D9BB640, &unk_22C912190);
  if (sub_22C370B74(v35, 1, v47) == 1)
  {
    sub_22C36DD28(v35, &qword_27D9BB640, &unk_22C912190);
LABEL_13:
    v4 = v57;
    v2 = v58;
LABEL_14:
    *v6 = v4;
    *(v6 + 8) = v2;
    *(v6 + 16) = 0;
    *(v6 + 24) = 0;
    *(v6 + 32) = 0;
    goto LABEL_15;
  }

  v48 = v63;
  v49 = *(v63 + 32);
  v50 = v60;
  v49(v60, v35, v47);
  v51 = v61;
  v49(v61, v50, v47);
  if ((*(v48 + 88))(v51, v47) != *MEMORY[0x277D1D7E8])
  {
    (*(v48 + 8))(v51, v47);
    goto LABEL_13;
  }

  (*(v48 + 96))(v51, v47);
  v52 = *v51;
  if (*(*v51 + 32) != 3)
  {

    goto LABEL_13;
  }

  v54 = *(v52 + 16);
  v53 = *(v52 + 24);

  v55 = v58;
  *v6 = v57;
  *(v6 + 8) = v55;
  *(v6 + 16) = v54;
  *(v6 + 24) = v53;
  *(v6 + 32) = 1;
LABEL_15:

  sub_22C36CC48();
}

BOOL sub_22C4371E0(uint64_t a1, uint64_t a2)
{
  v5 = sub_22C3A5908(&qword_27D9BC160, &unk_22C912170);
  sub_22C369914(v5);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v6);
  sub_22C37B974();
  v7 = sub_22C902C9C();
  sub_22C369824();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  sub_22C369838();
  v13 = v12 - v11;
  type metadata accessor for RenderableTool(0);
  sub_22C36985C();
  MEMORY[0x28223BE20](v14);
  sub_22C369838();
  v17 = v16 - v15;
  sub_22C43786C(a2, v16 - v15);
  LODWORD(a2) = swift_getEnumCaseMultiPayload();
  sub_22C4378D0(v17, type metadata accessor for RenderableTool);
  if (a2 != 1)
  {
    return 0;
  }

  (*(v9 + 16))(v13, a1, v7);
  if ((*(v9 + 88))(v13, v7) != *MEMORY[0x277D1D770])
  {
    (*(v9 + 8))(v13, v7);
    return 0;
  }

  (*(v9 + 96))(v13, v7);
  if (qword_27D9BA620 != -1)
  {
    sub_22C371698();
    swift_once();
  }

  v18 = sub_22C3A5908(&qword_27D9BC170, &unk_22C912180);
  sub_22C37AA60(v18, qword_27D9BC2E0);
  sub_22C437ADC();

  v19 = sub_22C3A5908(&qword_27D9BC178, &unk_22C914830);
  v20 = sub_22C370B74(v2, 1, v19) != 1;
  sub_22C36DD28(v2, &qword_27D9BC160, &unk_22C912170);
  return v20;
}

uint64_t sub_22C437468()
{
  v0 = sub_22C3A5908(&qword_27D9BC308, &qword_22C912668);
  sub_22C3F0160(v0, qword_27D9BC2C8);
  sub_22C37AA60(v0, qword_27D9BC2C8);
  sub_22C3A5908(&qword_27D9BC320, &unk_22C92CFE0);
  return sub_22C90306C();
}

uint64_t sub_22C4374F8()
{
  v0 = sub_22C3A5908(&qword_27D9BC170, &unk_22C912180);
  sub_22C3F0160(v0, qword_27D9BC2E0);
  sub_22C37AA60(v0, qword_27D9BC2E0);
  return MEMORY[0x2318B05B0](7368801, 0xE300000000000000, MEMORY[0x277D83E40]);
}

uint64_t sub_22C437564@<X0>(uint64_t a1@<X8>, uint64_t a2@<X1>)
{
  v4 = sub_22C3A5908(&qword_27D9BC230, &qword_22C912430);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v32 - v5;
  v7 = sub_22C3A5908(&qword_27D9BC300, &qword_22C912660);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v32 - v8;
  v10 = sub_22C902C7C();
  v12 = v11;
  if (qword_27D9BA618 != -1)
  {
    swift_once();
  }

  v13 = sub_22C3A5908(&qword_27D9BC308, &qword_22C912668);
  v14 = sub_22C37AA60(v13, qword_27D9BC2C8);
  sub_22C437928(v14, v10, v12);

  v15 = sub_22C3A5908(&qword_27D9BC310, &unk_22C92CFD0);
  if (sub_22C370B74(v9, 1, v15) == 1)
  {
    v16 = &qword_27D9BC300;
    v17 = &qword_22C912660;
    v18 = v9;
  }

  else
  {
    swift_getKeyPath();
    sub_22C9030AC();

    v19 = v32[0];
    v20 = v32[1];
    v21 = v32[2];
    v22 = v32[3];
    (*(*(v15 - 8) + 8))(v9, v15);
    v23 = MEMORY[0x2318B76D0](v19, v20, v21, v22);
    v25 = v24;

    sub_22C6056C8(v23, v25, a2);

    v26 = type metadata accessor for ParameterPromptMap(0);
    if (sub_22C370B74(v6, 1, v26) != 1)
    {
      v30 = sub_22C90981C();
      (*(*(v30 - 8) + 16))(a1, v6, v30);
      sub_22C4378D0(v6, type metadata accessor for ParameterPromptMap);
      v28 = a1;
      v29 = 0;
      v27 = v30;
      return sub_22C36C640(v28, v29, 1, v27);
    }

    v16 = &qword_27D9BC230;
    v17 = &qword_22C912430;
    v18 = v6;
  }

  sub_22C36DD28(v18, v16, v17);
  v27 = sub_22C90981C();
  v28 = a1;
  v29 = 1;
  return sub_22C36C640(v28, v29, 1, v27);
}

uint64_t sub_22C43786C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RenderableTool(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22C4378D0(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_22C36985C();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_22C437928(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v5 = sub_22C3A5908(&qword_27D9BC308, &qword_22C912668);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10 - v7;
  sub_22C439EB0(&qword_27D9BC318, &qword_27D9BC308, &qword_22C912668);
  sub_22C90305C();
  sub_22C87FAE0(sub_22C439EAC, 0, a2, a3);
  sub_22C90309C();
  (*(v6 + 8))(v8, v5);
}

void sub_22C437ADC()
{
  sub_22C36BA7C();
  v1 = v0;
  v3 = v2;
  sub_22C3A5908(&qword_27D9BC170, &unk_22C912180);
  sub_22C369824();
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v4);
  sub_22C37FCFC();
  sub_22C439EB0(&qword_27D9BC2F8, &qword_27D9BC170, &unk_22C912180);
  sub_22C90305C();
  sub_22C87FAE0(sub_22C439EAC, 0, v3, v1);
  sub_22C90309C();
  v5 = sub_22C36EBF0();
  v6(v5);

  sub_22C36CC48();
}

void sub_22C437C60()
{
  sub_22C36BA7C();
  v1 = v0;
  v3 = v2;
  sub_22C3A5908(&qword_27D9BC170, &unk_22C912180);
  sub_22C369824();
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v4);
  sub_22C37FCFC();
  sub_22C439EB0(&qword_27D9BC2F8, &qword_27D9BC170, &unk_22C912180);
  sub_22C90305C();
  if (v1 >> 14 < v3 >> 14)
  {
    __break(1u);
  }

  else
  {
    sub_22C90ACCC();
    sub_22C90309C();
    v5 = sub_22C36EBF0();
    v6(v5);

    sub_22C36CC48();
  }
}

uint64_t sub_22C437DF8(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t, uint64_t), uint64_t (*a5)(uint64_t, uint64_t), uint64_t a6)
{
  v181 = a5;
  v182 = a6;
  v175 = a4;
  v185 = a2;
  v180 = a1;
  v7 = sub_22C3A5908(&qword_27D9BC160, &unk_22C912170);
  sub_22C369914(v7);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v8);
  v178 = &v162 - v9;
  sub_22C36BA0C();
  v172 = sub_22C9063DC();
  sub_22C369824();
  v171 = v10;
  MEMORY[0x28223BE20](v11);
  sub_22C369ABC();
  v170 = v12 - v13;
  sub_22C369930();
  MEMORY[0x28223BE20](v14);
  sub_22C36BA64();
  v167 = v15;
  sub_22C36BA0C();
  v166 = sub_22C90981C();
  sub_22C369824();
  v165 = v16;
  MEMORY[0x28223BE20](v17);
  sub_22C369838();
  v164 = v19 - v18;
  v20 = sub_22C3A5908(&qword_27D9BC230, &qword_22C912430);
  sub_22C369914(v20);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v21);
  v168 = &v162 - v22;
  v23 = sub_22C3A5908(&qword_27D9BB640, &unk_22C912190);
  v24 = sub_22C369914(v23);
  MEMORY[0x28223BE20](v24);
  sub_22C369ABC();
  v179 = (v25 - v26);
  sub_22C369930();
  MEMORY[0x28223BE20](v27);
  sub_22C36BA64();
  v174 = v28;
  sub_22C36BA0C();
  v187 = sub_22C902C9C();
  sub_22C369824();
  v192 = v29;
  MEMORY[0x28223BE20](v30);
  sub_22C369ABC();
  v177 = v31 - v32;
  sub_22C369930();
  MEMORY[0x28223BE20](v33);
  sub_22C36BA64();
  v173 = v34;
  sub_22C36BA0C();
  v35 = sub_22C902D0C();
  sub_22C369824();
  v186 = v36;
  MEMORY[0x28223BE20](v37);
  sub_22C369838();
  v176 = (v39 - v38);
  v40 = sub_22C3A5908(&qword_27D9BC300, &qword_22C912660);
  sub_22C369914(v40);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v41);
  v43 = &v162 - v42;
  v184 = sub_22C3A5908(&qword_27D9BAF30, &unk_22C90FAA0);
  sub_22C36985C();
  MEMORY[0x28223BE20](v44);
  sub_22C369ABC();
  v47 = v45 - v46;
  MEMORY[0x28223BE20](v48);
  v183 = &v162 - v49;
  sub_22C369930();
  MEMORY[0x28223BE20](v50);
  v52 = (&v162 - v51);
  v53 = sub_22C9036EC();
  sub_22C369824();
  v55 = v54;
  MEMORY[0x28223BE20](v56);
  sub_22C369838();
  v59 = v58 - v57;
  v60 = *(v55 + 16);
  v169 = a3;
  v60(v59, a3, v53);
  v61 = sub_22C36EBF0();
  v63 = v62(v61);
  LODWORD(a3) = *MEMORY[0x277D1ECD8];
  v64 = sub_22C36EBF0();
  v65(v64);
  if (v63 != a3)
  {
    goto LABEL_8;
  }

  sub_22C3DB138(v185, v52, &qword_27D9BAF30, &unk_22C90FAA0);
  v66 = *(v184 + 48);
  v67 = v192;
  v68 = v187;
  v69 = (*(v192 + 88))(v52, v187);
  if (v69 != *MEMORY[0x277D1D770])
  {
    (*(v186 + 8))(v52 + v66, v35);
    (*(v67 + 8))(v52, v68);
    goto LABEL_8;
  }

  v70 = v69;
  (*(v67 + 96))(v52, v68);
  v72 = *v52;
  v71 = v52[1];
  v73 = v186 + 8;
  v74 = v52 + v66;
  v75 = v35;
  v163 = *(v186 + 8);
  v163(v74, v35);
  if (qword_27D9BA618 != -1)
  {
    swift_once();
  }

  v76 = sub_22C3A5908(&qword_27D9BC308, &qword_22C912668);
  v77 = sub_22C37AA60(v76, qword_27D9BC2C8);
  sub_22C437928(v77, v72, v71);

  v78 = sub_22C3A5908(&qword_27D9BC310, &unk_22C92CFD0);
  if (sub_22C370B74(v43, 1, v78) == 1)
  {
    sub_22C36DD28(v43, &qword_27D9BC300, &qword_22C912660);
LABEL_8:
    if (qword_27D9BA6A8 != -1)
    {
      sub_22C377BC0();
      swift_once();
    }

    v79 = sub_22C5E935C(v181, v182, qword_27D9E3F80);
    v80 = v183;
    v81 = v35;
    if (!v79)
    {
      goto LABEL_14;
    }

    sub_22C3DB138(v185, v183, &qword_27D9BAF30, &unk_22C90FAA0);
    v82 = *(v184 + 48);
    sub_22C902C7C();
    (*(v192 + 8))(v80, v187);
    if (qword_27D9BA620 != -1)
    {
      sub_22C371698();
      swift_once();
    }

    v83 = sub_22C3A5908(&qword_27D9BC170, &unk_22C912180);
    sub_22C37AA60(v83, qword_27D9BC2E0);
    v84 = v178;
    sub_22C437ADC();

    (*(v186 + 8))(v80 + v82, v35);
    v85 = sub_22C3A5908(&qword_27D9BC178, &unk_22C914830);
    v86 = sub_22C370B74(v84, 1, v85);
    result = sub_22C36DD28(v84, &qword_27D9BC160, &unk_22C912170);
    if (v86 == 1)
    {
LABEL_14:
      v88 = v185;
      sub_22C3DB138(v185, v80, &qword_27D9BAF30, &unk_22C90FAA0);
      v89 = v184;
      v90 = *(v184 + 48);
      sub_22C3DB138(v88, v47, &qword_27D9BAF30, &unk_22C90FAA0);
      v91 = v186;
      v92 = v179;
      (*(v186 + 32))(v179, v47 + *(v89 + 48), v81);
      sub_22C36C640(v92, 0, 1, v81);
      sub_22C602CBC();
      (*(v192 + 8))(v47, v187);
      return (*(v91 + 8))(v80 + v90, v81);
    }

    return result;
  }

  v182 = v73;
  swift_getKeyPath();
  sub_22C9030AC();

  v93 = v188;
  v94 = v189;
  v95 = v190;
  v96 = v191;
  (*(*(v78 - 8) + 8))(v43, v78);
  v97 = MEMORY[0x2318B76D0](v93, v94, v95, v96);
  v99 = v98;

  v100 = v173;
  *v173 = 0x746567726174;
  *(v100 + 8) = 0xE600000000000000;
  v101 = v192;
  v102 = v187;
  (*(v192 + 104))(v100, v70, v187);
  v103 = v174;
  sub_22C605658(v100, v175);
  v106 = *(v101 + 8);
  v105 = v101 + 8;
  v104 = v106;
  v106(v100, v102);
  if (sub_22C370B74(v103, 1, v75) == 1)
  {
    v192 = v75;
    v107 = v97;
    v181 = v104;
    sub_22C36DD28(v103, &qword_27D9BB640, &unk_22C912190);
    v108 = v170;
    sub_22C903F7C();

    v109 = sub_22C9063CC();
    v110 = sub_22C90AADC();

    if (os_log_type_enabled(v109, v110))
    {
      v111 = swift_slowAlloc();
      v112 = swift_slowAlloc();
      v188 = v112;
      *v111 = 136315138;
      *(v111 + 4) = sub_22C36F9F4(v107, v99, &v188);
      sub_22C36FF94(v112);
      sub_22C3699EC();
      sub_22C3699EC();
    }

    (*(v171 + 8))(v108, v172);
    v113 = v185;
    sub_22C902C6C();

    v114 = v183;
    sub_22C3DB138(v113, v183, &qword_27D9BAF30, &unk_22C90FAA0);
    v115 = v179;
    v116 = v192;
    (*(v186 + 32))(v179, v114 + *(v184 + 48), v192);
    sub_22C36C640(v115, 0, 1, v116);
    sub_22C602CBC();
    return v181(v114, v102);
  }

  else
  {
    v117 = *(v186 + 32);
    v178 = (v186 + 32);
    v175 = v117;
    v117(v176, v103, v75);
    v118 = type metadata accessor for ResolvableTool(0);
    v119 = v168;
    sub_22C6056C8(v97, v99, *(v169 + *(v118 + 20)));
    v120 = type metadata accessor for ParameterPromptMap(0);
    if (sub_22C370B74(v119, 1, v120) == 1)
    {
      sub_22C36DD28(v119, &qword_27D9BC230, &qword_22C912430);
      v188 = 0;
      v189 = 0xE000000000000000;
      sub_22C90AF5C();
      sub_22C370594();
      v121 = sub_22C439F18();
      MEMORY[0x2318B7850](v121);

      MEMORY[0x2318B7850](0xD000000000000022, 0x800000022C9305E0);

      MEMORY[0x2318B7850](0xD000000000000035, 0x800000022C930610);

      v122 = v188;
      v123 = v189;
      sub_22C430A48();
      swift_allocError();
      *v124 = v122;
      *(v124 + 8) = v123;
      *(v124 + 16) = 1;
      swift_willThrow();
      sub_22C439F04();
      return v125();
    }

    else
    {
      v181 = v104;
      v192 = v105;
      v126 = v165;
      v127 = v164;
      v128 = v166;
      (*(v165 + 16))(v164, v119, v166);
      sub_22C38B828();
      sub_22C4378D0(v119, v129);
      v130 = sub_22C9097DC();
      v173 = v131;
      v174 = v130;
      (*(v126 + 8))(v127, v128);
      v132 = v167;
      sub_22C903F7C();

      v133 = sub_22C9063CC();
      v134 = sub_22C90AACC();

      if (os_log_type_enabled(v133, v134))
      {
        v135 = swift_slowAlloc();
        v188 = swift_slowAlloc();
        *v135 = 136315394;
        v136 = sub_22C439F18();
        *(v135 + 4) = sub_22C36F9F4(v136, v137, v138);
        *(v135 + 12) = 2080;
        v139 = sub_22C439F18();
        *(v135 + 14) = sub_22C36F9F4(v139, v140, v141);
        _os_log_impl(&dword_22C366000, v133, v134, "[PromptMapperResolver] Resolving shadowed parameter %s to %s", v135, 0x16u);
        swift_arrayDestroy();
        sub_22C3699EC();
        sub_22C3699EC();
      }

      (*(v171 + 8))(v132, v172);
      sub_22C439F18();
      v142 = v185;
      sub_22C902C6C();

      v172 = swift_allocBox();
      v171 = v143;
      v144 = sub_22C3A5908(&qword_27D9BC168, &unk_22C9123C0);
      v170 = swift_allocBox();
      v146 = v145;
      v147 = *(v144 + 48);
      v169 = *(v144 + 64);
      *v145 = 1;
      v148 = swift_allocBox();
      v150 = v149;
      v151 = sub_22C3A5908(&qword_27D9BC1F0, &qword_22C9123B8);
      v152 = swift_allocBox();
      v154 = (v153 + *(v151 + 48));
      v155 = v186;
      (*(v186 + 16))(v153, v176, v75);
      v156 = v173;
      *v154 = v174;
      v154[1] = v156;
      *v150 = v152;
      v157 = *(v155 + 104);
      (v157)(v150, *MEMORY[0x277D1D7B8], v75);
      *&v146[v147] = v148;
      v158 = *MEMORY[0x277D1D7F0];
      (v157)(&v146[v147], v158, v75);
      v159 = v183;
      sub_22C3DB138(v142, v183, &qword_27D9BAF30, &unk_22C90FAA0);
      v175(&v146[v169], v159 + *(v184 + 48), v75);
      *v171 = v170;
      v157();
      v160 = v179;
      *v179 = v172;
      (v157)(v160, v158, v75);
      sub_22C36C640(v160, 0, 1, v75);
      sub_22C602CBC();
      sub_22C439F04();
      v161();
      return v181(v159, v187);
    }
  }
}

uint64_t sub_22C438E40(uint64_t a1, uint64_t a2)
{
  v91 = a1;
  v3 = sub_22C902D0C();
  MEMORY[0x28223BE20](v3 - 8);
  v85 = &v72[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_22C902C5C();
  v82 = *(v5 - 8);
  v83 = v5;
  MEMORY[0x28223BE20](v5);
  v84 = &v72[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_22C3A5908(&qword_27D9BC328, &qword_22C912690);
  MEMORY[0x28223BE20](v7 - 8);
  v90 = &v72[-v8];
  v9 = sub_22C9063DC();
  v80 = *(v9 - 8);
  v81 = v9;
  MEMORY[0x28223BE20](v9);
  v86 = &v72[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_22C3A5908(&qword_27D9BC160, &unk_22C912170);
  MEMORY[0x28223BE20](v11 - 8);
  v79 = &v72[-v12];
  v13 = sub_22C3A5908(&qword_27D9BC300, &qword_22C912660);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v72[-v14];
  v16 = sub_22C3A5908(&qword_27D9BC238, &qword_22C912438);
  MEMORY[0x28223BE20](v16);
  v18 = &v72[-v17];
  v19 = sub_22C902C9C();
  v20 = *(v19 - 8);
  v21 = MEMORY[0x28223BE20](v19);
  v88 = &v72[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v23 = MEMORY[0x28223BE20](v21);
  v78 = &v72[-v24];
  MEMORY[0x28223BE20](v23);
  v26 = &v72[-v25];
  v89 = a2;
  sub_22C3DB138(a2, v18, &qword_27D9BC238, &qword_22C912438);
  v87 = v16;
  v27 = *(v16 + 48);
  v28 = *(v20 + 32);
  v92 = v19;
  v28(v26, v18, v19);
  v29 = sub_22C902C4C();
  v30 = *(v29 - 8);
  v32 = v30 + 8;
  v31 = *(v30 + 8);
  v31(&v18[v27], v29);
  v94 = v26;
  v33 = sub_22C902C7C();
  v35 = v34;
  if (qword_27D9BA618 != -1)
  {
    swift_once();
  }

  v36 = sub_22C3A5908(&qword_27D9BC308, &qword_22C912668);
  v37 = sub_22C37AA60(v36, qword_27D9BC2C8);
  sub_22C437928(v37, v33, v35);

  v38 = sub_22C3A5908(&qword_27D9BC310, &unk_22C92CFD0);
  if (sub_22C370B74(v15, 1, v38) == 1)
  {
    sub_22C36DD28(v15, &qword_27D9BC300, &qword_22C912660);
    sub_22C902C7C();
    if (qword_27D9BA620 != -1)
    {
      swift_once();
    }

    v39 = sub_22C3A5908(&qword_27D9BC170, &unk_22C912180);
    sub_22C37AA60(v39, qword_27D9BC2E0);
    v40 = v79;
    sub_22C437ADC();

    v41 = sub_22C3A5908(&qword_27D9BC178, &unk_22C914830);
    if (sub_22C370B74(v40, 1, v41) == 1)
    {
      sub_22C36DD28(v40, &qword_27D9BC160, &unk_22C912170);
      v42 = v94;
      v43 = v92;
      (*(v20 + 16))(v88, v94, v92);
      sub_22C3DB138(v89, v18, &qword_27D9BC238, &qword_22C912438);
      v44 = v90;
      (*(v30 + 32))(v90, &v18[*(v87 + 48)], v29);
      sub_22C36C640(v44, 0, 1, v29);
      sub_22C602FD0();
      v45 = *(v20 + 8);
      v45(v42, v43);
      return (v45)(v18, v43);
    }

    else
    {
      (*(v20 + 8))(v94, v92);
      return sub_22C36DD28(v40, &qword_27D9BC160, &unk_22C912170);
    }
  }

  else
  {
    v77 = v31;
    v79 = v29;
    swift_getKeyPath();
    sub_22C9030AC();

    v47 = v93[0];
    v48 = v93[1];
    v49 = v93[2];
    v50 = v93[3];
    (*(*(v38 - 8) + 8))(v15, v38);
    v76 = MEMORY[0x2318B76D0](v47, v48, v49, v50);
    v52 = v51;

    v53 = v86;
    sub_22C903F7C();
    v54 = v78;
    v55 = v92;
    (*(v20 + 16))(v78, v94, v92);

    v56 = sub_22C9063CC();
    v57 = sub_22C90AACC();

    if (os_log_type_enabled(v56, v57))
    {
      v58 = v54;
      v59 = swift_slowAlloc();
      v74 = swift_slowAlloc();
      v93[0] = v74;
      *v59 = 136315394;
      v60 = sub_22C902C7C();
      v75 = v32;
      v61 = v60;
      v63 = v62;
      v64 = *(v20 + 8);
      v73 = v57;
      v78 = v64;
      (v64)(v58, v92);
      v65 = sub_22C36F9F4(v61, v63, v93);
      v55 = v92;

      *(v59 + 4) = v65;
      *(v59 + 12) = 2080;
      *(v59 + 14) = sub_22C36F9F4(v76, v52, v93);
      _os_log_impl(&dword_22C366000, v56, v73, "[PromptMapperResolver] Resolving shadowed parameter %s to %s", v59, 0x16u);
      v66 = v74;
      swift_arrayDestroy();
      MEMORY[0x2318B9880](v66, -1, -1);
      MEMORY[0x2318B9880](v59, -1, -1);

      (*(v80 + 8))(v86, v81);
    }

    else
    {

      v78 = *(v20 + 8);
      (v78)(v54, v55);
      (*(v80 + 8))(v53, v81);
    }

    v67 = v89;
    sub_22C902C6C();

    (*(v82 + 104))(v84, *MEMORY[0x277D1D760], v83);
    sub_22C3DB138(v67, v18, &qword_27D9BC238, &qword_22C912438);
    v68 = *(v87 + 48);
    sub_22C902C1C();
    v69 = v79;
    v77(&v18[v68], v79);
    v70 = v90;
    sub_22C902C2C();
    v71 = v78;
    (v78)(v18, v55);
    sub_22C36C640(v70, 0, 1, v69);
    sub_22C602FD0();
    return v71(v94, v55);
  }
}

void *sub_22C43985C(void *result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v5 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    sub_22C439A38(v5, a2, a3);
    v7 = v6;

    return v7;
  }

  return result;
}

void *sub_22C4398D4(_BYTE *a1)
{
  v2 = a1;
  v9[1] = *MEMORY[0x277D85DE8];
  v3 = a1[32];
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v8 = swift_slowAlloc();
      v2 = sub_22C43985C(v8, v4, v2);
      MEMORY[0x2318B9880](v8, -1, -1);
      return v2;
    }
  }

  MEMORY[0x28223BE20](a1);
  v5 = v9 - ((8 * v4 + 15) & 0x3FFFFFFFFFFFFFF0);
  sub_22C88FAFC(0, v4, v5);
  sub_22C439A38(v5, v4, v2);
  if (!v1)
  {
    return v6;
  }

  swift_willThrow();
  return v2;
}

void sub_22C439A38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v37[1] = a2;
  v38 = a1;
  v54 = sub_22C3A5908(&qword_27D9BAF30, &unk_22C90FAA0);
  MEMORY[0x28223BE20](v54);
  v53 = v37 - v4;
  v52 = sub_22C902D0C();
  v5 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v51 = v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_22C902C9C();
  v7 = MEMORY[0x28223BE20](v50);
  v49 = v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v58 = v37 - v10;
  v11 = 0;
  v55 = a3;
  v12 = *(a3 + 64);
  v41 = a3 + 64;
  v13 = 1 << *(a3 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & v12;
  v39 = 0;
  v40 = (v13 + 63) >> 6;
  v47 = v5 + 16;
  v48 = v9 + 16;
  v46 = *MEMORY[0x277D1D770];
  v59 = v9;
  v44 = v9 + 8;
  v45 = v9 + 104;
  v60 = v5;
  v43 = v5 + 8;
  v16 = v50;
  while (v15)
  {
    v17 = __clz(__rbit64(v15));
    v57 = (v15 - 1) & v15;
LABEL_11:
    v20 = v17 | (v11 << 6);
    v21 = v55;
    v22 = v58;
    v23 = *(v55 + 48) + *(v59 + 72) * v20;
    v56 = *(v59 + 16);
    v56(v58, v23, v16);
    v24 = *(v21 + 56);
    v25 = *(v60 + 72);
    v42 = v20;
    v26 = *(v60 + 16);
    v28 = v51;
    v27 = v52;
    v26(v51, v24 + v25 * v20, v52);
    v29 = v53;
    v56(v53, v22, v16);
    v30 = v28;
    v31 = v27;
    v26((v29 + *(v54 + 48)), v28, v27);
    v32 = v49;
    *v49 = 7368801;
    *(v32 + 1) = 0xE300000000000000;
    v33 = v59;
    (*(v59 + 104))(v32, v46, v16);
    v34 = sub_22C902C8C();
    v35 = *(v33 + 8);
    v35(v32, v16);
    sub_22C36DD28(v29, &qword_27D9BAF30, &unk_22C90FAA0);
    (*(v60 + 8))(v30, v31);
    v35(v58, v16);
    v15 = v57;
    if (v34)
    {
      *(v38 + ((v42 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v42;
      if (__OFADD__(v39++, 1))
      {
        __break(1u);
LABEL_15:
        sub_22C838F9C();
        return;
      }
    }
  }

  v18 = v11;
  while (1)
  {
    v11 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v11 >= v40)
    {
      goto LABEL_15;
    }

    v19 = *(v41 + 8 * v11);
    ++v18;
    if (v19)
    {
      v17 = __clz(__rbit64(v19));
      v57 = (v19 - 1) & v19;
      goto LABEL_11;
    }
  }

  __break(1u);
}

uint64_t sub_22C439EB0(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_22C3AC1A0(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_22C439F24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void (*a10)(uint64_t), uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22C370030();
  a19 = v24;
  a20 = v25;
  v383 = v20;
  v384 = v26;
  v385 = v27;
  v29 = v28;
  v373 = v30;
  sub_22C9063DC();
  sub_22C369824();
  v366 = v32;
  v367 = v31;
  MEMORY[0x28223BE20](v31);
  sub_22C3698A8();
  v368 = v33;
  v34 = sub_22C3A5908(&qword_27D9BB640, &unk_22C912190);
  v35 = sub_22C369914(v34);
  MEMORY[0x28223BE20](v35);
  v356 = sub_22C4416E8(v36, v352);
  sub_22C369824();
  v355 = v37;
  MEMORY[0x28223BE20](v38);
  sub_22C3698A8();
  sub_22C3698F8(v39);
  v360 = sub_22C902CDC();
  sub_22C369824();
  v359 = v40;
  MEMORY[0x28223BE20](v41);
  sub_22C3698A8();
  sub_22C3698F8(v42);
  v363 = sub_22C902D1C();
  sub_22C369824();
  v362 = v43;
  MEMORY[0x28223BE20](v44);
  sub_22C3698A8();
  sub_22C3698F8(v45);
  v46 = sub_22C902D0C();
  sub_22C369824();
  v48 = v47;
  MEMORY[0x28223BE20](v49);
  sub_22C369ABC();
  v374 = v50 - v51;
  sub_22C369930();
  MEMORY[0x28223BE20](v52);
  sub_22C36BA58();
  v378.isa = v53;
  sub_22C369930();
  MEMORY[0x28223BE20](v54);
  sub_22C36BA58();
  v371 = v55;
  sub_22C369930();
  MEMORY[0x28223BE20](v56);
  sub_22C36BA58();
  v370 = v57;
  sub_22C369930();
  MEMORY[0x28223BE20](v58);
  sub_22C36BA58();
  v372 = v59;
  sub_22C369930();
  MEMORY[0x28223BE20](v60);
  sub_22C36BA58();
  sub_22C3698D4();
  v62 = MEMORY[0x28223BE20](v61);
  v64 = &v352 - v63;
  MEMORY[0x28223BE20](v62);
  sub_22C36BA58();
  v369 = v65;
  sub_22C369930();
  MEMORY[0x28223BE20](v66);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v67);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v68);
  sub_22C3705C8();
  v70 = MEMORY[0x28223BE20](v69);
  v72 = &v352 - v71;
  MEMORY[0x28223BE20](v70);
  sub_22C36D6DC();
  MEMORY[0x28223BE20](v73);
  sub_22C38C344();
  MEMORY[0x28223BE20](v74);
  sub_22C37B03C();
  MEMORY[0x28223BE20](v75);
  sub_22C36BA58();
  v381 = v76;
  sub_22C369930();
  v78 = MEMORY[0x28223BE20](v77);
  sub_22C441744(v78, v79, v80, v81, v82, v83, v84, v85, v352);
  v86 = *(v48 + 16);
  v380 = v29;
  v87 = v29;
  v88 = v48 + 16;
  v386 = v86;
  (v86)(v22, v87, v46);
  v89 = sub_22C372158();
  v91 = v90(v89);
  v92 = v91 == *MEMORY[0x277D1D7C8] || v91 == *MEMORY[0x277D1D798];
  if (v92)
  {
    sub_22C441738();
    v93 = sub_22C372158();
    v94(v93);
    v95 = v383;
    goto LABEL_7;
  }

  v375 = v48;
  v377 = v46;
  v92 = v91 == *MEMORY[0x277D1D7E8];
  HIDWORD(v353) = v91;
  if (!v92)
  {
    if (v91 == *MEMORY[0x277D1D7E0])
    {
      v106 = v375;
      v46 = v377;
      (*(v375 + 96))(v22, v377);
      v107.isa = v22->isa;
      sub_22C3A5908(&qword_27D9BC330, &qword_22C9126C8);
      v378.isa = v107.isa;
      swift_projectBox();
      v108 = sub_22C375E20();
      v386(v108);
      v109 = swift_allocBox();
      v111 = sub_22C37B238(v109, v110);
      sub_22C37B994(v111, v112, v113, v114, v115, v116, v117, v118, v352, v353, v354, v355, v356, v357, v358, v359, v360, v361, v362, v363);
      v95 = v20;
      if (v20)
      {
        v119 = sub_22C379FC8();
        v120(v119);
LABEL_18:
        swift_deallocBox();
LABEL_58:

        goto LABEL_59;
      }

      v376 = v48 + 16;
      v188 = sub_22C379FC8();
      v189(v188);
      v190 = v381;
      *v381 = v107;
      v96 = v190;
      v191 = sub_22C369C00();
      v192(v191);

      v48 = v106;
      goto LABEL_35;
    }

    v46 = v377;
    if (v91 == *MEMORY[0x277D1D7D8])
    {
      v121 = sub_22C372158();
      v122(v121);
      isa = v22->isa;
      v124 = sub_22C3A5908(&qword_27D9BC168, &unk_22C9123C0);
      v378.isa = isa;
      v125 = swift_projectBox();
      v126 = *v125;
      v127 = *(v124 + 64);
      v128 = v386;
      (v386)(v23, &v125[*(v124 + 48)], v46);
      v376 = v88;
      v128(v72, &v125[v127], v46);
      v374 = swift_allocBox();
      v129 = v46;
      *v130 = v126;
      v131 = v384;
      v132 = v385;
      v133 = v383;
      sub_22C439F24(v23, v384, v385, v134, v135, v136, v137, v138, v352, v353, v354, v355, v356, v357, v358, v359, v360, v361, v362, v363);
      if (v133)
      {
        v144 = *(v375 + 8);
        v144(v72, v129);
        v144(v23, v129);
        swift_deallocBox();

LABEL_59:
        sub_22C36FB20();
        return;
      }

      sub_22C439F24(v72, v131, v132, v139, v140, v141, v142, v143, v352, v353, v354, v355, v356, v357, v358, v359, v360, v361, v362, v363);
      v48 = v375;
      v289 = *(v375 + 8);
      v46 = v377;
      v289(v72, v377);
      v98 = v384;
      v289(v23, v46);
      v96 = v381;
      *v381 = v374;
      v290 = sub_22C369C00();
      v291(v290);

      v95 = 0;
LABEL_36:
      v193 = *(v48 + 32);
      v194 = v382;
      v193(v382, v96, v46);
      v195 = v379;
      (v98)(v194);
      if (v95)
      {
        (*(v48 + 8))(v194, v46);
      }

      else
      {
        if (sub_22C370B74(v195, 1, v46) == 1)
        {
          sub_22C43ED8C(v195);
          v196 = v382;
        }

        else
        {
          v197 = v372;
          v198 = sub_22C44172C();
          (v193)(v198);
          v199 = v368;
          sub_22C903F7C();
          v200 = v386;
          (v386)(v370, v380, v46);
          v200(v371, v197, v46);
          v201 = sub_22C9063CC();
          v202 = sub_22C90AACC();
          if (os_log_type_enabled(v201, v202))
          {
            v203 = swift_slowAlloc();
            LODWORD(v385) = v202;
            v204 = v370;
            v205 = v203;
            v386 = swift_slowAlloc();
            a10 = v386;
            *v205 = 136380931;
            v206 = sub_22C43EDF4();
            v383 = 0;
            v381 = v206;
            v207 = sub_22C90B47C();
            v384 = v201;
            v208 = v207;
            v209 = v48;
            v210 = v46;
            v212 = v211;
            v213 = *(v209 + 8);
            v375 = v209 + 8;
            v213(v204, v210);
            sub_22C36F9F4(v208, v212, &a10);
            sub_22C3758E0();
            v46 = v210;

            *(v205 + 4) = v204;
            *(v205 + 12) = 2081;
            v214 = v371;
            sub_22C90B47C();
            v213(v214, v210);
            v215 = sub_22C38644C();
            v218 = sub_22C36F9F4(v215, v216, v217);

            *(v205 + 14) = v218;
            v219 = v384;
            _os_log_impl(&dword_22C366000, v384, v385, "[PromptMapperResolver] Modified program AST node: %{private}s -> %{private}s", v205, 0x16u);
            swift_arrayDestroy();
            sub_22C3699EC();
            sub_22C3699EC();

            (*(v366 + 8))(v368, v367);
            v213(v382, v46);
          }

          else
          {

            v220 = *(v48 + 8);
            v220(v371, v46);
            v220(v370, v46);
            (*(v366 + 8))(v199, v367);
            v220(v382, v46);
          }

          v196 = v372;
        }

        v193(v373, v196, v46);
      }

      goto LABEL_59;
    }

    if (v91 == *MEMORY[0x277D1D7B8])
    {
      v166 = v48 + 16;
      v167 = v375;
      v168 = sub_22C372158();
      v169(v168);
      v170 = v22->isa;
      v171 = sub_22C3A5908(&qword_27D9BC1F0, &qword_22C9123B8);
      v378.isa = v170;
      v172 = (swift_projectBox() + *(v171 + 48));
      v173 = v46;
      v174 = v172[1];
      v374 = *v172;
      v175 = sub_22C44172C();
      v386(v175);
      v176 = swift_allocBox();
      v178 = v177;

      sub_22C37B994(v21, v179, v180, v181, v182, v183, v184, v185, v352, v353, v354, v355, v356, v357, v358, v359, v360, v361, v362, v363);
      v383 = v20;
      if (v20)
      {
        v186 = sub_22C37B988();
        v187(v186);

        swift_deallocBox();

        goto LABEL_59;
      }

      v376 = v166;
      v269 = (v178 + *(v171 + 48));
      v270 = sub_22C37B988();
      v271(v270);
      *v269 = v374;
      v269[1] = v174;
      v96 = v381;
      *v381 = v176;
      v272 = sub_22C369C00();
      v273(v272);

      v95 = v383;
      v46 = v173;
      v48 = v167;
LABEL_35:
      v98 = v22;
      goto LABEL_36;
    }

    v48 = v375;
    if (v91 == *MEMORY[0x277D1D7D0])
    {
      v228 = sub_22C3716AC();
      v229(v228);
      v230.isa = v22->isa;
      sub_22C3A5908(&qword_27D9BC208, &unk_22C912400);
      v378.isa = v230.isa;
      swift_projectBox();
      v231 = v365;
      v232 = sub_22C37B9B0();
      v233 = v386;
      v386(v232);
      v234 = v364;
      v235 = sub_22C44172C();
      v233(v235);
      v374 = swift_allocBox();
      v369 = v236;
      v237 = v88;
      v98 = v384;
      v238 = v385;
      v239 = v383;
      sub_22C439F24(v231, v384, v385, v240, v241, v242, v243, v244, v352, v353, v354, v355, v356, v357, v358, v359, v360, v361, v362, v363);
      if (v239)
      {
        v250 = *(v48 + 8);
        v251 = sub_22C36EC6C();
        v250(v251);
        v252 = sub_22C379FC8();
        v250(v252);
        goto LABEL_18;
      }

      v303 = v374;
      v376 = v237;
      sub_22C439F24(v234, v98, v238, v245, v246, v247, v248, v249, v352, v353, v354, v355, v356, v357, v358, v359, v360, v361, v362, v363);
      v95 = 0;
      v323 = v375;
      v324 = *(v375 + 8);
      v325 = sub_22C36EC6C();
      v324(v325);
      v326 = sub_22C44176C();
      (v324)(v326, v46);
      v48 = v323;
      v96 = v381;
      *v381 = v303;
      v327 = sub_22C369C00();
      v328(v327);
      goto LABEL_14;
    }

    if (v91 == *MEMORY[0x277D1D7C0])
    {
      v376 = v88;
      v253 = sub_22C3716AC();
      v254(v253);
      v255.isa = v22->isa;
      v256 = sub_22C3A5908(&qword_27D9BC198, &unk_22C916710);
      v378.isa = v255.isa;
      swift_projectBox();
      sub_22C379858();
      v257 = v362;
      v258 = *(v362 + 16);
      v259 = v361;
      v260 = v363;
      v258(v361);
      v374 = swift_allocBox();
      v262 = v261;
      (v258)(v261, v259, v260);

      v98 = v384;
      v264 = v383;
      v265 = sub_22C440A10(v263, v384, v385);
      if (v264)
      {

        v266 = *(v257 + 8);
        v267 = sub_22C36EC8C();
        v266(v267);
        v268 = sub_22C441720();
        v266(v268);
        swift_deallocBox();

        goto LABEL_59;
      }

      v316 = v265;

      v317 = *(v256 + 48);
      v318 = sub_22C36EC8C();
      v319(v318);
      *(v262 + v317) = v316;
      v96 = v381;
      v48 = v375;
      *v381 = v374;
      v320 = sub_22C369C00();
      v321 = v377;
      v322(v320);

      v95 = 0;
      v46 = v321;
      goto LABEL_36;
    }

    if (v91 == *MEMORY[0x277D1D7B0])
    {
      v376 = v88;
      v292 = sub_22C3716AC();
      v293(v292);
      v378.isa = v22->isa;
      v294 = swift_projectBox();
      v295 = v359;
      v296 = v357;
      v297 = v360;
      (*(v359 + 16))(v357, v294, v360);
      v374 = swift_allocBox();
      v369 = v298;
      v299 = v358;
      sub_22C902CCC();
      v300 = sub_22C902CAC();
      v301 = v384;
      v302 = v383;
      sub_22C43EE4C(v300, v384, v385);
      v95 = v302;
      if (v302)
      {

        (*(v355 + 8))(v299, v356);
        (*(v295 + 8))(v296, v297);
        goto LABEL_18;
      }

      sub_22C902CBC();
      (*(v295 + 8))(v296, v297);
      v96 = v381;
      *v381 = v374;
      v343 = sub_22C369C00();
      v344(v343);

      v98 = v301;
      goto LABEL_36;
    }

    if (v91 == *MEMORY[0x277D1D7F0])
    {
      v304 = v91;
      v305 = sub_22C3716AC();
      v306(v305);
      v307 = swift_projectBox();
      (v386)(v64, v307, v46);
      v308 = swift_allocBox();
      sub_22C37B994(v64, v309, v310, v311, v312, v313, v314, v315, v352, v353, v354, v355, v356, v357, v358, v359, v360, v361, v362, v363);
      if (v20)
      {
        (*(v48 + 8))(v64, v46);
        swift_deallocBox();

        goto LABEL_59;
      }

      v376 = v88;
      sub_22C441738();
      v348(v64, v46);
      v349 = v381;
      *v381 = v308;
      (*(v48 + 104))(v349, v304, v46);

      v95 = 0;
      v96 = v349;
      goto LABEL_35;
    }

    if (v91 == *MEMORY[0x277D1D7A0])
    {
      v329 = v91;
      v330 = sub_22C3716AC();
      v331(v330);
      swift_projectBox();
      v332 = sub_22C37BD8C(&v386);
      v386(v332);
      v333 = swift_allocBox();
      sub_22C37B994(v23, v334, v335, v336, v337, v338, v339, v340, v352, v353, v354, v355, v356, v357, v358, v359, v360, v361, v362, v363);
      v95 = v20;
      if (v20)
      {
        v341 = sub_22C37BD80();
        v342(v341);
        swift_deallocBox();
        goto LABEL_58;
      }

      v376 = v88;
      sub_22C441738();
      v350 = sub_22C37BD80();
      v351(v350);
      v96 = v381;
      *v381 = v333;
      (*(v48 + 104))(v96, v329, v46);

      goto LABEL_35;
    }

    v345 = v91 == *MEMORY[0x277D1D7F8] || v91 == *MEMORY[0x277D1D7A8];
    v95 = v383;
    if (!v345)
    {
      v376 = v88;
      v96 = v381;
      sub_22C43E6DC(v380, v381);
      sub_22C441738();
      v346 = sub_22C372158();
      v347(v346);
      goto LABEL_8;
    }

LABEL_7:
    v96 = v381;
    v97 = sub_22C44172C();
    v376 = v88;
    v386(v97);
LABEL_8:
    v98 = v384;
    goto LABEL_36;
  }

  v376 = v48 + 16;
  v48 = v375;
  (*(v375 + 96))(v22, v377);
  v99 = v22->isa;
  sub_22C3705B4();
  v95 = v383;
  v98 = v384;
  v102 = v386;
  v96 = v381;
  v103 = v369;
  if (!v92)
  {
    v46 = v377;
    (v386)(v369, v380, v377);
LABEL_13:
    v104 = sub_22C441720();
    v105(v104);
LABEL_14:

    goto LABEL_36;
  }

  v365 = v101;
  v360 = v100;
  v359 = v99;
  sub_22C36D6EC();
  if (v145 != 4)
  {
    v221 = swift_allocObject();
    v222 = sub_22C37BD8C(&a18);
    v46 = v360;
    sub_22C4403D8(v222, v360, 5);
    v223 = sub_22C36D390();
    v225 = sub_22C4400F0(v223, v224, v385);
    if (v95)
    {
      v226 = sub_22C37BD80();
      sub_22C4242E4(v226, v227, 5);
LABEL_57:
      sub_22C36D6EC();
      swift_deallocUninitializedObject();
      goto LABEL_58;
    }

    v274 = v225;
    v275 = sub_22C37BD80();
    sub_22C4242E4(v275, v276, 5);
    *(v221 + 16) = v274;
    *(v221 + 24) = 0;
    *(v221 + 32) = 5;
    *v103 = v221;
    v277 = sub_22C377384();
    v278(v277);
    v96 = v381;
    goto LABEL_13;
  }

  v146 = swift_allocObject();
  v147 = *(v365 + 16);
  v148 = MEMORY[0x277D84F90];
  if (!v147)
  {
LABEL_60:
    sub_22C441778(v146);
    v287 = sub_22C377384();
    v288(v287);
    goto LABEL_13;
  }

  v358 = v146;
  v149 = v147;
  sub_22C4403D8(v365, v360, 4);
  a10 = v148;
  v362 = v149;
  sub_22C3B69C4(0, v149, 0);
  v150 = sub_22C44176C();
  v151 = 0;
  v152 = a10;
  v361 = (*(v48 + 80) + 32) & ~*(v48 + 80);
  v363 = v150 + v361;
  v364 = v48 + 8;
  while (v151 < *(v150 + 16))
  {
    v153 = v374;
    v46 = v377;
    v102(v374, v363 + *(v48 + 72) * v151, v377);
    sub_22C439F24(v153, v98, v385, v154, v155, v156, v157, v158, v352, v353, v354, v355, v356, v357, v358, v359, v360, v361, v362, v363);
    if (v95)
    {
      sub_22C44176C();
      sub_22C376640();
      sub_22C4242E4(v279, v280, v281);
      v282 = sub_22C372158();
      v283(v282);

      goto LABEL_57;
    }

    v159 = sub_22C372158();
    v160(v159);
    a10 = v152;
    v162 = *(v152 + 2);
    v161 = *(v152 + 3);
    if (v162 >= v161 >> 1)
    {
      v165 = sub_22C373290(v161);
      sub_22C3B69C4(v165, v162 + 1, 1);
      v152 = a10;
    }

    ++v151;
    *(v152 + 2) = v162 + 1;
    v163 = sub_22C441758(&a14);
    v164(v163, v378.isa, v46);
    v95 = 0;
    v48 = v375;
    v98 = v384;
    v102 = v386;
    v150 = v365;
    if (v362 == v151)
    {
      sub_22C376640();
      sub_22C4242E4(v284, v285, v286);
      v96 = v381;
      v146 = v358;
      goto LABEL_60;
    }
  }

  __break(1u);
}

void sub_22C43B5B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22C370030();
  a19 = v23;
  a20 = v24;
  v393 = v20;
  v26 = v25;
  v28 = v27;
  v382 = v29;
  sub_22C9063DC();
  sub_22C369824();
  v377 = v31;
  v378 = v30;
  MEMORY[0x28223BE20](v30);
  sub_22C3698A8();
  v388 = v32;
  v33 = sub_22C3A5908(&qword_27D9BB640, &unk_22C912190);
  v34 = sub_22C369914(v33);
  MEMORY[0x28223BE20](v34);
  v385 = &v357 - v35;
  v362 = sub_22C901FAC();
  sub_22C369824();
  v361 = v36;
  MEMORY[0x28223BE20](v37);
  sub_22C3698A8();
  sub_22C3698F8(v38);
  v366 = sub_22C902CDC();
  sub_22C369824();
  v365 = v39;
  MEMORY[0x28223BE20](v40);
  sub_22C3698A8();
  sub_22C3698F8(v41);
  v369 = sub_22C902D1C();
  sub_22C369824();
  v368 = v42;
  MEMORY[0x28223BE20](v43);
  sub_22C3698A8();
  sub_22C3698F8(v44);
  v45 = sub_22C902D0C();
  sub_22C369824();
  v47 = v46;
  MEMORY[0x28223BE20](v48);
  sub_22C369ABC();
  v375 = (v49 - v50);
  sub_22C369930();
  MEMORY[0x28223BE20](v51);
  sub_22C36BA58();
  v380 = v52;
  sub_22C369930();
  MEMORY[0x28223BE20](v53);
  sub_22C36BA58();
  v383 = v54;
  sub_22C369930();
  MEMORY[0x28223BE20](v55);
  sub_22C36BA58();
  v376 = v56;
  sub_22C369930();
  MEMORY[0x28223BE20](v57);
  sub_22C36BA58();
  v384 = v58;
  sub_22C369930();
  MEMORY[0x28223BE20](v59);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v60);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v61);
  sub_22C36BA58();
  v374 = v62;
  sub_22C369930();
  MEMORY[0x28223BE20](v63);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v64);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v65);
  sub_22C37B03C();
  MEMORY[0x28223BE20](v66);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v67);
  sub_22C36BA58();
  v373 = v68;
  sub_22C369930();
  v70 = MEMORY[0x28223BE20](v69);
  v72 = &v357 - v71;
  MEMORY[0x28223BE20](v70);
  sub_22C36D6DC();
  MEMORY[0x28223BE20](v73);
  sub_22C36BA58();
  v386 = v74;
  sub_22C369930();
  v76 = MEMORY[0x28223BE20](v75);
  sub_22C441744(v76, v77, v78, v79, v80, v81, v82, v83, v357);
  v84 = *(v47 + 16);
  swift_bridgeObjectRetain_n();
  v387 = v28;
  sub_22C44178C();
  v390 = (v47 + 16);
  v391 = v84;
  v84();
  v85 = sub_22C388EF4();
  v87 = v86(v85);
  v88 = *MEMORY[0x277D1D7C8];
  v392 = v26;
  if (v87 == v88)
  {
    v89 = *(v47 + 8);
    sub_22C37B22C();
    swift_bridgeObjectRetain_n();
    v90 = sub_22C388EF4();
    v89(v90);
    v91 = v47;
LABEL_5:
    v93 = v388;
    v94 = v386;
LABEL_6:
    sub_22C44178C();
    v95();
LABEL_7:
    v96 = *(v91 + 32);
    v97 = v389;
    v96(v389, v94, v45);
    v98 = v385;
    v99 = sub_22C379FC8();
    v100 = v393;
    sub_22C423318(v99, v101, v392, v102);
    v393 = v100;
    if (!v100)
    {
      if (sub_22C370B74(v98, 1, v45) == 1)
      {
        sub_22C43ED8C(v98);
        v103 = v389;
      }

      else
      {
        v113 = v384;
        v96(v384, v98, v45);
        sub_22C903F7C();
        v114 = v376;
        sub_22C44178C();
        v115 = v391;
        v391();
        (v115)(v383, v113, v45);
        v116 = sub_22C9063CC();
        LODWORD(v391) = sub_22C90AACC();
        if (os_log_type_enabled(v116, v391))
        {
          v117 = swift_slowAlloc();
          v390 = v117;
          v387 = swift_slowAlloc();
          *v117 = 136380931;
          v385 = sub_22C43EDF4();
          v386 = v116;
          v118 = sub_22C90B47C();
          v119 = *(v91 + 8);
          v119(v114, v45);
          v381 = v91 + 8;
          v120 = sub_22C379FC8();
          sub_22C36F9F4(v120, v121, v122);
          sub_22C3758E0();

          v123 = v390;
          *(v390 + 1) = v118;
          *(v123 + 6) = 2081;
          sub_22C90B47C();
          v124 = sub_22C372164();
          (v119)(v124);
          v125 = sub_22C370114();
          v128 = sub_22C36F9F4(v125, v126, v127);

          v129 = v390;
          *(v390 + 14) = v128;
          v130 = v386;
          _os_log_impl(&dword_22C366000, v386, v391, "[PromptMapperResolver] Modified program AST node: %{private}s -> %{private}s", v129, 0x16u);
          swift_arrayDestroy();
          sub_22C3699EC();
          sub_22C3699EC();

          (*(v377 + 8))(v388, v378);
          v119(v389, v45);
        }

        else
        {

          v148 = *(v91 + 8);
          v148(v383, v45);
          v149 = sub_22C372164();
          (v148)(v149);
          (*(v377 + 8))(v93, v378);
          v148(v389, v45);
        }

        v103 = v384;
      }

      v96(v382, v103, v45);
      swift_bridgeObjectRelease_n();
      goto LABEL_25;
    }

    (*(v91 + 8))(v97, v45);
    swift_bridgeObjectRelease_n();
LABEL_9:
    swift_bridgeObjectRelease_n();
LABEL_25:
    sub_22C36FB20();
    return;
  }

  v381 = v47;
  v379 = v45;
  if (v87 == *MEMORY[0x277D1D798])
  {
    v91 = v381;
    v92 = *(v381 + 8);
    swift_bridgeObjectRetain_n();
    v45 = v379;
    v92(v22, v379);
    goto LABEL_5;
  }

  v104 = v87 == *MEMORY[0x277D1D7E8];
  v105 = v391;
  HIDWORD(v358) = v87;
  if (!v104)
  {
    if (v87 == *MEMORY[0x277D1D7E0])
    {
      v131 = v381;
      v132 = v379;
      (*(v381 + 96))(v22, v379);
      v133 = sub_22C3A5908(&qword_27D9BC330, &qword_22C9126C8);
      v134 = swift_projectBox();
      v135 = *v134;
      (v105)(v72, &v134[*(v133 + 48)], v132);
      v136 = swift_allocBox();
      *v137 = v135;
      v138 = v392;
      swift_bridgeObjectRetain_n();
      v139 = v393;
      sub_22C43B5B0(v72, v138, v140, v141, v142, v143, v144, v145, v357, v358, v359, v360, v361, v362, v363, v364, v365, v366, v367, v368);
      if (v139)
      {
        v146 = sub_22C36FC08();
        v147(v146);
        swift_deallocBox();
        swift_bridgeObjectRelease_n();

        goto LABEL_9;
      }

      v393 = 0;
      v215 = sub_22C36FC08();
      v216(v215);
      v94 = v386;
      v386->isa = v136;
      v217 = sub_22C4416C8();
      v218(v217);

      v45 = v132;
      v91 = v131;
      goto LABEL_77;
    }

    if (v87 == *MEMORY[0x277D1D7D8])
    {
      v150 = v381;
      v151 = v379;
      (*(v381 + 96))(v22, v379);
      v152 = sub_22C3A5908(&qword_27D9BC168, &unk_22C9123C0);
      v153 = sub_22C37ABD4();
      v154 = *v153;
      v155 = *(v152 + 64);
      v156 = v373;
      v157 = v391;
      (v391)(v373, &v153[*(v152 + 48)], v151);
      v158 = &v153[v155];
      v159 = v372;
      (v157)(v372, v158, v151);
      v375 = swift_allocBox();
      v160 = *(v152 + 48);
      *v161 = v154;
      v162 = v392;
      swift_bridgeObjectRetain_n();
      v163 = v393;
      sub_22C43B5B0(v156, v162, v164, v165, v166, v167, v168, v169, v357, v358, v359, v360, v361, v362, v363, v364, v365, v366, v367, v368);
      if (v163)
      {
        v170 = *(v150 + 8);
        v170(v159, v151);
        v171 = sub_22C36D390();
        (v170)(v171);
        swift_deallocBox();
        swift_bridgeObjectRelease_n();

        goto LABEL_9;
      }

      v393 = v160;

      v241 = sub_22C36EC8C();
      sub_22C43B5B0(v241, v242, v243, v244, v245, v246, v247, v248, v357, v358, v359, v360, v361, v362, v363, v364, v365, v366, v367, v368);
      v277 = v381;
      v278 = *(v381 + 8);
      v279 = v379;
      v278(v159, v379);
      v280 = sub_22C36D390();
      (v278)(v280);
      v91 = v277;
      v45 = v279;
      v94 = v386;
      v386->isa = v375;
      v281 = sub_22C4416C8();
      v282(v281);

      v393 = 0;
      goto LABEL_77;
    }

    v45 = v379;
    if (v87 == *MEMORY[0x277D1D7B8])
    {
      v91 = v381;
      v196 = sub_22C3885CC();
      v197(v196);
      v198 = v45;
      v199 = sub_22C3A5908(&qword_27D9BC1F0, &qword_22C9123B8);
      v200 = sub_22C37ABD4();
      v201 = (v200 + *(v199 + 48));
      v202 = v201[1];
      v375 = *v201;
      (v391)(v21, v200, v198);
      v203 = swift_allocBox();
      v205 = v204;
      sub_22C374A5C();
      swift_bridgeObjectRetain_n();

      v206 = sub_22C372158();
      v207 = v393;
      sub_22C43B5B0(v206, v208, v209, v210, v211, v212, v213, v214, v357, v358, v359, v360, v361, v362, v363, v364, v365, v366, v367, v368);
      v393 = v207;
      if (v207)
      {
        (*(v91 + 8))(v21, v198);

LABEL_60:
        swift_deallocBox();
        sub_22C374A5C();
        swift_bridgeObjectRelease_n();
        goto LABEL_61;
      }

      v264 = (v205 + *(v199 + 48));
      (*(v91 + 8))(v21, v198);
      *v264 = v375;
      v264[1] = v202;
      v265 = v386;
      v386->isa = v203;
      sub_22C4416DC();
      v266();

      v45 = v198;
      goto LABEL_53;
    }

    if (v87 != *MEMORY[0x277D1D7D0])
    {
      if (v87 == *MEMORY[0x277D1D7C0])
      {
        v249 = v381;
        v250 = sub_22C3885CC();
        v251(v250);
        v252 = sub_22C3A5908(&qword_27D9BC198, &unk_22C916710);
        sub_22C37ABD4();
        sub_22C379858();
        v253 = v368;
        v254 = *(v368 + 16);
        v254(v367);
        v375 = swift_allocBox();
        v256 = sub_22C36EC78(v375, v255);
        v254(v256);
        v257 = v392;
        sub_22C374A5C();
        swift_bridgeObjectRetain_n();

        v259 = v393;
        v260 = sub_22C440E3C(v258, v257);
        v393 = v259;
        if (v259)
        {

          v261 = *(v253 + 8);
          v262 = sub_22C36CC9C();
          v261(v262);
          v263 = sub_22C37B988();
          v261(v263);
          goto LABEL_60;
        }

        v317 = v260;

        v318 = *(v252 + 48);
        v319 = sub_22C36CC9C();
        v320(v319);
        *(v84 + v318) = v317;
        v321 = v386;
        v386->isa = v375;
        sub_22C3758EC();
        sub_22C4416DC();
        v45 = v379;
        v322();

        v91 = v249;
        v94 = v321;
      }

      else if (v87 == *MEMORY[0x277D1D7B0])
      {
        v91 = v381;
        v283 = sub_22C3885CC();
        v284(v283);
        v380 = *v22;
        v285 = swift_projectBox();
        (*(v365 + 16))(v363, v285, v366);
        v375 = swift_allocBox();
        sub_22C37B22C();
        swift_bridgeObjectRetain_n();
        v286 = v364;
        sub_22C902CCC();
        sub_22C902CAC();
        sub_22C3758E0();

        v287 = sub_22C379FC8();
        v288 = v393;
        sub_22C43F46C(v287, v289);
        v393 = v288;
        if (v288)
        {

          (*(v361 + 8))(v286, v362);
          v290 = sub_22C36FC08();
          v291(v290);
          goto LABEL_60;
        }

        sub_22C902CBC();
        v341 = sub_22C36FC08();
        v342(v341);
        v94 = v386;
        v386->isa = v375;
        v343 = sub_22C4416C8();
        v45 = v379;
        v344(v343);
      }

      else
      {
        v300 = v393;
        v301 = v391;
        if (v87 == *MEMORY[0x277D1D7F0])
        {
          v302 = v381;
          v303 = sub_22C3885CC();
          v304(v303);
          v305 = swift_projectBox();
          (v301)(v360, v305, v45);
          v306 = swift_allocBox();
          sub_22C374A5C();
          swift_bridgeObjectRetain_n();
          v307 = sub_22C379FC8();
          sub_22C43B5B0(v307, v308, v309, v310, v311, v312, v313, v314, v357, v358, v359, v360, v361, v362, v363, v364, v365, v366, v367, v368);
          v393 = v300;
          if (v300)
          {
            v315 = sub_22C372164();
            v316(v315);
            swift_deallocBox();
            sub_22C374A5C();
            swift_bridgeObjectRelease_n();
            goto LABEL_61;
          }

          v345 = sub_22C372164();
          v346(v345);
          v94 = v386;
          v386->isa = v306;
          v347 = sub_22C4416C8();
          v348(v347);

          v91 = v302;
        }

        else
        {
          if (v87 != *MEMORY[0x277D1D7A0])
          {
            v91 = v381;
            v93 = v388;
            if (v87 == *MEMORY[0x277D1D7F8])
            {
              sub_22C37B22C();
              swift_bridgeObjectRetain_n();
              v94 = v386;
            }

            else
            {
              v349 = *MEMORY[0x277D1D7A8];
              v350 = v87;
              sub_22C37B22C();
              swift_bridgeObjectRetain_n();
              v104 = v350 == v349;
              v94 = v386;
              if (!v104)
              {
                sub_22C43E6DC(v387, v386);
                v351 = sub_22C388EF4();
                v352(v351);
                goto LABEL_7;
              }
            }

            goto LABEL_6;
          }

          v91 = v381;
          v327 = sub_22C3885CC();
          v328(v327);
          swift_projectBox();
          v329 = sub_22C37BD8C(&v391);
          (v301)(v329);
          v330 = swift_allocBox();
          sub_22C374A5C();
          swift_bridgeObjectRetain_n();
          v331 = sub_22C37BD80();
          sub_22C43B5B0(v331, v332, v333, v334, v335, v336, v337, v338, v357, v358, v359, v360, v361, v362, v363, v364, v365, v366, v367, v368);
          v393 = v300;
          if (v300)
          {
            v339 = sub_22C36D390();
            v340(v339);
            swift_deallocBox();
            sub_22C374A5C();
            swift_bridgeObjectRelease_n();
            goto LABEL_61;
          }

          v353 = sub_22C36D390();
          v354(v353);
          v355 = v386;
          v386->isa = v330;
          sub_22C4416DC();
          v356();

          v94 = v355;
        }
      }

LABEL_77:
      v93 = v388;
      goto LABEL_7;
    }

    v223 = v381;
    v224 = sub_22C3885CC();
    v225(v224);
    sub_22C3A5908(&qword_27D9BC208, &unk_22C912400);
    v226 = sub_22C37ABD4();
    v227 = v391;
    (v391)(v371, v226, v45);
    v228 = sub_22C37BD8C(&a16);
    (v227)(v228);
    v229 = swift_allocBox();
    sub_22C374A5C();
    swift_bridgeObjectRetain_n();
    v230 = sub_22C379FC8();
    v231 = v393;
    sub_22C43B5B0(v230, v232, v233, v234, v235, v236, v237, v238, v357, v358, v359, v360, v361, v362, v363, v364, v365, v366, v367, v368);
    if (!v231)
    {

      v292 = sub_22C37BD80();
      sub_22C43B5B0(v292, v293, v294, v295, v296, v297, v298, v299, v357, v358, v359, v360, v361, v362, v363, v364, v365, v366, v367, v368);
      v323 = v381;
      v324 = *(v381 + 8);
      v325 = v379;
      v324(v22, v379);
      v324(v371, v325);
      v45 = v325;
      v265 = v386;
      v386->isa = v229;
      sub_22C4416DC();
      v326();

      v393 = 0;
      v91 = v323;
LABEL_53:
      v94 = v265;
      goto LABEL_77;
    }

    v239 = *(v223 + 8);
    v239(v22, v45);
    v240 = sub_22C36EC8C();
    (v239)(v240);
    swift_deallocBox();
    sub_22C374A5C();
    swift_bridgeObjectRelease_n();
LABEL_61:

    goto LABEL_9;
  }

  v91 = v381;
  v45 = v379;
  (*(v381 + 96))(v22, v379);
  v106 = *v22;
  v108 = v392;
  v107 = v393;
  sub_22C3705B4();
  v111 = v388;
  v94 = v386;
  if (!v104)
  {
    v112 = v374;
    sub_22C44178C();
    v391();
    sub_22C37B22C();
    swift_bridgeObjectRetain_n();
    goto LABEL_16;
  }

  v373 = v110;
  v369 = v109;
  sub_22C36D6EC();
  if (v172 != 4)
  {
    v219 = swift_allocObject();
    sub_22C374A5C();
    swift_bridgeObjectRetain_n();
    v220 = v373;
    v221 = v369;
    sub_22C4403D8(v373, v369, 5);
    v222 = sub_22C440418(v220, v108);
    if (v107)
    {
      sub_22C4242E4(v220, v221, 5);
      sub_22C36D6EC();
      swift_deallocUninitializedObject();
      sub_22C374A5C();
      swift_bridgeObjectRelease_n();
      goto LABEL_61;
    }

    v393 = 0;
    v267 = v222;
    sub_22C4242E4(v220, v221, 5);
    *(v219 + 16) = v267;
    *(v219 + 24) = 0;
    *(v219 + 32) = 5;
    v112 = v374;
    *v374 = v219;
    sub_22C3758EC();
    sub_22C4416DC();
    v45 = v379;
    v268();
    v111 = v388;
LABEL_16:
    v93 = v111;
    (*(v91 + 32))(v94, v112, v45);

    goto LABEL_7;
  }

  v368 = swift_allocObject();
  if (!*(v373 + 16))
  {
    sub_22C37B22C();
    swift_bridgeObjectRetain_n();
    v180 = MEMORY[0x277D84F90];
LABEL_56:
    v393 = v107;
    v275 = v368;
    *(v368 + 16) = v180;
    *(v275 + 24) = 0;
    *(v275 + 32) = 4;
    v112 = v374;
    *v374 = v275;
    sub_22C3758EC();
    sub_22C4416DC();
    v276();
    goto LABEL_16;
  }

  v367 = v106;
  sub_22C37B22C();
  v174 = v173;
  swift_bridgeObjectRetain_n();
  sub_22C376640();
  sub_22C4403D8(v175, v176, v177);
  v394 = MEMORY[0x277D84F90];
  v371 = v174;
  sub_22C3B69C4(0, v174, 0);
  v178 = v373;
  v179 = 0;
  v180 = v394;
  v370 = (*(v91 + 80) + 32) & ~*(v91 + 80);
  v372 = v373 + v370;
  v181 = (v91 + 8);
  v182 = (v91 + 32);
  v183 = v391;
  while (v179 < *(v178 + 16))
  {
    v184 = *(v91 + 72);
    v185 = v375;
    v186 = v379;
    (v183)(v375, v372 + v184 * v179, v379);

    sub_22C43B5B0(v185, v108, v187, v188, v189, v190, v191, v192, v357, v358, v359, v360, v361, v362, v363, v364, v365, v366, v367, v368);
    if (v107)
    {
      sub_22C376640();
      sub_22C4242E4(v269, v270, v271);
      (*v181)(v185, v186);

      sub_22C36D6EC();
      swift_deallocUninitializedObject();
      sub_22C374A5C();
      swift_bridgeObjectRelease_n();
      goto LABEL_61;
    }

    (*v181)(v185, v186);
    v194 = *(v394 + 16);
    v193 = *(v394 + 24);
    if (v194 >= v193 >> 1)
    {
      v195 = sub_22C373290(v193);
      sub_22C3B69C4(v195, v194 + 1, 1);
    }

    ++v179;
    *(v394 + 16) = v194 + 1;
    (*v182)(v394 + v370 + v194 * v184, v380, v186);
    v183 = v391;
    v108 = v392;
    v107 = 0;
    v91 = v381;
    v178 = v373;
    if (v371 == v179)
    {
      sub_22C376640();
      sub_22C4242E4(v272, v273, v274);
      v45 = v379;
      v111 = v388;
      v94 = v386;
      goto LABEL_56;
    }
  }

  __break(1u);
}

void sub_22C43CE88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22C370030();
  a19 = v24;
  a20 = v25;
  v374 = v20;
  v27 = v26;
  v367 = v28;
  sub_22C9063DC();
  sub_22C369824();
  v361 = v30;
  v362 = v29;
  MEMORY[0x28223BE20](v29);
  sub_22C3698A8();
  v363 = v31;
  v32 = sub_22C3A5908(&qword_27D9BB640, &unk_22C912190);
  v33 = sub_22C369914(v32);
  MEMORY[0x28223BE20](v33);
  v351 = sub_22C4416E8(v34, v348);
  sub_22C369824();
  v350 = v35;
  MEMORY[0x28223BE20](v36);
  sub_22C3698A8();
  sub_22C3698F8(v37);
  v355 = sub_22C902CDC();
  sub_22C369824();
  v354 = v38;
  MEMORY[0x28223BE20](v39);
  sub_22C3698A8();
  sub_22C3698F8(v40);
  v358 = sub_22C902D1C();
  sub_22C369824();
  v357 = v41;
  MEMORY[0x28223BE20](v42);
  sub_22C3698A8();
  sub_22C3698F8(v43);
  v44 = sub_22C902D0C();
  sub_22C369824();
  v46 = v45;
  MEMORY[0x28223BE20](v47);
  sub_22C369ABC();
  v368 = v48 - v49;
  sub_22C369930();
  MEMORY[0x28223BE20](v50);
  sub_22C36BA58();
  v369 = v51;
  sub_22C369930();
  MEMORY[0x28223BE20](v52);
  sub_22C36BA58();
  v366 = v53;
  sub_22C369930();
  MEMORY[0x28223BE20](v54);
  sub_22C36BA58();
  v365 = v55;
  sub_22C369930();
  MEMORY[0x28223BE20](v56);
  sub_22C36BA58();
  v373 = v57;
  sub_22C369930();
  MEMORY[0x28223BE20](v58);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v59);
  sub_22C36D6DC();
  MEMORY[0x28223BE20](v60);
  sub_22C36BA58();
  v364 = v61;
  sub_22C369930();
  MEMORY[0x28223BE20](v62);
  sub_22C36BA58();
  v359 = v63;
  sub_22C369930();
  MEMORY[0x28223BE20](v64);
  sub_22C36BA58();
  v360 = v65;
  sub_22C369930();
  MEMORY[0x28223BE20](v66);
  sub_22C3705C8();
  v68 = MEMORY[0x28223BE20](v67);
  v70 = &v348 - v69;
  MEMORY[0x28223BE20](v68);
  sub_22C37B03C();
  MEMORY[0x28223BE20](v71);
  sub_22C38C344();
  v73 = MEMORY[0x28223BE20](v72);
  v75 = &v348 - v74;
  MEMORY[0x28223BE20](v73);
  sub_22C36BA58();
  v372 = v76;
  sub_22C369930();
  MEMORY[0x28223BE20](v77);
  v375 = v27;
  v376 = &v348 - v78;
  v377 = *(v46 + 16);
  v378 = v46 + 16;
  (v377)(v75, v27, v44);
  v79 = sub_22C36CA88();
  v81 = v80(v79);
  v82 = v81 == *MEMORY[0x277D1D7C8] || v81 == *MEMORY[0x277D1D798];
  if (v82)
  {
    v83 = sub_22C36CA88();
    v84(v83);
    v85 = v374;
    v86 = v375;
    v87 = v46;
    goto LABEL_7;
  }

  v370 = v46;
  if (v81 != *MEMORY[0x277D1D7E8])
  {
    if (v81 == *MEMORY[0x277D1D7E0])
    {
      v101 = v81;
      v102 = v370;
      v103 = sub_22C36CA88();
      v104(v103);
      sub_22C3A5908(&qword_27D9BC330, &qword_22C9126C8);
      swift_projectBox();
      sub_22C375E20();
      sub_22C382F58();
      v105();
      v106 = swift_allocBox();
      v108 = sub_22C37B238(v106, v107);
      v109 = v374;
      sub_22C43CE88(v108, v110, v111, v112, v113, v114, v115, v116, v348, v349, v350, v351, v352, v353, v354, v355, v356, v357, v358, v359);
      v85 = v109;
      if (v109)
      {
        v117 = sub_22C38644C();
        v118(v117);
        swift_deallocBox();
LABEL_47:

        goto LABEL_68;
      }

      v187 = sub_22C38644C();
      v188(v187);
      v189 = v372;
      *v372 = v21;
      v88 = v189;
      (*(v102 + 104))(v189, v101, v44);

      v87 = v102;
      goto LABEL_59;
    }

    v82 = v81 == *MEMORY[0x277D1D7D8];
    HIDWORD(v348) = v81;
    if (v82)
    {
      v119 = sub_22C44170C();
      v120(v119);
      v121 = *v75;
      v122 = sub_22C3A5908(&qword_27D9BC168, &unk_22C9123C0);
      v369 = v121;
      v123 = swift_projectBox();
      LODWORD(v368) = *v123;
      v124 = *(v122 + 64);
      v125 = v377;
      (v377)(v22, &v123[*(v122 + 48)], v44);
      (v125)(v70, &v123[v124], v44);
      v126 = swift_allocBox();
      *v127 = v368;
      v128 = v374;
      sub_22C43CE88(v22, v127, v129, v130, v131, v132, v133, v134, v348, v349, v350, v351, v352, v353, v354, v355, v356, v357, v358, v359);
      if (!v128)
      {
        sub_22C43CE88(v70, v135, v136, v137, v138, v139, v140, v141, v348, v349, v350, v351, v352, v353, v354, v355, v356, v357, v358, v359);
        v85 = 0;
        v87 = v370;
        v259 = *(v370 + 8);
        v260 = sub_22C370114();
        v259(v260);
        (v259)(v22, v44);
        v88 = v372;
        *v372 = v126;
LABEL_49:
        v261 = sub_22C4416B4();
        goto LABEL_58;
      }

      v142 = *(v370 + 8);
      v142(v70, v23);
      v143 = sub_22C36CC9C();
      (v142)(v143);
LABEL_72:
      swift_deallocBox();
      goto LABEL_47;
    }

    if (v81 == *MEMORY[0x277D1D7B8])
    {
      v167 = v370;
      v168 = sub_22C44170C();
      v169(v168);
      v170 = sub_22C3A5908(&qword_27D9BC1F0, &qword_22C9123B8);
      v171 = (swift_projectBox() + *(v170 + 48));
      v172 = v171[1];
      v369 = *v171;
      sub_22C382F58();
      v173();
      v174 = swift_allocBox();
      v176 = v175;

      v177 = v374;
      sub_22C43CE88(v21, v178, v179, v180, v181, v182, v183, v184, v348, v349, v350, v351, v352, v353, v354, v355, v356, v357, v358, v359);
      if (v177)
      {
        v185 = sub_22C37B988();
        v186(v185);

        swift_deallocBox();

LABEL_68:
        sub_22C36FB20();
        return;
      }

      v239 = (v176 + *(v170 + 48));
      v240 = sub_22C37B988();
      v241(v240);
      *v239 = v369;
      v239[1] = v172;
      v88 = v372;
      *v372 = v174;
      v242 = sub_22C4416B4();
      v243(v242);

      v85 = 0;
      v44 = v23;
      v87 = v167;
      goto LABEL_59;
    }

    v87 = v370;
    if (v81 == *MEMORY[0x277D1D7D0])
    {
      v193 = sub_22C3726D0();
      v194(v193, v44);
      v195 = *v75;
      v196 = sub_22C3A5908(&qword_27D9BC208, &unk_22C912400);
      v369 = v195;
      v197 = swift_projectBox();
      v198 = v87;
      v199 = *(v196 + 48);
      v200 = v360;
      v201 = sub_22C37B9B0();
      v202 = v377;
      (v377)(v201);
      v203 = v197 + v199;
      v204 = v359;
      (v202)(v359, v203, v44);
      v205 = v200;
      v206 = swift_allocBox();
      v207 = v374;
      sub_22C43CE88(v205, v208, v209, v210, v211, v212, v213, v214, v348, v349, v350, v351, v352, v353, v354, v355, v356, v357, v358, v359);
      if (v207)
      {
        v222 = *(v198 + 8);
        v223 = sub_22C441720();
        v222(v223);
        v224 = sub_22C36FC08();
        v222(v224);
        swift_deallocBox();

        goto LABEL_68;
      }

      sub_22C43CE88(v204, v215, v216, v217, v218, v219, v220, v221, v348, v349, v350, v351, v352, v353, v354, v355, v356, v357, v358, v359);
      v317 = v370;
      v318 = *(v370 + 8);
      v318(v204, v44);
      v318(v205, v44);
      v88 = v372;
      *v372 = v206;
      v87 = v317;
      v319 = sub_22C4416B4();
      v320(v319);

      v85 = 0;
LABEL_59:
      v90 = v373;
      v86 = v375;
      v91 = v376;
      goto LABEL_60;
    }

    if (v81 == *MEMORY[0x277D1D7C0])
    {
      v225 = sub_22C3726D0();
      v364 = v44;
      v226(v225, v44);
      v227 = *v75;
      v228 = sub_22C3A5908(&qword_27D9BC198, &unk_22C916710);
      v369 = v227;
      swift_projectBox();
      sub_22C379858();
      v229 = v357;
      v230 = *(v357 + 16);
      v230(v356);
      v368 = swift_allocBox();
      v232 = sub_22C36EC78(v368, v231);
      v230(v232);

      v234 = v374;
      v235 = sub_22C44128C(v233);
      v85 = v234;
      if (v234)
      {

        v236 = *(v229 + 8);
        v237 = sub_22C36CC9C();
        v236(v237);
        v238 = sub_22C37B988();
        v236(v238);
        goto LABEL_72;
      }

      v284 = v235;

      v285 = *(v228 + 48);
      v286 = sub_22C36CC9C();
      v287(v286);
      *(v21 + v285) = v284;
      v88 = v372;
      *v372 = v368;
      v87 = v370;
      v261 = sub_22C4416B4();
      v44 = v364;
LABEL_58:
      v262(v261);

      goto LABEL_59;
    }

    if (v81 == *MEMORY[0x277D1D7B0])
    {
      v263 = sub_22C3726D0();
      v264(v263, v44);
      v369 = *v75;
      v265 = swift_projectBox();
      v266 = v354;
      v267 = v352;
      v268 = v355;
      (*(v354 + 16))(v352, v265, v355);
      v368 = swift_allocBox();
      v269 = v353;
      sub_22C902CCC();
      v270 = sub_22C902CAC();
      v271 = v374;
      sub_22C43FAEC(v270);
      v85 = v271;
      if (v271)
      {

        (*(v350 + 8))(v269, v351);
        (*(v266 + 8))(v267, v268);
        goto LABEL_72;
      }

      sub_22C902CBC();
      (*(v266 + 8))(v267, v268);
      v88 = v372;
      *v372 = v368;
      v87 = v370;
      goto LABEL_49;
    }

    v85 = v374;
    v86 = v375;
    if (v81 == *MEMORY[0x277D1D7F0])
    {
      v272 = v81;
      v273 = sub_22C3726D0();
      v274(v273, v44);
      swift_projectBox();
      sub_22C382F58();
      v275();
      v276 = swift_allocBox();
      sub_22C43CE88(v23, v277, v278, v279, v280, v281, v282, v283, v348, v349, v350, v351, v352, v353, v354, v355, v356, v357, v358, v359);
      if (v85)
      {
        (*(v87 + 8))(v23, v44);
        goto LABEL_72;
      }

      (*(v87 + 8))(v23, v44);
      v340 = v372;
      *v372 = v276;
      v341 = sub_22C3758EC();
      v342(v341, v272, v44);
      v88 = v340;

LABEL_8:
      v90 = v373;
      v91 = v376;
      goto LABEL_60;
    }

    if (v81 == *MEMORY[0x277D1D7A0])
    {
      v321 = v81;
      v322 = sub_22C3726D0();
      v323(v322, v44);
      swift_projectBox();
      v324 = v349;
      sub_22C382F58();
      v325();
      v326 = v87;
      v327 = swift_allocBox();
      sub_22C43CE88(v324, v328, v329, v330, v331, v332, v333, v334, v348, v349, v350, v351, v352, v353, v354, v355, v356, v357, v358, v359);
      if (!v85)
      {
        v343 = sub_22C36CA88();
        v344(v343);
        v345 = v372;
        *v372 = v327;
        v346 = sub_22C3758EC();
        v347(v346, v321, v44);
        v88 = v345;

        v90 = v373;
        v91 = v376;
        v87 = v326;
LABEL_60:
        v288 = *(v87 + 32);
        v288(v91, v88, v44);
        v289 = v371;
        sub_22C43E54C(v91, v371);
        if (v85)
        {
          v290 = sub_22C36CA88();
          v291(v290);
        }

        else
        {
          if (sub_22C370B74(v289, 1, v44) == 1)
          {
            sub_22C43ED8C(v289);
          }

          else
          {
            v370 = v87;
            v288(v90, v289, v44);
            v292 = v363;
            sub_22C903F7C();
            v293 = v377;
            (v377)(v365, v86, v44);
            (v293)(v366, v90, v44);
            v294 = v90;
            v295 = sub_22C9063CC();
            v296 = sub_22C90AACC();
            if (os_log_type_enabled(v295, v296))
            {
              v297 = swift_slowAlloc();
              v298 = v365;
              v377 = v295;
              v299 = v297;
              v378 = swift_slowAlloc();
              a10 = v378;
              *v299 = 136380931;
              v300 = sub_22C43EDF4();
              LODWORD(v375) = v296;
              v301 = v370;
              v374 = v300;
              v302 = sub_22C90B47C();
              v304 = v303;
              v305 = *(v301 + 8);
              v371 = v302;
              v372 = v305;
              v306 = sub_22C38644C();
              v307(v306);
              sub_22C36F9F4(v371, v304, &a10);
              sub_22C3758E0();

              *(v299 + 4) = v298;
              *(v299 + 12) = 2081;
              sub_22C90B47C();
              v308 = sub_22C370114();
              v309 = v372;
              (v372)(v308);
              v310 = sub_22C372164();
              v313 = sub_22C36F9F4(v310, v311, v312);

              *(v299 + 14) = v313;
              v314 = v377;
              _os_log_impl(&dword_22C366000, v377, v375, "[PromptMapperResolver] Modified program AST node: %{private}s -> %{private}s", v299, 0x16u);
              swift_arrayDestroy();
              sub_22C3699EC();
              sub_22C3699EC();

              (*(v361 + 8))(v363, v362);
              (v309)(v376, v44);
              v91 = v373;
            }

            else
            {

              v315 = *(v370 + 8);
              v315(v366, v44);
              v315(v365, v44);
              (*(v361 + 8))(v292, v362);
              v316 = sub_22C36CA88();
              (v315)(v316);
              v91 = v294;
            }
          }

          v288(v367, v91, v44);
        }

        goto LABEL_68;
      }

      v335 = sub_22C36CA88();
      v336(v335);
      goto LABEL_72;
    }

    if (v81 != *MEMORY[0x277D1D7F8] && v81 != *MEMORY[0x277D1D7A8])
    {
      v88 = v372;
      sub_22C43E6DC(v375, v372);
      v338 = sub_22C36CA88();
      v339(v338);
      goto LABEL_8;
    }

LABEL_7:
    v88 = v372;
    sub_22C36EC6C();
    sub_22C382F58();
    v89();
    goto LABEL_8;
  }

  HIDWORD(v348) = v81;
  v87 = v370;
  v92 = sub_22C3726D0();
  v93(v92, v44);
  v94 = *(*v75 + 16);
  v360 = *v75;
  sub_22C3705B4();
  v90 = v373;
  v85 = v374;
  v86 = v375;
  v91 = v376;
  v88 = v372;
  v97 = v364;
  if (!v82)
  {
    sub_22C372158();
    sub_22C382F58();
    v98();
LABEL_12:
    v99 = sub_22C441720();
    v100(v99);

    goto LABEL_60;
  }

  v355 = v96;
  if (v95 != 4)
  {
    sub_22C36D6EC();
    v190 = swift_allocObject();

    v192 = sub_22C440730(v191);
    if (!v85)
    {
      v244 = v192;
      sub_22C382C68();
      *(v190 + 16) = v244;
      *(v190 + 24) = 0;
      *(v190 + 32) = 5;
      v245 = v370;
      *v97 = v190;
      v87 = v245;
      v246 = sub_22C381624();
      v247(v246);
      v88 = v372;
      v90 = v373;
      goto LABEL_12;
    }

    sub_22C382C68();
LABEL_46:
    sub_22C36D6EC();
    swift_deallocUninitializedObject();
    goto LABEL_47;
  }

  sub_22C36D6EC();
  v144 = swift_allocObject();
  v145 = *(v94 + 16);
  if (!v145)
  {
    v256 = v87;
LABEL_48:
    sub_22C441778(v144);
    v257 = sub_22C381624();
    v258(v257);
    v90 = v373;
    v87 = v256;
    goto LABEL_12;
  }

  v354 = v144;
  a10 = MEMORY[0x277D84F90];

  v357 = v145;
  sub_22C3B69C4(0, v145, 0);
  v146 = v87;
  v147 = 0;
  v148 = a10;
  v356 = (*(v146 + 80) + 32) & ~*(v146 + 80);
  v358 = v94 + v356;
  v359 = v146 + 8;
  v149 = v94;
  while (v147 < *(v149 + 16))
  {
    v150 = v368;
    sub_22C382F58();
    v151();
    sub_22C43CE88(v150, v152, v153, v154, v155, v156, v157, v158, v348, v349, v350, v351, v352, v353, v354, v355, v356, v357, v358, v359);
    if (v85)
    {
      sub_22C376640();
      sub_22C4242E4(v248, v249, v250);
      v251 = sub_22C370114();
      v252(v251);

      goto LABEL_46;
    }

    v159 = sub_22C370114();
    v160(v159);
    a10 = v148;
    v161 = v44;
    v163 = *(v148 + 16);
    v162 = *(v148 + 24);
    if (v163 >= v162 >> 1)
    {
      v166 = sub_22C373290(v162);
      sub_22C3B69C4(v166, v163 + 1, 1);
      v148 = a10;
    }

    ++v147;
    *(v148 + 16) = v163 + 1;
    v164 = sub_22C441758(&a17);
    v165(v164, v369, v161);
    v44 = v161;
    v86 = v375;
    v91 = v376;
    if (v357 == v147)
    {
      sub_22C376640();
      sub_22C4242E4(v253, v254, v255);
      v256 = v370;
      v88 = v372;
      v144 = v354;
      goto LABEL_48;
    }
  }

  __break(1u);
}