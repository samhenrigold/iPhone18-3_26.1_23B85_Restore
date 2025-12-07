void sub_22C6358E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_22C37F418(*(v8 + 216), a2, a3, a4, a5, a6, a7, a8);

  sub_22C369A24();
  sub_22C372034();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_22C635998()
{
  v1 = v0;
  v2 = sub_22C90674C();
  v23 = *(v2 - 8);
  v24 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22C9086FC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22C90855C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22C9085CC();
  v13 = (*(v10 + 88))(v12, v9);
  if (v13 == *MEMORY[0x277D1E560])
  {
    (*(v10 + 96))(v12, v9);
    (*(v6 + 32))(v8, v12, v5);
    v14 = sub_22C9086DC();
    MEMORY[0x28223BE20](v14);
    *(&v23 - 2) = v1;
    v15 = v25;
    v16 = sub_22C604E64(MEMORY[0x277D84F98], sub_22C63A2D8, (&v23 - 4), v14);
    if (!v15)
    {
      v1 = v16;
    }

    (*(v6 + 8))(v8, v5);
LABEL_9:

    return v1;
  }

  v17 = v25;
  if (v13 == *MEMORY[0x277D1E558])
  {
    (*(v10 + 96))(v12, v9);
    v19 = v23;
    v18 = v24;
    (*(v23 + 32))(v4, v12, v24);
    v20 = sub_22C9066FC();
    MEMORY[0x28223BE20](v20);
    *(&v23 - 2) = v0;
    v21 = sub_22C605054(MEMORY[0x277D84F98]);
    if (!v17)
    {
      v1 = v21;
    }

    (*(v19 + 8))(v4, v18);
    goto LABEL_9;
  }

  result = sub_22C90B4EC();
  __break(1u);
  return result;
}

uint64_t sub_22C635D78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 40) = a4;
  *(v6 + 48) = v5;
  *(v6 + 336) = a5;
  *(v6 + 24) = a2;
  *(v6 + 32) = a3;
  *(v6 + 16) = a1;
  sub_22C3A5908(&qword_27D9BF568, &qword_22C9228C8);
  *(v6 + 56) = swift_task_alloc();
  v7 = sub_22C90077C();
  *(v6 + 64) = v7;
  *(v6 + 72) = *(v7 - 8);
  *(v6 + 80) = swift_task_alloc();
  v8 = sub_22C90769C();
  *(v6 + 88) = v8;
  *(v6 + 96) = *(v8 - 8);
  *(v6 + 104) = swift_task_alloc();
  v9 = sub_22C908EAC();
  *(v6 + 112) = v9;
  *(v6 + 120) = *(v9 - 8);
  *(v6 + 128) = swift_task_alloc();
  sub_22C3A5908(&qword_27D9BAA18, &qword_22C911C40);
  *(v6 + 136) = swift_task_alloc();
  v10 = sub_22C90654C();
  *(v6 + 144) = v10;
  *(v6 + 152) = *(v10 - 8);
  *(v6 + 160) = swift_task_alloc();
  v11 = sub_22C90832C();
  *(v6 + 168) = v11;
  *(v6 + 176) = *(v11 - 8);
  *(v6 + 184) = swift_task_alloc();
  *(v6 + 192) = swift_task_alloc();
  v12 = sub_22C90977C();
  *(v6 + 200) = v12;
  *(v6 + 208) = *(v12 - 8);
  *(v6 + 216) = swift_task_alloc();
  v13 = sub_22C9094AC();
  *(v6 + 224) = v13;
  *(v6 + 232) = *(v13 - 8);
  *(v6 + 240) = swift_task_alloc();
  v14 = sub_22C90952C();
  *(v6 + 248) = v14;
  *(v6 + 256) = *(v14 - 8);
  *(v6 + 264) = swift_task_alloc();
  *(v6 + 272) = swift_task_alloc();
  *(v6 + 280) = swift_task_alloc();
  v15 = type metadata accessor for ExecutionPreconditionEvaluator.ParameterValue(0);
  *(v6 + 288) = v15;
  *(v6 + 296) = *(v15 - 8);
  *(v6 + 304) = swift_task_alloc();
  *(v6 + 312) = swift_task_alloc();
  sub_22C3A5908(&qword_27D9BF570, &qword_22C9228E0);
  *(v6 + 320) = swift_task_alloc();
  *(v6 + 328) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22C636208, 0, 0);
}

uint64_t sub_22C636208()
{
  v143 = *(v0 + 328);
  v133 = *(v0 + 296);
  v134 = *(v0 + 320);
  v131 = *(v0 + 288);
  v1 = *(v0 + 40);
  v2 = *(v0 + 256);
  v3 = *(v0 + 152);
  v6 = *(v1 + 64);
  v5 = v1 + 64;
  v4 = v6;
  v7 = -1;
  v8 = -1 << *(*(v0 + 40) + 32);
  if (-v8 < 64)
  {
    v7 = ~(-1 << -v8);
  }

  v9 = v7 & v4;
  v10 = (63 - v8) >> 6;
  v142 = (v2 + 16);
  v141 = *MEMORY[0x277D72D18];
  v148 = (v2 + 8);
  v149 = (v2 + 88);
  v130 = (v2 + 96);
  v129 = (*(v0 + 208) + 8);
  v11 = *MEMORY[0x277D72D28];
  v126 = *MEMORY[0x277D1DA48];
  v125 = (v3 + 8);
  v124 = (v3 + 96);
  v123 = (*(v0 + 176) + 32);
  v128 = (*(v0 + 72) + 8);
  v127 = (*(v0 + 120) + 8);
  v122 = *MEMORY[0x277D36E40];
  v132 = *(v0 + 40);

  v13 = 0;
  v138 = v10;
  v139 = v5;
  v140 = v11;
  while (v9)
  {
    v14 = v13;
LABEL_10:
    v15 = *(v0 + 312);
    v16 = *(v0 + 320);
    v17 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v18 = v17 | (v14 << 6);
    v19 = (*(v132 + 48) + 16 * v18);
    v20 = *v19;
    v21 = v19[1];
    sub_22C63A55C(*(v132 + 56) + *(v133 + 72) * v18, v15, type metadata accessor for ExecutionPreconditionEvaluator.ParameterValue);
    v22 = sub_22C371510();
    v24 = sub_22C3A5908(v22, v23);
    *v16 = v20;
    *(v134 + 8) = v21;
    sub_22C372AE4();
    sub_22C63A260(v15, v16 + v25, v26);
    sub_22C36C640(v16, 0, 1, v24);

LABEL_11:
    v27 = *(v0 + 328);
    sub_22C5E71BC(*(v0 + 320), v27, &qword_27D9BF570, &qword_22C9228E0);
    v28 = sub_22C371510();
    v30 = sub_22C3A5908(v28, v29);
    if (sub_22C370B74(v27, 1, v30) == 1)
    {

      v116 = type metadata accessor for StepResolution(0);
      v117 = 1;
LABEL_34:
      sub_22C36C640(*(v0 + 16), v117, 1, v116);

      sub_22C369A24();

      return v121();
    }

    v31 = *(v0 + 304);
    v32 = *(v0 + 280);
    v33 = *(v0 + 264);
    v34 = *(v0 + 248);
    v35 = **(v0 + 328);
    v147 = *(v143 + 8);
    sub_22C372AE4();
    sub_22C63A260(v36 + v37, v31, v38);
    sub_22C90935C();
    (*v142)(v33, v32, v34);
    v39 = *v149;
    v40 = (*v149)(v33, v34);
    v41 = *(v0 + 272);
    v144 = v35;
    v145 = *(v0 + 280);
    v42 = *(v0 + 248);
    if (v40 == v141)
    {
      v137 = v39;
      v43 = *(v0 + 216);
      v135 = *(v0 + 224);
      v136 = *(v0 + 200);
      (*v130)(*(v0 + 264), v42);
      swift_projectBox();
      v44 = sub_22C5CA5C8();
      v45(v44);

      v46 = swift_allocObject();
      sub_22C90948C();
      v47 = sub_22C9096FC();
      v49 = v48;
      v50 = v43;
      v39 = v137;
      (*v129)(v50, v136);
      v46[2] = v47;
      v46[3] = v49;
      v51 = sub_22C90949C();
      v53 = v52;
      v54 = sub_22C5CA5C8();
      v55(v54, v135);
      v56 = *v148;
      (*v148)(v145, v42);
      v46[4] = v51;
      v46[5] = v53;
      *v41 = v46;
      v57 = sub_22C37A27C();
      v58 = v140;
      v59(v57, v140, v42);
    }

    else
    {
      v56 = *v148;
      (*v148)(*(v0 + 264), *(v0 + 248));
      v60 = sub_22C37A27C();
      v61(v60, v145, v42);
      v58 = v140;
    }

    if (v39(*(v0 + 272), *(v0 + 248)) != v58)
    {
      sub_22C36B054();
      sub_22C63A5B8(v63, v64);

      v65 = sub_22C36BBCC();
      result = v56(v65);
      goto LABEL_19;
    }

    v62 = *(v0 + 336);
    (v56)(*(v0 + 272), *(v0 + 248));
    if (v62 != 1)
    {
      goto LABEL_30;
    }

    sub_22C64962C(*(v0 + 304) + *(v131 + 20));
    v70 = *(v0 + 136);
    sub_22C9070DC();
    v71 = sub_22C3775EC();
    v74 = sub_22C370B74(v71, v72, v73);
    if (v74 == 1)
    {
      sub_22C36DD28(v70, &qword_27D9BAA18, &qword_22C911C40);
      goto LABEL_30;
    }

    v75 = *(v0 + 144);
    sub_22C90702C();
    v76 = sub_22C36BBCC();
    v77(v76);
    v78 = sub_22C5CA5C8();
    if (v79(v78, v75) != v126)
    {
      (*v125)(*(v0 + 160), *(v0 + 144));
      goto LABEL_30;
    }

    v80 = *(v0 + 184);
    v82 = *(v0 + 160);
    v81 = *(v0 + 168);
    v146 = *(v0 + 24);
    (*v124)(v82, *(v0 + 144));
    v83 = *v123;
    (*v123)(v80, v82, v81);
    v84 = sub_22C36BBCC();
    v85 = v83(v84);
    v86 = MEMORY[0x2318B57A0](v85);
    v89 = sub_22C71B430(v86, v146, v87, v88);

    sub_22C3A5908(&qword_27D9BE3C0, &qword_22C91D970);
    v90 = sub_22C90098C();
    sub_22C369824();
    v92 = v91;
    v93 = (*(v91 + 80) + 32) & ~*(v91 + 80);
    v94 = swift_allocObject();
    *(v94 + 16) = xmmword_22C90F800;
    (*(v92 + 104))(v94 + v93, v122, v90);
    v95 = *(v0 + 168);
    if (v89)
    {
      sub_22C36BBCC();
      sub_22C46EC84();
      v97 = v96;

      swift_setDeallocating();
      sub_22C5900BC();
      v98 = sub_22C5CA5C8();
      v99(v98, v95);
      if ((v97 & 1) == 0)
      {
        goto LABEL_30;
      }

      v100 = *(v0 + 304);

      sub_22C36B054();
      result = sub_22C63A5B8(v100, v101);
LABEL_19:
      v10 = v138;
      v5 = v139;
    }

    else
    {
      v102 = sub_22C5CA5C8();
      v103(v102, v95);
      swift_setDeallocating();
      sub_22C5900BC();
LABEL_30:
      v104 = sub_22C9085AC();
      MEMORY[0x2318B5FE0](v104);
      sub_22C908AFC();
      v105 = *(v0 + 304);
      v106 = *(v0 + 88);
      v107 = *(v0 + 56);
      v108 = *(v0 + 48);
      (*v128)(*(v0 + 80), *(v0 + 64));
      v109 = sub_22C37A27C();
      v110(v109, v106);
      sub_22C5F3964(v144, v147, v105, v105 + *(v131 + 20), v108, v107);
      v111 = *(v0 + 304);
      v112 = *(v0 + 128);
      v113 = *(v0 + 112);
      v114 = *(v0 + 56);

      (*v127)(v112, v113);
      sub_22C36B054();
      sub_22C63A5B8(v111, v115);
      v116 = type metadata accessor for StepResolution(0);
      if (sub_22C370B74(v114, 1, v116) != 1)
      {

        v118 = sub_22C36BBCC();
        sub_22C63A260(v118, v119, v120);
        v117 = 0;
        goto LABEL_34;
      }

      result = sub_22C36DD28(*(v0 + 56), &qword_27D9BF568, &qword_22C9228C8);
      v10 = v138;
      v5 = v139;
    }
  }

  while (1)
  {
    v14 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v14 >= v10)
    {
      v66 = *(v0 + 320);
      v67 = sub_22C371510();
      v69 = sub_22C3A5908(v67, v68);
      sub_22C36C640(v66, 1, 1, v69);
      v9 = 0;
      goto LABEL_11;
    }

    v9 = *(v5 + 8 * v14);
    ++v13;
    if (v9)
    {
      v13 = v14;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22C636E38(uint64_t a1)
{
  v2 = &qword_27D9BB908;
  v3 = sub_22C3A5908(&qword_27D9BB908, &qword_22C910960);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v53 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = &v40 - v6;
  v56 = sub_22C9093BC();
  v8 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v42 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22C9066DC();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v40 - v15;
  v17 = 0;
  v18 = *(a1 + 16);
  v54 = a1;
  v55 = v18;
  v19 = &qword_22C910960;
  v51 = v11 + 88;
  v52 = v11 + 16;
  v50 = *MEMORY[0x277D1DBA8];
  v47 = *MEMORY[0x277D1DB98];
  v46 = *MEMORY[0x277D1DB90];
  v45 = *MEMORY[0x277D1DBA0];
  v44 = (v11 + 96);
  v41 = v8;
  v48 = (v8 + 32);
  v49 = (v11 + 8);
  v43 = MEMORY[0x277D84F90];
  while (v55 != v17)
  {
    v20 = v19;
    v21 = v2;
    v22 = *(v11 + 16);
    v22(v16, v54 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v17, v10);
    v22(v14, v16, v10);
    v23 = (*(v11 + 88))(v14, v10);
    if (v23 == v50)
    {
      (*v49)(v16, v10);
      (*v44)(v14, v10);
      v24 = v53;
      v25 = v56;
      (*v48)(v53, v14, v56);
      v26 = 0;
    }

    else
    {
      if (v23 != v47 && v23 != v46 && v23 != v45)
      {
        result = sub_22C90B4EC();
        __break(1u);
        return result;
      }

      v29 = *v49;
      (*v49)(v16, v10);
      v29(v14, v10);
      v26 = 1;
      v24 = v53;
      v25 = v56;
    }

    sub_22C36C640(v24, v26, 1, v25);
    v30 = v24;
    v2 = v21;
    v31 = v21;
    v19 = v20;
    sub_22C5E71BC(v30, v7, v31, v20);
    if (sub_22C370B74(v7, 1, v25) == 1)
    {
      sub_22C36DD28(v7, v2, v20);
      ++v17;
    }

    else
    {
      v32 = *v48;
      (*v48)(v42, v7, v56);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_22C5903C0();
        v43 = v37;
      }

      v33 = *(v43 + 16);
      v34 = v33 + 1;
      if (v33 >= *(v43 + 24) >> 1)
      {
        v40 = v33 + 1;
        sub_22C5903C0();
        v34 = v40;
        v43 = v38;
      }

      ++v17;
      v35 = v42;
      v36 = v43;
      *(v43 + 16) = v34;
      (v32)(v36 + ((*(v41 + 80) + 32) & ~*(v41 + 80)) + *(v41 + 72) * v33, v35);
    }
  }

  return v43;
}

unint64_t sub_22C637314(uint64_t a1)
{
  v2 = sub_22C9066DC();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v34 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v28 - v7;
  MEMORY[0x28223BE20](v6);
  v10 = &v28 - v9;
  v11 = 0;
  v12 = *(a1 + 16);
  v38 = a1;
  v39 = v12;
  v37 = v3 + 88;
  v36 = *MEMORY[0x277D1DBA8];
  v32 = *MEMORY[0x277D1DB98];
  v13 = *MEMORY[0x277D1DB90];
  v30 = *MEMORY[0x277D1DBA0];
  v31 = v13;
  v14 = (v3 + 8);
  v33 = (v3 + 32);
  v35 = MEMORY[0x277D84F90];
  while (v39 != v11)
  {
    v15 = (*(v3 + 80) + 32) & ~*(v3 + 80);
    v16 = *(v3 + 72);
    v17 = *(v3 + 16);
    v17(v10, v38 + v15 + v16 * v11, v2);
    v17(v8, v10, v2);
    v18 = (*(v3 + 88))(v8, v2);
    if (v18 == v36)
    {
      v19 = *v14;
      (*v14)(v8, v2);
      v19(v10, v2);
      ++v11;
    }

    else
    {
      if (v18 != v32 && v18 != v31 && v18 != v30)
      {
        result = sub_22C90B4EC();
        __break(1u);
        return result;
      }

      (*v14)(v8, v2);
      v29 = *v33;
      v29(v34, v10, v2);
      v22 = v35;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v40 = v22;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_22C3B79D8(0, *(v22 + 16) + 1, 1);
        v22 = v40;
      }

      v25 = *(v22 + 16);
      v24 = *(v22 + 24);
      v26 = v25 + 1;
      if (v25 >= v24 >> 1)
      {
        v35 = v25 + 1;
        v28 = v25;
        sub_22C3B79D8(v24 > 1, v25 + 1, 1);
        v26 = v35;
        v25 = v28;
        v22 = v40;
      }

      ++v11;
      *(v22 + 16) = v26;
      v35 = v22;
      v29((v22 + v15 + v25 * v16), v34, v2);
    }
  }

  return v35;
}

