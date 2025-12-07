void sub_22C0F67EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22BE19130();
  v25 = v24;
  v26 = sub_22BE5CE4C(&qword_27D9091A8, &qword_22C27FDA0);
  v27 = sub_22BE19448(v26);
  MEMORY[0x28223BE20](v27);
  sub_22BE17B98();
  v159 = v28;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v29);
  sub_22BE19E94();
  v31 = sub_22BE18950(v30);
  v169 = type metadata accessor for ContextProtoRetrievedContext(v31);
  sub_22BE18000();
  MEMORY[0x28223BE20](v32);
  sub_22BE17B98();
  v158 = v33;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v34);
  sub_22BE19E94();
  sub_22BE18950(v35);
  v166 = sub_22C270F24();
  sub_22BE179D8();
  v146 = v36;
  MEMORY[0x28223BE20](v37);
  sub_22BE17B98();
  v157 = v38;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v39);
  sub_22BE19E94();
  sub_22BE190A8(v40);
  v41 = sub_22BE5CE4C(&qword_27D9090F8, &unk_22C2AE4A0);
  v42 = sub_22BE19448(v41);
  MEMORY[0x28223BE20](v42);
  sub_22BE17B98();
  v160 = v43;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v44);
  sub_22BE19E94();
  v46 = sub_22BE18950(v45);
  v171 = type metadata accessor for TranscriptProtoStatementID(v46);
  sub_22BE18000();
  MEMORY[0x28223BE20](v47);
  sub_22BE186D4();
  MEMORY[0x28223BE20](v48);
  sub_22BE19E94();
  sub_22BE18950(v49);
  v168 = sub_22C26E684();
  sub_22BE179D8();
  v51 = v50;
  MEMORY[0x28223BE20](v52);
  sub_22BE17B98();
  v173 = v53;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v54);
  sub_22BE19E94();
  v163 = v55;
  v56 = sub_22BE183BC();
  type metadata accessor for RetrievedContextStatement(v56);
  sub_22BE179D8();
  v165 = v57;
  MEMORY[0x28223BE20](v57);
  sub_22BE1958C();
  MEMORY[0x28223BE20](v58);
  sub_22BE19E94();
  v60 = sub_22BE18950(v59);
  v167 = type metadata accessor for TranscriptProtoRetrievedContextStatement(v60);
  sub_22BE179D8();
  MEMORY[0x28223BE20](v61);
  sub_22BE183AC();
  sub_22BE1AF10();
  MEMORY[0x28223BE20](v62);
  sub_22BE25F20();
  MEMORY[0x28223BE20](v63);
  sub_22BE23B44();
  MEMORY[0x28223BE20](v64);
  sub_22BE19E94();
  v164 = v65;
  v66 = *(v25 + 16);
  v67 = sub_22BE3122C(MEMORY[0x277D84F90]);
  sub_22BE719F0(v67, v66, 0);
  v68 = a10;
  v170 = v25;
  v161 = v66;
  v162 = v51;
  if (v66)
  {
    v172 = v23;
    v69 = 0;
    sub_22BE25AD8();
    v155 = v25 + v70;
    v156 = *(v25 + 16);
    v154 = v51 + 32;
    v71 = v146;
    v153 = (v146 + 32);
    while (v156 != v69)
    {
      if (v69 >= *(v25 + 16))
      {
        goto LABEL_33;
      }

      sub_22BE23EE8();
      sub_22C108688(v72, v172, v73);
      sub_22BE25300();
      sub_22C108688(v74, v75, v76);
      sub_22BE2B984(v21, v160, &qword_27D9090F8, &unk_22C2AE4A0);
      v77 = sub_22BE391E8();
      sub_22BE1AB5C(v77, v78, v171);
      if (v79)
      {
        sub_22BE33928(v160, &qword_27D9090F8, &unk_22C2AE4A0);
        v129 = sub_22BE5CE4C(&qword_27D911F78, &qword_22C2B5D00);
        sub_22BE3369C(v129);
        v130 = sub_22C108DF4();
        v131 = sub_22BE196B4(&type metadata for TranscriptConversion.Error, v130);
        sub_22BE28DE0(v131, v132);
        sub_22BE3C870();
        sub_22C108634();
        goto LABEL_30;
      }

      sub_22BE1A788();
      v80 = sub_22BE41FB4();
      sub_22C1086E4(v80, v81, v82);

      sub_22C26E664();
      sub_22C108760();
      sub_22C108634();
      sub_22BE2B984(v21 + *(v167 + 20), v159, &qword_27D9091A8, &qword_22C27FDA0);
      v83 = sub_22BE391E8();
      sub_22BE1AB5C(v83, v84, v169);
      if (v79)
      {
        sub_22BE33928(v159, &qword_27D9091A8, &qword_22C27FDA0);
        v133 = sub_22BE5CE4C(&qword_27D911E20, &unk_22C2B5AA8);
        sub_22BE3369C(v133);
        v134 = sub_22C108DF4();
        v135 = sub_22BE196B4(&type metadata for TranscriptConversion.Error, v134);
        sub_22BE28DE0(v135, v136);
LABEL_24:
        sub_22BE3C870();
        sub_22C108634();
        (*(v162 + 8))(v173, v168);
        goto LABEL_30;
      }

      sub_22C1087B0();
      sub_22C1086E4(v159, v158, v85);
      RetrievedContext.init(transcript:)(v158, v86, v87, v88, v89, v90, v91, v92, v145, v146, SWORD2(v146), SBYTE6(v146), SHIBYTE(v146), v147, v148, v149, v150, v151, v152, v153, v154, v155, v156);
      if (v20)
      {
        goto LABEL_24;
      }

      sub_22C108634();
      sub_22BE33554();
      v93(v22, v173, v168);
      (*v153)(v22 + *(v165 + 20), v157, v166);
      sub_22C108634();
      a10 = v68;
      v95 = *(v68 + 16);
      v94 = *(v68 + 24);
      if (v95 >= v94 >> 1)
      {
        sub_22BE3D1E4(v94);
        sub_22BE39E18();
        sub_22BE719F0(v98, v99, v100);
      }

      ++v69;
      *(v68 + 16) = v95 + 1;
      sub_22BE197A0();
      sub_22BE41704();
      sub_22C1086E4(v22, v96, v97);
      v51 = v162;
      v25 = v170;
      if (v161 == v69)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
  }

  else
  {
    v71 = v146;
LABEL_13:
    v101 = (v71 + 32);
    for (i = v161; ; ++i)
    {
      v103 = *(v25 + 16);
      if (i == v103)
      {

        goto LABEL_31;
      }

      if (i >= v103)
      {
        goto LABEL_34;
      }

      sub_22BE25AD8();
      sub_22BE23EE8();
      sub_22C108688(v104, v164, v105);
      sub_22C108688(v164, v174, v25);
      sub_22C108C10();
      sub_22BE2B984(v106, v107, &qword_27D9090F8, &unk_22C2AE4A0);
      sub_22BE1AB5C(v25, 1, v171);
      if (v79)
      {
        sub_22BE33928(v25, &qword_27D9090F8, &unk_22C2AE4A0);
        v137 = sub_22BE5CE4C(&qword_27D911F78, &qword_22C2B5D00);
        sub_22BE3369C(v137);
        v138 = sub_22C108DF4();
        v139 = sub_22BE196B4(&type metadata for TranscriptConversion.Error, v138);
        sub_22BE28DE0(v139, v140);
        sub_22BE3C870();
        sub_22C108634();
        goto LABEL_30;
      }

      sub_22BE1A788();
      sub_22C1086E4(v25, v150, v108);
      v109 = *(v150 + 8);

      sub_22C26E664();
      sub_22C108760();
      sub_22C108634();
      sub_22C108C10();
      sub_22BE2B984(v110, v111, &qword_27D9091A8, &qword_22C27FDA0);
      sub_22BE1AB5C(v109, 1, v169);
      if (v79)
      {
        sub_22BE33928(v109, &qword_27D9091A8, &qword_22C27FDA0);
        v141 = sub_22BE5CE4C(&qword_27D911E20, &unk_22C2B5AA8);
        sub_22BE3369C(v141);
        v142 = sub_22C108DF4();
        v143 = sub_22BE196B4(&type metadata for TranscriptConversion.Error, v142);
        sub_22BE28DE0(v143, v144);
        sub_22BE3C870();
        goto LABEL_29;
      }

      sub_22C1087B0();
      sub_22C108C10();
      sub_22C1086E4(v112, v113, v114);
      v115 = v148;
      RetrievedContext.init(transcript:)(v109, v116, v117, v118, v119, v120, v121, v122, v145, v146, SWORD2(v146), SBYTE6(v146), SHIBYTE(v146), v147, v148, v149, v150, v151, v152, v153, v154, v155, v156);
      if (v20)
      {
        break;
      }

      sub_22C108634();
      (*(v51 + 32))(v147, v163, v168);
      (*v101)(v147 + *(v165 + 20), v115, v166);
      sub_22C108634();
      sub_22C108CEC();
      if (v115 >= v123 >> 1)
      {
        sub_22BE3D1E4(v123);
        sub_22BE39E18();
        sub_22BE719F0(v126, v127, v128);
        v68 = a10;
      }

      *(v68 + 16) = v115 + 1;
      sub_22BE197A0();
      sub_22BE41704();
      sub_22C1086E4(v147, v124, v125);
      v25 = v170;
    }

    sub_22BE3C870();
LABEL_29:
    sub_22C108634();
    (*(v162 + 8))(v163, v168);
LABEL_30:

    sub_22BE3C870();
    sub_22C108634();

LABEL_31:
    sub_22C108C5C();
    sub_22BE18478();
  }
}

void sub_22C0F7204(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_22BE19130();
  v13 = v10;
  v15 = v14;
  Results = type metadata accessor for TranscriptProtoQueryResults(0);
  v17 = sub_22BE17A18(Results);
  MEMORY[0x28223BE20](v17);
  sub_22BE195A8();
  MEMORY[0x28223BE20](v18);
  sub_22BE25F20();
  MEMORY[0x28223BE20](v19);
  sub_22BE19490();
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v20);
  sub_22BE19E94();
  v49 = v21;
  v22 = *(v15 + 16);
  v23 = sub_22BE355B4(MEMORY[0x277D84F90]);
  sub_22BE71A48(v23, v24, v25);
  if (v22)
  {
    v26 = 0;
    v52 = v11;
    v53 = *(v15 + 16);
    sub_22BE19E14();
    v51 = v22;
    v50 = v12;
    while (v53 != v26)
    {
      if (v26 >= *(v15 + 16))
      {
        goto LABEL_21;
      }

      sub_22BE35D90();
      sub_22C108688(v27, v12, v28);
      sub_22C108688(v12, v52, v11);

      sub_22C0F4E60();
      if (v13)
      {
LABEL_17:

        sub_22C108634();
        sub_22BE260B8();
        sub_22C108634();

LABEL_18:
        sub_22BE18478();
        return;
      }

      v11 = v29;
      v30 = v15;
      sub_22BE28E90();
      sub_22C108634();
      sub_22BF6AC14();
      sub_22C108634();
      v32 = *(a10 + 16);
      v31 = *(a10 + 24);
      if (v32 >= v31 >> 1)
      {
        sub_22BE3D1E4(v31);
        sub_22BE39E18();
        sub_22BE71A48(v33, v34, v35);
      }

      ++v26;
      *(a10 + 16) = v32 + 1;
      *(a10 + 8 * v32 + 32) = v11;
      v22 = v51;
      v15 = v30;
      v13 = 0;
      v12 = v50;
      if (v51 == v26)
      {
        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    for (i = v15; ; v15 = i)
    {
      v36 = *(v15 + 16);
      if (v22 == v36)
      {

        goto LABEL_18;
      }

      if (v22 >= v36)
      {
        break;
      }

      sub_22BE19E14();
      sub_22BE35D90();
      sub_22C108688(v37, v49, v38);
      sub_22BE4178C();
      sub_22C108688(v39, v40, v41);

      sub_22C0F4E60();
      if (v13)
      {
        goto LABEL_17;
      }

      v43 = v42;
      sub_22BE28E90();
      sub_22C108634();
      sub_22C108634();
      v45 = *(a10 + 16);
      v44 = *(a10 + 24);
      if (v45 >= v44 >> 1)
      {
        sub_22BE3D1E4(v44);
        sub_22BE39E18();
        sub_22BE71A48(v46, v47, v48);
      }

      *(a10 + 16) = v45 + 1;
      *(a10 + 8 * v45 + 32) = v43;
      ++v22;
    }

    __break(1u);
  }

  __break(1u);
LABEL_21:
  __break(1u);
}

void sub_22C0F751C()
{
  sub_22BE19130();
  v5 = sub_22BE25FD8();
  v6 = type metadata accessor for SpanMatchedEntityStatement(v5);
  v7 = sub_22BE17A18(v6);
  MEMORY[0x28223BE20](v7);
  sub_22BE17B98();
  v87 = v8;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v9);
  v18 = sub_22BE40C6C(v10, v11, v12, v13, v14, v15, v16, v17, v82);
  v19 = type metadata accessor for TranscriptProtoSpanMatchedEntityStatement(v18);
  v20 = sub_22BE17A18(v19);
  v22 = v21;
  MEMORY[0x28223BE20](v20);
  sub_22BE17D10();
  MEMORY[0x28223BE20](v23);
  sub_22BE2351C();
  MEMORY[0x28223BE20](v24);
  sub_22BE23730(v25, v26, v27, v28, v29, v30, v31, v32, v83);
  MEMORY[0x28223BE20](v33);
  sub_22BE37614(v34, v35, v36, v37, v38, v39, v40, v41, v84);
  v42 = sub_22BE3BF38(MEMORY[0x277D84F90]);
  sub_22BE71AB4(v42, v43, v44);
  sub_22BE35CC8();
  if (v4)
  {
    sub_22C108740();
    while (1)
    {
      sub_22C108C40();
      if (v45)
      {
        break;
      }

      sub_22BE27A88();
      if (v64)
      {
        goto LABEL_23;
      }

      sub_22BE36598();
      sub_22C1089CC();
      sub_22C108688(v46, v3, v47);
      v48 = sub_22BE289D8();
      sub_22C108688(v48, v49, v22);
      v50 = sub_22BE351D8();
      SpanMatchedEntityStatement.init(transcript:)(v50, v51, v52, v53, v54, v55, v56, v57, v85, v86);
      if (v0)
      {
        sub_22C108C04();
LABEL_19:

        sub_22BE1AFC0();
        sub_22C108634();

LABEL_20:
        sub_22BE29F1C();
        sub_22BE18478();
        return;
      }

      sub_22BE1AFC0();
      sub_22C108634();
      sub_22BE182F0();
      if (v64)
      {
        v61 = sub_22BE1A028(v58);
        sub_22BE71AB4(v61, v62, v63);
      }

      sub_22BE373FC();
      sub_22BE32D74();
      sub_22C1086E4(v87, v59, v60);
      if (v4 == v2)
      {
        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    sub_22C108C1C();
    while (1)
    {
      sub_22BE47E0C();
      if (v45)
      {

        goto LABEL_20;
      }

      if (v64)
      {
        break;
      }

      sub_22BE25B48(v65);
      sub_22C1089CC();
      sub_22C108688(v66, v1, v67);
      sub_22C108914();
      v68 = sub_22C1088B8();
      SpanMatchedEntityStatement.init(transcript:)(v68, v69, v70, v71, v72, v73, v74, v75, v85, v86);
      if (v0)
      {
        goto LABEL_19;
      }

      sub_22BE1AFC0();
      sub_22C108634();
      sub_22BE182F0();
      if (v64)
      {
        v79 = sub_22BE1A028(v76);
        sub_22BE71AB4(v79, v80, v81);
      }

      sub_22BE2F224();
      sub_22BE32D74();
      sub_22C1086E4(v88, v77, v78);
      sub_22BE3C654();
    }

    __break(1u);
  }

  __break(1u);
LABEL_23:
  __break(1u);
}

void sub_22C0F77A0()
{
  sub_22BE19130();
  v5 = sub_22BE25FD8();
  v6 = type metadata accessor for StatementResult(v5);
  v7 = sub_22BE17A18(v6);
  MEMORY[0x28223BE20](v7);
  sub_22BE17B98();
  v69 = v8;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v9);
  v18 = sub_22BE40C6C(v10, v11, v12, v13, v14, v15, v16, v17, v66);
  v19 = type metadata accessor for TranscriptProtoStatementResult(v18);
  v20 = sub_22BE17A18(v19);
  v22 = v21;
  MEMORY[0x28223BE20](v20);
  sub_22BE17D10();
  MEMORY[0x28223BE20](v23);
  sub_22BE2351C();
  MEMORY[0x28223BE20](v24);
  sub_22BE23730(v25, v26, v27, v28, v29, v30, v31, v32, v67);
  MEMORY[0x28223BE20](v33);
  sub_22BE37614(v34, v35, v36, v37, v38, v39, v40, v41, v68);
  v42 = sub_22BE3BF38(MEMORY[0x277D84F90]);
  sub_22BE71B0C(v42, v43, v44);
  sub_22BE35CC8();
  if (v4)
  {
    sub_22C108740();
    while (1)
    {
      sub_22C108C40();
      if (v45)
      {
        break;
      }

      sub_22BE27A88();
      if (v56)
      {
        goto LABEL_23;
      }

      sub_22BE36598();
      sub_22C10899C();
      sub_22C108688(v46, v3, v47);
      v48 = sub_22BE289D8();
      sub_22C108688(v48, v49, v22);
      sub_22BE351D8();
      StatementResult.init(transcript:)();
      if (v0)
      {
        sub_22C108C04();
LABEL_19:

        sub_22BE1B0F0();
        sub_22C108634();

LABEL_20:
        sub_22BE29F1C();
        sub_22BE18478();
        return;
      }

      sub_22BE1B0F0();
      sub_22C108634();
      sub_22BE182F0();
      if (v56)
      {
        v53 = sub_22BE1A028(v50);
        sub_22BE71B0C(v53, v54, v55);
      }

      sub_22BE373FC();
      sub_22BE28F84();
      sub_22C1086E4(v69, v51, v52);
      if (v4 == v2)
      {
        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    sub_22C108C1C();
    while (1)
    {
      sub_22BE47E0C();
      if (v45)
      {

        goto LABEL_20;
      }

      if (v56)
      {
        break;
      }

      sub_22BE25B48(v57);
      sub_22C10899C();
      sub_22C108688(v58, v1, v59);
      sub_22C108914();
      sub_22C1088B8();
      StatementResult.init(transcript:)();
      if (v0)
      {
        goto LABEL_19;
      }

      sub_22BE1B0F0();
      sub_22C108634();
      sub_22BE182F0();
      if (v56)
      {
        v63 = sub_22BE1A028(v60);
        sub_22BE71B0C(v63, v64, v65);
      }

      sub_22BE2F224();
      sub_22BE28F84();
      sub_22C1086E4(v70, v61, v62);
      sub_22BE3C654();
    }

    __break(1u);
  }

  __break(1u);
LABEL_23:
  __break(1u);
}

void sub_22C0F7A24()
{
  sub_22BE19130();
  v5 = sub_22BE25FD8();
  v6 = type metadata accessor for ProgramStatement(v5);
  v7 = sub_22BE17A18(v6);
  MEMORY[0x28223BE20](v7);
  sub_22BE17B98();
  v62 = v8;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v9);
  v18 = sub_22BE40C6C(v10, v11, v12, v13, v14, v15, v16, v17, v59);
  v19 = type metadata accessor for TranscriptProtoProgramStatement(v18);
  v20 = sub_22BE17A18(v19);
  v22 = v21;
  MEMORY[0x28223BE20](v20);
  sub_22BE17D10();
  MEMORY[0x28223BE20](v23);
  sub_22BE2351C();
  MEMORY[0x28223BE20](v24);
  sub_22BE23730(v25, v26, v27, v28, v29, v30, v31, v32, v60);
  MEMORY[0x28223BE20](v33);
  sub_22BE37614(v34, v35, v36, v37, v38, v39, v40, v41, v61);
  sub_22BE3BF38(MEMORY[0x277D84F90]);
  sub_22BE710CC();
  sub_22BE35CC8();
  if (v4)
  {
    sub_22C108740();
    while (1)
    {
      sub_22C108C40();
      if (v42)
      {
        break;
      }

      sub_22BE27A88();
      if (v51)
      {
        goto LABEL_23;
      }

      sub_22BE36598();
      sub_22BE35FE4();
      sub_22C108688(v43, v3, v44);
      v45 = sub_22BE289D8();
      sub_22C108688(v45, v46, v22);
      v47 = sub_22BE351D8();
      ProgramStatement.init(transcript:)(v47);
      if (v0)
      {
        sub_22C108C04();
LABEL_19:

        sub_22BE1B7C4();
        sub_22C108634();

LABEL_20:
        sub_22BE29F1C();
        sub_22BE18478();
        return;
      }

      sub_22BE1B7C4();
      sub_22C108634();
      sub_22BE182F0();
      if (v51)
      {
        sub_22BE1A028(v48);
        sub_22BE710CC();
      }

      sub_22BE373FC();
      sub_22BE3CA3C();
      sub_22C1086E4(v62, v49, v50);
      if (v4 == v2)
      {
        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    sub_22C108C1C();
    while (1)
    {
      sub_22BE47E0C();
      if (v42)
      {

        goto LABEL_20;
      }

      if (v51)
      {
        break;
      }

      sub_22BE25B48(v52);
      sub_22BE35FE4();
      sub_22C108688(v53, v1, v54);
      sub_22C108914();
      v55 = sub_22C1088B8();
      ProgramStatement.init(transcript:)(v55);
      if (v0)
      {
        goto LABEL_19;
      }

      sub_22BE1B7C4();
      sub_22C108634();
      sub_22BE182F0();
      if (v51)
      {
        sub_22BE1A028(v56);
        sub_22BE710CC();
      }

      sub_22BE2F224();
      sub_22BE3CA3C();
      sub_22C1086E4(v63, v57, v58);
      sub_22BE3C654();
    }

    __break(1u);
  }

  __break(1u);
LABEL_23:
  __break(1u);
}

void sub_22C0F7CA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_22BE19130();
  v12 = v11;
  v13 = sub_22BE5CE4C(&qword_27D909128, &qword_22C294AA0);
  v14 = sub_22BE19448(v13);
  MEMORY[0x28223BE20](v14);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v15);
  sub_22BE19E94();
  sub_22BE18950(v16);
  v239 = sub_22C272594();
  sub_22BE179D8();
  MEMORY[0x28223BE20](v17);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v18);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v19);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v20);
  sub_22BE19E94();
  sub_22BE18950(v21);
  v238 = sub_22C272874();
  sub_22BE179D8();
  MEMORY[0x28223BE20](v22);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v23);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v24);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v25);
  sub_22BE19E94();
  sub_22BE190A8(v26);
  v27 = sub_22BE5CE4C(&qword_27D90C138, &qword_22C2CB830);
  v28 = sub_22BE19448(v27);
  MEMORY[0x28223BE20](v28);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v29);
  sub_22BE19E94();
  sub_22BE18950(v30);
  v242 = sub_22C2725A4();
  sub_22BE179D8();
  v32 = v31;
  MEMORY[0x28223BE20](v33);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v34);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v35);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v36);
  sub_22BE19E94();
  sub_22BE18950(v37);
  v241 = sub_22C2728A4();
  sub_22BE179D8();
  MEMORY[0x28223BE20](v38);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v39);
  sub_22BE19490();
  v246 = v40;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v41);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v42);
  sub_22BE19E94();
  sub_22BE190A8(v43);
  v44 = sub_22BE5CE4C(&qword_27D9090E8, &qword_22C2B5A90);
  v45 = sub_22BE19448(v44);
  MEMORY[0x28223BE20](v45);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v46);
  sub_22BE19E94();
  v48 = sub_22BE18950(v47);
  v252 = type metadata accessor for ContextProtoDynamicEnumerationEntity(v48);
  sub_22BE18000();
  MEMORY[0x28223BE20](v49);
  sub_22BE17B98();
  v253 = v50;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v51);
  sub_22BE19E94();
  sub_22BE18950(v52);
  v237 = sub_22C271904();
  sub_22BE179D8();
  v54 = v53;
  MEMORY[0x28223BE20](v55);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v56);
  sub_22BE19E94();
  sub_22BE190A8(v57);
  v58 = sub_22BE5CE4C(&qword_27D9090F8, &unk_22C2AE4A0);
  v59 = sub_22BE19448(v58);
  MEMORY[0x28223BE20](v59);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v60);
  sub_22BE19E94();
  v62 = sub_22BE18950(v61);
  v245 = type metadata accessor for TranscriptProtoStatementID(v62);
  sub_22BE18000();
  MEMORY[0x28223BE20](v63);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v64);
  sub_22BE19E94();
  sub_22BE18950(v65);
  v244 = sub_22C26E684();
  sub_22BE179D8();
  v67 = v66;
  MEMORY[0x28223BE20](v68);
  sub_22BE17B98();
  v247 = v69;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v70);
  sub_22BE19E94();
  v72 = sub_22BE18950(v71);
  v236 = type metadata accessor for DynamicEnumerationEntityStatement(v72);
  sub_22BE179D8();
  MEMORY[0x28223BE20](v73);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v74);
  sub_22BE19E94();
  v76 = sub_22BE18950(v75);
  v243 = type metadata accessor for TranscriptProtoDynamicEnumerationEntityStatement(v76);
  sub_22BE179D8();
  MEMORY[0x28223BE20](v77);
  sub_22BE17B98();
  v249 = v78;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v79);
  sub_22BE19490();
  v250 = v80;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v81);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v82);
  sub_22BE19E94();
  sub_22BE190A8(v83);
  v84 = *(v12 + 16);
  v85 = sub_22BE3122C(MEMORY[0x277D84F90]);
  sub_22BE71BDC(v85, v84, 0);
  v86 = a10;
  v229 = v67;
  v251 = v84;
  v254 = v12;
  if (!v84)
  {
    v119 = v32;
LABEL_15:
    v248 = (v119 + 32);
    v123 = v229;
    v227 = (v54 + 32);
    v124 = v221;
    v125 = v218;
    v127 = v251;
    v126 = v252;
    v128 = v217;
    while (1)
    {
      v129 = *(v254 + 16);
      if (v127 == v129)
      {

        goto LABEL_41;
      }

      if (v127 >= v129)
      {
        goto LABEL_44;
      }

      sub_22BE25AD8();
      sub_22C108AEC();
      sub_22C108688(v130, v124, v131);
      sub_22C108688(v124, v235, v86);
      v132 = sub_22BE3CEF4();
      sub_22BE2B984(v132, v133, &qword_27D9090F8, &unk_22C2AE4A0);
      v134 = sub_22BE2BA98();
      sub_22BE1AB5C(v134, v135, v245);
      if (v95)
      {

        sub_22BE33928(v128, &qword_27D9090F8, &unk_22C2AE4A0);
        v184 = sub_22BE5CE4C(&qword_27D911F78, &qword_22C2B5D00);
        sub_22BE3369C(v184);
        sub_22BE29328();
        v185 = sub_22C108598();
        v186 = sub_22BE196B4(&type metadata for TranscriptConversion.Error, v185);
        sub_22BE29564(v186, v187);
        goto LABEL_40;
      }

      sub_22BE1A788();
      sub_22C1086E4(v128, v212, v136);
      v137 = *v212;

      sub_22BE40960();
      sub_22C26E664();
      sub_22C108760();
      sub_22C108634();
      sub_22BE2B984(v235 + *(v243 + 20), v213, &qword_27D9090E8, &qword_22C2B5A90);
      v138 = sub_22BE1B010();
      sub_22BE1AB5C(v138, v139, v126);
      if (v95)
      {

        sub_22BE33928(v213, &qword_27D9090E8, &qword_22C2B5A90);
        v188 = sub_22BE5CE4C(&qword_27D911E18, &unk_22C2B5A98);
        sub_22BE3369C(v188);
        sub_22BE29328();
        v189 = sub_22C108598();
        v190 = sub_22BE196B4(&type metadata for TranscriptConversion.Error, v189);
        sub_22BE29564(v190, v191);
        (*(v123 + 8))(v234, v244);
        goto LABEL_40;
      }

      sub_22C108808();
      v140 = sub_22BE31038();
      sub_22C1086E4(v140, v141, v142);
      v143 = *(v125 + 8);
      sub_22BE2B984(v125 + *(v126 + 20), v211, &qword_27D90C138, &qword_22C2CB830);
      v144 = sub_22BE23E90();
      sub_22BE22E98(v144, v145);
      if (v95)
      {
        break;
      }

      (*v248)();
      v146 = sub_22BE18240();
      v147(v146);

      sub_22BE1B754();
      sub_22BE3FF48();
      sub_22C272894();
      if (v137)
      {

        v196 = sub_22BE25C08();
        v197(v196);
        goto LABEL_38;
      }

      v148 = sub_22BE25C08();
      v149(v148);
      sub_22C108D54();
      v150(v233, v143, v241);
      v126 = v252;
      sub_22BE2B984(v125 + *(v252 + 24), v210, &qword_27D909128, &qword_22C294AA0);
      v151 = sub_22BE3C598();
      sub_22BE22E98(v151, v152);
      if (v95)
      {

        sub_22C108BCC();
        v198(v233, v241);
        sub_22BE33928(v210, &qword_27D909128, &qword_22C294AA0);
        v199 = sub_22BE5CE4C(&qword_27D911F88, &qword_22C2B5D10);
        sub_22BE3369C(v199);
        sub_22BE29328();
        v200 = sub_22C108598();
        v201 = sub_22BE196B4(&type metadata for TranscriptConversion.Error, v200);
        sub_22BE29564(v201, v202);
        sub_22BE23D5C();
        sub_22C108634();
        sub_22BE377C8();
        v203(v234, v244);
        goto LABEL_40;
      }

      sub_22BE33554();
      v153();
      sub_22BE33554();
      sub_22BE4178C();
      v154();
      sub_22BE3FF48();
      sub_22C272864();
      sub_22BE33554();
      v155(v209, v239);
      sub_22BE33554();
      v156(v207, v208, v238);
      sub_22C2718C4();
      sub_22BE23D5C();
      v125 = v218;
      sub_22C108634();
      sub_22BE38620();
      sub_22C108634();
      sub_22C108634();
      sub_22BE33554();
      v157(v205, v234, v244);
      (*v227)(v205 + *(v236 + 20), v206, v237);
      sub_22C108CEC();
      if (v143 >= v158 >> 1)
      {
        sub_22BE3D1E4(v158);
        sub_22BE447E4();
        sub_22BE71BDC(v161, v162, v163);
        v86 = a10;
      }

      *(v86 + 16) = v143 + 1;
      sub_22BE197A0();
      sub_22BE46DB0();
      sub_22C1086E4(v205, v159, v160);
      ++v127;
      v123 = v229;
      v128 = v217;
      v124 = v221;
    }

    sub_22BE33928(v211, &qword_27D90C138, &qword_22C2CB830);
    v192 = sub_22BE5CE4C(&qword_27D911F80, &qword_22C2B5D08);
    sub_22BE3369C(v192);
    sub_22BE29328();
    v193 = sub_22C108598();
    v194 = sub_22BE196B4(&type metadata for TranscriptConversion.Error, v193);
    sub_22BE29564(v194, v195);
LABEL_38:
    sub_22BE23D5C();
    sub_22C108634();
    sub_22BE377C8();
    v204(v234, v244);
    goto LABEL_40;
  }

  sub_22BE19E14();
  v223 = *(v12 + 16);
  v87 = 0;
  v214 = (v54 + 32);
  v88 = v232;
  v216 = v32;
  v215 = v54;
  while (v223 != v87)
  {
    if (v87 >= *(v12 + 16))
    {
      goto LABEL_43;
    }

    v240 = v87;
    sub_22C108AEC();
    sub_22C108688(v89, v250, v90);
    sub_22C108688(v250, v249, v86);
    v91 = sub_22BE289D8();
    sub_22BE2B984(v91, v92, &qword_27D9090F8, &unk_22C2AE4A0);
    v93 = sub_22BE3C598();
    sub_22BE1AB5C(v93, v94, v245);
    if (v95)
    {

      sub_22BE33928(v88, &qword_27D9090F8, &unk_22C2AE4A0);
      v164 = sub_22BE5CE4C(&qword_27D911F78, &qword_22C2B5D00);
      sub_22BE3369C(v164);
      sub_22BE29328();
      v165 = sub_22C108598();
      v166 = sub_22BE196B4(&type metadata for TranscriptConversion.Error, v165);
      sub_22BE29564(v166, v167);
      goto LABEL_40;
    }

    sub_22BE1A788();
    sub_22C1086E4(v88, v230, v96);

    sub_22BE40960();
    sub_22C26E664();
    sub_22C108760();
    sub_22C108634();
    sub_22BE2B984(v249 + *(v243 + 20), v231, &qword_27D9090E8, &qword_22C2B5A90);
    v97 = sub_22BE1B010();
    sub_22BE1AB5C(v97, v98, v252);
    if (v95)
    {

      sub_22BE33928(v231, &qword_27D9090E8, &qword_22C2B5A90);
      v168 = sub_22BE5CE4C(&qword_27D911E18, &unk_22C2B5A98);
      sub_22BE3369C(v168);
      sub_22BE29328();
      v169 = sub_22C108598();
      v170 = sub_22BE196B4(&type metadata for TranscriptConversion.Error, v169);
      sub_22BE29564(v170, v171);
      sub_22BE377C8();
      v172(v247, v244);
      goto LABEL_40;
    }

    sub_22C108808();
    sub_22C1086E4(v231, v253, v99);
    sub_22BE2B984(v253 + *(v252 + 20), v228, &qword_27D90C138, &qword_22C2CB830);
    v100 = sub_22BE406A0();
    sub_22BE1AB5C(v100, v101, v242);
    if (v95)
    {

      sub_22BE33928(v228, &qword_27D90C138, &qword_22C2CB830);
      v173 = &qword_27D911F80;
      v174 = &qword_22C2B5D08;
      goto LABEL_31;
    }

    sub_22BE33554();
    v102();
    sub_22BE33554();
    v103(v225, v226, v242);

    sub_22C272894();
    if (v10)
    {

      sub_22BE33554();
      v175 = sub_22BE194C4();
      v182(v175, v181);
      goto LABEL_32;
    }

    sub_22BE33554();
    v104 = sub_22BE194C4();
    v105(v104);
    sub_22BE33554();
    v106(v246, v224, v241);
    sub_22BE2B984(v253 + *(v252 + 24), v222, &qword_27D909128, &qword_22C294AA0);
    sub_22BE1AB5C(v222, 1, v239);
    if (v95)
    {

      sub_22C108BCC();
      v176(v246, v241);
      sub_22BE33928(v222, &qword_27D909128, &qword_22C294AA0);
      v173 = &qword_27D911F88;
      v174 = &qword_22C2B5D10;
LABEL_31:
      v177 = sub_22BE5CE4C(v173, v174);
      sub_22BE3369C(v177);
      sub_22BE29328();
      v178 = sub_22C108598();
      v179 = sub_22BE196B4(&type metadata for TranscriptConversion.Error, v178);
      sub_22BE29564(v179, v180);
LABEL_32:
      sub_22BE23D5C();
      sub_22C108634();
      sub_22BE377C8();
      v183(v247, v244);
LABEL_40:
      sub_22C108634();
      sub_22C108634();

LABEL_41:
      sub_22BE29F1C();
      sub_22BE18478();
      return;
    }

    sub_22BE33554();
    v107();
    sub_22BE33554();
    v108 = sub_22BE3AF28();
    v109(v108);
    sub_22C272864();
    sub_22BE33554();
    v110 = sub_22BE18240();
    v111(v110);
    sub_22BE33554();
    v112 = sub_22BE36658();
    v113(v112);
    sub_22BE3C5E4();
    sub_22C2718C4();
    sub_22BE23D5C();
    sub_22C108634();
    sub_22BE38620();
    sub_22C108634();
    sub_22C108634();
    sub_22BE33554();
    v114(v219, v247, v244);
    (*v214)(v219 + *(v236 + 20), v220, v237);
    a10 = v86;
    v116 = *(v86 + 16);
    v115 = *(v86 + 24);
    if (v116 >= v115 >> 1)
    {
      sub_22BE3D1E4(v115);
      sub_22BE447E4();
      sub_22BE71BDC(v120, v121, v122);
    }

    *(v86 + 16) = v116 + 1;
    ++v87;
    sub_22BE197A0();
    sub_22BE46DB0();
    sub_22C1086E4(v219, v117, v118);
    v12 = v254;
    v119 = v216;
    v54 = v215;
    v88 = v232;
    if (v251 == v240 + 1)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
}

