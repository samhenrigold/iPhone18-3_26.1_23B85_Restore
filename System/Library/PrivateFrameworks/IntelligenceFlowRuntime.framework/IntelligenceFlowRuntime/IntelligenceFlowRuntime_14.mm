uint64_t sub_22BCCFA64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void (*a4)(void)@<X4>, uint64_t (*a5)(void)@<X5>, uint64_t (*a7)(uint64_t)@<X7>, uint64_t a8@<X8>)
{
  _s19ParameterStepResultOMa(0);
  sub_22BB2F330();
  MEMORY[0x28223BE20](v14);
  sub_22BB30574();
  v17 = v16 - v15;
  a4();
  v18 = *(a5(0) + 20);
  sub_22BDB43E4();
  sub_22BB2F330();
  (*(v19 + 16))(v17 + v18, a3);
  swift_storeEnumTagMultiPayload();
  v20 = sub_22BDB4C34();
  sub_22BB2F330();
  v22 = *(v21 + 16);
  v22(a8, a1, v20);
  v23 = _s23ParameterStepEvaluationVMa(0);
  v24 = (v22)(a8 + *(v23 + 20), a2, v20);
  a7(v24);
  sub_22BDB8364();
  sub_22BCCFFF4(v17, a8 + *(v23 + 28), _s19ParameterStepResultOMa);
  _s23StatementStepEvaluationOMa(0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_22BCCFC24@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_22BDB43E4();
  sub_22BB30444();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  sub_22BB30574();
  v12 = v11 - v10;
  v13 = sub_22BDB77D4();
  sub_22BB30444();
  v38 = v14;
  MEMORY[0x28223BE20](v15);
  sub_22BB30574();
  v18 = v17 - v16;
  v19 = sub_22BBE6DE0(&qword_27D8E3E10, &qword_22BDC1258);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v34 - v20;
  sub_22BB69FEC(a2, a2[3]);
  sub_22BCBD54C(a1, v21);
  v22 = _s23StatementStepEvaluationOMa(0);
  if (sub_22BB3AA28(v21, 1, v22) == 1)
  {
    v37 = v13;
    sub_22BCCFF8C(v21);
    sub_22BDB6404();
    (*(v8 + 16))(v12, a1, v6);
    v23 = sub_22BDB77C4();
    v24 = sub_22BDBB114();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v39 = v35;
      *v25 = 136315138;
      sub_22BB32368();
      sub_22BBB8F84(v26, v27, MEMORY[0x277CC9628]);
      v28 = sub_22BDBB684();
      v36 = a3;
      v30 = v29;
      (*(v8 + 8))(v12, v6);
      v31 = sub_22BB32EE0(v28, v30, &v39);
      a3 = v36;

      *(v25 + 4) = v31;
      _os_log_impl(&dword_22BB2C000, v23, v24, "Cannot retrieve a statement step for a prompt outcome with statementEventId=%s", v25, 0xCu);
      sub_22BB32FA4(v35);
      sub_22BB2F368();
      MEMORY[0x2318A6080]();
      sub_22BB2F368();
      MEMORY[0x2318A6080]();
    }

    else
    {

      (*(v8 + 8))(v12, v6);
    }

    (*(v38 + 8))(v18, v37);
    v32 = 1;
  }

  else
  {
    sub_22BCCFFF4(v21, a3, _s23StatementStepEvaluationOMa);
    v32 = 0;
  }

  return sub_22BB336D0(a3, v32, 1, v22);
}

