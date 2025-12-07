uint64_t sub_22C80BFB4()
{
  v2 = *v1;
  sub_22C369A30();
  *v3 = v2;
  v4 = *v1;
  *v3 = *v1;
  *(v2 + 88) = v5;

  if (v0)
  {

    v6 = *(v4 + 8);

    return v6();
  }

  else
  {
    v8 = *(v2 + 32);

    return MEMORY[0x2822009F8](sub_22C80C108, v8, 0);
  }
}

uint64_t sub_22C80C108(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void (*a10)(uint64_t), void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22)
{
  sub_22C372634();
  a21 = v23;
  a22 = v24;
  a20 = v22;
  sub_22C90404C();

  v25 = sub_22C9063CC();
  v26 = sub_22C90AACC();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = v22[11];
    a10 = v22[9];
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    a11 = v29;
    *v28 = 136315138;
    v30 = sub_22C9039FC();
    v31 = MEMORY[0x2318B7AD0](v27, v30);
    v33 = sub_22C36F9F4(v31, v32, &a11);

    *(v28 + 4) = v33;
    _os_log_impl(&dword_22C366000, v25, v26, "Found Span Matches: %s", v28, 0xCu);
    sub_22C36FF94(v29);
    sub_22C3699EC();
    sub_22C3699EC();

    v34 = sub_22C36BAFC();
    a10(v34);
  }

  else
  {
    v35 = v22[9];

    v36 = sub_22C36BAFC();
    v35(v36);
  }

  sub_22C36D5F8();

  return v39(v37, v38, v39, v40, v41, v42, v43, v44, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_22C80C2B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_22C3A5908(&qword_27D9BEEA8, &qword_22C9214D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22C80C324(uint64_t a1)
{
  v2 = sub_22C3A5908(&qword_27D9BEEA8, &qword_22C9214D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t PlannerSpanMatchService.deinit()
{

  swift_defaultActor_destroy();
  return v0;
}

uint64_t dispatch thunk of PlannerSpanMatchService.handle(_:plannerServiceContext:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 104) + **(*v2 + 104));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_22C80C550;

  return v8(a1, a2);
}

uint64_t sub_22C80C550(uint64_t a1)
{
  v3 = *v1;
  sub_22C369A30();
  *v4 = v3;

  v5 = *(v3 + 8);

  return v5(a1);
}

_BYTE *storeEnumTagSinglePayload for QueryDecorationPostProcessing(_BYTE *result, int a2, int a3)
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

uint64_t sub_22C80C6F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v74 = a2;
  v75 = a3;
  v72 = sub_22C3A5908(&qword_27D9BC928, &qword_22C927720);
  sub_22C36985C();
  MEMORY[0x28223BE20](v5);
  v73 = v67 - v6;
  v81 = sub_22C90941C();
  sub_22C369824();
  v79 = v7;
  MEMORY[0x28223BE20](v8);
  sub_22C3698E4();
  v67[1] = v9;
  sub_22C369930();
  MEMORY[0x28223BE20](v10);
  v78 = v67 - v11;
  v12 = sub_22C90981C();
  sub_22C369824();
  v14 = v13;
  MEMORY[0x28223BE20](v15);
  sub_22C3698E4();
  v80 = v16;
  sub_22C369930();
  MEMORY[0x28223BE20](v17);
  v69 = v67 - v18;
  sub_22C369930();
  MEMORY[0x28223BE20](v19);
  v21 = v67 - v20;
  v82 = sub_22C9063DC();
  sub_22C369824();
  v84 = v22;
  MEMORY[0x28223BE20](v23);
  sub_22C3698E4();
  v77 = v24;
  sub_22C369930();
  MEMORY[0x28223BE20](v25);
  v27 = v67 - v26;
  sub_22C90400C();
  v83 = v14;
  v28 = *(v14 + 16);
  v85 = a1;
  v28(v21, a1, v12);
  v29 = sub_22C9063CC();
  v68 = sub_22C90AACC();
  v30 = os_log_type_enabled(v29, v68);
  v76 = v12;
  v70 = v28;
  v71 = v14 + 16;
  if (v30)
  {
    swift_slowAlloc();
    v67[0] = sub_22C38C154();
    v86 = v67[0];
    *v3 = 136315394;
    *(v3 + 4) = sub_22C372E3C("spanMatchServiceProvider");
    *(v3 + 12) = 2080;
    v28(v69, v21, v12);
    v31 = sub_22C90A1AC();
    v33 = v32;
    v34 = sub_22C378868();
    v35(v34);
    v36 = sub_22C36F9F4(v31, v33, &v86);

    *(v3 + 14) = v36;
    _os_log_impl(&dword_22C366000, v29, v68, "%s Processing parameter: %s", v3, 0x16u);
    v37 = v67[0];
    swift_arrayDestroy();
    MEMORY[0x2318B9880](v37, -1, -1);
    sub_22C36C4C8();
  }

  else
  {

    v38 = sub_22C378868();
    v39(v38);
  }

  v40 = *(v84 + 8);
  v41 = v82;
  v42 = v40(v27, v82);
  v43 = v78;
  MEMORY[0x2318B6CE0](v42);
  v44 = v79;
  v45 = v81;
  v46 = (*(v79 + 88))(v43, v81);
  v47 = v80;
  if (v46 == *MEMORY[0x277D72AB8])
  {
    (*(v44 + 96))(v43, v45);
    v48 = swift_projectBox();
    v49 = v73;
    sub_22C4802FC(v48, v73);
    sub_22C90952C();
    sub_22C36985C();
    (*(v50 + 8))(v49);

    MEMORY[0x28223BE20](v51);
    v52 = v74;
    v67[-2] = v85;
    v67[-1] = v52;
    sub_22C794FBC();
    v54 = v53;

    if (v3)
    {
      return result;
    }
  }

  else
  {
    (*(v44 + 8))(v43, v45);
    v56 = v77;
    sub_22C90400C();
    v57 = v76;
    v70(v47, v85, v76);
    v58 = sub_22C9063CC();
    v59 = sub_22C90AACC();
    if (os_log_type_enabled(v58, v59))
    {
      swift_slowAlloc();
      v60 = sub_22C38C154();
      v86 = v60;
      *v3 = 136315394;
      *(v3 + 4) = sub_22C372E3C("spanMatchServiceProvider");
      *(v3 + 12) = 2080;
      MEMORY[0x2318B6CE0]();
      v61 = sub_22C90A1AC();
      v63 = v62;
      (v69)(v47, v76);
      v64 = sub_22C36F9F4(v61, v63, &v86);

      *(v3 + 14) = v64;
      _os_log_impl(&dword_22C366000, v58, v59, "%s Skip non .restricted parameter: %s", v3, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2318B9880](v60, -1, -1);
      sub_22C36C4C8();

      v65 = v77;
      v66 = v82;
    }

    else
    {

      (v69)(v47, v57);
      v65 = v56;
      v66 = v41;
    }

    result = v40(v65, v66);
    v54 = MEMORY[0x277D84F90];
  }

  *v75 = v54;
  return result;
}

uint64_t sub_22C80CDB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v121 = a3;
  v119 = a2;
  v133 = a4;
  v5 = sub_22C3A5908(&qword_27D9C0428, &qword_22C927728);
  MEMORY[0x28223BE20](v5 - 8);
  v124 = &v100 - v6;
  v118 = sub_22C908EAC();
  v117 = *(v118 - 8);
  MEMORY[0x28223BE20](v118);
  v120 = &v100 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = sub_22C908ECC();
  v108 = *(v107 - 8);
  MEMORY[0x28223BE20](v107);
  v128 = &v100 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v130 = sub_22C90981C();
  v123 = *(v130 - 8);
  MEMORY[0x28223BE20](v130);
  v122 = &v100 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22C9063DC();
  v131 = *(v10 - 8);
  v132 = v10;
  v11 = MEMORY[0x28223BE20](v10);
  v137 = &v100 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v104 = &v100 - v14;
  MEMORY[0x28223BE20](v13);
  v103 = &v100 - v15;
  v16 = sub_22C3A5908(&qword_27D9C0430, &qword_22C927730);
  MEMORY[0x28223BE20](v16 - 8);
  v112 = &v100 - v17;
  v113 = sub_22C9093CC();
  v106 = *(v113 - 8);
  MEMORY[0x28223BE20](v113);
  v105 = &v100 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_22C3A5908(&qword_27D9C0438, &qword_22C927738);
  MEMORY[0x28223BE20](v19 - 8);
  v126 = &v100 - v20;
  v127 = sub_22C90953C();
  v111 = *(v127 - 8);
  MEMORY[0x28223BE20](v127);
  v110 = &v100 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = sub_22C909ADC();
  v115 = *(v116 - 8);
  v22 = MEMORY[0x28223BE20](v116);
  v129 = &v100 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v114 = &v100 - v24;
  v25 = sub_22C90969C();
  v26 = *(v25 - 8);
  v27 = MEMORY[0x28223BE20](v25);
  v109 = &v100 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x28223BE20](v27);
  v125 = (&v100 - v30);
  MEMORY[0x28223BE20](v29);
  v32 = &v100 - v31;
  v33 = sub_22C90957C();
  v135 = *(v33 - 8);
  v136 = v33;
  MEMORY[0x28223BE20](v33);
  v35 = &v100 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_22C90966C();
  v134 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v38 = &v100 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = *(v26 + 16);
  v39(v32, a1, v25);
  if ((*(v26 + 88))(v32, v25) == *MEMORY[0x277D72FA0])
  {
    (*(v26 + 96))(v32, v25);
    v40 = *(sub_22C3A5908(&qword_27D9BF208, &qword_22C927740) + 48);
    v42 = (v134 + 32);
    v41 = *(v134 + 32);
    v137 = v38;
    v125 = v41;
    v41(v38, v32, v36);
    v43 = v135;
    v44 = &v32[v40];
    v45 = v136;
    v135[4](v35, v44, v136);
    v46 = v126;
    sub_22C90956C();
    v47 = v127;
    v48 = sub_22C370B74(v46, 1, v127);
    v49 = v36;
    v102 = v35;
    if (v48 == 1)
    {
      sub_22C36DD28(v46, &qword_27D9C0438, &qword_22C927738);
      v50 = v112;
      sub_22C90955C();
      v51 = v113;
      if (sub_22C370B74(v50, 1, v113) == 1)
      {
        sub_22C36DD28(v50, &qword_27D9C0430, &qword_22C927730);
        v52 = v104;
        sub_22C90400C();
        v53 = sub_22C9063CC();
        v54 = sub_22C90AACC();
        if (os_log_type_enabled(v53, v54))
        {
          v55 = v43;
          v56 = swift_slowAlloc();
          v57 = swift_slowAlloc();
          v138 = v57;
          *v56 = 136315138;
          *(v56 + 4) = sub_22C36F9F4(0xD00000000000001FLL, 0x800000022C936110, &v138);
          _os_log_impl(&dword_22C366000, v53, v54, "%s Skip template w/o .valid or .all predicate", v56, 0xCu);
          sub_22C36FF94(v57);
          MEMORY[0x2318B9880](v57, -1, -1);
          MEMORY[0x2318B9880](v56, -1, -1);

          (*(v131 + 8))(v52, v132);
          (v55[1])(v102, v45);
        }

        else
        {

          (*(v131 + 8))(v52, v132);
          (v43[1])(v102, v45);
        }

        (*(v134 + 8))(v137, v49);
        DecorationDynamicEnumerationQuery = type metadata accessor for QueryDecorationDynamicEnumerationQuery(0);
        v92 = v133;
        v93 = 1;
        return sub_22C36C640(v92, v93, 1, DecorationDynamicEnumerationQuery);
      }

      v109 = v42;
      v82 = v106;
      v83 = v105;
      (*(v106 + 32))(v105, v50, v51);
      v84 = v103;
      sub_22C90400C();
      v85 = sub_22C9063CC();
      v86 = sub_22C90AACC();
      v87 = os_log_type_enabled(v85, v86);
      v101 = v49;
      if (v87)
      {
        v88 = swift_slowAlloc();
        v89 = v84;
        v90 = swift_slowAlloc();
        v138 = v90;
        *v88 = 136315138;
        *(v88 + 4) = sub_22C36F9F4(0xD00000000000001FLL, 0x800000022C936110, &v138);
        _os_log_impl(&dword_22C366000, v85, v86, "%s Valid predicate was nil. Falling back to .all predicate", v88, 0xCu);
        sub_22C36FF94(v90);
        MEMORY[0x2318B9880](v90, -1, -1);
        MEMORY[0x2318B9880](v88, -1, -1);

        (*(v131 + 8))(v89, v132);
      }

      else
      {

        (*(v131 + 8))(v84, v132);
      }

      v73 = v141;
      v139 = v51;
      v140 = sub_22C80DF74(&qword_27D9C0440, MEMORY[0x277D72AA8], MEMORY[0x277D72AA0]);
      v94 = sub_22C36D548(&v138);
      (*(v82 + 16))(v94, v83, v51);
      v72 = v114;
      sub_22C909ACC();
      (*(v82 + 8))(v83, v51);
      v76 = v122;
      v77 = v123;
      v78 = v116;
      v79 = v115;
      v75 = v129;
      v74 = v130;
    }

    else
    {
      v109 = v42;
      v101 = v36;
      v69 = v111;
      v70 = v110;
      (*(v111 + 32))(v110, v46, v47);
      v139 = v47;
      v140 = sub_22C80DF74(&qword_28142FA70, MEMORY[0x277D72D88], MEMORY[0x277D72D80]);
      v71 = sub_22C36D548(&v138);
      (*(v69 + 16))(v71, v70, v47);
      v72 = v114;
      sub_22C909ACC();
      (*(v69 + 8))(v70, v47);
      v73 = v141;
      v75 = v129;
      v74 = v130;
      v76 = v122;
      v77 = v123;
      v78 = v116;
      v79 = v115;
    }

    (*(v77 + 16))(v76, v119, v74);
    (*(v79 + 16))(v75, v72, v78);
    (*(v117 + 16))(v120, v121, v118);
    sub_22C3A5908(&qword_27D9C0448, &qword_22C927748);
    sub_22C909F0C();
    v95 = sub_22C908F7C();
    v96 = v79;
    sub_22C36C640(v124, 1, 1, v95);
    sub_22C908EBC();
    if (v73)
    {
      v97 = *(v79 + 8);
      v97(v129, v78);
      (*(v77 + 8))(v76, v130);
      v97(v72, v78);
      (v135[1])(v102, v136);
      return (*(v134 + 8))(v137, v101);
    }

    (*(v79 + 8))(v72, v78);
    (v135[1])(v102, v136);
    v98 = type metadata accessor for QueryDecorationDynamicEnumerationQuery(0);
    v99 = v133;
    v125(v133 + v98[7], v137, v101);
    (*(v77 + 32))(v99, v76, v130);
    (*(v96 + 32))(v99 + v98[5], v129, v78);
    (*(v108 + 32))(v99 + v98[6], v128, v107);
    v92 = v99;
    v93 = 0;
    DecorationDynamicEnumerationQuery = v98;
    return sub_22C36C640(v92, v93, 1, DecorationDynamicEnumerationQuery);
  }

  v58 = *(v26 + 8);
  (v58)(v32, v25);
  sub_22C90400C();
  v59 = v125;
  v39(v125, a1, v25);
  v60 = sub_22C9063CC();
  v61 = sub_22C90AACC();
  if (os_log_type_enabled(v60, v61))
  {
    v62 = swift_slowAlloc();
    v135 = v58;
    v63 = v62;
    v136 = swift_slowAlloc();
    v138 = v136;
    *v63 = 136315394;
    *(v63 + 4) = sub_22C36F9F4(0xD00000000000001FLL, 0x800000022C936110, &v138);
    *(v63 + 12) = 2080;
    LODWORD(v134) = v61;
    v39(v109, v59, v25);
    v64 = sub_22C90A1AC();
    v66 = v65;
    (v135)(v59, v25);
    v67 = sub_22C36F9F4(v64, v66, &v138);

    *(v63 + 14) = v67;
    _os_log_impl(&dword_22C366000, v60, v134, "%s Skip non .inSet RestrictionContext: %s", v63, 0x16u);
    v68 = v136;
    swift_arrayDestroy();
    MEMORY[0x2318B9880](v68, -1, -1);
    MEMORY[0x2318B9880](v63, -1, -1);
  }

  else
  {

    (v58)(v59, v25);
  }

  (*(v131 + 8))(v137, v132);
  v80 = type metadata accessor for QueryDecorationDynamicEnumerationQuery(0);
  return sub_22C36C640(v133, 1, 1, v80);
}

uint64_t type metadata accessor for QueryDecorationDynamicEnumerationQuery(uint64_t a1)
{
  result = qword_281435618;
  if (!qword_281435618)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22C80DF74(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_22C80DFE4(uint64_t a1)
{
  result = sub_22C90981C();
  if (v2 <= 0x3F)
  {
    result = sub_22C909ADC();
    if (v3 <= 0x3F)
    {
      result = sub_22C908ECC();
      if (v4 <= 0x3F)
      {
        result = sub_22C90966C();
        if (v5 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t sub_22C80E098@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  *a2 = v4;
  return result;
}

uint64_t sub_22C80E0F0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_22C371E3C();

  v3 = sub_22C371E3C();
  v4 = a1 + 56;
  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1 + 56);
  v8 = (v5 + 63) >> 6;
  v29 = a1;

  v9 = 0;
  v28 = a1 + 56;
  if (v7)
  {
    while (1)
    {
      v10 = v9;
LABEL_8:
      v11 = (*(v29 + 48) + ((v10 << 10) | (16 * __clz(__rbit64(v7)))));
      v13 = *v11;
      v12 = v11[1];

      swift_isUniquelyReferenced_nonNull_native();
      sub_22C36E2BC(v13, v12);
      sub_22C369DA4();
      if (__OFADD__(v16, v17))
      {
        break;
      }

      v18 = v14;
      v19 = v15;
      sub_22C3A5908(&qword_27D9C0470, &unk_22C927AA0);
      if (sub_22C90B15C())
      {
        v20 = sub_22C36E2BC(v13, v12);
        if ((v19 & 1) != (v21 & 1))
        {
          goto LABEL_22;
        }

        v18 = v20;
      }

      v7 &= v7 - 1;
      if (v19)
      {
        *(v3[7] + v18) = 0;
      }

      else
      {
        v3[(v18 >> 6) + 8] |= 1 << v18;
        v22 = (v3[6] + 16 * v18);
        *v22 = v13;
        v22[1] = v12;
        *(v3[7] + v18) = 0;
        v23 = v3[2];
        v24 = __OFADD__(v23, 1);
        v25 = v23 + 1;
        if (v24)
        {
          goto LABEL_21;
        }

        v3[2] = v25;
      }

      v9 = v10;
      v4 = v28;
      if (!v7)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    while (1)
    {
      v10 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (v10 >= v8)
      {

        *a2 = v3;
        return result;
      }

      v7 = *(v4 + 8 * v10);
      ++v9;
      if (v7)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  result = sub_22C90B54C();
  __break(1u);
  return result;
}

uint64_t RelevantAppSet.RelevantApp.init(bundleId:source:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *a3;
  *a4 = result;
  *(a4 + 8) = a2;
  *(a4 + 16) = v4;
  return result;
}

uint64_t sub_22C80E33C(uint64_t result)
{
  v2 = *(result + 16);
  if (!v2)
  {
    return result;
  }

  v3 = v1;
  for (i = (result + 48); ; i += 24)
  {
    v6 = *(i - 2);
    v5 = *(i - 1);
    v38 = *i;
    v7 = *v3;
    v8 = *(*v3 + 16);

    if (v8)
    {
      v9 = sub_22C36E2BC(v6, v5);
      if (v10)
      {
        v37 = *(*(v7 + 56) + v9);
        swift_isUniquelyReferenced_nonNull_native();
        sub_22C36B7B8();
        sub_22C369DA4();
        if (__OFADD__(v13, v14))
        {
          goto LABEL_26;
        }

        v15 = v11;
        v16 = v12;
        v17 = sub_22C3A5908(&qword_27D9C0470, &unk_22C927AA0);
        if (sub_22C38C174(v17))
        {
          v18 = sub_22C36E2BC(v6, v5);
          if ((v16 & 1) != (v19 & 1))
          {
            goto LABEL_28;
          }

          v15 = v18;
        }

        v20 = v37 | v38;
        v21 = v39;
        if ((v16 & 1) == 0)
        {
          v39[(v15 >> 6) + 8] |= 1 << v15;
          v35 = (v39[6] + 16 * v15);
          *v35 = v6;
          v35[1] = v5;
          *(v39[7] + v15) = v20;
          v36 = v39[2];
          v33 = __OFADD__(v36, 1);
          v34 = v36 + 1;
          if (v33)
          {
            goto LABEL_27;
          }

LABEL_21:
          v21[2] = v34;

          goto LABEL_22;
        }

        *(v39[7] + v15) = v20;
        goto LABEL_22;
      }
    }

    swift_isUniquelyReferenced_nonNull_native();
    sub_22C36B7B8();
    sub_22C369DA4();
    if (__OFADD__(v24, v25))
    {
      break;
    }

    v26 = v22;
    v27 = v23;
    v28 = sub_22C3A5908(&qword_27D9C0470, &unk_22C927AA0);
    if (sub_22C38C174(v28))
    {
      v29 = sub_22C36E2BC(v6, v5);
      if ((v27 & 1) != (v30 & 1))
      {
        goto LABEL_28;
      }

      v26 = v29;
    }

    v21 = v39;
    if ((v27 & 1) == 0)
    {
      v39[(v26 >> 6) + 8] |= 1 << v26;
      v31 = (v39[6] + 16 * v26);
      *v31 = v6;
      v31[1] = v5;
      *(v39[7] + v26) = v38;
      v32 = v39[2];
      v33 = __OFADD__(v32, 1);
      v34 = v32 + 1;
      if (v33)
      {
        goto LABEL_25;
      }

      goto LABEL_21;
    }

    *(v39[7] + v26) = v38;
LABEL_22:

    *v3 = v21;
    if (!--v2)
    {
      return result;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  result = sub_22C90B54C();
  __break(1u);
  return result;
}

uint64_t RelevantAppSet.RelevantApp.bundleId.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t RelevantAppSet.RelevantApp.bundleId.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t RelevantAppSet.RelevantApp.Source.description.getter()
{
  v1 = *v0;
  if ((*v0 & 1) == 0)
  {
    v2 = MEMORY[0x277D84F90];
    if ((*v0 & 2) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_7;
  }

  sub_22C590270(0, 1, 1, MEMORY[0x277D84F90]);
  v2 = v3;
  v5 = *(v3 + 16);
  v4 = *(v3 + 24);
  if (v5 >= v4 >> 1)
  {
    sub_22C378880(v4);
    v2 = v12;
  }

  *(v2 + 16) = v5 + 1;
  v6 = v2 + 16 * v5;
  strcpy((v6 + 32), ".inForeground");
  *(v6 + 46) = -4864;
  if ((v1 & 2) != 0)
  {
LABEL_7:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_22C590270(0, *(v2 + 16) + 1, 1, v2);
      v2 = v13;
    }

    v8 = *(v2 + 16);
    v7 = *(v2 + 24);
    if (v8 >= v7 >> 1)
    {
      sub_22C378880(v7);
      v2 = v14;
    }

    *(v2 + 16) = v8 + 1;
    v9 = v2 + 16 * v8;
    *(v9 + 32) = 0x74614D6E6170732ELL;
    *(v9 + 40) = 0xEA00000000006863;
  }

LABEL_12:
  sub_22C3A5908(&qword_27D9BB5D0, &unk_22C9112A0);
  sub_22C3F035C();
  v10 = sub_22C90A04C();

  return v10;
}

uint64_t sub_22C80E858@<X0>(uint64_t result@<X0>, _BYTE *a2@<X8>)
{
  v3 = *v2;
  if ((*v2 & result) != 0)
  {
    *v2 = v3 & ~result;
  }

  *a2 = v3 & result;
  a2[1] = (v3 & result) == 0;
  return result;
}

uint64_t sub_22C80E88C@<X0>(uint64_t result@<X0>, _BYTE *a2@<X8>)
{
  v3 = *v2;
  v4 = *v2 & result;
  *v2 |= result;
  *a2 = v4;
  a2[1] = (v3 & result) == 0;
  return result;
}

uint64_t sub_22C80E97C@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = RelevantAppSet.RelevantApp.Source.init(rawValue:)(*a1, &v4);
  *a2 = v4;
  a2[1] = 0;
  return result;
}

uint64_t sub_22C80E9BC@<X0>(_BYTE *a1@<X8>)
{
  result = RelevantAppSet.RelevantApp.Source.rawValue.getter();
  *a1 = result;
  return result;
}

BOOL static RelevantAppSet.RelevantApp.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  if (*a1 == *a2 && a1[1] == *(a2 + 8))
  {
    return v2 == v3;
  }

  v5 = sub_22C90B4FC();
  result = 0;
  if (v5)
  {
    return v2 == v3;
  }

  return result;
}

uint64_t RelevantAppSet.RelevantApp.hashValue.getter()
{
  sub_22C90B62C();
  sub_22C909FFC();
  sub_22C90B64C();
  return sub_22C90B66C();
}

uint64_t sub_22C80EAF0(uint64_t a1)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v5[9] = *v1;
  v5[10] = v2;
  v6 = v3;
  sub_22C90B62C();
  RelevantAppSet.RelevantApp.hash(into:)(v5);
  return sub_22C90B66C();
}

unint64_t sub_22C80EB54()
{
  result = qword_27D9C0450;
  if (!qword_27D9C0450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9C0450);
  }

  return result;
}

unint64_t sub_22C80EBAC()
{
  result = qword_27D9C0458;
  if (!qword_27D9C0458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9C0458);
  }

  return result;
}

unint64_t sub_22C80EC00()
{
  result = qword_27D9C0460;
  if (!qword_27D9C0460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9C0460);
  }

  return result;
}

unint64_t sub_22C80EC58()
{
  result = qword_27D9C0468;
  if (!qword_27D9C0468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9C0468);
  }

  return result;
}

unint64_t sub_22C80ECB0()
{
  result = qword_281434878;
  if (!qword_281434878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281434878);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RelevantAppSet.RelevantApp.Source(unsigned __int8 *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 255) >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 255) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 255;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        return 0;
      }

      return (*a1 | (v4 << 8)) - 255;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 255;
    }
  }

  return 0;
}

_BYTE *storeEnumTagSinglePayload for RelevantAppSet.RelevantApp.Source(_BYTE *result, int a2, int a3)
{
  if ((a3 + 255) >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 255) >> 8 < 0xFF)
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
    v6 = ((a2 - 1) >> 8) + 1;
    *result = a2 - 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
        goto LABEL_19;
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
        break;
      case 2:
        *(result + 1) = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *(result + 1) = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

void sub_22C80EEA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22C36BA7C();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v31 = sub_22C3A5908(v27, v25);
  sub_22C36985C();
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v32);
  v34 = &a9 - v33;
  v35 = *v20;
  v36 = v20[1];
  v37 = *(*v20 + 16);
  if (v36 == v37)
  {
    sub_22C37A440();
    sub_22C36CC48();

    sub_22C36C640(v38, v39, v40, v41);
  }

  else
  {
    if (v36 >= v37)
    {
      __break(1u);
    }

    else
    {
      v43 = v24(0);
      v44 = *(v43 - 8);
      v45 = *(v44 + 16);
      v46 = v35 + ((*(v44 + 80) + 32) & ~*(v44 + 80)) + *(v44 + 72) * v36;
      v20[1] = v36 + 1;
      v47 = *(v31 + 48);
      v48 = v20[2];
      *v34 = v48;
      v45(&v34[v47], v46, v43);
      if (!__OFADD__(v48, 1))
      {
        v20[2] = v48 + 1;
        sub_22C3D7EEC(v34, v30, v28, v26);
        sub_22C36C640(v30, 0, 1, v31);
        sub_22C36CC48();
        return;
      }
    }

    __break(1u);
  }
}

void sub_22C80F070()
{
  sub_22C36BA7C();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = sub_22C3A5908(v8, v6);
  sub_22C36985C();
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v13);
  sub_22C37F478();
  v15 = *v0;
  v14 = v0[1];
  v16 = *(*v0 + 16);
  if (v14 == v16)
  {
    sub_22C37A440();
    sub_22C36CC48();

    sub_22C36C640(v17, v18, v19, v20);
  }

  else
  {
    if (v14 >= v16)
    {
      __break(1u);
    }

    else
    {
      v22 = v5(0);
      sub_22C3699B8(v22);
      v25 = v15 + ((*(v23 + 80) + 32) & ~*(v23 + 80)) + *(v24 + 72) * v14;
      v0[1] = v14 + 1;
      v26 = *(v12 + 48);
      v27 = v0[2];
      *v1 = v27;
      sub_22C81215C(v25, v1 + v26, v3);
      if (!__OFADD__(v27, 1))
      {
        v0[2] = v27 + 1;
        sub_22C3D7EEC(v1, v11, v9, v7);
        sub_22C36C640(v11, 0, 1, v12);
        sub_22C36CC48();
        return;
      }
    }

    __break(1u);
  }
}

uint64_t sub_22C80F20C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_22C3A5908(&qword_27D9BFF60, &unk_22C927B40);
  sub_22C36985C();
  sub_22C36D5A8();
  result = MEMORY[0x28223BE20](v4);
  v7 = &v17 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = *(*v1 + 16);
  if (v9 == v10)
  {

    return sub_22C36C640(a1, 1, 1, v3);
  }

  else
  {
    if (v9 >= v10)
    {
      __break(1u);
    }

    else
    {
      v11 = sub_22C3A5908(&qword_27D9BAD80, &qword_22C90D628);
      v12 = *(v11 - 8);
      v13 = *(v12 + 16);
      v14 = v8 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v9;
      v1[1] = v9 + 1;
      v15 = *(v3 + 48);
      v16 = v1[2];
      *v7 = v16;
      result = v13(&v7[v15], v14, v11);
      if (!__OFADD__(v16, 1))
      {
        v1[2] = v16 + 1;
        sub_22C3D7EEC(v7, a1, &qword_27D9BFF60, &unk_22C927B40);
        return sub_22C36C640(a1, 0, 1, v3);
      }
    }

    __break(1u);
  }

  return result;
}