void sub_22C0F92F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22BE19130();
  v25 = sub_22BE17BC4();
  v149 = type metadata accessor for TranscriptProtoStatementID(v25);
  sub_22BE18000();
  MEMORY[0x28223BE20](v26);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v27);
  sub_22BE19490();
  v136 = v28;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v29);
  sub_22BE19E94();
  sub_22BE190A8(v30);
  v31 = sub_22BE5CE4C(&qword_27D9090F8, &unk_22C2AE4A0);
  v32 = sub_22BE19448(v31);
  MEMORY[0x28223BE20](v32);
  sub_22BE17B98();
  v142 = v33;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v34);
  sub_22BE2017C();
  MEMORY[0x28223BE20](v35);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v36);
  sub_22BE19E94();
  v138 = v37;
  v38 = sub_22BE5CE4C(&qword_27D907240, &unk_22C2B5B80);
  v39 = sub_22BE19448(v38);
  MEMORY[0x28223BE20](v39);
  sub_22BE195A8();
  MEMORY[0x28223BE20](v40);
  sub_22BE19E94();
  v143 = v41;
  v42 = sub_22BE183BC();
  v146 = type metadata accessor for StructuredSearchExpression.StructuredSearchProperty(v42);
  sub_22BE179D8();
  MEMORY[0x28223BE20](v43);
  sub_22BE1958C();
  MEMORY[0x28223BE20](v44);
  sub_22BE19E94();
  v137 = v45;
  v46 = sub_22BE183BC();
  v148 = type metadata accessor for TranscriptProtoStructuredSearchExpression.StructuredSearchProperty(v46);
  sub_22BE179D8();
  v48 = v47;
  MEMORY[0x28223BE20](v49);
  sub_22BE17D10();
  MEMORY[0x28223BE20](v50);
  sub_22BE19490();
  v135 = v51;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v52);
  sub_22BE19490();
  v145 = v53;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v54);
  sub_22BE3173C(v55, v56, v57, v58, v59, v60, v61, v62, v129);
  v63 = *(v20 + 16);
  v64 = sub_22BE3122C(MEMORY[0x277D84F90]);
  sub_22BE71114(v64, v63, 0);
  v65 = v63;
  v139 = v20;
  v147 = v48;
  if (v63)
  {
    v133 = v21;
    v66 = 0;
    sub_22C108778();
    v134 = *(v20 + 16);
    v67 = v135;
    v154 = v68;
    v130 = v22;
    while (v134 != v66)
    {
      sub_22BE33C38();
      sub_22C108688(v69, v67, v70);
      sub_22C108688(v67, v24, v48);
      v140 = v24[2];
      v141 = *v24;
      v150 = v24[3];
      v152 = v24[1];
      v71 = &unk_22C2AE4A0;
      sub_22BE2B984(v24 + *(v148 + 24), v22, &qword_27D9090F8, &unk_22C2AE4A0);
      sub_22BE2B984(v22, v142, &qword_27D9090F8, &unk_22C2AE4A0);
      v72 = sub_22BE391E8();
      sub_22BE1AB5C(v72, v73, v149);
      if (v74)
      {

        v75 = sub_22BE3AF28();
        sub_22BE33928(v75, v76, &unk_22C2AE4A0);
        sub_22C108AA4();
        sub_22C108634();
        sub_22BE1AB74();
        sub_22C108634();
        sub_22BE33928(v142, &qword_27D9090F8, &unk_22C2AE4A0);
        v82 = 1;
        v81 = v133;
      }

      else
      {
        sub_22BE1A788();
        sub_22C108C10();
        sub_22C1086E4(v77, v78, v79);
        sub_22BE2BC1C();
        v71 = v136;
        sub_22C108688(v22, v136, v80);

        v81 = v133;
        sub_22C26E664();
        sub_22C108634();
        v22 = v130;
        sub_22C108634();
        sub_22BE33928(v130, &qword_27D9090F8, &unk_22C2AE4A0);
        sub_22C108AA4();
        sub_22C108634();
        sub_22C108634();
        v82 = 0;
      }

      v83 = sub_22C26E684();
      sub_22BE19DC4(v81, v82, 1, v83);
      v84 = *(v146 + 24);
      sub_22BE1A140();
      sub_22BE19DC4(v85, v86, v87, v83);
      *v23 = v141;
      v23[1] = v152;
      v23[2] = v140;
      v23[3] = v150;
      sub_22BFC390C(v81, v23 + v84, &qword_27D907240, &unk_22C2B5B80);
      sub_22BE3C9A0();
      if (v90)
      {
        sub_22BE1AAE4(v88);
        sub_22BE18110();
        sub_22BE71114(v94, v95, v96);
        v89 = a10;
      }

      ++v66;
      *(v89 + 16) = v71;
      sub_22BE19E14();
      sub_22C1086E4(v23, v92 + v91 + *(v93 + 72) * v83, type metadata accessor for StructuredSearchExpression.StructuredSearchProperty);
      v65 = v154;
      v48 = v147;
      v67 = v135;
      if (v154 == v66)
      {
        goto LABEL_10;
      }
    }
  }

  else
  {
LABEL_10:
    v98 = v138;
    v97 = v139;
    v99 = v132;
    while (1)
    {
      v100 = *(v97 + 16);
      if (v65 == v100)
      {

        sub_22BE18478();
        return;
      }

      if (v65 >= v100)
      {
        break;
      }

      sub_22C108778();
      v155 = v101;
      sub_22BE33C38();
      sub_22C108688(v102, v144, v103);
      sub_22C108688(v144, v145, v48);
      v104 = v145[1];
      v105 = v145[3];
      v151 = v145[2];
      v153 = *v145;
      sub_22BE36674();
      sub_22BE2B984(v106, v107, v108, &unk_22C2AE4A0);
      sub_22BE2B984(v98, v99, &qword_27D9090F8, &unk_22C2AE4A0);
      v109 = sub_22BE406A0();
      sub_22BE1AB5C(v109, v110, v149);
      if (v74)
      {

        v111 = sub_22BE260B8();
        sub_22BE33928(v111, v112, &unk_22C2AE4A0);
        sub_22C108ABC();
        sub_22C108634();
        sub_22BE3AF28();
        sub_22C108634();
        sub_22BE33928(v99, &qword_27D9090F8, &unk_22C2AE4A0);
        v115 = 1;
      }

      else
      {
        sub_22BE1A788();
        sub_22C1086E4(v99, v131, v113);
        sub_22BE2BC1C();
        sub_22C108688(v131, v136, v114);

        sub_22BE26234();
        sub_22C26E664();
        sub_22C108634();
        v99 = v132;
        sub_22C108634();
        sub_22BE33928(v98, &qword_27D9090F8, &unk_22C2AE4A0);
        sub_22C108ABC();
        sub_22C108634();
        sub_22C108634();
        v115 = 0;
      }

      v116 = sub_22C26E684();
      sub_22BE19DC4(v143, v115, 1, v116);
      v117 = *(v146 + 24);
      sub_22BE1A140();
      sub_22BE19DC4(v118, v119, v120, v116);
      *v137 = v153;
      v137[1] = v104;
      v137[2] = v151;
      v137[3] = v105;
      sub_22BFC390C(v143, v137 + v117, &qword_27D907240, &unk_22C2B5B80);
      sub_22BE3C9A0();
      if (v90)
      {
        sub_22BE1AAE4(v121);
        sub_22BE18110();
        sub_22BE71114(v126, v127, v128);
        v122 = a10;
      }

      *(v122 + 16) = v104;
      sub_22BE19E14();
      v123 = sub_22C1088AC();
      sub_22C1086E4(v123, v124, v125);
      v65 = v155 + 1;
      v98 = v138;
      v97 = v139;
      v48 = v147;
    }

    __break(1u);
  }

  __break(1u);
}

void sub_22C0F9B80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  sub_22BE19130();
  v13 = v12;
  v14 = sub_22BE5CE4C(&qword_27D909128, &qword_22C294AA0);
  v15 = sub_22BE19448(v14);
  MEMORY[0x28223BE20](v15);
  sub_22BE195A8();
  MEMORY[0x28223BE20](v16);
  sub_22BE19E94();
  sub_22BE18950(v17);
  v172 = sub_22C272594();
  v18 = sub_22BE17A18(v172);
  MEMORY[0x28223BE20](v18);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v19);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v20);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v21);
  sub_22BE19E94();
  sub_22BE18950(v22);
  v171 = sub_22C272874();
  sub_22BE179D8();
  v167 = v23;
  MEMORY[0x28223BE20](v24);
  sub_22BE1958C();
  MEMORY[0x28223BE20](v25);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v26);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v27);
  sub_22BE19E94();
  sub_22BE190A8(v28);
  v29 = sub_22BE5CE4C(&qword_27D90C138, &qword_22C2CB830);
  v30 = sub_22BE19448(v29);
  MEMORY[0x28223BE20](v30);
  sub_22BE17B98();
  v164 = v31;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v32);
  sub_22BE19E94();
  sub_22BE18950(v33);
  sub_22C2725A4();
  sub_22BE179D8();
  v165 = v34;
  v166 = v35;
  MEMORY[0x28223BE20](v34);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v36);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v37);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v38);
  sub_22BE19E94();
  sub_22BE18950(v39);
  v173 = sub_22C2728A4();
  sub_22BE179D8();
  v41 = v40;
  MEMORY[0x28223BE20](v42);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v43);
  sub_22BE19490();
  v175 = v44;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v45);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v46);
  sub_22BE19E94();
  v169 = v47;
  sub_22BE183BC();
  sub_22C271904();
  sub_22BE179D8();
  MEMORY[0x28223BE20](v48);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v49);
  sub_22BE19E94();
  v51 = sub_22BE18950(v50);
  v180 = type metadata accessor for ContextProtoDynamicEnumerationEntity(v51);
  sub_22BE179D8();
  MEMORY[0x28223BE20](v52);
  sub_22BE17B98();
  v179 = v53;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v54);
  sub_22BE23730(v55, v56, v57, v58, v59, v60, v61, v62, v150);
  MEMORY[0x28223BE20](v63);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v64);
  sub_22BE19E94();
  v170 = v65;
  v66 = *(v13 + 16);
  v67 = sub_22BE3BF38(MEMORY[0x277D84F90]);
  sub_22BE71C34(v67, v68, v69);
  v70 = a10;
  v174 = v13;
  v163 = v41;
  if (v66)
  {
    v158 = v11;
    v71 = 0;
    sub_22C108778();
    v159 = *(v13 + 16);
    while (v159 != v71)
    {
      if (v71 >= *(v13 + 16))
      {
        goto LABEL_33;
      }

      sub_22BE3932C();
      sub_22C108688(v72, v177, v73);
      sub_22C108688(v177, v179, v13);
      sub_22BE2B984(v179 + *(v180 + 20), v164, &qword_27D90C138, &qword_22C2CB830);
      v74 = sub_22BE23E90();
      sub_22BE1AB5C(v74, v75, v165);
      if (v76)
      {

        sub_22BE33928(v164, &qword_27D90C138, &qword_22C2CB830);
        v130 = &qword_27D911F80;
        v131 = &qword_22C2B5D08;
LABEL_25:
        v135 = sub_22BE5CE4C(v130, v131);
        sub_22BE3369C(v135);
        v136 = sub_22C108DDC();
        v137 = sub_22BE196B4(&type metadata for TranscriptConversion.Error, v136);
        sub_22BE33B6C(v137, v138);
        goto LABEL_30;
      }

      sub_22BE33554();
      sub_22BE25300();
      v77();
      sub_22BE33554();
      v78(v161, v162, v165);

      sub_22C272894();
      if (v10)
      {

        sub_22BE33554();
        v132 = sub_22BE38FD8();
        v133(v132);
        goto LABEL_30;
      }

      sub_22BE33554();
      v79 = sub_22BE38FD8();
      v80(v79);
      sub_22BE33554();
      v81(v175, v160, v173);
      sub_22BE2B984(v179 + *(v180 + 24), v158, &qword_27D909128, &qword_22C294AA0);
      v82 = sub_22BE23E90();
      sub_22BE1AB5C(v82, v83, v172);
      if (v76)
      {

        sub_22C108D6C();
        v134(v175, v173);
        sub_22BE33928(v158, &qword_27D909128, &qword_22C294AA0);
        v130 = &qword_27D911F88;
        v131 = &qword_22C2B5D10;
        goto LABEL_25;
      }

      sub_22BE33554();
      v84();
      sub_22BE33554();
      sub_22BE25300();
      v85();
      sub_22C272864();
      sub_22BE33554();
      v86 = sub_22BE1AB1C();
      v87(v86);
      sub_22BE33554();
      v88 = sub_22BE31038();
      v89(v88);
      sub_22BE1B754();
      sub_22C2718C4();
      sub_22BE3E9F8();
      sub_22C108634();
      sub_22C108634();
      a10 = v70;
      v90 = v70[2];
      v91 = v70[3];
      if (v90 >= v91 >> 1)
      {
        v97 = sub_22BE1BB18(v91);
        sub_22BE71C34(v97, v98, v99);
      }

      ++v71;
      v70[2] = v90 + 1;
      sub_22BE197A0();
      v93 = sub_22C108CD8(v92);
      v94(v93);
      v13 = v174;
      v41 = v163;
      v95 = v167;
      v96 = v166;
      if (v66 == v71)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
  }

  else
  {
    v95 = v167;
    v96 = v166;
LABEL_13:
    v176 = (v96 + 32);
    v168 = (v95 + 32);
    v100 = v156;
    v101 = v157;
    v102 = v66;
    while (1)
    {
      v103 = *(v13 + 16);
      if (v102 == v103)
      {

        goto LABEL_31;
      }

      if (v102 >= v103)
      {
        goto LABEL_34;
      }

      sub_22C108778();
      v178 = v104;
      sub_22BE3932C();
      sub_22C108688(v105, v170, v106);
      v107 = sub_22BE1B328();
      sub_22C108688(v107, v108, v13);
      v109 = *v101;
      sub_22C108C10();
      sub_22BE2B984(v110, v111, &qword_27D90C138, &qword_22C2CB830);
      sub_22BE23B00(v170);
      if (v76)
      {

        sub_22BE33928(v170, &qword_27D90C138, &qword_22C2CB830);
        v139 = sub_22BE5CE4C(&qword_27D911F80, &qword_22C2B5D08);
        sub_22BE3369C(v139);
        v140 = sub_22C108DDC();
        v141 = sub_22BE196B4(&type metadata for TranscriptConversion.Error, v140);
        sub_22BE33B6C(v141, v142);
        goto LABEL_30;
      }

      (*v176)();
      v112 = sub_22BE1AB1C();
      v113(v112);

      sub_22C272894();
      if (v10)
      {

        v143 = sub_22C108D40();
        v144(v143);
        goto LABEL_30;
      }

      v114 = sub_22C108D40();
      v115(v114);
      (*(v41 + 32))(v169, v155, v173);
      sub_22BE2B984(v101 + *(v180 + 24), v100, &qword_27D909128, &qword_22C294AA0);
      v116 = sub_22BE406A0();
      sub_22BE1AB5C(v116, v117, v172);
      if (v76)
      {
        break;
      }

      sub_22BE33554();
      v118();
      sub_22BE33554();
      v119(v153, v154, v172);
      sub_22C272864();
      sub_22C108D54();
      v120 = sub_22BE38FD8();
      v121(v120);
      (*v168)(v151, v152, v171);
      sub_22BE1B754();
      sub_22C2718C4();
      sub_22BE3E9F8();
      v101 = v157;
      sub_22C108634();
      sub_22C108634();
      sub_22C108CF8();
      if (v123)
      {
        v127 = sub_22BE1BB18(v122);
        sub_22BE71C34(v127, v128, v129);
        v70 = a10;
      }

      v70[2] = v109;
      sub_22BE197A0();
      v125 = sub_22C108CD8(v124);
      v126(v125);
      v102 = v178 + 1;
      v13 = v174;
      v100 = v156;
    }

    sub_22C108D6C();
    v145(v169, v173);
    sub_22BE33928(v100, &qword_27D909128, &qword_22C294AA0);
    v146 = sub_22BE5CE4C(&qword_27D911F88, &qword_22C2B5D10);
    sub_22BE3369C(v146);
    v147 = sub_22C108DDC();
    v148 = sub_22BE196B4(&type metadata for TranscriptConversion.Error, v147);
    sub_22BE33B6C(v148, v149);
LABEL_30:
    sub_22C108634();
    sub_22BE1B328();
    sub_22C108634();

LABEL_31:
    sub_22BE29F1C();
    sub_22BE18478();
  }
}

void sub_22C0FA9F4()
{
  sub_22BE19130();
  sub_22BE25FD8();
  sub_22C270E94();
  sub_22BE179D8();
  MEMORY[0x28223BE20](v5);
  sub_22BE17B98();
  sub_22BE32C08();
  MEMORY[0x28223BE20](v6);
  v15 = sub_22BE37928(v7, v8, v9, v10, v11, v12, v13, v14, v62);
  v16 = type metadata accessor for ContextProtoSurroundingText(v15);
  v17 = sub_22BE17A18(v16);
  v19 = v18;
  MEMORY[0x28223BE20](v17);
  sub_22BE186D4();
  MEMORY[0x28223BE20](v20);
  sub_22BE25F20();
  MEMORY[0x28223BE20](v21);
  sub_22BE23730(v22, v23, v24, v25, v26, v27, v28, v29, v63);
  MEMORY[0x28223BE20](v30);
  sub_22BE30FE4(v31, v32, v33, v34, v35, v36, v37, v38, v64);
  v39 = sub_22BE355B4(MEMORY[0x277D84F90]);
  sub_22BE71CE4(v39, v40, v41);
  sub_22BE34024();
  if (v2)
  {
    sub_22BE257BC();
    while (1)
    {
      sub_22BE20124();
      if (v42)
      {
        break;
      }

      sub_22BE32394();
      if (v53)
      {
        goto LABEL_23;
      }

      sub_22BE374F8();
      sub_22BE32E84();
      sub_22C108688(v43, v4, v44);
      v45 = sub_22BE3E79C();
      sub_22C108688(v45, v46, v19);
      v47 = sub_22BE38A58();
      SurroundingText.init(transcript:)(v47);
      if (v0)
      {
        sub_22C108C28();
LABEL_19:

        sub_22C1087C8();
        sub_22C108634();

LABEL_20:
        sub_22BE29F1C();
        sub_22BE18478();
        return;
      }

      sub_22C1087C8();
      sub_22C108634();
      sub_22BE20244();
      if (v53)
      {
        v50 = sub_22BE1BB18(v48);
        sub_22BE71CE4(v50, v51, v52);
      }

      ++v3;
      sub_22BE1C01C();
      sub_22BE39ED8();
      v49();
      sub_22C108BDC();
      if (v42)
      {
        goto LABEL_10;
      }
    }
  }

  else
  {
LABEL_10:
    sub_22BE48730();
    while (1)
    {
      sub_22BE3AE1C();
      if (v42)
      {

        goto LABEL_20;
      }

      if (v53)
      {
        break;
      }

      sub_22BE31210();
      sub_22BE32E84();
      sub_22C108688(v54, v1, v55);
      sub_22C1088F4();
      v56 = sub_22C1088D8();
      SurroundingText.init(transcript:)(v56);
      if (v0)
      {
        goto LABEL_19;
      }

      sub_22C1087C8();
      sub_22C108634();
      sub_22BE20244();
      if (v53)
      {
        v59 = sub_22BE1BB18(v57);
        sub_22BE71CE4(v59, v60, v61);
      }

      sub_22BE1C01C();
      sub_22BE3BFC4();
      v58();
      sub_22C108C34();
    }

    __break(1u);
  }

  __break(1u);
LABEL_23:
  __break(1u);
}

void sub_22C0FAC80(uint64_t a1)
{
  v46 = sub_22C270F64();
  sub_22BE179D8();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  sub_22BE183AC();
  sub_22BE2017C();
  MEMORY[0x28223BE20](v8);
  sub_22BE2EDB8();
  v9 = type metadata accessor for ContextProtoSampleInvocation(0);
  v10 = sub_22BE17A18(v9);
  v12 = v11;
  MEMORY[0x28223BE20](v10);
  sub_22BE195A8();
  MEMORY[0x28223BE20](v13);
  sub_22BE25F20();
  MEMORY[0x28223BE20](v14);
  sub_22BE19E94();
  v48 = v15;
  v16 = *(a1 + 16);
  v49 = MEMORY[0x277D84F90];
  sub_22BE71D3C(0, v16, 0);
  if (v16)
  {
    v43 = v1;
    v44 = a1;
    v17 = 0;
    v47 = *(a1 + 16);
    sub_22BE19E14();
    v42 = a1 + v18;
    v19 = v12;
    v45 = v2;
    while (v47 != v17)
    {
      sub_22C108688(v42 + *(v19 + 72) * v17, v3, type metadata accessor for ContextProtoSampleInvocation);
      sub_22BE358F0();
      sub_22C108688(v20, v21, v22);

      sub_22C270F34();
      sub_22C108634();
      sub_22C108634();
      v24 = *(v49 + 16);
      v23 = *(v49 + 24);
      if (v24 >= v23 >> 1)
      {
        v27 = sub_22BE1AAE4(v23);
        sub_22BE71D3C(v27, v24 + 1, 1);
      }

      ++v17;
      sub_22BE231F8();
      (*(v6 + 32))(v25 + v26 * v24, v43, v46);
      a1 = v44;
      v2 = v45;
      v19 = v12;
      if (v16 == v17)
      {
        goto LABEL_7;
      }
    }
  }

  else
  {
LABEL_7:
    sub_22C108D20();
    while (1)
    {
      v28 = *(a1 + 16);
      if (v16 == v28)
      {

        return;
      }

      if (v16 >= v28)
      {
        break;
      }

      sub_22BE25AD8();
      v30 = sub_22C108C6C(v29);
      sub_22C108688(v30, v48, type metadata accessor for ContextProtoSampleInvocation);
      sub_22BE4178C();
      sub_22C108688(v31, v32, v33);

      sub_22C270F34();
      sub_22C108634();
      sub_22BE1B328();
      sub_22C108634();
      v34 = v2;
      v36 = *(v49 + 16);
      v35 = *(v49 + 24);
      if (v36 >= v35 >> 1)
      {
        sub_22BE1AAE4(v35);
        sub_22BE447E4();
        sub_22BE71D3C(v39, v40, v41);
      }

      *(v49 + 16) = v36 + 1;
      sub_22BE3E68C();
      (*(v6 + 32))(v37 + v38 * v36, v34, v46);
      ++v16;
      v2 = v34;
    }

    __break(1u);
  }

  __break(1u);
}

void sub_22C0FB054(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_22BE19130();
  sub_22BE17BC4();
  sub_22C26FA04();
  sub_22BE179D8();
  v15 = v14;
  MEMORY[0x28223BE20](v16);
  sub_22BE1958C();
  MEMORY[0x28223BE20](v17);
  sub_22BE3173C(v18, v19, v20, v21, v22, v23, v24, v25, v62);
  v26 = type metadata accessor for TranscriptProtoResponseParameter(0);
  v27 = sub_22BE17A18(v26);
  v29 = v28;
  MEMORY[0x28223BE20](v27);
  sub_22BE195A8();
  MEMORY[0x28223BE20](v30);
  sub_22BE25F20();
  MEMORY[0x28223BE20](v31);
  sub_22BE19E94();
  v65 = v32;
  v33 = *(v10 + 16);
  v34 = sub_22BE3122C(MEMORY[0x277D84F90]);
  sub_22BE71D94(v34, v33, 0);
  v67 = v10;
  v68 = v29;
  if (!v33)
  {
    goto LABEL_7;
  }

  v69 = v12;
  v70 = v33;
  v35 = 0;
  sub_22C108778();
  v63 = v10 + v36;
  v64 = v37;
  while (v64 != v35)
  {
    sub_22C108688(v63 + *(v29 + 72) * v35, v13, type metadata accessor for TranscriptProtoResponseParameter);
    sub_22C108688(v13, v11, type metadata accessor for TranscriptProtoResponseParameter);

    v38 = sub_22BE1B18C();
    sub_22BF1C1E4(v38, v39);

    sub_22C26F9A4();
    sub_22BE3C244();
    sub_22C108634();
    sub_22C108634();
    v41 = *(a10 + 16);
    v40 = *(a10 + 24);
    if (v41 >= v40 >> 1)
    {
      v43 = sub_22BE1BB18(v40);
      sub_22BE71D94(v43, v44, v45);
    }

    ++v35;
    *(a10 + 16) = v41 + 1;
    sub_22BE1B654();
    (*(v15 + 32))(a10 + v42 + *(v15 + 72) * v41, v69);
    v33 = v70;
    v29 = v68;
    if (v70 == v35)
    {
      while (1)
      {
LABEL_7:
        v46 = *(v67 + 16);
        if (v33 == v46)
        {

          sub_22BE18478();
          return;
        }

        if (v33 >= v46)
        {
          break;
        }

        sub_22C108778();
        sub_22C108688(v47 + v48 + *(v29 + 72) * v33, v65, type metadata accessor for TranscriptProtoResponseParameter);
        sub_22BE4178C();
        sub_22C108688(v49, v50, v51);

        v52 = sub_22BE1AEE4();
        sub_22BF1C1E4(v52, v53);

        v54 = v66;
        sub_22C26F9A4();
        sub_22BE3C244();
        sub_22C108634();
        sub_22C108634();
        v56 = *(a10 + 16);
        v55 = *(a10 + 24);
        if (v56 >= v55 >> 1)
        {
          sub_22BE3D1E4(v55);
          sub_22BE447E4();
          sub_22BE71D94(v59, v60, v61);
          v54 = v66;
        }

        *(a10 + 16) = v56 + 1;
        sub_22BE25AD8();
        (*(v58 + 32))(a10 + v57 + *(v58 + 72) * v56, v54);
        ++v33;
        v29 = v68;
      }

      __break(1u);
      break;
    }
  }

  __break(1u);
}

void sub_22C0FB498()
{
  sub_22BE19130();
  sub_22BE25FD8();
  sub_22C26F444();
  sub_22BE179D8();
  MEMORY[0x28223BE20](v5);
  sub_22BE17B98();
  sub_22BE32C08();
  MEMORY[0x28223BE20](v6);
  v15 = sub_22BE37928(v7, v8, v9, v10, v11, v12, v13, v14, v60);
  v16 = type metadata accessor for TranscriptProtoVisualOutput(v15);
  v17 = sub_22BE17A18(v16);
  v19 = v18;
  MEMORY[0x28223BE20](v17);
  sub_22BE186D4();
  MEMORY[0x28223BE20](v20);
  sub_22BE25F20();
  MEMORY[0x28223BE20](v21);
  sub_22BE23730(v22, v23, v24, v25, v26, v27, v28, v29, v61);
  MEMORY[0x28223BE20](v30);
  sub_22BE30FE4(v31, v32, v33, v34, v35, v36, v37, v38, v62);
  v39 = sub_22BE355B4(MEMORY[0x277D84F90]);
  sub_22BE71E44(v39, v40, v41);
  sub_22BE34024();
  if (v2)
  {
    sub_22BE257BC();
    while (1)
    {
      sub_22BE20124();
      if (v42)
      {
        break;
      }

      sub_22BE32394();
      if (v52)
      {
        goto LABEL_23;
      }

      sub_22BE374F8();
      sub_22C108A14();
      sub_22C108688(v43, v4, v44);
      v45 = sub_22BE3E79C();
      sub_22C108688(v45, v46, v19);
      sub_22BE38A58();
      ResponseOutput.VisualOutput.init(transcript:)();
      if (v0)
      {
        sub_22C108C28();
LABEL_19:

        sub_22BE41318();
        sub_22C108634();

LABEL_20:
        sub_22BE29F1C();
        sub_22BE18478();
        return;
      }

      sub_22BE41318();
      sub_22C108634();
      sub_22BE20244();
      if (v52)
      {
        v49 = sub_22BE1BB18(v47);
        sub_22BE71E44(v49, v50, v51);
      }

      ++v3;
      sub_22BE1C01C();
      sub_22BE39ED8();
      v48();
      sub_22C108BDC();
      if (v42)
      {
        goto LABEL_10;
      }
    }
  }

  else
  {
LABEL_10:
    sub_22BE48730();
    while (1)
    {
      sub_22BE3AE1C();
      if (v42)
      {

        goto LABEL_20;
      }

      if (v52)
      {
        break;
      }

      sub_22BE31210();
      sub_22C108A14();
      sub_22C108688(v53, v1, v54);
      sub_22C1088F4();
      sub_22C1088D8();
      ResponseOutput.VisualOutput.init(transcript:)();
      if (v0)
      {
        goto LABEL_19;
      }

      sub_22BE41318();
      sub_22C108634();
      sub_22BE20244();
      if (v52)
      {
        v57 = sub_22BE1BB18(v55);
        sub_22BE71E44(v57, v58, v59);
      }

      sub_22BE1C01C();
      sub_22BE3BFC4();
      v56();
      sub_22C108C34();
    }

    __break(1u);
  }

  __break(1u);
LABEL_23:
  __break(1u);
}

void sub_22C0FB78C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_22BE19130();
  v93 = v13;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v91 = v20(0);
  sub_22BE179D8();
  v95 = v21;
  MEMORY[0x28223BE20](v22);
  sub_22BE17D10();
  MEMORY[0x28223BE20](v23);
  sub_22BE27A50();
  MEMORY[0x28223BE20](v24);
  sub_22BE2351C();
  MEMORY[0x28223BE20](v25);
  sub_22BE19E94();
  v85 = v26;
  v27 = sub_22BE183BC();
  v98 = v17(v27);
  sub_22BE179D8();
  v29 = v28;
  MEMORY[0x28223BE20](v30);
  sub_22BE17B98();
  v86 = v31;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v32);
  sub_22BE19490();
  v84 = v33;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v34);
  sub_22BE28C8C();
  MEMORY[0x28223BE20](v35);
  sub_22BE19490();
  v87 = v36;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v37);
  sub_22BE19490();
  v89 = v38;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v39);
  sub_22BE19E94();
  v88 = v40;
  v41 = *(v19 + 16);
  v42 = sub_22BE3122C(MEMORY[0x277D84F90]);
  v79 = v15;
  (v15)(v42, v41, 0);
  v43 = v41;
  v44 = v19;
  v92 = v19;
  v90 = v29;
  if (v41)
  {
    v45 = 0;
    sub_22BE1B654();
    v82 = v19 + v46;
    v83 = *(v19 + 16);
    v94 = (v29 + 8);
    v80 = v12;
    v96 = v47;
    v81 = (v48 + 32);
    while (v83 != v45)
    {
      if (v45 >= *(v44 + 16))
      {
        goto LABEL_21;
      }

      v49 = *(v29 + 16);
      v49(v12, v82 + *(v29 + 72) * v45, v98);
      v50 = v84;
      v51 = sub_22BE3AF28();
      (v49)(v51);
      v49(v86, v84, v98);
      v93(v86);
      if (v11)
      {
LABEL_17:

        v77 = *v94;
        (*v94)(v50, v98);
        v78 = sub_22BE39EAC();
        (v77)(v78);

LABEL_18:
        sub_22BE18478();
        return;
      }

      v52 = *v94;
      (*v94)(v84, v98);
      v53 = sub_22BE39EAC();
      (v52)(v53);
      v54 = *v81;
      v55 = sub_22BE41FB4();
      v54(v55);
      v57 = *(a10 + 16);
      v56 = *(a10 + 24);
      if (v57 >= v56 >> 1)
      {
        (v79)(v56 > 1, v57 + 1, 1);
      }

      ++v45;
      *(a10 + 16) = v57 + 1;
      sub_22BE25AD8();
      (v54)(v59 + v58 + *(v60 + 72) * v57, v10, v91);
      v43 = v96;
      v44 = v19;
      v29 = v90;
      v12 = v80;
      if (v96 == v45)
      {
        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    v94 = (v29 + 8);
    v61 = (v95 + 32);
    while (1)
    {
      v62 = *(v44 + 16);
      if (v43 == v62)
      {

        goto LABEL_18;
      }

      if (v43 >= v62)
      {
        break;
      }

      sub_22BE1B654();
      v97 = v64;
      v66 = v65;
      v67 = *(v29 + 16);
      v67(v88, v44 + v63 + *(v29 + 72) * v64, v98);
      v50 = v89;
      v68 = sub_22BE3AF28();
      (v67)(v68);
      v67(v87, v89, v98);
      v93(v87);
      if (v11)
      {
        goto LABEL_17;
      }

      v69 = *v94;
      v70 = sub_22BE36658();
      (v69)(v70);
      v71 = sub_22BE1AEE4();
      (v69)(v71);
      v72 = *v61;
      (*v61)(v85, v66, v91);
      v73 = *(a10 + 16);
      if (v73 >= *(a10 + 24) >> 1)
      {
        sub_22BE18110();
        v79();
      }

      *(a10 + 16) = v73 + 1;
      sub_22BE25AD8();
      v72(v75 + v74 + *(v76 + 72) * v73, v85, v91);
      v43 = v97 + 1;
      v44 = v92;
      v29 = v90;
    }

    __break(1u);
  }

  __break(1u);
LABEL_21:
  __break(1u);
}

void StatementResultDigest.init(transcript:)()
{
  sub_22BE19130();
  v5 = v4;
  v114 = v6;
  v7 = sub_22BE5CE4C(&qword_27D90CA48, &qword_22C296C60);
  sub_22BE19448(v7);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v8);
  sub_22BE1A174();
  v115 = v9;
  v10 = sub_22BE5CE4C(&qword_27D911C98, &qword_22C2B5090);
  sub_22BE19448(v10);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v11);
  sub_22BE1A174();
  v119 = v12;
  sub_22BE183BC();
  v127 = sub_22C26E684();
  sub_22BE179D8();
  v129 = v13;
  MEMORY[0x28223BE20](v14);
  sub_22BE17B98();
  v121 = v15;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v16);
  sub_22BE19E94();
  v120 = v17;
  v18 = sub_22BE5CE4C(&qword_27D90CA58, &unk_22C2AE550);
  sub_22BE19448(v18);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v19);
  sub_22BE1A174();
  v122 = v20;
  v21 = sub_22BE5CE4C(&qword_27D911DB8, &unk_22C2B5870);
  sub_22BE19448(v21);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v22);
  sub_22BE1A174();
  v125 = v23;
  v24 = sub_22BE183BC();
  v25 = type metadata accessor for TranscriptProtoStatementOutcome(v24);
  v26 = sub_22BE19448(v25);
  MEMORY[0x28223BE20](v26);
  sub_22BE179EC();
  v128 = v28 - v27;
  sub_22BE183BC();
  sub_22C26F894();
  sub_22BE179D8();
  v123 = v30;
  v124 = v29;
  MEMORY[0x28223BE20](v29);
  sub_22BE179EC();
  v126 = v32 - v31;
  v33 = sub_22BE183BC();
  v116 = type metadata accessor for StatementResultPayload(v33);
  sub_22BE18000();
  MEMORY[0x28223BE20](v34);
  sub_22BE179EC();
  sub_22C108970(v35);
  v36 = sub_22BE5CE4C(&qword_27D9082F0, &qword_22C27AB00);
  sub_22BE19448(v36);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v37);
  sub_22BE1A174();
  v131 = v38;
  v39 = sub_22BE183BC();
  v118 = type metadata accessor for StatementResult(v39);
  sub_22BE18000();
  MEMORY[0x28223BE20](v40);
  sub_22BE17B98();
  v117 = v41;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v42);
  sub_22BE181E4();
  v43 = sub_22BE5CE4C(&qword_27D90CA78, &qword_22C2B5880);
  sub_22BE19448(v43);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v44);
  v46 = &v109 - v45;
  v47 = sub_22BE5CE4C(&qword_27D911C90, &qword_22C2B5088);
  sub_22BE19448(v47);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v48);
  v50 = &v109 - v49;
  v51 = sub_22BE19454();
  v53 = sub_22BE5CE4C(v51, v52);
  v54 = sub_22BE19448(v53);
  MEMORY[0x28223BE20](v54);
  sub_22BE1958C();
  MEMORY[0x28223BE20](v55);
  sub_22BE25A90();
  v56 = sub_22BE5CE4C(&qword_27D90B2D8, &qword_22C2B5080);
  sub_22BE19448(v56);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v57);
  sub_22BE2C64C();
  v58 = sub_22BE25C08();
  sub_22BE2B984(v58, v59, &qword_27D90C180, &unk_22C296C40);
  sub_22C0FD2BC();
  if (v0)
  {
    sub_22BE35BE0();
  }

  else
  {
    v132 = v1;
    v60 = v3;
    v61 = type metadata accessor for ResponseGenerationProtoStatementResultDigest(0);
    sub_22BE2B984(v5 + *(v61 + 20), v46, &qword_27D90CA78, &qword_22C2B5880);
    sub_22C0FD4BC(v46, v50);
    v113 = v50;
    sub_22C26E1D4();
    sub_22BE1A140();
    v111 = v62;
    sub_22BE19DC4(v63, v64, v65, v62);
    sub_22BE2B984(v5, v2, &qword_27D90C180, &unk_22C296C40);
    v66 = sub_22C272674();
    v67 = sub_22BE406A0();
    sub_22BE1AB5C(v67, v68, v66);
    if (v69)
    {
      sub_22BE33928(v2, &qword_27D90C180, &unk_22C296C40);
      v110 = 0;
      v112 = 0;
    }

    else
    {
      v110 = sub_22C272664();
      v112 = v70;
      (*(*(v66 - 8) + 8))(v2, v66);
    }

    v72 = v127;
    v71 = v128;
    v73 = v129;
    sub_22C103B6C();
    v74 = v71;
    v75 = v130;
    StatementOutcome.init(transcript:)(v74, v76, v77, v78, v79, v80, v81, v82, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120);
    v129 = v61;
    sub_22BE2B984(v5 + *(v61 + 32), v122, &qword_27D90CA58, &unk_22C2AE550);
    v83 = v125;
    sub_22C0FD748();
    v84 = *(v116 + 20);
    sub_22C26F874();
    sub_22BE1A140();
    sub_22BE19DC4(v85, v86, v87, v88);
    (*(v123 + 32))(v75, v126, v124);
    sub_22BFC390C(v83, v75 + v84, &qword_27D911DB8, &unk_22C2B5870);
    sub_22C108E0C(0);
    sub_22C108E0C(0);
    v89 = v117;
    sub_22BE1A140();
    sub_22BE19DC4(v90, v91, v92, v111);
    v93 = v118;
    v94 = v89 + v118[9];
    *(v94 + 32) = 0;
    *v94 = 0u;
    *(v94 + 16) = 0u;
    sub_22BFC390C(v131, v89, &qword_27D9082F0, &qword_22C27AB00);
    v95 = v112;
    v96 = v110;
    if (!v112)
    {
      v96 = 0;
    }

    v131 = v96;
    sub_22C1083D4(*v94, *(v94 + 8));
    v97 = v130;
    *v94 = v131;
    *(v94 + 8) = v95;
    *(v94 + 16) = 0;
    *(v94 + 24) = 0;
    *(v94 + 32) = 0;
    sub_22C1086E4(v97, v89 + v93[5], type metadata accessor for StatementResultPayload);
    v98 = v93[6];
    v131 = *(v73 + 32);
    v131(v89 + v98, v120, v72);
    v99 = v121;
    (*(v73 + 16))(v89 + v93[7], v121, v72);
    v131(v89 + v93[8], v99, v72);
    sub_22BE28F84();
    sub_22C1086E4(v89, v132, v100);
    v101 = *(v5 + *(v129 + 28));
    v102 = v115;
    sub_22BE2B984(v5 + *(v129 + 36), v115, &qword_27D90CA48, &qword_22C296C60);
    v103 = v119;
    sub_22C0FD91C(v102, v119);
    if (v101 == 2)
    {
      v104 = 2;
    }

    else
    {
      v104 = v101 & 1;
    }

    sub_22BE35BE0();
    v105 = v114;
    sub_22BE73F60(v60, v114, &qword_27D90B2D8, &qword_22C2B5080);
    v106 = type metadata accessor for StatementResultDigest(0);
    sub_22BE73F60(v113, v105 + v106[5], &qword_27D911C90, &qword_22C2B5088);
    sub_22BE28F84();
    sub_22C1086E4(v132, v105 + v107, v108);
    *(v105 + v106[7]) = v104;
    sub_22BE73F60(v103, v105 + v106[8], &qword_27D911C98, &qword_22C2B5090);
  }

  sub_22BE22978();
  sub_22BE18478();
}