uint64_t sub_22BCCFF8C(uint64_t a1)
{
  v2 = sub_22BBE6DE0(&qword_27D8E3E10, &qword_22BDC1258);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22BCCFFF4(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_22BB2F330();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_22BCD0054(uint64_t a1)
{
  v2 = _s20StatementResultEventVMa(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22BCD00B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BBE6DE0(&qword_27D8E3E10, &qword_22BDC1258);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22BCD0120@<X0>(uint64_t a2@<X8>)
{
  v4 = *(v2 + 16);
  if (*(v4 + 16) && (sub_22BD84660(), (v6 & 1) != 0))
  {
    v7 = v5;
    v8 = *(v4 + 56);
    v9 = _s23StatementStepEvaluationOMa(0);
    sub_22BB2F330();
    sub_22BCD1054(v8 + *(v10 + 72) * v7, a2, _s23StatementStepEvaluationOMa);
    v11 = a2;
    v12 = 0;
    v13 = v9;
  }

  else
  {
    v13 = _s23StatementStepEvaluationOMa(0);
    v11 = a2;
    v12 = 1;
  }

  return sub_22BB336D0(v11, v12, 1, v13);
}

uint64_t sub_22BCD01DC@<X0>(char *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v158 = a4;
  v143 = a3;
  v138 = sub_22BDB90B4();
  sub_22BB30444();
  v137 = v6;
  MEMORY[0x28223BE20](v7);
  sub_22BB305A8();
  v136 = v8;
  sub_22BB2F120();
  v9 = sub_22BDB85E4();
  v10 = sub_22BB2F0C8(v9);
  MEMORY[0x28223BE20](v10);
  sub_22BB305A8();
  v133 = v11;
  v12 = sub_22BB2F120();
  v134 = _s26PromptStatementStepBuilderVMa(v12);
  sub_22BB2F330();
  MEMORY[0x28223BE20](v13);
  sub_22BB305A8();
  v135 = v14;
  sub_22BB2F120();
  sub_22BDB4C34();
  sub_22BB30444();
  v147 = v15;
  v148 = v16;
  MEMORY[0x28223BE20](v15);
  sub_22BB305A8();
  v146 = v17;
  v18 = sub_22BBE6DE0(&qword_27D8E3DE8, &unk_22BDC1220);
  v19 = sub_22BB2F0C8(v18);
  MEMORY[0x28223BE20](v19);
  v142 = &v128 - v20;
  v21 = sub_22BB2F120();
  v144 = _s20StatementResultEventVMa(v21);
  sub_22BB2F330();
  MEMORY[0x28223BE20](v22);
  sub_22BB30560();
  sub_22BB30B7C();
  MEMORY[0x28223BE20](v23);
  v132 = &v128 - v24;
  v25 = sub_22BBE6DE0(&qword_27D8E3EA0, &qword_22BDC1370);
  v26 = sub_22BB2F0C8(v25);
  MEMORY[0x28223BE20](v26);
  v149 = &v128 - v27;
  sub_22BB2F120();
  v160 = sub_22BDB5B14();
  sub_22BB30444();
  v145 = v28;
  MEMORY[0x28223BE20](v29);
  sub_22BB30560();
  sub_22BB30B7C();
  MEMORY[0x28223BE20](v30);
  v152 = &v128 - v31;
  sub_22BB2F120();
  sub_22BDB8624();
  sub_22BB30444();
  v155 = v33;
  v156 = v32;
  MEMORY[0x28223BE20](v32);
  sub_22BB305A8();
  v150 = v34;
  sub_22BB2F120();
  sub_22BDB77D4();
  sub_22BB30444();
  v153 = v36;
  v154 = v35;
  MEMORY[0x28223BE20](v35);
  sub_22BB30560();
  sub_22BB30B7C();
  v38 = MEMORY[0x28223BE20](v37);
  v141 = &v128 - v39;
  MEMORY[0x28223BE20](v38);
  v157 = &v128 - v40;
  v41 = sub_22BBE6DE0(&qword_27D8E42D8, &unk_22BDC2C60);
  v42 = sub_22BB2F0C8(v41);
  MEMORY[0x28223BE20](v42);
  v44 = &v128 - v43;
  v45 = sub_22BDB43E4();
  sub_22BB30444();
  v47 = v46;
  v49 = MEMORY[0x28223BE20](v48);
  v51 = &v128 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v49);
  v53 = &v128 - v52;
  v54 = _s19SystemResponseEventVMa(0);
  sub_22BB2F330();
  MEMORY[0x28223BE20](v55);
  sub_22BB30560();
  v140 = v56;
  MEMORY[0x28223BE20](v57);
  v59 = &v128 - v58;
  sub_22BDB8614();
  sub_22BD81134(v53, a2);
  v129 = v47;
  v60 = *(v47 + 8);
  v151 = v45;
  v60(v53, v45);
  if (sub_22BB3AA28(v44, 1, v54) == 1)
  {
    sub_22BB58728(v44, &qword_27D8E42D8, &unk_22BDC2C60);
    sub_22BDB6404();
    v61 = v150;
    (*(v155 + 16))(v150, a1, v156);
    v62 = sub_22BDB77C4();
    v63 = sub_22BDBB114();
    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      v160 = swift_slowAlloc();
      v161 = v160;
      *v64 = 136315138;
      LODWORD(v152) = v63;
      sub_22BDB8614();
      sub_22BB32368();
      sub_22BBB8F84(v65, v66, MEMORY[0x277CC9628]);
      v67 = v151;
      v68 = sub_22BDBB684();
      v70 = v69;
      v60(v51, v67);
      (*(v155 + 8))(v61, v156);
      v71 = sub_22BB32EE0(v68, v70, &v161);

      *(v64 + 4) = v71;
      _os_log_impl(&dword_22BB2C000, v62, v152, "Cannot find a response event for a system prompt resolution with systemResponseEventId=%s", v64, 0xCu);
      sub_22BB32FA4(v160);
      sub_22BB30AF0();
      sub_22BB30AF0();
    }

    else
    {

      (*(v155 + 8))(v61, v156);
    }

    sub_22BB31134();
    v87(v157);
LABEL_14:
    v117 = _s23StatementStepEvaluationOMa(0);
    return sub_22BB336D0(v158, 1, 1, v117);
  }

  v157 = a1;
  sub_22BCD0FF4(v44, v59, _s19SystemResponseEventVMa);
  v72 = v149;
  sub_22BCB5EE0();
  if (sub_22BB3AA28(v72, 1, v160) == 1)
  {
    sub_22BB58728(v72, &qword_27D8E3EA0, &qword_22BDC1370);
    v73 = v141;
    sub_22BDB6404();
    v74 = v140;
    sub_22BCD1054(v59, v140, _s19SystemResponseEventVMa);
    v75 = sub_22BDB77C4();
    v76 = sub_22BDBB114();
    if (os_log_type_enabled(v75, v76))
    {
      v77 = swift_slowAlloc();
      v78 = swift_slowAlloc();
      v161 = v78;
      *v77 = 136315138;
      sub_22BB32368();
      sub_22BBB8F84(v79, v80, MEMORY[0x277CC9628]);
      v81 = sub_22BDBB684();
      v83 = v82;
      sub_22BB31D1C();
      sub_22BCD10B4(v84, v85);
      v86 = sub_22BB32EE0(v81, v83, &v161);

      *(v77 + 4) = v86;
      _os_log_impl(&dword_22BB2C000, v75, v76, "System response event with id %s is not referencing exactly one statement, cannot create a prompt statement step builder", v77, 0xCu);
      sub_22BB32FA4(v78);
      sub_22BB30AF0();
      sub_22BB30AF0();
    }

    else
    {

      sub_22BB31D1C();
      sub_22BCD10B4(v74, v115);
    }

    sub_22BB31134();
    v116(v73);
    sub_22BCD10B4(v59, v72);
    goto LABEL_14;
  }

  v156 = v59;
  v88 = v145;
  (*(v145 + 32))(v152, v72, v160);
  v89 = sub_22BB69FEC(v143, v143[3]);
  v90 = v146;
  v91 = sub_22BDB5AF4();
  v161 = *v89;
  MEMORY[0x28223BE20](v91);
  *(&v128 - 2) = v90;

  sub_22BBE6DE0(&qword_27D8E2F48, &unk_22BDBD950);
  sub_22BCBD20C();
  v92 = v142;
  v93 = v144;
  sub_22BDB9074();
  v94 = v92;

  v95 = v148 + 8;
  v96 = *(v148 + 8);
  v96(v90, v147);
  if (sub_22BB3AA28(v94, 1, v93) == 1)
  {
    sub_22BB58728(v94, &qword_27D8E3DE8, &unk_22BDC1220);
    v97 = v139;
    sub_22BDB6404();
    v98 = v130;
    v99 = v152;
    (*(v88 + 16))(v130, v152, v160);
    v100 = sub_22BDB77C4();
    v101 = sub_22BDBB114();
    if (os_log_type_enabled(v100, v101))
    {
      v102 = swift_slowAlloc();
      v148 = v95;
      v103 = v102;
      v155 = v102;
      v159 = swift_slowAlloc();
      v161 = v159;
      *v103 = 136315138;
      v104 = v146;
      LODWORD(v157) = v101;
      sub_22BDB5AF4();
      sub_22BBB8F84(&qword_27D8E2F68, MEMORY[0x277D1C338], MEMORY[0x277D1C368]);
      v105 = v98;
      v106 = v147;
      v107 = sub_22BDBB684();
      v109 = v108;
      v96(v104, v106);
      v110 = *(v88 + 8);
      v111 = v160;
      v110(v105, v160);
      v112 = sub_22BB32EE0(v107, v109, &v161);

      v113 = v155;
      *(v155 + 4) = v112;
      _os_log_impl(&dword_22BB2C000, v100, v157, "Cannot find a statement result event for a system prompt resolution with resultStatementId=%s", v113, 0xCu);
      sub_22BB32FA4(v159);
      sub_22BB30AF0();
      sub_22BB30AF0();

      sub_22BB31134();
      v114(v139);
      v110(v152, v111);
    }

    else
    {

      v125 = *(v88 + 8);
      v126 = v160;
      v125(v98, v160);
      sub_22BB31134();
      v127(v97);
      v125(v99, v126);
    }

    sub_22BB365D4();
    goto LABEL_14;
  }

  v119 = v132;
  sub_22BCD0FF4(v94, v132, _s20StatementResultEventVMa);
  v120 = v131;
  sub_22BCD1054(v119, v131, _s20StatementResultEventVMa);
  v121 = v133;
  sub_22BDB85F4();
  v122 = v134;
  v123 = v135;
  sub_22BCC07B4(v121, (v135 + *(v134 + 32)));
  sub_22BDB8784();
  sub_22BDB8794();
  (*(v129 + 16))(v123 + *(v122 + 24), v120, v151);
  v124 = v136;
  sub_22BDB87E4();
  sub_22BDB9094();
  (*(v137 + 8))(v124, v138);
  sub_22BCD10B4(v120, _s20StatementResultEventVMa);
  sub_22BCBED20(v158);
  sub_22BCD10B4(v123, _s26PromptStatementStepBuilderVMa);
  sub_22BCD10B4(v119, _s20StatementResultEventVMa);
  (*(v88 + 8))(v152, v160);
  return sub_22BB365D4();
}

uint64_t sub_22BCD0FF4(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_22BB2F330();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_22BCD1054(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_22BB2F330();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_22BCD10B4(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_22BB2F330();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_22BCD110C(uint64_t a1)
{
  v43 = sub_22BDB8384();
  v3 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v42 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v5)
  {
    v35 = v1;
    v47 = MEMORY[0x277D84F90];
    sub_22BD28158(0, v5, 0);
    v7 = v47;
    v10 = sub_22BCD3E4C(a1);
    result = v7;
    v11 = 0;
    v12 = a1 + 64;
    v40 = v3 + 8;
    v41 = v3 + 16;
    v36 = a1 + 72;
    v37 = v5;
    v38 = v3;
    v39 = a1 + 64;
    if ((v10 & 0x8000000000000000) == 0)
    {
      while (v10 < 1 << *(a1 + 32))
      {
        v13 = v10 >> 6;
        if ((*(v12 + 8 * (v10 >> 6)) & (1 << v10)) == 0)
        {
          goto LABEL_24;
        }

        if (*(a1 + 36) != v8)
        {
          goto LABEL_25;
        }

        v44 = v9;
        v45 = v11;
        v46 = v8;
        v14 = v42;
        v15 = v43;
        v16 = result;
        (*(v3 + 16))(v42, *(a1 + 48) + *(v3 + 72) * v10, v43);
        v17 = sub_22BDB8374();
        v18 = v3;
        v20 = v19;
        (*(v18 + 8))(v14, v15);
        result = v16;
        v47 = v16;
        v22 = *(v16 + 16);
        v21 = *(v16 + 24);
        if (v22 >= v21 >> 1)
        {
          sub_22BD28158(v21 > 1, v22 + 1, 1);
          result = v47;
        }

        *(result + 16) = v22 + 1;
        v23 = result + 16 * v22;
        *(v23 + 32) = v17;
        *(v23 + 40) = v20;
        v24 = 1 << *(a1 + 32);
        if (v10 >= v24)
        {
          goto LABEL_26;
        }

        v12 = v39;
        v25 = *(v39 + 8 * v13);
        if ((v25 & (1 << v10)) == 0)
        {
          goto LABEL_27;
        }

        if (*(a1 + 36) != v46)
        {
          goto LABEL_28;
        }

        v26 = v25 & (-2 << (v10 & 0x3F));
        if (v26)
        {
          v24 = __clz(__rbit64(v26)) | v10 & 0x7FFFFFFFFFFFFFC0;
          v3 = v38;
        }

        else
        {
          v27 = v13 << 6;
          v28 = v13 + 1;
          v29 = (v36 + 8 * v13);
          v30 = v38;
          while (v28 < (v24 + 63) >> 6)
          {
            v32 = *v29++;
            v31 = v32;
            v27 += 64;
            ++v28;
            if (v32)
            {
              v33 = result;
              sub_22BBBFEB0(v10, v46, v44 & 1);
              result = v33;
              v24 = __clz(__rbit64(v31)) + v27;
              goto LABEL_18;
            }
          }

          v34 = result;
          sub_22BBBFEB0(v10, v46, v44 & 1);
          result = v34;
LABEL_18:
          v3 = v30;
        }

        v11 = v45 + 1;
        if (v45 + 1 == v37)
        {
          return result;
        }

        v9 = 0;
        v8 = *(a1 + 36);
        v10 = v24;
        if (v24 < 0)
        {
          break;
        }
      }
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

  return result;
}

uint64_t sub_22BCD1434(void (*a1)(uint64_t *__return_ptr, void *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = a3 + 56;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 56);
  v9 = (v6 + 63) >> 6;

  v11 = 0;
  v12 = MEMORY[0x277D84F90];
  if (v8)
  {
LABEL_8:
    while (1)
    {
      v14 = (*(a3 + 48) + ((v11 << 10) | (16 * __clz(__rbit64(v8)))));
      v15 = v14[1];
      v26[0] = *v14;
      v26[1] = v15;

      a1(&v27, v26);
      if (v4)
      {
        break;
      }

      v16 = v27;
      v17 = *(v27 + 16);
      v18 = *(v12 + 16);
      if (__OFADD__(v18, v17))
      {
        goto LABEL_25;
      }

      if (!swift_isUniquelyReferenced_nonNull_native() || v18 + v17 > *(v12 + 24) >> 1)
      {
        sub_22BBD5D64();
        v12 = v19;
      }

      if (*(v16 + 16))
      {
        v20 = (*(v12 + 24) >> 1) - *(v12 + 16);
        result = _s16CandidateSummaryVMa(0);
        if (v20 < v17)
        {
          goto LABEL_27;
        }

        swift_arrayInitWithCopy();

        v4 = 0;
        if (v17)
        {
          v21 = *(v12 + 16);
          v22 = __OFADD__(v21, v17);
          v23 = v21 + v17;
          if (v22)
          {
            goto LABEL_28;
          }

          *(v12 + 16) = v23;
        }
      }

      else
      {

        v4 = 0;
        if (v17)
        {
          goto LABEL_26;
        }
      }

      v8 &= v8 - 1;
      if (!v8)
      {
        goto LABEL_4;
      }
    }

    return v12;
  }

  else
  {
LABEL_4:
    while (1)
    {
      v13 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v13 >= v9)
      {

        return v12;
      }

      v8 = *(v5 + 8 * v13);
      ++v11;
      if (v8)
      {
        v11 = v13;
        goto LABEL_8;
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
    __break(1u);
  }

  return result;
}

BOOL sub_22BCD167C(uint64_t a1, uint64_t a2)
{
  if (sub_22BDB4C04() & 1) != 0 && (v4 = _s16CandidateSummaryVMa(0), static FeedbackLearning.CandidateParameter.== infix(_:_:)(), (v5) && (static FeedbackLearning.CandidateDefinition.== infix(_:_:)(), (v6) && (sub_22BDB7B04() & 1) != 0 && (v7 = *(v4 + 32), v10 = *(a1 + v7), v9 = *(a2 + v7), (static FeedbackLearning.CandidateOutcome.== infix(_:_:)(&v10, &v9)))
  {
    return *(a1 + *(v4 + 36)) == *(a2 + *(v4 + 36));
  }

  else
  {
    return 0;
  }
}

void sub_22BCD1744(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v94 = a3;
  v93 = a2;
  v95 = a4;
  v106 = sub_22BBE6DE0(&qword_27D8E4010, &unk_22BDC2CD0);
  sub_22BB2F330();
  MEMORY[0x28223BE20](v5);
  sub_22BB30560();
  v105 = v6;
  MEMORY[0x28223BE20](v7);
  sub_22BB2F384();
  v104 = v8;
  MEMORY[0x28223BE20](v9);
  sub_22BB2F39C();
  v103 = v10;
  sub_22BB2F120();
  v11 = sub_22BDB4C34();
  sub_22BB30444();
  v96 = v12;
  MEMORY[0x28223BE20](v13);
  sub_22BB30574();
  v16 = v15 - v14;
  v17 = sub_22BDB8F04();
  sub_22BB30444();
  v19 = v18;
  MEMORY[0x28223BE20](v20);
  sub_22BB30574();
  v23 = v22 - v21;
  sub_22BDB77D4();
  sub_22BB30444();
  v113 = v25;
  v114 = v24;
  MEMORY[0x28223BE20](v24);
  sub_22BB30574();
  v28 = v27 - v26;
  sub_22BDB6404();
  v29 = *(v19 + 16);
  v97 = a1;
  v29(v23, a1, v17);
  v30 = sub_22BDB77C4();
  v31 = sub_22BDBB104();
  v107 = v16;
  v92 = v11;
  if (os_log_type_enabled(v30, v31))
  {
    v111 = swift_slowAlloc();
    v112 = swift_slowAlloc();
    v115 = v112;
    *v111 = 136315138;
    sub_22BDB8174();
    sub_22BB33D70();
    sub_22BCD3F54(v32, v33, MEMORY[0x277D1C368]);
    sub_22BDBB684();
    LODWORD(v110) = v31;
    (*(v96 + 8))(v16, v11);
    v34 = sub_22BB35470();
    v35(v34);
    v36 = sub_22BB31F54();
    v39 = sub_22BB32EE0(v36, v37, v38);

    v40 = v111;
    *(v111 + 4) = v39;
    _os_log_impl(&dword_22BB2C000, v30, v110, "Evaluating resolver request for candidate success: %s", v40, 0xCu);
    sub_22BB32FA4(v112);
    sub_22BB2F368();
    MEMORY[0x2318A6080]();
    sub_22BB2F368();
    MEMORY[0x2318A6080]();
  }

  else
  {

    v41 = sub_22BB35470();
    v42(v41);
  }

  (*(v113 + 8))(v28, v114);
  v43 = v97;
  v44 = sub_22BDB8ED4();
  v45 = *(v44 + 16);
  v46 = v107;
  if (v45)
  {
    v115 = MEMORY[0x277D84F90];
    sub_22BD28158(0, v45, 0);
    v47 = v115;
    v50 = sub_22BDB1D48();
    v51 = 0;
    v52 = v44 + 64;
    v99 = v48;
    v100 = v45;
    v98 = v44 + 72;
    v101 = v44;
    v102 = v44 + 64;
    while ((v50 & 0x8000000000000000) == 0 && v50 < 1 << *(v44 + 32))
    {
      if ((*(v52 + 8 * (v50 >> 6)) & (1 << v50)) == 0)
      {
        goto LABEL_30;
      }

      if (*(v44 + 36) != v48)
      {
        goto LABEL_31;
      }

      v111 = 1 << v50;
      v112 = v50 >> 6;
      v109 = v51;
      v110 = v48;
      v108 = v49;
      v113 = *(v106 + 48);
      v53 = *(v44 + 48);
      v54 = sub_22BDB8384();
      sub_22BB30444();
      v114 = v47;
      v56 = v55;
      (*(v57 + 16))(v103, v53 + *(v57 + 72) * v50, v54);
      v58 = *(v44 + 56);
      v59 = sub_22BDB9CB4();
      sub_22BB30444();
      v61 = v60;
      (*(v60 + 16))(v103 + v113, v58 + *(v62 + 72) * v50, v59);
      (*(v56 + 32))(v104, v103, v54);
      (*(v61 + 32))(v104 + *(v106 + 48), v103 + v113, v59);
      sub_22BCD3E8C(v104, v105);
      v63 = *(v106 + 48);
      v64 = sub_22BDB8374();
      v113 = v65;
      sub_22BB58728(v104, &qword_27D8E4010, &unk_22BDC2CD0);
      (*(v56 + 8))(v105, v54);
      v47 = v114;
      (*(v61 + 8))(v105 + v63, v59);
      v115 = v114;
      v67 = v114[2];
      v66 = v114[3];
      if (v67 >= v66 >> 1)
      {
        v80 = sub_22BB2F158(v66);
        sub_22BD28158(v80, v67 + 1, 1);
        v47 = v115;
      }

      v47[2] = v67 + 1;
      v68 = &v47[2 * v67];
      v69 = v113;
      v68[4] = v64;
      v68[5] = v69;
      v44 = v101;
      v52 = v102;
      v70 = 1 << *(v101 + 32);
      if (v50 >= v70)
      {
        goto LABEL_32;
      }

      if ((*(v102 + 8 * v112) & v111) == 0)
      {
        goto LABEL_33;
      }

      if (*(v101 + 36) != v110)
      {
        goto LABEL_34;
      }

      sub_22BB5424C();
      if (v74)
      {
        v75 = v73 << 6;
        v76 = v73 + 1;
        v77 = (v98 + 8 * v73);
        v46 = v107;
        while (v76 < (v70 + 63) >> 6)
        {
          v79 = *v77++;
          v78 = v79;
          v75 += 64;
          ++v76;
          if (v79)
          {
            sub_22BBBFEB0(v50, v71, v108 & 1);
            v70 = __clz(__rbit64(v78)) + v75;
            goto LABEL_22;
          }
        }

        sub_22BBBFEB0(v50, v71, v108 & 1);
      }

      else
      {
        v70 = __clz(__rbit64(v72)) | v50 & 0x7FFFFFFFFFFFFFC0;
        v46 = v107;
      }

LABEL_22:
      v49 = 0;
      v51 = v109 + 1;
      v50 = v70;
      v48 = v99;
      if (v109 + 1 == v100)
      {

        v43 = v97;
        goto LABEL_25;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
  }

  else
  {

    v47 = MEMORY[0x277D84F90];
LABEL_25:
    v81 = sub_22BDB8EE4();
    v82 = sub_22BC741B4(v81);

    v83 = v92;
    v84 = v96;
    v114 = v47;
    if (v82)
    {
      v85 = sub_22BCD110C(v82);
    }

    else
    {
      v85 = MEMORY[0x277D84F90];
    }

    sub_22BDB8174();
    sub_22BCBAE60(v46, v93);
    MEMORY[0x28223BE20](v86);
    *(&v91 - 2) = v46;
    sub_22BCA83A8();
    v88 = v87;

    (*(v84 + 8))(v46, v83);
    v115 = v114;
    sub_22BD66B50(v85);
    v89 = sub_22BD1D0F4(v115);
    MEMORY[0x28223BE20](v89);
    *(&v91 - 2) = v94;
    *(&v91 - 1) = v43;
    v90 = sub_22BCD1434(sub_22BCD3F18, (&v91 - 4), v89);

    v115 = v88;
    sub_22BBD5D38(v90);
    *v95 = v115;
  }
}

uint64_t sub_22BCD2044@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = sub_22BDB4C34();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = *a1;
  v8 = a1[1];
  sub_22BDB8174();
  sub_22BCAE988();
  v14 = v7;
  v15 = v9;
  v16 = v8;
  sub_22BCA83A8();
  v11 = v10;

  result = (*(v5 + 8))(v7, v4);
  *a2 = v11;
  return result;
}

uint64_t sub_22BCD2194@<X0>(uint64_t *a1@<X8>)
{
  sub_22BDB4C34();
  sub_22BB30444();
  MEMORY[0x28223BE20](v2);
  sub_22BB30574();
  v5 = v4 - v3;
  _s20StatementResultEventVMa(0);
  sub_22BDB8794();
  sub_22BCD4170(v5);
  v12 = v5;
  v7 = sub_22BD656F0(sub_22BCD3E2C, v11, v6);

  v8 = sub_22BB362AC();
  result = v9(v8);
  *a1 = v7;
  return result;
}

uint64_t sub_22BCD22C0()
{
  sub_22BB69284();
  sub_22BB2F330();
  MEMORY[0x28223BE20](v1);
  sub_22BB30574();
  sub_22BB377AC(v2);
  sub_22BB53C48();
  if (swift_getEnumCaseMultiPayload())
  {
    sub_22BCD3FF4(v0, _s23StatementStepEvaluationOMa);
  }

  else
  {
    v3 = sub_22BB2F324();
    sub_22BCD404C(v3, v4);
  }

  _s18ToolStepEvaluationVMa(0);
  v5 = sub_22BB31F54();
  return sub_22BB336D0(v5, v6, 1, v7);
}

uint64_t sub_22BCD2384()
{
  sub_22BB69284();
  sub_22BB2F330();
  MEMORY[0x28223BE20](v1);
  sub_22BB30574();
  sub_22BB377AC(v2);
  sub_22BB53C48();
  if (swift_getEnumCaseMultiPayload() == 3)
  {
    v3 = sub_22BB2F324();
    sub_22BCD404C(v3, v4);
  }

  else
  {
    sub_22BCD3FF4(v0, _s23StatementStepEvaluationOMa);
  }

  _s19ValueStepEvaluationVMa(0);
  v5 = sub_22BB31F54();
  return sub_22BB336D0(v5, v6, 1, v7);
}

uint64_t sub_22BCD244C()
{
  sub_22BB69284();
  sub_22BB2F330();
  MEMORY[0x28223BE20](v1);
  sub_22BB30574();
  sub_22BB377AC(v2);
  sub_22BB53C48();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v3 = sub_22BB2F324();
    sub_22BCD404C(v3, v4);
  }

  else
  {
    sub_22BCD3FF4(v0, _s23StatementStepEvaluationOMa);
  }

  _s23ParameterStepEvaluationVMa(0);
  v5 = sub_22BB31F54();
  return sub_22BB336D0(v5, v6, 1, v7);
}

uint64_t sub_22BCD251C(uint64_t a1)
{
  result = sub_22BDB9C14();
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

uint64_t sub_22BCD25B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v60 = sub_22BDB4C34();
  v8 = *(v60 - 8);
  v9 = MEMORY[0x28223BE20](v60);
  v59 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v58 = &v41 - v11;
  v12 = sub_22BDB8F04();
  v13 = MEMORY[0x28223BE20](v12);
  v51 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v57 = &v41 - v16;
  result = MEMORY[0x28223BE20](v15);
  v56 = &v41 - v19;
  v43 = a2;
  if (a3 != a2)
  {
    v20 = *a4;
    v22 = *(v18 + 16);
    v21 = v18 + 16;
    v23 = *(v21 + 56);
    v53 = (v8 + 8);
    v54 = v22;
    v52 = (v21 - 8);
    v55 = v21;
    v24 = (v20 + v23 * (a3 - 1));
    v48 = -v23;
    v49 = (v21 + 16);
    v25 = a1 - a3;
    v50 = v20;
    v42 = v23;
    v26 = v20 + v23 * a3;
    v27 = v58;
    while (2)
    {
      v46 = v24;
      v47 = a3;
      v44 = v26;
      v45 = v25;
      v61 = v25;
      do
      {
        v28 = v56;
        v29 = v54;
        v54(v56, v26, v12);
        v30 = v12;
        v31 = v57;
        v29(v57, v24, v30);
        sub_22BDB8174();
        v32 = v59;
        sub_22BDB8174();
        v62 = sub_22BDB4BF4();
        v33 = *v53;
        v34 = v32;
        v35 = v60;
        (*v53)(v34, v60);
        v33(v27, v35);
        v36 = *v52;
        v37 = v31;
        v12 = v30;
        (*v52)(v37, v30);
        result = v36(v28, v30);
        if ((v62 & 1) == 0)
        {
          break;
        }

        if (!v50)
        {
          __break(1u);
          return result;
        }

        v38 = *v49;
        v39 = v51;
        (*v49)(v51, v26, v30);
        swift_arrayInitWithTakeFrontToBack();
        result = v38(v24, v39, v30);
        v24 += v48;
        v26 += v48;
      }

      while (!__CFADD__(v61++, 1));
      a3 = v47 + 1;
      v24 = &v46[v42];
      v25 = v45 - 1;
      v26 = v44 + v42;
      if (v47 + 1 != v43)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_22BCD294C(char **a1, uint64_t a2, char **a3, uint64_t a4)
{
  v5 = v4;
  v135 = a1;
  v159 = sub_22BDB4C34();
  v8 = *(v159 - 8);
  v9 = MEMORY[0x28223BE20](v159);
  v158 = &v132 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v157 = &v132 - v11;
  v12 = sub_22BDB8F04();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v138 = &v132 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v149 = &v132 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v156 = &v132 - v19;
  MEMORY[0x28223BE20](v18);
  v160 = &v132 - v23;
  v144 = a3;
  v24 = a3[1];
  v139 = v13;
  if (v24 < 1)
  {
    v26 = MEMORY[0x277D84F90];
LABEL_101:
    v161 = *v135;
    if (!v161)
    {
      goto LABEL_142;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_103:
      v126 = (v26 + 16);
      v127 = *(v26 + 16);
      while (v127 >= 2)
      {
        if (!*v144)
        {
          goto LABEL_139;
        }

        v128 = v26;
        v129 = (v26 + 16 * v127);
        v130 = *v129;
        v131 = &v126[2 * v127];
        v26 = *(v131 + 1);
        sub_22BCD3538(&(*v144)[*(v139 + 9) * *v129], &(*v144)[*(v139 + 9) * *v131], &(*v144)[*(v139 + 9) * v26], v161);
        if (v5)
        {
          break;
        }

        if (v26 < v130)
        {
          goto LABEL_127;
        }

        if (v127 - 2 >= *v126)
        {
          goto LABEL_128;
        }

        *v129 = v130;
        v129[1] = v26;
        v20 = *v126 - v127;
        if (*v126 < v127)
        {
          goto LABEL_129;
        }

        v127 = *v126 - 1;
        sub_22BDB12C0(v131 + 16, v20, v131);
        *v126 = v127;
        v26 = v128;
      }

LABEL_111:

      return;
    }

LABEL_136:
    v26 = sub_22BDB12A8(v26, v20, v21, v22);
    goto LABEL_103;
  }

  v133 = a4;
  v25 = 0;
  v153 = (v8 + 8);
  v154 = v13 + 16;
  v151 = (v13 + 32);
  v152 = (v13 + 8);
  v26 = MEMORY[0x277D84F90];
  v155 = v12;
  while (1)
  {
    v27 = v25;
    v28 = v25 + 1;
    if (v25 + 1 < v24)
    {
      v134 = v26;
      v29 = v25;
      v136 = v25;
      v145 = v5;
      v146 = v25 + 1;
      v30 = *v144;
      v161 = v30;
      v31 = v13;
      v32 = *(v13 + 9);
      v147 = v24;
      v148 = v32;
      v33 = v30 + v32 * v28;
      v34 = v12;
      v35 = *(v31 + 2);
      v35(v160, v33, v12);
      v36 = v156;
      v142 = v35;
      v35(v156, v30 + v32 * v29, v34);
      v5 = v157;
      v26 = v160;
      sub_22BDB8174();
      v37 = v158;
      sub_22BDB8174();
      LODWORD(v143) = sub_22BDB4BF4();
      v38 = *v153;
      v39 = v159;
      (*v153)(v37, v159);
      v141 = v38;
      (v38)(v5, v39);
      v40 = *(v139 + 1);
      (v40)(v36, v34);
      v140 = v40;
      (v40)(v26, v34);
      v41 = v147;
      v42 = v136 + 2;
      v43 = v161 + v148 * (v136 + 2);
      while (1)
      {
        v44 = v42;
        if (++v146 >= v41)
        {
          break;
        }

        v5 = v160;
        v45 = v155;
        v46 = v142;
        v161 = v42;
        (v142)(v160, v43, v155);
        v26 = v156;
        v46(v156, v33, v45);
        v47 = v157;
        sub_22BDB8174();
        v48 = v158;
        sub_22BDB8174();
        LOBYTE(v150) = sub_22BDB4BF4() & 1;
        LODWORD(v150) = v150;
        v49 = v48;
        v50 = v159;
        v51 = v141;
        (v141)(v49, v159);
        v51(v47, v50);
        v52 = v140;
        (v140)(v26, v45);
        (v52)(v5, v45);
        v44 = v161;
        v41 = v147;
        v43 += v148;
        v33 += v148;
        v42 = v161 + 1;
        if ((v143 & 1) != v150)
        {
          goto LABEL_9;
        }
      }

      v146 = v41;
LABEL_9:
      if (v143)
      {
        v28 = v146;
        v27 = v136;
        v12 = v155;
        if (v146 < v136)
        {
          goto LABEL_133;
        }

        if (v136 >= v146)
        {
          v5 = v145;
          v13 = v139;
          v26 = v134;
          goto LABEL_32;
        }

        if (v41 >= v44)
        {
          v53 = v44;
        }

        else
        {
          v53 = v41;
        }

        v54 = v148 * (v53 - 1);
        v55 = v148 * v53;
        v56 = v136;
        v57 = v136 * v148;
        v5 = v145;
        v13 = v139;
        do
        {
          if (v56 != --v28)
          {
            v58 = v5;
            v59 = *v144;
            if (!*v144)
            {
              goto LABEL_140;
            }

            v161 = *v151;
            (v161)(v138, &v59[v57], v12);
            v60 = v57 < v54 || &v59[v57] >= &v59[v55];
            if (v60)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v57 != v54)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            (v161)(&v59[v54], v138, v12);
            v5 = v58;
            v13 = v139;
          }

          ++v56;
          v54 -= v148;
          v55 -= v148;
          v57 += v148;
        }

        while (v56 < v28);
        v26 = v134;
      }

      else
      {
        v5 = v145;
        v13 = v139;
        v26 = v134;
        v12 = v155;
      }

      v28 = v146;
      v27 = v136;
    }

LABEL_32:
    v61 = v144[1];
    if (v28 < v61)
    {
      if (__OFSUB__(v28, v27))
      {
        goto LABEL_132;
      }

      if (v28 - v27 < v133)
      {
        break;
      }
    }

LABEL_48:
    if (v28 < v27)
    {
      goto LABEL_131;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_22BD8F3C8();
      v26 = v124;
    }

    v81 = *(v26 + 16);
    v82 = v81 + 1;
    if (v81 >= *(v26 + 24) >> 1)
    {
      sub_22BD8F3C8();
      v26 = v125;
    }

    *(v26 + 16) = v82;
    v83 = (v26 + 32);
    v84 = (v26 + 32 + 16 * v81);
    *v84 = v27;
    v84[1] = v28;
    v161 = *v135;
    if (!v161)
    {
      goto LABEL_141;
    }

    v146 = v28;
    if (v81)
    {
      v150 = (v26 + 32);
      while (1)
      {
        v85 = v82 - 1;
        v86 = &v83[16 * v82 - 16];
        v87 = (v26 + 16 * v82);
        if (v82 >= 4)
        {
          break;
        }

        if (v82 == 3)
        {
          v88 = *(v26 + 32);
          v89 = *(v26 + 40);
          v98 = __OFSUB__(v89, v88);
          v90 = v89 - v88;
          v91 = v98;
LABEL_69:
          if (v91)
          {
            goto LABEL_118;
          }

          v103 = *v87;
          v102 = v87[1];
          v104 = __OFSUB__(v102, v103);
          v105 = v102 - v103;
          v106 = v104;
          if (v104)
          {
            goto LABEL_121;
          }

          v107 = *(v86 + 1);
          v108 = v107 - *v86;
          if (__OFSUB__(v107, *v86))
          {
            goto LABEL_124;
          }

          if (__OFADD__(v105, v108))
          {
            goto LABEL_126;
          }

          if (v105 + v108 >= v90)
          {
            if (v90 < v108)
            {
              v85 = v82 - 2;
            }

            goto LABEL_91;
          }

          goto LABEL_84;
        }

        if (v82 < 2)
        {
          goto LABEL_120;
        }

        v110 = *v87;
        v109 = v87[1];
        v98 = __OFSUB__(v109, v110);
        v105 = v109 - v110;
        v106 = v98;
LABEL_84:
        if (v106)
        {
          goto LABEL_123;
        }

        v112 = *v86;
        v111 = *(v86 + 1);
        v98 = __OFSUB__(v111, v112);
        v113 = v111 - v112;
        if (v98)
        {
          goto LABEL_125;
        }

        if (v113 < v105)
        {
          goto LABEL_98;
        }

LABEL_91:
        if (v85 - 1 >= v82)
        {
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
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
          goto LABEL_135;
        }

        if (!*v144)
        {
          goto LABEL_138;
        }

        v117 = &v83[16 * v85 - 16];
        v118 = *v117;
        v119 = v85;
        v120 = &v83[16 * v85];
        v121 = *(v120 + 1);
        sub_22BCD3538(&(*v144)[*(v13 + 9) * *v117], &(*v144)[*(v13 + 9) * *v120], &(*v144)[*(v13 + 9) * v121], v161);
        if (v5)
        {
          goto LABEL_111;
        }

        if (v121 < v118)
        {
          goto LABEL_113;
        }

        v145 = 0;
        v5 = v13;
        v122 = v26;
        v26 = *(v26 + 16);
        if (v119 > v26)
        {
          goto LABEL_114;
        }

        *v117 = v118;
        *(v117 + 1) = v121;
        if (v119 >= v26)
        {
          goto LABEL_115;
        }

        v82 = v26 - 1;
        sub_22BDB12C0(v120 + 16, v26 - 1 - v119, v120);
        *(v122 + 16) = v26 - 1;
        v123 = v26 > 2;
        v26 = v122;
        v13 = v5;
        v5 = v145;
        v83 = v150;
        if (!v123)
        {
          goto LABEL_98;
        }
      }

      v92 = &v83[16 * v82];
      v93 = *(v92 - 8);
      v94 = *(v92 - 7);
      v98 = __OFSUB__(v94, v93);
      v95 = v94 - v93;
      if (v98)
      {
        goto LABEL_116;
      }

      v97 = *(v92 - 6);
      v96 = *(v92 - 5);
      v98 = __OFSUB__(v96, v97);
      v90 = v96 - v97;
      v91 = v98;
      if (v98)
      {
        goto LABEL_117;
      }

      v99 = v87[1];
      v100 = v99 - *v87;
      if (__OFSUB__(v99, *v87))
      {
        goto LABEL_119;
      }

      v98 = __OFADD__(v90, v100);
      v101 = v90 + v100;
      if (v98)
      {
        goto LABEL_122;
      }

      if (v101 >= v95)
      {
        v115 = *v86;
        v114 = *(v86 + 1);
        v98 = __OFSUB__(v114, v115);
        v116 = v114 - v115;
        if (v98)
        {
          goto LABEL_130;
        }

        if (v90 < v116)
        {
          v85 = v82 - 2;
        }

        goto LABEL_91;
      }

      goto LABEL_69;
    }

LABEL_98:
    v24 = v144[1];
    v25 = v146;
    if (v146 >= v24)
    {
      goto LABEL_101;
    }
  }

  v62 = (v27 + v133);
  if (__OFADD__(v27, v133))
  {
    goto LABEL_134;
  }

  if (v62 >= v61)
  {
    v62 = v144[1];
  }

  if (v62 < v27)
  {
LABEL_135:
    __break(1u);
    goto LABEL_136;
  }

  if (v28 == v62)
  {
    goto LABEL_48;
  }

  v134 = v26;
  v145 = v5;
  v63 = *v144;
  v64 = *(v13 + 9);
  v150 = *(v13 + 2);
  v65 = &v63[v64 * (v28 - 1)];
  v147 = -v64;
  v136 = v27;
  v66 = (v27 - v28);
  v148 = v63;
  v137 = v64;
  v67 = &v63[v28 * v64];
  v140 = v62;
LABEL_41:
  v146 = v28;
  v141 = v67;
  v142 = v66;
  v143 = v65;
  v68 = v65;
  while (1)
  {
    v69 = v160;
    v70 = v150;
    (v150)(v160, v67, v12);
    v71 = v156;
    (v70)(v156, v68, v12);
    v72 = v157;
    sub_22BDB8174();
    v73 = v158;
    sub_22BDB8174();
    LODWORD(v161) = sub_22BDB4BF4();
    v74 = *v153;
    v75 = v73;
    v76 = v159;
    (*v153)(v75, v159);
    v77 = v72;
    v12 = v155;
    v74(v77, v76);
    v78 = *v152;
    (*v152)(v71, v12);
    v78(v69, v12);
    if ((v161 & 1) == 0)
    {
LABEL_46:
      v28 = v146 + 1;
      v65 = &v143[v137];
      v66 = v142 - 1;
      v67 = &v141[v137];
      if ((v146 + 1) == v140)
      {
        v28 = v140;
        v5 = v145;
        v13 = v139;
        v26 = v134;
        v27 = v136;
        goto LABEL_48;
      }

      goto LABEL_41;
    }

    if (!v148)
    {
      break;
    }

    v79 = *v151;
    v80 = v149;
    (*v151)(v149, v67, v12);
    swift_arrayInitWithTakeFrontToBack();
    v79(v68, v80, v12);
    v68 += v147;
    v67 += v147;
    v60 = __CFADD__(v66++, 1);
    if (v60)
    {
      goto LABEL_46;
    }
  }

  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
}

uint64_t sub_22BCD3538(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v84 = a4;
  v79 = sub_22BDB4C34();
  v7 = *(v79 - 8);
  v8 = MEMORY[0x28223BE20](v79);
  v78 = &v67 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v77 = &v67 - v10;
  v83 = sub_22BDB8F04();
  v11 = MEMORY[0x28223BE20](v83);
  v76 = &v67 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v11);
  v81 = &v67 - v15;
  v17 = *(v16 + 72);
  if (!v17)
  {
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    return result;
  }

  v18 = a2 - a1 == 0x8000000000000000 && v17 == -1;
  if (v18)
  {
    goto LABEL_60;
  }

  v19 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_61;
  }

  v21 = (a2 - a1) / v17;
  v87 = a1;
  v86 = v84;
  v74 = (v7 + 8);
  v75 = (v14 + 16);
  v73 = (v14 + 8);
  v22 = v19 / v17;
  if (v21 >= v19 / v17)
  {
    v42 = v84;
    sub_22BD27708(a2, v19 / v17, v84);
    v43 = v42 + v22 * v17;
    v44 = -v17;
    v45 = v43;
    v82 = a1;
    v69 = v44;
LABEL_36:
    v46 = a2 + v44;
    v47 = a3;
    v67 = v45;
    v48 = v45;
    v70 = a2 + v44;
    v71 = a2;
    while (1)
    {
      if (v43 <= v84)
      {
        v87 = a2;
        v85 = v48;
        goto LABEL_58;
      }

      if (a2 <= a1)
      {
        break;
      }

      v68 = v48;
      v80 = v47 + v44;
      v49 = v43 + v44;
      v50 = v43;
      v51 = *v75;
      v52 = v46;
      v53 = v83;
      v54 = v47;
      (*v75)(v81, v43 + v44, v83);
      v55 = v76;
      v51(v76, v52, v53);
      v56 = v77;
      sub_22BDB8174();
      v57 = v78;
      sub_22BDB8174();
      LODWORD(v72) = sub_22BDB4BF4();
      v58 = *v74;
      v59 = v57;
      v60 = v79;
      (*v74)(v59, v79);
      v58(v56, v60);
      v61 = *v73;
      (*v73)(v55, v53);
      v61(v81, v53);
      if (v72)
      {
        v43 = v50;
        a3 = v80;
        if (v54 < v71 || v80 >= v71)
        {
          a2 = v70;
          swift_arrayInitWithTakeFrontToBack();
          v45 = v68;
          v44 = v69;
          a1 = v82;
        }

        else
        {
          v65 = v68;
          v44 = v69;
          v45 = v68;
          v18 = v54 == v71;
          v66 = v70;
          a2 = v70;
          a1 = v82;
          if (!v18)
          {
            swift_arrayInitWithTakeBackToFront();
            a2 = v66;
            v45 = v65;
          }
        }

        goto LABEL_36;
      }

      v62 = v80;
      if (v54 < v50 || v80 >= v50)
      {
        swift_arrayInitWithTakeFrontToBack();
        v47 = v62;
        v43 = v49;
        v48 = v49;
        v46 = v70;
        a2 = v71;
        a1 = v82;
        v44 = v69;
      }

      else
      {
        v48 = v49;
        v18 = v50 == v54;
        v47 = v80;
        v43 = v49;
        v46 = v70;
        a2 = v71;
        a1 = v82;
        v44 = v69;
        if (!v18)
        {
          swift_arrayInitWithTakeBackToFront();
          v47 = v62;
          v43 = v49;
          v48 = v49;
        }
      }
    }

    v87 = a2;
    v85 = v67;
  }

  else
  {
    v23 = v84;
    sub_22BD27708(a1, (a2 - a1) / v17, v84);
    v71 = v17;
    v72 = v23 + v21 * v17;
    v85 = v72;
    v80 = a3;
    while (v84 < v72 && a2 < a3)
    {
      v82 = a1;
      v25 = *v75;
      v26 = v81;
      v27 = v83;
      (*v75)(v81, a2, v83);
      v28 = v76;
      v25(v76, v84, v27);
      v29 = v77;
      sub_22BDB8174();
      v30 = v78;
      sub_22BDB8174();
      v31 = sub_22BDB4BF4();
      v32 = a2;
      v33 = *v74;
      v34 = v30;
      v35 = v79;
      (*v74)(v34, v79);
      v33(v29, v35);
      v36 = *v73;
      (*v73)(v28, v27);
      v36(v26, v27);
      if (v31)
      {
        v37 = v71;
        a2 = v32 + v71;
        v38 = v82;
        if (v82 < v32 || v82 >= a2)
        {
          swift_arrayInitWithTakeFrontToBack();
          a3 = v80;
        }

        else
        {
          a3 = v80;
          if (v82 != v32)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      else
      {
        v37 = v71;
        v40 = v84 + v71;
        v38 = v82;
        if (v82 < v84 || v82 >= v40)
        {
          swift_arrayInitWithTakeFrontToBack();
          a3 = v80;
          a2 = v32;
        }

        else
        {
          a3 = v80;
          a2 = v32;
          if (v82 != v84)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v86 = v40;
        v84 = v40;
      }

      a1 = v38 + v37;
      v87 = a1;
    }
  }

LABEL_58:
  sub_22BCD3CD4(&v87, &v86, &v85, MEMORY[0x277D1E158]);
  return 1;
}

void sub_22BCD3BF4(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a3;
  sub_22BBE6DE0(a4, a5);
  sub_22BB2F330();
  v9 = *(v8 + 72);
  if (!v9)
  {
    __break(1u);
LABEL_20:
    __break(1u);
    return;
  }

  if (v7 - v6 == 0x8000000000000000 && v9 == -1)
  {
    goto LABEL_20;
  }

  sub_22BB6BD18();
  v12 = !v12 || v5 >= v11;
  if (v12)
  {
    sub_22BB2F324();

    swift_arrayInitWithTakeFrontToBack();
  }

  else if (v5 != v6)
  {
    sub_22BB2F324();

    swift_arrayInitWithTakeBackToFront();
  }
}

void sub_22BCD3CD4(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  v4 = *a1;
  v5 = *a2;
  v6 = *a3;
  a4(0);
  sub_22BB2F330();
  v8 = *(v7 + 72);
  if (!v8)
  {
    __break(1u);
LABEL_20:
    __break(1u);
    return;
  }

  if (v6 - v5 == 0x8000000000000000 && v8 == -1)
  {
    goto LABEL_20;
  }

  sub_22BB6BD18();
  v11 = !v11 || v4 >= v10;
  if (v11)
  {
    sub_22BB2F324();

    swift_arrayInitWithTakeFrontToBack();
  }

  else if (v4 != v5)
  {
    sub_22BB2F324();

    swift_arrayInitWithTakeBackToFront();
  }
}

void *sub_22BCD3D9C(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void *, uint64_t, uint64_t, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v9 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v10 = a5(v9, a2, a3, a4);

    return v10;
  }

  return result;
}

uint64_t sub_22BCD3E8C(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BBE6DE0(&qword_27D8E4010, &unk_22BDC2CD0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22BCD3F54(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_22BCD3F9C(uint64_t a1, uint64_t a2)
{
  v3 = sub_22BB30F68();
  v4(v3);
  sub_22BB2F330();
  v5 = sub_22BB31F54();
  v6(v5);
  return a2;
}

uint64_t sub_22BCD3FF4(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_22BB2F330();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_22BCD404C(uint64_t a1, uint64_t a2)
{
  v3 = sub_22BB30F68();
  v4(v3);
  sub_22BB2F330();
  v5 = sub_22BB31F54();
  v6(v5);
  return a2;
}

uint64_t sub_22BCD40A4(uint64_t a1)
{
  result = sub_22BDB4C34();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for FeedbackLearning.CandidateParameter(319);
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for FeedbackLearning.CandidateDefinition(319);
      if (v4 <= 0x3F)
      {
        result = sub_22BDB7B44();
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

void sub_22BCD4170(uint64_t a1)
{
  type metadata accessor for FeedbackLearning.CandidateDefinition(0);
  sub_22BB30444();
  v122 = v3;
  v123 = v2;
  MEMORY[0x28223BE20](v2);
  sub_22BB30574();
  v6 = v5 - v4;
  v113 = _s24ToolDisambiguationResultVMa(0);
  sub_22BB2F330();
  MEMORY[0x28223BE20](v7);
  sub_22BB30574();
  v120 = v9 - v8;
  v10 = _s14ToolStepResultOMa(0);
  MEMORY[0x28223BE20](v10 - 8);
  sub_22BB30574();
  v112 = v12 - v11;
  v121 = _s18ToolStepEvaluationVMa(0);
  sub_22BB30444();
  v116 = v13;
  MEMORY[0x28223BE20](v14);
  sub_22BB30574();
  v119 = v16 - v15;
  v108 = sub_22BDB4C34();
  sub_22BB30444();
  v104 = v17;
  v19 = MEMORY[0x28223BE20](v18);
  v21 = &v98 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = &v98 - v22;
  v24 = sub_22BDB77D4();
  sub_22BB30444();
  v26 = v25;
  v28 = MEMORY[0x28223BE20](v27);
  v30 = &v98 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v32 = &v98 - v31;
  _s22ToolCandidateEvaluatorVMa(0);
  v124 = a1;

  sub_22BDA2A88();
  v34 = v33;
  sub_22BDB6404();
  v35 = v104;
  v36 = *(v104 + 16);
  v117 = v23;
  v37 = v23;
  v101 = a1;
  v38 = v34;
  v100 = v104 + 16;
  v99 = v36;
  v36(v37, a1, v108);

  v118 = v32;
  v39 = sub_22BDB77C4();
  LODWORD(v34) = sub_22BDBB0F4();

  LODWORD(v111) = v34;
  v40 = os_log_type_enabled(v39, v34);
  v114 = v38;
  v115 = v21;
  if (v40)
  {
    v41 = swift_slowAlloc();
    v42 = v35;
    v109 = v39;
    v43 = v41;
    v110 = swift_slowAlloc();
    v125[0] = v110;
    *v43 = 136315394;
    sub_22BCBBA38();
    v44 = v117;
    v45 = v108;
    v46 = sub_22BDBB684();
    v48 = v47;
    v49 = v42;
    v38 = v114;
    v102 = *(v49 + 8);
    v102(v44, v45);
    v50 = sub_22BB32EE0(v46, v48, v125);
    v21 = v115;

    *(v43 + 4) = v50;
    *(v43 + 12) = 2080;
    v51 = MEMORY[0x2318A4D50](v38, v121);
    v53 = sub_22BB32EE0(v51, v52, v125);

    *(v43 + 14) = v53;
    v54 = v109;
    _os_log_impl(&dword_22BB2C000, v109, v111, "Matching tool step evaluations for statementId=%s: %s", v43, 0x16u);
    swift_arrayDestroy();
    sub_22BB30AF0();
    sub_22BB30AF0();

    v55 = sub_22BB32C28();
    v56(v55);
    v57 = v45;
  }

  else
  {

    v57 = v108;
    v102 = *(v35 + 8);
    v102(v117, v108);
    v58 = sub_22BB32C28();
    v59(v58);
  }

  v111 = *(v38 + 16);
  if (v111)
  {
    v60 = 0;
    v61 = *(v121 + 20);
    v109 = (v38 + ((*(v116 + 80) + 32) & ~*(v116 + 80)));
    v110 = v61;
    v62 = MEMORY[0x277D84F90];
    v107 = v24;
    v106 = v26;
    v105 = v30;
    while (v60 < *(v38 + 16))
    {
      v121 = v62;
      v63 = *(v116 + 72);
      v118 = v60;
      v64 = v119;
      sub_22BCD4CF8(v109 + v63 * v60, v119, _s18ToolStepEvaluationVMa);
      v65 = v64 + v110;
      v66 = v112;
      sub_22BCD4CF8(v65, v112, _s14ToolStepResultOMa);
      v67 = v66;
      v68 = v120;
      sub_22BCD4D58(v67, v120, _s24ToolDisambiguationResultVMa);
      v69 = *v68;
      v70 = *(*v68 + 16);
      if (v70)
      {
        v117 = *(v113 + 20);
        v125[0] = MEMORY[0x277D84F90];
        sub_22BD27DB8(0, v70, 0);
        v71 = v125[0];
        v72 = sub_22BDBA014();
        v73 = *(v72 - 8);
        v74 = *(v73 + 16);
        v75 = v69 + ((*(v73 + 80) + 32) & ~*(v73 + 80));
        v76 = *(v73 + 72);
        do
        {
          v74(v6, v75, v72);
          swift_storeEnumTagMultiPayload();
          v125[0] = v71;
          v78 = *(v71 + 16);
          v77 = *(v71 + 24);
          if (v78 >= v77 >> 1)
          {
            sub_22BD27DB8(v77 > 1, v78 + 1, 1);
            v71 = v125[0];
          }

          *(v71 + 16) = v78 + 1;
          sub_22BCD4D58(v6, v71 + ((*(v122 + 80) + 32) & ~*(v122 + 80)) + *(v122 + 72) * v78, type metadata accessor for FeedbackLearning.CandidateDefinition);
          v75 += v76;
          --v70;
        }

        while (v70);
        v24 = v107;
        v30 = v105;
        v57 = v108;
      }

      v79 = v120;
      sub_22BCB7C08();
      v81 = v80;

      sub_22BCD4DB8(v119, _s18ToolStepEvaluationVMa);
      sub_22BCD4DB8(v79, _s24ToolDisambiguationResultVMa);
      v21 = v115;
      v62 = v121;
      if (v81)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_22BD8FD18();
          v62 = v83;
        }

        v82 = *(v62 + 16);
        if (v82 >= *(v62 + 24) >> 1)
        {
          sub_22BD8FD18();
          v62 = v84;
        }

        *(v62 + 16) = v82 + 1;
        *(v62 + 8 * v82 + 32) = v81;
      }

      v38 = v114;
      v60 = v118 + 1;
      if (v118 + 1 == v111)
      {

        goto LABEL_22;
      }
    }

    __break(1u);
  }

  else
  {

    v62 = MEMORY[0x277D84F90];
LABEL_22:
    sub_22BDB6404();
    v99(v21, v101, v57);

    v85 = sub_22BDB77C4();
    v86 = sub_22BDBB0F4();

    if (os_log_type_enabled(v85, v86))
    {
      v87 = swift_slowAlloc();
      v88 = swift_slowAlloc();
      v121 = v62;
      v125[0] = v88;
      *v87 = 136315394;
      sub_22BCBBA38();
      v89 = sub_22BDBB684();
      v90 = v21;
      v92 = v91;
      v102(v90, v57);
      v93 = sub_22BB32EE0(v89, v92, v125);

      *(v87 + 4) = v93;
      *(v87 + 12) = 2080;
      v94 = sub_22BBE6DE0(&qword_27D8E3EB0, &qword_22BDC1380);
      v95 = MEMORY[0x2318A4D50](v121, v94);
      v97 = sub_22BB32EE0(v95, v96, v125);

      *(v87 + 14) = v97;
      _os_log_impl(&dword_22BB2C000, v85, v86, "Generated tool candidate results for statementId=%s: %s", v87, 0x16u);
      swift_arrayDestroy();
      v62 = v121;
      sub_22BB30AF0();
      sub_22BB30AF0();
    }

    else
    {

      v102(v21, v57);
    }

    v103(v30, v24);
    sub_22BCDFC54(v62);
  }
}

uint64_t sub_22BCD4BA4@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_22BDB4C34();
  sub_22BB2F330();
  (*(v6 + 16))(a3, a2);
  v7 = _s16CandidateSummaryVMa(0);
  type metadata accessor for FeedbackLearning.CandidateParameter(0);
  swift_storeEnumTagMultiPayload();
  v8 = _s15CandidateResultVMa(0);
  sub_22BCD4CF8(&a1[*(v8 + 20)], a3 + v7[6], type metadata accessor for FeedbackLearning.CandidateDefinition);
  v9 = *(v8 + 24);
  v10 = v7[7];
  sub_22BDB7B44();
  sub_22BB2F330();
  result = (*(v11 + 16))(a3 + v10, &a1[v9]);
  *(a3 + v7[8]) = *a1;
  *(a3 + v7[9]) = 1;
  return result;
}

uint64_t sub_22BCD4CF8(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_22BB2F330();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_22BCD4D58(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_22BB2F330();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_22BCD4DB8(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_22BB2F330();
  (*(v3 + 8))(a1);
  return a1;
}

void sub_22BCD4E38(uint64_t a1)
{
  sub_22BDB9C14();
  if (v1 <= 0x3F)
  {
    sub_22BCD4EBC(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_22BCD4EBC(uint64_t a1)
{
  if (!qword_281428860)
  {
    _s18ToolStepEvaluationVMa(255);
    v1 = sub_22BDBAE24();
    if (!v2)
    {
      atomic_store(v1, &qword_281428860);
    }
  }
}

__n128 sub_22BCD4F14(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_22BCD4F20(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_22BCD4F60(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_22BCD4FAC(uint64_t a1, void *a2)
{
  v4 = *(v2 + 1);
  v5 = *v2;
  v6 = sub_22BB69FEC(a2, a2[3]);

  return sub_22BCD500C(a1, v6, v5, v4);
}

uint64_t sub_22BCD500C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35[3] = _s19TranscriptRetrieverVMa(0);
  v35[4] = &off_283F7A608;
  v14 = sub_22BB8B8A0(v35, v7, v8, v9, v10, v11, v12, v13);
  sub_22BCD51FC(a2, v14);
  v15 = *(a4 + 16);
  if (v15)
  {
    v33 = a3;
    v16 = 0;
    v17 = (a4 + 32);
    v18 = MEMORY[0x277D84F90];
    while (1)
    {
      v19 = v17[3];
      v20 = v17[4];
      sub_22BB69FEC(v17, v19);
      v21 = (*(v20 + 16))(a1, v35, v19, v20);
      v23 = v22;
      v25 = v24;
      v27 = v26;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_22BD8F874();
        v18 = v30;
      }

      v28 = *(v18 + 16);
      if (v28 >= *(v18 + 24) >> 1)
      {
        sub_22BD8F874();
        v18 = v31;
      }

      *(v18 + 16) = v28 + 1;
      v29 = v18 + 32 * v28;
      *(v29 + 32) = v21;
      *(v29 + 40) = v23;
      *(v29 + 48) = v25;
      *(v29 + 56) = v27;
      if (!v23)
      {
        break;
      }

      if (v16)
      {
        goto LABEL_11;
      }

      v16 = v25;
LABEL_12:
      v17 += 5;
      if (!--v15)
      {
        a3 = v33;
        goto LABEL_14;
      }
    }

LABEL_11:

    goto LABEL_12;
  }

LABEL_14:
  sub_22BB32FA4(v35);
  return a3;
}

uint64_t sub_22BCD51FC(uint64_t a1, uint64_t a2)
{
  v4 = _s19TranscriptRetrieverVMa(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

_BYTE *_s17ActionPromptVoterVwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

_BYTE *_s19TaskCompletionVoterVwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_22BCD5418@<X0>(uint64_t a1@<X0>, void (*a2)(char *)@<X1>, uint64_t a3@<X2>, void (*a4)(char *)@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v24 = a5;
  v25 = a4;
  v28 = a3;
  v29 = a2;
  v30 = a6;
  v7 = sub_22BDB4CE4();
  v26 = *(v7 - 8);
  v27 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22BDB4E24();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_22BDB5404();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v17, a1, v14);
  v18 = (*(v15 + 88))(v17, v14);
  if (v18 == *MEMORY[0x277D1CBF0])
  {
    (*(v15 + 96))(v17, v14);
    (*(v11 + 32))(v13, v17, v10);
    v29(v13);
    return (*(v11 + 8))(v13, v10);
  }

  else
  {
    v20 = v30;
    if (v18 == *MEMORY[0x277D1CBE8])
    {
      (*(v15 + 96))(v17, v14);
      v22 = v26;
      v21 = v27;
      (*(v26 + 32))(v9, v17, v27);
      v25(v9);
      return (*(v22 + 8))(v9, v21);
    }

    else
    {
      v23 = _s20TaskStatementOutcomeOMa(0);
      sub_22BB336D0(v20, 1, 1, v23);
      return (*(v15 + 8))(v17, v14);
    }
  }
}

uint64_t sub_22BCD5758@<X0>(uint64_t a1@<X0>, unsigned int a2@<W1>, uint64_t a3@<X8>)
{
  v25[3] = a2;
  v5 = sub_22BBE6DE0(&qword_27D8E3DB8, &qword_22BDC1150);
  v6 = sub_22BB2F0C8(v5);
  MEMORY[0x28223BE20](v6);
  v8 = v25 - v7;
  v9 = _s20TaskStatementOutcomeOMa(0);
  sub_22BB2F330();
  MEMORY[0x28223BE20](v10);
  sub_22BB30574();
  v13 = v12 - v11;
  v14 = sub_22BBE6DE0(&qword_27D8E4318, &unk_22BDC2E90);
  v15 = sub_22BB2F0C8(v14);
  MEMORY[0x28223BE20](v15);
  sub_22BB30C74();
  v18 = v16 - v17;
  MEMORY[0x28223BE20](v19);
  v21 = v25 - v20;
  v27 = *(a1 + *(type metadata accessor for FeedbackLearning.FlowExpression(0) + 20));
  v26 = a1;

  sub_22BBE6DE0(&qword_27D8E2F48, &unk_22BDBD950);
  sub_22BCBD20C();
  sub_22BDB9074();

  sub_22BCD6538(v21, v18);
  if (sub_22BB3AA28(v18, 1, v9) != 1)
  {
    sub_22BB58728(v21, &qword_27D8E4318, &unk_22BDC2E90);
    sub_22BCD6694(v18, v13, _s20TaskStatementOutcomeOMa);
    sub_22BCD6694(v13, a3, _s20TaskStatementOutcomeOMa);
LABEL_6:
    v23 = 0;
    return sub_22BB336D0(a3, v23, 1, v9);
  }

  sub_22BB58728(v18, &qword_27D8E4318, &unk_22BDC2E90);
  sub_22BCD5C90(a1, v8);
  sub_22BB58728(v21, &qword_27D8E4318, &unk_22BDC2E90);
  v22 = _s23StatementCreatedOutcomeVMa(0);
  if (sub_22BB3AA28(v8, 1, v22) != 1)
  {
    sub_22BCD6638(v8, a3, _s23StatementCreatedOutcomeVMa);
    swift_storeEnumTagMultiPayload();
    sub_22BCD66F0(v8, _s23StatementCreatedOutcomeVMa);
    goto LABEL_6;
  }

  sub_22BB58728(v8, &qword_27D8E3DB8, &qword_22BDC1150);
  v23 = 1;
  return sub_22BB336D0(a3, v23, 1, v9);
}

uint64_t sub_22BCD5A5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_22BBE6DE0(&qword_27D8E3218, &qword_22BDBE390);
  v5 = sub_22BB2F0C8(v4);
  MEMORY[0x28223BE20](v5);
  sub_22BB30C74();
  v8 = v6 - v7;
  MEMORY[0x28223BE20](v9);
  v11 = &v27 - v10;
  type metadata accessor for FeedbackLearning.FlowExpressionValue.FlowExpressionType(0);
  sub_22BB2F330();
  MEMORY[0x28223BE20](v12);
  sub_22BB30574();
  v15 = v14 - v13;
  type metadata accessor for FeedbackLearning.FlowExpressionValue(0);
  sub_22BB307FC();
  sub_22BCD6638(a1 + v16, v15, v17);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_22BDB4C34();
      sub_22BB2F330();
      (*(v19 + 8))(v15);
    }

    sub_22BDB8794();
    v20 = _s28StatementResolutionReferenceOMa(0);
    sub_22BB31F54();
  }

  else
  {
    sub_22BB33D88();
    sub_22BCD66F0(v15, v25);
    sub_22BDB87D4();
    sub_22BBCD82C(v11, v8, &qword_27D8E3218, &qword_22BDBE390);
    v26 = sub_22BDB43E4();
    if (sub_22BB3AA28(v8, 1, v26) == 1)
    {
      v23 = _s28StatementResolutionReferenceOMa(0);
      v21 = a2;
      v22 = 1;
      return sub_22BB336D0(v21, v22, 1, v23);
    }

    (*(*(v26 - 8) + 32))(a2, v8, v26);
    v20 = _s28StatementResolutionReferenceOMa(0);
    sub_22BB31F54();
  }

  swift_storeEnumTagMultiPayload();
  v21 = a2;
  v22 = 0;
  v23 = v20;
  return sub_22BB336D0(v21, v22, 1, v23);
}

uint64_t sub_22BCD5C90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for FeedbackLearning.FlowActionEvent(0);
  sub_22BB2F330();
  MEMORY[0x28223BE20](v5);
  sub_22BB30574();
  v8 = v7 - v6;
  v9 = sub_22BBE6DE0(&qword_27D8E4328, &unk_22BDCC070);
  v10 = sub_22BB2F0C8(v9);
  MEMORY[0x28223BE20](v10);
  sub_22BB30C74();
  v13 = v11 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v32 - v15;
  type metadata accessor for FeedbackLearning.FlowExpressionValue.FlowExpressionType(0);
  sub_22BB2F330();
  MEMORY[0x28223BE20](v17);
  sub_22BB30574();
  v20 = v19 - v18;
  type metadata accessor for FeedbackLearning.FlowExpressionValue(0);
  sub_22BB307FC();
  sub_22BCD6638(a1 + v21, v20, v22);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_22BDB4C34();
      sub_22BB2F330();
      (*(v24 + 8))(v20);
    }

    v25 = 1;
  }

  else
  {
    sub_22BB33D88();
    sub_22BCD66F0(v20, v28);
    v29 = type metadata accessor for FeedbackLearning.FlowExpression(0);
    sub_22BD39428(*(a1 + *(v29 + 24)));
    sub_22BBCD82C(v16, v13, &qword_27D8E4328, &unk_22BDCC070);
    v25 = 1;
    if (sub_22BB3AA28(v13, 1, v4) != 1)
    {
      sub_22BCD6694(v13, v8, type metadata accessor for FeedbackLearning.FlowActionEvent);
      sub_22BDB43E4();
      sub_22BB2F330();
      v30 = sub_22BB31F54();
      v31(v30);
      sub_22BCD66F0(v8, type metadata accessor for FeedbackLearning.FlowActionEvent);
      _s28StatementResolutionReferenceOMa(0);
      swift_storeEnumTagMultiPayload();
      v25 = 0;
    }
  }

  v26 = _s23StatementCreatedOutcomeVMa(0);
  return sub_22BB336D0(a2, v25, 1, v26);
}

uint64_t sub_22BCD5F14@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v36 = a1;
  v37 = a2;
  v2 = sub_22BDB5404();
  v34 = *(v2 - 8);
  v35 = v2;
  MEMORY[0x28223BE20](v2);
  v33 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_22BDB90B4();
  v30 = *(v4 - 8);
  v31 = v4;
  MEMORY[0x28223BE20](v4);
  v29 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22BBE6DE0(&qword_27D8E4320, &unk_22BDC2EA0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v28 - v7;
  v9 = _s28StatementResolutionReferenceOMa(0);
  MEMORY[0x28223BE20](v9);
  v32 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22BDB87F4();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_22BDB9B14();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v28 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22BDB9B24();
  if ((*(v16 + 88))(v18, v15) == *MEMORY[0x277D1E798])
  {
    (*(v16 + 96))(v18, v15);
    (*(v12 + 32))(v14, v18, v11);
    sub_22BCD5A5C(v36, v8);
    if (sub_22BB3AA28(v8, 1, v9) == 1)
    {
      (*(v12 + 8))(v14, v11);
      sub_22BB58728(v8, &qword_27D8E4320, &unk_22BDC2EA0);
      v19 = _s20TaskStatementOutcomeOMa(0);
      return sub_22BB336D0(v37, 1, 1, v19);
    }

    else
    {
      v22 = v32;
      sub_22BCD6694(v8, v32, _s28StatementResolutionReferenceOMa);
      v23 = v29;
      sub_22BDB87E4();
      v24 = v33;
      sub_22BDB9094();
      v25 = (*(v30 + 8))(v23, v31);
      v26 = MEMORY[0x28223BE20](v25);
      *(&v28 - 2) = v22;
      MEMORY[0x28223BE20](v26);
      *(&v28 - 2) = v22;
      sub_22BCD5418(v24, sub_22BCD65A8, v27, sub_22BCD65F0, (&v28 - 4), v37);
      (*(v34 + 8))(v24, v35);
      (*(v12 + 8))(v14, v11);
      return sub_22BCD66F0(v22, _s28StatementResolutionReferenceOMa);
    }
  }

  else
  {
    v21 = _s20TaskStatementOutcomeOMa(0);
    sub_22BB336D0(v37, 1, 1, v21);
    return (*(v16 + 8))(v18, v15);
  }
}

uint64_t sub_22BCD643C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void)@<X2>, void (*a4)(void)@<X3>, uint64_t a6@<X8>)
{
  sub_22BCD6638(a2, a6, _s28StatementResolutionReferenceOMa);
  v10 = *(a3(0) + 20);
  a4(0);
  sub_22BB2F330();
  (*(v11 + 16))(a6 + v10, a1);
  v12 = _s20TaskStatementOutcomeOMa(0);
  swift_storeEnumTagMultiPayload();
  return sub_22BB336D0(a6, 0, 1, v12);
}

uint64_t sub_22BCD6538(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BBE6DE0(&qword_27D8E4318, &unk_22BDC2E90);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22BCD6638(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_22BB2F330();
  v4 = sub_22BB31F54();
  v5(v4);
  return a2;
}

uint64_t sub_22BCD6694(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_22BB2F330();
  v4 = sub_22BB31F54();
  v5(v4);
  return a2;
}

uint64_t sub_22BCD66F0(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_22BB2F330();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_22BCD6748@<X0>(uint64_t *a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t x8_0@<X8>)
{
  v22[3] = _s19TranscriptRetrieverVMa(0);
  v22[4] = &off_283F7A608;
  v20 = sub_22BB8B8A0(v22, v13, v14, v15, v16, v17, v18, v19);
  sub_22BBCE8A0(a3, v20);
  sub_22BCD680C(a1, v22, a4, a5, a6, x8_0);
  return sub_22BB32FA4(v22);
}

uint64_t sub_22BCD680C@<X0>(uint64_t *a1@<X0>, void (*a2)(char *, uint64_t)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v7 = v6;
  v108 = a4;
  v109 = a5;
  v98 = a2;
  v99 = a3;
  v97 = a1;
  v107 = a6;
  v8 = sub_22BDB6AF4();
  v92 = *(v8 - 8);
  v93 = v8;
  MEMORY[0x28223BE20](v8);
  v91 = &v79 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = type metadata accessor for FeedbackLearning.FlowTask(0);
  v10 = MEMORY[0x28223BE20](v79);
  v87 = &v79 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v86 = &v79 - v12;
  v90 = sub_22BDB77D4();
  v89 = *(v90 - 8);
  MEMORY[0x28223BE20](v90);
  v88 = &v79 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = sub_22BDB5714();
  v81 = *(v83 - 8);
  MEMORY[0x28223BE20](v83);
  v80 = &v79 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = sub_22BDB6AC4();
  v84 = *(v85 - 8);
  MEMORY[0x28223BE20](v85);
  v82 = &v79 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = type metadata accessor for FeedbackLearning.TaskEvaluation(0);
  MEMORY[0x28223BE20](v106);
  v95 = &v79 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_22BDB6B24();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v79 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_22BDB6B14();
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v24 = &v79 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_22BDB43E4();
  v103 = *(v25 - 8);
  v104 = v25;
  MEMORY[0x28223BE20](v25);
  v27 = &v79 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22BDB43D4();
  v105 = _s17FastTaskEvaluatorVMa(0);
  v28 = *(v105 + 28);
  sub_22BDB76D4();
  v94 = 0;
  v29 = v22;
  (*(v22 + 16))(v20, v24, v21);
  v30 = *MEMORY[0x277D1F888];
  v31 = v18 + 104;
  v100 = *(v18 + 104);
  v100(v20, v30, v17);
  v101 = v28;
  v102 = v27;
  sub_22BCA358C();
  v32 = v18;
  v33 = v20;
  v36 = *(v32 + 8);
  v35 = v32 + 8;
  v34 = v36;
  v96 = v17;
  v36(v20, v17);
  v37 = v24;
  v38 = v97;
  (*(v29 + 8))(v37, v21);
  v39 = v94;
  v40 = v95;
  v105 = v7;
  sub_22BCD8450(v38, v98, v99, v95);
  if (v39)
  {
    v94 = v33;
    v95 = v31;
    v98 = v34;
    v99 = v35;
    v41 = v88;
    sub_22BDB6404();
    v42 = v86;
    sub_22BBCE8A0(v38, v86);
    v43 = v87;
    sub_22BBCE8A0(v38, v87);
    v44 = v39;
    v45 = sub_22BDB77C4();
    v46 = sub_22BDBB114();

    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v97 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v110 = v48;
      *v47 = 136315650;
      sub_22BDB4C34();
      sub_22BCBD270(&qword_27D8E2F68, MEMORY[0x277D1C338], MEMORY[0x277D1C368]);
      v49 = sub_22BDBB684();
      v51 = v50;
      sub_22BBDB99C(v42, type metadata accessor for FeedbackLearning.FlowTask);
      v52 = sub_22BB32EE0(v49, v51, &v110);

      *(v47 + 4) = v52;
      *(v47 + 12) = 2080;
      v54 = MEMORY[0x23189FEB0](v53);
      v56 = v55;
      sub_22BBDB99C(v43, type metadata accessor for FeedbackLearning.FlowTask);
      v57 = sub_22BB32EE0(v54, v56, &v110);

      *(v47 + 14) = v57;
      *(v47 + 22) = 2112;
      v58 = v39;
      v59 = _swift_stdlib_bridgeErrorToNSError();
      *(v47 + 24) = v59;
      v60 = v97;
      *v97 = v59;
      _os_log_impl(&dword_22BB2C000, v45, v46, "Cannot generate task evaluation for task with id %s in session %s: %@", v47, 0x20u);
      sub_22BB58728(v60, &unk_27D8E6A70, &unk_22BDBCDB0);
      MEMORY[0x2318A6080](v60, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x2318A6080](v48, -1, -1);
      MEMORY[0x2318A6080](v47, -1, -1);
    }

    else
    {

      sub_22BBDB99C(v43, type metadata accessor for FeedbackLearning.FlowTask);
      sub_22BBDB99C(v42, type metadata accessor for FeedbackLearning.FlowTask);
    }

    (*(v89 + 8))(v41, v90);
    v71 = v103;
    v72 = v94;
    v73 = v91;
    sub_22BDB6A04();
    v69 = 1;
    sub_22BDB69F4();
    v74 = v92;
    v75 = v93;
    (*(v92 + 16))(v72, v73, v93);
    v76 = v96;
    v100(v72, *MEMORY[0x277D1F880], v96);
    v77 = v102;
    sub_22BCA358C();

    v98(v72, v76);
    (*(v74 + 8))(v73, v75);
    (*(v71 + 8))(v77, v104);
    v70 = v107;
  }

  else
  {
    sub_22BDB9994();
    v61 = v34;
    v62 = v80;
    sub_22BDB5704();

    v63 = v82;
    sub_22BCA3E68();
    (*(v81 + 8))(v62, v83);
    v64 = v84;
    v65 = v85;
    (*(v84 + 16))(v33, v63, v85);
    v66 = v96;
    v100(v33, *MEMORY[0x277D1F878], v96);
    v67 = v102;
    sub_22BCA358C();
    v61(v33, v66);
    (*(v64 + 8))(v63, v65);
    (*(v103 + 8))(v67, v104);
    v68 = v107;
    sub_22BCD7DF4(v40, v107);
    v69 = 0;
    v70 = v68;
  }

  return sub_22BB336D0(v70, v69, 1, v106);
}

uint64_t sub_22BCD72D0@<X0>(uint64_t a1@<X8>)
{
  v49 = a1;
  v1 = sub_22BBE6DE0(&qword_27D8E3EA0, &qword_22BDC1370);
  MEMORY[0x28223BE20](v1 - 8);
  v48 = &v38 - v2;
  v3 = sub_22BDB5264();
  v46 = *(v3 - 8);
  v47 = v3;
  MEMORY[0x28223BE20](v3);
  v45 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22BDB8D84();
  v40 = *(v5 - 8);
  v41 = v5;
  MEMORY[0x28223BE20](v5);
  v39 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22BDB87F4();
  v43 = *(v7 - 8);
  v44 = v7;
  MEMORY[0x28223BE20](v7);
  v42 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22BDB81A4();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22BDB9564();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_22BDB9B14();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v38 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22BDB9B24();
  v21 = (*(v18 + 88))(v20, v17);
  if (v21 == *MEMORY[0x277D1E710])
  {
    (*(v18 + 96))(v20, v17);
    (*(v14 + 32))(v16, v20, v13);
    v22 = v49;
    sub_22BDB8174();
    (*(v14 + 8))(v16, v13);
LABEL_5:
    v24 = sub_22BDB4C34();
    v25 = v22;
    goto LABEL_6;
  }

  v23 = v49;
  if (v21 == *MEMORY[0x277D1E7A0])
  {
    (*(v18 + 96))(v20, v17);
    (*(v10 + 32))(v12, v20, v9);
    v22 = v23;
    sub_22BDB8174();
    (*(v10 + 8))(v12, v9);
    goto LABEL_5;
  }

  if (v21 == *MEMORY[0x277D1E820])
  {
    (*(v18 + 96))(v20, v17);
    v29 = v45;
    v28 = v46;
    v30 = v47;
    (*(v46 + 32))(v45, v20, v47);
    v31 = v48;
    sub_22BCB5EE0();
    v32 = sub_22BDB5B14();
    v33 = v23;
    if (sub_22BB3AA28(v31, 1, v32) == 1)
    {
      (*(v28 + 8))(v29, v30);
      sub_22BB58728(v31, &qword_27D8E3EA0, &qword_22BDC1370);
      v24 = sub_22BDB4C34();
      v25 = v23;
      v26 = 1;
      return sub_22BB336D0(v25, v26, 1, v24);
    }

    sub_22BDB5AE4();
    (*(v28 + 8))(v29, v30);
    (*(*(v32 - 8) + 8))(v31, v32);
  }

  else
  {
    v33 = v49;
    if (v21 == *MEMORY[0x277D1E798])
    {
      (*(v18 + 96))(v20, v17);
      v34 = v42;
      v35 = v43;
      v36 = v44;
      (*(v43 + 32))(v42, v20, v44);
      sub_22BDB8794();
    }

    else
    {
      if (v21 != *MEMORY[0x277D1E7C0])
      {
        v37 = sub_22BDB4C34();
        sub_22BB336D0(v23, 1, 1, v37);
        return (*(v18 + 8))(v20, v17);
      }

      (*(v18 + 96))(v20, v17);
      v34 = v39;
      v35 = v40;
      v36 = v41;
      (*(v40 + 32))(v39, v20, v41);
      sub_22BDB8174();
    }

    (*(v35 + 8))(v34, v36);
  }

  v24 = sub_22BDB4C34();
  v25 = v33;
LABEL_6:
  v26 = 0;
  return sub_22BB336D0(v25, v26, 1, v24);
}

uint64_t sub_22BCD79B8@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_22BBE6DE0(&qword_27D8E3EA0, &qword_22BDC1370);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v24 - v3;
  v5 = sub_22BDB5264();
  v25 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22BDB87F4();
  v24 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22BDB9B14();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22BDB9B24();
  v15 = (*(v12 + 88))(v14, v11);
  if (v15 == *MEMORY[0x277D1E710] || v15 == *MEMORY[0x277D1E7A0])
  {
    sub_22BDB8F24();
    v16 = sub_22BDB43E4();
    v17 = a1;
    v18 = 0;
LABEL_4:
    sub_22BB336D0(v17, v18, 1, v16);
    return (*(v12 + 8))(v14, v11);
  }

  if (v15 != *MEMORY[0x277D1E820])
  {
    if (v15 == *MEMORY[0x277D1E798])
    {
      (*(v12 + 96))(v14, v11);
      v23 = v24;
      (*(v24 + 32))(v10, v14, v8);
      sub_22BDB87D4();
      return (*(v23 + 8))(v10, v8);
    }

    v16 = sub_22BDB43E4();
    v17 = a1;
    v18 = 1;
    goto LABEL_4;
  }

  (*(v12 + 96))(v14, v11);
  v20 = v25;
  (*(v25 + 32))(v7, v14, v5);
  sub_22BCB5EE0();
  v21 = sub_22BDB5B14();
  if (sub_22BB3AA28(v4, 1, v21) == 1)
  {
    (*(v20 + 8))(v7, v5);
    sub_22BB58728(v4, &qword_27D8E3EA0, &qword_22BDC1370);
    v22 = sub_22BDB43E4();
    return sub_22BB336D0(a1, 1, 1, v22);
  }

  else
  {
    sub_22BDB5B04();
    (*(v20 + 8))(v7, v5);
    return (*(*(v21 - 8) + 8))(v4, v21);
  }
}

uint64_t sub_22BCD7DF4(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BB30F68();
  v5(v4);
  sub_22BB2F330();
  (*(v6 + 32))(a2, v2);
  return a2;
}

uint64_t sub_22BCD7E9C(uint64_t a1)
{
  result = sub_22BDB9C14();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for FeedbackLearning.TaskEvaluator(319);
    if (v3 <= 0x3F)
    {
      result = sub_22BCB69BC(319, qword_28142B6E0, &_s23TaskCandidateEvaluatingPMp);
      if (v4 <= 0x3F)
      {
        result = sub_22BCB69BC(319, qword_28142C390, &protocol descriptor for FeedbackLearning.TelemetryInserting);
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

double sub_22BCD7F70()
{
  sub_22BBE6DE0(&qword_27D8E4338, &unk_22BDC2F30);
  v0 = swift_allocObject();
  *&result = 3;
  *(v0 + 16) = xmmword_22BDC2F20;
  *(v0 + 56) = &_s17ActionPromptVoterVN;
  *(v0 + 64) = &off_283F76EF8;
  *(v0 + 32) = 0;
  *(v0 + 96) = &_s19TaskCompletionVoterVN;
  *(v0 + 104) = &off_283F76FA8;
  *(v0 + 72) = 3;
  *(v0 + 136) = &_s10FixedVoterVN;
  *(v0 + 144) = &off_283F7A870;
  *(v0 + 120) = MEMORY[0x277D84F90];
  *(v0 + 128) = 1;
  *(v0 + 112) = 0;
  qword_28142F420 = &_s17WaterfallMediatorVN;
  unk_28142F428 = &off_283F76E48;
  byte_28142F408 = 4;
  qword_28142F410 = v0;
  return result;
}

uint64_t sub_22BCD8038(uint64_t a1, void (*a2)(uint64_t *, unint64_t), uint64_t a3, uint64_t a4)
{
  v7 = 0;
  v11 = a1;
  v8 = *(a4 + 16);
  while (v8 != v7)
  {
    v9 = *(type metadata accessor for FeedbackLearning.FlowExpression(0) - 8);
    a2(&v11, a4 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v7++);
    if (v4)
    {
    }
  }

  return v11;
}

uint64_t sub_22BCD811C(void (*a1)(uint64_t *__return_ptr, char *))
{
  v3 = type metadata accessor for FeedbackLearning.FlowExpression(0);
  MEMORY[0x28223BE20](v3);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22BBE6DE0(&qword_27D8E4348, &qword_22BDC2FA8);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v10 - v7;
  sub_22BCE098C();
  if (sub_22BB3AA28(v8, 1, v3) == 1)
  {
    return 2;
  }

  sub_22BCE17CC();
  a1(&v11, v5);
  if (v1)
  {
    result = sub_22BB344AC(v5, type metadata accessor for FeedbackLearning.FlowExpression);
    __break(1u);
  }

  else
  {
    sub_22BB344AC(v5, type metadata accessor for FeedbackLearning.FlowExpression);
    return v11;
  }

  return result;
}

uint64_t sub_22BCD82C0(void (*a1)(uint64_t *__return_ptr, _BYTE *), uint64_t a2, char a3, char a4, uint64_t a5, uint64_t a6)
{
  if (!a5)
  {
    return 3;
  }

  v9[0] = a3;
  v9[8] = a4;
  v10 = a5;
  v11 = a6;

  a1(&v12, v9);

  if (v6)
  {

    __break(1u);
  }

  else
  {

    return v12;
  }

  return result;
}

uint64_t sub_22BCD8378@<X0>(void (*a1)(_BYTE *)@<X0>, char a2@<W2>, char a3@<W3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  if (a4)
  {
    v11[0] = a2;
    v11[8] = a3;
    v12 = a4;
    v13 = a5;

    a1(v11);

    if (v6)
    {
      __break(1u);
    }
  }

  else
  {
    v10 = _s24StatementExecutionResultOMa(0);
    return sub_22BB336D0(a6, 1, 1, v10);
  }

  return result;
}

uint64_t sub_22BCD8450@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v233 = a3;
  v246 = a2;
  v237 = a4;
  v5 = sub_22BDB5F24();
  v6 = sub_22BB2F0C8(v5);
  MEMORY[0x28223BE20](v6);
  sub_22BB305A8();
  sub_22BB30B8C(v7);
  v236 = sub_22BDB7A84();
  sub_22BB30444();
  v235 = v8;
  MEMORY[0x28223BE20](v9);
  sub_22BB305A8();
  v245 = v10;
  v11 = sub_22BB2F120();
  v223 = _s24StatementExecutionResultOMa(v11);
  sub_22BB2F330();
  MEMORY[0x28223BE20](v12);
  sub_22BB305A8();
  v14 = sub_22BB30B8C(v13);
  v15 = type metadata accessor for FeedbackLearning.TaskFinalResolutionState(v14);
  v16 = sub_22BB2F0C8(v15);
  MEMORY[0x28223BE20](v16);
  sub_22BB305A8();
  v247 = v17;
  v18 = sub_22BB2F120();
  v19 = type metadata accessor for FeedbackLearning.TaskOutcome(v18);
  v20 = sub_22BB2F0C8(v19);
  MEMORY[0x28223BE20](v20);
  sub_22BB305A8();
  v244 = v21;
  v221 = sub_22BBE6DE0(&qword_27D8E4340, &qword_22BDC2FA0);
  sub_22BB2F330();
  MEMORY[0x28223BE20](v22);
  sub_22BB30560();
  sub_22BB30B7C();
  MEMORY[0x28223BE20](v23);
  sub_22BB2F384();
  sub_22BB30B7C();
  MEMORY[0x28223BE20](v24);
  sub_22BB2F384();
  sub_22BB30B7C();
  MEMORY[0x28223BE20](v25);
  sub_22BB2F39C();
  v243 = v26;
  v27 = sub_22BBE6DE0(&qword_27D8E4348, &qword_22BDC2FA8);
  sub_22BB2F0C8(v27);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v28);
  v241 = &v218 - v29;
  v30 = sub_22BB2F120();
  v240 = type metadata accessor for FeedbackLearning.FlowExpression(v30);
  sub_22BB30444();
  v222 = v31;
  MEMORY[0x28223BE20](v32);
  sub_22BB30560();
  v242 = v33;
  sub_22BB30B70();
  MEMORY[0x28223BE20](v34);
  v36 = &v218 - v35;
  v225 = type metadata accessor for FeedbackLearning.FlowExpressionValue(0);
  sub_22BB30444();
  MEMORY[0x28223BE20](v37);
  v38 = type metadata accessor for FeedbackLearning.FlowTask(0);
  sub_22BB2F330();
  MEMORY[0x28223BE20](v39);
  sub_22BB30560();
  sub_22BB30B7C();
  MEMORY[0x28223BE20](v40);
  sub_22BB2F384();
  sub_22BB30B7C();
  MEMORY[0x28223BE20](v41);
  sub_22BB2F384();
  sub_22BB30B7C();
  MEMORY[0x28223BE20](v42);
  sub_22BB2F384();
  v250 = v43;
  sub_22BB30B70();
  MEMORY[0x28223BE20](v44);
  sub_22BB2F384();
  v239 = v45;
  sub_22BB30B70();
  MEMORY[0x28223BE20](v46);
  v48 = &v218 - v47;
  sub_22BDB77D4();
  sub_22BB30444();
  v254 = v50;
  v255 = v49;
  MEMORY[0x28223BE20](v49);
  sub_22BB30560();
  v248 = v51;
  sub_22BB30B70();
  MEMORY[0x28223BE20](v52);
  sub_22BB2F384();
  sub_22BB30B7C();
  MEMORY[0x28223BE20](v53);
  sub_22BB2F384();
  v238 = v54;
  sub_22BB30B70();
  MEMORY[0x28223BE20](v55);
  sub_22BB2F384();
  v249 = v56;
  sub_22BB30B70();
  MEMORY[0x28223BE20](v57);
  v59 = &v218 - v58;
  sub_22BDB6404();
  sub_22BB32C44();
  v256 = a1;
  sub_22BBCE8FC();
  v60 = sub_22BDB77C4();
  v61 = sub_22BDBB0F4();
  v62 = os_log_type_enabled(v60, v61);
  v252 = v38;
  if (v62)
  {
    sub_22BB354D0();
    v63 = swift_slowAlloc();
    LODWORD(v224) = v61;
    v64 = v63;
    v220 = v63;
    sub_22BB2F440();
    v253 = swift_slowAlloc();
    v258 = v253;
    LODWORD(v64->isa) = 136315138;
    sub_22BDB4C34();
    sub_22BB30830();
    sub_22BCE16D4(v65, v66, MEMORY[0x277D1C368]);
    v67 = sub_22BDBB684();
    sub_22BB35B48();
    sub_22BB344AC(v48, v68);
    v69 = sub_22BB31F54();
    sub_22BB32EE0(v69, v70, v71);
    sub_22BB2F1B0();

    v72 = v220;
    *(v220 + 4) = v67;
    _os_log_impl(&dword_22BB2C000, v60, v224, "Starting to run task evaluator for task with statementId=%s", v72, 0xCu);
    sub_22BB32FA4(v253);
    sub_22BB2F368();
    MEMORY[0x2318A6080]();
    sub_22BB2F368();
    MEMORY[0x2318A6080]();
  }

  else
  {

    sub_22BB35B48();
    sub_22BB344AC(v48, v73);
  }

  v253 = *(v254 + 8);
  (v253)(v59, v255);
  v74 = v249;
  sub_22BDB6404();
  v75 = v239;
  sub_22BBCE8FC();
  v76 = v250;
  sub_22BBCE8FC();
  v77 = sub_22BDB77C4();
  LODWORD(v224) = sub_22BDBB0F4();
  if (os_log_type_enabled(v77, v224))
  {
    v220 = v77;
    v78 = swift_slowAlloc();
    v219 = swift_slowAlloc();
    v258 = v219;
    *v78 = 136315395;
    v79 = v76;
    v80 = v252;
    sub_22BDB4C34();
    sub_22BB30830();
    sub_22BCE16D4(v81, v82, MEMORY[0x277D1C368]);
    v83 = sub_22BDBB684();
    sub_22BB35B48();
    sub_22BB344AC(v75, v84);
    v85 = sub_22BB31F54();
    sub_22BB32EE0(v85, v86, v87);
    sub_22BB2F1B0();

    *(v78 + 4) = v83;
    v239 = v78;
    *(v78 + 12) = 2081;
    v88 = *(v79 + *(v80 + 24));
    v89 = *(v88 + 16);
    v90 = MEMORY[0x277D84F90];
    if (v89)
    {
      v257 = MEMORY[0x277D84F90];
      sub_22BD28408(0, v89, 0);
      v90 = v257;
      sub_22BB2F390();
      v92 = v88 + v91;
      v94 = *(v93 + 72);
      do
      {
        sub_22BBCE8FC();
        sub_22BBCE8FC();
        sub_22BB38B3C();
        sub_22BB344AC(v36, v95);
        v257 = v90;
        v97 = *(v90 + 16);
        v96 = *(v90 + 24);
        if (v97 >= v96 >> 1)
        {
          v98 = sub_22BB2F158(v96);
          sub_22BD28408(v98, v97 + 1, 1);
          v90 = v257;
        }

        *(v90 + 16) = v97 + 1;
        sub_22BB2F390();
        sub_22BCE17CC();
        v92 += v94;
        --v89;
      }

      while (v89);
      v104 = v255;
      v103 = v256;
    }

    else
    {
      v104 = v255;
      v103 = v256;
    }

    v105 = MEMORY[0x2318A4D50](v90, v225);
    v107 = v106;

    sub_22BB35B48();
    sub_22BB344AC(v250, v108);
    v109 = sub_22BB32EE0(v105, v107, &v258);

    v110 = v239;
    *(v239 + 14) = v109;
    v111 = v220;
    _os_log_impl(&dword_22BB2C000, v220, v224, "Expressions extracted for task with statementId=%s: %{private}s", v110, 0x16u);
    swift_arrayDestroy();
    sub_22BB2F368();
    MEMORY[0x2318A6080]();
    sub_22BB2F368();
    MEMORY[0x2318A6080]();

    (v253)(v249, v104);
    v101 = v251;
    v100 = v252;
    v102 = v248;
  }

  else
  {

    sub_22BB344AC(v75, type metadata accessor for FeedbackLearning.FlowTask);
    v99 = v255;
    (v253)(v74, v255);
    sub_22BB344AC(v76, type metadata accessor for FeedbackLearning.FlowTask);
    v101 = v251;
    v100 = v252;
    v102 = v248;
    v103 = v256;
    v104 = v99;
  }

  v112 = v241;
  sub_22BD39454(*(v103 + *(v100 + 24)));
  if (sub_22BB3AA28(v112, 1, v240) == 1)
  {
    sub_22BB58728(v112, &qword_27D8E4348, &qword_22BDC2FA8);
    sub_22BDB6404();
    sub_22BB32C44();
    v113 = v226;
    sub_22BBCE8FC();
    v114 = sub_22BDB77C4();
    v115 = sub_22BDBB114();
    if (os_log_type_enabled(v114, v115))
    {
      sub_22BB354D0();
      v116 = swift_slowAlloc();
      sub_22BB2F440();
      v117 = swift_slowAlloc();
      v258 = v117;
      *v116 = 136315138;
      sub_22BDB4C34();
      v118 = v104;
      sub_22BB30830();
      sub_22BCE16D4(v119, v120, MEMORY[0x277D1C368]);
      v121 = sub_22BDBB684();
      v123 = v122;
      sub_22BB35B48();
      sub_22BB344AC(v113, v124);
      v125 = sub_22BB32EE0(v121, v123, &v258);

      *(v116 + 4) = v125;
      _os_log_impl(&dword_22BB2C000, v114, v115, "Task with statementId=%s does not reference any expression", v116, 0xCu);
      sub_22BB32FA4(v117);
      sub_22BB2F368();
      MEMORY[0x2318A6080]();
      sub_22BB2F368();
      MEMORY[0x2318A6080]();

      v126 = v248;
      v127 = v118;
    }

    else
    {

      sub_22BB35B48();
      sub_22BB344AC(v113, v179);
      v126 = v102;
      v127 = v104;
    }

    (v253)(v126, v127);
    sub_22BCE00B0();
    swift_allocError();
    return swift_willThrow();
  }

  v128 = v242;
  sub_22BCE17CC();
  v129 = (v101 + *(type metadata accessor for FeedbackLearning.TaskEvaluator(0) + 20));
  v130 = v129[3];
  v131 = v129[4];
  sub_22BB69FEC(v129, v130);
  v132 = (*(v131 + 16))(v128, v246, v130, v131);
  LODWORD(v249) = v132;
  LODWORD(v250) = v133;
  v248 = v134;
  v136 = *(v135 + 2);
  v241 = v135;
  v137 = (v135 + 32);
  v138 = v136 + 1;
  v139 = (v135 + 32);
  while (--v138)
  {
    v140 = v139 + 32;
    v141 = *v139;
    v139 += 32;
    if (!v141)
    {
      v142 = *(v140 - 24);
      v143 = *(v140 - 2);
      v144 = *(v140 - 1);

      goto LABEL_22;
    }
  }

  v142 = 0;
  v143 = 0;
  v144 = 0;
LABEL_22:
  v145 = v136 + 1;
  while (--v145)
  {
    v146 = v137 + 32;
    v147 = *v137;
    v137 += 32;
    if (v147 == 3)
    {
      v148 = *(v146 - 24);
      v150 = *(v146 - 2);
      v149 = *(v146 - 1);

      v240 = 3;
      goto LABEL_27;
    }
  }

  v240 = 0;
  v148 = 0;
  v150 = 0;
  v149 = 0;
LABEL_27:
  MEMORY[0x28223BE20](v132);
  sub_22BB36D34();
  *(v151 - 16) = v101;
  v152 = v228;
  LODWORD(v228) = sub_22BCD82C0(sub_22BCE0104, v153, 0, v142, v143, v144);
  v154 = sub_22BCE0120(0, v142, v143);
  MEMORY[0x28223BE20](v154);
  sub_22BB36D34();
  *(v155 - 16) = v101;
  v156 = v243;
  v225 = v148;
  v239 = v150;
  v226 = v149;
  sub_22BCD8378(sub_22BCE0164, v240, v148, v150, v149, v243);
  v240 = v152;
  v157 = v156;
  v158 = v238;
  sub_22BDB6404();
  sub_22BB32C44();
  v159 = v256;
  v160 = v227;
  sub_22BBCE8FC();
  v161 = v229;
  sub_22BCE098C();
  v162 = sub_22BDB77C4();
  v163 = sub_22BDBB0F4();
  if (os_log_type_enabled(v162, v163))
  {
    v164 = swift_slowAlloc();
    v224 = swift_slowAlloc();
    v258 = v224;
    *v164 = 136315395;
    v165 = v252;
    sub_22BDB4C34();
    v166 = v160;
    sub_22BB30830();
    sub_22BCE16D4(v167, v168, MEMORY[0x277D1C368]);
    v169 = sub_22BDBB684();
    v171 = v170;
    sub_22BB35B48();
    sub_22BB344AC(v166, v172);
    v173 = sub_22BB32EE0(v169, v171, &v258);

    *(v164 + 4) = v173;
    *(v164 + 12) = 2085;
    sub_22BCE098C();
    v174 = sub_22BDBAC14();
    v176 = v175;
    sub_22BB58728(v161, &qword_27D8E4340, &qword_22BDC2FA0);
    v177 = sub_22BB32EE0(v174, v176, &v258);
    v159 = v256;

    *(v164 + 14) = v177;
    v157 = v243;
    _os_log_impl(&dword_22BB2C000, v162, v163, "The task execution result for statementId=%s is %{sensitive}s", v164, 0x16u);
    swift_arrayDestroy();
    sub_22BB2F368();
    MEMORY[0x2318A6080]();
    sub_22BB2F368();
    MEMORY[0x2318A6080]();

    sub_22BB6BD2C();
    (v253)(v238);
    v178 = v233;
  }

  else
  {

    sub_22BB58728(v161, &qword_27D8E4340, &qword_22BDC2FA0);
    sub_22BB35B48();
    sub_22BB344AC(v160, v181);
    sub_22BB6BD2C();
    (v253)(v158);
    v178 = v233;
    v165 = v252;
  }

  v182 = v232;
  v183 = v231;
  v252 = *(v165 + 20);
  v184 = v251;
  sub_22BCDA8A8(v159 + v252, v250, v228, v157, v244);
  v185 = v230;
  if (!v239)
  {
    goto LABEL_38;
  }

  sub_22BCE098C();
  if (sub_22BB3AA28(v185, 1, v223) == 1)
  {
    sub_22BB58728(v185, &qword_27D8E4340, &qword_22BDC2FA0);
LABEL_38:
    v186 = 1;
    goto LABEL_39;
  }

  sub_22BCE17CC();
  if ((v225 - 1) >= 2)
  {
    sub_22BB69AB0();
    goto LABEL_38;
  }

  sub_22BCDC5A0(v159, v246, v247);
  sub_22BB69AB0();
  v186 = 0;
LABEL_39:
  v187 = sub_22BBE6DE0(&qword_27D8E3D90, &unk_22BDC2EE0);
  sub_22BB336D0(v247, v186, 1, v187);
  v188 = sub_22BB69FEC(v246, v246[3]);
  sub_22BCE0180(v159, v178, v188, v184);
  v190 = v189;
  sub_22BCDB2D8(v159, v245);
  sub_22BDB6404();
  sub_22BB32C44();
  sub_22BBCE8FC();

  v191 = sub_22BDB77C4();
  v192 = sub_22BDBB0F4();

  if (os_log_type_enabled(v191, v192))
  {
    v193 = swift_slowAlloc();
    v258 = swift_slowAlloc();
    *v193 = 136315394;
    sub_22BDB4C34();
    sub_22BB30830();
    sub_22BCE16D4(v194, v195, MEMORY[0x277D1C368]);
    v196 = sub_22BDBB684();
    sub_22BB35B48();
    sub_22BB344AC(v183, v197);
    v198 = sub_22BB31F54();
    sub_22BB32EE0(v198, v199, v200);
    sub_22BB2F1B0();

    *(v193 + 4) = v196;
    *(v193 + 12) = 2080;
    v201 = type metadata accessor for FeedbackLearning.CandidateEvaluation(0);
    v202 = MEMORY[0x2318A4D50](v190, v201);
    v204 = sub_22BB32EE0(v202, v203, &v258);

    *(v193 + 14) = v204;
    _os_log_impl(&dword_22BB2C000, v191, v192, "The inferred candidate evaluations for statementId=%s: %s", v193, 0x16u);
    swift_arrayDestroy();
    sub_22BB2F368();
    MEMORY[0x2318A6080]();
    v159 = v256;
    sub_22BB2F368();
    MEMORY[0x2318A6080]();

    sub_22BB6BD2C();
    (v253)(v182);
    v205 = v243;
  }

  else
  {

    sub_22BB35B48();
    sub_22BB344AC(v183, v206);
    sub_22BB6BD2C();
    (v253)(v182);
    v205 = v157;
  }

  sub_22BB58728(v205, &qword_27D8E4340, &qword_22BDC2FA0);
  sub_22BB38B3C();
  sub_22BB344AC(v242, v207);
  v208 = v237;
  v209 = v236;
  v210 = v235;
  v211 = v234;
  sub_22BBCE8FC();
  sub_22BDB43E4();
  sub_22BB30ED8();
  (*(v212 + 32))(v208, v211);
  v213 = type metadata accessor for FeedbackLearning.TaskEvaluation(0);
  v214 = v213[5];
  sub_22BDB4C34();
  sub_22BB30ED8();
  (*(v215 + 16))(v208 + v214, v159 + v252);
  (*(v210 + 32))(v208 + v213[6], v245, v209);
  *(v208 + v213[7]) = v190;
  sub_22BCE17CC();
  result = sub_22BCE17CC();
  v216 = v208 + v213[10];
  *v216 = v249;
  *(v216 + 8) = v250;
  v217 = v241;
  *(v216 + 16) = v248;
  *(v216 + 24) = v217;
  return result;
}

uint64_t FeedbackLearning.TaskEvaluator.init(toolbox:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_22BDB9C14();
  sub_22BB30444();
  (*(v5 + 16))(a2, a1, v4);
  if (qword_28142AD28 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for FeedbackLearning.TaskEvaluator(0);
  sub_22BB69088(&byte_28142F408, a2 + *(v6 + 20));
  v7 = sub_22BB31F54();

  return v8(v7);
}

uint64_t FeedbackLearning.TaskEvaluator.evaluateTasks(transcript:)(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_22BDB43E4();
  sub_22BB2F0C8(v3);
  v2[4] = sub_22BB30ACC();
  v4 = sub_22BDB5F24();
  sub_22BB2F0C8(v4);
  v2[5] = sub_22BB30ACC();
  v5 = sub_22BDB9774();
  v2[6] = v5;
  v2[7] = *(v5 - 8);
  v2[8] = sub_22BB30ACC();
  v6 = _s19TranscriptRetrieverVMa(0);
  sub_22BB2F0C8(v6);
  v2[9] = sub_22BB30ACC();
  v7 = sub_22BDB9C14();
  v2[10] = v7;
  v2[11] = *(v7 - 8);
  v2[12] = sub_22BB30ACC();

  return MEMORY[0x2822009F8](sub_22BCD9C00, 0, 0);
}

uint64_t sub_22BCD9C00()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];
  v4 = v0[7];
  v104 = v0[8];
  v68 = v0[6];
  v74 = v0[9];
  v92 = v0[5];
  v5 = v0[3];
  v80 = v0[4];
  v6 = v0[2];
  _s22TaskCandidateEvaluatorCMa(0);
  v7 = *(v2 + 16);
  v86 = v5;
  v7(v1, v5, v3);
  v8 = sub_22BB8E770(v1);
  (*(v4 + 16))(v104, v6, v68);
  v9 = v1;
  v98 = v1;
  v7(v1, v5, v3);
  v10 = v74;
  sub_22BBB9080(v104, v9, v74);
  v11 = sub_22BDB9744();
  v12 = sub_22BBCE950(v11, v74, v8);

  v13 = v80;
  sub_22BDB8F24();
  v14 = v92;
  sub_22BDB5F04();
  sub_22BDB9744();
  sub_22BBD5E2C();
  sub_22BB2F1B0();

  sub_22BB344AC(v92, MEMORY[0x277D1D2C8]);
  v15 = swift_task_alloc();
  v15[2] = v86;
  v15[3] = v74;
  v15[4] = v12;
  sub_22BBDB9F4();
  v17 = v16;

  v15, v18, v19, v20, v21, v22, v23, v24, v62, v68, v74, v80, v86, v92, v98, v104, v110, v116, v122, v128, v134, v140, v146, v152, v158;
  sub_22BB344AC(v10, _s19TranscriptRetrieverVMa);
  v99, v25, v26, v27, v28, v29, v30, v31, v63, v69, v75, v81, v87, v93, v99, v105, v111, v117, v123, v129, v135, v141, v147, v153, v159;
  v10, v32, v33, v34, v35, v36, v37, v38, v64, v70, v76, v82, v88, v94, v100, v106, v112, v118, v124, v130, v136, v142, v148, v154, v160;
  v107, v39, v40, v41, v42, v43, v44, v45, v65, v71, v77, v83, v89, v95, v101, v107, v113, v119, v125, v131, v137, v143, v149, v155, v161;
  v14, v46, v47, v48, v49, v50, v51, v52, v66, v72, v78, v84, v90, v96, v102, v108, v114, v120, v126, v132, v138, v144, v150, v156, v162;
  v13, v53, v54, v55, v56, v57, v58, v59, v67, v73, v79, v85, v91, v97, v103, v109, v115, v121, v127, v133, v139, v145, v151, v157, v163;
  v60 = v0[1];

  return v60(v17);
}

uint64_t sub_22BCD9E54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v48 = type metadata accessor for FeedbackLearning.FlowTask(0);
  v7 = MEMORY[0x28223BE20](v48);
  v9 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v44 - v10;
  v12 = sub_22BDB77D4();
  v49 = *(v12 - 8);
  v50 = v12;
  MEMORY[0x28223BE20](v12);
  v14 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51[3] = _s19TranscriptRetrieverVMa(0);
  v51[4] = &off_283F7A608;
  sub_22BB8B8A0(v51, v15, v16, v17, v18, v19, v20, v21);
  sub_22BBCE8FC();
  v52 = a3;
  sub_22BCD8450(a1, v51, a2, a3);
  if (v3)
  {
    sub_22BB32FA4(v51);
    v22 = v14;
    sub_22BDB6404();
    sub_22BBCE8FC();
    sub_22BBCE8FC();
    v23 = v3;
    v24 = sub_22BDB77C4();
    v25 = sub_22BDBB114();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v46 = v25;
      v27 = v26;
      v45 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v51[0] = v47;
      *v27 = 136315650;
      sub_22BDB4C34();
      sub_22BCE16D4(&qword_27D8E2F68, MEMORY[0x277D1C338], MEMORY[0x277D1C368]);
      v28 = sub_22BDBB684();
      v30 = v29;
      sub_22BB344AC(v11, type metadata accessor for FeedbackLearning.FlowTask);
      v31 = sub_22BB32EE0(v28, v30, v51);

      *(v27 + 4) = v31;
      *(v27 + 12) = 2080;
      v33 = MEMORY[0x23189FEB0](v32);
      v35 = v34;
      sub_22BB344AC(v9, type metadata accessor for FeedbackLearning.FlowTask);
      v36 = sub_22BB32EE0(v33, v35, v51);

      *(v27 + 14) = v36;
      *(v27 + 22) = 2112;
      v37 = v3;
      v38 = _swift_stdlib_bridgeErrorToNSError();
      *(v27 + 24) = v38;
      v39 = v45;
      *v45 = v38;
      _os_log_impl(&dword_22BB2C000, v24, v46, "Failed to evaluate flow action with statementId=%s in session %s: %@", v27, 0x20u);
      sub_22BB58728(v39, &unk_27D8E6A70, &unk_22BDBCDB0);
      MEMORY[0x2318A6080](v39, -1, -1);
      v40 = v47;
      swift_arrayDestroy();
      MEMORY[0x2318A6080](v40, -1, -1);
      MEMORY[0x2318A6080](v27, -1, -1);
    }

    else
    {

      sub_22BB344AC(v9, type metadata accessor for FeedbackLearning.FlowTask);
      sub_22BB344AC(v11, type metadata accessor for FeedbackLearning.FlowTask);
    }

    (*(v49 + 8))(v22, v50);
    v41 = 1;
  }

  else
  {
    sub_22BB32FA4(v51);
    v41 = 0;
  }

  v42 = type metadata accessor for FeedbackLearning.TaskEvaluation(0);
  return sub_22BB336D0(v52, v41, 1, v42);
}

uint64_t sub_22BCDA2E0@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = _s19EvaluatorVoteSourceOMa(0);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = v16 - v8;
  v10 = *(a1 + 16);
  v11 = *(v10 + 16);

  for (i = 0; v11 != i; ++i)
  {
    sub_22BBCE8FC();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v11 = i;
      break;
    }

    sub_22BB344AC(v9, _s19EvaluatorVoteSourceOMa);
  }

  v13 = *(v10 + 16);
  if (v11 == v13)
  {
    v14 = 3;
LABEL_11:

    *a2 = v14;
    return result;
  }

  if (v11 >= v13)
  {
    __break(1u);
  }

  else
  {
    sub_22BBCE8FC();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v14 = *v7;
      goto LABEL_11;
    }
  }

  result = sub_22BB344AC(v7, _s19EvaluatorVoteSourceOMa);
  __break(1u);
  return result;
}

uint64_t sub_22BCDA4E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v33 = _s19EvaluatorVoteSourceOMa(0);
  MEMORY[0x28223BE20](v33);
  v4 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22BBE6DE0(&qword_27D8E4340, &qword_22BDC2FA0);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v31 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v30 = &v29 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v29 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v29 - v13;
  v15 = *(a1 + 16);
  v16 = *(v15 + 16);
  v34 = v15;

  for (i = 0; v16 != i; ++i)
  {
    sub_22BBCE8FC();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v19 = _s24StatementExecutionResultOMa(0);
      sub_22BB336D0(v12, 1, 1, v19);
      sub_22BB344AC(v4, _s19EvaluatorVoteSourceOMa);
    }

    else
    {
      sub_22BCE17CC();
      v19 = _s24StatementExecutionResultOMa(0);
      sub_22BB336D0(v12, 0, 1, v19);
    }

    sub_22BCE1778();
    _s24StatementExecutionResultOMa(0);
    v20 = sub_22BB3AA28(v14, 1, v19);
    result = sub_22BB58728(v14, &qword_27D8E4340, &qword_22BDC2FA0);
    if (v20 != 1)
    {
      v16 = i;
      break;
    }
  }

  v21 = *(v34 + 16);
  if (v16 == v21)
  {
    v22 = _s24StatementExecutionResultOMa(0);
    v23 = v32;
    v24 = 1;
LABEL_14:
    sub_22BB336D0(v23, v24, 1, v22);
  }

  if (v16 >= v21)
  {
    __break(1u);
  }

  else
  {
    v25 = v30;
    sub_22BCDC478(v30);
    v26 = v31;
    sub_22BCE098C();
    v27 = _s24StatementExecutionResultOMa(0);
    result = sub_22BB3AA28(v26, 1, v27);
    if (result != 1)
    {
      v28 = v32;
      sub_22BCE17CC();
      sub_22BB58728(v25, &qword_27D8E4340, &qword_22BDC2FA0);
      v23 = v28;
      v24 = 0;
      v22 = v27;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22BCDA8A8@<X0>(uint64_t a1@<X0>, unsigned __int8 a2@<W1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v71 = a4;
  v77 = a3;
  v75 = a1;
  v76 = a5;
  v74 = a2;
  v5 = sub_22BDB4C34();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v67 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v67 = &v67 - v10;
  v11 = sub_22BDB77D4();
  v72 = *(v11 - 8);
  v73 = v11;
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v67 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v68 = &v67 - v15;
  v16 = _s23StatementFailureOutcomeVMa(0);
  MEMORY[0x28223BE20](v16);
  v18 = &v67 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for FeedbackLearning.TaskStatus(0);
  v20 = MEMORY[0x28223BE20](v19 - 8);
  v70 = &v67 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v69 = &v67 - v22;
  v23 = sub_22BBE6DE0(&qword_27D8E4340, &qword_22BDC2FA0);
  MEMORY[0x28223BE20](v23 - 8);
  v25 = &v67 - v24;
  v26 = _s24StatementExecutionResultOMa(0);
  v27 = MEMORY[0x28223BE20](v26);
  v29 = &v67 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v31 = &v67 - v30;
  if (!v74)
  {
    sub_22BDB6404();
    (*(v6 + 16))(v9, v75, v5);
    v44 = sub_22BDB77C4();
    v45 = sub_22BDBB104();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v78 = v47;
      *v46 = 136315138;
      sub_22BCE16D4(&qword_27D8E2F68, MEMORY[0x277D1C338], MEMORY[0x277D1C368]);
      v48 = sub_22BDBB684();
      v50 = v49;
      (*(v6 + 8))(v9, v5);
      v51 = sub_22BB32EE0(v48, v50, &v78);

      *(v46 + 4) = v51;
      _os_log_impl(&dword_22BB2C000, v44, v45, "The final task evaluation vote is abstain, not setting task status for %s", v46, 0xCu);
      sub_22BB32FA4(v47);
      MEMORY[0x2318A6080](v47, -1, -1);
      MEMORY[0x2318A6080](v46, -1, -1);
    }

    else
    {

      (*(v6 + 8))(v9, v5);
    }

    (*(v72 + 8))(v14, v73);
    v55 = v77;
    v56 = sub_22BBE6DE0(&qword_27D8E3DD8, &qword_22BDC1170);
    v57 = v76;
    goto LABEL_13;
  }

  v32 = v75;
  sub_22BCE098C();
  if (sub_22BB3AA28(v25, 1, v26) == 1)
  {
    sub_22BB58728(v25, &qword_27D8E4340, &qword_22BDC2FA0);
    v33 = v68;
    sub_22BDB6404();
    v34 = v67;
    (*(v6 + 16))(v67, v32, v5);
    v35 = sub_22BDB77C4();
    v36 = sub_22BDBB114();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v78 = v38;
      *v37 = 136315138;
      sub_22BCE16D4(&qword_27D8E2F68, MEMORY[0x277D1C338], MEMORY[0x277D1C368]);
      v39 = sub_22BDBB684();
      v40 = v34;
      v42 = v41;
      (*(v6 + 8))(v40, v5);
      v43 = sub_22BB32EE0(v39, v42, &v78);

      *(v37 + 4) = v43;
      _os_log_impl(&dword_22BB2C000, v35, v36, "The task outcome cannot be determined, action execution result was not set for %s", v37, 0xCu);
      sub_22BB32FA4(v38);
      MEMORY[0x2318A6080](v38, -1, -1);
      MEMORY[0x2318A6080](v37, -1, -1);
    }

    else
    {

      (*(v6 + 8))(v34, v5);
    }

    (*(v72 + 8))(v33, v73);
    v55 = v77;
    v57 = v76;
    v56 = sub_22BBE6DE0(&qword_27D8E3DD8, &qword_22BDC1170);
LABEL_13:
    sub_22BB336D0(v57, 1, 4, v56);
    goto LABEL_22;
  }

  sub_22BCE17CC();
  sub_22BBCE8FC();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_22BB344AC(v31, _s24StatementExecutionResultOMa);
      v52 = sub_22BBE6DE0(&qword_27D8E3DD8, &qword_22BDC1170);
      v53 = v70;
      v54 = 3;
      goto LABEL_18;
    case 2u:
      sub_22BCE17CC();
      v58 = v70;
      sub_22BDB4CD4();
      sub_22BB344AC(v18, _s23StatementFailureOutcomeVMa);
      sub_22BB344AC(v31, _s24StatementExecutionResultOMa);
      type metadata accessor for FeedbackLearning.TaskFailureReason(0);
      swift_storeEnumTagMultiPayload();
      v59 = sub_22BBE6DE0(&qword_27D8E3DD8, &qword_22BDC1170);
      v60 = v58;
      v61 = 0;
      goto LABEL_20;
    case 3u:
      sub_22BB344AC(v31, _s24StatementExecutionResultOMa);
      v62 = *(sub_22BBE6DE0(&qword_27D8E3DB0, &qword_22BDC1148) + 48);
      v63 = sub_22BDB8294();
      v64 = v70;
      (*(*(v63 - 8) + 32))(v70, &v29[v62], v63);
      type metadata accessor for FeedbackLearning.TaskFailureReason(0);
      swift_storeEnumTagMultiPayload();
      v65 = sub_22BBE6DE0(&qword_27D8E3DD8, &qword_22BDC1170);
      sub_22BB336D0(v64, 0, 4, v65);
      sub_22BB58728(v29, &qword_27D8E3DB8, &qword_22BDC1150);
      break;
    case 4u:
      sub_22BB344AC(v31, _s24StatementExecutionResultOMa);
      v52 = sub_22BBE6DE0(&qword_27D8E3DD8, &qword_22BDC1170);
      v53 = v70;
      v54 = 4;
      goto LABEL_18;
    case 5u:
      sub_22BB344AC(v31, _s24StatementExecutionResultOMa);
      v59 = sub_22BBE6DE0(&qword_27D8E3DD8, &qword_22BDC1170);
      v60 = v70;
      v61 = 2;
LABEL_20:
      sub_22BB336D0(v60, v61, 4, v59);
      break;
    default:
      sub_22BB344AC(v31, _s24StatementExecutionResultOMa);
      v52 = sub_22BBE6DE0(&qword_27D8E3DD8, &qword_22BDC1170);
      v53 = v70;
      v54 = 2;
LABEL_18:
      sub_22BB336D0(v53, v54, 4, v52);
      sub_22BB344AC(v29, _s24StatementExecutionResultOMa);
      break;
  }

  v55 = v77;
  sub_22BCE17CC();
  v57 = v76;
  sub_22BCE17CC();
LABEL_22:
  result = type metadata accessor for FeedbackLearning.TaskOutcome(0);
  *(v57 + *(result + 20)) = v55;
  return result;
}

uint64_t sub_22BCDB2D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v112 = a1;
  v3 = sub_22BBE6DE0(&qword_27D8E4358, &unk_22BDC2FB0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v85 - v4;
  v6 = sub_22BDB77D4();
  v97 = *(v6 - 8);
  v98 = v6;
  v7 = MEMORY[0x28223BE20](v6);
  v115 = v85 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v89 = v85 - v9;
  v109 = sub_22BDB4354();
  v96 = *(v109 - 8);
  v10 = MEMORY[0x28223BE20](v109);
  v12 = v85 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v91 = v85 - v13;
  v14 = sub_22BDB9D54();
  v15 = *(v14 - 8);
  v101 = v14;
  v102 = v15;
  MEMORY[0x28223BE20](v14);
  v100 = v85 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = sub_22BDB4C34();
  v99 = *(v116 - 8);
  MEMORY[0x28223BE20](v116);
  v18 = v85 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = sub_22BDB9954();
  v92 = *(v114 - 8);
  MEMORY[0x28223BE20](v114);
  v113 = v85 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = sub_22BDB9B14();
  v20 = *(v108 - 8);
  MEMORY[0x28223BE20](v108);
  v107 = v85 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_22BBE6DE0(&qword_27D8E6A80, &unk_22BDC0E70);
  v23 = MEMORY[0x28223BE20](v22 - 8);
  v90 = v85 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v23);
  v94 = v85 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v93 = v85 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v106 = v85 - v30;
  MEMORY[0x28223BE20](v29);
  v95 = v85 - v31;
  v32 = sub_22BBE6DE0(&qword_27D8E4348, &qword_22BDC2FA8);
  MEMORY[0x28223BE20](v32 - 8);
  v34 = v85 - v33;
  v35 = type metadata accessor for FeedbackLearning.FlowExpression(0);
  v36 = MEMORY[0x28223BE20](v35);
  v38 = v85 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = MEMORY[0x28223BE20](v36);
  v41 = v85 - v40;
  MEMORY[0x28223BE20](v39);
  v43 = v85 - v42;
  v44 = type metadata accessor for FeedbackLearning.FlowTask(0);
  sub_22BBDB6C8(*(v112 + *(v44 + 24)), v34);
  if (sub_22BB3AA28(v34, 1, v35) == 1)
  {
    sub_22BB58728(v34, &qword_27D8E4348, &qword_22BDC2FA8);
    sub_22BDB6404();
    v45 = sub_22BDB77C4();
    v46 = sub_22BDBB114();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      *v47 = 0;
      _os_log_impl(&dword_22BB2C000, v45, v46, "The task start expression could not be retrieved, using the current time", v47, 2u);
      MEMORY[0x2318A6080](v47, -1, -1);
    }

    (*(v97 + 8))(v115, v98);
    sub_22BDB4344();
    v48 = sub_22BDB7E54();
    sub_22BB336D0(v5, 1, 1, v48);
    return sub_22BDB7A74();
  }

  v87 = v12;
  v88 = v5;
  v85[1] = a2;
  sub_22BCE17CC();
  v50 = *&v43[*(v35 + 20)];
  v86 = v41;
  sub_22BBCE8FC();
  sub_22BBCE8FC();
  v51 = *(v50 + 2);
  v111 = (v20 + 88);
  v104 = (v20 + 96);
  v105 = (v20 + 8);
  v110 = *MEMORY[0x277D1E6F8];
  v52 = v99 + 1;
  v99 = v102 + 1;
  v102 = (v92 + 8);
  v103 = (v92 + 32);
  v115 = v50;

  v53 = 0;
  v54 = v109;
  v92 = v43;
  v56 = v107;
  v55 = v108;
  v57 = v106;
  v112 = v51;
  while (v53 != v51)
  {
    sub_22BDB9B54();
    sub_22BDB9B24();
    v58 = (*v111)(v56, v55);
    if (v58 == v110)
    {
      (*v104)(v56, v55);
      (*v103)(v113, v56, v114);
      v59 = 0;
      v60 = *(sub_22BDB9914() + 16);
      while (v60 != v59)
      {
        sub_22BDB89F4();
        sub_22BDB8174();
        v61 = sub_22BDB4C04();
        (*v52)(v18, v116);
        ++v59;
        if (v61)
        {

          v62 = v100;
          sub_22BDB9B44();
          v57 = v106;
          sub_22BDB9D44();
          (*v99)(v62, v101);
          (*v102)(v113, v114);
          v63 = v57;
          v64 = 0;
          goto LABEL_14;
        }
      }

      (*v102)(v113, v114);
      v57 = v106;
      v63 = v106;
      v64 = 1;
LABEL_14:
      v54 = v109;
      sub_22BB336D0(v63, v64, 1, v109);
      v56 = v107;
      v55 = v108;
    }

    else
    {
      sub_22BB336D0(v57, 1, 1, v54);
      (*v105)(v56, v55);
    }

    v65 = sub_22BB3AA28(v57, 1, v54);
    sub_22BB58728(v57, &qword_27D8E6A80, &unk_22BDC0E70);
    v51 = v112;
    if (v65 != 1)
    {
      v51 = v53;
      break;
    }

    ++v53;
  }

  v66 = *(v115 + 2);
  v67 = v51 >= v66;
  v68 = v51 == v66;
  v69 = v88;
  v70 = v87;
  v71 = v96;
  v72 = v95;
  v73 = v94;
  v74 = v93;
  v75 = v86;
  if (!v68)
  {
    if (v67)
    {
      __break(1u);
    }

    else
    {
      sub_22BDB9B54();
      sub_22BCDF4D4(v75, v74);
      sub_22BB344AC(v75, type metadata accessor for FeedbackLearning.FlowExpression);
      sub_22BCE098C();
      if (sub_22BB3AA28(v73, 1, v54) != 1)
      {
        (*(v71 + 32))(v72, v73, v54);
        sub_22BB58728(v74, &qword_27D8E6A80, &unk_22BDC0E70);
        v76 = 0;
        goto LABEL_24;
      }
    }

    result = sub_22BB344AC(v38, type metadata accessor for FeedbackLearning.FlowExpression);
    __break(1u);
    return result;
  }

  sub_22BB344AC(v86, type metadata accessor for FeedbackLearning.FlowExpression);
  v76 = 1;
LABEL_24:
  sub_22BB336D0(v72, v76, 1, v54);

  sub_22BB344AC(v38, type metadata accessor for FeedbackLearning.FlowExpression);
  v77 = v90;
  sub_22BCE098C();
  if (sub_22BB3AA28(v77, 1, v54) == 1)
  {
    sub_22BB58728(v77, &qword_27D8E6A80, &unk_22BDC0E70);
    v78 = v89;
    sub_22BDB6404();
    v79 = sub_22BDB77C4();
    v80 = sub_22BDBB114();
    v81 = os_log_type_enabled(v79, v80);
    v82 = v91;
    if (v81)
    {
      v83 = swift_slowAlloc();
      *v83 = 0;
      _os_log_impl(&dword_22BB2C000, v79, v80, "The task occurred time could not be retrieved, using the current time", v83, 2u);
      MEMORY[0x2318A6080](v83, -1, -1);
    }

    (*(v97 + 8))(v78, v98);
    sub_22BDB4344();
    v71 = v96;
  }

  else
  {
    v82 = v91;
    (*(v71 + 32))(v91, v77, v54);
  }

  (*(v71 + 16))(v70, v82, v54);
  v84 = sub_22BDB7E54();
  sub_22BB336D0(v69, 1, 1, v84);
  sub_22BDB7A74();
  (*(v71 + 8))(v82, v54);
  sub_22BB58728(v72, &qword_27D8E6A80, &unk_22BDC0E70);
  return sub_22BB344AC(v92, type metadata accessor for FeedbackLearning.FlowExpression);
}

uint64_t sub_22BCDC0A4@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = sub_22BDB43E4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22BDB77D4();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22BBE6DE0(&qword_27D8E4328, &unk_22BDCC070);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v27 - v14;
  type metadata accessor for FeedbackLearning.FlowTask(0);
  v31 = a2;
  sub_22BD79B10();
  v16 = type metadata accessor for FeedbackLearning.FlowActionEvent(0);
  if (sub_22BB3AA28(v15, 1, v16) == 1)
  {
    v29 = v10;
    v30 = v9;
    sub_22BB58728(v15, &qword_27D8E4328, &unk_22BDCC070);
    sub_22BDB6404();
    (*(v6 + 16))(v8, a2, v5);
    v17 = sub_22BDB77C4();
    v18 = sub_22BDBB114();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v32 = v27;
      *v19 = 136315138;
      sub_22BCE16D4(&qword_28142DD38, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v20 = sub_22BDBB684();
      v28 = a3;
      v22 = v21;
      (*(v6 + 8))(v8, v5);
      v23 = sub_22BB32EE0(v20, v22, &v32);
      a3 = v28;

      *(v19 + 4) = v23;
      _os_log_impl(&dword_22BB2C000, v17, v18, "The referenced created action event cannot be found, actionEventId=%s", v19, 0xCu);
      v24 = v27;
      sub_22BB32FA4(v27);
      MEMORY[0x2318A6080](v24, -1, -1);
      MEMORY[0x2318A6080](v19, -1, -1);
    }

    else
    {

      (*(v6 + 8))(v8, v5);
    }

    (*(v29 + 8))(v12, v30);
    v25 = 1;
  }

  else
  {
    sub_22BCE17CC();
    v25 = 0;
  }

  return sub_22BB336D0(a3, v25, 1, v16);
}

uint64_t sub_22BCDC478@<X0>(uint64_t a1@<X8>)
{
  v2 = _s19EvaluatorVoteSourceOMa(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22BBCE8FC();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = _s24StatementExecutionResultOMa(0);
    sub_22BB336D0(a1, 1, 1, v5);
    return sub_22BB344AC(v4, _s19EvaluatorVoteSourceOMa);
  }

  else
  {
    sub_22BCE17CC();
    v7 = _s24StatementExecutionResultOMa(0);
    return sub_22BB336D0(a1, 0, 1, v7);
  }
}

uint64_t sub_22BCDC5A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v35 = a2;
  v33 = a1;
  v4 = sub_22BBE6DE0(&qword_27D8E4348, &qword_22BDC2FA8);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v31 - v5;
  v7 = sub_22BBE6DE0(&qword_27D8E4328, &unk_22BDCC070);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = (&v31 - v8);
  v36 = sub_22BDB43E4();
  v34 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = _s28StatementResolutionReferenceOMa(0);
  MEMORY[0x28223BE20](v12);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_22BBE6DE0(&qword_27D8E4318, &unk_22BDC2E90);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v31 - v16;
  v18 = _s20TaskStatementOutcomeOMa(0);
  MEMORY[0x28223BE20](v18);
  v20 = &v31 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22BCDCA1C(v17);
  if (sub_22BB3AA28(v17, 1, v18) == 1)
  {
    sub_22BB58728(v17, &qword_27D8E4318, &unk_22BDC2E90);
    v21 = type metadata accessor for FeedbackLearning.TaskFinalResolutionValue(0);
    return sub_22BB336D0(a3, 1, 1, v21);
  }

  else
  {
    v32 = a3;
    sub_22BCE17CC();
    sub_22BD01060(v14);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v23 = v34;
      (*(v34 + 32))(v11, v14, v36);
      v24 = v33;
      sub_22BCDC0A4(v11, v9);
      v25 = type metadata accessor for FeedbackLearning.FlowTask(0);
      v26 = sub_22BD39454(*(v24 + *(v25 + 24)));
      MEMORY[0x28223BE20](v26);
      v27 = v35;
      *(&v31 - 2) = v20;
      *(&v31 - 1) = v27;
      LOBYTE(v24) = sub_22BCD811C(sub_22BCE093C);
      sub_22BB58728(v6, &qword_27D8E4348, &qword_22BDC2FA8);
      sub_22BCDD064(v9, v24 & 1, v32);
      sub_22BB58728(v9, &qword_27D8E4328, &unk_22BDCC070);
      (*(v23 + 8))(v11, v36);
    }

    else
    {
      v28 = sub_22BDB4C34();
      v29 = v32;
      (*(*(v28 - 8) + 32))(v32, v14, v28);
      v30 = type metadata accessor for FeedbackLearning.TaskFinalResolutionValue(0);
      swift_storeEnumTagMultiPayload();
      sub_22BB336D0(v29, 0, 1, v30);
    }

    return sub_22BB344AC(v20, _s20TaskStatementOutcomeOMa);
  }
}

uint64_t sub_22BCDCA1C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_22BBE6DE0(&qword_27D8E3DB8, &qword_22BDC1150);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v24 - v6;
  v8 = _s24StatementExecutionResultOMa(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22BBCE8FC();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_22BCE1778();
      v15 = _s23StatementCreatedOutcomeVMa(0);
      if (sub_22BB3AA28(v7, 1, v15) == 1)
      {
        sub_22BB58728(v7, &qword_27D8E3DB8, &qword_22BDC1150);
        goto LABEL_6;
      }

      sub_22BBCE8FC();
      v19 = _s20TaskStatementOutcomeOMa(0);
      swift_storeEnumTagMultiPayload();
      sub_22BB344AC(v7, _s23StatementCreatedOutcomeVMa);
      goto LABEL_8;
    case 3u:
      sub_22BCE1778();
      v11 = _s23StatementCreatedOutcomeVMa(0);
      if (sub_22BB3AA28(v5, 1, v11) == 1)
      {
        sub_22BB58728(v5, &qword_27D8E3DB8, &qword_22BDC1150);
        v12 = _s20TaskStatementOutcomeOMa(0);
        v13 = a1;
        v14 = 1;
      }

      else
      {
        sub_22BBCE8FC();
        v21 = _s20TaskStatementOutcomeOMa(0);
        swift_storeEnumTagMultiPayload();
        sub_22BB344AC(v5, _s23StatementCreatedOutcomeVMa);
        v13 = a1;
        v14 = 0;
        v12 = v21;
      }

      sub_22BB336D0(v13, v14, 1, v12);
      v22 = *(sub_22BBE6DE0(&qword_27D8E3DB0, &qword_22BDC1148) + 48);
      v23 = sub_22BDB8294();
      return (*(*(v23 - 8) + 8))(&v10[v22], v23);
    case 4u:
      return sub_22BCE1778();
    case 5u:
LABEL_6:
      v16 = _s20TaskStatementOutcomeOMa(0);
      v17 = a1;
      v18 = 1;
      return sub_22BB336D0(v17, v18, 1, v16);
    default:
      sub_22BCE17CC();
      v19 = _s20TaskStatementOutcomeOMa(0);
      swift_storeEnumTagMultiPayload();
LABEL_8:
      v17 = a1;
      v18 = 0;
      v16 = v19;
      return sub_22BB336D0(v17, v18, 1, v16);
  }
}