void sub_22C80F388()
{
  sub_22C36BA7C();
  v2 = v1;
  v3 = sub_22C3A5908(&qword_27D9BDBE0, &qword_22C9275D0);
  sub_22C369914(v3);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v4);
  v6 = &v82 - v5;
  v7 = sub_22C3A5908(&qword_27D9BB908, &qword_22C910960);
  sub_22C369914(v7);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v8);
  v10 = &v82 - v9;
  v11 = sub_22C3A5908(&qword_27D9BC390, &qword_22C912AC0);
  sub_22C369914(v11);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v12);
  sub_22C37F478();
  v102 = sub_22C90355C();
  sub_22C369824();
  v14 = v13;
  MEMORY[0x28223BE20](v15);
  sub_22C369838();
  v18 = v17 - v16;
  v19 = sub_22C90399C();
  sub_22C369824();
  v21 = v20;
  MEMORY[0x28223BE20](v22);
  sub_22C369838();
  v25 = v24 - v23;
  v26 = sub_22C3A5908(&qword_27D9C04B8, &unk_22C927B30);
  v27 = sub_22C369914(v26);
  MEMORY[0x28223BE20](v27);
  sub_22C369ABC();
  v93 = v28 - v29;
  sub_22C369930();
  MEMORY[0x28223BE20](v30);
  sub_22C36BA64();
  v92 = v31;
  v111 = 0;
  v112 = 0xE000000000000000;
  v109 = 0;
  v110 = 0;
  v85 = (v21 + 32);
  v84 = v14 + 8;
  v83 = v21 + 8;
  v108 = v2;

  v91 = v6;
  v89 = v0;
  v87 = v19;
  v86 = v25;
  v90 = v10;
  v88 = v18;
  while (1)
  {
    sub_22C389300();
    v32 = v93;
    sub_22C80EEA0(&qword_27D9C02F8, &unk_22C927B20, v33, v34, v35, v36, v37, v38, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93);
    v39 = v92;
    sub_22C3D7EEC(v32, v92, &qword_27D9C04B8, &unk_22C927B30);
    v40 = sub_22C37335C();
    v42 = sub_22C3A5908(v40, v41);
    sub_22C36D0A8(v39, 1, v42);
    if (v53)
    {
      break;
    }

    v43 = *v39;
    (*v85)(v25, v39 + *(v42 + 48), v19);
    sub_22C90394C();
    v100 = sub_22C90390C();
    v45 = v44;
    sub_22C90391C();
    v46 = sub_22C9093BC();
    sub_22C36D0A8(v10, 1, v46);
    if (v53)
    {
      v47 = v10;
      v48 = &qword_27D9BB908;
      v49 = &qword_22C910960;
    }

    else
    {
      sub_22C90939C();
      sub_22C36BBA8();
      v50 = sub_22C372FCC();
      v51(v50);
      v52 = sub_22C90993C();
      sub_22C36D0A8(v0, 1, v52);
      if (!v53)
      {
        v98 = sub_22C90987C();
        v103 = v54;
        sub_22C36BBA8();
        (*(v55 + 8))(v0, v52);
        goto LABEL_10;
      }

      v47 = v0;
      v48 = &qword_27D9BC390;
      v49 = &qword_22C912AC0;
    }

    sub_22C36DD28(v47, v48, v49);
    v98 = 0;
    v103 = 0xE000000000000000;
LABEL_10:
    sub_22C90397C();
    v56 = sub_22C9038BC();
    sub_22C36D0A8(v6, 1, v56);
    if (v53)
    {
      sub_22C36DD28(v6, &qword_27D9BDBE0, &qword_22C9275D0);
      v96 = 0;
      v101 = 0xE000000000000000;
    }

    else
    {
      v57 = sub_22C90385C();
      sub_22C36BBA8();
      (*(v58 + 8))(v6, v56);
      v59 = 0x657463656C657323;
      if ((v57 & 1) == 0)
      {
        v59 = 0;
      }

      v96 = v59;
      v60 = 0xE900000000000064;
      if ((v57 & 1) == 0)
      {
        v60 = 0xE000000000000000;
      }

      v101 = v60;
    }

    v106 = 0;
    v107 = 0xE000000000000000;
    sub_22C90B12C();
    v61 = v106;
    v62 = v107;
    v97 = v107;
    v106 = v43;
    v106 = sub_22C90B47C();
    v107 = v63;
    v104 = 32;
    v105 = 0xE100000000000000;
    sub_22C3858B4();
    v95 = sub_22C90AD7C();
    v65 = v64;

    v106 = v100;
    v107 = v45;
    v99 = v45;
    sub_22C8121EC();
    v100 = sub_22C372E5C(65, v66);
    v68 = v67;
    v106 = v61;
    v107 = v62;
    sub_22C8121EC();
    v94 = sub_22C372E5C(40, v69);
    v71 = v70;
    v106 = v98;
    v107 = v103;
    sub_22C8121EC();
    v98 = sub_22C372E5C(40, v72);
    v74 = v73;
    v106 = v96;
    v107 = v101;
    sub_22C8121EC();
    sub_22C372E5C(10, v75);
    v106 = 0;
    v107 = 0xE000000000000000;
    sub_22C90AF5C();

    v106 = 8202;
    v107 = 0xE200000000000000;
    MEMORY[0x2318B7850](v95, v65);
    v76 = v88;

    sub_22C37B824();
    MEMORY[0x2318B7850](v100, v68);

    sub_22C37B824();
    MEMORY[0x2318B7850](v94, v71);

    sub_22C37B824();
    MEMORY[0x2318B7850](v98, v74);

    sub_22C37B824();
    v77 = sub_22C36D384();
    MEMORY[0x2318B7850](v77);

    v78 = v106;
    v79 = v107;

    MEMORY[0x2318B7850](v78, v79);

    sub_22C36BA4C();
    v80(v76, v102);
    sub_22C36BA4C();
    v25 = v86;
    v19 = v87;
    v81(v86, v87);
    v6 = v91;
    v10 = v90;
    v0 = v89;
  }

  sub_22C36CC48();
}

void static QueryDecorationLoggingUtils.generateReadableToolList(_:)()
{
  sub_22C36BA7C();
  v1 = v0;
  v102 = sub_22C9037DC();
  sub_22C369824();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  sub_22C369838();
  v101 = v6 - v5;
  sub_22C36BA0C();
  v100 = sub_22C90377C();
  sub_22C369824();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  sub_22C369838();
  v99 = v11 - v10;
  v12 = sub_22C3A5908(&qword_27D9BC1E8, &qword_22C9123B0);
  sub_22C369914(v12);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v13);
  sub_22C36D5B4();
  v84 = v14;
  v15 = sub_22C3A5908(&qword_27D9BDC50, &unk_22C91B470);
  sub_22C369914(v15);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v16);
  sub_22C36D5B4();
  v83 = v17;
  sub_22C36BA0C();
  v18 = sub_22C9036EC();
  sub_22C369824();
  v20 = v19;
  MEMORY[0x28223BE20](v21);
  sub_22C369ABC();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v22);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v23);
  sub_22C36BA58();
  v97 = v24;
  sub_22C369930();
  MEMORY[0x28223BE20](v25);
  sub_22C36BA64();
  v96 = v26;
  v27 = sub_22C36BA0C();
  v28 = type metadata accessor for RetrievedToolWithAttribution(v27);
  v29 = sub_22C3699B8(v28);
  v86 = v30;
  MEMORY[0x28223BE20](v29);
  sub_22C369838();
  v33 = v32 - v31;
  v34 = sub_22C3A5908(&qword_27D9C0478, &qword_22C927AB0);
  sub_22C36985C();
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v35);
  sub_22C36D5B4();
  v85 = v36;
  v37 = sub_22C3A5908(&qword_27D9C0480, &qword_22C927AB8);
  v38 = sub_22C369914(v37);
  MEMORY[0x28223BE20](v38);
  sub_22C369ABC();
  v41 = v39 - v40;
  MEMORY[0x28223BE20](v42);
  v44 = (&v82 - v43);
  v106 = 0;
  v107 = 0xE000000000000000;
  v45 = *(v1 + 16);
  v91 = (v20 + 88);
  v92 = (v20 + 32);
  v90 = *MEMORY[0x277D1ECE8];
  v103 = (v20 + 8);
  v89 = (v3 + 8);
  v88 = v8 + 8;
  v87 = v1;

  v46 = 0;
  v98 = v18;
  v93 = v45;
  v94 = v41;
  v95 = v34;
  while (1)
  {
    if (v46 == v45)
    {
      v47 = 1;
      v46 = v45;
      goto LABEL_7;
    }

    if (v46 >= v45)
    {
      break;
    }

    if (__OFADD__(v46, 1))
    {
      goto LABEL_20;
    }

    sub_22C37054C();
    v50 = v87 + v48 + *(v49 + 72) * v46;
    v51 = *(v34 + 48);
    v52 = v85;
    *v85 = v46;
    sub_22C81215C(v50, v52 + v51, type metadata accessor for RetrievedToolWithAttribution);
    sub_22C3D7EEC(v52, v41, &qword_27D9C0478, &qword_22C927AB0);
    v47 = 0;
    ++v46;
LABEL_7:
    sub_22C375BB4(v41, v47);
    sub_22C3D7EEC(v41, v44, &qword_27D9C0480, &qword_22C927AB8);
    sub_22C3788A4(v44);
    v53 = v103;
    if (v54)
    {

      sub_22C36CC48();
      return;
    }

    v55 = *v44;
    sub_22C7C615C(v44 + *(v34 + 48), v33);
    v56 = v96;
    sub_22C90371C();
    v57 = v97;
    (*v92)(v97, v56, v18);
    LODWORD(v56) = (*v91)(v57, v18);
    v58 = *v53;
    (*v53)(v57, v18);
    if (v56 == v90)
    {
      sub_22C370208();
      sub_22C90371C();
      v59 = v83;
      sub_22C57709C();
      v60 = sub_22C372FCC();
      v58(v60);
      sub_22C9099FC();
      sub_22C3788A4(v59);
      if (v54)
      {
        v61 = v59;
        v62 = &qword_27D9BDC50;
        v63 = &unk_22C91B470;
LABEL_15:
        sub_22C36DD28(v61, v62, v63);
        v66 = 0xE300000000000000;
        v67 = 7104878;
        goto LABEL_17;
      }

      v68 = sub_22C9099DC();
    }

    else
    {
      sub_22C370208();
      sub_22C90371C();
      v64 = v84;
      sub_22C9036BC();
      v65 = sub_22C372FCC();
      v58(v65);
      sub_22C908EAC();
      sub_22C3788A4(v64);
      if (v54)
      {
        v61 = v64;
        v62 = &qword_27D9BC1E8;
        v63 = &qword_22C9123B0;
        goto LABEL_15;
      }

      v68 = sub_22C908E7C();
    }

    v67 = v68;
    v66 = v69;
    sub_22C371E5C();
    (*(v70 + 8))();
LABEL_17:
    v71 = v99;
    sub_22C90378C();
    v104 = v55;
    v72 = sub_22C90B47C();
    sub_22C376A64(v72, v73);
    sub_22C3829BC();
    v74 = sub_22C90AD7C();
    v76 = v75;

    sub_22C36D258();
    sub_22C90AF5C();
    sub_22C36FEC0();
    MEMORY[0x2318B7850](v74, v76);

    sub_22C38C194();
    MEMORY[0x2318B7850](v67, v66);

    MEMORY[0x2318B7850](0x203A656761747320, 0xE800000000000000);
    v77 = v100;
    sub_22C90B12C();
    MEMORY[0x2318B7850](0x3A656372756F7320, 0xE900000000000020);
    v78 = v101;
    sub_22C90379C();
    sub_22C8102B8();
    v79 = v102;
    v80 = sub_22C90B47C();
    MEMORY[0x2318B7850](v80);

    (*v89)(v78, v79);
    MEMORY[0x2318B7850](v104, v105);

    sub_22C36BA4C();
    v81(v71, v77);
    sub_22C7C6100(v33);
    v18 = v98;
    v41 = v94;
    v34 = v95;
    v45 = v93;
  }

  __break(1u);
LABEL_20:
  __break(1u);
}

unint64_t sub_22C8102B8()
{
  result = qword_27D9C0488;
  if (!qword_27D9C0488)
  {
    sub_22C9037DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9C0488);
  }

  return result;
}

uint64_t static QueryDecorationLoggingUtils.generateReadableToolList(_:)(uint64_t a1)
{
  v90 = sub_22C90377C();
  sub_22C369824();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  sub_22C369838();
  v89 = v7 - v6;
  v8 = sub_22C3A5908(&qword_27D9BC1E8, &qword_22C9123B0);
  sub_22C369914(v8);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v9);
  sub_22C37F478();
  v10 = sub_22C3A5908(&qword_27D9BDC50, &unk_22C91B470);
  sub_22C369914(v10);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v11);
  sub_22C36D5B4();
  v75 = v12;
  sub_22C36BA0C();
  v13 = sub_22C9036EC();
  sub_22C369824();
  v15 = v14;
  MEMORY[0x28223BE20](v16);
  sub_22C369ABC();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v17);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v18);
  sub_22C36BA58();
  v86 = v19;
  sub_22C369930();
  MEMORY[0x28223BE20](v20);
  sub_22C36BA64();
  v85 = v21;
  sub_22C36BA0C();
  v22 = sub_22C9037EC();
  sub_22C369824();
  v24 = v23;
  MEMORY[0x28223BE20](v25);
  sub_22C369838();
  v28 = v27 - v26;
  v29 = sub_22C3A5908(&qword_27D9C0490, &qword_22C927AC0);
  v30 = sub_22C369914(v29);
  MEMORY[0x28223BE20](v30);
  sub_22C369ABC();
  v91 = v31 - v32;
  sub_22C369930();
  MEMORY[0x28223BE20](v33);
  v35 = (v74 - v34);
  sub_22C36D258();
  v96 = 0;
  v97 = 0;
  v95 = a1;
  v82 = v15 + 32;
  v83 = (v24 + 32);
  v81 = v15 + 88;
  HIDWORD(v80) = *MEMORY[0x277D1ECE8];
  v36 = (v15 + 8);
  v78 = v4 + 8;
  v77 = v24 + 8;

  v87 = v13;
  v88 = v1;
  v79 = (v15 + 8);
  v76 = v35;
  v84 = v22;
  while (1)
  {
    v42 = v91;
    sub_22C80EEA0(&qword_27D9C0498, &qword_22C927AC8, MEMORY[0x277D1ED90], v37, v38, v39, v40, v41, v74[0], v74[1], v75, v76, v77, v78, v79, v80, v81, v82, v83, v84);
    sub_22C3D7EEC(v42, v35, &qword_27D9C0490, &qword_22C927AC0);
    v43 = sub_22C3A5908(&qword_27D9C0498, &qword_22C927AC8);
    sub_22C36D0A8(v35, 1, v43);
    if (v44)
    {
      break;
    }

    v92 = *v35;
    (*v83)(v28, v35 + *(v43 + 48), v22);
    sub_22C90371C();
    v45 = sub_22C372FCC();
    v46(v45);
    v47 = sub_22C36D384();
    v49 = v48(v47);
    v50 = *v36;
    v51 = sub_22C36D384();
    v50(v51);
    if (v49 == HIDWORD(v80))
    {
      sub_22C370208();
      sub_22C90371C();
      v1 = v75;
      sub_22C57709C();
      v52 = sub_22C36D384();
      v50(v52);
      v53 = sub_22C9099FC();
      sub_22C3788A4(v1);
      if (v44)
      {
        v54 = v1;
        v55 = &qword_27D9BDC50;
        v56 = &unk_22C91B470;
LABEL_10:
        sub_22C36DD28(v54, v55, v56);
        v58 = 0;
        v59 = 0;
        goto LABEL_12;
      }

      v60 = sub_22C9099DC();
    }

    else
    {
      sub_22C370208();
      sub_22C90371C();
      sub_22C9036BC();
      v57 = sub_22C36D384();
      v50(v57);
      v53 = sub_22C908EAC();
      sub_22C3788A4(v1);
      if (v44)
      {
        v54 = v1;
        v55 = &qword_27D9BC1E8;
        v56 = &qword_22C9123B0;
        goto LABEL_10;
      }

      v60 = sub_22C908E7C();
    }

    v58 = v60;
    v59 = v61;
    sub_22C371E5C();
    (*(v62 + 8))(v1, v53);
LABEL_12:
    sub_22C90373C();
    v63 = v89;
    sub_22C90378C();
    if (v59)
    {
      v64 = v58;
    }

    else
    {
      v64 = 7104878;
    }

    if (!v59)
    {
      v59 = 0xE300000000000000;
    }

    v93 = 0;
    v94 = 0xE000000000000000;
    sub_22C90A89C();
    v65 = v93;
    v66 = v94;
    v93 = 0;
    v94 = 0xE000000000000000;
    v67 = v90;
    sub_22C90B12C();
    v68 = sub_22C8114CC(v92, v65, v66, v64, v59, v93, v94, 0, 0xE000000000000000);
    v70 = v69;

    MEMORY[0x2318B7850](v68, v70);

    sub_22C36BA4C();
    v71(v63, v67);
    sub_22C36BA4C();
    v22 = v84;
    v72(v28, v84);
    v1 = v88;
    v36 = v79;
    v35 = v76;
  }

  return v98;
}

void static QueryDecorationLoggingUtils.generateReadableDynamicEnumerationEntities(_:)()
{
  sub_22C36BA7C();
  v1 = v0;
  v51 = sub_22C9093BC();
  sub_22C369824();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  sub_22C369838();
  v50 = v6 - v5;
  sub_22C36BA0C();
  v53 = sub_22C903E2C();
  sub_22C369824();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  sub_22C369838();
  v49 = v11 - v10;
  v12 = sub_22C3A5908(&qword_27D9C04A0, &qword_22C927AD0);
  sub_22C36985C();
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v13);
  sub_22C36D5B4();
  v42 = v14;
  v15 = sub_22C3A5908(&qword_27D9C04A8, &qword_22C927AD8);
  v16 = sub_22C369914(v15);
  MEMORY[0x28223BE20](v16);
  sub_22C369ABC();
  v19 = v17 - v18;
  MEMORY[0x28223BE20](v20);
  sub_22C36BA64();
  v52 = v21;
  v22 = 0;
  v46 = (v3 + 8);
  v47 = (v8 + 32);
  v43 = v1;
  v23 = *(v1 + 16);
  v48 = v19;
  v44 = v23;
  for (i = (v8 + 8); ; (*i)(v49, v53))
  {
    if (v22 == v23)
    {
      v24 = 1;
      v25 = v23;
      goto LABEL_7;
    }

    if (v22 >= v23)
    {
      break;
    }

    v25 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      goto LABEL_11;
    }

    sub_22C37054C();
    v28 = v43 + v26 + *(v27 + 72) * v22;
    v29 = *(v12 + 48);
    *v42 = v22;
    (*(v27 + 16))(&v42[v29], v28, v53);
    sub_22C3D7EEC(v42, v19, &qword_27D9C04A0, &qword_22C927AD0);
    v24 = 0;
LABEL_7:
    sub_22C36C640(v19, v24, 1, v12);
    sub_22C3D7EEC(v19, v52, &qword_27D9C04A8, &qword_22C927AD8);
    sub_22C36D0A8(v52, 1, v12);
    if (v30)
    {
      sub_22C36CC48();
      return;
    }

    v31 = *v52;
    (*v47)(v49, &v52[*(v12 + 48)], v53);
    v32 = sub_22C90381C();
    v34 = v33;
    sub_22C903E0C();
    v35 = sub_22C90B47C();
    sub_22C376A64(v35, v36);
    sub_22C3829BC();
    v37 = v12;
    v38 = sub_22C90AD7C();
    v40 = v39;

    sub_22C36D258();
    sub_22C90AF5C();
    sub_22C36FEC0();
    v41 = v38;
    v12 = v37;
    MEMORY[0x2318B7850](v41, v40);

    sub_22C38C194();
    MEMORY[0x2318B7850](v32, v34);
    v19 = v48;

    sub_22C8121BC();
    sub_22C90B12C();
    MEMORY[0x2318B7850](v31);
    v23 = v44;

    (*v46)(v50, v51);
    v22 = v25;
  }

  __break(1u);
LABEL_11:
  __break(1u);
}

uint64_t static QueryDecorationLoggingUtils.timeOperation<A>(_:)(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v3 = sub_22C90B09C();
  sub_22C369824();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  sub_22C369ABC();
  v9 = v7 - v8;
  MEMORY[0x28223BE20](v10);
  sub_22C382E94();
  v11 = sub_22C90B0BC();
  sub_22C369824();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  sub_22C369838();
  v17 = v16 - v15;
  sub_22C90B0AC();
  v18 = sub_22C90B07C();
  a2(v18);
  if (v22)
  {
    (*(v5 + 8))(v2, v3);
    return (*(v13 + 8))(v17, v11);
  }

  else
  {
    sub_22C90B07C();
    v23 = sub_22C90B08C();
    v20 = *(v5 + 8);
    v20(v9, v3);
    v20(v2, v3);
    (*(v13 + 8))(v17, v11);
    return v23;
  }
}

uint64_t static QueryDecorationLoggingUtils.timeOperation<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = sub_22C90B09C();
  v3[5] = v4;
  sub_22C3699B8(v4);
  v3[6] = v5;
  v3[7] = swift_task_alloc();
  v3[8] = swift_task_alloc();
  v6 = sub_22C90B0BC();
  v3[9] = v6;
  sub_22C3699B8(v6);
  v3[10] = v7;
  v3[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22C8110D4, 0, 0);
}

uint64_t sub_22C8110D4()
{
  v1 = v0[3];
  sub_22C90B0AC();
  sub_22C90B07C();
  v5 = (v1 + *v1);
  v2 = swift_task_alloc();
  v0[12] = v2;
  *v2 = v0;
  v2[1] = sub_22C8111E8;
  v3 = v0[2];

  return v5(v3);
}

uint64_t sub_22C8111E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(*v9 + 104) = v8;

  if (v8)
  {
    v10 = sub_22C81140C;
  }

  else
  {
    v10 = sub_22C8112FC;
  }

  return MEMORY[0x2822009F8](v10, 0, 0);
}

uint64_t sub_22C8112FC(uint64_t a1)
{
  v3 = v1[10];
  v2 = v1[11];
  v5 = v1[8];
  v4 = v1[9];
  v7 = v1[6];
  v6 = v1[7];
  v8 = v1[5];
  sub_22C90B07C();
  v14 = sub_22C90B08C();
  v10 = v9;
  v11 = *(v7 + 8);
  v11(v6, v8);
  v11(v5, v8);
  (*(v3 + 8))(v2, v4);

  v12 = v1[1];

  return v12(v14, v10);
}

uint64_t sub_22C81140C()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];
  (*(v0[6] + 8))(v0[8], v0[5]);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_22C8114CC(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8, unint64_t a9)
{
  sub_22C90B47C();
  sub_22C3858B4();
  v9 = sub_22C90AD7C();
  v24 = v10;
  v25 = v9;

  v23 = sub_22C90AD7C();
  v12 = v11;
  v13 = sub_22C90AD7C();
  v15 = v14;
  v16 = sub_22C90AD7C();
  v18 = v17;
  v19 = sub_22C90AD7C();
  v21 = v20;
  sub_22C90AF5C();

  MEMORY[0x2318B7850](v25, v24);

  MEMORY[0x2318B7850](32, 0xE100000000000000);
  MEMORY[0x2318B7850](v23, v12);

  MEMORY[0x2318B7850](32, 0xE100000000000000);
  MEMORY[0x2318B7850](v13, v15);

  MEMORY[0x2318B7850](32, 0xE100000000000000);
  MEMORY[0x2318B7850](v16, v18);

  MEMORY[0x2318B7850](32, 0xE100000000000000);
  MEMORY[0x2318B7850](v19, v21);

  return 8202;
}

uint64_t static QueryDecorationLoggingUtils.generateReadableSpans(_:)(uint64_t a1)
{
  v3 = sub_22C3A5908(&qword_27D9BB908, &qword_22C910960);
  sub_22C369914(v3);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v4);
  v6 = v67 - v5;
  v7 = sub_22C3A5908(&qword_27D9BDA90, &unk_22C91A460);
  v8 = sub_22C369914(v7);
  MEMORY[0x28223BE20](v8);
  sub_22C369ABC();
  v11 = v9 - v10;
  MEMORY[0x28223BE20](v12);
  sub_22C382E94();
  v13 = sub_22C9039FC();
  sub_22C369824();
  v15 = v14;
  MEMORY[0x28223BE20](v16);
  sub_22C369838();
  v19 = v18 - v17;
  v20 = sub_22C3A5908(&qword_27D9C0300, &qword_22C926C50);
  sub_22C36985C();
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v21);
  sub_22C36D5B4();
  v68 = v22;
  v23 = sub_22C3A5908(&qword_27D9C04B0, &unk_22C927AF0);
  v24 = sub_22C369914(v23);
  MEMORY[0x28223BE20](v24);
  sub_22C369ABC();
  v27 = v25 - v26;
  MEMORY[0x28223BE20](v28);
  v30 = (v67 - v29);
  sub_22C36D258();
  v80 = *(a1 + 16);
  v67[1] = v15 + 16;
  v72 = (v15 + 32);
  v69 = v15;
  v70 = a1;
  v71 = (v15 + 8);

  v32 = 0;
  v78 = v11;
  v79 = v6;
  v73 = v30;
  v74 = v27;
  v76 = v13;
  v77 = v1;
  v75 = v20;
  while (1)
  {
    if (v32 == v80)
    {
      v33 = 1;
      v82 = v80;
      goto LABEL_7;
    }

    if (v32 >= v80)
    {
      break;
    }

    v34 = v32 + 1;
    if (__OFADD__(v32, 1))
    {
      goto LABEL_26;
    }

    sub_22C37054C();
    v38 = v70 + v35 + *(v36 + 72) * v37;
    v39 = *(v20 + 48);
    v40 = v68;
    *v68 = v37;
    (*(v36 + 16))(v40 + v39, v38, v13);
    sub_22C3D7EEC(v40, v27, &qword_27D9C0300, &qword_22C926C50);
    v33 = 0;
    v82 = v34;
LABEL_7:
    sub_22C375BB4(v27, v33);
    sub_22C3D7EEC(v27, v30, &qword_27D9C04B0, &unk_22C927AF0);
    sub_22C3788A4(v30);
    if (v41)
    {

      return v87;
    }

    v42 = *v30;
    (*v72)(v19, v30 + *(v20 + 48), v13);
    v43 = sub_22C9039DC();
    v44 = *(v43 + 16);
    v45 = sub_22C90361C();
    if (v44)
    {
      sub_22C371E5C();
      (*(v46 + 16))(v1, v43 + ((*(v46 + 80) + 32) & ~*(v46 + 80)), v45);
      v47 = 0;
    }

    else
    {
      v47 = 1;
    }

    sub_22C375BB4(v1, v47);

    sub_22C3788A4(v1);
    if (v41)
    {
      sub_22C36DD28(v1, &qword_27D9BDA90, &unk_22C91A460);
      v81 = 0;
      v49 = 0xE000000000000000;
    }

    else
    {
      v81 = sub_22C9035FC();
      v49 = v48;
      sub_22C371E5C();
      (*(v50 + 8))(v1, v45);
    }

    sub_22C9039CC();
    v51 = sub_22C9093BC();
    sub_22C36D0A8(v6, 1, v51);
    if (v41)
    {
      sub_22C36DD28(v6, &qword_27D9BB908, &qword_22C910960);
      v52 = 0;
      v54 = 0xE000000000000000;
    }

    else
    {
      v52 = sub_22C90938C();
      v54 = v53;
      sub_22C36BBA8();
      (*(v55 + 8))(v6, v51);
    }

    v56 = sub_22C9039DC();
    if (*(v56 + 16))
    {
      sub_22C371E5C();
      (*(v57 + 16))(v11, v56 + ((*(v57 + 80) + 32) & ~*(v57 + 80)), v45);
      v58 = 0;
    }

    else
    {
      v58 = 1;
    }

    sub_22C375BB4(v11, v58);

    sub_22C3788A4(v11);
    if (v41)
    {
      sub_22C36DD28(v11, &qword_27D9BDA90, &unk_22C91A460);
      v60 = 0;
      v62 = 0xE000000000000000;
    }

    else
    {
      sub_22C90358C();
      sub_22C371E5C();
      (*(v59 + 8))(v11, v45);
      v60 = sub_22C90A88C();
      v62 = v61;
    }

    v85 = v42;
    v85 = sub_22C90B47C();
    v86 = v63;
    v83 = 32;
    v84 = 0xE100000000000000;
    sub_22C3858B4();
    v64 = sub_22C90AD7C();
    v66 = v65;

    v85 = 0;
    v86 = 0xE000000000000000;
    sub_22C90AF5C();

    v85 = 8202;
    v86 = 0xE200000000000000;
    MEMORY[0x2318B7850](v64, v66);

    sub_22C38C194();
    MEMORY[0x2318B7850](v81, v49);

    sub_22C8121BC();
    MEMORY[0x2318B7850](v52, v54);

    MEMORY[0x2318B7850](0x203A65726F637320, 0xE800000000000000);
    MEMORY[0x2318B7850](v60, v62);

    MEMORY[0x2318B7850](v85, v86);

    v13 = v76;
    result = (*v71)(v19, v76);
    v11 = v78;
    v6 = v79;
    v1 = v77;
    v27 = v74;
    v20 = v75;
    v30 = v73;
    v32 = v82;
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t static QueryDecorationLoggingUtils.generateReadableQueryDecorationOutput(_:)()
{
  v0 = sub_22C3A5908(&qword_27D9BD290, &qword_22C917EC0);
  sub_22C369914(v0);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v1);
  v3 = v24 - v2;
  v24[0] = 0xD000000000000010;
  v24[1] = 0x800000022C936130;
  v4 = sub_22C903DAC();
  if (v4)
  {
    v5 = static QueryDecorationLoggingUtils.generateReadableSpans(_:)(v4);
    v7 = v6;

    MEMORY[0x2318B7850](v5, v7);
  }

  sub_22C381858();
  if (sub_22C903DBC())
  {
    sub_22C80F388();
    v9 = v8;
    v11 = v10;

    MEMORY[0x2318B7850](v9, v11);
  }

  sub_22C381858();
  sub_22C903D5C();
  v12 = sub_22C903F4C();
  sub_22C36D0A8(v3, 1, v12);
  if (v13)
  {
    sub_22C36DD28(v3, &qword_27D9BD290, &qword_22C917EC0);
  }

  else
  {
    v14 = sub_22C903F1C();
    sub_22C36BBA8();
    v15 = sub_22C37335C();
    v16(v15);
    static QueryDecorationLoggingUtils.generateReadableToolList(_:)(v14);

    v17 = sub_22C37335C();
    MEMORY[0x2318B7850](v17);
  }

  sub_22C381858();
  if (sub_22C903D8C())
  {
    static QueryDecorationLoggingUtils.generateReadableDynamicEnumerationEntities(_:)();

    v18 = sub_22C37335C();
    MEMORY[0x2318B7850](v18);
  }

  v19 = sub_22C903D6C();
  if (v20)
  {
    v21 = v19;
    v22 = v20;
    sub_22C381858();
    MEMORY[0x2318B7850](v21, v22);
  }

  return v24[0];
}

_BYTE *storeEnumTagSinglePayload for QueryDecorationLoggingUtils(_BYTE *result, int a2, int a3)
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

uint64_t sub_22C81215C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_22C36985C();
  (*(v5 + 16))(a2, a1);
  return a2;
}

void sub_22C8121BC()
{

  JUMPOUT(0x2318B7850);
}

void TypeIdentifier.selfLoggingTypeName.getter()
{
  sub_22C36BA7C();
  v3 = sub_22C9094EC();
  sub_22C369824();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  sub_22C369838();
  sub_22C37B6BC();
  v7 = sub_22C9094CC();
  sub_22C369824();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  sub_22C369838();
  sub_22C37BDA4();
  sub_22C90952C();
  sub_22C369824();
  MEMORY[0x28223BE20](v11);
  sub_22C369838();
  sub_22C370654();
  TypeIdentifier.withBackwardsCompatibleAttributedTypes.getter(v2);
  v12 = sub_22C371510();
  v14 = v13(v12);
  if (v14 == *MEMORY[0x277D72D50])
  {
    v15 = sub_22C371510();
    v16(v15);
    swift_projectBox();
    sub_22C63489C();
    v17(v0);
    TypeIdentifier.PrimitiveTypeIdentifier.selfLoggingTypeName.getter();
    (*(v5 + 8))(v0, v3);
  }

  else if (v14 == *MEMORY[0x277D72D30])
  {
    v18 = sub_22C371510();
    v19(v18);
    v20 = swift_projectBox();
    (*(v9 + 16))(v1, v20, v7);
    TypeIdentifier.BuiltInTypeIdentifier.selfLoggingTypeName.getter();
    v21 = sub_22C36EBF0();
    v22(v21);
  }

  else
  {
    if (v14 != *MEMORY[0x277D72D28])
    {
      v25 = sub_22C371510();
      v26(v25);
      sub_22C375BCC();
      goto LABEL_8;
    }

    v23 = sub_22C371510();
    v24(v23);
  }

LABEL_8:
  sub_22C36CC48();
}

uint64_t sub_22C8124CC(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    sub_22C90A33C();
    sub_22C90A4AC();
    sub_22C8236DC();
    return sub_22C37170C();
  }

  return result;
}