void sub_22C0FC7A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_22BE19130();
  sub_22C108830(v13);
  v47 = sub_22C272874();
  sub_22BE179D8();
  MEMORY[0x28223BE20](v14);
  sub_22BE179EC();
  sub_22C108970(v15);
  v16 = sub_22BE1AB74();
  v18 = sub_22BE5CE4C(v16, v17);
  sub_22BE19448(v18);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v19);
  sub_22BE24FD8();
  v20 = sub_22C272594();
  sub_22BE179D8();
  MEMORY[0x28223BE20](v21);
  sub_22BE25544();
  MEMORY[0x28223BE20](v22);
  sub_22BE18094();
  MEMORY[0x28223BE20](v23);
  sub_22BE1C17C();
  sub_22BE4178C();
  sub_22BE2B984(v24, v25, v26, &qword_22C294AA0);
  sub_22BE26894();
  if (v27)
  {
    sub_22BE354D0();
    sub_22BE33928(v28, v29, v30);
    sub_22BE354D0();
    sub_22BE33928(v31, v32, v33);
    sub_22BE379E4();
    v34 = v47;
LABEL_7:
    v44 = sub_22BE46544();
    sub_22BE19DC4(v44, v45, v46, v34);
    goto LABEL_8;
  }

  v35 = sub_22BE28A2C();
  v36(v35);
  v37 = sub_22BE31070();
  (qword_27D909128)(v37);
  (qword_27D909128)(v10, v12, v20);
  sub_22BE3D5B0();
  sub_22C272864();
  if (!a10)
  {
    v40 = sub_22C108BBC();
    (qword_22C294AA0)(v40);
    sub_22BE33928(v11, &qword_27D909128, &qword_22C294AA0);
    v41 = sub_22BE196A8();
    (qword_22C294AA0)(v41);
    v42 = sub_22C1088C8();
    v34 = v47;
    v43(v42, &qword_27D909128, v47);
    goto LABEL_7;
  }

  v38 = sub_22C108BBC();
  (qword_22C294AA0)(v38);
  sub_22BE33928(v11, &qword_27D909128, &qword_22C294AA0);
  v39 = sub_22BE196A8();
  (qword_22C294AA0)(v39);
LABEL_8:
  sub_22BEE94B0();
  sub_22BE18478();
}

void sub_22C0FCA40()
{
  v3 = sub_22BE25FD8();
  type metadata accessor for TranscriptProtoParticipantID(v3);
  sub_22BE18000();
  MEMORY[0x28223BE20](v4);
  sub_22BE25544();
  MEMORY[0x28223BE20](v5);
  sub_22BE181E4();
  v6 = sub_22BE2BA98();
  sub_22BE1AB5C(v6, v7, v8);
  if (v9)
  {
    sub_22BE33928(v1, &qword_27D90E418, &unk_22C2AE460);
  }

  else
  {
    sub_22C1086E4(v1, v2, type metadata accessor for TranscriptProtoParticipantID);
    sub_22C1086E4(v2, v0, type metadata accessor for TranscriptProtoParticipantID);

    sub_22C108634();
  }

  sub_22BE2590C();
  sub_22BE37758();
}

void sub_22C0FCB48()
{
  v2 = sub_22BE25FD8();
  type metadata accessor for TranscriptProtoSpanID(v2);
  sub_22BE18000();
  MEMORY[0x28223BE20](v3);
  sub_22BE183AC();
  sub_22BE2017C();
  MEMORY[0x28223BE20](v4);
  v5 = sub_22BE287AC();
  if (sub_22BE1AEA8(v5, 1, v6) == 1)
  {
    sub_22BE33928(v0, &qword_27D90E408, &unk_22C2CC840);
  }

  else
  {
    sub_22C1086E4(v0, v1, type metadata accessor for TranscriptProtoSpanID);
    v7 = sub_22BE26154();
    sub_22C1086E4(v7, v8, v9);
    sub_22C108634();
  }

  sub_22BE37758();
}

void sub_22C0FCC50()
{
  sub_22BE19130();
  v4 = sub_22BE2528C(v3);
  v41 = type metadata accessor for ActionParameterContext(v4);
  sub_22BE18000();
  MEMORY[0x28223BE20](v5);
  sub_22BE19338();
  v6 = sub_22C0B1AF0();
  v8 = sub_22BE5CE4C(v6, v7);
  sub_22BE19448(v8);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v9);
  v10 = sub_22BE250C8();
  type metadata accessor for TranscriptProtoActionParameterContext(v10);
  sub_22BE22CEC();
  MEMORY[0x28223BE20](v11);
  sub_22BE17D10();
  MEMORY[0x28223BE20](v12);
  v13 = sub_22BE23748();
  sub_22BE25D44(v13);
  sub_22BE2B8B8();
  if (v14)
  {
    v15 = sub_22C108788();
    sub_22BE33928(v15, v16, v17);
    sub_22BE40960();
    sub_22BE33928(v18, v19, v20);
    sub_22BE379E4();
LABEL_6:
    v37 = sub_22BE2530C();
    sub_22BE19DC4(v37, v38, v39, v41);
    goto LABEL_7;
  }

  v21 = sub_22C1088AC();
  sub_22C1086E4(v21, v2, v22);
  v23 = sub_22BE289D8();
  sub_22C108688(v23, v24, v25);
  v26 = sub_22BE3E998();
  ActionParameterContext.init(transcript:)(v26, v27, v28, v29, v30, v31, v32, v33, v40, v41);
  sub_22BE33928(v1, &qword_27D90EA70, &unk_22C2AE680);
  sub_22BE3ACD8();
  sub_22C108634();
  if (!v0)
  {
    v34 = sub_22C1088E8();
    sub_22C108DC4(v34, v35, v36);
    goto LABEL_6;
  }

LABEL_7:
  sub_22BE22978();
  sub_22BE18478();
}

void sub_22C0FCE10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ValueMetadata *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22BE19130();
  v24 = v23;
  v25 = sub_22C26F7C4();
  sub_22BE179D8();
  MEMORY[0x28223BE20](v26);
  sub_22BE1955C();
  v27 = sub_22BE3CEF4();
  v29 = sub_22BE5CE4C(v27, v28);
  sub_22BE19448(v29);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v30);
  v31 = sub_22BE24FD8();
  v32 = type metadata accessor for TranscriptProtoPromptSelection(v31);
  sub_22BE18000();
  MEMORY[0x28223BE20](v33);
  sub_22BE1958C();
  MEMORY[0x28223BE20](v34);
  sub_22BE2B984(v24, v22, &qword_27D90E688, &qword_22C296F40);
  v35 = sub_22BE3C598();
  sub_22BE1AB5C(v35, v36, v32);
  if (v37)
  {
    sub_22BE36674();
    sub_22BE33928(v38, v39, v40);
    sub_22BE36674();
    sub_22BE33928(v41, v42, v43);
LABEL_13:
    v61 = sub_22BE46544();
    sub_22BE19DC4(v61, v62, v63, v25);
    goto LABEL_14;
  }

  v44 = sub_22BE1824C();
  sub_22C1086E4(v44, v45, v46);
  v47 = sub_22C1088E8();
  sub_22C108688(v47, v21, v48);
  if ((*(v21 + 9) & 1) == 0)
  {
    v54 = *v21;
    v55 = *(v21 + 8);
    sub_22BE3ACD8();
    sub_22C108634();
    if (v55)
    {
      sub_22BE3D5B0();
      if (v54)
      {
        v57 = MEMORY[0x277D1CAF8];
      }

      else
      {
        v57 = MEMORY[0x277D1CB00];
      }

      (*(v56 + 104))(v20, *v57, v25);
    }

    else
    {
      *v20 = v54;
      sub_22BE3D5B0();
      (*(v58 + 104))(v20, v59, v25);
    }

    sub_22BE33928(v24, &qword_27D90E688, &qword_22C296F40);
    sub_22C108634();
    sub_22BE39E94();
    v60();
    goto LABEL_13;
  }

  sub_22BE5CE4C(&qword_27D911FB8, &unk_22C2B5D60);
  v49 = sub_22C273074();
  v51 = v50;
  v52 = sub_22C108598();
  sub_22BE196B4(&type metadata for TranscriptConversion.Error, v52);
  *v53 = v49;
  *(v53 + 8) = v51;
  *(v53 + 16) = 0;
  swift_willThrow();
  sub_22C108634();
  sub_22BE33928(v24, &qword_27D90E688, &qword_22C296F40);
  sub_22BE291B0();
  sub_22C108634();
LABEL_14:
  sub_22BE35D48();
  sub_22BE18478();
}

void sub_22C0FD140()
{
  sub_22BE19130();
  sub_22BE23350();
  v2 = sub_22BE289D8();
  v4 = sub_22BE5CE4C(v2, v3);
  sub_22BE19448(v4);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v5);
  v6 = sub_22BE250C8();
  type metadata accessor for TranscriptProtoStatementID(v6);
  sub_22BE18000();
  MEMORY[0x28223BE20](v7);
  sub_22BE183AC();
  sub_22BE2017C();
  MEMORY[0x28223BE20](v8);
  sub_22BE287AC();
  sub_22C108960();
  sub_22BE2B984(v9, v10, v11, v12);
  sub_22BE23B00(v1);
  if (v13)
  {
    v14 = sub_22BE2590C();
    sub_22BE33928(v14, v15, &unk_22C2AE4A0);
    v16 = sub_22BE33560();
    sub_22BE33928(v16, v17, &unk_22C2AE4A0);
  }

  else
  {
    sub_22BE1A788();
    v18 = sub_22BE18240();
    sub_22C1086E4(v18, v19, v20);
    sub_22BE2BC1C();
    v21 = sub_22BE1AB1C();
    sub_22C108688(v21, v22, v23);

    sub_22C26E664();
    sub_22BE33928(v0, &qword_27D9090F8, &unk_22C2AE4A0);
    sub_22C1089E4();
    sub_22C108634();
    sub_22BE25C08();
    sub_22C108634();
  }

  v24 = sub_22C26E684();
  sub_22BE3C074(v24);
  sub_22BE22978();
  sub_22BE18478();
}

void sub_22C0FD2BC()
{
  sub_22BE19130();
  sub_22BE3C3E4(v3);
  sub_22C272224();
  sub_22BE179D8();
  v35 = v4;
  MEMORY[0x28223BE20](v4);
  sub_22BE19338();
  v5 = sub_22BE1A8C4();
  v7 = sub_22BE5CE4C(v5, v6);
  sub_22BE19448(v7);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v8);
  sub_22BE24FD8();
  sub_22C272674();
  sub_22BE179D8();
  MEMORY[0x28223BE20](v9);
  sub_22BE186D4();
  MEMORY[0x28223BE20](v10);
  v11 = sub_22BE23748();
  sub_22BE3F3C8(v11);
  sub_22BE26894();
  if (v12)
  {
    v13 = sub_22C108788();
    sub_22BE33928(v13, v14, v15);
    sub_22BE40960();
    sub_22BE33928(v16, v17, v18);
    sub_22BE379E4();
    v19 = v35;
LABEL_7:
    v32 = sub_22BE46544();
    sub_22BE19DC4(v32, v33, v34, v19);
    goto LABEL_8;
  }

  v20 = sub_22BE3D4EC();
  v21(v20);
  v22 = sub_22BE1ACD4();
  v23(v22);
  v24 = sub_22C1087E0();
  ToolDefinition.init(transcript:)(v24, v25);
  if (!v0)
  {
    sub_22BE33928(v1, &qword_27D90C180, &unk_22C296C40);
    v28 = sub_22BE41624();
    v29(v28);
    v19 = v35;
    v30 = sub_22C1088C8();
    v31(v30, v2, v35);
    goto LABEL_7;
  }

  sub_22BE33928(v1, &qword_27D90C180, &unk_22C296C40);
  v26 = sub_22BE41624();
  v27(v26);
LABEL_8:
  sub_22BEE94B0();
  sub_22BE18478();
}

uint64_t sub_22C0FD4BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v26 = type metadata accessor for Action(0);
  MEMORY[0x28223BE20](v26);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22BE5CE4C(&qword_27D90CA78, &qword_22C2B5880);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v25 - v7;
  v9 = type metadata accessor for TranscriptProtoAction(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v25 - v13;
  sub_22BE2B984(a1, v8, &qword_27D90CA78, &qword_22C2B5880);
  if (sub_22BE1AEA8(v8, 1, v9) == 1)
  {
    sub_22BE33928(a1, &qword_27D90CA78, &qword_22C2B5880);
    sub_22BE33928(v8, &qword_27D90CA78, &qword_22C2B5880);
    v15 = 1;
    v16 = v28;
  }

  else
  {
    sub_22C1086E4(v8, v14, type metadata accessor for TranscriptProtoAction);
    sub_22C108688(v14, v11, type metadata accessor for TranscriptProtoAction);
    Action.init(transcript:)(v11, v17, v18, v19, v20, v21, v22, v23, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36);
    sub_22BE33928(a1, &qword_27D90CA78, &qword_22C2B5880);
    result = sub_22C108634();
    if (v2)
    {
      return result;
    }

    v16 = v28;
    sub_22C1086E4(v5, v28, type metadata accessor for Action);
    v15 = 0;
  }

  return sub_22BE19DC4(v16, v15, 1, v26);
}

void sub_22C0FD748()
{
  sub_22BE19130();
  sub_22BE2528C(v3);
  sub_22C26F874();
  sub_22BE179D8();
  v38 = v5;
  v39 = v4;
  MEMORY[0x28223BE20](v4);
  sub_22BE19338();
  v6 = sub_22C0B1AF0();
  v8 = sub_22BE5CE4C(v6, v7);
  sub_22BE19448(v8);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v9);
  v10 = sub_22BE250C8();
  type metadata accessor for TranscriptProtoResponseManifest(v10);
  sub_22BE22CEC();
  MEMORY[0x28223BE20](v11);
  sub_22BE17D10();
  MEMORY[0x28223BE20](v12);
  v13 = sub_22BE23748();
  sub_22BE25D44(v13);
  sub_22BE2B8B8();
  if (v14)
  {
    v15 = sub_22C108788();
    sub_22BE33928(v15, v16, v17);
    sub_22BE40960();
    sub_22BE33928(v18, v19, v20);
    sub_22BE272D4();
LABEL_6:
    sub_22BE3CBD0(v21, v22);
    goto LABEL_7;
  }

  v23 = sub_22C1088AC();
  sub_22C1086E4(v23, v2, v24);
  v25 = sub_22BE289D8();
  sub_22C108688(v25, v26, v27);
  v28 = sub_22BE3E998();
  ResponseManifest.init(transcript:)(v28, v29, v30, v31, v32, v33, v34, v35, v38, v39);
  sub_22BE33928(v1, &qword_27D90CA58, &unk_22C2AE550);
  sub_22BE3ACD8();
  sub_22C108634();
  if (!v0)
  {
    v36 = sub_22BE1B4D0();
    v21 = v37(v36);
    v22 = 0;
    goto LABEL_6;
  }

LABEL_7:
  sub_22BE22978();
  sub_22BE18478();
}

uint64_t sub_22C0FD91C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v29 = sub_22C272CD4();
  v27 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v28 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_22BE5CE4C(&qword_27D90CA48, &qword_22C296C60);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v27 - v5;
  v7 = sub_22C272644();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v27 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v27 - v15;
  sub_22BE2B984(a1, v6, &qword_27D90CA48, &qword_22C296C60);
  if (sub_22BE1AEA8(v6, 1, v7) == 1)
  {
    sub_22BE33928(a1, &qword_27D90CA48, &qword_22C296C60);
    sub_22BE33928(v6, &qword_27D90CA48, &qword_22C296C60);
    v17 = 1;
    v19 = v29;
    v18 = v30;
  }

  else
  {
    (*(v8 + 32))(v16, v6, v7);
    v20 = *(v8 + 16);
    v20(v13, v16, v7);
    v20(v10, v13, v7);
    v21 = v28;
    v22 = v31;
    sub_22C272CC4();
    if (v22)
    {
      v23 = *(v8 + 8);
      v23(v13, v7);
      sub_22BE33928(a1, &qword_27D90CA48, &qword_22C296C60);
      return (v23)(v16, v7);
    }

    v25 = *(v8 + 8);
    v25(v13, v7);
    sub_22BE33928(a1, &qword_27D90CA48, &qword_22C296C60);
    v25(v16, v7);
    v18 = v30;
    v26 = v21;
    v19 = v29;
    (*(v27 + 32))(v30, v26, v29);
    v17 = 0;
  }

  return sub_22BE19DC4(v18, v17, 1, v19);
}

void sub_22C0FDCA0()
{
  sub_22BE19130();
  sub_22BE2528C(v3);
  sub_22C271A34();
  sub_22BE179D8();
  MEMORY[0x28223BE20](v4);
  sub_22BE19338();
  v5 = sub_22C0B1AF0();
  v7 = sub_22BE5CE4C(v5, v6);
  sub_22BE19448(v7);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v8);
  v9 = sub_22BE250C8();
  type metadata accessor for ContextProtoQueryDecorationToolRetrievalResponse(v9);
  sub_22BE22CEC();
  MEMORY[0x28223BE20](v10);
  sub_22BE17D10();
  MEMORY[0x28223BE20](v11);
  v12 = sub_22BE23748();
  sub_22BE25D44(v12);
  sub_22BE2B8B8();
  if (v13)
  {
    v14 = sub_22C108788();
    sub_22BE33928(v14, v15, v16);
    sub_22BE40960();
    sub_22BE33928(v17, v18, v19);
    sub_22BE272D4();
LABEL_6:
    sub_22BE3CBD0(v20, v21);
    goto LABEL_7;
  }

  v22 = sub_22C1088AC();
  sub_22C1086E4(v22, v2, v23);
  v24 = sub_22BE289D8();
  sub_22C108688(v24, v25, v26);
  sub_22BE3E998();
  QueryDecorationToolRetrievalResponse.init(transcript:)();
  sub_22BE33928(v1, &qword_27D90C100, &unk_22C294B20);
  sub_22BE3ACD8();
  sub_22C108634();
  if (!v0)
  {
    v27 = sub_22BE1B4D0();
    v20 = v28(v27);
    v21 = 0;
    goto LABEL_6;
  }

LABEL_7:
  sub_22BE22978();
  sub_22BE18478();
}

void sub_22C0FDE74()
{
  sub_22BE19130();
  sub_22BE2528C(v3);
  sub_22C271394();
  sub_22BE179D8();
  MEMORY[0x28223BE20](v4);
  sub_22BE19338();
  v5 = sub_22C0B1AF0();
  v7 = sub_22BE5CE4C(v5, v6);
  sub_22BE19448(v7);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v8);
  v9 = sub_22BE250C8();
  type metadata accessor for ContextProtoStructuredContextSiriRequestContext(v9);
  sub_22BE22CEC();
  MEMORY[0x28223BE20](v10);
  sub_22BE17D10();
  MEMORY[0x28223BE20](v11);
  v12 = sub_22BE23748();
  sub_22BE25D44(v12);
  sub_22BE2B8B8();
  if (v13)
  {
    v14 = sub_22C108788();
    sub_22BE33928(v14, v15, v16);
    sub_22BE40960();
    sub_22BE33928(v17, v18, v19);
    sub_22BE272D4();
LABEL_6:
    sub_22BE3CBD0(v20, v21);
    goto LABEL_7;
  }

  v22 = sub_22C1088AC();
  sub_22C1086E4(v22, v2, v23);
  v24 = sub_22BE289D8();
  sub_22C108688(v24, v25, v26);
  sub_22BE3E998();
  StructuredContext.SiriRequestContext.init(transcript:)();
  sub_22BE33928(v1, &qword_27D90C7E8, &unk_22C2AE4B0);
  sub_22BE3ACD8();
  sub_22C108634();
  if (!v0)
  {
    v27 = sub_22BE1B4D0();
    v20 = v28(v27);
    v21 = 0;
    goto LABEL_6;
  }

LABEL_7:
  sub_22BE22978();
  sub_22BE18478();
}

void sub_22C0FE048(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_22BE19130();
  v13 = sub_22BE3C3E4(v12);
  v14 = type metadata accessor for TranscriptProtoDeviceDetailsDeviceType(v13);
  v15 = sub_22BE19448(v14);
  MEMORY[0x28223BE20](v15);
  sub_22BE19338();
  v16 = sub_22C26EA34();
  v17 = sub_22BE19448(v16);
  MEMORY[0x28223BE20](v17);
  sub_22BE1955C();
  v18 = sub_22BE1AB74();
  v20 = sub_22BE5CE4C(v18, v19);
  sub_22BE19448(v20);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v21);
  sub_22BE19668();
  type metadata accessor for TranscriptProtoDeviceDetails(0);
  sub_22BE18000();
  MEMORY[0x28223BE20](v22);
  sub_22BE17D10();
  MEMORY[0x28223BE20](v23);
  sub_22BE23748();
  sub_22BE40960();
  sub_22BE2B984(v24, v25, v26, &unk_22C2AE490);
  sub_22BE23B00(v10);
  if (v27)
  {
    sub_22BE36674();
    sub_22BE33928(v28, v29, v30);
    sub_22BE36674();
    sub_22BE33928(v31, v32, v33);
    v34 = 1;
    v35 = v43;
LABEL_7:
    v42 = sub_22C26EA84();
    sub_22BE19DC4(v35, v34, 1, v42);
    goto LABEL_8;
  }

  v36 = sub_22BE31038();
  sub_22C1086E4(v36, v37, v38);
  v39 = sub_22BE289D8();
  sub_22C108688(v39, v40, v41);

  sub_22C101398();
  if (!a10)
  {
    sub_22C26EA14();
    sub_22C108634();
    v35 = v43;
    sub_22BE260B8();
    sub_22C26EA44();
    sub_22BE33928(v11, &qword_27D90E4A0, &unk_22C2AE490);
    sub_22C108AD4();
    sub_22C108634();
    sub_22C108634();
    v34 = 0;
    goto LABEL_7;
  }

  sub_22BE33928(v11, &qword_27D90E4A0, &unk_22C2AE490);
  sub_22C108AD4();
  sub_22C108634();
  sub_22C108634();
LABEL_8:
  sub_22BE18478();
}

void sub_22C0FE2E8()
{
  sub_22BE23350();
  type metadata accessor for TranscriptProtoPersonQuery.Handle(0);
  sub_22BE18000();
  MEMORY[0x28223BE20](v4);
  sub_22BE183AC();
  sub_22BE2017C();
  MEMORY[0x28223BE20](v5);
  v6 = sub_22BE287AC();
  sub_22BE1AB5C(v6, 1, v7);
  if (v8)
  {
    sub_22BE33928(v1, &qword_27D90E7A8, &unk_22C2B5C40);
    v12 = 4;
  }

  else
  {
    sub_22C1086E4(v1, v3, type metadata accessor for TranscriptProtoPersonQuery.Handle);
    v9 = sub_22BE26154();
    sub_22C1086E4(v9, v10, v11);
    v12 = *v2;
    sub_22C108634();
  }

  *v0 = v12;
  sub_22BE37758();
}

void sub_22C0FE588()
{
  sub_22BE19130();
  v4 = sub_22BE2528C(v3);
  v41 = type metadata accessor for RequestPrescribedPlan(v4);
  sub_22BE18000();
  MEMORY[0x28223BE20](v5);
  sub_22BE19338();
  v6 = sub_22C0B1AF0();
  v8 = sub_22BE5CE4C(v6, v7);
  sub_22BE19448(v8);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v9);
  v10 = sub_22BE250C8();
  type metadata accessor for TranscriptProtoRequestPrescribedPlan(v10);
  sub_22BE22CEC();
  MEMORY[0x28223BE20](v11);
  sub_22BE17D10();
  MEMORY[0x28223BE20](v12);
  v13 = sub_22BE23748();
  sub_22BE25D44(v13);
  sub_22BE2B8B8();
  if (v14)
  {
    v15 = sub_22C108788();
    sub_22BE33928(v15, v16, v17);
    sub_22BE40960();
    sub_22BE33928(v18, v19, v20);
    sub_22BE379E4();
LABEL_6:
    v37 = sub_22BE2530C();
    sub_22BE19DC4(v37, v38, v39, v41);
    goto LABEL_7;
  }

  v21 = sub_22C1088AC();
  sub_22C1086E4(v21, v2, v22);
  v23 = sub_22BE289D8();
  sub_22C108688(v23, v24, v25);
  v26 = sub_22BE3E998();
  RequestPrescribedPlan.init(transcript:)(v26, v27, v28, v29, v30, v31, v32, v33, v40, v41);
  sub_22BE33928(v1, &qword_27D90E558, &unk_22C2AE4D0);
  sub_22BE3ACD8();
  sub_22C108634();
  if (!v0)
  {
    v34 = sub_22C1088E8();
    sub_22C108DC4(v34, v35, v36);
    goto LABEL_6;
  }

LABEL_7:
  sub_22BE22978();
  sub_22BE18478();
}

void sub_22C0FE748()
{
  sub_22BE19130();
  v4 = sub_22BE2528C(v3);
  v32 = type metadata accessor for DateTimeContext(v4);
  sub_22BE18000();
  MEMORY[0x28223BE20](v5);
  sub_22BE19338();
  v6 = sub_22C0B1AF0();
  v8 = sub_22BE5CE4C(v6, v7);
  sub_22BE19448(v8);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v9);
  v10 = sub_22BE250C8();
  type metadata accessor for TranscriptProtoDateTimeContext(v10);
  sub_22BE22CEC();
  MEMORY[0x28223BE20](v11);
  sub_22BE17D10();
  MEMORY[0x28223BE20](v12);
  v13 = sub_22BE23748();
  sub_22BE25D44(v13);
  sub_22BE2B8B8();
  if (v14)
  {
    v15 = sub_22C108788();
    sub_22BE33928(v15, v16, v17);
    sub_22BE40960();
    sub_22BE33928(v18, v19, v20);
    sub_22BE379E4();
LABEL_6:
    v29 = sub_22BE2530C();
    sub_22BE19DC4(v29, v30, v31, v32);
    goto LABEL_7;
  }

  v21 = sub_22C1088AC();
  sub_22C1086E4(v21, v2, v22);
  v23 = sub_22BE289D8();
  sub_22C108688(v23, v24, v25);
  sub_22BE3E998();
  DateTimeContext.init(transcript:)();
  sub_22BE33928(v1, &qword_27D90E528, &unk_22C2CC870);
  sub_22BE3ACD8();
  sub_22C108634();
  if (!v0)
  {
    v26 = sub_22C1088E8();
    sub_22C108DC4(v26, v27, v28);
    goto LABEL_6;
  }

LABEL_7:
  sub_22BE22978();
  sub_22BE18478();
}

void sub_22C0FE908(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_22BE19130();
  sub_22C108830(v13);
  v47 = sub_22C2728A4();
  sub_22BE179D8();
  MEMORY[0x28223BE20](v14);
  sub_22BE179EC();
  sub_22C108970(v15);
  v16 = sub_22BE1AB74();
  v18 = sub_22BE5CE4C(v16, v17);
  sub_22BE19448(v18);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v19);
  sub_22BE24FD8();
  v20 = sub_22C2725A4();
  sub_22BE179D8();
  MEMORY[0x28223BE20](v21);
  sub_22BE25544();
  MEMORY[0x28223BE20](v22);
  sub_22BE18094();
  MEMORY[0x28223BE20](v23);
  sub_22BE1C17C();
  sub_22BE4178C();
  sub_22BE2B984(v24, v25, v26, &qword_22C2CB830);
  sub_22BE26894();
  if (v27)
  {
    sub_22BE354D0();
    sub_22BE33928(v28, v29, v30);
    sub_22BE354D0();
    sub_22BE33928(v31, v32, v33);
    sub_22BE379E4();
    v34 = v47;
LABEL_7:
    v44 = sub_22BE46544();
    sub_22BE19DC4(v44, v45, v46, v34);
    goto LABEL_8;
  }

  v35 = sub_22BE28A2C();
  v36(v35);
  v37 = sub_22BE31070();
  (qword_27D90C138)(v37);
  (qword_27D90C138)(v10, v12, v20);
  sub_22BE3D5B0();
  sub_22C272894();
  if (!a10)
  {
    v40 = sub_22C108BBC();
    (qword_22C2CB830)(v40);
    sub_22BE33928(v11, &qword_27D90C138, &qword_22C2CB830);
    v41 = sub_22BE196A8();
    (qword_22C2CB830)(v41);
    v42 = sub_22C1088C8();
    v34 = v47;
    v43(v42, &qword_27D90C138, v47);
    goto LABEL_7;
  }

  v38 = sub_22C108BBC();
  (qword_22C2CB830)(v38);
  sub_22BE33928(v11, &qword_27D90C138, &qword_22C2CB830);
  v39 = sub_22BE196A8();
  (qword_22C2CB830)(v39);
LABEL_8:
  sub_22BEE94B0();
  sub_22BE18478();
}

void sub_22C0FEBA0()
{
  sub_22C108858();
  sub_22C2713B4();
  sub_22BE179D8();
  MEMORY[0x28223BE20](v1);
  sub_22BE179EC();
  sub_22BE1BC40();
  switch(v0)
  {
    case 7:
      v2 = sub_22BE2BA98();
      break;
    default:
      v4 = sub_22BE3EAC8();
      v5(v4);
      v6 = sub_22C108844();
      v7(v6);
      v2 = sub_22BE3661C();
      break;
  }

  sub_22BE3ACE4(v2, v3);
  sub_22BE37758();
}

void sub_22C0FECD0()
{
  sub_22C108858();
  sub_22C2713C4();
  sub_22BE179D8();
  MEMORY[0x28223BE20](v1);
  sub_22BE179EC();
  sub_22BE1BC40();
  switch(v0)
  {
    case 4:
      v2 = sub_22BE2BA98();
      break;
    default:
      v4 = sub_22BE3EAC8();
      v5(v4);
      v6 = sub_22C108844();
      v7(v6);
      v2 = sub_22BE3661C();
      break;
  }

  sub_22BE3ACE4(v2, v3);
  sub_22BE37758();
}

void sub_22C0FEDDC()
{
  sub_22C108858();
  sub_22C2713D4();
  sub_22BE179D8();
  MEMORY[0x28223BE20](v1);
  sub_22BE179EC();
  sub_22BE1BC40();
  switch(v0)
  {
    case 9:
      v2 = sub_22BE2BA98();
      break;
    default:
      v4 = sub_22BE3EAC8();
      v5(v4);
      v6 = sub_22C108844();
      v7(v6);
      v2 = sub_22BE3661C();
      break;
  }

  sub_22BE3ACE4(v2, v3);
  sub_22BE37758();
}