uint64_t sub_22BCDCE08@<X0>(uint64_t a1@<X0>, void *a2@<X2>, _BYTE *a3@<X8>)
{
  v6 = _s20TaskStatementOutcomeOMa(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v20[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22BDB4C34();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v20[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v12, a1, v9);
  v13 = sub_22BB69FEC(a2, a2[3]);
  v14 = _s19TranscriptRetrieverVMa(0);
  sub_22BB69088(v13 + *(v14 + 20), v20);
  sub_22BB69FEC(v20, v20[3]);
  _s14ActionExecutedVMa(0);
  sub_22BBCE8FC();
  if (swift_getEnumCaseMultiPayload())
  {

    sub_22BB344AC(v8, _s20TaskStatementOutcomeOMa);
    sub_22BBBCB1C();
    v16 = v15;

    (*(v10 + 8))(v12, v9);
    v17 = v16 ^ 1;
  }

  else
  {
    (*(v10 + 8))(v12, v9);
    sub_22BB344AC(v8, _s20TaskStatementOutcomeOMa);
    v17 = 0;
  }

  result = sub_22BB32FA4(v20);
  *a3 = v17 & 1;
  return result;
}

uint64_t sub_22BCDD064@<X0>(void *a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v49 = a1;
  v44 = a2;
  v50 = a3;
  v3 = sub_22BDB77D4();
  v46 = *(v3 - 8);
  v47 = v3;
  MEMORY[0x28223BE20](v3);
  v45 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22BDB8E14();
  v48 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22BBE6DE0(&qword_27D8E2FC0, &qword_22BDBFB90);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v41 - v9;
  v11 = sub_22BDBA014();
  v42 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_22BBE6DE0(&qword_27D8E4328, &unk_22BDCC070);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v41 - v15;
  v17 = type metadata accessor for FeedbackLearning.FlowActionEvent(0);
  v18 = MEMORY[0x28223BE20](v17);
  v43 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v21 = &v41 - v20;
  sub_22BCE098C();
  if (sub_22BB3AA28(v16, 1, v17) == 1)
  {
    sub_22BB58728(v16, &qword_27D8E4328, &unk_22BDCC070);
    v22 = type metadata accessor for FeedbackLearning.TaskFinalResolutionValue(0);
    v23 = v50;
LABEL_9:
    v38 = 1;
    return sub_22BB336D0(v23, v38, 1, v22);
  }

  sub_22BCE17CC();
  sub_22BD1D4C0();
  sub_22BCB51B4();
  (*(v48 + 8))(v7, v5);
  if (sub_22BB3AA28(v10, 1, v11) == 1)
  {
    sub_22BB58728(v10, &qword_27D8E2FC0, &qword_22BDBFB90);
    v24 = v45;
    sub_22BDB6404();
    v25 = v43;
    sub_22BBCE8FC();
    v26 = sub_22BDB77C4();
    v27 = sub_22BDBB114();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v51 = v49;
      *v28 = 136315138;
      sub_22BD1D4C0();
      v29 = sub_22BDBAC14();
      v31 = v30;
      sub_22BB344AC(v25, type metadata accessor for FeedbackLearning.FlowActionEvent);
      v32 = sub_22BB32EE0(v29, v31, &v51);

      *(v28 + 4) = v32;
      _os_log_impl(&dword_22BB2C000, v26, v27, "The referenced action tool definition cannot be extracted, tool=%s", v28, 0xCu);
      v33 = v49;
      sub_22BB32FA4(v49);
      MEMORY[0x2318A6080](v33, -1, -1);
      MEMORY[0x2318A6080](v28, -1, -1);
    }

    else
    {

      sub_22BB344AC(v25, type metadata accessor for FeedbackLearning.FlowActionEvent);
    }

    (*(v46 + 8))(v24, v47);
    sub_22BB344AC(v21, type metadata accessor for FeedbackLearning.FlowActionEvent);
    v39 = v50;
    v22 = type metadata accessor for FeedbackLearning.TaskFinalResolutionValue(0);
    v23 = v39;
    goto LABEL_9;
  }

  v34 = *(v42 + 32);
  v34(v13, v10, v11);
  v35 = v50;
  sub_22BCE17CC();
  v36 = type metadata accessor for FeedbackLearning.TaskAction(0);
  v34((v35 + *(v36 + 20)), v13, v11);
  *(v35 + *(v36 + 24)) = v44 & 1;
  v37 = type metadata accessor for FeedbackLearning.TaskFinalResolutionValue(0);
  swift_storeEnumTagMultiPayload();
  v23 = v35;
  v38 = 0;
  v22 = v37;
  return sub_22BB336D0(v23, v38, 1, v22);
}

void sub_22BCDD668(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v193 = a3;
  v168 = a2;
  v157 = type metadata accessor for FeedbackLearning.CandidateEvaluation(0);
  v158 = *(v157 - 8);
  v4 = MEMORY[0x28223BE20](v157);
  v166 = &v136 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v197 = &v136 - v6;
  v143 = _s23ParameterCandidateValueVMa(0);
  v142 = *(v143 - 8);
  MEMORY[0x28223BE20](v143);
  v177 = &v136 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22BDB7B44();
  v9 = *(v8 - 8);
  v195 = v8;
  v196 = v9;
  v10 = MEMORY[0x28223BE20](v8);
  v194 = &v136 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v141 = &v136 - v12;
  v146 = sub_22BDBA594();
  v145 = *(v146 - 8);
  v13 = MEMORY[0x28223BE20](v146);
  v147 = &v136 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v149 = &v136 - v15;
  v16 = sub_22BDB80F4();
  v182 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v18 = (&v136 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = sub_22BBE6DE0(&qword_27D8E27C0, &qword_22BDBCDF0);
  v20 = MEMORY[0x28223BE20](v19 - 8);
  v191 = &v136 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v190 = &v136 - v22;
  v23 = sub_22BDB4C34();
  v24 = *(v23 - 8);
  v25 = MEMORY[0x28223BE20](v23);
  v144 = &v136 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v25);
  v172 = &v136 - v28;
  MEMORY[0x28223BE20](v27);
  v189 = &v136 - v29;
  v192 = sub_22BDB89F4();
  v30 = *(v192 - 1);
  MEMORY[0x28223BE20](v192);
  v32 = &v136 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v154 = sub_22BDB9B14();
  v33 = *(v154 - 8);
  MEMORY[0x28223BE20](v154);
  v171 = &v136 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v170 = sub_22BDB9954();
  v35 = *(v170 - 8);
  MEMORY[0x28223BE20](v170);
  v169 = &v136 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = type metadata accessor for FeedbackLearning.FlowExpression(0);
  v139 = *(v37 - 8);
  MEMORY[0x28223BE20](v37 - 8);
  v140 = &v136 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v175 = sub_22BDB9B54();
  v39 = *(v175 - 8);
  MEMORY[0x28223BE20](v175);
  v174 = &v136 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v156 = sub_22BBBB918(v193);
  v137 = type metadata accessor for FeedbackLearning.FlowTask(0);
  v41 = *(v137 + 28);
  v138 = a1;
  v42 = *(a1 + v41);
  v43 = *(v42 + 16);
  v179 = v24;
  v180 = v23;
  v167 = v43;
  if (v43)
  {
    v188 = v18;
    v178 = v16;
    v44 = 0;
    v165 = v42 + ((*(v39 + 80) + 32) & ~*(v39 + 80));
    v164 = v39 + 16;
    v163 = (v33 + 88);
    v162 = *MEMORY[0x277D1E6F8];
    v161 = (v39 + 8);
    v153 = (v33 + 8);
    v152 = (v33 + 96);
    v151 = (v35 + 32);
    v187 = (v30 + 16);
    v186 = (v182 + 11);
    LODWORD(v185) = *MEMORY[0x277D1DAE0];
    LODWORD(v184) = *MEMORY[0x277D1DAB8];
    v148 = v30;
    v183 = (v30 + 8);
    ++v182;
    v181 = (v24 + 32);
    v45 = MEMORY[0x277D84F90];
    v150 = (v35 + 8);
    v46 = v192;
    v47 = v154;
    v48 = v175;
    v160 = v39;
    v159 = v42;
    while (v44 < *(v42 + 16))
    {
      v49 = *(v39 + 72);
      v176 = v44;
      v50 = v174;
      (*(v39 + 16))(v174, v165 + v49 * v44, v48);
      v51 = v171;
      sub_22BDB9B24();
      v52 = (*v163)(v51, v47);
      if (v52 == v162)
      {
        (*v152)(v51, v47);
        (*v151)(v169, v51, v170);
        v53 = sub_22BDB9914();
        v54 = *(v53 + 16);
        if (v54)
        {
          v173 = v45;
          v55 = (*(v148 + 80) + 32) & ~*(v148 + 80);
          v155 = v53;
          v56 = v53 + v55;
          v57 = *(v148 + 72);
          v192 = *(v148 + 16);
          v193 = v57;
          v58 = MEMORY[0x277D84F90];
          v59 = v178;
          do
          {
            (v192)(v32, v56, v46);
            v60 = v46;
            v61 = v188;
            sub_22BDB89D4();
            v62 = (*v186)(v61, v59);
            if (v62 == v185 || v62 == v184)
            {
              (*v182)(v61, v59);
              v64 = v191;
              sub_22BDB8174();
              (*v183)(v32, v60);
              sub_22BB336D0(v64, 0, 1, v23);
            }

            else
            {
              (*v183)(v32, v60);
              sub_22BB336D0(v191, 1, 1, v23);
              (*v182)(v61, v59);
            }

            v46 = v60;
            v65 = v190;
            sub_22BCE1778();
            if (sub_22BB3AA28(v65, 1, v23) == 1)
            {
              sub_22BB58728(v65, &qword_27D8E27C0, &qword_22BDBCDF0);
            }

            else
            {
              v66 = *v181;
              (*v181)(v189, v65, v23);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                sub_22BBB22CC();
                v58 = v69;
              }

              v67 = *(v58 + 16);
              if (v67 >= *(v58 + 24) >> 1)
              {
                sub_22BBB22CC();
                v58 = v70;
              }

              *(v58 + 16) = v67 + 1;
              v68 = v58 + ((*(v179 + 80) + 32) & ~*(v179 + 80)) + *(v179 + 72) * v67;
              v23 = v180;
              v66(v68, v189, v180);
              v59 = v178;
            }

            v56 += v193;
            --v54;
          }

          while (v54);

          v45 = v173;
          v24 = v179;
        }

        else
        {

          v58 = MEMORY[0x277D84F90];
        }

        (*v150)(v169, v170);
        (*v161)(v174, v175);
        v47 = v154;
      }

      else
      {
        (*v161)(v50, v48);
        (*v153)(v51, v47);
        v58 = MEMORY[0x277D84F90];
      }

      v71 = *(v58 + 16);
      v72 = *(v45 + 16);
      if (__OFADD__(v72, v71))
      {
        goto LABEL_92;
      }

      if (!swift_isUniquelyReferenced_nonNull_native() || v72 + v71 > *(v45 + 24) >> 1)
      {
        sub_22BBB22CC();
        v45 = v73;
      }

      if (*(v58 + 16))
      {
        if ((*(v45 + 24) >> 1) - *(v45 + 16) < v71)
        {
          goto LABEL_94;
        }

        swift_arrayInitWithCopy();

        v48 = v175;
        v39 = v160;
        v42 = v159;
        v74 = v176;
        if (v71)
        {
          v75 = *(v45 + 16);
          v76 = __OFADD__(v75, v71);
          v77 = v75 + v71;
          if (v76)
          {
            goto LABEL_98;
          }

          *(v45 + 16) = v77;
        }
      }

      else
      {

        v48 = v175;
        v39 = v160;
        v42 = v159;
        v74 = v176;
        if (v71)
        {
          goto LABEL_93;
        }
      }

      v44 = v74 + 1;
      if (v44 == v167)
      {
        goto LABEL_38;
      }
    }

    __break(1u);
LABEL_92:
    __break(1u);
LABEL_93:
    __break(1u);
LABEL_94:
    __break(1u);
LABEL_95:
    __break(1u);
LABEL_96:
    __break(1u);
LABEL_97:
    __break(1u);
LABEL_98:
    __break(1u);
LABEL_99:
    __break(1u);
LABEL_100:
    __break(1u);
LABEL_101:
    __break(1u);
  }

  else
  {
    v45 = MEMORY[0x277D84F90];
LABEL_38:
    v78 = *(v138 + *(v137 + 24));
    v79 = *(v78 + 16);
    if (!v79)
    {
LABEL_50:

      return;
    }

    v80 = 0;
    v81 = *(type metadata accessor for FeedbackLearning.FlowExpressionValue(0) + 24);
    v82 = (v78 + ((*(v139 + 80) + 32) & ~*(v139 + 80)));
    v188 = (v24 + 8);
    v189 = (v24 + 16);
    v173 = v45;
    v192 = v82;
    v193 = v81;
    while (v80 < *(v78 + 16))
    {
      sub_22BBCE8FC();
      ++v80;
      v83 = FeedbackLearning.FlowExpressionValue.FlowExpressionType.referredStatements.getter();
      v84 = 0;
      v85 = *(v83 + 16);
LABEL_42:
      if (v84 != v85)
      {
        if (v84 >= *(v83 + 16))
        {
          goto LABEL_101;
        }

        v86 = (*(v179 + 80) + 32) & ~*(v179 + 80);
        v191 = *(v179 + 72);
        v187 = *(v179 + 16);
        v187(v172, v83 + v86 + v191 * v84++, v180);
        v87 = (v173 + v86);
        v88 = *(v173 + 16) + 1;
        v186 = v87;
        do
        {
          if (!--v88)
          {
            (*v188)(v172, v180);
            goto LABEL_42;
          }

          v89 = &v87[v191];
          sub_22BCE16D4(&qword_28142DD10, MEMORY[0x277D1C338], MEMORY[0x277D1C358]);
          v87 = v89;
        }

        while ((sub_22BDBABD4() & 1) == 0);
        v90 = v180;
        v185 = *v188;
        v185(v172, v180);
        sub_22BB344AC(v140, type metadata accessor for FeedbackLearning.FlowExpression);

        v184 = *(v173 + 16);
        if (!v184)
        {
LABEL_78:

          sub_22BD1D364();
          v120 = v119;
          v121 = 0;
          v188 = *(v168 + 16);
          v122 = v119 + 56;
          v193 = v196 + 16;
          v189 = MEMORY[0x277D84F90];
          v123 = v194;
LABEL_79:
          while (v121 != v188)
          {
            v124 = (*(v158 + 80) + 32) & ~*(v158 + 80);
            v125 = *(v158 + 72);
            v192 = (v121 + 1);
            v190 = v125;
            v191 = v124;
            sub_22BBCE8FC();
            if (*(v120 + 16))
            {
              sub_22BCE16D4(&qword_27D8E3070, MEMORY[0x277D1D608], MEMORY[0x277D1D618]);
              v126 = sub_22BDBABA4();
              v127 = ~(-1 << *(v120 + 32));
              while (1)
              {
                v128 = v126 & v127;
                if (((*(v122 + (((v126 & v127) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v126 & v127)) & 1) == 0)
                {
                  break;
                }

                v129 = v195;
                v130 = v196;
                (*(v196 + 16))(v123, *(v120 + 48) + *(v196 + 72) * v128, v195);
                sub_22BCE16D4(&qword_27D8E3078, MEMORY[0x277D1D608], MEMORY[0x277D1D620]);
                v131 = sub_22BDBABD4();
                (*(v130 + 8))(v123, v129);
                v126 = v128 + 1;
                if (v131)
                {
                  sub_22BB344AC(v197, type metadata accessor for FeedbackLearning.CandidateEvaluation);
                  v121 = v192;
                  goto LABEL_79;
                }
              }
            }

            sub_22BCE17CC();
            v132 = v189;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v198 = v132;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_22BD283B0(0, *(v132 + 2) + 1, 1);
              v132 = v198;
            }

            v135 = *(v132 + 2);
            v134 = *(v132 + 3);
            if (v135 >= v134 >> 1)
            {
              sub_22BD283B0(v134 > 1, v135 + 1, 1);
              v132 = v198;
            }

            *(v132 + 2) = v135 + 1;
            v189 = v132;
            sub_22BCE17CC();
            v121 = v192;
          }

          return;
        }

        v91 = 0;
        v92 = v145;
        v182 = v145 + 4;
        v183 = (v145 + 2);
        v93 = v195;
        v192 = (v196 + 32);
        v193 = v196 + 16;
        v181 = (v145 + 1);
        v190 = MEMORY[0x277D84F90];
        v94 = v146;
        v95 = v144;
        v96 = v156;
        while (v91 < *(v173 + 16))
        {
          v187(v95, &v186[v91 * v191], v90);
          if (*(v96 + 16) && (sub_22BBDAE68(), (v98 & 1) != 0))
          {
            v99 = v147;
            (v92[2])(v147, *(v96 + 56) + v92[9] * v97, v94);
            (v92[4])(v149, v99, v94);
            sub_22BCB3AC0();
            if (v100)
            {
              v101 = v100;
              v102 = *(v100 + 16);
              v103 = MEMORY[0x277D84F90];
              if (v102)
              {
                v198 = MEMORY[0x277D84F90];
                sub_22BD27D08(0, v102, 0);
                v103 = v198;
                v104 = *(v142 + 80);
                v179 = v101;
                v105 = v101 + ((v104 + 32) & ~v104);
                v106 = *(v142 + 72);
                v107 = v143;
                v108 = v141;
                do
                {
                  v109 = v177;
                  sub_22BBCE8FC();
                  (*v193)(v108, v109 + *(v107 + 20), v93);
                  sub_22BB344AC(v109, _s23ParameterCandidateValueVMa);
                  v198 = v103;
                  v111 = *(v103 + 2);
                  v110 = *(v103 + 3);
                  if (v111 >= v110 >> 1)
                  {
                    sub_22BD27D08(v110 > 1, v111 + 1, 1);
                    v107 = v143;
                    v103 = v198;
                  }

                  *(v103 + 2) = v111 + 1;
                  (*(v196 + 32))(&v103[((*(v196 + 80) + 32) & ~*(v196 + 80)) + *(v196 + 72) * v111], v108, v93);
                  v105 += v106;
                  --v102;
                }

                while (v102);

                v94 = v146;
                v92 = v145;
                v90 = v180;
                v95 = v144;
              }

              else
              {
              }
            }

            else
            {
              v103 = MEMORY[0x277D84F90];
            }

            (*v181)(v149, v94);
          }

          else
          {
            v103 = MEMORY[0x277D84F90];
          }

          v112 = v190;
          v185(v95, v90);
          v113 = *(v103 + 2);
          v114 = *(v112 + 2);
          if (__OFADD__(v114, v113))
          {
            goto LABEL_96;
          }

          if (!swift_isUniquelyReferenced_nonNull_native() || v114 + v113 > *(v112 + 3) >> 1)
          {
            sub_22BD8FAC4();
            v112 = v115;
          }

          v90 = v180;
          v116 = *(v103 + 2);
          v190 = v112;
          if (v116)
          {
            if ((*(v112 + 3) >> 1) - *(v112 + 2) < v113)
            {
              goto LABEL_99;
            }

            swift_arrayInitWithCopy();

            v96 = v156;
            if (v113)
            {
              v117 = *(v190 + 2);
              v76 = __OFADD__(v117, v113);
              v118 = v117 + v113;
              if (v76)
              {
                goto LABEL_100;
              }

              *(v190 + 2) = v118;
            }
          }

          else
          {

            v96 = v156;
            if (v113)
            {
              goto LABEL_97;
            }
          }

          if (++v91 == v184)
          {
            goto LABEL_78;
          }
        }

        goto LABEL_95;
      }

      sub_22BB344AC(v140, type metadata accessor for FeedbackLearning.FlowExpression);

      if (v80 == v79)
      {
        goto LABEL_50;
      }
    }
  }

  __break(1u);
}

uint64_t sub_22BCDED68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = type metadata accessor for FeedbackLearning.FlowExpressionValue.FlowExpressionType(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for FeedbackLearning.FlowExpressionValue(0);
  sub_22BBCE8FC();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v12 = sub_22BDB4C34();
      (*(*(v12 - 8) + 8))(v10, v12);
    }

    v13 = 0;
  }

  else
  {
    sub_22BB344AC(v10, type metadata accessor for FeedbackLearning.FlowExpressionValue.FlowExpressionType);
    v13 = 1;
  }

  v14 = sub_22BB69FEC(a5, a5[3]);
  v15 = sub_22BCE0A58(a2, a4, v14, v13);
  return sub_22BBD5D38(v15);
}