uint64_t sub_22C8125CC@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = result;
    v5 = sub_22C57D74C();
    v7 = v6;
    v9 = v8;
    v10 = 1 << *(a2 + 32);
    v11 = *(a2 + 36);
    v12 = sub_22C821E60(v5, v6, v8 & 1, v4, v10, *(a2 + 36), 0, a2);
    v14 = v13;
    v16 = v15;
    v17 = ~v15;
    sub_22C3A5038(v10, v11, 0);
    sub_22C3A5038(v5, v7, v9 & 1);
    if (!v17)
    {
      v16 = 0;
      v12 = 1 << *(a2 + 32);
      v14 = *(a2 + 36);
    }

    result = sub_22C57D74C();
    if (v16 & 1) != 0 || (v19)
    {
      goto LABEL_12;
    }

    if (v14 == v18)
    {
      if (v12 >= result)
      {
        v24[0] = result;
        v24[1] = v18;
        v25 = 0;
        v26 = v12;
        v27 = v14;
        v28 = 0;
        sub_22C822038(v24, a2, v22);

        v20 = v22[1];
        *a3 = v22[0];
        *(a3 + 16) = v20;
        *(a3 + 32) = v22[2];
        *(a3 + 48) = v23;
        return result;
      }

      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_11:
  __break(1u);
LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_22C812750(uint64_t result, uint64_t a2, uint64_t (*a3)(void, uint64_t, uint64_t, uint64_t), uint64_t (*a4)(void))
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v5 = *(a2 + 16);
    result = a3(0, result, v5, a2);
    if (v6)
    {
      v7 = v5;
    }

    else
    {
      v7 = result;
    }

    if ((v7 & 0x8000000000000000) == 0)
    {
      a4(0);
      sub_22C8236DC();
      return sub_22C37170C();
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22C8127DC(uint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) == 0)
  {
    return a2;
  }

  __break(1u);
  return result;
}

uint64_t TypeIdentifier.PrimitiveTypeIdentifier.selfLoggingTypeName.getter()
{
  sub_22C9094EC();
  sub_22C369824();
  MEMORY[0x28223BE20](v0);
  sub_22C369838();
  v3 = (v2 - v1);
  v4 = sub_22C37170C();
  v5(v4);
  v6 = sub_22C36BBCC();
  v8 = v7(v6);
  if (v8 == *MEMORY[0x277D72C50])
  {
    v9 = sub_22C36BBCC();
    v10(v9);
    v11 = *v3;
    strcpy(v18, "measurement<");
    BYTE5(v18[1]) = 0;
    HIWORD(v18[1]) = -5120;
    if (v11 == 22)
    {
      v12 = 7104878;
      v13 = 0xE300000000000000;
    }

    else
    {
      v12 = TypeIdentifier.MeasurementUnitType.selfLoggingTypeName.getter(v11);
      v13 = v15;
    }

    MEMORY[0x2318B7850](v12, v13);

    sub_22C8236C4();
    return v18[0];
  }

  else if (v8 == *MEMORY[0x277D72CC8])
  {
    return 1701736302;
  }

  else if (v8 == *MEMORY[0x277D72CB0])
  {
    return 1819242338;
  }

  else if (v8 == *MEMORY[0x277D72CA0])
  {
    return 7630441;
  }

  else if (v8 == *MEMORY[0x277D72CD0])
  {
    return 0x7265626D756ELL;
  }

  else if (v8 == *MEMORY[0x277D72CE8])
  {
    return 0x6C616D69636564;
  }

  else if (v8 == *MEMORY[0x277D72CE0])
  {
    return 0x676E69727473;
  }

  else if (v8 == *MEMORY[0x277D72CB8])
  {
    return 1702125924;
  }

  else if (v8 == *MEMORY[0x277D72C70])
  {
    return 0x706D6F4365746164;
  }

  else if (v8 == *MEMORY[0x277D72CA8])
  {
    return 7107189;
  }

  else if (v8 == *MEMORY[0x277D72C40])
  {
    return 0x616E6F6974636964;
  }

  else if (v8 == *MEMORY[0x277D72C88])
  {
    return 0xD000000000000010;
  }

  else if (v8 == *MEMORY[0x277D72C68])
  {
    return 0x79636E6572727563;
  }

  else if (v8 == *MEMORY[0x277D72C60])
  {
    return 0x4D746E656D796170;
  }

  else if (v8 == *MEMORY[0x277D72D00])
  {
    return 0x72616D6563616C70;
  }

  else if (v8 == *MEMORY[0x277D72CD8])
  {
    return 0x6E6F73726570;
  }

  else if (v8 == *MEMORY[0x277D72CC0])
  {
    return 1701603686;
  }

  else if (v8 == *MEMORY[0x277D72C98])
  {
    return 7368801;
  }

  else if (v8 == *MEMORY[0x277D72C80])
  {
    return 0x6261686372616573;
  }

  else if (v8 == *MEMORY[0x277D72C48])
  {
    return 0x4673746E65746E69;
  }

  else
  {
    v16 = sub_22C36BBCC();
    v17(v16);
    return 0xD000000000000010;
  }
}

uint64_t QueryDecorationSELFLogging.logSubComponentExecution<A>(_:_:)()
{
  sub_22C369980();
  v3 = v2;
  v1[12] = v4;
  v1[13] = v0;
  v1[10] = v5;
  v1[11] = v2;
  v1[8] = v6;
  v1[9] = v7;
  v1[6] = v8;
  v1[7] = v9;
  v10 = sub_22C905A5C();
  v1[14] = v10;
  sub_22C3699B8(v10);
  v1[15] = v11;
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  v12 = sub_22C9063DC();
  v1[18] = v12;
  sub_22C3699B8(v12);
  v1[19] = v13;
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();
  v1[22] = *(v3 - 8);
  v1[23] = sub_22C3699D4();
  v14 = sub_22C90622C();
  v1[24] = v14;
  sub_22C3699B8(v14);
  v1[25] = v15;
  v1[26] = sub_22C3699D4();
  v16 = sub_22C90B0EC();
  v1[27] = v16;
  sub_22C3699B8(v16);
  v1[28] = v17;
  v1[29] = swift_task_alloc();
  v1[30] = swift_task_alloc();
  v1[31] = swift_task_alloc();
  v1[32] = swift_task_alloc();
  v1[33] = swift_task_alloc();
  v1[34] = swift_task_alloc();
  v1[35] = swift_task_alloc();
  v18 = sub_22C90B10C();
  v1[36] = v18;
  sub_22C3699B8(v18);
  v1[37] = v19;
  v1[38] = sub_22C3699D4();
  v20 = sub_22C90069C();
  v1[39] = v20;
  sub_22C3699B8(v20);
  v1[40] = v21;
  v1[41] = sub_22C3699D4();

  return MEMORY[0x2822009F8](sub_22C812FCC, 0, 0);
}

uint64_t sub_22C812FCC(uint64_t a1)
{
  v2 = v1[41];
  v4 = v1[25];
  v3 = v1[26];
  v5 = v1[12];
  v13 = v1[24];
  v6 = v1[10];
  v7 = v1[7];
  v8 = v1[8];
  sub_22C90068C();
  sub_22C90B0FC();
  sub_22C90B0CC();
  sub_22C90621C();
  (*(v5 + 72))(v7, v2, v3, v6, v5);
  v9 = *(v4 + 8);
  v1[42] = v9;
  v1[43] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v9(v3, v13);
  v14 = (v8 + *v8);
  v10 = swift_task_alloc();
  v1[44] = v10;
  *v10 = v1;
  v10[1] = sub_22C813170;
  v11 = v1[23];

  return v14(v11);
}

uint64_t sub_22C813170()
{
  sub_22C369980();
  *(*v1 + 360) = v0;

  if (v0)
  {
    v2 = sub_22C8137C8;
  }

  else
  {
    v2 = sub_22C813280;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22C813280()
{
  v57 = v0;
  v45 = v0[42];
  v39 = v0[41];
  v1 = v0[34];
  v52 = v0[35];
  v50 = v0[33];
  v54 = v0[32];
  v2 = v0[28];
  v48 = v0[27];
  v3 = v0[26];
  v4 = v0[15];
  v41 = v0[14];
  v43 = v0[17];
  v5 = v0[12];
  v6 = v0[10];
  v35 = v0[7];
  v37 = v0[24];
  (*(v0[22] + 32))(v0[6], v0[23], v0[11]);
  sub_22C90B0CC();
  sub_22C90621C();
  (*(v5 + 80))(v39, v3, v6, v5);
  v45(v3, v37);
  sub_22C90400C();
  (*(v4 + 16))(v43, v35, v41);
  v7 = *(v2 + 16);
  v7(v50, v52, v48);
  v7(v54, v1, v48);
  v8 = sub_22C9063CC();
  v36 = sub_22C90AABC();
  v9 = os_log_type_enabled(v8, v36);
  v10 = v0[40];
  v11 = v0[41];
  v55 = v0[39];
  v51 = v0[38];
  v53 = v0[37];
  v47 = v0[35];
  v49 = v0[36];
  v38 = v0[32];
  v40 = v0[33];
  v12 = v0[27];
  v13 = v0[28];
  v44 = v0[21];
  v46 = v0[34];
  v14 = v0[19];
  v42 = v0[18];
  if (v9)
  {
    sub_22C370220();
    v34 = v10;
    v15 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    *v15 = 136315650;
    *(v15 + 4) = sub_22C36F9F4(0xD00000000000001ELL, 0x800000022C936220, &v56);
    *(v15 + 12) = 2080;
    sub_22C36A414();
    sub_22C82362C(v16, v17, MEMORY[0x277D20080]);
    sub_22C90B47C();
    v18 = sub_22C37170C();
    v19(v18);
    v20 = sub_22C37FF30();
    v23 = sub_22C36F9F4(v20, v21, v22);

    *(v15 + 14) = v23;
    *(v15 + 22) = 2080;
    sub_22C90B08C();
    sub_22C90B73C();
    v24 = *(v13 + 8);
    v24(v38, v12);
    v24(v40, v12);
    v25 = sub_22C37170C();
    v28 = sub_22C36F9F4(v25, v26, v27);

    *(v15 + 24) = v28;
    _os_log_impl(&dword_22C366000, v8, v36, "[%s] SUCCESS subComponent=%s, executionTime=%s", v15, 0x20u);
    swift_arrayDestroy();
    sub_22C369B50();
    MEMORY[0x2318B9880]();
    sub_22C369B50();
    MEMORY[0x2318B9880]();

    (*(v14 + 8))(v44, v42);
    v24(v46, v12);
    v24(v47, v12);
    (*(v53 + 8))(v51, v49);
    (*(v34 + 8))(v11, v55);
  }

  else
  {

    v29 = *(v13 + 8);
    v29(v38, v12);
    v29(v40, v12);
    v30 = sub_22C37170C();
    v31(v30);
    (*(v14 + 8))(v44, v42);
    v29(v46, v12);
    v29(v47, v12);
    (*(v53 + 8))(v51, v49);
    (*(v10 + 8))(v11, v55);
  }

  sub_22C369A24();

  return v32();
}

uint64_t sub_22C8137C8(uint64_t a1)
{
  v70 = v1;
  v2 = v1[45];
  v57 = v1[42];
  v52 = v1[41];
  v59 = v1[31];
  v63 = v1[30];
  v65 = v1[35];
  v3 = v1[28];
  v66 = v1[29];
  v4 = v1[26];
  v61 = v1[27];
  v5 = v1[24];
  v6 = v1[15];
  v54 = v1[14];
  v55 = v1[16];
  v7 = v1[12];
  v8 = v1[10];
  v53 = v1[7];
  sub_22C90B0CC();
  sub_22C90621C();
  (*(v7 + 88))(v2, v52, v4, v8, v7);
  v57(v4, v5);
  sub_22C90400C();
  (*(v6 + 16))(v55, v53, v54);
  v9 = *(v3 + 16);
  v9(v63, v65, v61);
  v9(v66, v59, v61);
  v10 = v2;
  v11 = sub_22C9063CC();
  v12 = sub_22C90AABC();

  if (os_log_type_enabled(v11, v12))
  {
    v56 = v1[29];
    v58 = v1[30];
    v13 = v1[28];
    v67 = v1[27];
    v14 = v1[19];
    v62 = v1[18];
    v64 = v1[20];
    v60 = v12;
    v15 = swift_slowAlloc();
    v69[0] = swift_slowAlloc();
    *v15 = 136315906;
    *(v15 + 4) = sub_22C36F9F4(0xD00000000000001ELL, 0x800000022C936220, v69);
    *(v15 + 12) = 2080;
    sub_22C36A414();
    sub_22C82362C(v16, v17, MEMORY[0x277D20080]);
    v18 = sub_22C90B47C();
    v20 = v19;
    v21 = sub_22C372164();
    v22(v21);
    v23 = sub_22C36F9F4(v18, v20, v69);

    *(v15 + 14) = v23;
    *(v15 + 22) = 2080;
    swift_getErrorValue();
    v24 = sub_22C90B57C();
    v26 = sub_22C36F9F4(v24, v25, v69);

    *(v15 + 24) = v26;
    *(v15 + 32) = 2080;
    sub_22C90B08C();
    sub_22C90B73C();
    v27 = *(v13 + 8);
    v28 = v67;
    v27(v56, v67);
    v68 = v27;
    v27(v58, v28);
    v29 = sub_22C372164();
    v32 = sub_22C36F9F4(v29, v30, v31);

    *(v15 + 34) = v32;
    _os_log_impl(&dword_22C366000, v11, v60, "[%s] FAILURE subComponent=%s, error=%s, executionTime=%s", v15, 0x2Au);
    swift_arrayDestroy();
    sub_22C369B50();
    MEMORY[0x2318B9880]();
    sub_22C369B50();
    MEMORY[0x2318B9880]();
  }

  else
  {
    v33 = v1[29];
    v34 = v1[27];
    v35 = v1[28];
    v14 = v1[19];
    v62 = v1[18];
    v64 = v1[20];
    v36 = v1[15];
    v37 = v1[16];
    v38 = v1[14];

    v39 = *(v35 + 8);
    v39(v33, v34);
    v40 = sub_22C372164();
    v68 = v39;
    (v39)(v40);
    (*(v36 + 8))(v37, v38);
  }

  (*(v14 + 8))(v64, v62);
  v42 = v1[40];
  v41 = v1[41];
  v43 = v1[38];
  v45 = v1[36];
  v44 = v1[37];
  v46 = v1[35];
  v51 = v1[39];
  v47 = v1[27];
  swift_willThrow();
  v48 = sub_22C36BBCC();
  v68(v48);
  (v68)(v46, v47);
  (*(v44 + 8))(v43, v45);
  (*(v42 + 8))(v41, v51);

  sub_22C369A24();

  return v49();
}

uint64_t QueryDecorationSELFLogging.logSubComponentExecution<A>(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t)@<X1>, NSObject *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v142 = a3;
  v143 = a2;
  v160 = a1;
  v132 = a7;
  v145 = sub_22C905A5C();
  sub_22C369824();
  v161 = v11;
  MEMORY[0x28223BE20](v12);
  sub_22C369ABC();
  v154 = (v13 - v14);
  sub_22C369930();
  MEMORY[0x28223BE20](v15);
  sub_22C36BA64();
  v135 = v16;
  sub_22C36BA0C();
  sub_22C9063DC();
  sub_22C369824();
  v150 = v18;
  v151 = v17;
  MEMORY[0x28223BE20](v17);
  sub_22C369ABC();
  v156 = v19 - v20;
  sub_22C369930();
  MEMORY[0x28223BE20](v21);
  sub_22C36BA64();
  v138 = v22;
  v133 = a5;
  v131 = *(a5 - 8);
  MEMORY[0x28223BE20](v23);
  sub_22C369838();
  v139 = v25 - v24;
  sub_22C36BA0C();
  v26 = sub_22C90622C();
  sub_22C369824();
  v28 = v27;
  MEMORY[0x28223BE20](v29);
  sub_22C369838();
  sub_22C370654();
  v159 = sub_22C90B0EC();
  sub_22C369824();
  v162 = v30;
  MEMORY[0x28223BE20](v31);
  sub_22C369ABC();
  v152 = v32 - v33;
  sub_22C369930();
  MEMORY[0x28223BE20](v34);
  sub_22C36BA58();
  v153 = v35;
  sub_22C369930();
  MEMORY[0x28223BE20](v36);
  sub_22C36BA58();
  v155 = v37;
  sub_22C369930();
  MEMORY[0x28223BE20](v38);
  sub_22C36BA58();
  v136 = v39;
  sub_22C369930();
  MEMORY[0x28223BE20](v40);
  sub_22C36BA58();
  v134 = v41;
  sub_22C369930();
  MEMORY[0x28223BE20](v42);
  sub_22C36BA58();
  v137 = v43;
  sub_22C369930();
  MEMORY[0x28223BE20](v44);
  v46 = &v131 - v45;
  sub_22C90B10C();
  sub_22C369824();
  v148 = v48;
  v149 = v47;
  MEMORY[0x28223BE20](v47);
  sub_22C369838();
  v51 = v50 - v49;
  v147 = sub_22C90069C();
  sub_22C369824();
  v146 = v52;
  MEMORY[0x28223BE20](v53);
  sub_22C369838();
  v56 = (v55 - v54);
  sub_22C90068C();
  sub_22C90B0FC();
  v158 = v46;
  v163 = v51;
  sub_22C90B0CC();
  sub_22C90621C();
  v57 = *(a6 + 72);
  v157 = v56;
  v58 = a4;
  v59 = a4;
  v60 = a6;
  v57(v160, v56, v7, v59, a6);
  v61 = *(v28 + 8);
  v140 = v26;
  v141 = v28 + 8;
  v62 = v61(v7, v26);
  v63 = v139;
  v64 = v144;
  v143(v62);
  if (v64)
  {
    v65 = v155;
    sub_22C90B0CC();
    sub_22C90621C();
    v66 = v157;
    (*(v60 + 88))(v64, v157, v7, v58, v60);
    v67 = sub_22C3863D0();
    (v61)(v67);
    sub_22C90400C();
    v68 = v145;
    (*(v161 + 16))(v154, v160, v145);
    v69 = *(v162 + 16);
    v70 = v159;
    v69(v153, v158, v159);
    v69(v152, v65, v70);
    v71 = v64;
    v72 = sub_22C9063CC();
    LODWORD(v69) = sub_22C90AABC();

    LODWORD(v160) = v69;
    v73 = v66;
    if (os_log_type_enabled(v72, v69))
    {
      v74 = v68;
      v75 = swift_slowAlloc();
      v143 = swift_slowAlloc();
      v164 = v143;
      *v75 = 136315906;
      *(v75 + 4) = sub_22C823724("logSubComponentExecution(_:_:)");
      v142 = v72;
      *(v75 + 12) = 2080;
      sub_22C36A414();
      sub_22C82362C(v76, v77, MEMORY[0x277D20080]);
      v144 = v64;
      v66 = v154;
      v78 = sub_22C90B47C();
      v80 = v79;
      sub_22C82378C();
      v81(v66, v74);
      v82 = sub_22C36F9F4(v78, v80, &v164);

      *(v75 + 14) = v82;
      *(v75 + 22) = 2080;
      swift_getErrorValue();
      v83 = sub_22C90B57C();
      v85 = sub_22C36F9F4(v83, v84, &v164);

      *(v75 + 24) = v85;
      *(v75 + 32) = 2080;
      v86 = v73;
      v88 = v152;
      v87 = v153;
      sub_22C90B08C();
      v89 = sub_22C90B73C();
      v91 = v90;
      sub_22C37EDBC();
      v92 = v88;
      v73 = v86;
      (v66)(v92, v159);
      (v66)(v87, v159);
      v93 = sub_22C36F9F4(v89, v91, &v164);
      v70 = v159;

      *(v75 + 34) = v93;
      v94 = v142;
      _os_log_impl(&dword_22C366000, v142, v160, "[%s] FAILURE subComponent=%s, error=%s, executionTime=%s", v75, 0x2Au);
      swift_arrayDestroy();
      sub_22C369B50();
      MEMORY[0x2318B9880]();
      sub_22C369B50();
      MEMORY[0x2318B9880]();
    }

    else
    {

      sub_22C37EDBC();
      (v66)(v152, v70);
      (v66)(v153, v70);
      sub_22C82378C();
      v121(v154, v68);
    }

    (*(v150 + 8))(v156, v151);
    swift_willThrow();
    (v66)(v155, v70);
    v122 = sub_22C37B988();
    v66(v122);
    (*(v148 + 8))(v163, v149);
    sub_22C823684();
    return v123(v73, v147);
  }

  else
  {
    v144 = 0;
    (*(v131 + 32))(v132, v63, v133);
    v95 = v137;
    sub_22C90B0CC();
    sub_22C90621C();
    (*(a6 + 80))(v157, v7, v58, a6);
    v96 = sub_22C3863D0();
    (v61)(v96);
    sub_22C90400C();
    v97 = v135;
    v98 = v145;
    (*(v161 + 16))(v135, v160, v145);
    v99 = *(v162 + 16);
    v100 = v158;
    v101 = v159;
    v99(v134, v158, v159);
    v99(v136, v95, v101);
    v102 = sub_22C9063CC();
    v103 = sub_22C90AABC();
    if (os_log_type_enabled(v102, v103))
    {
      sub_22C370220();
      v104 = swift_slowAlloc();
      v160 = swift_slowAlloc();
      v164 = v160;
      *v104 = 136315650;
      *(v104 + 4) = sub_22C823724("logSubComponentExecution(_:_:)");
      LODWORD(v156) = v103;
      *(v104 + 12) = 2080;
      sub_22C36A414();
      sub_22C82362C(v105, v106, MEMORY[0x277D20080]);
      v107 = sub_22C90B47C();
      v109 = v108;
      sub_22C82378C();
      v110();
      v111 = sub_22C36F9F4(v107, v109, &v164);

      *(v104 + 14) = v111;
      *(v104 + 22) = 2080;
      v112 = v136;
      sub_22C90B08C();
      v113 = sub_22C90B73C();
      v115 = v114;
      v116 = *(v162 + 8);
      v116(v112, v101);
      v117 = sub_22C37B988();
      (v116)(v117);
      v118 = sub_22C36F9F4(v113, v115, &v164);

      *(v104 + 24) = v118;
      _os_log_impl(&dword_22C366000, v102, v156, "[%s] SUCCESS subComponent=%s, executionTime=%s", v104, 0x20u);
      swift_arrayDestroy();
      sub_22C369B50();
      MEMORY[0x2318B9880]();
      sub_22C369B50();
      MEMORY[0x2318B9880]();

      v119 = sub_22C823760();
      v120(v119);
      v116(v137, v101);
      v116(v158, v101);
    }

    else
    {

      v125 = *(v162 + 8);
      v125(v136, v101);
      v126 = sub_22C37B988();
      (v125)(v126);
      sub_22C82378C();
      v127(v97, v98);
      v128 = sub_22C823760();
      v129(v128);
      v125(v137, v101);
      v125(v100, v101);
    }

    (*(v148 + 8))(v163, v149);
    sub_22C823684();
    return v130(v157, v147);
  }
}

void sub_22C814A1C()
{
  sub_22C36BA7C();
  v2 = v1;
  v4 = v3;
  sub_22C3727F4();
  sub_22C90292C();
  sub_22C369824();
  MEMORY[0x28223BE20](v5);
  sub_22C369838();
  sub_22C37BDA4();
  v6 = sub_22C90069C();
  sub_22C369824();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  sub_22C369838();
  v12 = v11 - v10;
  v2(0);
  swift_allocObject();
  (*(v8 + 16))(v12, v4, v6);
  v13 = sub_22C36EBF0();
  v14(v13);
  DecorationSELFLoggerASync = type metadata accessor for QueryDecorationSELFLoggerASync();
  swift_allocObject();
  sub_22C822148();
  v0[3] = DecorationSELFLoggerASync;
  v0[4] = &off_283FC0F88;
  *v0 = v16;
  sub_22C36CC48();
}

uint64_t sub_22C814C30(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 24) = a1;
}

uint64_t QueryDecorationCapturingSELFLoggerBuilder.__allocating_init()()
{
  v0 = swift_allocObject();
  QueryDecorationCapturingSELFLoggerBuilder.init()();
  return v0;
}

uint64_t QueryDecorationCapturingSELFLoggerBuilder.init()()
{
  v1 = [objc_allocWithZone(MEMORY[0x277CCAAF8]) init];
  v2 = MEMORY[0x277D84F90];
  *(v0 + 16) = v1;
  *(v0 + 24) = v2;
  return v0;
}

void sub_22C814D3C(uint64_t a1, uint64_t a2)
{
  sub_22C3727F4();
  v5 = sub_22C90292C();
  sub_22C369824();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  sub_22C369838();
  sub_22C37B6BC();
  sub_22C90069C();
  sub_22C369824();
  MEMORY[0x28223BE20](v9);
  sub_22C369838();
  sub_22C370654();
  v10 = sub_22C3819EC();
  v11(v10);
  (*(v7 + 16))(v3, a2, v5);
  DecorationSELFLoggerSync = type metadata accessor for QueryDecorationSELFLoggerSync(0);
  swift_allocObject();

  sub_22C822348();
  v2[3] = DecorationSELFLoggerSync;
  v2[4] = &off_283FC0F08;
  *v2 = v13;
}

uint64_t sub_22C814F20(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  sub_22C3D1028();
  v4 = *(*(a1 + 24) + 16);
  sub_22C3D11EC(v4);
  v5 = *(a1 + 24);
  *(v5 + 16) = v4 + 1;
  v6 = sub_22C9061AC();
  (*(*(v6 - 8) + 16))(v5 + ((*(*(v6 - 8) + 80) + 32) & ~*(*(v6 - 8) + 80)) + *(*(v6 - 8) + 72) * v4, a2, v6);
  *(a1 + 24) = v5;
  return swift_endAccess();
}