void sub_22C0FEF24()
{
  sub_22C108858();
  sub_22C2711F4();
  sub_22BE179D8();
  MEMORY[0x28223BE20](v1);
  sub_22BE179EC();
  sub_22BE1BC40();
  switch(v0)
  {
    case 5:
      v6 = sub_22BE2BA98();
      break;
    default:
      v2 = sub_22BE3EAC8();
      v3(v2);
      v4 = sub_22C108844();
      v5(v4);
      v6 = sub_22BE3661C();
      break;
  }

  sub_22BE3ACE4(v6, v7);
  sub_22BE37758();
}

void sub_22C0FF03C()
{
  sub_22C108858();
  sub_22C271074();
  sub_22BE179D8();
  MEMORY[0x28223BE20](v1);
  sub_22BE179EC();
  sub_22BE1BC40();
  switch(v0)
  {
    case 12:
      v2 = sub_22BE2BA98();
      break;
    default:
      v4 = sub_22BE3EAC8();
      v5(v4);
      v6 = sub_22C108844();
      v7(v6);
      v2 = sub_22BE3661C();
      break;
  }

  sub_22BE3ACE4(v2, v3);
  sub_22BE37758();
}

void sub_22C0FF19C()
{
  sub_22BE19130();
  sub_22BE2528C(v3);
  sub_22C2716E4();
  sub_22BE179D8();
  MEMORY[0x28223BE20](v4);
  sub_22BE19338();
  v5 = sub_22C0B1AF0();
  v7 = sub_22BE5CE4C(v5, v6);
  sub_22BE19448(v7);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v8);
  v9 = sub_22BE250C8();
  type metadata accessor for ContextProtoStructuredContext(v9);
  sub_22BE22CEC();
  MEMORY[0x28223BE20](v10);
  sub_22BE17D10();
  MEMORY[0x28223BE20](v11);
  v12 = sub_22BE23748();
  sub_22BE25D44(v12);
  sub_22BE2B8B8();
  if (v13)
  {
    v14 = sub_22C108788();
    sub_22BE33928(v14, v15, v16);
    sub_22BE40960();
    sub_22BE33928(v17, v18, v19);
    sub_22BE272D4();
LABEL_6:
    sub_22BE3CBD0(v20, v21);
    goto LABEL_7;
  }

  v22 = sub_22C1088AC();
  sub_22C1086E4(v22, v2, v23);
  v24 = sub_22BE289D8();
  sub_22C108688(v24, v25, v26);
  v27 = sub_22BE3E998();
  StructuredContext.init(transcript:)(v27, v28);
  sub_22BE33928(v1, &qword_27D90BF50, &unk_22C2B5ED0);
  sub_22BE3ACD8();
  sub_22C108634();
  if (!v0)
  {
    v29 = sub_22BE1B4D0();
    v20 = v30(v29);
    v21 = 0;
    goto LABEL_6;
  }

LABEL_7:
  sub_22BE22978();
  sub_22BE18478();
}

void sub_22C0FF370()
{
  sub_22BE19130();
  sub_22BE2528C(v3);
  sub_22C270984();
  sub_22BE179D8();
  MEMORY[0x28223BE20](v4);
  sub_22BE19338();
  v5 = sub_22C0B1AF0();
  v7 = sub_22BE5CE4C(v5, v6);
  sub_22BE19448(v7);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v8);
  v9 = sub_22BE24FD8();
  type metadata accessor for ContextProtoConfidence(v9);
  sub_22BE22CEC();
  MEMORY[0x28223BE20](v10);
  sub_22BE183AC();
  sub_22BE28C8C();
  MEMORY[0x28223BE20](v11);
  v12 = sub_22BE23748();
  sub_22BE2B984(v12, v2, &qword_27D90BF70, &qword_22C290DC0);
  v13 = sub_22BE3C598();
  sub_22BE22E98(v13, v14);
  if (v15)
  {
    v16 = sub_22C108788();
    sub_22BE33928(v16, v17, v18);
    sub_22BE40960();
    sub_22BE33928(v19, v20, v21);
    sub_22BE272D4();
LABEL_6:
    sub_22BE3CBD0(v22, v23);
    goto LABEL_7;
  }

  v24 = sub_22BE180C8();
  sub_22C1086E4(v24, v25, v26);
  v27 = sub_22BE196A8();
  sub_22C108688(v27, v28, v29);
  sub_22C270954();
  sub_22BE33928(v1, &qword_27D90BF70, &qword_22C290DC0);
  sub_22C108634();
  sub_22C108634();
  if (!v0)
  {
    v30 = sub_22BE1B4D0();
    v22 = v31(v30);
    v23 = 0;
    goto LABEL_6;
  }

LABEL_7:
  sub_22BE22978();
  sub_22BE18478();
}

void sub_22C0FF574()
{
  sub_22BE19130();
  sub_22BE2528C(v3);
  sub_22C270E04();
  sub_22BE179D8();
  MEMORY[0x28223BE20](v4);
  sub_22BE19338();
  v5 = sub_22C0B1AF0();
  v7 = sub_22BE5CE4C(v5, v6);
  sub_22BE19448(v7);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v8);
  v9 = sub_22BE250C8();
  type metadata accessor for ContextProtoContextMetadata(v9);
  sub_22BE22CEC();
  MEMORY[0x28223BE20](v10);
  sub_22BE17D10();
  MEMORY[0x28223BE20](v11);
  v12 = sub_22BE23748();
  sub_22BE25D44(v12);
  sub_22BE2B8B8();
  if (v13)
  {
    v14 = sub_22C108788();
    sub_22BE33928(v14, v15, v16);
    sub_22BE40960();
    sub_22BE33928(v17, v18, v19);
    sub_22BE272D4();
LABEL_6:
    sub_22BE3CBD0(v20, v21);
    goto LABEL_7;
  }

  v22 = sub_22C1088AC();
  sub_22C1086E4(v22, v2, v23);
  v24 = sub_22BE289D8();
  sub_22C108688(v24, v25, v26);
  sub_22BE3E998();
  ContextMetadata.init(transcript:)();
  sub_22BE33928(v1, &qword_27D90BF60, &unk_22C294AB0);
  sub_22BE3ACD8();
  sub_22C108634();
  if (!v0)
  {
    v27 = sub_22BE1B4D0();
    v20 = v28(v27);
    v21 = 0;
    goto LABEL_6;
  }

LABEL_7:
  sub_22BE22978();
  sub_22BE18478();
}

uint64_t sub_22C0FF748()
{
  sub_22BE23350();
  v5 = sub_22BE289D8();
  v7 = sub_22BE5CE4C(v5, v6);
  sub_22BE19448(v7);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v8);
  v9 = sub_22BE250C8();
  type metadata accessor for ContextProtoBoundingBox(v9);
  sub_22BE18000();
  MEMORY[0x28223BE20](v10);
  sub_22BE183AC();
  sub_22BE1AF10();
  MEMORY[0x28223BE20](v11);
  sub_22BE181E4();
  sub_22C108960();
  sub_22BE2B984(v12, v13, v14, v15);
  sub_22BE23B00(v4);
  if (v16)
  {
    v17 = sub_22BE2590C();
    sub_22BE33928(v17, v18, &unk_22C294AC0);
    v19 = sub_22BE33560();
    sub_22BE33928(v19, v20, &unk_22C294AC0);
LABEL_4:
    v21 = sub_22C2709F4();
    return sub_22BE3C074(v21);
  }

  v23 = sub_22C1088AC();
  sub_22C1086E4(v23, v2, v24);
  v25 = sub_22BE29454();
  sub_22C108688(v25, v26, v27);
  sub_22C108BE8(*v3);
  if (!v0)
  {
    sub_22C108BE8(v3[2]);
    sub_22C108BE8(v3[4]);
    sub_22C108BE8(v3[6]);
    sub_22C2709A4();
    sub_22BE33928(v1, &qword_27D9092A0, &unk_22C294AC0);
    sub_22C108634();
    sub_22BE1B328();
    sub_22C108634();
    goto LABEL_4;
  }

  sub_22BE33928(v1, &qword_27D9092A0, &unk_22C294AC0);
  sub_22C108634();
  return sub_22C108634();
}

void sub_22C0FF9D0()
{
  sub_22BE19130();
  sub_22BE23350();
  v6 = sub_22BE5CE4C(&qword_27D90BF90, &unk_22C294AD0);
  sub_22BE19448(v6);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v7);
  v8 = sub_22BE250C8();
  v9 = type metadata accessor for ContextProtoCGRect(v8);
  sub_22BE18000();
  MEMORY[0x28223BE20](v10);
  sub_22BE1958C();
  MEMORY[0x28223BE20](v11);
  sub_22BE287AC();
  sub_22BE39E94();
  sub_22BE2B984(v12, v13, v14, &unk_22C294AD0);
  v15 = sub_22BE1AEA8(v4, 1, v9);
  if (v15 == 1)
  {
    sub_22BE33928(v2, &qword_27D90BF90, &unk_22C294AD0);
    v16 = sub_22BE18240();
    sub_22BE33928(v16, v17, &unk_22C294AD0);
    v18 = 0uLL;
    v19 = 0uLL;
LABEL_6:
    *v1 = v18;
    *(v1 + 16) = v19;
    *(v1 + 32) = v15 == 1;
    goto LABEL_7;
  }

  v20 = sub_22C1088AC();
  sub_22C1086E4(v20, v3, v21);
  v22 = sub_22C1088E8();
  sub_22C108688(v22, v5, v23);
  CGRect.init(transcript:)();
  if (!v0)
  {
    v30 = v26;
    v31 = v24;
    v28 = v25;
    v29 = v27;
    sub_22BE33928(v2, &qword_27D90BF90, &unk_22C294AD0);
    sub_22BE31750();
    *&v19 = v30;
    *&v18 = v31;
    *(&v18 + 1) = v28;
    *(&v19 + 1) = v29;
    goto LABEL_6;
  }

  sub_22BE33928(v2, &qword_27D90BF90, &unk_22C294AD0);
  sub_22BE31750();
LABEL_7:
  sub_22BE22978();
  sub_22BE18478();
}

void sub_22C0FFD60()
{
  sub_22BE19130();
  sub_22BE2528C(v3);
  sub_22C26FC34();
  sub_22BE179D8();
  MEMORY[0x28223BE20](v4);
  sub_22BE19338();
  v5 = sub_22C0B1AF0();
  v7 = sub_22BE5CE4C(v5, v6);
  sub_22BE19448(v7);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v8);
  v9 = sub_22BE250C8();
  type metadata accessor for TranscriptProtoParameterNeedsValueContext(v9);
  sub_22BE22CEC();
  MEMORY[0x28223BE20](v10);
  sub_22BE17D10();
  MEMORY[0x28223BE20](v11);
  v12 = sub_22BE23748();
  sub_22BE25D44(v12);
  sub_22BE2B8B8();
  if (v13)
  {
    v14 = sub_22C108788();
    sub_22BE33928(v14, v15, v16);
    sub_22BE40960();
    sub_22BE33928(v17, v18, v19);
    sub_22BE272D4();
LABEL_6:
    sub_22BE3CBD0(v20, v21);
    goto LABEL_7;
  }

  v22 = sub_22C1088AC();
  sub_22C1086E4(v22, v2, v23);
  v24 = sub_22BE289D8();
  sub_22C108688(v24, v25, v26);
  sub_22BE3E998();
  ParameterNeedsValue.Context.init(transcript:)();
  sub_22BE33928(v1, &qword_27D90E998, &unk_22C2AE640);
  sub_22BE3ACD8();
  sub_22C108634();
  if (!v0)
  {
    v27 = sub_22BE1B4D0();
    v20 = v28(v27);
    v21 = 0;
    goto LABEL_6;
  }

LABEL_7:
  sub_22BE22978();
  sub_22BE18478();
}

void sub_22C0FFF34()
{
  sub_22BE19130();
  sub_22BE2528C(v3);
  sub_22C26FB44();
  sub_22BE179D8();
  MEMORY[0x28223BE20](v4);
  sub_22BE19338();
  v5 = sub_22C0B1AF0();
  v7 = sub_22BE5CE4C(v5, v6);
  sub_22BE19448(v7);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v8);
  v9 = sub_22BE250C8();
  type metadata accessor for TranscriptProtoActionConfirmationSystemStyle(v9);
  sub_22BE22CEC();
  MEMORY[0x28223BE20](v10);
  sub_22BE17D10();
  MEMORY[0x28223BE20](v11);
  v12 = sub_22BE23748();
  sub_22BE25D44(v12);
  sub_22BE2B8B8();
  if (v13)
  {
    v14 = sub_22C108788();
    sub_22BE33928(v14, v15, v16);
    sub_22BE40960();
    sub_22BE33928(v17, v18, v19);
    sub_22BE272D4();
LABEL_6:
    sub_22BE3CBD0(v20, v21);
    goto LABEL_7;
  }

  v22 = sub_22C1088AC();
  sub_22C1086E4(v22, v2, v23);
  v24 = sub_22BE289D8();
  sub_22C108688(v24, v25, v26);
  sub_22BE3E998();
  ActionConfirmation.SystemStyle.init(transcript:)();
  sub_22BE33928(v1, &qword_27D90E6C8, &unk_22C2AE530);
  sub_22BE3ACD8();
  sub_22C108634();
  if (!v0)
  {
    v27 = sub_22BE1B4D0();
    v20 = v28(v27);
    v21 = 0;
    goto LABEL_6;
  }

LABEL_7:
  sub_22BE22978();
  sub_22BE18478();
}

void sub_22C100108()
{
  sub_22BE19130();
  v4 = v3;
  v30 = v5;
  v6 = sub_22BE289D8();
  v8 = sub_22BE5CE4C(v6, v7);
  sub_22BE19448(v8);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v9);
  v10 = sub_22BE250C8();
  type metadata accessor for TranscriptProtoResponseDialog(v10);
  sub_22BE18000();
  MEMORY[0x28223BE20](v11);
  sub_22BE183AC();
  sub_22BE2017C();
  MEMORY[0x28223BE20](v12);
  sub_22BE287AC();
  sub_22C108960();
  sub_22BE2B984(v13, v14, v15, v16);
  sub_22BE23B00(v2);
  if (v17)
  {
    sub_22BE354D0();
    sub_22BE33928(v18, v19, v20);
    sub_22BE354D0();
    sub_22BE33928(v21, v22, v23);
    v28 = 1;
  }

  else
  {
    v24 = sub_22C1088AC();
    sub_22C1086E4(v24, v1, v25);
    v26 = sub_22C1088E8();
    sub_22C108688(v26, v0, v27);

    sub_22C108960();
    sub_22C26F2D4();
    sub_22BE33928(v4, &qword_27D90EC28, &unk_22C2CCA30);
    sub_22C108634();
    sub_22BE291B0();
    sub_22C108634();
    v28 = 0;
  }

  v29 = sub_22C26F304();
  sub_22BE19DC4(v30, v28, 1, v29);
  sub_22BE18478();
}

void sub_22C100304()
{
  sub_22BE19130();
  sub_22BE2528C(v3);
  sub_22C26F6F4();
  sub_22BE179D8();
  MEMORY[0x28223BE20](v4);
  sub_22BE19338();
  v5 = sub_22C0B1AF0();
  v7 = sub_22BE5CE4C(v5, v6);
  sub_22BE19448(v7);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v8);
  v9 = sub_22BE250C8();
  type metadata accessor for TranscriptProtoResponseVisual(v9);
  sub_22BE22CEC();
  MEMORY[0x28223BE20](v10);
  sub_22BE17D10();
  MEMORY[0x28223BE20](v11);
  v12 = sub_22BE23748();
  sub_22BE25D44(v12);
  sub_22BE2B8B8();
  if (v13)
  {
    v14 = sub_22C108788();
    sub_22BE33928(v14, v15, v16);
    sub_22BE40960();
    sub_22BE33928(v17, v18, v19);
    sub_22BE272D4();
LABEL_6:
    sub_22BE3CBD0(v20, v21);
    goto LABEL_7;
  }

  v22 = sub_22C1088AC();
  sub_22C1086E4(v22, v2, v23);
  v24 = sub_22BE289D8();
  sub_22C108688(v24, v25, v26);
  sub_22BE3E998();
  ResponseVisual.init(transcript:)();
  sub_22BE33928(v1, &qword_27D90EC18, &unk_22C2AE700);
  sub_22BE3ACD8();
  sub_22C108634();
  if (!v0)
  {
    v27 = sub_22BE1B4D0();
    v20 = v28(v27);
    v21 = 0;
    goto LABEL_6;
  }

LABEL_7:
  sub_22BE22978();
  sub_22BE18478();
}

void sub_22C1004D8()
{
  sub_22BE19130();
  sub_22BE2528C(v3);
  sub_22C26F674();
  sub_22BE179D8();
  v38 = v5;
  v39 = v4;
  MEMORY[0x28223BE20](v4);
  sub_22BE19338();
  v6 = sub_22C0B1AF0();
  v8 = sub_22BE5CE4C(v6, v7);
  sub_22BE19448(v8);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v9);
  v10 = sub_22BE250C8();
  type metadata accessor for TranscriptProtoUIType(v10);
  sub_22BE22CEC();
  MEMORY[0x28223BE20](v11);
  sub_22BE17D10();
  MEMORY[0x28223BE20](v12);
  v13 = sub_22BE23748();
  sub_22BE25D44(v13);
  sub_22BE2B8B8();
  if (v14)
  {
    v15 = sub_22C108788();
    sub_22BE33928(v15, v16, v17);
    sub_22BE40960();
    sub_22BE33928(v18, v19, v20);
    sub_22BE272D4();
LABEL_6:
    sub_22BE3CBD0(v21, v22);
    goto LABEL_7;
  }

  v23 = sub_22C1088AC();
  sub_22C1086E4(v23, v2, v24);
  v25 = sub_22BE289D8();
  sub_22C108688(v25, v26, v27);
  v28 = sub_22BE3E998();
  ResponseVisual.UIType.init(transcript:)(v28, v29, v30, v31, v32, v33, v34, v35, v38, v39);
  sub_22BE33928(v1, &qword_27D90EC08, &unk_22C2CCA20);
  sub_22BE3ACD8();
  sub_22C108634();
  if (!v0)
  {
    v36 = sub_22BE1B4D0();
    v21 = v37(v36);
    v22 = 0;
    goto LABEL_6;
  }

LABEL_7:
  sub_22BE22978();
  sub_22BE18478();
}

void sub_22C1006AC()
{
  sub_22BE19130();
  sub_22BE2528C(v3);
  sub_22C26F4B4();
  sub_22BE179D8();
  MEMORY[0x28223BE20](v4);
  sub_22BE19338();
  v5 = sub_22C0B1AF0();
  v7 = sub_22BE5CE4C(v5, v6);
  sub_22BE19448(v7);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v8);
  v9 = sub_22BE250C8();
  type metadata accessor for TranscriptProtoDialogType(v9);
  sub_22BE22CEC();
  MEMORY[0x28223BE20](v10);
  sub_22BE17D10();
  MEMORY[0x28223BE20](v11);
  v12 = sub_22BE23748();
  sub_22BE25D44(v12);
  sub_22BE2B8B8();
  if (v13)
  {
    v14 = sub_22C108788();
    sub_22BE33928(v14, v15, v16);
    sub_22BE40960();
    sub_22BE33928(v17, v18, v19);
    sub_22BE272D4();
LABEL_6:
    sub_22BE3CBD0(v20, v21);
    goto LABEL_7;
  }

  v22 = sub_22C1088AC();
  sub_22C1086E4(v22, v2, v23);
  v24 = sub_22BE289D8();
  sub_22C108688(v24, v25, v26);
  sub_22BE3E998();
  ResponseOutput.DialogType.init(transcript:)();
  sub_22BE33928(v1, &qword_27D90EB10, &qword_22C2CC960);
  sub_22BE3ACD8();
  sub_22C108634();
  if (!v0)
  {
    v27 = sub_22BE1B4D0();
    v20 = v28(v27);
    v21 = 0;
    goto LABEL_6;
  }

LABEL_7:
  sub_22BE22978();
  sub_22BE18478();
}

void sub_22C100880()
{
  sub_22BE19130();
  sub_22BE2528C(v3);
  sub_22C26F444();
  sub_22BE179D8();
  MEMORY[0x28223BE20](v4);
  sub_22BE19338();
  v5 = sub_22C0B1AF0();
  v7 = sub_22BE5CE4C(v5, v6);
  sub_22BE19448(v7);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v8);
  v9 = sub_22BE250C8();
  type metadata accessor for TranscriptProtoVisualOutput(v9);
  sub_22BE22CEC();
  MEMORY[0x28223BE20](v10);
  sub_22BE17D10();
  MEMORY[0x28223BE20](v11);
  v12 = sub_22BE23748();
  sub_22BE25D44(v12);
  sub_22BE2B8B8();
  if (v13)
  {
    v14 = sub_22C108788();
    sub_22BE33928(v14, v15, v16);
    sub_22BE40960();
    sub_22BE33928(v17, v18, v19);
    sub_22BE272D4();
LABEL_6:
    sub_22BE3CBD0(v20, v21);
    goto LABEL_7;
  }

  v22 = sub_22C1088AC();
  sub_22C1086E4(v22, v2, v23);
  v24 = sub_22BE289D8();
  sub_22C108688(v24, v25, v26);
  sub_22BE3E998();
  ResponseOutput.VisualOutput.init(transcript:)();
  sub_22BE33928(v1, &qword_27D90EAF0, &qword_22C2B5C30);
  sub_22BE41318();
  sub_22C108634();
  if (!v0)
  {
    v27 = sub_22BE1B4D0();
    v20 = v28(v27);
    v21 = 0;
    goto LABEL_6;
  }

LABEL_7:
  sub_22BE22978();
  sub_22BE18478();
}

void sub_22C100A48()
{
  sub_22BE19130();
  sub_22BE2528C(v3);
  sub_22C26F354();
  sub_22BE179D8();
  MEMORY[0x28223BE20](v4);
  sub_22BE19338();
  v5 = sub_22C0B1AF0();
  v7 = sub_22BE5CE4C(v5, v6);
  sub_22BE19448(v7);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v8);
  v9 = sub_22BE250C8();
  type metadata accessor for TranscriptProtoAceCommandOutputData(v9);
  sub_22BE22CEC();
  MEMORY[0x28223BE20](v10);
  sub_22BE17D10();
  MEMORY[0x28223BE20](v11);
  v12 = sub_22BE23748();
  sub_22BE25D44(v12);
  sub_22BE2B8B8();
  if (v13)
  {
    v14 = sub_22C108788();
    sub_22BE33928(v14, v15, v16);
    sub_22BE40960();
    sub_22BE33928(v17, v18, v19);
    sub_22BE272D4();
LABEL_6:
    sub_22BE3CBD0(v20, v21);
    goto LABEL_7;
  }

  v22 = sub_22C1088AC();
  sub_22C1086E4(v22, v2, v23);
  v24 = sub_22BE289D8();
  sub_22C108688(v24, v25, v26);
  sub_22BE3E998();
  ResponseOutput.VisualOutput.AceCommandOutputPayload.AceCommandOutputData.init(transcript:)();
  sub_22BE33928(v1, &qword_27D90EB58, &unk_22C2AE6D0);
  sub_22BE3ACD8();
  sub_22C108634();
  if (!v0)
  {
    v27 = sub_22BE1B4D0();
    v20 = v28(v27);
    v21 = 0;
    goto LABEL_6;
  }

LABEL_7:
  sub_22BE22978();
  sub_22BE18478();
}

void sub_22C100C1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_22BE19130();
  sub_22BE3C3E4(v13);
  v14 = sub_22C26E1D4();
  v15 = sub_22BE19448(v14);
  MEMORY[0x28223BE20](v15);
  sub_22BE19338();
  v16 = sub_22BE5CE4C(&qword_27D9082F0, &qword_22C27AB00);
  sub_22BE19448(v16);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v17);
  sub_22BE19668();
  v18 = sub_22BE3CEF4();
  v20 = sub_22BE5CE4C(v18, v19);
  sub_22BE19448(v20);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v21);
  v22 = sub_22BE24FD8();
  v23 = type metadata accessor for TranscriptProtoUndoContext(v22);
  sub_22BE18000();
  MEMORY[0x28223BE20](v24);
  sub_22BE183AC();
  sub_22BE28C8C();
  MEMORY[0x28223BE20](v25);
  v26 = sub_22BE23748();
  sub_22BE2B984(v26, v12, &qword_27D90E908, &unk_22C2AE600);
  v27 = sub_22BE3C598();
  sub_22BE1AB5C(v27, v28, v23);
  if (v29)
  {
    sub_22BE354D0();
    sub_22BE33928(v30, v31, v32);
    sub_22BE354D0();
    sub_22BE33928(v33, v34, v35);
    v36 = 1;
    v37 = v45;
LABEL_7:
    v44 = sub_22C26E954();
    sub_22BE19DC4(v37, v36, 1, v44);
    goto LABEL_8;
  }

  v38 = sub_22BE180C8();
  sub_22C1086E4(v38, v39, v40);
  v41 = sub_22BE196A8();
  sub_22C108688(v41, v42, v43);
  sub_22C26E174();
  sub_22C101298();
  if (!a10)
  {
    sub_22BE33928(v10, &qword_27D9082F0, &qword_22C27AB00);

    v37 = v45;
    sub_22C26E944();
    sub_22BE33928(v11, &qword_27D90E908, &unk_22C2AE600);
    sub_22C108A2C();
    sub_22C108634();
    sub_22BE39EAC();
    sub_22C108634();
    v36 = 0;
    goto LABEL_7;
  }

  sub_22BE33928(v11, &qword_27D90E908, &unk_22C2AE600);
  sub_22BE33928(v10, &qword_27D9082F0, &qword_22C27AB00);
  sub_22C108A2C();
  sub_22C108634();
  sub_22BE39EAC();
  sub_22C108634();
LABEL_8:
  sub_22BE18478();
}

void sub_22C100EE4()
{
  sub_22BE19130();
  sub_22BE2528C(v3);
  sub_22C26E8E4();
  sub_22BE179D8();
  MEMORY[0x28223BE20](v4);
  sub_22BE19338();
  v5 = sub_22C0B1AF0();
  v7 = sub_22BE5CE4C(v5, v6);
  sub_22BE19448(v7);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v8);
  v9 = sub_22BE250C8();
  type metadata accessor for TranscriptProtoFollowUpAction(v9);
  sub_22BE22CEC();
  MEMORY[0x28223BE20](v10);
  sub_22BE17D10();
  MEMORY[0x28223BE20](v11);
  v12 = sub_22BE23748();
  sub_22BE25D44(v12);
  sub_22BE2B8B8();
  if (v13)
  {
    v14 = sub_22C108788();
    sub_22BE33928(v14, v15, v16);
    sub_22BE40960();
    sub_22BE33928(v17, v18, v19);
    sub_22BE272D4();
LABEL_6:
    sub_22BE3CBD0(v20, v21);
    goto LABEL_7;
  }

  v22 = sub_22C1088AC();
  sub_22C1086E4(v22, v2, v23);
  v24 = sub_22BE289D8();
  sub_22C108688(v24, v25, v26);
  sub_22BE3E998();
  ActionSuccess.FollowUpAction.init(transcript:)();
  sub_22BE33928(v1, &qword_27D90E8F8, &qword_22C2B5B60);
  sub_22BE3ACD8();
  sub_22C108634();
  if (!v0)
  {
    v27 = sub_22BE1B4D0();
    v20 = v28(v27);
    v21 = 0;
    goto LABEL_6;
  }

LABEL_7:
  sub_22BE22978();
  sub_22BE18478();
}

void sub_22C1010B8()
{
  sub_22BE33A88();
  v1 = sub_22BE1B18C();
  v3 = sub_22BE5CE4C(v1, v2);
  sub_22BE19448(v3);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v4);
  sub_22BE1A384(v5, v12);
  v6 = type metadata accessor for TranscriptProtoFollowUpActionExecutableActionEnum(0);
  sub_22BE18ED4(v6);
  if (v7)
  {
    sub_22BE33928(v0, &qword_27D90E948, &qword_22C2B5A50);
    v8 = sub_22BE5CE4C(&qword_27D911DF8, &unk_22C2B5A58);
    sub_22BE3CF9C(v8);
    sub_22BE29328();
    v9 = sub_22C108598();
    v10 = sub_22BE196B4(&type metadata for TranscriptConversion.Error, v9);
    sub_22BE29564(v10, v11);
  }

  else
  {
    sub_22C108890();
  }

  sub_22BE37758();
}

void sub_22C1011A8()
{
  sub_22BE33A88();
  v1 = sub_22BE1B18C();
  v3 = sub_22BE5CE4C(v1, v2);
  sub_22BE19448(v3);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v4);
  sub_22BE1A384(v5, v12);
  v6 = type metadata accessor for TranscriptProtoFollowUpActionExecutableAction(0);
  sub_22BE18ED4(v6);
  if (v7)
  {
    sub_22BE33928(v0, &qword_27D90E930, &unk_22C2AE610);
    v8 = sub_22BE5CE4C(&qword_27D911E00, &unk_22C2B5A68);
    sub_22BE3CF9C(v8);
    sub_22BE29328();
    v9 = sub_22C108598();
    v10 = sub_22BE196B4(&type metadata for TranscriptConversion.Error, v9);
    sub_22BE29564(v10, v11);
  }

  else
  {
    sub_22C108890();
  }

  sub_22BE37758();
}

void sub_22C101298()
{
  sub_22BE33A88();
  v1 = sub_22BE1B18C();
  v3 = sub_22BE5CE4C(v1, v2);
  sub_22BE19448(v3);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v4);
  sub_22BE1A384(v5, v14);
  v6 = sub_22C26E1D4();
  sub_22BE18ED4(v6);
  if (v7)
  {
    sub_22BE33928(v0, &qword_27D9082F0, &qword_22C27AB00);
    v8 = sub_22BE5CE4C(&qword_27D912020, &unk_22C2B5E10);
    sub_22BE3CF9C(v8);
    sub_22BE29328();
    v9 = sub_22C108598();
    v10 = sub_22BE196B4(&type metadata for TranscriptConversion.Error, v9);
    sub_22BE29564(v10, v11);
  }

  else
  {
    sub_22BE415A0();
    v12 = sub_22C10886C();
    v13(v12);
  }

  sub_22BE37758();
}

void sub_22C101398()
{
  sub_22BE33A88();
  v1 = sub_22BE1B18C();
  v3 = sub_22BE5CE4C(v1, v2);
  sub_22BE19448(v3);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v4);
  sub_22BE1A384(v5, v12);
  v6 = type metadata accessor for TranscriptProtoDeviceDetailsDeviceType(0);
  sub_22BE18ED4(v6);
  if (v7)
  {
    sub_22BE33928(v0, &qword_27D90F0E8, &qword_22C2B5C90);
    v8 = sub_22BE5CE4C(&qword_27D911F30, &qword_22C2B5C98);
    sub_22BE3CF9C(v8);
    sub_22BE29328();
    v9 = sub_22C108598();
    v10 = sub_22BE196B4(&type metadata for TranscriptConversion.Error, v9);
    sub_22BE29564(v10, v11);
  }

  else
  {
    sub_22C108890();
  }

  sub_22BE37758();
}

void sub_22C101488()
{
  sub_22BE33A88();
  v1 = sub_22BE1B18C();
  v3 = sub_22BE5CE4C(v1, v2);
  sub_22BE19448(v3);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v4);
  sub_22BE1A384(v5, v14);
  v6 = sub_22C272594();
  sub_22BE18ED4(v6);
  if (v7)
  {
    sub_22BE33928(v0, &qword_27D909128, &qword_22C294AA0);
    v8 = sub_22BE5CE4C(&qword_27D911F88, &qword_22C2B5D10);
    sub_22BE3CF9C(v8);
    sub_22BE29328();
    v9 = sub_22C108598();
    v10 = sub_22BE196B4(&type metadata for TranscriptConversion.Error, v9);
    sub_22BE29564(v10, v11);
  }

  else
  {
    sub_22BE415A0();
    v12 = sub_22C10886C();
    v13(v12);
  }

  sub_22BE37758();
}

void sub_22C101588()
{
  sub_22BE33A88();
  v1 = sub_22BE1B18C();
  v3 = sub_22BE5CE4C(v1, v2);
  sub_22BE19448(v3);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v4);
  sub_22BE1A384(v5, v12);
  v6 = type metadata accessor for TranscriptProtoResponseVisualOptions(0);
  sub_22BE18ED4(v6);
  if (v7)
  {
    sub_22BE33928(v0, &qword_27D90EC58, &unk_22C2AE710);
    v8 = sub_22BE5CE4C(&qword_27D911E58, &unk_22C2B5B00);
    sub_22BE3CF9C(v8);
    sub_22BE29328();
    v9 = sub_22C108598();
    v10 = sub_22BE196B4(&type metadata for TranscriptConversion.Error, v9);
    sub_22BE29564(v10, v11);
  }

  else
  {
    sub_22C108890();
  }

  sub_22BE37758();
}

void sub_22C101678()
{
  sub_22BE33A88();
  v1 = sub_22BE1B18C();
  v3 = sub_22BE5CE4C(v1, v2);
  sub_22BE19448(v3);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v4);
  sub_22BE1A384(v5, v12);
  v6 = type metadata accessor for TranscriptProtoLabel(0);
  sub_22BE18ED4(v6);
  if (v7)
  {
    sub_22BE33928(v0, &qword_27D9091D0, &qword_22C27FDC8);
    v8 = sub_22BE5CE4C(&qword_27D911E60, &qword_22C2B5B10);
    sub_22BE3CF9C(v8);
    sub_22BE29328();
    v9 = sub_22C108598();
    v10 = sub_22BE196B4(&type metadata for TranscriptConversion.Error, v9);
    sub_22BE29564(v10, v11);
  }

  else
  {
    sub_22C108890();
  }

  sub_22BE37758();
}

void sub_22C101768()
{
  sub_22BE33A88();
  v1 = sub_22BE1B18C();
  v3 = sub_22BE5CE4C(v1, v2);
  sub_22BE19448(v3);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v4);
  sub_22BE1A384(v5, v14);
  v6 = sub_22C2729D4();
  sub_22BE18ED4(v6);
  if (v7)
  {
    sub_22BE33928(v0, &qword_27D911E40, &qword_22C2B5AD8);
    v8 = sub_22BE5CE4C(&qword_27D911E48, &unk_22C2B5AE0);
    sub_22BE3CF9C(v8);
    sub_22BE29328();
    v9 = sub_22C108598();
    v10 = sub_22BE196B4(&type metadata for TranscriptConversion.Error, v9);
    sub_22BE29564(v10, v11);
  }

  else
  {
    sub_22BE415A0();
    v12 = sub_22C10886C();
    v13(v12);
  }

  sub_22BE37758();
}

void sub_22C101868()
{
  sub_22BE33A88();
  v1 = sub_22BE1B18C();
  v3 = sub_22BE5CE4C(v1, v2);
  sub_22BE19448(v3);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v4);
  sub_22BE1A384(v5, v12);
  v6 = type metadata accessor for TranscriptProtoUitype(0);
  sub_22BE18ED4(v6);
  if (v7)
  {
    sub_22BE33928(v0, &qword_27D9091E0, &qword_22C27FDD8);
    v8 = sub_22BE5CE4C(&qword_27D911E50, &unk_22C2B5AF0);
    sub_22BE3CF9C(v8);
    sub_22BE29328();
    v9 = sub_22C108598();
    v10 = sub_22BE196B4(&type metadata for TranscriptConversion.Error, v9);
    sub_22BE29564(v10, v11);
  }

  else
  {
    sub_22C108890();
  }

  sub_22BE37758();
}