uint64_t sub_22BCDEED4@<X0>(uint64_t a1@<X0>, void *a2@<X1>, char *a3@<X8>)
{
  v6 = _s33CandidateParameterResolutionStateVMa(0);
  v7 = v6 - 8;
  MEMORY[0x28223BE20](v6);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22BDB4C34();
  v22 = *(*(v10 - 8) + 16);
  v22(v9, a1, v10);
  v11 = sub_22BB69FEC(a2, a2[3]);
  v12 = _s19TranscriptRetrieverVMa(0);
  sub_22BB69088(v11 + *(v12 + 20), &v9[*(v7 + 28)]);
  v13 = sub_22BB69FEC(a2, a2[3]);
  sub_22BB69088(v13 + *(v12 + 28), &v9[*(v7 + 32)]);
  v14 = _s16CandidateSummaryVMa(0);
  v15 = v14[7];
  sub_22BCB26FC();
  sub_22BB344AC(v9, _s33CandidateParameterResolutionStateVMa);
  LOBYTE(v11) = v23;
  v22(a3, a1, v10);
  v16 = type metadata accessor for FeedbackLearning.CandidateEvaluation(0);
  sub_22BBCE8FC();
  sub_22BBCE8FC();
  v17 = v16[7];
  v18 = sub_22BDB7B44();
  result = (*(*(v18 - 8) + 16))(&a3[v17], a1 + v15, v18);
  v20 = *(a1 + v14[8]);
  v21 = *(a1 + v14[9]);
  a3[v16[8]] = v11;
  a3[v16[9]] = v20;
  *&a3[v16[10]] = v21;
  return result;
}