uint64_t QueryDecorationCapturingSELFLoggerBuilder.__deallocating_deinit()
{
  QueryDecorationCapturingSELFLoggerBuilder.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_22C815124()
{
  v0 = sub_22C9063DC();
  MEMORY[0x28223BE20](v0);
  sub_22C9061FC();
  sub_22C82362C(&qword_2814356E8, MEMORY[0x277D20350], MEMORY[0x277D20348]);
  return sub_22C90620C();
}

uint64_t sub_22C8153D4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v105 = a1;
  v103 = a2;
  v2 = sub_22C903D4C();
  v104 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v101 = &v89[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_22C3A5908(&qword_27D9C0580, &qword_22C927FC8);
  v5 = MEMORY[0x28223BE20](v4);
  v94 = &v89[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = MEMORY[0x28223BE20](v5);
  v99 = &v89[-v8];
  v9 = MEMORY[0x28223BE20](v7);
  v98 = &v89[-v10];
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v89[-v12];
  MEMORY[0x28223BE20](v11);
  v15 = &v89[-v14];
  v16 = sub_22C3A5908(&qword_27D9C0588, &qword_22C927FD0);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v92 = &v89[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = MEMORY[0x28223BE20](v17);
  v100 = &v89[-v20];
  v21 = MEMORY[0x28223BE20](v19);
  v93 = &v89[-v22];
  v23 = MEMORY[0x28223BE20](v21);
  v102 = &v89[-v24];
  v25 = MEMORY[0x28223BE20](v23);
  v95 = &v89[-v26];
  v27 = MEMORY[0x28223BE20](v25);
  v97 = &v89[-v28];
  v29 = MEMORY[0x28223BE20](v27);
  v96 = &v89[-v30];
  v31 = MEMORY[0x28223BE20](v29);
  v33 = &v89[-v32];
  v34 = MEMORY[0x28223BE20](v31);
  v36 = &v89[-v35];
  v37 = MEMORY[0x28223BE20](v34);
  v39 = &v89[-v38];
  MEMORY[0x28223BE20](v37);
  v41 = &v89[-v40];
  sub_22C3DB138(v105, &v89[-v40], &qword_27D9C0588, &qword_22C927FD0);
  sub_22C9034FC();
  sub_22C36C640(v39, 0, 1, v2);
  v105 = v4;
  v42 = *(v4 + 48);
  sub_22C3DB138(v39, v15, &qword_27D9C0588, &qword_22C927FD0);
  sub_22C3DB138(v41, &v15[v42], &qword_27D9C0588, &qword_22C927FD0);
  if (sub_22C370B74(v15, 1, v2) != 1)
  {
    sub_22C3DB138(v15, v36, &qword_27D9C0588, &qword_22C927FD0);
    if (sub_22C370B74(&v15[v42], 1, v2) != 1)
    {
      v54 = v104;
      v55 = v101;
      (*(v104 + 32))(v101, &v15[v42], v2);
      sub_22C82362C(&qword_281435730, MEMORY[0x277D1F0F8], MEMORY[0x277D1F100]);
      v90 = sub_22C90A0BC();
      v91 = v41;
      v56 = *(v54 + 8);
      v56(v55, v2);
      sub_22C36DD28(v39, &qword_27D9C0588, &qword_22C927FD0);
      v56(v36, v2);
      v41 = v91;
      sub_22C36DD28(v15, &qword_27D9C0588, &qword_22C927FD0);
      if (v90)
      {
        goto LABEL_17;
      }

LABEL_7:
      sub_22C9034BC();
      sub_22C36C640(v33, 0, 1, v2);
      v43 = *(v105 + 48);
      sub_22C3DB138(v33, v13, &qword_27D9C0588, &qword_22C927FD0);
      sub_22C3DB138(v41, &v13[v43], &qword_27D9C0588, &qword_22C927FD0);
      if (sub_22C370B74(v13, 1, v2) == 1)
      {
        sub_22C36DD28(v33, &qword_27D9C0588, &qword_22C927FD0);
        v44 = sub_22C370B74(&v13[v43], 1, v2);
        v45 = v102;
        if (v44 == 1)
        {
          sub_22C36DD28(v13, &qword_27D9C0588, &qword_22C927FD0);
LABEL_25:
          sub_22C36DD28(v41, &qword_27D9C0588, &qword_22C927FD0);
          v57 = MEMORY[0x277D20260];
          goto LABEL_40;
        }
      }

      else
      {
        v46 = v96;
        sub_22C3DB138(v13, v96, &qword_27D9C0588, &qword_22C927FD0);
        if (sub_22C370B74(&v13[v43], 1, v2) != 1)
        {
          v63 = v104;
          v64 = v101;
          (*(v104 + 32))(v101, &v13[v43], v2);
          sub_22C82362C(&qword_281435730, MEMORY[0x277D1F0F8], MEMORY[0x277D1F100]);
          v65 = sub_22C90A0BC();
          v66 = *(v63 + 8);
          v66(v64, v2);
          sub_22C36DD28(v33, &qword_27D9C0588, &qword_22C927FD0);
          v66(v46, v2);
          sub_22C36DD28(v13, &qword_27D9C0588, &qword_22C927FD0);
          v45 = v102;
          if (v65)
          {
            goto LABEL_25;
          }

LABEL_13:
          v47 = v97;
          sub_22C9034CC();
          sub_22C36C640(v47, 0, 1, v2);
          v48 = *(v105 + 48);
          v49 = v98;
          sub_22C3DB138(v47, v98, &qword_27D9C0588, &qword_22C927FD0);
          v50 = v49;
          sub_22C3DB138(v41, &v49[v48], &qword_27D9C0588, &qword_22C927FD0);
          if (sub_22C370B74(v49, 1, v2) == 1)
          {
            sub_22C36DD28(v47, &qword_27D9C0588, &qword_22C927FD0);
            v51 = sub_22C370B74(&v49[v48], 1, v2);
            v52 = v99;
            v53 = v100;
            if (v51 == 1)
            {
              sub_22C36DD28(v49, &qword_27D9C0588, &qword_22C927FD0);
LABEL_33:
              sub_22C36DD28(v41, &qword_27D9C0588, &qword_22C927FD0);
              v57 = MEMORY[0x277D20258];
              goto LABEL_40;
            }
          }

          else
          {
            v58 = v49;
            v59 = v95;
            sub_22C3DB138(v58, v95, &qword_27D9C0588, &qword_22C927FD0);
            v60 = sub_22C370B74(v50 + v48, 1, v2);
            v52 = v99;
            v61 = v100;
            if (v60 != 1)
            {
              v70 = v104;
              v71 = v101;
              (*(v104 + 32))(v101, v50 + v48, v2);
              sub_22C82362C(&qword_281435730, MEMORY[0x277D1F0F8], MEMORY[0x277D1F100]);
              LODWORD(v96) = sub_22C90A0BC();
              v72 = v59;
              v73 = *(v70 + 8);
              v73(v71, v2);
              sub_22C36DD28(v47, &qword_27D9C0588, &qword_22C927FD0);
              v73(v72, v2);
              v45 = v102;
              sub_22C36DD28(v50, &qword_27D9C0588, &qword_22C927FD0);
              v53 = v61;
              if (v96)
              {
                goto LABEL_33;
              }

LABEL_21:
              sub_22C9034EC();
              sub_22C36C640(v45, 0, 1, v2);
              v62 = *(v105 + 48);
              sub_22C3DB138(v45, v52, &qword_27D9C0588, &qword_22C927FD0);
              sub_22C3DB138(v41, v52 + v62, &qword_27D9C0588, &qword_22C927FD0);
              if (sub_22C370B74(v52, 1, v2) == 1)
              {
                sub_22C36DD28(v45, &qword_27D9C0588, &qword_22C927FD0);
                if (sub_22C370B74(v52 + v62, 1, v2) == 1)
                {
                  sub_22C36DD28(v52, &qword_27D9C0588, &qword_22C927FD0);
LABEL_39:
                  sub_22C36DD28(v41, &qword_27D9C0588, &qword_22C927FD0);
                  v57 = MEMORY[0x277D20268];
                  goto LABEL_40;
                }
              }

              else
              {
                v67 = v93;
                sub_22C3DB138(v52, v93, &qword_27D9C0588, &qword_22C927FD0);
                if (sub_22C370B74(v52 + v62, 1, v2) != 1)
                {
                  v76 = v45;
                  v77 = v104;
                  v78 = v101;
                  (*(v104 + 32))(v101, v52 + v62, v2);
                  sub_22C82362C(&qword_281435730, MEMORY[0x277D1F0F8], MEMORY[0x277D1F100]);
                  LODWORD(v102) = sub_22C90A0BC();
                  v79 = *(v77 + 8);
                  v79(v78, v2);
                  sub_22C36DD28(v76, &qword_27D9C0588, &qword_22C927FD0);
                  v79(v67, v2);
                  sub_22C36DD28(v52, &qword_27D9C0588, &qword_22C927FD0);
                  if (v102)
                  {
                    goto LABEL_39;
                  }

LABEL_29:
                  sub_22C90349C();
                  sub_22C36C640(v53, 0, 1, v2);
                  v68 = *(v105 + 48);
                  v69 = v94;
                  sub_22C3DB138(v53, v94, &qword_27D9C0588, &qword_22C927FD0);
                  sub_22C3DB08C(v41, &v69[v68], &qword_27D9C0588, &qword_22C927FD0);
                  if (sub_22C370B74(v69, 1, v2) == 1)
                  {
                    sub_22C36DD28(v53, &qword_27D9C0588, &qword_22C927FD0);
                    if (sub_22C370B74(&v69[v68], 1, v2) == 1)
                    {
                      sub_22C36DD28(v69, &qword_27D9C0588, &qword_22C927FD0);
LABEL_43:
                      v75 = v103;
                      *v103 = 0;
                      goto LABEL_44;
                    }
                  }

                  else
                  {
                    v74 = v92;
                    sub_22C3DB138(v69, v92, &qword_27D9C0588, &qword_22C927FD0);
                    if (sub_22C370B74(&v69[v68], 1, v2) != 1)
                    {
                      v83 = v104;
                      v84 = v101;
                      (*(v104 + 32))(v101, &v69[v68], v2);
                      sub_22C82362C(&qword_281435730, MEMORY[0x277D1F0F8], MEMORY[0x277D1F100]);
                      v85 = sub_22C90A0BC();
                      v86 = *(v83 + 8);
                      v86(v84, v2);
                      sub_22C36DD28(v53, &qword_27D9C0588, &qword_22C927FD0);
                      v86(v74, v2);
                      sub_22C36DD28(v69, &qword_27D9C0588, &qword_22C927FD0);
                      if (v85)
                      {
                        goto LABEL_43;
                      }

LABEL_37:
                      v75 = v103;
                      *v103 = 1;
LABEL_44:
                      v87 = *MEMORY[0x277D20270];
                      v88 = sub_22C90618C();
                      return (*(*(v88 - 8) + 104))(v75, v87, v88);
                    }

                    sub_22C36DD28(v53, &qword_27D9C0588, &qword_22C927FD0);
                    (*(v104 + 8))(v74, v2);
                  }

                  sub_22C36DD28(v69, &qword_27D9C0580, &qword_22C927FC8);
                  goto LABEL_37;
                }

                sub_22C36DD28(v45, &qword_27D9C0588, &qword_22C927FD0);
                (*(v104 + 8))(v67, v2);
              }

              sub_22C36DD28(v52, &qword_27D9C0580, &qword_22C927FC8);
              goto LABEL_29;
            }

            sub_22C36DD28(v47, &qword_27D9C0588, &qword_22C927FD0);
            (*(v104 + 8))(v59, v2);
            v53 = v61;
          }

          sub_22C36DD28(v50, &qword_27D9C0580, &qword_22C927FC8);
          goto LABEL_21;
        }

        sub_22C36DD28(v33, &qword_27D9C0588, &qword_22C927FD0);
        (*(v104 + 8))(v46, v2);
        v45 = v102;
      }

      sub_22C36DD28(v13, &qword_27D9C0580, &qword_22C927FC8);
      goto LABEL_13;
    }

    sub_22C36DD28(v39, &qword_27D9C0588, &qword_22C927FD0);
    (*(v104 + 8))(v36, v2);
LABEL_6:
    sub_22C36DD28(v15, &qword_27D9C0580, &qword_22C927FC8);
    goto LABEL_7;
  }

  sub_22C36DD28(v39, &qword_27D9C0588, &qword_22C927FD0);
  if (sub_22C370B74(&v15[v42], 1, v2) != 1)
  {
    goto LABEL_6;
  }

  sub_22C36DD28(v15, &qword_27D9C0588, &qword_22C927FD0);
LABEL_17:
  sub_22C36DD28(v41, &qword_27D9C0588, &qword_22C927FD0);
  v57 = MEMORY[0x277D20250];
LABEL_40:
  v80 = *v57;
  v81 = sub_22C90618C();
  return (*(*(v81 - 8) + 104))(v103, v80, v81);
}

uint64_t sub_22C81631C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_22C3A5908(&qword_27D9C0578, &qword_22C927FC0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = (&v22 - v5);
  v7 = sub_22C9061AC();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22C905F2C();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22C905E8C();
  MEMORY[0x2318B33E0](1);
  sub_22C37CA7C(a1, v10);
  v15 = swift_allocBox();
  (*(v12 + 16))(v16, v14, v11);
  *v6 = v15;
  v17 = *MEMORY[0x277D200B0];
  v18 = sub_22C905CEC();
  (*(*(v18 - 8) + 104))(v6, v17, v18);
  sub_22C36C640(v6, 0, 1, v18);
  sub_22C905C6C();
  v19 = v2[5];
  v20 = v2[6];
  sub_22C374168(v2 + 2, v19);
  (*(v20 + 8))(v10, v19, v20);
  (*(v8 + 8))(v10, v7);
  return (*(v12 + 8))(v14, v11);
}

uint64_t sub_22C8165C4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v23 = a2;
  v4 = sub_22C3A5908(&qword_27D9C0578, &qword_22C927FC0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = (&v23 - v5);
  v7 = sub_22C9061AC();
  v24 = *(v7 - 8);
  v25 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22C905CCC();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_22C9002FC();
  sub_22C905CBC();
  v15 = [v14 domain];
  sub_22C90A11C();

  sub_22C905C9C();
  result = [v14 code];
  if (result < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (result <= 0x7FFFFFFF)
  {
    v26 = 0;
    sub_22C905CAC();
    sub_22C37CA7C(v23, v9);
    v17 = swift_allocBox();
    (*(v11 + 16))(v18, v13, v10);
    *v6 = v17;
    v19 = *MEMORY[0x277D200B8];
    v20 = sub_22C905CEC();
    (*(*(v20 - 8) + 104))(v6, v19, v20);
    sub_22C36C640(v6, 0, 1, v20);
    sub_22C905C6C();
    v21 = v3[5];
    v22 = v3[6];
    sub_22C374168(v3 + 2, v21);
    (*(v22 + 8))(v9, v21, v22);

    (*(v24 + 8))(v9, v25);
    return (*(v11 + 8))(v13, v10);
  }

  __break(1u);
  return result;
}

uint64_t sub_22C8168F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v97 = a4;
  v91 = a3;
  v6 = sub_22C3A5908(&qword_27D9C0570, &qword_22C927FB8);
  MEMORY[0x28223BE20](v6 - 8);
  v96 = &v85 - v7;
  v99 = sub_22C9061AC();
  v98 = *(v99 - 8);
  MEMORY[0x28223BE20](v99);
  v95 = &v85 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = sub_22C905B4C();
  v88 = *(v110 - 8);
  MEMORY[0x28223BE20](v110);
  v109 = &v85 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = sub_22C9037EC();
  v113 = *(v108 - 8);
  MEMORY[0x28223BE20](v108);
  v107 = &v85 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22C3A5908(&qword_27D9BD290, &qword_22C917EC0);
  MEMORY[0x28223BE20](v11 - 8);
  v89 = &v85 - v12;
  v100 = sub_22C903F4C();
  v94 = *(v100 - 8);
  MEMORY[0x28223BE20](v100);
  v93 = &v85 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = sub_22C90613C();
  v112 = *(v104 - 8);
  MEMORY[0x28223BE20](v104);
  v111 = &v85 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = sub_22C90399C();
  v87 = *(v103 - 8);
  MEMORY[0x28223BE20](v103);
  v102 = &v85 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = sub_22C905E6C();
  v16 = *(v123 - 8);
  MEMORY[0x28223BE20](v123);
  v122 = (&v85 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = sub_22C3A5908(&qword_27D9BE618, &qword_22C9262C0);
  v19 = MEMORY[0x28223BE20](v18 - 8);
  v106 = &v85 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v22 = &v85 - v21;
  v124 = sub_22C90625C();
  v119 = *(v124 - 8);
  v23 = MEMORY[0x28223BE20](v124);
  v105 = &v85 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v121 = &v85 - v25;
  v120 = sub_22C9039FC();
  v26 = *(v120 - 1);
  MEMORY[0x28223BE20](v120);
  v28 = &v85 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = sub_22C905D7C();
  v90 = *(v92 - 8);
  MEMORY[0x28223BE20](v92);
  v30 = &v85 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22C905D6C();
  v101 = v30;
  if (a1)
  {
    v86 = a2;
    v31 = *(a1 + 16);
    if (v31)
    {
      v32 = v26 + 16;
      v116 = *(v26 + 16);
      v117 = OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntimeP33_F747242BE1E17047CD31B26B8C3A7DAD29QueryDecorationSELFLoggerSync_loggingScope;
      v33 = a1 + ((*(v26 + 80) + 32) & ~*(v26 + 80));
      v34 = *(v32 + 56);
      v35 = (v16 + 8);
      v118 = v32;
      v36 = (v32 - 8);
      v114 = (v119 + 32);
      v115 = v34;
      v37 = MEMORY[0x277D84F90];
      do
      {
        v38 = v120;
        v116(v28, v33, v120);
        v39 = v122;
        sub_22C81771C(v122);
        sub_22C905AFC();
        (*v35)(v39, v123);
        (*v36)(v28, v38);
        v40 = v124;
        if (sub_22C370B74(v22, 1, v124) == 1)
        {
          sub_22C36DD28(v22, &qword_27D9BE618, &qword_22C9262C0);
        }

        else
        {
          v41 = *v114;
          (*v114)(v121, v22, v40);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_22C594814();
            v37 = v43;
          }

          v42 = *(v37 + 16);
          if (v42 >= *(v37 + 24) >> 1)
          {
            sub_22C594814();
            v37 = v44;
          }

          *(v37 + 16) = v42 + 1;
          v41(v37 + ((*(v119 + 80) + 32) & ~*(v119 + 80)) + *(v119 + 72) * v42, v121, v124);
        }

        v33 += v115;
        --v31;
      }

      while (v31);
    }

    v30 = v101;
    sub_22C905D4C();
    a2 = v86;
  }

  if (a2)
  {

    result = sub_22C812750(10, a2, sub_22C88842C, sub_22C60616C);
    v49 = (v48 >> 1) - v47;
    v121 = result;
    if (v48 >> 1 != v47)
    {
      if ((v48 >> 1) <= v47)
      {
        __break(1u);
        return result;
      }

      v123 = OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntimeP33_F747242BE1E17047CD31B26B8C3A7DAD29QueryDecorationSELFLoggerSync_loggingScope;
      v122 = *(v87 + 16);
      v68 = *(v87 + 72);
      v69 = (v87 + 8);
      v70 = v46 + v47 * v68;
      v71 = MEMORY[0x277D84F90];
      do
      {
        v72 = v102;
        v73 = v103;
        (v122)(v102, v70, v103);
        sub_22C817DD8(v125 + v123);
        (*v69)(v72, v73);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_22C5965CC();
          v71 = v75;
        }

        v74 = *(v71 + 16);
        if (v74 >= *(v71 + 24) >> 1)
        {
          sub_22C5965CC();
          v71 = v76;
        }

        *(v71 + 16) = v74 + 1;
        (*(v112 + 32))(v71 + ((*(v112 + 80) + 32) & ~*(v112 + 80)) + *(v112 + 72) * v74, v111, v104);
        v70 += v68;
        --v49;
      }

      while (v49);
    }

    swift_unknownObjectRelease();
    v30 = v101;
    sub_22C905D5C();
  }

  v50 = v89;
  sub_22C3DB138(v91, v89, &qword_27D9BD290, &qword_22C917EC0);
  v51 = v100;
  if (sub_22C370B74(v50, 1, v100) == 1)
  {
    sub_22C36DD28(v50, &qword_27D9BD290, &qword_22C917EC0);
  }

  else
  {
    (*(v94 + 32))(v93, v50, v51);
    v52 = sub_22C903F1C();
    v53 = *(v52 + 16);
    if (v53)
    {
      v122 = *(v113 + 16);
      v123 = OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntimeP33_F747242BE1E17047CD31B26B8C3A7DAD29QueryDecorationSELFLoggerSync_loggingScope;
      v54 = *(v113 + 80);
      v118 = v52;
      v55 = v52 + ((v54 + 32) & ~v54);
      v121 = *(v113 + 72);
      v56 = (v88 + 8);
      v113 += 16;
      v57 = (v113 - 8);
      v120 = (v119 + 32);
      v58 = MEMORY[0x277D84F90];
      do
      {
        v59 = v107;
        v60 = v108;
        (v122)(v107, v55, v108);
        v61 = v109;
        sub_22C8182B0(v125 + v123);
        v62 = v106;
        sub_22C905AFC();
        (*v56)(v61, v110);
        (*v57)(v59, v60);
        v63 = v124;
        if (sub_22C370B74(v62, 1, v124) == 1)
        {
          sub_22C36DD28(v62, &qword_27D9BE618, &qword_22C9262C0);
        }

        else
        {
          v64 = *v120;
          (*v120)(v105, v62, v63);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_22C594814();
            v58 = v66;
          }

          v65 = *(v58 + 16);
          if (v65 >= *(v58 + 24) >> 1)
          {
            sub_22C594814();
            v58 = v67;
          }

          *(v58 + 16) = v65 + 1;
          v64(v58 + ((*(v119 + 80) + 32) & ~*(v119 + 80)) + *(v119 + 72) * v65, v105, v63);
        }

        v55 += v121;
        --v53;
      }

      while (v53);

      v51 = v100;
      v30 = v101;
    }

    else
    {
    }

    sub_22C905D3C();
    (*(v94 + 8))(v93, v51);
  }

  v77 = v95;
  v78 = v125;
  sub_22C37CA7C(v97, v95);
  v79 = v90;
  v80 = v96;
  v81 = v92;
  (*(v90 + 16))(v96, v30, v92);
  sub_22C36C640(v80, 0, 1, v81);
  sub_22C905C7C();
  v82 = v30;
  v83 = v78[5];
  v84 = v78[6];
  sub_22C374168(v78 + 2, v83);
  (*(v84 + 8))(v77, v83, v84);
  (*(v98 + 8))(v77, v99);
  return (*(v79 + 8))(v82, v81);
}

uint64_t sub_22C81771C@<X0>(uint64_t a2@<X8>)
{
  v56 = sub_22C90361C();
  v53 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v55 = v48 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_22C905A2C();
  v57 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v50 = v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22C3A5908(&qword_27D9C0558, &qword_22C927FA0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = (v48 - v6);
  v8 = sub_22C3A5908(&qword_27D9BB908, &qword_22C910960);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v48 - v9;
  v11 = sub_22C3A5908(&qword_27D9C0548, &qword_22C927F90);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = v48 - v12;
  v14 = sub_22C3A5908(&qword_27D9BB190, qword_22C90DD90);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v17 = v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = v48 - v18;
  v20 = sub_22C3A5908(&qword_27D9BE618, &qword_22C9262C0);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = v48 - v21;
  sub_22C905E5C();
  SpanMatchedEntity.getQueryDecorationLogUniqueId(loggingScope:)();
  v23 = sub_22C90069C();
  v24 = sub_22C370B74(v19, 1, v23);
  v51 = a2;
  if (v24 == 1)
  {
    sub_22C36DD28(v19, &qword_27D9BB190, qword_22C90DD90);
    v25 = 1;
  }

  else
  {
    sub_22C90624C();
    v26 = *(v23 - 8);
    (*(v26 + 16))(v17, v19, v23);
    sub_22C36C640(v17, 0, 1, v23);
    sub_22C90623C();
    (*(v26 + 8))(v19, v23);
    v25 = 0;
  }

  v27 = sub_22C90625C();
  sub_22C36C640(v22, v25, 1, v27);
  sub_22C905A7C();
  sub_22C9039CC();
  v28 = sub_22C9093BC();
  v29 = sub_22C370B74(v10, 1, v28);
  v30 = v50;
  if (v29 == 1)
  {
    sub_22C36DD28(v10, &qword_27D9BB908, &qword_22C910960);
    v31 = 1;
  }

  else
  {
    TypedValue.toQDLog()();
    (*(*(v28 - 8) + 8))(v10, v28);
    v31 = 0;
  }

  v32 = sub_22C90599C();
  sub_22C36C640(v13, v31, 1, v32);
  sub_22C905E4C();
  v33 = sub_22C9039DC();
  v34 = *(v33 + 16);
  if (v34)
  {
    v49 = v7;
    v58 = MEMORY[0x277D84F90];
    sub_22C3B7E04(0, v34, 0);
    v35 = v53 + 16;
    v36 = *(v53 + 16);
    v37 = *(v53 + 80);
    v48[1] = v33;
    v38 = v33 + ((v37 + 32) & ~v37);
    v52 = *(v53 + 72);
    v53 = v36;
    v39 = (v35 - 8);
    v40 = v58;
    do
    {
      v41 = v55;
      v42 = v56;
      (v53)(v55, v38, v56);
      sub_22C81E08C();
      (*v39)(v41, v42);
      v58 = v40;
      v44 = *(v40 + 16);
      v43 = *(v40 + 24);
      if (v44 >= v43 >> 1)
      {
        sub_22C3B7E04(v43 > 1, v44 + 1, 1);
        v40 = v58;
      }

      *(v40 + 16) = v44 + 1;
      (*(v57 + 32))(v40 + ((*(v57 + 80) + 32) & ~*(v57 + 80)) + *(v57 + 72) * v44, v30, v54);
      v38 += v52;
      --v34;
    }

    while (v34);

    v7 = v49;
  }

  else
  {
  }

  sub_22C905E3C();
  *v7 = -1;
  v45 = *MEMORY[0x277D20208];
  v46 = sub_22C905F3C();
  (*(*(v46 - 8) + 104))(v7, v45, v46);
  sub_22C36C640(v7, 0, 1, v46);
  return sub_22C905E0C();
}

uint64_t sub_22C817DD8(uint64_t a1)
{
  v1 = sub_22C90355C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v37 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_22C3A5908(&qword_27D9C0550, &qword_22C927F98);
  MEMORY[0x28223BE20](v4 - 8);
  v36 = (&v34 - v5);
  v6 = sub_22C3A5908(&qword_27D9BB908, &qword_22C910960);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v34 - v7;
  v9 = sub_22C3A5908(&qword_27D9C0548, &qword_22C927F90);
  MEMORY[0x28223BE20](v9 - 8);
  v35 = &v34 - v10;
  v11 = sub_22C3A5908(&qword_27D9BB190, qword_22C90DD90);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v34 - v15;
  v17 = sub_22C3A5908(&qword_27D9BE618, &qword_22C9262C0);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v34 - v18;
  sub_22C90612C();
  RetrievedContext.getQueryDecorationLogUniqueId(loggingScope:)(v16);
  v20 = sub_22C90069C();
  if (sub_22C370B74(v16, 1, v20) == 1)
  {
    sub_22C36DD28(v16, &qword_27D9BB190, qword_22C90DD90);
    v21 = 1;
  }

  else
  {
    sub_22C90624C();
    v22 = *(v20 - 8);
    v34 = v2;
    v23 = v22;
    (*(v22 + 16))(v14, v16, v20);
    sub_22C36C640(v14, 0, 1, v20);
    sub_22C90623C();
    (*(v23 + 8))(v16, v20);
    v2 = v34;
    v21 = 0;
  }

  v24 = sub_22C90625C();
  sub_22C36C640(v19, v21, 1, v24);
  sub_22C905A7C();
  sub_22C90391C();
  v25 = sub_22C9093BC();
  v26 = sub_22C370B74(v8, 1, v25);
  v27 = v35;
  if (v26 == 1)
  {
    sub_22C36DD28(v8, &qword_27D9BB908, &qword_22C910960);
    v28 = 1;
  }

  else
  {
    TypedValue.toQDLog()();
    (*(*(v25 - 8) + 8))(v8, v25);
    v28 = 0;
  }

  v29 = sub_22C90599C();
  sub_22C36C640(v27, v28, 1, v29);
  sub_22C90611C();
  v30 = v37;
  sub_22C90394C();
  v31 = v36;
  sub_22C81F174(v36);
  (*(v2 + 8))(v30, v1);
  v32 = sub_22C905D8C();
  sub_22C36C640(v31, 0, 1, v32);
  return sub_22C9060FC();
}

uint64_t sub_22C8182B0(uint64_t a1)
{
  v3 = sub_22C3A5908(&qword_27D9C0520, &qword_22C927F60);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v46 - v4;
  v6 = sub_22C3A5908(&qword_27D9C0528, &unk_22C927F68);
  MEMORY[0x28223BE20](v6 - 8);
  v53 = &v46 - v7;
  v8 = sub_22C3A5908(&qword_27D9BC1E8, &qword_22C9123B0);
  MEMORY[0x28223BE20](v8 - 8);
  v50 = &v46 - v9;
  v10 = sub_22C3A5908(&qword_27D9C0530, &qword_22C927F78);
  MEMORY[0x28223BE20](v10 - 8);
  v51 = &v46 - v11;
  v12 = sub_22C3A5908(&qword_27D9C0538, &qword_22C927F80);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v46 - v13;
  v49 = sub_22C9036EC();
  v15 = *(v49 - 8);
  v16 = MEMORY[0x28223BE20](v49);
  v48 = &v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v19 = &v46 - v18;
  v20 = sub_22C3A5908(&qword_27D9BB190, qword_22C90DD90);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v23 = &v46 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = &v46 - v24;
  v26 = sub_22C3A5908(&qword_27D9BE618, &qword_22C9262C0);
  MEMORY[0x28223BE20](v26 - 8);
  v28 = &v46 - v27;
  sub_22C905B3C();
  v52 = v1;
  RetrievedTool.getQueryDecorationLogUniqueId(loggingScope:)(a1);
  v29 = sub_22C90069C();
  if (sub_22C370B74(v25, 1, v29) == 1)
  {
    sub_22C36DD28(v25, &qword_27D9BB190, qword_22C90DD90);
    v30 = 1;
  }

  else
  {
    sub_22C90624C();
    v31 = *(v29 - 8);
    v47 = v5;
    v32 = v31;
    (*(v31 + 16))(v23, v25, v29);
    sub_22C36C640(v23, 0, 1, v29);
    sub_22C90623C();
    (*(v32 + 8))(v25, v29);
    v5 = v47;
    v30 = 0;
  }

  v33 = sub_22C90625C();
  sub_22C36C640(v28, v30, 1, v33);
  sub_22C905A7C();
  sub_22C90371C();
  RetrievedTool.Definition.toCandidateIdentifier()();
  v34 = *(v15 + 8);
  v35 = v49;
  v34(v19, v49);

  sub_22C905B1C();
  sub_22C90371C();
  sub_22C81F7E4(v14);
  v34(v19, v35);
  v36 = sub_22C905A3C();
  sub_22C36C640(v14, 0, 1, v36);
  sub_22C905B2C();
  sub_22C90373C();
  LOBYTE(v54) = 0;
  sub_22C905ADC();
  v37 = v48;
  sub_22C90371C();
  v38 = v50;
  sub_22C9036BC();
  v34(v37, v35);
  v39 = sub_22C908EAC();
  if (sub_22C370B74(v38, 1, v39) == 1)
  {
    sub_22C36DD28(v38, &qword_27D9BC1E8, &qword_22C9123B0);
    v40 = 1;
    v41 = v51;
  }

  else
  {
    v41 = v51;
    sub_22C81F9B4(v51);
    (*(*(v39 - 8) + 8))(v38, v39);
    v40 = 0;
  }

  v42 = sub_22C905BFC();
  sub_22C36C640(v41, v40, 1, v42);
  sub_22C905ACC();
  v43 = sub_22C90608C();
  sub_22C36C640(v53, 1, 1, v43);
  sub_22C905AEC();
  v44 = sub_22C9059AC();
  sub_22C36C640(v5, 1, 1, v44);
  return sub_22C905ABC();
}

uint64_t sub_22C818914(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v84 = a4;
  v85 = a3;
  v87 = a2;
  v76 = sub_22C905B4C();
  v100 = *(v76 - 8);
  MEMORY[0x28223BE20](v76);
  v99 = &v75 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22C3A5908(&qword_27D9C0518, &qword_22C927F58);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v75 - v7;
  v9 = sub_22C9061AC();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v75 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = sub_22C90613C();
  v102 = *(v97 - 8);
  MEMORY[0x28223BE20](v97);
  v101 = &v75 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for RetrievedToolWithAttribution(0);
  v75 = *(v14 - 8);
  MEMORY[0x28223BE20](v14 - 8);
  v94 = &v75 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = sub_22C905E6C();
  v16 = *(v98 - 8);
  MEMORY[0x28223BE20](v98);
  v18 = &v75 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = sub_22C90399C();
  v77 = *(v96 - 8);
  MEMORY[0x28223BE20](v96);
  v95 = &v75 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_22C9039FC();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = &v75 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = sub_22C905BAC();
  v78 = *(v79 - 8);
  MEMORY[0x28223BE20](v79);
  v88 = &v75 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22C905B9C();

  result = sub_22C812750(10, a1, sub_22C88842C, sub_22C606184);
  v29 = (v28 >> 1) - v27;
  v83 = v9;
  v82 = v10;
  v81 = v8;
  v80 = v12;
  v86 = result;
  if (v28 >> 1 != v27)
  {
    if ((v28 >> 1) <= v27)
    {
      __break(1u);
      goto LABEL_30;
    }

    v49 = *(v21 + 16);
    v48 = v21 + 16;
    v91 = v49;
    v92 = OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntimeP33_F747242BE1E17047CD31B26B8C3A7DAD29QueryDecorationSELFLoggerSync_loggingScope;
    v50 = *(v48 + 56);
    v93 = v48;
    v51 = (v48 - 8);
    v89 = v16 + 32;
    v90 = v50;
    v52 = v26 + v27 * v50;
    v53 = MEMORY[0x277D84F90];
    do
    {
      v91(v23, v52, v20);
      sub_22C81771C(v18);
      (*v51)(v23, v20);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_22C596694();
        v53 = v55;
      }

      v54 = *(v53 + 16);
      if (v54 >= *(v53 + 24) >> 1)
      {
        sub_22C596694();
        v53 = v56;
      }

      *(v53 + 16) = v54 + 1;
      (*(v16 + 32))(v53 + ((*(v16 + 80) + 32) & ~*(v16 + 80)) + *(v16 + 72) * v54, v18, v98);
      v52 += v90;
      --v29;
    }

    while (v29);
  }

  swift_unknownObjectRelease();
  sub_22C905B8C();
  v30 = v87;

  result = sub_22C812750(10, v30, sub_22C88842C, sub_22C60616C);
  v34 = (v33 >> 1) - v32;
  v92 = result;
  if (v33 >> 1 != v32)
  {
    if ((v33 >> 1) > v32)
    {
      v98 = OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntimeP33_F747242BE1E17047CD31B26B8C3A7DAD29QueryDecorationSELFLoggerSync_loggingScope;
      v93 = *(v77 + 16);
      v57 = *(v77 + 72);
      v58 = (v77 + 8);
      v59 = v31 + v32 * v57;
      v60 = MEMORY[0x277D84F90];
      do
      {
        v61 = v95;
        v62 = v96;
        v93(v95, v59, v96);
        sub_22C817DD8(v103 + v98);
        (*v58)(v61, v62);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_22C5965CC();
          v60 = v64;
        }

        v63 = *(v60 + 16);
        if (v63 >= *(v60 + 24) >> 1)
        {
          sub_22C5965CC();
          v60 = v65;
        }

        *(v60 + 16) = v63 + 1;
        (*(v102 + 32))(v60 + ((*(v102 + 80) + 32) & ~*(v102 + 80)) + *(v102 + 72) * v63, v101, v97);
        v59 += v57;
        --v34;
      }

      while (v34);
      goto LABEL_3;
    }

LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

LABEL_3:
  swift_unknownObjectRelease();
  sub_22C905B7C();
  v35 = v85;

  result = sub_22C812750(10, v35, sub_22C88842C, sub_22C606154);
  v39 = (v38 >> 1) - v37;
  if (v38 >> 1 == v37)
  {
LABEL_4:
    swift_unknownObjectRelease();
    v40 = v88;
    sub_22C905B6C();
    v41 = v80;
    v42 = v103;
    sub_22C37CA7C(v84, v80);
    v43 = v78;
    v44 = v81;
    v45 = v79;
    (*(v78 + 16))(v81, v40, v79);
    sub_22C36C640(v44, 0, 1, v45);
    sub_22C905A6C();
    v46 = v42[5];
    v47 = v42[6];
    sub_22C374168(v42 + 2, v46);
    (*(v47 + 8))(v41, v46, v47);
    (*(v82 + 8))(v41, v83);
    return (*(v43 + 8))(v40, v45);
  }

  if ((v38 >> 1) > v37)
  {
    v66 = OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntimeP33_F747242BE1E17047CD31B26B8C3A7DAD29QueryDecorationSELFLoggerSync_loggingScope;
    v67 = *(v75 + 72);
    v68 = v36 + v37 * v67;
    v69 = MEMORY[0x277D84F90];
    v70 = v76;
    do
    {
      v71 = v94;
      sub_22C7C609C(v68, v94);
      sub_22C819340(v103 + v66);
      sub_22C7C6100(v71);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_22C596504();
        v69 = v73;
      }

      v72 = *(v69 + 16);
      if (v72 >= *(v69 + 24) >> 1)
      {
        sub_22C596504();
        v69 = v74;
      }

      *(v69 + 16) = v72 + 1;
      (*(v100 + 32))(v69 + ((*(v100 + 80) + 32) & ~*(v100 + 80)) + *(v100 + 72) * v72, v99, v70);
      v68 += v67;
      --v39;
    }

    while (v39);
    goto LABEL_4;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_22C819340(uint64_t a1)
{
  v3 = sub_22C3A5908(&qword_27D9C0520, &qword_22C927F60);
  MEMORY[0x28223BE20](v3 - 8);
  v59 = &v52 - v4;
  v5 = sub_22C3A5908(&qword_27D9C0528, &unk_22C927F68);
  MEMORY[0x28223BE20](v5 - 8);
  v58 = &v52 - v6;
  v7 = sub_22C3A5908(&qword_27D9BC1E8, &qword_22C9123B0);
  MEMORY[0x28223BE20](v7 - 8);
  v55 = &v52 - v8;
  v9 = sub_22C3A5908(&qword_27D9C0530, &qword_22C927F78);
  MEMORY[0x28223BE20](v9 - 8);
  v56 = &v52 - v10;
  v11 = sub_22C3A5908(&qword_27D9C0538, &qword_22C927F80);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v52 - v12;
  v54 = sub_22C9036EC();
  v14 = *(v54 - 8);
  v15 = MEMORY[0x28223BE20](v54);
  v53 = &v52 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = &v52 - v17;
  v19 = sub_22C3A5908(&qword_27D9BB190, qword_22C90DD90);
  v20 = MEMORY[0x28223BE20](v19 - 8);
  v22 = &v52 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v52 - v23;
  v25 = sub_22C3A5908(&qword_27D9BE618, &qword_22C9262C0);
  MEMORY[0x28223BE20](v25 - 8);
  v27 = &v52 - v26;
  sub_22C905B3C();
  v57 = v1;
  RetrievedTool.getQueryDecorationLogUniqueId(loggingScope:)(a1);
  v28 = sub_22C90069C();
  if (sub_22C370B74(v24, 1, v28) == 1)
  {
    sub_22C36DD28(v24, &qword_27D9BB190, qword_22C90DD90);
    v29 = 1;
  }

  else
  {
    sub_22C90624C();
    v30 = *(v28 - 8);
    (*(v30 + 16))(v22, v24, v28);
    sub_22C36C640(v22, 0, 1, v28);
    sub_22C90623C();
    (*(v30 + 8))(v24, v28);
    v29 = 0;
  }

  v31 = sub_22C90625C();
  sub_22C36C640(v27, v29, 1, v31);
  sub_22C905A7C();
  v32 = v57;
  sub_22C90371C();
  RetrievedTool.Definition.toCandidateIdentifier()();
  v33 = *(v14 + 8);
  v34 = v54;
  v33(v18, v54);

  sub_22C905B1C();
  sub_22C90371C();
  sub_22C81F7E4(v13);
  v33(v18, v34);
  v35 = sub_22C905A3C();
  sub_22C36C640(v13, 0, 1, v35);
  sub_22C905B2C();
  sub_22C90373C();
  LOBYTE(v60) = 0;
  sub_22C905ADC();
  v36 = v53;
  sub_22C90371C();
  v37 = v55;
  sub_22C9036BC();
  v33(v36, v34);
  v38 = sub_22C908EAC();
  if (sub_22C370B74(v37, 1, v38) == 1)
  {
    sub_22C36DD28(v37, &qword_27D9BC1E8, &qword_22C9123B0);
    v39 = 1;
    v40 = v58;
    v41 = v56;
  }

  else
  {
    v41 = v56;
    sub_22C81F9B4(v56);
    (*(*(v38 - 8) + 8))(v37, v38);
    v39 = 0;
    v40 = v58;
  }

  v42 = sub_22C905BFC();
  sub_22C36C640(v41, v39, 1, v42);
  sub_22C905ACC();
  v43 = type metadata accessor for RetrievedToolWithAttribution(0);
  v44 = MEMORY[0x277D20210];
  switch(*(v32 + *(v43 + 20)))
  {
    case 1:
      goto LABEL_13;
    case 2:
      v44 = MEMORY[0x277D20218];
      goto LABEL_13;
    case 3:
      v44 = MEMORY[0x277D20228];
      goto LABEL_13;
    case 4:
      v44 = MEMORY[0x277D20220];
      goto LABEL_13;
    case 5:
      v44 = MEMORY[0x277D20230];
      goto LABEL_13;
    case 6:
      v49 = sub_22C90608C();
      v47 = v40;
      v48 = 1;
      goto LABEL_14;
    default:
      *v40 = -1;
      v44 = MEMORY[0x277D20238];
LABEL_13:
      v45 = *v44;
      v46 = sub_22C90608C();
      (*(*(v46 - 8) + 104))(v40, v45, v46);
      v47 = v40;
      v48 = 0;
      v49 = v46;
LABEL_14:
      sub_22C36C640(v47, v48, 1, v49);
      sub_22C905AEC();
      v50 = sub_22C9059AC();
      sub_22C36C640(v59, 1, 1, v50);
      return sub_22C905ABC();
  }
}

uint64_t sub_22C819A78(unint64_t a1, unint64_t a2, char a3, uint64_t a4)
{
  v5 = v4;
  v22 = a4;
  v8 = sub_22C3A5908(&qword_27D9C0510, &qword_22C927F50);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v21 - v9;
  v23 = sub_22C9061AC();
  v11 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_22C905C5C();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v21 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_22C905C4C();
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (HIDWORD(a1))
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v25 = 0;
  result = MEMORY[0x2318B30F0](a1);
  if ((a2 & 0x8000000000000000) != 0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (!HIDWORD(a2))
  {
    v24 = 0;
    MEMORY[0x2318B3100](a2);
    sub_22C905C3C();
    sub_22C37CA7C(v22, v13);
    (*(v15 + 16))(v10, v17, v14);
    sub_22C36C640(v10, 0, 1, v14);
    sub_22C905B5C();
    v19 = v5[5];
    v20 = v5[6];
    sub_22C374168(v5 + 2, v19);
    (*(v20 + 8))(v13, v19, v20);
    (*(v11 + 8))(v13, v23);
    return (*(v15 + 8))(v17, v14);
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_22C819D20(uint64_t a1, uint64_t a2)
{
  v4 = sub_22C3A5908(&qword_27D9C0508, &qword_22C927F48);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v18 - v5;
  v7 = sub_22C9061AC();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22C90617C();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22C90616C();

  sub_22C905D0C();
  sub_22C37CA7C(a2, v10);
  (*(v12 + 16))(v6, v14, v11);
  sub_22C36C640(v6, 0, 1, v11);
  sub_22C90614C();
  v15 = v2[5];
  v16 = v2[6];
  sub_22C374168(v2 + 2, v15);
  (*(v16 + 8))(v10, v15, v16);
  (*(v8 + 8))(v10, v7);
  return (*(v12 + 8))(v14, v11);
}

uint64_t sub_22C819F74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v21 = a3;
  v6 = sub_22C3A5908(&qword_27D9C0500, &qword_22C927F40);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v20 - v7;
  v9 = sub_22C9061AC();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22C90607C();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22C90606C();
  MEMORY[0x2318B3530](a1);
  sub_22C90604C();
  sub_22C37CA7C(v21, v12);
  (*(v14 + 16))(v8, v16, v13);
  sub_22C36C640(v8, 0, 1, v13);
  sub_22C90600C();
  v17 = v4[5];
  v18 = v4[6];
  sub_22C374168(v4 + 2, v17);
  (*(v18 + 8))(v12, v17, v18);
  (*(v10 + 8))(v12, v9);
  return (*(v14 + 8))(v16, v13);
}

uint64_t sub_22C81A1D4(unint64_t a1, uint64_t a2)
{
  v28 = sub_22C9063DC();
  v4 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22C3A5908(&qword_27D9C04F8, &qword_22C927F38);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v27 - v8;
  v27[0] = sub_22C9061AC();
  v10 = *(v27[0] - 8);
  MEMORY[0x28223BE20](v27[0]);
  v12 = v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22C905FFC();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22C905FEC();
  if (HIDWORD(a1))
  {
    v17 = v13;
    sub_22C90406C();
    v18 = sub_22C9063CC();
    v19 = sub_22C90AADC();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 134217984;
      *(v20 + 4) = a1;
      _os_log_impl(&dword_22C366000, v18, v19, "Toolbox size reported is out of range of UInt32: %ld", v20, 0xCu);
      MEMORY[0x2318B9880](v20, -1, -1);
    }

    (*(v4 + 8))(v6, v28);
    v21 = v17;
  }

  else
  {
    v29 = 0;
    MEMORY[0x2318B34B0](a1);
    v22 = a2;
    v23 = v27[1];
    sub_22C37CA7C(v22, v12);
    (*(v14 + 16))(v9, v16, v13);
    sub_22C36C640(v9, 0, 1, v13);
    sub_22C905EBC();
    v24 = v23[5];
    v25 = v23[6];
    sub_22C374168(v23 + 2, v24);
    (*(v25 + 8))(v12, v24, v25);
    (*(v10 + 8))(v12, v27[0]);
    v21 = v13;
  }

  return (*(v14 + 8))(v16, v21);
}

uint64_t sub_22C81A558(uint64_t a1, uint64_t a2)
{
  v36 = a2;
  v33 = a1;
  v2 = sub_22C3A5908(&qword_27D9C04D0, &qword_22C927F10);
  MEMORY[0x28223BE20](v2 - 8);
  v35 = &v32 - v3;
  v4 = sub_22C9061AC();
  v38 = *(v4 - 8);
  v39 = v4;
  MEMORY[0x28223BE20](v4);
  v34 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22C3A5908(&qword_27D9C04E0, &qword_22C927F20);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v32 - v7;
  v9 = sub_22C3A5908(&qword_27D9BB190, qword_22C90DD90);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v32 - v10;
  v12 = sub_22C3A5908(&qword_27D9BE618, &qword_22C9262C0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v32 - v13;
  v15 = sub_22C905F9C();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_22C905E9C();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = &v32 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22C905E8C();
  MEMORY[0x2318B3350](1);
  sub_22C905F8C();
  sub_22C90624C();
  v23 = sub_22C90069C();
  (*(*(v23 - 8) + 16))(v11, v33, v23);
  sub_22C36C640(v11, 0, 1, v23);
  sub_22C90623C();
  v24 = sub_22C90625C();
  sub_22C36C640(v14, 0, 1, v24);
  sub_22C905F7C();
  (*(v20 + 16))(v8, v22, v19);
  sub_22C36C640(v8, 0, 1, v19);
  sub_22C905F5C();
  v25 = v34;
  v26 = v37;
  sub_22C37CA7C(v36, v34);
  v27 = v35;
  (*(v16 + 16))(v35, v18, v15);
  sub_22C36C640(v27, 0, 1, v15);
  sub_22C905EAC();
  v28 = v26;
  v29 = *(v26 + 40);
  v30 = *(v28 + 48);
  sub_22C374168((v28 + 16), v29);
  (*(v30 + 8))(v25, v29, v30);
  (*(v38 + 8))(v25, v39);
  (*(v16 + 8))(v18, v15);
  return (*(v20 + 8))(v22, v19);
}

uint64_t sub_22C81AA04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v44 = a3;
  v42 = a2;
  v3 = sub_22C3A5908(&qword_27D9C04D0, &qword_22C927F10);
  MEMORY[0x28223BE20](v3 - 8);
  v43 = &v36 - v4;
  v5 = sub_22C9061AC();
  v46 = *(v5 - 8);
  v47 = v5;
  MEMORY[0x28223BE20](v5);
  v45 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22C3A5908(&qword_27D9C04D8, &qword_22C927F18);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v36 - v8;
  v10 = sub_22C3A5908(&qword_27D9BB190, qword_22C90DD90);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v36 - v11;
  v13 = sub_22C3A5908(&qword_27D9BE618, &qword_22C9262C0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v36 - v14;
  v16 = sub_22C905F9C();
  v40 = *(v16 - 8);
  v41 = v16;
  MEMORY[0x28223BE20](v16);
  v18 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_22C905EFC();
  v19 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v21 = &v36 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_22C9002FC();
  sub_22C905CBC();
  v23 = [v22 domain];
  sub_22C90A11C();

  sub_22C905C9C();
  v38 = v22;
  result = [v22 code];
  if (result < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (result <= 0x7FFFFFFF)
  {
    v49 = 0;
    v37 = v21;
    sub_22C905CAC();
    sub_22C905F8C();
    sub_22C90624C();
    v25 = sub_22C90069C();
    (*(*(v25 - 8) + 16))(v12, v42, v25);
    sub_22C36C640(v12, 0, 1, v25);
    sub_22C90623C();
    v26 = sub_22C90625C();
    sub_22C36C640(v15, 0, 1, v26);
    sub_22C905F7C();
    v27 = v21;
    v28 = v39;
    (*(v19 + 16))(v9, v27, v39);
    sub_22C36C640(v9, 0, 1, v28);
    sub_22C905F6C();
    v29 = v45;
    v30 = v48;
    sub_22C37CA7C(v44, v45);
    v32 = v40;
    v31 = v41;
    v33 = v43;
    (*(v40 + 16))(v43, v18, v41);
    sub_22C36C640(v33, 0, 1, v31);
    sub_22C905EAC();
    v34 = v30[5];
    v35 = v30[6];
    sub_22C374168(v30 + 2, v34);
    (*(v35 + 8))(v29, v34, v35);

    (*(v46 + 8))(v29, v47);
    (*(v32 + 8))(v18, v31);
    return (*(v19 + 8))(v37, v28);
  }

  __break(1u);
  return result;
}

uint64_t sub_22C81AF50(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v28 = a2;
  v5 = sub_22C3A5908(&qword_27D9C04C8, &qword_22C927F08);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v27 - v6;
  v8 = sub_22C9061AC();
  v29 = *(v8 - 8);
  v30 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22C3A5908(&qword_27D9BB190, qword_22C90DD90);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v27 - v12;
  v14 = sub_22C3A5908(&qword_27D9BE618, &qword_22C9262C0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v27 - v15;
  v17 = sub_22C905DBC();
  v18 = *(v17 - 8);
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v27 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2318B3280](v19);
  sub_22C90624C();
  v22 = sub_22C90069C();
  (*(*(v22 - 8) + 16))(v13, a1, v22);
  sub_22C36C640(v13, 0, 1, v22);
  sub_22C90623C();
  v23 = sub_22C90625C();
  sub_22C36C640(v16, 0, 1, v23);
  sub_22C905A7C();
  sub_22C37CA7C(v28, v10);
  (*(v18 + 16))(v7, v21, v17);
  sub_22C36C640(v7, 0, 1, v17);
  sub_22C905C8C();
  v24 = v3[5];
  v25 = v3[6];
  sub_22C374168(v3 + 2, v24);
  (*(v25 + 8))(v10, v24, v25);
  (*(v29 + 8))(v10, v30);
  return (*(v18 + 8))(v21, v17);
}

uint64_t sub_22C81B2BC()
{
  sub_22C36FF94((v0 + 16));
  v1 = OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntimeP33_F747242BE1E17047CD31B26B8C3A7DAD29QueryDecorationSELFLoggerSync_contextId;
  v2 = sub_22C90069C();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v4 = OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntimeP33_F747242BE1E17047CD31B26B8C3A7DAD29QueryDecorationSELFLoggerSync_loggingScope;
  v5 = sub_22C90292C();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  v3(v0 + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntimeP33_F747242BE1E17047CD31B26B8C3A7DAD29QueryDecorationSELFLoggerSync_componentId, v2);
  return v0;
}

uint64_t sub_22C81B394()
{
  sub_22C81B2BC();

  return swift_deallocClassInstance();
}

uint64_t sub_22C81B428@<X0>(uint64_t *a1@<X2>, void (*a2)(void)@<X3>, uint64_t a3@<X8>)
{
  v5 = *v3;
  v6 = *a1;
  a2(0);
  sub_22C36985C();
  v9 = *(v8 + 16);

  return v9(a3, v5 + v6, v7);
}

uint64_t sub_22C81B6B0@<X0>(uint64_t *a1@<X0>, void (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v5 = *(v3 + 16);
  v6 = *a1;
  a2(0);
  sub_22C36985C();
  v9 = *(v8 + 16);

  return v9(a3, v5 + v6, v7);
}

uint64_t sub_22C81B724(uint64_t a1, uint64_t a2)
{
  v5 = sub_22C90622C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = sub_22C3A5908(&qword_27D9BBB48, &qword_22C910F00);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v15 - v9;
  sub_22C90A73C();
  v11 = sub_22C90A75C();
  sub_22C36C640(v10, 0, 1, v11);
  (*(v6 + 16))(&v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v5);
  v12 = (*(v6 + 80) + 40) & ~*(v6 + 80);
  v13 = swift_allocObject();
  *(v13 + 2) = 0;
  *(v13 + 3) = 0;
  *(v13 + 4) = v2;
  (*(v6 + 32))(&v13[v12], &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  *&v13[(v7 + v12 + 7) & 0xFFFFFFFFFFFFFFF8] = a2;

  sub_22C8FAAA0(0, 0, v10, &unk_22C927EF0, v13);

  return sub_22C36DD28(v10, &qword_27D9BBB48, &qword_22C910F00);
}

uint64_t sub_22C81B920(uint64_t a1)
{
  v3 = sub_22C90622C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = sub_22C3A5908(&qword_27D9BBB48, &qword_22C910F00);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v13 - v7;
  sub_22C90A73C();
  v9 = sub_22C90A75C();
  sub_22C36C640(v8, 0, 1, v9);
  (*(v4 + 16))(&v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  v10 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v11 = swift_allocObject();
  *(v11 + 2) = 0;
  *(v11 + 3) = 0;
  *(v11 + 4) = v1;
  (*(v4 + 32))(&v11[v10], &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v3);

  sub_22C8FAAA0(0, 0, v8, &unk_22C927EE0, v11);

  return sub_22C36DD28(v8, &qword_27D9BBB48, &qword_22C910F00);
}

uint64_t sub_22C81BB00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x2822009F8](sub_22C81BB20, 0, 0);
}

uint64_t sub_22C81BB20()
{
  sub_22C369980();
  v0 = sub_22C38C50C();
  sub_22C81631C(v0);
  sub_22C369A24();

  return v1();
}

uint64_t sub_22C81BB78(void *a1, uint64_t a2)
{
  v5 = sub_22C90622C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = sub_22C3A5908(&qword_27D9BBB48, &qword_22C910F00);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v16 - v9;
  sub_22C90A73C();
  v11 = sub_22C90A75C();
  sub_22C36C640(v10, 0, 1, v11);
  (*(v6 + 16))(&v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v5);
  v12 = (*(v6 + 80) + 48) & ~*(v6 + 80);
  v13 = swift_allocObject();
  *(v13 + 2) = 0;
  *(v13 + 3) = 0;
  *(v13 + 4) = v2;
  *(v13 + 5) = a1;
  (*(v6 + 32))(&v13[v12], &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);

  v14 = a1;
  sub_22C8FAAA0(0, 0, v10, &unk_22C927ED0, v13);

  return sub_22C36DD28(v10, &qword_27D9BBB48, &qword_22C910F00);
}

uint64_t sub_22C81BD64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return MEMORY[0x2822009F8](sub_22C81BD88, 0, 0);
}

uint64_t sub_22C81BD88()
{
  sub_22C369980();
  v0 = sub_22C38C1C4();
  sub_22C8165C4(v0, v1);
  sub_22C369A24();

  return v2();
}

uint64_t sub_22C81BDE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v26 = a4;
  v25 = a2;
  v28 = a1;
  v5 = sub_22C90622C();
  v24 = v5;
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22C3A5908(&qword_27D9BD290, &qword_22C917EC0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v13 = &v23 - v12;
  v14 = sub_22C3A5908(&qword_27D9BBB48, &qword_22C910F00);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v23 - v15;
  sub_22C90A73C();
  v17 = sub_22C90A75C();
  sub_22C36C640(v16, 0, 1, v17);
  sub_22C3DB138(a3, v13, &qword_27D9BD290, &qword_22C917EC0);
  (*(v6 + 16))(v8, v26, v5);
  v18 = (*(v10 + 80) + 56) & ~*(v10 + 80);
  v19 = (v11 + *(v6 + 80) + v18) & ~*(v6 + 80);
  v20 = swift_allocObject();
  *(v20 + 2) = 0;
  *(v20 + 3) = 0;
  v21 = v28;
  *(v20 + 4) = v27;
  *(v20 + 5) = v21;
  *(v20 + 6) = v25;
  sub_22C3DB08C(v13, &v20[v18], &qword_27D9BD290, &qword_22C917EC0);
  (*(v6 + 32))(&v20[v19], v8, v24);

  sub_22C8FAAA0(0, 0, v16, &unk_22C927EC0, v20);

  return sub_22C36DD28(v16, &qword_27D9BBB48, &qword_22C910F00);
}

uint64_t sub_22C81C0B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  return MEMORY[0x2822009F8](sub_22C81C0E0, 0, 0);
}

uint64_t sub_22C81C0E0()
{
  sub_22C369980();
  v0 = sub_22C38C1C4();
  sub_22C8168F8(v0, v1, v2, v3);
  sub_22C369A24();

  return v4();
}

uint64_t sub_22C81C13C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = sub_22C90622C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_22C3A5908(&qword_27D9BBB48, &qword_22C910F00);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v21 - v15;
  sub_22C90A73C();
  v17 = sub_22C90A75C();
  sub_22C36C640(v16, 0, 1, v17);
  (*(v11 + 16))(v13, a4, v10);
  v18 = (*(v11 + 80) + 64) & ~*(v11 + 80);
  v19 = swift_allocObject();
  *(v19 + 2) = 0;
  *(v19 + 3) = 0;
  *(v19 + 4) = v5;
  *(v19 + 5) = a1;
  *(v19 + 6) = a2;
  *(v19 + 7) = a3;
  (*(v11 + 32))(&v19[v18], v13, v10);

  sub_22C8FAAA0(0, 0, v16, &unk_22C927EA8, v19);

  return sub_22C36DD28(v16, &qword_27D9BBB48, &qword_22C910F00);
}

uint64_t sub_22C81C348(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  return MEMORY[0x2822009F8](sub_22C81C370, 0, 0);
}

uint64_t sub_22C81C370()
{
  sub_22C369980();
  v0 = sub_22C38C1C4();
  sub_22C818914(v0, v1, v2, v3);
  sub_22C369A24();

  return v4();
}

uint64_t sub_22C81C3CC(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v9 = sub_22C90622C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22C3A5908(&qword_27D9BBB48, &qword_22C910F00);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v20 - v14;
  sub_22C90A73C();
  v16 = sub_22C90A75C();
  sub_22C36C640(v15, 0, 1, v16);
  (*(v10 + 16))(v12, a4, v9);
  v17 = (*(v10 + 80) + 57) & ~*(v10 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = 0;
  *(v18 + 24) = 0;
  *(v18 + 32) = v4;
  *(v18 + 40) = a1;
  *(v18 + 48) = a2;
  *(v18 + 56) = a3;
  (*(v10 + 32))(v18 + v17, v12, v9);

  sub_22C8FAAA0(0, 0, v15, &unk_22C927E98, v18);

  return sub_22C36DD28(v15, &qword_27D9BBB48, &qword_22C910F00);
}

uint64_t sub_22C81C5C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8)
{
  *(v8 + 48) = a7;
  *(v8 + 32) = a6;
  *(v8 + 40) = a8;
  *(v8 + 16) = a4;
  *(v8 + 24) = a5;
  return MEMORY[0x2822009F8](sub_22C81C5E8, 0, 0);
}

uint64_t sub_22C81C5E8()
{
  sub_22C369980();
  v0 = sub_22C38C50C();
  sub_22C819A78(v0, v1, v2, v3);
  sub_22C369A24();

  return v4();
}

uint64_t sub_22C81C648(uint64_t a1, uint64_t a2)
{
  v5 = sub_22C90622C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = sub_22C3A5908(&qword_27D9BBB48, &qword_22C910F00);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v15 - v9;
  sub_22C90A73C();
  v11 = sub_22C90A75C();
  sub_22C36C640(v10, 0, 1, v11);
  (*(v6 + 16))(&v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v5);
  v12 = (*(v6 + 80) + 48) & ~*(v6 + 80);
  v13 = swift_allocObject();
  *(v13 + 2) = 0;
  *(v13 + 3) = 0;
  *(v13 + 4) = v2;
  *(v13 + 5) = a1;
  (*(v6 + 32))(&v13[v12], &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);

  sub_22C8FAAA0(0, 0, v10, &unk_22C927E88, v13);

  return sub_22C36DD28(v10, &qword_27D9BBB48, &qword_22C910F00);
}

uint64_t sub_22C81C834(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return MEMORY[0x2822009F8](sub_22C81C858, 0, 0);
}

uint64_t sub_22C81C858()
{
  sub_22C369980();
  v0 = sub_22C38C1C4();
  sub_22C819D20(v0, v1);
  sub_22C369A24();

  return v2();
}

uint64_t sub_22C81C8B0(char a1, char a2, uint64_t a3)
{
  v7 = sub_22C90622C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = sub_22C3A5908(&qword_27D9BBB48, &qword_22C910F00);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v17 - v11;
  sub_22C90A73C();
  v13 = sub_22C90A75C();
  sub_22C36C640(v12, 0, 1, v13);
  (*(v8 + 16))(&v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v7);
  v14 = (*(v8 + 80) + 42) & ~*(v8 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = 0;
  *(v15 + 24) = 0;
  *(v15 + 32) = v3;
  *(v15 + 40) = a1;
  *(v15 + 41) = a2;
  (*(v8 + 32))(v15 + v14, &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v7);

  sub_22C8FAAA0(0, 0, v12, &unk_22C927E78, v15);

  return sub_22C36DD28(v12, &qword_27D9BBB48, &qword_22C910F00);
}

uint64_t sub_22C81CAA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, char a6, uint64_t a7)
{
  *(v7 + 33) = a6;
  *(v7 + 32) = a5;
  *(v7 + 16) = a4;
  *(v7 + 24) = a7;
  return MEMORY[0x2822009F8](sub_22C81CAC8, 0, 0);
}

uint64_t sub_22C81CAC8()
{
  sub_22C369980();
  sub_22C819F74(*(v0 + 32), *(v0 + 33), *(v0 + 24));
  sub_22C369A24();

  return v1();
}

uint64_t sub_22C81CB2C(uint64_t a1, uint64_t a2)
{
  v5 = sub_22C90622C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = sub_22C3A5908(&qword_27D9BBB48, &qword_22C910F00);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v15 - v9;
  sub_22C90A73C();
  v11 = sub_22C90A75C();
  sub_22C36C640(v10, 0, 1, v11);
  (*(v6 + 16))(&v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v5);
  v12 = (*(v6 + 80) + 48) & ~*(v6 + 80);
  v13 = swift_allocObject();
  *(v13 + 2) = 0;
  *(v13 + 3) = 0;
  *(v13 + 4) = v2;
  *(v13 + 5) = a1;
  (*(v6 + 32))(&v13[v12], &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);

  sub_22C8FAAA0(0, 0, v10, &unk_22C927E68, v13);

  return sub_22C36DD28(v10, &qword_27D9BBB48, &qword_22C910F00);
}

uint64_t sub_22C81CD10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return MEMORY[0x2822009F8](sub_22C81CD34, 0, 0);
}

uint64_t sub_22C81CD34()
{
  sub_22C369980();
  v0 = sub_22C38C1C4();
  sub_22C81A1D4(v0, v1);
  sub_22C369A24();

  return v2();
}

uint64_t sub_22C81CD8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v26 = a2;
  v24 = a3;
  v25 = a1;
  v29 = sub_22C90622C();
  v3 = *(v29 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v29);
  v28 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_22C90069C();
  v5 = *(v23 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v23);
  v22 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22C905A5C();
  v20 = v7;
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v21 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22C3A5908(&qword_27D9BBB48, &qword_22C910F00);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v20 - v11;
  sub_22C90A73C();
  v13 = sub_22C90A75C();
  sub_22C36C640(v12, 0, 1, v13);
  (*(v8 + 16))(&v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v25, v7);
  v14 = v23;
  (*(v5 + 16))(&v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v26, v23);
  (*(v3 + 16))(v28, v24, v29);
  v15 = (*(v8 + 80) + 40) & ~*(v8 + 80);
  v16 = (v9 + *(v5 + 80) + v15) & ~*(v5 + 80);
  v17 = (v6 + *(v3 + 80) + v16) & ~*(v3 + 80);
  v18 = swift_allocObject();
  *(v18 + 2) = 0;
  *(v18 + 3) = 0;
  *(v18 + 4) = v27;
  (*(v8 + 32))(&v18[v15], v21, v20);
  (*(v5 + 32))(&v18[v16], v22, v14);
  (*(v3 + 32))(&v18[v17], v28, v29);

  sub_22C8FAAA0(0, 0, v12, &unk_22C927E58, v18);

  return sub_22C36DD28(v12, &qword_27D9BBB48, &qword_22C910F00);
}

uint64_t sub_22C81D134(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return MEMORY[0x2822009F8](sub_22C81D158, 0, 0);
}

uint64_t sub_22C81D158()
{
  sub_22C369980();
  v0 = sub_22C38C1C4();
  sub_22C81A558(v0, v1);
  sub_22C369A24();

  return v2();
}

uint64_t sub_22C81D1B0(void *a1, uint64_t a2, uint64_t a3)
{
  v24 = a3;
  v26 = a1;
  v4 = sub_22C90622C();
  v22 = v4;
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v23 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22C90069C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22C3A5908(&qword_27D9BBB48, &qword_22C910F00);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v21 - v12;
  sub_22C90A73C();
  v14 = sub_22C90A75C();
  sub_22C36C640(v13, 0, 1, v14);
  (*(v8 + 16))(v10, a2, v7);
  (*(v5 + 16))(&v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v24, v4);
  v15 = (*(v8 + 80) + 48) & ~*(v8 + 80);
  v16 = (v9 + *(v5 + 80) + v15) & ~*(v5 + 80);
  v17 = swift_allocObject();
  *(v17 + 2) = 0;
  *(v17 + 3) = 0;
  v18 = v26;
  *(v17 + 4) = v25;
  *(v17 + 5) = v18;
  (*(v8 + 32))(&v17[v15], v10, v7);
  (*(v5 + 32))(&v17[v16], v23, v22);

  v19 = v18;
  sub_22C8FAAA0(0, 0, v13, &unk_22C927E38, v17);

  return sub_22C36DD28(v13, &qword_27D9BBB48, &qword_22C910F00);
}

uint64_t sub_22C81D474(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  return MEMORY[0x2822009F8](sub_22C81D498, 0, 0);
}

uint64_t sub_22C81D498()
{
  sub_22C369980();
  v0 = sub_22C38C50C();
  sub_22C81AA04(v0, v1, v2);
  sub_22C369A24();

  return v3();
}

void sub_22C81D514()
{
  sub_22C36BA7C();
  v33 = v0;
  v34 = v2;
  v31 = v3;
  v32 = v4;
  v6 = v5;
  v7 = sub_22C90622C();
  sub_22C369824();
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v12);
  v30 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22C90069C();
  sub_22C369824();
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v18);
  v19 = &v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_22C3A5908(&qword_27D9BBB48, &qword_22C910F00);
  v21 = sub_22C369914(v20);
  MEMORY[0x28223BE20](v21);
  sub_22C370654();
  sub_22C90A73C();
  v22 = sub_22C90A75C();
  sub_22C36C640(v1, 0, 1, v22);
  (*(v15 + 16))(v19, v31, v13);
  sub_22C63489C();
  v23 = v6;
  v24 = v7;
  v25(&v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v23, v7);
  v26 = (*(v15 + 80) + 40) & ~*(v15 + 80);
  v27 = (v17 + *(v9 + 80) + v26) & ~*(v9 + 80);
  v28 = swift_allocObject();
  *(v28 + 2) = 0;
  *(v28 + 3) = 0;
  *(v28 + 4) = v33;
  (*(v15 + 32))(&v28[v26], v19, v13);
  (*(v9 + 32))(&v28[v27], v30, v24);

  sub_22C8FAAA0(0, 0, v1, v34, v28);

  sub_22C36DD28(v1, &qword_27D9BBB48, &qword_22C910F00);
  sub_22C36CC48();
}