void sub_22C101958()
{
  sub_22BE33A88();
  v1 = sub_22BE1B18C();
  v3 = sub_22BE5CE4C(v1, v2);
  sub_22BE19448(v3);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v4);
  sub_22BE1A384(v5, v12);
  v6 = type metadata accessor for TranscriptProtoSystemRequirementAuthenticationRequestAuthenticationLevel(0);
  sub_22BE18ED4(v6);
  if (v7)
  {
    sub_22BE33928(v0, &qword_27D90E880, &unk_22C2AE5E0);
    v8 = sub_22BE5CE4C(&qword_27D911EA0, &qword_22C2B5B68);
    sub_22BE3CF9C(v8);
    sub_22BE29328();
    v9 = sub_22C108598();
    v10 = sub_22BE196B4(&type metadata for TranscriptConversion.Error, v9);
    sub_22BE29564(v10, v11);
  }

  else
  {
    sub_22C108890();
  }

  sub_22BE37758();
}

void sub_22C101A48()
{
  sub_22BE33A88();
  v1 = sub_22BE1B18C();
  v3 = sub_22BE5CE4C(v1, v2);
  sub_22BE19448(v3);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v4);
  sub_22BE1A384(v5, v12);
  v6 = type metadata accessor for TranscriptProtoActionConfirmationSystemStyleMontaraEnablementSource(0);
  sub_22BE18ED4(v6);
  if (v7)
  {
    sub_22BE33928(v0, &qword_27D90E6F8, &qword_22C2B5BE0);
    v8 = sub_22BE5CE4C(&qword_27D911ED8, &qword_22C2B5BE8);
    sub_22BE3CF9C(v8);
    sub_22BE29328();
    v9 = sub_22C108598();
    v10 = sub_22BE196B4(&type metadata for TranscriptConversion.Error, v9);
    sub_22BE29564(v10, v11);
  }

  else
  {
    sub_22C108890();
  }

  sub_22BE37758();
}

void sub_22C101B38()
{
  sub_22BE33A88();
  v1 = sub_22BE1B18C();
  v3 = sub_22BE5CE4C(v1, v2);
  sub_22BE19448(v3);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v4);
  sub_22BE1A384(v5, v12);
  v6 = type metadata accessor for TranscriptProtoActionConfirmationSystemStyleEnum(0);
  sub_22BE18ED4(v6);
  if (v7)
  {
    sub_22BE33928(v0, &qword_27D90E6E0, &qword_22C2B5BF0);
    v8 = sub_22BE5CE4C(&qword_27D911EE0, &qword_22C2B5BF8);
    sub_22BE3CF9C(v8);
    sub_22BE29328();
    v9 = sub_22C108598();
    v10 = sub_22BE196B4(&type metadata for TranscriptConversion.Error, v9);
    sub_22BE29564(v10, v11);
  }

  else
  {
    sub_22C108890();
  }

  sub_22BE37758();
}

void sub_22C101C28()
{
  sub_22BE33A88();
  v1 = sub_22BE1B18C();
  v3 = sub_22BE5CE4C(v1, v2);
  sub_22BE19448(v3);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v4);
  sub_22BE1A384(v5, v12);
  v6 = type metadata accessor for TranscriptProtoParameterNeedsValueContextEnum(0);
  sub_22BE18ED4(v6);
  if (v7)
  {
    sub_22BE33928(v0, &qword_27D90E9B0, &qword_22C2B5BC0);
    v8 = sub_22BE5CE4C(&qword_27D911EC8, &qword_22C2B5BC8);
    sub_22BE3CF9C(v8);
    sub_22BE29328();
    v9 = sub_22C108598();
    v10 = sub_22BE196B4(&type metadata for TranscriptConversion.Error, v9);
    sub_22BE29564(v10, v11);
  }

  else
  {
    sub_22C108890();
  }

  sub_22BE37758();
}

void sub_22C101D18()
{
  sub_22BE33A88();
  v1 = sub_22BE1B18C();
  v3 = sub_22BE5CE4C(v1, v2);
  sub_22BE19448(v3);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v4);
  sub_22BE1A384(v5, v12);
  v6 = type metadata accessor for TranscriptProtoASTFlatValue(0);
  sub_22BE18ED4(v6);
  if (v7)
  {
    sub_22BE33928(v0, &qword_27D90EE30, &unk_22C2AE760);
    v8 = sub_22BE5CE4C(&qword_27D911E28, &qword_22C2B5AB8);
    sub_22BE3CF9C(v8);
    sub_22BE29328();
    v9 = sub_22C108598();
    v10 = sub_22BE196B4(&type metadata for TranscriptConversion.Error, v9);
    sub_22BE29564(v10, v11);
  }

  else
  {
    sub_22C108890();
  }

  sub_22BE37758();
}

void sub_22C101E08()
{
  sub_22BE33A88();
  v1 = sub_22BE1B18C();
  v3 = sub_22BE5CE4C(v1, v2);
  sub_22BE19448(v3);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v4);
  sub_22BE1A384(v5, v12);
  v6 = type metadata accessor for TranscriptProtoASTPickType(0);
  sub_22BE18ED4(v6);
  if (v7)
  {
    sub_22BE33928(v0, &qword_27D90EDB8, &qword_22C2B5AC0);
    v8 = sub_22BE5CE4C(&qword_27D911E30, &qword_22C2B5AC8);
    sub_22BE3CF9C(v8);
    sub_22BE29328();
    v9 = sub_22C108598();
    v10 = sub_22BE196B4(&type metadata for TranscriptConversion.Error, v9);
    sub_22BE29564(v10, v11);
  }

  else
  {
    sub_22C108890();
  }

  sub_22BE37758();
}

uint64_t sub_22C101EF8(uint64_t result)
{
  if ((result & 0x100000000) != 0)
  {
    sub_22BE5CE4C(&qword_27D912048, &qword_22C2B5E68);
    sub_22C273074();
    sub_22BE29328();
    v1 = sub_22C108598();
    v2 = sub_22BE196B4(&type metadata for TranscriptConversion.Error, v1);
    return sub_22BE29564(v2, v3);
  }

  return result;
}

uint64_t sub_22C101F78(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = a1;
  }

  else
  {
    sub_22BE5CE4C(&qword_27D912050, &unk_22C2B5E70);
    sub_22C273074();
    sub_22BE29328();
    v3 = sub_22C108598();
    v4 = sub_22BE196B4(&type metadata for TranscriptConversion.Error, v3);
    sub_22BE29564(v4, v5);
  }

  return v2;
}

void sub_22C10200C()
{
  sub_22BE33A88();
  v1 = sub_22BE1B18C();
  v3 = sub_22BE5CE4C(v1, v2);
  sub_22BE19448(v3);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v4);
  sub_22BE1A384(v5, v12);
  v6 = type metadata accessor for ContextProtoCGPoint(0);
  sub_22BE18ED4(v6);
  if (v7)
  {
    sub_22BE33928(v0, &qword_27D90C0C0, &unk_22C294B10);
    v8 = sub_22BE5CE4C(&qword_27D912068, &unk_22C2B5EA0);
    sub_22BE3CF9C(v8);
    sub_22BE29328();
    v9 = sub_22C108598();
    v10 = sub_22BE196B4(&type metadata for TranscriptConversion.Error, v9);
    sub_22BE29564(v10, v11);
  }

  else
  {
    sub_22C108890();
  }

  sub_22BE37758();
}

void sub_22C1020FC()
{
  sub_22BE33A88();
  v1 = sub_22BE1B18C();
  v3 = sub_22BE5CE4C(v1, v2);
  sub_22BE19448(v3);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v4);
  sub_22BE1A384(v5, v12);
  v6 = type metadata accessor for ContextProtoCGSize(0);
  sub_22BE18ED4(v6);
  if (v7)
  {
    sub_22BE33928(v0, &qword_27D90C0B0, &qword_22C290E20);
    v8 = sub_22BE5CE4C(&qword_27D912060, &unk_22C2B5E90);
    sub_22BE3CF9C(v8);
    sub_22BE29328();
    v9 = sub_22C108598();
    v10 = sub_22BE196B4(&type metadata for TranscriptConversion.Error, v9);
    sub_22BE29564(v10, v11);
  }

  else
  {
    sub_22C108890();
  }

  sub_22BE37758();
}

void sub_22C1021EC()
{
  sub_22BE33A88();
  v1 = sub_22BE1B18C();
  v3 = sub_22BE5CE4C(v1, v2);
  sub_22BE19448(v3);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v4);
  sub_22BE1A384(v5, v12);
  v6 = type metadata accessor for ContextProtoStructuredContextOnScreenUITextUIMetadataWindow(0);
  sub_22BE18ED4(v6);
  if (v7)
  {
    sub_22BE33928(v0, &qword_27D90C090, &qword_22C290E10);
    v8 = sub_22BE5CE4C(&qword_27D912058, &unk_22C2B5E80);
    sub_22BE3CF9C(v8);
    sub_22BE29328();
    v9 = sub_22C108598();
    v10 = sub_22BE196B4(&type metadata for TranscriptConversion.Error, v9);
    sub_22BE29564(v10, v11);
  }

  else
  {
    sub_22C108890();
  }

  sub_22BE37758();
}

void sub_22C1022DC()
{
  sub_22BE33A88();
  v1 = sub_22BE1B18C();
  v3 = sub_22BE5CE4C(v1, v2);
  sub_22BE19448(v3);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v4);
  sub_22BE1A384(v5, v14);
  v6 = sub_22C2725C4();
  sub_22BE18ED4(v6);
  if (v7)
  {
    sub_22BE33928(v0, &qword_27D909280, &unk_22C294B50);
    v8 = sub_22BE5CE4C(&qword_27D912030, &unk_22C2B5E40);
    sub_22BE3CF9C(v8);
    sub_22BE29328();
    v9 = sub_22C108598();
    v10 = sub_22BE196B4(&type metadata for TranscriptConversion.Error, v9);
    sub_22BE29564(v10, v11);
  }

  else
  {
    sub_22BE415A0();
    v12 = sub_22C10886C();
    v13(v12);
  }

  sub_22BE37758();
}

void sub_22C1023DC()
{
  sub_22BE33A88();
  v1 = sub_22BE1B18C();
  v3 = sub_22BE5CE4C(v1, v2);
  sub_22BE19448(v3);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v4);
  sub_22BE1A384(v5, v14);
  v6 = sub_22C2725B4();
  sub_22BE18ED4(v6);
  if (v7)
  {
    sub_22BE33928(v0, &qword_27D909270, &unk_22C2CB810);
    v8 = sub_22BE5CE4C(&qword_27D912038, &unk_22C2B5E50);
    sub_22BE3CF9C(v8);
    sub_22BE29328();
    v9 = sub_22C108598();
    v10 = sub_22BE196B4(&type metadata for TranscriptConversion.Error, v9);
    sub_22BE29564(v10, v11);
  }

  else
  {
    sub_22BE415A0();
    v12 = sub_22C10886C();
    v13(v12);
  }

  sub_22BE37758();
}

void sub_22C1024DC()
{
  sub_22BE33A88();
  v1 = sub_22BE1B18C();
  v3 = sub_22BE5CE4C(v1, v2);
  sub_22BE19448(v3);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v4);
  sub_22BE1A384(v5, v14);
  v6 = sub_22C2725A4();
  sub_22BE18ED4(v6);
  if (v7)
  {
    sub_22BE33928(v0, &qword_27D90C138, &qword_22C2CB830);
    v8 = sub_22BE5CE4C(&qword_27D911F80, &qword_22C2B5D08);
    sub_22BE3CF9C(v8);
    sub_22BE29328();
    v9 = sub_22C108598();
    v10 = sub_22BE196B4(&type metadata for TranscriptConversion.Error, v9);
    sub_22BE29564(v10, v11);
  }

  else
  {
    sub_22BE415A0();
    v12 = sub_22C10886C();
    v13(v12);
  }

  sub_22BE37758();
}

void sub_22C1025DC()
{
  sub_22BE33A88();
  v1 = sub_22BE1B18C();
  v3 = sub_22BE5CE4C(v1, v2);
  sub_22BE19448(v3);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v4);
  sub_22BE1A384(v5, v15);
  v6 = type metadata accessor for ContextProtoRetrievedTool.Definition(0);
  sub_22BE18ED4(v6);
  if (v7)
  {
    sub_22BE33928(v0, &qword_27D9090D0, &unk_22C294B30);
    v8 = sub_22BE5CE4C(&qword_27D911DF0, &qword_22C2B5A48);
    sub_22BE3CF9C(v8);
    sub_22BE29328();
    v9 = sub_22C108598();
    v10 = sub_22BE196B4(&type metadata for TranscriptConversion.Error, v9);
    sub_22BE29564(v10, v11);
  }

  else
  {
    sub_22BE37C20();
    v12 = sub_22BE3C5E4();
    sub_22C1086E4(v12, v13, v14);
  }

  sub_22BE37758();
}

void sub_22C1026C4()
{
  sub_22BE33A88();
  v1 = sub_22BE1B18C();
  v3 = sub_22BE5CE4C(v1, v2);
  sub_22BE19448(v3);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v4);
  sub_22BE1A384(v5, v15);
  v6 = type metadata accessor for TranscriptProtoStatementID(0);
  sub_22BE18ED4(v6);
  if (v7)
  {
    sub_22BE33928(v0, &qword_27D9090F8, &unk_22C2AE4A0);
    v8 = sub_22BE5CE4C(&qword_27D911F78, &qword_22C2B5D00);
    sub_22BE3CF9C(v8);
    sub_22BE29328();
    v9 = sub_22C108598();
    v10 = sub_22BE196B4(&type metadata for TranscriptConversion.Error, v9);
    sub_22BE29564(v10, v11);
  }

  else
  {
    sub_22BE1A788();
    v12 = sub_22BE3C5E4();
    sub_22C1086E4(v12, v13, v14);
  }

  sub_22BE37758();
}

void sub_22C1027AC()
{
  sub_22BE33A88();
  v1 = sub_22BE1B18C();
  v3 = sub_22BE5CE4C(v1, v2);
  sub_22BE19448(v3);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v4);
  sub_22BE1A384(v5, v12);
  DecorationPrePlannerResultPayload = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayload(0);
  sub_22BE18ED4(DecorationPrePlannerResultPayload);
  if (v7)
  {
    sub_22BE33928(v0, &qword_27D90F138, &unk_22C2AE7F0);
    v8 = sub_22BE5CE4C(&qword_27D911F70, &unk_22C2B5CF0);
    sub_22BE3CF9C(v8);
    sub_22BE29328();
    v9 = sub_22C108598();
    v10 = sub_22BE196B4(&type metadata for TranscriptConversion.Error, v9);
    sub_22BE29564(v10, v11);
  }

  else
  {
    sub_22C108890();
  }

  sub_22BE37758();
}

void sub_22C10289C()
{
  sub_22BE33A88();
  v1 = sub_22BE1B18C();
  v3 = sub_22BE5CE4C(v1, v2);
  sub_22BE19448(v3);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v4);
  sub_22BE1A384(v5, v12);
  v6 = type metadata accessor for TranscriptProtoGlobalToolIdentifier(0);
  sub_22BE18ED4(v6);
  if (v7)
  {
    sub_22BE33928(v0, &qword_27D90E670, &unk_22C2CC890);
    v8 = sub_22BE5CE4C(&qword_27D911FB0, &unk_22C2B5D50);
    sub_22BE3CF9C(v8);
    sub_22BE29328();
    v9 = sub_22C108598();
    v10 = sub_22BE196B4(&type metadata for TranscriptConversion.Error, v9);
    sub_22BE29564(v10, v11);
  }

  else
  {
    sub_22C108890();
  }

  sub_22BE37758();
}

void sub_22C10298C()
{
  sub_22BE33A88();
  v1 = sub_22BE1B18C();
  v3 = sub_22BE5CE4C(v1, v2);
  sub_22BE19448(v3);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v4);
  sub_22BE1A384(v5, v12);
  v6 = type metadata accessor for TranscriptProtoSessionCoordinatorErrorEnum(0);
  sub_22BE18ED4(v6);
  if (v7)
  {
    sub_22BE33928(v0, &qword_27D90E800, &qword_22C2AE590);
    v8 = sub_22BE5CE4C(&qword_27D911E08, &qword_22C2B5A78);
    sub_22BE3CF9C(v8);
    sub_22BE29328();
    v9 = sub_22C108598();
    v10 = sub_22BE196B4(&type metadata for TranscriptConversion.Error, v9);
    sub_22BE29564(v10, v11);
  }

  else
  {
    sub_22C108890();
  }

  sub_22BE37758();
}

void sub_22C102A7C()
{
  sub_22BE33A88();
  v1 = sub_22BE1B18C();
  v3 = sub_22BE5CE4C(v1, v2);
  sub_22BE19448(v3);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v4);
  sub_22BE1A384(v5, v12);
  v6 = type metadata accessor for TranscriptProtoSessionErrorEnum(0);
  sub_22BE18ED4(v6);
  if (v7)
  {
    sub_22BE33928(v0, &qword_27D90E7E8, &qword_22C2AE580);
    v8 = sub_22BE5CE4C(&qword_27D911FA0, &qword_22C2B5D38);
    sub_22BE3CF9C(v8);
    sub_22BE29328();
    v9 = sub_22C108598();
    v10 = sub_22BE196B4(&type metadata for TranscriptConversion.Error, v9);
    sub_22BE29564(v10, v11);
  }

  else
  {
    sub_22C108890();
  }

  sub_22BE37758();
}

void sub_22C102B6C()
{
  sub_22BE33A88();
  v1 = sub_22BE1B18C();
  v3 = sub_22BE5CE4C(v1, v2);
  sub_22BE19448(v3);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v4);
  sub_22BE1A384(v5, v14);
  v6 = sub_22C272674();
  sub_22BE18ED4(v6);
  if (v7)
  {
    sub_22BE33928(v0, &qword_27D90C180, &unk_22C296C40);
    v8 = sub_22BE5CE4C(&qword_27D911F90, &qword_22C2B5D18);
    sub_22BE3CF9C(v8);
    sub_22BE29328();
    v9 = sub_22C108598();
    v10 = sub_22BE196B4(&type metadata for TranscriptConversion.Error, v9);
    sub_22BE29564(v10, v11);
  }

  else
  {
    sub_22BE415A0();
    v12 = sub_22C10886C();
    v13(v12);
  }

  sub_22BE37758();
}

void sub_22C102C6C()
{
  sub_22BE33A88();
  v1 = sub_22BE1B18C();
  v3 = sub_22BE5CE4C(v1, v2);
  sub_22BE19448(v3);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v4);
  sub_22BE1A384(v5, v14);
  v6 = sub_22C270454();
  sub_22BE18ED4(v6);
  if (v7)
  {
    sub_22BE33928(v0, &qword_27D90E470, &unk_22C2AE480);
    v8 = sub_22BE5CE4C(&qword_27D911FF0, &qword_22C2B5DC8);
    sub_22BE3CF9C(v8);
    sub_22BE29328();
    v9 = sub_22C108598();
    v10 = sub_22BE196B4(&type metadata for TranscriptConversion.Error, v9);
    sub_22BE29564(v10, v11);
  }

  else
  {
    sub_22BE415A0();
    v12 = sub_22C10886C();
    v13(v12);
  }

  sub_22BE37758();
}

void sub_22C102D6C()
{
  sub_22BE33A88();
  v1 = sub_22BE1B18C();
  v3 = sub_22BE5CE4C(v1, v2);
  sub_22BE19448(v3);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v4);
  sub_22BE1A384(v5, v12);
  v6 = type metadata accessor for TranscriptProtoToolParameterValueEnum(0);
  sub_22BE18ED4(v6);
  if (v7)
  {
    sub_22BE33928(v0, &qword_27D90F038, &qword_22C297100);
    v8 = sub_22BE5CE4C(&qword_27D911FC0, &unk_22C2B5D70);
    sub_22BE3CF9C(v8);
    sub_22BE29328();
    v9 = sub_22C108598();
    v10 = sub_22BE196B4(&type metadata for TranscriptConversion.Error, v9);
    sub_22BE29564(v10, v11);
  }

  else
  {
    sub_22C108890();
  }

  sub_22BE37758();
}

void sub_22C102E5C()
{
  sub_22BE33A88();
  v1 = sub_22BE1B18C();
  v3 = sub_22BE5CE4C(v1, v2);
  sub_22BE19448(v3);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v4);
  sub_22BE1A384(v5, v12);
  v6 = type metadata accessor for TranscriptProtoRequestPrescribedPlanEnum(0);
  sub_22BE18ED4(v6);
  if (v7)
  {
    sub_22BE33928(v0, &qword_27D90E608, &unk_22C2CC920);
    v8 = sub_22BE5CE4C(&qword_27D911F18, &unk_22C2B5C60);
    sub_22BE3CF9C(v8);
    sub_22BE29328();
    v9 = sub_22C108598();
    v10 = sub_22BE196B4(&type metadata for TranscriptConversion.Error, v9);
    sub_22BE29564(v10, v11);
  }

  else
  {
    sub_22C108890();
  }

  sub_22BE37758();
}

void sub_22C102F4C()
{
  sub_22BE33A88();
  v1 = sub_22BE1B18C();
  v3 = sub_22BE5CE4C(v1, v2);
  sub_22BE19448(v3);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v4);
  sub_22BE1A384(v5, v15);
  v6 = type metadata accessor for ContextProtoDynamicEnumerationEntity(0);
  sub_22BE18ED4(v6);
  if (v7)
  {
    sub_22BE33928(v0, &qword_27D9090E8, &qword_22C2B5A90);
    v8 = sub_22BE5CE4C(&qword_27D911E18, &unk_22C2B5A98);
    sub_22BE3CF9C(v8);
    sub_22BE29328();
    v9 = sub_22C108598();
    v10 = sub_22BE196B4(&type metadata for TranscriptConversion.Error, v9);
    sub_22BE29564(v10, v11);
  }

  else
  {
    sub_22C108808();
    v12 = sub_22BE3C5E4();
    sub_22C1086E4(v12, v13, v14);
  }

  sub_22BE37758();
}

void sub_22C103034()
{
  sub_22BE33A88();
  v1 = sub_22BE1B18C();
  v3 = sub_22BE5CE4C(v1, v2);
  sub_22BE19448(v3);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v4);
  sub_22BE1A384(v5, v12);
  v6 = type metadata accessor for TranscriptProtoExecutionPreconditionEvaluatorRequestActionRequestEnum(0);
  sub_22BE18ED4(v6);
  if (v7)
  {
    sub_22BE33928(v0, &qword_27D90F1C0, &qword_22C2AE810);
    v8 = sub_22BE5CE4C(&qword_27D911DE8, &unk_22C2B5A38);
    sub_22BE3CF9C(v8);
    sub_22BE29328();
    v9 = sub_22C108598();
    v10 = sub_22BE196B4(&type metadata for TranscriptConversion.Error, v9);
    sub_22BE29564(v10, v11);
  }

  else
  {
    sub_22C108890();
  }

  sub_22BE37758();
}

void sub_22C103124()
{
  sub_22BE33A88();
  v1 = sub_22BE1B18C();
  v3 = sub_22BE5CE4C(v1, v2);
  sub_22BE19448(v3);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v4);
  sub_22BE1A384(v5, v12);
  v6 = type metadata accessor for TranscriptProtoExecutionPreconditionEvaluatorRequestActionRequest(0);
  sub_22BE18ED4(v6);
  if (v7)
  {
    sub_22BE33928(v0, &qword_27D90F1A8, &qword_22C297140);
    v8 = sub_22BE5CE4C(&qword_27D911F68, &unk_22C2B5CE0);
    sub_22BE3CF9C(v8);
    sub_22BE29328();
    v9 = sub_22C108598();
    v10 = sub_22BE196B4(&type metadata for TranscriptConversion.Error, v9);
    sub_22BE29564(v10, v11);
  }

  else
  {
    sub_22C108890();
  }

  sub_22BE37758();
}

void sub_22C103214()
{
  sub_22BE33A88();
  v1 = sub_22BE1B18C();
  v3 = sub_22BE5CE4C(v1, v2);
  sub_22BE19448(v3);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v4);
  sub_22BE1A384(v5, v12);
  v6 = type metadata accessor for TranscriptProtoIntelligenceFlowError(0);
  sub_22BE18ED4(v6);
  if (v7)
  {
    sub_22BE33928(v0, &qword_27D90EA38, &qword_22C2B5B90);
    v8 = sub_22BE5CE4C(&qword_27D911EB0, &qword_22C2B5B98);
    sub_22BE3CF9C(v8);
    sub_22BE29328();
    v9 = sub_22C108598();
    v10 = sub_22BE196B4(&type metadata for TranscriptConversion.Error, v9);
    sub_22BE29564(v10, v11);
  }

  else
  {
    sub_22C108890();
  }

  sub_22BE37758();
}

void sub_22C103304()
{
  sub_22BE33A88();
  v1 = sub_22BE1B18C();
  v3 = sub_22BE5CE4C(v1, v2);
  sub_22BE19448(v3);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v4);
  sub_22BE1A384(v5, v12);
  v6 = type metadata accessor for TranscriptProtoPlanGenerationErrorEnum(0);
  sub_22BE18ED4(v6);
  if (v7)
  {
    sub_22BE33928(v0, &qword_27D90EA20, &qword_22C2B5BA0);
    v8 = sub_22BE5CE4C(&qword_27D911EB8, &unk_22C2B5BA8);
    sub_22BE3CF9C(v8);
    sub_22BE29328();
    v9 = sub_22C108598();
    v10 = sub_22BE196B4(&type metadata for TranscriptConversion.Error, v9);
    sub_22BE29564(v10, v11);
  }

  else
  {
    sub_22C108890();
  }

  sub_22BE37758();
}

void sub_22C1033F4()
{
  sub_22BE33A88();
  v1 = sub_22BE1B18C();
  v3 = sub_22BE5CE4C(v1, v2);
  sub_22BE19448(v3);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v4);
  sub_22BE1A384(v5, v12);
  v6 = type metadata accessor for TranscriptProtoRecoverableErrorEnum(0);
  sub_22BE18ED4(v6);
  if (v7)
  {
    sub_22BE33928(v0, &qword_27D90EA08, &qword_22C297000);
    v8 = sub_22BE5CE4C(&qword_27D911FD0, &unk_22C2B5D90);
    sub_22BE3CF9C(v8);
    sub_22BE29328();
    v9 = sub_22C108598();
    v10 = sub_22BE196B4(&type metadata for TranscriptConversion.Error, v9);
    sub_22BE29564(v10, v11);
  }

  else
  {
    sub_22C108890();
  }

  sub_22BE37758();
}

void sub_22C1034E4()
{
  sub_22BE33A88();
  v1 = sub_22BE1B18C();
  v3 = sub_22BE5CE4C(v1, v2);
  sub_22BE19448(v3);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v4);
  sub_22BE1A384(v5, v12);
  v6 = type metadata accessor for TranscriptProtoCandidatePromptStatus(0);
  sub_22BE18ED4(v6);
  if (v7)
  {
    sub_22BE33928(v0, &qword_27D909208, &unk_22C2AE560);
    v8 = sub_22BE5CE4C(&qword_27D911EC0, &qword_22C2B5BB8);
    sub_22BE3CF9C(v8);
    sub_22BE29328();
    v9 = sub_22C108598();
    v10 = sub_22BE196B4(&type metadata for TranscriptConversion.Error, v9);
    sub_22BE29564(v10, v11);
  }

  else
  {
    sub_22C108890();
  }

  sub_22BE37758();
}

void sub_22C1035D4()
{
  sub_22BE33A88();
  v1 = sub_22BE1B18C();
  v3 = sub_22BE5CE4C(v1, v2);
  sub_22BE19448(v3);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v4);
  sub_22BE1A384(v5, v12);
  v6 = type metadata accessor for TranscriptProtoPayload(0);
  sub_22BE18ED4(v6);
  if (v7)
  {
    sub_22BE33928(v0, &qword_27D90E438, &unk_22C2AE450);
    v8 = sub_22BE5CE4C(&qword_27D912010, &unk_22C2B5E00);
    sub_22BE3CF9C(v8);
    sub_22BE29328();
    v9 = sub_22C108598();
    v10 = sub_22BE196B4(&type metadata for TranscriptConversion.Error, v9);
    sub_22BE29564(v10, v11);
  }

  else
  {
    sub_22C108890();
  }

  sub_22BE37758();
}

void sub_22C1036C4()
{
  sub_22BE33A88();
  v1 = sub_22BE1B18C();
  v3 = sub_22BE5CE4C(v1, v2);
  sub_22BE19448(v3);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v4);
  sub_22BE1A384(v5, v12);
  v6 = type metadata accessor for TranscriptProtoTimepoint(0);
  sub_22BE18ED4(v6);
  if (v7)
  {
    sub_22BE33928(v0, &qword_27D90E428, &qword_22C296E90);
    v8 = sub_22BE5CE4C(&qword_27D912008, &unk_22C2B5DF0);
    sub_22BE3CF9C(v8);
    sub_22BE29328();
    v9 = sub_22C108598();
    v10 = sub_22BE196B4(&type metadata for TranscriptConversion.Error, v9);
    sub_22BE29564(v10, v11);
  }

  else
  {
    sub_22C108890();
  }

  sub_22BE37758();
}

void sub_22C1037B4()
{
  sub_22BE33A88();
  v1 = sub_22BE1B18C();
  v3 = sub_22BE5CE4C(v1, v2);
  sub_22BE19448(v3);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v4);
  sub_22BE1A384(v5, v12);
  Payload = type metadata accessor for TranscriptProtoQueryPayload(0);
  sub_22BE18ED4(Payload);
  if (v7)
  {
    sub_22BE33928(v0, &qword_27D90EA60, &qword_22C2B5D40);
    v8 = sub_22BE5CE4C(&qword_27D911FA8, &qword_22C2B5D48);
    sub_22BE3CF9C(v8);
    sub_22BE29328();
    v9 = sub_22C108598();
    v10 = sub_22BE196B4(&type metadata for TranscriptConversion.Error, v9);
    sub_22BE29564(v10, v11);
  }

  else
  {
    sub_22C108890();
  }

  sub_22BE37758();
}

void sub_22C1038A4()
{
  sub_22BE33A88();
  v1 = sub_22BE1B18C();
  v3 = sub_22BE5CE4C(v1, v2);
  sub_22BE19448(v3);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v4);
  sub_22BE1A384(v5, v12);
  v6 = type metadata accessor for TranscriptProtoToolParameterValue(0);
  sub_22BE18ED4(v6);
  if (v7)
  {
    sub_22BE33928(v0, &qword_27D90E698, &unk_22C2AE520);
    v8 = sub_22BE5CE4C(&qword_27D911FC8, &unk_22C2B5D80);
    sub_22BE3CF9C(v8);
    sub_22BE29328();
    v9 = sub_22C108598();
    v10 = sub_22BE196B4(&type metadata for TranscriptConversion.Error, v9);
    sub_22BE29564(v10, v11);
  }

  else
  {
    sub_22C108890();
  }

  sub_22BE37758();
}

void sub_22C103994()
{
  sub_22BE33A88();
  v1 = sub_22BE1B18C();
  v3 = sub_22BE5CE4C(v1, v2);
  sub_22BE19448(v3);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v4);
  sub_22BE1A384(v5, v12);
  v6 = type metadata accessor for ContextProtoSpanMatchedEntity(0);
  sub_22BE18ED4(v6);
  if (v7)
  {
    sub_22BE33928(v0, &qword_27D909138, &qword_22C2B5A80);
    v8 = sub_22BE5CE4C(&qword_27D911E10, &qword_22C2B5A88);
    sub_22BE3CF9C(v8);
    sub_22BE29328();
    v9 = sub_22C108598();
    v10 = sub_22BE196B4(&type metadata for TranscriptConversion.Error, v9);
    sub_22BE29564(v10, v11);
  }

  else
  {
    sub_22C108890();
  }

  sub_22BE37758();
}

void sub_22C103A84()
{
  sub_22BE33A88();
  v1 = sub_22BE1B18C();
  v3 = sub_22BE5CE4C(v1, v2);
  sub_22BE19448(v3);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v4);
  sub_22BE1A384(v5, v15);
  v6 = type metadata accessor for ContextProtoRetrievedContext(0);
  sub_22BE18ED4(v6);
  if (v7)
  {
    sub_22BE33928(v0, &qword_27D9091A8, &qword_22C27FDA0);
    v8 = sub_22BE5CE4C(&qword_27D911E20, &unk_22C2B5AA8);
    sub_22BE3CF9C(v8);
    sub_22BE29328();
    v9 = sub_22C108598();
    v10 = sub_22BE196B4(&type metadata for TranscriptConversion.Error, v9);
    sub_22BE29564(v10, v11);
  }

  else
  {
    sub_22C1087B0();
    v12 = sub_22BE3C5E4();
    sub_22C1086E4(v12, v13, v14);
  }

  sub_22BE37758();
}

void sub_22C103B6C()
{
  sub_22BE33A88();
  v1 = sub_22BE1B18C();
  v3 = sub_22BE5CE4C(v1, v2);
  sub_22BE19448(v3);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v4);
  sub_22BE1A384(v5, v12);
  v6 = type metadata accessor for TranscriptProtoStatementOutcome(0);
  sub_22BE18ED4(v6);
  if (v7)
  {
    sub_22BE33928(v0, &qword_27D90CA68, &unk_22C296C50);
    v8 = sub_22BE5CE4C(&qword_27D912088, &qword_22C2B5EE8);
    sub_22BE3CF9C(v8);
    sub_22BE29328();
    v9 = sub_22C108598();
    v10 = sub_22BE196B4(&type metadata for TranscriptConversion.Error, v9);
    sub_22BE29564(v10, v11);
  }

  else
  {
    sub_22C108890();
  }

  sub_22BE37758();
}

void sub_22C103C5C()
{
  sub_22BE33A88();
  v1 = sub_22BE1B18C();
  v3 = sub_22BE5CE4C(v1, v2);
  sub_22BE19448(v3);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v4);
  sub_22BE1A384(v5, v12);
  v6 = type metadata accessor for TranscriptProtoRequestContent(0);
  sub_22BE18ED4(v6);
  if (v7)
  {
    sub_22BE33928(v0, &qword_27D90E568, &unk_22C2CC8B0);
    v8 = sub_22BE5CE4C(&qword_27D911FD8, &unk_22C2B5DA0);
    sub_22BE3CF9C(v8);
    sub_22BE29328();
    v9 = sub_22C108598();
    v10 = sub_22BE196B4(&type metadata for TranscriptConversion.Error, v9);
    sub_22BE29564(v10, v11);
  }

  else
  {
    sub_22C108890();
  }

  sub_22BE37758();
}

void sub_22C103D4C()
{
  sub_22BE33A88();
  v1 = sub_22BE1B18C();
  v3 = sub_22BE5CE4C(v1, v2);
  sub_22BE19448(v3);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v4);
  sub_22BE1A384(v5, v12);
  v6 = type metadata accessor for TranscriptProtoPrimitiveAction(0);
  sub_22BE18ED4(v6);
  if (v7)
  {
    sub_22BE33928(v0, &qword_27D90F248, &unk_22C2CC860);
    v8 = sub_22BE5CE4C(&qword_27D912000, &unk_22C2B5DE0);
    sub_22BE3CF9C(v8);
    sub_22BE29328();
    v9 = sub_22C108598();
    v10 = sub_22BE196B4(&type metadata for TranscriptConversion.Error, v9);
    sub_22BE29564(v10, v11);
  }

  else
  {
    sub_22C108890();
  }

  sub_22BE37758();
}

void sub_22C103E3C()
{
  sub_22BE33A88();
  v1 = sub_22BE1B18C();
  v3 = sub_22BE5CE4C(v1, v2);
  sub_22BE19448(v3);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v4);
  sub_22BE1A384(v5, v12);
  v6 = type metadata accessor for TranscriptProtoAgentRequest(0);
  sub_22BE18ED4(v6);
  if (v7)
  {
    sub_22BE33928(v0, &qword_27D90F220, &unk_22C2AE830);
    v8 = sub_22BE5CE4C(&qword_27D911DE0, &unk_22C2B5A28);
    sub_22BE3CF9C(v8);
    sub_22BE29328();
    v9 = sub_22C108598();
    v10 = sub_22BE196B4(&type metadata for TranscriptConversion.Error, v9);
    sub_22BE29564(v10, v11);
  }

  else
  {
    sub_22C108890();
  }

  sub_22BE37758();
}

