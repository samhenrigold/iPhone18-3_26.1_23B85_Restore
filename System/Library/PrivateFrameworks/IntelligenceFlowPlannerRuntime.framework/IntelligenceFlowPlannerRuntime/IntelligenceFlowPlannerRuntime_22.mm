uint64_t sub_22C55B334@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, void (*a3)(void *__return_ptr, void, void, void, void)@<X3>, uint64_t a4@<X4>, uint64_t *a5@<X8>)
{
  v53 = a3;
  v54 = a4;
  v52 = a2;
  v8 = sub_22C9063DC();
  v59 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22C3A5908(&qword_27D9BC1E8, &qword_22C9123B0);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = v48 - v15;
  v17 = sub_22C908EAC();
  v57 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v61 = v48 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for FetchedTools.AttributedRetrievedToolDefinition(0);
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19 - 8);
  v60 = v48 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = type metadata accessor for RenderableTool(0);
  MEMORY[0x28223BE20](v50);
  v51 = (v48 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = sub_22C6058B0(0, a1);
  if (v23)
  {
    v49 = a5;
    v24 = *(v23 + 16);
    if (v24)
    {
      v48[1] = v23;
      v48[2] = v5;
      v25 = v23 + ((*(v20 + 80) + 32) & ~*(v20 + 80));
      v26 = *(v20 + 72);
      v58 = (v57 + 32);
      v59 = MEMORY[0x277D84F90];
      v27 = v17;
      v55 = v26;
      v56 = v17;
      do
      {
        v28 = v60;
        sub_22C55CEDC();
        sub_22C9036BC();
        sub_22C407C2C();
        sub_22C55CF34(v28, type metadata accessor for FetchedTools.AttributedRetrievedToolDefinition);
        if (sub_22C370B74(v16, 1, v27) == 1)
        {
          sub_22C36DD28(v16, &qword_27D9BC1E8, &qword_22C9123B0);
        }

        else
        {
          v29 = v14;
          v30 = *v58;
          (*v58)(v61, v16, v27);
          v31 = v59;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_22C591C4C();
            v31 = v34;
          }

          v32 = *(v31 + 16);
          if (v32 >= *(v31 + 24) >> 1)
          {
            sub_22C591C4C();
            v31 = v35;
          }

          *(v31 + 16) = v32 + 1;
          v33 = (*(v57 + 80) + 32) & ~*(v57 + 80);
          v59 = v31;
          v27 = v56;
          (v30)(v31 + v33 + *(v57 + 72) * v32, v61);
          v14 = v29;
          v26 = v55;
        }

        v25 += v26;
        --v24;
      }

      while (v24);

      v36 = v59;
    }

    else
    {

      v36 = MEMORY[0x277D84F90];
    }

    v46 = v51;
    *v51 = v36;
    swift_storeEnumTagMultiPayload();
    v47 = type metadata accessor for ToolRenderer_v5_0(0);
    sub_22C4B8858(v46, (v52 + *(v47 + 20)), v53, v54, v49);
    return sub_22C55CF34(v46, type metadata accessor for RenderableTool);
  }

  else
  {
    v37 = a5;
    v38 = v59;
    v39 = v8;
    sub_22C903F7C();
    v40 = sub_22C9063CC();
    v41 = sub_22C90AACC();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v62 = v43;
      *v42 = 136315138;
      *(v42 + 4) = sub_22C36F9F4(0x695F686372616573, 0xED00007070615F6ELL, &v62);
      sub_22C36FF94(v43);
      MEMORY[0x2318B9880](v43, -1, -1);
      MEMORY[0x2318B9880](v42, -1, -1);
    }

    (*(v38 + 8))(v10, v39);
    v44 = type metadata accessor for _PromptToolData(0);
    return sub_22C36C640(v37, 1, 1, v44);
  }
}

uint64_t sub_22C55B998(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14[1] = a4;
  v14[2] = a5;
  v5 = sub_22C90963C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22C90941C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ToolRenderer_v5_0(0);
  sub_22C483378();
  sub_22C374168(v15, v15[3]);
  MEMORY[0x2318B6CE0]();
  (*(v6 + 104))(v8, *MEMORY[0x277D72E10], v5);
  sub_22C4FCD10();
  (*(v6 + 8))(v8, v5);
  (*(v10 + 8))(v12, v9);
  return sub_22C36FF94(v15);
}

uint64_t sub_22C55BBA4@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  v140 = a3;
  v131 = a2;
  v129 = a4;
  v122 = sub_22C9063DC();
  sub_22C369824();
  v121 = v6;
  MEMORY[0x28223BE20](v7);
  sub_22C369838();
  v125 = v9 - v8;
  v10 = sub_22C3A5908(&qword_27D9BDC50, &unk_22C91B470);
  MEMORY[0x28223BE20](v10 - 8);
  sub_22C369ABC();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v11);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v12);
  sub_22C36BA58();
  v142 = v13;
  MEMORY[0x28223BE20](v14);
  v126 = v120 - v15;
  v139 = sub_22C9099FC();
  sub_22C369824();
  v132 = v16;
  MEMORY[0x28223BE20](v17);
  sub_22C369ABC();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v18);
  sub_22C36BA58();
  v127 = v19;
  MEMORY[0x28223BE20](v20);
  sub_22C36BA58();
  v141 = v21;
  MEMORY[0x28223BE20](v22);
  v124 = v120 - v23;
  v24 = sub_22C908D6C();
  sub_22C369824();
  v26 = v25;
  MEMORY[0x28223BE20](v27);
  sub_22C369ABC();
  v30 = v28 - v29;
  MEMORY[0x28223BE20](v31);
  v33 = v120 - v32;
  v138 = sub_22C90977C();
  sub_22C369824();
  v35 = v34;
  MEMORY[0x28223BE20](v36);
  sub_22C369838();
  v39 = v38 - v37;
  sub_22C374168(v4, v4[3]);
  sub_22C47FCDC();
  v40 = sub_22C9096FC();
  v144 = v39;
  v123 = sub_22C4FB170(v40, v41, sub_22C436434, v143, v140);
  v128 = v42;
  v43 = v132;

  (*(v35 + 8))(v39, v138);
  v130 = a1;
  if ((v131 & 1) == 0)
  {
    result = sub_22C908DEC();
    v45 = 0;
    v140 = *(result + 16);
    v138 = (v26 + 16);
    v46 = *MEMORY[0x277D72188];
    v47 = *MEMORY[0x277D72178];
    v48 = (v26 + 8);
    while (1)
    {
      if (v140 == v45)
      {
        v45 = v140;
        goto LABEL_10;
      }

      sub_22C371948();
      v50 = v49;
      (*(v26 + 16))(v33, v49 + v51 + *(v26 + 72) * v45, v24);
      v52 = (*(v26 + 88))(v33, v24);
      if (v52 == v46)
      {
        break;
      }

      if (v52 == v47)
      {
        goto LABEL_9;
      }

      (*v48)(v33, v24);
      ++v45;
      result = v50;
    }

    (*v48)(v33, v24);
LABEL_9:
    result = v50;
LABEL_10:
    v53 = *(result + 16);
    if (v45 != v53)
    {
      if (v45 < v53)
      {
        sub_22C371948();
        result = sub_22C4AF1C0();
        if ((result & 1) == 0)
        {

          v116 = v129;
          *v129 = xmmword_22C91A1A0;
          v117 = v128;
          *(v116 + 2) = v123;
          *(v116 + 3) = v117;
          *(v116 + 32) = 1;
          return result;
        }

        goto LABEL_53;
      }

      goto LABEL_51;
    }

    v43 = v132;
  }

  result = sub_22C908DEC();
  v54 = result;
  v55 = 0;
  v56 = *(result + 16);
  LODWORD(v140) = *MEMORY[0x277D72148];
  v134 = (v26 + 96);
  v135 = (v26 + 8);
  v133 = 0x800000022C932110;
  v137 = (v43 + 8);
  v138 = (v43 + 32);
  v57 = v139;
  v136 = result;
  while (v56 != v55)
  {
    sub_22C371948();
    (*(v26 + 16))(v30, v54 + v58 + *(v26 + 72) * v55, v24);
    v59 = (*(v26 + 88))(v30, v24);
    if (v59 == v140)
    {
      (*v134)(v30, v24);
      v60 = *v138;
      (*v138)(v141, v30, v57);
      sub_22C9099DC();
      sub_22C37BE28();
      v64 = v64 && v133 == v62;
      if (v64)
      {
      }

      else
      {
        v65 = sub_22C382CE4(v61, v62, v63, v133);

        if ((v65 & 1) == 0)
        {
          v119 = v142;
          v57 = v139;
          v60(v142, v141, v139);
          sub_22C55CFFC(v119, 0);
          result = sub_22C36DD28(v119, &qword_27D9BDC50, &unk_22C91B470);
          v54 = v136;
          goto LABEL_26;
        }
      }

      v57 = v139;
      (*v137)(v141, v139);
      v54 = v136;
    }

    else
    {
      (*v135)(v30, v24);
    }

    v66 = v142;
    sub_22C55CFFC(v142, 1);
    result = sub_22C36DD28(v66, &qword_27D9BDC50, &unk_22C91B470);
    ++v55;
  }

  v55 = v56;
LABEL_26:
  v67 = *(v54 + 16);
  v68 = v127;
  v69 = v132;
  v70 = v126;
  if (v55 == v67)
  {
    v71 = 1;
    goto LABEL_31;
  }

  if (v55 >= v67)
  {
    __break(1u);
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  sub_22C371948();
  v72 = v120[2];
  sub_22C5791C0();
  v73 = v120[3];
  sub_22C3A7214();
  result = sub_22C370744(v73);
  if (result == 1)
  {
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
    return result;
  }

  (*v138)(v70, v73, v57);
  sub_22C36DD28(v72, &qword_27D9BDC50, &unk_22C91B470);
  v71 = 0;
LABEL_31:
  v74 = v125;
  sub_22C55CFFC(v70, v71);

  if (sub_22C370744(v70) == 1)
  {
    sub_22C36DD28(v70, &qword_27D9BDC50, &unk_22C91B470);
    v75 = v128;
    if (v131)
    {
      goto LABEL_39;
    }

    v76 = HIBYTE(v128) & 0xF;
    if ((v128 & 0x2000000000000000) == 0)
    {
      v76 = v123 & 0xFFFFFFFFFFFFLL;
    }

    if (!v76)
    {
LABEL_39:

      sub_22C3A5908(&qword_27D9BAB68, &qword_22C914840);
      v77 = swift_allocObject();
      *(v77 + 16) = xmmword_22C90F800;
      *(v77 + 32) = sub_22C908E8C();
      *(v77 + 40) = v97;
      v83 = 1;
    }

    else
    {
      sub_22C3A5908(&qword_27D9BAB68, &qword_22C914840);
      v77 = swift_allocObject();
      *(v77 + 16) = xmmword_22C90F870;
      *(v77 + 32) = v123;
      *(v77 + 40) = v75;
      *(v77 + 48) = sub_22C908E8C();
      *(v77 + 56) = v78;
      v83 = 2;
    }

    v145 = MEMORY[0x277D84F90];
    sub_22C3B5E2C(0, v83, 0, v79, v80, v81, v82);
    v98 = v145;
    v99 = v77 + 40;
    do
    {

      v100 = sub_22C90A2CC();
      v102 = v101;

      v145 = v98;
      v108 = *(v98 + 16);
      v107 = *(v98 + 24);
      if (v108 >= v107 >> 1)
      {
        sub_22C3B5E2C(v107 > 1, v108 + 1, 1, v103, v104, v105, v106);
        v98 = v145;
      }

      *(v98 + 16) = v108 + 1;
      v109 = v98 + 16 * v108;
      *(v109 + 32) = v100;
      *(v109 + 40) = v102;
      v99 += 16;
      --v83;
    }

    while (v83);

    v145 = v98;
    v110 = sub_22C36BA00();
    sub_22C3A5908(v110, v111);
    sub_22C3D32C8(&qword_28142F9F0, &qword_27D9BB5D0, &unk_22C9112A0, MEMORY[0x277D83958]);
    v112 = sub_22C90A04C();
    v114 = v113;

    v115 = v129;
    *v129 = v112;
    *(v115 + 1) = v114;
    *(v115 + 2) = 0;
    *(v115 + 3) = 0;
    *(v115 + 32) = 0;
  }

  else
  {

    v84 = v124;
    (*(v69 + 32))(v124, v70, v57);
    sub_22C903F7C();
    v87 = *(v69 + 16);
    v86 = (v69 + 16);
    v85 = v87;
    v87(v68, v84, v57);
    v88 = sub_22C9063CC();
    v89 = sub_22C90AACC();
    if (os_log_type_enabled(v88, v89))
    {
      v90 = swift_slowAlloc();
      v91 = swift_slowAlloc();
      v145 = v91;
      *v90 = 136315138;
      v85(v120[1], v68, v139);
      v92 = sub_22C90A1AC();
      v94 = v93;
      sub_22C374C78();
      v86();
      v95 = sub_22C36F9F4(v92, v94, &v145);

      *(v90 + 4) = v95;
      _os_log_impl(&dword_22C366000, v88, v89, "Tool definition has a conformance to assistant schema %s. Rendering the schema", v90, 0xCu);
      sub_22C36FF94(v91);
      MEMORY[0x2318B9880](v91, -1, -1);
      v96 = v90;
      v57 = v139;
      MEMORY[0x2318B9880](v96, -1, -1);
    }

    else
    {

      sub_22C374C78();
      (v86)(v68, v57);
    }

    (*(v121 + 8))(v74, v122);
    v118 = v124;
    sub_22C55C74C(v124);
    return (v86)(v118, v57);
  }

  return result;
}

void sub_22C55C74C(uint64_t a1)
{
  sub_22C9099EC();

  MEMORY[0x2318B7850](32, 0xE100000000000000);

  sub_22C9099DC();
  sub_22C55D014();
  MEMORY[0x2318B7850](a1, v1);

  sub_22C90A2CC();
  sub_22C370704();
  sub_22C374C24();
}

uint64_t sub_22C55C7FC@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  v56 = a3;
  v54 = a2;
  v58 = a4;
  v5 = sub_22C908D6C();
  sub_22C369824();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  sub_22C369838();
  v11 = v10 - v9;
  v12 = sub_22C9099FC();
  sub_22C369824();
  v59 = v13;
  MEMORY[0x28223BE20](v14);
  sub_22C369838();
  v70 = v16 - v15;
  v17 = &qword_27D9BDC50;
  v18 = &unk_22C91B470;
  v19 = sub_22C3A5908(&qword_27D9BDC50, &unk_22C91B470);
  MEMORY[0x28223BE20](v19 - 8);
  sub_22C369ABC();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v20);
  sub_22C36BA58();
  sub_22C3698D4();
  v22 = MEMORY[0x28223BE20](v21);
  v24 = v53 - v23;
  MEMORY[0x28223BE20](v22);
  v57 = v53 - v25;
  v55 = a1;
  result = sub_22C908DEC();
  v27 = result;
  v28 = 0;
  v29 = *(result + 16);
  v68 = v7 + 88;
  v69 = v7 + 16;
  v67 = *MEMORY[0x277D72148];
  v62 = (v7 + 96);
  v63 = (v7 + 8);
  v65 = result;
  v66 = (v59 + 4);
  v60 = v29;
  v61 = 0x800000022C932110;
  ++v59;
  v64 = v24;
  while (v29 != v28)
  {
    sub_22C36BEE4();
    (*(v7 + 16))(v11, v30 + v31 * v28, v5);
    v32 = (*(v7 + 88))(v11, v5);
    if (v32 == v67)
    {
      v33 = v18;
      v34 = v17;
      (*v62)(v11, v5);
      v35 = *v66;
      v36 = v12;
      (*v66)(v70, v11, v12);
      sub_22C9099DC();
      sub_22C37BE28();
      v40 = v40 && v61 == v38;
      if (v40)
      {
      }

      else
      {
        v41 = sub_22C382CE4(v37, v38, v39, v61);

        if ((v41 & 1) == 0)
        {
          v52 = v64;
          v12 = v36;
          v35(v64, v70, v36);
          sub_22C36C640(v52, 0, 1, v36);
          result = sub_22C36DD28(v52, &qword_27D9BDC50, &unk_22C91B470);
          v27 = v65;
          goto LABEL_15;
        }
      }

      v12 = v36;
      (*v59)(v70, v36);
      v17 = v34;
      v18 = v33;
      v24 = v64;
      v27 = v65;
      v29 = v60;
    }

    else
    {
      (*v63)(v11, v5);
    }

    sub_22C55CFFC(v24, 1);
    result = sub_22C36DD28(v24, v17, v18);
    ++v28;
  }

  v28 = v29;
LABEL_15:
  v42 = *(v27 + 16);
  if (v28 != v42)
  {
    if (v28 >= v42)
    {
      __break(1u);
    }

    else
    {
      sub_22C36BEE4();
      v45 = v53[0];
      sub_22C5791C0();
      v46 = v53[1];
      sub_22C3A7214();
      result = sub_22C370744(v46);
      if (result != 1)
      {
        v44 = v57;
        (*v66)(v57, v46, v12);
        sub_22C36DD28(v45, &qword_27D9BDC50, &unk_22C91B470);
        v43 = 0;
        goto LABEL_20;
      }
    }

    __break(1u);
    return result;
  }

  v43 = 1;
  v44 = v57;
LABEL_20:
  sub_22C55CFFC(v44, v43);

  v47 = sub_22C370744(v44);
  result = sub_22C36DD28(v44, &qword_27D9BDC50, &unk_22C91B470);
  if (v47 == 1)
  {
    result = sub_22C55BBA4(v55, v54 & 1, v56, v71);
    v48 = v71[0];
    v49 = v71[1];
    v50 = v72;
  }

  else
  {
    v48 = 0uLL;
    v50 = -1;
    v49 = 0uLL;
  }

  v51 = v58;
  *v58 = v48;
  v51[1] = v49;
  *(v51 + 32) = v50;
  return result;
}