uint64_t sub_22C81D78C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return MEMORY[0x2822009F8](sub_22C81D7B0, 0, 0);
}

uint64_t sub_22C81D7B0()
{
  sub_22C369980();
  v0 = sub_22C38C1C4();
  sub_22C81AF50(v0, v1);
  sub_22C369A24();

  return v2();
}

void SpanMatchedEntity.getQueryDecorationLogUniqueId(loggingScope:)()
{
  sub_22C36BA7C();
  v34[1] = v0;
  v2 = v1;
  sub_22C9063DC();
  sub_22C369824();
  v35 = v4;
  v36 = v3;
  MEMORY[0x28223BE20](v3);
  sub_22C369ABC();
  v7 = v5 - v6;
  MEMORY[0x28223BE20](v8);
  sub_22C36BA64();
  v34[2] = v9;
  v10 = sub_22C3A5908(&qword_27D9BB908, &qword_22C910960);
  v11 = sub_22C369914(v10);
  MEMORY[0x28223BE20](v11);
  v13 = v34 - v12;
  v14 = sub_22C9093BC();
  sub_22C369824();
  v16 = v15;
  MEMORY[0x28223BE20](v17);
  sub_22C369ABC();
  v19 = MEMORY[0x28223BE20](v18);
  v20 = MEMORY[0x28223BE20](v19);
  v22 = v34 - v21;
  MEMORY[0x28223BE20](v20);
  v24 = v34 - v23;
  sub_22C9039CC();
  if (sub_22C370B74(v13, 1, v14) == 1)
  {
    sub_22C36DD28(v13, &qword_27D9BB908, &qword_22C910960);
    sub_22C90400C();
    v25 = sub_22C9063CC();
    v26 = sub_22C90AADC();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      sub_22C370220();
      v28 = v2;
      v29 = swift_slowAlloc();
      v37 = v29;
      *v27 = 136315138;
      *(v27 + 4) = sub_22C823700("getQueryDecorationLogUniqueId(loggingScope:)");
      _os_log_impl(&dword_22C366000, v25, v26, "[%s] Could not convert SpanMatchedEntity to logging id (typedValue missing)", v27, 0xCu);
      sub_22C36FF94(v29);
      v2 = v28;
      sub_22C369B50();
      MEMORY[0x2318B9880]();
      sub_22C369B50();
      MEMORY[0x2318B9880]();
    }

    (*(v35 + 8))(v7, v36);
    v30 = 1;
  }

  else
  {
    v34[0] = v2;
    (*(v16 + 32))(v24, v13, v14);
    (*(v16 + 16))(v22, v24, v14);
    JointResolution.CandidateIdentifier.init(typedValue:)(v22, &v37);
    sub_22C754DD0();
    v2 = v34[0];
    sub_22C902B4C();
    v31 = sub_22C3819EC();
    v32(v31);

    v30 = 0;
  }

  v33 = sub_22C90069C();
  sub_22C36C640(v2, v30, 1, v33);
  sub_22C36CC48();
}