void sub_22C103F2C()
{
  sub_22BE33A88();
  v1 = sub_22BE1B18C();
  v3 = sub_22BE5CE4C(v1, v2);
  sub_22BE19448(v3);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v4);
  sub_22BE1A384(v5, v12);
  v6 = type metadata accessor for TranscriptProtoExpression(0);
  sub_22BE18ED4(v6);
  if (v7)
  {
    sub_22BE33928(v0, &qword_27D90F0A8, &qword_22C2B5B70);
    v8 = sub_22BE5CE4C(&qword_27D911EA8, &qword_22C2B5B78);
    sub_22BE3CF9C(v8);
    sub_22BE29328();
    v9 = sub_22C108598();
    v10 = sub_22BE196B4(&type metadata for TranscriptConversion.Error, v9);
    sub_22BE29564(v10, v11);
  }

  else
  {
    sub_22C108890();
  }

  sub_22BE37758();
}

void sub_22C10401C()
{
  sub_22BE33A88();
  v1 = sub_22BE1B18C();
  v3 = sub_22BE5CE4C(v1, v2);
  sub_22BE19448(v3);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v4);
  sub_22BE1A384(v5, v12);
  v6 = type metadata accessor for TranscriptProtoUserTurn(0);
  sub_22BE18ED4(v6);
  if (v7)
  {
    sub_22BE33928(v0, &qword_27D90E4D8, &qword_22C2B5DB0);
    v8 = sub_22BE5CE4C(&qword_27D911FE0, &qword_22C2B5DB8);
    sub_22BE3CF9C(v8);
    sub_22BE29328();
    v9 = sub_22C108598();
    v10 = sub_22BE196B4(&type metadata for TranscriptConversion.Error, v9);
    sub_22BE29564(v10, v11);
  }

  else
  {
    sub_22C108890();
  }

  sub_22BE37758();
}

void sub_22C10410C()
{
  sub_22BE33A88();
  v1 = sub_22BE1B18C();
  v3 = sub_22BE5CE4C(v1, v2);
  sub_22BE19448(v3);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v4);
  sub_22BE1A384(v5, v12);
  v6 = type metadata accessor for TranscriptProtoStatementResultPayload(0);
  sub_22BE18ED4(v6);
  if (v7)
  {
    sub_22BE33928(v0, &qword_27D90E730, &qword_22C2B5D20);
    v8 = sub_22BE5CE4C(&qword_27D911F98, &unk_22C2B5D28);
    sub_22BE3CF9C(v8);
    sub_22BE29328();
    v9 = sub_22C108598();
    v10 = sub_22BE196B4(&type metadata for TranscriptConversion.Error, v9);
    sub_22BE29564(v10, v11);
  }

  else
  {
    sub_22C108890();
  }

  sub_22BE37758();
}

void sub_22C1041FC()
{
  sub_22BE33A88();
  v1 = sub_22BE1B18C();
  v3 = sub_22BE5CE4C(v1, v2);
  sub_22BE19448(v3);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v4);
  sub_22BE1A384(v5, v12);
  v6 = type metadata accessor for TranscriptProtoLocaleSettings(0);
  sub_22BE18ED4(v6);
  if (v7)
  {
    sub_22BE33928(v0, &qword_27D90E4B0, &unk_22C2CC8A0);
    v8 = sub_22BE5CE4C(&qword_27D911FE8, &qword_22C2B5DC0);
    sub_22BE3CF9C(v8);
    sub_22BE29328();
    v9 = sub_22C108598();
    v10 = sub_22BE196B4(&type metadata for TranscriptConversion.Error, v9);
    sub_22BE29564(v10, v11);
  }

  else
  {
    sub_22C108890();
  }

  sub_22BE37758();
}

void sub_22C1042EC()
{
  sub_22BE33A88();
  v1 = sub_22BE1B18C();
  v3 = sub_22BE5CE4C(v1, v2);
  sub_22BE19448(v3);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v4);
  sub_22BE1A384(v5, v12);
  PayloadEnum = type metadata accessor for TranscriptProtoQueryPayloadEnum(0);
  sub_22BE18ED4(PayloadEnum);
  if (v7)
  {
    sub_22BE33928(v0, &qword_27D90EA88, &unk_22C2AE690);
    v8 = sub_22BE5CE4C(&qword_27D911F08, &qword_22C2B5C38);
    sub_22BE3CF9C(v8);
    sub_22BE29328();
    v9 = sub_22C108598();
    v10 = sub_22BE196B4(&type metadata for TranscriptConversion.Error, v9);
    sub_22BE29564(v10, v11);
  }

  else
  {
    sub_22C108890();
  }

  sub_22BE37758();
}

void sub_22C1043DC()
{
  sub_22BE33A88();
  v1 = sub_22BE1B18C();
  v3 = sub_22BE5CE4C(v1, v2);
  sub_22BE19448(v3);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v4);
  sub_22BE1A384(v5, v12);
  v6 = type metadata accessor for TranscriptProtoShimParameterEnum(0);
  sub_22BE18ED4(v6);
  if (v7)
  {
    sub_22BE33928(v0, &qword_27D909218, &unk_22C2CC930);
    v8 = sub_22BE5CE4C(&qword_27D911F10, &unk_22C2B5C50);
    sub_22BE3CF9C(v8);
    sub_22BE29328();
    v9 = sub_22C108598();
    v10 = sub_22BE196B4(&type metadata for TranscriptConversion.Error, v9);
    sub_22BE29564(v10, v11);
  }

  else
  {
    sub_22C108890();
  }

  sub_22BE37758();
}

void sub_22C1044CC()
{
  sub_22BE33A88();
  v1 = sub_22BE1B18C();
  v3 = sub_22BE5CE4C(v1, v2);
  sub_22BE19448(v3);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v4);
  sub_22BE1A384(v5, v12);
  v6 = type metadata accessor for TranscriptProtoSystemPromptResolutionUserAction(0);
  sub_22BE18ED4(v6);
  if (v7)
  {
    sub_22BE33928(v0, &qword_27D90ECC0, &qword_22C297098);
    v8 = sub_22BE5CE4C(&qword_27D911F28, &unk_22C2B5C80);
    sub_22BE3CF9C(v8);
    sub_22BE29328();
    v9 = sub_22C108598();
    v10 = sub_22BE196B4(&type metadata for TranscriptConversion.Error, v9);
    sub_22BE29564(v10, v11);
  }

  else
  {
    sub_22C108890();
  }

  sub_22BE37758();
}

void sub_22C1045BC()
{
  sub_22BE33A88();
  v1 = sub_22BE1B18C();
  v3 = sub_22BE5CE4C(v1, v2);
  sub_22BE19448(v3);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v4);
  sub_22BE1A384(v5, v12);
  v6 = type metadata accessor for TranscriptProtoSystemPromptResolutionInput(0);
  sub_22BE18ED4(v6);
  if (v7)
  {
    sub_22BE33928(v0, &qword_27D90ECB0, &unk_22C2AE730);
    v8 = sub_22BE5CE4C(&qword_27D911F20, &unk_22C2B5C70);
    sub_22BE3CF9C(v8);
    sub_22BE29328();
    v9 = sub_22C108598();
    v10 = sub_22BE196B4(&type metadata for TranscriptConversion.Error, v9);
    sub_22BE29564(v10, v11);
  }

  else
  {
    sub_22C108890();
  }

  sub_22BE37758();
}

void sub_22C1046AC()
{
  sub_22BE33A88();
  v1 = sub_22BE1B18C();
  v3 = sub_22BE5CE4C(v1, v2);
  sub_22BE19448(v3);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v4);
  sub_22BE1A384(v5, v12);
  v6 = type metadata accessor for TranscriptProtoAgentRequestEnum(0);
  sub_22BE18ED4(v6);
  if (v7)
  {
    sub_22BE33928(v0, &qword_27D90F208, &qword_22C2AE820);
    v8 = sub_22BE5CE4C(&qword_27D911DD0, &unk_22C2B5A18);
    sub_22BE3CF9C(v8);
    sub_22BE29328();
    v9 = sub_22C108598();
    v10 = sub_22BE196B4(&type metadata for TranscriptConversion.Error, v9);
    sub_22BE29564(v10, v11);
  }

  else
  {
    sub_22C108890();
  }

  sub_22BE37758();
}

void sub_22C10479C()
{
  sub_22BE33A88();
  v1 = sub_22BE1B18C();
  v3 = sub_22BE5CE4C(v1, v2);
  sub_22BE19448(v3);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v4);
  sub_22BE1A384(v5, v12);
  v6 = type metadata accessor for ContextProtoCGRect(0);
  sub_22BE18ED4(v6);
  if (v7)
  {
    sub_22BE33928(v0, &qword_27D90BF90, &unk_22C294AD0);
    v8 = sub_22BE5CE4C(&qword_27D912078, &unk_22C2B5EC0);
    sub_22BE3CF9C(v8);
    sub_22BE29328();
    v9 = sub_22C108598();
    v10 = sub_22BE196B4(&type metadata for TranscriptConversion.Error, v9);
    sub_22BE29564(v10, v11);
  }

  else
  {
    sub_22C108890();
  }

  sub_22BE37758();
}

void sub_22C10488C()
{
  sub_22BE33A88();
  v1 = sub_22BE1B18C();
  v3 = sub_22BE5CE4C(v1, v2);
  sub_22BE19448(v3);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v4);
  sub_22BE1A384(v5, v12);
  v6 = type metadata accessor for ContextProtoStructuredContextOnScreenUITextUIMetadata(0);
  sub_22BE18ED4(v6);
  if (v7)
  {
    sub_22BE33928(v0, &qword_27D90C078, &unk_22C294B00);
    v8 = sub_22BE5CE4C(&qword_27D912070, &unk_22C2B5EB0);
    sub_22BE3CF9C(v8);
    sub_22BE29328();
    v9 = sub_22C108598();
    v10 = sub_22BE196B4(&type metadata for TranscriptConversion.Error, v9);
    sub_22BE29564(v10, v11);
  }

  else
  {
    sub_22C108890();
  }

  sub_22BE37758();
}

void sub_22C10497C()
{
  sub_22BE33A88();
  v1 = sub_22BE1B18C();
  v3 = sub_22BE5CE4C(v1, v2);
  sub_22BE19448(v3);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v4);
  sub_22BE1A384(v5, v12);
  v6 = type metadata accessor for ContextProtoRetrievedTool.ContextProtoDefinitionEnum(0);
  sub_22BE18ED4(v6);
  if (v7)
  {
    sub_22BE33928(v0, &qword_27D9090C0, &qword_22C27FCC8);
    v8 = sub_22BE5CE4C(&qword_27D912040, &qword_22C2B5E60);
    sub_22BE3CF9C(v8);
    sub_22BE29328();
    v9 = sub_22C108598();
    v10 = sub_22BE196B4(&type metadata for TranscriptConversion.Error, v9);
    sub_22BE29564(v10, v11);
  }

  else
  {
    sub_22C108890();
  }

  sub_22BE37758();
}

void sub_22C104A6C()
{
  sub_22BE33A88();
  v1 = sub_22BE1B18C();
  v3 = sub_22BE5CE4C(v1, v2);
  sub_22BE19448(v3);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v4);
  sub_22BE1A384(v5, v12);
  matched = type metadata accessor for ContextProtoMatchProperties(0);
  sub_22BE18ED4(matched);
  if (v7)
  {
    sub_22BE33928(v0, &qword_27D909118, &unk_22C294B60);
    v8 = sub_22BE5CE4C(&qword_27D912028, &unk_22C2B5E30);
    sub_22BE3CF9C(v8);
    sub_22BE29328();
    v9 = sub_22C108598();
    v10 = sub_22BE196B4(&type metadata for TranscriptConversion.Error, v9);
    sub_22BE29564(v10, v11);
  }

  else
  {
    sub_22C108890();
  }

  sub_22BE37758();
}

void sub_22C104B5C()
{
  sub_22BE33A88();
  v1 = sub_22BE1B18C();
  v3 = sub_22BE5CE4C(v1, v2);
  sub_22BE19448(v3);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v4);
  sub_22BE1A384(v5, v12);
  v6 = type metadata accessor for TranscriptProtoStatementOutcomeEnum(0);
  sub_22BE18ED4(v6);
  if (v7)
  {
    sub_22BE33928(v0, &qword_27D90E980, &qword_22C2CC850);
    v8 = sub_22BE5CE4C(&qword_27D912080, &qword_22C2B5EE0);
    sub_22BE3CF9C(v8);
    sub_22BE29328();
    v9 = sub_22C108598();
    v10 = sub_22BE196B4(&type metadata for TranscriptConversion.Error, v9);
    sub_22BE29564(v10, v11);
  }

  else
  {
    sub_22C108890();
  }

  sub_22BE37758();
}

void sub_22C104C4C()
{
  sub_22BE33A88();
  v1 = sub_22BE1B18C();
  v3 = sub_22BE5CE4C(v1, v2);
  sub_22BE19448(v3);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v4);
  sub_22BE1A384(v5, v12);
  v6 = type metadata accessor for TranscriptProtoVisualOutputOptions(0);
  sub_22BE18ED4(v6);
  if (v7)
  {
    sub_22BE33928(v0, &qword_27D90EB00, &unk_22C2AE6B0);
    v8 = sub_22BE5CE4C(&qword_27D911F00, &qword_22C2B5C28);
    sub_22BE3CF9C(v8);
    sub_22BE29328();
    v9 = sub_22C108598();
    v10 = sub_22BE196B4(&type metadata for TranscriptConversion.Error, v9);
    sub_22BE29564(v10, v11);
  }

  else
  {
    sub_22C108890();
  }

  sub_22BE37758();
}

void sub_22C104D3C()
{
  sub_22BE33A88();
  v1 = sub_22BE1B18C();
  v3 = sub_22BE5CE4C(v1, v2);
  sub_22BE19448(v3);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v4);
  sub_22BE1A384(v5, v12);
  v6 = type metadata accessor for TranscriptProtoVisualOutputType(0);
  sub_22BE18ED4(v6);
  if (v7)
  {
    sub_22BE33928(v0, &qword_27D9091F8, &qword_22C2AE6C0);
    v8 = sub_22BE5CE4C(&qword_27D911E38, &qword_22C2B5AD0);
    sub_22BE3CF9C(v8);
    sub_22BE29328();
    v9 = sub_22C108598();
    v10 = sub_22BE196B4(&type metadata for TranscriptConversion.Error, v9);
    sub_22BE29564(v10, v11);
  }

  else
  {
    sub_22C108890();
  }

  sub_22BE37758();
}

void sub_22C104E2C()
{
  sub_22BE33A88();
  v1 = sub_22BE1B18C();
  v3 = sub_22BE5CE4C(v1, v2);
  sub_22BE19448(v3);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v4);
  sub_22BE1A384(v5, v12);
  v6 = type metadata accessor for TranscriptProtoActionFailureFailure(0);
  sub_22BE18ED4(v6);
  if (v7)
  {
    sub_22BE33928(v0, &qword_27D90E8B8, &qword_22C2B5B50);
    v8 = sub_22BE5CE4C(&qword_27D911E98, &qword_22C2B5B58);
    sub_22BE3CF9C(v8);
    sub_22BE29328();
    v9 = sub_22C108598();
    v10 = sub_22BE196B4(&type metadata for TranscriptConversion.Error, v9);
    sub_22BE29564(v10, v11);
  }

  else
  {
    sub_22C108890();
  }

  sub_22BE37758();
}

void sub_22C105684(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_22BE19130();
  sub_22C108830(v13);
  sub_22C272594();
  sub_22BE179D8();
  v43 = v14;
  MEMORY[0x28223BE20](v14);
  sub_22BE1955C();
  v15 = sub_22BE2590C();
  v17 = sub_22BE5CE4C(v15, v16);
  sub_22BE19448(v17);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v18);
  sub_22BE2C64C();
  v19 = sub_22C272874();
  sub_22BE179D8();
  MEMORY[0x28223BE20](v20);
  sub_22BE25544();
  MEMORY[0x28223BE20](v21);
  sub_22C108934();
  sub_22BE1AB5C(v12, 1, v19);
  if (v22)
  {
    v23 = &qword_27D907400;
    sub_22BE40960();
    sub_22BE33928(v24, v25, v26);
    sub_22BE40960();
    sub_22BE33928(v27, v28, v29);
    sub_22BE3973C();
LABEL_7:
    v40 = sub_22BE46544();
    sub_22BE19DC4(v40, v41, v42, v23);
    goto LABEL_8;
  }

  v30 = sub_22BE42730();
  v31(v30);
  v32 = sub_22BE3853C();
  v33(v32);
  sub_22C272854();
  if (!a10)
  {
    sub_22BE33928(v10, &qword_27D907400, &unk_22C274F90);
    v36 = sub_22BE3E46C();
    (qword_27D907400)(v36);
    v37 = sub_22BE180C8();
    (qword_27D907400)(v37);
    v23 = v43;
    v38 = sub_22C1088C8();
    v39(v38, v11, v43);
    goto LABEL_7;
  }

  sub_22BE33928(v10, &qword_27D907400, &unk_22C274F90);
  v34 = sub_22BE3E46C();
  (qword_27D907400)(v34);
  v35 = sub_22BE180C8();
  (qword_27D907400)(v35);
LABEL_8:
  sub_22BE35D48();
  sub_22BE18478();
}

void sub_22C1058C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_22BE19130();
  sub_22C108830(v13);
  sub_22C272674();
  sub_22BE179D8();
  v43 = v14;
  MEMORY[0x28223BE20](v14);
  sub_22BE1955C();
  v15 = sub_22BE2590C();
  v17 = sub_22BE5CE4C(v15, v16);
  sub_22BE19448(v17);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v18);
  sub_22BE2C64C();
  v19 = sub_22C272224();
  sub_22BE179D8();
  MEMORY[0x28223BE20](v20);
  sub_22BE25544();
  MEMORY[0x28223BE20](v21);
  sub_22C108934();
  sub_22BE1AB5C(v12, 1, v19);
  if (v22)
  {
    v23 = &qword_27D90B2D8;
    sub_22BE40960();
    sub_22BE33928(v24, v25, v26);
    sub_22BE40960();
    sub_22BE33928(v27, v28, v29);
    sub_22BE3973C();
LABEL_7:
    v40 = sub_22BE46544();
    sub_22BE19DC4(v40, v41, v42, v23);
    goto LABEL_8;
  }

  v30 = sub_22BE42730();
  v31(v30);
  v32 = sub_22BE3853C();
  v33(v32);
  sub_22C2721F4();
  if (!a10)
  {
    sub_22BE33928(v10, &qword_27D90B2D8, &qword_22C2B5080);
    v36 = sub_22BE3E46C();
    (qword_27D90B2D8)(v36);
    v37 = sub_22BE180C8();
    (qword_27D90B2D8)(v37);
    v23 = v43;
    v38 = sub_22C1088C8();
    v39(v38, v11, v43);
    goto LABEL_7;
  }

  sub_22BE33928(v10, &qword_27D90B2D8, &qword_22C2B5080);
  v34 = sub_22BE3E46C();
  (qword_27D90B2D8)(v34);
  v35 = sub_22BE180C8();
  (qword_27D90B2D8)(v35);
LABEL_8:
  sub_22BE35D48();
  sub_22BE18478();
}

void sub_22C105B04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_22BE19130();
  sub_22C108830(v13);
  sub_22C2725A4();
  sub_22BE179D8();
  v43 = v14;
  MEMORY[0x28223BE20](v14);
  sub_22BE1955C();
  v15 = sub_22BE2590C();
  v17 = sub_22BE5CE4C(v15, v16);
  sub_22BE19448(v17);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v18);
  sub_22BE2C64C();
  v19 = sub_22C2728A4();
  sub_22BE179D8();
  MEMORY[0x28223BE20](v20);
  sub_22BE25544();
  MEMORY[0x28223BE20](v21);
  sub_22C108934();
  sub_22BE1AB5C(v12, 1, v19);
  if (v22)
  {
    v23 = &qword_27D9092E8;
    sub_22BE40960();
    sub_22BE33928(v24, v25, v26);
    sub_22BE40960();
    sub_22BE33928(v27, v28, v29);
    sub_22BE3973C();
LABEL_7:
    v40 = sub_22BE46544();
    sub_22BE19DC4(v40, v41, v42, v23);
    goto LABEL_8;
  }

  v30 = sub_22BE42730();
  v31(v30);
  v32 = sub_22BE3853C();
  v33(v32);
  sub_22C272884();
  if (!a10)
  {
    sub_22BE33928(v10, &qword_27D9092E8, &qword_22C288A90);
    v36 = sub_22BE3E46C();
    (qword_27D9092E8)(v36);
    v37 = sub_22BE180C8();
    (qword_27D9092E8)(v37);
    v23 = v43;
    v38 = sub_22C1088C8();
    v39(v38, v11, v43);
    goto LABEL_7;
  }

  sub_22BE33928(v10, &qword_27D9092E8, &qword_22C288A90);
  v34 = sub_22BE3E46C();
  (qword_27D9092E8)(v34);
  v35 = sub_22BE180C8();
  (qword_27D9092E8)(v35);
LABEL_8:
  sub_22BE35D48();
  sub_22BE18478();
}

uint64_t sub_22C105D44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_22BE5CE4C(&qword_27D911C98, &qword_22C2B5090);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v18 - v5;
  v7 = sub_22C272CD4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v18 - v12;
  sub_22BE2B984(a1, v6, &qword_27D911C98, &qword_22C2B5090);
  if (sub_22BE1AEA8(v6, 1, v7) == 1)
  {
    sub_22BE33928(a1, &qword_27D911C98, &qword_22C2B5090);
    sub_22BE33928(v6, &qword_27D911C98, &qword_22C2B5090);
    v14 = 1;
  }

  else
  {
    (*(v8 + 32))(v13, v6, v7);
    (*(v8 + 16))(v10, v13, v7);
    sub_22C272CB4();
    sub_22BE33928(a1, &qword_27D911C98, &qword_22C2B5090);
    v15 = *(v8 + 8);
    v15(v10, v7);
    v15(v13, v7);
    v14 = 0;
  }

  v16 = sub_22C272644();
  return sub_22BE19DC4(a2, v14, 1, v16);
}

void sub_22C105F94()
{
  sub_22BE19130();
  v3 = sub_22BE3C3E4(v2);
  DecorationToolRetrievalResponse = type metadata accessor for ContextProtoQueryDecorationToolRetrievalResponse(v3);
  sub_22BE18000();
  MEMORY[0x28223BE20](v4);
  sub_22BE19338();
  v5 = sub_22BE1A8C4();
  v7 = sub_22BE5CE4C(v5, v6);
  sub_22BE19448(v7);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v8);
  sub_22BE24FD8();
  sub_22C271A34();
  sub_22BE179D8();
  MEMORY[0x28223BE20](v9);
  sub_22BE186D4();
  MEMORY[0x28223BE20](v10);
  v11 = sub_22BE23748();
  sub_22BE3F3C8(v11);
  sub_22BE26894();
  if (v12)
  {
    v13 = sub_22C108788();
    sub_22BE33928(v13, v14, v15);
    sub_22BE40960();
    sub_22BE33928(v16, v17, v18);
    sub_22C108820();
LABEL_7:
    v27 = sub_22BE46544();
    sub_22BE19DC4(v27, v28, v29, DecorationToolRetrievalResponse);
    goto LABEL_8;
  }

  v19 = sub_22BE3D4EC();
  v20(v19);
  v21 = sub_22BE1ACD4();
  v22(v21);
  sub_22C1087E0();
  ContextProtoQueryDecorationToolRetrievalResponse.init(handwritten:)();
  if (!v0)
  {
    sub_22BE33928(v1, &qword_27D912018, &unk_22C2B7810);
    v25 = sub_22BE41624();
    v26(v25);
    sub_22BE3CE24();
    goto LABEL_7;
  }

  sub_22BE33928(v1, &qword_27D912018, &unk_22C2B7810);
  v23 = sub_22BE41624();
  v24(v23);
LABEL_8:
  sub_22BEE94B0();
  sub_22BE18478();
}

void sub_22C106164()
{
  sub_22BE19130();
  v3 = sub_22BE3C3E4(v2);
  v30 = type metadata accessor for TranscriptProtoResponseOutput(v3);
  sub_22BE18000();
  MEMORY[0x28223BE20](v4);
  sub_22BE19338();
  v5 = sub_22BE1A8C4();
  v7 = sub_22BE5CE4C(v5, v6);
  sub_22BE19448(v7);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v8);
  sub_22BE24FD8();
  sub_22C26F524();
  sub_22BE179D8();
  MEMORY[0x28223BE20](v9);
  sub_22BE186D4();
  MEMORY[0x28223BE20](v10);
  v11 = sub_22BE23748();
  sub_22BE3F3C8(v11);
  sub_22BE26894();
  if (v12)
  {
    v13 = sub_22C108788();
    sub_22BE33928(v13, v14, v15);
    sub_22BE40960();
    sub_22BE33928(v16, v17, v18);
    sub_22C108820();
LABEL_7:
    v27 = sub_22BE46544();
    sub_22BE19DC4(v27, v28, v29, v30);
    goto LABEL_8;
  }

  v19 = sub_22BE3D4EC();
  v20(v19);
  v21 = sub_22BE1ACD4();
  v22(v21);
  sub_22C1087E0();
  TranscriptProtoResponseOutput.init(handwritten:)();
  if (!v0)
  {
    sub_22BE33928(v1, &qword_27D911F40, &qword_22C2B5CA8);
    v25 = sub_22BE41624();
    v26(v25);
    sub_22BE3CE24();
    goto LABEL_7;
  }

  sub_22BE33928(v1, &qword_27D911F40, &qword_22C2B5CA8);
  v23 = sub_22BE41624();
  v24(v23);
LABEL_8:
  sub_22BEE94B0();
  sub_22BE18478();
}

void sub_22C106334()
{
  sub_22BE19130();
  sub_22C108B60();
  v2 = sub_22BE3E79C();
  v4 = sub_22BE5CE4C(v2, v3);
  sub_22BE19448(v4);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v5);
  sub_22BE1AB08();
  sub_22C26F7C4();
  sub_22BE179D8();
  MEMORY[0x28223BE20](v6);
  sub_22BE1958C();
  MEMORY[0x28223BE20](v7);
  sub_22BE2EDB8();
  sub_22BE3E844();
  sub_22BE1972C(v1);
  if (v8)
  {
    v9 = sub_22BE2590C();
    sub_22BE33928(v9, v10, &unk_22C27FCA0);
    v11 = sub_22BE26154();
    sub_22BE33928(v11, v12, v13);
  }

  else
  {
    v14 = sub_22BE28CD8();
    v15(v14);
    v16 = sub_22BE42004();
    v17(v16);
    sub_22C108D60();
    TranscriptProtoPromptSelection.init(handwritten:)();
    sub_22BE33928(v0, &qword_27D909088, &unk_22C27FCA0);
    v18 = sub_22BE33560();
    v19(v18);
  }

  v20 = type metadata accessor for TranscriptProtoPromptSelection(0);
  sub_22BE3C074(v20);
  sub_22BE3C298();
  sub_22BE18478();
}

void sub_22C1064B8()
{
  sub_22BE19130();
  v2 = v1;
  v4 = v3;
  v5 = sub_22BE41FB4();
  v7 = sub_22BE5CE4C(v5, v6);
  sub_22BE19448(v7);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v8);
  sub_22BE1A8B4();
  v9 = sub_22C26F304();
  sub_22BE179D8();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  sub_22BE25544();
  MEMORY[0x28223BE20](v13);
  sub_22BE2EDB8();
  v50 = v2;
  v14 = sub_22BE36658();
  sub_22BE2B984(v14, v15, &qword_27D911E80, &unk_22C2B5B30);
  v16 = sub_22BE406A0();
  sub_22BE1AB5C(v16, v17, v9);
  if (v18)
  {
    sub_22BE354D0();
    sub_22BE33928(v19, v20, v21);
    sub_22BE354D0();
    sub_22BE33928(v22, v23, v24);
    type metadata accessor for TranscriptProtoResponseDialog(0);
    v41 = sub_22BE2BA98();
  }

  else
  {
    v25 = sub_22BE1AEE4();
    v26(v25);
    v27 = sub_22C108C94();
    v28(v27);
    v29 = sub_22C26F2E4();
    v48 = v30;
    v49 = v29;
    v31 = sub_22C26F2F4();
    v46 = v32;
    v47 = v31;
    v33 = sub_22C26F2B4();
    v44 = v34;
    v45 = v33;
    v35 = sub_22C26F2C4();
    v37 = v36;
    v38 = type metadata accessor for TranscriptProtoResponseDialog(0);
    _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
    v39 = *(v11 + 8);
    v39(v0, v9);
    *v4 = v49;
    v4[1] = v48;
    v4[2] = v47;
    v4[3] = v46;
    v4[4] = v45;
    v4[5] = v44;
    v4[6] = v35;
    v4[7] = v37;
    sub_22BE33928(v50, &qword_27D911E80, &unk_22C2B5B30);
    v40 = sub_22BE18240();
    (v39)(v40);
    v41 = sub_22BE3661C();
    v43 = v38;
  }

  sub_22BE19DC4(v41, v42, 1, v43);
  sub_22BE3C298();
  sub_22BE18478();
}

void sub_22C1068A8()
{
  sub_22BE19130();
  v2 = v1;
  v25 = v3;
  v4 = sub_22BE5CE4C(&qword_27D911E70, &qword_22C2B5B20);
  sub_22BE19448(v4);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v5);
  sub_22BE1A8B4();
  sub_22C26F7D4();
  sub_22BE179D8();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  sub_22BE17D10();
  MEMORY[0x28223BE20](v9);
  sub_22BE1AF10();
  MEMORY[0x28223BE20](v10);
  sub_22BE2EDB8();
  sub_22BE2B984(v2, v0, &qword_27D911E70, &qword_22C2B5B20);
  sub_22BE1972C(v0);
  if (v21)
  {
    v11 = sub_22BE1AB74();
    sub_22BE33928(v11, v12, &qword_22C2B5B20);
    sub_22BE33928(v0, &qword_27D911E70, &qword_22C2B5B20);
    v13 = 2;
  }

  else
  {
    v14 = sub_22BE1AEE4();
    v15(v14);
    v16 = *(v7 + 16);
    v17 = sub_22BE1B18C();
    (v16)(v17);
    sub_22BE25300();
    v16();
    v18 = sub_22BF6AC14();
    v20 = v19(v18);
    v21 = v20 == *MEMORY[0x277D1CB68] || v20 == *MEMORY[0x277D1CB60];
    if (!v21)
    {
      sub_22C274004();
      __break(1u);
      return;
    }

    v13 = v20 != *MEMORY[0x277D1CB68];
    sub_22BE33928(v2, &qword_27D911E70, &qword_22C2B5B20);
    v22 = *(v7 + 8);
    v23 = sub_22BE1AB1C();
    v22(v23);
    v24 = sub_22BE33560();
    v22(v24);
  }

  *v25 = v13;
  sub_22BE3C298();
  sub_22BE18478();
}

void sub_22C106AEC()
{
  sub_22BE19130();
  v3 = sub_22BE3C3E4(v2);
  v30 = type metadata accessor for TranscriptProtoUIType(v3);
  sub_22BE18000();
  MEMORY[0x28223BE20](v4);
  sub_22BE19338();
  v5 = sub_22BE1A8C4();
  v7 = sub_22BE5CE4C(v5, v6);
  sub_22BE19448(v7);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v8);
  sub_22BE24FD8();
  sub_22C26F674();
  sub_22BE179D8();
  MEMORY[0x28223BE20](v9);
  sub_22BE186D4();
  MEMORY[0x28223BE20](v10);
  v11 = sub_22BE23748();
  sub_22BE3F3C8(v11);
  sub_22BE26894();
  if (v12)
  {
    v13 = sub_22C108788();
    sub_22BE33928(v13, v14, v15);
    sub_22BE40960();
    sub_22BE33928(v16, v17, v18);
    sub_22C108820();
LABEL_7:
    v27 = sub_22BE46544();
    sub_22BE19DC4(v27, v28, v29, v30);
    goto LABEL_8;
  }

  v19 = sub_22BE3D4EC();
  v20(v19);
  v21 = sub_22BE1ACD4();
  v22(v21);
  sub_22C1087E0();
  TranscriptProtoUIType.init(handwritten:)();
  if (!v0)
  {
    sub_22BE33928(v1, &qword_27D911E68, &qword_22C2B5B18);
    v25 = sub_22BE41624();
    v26(v25);
    sub_22BE3CE24();
    goto LABEL_7;
  }

  sub_22BE33928(v1, &qword_27D911E68, &qword_22C2B5B18);
  v23 = sub_22BE41624();
  v24(v23);
LABEL_8:
  sub_22BEE94B0();
  sub_22BE18478();
}

void sub_22C106CBC(unsigned __int8 a1@<W0>, uint64_t a2@<X8>)
{
  v6 = a1;
  type metadata accessor for TranscriptProtoProgramStatement.ExecutionSupportType(0);
  sub_22BE22CEC();
  MEMORY[0x28223BE20](v7);
  sub_22BE19338();
  if (v6 == 2)
  {
    v8 = sub_22BE1B010();
  }

  else
  {
    *v3 = 2;
    _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
    *v3 = a1 & 1;
    v10 = sub_22C1088E8();
    sub_22C1086E4(v10, a2, v11);
    v8 = a2;
    v9 = 0;
  }

  sub_22BE19DC4(v8, v9, 1, v2);
  sub_22BE37758();
}

void sub_22C106D88()
{
  sub_22BE19130();
  v3 = sub_22BE3C3E4(v2);
  v38 = type metadata accessor for TranscriptProtoParameterNeedsValueContext(v3);
  sub_22BE18000();
  MEMORY[0x28223BE20](v4);
  sub_22BE19338();
  v5 = sub_22BE1A8C4();
  v7 = sub_22BE5CE4C(v5, v6);
  sub_22BE19448(v7);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v8);
  sub_22BE24FD8();
  sub_22C26FC34();
  sub_22BE179D8();
  MEMORY[0x28223BE20](v9);
  sub_22BE186D4();
  MEMORY[0x28223BE20](v10);
  v11 = sub_22BE23748();
  sub_22BE3F3C8(v11);
  sub_22BE26894();
  if (v12)
  {
    v13 = sub_22C108788();
    sub_22BE33928(v13, v14, v15);
    sub_22BE40960();
    sub_22BE33928(v16, v17, v18);
    sub_22C108820();
LABEL_7:
    v35 = sub_22BE46544();
    sub_22BE19DC4(v35, v36, v37, v38);
    goto LABEL_8;
  }

  v19 = sub_22BE3D4EC();
  v20(v19);
  v21 = sub_22BE1ACD4();
  v22(v21);
  v23 = sub_22C1087E0();
  TranscriptProtoParameterNeedsValueContext.init(handwritten:)(v23, v24, v25, v26, v27, v28, v29, v30, v38, v39);
  if (!v0)
  {
    sub_22BE33928(v1, &qword_27D911ED0, &unk_22C2B5BD0);
    v33 = sub_22BE41624();
    v34(v33);
    sub_22BE3CE24();
    goto LABEL_7;
  }

  sub_22BE33928(v1, &qword_27D911ED0, &unk_22C2B5BD0);
  v31 = sub_22BE41624();
  v32(v31);
LABEL_8:
  sub_22BEE94B0();
  sub_22BE18478();
}