uint64_t sub_22BCDF124@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_22BDB7B44();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22BDBA964();
  v10 = sub_22BDB4C34();
  (*(*(v10 - 8) + 16))(a3, a2, v10);
  v11 = type metadata accessor for FeedbackLearning.CandidateEvaluation(0);
  type metadata accessor for FeedbackLearning.CandidateParameter(0);
  swift_storeEnumTagMultiPayload();
  v12 = v11[6];
  v13 = sub_22BDBA994();
  (*(*(v13 - 8) + 16))(a3 + v12, a1, v13);
  type metadata accessor for FeedbackLearning.CandidateDefinition(0);
  swift_storeEnumTagMultiPayload();
  (*(v7 + 32))(a3 + v11[7], v9, v6);
  v14 = *(a2 + v11[9]);
  v15 = *(a2 + v11[10]);
  *(a3 + v11[8]) = *(a2 + v11[8]);
  *(a3 + v11[9]) = v14;
  *(a3 + v11[10]) = v15;
  return sub_22BB336D0(a3, 0, 1, v11);
}

uint64_t sub_22BCDF310@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  if (*(a2 + 16) && (sub_22BD84634(a3), (v10 & 1) != 0) && (_s27StatementParameterCandidateVMa(0), , sub_22BC1E6E0(), v12 = v11, , (v12 & 1) != 0))
  {
    v13 = _s16CandidateSummaryVMa(0);
    v14 = a6;
    v15 = 1;
  }

  else
  {
    v16 = sub_22BDB4C34();
    (*(*(v16 - 8) + 16))(a6, a5, v16);
    v17 = _s16CandidateSummaryVMa(0);
    sub_22BBCE8FC();
    sub_22BBCE8FC();
    v18 = *(_s27StatementParameterCandidateVMa(0) + 20);
    v19 = v17[7];
    v20 = sub_22BDB7B44();
    (*(*(v20 - 8) + 16))(a6 + v19, a1 + v18, v20);
    *(a6 + v17[8]) = -126;
    *(a6 + v17[9]) = a4 & 1;
    v14 = a6;
    v15 = 0;
    v13 = v17;
  }

  return sub_22BB336D0(v14, v15, 1, v13);
}