uint64_t TypedValue.toQDLog()()
{
  sub_22C3727F4();
  sub_22C90952C();
  sub_22C369824();
  MEMORY[0x28223BE20](v0);
  sub_22C369838();
  sub_22C37BDA4();
  MEMORY[0x2318B2E60]();
  sub_22C90935C();
  sub_22C9094BC();
  v1 = sub_22C36EBF0();
  v2(v1);
  sub_22C90597C();
  TypedValue.selfLoggingTypeName.getter();
  return sub_22C90595C();
}

unint64_t sub_22C81E08C()
{
  v18 = sub_22C9039BC();
  v0 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v2 = &v17 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_22C3A5908(&qword_27D9C0560, &qword_22C927FA8);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = (&v17 - v4);
  v6 = sub_22C9038DC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22C3A5908(&qword_27D9C0568, &qword_22C927FB0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v17 - v11;
  sub_22C905A1C();
  result = sub_22C90359C();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (HIDWORD(result))
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v21 = 0;
  MEMORY[0x2318B2EA0](result);
  result = sub_22C90360C();
  if ((result & 0x8000000000000000) != 0)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (HIDWORD(result))
  {
LABEL_12:
    __break(1u);
    return result;
  }

  v20 = 0;
  MEMORY[0x2318B2EE0](result);
  sub_22C9035CC();
  sub_22C9038CC();
  (*(v7 + 8))(v9, v6);
  v14 = sub_22C90350C();
  if (sub_22C370B74(v12, 1, v14) == 1)
  {
    sub_22C36DD28(v12, &qword_27D9C0568, &qword_22C927FB0);
  }

  else
  {
    sub_22C81E410();
    (*(*(v14 - 8) + 8))(v12, v14);
  }

  v15 = v18;
  sub_22C9059EC();
  sub_22C9035AC();
  sub_22C81ED4C(v5);
  (*(v0 + 8))(v2, v15);
  v16 = sub_22C905C0C();
  sub_22C36C640(v5, 0, 1, v16);
  sub_22C9059FC();
  sub_22C90358C();
  v19 = 0;
  sub_22C9059BC();
  sub_22C9035DC();
  return sub_22C9059DC();
}

uint64_t sub_22C81E410()
{
  v1 = sub_22C905DCC();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v62 = &v58 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v3);
  v63 = &v58 - v6;
  v7 = MEMORY[0x28223BE20](v5);
  v61 = &v58 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v60 = &v58 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v59 = &v58 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v58 = &v58 - v14;
  MEMORY[0x28223BE20](v13);
  v16 = &v58 - v15;
  v17 = sub_22C90350C();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v58 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22C9034AC();
  sub_22C82362C(&qword_281435790, MEMORY[0x277D1E9E8], MEMORY[0x277D1E9F8]);
  v65 = v0;
  v21 = sub_22C90AE0C();
  v64 = *(v18 + 8);
  v64(v20, v17);
  v22 = v2;
  if (v21)
  {
    (*(v2 + 104))(v16, *MEMORY[0x277D201C8], v1);
    sub_22C5969AC();
    v24 = v23;
    v25 = *(v23 + 16);
    if (v25 >= *(v23 + 24) >> 1)
    {
      sub_22C5969AC();
      v24 = v45;
    }

    *(v24 + 16) = v25 + 1;
    (*(v22 + 32))(v24 + ((*(v22 + 80) + 32) & ~*(v22 + 80)) + *(v22 + 72) * v25, v16, v1);
  }

  else
  {
    v24 = MEMORY[0x277D84F90];
  }

  sub_22C9034DC();
  v26 = sub_22C90AE0C();
  v64(v20, v17);
  if (v26)
  {
    v27 = v58;
    (*(v22 + 104))(v58, *MEMORY[0x277D201E0], v1);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_22C5969AC();
      v24 = v46;
    }

    v28 = *(v24 + 16);
    if (v28 >= *(v24 + 24) >> 1)
    {
      sub_22C5969AC();
      v24 = v47;
    }

    *(v24 + 16) = v28 + 1;
    v29 = v22;
    (*(v22 + 32))(v24 + ((*(v22 + 80) + 32) & ~*(v22 + 80)) + *(v22 + 72) * v28, v27, v1);
  }

  else
  {
    v29 = v22;
  }

  sub_22C9034EC();
  v30 = sub_22C90AE0C();
  v64(v20, v17);
  if (v30)
  {
    v31 = v59;
    (*(v29 + 104))(v59, *MEMORY[0x277D201E8], v1);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_22C5969AC();
      v24 = v48;
    }

    v32 = *(v24 + 16);
    if (v32 >= *(v24 + 24) >> 1)
    {
      sub_22C5969AC();
      v24 = v49;
    }

    *(v24 + 16) = v32 + 1;
    (*(v29 + 32))(v24 + ((*(v29 + 80) + 32) & ~*(v29 + 80)) + *(v29 + 72) * v32, v31, v1);
  }

  sub_22C9034BC();
  v33 = sub_22C90AE0C();
  v64(v20, v17);
  if (v33)
  {
    v34 = v60;
    (*(v29 + 104))(v60, *MEMORY[0x277D201D0], v1);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_22C5969AC();
      v24 = v50;
    }

    v35 = *(v24 + 16);
    if (v35 >= *(v24 + 24) >> 1)
    {
      sub_22C5969AC();
      v24 = v51;
    }

    *(v24 + 16) = v35 + 1;
    (*(v29 + 32))(v24 + ((*(v29 + 80) + 32) & ~*(v29 + 80)) + *(v29 + 72) * v35, v34, v1);
  }

  sub_22C90349C();
  v36 = sub_22C90AE0C();
  v64(v20, v17);
  if (v36)
  {
    v37 = v61;
    (*(v29 + 104))(v61, *MEMORY[0x277D201C0], v1);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_22C5969AC();
      v24 = v52;
    }

    v38 = *(v24 + 16);
    if (v38 >= *(v24 + 24) >> 1)
    {
      sub_22C5969AC();
      v24 = v53;
    }

    *(v24 + 16) = v38 + 1;
    (*(v29 + 32))(v24 + ((*(v29 + 80) + 32) & ~*(v29 + 80)) + *(v29 + 72) * v38, v37, v1);
  }

  sub_22C9034FC();
  v39 = sub_22C90AE0C();
  v64(v20, v17);
  if (v39)
  {
    (*(v29 + 104))(v63, *MEMORY[0x277D201F0], v1);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_22C5969AC();
      v24 = v54;
    }

    v40 = *(v24 + 16);
    if (v40 >= *(v24 + 24) >> 1)
    {
      sub_22C5969AC();
      v24 = v55;
    }

    *(v24 + 16) = v40 + 1;
    (*(v29 + 32))(v24 + ((*(v29 + 80) + 32) & ~*(v29 + 80)) + *(v29 + 72) * v40, v63, v1);
  }

  sub_22C9034CC();
  v41 = sub_22C90AE0C();
  v64(v20, v17);
  if (v41)
  {
    v42 = v62;
    (*(v29 + 104))(v62, *MEMORY[0x277D201D8], v1);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_22C5969AC();
      v24 = v56;
    }

    v43 = *(v24 + 16);
    if (v43 >= *(v24 + 24) >> 1)
    {
      sub_22C5969AC();
      v24 = v57;
    }

    *(v24 + 16) = v43 + 1;
    (*(v29 + 32))(v24 + ((*(v29 + 80) + 32) & ~*(v29 + 80)) + *(v29 + 72) * v43, v42, v1);
  }

  return v24;
}

uint64_t sub_22C81ED4C@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = sub_22C9039BC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7, v2, v4);
  v8 = (*(v5 + 88))(v7, v4);
  if (v8 == *MEMORY[0x277D1EE88])
  {
    *a1 = 0;
    v9 = MEMORY[0x277D200A0];
  }

  else if (v8 == *MEMORY[0x277D1EE78])
  {
    v9 = MEMORY[0x277D20090];
  }

  else
  {
    if (v8 != *MEMORY[0x277D1EE80])
    {
      *a1 = -1;
      v13 = *MEMORY[0x277D200A0];
      v14 = sub_22C905C0C();
      (*(*(v14 - 8) + 104))(a1, v13, v14);
      return (*(v5 + 8))(v7, v4);
    }

    v9 = MEMORY[0x277D20098];
  }

  v10 = *v9;
  v11 = sub_22C905C0C();
  return (*(*(v11 - 8) + 104))(a1, v10, v11);
}

uint64_t RetrievedContext.getQueryDecorationLogUniqueId(loggingScope:)@<X0>(uint64_t a2@<X8>)
{
  v4 = sub_22C3A5908(&qword_27D9BB908, &qword_22C910960);
  v5 = sub_22C369914(v4);
  MEMORY[0x28223BE20](v5);
  sub_22C37B6BC();
  v6 = sub_22C9093BC();
  sub_22C369824();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  sub_22C369ABC();
  v12 = v10 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v21 - v14;
  sub_22C90391C();
  if (sub_22C370B74(v2, 1, v6) == 1)
  {
    sub_22C36DD28(v2, &qword_27D9BB908, &qword_22C910960);
    v18 = 1;
  }

  else
  {
    (*(v8 + 32))(v15, v2, v6);
    sub_22C63489C();
    v16 = sub_22C371510();
    v17(v16);
    JointResolution.CandidateIdentifier.init(typedValue:)(v12, &v22);
    sub_22C754DD0();
    sub_22C902B4C();
    (*(v8 + 8))(v15, v6);

    v18 = 0;
  }

  v19 = sub_22C90069C();
  return sub_22C36C640(a2, v18, 1, v19);
}

uint64_t sub_22C81F174@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = sub_22C90355C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7, v2, v4);
  v8 = (*(v5 + 88))(v7, v4);
  if (v8 == *MEMORY[0x277D1EAB8])
  {
    v9 = MEMORY[0x277D20128];
LABEL_45:
    v10 = *v9;
    v11 = sub_22C905D8C();
    return (*(*(v11 - 8) + 104))(a1, v10, v11);
  }

  if (v8 == *MEMORY[0x277D1EA58])
  {
    v9 = MEMORY[0x277D200C8];
    goto LABEL_45;
  }

  if (v8 == *MEMORY[0x277D1EA78])
  {
    v9 = MEMORY[0x277D200E8];
    goto LABEL_45;
  }

  if (v8 == *MEMORY[0x277D1EA90])
  {
    v9 = MEMORY[0x277D20100];
    goto LABEL_45;
  }

  if (v8 == *MEMORY[0x277D1EA60])
  {
    v9 = MEMORY[0x277D200D0];
    goto LABEL_45;
  }

  if (v8 == *MEMORY[0x277D1EB10])
  {
    v9 = MEMORY[0x277D20180];
    goto LABEL_45;
  }

  if (v8 == *MEMORY[0x277D1EA98])
  {
    v9 = MEMORY[0x277D20108];
    goto LABEL_45;
  }

  if (v8 == *MEMORY[0x277D1EAA8])
  {
    v9 = MEMORY[0x277D20118];
    goto LABEL_45;
  }

  if (v8 == *MEMORY[0x277D1EAB0])
  {
    v9 = MEMORY[0x277D20120];
    goto LABEL_45;
  }

  if (v8 == *MEMORY[0x277D1EB38])
  {
    v9 = MEMORY[0x277D201A8];
    goto LABEL_45;
  }

  if (v8 == *MEMORY[0x277D1EB28])
  {
    v9 = MEMORY[0x277D20198];
    goto LABEL_45;
  }

  if (v8 == *MEMORY[0x277D1EB48])
  {
    v9 = MEMORY[0x277D201B0];
    goto LABEL_45;
  }

  if (v8 == *MEMORY[0x277D1EB00])
  {
    v9 = MEMORY[0x277D20170];
    goto LABEL_45;
  }

  if (v8 == *MEMORY[0x277D1EB18])
  {
    v9 = MEMORY[0x277D20188];
    goto LABEL_45;
  }

  if (v8 == *MEMORY[0x277D1EB40])
  {
    goto LABEL_30;
  }

  if (v8 == *MEMORY[0x277D1EA68])
  {
    v9 = MEMORY[0x277D200D8];
    goto LABEL_45;
  }

  if (v8 == *MEMORY[0x277D1EA80])
  {
    v9 = MEMORY[0x277D200F0];
    goto LABEL_45;
  }

  if (v8 == *MEMORY[0x277D1EAA0])
  {
    v9 = MEMORY[0x277D20110];
    goto LABEL_45;
  }

  if (v8 == *MEMORY[0x277D1EA88])
  {
    v9 = MEMORY[0x277D200F8];
    goto LABEL_45;
  }

  if (v8 == *MEMORY[0x277D1EAD8])
  {
    v9 = MEMORY[0x277D20148];
    goto LABEL_45;
  }

  if (v8 == *MEMORY[0x277D1EA50])
  {
    v9 = MEMORY[0x277D200C0];
    goto LABEL_45;
  }

  if (v8 == *MEMORY[0x277D1EAD0])
  {
    v9 = MEMORY[0x277D20140];
    goto LABEL_45;
  }

  if (v8 == *MEMORY[0x277D1EB50])
  {
LABEL_30:
    *a1 = -1;
    v9 = MEMORY[0x277D201B8];
    goto LABEL_45;
  }

  if (v8 == *MEMORY[0x277D1EB20])
  {
    v9 = MEMORY[0x277D20190];
    goto LABEL_45;
  }

  if (v8 == *MEMORY[0x277D1EB08])
  {
    v9 = MEMORY[0x277D20178];
    goto LABEL_45;
  }

  if (v8 == *MEMORY[0x277D1EAF8])
  {
    v9 = MEMORY[0x277D20168];
    goto LABEL_45;
  }

  if (v8 == *MEMORY[0x277D1EB30])
  {
    v9 = MEMORY[0x277D201A0];
    goto LABEL_45;
  }

  if (v8 == *MEMORY[0x277D1EAE0])
  {
    v9 = MEMORY[0x277D20150];
    goto LABEL_45;
  }

  if (v8 == *MEMORY[0x277D1EAE8])
  {
    v9 = MEMORY[0x277D20158];
    goto LABEL_45;
  }

  if (v8 == *MEMORY[0x277D1EAC0])
  {
    v9 = MEMORY[0x277D20130];
    goto LABEL_45;
  }

  if (v8 == *MEMORY[0x277D1EAC8])
  {
    v9 = MEMORY[0x277D20138];
    goto LABEL_45;
  }

  if (v8 == *MEMORY[0x277D1EA70])
  {
    v9 = MEMORY[0x277D200E0];
    goto LABEL_45;
  }

  if (v8 == *MEMORY[0x277D1EAF0])
  {
    v9 = MEMORY[0x277D20160];
    goto LABEL_45;
  }

  result = sub_22C90B4EC();
  __break(1u);
  return result;
}

uint64_t RetrievedTool.getQueryDecorationLogUniqueId(loggingScope:)(uint64_t a1)
{
  sub_22C3727F4();
  sub_22C9036EC();
  sub_22C369824();
  MEMORY[0x28223BE20](v2);
  sub_22C369838();
  sub_22C37BDA4();
  sub_22C90371C();
  RetrievedTool.Definition.toCandidateIdentifier()();
  v3 = sub_22C36EBF0();
  v4(v3);
  sub_22C754DD0();
  sub_22C902B4C();

  v5 = sub_22C90069C();
  return sub_22C36C640(v1, 0, 1, v5);
}

uint64_t sub_22C81F7E4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_22C9036EC();
  sub_22C369824();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  sub_22C369838();
  v10 = v9 - v8;
  sub_22C37BBE4();
  v11(v10, v2, v4);
  v12 = (*(v6 + 88))(v10, v4);
  if (v12 == *MEMORY[0x277D1ECE0])
  {
    v13 = MEMORY[0x277D20020];
LABEL_11:
    v14 = *v13;
    sub_22C905A3C();
    sub_22C36985C();
    (*(v15 + 104))(a1, v14);
    return (*(v6 + 8))(v10, v4);
  }

  if (v12 == *MEMORY[0x277D1ECE8])
  {
    v13 = MEMORY[0x277D20028];
    goto LABEL_11;
  }

  if (v12 == *MEMORY[0x277D1ECD8])
  {
    v13 = MEMORY[0x277D20018];
    goto LABEL_11;
  }

  if (v12 == *MEMORY[0x277D1ECD0])
  {
    v13 = MEMORY[0x277D20010];
    goto LABEL_11;
  }

  if (v12 == *MEMORY[0x277D1ECF8])
  {
    v13 = MEMORY[0x277D20030];
    goto LABEL_11;
  }

  result = sub_22C90B4EC();
  __break(1u);
  return result;
}

uint64_t sub_22C81F9B4@<X0>(uint64_t a1@<X8>)
{
  v53 = a1;
  v69 = sub_22C90981C();
  v1 = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  v3 = v47 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = sub_22C9060EC();
  v48 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v5 = v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22C3A5908(&qword_27D9C0540, &qword_22C927F88);
  MEMORY[0x28223BE20](v6 - 8);
  v59 = v47 - v7;
  v8 = sub_22C3A5908(&qword_27D9C0548, &qword_22C927F90);
  MEMORY[0x28223BE20](v8 - 8);
  v71 = v47 - v9;
  v52 = sub_22C90603C();
  v51 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v54 = v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22C90941C();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_22C90599C();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x28223BE20](v15);
  v64 = v47 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v21 = v47 - v20;
  MEMORY[0x2318B6290](v19);
  TypeInstance.toQDLog()();
  v22 = *(v12 + 8);
  v65 = v14;
  v66 = v12 + 8;
  v67 = v11;
  v63 = v22;
  v22(v14, v11);
  v23 = v52;
  v24 = v54;
  sub_22C90602C();
  v50 = v16;
  v25 = *(v16 + 16);
  v26 = v71;
  v49 = v21;
  v27 = v21;
  v28 = v51;
  v61 = v25;
  v62 = v16 + 16;
  v25(v71, v27, v15);
  v70 = v15;
  sub_22C36C640(v26, 0, 1, v15);
  sub_22C90601C();
  sub_22C905BEC();
  sub_22C7F5ED0();
  sub_22C905BCC();
  v29 = v59;
  (*(v28 + 16))(v59, v24, v23);
  sub_22C36C640(v29, 0, 1, v23);
  sub_22C905BDC();
  v30 = sub_22C908DCC();
  v31 = *(v30 + 16);
  if (v31)
  {
    v72 = MEMORY[0x277D84F90];
    sub_22C3B7E5C(0, v31, 0);
    v32 = v72;
    v34 = *(v1 + 16);
    v33 = v1 + 16;
    v59 = v34;
    v35 = (*(v33 + 64) + 32) & ~*(v33 + 64);
    v47[1] = v30;
    v36 = v30 + v35;
    v58 = *(v33 + 56);
    v56 = (v33 - 8);
    v57 = (v50 + 8);
    v37 = v48;
    v55 = v48 + 32;
    v60 = v33;
    do
    {
      v38 = v69;
      v39 = (v59)(v3, v36, v69);
      v40 = v65;
      MEMORY[0x2318B6CE0](v39);
      v41 = v64;
      TypeInstance.toQDLog()();
      v63(v40, v67);
      sub_22C9060DC();
      sub_22C9097DC();
      sub_22C9060BC();
      sub_22C9097EC();
      sub_22C9060CC();
      sub_22C9097BC();
      sub_22C9060AC();
      v43 = v70;
      v42 = v71;
      v61(v71, v41, v70);
      sub_22C36C640(v42, 0, 1, v43);
      sub_22C90609C();
      (*v57)(v41, v43);
      (*v56)(v3, v38);
      v72 = v32;
      v45 = *(v32 + 16);
      v44 = *(v32 + 24);
      if (v45 >= v44 >> 1)
      {
        sub_22C3B7E5C(v44 > 1, v45 + 1, 1);
        v32 = v72;
      }

      *(v32 + 16) = v45 + 1;
      (*(v37 + 32))(v32 + ((*(v37 + 80) + 32) & ~*(v37 + 80)) + *(v37 + 72) * v45, v5, v68);
      v36 += v58;
      --v31;
    }

    while (v31);

    v23 = v52;
    v28 = v51;
  }

  else
  {
  }

  sub_22C905BBC();
  (*(v28 + 8))(v54, v23);
  return (*(v50 + 8))(v49, v70);
}

void TypeInstance.toQDLog()()
{
  sub_22C36BA7C();
  v154 = v0;
  v2 = v1;
  sub_22C9063DC();
  sub_22C369824();
  v143 = v4;
  v144 = v3;
  MEMORY[0x28223BE20](v3);
  sub_22C369838();
  v145 = v6 - v5;
  sub_22C36BA0C();
  v156 = sub_22C90599C();
  sub_22C369824();
  v153 = v7;
  MEMORY[0x28223BE20](v8);
  sub_22C369ABC();
  v142 = v9 - v10;
  sub_22C369930();
  MEMORY[0x28223BE20](v11);
  sub_22C36BA58();
  v155 = v12;
  sub_22C369930();
  MEMORY[0x28223BE20](v13);
  sub_22C36BA58();
  v152 = v14;
  sub_22C369930();
  MEMORY[0x28223BE20](v15);
  sub_22C36BA58();
  v146 = v16;
  sub_22C369930();
  MEMORY[0x28223BE20](v17);
  sub_22C36BA58();
  v147 = v18;
  sub_22C369930();
  MEMORY[0x28223BE20](v19);
  sub_22C36BA64();
  v148 = v20;
  sub_22C36BA0C();
  v21 = sub_22C90952C();
  sub_22C369824();
  v23 = v22;
  MEMORY[0x28223BE20](v24);
  sub_22C369838();
  v27 = v26 - v25;
  v28 = sub_22C90941C();
  sub_22C369824();
  v30 = v29;
  MEMORY[0x28223BE20](v31);
  sub_22C369ABC();
  v141 = v32 - v33;
  sub_22C369930();
  MEMORY[0x28223BE20](v34);
  sub_22C36BA58();
  v149 = v35;
  sub_22C369930();
  v37 = MEMORY[0x28223BE20](v36);
  v39 = &v140 - v38;
  v40 = MEMORY[0x28223BE20](v37);
  v42 = &v140 - v41;
  v43 = MEMORY[0x28223BE20](v40);
  v45 = (&v140 - v44);
  MEMORY[0x2318B2E60](v43);
  v46 = v154;
  v154 = *(v30 + 16);
  v154(v45, v46, v28);
  v47 = (*(v30 + 88))(v45, v28);
  if (v47 == *MEMORY[0x277D72AD0])
  {
    (*(v30 + 96))(v45, v28);
    sub_22C50B6D4();
    sub_22C63489C();
    v48(v27);
    sub_22C9094BC();
    sub_22C90597C();
    TypeIdentifier.selfLoggingTypeName.getter();
LABEL_3:
    sub_22C90595C();
    (*(v23 + 8))(v27, v21);
    goto LABEL_11;
  }

  v150 = v30;
  v151 = v28;
  v140 = v2;
  if (v47 == *MEMORY[0x277D72AB0])
  {
    v50 = v150;
    v49 = v151;
    (*(v150 + 96))(v45, v151);
    v51 = sub_22C50B6D4();
    v154(v42, v51, v49);
    v52 = v148;
    TypeInstance.toQDLog()();
    sub_22C376054();
    v157 = v53;
    v158 = 0xEB000000003C6E6FLL;
    v54 = sub_22C90594C();
    if (v55)
    {
      v56 = v55;
    }

    else
    {
      v54 = 7104878;
      v56 = 0xE300000000000000;
    }

    MEMORY[0x2318B7850](v54, v56);

    sub_22C8236C4();
    sub_22C90595C();
    sub_22C90596C();
    sub_22C90597C();
    (*(v153 + 8))(v52, v156);
    (*(v50 + 8))(v42, v49);
    goto LABEL_11;
  }

  if (v47 == *MEMORY[0x277D72AE8])
  {
    v57 = v151;
    (*(v150 + 96))(v45, v151);
    v58 = sub_22C50B6D4();
    v154(v39, v58, v57);
    v59 = v147;
    TypeInstance.toQDLog()();
    v60 = sub_22C37170C();
    v61(v60);
    v62 = v153;
    v63 = v140;
    v64 = v156;
    (*(v153 + 8))(v140, v156);
    (*(v62 + 32))(v63, v59, v64);
    goto LABEL_11;
  }

  if (v47 == *MEMORY[0x277D72AD8])
  {
    v65 = v150 + 96;
    v66 = v151;
    (*(v150 + 96))(v45);
    v143 = *v45;
    v67 = *(v143 + 16);
    v68 = v67 + 56;
    v69 = 1 << *(v67 + 32);
    v70 = -1;
    if (v69 < 64)
    {
      v70 = ~(-1 << v69);
    }

    v71 = v70 & *(v67 + 56);
    v72 = (v69 + 63) >> 6;
    v147 = v65 - 88;
    v148 = v67;
    v145 = v153 + 32;

    v73 = v66;
    v74 = 0;
    v75 = MEMORY[0x277D84F90];
    v76 = v146;
    if (v71)
    {
      while (1)
      {
        v77 = v75;
LABEL_22:
        v154(v149, *(v148 + 48) + *(v150 + 72) * (__clz(__rbit64(v71)) | (v74 << 6)), v73);
        TypeInstance.toQDLog()();
        v79 = sub_22C36BBCC();
        v80(v79);
        v75 = v77;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_22C36D270();
          sub_22C5968E4();
          v75 = v82;
        }

        v81 = *(v75 + 16);
        if (v81 >= *(v75 + 24) >> 1)
        {
          sub_22C5968E4();
          v75 = v83;
        }

        v71 &= v71 - 1;
        *(v75 + 16) = v81 + 1;
        (*(v153 + 32))(v75 + ((*(v153 + 80) + 32) & ~*(v153 + 80)) + *(v153 + 72) * v81, v152, v156);
        v73 = v151;
        if (!v71)
        {
          goto LABEL_18;
        }
      }
    }

    while (1)
    {
LABEL_18:
      v78 = v74 + 1;
      if (__OFADD__(v74, 1))
      {
        __break(1u);
        return;
      }

      if (v78 >= v72)
      {
        break;
      }

      v71 = *(v68 + 8 * v78);
      ++v74;
      if (v71)
      {
        v77 = v75;
        v74 = v78;
        goto LABEL_22;
      }
    }

    v85 = *(v75 + 16);
    v144 = v75;
    if (v85)
    {
      v86 = *(v153 + 16);
      v87 = v75 + ((*(v153 + 80) + 32) & ~*(v153 + 80));
      v151 = *(v153 + 72);
      v152 = v86;
      v154 = (v153 + 16);
      v88 = (v153 + 8);
      v89 = MEMORY[0x277D84F90];
      v90 = v85;
      do
      {
        v91 = v156;
        v152(v76, v87, v156);
        v92 = sub_22C90594C();
        v94 = v93;
        (*v88)(v76, v91);
        if (v94)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v98 = sub_22C36D270();
            sub_22C590270(v98, v99, v100, v89);
            v89 = v101;
          }

          v96 = *(v89 + 16);
          v95 = *(v89 + 24);
          if (v96 >= v95 >> 1)
          {
            sub_22C590270(v95 > 1, v96 + 1, 1, v89);
            v89 = v102;
          }

          *(v89 + 16) = v96 + 1;
          v97 = v89 + 16 * v96;
          *(v97 + 32) = v92;
          *(v97 + 40) = v94;
        }

        v87 += v151;
        --v90;
      }

      while (v90);
    }

    else
    {
      v89 = MEMORY[0x277D84F90];
    }

    v157 = v89;
    v111 = sub_22C3A5908(&qword_27D9BB5D0, &unk_22C9112A0);
    v112 = sub_22C3F035C();
    v151 = v111;
    v149 = v112;
    v150 = sub_22C90A04C();
    v152 = v113;

    if (v85)
    {
      v154 = *(v153 + 16);
      v114 = v144 + ((*(v153 + 80) + 32) & ~*(v153 + 80));
      v115 = *(v153 + 72);
      v116 = (v153 + 8);
      v117 = MEMORY[0x277D84F90];
      do
      {
        v119 = v155;
        v118 = v156;
        v154(v155, v114, v156);
        v120 = sub_22C90596C();
        v122 = v121;
        (*v116)(v119, v118);
        if (v122)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v126 = sub_22C36D270();
            sub_22C590270(v126, v127, v128, v117);
            v117 = v129;
          }

          v124 = *(v117 + 16);
          v123 = *(v117 + 24);
          if (v124 >= v123 >> 1)
          {
            sub_22C590270(v123 > 1, v124 + 1, 1, v117);
            v117 = v130;
          }

          *(v117 + 16) = v124 + 1;
          v125 = v117 + 16 * v124;
          *(v125 + 32) = v120;
          *(v125 + 40) = v122;
        }

        v114 += v115;
        --v85;
      }

      while (v85);
    }

    else
    {
      v117 = MEMORY[0x277D84F90];
    }

    v157 = v117;
    v131 = sub_22C90A04C();
    v133 = v132;

    v157 = 0x3C6E6F696E75;
    v158 = 0xE600000000000000;
    MEMORY[0x2318B7850](v150, v152);

    sub_22C8236C4();
    sub_22C90595C();
    v157 = 0x3C6E6F696E75;
    v158 = 0xE600000000000000;
    MEMORY[0x2318B7850](v131, v133);

    sub_22C8236C4();
    sub_22C90597C();
    goto LABEL_11;
  }

  if (v47 == *MEMORY[0x277D72AB8])
  {
    (*(v150 + 96))(v45, v151);
    sub_22C50B6D4();
    sub_22C63489C();
    v84(v27);
    sub_22C9094BC();
    sub_22C90597C();
    v157 = 0x7463697274736572;
    v158 = 0xEB000000003C6465;
    TypeIdentifier.selfLoggingTypeName.getter();
    MEMORY[0x2318B7850]();

    sub_22C8236C4();
    goto LABEL_3;
  }

  if (v47 != *MEMORY[0x277D72AE0])
  {
    v134 = v151;
    sub_22C90400C();
    v135 = sub_22C9063CC();
    v136 = sub_22C90AADC();
    if (os_log_type_enabled(v135, v136))
    {
      v137 = swift_slowAlloc();
      sub_22C370220();
      v138 = swift_slowAlloc();
      v157 = v138;
      *v137 = 136315138;
      *(v137 + 4) = sub_22C36F9F4(0x28676F4C44516F74, 0xE900000000000029, &v157);
      _os_log_impl(&dword_22C366000, v135, v136, "%s Encountered unknnown type", v137, 0xCu);
      sub_22C36FF94(v138);
      sub_22C369B50();
      MEMORY[0x2318B9880]();
      sub_22C369B50();
      MEMORY[0x2318B9880]();
    }

    (*(v143 + 8))(v145, v144);
    v139 = v150;
    sub_22C90595C();
    sub_22C90597C();
    (*(v139 + 8))(v45, v134);
    goto LABEL_12;
  }

  v103 = v151;
  (*(v150 + 96))(v45);
  v104 = sub_22C50B6D4();
  v154(v141, v104, v103);
  v105 = v142;
  TypeInstance.toQDLog()();
  v157 = 0x6465727265666564;
  v158 = 0xE90000000000003CLL;
  v106 = sub_22C90594C();
  if (v107)
  {
    v108 = v107;
  }

  else
  {
    v106 = 7104878;
    v108 = 0xE300000000000000;
  }

  MEMORY[0x2318B7850](v106, v108);

  sub_22C8236C4();
  sub_22C90595C();
  sub_22C90596C();
  sub_22C90597C();
  (*(v153 + 8))(v105, v156);
  v109 = sub_22C3819EC();
  v110(v109);