uint64_t sub_22C63763C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v133 = a2;
  sub_22C90674C();
  sub_22C369824();
  v130 = v4;
  v131 = v3;
  MEMORY[0x28223BE20](v3);
  sub_22C3698E4();
  v129 = v5;
  sub_22C369930();
  MEMORY[0x28223BE20](v6);
  sub_22C36BA64();
  v128 = v7;
  v8 = sub_22C3A5908(&qword_27D9BF308, &qword_22C922570);
  v9 = sub_22C369914(v8);
  MEMORY[0x28223BE20](v9);
  sub_22C3698F8(v114 - v10);
  v118 = sub_22C9074CC();
  sub_22C369824();
  v117 = v11;
  MEMORY[0x28223BE20](v12);
  sub_22C369838();
  v121 = v14 - v13;
  v15 = sub_22C3A5908(&qword_27D9BF430, &unk_22C9226F0);
  v16 = sub_22C369914(v15);
  MEMORY[0x28223BE20](v16);
  sub_22C3698E4();
  v119 = v17;
  sub_22C369930();
  MEMORY[0x28223BE20](v18);
  sub_22C36BA64();
  sub_22C3698F8(v19);
  v122 = sub_22C9086FC();
  sub_22C369824();
  v127 = v20;
  MEMORY[0x28223BE20](v21);
  sub_22C3698E4();
  v126 = v22;
  sub_22C369930();
  MEMORY[0x28223BE20](v23);
  sub_22C36BA64();
  v125 = v24;
  sub_22C90855C();
  sub_22C369824();
  v134 = v26;
  v135 = v25;
  MEMORY[0x28223BE20](v25);
  sub_22C3698E4();
  v132 = v27;
  sub_22C369930();
  MEMORY[0x28223BE20](v28);
  sub_22C36BA64();
  sub_22C3698F8(v29);
  v140 = sub_22C901FAC();
  sub_22C369824();
  v31 = v30;
  MEMORY[0x28223BE20](v32);
  sub_22C369838();
  v35 = v34 - v33;
  v138 = sub_22C90880C();
  sub_22C369824();
  v37 = v36;
  MEMORY[0x28223BE20](v38);
  sub_22C369838();
  v41 = v40 - v39;
  v42 = sub_22C3A5908(&qword_27D9BF588, &qword_22C9228F0);
  v43 = sub_22C369914(v42);
  MEMORY[0x28223BE20](v43);
  v45 = v114 - v44;
  v46 = sub_22C9085EC();
  sub_22C369824();
  v137 = v47;
  MEMORY[0x28223BE20](v48);
  sub_22C369838();
  v51 = v50 - v49;
  sub_22C90878C();
  v139 = a1;
  sub_22C90773C();
  sub_22C6499C0();
  v52 = *(v31 + 8);
  v136 = v31 + 8;
  v52(v35, v140);
  v53 = v41;
  v54 = v46;
  (*(v37 + 8))(v53, v138);
  if (sub_22C370B74(v45, 1, v46) == 1)
  {
    sub_22C36DD28(v45, &qword_27D9BF588, &qword_22C9228F0);
    type metadata accessor for ExecutionPreconditionEvaluator.EvaluatorError(0);
    sub_22C36C100();
    v57 = sub_22C63A514(v55, v56, &unk_22C9229D0);
    sub_22C370620(v57);
    sub_22C90773C();
    swift_storeEnumTagMultiPayload();
    return swift_willThrow();
  }

  v60 = v137 + 32;
  v59 = *(v137 + 32);
  v61 = sub_22C371510();
  v59(v61);
  sub_22C90773C();
  v138 = sub_22C6381C8(v35);
  v63 = v62;
  v52(v35, v140);
  v140 = v63;
  if (!v63)
  {
    type metadata accessor for ExecutionPreconditionEvaluator.EvaluatorError(0);
    sub_22C36C100();
    v86 = sub_22C63A514(v84, v85, &unk_22C9229D0);
    sub_22C370620(v86);
    sub_22C90773C();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    return (*(v137 + 8))(v51, v46);
  }

  v64 = v124;
  v137 = v51;
  sub_22C9085CC();
  v66 = v134;
  v65 = v135;
  v67 = (*(v134 + 88))(v64, v135);
  v68 = v67 == *MEMORY[0x277D1E560];
  v116 = v54;
  v115 = v59;
  LODWORD(v136) = v67;
  if (v68)
  {
    v69 = sub_22C383250();
    v70(v69);
    v71 = sub_22C36BBCC();
    v72 = v122;
    v73(v71);
    v74 = sub_22C36BA00();
    v131 = v75;
    (v75)(v74);
    v76 = v121;
    sub_22C90774C();
    (*(v117 + 104))(v76, *MEMORY[0x277D1E040], v118);
    v77 = sub_22C9086DC();
    v78 = v119;
    sub_22C605C30(v77, v119);

    sub_22C9086BC();
    v79 = sub_22C3775EC();
    v82 = sub_22C370B74(v79, v80, v81);
    v114[1] = v60;
    if (v82)
    {
      sub_22C36DD28(v78, &qword_27D9BF430, &unk_22C9226F0);
      v83 = sub_22C90260C();
      sub_22C36C640(v123, 1, 1, v83);
    }

    else
    {
      sub_22C90868C();
      sub_22C36DD28(v78, &qword_27D9BF430, &unk_22C9226F0);
    }

    v96 = v120;
    sub_22C90869C();
    sub_22C36C640(v96, 0, 1, v77);
    v97 = v126;
    v98 = sub_22C9086CC();
    sub_22C603BA0();
    v98(v141, 0);
    v99 = v132;
    v131(v132, v97, v72);
    (*(v66 + 104))(v99, v136, v65);
    sub_22C9085DC();
    v100 = *(v127 + 8);
    v100(v97, v72);
    v100(v125, v72);
  }

  else
  {
    if (v67 != *MEMORY[0x277D1E558])
    {
      result = sub_22C90B4EC();
      __break(1u);
      return result;
    }

    v87 = sub_22C383250();
    v88(v87);
    v89 = v130;
    v90 = v128;
    v91 = v64;
    v92 = v131;
    (*(v130 + 32))(v128, v91, v131);
    v93 = *(v89 + 16);
    v93(v129, v90, v92);
    sub_22C9066FC();
    v94 = sub_22C633A24();

    if (v94)
    {
      v95 = sub_22C637314(v94);
    }

    else
    {
      v95 = MEMORY[0x277D84F90];
    }

    sub_22C3A5908(&qword_27D9BAD10, &unk_22C90D5B0);
    v101 = sub_22C9066DC();
    sub_22C369824();
    v103 = v102;
    v104 = (*(v102 + 80) + 32) & ~*(v102 + 80);
    v105 = swift_allocObject();
    *(v105 + 16) = xmmword_22C90F800;
    sub_22C90774C();
    (*(v103 + 104))(v105 + v104, *MEMORY[0x277D1DBA8], v101);
    v141[0] = v105;
    sub_22C3CE514(v95);
    v106 = v129;
    v107 = sub_22C9066EC();
    v109 = v108;
    swift_isUniquelyReferenced_nonNull_native();
    v142 = *v109;
    sub_22C62E500();
    *v109 = v142;

    v107(v141, 0);
    v111 = v131;
    v110 = v132;
    v93(v132, v106, v131);
    (*(v134 + 104))(v110, v136, v135);
    sub_22C9085DC();
    v112 = *(v130 + 8);
    v112(v106, v111);
    v112(v128, v111);
  }

  v113 = sub_22C36BA00();
  v115(v113);
  type metadata accessor for StepResolution(0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_22C6381C8(uint64_t a1)
{
  v49 = a1;
  v52 = sub_22C901FAC();
  sub_22C369824();
  v2 = v1;
  MEMORY[0x28223BE20](v3);
  sub_22C3698E4();
  v48 = v4;
  sub_22C369930();
  MEMORY[0x28223BE20](v5);
  sub_22C36BA64();
  v43 = v6;
  v7 = sub_22C3A5908(&qword_27D9BAA00, &qword_22C911F60);
  v8 = sub_22C369914(v7);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  sub_22C36BA64();
  v50 = v12;
  result = sub_22C90858C();
  v14 = 0;
  v16 = result + 64;
  v15 = *(result + 64);
  v44 = v2;
  v45 = result;
  v17 = 1 << *(result + 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & v15;
  v20 = (v17 + 63) >> 6;
  v41 = v2 + 16;
  v42 = v11;
  v51 = (v2 + 32);
  v46 = result + 64;
  v47 = (v2 + 8);
  if ((v18 & v15) != 0)
  {
    while (1)
    {
      v21 = v14;
LABEL_10:
      v23 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
      v24 = v23 | (v21 << 6);
      v25 = v44;
      v26 = (*(v45 + 48) + 16 * v24);
      v28 = *v26;
      v27 = v26[1];
      v29 = v43;
      v30 = v52;
      (*(v44 + 16))(v43, *(v45 + 56) + *(v44 + 72) * v24, v52);
      v31 = sub_22C3A5908(&qword_27D9BAA30, &unk_22C911F70);
      v32 = *(v31 + 48);
      v33 = v42;
      *v42 = v28;
      *(v33 + 1) = v27;
      v34 = v29;
      v11 = v33;
      (*(v25 + 32))(&v33[v32], v34, v30);
      sub_22C36C640(v11, 0, 1, v31);

      v22 = v50;
LABEL_11:
      sub_22C5E71BC(v11, v22, &qword_27D9BAA00, &qword_22C911F60);
      v35 = sub_22C3A5908(&qword_27D9BAA30, &unk_22C911F70);
      if (sub_22C370B74(v22, 1, v35) == 1)
      {

        return 0;
      }

      v36 = *v22;
      v37 = v52;
      v38 = v48;
      (*v51)(v48, &v22[*(v35 + 48)], v52);
      v39 = sub_22C901F6C();
      (*v47)(v38, v37);
      if (v39)
      {
        break;
      }

      v16 = v46;
      if (!v19)
      {
        goto LABEL_5;
      }
    }

    return v36;
  }

  else
  {
LABEL_5:
    v22 = v50;
    while (1)
    {
      v21 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v21 >= v20)
      {
        v40 = sub_22C3A5908(&qword_27D9BAA30, &unk_22C911F70);
        sub_22C36C640(v11, 1, 1, v40);
        v19 = 0;
        goto LABEL_11;
      }

      v19 = *(v16 + 8 * v21);
      ++v14;
      if (v19)
      {
        v14 = v21;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_22C638560(uint64_t a1, uint64_t a2)
{
  if ((sub_22C9093AC() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for ExecutionPreconditionEvaluator.ParameterValue(0);

  return sub_22C901F6C();
}

uint64_t sub_22C6385C0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65756C6176 && a2 == 0xE500000000000000;
  if (v4 || (sub_22C90B4FC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E656D6574617473 && a2 == 0xEB00000000644974)
  {

    return 1;
  }

  else
  {
    v7 = sub_22C90B4FC();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_22C638688(char a1)
{
  if (a1)
  {
    return 0x6E656D6574617473;
  }

  else
  {
    return 0x65756C6176;
  }
}

uint64_t sub_22C6386C4(void *a1)
{
  v3 = sub_22C3A5908(&qword_27D9BF5E0, &qword_22C922A20);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  sub_22C374168(a1, a1[3]);
  sub_22C63A610();
  sub_22C90B6CC();
  v8[15] = 0;
  sub_22C9093BC();
  sub_22C63A514(&qword_27D9BF5E8, MEMORY[0x277D72A78], MEMORY[0x277D72A80]);
  sub_22C90B41C();
  if (!v1)
  {
    type metadata accessor for ExecutionPreconditionEvaluator.ParameterValue(0);
    v8[14] = 1;
    sub_22C901FAC();
    sub_22C63A514(&qword_27D9BF5F0, MEMORY[0x277D1C338], MEMORY[0x277D1C340]);
    sub_22C90B41C();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_22C6388C4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v24 = sub_22C901FAC();
  v21 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_22C9093BC();
  v23 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v25 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_22C3A5908(&qword_27D9BF5C0, &qword_22C922A18);
  v26 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v8 = &v19 - v7;
  v9 = type metadata accessor for ExecutionPreconditionEvaluator.ParameterValue(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22C374168(a1, a1[3]);
  sub_22C63A610();
  sub_22C90B6BC();
  if (v2)
  {
    return sub_22C36FF94(a1);
  }

  v20 = v9;
  v12 = v11;
  v14 = v23;
  v13 = v24;
  v30 = 0;
  sub_22C63A514(&qword_27D9BF5D0, MEMORY[0x277D72A78], MEMORY[0x277D72A98]);
  v15 = v25;
  sub_22C90B32C();
  v16 = *(v14 + 32);
  v19 = v12;
  v16(v12, v15, v27);
  v29 = 1;
  sub_22C63A514(&qword_27D9BF5D8, MEMORY[0x277D1C338], MEMORY[0x277D1C360]);
  sub_22C90B32C();
  (*(v26 + 8))(v8, v28);
  v17 = v19;
  (*(v21 + 32))(v19 + *(v20 + 20), v5, v13);
  sub_22C63A55C(v17, v22, type metadata accessor for ExecutionPreconditionEvaluator.ParameterValue);
  sub_22C36FF94(a1);
  return sub_22C63A5B8(v17, type metadata accessor for ExecutionPreconditionEvaluator.ParameterValue);
}

uint64_t sub_22C638D08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22C6385C0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22C638D30(uint64_t a1)
{
  v2 = sub_22C63A610();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C638D6C(uint64_t a1)
{
  v2 = sub_22C63A610();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22C638DDC()
{
  type metadata accessor for ExecutionPreconditionEvaluator.EvaluatorError(0);
  sub_22C36985C();
  MEMORY[0x28223BE20](v2);
  sub_22C369838();
  sub_22C38BC68();
  v4 = v3;
  sub_22C63A55C(v0, v1, v3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_22C63A5B8(v1, v4);
  return EnumCaseMultiPayload + 1;
}

uint64_t sub_22C638E70()
{
  sub_22C901FAC();
  sub_22C369824();
  MEMORY[0x28223BE20](v2);
  sub_22C369838();
  type metadata accessor for ExecutionPreconditionEvaluator.EvaluatorError(0);
  sub_22C36985C();
  MEMORY[0x28223BE20](v3);
  sub_22C369838();
  sub_22C38BC68();
  sub_22C63A55C(v0, v1, v4);
  if (swift_getEnumCaseMultiPayload() > 1)
  {
    v12 = *v1;
    v13 = v1[1];
    sub_22C3A5908(&qword_27D9BBCA0, &qword_22C9120F0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_22C90F800;
    strcpy((inited + 32), "parameterKey");
    *(inited + 45) = 0;
    *(inited + 46) = -5120;
    *(inited + 72) = MEMORY[0x277D837D0];
    *(inited + 48) = v12;
    *(inited + 56) = v13;
    return sub_22C909F0C();
  }

  else
  {
    v5 = sub_22C3708BC();
    v6(v5);
    sub_22C3A5908(&qword_27D9BBCA0, &qword_22C9120F0);
    v7 = swift_initStackObject();
    *(v7 + 16) = xmmword_22C90F800;
    *(v7 + 32) = 0x6E656D6574617473;
    *(v7 + 40) = 0xEB00000000644974;
    v8 = sub_22C901F9C();
    *(v7 + 72) = MEMORY[0x277D84CC0];
    *(v7 + 48) = v8;
    v9 = sub_22C909F0C();
    v10 = sub_22C36BBCC();
    v11(v10);
  }

  return v9;
}

uint64_t sub_22C6390CC(uint64_t a1)
{
  v2 = sub_22C63A514(&qword_27D9BF5B8, type metadata accessor for ExecutionPreconditionEvaluator.EvaluatorError, &unk_22C922990);

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_22C639138(uint64_t a1)
{
  v2 = sub_22C63A514(&qword_27D9BF5B8, type metadata accessor for ExecutionPreconditionEvaluator.EvaluatorError, &unk_22C922990);

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_22C6391A4()
{
  v0 = qword_27D9BF548;

  return v0;
}

uint64_t sub_22C6391E4(uint64_t a1, uint64_t a2)
{
  v53 = a1;
  v3 = sub_22C9074CC();
  v51 = *(v3 - 8);
  v52 = v3;
  MEMORY[0x28223BE20](v3);
  v49 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22C3A5908(&qword_27D9BF458, &qword_22C922718);
  MEMORY[0x28223BE20](v5 - 8);
  v50 = &v42 - v6;
  v7 = sub_22C3A5908(&qword_27D9BC030, &unk_22C911CC0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v42 - v8;
  v10 = sub_22C3A5908(&qword_27D9BF450, &qword_22C922710);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v42 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v42 - v17;
  v19 = sub_22C901FAC();
  v48 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v21 = &v42 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_22C90858C();
  v55 = a2;
  sub_22C63A2F4(a2, v18);
  v54 = *(v10 + 48);
  sub_22C6053E0(v22, v9);

  if (sub_22C370B74(v9, 1, v19) == 1)
  {
    sub_22C36DD28(v9, &qword_27D9BC030, &unk_22C911CC0);
    v23 = sub_22C9086BC();
    v24 = *(*(v23 - 8) + 8);
    v24(&v18[v54], v23);
    type metadata accessor for ExecutionPreconditionEvaluator.EvaluatorError(0);
    sub_22C63A514(&qword_27D9BF580, type metadata accessor for ExecutionPreconditionEvaluator.EvaluatorError, &unk_22C9229D0);
    swift_allocError();
    v26 = v25;
    sub_22C63A2F4(v55, v16);
    v27 = *(v16 + 1);
    v28 = *(v10 + 48);
    *v26 = *v16;
    v26[1] = v27;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    return (v24)(&v16[v28], v23);
  }

  else
  {
    v30 = v48;
    (*(v48 + 32))(v21, v9, v19);
    v31 = sub_22C9086BC();
    v32 = *(v31 - 8);
    v43 = *(v32 + 8);
    v44 = v32 + 8;
    v45 = v21;
    v43(&v18[v54], v31);
    v33 = v55;
    sub_22C63A2F4(v55, v16);
    v34 = *v16;
    v46 = *(v16 + 1);
    v47 = v34;
    v54 = *(v10 + 48);
    sub_22C63A2F4(v33, v13);

    v35 = *(v10 + 48);
    v36 = v49;
    sub_22C9086AC();
    v37 = &v13[v35];
    v38 = v43;
    v43(v37, v31);
    v39 = v50;
    sub_22C9074BC();
    (*(v51 + 8))(v36, v52);
    v40 = type metadata accessor for ExecutionPreconditionEvaluator.ParameterValue(0);
    v41 = v45;
    (*(v30 + 16))(v39 + *(v40 + 20), v45, v19);
    sub_22C36C640(v39, 0, 1, v40);
    sub_22C603D40();
    (*(v30 + 8))(v41, v19);
    return v38(&v16[v54], v31);
  }
}

uint64_t sub_22C639734(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v90 = a3;
  v83 = a1;
  v80 = sub_22C90952C();
  v79 = *(v80 - 8);
  v4 = MEMORY[0x28223BE20](v80);
  v78 = &v73 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v77 = &v73 - v7;
  MEMORY[0x28223BE20](v6);
  v84 = &v73 - v8;
  v9 = sub_22C3A5908(&qword_27D9BF458, &qword_22C922718);
  MEMORY[0x28223BE20](v9 - 8);
  v82 = (&v73 - v10);
  v11 = sub_22C3A5908(&qword_27D9BB908, &qword_22C910960);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v85 = &v73 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v81 = &v73 - v14;
  v97 = sub_22C9093BC();
  v15 = *(v97 - 8);
  v16 = MEMORY[0x28223BE20](v97);
  v76 = &v73 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v96 = &v73 - v19;
  MEMORY[0x28223BE20](v18);
  v95 = &v73 - v20;
  v21 = sub_22C3A5908(&qword_27D9BC030, &unk_22C911CC0);
  MEMORY[0x28223BE20](v21 - 8);
  v89 = &v73 - v22;
  v92 = sub_22C901FAC();
  v87 = *(v92 - 8);
  MEMORY[0x28223BE20](v92);
  v86 = &v73 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_22C9066DC();
  v25 = *(v24 - 8);
  v26 = MEMORY[0x28223BE20](v24);
  v28 = &v73 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v30 = &v73 - v29;
  v31 = 0;
  v32 = a2[1];
  v93 = *a2;
  v91 = v32;
  v33 = a2[2];
  v105 = *(v33 + 16);
  v104 = v25 + 88;
  v103 = *MEMORY[0x277D1DBA8];
  v102 = *MEMORY[0x277D1DB98];
  v101 = *MEMORY[0x277D1DB90];
  v100 = *MEMORY[0x277D1DBA0];
  v34 = (v25 + 8);
  v88 = (v25 + 96);
  v94 = v15;
  v98 = (v15 + 32);
  v99 = MEMORY[0x277D84F90];
  while (v105 != v31)
  {
    if (v31 >= *(v33 + 16))
    {
      __break(1u);
LABEL_29:
      result = sub_22C90B4EC();
      __break(1u);
      return result;
    }

    v35 = *(v25 + 16);
    v35(v30, v33 + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v31, v24);
    v35(v28, v30, v24);
    v36 = (*(v25 + 88))(v28, v24);
    if (v36 == v103)
    {
      (*v34)(v30, v24);
      (*v88)(v28, v24);
      v40 = *v98;
      (*v98)(v96, v28, v97);
      v40(v95, v96, v97);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_22C5903C0();
        v99 = v44;
      }

      v41 = *(v99 + 16);
      v42 = v41 + 1;
      if (v41 >= *(v99 + 24) >> 1)
      {
        v75 = v41 + 1;
        v74 = v41;
        sub_22C5903C0();
        v42 = v75;
        v41 = v74;
        v99 = v45;
      }

      ++v31;
      v43 = v99;
      *(v99 + 16) = v42;
      v40((v43 + ((*(v94 + 80) + 32) & ~*(v94 + 80)) + *(v94 + 72) * v41), v95, v97);
    }

    else
    {
      if (v36 != v102 && v36 != v101 && v36 != v100)
      {
        goto LABEL_29;
      }

      v39 = *v34;
      (*v34)(v30, v24);
      v39(v28, v24);
      ++v31;
    }
  }

  v46 = sub_22C90858C();
  v47 = v89;
  v48 = v93;
  v49 = v91;
  sub_22C6053E0(v46, v89);

  v50 = v92;
  if (sub_22C370B74(v47, 1, v92) == 1)
  {

    sub_22C36DD28(v47, &qword_27D9BC030, &unk_22C911CC0);
    type metadata accessor for ExecutionPreconditionEvaluator.EvaluatorError(0);
    sub_22C63A514(&qword_27D9BF580, type metadata accessor for ExecutionPreconditionEvaluator.EvaluatorError, &unk_22C9229D0);
    swift_allocError();
    *v51 = v48;
    v51[1] = v49;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }

  v54 = v86;
  v53 = v87;
  (*(v87 + 32))(v86, v47, v50);
  v55 = v99;
  v56 = v97;
  v57 = v85;
  if (*(v99 + 16) == 1)
  {
    v58 = v81;
    sub_22C58B008(v99, v81);
    if (sub_22C370B74(v58, 1, v56) != 1)
    {

      v68 = v94;
      v69 = v76;
      (*(v94 + 32))(v76, v58, v56);
      v70 = *(v68 + 16);
      v71 = v82;
      v70(v82, v69, v56);
      v72 = type metadata accessor for ExecutionPreconditionEvaluator.ParameterValue(0);
      (*(v53 + 16))(v71 + *(v72 + 20), v54, v50);
      sub_22C36C640(v71, 0, 1, v72);

      sub_22C603D40();
      (*(v94 + 8))(v69, v56);
      return (*(v53 + 8))(v54, v50);
    }

    sub_22C36DD28(v58, &qword_27D9BB908, &qword_22C910960);
  }

  sub_22C58B008(v55, v57);
  if (sub_22C370B74(v57, 1, v56) == 1)
  {
    (*(v53 + 8))(v54, v50);

    return sub_22C36DD28(v57, &qword_27D9BB908, &qword_22C910960);
  }

  else
  {
    v99 = v55;
    v59 = v77;
    sub_22C90935C();
    v60 = v94;
    (*(v94 + 8))(v57, v56);
    v61 = v79;
    v62 = v84;
    v63 = v80;
    (*(v79 + 32))(v84, v59, v80);
    sub_22C90906C();
    v105 = swift_allocBox();
    (*(v61 + 16))(v78, v62, v63);

    sub_22C90903C();
    v64 = v82;
    *v82 = v105;
    (*(v60 + 104))(v64, *MEMORY[0x277D729E0], v56);
    v65 = type metadata accessor for ExecutionPreconditionEvaluator.ParameterValue(0);
    v66 = v86;
    v67 = v87;
    (*(v87 + 16))(v64 + *(v65 + 20), v86, v50);
    sub_22C36C640(v64, 0, 1, v65);
    sub_22C603D40();
    (*(v61 + 8))(v84, v63);
    return (*(v67 + 8))(v66, v50);
  }
}

uint64_t sub_22C63A260(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_22C36985C();
  v4 = sub_22C36BA00();
  v5(v4);
  return a2;
}

uint64_t sub_22C63A2F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_22C3A5908(&qword_27D9BF450, &qword_22C922710);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22C63A384(uint64_t a1)
{
  result = sub_22C901FAC();
  if (v2 <= 0x3F)
  {
    result = sub_22C63A3F8();
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_22C63A3F8()
{
  result = qword_27D9BF5A0;
  if (!qword_27D9BF5A0)
  {
    result = MEMORY[0x277D837D0];
    atomic_store(MEMORY[0x277D837D0], &qword_27D9BF5A0);
  }

  return result;
}

uint64_t sub_22C63A448(uint64_t a1)
{
  result = sub_22C9093BC();
  if (v2 <= 0x3F)
  {
    result = sub_22C901FAC();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_22C63A514(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_22C63A55C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_22C36985C();
  v4 = sub_22C36BA00();
  v5(v4);
  return a2;
}

uint64_t sub_22C63A5B8(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_22C36985C();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_22C63A610()
{
  result = qword_27D9BF5C8;
  if (!qword_27D9BF5C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BF5C8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ExecutionPreconditionEvaluator.ParameterValue.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_22C63A744()
{
  result = qword_27D9BF5F8;
  if (!qword_27D9BF5F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BF5F8);
  }

  return result;
}

unint64_t sub_22C63A79C()
{
  result = qword_27D9BF600;
  if (!qword_27D9BF600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BF600);
  }

  return result;
}

unint64_t sub_22C63A7F4()
{
  result = qword_27D9BF608;
  if (!qword_27D9BF608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BF608);
  }

  return result;
}

uint64_t sub_22C63A848@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v31 = a2;
  v5 = type metadata accessor for TranscriptValueFetcher(0);
  v6 = v5 - 8;
  MEMORY[0x28223BE20](v5);
  sub_22C369838();
  v9 = v8 - v7;
  v10 = sub_22C3A5908(&qword_27D9BF610, &qword_22C922B50);
  v11 = sub_22C369914(v10);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v28[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12);
  v16 = &v28[-v15];
  sub_22C90880C();
  sub_22C36985C();
  (*(v17 + 16))(v9, v3);
  *(v9 + *(v6 + 28)) = *(v3 + *(type metadata accessor for ExpressionEvaluator(0) + 20));

  sub_22C72990C(a1, v16);
  sub_22C38BC84();
  sub_22C643FB8(v9, v18);
  v19 = sub_22C36ECB4();
  sub_22C379DF8(v19, v20, &qword_27D9BF610, &qword_22C922B50);
  v21 = sub_22C9025EC();
  v22 = sub_22C36FD7C();
  if (sub_22C370B74(v22, v23, v21) == 1)
  {
    sub_22C36DD28(v14, &qword_27D9BF610, &qword_22C922B50);
    sub_22C90735C();
    sub_22C3A5F00();
    sub_22C37A198();
    swift_allocError();
    v24 = v30;
    v25 = v29;
    *v26 = *&v28[8];
    *(v26 + 16) = v25;
    *(v26 + 32) = v24;
    swift_willThrow();
    return sub_22C36DD28(v16, &qword_27D9BF610, &qword_22C922B50);
  }

  else
  {
    sub_22C36DD28(v16, &qword_27D9BF610, &qword_22C922B50);
    return (*(*(v21 - 8) + 32))(v31, v14, v21);
  }
}

uint64_t sub_22C63AB08(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  v4 = sub_22C908AEC();
  v3[10] = v4;
  sub_22C3699B8(v4);
  v3[11] = v5;
  v3[12] = sub_22C3699D4();
  v6 = sub_22C90880C();
  v3[13] = v6;
  sub_22C3699B8(v6);
  v3[14] = v7;
  v3[15] = sub_22C3699D4();
  v8 = type metadata accessor for PayloadFormatter(0);
  sub_22C369914(v8);
  v3[16] = sub_22C3699D4();
  v9 = sub_22C3A5908(&qword_27D9BC028, &unk_22C9134B0);
  sub_22C369914(v9);
  v3[17] = sub_22C3699D4();
  v10 = sub_22C90941C();
  v3[18] = v10;
  sub_22C3699B8(v10);
  v3[19] = v11;
  v3[20] = sub_22C36D0D4();
  v3[21] = swift_task_alloc();
  v12 = sub_22C90731C();
  v3[22] = v12;
  sub_22C3699B8(v12);
  v3[23] = v13;
  v3[24] = sub_22C36D0D4();
  v3[25] = swift_task_alloc();
  v14 = sub_22C908C5C();
  v3[26] = v14;
  sub_22C3699B8(v14);
  v3[27] = v15;
  v3[28] = sub_22C36D0D4();
  v3[29] = swift_task_alloc();
  v3[30] = swift_task_alloc();
  v3[31] = swift_task_alloc();
  v16 = type metadata accessor for ExpressionEvaluator(0);
  v3[32] = v16;
  sub_22C369914(v16);
  v3[33] = sub_22C36D0D4();
  v3[34] = swift_task_alloc();
  v3[35] = swift_task_alloc();
  v3[36] = swift_task_alloc();
  v17 = sub_22C3A5908(&qword_27D9BF318, &qword_22C9225A0);
  sub_22C369914(v17);
  v3[37] = sub_22C36D0D4();
  v3[38] = swift_task_alloc();
  v3[39] = swift_task_alloc();
  v3[40] = swift_task_alloc();
  v3[41] = swift_task_alloc();
  v3[42] = swift_task_alloc();
  v3[43] = swift_task_alloc();
  v3[44] = swift_task_alloc();
  v3[45] = swift_task_alloc();
  v18 = type metadata accessor for ValueFormatter(0);
  v3[46] = v18;
  sub_22C369914(v18);
  v3[47] = sub_22C3699D4();
  v19 = sub_22C9093BC();
  v3[48] = v19;
  sub_22C3699B8(v19);
  v3[49] = v20;
  v3[50] = sub_22C36D0D4();
  v3[51] = swift_task_alloc();
  v3[52] = swift_task_alloc();
  v21 = sub_22C906FBC();
  v3[53] = v21;
  sub_22C3699B8(v21);
  v3[54] = v22;
  v3[55] = sub_22C3699D4();
  v23 = sub_22C906FFC();
  v3[56] = v23;
  sub_22C3699B8(v23);
  v3[57] = v24;
  v3[58] = sub_22C3699D4();
  v25 = sub_22C906D7C();
  v3[59] = v25;
  sub_22C3699B8(v25);
  v3[60] = v26;
  v3[61] = sub_22C3699D4();
  v27 = sub_22C906DDC();
  v3[62] = v27;
  sub_22C3699B8(v27);
  v3[63] = v28;
  v3[64] = sub_22C3699D4();
  v29 = sub_22C906F2C();
  v3[65] = v29;
  sub_22C3699B8(v29);
  v3[66] = v30;
  v3[67] = sub_22C3699D4();
  v31 = sub_22C90654C();
  v3[68] = v31;
  sub_22C3699B8(v31);
  v3[69] = v32;
  v3[70] = sub_22C3699D4();
  sub_22C36BB08();

  return MEMORY[0x2822009F8](v33, v34, v35);
}

uint64_t sub_22C63BE34()
{
  sub_22C369A30();
  *v3 = v2;
  v4 = *v1;
  sub_22C369A30();
  *v5 = v4;
  *(v6 + 576) = v0;

  sub_22C36BB08();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_22C63BF3C()
{
  (*(v0[60] + 8))(v0[61], v0[59]);
  sub_22C3723D4();
  sub_22C646A0C();
  sub_22C37FED0(v1, v2, v3, v4, v5, v6, v7, v8);

  sub_22C369C50();

  return v9();
}

uint64_t sub_22C63C100()
{
  v2 = *v1;
  sub_22C369A30();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 592) = v0;

  sub_22C643FB8(*(v2 + 128), type metadata accessor for PayloadFormatter);
  sub_22C36BB08();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_22C63C240()
{
  v2 = v0[34];
  v3 = v0[27];
  v4 = v0[25];
  v5 = v0[9];
  MEMORY[0x2318B47E0]();
  sub_22C374E9C();
  sub_22C6469B0(v5, v2, v6);
  v7 = sub_22C3806B8();
  sub_22C6469B0(v7, v8, v4);
  v9 = 0;
  v10 = *(v1 + 16);
  v68 = v3;
  v11 = &qword_27D9BF318;
  while (v10 != v9)
  {
    v13 = v0[32];
    v12 = v0[33];
    sub_22C901FAC();
    if (*(*(v12 + *(v13 + 20)) + 16) && (sub_22C628274(), (v14 & 1) != 0))
    {
      v15 = v11;
      v16 = v1;
      v17 = v0[29];
      v18 = v0[26];
      sub_22C370304();
      v19(v17);
      sub_22C908B8C();
      v20 = v17;
      v1 = v16;
      v11 = v15;
      (*(v68 + 8))(v20, v18);
      sub_22C901ECC();
      v21 = sub_22C36FD7C();
      sub_22C36D0A8(v21, v22, v23);
      if (!v24)
      {
        sub_22C36DD28(v0[39], &qword_27D9BF318, &qword_22C9225A0);
        goto LABEL_10;
      }
    }

    else
    {
      v25 = sub_22C901ECC();
      sub_22C646A54(v25);
    }

    sub_22C36DD28(v0[39], v11, &qword_22C9225A0);
    ++v9;
  }

  v9 = v10;
LABEL_10:
  v26 = *(v1 + 16);
  if (v9 != v26)
  {
    if (v9 >= v26)
    {
      __break(1u);
    }

    else
    {
      v31 = v0[34];
      v32 = v0[32];
      sub_22C901FAC();
      if (*(*(v31 + *(v32 + 20)) + 16) && (sub_22C628274(), (v33 & 1) != 0))
      {
        v34 = v0[28];
        sub_22C370304();
        v35(v34);
        sub_22C908B8C();
        v36 = sub_22C36ECB4();
        v37(v36);
      }

      else
      {
        v38 = sub_22C901ECC();
        sub_22C646A54(v38);
      }

      v40 = v0[37];
      v39 = v0[38];
      sub_22C36B06C();
      sub_22C643FB8(v41, v42);
      sub_22C379DF8(v39, v40, &qword_27D9BF318, &qword_22C9225A0);
      v29 = sub_22C901ECC();
      sub_22C36D0A8(v40, 1, v29);
      if (!v24)
      {
        v43 = v0[38];
        (*(*(v29 - 8) + 32))(v0[40], v0[37], v29);
        sub_22C36DD28(v43, &qword_27D9BF318, &qword_22C9225A0);
        v30 = 0;
        goto LABEL_19;
      }
    }

    sub_22C36B06C();
    result = sub_22C643FB8(v64, v65);
    __break(1u);
    return result;
  }

  sub_22C36B06C();
  sub_22C643FB8(v27, v28);
  v29 = sub_22C901ECC();
  v30 = 1;
LABEL_19:
  v44 = v0[50];
  v45 = v0[51];
  v46 = v0[49];
  v48 = v0[40];
  v47 = v0[41];
  v49 = v0[33];
  v50 = v0[23];
  v70 = v0[22];
  v71 = v0[25];
  v69 = v0[21];
  v51 = v0[19];
  v67 = v0[18];
  v66 = v0[48];
  sub_22C36C640(v48, v30, 1, v29);

  sub_22C36B06C();
  sub_22C643FB8(v49, v52);
  sub_22C646A98();
  v53(v45, v44, v66);
  sub_22C379DF8(v48, v47, &qword_27D9BF318, &qword_22C9225A0);
  sub_22C9025CC();
  sub_22C36DD28(v48, &qword_27D9BF318, &qword_22C9225A0);
  (*(v46 + 8))(v44, v66);
  (*(v51 + 8))(v69, v67);
  (*(v50 + 8))(v71, v70);
  sub_22C3723D4();
  sub_22C646A0C();
  sub_22C37FED0(v54, v55, v56, v57, v58, v59, v60, v61);

  sub_22C369C50();

  return v62();
}

uint64_t sub_22C63CBDC@<X0>(void (*a1)(uint64_t *, uint64_t)@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v601[2] = a2;
  v575 = sub_22C90906C();
  v572 = *(v575 - 8);
  MEMORY[0x28223BE20](v575);
  v574 = &v553 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v600 = sub_22C90931C();
  v599 = *(v600 - 8);
  v6 = MEMORY[0x28223BE20](v600);
  v559 = &v553 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v565 = &v553 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v558 = &v553 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v564 = &v553 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v579 = (&v553 - v15);
  v16 = MEMORY[0x28223BE20](v14);
  v585 = (&v553 - v17);
  v18 = MEMORY[0x28223BE20](v16);
  v591 = (&v553 - v19);
  v20 = MEMORY[0x28223BE20](v18);
  v592 = (&v553 - v21);
  MEMORY[0x28223BE20](v20);
  v596 = (&v553 - v22);
  v601[0] = sub_22C3A5908(&qword_27D9BAA50, &qword_22C90D058);
  v23 = MEMORY[0x28223BE20](v601[0]);
  v588 = &v553 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v23);
  v593 = &v553 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v598 = &v553 - v28;
  MEMORY[0x28223BE20](v27);
  v602 = &v553 - v29;
  v30 = sub_22C3A5908(&qword_27D9BF318, &qword_22C9225A0);
  MEMORY[0x28223BE20](v30 - 8);
  v601[1] = &v553 - v31;
  v616 = sub_22C9093BC();
  v615 = *(v616 - 8);
  v32 = MEMORY[0x28223BE20](v616);
  v562 = (&v553 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  v34 = MEMORY[0x28223BE20](v32);
  v568 = (&v553 - v35);
  v36 = MEMORY[0x28223BE20](v34);
  v557 = &v553 - v37;
  v38 = MEMORY[0x28223BE20](v36);
  v561 = (&v553 - v39);
  v40 = MEMORY[0x28223BE20](v38);
  v567 = (&v553 - v41);
  v42 = MEMORY[0x28223BE20](v40);
  v556 = &v553 - v43;
  v44 = MEMORY[0x28223BE20](v42);
  v560 = &v553 - v45;
  v46 = MEMORY[0x28223BE20](v44);
  v563 = &v553 - v47;
  v48 = MEMORY[0x28223BE20](v46);
  v566 = &v553 - v49;
  v50 = MEMORY[0x28223BE20](v48);
  v569 = &v553 - v51;
  v52 = MEMORY[0x28223BE20](v50);
  v576 = &v553 - v53;
  v54 = MEMORY[0x28223BE20](v52);
  v582 = (&v553 - v55);
  v56 = MEMORY[0x28223BE20](v54);
  v573 = &v553 - v57;
  v58 = MEMORY[0x28223BE20](v56);
  v580 = &v553 - v59;
  v60 = MEMORY[0x28223BE20](v58);
  v570 = (&v553 - v61);
  v62 = MEMORY[0x28223BE20](v60);
  v571 = &v553 - v63;
  v64 = MEMORY[0x28223BE20](v62);
  v581 = (&v553 - v65);
  v66 = MEMORY[0x28223BE20](v64);
  v586 = (&v553 - v67);
  v68 = MEMORY[0x28223BE20](v66);
  v577 = (&v553 - v69);
  v70 = MEMORY[0x28223BE20](v68);
  v578 = &v553 - v71;
  v72 = MEMORY[0x28223BE20](v70);
  v587 = &v553 - v73;
  v74 = MEMORY[0x28223BE20](v72);
  v594 = &v553 - v75;
  v76 = MEMORY[0x28223BE20](v74);
  v583 = (&v553 - v77);
  v78 = MEMORY[0x28223BE20](v76);
  v584 = &v553 - v79;
  v80 = MEMORY[0x28223BE20](v78);
  v595 = &v553 - v81;
  v82 = MEMORY[0x28223BE20](v80);
  v597 = &v553 - v83;
  v84 = MEMORY[0x28223BE20](v82);
  v589 = (&v553 - v85);
  v86 = MEMORY[0x28223BE20](v84);
  v590 = &v553 - v87;
  v88 = MEMORY[0x28223BE20](v86);
  v603 = (&v553 - v89);
  v90 = MEMORY[0x28223BE20](v88);
  v607 = &v553 - v91;
  MEMORY[0x28223BE20](v90);
  v623 = &v553 - v92;
  v625 = sub_22C901FAC();
  v632 = *(v625 - 1);
  MEMORY[0x28223BE20](v625);
  v94 = (&v553 - ((v93 + 15) & 0xFFFFFFFFFFFFFFF0));
  v624 = type metadata accessor for TranscriptValueFetcher(0);
  MEMORY[0x28223BE20](v624);
  v96 = &v553 - ((v95 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = sub_22C3A5908(&qword_27D9BF610, &qword_22C922B50);
  v98 = MEMORY[0x28223BE20](v97 - 8);
  v618 = &v553 - ((v99 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = MEMORY[0x28223BE20](v98);
  v619 = &v553 - v101;
  v102 = MEMORY[0x28223BE20](v100);
  v104 = &v553 - v103;
  MEMORY[0x28223BE20](v102);
  v106 = &v553 - v105;
  v107 = sub_22C9025EC();
  v621 = *(v107 - 8);
  v108 = MEMORY[0x28223BE20](v107);
  v608 = &v553 - ((v109 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v108);
  v617 = &v553 - v110;
  v620 = sub_22C906D9C();
  v622 = *(v620 - 8);
  v111 = MEMORY[0x28223BE20](v620);
  v606 = &v553 - ((v112 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v111);
  v114 = &v553 - v113;
  sub_22C906DCC();
  v115 = sub_22C90880C();
  v116 = *(v115 - 8);
  v611 = *(v116 + 16);
  v610 = (v116 + 16);
  v611(v96, v3, v115);
  v117 = *(type metadata accessor for ExpressionEvaluator(0) + 20);
  v614 = v3;
  v118 = *(v3 + v117);
  *&v96[*(v624 + 20)] = v118;

  v613 = a1;
  sub_22C906DAC();
  sub_22C729D78(v94, v106);
  v119 = *(v632 + 8);
  v612 = v94;
  v632 += 8;
  v609 = v119;
  v119(v94, v625);
  sub_22C643FB8(v96, type metadata accessor for TranscriptValueFetcher);
  sub_22C379DF8(v106, v104, &qword_27D9BF610, &qword_22C922B50);
  if (sub_22C370B74(v104, 1, v107) == 1)
  {
    sub_22C36DD28(v104, &qword_27D9BF610, &qword_22C922B50);
    sub_22C90735C();
    sub_22C3A5F00();
    swift_allocError();
    v120 = v628;
    v121 = v627;
    *v122 = v626;
    *(v122 + 16) = v121;
    *(v122 + 32) = v120;
    swift_willThrow();
    sub_22C36DD28(v106, &qword_27D9BF610, &qword_22C922B50);
    return (*(v622 + 8))(v114, v620);
  }

  v555 = "itionEvaluatorError";
  v604 = v114;
  sub_22C36DD28(v106, &qword_27D9BF610, &qword_22C922B50);
  v124 = v617;
  v554 = *(v621 + 32);
  v554(v617, v104, v107);
  sub_22C90207C();
  v611(v96, v614, v115);
  *&v96[*(v624 + 20)] = v118;

  v125 = v612;
  sub_22C906DBC();
  v126 = v619;
  sub_22C729D78(v125, v619);
  v609(v125, v625);
  sub_22C643FB8(v96, type metadata accessor for TranscriptValueFetcher);
  v127 = v618;
  sub_22C379DF8(v126, v618, &qword_27D9BF610, &qword_22C922B50);
  v128 = sub_22C370B74(v127, 1, v107);
  v129 = v623;
  v130 = v621;
  v131 = v107;
  if (v128 == 1)
  {
    sub_22C36DD28(v618, &qword_27D9BF610, &qword_22C922B50);
    sub_22C90735C();
    sub_22C3A5F00();
    swift_allocError();
    v132 = v631;
    v133 = v630;
    *v134 = v629;
    *(v134 + 16) = v133;
    *(v134 + 32) = v132;
    swift_willThrow();
    sub_22C36DD28(v619, &qword_27D9BF610, &qword_22C922B50);
    (*(v130 + 8))(v124, v107);
    (*(v622 + 8))(v604, v620);
    return (*(v615 + 8))(v129, v616);
  }

  sub_22C36DD28(v619, &qword_27D9BF610, &qword_22C922B50);
  v135 = v608;
  v632 = v131;
  v554(v608, v618, v131);
  v136 = v607;
  sub_22C90207C();
  v137 = v622;
  v138 = *(v622 + 16);
  v139 = v606;
  v140 = v604;
  v141 = v620;
  v138(v606, v604, v620);
  v142 = v137;
  v143 = v141;
  v144 = (*(v142 + 88))(v139, v141);
  v145 = v615;
  if (v144 == *MEMORY[0x277D1DE50])
  {
    goto LABEL_6;
  }

  if (v144 == *MEMORY[0x277D1DE38])
  {
    v155 = v141;
    v156 = v623;
    v157 = v605;
    sub_22C644010(v623, v136, v603);
    if (v157)
    {
      v158 = *(v145 + 8);
      v159 = v616;
      v158(v136, v616);
      v160 = *(v621 + 8);
      v161 = v135;
      v162 = v632;
      v160(v161, v632);
      v160(v617, v162);
      (*(v622 + 8))(v604, v155);
      return (v158)(v156, v159);
    }

    else
    {
      v206 = v622;
      v207 = v617;
      sub_22C9025BC();
      sub_22C9025CC();
      v208 = *(v145 + 8);
      v209 = v616;
      v208(v136, v616);
      v210 = *(v621 + 8);
      v605 = 0;
      v211 = v209;
      v212 = v632;
      v210(v608, v632);
      v210(v207, v212);
      (*(v206 + 8))(v604, v620);
      return (v208)(v156, v211);
    }
  }

  if (v144 == *MEMORY[0x277D1DE88])
  {
    goto LABEL_6;
  }

  if (v144 == *MEMORY[0x277D1DE80])
  {
    v625 = v138;
    v163 = *(v601[0] + 48);
    v164 = *(v615 + 16);
    v165 = v602;
    v166 = v623;
    v167 = v616;
    v164(v602, v623, v616);
    v619 = v163;
    v624 = v145 + 16;
    v164(&v165[v163], v136, v167);
    v168 = *(v145 + 88);
    v169 = v168(v165, v167);
    if (v169 == *MEMORY[0x277D72A58])
    {
      v612 = v168;
      LODWORD(v613) = v169;
      v170 = v597;
      v171 = v616;
      v618 = v164;
      v164(v597, v165, v616);
      v172 = *(v145 + 96);
      v172(v170, v171);
      v614 = *v170;
      v173 = v171;
      v174 = swift_projectBox();
      v175 = v599;
      v176 = *(v599 + 88);
      v177 = v176(v174, v600);
      if (v177 == *MEMORY[0x277D729A8])
      {
        v609 = v176;
        v610 = v172;
        LODWORD(v611) = v177;
        v178 = *(v175 + 16);
        v179 = v596;
        v180 = v173;
        v181 = v600;
        v606 = (v175 + 16);
        v603 = v178;
        (v178)(v596, v174, v600);
        v182 = v181;
        v183 = v180;
        v184 = *(v175 + 96);
        v184(v179, v182);
        v185 = *v179;
        v186 = v619;
        v187 = v612(&v602[v619], v183);
        if (v187 == v613)
        {
          v188 = v595;
          (v618)(v595, &v602[v186], v183);
          v610(v188, v183);
          v612 = swift_projectBox();
          v189 = v600;
          v190 = v609(v612, v600);
          v191 = v611;
          if (v190 == v611)
          {
            v192 = v592;
            (v603)(v592, v612, v189);
            v184(v192, v189);
            v193 = *v192;
            v194 = swift_allocBox();
            v195 = v602;
            v196 = v194;
            *v197 = v185 - v193;
            (*(v599 + 104))(v197, v191, v189);
            v198 = v589;
            *v589 = v196;
            v199 = v615;
            (*(v615 + 104))(v198, v613, v183);

            v200 = *(v199 + 8);
            v200(&v195[v186], v183);
            v200(v195, v183);
            (*(v199 + 32))(v590, v198, v183);
LABEL_18:
            v201 = v617;
            sub_22C9025BC();
            sub_22C9025CC();
            v200(v607, v183);
            v202 = *(v621 + 8);
            v203 = v632;
            v202(v608, v632);
            v202(v201, v203);
            (*(v622 + 8))(v604, v620);
            v204 = v623;
            v205 = v183;
            return (v200)(v204, v205);
          }
        }
      }

      v145 = v615;

      v166 = v623;
      v136 = v607;
      v164 = v618;
    }

    v619 = type metadata accessor for ExpressionEvaluatorError(0);
    sub_22C64644C(&qword_27D9BF618, type metadata accessor for ExpressionEvaluatorError, &unk_22C922C14);
    v605 = swift_allocError();
    v250 = v249;
    v251 = sub_22C3A5908(&qword_27D9BF620, &unk_22C922B70);
    v252 = v145;
    v253 = *(v251 + 48);
    v254 = v616;
    v618 = *(v251 + 64);
    v625(v250, v604, v620);
    v164((v250 + v253), v166, v254);
    v164((v250 + v618), v136, v254);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v255 = *(v252 + 8);
    v255(v136, v254);
    v256 = *(v621 + 8);
    v257 = v632;
    v256(v608, v632);
    v256(v617, v257);
    (*(v622 + 8))(v604, v620);
    v258 = &v630 + 8;
    goto LABEL_30;
  }

  if (v144 == *MEMORY[0x277D1DE18])
  {
    goto LABEL_6;
  }

  if (v144 == *MEMORY[0x277D1DE58])
  {
    v625 = v138;
    v213 = *(v601[0] + 48);
    v214 = *(v615 + 16);
    v215 = v598;
    v216 = v623;
    v217 = v616;
    v214(v598, v623, v616);
    v619 = v213;
    v624 = v145 + 16;
    v214(&v215[v213], v136, v217);
    v218 = *(v145 + 88);
    v219 = v218(v215, v217);
    if (v219 == *MEMORY[0x277D72A58])
    {
      v612 = v218;
      LODWORD(v613) = v219;
      v220 = v594;
      v221 = v616;
      v618 = v214;
      v214(v594, v215, v616);
      v222 = *(v145 + 96);
      v222(v220, v221);
      v614 = *v220;
      v223 = v221;
      v224 = swift_projectBox();
      v225 = v599;
      v226 = *(v599 + 88);
      v227 = v226(v224, v600);
      if (v227 == *MEMORY[0x277D729A8])
      {
        v609 = v226;
        v610 = v222;
        LODWORD(v611) = v227;
        v228 = *(v225 + 16);
        v229 = v591;
        v230 = v223;
        v231 = v600;
        v606 = (v225 + 16);
        v603 = v228;
        (v228)(v591, v224, v600);
        v232 = v231;
        v183 = v230;
        v233 = *(v225 + 96);
        v233(v229, v232);
        v234 = *v229;
        v235 = v619;
        v236 = v612(&v598[v619], v183);
        if (v236 == v613)
        {
          v237 = v587;
          (v618)(v587, &v598[v235], v183);
          v610(v237, v183);
          v612 = swift_projectBox();
          v238 = v600;
          v239 = v609(v612, v600);
          v240 = v611;
          if (v239 == v611)
          {
            v241 = v592;
            (v603)(v592, v612, v238);
            v233(v241, v238);
            v242 = *v241;
            v243 = swift_allocBox();
            v244 = v598;
            v245 = v243;
            *v246 = v234 / v242;
            (*(v599 + 104))(v246, v240, v238);
            v247 = v583;
            *v583 = v245;
            v248 = v615;
            (*(v615 + 104))(v247, v613, v183);

            v200 = *(v248 + 8);
            v200(&v244[v235], v183);
            v200(v244, v183);
            (*(v248 + 32))(v584, v247, v183);
            goto LABEL_18;
          }
        }
      }

      v145 = v615;

      v216 = v623;
      v136 = v607;
      v214 = v618;
    }

    v619 = type metadata accessor for ExpressionEvaluatorError(0);
    sub_22C64644C(&qword_27D9BF618, type metadata accessor for ExpressionEvaluatorError, &unk_22C922C14);
    v605 = swift_allocError();
    v299 = v298;
    v300 = sub_22C3A5908(&qword_27D9BF620, &unk_22C922B70);
    v301 = v145;
    v302 = *(v300 + 48);
    v254 = v616;
    v618 = *(v300 + 64);
    v625(v299, v604, v620);
    v214((v299 + v302), v216, v254);
    v214((v299 + v618), v136, v254);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v255 = *(v301 + 8);
    v255(v136, v254);
    v303 = *(v621 + 8);
    v304 = v632;
    v303(v608, v632);
    v303(v617, v304);
    (*(v622 + 8))(v604, v620);
    v258 = &v627;
LABEL_30:
    sub_22C36DD28(*(v258 - 32), &qword_27D9BAA50, &qword_22C90D058);
    return (v255)(v623, v254);
  }

  if (v144 == *MEMORY[0x277D1DE00])
  {
    goto LABEL_6;
  }

  if (v144 == *MEMORY[0x277D1DE70])
  {
    v625 = v138;
    v259 = *(v601[0] + 48);
    v260 = *(v615 + 16);
    v261 = v593;
    v262 = v616;
    v260(v593, v623, v616);
    v263 = v136;
    v264 = (v145 + 16);
    v260(&v261[v259], v263, v262);
    v265 = v145;
    v266 = *(v145 + 88);
    v267 = v266(v261, v262);
    if (v267 == *MEMORY[0x277D72A58])
    {
      LODWORD(v614) = v267;
      v618 = v259;
      v268 = v586;
      v269 = v616;
      v624 = v260;
      v260(v586, v261, v616);
      v613 = *(v265 + 96);
      v613(v268, v269);
      v619 = *v268;
      v270 = swift_projectBox();
      v271 = v599;
      v612 = *(v599 + 88);
      v272 = v612(v270, v600);
      if (v272 == *MEMORY[0x277D729A8])
      {
        LODWORD(v610) = v272;
        v611 = v264;
        v273 = *(v271 + 16);
        v274 = v585;
        v275 = v270;
        v276 = v600;
        v609 = (v271 + 16);
        v606 = v273;
        (v273)(v585, v275, v600);
        v603 = *(v271 + 96);
        (v603)(v274, v276);
        v277 = *v274;
        v278 = v618;
        v279 = v266(&v261[v618], v616);
        if (v279 == v614)
        {
          v280 = &v261[v278];
          v281 = v581;
          v282 = v616;
          (v624)(v581, v280, v616);
          v613(v281, v282);
          v283 = swift_projectBox();
          v284 = v600;
          v285 = v612(v283, v600);
          v286 = v610;
          if (v285 == v610)
          {
            v287 = v284;
            v288 = v592;
            (v606)(v592, v283, v287);
            (v603)(v288, v287);
            v289 = *v288;
            v290 = swift_allocBox();
            *v291 = v277 * v289;
            (*(v599 + 104))(v291, v286, v287);
            v292 = v577;
            *v577 = v290;
            v293 = v615;
            v294 = v616;
            (*(v615 + 104))(v292, v614, v616);

            v200 = *(v293 + 8);
            v200(&v261[v618], v294);
            v200(v261, v294);
            (*(v293 + 32))(v578, v292, v294);
LABEL_38:
            v295 = v617;
            sub_22C9025BC();
            sub_22C9025CC();
            v200(v607, v294);
            v296 = *(v621 + 8);
            v297 = v632;
            v296(v608, v632);
            v296(v295, v297);
            (*(v622 + 8))(v604, v620);
            v204 = v623;
            v205 = v294;
            return (v200)(v204, v205);
          }
        }
      }

      v265 = v615;
      v260 = v624;
    }

    type metadata accessor for ExpressionEvaluatorError(0);
    sub_22C64644C(&qword_27D9BF618, type metadata accessor for ExpressionEvaluatorError, &unk_22C922C14);
    v605 = swift_allocError();
    v372 = v371;
    v373 = sub_22C3A5908(&qword_27D9BF620, &unk_22C922B70);
    v374 = v265;
    v375 = *(v373 + 48);
    v376 = v616;
    v377 = *(v373 + 64);
    v625(v372, v604, v620);
    v378 = (v372 + v375);
    v379 = v623;
    v260(v378, v623, v376);
    v380 = (v372 + v377);
    v381 = v607;
    v260(v380, v607, v376);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v382 = *(v374 + 8);
    v382(v381, v376);
    v383 = *(v621 + 8);
    v384 = v632;
    v383(v608, v632);
    v383(v617, v384);
    (*(v622 + 8))(v604, v620);
    v385 = &v623;
    goto LABEL_59;
  }

  if (v144 == *MEMORY[0x277D1DE10])
  {
LABEL_6:
    type metadata accessor for ExpressionEvaluatorError(0);
    v146 = v140;
    v147 = v622;
    sub_22C64644C(&qword_27D9BF618, type metadata accessor for ExpressionEvaluatorError, &unk_22C922C14);
    swift_allocError();
    v138(v148, v146, v143);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v149 = *(v145 + 8);
    v150 = v616;
    v149(v607, v616);
    v151 = *(v621 + 8);
    v152 = v632;
    v151(v608, v632);
    v151(v617, v152);
    (*(v147 + 8))(v146, v620);
    v153 = v623;
    v154 = v150;
    return (v149)(v153, v154);
  }

  if (v144 == *MEMORY[0x277D1DE60])
  {
    v625 = v138;
    v305 = *(v601[0] + 48);
    v307 = v615 + 16;
    v306 = *(v615 + 16);
    v308 = v588;
    v309 = v616;
    v306(v588, v623, v616);
    v624 = v305;
    v306(&v308[v305], v136, v309);
    v310 = v145;
    v311 = *(v145 + 88);
    v312 = v311(v308, v309);
    v313 = v599;
    if (v312 == *MEMORY[0x277D72A58])
    {
      LODWORD(v614) = v312;
      v314 = v580;
      v315 = v308;
      v316 = v616;
      v618 = v306;
      v619 = v307;
      v306(v580, v315, v616);
      v317 = *(v310 + 96);
      v612 = (v310 + 96);
      v611 = v317;
      (v317)(v314, v316);
      v318 = *v314;
      v319 = swift_projectBox();
      v320 = v600;
      v610 = v313[11];
      v321 = (v610)(v319, v600);
      v322 = *MEMORY[0x277D729A8];
      LODWORD(v613) = v321;
      if (v321 == v322)
      {
        v609 = v318;
        v323 = v579;
        v606 = v313[2];
        (v606)(v579, v319, v320);
        v324 = v320;
        v325 = v313[12];
        v325(v323, v324);
        v326 = *v323;
        v327 = v311(&v588[v624], v616);
        if (v327 == v614)
        {
          v328 = v573;
          v329 = v616;
          (v618)(v573, &v588[v624], v616);
          (v611)(v328, v329);
          v330 = swift_projectBox();
          v331 = (v610)(v330, v600);
          if (v331 == v613)
          {
            v332 = v592;
            v333 = v330;
            v334 = v600;
            (v606)(v592, v333, v600);
            v325(v332, v334);
            v335 = *v332;
            v336 = swift_allocBox();
            v338 = v337;
            *v337 = pow(v326, v335);
            (*(v599 + 104))(v338, v613, v334);
            v339 = v570;
            *v570 = v336;
            v340 = v615;
            v294 = v616;
            (*(v615 + 104))(v339, v614, v616);

            v200 = *(v340 + 8);
            v341 = v588;
            v200(&v588[v624], v294);
            v200(v341, v294);
            (*(v340 + 32))(v571, v339, v294);
            goto LABEL_38;
          }
        }
      }

      v310 = v615;
      v306 = v618;
    }

    type metadata accessor for ExpressionEvaluatorError(0);
    sub_22C64644C(&qword_27D9BF618, type metadata accessor for ExpressionEvaluatorError, &unk_22C922C14);
    v605 = swift_allocError();
    v417 = v416;
    v418 = sub_22C3A5908(&qword_27D9BF620, &unk_22C922B70);
    v419 = *(v418 + 48);
    v376 = v616;
    v420 = *(v418 + 64);
    v625(v417, v604, v620);
    v421 = (v417 + v419);
    v379 = v623;
    v306(v421, v623, v376);
    v422 = (v417 + v420);
    v423 = v607;
    v306(v422, v607, v376);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v382 = *(v310 + 8);
    v382(v423, v376);
    v424 = *(v621 + 8);
    v425 = v632;
    v424(v608, v632);
    v424(v617, v425);
    (*(v622 + 8))(v604, v620);
    v385 = &v618;
LABEL_59:
    sub_22C36DD28(*(v385 - 32), &qword_27D9BAA50, &qword_22C90D058);
    return (v382)(v379, v376);
  }

  v342 = v599;
  if (v144 == *MEMORY[0x277D1DE48])
  {
    v343 = v600;
    v344 = swift_allocBox();
    v346 = v345;
    *v345 = sub_22C9093AC() & 1;
    (*(v342 + 104))(v346, *MEMORY[0x277D72988], v343);
    v347 = v616;
    v348 = v135;
    v349 = v582;
    *v582 = v344;
    (*(v145 + 104))(v349, *MEMORY[0x277D72A58], v347);
    v350 = v617;
    sub_22C9025BC();
    sub_22C9025CC();
    v351 = *(v145 + 8);
    v351(v136, v347);
    v352 = *(v621 + 8);
    v353 = v632;
    v352(v348, v632);
    v352(v350, v353);
    (*(v622 + 8))(v604, v620);
    return (v351)(v623, v347);
  }

  if (v144 == *MEMORY[0x277D1DE78])
  {
    v354 = v135;
    v355 = v136;
    v356 = v600;
    v357 = swift_allocBox();
    v359 = v358;
    sub_22C64644C(&qword_27D9BF1E8, MEMORY[0x277D72A78], MEMORY[0x277D72A90]);
    v360 = v623;
    v361 = v355;
    v362 = v616;
    *v359 = (sub_22C90A0BC() & 1) == 0;
    (*(v342 + 104))(v359, *MEMORY[0x277D72988], v356);
    v363 = v362;
    v364 = v582;
    *v582 = v357;
    v365 = v615;
    (*(v615 + 104))(v364, *MEMORY[0x277D72A58], v362);
    v366 = v361;
    v367 = v617;
    sub_22C9025BC();
    sub_22C9025CC();
    v368 = *(v365 + 8);
    v368(v366, v362);
    v369 = *(v621 + 8);
    v370 = v632;
    v369(v354, v632);
    v369(v367, v370);
    (*(v622 + 8))(v604, v620);
    return (v368)(v360, v363);
  }

  if (v144 != *MEMORY[0x277D1DE28])
  {
    v404 = v138;
    if (v144 == *MEMORY[0x277D1DE20])
    {
      v405 = sub_22C90936C();
      if ((v406 & 1) == 0)
      {
        v407 = *&v405;
        *&v408 = COERCE_DOUBLE(sub_22C90936C());
        if ((v409 & 1) == 0)
        {
          v410 = v407;
          v411 = *&v408;
          v412 = v600;
          v413 = swift_allocBox();
          *v414 = v411 <= v410;
          (*(v599 + 104))(v414, *MEMORY[0x277D72988], v412);
          v415 = v601;
LABEL_99:
          v532 = *(v415 - 32);
          *v532 = v413;
          v527 = *MEMORY[0x277D72A58];
          v524 = v615;
          v525 = *(v615 + 104);
          v526 = v532;
          goto LABEL_100;
        }
      }

      goto LABEL_84;
    }

    if (v144 == *MEMORY[0x277D1DDF8])
    {
      v432 = sub_22C90936C();
      if ((v433 & 1) == 0)
      {
        v434 = *&v432;
        *&v435 = COERCE_DOUBLE(sub_22C90936C());
        if ((v436 & 1) == 0)
        {
          v437 = v434;
          v438 = *&v435;
          v439 = v600;
          v413 = swift_allocBox();
          *v440 = v438 < v437;
          (*(v599 + 104))(v440, *MEMORY[0x277D72988], v439);
          v415 = &v598;
          goto LABEL_99;
        }
      }

LABEL_84:
      type metadata accessor for ExpressionEvaluatorError(0);
      sub_22C64644C(&qword_27D9BF618, type metadata accessor for ExpressionEvaluatorError, &unk_22C922C14);
      swift_allocError();
      v456 = v455;
      v457 = sub_22C3A5908(&qword_27D9BF620, &unk_22C922B70);
      v458 = *(v457 + 48);
      v459 = *(v457 + 64);
      v404(v456, v604, v620);
      v460 = v615;
      v461 = *(v615 + 16);
      v462 = v456 + v458;
      v463 = v623;
      v464 = v616;
      v461(v462, v623, v616);
      v465 = v456 + v459;
      v466 = v607;
      v461(v465, v607, v464);
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      v149 = *(v460 + 8);
      v149(v466, v464);
      v467 = *(v621 + 8);
      v468 = v632;
      v467(v608, v632);
      v467(v617, v468);
      (*(v622 + 8))(v604, v620);
      v153 = v463;
      v154 = v464;
      return (v149)(v153, v154);
    }

    if (v144 == *MEMORY[0x277D1DE08])
    {
      v441 = sub_22C90936C();
      if ((v442 & 1) == 0)
      {
        v443 = *&v441;
        *&v444 = COERCE_DOUBLE(sub_22C90936C());
        if ((v445 & 1) == 0)
        {
          v446 = v443;
          v447 = *&v444;
          v448 = v600;
          v413 = swift_allocBox();
          *v449 = v446 <= v447;
          (*(v599 + 104))(v449, *MEMORY[0x277D72988], v448);
          v415 = &v595;
          goto LABEL_99;
        }
      }

      goto LABEL_84;
    }

    if (v144 == *MEMORY[0x277D1DE68])
    {
      v450 = sub_22C90936C();
      if ((v451 & 1) == 0)
      {
        v452 = *&v450;
        *&v453 = COERCE_DOUBLE(sub_22C90936C());
        if ((v454 & 1) == 0)
        {
          v528 = v452;
          v529 = *&v453;
          v530 = v600;
          v413 = swift_allocBox();
          *v531 = v528 < v529;
          (*(v599 + 104))(v531, *MEMORY[0x277D72988], v530);
          v415 = &v592;
          goto LABEL_99;
        }
      }

      goto LABEL_84;
    }

    if (v144 == *MEMORY[0x277D1DE40])
    {
      v469 = v615;
      v470 = v567;
      v471 = v616;
      v625 = *(v615 + 16);
      v625(v567, v623, v616);
      v472 = *(v469 + 88);
      v473 = v472(v470, v471);
      v474 = *MEMORY[0x277D72A58];
      LODWORD(v624) = v473;
      if (v473 == v474)
      {
        v475 = *(v615 + 96);
        v476 = v567;
        v614 = v615 + 96;
        v613 = v475;
        v475(v567, v616);
        v619 = *v476;
        v477 = swift_projectBox();
        v478 = v599;
        v479 = v564;
        v480 = v600;
        v612 = *(v599 + 16);
        (v612)(v564, v477, v600);
        v611 = *(v478 + 88);
        v481 = (v611)(v479, v480);
        v482 = *MEMORY[0x277D72988];
        LODWORD(v618) = v481;
        if (v481 == v482)
        {
          v483 = *(v599 + 96);
          v484 = v564;
          v610 = (v599 + 96);
          v606 = v483;
          (v483)(v564, v600);
          LODWORD(v609) = *v484;

          v485 = v561;
          v486 = v616;
          v625(v561, v607, v616);
          v487 = v472(v485, v486);
          if (v487 != v624)
          {
            (*(v615 + 8))(v561, v616);
            goto LABEL_106;
          }

          v613(v561, v616);
          v488 = swift_projectBox();
          v489 = v558;
          v490 = v600;
          (v612)(v558, v488, v600);
          v491 = (v611)(v489, v490);
          if (v491 == v618)
          {
            v492 = v558;
            v493 = v600;
            (v606)(v558, v600);
            LOBYTE(v492) = *v492;

            LOBYTE(v492) = v609 & v492;
            v494 = swift_allocBox();
            *v495 = v492;
            (*(v599 + 104))(v495, v618, v493);
            v496 = &v588;
LABEL_97:
            v523 = *(v496 - 32);
            *v523 = v494;
            v524 = v615;
            v525 = *(v615 + 104);
            v526 = v523;
            v527 = v624;
LABEL_100:
            v533 = v616;
            v525(v526, v527, v616);
            v534 = v617;
            sub_22C9025BC();
            sub_22C9025CC();
            v535 = *(v524 + 8);
            v535(v607, v533);
            v536 = *(v621 + 8);
            v537 = v632;
            v536(v608, v632);
            v536(v534, v537);
            (*(v622 + 8))(v604, v620);
            return (v535)(v623, v533);
          }

          (*(v599 + 8))(v558, v600);
        }

        else
        {
          (*(v599 + 8))(v564, v600);
        }

        goto LABEL_105;
      }

      (*(v615 + 8))(v567, v616);
    }

    else
    {
      if (v144 != *MEMORY[0x277D1DE30])
      {
        result = sub_22C90B4EC();
        __break(1u);
        return result;
      }

      v497 = v615;
      v498 = v568;
      v499 = v616;
      v625 = *(v615 + 16);
      v625(v568, v623, v616);
      v500 = *(v497 + 88);
      v501 = v500(v498, v499);
      v502 = *MEMORY[0x277D72A58];
      LODWORD(v624) = v501;
      if (v501 == v502)
      {
        v503 = *(v615 + 96);
        v504 = v568;
        v614 = v615 + 96;
        v613 = v503;
        v503(v568, v616);
        v619 = *v504;
        v505 = swift_projectBox();
        v506 = v599;
        v507 = v565;
        v508 = v600;
        v612 = *(v599 + 16);
        (v612)(v565, v505, v600);
        v611 = *(v506 + 88);
        v509 = (v611)(v507, v508);
        v510 = *MEMORY[0x277D72988];
        LODWORD(v618) = v509;
        if (v509 == v510)
        {
          v511 = *(v599 + 96);
          v512 = v565;
          v610 = (v599 + 96);
          v606 = v511;
          (v511)(v565, v600);
          LODWORD(v609) = *v512;

          v513 = v562;
          v514 = v616;
          v625(v562, v607, v616);
          v515 = v500(v513, v514);
          if (v515 != v624)
          {
            (*(v615 + 8))(v562, v616);
            goto LABEL_106;
          }

          v613(v562, v616);
          v516 = swift_projectBox();
          v517 = v559;
          v518 = v600;
          (v612)(v559, v516, v600);
          v519 = (v611)(v517, v518);
          if (v519 == v618)
          {
            v520 = v559;
            v521 = v600;
            (v606)(v559, v600);
            LOBYTE(v520) = *v520;

            LOBYTE(v520) = v609 | v520;
            v494 = swift_allocBox();
            *v522 = v520 & 1;
            (*(v599 + 104))(v522, v618, v521);
            v496 = &v589;
            goto LABEL_97;
          }

          (*(v599 + 8))(v559, v600);
        }

        else
        {
          (*(v599 + 8))(v565, v600);
        }

LABEL_105:

        goto LABEL_106;
      }

      (*(v615 + 8))(v568, v616);
    }

LABEL_106:
    type metadata accessor for ExpressionEvaluatorError(0);
    sub_22C64644C(&qword_27D9BF618, type metadata accessor for ExpressionEvaluatorError, &unk_22C922C14);
    swift_allocError();
    v539 = v538;
    v540 = sub_22C3A5908(&qword_27D9BF620, &unk_22C922B70);
    v541 = *(v540 + 48);
    v542 = *(v540 + 64);
    v543 = v604;
    v404(v539, v604, v620);
    v544 = v539 + v541;
    v545 = v623;
    v546 = v616;
    v547 = v625;
    v625(v544, v623, v616);
    v548 = v539 + v542;
    v549 = v607;
    v547(v548, v607, v546);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v550 = *(v615 + 8);
    v550(v549, v546);
    v551 = *(v621 + 8);
    v552 = v632;
    v551(v608, v632);
    v551(v617, v552);
    (*(v622 + 8))(v543, v620);
    return (v550)(v545, v546);
  }

  v386 = v615;
  v387 = *(v615 + 16);
  v388 = v576;
  v389 = v616;
  v387(v576, v607, v616);
  if ((*(v386 + 88))(v388, v389) == *MEMORY[0x277D729E0])
  {
    v390 = v615;
    (*(v615 + 96))(v576, v616);
    swift_projectBox();
    v391 = v572;
    (*(v572 + 16))();

    v392 = v600;
    v393 = swift_allocBox();
    v395 = v394;
    v396 = sub_22C90905C();
    MEMORY[0x28223BE20](v396);
    *(&v553 - 2) = v623;
    v397 = sub_22C5EC68C(sub_22C646494, (&v553 - 4), v396);

    *v395 = v397;
    (*(v599 + 104))(v395, *MEMORY[0x277D72988], v392);
    v398 = v582;
    *v582 = v393;
    v399 = v616;
    (*(v390 + 104))(v398, *MEMORY[0x277D72A58], v616);
    v400 = v617;
    sub_22C9025BC();
    sub_22C9025CC();
    (*(v391 + 8))(v574, v575);
    v149 = *(v390 + 8);
    v401 = v399;
    v149(v607, v399);
    v402 = *(v621 + 8);
    v403 = v632;
    v402(v608, v632);
    v402(v400, v403);
    (*(v622 + 8))(v604, v620);
    v153 = v623;
    v154 = v401;
    return (v149)(v153, v154);
  }

  v426 = *(v615 + 8);
  v427 = v616;
  v426(v576, v616);
  type metadata accessor for InterpreterError(0);
  sub_22C64644C(&qword_27D9BAA40, type metadata accessor for InterpreterError, &protocol conformance descriptor for InterpreterError);
  swift_allocError();
  v428 = v607;
  v387(v429, v607, v427);
  swift_storeEnumTagMultiPayload();
  swift_willThrow();
  v426(v428, v427);
  v430 = *(v621 + 8);
  v431 = v632;
  v430(v608, v632);
  v430(v617, v431);
  (*(v622 + 8))(v604, v620);
  return (v426)(v623, v427);
}

uint64_t sub_22C640BE8(uint64_t a1, uint64_t a2)
{
  v3[13] = a2;
  v3[14] = v2;
  v3[12] = a1;
  v4 = sub_22C9063DC();
  v3[15] = v4;
  v3[16] = *(v4 - 8);
  v3[17] = swift_task_alloc();
  v5 = sub_22C90910C();
  v3[18] = v5;
  v3[19] = *(v5 - 8);
  v3[20] = swift_task_alloc();
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();
  sub_22C3A5908(&qword_27D9BB908, &qword_22C910960);
  v3[23] = swift_task_alloc();
  v3[24] = swift_task_alloc();
  v6 = sub_22C90919C();
  v3[25] = v6;
  v3[26] = *(v6 - 8);
  v3[27] = swift_task_alloc();
  v3[28] = swift_task_alloc();
  sub_22C3A5908(&qword_27D9BF318, &qword_22C9225A0);
  v3[29] = swift_task_alloc();
  v7 = sub_22C90906C();
  v3[30] = v7;
  v3[31] = *(v7 - 8);
  v3[32] = swift_task_alloc();
  v3[33] = swift_task_alloc();
  v8 = sub_22C90931C();
  v3[34] = v8;
  v3[35] = *(v8 - 8);
  v3[36] = swift_task_alloc();
  v3[37] = swift_task_alloc();
  v3[38] = swift_task_alloc();
  v3[39] = swift_task_alloc();
  v3[40] = sub_22C3A5908(&qword_27D9BAA50, &qword_22C90D058);
  v3[41] = swift_task_alloc();
  v9 = sub_22C9093BC();
  v3[42] = v9;
  v3[43] = *(v9 - 8);
  v3[44] = swift_task_alloc();
  v3[45] = swift_task_alloc();
  v3[46] = swift_task_alloc();
  v3[47] = swift_task_alloc();
  v3[48] = swift_task_alloc();
  v3[49] = swift_task_alloc();
  v3[50] = swift_task_alloc();
  v3[51] = swift_task_alloc();
  v3[52] = swift_task_alloc();
  v3[53] = swift_task_alloc();
  v3[54] = swift_task_alloc();
  v3[55] = swift_task_alloc();
  v3[56] = swift_task_alloc();
  v3[57] = swift_task_alloc();
  v10 = sub_22C901FAC();
  v3[58] = v10;
  v3[59] = *(v10 - 8);
  v3[60] = swift_task_alloc();
  v3[61] = type metadata accessor for TranscriptValueFetcher(0);
  v3[62] = swift_task_alloc();
  sub_22C3A5908(&qword_27D9BF610, &qword_22C922B50);
  v3[63] = swift_task_alloc();
  v3[64] = swift_task_alloc();
  v3[65] = swift_task_alloc();
  v3[66] = swift_task_alloc();
  v11 = sub_22C9025EC();
  v3[67] = v11;
  v3[68] = *(v11 - 8);
  v3[69] = swift_task_alloc();
  v3[70] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22C641170, 0, 0);
}

uint64_t sub_22C641170()
{
  v236 = v0;
  v1 = *(v0 + 528);
  v2 = *(v0 + 520);
  v3 = *(v0 + 488);
  v4 = *(v0 + 496);
  v5 = *(v0 + 472);
  v6 = *(v0 + 480);
  v225 = *(v0 + 464);
  v230 = *(v0 + 536);
  v7 = *(v0 + 112);
  sub_22C90880C();
  sub_22C36985C();
  v212 = *(v8 + 16);
  v215 = v9;
  v212(v4, v7);
  v209 = type metadata accessor for ExpressionEvaluator(0);
  v10 = *(v7 + *(v209 + 20));
  *(v4 + *(v3 + 20)) = v10;

  MEMORY[0x2318B4220](v11);
  sub_22C729D78(v6, v1);
  v12 = *(v5 + 8);
  v12(v6, v225);
  sub_22C38BC84();
  sub_22C643FB8(v4, v13);
  sub_22C379DF8(v1, v2, &qword_27D9BF610, &qword_22C922B50);
  sub_22C36D0A8(v2, 1, v230);
  if (v14)
  {
    sub_22C36DD28(*(v0 + 520), &qword_27D9BF610, &qword_22C922B50);
    sub_22C37F43C();
    sub_22C90735C();
    sub_22C3A5F00();
    sub_22C37A198();
    v15 = swift_allocError();
    sub_22C646AA4(v15, v16, *(v0 + 88), *(v0 + 72), *(v0 + 56));
    v17 = sub_22C36BBCC();
    v19 = &qword_22C922B50;
LABEL_54:
    sub_22C36DD28(v17, v18, v19);
    goto LABEL_55;
  }

  v20 = *(v0 + 536);
  v231 = *(v0 + 504);
  v21 = *(v0 + 496);
  v22 = *(v0 + 480);
  v206 = *(v0 + 512);
  v207 = *(v0 + 464);
  v23 = *(v0 + 112);
  sub_22C36DD28(*(v0 + 528), &qword_27D9BF610, &qword_22C922B50);
  v24 = sub_22C372164();
  v205 = v25;
  (v25)(v24);
  (v212)(v21, v23, v215);
  *(v21 + *(v3 + 20)) = v10;

  sub_22C906D6C();
  sub_22C729D78(v22, v206);
  v12(v22, v207);
  sub_22C38BC84();
  sub_22C643FB8(v21, v26);
  sub_22C379DF8(v206, v231, &qword_27D9BF610, &qword_22C922B50);
  v27 = sub_22C370B74(v231, 1, v20);
  if (v27 != 1)
  {
    v34 = *(v0 + 552);
    v35 = *(v0 + 536);
    v36 = *(v0 + 504);
    v38 = *(v0 + 448);
    v37 = *(v0 + 456);
    v39 = *(v0 + 336);
    v40 = *(v0 + 344);
    v41 = *(v0 + 320);
    v232 = *(v0 + 328);
    sub_22C36DD28(*(v0 + 512), &qword_27D9BF610, &qword_22C922B50);
    v205(v34, v36, v35);
    sub_22C90207C();
    v42 = v40;
    sub_22C90207C();
    v43 = *(v41 + 48);
    *(v0 + 704) = v43;
    v44 = *(v42 + 32);
    *(v0 + 568) = v44;
    *(v0 + 576) = (v42 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v44(v232, v37, v39);
    v44(v232 + v43, v38, v39);
    v45 = *(v42 + 88);
    *(v0 + 584) = v45;
    *(v0 + 592) = (v42 + 88) & 0xFFFFFFFFFFFFLL | 0xA3B5000000000000;
    v46 = v45(v232, v39);
    v47 = *MEMORY[0x277D72A38];
    *(v0 + 708) = *MEMORY[0x277D72A38];
    if (v46 == v47)
    {
      v213 = v44;
      v48 = *(v0 + 336);
      v49 = sub_22C383264();
      v221 = v50;
      v50(v49);
      v51 = sub_22C36BBCC();
      v216 = v52;
      v52(v51);
      v53 = v45(v232 + v43, v48);
      if (v53 == *MEMORY[0x277D72A58])
      {
        v54 = v53;
        v55 = *(v0 + 280);
        v56 = sub_22C383264();
        v221(v56);
        v57 = sub_22C36BBCC();
        v216(v57);
        swift_projectBox();
        if ((*(v55 + 88))() == *MEMORY[0x277D729B8])
        {
          v58 = *(v0 + 224);
          v59 = *(v0 + 296);
          v60 = *(v0 + 272);
          v61 = *(v0 + 280);
          v62 = *(v0 + 208);
          v217 = *(v0 + 336);
          v210 = *(v0 + 200);
          v211 = *(v0 + 192);
          v208 = swift_projectBox();
          v63 = sub_22C36BA00();
          v64(v63);
          (*(v61 + 96))(v59, v60);
          (*(v62 + 16))(v58, v208, v210);
          v65 = sub_22C90914C();
          sub_22C6053C8(v65, v211);

          v66 = sub_22C370B74(v211, 1, v217);
          v67 = *(v0 + 400);
          if (v66 == 1)
          {
            v68 = *(v0 + 336);
            v69 = *(v0 + 344);
            v70 = *(v0 + 272);
            v71 = *(v0 + 280);
            v72 = swift_allocBox();
            (*(v71 + 104))(v73, *MEMORY[0x277D729A0], v70);
            *v67 = v72;
            (*(v69 + 104))(v67, v54, v68);
            v74 = sub_22C36FD7C();
            sub_22C36D0A8(v74, v75, v68);
            if (!v14)
            {
              sub_22C36DD28(*(v0 + 192), &qword_27D9BB908, &qword_22C910960);
            }
          }

          else
          {
            v213(*(v0 + 400), *(v0 + 192), *(v0 + 336));
          }

          v107 = *(v0 + 208);
          sub_22C9025BC();
          sub_22C9025CC();
          v88 = (v0 + 200);
          v103 = (v0 + 224);
          goto LABEL_62;
        }

        goto LABEL_51;
      }

LABEL_52:

      goto LABEL_53;
    }

    if (v46 == *MEMORY[0x277D729E0])
    {
      v76 = *(v0 + 336);
      v77 = *(*(v0 + 344) + 16);
      v78 = sub_22C383264();
      v77(v78);
      v79 = sub_22C36BBCC();
      v226 = v80;
      (v80)(v79);
      if (v45(v232 + v43, v76) != *MEMORY[0x277D72A58])
      {
        goto LABEL_52;
      }

      v81 = *(v0 + 432);
      v82 = *(v0 + 336);
      v218 = v43;
      v83 = v77;
      v84 = *(v0 + 280);
      v85 = swift_projectBox();
      v86 = v232 + v218;
      v219 = v83;
      (v83)(v81, v86, v82);
      v226(v81, v82);
      swift_projectBox();
      v87 = (*(v84 + 88))();
      if (v87 == *MEMORY[0x277D72978])
      {
        v88 = (v0 + 240);
        v222 = *(v0 + 240);
        v89 = *(v0 + 312);
        v91 = *(v0 + 272);
        v90 = *(v0 + 280);
        v92 = v85;
        v93 = *(v0 + 264);
        v94 = *(v0 + 248);
        v95 = sub_22C646A84();
        v96(v95);
        (*(v90 + 96))(v89, v91);
        v97 = *v89;
        v98 = (*(v94 + 16))(v93, v92, v222);
        v102 = v97;
        if ((v97 & 0x8000000000000000) != 0)
        {
          v102 = -v97;
          if (__OFSUB__(0, v97))
          {
LABEL_65:
            __break(1u);
            goto LABEL_66;
          }
        }

        v103 = (v0 + 264);
        v104 = *(sub_22C90905C() + 16);

        if (v102 < v104)
        {
          if ((v97 & 0x8000000000000000) != 0)
          {
            v105 = *(sub_22C90905C() + 16);

            v97 += v105;
          }

          v98 = sub_22C90905C();
          if ((v97 & 0x8000000000000000) != 0)
          {
            __break(1u);
          }

          else if (v97 < *(v98 + 16))
          {
            v106 = *(v0 + 424);
            v107 = *(v0 + 248);
            sub_22C377600();
            v110 = v109 + v108 * v97;
LABEL_43:
            (v219)(v106, v110);

            sub_22C9025BC();
LABEL_61:
            sub_22C9025CC();
LABEL_62:
            v193 = *v103;
            v194 = *v88;
            v195 = *(v0 + 704);
            v196 = *(v0 + 560);
            v197 = *(v0 + 552);
            v198 = *(v0 + 544);
            v199 = *(v0 + 536);
            v200 = *(v0 + 336);
            v201 = *(v0 + 344);
            v202 = *(v0 + 328);
            (*(v107 + 8))(v193, v194);
            v203 = *(v198 + 8);
            v203(v197, v199);
            v203(v196, v199);

            v204 = *(v201 + 8);
            v204(v202 + v195, v200);
            v204(v202, v200);

            sub_22C369C50();
            goto LABEL_56;
          }

          __break(1u);
          goto LABEL_65;
        }

        v224 = (v0 + 240);
        v163 = *(v0 + 272);
        v164 = *(v0 + 280);
        v165 = *(v0 + 248);
        sub_22C646AC4();
        (*(v164 + 104))(v166, *MEMORY[0x277D729A0], v163);
        v107 = v165;
        v167 = sub_22C37B718();
        v168(v167);
        v103 = (v0 + 264);
LABEL_60:
        v88 = v224;
        sub_22C9025BC();
        goto LABEL_61;
      }

      if (v87 == *MEMORY[0x277D729A8])
      {
        v146 = *(v0 + 240);
        v147 = *(v0 + 304);
        v149 = *(v0 + 272);
        v148 = *(v0 + 280);
        v150 = v85;
        v151 = *(v0 + 248);
        v152 = *(v0 + 256);
        v224 = (v0 + 240);
        v153 = sub_22C646A84();
        v154(v153);
        (*(v148 + 96))(v147, v149);
        v155 = *v147;
        v98 = (*(v151 + 16))(v152, v150, v146);
        if (v155 == floor(v155))
        {
          if ((*&v155 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
          {
LABEL_66:
            __break(1u);
            goto LABEL_67;
          }

          v88 = (v0 + 240);
          if (v155 <= -9.22337204e18)
          {
LABEL_67:
            __break(1u);
            goto LABEL_68;
          }

          if (v155 >= 9.22337204e18)
          {
LABEL_68:
            __break(1u);
            goto LABEL_69;
          }

          v156 = v155;
          v157 = v155;
          if (v155 < 0)
          {
            v157 = -v156;
            if (__OFSUB__(0, v156))
            {
              goto LABEL_71;
            }
          }

          v103 = (v0 + 256);
          v158 = *(sub_22C90905C() + 16);

          if (v157 < v158)
          {
            if ((v156 & 0x8000000000000000) != 0)
            {
              v159 = *(sub_22C90905C() + 16);

              v156 += v159;
            }

            v98 = sub_22C90905C();
            if ((v156 & 0x8000000000000000) == 0)
            {
              if (v156 < *(v98 + 16))
              {
                v106 = *(v0 + 424);
                sub_22C377600();
                v110 = v161 + v160 * v156;
                v107 = v162;
                goto LABEL_43;
              }

              goto LABEL_70;
            }

LABEL_69:
            __break(1u);
LABEL_70:
            __break(1u);
LABEL_71:
            __break(1u);
            return MEMORY[0x282178338](v98, v99, v100, v101);
          }

          v187 = *(v0 + 272);
          v188 = *(v0 + 280);
          v189 = *(v0 + 248);
          sub_22C646AC4();
          (*(v188 + 104))(v190, *MEMORY[0x277D729A0], v187);
          v107 = v189;
          v191 = sub_22C37B718();
          v192(v191);
          v103 = (v0 + 256);
          goto LABEL_60;
        }

        (*(*(v0 + 248) + 8))(*(v0 + 256), *(v0 + 240));
      }
    }

    else
    {
      if (v46 != *MEMORY[0x277D729F8])
      {
LABEL_53:
        v178 = *(v0 + 552);
        v179 = *(v0 + 544);
        v180 = *(v0 + 536);
        v229 = *(v0 + 328);
        type metadata accessor for ExpressionEvaluatorError(0);
        sub_22C3736CC();
        sub_22C64644C(v181, v182, &unk_22C922C14);
        sub_22C37A198();
        swift_allocError();
        sub_22C3A5908(&qword_27D9BF628, &qword_22C922B80);
        sub_22C90207C();
        sub_22C90207C();
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
        v183 = *(v179 + 8);
        v183(v178, v180);
        v184 = sub_22C36ECB4();
        (v183)(v184);
        v18 = &qword_27D9BAA50;
        v19 = &qword_22C90D058;
        v17 = v229;
        goto LABEL_54;
      }

      v111 = *(v0 + 392);
      v112 = *(v0 + 336);
      v113 = *(v0 + 344);
      *(v0 + 600) = *(v113 + 16);
      *(v0 + 608) = (v113 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v114 = sub_22C383264();
      v227 = v115;
      v115(v114);
      v116 = *(v113 + 96);
      *(v0 + 616) = v116;
      *(v0 + 624) = (v113 + 96) & 0xFFFFFFFFFFFFLL | 0x41D000000000000;
      v117 = sub_22C36BBCC();
      v116(v117);
      *(v0 + 632) = *v111;
      v118 = v45(v232 + v43, v112);
      *(v0 + 712) = v118;
      if (v118 != *MEMORY[0x277D72A58])
      {
        goto LABEL_52;
      }

      v119 = *(v0 + 384);
      v120 = *(v0 + 280);
      v121 = sub_22C383264();
      v227(v121);
      v122 = sub_22C36BBCC();
      v116(v122);
      *(v0 + 640) = *v119;
      swift_projectBox();
      if ((*(v120 + 88))() == *MEMORY[0x277D729B8])
      {
        v124 = *(v0 + 280);
        v123 = *(v0 + 288);
        v125 = *(v0 + 272);
        v126 = *(v0 + 176);
        v233 = *(v0 + 168);
        v127 = *(v0 + 144);
        v128 = *(v0 + 152);
        v129 = swift_projectBox();
        sub_22C646A98();
        v130 = sub_22C36BA00();
        v131(v130);
        (*(v124 + 96))(v123, v125);
        *(v0 + 648) = *v123;
        *(v0 + 656) = v123[1];
        v132 = *(v128 + 16);
        v132(v126, v129, v127);
        sub_22C903F8C();
        v132(v233, v126, v127);
        v133 = sub_22C9063CC();
        v134 = sub_22C90AABC();
        v135 = os_log_type_enabled(v133, v134);
        v136 = *(v0 + 168);
        if (v135)
        {
          v138 = *(v0 + 152);
          v137 = *(v0 + 160);
          v220 = v134;
          v139 = *(v0 + 144);
          v223 = *(v0 + 128);
          v228 = *(v0 + 120);
          v234 = *(v0 + 136);
          v140 = swift_slowAlloc();
          v214 = swift_slowAlloc();
          v235[0] = v214;
          *v140 = 136315138;
          v132(v137, v136, v139);
          v141 = sub_22C90A1AC();
          v143 = v142;
          v144 = *(v138 + 8);
          v144(v136, v139);
          v145 = sub_22C36F9F4(v141, v143, v235);

          *(v140 + 4) = v145;
          _os_log_impl(&dword_22C366000, v133, v220, "hydrating entity ID to run a property accessor: %s", v140, 0xCu);
          sub_22C36FF94(v214);
          MEMORY[0x2318B9880](v214, -1, -1);
          MEMORY[0x2318B9880](v140, -1, -1);

          (*(v223 + 8))(v234, v228);
        }

        else
        {
          v169 = *(v0 + 144);
          v170 = *(v0 + 152);
          v172 = *(v0 + 128);
          v171 = *(v0 + 136);
          v173 = *(v0 + 120);

          v144 = *(v170 + 8);
          v144(v136, v169);
          (*(v172 + 8))(v171, v173);
        }

        *(v0 + 664) = v144;
        v174 = (*(v0 + 112) + *(v209 + 28));
        v175 = v174[3];
        v176 = v174[4];
        sub_22C374168(v174, v175);
        sub_22C90207C();
        v177 = swift_task_alloc();
        *(v0 + 672) = v177;
        *v177 = v0;
        v177[1] = sub_22C642654;
        v99 = *(v0 + 368);
        v98 = *(v0 + 376);
        v100 = v175;
        v101 = v176;

        return MEMORY[0x282178338](v98, v99, v100, v101);
      }
    }

LABEL_51:

    goto LABEL_52;
  }

  sub_22C36DD28(*(v0 + 504), &qword_27D9BF610, &qword_22C922B50);
  sub_22C37F43C();
  sub_22C90735C();
  sub_22C3A5F00();
  sub_22C37A198();
  v28 = swift_allocError();
  sub_22C646AA4(v28, v29, *(v0 + 48), *(v0 + 32), *(v0 + 16));
  v30 = sub_22C36ECB4();
  sub_22C36DD28(v30, v31, &qword_22C922B50);
  v32 = sub_22C36BBCC();
  v33(v32);
LABEL_55:
  sub_22C36C118();
  sub_22C387380();

  sub_22C369A24();
LABEL_56:

  return v185();
}

uint64_t sub_22C642654()
{
  v2 = *v1;
  sub_22C369A30();
  *v3 = v2;
  v5 = *(v4 + 344);
  v6 = *v1;
  sub_22C369A30();
  *v7 = v6;
  v2[85] = v0;

  v2[86] = *(v5 + 8);
  v2[87] = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8 = sub_22C36ECB4();
  v9(v8);
  if (v0)
  {
  }

  sub_22C36BB08();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_22C6427D8()
{
  v1 = *(v0 + 708);
  v2 = *(v0 + 584);
  v3 = sub_22C383264();
  v4(v3);
  v5 = sub_22C36BBCC();
  if (v2(v5) == v1)
  {
    v6 = *(v0 + 336);
    v8 = *(v0 + 208);
    v7 = *(v0 + 216);
    v9 = *(v0 + 200);
    v10 = *(v0 + 184);
    v11 = sub_22C372164();
    v12(v11);
    v13 = swift_projectBox();
    (*(v8 + 16))(v7, v13, v9);

    v14 = sub_22C90914C();
    sub_22C6053C8(v14, v10);

    v15 = sub_22C370B74(v10, 1, v6);
    v16 = *(v0 + 336);
    if (v15 == 1)
    {
      v17 = *(v0 + 712);
      v19 = *(v0 + 344);
      v18 = *(v0 + 352);
      v20 = *(v0 + 272);
      v21 = *(v0 + 280);
      v22 = swift_allocBox();
      (*(v21 + 104))(v23, *MEMORY[0x277D729A0], v20);
      *v18 = v22;
      (*(v19 + 104))(v18, v17, v16);
      v24 = sub_22C36FD7C();
      sub_22C36D0A8(v24, v25, v16);
      if (!v26)
      {
        sub_22C36DD28(*(v0 + 184), &qword_27D9BB908, &qword_22C910960);
      }
    }

    else
    {
      (*(v0 + 568))(*(v0 + 352), *(v0 + 184), *(v0 + 336));
    }

    v63 = *(v0 + 688);
    v40 = *(v0 + 376);
    v41 = *(v0 + 336);
    v43 = *(v0 + 208);
    v42 = *(v0 + 216);
    v44 = *(v0 + 200);
    sub_22C9025BC();
    sub_22C9025CC();
    (*(v43 + 8))(v42, v44);
    v63(v40, v41);
    v55 = *(v0 + 704);
    v45 = *(v0 + 560);
    v46 = *(v0 + 552);
    v47 = *(v0 + 544);
    v48 = *(v0 + 536);
    v49 = *(v0 + 336);
    v50 = *(v0 + 344);
    v51 = *(v0 + 328);
    (*(v0 + 664))();
    v52 = *(v47 + 8);
    v52(v46, v48);
    v52(v45, v48);

    v53 = *(v50 + 8);
    v53(v51 + v55, v49);
    v53(v51, v49);

    sub_22C369C50();
  }

  else
  {
    v27 = *(v0 + 688);
    v60 = *(v0 + 664);
    v56 = *(v0 + 600);
    v64 = *(v0 + 704);
    v28 = *(v0 + 552);
    v29 = *(v0 + 544);
    v30 = *(v0 + 376);
    v31 = *(v0 + 360);
    v32 = *(v0 + 336);
    v61 = *(v0 + 560);
    v62 = *(v0 + 328);
    v58 = *(v0 + 176);
    v59 = *(v0 + 536);
    v57 = *(v0 + 144);

    v27(v31, v32);
    type metadata accessor for ExpressionEvaluatorError(0);
    sub_22C3736CC();
    sub_22C64644C(v33, v34, &unk_22C922C14);
    sub_22C37A198();
    swift_allocError();
    v36 = v35;
    sub_22C3A5908(&qword_27D9BF628, &qword_22C922B80);
    v56(v36, v30, v32);
    sub_22C90207C();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v27(v30, v32);
    v60(v58, v57);
    v37 = *(v29 + 8);
    v37(v28, v59);
    v37(v61, v59);

    v27(v62 + v64, v32);
    v38 = sub_22C372164();
    (v27)(v38);
    sub_22C36C118();
    sub_22C387380();

    sub_22C369A24();
  }

  return v39();
}

uint64_t sub_22C642FF4()
{
  v1 = *(v0 + 688);
  v11 = *(v0 + 704);
  v2 = *(v0 + 560);
  v3 = *(v0 + 544);
  v4 = *(v0 + 536);
  v6 = *(v0 + 328);
  v5 = *(v0 + 336);
  (*(v0 + 664))(*(v0 + 176), *(v0 + 144));
  v7 = *(v3 + 8);
  v8 = sub_22C36ECB4();
  v7(v8);
  (v7)(v2, v4);

  v1(v6 + v11, v5);
  v1(v6, v5);
  sub_22C36C118();

  sub_22C369A24();

  return v9();
}

uint64_t sub_22C6432B8@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v108 = a2;
  v3 = v2;
  v122 = a1;
  v4 = sub_22C3A5908(&qword_27D9BF318, &qword_22C9225A0);
  MEMORY[0x28223BE20](v4 - 8);
  v107 = &v102 - v5;
  v6 = sub_22C90931C();
  v110 = *(v6 - 8);
  v111 = v6;
  MEMORY[0x28223BE20](v6);
  v105 = &v102 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = sub_22C3A5908(&qword_27D9BF630, &qword_22C922B88);
  MEMORY[0x28223BE20](v113);
  v114 = &v102 - v8;
  v9 = sub_22C9093BC();
  v10 = *(v9 - 8);
  v115 = v9;
  v116 = v10;
  v11 = MEMORY[0x28223BE20](v9);
  v103 = &v102 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v104 = &v102 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v106 = (&v102 - v16);
  v17 = MEMORY[0x28223BE20](v15);
  v109 = &v102 - v18;
  MEMORY[0x28223BE20](v17);
  v112 = &v102 - v19;
  v117 = sub_22C906FCC();
  v121 = *(v117 - 8);
  MEMORY[0x28223BE20](v117);
  v120 = &v102 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = sub_22C901FAC();
  v21 = *(v118 - 1);
  MEMORY[0x28223BE20](v118);
  v23 = &v102 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for TranscriptValueFetcher(0);
  v25 = v24 - 8;
  MEMORY[0x28223BE20](v24);
  v27 = &v102 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_22C3A5908(&qword_27D9BF610, &qword_22C922B50);
  v29 = MEMORY[0x28223BE20](v28 - 8);
  v31 = &v102 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v33 = &v102 - v32;
  v34 = sub_22C9025EC();
  v119 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v36 = &v102 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_22C90880C();
  (*(*(v37 - 8) + 16))(v27, v3, v37);
  *&v27[*(v25 + 28)] = *(v3 + *(type metadata accessor for ExpressionEvaluator(0) + 20));

  sub_22C906FDC();
  sub_22C729D78(v23, v33);
  (*(v21 + 8))(v23, v118);
  v38 = v27;
  v39 = v34;
  sub_22C643FB8(v38, type metadata accessor for TranscriptValueFetcher);
  sub_22C379DF8(v33, v31, &qword_27D9BF610, &qword_22C922B50);
  if (sub_22C370B74(v31, 1, v34) != 1)
  {
    sub_22C36DD28(v33, &qword_27D9BF610, &qword_22C922B50);
    (*(v119 + 32))(v36, v31, v34);
    v46 = v120;
    sub_22C906DCC();
    v47 = v112;
    v122 = v36;
    sub_22C90207C();
    v48 = v114;
    v49 = *(v113 + 48);
    v50 = v121;
    v51 = v117;
    v118 = *(v121 + 16);
    v118(v114, v46, v117);
    v52 = v115;
    v53 = v116;
    (*(v116 + 32))(&v48[v49], v47, v115);
    v54 = (*(v50 + 88))(v48, v51);
    v55 = v54 == *MEMORY[0x277D1DF10];
    v102 = v39;
    if (v55)
    {
      v56 = (*(v53 + 88))(&v48[v49], v52);
      if (v56 == *MEMORY[0x277D72A58])
      {
        v57 = v56;
        v58 = v49;
        v59 = v109;
        (*(v53 + 16))(v109, &v48[v49], v52);
        (*(v53 + 96))(v59, v52);
        v60 = *v59;
        v61 = swift_projectBox();
        v63 = v110;
        v62 = v111;
        v64 = (*(v110 + 88))(v61, v111);
        if (v64 == *MEMORY[0x277D729A8])
        {
          v65 = v64;
          v118 = v60;
          v66 = v105;
          (*(v63 + 16))(v105, v61, v62);
          (*(v63 + 96))(v66, v62);
          v67 = *v66;
          v68 = swift_allocBox();
          *v69 = v67;
          (*(v63 + 104))(v69, v65, v62);
LABEL_16:
          v91 = v106;
          *v106 = v68;
          v92 = v115;
          v93 = v116;
          (*(v116 + 104))(v91, v57, v115);
          v94 = v122;
          sub_22C9025BC();
          sub_22C9025CC();
          v95 = *(v121 + 8);
          v96 = v117;
          v95(v120, v117);
          (*(v119 + 8))(v94, v102);

          (*(v93 + 8))(&v48[v58], v92);
          return (v95)(v48, v96);
        }

        goto LABEL_17;
      }
    }

    else
    {
      if (v54 != *MEMORY[0x277D1DF18])
      {
        if (v54 != *MEMORY[0x277D1DF08])
        {
          goto LABEL_18;
        }

        v58 = v49;
        v81 = (*(v53 + 88))(&v48[v49], v52);
        if (v81 != *MEMORY[0x277D72A58])
        {
          goto LABEL_18;
        }

        v57 = v81;
        v82 = v103;
        (*(v53 + 16))(v103, &v48[v49], v52);
        (*(v53 + 96))(v82, v52);
        v83 = *v82;
        v84 = swift_projectBox();
        v86 = v110;
        v85 = v111;
        v87 = (*(v110 + 88))(v84, v111);
        if (v87 == *MEMORY[0x277D72988])
        {
          v88 = v87;
          v118 = v83;
          v89 = v105;
          (*(v86 + 16))(v105, v84, v85);
          (*(v86 + 96))(v89, v85);
          LOBYTE(v89) = *v89;
          v68 = swift_allocBox();
          *v90 = (v89 & 1) == 0;
          (*(v86 + 104))(v90, v88, v85);
          goto LABEL_16;
        }

        goto LABEL_17;
      }

      v58 = v49;
      v70 = (*(v53 + 88))(&v48[v49], v52);
      if (v70 == *MEMORY[0x277D72A58])
      {
        v57 = v70;
        v71 = v104;
        (*(v53 + 16))(v104, &v48[v49], v52);
        (*(v53 + 96))(v71, v52);
        v72 = *v71;
        v73 = swift_projectBox();
        v74 = v110;
        v75 = v111;
        v76 = (*(v110 + 88))(v73, v111);
        if (v76 == *MEMORY[0x277D729A8])
        {
          v77 = v76;
          v118 = v72;
          v78 = v105;
          (*(v74 + 16))(v105, v73, v75);
          (*(v74 + 96))(v78, v75);
          v79 = *v78;
          v68 = swift_allocBox();
          *v80 = -v79;
          (*(v74 + 104))(v80, v77, v75);
          goto LABEL_16;
        }

LABEL_17:

        v51 = v117;
      }
    }

LABEL_18:
    type metadata accessor for ExpressionEvaluatorError(0);
    sub_22C64644C(&qword_27D9BF618, type metadata accessor for ExpressionEvaluatorError, &unk_22C922C14);
    swift_allocError();
    v99 = v98;
    sub_22C3A5908(&qword_27D9BF638, &unk_22C922B90);
    v100 = v120;
    v118(v99, v120, v51);
    v101 = v122;
    sub_22C90207C();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    (*(v121 + 8))(v100, v51);
    (*(v119 + 8))(v101, v102);
    v44 = &qword_27D9BF630;
    v45 = &qword_22C922B88;
    v43 = v48;
    return sub_22C36DD28(v43, v44, v45);
  }

  sub_22C36DD28(v31, &qword_27D9BF610, &qword_22C922B50);
  sub_22C90735C();
  sub_22C3A5F00();
  swift_allocError();
  v40 = v125;
  v41 = v124;
  *v42 = v123;
  *(v42 + 16) = v41;
  *(v42 + 32) = v40;
  swift_willThrow();
  v43 = v33;
  v44 = &qword_27D9BF610;
  v45 = &qword_22C922B50;
  return sub_22C36DD28(v43, v44, v45);
}

uint64_t sub_22C643FB8(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_22C36985C();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_22C644010@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t *a3@<X8>)
{
  v221 = a1;
  v208 = a3;
  v4 = sub_22C3A5908(&qword_27D9BB908, &qword_22C910960);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v198 = &v186 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v190 = (&v186 - v8);
  MEMORY[0x28223BE20](v7);
  v195 = &v186 - v9;
  v10 = sub_22C3A5908(&qword_27D9BB0C0, &qword_22C90D960);
  MEMORY[0x28223BE20](v10 - 8);
  v196 = (&v186 - v11);
  v201 = sub_22C90952C();
  v199 = *(v201 - 8);
  v12 = MEMORY[0x28223BE20](v201);
  v191 = &v186 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v215 = &v186 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v200 = &v186 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v188 = &v186 - v19;
  MEMORY[0x28223BE20](v18);
  v204 = (&v186 - v20);
  v21 = sub_22C90906C();
  v210 = *(v21 - 8);
  v211 = v21;
  v22 = MEMORY[0x28223BE20](v21);
  v207 = &v186 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  v203 = &v186 - v25;
  MEMORY[0x28223BE20](v24);
  v206 = &v186 - v26;
  v27 = sub_22C90931C();
  v216 = *(v27 - 8);
  v217 = v27;
  v28 = MEMORY[0x28223BE20](v27);
  v194 = &v186 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x28223BE20](v28);
  v192 = (&v186 - v31);
  MEMORY[0x28223BE20](v30);
  v202 = (&v186 - v32);
  v33 = sub_22C9093BC();
  v34 = *(v33 - 8);
  v35 = MEMORY[0x28223BE20](v33);
  v197 = (&v186 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0));
  v37 = MEMORY[0x28223BE20](v35);
  v205 = &v186 - v38;
  v39 = MEMORY[0x28223BE20](v37);
  v41 = &v186 - v40;
  v42 = MEMORY[0x28223BE20](v39);
  v189 = (&v186 - v43);
  v44 = MEMORY[0x28223BE20](v42);
  v193 = (&v186 - v45);
  MEMORY[0x28223BE20](v44);
  v47 = (&v186 - v46);
  v48 = sub_22C3A5908(&qword_27D9BAA50, &qword_22C90D058);
  v49 = MEMORY[0x28223BE20](v48 - 8);
  v51 = (&v186 - v50);
  v52 = *(v49 + 56);
  v53 = (v34 + 2);
  v54 = v34[2];
  v54(&v186 - v50, v221, v33);
  v218 = a2;
  v54(v51 + v52, a2, v33);
  v220 = v34[11];
  v55 = v220(v51 + v52, v33);
  LODWORD(v213) = *MEMORY[0x277D72A58];
  v219 = v52;
  v224 = v54;
  if (v55 == v213)
  {
    v209 = v55;
    v206 = (v34 + 2);
    v54(v47, v51 + v52, v33);
    v214 = v51;
    v56 = v33;
    v212 = v34;
    v196 = v34[12];
    v196(v47, v33);
    v57 = *v47;
    v58 = swift_projectBox();
    v60 = v216;
    v59 = v217;
    v203 = *(v216 + 88);
    v61 = (v203)(v58, v217);
    if (v61 == *MEMORY[0x277D729A8])
    {
      LODWORD(v195) = v61;
      v204 = v57;
      v62 = v202;
      v194 = *(v60 + 16);
      (v194)(v202, v58, v59);
      v190 = *(v60 + 96);
      (v190)(v62, v59);
      v63 = *v62;
      v64 = v214;
      v65 = v220(v214, v33);
      if (v65 == v209)
      {
        v66 = v193;
        v53 = v206;
        v224(v193, v64, v33);
        v196(v66, v33);
        v67 = v217;
        v68 = swift_projectBox();
        v69 = (v203)(v68, v67);
        v70 = v215;
        if (v69 == v195)
        {
          v71 = v192;
          v72 = v195;
          (v194)(v192, v68, v67);
          (v190)(v71, v67);
          v73 = *v71;
          v74 = swift_allocBox();
          *v75 = v63 + v73;
          (*(v216 + 104))(v75, v72, v67);
          *v208 = v74;
          v76 = v212;
          (v212[13])();

          v77 = v76[1];
          v78 = v214;
          v77(v214 + v219, v33);
          v79 = v78;
          return (v77)(v79, v56);
        }

        v51 = v214;
        v80 = v212;
        v81 = v70;
        goto LABEL_27;
      }

      v51 = v64;
      v80 = v212;
      v53 = v206;
      goto LABEL_26;
    }

    v104 = v214;
    if (v61 == *MEMORY[0x277D729B8])
    {
      LODWORD(v195) = v61;
      v204 = v57;
      v105 = v60;
      v107 = (v60 + 16);
      v106 = *(v60 + 16);
      v108 = v194;
      v193 = v106;
      v190 = v107;
      (v106)(v194, v58, v59);
      v188 = *(v105 + 96);
      (v188)(v108, v59);
      v109 = v108[1];
      v202 = *v108;
      v110 = v104;
      v111 = v220(v104, v33);
      v112 = v59;
      v53 = v206;
      if (v111 == v209)
      {
        v194 = v109;
        v113 = v189;
        v224(v189, v104, v33);
        v187 = v33;
        v196(v113, v33);
        v114 = swift_projectBox();
        v115 = (v203)(v114, v112);
        v116 = v195;
        v81 = v215;
        if (v115 == v195)
        {
          v117 = v192;
          (v193)(v192, v114, v112);
          (v188)(v117, v112);
          v118 = *v117;
          v119 = *(v117 + 1);
          v120 = swift_allocBox();
          v122 = v121;
          v222 = v118;
          v223 = v119;

          MEMORY[0x2318B7850](v202, v194);

          v123 = v223;
          *v122 = v222;
          v122[1] = v123;
          (*(v216 + 104))(v122, v116, v112);
          *v208 = v120;
          v124 = v212;
          v56 = v187;
          (v212[13])();

          v77 = v124[1];
          v77(&v110[v219], v56);
          v79 = v110;
          return (v77)(v79, v56);
        }

        v33 = v187;
        v51 = v110;
LABEL_18:
        v80 = v212;
        goto LABEL_27;
      }

      v51 = v104;
    }

    else
    {
      v53 = v206;
      if (v61 == *MEMORY[0x277D729A0])
      {
        v224(v208, v221, v33);

        v126 = v212[1];
        v126(&v104[v219], v33);
        return (v126)(v104, v33);
      }

      v51 = v104;
    }

    v80 = v212;
LABEL_26:
    v81 = v215;
    goto LABEL_27;
  }

  v80 = v34;
  v81 = v215;
  if (v55 == *MEMORY[0x277D729E0])
  {
    v209 = v55;
    v224(v41, v51 + v219, v33);
    v212 = v80;
    v82 = v80;
    v83 = v51;
    v84 = v82[12];
    v84(v41, v33);
    v85 = *v41;
    v86 = v220(v83, v33);
    if (v86 == v209)
    {
      v224 = v85;
      v87 = swift_projectBox();
      v84(v83, v33);
      v214 = v83;
      v221 = *v83;
      v88 = swift_projectBox();
      v89 = v211;
      v90 = *(v210 + 16);
      v90(v206, v88, v211);
      v90(v203, v87, v89);
      v91 = sub_22C90905C();
      v92 = v195;
      sub_22C58B008(v91, v195);

      v93 = sub_22C370B74(v92, 1, v33);
      v187 = v33;
      if (v93 == 1)
      {
        sub_22C36DD28(v92, &qword_27D9BB908, &qword_22C910960);
        v94 = v196;
        v95 = v201;
        sub_22C36C640(v196, 1, 1, v201);
        v96 = sub_22C90905C();
        v97 = v190;
        sub_22C58B008(v96, v190);

        v98 = sub_22C370B74(v97, 1, v33);
        v99 = v200;
        if (v98 == 1)
        {
          sub_22C36DD28(v97, &qword_27D9BB908, &qword_22C910960);
          v100 = sub_22C9094EC();
          v101 = swift_allocBox();
          (*(*(v100 - 8) + 104))(v102, *MEMORY[0x277D72CC8], v100);
          *v204 = v101;
          v103 = v199;
          (*(v199 + 104))();
        }

        else
        {
          v175 = v188;
          sub_22C90935C();
          (v212[1])(v97, v33);
          v103 = v199;
          (*(v199 + 32))(v204, v175, v95);
        }

        if (sub_22C370B74(v94, 1, v95) != 1)
        {
          sub_22C36DD28(v94, &qword_27D9BB0C0, &qword_22C90D960);
        }
      }

      else
      {
        v127 = v196;
        sub_22C90935C();
        (v212[1])(v92, v33);
        v95 = v201;
        sub_22C36C640(v127, 0, 1, v201);
        v103 = v199;
        (*(v199 + 32))(v204, v127, v95);
        v99 = v200;
      }

      v176 = v211;
      v220 = swift_allocBox();
      v218 = v177;
      v178 = v204;
      (*(v103 + 16))(v99, v204, v95);
      v179 = v95;
      v180 = sub_22C90905C();
      v181 = v203;
      v182 = sub_22C90905C();
      v222 = v180;
      sub_22C3CC4FC(v182);
      sub_22C90903C();
      (*(v103 + 8))(v178, v179);
      v183 = *(v210 + 8);
      v183(v181, v176);
      v183(v206, v176);
      *v208 = v220;
      v184 = v212;
      v185 = v187;
      (v212[13])();

      return (v184[1])(v214 + v219, v185);
    }

    v51 = v83;
    goto LABEL_18;
  }

LABEL_27:
  v128 = v220(v51, v33);
  if (v128 == v213)
  {
    v129 = v205;
    v130 = v224;
    v224(v205, v51, v33);
    (v80[12])(v129, v33);
    v131 = swift_projectBox();
    v132 = (*(v216 + 88))(v131, v217);
    v133 = v219;
    if (v132 == *MEMORY[0x277D729A0])
    {
      v130(v208, v218, v33);

      v134 = v80[1];
      v134(v51 + v133, v33);
      return (v134)(v51, v33);
    }

    goto LABEL_34;
  }

  if (v128 != *MEMORY[0x277D729E0])
  {
LABEL_34:
    type metadata accessor for ExpressionEvaluatorError(0);
    sub_22C64644C(&qword_27D9BF618, type metadata accessor for ExpressionEvaluatorError, &unk_22C922C14);
    swift_allocError();
    v142 = v141;
    v143 = sub_22C3A5908(&qword_27D9BF620, &unk_22C922B70);
    v144 = v51;
    v145 = *(v143 + 48);
    v146 = v33;
    v147 = *(v143 + 64);
    v148 = *MEMORY[0x277D1DE38];
    v149 = sub_22C906D9C();
    (*(*(v149 - 8) + 104))(v142, v148, v149);
    v150 = (v142 + v145);
    v151 = v224;
    v224(v150, v221, v146);
    v151(v142 + v147, v218, v146);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    return sub_22C36DD28(v144, &qword_27D9BAA50, &qword_22C90D058);
  }

  v135 = v197;
  v214 = v51;
  v206 = v53;
  v224(v197, v51, v33);
  (v80[12])(v135, v33);
  v220 = *v135;
  v136 = swift_projectBox();
  (*(v210 + 16))(v207, v136, v211);
  v137 = sub_22C90905C();
  v138 = v198;
  sub_22C58B008(v137, v198);

  if (sub_22C370B74(v138, 1, v33) == 1)
  {
    v139 = v80;
    v140 = v33;
    sub_22C36DD28(v138, &qword_27D9BB908, &qword_22C910960);
  }

  else
  {
    v152 = v191;
    sub_22C90935C();
    v216 = v80[1];
    (v216)(v138, v33);
    v153 = v199;
    v154 = v201;
    (*(v199 + 32))(v81, v152, v201);
    v155 = v81;
    v156 = v200;
    sub_22C90935C();
    v157 = sub_22C90950C();
    v187 = v33;
    v217 = *(v153 + 8);
    v217(v156, v154);
    if (v157)
    {
      v221 = swift_allocBox();
      v215 = v158;
      (*(v153 + 16))(v156, v155, v154);
      v213 = sub_22C90905C();
      sub_22C3A5908(&qword_27D9BACF0, &unk_22C90D590);
      v159 = (*(v80 + 80) + 32) & ~*(v80 + 80);
      v160 = swift_allocObject();
      v212 = v80;
      v161 = v160;
      *(v160 + 16) = xmmword_22C90F800;
      v162 = v187;
      v224((v160 + v159), v218, v187);
      v222 = v213;
      sub_22C3CC4FC(v161);
      sub_22C90903C();
      v217(v155, v154);
      (*(v210 + 8))(v207, v211);
      *v208 = v221;
      (v212[13])();

      v163 = v214;
      v164 = v216;
      (v216)(v214 + v219, v162);
      return v164(v163, v162);
    }

    v139 = v80;
    v140 = v187;
    v217(v155, v154);
  }

  type metadata accessor for ExpressionEvaluatorError(0);
  sub_22C64644C(&qword_27D9BF618, type metadata accessor for ExpressionEvaluatorError, &unk_22C922C14);
  swift_allocError();
  v166 = v165;
  v167 = sub_22C3A5908(&qword_27D9BF620, &unk_22C922B70);
  v168 = *(v167 + 48);
  v169 = *(v167 + 64);
  v170 = *MEMORY[0x277D1DE38];
  v171 = sub_22C906D9C();
  (*(*(v171 - 8) + 104))(v166, v170, v171);
  v172 = v224;
  v224((v166 + v168), v221, v140);
  v172(v166 + v169, v218, v140);
  swift_storeEnumTagMultiPayload();
  swift_willThrow();
  (*(v210 + 8))(v207, v211);

  v173 = v139[1];
  v174 = v214;
  v173(v214 + v219, v140);
  return (v173)(v174, v140);
}

uint64_t sub_22C6457D0()
{
  type metadata accessor for ExpressionEvaluatorError(0);
  sub_22C36985C();
  MEMORY[0x28223BE20](v0);
  sub_22C369838();
  v3 = v2 - v1;
  v4 = sub_22C36BBCC();
  sub_22C6469B0(v4, v5, v6);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  result = 7;
  switch(EnumCaseMultiPayload)
  {
    case 1:
      v12 = sub_22C3A5908(&qword_27D9BF620, &unk_22C922B70);
      v13 = *(v12 + 48);
      v14 = *(v12 + 64);
      v15 = sub_22C9093BC();
      sub_22C36985C();
      v17 = *(v16 + 8);
      v17(v3 + v14, v15);
      v17(v3 + v13, v15);
      sub_22C906D9C();
      sub_22C36985C();
      (*(v18 + 8))(v3);
      result = 2;
      break;
    case 2:
      sub_22C643FB8(v3, type metadata accessor for ExpressionEvaluatorError);
      result = 3;
      break;
    case 3:
      sub_22C643FB8(v3, type metadata accessor for ExpressionEvaluatorError);
      result = 4;
      break;
    case 4:
      v19 = *(sub_22C3A5908(&qword_27D9BF628, &qword_22C922B80) + 48);
      v20 = sub_22C9093BC();
      sub_22C36985C();
      v22 = *(v21 + 8);
      v22(v3 + v19, v20);
      v23 = sub_22C36BA00();
      (v22)(v23);
      result = 5;
      break;
    case 5:
      sub_22C90654C();
      sub_22C36985C();
      (*(v24 + 8))(v3);
      result = 6;
      break;
    case 6:
      return result;
    default:
      v9 = *(sub_22C3A5908(&qword_27D9BF638, &unk_22C922B90) + 48);
      sub_22C9093BC();
      sub_22C36985C();
      (*(v10 + 8))(v3 + v9);
      sub_22C906FCC();
      sub_22C36985C();
      (*(v11 + 8))(v3);
      result = 1;
      break;
  }

  return result;
}

uint64_t sub_22C645A8C()
{
  v0 = sub_22C90654C();
  sub_22C369824();
  v86 = v1;
  MEMORY[0x28223BE20](v2);
  sub_22C369838();
  v5 = v4 - v3;
  v91 = sub_22C906D9C();
  sub_22C369824();
  v87 = v6;
  MEMORY[0x28223BE20](v7);
  sub_22C369838();
  v89 = (v9 - v8);
  v10 = sub_22C9093BC();
  sub_22C369824();
  v90 = v11;
  v13 = MEMORY[0x28223BE20](v12);
  v88 = &v86 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v92 = &v86 - v15;
  v16 = sub_22C906FCC();
  sub_22C369824();
  v18 = v17;
  MEMORY[0x28223BE20](v19);
  sub_22C369838();
  v22 = v21 - v20;
  type metadata accessor for ExpressionEvaluatorError(0);
  sub_22C36985C();
  MEMORY[0x28223BE20](v23);
  sub_22C369838();
  v26 = v25 - v24;
  v27 = sub_22C372164();
  sub_22C6469B0(v27, v28, v29);
  sub_22C36ECB4();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v63 = sub_22C3A5908(&qword_27D9BF620, &unk_22C922B70);
      v64 = *(v63 + 48);
      v65 = *(v63 + 64);
      v66 = v87;
      v67 = v89;
      (*(v87 + 32))(v89, v26, v91);
      v68 = v90;
      v69 = *(v90 + 32);
      v69(v92, v26 + v64, v10);
      v69(v88, v26 + v65, v10);
      sub_22C3A5908(&qword_27D9BBCA0, &qword_22C9120F0);
      inited = swift_initStackObject();
      v71 = sub_22C37BBB4(inited, xmmword_22C90FB40);
      v71[2].n128_u64[0] = v72;
      v71[2].n128_u64[1] = v73;
      v74 = v91;
      v71[4].n128_u64[1] = v91;
      v75 = sub_22C36D548(&v71[3]);
      (*(v66 + 16))(v75, v67, v74);
      inited[5].n128_u64[0] = 7563372;
      inited[5].n128_u64[1] = 0xE300000000000000;
      inited[7].n128_u64[1] = v10;
      v76 = sub_22C36D548(&inited[6]);
      v77 = *(v68 + 16);
      v78 = v92;
      v77(v76, v92, v10);
      inited[8].n128_u64[0] = 7563378;
      inited[8].n128_u64[1] = 0xE300000000000000;
      inited[10].n128_u64[1] = v10;
      v79 = sub_22C36D548(&inited[9]);
      v80 = v88;
      v77(v79, v88, v10);
      v41 = sub_22C381714();
      v81 = *(v68 + 8);
      v81(v80, v10);
      v81(v78, v10);
      (*(v66 + 8))(v89, v91);
      break;
    case 2u:
      v52 = v87;
      v53 = v89;
      v54 = sub_22C3806B8();
      v10 = v91;
      v55(v54);
      sub_22C3A5908(&qword_27D9BBCA0, &qword_22C9120F0);
      v56 = swift_initStackObject();
      v57 = sub_22C37BBB4(v56, xmmword_22C90F800);
      goto LABEL_6;
    case 3u:
      v52 = v90;
      v53 = v92;
      v60 = sub_22C3806B8();
      v61(v60);
      sub_22C3A5908(&qword_27D9BBCA0, &qword_22C9120F0);
      *(swift_initStackObject() + 16) = xmmword_22C90F800;
      sub_22C37B378();
LABEL_6:
      v57[2].n128_u64[0] = v58;
      v57[2].n128_u64[1] = v59;
      v57[4].n128_u64[1] = v10;
      v62 = sub_22C36D548(&v57[3]);
      (*(v52 + 16))(v62, v53, v10);
      v41 = sub_22C381714();
      (*(v52 + 8))(v53, v10);
      break;
    case 4u:
      v42 = *(sub_22C3A5908(&qword_27D9BF628, &qword_22C922B80) + 48);
      v43 = v90;
      v44 = *(v90 + 32);
      v45 = v92;
      v44(v92, v26, v10);
      v46 = v88;
      v44(v88, v26 + v42, v10);
      sub_22C3A5908(&qword_27D9BBCA0, &qword_22C9120F0);
      v47 = swift_initStackObject();
      *(v47 + 16) = xmmword_22C90F870;
      *(v47 + 32) = 7563372;
      *(v47 + 40) = 0xE300000000000000;
      *(v47 + 72) = v10;
      v48 = sub_22C36D548((v47 + 48));
      v49 = *(v43 + 16);
      v49(v48, v45, v10);
      *(v47 + 80) = 0x7865646E69;
      *(v47 + 88) = 0xE500000000000000;
      *(v47 + 120) = v10;
      v50 = sub_22C36D548((v47 + 96));
      v49(v50, v46, v10);
      v41 = sub_22C381714();
      v51 = *(v43 + 8);
      v51(v46, v10);
      v51(v45, v10);
      break;
    case 5u:
      v82 = v86;
      (*(v86 + 32))(v5, v26, v0);
      sub_22C3A5908(&qword_27D9BBCA0, &qword_22C9120F0);
      v83 = swift_initStackObject();
      *(v83 + 16) = xmmword_22C90F800;
      *(v83 + 32) = 0x3A72707865;
      *(v83 + 40) = 0xE500000000000000;
      *(v83 + 72) = v0;
      v84 = sub_22C36D548((v83 + 48));
      (*(v82 + 16))(v84, v5, v0);
      v41 = sub_22C381714();
      (*(v82 + 8))(v5, v0);
      break;
    case 6u:
      v41 = sub_22C909F0C();
      break;
    default:
      v30 = *(sub_22C3A5908(&qword_27D9BF638, &unk_22C922B90) + 48);
      (*(v18 + 32))(v22, v26, v16);
      v31 = v90;
      v32 = v92;
      (*(v90 + 32))(v92, v26 + v30, v10);
      sub_22C3A5908(&qword_27D9BBCA0, &qword_22C9120F0);
      v33 = swift_initStackObject();
      v34 = sub_22C37BBB4(v33, xmmword_22C90F870);
      v34[2].n128_u64[0] = v35;
      v34[2].n128_u64[1] = v36;
      v34[4].n128_u64[1] = v16;
      v37 = sub_22C36D548(&v34[3]);
      (*(v18 + 16))(v37, v22, v16);
      sub_22C37B378();
      v33[5].n128_u64[0] = v38;
      v33[5].n128_u64[1] = v39;
      v33[7].n128_u64[1] = v10;
      sub_22C36D548(&v33[6]);
      sub_22C646A98();
      v40();
      v41 = sub_22C381714();
      (*(v31 + 8))(v32, v10);
      (*(v18 + 8))(v22, v16);
      break;
  }

  return v41;
}

uint64_t sub_22C646350(uint64_t a1)
{
  v2 = sub_22C64644C(&qword_27D9BF680, type metadata accessor for ExpressionEvaluatorError, &unk_22C922BD4);

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_22C6463BC(uint64_t a1)
{
  v2 = sub_22C64644C(&qword_27D9BF680, type metadata accessor for ExpressionEvaluatorError, &unk_22C922BD4);

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_22C64644C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_22C6464B4(uint64_t a1)
{
  sub_22C646578(319);
  if (v1 <= 0x3F)
  {
    sub_22C6465EC(319);
    if (v2 <= 0x3F)
    {
      sub_22C906D9C();
      if (v3 <= 0x3F)
      {
        sub_22C9093BC();
        if (v4 <= 0x3F)
        {
          sub_22C646664(319);
          if (v5 <= 0x3F)
          {
            sub_22C6466CC();
            if (v6 <= 0x3F)
            {
              swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_22C646578(uint64_t a1)
{
  if (!qword_27D9BF650)
  {
    sub_22C906FCC();
    sub_22C9093BC();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27D9BF650);
    }
  }
}

void sub_22C6465EC(uint64_t a1)
{
  if (!qword_27D9BF658)
  {
    sub_22C906D9C();
    sub_22C9093BC();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_27D9BF658);
    }
  }
}

void sub_22C646664(uint64_t a1)
{
  if (!qword_27D9BF660)
  {
    sub_22C9093BC();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27D9BF660);
    }
  }
}

void sub_22C6466CC()
{
  if (!qword_27D9BF668)
  {
    v0 = sub_22C90654C();
    if (!v1)
    {
      atomic_store(v0, &qword_27D9BF668);
    }
  }
}

void sub_22C64673C(uint64_t a1)
{
  sub_22C90880C();
  if (v1 <= 0x3F)
  {
    sub_22C646808(319);
    if (v2 <= 0x3F)
    {
      sub_22C908AEC();
      if (v3 <= 0x3F)
      {
        sub_22C6468B4();
        if (v4 <= 0x3F)
        {
          sub_22C646910(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_22C646808(uint64_t a1)
{
  if (!qword_28142FA28)
  {
    sub_22C901FAC();
    sub_22C908C5C();
    sub_22C64644C(&qword_2814357B0, MEMORY[0x277D1C338], MEMORY[0x277D1C348]);
    v1 = sub_22C909F2C();
    if (!v2)
    {
      atomic_store(v1, &qword_28142FA28);
    }
  }
}

unint64_t sub_22C6468B4()
{
  result = qword_28142FAA8;
  if (!qword_28142FAA8)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_28142FAA8);
  }

  return result;
}

void sub_22C646910(uint64_t a1)
{
  if (!qword_28142FA88)
  {
    sub_22C90941C();
    v1 = sub_22C90AC6C();
    if (!v2)
    {
      atomic_store(v1, &qword_28142FA88);
    }
  }
}

uint64_t sub_22C6469B0(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_22C36985C();
  v4 = sub_22C36BA00();
  v5(v4);
  return a2;
}

uint64_t sub_22C646A54(uint64_t a1)
{

  return sub_22C36C640(v1, 1, 1, a1);
}

uint64_t sub_22C646AA4@<X0>(uint64_t a1@<X0>, __n128 *a2@<X1>, unint64_t a5@<X8>, __n128 a6@<Q0>, __n128 a7@<Q1>)
{
  *a2 = a7;
  a2[1] = a6;
  a2[2].n128_u64[0] = a5;
  *(v7 - 112) = a1;

  return swift_willThrow();
}

uint64_t sub_22C646AC4()
{
  *(v1 - 152) = *(v0 + 96);

  return swift_allocBox();
}

uint64_t sub_22C646AE4(uint64_t a1, uint64_t a2, char a3)
{
  v6 = sub_22C9063DC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a3 & 1) == 0)
  {
    return 6;
  }

  v14[2] = a1;
  v14[3] = a2;
  v14[0] = 0xD00000000000003FLL;
  v14[1] = 0x800000022C92EC50;
  sub_22C3ECFB8();
  sub_22C3ED00C();
  if ((sub_22C90A02C() & 1) == 0)
  {
    return 6;
  }

  sub_22C903FAC();
  v10 = sub_22C9063CC();
  v11 = sub_22C90AACC();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_22C366000, v10, v11, "GenerativeAssistantToolsRiskProvider# Returning always_direct_execute risk for GenerativeAssistanttool", v12, 2u);
    MEMORY[0x2318B9880](v12, -1, -1);
  }

  (*(v7 + 8))(v9, v6);
  return 5;
}

_BYTE *storeEnumTagSinglePayload for GenerativeAssistantToolsRiskProvider(_BYTE *result, unsigned int a2, unsigned int a3)
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

void sub_22C646D68()
{
  sub_22C36BA7C();
  v93 = v1;
  v3 = v2;
  v84 = sub_22C901FAC();
  sub_22C369824();
  v89 = v4;
  MEMORY[0x28223BE20](v5);
  sub_22C3698A8();
  sub_22C3698F8(v6);
  v92 = sub_22C9070DC();
  sub_22C369824();
  v86 = v7;
  MEMORY[0x28223BE20](v8);
  sub_22C3698A8();
  sub_22C36D234(v9);
  v10 = sub_22C3A5908(&qword_27D9BAA18, &qword_22C911C40);
  v11 = sub_22C369914(v10);
  MEMORY[0x28223BE20](v11);
  sub_22C369ABC();
  sub_22C49CA04();
  MEMORY[0x28223BE20](v12);
  v14 = &v79 - v13;
  v15 = sub_22C9089DC();
  sub_22C369824();
  v90 = v16;
  MEMORY[0x28223BE20](v17);
  sub_22C369838();
  v20 = v19 - v18;
  v103 = sub_22C9088CC();
  sub_22C369824();
  v80 = v21;
  MEMORY[0x28223BE20](v22);
  sub_22C369838();
  sub_22C36D83C();
  v23 = sub_22C908A0C();
  sub_22C369824();
  v25 = v24;
  MEMORY[0x28223BE20](v26);
  sub_22C3698A8();
  v102 = v27;
  v28 = *(sub_22C9087DC() + 16);
  if (v28)
  {
    v79 = v3;
    v95 = 0;
    sub_22C36BA94();
    v100 = v29 + v30;
    v98 = v25 + 8;
    v99 = v25 + 16;
    v31 = v90;
    v97 = v90 + 88;
    v96 = *MEMORY[0x277D1E6F8];
    v90 += 96;
    v91 = v31 + 8;
    v88 = v80 + 32;
    v85 = v86 + 32;
    v82 = v89 + 8;
    v81 = v86 + 8;
    v89 = v80 + 8;
    v3 = v92;
    v87 = v23;
    v94 = v32;
    v101 = v29;
    while (v28 <= *(v29 + 16))
    {
      --v28;
      v33 = sub_22C6AF81C();
      v34(v33);
      sub_22C9089EC();
      v35 = sub_22C37170C();
      v36(v35);
      v37 = sub_22C37B5F4();
      v39 = v38(v37);
      if (v39 == v96)
      {
        v40 = sub_22C37B5F4();
        v41(v40);
        v42 = sub_22C37A27C();
        v43(v42, v20, v103);
        v44 = sub_22C90887C();
        MEMORY[0x28223BE20](v44);
        sub_22C369920();
        *(v45 - 16) = v93;
        v46 = v95;
        sub_22C6B0590(sub_22C6AEA98, v47, v44);

        v3 = v92;
        sub_22C369A54(v14);
        if (!v48)
        {

          v73 = sub_22C37A27C();
          v74(v73, v103);
          v75 = v3;
          v3 = v79;
          v76 = sub_22C6AF3F0();
          v77(v76);
          v78 = 0;
          goto LABEL_14;
        }

        v95 = v46;
        sub_22C38AA18();
        sub_22C36DD28(v49, v50, v51);
        v52 = sub_22C90887C();
        sub_22C58AF40(v52, v0);

        sub_22C369A54(v0);
        if (v48)
        {
          v53 = sub_22C37A27C();
          v54(v53, v103);
          sub_22C38AA18();
          sub_22C36DD28(v55, v56, v57);
        }

        else
        {
          v60 = sub_22C36EC8C();
          v61(v60);
          v62 = v15;
          v63 = v0;
          v64 = v14;
          v65 = v83;
          sub_22C9068FC();
          LODWORD(v86) = sub_22C901F5C();
          sub_22C36BA4C();
          v66 = v65;
          v14 = v64;
          v0 = v63;
          v15 = v62;
          v67 = v103;
          v68(v66, v84);
          sub_22C36BA4C();
          v69 = sub_22C36BBCC();
          v70(v69);
          v71 = sub_22C37A27C();
          v72(v71, v67);
          if (v86)
          {
LABEL_13:

            v78 = 1;
            v75 = v3;
            v3 = v79;
            goto LABEL_14;
          }
        }
      }

      else
      {
        v58 = sub_22C37B5F4();
        v59(v58);
      }

      v29 = v101;
      if (!v28)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  v78 = 1;
  v75 = v92;
LABEL_14:
  sub_22C36C640(v3, v78, 1, v75);
  sub_22C36CC48();
}

void sub_22C6473A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = *(a1 + 16);
  v36 = MEMORY[0x277D84F90];
  sub_22C3B5E2C(0, v8, 0, a4, a5, a6, a7);
  v9 = a1 + 56;
  v10 = v36;
  v11 = -1;
  v12 = -1 << *(a1 + 32);
  if (-v12 < 64)
  {
    v11 = ~(-1 << -v12);
  }

  v13 = v11 & *(a1 + 56);
  v14 = (63 - v12) >> 6;
  v35 = v8;
  if (v8)
  {

    v15 = 0;
    v8 = 0;
    while (v13)
    {
LABEL_10:
      swift_bridgeObjectRetain_n();
      sub_22C3A5908(&qword_27D9BF720, &qword_22C922F20);
      v17 = sub_22C90A1AC();
      MEMORY[0x2318B7850](v17);

      MEMORY[0x2318B7850](44, 0xE100000000000000);

      v23 = *(v36 + 16);
      v22 = *(v36 + 24);
      if (v23 >= v22 >> 1)
      {
        sub_22C3B5E2C(v22 > 1, v23 + 1, 1, v18, v19, v20, v21);
      }

      ++v15;
      v13 &= v13 - 1;
      *(v36 + 16) = v23 + 1;
      v24 = v36 + 16 * v23;
      *(v24 + 32) = 538976288;
      *(v24 + 40) = 0xE400000000000000;
      if (v15 == v35)
      {
        goto LABEL_15;
      }
    }

    while (1)
    {
      v16 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (v16 >= v14)
      {
        goto LABEL_27;
      }

      v13 = *(v9 + 8 * v16);
      ++v8;
      if (v13)
      {
        v8 = v16;
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
  }

  else
  {

LABEL_15:
    if (!v13)
    {
      goto LABEL_17;
    }

    do
    {
      v25 = v10;
LABEL_21:
      swift_bridgeObjectRetain_n();
      sub_22C3A5908(&qword_27D9BF720, &qword_22C922F20);
      v27 = sub_22C90A1AC();
      MEMORY[0x2318B7850](v27);

      MEMORY[0x2318B7850](44, 0xE100000000000000);

      v10 = v25;
      v37 = v25;
      v32 = *(v25 + 16);
      v33 = *(v10 + 24);
      if (v32 >= v33 >> 1)
      {
        sub_22C3B5E2C(v33 > 1, v32 + 1, 1, v28, v29, v30, v31);
        v10 = v37;
      }

      v13 &= v13 - 1;
      *(v10 + 16) = v32 + 1;
      v34 = v10 + 16 * v32;
      *(v34 + 32) = 538976288;
      *(v34 + 40) = 0xE400000000000000;
    }

    while (v13);
LABEL_17:
    while (1)
    {
      v26 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (v26 >= v14)
      {

        return;
      }

      v13 = *(v9 + 8 * v26);
      ++v8;
      if (v13)
      {
        v25 = v10;
        v8 = v26;
        goto LABEL_21;
      }
    }
  }

  __break(1u);
}

uint64_t sub_22C6476A4(uint64_t a1, uint64_t a2)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = a2;
  sub_22C6AC7FC(a1, sub_22C6AC6A0, 0, isUniquelyReferenced_nonNull_native, &v8);
  v6 = v8;
  if (v2)
  {
  }

  return v6;
}

void Session.Transcript.searchExpression(returning:)()
{
  sub_22C36BA7C();
  sub_22C901FAC();
  sub_22C369824();
  v58 = v2;
  v59 = v1;
  MEMORY[0x28223BE20](v1);
  sub_22C3698A8();
  v57 = v3;
  v4 = sub_22C3A5908(&qword_27D9BAA18, &qword_22C911C40);
  sub_22C369914(v4);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v5);
  sub_22C36D5B4();
  v60 = v6;
  sub_22C36BA0C();
  v56 = sub_22C90654C();
  sub_22C369824();
  v54 = v7;
  MEMORY[0x28223BE20](v8);
  sub_22C3698A8();
  v55 = v9;
  v10 = sub_22C3A5908(&qword_27D9BA808, &qword_22C90C6E0);
  sub_22C369914(v10);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v11);
  sub_22C37F478();
  sub_22C9089DC();
  sub_22C369824();
  MEMORY[0x28223BE20](v12);
  sub_22C377578();
  sub_22C906ECC();
  sub_22C369824();
  MEMORY[0x28223BE20](v13);
  sub_22C369838();
  sub_22C387210();
  sub_22C9087DC();
  v14 = sub_22C372164();
  sub_22C3A5908(v14, v15);
  sub_22C369E24();
  sub_22C44178C();
  sub_22C3D32C8(v16, v17, v18, v19);
  sub_22C907F1C();

  v20 = sub_22C908A0C();
  v21 = sub_22C36C8A8();
  sub_22C36D0A8(v21, v22, v20);
  if (v23)
  {
    v24 = &qword_27D9BA808;
    v25 = &qword_22C90C6E0;
    v26 = v0;
LABEL_4:
    sub_22C36DD28(v26, v24, v25);
    goto LABEL_10;
  }

  sub_22C9089EC();
  sub_22C36BBA8();
  v27 = sub_22C36BE34();
  v28(v27);
  v29 = sub_22C372FCC();
  if (v30(v29) != *MEMORY[0x277D1E798])
  {
    v37 = sub_22C372FCC();
    v38(v37);
    goto LABEL_10;
  }

  v31 = sub_22C372FCC();
  v32(v31);
  v33 = sub_22C37B220();
  v34(v33);
  sub_22C906DFC();
  sub_22C646D68();
  (*(v58 + 8))(v57, v59);
  sub_22C9070DC();
  sub_22C376738(v60);
  if (v23)
  {
    v35 = sub_22C36FC08();
    v36(v35);
    v24 = &qword_27D9BAA18;
    v25 = &qword_22C911C40;
    v26 = v60;
    goto LABEL_4;
  }

  sub_22C90702C();
  v43 = sub_22C36FC08();
  v44(v43);
  sub_22C36BBA8();
  v45 = sub_22C370018();
  v46(v45);
  if ((*(v54 + 88))(v55, v56) == *MEMORY[0x277D1DA48])
  {
    v47 = sub_22C371530();
    v48(v47);
    v49 = sub_22C90832C();
    sub_22C36985C();
    v50 = sub_22C37B9B0();
    v51(v50);
    sub_22C36BECC();
    v42 = v49;
    goto LABEL_11;
  }

  v52 = sub_22C371530();
  v53(v52);
LABEL_10:
  sub_22C90832C();
  sub_22C36A748();
LABEL_11:
  sub_22C36C640(v39, v40, v41, v42);
  sub_22C36CC48();
}

void sub_22C647C78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22C36BA7C();
  a19 = v22;
  a20 = v23;
  sub_22C3704C4();
  v24 = sub_22C90734C();
  v25 = sub_22C36A7A4(v24, &a18);
  v182 = v26;
  MEMORY[0x28223BE20](v25);
  sub_22C3698A8();
  sub_22C3698F8(v27);
  v191 = sub_22C90654C();
  sub_22C369824();
  v202 = v28;
  MEMORY[0x28223BE20](v29);
  sub_22C3698E4();
  v186 = v30;
  sub_22C369930();
  MEMORY[0x28223BE20](v31);
  sub_22C36BA58();
  v185 = v32;
  sub_22C369930();
  MEMORY[0x28223BE20](v33);
  sub_22C36BA64();
  v201 = v34;
  sub_22C36BA0C();
  sub_22C9070DC();
  sub_22C369824();
  v199 = v36;
  v200 = v35;
  MEMORY[0x28223BE20](v35);
  sub_22C3698A8();
  v198 = v37;
  sub_22C36BA0C();
  sub_22C906A3C();
  sub_22C369824();
  v188 = v39;
  v189 = v38;
  MEMORY[0x28223BE20](v38);
  sub_22C3698A8();
  v187 = v40;
  sub_22C36BA0C();
  sub_22C9089DC();
  sub_22C369824();
  v194 = v42;
  v195 = v41;
  MEMORY[0x28223BE20](v41);
  sub_22C3698A8();
  v193 = v43;
  v44 = sub_22C3A5908(&qword_27D9BAA18, &qword_22C911C40);
  v45 = sub_22C369914(v44);
  MEMORY[0x28223BE20](v45);
  sub_22C3698E4();
  v196 = v46;
  sub_22C369930();
  MEMORY[0x28223BE20](v47);
  sub_22C36BA64();
  v197 = v48;
  sub_22C36BA0C();
  v49 = sub_22C901FAC();
  sub_22C369824();
  v51 = v50;
  v53 = *(v52 + 64);
  MEMORY[0x28223BE20](v54);
  v55 = &v178 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_22C3A5908(&qword_27D9BA808, &qword_22C90C6E0);
  sub_22C369914(v56);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v57);
  v59 = &v178 - v58;
  v60 = sub_22C908A0C();
  sub_22C369824();
  v62 = v61;
  MEMORY[0x28223BE20](v63);
  sub_22C369838();
  v66 = v65 - v64;
  v203 = v21;
  v67 = sub_22C9087DC();
  sub_22C37BBE4();
  v190 = v20;
  v68(v55, v20, v49);
  v69 = (*(v51 + 80) + 16) & ~*(v51 + 80);
  v70 = swift_allocObject();
  v192 = v51;
  v184 = *(v51 + 32);
  v184(v70 + v69, v55, v49);
  sub_22C58B3B4(v67, v59);

  v71 = sub_22C36FD7C();
  sub_22C36D0A8(v71, v72, v60);
  if (v73)
  {
    sub_22C36DD28(v59, &qword_27D9BA808, &qword_22C90C6E0);
  }

  else
  {
    v179 = v62;
    v74 = sub_22C37B5F4();
    v180 = v60;
    v75(v74);
    v76 = v193;
    v178 = v66;
    sub_22C9089EC();
    v78 = v194;
    v77 = v195;
    if ((*(v194 + 88))(v76, v195) == *MEMORY[0x277D1E720])
    {
      (*(v78 + 96))(v76, v77);
      sub_22C5CA7E8();
      v79 = sub_22C36FC2C();
      v77 = v189;
      v80(v79);
      sub_22C6AF7EC();
      sub_22C9068FC();
      v81 = v197;
      sub_22C646D68();
      v82 = sub_22C36A724();
      v83(v82);
      v84 = sub_22C6AF6F8();
    }

    else
    {
      v81 = v197;
      sub_22C646D68();
      v84 = sub_22C6AFB78();
    }

    v85(v84, v77);
    v87 = v201;
    v86 = v202;
    v88 = v196;
    v89 = sub_22C37F8AC();
    sub_22C6AEA50(v89, v90, v91, v92);
    v93 = sub_22C36E638();
    v94 = v200;
    sub_22C36D0A8(v93, v95, v200);
    if (!v73)
    {
      v104 = sub_22C36CB30();
      v105(v104, v88, v94);
      sub_22C90702C();
      v106 = v191;
      v107 = (*(v86 + 88))(v87, v191);
      if (v107 == *MEMORY[0x277D1DAA8])
      {
        sub_22C646A98();
        v108 = sub_22C5CAA58();
        v109(v108);
        v110 = sub_22C6AFEA8();
        v111(v110, v106);
        sub_22C906F2C();
        sub_22C3699C8();
        v112 = sub_22C36A724();
        if (v113(v112) == *MEMORY[0x277D1DEE8])
        {
          v114 = sub_22C36A724();
          v116 = v115(v114);
          MEMORY[0x28223BE20](v116);
          sub_22C369920();
          *(v117 - 16) = v203;
          v118 = sub_22C6AFFA4();
          sub_22C8F4A3C(v118, v119, v120);
          sub_22C37BB14();

          v121 = sub_22C6AF6B0();
          v122(v121);
          sub_22C36DD28(v81, &qword_27D9BAA18, &qword_22C911C40);
          v123 = sub_22C38B21C();
          v124(v123);
          v125 = sub_22C3819EC();
LABEL_22:
          v127(v125, v126);
          goto LABEL_17;
        }

        v144 = sub_22C36A724();
        v145(v144);
        goto LABEL_16;
      }

      if (v107 == *MEMORY[0x277D1D9F8])
      {
        sub_22C646A98();
        v128 = sub_22C6AF3F0();
        v129(v128);
        v130 = sub_22C634528();
        v131(v130, v106);
        v132 = sub_22C6AF810();
        (v184)(v132);
        sub_22C647C78(v55, v133, v134, v135, v136, v137, v138, v139, v178, v179, v180, v181, v182, v183, v184, v185, v186, v187, v188, v189);
        v140 = sub_22C38BD8C();
        v141(v140);
        v142 = sub_22C6AF6B0();
        v143(v142);
      }

      else
      {
        if (v107 != *MEMORY[0x277D1DA48])
        {
          v202 = v49;
          if (v107 != *MEMORY[0x277D1DAE8])
          {
LABEL_16:
            v146 = sub_22C6AF6B0();
            v147(v146);
            sub_22C36DD28(v81, &qword_27D9BAA18, &qword_22C911C40);
            v148 = sub_22C6B0278();
            v149(v148);
            v150 = sub_22C6AF6F8();
            v151(v150, v106);
            goto LABEL_17;
          }

          sub_22C646A98();
          v159 = sub_22C38644C();
          v160(v159);
          v161 = sub_22C37B9B0();
          v162(v161);
          sub_22C3722F4();
          v163 = sub_22C4F6088();
          v165 = v164(v163);
          MEMORY[0x2318B4800](v165);
          sub_22C647C78(v55, v166, v167, v168, v169, v170, v171, v172, v178, v179, v180, v181, v182, v183, v184, v185, v186, v187, v188, v189);
          (*(v192 + 8))(v55, v202);
          sub_22C6AEF98();
          sub_22C6AFE84();
          v173();
          v174 = sub_22C6AF6B0();
          v175(v174);
          sub_22C36DD28(v81, &qword_27D9BAA18, &qword_22C911C40);
          v176 = sub_22C6B0278();
          v177(v176);
LABEL_21:
          v125 = sub_22C6AF6F8();
          v126 = v106;
          goto LABEL_22;
        }

        sub_22C3A5908(&qword_27D9BAC20, &unk_22C90D4C0);
        v152 = v199;
        v153 = (*(v199 + 80) + 32) & ~*(v199 + 80);
        v154 = swift_allocObject();
        *(v154 + 16) = xmmword_22C90F800;
        (*(v152 + 16))(v154 + v153, v198, v94);
        v155 = sub_22C383CCC();
        v156(v155);
      }

      sub_22C36DD28(v81, &qword_27D9BAA18, &qword_22C911C40);
      v157 = sub_22C38B21C();
      v158(v157);
      goto LABEL_21;
    }

    sub_22C37A060();
    sub_22C36DD28(v96, v97, v98);
    sub_22C37A060();
    sub_22C36DD28(v99, v100, v101);
    v102 = sub_22C38B21C();
    v103(v102);
  }

LABEL_17:
  sub_22C36CC48();
}

uint64_t sub_22C64871C()
{
  v2 = sub_22C3A5908(&qword_27D9BAA18, &qword_22C911C40);
  sub_22C369914(v2);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v3);
  sub_22C37F478();
  sub_22C90654C();
  sub_22C369824();
  MEMORY[0x28223BE20](v4);
  sub_22C377578();
  v5 = sub_22C6B03BC();
  result = sub_22C64962C(v5);
  if (!v0)
  {
    v7 = sub_22C9070DC();
    v8 = sub_22C36C8A8();
    sub_22C36D0A8(v8, v9, v7);
    if (v10)
    {
      sub_22C36DD28(v1, &qword_27D9BAA18, &qword_22C911C40);
    }

    else
    {
      sub_22C90702C();
      sub_22C36BBA8();
      v11 = sub_22C36FC2C();
      v12(v11);
      v13 = sub_22C3806B8();
      if (v14(v13) == *MEMORY[0x277D1DA48])
      {
        v15 = sub_22C3806B8();
        v16(v15);
        v17 = sub_22C90832C();
        sub_22C36985C();
        v18 = sub_22C37B220();
        v19(v18);
        sub_22C36BECC();
        v23 = v17;
        return sub_22C36C640(v20, v21, v22, v23);
      }

      v24 = sub_22C3806B8();
      v25(v24);
    }

    sub_22C90832C();
    sub_22C598F54();
    sub_22C36A748();
    return sub_22C36C640(v20, v21, v22, v23);
  }

  return result;
}

void sub_22C648928()
{
  sub_22C36BA7C();
  v3 = v2;
  v101 = sub_22C9026BC();
  sub_22C369824();
  v106 = v4;
  MEMORY[0x28223BE20](v5);
  sub_22C3698A8();
  v100 = v6;
  sub_22C36BA0C();
  v103 = sub_22C907DEC();
  sub_22C369824();
  v105 = v7;
  MEMORY[0x28223BE20](v8);
  sub_22C3698A8();
  v112 = v9;
  sub_22C36BA0C();
  v97 = sub_22C9020CC();
  sub_22C369824();
  v99 = v10;
  MEMORY[0x28223BE20](v11);
  sub_22C3698A8();
  v98 = v12;
  sub_22C36BA0C();
  v111 = sub_22C9089DC();
  sub_22C369824();
  v108 = v13;
  MEMORY[0x28223BE20](v14);
  sub_22C3698A8();
  v107 = v15;
  sub_22C36BA0C();
  v110 = sub_22C906ECC();
  sub_22C369824();
  v104 = v16;
  MEMORY[0x28223BE20](v17);
  sub_22C3698A8();
  v102 = v18;
  v19 = sub_22C3A5908(&qword_27D9BA808, &qword_22C90C6E0);
  sub_22C369914(v19);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v20);
  sub_22C37BDA4();
  v21 = sub_22C908A0C();
  sub_22C369824();
  v109 = v22;
  MEMORY[0x28223BE20](v23);
  sub_22C369838();
  v26 = v25 - v24;
  v27 = sub_22C3A5908(&qword_27D9BAA18, &qword_22C911C40);
  sub_22C369914(v27);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v28);
  v30 = (&v90 - v29);
  v31 = sub_22C901FAC();
  sub_22C369824();
  v33 = v32;
  MEMORY[0x28223BE20](v34);
  sub_22C369ABC();
  MEMORY[0x28223BE20](v35);
  v37 = &v90 - v36;
  sub_22C64962C(v3);
  v91 = v1;
  v92 = v0;
  v95 = v37;
  v96 = v33;
  v90 = v26;
  v93 = v31;
  v38 = v112;
  v94 = v21;
  v39 = sub_22C9070DC();
  sub_22C376738(v30);
  if (v55)
  {
    v40 = &qword_27D9BAA18;
    v41 = &qword_22C911C40;
    v42 = v30;
LABEL_7:
    sub_22C36DD28(v42, v40, v41);
    goto LABEL_8;
  }

  sub_22C9068FC();
  sub_22C36BBA8();
  (*(v43 + 8))(v30, v39);
  v44 = sub_22C36A724();
  v45 = v93;
  v46(v44);
  v113 = sub_22C9087DC();
  v47 = sub_22C372164();
  sub_22C3A5908(v47, v48);
  sub_22C369E24();
  sub_22C44178C();
  sub_22C3D32C8(v49, v50, v51, v52);
  sub_22C36D2E8();
  sub_22C907F1C();

  v53 = sub_22C37EF1C();
  sub_22C36D0A8(v53, v54, v94);
  if (v55)
  {
    v56 = sub_22C459028();
    v57(v56);
    v40 = &qword_27D9BA808;
    v41 = &qword_22C90C6E0;
    v42 = &qword_22C912420;
    goto LABEL_7;
  }

  sub_22C6B02EC();
  v58 = sub_22C372164();
  v59(v58);
  sub_22C9089EC();
  v60 = sub_22C372158();
  if (v61(v60) == *MEMORY[0x277D1E798])
  {
    v62 = sub_22C372158();
    v63(v62);
    sub_22C6AF96C();
    v64 = sub_22C441720();
    v65(v64);
    sub_22C906EBC();
    v66 = v100;
    sub_22C6AF7EC();
    sub_22C907DAC();
    (*(v105 + 8))(v38, v103);
    sub_22C6AFE60();
    if ((*(v67 + 88))(v66, v101) == *MEMORY[0x277D1CBF0])
    {
      v68 = sub_22C36A724();
      v69(v68);
      sub_22C37FF3C();
      v70 = sub_22C370018();
      v71(v70);
      sub_22C9020AC();
      v72 = sub_22C370018();
      v73(v72);
      v74 = sub_22C371510();
      v75(v74);
      v76 = sub_22C6AFE48();
      v77(v76);
      sub_22C6AFE84();
      v78();
    }

    else
    {
      v83 = sub_22C37B5F4();
      v84(v83);
      v85 = sub_22C6AFE48();
      v86(v85);
      sub_22C6AFE84();
      v87();
      v88 = sub_22C36A724();
      v89(v88);
    }
  }

  else
  {
    v79 = sub_22C6AEDE8();
    v80(v79);
    (*(v96 + 8))(v95, v45);
    v81 = sub_22C372158();
    v82(v81);
  }

LABEL_8:
  sub_22C36BA00();
  sub_22C36CC48();
}

void sub_22C649070()
{
  sub_22C36BA7C();
  v58 = v2;
  v3 = sub_22C90654C();
  sub_22C369824();
  v56 = v4;
  MEMORY[0x28223BE20](v5);
  sub_22C369838();
  sub_22C38B638();
  v6 = sub_22C3A5908(&qword_27D9BAA18, &qword_22C911C40);
  sub_22C369914(v6);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v7);
  sub_22C36D5B4();
  v62 = v8;
  sub_22C36BA0C();
  v59 = sub_22C9070DC();
  sub_22C369824();
  MEMORY[0x28223BE20](v9);
  sub_22C3698A8();
  sub_22C36BA0C();
  sub_22C9089DC();
  sub_22C369824();
  MEMORY[0x28223BE20](v10);
  sub_22C3698A8();
  sub_22C36BA0C();
  v57 = sub_22C9088CC();
  sub_22C369824();
  MEMORY[0x28223BE20](v11);
  sub_22C3698A8();
  sub_22C36BA0C();
  v12 = sub_22C908A0C();
  sub_22C369824();
  v14 = v13;
  MEMORY[0x28223BE20](v15);
  sub_22C369838();
  sub_22C370654();
  v16 = *(sub_22C9087DC() + 16);
  if (v16)
  {
    sub_22C36BA94();
    v61 = v17 + v18;
    v60 = *MEMORY[0x277D1E6F8];
    v19 = v17;
    while (1)
    {
      while (1)
      {
        if (v16 > *(v19 + 16))
        {
          __break(1u);
          goto LABEL_10;
        }

        --v16;
        (*(v14 + 16))(v0, v61 + *(v14 + 72) * v16, v12);
        sub_22C9089EC();
        v20 = sub_22C50B578();
        v21(v20);
        v22 = sub_22C37F8AC();
        if (v23(v22) == v60)
        {
          break;
        }

        v36 = sub_22C37F8AC();
        v37(v36);
        if (!v16)
        {
          goto LABEL_10;
        }
      }

      v24 = sub_22C37B9B0();
      v25(v24);
      v26 = sub_22C4F6088();
      v27(v26);
      v28 = sub_22C90887C();
      MEMORY[0x28223BE20](v28);
      sub_22C369920();
      *(v29 - 16) = v58;
      sub_22C6B0590(sub_22C6AEB00, v30, v28);

      v31 = sub_22C3707B4();
      sub_22C36D0A8(v31, v32, v59);
      if (!v33)
      {
        break;
      }

      v34 = sub_22C385558();
      v35(v34, v57);
      sub_22C36DD28(v62, &qword_27D9BAA18, &qword_22C911C40);
      if (!v16)
      {
        goto LABEL_10;
      }
    }

    v38 = sub_22C36CB30();
    v39(v38);
    sub_22C90702C();
    v40 = sub_22C372164();
    v41(v40);
    v42 = sub_22C385558();
    v43(v42, v57);
    v44 = (*(v56 + 88))(v1, v3);
    if (v44 == *MEMORY[0x277D1DAA8])
    {
      v45 = sub_22C36A724();
      v46(v45);
      v47 = sub_22C906F2C();
      sub_22C36985C();
      v48 = sub_22C37170C();
      v49(v48);
      sub_22C36BECC();
      v53 = v47;
      goto LABEL_15;
    }

    v54 = sub_22C36A724();
    v55(v54);
    sub_22C906F2C();
  }

  else
  {
LABEL_10:

    sub_22C906F2C();
  }

  sub_22C36A748();
LABEL_15:
  sub_22C36C640(v50, v51, v52, v53);
  sub_22C36CC48();
}

void sub_22C6499C0()
{
  sub_22C36BA7C();
  v44 = v2;
  v4 = v3;
  v5 = sub_22C9089DC();
  sub_22C369824();
  v46 = v6;
  MEMORY[0x28223BE20](v7);
  sub_22C369838();
  sub_22C36D83C();
  v8 = sub_22C9085EC();
  sub_22C369824();
  v39 = v9;
  MEMORY[0x28223BE20](v10);
  sub_22C369838();
  sub_22C36D0FC();
  v11 = sub_22C908A0C();
  sub_22C369824();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  sub_22C3698A8();
  v52 = v15;
  v16 = sub_22C9087DC();
  v17 = *(v16 + 16);
  if (v17)
  {
    v38 = v4;
    v4 = 0;
    sub_22C36BA94();
    v51 = v16 + v18;
    v49 = v13 + 8;
    v50 = v13 + 16;
    v48 = v46 + 11;
    v47 = *MEMORY[0x277D1E850];
    v41 = v46 + 12;
    v42 = v46 + 1;
    v45 = (v39 + 32);
    v39 += 8;
    v40 = v13;
    v43 = v16;
    while (v17 <= *(v16 + 16))
    {
      --v17;
      (*(v13 + 16))(v52, v51 + *(v13 + 72) * v17, v11);
      sub_22C9089EC();
      v19 = sub_22C372164();
      v20(v19);
      v21 = sub_22C37A27C();
      v23 = v22(v21, v5);
      if (v23 == v47)
      {
        v24 = sub_22C37A27C();
        v25 = v5;
        v26(v24, v5);
        v27 = *v45;
        v28 = v0;
        (*v45)(v1, v0, v8);
        v29 = sub_22C90858C();
        v46 = &v38;
        MEMORY[0x28223BE20](v29);
        sub_22C369920();
        *(v30 - 16) = v44;
        v31 = sub_22C5EC338();

        if (v31)
        {

          v4 = v38;
          v37 = sub_22C634750();
          v27(v37);
          v36 = 0;
          goto LABEL_11;
        }

        v32 = sub_22C385558();
        v33(v32, v8);
        v5 = v25;
        v0 = v28;
        v13 = v40;
        v16 = v43;
        if (!v17)
        {
          goto LABEL_9;
        }
      }

      else
      {
        v34 = sub_22C37A27C();
        v35(v34, v5);
        if (!v17)
        {
LABEL_9:

          v36 = 1;
          v4 = v38;
          goto LABEL_11;
        }
      }
    }

    __break(1u);
  }

  v36 = 1;
LABEL_11:
  sub_22C36C640(v4, v36, 1, v8);
  sub_22C36CC48();
}

uint64_t sub_22C649D5C()
{
  v2 = sub_22C3A5908(&qword_27D9BC038, &unk_22C922590);
  sub_22C369914(v2);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v3);
  sub_22C387210();
  v4 = sub_22C90832C();
  sub_22C369824();
  MEMORY[0x28223BE20](v5);
  sub_22C369838();
  sub_22C37BDA4();
  sub_22C64871C();
  v6 = sub_22C36CCF8();
  sub_22C36D0A8(v6, v7, v4);
  if (v8)
  {
    sub_22C36DD28(v0, &qword_27D9BC038, &unk_22C922590);
    v12 = 0;
  }

  else
  {
    sub_22C5CA7E8();
    v10 = sub_22C377B94();
    v11(v10);
    v12 = sub_22C5F2A5C(v1);
    v13 = sub_22C36EBF0();
    v14(v13);
  }

  return v12 & 1;
}

uint64_t sub_22C649ED4()
{
  v0 = sub_22C90952C();
  sub_22C3F0160(v0, qword_27D9E3FD0);
  v1 = sub_22C36BA00();
  v3 = sub_22C37AA60(v1, v2);
  v4 = swift_allocObject();
  v4[2] = 0xD000000000000019;
  v4[3] = 0x800000022C92E340;
  v4[4] = 0x746E457465737341;
  v4[5] = 0xEB00000000797469;
  *v3 = v4;
  sub_22C6AEE1C();
  v6 = *(v5 + 104);

  return v6(v3);
}

void *sub_22C649FAC()
{
  type metadata accessor for ToolResolver();
  swift_allocObject();
  return sub_22C72717C();
}

uint64_t sub_22C649FEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X5>, uint64_t a6@<X6>, __int128 *a7@<X7>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v17 = OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime16ToolboxResources_toolbox;
  sub_22C908AEC();
  sub_22C369A9C();
  (*(v18 + 16))(a8, a1 + v17);
  v19 = type metadata accessor for Interpreter(0);
  v20 = (a8 + v19[5]);
  v20[3] = a9;
  v20[4] = a11;
  v21 = sub_22C36D548(v20);
  (*(*(a9 - 8) + 16))(v21, a2, a9);
  v22 = (a8 + v19[6]);
  *v22 = a3;
  v22[1] = a4;
  v23 = (a8 + v19[7]);
  v23[3] = a10;
  v23[4] = a12;
  sub_22C36D548(v23);
  sub_22C36BBA8();
  (*(v24 + 32))();

  v25 = sub_22C36FC2C();
  v26(v25);
  v27 = a8 + v19[8];
  v28 = *(a5 + 16);
  *v27 = *a5;
  *(v27 + 16) = v28;
  *(v27 + 32) = *(a5 + 32);
  v29 = a8 + v19[9];
  *(v29 + 32) = *(a6 + 32);
  v30 = *(a6 + 16);
  *v29 = *a6;
  *(v29 + 16) = v30;
  return sub_22C36C730(a7, a8 + v19[10]);
}

uint64_t Interpreter.resolve(sessionState:contextId:planCycleId:)()
{
  sub_22C369980();
  v1[30] = v2;
  v1[31] = v0;
  v1[28] = v3;
  v1[29] = v4;
  v1[27] = v5;
  v6 = sub_22C9078FC();
  v1[32] = v6;
  sub_22C3699B8(v6);
  v1[33] = v7;
  v1[34] = sub_22C36D0D4();
  v1[35] = swift_task_alloc();
  v8 = sub_22C9085EC();
  v1[36] = v8;
  sub_22C3699B8(v8);
  v1[37] = v9;
  v1[38] = sub_22C36D0D4();
  v1[39] = swift_task_alloc();
  v10 = type metadata accessor for ExecutionPreconditionEvaluator(0);
  sub_22C369914(v10);
  v1[40] = sub_22C3699D4();
  v11 = sub_22C90775C();
  v1[41] = v11;
  sub_22C3699B8(v11);
  v1[42] = v12;
  v1[43] = sub_22C36D0D4();
  v1[44] = swift_task_alloc();
  v13 = sub_22C906ECC();
  v1[45] = v13;
  sub_22C3699B8(v13);
  v1[46] = v14;
  v1[47] = sub_22C3699D4();
  v15 = sub_22C90684C();
  v1[48] = v15;
  sub_22C3699B8(v15);
  v1[49] = v16;
  v1[50] = sub_22C3699D4();
  v17 = sub_22C90711C();
  v1[51] = v17;
  sub_22C3699B8(v17);
  v1[52] = v18;
  v1[53] = sub_22C3699D4();
  v19 = sub_22C90654C();
  v1[54] = v19;
  sub_22C3699B8(v19);
  v1[55] = v20;
  v1[56] = sub_22C3699D4();
  v21 = sub_22C9070DC();
  v1[57] = v21;
  sub_22C3699B8(v21);
  v1[58] = v22;
  v1[59] = sub_22C36D0D4();
  v1[60] = swift_task_alloc();
  v23 = sub_22C90888C();
  v1[61] = v23;
  sub_22C3699B8(v23);
  v1[62] = v24;
  v1[63] = sub_22C36D0D4();
  v1[64] = swift_task_alloc();
  v25 = sub_22C90363C();
  v1[65] = v25;
  sub_22C3699B8(v25);
  v1[66] = v26;
  v1[67] = sub_22C3699D4();
  v27 = sub_22C9088CC();
  v1[68] = v27;
  sub_22C3699B8(v27);
  v1[69] = v28;
  v1[70] = sub_22C3699D4();
  v29 = type metadata accessor for StepResolution(0);
  sub_22C369914(v29);
  v1[71] = sub_22C36D0D4();
  v1[72] = swift_task_alloc();
  v1[73] = swift_task_alloc();
  v30 = sub_22C90587C();
  v1[74] = v30;
  sub_22C3699B8(v30);
  v1[75] = v31;
  v1[76] = sub_22C3699D4();
  v32 = sub_22C9058CC();
  v1[77] = v32;
  sub_22C3699B8(v32);
  v1[78] = v33;
  v1[79] = sub_22C3699D4();
  v34 = sub_22C3A5908(&qword_27D9BB190, qword_22C90DD90);
  sub_22C369914(v34);
  v1[80] = sub_22C36D0D4();
  v1[81] = swift_task_alloc();
  v1[82] = swift_task_alloc();
  v1[83] = swift_task_alloc();
  v1[84] = swift_task_alloc();
  v35 = sub_22C90451C();
  v1[85] = v35;
  sub_22C3699B8(v35);
  v1[86] = v36;
  v1[87] = sub_22C36D0D4();
  v1[88] = swift_task_alloc();
  v1[89] = swift_task_alloc();
  v1[90] = swift_task_alloc();
  v1[91] = swift_task_alloc();
  v37 = sub_22C90069C();
  v1[92] = v37;
  sub_22C3699B8(v37);
  v1[93] = v38;
  v1[94] = sub_22C36D0D4();
  v1[95] = swift_task_alloc();
  v1[96] = swift_task_alloc();
  v1[97] = swift_task_alloc();
  v1[98] = swift_task_alloc();
  v39 = sub_22C9087BC();
  v1[99] = v39;
  sub_22C3699B8(v39);
  v1[100] = v40;
  v1[101] = sub_22C36D0D4();
  v1[102] = swift_task_alloc();
  v1[103] = swift_task_alloc();
  v1[104] = swift_task_alloc();
  v1[105] = swift_task_alloc();
  v41 = type metadata accessor for PlanResolverTelemetryRequestContext(0);
  v1[106] = v41;
  sub_22C369914(v41);
  v1[107] = sub_22C36D0D4();
  v1[108] = swift_task_alloc();
  v1[109] = swift_task_alloc();
  v1[110] = swift_task_alloc();
  v1[111] = swift_task_alloc();
  v1[112] = swift_task_alloc();
  v1[113] = swift_task_alloc();
  v1[114] = swift_task_alloc();
  v1[115] = swift_task_alloc();
  v1[116] = swift_task_alloc();
  v42 = sub_22C3A5908(&qword_27D9BD7E8, &qword_22C923170);
  sub_22C369914(v42);
  v1[117] = sub_22C3699D4();
  v43 = sub_22C901FAC();
  v1[118] = v43;
  sub_22C3699B8(v43);
  v1[119] = v44;
  v1[120] = sub_22C36D0D4();
  v1[121] = swift_task_alloc();
  v1[122] = swift_task_alloc();
  v1[123] = swift_task_alloc();
  v1[124] = swift_task_alloc();
  v1[125] = swift_task_alloc();
  v1[126] = swift_task_alloc();
  v1[127] = swift_task_alloc();
  v1[128] = swift_task_alloc();
  v1[129] = swift_task_alloc();
  v1[130] = swift_task_alloc();
  v45 = sub_22C3A5908(&qword_27D9BC030, &unk_22C911CC0);
  v1[131] = v45;
  sub_22C369914(v45);
  v1[132] = sub_22C36D0D4();
  v1[133] = swift_task_alloc();
  v1[134] = swift_task_alloc();
  v1[135] = swift_task_alloc();
  v1[136] = swift_task_alloc();
  v1[137] = swift_task_alloc();
  v1[138] = swift_task_alloc();
  v1[139] = swift_task_alloc();
  v1[140] = swift_task_alloc();
  v1[141] = swift_task_alloc();
  v1[142] = swift_task_alloc();
  v1[143] = swift_task_alloc();
  v1[144] = swift_task_alloc();
  v1[145] = swift_task_alloc();
  v46 = sub_22C906C4C();
  v1[146] = v46;
  sub_22C3699B8(v46);
  v1[147] = v47;
  v1[148] = sub_22C3699D4();
  v48 = sub_22C906C3C();
  v1[149] = v48;
  sub_22C3699B8(v48);
  v1[150] = v49;
  v1[151] = sub_22C3699D4();
  v50 = sub_22C90873C();
  v1[152] = v50;
  sub_22C3699B8(v50);
  v1[153] = v51;
  v1[154] = sub_22C3699D4();
  v52 = sub_22C9080CC();
  v1[155] = v52;
  sub_22C3699B8(v52);
  v1[156] = v53;
  v1[157] = sub_22C3699D4();
  v54 = sub_22C9089DC();
  v1[158] = v54;
  sub_22C3699B8(v54);
  v1[159] = v55;
  v1[160] = sub_22C36D0D4();
  v1[161] = swift_task_alloc();
  v56 = sub_22C3A5908(&qword_27D9BA808, &qword_22C90C6E0);
  sub_22C369914(v56);
  v1[162] = sub_22C36D0D4();
  v1[163] = swift_task_alloc();
  v1[164] = swift_task_alloc();
  v1[165] = swift_task_alloc();
  v1[166] = swift_task_alloc();
  v1[167] = swift_task_alloc();
  v57 = sub_22C90880C();
  v1[168] = v57;
  sub_22C3699B8(v57);
  v1[169] = v58;
  v1[170] = sub_22C36D0D4();
  v1[171] = swift_task_alloc();
  v1[172] = swift_task_alloc();
  v1[173] = swift_task_alloc();
  v1[174] = swift_task_alloc();
  v1[175] = swift_task_alloc();
  v1[176] = swift_task_alloc();
  v59 = sub_22C908A0C();
  v1[177] = v59;
  sub_22C3699B8(v59);
  v1[178] = v60;
  v1[179] = sub_22C36D0D4();
  v1[180] = swift_task_alloc();
  v61 = sub_22C9063DC();
  v1[181] = v61;
  sub_22C3699B8(v61);
  v1[182] = v62;
  v1[183] = sub_22C36D0D4();
  v1[184] = swift_task_alloc();
  v1[185] = swift_task_alloc();
  v1[186] = swift_task_alloc();
  v1[187] = swift_task_alloc();
  v1[188] = swift_task_alloc();
  v1[189] = swift_task_alloc();
  v1[190] = swift_task_alloc();
  v1[191] = swift_task_alloc();
  v1[192] = swift_task_alloc();
  v1[193] = swift_task_alloc();
  sub_22C36BB08();

  return MEMORY[0x2822009F8](v63, v64, v65);
}

uint64_t sub_22C64AE3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_22C36BA18();
  sub_22C3749D8();
  sub_22C903F8C();
  v14 = sub_22C9063CC();
  sub_22C90AABC();
  sub_22C37E84C();
  if (os_log_type_enabled(v14, v15))
  {
    sub_22C3720F4();
    v16 = swift_slowAlloc();
    sub_22C36C890(v16);
    sub_22C6AF8AC(&dword_22C366000, v17, v12, "running interpreter");
    sub_22C369B50();
    MEMORY[0x2318B9880]();
  }

  v18 = v13[182];
  v754 = v13[177];
  v19 = v13[169];

  v20 = *(v18 + 8);
  v21 = sub_22C36BAFC();
  v20(v21);
  v22 = v20;
  sub_22C90878C();
  v23 = sub_22C9087DC();
  v24 = *(v19 + 8);
  v25 = sub_22C36CA88();
  v750 = v19 + 8;
  v24(v25);
  sub_22C3A5950(v23);

  v26 = sub_22C374568();
  sub_22C36D0A8(v26, v27, v754);
  if (v126)
  {
    sub_22C36DD28(v13[167], &qword_27D9BA808, &qword_22C90C6E0);
    sub_22C903F8C();
    v28 = sub_22C9063CC();
    sub_22C90AADC();
    sub_22C37E84C();
    if (os_log_type_enabled(v28, v29))
    {
      sub_22C3720F4();
      v30 = swift_slowAlloc();
      sub_22C36C890(v30);
      sub_22C36BB14(&dword_22C366000, v31, v32, "transcript is empty");
      sub_22C369B50();
      MEMORY[0x2318B9880]();
    }

    v33 = sub_22C36BAFC();
    v20(v33);
    type metadata accessor for InterpreterError(0);
    sub_22C371B74();
    sub_22C6A4290(v34, v35, &protocol conformance descriptor for InterpreterError);
    sub_22C37A198();
    v36 = swift_allocError();
    sub_22C6AF828(v36, v37);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    goto LABEL_8;
  }

  v738 = v24;
  v47 = v13[180];
  sub_22C5CA7E8();
  v48(v47);
  sub_22C903F8C();
  v49 = sub_22C37FF20();
  v50(v49);
  v51 = sub_22C9063CC();
  v52 = sub_22C90AABC();
  v53 = os_log_type_enabled(v51, v52);
  v54 = v13[192];
  v55 = v13[179];
  v56 = v13[178];
  v755 = v13[177];
  v745 = v20;
  if (v53)
  {
    v733 = v13[181];
    v57 = v13[161];
    v58 = v13[159];
    v59 = v13[157];
    v60 = v13[156];
    v682 = v13[158];
    v690 = v13[155];
    sub_22C36BED8();
    v710 = v52;
    v61 = swift_slowAlloc();
    sub_22C370220();
    v766 = swift_slowAlloc();
    *v61 = 136315138;
    v719 = v54;
    sub_22C9089EC();
    sub_22C90899C();
    (*(v58 + 8))(v57, v682);
    v62 = sub_22C9080BC();
    (*(v60 + 8))(v59, v690);
    v22 = v745;
    v63 = *(v56 + 8);
    v63(v55, v755);
    v64 = sub_22C36BBCC();
    sub_22C36F9F4(v64, v65, v66);
    sub_22C37BB14();

    *(v61 + 4) = v62;
    _os_log_impl(&dword_22C366000, v51, v710, "evaluating payload: %s", v61, 0xCu);
    sub_22C36FF94(v766);
    sub_22C369B50();
    MEMORY[0x2318B9880]();
    sub_22C369B50();
    MEMORY[0x2318B9880]();

    v67 = v719;
    v68 = v733;
  }

  else
  {

    v63 = *(v56 + 8);
    v63(v55, v755);
    v67 = sub_22C36BBCC();
  }

  v22(v67, v68);
  v13[194] = v63;
  sub_22C9089EC();
  v69 = sub_22C36BAFC();
  v71 = v70(v69);
  if (v71 == *MEMORY[0x277D1E858])
  {
    v72 = v13[160];
    v73 = sub_22C634528();
    v74(v73);
    v75 = sub_22C37FF20();
    v76(v75);
    sub_22C903F8C();
    v77 = sub_22C9063CC();
    sub_22C90AABC();
    sub_22C37E84C();
    if (os_log_type_enabled(v77, v78))
    {
      sub_22C3720F4();
      v79 = swift_slowAlloc();
      sub_22C36C890(v79);
      sub_22C38C43C(&dword_22C366000, v77, v72, "handling request");
      sub_22C369B50();
      MEMORY[0x2318B9880]();
    }

    v80 = sub_22C36BAFC();
    (v22)(v80);
    sub_22C90763C();
    v81 = sub_22C36CA88();
    if (v82(v81) != *MEMORY[0x277D1DD78])
    {
      (*(v13[147] + 8))(v13[148], v13[146]);
      sub_22C903F8C();
      v129 = sub_22C9063CC();
      sub_22C90AADC();
      sub_22C375AAC();
      if (os_log_type_enabled(v129, v130))
      {
        sub_22C3720F4();
        v131 = swift_slowAlloc();
        sub_22C383878(v131);
        sub_22C6349C0(&dword_22C366000, v132, v133, "interpreter can only handle SystemPromptResolution");
        v134 = sub_22C371B8C();
        MEMORY[0x2318B9880](v134);
      }

      v751 = v13[180];
      v135 = v13[177];

      v136 = sub_22C36ECB4();
      v745(v136);
      type metadata accessor for InterpreterError(0);
      sub_22C371B74();
      sub_22C6A4290(v137, v138, &protocol conformance descriptor for InterpreterError);
      sub_22C37A198();
      v139 = swift_allocError();
      sub_22C6AF984(v139, v140);
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      v141 = sub_22C36FC2C();
      v142(v141);
      v63(v751, v135);
      goto LABEL_8;
    }

    v756 = v13[144];
    v83 = v13[130];
    v691 = v13[145];
    v698 = v13[119];
    v711 = v13[118];
    v84 = v13[117];
    v746 = v13[105];
    v85 = v13[100];
    v726 = v13[99];
    v683 = v13[31];
    v86 = v13[28];
    v87 = sub_22C634528();
    v88(v87);
    v89 = sub_22C36BBCC();
    v90(v89);
    sub_22C906C0C();
    sub_22C90878C();
    v91 = sub_22C907D6C();
    sub_22C6AEF78(v91);
    sub_22C36BE34();
    Interpreter.findOriginTaskStatementId(statementId:transcript:actionParameterContext:)();
    sub_22C36DD28(v84, &qword_27D9BD7E8, &qword_22C923170);
    sub_22C6B01E8();
    v92();
    v93 = *(v698 + 8);
    v93(v83, v711);
    v94 = type metadata accessor for Interpreter(0);
    sub_22C3B5C4C(v683 + *(v94 + 32), (v13 + 22));
    (*(v85 + 16))(v746, v86, v726);
    sub_22C6AEA50(v691, v756, &qword_27D9BC030, &unk_22C911CC0);
    v95 = sub_22C381378();
    v727 = sub_22C370B74(v95, v96, v97);
    if (v727 == 1)
    {
      sub_22C36DD28(v13[144], &qword_27D9BC030, &unk_22C911CC0);
    }

    else
    {
      sub_22C901F9C();
      v146 = sub_22C36BBCC();
      (v93)(v146);
    }

    v699 = v13[177];
    v147 = v13[129];
    v758 = v13[106];
    v664 = v13[98];
    v669 = v13[115];
    v148 = v13[93];
    v654 = v13[30];
    v659 = v13[92];
    sub_22C6AFED8();
    sub_22C906C0C();
    sub_22C901F9C();
    v149 = sub_22C3863FC();
    (v93)(v149);
    sub_22C906C0C();
    v712 = sub_22C901F9C();
    v150 = sub_22C36FC2C();
    (v93)(v150);
    (*(v148 + 16))(v664, v654, v659);
    sub_22C3B5C4C((v13 + 22), v669);
    sub_22C90878C();
    sub_22C6AFEF0();
    sub_22C9087CC();
    sub_22C6AF1BC();
    v151 = v147();
    sub_22C6AF85C(v151);
    sub_22C6AF7EC();
    sub_22C90878C();
    sub_22C9087DC();
    v152 = sub_22C36D29C();
    (v147)(v152);
    v153 = sub_22C36BD58();
    sub_22C3A5950(v153);

    v154 = sub_22C36CCF8();
    sub_22C36D0A8(v154, v155, v699);
    if (v126)
    {
      v156 = v13[166];
      sub_22C38072C();
      sub_22C6AFE3C();
      (*(v157 + 8))();
      v158 = sub_22C6AEEC0();
      v159(v158);
      sub_22C3B5CA8((v13 + 22));
      sub_22C36DD28(v156, &qword_27D9BA808, &qword_22C90C6E0);
      v160 = sub_22C6AEF30();
      sub_22C36C640(v160, v161, v162, v147);
    }

    else
    {
      sub_22C382EA8();
      sub_22C6AFE18();
      sub_22C6AFE0C();
      sub_22C9088DC();
      v192 = sub_22C37B050();
      v193(v192);
      v194 = sub_22C372FD8();
      v195(v194);
      sub_22C3B5CA8((v13 + 22));
      v196 = sub_22C386808();
      v197(v196);
    }

    v739 = v13[151];
    v198 = v727 == 1;
    v199 = v13[116];
    v200 = v13[115];
    v201 = v13[106];
    v202 = v13[98];
    v203 = v13[93];
    v204 = v13[92];
    sub_22C6AFCF4();
    v678 = v205;
    v206 = v13[76];
    v701 = v13[31];
    v731 = v13[73];
    v735 = v13[28];
    sub_22C6AE8BC(v207, v200 + v201[6], &qword_27D9BB190, qword_22C90DD90);
    sub_22C6AFCE4(v201[7]);
    *(v208 + 4) = v198;
    sub_22C38B6D4(v200 + v201[8]);
    *(v200 + v201[9]) = v712;
    (*(v203 + 32))(v200 + v201[10], v202, v204);
    sub_22C37FF08();
    v209 = sub_22C372164();
    sub_22C6A43E0(v209, v210);
    sub_22C6B0170();
    v212 = *(v211 + 4);
    v213 = (v199 + v201[8]);
    v214 = *v213;
    LOBYTE(v203) = *(v213 + 4);
    v215 = *(v199 + v201[9]);
    v216 = v199 + v201[10];
    v217 = sub_22C6AFA30();
    *(v217 + 16) = v200;
    *(v217 + 20) = v212;
    *(v217 + 24) = v214;
    *(v217 + 28) = v203;
    *(v217 + 32) = v215;
    *(v217 + 40) = v216;
    sub_22C3839D8();
    sub_22C6B0340();
    sub_22C9062CC();

    sub_22C646A98();
    v218 = sub_22C379ED8();
    v219(v218);
    sub_22C36BECC();
    sub_22C36C640(v220, v221, v222, v678);
    sub_22C6B0334();
    v223(v206);
    sub_22C7ACFB0(v206, v199 + v750, v199 + v758);
    v224 = sub_22C3726C4();
    v225(v224);
    v226 = sub_22C6AF3F0();
    v227(v226);
    sub_22C652A84(v701, v739, v735, v731);
    v228 = v13[178];
    v740 = v13[177];
    v747 = v13[180];
    v229 = v13[153];
    v732 = v13[152];
    v736 = v13[154];
    v230 = v13[145];
    if (v212)
    {
      sub_22C6AF63C();
      sub_22C7ACAC0();
      swift_willThrow();
      sub_22C36DD28(v230, &qword_27D9BC030, &unk_22C911CC0);
      v231 = sub_22C36CC9C();
      v232(v231);
      (*(v229 + 8))(v736, v732);
      (*(v228 + 8))(v747, v740);
LABEL_52:
      sub_22C6A438C();
LABEL_8:
      sub_22C36B084();

      sub_22C369A24();
LABEL_9:
      sub_22C372034();

      return v39(v38, v39, v40, v41, v42, v43, v44, v45, a9, a10, a11, a12);
    }

    sub_22C374EB8();
    sub_22C6A43E0(v233, v234);
    sub_22C6AF63C();
    sub_22C7AC8E8();
    sub_22C36DD28(v230, &qword_27D9BC030, &unk_22C911CC0);
    v235 = sub_22C36CC9C();
    v236(v235);
    (*(v229 + 8))(v736, v732);
    (*(v228 + 8))(v747, v740);
    goto LABEL_54;
  }

  if (v71 == *MEMORY[0x277D1E6F8])
  {
    sub_22C6AF184();
    v98 = v13[67];
    v99 = sub_22C37EBDC();
    v100(v99);
    v101 = sub_22C36D7E0();
    v102(v101);
    sub_22C6AFEE4();
    v103(v98);
    v104 = sub_22C90362C();
    v105 = sub_22C36CB3C();
    v106(v105);
    if (v104)
    {
      v107 = v13[62];
      sub_22C9088BC();
      v108 = sub_22C6AFB9C();
      v109(v108);
      sub_22C6A4290(&qword_27D9BF688, MEMORY[0x277D1E6D0], MEMORY[0x277D1E6D8]);
      sub_22C36BAFC();
      v110 = sub_22C90A0BC();
      v111 = *(v107 + 8);
      v112 = sub_22C36D264();
      v111(v112);
      v113 = sub_22C36D39C();
      v111(v113);
      if ((v110 & 1) == 0)
      {
        v734 = v63;
        v114 = v13[58];
        v115 = v13[55];
        result = sub_22C90887C();
        v116 = result;
        v117 = 0;
        v757 = *(result + 16);
        v728 = *MEMORY[0x277D1DA50];
        v118 = *MEMORY[0x277D1DA78];
        v119 = (v115 + 8);
        while (1)
        {
          if (v757 == v117)
          {

            goto LABEL_61;
          }

          if (v117 >= *(v116 + 16))
          {
            __break(1u);
            goto LABEL_118;
          }

          v120 = v13[59];
          sub_22C6AEEE4();
          (*(v114 + 16))(v120, v121 + v122 * v117);
          sub_22C90702C();
          v123 = sub_22C36D264();
          v125 = v124(v123);
          v126 = v125 == v728 || v125 == v118;
          if (v126)
          {
            break;
          }

          ++v117;
          (*v119)(v13[56], v13[54]);
          sub_22C6AF460();
          v127 = sub_22C37170C();
          result = v128(v127);
        }

        (*v119)(v13[56], v13[54]);

        v312 = sub_22C36D264();
        v313(v312);
        sub_22C903F8C();
        v314 = sub_22C9063CC();
        sub_22C90AAEC();
        sub_22C37E84C();
        if (os_log_type_enabled(v314, v315))
        {
          sub_22C3720F4();
          v316 = swift_slowAlloc();
          sub_22C36C890(v316);
          sub_22C36BB14(&dword_22C366000, v317, v318, "Actions are disabled! returning NoMatchingTool.");
          sub_22C369B50();
          MEMORY[0x2318B9880]();
        }

        v319 = v314;
        v320 = v13[181];
        v761 = v13[180];
        v741 = v13[177];
        v321 = v13[130];
        v322 = v13[119];
        v686 = v13[189];
        v693 = v13[118];
        v721 = v13[70];
        v323 = v13[69];
        v324 = v13[60];
        v704 = v13[57];
        v715 = v13[68];

        (v745)(v686, v320);
        sub_22C9068FC();
        v325 = sub_22C36BE34();
        sub_22C6535C4(v325, v326, v327);
        (*(v322 + 8))(v321, v693);
        sub_22C6AF460();
        v328(v324, v704);
        (*(v323 + 8))(v721, v715);
        v734(v761, v741);
        goto LABEL_74;
      }
    }

LABEL_61:
    sub_22C6B04FC();
    swift_task_alloc();
    sub_22C36CC90();
    v13[195] = v143;
    *v143 = v290;
    v145 = sub_22C64EB00;
    goto LABEL_62;
  }

  if (v71 == *MEMORY[0x277D1E708])
  {
    sub_22C6B04FC();
    swift_task_alloc();
    sub_22C36CC90();
    v13[197] = v143;
    *v143 = v144;
    v145 = sub_22C64EFF0;
    goto LABEL_62;
  }

  if (v71 == *MEMORY[0x277D1E748])
  {
    sub_22C6AF184();
    v163 = sub_22C37EBDC();
    v164(v163);
    v165 = sub_22C36D7E0();
    v167 = v166(v165);
    result = MEMORY[0x2318B45C0](v167);
    v168 = result;
    v169 = 0;
    v170 = *(result + 16);
    do
    {
      if (v170 == v169)
      {

        type metadata accessor for Interpreter(0);
        swift_task_alloc();
        sub_22C36CC90();
        v13[199] = v297;
        *v297 = v298;
        v297[1] = sub_22C64F0E8;
        goto LABEL_63;
      }

      if (v169 >= *(v168 + 16))
      {
LABEL_118:
        __break(1u);
        return result;
      }

      sub_22C6AEEE4();
      v171 = sub_22C6AF81C();
      v173 = v172(v171);
      ++v169;
      v174 = MEMORY[0x2318B3D10](v173);
      v175 = sub_22C37170C();
      v176(v175);
      v177 = *(v174 + 16);
    }

    while (v177);

    sub_22C903F8C();
    v178 = sub_22C9063CC();
    sub_22C90AABC();
    sub_22C37E84C();
    if (os_log_type_enabled(v178, v179))
    {
      sub_22C3720F4();
      v180 = swift_slowAlloc();
      sub_22C36C890(v180);
      sub_22C38C43C(&dword_22C366000, v178, v168, "handling empty QueryStepResults");
      sub_22C369B50();
      MEMORY[0x2318B9880]();
    }

    v759 = v13[142];
    v181 = v13[130];
    v684 = v13[119];
    v182 = v13[117];
    v700 = v13[118];
    v713 = v13[100];
    v720 = v13[99];
    v729 = v13[104];
    v677 = v13[31];
    v680 = v13[143];
    v183 = v13[28];

    v184 = sub_22C36FCCC();
    v745(v184);
    sub_22C90710C();
    sub_22C90878C();
    v185 = sub_22C907D6C();
    sub_22C6AEF78(v185);
    Interpreter.findOriginTaskStatementId(statementId:transcript:actionParameterContext:)();
    sub_22C36DD28(v182, &qword_27D9BD7E8, &qword_22C923170);
    sub_22C6B01E8();
    v186();
    v187 = *(v684 + 8);
    v187(v181, v700);
    v188 = type metadata accessor for Interpreter(0);
    sub_22C3B5C4C(v677 + *(v188 + 32), (v13 + 17));
    (v713[2].isa)(v729, v183, v720);
    sub_22C6AEA50(v680, v759, &qword_27D9BC030, &unk_22C911CC0);
    v189 = sub_22C381378();
    v730 = sub_22C370B74(v189, v190, v191);
    if (v730 == 1)
    {
      sub_22C36DD28(v13[142], &qword_27D9BC030, &unk_22C911CC0);
    }

    else
    {
      sub_22C901F9C();
      v429 = sub_22C36BBCC();
      (v187)(v429);
    }

    v706 = v13[177];
    v430 = v13[126];
    v763 = v13[106];
    v666 = v13[97];
    v671 = v13[113];
    v431 = v13[93];
    v656 = v13[30];
    v661 = v13[92];
    sub_22C90710C();
    sub_22C901F9C();
    v432 = sub_22C6AF3F0();
    (v187)(v432);
    sub_22C90710C();
    v717 = sub_22C901F9C();
    v433 = sub_22C50B478();
    (v187)(v433);
    (*(v431 + 16))(v666, v656, v661);
    sub_22C3B5C4C((v13 + 17), v671);
    sub_22C90878C();
    sub_22C6AFEF0();
    sub_22C9087CC();
    sub_22C6AF1BC();
    v434 = v430();
    sub_22C6AF85C(v434);
    sub_22C6AF7EC();
    sub_22C90878C();
    sub_22C9087DC();
    v435 = sub_22C36D29C();
    (v430)(v435);
    v436 = sub_22C36BD58();
    sub_22C3A5950(v436);

    v437 = sub_22C36CCF8();
    sub_22C36D0A8(v437, v438, v706);
    if (v126)
    {
      v439 = v13[165];
      sub_22C38072C();
      sub_22C6AFE3C();
      (*(v440 + 8))();
      v441 = sub_22C6AEEC0();
      v442(v441);
      sub_22C3B5CA8((v13 + 17));
      sub_22C36DD28(v439, &qword_27D9BA808, &qword_22C90C6E0);
      v443 = sub_22C6AEF30();
      sub_22C36C640(v443, v444, v445, v430);
    }

    else
    {
      sub_22C382EA8();
      sub_22C6AFE18();
      sub_22C6AFE0C();
      sub_22C9088DC();
      v446 = sub_22C37B050();
      v447(v446);
      v448 = sub_22C372FD8();
      v449(v448);
      sub_22C3B5CA8((v13 + 17));
      v450 = sub_22C386808();
      v451(v450);
    }

    v743 = v13[143];
    v452 = v13[114];
    v453 = v13[113];
    v454 = v13[106];
    v455 = v13[97];
    v456 = v13[93];
    v457 = v13[92];
    sub_22C6AFCF4();
    v674 = v458;
    v459 = v13[76];
    v707 = v13[72];
    v696 = v13[28];
    sub_22C6AE8BC(v460, v453 + v454[6], &qword_27D9BB190, qword_22C90DD90);
    sub_22C6AFCE4(v454[7]);
    *(v461 + 4) = v730 == 1;
    sub_22C38B6D4(v453 + v454[8]);
    *(v453 + v454[9]) = v717;
    (*(v456 + 32))(v453 + v454[10], v455, v457);
    sub_22C37FF08();
    v462 = sub_22C372FA4();
    sub_22C6A43E0(v462, v463);
    v464 = *(v452 + v454[9]);
    v465 = v452 + v454[10];
    v466 = sub_22C6AFA30();
    v467 = sub_22C6B0190(v466);
    *(v467 + 32) = v464;
    *(v467 + 40) = v465;
    sub_22C9062CC();

    v468 = sub_22C6AF810();
    v469(v468);
    sub_22C36BECC();
    sub_22C36C640(v470, v471, v472, v674);
    sub_22C6B0334();
    v473(v459);
    sub_22C7ACFB0(v459, v452 + v750, v452 + v763);
    v474 = sub_22C372158();
    v475(v474);
    v476 = sub_22C36D39C();
    v477(v476);
    sub_22C656A3C(v696, v743, v707);
    v478 = v13[143];
    sub_22C374EB8();
    sub_22C6A43E0(v479, v480);
    sub_22C7AC8E8();
    sub_22C36DD28(v478, &qword_27D9BC030, &unk_22C911CC0);
    v481 = sub_22C634768();
    v482(v481);
    v483 = sub_22C36D39C();
LABEL_108:
    v484(v483);
LABEL_54:
    sub_22C6A438C();
LABEL_74:
    sub_22C378318();

    sub_22C369C50();
    goto LABEL_9;
  }

  if (v71 == *MEMORY[0x277D1E830])
  {
    v237 = sub_22C634528();
    v238(v237);
    v239 = sub_22C37FF20();
    v240(v239);
    sub_22C903F8C();
    v241 = sub_22C9063CC();
    sub_22C90AABC();
    sub_22C37E84C();
    if (os_log_type_enabled(v241, v242))
    {
      sub_22C3720F4();
      v243 = swift_slowAlloc();
      sub_22C36C890(v243);
      sub_22C36BB14(&dword_22C366000, v244, v245, "handling action resolver request");
      sub_22C369B50();
      MEMORY[0x2318B9880]();
    }

    v246 = v13[185];
    v247 = v13[181];
    v248 = v13[175];
    v760 = v13[168];
    v249 = v13[130];
    v250 = v13[119];
    v679 = v13[134];
    v681 = v13[118];
    v251 = v13[117];
    v252 = v241;
    v253 = v13[35];
    v685 = v13[33];
    v692 = v13[32];
    v702 = v13[34];

    (v745)(v246, v247);
    sub_22C9068FC();
    sub_22C90878C();
    sub_22C907D6C();
    sub_22C6AFB90();
    sub_22C36A748();
    sub_22C36C640(v254, v255, v256, v257);
    sub_22C5CA738();
    Interpreter.findOriginTaskStatementId(statementId:transcript:actionParameterContext:)();
    sub_22C36DD28(v251, &qword_27D9BD7E8, &qword_22C923170);
    v738(v248, v760);
    v258 = *(v250 + 8);
    v258(v249, v681);
    sub_22C6AFE60();
    sub_22C903F8C();
    (*(v685 + 16))(v702, v253, v692);
    v259 = sub_22C6AFF44();
    sub_22C6AEA50(v259, v260, v261, v262);
    v263 = sub_22C9063CC();
    sub_22C90AABC();
    sub_22C37E84C();
    v714 = v263;
    v265 = os_log_type_enabled(v263, v264);
    v266 = v13[184];
    v267 = v13[181];
    if (v265)
    {
      v703 = v13[181];
      v269 = v13[33];
      v268 = v13[34];
      v665 = v13[32];
      sub_22C383050();
      sub_22C37ACD0();
      *v266 = 136315394;
      sub_22C9068FC();
      sub_22C6AEB50();
      sub_22C6A4290(v270, v271, MEMORY[0x277D1C368]);
      sub_22C90B47C();
      v272 = sub_22C38BD8C();
      (v258)(v272);
      v273 = *(v269 + 8);
      v273(v268, v665);
      v274 = sub_22C380120();
      sub_22C36F9F4(v274, v275, v276);

      sub_22C6AF194();
      sub_22C370018();
      sub_22C3890BC();
      sub_22C6AEA50(v277, v278, v279, v280);
      sub_22C90A1AC();
      v267 = v281;
      v282 = sub_22C5CA640();
      sub_22C36DD28(v282, v283, &unk_22C911CC0);
      v284 = sub_22C634750();
      v287 = sub_22C36F9F4(v284, v285, v286);

      *(v266 + 14) = v287;
      sub_22C6B0074(&dword_22C366000, v288, v679, "Origin Task Statement ID for ActionResolver request %s: %s");
      swift_arrayDestroy();
      v289 = sub_22C371B8C();
      MEMORY[0x2318B9880](v289);
      sub_22C369B50();
      MEMORY[0x2318B9880]();

      (v745)(v266, v703);
    }

    else
    {
      v329 = v13[133];
      v330 = v13[33];

      sub_22C36DD28(v329, &qword_27D9BC030, &unk_22C911CC0);
      v273 = *(v330 + 8);
      v331 = sub_22C36BAFC();
      (v273)(v331);
      v332 = sub_22C50B578();
      v745(v332);
    }

    v13[207] = v273;
    v333 = v13[118];
    v334 = sub_22C6AF2C8();
    sub_22C3B5C4C(v334, (v13 + 2));
    v335 = sub_22C50B478();
    v336(v335);
    v337 = sub_22C36BBCC();
    sub_22C6AEA50(v337, v338, v339, v340);
    v341 = sub_22C36CCF8();
    v722 = sub_22C370B74(v341, v342, v333);
    if (v722 == 1)
    {
      sub_22C36DD28(v13[132], &qword_27D9BC030, &unk_22C911CC0);
      v748 = 0;
      sub_22C6B011C();
    }

    else
    {
      v748 = sub_22C901F9C();
      sub_22C36BBCC();
      sub_22C6B011C();
      v267();
    }

    v388 = v13[175];
    v695 = v13[177];
    v655 = v13[94];
    v660 = v13[107];
    v389 = v13[93];
    v650 = v13[30];
    v651 = v13[92];
    sub_22C9068FC();
    sub_22C901F9C();
    v390 = sub_22C36BE34();
    (v267)(v390);
    sub_22C6B0310();
    sub_22C9068FC();
    v705 = sub_22C901F9C();
    v391 = sub_22C6AFC04();
    (v267)(v391);
    (*(v389 + 16))(v655, v650, v651);
    sub_22C3B5C4C((v13 + 2), v660);
    sub_22C90878C();
    sub_22C6B031C();
    sub_22C9087CC();
    sub_22C6AF1BC();
    v392 = v388();
    sub_22C6AF85C(v392);
    sub_22C6AF7EC();
    sub_22C90878C();
    sub_22C9087DC();
    v393 = sub_22C36D29C();
    (v388)(v393);
    v394 = sub_22C36BD58();
    sub_22C3A5950(v394);

    v395 = sub_22C36CCF8();
    sub_22C36D0A8(v395, v396, v695);
    if (v126)
    {
      v397 = v13[162];
      sub_22C38072C();
      sub_22C6AFE3C();
      (*(v398 + 8))();
      v399 = sub_22C6AEEC0();
      v400(v399);
      sub_22C3B5CA8((v13 + 2));
      sub_22C36DD28(v397, &qword_27D9BA808, &qword_22C90C6E0);
      v401 = sub_22C6AEF30();
      sub_22C36C640(v401, v402, v403, v388);
    }

    else
    {
      sub_22C382EA8();
      sub_22C6AFE18();
      sub_22C6AFE0C();
      sub_22C9088DC();
      v404 = sub_22C37B050();
      v405(v404);
      v406 = sub_22C372FD8();
      v407(v406);
      sub_22C3B5CA8((v13 + 2));
      v408 = sub_22C386808();
      v409(v408);
    }

    v410 = v13[107];
    v411 = v13[106];
    v742 = v13[35];
    v412 = v13[31];
    v413 = v13[28];
    v752 = v13[29];
    v762 = v13[134];
    sub_22C6AE8BC(v13[80], v410 + v411[6], &qword_27D9BB190, qword_22C90DD90);
    v414 = v410 + v411[7];
    *v414 = v748;
    *(v414 + 4) = v722 == 1;
    sub_22C38B6D4(v410 + v411[8]);
    *(v410 + v411[9]) = v705;
    sub_22C38AA18();
    v415();
    sub_22C37FF08();
    v416 = sub_22C36BA00();
    sub_22C6A43E0(v416, v417);
    v418 = swift_task_alloc();
    v13[208] = v418;
    *(v418 + 16) = v412;
    *(v418 + 24) = v742;
    *(v418 + 32) = v413;
    *(v418 + 40) = 1;
    *(v418 + 48) = v752;
    *(v418 + 56) = v762;
    sub_22C6AF7A4(&qword_22C923190);
    swift_task_alloc();
    sub_22C36CC90();
    v13[209] = v419;
    *v419 = v420;
    v419[1] = sub_22C650020;
    goto LABEL_86;
  }

  if (v71 == *MEMORY[0x277D1E798])
  {
    sub_22C6AF184();
    v299 = sub_22C37EBDC();
    v300(v299);
    v301 = sub_22C36D7E0();
    v302(v301);
    type metadata accessor for Interpreter(0);
    swift_task_alloc();
    sub_22C36CC90();
    v13[201] = v303;
    *v303 = v304;
    v303[1] = sub_22C64F5E0;
    sub_22C372034();

    return sub_22C657DE4(v305, v306, v307, v308, v309, v310);
  }

  if (v71 == *MEMORY[0x277D1E7D8])
  {
    sub_22C6AF184();
    v343 = v13[130];
    v687 = v13[141];
    v694 = v13[118];
    v344 = v13[117];
    v345 = sub_22C37EBDC();
    v346(v345);
    sub_22C6B02EC();
    sub_22C5CAA04();
    v347();
    sub_22C90772C();
    sub_22C6AFED8();
    sub_22C90878C();
    sub_22C907D6C();
    sub_22C36A748();
    sub_22C36C640(v348, v349, v350, v351);
    sub_22C6AF754();
    Interpreter.findOriginTaskStatementId(statementId:transcript:actionParameterContext:)();
    v352 = sub_22C6B02B4();
    sub_22C36DD28(v352, v353, v354);
    sub_22C6B02D4();
    sub_22C6B01E8();
    v355();
    v356 = *(v344 + 8);
    v356(v343, v694);
    sub_22C6AFE60();
    sub_22C903F8C();
    sub_22C6AF770();
    v357();
    v358 = sub_22C6AFF44();
    sub_22C6AEA50(v358, v359, v360, v361);
    v362 = sub_22C9063CC();
    sub_22C90AABC();
    sub_22C37E84C();
    v364 = os_log_type_enabled(v362, v363);
    v365 = v13[181];
    v366 = v13[140];
    if (v364)
    {
      v716 = v13[187];
      v368 = v13[42];
      v367 = v13[43];
      v670 = v13[41];
      sub_22C383050();
      sub_22C37ACD0();
      *v365 = 136315394;
      sub_22C90772C();
      sub_22C6AEB50();
      sub_22C6A4290(v369, v370, MEMORY[0x277D1C368]);
      sub_22C90B47C();
      v371 = sub_22C459028();
      (v356)(v371);
      (*(v368 + 8))(v367, v670);
      v372 = sub_22C379FC8();
      sub_22C36F9F4(v372, v373, v374);
      sub_22C3758E0();

      sub_22C6AF194();
      sub_22C3890BC();
      sub_22C6AEA50(v375, v376, v377, v378);
      sub_22C90A1AC();
      v379 = sub_22C4F6088();
      sub_22C36DD28(v379, v380, &unk_22C911CC0);
      v381 = sub_22C634768();
      sub_22C36F9F4(v381, v382, v383);
      sub_22C3758E0();

      *(v365 + 14) = &qword_27D9BC030;
      sub_22C6B0074(&dword_22C366000, v384, v687, "Origin Task Statement ID for TypeConversionResult request %s: %s");
      swift_arrayDestroy();
      v385 = sub_22C371B8C();
      MEMORY[0x2318B9880](v385);
      sub_22C369B50();
      MEMORY[0x2318B9880]();

      v387 = v365;
      v386 = v716;
    }

    else
    {

      sub_22C36DD28(v366, &qword_27D9BC030, &unk_22C911CC0);
      v528 = sub_22C6AEDE8();
      v529(v528);
      v386 = sub_22C36CA88();
    }

    (v745)(v386, v387);
    v530 = v13[118];
    v531 = sub_22C6AF2C8();
    sub_22C3B5C4C(v531, (v13 + 12));
    v532 = sub_22C50B478();
    v533(v532);
    v534 = sub_22C36BBCC();
    sub_22C6AEA50(v534, v535, v536, v537);
    v538 = sub_22C36CCF8();
    v724 = sub_22C370B74(v538, v539, v530);
    if (v724 == 1)
    {
      sub_22C36DD28(v13[138], &qword_27D9BC030, &unk_22C911CC0);
      v540 = v356;
    }

    else
    {
      sub_22C901F9C();
      v542 = sub_22C36BBCC();
      v540 = v356;
      (v356)(v542);
    }

    v697 = v13[177];
    v543 = v13[124];
    v765 = v13[106];
    v662 = v13[96];
    v667 = v13[111];
    v544 = v13[93];
    v652 = v13[30];
    v657 = v13[92];
    sub_22C90772C();
    sub_22C901F9C();
    v545 = sub_22C6AF3F0();
    v540(v545);
    sub_22C90772C();
    v708 = sub_22C901F9C();
    v546 = sub_22C50B478();
    v540(v546);
    (*(v544 + 16))(v662, v652, v657);
    sub_22C3B5C4C((v13 + 12), v667);
    sub_22C90878C();
    sub_22C6AFEF0();
    sub_22C9087CC();
    sub_22C6AF1BC();
    v547 = v543();
    sub_22C6AF85C(v547);
    sub_22C6AF7EC();
    sub_22C90878C();
    sub_22C9087DC();
    v548 = sub_22C36D29C();
    (v543)(v548);
    v549 = sub_22C36BD58();
    sub_22C3A5950(v549);

    v550 = sub_22C36CCF8();
    sub_22C36D0A8(v550, v551, v697);
    if (v126)
    {
      v552 = v13[164];
      sub_22C38072C();
      sub_22C6AFE3C();
      (*(v553 + 8))();
      v554 = sub_22C6AEEC0();
      v555(v554);
      sub_22C3B5CA8((v13 + 12));
      sub_22C36DD28(v552, &qword_27D9BA808, &qword_22C90C6E0);
      v556 = sub_22C6AEF30();
      sub_22C36C640(v556, v557, v558, v543);
    }

    else
    {
      sub_22C382EA8();
      sub_22C6AFE18();
      sub_22C6AFE0C();
      sub_22C9088DC();
      v559 = sub_22C37B050();
      v560(v559);
      v561 = sub_22C372FD8();
      v562(v561);
      sub_22C3B5CA8((v13 + 12));
      v563 = sub_22C386808();
      v564(v563);
    }

    v565 = v13[112];
    v566 = v13[111];
    v567 = v13[106];
    v568 = v13[96];
    v569 = v13[93];
    v570 = v13[92];
    sub_22C6AFCF4();
    v673 = v572;
    v676 = v571;
    v573 = v13[76];
    v737 = v13[44];
    v744 = v13[71];
    v689 = v13[74];
    sub_22C6AE8BC(v574, v566 + v567[6], &qword_27D9BB190, qword_22C90DD90);
    sub_22C6AFCE4(v567[7]);
    *(v575 + 4) = v724 == 1;
    sub_22C38B6D4(v566 + v567[8]);
    *(v566 + v567[9]) = v708;
    (*(v569 + 32))(v566 + v567[10], v568, v570);
    sub_22C37FF08();
    v576 = sub_22C372164();
    sub_22C6A43E0(v576, v577);
    sub_22C6B0170();
    v578 = *(v565 + v567[8]);
    v579 = *(v565 + v567[9]);
    v580 = v565 + v567[10];
    v581 = sub_22C6AFA30();
    v582 = sub_22C6B0190(v581);
    *(v582 + 32) = v579;
    *(v582 + 40) = v580;
    sub_22C3839D8();
    sub_22C6B0340();
    sub_22C9062CC();

    sub_22C646A98();
    v583(v573, v673, v676);
    sub_22C36BECC();
    sub_22C36C640(v584, v585, v586, v676);
    sub_22C6AFF80();
    v587(v573);
    sub_22C7ACFB0(v573, v565 + v750, v565 + v765);
    v588 = sub_22C6AF744();
    v589(v588, v689);
    v590 = sub_22C6AF3F0();
    v591(v590);
    sub_22C908AEC();
    sub_22C369A9C();
    v592 = sub_22C6AFF44();
    v593(v592);
    sub_22C63763C(v737, v744);
    sub_22C6AF550();
    sub_22C6A438C();
    v594 = v13[180];
    v595 = v13[178];
    v596 = v13[177];
    v597 = v13[141];
    if (v578)
    {
      sub_22C6AF63C();
      sub_22C7ACAC0();
      swift_willThrow();
      sub_22C36DD28(v597, &qword_27D9BC030, &unk_22C911CC0);
      v598 = sub_22C3726C4();
      v599(v598);
      (*(v595 + 8))(v594, v596);
      goto LABEL_52;
    }

    sub_22C374EB8();
    sub_22C6A43E0(v600, v601);
    sub_22C6AF63C();
    sub_22C7AC8E8();
    sub_22C36DD28(v597, &qword_27D9BC030, &unk_22C911CC0);
    v602 = sub_22C634768();
    v603(v602);
    v483 = sub_22C37B220();
    goto LABEL_108;
  }

  if (v71 == *MEMORY[0x277D1E850])
  {
    sub_22C6AF184();
    v485 = v13[130];
    v486 = v13[119];
    v764 = v13[118];
    v487 = v13[117];
    v688 = v13[31];
    v488 = sub_22C37EBDC();
    v489(v488);
    sub_22C6B02EC();
    sub_22C5CAA04();
    v490();
    sub_22C90856C();
    sub_22C6AFED8();
    sub_22C90878C();
    sub_22C907D6C();
    sub_22C36A748();
    sub_22C36C640(v491, v492, v493, v494);
    sub_22C6AF754();
    Interpreter.findOriginTaskStatementId(statementId:transcript:actionParameterContext:)();
    sub_22C36DD28(v487, &qword_27D9BD7E8, &qword_22C923170);
    sub_22C6B02D4();
    sub_22C6B01E8();
    v495();
    v496 = *(v486 + 8);
    v496(v485, v764);
    sub_22C6AFE60();
    sub_22C903F8C();
    sub_22C6AF770();
    v497();
    v498 = sub_22C6AFF44();
    sub_22C6AEA50(v498, v499, v500, v501);
    v502 = sub_22C9063CC();
    sub_22C90AABC();
    sub_22C375AAC();
    v504 = os_log_type_enabled(v502, v503);
    v505 = v13[186];
    v506 = v13[181];
    if (v504)
    {
      v675 = v13[136];
      v723 = v13[181];
      v508 = v13[37];
      v507 = v13[38];
      v672 = v13[36];
      sub_22C383050();
      sub_22C37ACD0();
      *v505 = 136315394;
      sub_22C90856C();
      sub_22C6AEB50();
      sub_22C6A4290(v509, v510, MEMORY[0x277D1C368]);
      sub_22C90B47C();
      v511 = sub_22C38BD8C();
      (v496)(v511);
      v512 = v502;
      v513 = *(v508 + 8);
      v513(v507, v672);
      v514 = sub_22C380120();
      sub_22C36F9F4(v514, v515, v516);

      sub_22C6AF194();
      sub_22C372FCC();
      sub_22C3890BC();
      sub_22C6AEA50(v517, v518, v519, v520);
      sub_22C90A1AC();
      v506 = v521;
      sub_22C36DD28(v675, &qword_27D9BC030, &unk_22C911CC0);
      v522 = sub_22C634750();
      v525 = sub_22C36F9F4(v522, v523, v524);

      *(v505 + 14) = v525;
      _os_log_impl(&dword_22C366000, v512, v688, "Origin Task Statement ID for ExecutionPreconditionEvaluator request %s: %s", v505, 0x16u);
      swift_arrayDestroy();
      sub_22C369B50();
      MEMORY[0x2318B9880]();
      sub_22C369B50();
      MEMORY[0x2318B9880]();

      v526 = v505;
      v527 = v723;
    }

    else
    {
      v604 = v13[136];
      v605 = v13[37];

      sub_22C36DD28(v604, &qword_27D9BC030, &unk_22C911CC0);
      v513 = *(v605 + 8);
      v606 = sub_22C36BAFC();
      (v513)(v606);
      v526 = sub_22C50B578();
    }

    (v745)(v526, v527);
    v13[203] = v513;
    v607 = v13[118];
    v608 = sub_22C6AF2C8();
    sub_22C3B5C4C(v608, (v13 + 7));
    v609 = sub_22C50B478();
    v610(v609);
    v611 = sub_22C36BBCC();
    sub_22C6AEA50(v611, v612, v613, v614);
    v615 = sub_22C36CCF8();
    v725 = sub_22C370B74(v615, v616, v607);
    if (v725 == 1)
    {
      sub_22C36DD28(v13[135], &qword_27D9BC030, &unk_22C911CC0);
      v749 = 0;
      sub_22C6B011C();
    }

    else
    {
      v749 = sub_22C901F9C();
      sub_22C36BBCC();
      sub_22C6B011C();
      v506();
    }

    v617 = v13[175];
    v709 = v13[177];
    v663 = v13[95];
    v668 = v13[109];
    v618 = v13[93];
    v653 = v13[30];
    v658 = v13[92];
    sub_22C90856C();
    sub_22C901F9C();
    v619 = sub_22C36BE34();
    (v506)(v619);
    sub_22C6B0310();
    sub_22C90856C();
    v718 = sub_22C901F9C();
    v620 = sub_22C6AFC04();
    (v506)(v620);
    (*(v618 + 16))(v663, v653, v658);
    sub_22C3B5C4C((v13 + 7), v668);
    sub_22C90878C();
    sub_22C6B031C();
    sub_22C9087CC();
    sub_22C6AF1BC();
    v621 = v617();
    sub_22C6AF85C(v621);
    sub_22C6AF7EC();
    sub_22C90878C();
    sub_22C9087DC();
    v622 = sub_22C36D29C();
    (v617)(v622);
    v623 = sub_22C36BD58();
    sub_22C3A5950(v623);

    v624 = sub_22C36CCF8();
    sub_22C36D0A8(v624, v625, v709);
    if (v126)
    {
      v626 = v13[163];
      sub_22C38072C();
      sub_22C6AFE3C();
      (*(v627 + 8))();
      v628 = sub_22C6AEEC0();
      v629(v628);
      sub_22C3B5CA8((v13 + 7));
      sub_22C36DD28(v626, &qword_27D9BA808, &qword_22C90C6E0);
      v630 = sub_22C6AEF30();
      sub_22C36C640(v630, v631, v632, v617);
    }

    else
    {
      sub_22C382EA8();
      sub_22C6AFE18();
      sub_22C6AFE0C();
      sub_22C9088DC();
      v633 = sub_22C37B050();
      v634(v633);
      v635 = sub_22C372FD8();
      v636(v635);
      sub_22C3B5CA8((v13 + 7));
      v637 = sub_22C386808();
      v638(v637);
    }

    v639 = v13[109];
    v640 = v13[106];
    v753 = v13[39];
    v641 = v13[31];
    v642 = v13[28];
    sub_22C6AE8BC(v13[81], v639 + v640[6], &qword_27D9BB190, qword_22C90DD90);
    v643 = v639 + v640[7];
    *v643 = v749;
    *(v643 + 4) = v725 == 1;
    sub_22C38B6D4(v639 + v640[8]);
    *(v639 + v640[9]) = v718;
    sub_22C38AA18();
    v644();
    sub_22C37FF08();
    v645 = sub_22C36BA00();
    sub_22C6A43E0(v645, v646);
    v647 = swift_task_alloc();
    v13[204] = v647;
    v647[2] = v641;
    v647[3] = v753;
    v647[4] = v642;
    sub_22C6AF7A4(&qword_22C923190);
    swift_task_alloc();
    sub_22C36CC90();
    v13[205] = v648;
    *v648 = v649;
    v648[1] = sub_22C64FAD8;
LABEL_86:
    sub_22C372034();

    return v424(v421, v422, v423, v424, v425, v426, v427, v428, a9, a10, a11, a12);
  }

  sub_22C6B04FC();
  swift_task_alloc();
  sub_22C36CC90();
  v13[211] = v143;
  *v143 = v541;
  v145 = sub_22C650568;
LABEL_62:
  v143[1] = v145;
LABEL_63:
  sub_22C372034();

  return sub_22C65460C(v291, v292, v293, v294, v295);
}

uint64_t sub_22C64EB00()
{
  sub_22C369980();
  sub_22C369A3C();
  sub_22C36C158();
  *v3 = v2;
  v4 = *v1;
  sub_22C369970();
  *v5 = v4;
  *(v6 + 1568) = v0;

  sub_22C36BB08();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_22C64EBF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_22C36BA18();
  sub_22C3749D8();
  sub_22C38C428();
  v13 = sub_22C6B02C0();
  v14(v13);
  v15 = sub_22C36BBCC();
  v12(v15);
  v16 = sub_22C378318();
  sub_22C6AEC20(v16, v17, v18, v19, v20, v21, v22, v23);

  sub_22C369C50();
  sub_22C372034();

  return v25(v24, v25, v26, v27, v28, v29, v30, v31, a9, a10, a11, a12);
}

uint64_t sub_22C64EFF0()
{
  sub_22C369980();
  sub_22C369A3C();
  sub_22C36C158();
  *v3 = v2;
  v4 = *v1;
  sub_22C369970();
  *v5 = v4;
  *(v6 + 1584) = v0;

  sub_22C36BB08();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_22C64F0E8()
{
  sub_22C369980();
  sub_22C369A3C();
  sub_22C36C158();
  *v3 = v2;
  v4 = *v1;
  sub_22C369970();
  *v5 = v4;
  *(v6 + 1600) = v0;

  sub_22C36BB08();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_22C64F1E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_22C36BA18();
  sub_22C3749D8();
  sub_22C38C428();
  (*(v13[52] + 8))(v13[53], v13[51]);
  v14 = sub_22C36BBCC();
  v12(v14);
  v15 = sub_22C378318();
  sub_22C6AEC20(v15, v16, v17, v18, v19, v20, v21, v22);

  sub_22C369C50();
  sub_22C372034();

  return v24(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10, a11, a12);
}

uint64_t sub_22C64F5E0()
{
  sub_22C369980();
  sub_22C369A3C();
  sub_22C36C158();
  *v3 = v2;
  v4 = *v1;
  sub_22C369970();
  *v5 = v4;
  *(v6 + 1616) = v0;

  sub_22C36BB08();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_22C64F6D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_22C36BA18();
  sub_22C3749D8();
  sub_22C38C428();
  (*(v13[46] + 8))(v13[47], v13[45]);
  v14 = sub_22C36BBCC();
  v12(v14);
  v15 = sub_22C378318();
  sub_22C6AEC20(v15, v16, v17, v18, v19, v20, v21, v22);

  sub_22C369C50();
  sub_22C372034();

  return v24(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10, a11, a12);
}

uint64_t sub_22C64FAD8()
{
  sub_22C36FB38();
  sub_22C3864E0();
  sub_22C36D994();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 1648) = v0;

  sub_22C6343B0();

  sub_22C374448();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_22C64FBF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_22C36BA18();
  sub_22C3749D8();
  v14 = *(v12 + 1624);
  sub_22C6AEFC8();
  v15 = *(v12 + 1096);
  sub_22C36A1D4();
  sub_22C6A438C();
  sub_22C36DD28(v15, &qword_27D9BC030, &unk_22C911CC0);
  v16 = sub_22C36BBCC();
  v13(v16);
  v17 = sub_22C36ECB4();
  v14(v17);
  v18 = sub_22C378318();
  sub_22C6AEC20(v18, v19, v20, v21, v22, v23, v24, v25);

  sub_22C369C50();
  sub_22C372034();

  return v27(v26, v27, v28, v29, v30, v31, v32, v33, a9, a10, a11, a12);
}

uint64_t sub_22C650020()
{
  sub_22C36FB38();
  sub_22C3864E0();
  sub_22C36D994();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 1680) = v0;

  sub_22C6343B0();

  sub_22C374448();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_22C650138(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_22C36BA18();
  sub_22C3749D8();
  v14 = *(v12 + 1656);
  sub_22C6AEFC8();
  v15 = *(v12 + 1072);
  sub_22C36A1D4();
  sub_22C6A438C();
  v16 = sub_22C36BBCC();
  v13(v16);
  sub_22C36DD28(v15, &qword_27D9BC030, &unk_22C911CC0);
  v17 = sub_22C36ECB4();
  v14(v17);
  v18 = sub_22C378318();
  sub_22C6AEC20(v18, v19, v20, v21, v22, v23, v24, v25);

  sub_22C369C50();
  sub_22C372034();

  return v27(v26, v27, v28, v29, v30, v31, v32, v33, a9, a10, a11, a12);
}

uint64_t sub_22C650568()
{
  sub_22C369980();
  sub_22C369A3C();
  sub_22C36C158();
  *v3 = v2;
  v4 = *v1;
  sub_22C369970();
  *v5 = v4;
  *(v6 + 1696) = v0;

  sub_22C36BB08();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_22C650660(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_22C36BA18();
  sub_22C3749D8();
  v12 = sub_22C6AEEFC();
  v13(v12);
  v14 = sub_22C6AEDE8();
  v15(v14);
  v16 = sub_22C378318();
  sub_22C6AEC20(v16, v17, v18, v19, v20, v21, v22, v23);

  sub_22C369C50();
  sub_22C372034();

  return v25(v24, v25, v26, v27, v28, v29, v30, v31, a9, a10, a11, a12);
}

uint64_t sub_22C650A50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_22C36BA18();
  sub_22C3749D8();
  sub_22C38C428();
  v13 = sub_22C6B02C0();
  v14(v13);
  v15 = sub_22C36BBCC();
  v12(v15);
  v16 = sub_22C36B084();
  sub_22C388884(v16, v17, v18, v19, v20, v21, v22, v23);

  sub_22C375A9C();
  sub_22C372034();

  return v25(v24, v25, v26, v27, v28, v29, v30, v31, a9, a10, a11, a12);
}

uint64_t sub_22C650E50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_22C36BA18();
  sub_22C3749D8();
  v12 = sub_22C6AEEFC();
  v13(v12);
  v14 = sub_22C6AEDE8();
  v15(v14);
  v16 = sub_22C36B084();
  sub_22C388884(v16, v17, v18, v19, v20, v21, v22, v23);

  sub_22C375A9C();
  sub_22C372034();

  return v25(v24, v25, v26, v27, v28, v29, v30, v31, a9, a10, a11, a12);
}

uint64_t sub_22C651248(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_22C36BA18();
  sub_22C3749D8();
  sub_22C38C428();
  (*(v13[52] + 8))(v13[53], v13[51]);
  v14 = sub_22C36BBCC();
  v12(v14);
  v15 = sub_22C36B084();
  sub_22C388884(v15, v16, v17, v18, v19, v20, v21, v22);

  sub_22C375A9C();
  sub_22C372034();

  return v24(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10, a11, a12);
}

uint64_t sub_22C651650(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_22C36BA18();
  sub_22C3749D8();
  sub_22C38C428();
  (*(v13[46] + 8))(v13[47], v13[45]);
  v14 = sub_22C36BBCC();
  v12(v14);
  v15 = sub_22C36B084();
  sub_22C388884(v15, v16, v17, v18, v19, v20, v21, v22);

  sub_22C375A9C();
  sub_22C372034();

  return v24(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10, a11, a12);
}

uint64_t sub_22C651A58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_22C36BA18();
  sub_22C3749D8();
  v14 = *(v12 + 1624);
  sub_22C6AEFC8();
  v15 = *(v12 + 1096);
  sub_22C36A1D4();
  sub_22C6A438C();
  sub_22C36DD28(v15, &qword_27D9BC030, &unk_22C911CC0);
  v16 = sub_22C36BBCC();
  v13(v16);
  v17 = sub_22C36ECB4();
  v14(v17);
  v18 = sub_22C36B084();
  sub_22C388884(v18, v19, v20, v21, v22, v23, v24, v25);

  sub_22C375A9C();
  sub_22C372034();

  return v27(v26, v27, v28, v29, v30, v31, v32, v33, a9, a10, a11, a12);
}

uint64_t sub_22C651E90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_22C36BA18();
  sub_22C3749D8();
  v14 = *(v12 + 1656);
  sub_22C6AEFC8();
  v15 = *(v12 + 1072);
  sub_22C36A1D4();
  sub_22C6A438C();
  v16 = sub_22C36BBCC();
  v13(v16);
  sub_22C36DD28(v15, &qword_27D9BC030, &unk_22C911CC0);
  v17 = sub_22C36ECB4();
  v14(v17);
  v18 = sub_22C36B084();
  sub_22C388884(v18, v19, v20, v21, v22, v23, v24, v25);

  sub_22C375A9C();
  sub_22C372034();

  return v27(v26, v27, v28, v29, v30, v31, v32, v33, a9, a10, a11, a12);
}

uint64_t sub_22C6522C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_22C36BA18();
  sub_22C3749D8();
  v12 = sub_22C6AEEFC();
  v13(v12);
  v14 = sub_22C6AEDE8();
  v15(v14);
  v16 = sub_22C36B084();
  sub_22C388884(v16, v17, v18, v19, v20, v21, v22, v23);

  sub_22C375A9C();
  sub_22C372034();

  return v25(v24, v25, v26, v27, v28, v29, v30, v31, a9, a10, a11, a12);
}

uint64_t sub_22C652A84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v33 = a4;
  v34 = a1;
  v6 = type metadata accessor for UserPromptResolver(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22C9063DC();
  v32 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_22C90880C();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22C90878C();
  v16 = v36;
  v17 = sub_22C652DA0(a2, v15);
  v36 = v16;
  if (v16)
  {
    return (*(v13 + 8))(v15, v12);
  }

  v19 = v17;
  v34 = v9;
  (*(v13 + 8))(v15, v12);
  if (v19)
  {
    sub_22C903F8C();
    v20 = sub_22C9063CC();
    v21 = sub_22C90AABC();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_22C366000, v20, v21, "SystemPromptResolution has already been interpreted", v22, 2u);
      MEMORY[0x2318B9880](v22, -1, -1);
    }

    (*(v32 + 8))(v11, v34);
    type metadata accessor for StepResolution(0);
    return swift_storeEnumTagMultiPayload();
  }

  else
  {
    v23 = sub_22C9087BC();
    (*(*(v23 - 8) + 16))(v8, a3, v23);
    sub_22C7319D0(a2, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42);
    return sub_22C6A438C();
  }
}

uint64_t sub_22C652DA0(uint64_t a1, uint64_t a2)
{
  v53 = sub_22C901FAC();
  v52 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v50 = &v48 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_22C3A5908(&qword_27D9BD7C8, &unk_22C922F50);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v54 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v56 = &v48 - v7;
  v55 = sub_22C902B3C();
  v49 = *(v55 - 1);
  MEMORY[0x28223BE20](v55);
  v48 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_22C9025AC();
  v58 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v57 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_22C90069C();
  v10 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v12 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22C3A5908(&qword_27D9BEEA8, &qword_22C9214D0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v48 - v14;
  v60 = sub_22C9089DC();
  v62 = *(v60 - 8);
  v16 = MEMORY[0x28223BE20](v60);
  v59 = &v48 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v48 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = &v48 - v21;
  v51 = a2;
  v67 = sub_22C9087DC();
  sub_22C906C1C();
  sub_22C3A5908(&qword_27D9BA9F0, &qword_22C912420);
  sub_22C3D32C8(&qword_27D9BA9F8, &qword_27D9BA9F0, &qword_22C912420, MEMORY[0x277D1E9D8]);
  sub_22C907F7C();
  (*(v10 + 8))(v12, v63);

  v23 = sub_22C3A5908(&qword_27D9BEED0, &unk_22C922F60);
  if (sub_22C370B74(v15, 1, v23) == 1)
  {
    sub_22C36DD28(v15, &qword_27D9BEEA8, &qword_22C9214D0);
LABEL_7:
    LOBYTE(v36) = 0;
    return v36 & 1;
  }

  v24 = *(v23 + 48);
  sub_22C9089EC();
  v25 = sub_22C908A0C();
  (*(*(v25 - 8) + 8))(&v15[v24], v25);
  v26 = v62;
  v27 = v20;
  v28 = v60;
  (*(v62 + 32))(v22, v27, v60);
  v29 = v59;
  (*(v26 + 16))(v59, v22, v28);
  v30 = v22;
  if ((*(v26 + 88))(v29, v28) != *MEMORY[0x277D1E820])
  {
    v40 = *(v26 + 8);
    v40(v22, v28);
    v40(v29, v28);
    goto LABEL_7;
  }

  (*(v26 + 96))(v29, v28);
  v32 = v57;
  v31 = v58;
  (*(v58 + 32))(v57, v29, v61);
  v33 = sub_22C90259C();
  v34 = v56;
  sub_22C58B0B0(v33, v56);

  v35 = v54;
  sub_22C6AEA50(v34, v54, &qword_27D9BD7C8, &unk_22C922F50);
  v36 = v55;
  if (sub_22C370B74(v35, 1, v55) == 1)
  {
    v36 = &qword_27D9BD7C8;
    sub_22C36DD28(v35, &qword_27D9BD7C8, &unk_22C922F50);
    sub_22C90735C();
    sub_22C3A5F00();
    swift_allocError();
    v37 = v66;
    v38 = v65;
    *v39 = v64;
    *(v39 + 16) = v38;
    *(v39 + 32) = v37;
    swift_willThrow();
    sub_22C36DD28(v34, &qword_27D9BD7C8, &unk_22C922F50);
    (*(v31 + 8))(v32, v61);
    (*(v62 + 8))(v30, v28);
  }

  else
  {
    sub_22C36DD28(v34, &qword_27D9BD7C8, &unk_22C922F50);
    v42 = v49;
    v43 = *(v49 + 32);
    v63 = v30;
    v44 = v48;
    v43(v48, v35, v36);
    v45 = v50;
    sub_22C902AEC();
    v46 = sub_22C9087DC();
    v47 = v36;
    LOBYTE(v36) = sub_22C68D84C(v45, v46);

    (*(v52 + 8))(v45, v53);
    (*(v42 + 8))(v44, v47);
    (*(v31 + 8))(v32, v61);
    (*(v62 + 8))(v63, v28);
  }

  return v36 & 1;
}

uint64_t sub_22C6535C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v116 = a3;
  v5 = sub_22C3A5908(&qword_27D9BF328, &qword_22C9225C0);
  MEMORY[0x28223BE20](v5 - 8);
  v115 = &v83 - v6;
  v7 = sub_22C901FBC();
  v112 = *(v7 - 8);
  v113 = v7;
  MEMORY[0x28223BE20](v7);
  v111 = &v83 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22C3A5908(&qword_27D9BF330, &unk_22C923250);
  MEMORY[0x28223BE20](v9 - 8);
  v90 = &v83 - v10;
  v11 = sub_22C3A5908(&qword_27D9BB190, qword_22C90DD90);
  MEMORY[0x28223BE20](v11 - 8);
  v118 = &v83 - v12;
  v13 = sub_22C9026BC();
  v107 = *(v13 - 8);
  v108 = v13;
  v14 = MEMORY[0x28223BE20](v13);
  v109 = &v83 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v89 = &v83 - v16;
  v88 = sub_22C907DEC();
  v87 = *(v88 - 8);
  v17 = MEMORY[0x28223BE20](v88);
  v114 = &v83 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v86 = &v83 - v19;
  v93 = sub_22C9089DC();
  v92 = *(v93 - 8);
  MEMORY[0x28223BE20](v93);
  v91 = &v83 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = sub_22C906ECC();
  v110 = *(v117 - 8);
  v21 = MEMORY[0x28223BE20](v117);
  v104 = &v83 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v95 = &v83 - v23;
  v24 = sub_22C3A5908(&qword_27D9BA808, &qword_22C90C6E0);
  MEMORY[0x28223BE20](v24 - 8);
  v99 = &v83 - v25;
  v100 = sub_22C908A0C();
  v94 = *(v100 - 8);
  MEMORY[0x28223BE20](v100);
  v96 = &v83 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_22C3A5908(&qword_27D9BC030, &unk_22C911CC0);
  MEMORY[0x28223BE20](v27 - 8);
  v102 = &v83 - v28;
  v122 = sub_22C901FAC();
  v119 = *(v122 - 8);
  v29 = MEMORY[0x28223BE20](v122);
  v106 = &v83 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x28223BE20](v29);
  v105 = &v83 - v32;
  MEMORY[0x28223BE20](v31);
  v101 = &v83 - v33;
  v34 = sub_22C90880C();
  v35 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v37 = &v83 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_22C3A5908(&qword_27D9BC068, &qword_22C920590);
  MEMORY[0x28223BE20](v38 - 8);
  v40 = &v83 - v39;
  v41 = sub_22C9088CC();
  v103 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v43 = &v83 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = a2;
  sub_22C90878C();
  v124 = sub_22C9087DC();
  v121 = a1;
  v123 = a1;
  v44 = sub_22C3A5908(&qword_27D9BA9F0, &qword_22C912420);
  sub_22C3D32C8(&qword_27D9BC090, &qword_27D9BA9F0, &qword_22C912420, MEMORY[0x277D1E9D0]);
  v97 = v44;
  sub_22C907D9C();
  v45 = v41;
  v46 = *(v35 + 8);
  v98 = v34;
  v46(v37, v34);

  if (sub_22C370B74(v40, 1, v45) == 1)
  {
    sub_22C36DD28(v40, &qword_27D9BC068, &qword_22C920590);
    v47 = v116;
    v48 = v121;
    v49 = v110;
    v51 = v107;
    v50 = v108;
    v52 = v119;
LABEL_13:
    v78 = sub_22C90069C();
    sub_22C36C640(v118, 1, 1, v78);
    (*(v112 + 104))(v111, *MEMORY[0x277D1C3C0], v113);
    v79 = v109;
    sub_22C901FFC();
    (*(v51 + 104))(v79, *MEMORY[0x277D1CBE8], v50);
    v80 = sub_22C9026AC();
    sub_22C36C640(v115, 1, 1, v80);
    sub_22C907DCC();
    sub_22C9087AC();
    sub_22C90882C();

    (*(v52 + 16))(v106, v48, v122);
    v81 = v104;
    sub_22C906E4C();
    (*(v49 + 32))(v47, v81, v117);
    goto LABEL_14;
  }

  v53 = v103;
  (*(v103 + 32))(v43, v40, v45);
  v54 = v102;
  v55 = v45;
  sub_22C6A0854();
  v56 = v122;
  if (sub_22C370B74(v54, 1, v122) == 1)
  {
    (*(v53 + 8))(v43, v55);
    sub_22C36DD28(v54, &qword_27D9BC030, &unk_22C911CC0);
    v47 = v116;
    v52 = v119;
    v49 = v110;
    v51 = v107;
    v50 = v108;
    v48 = v121;
    goto LABEL_13;
  }

  v84 = v43;
  v85 = v55;
  v52 = v119;
  v57 = v101;
  (*(v119 + 32))(v101, v54, v56);
  sub_22C90878C();
  v58 = sub_22C9087DC();
  v46(v37, v98);
  v124 = v58;
  sub_22C3D32C8(&qword_27D9BA9F8, &qword_27D9BA9F0, &qword_22C912420, MEMORY[0x277D1E9D8]);
  v59 = v99;
  sub_22C907F1C();

  v60 = v100;
  if (sub_22C370B74(v59, 1, v100) == 1)
  {
    (*(v52 + 8))(v57, v56);
    (*(v103 + 8))(v84, v85);
    sub_22C36DD28(v59, &qword_27D9BA808, &qword_22C90C6E0);
    v47 = v116;
    v49 = v110;
    v51 = v107;
    v50 = v108;
    v48 = v121;
    goto LABEL_13;
  }

  v61 = v94;
  v62 = v96;
  (*(v94 + 32))(v96, v59, v60);
  v63 = v91;
  sub_22C9089EC();
  v64 = v92;
  v65 = v93;
  v66 = (*(v92 + 88))(v63, v93);
  v49 = v110;
  v51 = v107;
  v50 = v108;
  if (v66 != *MEMORY[0x277D1E798])
  {
    (*(v61 + 8))(v62, v60);
    v77 = v64;
    v52 = v119;
    (*(v119 + 8))(v101, v122);
    (*(v103 + 8))(v84, v85);
    (*(v77 + 8))(v63, v65);
LABEL_12:
    v48 = v121;
    v47 = v116;
    goto LABEL_13;
  }

  (*(v64 + 96))(v63, v65);
  v67 = v117;
  (*(v49 + 32))(v95, v63, v117);
  v68 = v86;
  sub_22C906EBC();
  v69 = v89;
  sub_22C907DAC();
  (*(v87 + 8))(v68, v88);
  if ((*(v51 + 88))(v69, v50) != *MEMORY[0x277D1CBF0])
  {
    (*(v49 + 8))(v95, v67);
    (*(v61 + 8))(v96, v60);
    v52 = v119;
    (*(v119 + 8))(v101, v122);
    (*(v103 + 8))(v84, v85);
    (*(v51 + 8))(v69, v50);
    goto LABEL_12;
  }

  (*(v51 + 8))(v69, v50);
  v70 = sub_22C90069C();
  sub_22C36C640(v118, 1, 1, v70);
  v71 = sub_22C90769C();
  sub_22C36C640(v90, 1, 1, v71);
  (*(v112 + 104))(v111, *MEMORY[0x277D1C420], v113);
  v72 = v109;
  sub_22C901FFC();
  (*(v51 + 104))(v72, *MEMORY[0x277D1CBE8], v50);
  v73 = sub_22C9026AC();
  sub_22C36C640(v115, 1, 1, v73);
  sub_22C907DCC();
  sub_22C9087AC();
  sub_22C90882C();

  v74 = v67;
  v75 = v119;
  v76 = v122;
  (*(v119 + 16))(v106, v121, v122);
  sub_22C906E7C();
  (*(v49 + 8))(v95, v74);
  (*(v61 + 8))(v96, v100);
  (*(v75 + 8))(v101, v76);
  (*(v103 + 8))(v84, v85);
LABEL_14:
  type metadata accessor for StepResolution(0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_22C65460C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[12] = a5;
  v6[13] = v5;
  v6[10] = a3;
  v6[11] = a4;
  v6[8] = a1;
  v6[9] = a2;
  sub_22C3A5908(&qword_27D9BA808, &qword_22C90C6E0);
  v6[14] = swift_task_alloc();
  v7 = sub_22C90451C();
  v6[15] = v7;
  v6[16] = *(v7 - 8);
  v6[17] = swift_task_alloc();
  v8 = sub_22C90069C();
  v6[18] = v8;
  v6[19] = *(v8 - 8);
  v6[20] = swift_task_alloc();
  v9 = sub_22C9087BC();
  v6[21] = v9;
  v6[22] = *(v9 - 8);
  v6[23] = swift_task_alloc();
  v6[24] = type metadata accessor for PlanResolverTelemetryRequestContext(0);
  v6[25] = swift_task_alloc();
  v6[26] = swift_task_alloc();
  sub_22C3A5908(&qword_27D9BC030, &unk_22C911CC0);
  v6[27] = swift_task_alloc();
  v6[28] = swift_task_alloc();
  v6[29] = sub_22C90654C();
  v6[30] = swift_task_alloc();
  sub_22C3A5908(&qword_27D9BF328, &qword_22C9225C0);
  v6[31] = swift_task_alloc();
  v10 = sub_22C901FBC();
  v6[32] = v10;
  v6[33] = *(v10 - 8);
  v6[34] = swift_task_alloc();
  v11 = sub_22C9026BC();
  v6[35] = v11;
  v6[36] = *(v11 - 8);
  v6[37] = swift_task_alloc();
  sub_22C907DEC();
  v6[38] = swift_task_alloc();
  sub_22C3A5908(&qword_27D9BF330, &unk_22C923250);
  v6[39] = swift_task_alloc();
  sub_22C3A5908(&qword_27D9BB190, qword_22C90DD90);
  v6[40] = swift_task_alloc();
  v6[41] = swift_task_alloc();
  v12 = sub_22C907D6C();
  v6[42] = v12;
  v6[43] = *(v12 - 8);
  v6[44] = swift_task_alloc();
  sub_22C3A5908(&qword_27D9BC380, &qword_22C922FC0);
  v6[45] = swift_task_alloc();
  v13 = sub_22C901FAC();
  v6[46] = v13;
  v6[47] = *(v13 - 8);
  v6[48] = swift_task_alloc();
  v6[49] = swift_task_alloc();
  v6[50] = swift_task_alloc();
  v6[51] = swift_task_alloc();
  v6[52] = swift_task_alloc();
  v6[53] = swift_task_alloc();
  sub_22C3A5908(&qword_27D9BD7E8, &qword_22C923170);
  v6[54] = swift_task_alloc();
  v6[55] = swift_task_alloc();
  sub_22C3A5908(&qword_27D9BAA18, &qword_22C911C40);
  v6[56] = swift_task_alloc();
  v14 = sub_22C9070DC();
  v6[57] = v14;
  v6[58] = *(v14 - 8);
  v6[59] = swift_task_alloc();
  v6[60] = swift_task_alloc();
  v6[61] = swift_task_alloc();
  v6[62] = swift_task_alloc();
  v15 = sub_22C90880C();
  v6[63] = v15;
  v6[64] = *(v15 - 8);
  v6[65] = swift_task_alloc();
  v6[66] = swift_task_alloc();
  v6[67] = swift_task_alloc();
  v6[68] = swift_task_alloc();
  v6[69] = swift_task_alloc();
  v6[70] = swift_task_alloc();
  sub_22C3A5908(&qword_27D9BC068, &qword_22C920590);
  v6[71] = swift_task_alloc();
  v16 = sub_22C9088CC();
  v6[72] = v16;
  v6[73] = *(v16 - 8);
  v6[74] = swift_task_alloc();
  v17 = sub_22C9063DC();
  v6[75] = v17;
  v6[76] = *(v17 - 8);
  v6[77] = swift_task_alloc();
  v6[78] = swift_task_alloc();
  v6[79] = swift_task_alloc();
  v6[80] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22C654DE0, 0, 0);
}

uint64_t sub_22C654DE0(uint64_t a1)
{
  sub_22C903F8C();
  v3 = sub_22C9063CC();
  sub_22C90AABC();
  sub_22C37E84C();
  if (os_log_type_enabled(v3, v4))
  {
    sub_22C3720F4();
    v5 = swift_slowAlloc();
    sub_22C36C890(v5);
    sub_22C6AF8AC(&dword_22C366000, v6, v1, "evaluating the next ProgramStatement");
    sub_22C369B50();
    MEMORY[0x2318B9880]();
  }

  v216 = *(v2 + 576);
  v7 = *(v2 + 568);
  v8 = *(v2 + 512);

  v9 = sub_22C36ECB4();
  v214 = v10;
  v10(v9);
  sub_22C90878C();
  v11 = sub_22C9087DC();
  v12 = *(v8 + 8);
  v13 = sub_22C36FC2C();
  v12(v13);
  *(v2 + 56) = v11;
  v14 = sub_22C372FA4();
  sub_22C3A5908(v14, v15);
  sub_22C369E24();
  sub_22C3D32C8(v16, &qword_27D9BA9F0, &qword_22C912420, v17);
  sub_22C907DFC();

  sub_22C36D0A8(v7, 1, v216);
  if (v31)
  {
    sub_22C36DD28(*(v2 + 568), &qword_27D9BC068, &qword_22C920590);
LABEL_6:
    sub_22C903F8C();
    v18 = sub_22C9063CC();
    sub_22C90AABC();
    sub_22C37E84C();
    if (os_log_type_enabled(v18, v19))
    {
      sub_22C3720F4();
      v20 = swift_slowAlloc();
      sub_22C36C890(v20);
      sub_22C36BB14(&dword_22C366000, v21, v22, "no program statements left to resolve");
      sub_22C369B50();
      MEMORY[0x2318B9880]();
    }

    v23 = sub_22C36BAFC();
    v214(v23);
    type metadata accessor for StepResolution(0);
    sub_22C6AFE24();
    swift_storeEnumTagMultiPayload();
    goto LABEL_9;
  }

  (*(*(v2 + 584) + 32))(*(v2 + 592), *(v2 + 568), *(v2 + 576));
  v25 = sub_22C36D264();
  sub_22C669E50(v25, v26, v27);
  v30 = *(v2 + 448);
  sub_22C369A54(v30);
  if (v31)
  {
    sub_22C36DD28(v30, &qword_27D9BAA18, &qword_22C911C40);
    v32 = sub_22C36BAFC();
    v33(v32);
    goto LABEL_6;
  }

  v211 = v12;
  v34 = *(v2 + 552);
  v35 = sub_22C3863FC();
  v37 = v36;
  v36(v35);
  sub_22C90878C();
  v38 = sub_22C3806B8();
  sub_22C66AE48(v38, v39, v40, v34);
  v208 = *(v2 + 440);
  v41 = *(v2 + 424);

  v42 = sub_22C37170C();
  v12(v42);
  v43 = sub_22C36ECB4();
  v37(v43);
  sub_22C90878C();
  sub_22C6B031C();
  sub_22C9068FC();
  sub_22C3A9BB4(v41, v208);
  v44 = *(v2 + 424);
  v45 = *(v2 + 368);
  v46 = *(v2 + 376);
  v47 = *(v46 + 8);
  *(v2 + 648) = v47;
  *(v2 + 656) = (v46 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v217 = v47;
  (v47)(v44, v45);
  v48 = sub_22C379ED8();
  v211(v48);
  sub_22C90701C();
  v49 = sub_22C90700C();
  v50 = sub_22C37EF1C();
  if (sub_22C370B74(v50, v51, v49) == 1)
  {
    sub_22C36DD28(*(v2 + 360), &qword_27D9BC380, &qword_22C922FC0);
    goto LABEL_25;
  }

  sub_22C36A948();
  v52 = sub_22C36BA00();
  v54 = v53(v52);
  v55 = *MEMORY[0x277D1DF20];
  v56 = sub_22C36BA00();
  v57(v56);
  if (v54 == v55)
  {
    v58 = *(v2 + 432);
    sub_22C6AEA50(*(v2 + 440), v58, &qword_27D9BD7E8, &qword_22C923170);
    sub_22C369A54(v58);
    if (v31)
    {
      sub_22C36DD28(*(v2 + 432), &qword_27D9BD7E8, &qword_22C923170);
      sub_22C903F8C();
      v59 = sub_22C9063CC();
      sub_22C90AADC();
      sub_22C375AAC();
      if (os_log_type_enabled(v59, v60))
      {
        sub_22C3720F4();
        v61 = swift_slowAlloc();
        sub_22C383878(v61);
        sub_22C6349C0(&dword_22C366000, v62, v63, "Expected context for explicit resolution request");
        v64 = sub_22C371B8C();
        MEMORY[0x2318B9880](v64);
      }

      v65 = *(v2 + 464);
      v66 = *(v2 + 440);

      v67 = sub_22C36FC2C();
      v214(v67);
      type metadata accessor for InterpreterError(0);
      sub_22C371B74();
      sub_22C6A4290(v68, v69, &protocol conformance descriptor for InterpreterError);
      sub_22C37A198();
      swift_allocError();
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      v70 = *(v65 + 8);
      v71 = sub_22C372280();
      v70(v71);
      sub_22C36DD28(v66, &qword_27D9BD7E8, &qword_22C923170);
      v72 = sub_22C36BBCC();
      v70(v72);
      goto LABEL_10;
    }

    v215 = *(v2 + 576);
    v218 = *(v2 + 592);
    v200 = *(v2 + 464);
    v203 = *(v2 + 456);
    v206 = *(v2 + 496);
    v209 = *(v2 + 440);
    v212 = *(v2 + 584);
    v115 = *(v2 + 344);
    v197 = *(v2 + 336);
    v116 = *(v2 + 288);
    v117 = *(v2 + 296);
    v118 = *(v2 + 272);
    v119 = *(v2 + 264);
    v192 = *(v2 + 256);
    v193 = *(v2 + 280);
    v120 = *(v2 + 144);
    v194 = *(v2 + 352);
    sub_22C6B02EC();
    v121();
    v122 = sub_22C6AEF30();
    sub_22C36C640(v122, v123, v124, v120);
    sub_22C907D5C();
    sub_22C90769C();
    sub_22C36BECC();
    sub_22C36C640(v125, v126, v127, v128);
    (*(v119 + 104))(v118, *MEMORY[0x277D1C400], v192);
    sub_22C901FFC();
    (*(v116 + 104))(v117, *MEMORY[0x277D1CBE8], v193);
    sub_22C9026AC();
    sub_22C36A748();
    sub_22C36C640(v129, v130, v131, v132);
    sub_22C4F6088();
    sub_22C907DCC();
    sub_22C9087AC();
    sub_22C90882C();

    sub_22C6B0304();
    sub_22C9068FC();
    sub_22C6AF754();
    sub_22C906E7C();
    (*(v115 + 8))(v194, v197);
    v133 = *(v200 + 8);
    v133(v206, v203);
    type metadata accessor for StepResolution(0);
    sub_22C6AFB18();
    swift_storeEnumTagMultiPayload();
    sub_22C36DD28(v209, &qword_27D9BD7E8, &qword_22C923170);
    v134 = sub_22C372FCC();
    (v133)(v134);
    (*(v212 + 8))(v218, v215);
LABEL_9:
    sub_22C37EF60();

    sub_22C369C50();
LABEL_11:

    return v24();
  }

LABEL_25:
  v73 = *(v2 + 496);
  sub_22C90878C();
  sub_22C37FF20();
  sub_22C6B0340();
  Interpreter.findOriginTaskStatementId(statement:transcript:actionParameterContext:)(v74, v75, v76, v77, v78, v79, v80, v81, v180, v181, v182, v183, v184, v185, v186, v187, v188, v189, v190, v191);
  if (v73)
  {
    v82 = *(v2 + 464);
    v66 = *(v2 + 440);
    (v211)(*(v2 + 536), *(v2 + 504));
    v83 = *(v82 + 8);
    v84 = sub_22C36EC8C();
    v83(v84);
    sub_22C36DD28(v66, &qword_27D9BD7E8, &qword_22C923170);
    v85 = sub_22C36FC08();
    v83(v85);
LABEL_10:
    sub_22C6AF268();
    (*(v28 + 8))(v66);

    sub_22C369A24();
    goto LABEL_11;
  }

  (v211)(*(v2 + 536), *(v2 + 504));
  sub_22C903F8C();
  v86 = sub_22C37FF20();
  v87(v86);
  v88 = sub_22C371510();
  v89(v88);
  v90 = sub_22C9063CC();
  v91 = sub_22C90AABC();
  v92 = os_log_type_enabled(v90, v91);
  v93 = *(v2 + 600);
  v94 = *(v2 + 464);
  v202 = *(v2 + 392);
  v95 = *(v2 + 368);
  if (v92)
  {
    v199 = *(v2 + 624);
    sub_22C383050();
    sub_22C37ACD0();
    *v93 = 136315394;
    sub_22C90702C();
    sub_22C634768();
    sub_22C90A1AC();
    log = v90;
    v96 = *(v94 + 8);
    v97 = sub_22C36BBCC();
    v96(v97);
    v98 = sub_22C634768();
    sub_22C36F9F4(v98, v99, v100);
    sub_22C3758E0();

    sub_22C6AF194();
    sub_22C6AEB50();
    sub_22C6A4290(v101, v102, MEMORY[0x277D1C368]);
    v103 = sub_22C90B47C();
    v104 = sub_22C36D29C();
    v105 = v91;
    v106 = v217;
    v217(v104);
    v107 = sub_22C36BBCC();
    sub_22C36F9F4(v107, v108, v109);
    sub_22C37BB14();

    *(v93 + 14) = v103;
    _os_log_impl(&dword_22C366000, log, v105, "Origin Task Statement ID for %s: %s", v93, 0x16u);
    swift_arrayDestroy();
    sub_22C369B50();
    MEMORY[0x2318B9880]();
    sub_22C369B50();
    MEMORY[0x2318B9880]();

    v110 = v199;
    v111 = v93;
  }

  else
  {

    v106 = v217;
    (v217)(v202, v95);
    v96 = *(v94 + 8);
    v112 = sub_22C36BBCC();
    v96(v112);
    v110 = sub_22C5CAA58();
  }

  (v214)(v110, v111);
  *(v2 + 664) = v96;
  sub_22C90878C();
  sub_22C36A724();
  sub_22C66BDB0(v113, v114);
  v204 = *(v2 + 368);
  v135 = *(v2 + 96);
  (v211)(*(v2 + 528), *(v2 + 504));
  sub_22C3B5C4C(v135, v2 + 16);
  v136 = sub_22C36BAFC();
  v137(v136);
  sub_22C901F9C();
  v138 = sub_22C36ECB4();
  sub_22C6AEA50(v138, v139, v140, v141);
  v142 = sub_22C36FD7C();
  v201 = sub_22C370B74(v142, v143, v204);
  if (v201 == 1)
  {
    sub_22C36DD28(*(v2 + 216), &qword_27D9BC030, &unk_22C911CC0);
    v205 = 0;
  }

  else
  {
    v205 = sub_22C901F9C();
    v144 = sub_22C372FA4();
    v106(v144);
  }

  v145 = *(v2 + 560);
  v198 = *(v2 + 504);
  v195 = *(v2 + 200);
  sub_22C9068FC();
  v210 = sub_22C901F9C();
  v146 = sub_22C36D29C();
  v217(v146);
  v147 = sub_22C3819EC();
  v148(v147);
  sub_22C3B5C4C(v2 + 16, v195);
  sub_22C90878C();
  sub_22C9087CC();
  (v211)(v145, v198);
  sub_22C90445C();
  sub_22C6B0304();
  sub_22C90878C();
  sub_22C9087DC();
  v149 = sub_22C51E290();
  v211(v149);
  v150 = sub_22C36BD58();
  sub_22C3A5950(v150);

  v151 = sub_22C908A0C();
  v152 = sub_22C36CCF8();
  if (sub_22C370B74(v152, v153, v151) == 1)
  {
    v154 = *(v2 + 144);
    v155 = *(v2 + 112);
    (*(*(v2 + 128) + 8))(*(v2 + 136), *(v2 + 120));
    v156 = sub_22C50B578();
    v157(v156);
    sub_22C3B5CA8(v2 + 16);
    sub_22C36DD28(v155, &qword_27D9BA808, &qword_22C90C6E0);
    sub_22C36A748();
    sub_22C36C640(v158, v159, v160, v154);
  }

  else
  {
    sub_22C9088DC();
    v161 = sub_22C36BAFC();
    v162(v161);
    v163 = sub_22C50B578();
    v164(v163);
    sub_22C3B5CA8(v2 + 16);
    sub_22C36BBA8();
    v165 = sub_22C3863FC();
    v166(v165);
  }

  v219 = *(v2 + 592);
  v213 = *(v2 + 488);
  v167 = *(v2 + 440);
  v168 = *(v2 + 200);
  v169 = *(v2 + 192);
  v170 = *(v2 + 104);
  v207 = *(v2 + 72);
  sub_22C6AE8BC(*(v2 + 320), v168 + v169[6], &qword_27D9BB190, qword_22C90DD90);
  sub_22C38B6D4(v168 + v169[7]);
  v171 = v168 + v169[8];
  *v171 = v205;
  *(v171 + 4) = v201 == 1;
  *(v168 + v169[9]) = v210;
  sub_22C38AA18();
  v172();
  sub_22C37FF08();
  v173 = sub_22C36BA00();
  sub_22C6A43E0(v173, v174);
  v175 = swift_task_alloc();
  *(v2 + 672) = v175;
  *(v175 + 16) = v170;
  *(v175 + 24) = v167;
  *(v175 + 32) = v213;
  *(v175 + 40) = v207;
  *(v175 + 56) = v219;
  sub_22C6AF7A4(&qword_22C923190);
  v220 = v176;
  swift_task_alloc();
  sub_22C36CC90();
  *(v2 + 680) = v177;
  *v177 = v178;
  v177[1] = sub_22C6562EC;
  v179 = *(v2 + 64);

  return v220(v179, &unk_22C922FD0, v175);
}

uint64_t sub_22C6562EC()
{
  sub_22C36FB38();
  sub_22C3864E0();
  sub_22C36D994();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 688) = v0;

  sub_22C6343B0();

  sub_22C374448();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_22C656404()
{
  v1 = v0[83];
  v2 = v0[81];
  v3 = v0[73];
  v12 = v0[72];
  v13 = v0[74];
  v11 = v0[61];
  v4 = v0[57];
  v10 = v0[55];
  v5 = v0[28];
  sub_22C36A1D4();
  sub_22C6A438C();
  sub_22C36DD28(v5, &qword_27D9BC030, &unk_22C911CC0);
  v6 = sub_22C3726C4();
  v2(v6);
  v7 = sub_22C36D29C();
  v1(v7);
  sub_22C36DD28(v10, &qword_27D9BD7E8, &qword_22C923170);
  (v1)(v11, v4);
  (*(v3 + 8))(v13, v12);
  sub_22C37EF60();

  sub_22C369C50();

  return v8();
}

uint64_t sub_22C656720()
{
  v1 = v0[83];
  v2 = v0[81];
  v3 = v0[57];
  v4 = v0[58];
  v11 = v0[55];
  v12 = v0[61];
  v5 = v0[28];
  sub_22C36A1D4();
  sub_22C6A438C();
  sub_22C36DD28(v5, &qword_27D9BC030, &unk_22C911CC0);
  v6 = sub_22C36CA88();
  v2(v6);
  v7 = sub_22C37170C();
  v1(v7);
  sub_22C36DD28(v11, &qword_27D9BD7E8, &qword_22C923170);
  (v1)(v12, v3);
  sub_22C6AF268();
  (*(v8 + 8))(v4);

  sub_22C375A9C();

  return v9();
}

uint64_t sub_22C656A3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v121 = a2;
  v152 = a1;
  v123 = a3;
  v3 = sub_22C9063DC();
  v147 = *(v3 - 8);
  v148 = v3;
  v4 = MEMORY[0x28223BE20](v3);
  v150 = &v110 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v128 = &v110 - v6;
  v7 = sub_22C3A5908(&qword_27D9BC030, &unk_22C911CC0);
  MEMORY[0x28223BE20](v7 - 8);
  v120 = &v110 - v8;
  v9 = sub_22C3A5908(&qword_27D9BF328, &qword_22C9225C0);
  MEMORY[0x28223BE20](v9 - 8);
  v118 = &v110 - v10;
  v11 = sub_22C9093BC();
  MEMORY[0x28223BE20](v11 - 8);
  v113 = &v110 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = sub_22C9026BC();
  v112 = *(v115 - 8);
  MEMORY[0x28223BE20](v115);
  v114 = &v110 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_22C907DEC();
  MEMORY[0x28223BE20](v14 - 8);
  v119 = &v110 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_22C3A5908(&qword_27D9BF330, &unk_22C923250);
  MEMORY[0x28223BE20](v16 - 8);
  v126 = &v110 - v17;
  v18 = sub_22C3A5908(&qword_27D9BB190, qword_22C90DD90);
  MEMORY[0x28223BE20](v18 - 8);
  v125 = &v110 - v19;
  v117 = sub_22C9025EC();
  v116 = *(v117 - 8);
  MEMORY[0x28223BE20](v117);
  v134 = &v110 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v127 = type metadata accessor for ExpressionEvaluator(0);
  MEMORY[0x28223BE20](v127);
  v133 = &v110 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_22C901FAC();
  v23 = *(v22 - 8);
  v138 = v22;
  v139 = v23;
  v24 = MEMORY[0x28223BE20](v22);
  v111 = &v110 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v24);
  v110 = &v110 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v124 = &v110 - v29;
  MEMORY[0x28223BE20](v28);
  v136 = &v110 - v30;
  v31 = sub_22C3A5908(&qword_27D9BEC58, &qword_22C922F70);
  MEMORY[0x28223BE20](v31 - 8);
  v137 = &v110 - v32;
  v140 = sub_22C906F2C();
  v132 = *(v140 - 8);
  MEMORY[0x28223BE20](v140);
  v131 = &v110 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_22C3A5908(&qword_27D9BD7E8, &qword_22C923170);
  MEMORY[0x28223BE20](v34 - 8);
  v142 = &v110 - v35;
  v149 = sub_22C907D6C();
  v143 = *(v149 - 8);
  MEMORY[0x28223BE20](v149);
  v145 = &v110 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_22C90880C();
  v38 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v40 = &v110 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_22C3A5908(&qword_27D9BF740, &unk_22C923A40);
  MEMORY[0x28223BE20](v41 - 8);
  v43 = &v110 - v42;
  v44 = sub_22C908CEC();
  v146 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v151 = &v110 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_22C90069C();
  v47 = *(v46 - 8);
  v48 = MEMORY[0x28223BE20](v46);
  v141 = &v110 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v48);
  v51 = &v110 - v50;
  sub_22C9070FC();
  sub_22C90878C();
  sub_22C68FC68();
  v52 = v44;
  v53 = *(v38 + 8);
  v135 = v37;
  v53(v40, v37);
  if (sub_22C370B74(v43, 1, v52) == 1)
  {
    sub_22C36DD28(v43, &qword_27D9BF740, &unk_22C923A40);
    sub_22C903F8C();
    v54 = v141;
    (*(v47 + 16))(v141, v51, v46);
    v55 = sub_22C9063CC();
    v56 = sub_22C90AADC();
    v57 = v47;
    if (os_log_type_enabled(v55, v56))
    {
      v58 = swift_slowAlloc();
      v144 = v51;
      v59 = v58;
      v60 = swift_slowAlloc();
      v153 = v60;
      *v59 = 136315138;
      sub_22C6A4290(&qword_27D9BEC38, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v61 = sub_22C90B47C();
      v63 = v62;
      LODWORD(v152) = v56;
      v64 = *(v57 + 8);
      v64(v54, v46);
      v65 = sub_22C36F9F4(v61, v63, &v153);

      *(v59 + 4) = v65;
      _os_log_impl(&dword_22C366000, v55, v152, "QueryStep not found for the step results with query event id: %s", v59, 0xCu);
      sub_22C36FF94(v60);
      MEMORY[0x2318B9880](v60, -1, -1);
      v51 = v144;
      MEMORY[0x2318B9880](v59, -1, -1);

      v66 = v64;
    }

    else
    {

      v66 = *(v47 + 8);
      v66(v54, v46);
    }

    (*(v147 + 8))(v150, v148);
    type metadata accessor for InterpreterError(0);
    sub_22C6A4290(&qword_27D9BAA40, type metadata accessor for InterpreterError, &protocol conformance descriptor for InterpreterError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    return (v66)(v51, v46);
  }

  else
  {
    v122 = v47;
    v144 = v51;
    v67 = v146;
    (*(v146 + 32))(v151, v43, v52);
    v68 = v142;
    v69 = v52;
    sub_22C908CBC();
    v70 = v149;
    if (sub_22C370B74(v68, 1, v149) == 1)
    {
      sub_22C36DD28(v68, &qword_27D9BD7E8, &qword_22C923170);
      type metadata accessor for InterpreterError(0);
      sub_22C6A4290(&qword_27D9BAA40, type metadata accessor for InterpreterError, &protocol conformance descriptor for InterpreterError);
      swift_allocError();
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      (*(v67 + 8))(v151, v69);
      return (*(v122 + 8))(v144, v46);
    }

    else
    {
      v150 = v69;
      (*(v143 + 32))(v145, v68, v70);
      sub_22C90878C();
      v72 = v136;
      sub_22C9068FC();
      v73 = v137;
      sub_22C649070();
      v74 = v72;
      v75 = v138;
      (*(v139 + 8))(v74, v138);
      v53(v40, v135);
      v76 = v140;
      if (sub_22C370B74(v73, 1, v140) == 1)
      {
        v77 = v67;
        sub_22C36DD28(v73, &qword_27D9BEC58, &qword_22C922F70);
        v78 = v128;
        sub_22C903F8C();
        v79 = sub_22C9063CC();
        v80 = sub_22C90AADC();
        v81 = os_log_type_enabled(v79, v80);
        v82 = v122;
        if (v81)
        {
          v83 = swift_slowAlloc();
          *v83 = 0;
          _os_log_impl(&dword_22C366000, v79, v80, "Unable to resolve variable name to expression in plan.", v83, 2u);
          MEMORY[0x2318B9880](v83, -1, -1);
        }

        (*(v147 + 8))(v78, v148);
        type metadata accessor for InterpreterError(0);
        sub_22C6A4290(&qword_27D9BAA40, type metadata accessor for InterpreterError, &protocol conformance descriptor for InterpreterError);
        swift_allocError();
        v84 = v151;
        sub_22C9068FC();
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
        (*(v143 + 8))(v145, v149);
        (*(v77 + 8))(v84, v150);
        return (*(v82 + 8))(v144, v46);
      }

      else
      {
        v85 = v132;
        v86 = v73;
        v87 = v131;
        (*(v132 + 32))(v131, v86, v76);
        v88 = v133;
        sub_22C90878C();
        sub_22C908C5C();
        sub_22C6A4290(&qword_2814357B0, MEMORY[0x277D1C338], MEMORY[0x277D1C348]);
        v89 = sub_22C909F0C();
        v90 = v127;
        v91 = *(v127 + 24);
        v92 = sub_22C908AEC();
        v93 = &v88[v91];
        v94 = v129;
        (*(*(v92 - 8) + 16))(v93, v129, v92);
        v95 = type metadata accessor for Interpreter(0);
        sub_22C378AB0(v94 + *(v95 + 28), &v88[v90[7]]);
        v96 = v90[8];
        v97 = sub_22C90941C();
        sub_22C36C640(&v88[v96], 1, 1, v97);
        *&v88[v90[5]] = v89;
        v98 = v130;
        sub_22C63A848(v87, v134);
        v99 = v122;
        if (v98)
        {
          sub_22C6A438C();
          (*(v85 + 8))(v87, v76);
          (*(v143 + 8))(v145, v149);
          (*(v146 + 8))(v151, v150);
          return (*(v99 + 8))(v144, v46);
        }

        else
        {
          v148 = v46;
          sub_22C36C640(v125, 1, 1, v46);
          v100 = v126;
          sub_22C907D5C();
          v101 = sub_22C90769C();
          sub_22C36C640(v100, 0, 1, v101);
          sub_22C907D2C();
          sub_22C90207C();
          v102 = v114;
          sub_22C902B8C();
          (*(v112 + 104))(v102, *MEMORY[0x277D1CBE0], v115);
          v103 = sub_22C9026AC();
          sub_22C36C640(v118, 1, 1, v103);
          sub_22C907DCC();
          sub_22C9087AC();
          sub_22C90882C();

          sub_22C9068FC();
          v104 = v120;
          sub_22C6AEA50(v121, v120, &qword_27D9BC030, &unk_22C911CC0);
          if (sub_22C370B74(v104, 1, v75) == 1)
          {
            sub_22C9068FC();
            v105 = sub_22C370B74(v104, 1, v75);
            v106 = v144;
            v107 = v151;
            v108 = v132;
            v109 = v131;
            if (v105 != 1)
            {
              sub_22C36DD28(v104, &qword_27D9BC030, &unk_22C911CC0);
            }
          }

          else
          {
            (*(v139 + 32))(v111, v104, v75);
            v106 = v144;
            v107 = v151;
            v108 = v132;
            v109 = v131;
          }

          sub_22C906E6C();
          (*(v116 + 8))(v134, v117);
          sub_22C6A438C();
          (*(v108 + 8))(v109, v140);
          (*(v143 + 8))(v145, v149);
          (*(v146 + 8))(v107, v150);
          (*(v122 + 8))(v106, v148);
          type metadata accessor for StepResolution(0);
          return swift_storeEnumTagMultiPayload();
        }
      }
    }
  }
}