uint64_t type metadata accessor for ToolRenderer_v5_0(uint64_t a1)
{
  result = qword_281434120;
  if (!qword_281434120)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_22C55CDA4(uint64_t a1)
{
  sub_22C908AEC();
  if (v1 <= 0x3F)
  {
    sub_22C528CEC();
    if (v2 <= 0x3F)
    {
      sub_22C4BBD84(319, qword_281431EC8, &qword_27D9BD9F0, &qword_22C91A228);
      if (v3 <= 0x3F)
      {
        sub_22C4BBD84(319, &qword_27D9BDC70, &qword_27D9BDC78, &qword_22C91B290);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_22C55CEDC()
{
  sub_22C36986C();
  v1(0);
  sub_22C36985C();
  v2 = sub_22C36BA00();
  v3(v2);
  return v0;
}

uint64_t sub_22C55CF34(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_22C36985C();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_22C55CF8C()
{
  sub_22C36986C();
  v1(0);
  sub_22C36985C();
  v2 = sub_22C36BA00();
  v3(v2);
  return v0;
}

uint64_t sub_22C55CFFC(uint64_t a1, uint64_t a2)
{

  return sub_22C36C640(a1, a2, 1, v2);
}

uint64_t sub_22C55D014()
{
}

void sub_22C55D08C(uint64_t a1)
{
  sub_22C457168(319, &qword_27D9BDC98, &protocol descriptor for TypeInstancePromptRendering);
  if (v1 <= 0x3F)
  {
    sub_22C4BBD84(319, &qword_27D9BDCA0, &qword_27D9BDCA8, &qword_22C91B378);
    if (v2 <= 0x3F)
    {
      sub_22C908AEC();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_22C55D198(uint64_t a1)
{
  sub_22C457168(319, qword_281432558, &protocol descriptor for ToolDescriptionProviding);
  if (v1 <= 0x3F)
  {
    sub_22C908AEC();
    if (v2 <= 0x3F)
    {
      sub_22C457168(319, qword_281430480, &protocol descriptor for ParameterDefinitionPromptRendering);
      if (v3 <= 0x3F)
      {
        sub_22C457168(319, qword_281434258, &protocol descriptor for ToolNameRendering);
        if (v4 <= 0x3F)
        {
          sub_22C4BBD84(319, qword_281433480, &qword_27D9BD878, &unk_22C919790);
          if (v5 <= 0x3F)
          {
            type metadata accessor for FullPlannerPreferences(319);
            if (v6 <= 0x3F)
            {
              type metadata accessor for AssistantToolSchemaDefinitionRenderer_v5_0(319);
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

void sub_22C55D324(uint64_t a1)
{
  sub_22C457168(319, qword_281430480, &protocol descriptor for ParameterDefinitionPromptRendering);
  if (v1 <= 0x3F)
  {
    sub_22C457168(319, qword_281434258, &protocol descriptor for ToolNameRendering);
    if (v2 <= 0x3F)
    {
      sub_22C4BBD84(319, qword_281433480, &qword_27D9BD878, &unk_22C919790);
      if (v3 <= 0x3F)
      {
        sub_22C457168(319, qword_281432558, &protocol descriptor for ToolDescriptionProviding);
        if (v4 <= 0x3F)
        {
          sub_22C457168(319, qword_281430020, &protocol descriptor for AssistantToolSchemaDefinitionRendering);
          if (v5 <= 0x3F)
          {
            sub_22C908AEC();
            if (v6 <= 0x3F)
            {
              type metadata accessor for FullPlannerPreferences(319);
              if (v7 <= 0x3F)
              {
                sub_22C457168(319, qword_281430CF8, &protocol descriptor for ToolDefinitionPromptRendering);
                if (v8 <= 0x3F)
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

void *sub_22C55D4A0(uint64_t a1)
{
  v55 = sub_22C90981C();
  sub_22C369824();
  MEMORY[0x28223BE20](v2);
  sub_22C3698E4();
  v49 = v3;
  sub_22C369930();
  MEMORY[0x28223BE20](v4);
  sub_22C36BA64();
  v54 = v5;
  v6 = 0;
  v7 = MEMORY[0x277D84F98];
  v57 = MEMORY[0x277D84F98];
  v51 = v8;
  v52 = *(a1 + 16);
  v50 = v8 + 16;
  v53 = (v8 + 32);
  v45 = xmmword_22C90F800;
  v48 = a1;
  while (1)
  {
    if (v52 == v6)
    {

      return v7;
    }

    if (v6 >= *(a1 + 16))
    {
      break;
    }

    v9 = (*(v51 + 80) + 32) & ~*(v51 + 80);
    v10 = *(v51 + 72);
    v11 = v6;
    (*(v51 + 16))(v54, a1 + v9 + v10 * v6, v55);
    v12 = sub_22C9097DC();
    v14 = v13;
    v22 = sub_22C36E2BC(v12, v13);
    v23 = v7[2];
    v24 = (v15 & 1) == 0;
    v25 = v23 + v24;
    if (__OFADD__(v23, v24))
    {
      goto LABEL_19;
    }

    v26 = v15;
    if (v7[3] < v25)
    {
      sub_22C88E43C(v25, 1, v16, v17, v18, v19, v20, v21, v43, v44, v45, SBYTE8(v45), v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65);
      v7 = v57;
      v27 = sub_22C36E2BC(v12, v14);
      if ((v26 & 1) != (v28 & 1))
      {
        goto LABEL_21;
      }

      v22 = v27;
    }

    if (v26)
    {

      v29 = v7[7];
      v30 = *v53;
      (*v53)(v49, v54, v55);
      v31 = *(v29 + 8 * v22);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v29 + 8 * v22) = v31;
      v47 = v30;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_22C373310();
        sub_22C59266C();
        v31 = v40;
        *(v29 + 8 * v22) = v40;
      }

      v33 = *(v31 + 16);
      if (v33 >= *(v31 + 24) >> 1)
      {
        sub_22C59266C();
        v31 = v41;
        *(v29 + 8 * v22) = v41;
      }

      a1 = v48;
      v34 = v11;
      *(v31 + 16) = v33 + 1;
      v30(v31 + v9 + v33 * v10, v49, v55);
    }

    else
    {
      sub_22C3A5908(&qword_27D9BAD28, &qword_22C91B1B0);
      v35 = swift_allocObject();
      *(v35 + 16) = v45;
      (*v53)(v35 + v9, v54, v55);
      v7[(v22 >> 6) + 8] |= 1 << v22;
      v36 = (v7[6] + 16 * v22);
      *v36 = v12;
      v36[1] = v14;
      *(v7[7] + 8 * v22) = v35;
      v37 = v7[2];
      v38 = __OFADD__(v37, 1);
      v39 = v37 + 1;
      if (v38)
      {
        goto LABEL_20;
      }

      v7[2] = v39;
      a1 = v48;
      v34 = v11;
    }

    v6 = v34 + 1;
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  result = sub_22C90B54C();
  __break(1u);
  return result;
}

uint64_t sub_22C55D7F0(uint64_t a1)
{
  v2 = sub_22C3A5908(&qword_27D9BC0C0, &unk_22C911FA0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v39 - v3;
  v45 = sub_22C90981C();
  v5 = MEMORY[0x28223BE20](v45);
  v42 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v43 = &v39 - v8;
  v10 = a1 + 64;
  v9 = *(a1 + 64);
  v44 = MEMORY[0x277D84F98];
  v48 = MEMORY[0x277D84F98];
  v11 = 1 << *(a1 + 32);
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  else
  {
    v12 = -1;
  }

  v13 = v12 & v9;
  v14 = (v11 + 63) >> 6;
  v40 = v7;
  v41 = (v7 + 32);
  v46 = a1;

  v16 = 0;
  while (1)
  {
    v17 = v16;
    if (!v13)
    {
      break;
    }

LABEL_9:
    v18 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
    v19 = v18 | (v16 << 6);
    v20 = (*(v46 + 48) + 16 * v19);
    v22 = *v20;
    v21 = v20[1];
    v23 = *(*(v46 + 56) + 8 * v19);
    swift_getKeyPath();
    v47 = v23;

    swift_getAtKeyPath();

    if (sub_22C370B74(v4, 1, v45) == 1)
    {

      result = sub_22C3770B0(v4, &qword_27D9BC0C0, &unk_22C911FA0);
    }

    else
    {
      v24 = *v41;
      (*v41)(v43, v4, v45);
      v39 = v24;
      v24(v42, v43, v45);
      v25 = v44[2];
      if (v44[3] <= v25)
      {
        sub_22C88E414(v25 + 1);
      }

      v26 = v48;
      sub_22C90B62C();
      sub_22C909FFC();
      result = sub_22C90B66C();
      v27 = v26 + 64;
      v44 = v26;
      v28 = -1 << *(v26 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v26 + 64 + 8 * (v29 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v28) >> 6;
        while (++v30 != v33 || (v32 & 1) == 0)
        {
          v34 = v30 == v33;
          if (v30 == v33)
          {
            v30 = 0;
          }

          v32 |= v34;
          v35 = *(v27 + 8 * v30);
          if (v35 != -1)
          {
            v31 = __clz(__rbit64(~v35)) + (v30 << 6);
            goto LABEL_22;
          }
        }

        goto LABEL_25;
      }

      v31 = __clz(__rbit64((-1 << v29) & ~*(v26 + 64 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_22:
      *(v27 + ((v31 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v31;
      v37 = v44;
      v36 = v45;
      v38 = (v44[6] + 16 * v31);
      *v38 = v22;
      v38[1] = v21;
      result = (v39)(v37[7] + *(v40 + 72) * v31, v42, v36);
      ++v37[2];
    }
  }

  while (1)
  {
    v16 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v16 >= v14)
    {

      return v44;
    }

    v13 = *(v10 + 8 * v16);
    ++v17;
    if (v13)
    {
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_22C55DBD4(uint64_t a1)
{
  v26 = MEMORY[0x277D84F98];
  v29 = MEMORY[0x277D84F98];
  v2 = a1 + 64;
  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  while (1)
  {
    v9 = v8;
    if (!v5)
    {
      break;
    }

LABEL_9:
    v10 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v11 = (*(a1 + 48) + 16 * (v10 | (v8 << 6)));
    v13 = *v11;
    v12 = v11[1];
    swift_getKeyPath();

    swift_getAtKeyPath();

    if (v28)
    {
      v14 = v26;
      if (*(v26 + 24) <= *(v26 + 16))
      {
        sub_22C88E938();
        v14 = v29;
      }

      v26 = v14;
      sub_22C90B62C();
      sub_22C37BE3C();
      sub_22C909FFC();
      result = sub_22C90B66C();
      v15 = v26 + 64;
      v16 = -1 << *(v26 + 32);
      v17 = result & ~v16;
      v18 = v17 >> 6;
      if (((-1 << v17) & ~*(v26 + 64 + 8 * (v17 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v16) >> 6;
        while (++v18 != v21 || (v20 & 1) == 0)
        {
          v22 = v18 == v21;
          if (v18 == v21)
          {
            v18 = 0;
          }

          v20 |= v22;
          v23 = *(v15 + 8 * v18);
          if (v23 != -1)
          {
            v19 = __clz(__rbit64(~v23)) + (v18 << 6);
            goto LABEL_22;
          }
        }

        goto LABEL_25;
      }

      v19 = __clz(__rbit64((-1 << v17) & ~*(v26 + 64 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_22:
      *(v15 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      v24 = (*(v26 + 48) + 16 * v19);
      *v24 = v13;
      v24[1] = v12;
      v25 = (*(v26 + 56) + 16 * v19);
      *v25 = v27;
      v25[1] = v28;
      ++*(v26 + 16);
    }

    else
    {
    }
  }

  while (1)
  {
    v8 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v8 >= v6)
    {

      return v26;
    }

    v5 = *(v2 + 8 * v8);
    ++v9;
    if (v5)
    {
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_22C55DE54@<X0>(uint64_t *a1@<X8>)
{
  result = sub_22C9097BC();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_22C55DE80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, _OWORD *a7@<X8>)
{
  v9 = v7;
  v438 = a6;
  v470 = a5;
  LODWORD(v480) = a3;
  v466 = a2;
  v439 = a7;
  v429 = sub_22C9063DC();
  sub_22C369824();
  v428 = v12;
  MEMORY[0x28223BE20](v13);
  sub_22C369838();
  sub_22C3698F8(v15 - v14);
  v451 = sub_22C908AEC();
  sub_22C369824();
  v450 = v16;
  MEMORY[0x28223BE20](v17);
  sub_22C369838();
  v449 = v19 - v18;
  v20 = sub_22C3A5908(&qword_27D9BC0B0, &unk_22C912AD0);
  MEMORY[0x28223BE20](v20 - 8);
  sub_22C3698F8(&v426 - v21);
  v434 = sub_22C908DAC();
  sub_22C369824();
  v433 = v22;
  MEMORY[0x28223BE20](v23);
  sub_22C369838();
  v26 = v25 - v24;
  v472 = sub_22C908D6C();
  sub_22C369824();
  v479 = v27;
  MEMORY[0x28223BE20](v28);
  sub_22C369838();
  v487 = v30 - v29;
  v31 = sub_22C3A5908(&qword_27D9BDC50, &unk_22C91B470);
  MEMORY[0x28223BE20](v31 - 8);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v32);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v33);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v34);
  sub_22C36BA64();
  sub_22C3698F8(v35);
  v473 = sub_22C9099FC();
  sub_22C369824();
  v453 = v36;
  MEMORY[0x28223BE20](v37);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v38);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v39);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v40);
  v42 = &v426 - v41;
  v456 = sub_22C90963C();
  sub_22C369824();
  v455 = v43;
  MEMORY[0x28223BE20](v44);
  sub_22C369838();
  sub_22C3698F8(v46 - v45);
  v454 = sub_22C90941C();
  sub_22C369824();
  v464 = v47;
  MEMORY[0x28223BE20](v48);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v49);
  sub_22C36BA64();
  sub_22C3698F8(v50);
  v486 = sub_22C9097AC();
  sub_22C369824();
  v463 = v51;
  MEMORY[0x28223BE20](v52);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v53);
  sub_22C36BA64();
  sub_22C3698F8(v54);
  v489 = sub_22C90981C();
  sub_22C369824();
  v483 = v55;
  MEMORY[0x28223BE20](v56);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v57);
  sub_22C36BA64();
  v59 = sub_22C3698F8(v58);
  v481 = type metadata accessor for PromptToolsHelper.RenderableParameter(v59);
  sub_22C369824();
  v501 = v60;
  MEMORY[0x28223BE20](v61);
  sub_22C3698E4();
  sub_22C3698D4();
  v63 = MEMORY[0x28223BE20](v62);
  v65 = &v426 - v64;
  MEMORY[0x28223BE20](v63);
  v67 = &v426 - v66;
  v68 = *(a4 + 8);
  v445 = *a4;
  v457 = v68;
  sub_22C381A9C(*(a4 + 24));
  v460 = *(a4 + 32);
  LODWORD(v461) = *(a4 + 40);
  v69 = sub_22C908DCC();
  v491 = a1;
  v465 = sub_22C47B690(sub_22C565284, v490, v69);
  v462 = v8;
  v70 = v9[8];
  v71 = v9[9];
  v469 = v9;
  sub_22C374168(v9 + 5, v70);
  v72 = *(v71 + 8);
  v468 = a1;
  v72(&v497, a1, v480, v470, v70, v71);
  v73 = *(&v497 + 1);
  v432 = v26;
  v444 = v42;
  if (v499)
  {

    v471 = 0;
    v73 = 0;
  }

  else
  {
    v471 = v497;
  }

  v74 = v465;
  v75 = *(v465 + 16);
  if (v75)
  {
    v474 = v73;
    *&v497 = MEMORY[0x277D84F90];
    sub_22C3B6F58(0, v75, 0);
    v76 = v497;
    v478 = *(v483 + 16);
    sub_22C36BA94();
    v78 = v74 + v77;
    v477 = *(v79 + 56);
    v483 = v79;
    v80 = (v79 + 16);
    do
    {
      v81 = v482;
      v82 = v489;
      v478(v482, v78, v489);
      v83 = *v80;
      (*v80)(v488, v81, v82);
      if (v480)
      {
        v84 = 0;
        v85 = 0;
      }

      else
      {

        v84 = v471;
        v85 = v86;
      }

      v83(v67, v488, v489);
      v87 = &v67[*(v481 + 20)];
      *v87 = v84;
      v87[1] = v85;
      *&v497 = v76;
      v89 = *(v76 + 16);
      v88 = *(v76 + 24);
      if (v89 >= v88 >> 1)
      {
        v92 = sub_22C369AB0(v88);
        sub_22C3B6F58(v92, v89 + 1, 1);
        v76 = v497;
      }

      *(v76 + 16) = v89 + 1;
      sub_22C37054C();
      sub_22C557D60(v67, v76 + v90 + *(v91 + 72) * v89);
      v78 += v477;
      --v75;
    }

    while (v75);
  }

  else
  {

    v76 = MEMORY[0x277D84F90];
  }

  MEMORY[0x28223BE20](v93);
  v424 = v469;
  *&v497 = v76;

  v94 = v462;
  sub_22C563F04(sub_22C50AF20, &v422);
  sub_22C5653E0();
  if (v94)
  {
    goto LABEL_81;
  }

  v96 = v497;
  v97 = 0;
  v488 = *(v497 + 16);
  v482 = v463 + 8;
  v477 = MEMORY[0x277D84F90];
  v483 = v497;
  v98 = (v463 + 8);
  while (v488 != v97)
  {
    if (v97 >= *(v96 + 16))
    {
      __break(1u);
      goto LABEL_78;
    }

    sub_22C37054C();
    v100 = *(v99 + 72);
    v481 = v101;
    sub_22C56517C(v102 + v101 + v100 * v97, v65);
    v76 = v484;
    sub_22C9097FC();
    v103 = v65;
    v104 = v485;
    sub_22C908FAC();
    sub_22C374C8C();
    sub_22C56523C(&qword_27D9BD8C8, v105, MEMORY[0x277D73138]);
    v106 = v486;
    v107 = sub_22C90AE0C();
    v108 = *v98;
    (*v98)(v104, v106);
    v108(v76, v106);
    if (v107)
    {
      sub_22C5651E0(v103);
      ++v97;
      v65 = v103;
    }

    else
    {
      v76 = v481;
      sub_22C557D60(v103, v467);
      v109 = v477;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v111 = v109;
      *&v497 = v109;
      v65 = v103;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v112 = sub_22C373310();
        sub_22C3B6F58(v112, v113, v114);
        v111 = v497;
      }

      v116 = *(v111 + 16);
      v115 = *(v111 + 24);
      if (v116 >= v115 >> 1)
      {
        v117 = sub_22C369AB0(v115);
        sub_22C3B6F58(v117, v116 + 1, 1);
        v111 = v497;
      }

      ++v97;
      *(v111 + 16) = v116 + 1;
      v477 = v111;
      sub_22C557D60(v467, v111 + v76 + v116 * v100);
    }

    v96 = sub_22C36D888();
  }

  v118 = v469;
  v119 = v469[3];
  v120 = v469[4];
  v121 = sub_22C374168(v469, v119);
  *&v497 = v477;
  v122 = sub_22C3A5908(&qword_27D9BD8D0, &unk_22C919AC0);
  sub_22C388F5C();
  v125 = sub_22C3D32C8(v123, &qword_27D9BD8D0, &unk_22C919AC0, v124);
  v126 = v470;
  v127 = sub_22C577748(&v497, v121, v466, v470, v122, v119, v125, v120);
  v484 = v128;
  v483 = v129;

  v130 = v461;
  v481 = v127;
  if (v461 == 255)
  {
    v142 = (v118 + *(type metadata accessor for ToolDefinitionRenderer_v6_0(0) + 44));
    v143 = v142[3];
    v144 = v142[4];
    sub_22C374168(v142, v143);
    v145 = v478;
    (*(v144 + 40))(&v497, v468, v480 & 1, v126, v143, v144);
    if (v145)
    {
      sub_22C36D888();

      sub_22C5653C8();
    }

    v140 = v118;
    v478 = 0;
    v493 = v497;
    v494 = v498;
    v495 = v499;
    v496 = v500;
    v138 = *(&v497 + 1);
    v141 = v497;
    v134 = *(&v498 + 1);
    v136 = v498;
    v132 = v499;
    v147 = BYTE8(v499);
    sub_22C456C30(v497, *(&v497 + 1), v498, *(&v498 + 1), v499, SBYTE8(v499));
    sub_22C3E022C(&v493);
    v131 = v460;
    v133 = v459;
    v135 = v458;
    v137 = v457;
    v139 = v445;
    if (v147)
    {
      goto LABEL_28;
    }

LABEL_32:
    *&v497 = v141;
    *(&v497 + 1) = v138;
    *&v498 = v136;
    *(&v498 + 1) = v134;
    *&v499 = v132;
    sub_22C50AF40(v139, v137, v135, v133, v131, v130);
    v482 = v141;
    v471 = v138;
    v474 = v136;
    v477 = v134;
    v480 = v132;
    sub_22C456C30(v141, v138, v136, v134, v132, 0);
    sub_22C37BE3C();
    sub_22C5602A8(v148, v149, v484, v483, v150);
    v457 = *(&v493 + 1);
    v460 = v493;
    sub_22C381A9C(*(&v494 + 1));

    sub_22C37B698();
    sub_22C456D48(v151, v152, v153);
    LODWORD(v467) = 0;
    goto LABEL_33;
  }

  v131 = v460;
  v132 = v460;
  v133 = v459;
  v134 = v459;
  v135 = v458;
  v136 = v458;
  v137 = v457;
  v138 = v457;
  v139 = v445;
  v140 = v118;
  v141 = v445;
  if ((v461 & 1) == 0)
  {
    goto LABEL_32;
  }

LABEL_28:
  v471 = v138;
  v474 = v136;
  v477 = v134;
  v480 = v132;
  v482 = v141;
  v460 = v141;
  sub_22C50AF40(v139, v137, v135, v133, v131, v130);
  v457 = 0;
  v458 = 0;
  v459 = 0;
  LODWORD(v467) = 1;
LABEL_33:
  v154 = v464;
  v155 = v140[3];
  v156 = v140[4];
  sub_22C374168(v140, v155);
  (*(v156 + 8))(&v493, v155, v156);
  sub_22C374168(&v493, *(&v494 + 1));
  v157 = v446;
  MEMORY[0x2318B6290]();
  v158 = v455;
  v164 = v447;
  v159 = v456;
  (*(v455 + 104))(v447, *MEMORY[0x277D72E10], v456);
  sub_22C4FCF6C();
  (*(v158 + 8))(v164, v159);
  v426 = *(v154 + 8);
  v426(v157, v454);
  v462 = *(&v497 + 1);
  v160 = v497;
  v465 = *(&v498 + 1);
  v463 = v498;
  v161 = v499;
  LODWORD(v164) = BYTE8(v499);
  sub_22C36FF94(&v493);
  sub_22C374168(v140 + 15, v140[18]);
  sub_22C4F9DCC();
  LODWORD(v446) = v164;
  LODWORD(v164) = v467 | v164;
  v464 = v154 + 8;
  LODWORD(v456) = v164;
  v447 = v161;
  v455 = v160;
  if (v164)
  {
    if (v467)
    {
      v165 = v482;
    }

    else
    {
      v165 = v160;
    }

    v461 = v165;
    v166 = v481;
    sub_22C37B2D8();
  }

  else
  {
    v461 = v140[3];
    v168 = v482;
    v501 = v163;
    v488 = v162;
    v485 = v140[4];
    v486 = sub_22C374168(v140, v461);
    v482 = v168;
    v169 = v471;
    v170 = v474;
    v171 = v477;
    sub_22C456C30(v168, v471, v474, v477, v480, 0);
    v172 = v462;
    v173 = v463;
    sub_22C456C30(v160, v462, v463, v465, v161, 0);

    v474 = v170;
    sub_22C456C94(v169, v170, v171);

    sub_22C456C94(v172, v173, v465);
    v174 = sub_22C908DCC();
    v175 = sub_22C55D4A0(v174);
    v176 = sub_22C55DBD4(v175);
    sub_22C5653E0();

    v177 = MEMORY[0x277D84F90];
    v178 = sub_22C909F0C();
    v424 = v485;
    v422 = v177;
    v423 = v461;
    LOWORD(v421) = 256;
    v420 = v438;
    v419 = v486;
    v166 = v481;
    sub_22C37B2D8();
    sub_22C5777F4(v179, v180, v181, v182, v183, v184, v176, v178, v419, v160, v420, v421, v422, v423, v424, v425, v426, v427, v428, v429, v430, v431, v432, v433, SBYTE1(v433), v434, v435, v436);
    v461 = v185;

    v164 = v471;
    v186 = sub_22C377C4C();
    v187 = v477;
    sub_22C456D48(v186, v188, v477);

    sub_22C37022C(v492);
    sub_22C37B698();
    sub_22C456D48(v189, v190, v191);

    v192 = v164;
    LOBYTE(v164) = v456;
    sub_22C456D48(v192, v474, v187);

    sub_22C37B698();
    sub_22C456D48(v193, v194, v195);
    v140 = v469;
  }

  MEMORY[0x28223BE20](v167);
  v424 = v140;
  sub_22C6047A0(MEMORY[0x277D84F98], sub_22C5652A4, &v422, v166, v196, v197, v198, v199, v426, v427, v428, v429, v430, v431, v432, v433, v434, v435, v436, v437);
  v201 = v200;
  v202 = v472;
  sub_22C5653E0();
  if (v164)
  {
    v203 = 0;
    v204 = 0;
    v205 = 0;
    v206 = 0;
    v207 = v461;
  }

  else
  {
    v208 = v461;
    sub_22C50AF90(v461, 0);
    v209 = sub_22C37022C(&v491);
    v210 = v457;
    v211 = v164;
    v164 = v458;
    v212 = v459;
    sub_22C50AFA0(v209, v457, v458, v459, 0);
    v213 = sub_22C3861F8();
    sub_22C50AFA0(v213, v214, v215, v216, 0);
    sub_22C50AF90(v208, 0);

    v217 = sub_22C3861F8();
    sub_22C456D48(v217, v218, v219);
    v207 = v208;
    v203 = &v426;
    v204 = v210;
    v205 = v164;
    LOBYTE(v164) = v211;
    v206 = v212;
  }

  v220 = v473;
  LOBYTE(v493) = v164 & 1;
  *&v497 = v207;
  *(&v497 + 1) = v203;
  *&v498 = v204;
  *(&v498 + 1) = v205;
  *&v499 = v206;
  BYTE8(v499) = v164 & 1;
  *&v500 = v201;
  *(&v500 + 1) = MEMORY[0x277D84F90];
  v440 = v207;
  v441 = v203;
  v442 = v204;
  v443 = v205;
  v445 = v206;
  sub_22C456C30(v207, v203, v204, v205, v206, v164 & 1);
  v221 = 0;
  v501 = sub_22C908DEC();
  v222 = *(v501 + 2);
  v489 = v479 + 16;
  v223 = *MEMORY[0x277D72148];
  v224 = (v479 + 8);
  v225 = (v479 + 96);
  v488 = (v453 + 32);
  v485 = 0x800000022C932110;
  v486 = (v453 + 8);
  while (v222 != v221)
  {
    v226 = v479;
    sub_22C36BA94();
    (*(v226 + 16))(v487, &v501[v227 + *(v226 + 72) * v221], v202);
    v228 = *(v226 + 88);
    v229 = v487;
    if (v228(v487, v202) == v223)
    {
      (*v225)(v229, v202);
      v230 = *v488;
      (*v488)(v475, v229, v220);
      v231 = sub_22C9099DC();
      v229 = v232;
      v233 = v231 == 0xD00000000000001CLL && v485 == v232;
      if (v233)
      {
      }

      else
      {
        v234 = sub_22C90B4FC();

        if ((v234 & 1) == 0)
        {
          v293 = v476;
          v220 = v473;
          v230(v476, v475, v473);
          sub_22C36C640(v293, 0, 1, v220);
          sub_22C3770B0(v293, &qword_27D9BDC50, &unk_22C91B470);
          goto LABEL_56;
        }
      }

      v220 = v473;
      (*v486)(v475, v473);
      v202 = v472;
    }

    else
    {
      (*v224)(v229, v202);
    }

    v235 = sub_22C37022C(&v496);
    sub_22C36C640(v235, 1, 1, v220);
    sub_22C3770B0(v229, &qword_27D9BDC50, &unk_22C91B470);
    ++v221;
  }

  v221 = v222;
LABEL_56:
  v236 = *(v501 + 2);
  v237 = v221 >= v236;
  v233 = v221 == v236;
  v238 = v478;
  v239 = v452;
  v240 = v451;
  v241 = v450;
  v242 = v449;
  v95 = &v480;
  v243 = v448;
  if (!v233)
  {
    if (v237)
    {
      __break(1u);
    }

    else
    {
      sub_22C37054C();
      v245 = v436;
      sub_22C5791C0();
      v246 = v437;
      sub_22C5652C0(v245, v437, &qword_27D9BDC50, &unk_22C91B470);
      if (sub_22C370B74(v246, 1, v220) != 1)
      {
        (*v488)(v243, v246, v220);
        sub_22C3770B0(v245, &qword_27D9BDC50, &unk_22C91B470);
        v244 = 0;
        goto LABEL_62;
      }
    }

    __break(1u);
LABEL_81:

    __break(1u);
    return result;
  }

  v244 = 1;
LABEL_62:
  v247 = v444;
  sub_22C36C640(v243, v244, 1, v220);

  if (sub_22C370B74(v243, 1, v220) == 1)
  {
    sub_22C36D888();

    sub_22C5653C8();
    v248 = sub_22C379944();
    v249 = v456;
    sub_22C377E7C(v248, v250, v251, v252, v253, v456 & 1);
    sub_22C3734D0(v254, v249 & 1);
    v255 = sub_22C369F60();
    v256 = v467;
    sub_22C50AF84(v255, v257, v258, v259, v467);
    v260 = sub_22C36AB74();
    sub_22C456CE4(v260, v261, v262, v263, v264, v256);
    v265 = &qword_27D9BDC50;
    v266 = &unk_22C91B470;
    v267 = v243;
LABEL_64:
    result = sub_22C3770B0(v267, v265, v266);
LABEL_65:
    v268 = v498;
    v269 = v439;
    *v439 = v497;
    v269[1] = v268;
    v270 = v500;
    v269[2] = v499;
    v269[3] = v270;
    return result;
  }

  (*v488)(v247, v243, v220);
  v271 = type metadata accessor for ToolDefinitionRenderer_v6_0(0);
  (*(v241 + 16))(v242, v469 + *(v271 + 36), v240);
  sub_22C9099CC();
  v272 = v242;
  v273 = v241;
  if (v238)
  {
    sub_22C36D888();

    sub_22C5653C8();
    v274 = sub_22C379944();
    v275 = v456;
    sub_22C3734D0(v274, v456 & 1);
    v276 = sub_22C369F60();
    v277 = v467;
    sub_22C50AF84(v276, v278, v279, v280, v467);
    v281 = sub_22C36AB74();
    sub_22C456CE4(v281, v282, v283, v284, v285, v277);
    v286 = sub_22C3E022C(&v497);
    sub_22C377E7C(v286, v287, v288, v289, v290, v275 & 1);
    (*(v273 + 8))(v272, v240);
    v291 = sub_22C565380();
    return v292(v291);
  }

  else
  {
    v294 = v435;
    sub_22C908ACC();

    (*(v241 + 8))(v272, v240);
    v295 = sub_22C908ABC();
    if (sub_22C370B74(v294, 1, v295) == 1)
    {
      v296 = sub_22C565380();
      v297(v296);
      sub_22C36D888();

      sub_22C5653C8();
      v298 = sub_22C379944();
      v299 = v456;
      sub_22C377E7C(v298, v300, v301, v302, v303, v456 & 1);
      sub_22C3734D0(v304, v299 & 1);
      v305 = sub_22C369F60();
      v306 = v467;
      sub_22C50AF84(v305, v307, v308, v309, v467);
      v310 = sub_22C36AB74();
      sub_22C456CE4(v310, v311, v312, v313, v314, v306);
      v265 = &qword_27D9BC0B0;
      v266 = &unk_22C912AD0;
      v267 = v294;
      goto LABEL_64;
    }

    v315 = *(v295 - 8);
    if ((*(v315 + 88))(v294, v295) != *MEMORY[0x277D1E8D0])
    {
      v333 = sub_22C565380();
      v334(v333);
      sub_22C36D888();

      sub_22C5653C8();
      v335 = sub_22C379944();
      v336 = v456;
      sub_22C377E7C(v335, v337, v338, v339, v340, v456 & 1);
      sub_22C3734D0(v341, v336 & 1);
      v342 = sub_22C369F60();
      v343 = v467;
      sub_22C50AF84(v342, v344, v345, v346, v467);
      v347 = sub_22C36AB74();
      sub_22C456CE4(v347, v348, v349, v350, v351, v343);
      result = (*(v315 + 8))(v294, v295);
      goto LABEL_65;
    }

    (*(v315 + 96))(v294, v295);
    (*(v433 + 32))(v432, v294, v434);
    sub_22C903F7C();
    v316 = *(v453 + 16);
    v317 = v430;
    v316(v430, v247, v220);
    v318 = sub_22C9063CC();
    v319 = sub_22C90AACC();
    if (os_log_type_enabled(v318, v319))
    {
      v320 = swift_slowAlloc();
      v478 = 0;
      v321 = v320;
      v489 = swift_slowAlloc();
      *&v493 = v489;
      *v321 = 136315138;
      LODWORD(v488) = v319;
      v322 = sub_22C37022C(&v459);
      v316(v322, v317, v220);
      v323 = v239;
      v324 = sub_22C90A1AC();
      v325 = v220;
      v327 = v326;
      v501 = *v486;
      (v501)(v317, v325);
      v328 = sub_22C36F9F4(v324, v327, &v493);

      *(v321 + 4) = v328;
      _os_log_impl(&dword_22C366000, v318, v488, "Tool definition has a conformance to assistant schema %s. Rendering the schema", v321, 0xCu);
      v329 = sub_22C37022C(&v501);
      sub_22C36FF94(v329);
      MEMORY[0x2318B9880](v319, -1, -1);
      v330 = v321;
      v238 = v478;
      MEMORY[0x2318B9880](v330, -1, -1);

      sub_22C36FB04();
      v332 = v323;
    }

    else
    {

      v352 = sub_22C372158();
      v501 = v353;
      (v353)(v352);
      sub_22C36FB04();
      v332 = v239;
    }

    v331(v332, v429);
    v354 = v469[23];
    v355 = v469[24];
    sub_22C374168(v469 + 20, v354);
    v356 = sub_22C908DCC();
    v357 = sub_22C55D4A0(v356);
    v358 = sub_22C55D7F0(v357);

    v360 = v431;
    MEMORY[0x2318B6290](v359);
    v361 = sub_22C908E7C();
    v362 = *(v355 + 8);
    v425 = v355;
    v363 = v358;
    v76 = v432;
    v362(&v493, v432, v363, v360, v361, v364, v466, v470, v438, v354, v425);
    sub_22C5653E0();
    if (v238)
    {
      sub_22C36D888();

      sub_22C5653C8();
      v365 = sub_22C379944();
      v366 = v456;
      sub_22C3734D0(v365, v456 & 1);
      v367 = sub_22C369F60();
      v368 = v467;
      sub_22C50AF84(v367, v369, v370, v371, v467);
      v372 = sub_22C36AB74();
      sub_22C456CE4(v372, v373, v374, v375, v376, v368);

      v377 = sub_22C3E022C(&v497);
      sub_22C377E7C(v377, v378, v379, v380, v381, v366 & 1);
      v382 = sub_22C37F2E0();
      v383(v382);
      sub_22C36FB04();
      v384(v76, v434);
      v385 = sub_22C5653AC();
      return v386(v385);
    }

    else
    {
LABEL_78:
      v387 = sub_22C37F2E0();
      v388(v387);

      v492[0] = v493;
      v492[1] = v494;
      v492[2] = v495;
      v492[3] = v496;
      v389 = *(&v493 + 1);
      v489 = v493;
      v390 = v494;
      v391 = v495;
      v392 = BYTE8(v495);
      v488 = v500;
      sub_22C37B698();
      sub_22C456C30(v393, v394, v395, v396, v391, v392);

      sub_22C36D888();

      sub_22C5653C8();
      v397 = sub_22C379944();
      v398 = v456;
      sub_22C3734D0(v397, v456 & 1);
      v399 = sub_22C369F60();
      v400 = v76;
      v401 = v467;
      sub_22C50AF84(v399, v402, v403, v404, v467);
      v405 = sub_22C36AB74();
      sub_22C456CE4(v405, v406, v407, v408, v409, v401);
      v410 = sub_22C3E022C(v492);
      sub_22C377E7C(v410, v411, v412, v413, v414, v398 & 1);
      sub_22C36FB04();
      v415(v400, v434);
      v416 = sub_22C5653AC();
      v417(v416);
      result = sub_22C3E022C(&v497);
      v418 = v439;
      *v439 = v489;
      *(v418 + 1) = v389;
      v418[1] = v390;
      *(v418 + 4) = v391;
      *(v418 + 40) = v392;
      *(v418 + 6) = v488;
      *(v418 + 7) = MEMORY[0x277D84F90];
    }
  }

  return result;
}

uint64_t sub_22C55FF54()
{
  v0 = sub_22C9063DC();
  v18 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v2 = &v16[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v3 = sub_22C908D6C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v16[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_22C908DEC();
  (*(v4 + 104))(v6, *MEMORY[0x277D72170], v3);
  v17 = v6;
  v8 = sub_22C5EC62C(sub_22C50AFAC, v16, v7);

  (*(v4 + 8))(v6, v3);
  if (!v8)
  {
    return 1;
  }

  if (sub_22C9097DC() == 7368801 && v9 == 0xE300000000000000)
  {
  }

  else
  {
    v11 = sub_22C90B4FC();

    if ((v11 & 1) == 0)
    {
      return 1;
    }
  }

  sub_22C903F7C();
  v13 = sub_22C9063CC();
  v14 = sub_22C90AAFC();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_22C366000, v13, v14, "Skipping app parameter for system framework intent", v15, 2u);
    MEMORY[0x2318B9880](v15, -1, -1);
  }

  (*(v18 + 8))(v2, v0);
  return 0;
}

uint64_t sub_22C560210(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = (v3 + *(type metadata accessor for ToolDefinitionRenderer_v6_0(0) + 44));
  v8 = v7[3];
  v9 = v7[4];
  sub_22C374168(v7, v8);
  return (*(v9 + 40))(a1, a2, a3, v8, v9);
}

void sub_22C5602A8(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X4>, uint64_t a4@<X5>, void *a5@<X8>)
{
  v91 = sub_22C3A5908(&qword_27D9BD8E0, &qword_22C91B410);
  v10 = MEMORY[0x28223BE20](v91);
  v90 = &v71 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v89 = &v71 - v12;
  v92 = sub_22C3A5908(&qword_27D9BD8E8, &unk_22C919AD0);
  v13 = MEMORY[0x28223BE20](v92);
  v88 = &v71 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v87 = &v71 - v16;
  MEMORY[0x28223BE20](v15);
  v101 = &v71 - v17;
  v18 = *a1;
  v78 = a2;
  sub_22C5652C0(a2 + 80, &v106, &qword_27D9BD658, &qword_22C9186E0);
  if (!v108)
  {
    sub_22C3770B0(&v106, &qword_27D9BD658, &qword_22C9186E0);
    v59 = 0;
    v60 = 0;
    v61 = 0;
    goto LABEL_15;
  }

  v75 = sub_22C374168(&v106, v108);
  v74 = sub_22C908E7C();
  v76 = v19;
  v86 = *(a4 + 16);
  v77 = a5;
  if (!v86)
  {
    v23 = MEMORY[0x277D84F90];
LABEL_17:
    v62 = type metadata accessor for ToolDefinitionRenderer_v6_0(0);
    v63 = *v75;
    v64 = sub_22C49FB90(v18, v78 + *(v62 + 40));
    v66 = v65;

    sub_22C532604(v64, v66, v23, v63, &v102);

    v61 = v102;
    v67 = v103;
    v60 = v104;
    v59 = v105;
    sub_22C36FF94(&v106);
    if (v67)
    {
      v102 = v61;
      v103 = v67;
      v104 = v60;
      v105 = v59;
      sub_22C474C14(&v106);

      v68 = v107;
      v69 = v108;
      v70 = v77;
      *v77 = v106;
      v70[2] = v68;
      v70[3] = v69;
      return;
    }

    a5 = v77;
LABEL_15:
    *a5 = v61;
    a5[1] = 0;
    a5[2] = v60;
    a5[3] = v59;
    return;
  }

  v72 = v18;
  v84 = (v101 + *(v92 + 48));
  v83 = sub_22C90981C();
  v20 = *(v83 - 8);
  v81 = a3 + ((*(v20 + 80) + 32) & ~*(v20 + 80));
  v85 = *(a3 + 16);
  v80 = v20 + 16;
  v82 = v20;
  v79 = v20 + 32;

  v21 = 0;
  v73 = a4;
  v22 = (a4 + 64);
  v23 = MEMORY[0x277D84F90];
  while (v85 != v21)
  {
    v100 = v23;
    v24 = v91;
    v25 = v89;
    v26 = &v89[*(v91 + 48)];
    v27 = v82;
    v28 = *(v82 + 72);
    v99 = v21;
    v29 = v83;
    (*(v82 + 16))(v89, v81 + v28 * v21, v83);
    v31 = *(v22 - 4);
    v30 = *(v22 - 3);
    v33 = *(v22 - 1);
    v96 = *(v22 - 2);
    v32 = v96;
    v97 = v30;
    v95 = v33;
    v98 = v22;
    v34 = *v22;
    v93 = v31;
    v94 = v34;
    *v26 = v31;
    *(v26 + 1) = v30;
    *(v26 + 2) = v32;
    *(v26 + 3) = v33;
    *(v26 + 4) = v34;
    v35 = v90;
    sub_22C557E2C(v25, v90);
    v36 = v35 + *(v24 + 48);
    v37 = *(v27 + 32);
    v38 = v101;
    v37(v101, v35, v29);
    v39 = *(v36 + 32);
    v40 = *(v36 + 16);
    v41 = v84;
    *v84 = *v36;
    v41[1] = v40;
    *(v41 + 4) = v39;
    v42 = v87;
    sub_22C5652C0(v38, v87, &qword_27D9BD8E8, &unk_22C919AD0);
    v43 = *(v92 + 48);
    v45 = *(v42 + v43);
    v44 = *(v42 + v43 + 8);
    v46 = *(v42 + v43 + 16);
    v47 = *(v42 + v43 + 32);
    v48 = v88;
    v49 = &v88[v43];
    v50 = v42;
    v51 = *(v42 + v43 + 24);
    v37(v88, v50, v29);
    *v49 = v45;
    *(v49 + 1) = v44;
    *(v49 + 2) = v46;
    *(v49 + 3) = v51;
    *(v49 + 4) = v47;

    sub_22C456C94(v97, v96, v95);
    sub_22C456C94(v44, v46, v51);
    sub_22C3770B0(v48, &qword_27D9BD8E8, &unk_22C919AD0);
    sub_22C3770B0(v101, &qword_27D9BD8E8, &unk_22C919AD0);
    if (v46)
    {
      v23 = v100;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_22C591018(0, *(v23 + 16) + 1, 1, v23);
        v23 = v57;
      }

      v53 = v98;
      v52 = v99;
      v55 = *(v23 + 16);
      v54 = *(v23 + 24);
      if (v55 >= v54 >> 1)
      {
        sub_22C591018(v54 > 1, v55 + 1, 1, v23);
        v23 = v58;
      }

      *(v23 + 16) = v55 + 1;
      v56 = (v23 + 32 * v55);
      v56[4] = v44;
      v56[5] = v46;
      v56[6] = v51;
      v56[7] = v47;
    }

    else
    {
      v52 = v99;
      v23 = v100;
      v53 = v98;
    }

    v21 = v52 + 1;
    v22 = v53 + 5;
    if (v86 == v21)
    {

      v18 = v72;
      goto LABEL_17;
    }
  }

  __break(1u);
}

uint64_t sub_22C560954(uint64_t a1, uint64_t a2, void *a3)
{
  v27 = a1;
  v5 = sub_22C3A5908(&qword_27D9BD8F0, &unk_22C919AE0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v24 - v6;
  v8 = sub_22C3A5908(&qword_27D9BD8E8, &unk_22C919AD0);
  v9 = v8 - 8;
  MEMORY[0x28223BE20](v8);
  v11 = &v24 - v10;
  v12 = sub_22C90981C();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22C5652C0(a2, v11, &qword_27D9BD8E8, &unk_22C919AD0);
  v16 = &v11[*(v9 + 56)];
  v18 = *v16;
  v17 = *(v16 + 1);
  v19 = *(v16 + 3);
  v25 = *(v16 + 2);
  v26 = v17;
  v24 = *(v16 + 4);
  (*(v13 + 32))(v15, v11, v12);
  v21 = a3[3];
  v20 = a3[4];
  sub_22C374168(a3, v21);
  (*(v20 + 32))(v15, v21, v20);
  (*(v13 + 16))(v7, v15, v12);
  v22 = type metadata accessor for _PromptMapper._ToolPromptMap._ParameterPromptMap(0);
  *&v7[*(v22 + 20)] = v18;
  sub_22C36C640(v7, 0, 1, v22);

  sub_22C6036EC();

  sub_22C456D48(v26, v25, v19);
  return (*(v13 + 8))(v15, v12);
}

uint64_t sub_22C560BE4(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for ToolDefinitionRenderer_v6_0(0) + 44));
  v6 = v5[3];
  v7 = v5[4];
  sub_22C374168(v5, v6);
  return (*(v7 + 32))(a1, a2, v6, v7);
}

uint64_t sub_22C560CBC(uint64_t a1)
{
  v2 = sub_22C908D6C();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v27 - v7;
  v9 = sub_22C908EAC();
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = 0;
  v14 = *(a1 + 16);
  v35 = a1;
  v36 = v14;
  v33 = v15 + 16;
  v16 = *MEMORY[0x277D72188];
  v38 = *MEMORY[0x277D72178];
  v17 = (v3 + 8);
  v34 = v15;
  v29 = v6;
  v30 = (v15 + 8);
  v31 = v12;
  v32 = v10;
  while (1)
  {
    if (v13 == v36)
    {
      return v13 == v36;
    }

    v18 = v13;
    (*(v34 + 16))(v12, v35 + ((*(v34 + 80) + 32) & ~*(v34 + 80)) + *(v34 + 72) * v13, v9);
    v28 = v18;
    v37 = v18 + 1;
    v19 = sub_22C908DEC();
    v20 = 0;
    v21 = *(v19 + 16);
    while (1)
    {
      if (v21 == v20)
      {
        v20 = v21;
        goto LABEL_10;
      }

      (*(v3 + 16))(v8, v19 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v20, v2);
      v22 = (*(v3 + 88))(v8, v2);
      if (v22 == v16)
      {
        break;
      }

      if (v22 == v38)
      {
        goto LABEL_10;
      }

      (*v17)(v8, v2);
      ++v20;
    }

    (*v17)(v8, v2);
LABEL_10:
    v23 = *(v19 + 16);
    if (v20 == v23)
    {

      (*v30)(v31, v32);
      v13 = v28;
      return v13 == v36;
    }

    if (v20 >= v23)
    {
      break;
    }

    v24 = v19 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v20;
    v20 = v29;
    (*(v3 + 16))(v29, v24, v2);
    v25 = (*(v3 + 88))(v20, v2);
    if (v25 == v16)
    {
      (*v17)(v20, v2);
    }

    else if (v25 != v38)
    {
      goto LABEL_19;
    }

    v12 = v31;
    v9 = v32;
    (*v30)(v31, v32);
    v13 = v37;
  }

  __break(1u);
LABEL_19:
  result = (*v17)(v20, v2);
  __break(1u);
  return result;
}

void sub_22C56107C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if ((sub_22C560CBC(a1) & 1) == 0)
  {
    type metadata accessor for _PromptMapper._ToolPromptMap._ParameterPromptMap(0);
    v11 = MEMORY[0x277D84F90];
    v30 = sub_22C909F0C();
    *a2 = 0u;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0;
LABEL_12:
    *(a2 + 40) = 1;
    goto LABEL_13;
  }

  sub_22C378A4C(v2, &v34);
  v5 = sub_22C37335C();
  sub_22C513F8C(v5, v6);
  v8 = v7;
  sub_22C565328(&v34);
  if (*(v8 + 16) != *(a1 + 16))
  {

    type metadata accessor for _PromptMapper._ToolPromptMap._ParameterPromptMap(0);
    v11 = MEMORY[0x277D84F90];
    sub_22C909F0C();
    *a2 = 2;
    sub_22C37274C();
    goto LABEL_12;
  }

  v34 = 0;
  v35 = 0xE000000000000000;
  sub_22C90AF5C();
  MEMORY[0x2318B7850](543581540, 0xE400000000000000);
  MEMORY[0x2318B7850](0x695F686372616573, 0xED00007070615F6ELL);
  MEMORY[0x2318B7850](0xD0000000000000ACLL, 0x800000022C932130);
  v9 = v34;
  v10 = v35;
  sub_22C3A5908(&qword_27D9BAF00, &unk_22C912C80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_22C90F800;
  sub_22C36A83C();
  v12 = swift_allocObject();
  *(v12 + 16) = 0xD00000000000001ELL;
  *(v12 + 24) = 0x800000022C9321E0;
  sub_22C591324();
  v14 = v13;
  v16 = *(v13 + 16);
  v15 = *(v13 + 24);
  if (v16 >= v15 >> 1)
  {
    sub_22C369AB0(v15);
    sub_22C591324();
    v14 = v31;
  }

  *(v14 + 16) = v16 + 1;
  *(v14 + 8 * v16 + 32) = v12;
  v34 = v8;
  sub_22C3A5908(&qword_27D9BB5D0, &unk_22C9112A0);
  sub_22C3D32C8(&qword_28142F9F0, &qword_27D9BB5D0, &unk_22C9112A0, MEMORY[0x277D83958]);
  v17 = sub_22C90A04C();
  v19 = v18;

  sub_22C36A83C();
  v20 = swift_allocObject();
  *(v20 + 16) = v17;
  *(v20 + 24) = v19;
  v21 = *(v14 + 16);
  v22 = *(v14 + 24);

  if (v21 >= v22 >> 1)
  {
    sub_22C591324();
    v14 = v32;
  }

  *(v14 + 16) = v21 + 1;
  *(v14 + 8 * v21 + 32) = v20;

  sub_22C36A83C();
  v23 = swift_allocObject();
  *(v23 + 16) = 93;
  *(v23 + 24) = 0xE100000000000000;
  v25 = *(v14 + 16);
  v24 = *(v14 + 24);
  if (v25 >= v24 >> 1)
  {
    sub_22C369AB0(v24);
    sub_22C591324();
    v14 = v33;
  }

  *(v14 + 16) = v25 + 1;
  *(v14 + 8 * v25 + 32) = v23;
  v26 = sub_22C3DB9B0(v14);

  v27 = swift_allocObject();
  sub_22C3A5908(&qword_27D9BB770, qword_22C90FE80);
  v28 = swift_allocObject();
  *(v28 + 16) = v26;
  *(v27 + 16) = v28;
  *(v11 + 32) = v27 | 0x6000000000000000;
  sub_22C36A83C();
  v29 = swift_allocObject();
  *(v29 + 16) = v9;
  *(v29 + 24) = v10;
  type metadata accessor for _PromptMapper._ToolPromptMap._ParameterPromptMap(0);
  sub_22C909F0C();
  *a2 = v29;
  sub_22C37274C();
  *(a2 + 40) = 0;
LABEL_13:
  *(a2 + 48) = v30;
  *(a2 + 56) = v11;
}

uint64_t sub_22C561498@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_22C378A4C(v2, v6);
  sub_22C5145AC(a1, a2);
  return sub_22C565328(v6);
}

void sub_22C5614F8(void *a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v38 = a4;
  v36 = a5;
  v37 = a3;
  v35 = a2;
  sub_22C90963C();
  sub_22C369824();
  MEMORY[0x28223BE20](v8);
  sub_22C369838();
  v9 = sub_22C90941C();
  sub_22C369824();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  sub_22C369838();
  v15 = v14 - v13;
  *&v44 = sub_22C9097DC();
  *(&v44 + 1) = v16;
  v41 = &v44;
  v17 = sub_22C5EC08C(sub_22C457404, v40, &unk_283FAEBB0);

  if (v17)
  {
    *a6 = 1;
    sub_22C37274C();
    *(a6 + 40) = v19;
  }

  else
  {
    MEMORY[0x2318B6CE0](v18);
    v20 = type metadata accessor for ParameterDefinitionRenderer_v6_0(0);
    v21 = sub_22C4F6864(v39 + *(v20 + 24), v38);
    v22 = *(v11 + 8);
    v22(v15, v9);
    if (v21 != 2 || v37 == 0)
    {
      sub_22C374168(v39, v39[3]);
      MEMORY[0x2318B6CE0]();
      v24 = sub_22C37F808();
      v25(v24);
      sub_22C377C4C();
      sub_22C4FCD10();
      v26 = sub_22C372158();
      v27(v26);
      v22(v15, v9);
    }

    else
    {
      v34 = sub_22C374168(v39, v39[3]);
      MEMORY[0x2318B6CE0](v34);
      v28 = sub_22C37F808();
      v29(v28);
      sub_22C377C4C();
      sub_22C4FCF6C();
      v30 = sub_22C372158();
      v31(v30);
      v32 = (v22)(v15, v9);
      v44 = v42;
      v45[0] = v43[0];
      *(v45 + 9) = *(v43 + 9);
      MEMORY[0x28223BE20](v32);
      *(&v34 - 4) = v39;
      *(&v34 - 3) = a1;
      v33 = v37;
      *(&v34 - 2) = v35;
      *(&v34 - 1) = v33;
      sub_22C54DBA0(sub_22C565150, a6);
      sub_22C3770B0(&v44, &qword_27D9BAB08, &qword_22C91A110);
    }
  }
}

uint64_t sub_22C561860@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v11 = *a1;
  v12 = a1[1];
  v13 = a1[2];
  v14 = a1[3];
  v15 = a1[4];
  sub_22C456C94(v12, v13, v14);
  result = sub_22C561900(v11, a2, a3, a4, a5);
  *a6 = result;
  a6[1] = v12;
  a6[2] = v13;
  a6[3] = v14;
  a6[4] = v15;
  return result;
}

uint64_t sub_22C561900(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  *(v9 + 24) = 0xE000000000000000;
  sub_22C591324();
  v11 = v10;
  v12 = *(v10 + 16);
  if (v12 >= *(v10 + 24) >> 1)
  {
    sub_22C591324();
    v11 = v31;
  }

  *(v11 + 16) = v12 + 1;
  *(v11 + 8 * v12 + 32) = v9;
  v13 = sub_22C561BB0(a3, a4, a5);
  v15 = v14;
  v16 = swift_allocObject();
  *(v16 + 16) = v13;
  *(v16 + 24) = v15;
  v18 = *(v11 + 16);
  v17 = *(v11 + 24);

  if (v18 >= v17 >> 1)
  {
    sub_22C591324();
    v11 = v32;
  }

  *(v11 + 16) = v18 + 1;
  *(v11 + 8 * v18 + 32) = v16;

  v19 = swift_allocObject();
  *(v19 + 16) = 2112800;
  *(v19 + 24) = 0xE300000000000000;
  v20 = *(v11 + 16);
  v21 = *(v11 + 24) >> 1;
  v22 = v20 + 1;
  if (v21 <= v20)
  {
    sub_22C591324();
    v11 = v33;
    v21 = *(v33 + 24) >> 1;
  }

  *(v11 + 16) = v22;
  *(v11 + 8 * v20 + 32) = v19;
  v23 = v20 + 2;
  if (v21 < (v20 + 2))
  {
    sub_22C591324();
    v11 = v34;
  }

  *(v11 + 16) = v23;
  *(v11 + 8 * v22 + 32) = a1;
  v24 = swift_allocObject();
  *(v24 + 16) = 0;
  *(v24 + 24) = 0xE000000000000000;
  v25 = *(v11 + 24);
  v26 = v20 + 3;

  if (v26 > (v25 >> 1))
  {
    sub_22C591324();
    v11 = v35;
  }

  *(v11 + 16) = v26;
  *(v11 + 8 * v23 + 32) = v24;
  v27 = sub_22C3DB9B0(v11);

  v28 = swift_allocObject();
  sub_22C3A5908(&qword_27D9BB770, qword_22C90FE80);
  v29 = swift_allocObject();
  *(v29 + 16) = v27;
  *(v28 + 16) = v29;
  return v28 | 0x6000000000000000;
}

uint64_t sub_22C561BB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_22C90A28C();
  sub_22C9097DC();
  v4 = sub_22C90A28C();
  v6 = v5;

  MEMORY[0x2318B7850](v4, v6);

  MEMORY[0x2318B7850](0x7361696C41, 0xE500000000000000);

  return v3;
}

void sub_22C561C78(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v67 = a4;
  v68 = a5;
  v65 = a2;
  v66 = a3;
  sub_22C90963C();
  sub_22C369824();
  MEMORY[0x28223BE20](v8);
  sub_22C369838();
  v9 = sub_22C90941C();
  sub_22C369824();
  v69 = v10;
  MEMORY[0x28223BE20](v11);
  sub_22C369838();
  v14 = v13 - v12;
  v73 = sub_22C9097DC();
  v74 = v15;
  v72 = &v73;
  v16 = sub_22C5EC08C(sub_22C3AC11C, v71, &unk_283FAEBB0);

  if (v16)
  {
    *a6 = 1;
    *(a6 + 8) = 0u;
    *(a6 + 24) = 0u;
    *(a6 + 40) = 1;
  }

  else
  {
    v62[1] = 0;
    v63 = v9;
    v64 = a6;
    sub_22C374168(v70, v70[3]);
    MEMORY[0x2318B6CE0]();
    v17 = sub_22C37F808();
    v18(v17);
    sub_22C4FCF6C();
    v19 = sub_22C372158();
    v20(v19);
    v21 = *(v69 + 8);
    v22 = v21(v14, v9);
    v23 = v73;
    v24 = v76;
    v67 = v75;
    v68 = v74;
    v25 = v77;
    v26 = v78;
    v69 = a1;
    MEMORY[0x2318B6CE0](v22);
    type metadata accessor for ParameterDefinitionRenderer_v6_0(0);
    sub_22C5089A0();
    v28 = v27;
    v29 = v21(v14, v9);
    if (v28)
    {
      v30 = v24;
      v31 = v25;
      LODWORD(v63) = v26;
      if (v26)
      {
        v32 = 1;
        v33 = v23;
        v35 = v69;
        v34 = v70;
        v36 = v25;
        v37 = v68;
        v38 = v67;
        v39 = v30;
      }

      else
      {
        v41 = v23;
        v42 = sub_22C377C4C();
        v38 = v43;
        v39 = v44;
        v36 = v31;
        v37 = v45;
        sub_22C456C30(v42, v45, v43, v44, v36, 0);
        sub_22C456C94(v37, v38, v39);
        v35 = v69;
        v34 = v70;
        v33 = sub_22C562070(v41, v70, v69, v65, v66);
        sub_22C565398();
        sub_22C456CE4(v46, v47, v48, v49, v50, 0);
        v32 = 0;
      }

      LOBYTE(v26) = v63;
    }

    else
    {
      v40 = v24;
      v38 = v67;
      v37 = v68;
      sub_22C456C30(v23, v68, v67, v40, v25, v26);
      v33 = v23;
      v32 = v26;
      v35 = v69;
      v34 = v70;
      v36 = v25;
      v39 = v40;
    }

    v70 = v62;
    v73 = v33;
    v74 = v37;
    v75 = v38;
    v76 = v39;
    v77 = v36;
    v78 = v32;
    MEMORY[0x28223BE20](v29);
    v62[-2] = v34;
    v62[-1] = v35;
    sub_22C54DBA0(sub_22C565148, v51);
    sub_22C565398();
    sub_22C456CE4(v52, v53, v54, v55, v56, v26);
    sub_22C565398();
    sub_22C456CE4(v57, v58, v59, v60, v61, v32);
  }
}

uint64_t sub_22C562070(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  *(v8 + 24) = 0xE000000000000000;
  sub_22C591324();
  v10 = v9;
  v11 = *(v9 + 16);
  if (v11 >= *(v9 + 24) >> 1)
  {
    sub_22C591324();
    v10 = v24;
  }

  *(v10 + 16) = v11 + 1;
  *(v10 + 8 * v11 + 32) = v8;

  v12 = sub_22C561BB0(a3, a4, a5);
  v14 = v13;

  v15 = swift_allocObject();
  *(v15 + 16) = v12;
  *(v15 + 24) = v14;
  v17 = *(v10 + 16);
  v16 = *(v10 + 24);

  if (v17 >= v16 >> 1)
  {
    sub_22C591324();
    v10 = v25;
  }

  *(v10 + 16) = v17 + 1;
  *(v10 + 8 * v17 + 32) = v15;

  v18 = swift_allocObject();
  *(v18 + 16) = 0;
  *(v18 + 24) = 0xE000000000000000;
  v19 = *(v10 + 16);
  if (v19 >= *(v10 + 24) >> 1)
  {
    sub_22C591324();
    v10 = v26;
  }

  *(v10 + 16) = v19 + 1;
  *(v10 + 8 * v19 + 32) = v18;
  v20 = sub_22C3DB9B0(v10);

  v21 = swift_allocObject();
  sub_22C3A5908(&qword_27D9BB770, qword_22C90FE80);
  v22 = swift_allocObject();
  *(v22 + 16) = v20;
  *(v21 + 16) = v22;
  return v21 | 0x6000000000000000;
}

void sub_22C562274(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  v6 = *a1;
  v7 = a1[1];
  v9 = a1[2];
  v8 = a1[3];
  v10 = a1[4];
  sub_22C456C94(v7, v9, v8);
  v11 = sub_22C56237C(v6);
  if (v9)
  {
    v14[0] = v7;
    v14[1] = v9;
    v14[2] = v8;
    v14[3] = v10;

    sub_22C562668(v14, a2, v15);

    sub_22C456D48(v7, v9, v8);
    v12 = v15[1];
    v13 = v15[0];
  }

  else
  {
    sub_22C456D48(v7, 0, v8);
    v13 = v7;
    *&v12 = v8;
    *(&v12 + 1) = v10;
  }

  *a4 = v11;
  *(a4 + 8) = v13;
  *(a4 + 24) = v12;
}

uint64_t sub_22C56237C(uint64_t a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  *(v2 + 24) = 0xE000000000000000;
  sub_22C591324();
  v4 = v3;
  v5 = *(v3 + 16);
  if (v5 >= *(v3 + 24) >> 1)
  {
    sub_22C591324();
    v4 = v24;
  }

  *(v4 + 16) = v5 + 1;
  *(v4 + 8 * v5 + 32) = v2;
  sub_22C9097DC();
  v6 = sub_22C90A2CC();
  v8 = v7;

  v9 = swift_allocObject();
  *(v9 + 16) = v6;
  *(v9 + 24) = v8;
  v11 = *(v4 + 16);
  v10 = *(v4 + 24);

  if (v11 >= v10 >> 1)
  {
    sub_22C591324();
    v4 = v25;
  }

  *(v4 + 16) = v11 + 1;
  *(v4 + 8 * v11 + 32) = v9;

  v12 = swift_allocObject();
  *(v12 + 16) = 8250;
  *(v12 + 24) = 0xE200000000000000;
  v13 = *(v4 + 16);
  v14 = *(v4 + 24) >> 1;
  v15 = v13 + 1;
  if (v14 <= v13)
  {
    sub_22C591324();
    v4 = v26;
    v14 = *(v26 + 24) >> 1;
  }

  *(v4 + 16) = v15;
  *(v4 + 8 * v13 + 32) = v12;
  v16 = v13 + 2;
  if (v14 < (v13 + 2))
  {
    sub_22C591324();
    v4 = v27;
  }

  *(v4 + 16) = v16;
  *(v4 + 8 * v15 + 32) = a1;
  v17 = swift_allocObject();
  *(v17 + 16) = 0;
  *(v17 + 24) = 0xE000000000000000;
  v18 = *(v4 + 24);
  v19 = v13 + 3;

  if (v19 > (v18 >> 1))
  {
    sub_22C591324();
    v4 = v28;
  }

  *(v4 + 16) = v19;
  *(v4 + 8 * v16 + 32) = v17;
  v20 = sub_22C3DB9B0(v4);

  v21 = swift_allocObject();
  sub_22C3A5908(&qword_27D9BB770, qword_22C90FE80);
  v22 = swift_allocObject();
  *(v22 + 16) = v20;
  *(v21 + 16) = v22;
  return v21 | 0x6000000000000000;
}

uint64_t sub_22C56261C(uint64_t a1)
{
  sub_22C9097DC();
  v1 = sub_22C90A2CC();

  return v1;
}

uint64_t sub_22C562668@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = sub_22C3A5908(&qword_27D9BC028, &unk_22C9134B0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v24[-1] - v8;
  v10 = *a1;
  v11 = a1[1];
  v12 = a1[2];
  v13 = a1[3];
  sub_22C5652C0(a2 + 40, v26, &qword_27D9BD900, &qword_22C919AF0);
  if (v27)
  {
    sub_22C374168(v26, v27);
    sub_22C9097DC();
    v23 = sub_22C90A2CC();
    v28 = v3;
    v15 = v14;

    v24[0] = v10;
    v24[1] = v11;
    v24[2] = v12;
    v24[3] = v13;
    MEMORY[0x2318B6CE0](v16);
    v17 = sub_22C90941C();
    sub_22C36C640(v9, 0, 1, v17);
    sub_22C532128(v23, v15, v24, v9, v25);

    sub_22C3770B0(v9, &qword_27D9BC028, &unk_22C9134B0);
    v18 = v25[0];
    v19 = v25[1];
    v20 = v25[2];
    v21 = v25[3];
    result = sub_22C36FF94(v26);
  }

  else
  {
    result = sub_22C3770B0(v26, &qword_27D9BD900, &qword_22C919AF0);
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 0;
  }

  *a3 = v18;
  a3[1] = v19;
  a3[2] = v20;
  a3[3] = v21;
  return result;
}

uint64_t sub_22C562810(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a4;
  if (!a4)
  {
    v6 = sub_22C9097BC();
    if (!v7)
    {
      return 0xF000000000000007;
    }

    a3 = v6;
    v5 = v7;
  }

  sub_22C36A83C();
  v8 = swift_allocObject();
  *(v8 + 16) = a3;
  *(v8 + 24) = v5;

  return v8;
}

void sub_22C5628BC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t *a8@<X8>)
{
  v162 = a6;
  v163 = a7;
  v154 = a5;
  v155 = a4;
  v161 = a3;
  v164 = a8;
  v186 = sub_22C9097AC();
  sub_22C369824();
  v166 = v11;
  MEMORY[0x28223BE20](v12);
  sub_22C3698E4();
  v185 = v13;
  sub_22C369930();
  MEMORY[0x28223BE20](v14);
  sub_22C36BA64();
  v184 = v15;
  sub_22C90963C();
  sub_22C369824();
  v159 = v17;
  v160 = v16;
  MEMORY[0x28223BE20](v16);
  sub_22C369838();
  v158 = v19 - v18;
  v156 = type metadata accessor for PromptToolsHelper.RenderableParameter(0);
  sub_22C369824();
  v188 = v20;
  MEMORY[0x28223BE20](v21);
  sub_22C3698E4();
  v173 = v22;
  sub_22C369930();
  MEMORY[0x28223BE20](v23);
  sub_22C36BA58();
  v167 = v24;
  sub_22C369930();
  MEMORY[0x28223BE20](v25);
  sub_22C36BA64();
  v165 = v26;
  v27 = sub_22C90981C();
  sub_22C369824();
  v29 = v28;
  MEMORY[0x28223BE20](v30);
  sub_22C3698E4();
  v178 = v31;
  sub_22C369930();
  MEMORY[0x28223BE20](v32);
  sub_22C36BA58();
  v180 = v33;
  sub_22C369930();
  MEMORY[0x28223BE20](v34);
  v36 = v152 - v35;
  v157 = type metadata accessor for AssistantToolSchemaDefinitionRenderer_v6_0(0);
  v176 = v8;
  sub_22C5509B8();
  v175 = v192;
  v170 = v194;
  v171 = v193;
  v168 = v196;
  v169 = v195;
  v174 = v197;
  sub_22C456C30(v192, v193, v194, v195, v196, v197);
  sub_22C3E022C(&v192);
  v172 = a1;
  v37 = sub_22C908D8C();
  v38 = *(v37 + 16);
  if (!v38)
  {

    v61 = MEMORY[0x277D84F90];
    goto LABEL_16;
  }

  v152[1] = v37;
  v153 = v29;
  v182 = *(v29 + 16);
  v183 = (v29 + 16);
  sub_22C36BA94();
  v177 = v39;
  v41 = v40 + v39;
  v43 = *(v42 + 56);
  v179 = (v42 + 16);
  v181 = MEMORY[0x277D84F90];
  v187 = a2;
  do
  {
    v182(v36, v41, v27);
    v44 = sub_22C9097DC();
    if (!*(a2 + 16))
    {

LABEL_11:
      v57 = sub_22C37335C();
      v58(v57);
      goto LABEL_12;
    }

    v46 = sub_22C36E2BC(v44, v45);
    v48 = v47;

    if ((v48 & 1) == 0)
    {
      goto LABEL_11;
    }

    v49 = *(v187 + 56) + v46 * v43;
    v50 = v178;
    v182(v178, v49, v27);
    v51 = sub_22C37335C();
    v52(v51);
    v53 = *v179;
    (*v179)(v180, v50, v27);
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v54 = v181;
    }

    else
    {
      sub_22C373310();
      sub_22C59266C();
      v54 = v59;
    }

    v56 = *(v54 + 16);
    v55 = *(v54 + 24);
    if (v56 >= v55 >> 1)
    {
      sub_22C369AB0(v55);
      sub_22C59266C();
      v54 = v60;
    }

    *(v54 + 16) = v56 + 1;
    v181 = v54;
    v53(v54 + v177 + v56 * v43, v180, v27);
LABEL_12:
    v41 += v43;
    --v38;
    a2 = v187;
  }

  while (v38);

  v29 = v153;
  v61 = v181;
LABEL_16:
  v62 = *(v61 + 16);
  v63 = v165;
  if (v62)
  {
    v187 = v27;
    __dst[0] = MEMORY[0x277D84F90];
    v64 = v61;
    sub_22C3B6F58(0, v62, 0);
    v183 = *(v29 + 16);
    v65 = __dst[0];
    sub_22C36BA94();
    v181 = v64;
    v67 = v64 + v66;
    v68 = *(v29 + 72);
    v69 = v156;
    do
    {
      v183(v63, v67, v187);
      v70 = (v63 + *(v69 + 20));
      *v70 = 0;
      v70[1] = 0;
      __dst[0] = v65;
      v72 = *(v65 + 16);
      v71 = *(v65 + 24);
      if (v72 >= v71 >> 1)
      {
        v75 = sub_22C369AB0(v71);
        sub_22C3B6F58(v75, v72 + 1, 1);
        v69 = v156;
        v65 = __dst[0];
      }

      *(v65 + 16) = v72 + 1;
      sub_22C37054C();
      sub_22C557D60(v63, v65 + v73 + *(v74 + 72) * v72);
      v67 += v68;
      --v62;
    }

    while (v62);
  }

  else
  {

    v65 = MEMORY[0x277D84F90];
  }

  MEMORY[0x28223BE20](v76);
  v151[2] = v176;
  __dst[0] = v65;

  v77 = 0;
  sub_22C563F04(sub_22C56515C, v151);

  v78 = __dst[0];
  v79 = 0;
  v187 = *(__dst[0] + 16);
  v80 = v167;
  v182 = (v166 + 8);
  v180 = MEMORY[0x277D84F90];
  v183 = __dst[0];
  v81 = (v166 + 8);
  while (v187 != v79)
  {
    if (v79 >= *(v78 + 2))
    {
      __break(1u);

      __break(1u);
      return;
    }

    sub_22C37054C();
    v83 = *(v82 + 72);
    v181 = v84;
    sub_22C56517C(v85 + v84 + v83 * v79, v80);
    v86 = v184;
    sub_22C9097FC();
    v87 = v185;
    sub_22C908FAC();
    sub_22C374C8C();
    sub_22C56523C(&qword_27D9BD8C8, v88, MEMORY[0x277D73138]);
    v89 = v80;
    v90 = v186;
    v91 = sub_22C90AE0C();
    v77 = *v81;
    (*v81)(v87, v90);
    (v77)(v86, v90);
    if (v91)
    {
      sub_22C5651E0(v89);
      ++v79;
      v80 = v89;
      v78 = v183;
    }

    else
    {
      v92 = v181;
      sub_22C557D60(v89, v173);
      v93 = v180;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      __dst[0] = v93;
      v80 = v89;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v95 = sub_22C373310();
        sub_22C3B6F58(v95, v96, v97);
        v93 = __dst[0];
      }

      v98 = v92;
      v77 = *(v93 + 16);
      v99 = *(v93 + 24);
      if (v77 >= v99 >> 1)
      {
        v100 = sub_22C369AB0(v99);
        sub_22C3B6F58(v100, v77 + 1, 1);
        v93 = __dst[0];
      }

      ++v79;
      *(v93 + 16) = v77 + 1;
      v180 = v93;
      sub_22C557D60(v173, v93 + v98 + v77 * v83);
      v78 = v183;
    }
  }

  v101 = v176;
  v102 = (v176 + *(v157 + 24));
  v103 = v102[3];
  v104 = v102[4];
  v105 = sub_22C374168(v102, v103);
  __dst[0] = v180;
  v106 = sub_22C3A5908(&qword_27D9BD8D0, &unk_22C919AC0);
  sub_22C388F5C();
  v109 = sub_22C3D32C8(v107, &qword_27D9BD8D0, &unk_22C919AC0, v108);
  v110 = sub_22C577748(__dst, v105, v162, v163, v106, v103, v109, v104);
  v185 = v111;
  v186 = v110;
  v184 = v112;

  sub_22C374168(v102, v102[3]);
  v113 = sub_22C37335C();
  v114(v113);
  sub_22C374168(v190, v190[3]);
  v116 = v158;
  v115 = v159;
  v117 = v160;
  (*(v159 + 104))(v158, *MEMORY[0x277D72E10], v160);
  sub_22C37BE3C();
  sub_22C4FCF6C();
  (*(v115 + 8))(v116, v117);
  v118 = __dst[0];
  v119 = __dst[1];
  v120 = __dst[2];
  v187 = __dst[4];
  v188 = __dst[3];
  v121 = LOBYTE(__dst[5]);
  sub_22C36FF94(v190);
  sub_22C374168(v101, v101[3]);
  sub_22C4FA634();
  LODWORD(v181) = v121;
  v124 = v174 | v121;
  v182 = v118;
  v183 = v119;
  if ((v174 | v121))
  {
    if (v174)
    {
      LOBYTE(v125) = v175;
    }

    else
    {
      LOBYTE(v125) = v118;
    }

    v126 = 0;
    v127 = 0;
    v128 = v120;
    v129 = 0;
    v130 = 0;
    v125 = v125;
  }

  else
  {
    v190[0] = v175;
    v190[1] = v171;
    LODWORD(v180) = v174 | v121;
    v190[2] = v170;
    v190[3] = v169;
    v190[4] = v168;
    v190[5] = v118;
    v190[6] = v119;
    v190[7] = v120;
    v190[8] = v188;
    v190[9] = v187;
    v131 = v123;
    v132 = v122;
    memcpy(v189, v190, sizeof(v189));
    v128 = v120;
    sub_22C456C30(v175, v171, v170, v169, v168, 0);
    sub_22C456C30(v118, v183, v120, v188, v187, 0);
    sub_22C5652C0(v190, __dst, &qword_27D9BD8F8, &qword_22C91A3B0);
    sub_22C56355C(v189, &v189[5], v176, v132, v131, v186, v185, v184, __dst, v172, v155, v154);
    sub_22C37BE3C();
    sub_22C3770B0(v133, v134, v135);

    v125 = __dst[0];
    v126 = __dst[1];
    v127 = __dst[2];
    v129 = __dst[3];
    v130 = __dst[4];
    memcpy(__dst, v189, 0x50uLL);
    v124 = v180;
    sub_22C3770B0(__dst, &qword_27D9BD8F8, &qword_22C91A3B0);
  }

  v136 = sub_22C3830D8();
  sub_22C456C30(v136, v137, v138, v139, v140, v141);
  type metadata accessor for _PromptMapper._ToolPromptMap._ParameterPromptMap(0);
  v142 = MEMORY[0x277D84F90];
  v143 = sub_22C909F0C();

  sub_22C456CE4(v182, v183, v128, v188, v187, v181 & 1);
  sub_22C456CE4(v175, v171, v170, v169, v168, v174);
  v144 = sub_22C3830D8();
  sub_22C456CE4(v144, v145, v146, v147, v148, v149);
  v150 = v164;
  *v164 = v125;
  v150[1] = v126;
  v150[2] = v127;
  v150[3] = v129;
  v150[4] = v130;
  *(v150 + 40) = v124 & 1;
  v150[6] = v143;
  v150[7] = v142;
}

uint64_t sub_22C56344C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = (a3 + *(type metadata accessor for AssistantToolSchemaDefinitionRenderer_v6_0(0) + 24));
  v6 = v5[3];
  v7 = v5[4];
  sub_22C374168(v5, v6);
  v8 = (*(v7 + 32))(a1, v6, v7);
  v10 = v9;
  v11 = v5[3];
  v12 = v5[4];
  sub_22C374168(v5, v11);
  if (v8 == (*(v12 + 32))(a2, v11, v12) && v10 == v13)
  {
    v15 = 0;
  }

  else
  {
    v15 = sub_22C90B4FC();
  }

  return v15 & 1;
}

void sub_22C56355C(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v98 = a8;
  v118 = a7;
  v120 = a5;
  v121 = a6;
  v119 = a4;
  v100 = a3;
  v97 = a9;
  v112 = sub_22C3A5908(&qword_27D9BD8E0, &qword_22C91B410);
  v15 = MEMORY[0x28223BE20](v112);
  v111 = &v92 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v110 = &v92 - v17;
  v114 = sub_22C3A5908(&qword_27D9BD8E8, &unk_22C919AD0);
  v18 = MEMORY[0x28223BE20](v114);
  v109 = &v92 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v108 = &v92 - v21;
  MEMORY[0x28223BE20](v20);
  v122 = &v92 - v22;
  v23 = sub_22C9037DC();
  v117 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v25 = &v92 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = *a1;
  v116 = *a2;
  v26 = type metadata accessor for AssistantToolSchemaDefinitionRenderer_v6_0(0);
  v27 = (a3 + *(v26 + 24));
  v107 = v27[3];
  v106 = v27[4];
  v115 = sub_22C374168(v27, v107);
  v28 = sub_22C908D8C();
  v29 = sub_22C55D4A0(v28);
  v30 = sub_22C55DBD4(v29);
  v95 = 0;

  v31 = sub_22C90981C();
  v32 = MEMORY[0x277D84F90];
  v113 = v31;
  v33 = sub_22C909F0C();
  v129 = v32;
  sub_22C56523C(&qword_27D9BB820, MEMORY[0x277D1ED48], MEMORY[0x277D1ED78]);
  sub_22C3A5908(&qword_27D9BB828, &unk_22C912AE0);
  v34 = v118;
  sub_22C3D32C8(&qword_27D9BB830, &qword_27D9BB828, &unk_22C912AE0, MEMORY[0x277D83970]);
  sub_22C90AE4C();
  v35 = v98;
  LOWORD(v90) = 256;
  sub_22C5777F4(v99, v119, v120, v121, v34, v98, v30, v33, v115, v116, v25, v90, v32, v107, v106, v91, v92, v93, v94, v95, v96, v97, v98, v99, SBYTE1(v99), v100, v101, v102);
  v37 = v36;

  (*(v117 + 8))(v25, v23);
  v96 = v26;
  sub_22C5652C0(v100 + *(v26 + 32), &v129, &qword_27D9BD658, &qword_22C9186E0);
  if (!v130)
  {
    sub_22C3770B0(&v129, &qword_27D9BD658, &qword_22C9186E0);
    goto LABEL_19;
  }

  v38 = sub_22C374168(&v129, v130);
  v107 = *(v35 + 16);
  if (!v107)
  {
    v42 = MEMORY[0x277D84F90];
LABEL_16:
    v79 = *v38;
    v80 = v95;
    v81 = sub_22C49FB90(v99, v100 + *(v96 + 36));
    if (!v80)
    {
      v83 = v81;
      v84 = v82;

      sub_22C532604(v83, v84, v42, v79, &v126);

      v123 = v126;
      v124 = v127;
      v125 = v128;
      sub_22C474C14(v131);

      sub_22C36FF94(&v129);
      v86 = v131[0];
      v87 = v131[1];
      v88 = v131[2];
      v89 = v131[3];
LABEL_20:
      v85 = v97;
      *v97 = v37;
      v85[1] = v86;
      v85[2] = v87;
      v85[3] = v88;
      v85[4] = v89;
      return;
    }

    sub_22C36FF94(&v129);
LABEL_19:
    v86 = 0;
    v87 = 0;
    v88 = 0;
    v89 = 0;
    goto LABEL_20;
  }

  v93 = v38;
  v94 = v37;
  v39 = *(v113 - 8);
  v105 = (v122 + *(v114 + 48));
  v103 = v34 + ((*(v39 + 80) + 32) & ~*(v39 + 80));
  v106 = *(v34 + 16);
  v102 = v39 + 16;
  v104 = v39;
  v101 = v39 + 32;

  v40 = 0;
  v41 = (v35 + 64);
  v42 = MEMORY[0x277D84F90];
  while (v106 != v40)
  {
    v121 = v42;
    v43 = v112;
    v44 = v110;
    v45 = &v110[*(v112 + 48)];
    v46 = v104;
    v47 = *(v104 + 72);
    v120 = v40;
    v48 = v113;
    (*(v104 + 16))(v110, v103 + v47 * v40, v113);
    v115 = *(v41 - 4);
    v119 = *(v41 - 3);
    v49 = v119;
    v118 = *(v41 - 2);
    v50 = v118;
    v117 = *(v41 - 1);
    v51 = v117;
    v116 = *v41;
    v52 = v116;
    *v45 = v115;
    *(v45 + 1) = v49;
    *(v45 + 2) = v50;
    *(v45 + 3) = v51;
    *(v45 + 4) = v52;
    v53 = v44;
    v54 = v111;
    sub_22C557E2C(v53, v111);
    v55 = v54 + *(v43 + 48);
    v56 = *(v46 + 32);
    v57 = v122;
    v56(v122, v54, v48);
    v58 = *(v55 + 32);
    v59 = *(v55 + 16);
    v60 = v105;
    *v105 = *v55;
    v60[1] = v59;
    *(v60 + 4) = v58;
    v61 = v108;
    sub_22C5652C0(v57, v108, &qword_27D9BD8E8, &unk_22C919AD0);
    v62 = *(v114 + 48);
    v63 = *(v61 + v62);
    v64 = *(v61 + v62 + 8);
    v65 = *(v61 + v62 + 24);
    v66 = *(v61 + v62 + 32);
    v67 = v109;
    v68 = &v109[v62];
    v69 = v61;
    v70 = *(v61 + v62 + 16);
    v71 = v48;
    v72 = v65;
    v56(v109, v69, v71);
    *v68 = v63;
    *(v68 + 1) = v64;
    *(v68 + 2) = v70;
    *(v68 + 3) = v72;
    *(v68 + 4) = v66;

    sub_22C456C94(v119, v118, v117);
    sub_22C456C94(v64, v70, v72);
    sub_22C3770B0(v67, &qword_27D9BD8E8, &unk_22C919AD0);
    sub_22C3770B0(v122, &qword_27D9BD8E8, &unk_22C919AD0);
    if (v70)
    {
      v42 = v121;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_22C591018(0, *(v42 + 16) + 1, 1, v42);
        v42 = v77;
      }

      v73 = v120;
      v75 = *(v42 + 16);
      v74 = *(v42 + 24);
      if (v75 >= v74 >> 1)
      {
        sub_22C591018(v74 > 1, v75 + 1, 1, v42);
        v42 = v78;
      }

      *(v42 + 16) = v75 + 1;
      v76 = (v42 + 32 * v75);
      v76[4] = v64;
      v76[5] = v70;
      v76[6] = v72;
      v76[7] = v66;
    }

    else
    {
      v73 = v120;
      v42 = v121;
    }

    v40 = v73 + 1;
    v41 += 5;
    if (v107 == v40)
    {

      v37 = v94;
      v38 = v93;
      goto LABEL_16;
    }
  }

  __break(1u);
}

uint64_t sub_22C563F04(uint64_t (*a1)(char *, uint64_t), uint64_t a2)
{
  type metadata accessor for PromptToolsHelper.RenderableParameter(0);
  v5 = *v2;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_22C56C318();
    v5 = v6;
  }

  result = sub_22C563FC4(a1, a2);
  *v2 = v5;
  return result;
}

uint64_t sub_22C563FC4(uint64_t (*a1)(char *, uint64_t), uint64_t a2)
{
  v5 = v2[1];
  result = sub_22C90B45C();
  if (result < v5)
  {
    if (v5 >= -1)
    {
      v7 = result;
      v8 = v5 / 2;
      if (v5 < 2)
      {
        v9 = MEMORY[0x277D84F90];
      }

      else
      {
        type metadata accessor for PromptToolsHelper.RenderableParameter(0);
        v9 = sub_22C90A64C();
        *(v9 + 16) = v8;
      }

      v10 = *(type metadata accessor for PromptToolsHelper.RenderableParameter(0) - 8);
      v11[0] = v9 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
      v11[1] = v8;
      sub_22C564324(v11, v12, v2, a1, a2, v7);
      *(v9 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v5 < 0)
  {
    goto LABEL_12;
  }

  if (v5)
  {
    return sub_22C564104(0, v5, 1, a1);
  }

  return result;
}

uint64_t sub_22C564104(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *, char *))
{
  v37 = a4;
  v36 = type metadata accessor for PromptToolsHelper.RenderableParameter(0);
  v9 = MEMORY[0x28223BE20](v36);
  v35 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v27 - v12;
  result = MEMORY[0x28223BE20](v11);
  v17 = &v27 - v16;
  v29 = a2;
  if (a3 != a2)
  {
    v18 = *(v15 + 72);
    v19 = *v4 + v18 * (a3 - 1);
    v20 = -v18;
    v21 = a1 - a3;
    v34 = *v4;
    v28 = v18;
    v22 = v34 + v18 * a3;
LABEL_4:
    v32 = v19;
    v33 = a3;
    v30 = v22;
    v31 = v21;
    v23 = v19;
    while (1)
    {
      sub_22C56517C(v22, v17);
      sub_22C56517C(v23, v13);
      v24 = v37(v17, v13);
      sub_22C5651E0(v13);
      result = sub_22C5651E0(v17);
      if (v5)
      {
        break;
      }

      if (v24)
      {
        if (!v34)
        {
          __break(1u);
          return result;
        }

        v25 = v35;
        sub_22C557D60(v22, v35);
        swift_arrayInitWithTakeFrontToBack();
        result = sub_22C557D60(v25, v23);
        v23 += v20;
        v22 += v20;
        if (!__CFADD__(v21++, 1))
        {
          continue;
        }
      }

      a3 = v33 + 1;
      v19 = v32 + v28;
      v21 = v31 - 1;
      v22 = v30 + v28;
      if (v33 + 1 != v29)
      {
        goto LABEL_4;
      }

      return result;
    }
  }

  return result;
}

void sub_22C564324(unint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(char *, uint64_t), uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v146 = a5;
  v145 = a4;
  v133 = a1;
  v138 = type metadata accessor for PromptToolsHelper.RenderableParameter(0);
  v143 = *(v138 - 8);
  v10 = MEMORY[0x28223BE20](v138);
  v134 = &v123 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v137 = &v123 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v15 = MEMORY[0x28223BE20](v14);
  v16 = MEMORY[0x28223BE20](v15);
  v17 = MEMORY[0x28223BE20](v16);
  v19 = &v123 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = MEMORY[0x28223BE20](&v123 - v20);
  v144 = a3;
  v26 = a3[1];
  if (v26 < 1)
  {
    v28 = MEMORY[0x277D84F90];
LABEL_102:
    v142 = *v133;
    if (v142)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_139;
      }

      goto LABEL_104;
    }

    goto LABEL_148;
  }

  v129 = &v123 - v22;
  v130 = v21;
  v139 = v19;
  v140 = v25;
  v135 = v24;
  v136 = v23;
  v128 = a6;
  v27 = 0;
  v28 = MEMORY[0x277D84F90];
  while (1)
  {
    v29 = v27;
    v30 = v27 + 1;
    if (v27 + 1 < v26)
    {
      v142 = v26;
      v132 = v28;
      v31 = *v144;
      v32 = *(v143 + 72);
      v33 = *v144 + v32 * v30;
      v34 = v129;
      sub_22C56517C(v33, v129);
      v35 = v130;
      sub_22C56517C(v31 + v32 * v29, v130);
      LODWORD(v141) = v145(v34, v35);
      if (v7)
      {
        sub_22C5651E0(v35);
        v122 = v34;
        goto LABEL_115;
      }

      sub_22C5651E0(v35);
      sub_22C5651E0(v34);
      v131 = v29;
      v36 = v29 + 2;
      v37 = v31 + v32 * (v29 + 2);
      v38 = v142;
      while (1)
      {
        v39 = v30;
        v40 = v36;
        if (v30 + 1 >= v38)
        {
          break;
        }

        v41 = v139;
        sub_22C56517C(v37, v139);
        v42 = v140;
        sub_22C56517C(v33, v140);
        v43 = v145(v41, v42);
        sub_22C5651E0(v42);
        sub_22C5651E0(v41);
        v37 += v32;
        v33 += v32;
        v30 = v39 + 1;
        v36 = v40 + 1;
        v38 = v142;
        if ((v141 ^ v43))
        {
          goto LABEL_10;
        }
      }

      v30 = v38;
LABEL_10:
      if (v141)
      {
        if (v30 < v131)
        {
          goto LABEL_142;
        }

        if (v131 > v39)
        {
          v28 = v132;
          v29 = v131;
          goto LABEL_33;
        }

        if (v38 >= v40)
        {
          v44 = v40;
        }

        else
        {
          v44 = v38;
        }

        v45 = v32 * (v44 - 1);
        v46 = v32 * v44;
        v47 = v131 * v32;
        v141 = v30;
        v48 = v131;
        do
        {
          if (v48 != --v30)
          {
            v49 = *v144;
            if (!*v144)
            {
              goto LABEL_146;
            }

            sub_22C557D60(v49 + v47, v134);
            v50 = v47 < v45 || v49 + v47 >= (v49 + v46);
            if (v50)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v47 != v45)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            sub_22C557D60(v134, v49 + v45);
          }

          ++v48;
          v45 -= v32;
          v46 -= v32;
          v47 += v32;
        }

        while (v48 < v30);
        v28 = v132;
        v30 = v141;
      }

      else
      {
        v28 = v132;
      }

      v29 = v131;
    }

LABEL_33:
    v51 = v144[1];
    if (v30 < v51)
    {
      if (__OFSUB__(v30, v29))
      {
        goto LABEL_138;
      }

      if (v30 - v29 < v128)
      {
        v52 = v29 + v128;
        if (__OFADD__(v29, v128))
        {
          __break(1u);
        }

        else
        {
          if (v52 >= v51)
          {
            v52 = v144[1];
          }

          if (v52 >= v29)
          {
            if (v30 == v52)
            {
              goto LABEL_41;
            }

            v131 = v29;
            v132 = v28;
            v101 = *(v143 + 72);
            v102 = *v144 + v101 * (v30 - 1);
            v103 = -v101;
            v104 = v29 - v30;
            v142 = *v144;
            v123 = v101;
            v105 = v142 + v30 * v101;
            v124 = v52;
            while (1)
            {
              v141 = v30;
              v125 = v105;
              v126 = v104;
              v127 = v102;
              v106 = v102;
              do
              {
                v107 = v135;
                sub_22C56517C(v105, v135);
                v108 = v136;
                sub_22C56517C(v106, v136);
                v109 = v145(v107, v108);
                if (v7)
                {
                  sub_22C5651E0(v108);
                  v122 = v107;
LABEL_115:
                  sub_22C5651E0(v122);
                  goto LABEL_116;
                }

                v110 = v109;
                sub_22C5651E0(v108);
                sub_22C5651E0(v107);
                if ((v110 & 1) == 0)
                {
                  break;
                }

                if (!v142)
                {
                  goto LABEL_145;
                }

                v111 = v137;
                sub_22C557D60(v105, v137);
                swift_arrayInitWithTakeFrontToBack();
                sub_22C557D60(v111, v106);
                v106 += v103;
                v105 += v103;
                v50 = __CFADD__(v104++, 1);
              }

              while (!v50);
              v30 = v141 + 1;
              v102 = v127 + v123;
              v104 = v126 - 1;
              v105 = v125 + v123;
              if (v141 + 1 == v124)
              {
                v30 = v124;
                v29 = v131;
                v28 = v132;
                goto LABEL_41;
              }
            }
          }
        }

        __break(1u);
LABEL_142:
        __break(1u);
LABEL_143:
        __break(1u);
LABEL_144:
        __break(1u);
LABEL_145:
        __break(1u);
LABEL_146:
        __break(1u);
        goto LABEL_147;
      }
    }

LABEL_41:
    if (v30 < v29)
    {
      goto LABEL_137;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v141 = v30;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_22C590218(0, *(v28 + 2) + 1, 1, v28);
      v28 = v112;
    }

    v55 = *(v28 + 2);
    v54 = *(v28 + 3);
    v56 = v55 + 1;
    if (v55 >= v54 >> 1)
    {
      sub_22C590218(v54 > 1, v55 + 1, 1, v28);
      v28 = v113;
    }

    *(v28 + 2) = v56;
    v57 = v28 + 32;
    v58 = &v28[16 * v55 + 32];
    v59 = v141;
    *v58 = v29;
    *(v58 + 1) = v59;
    v142 = *v133;
    if (!v142)
    {
LABEL_147:
      __break(1u);
LABEL_148:
      __break(1u);
      return;
    }

    if (v55)
    {
      break;
    }

LABEL_90:
    v26 = v144[1];
    v27 = v141;
    if (v141 >= v26)
    {
      goto LABEL_102;
    }
  }

  while (1)
  {
    v60 = v56 - 1;
    v61 = &v57[16 * v56 - 16];
    v62 = &v28[16 * v56];
    if (v56 >= 4)
    {
      v67 = &v57[16 * v56];
      v68 = *(v67 - 8);
      v69 = *(v67 - 7);
      v73 = __OFSUB__(v69, v68);
      v70 = v69 - v68;
      if (v73)
      {
        goto LABEL_125;
      }

      v72 = *(v67 - 6);
      v71 = *(v67 - 5);
      v73 = __OFSUB__(v71, v72);
      v65 = v71 - v72;
      v66 = v73;
      if (v73)
      {
        goto LABEL_126;
      }

      v74 = *(v62 + 1);
      v75 = v74 - *v62;
      if (__OFSUB__(v74, *v62))
      {
        goto LABEL_128;
      }

      v73 = __OFADD__(v65, v75);
      v76 = v65 + v75;
      if (v73)
      {
        goto LABEL_131;
      }

      if (v76 >= v70)
      {
        v90 = *v61;
        v89 = *(v61 + 1);
        v73 = __OFSUB__(v89, v90);
        v91 = v89 - v90;
        if (v73)
        {
          goto LABEL_136;
        }

        if (v65 < v91)
        {
          v60 = v56 - 2;
        }

        goto LABEL_83;
      }

      goto LABEL_61;
    }

    if (v56 == 3)
    {
      v63 = *(v28 + 4);
      v64 = *(v28 + 5);
      v73 = __OFSUB__(v64, v63);
      v65 = v64 - v63;
      v66 = v73;
LABEL_61:
      if (v66)
      {
        goto LABEL_127;
      }

      v78 = *v62;
      v77 = *(v62 + 1);
      v79 = __OFSUB__(v77, v78);
      v80 = v77 - v78;
      v81 = v79;
      if (v79)
      {
        goto LABEL_130;
      }

      v82 = *(v61 + 1);
      v83 = v82 - *v61;
      if (__OFSUB__(v82, *v61))
      {
        goto LABEL_133;
      }

      if (__OFADD__(v80, v83))
      {
        goto LABEL_135;
      }

      if (v80 + v83 >= v65)
      {
        if (v65 < v83)
        {
          v60 = v56 - 2;
        }

        goto LABEL_83;
      }

      goto LABEL_76;
    }

    if (v56 < 2)
    {
      goto LABEL_129;
    }

    v85 = *v62;
    v84 = *(v62 + 1);
    v73 = __OFSUB__(v84, v85);
    v80 = v84 - v85;
    v81 = v73;
LABEL_76:
    if (v81)
    {
      goto LABEL_132;
    }

    v87 = *v61;
    v86 = *(v61 + 1);
    v73 = __OFSUB__(v86, v87);
    v88 = v86 - v87;
    if (v73)
    {
      goto LABEL_134;
    }

    if (v88 < v80)
    {
      goto LABEL_90;
    }

LABEL_83:
    if (v60 - 1 >= v56)
    {
      break;
    }

    if (!*v144)
    {
      goto LABEL_143;
    }

    v92 = &v57[16 * v60 - 16];
    v93 = *v92;
    v94 = v60;
    v95 = &v57[16 * v60];
    v96 = *(v95 + 1);
    sub_22C564C64(*v144 + *(v143 + 72) * *v92, *v144 + *(v143 + 72) * *v95, *v144 + *(v143 + 72) * v96, v142, v145, v146);
    if (v7)
    {
      goto LABEL_116;
    }

    if (v96 < v93)
    {
      goto LABEL_119;
    }

    v7 = v57;
    v97 = v28;
    v98 = *(v28 + 2);
    if (v94 > v98)
    {
      goto LABEL_120;
    }

    *v92 = v93;
    *(v92 + 1) = v96;
    if (v94 >= v98)
    {
      goto LABEL_121;
    }

    v99 = v94;
    v56 = v98 - 1;
    sub_22C56BFF0(v95 + 16, v98 - 1 - v99, v95);
    *(v97 + 2) = v98 - 1;
    v100 = v98 > 2;
    v28 = v97;
    v57 = v7;
    v7 = 0;
    if (!v100)
    {
      goto LABEL_90;
    }
  }

  __break(1u);
LABEL_119:
  __break(1u);
LABEL_120:
  __break(1u);
LABEL_121:
  __break(1u);
LABEL_122:
  __break(1u);
LABEL_123:
  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
LABEL_129:
  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
LABEL_135:
  __break(1u);
LABEL_136:
  __break(1u);
LABEL_137:
  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  v28 = sub_22C56BFD8();
LABEL_104:
  v114 = v28 + 16;
  v115 = *(v28 + 2);
  while (v115 >= 2)
  {
    if (!*v144)
    {
      goto LABEL_144;
    }

    v116 = v28;
    v117 = &v28[16 * v115];
    v118 = *v117;
    v119 = &v114[2 * v115];
    v120 = *(v119 + 1);
    sub_22C564C64(*v144 + *(v143 + 72) * *v117, *v144 + *(v143 + 72) * *v119, *v144 + *(v143 + 72) * v120, v142, v145, v146);
    if (v7)
    {
      break;
    }

    if (v120 < v118)
    {
      goto LABEL_122;
    }

    if (v115 - 2 >= *v114)
    {
      goto LABEL_123;
    }

    *v117 = v118;
    *(v117 + 1) = v120;
    v121 = *v114 - v115;
    if (*v114 < v115)
    {
      goto LABEL_124;
    }

    v115 = *v114 - 1;
    sub_22C56BFF0(v119 + 16, v121, v119);
    *v114 = v115;
    v28 = v116;
  }

LABEL_116:
}

uint64_t sub_22C564C64(unint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, uint64_t (*a5)(char *, uint64_t), uint64_t a6)
{
  v7 = v6;
  v70 = a5;
  v71 = a6;
  v69 = a3;
  v68 = type metadata accessor for PromptToolsHelper.RenderableParameter(0);
  v11 = MEMORY[0x28223BE20](v68);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v60 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v60 - v16;
  result = MEMORY[0x28223BE20](v15);
  v21 = &v60 - v20;
  v23 = *(v22 + 72);
  if (!v23)
  {
    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
    return result;
  }

  v24 = a2 - a1;
  v25 = a2 - a1 == 0x8000000000000000 && v23 == -1;
  if (v25)
  {
    goto LABEL_65;
  }

  v26 = v69 - a2;
  if (v69 - a2 == 0x8000000000000000 && v23 == -1)
  {
    goto LABEL_66;
  }

  v28 = a2;
  v29 = v24 / v23;
  v74 = a1;
  v73 = a4;
  v30 = v26 / v23;
  if (v24 / v23 >= v26 / v23)
  {
    v63 = v14;
    v64 = v19;
    sub_22C3D738C(v28, v26 / v23, a4);
    v40 = a4 + v30 * v23;
    v41 = v23;
    v42 = v28;
    v43 = -v41;
    v44 = v40;
    v45 = a4;
    v46 = v69;
    v62 = a4;
LABEL_38:
    v47 = v42 + v43;
    v69 = v46;
    v60 = v44;
    v65 = v42;
    while (1)
    {
      if (v40 <= v45)
      {
        v74 = v42;
        v72 = v44;
        goto LABEL_63;
      }

      if (v42 <= a1)
      {
        v74 = v42;
        v72 = v60;
        goto LABEL_63;
      }

      v61 = v44;
      v48 = v7;
      v49 = a1;
      v66 = v40;
      v50 = v40 + v43;
      v51 = v63;
      sub_22C56517C(v40 + v43, v63);
      v52 = v64;
      sub_22C56517C(v47, v64);
      v53 = v70(v51, v52);
      v67 = v48;
      if (v48)
      {
        break;
      }

      v54 = v53;
      v46 = v69 + v43;
      v55 = v69;
      sub_22C5651E0(v52);
      sub_22C5651E0(v51);
      if (v54)
      {
        v57 = v55 < v65 || v46 >= v65;
        a1 = v49;
        if (v57)
        {
          v42 = v47;
          swift_arrayInitWithTakeFrontToBack();
          v44 = v61;
          v45 = v62;
          v40 = v66;
          v7 = v67;
        }

        else
        {
          v45 = v62;
          v44 = v61;
          v25 = v55 == v65;
          v42 = v47;
          v40 = v66;
          v7 = v67;
          if (!v25)
          {
            v58 = v47;
            v59 = v61;
            swift_arrayInitWithTakeBackToFront();
            v40 = v66;
            v42 = v58;
            v44 = v59;
          }
        }

        goto LABEL_38;
      }

      v56 = v55 < v66 || v46 >= v66;
      a1 = v49;
      if (v56)
      {
        swift_arrayInitWithTakeFrontToBack();
        v69 = v46;
        v40 = v50;
        v44 = v50;
        v45 = v62;
        v42 = v65;
        v7 = v67;
      }

      else
      {
        v44 = v50;
        v25 = v66 == v55;
        v69 = v46;
        v40 = v50;
        v45 = v62;
        v42 = v65;
        v7 = v67;
        if (!v25)
        {
          swift_arrayInitWithTakeBackToFront();
          v69 = v46;
          v40 = v50;
          v44 = v50;
        }
      }
    }

    sub_22C5651E0(v52);
    sub_22C5651E0(v51);
    v74 = v65;
    v72 = v61;
  }

  else
  {
    sub_22C3D738C(a1, v24 / v23, a4);
    v67 = a4 + v29 * v23;
    v72 = v67;
    v31 = a4;
    v32 = v28;
    while (v31 < v67 && v32 < v69)
    {
      v34 = v32;
      sub_22C56517C(v32, v21);
      v35 = v31;
      sub_22C56517C(v31, v17);
      v36 = v70(v21, v17);
      if (v7)
      {
        sub_22C5651E0(v17);
        sub_22C5651E0(v21);
        break;
      }

      v37 = v36;
      sub_22C5651E0(v17);
      sub_22C5651E0(v21);
      if (v37)
      {
        if (a1 < v34 || a1 >= v34 + v23)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != v34)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        v32 = v34 + v23;
      }

      else
      {
        v31 += v23;
        if (a1 < v35 || a1 >= v31)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != v35)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        v73 = v35 + v23;
        v32 = v34;
      }

      a1 += v23;
      v74 = a1;
    }
  }

LABEL_63:
  sub_22C8381B8(&v74, &v73, &v72);
  return 1;
}

uint64_t sub_22C56517C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PromptToolsHelper.RenderableParameter(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22C5651E0(uint64_t a1)
{
  v2 = type metadata accessor for PromptToolsHelper.RenderableParameter(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22C56523C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_22C5652C0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_22C3A5908(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_22C5653C8()
{
}

uint64_t type metadata accessor for ToolRenderer_v6_0(uint64_t a1)
{
  result = qword_27D9BDCD0;
  if (!qword_27D9BDCD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *sub_22C565460(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t), uint64_t a3)
{
  v4 = v3;
  v46 = a2;
  v47 = a3;
  v6 = sub_22C3A5908(&qword_27D9BB050, &unk_22C90D8F0);
  v45 = *(v6 - 8);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v44 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v49 = &v39 - v9;
  v10 = 0;
  v11 = MEMORY[0x277D84F98];
  v51 = MEMORY[0x277D84F98];
  v48 = *(a1 + 16);
  v39 = xmmword_22C90F800;
  for (i = a1; ; a1 = i)
  {
    if (v48 == v10)
    {
      goto LABEL_19;
    }

    if (v10 >= *(a1 + 16))
    {
      break;
    }

    v12 = v49;
    sub_22C3A7214();
    v46(&v50, v12);
    if (v4)
    {
      sub_22C36DD28(v49, &qword_27D9BB050, &unk_22C90D8F0);

LABEL_19:

      return v11;
    }

    v13 = v50;
    v21 = sub_22C62858C(v50);
    v22 = v11[2];
    v23 = (v14 & 1) == 0;
    v24 = v22 + v23;
    if (__OFADD__(v22, v23))
    {
      goto LABEL_21;
    }

    v25 = v14;
    if (v11[3] < v24)
    {
      sub_22C88CF84(v24, 1, v15, v16, v17, v18, v19, v20, v39, *(&v39 + 1), v40, v41);
      v11 = v51;
      v26 = sub_22C62858C(v13);
      if ((v25 & 1) != (v27 & 1))
      {
        goto LABEL_23;
      }

      v21 = v26;
    }

    if (v25)
    {
      v28 = v11[7];
      sub_22C407C2C();
      v29 = *(v28 + 8 * v21);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v28 + 8 * v21) = v29;
      v42 = 0;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_22C591A04();
        v29 = v36;
        *(v28 + 8 * v21) = v36;
      }

      v31 = *(v29 + 16);
      if (v31 >= *(v29 + 24) >> 1)
      {
        sub_22C591A04();
        v29 = v37;
        *(v28 + 8 * v21) = v37;
      }

      *(v29 + 16) = v31 + 1;
      sub_22C407C2C();
      v4 = v42;
    }

    else
    {
      sub_22C3A5908(&qword_27D9BB048, &qword_22C91B500);
      v32 = swift_allocObject();
      *(v32 + 16) = v39;
      sub_22C407C2C();
      v11[(v21 >> 6) + 8] |= 1 << v21;
      *(v11[6] + v21) = v13;
      *(v11[7] + 8 * v21) = v32;
      v33 = v11[2];
      v34 = __OFADD__(v33, 1);
      v35 = v33 + 1;
      if (v34)
      {
        goto LABEL_22;
      }

      v11[2] = v35;
    }

    ++v10;
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  sub_22C3A5908(&qword_27D9BDCE0, &qword_22C91B508);
  result = sub_22C90B54C();
  __break(1u);
  return result;
}

void *sub_22C565B60(uint64_t a1)
{
  v2 = type metadata accessor for FetchedTools.AttributedRetrievedToolDefinition(0);
  v38 = *(v2 - 8);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v37 = v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v40 = v34 - v5;
  v6 = 0;
  v7 = MEMORY[0x277D84F98];
  v41 = MEMORY[0x277D84F98];
  v39 = *(a1 + 16);
  v35 = xmmword_22C90F800;
  v36 = a1;
  while (1)
  {
    if (v39 == v6)
    {

      return v7;
    }

    if (v6 >= *(a1 + 16))
    {
      break;
    }

    sub_22C55CEDC();
    v8 = sub_22C57ED3C();
    v16 = sub_22C633A1C();
    v17 = v7[2];
    v18 = (v9 & 1) == 0;
    v19 = v17 + v18;
    if (__OFADD__(v17, v18))
    {
      goto LABEL_19;
    }

    v20 = v9;
    if (v7[3] < v19)
    {
      sub_22C88D6C0(v19, 1, v10, v11, v12, v13, v14, v15, v34[0], v34[1], v35, SBYTE4(v35));
      v7 = v41;
      v21 = sub_22C633A1C();
      if ((v20 & 1) != (v22 & 1))
      {
        goto LABEL_21;
      }

      v16 = v21;
    }

    if (v20)
    {
      v23 = v7[7];
      sub_22C55CF8C();
      v24 = *(v23 + 8 * v16);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v23 + 8 * v16) = v24;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_22C59161C();
        v24 = v31;
        *(v23 + 8 * v16) = v31;
      }

      v26 = *(v24 + 16);
      if (v26 >= *(v24 + 24) >> 1)
      {
        sub_22C59161C();
        v24 = v32;
        *(v23 + 8 * v16) = v32;
      }

      *(v24 + 16) = v26 + 1;
      sub_22C55CF8C();
      a1 = v36;
    }

    else
    {
      sub_22C3A5908(&qword_27D9BAF88, &unk_22C917A10);
      v27 = swift_allocObject();
      *(v27 + 16) = v35;
      sub_22C55CF8C();
      v7[(v16 >> 6) + 8] |= 1 << v16;
      *(v7[6] + v16) = v8;
      *(v7[7] + 8 * v16) = v27;
      v28 = v7[2];
      v29 = __OFADD__(v28, 1);
      v30 = v28 + 1;
      if (v29)
      {
        goto LABEL_20;
      }

      v7[2] = v30;
    }

    ++v6;
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  result = sub_22C90B54C();
  __break(1u);
  return result;
}

void *sub_22C565EA8(uint64_t a1)
{
  v2 = sub_22C3A5908(&qword_27D9BC1E8, &qword_22C9123B0);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v46 = v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v6 = v43 - v5;
  v7 = type metadata accessor for FetchedTools.AttributedRetrievedToolDefinition(0);
  v48 = *(v7 - 8);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v47 = v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v51 = v43 - v10;
  v11 = 0;
  v12 = MEMORY[0x277D84F98];
  v52 = MEMORY[0x277D84F98];
  v49 = *(a1 + 16);
  v44 = xmmword_22C90F800;
  v45 = a1;
  while (1)
  {
    if (v49 == v11)
    {

      return v12;
    }

    if (v11 >= *(a1 + 16))
    {
      break;
    }

    v50 = *(v48 + 72);
    sub_22C55CEDC();
    sub_22C9036BC();
    v13 = v6;
    v14 = sub_22C908EAC();
    v15 = 1;
    if (sub_22C370B74(v6, 1, v14) != 1)
    {
      v16 = v46;
      sub_22C3A7214();
      v15 = sub_22C4AEF6C();
      v17 = v16;
      v13 = v6;
      (*(*(v14 - 8) + 8))(v17, v14);
    }

    sub_22C36DD28(v13, &qword_27D9BC1E8, &qword_22C9123B0);
    v25 = sub_22C628620(v15 & 1);
    v26 = v12[2];
    v27 = (v18 & 1) == 0;
    v28 = v26 + v27;
    if (__OFADD__(v26, v27))
    {
      goto LABEL_21;
    }

    v29 = v18;
    if (v12[3] < v28)
    {
      sub_22C88D50C(v28, 1, v19, v20, v21, v22, v23, v24, v43[0], v43[1], v44, SBYTE4(v44));
      v12 = v52;
      v30 = sub_22C628620(v15 & 1);
      if ((v29 & 1) != (v31 & 1))
      {
        goto LABEL_23;
      }

      v25 = v30;
    }

    if (v29)
    {
      v32 = v12[7];
      sub_22C55CF8C();
      v33 = *(v32 + 8 * v25);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v32 + 8 * v25) = v33;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_22C59161C();
        v33 = v40;
        *(v32 + 8 * v25) = v40;
      }

      v35 = *(v33 + 16);
      if (v35 >= *(v33 + 24) >> 1)
      {
        sub_22C59161C();
        v33 = v41;
        *(v32 + 8 * v25) = v41;
      }

      *(v33 + 16) = v35 + 1;
      sub_22C55CF8C();
      a1 = v45;
    }

    else
    {
      sub_22C3A5908(&qword_27D9BAF88, &unk_22C917A10);
      v36 = swift_allocObject();
      *(v36 + 16) = v44;
      sub_22C55CF8C();
      v12[(v25 >> 6) + 8] |= 1 << v25;
      *(v12[6] + v25) = v15 & 1;
      *(v12[7] + 8 * v25) = v36;
      v37 = v12[2];
      v38 = __OFADD__(v37, 1);
      v39 = v37 + 1;
      if (v38)
      {
        goto LABEL_22;
      }

      v12[2] = v39;
    }

    ++v11;
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  sub_22C3A5908(&qword_27D9BDA00, qword_22C91B300);
  result = sub_22C90B54C();
  __break(1u);
  return result;
}

uint64_t sub_22C566328(uint64_t a1)
{
  v2 = sub_22C3A5908(&qword_27D9BD958, &qword_22C919CA0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v31 - v3;
  v33 = type metadata accessor for _PromptMapper._ToolPromptMap(0);
  v31[1] = *(v33 - 8);
  v5 = MEMORY[0x28223BE20](v33);
  v31[3] = v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v31[2] = v31 - v7;
  v32 = MEMORY[0x277D84F98];
  v35 = MEMORY[0x277D84F98];
  v8 = 1 << *(a1 + 32);
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(a1 + 64);
  v11 = (v8 + 63) >> 6;

  v13 = 0;
  while (1)
  {
    v14 = v13;
    if (!v10)
    {
      break;
    }

LABEL_9:
    v15 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
    v16 = (v13 << 9) | (8 * v15);
    v17 = *(*(a1 + 48) + v16);
    v18 = *(*(a1 + 56) + v16);
    swift_getKeyPath();
    v34[0] = v18;

    swift_getAtKeyPath();

    if (sub_22C370B74(v4, 1, v33) == 1)
    {

      result = sub_22C36DD28(v4, &qword_27D9BD958, &qword_22C919CA0);
    }

    else
    {
      sub_22C55CF8C();
      sub_22C55CF8C();
      v19 = v32;
      if (v32[3] <= v32[2])
      {
        sub_22C88D114();
        v19 = v35;
      }

      v20 = v19;
      sub_22C90B62C();
      sub_22C48A9B4(v34, v17);
      result = sub_22C90B66C();
      v21 = v20 + 8;
      v32 = v20;
      v22 = -1 << *(v20 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~v20[(v23 >> 6) + 8]) == 0)
      {
        v26 = 0;
        v27 = (63 - v22) >> 6;
        while (++v24 != v27 || (v26 & 1) == 0)
        {
          v28 = v24 == v27;
          if (v24 == v27)
          {
            v24 = 0;
          }

          v26 |= v28;
          v29 = v21[v24];
          if (v29 != -1)
          {
            v25 = __clz(__rbit64(~v29)) + (v24 << 6);
            goto LABEL_22;
          }
        }

        goto LABEL_25;
      }

      v25 = __clz(__rbit64((-1 << v23) & ~v20[(v23 >> 6) + 8])) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_22:
      *(v21 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
      v30 = v32;
      *(v32[6] + 8 * v25) = v17;
      result = sub_22C55CF8C();
      ++v30[2];
    }
  }

  while (1)
  {
    v13 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v13 >= v11)
    {

      return v32;
    }

    v10 = *(a1 + 64 + 8 * v13);
    ++v14;
    if (v10)
    {
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

void sub_22C566700(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(_OWORD *__return_ptr, uint64_t, uint64_t), uint64_t a6)
{
  v143 = a5;
  v144 = a6;
  v130 = a4;
  v129 = a3;
  v131 = a2;
  sub_22C3A5908(&qword_27D9BB050, &unk_22C90D8F0);
  sub_22C369824();
  v148 = v7;
  v149 = v8;
  MEMORY[0x28223BE20](v7);
  sub_22C369ABC();
  v11 = (v9 - v10);
  MEMORY[0x28223BE20](v12);
  v142 = &v128 - v13;
  v14 = sub_22C3A5908(&qword_27D9BC1E8, &qword_22C9123B0);
  MEMORY[0x28223BE20](v14 - 8);
  sub_22C369ABC();
  v17 = v15 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v128 - v19;
  v21 = sub_22C908EAC();
  sub_22C369824();
  v23 = v22;
  MEMORY[0x28223BE20](v24);
  sub_22C369ABC();
  v146 = (v25 - v26);
  MEMORY[0x28223BE20](v27);
  v147 = &v128 - v28;
  v140 = sub_22C9036EC();
  sub_22C369824();
  MEMORY[0x28223BE20](v29);
  sub_22C369838();
  *&v139 = v32 - v31;
  v33 = *(a1 + 16);
  v34 = MEMORY[0x277D84F90];
  v145 = v21;
  if (v33)
  {
    *&v137 = v20;
    *&v136 = *(v30 + 16);
    sub_22C36BA94();
    v36 = a1 + v35;
    v135 = *(v37 + 56);
    v134 = (v37 - 8);
    v133 = (v23 + 32);
    v132 = v17;
    v138 = v37;
    do
    {
      v141 = v34;
      v38 = v23;
      v39 = v139;
      v40 = v140;
      (v136)(v139, v36, v140);
      sub_22C9036BC();
      v41 = v137;
      sub_22C407C2C();
      (*v134)(v39, v40);
      if (sub_22C370B74(v41, 1, v21) == 1)
      {
        sub_22C36DD28(v41, &qword_27D9BC1E8, &qword_22C9123B0);
        v23 = v38;
        v34 = v141;
      }

      else
      {
        v23 = v38;
        v42 = *v133;
        (*v133)(v146, v41, v21);
        v43 = v141;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_22C36D270();
          sub_22C591C4C();
          v43 = v50;
        }

        v45 = *(v43 + 16);
        v44 = *(v43 + 24);
        v46 = v43;
        if (v45 >= v44 >> 1)
        {
          sub_22C369AB0(v44);
          sub_22C591C4C();
          v46 = v51;
        }

        *(v46 + 16) = v45 + 1;
        v34 = v46;
        sub_22C36BA94();
        v49 = v47 + v48 + *(v23 + 72) * v45;
        v21 = v145;
        v42(v49, v146, v145);
      }

      v36 += v135;
      --v33;
    }

    while (v33);
  }

  *&v137 = *(v34 + 16);
  if (v137)
  {
    v53 = *(v23 + 16);
    v52 = v23 + 16;
    v146 = v53;
    sub_22C36BA94();
    *&v136 = v34 + v55;
    v135 = *(v52 + 56);
    v134 = (v52 - 8);
    v56 = MEMORY[0x277D84F90];
    v141 = v34;
    while (1)
    {
      v140 = v54;
      v146(v147, (v136 + v135 * v54), v21);
      v57 = sub_22C908DCC();
      v58 = *(v57 + 16);
      if (v58)
      {
        *&v139 = v56;
        v59 = v52;
        *&v150[0] = MEMORY[0x277D84F90];
        sub_22C3B68F4(0, v58, 0);
        v60 = *&v150[0];
        v61 = sub_22C90981C();
        v62 = *(v61 - 8);
        v63 = (*(v62 + 80) + 32) & ~*(v62 + 80);
        v138 = v57;
        v64 = v57 + v63;
        v65 = (v62 + 16);
        v66 = *(v62 + 72);
        do
        {
          v67 = *(v148 + 48);
          v146(v11, v147, v21);
          (*v65)(&v11[v67], v64, v61);
          *&v150[0] = v60;
          v69 = *(v60 + 16);
          v68 = *(v60 + 24);
          if (v69 >= v68 >> 1)
          {
            v70 = sub_22C369AB0(v68);
            sub_22C3B68F4(v70, v69 + 1, 1);
            v60 = *&v150[0];
          }

          *(v60 + 16) = v69 + 1;
          sub_22C36BA94();
          sub_22C407C2C();
          v64 += v66;
          --v58;
          v21 = v145;
        }

        while (v58);

        v52 = v59;
        v56 = v139;
      }

      else
      {

        v60 = MEMORY[0x277D84F90];
      }

      (*v134)(v147, v21);
      v71 = *(v60 + 16);
      v72 = *(v56 + 16);
      if (__OFADD__(v72, v71))
      {
        break;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0 || v72 + v71 > *(v56 + 24) >> 1)
      {
        sub_22C591A04();
        v56 = v73;
      }

      if (*(v60 + 16))
      {
        if ((*(v56 + 24) >> 1) - *(v56 + 16) < v71)
        {
          goto LABEL_75;
        }

        swift_arrayInitWithCopy();

        if (v71)
        {
          v74 = *(v56 + 16);
          v75 = __OFADD__(v74, v71);
          v76 = v74 + v71;
          if (v75)
          {
            goto LABEL_77;
          }

          *(v56 + 16) = v76;
        }
      }

      else
      {

        if (v71)
        {
          goto LABEL_74;
        }
      }

      v54 = v140 + 1;
      if (v140 + 1 == v137)
      {

        goto LABEL_33;
      }
    }

LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
  }

  else
  {

    v56 = MEMORY[0x277D84F90];
LABEL_33:
    MEMORY[0x28223BE20](v77);
    v78 = v130;
    *(&v128 - 2) = v129;
    *(&v128 - 1) = v78;
    v79 = sub_22C565460(v56, sub_22C569C24, (&v128 - 4));
    v138 = 0;
    v80 = *(v131 + 16);
    v81 = MEMORY[0x277D84F90];
    if (v80)
    {
      v82 = (v131 + 32);
      v83 = MEMORY[0x277D84F90];
      do
      {
        if (v79[2])
        {
          v84 = sub_22C62858C(*v82);
          if (v85)
          {
            v86 = *(v79[7] + 8 * v84);

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_22C36D270();
              sub_22C591B98();
              v83 = v89;
            }

            v88 = *(v83 + 16);
            v87 = *(v83 + 24);
            if (v88 >= v87 >> 1)
            {
              sub_22C369AB0(v87);
              sub_22C591B98();
              v83 = v90;
            }

            *(v83 + 16) = v88 + 1;
            *(v83 + 8 * v88 + 32) = v86;
          }
        }

        ++v82;
        --v80;
      }

      while (v80);
    }

    else
    {

      v83 = MEMORY[0x277D84F90];
    }

    v91 = *(v83 + 16);
    if (!v91)
    {
LABEL_69:

      return;
    }

    v154 = v81;
    sub_22C3B68B4(0, v91, 0);
    v92 = 0;
    v93 = v154;
    v145 = v83 + 32;
    v139 = xmmword_22C9114A0;
    v140 = v91;
    v141 = v83;
    while (v92 < *(v83 + 16))
    {
      v147 = v93;
      v94 = *(v145 + 8 * v92);
      v95 = *(v94 + 16);
      if (v95)
      {
        v146 = v92;
        v153 = v81;

        sub_22C3B68D4(0, v95, 0);
        v96 = 0;
        v97 = v153;
        sub_22C36BA94();
        while (v96 < *(v94 + 16))
        {
          v98 = v142;
          sub_22C3A7214();
          v143(v150, v98, v98 + *(v148 + 48));
          sub_22C36DD28(v98, &qword_27D9BB050, &unk_22C90D8F0);
          v99 = v150[0];
          v100 = v150[1];
          v101 = v151;
          v102 = v152;
          v153 = v97;
          v104 = *(v97 + 16);
          v103 = *(v97 + 24);
          if (v104 >= v103 >> 1)
          {
            v106 = sub_22C369AB0(v103);
            v137 = v107;
            v136 = v108;
            sub_22C3B68D4(v106, v104 + 1, 1);
            v100 = v136;
            v99 = v137;
            v97 = v153;
          }

          ++v96;
          *(v97 + 16) = v104 + 1;
          v105 = v97 + 48 * v104;
          *(v105 + 32) = v99;
          *(v105 + 48) = v100;
          *(v105 + 64) = v101;
          *(v105 + 72) = v102;
          if (v95 == v96)
          {
            v81 = MEMORY[0x277D84F90];
            v92 = v146;
            goto LABEL_56;
          }
        }

LABEL_72:
        __break(1u);
        goto LABEL_73;
      }

      v97 = v81;
LABEL_56:
      v109 = 0;
      ++v92;
      v110 = *(v97 + 16);
      v111 = v81;
LABEL_57:
      v112 = v97 - 16 + 48 * v109;
      while (v110 != v109)
      {
        if (v109 >= *(v97 + 16))
        {
          __break(1u);
          goto LABEL_72;
        }

        ++v109;
        v113 = (v112 + 48);
        v114 = *(v112 + 88);
        v112 += 48;
        if ((v114 & 1) == 0)
        {
          v115 = *v113;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_22C36D270();
            sub_22C591324();
            v111 = v118;
          }

          v117 = *(v111 + 16);
          v116 = *(v111 + 24);
          if (v117 >= v116 >> 1)
          {
            sub_22C369AB0(v116);
            sub_22C591324();
            v111 = v119;
          }

          *(v111 + 16) = v117 + 1;
          *(v111 + 8 * v117 + 32) = v115;
          v81 = MEMORY[0x277D84F90];
          goto LABEL_57;
        }
      }

      v120 = sub_22C3DB9B0(v111);

      v121 = swift_allocObject();
      *(v121 + 16) = v139;
      sub_22C3A5908(&qword_27D9BB770, qword_22C90FE80);
      v122 = swift_allocObject();
      *(v122 + 16) = v120;
      *(v121 + 32) = v122;
      v123 = swift_allocObject();
      *(v123 + 16) = 0;
      *(v123 + 24) = 0;
      v124 = swift_allocObject();
      *(v124 + 16) = v121 | 0x8000000000000000;
      *(v123 + 32) = v124;
      v93 = v147;
      v154 = v147;
      v126 = *(v147 + 2);
      v125 = *(v147 + 3);
      if (v126 >= v125 >> 1)
      {
        v127 = sub_22C369AB0(v125);
        sub_22C3B68B4(v127, v126 + 1, 1);
        v93 = v154;
      }

      *(v93 + 2) = v126 + 1;
      *&v93[8 * v126 + 32] = v123 | 0x8000000000000000;
      v83 = v141;
      if (v92 == v140)
      {
        goto LABEL_69;
      }
    }
  }

  __break(1u);
LABEL_77:
  __break(1u);
}

uint64_t sub_22C567334(uint64_t a1)
{
  v3 = (v1 + *(type metadata accessor for ToolRenderer_v6_0(0) + 24));
  v4 = v3[3];
  v5 = v3[4];
  sub_22C374168(v3, v4);
  return (*(v5 + 8))(a1, v4, v5);
}

uint64_t sub_22C56739C@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, void *x8_0@<X8>)
{
  v6 = sub_22C908EAC();
  sub_22C369824();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  sub_22C369838();
  v24 = v11 - v10;
  type metadata accessor for FetchedTools(0);
  sub_22C36985C();
  MEMORY[0x28223BE20](v12);
  sub_22C369838();
  v15 = v14 - v13;
  sub_22C55CEDC();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v8 + 32))(v24, v15, v6);
    sub_22C3A5908(&qword_27D9BAF88, &unk_22C917A10);
    v16 = (type metadata accessor for FetchedTools.AttributedRetrievedToolDefinition(0) - 8);
    v17 = (*(*v16 + 80) + 32) & ~*(*v16 + 80);
    v23 = a2;
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_22C90F800;
    v19 = v18 + v17;
    (*(v8 + 16))(v18 + v17, v24, v6);
    v20 = *MEMORY[0x277D1ECE0];
    sub_22C9036EC();
    sub_22C36985C();
    (*(v21 + 104))(v19, v20);
    sub_22C9037DC();
    sub_22C3E00C4();
    sub_22C3A5908(&qword_27D9BB828, &unk_22C912AE0);
    sub_22C3D32C8(&qword_27D9BB830, &qword_27D9BB828, &unk_22C912AE0, MEMORY[0x277D83970]);
    sub_22C90AE4C();
    *(v19 + v16[7]) = 0;
    sub_22C5676F8(v23, a3, x8_0);
    (*(v8 + 8))(v24, v6);
    swift_setDeallocating();
    return sub_22C590028();
  }

  else
  {
    sub_22C5676F8(a2, a3, x8_0);
  }
}

uint64_t sub_22C5676F8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, void *a3@<X8>)
{
  v196 = a2;
  v198 = a1;
  v191 = a3;
  v4 = sub_22C9036EC();
  v210 = *(v4 - 8);
  v5 = MEMORY[0x28223BE20](v4);
  v192 = &v189 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v203 = &v189 - v8;
  MEMORY[0x28223BE20](v7);
  v10 = &v189 - v9;
  v11 = sub_22C3A5908(&qword_27D9BDC50, &unk_22C91B470);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v207 = (&v189 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v12);
  v206 = (&v189 - v14);
  v15 = sub_22C9099FC();
  v16 = *(v15 - 8);
  v208 = v15;
  v209 = v16;
  v17 = MEMORY[0x28223BE20](v15);
  v202 = &v189 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v205 = &v189 - v19;
  v212 = type metadata accessor for FetchedTools.AttributedRetrievedToolDefinition(0);
  v194 = *(v212 - 8);
  v20 = MEMORY[0x28223BE20](v212);
  v204 = &v189 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v213 = &v189 - v22;
  v220 = type metadata accessor for RenderableTool(0);
  v214 = *(v220 - 8);
  v23 = MEMORY[0x28223BE20](v220);
  v211 = &v189 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v26 = &v189 - v25;

  v28 = sub_22C565B60(v27);
  if (v28[2] && (sub_22C633A1C(), (v29 & 1) != 0))
  {
  }

  else
  {
    v30 = MEMORY[0x277D84F90];
  }

  v31 = sub_22C565EA8(v30);
  v32 = v3;
  v33 = MEMORY[0x277D84F90];
  if (v28[2])
  {
    v34 = sub_22C633A1C();
    v35 = v198;
    if (v36)
    {
      v37 = *(v28[7] + 8 * v34);
    }

    else
    {
      v37 = MEMORY[0x277D84F90];
    }
  }

  else
  {
    v37 = MEMORY[0x277D84F90];
    v35 = v198;
  }

  v195 = v28;
  *&v215 = v4;
  v38 = *(v37 + 16);
  if (v38)
  {
    v199 = v32;
    v200 = v31;
    v201 = v10;
    v217 = v33;
    sub_22C3B696C(0, v38, 0);
    v39 = v217;
    v40 = (*(v194 + 80) + 32) & ~*(v194 + 80);
    v193 = v37;
    v41 = v37 + v40;
    v42 = *(v194 + 72);
    v43 = (v210 + 32);
    do
    {
      v44 = v213;
      sub_22C55CEDC();
      v45 = *(sub_22C3A5908(&qword_27D9BB818, qword_22C910430) + 48);
      (*v43)(v26, v44, v215);
      v46 = *(v212 + 24);
      v47 = sub_22C9037DC();
      (*(*(v47 - 8) + 32))(&v26[v45], &v44[v46], v47);
      swift_storeEnumTagMultiPayload();
      v217 = v39;
      v49 = *(v39 + 16);
      v48 = *(v39 + 24);
      if (v49 >= v48 >> 1)
      {
        sub_22C3B696C(v48 > 1, v49 + 1, 1);
        v39 = v217;
      }

      *(v39 + 16) = v49 + 1;
      sub_22C55CF8C();
      v41 += v42;
      --v38;
    }

    while (v38);

    v35 = v198;
    v10 = v201;
    v31 = v200;
    v32 = v199;
  }

  else
  {

    v39 = MEMORY[0x277D84F90];
  }

  MEMORY[0x28223BE20](v50);
  v51 = v197;
  *(&v189 - 4) = v197;
  *(&v189 - 3) = v35;
  v52 = v196;
  *(&v189 - 2) = v196;
  sub_22C792A18(sub_22C569BD8, (&v189 - 6), v39);
  if (v32)
  {
    goto LABEL_19;
  }

  v193 = v53;

  MEMORY[0x28223BE20](v54);
  *(&v189 - 4) = v31;
  *(&v189 - 3) = v51;
  *(&v189 - 2) = v35;
  *(&v189 - 1) = v52;
  sub_22C792A44();
  v189 = v55;

  v57 = MEMORY[0x277D84F90];
  if (v195[2])
  {
    sub_22C633A1C();
    v58 = v208;
    if (v59)
    {
    }

    else
    {
      v60 = MEMORY[0x277D84F90];
    }
  }

  else
  {
    v60 = MEMORY[0x277D84F90];
    v58 = v208;
  }

  v190 = 0;
  v61 = *(v60 + 16);
  if (v61)
  {
    v201 = v10;
    v62 = (*(v194 + 80) + 32) & ~*(v194 + 80);
    v200 = v60;
    v63 = v60 + v62;
    v212 = *(v194 + 72);
    v64 = (v209 + 32);
    v65 = MEMORY[0x277D84F90];
    do
    {
      v66 = v204;
      sub_22C55CEDC();
      sub_22C57709C();
      v67 = v206;
      sub_22C407C2C();
      sub_22C55CF34(v66, type metadata accessor for FetchedTools.AttributedRetrievedToolDefinition);
      if (sub_22C370B74(v67, 1, v58) == 1)
      {
        sub_22C36DD28(v67, &qword_27D9BDC50, &unk_22C91B470);
      }

      else
      {
        v68 = *v64;
        (*v64)(v205, v67, v58);
        v69 = v65;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_22C591EA4();
          v69 = v72;
        }

        v70 = *(v69 + 16);
        if (v70 >= *(v69 + 24) >> 1)
        {
          sub_22C591EA4();
          v69 = v73;
        }

        *(v69 + 16) = v70 + 1;
        v65 = v69;
        v71 = v69 + ((*(v209 + 80) + 32) & ~*(v209 + 80)) + *(v209 + 72) * v70;
        v58 = v208;
        v68(v71, v205, v208);
      }

      v63 += v212;
      --v61;
    }

    while (v61);

    v10 = v201;
    v57 = MEMORY[0x277D84F90];
  }

  else
  {

    v65 = MEMORY[0x277D84F90];
  }

  v74 = *(v65 + 16);
  v75 = v215;
  if (v74)
  {
    v217 = v57;
    sub_22C3B657C(0, v74, 0);
    v76 = 0;
    v77 = v217;
    v207 = (v65 + ((*(v209 + 80) + 32) & ~*(v209 + 80)));
    v206 = (v209 + 16);
    LODWORD(v204) = *MEMORY[0x277D1ECE8];
    v201 = (v210 + 104);
    v200 = (v209 + 8);
    v199 = v210 + 32;
    v212 = v65;
    v205 = v74;
    while (v76 < *(v65 + 16))
    {
      v78 = v208;
      v79 = v209;
      v80 = *(v209 + 16);
      v81 = v10;
      v82 = v202;
      v80(v202, v207 + *(v209 + 72) * v76, v208);
      v80(v81, v82, v78);
      (*v201)(v81, v204, v75);
      (*(v79 + 8))(v82, v78);
      v217 = v77;
      v84 = *(v77 + 16);
      v83 = *(v77 + 24);
      v10 = v81;
      v57 = v84 + 1;
      if (v84 >= v83 >> 1)
      {
        sub_22C3B657C(v83 > 1, v84 + 1, 1);
        v77 = v217;
      }

      ++v76;
      *(v77 + 16) = v57;
      (*(v210 + 32))(v77 + ((*(v210 + 80) + 32) & ~*(v210 + 80)) + *(v210 + 72) * v84, v81, v75);
      v74 = v205;
      v65 = v212;
      if (v205 == v76)
      {

        v57 = MEMORY[0x277D84F90];
        goto LABEL_45;
      }
    }

    __break(1u);
LABEL_127:
    __break(1u);
LABEL_128:
    __break(1u);
    goto LABEL_129;
  }

  v77 = MEMORY[0x277D84F90];
LABEL_45:
  v85 = *(v77 + 16);
  if (v85)
  {
    v217 = v57;
    sub_22C3B696C(0, v85, 0);
    v209 = sub_22C9037DC();
    v86 = v217;
    v207 = *(v210 + 16);
    v87 = (*(v210 + 80) + 32) & ~*(v210 + 80);
    v204 = v77;
    v88 = v77 + v87;
    v208 = v210 + 16;
    v205 = *(v210 + 72);
    v206 = (v210 + 8);
    v89 = v211;
    do
    {
      v212 = v85;
      v10 = v203;
      v90 = v215;
      v91 = v207;
      v207(v203, v88, v215);
      sub_22C3A5908(&qword_27D9BB818, qword_22C910430);
      v91(v89, v10, v90);
      v216[0] = MEMORY[0x277D84F90];
      sub_22C3E00C4();
      sub_22C3A5908(&qword_27D9BB828, &unk_22C912AE0);
      sub_22C3D32C8(&qword_27D9BB830, &qword_27D9BB828, &unk_22C912AE0, MEMORY[0x277D83970]);
      sub_22C90AE4C();
      v89 = v211;
      (*v206)(v10, v90);
      swift_storeEnumTagMultiPayload();
      v217 = v86;
      v93 = *(v86 + 16);
      v92 = *(v86 + 24);
      if (v93 >= v92 >> 1)
      {
        sub_22C3B696C(v92 > 1, v93 + 1, 1);
        v89 = v211;
        v86 = v217;
      }

      *(v86 + 16) = v93 + 1;
      sub_22C55CF8C();
      v88 += v205;
      v85 = v212 - 1;
    }

    while (v212 != 1);
  }

  else
  {

    v86 = MEMORY[0x277D84F90];
  }

  MEMORY[0x28223BE20](v94);
  v95 = v198;
  *(&v189 - 4) = v197;
  *(&v189 - 3) = v95;
  *(&v189 - 2) = v196;
  v96 = v190;
  sub_22C792A18(sub_22C569C40, (&v189 - 6), v86);
  v75 = v96;
  if (v96)
  {

LABEL_19:
  }

  v98 = v97;

  v217 = v98;
  sub_22C3CD560(v193);
  sub_22C3CD560(v189);
  v99 = sub_22C7F4DE0(v217);
  v74 = v100;
  v57 = 0;
  v76 = *(v100 + 16);
  v77 = MEMORY[0x277D84F90];
  while (v76 != v57)
  {
    if (v57 >= *(v74 + 16))
    {
      goto LABEL_127;
    }

    v101 = *(type metadata accessor for _PromptToolData(0) - 8);
    v102 = *(v74 + ((*(v101 + 80) + 32) & ~*(v101 + 80)) + *(v101 + 72) * v57 + 8);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_22C591324();
      v77 = v103;
    }

    v10 = *(v77 + 16);
    if (v10 >= *(v77 + 24) >> 1)
    {
      sub_22C591324();
      v77 = v104;
    }

    *(v77 + 16) = v10 + 1;
    *(v77 + 8 * v10 + 32) = v102;
    ++v57;
  }

  v105 = sub_22C5657FC(v99, v74);
  v106 = sub_22C566328(v105);

  v107 = v195;
  v108 = v195[2];
  v109 = MEMORY[0x277D84F90];
  v208 = v106;
  v211 = 0;
  if (v108)
  {
    v110 = sub_22C633A1C();
    v111 = v192;
    if (v112)
    {
      v113 = *(v107[7] + 8 * v110);
    }

    else
    {
      v113 = MEMORY[0x277D84F90];
    }
  }

  else
  {
    v113 = MEMORY[0x277D84F90];
    v111 = v192;
  }

  v209 = v99;

  v75 = *(v113 + 2);
  v220 = v74;
  if (v75)
  {
    v217 = v109;
    sub_22C3B657C(0, v75, 0);
    v114 = v217;
    v115 = *(v194 + 80);
    v207 = v113;
    v116 = &v113[(v115 + 32) & ~v115];
    v214 = *(v194 + 72);
    v117 = (v210 + 16);
    v212 = v210 + 32;
    v118 = v215;
    do
    {
      v119 = v213;
      sub_22C55CEDC();
      (*v117)(v111, v119, v118);
      sub_22C55CF34(v119, type metadata accessor for FetchedTools.AttributedRetrievedToolDefinition);
      v217 = v114;
      v121 = *(v114 + 16);
      v120 = *(v114 + 24);
      if (v121 >= v120 >> 1)
      {
        sub_22C3B657C(v120 > 1, v121 + 1, 1);
        v114 = v217;
      }

      *(v114 + 16) = v121 + 1;
      (*(v210 + 32))(v114 + ((*(v210 + 80) + 32) & ~*(v210 + 80)) + *(v210 + 72) * v121, v111, v118);
      v116 += v214;
      --v75;
    }

    while (v75);

    v74 = v220;
  }

  else
  {

    v114 = MEMORY[0x277D84F90];
  }

  MEMORY[0x28223BE20](v122);
  v123 = v197;
  v124 = v198;
  *(&v189 - 4) = v197;
  *(&v189 - 3) = v124;
  *(&v189 - 2) = v196;
  sub_22C566700(v114, &unk_283FAF2B8, v123, v124, sub_22C569C18, (&v189 - 6));
  v76 = v125;

  v126 = *(v76 + 16);
  if (v126)
  {
    v217 = MEMORY[0x277D84F90];
    sub_22C3B63D4(0, v126, 0);
    v127 = 32;
    v128 = v217;
    v215 = xmmword_22C91B4C0;
    do
    {
      v129 = *(v76 + v127);
      v130 = swift_allocObject();
      *(v130 + 16) = v215;
      sub_22C3A5908(&qword_27D9BB770, qword_22C90FE80);
      v131 = swift_allocObject();
      *(v131 + 16) = v129;
      *(v130 + 32) = v131;
      v132 = v130 | 0x8000000000000000;
      v75 = swift_allocObject();
      v133 = swift_allocObject();
      *(v133 + 16) = v132;
      *(v75 + 16) = v133;
      v217 = v128;
      v135 = *(v128 + 16);
      v134 = *(v128 + 24);

      if (v135 >= v134 >> 1)
      {
        sub_22C3B63D4(v134 > 1, v135 + 1, 1);
        v128 = v217;
      }

      *(v128 + 16) = v135 + 1;
      *(v128 + 8 * v135 + 32) = v75 | 0x6000000000000000;
      v127 += 8;
      --v126;
    }

    while (v126);

    v74 = v220;
  }

  else
  {

    v128 = MEMORY[0x277D84F90];
  }

  v10 = MEMORY[0x277D84F90];
  *&v215 = *(v74 + 16);
  if (!v215)
  {
LABEL_95:
    v75 = sub_22C569A50(v128, v10);

    v10 = 0xA200000000000000;
    v143 = sub_22C47D738(37314, 0xA200000000000000, v77);

    v144 = swift_allocObject();
    *(v144 + 16) = 37314;
    *(v144 + 24) = 0xA200000000000000;
    v145 = sub_22C47D60C(v144, v143);

    v146 = swift_allocObject();
    *(v146 + 16) = 37314;
    *(v146 + 24) = 0xA200000000000000;
    v147 = sub_22C47D60C(v145, v146);

    v148 = sub_22C47D60C(v147, v75);

    v149 = MEMORY[0x277D84F90];
    v217 = MEMORY[0x277D84F90];
    v212 = v148;
    v150 = v211;
    sub_22C496A94();
    if (!v150)
    {
      v152 = v151;
      v77 = 0;

      v153 = swift_allocObject();
      v76 = v153;
      if ((v152 & 1) == 0)
      {
        *(v153 + 16) = 0x6F68747970606060;
        *(v153 + 24) = 0xEA00000000000A6ELL;
        sub_22C591324();
        v156 = v155;
        v57 = *(v155 + 16);
        v157 = *(v155 + 24) >> 1;
        v10 = v57 + 1;
        if (v157 > v57)
        {
          goto LABEL_99;
        }

        goto LABEL_135;
      }

      v217 = 0;
      v218 = 0xE000000000000000;
      *(v153 + 16) = sub_22C90A49C();
      *(v76 + 24) = v154;
      goto LABEL_104;
    }

    __break(1u);
    return result;
  }

  v136 = 0;
  v214 = *(type metadata accessor for _PromptToolData(0) - 8);
  v57 = v74 + ((*(v214 + 80) + 32) & ~*(v214 + 80)) + 16;
  while (v136 < *(v74 + 16))
  {
    v74 = *(v57 + *(v214 + 72) * v136);
    v137 = *(v74 + 16);
    v75 = *(v10 + 16);
    v76 = v75 + v137;
    if (__OFADD__(v75, v137))
    {
      goto LABEL_130;
    }

    if (!swift_isUniquelyReferenced_nonNull_native() || v76 > *(v10 + 24) >> 1)
    {
      sub_22C591324();
      v10 = v138;
    }

    if (*(v74 + 16))
    {
      v139 = *(v10 + 16);
      if ((*(v10 + 24) >> 1) - v139 < v137)
      {
        goto LABEL_132;
      }

      v76 = v10 + 8 * v139;
      sub_22C3A5908(&qword_27D9BAF08, &qword_22C90D7B0);
      swift_arrayInitWithCopy();

      v74 = v220;
      if (v137)
      {
        v140 = *(v10 + 16);
        v141 = __OFADD__(v140, v137);
        v142 = v140 + v137;
        if (v141)
        {
          goto LABEL_134;
        }

        *(v10 + 16) = v142;
      }
    }

    else
    {

      v74 = v220;
      if (v137)
      {
        goto LABEL_131;
      }
    }

    if (v215 == ++v136)
    {
      goto LABEL_95;
    }
  }

LABEL_129:
  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
  while (1)
  {
    __break(1u);
LABEL_134:
    __break(1u);
LABEL_135:
    sub_22C591324();
    v156 = v186;
    v157 = *(v186 + 24) >> 1;
LABEL_99:
    *(v156 + 16) = v10;
    *(v156 + 8 * v57 + 32) = v76;
    v158 = v57 + 2;
    if (v157 < (v57 + 2))
    {
      sub_22C591324();
      v156 = v187;
    }

    *(v156 + 16) = v158;
    *(v156 + 8 * v10 + 32) = v212;
    v159 = swift_allocObject();
    *(v159 + 16) = 1616928778;
    *(v159 + 24) = 0xE400000000000000;
    v160 = *(v156 + 24);
    v10 = v57 + 3;

    if ((v57 + 3) > (v160 >> 1))
    {
      sub_22C591324();
      v156 = v188;
    }

    v149 = MEMORY[0x277D84F90];
    *(v156 + 16) = v10;
    *(v156 + 8 * v158 + 32) = v159;
    v161 = sub_22C3DB9B0(v156);

    v162 = swift_allocObject();
    sub_22C3A5908(&qword_27D9BB770, qword_22C90FE80);
    v163 = swift_allocObject();
    *(v163 + 16) = v161;
    *(v162 + 16) = v163;
    v76 = v162 | 0x6000000000000000;
LABEL_104:
    v217 = v149;
    v164 = v149;
    v57 = *(v74 + 16);
    v190 = v77;
    if (v57)
    {
      v10 = v76;
      v77 = 0;
      v76 = *(type metadata accessor for _PromptToolData(0) - 8);
      while (v77 < *(v74 + 16))
      {
        ++v77;

        sub_22C3CD230();
        if (v57 == v77)
        {
          v165 = v217;
          v76 = v10;
          goto LABEL_110;
        }
      }

      goto LABEL_128;
    }

    v165 = v164;
LABEL_110:
    type metadata accessor for ToolRenderer_v6_0(0);
    sub_22C3A7214();
    v210 = v75;
    v211 = v76;
    if (!v219)
    {
      sub_22C36DD28(&v217, &qword_27D9BD9F8, &unk_22C91A240);
      v176 = 0;
      v177 = 0;
      v178 = 0;
      v179 = 0;
      goto LABEL_125;
    }

    v207 = v165;
    sub_22C374168(&v217, v219);
    *&v215 = *(v74 + 16);
    if (!v215)
    {
      break;
    }

    v166 = type metadata accessor for _PromptToolData(0);
    v167 = 0;
    v213 = *(v166 - 8);
    v214 = v166;
    v57 = v74 + ((v213[80] + 32) & ~v213[80]);
    v75 = MEMORY[0x277D84F90];
    while (v167 < *(v74 + 16))
    {
      v168 = (v57 + *(v213 + 9) * v167 + *(v214 + 36));
      v169 = v168[1];
      if (v169)
      {
        v170 = *v168;
        v77 = v168[2];
        v171 = v168[3];

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_22C591018(0, *(v75 + 16) + 1, 1, v75);
          v75 = v174;
        }

        v10 = *(v75 + 16);
        v172 = *(v75 + 24);
        v76 = v10 + 1;
        if (v10 >= v172 >> 1)
        {
          sub_22C591018(v172 > 1, v10 + 1, 1, v75);
          v75 = v175;
        }

        *(v75 + 16) = v76;
        v173 = (v75 + 32 * v10);
        v173[4] = v170;
        v173[5] = v169;
        v173[6] = v77;
        v173[7] = v171;
        v74 = v220;
      }

      if (v215 == ++v167)
      {
        goto LABEL_124;
      }
    }
  }

  v75 = MEMORY[0x277D84F90];
LABEL_124:
  sub_22C531C50(v75, v216);

  v176 = v216[0];
  v177 = v216[1];
  v178 = v216[2];
  v179 = v216[3];
  sub_22C36FF94(&v217);
  v165 = v207;
LABEL_125:
  sub_22C3A5908(&qword_27D9BAF08, &qword_22C90D7B0);
  sub_22C3D32C8(&qword_27D9BB778, &qword_27D9BAF08, &qword_22C90D7B0, &unk_22C916CA4);
  v180 = sub_22C909F0C();
  v181 = swift_allocObject();
  v217 = 0;
  v218 = 0xE000000000000000;
  sub_22C456C94(v176, v177, v178);
  v182 = sub_22C90A49C();
  v184 = v183;

  sub_22C456D48(v176, v177, v178);

  *(v181 + 16) = v182;
  *(v181 + 24) = v184;
  v185 = v191;
  *v191 = v211;
  v185[1] = v180;
  v185[2] = v208;
  v185[3] = v165;
  v185[4] = v176;
  v185[5] = v177;
  v185[6] = v178;
  v185[7] = v179;
  v185[8] = v181;
  return result;
}

uint64_t sub_22C5691EC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, void (*a3)(void *__return_ptr, void, void, void, void)@<X3>, uint64_t a4@<X4>, uint64_t *a5@<X8>)
{
  v53 = a3;
  v54 = a4;
  v52 = a2;
  v8 = sub_22C9063DC();
  v59 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22C3A5908(&qword_27D9BC1E8, &qword_22C9123B0);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = v48 - v15;
  v17 = sub_22C908EAC();
  v57 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v61 = v48 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for FetchedTools.AttributedRetrievedToolDefinition(0);
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19 - 8);
  v60 = v48 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = type metadata accessor for RenderableTool(0);
  MEMORY[0x28223BE20](v50);
  v51 = (v48 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = sub_22C6058B0(0, a1);
  if (v23)
  {
    v49 = a5;
    v24 = *(v23 + 16);
    if (v24)
    {
      v48[1] = v23;
      v48[2] = v5;
      v25 = v23 + ((*(v20 + 80) + 32) & ~*(v20 + 80));
      v26 = *(v20 + 72);
      v58 = (v57 + 32);
      v59 = MEMORY[0x277D84F90];
      v27 = v17;
      v55 = v26;
      v56 = v17;
      do
      {
        v28 = v60;
        sub_22C55CEDC();
        sub_22C9036BC();
        sub_22C407C2C();
        sub_22C55CF34(v28, type metadata accessor for FetchedTools.AttributedRetrievedToolDefinition);
        if (sub_22C370B74(v16, 1, v27) == 1)
        {
          sub_22C36DD28(v16, &qword_27D9BC1E8, &qword_22C9123B0);
        }

        else
        {
          v29 = v14;
          v30 = *v58;
          (*v58)(v61, v16, v27);
          v31 = v59;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_22C591C4C();
            v31 = v34;
          }

          v32 = *(v31 + 16);
          if (v32 >= *(v31 + 24) >> 1)
          {
            sub_22C591C4C();
            v31 = v35;
          }

          *(v31 + 16) = v32 + 1;
          v33 = (*(v57 + 80) + 32) & ~*(v57 + 80);
          v59 = v31;
          v27 = v56;
          (v30)(v31 + v33 + *(v57 + 72) * v32, v61);
          v14 = v29;
          v26 = v55;
        }

        v25 += v26;
        --v24;
      }

      while (v24);

      v36 = v59;
    }

    else
    {

      v36 = MEMORY[0x277D84F90];
    }

    v46 = v51;
    *v51 = v36;
    swift_storeEnumTagMultiPayload();
    v47 = type metadata accessor for ToolRenderer_v6_0(0);
    sub_22C4B8858(v46, (v52 + *(v47 + 20)), v53, v54, v49);
    return sub_22C55CF34(v46, type metadata accessor for RenderableTool);
  }

  else
  {
    v37 = a5;
    v38 = v59;
    v39 = v8;
    sub_22C903F7C();
    v40 = sub_22C9063CC();
    v41 = sub_22C90AACC();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v62 = v43;
      *v42 = 136315138;
      *(v42 + 4) = sub_22C36F9F4(0x695F686372616573, 0xED00007070615F6ELL, &v62);
      sub_22C36FF94(v43);
      MEMORY[0x2318B9880](v43, -1, -1);
      MEMORY[0x2318B9880](v42, -1, -1);
    }

    (*(v38 + 8))(v10, v39);
    v44 = type metadata accessor for _PromptToolData(0);
    return sub_22C36C640(v37, 1, 1, v44);
  }
}

uint64_t sub_22C569850@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v26 = a6;
  v11 = sub_22C90941C();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v27[-1] - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2318B6CE0](v13);
  v16 = sub_22C4F6864(a3, a4);
  (*(v12 + 8))(v15, v11);
  v17 = 0;
  v18 = 0;
  if (v16 == 2)
  {
    v19 = (a3 + *(type metadata accessor for ToolRenderer_v6_0(0) + 20));
    v20 = v19[18];
    v21 = v19[19];
    sub_22C374168(v19 + 15, v20);
    (*(v21 + 8))(v27, a1, 0, a5, v20, v21);
    v18 = v27[1];
    if (v28)
    {

      v17 = 0;
      v18 = 0;
    }

    else
    {
      v17 = v27[0];
    }
  }

  v22 = (a3 + *(type metadata accessor for ToolRenderer_v6_0(0) + 20));
  v23 = v22[13];
  v24 = v22[14];
  sub_22C374168(v22 + 10, v23);
  (*(v24 + 16))(a2, v17, v18, a4, a5, v23, v24);
}

uint64_t sub_22C569A50(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);

  if (v4)
  {
    v5 = sub_22C3DB9B0(a2);
    v6 = swift_allocObject();
    *(v6 + 16) = 0;
    *(v6 + 24) = 0;
    sub_22C3A5908(&qword_27D9BB770, qword_22C90FE80);
    v7 = swift_allocObject();
    *(v7 + 16) = v5;
    *(v6 + 32) = v7;
    v8 = sub_22C529D00(10, 0xE100000000000000, v6 | 0x8000000000000000);

    v9 = swift_allocObject();
    v10 = swift_allocObject();
    *(v10 + 16) = v8;
    *(v9 + 16) = v10;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_22C591324();
      a1 = v14;
    }

    v11 = *(a1 + 16);
    if (v11 >= *(a1 + 24) >> 1)
    {
      sub_22C591324();
      a1 = v15;
    }

    *(a1 + 16) = v11 + 1;
    *(a1 + 8 * v11 + 32) = v9 | 0x6000000000000000;
  }

  v12 = sub_22C47D738(10, 0xE100000000000000, a1);

  return v12;
}

unint64_t sub_22C569C58(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  v5 = swift_allocObject();
  *(v5 + 16) = 3;
  *(v5 + 24) = 1;
  sub_22C3A5908(&qword_27D9BB768, &unk_22C912C90);
  v6 = swift_allocObject();
  *(v6 + 16) = v4;
  *(v5 + 32) = v6;
  v7 = swift_allocObject();
  *(v7 + 16) = 4;
  *(v7 + 24) = 1;
  v8 = swift_allocObject();
  *(v8 + 16) = v5 | 0xA000000000000000;
  *(v7 + 32) = v8;
  v9 = swift_allocObject();
  *(v9 + 16) = 2;
  *(v9 + 24) = 1;
  v10 = swift_allocObject();
  *(v10 + 16) = v7 | 0xA000000000000000;
  *(v9 + 32) = v10;

  return v9 | 0xA000000000000000;
}

double sub_22C569D90@<D0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v161 = a4;
  v162 = a5;
  v160 = a3;
  v9 = sub_22C90919C();
  sub_22C369824();
  v143 = v10;
  MEMORY[0x28223BE20](v11);
  sub_22C3698A8();
  sub_22C3698F8(v12);
  v13 = sub_22C9063DC();
  sub_22C369824();
  v15 = v14;
  MEMORY[0x28223BE20](v16);
  v18 = v136 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v159 = sub_22C902D0C();
  sub_22C369824();
  v20 = v19;
  MEMORY[0x28223BE20](v21);
  sub_22C3698A8();
  sub_22C3698F8(v22);
  v157 = sub_22C90963C();
  sub_22C369824();
  v24 = v23;
  MEMORY[0x28223BE20](v25);
  sub_22C3698A8();
  v27 = sub_22C3698F8(v26);
  v155 = type metadata accessor for DirectionalTypedValue(v27);
  sub_22C36985C();
  MEMORY[0x28223BE20](v28);
  sub_22C3698A8();
  v154 = v29;
  v168 = sub_22C3A5908(&qword_27D9BADA0, &unk_22C90FA80);
  sub_22C36985C();
  MEMORY[0x28223BE20](v30);
  v167 = v136 - v31;
  v32 = sub_22C3A5908(&qword_27D9BC390, &qword_22C912AC0);
  MEMORY[0x28223BE20](v32 - 8);
  sub_22C369ABC();
  MEMORY[0x28223BE20](v33);
  v36 = v136 - v35;
  if ((a2 & 1) == 0)
  {
    sub_22C90915C();
    v92 = sub_22C90993C();
    if (sub_22C370B74(v36, 1, v92) == 1)
    {
      sub_22C36DD28(v36, &qword_27D9BC390, &qword_22C912AC0);
      v93 = 0;
      v94 = 0xE000000000000000;
    }

    else
    {
      v93 = sub_22C9098BC();
      v94 = v105;
      (*(*(v92 - 8) + 8))(v36, v92);
    }

    v46 = a6;
    v45 = sub_22C569C58(v93, v94);

    sub_22C36A83C();
    v20 = swift_allocObject();
    *(v20 + 16) = 0x3D72706572;
    *(v20 + 24) = 0xE500000000000000;
    sub_22C591324();
    v107 = v106;
    v39 = *(v106 + 16);
    v47 = *(v106 + 24);
    v108 = v47 >> 1;
    v13 = v39 + 1;
    if (v47 >> 1 <= v39)
    {
LABEL_48:
      sub_22C369AB0(v47);
      sub_22C591324();
      v107 = v133;
      v47 = *(v133 + 24);
      v108 = v47 >> 1;
    }

    *(v107 + 16) = v13;
    *(v107 + 8 * v39 + 32) = v20;
    v109 = v39 + 2;
    if (v108 < (v39 + 2))
    {
      sub_22C369AB0(v47);
      sub_22C591324();
      v107 = v134;
    }

    *(v107 + 16) = v109;
    *(v107 + 8 * v13 + 32) = v45;
    sub_22C36A83C();
    v110 = swift_allocObject();
    *(v110 + 16) = 0;
    *(v110 + 24) = 0xE000000000000000;
    v111 = *(v107 + 24);
    v112 = v39 + 3;

    if (v112 > (v111 >> 1))
    {
      sub_22C591324();
      v107 = v135;
    }

    *(v107 + 16) = v112;
    *(v107 + 8 * v109 + 32) = v110;
    v113 = sub_22C3DB9B0(v107);

    v114 = swift_allocObject();
    sub_22C3A5908(&qword_27D9BB770, qword_22C90FE80);
    v115 = swift_allocObject();
    *(v115 + 16) = v113;
    *(v114 + 16) = v115;
    v116 = v114 | 0x6000000000000000;
    goto LABEL_44;
  }

  v136[0] = v34;
  v137 = v9;
  v138 = v18;
  v136[1] = v15;
  v140 = v13;
  v141 = a6;
  v139 = a1;
  v37 = sub_22C90914C();
  v38 = v37;
  v39 = v37 + 64;
  v40 = 1 << *(v37 + 32);
  v41 = -1;
  if (v40 < 64)
  {
    v41 = ~(-1 << v40);
  }

  v42 = v41 & *(v37 + 64);
  v43 = (v40 + 63) >> 6;
  v153 = *MEMORY[0x277D72E10];
  v152 = v24 + 104;
  v151 = v24 + 8;
  v150 = v20 + 16;
  v149 = *MEMORY[0x277D1D7E8];
  v148 = (v20 + 104);
  v147 = *MEMORY[0x277D1D7D0];
  v146 = v20 + 8;

  v45 = 0;
  v142 = MEMORY[0x277D84F90];
  v46 = v167;
  v163 = v43;
  v164 = v39;
  v145 = v44;
  while (v42)
  {
LABEL_10:
    v48 = __clz(__rbit64(v42));
    v42 &= v42 - 1;
    v49 = v48 | (v45 << 6);
    v50 = *(v38 + 56);
    v51 = (*(v38 + 48) + 16 * v49);
    v13 = v38;
    v52 = *v51;
    v53 = v51[1];
    v54 = sub_22C9093BC();
    sub_22C36985C();
    v20 = v55 + 16;
    v56 = v50 + *(v55 + 72) * v49;
    v57 = v46 + *(v168 + 48);
    ObjectType = *(v55 + 16);
    ObjectType(v57, v56, v54);
    v171 = v52;
    v172 = v53;
    *v46 = v52;
    *(v46 + 8) = v53;
    v58 = v169;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v60 = Strong;
      v166 = *(v58 + 24);
      sub_22C36BA4C();
      v61 = v156;
      v62 = v157;
      v63(v156, v153, v157);

      sub_22C90962C();
      sub_22C36BA4C();
      v64(v61, v62);
      v13 = v154;
      ObjectType(v154, v57, v54);
      swift_storeEnumTagMultiPayload();
      ObjectType = swift_getObjectType();
      v65 = sub_22C3A5908(&qword_27D9BC208, &unk_22C912400);
      v66 = swift_allocBox();
      v165 = v60;
      v68 = v67;
      v69 = *(v65 + 48);
      sub_22C36BA4C();
      v70 = v159;
      v72(v71, v162, v159);
      sub_22C36D6EC();
      v73 = swift_allocObject();
      v74 = v172;
      *(v73 + 16) = v171;
      *(v73 + 24) = v74;
      *(v73 + 32) = 3;
      *(v68 + v69) = v73;
      v75 = *v148;
      (*v148)(v68 + v69, v149, v70);
      v76 = v158;
      *v158 = v66;
      v75(v76, v147, v70);
      v77 = v166;
      v20 = v166 + 8;
      v78 = *(v166 + 8);

      v78(v173, v13, 1, v161, v76, ObjectType, v77);
      swift_unknownObjectRelease();
      sub_22C36BA4C();
      v79(v76, v70);
      sub_22C56BE84(v13);
      if (v174)
      {
        v46 = v167;
        v38 = v145;
        goto LABEL_14;
      }

      v81 = v173[3];
      v80 = v173[4];
      v83 = v173[1];
      v82 = v173[2];
      v84 = v173[0];

      sub_22C456CE4(v84, v83, v82, v81, v80, 0);
      v85 = v172;

      v13 = v167;
      sub_22C36DD28(v167, &qword_27D9BADA0, &unk_22C90FA80);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_22C5922A4();
        v142 = v90;
      }

      v38 = v145;
      v43 = v163;
      v39 = v164;
      v86 = v171;
      v20 = *(v142 + 16);
      v87 = *(v142 + 24);
      if (v20 >= v87 >> 1)
      {
        sub_22C369AB0(v87);
        sub_22C5922A4();
        v86 = v171;
        v142 = v91;
      }

      v88 = v142;
      *(v142 + 16) = v20 + 1;
      v89 = (v88 + 24 * v20);
      v89[4] = v86;
      v89[5] = v85;
      v89[6] = v84;
      v46 = v13;
    }

    else
    {

      v38 = v13;
LABEL_14:
      sub_22C36DD28(v46, &qword_27D9BADA0, &unk_22C90FA80);
      v43 = v163;
      v39 = v164;
    }
  }

  while (1)
  {
    v47 = v45 + 1;
    if (__OFADD__(v45, 1))
    {
      __break(1u);
LABEL_47:
      __break(1u);
      goto LABEL_48;
    }

    if (v47 >= v43)
    {
      break;
    }

    v42 = *(v39 + 8 * v47);
    ++v45;
    if (v42)
    {
      v45 = v47;
      goto LABEL_10;
    }
  }

  v173[0] = v142;

  sub_22C56BEE0(v173);

  v45 = v173[0];
  v20 = *(v173[0] + 16);
  v46 = v141;
  v95 = v140;
  v96 = v144;
  v13 = v139;
  if (v20)
  {
    goto LABEL_37;
  }

  v97 = v138;
  sub_22C903F7C();
  v98 = v143;
  v99 = v13;
  v13 = v137;
  (*(v143 + 16))(v96, v99, v137);
  v100 = sub_22C9063CC();
  v39 = sub_22C90AACC();
  if (os_log_type_enabled(v100, v39))
  {
    v13 = swift_slowAlloc();
    v172 = swift_slowAlloc();
    v173[0] = v172;
    *v13 = 136642819;
    v101 = v136[0];
    sub_22C90915C();
    v102 = sub_22C90993C();
    if (sub_22C370B74(v101, 1, v102) == 1)
    {
      sub_22C36DD28(v101, &qword_27D9BC390, &qword_22C912AC0);
      v103 = 0;
      v104 = 0xE000000000000000;
    }

    else
    {
      v103 = sub_22C9098BC();
      v104 = v119;
      (*(*(v102 - 8) + 8))(v101, v102);
    }

    sub_22C36FB04();
    v120(v144, v137);
    v121 = sub_22C36F9F4(v103, v104, v173);

    *(v13 + 4) = v121;
    _os_log_impl(&dword_22C366000, v100, v39, "Empty property list found for entity with display representation: %{sensitive}s", v13, 0xCu);
    v122 = v172;
    sub_22C36FF94(v172);
    MEMORY[0x2318B9880](v122, -1, -1);
    MEMORY[0x2318B9880](v13, -1, -1);

    sub_22C36FB04();
    v118 = v138;
  }

  else
  {

    (*(v98 + 8))(v96, v13);
    sub_22C36FB04();
    v118 = v97;
  }

  v117(v118, v95);
  v20 = *(v45 + 16);
  if (v20)
  {
LABEL_37:
    v173[0] = MEMORY[0x277D84F90];
    sub_22C3B63D4(0, v20, 0);
    v123 = 0;
    v124 = v173[0];
    v125 = (v45 + 48);
    while (1)
    {
      v47 = *(v45 + 16);
      if (v123 >= v47)
      {
        goto LABEL_47;
      }

      v126 = *(v125 - 2);
      v127 = *(v125 - 1);
      v128 = *v125;

      v13 = sub_22C56AB48(v126, v127, v128);

      v173[0] = v124;
      v130 = *(v124 + 16);
      v129 = *(v124 + 24);
      v39 = v130 + 1;
      if (v130 >= v129 >> 1)
      {
        v131 = sub_22C369AB0(v129);
        sub_22C3B63D4(v131, v130 + 1, 1);
        v124 = v173[0];
      }

      ++v123;
      *(v124 + 16) = v39;
      *(v124 + 8 * v130 + 32) = v13;
      v125 += 3;
      if (v20 == v123)
      {

        goto LABEL_43;
      }
    }
  }

  v124 = MEMORY[0x277D84F90];