LABEL_11:

LABEL_12:
  sub_22C36CC48();
}

void TypedValue.selfLoggingTypeName.getter()
{
  sub_22C36BA7C();
  sub_22C90910C();
  sub_22C369824();
  v96 = v4;
  v97 = v3;
  MEMORY[0x28223BE20](v3);
  sub_22C369838();
  v95 = v6 - v5;
  sub_22C36BA0C();
  sub_22C9091CC();
  sub_22C369824();
  v99 = v8;
  v100 = v7;
  MEMORY[0x28223BE20](v7);
  sub_22C369838();
  v98 = v10 - v9;
  sub_22C36BA0C();
  sub_22C90912C();
  sub_22C369824();
  v102 = v12;
  v103 = v11;
  MEMORY[0x28223BE20](v11);
  sub_22C369838();
  v101 = v14 - v13;
  sub_22C36BA0C();
  sub_22C90906C();
  sub_22C369824();
  v105 = v16;
  v106 = v15;
  MEMORY[0x28223BE20](v15);
  sub_22C369838();
  v104 = v18 - v17;
  sub_22C36BA0C();
  sub_22C90934C();
  sub_22C369824();
  v93 = v20;
  v94 = v19;
  MEMORY[0x28223BE20](v19);
  sub_22C369838();
  v92 = v22 - v21;
  sub_22C36BA0C();
  sub_22C90919C();
  sub_22C369824();
  v108 = v24;
  v109 = v23;
  MEMORY[0x28223BE20](v23);
  sub_22C369838();
  v107 = v26 - v25;
  sub_22C36BA0C();
  v27 = sub_22C9090BC();
  sub_22C369824();
  v110 = v28;
  MEMORY[0x28223BE20](v29);
  sub_22C369838();
  v32 = v31 - v30;
  v33 = sub_22C90952C();
  sub_22C369824();
  v35 = v34;
  MEMORY[0x28223BE20](v36);
  sub_22C369838();
  sub_22C37B6BC();
  v37 = sub_22C9093BC();
  sub_22C369824();
  v39 = v38;
  MEMORY[0x28223BE20](v40);
  sub_22C369838();
  sub_22C37BDA4();
  (*(v39 + 16))(v2, v0, v37);
  v41 = sub_22C37FF30();
  v43 = v42(v41);
  if (v43 == *MEMORY[0x277D72A58])
  {
    v44 = sub_22C37FF30();
    v45(v44);
    sub_22C90935C();
    TypeIdentifier.selfLoggingTypeName.getter();
    (*(v35 + 8))(v1, v33);
  }

  else
  {
    if (v43 == *MEMORY[0x277D729E8])
    {
      v46 = sub_22C372E80();
      v47(v46);
      v48 = sub_22C823748();
      (*(v110 + 16))(v32, v48, v27);
      strcpy(&v111, "enumeration<");
      BYTE13(v111) = 0;
      HIWORD(v111) = -5120;
      sub_22C9090AC();
      TypeIdentifier.selfLoggingTypeName.getter();
      v50 = v49;
      v52 = v51;
      sub_22C823684();
      v53 = sub_22C381870();
      v54(v53);
      MEMORY[0x2318B7850](v50, v52);

      sub_22C8236C4();
      (*(v110 + 8))(v32, v27);
    }

    else if (v43 == *MEMORY[0x277D72A38])
    {
      v55 = sub_22C372E80();
      v56(v55);
      swift_projectBox();
      sub_22C63489C();
      v57(v107);
      *&v111 = 0x3C797469746E65;
      *(&v111 + 1) = 0xE700000000000000;
      sub_22C9090AC();
      TypeIdentifier.selfLoggingTypeName.getter();
      v59 = v58;
      v61 = v60;
      sub_22C823684();
      v62 = sub_22C381870();
      v63(v62);
      MEMORY[0x2318B7850](v59, v61);

      sub_22C8236C4();
      (*(v108 + 8))(v107, v109);
    }

    else if (v43 == *MEMORY[0x277D729E0])
    {
      v64 = sub_22C372E80();
      v65(v64);
      v66 = sub_22C823748();
      (*(v105 + 16))(v104, v66, v106);
      sub_22C376054();
      *&v111 = v67;
      *(&v111 + 1) = 0xEB000000003C6E6FLL;
      sub_22C823780();
      sub_22C90904C();
      TypeIdentifier.selfLoggingTypeName.getter();
      v69 = v68;
      v71 = v70;
      sub_22C823684();
      v72 = sub_22C381870();
      v73(v72);
      MEMORY[0x2318B7850](v69, v71);

      sub_22C8236C4();
      (*(v105 + 8))(v104, v106);
    }

    else if (v43 == *MEMORY[0x277D72A30])
    {
      v74 = sub_22C372E80();
      v75(v74);
      sub_22C823748();
      sub_22C37BBE4();
      v76(v101);
      sub_22C9090AC();
      TypeIdentifier.selfLoggingTypeName.getter();
      sub_22C823684();
      v77(v1, v33);
      (*(v102 + 8))(v101, v103);
    }

    else
    {
      if (v43 == *MEMORY[0x277D72A40])
      {
        v78 = sub_22C372E80();
        v79(v78);
        sub_22C823748();
        v81 = v98;
        v80 = v99;
        sub_22C37BBE4();
        v82 = v100;
        v83(v98);
        sub_22C823780();
        sub_22C9091BC();
      }

      else if (v43 == *MEMORY[0x277D729F8])
      {
        v84 = sub_22C372E80();
        v85(v84);
        sub_22C823748();
        v81 = v95;
        v80 = v96;
        sub_22C37BBE4();
        v82 = v97;
        v86(v95);
        sub_22C823780();
        sub_22C9090AC();
      }

      else
      {
        if (v43 != *MEMORY[0x277D72A60])
        {
          v90 = sub_22C37FF30();
          v91(v90);
          sub_22C375BCC();
          goto LABEL_9;
        }

        v87 = sub_22C372E80();
        v88(v87);
        sub_22C823748();
        v81 = v92;
        v80 = v93;
        sub_22C37BBE4();
        v82 = v94;
        v89(v92);
        sub_22C823780();
        sub_22C90933C();
      }

      TypeIdentifier.selfLoggingTypeName.getter();
      (*(v35 + 8))(v1, v33);
      (*(v80 + 8))(v81, v82);
    }
  }

LABEL_9:
  sub_22C36CC48();
}

uint64_t TypeIdentifier.BuiltInTypeIdentifier.selfLoggingTypeName.getter()
{
  v0 = sub_22C90952C();
  sub_22C369824();
  v2 = v1;
  MEMORY[0x28223BE20](v3);
  sub_22C369838();
  v6 = v5 - v4;
  sub_22C9094CC();
  sub_22C369824();
  MEMORY[0x28223BE20](v7);
  sub_22C369838();
  v8 = sub_22C372164();
  v9(v8);
  v10 = sub_22C36BBCC();
  v12 = v11(v10);
  if (v12 == *MEMORY[0x277D72C00])
  {
    v13 = sub_22C36BBCC();
    v14(v13);
    v15 = swift_projectBox();
    (*(v2 + 16))(v6, v15, v0);
    TypeIdentifier.selfLoggingTypeName.getter();
    MEMORY[0x2318B7850](v16, v17);

    sub_22C8236C4();
    (*(v2 + 8))(v6, v0);
  }

  else if (v12 != *MEMORY[0x277D72BE0] && v12 != *MEMORY[0x277D72BC0] && v12 != *MEMORY[0x277D72C18] && v12 != *MEMORY[0x277D72BF8] && v12 != *MEMORY[0x277D72C20] && v12 != *MEMORY[0x277D72BF0] && v12 != *MEMORY[0x277D72C28] && v12 != *MEMORY[0x277D72BB8] && v12 != *MEMORY[0x277D72BD0] && v12 != *MEMORY[0x277D72C10] && v12 != *MEMORY[0x277D72C08] && v12 != *MEMORY[0x277D72C38] && v12 != *MEMORY[0x277D72BD8] && v12 != *MEMORY[0x277D72BE8] && v12 != *MEMORY[0x277D72C30] && v12 != *MEMORY[0x277D72BC8])
  {
    v19 = sub_22C36BBCC();
    v20(v19);
    sub_22C375BCC();
  }

  return sub_22C36BBCC();
}