uint64_t sub_22BCDF4D4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v23 = a1;
  v3 = sub_22BDB9D54();
  v21 = *(v3 - 8);
  v22 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22BDB9954();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22BDB9B14();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22BDB9B24();
  if ((*(v11 + 88))(v13, v10) == *MEMORY[0x277D1E6F8])
  {
    (*(v11 + 96))(v13, v10);
    (*(v7 + 32))(v9, v13, v6);
    v14 = sub_22BDB9914();
    MEMORY[0x28223BE20](v14);
    *(&v21 - 2) = v23;
    v15 = sub_22BD7280C(sub_22BCE09E0, (&v21 - 4), v14);

    if (v15)
    {
      sub_22BDB9B44();
      sub_22BDB9D44();
      (*(v21 + 8))(v5, v22);
      (*(v7 + 8))(v9, v6);
      v16 = sub_22BDB4354();
      v17 = a2;
      v18 = 0;
    }

    else
    {
      (*(v7 + 8))(v9, v6);
      v16 = sub_22BDB4354();
      v17 = a2;
      v18 = 1;
    }

    return sub_22BB336D0(v17, v18, 1, v16);
  }

  else
  {
    v19 = sub_22BDB4354();
    sub_22BB336D0(a2, 1, 1, v19);
    return (*(v11 + 8))(v13, v10);
  }
}

uint64_t sub_22BCDF834(uint64_t a1, uint64_t a2)
{
  v2 = sub_22BDB4C34();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22BDB8174();
  v6 = sub_22BDB4C04();
  (*(v3 + 8))(v5, v2);
  return v6 & 1;
}

void sub_22BCDF920(uint64_t a1)
{
  v7 = sub_22BBE6DE0(&qword_27D8E4388, &qword_22BDC3010);
  v8 = sub_22BB2F0C8(v7);
  MEMORY[0x28223BE20](v8);
  sub_22BB30C74();
  v11 = v9 - v10;
  MEMORY[0x28223BE20](v12);
  sub_22BB2F39C();
  v13 = sub_22BB2F120();
  v14 = _s23ParameterCandidateValueVMa(v13);
  sub_22BB30444();
  MEMORY[0x28223BE20](v15);
  sub_22BB305A8();
  sub_22BB380F8(v16);
  sub_22BB37030(MEMORY[0x277D84F90]);
  while (1)
  {
    while (1)
    {
      if (!v3)
      {
        goto LABEL_5;
      }

      v17 = *(v3 + 16);
      if (v5 == v17)
      {
        break;
      }

      if (v5 >= v17)
      {
        goto LABEL_36;
      }

      sub_22BB6BB04();
      sub_22BBCE8FC();
      v21 = sub_22BB3A260(v11, 0);
      sub_22BB6B6B8(v21);
      if (sub_22BB3AA28(v1, 1, v14) == 1)
      {
        goto LABEL_31;
      }

      sub_22BCE17CC();
      v22 = v40;
      if (!v40)
      {
        sub_22BB58874();
        if (v23)
        {
          goto LABEL_39;
        }

        v24 = sub_22BBE6DE0(&qword_27D8E4390, &qword_22BDC3018);
        v41 = sub_22BB37520(v24);
        v25 = j__malloc_size(v41);
        if (!v39)
        {
          goto LABEL_40;
        }

        if (v25 - v1 == 0x8000000000000000 && v39 == -1)
        {
          goto LABEL_41;
        }

        v27 = sub_22BB36DDC(v25 - v1);
        if (v32)
        {
          if (v30 < v27 || v31 >= v27 + v28 + v29)
          {
            sub_22BB34334();
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v30 != v27)
          {
            sub_22BB34334();
            swift_arrayInitWithTakeBackToFront();
          }

          *(v42 + 16) = 0;
        }

        sub_22BB529B4();
        v22 = v1;
      }

      v34 = __OFSUB__(v22, 1);
      v35 = v22 - 1;
      if (v34)
      {
        goto LABEL_37;
      }

      v40 = v35;
      ++v5;
      sub_22BB3AD74();
      sub_22BB94E44();
    }

    v18 = sub_22BB3A260(v11, 1);
    sub_22BB58728(v18, &qword_27D8E4388, &qword_22BDC3010);
LABEL_5:
    v19 = *(a1 + 16);
    if (v4 == v19)
    {
      break;
    }

    if (v4 >= v19)
    {
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    v1 = v4 + 1;
    v20 = *(v2 + 8 * v4);

    v5 = 0;
    v3 = v20;
    v4 = v1;
  }

  sub_22BB692AC();
LABEL_31:

  sub_22BB58728(v1, &qword_27D8E4388, &qword_22BDC3010);
  v36 = *(v42 + 24);
  if (v36 < 2)
  {
    return;
  }

  v37 = v36 >> 1;
  v34 = __OFSUB__(v37, v40);
  v38 = v37 - v40;
  if (!v34)
  {
    *(v42 + 16) = v38;
    return;
  }

LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
}

void sub_22BCDFC54(uint64_t a1)
{
  v7 = sub_22BBE6DE0(&qword_27D8E3EA8, &qword_22BDC1378);
  v8 = sub_22BB2F0C8(v7);
  MEMORY[0x28223BE20](v8);
  sub_22BB30C74();
  v11 = v9 - v10;
  MEMORY[0x28223BE20](v12);
  sub_22BB2F39C();
  v13 = sub_22BB2F120();
  v14 = _s15CandidateResultVMa(v13);
  sub_22BB30444();
  MEMORY[0x28223BE20](v15);
  sub_22BB305A8();
  sub_22BB380F8(v16);
  sub_22BB37030(MEMORY[0x277D84F90]);
  while (1)
  {
    while (1)
    {
      if (!v3)
      {
        goto LABEL_5;
      }

      v17 = *(v3 + 16);
      if (v5 == v17)
      {
        break;
      }

      if (v5 >= v17)
      {
        goto LABEL_36;
      }

      sub_22BB6BB04();
      sub_22BBCE8FC();
      v21 = sub_22BB3A260(v11, 0);
      sub_22BB6B6B8(v21);
      if (sub_22BB3AA28(v1, 1, v14) == 1)
      {
        goto LABEL_31;
      }

      sub_22BCE17CC();
      v22 = v40;
      if (!v40)
      {
        sub_22BB58874();
        if (v23)
        {
          goto LABEL_39;
        }

        v24 = sub_22BBE6DE0(&qword_27D8E3EB8, &unk_22BDC3000);
        v41 = sub_22BB37520(v24);
        v25 = j__malloc_size(v41);
        if (!v39)
        {
          goto LABEL_40;
        }

        if (v25 - v1 == 0x8000000000000000 && v39 == -1)
        {
          goto LABEL_41;
        }

        v27 = sub_22BB36DDC(v25 - v1);
        if (v32)
        {
          if (v30 < v27 || v31 >= v27 + v28 + v29)
          {
            sub_22BB34334();
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v30 != v27)
          {
            sub_22BB34334();
            swift_arrayInitWithTakeBackToFront();
          }

          *(v42 + 16) = 0;
        }

        sub_22BB529B4();
        v22 = v1;
      }

      v34 = __OFSUB__(v22, 1);
      v35 = v22 - 1;
      if (v34)
      {
        goto LABEL_37;
      }

      v40 = v35;
      ++v5;
      sub_22BB3AD74();
      sub_22BB94E44();
    }

    v18 = sub_22BB3A260(v11, 1);
    sub_22BB58728(v18, &qword_27D8E3EA8, &qword_22BDC1378);
LABEL_5:
    v19 = *(a1 + 16);
    if (v4 == v19)
    {
      break;
    }

    if (v4 >= v19)
    {
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    v1 = v4 + 1;
    v20 = *(v2 + 8 * v4);

    v5 = 0;
    v3 = v20;
    v4 = v1;
  }

  sub_22BB692AC();
LABEL_31:

  sub_22BB58728(v1, &qword_27D8E3EA8, &qword_22BDC1378);
  v36 = *(v42 + 24);
  if (v36 < 2)
  {
    return;
  }

  v37 = v36 >> 1;
  v34 = __OFSUB__(v37, v40);
  v38 = v37 - v40;
  if (!v34)
  {
    *(v42 + 16) = v38;
    return;
  }

LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
}

uint64_t sub_22BCDFFD0(uint64_t a1)
{
  result = sub_22BDB9C14();
  if (v2 <= 0x3F)
  {
    result = sub_22BCE0054();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_22BCE0054()
{
  result = qword_281429480[0];
  if (!qword_281429480[0])
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, qword_281429480);
  }

  return result;
}

unint64_t sub_22BCE00B0()
{
  result = qword_27D8E4350;
  if (!qword_27D8E4350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4350);
  }

  return result;
}

uint64_t sub_22BCE0120(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
  }

  return result;
}