LABEL_43:
  v116 = sub_22C47D738(8236, 0xE200000000000000, v124);

LABEL_44:
  *v46 = v116;
  result = 0.0;
  *(v46 + 8) = 0u;
  *(v46 + 24) = 0u;
  *(v46 + 40) = 0;
  return result;
}

uint64_t sub_22C56AB48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  *(v4 + 24) = 0xE000000000000000;
  sub_22C591324();
  v6 = v5;
  v7 = *(v5 + 16);
  if (v7 >= *(v5 + 24) >> 1)
  {
    sub_22C591324();
    v6 = v27;
  }

  *(v6 + 16) = v7 + 1;
  *(v6 + 8 * v7 + 32) = v4;
  v8 = sub_22C90A2CC();
  v10 = v9;
  v11 = swift_allocObject();
  *(v11 + 16) = v8;
  *(v11 + 24) = v10;
  v12 = *(v6 + 16);
  v13 = *(v6 + 24);

  if (v12 >= v13 >> 1)
  {
    sub_22C591324();
    v6 = v28;
  }

  *(v6 + 16) = v12 + 1;
  *(v6 + 8 * v12 + 32) = v11;

  v14 = swift_allocObject();
  *(v14 + 16) = 61;
  *(v14 + 24) = 0xE100000000000000;
  v15 = *(v6 + 16);
  v16 = v15 + 1;
  if (v15 >= *(v6 + 24) >> 1)
  {
    sub_22C591324();
    v6 = v29;
  }

  *(v6 + 16) = v16;
  *(v6 + 8 * v15 + 32) = v14;
  v17 = swift_allocObject();
  *(v17 + 16) = 3;
  *(v17 + 24) = 1;
  sub_22C3A5908(&qword_27D9BB768, &unk_22C912C90);
  v18 = swift_allocObject();
  *(v18 + 16) = a3;
  *(v17 + 32) = v18;
  v19 = v17 | 0xA000000000000000;
  v20 = *(v6 + 24);
  v21 = v15 + 2;

  if ((v15 + 2) > (v20 >> 1))
  {
    sub_22C591324();
    v6 = v30;
  }

  *(v6 + 16) = v21;
  *(v6 + 8 * v16 + 32) = v19;
  v22 = swift_allocObject();
  *(v22 + 16) = 0;
  *(v22 + 24) = 0xE000000000000000;
  if ((v15 + 3) > *(v6 + 24) >> 1)
  {
    sub_22C591324();
    v6 = v31;
  }

  *(v6 + 16) = v15 + 3;
  *(v6 + 8 * v21 + 32) = v22;
  v23 = sub_22C3DB9B0(v6);

  v24 = swift_allocObject();
  sub_22C3A5908(&qword_27D9BB770, qword_22C90FE80);
  v25 = swift_allocObject();
  *(v25 + 16) = v23;
  *(v24 + 16) = v25;
  return v24 | 0x6000000000000000;
}