void sub_22C106F58()
{
  sub_22BE19130();
  sub_22C108B60();
  v2 = sub_22BE3E79C();
  v4 = sub_22BE5CE4C(v2, v3);
  sub_22BE19448(v4);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v5);
  sub_22BE1AB08();
  sub_22C26FB44();
  sub_22BE179D8();
  MEMORY[0x28223BE20](v6);
  sub_22BE1958C();
  MEMORY[0x28223BE20](v7);
  sub_22BE2EDB8();
  sub_22BE3E844();
  sub_22BE1972C(v1);
  if (v8)
  {
    v9 = sub_22BE2590C();
    sub_22BE33928(v9, v10, &unk_22C2B5C00);
    v11 = sub_22BE26154();
    sub_22BE33928(v11, v12, v13);
  }

  else
  {
    v14 = sub_22BE28CD8();
    v15(v14);
    v16 = sub_22BE42004();
    v17(v16);
    sub_22C108D60();
    TranscriptProtoActionConfirmationSystemStyle.init(handwritten:)();
    sub_22BE33928(v0, &qword_27D911EE8, &unk_22C2B5C00);
    v18 = sub_22BE33560();
    v19(v18);
  }

  v20 = type metadata accessor for TranscriptProtoActionConfirmationSystemStyle(0);
  sub_22BE3C074(v20);
  sub_22BE3C298();
  sub_22BE18478();
}

void sub_22C1070DC()
{
  sub_22BE19130();
  v3 = sub_22BE3C3E4(v2);
  v38 = type metadata accessor for TranscriptProtoResponseManifest(v3);
  sub_22BE18000();
  MEMORY[0x28223BE20](v4);
  sub_22BE19338();
  v5 = sub_22BE1A8C4();
  v7 = sub_22BE5CE4C(v5, v6);
  sub_22BE19448(v7);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v8);
  sub_22BE24FD8();
  sub_22C26F874();
  sub_22BE179D8();
  MEMORY[0x28223BE20](v9);
  sub_22BE186D4();
  MEMORY[0x28223BE20](v10);
  v11 = sub_22BE23748();
  sub_22BE3F3C8(v11);
  sub_22BE26894();
  if (v12)
  {
    v13 = sub_22C108788();
    sub_22BE33928(v13, v14, v15);
    sub_22BE40960();
    sub_22BE33928(v16, v17, v18);
    sub_22C108820();
LABEL_7:
    v35 = sub_22BE46544();
    sub_22BE19DC4(v35, v36, v37, v38);
    goto LABEL_8;
  }

  v19 = sub_22BE3D4EC();
  v20(v19);
  v21 = sub_22BE1ACD4();
  v22(v21);
  v23 = sub_22C1087E0();
  TranscriptProtoResponseManifest.init(handwritten:)(v23, v24, v25, v26, v27, v28, v29, v30, v38, v39, SWORD2(v39), SBYTE6(v39), SHIBYTE(v39));
  if (!v0)
  {
    sub_22BE33928(v1, &qword_27D911DB8, &unk_22C2B5870);
    v33 = sub_22BE41624();
    v34(v33);
    sub_22BE3CE24();
    goto LABEL_7;
  }

  sub_22BE33928(v1, &qword_27D911DB8, &unk_22C2B5870);
  v31 = sub_22BE41624();
  v32(v31);
LABEL_8:
  sub_22BEE94B0();
  sub_22BE18478();
}

void sub_22C1072AC()
{
  sub_22BE19130();
  v2 = v1;
  v3 = *(v0 + 8);
  if (v3)
  {
    v4 = v0;
    v5 = *(v0 + 32);
    v7 = *(v0 + 16);
    v6 = *(v0 + 24);
    v8 = *v0;
    v9 = type metadata accessor for TranscriptProtoGlobalToolIdentifier(0);

    _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
    sub_22BE33928(v4, &qword_27D911F38, &qword_22C2B5CA0);
    *v2 = v8;
    *(v2 + 8) = v3;
    *(v2 + 24) = v7;
    *(v2 + 32) = v6;
    *(v2 + 16) = v5 & 1;
    v10 = v2;
    v11 = 0;
    v12 = 1;
    v13 = v9;
  }

  else
  {
    type metadata accessor for TranscriptProtoGlobalToolIdentifier(0);
    sub_22BE1A140();
  }

  sub_22BE19DC4(v10, v11, v12, v13);
  sub_22BE18478();
}

void sub_22C107378()
{
  sub_22BE19130();
  v3 = sub_22BE3C3E4(v2);
  v30 = type metadata accessor for TranscriptProtoDialogType(v3);
  sub_22BE18000();
  MEMORY[0x28223BE20](v4);
  sub_22BE19338();
  v5 = sub_22BE1A8C4();
  v7 = sub_22BE5CE4C(v5, v6);
  sub_22BE19448(v7);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v8);
  sub_22BE24FD8();
  sub_22C26F4B4();
  sub_22BE179D8();
  MEMORY[0x28223BE20](v9);
  sub_22BE186D4();
  MEMORY[0x28223BE20](v10);
  v11 = sub_22BE23748();
  sub_22BE3F3C8(v11);
  sub_22BE26894();
  if (v12)
  {
    v13 = sub_22C108788();
    sub_22BE33928(v13, v14, v15);
    sub_22BE40960();
    sub_22BE33928(v16, v17, v18);
    sub_22C108820();
LABEL_7:
    v27 = sub_22BE46544();
    sub_22BE19DC4(v27, v28, v29, v30);
    goto LABEL_8;
  }

  v19 = sub_22BE3D4EC();
  v20(v19);
  v21 = sub_22BE1ACD4();
  v22(v21);
  sub_22C1087E0();
  TranscriptProtoDialogType.init(handwritten:)();
  if (!v0)
  {
    sub_22BE33928(v1, &qword_27D911EF8, &unk_22C2B5C18);
    v25 = sub_22BE41624();
    v26(v25);
    sub_22BE3CE24();
    goto LABEL_7;
  }

  sub_22BE33928(v1, &qword_27D911EF8, &unk_22C2B5C18);
  v23 = sub_22BE41624();
  v24(v23);
LABEL_8:
  sub_22BEE94B0();
  sub_22BE18478();
}

void sub_22C107548()
{
  sub_22BE19130();
  v3 = sub_22BE3C3E4(v2);
  v30 = type metadata accessor for TranscriptProtoVisualOutput(v3);
  sub_22BE18000();
  MEMORY[0x28223BE20](v4);
  sub_22BE19338();
  v5 = sub_22BE1A8C4();
  v7 = sub_22BE5CE4C(v5, v6);
  sub_22BE19448(v7);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v8);
  sub_22BE24FD8();
  sub_22C26F444();
  sub_22BE179D8();
  MEMORY[0x28223BE20](v9);
  sub_22BE186D4();
  MEMORY[0x28223BE20](v10);
  v11 = sub_22BE23748();
  sub_22BE3F3C8(v11);
  sub_22BE26894();
  if (v12)
  {
    v13 = sub_22C108788();
    sub_22BE33928(v13, v14, v15);
    sub_22BE40960();
    sub_22BE33928(v16, v17, v18);
    sub_22C108820();
LABEL_7:
    v27 = sub_22BE46544();
    sub_22BE19DC4(v27, v28, v29, v30);
    goto LABEL_8;
  }

  v19 = sub_22BE3D4EC();
  v20(v19);
  v21 = sub_22BE1ACD4();
  v22(v21);
  sub_22C1087E0();
  TranscriptProtoVisualOutput.init(handwritten:)();
  if (!v0)
  {
    sub_22BE33928(v1, &qword_27D911EF0, &qword_22C2B5C10);
    v25 = sub_22BE41624();
    v26(v25);
    sub_22BE3CE24();
    goto LABEL_7;
  }

  sub_22BE33928(v1, &qword_27D911EF0, &qword_22C2B5C10);
  v23 = sub_22BE41624();
  v24(v23);
LABEL_8:
  sub_22BEE94B0();
  sub_22BE18478();
}

uint64_t sub_22C107718@<X0>(char a1@<W0>, _BYTE *a2@<X8>)
{
  if (a1 == 4)
  {
    type metadata accessor for TranscriptProtoPersonQuery.Handle(0);
    sub_22BE1A140();
  }

  else
  {
    *a2 = 3;
    v8 = type metadata accessor for TranscriptProtoPersonQuery.Handle(0);
    _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
    *a2 = a1;
    v3 = a2;
    v4 = 0;
    v5 = 1;
    v6 = v8;
  }

  return sub_22BE19DC4(v3, v4, v5, v6);
}

void sub_22C1077A8()
{
  sub_22BE19130();
  sub_22BE23350();
  v2 = sub_22BE289D8();
  v4 = sub_22BE5CE4C(v2, v3);
  sub_22BE19448(v4);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v5);
  sub_22BE1BC40();
  type metadata accessor for ActionParameterContext(0);
  sub_22BE18000();
  MEMORY[0x28223BE20](v6);
  sub_22BE183AC();
  sub_22BE28C8C();
  MEMORY[0x28223BE20](v7);
  v8 = sub_22BE287AC();
  sub_22BE2B984(v8, v1, &qword_27D911F48, &unk_22C2B5CB0);
  sub_22BE23B00(v1);
  if (v9)
  {
    sub_22BE33928(v0, &qword_27D911F48, &unk_22C2B5CB0);
    v10 = sub_22BE29454();
    sub_22BE33928(v10, v11, &unk_22C2B5CB0);
  }

  else
  {
    v12 = sub_22BE29454();
    sub_22C1086E4(v12, v13, v14);
    v15 = sub_22BE1B18C();
    sub_22C108688(v15, v16, v17);
    TranscriptProtoActionParameterContext.init(handwritten:)();
    sub_22BE33928(v0, &qword_27D911F48, &unk_22C2B5CB0);
    sub_22C108634();
  }

  v18 = type metadata accessor for TranscriptProtoActionParameterContext(0);
  sub_22BE3C074(v18);
  sub_22BE22978();
  sub_22BE18478();
}

void sub_22C107944()
{
  sub_22BE19130();
  v3 = sub_22BE3C3E4(v2);
  v30 = type metadata accessor for ContextProtoAliasTypes(v3);
  sub_22BE18000();
  MEMORY[0x28223BE20](v4);
  sub_22BE19338();
  v5 = sub_22BE1A8C4();
  v7 = sub_22BE5CE4C(v5, v6);
  sub_22BE19448(v7);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v8);
  sub_22BE24FD8();
  sub_22C270944();
  sub_22BE179D8();
  MEMORY[0x28223BE20](v9);
  sub_22BE186D4();
  MEMORY[0x28223BE20](v10);
  v11 = sub_22BE23748();
  sub_22BE3F3C8(v11);
  sub_22BE26894();
  if (v12)
  {
    v13 = sub_22C108788();
    sub_22BE33928(v13, v14, v15);
    sub_22BE40960();
    sub_22BE33928(v16, v17, v18);
    sub_22C108820();
LABEL_7:
    v27 = sub_22BE46544();
    sub_22BE19DC4(v27, v28, v29, v30);
    goto LABEL_8;
  }

  v19 = sub_22BE3D4EC();
  v20(v19);
  v21 = sub_22BE1ACD4();
  v22(v21);
  sub_22C1087E0();
  ContextProtoAliasTypes.init(handwritten:)();
  if (!v0)
  {
    sub_22BE33928(v1, &qword_27D9073C0, &qword_22C275330);
    v25 = sub_22BE41624();
    v26(v25);
    sub_22BE3CE24();
    goto LABEL_7;
  }

  sub_22BE33928(v1, &qword_27D9073C0, &qword_22C275330);
  v23 = sub_22BE41624();
  v24(v23);
LABEL_8:
  sub_22BEE94B0();
  sub_22BE18478();
}

void sub_22C107B14()
{
  sub_22BE19130();
  v4 = sub_22BE2528C(v3);
  v32 = type metadata accessor for TranscriptProtoRequestPrescribedPlan(v4);
  sub_22BE18000();
  MEMORY[0x28223BE20](v5);
  sub_22BE19338();
  v6 = sub_22C0B1AF0();
  v8 = sub_22BE5CE4C(v6, v7);
  sub_22BE19448(v8);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v9);
  v10 = sub_22BE250C8();
  type metadata accessor for RequestPrescribedPlan(v10);
  sub_22BE22CEC();
  MEMORY[0x28223BE20](v11);
  sub_22BE17D10();
  MEMORY[0x28223BE20](v12);
  v13 = sub_22BE23748();
  sub_22BE25D44(v13);
  sub_22BE2B8B8();
  if (v14)
  {
    v15 = sub_22C108788();
    sub_22BE33928(v15, v16, v17);
    sub_22BE40960();
    sub_22BE33928(v18, v19, v20);
    sub_22BE379E4();
LABEL_6:
    v29 = sub_22BE2530C();
    sub_22BE19DC4(v29, v30, v31, v32);
    goto LABEL_7;
  }

  v21 = sub_22C1088AC();
  sub_22C1086E4(v21, v2, v22);
  v23 = sub_22BE289D8();
  sub_22C108688(v23, v24, v25);
  sub_22BE3E998();
  TranscriptProtoRequestPrescribedPlan.init(handwritten:)();
  sub_22BE33928(v1, &qword_27D911F58, &unk_22C2B5CC0);
  sub_22BE3ACD8();
  sub_22C108634();
  if (!v0)
  {
    v26 = sub_22C1088E8();
    sub_22C108DC4(v26, v27, v28);
    goto LABEL_6;
  }

LABEL_7:
  sub_22BE22978();
  sub_22BE18478();
}

void sub_22C107CD4(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  type metadata accessor for TranscriptProtoRequestSuggestedInvocation(0);
  sub_22BE18000();
  MEMORY[0x28223BE20](v7);
  sub_22BE1955C();
  if (a2)
  {
    _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
    *v3 = a1;
    v3[1] = a2;
    v8 = sub_22C1088AC();
    sub_22C1086E4(v8, a3, v9);
    v10 = sub_22BE3661C();
  }

  else
  {
    v10 = sub_22BE2BA98();
  }

  sub_22BE3ACE4(v10, v11);
  sub_22BE37758();
}

void sub_22C107D88()
{
  sub_22BE19130();
  sub_22BE3C3E4(v5);
  sub_22C26E164();
  sub_22BE179D8();
  v53 = v7;
  v54 = v6;
  MEMORY[0x28223BE20](v6);
  sub_22BE179EC();
  v52 = v9 - v8;
  v10 = sub_22BE5CE4C(&qword_27D90E470, &unk_22C2AE480);
  sub_22BE19448(v10);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v11);
  v12 = sub_22BE24FD8();
  v55 = type metadata accessor for TranscriptProtoDateTimeContext(v12);
  sub_22BE18000();
  MEMORY[0x28223BE20](v13);
  sub_22BE1955C();
  v14 = sub_22BE31038();
  v16 = sub_22BE5CE4C(v14, v15);
  sub_22BE19448(v16);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v17);
  v18 = sub_22BE1AB08();
  type metadata accessor for DateTimeContext(v18);
  sub_22BE22CEC();
  MEMORY[0x28223BE20](v19);
  sub_22BE186D4();
  MEMORY[0x28223BE20](v20);
  v22 = &v52 - v21;
  v56 = v1;
  v23 = sub_22BE29454();
  sub_22BE2B984(v23, v24, &qword_27D911F50, &qword_22C2B5EF0);
  v25 = sub_22BE23E90();
  sub_22BE22E98(v25, v26);
  if (v27)
  {
    sub_22BE354D0();
    sub_22BE33928(v28, v29, v30);
    sub_22BE354D0();
    sub_22BE33928(v31, v32, v33);
    v49 = 1;
    v50 = v57;
    v51 = v55;
  }

  else
  {
    v34 = sub_22C1088E8();
    sub_22C1086E4(v34, v22, v35);
    v36 = sub_22BE41FB4();
    sub_22C108688(v36, v37, v38);
    v39 = v55;
    v40 = *(v55 + 20);
    v41 = sub_22C270454();
    sub_22BE1A140();
    sub_22BE19DC4(v42, v43, v44, v41);
    _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
    (*(v53 + 16))(v52, v4, v54);
    sub_22C270444();
    sub_22BE3ACE4(v3, 0);
    sub_22BFC390C(v3, v2 + v40, &qword_27D90E470, &unk_22C2AE480);
    v45 = v4 + *(v0 + 20);
    sub_22C26E264();
    sub_22BE29328();
    sub_22BE33928(v56, &qword_27D911F50, &qword_22C2B5EF0);
    sub_22C108634();
    sub_22C108634();
    *v2 = v45;
    v2[1] = v0;
    v46 = sub_22C1088AC();
    v47 = v57;
    sub_22C1086E4(v46, v57, v48);
    v49 = 0;
    v50 = v47;
    v51 = v39;
  }

  sub_22BE19DC4(v50, v49, 1, v51);
  sub_22BE3C298();
  sub_22BE18478();
}

uint64_t sub_22C1080B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v26 = type metadata accessor for TranscriptProtoAction(0);
  MEMORY[0x28223BE20](v26);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22BE5CE4C(&qword_27D911C90, &qword_22C2B5088);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v25 - v7;
  v9 = type metadata accessor for Action(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v25 - v13;
  sub_22BE2B984(a1, v8, &qword_27D911C90, &qword_22C2B5088);
  if (sub_22BE1AEA8(v8, 1, v9) == 1)
  {
    sub_22BE33928(a1, &qword_27D911C90, &qword_22C2B5088);
    sub_22BE33928(v8, &qword_27D911C90, &qword_22C2B5088);
    v15 = 1;
    v16 = v28;
  }

  else
  {
    sub_22C1086E4(v8, v14, type metadata accessor for Action);
    sub_22C108688(v14, v11, type metadata accessor for Action);
    TranscriptProtoAction.init(handwritten:)(v11, v17, v18, v19, v20, v21, v22, v23, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36);
    sub_22BE33928(a1, &qword_27D911C90, &qword_22C2B5088);
    result = sub_22C108634();
    if (v2)
    {
      return result;
    }

    v16 = v28;
    sub_22C1086E4(v5, v28, type metadata accessor for TranscriptProtoAction);
    v15 = 0;
  }

  return sub_22BE19DC4(v16, v15, 1, v26);
}

unint64_t sub_22C108358()
{
  result = qword_27D911DB0;
  if (!qword_27D911DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D911DB0);
  }

  return result;
}

double sub_22C1083D4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_22C108424(uint64_t a1)
{
  result = sub_22C1085EC(&off_27D911DC0, type metadata accessor for ResponseGenerationInput, &protocol conformance descriptor for ResponseGenerationInput);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22C1084D0(uint64_t a1)
{
  result = sub_22C1085EC(&qword_27D911DC8, type metadata accessor for StatementResultDigest, &protocol conformance descriptor for StatementResultDigest);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_22C108598()
{
  result = qword_27D911DD8;
  if (!qword_27D911DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D911DD8);
  }

  return result;
}

uint64_t sub_22C1085EC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_22C108634()
{
  v1 = sub_22BE17BC4();
  v2(v1);
  sub_22BE18000();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t sub_22C108688(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_22BE18000();
  v4 = sub_22BE19454();
  v5(v4);
  return a2;
}

uint64_t sub_22C1086E4(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_22BE18000();
  v4 = sub_22BE19454();
  v5(v4);
  return a2;
}

void sub_22C108740()
{
  v3 = *(v0 + 16);
  *(v2 - 144) = v0 + ((*(v1 + 80) + 32) & ~*(v1 + 80));
  *(v2 - 136) = v3;
}

uint64_t sub_22C108830@<X0>(uint64_t a1@<X8>)
{
  *(v2 - 72) = v1;
  *(v2 - 88) = a1;
  return 0;
}

uint64_t sub_22C108890()
{

  return sub_22C1086E4(v2, v1, v0);
}

uint64_t sub_22C1088F4()
{
  v4 = *(v2 - 128);

  return sub_22C108688(v0, v4, v1);
}

uint64_t sub_22C108914()
{
  v4 = *(v2 - 128);

  return sub_22C108688(v0, v4, v1);
}

uint64_t sub_22C108934()
{

  return sub_22BE2B984(v2, v3, v0, v1);
}

uint64_t sub_22C108B34@<X0>(uint64_t a1@<X8>)
{

  return sub_22C1086E4(v3, a1 + v1 * v2, type metadata accessor for VariableSetter);
}

uint64_t sub_22C108B6C()
{

  return sub_22C108634();
}

uint64_t sub_22C108BE8@<X0>(uint64_t a1@<X8>)
{

  return sub_22C101EF8(a1 | (v1 << 32));
}

double sub_22C108CAC()
{

  return result;
}

uint64_t sub_22C108D84()
{
  v4 = *(v2 - 104);

  return sub_22C108688(v1, v4, v0);
}

uint64_t sub_22C108DA4()
{
  v4 = *(v2 - 136);

  return sub_22C108688(v1, v4, v0);
}

uint64_t sub_22C108DC4(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  v5 = *(v3 - 72);

  return sub_22C1086E4(a1, v5, a3);
}

unint64_t sub_22C108DDC()
{

  return sub_22C108598();
}

unint64_t sub_22C108DF4()
{

  return sub_22C108598();
}

uint64_t sub_22C108E0C(uint64_t a1)
{

  return sub_22C26E664();
}

void sub_22C108E24(uint64_t *a1)
{
  v2 = *(sub_22BE5CE4C(&qword_27D9076D0, &unk_22C275230) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_22C116108();
    v3 = v4;
  }

  v5 = *(v3 + 16);
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v5;
  sub_22C114518(v6);
  *a1 = v3;
}

uint64_t sub_22C108ED8@<X0>(void (*a1)(char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v16[1] = a2;
  v17 = a1;
  v5 = sub_22C26F144();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22BE5CE4C(&qword_27D9120C0, &qword_22C2B5F18);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v16 - v10;
  sub_22BE22814();
  v12 = 1;
  if (sub_22BE1AEA8(v11, 1, v5) == 1)
  {
    v13 = a3;
LABEL_5:
    v14 = type metadata accessor for RequestPrescribedPlan(0);
    return sub_22BE19DC4(v13, v12, 1, v14);
  }

  (*(v6 + 32))(v8, v11, v5);
  v13 = a3;
  v17(v8);
  if (!v3)
  {
    (*(v6 + 8))(v8, v5);
    v12 = 0;
    goto LABEL_5;
  }

  result = (*(v6 + 8))(v8, v5);
  __break(1u);
  return result;
}

void UserTurnStarted.init(client:context:)()
{
  sub_22BE19130();
  v4 = v3;
  v6 = v5;
  v33 = v7;
  v8 = sub_22C26F264();
  sub_22BE179D8();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  sub_22BE183AC();
  sub_22BEC0508();
  MEMORY[0x28223BE20](v12);
  sub_22BE20558();
  sub_22C26E684();
  sub_22BE179D8();
  v31 = v14;
  v32 = v13;
  MEMORY[0x28223BE20](v13);
  sub_22BE179EC();
  sub_22BE1B1C4();
  v16 = v4[3];
  v15 = v4[4];
  v34 = v4;
  v17 = sub_22BE1B73C();
  sub_22BE1BD3C(v17, v18);
  v19 = (*(v15 + 16))(v16, v15);
  MEMORY[0x2318A74F0](v19);
  sub_22BE29400();
  v20(v2, v0, v8);
  v21 = (*(v10 + 88))(v2, v8);
  if (v21 == *MEMORY[0x277D1C8B0] || v21 == *MEMORY[0x277D1C8A0])
  {
    v30 = v21 != *MEMORY[0x277D1C8B0];
    v23 = *(v10 + 8);
    v23(v0, v8);
    v23(v2, v8);
    v24 = sub_22C26EE04();
    v26 = v25;
    v27 = type metadata accessor for UserTurnStarted(0);
    sub_22C26EDE4();
    sub_22C26EE14();
    sub_22BE18524();
    (*(v28 + 8))(v6);
    (*(v31 + 32))(v33, v1, v32);
    *(v33 + *(v27 + 20)) = v30;
    v29 = (v33 + *(v27 + 24));
    *v29 = v24;
    v29[1] = v26;
    sub_22BE26B64(v34);
    sub_22BE18478();
  }

  else
  {
    sub_22C274004();
    __break(1u);
  }
}

void UserTurn.init(client:context:)()
{
  sub_22BE19130();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = sub_22C26F264();
  sub_22BE179D8();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  sub_22BE179EC();
  sub_22BE22DB8();
  v11 = sub_22C116374();
  v12(v11, v4, v7);
  v13 = (*(v9 + 88))(v0, v7);
  if (v13 == *MEMORY[0x277D1C8B0] || v13 == *MEMORY[0x277D1C8A0])
  {
    v15 = v13 != *MEMORY[0x277D1C8B0];
    v16 = *(v9 + 8);
    v17 = sub_22BE1AB1C();
    v16(v17);
    (v16)(v0, v7);
    sub_22BE26B64(v2);
    *v6 = v15;
    sub_22BE18478();
  }

  else
  {
    sub_22C274004();
    __break(1u);
  }
}

uint64_t sub_22C109504(uint64_t a1, void *a2, void (*a3)(void))
{
  sub_22BE26B64(a2);
  a3(0);
  sub_22BE18524();
  return (*(v5 + 8))(a1);
}

void Request.init(client:context:)()
{
  sub_22BE19130();
  v117 = v0;
  v118 = v6;
  v8 = v7;
  v114 = v9;
  v10 = sub_22BE5CE4C(&qword_27D911F50, &qword_22C2B5EF0);
  sub_22BE19448(v10);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v11);
  sub_22BE1A174();
  v116 = v12;
  sub_22BE183BC();
  sub_22C26F184();
  sub_22BE179D8();
  v112 = v14;
  v113 = v13;
  MEMORY[0x28223BE20](v13);
  sub_22BE17A44();
  v111 = v15;
  v16 = sub_22BE5CE4C(&qword_27D9120A8, &qword_22C2B5EF8);
  v17 = sub_22BE19448(v16);
  MEMORY[0x28223BE20](v17);
  sub_22BE17B98();
  v109 = v18;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v19);
  sub_22BE19E94();
  v110 = v20;
  v21 = sub_22BE5CE4C(&qword_27D9120B0, &qword_22C2B5F00);
  sub_22BE19448(v21);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v22);
  sub_22BE1A174();
  v115 = v23;
  sub_22BE183BC();
  v108 = sub_22C26F1C4();
  sub_22BE179D8();
  v105 = v24;
  MEMORY[0x28223BE20](v25);
  sub_22BE183AC();
  sub_22BE2351C();
  MEMORY[0x28223BE20](v26);
  sub_22BE25A90();
  v27 = sub_22BE5CE4C(&off_27D9120B8, &unk_22C2B5F08);
  v28 = sub_22BE19448(v27);
  MEMORY[0x28223BE20](v28);
  sub_22BE17B98();
  v106 = v29;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v30);
  sub_22BE19E94();
  v107 = v31;
  v32 = sub_22BE5CE4C(&qword_27D9082F0, &qword_22C27AB00);
  sub_22BE19448(v32);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v33);
  v35 = &v97 - v34;
  v36 = sub_22BE5CE4C(&qword_27D9120C0, &qword_22C2B5F18);
  sub_22BE19448(v36);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v37);
  sub_22BE1BC40();
  v38 = sub_22BE5CE4C(&qword_27D911F58, &unk_22C2B5CC0);
  sub_22BE19448(v38);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v39);
  sub_22BE1AB08();
  v40 = sub_22C26EDD4();
  v41 = sub_22BE19448(v40);
  MEMORY[0x28223BE20](v41);
  sub_22BE179EC();
  sub_22BE2BB64();
  v42 = type metadata accessor for RequestContent(0);
  v43 = sub_22BE19448(v42);
  MEMORY[0x28223BE20](v43);
  sub_22BE179EC();
  sub_22BE22DB8();
  sub_22C26EEE4();
  v44 = v118;
  sub_22BE26B00(v118, &v119);
  v45 = v117;
  RequestContent.init(client:context:)();
  if (v45)
  {
    sub_22C26F254();
    sub_22BE18524();
    (*(v46 + 8))(v8);
    sub_22BE26B64(v44);
  }

  else
  {
    v117 = v5;
    v101 = v4;
    v100 = sub_22C26F1E4();
    v47 = sub_22C26F1F4();
    MEMORY[0x28223BE20](v47);
    *(&v97 - 2) = v44;
    v102 = v3;
    sub_22C108ED8(sub_22C109EC4, (&v97 - 4), v3);
    v103 = 0;
    sub_22BE233E8(v2, &qword_27D9120C0, &qword_22C2B5F18);
    sub_22C26F214();
    v48 = v107;
    v49 = v8;
    sub_22C26F224();
    v50 = v106;
    sub_22BE22814();
    v51 = sub_22BE1B010();
    v52 = v108;
    v54 = v35;
    if (sub_22BE1AEA8(v51, v53, v108) == 1)
    {
      sub_22BE233E8(v48, &off_27D9120B8, &unk_22C2B5F08);
      v106 = 0;
      v99 = 0;
      v98 = 0;
    }

    else
    {
      v55 = v105;
      (*(v105 + 32))(v1, v50, v52);
      (*(v55 + 16))(v117, v1, v52);
      v106 = sub_22C26F1A4();
      v99 = v56;
      v98 = MEMORY[0x2318A78B0]();
      v57 = *(v55 + 8);
      v58 = sub_22BE194F8();
      v57(v58);
      (v57)(v1, v52);
      sub_22BE233E8(v48, &off_27D9120B8, &unk_22C2B5F08);
    }

    v59 = v116;
    v61 = v110;
    v60 = v111;
    v62 = v49;
    sub_22C26F1D4();
    sub_22C26F204();
    v63 = v109;
    sub_22BE22814();
    v64 = sub_22BE1B010();
    v65 = v113;
    v67 = sub_22BE1AEA8(v64, v66, v113);
    v68 = v114;
    v69 = v112;
    v104 = v54;
    if (v67 == 1)
    {
      sub_22BE233E8(v61, &qword_27D9120A8, &qword_22C2B5EF8);
      v111 = 0;
      v117 = 0;
    }

    else
    {
      sub_22BE27C14();
      v70(v60, v63, v65);
      v111 = sub_22C26ED64();
      v117 = v71;
      (*(v69 + 8))(v60, v65);
      sub_22BE233E8(v61, &qword_27D9120A8, &qword_22C2B5EF8);
    }

    static DateTimeContext.default.getter(v59);
    sub_22C26F254();
    sub_22BE18524();
    (*(v72 + 8))(v62);
    v73 = type metadata accessor for DateTimeContext(0);
    sub_22BE187DC();
    sub_22BE19DC4(v74, v75, v76, v73);
    v77 = type metadata accessor for Request(0);
    type metadata accessor for RequestPrescribedPlan(0);
    sub_22BE1A140();
    sub_22BE19DC4(v78, v79, v80, v81);
    sub_22C26E1D4();
    sub_22BE1A140();
    sub_22BE19DC4(v82, v83, v84, v85);
    v86 = (v68 + v77[8]);
    *v86 = 0;
    v86[1] = 0;
    v86[2] = 0;
    sub_22C271394();
    sub_22BE1A140();
    sub_22BE19DC4(v87, v88, v89, v90);
    v91 = (v68 + v77[10]);
    *v91 = 0;
    v91[1] = 0;
    sub_22BE1A140();
    sub_22BE19DC4(v92, v93, v94, v73);
    sub_22BE3BF50();
    sub_22BE37A38();
    *(v68 + v77[5]) = v100 & 1;
    sub_22BE2343C();
    sub_22BE2343C();
    sub_22BE37808(*v86, v86[1], v86[2]);
    v95 = v99;
    *v86 = v106;
    v86[1] = v95;
    v86[2] = v98;
    sub_22BE2343C();

    v96 = v117;
    *v91 = v111;
    v91[1] = v96;
    sub_22BE2343C();
    sub_22BE26B64(v118);
  }

  sub_22BE18478();
}

void sub_22C109DD0(uint64_t a1, uint64_t a2)
{
  v4 = sub_22C26F144();
  v5 = MEMORY[0x28223BE20](v4);
  (*(v7 + 16))(&v9[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0) - 8], a1, v5);
  sub_22BE26B00(a2, v9);
  RequestPrescribedPlan.init(client:context:)();
}