unint64_t TypeIdentifier.MeasurementUnitType.selfLoggingTypeName.getter(char a1)
{
  result = 0x6874676E656CLL;
  switch(a1)
  {
    case 1:
      result = 1936941421;
      break;
    case 2:
      result = 0x74617265706D6574;
      break;
    case 3:
      result = 0x656D756C6F76;
      break;
    case 4:
      result = 0x6465657073;
      break;
    case 5:
      result = 0x796772656E65;
      break;
    case 6:
      result = 0x6E6F697461727564;
      break;
    case 7:
      result = 0x6172656C65636361;
      break;
    case 8:
      result = 0x656C676E61;
      break;
    case 9:
      result = 1634038369;
      break;
    case 10:
      result = 0xD000000000000011;
      break;
    case 11:
      result = 0x6973726570736964;
      break;
    case 12:
    case 13:
      result = 0x6369727463656C65;
      break;
    case 14:
      result = 0xD00000000000001BLL;
      break;
    case 15:
      result = 0xD000000000000012;
      break;
    case 16:
      result = 0x636E657571657266;
      break;
    case 17:
      result = 0x696666456C657566;
      break;
    case 18:
      result = 0x616E696D756C6C69;
      break;
    case 19:
      result = 0xD000000000000012;
      break;
    case 20:
      result = 0x7265776F70;
      break;
    case 21:
      result = 0x6572757373657270;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_22C821E60(unint64_t result, uint64_t a2, char a3, uint64_t a4, uint64_t a5, int a6, char a7, uint64_t a8)
{
  if (a4 < 0)
  {
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    return result;
  }

  v8 = a2;
  v9 = result;
  if (a4)
  {
    v10 = 0;
    v11 = a3 | a7;
    while ((v11 & 1) == 0)
    {
      if (v8 != a6)
      {
        __break(1u);
LABEL_24:
        __break(1u);
LABEL_25:
        __break(1u);
LABEL_26:
        __break(1u);
        goto LABEL_27;
      }

      if (v9 == a5)
      {
        return 0;
      }

      if ((v9 & 0x8000000000000000) != 0)
      {
        goto LABEL_24;
      }

      v12 = 1 << *(a8 + 32);
      if (v9 >= v12)
      {
        goto LABEL_24;
      }

      v13 = v9 >> 6;
      v14 = *(a8 + 56 + 8 * (v9 >> 6));
      if (((v14 >> v9) & 1) == 0)
      {
        goto LABEL_25;
      }

      if (*(a8 + 36) != a6)
      {
        goto LABEL_26;
      }

      v15 = v14 & (-2 << (v9 & 0x3F));
      if (v15)
      {
        v9 = __clz(__rbit64(v15)) | v9 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v16 = v13 << 6;
        v17 = v13 + 1;
        v18 = (a8 + 64 + 8 * v13);
        while (v17 < (v12 + 63) >> 6)
        {
          v19 = *v18++;
          result = v19;
          v16 += 64;
          ++v17;
          if (v19)
          {
            v9 = __clz(__rbit64(result)) + v16;
            goto LABEL_18;
          }
        }

        v9 = 1 << *(a8 + 32);
      }

LABEL_18:
      ++v10;
      v8 = a6;
      v11 = a7;
      if (v10 >= a4)
      {
        return v9;
      }
    }

    goto LABEL_28;
  }

  sub_22C3AFAB0(result, a2, a3 & 1);
  return v9;
}

uint64_t sub_22C821FBC(uint64_t result, uint64_t a2)
{
  if (*(result + 16) & 1) != 0 || (*(a2 + 16))
  {
    goto LABEL_14;
  }

  if (*(result + 8) != *(a2 + 8))
  {
    __break(1u);
    goto LABEL_11;
  }

  if (*result < *a2)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (*(a2 + 40) & 1) != 0 || (*(result + 40))
  {
    goto LABEL_15;
  }

  if (*(a2 + 32) != *(result + 32))
  {
    goto LABEL_12;
  }

  if (*(a2 + 24) < *(result + 24))
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
  }

  return result;
}

uint64_t sub_22C822038@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_22C57D74C();
  if ((v8 & 1) == 0)
  {
    v9 = *(a2 + 36);
    if (v9 == v7)
    {
      v10 = 1 << *(a2 + 32);
      if (v10 >= result)
      {
        v17[0] = result;
        v17[1] = v7;
        v18 = 0;
        v19 = v10;
        v20 = v9;
        v21 = 0;
        sub_22C821FBC(a1, v17);
        v11 = *a1;
        v12 = *(a1 + 8);
        v13 = *(a1 + 16);
        v14 = *(a1 + 24);
        v15 = *(a1 + 32);
        v16 = *(a1 + 40);

        sub_22C3AFAB0(v11, v12, v13);
        result = sub_22C3AFAB0(v14, v15, v16);
        *a3 = v11;
        *(a3 + 8) = v12;
        *(a3 + 16) = v13;
        *(a3 + 24) = v14;
        *(a3 + 32) = v15;
        *(a3 + 40) = v16;
        *(a3 + 48) = a2;
        return result;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_22C822148()
{
  sub_22C36BA7C();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = sub_22C90292C();
  sub_22C369824();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  sub_22C369838();
  v12 = v11 - v10;
  v13 = sub_22C90069C();
  sub_22C369824();
  v15 = v14;
  MEMORY[0x28223BE20](v16);
  sub_22C369838();
  (*(v15 + 16))(v18 - v17, v5, v13);
  sub_22C37BBE4();
  v19(v12, v3, v6);
  type metadata accessor for QueryDecorationSELFLoggerSync(0);
  swift_allocObject();
  sub_22C37B988();
  sub_22C822348();
  v21 = v20;
  (*(v8 + 8))(v3, v6);
  (*(v15 + 8))(v5, v13);
  *(v1 + 16) = v21;
  sub_22C36CC48();
}

uint64_t type metadata accessor for QueryDecorationSELFLoggerSync(uint64_t a1)
{
  result = qword_2814310C8;
  if (!qword_2814310C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_22C822348()
{
  sub_22C36BA7C();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = sub_22C90069C();
  sub_22C369824();
  v16 = v15;
  MEMORY[0x28223BE20](v17);
  sub_22C369838();
  v20 = v19 - v18;
  v23[3] = v3(v5);
  v23[4] = v1;
  v23[0] = v13;
  sub_22C378A4C(v23, v7 + 16);
  (*(v16 + 16))(v7 + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntimeP33_F747242BE1E17047CD31B26B8C3A7DAD29QueryDecorationSELFLoggerSync_contextId, v11, v14);
  sub_22C90068C();
  (*(v16 + 8))(v11, v14);
  sub_22C36FF94(v23);
  (*(v16 + 32))(v7 + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntimeP33_F747242BE1E17047CD31B26B8C3A7DAD29QueryDecorationSELFLoggerSync_componentId, v20, v14);
  v21 = OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntimeP33_F747242BE1E17047CD31B26B8C3A7DAD29QueryDecorationSELFLoggerSync_loggingScope;
  sub_22C90292C();
  sub_22C36985C();
  (*(v22 + 32))(v7 + v21, v9);
  sub_22C36CC48();
}

_BYTE *sub_22C822514(_BYTE *result, int a2, int a3)
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

uint64_t sub_22C8227F8(uint64_t a1)
{
  result = sub_22C90069C();
  if (v2 <= 0x3F)
  {
    result = sub_22C90292C();
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

uint64_t sub_22C8228E4()
{
  sub_22C388250();
  sub_22C3743E4();
  sub_22C37A458();
  v0 = sub_22C90069C();
  sub_22C3699B8(v0);
  v1 = sub_22C90622C();
  sub_22C369914(v1);
  sub_22C370424();
  v2 = swift_task_alloc();
  v3 = sub_22C8236A4(v2);
  *v3 = v4;
  sub_22C36FEE0(v3);
  sub_22C373AE0();
  sub_22C36EC14();

  return sub_22C81D78C(v5, v6, v7, v8, v9, v10);
}

uint64_t sub_22C8229FC()
{
  sub_22C3743E4();
  sub_22C37A458();
  v1 = sub_22C90069C();
  sub_22C3699B8(v1);
  v2 = sub_22C90622C();
  sub_22C369914(v2);
  sub_22C37FB38();
  v3 = swift_task_alloc();
  v4 = sub_22C8236A4(v3);
  *v4 = v5;
  sub_22C823774(v4);
  sub_22C373AE0();

  return sub_22C81D474(v6, v7, v8, v9, v0, v10, v11);
}

uint64_t sub_22C822B2C()
{
  sub_22C36BA7C();
  v1 = sub_22C90069C();
  sub_22C369824();
  v3 = v2;
  v4 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v6 = *(v5 + 64);
  v7 = sub_22C90622C();
  sub_22C369824();
  v9 = v8;
  v10 = (v4 + v6 + *(v8 + 80)) & ~*(v8 + 80);
  swift_unknownObjectRelease();

  (*(v3 + 8))(v0 + v4, v1);
  (*(v9 + 8))(v0 + v10, v7);
  sub_22C36CC48();

  return MEMORY[0x2821FE8E8](v11, v12, v13);
}

uint64_t sub_22C822C5C()
{
  sub_22C388250();
  sub_22C3743E4();
  sub_22C37A458();
  v0 = sub_22C90069C();
  sub_22C3699B8(v0);
  v1 = sub_22C90622C();
  sub_22C369914(v1);
  sub_22C370424();
  v2 = swift_task_alloc();
  v3 = sub_22C8236A4(v2);
  *v3 = v4;
  sub_22C36FEE0(v3);
  sub_22C373AE0();
  sub_22C36EC14();

  return sub_22C81D134(v5, v6, v7, v8, v9, v10);
}

uint64_t sub_22C822D74()
{
  sub_22C388250();
  sub_22C3743E4();
  v0 = sub_22C37B45C();
  sub_22C369914(v0);
  sub_22C3834DC();
  v1 = swift_task_alloc();
  v2 = sub_22C36D860(v1);
  *v2 = v3;
  sub_22C823774(v2);
  sub_22C373AE0();
  sub_22C36EC14();

  return sub_22C81CD10(v4, v5, v6, v7, v8, v9);
}

uint64_t sub_22C822E34()
{
  sub_22C3743E4();
  v1 = sub_22C37B45C();
  sub_22C369914(v1);
  sub_22C370424();
  v2 = *(v0 + 41);
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  v5 = sub_22C36D860(v4);
  *v5 = v6;
  v5[1] = sub_22C82367C;
  sub_22C373AE0();

  return sub_22C81CAA0(v7, v8, v9, v10, v3, v2, v11);
}

uint64_t sub_22C822F1C()
{
  sub_22C388250();
  sub_22C3743E4();
  v0 = sub_22C37B45C();
  sub_22C369914(v0);
  sub_22C3834DC();
  v1 = swift_task_alloc();
  v2 = sub_22C36D860(v1);
  *v2 = v3;
  sub_22C823774(v2);
  sub_22C373AE0();
  sub_22C36EC14();

  return sub_22C81C834(v4, v5, v6, v7, v8, v9);
}

uint64_t sub_22C822FDC()
{
  sub_22C36BA18();
  v0 = sub_22C37B45C();
  sub_22C369914(v0);
  sub_22C37FB38();
  v1 = swift_task_alloc();
  v2 = sub_22C36D860(v1);
  *v2 = v3;
  v2[1] = sub_22C82367C;
  sub_22C373AE0();
  sub_22C372034();

  return sub_22C81C5C0(v4, v5, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_22C8230BC()
{
  sub_22C36BA18();
  v0 = sub_22C37B45C();
  sub_22C369914(v0);
  sub_22C37FB38();
  v1 = swift_task_alloc();
  v2 = sub_22C36D860(v1);
  *v2 = v3;
  v2[1] = sub_22C82367C;
  sub_22C373AE0();
  sub_22C372034();

  return sub_22C81C348(v4, v5, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_22C823198()
{
  sub_22C36BA18();
  v0 = sub_22C3A5908(&qword_27D9BD290, &qword_22C917EC0);
  sub_22C3699B8(v0);
  v1 = sub_22C90622C();
  sub_22C369914(v1);
  sub_22C37FB38();
  v2 = swift_task_alloc();
  v3 = sub_22C8236A4(v2);
  *v3 = v4;
  v3[1] = sub_22C82367C;
  sub_22C373AE0();
  sub_22C372034();

  return sub_22C81C0B8(v5, v6, v7, v8, v9, v10, v11, v12);
}

uint64_t sub_22C8232DC()
{
  v2 = sub_22C37B45C();
  sub_22C369824();
  v4 = v3;
  v5 = *(v3 + 80);
  v6 = (v5 + 48) & ~v5;
  v8 = *(v7 + 64);
  swift_unknownObjectRelease();

  v0(*(v1 + 40));
  (*(v4 + 8))(v1 + v6, v2);

  return MEMORY[0x2821FE8E8](v1, v6 + v8, v5 | 7);
}

uint64_t sub_22C8233AC()
{
  sub_22C388250();
  sub_22C3743E4();
  v0 = sub_22C37B45C();
  sub_22C369914(v0);
  sub_22C3834DC();
  v1 = swift_task_alloc();
  v2 = sub_22C36D860(v1);
  *v2 = v3;
  sub_22C823774(v2);
  sub_22C373AE0();
  sub_22C36EC14();

  return sub_22C81BD64(v4, v5, v6, v7, v8, v9);
}

uint64_t sub_22C82346C()
{
  sub_22C369980();

  sub_22C369A24();

  return v0();
}

uint64_t sub_22C823558()
{
  v0 = sub_22C37B45C();
  sub_22C369914(v0);
  sub_22C370424();
  v1 = swift_task_alloc();
  v2 = sub_22C36D860(v1);
  *v2 = v3;
  v2[1] = sub_22C82367C;
  sub_22C373AE0();

  return sub_22C81BB00(v4, v5, v6, v7, v8);
}

uint64_t sub_22C82362C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_22C8236C4()
{

  JUMPOUT(0x2318B7850);
}

uint64_t sub_22C8236DC()
{
}

unint64_t sub_22C823700@<X0>(uint64_t a1@<X8>)
{

  return sub_22C36F9F4(0xD00000000000002CLL, (a1 - 32) | 0x8000000000000000, (v1 - 112));
}

unint64_t sub_22C823724@<X0>(uint64_t a1@<X8>)
{

  return sub_22C36F9F4(0xD00000000000001ELL, (a1 - 32) | 0x8000000000000000, (v1 - 72));
}

uint64_t sub_22C823748()
{

  return swift_projectBox();
}

uint64_t sub_22C8237B8()
{
  type metadata accessor for QueryDecorationSignpost();
  result = swift_allocObject();
  *(result + 16) = "QueryDecorationPostProcessing.retrieveDynamicEnumerationEntities";
  *(result + 24) = 64;
  *(result + 32) = 2;
  *(result + 40) = 0xD000000000000022;
  *(result + 48) = 0x800000022C936FD0;
  *(result + 56) = 0xD000000000000019;
  *(result + 64) = 0x800000022C937000;
  qword_27D9C05A0 = result;
  return result;
}

uint64_t sub_22C82385C()
{
  type metadata accessor for QueryDecorationSignpost();
  result = swift_allocObject();
  *(result + 16) = "QueryDecorator.callConfigurableToolRetrieval";
  *(result + 24) = 44;
  *(result + 32) = 2;
  *(result + 40) = 0xD00000000000001DLL;
  *(result + 48) = 0x800000022C936F30;
  *(result + 56) = 0xD000000000000020;
  *(result + 64) = 0x800000022C936F50;
  qword_27D9C05A8 = result;
  return result;
}

void *sub_22C823900()
{
  sub_22C377FD4();
  type metadata accessor for QueryDecorationSignpost();
  sub_22C369F54();
  v1 = swift_allocObject();
  result = sub_22C36B7E4(v1, "QueryDecorator.callContextRetriever");
  result[5] = 0xD000000000000014;
  result[6] = v0;
  result[7] = 0xD000000000000017;
  result[8] = 0x800000022C936EE0;
  qword_281432A58 = result;
  return result;
}

void *sub_22C823994()
{
  sub_22C377FD4();
  type metadata accessor for QueryDecorationSignpost();
  sub_22C369F54();
  v0 = swift_allocObject();
  v1 = sub_22C36B7E4(v0, "QueryDecorator.jointResolverToolProcessing");
  result = sub_22C373AF4(v1, 27);
  qword_27D9C05B0 = result;
  return result;
}

double sub_22C823A0C()
{
  sub_22C377FD4();
  type metadata accessor for QueryDecorationSignpost();
  sub_22C369F54();
  v1 = swift_allocObject();
  v2 = sub_22C36B7E4(v1, "QueryDecorator.callSpanMatcher");
  result = 5.04292743e223;
  *(v2 + 40) = xmmword_22C927FF0;
  *(v2 + 56) = 0xD000000000000012;
  *(v2 + 64) = v0;
  qword_27D9C05B8 = v2;
  return result;
}

uint64_t sub_22C823A94()
{
  type metadata accessor for QueryDecorationSignpost();
  result = swift_allocObject();
  *(result + 16) = "QueryDecorator.callToolRetrieval";
  *(result + 24) = 32;
  *(result + 32) = 2;
  *(result + 40) = 0xD000000000000011;
  *(result + 48) = 0x800000022C936DC0;
  *(result + 56) = 0xD000000000000013;
  *(result + 64) = 0x800000022C936DE0;
  qword_27D9C05C0 = result;
  return result;
}

void *sub_22C823B38()
{
  sub_22C377FD4();
  type metadata accessor for QueryDecorationSignpost();
  sub_22C369F54();
  v1 = swift_allocObject();
  result = sub_22C36B7E4(v1, "QueryDecorator.getContextForToolRetrieval");
  result[5] = 0xD00000000000001ALL;
  result[6] = v0;
  result[7] = 0xD000000000000021;
  result[8] = 0x800000022C936D60;
  qword_27D9C05C8 = result;
  return result;
}

double sub_22C823BEC()
{
  type metadata accessor for QueryDecorationSignpost();
  sub_22C369F54();
  v0 = swift_allocObject();
  v1 = sub_22C36B7E4(v0, "QueryDecorator.queryDecorationCollection");
  *(v1 + 40) = xmmword_22C928000;
  result = 1.42733068e60;
  *(v1 + 56) = xmmword_22C928010;
  qword_281432B18 = v1;
  return result;
}

double sub_22C823C60()
{
  sub_22C377FD4();
  type metadata accessor for QueryDecorationSignpost();
  sub_22C369F54();
  v1 = swift_allocObject();
  v2 = sub_22C36B7E4(v1, "QueryDecorator.queryDecoratorCollectionToolbox");
  *(v2 + 40) = 0xD00000000000001FLL;
  *(v2 + 48) = v0;
  result = 1.42733068e60;
  *(v2 + 56) = xmmword_22C928010;
  qword_27D9C05D0 = v2;
  return result;
}

uint64_t sub_22C823CE8()
{
  type metadata accessor for QueryDecorationSignpost();
  result = swift_allocObject();
  *(result + 16) = "QueryDecorator.queryDecoratorCollectionXPCCollection";
  *(result + 24) = 52;
  *(result + 32) = 2;
  *(result + 40) = 0xD000000000000025;
  *(result + 48) = 0x800000022C936C40;
  *(result + 56) = 0xD000000000000014;
  *(result + 64) = 0x800000022C936C70;
  qword_281432B08 = result;
  return result;
}

uint64_t sub_22C823D8C()
{
  type metadata accessor for QueryDecorationSignpost();
  result = swift_allocObject();
  *(result + 16) = "QueryDecorator.backgroundToolRetrievalTotalTime";
  *(result + 24) = 47;
  *(result + 32) = 2;
  *(result + 40) = 0xD000000000000020;
  *(result + 48) = 0x800000022C936BD0;
  *(result + 56) = 0xD000000000000020;
  *(result + 64) = 0x800000022C936BD0;
  qword_27D9C05D8 = result;
  return result;
}

void *sub_22C823E1C()
{
  sub_22C377FD4();
  type metadata accessor for QueryDecorationSignpost();
  sub_22C369F54();
  v0 = swift_allocObject();
  v1 = sub_22C36B7E4(v0, "QueryDecorator.toolRetrievalWaitTime");
  result = sub_22C373AF4(v1, 21);
  qword_27D9C05E0 = result;
  return result;
}

void *sub_22C823E94()
{
  sub_22C377FD4();
  type metadata accessor for QueryDecorationSignpost();
  sub_22C369F54();
  v0 = swift_allocObject();
  v1 = sub_22C36B7E4(v0, "QueryDecorator.backgroundEntityHydrationTotalTime");
  result = sub_22C373AF4(v1, 34);
  qword_27D9C05E8 = result;
  return result;
}

void *sub_22C823F0C()
{
  sub_22C377FD4();
  type metadata accessor for QueryDecorationSignpost();
  sub_22C369F54();
  v0 = swift_allocObject();
  v1 = sub_22C36B7E4(v0, "QueryDecorator.entityHydrationTotalTime");
  result = sub_22C373AF4(v1, 24);
  qword_27D9C05F0 = result;
  return result;
}

void *sub_22C823F84()
{
  sub_22C377FD4();
  type metadata accessor for QueryDecorationSignpost();
  sub_22C369F54();
  v0 = swift_allocObject();
  v1 = sub_22C36B7E4(v0, "QueryDecorator.tupleBuildingTime");
  result = sub_22C373AF4(v1, 17);
  qword_27D9C05F8 = result;
  return result;
}

void *sub_22C823FFC()
{
  sub_22C377FD4();
  type metadata accessor for QueryDecorationSignpost();
  sub_22C369F54();
  v0 = swift_allocObject();
  v1 = sub_22C36B7E4(v0, "QueryDecorator.tupleRankingTime");
  result = sub_22C373AF4(v1, 16);
  qword_27D9C0600 = result;
  return result;
}

void *sub_22C824074()
{
  sub_22C377FD4();
  type metadata accessor for QueryDecorationSignpost();
  sub_22C369F54();
  v0 = swift_allocObject();
  v1 = sub_22C36B7E4(v0, "QueryDecorator.toolSelectionAndSubstitutionTime");
  result = sub_22C373AF4(v1, 32);
  qword_27D9C0608 = result;
  return result;
}

void *sub_22C8240EC()
{
  sub_22C377FD4();
  type metadata accessor for QueryDecorationSignpost();
  sub_22C369F54();
  v0 = swift_allocObject();
  v1 = sub_22C36B7E4(v0, "QueryDecorator.appPreLaunchSelectionTime");
  result = sub_22C373AF4(v1, 25);
  qword_27D9C0610 = result;
  return result;
}

void *sub_22C824164()
{
  sub_22C377FD4();
  type metadata accessor for QueryDecorationSignpost();
  sub_22C369F54();
  v0 = swift_allocObject();
  v1 = sub_22C36B7E4(v0, "QueryDecorator.appPreLaunchTime");
  result = sub_22C373AF4(v1, 16);
  qword_27D9C0618 = result;
  return result;
}

uint64_t sub_22C8241DC(void *a1, uint64_t *a2, uint64_t a3)
{
  if (*a1 != -1)
  {
    swift_once();
  }
}

uint64_t QueryDecorationCoreAnalyticsEvent.eventName.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t QueryDecorationCoreAnalyticsEvent.prefix.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t sub_22C8242E8(uint64_t a1, uint64_t a2)
{
  sub_22C371E6C(v2 + 48, a2);
  *(v2 + 48) = a1;
}

void *sub_22C824368(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = 0;
  v4[2] = a1;
  v4[3] = a2;
  v4[4] = a3;
  v4[5] = a4;
  swift_beginAccess();
  v4[6] = 0;
  return v4;
}

uint64_t sub_22C8243B8(uint64_t a1, uint64_t a2)
{
  sub_22C371E6C(v2 + 48, a2);
  *(v2 + 48) = a1;
}

uint64_t QueryDecorationCoreAnalyticsEvent.deinit()
{

  return v0;
}

uint64_t QueryDecorationCoreAnalyticsEvent.__deallocating_deinit()
{
  QueryDecorationCoreAnalyticsEvent.deinit();

  return swift_deallocClassInstance();
}

uint64_t QueryDecorationSignpost.analytics.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[5];
  v3 = v1[6];
  v4 = v1[7];
  v5 = v1[8];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  return sub_22C4722FC(v2, v3);
}

uint64_t QueryDecorationSignpost.__deallocating_deinit()
{
  sub_22C472340(*(v0 + 40), *(v0 + 48));
  sub_22C369F54();

  return swift_deallocClassInstance();
}

uint64_t sub_22C8244E8(void *a1)
{
  type metadata accessor for QueryDecorationAnalytics();
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  sub_22C38C1D4((a1 + 6), v6);
  v7 = a1[6];

  static QueryDecorationAnalytics.sendEventForProduction(eventName:prefix:eventPayload:)(v2, v3, v4, v5, v7);
}

uint64_t sub_22C824580()
{
  sub_22C3727F4();
  DecorationNull = type metadata accessor for QueryDecorationNullSignposter.QueryDecorationNullActiveSignpost();
  result = swift_allocObject();
  v0[3] = DecorationNull;
  v0[4] = &off_283FC1338;
  *v0 = result;
  return result;
}

uint64_t QueryDecorationCapturingSignposter.signpostEvents.setter(uint64_t a1, uint64_t a2)
{
  sub_22C371E6C(v2 + 16, a2);
  *(v2 + 16) = a1;
}

uint64_t QueryDecorationCapturingSignposter.events.setter(uint64_t a1, uint64_t a2)
{
  sub_22C371E6C(v2 + 24, a2);
  *(v2 + 24) = a1;
}

uint64_t QueryDecorationCapturingSignposter.__allocating_init()()
{
  v0 = swift_allocObject();
  QueryDecorationCapturingSignposter.init()();
  return v0;
}

void *QueryDecorationCapturingSignposter.init()()
{
  v1 = MEMORY[0x277D84F90];
  v0[2] = MEMORY[0x277D84F90];
  v0[3] = v1;
  v0[4] = [objc_allocWithZone(MEMORY[0x277CCAAF8]) init];
  sub_22C90B0FC();
  return v0;
}

uint64_t QueryDecorationCapturingSignposter.begin(_:)(uint64_t a1)
{
  v3 = v2;
  v5 = sub_22C3727F4();
  DecorationCapturing = type metadata accessor for QueryDecorationCapturingSignposter.SignpostEvent(v5);
  v7 = DecorationCapturing - 8;
  MEMORY[0x28223BE20](DecorationCapturing);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for QueryDecorationCapturingSignposter.CapturingSignpostStateImpl(0);
  swift_allocObject();

  v11 = sub_22C8249B4(v3, a1);
  v12 = *(v11 + 16);
  v13 = OBJC_IVAR____TtCC30IntelligenceFlowPlannerRuntime34QueryDecorationCapturingSignposterP33_F96CF7C2E9F3A9F34A91CA78F1C7733226CapturingSignpostStateImpl_instanceId;
  v14 = *(v7 + 32);
  sub_22C90069C();
  sub_22C36985C();
  (*(v15 + 16))(&v9[v14], v11 + v13);

  sub_22C90B0CC();
  *v9 = 0;
  *(v9 + 1) = v12;
  sub_22C82495C();
  result = sub_22C824AA4(v9);
  v1[3] = v10;
  v1[4] = &off_283FC1388;
  *v1 = v11;
  return result;
}

uint64_t sub_22C8249B4(uint64_t a1, uint64_t a2)
{
  v5 = sub_22C90069C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v2 + OBJC_IVAR____TtCC30IntelligenceFlowPlannerRuntime34QueryDecorationCapturingSignposterP33_F96CF7C2E9F3A9F34A91CA78F1C7733226CapturingSignpostStateImpl_owner) = a1;
  *(v2 + 16) = a2;
  sub_22C90068C();
  (*(v6 + 32))(v2 + OBJC_IVAR____TtCC30IntelligenceFlowPlannerRuntime34QueryDecorationCapturingSignposterP33_F96CF7C2E9F3A9F34A91CA78F1C7733226CapturingSignpostStateImpl_instanceId, v8, v5);
  return v2;
}

uint64_t sub_22C824AA4(uint64_t a1)
{
  DecorationCapturing = type metadata accessor for QueryDecorationCapturingSignposter.SignpostEvent(0);
  (*(*(DecorationCapturing - 8) + 8))(a1, DecorationCapturing);
  return a1;
}

uint64_t sub_22C824B00()
{
  v1 = sub_22C90B10C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  DecorationCapturing = type metadata accessor for QueryDecorationCapturingSignposter.SignpostEvent(0);
  v6 = DecorationCapturing - 8;
  MEMORY[0x28223BE20](DecorationCapturing);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v0 + OBJC_IVAR____TtCC30IntelligenceFlowPlannerRuntime34QueryDecorationCapturingSignposterP33_F96CF7C2E9F3A9F34A91CA78F1C7733226CapturingSignpostStateImpl_owner);
  v10 = *(v0 + 16);
  v11 = OBJC_IVAR____TtCC30IntelligenceFlowPlannerRuntime34QueryDecorationCapturingSignposterP33_F96CF7C2E9F3A9F34A91CA78F1C7733226CapturingSignpostStateImpl_instanceId;
  v12 = *(v6 + 32);
  v13 = sub_22C90069C();
  (*(*(v13 - 8) + 16))(&v8[v12], v0 + v11, v13);
  (*(v2 + 16))(v4, v9 + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime34QueryDecorationCapturingSignposter_clock, v1);

  sub_22C90B0CC();
  (*(v2 + 8))(v4, v1);
  *v8 = 1;
  *(v8 + 1) = v10;
  sub_22C82495C();
  return sub_22C824AA4(v8);
}

uint64_t sub_22C824CD0()
{

  v1 = OBJC_IVAR____TtCC30IntelligenceFlowPlannerRuntime34QueryDecorationCapturingSignposterP33_F96CF7C2E9F3A9F34A91CA78F1C7733226CapturingSignpostStateImpl_instanceId;
  v2 = sub_22C90069C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t sub_22C824D84(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  sub_22C3D1040();
  v4 = *(*(a1 + 16) + 16);
  sub_22C3D1204(v4);
  v5 = *(a1 + 16);
  *(v5 + 16) = v4 + 1;
  v6 = *(type metadata accessor for QueryDecorationCapturingSignposter.SignpostEvent(0) - 8);
  sub_22C82585C(a2, v5 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v4);
  *(a1 + 16) = v5;
  return swift_endAccess();
}

uint64_t QueryDecorationCapturingSignposter.EventType.hashValue.getter()
{
  v1 = *v0;
  sub_22C90B62C();
  MEMORY[0x2318B8B10](v1);
  return sub_22C90B66C();
}

uint64_t QueryDecorationCapturingSignposter.SignpostEvent.instanceId.getter()
{
  v2 = sub_22C3727F4();
  v3 = *(type metadata accessor for QueryDecorationCapturingSignposter.SignpostEvent(v2) + 24);
  sub_22C90069C();
  sub_22C36985C();
  v6 = *(v5 + 16);

  return v6(v0, v1 + v3, v4);
}

uint64_t QueryDecorationCapturingSignposter.SignpostEvent.timestamp.getter()
{
  v2 = sub_22C3727F4();
  v3 = *(type metadata accessor for QueryDecorationCapturingSignposter.SignpostEvent(v2) + 28);
  sub_22C90B0EC();
  sub_22C36985C();
  v6 = *(v5 + 16);

  return v6(v0, v1 + v3, v4);
}

uint64_t QueryDecorationCapturingSignposter.emitEvent(event:)(uint64_t a1)
{
  swift_beginAccess();

  MEMORY[0x2318B7AA0](v1);
  sub_22C3D3460();
  sub_22C90A65C();
  return swift_endAccess();
}

uint64_t QueryDecorationCapturingSignposter.deinit()
{

  v1 = OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime34QueryDecorationCapturingSignposter_clock;
  sub_22C90B10C();
  sub_22C36985C();
  (*(v2 + 8))(v0 + v1);
  return v0;
}

uint64_t QueryDecorationCapturingSignposter.__deallocating_deinit()
{
  QueryDecorationCapturingSignposter.deinit();

  return swift_deallocClassInstance();
}

unint64_t sub_22C82519C()
{
  result = qword_27D9C0630;
  if (!qword_27D9C0630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9C0630);
  }

  return result;
}

uint64_t sub_22C825364(uint64_t a1)
{
  result = sub_22C90B10C();
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

uint64_t sub_22C8253FC(uint64_t a1)
{
  result = sub_22C90B0EC();
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

uint64_t sub_22C825518(uint64_t a1)
{
  result = sub_22C90B10C();
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

uint64_t sub_22C8255FC(uint64_t a1)
{
  result = sub_22C90069C();
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

_BYTE *storeEnumTagSinglePayload for QueryDecorationCapturingSignposter.EventType(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_22C8257A0(uint64_t a1)
{
  type metadata accessor for QueryDecorationSignpost();
  result = sub_22C90069C();
  if (v2 <= 0x3F)
  {
    result = sub_22C90B0EC();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_22C82585C(uint64_t a1, uint64_t a2)
{
  DecorationCapturing = type metadata accessor for QueryDecorationCapturingSignposter.SignpostEvent(0);
  (*(*(DecorationCapturing - 8) + 16))(a2, a1, DecorationCapturing);
  return a2;
}

uint64_t sub_22C8258C8(uint64_t a1, int a2, id a3)
{
  v3 = a1;
  if (a3)
  {
    v5 = [a3 domain];
    v6 = sub_22C90A11C();
    v8 = v7;

    MEMORY[0x2318B7850](46, 0xE100000000000000);
    [a3 code];
    v9 = sub_22C90B47C();
    MEMORY[0x2318B7850](v9);

    v10 = v8;
  }

  else
  {
    v6 = 0;
    v10 = 0xE000000000000000;
  }

  v11 = (v3 & 1) == 0;
  if (v3)
  {
    v12 = 0x4670757465534451;
  }

  else
  {
    v12 = 0xD000000000000012;
  }

  if (v11)
  {
    v13 = 0x800000022C937070;
  }

  else
  {
    v13 = 0xED000064656C6961;
  }

  v14 = sub_22C903CEC();
  static AutoBugCaptureHelper.snapshot(caseType:subType:subTypeContext:)(v12, v13, v14, v15, v6, v10);
}

uint64_t sub_22C825A20(uint64_t result, double a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = result;
    if (result)
    {
      result = sub_22C90A64C();
      v4 = 0;
      *(result + 16) = v2;
      v5 = vdupq_n_s64(v2 - 1);
      do
      {
        v6 = vmovn_s64(vcgeq_u64(v5, vorrq_s8(vdupq_n_s64(v4), xmmword_22C9114A0)));
        v7 = result + 8 * v4;
        if (v6.i8[0])
        {
          *(v7 + 32) = a2;
        }

        if (v6.i8[4])
        {
          *(v7 + 40) = a2;
        }

        v4 += 2;
      }

      while (((v2 + 1) & 0xFFFFFFFFFFFFFFFELL) != v4);
    }

    else
    {
      return MEMORY[0x277D84F90];
    }
  }

  return result;
}

uint64_t sub_22C825AE0(uint64_t result, size_t a2)
{
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    if (!a2)
    {
      return MEMORY[0x277D84F90];
    }

    v3 = result;
    v4 = sub_22C90A64C();
    *(v4 + 16) = a2;
    memset((v4 + 32), v3, a2);
    return v4;
  }

  return result;
}

uint64_t sub_22C825B64(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t *a4)
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
      sub_22C3A5908(a3, a4);
      v6 = sub_22C90A64C();
      *(v6 + 16) = a2;
      v7 = a2 - 1;
      for (i = 32; ; i += 8)
      {
        *(v6 + i) = v5;
        if (!v7)
        {
          break;
        }

        --v7;
      }
    }

    else
    {

      return MEMORY[0x277D84F90];
    }

    return v6;
  }

  return result;
}

uint64_t sub_22C825BF4(uint64_t result, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = a2;
    v3 = result;
    if (a2)
    {
      sub_22C3A5908(&qword_27D9BB670, &unk_22C90FA40);
      v4 = sub_22C90A64C();
      *(v4 + 16) = v2;
      v5 = *(sub_22C3A5908(&qword_27D9BB670, &unk_22C90FA40) - 8);
      for (i = v4 + ((*(v5 + 80) + 32) & ~*(v5 + 80)); ; i += *(v5 + 72))
      {
        --v2;
        sub_22C3DB138(v3, i, &qword_27D9BB670, &unk_22C90FA40);
        if (!v2)
        {
          break;
        }
      }
    }

    else
    {
      v4 = MEMORY[0x277D84F90];
    }

    sub_22C36DD28(v3, &qword_27D9BB670, &unk_22C90FA40);
    return v4;
  }

  return result;
}

uint64_t sub_22C825CFC()
{
  sub_22C369980();
  v0[8] = v1;
  v0[9] = v2;
  v0[7] = v3;
  v4 = sub_22C9063DC();
  v0[10] = v4;
  sub_22C3699B8(v4);
  v0[11] = v5;
  v0[12] = swift_task_alloc();
  v6 = sub_22C36BB98();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_22C825DAC()
{
  sub_22C36FB38();
  v1 = v0[9];
  v2 = v1[10];
  v3 = v1[11];
  sub_22C374168(v1 + 7, v2);
  if (qword_27D9BA778 != -1)
  {
    swift_once();
  }

  (*(v3 + 8))(qword_27D9C05F0, v2, v3);
  v4 = sub_22C903E4C();
  v0[13] = v4;
  v5 = swift_task_alloc();
  v0[14] = v5;
  *v5 = v0;
  v5[1] = sub_22C825EC8;
  v6 = v0[9];

  return sub_22C826130(v4, v6);
}

uint64_t sub_22C825EC8()
{
  sub_22C369980();
  sub_22C369A3C();
  sub_22C369A30();
  *v2 = v1;
  v3 = *v0;
  sub_22C369970();
  *v4 = v3;
  *(v6 + 120) = v5;

  v7 = sub_22C36BB98();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_22C825FCC()
{
  sub_22C36FB38();
  v1 = v0[12];
  sub_22C90400C();

  v2 = sub_22C9063CC();
  v3 = sub_22C90AACC();
  v4 = sub_22C37B204(v3);
  v5 = v0[15];
  if (v4)
  {
    v6 = sub_22C36FB44();
    *v6 = 134217984;
    *(v6 + 4) = *(v5 + 16);

    _os_log_impl(&dword_22C366000, v2, v1, "Entity Hydration: checked %ld contextual entities for hydration", v6, 0xCu);
    sub_22C3699EC();
  }

  else
  {
  }

  (*(v0[11] + 8))(v0[12], v0[10]);
  sub_22C903E5C();
  sub_22C903E3C();
  v7 = v0[5];
  v8 = v0[6];
  sub_22C374168(v0 + 2, v7);
  (*(v8 + 8))(v7, v8);
  sub_22C36FF94(v0 + 2);

  sub_22C369A24();

  return v9();
}

uint64_t sub_22C826130(uint64_t a1, uint64_t a2)
{
  v2[13] = a1;
  v2[14] = a2;
  v3 = sub_22C9063DC();
  v2[15] = v3;
  v2[16] = *(v3 - 8);
  v2[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22C8261F0, 0, 0);
}

uint64_t sub_22C8261F0()
{
  sub_22C3743E4();
  sub_22C3DB138(*(v0 + 112) + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime22QueryDecorationContext_toolExecutionSession, v0 + 56, &qword_27D9C06A0, &qword_22C929950);
  if (*(v0 + 80))
  {
    v16 = *(v0 + 104);
    sub_22C36C730((v0 + 56), v0 + 16);
    v1 = sub_22C3A5908(&qword_27D9C06A8, &qword_22C9283D8);
    v2 = swift_task_alloc();
    *(v0 + 144) = v2;
    *(v2 + 16) = v16;
    *(v2 + 32) = v0 + 16;
    v3 = sub_22C3A5908(&qword_27D9BFAA8, &qword_22C9297F0);
    swift_task_alloc();
    sub_22C36CC90();
    *(v0 + 152) = v4;
    *v4 = v5;
    v4[1] = sub_22C826420;

    return MEMORY[0x282200600](v0 + 96, v1, v3, 0, 0, &unk_22C9283E8, v2, v1);
  }

  else
  {
    sub_22C36DD28(v0 + 56, &qword_27D9C06A0, &qword_22C929950);
    sub_22C90400C();
    v6 = sub_22C9063CC();
    v7 = sub_22C90AADC();
    if (sub_22C37B204(v7))
    {
      v8 = sub_22C36D240();
      sub_22C36C890(v8);
      sub_22C36BB14(&dword_22C366000, v9, v10, "Entity Hydration: Unable to perform entity hydration as toolExecutionSession was nil.");
      sub_22C372FB0();
    }

    v11 = sub_22C36BAFC();
    v12(v11);

    v13 = sub_22C385830();

    return v14(v13);
  }
}

uint64_t sub_22C826420()
{
  sub_22C369980();
  sub_22C369A3C();
  v1 = *v0;
  sub_22C369970();
  *v2 = v1;

  v3 = sub_22C36BB98();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_22C826520()
{
  sub_22C369980();
  sub_22C36FF94((v0 + 16));

  v1 = sub_22C385830();

  return v2(v1);
}

uint64_t sub_22C826584(uint64_t a1)
{
  v2 = sub_22C9063DC();
  sub_22C369824();
  v72 = v3;
  MEMORY[0x28223BE20](v4);
  sub_22C369ABC();
  v7 = v5 - v6;
  MEMORY[0x28223BE20](v8);
  v68 = &v63[-v9];
  v70 = sub_22C3A5908(&qword_27D9BB670, &unk_22C90FA40);
  sub_22C36985C();
  MEMORY[0x28223BE20](v10);
  sub_22C369ABC();
  v69 = (v11 - v12);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v63[-v15];
  MEMORY[0x28223BE20](v14);
  v18 = &v63[-v17];
  v19 = sub_22C90399C();
  sub_22C369824();
  v21 = v20;
  MEMORY[0x28223BE20](v22);
  sub_22C369ABC();
  v66 = (v23 - v24);
  v26 = MEMORY[0x28223BE20](v25);
  v67 = &v63[-v27];
  MEMORY[0x28223BE20](v26);
  v29 = &v63[-v28];
  sub_22C3DB138(a1, v18, &qword_27D9BB670, &unk_22C90FA40);
  v30 = sub_22C370B74(v18, 1, v19);
  v71 = v2;
  if (v30 == 1)
  {
    sub_22C36DD28(v18, &qword_27D9BB670, &unk_22C90FA40);
    sub_22C90400C();
    sub_22C3DB138(a1, v16, &qword_27D9BB670, &unk_22C90FA40);
    v34 = sub_22C9063CC();
    v35 = sub_22C90AACC();
    if (os_log_type_enabled(v34, v35))
    {
      v37 = sub_22C36FB44();
      v38 = sub_22C370060();
      v73 = v38;
      *v37 = 136315138;
      sub_22C3DB138(v16, v69, &qword_27D9BB670, &unk_22C90FA40);
      v39 = sub_22C90A1AC();
      v41 = v40;
      sub_22C36DD28(v16, &qword_27D9BB670, &unk_22C90FA40);
      v42 = sub_22C36F9F4(v39, v41, &v73);

      *(v37 + 4) = v42;
      _os_log_impl(&dword_22C366000, v34, v35, "Entity Hydration: skipHydrating missing entity or shouldHydrate result. Hydration will be skipped for %s.", v37, 0xCu);
      sub_22C36FF94(v38);
      sub_22C3699EC();
      sub_22C372FB0();

      (*(v72 + 8))(v7, v71);
    }

    else
    {

      sub_22C36DD28(v16, &qword_27D9BB670, &unk_22C90FA40);
      (*(v72 + 8))(v7, v2);
    }

    v43 = 1;
  }

  else
  {
    v65 = v21;
    (*(v21 + 32))(v29, v18, v19);
    if (qword_27D9BA7A8 != -1)
    {
      swift_once();
    }

    v31 = qword_27D9C0690;
    v32 = unk_27D9C0698;
    sub_22C374168(qword_27D9C0678, qword_27D9C0690);
    v33 = (*(v32 + 16))(v29, v31, v32);
    v45 = v33;
    v46 = v65;
    if (v33)
    {
      v47 = v68;
      sub_22C90400C();
      v48 = *(v46 + 16);
      v49 = v67;
      v48(v67, v29, v19);
      v50 = sub_22C9063CC();
      v51 = sub_22C90AACC();
      if (os_log_type_enabled(v50, v51))
      {
        v52 = sub_22C36FB44();
        v69 = sub_22C370060();
        v73 = v69;
        *v52 = 136315138;
        v64 = v51;
        v48(v66, v49, v19);
        v53 = sub_22C90A1AC();
        v55 = v54;
        LODWORD(v70) = v45;
        v56 = *(v46 + 8);
        (v56)(v49, v19);
        v57 = sub_22C36F9F4(v53, v55, &v73);

        *(v52 + 4) = v57;
        _os_log_impl(&dword_22C366000, v50, v64, "Entity Hydration: shouldHydrate result dictates that Hydration will be performed for %s.", v52, 0xCu);
        sub_22C36FF94(v69);
        sub_22C3699EC();
        sub_22C372FB0();

        (*(v72 + 8))(v68, v71);
        v58 = sub_22C371510();
        v56(v58);
        LOBYTE(v45) = v70;
      }

      else
      {

        v61 = *(v46 + 8);
        (v61)(v49, v19);
        (*(v72 + 8))(v47, v71);
        v62 = sub_22C371510();
        v61(v62);
      }
    }

    else
    {
      v59 = sub_22C371510();
      v60(v59);
    }

    v43 = v45 ^ 1;
  }

  return v43 & 1;
}

uint64_t sub_22C826BC0()
{
  sub_22C369980();
  v0[33] = v1;
  v0[34] = v2;
  v0[32] = v3;
  v4 = sub_22C903E7C();
  v0[35] = v4;
  sub_22C3699B8(v4);
  v0[36] = v5;
  v0[37] = *(v6 + 64);
  v0[38] = swift_task_alloc();
  sub_22C3A5908(&qword_27D9BBB48, &qword_22C910F00);
  v0[39] = swift_task_alloc();
  v7 = sub_22C9063DC();
  v0[40] = v7;
  sub_22C3699B8(v7);
  v0[41] = v8;
  v0[42] = swift_task_alloc();
  v0[43] = swift_task_alloc();
  v9 = sub_22C36BB98();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_22C826D10()
{
  sub_22C3DB138(*(v0 + 272), v0 + 56, &qword_27D9C01C8, &qword_22C9298B0);
  if (*(v0 + 80))
  {
    sub_22C36C730((v0 + 56), v0 + 16);
    sub_22C378A4C(v0 + 16, v0 + 96);
    sub_22C3A5908(&qword_27D9C06C0, &qword_22C928430);
    if (swift_dynamicCast())
    {
      sub_22C90400C();
      v1 = sub_22C9063CC();
      v2 = sub_22C90AADC();
      if (sub_22C37B204(v2))
      {
        v3 = sub_22C36D240();
        sub_22C36C890(v3);
        sub_22C36BB14(&dword_22C366000, v4, v5, "Entity Hydration: QueryDecorationHydratedEntityCache was QueryDecorationFallbackNoOpCache. Skipping nonBlocking hydration.");
        sub_22C372FB0();
      }

      v6 = sub_22C36BAFC();
      v7(v6);
      sub_22C36FF94((v0 + 16));
    }

    else
    {
      v14 = *(v0 + 264);
      v15 = v14[10];
      v16 = v14[11];
      sub_22C374168(v14 + 7, v15);
      if (qword_27D9BA770 != -1)
      {
        swift_once();
      }

      v17 = *(v0 + 304);
      v18 = *(v0 + 288);
      v32 = *(v0 + 296);
      v19 = *(v0 + 280);
      v21 = *(v0 + 256);
      v20 = *(v0 + 264);
      (*(v16 + 8))(qword_27D9C05E8, v15, v16);
      sub_22C90416C();
      swift_allocObject();
      v22 = sub_22C90417C();
      sub_22C90A75C();
      sub_22C36A748();
      sub_22C36C640(v23, v24, v25, v26);
      sub_22C378A4C(v0 + 16, v0 + 176);
      (*(v18 + 16))(v17, v21, v19);
      sub_22C378A4C(v0 + 136, v0 + 216);
      v27 = (*(v18 + 80) + 88) & ~*(v18 + 80);
      v28 = swift_allocObject();
      *(v28 + 2) = 0;
      *(v28 + 3) = 0;
      *(v28 + 4) = v22;
      *(v28 + 5) = v20;
      sub_22C36C730((v0 + 176), (v28 + 48));
      (*(v18 + 32))(&v28[v27], v17, v19);
      sub_22C36C730((v0 + 216), &v28[(v32 + v27 + 7) & 0xFFFFFFFFFFFFFFF8]);

      sub_22C82B8E4();
      sub_22C36FF94((v0 + 136));
      sub_22C36FF94((v0 + 16));
    }
  }

  else
  {
    sub_22C36DD28(v0 + 56, &qword_27D9C01C8, &qword_22C9298B0);
    sub_22C90400C();
    v8 = sub_22C9063CC();
    v9 = sub_22C90AADC();
    if (os_log_type_enabled(v8, v9))
    {
      *sub_22C36D240() = 0;
      sub_22C369A04(&dword_22C366000, v10, v11, "Entity Hydration:: QueryDecorationHydratedEntityCache was not initialised. Skipping nonBlocking hydration.");
      sub_22C3699EC();
    }

    v12 = sub_22C36BAFC();
    v13(v12);
  }

  v29 = sub_22C385830();

  return v30(v29);
}

uint64_t sub_22C8270EC@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D41D50];
  v3 = sub_22C90415C();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_22C827160(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[4] = a7;
  v8[5] = a8;
  v8[2] = a5;
  v8[3] = a6;
  v9 = sub_22C903E7C();
  v8[6] = v9;
  v10 = *(v9 - 8);
  v8[7] = v10;
  v8[8] = *(v10 + 64);
  v8[9] = swift_task_alloc();
  v8[10] = swift_task_alloc();
  sub_22C3A5908(&qword_27D9C06C8, &qword_22C929790);
  v8[11] = swift_task_alloc();
  sub_22C3A5908(&qword_27D9C06D0, &qword_22C929880);
  v8[12] = swift_task_alloc();
  v8[13] = sub_22C3A5908(&qword_27D9C0240, &qword_22C926718);
  v8[14] = swift_task_alloc();
  v11 = sub_22C9063DC();
  v8[15] = v11;
  v8[16] = *(v11 - 8);
  v8[17] = swift_task_alloc();
  v8[18] = swift_task_alloc();
  v8[19] = swift_task_alloc();
  v8[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22C827364, 0, 0);
}

uint64_t sub_22C827364(uint64_t a1)
{
  sub_22C90400C();
  v2 = sub_22C9063CC();
  v3 = sub_22C90AACC();
  if (sub_22C37B204(v3))
  {
    v4 = sub_22C36D240();
    sub_22C36C890(v4);
    sub_22C36BB14(&dword_22C366000, v5, v6, "Entity Hydration: Triggering in background");
    sub_22C372FB0();
  }

  v7 = v1[16];
  v9 = v1[12];
  v8 = v1[13];
  v10 = v1[11];

  v11 = *(v7 + 8);
  v1[21] = v11;
  v12 = sub_22C36BAFC();
  v11(v12);
  sub_22C908D2C();
  sub_22C36A748();
  sub_22C36C640(v13, v14, v15, v16);

  sub_22C83CBDC(v17, 0x747865746E6F63, 0xE700000000000000, v10, v9);
  v18 = sub_22C370B74(v9, 1, v8);
  v19 = v1[12];
  if (v18 == 1)
  {
    sub_22C36DD28(v19, &qword_27D9C06D0, &qword_22C929880);
    sub_22C90400C();
    v20 = sub_22C9063CC();
    v21 = sub_22C90AADC();
    if (os_log_type_enabled(v20, v21))
    {
      *sub_22C36D240() = 0;
      sub_22C369A04(&dword_22C366000, v22, v23, "Entity Hydration: Unable to create cache key. Background hydration will not run.");
      sub_22C3699EC();
    }

    v24 = sub_22C36BAFC();
    v25 = (v11)(v24);
    sub_22C829EF4(v25, v26, v27, v28, v29, v30, v31, v32);

    sub_22C369C50();

    return v33();
  }

  else
  {
    v36 = v1[8];
    v35 = v1[9];
    v37 = v1[6];
    v38 = v1[7];
    v39 = v1[3];
    v40 = v1[4];
    v41 = v1[2];
    sub_22C3DB08C(v19, v1[14], &qword_27D9C0240, &qword_22C926718);
    v42 = v39[3];
    v43 = v39[4];
    sub_22C374168(v39, v42);
    (*(v38 + 16))(v35, v40, v37);
    v44 = (*(v38 + 80) + 16) & ~*(v38 + 80);
    v45 = swift_allocObject();
    v1[22] = v45;
    (*(v38 + 32))(v45 + v44, v35, v37);
    *(v45 + ((v36 + v44 + 7) & 0xFFFFFFFFFFFFFFF8)) = v41;
    v46 = *(v43 + 56);

    v52 = (v46 + *v46);
    swift_task_alloc();
    sub_22C36CC90();
    v1[23] = v47;
    *v47 = v48;
    v47[1] = sub_22C827748;
    v49 = v1[14];
    v50 = v1[10];
    v51 = v1[6];

    return v52(v50, v49, &unk_22C928450, v45, v51, v42, v43);
  }
}