uint64_t sub_22C56AE2C()
{
  sub_22C56C570(v0 + 16);
  sub_22C36A83C();

  return swift_deallocClassInstance();
}

void sub_22C56AEAC(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v185 = a3;
  v186 = a4;
  v183 = a2;
  v162 = a5;
  v7 = sub_22C9093BC();
  sub_22C369824();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  sub_22C3698A8();
  sub_22C3698F8(v11);
  v168 = sub_22C90910C();
  sub_22C369824();
  v167 = v12;
  MEMORY[0x28223BE20](v13);
  sub_22C3698A8();
  sub_22C3698F8(v14);
  *&v174 = sub_22C90963C();
  sub_22C369824();
  v173 = v15;
  MEMORY[0x28223BE20](v16);
  sub_22C3698A8();
  sub_22C3698F8(v17);
  v171 = sub_22C90919C();
  sub_22C369824();
  v170 = v18;
  MEMORY[0x28223BE20](v19);
  sub_22C3698A8();
  sub_22C3698F8(v20);
  v181 = sub_22C902D0C();
  sub_22C369824();
  v164 = v21;
  MEMORY[0x28223BE20](v22);
  sub_22C3698A8();
  v180 = v23;
  v179 = sub_22C3A5908(&qword_27D9BDCF0, qword_22C91B608);
  sub_22C36985C();
  MEMORY[0x28223BE20](v24);
  sub_22C369ABC();
  v177 = (v25 - v26);
  MEMORY[0x28223BE20](v27);
  v178 = &v157 - v28;
  v29 = sub_22C90906C();
  sub_22C369824();
  v161 = v30;
  MEMORY[0x28223BE20](v31);
  sub_22C369ABC();
  v160 = v32 - v33;
  MEMORY[0x28223BE20](v34);
  v36 = sub_22C3698F8(&v157 - v35);
  v37 = type metadata accessor for DirectionalTypedValue(v36);
  sub_22C36985C();
  MEMORY[0x28223BE20](v38);
  sub_22C369ABC();
  v41 = v39 - v40;
  v43 = MEMORY[0x28223BE20](v42);
  v45 = (&v157 - v44);
  v46 = MEMORY[0x28223BE20](v43);
  v175 = &v157 - v47;
  v48 = MEMORY[0x28223BE20](v46);
  v50 = (&v157 - v49);
  MEMORY[0x28223BE20](v48);
  v52 = &v157 - v51;
  v159 = a1;
  sub_22C56C20C(a1, &v157 - v51);
  v176 = v37;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v187 = v9;
  v182 = v7;
  if (EnumCaseMultiPayload == 1)
  {
    sub_22C56C20C(v52, v45);
    v54 = sub_22C38A990();
    v56 = v55(v54);
    if (v56 == *MEMORY[0x277D72A38])
    {
      v57 = sub_22C38A990();
      v58(v57);
      v187 = *v45;
      swift_projectBox();
      v59 = sub_22C371958();
      v60(v59);
      sub_22C378A4C((v184 + 7), &v188);
      sub_22C36BEFC();
LABEL_7:
      v68 = sub_22C377EB4();
      v69(v68);
      sub_22C56C5B0();
      v70(v9);
LABEL_8:
      v45[1](v50, a1);
      (*(v7 + 8))(v9, v29);
      sub_22C36FF94(&v188);
LABEL_9:

LABEL_10:
      sub_22C56BE84(v52);
      return;
    }

    v71 = v187;
    if (v56 == *MEMORY[0x277D729E0])
    {
      v72 = sub_22C38A990();
      v73(v72);
      v158.n128_u64[0] = *v45;
      swift_projectBox();
      sub_22C3774AC();
      v74(v160);
      v75 = sub_22C90905C();
      v76 = *(v75 + 16);
      if (!v76)
      {

        v77 = MEMORY[0x277D84F90];
        sub_22C56C5B0();
LABEL_36:
        sub_22C47FA7C(v77, v145);

        sub_22C36FB04();
        v155(v160, v29);
        goto LABEL_9;
      }

      sub_22C37F300();
      v190 = MEMORY[0x277D84F90];
      sub_22C3B68D4(0, v76, 0);
      v29 = 0;
      v77 = v190;
      v173 = *(v75 + 16);
      v170 = v75 + ((*(v71 + 80) + 32) & ~*(v71 + 80));
      v169 = v71 + 16;
      sub_22C37075C(v71 + 32);
      v167 = v78;
      LODWORD(v166) = *MEMORY[0x277D1D7E8];
      v165 = (v79 + 104);
      v164 = v79 + 8;
      LODWORD(v163) = *MEMORY[0x277D1D7D0];
      v172 = v75;
      v171 = v76;
      v52 = v177;
      while (v173)
      {
        if (!*(v75 + 16))
        {
          goto LABEL_41;
        }

        v80 = v179;
        v81 = *(v179 + 48);
        *&v174 = v77;
        v82 = *(v71 + 16);
        v82(&v178[v81], v170, v7);
        v83 = sub_22C38721C();
        v84(v83);
        v85 = v175;
        v82(v175, &v52[v80], v7);
        swift_storeEnumTagMultiPayload();
        sub_22C3A5908(&qword_27D9BC208, &unk_22C912400);
        v86 = swift_allocBox();
        sub_22C36BA4C();
        v89 = sub_22C3830F4(v87, v88);
        v90(v89);
        sub_22C36D6EC();
        v91 = swift_allocObject();
        sub_22C38901C(v91);
        v92 = *v165;
        sub_22C36D894();
        v92();
        v93 = v180;
        *v180 = v86;
        sub_22C36D894();
        v92();
        sub_22C56AEAC(v85, v183 & 1, v185, v93, &v188);
        v77 = v174;
        sub_22C36BA4C();
        v94(v93, v7);
        sub_22C56BE84(v85);
        sub_22C36DD28(v52, &qword_27D9BDCF0, qword_22C91B608);
        v95 = v188;
        v96 = v189;
        v190 = v77;
        v98 = *(v77 + 16);
        v97 = *(v77 + 24);
        if (v98 >= v97 >> 1)
        {
          v99 = sub_22C369AB0(v97);
          v174 = v100;
          v157 = v101;
          sub_22C3B68D4(v99, v98 + 1, 1);
          v96 = v157;
          v95 = v174;
          v77 = v190;
        }

        *(v77 + 16) = v98 + 1;
        sub_22C376758((v77 + 48 * v98), v95, v96);
        v7 = v182;
        v71 = v187;
        v75 = v172;
        if (!v171)
        {

          sub_22C56C5B0();
          sub_22C56C5BC();
          goto LABEL_36;
        }
      }

      __break(1u);
      goto LABEL_40;
    }

    if (v56 == *MEMORY[0x277D729F8])
    {
      v50 = (v187 + 96);
      v134 = sub_22C38A990();
      v135(v134);
      v187 = *v45;
      swift_projectBox();
      v136 = sub_22C38BAD8();
      v137(v136);
      sub_22C378A4C((v184 + 12), &v188);
      sub_22C36BEFC();
LABEL_33:
      v142 = sub_22C377EB4();
      v143(v142);
      sub_22C56C5B0();
      v144(v9, v50, v185, v186, v9 + 88, v5);
      goto LABEL_8;
    }

LABEL_34:
    v147 = v187;
    v182 = *(v187 + 8);
    v148 = sub_22C36BE34();
    v149(v148);
    sub_22C378A4C((v184 + 2), &v188);
    v184 = sub_22C374168(&v188, v189.n128_i64[1]);
    sub_22C56C20C(v159, v41);
    v150 = v165;
    (*(v147 + 32))(v165, v41, v7);
    v151 = v173;
    v152 = v172;
    v153 = v174;
    (*(v173 + 104))(v172, *MEMORY[0x277D72E08], v174);
    sub_22C56C5B0();
    v154(v150);
    (*(v151 + 8))(v152, v153);
    v182(v150, v7);
    sub_22C36FF94(&v188);
    goto LABEL_10;
  }

  sub_22C56C20C(v52, v50);
  v61 = sub_22C36BE34();
  v63 = v62(v61);
  if (v63 == *MEMORY[0x277D72A38])
  {
    v64 = sub_22C36BE34();
    v65(v64);
    v187 = *v50;
    swift_projectBox();
    v66 = sub_22C371958();
    v67(v66);
    sub_22C378A4C((v184 + 7), &v188);
    sub_22C36BEFC();
    goto LABEL_7;
  }

  if (v63 != *MEMORY[0x277D729E0])
  {
    if (v63 == *MEMORY[0x277D729F8])
    {
      v138 = sub_22C36BE34();
      v139(v138);
      v187 = *v50;
      swift_projectBox();
      v140 = sub_22C38BAD8();
      v141(v140);
      sub_22C378A4C((v184 + 12), &v188);
      sub_22C36BEFC();
      goto LABEL_33;
    }

    goto LABEL_34;
  }

  v102 = v187;
  v103 = sub_22C36BE34();
  v104(v103);
  v105 = *v50;
  swift_projectBox();
  sub_22C3774AC();
  v106(v163);
  v107 = sub_22C90905C();
  if (!*(v107 + 16))
  {

    v109 = MEMORY[0x277D84F90];
    sub_22C56C5B0();
LABEL_38:
    sub_22C47FA7C(v109, v146);

    sub_22C36FB04();
    v156(v163, v29);
    goto LABEL_9;
  }

  v160 = v105;
  sub_22C37F300();
  v190 = MEMORY[0x277D84F90];
  v172 = v108;
  sub_22C3B68D4(0, v108, 0);
  v29 = 0;
  v109 = v190;
  *&v174 = *(v107 + 16);
  v171 = v107 + ((*(v102 + 80) + 32) & ~*(v102 + 80));
  v170 = v102 + 16;
  sub_22C37075C(v102 + 32);
  v168 = v110;
  LODWORD(v167) = *MEMORY[0x277D1D7E8];
  v166 = (v111 + 104);
  v165 = (v111 + 8);
  LODWORD(v164) = *MEMORY[0x277D1D7D0];
  v112 = v102;
  v173 = v107;
  v52 = v177;
  while (v174)
  {
    if (!*(v107 + 16))
    {
      goto LABEL_42;
    }

    v113 = v179;
    v114 = *(v112 + 16);
    v114(&v178[*(v179 + 48)], v171, v7);
    v115 = sub_22C38721C();
    v116(v115);
    v117 = v175;
    v114(v175, &v52[v113], v7);
    swift_storeEnumTagMultiPayload();
    sub_22C3A5908(&qword_27D9BC208, &unk_22C912400);
    v118 = swift_allocBox();
    sub_22C36BA4C();
    v121 = sub_22C3830F4(v119, v120);
    v122(v121);
    sub_22C36D6EC();
    v123 = swift_allocObject();
    sub_22C38901C(v123);
    v124 = *v166;
    sub_22C36D894();
    v124();
    v125 = v180;
    *v180 = v118;
    sub_22C36D894();
    v124();
    sub_22C56AEAC(v117, v183 & 1, v185, v125, &v188);
    sub_22C36BA4C();
    v126(v125, v7);
    sub_22C56BE84(v117);
    sub_22C36DD28(v52, &qword_27D9BDCF0, qword_22C91B608);
    v127 = v188;
    v128 = v189;
    v190 = v109;
    v130 = *(v109 + 16);
    v129 = *(v109 + 24);
    if (v130 >= v129 >> 1)
    {
      v131 = sub_22C369AB0(v129);
      v158 = v132;
      v157 = v133;
      sub_22C3B68D4(v131, v130 + 1, 1);
      v128 = v157;
      v127 = v158;
      v109 = v190;
    }

    *(v109 + 16) = v130 + 1;
    sub_22C376758((v109 + 48 * v130), v127, v128);
    v7 = v182;
    v112 = v187;
    v107 = v173;
    if (!v172)
    {

      sub_22C56C5B0();
      sub_22C56C5BC();
      goto LABEL_38;
    }
  }

LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
}