void sub_22BCE0180(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v68 = type metadata accessor for FeedbackLearning.CandidateDefinition(0);
  MEMORY[0x28223BE20](v68);
  v67 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22BBE6DE0(&qword_27D8E2FC0, &qword_22BDBFB90);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v64 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v66 = &v53 - v11;
  v63 = sub_22BDBA014();
  v12 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v60 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_22BDB9774();
  v54 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v53 = &v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = type metadata accessor for FeedbackLearning.CandidateEvaluation(0);
  v65 = *(v70 - 8);
  MEMORY[0x28223BE20](v70);
  v16 = &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = _s19TranscriptRetrieverVMa(0);
  v80 = &off_283F7A608;
  sub_22BB8B8A0(v78, v17, v18, v19, v20, v21, v22, v23);
  sub_22BBCE8FC();
  v24 = *(type metadata accessor for FeedbackLearning.FlowTask(0) + 24);
  v56 = a1;
  v25 = *(a1 + v24);
  v57 = a4;
  v74 = a4;
  v75 = a2;
  v76 = v78;
  v26 = MEMORY[0x277D84F90];
  v27 = sub_22BCD8038(MEMORY[0x277D84F90], sub_22BCE0A00, v73, v25);
  v28 = sub_22BCAD5F0(v27);

  v72 = v78;
  v29 = sub_22BD65758(sub_22BCE0A20, v71, v28);

  v30 = 0;
  v69 = *(v29 + 16);
  v61 = (v12 + 32);
  v59 = (v12 + 8);
  v31 = v26;
  v62 = v29;
  while (1)
  {
    if (v69 == v30)
    {
      v77 = v31;
      sub_22BD66C60(v29);
      v47 = v77;
      v48 = sub_22BB69FEC(v78, v79);
      v49 = v54;
      v50 = v53;
      v51 = v55;
      (*(v54 + 16))(v53, v48, v55);
      v52 = sub_22BDB9744();
      (*(v49 + 8))(v50, v51);
      sub_22BCDD668(v56, v47, v52);

      sub_22BB32FA4(v78);
      return;
    }

    if (v30 >= *(v29 + 16))
    {
      break;
    }

    sub_22BBCE8FC();
    v32 = v67;
    sub_22BBCE8FC();
    if (swift_getEnumCaseMultiPayload())
    {
      sub_22BB344AC(v32, type metadata accessor for FeedbackLearning.CandidateDefinition);
      v33 = 1;
      v34 = v64;
      v35 = v63;
    }

    else
    {
      v34 = v64;
      v35 = v63;
      (*v61)(v64, v32, v63);
      v33 = 0;
    }

    sub_22BB336D0(v34, v33, 1, v35);
    v36 = v66;
    sub_22BCE1778();
    if (sub_22BB3AA28(v36, 1, v35) == 1)
    {
      sub_22BB58728(v36, &qword_27D8E2FC0, &qword_22BDBFB90);
    }

    else
    {
      v37 = v60;
      (*v61)(v60, v36, v35);
      if ((v16[*(v70 + 32)] & 0xFE) == 2)
      {
        sub_22BCB56AC();
        v58 = &v53;
        MEMORY[0x28223BE20](v38);
        *(&v53 - 2) = v16;
        sub_22BCA8D74();
        v40 = v39;

        (*v59)(v37, v35);
        goto LABEL_13;
      }

      (*v59)(v37, v35);
    }

    v40 = MEMORY[0x277D84F90];
LABEL_13:
    sub_22BB344AC(v16, type metadata accessor for FeedbackLearning.CandidateEvaluation);
    v41 = *(v40 + 16);
    v42 = *(v31 + 16);
    if (__OFADD__(v42, v41))
    {
      goto LABEL_26;
    }

    if (!swift_isUniquelyReferenced_nonNull_native() || v42 + v41 > *(v31 + 24) >> 1)
    {
      sub_22BD90F20();
      v31 = v43;
    }

    if (*(v40 + 16))
    {
      if ((*(v31 + 24) >> 1) - *(v31 + 16) < v41)
      {
        goto LABEL_28;
      }

      swift_arrayInitWithCopy();

      v29 = v62;
      if (v41)
      {
        v44 = *(v31 + 16);
        v45 = __OFADD__(v44, v41);
        v46 = v44 + v41;
        if (v45)
        {
          goto LABEL_29;
        }

        *(v31 + 16) = v46;
      }
    }

    else
    {

      v29 = v62;
      if (v41)
      {
        goto LABEL_27;
      }
    }

    ++v30;
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
}

uint64_t sub_22BCE098C()
{
  sub_22BB35F54();
  sub_22BBE6DE0(v1, v2);
  sub_22BB30ED8();
  v3 = sub_22BB31F54();
  v4(v3);
  return v0;
}

uint64_t sub_22BCE0A58(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  LODWORD(v89) = a4;
  v109 = sub_22BDB7B44();
  v5 = *(v109 - 8);
  v6 = MEMORY[0x28223BE20](v109);
  v108 = &v84 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v104 = &v84 - v8;
  v99 = sub_22BDB4C34();
  v88 = *(v99 - 8);
  MEMORY[0x28223BE20](v99);
  v95 = &v84 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = type metadata accessor for FeedbackLearning.CandidateParameter(0);
  v94 = *(v84 - 8);
  v10 = MEMORY[0x28223BE20](v84);
  *&v100 = &v84 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v106 = &v84 - v12;
  v90 = sub_22BDB77D4();
  v87 = *(v90 - 8);
  MEMORY[0x28223BE20](v90);
  v91 = &v84 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = sub_22BBE6DE0(&qword_27D8E3FD8, &qword_22BDC17E0);
  MEMORY[0x28223BE20](v93);
  v98 = &v84 - v14;
  v15 = _s16CandidateSummaryVMa(0);
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v84 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = _s19TranscriptRetrieverVMa(0);
  v113 = v86;
  v114 = &off_283F7A608;
  sub_22BB8B8A0(&v112, v19, v20, v21, v22, v23, v24, v25);
  sub_22BBCE8FC();
  v96 = a1;
  v110 = a1;

  sub_22BDA2ADC();
  v97 = 0;
  v27 = sub_22BCAD5F0(v26);

  v28 = *(v27 + 16);
  v105 = v16;
  v103 = v28;
  v92 = v15;
  if (v28)
  {
    v29 = 0;
    v107 = *(v15 + 20);
    v30 = *(v15 + 28);
    v101 = (v27 + ((*(v16 + 80) + 32) & ~*(v16 + 80)));
    v102 = v30;
    v31 = MEMORY[0x277D84F98];
    while (v29 < *(v27 + 16))
    {
      sub_22BBCE8FC();
      (*(v5 + 16))(v108, v102 + v18, v109);
      swift_isUniquelyReferenced_nonNull_native();
      v111 = v31;
      sub_22BD84634(v18 + v107);
      if (__OFADD__(*(v31 + 16), (v32 & 1) == 0))
      {
        goto LABEL_44;
      }

      v33 = v32;
      sub_22BBE6DE0(&qword_27D8E4360, &qword_22BDC2FC0);
      v34 = sub_22BDBB4A4();
      v31 = v111;
      if (v34)
      {
        sub_22BD84634(v18 + v107);
        if ((v33 & 1) != (v35 & 1))
        {
          goto LABEL_48;
        }
      }

      if ((v33 & 1) == 0)
      {
        sub_22BBCE8FC();
        sub_22BD7DC2C();
      }

      v29 = (v29 + 1);
      v36 = v104;
      sub_22BD2BAC0();
      (*(v5 + 8))(v36, v109);
      sub_22BB344AC(v18, _s16CandidateSummaryVMa);
      v37 = v106;
      if (v103 == v29)
      {
        goto LABEL_12;
      }
    }
  }

  else
  {
    v31 = MEMORY[0x277D84F98];
    v37 = v106;
LABEL_12:
    v38 = sub_22BB69FEC(&v112, v113);
    sub_22BB69FEC((v38 + *(v86 + 28)), *(v38 + *(v86 + 28) + 24));

    v39 = sub_22BD85C50();

    v85 = v27;
    if (!v39)
    {
      sub_22BBE6DE0(&qword_27D8E3E78, &unk_22BDC1340);
      sub_22BCE16D4(&qword_27D8E3F98, type metadata accessor for FeedbackLearning.CandidateParameter, &protocol conformance descriptor for FeedbackLearning.CandidateParameter);
      v39 = sub_22BDBAB14();
    }

    v40 = v99;
    v41 = v39 + 64;
    v42 = 1 << *(v39 + 32);
    v43 = -1;
    if (v42 < 64)
    {
      v43 = ~(-1 << v42);
    }

    v44 = v43 & *(v39 + 64);
    v45 = (v42 + 63) >> 6;
    LODWORD(v104) = v89 & 1;
    v102 = (v88 + 8);
    v103 = (v88 + 16);
    v101 = (v87 + 8);
    v108 = v39;

    v46 = 0;
    v47 = MEMORY[0x277D84F90];
    *&v48 = 136315394;
    v100 = v48;
    v107 = v45;
    while (v44)
    {
      v109 = v47;
      v49 = v95;
LABEL_24:
      v51 = v108;
      v52 = v98;
      v53 = sub_22BBCE8FC();
      v54 = *(*(v51 + 7) + 8 * (__clz(__rbit64(v44)) | (v46 << 6)));
      *(v52 + *(v93 + 48)) = v54;
      if (v54)
      {
        MEMORY[0x28223BE20](v53);
        *(&v84 - 4) = v31;
        *(&v84 - 3) = v52;
        *(&v84 - 16) = v104;
        *(&v84 - 1) = v96;

        v55 = v97;
        sub_22BCA8F78();
        v57 = v56;
        v97 = v55;
      }

      else
      {
        v58 = v91;
        sub_22BDB6404();
        sub_22BBCE8FC();
        v59 = v40;
        (*v103)(v49, v96, v40);
        v60 = v49;
        v61 = sub_22BDB77C4();
        v62 = sub_22BDBB114();
        if (os_log_type_enabled(v61, v62))
        {
          v63 = swift_slowAlloc();
          LODWORD(v88) = v62;
          v64 = v37;
          v65 = v63;
          v89 = swift_slowAlloc();
          v111 = v89;
          *v65 = v100;
          v66 = FeedbackLearning.CandidateParameter.description.getter();
          v68 = v67;
          sub_22BB344AC(v64, type metadata accessor for FeedbackLearning.CandidateParameter);
          v69 = sub_22BB32EE0(v66, v68, &v111);

          *(v65 + 4) = v69;
          *(v65 + 12) = 2080;
          sub_22BCE16D4(&qword_27D8E2F68, MEMORY[0x277D1C338], MEMORY[0x277D1C368]);
          v70 = v99;
          v71 = sub_22BDBB684();
          v73 = v72;
          (*v102)(v60, v70);
          v74 = sub_22BB32EE0(v71, v73, &v111);

          *(v65 + 14) = v74;
          _os_log_impl(&dword_22BB2C000, v61, v88, "Cannot retrieve candidate ids for parameter %s in %s, candidate id is nil", v65, 0x16u);
          v75 = v89;
          swift_arrayDestroy();
          MEMORY[0x2318A6080](v75, -1, -1);
          MEMORY[0x2318A6080](v65, -1, -1);

          (*v101)(v91, v90);
        }

        else
        {

          (*v102)(v60, v59);
          sub_22BB344AC(v37, type metadata accessor for FeedbackLearning.CandidateParameter);
          (*v101)(v58, v90);
        }

        v57 = MEMORY[0x277D84F90];
        v52 = v98;
      }

      sub_22BB58728(v52, &qword_27D8E3FD8, &qword_22BDC17E0);
      v76 = *(v57 + 16);
      v47 = v109;
      v77 = *(v109 + 16);
      if (__OFADD__(v77, v76))
      {
        goto LABEL_45;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0 || v77 + v76 > *(v47 + 24) >> 1)
      {
        sub_22BBD5D64();
        v47 = v78;
      }

      v40 = v99;
      v37 = v106;
      v44 &= v44 - 1;
      if (*(v57 + 16))
      {
        if ((*(v47 + 24) >> 1) - *(v47 + 16) < v76)
        {
          goto LABEL_46;
        }

        swift_arrayInitWithCopy();

        v45 = v107;
        if (v76)
        {
          v79 = *(v47 + 16);
          v80 = __OFADD__(v79, v76);
          v81 = v79 + v76;
          if (v80)
          {
            goto LABEL_47;
          }

          *(v47 + 16) = v81;
        }
      }

      else
      {

        v45 = v107;
        if (v76)
        {
          __break(1u);
LABEL_41:

          v111 = v85;
          sub_22BBD5D38(v47);
          v82 = v111;
          sub_22BB32FA4(&v112);
          return v82;
        }
      }
    }

    v49 = v95;
    while (1)
    {
      v50 = v46 + 1;
      if (__OFADD__(v46, 1))
      {
        break;
      }

      if (v50 >= v45)
      {
        goto LABEL_41;
      }

      v44 = *(v41 + 8 * v50);
      ++v46;
      if (v44)
      {
        v109 = v47;
        v46 = v50;
        goto LABEL_24;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  result = sub_22BDBB744();
  __break(1u);
  return result;
}

uint64_t sub_22BCE16D4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_22BCE1778()
{
  sub_22BB35F54();
  sub_22BBE6DE0(v1, v2);
  sub_22BB30ED8();
  v3 = sub_22BB31F54();
  v4(v3);
  return v0;
}

uint64_t sub_22BCE17CC()
{
  sub_22BB35F54();
  v1(0);
  sub_22BB30ED8();
  v2 = sub_22BB31F54();
  v3(v2);
  return v0;
}

_BYTE *storeEnumTagSinglePayload for TaskEvaluatorError(_BYTE *result, int a2, int a3)
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

unint64_t sub_22BCE18D0()
{
  result = qword_27D8E4398;
  if (!qword_27D8E4398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4398);
  }

  return result;
}

uint64_t sub_22BCE1924(char a1)
{
  v2 = 0xEA00000000006465;
  v3 = 0x6E6F646E6162612ELL;
  switch(a1)
  {
    case 1:
      v2 = 0x800000022BDD30F0;
      v3 = 0xD000000000000015;
      break;
    case 2:
      break;
    case 3:
      v2 = 0xE900000000000064;
      v3 = 0x657463656A65722ELL;
      break;
    default:
      v3 = 0xD000000000000012;
      v2 = 0x800000022BDD3110;
      break;
  }

  MEMORY[0x2318A4C40](v3, v2);
}

void sub_22BCE19F0()
{
  sub_22BB30F94();
  v24 = v4;
  v5 = sub_22BDBA994();
  sub_22BB30444();
  v23 = v6;
  MEMORY[0x28223BE20](v7);
  sub_22BB30574();
  sub_22BD00A30();
  v8 = sub_22BDBA594();
  sub_22BB30444();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  sub_22BB30574();
  sub_22BB345CC();
  v12 = sub_22BDBA014();
  sub_22BB30444();
  v14 = v13;
  MEMORY[0x28223BE20](v15);
  sub_22BB30574();
  sub_22BB72E10();
  type metadata accessor for FeedbackLearning.CandidateDefinition(0);
  sub_22BB2F330();
  MEMORY[0x28223BE20](v16);
  sub_22BB30574();
  sub_22BB36FD8();
  sub_22BB32380();
  sub_22BCF8A8C(v0, v3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_22BB3AE34();
    v20(v2, v3, v12);
    v21 = v24;
    sub_22BDBA004();
    (*(v14 + 8))(v2, v12);
LABEL_6:
    v22 = sub_22BDB7B44();
    sub_22BB336D0(v21, 0, 1, v22);
    goto LABEL_7;
  }

  if (EnumCaseMultiPayload != 1)
  {
    (*(v23 + 32))(v0, v3, v5);
    v21 = v24;
    sub_22BDBA964();
    (*(v23 + 8))(v0, v5);
    goto LABEL_6;
  }

  (*(v10 + 32))(v1, v3, v8);
  sub_22BCB4048();
  v18 = sub_22BB52D78();
  v19(v18);
LABEL_7:
  sub_22BB314EC();
}

uint64_t sub_22BCE1CAC(uint64_t a1)
{
  v2 = sub_22BCE21B0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BCE1CE8(uint64_t a1)
{
  v2 = sub_22BCE21B0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BCE1D24(uint64_t a1)
{
  v2 = sub_22BCE215C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BCE1D60(uint64_t a1)
{
  v2 = sub_22BCE215C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BCE1D9C(uint64_t a1)
{
  v2 = sub_22BCE2258();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BCE1DD8(uint64_t a1)
{
  v2 = sub_22BCE2258();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BCE1E14(uint64_t a1)
{
  v2 = sub_22BCE2204();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BCE1E50(uint64_t a1)
{
  v2 = sub_22BCE2204();

  return MEMORY[0x2821FE720](a1, v2);
}

void FeedbackLearning.ConfirmationPromptResult.encode(to:)()
{
  sub_22BB31014();
  sub_22BBE6DE0(&qword_27D8E43A0, &qword_22BDC30E0);
  sub_22BB30444();
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v1);
  sub_22BB30BA8();
  sub_22BD00CD8(v2);
  sub_22BBE6DE0(&qword_27D8E43A8, &qword_22BDC30E8);
  sub_22BB30444();
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v3);
  sub_22BB38B54(v4, v14);
  sub_22BBE6DE0(&qword_27D8E43B0, &qword_22BDC30F0);
  sub_22BB30444();
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v5);
  sub_22BB3721C();
  sub_22BBE6DE0(&qword_27D8E43B8, &qword_22BDC30F8);
  sub_22BB30444();
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v6);
  sub_22BB34298();
  v7 = *v0;
  v8 = sub_22BD00A24();
  sub_22BB699E4(v8, v9);
  sub_22BCE215C();
  sub_22BD00CC0();
  sub_22BDBB8A4();
  if (v7)
  {
    if (v7 == 1)
    {
      sub_22BB393D0();
      sub_22BCE2204();
    }

    else
    {
      sub_22BB3CF44();
      sub_22BCE21B0();
    }

    sub_22BB31D34();
    sub_22BDBB5F4();
  }

  else
  {
    sub_22BCE2258();
    sub_22BB31D34();
    sub_22BDBB5F4();
  }

  v10 = sub_22BB9607C();
  v11(v10);
  v12 = sub_22BB58D2C();
  v13(v12);
  sub_22BB376A8();
}

unint64_t sub_22BCE215C()
{
  result = qword_27D8E43C0;
  if (!qword_27D8E43C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E43C0);
  }

  return result;
}

unint64_t sub_22BCE21B0()
{
  result = qword_27D8E43C8;
  if (!qword_27D8E43C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E43C8);
  }

  return result;
}

unint64_t sub_22BCE2204()
{
  result = qword_27D8E43D0;
  if (!qword_27D8E43D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E43D0);
  }

  return result;
}

unint64_t sub_22BCE2258()
{
  result = qword_27D8E43D8;
  if (!qword_27D8E43D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E43D8);
  }

  return result;
}

void FeedbackLearning.ConfirmationPromptResult.init(from:)()
{
  sub_22BB31014();
  v4 = v3;
  v44 = v5;
  v48 = sub_22BBE6DE0(&qword_27D8E43E0, &qword_22BDC3100);
  sub_22BB30444();
  v45 = v6;
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v7);
  sub_22BB30BA8();
  sub_22BD00E60(v8);
  sub_22BBE6DE0(&qword_27D8E43E8, &qword_22BDC3108);
  sub_22BB30444();
  v42 = v10;
  v43 = v9;
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v11);
  sub_22BB354DC();
  v12 = sub_22BBE6DE0(&qword_27D8E43F0, &qword_22BDC3110);
  sub_22BB30444();
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v13);
  sub_22BB36808();
  v14 = sub_22BBE6DE0(&qword_27D8E43F8, &unk_22BDC3118);
  sub_22BB30444();
  v46 = v15;
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v16);
  sub_22BB32750();
  v17 = v4[4];
  sub_22BB699E4(v4, v4[3]);
  sub_22BCE215C();
  sub_22BB69544();
  sub_22BDBB894();
  if (!v0)
  {
    v49 = v4;
    v18 = sub_22BDBB5E4();
    sub_22BD00A84(v18);
    if (!v19)
    {
      sub_22BB334EC();
      sub_22BB527F0();
      if (v24 == v25)
      {
        __break(1u);
        return;
      }

      v26 = *(v23 + v21);
      sub_22BB97F40(v20, v21, v23, v22);
      sub_22BD00B8C();
      swift_unknownObjectRelease();
      if (!v17)
      {
        if (v26)
        {
          if (v26 == 1)
          {
            sub_22BB393D0();
            sub_22BCE2204();
            sub_22BB393F8();
            sub_22BDBB554();
            v27 = v44;
            swift_unknownObjectRelease();
            (*(v42 + 8))(v1, v43);
            v36 = sub_22BB3972C();
            v37(v36);
          }

          else
          {
            sub_22BB3CF44();
            sub_22BCE21B0();
            sub_22BB393F8();
            sub_22BDBB554();
            v27 = v44;
            swift_unknownObjectRelease();
            (*(v45 + 8))(v47, v48);
            (*(v46 + 8))(v2, v14);
          }
        }

        else
        {
          sub_22BCE2258();
          sub_22BB393F8();
          sub_22BDBB554();
          swift_unknownObjectRelease();
          v38 = sub_22BB9607C();
          v39(v38, v12);
          v40 = sub_22BB977C4();
          v41(v40, v14);
          v27 = v44;
        }

        *v27 = v26;
        sub_22BB32FA4(v49);
        goto LABEL_11;
      }
    }

    v28 = sub_22BDBB3A4();
    sub_22BB31A08(v28, MEMORY[0x277D841A0]);
    v30 = v29;
    sub_22BBE6DE0(&qword_27D8E32F0, &qword_22BDBE530);
    *v30 = &type metadata for FeedbackLearning.ConfirmationPromptResult;
    v31 = sub_22BDBB564();
    sub_22BB36D74(v31);
    sub_22BB330A0();
    v32 = sub_22BD00A78();
    v33(v32);
    swift_willThrow();
    swift_unknownObjectRelease();
    v34 = sub_22BB397A4();
    v35(v34, v14);
    v4 = v49;
  }

  sub_22BB32FA4(v4);
LABEL_11:
  sub_22BB376A8();
}

uint64_t FeedbackLearning.ConfirmationPromptResult.description.getter()
{
  v1 = 0x657463656A65722ELL;
  if (*v0 != 1)
  {
    v1 = 0x6E6F646E6162612ELL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6D7269666E6F632ELL;
  }
}