void RequestPrescribedPlan.init(client:context:)()
{
  sub_22BE19460();
  v169 = v3;
  v170 = v4;
  v6 = v5;
  v150 = sub_22C26EF24();
  sub_22BE179D8();
  v149 = v7;
  MEMORY[0x28223BE20](v8);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v9);
  sub_22BE19E94();
  sub_22BE18950(v10);
  v146 = sub_22C26F0E4();
  sub_22BE179D8();
  v145 = v11;
  MEMORY[0x28223BE20](v12);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v13);
  sub_22BE19E94();
  sub_22BE18950(v14);
  sub_22C26F074();
  sub_22BE179D8();
  v152 = v16;
  v153 = v15;
  MEMORY[0x28223BE20](v15);
  sub_22BE17B98();
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v17);
  sub_22BE19E94();
  v151 = v18;
  sub_22BE183BC();
  sub_22C26F024();
  sub_22BE179D8();
  v155 = v20;
  v156 = v19;
  MEMORY[0x28223BE20](v19);
  sub_22BE17B98();
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v21);
  sub_22BE19E94();
  v154 = v22;
  sub_22BE183BC();
  sub_22C26EFD4();
  sub_22BE179D8();
  v159 = v24;
  v160 = v23;
  MEMORY[0x28223BE20](v23);
  sub_22BE17B98();
  v158 = v25;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v26);
  sub_22BE19E94();
  v157 = v27;
  sub_22BE183BC();
  sub_22C26F134();
  sub_22BE179D8();
  v162 = v29;
  v163 = v28;
  MEMORY[0x28223BE20](v28);
  sub_22BE17B98();
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v30);
  sub_22BE19E94();
  v161 = v31;
  sub_22BE183BC();
  sub_22C26F0A4();
  sub_22BE179D8();
  v165 = v33;
  v166 = v32;
  MEMORY[0x28223BE20](v32);
  sub_22BE18928();
  MEMORY[0x28223BE20](v34);
  sub_22BE195C4();
  sub_22C26EF74();
  sub_22BE179D8();
  v36 = v35;
  MEMORY[0x28223BE20](v37);
  sub_22BE183AC();
  sub_22BE28EF4();
  MEMORY[0x28223BE20](v38);
  sub_22BE25A90();
  v39 = sub_22C26F144();
  sub_22BE179D8();
  v41 = v40;
  MEMORY[0x28223BE20](v42);
  sub_22BE179EC();
  sub_22BE35AE8();
  (*(v41 + 16))(v0, v6, v39);
  v43 = sub_22BE1AB1C();
  v45 = v44(v43);
  if (v45 == *MEMORY[0x277D1C798])
  {
    v46 = sub_22BE30FFC();
    v47(v46, v39);
    v48 = sub_22BE194F8();
    v49(v48);
    sub_22C11634C();
    v50 = sub_22BE1A8C4();
    v51(v50);
    v167 = sub_22C26EF64();
    v53 = v52;
    v54 = MEMORY[0x2318A7630]();
    v55 = sub_22C26EF44();
    sub_22BE26B64(v169);
    (*(v41 + 8))(v6, v39);
    v56 = *(v36 + 8);
    v57 = sub_22BE18944();
    v56(v57);
    v58 = sub_22BE1AB74();
    v56(v58);
    *v170 = v167;
    *(v170 + 8) = v53;
    *(v170 + 16) = v54 & 1;
    *(v170 + 17) = v55 & 1;
    type metadata accessor for RequestPrescribedPlan(0);
    sub_22BE23BA8();
LABEL_17:
    swift_storeEnumTagMultiPayload();
    sub_22BE1AABC();
    return;
  }

  if (v45 == *MEMORY[0x277D1C808])
  {
    v59 = sub_22BE30FFC();
    v60(v59, v39);
    v61 = sub_22BE194C4();
    v62(v61);
    v63 = sub_22C116374();
    v64(v63, v2, v166);
    v65 = sub_22C26ED64();
    v67 = v66;
    sub_22BE26B64(v169);
    (*(v41 + 8))(v6, v39);
    v68 = *(v165 + 8);
    v68(v1, v166);
    v68(v2, v166);
    *v170 = v65;
    *(v170 + 8) = v67;
    type metadata accessor for RequestPrescribedPlan(0);
    goto LABEL_17;
  }

  if (v45 == *MEMORY[0x277D1C840])
  {
    v69 = sub_22BE30FFC();
    v70(v69, v39);
    (*(v162 + 32))(v161, v0, v163);
    v71 = sub_22BE18944();
    v72(v71);
    v168 = sub_22C26E7B4();
    v74 = v73;
    v75 = MEMORY[0x2318A77F0]();
    v76 = sub_22C26F014();
    v78 = v77;
    sub_22BE26B64(v169);
    (*(v41 + 8))(v6, v39);
    v79 = *(v162 + 8);
    v80 = sub_22BE336E8();
    v79(v80);
    (v79)(v161, v163);
    *v170 = v168;
    *(v170 + 8) = v74;
    *(v170 + 16) = v75 & 1;
    *(v170 + 24) = v76;
    *(v170 + 32) = v78;
    type metadata accessor for RequestPrescribedPlan(0);
    goto LABEL_17;
  }

  if (v45 == *MEMORY[0x277D1C7C8])
  {
    v81 = sub_22BE30FFC();
    v82(v81, v39);
    v83 = sub_22BE194F8();
    v84(v83);
    v85 = sub_22BE1A8C4();
    v86(v85);
    sub_22C26EFB4();
    v164 = MEMORY[0x2318A7680]();
    v87 = sub_22C26EFC4();
    v89 = v88;
    v90 = sub_22C26EF94();
    v92 = v91;
    sub_22BE26B64(v169);
    (*(v41 + 8))(v6, v39);
    v93 = *(v159 + 8);
    v93(v158, v160);
    v94 = sub_22BE3911C();
    (v93)(v94);
    sub_22BE29F2C(v164 & 1);
    v157[3] = v87;
    v157[4] = v89;
    v157[5] = v90;
    v157[6] = v92;
    type metadata accessor for RequestPrescribedPlan(0);
    sub_22BE39250();
    goto LABEL_17;
  }

  if (v45 == *MEMORY[0x277D1C7D0])
  {
    v95 = sub_22BE37420();
    v96(v95);
    (*(v155 + 32))(v154, v0, v156);
    v97 = sub_22BE18040();
    v98(v97);
    sub_22C26E7B4();
    v99 = MEMORY[0x2318A76E0]();
    v100 = sub_22C26F014();
    v102 = v101;
    sub_22BE26B64(v169);
    v103 = sub_22BE35C08();
    v104(v103);
    v105 = *(v155 + 8);
    v106 = sub_22BE1B73C();
    v105(v106);
    (v105)(v154, v156);
    sub_22BE29F2C(v99 & 1);
    *(v99 + 24) = v100;
    *(v99 + 32) = v102;
    type metadata accessor for RequestPrescribedPlan(0);
    sub_22BE39250();
    goto LABEL_17;
  }

  if (v45 == *MEMORY[0x277D1C800])
  {
    v107 = sub_22BE37420();
    v108(v107);
    (*(v152 + 32))(v151, v0, v153);
    v109 = sub_22BE18040();
    v110(v109);
    sub_22C26E7B4();
    v111 = MEMORY[0x2318A7730]();
    v112 = sub_22C26F014();
    v114 = v113;
    sub_22BE26B64(v169);
    v115 = sub_22BE35C08();
    v116(v115);
    v117 = *(v152 + 8);
    v118 = sub_22BE1B73C();
    v117(v118);
    (v117)(v151, v153);
    sub_22BE29F2C(v111 & 1);
    *(v111 + 24) = v112;
    *(v111 + 32) = v114;
    type metadata accessor for RequestPrescribedPlan(0);
    sub_22BE39250();
    goto LABEL_17;
  }

  if (v45 == *MEMORY[0x277D1C838])
  {
    v119 = sub_22BE37420();
    v120(v119);
    (*(v145 + 32))(v144, v0, v146);
    v121 = sub_22BE33FCC();
    v123 = v122(v121);
    MEMORY[0x2318A77D0](v123);
    v124 = sub_22C26E604();
    v126 = v125;
    sub_22BE26B64(v169);
    v127 = sub_22BE35C08();
    v128(v127);
    v129 = *(v145 + 8);
    v130 = sub_22BE194C4();
    v129(v130);
    (v129)(v144, v146);
    v131 = v170 + *(type metadata accessor for RequestPrescribedPlan.OpenTool(0) + 20);
    *v131 = v124;
    *(v131 + 8) = v126 & 1;
    type metadata accessor for RequestPrescribedPlan(0);
    sub_22BE39250();
    goto LABEL_17;
  }

  if (v45 == *MEMORY[0x277D1C790])
  {
    v132 = sub_22BE37420();
    v133(v132);
    v134 = sub_22BE25C94();
    v135(v134);
    (*(v149 + 16))(v148, v147, v150);
    v136 = sub_22C26EF14();
    v138 = v137;
    sub_22BE26B64(v169);
    v139 = sub_22BE35C08();
    v140(v139);
    v141 = *(v149 + 8);
    v142 = sub_22BE194C4();
    v141(v142);
    v143 = sub_22BE25C94();
    v141(v143);
    *v170 = v136;
    *(v170 + 8) = v138 & 1;
    type metadata accessor for RequestPrescribedPlan(0);
    sub_22BE39250();
    goto LABEL_17;
  }

  sub_22C274004();
  __break(1u);
}

uint64_t ExternalAgentRequestRewriteMetadata.init(client:context:)()
{
  sub_22BE250DC();
  sub_22C26F1A4();
  sub_22C1163A0();
  v4 = MEMORY[0x2318A78B0]();
  sub_22BE29584();
  sub_22C26F1C4();
  sub_22BE18524();
  result = (*(v5 + 8))(v0);
  *v1 = v2;
  v1[1] = v3;
  v1[2] = v4;
  return result;
}

void MessagePayload.Request.init(ifps:)()
{
  sub_22BE19460();
  v5 = v4;
  v6 = sub_22BE5CE4C(&qword_27D9120B0, &qword_22C2B5F00);
  sub_22BE19448(v6);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v7);
  sub_22BE1A174();
  v8 = sub_22BE5CE4C(&off_27D9120B8, &unk_22C2B5F08);
  sub_22BE19448(v8);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v9);
  sub_22BE19E64();
  v10 = sub_22BE5CE4C(&qword_27D9082F0, &qword_22C27AB00);
  sub_22BE19448(v10);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v11);
  sub_22BE1A174();
  v12 = sub_22BE183BC();
  type metadata accessor for RequestPrescribedPlan(v12);
  sub_22BE18000();
  MEMORY[0x28223BE20](v13);
  sub_22BE183AC();
  sub_22BE2351C();
  MEMORY[0x28223BE20](v14);
  sub_22BE32374();
  v15 = sub_22BE5CE4C(&qword_27D911F58, &unk_22C2B5CC0);
  sub_22BE19448(v15);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v16);
  sub_22BE2BB64();
  v17 = sub_22BE5CE4C(&qword_27D9120C0, &qword_22C2B5F18);
  sub_22BE19448(v17);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v18);
  v19 = sub_22BE1AB08();
  v20 = type metadata accessor for RequestContent(v19);
  v21 = sub_22BE19448(v20);
  MEMORY[0x28223BE20](v21);
  sub_22BE179EC();
  sub_22BE36588();
  v22 = sub_22C26EDD4();
  v23 = sub_22BE19448(v22);
  MEMORY[0x28223BE20](v23);
  sub_22BE179EC();
  sub_22BE22DB8();
  sub_22BE23D74();
  sub_22BE19454();
  sub_22BE3F24C();
  MessagePayload.RequestContent.init(ifps:)();
  v24 = type metadata accessor for Request(0);
  sub_22BE22814();
  v25 = 1;
  sub_22BE1C14C(v3);
  if (!v26)
  {
    sub_22BE191C0();
    sub_22BE37A38();
    sub_22BE410EC();
    sub_22BE180C8();
    sub_22BE3F24C();
    MessagePayload.RequestPrescribedPlan.init(ifps:)();
    sub_22BE18EFC();
    sub_22BE41F44(v2, v27);
    v25 = 0;
  }

  v28 = sub_22C26F144();
  v29 = 1;
  sub_22BE19DC4(v1, v25, 1, v28);
  sub_22BE22814();
  if (*(v5 + *(v24 + 32) + 8))
  {

    sub_22BE37940();
    MEMORY[0x2318A7890]();
    v29 = 0;
  }

  v30 = sub_22C26F1C4();
  sub_22BE19DC4(v0, v29, 1, v30);
  sub_22BE22814();
  sub_22C26F234();
  sub_22BE48744();
  sub_22BE1AABC();
}

void MessagePayload.RequestPrescribedPlan.init(ifps:)()
{
  sub_22BE19460();
  sub_22BE1B254();
  sub_22C26E684();
  sub_22BE179D8();
  MEMORY[0x28223BE20](v3);
  sub_22BE179EC();
  sub_22BE1AB80();
  type metadata accessor for RequestPrescribedPlan.OpenTool(0);
  sub_22BE18000();
  MEMORY[0x28223BE20](v4);
  sub_22BE183AC();
  sub_22BE2017C();
  MEMORY[0x28223BE20](v5);
  sub_22BE26800();
  type metadata accessor for RequestPrescribedPlan(0);
  sub_22BE18000();
  MEMORY[0x28223BE20](v6);
  sub_22BE179EC();
  sub_22BE410EC();
  sub_22BE31038();
  sub_22BE3F24C();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_22C26ED04();
      sub_22BE18EFC();
      sub_22BE41F44(v0, v14);
      break;
    case 2u:
      sub_22BE41634();

      v10 = sub_22BE3C888();
      MEMORY[0x2318A7800](v10);

      sub_22BE18EFC();
      sub_22BE41F44(v0, v11);
      break;
    case 3u:
      sub_22BE41634();

      sub_22BE3C888();
      sub_22C26EFA4();

      sub_22BE18EFC();
      sub_22BE41F44(v0, v12);
      break;
    case 4u:
      sub_22BE41634();

      v8 = sub_22BE3C888();
      MEMORY[0x2318A76F0](v8);

      sub_22BE18EFC();
      sub_22BE41F44(v0, v9);
      break;
    case 5u:
      sub_22BE41634();

      v15 = sub_22BE3C888();
      MEMORY[0x2318A7740](v15);

      sub_22BE18EFC();
      sub_22BE41F44(v0, v16);
      break;
    case 6u:
      sub_22BE194C4();
      sub_22BE37A38();
      sub_22BE1AB1C();
      sub_22BE3F24C();
      v17 = sub_22BE2590C();
      v18(v17);
      sub_22C26F0C4();
      sub_22BE18EFC();
      sub_22BE41F44(v0, v19);
      sub_22BE41F44(v1, type metadata accessor for RequestPrescribedPlan.OpenTool);
      sub_22BE41F44(v2, type metadata accessor for RequestPrescribedPlan.OpenTool);
      break;
    case 7u:
      sub_22C26EF04();
      sub_22BE18EFC();
      sub_22BE41F44(v0, v13);
      break;
    default:
      sub_22C26EF54();
      sub_22BE18EFC();
      sub_22BE41F44(v0, v7);
      break;
  }

  sub_22C26F144();
  sub_22BE1834C();
  v20 = sub_22BE19454();
  v21(v20);
  sub_22BE1AABC();
}

double MessagePayload.ExternalAgentRequestRewriteMetadata.init(ifps:)(uint64_t a1)
{
  sub_22BE379F0(a1);

  v1 = sub_22BE18040();
  MEMORY[0x2318A7890](v1);

  return result;
}

uint64_t RequestContent.TextContent.init(client:context:)()
{
  sub_22BE19460();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = sub_22C26ED64();
  v8 = v7;
  v9 = v1[3];
  v10 = v1[4];
  sub_22BE1BD3C(v1, v9);
  v11 = *(v10 + 16);
  type metadata accessor for RequestContent.TextContent(0);
  v11(v9, v10);
  sub_22C26ED74();
  sub_22BE18524();
  (*(v12 + 8))(v3);
  *v5 = v6;
  v5[1] = v8;
  sub_22BE1AABC();

  return sub_22BE26B64(v13);
}

void RequestContent.SpeechContent.init(client:context:)()
{
  sub_22BE19460();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = sub_22BE5CE4C(&qword_27D9120C8, &unk_22C2CC910);
  sub_22BE19448(v6);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v7);
  sub_22BE35AE8();
  v8 = sub_22C26EDB4();
  v10 = v9;
  sub_22C26ED84();
  type metadata accessor for RequestContent.SpeechContent(0);
  sub_22C26ED94();
  v11 = sub_22BE1B664();
  sub_22BE1BD3C(v11, v12);
  v13 = sub_22BE2590C();
  v14(v13);
  sub_22C26EDC4();
  sub_22BE18524();
  (*(v15 + 8))(v3);
  sub_22C26EBC4();
  sub_22BE1A140();
  sub_22BE19DC4(v16, v17, v18, v19);
  *v5 = v8;
  v5[1] = v10;
  sub_22BE2343C();
  sub_22BE26B64(v1);
  sub_22BE1AABC();
}

void RequestContent.SystemPromptResolution.init(client:context:)()
{
  sub_22BE19460();
  v4 = v3;
  v5 = sub_22BE1B254();
  v42 = type metadata accessor for RequestContent.SystemPromptResolution.ResolutionInput(v5);
  sub_22BE18000();
  MEMORY[0x28223BE20](v6);
  sub_22BE17A44();
  v43 = v7;
  sub_22BE183BC();
  v8 = sub_22C26FF14();
  v9 = sub_22BE19448(v8);
  MEMORY[0x28223BE20](v9);
  sub_22BE179EC();
  sub_22BE1AB80();
  v10 = sub_22BE5CE4C(&qword_27D9120D0, &qword_22C2B5F20);
  sub_22BE19448(v10);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v11);
  sub_22BE1A174();
  v39 = v12;
  sub_22BE183BC();
  sub_22C26E684();
  sub_22BE179D8();
  v40 = v14;
  v41 = v13;
  MEMORY[0x28223BE20](v13);
  sub_22BE17A44();
  v38 = v15;
  sub_22BE183BC();
  v16 = sub_22C26FF24();
  v17 = sub_22BE19448(v16);
  MEMORY[0x28223BE20](v17);
  sub_22BE179EC();
  v18 = sub_22BE23930();
  v19 = type metadata accessor for RequestContent.SystemPromptResolution.UserAction(v18);
  v20 = sub_22BE19448(v19);
  MEMORY[0x28223BE20](v20);
  sub_22BE179EC();
  sub_22BE1BC40();
  v21 = sub_22C26E1D4();
  sub_22BE179D8();
  v23 = v22;
  MEMORY[0x28223BE20](v24);
  sub_22BE179EC();
  sub_22BE35AE8();
  v25 = sub_22BE5CE4C(&qword_27D9082F0, &qword_22C27AB00);
  sub_22BE19448(v25);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v26);
  sub_22BE22DB8();
  sub_22C26FF64();
  sub_22C26FF84();
  sub_22C26FF34();
  sub_22BE26B00(v4, v44);
  RequestContent.SystemPromptResolution.UserAction.init(client:context:)();
  sub_22C26FF44();
  sub_22C26FF94();
  sub_22BE26B00(v4, v44);
  RequestContent.SystemPromptResolution.ResolutionInput.init(client:context:)();
  sub_22BE26B64(v4);
  sub_22C26FFA4();
  sub_22BE18524();
  (*(v27 + 8))(v1);
  sub_22BE187DC();
  sub_22BE19DC4(v28, v29, v30, v42);
  sub_22BE1A140();
  sub_22BE19DC4(v31, v32, v33, v21);
  v34 = type metadata accessor for RequestContent.SystemPromptResolution(0);
  v35 = v34[8];
  swift_storeEnumTagMultiPayload();
  sub_22BE2343C();
  (*(v23 + 32))(v0 + v34[5], v2, v21);
  sub_22BE37A38();
  (*(v40 + 32))(v0 + v34[7], v38, v41);
  sub_22BE1AB5C(v39, 1, v42);
  if (v36)
  {
    v37 = v43;
    swift_storeEnumTagMultiPayload();
    sub_22BE1AB5C(v39, 1, v42);
    if (!v36)
    {
      sub_22BE233E8(v39, &qword_27D9120D0, &qword_22C2B5F20);
    }
  }

  else
  {
    v37 = v43;
    sub_22BE37A38();
  }

  sub_22C10D39C(v37, v0 + v35);
  sub_22BE1AABC();
}

uint64_t MessagePayload.RequestContent.TextContent.init(ifps:)()
{
  sub_22BE28CF0();

  sub_22BE191CC();
  sub_22C26ED04();
  return sub_22BE48744();
}

void MessagePayload.RequestContent.SpeechContent.init(ifps:)()
{
  sub_22BE19460();
  sub_22BE28CF0();
  v0 = sub_22BE191CC();
  v2 = sub_22BE5CE4C(v0, v1);
  v3 = sub_22BE19448(v2);
  MEMORY[0x28223BE20](v3);
  sub_22BE183AC();
  sub_22BE2017C();
  MEMORY[0x28223BE20](v4);
  sub_22BE26800();
  type metadata accessor for RequestContent.SpeechContent(0);
  sub_22BE22814();
  sub_22BE37940();
  sub_22BE22814();

  sub_22C26EDA4();
  sub_22BE48744();
  sub_22BE1AABC();
}

void SystemPromptResolution.init(ifps:)()
{
  sub_22BE19460();
  v1 = v0;
  v3 = sub_22BE2054C(v2);
  v4 = type metadata accessor for RequestContent.SystemPromptResolution.ResolutionInput(v3);
  v5 = sub_22BE19448(v4);
  MEMORY[0x28223BE20](v5);
  sub_22BE17A44();
  v6 = sub_22BE5CE4C(&qword_27D9120D8, &qword_22C2B5F28);
  sub_22BE19448(v6);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v7);
  sub_22BE1A174();
  sub_22BE183BC();
  v33 = sub_22C26E684();
  sub_22BE179D8();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  sub_22BE17A44();
  v32 = v11;
  v12 = sub_22BE183BC();
  v13 = type metadata accessor for RequestContent.SystemPromptResolution.UserAction(v12);
  v14 = sub_22BE19448(v13);
  MEMORY[0x28223BE20](v14);
  sub_22BE179EC();
  sub_22BE1B1C4();
  v15 = sub_22C26FF24();
  v16 = sub_22BE19448(v15);
  MEMORY[0x28223BE20](v16);
  sub_22BE179EC();
  sub_22BE22DB8();
  v17 = sub_22C26E1D4();
  sub_22BE179D8();
  v19 = v18;
  MEMORY[0x28223BE20](v20);
  sub_22BE179EC();
  v23 = v22 - v21;
  v24 = sub_22BE5CE4C(&qword_27D9082F0, &qword_22C27AB00);
  sub_22BE19448(v24);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v25);
  sub_22BE2BB64();
  sub_22BE41FB4();
  sub_22BE22814();
  v26 = type metadata accessor for RequestContent.SystemPromptResolution(0);
  (*(v19 + 16))(v23, v1 + *(v26 + 20), v17);
  sub_22C116334();
  sub_22BE3F24C();
  SystemPromptResolution.UserAction.init(ifps:)();
  (*(v9 + 16))(v32, v1 + *(v26 + 28), v33);
  sub_22BE28F9C();
  sub_22BE3F24C();
  SystemPromptResolution.ResolutionInput.init(ifps:)();
  sub_22C26FF14();
  sub_22BE187DC();
  sub_22BE19DC4(v27, v28, v29, v30);
  sub_22C26FF54();
  sub_22BE18304();
  sub_22BE41F44(v1, v31);
  sub_22BE1AABC();
}

void RequestContent.SystemPromptResolution.UserAction.init(client:context:)()
{
  sub_22BE19460();
  v4 = v3;
  sub_22BE1A5E4();
  v5 = sub_22C26FF04();
  sub_22BE179D8();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  sub_22BE18928();
  MEMORY[0x28223BE20](v9);
  sub_22BE195C4();
  sub_22C26FF24();
  sub_22BE179D8();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  sub_22BE179EC();
  v15 = (v14 - v13);
  sub_22BE35F50();
  v16();
  v17 = sub_22BE18040();
  v19 = v18(v17);
  if (v19 == *MEMORY[0x277D1D000])
  {
    goto LABEL_2;
  }

  if (v19 == *MEMORY[0x277D1D020])
  {
    sub_22BE26B64(v4);
    v24 = sub_22BE25560();
    v25(v24);
    v26 = sub_22BE18040();
    v27(v26);
    sub_22C272874();
    sub_22BE1834C();
    v28 = sub_22BE19454();
    v29(v28);
    type metadata accessor for RequestContent.SystemPromptResolution.UserAction(0);
    sub_22BE23BA8();
    goto LABEL_9;
  }

  if (v19 == *MEMORY[0x277D1D008])
  {
LABEL_2:
    sub_22BE26B64(v4);
    v20 = sub_22BE25560();
    v21(v20);
    v22 = sub_22BE18040();
    v23(v22);
    *v0 = *v15;
    type metadata accessor for RequestContent.SystemPromptResolution.UserAction(0);
    sub_22BE23BA8();
LABEL_9:
    swift_storeEnumTagMultiPayload();
    sub_22BE1AABC();
    return;
  }

  if (v19 == *MEMORY[0x277D1D018] || v19 == *MEMORY[0x277D1D028])
  {
    sub_22BE26B64(v4);
    v30 = sub_22BE25560();
    v31(v30);
    v32 = sub_22BE18040();
    v33(v32);
    *v0 = *v15;
    type metadata accessor for RequestContent.SystemPromptResolution.UserAction(0);
    sub_22BE23BA8();
    goto LABEL_9;
  }

  if (v19 == *MEMORY[0x277D1D010])
  {
    v34 = sub_22BE18040();
    v35(v34);
    (*(v7 + 32))(v2, v15, v5);
    sub_22C11634C();
    v36(v1, v2, v5);
    v37 = sub_22C26FEF4();
    sub_22BE26B64(v4);
    v38 = sub_22BE1C2A0();
    v39(v38);
    v40 = *(v7 + 8);
    v40(v1, v5);
    v41 = sub_22BE194C4();
    (v40)(v41);
    v42 = v37 & 1;
LABEL_16:
    *v0 = v42;
    type metadata accessor for RequestContent.SystemPromptResolution.UserAction(0);
    sub_22BE23BA8();
    goto LABEL_9;
  }

  if (v19 == *MEMORY[0x277D1CFF0])
  {
    v43 = *(v11 + 8);
    v44 = sub_22BE1C2A0();
    v43(v44);
    v45 = sub_22BE18040();
    v43(v45);
    sub_22BE26B64(v4);
    type metadata accessor for RequestContent.SystemPromptResolution.UserAction(0);
    sub_22BE23BA8();
    goto LABEL_9;
  }

  if (v19 == *MEMORY[0x277D1CFF8])
  {
    sub_22BE26B64(v4);
    v46 = sub_22BE1C2A0();
    v47(v46);
    v42 = 1;
    goto LABEL_16;
  }

  sub_22C274004();
  __break(1u);
}

void RequestContent.SystemPromptResolution.ResolutionInput.init(client:context:)()
{
  sub_22BE19460();
  v62 = v3;
  v63 = v2;
  v5 = v4;
  v6 = sub_22C26EDC4();
  sub_22BE179D8();
  v59 = v7;
  MEMORY[0x28223BE20](v8);
  sub_22BE183AC();
  sub_22BEC0508();
  MEMORY[0x28223BE20](v9);
  v11 = &v55 - v10;
  v60 = sub_22C26ED74();
  sub_22BE179D8();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  sub_22BE17B98();
  v16 = v15;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v17);
  sub_22BE19E94();
  v19 = v18;
  sub_22BE183BC();
  v20 = sub_22C26FF14();
  sub_22BE179D8();
  v22 = v21;
  MEMORY[0x28223BE20](v23);
  sub_22BE179EC();
  sub_22BE1AB80();
  v24 = *(v22 + 16);
  v61 = v5;
  v24(v0, v5, v20);
  v25 = sub_22BE3911C();
  v27 = v26(v25);
  if (v27 == *MEMORY[0x277D1CFD8])
  {
    v28 = sub_22BE3911C();
    v29(v28);
    v30 = *(v13 + 32);
    v31 = v19;
    v32 = v19;
    v58 = v19;
    v33 = v60;
    v30(v32, v0, v60);
    sub_22BE29400();
    v56 = v16;
    v34(v16, v31, v33);
    sub_22BE26B00(v63, v64);
    v59 = sub_22C26ED64();
    v57 = v35;
    v37 = v65;
    v36 = v66;
    sub_22BE1BD3C(v64, v65);
    v38 = v62;
    v39 = *(v36 + 16);
    type metadata accessor for RequestContent.TextContent(0);
    v39(v37, v36);
    sub_22BE26B64(v63);
    v40 = sub_22BE3762C();
    v41(v40);
    v42 = *(v13 + 8);
    v42(v56, v33);
    v42(v58, v33);
    v43 = v57;
    *v38 = v59;
    v38[1] = v43;
    sub_22BE26B64(v64);
    type metadata accessor for RequestContent.SystemPromptResolution.ResolutionInput(0);
LABEL_8:
    swift_storeEnumTagMultiPayload();
    sub_22BE1AABC();
    return;
  }

  v44 = v63;
  if (v27 == *MEMORY[0x277D1CFE8])
  {
    v45 = sub_22BE3911C();
    v46(v45);
    v47 = v59;
    v48 = sub_22BE191CC();
    v49(v48);
    sub_22BE29400();
    v50(v1, v11, v6);
    sub_22BE26B00(v44, v64);
    RequestContent.SpeechContent.init(client:context:)();
    sub_22BE26B64(v44);
    v51 = sub_22BE3762C();
    v52(v51);
    (*(v47 + 8))(v11, v6);
    type metadata accessor for RequestContent.SystemPromptResolution.ResolutionInput(0);
    goto LABEL_8;
  }

  if (v27 == *MEMORY[0x277D1CFE0] || v27 == *MEMORY[0x277D1CFD0])
  {
    sub_22BE26B64(v63);
    v53 = sub_22BE3762C();
    v54(v53);
    type metadata accessor for RequestContent.SystemPromptResolution.ResolutionInput(0);
    goto LABEL_8;
  }

  sub_22C274004();
  __break(1u);
}

uint64_t SystemPromptResolution.UserAction.init(ifps:)()
{
  v2 = sub_22BE1B254();
  type metadata accessor for RequestContent.SystemPromptResolution.UserAction(v2);
  sub_22BE18000();
  MEMORY[0x28223BE20](v3);
  sub_22BE179EC();
  sub_22BE28738();
  sub_22C116334();
  sub_22BE18040();
  sub_22BE3F24C();
  sub_22BE191CC();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_22BE1A7A0();
      sub_22C272874();
      sub_22BE1834C();
      v4 = sub_22BE33FD8();
      v5(v4);
      break;
    case 3u:
      sub_22BE1A7A0();
      *v0 = *v1;
      break;
    case 4u:
      sub_22C26FEE4();
      sub_22BE1A7A0();
      break;
    case 5u:
      _s16IntelligenceFlow22SystemPromptResolutionV18ActionCancellationV0aB14PlannerSupportE4ifpsAeF14RequestContentOABVADV_tcfC_0();
      sub_22BE1A7A0();
      break;
    default:
      sub_22BE1A7A0();
      *v0 = *v1;
      break;
  }

  sub_22C26FF24();
  sub_22BE1834C();
  v6 = sub_22BE19454();
  return v7(v6);
}

void SystemPromptResolution.ResolutionInput.init(ifps:)()
{
  sub_22BE19460();
  v20 = v4;
  v5 = sub_22BE5CE4C(&qword_27D9120C8, &unk_22C2CC910);
  v6 = sub_22BE19448(v5);
  MEMORY[0x28223BE20](v6);
  sub_22BE183AC();
  MEMORY[0x28223BE20](v7);
  sub_22BE25A90();
  type metadata accessor for RequestContent.SpeechContent(0);
  sub_22BE18000();
  MEMORY[0x28223BE20](v8);
  sub_22BE183AC();
  sub_22BE2017C();
  MEMORY[0x28223BE20](v9);
  sub_22BE26800();
  v10 = type metadata accessor for RequestContent.TextContent(0);
  v11 = sub_22BE19448(v10);
  MEMORY[0x28223BE20](v11);
  sub_22BE183AC();
  sub_22BE2351C();
  MEMORY[0x28223BE20](v12);
  sub_22BE32374();
  type metadata accessor for RequestContent.SystemPromptResolution.ResolutionInput(0);
  sub_22BE18000();
  MEMORY[0x28223BE20](v13);
  sub_22BE179EC();
  sub_22BE2BB64();
  sub_22BE28F9C();
  sub_22BE3F24C();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_22C11631C();
      sub_22BE25C94();
      sub_22BE37A38();
      sub_22BE203B0();
      sub_22BE1AB1C();
      sub_22BE3F24C();
      v16 = *v0;
      sub_22BE22814();
      sub_22BE22814();

      v14 = v20;
      sub_22C26EDA4();
      sub_22BE1BB30();
      sub_22BE2C714();
      sub_22BE41F44(v0, v17);
      sub_22BE41F44(v1, v16);
      v15 = MEMORY[0x277D1CFE8];
      break;
    case 2u:
      sub_22BE1BB30();
      v15 = MEMORY[0x277D1CFE0];
      goto LABEL_5;
    case 3u:
      sub_22BE1BB30();
      v15 = MEMORY[0x277D1CFD0];
LABEL_5:
      v14 = v20;
      break;
    default:
      sub_22BE20258();
      sub_22BE191C0();
      sub_22BE37A38();
      sub_22BE33A98();
      sub_22BE180C8();
      sub_22BE3F24C();

      v14 = v20;
      sub_22BE33FD8();
      sub_22C26ED04();
      sub_22BE1BB30();
      sub_22BE41F44(v2, type metadata accessor for RequestContent.TextContent);
      sub_22BE41F44(v3, type metadata accessor for RequestContent.TextContent);
      v15 = MEMORY[0x277D1CFD8];
      break;
  }

  v18 = *v15;
  sub_22C26FF14();
  sub_22BE1834C();
  (*(v19 + 104))(v14, v18);
  sub_22BE1AABC();
}

uint64_t RequestContent.SystemPromptResolution.RequirementResolution.init(client:context:)()
{
  sub_22BE250DC();
  v2 = sub_22C26FEF4();
  sub_22BE29584();
  sub_22C26FF04();
  sub_22BE18524();
  result = (*(v3 + 8))(v0);
  *v1 = v2 & 1;
  return result;
}

uint64_t sub_22C10CC80(uint64_t a1, void *a2, void (*a3)(void))
{
  sub_22BE26B64(a2);
  a3(0);
  sub_22BE18000();
  v7 = *(v6 + 8);

  return v7(a1, v5);
}

void RequestPrescribedPlan.SearchTool.init(client:context:)()
{
  sub_22BE3C358();
  sub_22BE250DC();
  sub_22C26EF64();
  sub_22C1163A0();
  v4 = MEMORY[0x2318A7630]();
  v5 = sub_22C26EF44();
  sub_22BE29584();
  sub_22C26EF74();
  sub_22BE18524();
  (*(v6 + 8))(v0);
  *v1 = v2;
  *(v1 + 8) = v3;
  *(v1 + 16) = v4 & 1;
  *(v1 + 17) = v5 & 1;
  sub_22BE267B8();
}

uint64_t RequestPrescribedPlan.LowConfidenceKnowledgeTool.init(client:context:)()
{
  sub_22BE250DC();
  sub_22C26ED64();
  sub_22C1163A0();
  sub_22BE29584();
  sub_22C26F0A4();
  sub_22BE18524();
  result = (*(v4 + 8))(v0);
  *v1 = v2;
  v1[1] = v3;
  return result;
}

void RequestPrescribedPlan.ConvertTool.init(client:context:)()
{
  sub_22BE19460();
  sub_22BE250DC();
  sub_22C26EFB4();
  sub_22C1163A0();
  v4 = MEMORY[0x2318A7680]();
  v5 = sub_22C26EFC4();
  v7 = v6;
  v8 = sub_22C26EF94();
  v10 = v9;
  sub_22BE29584();
  sub_22C26EFD4();
  sub_22BE18524();
  (*(v11 + 8))(v0);
  *v1 = v2;
  *(v1 + 8) = v3;
  *(v1 + 16) = v4 & 1;
  *(v1 + 24) = v5;
  *(v1 + 32) = v7;
  *(v1 + 40) = v8;
  *(v1 + 48) = v10;
  sub_22BE1AABC();
}

void sub_22C10CF7C()
{
  sub_22BE19460();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12();
  v15 = v14;
  LOBYTE(v5) = v5();
  v16 = v3();
  v18 = v17;
  sub_22BE26B64(v7);
  v1(0);
  sub_22BE18524();
  (*(v19 + 8))(v9);
  *v11 = v13;
  *(v11 + 8) = v15;
  *(v11 + 16) = v5 & 1;
  *(v11 + 24) = v16;
  *(v11 + 32) = v18;
  sub_22BE1AABC();
}

uint64_t RequestPrescribedPlan.OpenTool.init(client:context:)()
{
  sub_22BE250DC();
  MEMORY[0x2318A77D0]();
  v2 = sub_22C26E604();
  v4 = v3;
  sub_22BE29584();
  sub_22C26F0E4();
  sub_22BE18524();
  (*(v5 + 8))(v0);
  result = type metadata accessor for RequestPrescribedPlan.OpenTool(0);
  v7 = v1 + *(result + 20);
  *v7 = v2;
  *(v7 + 8) = v4 & 1;
  return result;
}

uint64_t RequestPrescribedPlan.OpenSuccessValueFromLatestRequestTool.init(client:context:)()
{
  sub_22BE250DC();
  v2 = sub_22C26EF14();
  v4 = v3;
  sub_22BE29584();
  sub_22C26EF24();
  sub_22BE18524();
  result = (*(v5 + 8))(v0);
  *v1 = v2;
  *(v1 + 8) = v4 & 1;
  return result;
}

double MessagePayload.RequestPrescribedPlan.ConvertTool.init(ifps:)()
{
  sub_22BE3C358();

  sub_22BE18040();
  sub_22C26EFA4();

  sub_22BE267B8();

  return result;
}

double sub_22C10D234()
{
  sub_22BE3C358();
  v1 = v0;

  v2 = sub_22BE3C888();
  v1(v2);

  sub_22BE267B8();

  return result;
}

uint64_t MessagePayload.RequestPrescribedPlan.OpenTool.init(ifps:)()
{
  sub_22BE28CF0();
  sub_22C26E684();
  sub_22BE179D8();
  MEMORY[0x28223BE20](v2);
  sub_22BE179EC();
  sub_22BE28738();
  (*(v3 + 16))(v1, v0);
  type metadata accessor for RequestPrescribedPlan.OpenTool(0);
  sub_22C26F0C4();
  return sub_22BE48744();
}

uint64_t sub_22C10D39C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RequestContent.SystemPromptResolution.ResolutionInput(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void MessagePayload.PlannerReturnedRawPlan.init(ifps:)()
{
  sub_22BE3C358();
  sub_22BE1B254();
  v2 = sub_22C26F164();
  sub_22BE179D8();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  sub_22BE183AC();
  sub_22BE2017C();
  MEMORY[0x28223BE20](v6);
  sub_22BE25A90();
  v7 = v0[1];
  v10[0] = *v0;
  v10[1] = v7;
  *v11 = v0[2];
  *&v11[9] = *(v0 + 41);

  sub_22C10D558();
  (*(v4 + 104))(v1, **(&unk_278725918 + v11[24]), v2);
  v8 = sub_22BE2590C();
  v9(v8);
  sub_22C26F154();
  sub_22C10D970(v10);
  sub_22BE267B8();
}