uint64_t sub_22C56BE84(uint64_t a1)
{
  v2 = type metadata accessor for DirectionalTypedValue(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22C56BEE0(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_22C56C1F4();
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = sub_22C51B424(v6);
  *a1 = v2;
  return result;
}

uint64_t sub_22C56BF4C(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_22C56BFD8();
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v5 - 1 - a1;
    v8 = v3 + 16 * a1;
    v9 = *(v8 + 32);
    memmove((v8 + 32), (v8 + 48), 16 * v7);
    *(v3 + 16) = v6;
    *v1 = v3;
    return v9;
  }

  return result;
}

char *sub_22C56BFF0(char *__src, uint64_t a2, char *__dst)
{
  if (__dst != __src || &__src[16 * a2] <= __dst)
  {
    return memmove(__dst, __src, 16 * a2);
  }

  return __src;
}

char *sub_22C56C01C(char *result, int64_t a2, char a3, char *a4)
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
    sub_22C3A5908(&qword_27D9BDCE8, &qword_22C91B600);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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

uint64_t sub_22C56C20C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DirectionalTypedValue(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22C56C5D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_22C902D3C();
  MEMORY[0x28223BE20](v4 - 8);
  sub_22C369838();
  v31 = sub_22C90888C();
  sub_22C369824();
  v29 = v5;
  MEMORY[0x28223BE20](v6);
  sub_22C369838();
  v9 = v8 - v7;
  v30 = sub_22C9088CC();
  sub_22C369824();
  v28 = v10;
  MEMORY[0x28223BE20](v11);
  sub_22C369838();
  v14 = v13 - v12;
  v15 = *v2;
  result = *v2 + 32;
  v17 = -*(*v2 + 16);
  v18 = -1;
  while (1)
  {
    if (v17 + v18 == -1)
    {
      v27 = sub_22C9089DC();
      v25 = a2;
      v26 = 1;
      return sub_22C36C640(v25, v26, 1, v27);
    }

    if (++v18 >= *(v15 + 16))
    {
      break;
    }

    v19 = result + 40;
    sub_22C378A4C(result, v33);
    v20 = v34;
    v21 = v35;
    sub_22C374168(v33, v34);
    v22 = (*(v21 + 8))(a1, v20, v21);
    sub_22C36FF94(v33);
    result = v19;
    if (v22)
    {
      (*(v29 + 104))(v9, *MEMORY[0x277D1E6C0], v31);
      sub_22C9088AC();
      sub_22C90889C();
      (*(v28 + 32))(a2, v14, v30);
      v23 = *MEMORY[0x277D1E6F8];
      v24 = sub_22C9089DC();
      (*(*(v24 - 8) + 104))(a2, v23, v24);
      v25 = a2;
      v26 = 0;
      v27 = v24;
      return sub_22C36C640(v25, v26, 1, v27);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22C56C8C4(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for RenderingState(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_22C56C964(uint64_t result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(*(v4 - 8) + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
LABEL_26:
    if (v5 < 0x7FFFFFFF)
    {
      v16 = *(((result + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
      if (v16 >= 0xFFFFFFFF)
      {
        LODWORD(v16) = -1;
      }

      return (v16 + 1);
    }

    else
    {
      return sub_22C370B74(result, v5, v4);
    }
  }

  else
  {
    v8 = ((((((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 63) & 0xFFFFFFFFFFFFFFF8) + 8;
    v9 = a2 - v7;
    v10 = v8 & 0xFFFFFFF8;
    if ((v8 & 0xFFFFFFF8) != 0)
    {
      v11 = 2;
    }

    else
    {
      v11 = v9 + 1;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    switch(v13)
    {
      case 1:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 2:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

LABEL_22:
        v15 = v14 - 1;
        if (v10)
        {
          v15 = 0;
          LODWORD(v10) = *result;
        }

        result = v7 + (v10 | v15) + 1;
        break;
      default:
        goto LABEL_26;
    }
  }

  return result;
}

void sub_22C56CAB0(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(*(v6 - 8) + 84);
  }

  v9 = *(*(v6 - 8) + 64);
  v10 = ((((((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 63) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v8 >= a3)
  {
    v14 = 0;
  }

  else
  {
    v11 = a3 - v8;
    if (((((((v9 + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 63) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v12 = v11 + 1;
    }

    else
    {
      v12 = 2;
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
  }

  if (a2 <= v8)
  {
    switch(v14)
    {
      case 1:
        a1[v10] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 2:
        *&a1[v10] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 3:
LABEL_42:
        __break(1u);
        break;
      case 4:
        *&a1[v10] = 0;
        goto LABEL_31;
      default:
LABEL_31:
        if (a2)
        {
LABEL_32:
          if (v7 < 0x7FFFFFFF)
          {
            v17 = (&a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8);
            if ((a2 & 0x80000000) != 0)
            {
              *v17 = a2 & 0x7FFFFFFF;
              v17[1] = 0;
            }

            else
            {
              v17[1] = (a2 - 1);
            }
          }

          else
          {

            sub_22C36C640(a1, a2, v7, v6);
          }
        }

        break;
    }
  }

  else
  {
    if (((((((v9 + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 63) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v15 = a2 - v8;
    }

    else
    {
      v15 = 1;
    }

    if (((((((v9 + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 63) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v16 = ~v8 + a2;
      bzero(a1, ((((((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 63) & 0xFFFFFFFFFFFFFFF8) + 8);
      *a1 = v16;
    }

    switch(v14)
    {
      case 1:
        a1[v10] = v15;
        break;
      case 2:
        *&a1[v10] = v15;
        break;
      case 3:
        goto LABEL_42;
      case 4:
        *&a1[v10] = v15;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_22C56CCB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_22C56CCEC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 88))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 32);
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

uint64_t sub_22C56CD2C(uint64_t result, int a2, int a3)
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
      *(result + 32) = (a2 - 1);
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

_BYTE *storeEnumTagSinglePayload for PlannerPromptGenerationComponent(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_22C56CE78()
{
  result = qword_27D9BDD88;
  if (!qword_27D9BDD88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BDD88);
  }

  return result;
}

__n128 sub_22C56CECC@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  (*(*(a6 - 8) + 32))(a7, a1, a6);
  v15 = type metadata accessor for PlannerPromptGeneratorOutput(0, a6, v13, v14);
  v16 = (a7 + v15[7]);
  *v16 = a2;
  v16[1] = a3;
  v17 = a7 + v15[8];
  v18 = *(a4 + 16);
  *v17 = *a4;
  *(v17 + 16) = v18;
  result = *(a4 + 32);
  *(v17 + 32) = result;
  *(v17 + 48) = *(a4 + 48);
  *(a7 + v15[9]) = a5;
  return result;
}

uint64_t sub_22C56CF84()
{
  sub_22C369980();
  v3 = v2;
  v1[59] = v4;
  v1[60] = v0;
  v1[57] = v5;
  v1[58] = v6;
  v1[61] = sub_22C9063DC();
  sub_22C369B5C();
  v1[62] = v7;
  v1[63] = swift_task_alloc();
  v1[64] = swift_task_alloc();
  v1[65] = sub_22C90363C();
  sub_22C369B5C();
  v1[66] = v8;
  v1[67] = swift_task_alloc();
  v1[68] = *(v3 + 16);
  v1[69] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22C56D0D4, 0, 0);
}

uint64_t sub_22C56D0D4()
{
  v1 = v0[60];
  v2 = v1[4];
  v3 = v1[5];
  sub_22C374168(v1 + 1, v2);
  sub_22C369B5C();
  v8 = (v4 + *v4);
  v5 = swift_task_alloc();
  v0[70] = v5;
  *v5 = v0;
  v5[1] = sub_22C56D204;
  v6 = v0[58];

  return (v8)(v0 + 2, v6, v2, v3);
}

uint64_t sub_22C56D204()
{
  sub_22C369980();
  v2 = *v1;
  sub_22C369970();
  *v3 = v2;
  *(v4 + 568) = v0;

  if (v0)
  {
    v5 = sub_22C56D75C;
  }

  else
  {
    v5 = sub_22C56D30C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_22C56D30C()
{
  v53 = v0;
  v1 = v0[67];
  v2 = v0[66];
  v3 = v0[65];
  v4 = v0[60];
  memcpy(v0 + 14, v0 + 2, 0x60uLL);
  v5 = v4[9];
  v6 = v4[10];
  sub_22C374168(v4 + 6, v5);
  memcpy(__dst, v0 + 14, sizeof(__dst));
  (*(v6 + 16))(__dst, v5, v6);
  v8 = v0[14];
  v7 = v0[15];
  v9 = sub_22C573484(v8, v7, v0[16]);
  v10 = sub_22C5736FC(v8, v7, v9);
  v12 = v11;

  v13 = v0[24];
  __dst[0] = v13;
  PromptGrammar.redactedDescription.getter();
  v49 = v12;
  v50 = v10;
  sub_22C59BB68();

  (*(v2 + 104))(v1, *MEMORY[0x277D1EC40], v3);
  LOBYTE(v8) = sub_22C90362C();
  (*(v2 + 8))(v1, v3);
  if (v8)
  {
    sub_22C903F7C();
    sub_22C56DEC4((v0 + 14), (v0 + 38));
    v14 = sub_22C9063CC();
    v15 = sub_22C90AABC();
    sub_22C56DF20((v0 + 14));
    v16 = os_log_type_enabled(v14, v15);
    v17 = v0[64];
    v19 = v0[61];
    v18 = v0[62];
    if (v16)
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v52 = v21;
      sub_22C377EE4(4.8149e-34);
      PromptGrammar.description.getter();
      if (v23)
      {
        v24 = v23;
      }

      else
      {
        v22 = 7104878;
        v24 = 0xE300000000000000;
      }

      v25 = sub_22C36F9F4(v22, v24, &v52);

      *(v20 + 4) = v25;
      sub_22C371988(&dword_22C366000, v26, v27, "Grammar:\n%s");
      sub_22C36FF94(v21);
      v28 = v21;
LABEL_12:
      MEMORY[0x2318B9880](v28, -1, -1);
      MEMORY[0x2318B9880](v20, -1, -1);

      (*(v18 + 8))(v13, v19);
      goto LABEL_14;
    }
  }

  else
  {
    sub_22C903F7C();
    sub_22C56DEC4((v0 + 14), (v0 + 26));
    v14 = sub_22C9063CC();
    v29 = sub_22C90AABC();
    sub_22C56DF20((v0 + 14));
    v30 = os_log_type_enabled(v14, v29);
    v18 = v0[62];
    v17 = v0[63];
    v19 = v0[61];
    if (v30)
    {
      v20 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v52 = v31;
      sub_22C377EE4(4.845e-34);
      v32 = PromptGrammar.redactedDescription.getter();
      if (v33)
      {
        v34 = v33;
      }

      else
      {
        v32 = 7104878;
        v34 = 0xE300000000000000;
      }

      v35 = sub_22C36F9F4(v32, v34, &v52);

      *(v20 + 4) = v35;
      sub_22C371988(&dword_22C366000, v36, v37, "Grammar:\n%{private}s");
      sub_22C36FF94(v31);
      v28 = v31;
      goto LABEL_12;
    }
  }

  (*(v18 + 8))(v17, v19);
LABEL_14:
  v38 = v0[69];
  v39 = v0[68];
  v40 = v0[57];
  v41 = v0[18];
  v42 = v0[19];
  v43 = v0[20];
  v45 = v0[21];
  v44 = v0[22];
  v46 = v0[23];
  v0[50] = v0[17];
  v0[51] = v41;
  v0[52] = v42;
  v0[53] = v43;
  v0[54] = v45;
  v0[55] = v44;
  v0[56] = v46;
  sub_22C56CECC(v38, v50, v49, (v0 + 50), v0[25], v39, v40);

  sub_22C56DF20((v0 + 14));

  sub_22C369A24();

  return v47();
}

uint64_t sub_22C56D75C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{

  sub_22C369A24();

  return v8();
}

uint64_t sub_22C56D7E4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22C422A58;

  return sub_22C56CF84();
}

id sub_22C56D8A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_22C90077C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);

  v8 = sub_22C9007FC();
  v10 = v9;
  if (qword_27D9BA6D0 != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&dword_27D9BDCF8);
  v11 = off_27D9BDD00;
  v12 = *(off_27D9BDD00 + 2);
  v22 = v8;
  if (v12 && (v13 = sub_22C628700(a1, a2, v8, v10), (v14 & 1) != 0))
  {
    v15 = *(v11[7] + 8 * v13);
    v16 = v15;
  }

  else
  {
    v15 = 0;
  }

  os_unfair_lock_unlock(&dword_27D9BDCF8);
  if (v15)
  {
  }

  else
  {
    v17 = objc_allocWithZone(MEMORY[0x277CCA968]);
    v18 = [v17 init];
    sub_22C56DDD4(a1, a2, v18);
    v19 = sub_22C90081C();
    [v18 setTimeZone_];

    sub_22C9006AC();
    v20 = sub_22C90071C();
    (*(v5 + 8))(v7, v4);
    [v18 setLocale_];

    os_unfair_lock_lock(&dword_27D9BDCF8);
    v15 = v18;
    swift_isUniquelyReferenced_nonNull_native();
    v23 = off_27D9BDD00;
    sub_22C62C51C();
    off_27D9BDD00 = v23;

    os_unfair_lock_unlock(&dword_27D9BDCF8);
  }

  return v15;
}

id sub_22C56DB3C()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CCA958]) init];
  result = [v0 setUnitsStyle_];
  qword_27D9E3FC0 = v0;
  return result;
}

void *sub_22C56DB8C()
{
  sub_22C56DE2C();
  sub_22C56DE70();
  result = sub_22C909F0C();
  dword_27D9BDCF8 = 0;
  off_27D9BDD00 = result;
  return result;
}

uint64_t sub_22C56DBE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = a1 == a5 && a2 == a6;
  if (v12 || (v13 = sub_22C90B4FC(), result = 0, (v13 & 1) != 0))
  {
    if (a3 == a7 && a4 == a8)
    {
      return 1;
    }

    else
    {

      return sub_22C90B4FC();
    }
  }

  return result;
}

uint64_t sub_22C56DC84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_22C909FFC();

  return sub_22C909FFC();
}

uint64_t sub_22C56DCD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_22C90B62C();
  sub_22C909FFC();
  sub_22C909FFC();
  return sub_22C90B66C();
}

uint64_t sub_22C56DD5C(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  v5 = v1[2];
  v4 = v1[3];
  sub_22C90B62C();
  sub_22C56DC84(v7, v2, v3, v5, v4);
  return sub_22C90B66C();
}

void sub_22C56DDD4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_22C90A0EC();
  [a3 setDateFormat_];
}

unint64_t sub_22C56DE2C()
{
  result = qword_27D9BDD90;
  if (!qword_27D9BDD90)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D9BDD90);
  }

  return result;
}

unint64_t sub_22C56DE70()
{
  result = qword_27D9BDD98;
  if (!qword_27D9BDD98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BDD98);
  }

  return result;
}

unint64_t sub_22C56DF98()
{
  result = qword_27D9BDDA0;
  if (!qword_27D9BDDA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BDDA0);
  }

  return result;
}

void PromptGrammar.description.getter()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  if (v2)
  {
    v3 = 0;
    v4 = (v1 + 56);
    v5 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v2 == v3)
      {
        v17[0] = v5;
        sub_22C3A5908(&qword_27D9BB5D0, &unk_22C9112A0);
        sub_22C3F035C();
        sub_22C90A04C();

        return;
      }

      if (v3 >= *(v1 + 16))
      {
        break;
      }

      v6 = *(v4 - 3);
      v7 = *(v4 - 2);
      v8 = *(v4 - 1);
      v9 = *v4;
      if ((v8 & 0x2000000000000000) != 0)
      {
        v17[0] = *(v4 - 3);
        v17[1] = v7;
        v17[2] = v8 & 0xDFFFFFFFFFFFFFFFLL;
        v17[3] = v9;
        BNFGrammarRenderer.renderGrammar(grammar:)(v17);
        v6 = v10;
        v7 = v11;
      }

      else
      {
        sub_22C472434(*(v4 - 3), *(v4 - 2), v8);
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_22C590270(0, *(v5 + 16) + 1, 1, v5);
        v5 = v15;
      }

      v13 = *(v5 + 16);
      v12 = *(v5 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_22C590270(v12 > 1, v13 + 1, 1, v5);
        v5 = v16;
      }

      *(v5 + 16) = v13 + 1;
      v14 = v5 + 16 * v13;
      *(v14 + 32) = v6;
      *(v14 + 40) = v7;
      v4 += 5;
      ++v3;
    }

    __break(1u);
  }
}

__n128 PromptGrammar.GrammarPiece.init(_:sensitivity:)@<Q0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  result = *a1;
  v5 = *(a1 + 16);
  *a3 = *a1;
  *(a3 + 16) = v5;
  *(a3 + 32) = v3;
  return result;
}

void static PromptGrammar.+ infix(_:_:)(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;

  sub_22C3CC9E4(v3);
  *a2 = v4;
}

uint64_t static PromptGrammarGenerationMode.configuration(from:)@<X0>(char *a1@<X8>)
{
  v2 = sub_22C9063DC();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = v23 - v7;
  type metadata accessor for FullPlannerPreferences(0);
  sub_22C3A5908(&qword_27D9BB8A8, &unk_22C918750);
  sub_22C901EDC();
  v10 = v23[0];
  v9 = v23[1];

  v11 = sub_22C90B21C();

  if (v11 == 2)
  {

    v12 = 2;
  }

  else
  {
    if (v11 == 1)
    {

      v12 = 1;
    }

    else
    {
      if (v11)
      {
        sub_22C903F7C();

        v18 = sub_22C9063CC();
        v19 = sub_22C90AADC();

        if (os_log_type_enabled(v18, v19))
        {
          v20 = swift_slowAlloc();
          v21 = swift_slowAlloc();
          v23[0] = v21;
          *v20 = 136315394;
          v22 = sub_22C36F9F4(v10, v9, v23);

          *(v20 + 4) = v22;
          *(v20 + 12) = 2080;
          *(v20 + 14) = sub_22C36F9F4(0x696C43796C6C7566, 0xEB00000000746E65, v23);
          _os_log_impl(&dword_22C366000, v18, v19, "Unexpected grammar generation mode case '%s'. Defaulting to '%s'.", v20, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x2318B9880](v21, -1, -1);
          MEMORY[0x2318B9880](v20, -1, -1);
        }

        else
        {
        }

        result = (*(v3 + 8))(v6, v2);
        v12 = 0;
        goto LABEL_16;
      }

      v12 = 0;
    }

    v13 = sub_22C90B4FC();

    if ((v13 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  sub_22C903F7C();
  v15 = sub_22C9063CC();
  v16 = sub_22C90AACC();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_22C366000, v15, v16, "Server generation configuration specified. This mode should not be used by clients communicating via GMS.", v17, 2u);
    MEMORY[0x2318B9880](v17, -1, -1);
  }

  result = (*(v3 + 8))(v8, v2);
LABEL_16:
  *a1 = v12;
  return result;
}

unint64_t PromptGrammarGenerationMode.rawValue.getter()
{
  v1 = 0xD000000000000012;
  if (*v0 != 1)
  {
    v1 = 0x6553646972627968;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x696C43796C6C7566;
  }
}

uint64_t PromptGrammar.redactedDescription.getter()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v18 = MEMORY[0x277D84F90];
    sub_22C3B6E10(0, v2, 0);
    v3 = v18;
    v4 = (v1 + 64);
    sub_22C377EF8();
    v5 = 40;
    do
    {
      v6 = *v4;
      if (*v4)
      {
        v7 = 0;
        v8 = 0;
        v9 = 0xEA00000000003E44;
        v10 = &v18;
      }

      else
      {
        v7 = *(v4 - 2);
        v11 = *(v4 - 1);
        v10 = *(v4 - 4);
        v9 = *(v4 - 3);
        sub_22C472434(v10, v9, v7);
        v8 = v11;
        v5 = 40;
      }

      v18 = v3;
      v13 = *(v3 + 16);
      v12 = *(v3 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_22C3B6E10(v12 > 1, v13 + 1, 1);
        sub_22C377EF8();
        v3 = v18;
      }

      *(v3 + 16) = v13 + 1;
      v14 = v3 + v13 * v5;
      *(v14 + 32) = v10;
      *(v14 + 40) = v9;
      *(v14 + 48) = v7;
      *(v14 + 56) = v8;
      *(v14 + 64) = v6;
      v4 += 40;
      --v2;
    }

    while (v2);
  }

  v18 = v3;
  PromptGrammar.description.getter();
  v16 = v15;

  return v16;
}

BOOL static PromptGrammar.GrammarPieceContent.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v6 = *a2;
  v5 = a2[1];
  v7 = a2[2];
  if ((v4 & 0x2000000000000000) == 0)
  {
    if ((v7 & 0x2000000000000000) == 0)
    {
      v8 = *a1;
      if (v3 != v6 || v2 != v5)
      {
        v10 = sub_22C90B4FC();
        v11 = sub_22C373530();
        sub_22C472434(v11, v12, v13);
        v14 = sub_22C36ABA0();
        sub_22C472434(v14, v15, v16);
        v17 = sub_22C36ABA0();
        sub_22C472480(v17, v18, v19);
        v20 = sub_22C373530();
        sub_22C472480(v20, v21, v22);
        return v10 & 1;
      }

      sub_22C472434(v8, v2, v7);
      v63 = sub_22C36ABA0();
      sub_22C472434(v63, v64, v65);
      v66 = sub_22C36ABA0();
      sub_22C472480(v66, v67, v68);
      sub_22C472480(v3, v2, v7);
      return 1;
    }

    goto LABEL_9;
  }

  if ((v7 & 0x2000000000000000) == 0)
  {
LABEL_9:
    v24 = sub_22C373530();
    sub_22C472434(v24, v25, v26);
    v27 = sub_22C36ABA0();
    sub_22C472434(v27, v28, v29);
    v30 = sub_22C36ABA0();
    sub_22C472480(v30, v31, v32);
    v33 = sub_22C373530();
LABEL_10:
    sub_22C472480(v33, v34, v35);
    return 0;
  }

  v79[0] = *a1;
  v79[1] = v2;
  v79[2] = v4 & 0xDFFFFFFFFFFFFFFFLL;
  v78[0] = v6;
  v78[1] = v5;
  v78[2] = v7 & 0xDFFFFFFFFFFFFFFFLL;
  v36 = sub_22C373530();
  sub_22C472434(v36, v37, v38);
  v39 = sub_22C36ABA0();
  sub_22C472434(v39, v40, v41);
  v42 = sub_22C373530();
  sub_22C472434(v42, v43, v44);
  v45 = sub_22C36ABA0();
  sub_22C472434(v45, v46, v47);

  v48 = static BNFGrammarRule.== infix(_:_:)(v79, v78);

  if ((v48 & 1) == 0)
  {
    v69 = sub_22C36ABA0();
    sub_22C472480(v69, v70, v71);
    v72 = sub_22C373530();
    sub_22C472480(v72, v73, v74);
    v75 = sub_22C373530();
    sub_22C472480(v75, v76, v77);
    v33 = sub_22C36ABA0();
    goto LABEL_10;
  }

  sub_22C46D2C8();
  v50 = v49;
  v51 = sub_22C36ABA0();
  sub_22C472480(v51, v52, v53);
  v54 = sub_22C373530();
  sub_22C472480(v54, v55, v56);
  v57 = sub_22C373530();
  sub_22C472480(v57, v58, v59);
  v60 = sub_22C36ABA0();
  sub_22C472480(v60, v61, v62);
  return (v50 & 1) != 0;
}

uint64_t PromptGrammar.GrammarPiece.Sensitivity.hashValue.getter()
{
  v1 = *v0;
  sub_22C90B62C();
  MEMORY[0x2318B8B10](v1);
  return sub_22C90B66C();
}

uint64_t sub_22C56EA04(uint64_t a1)
{
  v2 = *v1;
  sub_22C90B62C();
  MEMORY[0x2318B8B10](v2);
  return sub_22C90B66C();
}

uint64_t static PromptGrammar.GrammarPiece.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v24 = *(a1 + 32);
  v5 = *a2;
  v6 = *(a2 + 8);
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  v9 = *(a2 + 32);
  v26[0] = *a1;
  v26[1] = v2;
  v26[2] = v3;
  v26[3] = v4;
  v25[0] = v5;
  v25[1] = v6;
  v25[2] = v7;
  v25[3] = v8;
  v10 = sub_22C371738();
  sub_22C472434(v10, v11, v12);
  v13 = sub_22C3759D0();
  sub_22C472434(v13, v14, v15);
  v16 = static PromptGrammar.GrammarPieceContent.== infix(_:_:)(v26, v25);
  v17 = sub_22C3759D0();
  sub_22C472480(v17, v18, v19);
  v20 = sub_22C371738();
  sub_22C472480(v20, v21, v22);
  return v16 & ~(v24 ^ v9) & 1;
}

uint64_t PromptGrammar.grammarPieces.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

IntelligenceFlowPlannerRuntime::PromptGrammarGenerationMode_optional __swiftcall PromptGrammarGenerationMode.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_22C90B21C();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t sub_22C56EBF0@<X0>(unint64_t *a1@<X8>)
{
  result = PromptGrammarGenerationMode.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_22C56EC1C()
{
  result = qword_27D9BDDA8;
  if (!qword_27D9BDDA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BDDA8);
  }

  return result;
}

unint64_t sub_22C56EC74()
{
  result = qword_27D9BDDB0;
  if (!qword_27D9BDDB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BDDB0);
  }

  return result;
}

uint64_t sub_22C56ECE0(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x1F && *(a1 + 32))
    {
      v2 = *a1 + 30;
    }

    else
    {
      v2 = (((*(a1 + 16) >> 57) >> 4) & 1 | (2 * ((*(a1 + 16) >> 57) & 8 | *(a1 + 16) & 7))) ^ 0x1F;
      if (v2 >= 0x1E)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t sub_22C56ED30(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x1E)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 31;
    *(result + 8) = 0;
    if (a3 >= 0x1F)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x1F)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 1) & 0xF | (16 * (-a2 & 0x1F));
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = (v3 | (v3 << 57)) & 0x3000000000000007;
      *(result + 24) = 0;
    }
  }

  return result;
}

uint64_t sub_22C56EDC4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 33))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 32);
      v4 = v3 >= 2;
      v2 = v3 - 2;
      if (!v4)
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

uint64_t sub_22C56EE00(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2 + 1;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PromptGrammar.GrammarPiece.Sensitivity(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for PromptGrammarGenerationMode(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}