uint64_t sub_22BCE28A4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000011 && 0x800000022BDD3230 == a2;
  if (v3 || (sub_22BDBB6D4() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000014 && 0x800000022BDD3250 == a2;
    if (v6 || (sub_22BDBB6D4() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x656E6F646E616261 && a2 == 0xE900000000000064;
      if (v7 || (sub_22BDBB6D4() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x64657463656A6572 && a2 == 0xE800000000000000)
      {

        return 3;
      }

      else
      {
        v9 = sub_22BDBB6D4();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

unint64_t sub_22BCE2A10(char a1)
{
  result = 0x656E6F646E616261;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000014;
      break;
    case 2:
      return result;
    case 3:
      result = 0x64657463656A6572;
      break;
    default:
      result = 0xD000000000000011;
      break;
  }

  return result;
}

uint64_t sub_22BCE2AA4(uint64_t a1)
{
  v2 = sub_22BCF8198();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BCE2AE0(uint64_t a1)
{
  v2 = sub_22BCF8198();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BCE2B1C(uint64_t a1)
{
  v2 = sub_22BCF8240();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BCE2B58(uint64_t a1)
{
  v2 = sub_22BCF8240();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BCE2B9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22BCE28A4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22BCE2BC4(uint64_t a1)
{
  v2 = sub_22BCF80F0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BCE2C00(uint64_t a1)
{
  v2 = sub_22BCF80F0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BCE2C3C(uint64_t a1)
{
  v2 = sub_22BCF81EC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BCE2C78(uint64_t a1)
{
  v2 = sub_22BCF81EC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BCE2CB4(uint64_t a1)
{
  v2 = sub_22BCF8144();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BCE2CF0(uint64_t a1)
{
  v2 = sub_22BCF8144();

  return MEMORY[0x2821FE720](a1, v2);
}

void FeedbackLearning.DisambiguationPromptResult.encode(to:)()
{
  sub_22BB31014();
  v2 = v1;
  sub_22BBE6DE0(&qword_27D8E4400, &qword_22BDC3128);
  sub_22BB30444();
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v3);
  sub_22BB30BA8();
  sub_22BD00CD8(v4);
  sub_22BBE6DE0(&qword_27D8E4408, &qword_22BDC3130);
  sub_22BB30444();
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v5);
  sub_22BB38B54(v6, v16);
  sub_22BBE6DE0(&qword_27D8E4410, &qword_22BDC3138);
  sub_22BB30444();
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v7);
  sub_22BB6BB20(v8, v17);
  sub_22BBE6DE0(&qword_27D8E4418, &qword_22BDC3140);
  sub_22BB30444();
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v9);
  sub_22BB32750();
  sub_22BBE6DE0(&qword_27D8E4420, &qword_22BDC3148);
  sub_22BB30444();
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v10);
  sub_22BB52928();
  v11 = *v0;
  sub_22BB9575C(v2);
  sub_22BCF80F0();
  sub_22BD00C6C();
  sub_22BDBB8A4();
  switch(v11)
  {
    case 1:
      sub_22BD008D4();
      sub_22BCF81EC();
      sub_22BB32C74();
      sub_22BDBB5F4();
      goto LABEL_6;
    case 2:
      sub_22BB97CCC();
      sub_22BCF8198();
      sub_22BB32C74();
      sub_22BDBB5F4();
      goto LABEL_6;
    case 3:
      sub_22BBC05F0();
      sub_22BCF8144();
      sub_22BB32C74();
      sub_22BDBB5F4();
LABEL_6:
      v12 = sub_22BB37D64();
      break;
    default:
      sub_22BCF8240();
      sub_22BB3B0C0();
      sub_22BDBB5F4();
      v12 = sub_22BB3AB0C();
      break;
  }

  v13(v12);
  v14 = sub_22BB89D18();
  v15(v14);
  sub_22BB376A8();
}

void FeedbackLearning.DisambiguationPromptResult.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_22BB31014();
  a22 = v26;
  a23 = v27;
  sub_22BD00B6C(v28);
  sub_22BBE6DE0(&qword_27D8E4450, &qword_22BDC3150);
  sub_22BB30444();
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v29);
  sub_22BB30BA8();
  sub_22BD00E60(v30);
  sub_22BBE6DE0(&qword_27D8E4458, &qword_22BDC3158);
  sub_22BB30444();
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v31);
  sub_22BB38B54(v32, v64);
  sub_22BBE6DE0(&qword_27D8E4460, &qword_22BDC3160);
  sub_22BB30444();
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v33);
  sub_22BB34298();
  sub_22BBE6DE0(&qword_27D8E4468, &qword_22BDC3168);
  sub_22BB30444();
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v34);
  sub_22BB32750();
  sub_22BBE6DE0(&qword_27D8E4470, &qword_22BDC3170);
  sub_22BB30444();
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v35);
  sub_22BB3721C();
  v36 = v25[4];
  v37 = sub_22BB94E38();
  sub_22BB699E4(v37, v38);
  sub_22BCF80F0();
  sub_22BB69544();
  sub_22BDBB894();
  if (!v24)
  {
    v39 = sub_22BB97E90();
    sub_22BCF80B8(v39, 0);
    if (v41 != v40 >> 1)
    {
      sub_22BB334EC();
      sub_22BB527F0();
      if (v46 == v47)
      {
        __break(1u);
        return;
      }

      sub_22BD00F30(v42, v43, v44, v45);
      sub_22BD00F70();
      if (v23 == v36 >> 1)
      {
        sub_22BD00DC4();
        switch(v48)
        {
          case 1:
            sub_22BD008D4();
            sub_22BCF81EC();
            sub_22BB3FDE4(&_s26DisambiguationPromptResultO30OtherCandidateChosenCodingKeysON, &a12);
            swift_unknownObjectRelease();
            goto LABEL_14;
          case 2:
            sub_22BB97CCC();
            sub_22BCF8198();
            sub_22BB3FDE4(&_s26DisambiguationPromptResultO19AbandonedCodingKeysON, &a13);
            swift_unknownObjectRelease();
LABEL_14:
            v49 = sub_22BB9607C();
            goto LABEL_15;
          case 3:
            sub_22BBC05F0();
            sub_22BCF8144();
            sub_22BBBD27C();
            sub_22BDBB554();
            swift_unknownObjectRelease();
            v60 = sub_22BB8E548();
            v61(v60);
            goto LABEL_16;
          default:
            a11 = 0;
            sub_22BCF8240();
            sub_22BB3FDE4(&_s26DisambiguationPromptResultO27CandidateSelectedCodingKeysON, &a11);
            swift_unknownObjectRelease();
            v49 = sub_22BB9607C();
            v51 = v66;
LABEL_15:
            v50(v49, v51);
LABEL_16:
            v62 = sub_22BB3A19C();
            v63(v62);
            MEMORY[0] = v65;
            sub_22BB32FA4(v67);
            break;
        }

        goto LABEL_10;
      }
    }

    v52 = sub_22BD00F10();
    sub_22BB31A08(v52, MEMORY[0x277D841A0]);
    v54 = v53;
    sub_22BBE6DE0(&qword_27D8E32F0, &qword_22BDBE530);
    *v54 = &type metadata for FeedbackLearning.DisambiguationPromptResult;
    v55 = sub_22BDBB564();
    sub_22BB36D74(v55);
    sub_22BB30474();
    v56 = sub_22BB527FC();
    v57(v56);
    swift_willThrow();
    swift_unknownObjectRelease();
    v58 = sub_22BB8E548();
    v59(v58);
    v25 = v67;
  }

  sub_22BB32FA4(v25);
LABEL_10:
  sub_22BB3A204();
  sub_22BB376A8();
}

void FeedbackLearning.DisambiguationPromptResult.description.getter()
{
  switch(*v0)
  {
    case 1:
      sub_22BD00D38(18);
      break;
    case 2:
    case 3:
      return;
    default:
      sub_22BB3480C();
      break;
  }
}

uint64_t static FeedbackLearning.CandidateOutcome.== infix(_:_:)(_BYTE *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (!(v2 >> 6))
  {
    if (v3 <= 0x3F)
    {
      return v2 == v3;
    }

    return sub_22BBE7CE0();
  }

  if (v2 >> 6 == 1)
  {
    if ((v3 & 0xC0) == 0x40)
    {
      return ((v3 ^ v2) & 0x3F) == 0;
    }

    return sub_22BBE7CE0();
  }

  switch(*a1)
  {
    case 0x81:
      if (v3 != 129)
      {
        return sub_22BBE7CE0();
      }

      break;
    case 0x82:
      if (v3 != 130)
      {
        return sub_22BBE7CE0();
      }

      break;
    case 0x83:
      if (v3 != 131)
      {
        return sub_22BBE7CE0();
      }

      break;
    default:
      if (v3 != 128)
      {
        return sub_22BBE7CE0();
      }

      break;
  }

  return 1;
}

uint64_t sub_22BCE36FC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x616D7269666E6F63 && a2 == 0xEC0000006E6F6974;
  if (v4 || (sub_22BDBB6D4() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6769626D61736964 && a2 == 0xEE006E6F69746175;
    if (v6 || (sub_22BDBB6D4() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6465727265666E69 && a2 == 0xEF73736563637553;
      if (v7 || (sub_22BDBB6D4() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6465727265666E69 && a2 == 0xEF6572756C696146;
        if (v8 || (sub_22BDBB6D4() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000010 && 0x800000022BDD3270 == a2;
          if (v9 || (sub_22BDBB6D4() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0x6E776F6E6B6E75 && a2 == 0xE700000000000000)
          {

            return 5;
          }

          else
          {
            v11 = sub_22BDBB6D4();

            if (v11)
            {
              return 5;
            }

            else
            {
              return 6;
            }
          }
        }
      }
    }
  }
}

unint64_t sub_22BCE3910(char a1)
{
  result = 0x616D7269666E6F63;
  switch(a1)
  {
    case 1:
      result = 0x6769626D61736964;
      break;
    case 2:
    case 3:
      result = 0x6465727265666E69;
      break;
    case 4:
      result = 0xD000000000000010;
      break;
    case 5:
      result = 0x6E776F6E6B6E75;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_22BCE39EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22BCE36FC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22BCE3A14@<X0>(_BYTE *a1@<X8>)
{
  result = sub_22BCE3908();
  *a1 = result;
  return result;
}

uint64_t sub_22BCE3A3C(uint64_t a1)
{
  v2 = sub_22BCF8294();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BCE3A78(uint64_t a1)
{
  v2 = sub_22BCF8294();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BCE3AB4(uint64_t a1)
{
  v2 = sub_22BCF84E0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BCE3AF0(uint64_t a1)
{
  v2 = sub_22BCF84E0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BCE3B2C(uint64_t a1)
{
  v2 = sub_22BCF8438();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BCE3B68(uint64_t a1)
{
  v2 = sub_22BCF8438();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BCE3BA4(uint64_t a1)
{
  v2 = sub_22BCF8390();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BCE3BE0(uint64_t a1)
{
  v2 = sub_22BCF8390();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BCE3C1C(uint64_t a1)
{
  v2 = sub_22BCF833C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BCE3C58(uint64_t a1)
{
  v2 = sub_22BCF833C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BCE3C94(uint64_t a1)
{
  v2 = sub_22BCF83E4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BCE3CD0(uint64_t a1)
{
  v2 = sub_22BCF83E4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BCE3D0C(uint64_t a1)
{
  v2 = sub_22BCF82E8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BCE3D48(uint64_t a1)
{
  v2 = sub_22BCF82E8();

  return MEMORY[0x2821FE720](a1, v2);
}

void FeedbackLearning.CandidateOutcome.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, char a11, char a12, char a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  sub_22BB31014();
  v28 = v27;
  sub_22BBE6DE0(&qword_27D8E4478, &qword_22BDC3178);
  sub_22BB30444();
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v29);
  sub_22BB340E0(v30, v51);
  sub_22BBE6DE0(&qword_27D8E4480, &qword_22BDC3180);
  sub_22BB30444();
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v31);
  sub_22BB30BA8();
  sub_22BBE6DE0(&qword_27D8E4488, &qword_22BDC3188);
  sub_22BB30444();
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v32);
  sub_22BB30BA8();
  sub_22BBE6DE0(&qword_27D8E4490, &qword_22BDC3190);
  sub_22BB30444();
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v33);
  sub_22BB30BA8();
  sub_22BBE6DE0(&qword_27D8E4498, &qword_22BDC3198);
  sub_22BB30444();
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v34);
  sub_22BB36808();
  v35 = sub_22BBE6DE0(&qword_27D8E44A0, &qword_22BDC31A0);
  sub_22BB30444();
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v36);
  sub_22BB32750();
  sub_22BBE6DE0(&qword_27D8E44A8, &qword_22BDC31A8);
  sub_22BB30444();
  v52 = v37;
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v38);
  sub_22BB354DC();
  v39 = *v26;
  sub_22BB699E4(v28, v28[3]);
  sub_22BCF8294();
  sub_22BDBB8A4();
  if (!(v39 >> 6))
  {
    sub_22BCF84E0();
    sub_22BB71F34();
    sub_22BDBB5F4();
    sub_22BCF8534();
    sub_22BDBB664();
    sub_22BD00DA4();
    v45 = sub_22BB348D0();
    v46(v45);
    v42 = sub_22BB3DFD0();
    v43 = v52;
    goto LABEL_5;
  }

  if (v39 >> 6 == 1)
  {
    sub_22BCF8438();
    sub_22BB3E1EC();
    sub_22BDBB5F4();
    sub_22BCF848C();
    sub_22BDBB664();
    sub_22BB38B78();
    v40 = sub_22BB94E38();
    v41(v40);
    v42 = sub_22BB692D0();
LABEL_5:
    v44(v42, v43);
    goto LABEL_12;
  }

  switch(v39)
  {
    case 0x81u:
      sub_22BCF8390();
      sub_22BB72F1C();
      sub_22BDBB5F4();
      break;
    case 0x82u:
      sub_22BCF833C();
      sub_22BB72F1C();
      sub_22BDBB5F4();
      break;
    case 0x83u:
      sub_22BBC0278();
      sub_22BCF82E8();
      sub_22BB72F1C();
      sub_22BDBB5F4();
      break;
    default:
      sub_22BCF83E4();
      sub_22BB72F1C();
      sub_22BDBB5F4();
      break;
  }

  v47 = sub_22BB9607C();
  v48(v47);
  v49 = sub_22BB3DFD0();
  v50(v49, v35);
LABEL_12:
  sub_22BD00C3C();
  sub_22BB376A8();
}

void FeedbackLearning.CandidateOutcome.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, char a11, char a12)
{
  sub_22BB31014();
  sub_22BD00D8C();
  v82 = v13;
  v84 = sub_22BBE6DE0(&qword_27D8E44F8, &qword_22BDC31B0);
  sub_22BB30444();
  v83 = v14;
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v15);
  sub_22BB39504(v16);
  v80 = sub_22BBE6DE0(&qword_27D8E4500, &qword_22BDC31B8);
  sub_22BB30444();
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v17);
  sub_22BB340E0(v18, v76);
  sub_22BBE6DE0(&qword_27D8E4508, &qword_22BDC31C0);
  sub_22BB30444();
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v19);
  sub_22BB2F240(v20, v77);
  sub_22BBE6DE0(&qword_27D8E4510, &qword_22BDC31C8);
  sub_22BB30444();
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v21);
  sub_22BB6BB20(v22, v78);
  v79 = sub_22BBE6DE0(&qword_27D8E4518, &qword_22BDC31D0);
  sub_22BB30444();
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v23);
  sub_22BB32750();
  v24 = sub_22BBE6DE0(&qword_27D8E4520, &qword_22BDC31D8);
  sub_22BB30444();
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v25);
  sub_22BB52928();
  sub_22BBE6DE0(&qword_27D8E4528, &qword_22BDC31E0);
  sub_22BB30444();
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v26);
  sub_22BB3721C();
  v85 = v12;
  v27 = sub_22BB2F324();
  sub_22BB699E4(v27, v28);
  sub_22BCF8294();
  sub_22BDBB894();
  if (!v86)
  {
    v29 = sub_22BDBB5E4();
    sub_22BCF80B8(v29, 0);
    v31 = v30;
    if (v33 != v32 >> 1)
    {
      sub_22BB334EC();
      sub_22BB527F0();
      if (v38 == v39)
      {
        __break(1u);
        return;
      }

      v40 = *(v37 + v35);
      sub_22BCFD8E0(v35 + 1, v34, v31, v37, v35, v36);
      v42 = v41;
      v44 = v43;
      swift_unknownObjectRelease();
      if (v42 == v44 >> 1)
      {
        switch(v40)
        {
          case 1:
            sub_22BCF8438();
            sub_22BB52E84();
            sub_22BDBB554();
            sub_22BCF8588();
            sub_22BB71F34();
            sub_22BDBB5D4();
            swift_unknownObjectRelease();
            v72 = sub_22BB34F2C();
            v73(v72, v79);
            v74 = sub_22BD0073C();
            v75(v74);
            a10 = a12 | 0x40;
            break;
          case 2:
            sub_22BCF83E4();
            sub_22BB52E84();
            sub_22BDBB554();
            swift_unknownObjectRelease();
            v57 = sub_22BB3B088();
            v58(v57);
            v59 = sub_22BB39348();
            v60(v59);
            a10 = 0x80;
            break;
          case 3:
            sub_22BCF8390();
            sub_22BB52E84();
            sub_22BDBB554();
            swift_unknownObjectRelease();
            v61 = sub_22BB3B088();
            v62(v61);
            v63 = sub_22BB39348();
            v64(v63);
            a10 = -127;
            break;
          case 4:
            sub_22BCF833C();
            sub_22BB52E84();
            sub_22BDBB554();
            swift_unknownObjectRelease();
            v53 = sub_22BB34F2C();
            v54(v53, v80);
            v55 = sub_22BB39348();
            v56(v55);
            a10 = -126;
            break;
          case 5:
            sub_22BBC0278();
            sub_22BCF82E8();
            sub_22BB52E84();
            sub_22BDBB554();
            swift_unknownObjectRelease();
            (*(v83 + 8))(v81, v84);
            v65 = sub_22BB39348();
            v66(v65);
            a10 = -125;
            break;
          default:
            sub_22BCF84E0();
            sub_22BB52E84();
            sub_22BDBB554();
            sub_22BCF85DC();
            sub_22BB71F34();
            sub_22BDBB5D4();
            swift_unknownObjectRelease();
            v67 = sub_22BB34F2C();
            v68(v67, v24);
            v69 = sub_22BD0073C();
            v70(v69);
            break;
        }

        *v82 = a10;
        sub_22BB32FA4(v85);
        goto LABEL_10;
      }
    }

    v45 = sub_22BDBB3A4();
    sub_22BB31A08(v45, MEMORY[0x277D841A0]);
    v47 = v46;
    sub_22BBE6DE0(&qword_27D8E32F0, &qword_22BDBE530);
    *v47 = &type metadata for FeedbackLearning.CandidateOutcome;
    v48 = sub_22BDBB564();
    sub_22BB36D74(v48);
    sub_22BB30474();
    v49 = sub_22BB527FC();
    v50(v49);
    swift_willThrow();
    swift_unknownObjectRelease();
    v51 = sub_22BB3B6B8();
    v52(v51);
  }

  sub_22BB32FA4(v85);
LABEL_10:
  sub_22BB3A204();
  sub_22BB376A8();
}

unint64_t FeedbackLearning.CandidateOutcome.description.getter()
{
  v1 = *v0;
  if (!(v1 >> 6))
  {
    sub_22BD00FD0();

    strcpy(v7, ".confirmation(");
    HIBYTE(v7[1]) = -18;
    v2 = 0xE900000000000064;
    v3 = 0x657463656A65722ELL;
    if (v1 != 1)
    {
      v3 = 0x6E6F646E6162612ELL;
      v2 = 0xEA00000000006465;
    }

    if (v1)
    {
      v4 = v3;
    }

    else
    {
      v4 = 0x6D7269666E6F632ELL;
    }

    if (v1)
    {
      v5 = v2;
    }

    else
    {
      v5 = 0xEA00000000006465;
    }

    MEMORY[0x2318A4C40](v4, v5);

    sub_22BB36A44();
    return v7[0];
  }

  if (v1 >> 6 == 1)
  {
    sub_22BD00FD0();
    MEMORY[0x2318A4C40](0x69626D617369642ELL, 0xEF6E6F6974617567);
    sub_22BCE1924(v1 & 0x3F);
    return v7[0];
  }

  result = 0x6E776F6E6B6E752ELL;
  switch(*v0)
  {
    case 0x81:
      result = 0xD000000000000010;
      break;
    case 0x82:
      result = 0xD000000000000011;
      break;
    case 0x83:
      return result;
    default:
      result = 0xD000000000000010;
      break;
  }

  return result;
}

uint64_t sub_22BCE4EB8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x766C6F7365726E75 && a2 == 0xEA00000000006465;
  if (v4 || (sub_22BDBB6D4() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000013 && 0x800000022BDD3290 == a2;
    if (v6 || (sub_22BDBB6D4() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000010 && 0x800000022BDD32B0 == a2;
      if (v7 || (sub_22BDBB6D4() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x6465747563657865 && a2 == 0xE800000000000000)
      {

        return 3;
      }

      else
      {
        v9 = sub_22BDBB6D4();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

unint64_t sub_22BCE5028(char a1)
{
  result = 0x766C6F7365726E75;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000013;
      break;
    case 2:
      result = 0xD000000000000010;
      break;
    case 3:
      result = 0x6465747563657865;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_22BCE50C4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = FeedbackLearning.CandidateDonationOptionSet.init(rawValue:)(*a1, &v4);
  *a2 = v4;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_22BCE5104@<X0>(uint64_t *a1@<X8>)
{
  result = FeedbackLearning.CandidateDonationOptionSet.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_22BCE5138@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22BCE4EB8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22BCE5160(uint64_t a1)
{
  v2 = sub_22BCF8630();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BCE519C(uint64_t a1)
{
  v2 = sub_22BCF8630();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BCE51D8(uint64_t a1)
{
  v2 = sub_22BCF8684();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BCE5214(uint64_t a1)
{
  v2 = sub_22BCF8684();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BCE5250(uint64_t a1)
{
  v2 = sub_22BCF872C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BCE528C(uint64_t a1)
{
  v2 = sub_22BCF872C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BCE52C8(uint64_t a1)
{
  v2 = sub_22BCF86D8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BCE5304(uint64_t a1)
{
  v2 = sub_22BCF86D8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BCE5340(uint64_t a1)
{
  v2 = sub_22BCF8780();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BCE537C(uint64_t a1)
{
  v2 = sub_22BCF8780();

  return MEMORY[0x2821FE720](a1, v2);
}

void FeedbackLearning.CandidateParameterResolution.encode(to:)()
{
  sub_22BB31014();
  v2 = v1;
  sub_22BBE6DE0(&qword_27D8E4540, &qword_22BDC31E8);
  sub_22BB30444();
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v3);
  sub_22BB30BA8();
  sub_22BD00CD8(v4);
  sub_22BBE6DE0(&qword_27D8E4548, &qword_22BDC31F0);
  sub_22BB30444();
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v5);
  sub_22BB38B54(v6, v16);
  sub_22BBE6DE0(&qword_27D8E4550, &qword_22BDC31F8);
  sub_22BB30444();
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v7);
  sub_22BB6BB20(v8, v17);
  sub_22BBE6DE0(&qword_27D8E4558, &qword_22BDC3200);
  sub_22BB30444();
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v9);
  sub_22BB32750();
  sub_22BBE6DE0(&qword_27D8E4560, &qword_22BDC3208);
  sub_22BB30444();
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v10);
  sub_22BB52928();
  v11 = *v0;
  sub_22BB9575C(v2);
  sub_22BCF8630();
  sub_22BD00C6C();
  sub_22BDBB8A4();
  switch(v11)
  {
    case 1:
      sub_22BD008D4();
      sub_22BCF872C();
      sub_22BB32C74();
      sub_22BDBB5F4();
      goto LABEL_6;
    case 2:
      sub_22BB97CCC();
      sub_22BCF86D8();
      sub_22BB32C74();
      sub_22BDBB5F4();
      goto LABEL_6;
    case 3:
      sub_22BBC05F0();
      sub_22BCF8684();
      sub_22BB32C74();
      sub_22BDBB5F4();
LABEL_6:
      v12 = sub_22BB37D64();
      break;
    default:
      sub_22BCF8780();
      sub_22BB3B0C0();
      sub_22BDBB5F4();
      v12 = sub_22BB3AB0C();
      break;
  }

  v13(v12);
  v14 = sub_22BB89D18();
  v15(v14);
  sub_22BB376A8();
}

uint64_t _s23IntelligenceFlowRuntime16FeedbackLearningO24ConfirmationPromptResultO9hashValueSivg_0(uint64_t a1)
{
  v2 = *v1;
  sub_22BD00D74(a1);
  MEMORY[0x2318A57F0](v2);
  return sub_22BDBB834();
}

void FeedbackLearning.CandidateParameterResolution.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_22BB31014();
  a22 = v26;
  a23 = v27;
  sub_22BD00B6C(v28);
  sub_22BBE6DE0(&qword_27D8E4590, &qword_22BDC3210);
  sub_22BB30444();
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v29);
  sub_22BB30BA8();
  sub_22BD00E60(v30);
  sub_22BBE6DE0(&qword_27D8E4598, &qword_22BDC3218);
  sub_22BB30444();
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v31);
  sub_22BB38B54(v32, v64);
  sub_22BBE6DE0(&qword_27D8E45A0, &qword_22BDC3220);
  sub_22BB30444();
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v33);
  sub_22BB34298();
  sub_22BBE6DE0(&qword_27D8E45A8, &qword_22BDC3228);
  sub_22BB30444();
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v34);
  sub_22BB32750();
  sub_22BBE6DE0(&qword_27D8E45B0, &qword_22BDC3230);
  sub_22BB30444();
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v35);
  sub_22BB3721C();
  v36 = v25[4];
  v37 = sub_22BB94E38();
  sub_22BB699E4(v37, v38);
  sub_22BCF8630();
  sub_22BB69544();
  sub_22BDBB894();
  if (!v24)
  {
    v39 = sub_22BB97E90();
    sub_22BCF80B8(v39, 0);
    if (v41 != v40 >> 1)
    {
      sub_22BB334EC();
      sub_22BB527F0();
      if (v46 == v47)
      {
        __break(1u);
        return;
      }

      sub_22BD00F30(v42, v43, v44, v45);
      sub_22BD00F70();
      if (v23 == v36 >> 1)
      {
        sub_22BD00DC4();
        switch(v48)
        {
          case 1:
            sub_22BD008D4();
            sub_22BCF872C();
            sub_22BB3FDE4(&_s28CandidateParameterResolutionO29ResolvedNotSelectedCodingKeysON, &a12);
            swift_unknownObjectRelease();
            goto LABEL_14;
          case 2:
            sub_22BB97CCC();
            sub_22BCF86D8();
            sub_22BB3FDE4(&_s28CandidateParameterResolutionO26ResolvedSelectedCodingKeysON, &a13);
            swift_unknownObjectRelease();
LABEL_14:
            v49 = sub_22BB9607C();
            goto LABEL_15;
          case 3:
            sub_22BBC05F0();
            sub_22BCF8684();
            sub_22BBBD27C();
            sub_22BDBB554();
            swift_unknownObjectRelease();
            v60 = sub_22BB8E548();
            v61(v60);
            goto LABEL_16;
          default:
            a11 = 0;
            sub_22BCF8780();
            sub_22BB3FDE4(&_s28CandidateParameterResolutionO20UnresolvedCodingKeysON, &a11);
            swift_unknownObjectRelease();
            v49 = sub_22BB9607C();
            v51 = v66;
LABEL_15:
            v50(v49, v51);
LABEL_16:
            v62 = sub_22BB3A19C();
            v63(v62);
            MEMORY[0] = v65;
            sub_22BB32FA4(v67);
            break;
        }

        goto LABEL_10;
      }
    }

    v52 = sub_22BD00F10();
    sub_22BB31A08(v52, MEMORY[0x277D841A0]);
    v54 = v53;
    sub_22BBE6DE0(&qword_27D8E32F0, &qword_22BDBE530);
    *v54 = &type metadata for FeedbackLearning.CandidateParameterResolution;
    v55 = sub_22BDBB564();
    sub_22BB36D74(v55);
    sub_22BB30474();
    v56 = sub_22BB527FC();
    v57(v56);
    swift_willThrow();
    swift_unknownObjectRelease();
    v58 = sub_22BB8E548();
    v59(v58);
    v25 = v67;
  }

  sub_22BB32FA4(v25);
LABEL_10:
  sub_22BB3A204();
  sub_22BB376A8();
}

void FeedbackLearning.CandidateParameterResolution.description.getter()
{
  switch(*v0)
  {
    case 1:
      sub_22BD00D38(17);
      break;
    case 2:
      sub_22BB3480C();
      break;
    default:
      return;
  }
}

uint64_t sub_22BCE5D34(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x7972657571 && a2 == 0xE500000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_22BDBB6D4();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_22BCE5DC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22BCE5D34(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_22BCE5DEC(uint64_t a1)
{
  v2 = sub_22BCF87D4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BCE5E28(uint64_t a1)
{
  v2 = sub_22BCF87D4();

  return MEMORY[0x2821FE720](a1, v2);
}

void FeedbackLearning.CandidateSearchQuery.encode(to:)(uint64_t a1)
{
  sub_22BD00EDC();
  sub_22BBE6DE0(&qword_27D8E45B8, &qword_22BDC3238);
  sub_22BB30444();
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v1);
  sub_22BB32750();
  sub_22BB3B3AC();
  v2 = sub_22BCF87D4();
  sub_22BD00758(&_s20CandidateSearchQueryV10CodingKeysON, v3, v2);
  sub_22BDB9D04();
  sub_22BD007CC();
  sub_22BCF8848(v4, v5, MEMORY[0x277D1E998]);
  sub_22BD00A78();
  sub_22BDBB664();
  v6 = sub_22BB52D78();
  v7(v6);
  sub_22BD00EC8();
}

void FeedbackLearning.CandidateSearchQuery.init(from:)()
{
  sub_22BB31014();
  sub_22BB310A8(v2);
  sub_22BDB9D04();
  sub_22BB30444();
  MEMORY[0x28223BE20](v3);
  sub_22BB305A8();
  v4 = sub_22BBE6DE0(&qword_27D8E45C8, &unk_22BDC3240);
  sub_22BB30444();
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v5);
  v6 = sub_22BB3848C();
  v7 = type metadata accessor for FeedbackLearning.CandidateSearchQuery(v6);
  v8 = sub_22BB2F0C8(v7);
  MEMORY[0x28223BE20](v8);
  sub_22BB30574();
  sub_22BB36FD8();
  v9 = sub_22BB500C0();
  sub_22BB699E4(v9, v10);
  sub_22BCF87D4();
  sub_22BD00CA8();
  sub_22BDBB894();
  if (!v1)
  {
    sub_22BD007CC();
    v13 = sub_22BCF8848(v11, v12, MEMORY[0x277D1E9A0]);
    sub_22BB31C28(v13, v14);
    v15 = sub_22BB977C4();
    v16(v15, v4);
    v17 = sub_22BB3569C();
    v18(v17);
    v19 = sub_22BB3A86C();
    sub_22BCF8A34(v19, v20);
  }

  sub_22BB32FA4(v0);
  sub_22BD00C9C();
  sub_22BB376A8();
}

void static FeedbackLearning.CandidateParameter.== infix(_:_:)()
{
  sub_22BB30F94();
  v3 = v2;
  v5 = v4;
  v6 = sub_22BDB4C34();
  sub_22BB30444();
  v34 = v7;
  MEMORY[0x28223BE20](v8);
  sub_22BB30574();
  v9 = sub_22BB3DFC0();
  type metadata accessor for FeedbackLearning.CandidateParameter(v9);
  sub_22BB2F330();
  MEMORY[0x28223BE20](v10);
  sub_22BB30C74();
  v13 = (v11 - v12);
  MEMORY[0x28223BE20](v14);
  v15 = sub_22BBE6DE0(&qword_27D8E45D0, &qword_22BDCFC80);
  sub_22BB2F0C8(v15);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v16);
  sub_22BB395E0();
  v18 = (v0 + *(v17 + 56));
  sub_22BCF8A8C(v5, v0);
  sub_22BCF8A8C(v3, v18);
  sub_22BB500C0();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_22BB32C5C();
      v23 = sub_22BB3A84C();
      sub_22BCF8A8C(v23, v24);
      v26 = *v13;
      v25 = v13[1];
      sub_22BB3ADA8();
      if (swift_getEnumCaseMultiPayload() != 1)
      {

        goto LABEL_16;
      }

      if (v26 != *v18 || v25 != v18[1])
      {
        sub_22BB37494();
        sub_22BDBB6D4();
      }

      goto LABEL_19;
    case 2u:
      sub_22BB3ADA8();
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        goto LABEL_19;
      }

      goto LABEL_16;
    case 3u:
      sub_22BB3ADA8();
      if (swift_getEnumCaseMultiPayload() != 3)
      {
        goto LABEL_16;
      }

LABEL_19:
      sub_22BB372C0();
      sub_22BCF8AE4(v0, v33);
      break;
    default:
      sub_22BB32C5C();
      v19 = sub_22BB33728();
      sub_22BCF8A8C(v19, v20);
      sub_22BB3ADA8();
      if (swift_getEnumCaseMultiPayload())
      {
        v21 = sub_22BB95B5C();
        v22(v21);
LABEL_16:
        sub_22BB58728(v0, &qword_27D8E45D0, &qword_22BDCFC80);
      }

      else
      {
        sub_22BB379C8();
        v28(v1, v18, v6);
        sub_22BB39478();
        sub_22BDB4C04();
        v29 = *(v34 + 8);
        v30 = sub_22BB37494();
        v29(v30);
        v31 = sub_22BB95B5C();
        v29(v31);
        sub_22BB372C0();
        sub_22BCF8AE4(v0, v32);
      }

      break;
  }

  sub_22BB314EC();
}

uint64_t sub_22BCE64B4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1819242356 && a2 == 0xE400000000000000;
  if (v3 || (sub_22BDBB6D4() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x616D65686373 && a2 == 0xE600000000000000;
    if (v6 || (sub_22BDBB6D4() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x65756C6176 && a2 == 0xE500000000000000;
      if (v7 || (sub_22BDBB6D4() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x6574656D61726170 && a2 == 0xE900000000000072)
      {

        return 3;
      }

      else
      {
        v9 = sub_22BDBB6D4();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

uint64_t sub_22BCE660C(char a1)
{
  result = 1819242356;
  switch(a1)
  {
    case 1:
      result = 0x616D65686373;
      break;
    case 2:
      result = 0x65756C6176;
      break;
    case 3:
      result = 0x6574656D61726170;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_22BCE668C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22BCE64B4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22BCE66B4(uint64_t a1)
{
  v2 = sub_22BCF8890();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BCE66F0(uint64_t a1)
{
  v2 = sub_22BCF8890();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BCE672C(uint64_t a1)
{
  v2 = sub_22BCF88E4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BCE6768(uint64_t a1)
{
  v2 = sub_22BCF88E4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BCE67A4(uint64_t a1)
{
  v2 = sub_22BCF898C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BCE67E0(uint64_t a1)
{
  v2 = sub_22BCF898C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BCE681C(uint64_t a1)
{
  v2 = sub_22BCF89E0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BCE6858(uint64_t a1)
{
  v2 = sub_22BCF89E0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BCE6894(uint64_t a1)
{
  v2 = sub_22BCF8938();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BCE68D0(uint64_t a1)
{
  v2 = sub_22BCF8938();

  return MEMORY[0x2821FE720](a1, v2);
}

void FeedbackLearning.CandidateParameter.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, __int16 a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_22BB31014();
  sub_22BB92328();
  v54 = sub_22BBE6DE0(&qword_27D8E45D8, &qword_22BDC3250);
  sub_22BB30444();
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v23);
  sub_22BB6BB20(v24, v53);
  sub_22BBE6DE0(&qword_27D8E45E0, &qword_22BDC3258);
  sub_22BB30444();
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v25);
  sub_22BB30BA8();
  sub_22BB2F120();
  sub_22BDB4C34();
  sub_22BB30444();
  MEMORY[0x28223BE20](v26);
  sub_22BB305A8();
  sub_22BBE6DE0(&qword_27D8E45E8, &qword_22BDC3260);
  sub_22BB30444();
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v27);
  sub_22BB32750();
  v28 = sub_22BBE6DE0(&qword_27D8E45F0, &qword_22BDC3268);
  sub_22BB30444();
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v29);
  v30 = sub_22BB30CE4();
  type metadata accessor for FeedbackLearning.CandidateParameter(v30);
  sub_22BB2F330();
  MEMORY[0x28223BE20](v31);
  sub_22BB30574();
  sub_22BD00790();
  sub_22BBE6DE0(&qword_27D8E45F8, &qword_22BDC3270);
  sub_22BB30444();
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v32);
  sub_22BB36808();
  v33 = sub_22BB345A8();
  sub_22BB699E4(v33, v34);
  sub_22BCF8890();
  sub_22BD00918();
  sub_22BDBB8A4();
  sub_22BB32C5C();
  sub_22BCF8A8C(v55, v22);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_22BBC05F0();
      sub_22BCF88E4();
      sub_22BB52E84();
      sub_22BDBB5F4();
      sub_22BB500C0();
      sub_22BDBB624();

      v49 = sub_22BB3B088();
      v50(v49, v54);
      sub_22BB3158C();
      v51 = sub_22BD0073C();
      v52(v51);
      break;
    case 2u:
      sub_22BCF89E0();
      sub_22BB72F1C();
      sub_22BDBB5F4();
      v44 = sub_22BB34F2C();
      v46 = v28;
      goto LABEL_5;
    case 3u:
      sub_22BD008D4();
      sub_22BCF898C();
      sub_22BB72F1C();
      sub_22BDBB5F4();
      v44 = sub_22BB3AB0C();
LABEL_5:
      v45(v44, v46);
      sub_22BB3158C();
      v47 = sub_22BB94E38();
      v48(v47);
      break;
    default:
      sub_22BB379C8();
      v35();
      sub_22BB97CCC();
      sub_22BCF8938();
      sub_22BD00908();
      sub_22BDBB5F4();
      sub_22BB35B60();
      sub_22BCF8848(v36, v37, MEMORY[0x277D1C340]);
      sub_22BDBB664();
      v38 = sub_22BB3FCC8();
      v39(v38);
      v40 = sub_22BD00A24();
      v41(v40);
      sub_22BB3158C();
      v42 = sub_22BB3A86C();
      v43(v42);
      break;
  }

  sub_22BB3A204();
  sub_22BB376A8();
}

void FeedbackLearning.CandidateParameter.hash(into:)()
{
  sub_22BB3B094();
  sub_22BB30F68();
  v1 = sub_22BDB4C34();
  sub_22BB30444();
  MEMORY[0x28223BE20](v2);
  sub_22BB30574();
  v3 = sub_22BB3DFC0();
  type metadata accessor for FeedbackLearning.CandidateParameter(v3);
  sub_22BB2F330();
  MEMORY[0x28223BE20](v4);
  sub_22BB30574();
  v7 = v6 - v5;
  sub_22BB32C5C();
  v8 = sub_22BB3AAD8();
  sub_22BCF8A8C(v8, v9);
  sub_22BD00AA4();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      MEMORY[0x2318A57F0](3);
      sub_22BB2F324();
      sub_22BDBAC54();

      break;
    case 2u:
      v15 = 0;
      goto LABEL_5;
    case 3u:
      v15 = 1;
LABEL_5:
      MEMORY[0x2318A57F0](v15);
      break;
    default:
      sub_22BB379C8();
      v10(v0, v7, v1);
      MEMORY[0x2318A57F0](2);
      sub_22BB35B60();
      sub_22BCF8848(v11, v12, MEMORY[0x277D1C348]);
      sub_22BB69A84();
      sub_22BDBABB4();
      v13 = sub_22BB3182C();
      v14(v13);
      break;
  }

  sub_22BB36A24();
}

uint64_t FeedbackLearning.CandidateParameter.hashValue.getter(uint64_t a1)
{
  sub_22BD00D74(a1);
  FeedbackLearning.CandidateParameter.hash(into:)();
  return sub_22BDBB834();
}

void FeedbackLearning.CandidateParameter.init(from:)()
{
  sub_22BB31014();
  sub_22BD00D8C();
  v95 = v3;
  sub_22BBE6DE0(&qword_27D8E4630, &qword_22BDC3278);
  sub_22BB30444();
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v4);
  sub_22BB37048(v5, v88);
  sub_22BBE6DE0(&qword_27D8E4638, &qword_22BDC3280);
  sub_22BB30444();
  v94 = v6;
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v7);
  sub_22BB39504(v8);
  v93 = sub_22BBE6DE0(&qword_27D8E4640, &qword_22BDC3288);
  sub_22BB30444();
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v9);
  sub_22BB340E0(v10, v89);
  sub_22BBE6DE0(&qword_27D8E4648, &qword_22BDC3290);
  sub_22BB30444();
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v11);
  sub_22BB6BB20(v12, v90);
  v13 = sub_22BBE6DE0(&qword_27D8E4650, &qword_22BDC3298);
  sub_22BB30444();
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v14);
  sub_22BB36808();
  v15 = type metadata accessor for FeedbackLearning.CandidateParameter(0);
  sub_22BB2F330();
  MEMORY[0x28223BE20](v16);
  sub_22BB30C74();
  v19 = (v17 - v18);
  MEMORY[0x28223BE20](v20);
  sub_22BB89DA4();
  MEMORY[0x28223BE20](v21);
  sub_22BD00B4C();
  v96 = v0;
  v22 = sub_22BB393C4();
  sub_22BB699E4(v22, v23);
  sub_22BCF8890();
  sub_22BD00918();
  sub_22BDBB894();
  if (!v97)
  {
    v91 = v19;
    v92 = v2;
    v98 = v15;
    v24 = sub_22BDBB5E4();
    sub_22BCF80B8(v24, 0);
    v26 = v25;
    v28 = v13;
    if (v29 != v27 >> 1)
    {
      sub_22BB334EC();
      sub_22BB527F0();
      if (v34 == v35)
      {
        __break(1u);
        return;
      }

      v36 = *(v33 + v31);
      sub_22BCFD8E0(v31 + 1, v30, v26, v33, v31, v32);
      v38 = v37;
      v40 = v39;
      swift_unknownObjectRelease();
      if (v38 == v40 >> 1)
      {
        switch(v36)
        {
          case 1:
            sub_22BD008D4();
            sub_22BCF898C();
            sub_22BB71F34();
            sub_22BD00FF0(v68, v69, v70, v71);
            swift_unknownObjectRelease();
            v72 = sub_22BB37D64();
            v73(v72, v93);
            v74 = sub_22BB3B5D8();
            v75(v74, v28);
            v49 = v92;
            sub_22BB3A19C();
            goto LABEL_14;
          case 2:
            sub_22BB97CCC();
            sub_22BCF8938();
            sub_22BB71F34();
            sub_22BD00FF0(v58, v59, v60, v61);
            sub_22BDB4C34();
            sub_22BB35B60();
            sub_22BCF8848(v62, v63, MEMORY[0x277D1C360]);
            sub_22BD00E48();
            sub_22BDBB5D4();
            swift_unknownObjectRelease();
            v76 = sub_22BB3AB0C();
            v77(v76, v94);
            sub_22BB38B78();
            v78 = sub_22BD00DEC();
            v79(v78);
            swift_storeEnumTagMultiPayload();
            sub_22BB31158();
            v80 = v1;
            goto LABEL_15;
          case 3:
            sub_22BBC05F0();
            sub_22BCF88E4();
            sub_22BB71F34();
            sub_22BD00FF0(v64, v65, v66, v67);
            sub_22BD00E48();
            v81 = sub_22BDBB594();
            v83 = v82;
            swift_unknownObjectRelease();
            v84 = sub_22BB348D0();
            v85(v84);
            v86 = sub_22BD00DEC();
            v87(v86);
            *v91 = v81;
            v91[1] = v83;
            swift_storeEnumTagMultiPayload();
            sub_22BB31158();
            v80 = v91;
LABEL_15:
            v49 = v92;
            sub_22BCF8A34(v80, v92);
            break;
          default:
            sub_22BCF89E0();
            sub_22BB71F34();
            sub_22BD00FF0(v41, v42, v43, v44);
            swift_unknownObjectRelease();
            v45 = sub_22BB37D64();
            v46(v45);
            v47 = sub_22BB3B5D8();
            v48(v47, v28);
            v49 = v92;
            sub_22BB3A19C();
LABEL_14:
            swift_storeEnumTagMultiPayload();
            break;
        }

        sub_22BB31158();
        sub_22BCF8A34(v49, v95);
        sub_22BB32FA4(v96);
        goto LABEL_10;
      }
    }

    v50 = sub_22BDBB3A4();
    sub_22BB31A08(v50, MEMORY[0x277D841A0]);
    v52 = v51;
    sub_22BBE6DE0(&qword_27D8E32F0, &qword_22BDBE530);
    *v52 = v98;
    v53 = sub_22BDBB564();
    sub_22BB36D74(v53);
    sub_22BB30474();
    v54 = sub_22BB527FC();
    v55(v54);
    swift_willThrow();
    swift_unknownObjectRelease();
    v56 = sub_22BB3B6B8();
    v57(v56);
  }

  sub_22BB32FA4(v96);
LABEL_10:
  sub_22BB975A0();
  sub_22BB376A8();
}