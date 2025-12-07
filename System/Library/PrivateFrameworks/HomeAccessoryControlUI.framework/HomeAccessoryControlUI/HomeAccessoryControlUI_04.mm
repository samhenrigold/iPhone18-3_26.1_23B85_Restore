uint64_t sub_252398CFC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_252398D64@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(type metadata accessor for HAPControlSolver.Source(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_252397AA8(a1, v6, a2);
}

uint64_t sub_252398DE4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_252398E44(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_252398EBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v133 = a2;
  v148 = a3;
  v4 = type metadata accessor for HAPControlSolver.Source(0);
  v132 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v134 = v5;
  v135 = &v112 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v138 = type metadata accessor for AccessoryControl.State(0);
  MEMORY[0x28223BE20](v138);
  v139 = &v112 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v137 = sub_25268DA10();
  v136 = *(v137 - 8);
  MEMORY[0x28223BE20](v137);
  v144 = &v112 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v130 = sub_25268E2E0();
  v129 = *(v130 - 8);
  MEMORY[0x28223BE20](v130);
  v128 = &v112 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v125 = &v112 - v10;
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD88, &unk_2526956E0);
  MEMORY[0x28223BE20](v126);
  v142 = (&v112 - v11);
  v123 = sub_25268D990();
  v122 = *(v123 - 8);
  MEMORY[0x28223BE20](v123);
  v117 = &v112 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB2D8, &qword_252696D10);
  MEMORY[0x28223BE20](v13 - 8);
  v120 = &v112 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v121 = &v112 - v16;
  v124 = type metadata accessor for ControlTextModifier.Config(0);
  MEMORY[0x28223BE20](v124);
  v147 = &v112 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = type metadata accessor for AccessoryControl.StatusProvider(0);
  MEMORY[0x28223BE20](v118);
  v146 = &v112 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v127 = type metadata accessor for AccessoryControl.BinaryViewConfig(0);
  MEMORY[0x28223BE20](v127);
  v141 = &v112 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v131 = &v112 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB208, &unk_252695180);
  MEMORY[0x28223BE20](v22 - 8);
  v119 = &v112 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v140 = &v112 - v25;
  v26 = sub_25268F9E0();
  v151 = *(v26 - 8);
  v152 = v26;
  MEMORY[0x28223BE20](v26);
  v143 = &v112 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v150 = sub_25268F4D0();
  v28 = *(v150 - 8);
  MEMORY[0x28223BE20](v150);
  v149 = &v112 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_25268E530();
  v31 = *(v30 - 8);
  v32 = MEMORY[0x28223BE20](v30);
  v34 = &v112 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v153 = v4;
  (*(v31 + 104))(v34, *MEMORY[0x277D15850], v30, v32);
  sub_252376EA8(&qword_27F4DADD8, MEMORY[0x277D158E0], MEMORY[0x277D158F8]);
  v156 = a1;
  sub_252692D40();
  sub_252692D40();
  if (v155 == v154)
  {
    (*(v31 + 8))(v34, v30);

    v36 = v149;
    v35 = v150;
  }

  else
  {
    v37 = sub_2526933B0();
    (*(v31 + 8))(v34, v30);

    v36 = v149;
    v35 = v150;
    if ((v37 & 1) == 0)
    {
LABEL_8:
      v45 = type metadata accessor for AccessoryControl(0);
      return (*(*(v45 - 8) + 56))(v148, 1, 1, v45);
    }
  }

  v38 = *(v28 + 104);
  (v38)(v36, *MEMORY[0x277D160F8], v35);
  v39 = v153[19];
  v40 = sub_25268FE70();
  v42 = *(v28 + 8);
  v41 = v28 + 8;
  v145 = v42;
  v42(v36, v35);
  if (v40 != 2 && (v40 & 1) == 0)
  {
    goto LABEL_8;
  }

  (v38)(v36, *MEMORY[0x277D16330], v35);
  v115 = v38;
  v43 = v140;
  sub_25268FD80();
  v145(v36, v35);
  v44 = v152;
  v116 = *(v151 + 48);
  if (v116(v43, 1, v152) == 1)
  {
    sub_252372288(v43, &qword_27F4DB208, &unk_252695180);
    goto LABEL_8;
  }

  (*(v151 + 32))(v143, v43, v44);
  swift_storeEnumTagMultiPayload();
  LODWORD(v140) = sub_25268FE80();
  LODWORD(v118) = *MEMORY[0x277D161A0];
  v47 = v115;
  v115(v36);
  v113 = sub_25268FEA0();
  v114 = v48;
  v49 = v145;
  v145(v36, v35);
  v47(v36, v118, v35);
  v115 = v39;
  v50 = v119;
  sub_25268FD80();
  v118 = v41;
  v49(v36, v35);
  if (v116(v50, 1, v152) == 1)
  {
    sub_252372288(v50, &qword_27F4DB208, &unk_252695180);
    v51 = 1;
    v52 = v147;
    v53 = v123;
    v54 = v122;
    v55 = v121;
  }

  else
  {
    v55 = v121;
    sub_25268F990();
    (*(v151 + 8))(v50, v152);
    v51 = 0;
    v52 = v147;
    v53 = v123;
    v54 = v122;
  }

  v56 = v120;
  (*(v54 + 56))(v55, v51, 1, v53);
  if ((v140 & 1) != 0 && (v114 & 1) == 0)
  {
    sub_25237153C(v55, v56, &qword_27F4DB2D8, &qword_252696D10);
    if ((*(v54 + 48))(v56, 1, v53) != 1)
    {
      sub_252372288(v55, &qword_27F4DB2D8, &qword_252696D10);
      v60 = *(v54 + 32);
      v61 = v117;
      v60(v117, v56, v53);
      v62 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB2E0, &unk_252696D30) + 48);
      *v52 = v113;
      v60(v52 + v62, v61, v53);
      goto LABEL_18;
    }

    sub_252372288(v56, &qword_27F4DB2D8, &qword_252696D10);
  }

  v57 = sub_252692C40();
  v59 = v58;
  sub_252372288(v55, &qword_27F4DB2D8, &qword_252696D10);
  *v52 = v57;
  v52[1] = v59;
LABEL_18:
  swift_storeEnumTagMultiPayload();
  v63 = v125;
  sub_25268E250();
  v140 = sub_25268E2D0();
  v124 = v64;
  v65 = *(v129 + 8);
  v66 = v130;
  v65(v63, v130);
  v67 = v128;
  sub_25268E250();
  v68 = type metadata accessor for IconDescriptor(0);
  v69 = v142;
  sub_25268E2C0();
  v65(v67, v66);
  v70 = v124;
  *v69 = v140;
  v69[1] = v70;
  *(v69 + *(v68 + 24)) = 0;
  sub_25268E260();
  v140 = sub_25268E2D0();
  v129 = v71;
  v65(v63, v66);
  sub_25268E260();
  v72 = (v69 + *(v126 + 28));
  sub_25268E2C0();
  v65(v67, v66);
  v73 = v129;
  *v72 = v140;
  v72[1] = v73;
  *(v72 + *(v68 + 24)) = 0;
  v74 = v153;
  v75 = sub_25268E510();
  v76 = v141;
  sub_25237153C(v69, v141, &qword_27F4DAD88, &unk_2526956E0);
  v77 = v127;
  sub_25239BEB0(v147, v76 + *(v127 + 24), type metadata accessor for ControlTextModifier.Config);
  v78 = (v156 + v74[7]);
  v80 = *v78;
  v79 = v78[1];
  sub_25239BEB0(v146, v76 + v77[11], type metadata accessor for AccessoryControl.StatusProvider);
  v81 = v76 + v77[7];
  *v81 = 0u;
  *(v81 + 16) = 0u;
  *(v81 + 32) = -1;
  v82 = v76 + v77[8];
  *v82 = 0u;
  *(v82 + 16) = 0u;
  *(v82 + 32) = -1;
  v140 = v77[12];
  *(v76 + v77[5]) = v75;
  v83 = (v76 + v77[10]);
  *v83 = v80;
  v83[1] = v79;
  v85 = *v81;
  v84 = *(v81 + 8);
  v86 = *(v81 + 16);
  v87 = *(v81 + 24);
  LOBYTE(v65) = *(v81 + 32);

  v88 = v87;
  v89 = v156;
  sub_252376DA8(v85, v84, v86, v88, v65);
  *v81 = 0u;
  *(v81 + 16) = 0u;
  *(v81 + 32) = -1;
  sub_252376DA8(*v82, *(v82 + 8), *(v82 + 16), *(v82 + 24), *(v82 + 32));
  *v82 = 0u;
  *(v82 + 16) = 0u;
  *(v82 + 32) = -1;
  *(v76 + v140) = 0;
  *(v76 + v77[9]) = 0;
  if (*(v89 + v153[10]))
  {
    v90 = v149;
    v91 = v143;
    sub_25268F9A0();
    v92 = sub_25268FE70();
    v145(v90, v150);
    sub_252372288(v142, &qword_27F4DAD88, &unk_2526956E0);
    sub_25239BF18(v147, type metadata accessor for ControlTextModifier.Config);
    sub_25239BF18(v146, type metadata accessor for AccessoryControl.StatusProvider);
    v149 = (v92 & 1);
    v150 = 0;
    v147 = 1;
    v93 = v89;
  }

  else
  {
    sub_252372288(v142, &qword_27F4DAD88, &unk_2526956E0);
    sub_25239BF18(v147, type metadata accessor for ControlTextModifier.Config);
    sub_25239BF18(v146, type metadata accessor for AccessoryControl.StatusProvider);
    v147 = 0;
    v149 = 0;
    v150 = 1;
    v93 = v89;
    v91 = v143;
  }

  v94 = v131;
  sub_25239BE48(v141, v131, type metadata accessor for AccessoryControl.BinaryViewConfig);
  sub_25268F9B0();
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DADC8, &qword_252695A20);
  v96 = v139;
  v97 = (v139 + *(v95 + 48));
  sub_25239BEB0(v94, v139, type metadata accessor for AccessoryControl.BinaryViewConfig);
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD80, &unk_2526951A0);
  sub_25239BEB0(v133, v97 + *(v98 + 36), type metadata accessor for AccessoryControl.ValueDestination);
  v99 = v91;
  v100 = v135;
  sub_25239BEB0(v93, v135, type metadata accessor for HAPControlSolver.Source);
  v101 = (*(v132 + 80) + 16) & ~*(v132 + 80);
  v102 = swift_allocObject();
  sub_25239BE48(v100, v102 + v101, type metadata accessor for HAPControlSolver.Source);
  v103 = (v97 + *(v98 + 40));
  *v103 = v149;
  v103[1] = 0;
  v103[2] = v147;
  v103[3] = 0;
  v103[4] = v150;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB018, &qword_252695018);
  v104 = swift_allocObject();
  *(v104 + 16) = xmmword_252694E90;
  *(v104 + 32) = sub_25239BDC8;
  *(v104 + 40) = v102;
  sub_25239BF18(v94, type metadata accessor for AccessoryControl.BinaryViewConfig);
  (*(v151 + 8))(v99, v152);
  *v97 = v104;
  swift_storeEnumTagMultiPayload();
  LOBYTE(v100) = *(v93 + v153[13]);
  v105 = (v93 + v153[14]);
  v107 = *v105;
  v106 = v105[1];
  v108 = v148;
  (*(v136 + 32))(v148, v144, v137);
  type metadata accessor for AccessoryControl.ElementIdentifier(0);
  swift_storeEnumTagMultiPayload();
  v109 = type metadata accessor for AccessoryControl(0);
  v110 = (v108 + v109[7]);
  v111 = v109[9];
  *(v108 + v111) = 16;
  sub_25239BE48(v96, v108 + v109[5], type metadata accessor for AccessoryControl.State);
  *(v108 + v109[6]) = v100;
  *v110 = v107;
  v110[1] = v106;
  *(v108 + v109[8]) = 1027;
  *(v108 + v111) = 16;
  *(v108 + v109[10]) = 1;
  (*(*(v109 - 1) + 56))(v108, 0, 1, v109);
}

uint64_t sub_25239A1BC@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB210, &unk_2526951B0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = (&v32 - v7);
  if (*(a1 + 4) == 1)
  {
    if (qword_27F4DA998 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for AccessoryControl.WriteSpecification(0);
    v10 = __swift_project_value_buffer(v9, qword_27F4DB8A0);
    return sub_25239BEB0(v10, a3, type metadata accessor for AccessoryControl.WriteSpecification);
  }

  else
  {
    v12 = *a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB220, &unk_2526951C0);
    v13 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB228, &qword_2526A92D0) - 8);
    v14 = (*(*v13 + 80) + 32) & ~*(*v13 + 80);
    v15 = swift_allocObject();
    v32 = xmmword_252694E90;
    *(v15 + 16) = xmmword_252694E90;
    v16 = v15 + v14;
    v17 = v16 + v13[14];
    v18 = *MEMORY[0x277D16330];
    v19 = sub_25268F4D0();
    (*(*(v19 - 8) + 104))(v16, v18, v19);
    *(v17 + 24) = MEMORY[0x277D839B0];
    *v17 = v12 & 1;
    v20 = sub_25256E63C(v15);
    swift_setDeallocating();
    sub_252372288(v16, &qword_27F4DB228, &qword_2526A92D0);
    swift_deallocClassInstance();
    v21 = type metadata accessor for AccessoryControl.HAPWriteSpecification(0);
    v22 = *(v21 + 24);
    v23 = sub_25268F140();
    (*(*(v23 - 8) + 56))(v8 + v22, 1, 1, v23);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAF58, &qword_2526951D0);
    v24 = sub_25268DA10();
    v25 = *(v24 - 8);
    v26 = (*(v25 + 80) + 32) & ~*(v25 + 80);
    v27 = swift_allocObject();
    *(v27 + 16) = v32;
    (*(v25 + 16))(v27 + v26, a2, v24);
    v28 = sub_25240C1FC(v27);
    swift_setDeallocating();
    (*(v25 + 8))(v27 + v26, v24);
    swift_deallocClassInstance();
    v29 = sub_2523F75C4(v20);

    *v8 = v29;
    v8[1] = 0;
    *(v8 + *(v21 + 28)) = v28;
    v30 = *(*(v21 - 8) + 56);
    v30(v8, 0, 1, v21);
    v30(a3, 1, 1, v21);
    v31 = *(type metadata accessor for AccessoryControl.WriteSpecification(0) + 20);
    *(a3 + v31) = 0;
    sub_2523795D4(v8, a3);

    *(a3 + v31) = 0;
  }

  return result;
}

void sub_25239A5EC(uint64_t *a1)
{
  v2 = *(type metadata accessor for HAPControlSolver.Source(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_2526242A8(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_25239A694(v5);
  *a1 = v3;
}

void sub_25239A694(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_252693360();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        type metadata accessor for HAPControlSolver.Source(0);
        v6 = sub_252692DC0();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for HAPControlSolver.Source(0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_25239AA68(v8, v9, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_25239A7C0(0, v2, 1, a1);
  }
}

void sub_25239A7C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = type metadata accessor for HAPControlSolver.Source(0);
  MEMORY[0x28223BE20](v8);
  v39 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v31 - v11;
  MEMORY[0x28223BE20](v13);
  v16 = &v31 - v15;
  v33 = a2;
  if (a3 != a2)
  {
    v17 = *a4;
    v18 = *(v14 + 72);
    v19 = *a4 + v18 * (a3 - 1);
    v20 = -v18;
    v21 = a1 - a3;
    v38 = v17;
    v32 = v18;
    v22 = v17 + v18 * a3;
LABEL_6:
    v36 = v19;
    v37 = a3;
    v34 = v22;
    v35 = v21;
    while (1)
    {
      sub_25239BEB0(v22, v16, type metadata accessor for HAPControlSolver.Source);
      sub_25239BEB0(v19, v12, type metadata accessor for HAPControlSolver.Source);
      v23 = *(v8 + 28);
      v24 = *&v16[v23];
      v25 = *&v16[v23 + 8];
      v26 = &v12[v23];
      if (v24 == *v26 && v25 == *(v26 + 1))
      {
        sub_25239BF18(v12, type metadata accessor for HAPControlSolver.Source);
        sub_25239BF18(v16, type metadata accessor for HAPControlSolver.Source);
LABEL_5:
        a3 = v37 + 1;
        v19 = v36 + v32;
        v21 = v35 - 1;
        v22 = v34 + v32;
        if (v37 + 1 == v33)
        {
          return;
        }

        goto LABEL_6;
      }

      v28 = sub_2526933B0();
      sub_25239BF18(v12, type metadata accessor for HAPControlSolver.Source);
      sub_25239BF18(v16, type metadata accessor for HAPControlSolver.Source);
      if ((v28 & 1) == 0)
      {
        goto LABEL_5;
      }

      if (!v38)
      {
        break;
      }

      v29 = v39;
      sub_25239BE48(v22, v39, type metadata accessor for HAPControlSolver.Source);
      swift_arrayInitWithTakeFrontToBack();
      sub_25239BE48(v29, v19, type metadata accessor for HAPControlSolver.Source);
      v19 += v20;
      v22 += v20;
      if (__CFADD__(v21++, 1))
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }
}

void sub_25239AA68(uint64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v131 = a1;
  v8 = type metadata accessor for HAPControlSolver.Source(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v136 = &v124 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v143 = &v124 - v12;
  MEMORY[0x28223BE20](v13);
  v144 = &v124 - v14;
  MEMORY[0x28223BE20](v15);
  MEMORY[0x28223BE20](v16);
  v142 = &v124 - v17;
  MEMORY[0x28223BE20](v18);
  v141 = (&v124 - v19);
  MEMORY[0x28223BE20](v20);
  v130 = &v124 - v21;
  MEMORY[0x28223BE20](v22);
  v129 = &v124 - v24;
  v25 = a3[1];
  if (v25 < 1)
  {
    v27 = MEMORY[0x277D84F90];
LABEL_111:
    v28 = *v131;
    if (!*v131)
    {
      goto LABEL_149;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_143:
      v27 = sub_252624154(v27);
    }

    v147 = v27;
    v119 = *(v27 + 16);
    if (v119 >= 2)
    {
      while (*a3)
      {
        v120 = *(v27 + 16 * v119);
        v121 = v27;
        v122 = *(v27 + 16 * (v119 - 1) + 32);
        v27 = *(v27 + 16 * (v119 - 1) + 40);
        sub_25239B4FC(*a3 + *(v9 + 72) * v120, *a3 + *(v9 + 72) * v122, *a3 + *(v9 + 72) * v27, v28);
        if (v5)
        {
          goto LABEL_121;
        }

        if (v27 < v120)
        {
          goto LABEL_136;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v121 = sub_252624154(v121);
        }

        if (v119 - 2 >= *(v121 + 2))
        {
          goto LABEL_137;
        }

        v123 = &v121[16 * v119];
        *v123 = v120;
        *(v123 + 1) = v27;
        v147 = v121;
        sub_2526240C8(v119 - 1);
        v27 = v147;
        v119 = *(v147 + 16);
        if (v119 <= 1)
        {
          goto LABEL_121;
        }
      }

      goto LABEL_147;
    }

LABEL_121:

    return;
  }

  v145 = v23;
  v125 = a4;
  v26 = 0;
  v27 = MEMORY[0x277D84F90];
  v133 = a3;
  v126 = v9;
  v146 = v8;
  while (1)
  {
    v28 = v26 + 1;
    if (v26 + 1 >= v25)
    {
      goto LABEL_37;
    }

    v137 = v25;
    a3 = *a3;
    v29 = *(v9 + 72);
    v139 = v26 + 1;
    v30 = v129;
    sub_25239BEB0(a3 + v29 * v28, v129, type metadata accessor for HAPControlSolver.Source);
    v132 = v26;
    v140 = v29;
    v28 = v130;
    sub_25239BEB0(a3 + v29 * v26, v130, type metadata accessor for HAPControlSolver.Source);
    v31 = *(v8 + 28);
    v32 = *(v30 + v31);
    v33 = *(v30 + v31 + 8);
    v34 = (v28 + v31);
    v35 = v32 == *v34 && v33 == v34[1];
    v128 = v5;
    LODWORD(v138) = v35 ? 0 : sub_2526933B0();
    v127 = v27;
    sub_25239BF18(v130, type metadata accessor for HAPControlSolver.Source);
    sub_25239BF18(v129, type metadata accessor for HAPControlSolver.Source);
    v36 = v132 + 2;
    v37 = v139;
    v38 = v140 * (v132 + 2);
    v39 = a3 + v38;
    v40 = v140 * v139;
    v41 = a3 + v140 * v139;
    do
    {
      v9 = v36;
      v27 = v37;
      v43 = v40;
      v5 = v38;
      if (v36 >= v137)
      {
        break;
      }

      a3 = v141;
      sub_25239BEB0(v39, v141, type metadata accessor for HAPControlSolver.Source);
      v44 = v142;
      sub_25239BEB0(v41, v142, type metadata accessor for HAPControlSolver.Source);
      v45 = *(v146 + 28);
      v46 = *(a3 + v45);
      v47 = *(a3 + v45 + 8);
      v48 = (v44 + v45);
      v49 = v46 == *v48 && v47 == v48[1];
      v42 = v49 ? 0 : sub_2526933B0();
      v28 = type metadata accessor for HAPControlSolver.Source;
      sub_25239BF18(v142, type metadata accessor for HAPControlSolver.Source);
      sub_25239BF18(v141, type metadata accessor for HAPControlSolver.Source);
      v36 = v9 + 1;
      v39 += v140;
      v41 += v140;
      v37 = v27 + 1;
      v40 = v43 + v140;
      v38 = v5 + v140;
    }

    while (((v138 ^ v42) & 1) == 0);
    if (v138)
    {
      v50 = v132;
      if (v9 < v132)
      {
        goto LABEL_140;
      }

      if (v132 >= v9)
      {
        v28 = v9;
        v27 = v127;
        v5 = v128;
        a3 = v133;
        v9 = v126;
        v8 = v146;
        v26 = v132;
        goto LABEL_37;
      }

      v51 = v132 * v140;
      v8 = v146;
      do
      {
        if (v50 != v27)
        {
          v53 = *v133;
          if (!*v133)
          {
            goto LABEL_146;
          }

          sub_25239BE48(v53 + v51, v136, type metadata accessor for HAPControlSolver.Source);
          if (v51 < v43 || v53 + v51 >= (v53 + v5))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v51 != v43)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          sub_25239BE48(v136, v53 + v43, type metadata accessor for HAPControlSolver.Source);
          v8 = v146;
        }

        ++v50;
        v43 -= v140;
        v5 -= v140;
        v51 += v140;
      }

      while (v50 < v27--);
      v28 = v9;
      v27 = v127;
      v5 = v128;
      a3 = v133;
      v9 = v126;
    }

    else
    {
      v28 = v9;
      v27 = v127;
      v5 = v128;
      a3 = v133;
      v9 = v126;
      v8 = v146;
    }

    v26 = v132;
LABEL_37:
    v54 = a3[1];
    if (v28 < v54)
    {
      if (__OFSUB__(v28, v26))
      {
        goto LABEL_139;
      }

      if (v28 - v26 < v125)
      {
        v55 = v26 + v125;
        if (__OFADD__(v26, v125))
        {
          goto LABEL_141;
        }

        if (v55 >= v54)
        {
          v55 = a3[1];
        }

        if (v55 < v26)
        {
LABEL_142:
          __break(1u);
          goto LABEL_143;
        }

        if (v28 != v55)
        {
          break;
        }
      }
    }

LABEL_60:
    if (v28 < v26)
    {
      goto LABEL_138;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v27 = sub_252368690(0, *(v27 + 16) + 1, 1, v27);
    }

    v74 = *(v27 + 16);
    v73 = *(v27 + 24);
    v75 = v74 + 1;
    if (v74 >= v73 >> 1)
    {
      v27 = sub_252368690((v73 > 1), v74 + 1, 1, v27);
    }

    *(v27 + 16) = v75;
    v76 = v27 + 16 * v74;
    *(v76 + 32) = v26;
    *(v76 + 40) = v28;
    v139 = v28;
    v28 = *v131;
    if (!*v131)
    {
      goto LABEL_148;
    }

    if (v74)
    {
      while (1)
      {
        v77 = v75 - 1;
        if (v75 >= 4)
        {
          break;
        }

        if (v75 == 3)
        {
          v78 = *(v27 + 32);
          v79 = *(v27 + 40);
          v88 = __OFSUB__(v79, v78);
          v80 = v79 - v78;
          v81 = v88;
LABEL_80:
          if (v81)
          {
            goto LABEL_127;
          }

          v94 = (v27 + 16 * v75);
          v96 = *v94;
          v95 = v94[1];
          v97 = __OFSUB__(v95, v96);
          v98 = v95 - v96;
          v99 = v97;
          if (v97)
          {
            goto LABEL_130;
          }

          v100 = (v27 + 32 + 16 * v77);
          v102 = *v100;
          v101 = v100[1];
          v88 = __OFSUB__(v101, v102);
          v103 = v101 - v102;
          if (v88)
          {
            goto LABEL_133;
          }

          if (__OFADD__(v98, v103))
          {
            goto LABEL_134;
          }

          if (v98 + v103 >= v80)
          {
            if (v80 < v103)
            {
              v77 = v75 - 2;
            }

            goto LABEL_101;
          }

          goto LABEL_94;
        }

        v104 = (v27 + 16 * v75);
        v106 = *v104;
        v105 = v104[1];
        v88 = __OFSUB__(v105, v106);
        v98 = v105 - v106;
        v99 = v88;
LABEL_94:
        if (v99)
        {
          goto LABEL_129;
        }

        v107 = v27 + 16 * v77;
        v109 = *(v107 + 32);
        v108 = *(v107 + 40);
        v88 = __OFSUB__(v108, v109);
        v110 = v108 - v109;
        if (v88)
        {
          goto LABEL_132;
        }

        if (v110 < v98)
        {
          goto LABEL_3;
        }

LABEL_101:
        v115 = v77 - 1;
        if (v77 - 1 >= v75)
        {
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
          __break(1u);
LABEL_140:
          __break(1u);
LABEL_141:
          __break(1u);
          goto LABEL_142;
        }

        if (!*a3)
        {
          goto LABEL_145;
        }

        v116 = *(v27 + 32 + 16 * v115);
        v117 = *(v27 + 32 + 16 * v77 + 8);
        sub_25239B4FC(*a3 + *(v9 + 72) * v116, *a3 + *(v9 + 72) * *(v27 + 32 + 16 * v77), *a3 + *(v9 + 72) * v117, v28);
        if (v5)
        {
          goto LABEL_121;
        }

        if (v117 < v116)
        {
          goto LABEL_123;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v27 = sub_252624154(v27);
        }

        if (v115 >= *(v27 + 16))
        {
          goto LABEL_124;
        }

        v118 = v27 + 16 * v115;
        *(v118 + 32) = v116;
        *(v118 + 40) = v117;
        v147 = v27;
        sub_2526240C8(v77);
        v27 = v147;
        v75 = *(v147 + 16);
        if (v75 <= 1)
        {
          goto LABEL_3;
        }
      }

      v82 = v27 + 32 + 16 * v75;
      v83 = *(v82 - 64);
      v84 = *(v82 - 56);
      v88 = __OFSUB__(v84, v83);
      v85 = v84 - v83;
      if (v88)
      {
        goto LABEL_125;
      }

      v87 = *(v82 - 48);
      v86 = *(v82 - 40);
      v88 = __OFSUB__(v86, v87);
      v80 = v86 - v87;
      v81 = v88;
      if (v88)
      {
        goto LABEL_126;
      }

      v89 = (v27 + 16 * v75);
      v91 = *v89;
      v90 = v89[1];
      v88 = __OFSUB__(v90, v91);
      v92 = v90 - v91;
      if (v88)
      {
        goto LABEL_128;
      }

      v88 = __OFADD__(v80, v92);
      v93 = v80 + v92;
      if (v88)
      {
        goto LABEL_131;
      }

      if (v93 >= v85)
      {
        v111 = (v27 + 32 + 16 * v77);
        v113 = *v111;
        v112 = v111[1];
        v88 = __OFSUB__(v112, v113);
        v114 = v112 - v113;
        if (v88)
        {
          goto LABEL_135;
        }

        if (v80 < v114)
        {
          v77 = v75 - 2;
        }

        goto LABEL_101;
      }

      goto LABEL_80;
    }

LABEL_3:
    v25 = a3[1];
    v26 = v139;
    v8 = v146;
    if (v139 >= v25)
    {
      goto LABEL_111;
    }
  }

  v127 = v27;
  v128 = v5;
  v56 = *a3;
  v57 = *(v9 + 72);
  v58 = *a3 + v57 * (v28 - 1);
  v59 = -v57;
  v132 = v26;
  v60 = v26 - v28;
  v134 = v57;
  v135 = v55;
  v61 = v56 + v28 * v57;
  v62 = v144;
  while (2)
  {
    v138 = v60;
    v139 = v28;
    v137 = v61;
    v63 = v61;
    v140 = v58;
LABEL_49:
    v64 = v145;
    sub_25239BEB0(v63, v145, type metadata accessor for HAPControlSolver.Source);
    sub_25239BEB0(v58, v62, type metadata accessor for HAPControlSolver.Source);
    v65 = *(v8 + 28);
    v66 = *(v64 + v65);
    v67 = *(v64 + v65 + 8);
    v68 = (v62 + v65);
    if (v66 == *v68 && v67 == v68[1])
    {
      sub_25239BF18(v62, type metadata accessor for HAPControlSolver.Source);
      sub_25239BF18(v64, type metadata accessor for HAPControlSolver.Source);
LABEL_47:
      v28 = v139 + 1;
      v58 = v140 + v134;
      v60 = v138 - 1;
      v61 = (v137 + v134);
      if (v139 + 1 != v135)
      {
        continue;
      }

      v28 = v135;
      v27 = v127;
      v5 = v128;
      v26 = v132;
      a3 = v133;
      v9 = v126;
      goto LABEL_60;
    }

    break;
  }

  v70 = sub_2526933B0();
  sub_25239BF18(v62, type metadata accessor for HAPControlSolver.Source);
  sub_25239BF18(v64, type metadata accessor for HAPControlSolver.Source);
  if ((v70 & 1) == 0)
  {
    v8 = v146;
    goto LABEL_47;
  }

  v8 = v146;
  if (v56)
  {
    v71 = v143;
    sub_25239BE48(v63, v143, type metadata accessor for HAPControlSolver.Source);
    swift_arrayInitWithTakeFrontToBack();
    sub_25239BE48(v71, v58, type metadata accessor for HAPControlSolver.Source);
    v58 += v59;
    v63 += v59;
    v72 = __CFADD__(v60++, 1);
    v62 = v144;
    if (v72)
    {
      goto LABEL_47;
    }

    goto LABEL_49;
  }

  __break(1u);
LABEL_145:
  __break(1u);
LABEL_146:
  __break(1u);
LABEL_147:
  __break(1u);
LABEL_148:
  __break(1u);
LABEL_149:
  __break(1u);
}

void sub_25239B4FC(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v56 = a4;
  v55 = type metadata accessor for HAPControlSolver.Source(0);
  MEMORY[0x28223BE20](v55);
  v54 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v53 = &v48 - v9;
  MEMORY[0x28223BE20](v10);
  v12 = &v48 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v48 - v14;
  v17 = *(v16 + 72);
  if (!v17)
  {
    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_71;
  }

  v18 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_72;
  }

  v19 = (a2 - a1) / v17;
  v59 = a1;
  v58 = v56;
  if (v19 >= v18 / v17)
  {
    v21 = v18 / v17 * v17;
    if (v56 < a2 || a2 + v21 <= v56)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v56 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v31 = v56 + v21;
    if (v21 >= 1)
    {
      v32 = -v17;
      v33 = v56 + v21;
      do
      {
        v49 = v31;
        v34 = a2;
        v35 = a2 + v32;
        v51 = v34;
        v52 = v35;
        while (1)
        {
          if (v34 <= a1)
          {
            v59 = v34;
            v57 = v49;
            goto LABEL_69;
          }

          v36 = a3;
          v50 = v31;
          v37 = v32;
          v38 = v33 + v32;
          v39 = v33 + v32;
          v40 = v53;
          sub_25239BEB0(v39, v53, type metadata accessor for HAPControlSolver.Source);
          v41 = v54;
          sub_25239BEB0(v35, v54, type metadata accessor for HAPControlSolver.Source);
          v42 = *(v55 + 28);
          v43 = *(v40 + v42);
          v44 = *(v40 + v42 + 8);
          v45 = (v41 + v42);
          v46 = v43 == *v45 && v44 == v45[1];
          v47 = v46 ? 0 : sub_2526933B0();
          v32 = v37;
          a3 = v36 + v37;
          sub_25239BF18(v54, type metadata accessor for HAPControlSolver.Source);
          sub_25239BF18(v53, type metadata accessor for HAPControlSolver.Source);
          if (v47)
          {
            break;
          }

          v31 = v38;
          v35 = v52;
          if (v36 < v33 || a3 >= v33)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v36 != v33)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v33 = v38;
          v34 = v51;
          if (v38 <= v56)
          {
            a2 = v51;
            goto LABEL_68;
          }
        }

        a2 = v52;
        if (v36 < v51 || a3 >= v51)
        {
          swift_arrayInitWithTakeFrontToBack();
          v31 = v50;
        }

        else
        {
          v31 = v50;
          if (v36 != v51)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v33 > v56);
    }

LABEL_68:
    v59 = a2;
    v57 = v31;
  }

  else
  {
    v20 = v19 * v17;
    if (v56 < a1 || a1 + v20 <= v56)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v56 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v22 = v56 + v20;
    v57 = v56 + v20;
    if (v20 >= 1 && a2 < a3)
    {
      while (1)
      {
        sub_25239BEB0(a2, v15, type metadata accessor for HAPControlSolver.Source);
        sub_25239BEB0(v56, v12, type metadata accessor for HAPControlSolver.Source);
        v24 = *(v55 + 28);
        v25 = *&v15[v24];
        v26 = *&v15[v24 + 8];
        v27 = &v12[v24];
        if (v25 == *v27 && v26 == *(v27 + 1))
        {
          break;
        }

        v29 = sub_2526933B0();
        sub_25239BF18(v12, type metadata accessor for HAPControlSolver.Source);
        sub_25239BF18(v15, type metadata accessor for HAPControlSolver.Source);
        if ((v29 & 1) == 0)
        {
          goto LABEL_30;
        }

        if (a1 < a2 || a1 >= a2 + v17)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != a2)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        a2 += v17;
LABEL_38:
        a1 += v17;
        v59 = a1;
        if (v56 >= v22 || a2 >= a3)
        {
          goto LABEL_69;
        }
      }

      sub_25239BF18(v12, type metadata accessor for HAPControlSolver.Source);
      sub_25239BF18(v15, type metadata accessor for HAPControlSolver.Source);
LABEL_30:
      v30 = v56 + v17;
      if (a1 < v56 || a1 >= v30)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (a1 != v56)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      v58 = v30;
      v56 = v30;
      goto LABEL_38;
    }
  }

LABEL_69:
  sub_252594BD8(&v59, &v58, &v57);
}

uint64_t sub_25239BAB0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AccessoryControlGroup(0);
  v5 = *(v4 - 1);
  MEMORY[0x28223BE20](v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for AccessoryControl.ValueDestination(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25239BEB0(a2, v10, type metadata accessor for AccessoryControl.ValueDestination);
  v11 = type metadata accessor for HAPControlSolver.Source(0);
  v12 = v11;
  v13 = *(a1 + *(v11 + 64));
  if (!*(v13 + 16))
  {
    v13 = *(a1 + *(v11 + 68));
  }

  v27 = v13;
  swift_bridgeObjectRetain_n();
  sub_25239A5EC(&v27);

  v15 = v27;
  MEMORY[0x28223BE20](v14);
  *(&v26 - 2) = v10;
  v16 = sub_2523656F0(sub_25239BDAC, (&v26 - 4), v15);

  v17 = sub_25268DA10();
  (*(*(v17 - 8) + 16))(v7, a1, v17);
  type metadata accessor for AccessoryControl.ElementIdentifier(0);
  swift_storeEnumTagMultiPayload();
  *&v7[v4[5]] = v16;
  type metadata accessor for AccessoryControlGroup.Layout(0);
  swift_storeEnumTagMultiPayload();
  v18 = (a1 + *(v12 + 28));
  v19 = *v18;
  v20 = v18[1];
  v21 = &v7[v4[7]];
  v22 = &v7[v4[6]];
  *v22 = v19;
  *(v22 + 1) = v20;
  *v21 = 0;
  *(v21 + 1) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD98, &qword_252694EB8);
  v23 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_252694E90;
  sub_25239BE48(v7, v24 + v23, type metadata accessor for AccessoryControlGroup);

  sub_25239BF18(v10, type metadata accessor for AccessoryControl.ValueDestination);
  return v24;
}

uint64_t sub_25239BDC8@<X0>(char *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(type metadata accessor for HAPControlSolver.Source(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_25239A1BC(a1, v6, a2);
}

uint64_t sub_25239BE48(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_25239BEB0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_25239BF18(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_25239BF88@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB210, &unk_2526951B0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = (&v32 - v7);
  if (*(a1 + 4) == 1)
  {
    if (qword_27F4DA998 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for AccessoryControl.WriteSpecification(0);
    v10 = __swift_project_value_buffer(v9, qword_27F4DB8A0);
    return sub_25239F918(v10, a3, type metadata accessor for AccessoryControl.WriteSpecification);
  }

  else
  {
    v12 = *a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB220, &unk_2526951C0);
    v13 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB228, &qword_2526A92D0) - 8);
    v14 = (*(*v13 + 80) + 32) & ~*(*v13 + 80);
    v15 = swift_allocObject();
    v32 = xmmword_252694E90;
    *(v15 + 16) = xmmword_252694E90;
    v16 = v15 + v14;
    v17 = v16 + v13[14];
    v18 = *MEMORY[0x277D16330];
    v19 = sub_25268F4D0();
    (*(*(v19 - 8) + 104))(v16, v18, v19);
    *(v17 + 24) = MEMORY[0x277D839B0];
    *v17 = v12 & 1;
    v20 = sub_25256E63C(v15);
    swift_setDeallocating();
    sub_252372288(v16, &qword_27F4DB228, &qword_2526A92D0);
    swift_deallocClassInstance();
    v21 = type metadata accessor for AccessoryControl.HAPWriteSpecification(0);
    v22 = *(v21 + 24);
    v23 = sub_25268F140();
    (*(*(v23 - 8) + 56))(v8 + v22, 1, 1, v23);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAF58, &qword_2526951D0);
    v24 = sub_25268DA10();
    v25 = *(v24 - 8);
    v26 = (*(v25 + 80) + 32) & ~*(v25 + 80);
    v27 = swift_allocObject();
    *(v27 + 16) = v32;
    (*(v25 + 16))(v27 + v26, a2, v24);
    v28 = sub_25240C1FC(v27);
    swift_setDeallocating();
    (*(v25 + 8))(v27 + v26, v24);
    swift_deallocClassInstance();
    v29 = sub_2523F75C4(v20);

    *v8 = v29;
    v8[1] = 0;
    *(v8 + *(v21 + 28)) = v28;
    v30 = *(*(v21 - 8) + 56);
    v30(v8, 0, 1, v21);
    v30(a3, 1, 1, v21);
    v31 = *(type metadata accessor for AccessoryControl.WriteSpecification(0) + 20);
    *(a3 + v31) = 0;
    sub_252377048(v8, a3, &qword_27F4DB210, &unk_2526951B0);

    *(a3 + v31) = 0;
  }

  return result;
}

uint64_t sub_25239C3C4(uint64_t *a1)
{
  v2 = sub_25268F4D0();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *a1;
  (*(v3 + 104))(v6, *MEMORY[0x277D16160], v2, v4);
  type metadata accessor for HAPControlSolver.Source(0);
  v8 = sub_25268FE60();
  LODWORD(a1) = v9;
  (*(v3 + 8))(v6, v2);
  return (v7 == v8) & ~a1;
}

uint64_t sub_25239C4F4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB210, &unk_2526951B0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = (&v32 - v7);
  if (*(a1 + 8) == 1)
  {
    if (qword_27F4DA998 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for AccessoryControl.WriteSpecification(0);
    v10 = __swift_project_value_buffer(v9, qword_27F4DB8A0);
    return sub_25239F918(v10, a3, type metadata accessor for AccessoryControl.WriteSpecification);
  }

  else
  {
    v12 = *a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB220, &unk_2526951C0);
    v13 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB228, &qword_2526A92D0) - 8);
    v14 = (*(*v13 + 80) + 32) & ~*(*v13 + 80);
    v15 = swift_allocObject();
    v32 = xmmword_252694E90;
    *(v15 + 16) = xmmword_252694E90;
    v16 = v15 + v14;
    v17 = (v16 + v13[14]);
    v18 = *MEMORY[0x277D16160];
    v19 = sub_25268F4D0();
    (*(*(v19 - 8) + 104))(v16, v18, v19);
    v17[3] = MEMORY[0x277D83B88];
    *v17 = v12;
    v20 = sub_25256E63C(v15);
    swift_setDeallocating();
    sub_252372288(v16, &qword_27F4DB228, &qword_2526A92D0);
    swift_deallocClassInstance();
    v21 = type metadata accessor for AccessoryControl.HAPWriteSpecification(0);
    v22 = *(v21 + 24);
    v23 = sub_25268F140();
    (*(*(v23 - 8) + 56))(v8 + v22, 1, 1, v23);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAF58, &qword_2526951D0);
    v24 = sub_25268DA10();
    v25 = *(v24 - 8);
    v26 = (*(v25 + 80) + 32) & ~*(v25 + 80);
    v27 = swift_allocObject();
    *(v27 + 16) = v32;
    (*(v25 + 16))(v27 + v26, a2, v24);
    v28 = sub_25240C1FC(v27);
    swift_setDeallocating();
    (*(v25 + 8))(v27 + v26, v24);
    swift_deallocClassInstance();
    v29 = sub_2523F75C4(v20);

    *v8 = v29;
    v8[1] = 0;
    *(v8 + *(v21 + 28)) = v28;
    v30 = *(*(v21 - 8) + 56);
    v30(v8, 0, 1, v21);
    v30(a3, 1, 1, v21);
    v31 = *(type metadata accessor for AccessoryControl.WriteSpecification(0) + 20);
    *(a3 + v31) = 0;
    sub_252377048(v8, a3, &qword_27F4DB210, &unk_2526951B0);

    *(a3 + v31) = 0;
  }

  return result;
}

uint64_t sub_25239C930(char *__src, char *__dst, char *a3, char *a4, uint64_t a5)
{
  v6 = v5;
  v8 = a4;
  v9 = a3;
  v10 = __dst;
  v12 = __dst - __src;
  v13 = __dst - __src + 31;
  if (__dst - __src >= 0)
  {
    v13 = __dst - __src;
  }

  v14 = v13 >> 5;
  v15 = a3 - __dst;
  v16 = a3 - __dst + 31;
  if (a3 - __dst >= 0)
  {
    v16 = a3 - __dst;
  }

  v17 = v16 >> 5;
  if (v14 >= v16 >> 5)
  {
    if (a4 != __dst || &__dst[32 * v17] <= a4)
    {
      memmove(a4, __dst, 32 * v17);
    }

    v18 = &v8[32 * v17];
    if (v15 < 32 || v10 <= __src)
    {
      goto LABEL_81;
    }

    v38 = a5 + 32;
    while (1)
    {
      v39 = v10 - 32;
      v40 = v9;
      v41 = v18;
      while (1)
      {
        v43 = *(v41 - 4);
        v41 -= 32;
        v42 = v43;
        v44 = *(a5 + 16);
        if (!v44)
        {
          v47 = 1;
          if (!v6)
          {
            goto LABEL_68;
          }

          goto LABEL_81;
        }

        v45 = 0;
        v46 = *v39;
        while (*(v38 + 8 * v45) != v42)
        {
          if (v44 == ++v45)
          {
LABEL_61:
            v49 = v44 - 1;
            v50 = (a5 + 32);
            do
            {
              v52 = *v50++;
              v51 = v52;
              v31 = v49-- != 0;
              v53 = v31;
              v33 = v51 == v46;
              v47 = v51 != v46;
            }

            while (!v33 && (v53 & 1) != 0);
            if (!v6)
            {
              goto LABEL_68;
            }

LABEL_81:
            v56 = v18 - v8;
            v57 = v56 + 31;
            if (v56 >= 0)
            {
              v57 = v56;
            }

            if (v10 < v8 || v10 >= &v8[v57 & 0xFFFFFFFFFFFFFFE0] || v10 != v8)
            {
              v36 = 32 * (v57 >> 5);
              v37 = v10;
LABEL_87:
              memmove(v37, v8, v36);
            }

            goto LABEL_88;
          }
        }

        v48 = 0;
        while (*(v38 + 8 * v48) != v46)
        {
          if (v44 == ++v48)
          {
            goto LABEL_61;
          }
        }

        v47 = v45 < v48;
        if (v6)
        {
          goto LABEL_81;
        }

LABEL_68:
        v9 = v40 - 32;
        if (v47)
        {
          break;
        }

        if (v40 != v18)
        {
          v54 = *(v41 + 1);
          *v9 = *v41;
          *(v40 - 1) = v54;
        }

        v18 = v41;
        v40 -= 32;
        if (v41 <= v8)
        {
          v18 = v41;
          goto LABEL_81;
        }
      }

      if (v40 != v10)
      {
        v55 = *(v10 - 1);
        *v9 = *v39;
        *(v40 - 1) = v55;
      }

      if (v18 > v8)
      {
        v10 -= 32;
        if (v39 > __src)
        {
          continue;
        }
      }

      v10 = v39;
      goto LABEL_81;
    }
  }

  if (a4 != __src || &__src[32 * v14] <= a4)
  {
    memmove(a4, __src, 32 * v14);
  }

  v18 = &v8[32 * v14];
  if (v12 < 32 || v10 >= v9)
  {
    v10 = __src;
    goto LABEL_81;
  }

  v19 = a5 + 32;
  v20 = v8;
  v21 = __src;
  while (1)
  {
    v22 = *(a5 + 16);
    if (v22)
    {
      break;
    }

    v25 = 1;
    if (v6)
    {
      goto LABEL_39;
    }

LABEL_29:
    if (!v25)
    {
      v34 = v20;
      v33 = v21 == v20;
      v20 += 32;
      if (v33)
      {
        goto LABEL_35;
      }

LABEL_34:
      v35 = *(v34 + 1);
      *v21 = *v34;
      *(v21 + 1) = v35;
      goto LABEL_35;
    }

    v34 = v10;
    v33 = v21 == v10;
    v10 += 32;
    if (!v33)
    {
      goto LABEL_34;
    }

LABEL_35:
    v21 += 32;
    if (v20 >= v18 || v10 >= v9)
    {
      v8 = v20;
      v10 = v21;
      goto LABEL_81;
    }
  }

  v23 = 0;
  v24 = *v20;
  while (*(v19 + 8 * v23) != *v10)
  {
    if (v22 == ++v23)
    {
LABEL_22:
      v27 = v22 - 1;
      v28 = (a5 + 32);
      do
      {
        v30 = *v28++;
        v29 = v30;
        v31 = v27-- != 0;
        v32 = v31;
        v33 = v29 == v24;
        v25 = v29 != v24;
      }

      while (!v33 && (v32 & 1) != 0);
      if (v6)
      {
        goto LABEL_39;
      }

      goto LABEL_29;
    }
  }

  v26 = 0;
  while (*(v19 + 8 * v26) != v24)
  {
    if (v22 == ++v26)
    {
      goto LABEL_22;
    }
  }

  v25 = v23 < v26;
  if (!v6)
  {
    goto LABEL_29;
  }

LABEL_39:
  if (__src < v8 || v18 <= __src || v8 != __src)
  {
    v36 = 32 * v14;
    v37 = __src;
    goto LABEL_87;
  }

LABEL_88:

  return 1;
}

uint64_t sub_25239CCA8(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v7 = a5;
  v9 = a3[1];
  if (v9 < 1)
  {
    swift_bridgeObjectRetain_n();
    v13 = MEMORY[0x277D84F90];
LABEL_141:
    v135 = *a1;
    if (*a1)
    {
      swift_bridgeObjectRetain_n();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_172;
      }

      goto LABEL_143;
    }

    goto LABEL_181;
  }

  v11 = (a5 + 32);
  swift_bridgeObjectRetain_n();
  v12 = 0;
  v13 = MEMORY[0x277D84F90];
  v129 = a4;
  v130 = a1;
  while (1)
  {
    v14 = v12 + 1;
    if (v12 + 1 < v9)
    {
      v15 = *a3;
      v16 = *(v7 + 16);
      if (v16)
      {
        v17 = 0;
        v18 = *(v15 + 32 * v12);
        while (v11[v17] != *(v15 + 32 * v14))
        {
          if (v16 == ++v17)
          {
LABEL_15:
            v21 = v16 - 1;
            v22 = v11;
            do
            {
              v24 = *v22++;
              v23 = v24;
              v25 = v21-- != 0;
              v26 = v25;
              v27 = v23 == v18;
              v19 = v23 != v18;
            }

            while (!v27 && (v26 & 1) != 0);
            if (v6)
            {
              goto LABEL_152;
            }

            goto LABEL_22;
          }
        }

        v20 = 0;
        while (v11[v20] != v18)
        {
          if (v16 == ++v20)
          {
            goto LABEL_15;
          }
        }

        v19 = v17 < v20;
        if (v6)
        {
          goto LABEL_152;
        }
      }

      else
      {
        v19 = 1;
        if (v6)
        {
          goto LABEL_152;
        }
      }

LABEL_22:
      v28 = 0;
      do
      {
        v30 = v14;
        v31 = v28;
        if (++v14 >= v9)
        {
          break;
        }

        v32 = *(v7 + 16);
        if (v32)
        {
          v33 = 0;
          v34 = *(v15 + 32 * v30);
          while (v11[v33] != *(v15 + 32 * v14))
          {
            if (v32 == ++v33)
            {
LABEL_34:
              v36 = v32 - 1;
              v37 = v11;
              do
              {
                v39 = *v37++;
                v38 = v39;
                v25 = v36-- != 0;
                v40 = v25;
                v27 = v38 == v34;
                v29 = v38 != v34;
              }

              while (!v27 && (v40 & 1) != 0);
              goto LABEL_24;
            }
          }

          v35 = 0;
          while (v11[v35] != v34)
          {
            if (v32 == ++v35)
            {
              goto LABEL_34;
            }
          }

          v29 = v33 < v35;
        }

        else
        {
          v29 = 1;
        }

LABEL_24:
        v28 = v31 + 32;
      }

      while (v19 == v29);
      if (v19)
      {
        if (v14 < v12)
        {
          goto LABEL_175;
        }

        if (v12 < v14)
        {
          v41 = 0;
          v42 = v12;
          do
          {
            if (v42 != v30)
            {
              if (!*a3)
              {
                goto LABEL_179;
              }

              v43 = *a3 + 32 * v12;
              v44 = (v43 + v41);
              v45 = v43 + v31;
              v46 = *(v44 + 2);
              v47 = *(v44 + 3);
              v48 = *v44;
              v49 = *(v45 + 48);
              *v44 = *(v45 + 32);
              v44[1] = v49;
              *(v45 + 32) = v48;
              *(v45 + 48) = v46;
              *(v45 + 56) = v47;
            }

            ++v42;
            v31 -= 32;
            v41 += 32;
          }

          while (v42 < v30--);
        }
      }
    }

    v51 = a3[1];
    if (v14 >= v51)
    {
      goto LABEL_184;
    }

    if (__OFSUB__(v14, v12))
    {
      goto LABEL_171;
    }

    if (v14 - v12 >= a4)
    {
      goto LABEL_184;
    }

    if (__OFADD__(v12, a4))
    {
      __break(1u);
LABEL_174:
      __break(1u);
LABEL_175:
      __break(1u);
LABEL_176:
      swift_bridgeObjectRelease_n();
      __break(1u);
LABEL_177:
      swift_bridgeObjectRelease_n();
      __break(1u);
      goto LABEL_178;
    }

    if (v12 + a4 < v51)
    {
      v51 = v12 + a4;
    }

    if (v51 < v12)
    {
      goto LABEL_174;
    }

    if (v14 == v51)
    {
LABEL_184:
      if (v14 < v12)
      {
        goto LABEL_170;
      }
    }

    else
    {
      v100 = *a3;
      do
      {
        v101 = *(v100 + 32 * v14);
        v102 = v14;
        do
        {
          v103 = v102 - 1;
          v104 = (v100 + 32 * (v102 - 1));
          v105 = *(v7 + 16);
          if (!v105)
          {
            v108 = 1;
            if (!v6)
            {
              goto LABEL_130;
            }

            goto LABEL_152;
          }

          v106 = 0;
          v107 = *v104;
          while (v11[v106] != v101)
          {
            if (v105 == ++v106)
            {
LABEL_123:
              v110 = v105 - 1;
              v111 = v11;
              do
              {
                v113 = *v111++;
                v112 = v113;
                v25 = v110-- != 0;
                v114 = v25;
                v27 = v112 == v107;
                v108 = v112 != v107;
              }

              while (!v27 && (v114 & 1) != 0);
              if (!v6)
              {
                goto LABEL_130;
              }

LABEL_152:
              swift_bridgeObjectRelease_n();
            }
          }

          v109 = 0;
          while (v11[v109] != v107)
          {
            if (v105 == ++v109)
            {
              goto LABEL_123;
            }
          }

          v108 = v106 < v109;
          if (v6)
          {
            goto LABEL_152;
          }

LABEL_130:
          if (!v108)
          {
            break;
          }

          if (!v100)
          {
            goto LABEL_177;
          }

          v115 = (v100 + 32 * v102);
          v116 = *(v115 + 2);
          v117 = *(v115 + 3);
          v118 = *v115;
          v119 = *(v104 + 1);
          *v115 = *v104;
          v115[1] = v119;
          *v104 = v118;
          v104[2] = v116;
          v104[3] = v117;
          v101 = v118;
          v102 = v103;
        }

        while (v103 != v12);
        ++v14;
      }

      while (v14 != v51);
      v14 = v51;
      if (v51 < v12)
      {
        goto LABEL_170;
      }
    }

    v135 = v6;
    v131 = v14;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v13 = sub_252368690(0, *(v13 + 2) + 1, 1, v13);
    }

    v6 = *(v13 + 2);
    v52 = *(v13 + 3);
    v53 = v6 + 1;
    if (v6 >= v52 >> 1)
    {
      v13 = sub_252368690((v52 > 1), v6 + 1, 1, v13);
    }

    *(v13 + 2) = v53;
    v54 = &v13[16 * v6];
    *(v54 + 4) = v12;
    *(v54 + 5) = v131;
    v132 = *a1;
    if (!*a1)
    {
      goto LABEL_180;
    }

    if (v6)
    {
      break;
    }

LABEL_3:
    v6 = v135;
    v9 = a3[1];
    a1 = v130;
    v12 = v131;
    v7 = a5;
    a4 = v129;
    if (v131 >= v9)
    {
      goto LABEL_141;
    }
  }

  while (1)
  {
    v55 = v53 - 1;
    if (v53 >= 4)
    {
      v60 = &v13[16 * v53 + 32];
      v61 = *(v60 - 64);
      v62 = *(v60 - 56);
      v66 = __OFSUB__(v62, v61);
      v63 = v62 - v61;
      if (v66)
      {
        goto LABEL_157;
      }

      v65 = *(v60 - 48);
      v64 = *(v60 - 40);
      v66 = __OFSUB__(v64, v65);
      v58 = v64 - v65;
      v59 = v66;
      if (v66)
      {
        goto LABEL_158;
      }

      v67 = &v13[16 * v53];
      v69 = *v67;
      v68 = *(v67 + 1);
      v66 = __OFSUB__(v68, v69);
      v70 = v68 - v69;
      if (v66)
      {
        goto LABEL_160;
      }

      v66 = __OFADD__(v58, v70);
      v71 = v58 + v70;
      if (v66)
      {
        goto LABEL_163;
      }

      if (v71 >= v63)
      {
        v89 = &v13[16 * v55 + 32];
        v91 = *v89;
        v90 = *(v89 + 1);
        v66 = __OFSUB__(v90, v91);
        v92 = v90 - v91;
        if (v66)
        {
          goto LABEL_169;
        }

        if (v58 < v92)
        {
          v55 = v53 - 2;
        }

        goto LABEL_101;
      }

      goto LABEL_80;
    }

    if (v53 == 3)
    {
      v56 = *(v13 + 4);
      v57 = *(v13 + 5);
      v66 = __OFSUB__(v57, v56);
      v58 = v57 - v56;
      v59 = v66;
LABEL_80:
      if (v59)
      {
        goto LABEL_159;
      }

      v72 = &v13[16 * v53];
      v74 = *v72;
      v73 = *(v72 + 1);
      v75 = __OFSUB__(v73, v74);
      v76 = v73 - v74;
      v77 = v75;
      if (v75)
      {
        goto LABEL_162;
      }

      v78 = &v13[16 * v55 + 32];
      v80 = *v78;
      v79 = *(v78 + 1);
      v66 = __OFSUB__(v79, v80);
      v81 = v79 - v80;
      if (v66)
      {
        goto LABEL_165;
      }

      if (__OFADD__(v76, v81))
      {
        goto LABEL_166;
      }

      if (v76 + v81 >= v58)
      {
        if (v58 < v81)
        {
          v55 = v53 - 2;
        }

        goto LABEL_101;
      }

      goto LABEL_94;
    }

    v82 = &v13[16 * v53];
    v84 = *v82;
    v83 = *(v82 + 1);
    v66 = __OFSUB__(v83, v84);
    v76 = v83 - v84;
    v77 = v66;
LABEL_94:
    if (v77)
    {
      goto LABEL_161;
    }

    v85 = &v13[16 * v55];
    v87 = *(v85 + 4);
    v86 = *(v85 + 5);
    v66 = __OFSUB__(v86, v87);
    v88 = v86 - v87;
    if (v66)
    {
      goto LABEL_164;
    }

    if (v88 < v76)
    {
      goto LABEL_3;
    }

LABEL_101:
    v93 = v55 - 1;
    if (v55 - 1 >= v53)
    {
      break;
    }

    v94 = *a3;
    if (!*a3)
    {
      goto LABEL_176;
    }

    v95 = *&v13[16 * v93 + 32];
    v6 = *&v13[16 * v55 + 40];
    v96 = (v94 + 32 * v95);
    v97 = (v94 + 32 * *&v13[16 * v55 + 32]);
    v98 = (v94 + 32 * v6);

    sub_25239C930(v96, v97, v98, v132, a5);
    if (v135)
    {
      goto LABEL_152;
    }

    if (v6 < v95)
    {
      goto LABEL_155;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v13 = sub_252624154(v13);
    }

    if (v93 >= *(v13 + 2))
    {
      goto LABEL_156;
    }

    v99 = &v13[16 * v93];
    *(v99 + 4) = v95;
    *(v99 + 5) = v6;
    sub_2526240C8(v55);
    v53 = *(v13 + 2);
    if (v53 <= 1)
    {
      goto LABEL_3;
    }
  }

  __break(1u);
LABEL_155:
  __break(1u);
LABEL_156:
  __break(1u);
LABEL_157:
  __break(1u);
LABEL_158:
  __break(1u);
LABEL_159:
  __break(1u);
LABEL_160:
  __break(1u);
LABEL_161:
  __break(1u);
LABEL_162:
  __break(1u);
LABEL_163:
  __break(1u);
LABEL_164:
  __break(1u);
LABEL_165:
  __break(1u);
LABEL_166:
  __break(1u);
LABEL_167:
  __break(1u);
LABEL_168:
  __break(1u);
LABEL_169:
  __break(1u);
LABEL_170:
  __break(1u);
LABEL_171:
  __break(1u);
LABEL_172:
  v13 = sub_252624154(v13);
LABEL_143:
  v120 = *(v13 + 2);
  if (v120 < 2)
  {
LABEL_151:

    return swift_bridgeObjectRelease_n();
  }

  else
  {
    while (1)
    {
      v121 = *a3;
      if (!*a3)
      {
        break;
      }

      v122 = *&v13[16 * v120];
      v123 = *&v13[16 * v120 + 24];
      v124 = (v121 + 32 * v122);
      v125 = (v121 + 32 * *&v13[16 * v120 + 16]);
      v126 = (v121 + 32 * v123);

      sub_25239C930(v124, v125, v126, v135, a5);
      if (v6)
      {
        goto LABEL_151;
      }

      if (v123 < v122)
      {
        goto LABEL_167;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v13 = sub_252624154(v13);
      }

      if (v120 - 2 >= *(v13 + 2))
      {
        goto LABEL_168;
      }

      v127 = &v13[16 * v120];
      *v127 = v122;
      *(v127 + 1) = v123;
      sub_2526240C8(v120 - 1);
      v120 = *(v13 + 2);
      if (v120 <= 1)
      {
        goto LABEL_151;
      }
    }

LABEL_178:

    __break(1u);
LABEL_179:
    swift_bridgeObjectRelease_n();
    __break(1u);
LABEL_180:
    swift_bridgeObjectRelease_n();
    __break(1u);
LABEL_181:
    result = swift_bridgeObjectRelease_n();
    __break(1u);
  }

  return result;
}

uint64_t sub_25239D4BC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  if (a3 != a2)
  {
    v6 = *a4;
    v7 = a5 + 32;
LABEL_5:
    v8 = *(v6 + 32 * a3);
    v9 = a3;
    while (1)
    {
      v10 = v9 - 1;
      v11 = (v6 + 32 * (v9 - 1));
      v12 = *(a5 + 16);
      if (v12)
      {
        break;
      }

      v15 = 1;
      if (v5)
      {
        return result;
      }

LABEL_23:
      if (v15)
      {
        if (!v6)
        {
          __break(1u);
          return result;
        }

        v24 = (v6 + 32 * v9);
        v25 = *(v24 + 2);
        v26 = *(v24 + 3);
        v27 = *v24;
        v28 = *(v11 + 1);
        *v24 = *v11;
        v24[1] = v28;
        *v11 = v27;
        v11[2] = v25;
        v11[3] = v26;
        v8 = v27;
        v9 = v10;
        if (v10 != result)
        {
          continue;
        }
      }

      if (++a3 == a2)
      {
        return result;
      }

      goto LABEL_5;
    }

    v13 = 0;
    v14 = *v11;
    while (*(v7 + 8 * v13) != v8)
    {
      if (v12 == ++v13)
      {
LABEL_16:
        v17 = v12 - 1;
        v18 = (a5 + 32);
        do
        {
          v20 = *v18++;
          v19 = v20;
          v22 = v17-- != 0;
          v23 = v19 == v14;
          v15 = v19 != v14;
        }

        while (!v23 && v22);
        if (v5)
        {
          return result;
        }

        goto LABEL_23;
      }
    }

    v16 = 0;
    while (*(v7 + 8 * v16) != v14)
    {
      if (v12 == ++v16)
      {
        goto LABEL_16;
      }
    }

    v15 = v13 < v16;
    if (!v5)
    {
      goto LABEL_23;
    }
  }

  return result;
}

uint64_t sub_25239D5BC(uint64_t *a1, uint64_t a2)
{
  v4 = a1[1];
  swift_bridgeObjectRetain_n();
  result = sub_252693360();
  if (result < v4)
  {
    if (v4 >= -1)
    {
      v6 = result;
      v7 = v4 / 2;
      if (v4 <= 1)
      {
        v8 = MEMORY[0x277D84F90];
      }

      else
      {
        v8 = sub_252692DC0();
        *(v8 + 16) = v7;
      }

      v9[0] = (v8 + 32);
      v9[1] = v7;

      sub_25239CCA8(v9, v10, a1, v6, a2);

      *(v8 + 16) = 0;
      swift_bridgeObjectRelease_n();
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v4 < 0)
  {
    goto LABEL_12;
  }

  if (v4)
  {

    sub_25239D4BC(0, v4, 1, a1, a2);
  }

  return swift_bridgeObjectRelease_n();
}

uint64_t sub_25239D704(char **a1, uint64_t a2)
{
  v4 = *a1;
  swift_bridgeObjectRetain_n();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = sub_252624294(v4);
  }

  v5 = *(v4 + 2);
  v7[0] = (v4 + 32);
  v7[1] = v5;

  sub_25239D5BC(v7, a2);

  *a1 = v4;
  return swift_bridgeObjectRelease_n();
}

uint64_t sub_25239D7A8(uint64_t a1, uint64_t a2)
{
  v260 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DADB8, &qword_2526A6E60);
  MEMORY[0x28223BE20](v3 - 8);
  v224 = &v205 - v4;
  v259 = sub_25268EA80();
  v254 = *(v259 - 8);
  MEMORY[0x28223BE20](v259);
  v252 = &v205 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v258 = &v205 - v7;
  v223 = type metadata accessor for AccessoryControl.PickerViewConfig(0);
  MEMORY[0x28223BE20](v223);
  v230 = &v205 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v262 = sub_25268E530();
  v251 = *(v262 - 8);
  MEMORY[0x28223BE20](v262);
  v261 = &v205 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v272 = type metadata accessor for HAPControlSolver.Source(0);
  v243 = *(v272 - 1);
  MEMORY[0x28223BE20](v272);
  v255 = &v205 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v205 - v12;
  v270 = v14;
  MEMORY[0x28223BE20](v15);
  v238 = &v205 - v16;
  v245 = sub_25268DA10();
  v244 = *(v245 - 8);
  MEMORY[0x28223BE20](v245);
  v248 = &v205 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v239 = type metadata accessor for AccessoryControl(0);
  MEMORY[0x28223BE20](v239);
  v226 = &v205 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v247 = &v205 - v20;
  v237 = type metadata accessor for AccessoryControl.StatusProvider(0);
  MEMORY[0x28223BE20](v237);
  v256 = &v205 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v257 = (&v205 - v23);
  v236 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD88, &unk_2526956E0);
  v222 = *(v236 - 8);
  MEMORY[0x28223BE20](v236);
  v271 = &v205 - v24;
  v269 = type metadata accessor for AccessoryControl.BinaryViewConfig(0);
  MEMORY[0x28223BE20](v269);
  v246 = &v205 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_25268F4D0();
  v27 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v29 = &v205 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB208, &unk_252695180);
  MEMORY[0x28223BE20](v30 - 8);
  v233 = &v205 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v241 = &v205 - v33;
  MEMORY[0x28223BE20](v34);
  v36 = &v205 - v35;
  v37 = sub_25268F9E0();
  v38 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v235 = &v205 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v40);
  v253 = &v205 - v41;
  v42 = type metadata accessor for AccessoryControl.ValueDestination(0);
  MEMORY[0x28223BE20](v42 - 8);
  v44 = &v205 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25239F918(a2, v44, type metadata accessor for AccessoryControl.ValueDestination);
  v45 = *MEMORY[0x277D16330];
  v46 = v26;
  v266 = *(v27 + 104);
  v267 = v27 + 104;
  v266(v29, v45, v26);
  v250 = v272[19];
  sub_25268FD80();
  v49 = *(v27 + 8);
  v48 = v27 + 8;
  v47 = v49;
  v268 = v29;
  v49(v29, v46);
  v50 = *(v38 + 48);
  v232 = v38 + 48;
  v231 = v50;
  if (v50(v36, 1, v37) == 1)
  {
    sub_252372288(v36, &qword_27F4DB208, &unk_252695180);
    sub_25239F8B8(v44, type metadata accessor for AccessoryControl.ValueDestination);
    return MEMORY[0x277D84F90];
  }

  v240 = v44;
  v220 = v38;
  v52 = *(v38 + 32);
  v225 = v37;
  v215 = v38 + 32;
  v214 = v52;
  v52(v253, v36, v37);
  v53 = v268;
  v249 = v45;
  v266(v268, v45, v46);
  v54 = v47;
  v55 = v260;
  v56 = sub_25268FE70();
  v264 = v48;
  v265 = v46;
  v263 = v54;
  v54(v53, v46);
  v242 = v56 == 2;
  v229 = v56 != 2;
  v213 = v56;
  v228 = v56 & 1;
  v57 = v272;
  v58 = sub_25268E510();
  v59 = v271;
  v60 = (v271 + *(v236 + 28));
  v61 = type metadata accessor for IconDescriptor(0);
  v62 = *(v61 + 20);
  v63 = *MEMORY[0x277D16588];
  v64 = sub_25268F910();
  (*(*(v64 - 8) + 104))(&v60[v62], v63, v64);
  *v60 = 30324;
  *(v60 + 1) = 0xE200000000000000;
  v60[*(v61 + 24)] = 0;
  sub_25239F918(v60, v59, type metadata accessor for IconDescriptor);
  v65 = (v55 + v57[7]);
  v66 = v65[1];
  v234 = *v65;
  v67 = v256;
  swift_storeEnumTagMultiPayload();
  v68 = (v55 + v57[11]);
  v69 = v68[1];
  if (v69)
  {
    v70 = *v68;

    sub_25239F8B8(v67, type metadata accessor for AccessoryControl.StatusProvider);
    v71 = v257;
    *v257 = v70;
    v71[1] = v69;
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    v71 = v257;
    sub_252398CFC(v67, v257, type metadata accessor for AccessoryControl.StatusProvider);
  }

  v72 = v66;
  v73 = v269;
  type metadata accessor for ControlTextModifier.Config(0);
  v74 = v246;
  swift_storeEnumTagMultiPayload();
  v75 = v74 + v73[7];
  *v75 = 0u;
  *(v75 + 16) = 0u;
  *(v75 + 32) = -1;
  v76 = v74 + v73[8];
  *v76 = 0u;
  *(v76 + 16) = 0u;
  *(v76 + 32) = -1;
  v77 = v73[12];
  sub_252376EF0(v271, v74);
  *(v74 + v73[5]) = v58;
  v78 = (v74 + v73[10]);
  *v78 = v234;
  v78[1] = v72;
  v219 = v72;
  sub_252398CFC(v71, v74 + v73[11], type metadata accessor for AccessoryControl.StatusProvider);
  sub_252376DA8(*v75, *(v75 + 8), *(v75 + 16), *(v75 + 24), *(v75 + 32));
  *v75 = 0u;
  *(v75 + 16) = 0u;
  *(v75 + 32) = -1;
  sub_252376DA8(*v76, *(v76 + 8), *(v76 + 16), *(v76 + 24), *(v76 + 32));
  *v76 = 0u;
  *(v76 + 16) = 0u;
  *(v76 + 32) = -1;
  *(v74 + v77) = 0;
  *(v74 + v73[9]) = 0;
  sub_25268F9B0();
  v79 = v239;
  v80 = v247;
  v81 = v247 + *(v239 + 20);
  v82 = (v81 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DADC8, &qword_252695A20) + 48));
  sub_25239F918(v74, v81, type metadata accessor for AccessoryControl.BinaryViewConfig);
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD80, &unk_2526951A0);
  sub_25239F918(v240, v82 + *(v83 + 36), type metadata accessor for AccessoryControl.ValueDestination);
  v84 = v238;
  sub_25239F918(v260, v238, type metadata accessor for HAPControlSolver.Source);
  v85 = *(v243 + 80);
  v217 = ~v85;
  v86 = (v85 + 16) & ~v85;
  v211 = v86 + v270;
  v87 = swift_allocObject();
  v212 = v86;
  sub_252398CFC(v84, v87 + v86, type metadata accessor for HAPControlSolver.Source);
  v88 = (v82 + *(v83 + 40));
  v89 = v228;
  *v88 = v228;
  v88[1] = 0;
  v90 = v229;
  v88[2] = v229;
  v88[3] = 0;
  v88[4] = v242;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB018, &qword_252695018);
  v91 = swift_allocObject();
  v221 = xmmword_252694E90;
  *(v91 + 16) = xmmword_252694E90;
  *(v91 + 32) = sub_25239F6D0;
  *(v91 + 40) = v87;
  *v82 = v91;
  v209 = type metadata accessor for AccessoryControl.State(0);
  swift_storeEnumTagMultiPayload();
  v92 = *(v244 + 32);
  v210 = v244 + 32;
  v208 = v92;
  v92(v80, v248, v245);
  v218 = type metadata accessor for AccessoryControl.ElementIdentifier(0);
  swift_storeEnumTagMultiPayload();
  v93 = (v80 + v79[7]);
  v94 = v79[9];
  *(v80 + v94) = 16;
  *(v80 + v79[6]) = 0;
  *v93 = 0;
  v93[1] = 0;
  *(v80 + v79[8]) = 1027;
  *(v80 + v94) = 16;
  *(v80 + v79[10]) = 1;
  v95 = *(v260 + v272[17]);
  v96 = *(v95 + 16);
  v216 = v85;
  v207 = v95;
  if (v96)
  {
    v271 = v272[5];
    v97 = v95 + ((v85 + 32) & v217);
    sub_25239F750(v89, 0, v90, 0, v242);
    v270 = *(v243 + 72);
    LODWORD(v269) = *MEMORY[0x277D15668];
    v98 = v251 + 104;
    v99 = v251 + 8;
    LODWORD(v257) = *MEMORY[0x277D16248];
    v227 = *MEMORY[0x277D160F8];
    v251 = MEMORY[0x277D84F90];
    v101 = v261;
    v100 = v262;
    while (1)
    {
      sub_25239F918(v97, v13, type metadata accessor for HAPControlSolver.Source);
      (*v98)(v101, v269, v100);
      sub_252376EA8(&qword_27F4DADD8, MEMORY[0x277D158E0], MEMORY[0x277D158F8]);
      sub_252692D40();
      sub_252692D40();
      if (v273 == v277 && v274 == v278)
      {
        (*v99)(v101, v100);
      }

      else
      {
        v103 = sub_2526933B0();
        (*v99)(v101, v100);

        if ((v103 & 1) == 0)
        {
          goto LABEL_22;
        }
      }

      v104 = &v13[v272[15]];
      if ((v104[8] & 1) == 0)
      {
        v256 = *v104;
        v105 = v268;
        v106 = v265;
        v266(v268, v257, v265);
        v107 = sub_25268FE70();
        v108 = v105;
        v109 = v106;
        v101 = v261;
        v100 = v262;
        v263(v108, v109);
        if (v107 != 2 && (v107 & 1) != 0)
        {
          v110 = v268;
          v111 = v265;
          v266(v268, v227, v265);
          v112 = sub_25268FE70();
          v113 = v110;
          v114 = v111;
          v101 = v261;
          v100 = v262;
          v263(v113, v114);
          if (v112 != 2 && (v112 & 1) != 0)
          {
            v115 = &v13[v272[8]];
            v116 = *(v115 + 1);
            if (v116)
            {
              v206 = *v115;
              v117 = v116;
            }

            else
            {
              v118 = &v13[v272[7]];
              v117 = *(v118 + 1);
              v206 = *v118;
            }

            sub_25239F8B8(v13, type metadata accessor for HAPControlSolver.Source);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v251 = sub_252368918(0, *(v251 + 2) + 1, 1, v251);
            }

            v120 = *(v251 + 2);
            v119 = *(v251 + 3);
            if (v120 >= v119 >> 1)
            {
              v251 = sub_252368918((v119 > 1), v120 + 1, 1, v251);
            }

            v121 = v251;
            *(v251 + 2) = v120 + 1;
            v122 = &v121[32 * v120];
            v123 = v206;
            *(v122 + 4) = v256;
            *(v122 + 5) = v123;
            *(v122 + 6) = v117;
            *(v122 + 7) = 0;
            goto LABEL_23;
          }
        }
      }

LABEL_22:
      sub_25239F8B8(v13, type metadata accessor for HAPControlSolver.Source);
LABEL_23:
      v97 += v270;
      if (!--v96)
      {
        goto LABEL_32;
      }
    }
  }

  sub_25239F750(v89, 0, v90, 0, v242);
  v251 = MEMORY[0x277D84F90];
LABEL_32:
  v124 = v272;
  v125 = v260;
  v126 = sub_25268F170();
  if (v126)
  {
    v127 = v126;
    v273 = v251;

    sub_25239D704(&v273, v127);
    v128 = v225;
    v129 = v241;
    v130 = v253;
    v131 = v255;

    swift_bridgeObjectRelease_n();
    v251 = v273;
  }

  else
  {
    v128 = v225;
    v129 = v241;
    v130 = v253;
    v131 = v255;
  }

  v132 = v268;
  LODWORD(v269) = *MEMORY[0x277D16160];
  v133 = v265;
  (v266)(v268);
  sub_25268FD80();
  v263(v132, v133);
  v134 = v233;
  sub_25239F764(v129, v233);
  if (v231(v134, 1, v128) == 1)
  {
    sub_252393F68(v228, 0, v229, 0, v242);

    sub_252372288(v134, &qword_27F4DB208, &unk_252695180);
  }

  else
  {
    v135 = v235;
    v136 = v214(v235, v134, v128);
    v137 = v251;
    if (*(v251 + 2))
    {
      MEMORY[0x28223BE20](v136);
      *(&v205 - 2) = v125;
      sub_2525F8704(sub_25239F7D4, v137, &v273);
      if (v275)
      {
        sub_25239F874(v273, v274, v275, v276);
      }

      v138 = *(v207 + 16);
      v139 = v249;
      if (v138)
      {
        v140 = v131 + v124[15];
        v141 = v207 + ((v216 + 32) & v217);
        v142 = *(v243 + 72);
        v143 = (v254 + 32);
        v144 = MEMORY[0x277D84F90];
        v270 = v142;
        v271 = v140;
        v145 = v252;
        do
        {
          sub_25239F918(v141, v131, type metadata accessor for HAPControlSolver.Source);
          if (*(v140 + 8) == 1)
          {
            sub_25239F8B8(v131, type metadata accessor for HAPControlSolver.Source);
          }

          else
          {

            v131 = v255;
            sub_25268EA70();
            sub_25239F8B8(v131, type metadata accessor for HAPControlSolver.Source);
            v146 = *v143;
            (*v143)(v258, v145, v259);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v144 = sub_252368C64(0, *(v144 + 2) + 1, 1, v144);
            }

            v148 = *(v144 + 2);
            v147 = *(v144 + 3);
            if (v148 >= v147 >> 1)
            {
              v144 = sub_252368C64((v147 > 1), v148 + 1, 1, v144);
            }

            *(v144 + 2) = v148 + 1;
            v146(&v144[((*(v254 + 80) + 32) & ~*(v254 + 80)) + *(v254 + 72) * v148], v258, v259);
            v139 = v249;
            v142 = v270;
            v140 = v271;
          }

          v141 += v142;
          --v138;
        }

        while (v138);

        v124 = v272;
      }

      v149 = v213;
      v150 = v213;
      v151 = v268;
      v152 = v265;
      v266(v268, v139, v265);
      LODWORD(v271) = sub_25268FE70();
      v263(v151, v152);
      v153 = sub_2526922D0();
      if (v150 == 2 || (sub_252393F68(v228, 0, v229, 0, 0), (v149 & 1) == 0))
      {
        v154 = sub_252692330();
      }

      else
      {
        v154 = sub_2526922F0();
      }

      v155 = v154;
      v156 = *(v222 + 56);
      v157 = v224;
      v158 = v236;
      v156(v224, 1, 1, v236);
      v159 = v223;
      v160 = v230;
      swift_storeEnumTagMultiPayload();
      v161 = v159[6];
      v156((v160 + v161), 1, 1, v158);
      v162 = v160 + v159[11];
      *v160 = v251;
      *(v160 + 8) = v271 & 1;
      *(v160 + v159[8]) = v153;
      *(v160 + v159[9]) = v155;
      sub_252377048(v157, v160 + v161, &qword_27F4DADB8, &qword_2526A6E60);
      *v162 = 0;
      *(v162 + 8) = 1;
      *(v160 + v159[7]) = 0;
      v163 = v268;
      v164 = v265;
      v266(v268, v269, v265);
      v165 = v260;
      v166 = sub_25268FE60();
      v168 = v167;
      v263(v163, v164);
      if ((v168 & 1) != 0 || *(v165 + v124[10]) != 1)
      {
        v166 = 0;
        v169 = 1;
      }

      else
      {
        v169 = 0;
      }

      v170 = v226;
      v171 = v240;
      v172 = v248;
      sub_25268F9B0();
      v173 = v239;
      v174 = v170 + *(v239 + 20);
      v175 = (v174 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DADB0, &unk_2526A7360) + 48));
      sub_25239F918(v230, v174, type metadata accessor for AccessoryControl.PickerViewConfig);
      v176 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD68, &qword_2526A4D70);
      sub_25239F918(v171, v175 + *(v176 + 36), type metadata accessor for AccessoryControl.ValueDestination);
      v177 = v165;
      v178 = v238;
      sub_25239F918(v177, v238, type metadata accessor for HAPControlSolver.Source);
      v179 = swift_allocObject();
      sub_252398CFC(v178, v179 + v212, type metadata accessor for HAPControlSolver.Source);
      v180 = v175 + *(v176 + 40);
      *v180 = v166;
      v180[8] = v169;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB020, &unk_2526956B0);
      v181 = swift_allocObject();
      *(v181 + 16) = v221;
      *(v181 + 32) = sub_25239F7F4;
      *(v181 + 40) = v179;
      *v175 = v181;
      swift_storeEnumTagMultiPayload();
      v182 = v245;
      v208(v170, v172, v245);
      swift_storeEnumTagMultiPayload();
      v183 = (v170 + v173[7]);
      v184 = v173[9];
      *(v170 + v184) = 16;
      *(v170 + v173[6]) = 0;
      *v183 = 0;
      v183[1] = 0;
      *(v170 + v173[8]) = 1028;
      *(v170 + v184) = 14;
      *(v170 + v173[10]) = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD98, &qword_252694EB8);
      v185 = (type metadata accessor for AccessoryControlGroup(0) - 8);
      v186 = (*(*v185 + 80) + 32) & ~*(*v185 + 80);
      v187 = swift_allocObject();
      *(v187 + 16) = v221;
      v188 = v187 + v186;
      (*(v244 + 16))(v188, v260, v182);
      swift_storeEnumTagMultiPayload();
      v189 = v188 + v185[7];
      v190 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DADD0, &qword_252694EC8) + 48);
      v191 = v247;
      sub_25239F918(v247, v189, type metadata accessor for AccessoryControl);
      sub_25239F918(v170, v189 + v190, type metadata accessor for AccessoryControl);
      type metadata accessor for AccessoryControlGroup.Layout(0);
      swift_storeEnumTagMultiPayload();
      v192 = (v188 + v185[9]);
      v193 = (v188 + v185[8]);
      v194 = v219;
      *v193 = v234;
      v193[1] = v194;
      *v192 = 0;
      v192[1] = 0;
      v195 = *(v220 + 8);

      v196 = v225;
      v195(v235, v225);
      sub_252372288(v241, &qword_27F4DB208, &unk_252695180);
      v195(v253, v196);
      sub_25239F8B8(v240, type metadata accessor for AccessoryControl.ValueDestination);
      sub_25239F8B8(v170, type metadata accessor for AccessoryControl);
      sub_25239F8B8(v230, type metadata accessor for AccessoryControl.PickerViewConfig);
      v197 = v191;
      goto LABEL_62;
    }

    (*(v220 + 8))(v135, v128);
    sub_252393F68(v228, 0, v229, 0, v242);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD98, &qword_252694EB8);
  v198 = (type metadata accessor for AccessoryControlGroup(0) - 8);
  v199 = (*(*v198 + 80) + 32) & ~*(*v198 + 80);
  v187 = swift_allocObject();
  *(v187 + 16) = v221;
  v200 = v187 + v199;
  (*(v244 + 16))(v200, v125, v245);
  swift_storeEnumTagMultiPayload();
  v201 = v247;
  sub_25239F918(v247, v200 + v198[7], type metadata accessor for AccessoryControl);
  type metadata accessor for AccessoryControlGroup.Layout(0);
  swift_storeEnumTagMultiPayload();
  v202 = (v200 + v198[9]);
  v203 = (v200 + v198[8]);
  v204 = v219;
  *v203 = v234;
  v203[1] = v204;
  *v202 = 0;
  v202[1] = 0;

  sub_252372288(v129, &qword_27F4DB208, &unk_252695180);
  (*(v220 + 8))(v130, v128);
  sub_25239F8B8(v240, type metadata accessor for AccessoryControl.ValueDestination);
  v197 = v201;
LABEL_62:
  sub_25239F8B8(v197, type metadata accessor for AccessoryControl);
  sub_25239F8B8(v246, type metadata accessor for AccessoryControl.BinaryViewConfig);
  return v187;
}

uint64_t sub_25239F6D0@<X0>(char *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(type metadata accessor for HAPControlSolver.Source(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_25239BF88(a1, v6, a2);
}

uint64_t sub_25239F750(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a5 != 1)
  {
  }

  return result;
}

uint64_t sub_25239F764(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB208, &unk_252695180);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25239F7F4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(type metadata accessor for HAPControlSolver.Source(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_25239C4F4(a1, v6, a2);
}

void sub_25239F874(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
  }
}

uint64_t sub_25239F8B8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_25239F918(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void *sub_25239F980(uint64_t a1, uint64_t a2)
{
  v250 = a1;
  v3 = type metadata accessor for AccessoryControlGroup(0);
  v229 = *(v3 - 8);
  v230 = v3;
  MEMORY[0x28223BE20](v3);
  v209 = &v202[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v219 = &v202[-v6];
  MEMORY[0x28223BE20](v7);
  v207 = &v202[-v8];
  MEMORY[0x28223BE20](v9);
  v208 = &v202[-v10];
  v217 = type metadata accessor for AccessoryControlGroup.DecorationControlConfig(0);
  MEMORY[0x28223BE20](v217);
  v218 = &v202[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12);
  v206 = &v202[-v13];
  v248 = type metadata accessor for HAPControlSolver.Source(0);
  v210 = *(v248 - 8);
  MEMORY[0x28223BE20](v248);
  v211 = v14;
  v212 = &v202[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v242 = sub_25268DA10();
  v228 = *(v242 - 8);
  MEMORY[0x28223BE20](v242);
  v226 = &v202[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB120, &qword_2526956F0);
  MEMORY[0x28223BE20](v16 - 8);
  v216 = &v202[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v18);
  v214 = &v202[-v19];
  MEMORY[0x28223BE20](v20);
  v227 = &v202[-v21];
  MEMORY[0x28223BE20](v22);
  v241 = &v202[-v23];
  MEMORY[0x28223BE20](v24);
  v222 = &v202[-v25];
  MEMORY[0x28223BE20](v26);
  v225 = &v202[-v27];
  v28 = sub_25268F4D0();
  v29 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v220 = &v202[-((v30 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB258, &unk_252696090);
  MEMORY[0x28223BE20](v31 - 8);
  v237 = &v202[-v32];
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB260, &qword_252695278);
  MEMORY[0x28223BE20](v33 - 8);
  v235 = &v202[-v34];
  v35 = sub_252690030();
  v246 = *(v35 - 1);
  v247 = v35;
  MEMORY[0x28223BE20](v35);
  v236 = &v202[-((v36 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v240 = type metadata accessor for AccessoryControl(0);
  v249 = *(v240 - 8);
  MEMORY[0x28223BE20](v240);
  v215 = &v202[-((v37 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v38);
  v205 = &v202[-v39];
  MEMORY[0x28223BE20](v40);
  v213 = &v202[-v41];
  MEMORY[0x28223BE20](v42);
  v224 = &v202[-v43];
  MEMORY[0x28223BE20](v44);
  v223 = &v202[-v45];
  MEMORY[0x28223BE20](v46);
  v243 = &v202[-v47];
  v48 = type metadata accessor for AccessoryControl.ValueDestination(0);
  MEMORY[0x28223BE20](v48 - 8);
  v50 = &v202[-((v49 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v238 = a2;
  sub_2523A539C(a2, v50, type metadata accessor for AccessoryControl.ValueDestination);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB238, &qword_2526951F8);
  v52 = *(v29 + 72);
  v53 = (*(v29 + 80) + 32) & ~*(v29 + 80);
  v232 = v53 + 2 * v52;
  v233 = v51;
  v54 = swift_allocObject();
  v231 = xmmword_252694EA0;
  *(v54 + 16) = xmmword_252694EA0;
  v55 = *MEMORY[0x277D16298];
  v221 = v29;
  v56 = *(v29 + 104);
  v56(v54 + v53, v55, v28);
  v57 = *MEMORY[0x277D161B0];
  v234 = v52;
  v244 = v56;
  v56(v54 + v53 + v52, v57, v28);
  v58 = sub_25240BD30(v54);
  swift_setDeallocating();
  v59 = v250;
  v245 = v28;
  swift_arrayDestroy();
  swift_deallocClassInstance();
  LOBYTE(v54) = HAPControlSolver.Source.has(characteristicKinds:)(v58);

  if ((v54 & 1) == 0)
  {
    v71 = v50;
LABEL_20:
    sub_2523A546C(v71, type metadata accessor for AccessoryControl.ValueDestination);
    return MEMORY[0x277D84F90];
  }

  v239 = v50;
  v60 = sub_2523A4E14();
  if (!v60)
  {
    v71 = v239;
    goto LABEL_20;
  }

  v61 = v60;
  v62 = v59;
  v63 = sub_25240D50C(3u, v60);
  v64 = MEMORY[0x277D16180];
  v65 = MEMORY[0x277D16170];
  v204 = v61;
  if (v63)
  {
    v66 = swift_allocObject();
    *(v66 + 16) = v231;
    v67 = *v64;
    v68 = v244;
    v69 = v245;
    v244(v66 + v53, v67, v245);
    v68(v66 + v53 + v234, *v65, v69);
    v70 = sub_25240BD30(v66);
    swift_setDeallocating();
    v61 = v204;
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v203 = HAPControlSolver.Source.has(characteristicKinds:)(v70);
  }

  else
  {
    v203 = 0;
  }

  if (sub_25240D50C(3u, v61))
  {
    v72 = swift_allocObject();
    *(v72 + 16) = v231;
    v73 = v244;
    v74 = v245;
    v244(v72 + v53, *MEMORY[0x277D16180], v245);
    v73(v72 + v53 + v234, *MEMORY[0x277D16170], v74);
    v75 = sub_25240BD30(v72);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    LOBYTE(v72) = HAPControlSolver.Source.has(characteristicKinds:)(v75);

    v76 = v72 ^ 1;
  }

  else
  {
    v76 = 0;
  }

  v77 = v239;
  v78 = v246;
  v79 = sub_25268FDF0();
  if (v80)
  {
    v81 = 4;
    v82 = v247;
    v83 = v235;
  }

  else
  {
    v82 = v247;
    v83 = v235;
    if ((v76 & (v79 == 3)) != 0)
    {
      v81 = 3;
    }

    else
    {
      v81 = 0;
      if ((v79 != 3) | v203 & 1 && v79 < 4)
      {
        v81 = 0x3010200u >> (8 * v79);
      }
    }
  }

  LOBYTE(v255[0]) = v81;
  sub_2523A13FC(v62, v255, v83);
  if ((*(v78 + 48))(v83, 1, v82) == 1)
  {

    sub_252372288(v83, &qword_27F4DB260, &qword_252695278);
    v71 = v77;
    goto LABEL_20;
  }

  (*(v78 + 32))(v236, v83, v82);
  LOBYTE(v255[0]) = v81;
  sub_2523A2858(v255, v76 & 1, v237);
  sub_252690000();
  v86 = v85;
  sub_25268FFF0();
  v88 = v87;
  sub_252690020();
  v90 = v89;
  v91 = v220;
  v92 = v245;
  v244(v220, *MEMORY[0x277D16280], v245);
  v93 = sub_25268FEA0();
  v95 = v94;
  (*(v221 + 8))(v91, v92);
  v96 = sub_25268FD50();
  v98 = v97;
  v99 = sub_25268FD90();
  LOBYTE(v100) = 3;
  if ((v101 & 1) == 0)
  {
    if (v99 >= 3)
    {
      v201 = v99;
      type metadata accessor for HMCharacteristicValueCurrentHeatingCooling(0);
      *&v255[0] = v201;
      result = sub_2526933C0();
      __break(1u);
      return result;
    }

    v100 = 0x10200u >> (8 * v99);
  }

  *&v257 = v86;
  *(&v257 + 1) = v88;
  *&v258 = v90;
  BYTE8(v258) = 3;
  *&v259 = 1;
  BYTE8(v259) = 1;
  *&v260 = v93;
  BYTE8(v260) = v95 & 1;
  *&v261 = v96;
  BYTE8(v261) = v98 & 1;
  BYTE9(v261) = v100;
  v262 = 0uLL;
  v263 = 513;
  v102 = v250;
  sub_2523A80F0(v250, &v257, v255);
  v253[4] = v261;
  v253[5] = v262;
  v254 = v263;
  v253[0] = v257;
  v253[1] = v258;
  v253[2] = v259;
  v253[3] = v260;
  sub_252385F08(v253);
  v261 = v255[4];
  v262 = v255[5];
  v263 = v256;
  v257 = v255[0];
  v258 = v255[1];
  v259 = v255[2];
  v260 = v255[3];
  LOBYTE(v251[0]) = v81;
  v103 = v225;
  v104 = v237;
  sub_2523A86B4(v102, v251, v77, &v257, v237, v225);
  v105 = v222;
  sub_25237153C(v103, v222, &qword_27F4DB120, &qword_2526956F0);
  v106 = *(v249 + 48);
  v107 = v240;
  v249 += 48;
  v245 = v106;
  v108 = v106(v105, 1, v240);
  LODWORD(v235) = v81;
  if (v108 == 1)
  {
    sub_252372288(v105, &qword_27F4DB120, &qword_2526956F0);
    v109 = v228;
    (*(v228 + 16))(v226, v250, v242);
    v110 = v107[5];
    v111 = v103;
    v112 = v224;
    v113 = &v224[v110];
    v114 = &v113[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB270, &unk_2526959F0) + 48)];
    v115 = v262;
    *(v113 + 4) = v261;
    *(v113 + 5) = v115;
    *(v113 + 48) = v263;
    v116 = v258;
    *v113 = v257;
    *(v113 + 1) = v116;
    v117 = v260;
    *(v113 + 2) = v259;
    *(v113 + 3) = v117;
    v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB278, &unk_2526959A0);
    sub_25237153C(v104, v114 + *(v118 + 40), &qword_27F4DB258, &unk_252696090);
    sub_2523A539C(v77, v114 + *(v118 + 36), type metadata accessor for AccessoryControl.ValueDestination);
    v119 = v212;
    sub_2523A539C(v250, v212, type metadata accessor for HAPControlSolver.Source);
    v120 = (*(v210 + 80) + 16) & ~*(v210 + 80);
    v121 = swift_allocObject();
    sub_2523A5404(v119, v121 + v120, type metadata accessor for HAPControlSolver.Source);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB030, &qword_252695028);
    v122 = swift_allocObject();
    *(v122 + 16) = xmmword_252694E90;
    *(v122 + 32) = sub_2523A531C;
    *(v122 + 40) = v121;
    v102 = v250;
    sub_252372288(v111, &qword_27F4DB120, &qword_2526956F0);
    v123 = v104;
    v107 = v240;
    v124 = v109;
    sub_252372288(v123, &qword_27F4DB258, &unk_252696090);
    (*(v246 + 8))(v236, v247);
    *v114 = v122;
    v81 = v235;
    v77 = v239;
    type metadata accessor for AccessoryControl.State(0);
    swift_storeEnumTagMultiPayload();
    (*(v109 + 32))(v112, v226, v242);
    type metadata accessor for AccessoryControl.ElementIdentifier(0);
    swift_storeEnumTagMultiPayload();
    v125 = &v112[v107[7]];
    v126 = v107[9];
    v112[v126] = 16;
    v112[v107[6]] = 0;
    *v125 = 0;
    v125[1] = 0;
    *&v112[v107[8]] = 1028;
    v112[v126] = 16;
    v112[v107[10]] = 1;
    v127 = v241;
    v128 = v243;
  }

  else
  {
    sub_252372288(v103, &qword_27F4DB120, &qword_2526956F0);
    sub_252372288(v104, &qword_27F4DB258, &unk_252696090);
    (*(v246 + 8))(v236, v247);
    v251[4] = v261;
    v251[5] = v262;
    v252 = v263;
    v251[0] = v257;
    v251[1] = v258;
    v251[2] = v259;
    v251[3] = v260;
    sub_252385F08(v251);
    v112 = v224;
    sub_2523A5404(v105, v224, type metadata accessor for AccessoryControl);
    v127 = v241;
    v128 = v243;
    v124 = v228;
  }

  v129 = v112;
  v130 = v223;
  sub_2523A5404(v129, v223, type metadata accessor for AccessoryControl);
  sub_2523A5404(v130, v128, type metadata accessor for AccessoryControl);
  sub_2523A30F0(v102, v204, v238, v81, v77, v127);

  v131 = v127;
  v132 = v227;
  sub_25237153C(v131, v227, &qword_27F4DB120, &qword_2526956F0);
  v133 = v245(v132, 1, v107);
  v134 = (v124 + 16);
  v135 = v102;
  if (v133 == 1)
  {
    sub_252372288(v132, &qword_27F4DB120, &qword_2526956F0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD98, &qword_252694EB8);
    v136 = *(v229 + 80);
    v246 = *(v229 + 72);
    v137 = swift_allocObject();
    *(v137 + 16) = xmmword_252694E90;
    v247 = v137;
    v138 = v137 + ((v136 + 32) & ~v136);
    v244 = *v134;
    v244(v138, v135, v242);
    type metadata accessor for AccessoryControl.ElementIdentifier(0);
    swift_storeEnumTagMultiPayload();
    v139 = v230;
    sub_2523A539C(v128, v138 + v230[5], type metadata accessor for AccessoryControl);
    type metadata accessor for AccessoryControlGroup.Layout(0);
    swift_storeEnumTagMultiPayload();
    v140 = (v135 + *(v248 + 28));
    v142 = *v140;
    v141 = v140[1];
    v143 = (v138 + v139[7]);
    v144 = (v138 + v139[6]);
    *v144 = v142;
    v144[1] = v141;
    *v143 = 0;
    v143[1] = 0;
  }

  else
  {
    v81 = v213;
    sub_2523A5404(v132, v213, type metadata accessor for AccessoryControl);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD98, &qword_252694EB8);
    v136 = *(v229 + 80);
    v246 = *(v229 + 72);
    v145 = swift_allocObject();
    *(v145 + 16) = xmmword_252694E90;
    v247 = v145;
    v146 = v145 + ((v136 + 32) & ~v136);
    v244 = *v134;
    v244(v146, v135, v242);
    type metadata accessor for AccessoryControl.ElementIdentifier(0);
    swift_storeEnumTagMultiPayload();
    v147 = v230;
    v148 = v146 + v230[5];
    v149 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DADD0, &qword_252694EC8) + 48);
    sub_2523A539C(v243, v148, type metadata accessor for AccessoryControl);
    v128 = v243;
    sub_2523A539C(v81, v148 + v149, type metadata accessor for AccessoryControl);
    type metadata accessor for AccessoryControlGroup.Layout(0);
    swift_storeEnumTagMultiPayload();
    v150 = (v135 + *(v248 + 28));
    v142 = *v150;
    v141 = v150[1];
    v151 = (v146 + v147[7]);
    v152 = (v146 + v147[6]);
    *v152 = v142;
    v152[1] = v141;
    *v151 = 0;
    v151[1] = 0;

    v153 = v81;
    LOBYTE(v81) = v235;
    sub_2523A546C(v153, type metadata accessor for AccessoryControl);
  }

  if (*(v238 + *(type metadata accessor for AccessoryControlSolver.Context(0) + 20)) > 1u)
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD98, &qword_252694EB8);
    v154 = (v136 + 32) & ~v136;
    v238 = v154 + v246;
    v155 = swift_allocObject();
    *(v155 + 16) = xmmword_252694E90;
    v247 = v155;
    v248 = v154;
    v156 = v155 + v154;
    v157 = v250;
    v244(v156, v250, v242);
    type metadata accessor for AccessoryControl.ElementIdentifier(0);
    swift_storeEnumTagMultiPayload();
    v158 = v230;
    sub_2523A539C(v128, v156 + v230[5], type metadata accessor for AccessoryControl);
    v159 = type metadata accessor for AccessoryControlGroup.Layout(0);
    swift_storeEnumTagMultiPayload();
    v160 = (v156 + v158[7]);
    v161 = (v156 + v158[6]);
    *v161 = v142;
    v161[1] = v141;
    *v160 = 0;
    v160[1] = 0;
    LOBYTE(v251[0]) = v81;

    v162 = v214;
    sub_2523A54CC(v157, v251, v239, v214);
    v163 = v240;
    v164 = v245(v162, 1, v240);
    v244 = v159;
    if (v164 == 1)
    {
      sub_252372288(v162, &qword_27F4DB120, &qword_2526956F0);
    }

    else
    {
      v165 = v205;
      sub_2523A5404(v162, v205, type metadata accessor for AccessoryControl);
      v166 = *MEMORY[0x277D15D98];
      v167 = sub_25268F0E0();
      v168 = v206;
      (*(*(v167 - 8) + 104))(v206, v166, v167);
      v169 = v217;
      *(v168 + *(v217 + 20)) = 0;
      *(v168 + *(v169 + 24)) = 2;
      v170 = v208;
      sub_2523A539C(v165, v208, type metadata accessor for AccessoryControl.ElementIdentifier);
      v171 = &v170[v158[5]];
      v172 = v158;
      v173 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DADA0, &unk_252696070) + 48);
      sub_2523A539C(v165, v171, type metadata accessor for AccessoryControl);
      sub_2523A539C(v168, v171 + v173, type metadata accessor for AccessoryControlGroup.DecorationControlConfig);
      swift_storeEnumTagMultiPayload();
      *&v251[0] = v142;
      *(&v251[0] + 1) = v141;

      MEMORY[0x2530A4800](0x696C436F7475612FLL, 0xEC0000006574616DLL);
      v174 = *(&v251[0] + 1);
      v175 = &v170[v172[7]];
      v176 = &v170[v172[6]];
      *v176 = *&v251[0];
      v176[1] = v174;
      *v175 = 0;
      v175[1] = 0;
      v177 = v207;
      sub_2523A539C(v170, v207, type metadata accessor for AccessoryControlGroup);
      v178 = sub_2523687E4(1, 2, 1, v247);
      sub_2523A546C(v168, type metadata accessor for AccessoryControlGroup.DecorationControlConfig);
      sub_2523A546C(v165, type metadata accessor for AccessoryControl);
      v178[2] = 2;
      v247 = v178;
      v179 = v178 + v238;
      v163 = v240;
      sub_2523A5404(v177, v179, type metadata accessor for AccessoryControlGroup);
      sub_2523A546C(v170, type metadata accessor for AccessoryControlGroup);
    }

    v180 = v216;
    v181 = v241;
    sub_25237153C(v241, v216, &qword_27F4DB120, &qword_2526956F0);
    if (v245(v180, 1, v163) == 1)
    {
      sub_252372288(v181, &qword_27F4DB120, &qword_2526956F0);
      sub_2523A546C(v243, type metadata accessor for AccessoryControl);
      sub_2523A546C(v239, type metadata accessor for AccessoryControl.ValueDestination);
      sub_252372288(v180, &qword_27F4DB120, &qword_2526956F0);
      return v247;
    }

    else
    {
      v182 = v215;
      sub_2523A5404(v180, v215, type metadata accessor for AccessoryControl);
      v183 = *MEMORY[0x277D15DA0];
      v184 = sub_25268F0E0();
      v185 = v218;
      (*(*(v184 - 8) + 104))(v218, v183, v184);
      v186 = v217;
      v185[*(v217 + 20)] = 0;
      v185[*(v186 + 24)] = 2;
      v187 = v219;
      sub_2523A539C(v182, v219, type metadata accessor for AccessoryControl.ElementIdentifier);
      v188 = v230;
      v189 = &v187[v230[5]];
      v190 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DADA0, &unk_252696070) + 48);
      sub_2523A539C(v182, v189, type metadata accessor for AccessoryControl);
      sub_2523A539C(v185, v189 + v190, type metadata accessor for AccessoryControlGroup.DecorationControlConfig);
      swift_storeEnumTagMultiPayload();
      *&v251[0] = v142;
      *(&v251[0] + 1) = v141;

      MEMORY[0x2530A4800](0x65646F6D2FLL, 0xE500000000000000);
      v191 = *(&v251[0] + 1);
      v192 = &v187[v188[7]];
      v193 = &v187[v188[6]];
      *v193 = *&v251[0];
      v193[1] = v191;
      *v192 = 0;
      v192[1] = 0;
      v194 = v209;
      sub_2523A539C(v187, v209, type metadata accessor for AccessoryControlGroup);
      v196 = v247[2];
      v195 = v247[3];
      if (v196 >= v195 >> 1)
      {
        v247 = sub_2523687E4((v195 > 1), v196 + 1, 1, v247);
      }

      v197 = v241;
      v198 = v248;
      sub_2523A546C(v218, type metadata accessor for AccessoryControlGroup.DecorationControlConfig);
      sub_2523A546C(v215, type metadata accessor for AccessoryControl);
      sub_252372288(v197, &qword_27F4DB120, &qword_2526956F0);
      sub_2523A546C(v243, type metadata accessor for AccessoryControl);
      sub_2523A546C(v239, type metadata accessor for AccessoryControl.ValueDestination);
      v199 = v246;
      v200 = v247;
      v247[2] = v196 + 1;
      sub_2523A5404(v194, v200 + v198 + v196 * v199, type metadata accessor for AccessoryControlGroup);
      sub_2523A546C(v219, type metadata accessor for AccessoryControlGroup);
      return v200;
    }
  }

  else
  {
    sub_252372288(v241, &qword_27F4DB120, &qword_2526956F0);
    sub_2523A546C(v128, type metadata accessor for AccessoryControl);
    sub_2523A546C(v239, type metadata accessor for AccessoryControl.ValueDestination);
    return v247;
  }
}

uint64_t sub_2523A13FC@<X0>(uint64_t (*a1)(uint64_t, uint64_t, uint64_t)@<X0>, unsigned __int8 *a2@<X1>, char *a3@<X8>)
{
  v163 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB280, &qword_252695280);
  MEMORY[0x28223BE20](v5 - 8);
  v145 = &v136 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v146 = &v136 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB260, &qword_252695278);
  MEMORY[0x28223BE20](v9 - 8);
  v151 = &v136 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v157 = &v136 - v12;
  v13 = sub_252690030();
  v164 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v148 = &v136 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v152 = &v136 - v16;
  v17 = sub_252690050();
  v161 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v155 = &v136 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v147 = &v136 - v20;
  MEMORY[0x28223BE20](v21);
  v153 = &v136 - v22;
  MEMORY[0x28223BE20](v23);
  v156 = &v136 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB230, &unk_2526A9010);
  MEMORY[0x28223BE20](v25 - 8);
  v158 = &v136 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v150 = &v136 - v28;
  MEMORY[0x28223BE20](v29);
  v154 = (&v136 - v30);
  MEMORY[0x28223BE20](v31);
  v159 = &v136 - v32;
  v33 = sub_25268F4D0();
  v34 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v36 = &v136 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB208, &unk_252695180);
  MEMORY[0x28223BE20](v37 - 8);
  MEMORY[0x28223BE20](v38);
  MEMORY[0x28223BE20](v39);
  MEMORY[0x28223BE20](v40);
  MEMORY[0x28223BE20](&v136 - v41);
  v43 = &v136 - v42;
  v50 = MEMORY[0x28223BE20](v44);
  v51 = *a2;
  if (v51 != 4)
  {
    v140 = v45;
    v138 = v49;
    v139 = v48;
    v137 = v47;
    v141 = v17;
    v149 = v13;
    v144 = a3;
    LODWORD(v142) = v51;
    v54 = &v136 - v46;
    v55 = *(v34 + 104);
    v55(v36, *MEMORY[0x277D16180], v33, v50);
    type metadata accessor for HAPControlSolver.Source(0);
    v162 = v54;
    sub_25268FD80();
    v56 = *(v34 + 8);
    v56(v36, v33);
    v57 = *MEMORY[0x277D16170];
    v143 = v55;
    (v55)(v36, v57, v33);
    v160 = v43;
    sub_25268FD80();
    v56(v36, v33);
    if (v142 <= 2)
    {
      v58 = v162;
      v143(v36, *MEMORY[0x277D161B0], v33);
      v59 = v140;
      sub_25268FD80();
      v56(v36, v33);
      v60 = sub_25268F9E0();
      v61 = *(v60 - 8);
      if ((*(v61 + 48))(v59, 1, v60) == 1)
      {
        sub_252372288(v58, &qword_27F4DB208, &unk_252695180);
        v62 = v59;
LABEL_12:
        sub_252372288(v62, &qword_27F4DB208, &unk_252695180);
        v69 = v144;
        v70 = v149;
LABEL_18:
        (*(v164 + 56))(v69, 1, 1, v70);
LABEL_19:
        v81 = v160;
        return sub_252372288(v81, &qword_27F4DB208, &unk_252695180);
      }

      v71 = v159;
      sub_25268F9D0();
      (*(v61 + 8))(v59, v60);
      v72 = v161;
      v73 = v141;
      v74 = (*(v161 + 48))(v71, 1, v141);
      v69 = v144;
      v70 = v149;
      if (v74 != 1)
      {
        v87 = v156;
        (*(v72 + 16))(v156, v71, v73);
        if ((*(v72 + 88))(v87, v73) == *MEMORY[0x277D16CD0])
        {
          (*(v72 + 96))(v87, v73);
          (*(v164 + 32))(v69, v87, v70);
          v88 = v164;
          v89 = 0;
        }

        else
        {
          (*(v72 + 8))(v87, v73);
          v89 = 1;
          v88 = v164;
        }

        (*(v88 + 56))(v69, v89, 1, v70);
        sub_252372288(v58, &qword_27F4DB208, &unk_252695180);
        (*(v72 + 8))(v71, v73);
        goto LABEL_19;
      }

      sub_252372288(v58, &qword_27F4DB208, &unk_252695180);
      v75 = v71;
      goto LABEL_17;
    }

    v159 = (v34 + 8);
    v63 = v143;
    v64 = v56;
    v65 = sub_25268F9E0();
    v156 = *(v65 - 8);
    v66 = *(v156 + 6);
    v67 = v156 + 48;
    if (v66(v162, 1, v65) == 1 || v66(v160, 1, v65) == 1)
    {
      v63(v36, *MEMORY[0x277D161B0], v33);
      v68 = v139;
      sub_25268FD80();
      v64(v36, v33);
      if (v66(v68, 1, v65) == 1)
      {
        sub_252372288(v162, &qword_27F4DB208, &unk_252695180);
        v62 = v68;
        goto LABEL_12;
      }

      v76 = v158;
      sub_25268F9D0();
      (*(v156 + 1))(v68, v65);
      v77 = v161;
      v78 = v141;
      v79 = (*(v161 + 48))(v76, 1, v141);
      v69 = v144;
      v70 = v149;
      v80 = v162;
      if (v79 != 1)
      {
        v90 = v155;
        (*(v77 + 16))(v155, v76, v78);
        if ((*(v77 + 88))(v90, v78) == *MEMORY[0x277D16CD0])
        {
          (*(v77 + 96))(v90, v78);
          (*(v164 + 32))(v69, v90, v70);
          v91 = v164;
          v92 = 0;
        }

        else
        {
          (*(v77 + 8))(v90, v78);
          v92 = 1;
          v91 = v164;
        }

        (*(v91 + 56))(v69, v92, 1, v70);
        sub_252372288(v80, &qword_27F4DB208, &unk_252695180);
        (*(v77 + 8))(v76, v78);
        goto LABEL_19;
      }

      sub_252372288(v162, &qword_27F4DB208, &unk_252695180);
      v75 = v76;
LABEL_17:
      sub_252372288(v75, &qword_27F4DB230, &unk_2526A9010);
      goto LABEL_18;
    }

    v82 = v162;
    v83 = v138;
    sub_25237153C(v162, v138, &qword_27F4DB208, &unk_252695180);
    if (v66(v83, 1, v65) == 1)
    {
      sub_252372288(v83, &qword_27F4DB208, &unk_252695180);
      v84 = v144;
      v85 = v149;
      v86 = v157;
LABEL_29:
      v99 = *(v164 + 56);
      v99(v86, 1, 1, v85);
      v100 = v86;
LABEL_30:
      sub_252372288(v82, &qword_27F4DB208, &unk_252695180);
      sub_252372288(v100, &qword_27F4DB260, &qword_252695278);
      v101 = v84;
      v102 = 1;
      v103 = v85;
LABEL_31:
      v99(v101, v102, 1, v103);
      v81 = v160;
      return sub_252372288(v81, &qword_27F4DB208, &unk_252695180);
    }

    v159 = v67;
    v163 = v66;
    v93 = v154;
    sub_25268F9D0();
    v95 = v156 + 8;
    v94 = *(v156 + 1);
    v94(v83, v65);
    v96 = v161;
    v97 = v141;
    v158 = *(v161 + 48);
    v98 = (v158)(v93, 1, v141);
    v86 = v157;
    if (v98 == 1)
    {
      sub_252372288(v93, &qword_27F4DB230, &unk_2526A9010);
      v85 = v149;
      v84 = v144;
      goto LABEL_29;
    }

    v155 = v94;
    v156 = v95;
    v104 = *(v96 + 16);
    v105 = v153;
    v143 = (v96 + 16);
    v104(v153, v93, v97);
    v106 = *(v96 + 88);
    v142 = v96 + 88;
    v140 = v106;
    v107 = v106(v105, v97);
    LODWORD(v139) = *MEMORY[0x277D16CD0];
    v108 = v96;
    if (v107 == v139)
    {
      (*(v96 + 96))(v105, v97);
      v109 = v149;
      (*(v164 + 32))(v86, v105, v149);
      v99 = *(v164 + 56);
      v99(v86, 0, 1, v109);
      v110 = *(v108 + 8);
    }

    else
    {
      v138 = v104;
      v111 = *(v96 + 8);
      v111(v105, v97);
      v99 = *(v164 + 56);
      v109 = v149;
      v99(v86, 1, 1, v149);
      v110 = v111;
      v104 = v138;
    }

    v154 = v110;
    v110(v93, v97);
    v112 = *(v164 + 48);
    if (v112(v86, 1, v109) == 1)
    {
      v100 = v86;
      v85 = v109;
LABEL_41:
      v82 = v162;
      v84 = v144;
      goto LABEL_30;
    }

    v153 = v112;
    v113 = *(v164 + 32);
    v114 = v86;
    v115 = v152;
    v157 = (v164 + 32);
    v138 = v113;
    v113(v152, v114, v109);
    v116 = v137;
    sub_25237153C(v160, v137, &qword_27F4DB208, &unk_252695180);
    if (v163(v116, 1, v65) == 1)
    {
      (*(v164 + 8))(v115, v109);
      sub_252372288(v116, &qword_27F4DB208, &unk_252695180);
      v85 = v109;
    }

    else
    {
      v117 = v150;
      sub_25268F9D0();
      (v155)(v116, v65);
      v118 = v141;
      if ((v158)(v117, 1, v141) != 1)
      {
        v119 = v117;
        v120 = v147;
        v104(v147, v119, v118);
        v121 = v140(v120, v118);
        v85 = v149;
        v100 = v151;
        v122 = v152;
        if (v121 == v139)
        {
          (*(v161 + 96))(v120, v118);
          v138(v100, v120, v85);
          v123 = 0;
          v124 = v148;
          v125 = v154;
        }

        else
        {
          v125 = v154;
          v154(v120, v118);
          v123 = 1;
          v124 = v148;
        }

        v163 = (v164 + 56);
        v99(v100, v123, 1, v85);
        v125(v150, v118);
        if ((v153)(v100, 1, v85) != 1)
        {
          v138(v124, v100, v85);
          sub_25268FFF0();
          sub_25268FFF0();
          sub_252690000();
          sub_252690000();
          sub_252690020();
          sub_252690020();
          v126 = v145;
          sub_252690010();
          v127 = sub_252690040();
          v128 = *(v127 - 8);
          v129 = *(v128 + 48);
          v130 = v129(v126, 1, v127);
          v131 = v162;
          if (v130 == 1)
          {
            sub_252690010();
            if (v129(v126, 1, v127) != 1)
            {
              sub_252372288(v126, &qword_27F4DB280, &qword_252695280);
            }
          }

          else
          {
            v132 = v146;
            (*(v128 + 32))(v146, v126, v127);
            (*(v128 + 56))(v132, 0, 1, v127);
          }

          v133 = v144;
          sub_25268FFE0();
          v134 = *(v164 + 8);
          v164 += 8;
          v135 = v149;
          v134(v124, v149);
          v134(v152, v135);
          sub_252372288(v131, &qword_27F4DB208, &unk_252695180);
          v101 = v133;
          v102 = 0;
          v103 = v135;
          goto LABEL_31;
        }

        (*(v164 + 8))(v122, v85);
        goto LABEL_41;
      }

      v85 = v149;
      (*(v164 + 8))(v152, v149);
      sub_252372288(v117, &qword_27F4DB230, &unk_2526A9010);
    }

    v100 = v151;
    v84 = v144;
    v99(v151, 1, 1, v85);
    v82 = v162;
    goto LABEL_30;
  }

  v52 = *(v164 + 56);

  return v52(a3, 1, 1, v13, v50);
}

uint64_t sub_2523A2858@<X0>(unsigned __int8 *a1@<X1>, char a2@<W2>, uint64_t a3@<X8>)
{
  v4 = *a1;
  if (v4 == 4)
  {
    goto LABEL_2;
  }

  type metadata accessor for HAPControlSolver.Source(0);
  v12 = sub_25268FD50();
  v14 = v13;
  v47 = sub_25268FD40();
  v16 = v15;
  v46 = sub_25268FD30();
  v18 = v17;
  v19 = sub_25268FD10();
  if ((v4 - 1) < 2)
  {
    if ((v16 & 1) == 0)
    {
      *(a3 + 33) = 514;
      v21 = type metadata accessor for AccessoryControl.ThermostatState(0);
      v22 = v21[8];
      v23 = type metadata accessor for AccessoryControl.ThermostatState.ThermostatHold(0);
      (*(*(v23 - 8) + 56))(a3 + v22, 1, 1, v23);
      v24 = a3 + v21[9];
      *v24 = xmmword_252695260;
      *(v24 + 16) = 0;
      *(a3 + v21[11]) = 3;
      *a3 = v12;
      *(a3 + 8) = v14 & 1;
      *(a3 + v21[10]) = v4;
      *(a3 + 16) = v47;
      *(a3 + 24) = 0;
      *(a3 + 32) = 0;
      v6 = *(*(v21 - 1) + 56);
      v8 = a3;
      v9 = 0;
      v7 = v21;
      goto LABEL_3;
    }

LABEL_2:
    v5 = type metadata accessor for AccessoryControl.ThermostatState(0);
    v6 = *(*(v5 - 8) + 56);
    v7 = v5;
    v8 = a3;
    v9 = 1;
    goto LABEL_3;
  }

  if (v4)
  {
    if (a2)
    {
      if (v16)
      {
        goto LABEL_2;
      }

      v32 = sub_25268FD50();
      v34 = v33;
      *(a3 + 33) = 514;
      v35 = type metadata accessor for AccessoryControl.ThermostatState(0);
      v36 = v35[8];
      v37 = type metadata accessor for AccessoryControl.ThermostatState.ThermostatHold(0);
      (*(*(v37 - 8) + 56))(a3 + v36, 1, 1, v37);
      v38 = a3 + v35[9];
      *v38 = xmmword_252695260;
      *(v38 + 16) = 0;
      *(a3 + v35[11]) = 3;
      *a3 = v32;
      *(a3 + 8) = v34 & 1;
      *(a3 + v35[10]) = 3;
      *(a3 + 16) = v47;
      *(a3 + 24) = 0;
      *(a3 + 32) = 0;
    }

    else
    {
      if (v18 & 1) != 0 || (v20)
      {
        goto LABEL_2;
      }

      v39 = v19;
      v40 = sub_25268FD50();
      v42 = v41;
      *(a3 + 33) = 514;
      v35 = type metadata accessor for AccessoryControl.ThermostatState(0);
      v43 = v35[8];
      v44 = type metadata accessor for AccessoryControl.ThermostatState.ThermostatHold(0);
      (*(*(v44 - 8) + 56))(a3 + v43, 1, 1, v44);
      v45 = a3 + v35[9];
      *v45 = xmmword_252695260;
      *(v45 + 16) = 0;
      *(a3 + v35[11]) = 3;
      *a3 = v40;
      *(a3 + 8) = v42 & 1;
      *(a3 + v35[10]) = 3;
      *(a3 + 16) = v46;
      *(a3 + 24) = v39;
      *(a3 + 32) = 1;
    }

    v6 = *(*(v35 - 1) + 56);
    v8 = a3;
    v9 = 0;
    v7 = v35;
  }

  else
  {
    v25 = sub_25268FD50();
    v27 = v26;
    *(a3 + 33) = 514;
    v28 = type metadata accessor for AccessoryControl.ThermostatState(0);
    v29 = v28[8];
    v30 = type metadata accessor for AccessoryControl.ThermostatState.ThermostatHold(0);
    (*(*(v30 - 8) + 56))(a3 + v29, 1, 1, v30);
    v31 = a3 + v28[9];
    *v31 = xmmword_252695260;
    *(v31 + 16) = 0;
    *(a3 + v28[11]) = 3;
    *a3 = v25;
    *(a3 + 8) = v27 & 1;
    *(a3 + v28[10]) = 0;
    *(a3 + 16) = 0;
    *(a3 + 24) = 0;
    *(a3 + 32) = 2;
    v6 = *(*(v28 - 1) + 56);
    v8 = a3;
    v9 = 0;
    v7 = v28;
  }

LABEL_3:

  return v6(v8, v9, 1, v7);
}

uint64_t sub_2523A2CA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB210, &unk_2526951B0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = (&v31 - v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB258, &unk_252696090);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v31 - v10;
  v12 = type metadata accessor for AccessoryControl.ThermostatState(0);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25237153C(a1, v11, &qword_27F4DB258, &unk_252696090);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_252372288(v11, &qword_27F4DB258, &unk_252696090);
    if (qword_27F4DA998 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for AccessoryControl.WriteSpecification(0);
    v17 = __swift_project_value_buffer(v16, qword_27F4DB8A0);
    return sub_2523A539C(v17, a3, type metadata accessor for AccessoryControl.WriteSpecification);
  }

  else
  {
    sub_2523A5404(v11, v15, type metadata accessor for AccessoryControl.ThermostatState);
    v19 = sub_2523A4180(v15);
    v20 = type metadata accessor for AccessoryControl.HAPWriteSpecification(0);
    v21 = *(v20 + 24);
    v22 = sub_25268F140();
    (*(*(v22 - 8) + 56))(v8 + v21, 1, 1, v22);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAF58, &qword_2526951D0);
    v23 = sub_25268DA10();
    v24 = *(v23 - 8);
    v25 = (*(v24 + 80) + 32) & ~*(v24 + 80);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_252694E90;
    (*(v24 + 16))(v26 + v25, a2, v23);
    v27 = sub_25240C1FC(v26);
    swift_setDeallocating();
    (*(v24 + 8))(v26 + v25, v23);
    swift_deallocClassInstance();
    v28 = sub_2523F75C4(v19);

    *v8 = v28;
    v8[1] = 0;
    *(v8 + *(v20 + 28)) = v27;
    v29 = *(*(v20 - 8) + 56);
    v29(v8, 0, 1, v20);
    sub_2523A546C(v15, type metadata accessor for AccessoryControl.ThermostatState);
    v29(a3, 1, 1, v20);
    v30 = *(type metadata accessor for AccessoryControl.WriteSpecification(0) + 20);
    *(a3 + v30) = 0;
    sub_252377048(v8, a3, &qword_27F4DB210, &unk_2526951B0);

    *(a3 + v30) = 0;
  }

  return result;
}

uint64_t sub_2523A30F0@<X0>(uint64_t a1@<X0>, const char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v97 = a5;
  v94 = a4;
  v90 = a3;
  v106 = a2;
  v8 = type metadata accessor for HAPControlSolver.Source(0);
  v95 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v96 = v9;
  v98 = &v84 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_25268DA10();
  v99 = *(v10 - 8);
  v100 = v10;
  MEMORY[0x28223BE20](v10);
  v101 = &v84 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = type metadata accessor for AccessoryControl.PickerViewConfig(0);
  MEMORY[0x28223BE20](v93);
  v104 = &v84 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DADB8, &qword_2526A6E60);
  MEMORY[0x28223BE20](v13 - 8);
  v91 = &v84 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v105 = &v84 - v16;
  MEMORY[0x28223BE20](v17);
  v102 = &v84 - v18;
  v19 = sub_25268F4D0();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = &v84 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB208, &unk_252695180);
  MEMORY[0x28223BE20](v23 - 8);
  v25 = &v84 - v24;
  v26 = sub_25268F9E0();
  v27 = *(v26 - 8);
  v28 = MEMORY[0x28223BE20](v26);
  v30 = &v84 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v20 + 104))(v22, *MEMORY[0x277D16298], v19, v28);
  v92 = v8;
  v103 = a1;
  sub_25268FD80();
  (*(v20 + 8))(v22, v19);
  if ((*(v27 + 48))(v25, 1, v26) == 1)
  {
    sub_252372288(v25, &qword_27F4DB208, &unk_252695180);
    v31 = type metadata accessor for AccessoryControl(0);
    return (*(*(v31 - 8) + 56))(a6, 1, 1, v31);
  }

  v89 = a6;
  (*(v27 + 32))(v30, v25, v26);
  v33 = *(v106 + 2);
  v34 = MEMORY[0x277D84F90];
  v88 = v26;
  v87 = v27;
  v86 = v30;
  if (v33)
  {
    v34 = sub_2525EEC7C(v33, 0);
    v35 = sub_2525EEF6C(v107, v34 + 32, v33, v106);
    v36 = v107[0];
    v37 = v107[4];

    sub_2523A4D1C(v36);
    if (v35 != v33)
    {
      __break(1u);

      __break(1u);
      goto LABEL_33;
    }
  }

  v107[0] = v34;
  sub_2523A44BC(v107);
  v38 = v107[0];
  v39 = sub_25268FD90();
  if ((v40 & 1) != 0 || !v39)
  {
    v41 = sub_2526922D0();
    goto LABEL_10;
  }

  if (v39 != 1)
  {
    if (v39 == 2)
    {
      v41 = sub_2526922B0();
      goto LABEL_10;
    }

LABEL_33:
    v83 = v39;
    type metadata accessor for HMCharacteristicValueCurrentHeatingCooling(0);
    v107[0] = v83;
    result = sub_2526933C0();
    __break(1u);
    return result;
  }

  v41 = sub_252692340();
LABEL_10:
  v85 = v41;
  if (*(v90 + *(type metadata accessor for AccessoryControlSolver.Context(0) + 20)) - 1 > 1)
  {
    v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD88, &unk_2526956E0);
    v43 = v105;
    (*(*(v49 - 8) + 56))(v105, 1, 1, v49);
  }

  else
  {
    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD88, &unk_2526956E0);
    v43 = v105;
    v44 = &v105[*(v42 + 28)];
    v45 = type metadata accessor for IconDescriptor(0);
    v46 = *(v45 + 20);
    v47 = *MEMORY[0x277D16578];
    v48 = sub_25268F910();
    (*(*(v48 - 8) + 104))(&v44[v46], v47, v48);
    *v44 = 0xD000000000000018;
    *(v44 + 1) = 0x80000002526ADCD0;
    v44[*(v45 + 24)] = 0;
    sub_2523A539C(v44, v43, type metadata accessor for IconDescriptor);
    (*(*(v42 - 8) + 56))(v43, 0, 1, v42);
  }

  sub_2523A4D24(v43, v102);
  v50 = *(v38 + 2);
  if (v50)
  {
    v107[0] = MEMORY[0x277D84F90];
    sub_25236FF90(0, v50, 0);
    v51 = v107[0];
    v52 = "fan.oscillation.fill";
    v105 = "HFServiceThermostatModeOff";
    v106 = "HFServiceThermostatModeCool";
    v53 = 32;
    do
    {
      if (v38[v53] > 1u)
      {
        if (v38[v53] == 2)
        {
          v54 = sub_252692C40();
          v56 = 1;
        }

        else
        {
          v54 = sub_252692C40();
          v56 = 3;
        }
      }

      else if (v38[v53])
      {
        v54 = sub_252692C40();
        v56 = 2;
      }

      else
      {
        v54 = sub_252692C40();
        v56 = 0;
      }

      v107[0] = v51;
      v58 = *(v51 + 2);
      v57 = *(v51 + 3);
      if (v58 >= v57 >> 1)
      {
        v84 = v52;
        v90 = v54;
        v60 = v55;
        sub_25236FF90((v57 > 1), v58 + 1, 1);
        v52 = v84;
        v55 = v60;
        v54 = v90;
        v51 = v107[0];
      }

      *(v51 + 2) = v58 + 1;
      v59 = &v51[32 * v58];
      *(v59 + 4) = v56;
      *(v59 + 5) = v54;
      *(v59 + 6) = v55;
      *(v59 + 7) = 0;
      ++v53;
      --v50;
    }

    while (v50);
  }

  else
  {

    v51 = MEMORY[0x277D84F90];
  }

  v61 = *(v103 + *(v92 + 40));
  v62 = sub_252692330();
  v63 = v91;
  sub_25237153C(v102, v91, &qword_27F4DADB8, &qword_2526A6E60);
  v64 = v93;
  type metadata accessor for AccessoryControl.StatusProvider(0);
  v65 = v104;
  swift_storeEnumTagMultiPayload();
  v66 = v64[6];
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD88, &unk_2526956E0);
  (*(*(v67 - 8) + 56))(v65 + v66, 1, 1, v67);
  v68 = v65 + v64[11];
  *v65 = v51;
  *(v65 + 8) = v61;
  *(v65 + v64[8]) = v85;
  *(v65 + v64[9]) = v62;
  sub_252377048(v63, v65 + v66, &qword_27F4DADB8, &qword_2526A6E60);
  v69 = 0;
  *v68 = 0;
  *(v68 + 8) = 0;
  *(v65 + v64[7]) = 0;
  if (v94 != 4)
  {
    v69 = qword_252695478[v94];
  }

  LODWORD(v106) = v94 == 4;
  v70 = v86;
  sub_25268F9B0();
  v71 = type metadata accessor for AccessoryControl(0);
  v72 = v89;
  v73 = v89 + v71[5];
  v74 = (v73 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DADB0, &unk_2526A7360) + 48));
  sub_2523A539C(v104, v73, type metadata accessor for AccessoryControl.PickerViewConfig);
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD68, &qword_2526A4D70);
  sub_2523A539C(v97, v74 + *(v75 + 36), type metadata accessor for AccessoryControl.ValueDestination);
  v76 = v98;
  sub_2523A539C(v103, v98, type metadata accessor for HAPControlSolver.Source);
  v77 = (*(v95 + 80) + 16) & ~*(v95 + 80);
  v78 = swift_allocObject();
  sub_2523A5404(v76, v78 + v77, type metadata accessor for HAPControlSolver.Source);
  v79 = v74 + *(v75 + 40);
  *v79 = v69;
  v79[8] = v106;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB020, &unk_2526956B0);
  v80 = swift_allocObject();
  *(v80 + 16) = xmmword_252694E90;
  *(v80 + 32) = sub_2523A4D94;
  *(v80 + 40) = v78;
  sub_252372288(v102, &qword_27F4DADB8, &qword_2526A6E60);
  (*(v87 + 8))(v70, v88);
  *v74 = v80;
  type metadata accessor for AccessoryControl.State(0);
  swift_storeEnumTagMultiPayload();
  (*(v99 + 32))(v72, v101, v100);
  type metadata accessor for AccessoryControl.ElementIdentifier(0);
  swift_storeEnumTagMultiPayload();
  v81 = (v72 + v71[7]);
  v82 = v71[9];
  *(v72 + v82) = 16;
  *(v72 + v71[6]) = 0;
  *v81 = 0;
  v81[1] = 0;
  *(v72 + v71[8]) = 1028;
  *(v72 + v82) = 15;
  *(v72 + v71[10]) = 1;
  sub_2523A546C(v104, type metadata accessor for AccessoryControl.PickerViewConfig);
  return (*(*(v71 - 1) + 56))(v72, 0, 1, v71);
}

uint64_t sub_2523A3D48@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB210, &unk_2526951B0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = (&v32 - v7);
  if (*(a1 + 8) == 1)
  {
    if (qword_27F4DA998 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for AccessoryControl.WriteSpecification(0);
    v10 = __swift_project_value_buffer(v9, qword_27F4DB8A0);
    return sub_2523A539C(v10, a3, type metadata accessor for AccessoryControl.WriteSpecification);
  }

  else
  {
    v12 = *a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB220, &unk_2526951C0);
    v13 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB228, &qword_2526A92D0) - 8);
    v14 = (*(*v13 + 80) + 32) & ~*(*v13 + 80);
    v15 = swift_allocObject();
    v32 = xmmword_252694E90;
    *(v15 + 16) = xmmword_252694E90;
    v16 = v15 + v14;
    v17 = (v16 + v13[14]);
    v18 = *MEMORY[0x277D16298];
    v19 = sub_25268F4D0();
    (*(*(v19 - 8) + 104))(v16, v18, v19);
    v17[3] = MEMORY[0x277D83B88];
    *v17 = v12;
    v20 = sub_25256E63C(v15);
    swift_setDeallocating();
    sub_252372288(v16, &qword_27F4DB228, &qword_2526A92D0);
    swift_deallocClassInstance();
    v21 = type metadata accessor for AccessoryControl.HAPWriteSpecification(0);
    v22 = *(v21 + 24);
    v23 = sub_25268F140();
    (*(*(v23 - 8) + 56))(v8 + v22, 1, 1, v23);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAF58, &qword_2526951D0);
    v24 = sub_25268DA10();
    v25 = *(v24 - 8);
    v26 = (*(v25 + 80) + 32) & ~*(v25 + 80);
    v27 = swift_allocObject();
    *(v27 + 16) = v32;
    (*(v25 + 16))(v27 + v26, a2, v24);
    v28 = sub_25240C1FC(v27);
    swift_setDeallocating();
    (*(v25 + 8))(v27 + v26, v24);
    swift_deallocClassInstance();
    v29 = sub_2523F75C4(v20);

    *v8 = v29;
    v8[1] = 0;
    *(v8 + *(v21 + 28)) = v28;
    v30 = *(*(v21 - 8) + 56);
    v30(v8, 0, 1, v21);
    v30(a3, 1, 1, v21);
    v31 = *(type metadata accessor for AccessoryControl.WriteSpecification(0) + 20);
    *(a3 + v31) = 0;
    sub_252377048(v8, a3, &qword_27F4DB210, &unk_2526951B0);

    *(a3 + v31) = 0;
  }

  return result;
}

unint64_t sub_2523A4180(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!*(a1 + 32))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB220, &unk_2526951C0);
    v15 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB228, &qword_2526A92D0) - 8);
    v16 = (*(*v15 + 80) + 32) & ~*(*v15 + 80);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_252694E90;
    v18 = v17 + v16;
    v19 = (v18 + v15[14]);
    v20 = *MEMORY[0x277D161B0];
    v21 = sub_25268F4D0();
    (*(*(v21 - 8) + 104))(v18, v20, v21);
    v19[3] = MEMORY[0x277D839F8];
    *v19 = v1;
    v14 = sub_25256E63C(v17);
    swift_setDeallocating();
    sub_252372288(v18, &qword_27F4DB228, &qword_2526A92D0);
    goto LABEL_5;
  }

  if (*(a1 + 32) == 1)
  {
    v2 = *(a1 + 24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB220, &unk_2526951C0);
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB228, &qword_2526A92D0);
    v4 = *(*(v3 - 8) + 72);
    v5 = (*(*(v3 - 8) + 80) + 32) & ~*(*(v3 - 8) + 80);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_252694EA0;
    v7 = v6 + v5;
    v8 = (v7 + *(v3 + 48));
    v9 = *MEMORY[0x277D16180];
    v10 = sub_25268F4D0();
    v11 = *(*(v10 - 8) + 104);
    (v11)(v7, v9, v10);
    v12 = MEMORY[0x277D839F8];
    v8[3] = MEMORY[0x277D839F8];
    *v8 = v1;
    v13 = (v7 + v4 + *(v3 + 48));
    v11();
    v13[3] = v12;
    *v13 = v2;
    v14 = sub_25256E63C(v6);
    swift_setDeallocating();
    swift_arrayDestroy();
LABEL_5:
    swift_deallocClassInstance();
    return v14;
  }

  v23 = MEMORY[0x277D84F90];

  return sub_25256E63C(v23);
}

uint64_t sub_2523A44BC(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_252624280(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  result = sub_252693360();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 32;
      do
      {
        v11 = v2[v9 + 32];
        v12 = v8;
        v13 = v10;
        do
        {
          v14 = *v13;
          if (v11 >= v14)
          {
            break;
          }

          v13[1] = v14;
          *v13-- = v11;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        ++v10;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = sub_252692DC0();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x277D84F90];
    }

    v16[0] = v7 + 32;
    v16[1] = v6;
    sub_2523A45F4(v16, v17, v18, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_2523A45F4(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v85 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v9 = MEMORY[0x277D84F90];
LABEL_88:
    v85 = *v85;
    if (!v85)
    {
      goto LABEL_126;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_120:
      result = sub_252624154(v9);
      v9 = result;
    }

    v77 = v9 + 16;
    v78 = *(v9 + 2);
    if (v78 >= 2)
    {
      while (*a3)
      {
        v79 = &v9[16 * v78];
        v80 = *v79;
        v81 = &v77[2 * v78];
        v82 = v81[1];
        sub_2523A4B30((*a3 + *v79), (*a3 + *v81), (*a3 + v82), v85);
        if (v4)
        {
        }

        if (v82 < v80)
        {
          goto LABEL_112;
        }

        if (v78 - 2 >= *v77)
        {
          goto LABEL_113;
        }

        *v79 = v80;
        *(v79 + 1) = v82;
        v83 = *v77 - v78;
        if (*v77 < v78)
        {
          goto LABEL_114;
        }

        v78 = *v77 - 1;
        result = memmove(v81, v81 + 2, 16 * v83);
        *v77 = v78;
        if (v78 <= 1)
        {
        }
      }

      goto LABEL_124;
    }
  }

  v7 = a4;
  v8 = 0;
  v9 = MEMORY[0x277D84F90];
  while (1)
  {
    v10 = v8++;
    if (v8 < v6)
    {
      v11 = *(*a3 + v8);
      v12 = *(*a3 + v10);
      v13 = v10 + 2;
      v14 = v11;
      while (v6 != v13)
      {
        v15 = *(*a3 + v13);
        v16 = (v11 < v12) ^ (v15 >= v14);
        ++v13;
        v14 = v15;
        if ((v16 & 1) == 0)
        {
          v8 = v13 - 1;
          if (v11 >= v12)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v8 = v6;
      if (v11 >= v12)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v8 < v10)
      {
        goto LABEL_117;
      }

      if (v10 < v8)
      {
        v17 = v8 - 1;
        v18 = v10;
        do
        {
          if (v18 != v17)
          {
            v21 = *a3;
            if (!*a3)
            {
              goto LABEL_123;
            }

            v19 = *(v21 + v18);
            *(v21 + v18) = *(v21 + v17);
            *(v21 + v17) = v19;
          }
        }

        while (++v18 < v17--);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v8 < v6)
    {
      if (__OFSUB__(v8, v10))
      {
        goto LABEL_116;
      }

      if (v8 - v10 < v7)
      {
        if (__OFADD__(v10, v7))
        {
          goto LABEL_118;
        }

        if (v10 + v7 < v6)
        {
          v6 = v10 + v7;
        }

        if (v6 < v10)
        {
LABEL_119:
          __break(1u);
          goto LABEL_120;
        }

        if (v8 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v8 < v10)
    {
      goto LABEL_115;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_252368690(0, *(v9 + 2) + 1, 1, v9);
      v9 = result;
    }

    v31 = *(v9 + 2);
    v30 = *(v9 + 3);
    v32 = v31 + 1;
    if (v31 >= v30 >> 1)
    {
      result = sub_252368690((v30 > 1), v31 + 1, 1, v9);
      v9 = result;
    }

    *(v9 + 2) = v32;
    v33 = &v9[16 * v31];
    *(v33 + 4) = v10;
    *(v33 + 5) = v8;
    v34 = *v85;
    if (!*v85)
    {
      goto LABEL_125;
    }

    if (v31)
    {
      while (1)
      {
        v35 = v32 - 1;
        if (v32 >= 4)
        {
          break;
        }

        if (v32 == 3)
        {
          v36 = *(v9 + 4);
          v37 = *(v9 + 5);
          v46 = __OFSUB__(v37, v36);
          v38 = v37 - v36;
          v39 = v46;
LABEL_57:
          if (v39)
          {
            goto LABEL_103;
          }

          v52 = &v9[16 * v32];
          v54 = *v52;
          v53 = *(v52 + 1);
          v55 = __OFSUB__(v53, v54);
          v56 = v53 - v54;
          v57 = v55;
          if (v55)
          {
            goto LABEL_106;
          }

          v58 = &v9[16 * v35 + 32];
          v60 = *v58;
          v59 = *(v58 + 1);
          v46 = __OFSUB__(v59, v60);
          v61 = v59 - v60;
          if (v46)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v56, v61))
          {
            goto LABEL_110;
          }

          if (v56 + v61 >= v38)
          {
            if (v38 < v61)
            {
              v35 = v32 - 2;
            }

            goto LABEL_78;
          }

          goto LABEL_71;
        }

        v62 = &v9[16 * v32];
        v64 = *v62;
        v63 = *(v62 + 1);
        v46 = __OFSUB__(v63, v64);
        v56 = v63 - v64;
        v57 = v46;
LABEL_71:
        if (v57)
        {
          goto LABEL_105;
        }

        v65 = &v9[16 * v35];
        v67 = *(v65 + 4);
        v66 = *(v65 + 5);
        v46 = __OFSUB__(v66, v67);
        v68 = v66 - v67;
        if (v46)
        {
          goto LABEL_108;
        }

        if (v68 < v56)
        {
          goto LABEL_3;
        }

LABEL_78:
        v73 = v35 - 1;
        if (v35 - 1 >= v32)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
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
          goto LABEL_119;
        }

        if (!*a3)
        {
          goto LABEL_122;
        }

        v74 = *&v9[16 * v73 + 32];
        v75 = *&v9[16 * v35 + 40];
        sub_2523A4B30((*a3 + v74), (*a3 + *&v9[16 * v35 + 32]), (*a3 + v75), v34);
        if (v4)
        {
        }

        if (v75 < v74)
        {
          goto LABEL_99;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_252624154(v9);
        }

        if (v73 >= *(v9 + 2))
        {
          goto LABEL_100;
        }

        v76 = &v9[16 * v73];
        *(v76 + 4) = v74;
        *(v76 + 5) = v75;
        result = sub_2526240C8(v35);
        v32 = *(v9 + 2);
        if (v32 <= 1)
        {
          goto LABEL_3;
        }
      }

      v40 = &v9[16 * v32 + 32];
      v41 = *(v40 - 64);
      v42 = *(v40 - 56);
      v46 = __OFSUB__(v42, v41);
      v43 = v42 - v41;
      if (v46)
      {
        goto LABEL_101;
      }

      v45 = *(v40 - 48);
      v44 = *(v40 - 40);
      v46 = __OFSUB__(v44, v45);
      v38 = v44 - v45;
      v39 = v46;
      if (v46)
      {
        goto LABEL_102;
      }

      v47 = &v9[16 * v32];
      v49 = *v47;
      v48 = *(v47 + 1);
      v46 = __OFSUB__(v48, v49);
      v50 = v48 - v49;
      if (v46)
      {
        goto LABEL_104;
      }

      v46 = __OFADD__(v38, v50);
      v51 = v38 + v50;
      if (v46)
      {
        goto LABEL_107;
      }

      if (v51 >= v43)
      {
        v69 = &v9[16 * v35 + 32];
        v71 = *v69;
        v70 = *(v69 + 1);
        v46 = __OFSUB__(v70, v71);
        v72 = v70 - v71;
        if (v46)
        {
          goto LABEL_111;
        }

        if (v38 < v72)
        {
          v35 = v32 - 2;
        }

        goto LABEL_78;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    v7 = a4;
    if (v8 >= v6)
    {
      goto LABEL_88;
    }
  }

  v22 = *a3;
  v23 = (*a3 + v8);
  v24 = v10 - v8;
LABEL_30:
  v25 = *(v22 + v8);
  v26 = v24;
  v27 = v23;
  while (1)
  {
    v28 = *(v27 - 1);
    if (v25 >= v28)
    {
LABEL_29:
      ++v8;
      ++v23;
      --v24;
      if (v8 != v6)
      {
        goto LABEL_30;
      }

      v8 = v6;
      goto LABEL_37;
    }

    if (!v22)
    {
      break;
    }

    *v27 = v28;
    *--v27 = v25;
    if (__CFADD__(v26++, 1))
    {
      goto LABEL_29;
    }
  }

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
  return result;
}

uint64_t sub_2523A4B30(unsigned __int8 *__dst, unsigned __int8 *__src, unsigned __int8 *a3, unsigned __int8 *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = a3 - __src;
  if (__src - __dst >= a3 - __src)
  {
    if (a4 != __src || a4 >= a3)
    {
      memmove(a4, __src, a3 - __src);
    }

    v10 = &v4[v9];
    if (v9 >= 1 && v6 > v7)
    {
      do
      {
        v14 = v6 - 1;
        --v5;
        v15 = v10;
        while (1)
        {
          v16 = v5 + 1;
          v18 = *--v15;
          v17 = v18;
          v19 = *v14;
          if (v18 < v19)
          {
            break;
          }

          if (v16 < v10 || v5 >= v10)
          {
            *v5 = v17;
          }

          --v5;
          v10 = v15;
          if (v15 <= v4)
          {
            v10 = v15;
            goto LABEL_40;
          }
        }

        if (v16 < v6 || v5 >= v6)
        {
          *v5 = v19;
        }

        if (v10 <= v4)
        {
          break;
        }

        --v6;
      }

      while (v14 > v7);
      v6 = v14;
      if (v14 == v4)
      {
        goto LABEL_41;
      }

      goto LABEL_42;
    }

LABEL_40:
    if (v6 != v4)
    {
LABEL_42:
      memmove(v6, v4, v10 - v4);
      return 1;
    }
  }

  else
  {
    if (a4 != __dst || a4 >= __src)
    {
      memmove(a4, __dst, v8);
    }

    v10 = &v4[v8];
    if (v8 >= 1 && v6 < v5)
    {
      while (1)
      {
        v11 = *v6;
        if (v11 >= *v4)
        {
          v13 = v4 + 1;
          LOBYTE(v11) = *v4;
          v12 = v6;
          if (v7 < v4)
          {
            ++v4;
          }

          else
          {
            ++v4;
            if (v7 < v13)
            {
              goto LABEL_16;
            }
          }
        }

        else
        {
          v12 = v6 + 1;
          if (v7 >= v6 && v7 < v12)
          {
            goto LABEL_16;
          }
        }

        *v7 = v11;
LABEL_16:
        ++v7;
        if (v4 < v10)
        {
          v6 = v12;
          if (v12 < v5)
          {
            continue;
          }
        }

        break;
      }
    }

    v6 = v7;
    if (v7 != v4)
    {
      goto LABEL_42;
    }
  }

LABEL_41:
  if (v6 >= v10)
  {
    goto LABEL_42;
  }

  return 1;
}

uint64_t sub_2523A4D24(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DADB8, &qword_2526A6E60);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2523A4D94@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(type metadata accessor for HAPControlSolver.Source(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_2523A3D48(a1, v6, a2);
}

uint64_t sub_2523A4E14()
{
  v0 = sub_25268F4D0();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB208, &unk_252695180);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v30 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB230, &unk_2526A9010);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v30 - v8;
  v10 = sub_25268FFD0();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v3, *MEMORY[0x277D16298], v0, v12);
  type metadata accessor for HAPControlSolver.Source(0);
  sub_25268FD80();
  (*(v1 + 8))(v3, v0);
  v15 = sub_25268F9E0();
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(v6, 1, v15) == 1)
  {
    sub_252372288(v6, &qword_27F4DB208, &unk_252695180);
    v17 = sub_252690050();
    (*(*(v17 - 8) + 56))(v9, 1, 1, v17);
LABEL_4:
    sub_252372288(v9, &qword_27F4DB230, &unk_2526A9010);
    return 0;
  }

  sub_25268F9D0();
  (*(v16 + 8))(v6, v15);
  v18 = sub_252690050();
  v19 = *(v18 - 8);
  if ((*(v19 + 48))(v9, 1, v18) == 1)
  {
    goto LABEL_4;
  }

  if ((*(v19 + 88))(v9, v18) != *MEMORY[0x277D16CC8])
  {
    (*(v19 + 8))(v9, v18);
    return 0;
  }

  (*(v19 + 96))(v9, v18);
  (*(v11 + 32))(v14, v9, v10);
  v21 = sub_25268FF90();
  v22 = *(v21 + 16);
  v30[1] = v21;
  if (v22)
  {
    v23 = (v21 + 32);
    v24 = MEMORY[0x277D84F90];
    do
    {
      v26 = *v23++;
      v25 = v26;
      if (v26 <= 3)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v24 = sub_252368654(0, *(v24 + 2) + 1, 1, v24);
        }

        v28 = *(v24 + 2);
        v27 = *(v24 + 3);
        if (v28 >= v27 >> 1)
        {
          v24 = sub_252368654((v27 > 1), v28 + 1, 1, v24);
        }

        *(v24 + 2) = v28 + 1;
        v24[v28 + 32] = 0x3010200u >> (8 * v25);
      }

      --v22;
    }

    while (v22);
  }

  else
  {
    v24 = MEMORY[0x277D84F90];
  }

  v29 = sub_2526243C8(v24);

  (*(v11 + 8))(v14, v10);
  return v29;
}

uint64_t sub_2523A531C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(type metadata accessor for HAPControlSolver.Source(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_2523A2CA4(a1, v6, a2);
}

uint64_t sub_2523A539C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2523A5404(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2523A546C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2523A54CC@<X0>(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v223 = a3;
  v254 = a1;
  v222 = type metadata accessor for AccessoryControl.AutoClimatePickerState(0);
  v221 = *(v222 - 8);
  MEMORY[0x28223BE20](v222);
  v232 = &v204 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v220 = type metadata accessor for AccessoryControl.AutoClimatePickerViewConfig(0);
  MEMORY[0x28223BE20](v220);
  v231 = &v204 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB330, &qword_2526954B8);
  MEMORY[0x28223BE20](v8 - 8);
  v238 = &v204 - v9;
  v240 = type metadata accessor for AccessoryControl.AutoClimateState.SetpointHold(0);
  v239 = *(v240 - 8);
  MEMORY[0x28223BE20](v240);
  v241 = (&v204 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v229 = sub_25268E350();
  v228 = *(v229 - 8);
  MEMORY[0x28223BE20](v229);
  v227 = &v204 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v226 = &v204 - v13;
  v215 = type metadata accessor for AccessoryControl.AutoClimateAlertViewConfig(0);
  MEMORY[0x28223BE20](v215);
  v216 = &v204 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v213 = sub_25268F290();
  v212 = *(v213 - 8);
  MEMORY[0x28223BE20](v213);
  v211 = &v204 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v225 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD88, &unk_2526956E0);
  MEMORY[0x28223BE20](v225);
  v219 = &v204 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v230 = &v204 - v18;
  MEMORY[0x28223BE20](v19);
  v224 = &v204 - v20;
  v237 = sub_2526903A0();
  v243 = *(v237 - 8);
  MEMORY[0x28223BE20](v237);
  v214 = &v204 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v236 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB338, &qword_2526954C0);
  MEMORY[0x28223BE20](v236);
  v245 = &v204 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB340, &qword_2526954C8);
  MEMORY[0x28223BE20](v23 - 8);
  v246 = &v204 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v242 = &v204 - v26;
  MEMORY[0x28223BE20](v27);
  v244 = &v204 - v28;
  v235 = sub_252690200();
  v234 = *(v235 - 8);
  MEMORY[0x28223BE20](v235);
  v233 = &v204 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB2E8, &unk_2526960A0);
  MEMORY[0x28223BE20](v30 - 8);
  v32 = &v204 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v248 = &v204 - v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB250, &unk_2526A2310);
  MEMORY[0x28223BE20](v35 - 8);
  v37 = &v204 - v36;
  v38 = sub_252690490();
  v251 = *(v38 - 8);
  v252 = v38;
  MEMORY[0x28223BE20](v38);
  v250 = &v204 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD50, &unk_2526A8D80);
  MEMORY[0x28223BE20](v40 - 8);
  v42 = &v204 - v41;
  v43 = type metadata accessor for MatterControlSolver.Source(0);
  v44 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v218 = &v204 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v217 = v45;
  MEMORY[0x28223BE20](v46);
  v253 = &v204 - v47;
  v48 = sub_25268E060();
  v49 = *(v48 - 8);
  v50 = MEMORY[0x28223BE20](v48);
  v52 = &v204 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  v249 = *a2;
  (*(v49 + 104))(v52, *MEMORY[0x277D15280], v48, v50);
  sub_2523AB7F8(&qword_27F4DB268, MEMORY[0x277D15298], MEMORY[0x277D15270]);
  LOBYTE(a2) = sub_25268DB80();
  (*(v49 + 8))(v52, v48);
  if ((a2 & 1) == 0)
  {
    goto LABEL_8;
  }

  v247 = a4;
  v53 = type metadata accessor for HAPControlSolver.Source(0);
  v54 = v254;
  sub_25237153C(v254 + *(v53 + 96), v42, &qword_27F4DAD50, &unk_2526A8D80);
  if ((*(v44 + 48))(v42, 1, v43) == 1)
  {
    v55 = &qword_27F4DAD50;
    v56 = &unk_2526A8D80;
    v57 = v42;
LABEL_4:
    sub_252372288(v57, v55, v56);
LABEL_7:
    a4 = v247;
LABEL_8:
    v59 = type metadata accessor for AccessoryControl(0);
    return (*(*(v59 - 8) + 56))(a4, 1, 1, v59);
  }

  v58 = v253;
  sub_2523AB840(v42, v253, type metadata accessor for MatterControlSolver.Source);
  if (*(v58 + *(v43 + 48)))
  {
    sub_2523AB744(v58, type metadata accessor for MatterControlSolver.Source);
    goto LABEL_7;
  }

  sub_25268F8B0();
  v62 = v251;
  v61 = v252;
  if ((*(v251 + 48))(v37, 1, v252) == 1)
  {
    sub_2523AB744(v58, type metadata accessor for MatterControlSolver.Source);
    v55 = &qword_27F4DB250;
    v56 = &unk_2526A2310;
    v57 = v37;
    goto LABEL_4;
  }

  v63 = v250;
  (*(v62 + 32))(v250, v37, v61);
  v255 = v249;
  StaticThermostatClusterGroup.autoClimateControlState(source:mode:)(v32, v256, v54, &v255);
  v206 = v256[0];
  v207 = v256[1];
  v208 = v256[3];
  v209 = v256[4];
  v210 = v256[5];
  v64 = v256[6];
  v65 = v32;
  v66 = v256[2];
  v67 = v248;
  sub_2523714D4(v65, v248, &qword_27F4DB2E8, &unk_2526960A0);
  v68 = v247;
  if (!v66)
  {
    goto LABEL_14;
  }

  v205 = v64;
  v69 = type metadata accessor for AccessoryControl.AutoClimateState(0);
  v70 = *(*(v69 - 1) + 48);
  if (v70(v67, 1, v69) || *&v67[v69[6] + 8] == 7 && *v67 == 2)
  {
    sub_2523A9B94(v206, v207, v66, v208, v209, v210, v205);
    v61 = v252;
    v63 = v250;
    v68 = v247;
LABEL_14:
    (*(v62 + 8))(v63, v61);
LABEL_15:
    sub_2523AB744(v253, type metadata accessor for MatterControlSolver.Source);
LABEL_16:
    v71 = type metadata accessor for AccessoryControl(0);
    (*(*(v71 - 8) + 56))(v68, 1, 1, v71);
    return sub_252372288(v67, &qword_27F4DB2E8, &unk_2526960A0);
  }

  v255 = v249;
  HAPControlSolver.Source.runningState(currentMode:)(&v255, v256);
  v67[v69[7]] = v256[0];
  if (!v70(v67, 1, v69))
  {
    v72 = sub_25268FD40();
    v73 = &v67[v69[8]];
    *v73 = v72;
    v73[8] = v74 & 1;
  }

  v75 = v70(v67, 1, v69);
  v76 = v246;
  if (v75 || (v77 = *v67, v77 == 2))
  {
    sub_2523A9B94(v206, v207, v66, v208, v209, v210, v205);
    (*(v62 + 8))(v250, v252);
    sub_2523AB744(v253, type metadata accessor for MatterControlSolver.Source);
    v78 = type metadata accessor for AccessoryControl(0);
    (*(*(v78 - 8) + 56))(v247, 1, 1, v78);
    return sub_252372288(v67, &qword_27F4DB2E8, &unk_2526960A0);
  }

  if (v77)
  {
    v241 = v69;
    v254 = v66;
    v79 = v233;
    sub_252690220();
    v80 = v244;
    sub_2526901B0();
    (*(v234 + 8))(v79, v235);
    v81 = v243;
    v82 = v242;
    v83 = v237;
    (*(v243 + 104))(v242, *MEMORY[0x277D16D98], v237);
    (*(v81 + 56))(v82, 0, 1, v83);
    v84 = *(v236 + 48);
    v85 = v80;
    v86 = v245;
    sub_25237153C(v85, v245, &qword_27F4DB340, &qword_2526954C8);
    sub_25237153C(v82, &v86[v84], &qword_27F4DB340, &qword_2526954C8);
    v87 = v81;
    v88 = v86;
    v89 = v83;
    v90 = *(v87 + 48);
    if (v90(v88, 1, v89) == 1)
    {
      sub_252372288(v82, &qword_27F4DB340, &qword_2526954C8);
      v91 = v245;
      sub_252372288(v244, &qword_27F4DB340, &qword_2526954C8);
      v92 = v90(&v91[v84], 1, v89);
      v93 = v251;
      v68 = v247;
      if (v92 == 1)
      {
        sub_252372288(v91, &qword_27F4DB340, &qword_2526954C8);
LABEL_47:
        sub_2523A9B94(v206, v207, v254, v208, v209, v210, v205);
        (*(v93 + 8))(v250, v252);
        goto LABEL_15;
      }
    }

    else
    {
      sub_25237153C(v88, v76, &qword_27F4DB340, &qword_2526954C8);
      v96 = v84;
      v97 = v90((v88 + v84), 1, v89);
      v68 = v247;
      if (v97 != 1)
      {
        v111 = v243;
        v112 = v88 + v96;
        v113 = v214;
        (*(v243 + 32))(v214, v112, v89);
        sub_2523AB7F8(&qword_27F4DB370, MEMORY[0x277D16DA8], MEMORY[0x277D16DB0]);
        LODWORD(v240) = sub_252692B70();
        v114 = *(v111 + 8);
        v114(v113, v89);
        sub_252372288(v242, &qword_27F4DB340, &qword_2526954C8);
        sub_252372288(v244, &qword_27F4DB340, &qword_2526954C8);
        v114(v76, v89);
        sub_252372288(v245, &qword_27F4DB340, &qword_2526954C8);
        v93 = v251;
        if (v240)
        {
          goto LABEL_47;
        }

LABEL_39:
        if (!v249)
        {
          goto LABEL_47;
        }

        v115 = StaticThermostatClusterGroup.autoClimateResumeOptions(with:)(v253);
        if (!v115)
        {
          goto LABEL_47;
        }

        v116 = v115;
        v117 = v224;
        v118 = (v224 + *(v225 + 28));
        v119 = type metadata accessor for IconDescriptor(0);
        v120 = *(v119 + 20);
        v121 = *MEMORY[0x277D16578];
        v122 = sub_25268F910();
        (*(*(v122 - 8) + 104))(&v118[v120], v121, v122);
        *v118 = 0xD00000000000001FLL;
        *(v118 + 1) = 0x80000002526ADFC0;
        v118[*(v119 + 24)] = 0;
        sub_2523AB320(v118, v117, type metadata accessor for IconDescriptor);
        v123 = v241;
        if (v70(v67, 1, v241))
        {
          goto LABEL_42;
        }

        v132 = v248[*(v123 + 28)];
        if (v132 > 1)
        {
          if (v132 == 2)
          {
            v124 = v116;
LABEL_43:
            v125 = sub_252692C40();
            v127 = v126;
            v128 = v241;
            if (v70(v248, 1, v241))
            {
LABEL_60:
              v129 = 0;
              v131 = 0;
              goto LABEL_61;
            }

            v129 = 0;
            v130 = v248[*(v128 + 28)];
            v131 = 0;
            if (v130 > 1)
            {
              if (v130 == 2)
              {
LABEL_55:
                sub_252692C40();
                if (v70(v248, 1, v241) || (v248[v241[8] + 8] & 1) != 0)
                {
                  goto LABEL_59;
                }

                v157 = &v248[v241[6]];
                v159 = *v157;
                v158 = *(v157 + 1);
                v160 = v157[16];
                if (v158 == 5)
                {
                  v245 = "gyResumeHighRatesDescription";
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB360, &qword_25269F600);
                  v192 = swift_allocObject();
                  *(v192 + 16) = xmmword_252694EA0;
                  v193 = sub_252692C10();
                  v195 = v194;
                  v246 = v159;
                  v249 = v160;
                  sub_25235E298(v159, 5uLL);

                  *(v192 + 56) = MEMORY[0x277D837D0];
                  v196 = sub_2523AB7A4();
                  *(v192 + 64) = v196;
                  *(v192 + 32) = v193;
                  *(v192 + 40) = v195;
                  v197 = v212;
                  v198 = v211;
                  v199 = v213;
                  (*(v212 + 104))(v211, *MEMORY[0x277D16048], v213);
                  v200 = sub_25268F2D0();
                  v244 = v201;
                  (*(v197 + 8))(v198, v199);
                  *(v192 + 96) = MEMORY[0x277D837D0];
                  *(v192 + 104) = v196;
                  v202 = v244;
                  *(v192 + 72) = v200;
                  *(v192 + 80) = v202;
                  v129 = sub_252692C60();
                  v131 = v203;
                  v190 = v246;
                  v191 = 5;
                }

                else
                {
                  if (v158 != 6)
                  {
LABEL_59:

                    goto LABEL_60;
                  }

                  v245 = "HFThermostatHeating";
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB360, &qword_25269F600);
                  v178 = swift_allocObject();
                  *(v178 + 16) = xmmword_252694EA0;
                  v179 = sub_252692C10();
                  v181 = v180;
                  v246 = v159;
                  v249 = v160;
                  sub_25235E298(v159, 6uLL);

                  *(v178 + 56) = MEMORY[0x277D837D0];
                  v182 = sub_2523AB7A4();
                  *(v178 + 64) = v182;
                  *(v178 + 32) = v179;
                  *(v178 + 40) = v181;
                  v183 = v212;
                  v184 = v211;
                  v185 = v213;
                  (*(v212 + 104))(v211, *MEMORY[0x277D16048], v213);
                  v186 = sub_25268F2D0();
                  v244 = v187;
                  (*(v183 + 8))(v184, v185);
                  *(v178 + 96) = MEMORY[0x277D837D0];
                  *(v178 + 104) = v182;
                  v188 = v244;
                  *(v178 + 72) = v186;
                  *(v178 + 80) = v188;
                  v129 = sub_252692C60();
                  v131 = v189;
                  v190 = v246;
                  v191 = 6;
                }

                sub_25235E2A8(v190, v191);
              }
            }

            else if (v248[*(v128 + 28)])
            {
              goto LABEL_55;
            }

LABEL_61:
            v161 = v224;
            v162 = v216;
            sub_25237153C(v224, v216, &qword_27F4DAD88, &unk_2526956E0);
            v163 = v215;
            v164 = (v162 + *(v215 + 20));
            *v164 = v125;
            v164[1] = v127;
            v165 = (v162 + *(v163 + 24));
            *v165 = v129;
            v165[1] = v131;
            *(v162 + *(v163 + 28)) = v124;
            v166 = v226;
            v167 = v250;
            sub_252690400();
            v168 = sub_25268E340();
            v169 = *(v228 + 8);
            v170 = v166;
            v171 = v229;
            v169(v170, v229);
            v172 = v227;
            sub_252690400();
            v173 = sub_25268E320();
            sub_2523A9B94(v206, v207, v254, v208, v209, v210, v205);
            v169(v172, v171);
            sub_252372288(v161, &qword_27F4DAD88, &unk_2526956E0);
            (*(v251 + 8))(v167, v252);
            sub_2523AB744(v253, type metadata accessor for MatterControlSolver.Source);
            v174 = v247;
            *v247 = v168;
            *(v174 + 4) = v173;
            type metadata accessor for AccessoryControl.ElementIdentifier(0);
            swift_storeEnumTagMultiPayload();
            v175 = type metadata accessor for AccessoryControl(0);
            sub_2523AB840(v162, v174 + v175[5], type metadata accessor for AccessoryControl.AutoClimateAlertViewConfig);
            type metadata accessor for AccessoryControl.State(0);
            swift_storeEnumTagMultiPayload();
            v176 = (v174 + v175[7]);
            v177 = v175[9];
            *(v174 + v177) = 16;
            *(v174 + v175[6]) = 0;
            *v176 = 0;
            v176[1] = 0;
            *(v174 + v175[8]) = 1028;
            *(v174 + v177) = 16;
            *(v174 + v175[10]) = 1;
            (*(*(v175 - 1) + 56))(v174, 0, 1, v175);
            return sub_252372288(v248, &qword_27F4DB2E8, &unk_2526960A0);
          }
        }

        else if (v248[*(v123 + 28)])
        {
          v124 = v116;
          goto LABEL_43;
        }

LABEL_42:
        v124 = v116;
        goto LABEL_43;
      }

      sub_252372288(v242, &qword_27F4DB340, &qword_2526954C8);
      v91 = v245;
      sub_252372288(v244, &qword_27F4DB340, &qword_2526954C8);
      (*(v243 + 8))(v76, v89);
      v93 = v251;
    }

    sub_252372288(v91, &qword_27F4DB338, &qword_2526954C0);
    goto LABEL_39;
  }

  v94 = v238;
  v95 = v250;
  StaticThermostatClusterGroup.autoClimateCurrentHoldOption()(v238);
  if ((*(v239 + 48))(v94, 1, v240) == 1)
  {
    sub_2523A9B94(v206, v207, v66, v208, v209, v210, v205);
    (*(v62 + 8))(v95, v252);
    sub_2523AB744(v253, type metadata accessor for MatterControlSolver.Source);
    sub_252372288(v94, &qword_27F4DB330, &qword_2526954B8);
    v68 = v247;
    goto LABEL_16;
  }

  sub_2523AB840(v94, v241, type metadata accessor for AccessoryControl.AutoClimateState.SetpointHold);
  v98 = StaticThermostatClusterGroup.autoClimateHoldOptions()();
  v68 = v247;
  if (!v98)
  {
    sub_2523A9B94(v206, v207, v66, v208, v209, v210, v205);
    sub_2523AB744(v241, type metadata accessor for AccessoryControl.AutoClimateState.SetpointHold);
    (*(v62 + 8))(v95, v252);
    goto LABEL_15;
  }

  v99 = v98;
  v254 = v66;
  v100 = v230;
  v101 = (v230 + *(v225 + 28));
  v102 = type metadata accessor for IconDescriptor(0);
  v103 = *(v102 + 20);
  v104 = *MEMORY[0x277D16578];
  v105 = sub_25268F910();
  v106 = v250;
  (*(*(v105 - 8) + 104))(&v101[v103], v104, v105);
  *v101 = 0xD000000000000020;
  *(v101 + 1) = 0x80000002526ADF70;
  v101[*(v102 + 24)] = 0;
  sub_2523AB320(v101, v100, type metadata accessor for IconDescriptor);
  v107 = v219;
  sub_25237153C(v100, v219, &qword_27F4DAD88, &unk_2526956E0);
  v108 = v106;
  StaticThermostatClusterGroup.activeHold.getter(v256);
  if (LOBYTE(v256[0]) == 2 || (v256[0] & 1) != 0)
  {
    v109 = 0;
    v110 = 0xE000000000000000;
  }

  else
  {
    v109 = sub_252692C40();
    v110 = v133;
  }

  v134 = v231;
  sub_2523714D4(v107, v231, &qword_27F4DAD88, &unk_2526956E0);
  v135 = v220;
  v136 = (v134 + *(v220 + 20));
  *v136 = v109;
  v136[1] = v110;
  *(v134 + *(v135 + 24)) = v99;
  v137 = v232;
  sub_2523AB320(v241, v232, type metadata accessor for AccessoryControl.AutoClimateState.SetpointHold);
  (*(v239 + 56))(v137, 0, 1, v240);
  v138 = v226;
  sub_252690400();
  v139 = sub_25268E340();
  v140 = *(v228 + 8);
  v141 = v138;
  v142 = v229;
  v140(v141, v229);
  v143 = v227;
  sub_252690400();
  v144 = sub_25268E320();
  v140(v143, v142);
  *v68 = v139;
  *(v68 + 4) = v144;
  type metadata accessor for AccessoryControl.ElementIdentifier(0);
  swift_storeEnumTagMultiPayload();
  v145 = type metadata accessor for AccessoryControl(0);
  v146 = v68 + v145[5];
  v147 = (v146 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB348, &qword_2526A6A30) + 48));
  sub_2523AB320(v134, v146, type metadata accessor for AccessoryControl.AutoClimatePickerViewConfig);
  v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB350, &qword_2526A6350);
  v149 = *(v148 + 40);
  sub_2523AB320(v232, v147 + v149, type metadata accessor for AccessoryControl.AutoClimatePickerState);
  (*(v221 + 56))(v147 + v149, 0, 1, v222);
  sub_2523AB320(v223, v147 + *(v148 + 36), type metadata accessor for AccessoryControl.ValueDestination);
  v150 = v253;
  v151 = v218;
  sub_2523AB320(v253, v218, type metadata accessor for MatterControlSolver.Source);
  v152 = (*(v44 + 80) + 16) & ~*(v44 + 80);
  v153 = swift_allocObject();
  sub_2523AB840(v151, v153 + v152, type metadata accessor for MatterControlSolver.Source);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB358, &qword_2526954D0);
  v154 = swift_allocObject();
  *(v154 + 16) = xmmword_252694E90;
  *(v154 + 32) = sub_2523AB680;
  *(v154 + 40) = v153;
  sub_2523A9B94(v206, v207, v254, v208, v209, v210, v205);
  sub_2523AB744(v232, type metadata accessor for AccessoryControl.AutoClimatePickerState);
  sub_2523AB744(v231, type metadata accessor for AccessoryControl.AutoClimatePickerViewConfig);
  sub_252372288(v230, &qword_27F4DAD88, &unk_2526956E0);
  sub_2523AB744(v241, type metadata accessor for AccessoryControl.AutoClimateState.SetpointHold);
  (*(v251 + 8))(v108, v252);
  sub_2523AB744(v150, type metadata accessor for MatterControlSolver.Source);
  *v147 = v154;
  type metadata accessor for AccessoryControl.State(0);
  swift_storeEnumTagMultiPayload();
  v155 = (v68 + v145[7]);
  v156 = v145[9];
  *(v68 + v156) = 16;
  *(v68 + v145[6]) = 0;
  *v155 = 0;
  v155[1] = 0;
  *(v68 + v145[8]) = 1028;
  *(v68 + v156) = 16;
  *(v68 + v145[10]) = 1;
  (*(*(v145 - 1) + 56))(v68, 0, 1, v145);
  return sub_252372288(v248, &qword_27F4DB2E8, &unk_2526960A0);
}

uint64_t sub_2523A74C0@<X0>(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v97 = a3;
  v105 = a1;
  v96 = sub_25268E350();
  v95 = *(v96 - 8);
  MEMORY[0x28223BE20](v96);
  v94 = &v83[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v92 = &v83[-v8];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB2E8, &unk_2526960A0);
  MEMORY[0x28223BE20](v9 - 8);
  v98 = &v83[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v11);
  v100 = &v83[-v12];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB250, &unk_2526A2310);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v83[-v14];
  v16 = sub_252690490();
  v102 = *(v16 - 8);
  v103 = v16;
  MEMORY[0x28223BE20](v16);
  v101 = &v83[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD50, &unk_2526A8D80);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v83[-v19];
  v21 = type metadata accessor for MatterControlSolver.Source(0);
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  v93 = &v83[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v24);
  v104 = &v83[-v25];
  v26 = sub_25268E060();
  v27 = *(v26 - 8);
  v28 = MEMORY[0x28223BE20](v26);
  v30 = &v83[-((v29 + 15) & 0xFFFFFFFFFFFFFFF0)];
  LODWORD(v99) = *a2;
  (*(v27 + 104))(v30, *MEMORY[0x277D15280], v26, v28);
  sub_2523AB7F8(&qword_27F4DB268, MEMORY[0x277D15298], MEMORY[0x277D15270]);
  LOBYTE(a2) = sub_25268DB80();
  (*(v27 + 8))(v30, v26);
  v31 = a4;
  if ((a2 & 1) == 0)
  {
    goto LABEL_7;
  }

  v32 = type metadata accessor for HAPControlSolver.Source(0);
  sub_25237153C(v105 + *(v32 + 96), v20, &qword_27F4DAD50, &unk_2526A8D80);
  if ((*(v22 + 48))(v20, 1, v21) == 1)
  {
    v33 = &qword_27F4DAD50;
    v34 = &unk_2526A8D80;
    v35 = v20;
LABEL_4:
    sub_252372288(v35, v33, v34);
LABEL_7:
    v38 = type metadata accessor for AccessoryControl(0);
    return (*(*(v38 - 8) + 56))(a4, 1, 1, v38);
  }

  v36 = v20;
  v37 = v104;
  sub_2523AB840(v36, v104, type metadata accessor for MatterControlSolver.Source);
  if (v37[*(v21 + 48)])
  {
LABEL_6:
    sub_2523AB744(v37, type metadata accessor for MatterControlSolver.Source);
    goto LABEL_7;
  }

  v91 = v22;
  sub_25268F8B0();
  v41 = v102;
  v40 = v103;
  if ((*(v102 + 48))(v15, 1, v103) == 1)
  {
    sub_2523AB744(v37, type metadata accessor for MatterControlSolver.Source);
    v33 = &qword_27F4DB250;
    v34 = &unk_2526A2310;
    v35 = v15;
    goto LABEL_4;
  }

  v42 = v101;
  (*(v41 + 32))(v101, v15, v40);
  if ((sub_252690260() & 1) == 0)
  {
    (*(v41 + 8))(v42, v40);
    goto LABEL_6;
  }

  v106[0] = v99;
  v43 = v98;
  StaticThermostatClusterGroup.autoClimateControlState(source:mode:)(v98, &v111, v105, v106);
  v88 = v111;
  v89 = v112;
  v44 = v113;
  v86 = v114;
  v87 = v115;
  v90 = v116;
  v45 = v117;
  v46 = v43;
  v47 = v100;
  sub_2523714D4(v46, v100, &qword_27F4DB2E8, &unk_2526960A0);
  if (!v44)
  {
    goto LABEL_15;
  }

  v48 = v44;
  v98 = v45;
  v110 = v90 & 1;
  v49 = type metadata accessor for AccessoryControl.AutoClimateState(0);
  v50 = *(*(v49 - 1) + 48);
  if (v50(v47, 1, v49))
  {
    v51 = v88;
    v52 = v89;
    v53 = v48;
    v54 = v86;
    v55 = v87;
    v56 = v90;
LABEL_14:
    sub_2523A9B94(v51, v52, v53, v54, v55, v56, v98);
    v42 = v101;
    v37 = v104;
LABEL_15:
    (*(v41 + 8))(v42, v40);
    sub_2523AB744(v37, type metadata accessor for MatterControlSolver.Source);
    v57 = type metadata accessor for AccessoryControl(0);
    (*(*(v57 - 8) + 56))(v31, 1, 1, v57);
    return sub_252372288(v47, &qword_27F4DB2E8, &unk_2526960A0);
  }

  v56 = v90;
  v55 = v87;
  v54 = v86;
  v52 = v89;
  if (*&v47[v49[6] + 8] == 7 && *v47 == 2)
  {
    v51 = v88;
    v53 = v48;
    goto LABEL_14;
  }

  v85 = v31;
  v107 = v99;
  v84 = (v90 >> 8) & 1;
  v111 = v88;
  v112 = v89;
  v113 = v48;
  v114 = v86;
  v115 = v87;
  v116 = v90;
  v117 = v98;
  v58 = v47;
  v59 = v86;
  v99 = v48;
  sub_2523A9C08(&v111, v106);
  HAPControlSolver.Source.runningState(currentMode:)(&v107, v106);
  v58[v49[7]] = v106[0];
  if (!v50(v58, 1, v49))
  {
    v60 = sub_25268FD40();
    v61 = &v58[v49[8]];
    *v61 = v60;
    v61[8] = v62 & 1;
  }

  v63 = v92;
  sub_252690400();
  v64 = sub_25268E340();
  v65 = *(v95 + 8);
  v66 = v96;
  v65(v63, v96);
  v67 = v94;
  sub_252690400();
  LOWORD(v63) = sub_25268E320();
  v65(v67, v66);
  v68 = v85;
  *v85 = v64;
  *(v68 + 4) = v63;
  type metadata accessor for AccessoryControl.ElementIdentifier(0);
  swift_storeEnumTagMultiPayload();
  v69 = type metadata accessor for AccessoryControl(0);
  v70 = v68 + v69[5];
  v71 = &v70[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB2F0, &unk_2526959D0) + 48)];
  v72 = v89;
  *v70 = v88;
  *(v70 + 1) = v72;
  *(v70 + 2) = v99;
  *(v70 + 3) = v59;
  v73 = v87;
  *(v70 + 4) = v87;
  v70[40] = v110;
  v70[41] = v84;
  *(v70 + 42) = v108;
  *(v70 + 23) = v109;
  v74 = v98;
  *(v70 + 6) = v98;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB2F8, &unk_252695980);
  sub_25237153C(v100, v71 + *(v75 + 40), &qword_27F4DB2E8, &unk_2526960A0);
  sub_2523AB320(v97, v71 + *(v75 + 36), type metadata accessor for AccessoryControl.ValueDestination);
  v76 = v104;
  v77 = v93;
  sub_2523AB320(v104, v93, type metadata accessor for MatterControlSolver.Source);
  v78 = (*(v91 + 80) + 16) & ~*(v91 + 80);
  v79 = swift_allocObject();
  sub_2523AB840(v77, v79 + v78, type metadata accessor for MatterControlSolver.Source);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB048, &qword_252695040);
  v80 = swift_allocObject();
  *(v80 + 16) = xmmword_252694E90;
  *(v80 + 32) = sub_2523AA0C4;
  *(v80 + 40) = v79;
  sub_2523A9B94(v88, v89, v99, v86, v73, v90, v74);
  (*(v102 + 8))(v101, v103);
  sub_2523AB744(v76, type metadata accessor for MatterControlSolver.Source);
  *v71 = v80;
  type metadata accessor for AccessoryControl.State(0);
  swift_storeEnumTagMultiPayload();
  v81 = (v68 + v69[7]);
  v82 = v69[9];
  *(v68 + v82) = 16;
  *(v68 + v69[6]) = 0;
  *v81 = 0;
  v81[1] = 0;
  *(v68 + v69[8]) = 1028;
  *(v68 + v82) = 16;
  *(v68 + v69[10]) = 1;
  (*(*(v69 - 1) + 56))(v68, 0, 1, v69);
  return sub_252372288(v100, &qword_27F4DB2E8, &unk_2526960A0);
}

uint64_t sub_2523A80F0@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v50 = a1;
  v46 = sub_252690200();
  v45 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v44 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB250, &unk_2526A2310);
  MEMORY[0x28223BE20](v6 - 8);
  v47 = &v43 - v7;
  v49 = sub_252690490();
  v48 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v43 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD50, &unk_2526A8D80);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v43 - v10;
  v12 = type metadata accessor for MatterControlSolver.Source(0);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_25268E060();
  v17 = *(v16 - 8);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v43 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 104))(v20, *MEMORY[0x277D15280], v16, v18);
  sub_2523AB7F8(&qword_27F4DB268, MEMORY[0x277D15298], MEMORY[0x277D15270]);
  v21 = sub_25268DB80();
  (*(v17 + 8))(v20, v16);
  if ((v21 & 1) == 0)
  {
    goto LABEL_7;
  }

  v22 = type metadata accessor for HAPControlSolver.Source(0);
  sub_25237153C(v50 + *(v22 + 96), v11, &qword_27F4DAD50, &unk_2526A8D80);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    v23 = &qword_27F4DAD50;
    v24 = &unk_2526A8D80;
    v25 = v11;
LABEL_6:
    sub_252372288(v25, v23, v24);
LABEL_7:
    v29 = a2[4];
    v30 = a2[5];
    v57 = v29;
    v58 = v30;
    v31 = *(a2 + 48);
    v59 = v31;
    v32 = *a2;
    v33 = a2[1];
    v53 = *a2;
    v54 = v33;
    v35 = a2[2];
    v34 = a2[3];
    v55 = v35;
    v56 = v34;
    goto LABEL_8;
  }

  sub_2523AB840(v11, v15, type metadata accessor for MatterControlSolver.Source);
  v26 = v47;
  sub_25268F8B0();
  v27 = v48;
  v28 = v49;
  if ((*(v48 + 48))(v26, 1, v49) == 1)
  {
    sub_2523AB744(v15, type metadata accessor for MatterControlSolver.Source);
    v23 = &qword_27F4DB250;
    v24 = &unk_2526A2310;
    v25 = v26;
    goto LABEL_6;
  }

  v37 = v43;
  (*(v27 + 32))(v43, v26, v28);
  v38 = v44;
  sub_252690220();
  v39 = sub_2526901C0();
  v41 = v40;
  (*(v45 + 8))(v38, v46);
  *(a2 + 11) = v39;
  *(a2 + 96) = v41 & 1;
  StaticThermostatClusterGroup.activeHold.getter(&v51);
  (*(v27 + 8))(v37, v28);
  sub_2523AB744(v15, type metadata accessor for MatterControlSolver.Source);
  if (v51 == 2)
  {
    v42 = 2;
  }

  else
  {
    v42 = v51 & 1;
  }

  *(a2 + 97) = v42;
  v29 = a2[4];
  v30 = a2[5];
  v57 = v29;
  v58 = v30;
  v32 = *a2;
  v33 = a2[1];
  v53 = *a2;
  v54 = v33;
  v35 = a2[2];
  v34 = a2[3];
  v55 = v35;
  v56 = v34;
  v31 = *(a2 + 48);
  v59 = v31;
LABEL_8:
  *a3 = v32;
  *(a3 + 16) = v33;
  *(a3 + 32) = v35;
  *(a3 + 48) = v34;
  *(a3 + 64) = v29;
  *(a3 + 80) = v30;
  *(a3 + 96) = v31;
  return sub_252385F5C(&v53, v52);
}

uint64_t sub_2523A86B4@<X0>(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X2>, __int128 *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v122 = a5;
  v125 = a4;
  v117 = a3;
  v140 = a1;
  v139 = type metadata accessor for HAPControlSolver.Source(0);
  v116 = *(v139 - 8);
  MEMORY[0x28223BE20](v139);
  v118 = v8;
  v119 = &v111 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v129 = sub_25268DA10();
  v121 = *(v129 - 8);
  MEMORY[0x28223BE20](v129);
  v128 = &v111 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v133 = type metadata accessor for AccessoryControl.ThermostatState(0);
  v131 = *(v133 - 8);
  MEMORY[0x28223BE20](v133);
  v126 = &v111 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB258, &unk_252696090);
  MEMORY[0x28223BE20](v11 - 8);
  v123 = &v111 - v12;
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB248, &qword_252695270);
  MEMORY[0x28223BE20](v130);
  v127 = &v111 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v124 = &v111 - v15;
  MEMORY[0x28223BE20](v16);
  v134 = &v111 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB120, &qword_2526956F0);
  MEMORY[0x28223BE20](v18 - 8);
  v120 = &v111 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v132 = &v111 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB250, &unk_2526A2310);
  MEMORY[0x28223BE20](v22 - 8);
  v24 = &v111 - v23;
  v25 = sub_252690490();
  v136 = *(v25 - 8);
  v137 = v25;
  MEMORY[0x28223BE20](v25);
  v135 = &v111 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD50, &unk_2526A8D80);
  MEMORY[0x28223BE20](v27 - 8);
  v29 = &v111 - v28;
  v30 = type metadata accessor for MatterControlSolver.Source(0);
  v31 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v138 = &v111 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_25268E060();
  v34 = *(v33 - 8);
  v35 = MEMORY[0x28223BE20](v33);
  v37 = &v111 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = *a2;
  (*(v34 + 104))(v37, *MEMORY[0x277D15280], v33, v35);
  sub_2523AB7F8(&qword_27F4DB268, MEMORY[0x277D15298], MEMORY[0x277D15270]);
  LOBYTE(a2) = sub_25268DB80();
  (*(v34 + 8))(v37, v33);
  if ((a2 & 1) == 0)
  {
    goto LABEL_17;
  }

  v114 = a6;
  v38 = v140;
  sub_25237153C(v140 + *(v139 + 96), v29, &qword_27F4DAD50, &unk_2526A8D80);
  if ((*(v31 + 48))(v29, 1, v30) == 1)
  {
    sub_252372288(v29, &qword_27F4DAD50, &unk_2526A8D80);
LABEL_16:
    a6 = v114;
LABEL_17:
    v71 = type metadata accessor for AccessoryControl(0);
    return (*(*(v71 - 8) + 56))(a6, 1, 1, v71);
  }

  v39 = v138;
  sub_2523AB840(v29, v138, type metadata accessor for MatterControlSolver.Source);
  sub_25268F8B0();
  v41 = v136;
  v40 = v137;
  if ((*(v136 + 48))(v24, 1, v137) == 1)
  {
    sub_2523AB744(v39, type metadata accessor for MatterControlSolver.Source);
    sub_252372288(v24, &qword_27F4DB250, &unk_2526A2310);
    goto LABEL_16;
  }

  v42 = v135;
  (*(v41 + 32))(v135, v24, v40);
  if ((sub_252690260() & 1) == 0)
  {
    (*(v41 + 8))(v42, v40);
    sub_2523AB744(v39, type metadata accessor for MatterControlSolver.Source);
    goto LABEL_16;
  }

  v43 = type metadata accessor for AccessoryControl(0);
  v44 = *(v43 - 8);
  v112 = *(v44 + 56);
  v113 = v43;
  v111 = v44 + 56;
  v112(v132, 1, 1);
  v45 = v122;
  v46 = v133;
  v139 = *(v131 + 48);
  if (!(v139)(v122, 1, v133))
  {
    LOBYTE(v149[0]) = v115;
    HAPControlSolver.Source.runningState(currentMode:)(v149, &v151);
    *(v45 + *(v46 + 44)) = v151;
  }

  v47 = v130;
  v48 = *(v130 + 48);
  v49 = v123;
  sub_25237153C(v45, v123, &qword_27F4DB258, &unk_252696090);
  v50 = v125;
  v51 = v125[3];
  v52 = v125[5];
  v146 = v125[4];
  v147 = v52;
  v53 = v125[1];
  v143[0] = *v125;
  v143[1] = v53;
  v54 = v125[3];
  v56 = *v125;
  v55 = v125[1];
  v144 = v125[2];
  v145 = v54;
  v57 = v125[5];
  v155 = v146;
  v156 = v57;
  v151 = v56;
  v152 = v55;
  v148 = *(v125 + 48);
  v157 = *(v125 + 48);
  v153 = v144;
  v154 = v51;
  sub_252385F5C(v143, v149);
  v58 = v134;
  StaticThermostatClusterGroup.thermostatControlState(for:config:source:)(v134, (v134 + v48), v49, &v151, v38);
  v149[4] = v155;
  v149[5] = v156;
  v150 = v157;
  v149[0] = v151;
  v149[1] = v152;
  v149[2] = v153;
  v149[3] = v154;
  sub_252385F08(v149);
  sub_252372288(v49, &qword_27F4DB258, &unk_252696090);
  v59 = v124;
  sub_25237153C(v58, v124, &qword_27F4DB248, &qword_252695270);
  v60 = v59 + *(v47 + 48);
  v61 = *(v60 + 80);
  v155 = *(v60 + 64);
  v156 = v61;
  v157 = *(v60 + 96);
  v62 = *(v60 + 16);
  v151 = *v60;
  v152 = v62;
  v63 = *(v60 + 48);
  v153 = *(v60 + 32);
  v154 = v63;
  sub_252385F08(&v151);
  if ((v139)(v59, 1, v133) == 1)
  {
    sub_252372288(v59, &qword_27F4DB258, &unk_252696090);
    if (qword_27F4DABD8 != -1)
    {
      swift_once();
    }

    v64 = sub_2526905A0();
    __swift_project_value_buffer(v64, qword_27F4E4B30);
    v65 = sub_252690580();
    v66 = sub_252692EF0();
    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      *&v141[0] = v68;
      *v67 = 136315394;
      *(v67 + 4) = sub_2525BDA90(0xD000000000000049, 0x80000002526ADED0, v141);
      *(v67 + 12) = 2080;
      *(v67 + 14) = sub_2525BDA90(0xD000000000000045, 0x80000002526ADF20, v141);
      _os_log_impl(&dword_252309000, v65, v66, "%s - %s: Failed to update thermostat state because no new state was returned.", v67, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2530A5A40](v68, -1, -1);
      MEMORY[0x2530A5A40](v67, -1, -1);
    }

    sub_252372288(v134, &qword_27F4DB248, &qword_252695270);
    (*(v41 + 8))(v135, v40);
    sub_2523AB744(v138, type metadata accessor for MatterControlSolver.Source);
    v69 = v114;
    v70 = v132;
  }

  else
  {
    sub_2523AB840(v59, v126, type metadata accessor for AccessoryControl.ThermostatState);
    v73 = v50[5];
    v141[4] = v50[4];
    v141[5] = v73;
    v142 = *(v50 + 48);
    v74 = v50[1];
    v141[0] = *v50;
    v141[1] = v74;
    v75 = v50[3];
    v141[2] = v50[2];
    v141[3] = v75;
    v76 = sub_2525B545C();
    v78 = v77;
    v79 = sub_2525B5C0C();
    v81 = v80;
    if (qword_27F4DABD8 != -1)
    {
      swift_once();
    }

    v82 = sub_2526905A0();
    __swift_project_value_buffer(v82, qword_27F4E4B30);

    v83 = sub_252690580();
    v84 = sub_252692ED0();

    if (os_log_type_enabled(v83, v84))
    {
      v85 = swift_slowAlloc();
      v86 = swift_slowAlloc();
      *&v141[0] = v86;
      *v85 = 136315906;
      *(v85 + 4) = sub_2525BDA90(0xD000000000000049, 0x80000002526ADED0, v141);
      *(v85 + 12) = 2080;
      *(v85 + 14) = sub_2525BDA90(0xD000000000000045, 0x80000002526ADF20, v141);
      *(v85 + 22) = 2080;
      v87 = sub_2525BDA90(v79, v81, v141);

      *(v85 + 24) = v87;
      *(v85 + 32) = 2080;
      v88 = sub_2525BDA90(v76, v78, v141);

      *(v85 + 34) = v88;
      _os_log_impl(&dword_252309000, v83, v84, "%s - %s: Applying new thermostat state: %s and config: %s.", v85, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x2530A5A40](v86, -1, -1);
      MEMORY[0x2530A5A40](v85, -1, -1);
    }

    else
    {
    }

    v89 = v140;
    v90 = v121;
    (*(v121 + 16))(v128, v140, v129);
    v91 = v113;
    v92 = v120;
    v93 = &v120[v113[5]];
    v94 = &v93[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB270, &unk_2526959F0) + 48)];
    v95 = v127;
    sub_25237153C(v134, v127, &qword_27F4DB248, &qword_252695270);
    v96 = v95 + *(v130 + 48);
    v97 = *(v96 + 80);
    *(v93 + 4) = *(v96 + 64);
    *(v93 + 5) = v97;
    *(v93 + 48) = *(v96 + 96);
    v98 = *(v96 + 16);
    *v93 = *v96;
    *(v93 + 1) = v98;
    v99 = *(v96 + 48);
    *(v93 + 2) = *(v96 + 32);
    *(v93 + 3) = v99;
    v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB278, &unk_2526959A0);
    v101 = *(v100 + 40);
    v102 = v126;
    sub_2523AB320(v126, v94 + v101, type metadata accessor for AccessoryControl.ThermostatState);
    (*(v131 + 56))(v94 + v101, 0, 1, v133);
    sub_2523AB320(v117, v94 + *(v100 + 36), type metadata accessor for AccessoryControl.ValueDestination);
    v103 = v89;
    v104 = v119;
    sub_2523AB320(v103, v119, type metadata accessor for HAPControlSolver.Source);
    v105 = (*(v116 + 80) + 16) & ~*(v116 + 80);
    v106 = swift_allocObject();
    sub_2523AB840(v104, v106 + v105, type metadata accessor for HAPControlSolver.Source);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB030, &qword_252695028);
    v107 = swift_allocObject();
    *(v107 + 16) = xmmword_252694E90;
    *(v107 + 32) = sub_2523AB2F4;
    *(v107 + 40) = v106;
    sub_2523AB744(v102, type metadata accessor for AccessoryControl.ThermostatState);
    sub_252372288(v134, &qword_27F4DB248, &qword_252695270);
    v108 = v132;
    sub_252372288(v132, &qword_27F4DB120, &qword_2526956F0);
    (*(v136 + 8))(v135, v137);
    sub_2523AB744(v138, type metadata accessor for MatterControlSolver.Source);
    *v94 = v107;
    type metadata accessor for AccessoryControl.State(0);
    swift_storeEnumTagMultiPayload();
    (*(v90 + 32))(v92, v128, v129);
    type metadata accessor for AccessoryControl.ElementIdentifier(0);
    swift_storeEnumTagMultiPayload();
    v109 = (v92 + v91[7]);
    v110 = v91[9];
    *(v92 + v110) = 16;
    *(v92 + v91[6]) = 0;
    *v109 = 0;
    v109[1] = 0;
    *(v92 + v91[8]) = 1028;
    *(v92 + v110) = 16;
    *(v92 + v91[10]) = 1;
    sub_252372288(v127, &qword_27F4DB258, &unk_252696090);
    (v112)(v92, 0, 1, v91);
    sub_2523714D4(v92, v108, &qword_27F4DB120, &qword_2526956F0);
    v69 = v114;
    v70 = v108;
  }

  return sub_2523714D4(v70, v69, &qword_27F4DB120, &qword_2526956F0);
}

uint64_t sub_2523A9758@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB210, &unk_2526951B0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = (&v31 - v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB258, &unk_252696090);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v31 - v10;
  v12 = type metadata accessor for AccessoryControl.ThermostatState(0);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25237153C(a1, v11, &qword_27F4DB258, &unk_252696090);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_252372288(v11, &qword_27F4DB258, &unk_252696090);
    if (qword_27F4DA998 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for AccessoryControl.WriteSpecification(0);
    v17 = __swift_project_value_buffer(v16, qword_27F4DB8A0);
    return sub_2523AB320(v17, a3, type metadata accessor for AccessoryControl.WriteSpecification);
  }

  else
  {
    sub_2523AB840(v11, v15, type metadata accessor for AccessoryControl.ThermostatState);
    v19 = sub_2523A4180(v15);
    v20 = type metadata accessor for AccessoryControl.HAPWriteSpecification(0);
    v21 = *(v20 + 24);
    v22 = sub_25268F140();
    (*(*(v22 - 8) + 56))(v8 + v21, 1, 1, v22);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAF58, &qword_2526951D0);
    v23 = sub_25268DA10();
    v24 = *(v23 - 8);
    v25 = (*(v24 + 80) + 32) & ~*(v24 + 80);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_252694E90;
    (*(v24 + 16))(v26 + v25, a2, v23);
    v27 = sub_25240C1FC(v26);
    swift_setDeallocating();
    (*(v24 + 8))(v26 + v25, v23);
    swift_deallocClassInstance();
    v28 = sub_2523F75C4(v19);

    *v8 = v28;
    v8[1] = 0;
    *(v8 + *(v20 + 28)) = v27;
    v29 = *(*(v20 - 8) + 56);
    v29(v8, 0, 1, v20);
    sub_2523AB744(v15, type metadata accessor for AccessoryControl.ThermostatState);
    v29(a3, 1, 1, v20);
    v30 = *(type metadata accessor for AccessoryControl.WriteSpecification(0) + 20);
    *(a3 + v30) = 0;
    sub_2523795D4(v8, a3);

    *(a3 + v30) = 0;
  }

  return result;
}

void sub_2523A9B94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a3)
  {

    sub_2523A9BF8(a7);
  }
}

uint64_t sub_2523A9BF8(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t sub_2523A9C64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v30 = a2;
  v31 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB300, &unk_2526960C0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v29 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB210, &unk_2526951B0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v29 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB2E8, &unk_2526960A0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v29 - v14;
  v16 = type metadata accessor for AccessoryControl.AutoClimateState(0);
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v29 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25237153C(a1, v15, &qword_27F4DB2E8, &unk_2526960A0);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    sub_252372288(v15, &qword_27F4DB2E8, &unk_2526960A0);
    if (qword_27F4DA998 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for AccessoryControl.WriteSpecification(0);
    v21 = __swift_project_value_buffer(v20, qword_27F4DB8A0);
    return sub_2523AB320(v21, v31, type metadata accessor for AccessoryControl.WriteSpecification);
  }

  else
  {
    sub_2523AB840(v15, v19, type metadata accessor for AccessoryControl.AutoClimateState);
    v23 = type metadata accessor for AccessoryControl.HAPWriteSpecification(0);
    v24 = *(*(v23 - 8) + 56);
    v24(v12, 1, 1, v23);
    sub_25237153C(&v19[*(v16 + 20)], v9, &qword_27F4DB300, &unk_2526960C0);
    v25 = type metadata accessor for AccessoryControl.AutoClimateState.AutoClimateHold(0);
    if ((*(*(v25 - 8) + 48))(v9, 1, v25) == 1)
    {
      sub_2523AB744(v19, type metadata accessor for AccessoryControl.AutoClimateState);
      v32 = 0;
    }

    else
    {
      sub_25237153C(v9, v6, &qword_27F4DB300, &unk_2526960C0);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_2523AAE14(v19, v30, &v32);
      }

      else
      {
        sub_2523AA8DC(v19, v30, &v32);
      }

      sub_2523AB744(v19, type metadata accessor for AccessoryControl.AutoClimateState);
      sub_2523AB744(v6, type metadata accessor for AccessoryControl.AutoClimateState.AutoClimateHold);
    }

    sub_252372288(v9, &qword_27F4DB300, &unk_2526960C0);
    v27 = v31;
    v26 = v32;
    v24(v31, 1, 1, v23);
    v28 = *(type metadata accessor for AccessoryControl.WriteSpecification(0) + 20);
    *(v27 + v28) = 0;
    sub_2523795D4(v12, v27);

    *(v27 + v28) = v26;
  }

  return result;
}

uint64_t sub_2523AA0F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB210, &unk_2526951B0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v23 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB378, &qword_2526954D8);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v23 - v10;
  v12 = type metadata accessor for AccessoryControl.AutoClimatePickerState(0);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25237153C(a1, v11, &qword_27F4DB378, &qword_2526954D8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_252372288(v11, &qword_27F4DB378, &qword_2526954D8);
    if (qword_27F4DA998 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for AccessoryControl.WriteSpecification(0);
    v17 = __swift_project_value_buffer(v16, qword_27F4DB8A0);
    return sub_2523AB320(v17, a3, type metadata accessor for AccessoryControl.WriteSpecification);
  }

  else
  {
    sub_2523AB840(v11, v15, type metadata accessor for AccessoryControl.AutoClimatePickerState);
    v19 = type metadata accessor for AccessoryControl.HAPWriteSpecification(0);
    v20 = *(*(v19 - 8) + 56);
    v20(v8, 1, 1, v19);
    sub_2523AA3E4(v15, a2, &v24);
    sub_2523AB744(v15, type metadata accessor for AccessoryControl.AutoClimatePickerState);
    v21 = v24;
    v20(a3, 1, 1, v19);
    v22 = *(type metadata accessor for AccessoryControl.WriteSpecification(0) + 20);
    *&a3[v22] = 0;
    sub_2523795D4(v8, a3);

    *&a3[v22] = v21;
  }

  return result;
}

uint64_t sub_2523AA3E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = sub_252690430();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB330, &qword_2526954B8);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v36 - v14;
  sub_252690470();
  sub_25237153C(a1, v15, &qword_27F4DB330, &qword_2526954B8);
  v16 = type metadata accessor for AccessoryControl.AutoClimateState.SetpointHold(0);
  if ((*(*(v16 - 8) + 48))(v15, 1, v16) == 1)
  {
    *a3 = 0;
    return sub_252372288(v15, &qword_27F4DB330, &qword_2526954B8);
  }

  else
  {
    sub_25237153C(v15, v12, &qword_27F4DB330, &qword_2526954B8);
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB308, &unk_252699490);
    v19 = (*(*(v18 - 8) + 48))(v12, 3, v18);
    v37 = a2;
    if (v19 > 1)
    {
      v20 = 0;
      v24 = 1;
      v25 = v19 == 2;
    }

    else if (v19)
    {
      v20 = 0;
      v25 = 0;
      v24 = 1;
    }

    else
    {
      v20 = *v12;
      v21 = *(v18 + 48);
      v22 = *(v18 + 64);
      v23 = sub_25268DB10();
      (*(*(v23 - 8) + 8))(&v12[v22], v23);
      sub_252372288(&v12[v21], &qword_27F4DB2D8, &qword_252696D10);
      v24 = 0;
      v25 = 0;
    }

    sub_252372288(v15, &qword_27F4DB330, &qword_2526954B8);
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB310, &qword_2526954A8);
    v27 = *(v26 + 48);
    v28 = &v9[*(v26 + 64)];
    sub_252690390();
    v9[v27] = v25;
    *v28 = v20;
    v28[8] = v24;
    (*(v7 + 104))(v9, *MEMORY[0x277D16DE0], v6);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAE80, &unk_2526956C0);
    v29 = swift_allocObject();
    v36 = xmmword_252694E90;
    *(v29 + 16) = xmmword_252694E90;
    *(v29 + 56) = v6;
    *(v29 + 64) = sub_2523AB7F8(&qword_27F4DB318, MEMORY[0x277D16DF8], MEMORY[0x277D16DF0]);
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v29 + 32));
    (*(v7 + 16))(boxed_opaque_existential_0, v9, v6);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB320, &qword_2526954B0);
    v31 = sub_25268E710();
    v32 = *(v31 - 8);
    v33 = (*(v32 + 80) + 32) & ~*(v32 + 80);
    v34 = swift_allocObject();
    *(v34 + 16) = v36;
    (*(v32 + 16))(v34 + v33, v37, v31);
    v35 = sub_25240C51C(v34);
    swift_setDeallocating();
    (*(v32 + 8))(v34 + v33, v31);
    swift_deallocClassInstance();
    sub_2523F648C(v29, v35, &v38);
    result = (*(v7 + 8))(v9, v6);
    *a3 = v38;
  }

  return result;
}

uint64_t sub_2523AA8DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = sub_252690430();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB300, &unk_2526960C0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v37 - v14;
  sub_252690470();
  v16 = type metadata accessor for AccessoryControl.AutoClimateState(0);
  sub_25237153C(a1 + *(v16 + 20), v15, &qword_27F4DB300, &unk_2526960C0);
  v17 = type metadata accessor for AccessoryControl.AutoClimateState.AutoClimateHold(0);
  if ((*(*(v17 - 8) + 48))(v15, 1, v17) == 1)
  {
    goto LABEL_4;
  }

  sub_25237153C(v15, v12, &qword_27F4DB300, &unk_2526960C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2523AB744(v12, type metadata accessor for AccessoryControl.AutoClimateState.AutoClimateHold);
LABEL_4:
    *a3 = 0;
    return sub_252372288(v15, &qword_27F4DB300, &unk_2526960C0);
  }

  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB308, &unk_252699490);
  v20 = (*(*(v19 - 8) + 48))(v12, 3, v19);
  v38 = a2;
  if (v20 > 1)
  {
    v21 = 0;
    v25 = 1;
    v26 = v20 == 2;
  }

  else if (v20)
  {
    v21 = 0;
    v26 = 0;
    v25 = 1;
  }

  else
  {
    v21 = *v12;
    v22 = *(v19 + 48);
    v23 = *(v19 + 64);
    v24 = sub_25268DB10();
    (*(*(v24 - 8) + 8))(&v12[v23], v24);
    sub_252372288(&v12[v22], &qword_27F4DB2D8, &qword_252696D10);
    v25 = 0;
    v26 = 0;
  }

  sub_252372288(v15, &qword_27F4DB300, &unk_2526960C0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB310, &qword_2526954A8);
  v28 = *(v27 + 48);
  v29 = &v9[*(v27 + 64)];
  sub_252690390();
  v9[v28] = v26;
  *v29 = v21;
  v29[8] = v25;
  (*(v7 + 104))(v9, *MEMORY[0x277D16DE0], v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAE80, &unk_2526956C0);
  v30 = swift_allocObject();
  v37 = xmmword_252694E90;
  *(v30 + 16) = xmmword_252694E90;
  *(v30 + 56) = v6;
  *(v30 + 64) = sub_2523AB7F8(&qword_27F4DB318, MEMORY[0x277D16DF8], MEMORY[0x277D16DF0]);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v30 + 32));
  (*(v7 + 16))(boxed_opaque_existential_0, v9, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB320, &qword_2526954B0);
  v32 = sub_25268E710();
  v33 = *(v32 - 8);
  v34 = (*(v33 + 80) + 32) & ~*(v33 + 80);
  v35 = swift_allocObject();
  *(v35 + 16) = v37;
  (*(v33 + 16))(v35 + v34, v38, v32);
  v36 = sub_25240C51C(v35);
  swift_setDeallocating();
  (*(v33 + 8))(v35 + v34, v32);
  swift_deallocClassInstance();
  sub_2523F648C(v30, v36, &v39);
  result = (*(v7 + 8))(v9, v6);
  *a3 = v39;
  return result;
}

uint64_t sub_2523AAE14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = sub_252690430();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB300, &unk_2526960C0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v32 - v14;
  v16 = type metadata accessor for AccessoryControl.AutoClimateState(0);
  sub_25237153C(a1 + *(v16 + 20), v15, &qword_27F4DB300, &unk_2526960C0);
  v17 = type metadata accessor for AccessoryControl.AutoClimateState.AutoClimateHold(0);
  if ((*(*(v17 - 8) + 48))(v15, 1, v17) == 1)
  {
    goto LABEL_7;
  }

  sub_25237153C(v15, v12, &qword_27F4DB300, &unk_2526960C0);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_2523AB744(v12, type metadata accessor for AccessoryControl.AutoClimateState.AutoClimateHold);
LABEL_7:
    *a3 = 0;
    return sub_252372288(v15, &qword_27F4DB300, &unk_2526960C0);
  }

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB328, &unk_252696040);
  v19 = (*(*(v18 - 8) + 48))(v12, 1, v18);
  if (v19 != 1)
  {
    v20 = *(v18 + 48);
    v21 = *(v18 + 64);
    v22 = sub_25268DB10();
    (*(*(v22 - 8) + 8))(&v12[v21], v22);
    v23 = sub_25268D990();
    (*(*(v23 - 8) + 8))(&v12[v20], v23);
  }

  sub_252372288(v15, &qword_27F4DB300, &unk_2526960C0);
  *v9 = v19 == 1;
  (*(v7 + 104))(v9, *MEMORY[0x277D16DE8], v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAE80, &unk_2526956C0);
  v24 = swift_allocObject();
  v32 = xmmword_252694E90;
  *(v24 + 16) = xmmword_252694E90;
  *(v24 + 56) = v6;
  *(v24 + 64) = sub_2523AB7F8(&qword_27F4DB318, MEMORY[0x277D16DF8], MEMORY[0x277D16DF0]);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v24 + 32));
  (*(v7 + 16))(boxed_opaque_existential_0, v9, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB320, &qword_2526954B0);
  v26 = sub_25268E710();
  v27 = *(v26 - 8);
  v28 = (*(v27 + 80) + 32) & ~*(v27 + 80);
  v29 = swift_allocObject();
  *(v29 + 16) = v32;
  (*(v27 + 16))(v29 + v28, a2, v26);
  v30 = sub_25240C51C(v29);
  swift_setDeallocating();
  (*(v27 + 8))(v29 + v28, v26);
  swift_deallocClassInstance();
  sub_2523F648C(v24, v30, &v33);
  result = (*(v7 + 8))(v9, v6);
  *a3 = v33;
  return result;
}

uint64_t sub_2523AB320(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t objectdestroyTm_0()
{
  v1 = type metadata accessor for MatterControlSolver.Source(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  v6 = sub_25268E710();
  (*(*(v6 - 8) + 8))(v0 + v3, v6);
  v7 = *(type metadata accessor for MatterControlSolver.SourcePath(0) + 20);
  v8 = sub_25268E310();
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(v0 + v3 + v7, 1, v8))
  {
    (*(v9 + 8))(v5 + v7, v8);
  }

  v10 = v1[6];
  v11 = sub_25268F130();
  v12 = *(v11 - 8);
  if (!(*(v12 + 48))(v5 + v10, 1, v11))
  {
    (*(v12 + 8))(v5 + v10, v11);
  }

  v13 = v1[8];
  v14 = sub_25268F8E0();
  (*(*(v14 - 8) + 8))(v5 + v13, v14);
  v15 = v1[11];
  v16 = sub_25268EDA0();
  v17 = *(v16 - 8);
  if (!(*(v17 + 48))(v5 + v15, 1, v16))
  {
    (*(v17 + 8))(v5 + v15, v16);
  }

  v18 = v1[13];
  v19 = sub_25268E2F0();
  (*(*(v19 - 8) + 8))(v5 + v18, v19);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_2523AB6AC(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t, uint64_t))
{
  v5 = *(a2(0) - 8);
  v6 = v3 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return a3(a1, v6);
}

uint64_t sub_2523AB744(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_2523AB7A4()
{
  result = qword_27F4DB368;
  if (!qword_27F4DB368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DB368);
  }

  return result;
}

uint64_t sub_2523AB7F8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2523AB840(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2523AB8AC(uint64_t (*a1)(uint64_t, uint64_t, uint64_t), uint64_t a2)
{
  v4 = type metadata accessor for AccessoryControlModule(0);
  v5 = *(v4 - 1);
  MEMORY[0x28223BE20](v4);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB288, &qword_2526952B8);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v30 - v9;
  v11 = type metadata accessor for AccessoryControlModule.Layout.Thermostat(0);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + *(type metadata accessor for AccessoryControlSolver.Context(0) + 20)))
  {
    v15 = sub_25239F980(a1, a2);
    v16 = sub_25268DA10();
    (*(*(v16 - 8) + 16))(v7, a1, v16);
    type metadata accessor for AccessoryControl.ElementIdentifier(0);
    swift_storeEnumTagMultiPayload();
    v17 = &v7[v4[5]];
    v18 = &v7[v4[7]];
    *v18 = 0;
    *(v18 + 1) = 0;
    *&v7[v4[6]] = v15;
    type metadata accessor for AccessoryControlModule.Layout(0);
    swift_storeEnumTagMultiPayload();
    *v17 = 0;
    *(v17 + 1) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD60, &qword_252694EB0);
    v19 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_252694E90;
    sub_2523ACC18(v7, v20 + v19, type metadata accessor for AccessoryControlModule);
  }

  else
  {
    sub_2523ABD3C(a1, a2, v10);
    if ((*(v12 + 48))(v10, 1, v11) == 1)
    {
      sub_252372288(v10, &qword_27F4DB288, &qword_2526952B8);
      return MEMORY[0x277D84F90];
    }

    else
    {
      sub_2523ACC18(v10, v14, type metadata accessor for AccessoryControlModule.Layout.Thermostat);
      v21 = sub_25268DA10();
      (*(*(v21 - 8) + 16))(v7, a1, v21);
      type metadata accessor for AccessoryControl.ElementIdentifier(0);
      swift_storeEnumTagMultiPayload();
      v22 = (a1 + *(type metadata accessor for HAPControlSolver.Source(0) + 28));
      v24 = *v22;
      v23 = v22[1];
      v25 = &v7[v4[5]];
      v26 = &v7[v4[7]];
      *v26 = 0;
      *(v26 + 1) = 0;
      v27 = v4[6];
      *&v7[v27] = MEMORY[0x277D84F90];
      type metadata accessor for AccessoryControlModule.Layout(0);
      swift_storeEnumTagMultiPayload();
      *v25 = v24;
      *(v25 + 1) = v23;

      sub_2523872B4(&v7[v27], type metadata accessor for AccessoryControlModule.Layout);
      sub_2523ACC80(v14, &v7[v27], type metadata accessor for AccessoryControlModule.Layout.Thermostat);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD60, &qword_252694EB0);
      v28 = (*(v5 + 80) + 32) & ~*(v5 + 80);
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_252694E90;
      sub_2523ACC18(v7, v20 + v28, type metadata accessor for AccessoryControlModule);
      sub_2523872B4(v14, type metadata accessor for AccessoryControlModule.Layout.Thermostat);
    }
  }

  return v20;
}

uint64_t sub_2523ABD3C@<X0>(uint64_t (*a1)(uint64_t, uint64_t, uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v137 = a3;
  v138 = a1;
  v130 = type metadata accessor for HAPControlSolver.Source(0);
  v108 = *(v130 - 8);
  MEMORY[0x28223BE20](v130);
  v109 = v4;
  v110 = &v105[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v122 = sub_25268DA10();
  v112 = *(v122 - 8);
  MEMORY[0x28223BE20](v122);
  v121 = &v105[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB120, &qword_2526956F0);
  MEMORY[0x28223BE20](v6 - 8);
  v116 = &v105[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v124 = &v105[-v9];
  v10 = sub_25268F4D0();
  v11 = *(v10 - 8);
  v12 = v11;
  MEMORY[0x28223BE20](v10);
  v113 = &v105[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB258, &unk_252696090);
  MEMORY[0x28223BE20](v14 - 8);
  v132 = &v105[-v15];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB260, &qword_252695278);
  MEMORY[0x28223BE20](v16 - 8);
  v129 = &v105[-v17];
  v18 = sub_252690030();
  v135 = *(v18 - 8);
  v136 = v18;
  MEMORY[0x28223BE20](v18);
  v131 = &v105[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v117 = type metadata accessor for AccessoryControl(0);
  v115 = *(v117 - 8);
  MEMORY[0x28223BE20](v117);
  v119 = &v105[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v21);
  v118 = &v105[-v22];
  MEMORY[0x28223BE20](v23);
  v120 = &v105[-v24];
  v25 = type metadata accessor for AccessoryControl.ValueDestination(0);
  MEMORY[0x28223BE20](v25 - 8);
  v27 = &v105[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v123 = a2;
  sub_2523ACC80(a2, v27, type metadata accessor for AccessoryControl.ValueDestination);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB238, &qword_2526951F8);
  v29 = *(v11 + 72);
  v30 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v126 = v30 + 2 * v29;
  v127 = v28;
  v31 = swift_allocObject();
  v125 = xmmword_252694EA0;
  *(v31 + 16) = xmmword_252694EA0;
  v32 = *MEMORY[0x277D16298];
  v114 = v12;
  v33 = *(v12 + 104);
  v33(v31 + v30, v32, v10);
  v34 = *MEMORY[0x277D161B0];
  v128 = v29;
  v133 = v33;
  v33(v31 + v30 + v29, v34, v10);
  v35 = sub_25240BD30(v31);
  swift_setDeallocating();
  v134 = v10;
  swift_arrayDestroy();
  swift_deallocClassInstance();
  LOBYTE(v31) = HAPControlSolver.Source.has(characteristicKinds:)(v35);

  if ((v31 & 1) == 0)
  {
    v45 = v27;
LABEL_20:
    sub_2523872B4(v45, type metadata accessor for AccessoryControl.ValueDestination);
    v59 = type metadata accessor for AccessoryControlModule.Layout.Thermostat(0);
    return (*(*(v59 - 8) + 56))(v137, 1, 1, v59);
  }

  v111 = v27;
  v36 = sub_2523A4E14();
  if (!v36)
  {
LABEL_19:
    v45 = v111;
    goto LABEL_20;
  }

  v37 = v36;
  v38 = sub_25240D50C(3u, v36);
  v39 = MEMORY[0x277D16180];
  v107 = v37;
  if (v38)
  {
    v40 = swift_allocObject();
    *(v40 + 16) = v125;
    v42 = v133;
    v41 = v134;
    v133(v40 + v30, *v39, v134);
    v42(v40 + v30 + v128, *MEMORY[0x277D16170], v41);
    v43 = sub_25240BD30(v40);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v44 = HAPControlSolver.Source.has(characteristicKinds:)(v43);
    v37 = v107;
    v106 = v44;
  }

  else
  {
    v106 = 0;
  }

  v46 = v136;
  if (sub_25240D50C(3u, v37))
  {
    v47 = swift_allocObject();
    *(v47 + 16) = v125;
    v48 = v133;
    v49 = v134;
    v133(v47 + v30, *MEMORY[0x277D16180], v134);
    v48(v47 + v30 + v128, *MEMORY[0x277D16170], v49);
    v50 = sub_25240BD30(v47);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v51 = v138;
    LOBYTE(v47) = HAPControlSolver.Source.has(characteristicKinds:)(v50);

    v52 = v47 ^ 1;
  }

  else
  {
    v52 = 0;
    v51 = v138;
  }

  v53 = v132;
  v54 = v129;
  v55 = sub_25268FDF0();
  if (v56)
  {
    v57 = 4;
    v58 = v135;
  }

  else
  {
    v58 = v135;
    if ((v52 & (v55 == 3)) != 0)
    {
      v57 = 3;
    }

    else
    {
      v57 = 0;
      if ((v55 != 3) | v106 & 1 && v55 < 4)
      {
        v57 = 0x3010200u >> (8 * v55);
      }
    }
  }

  LOBYTE(v143[0]) = v57;
  sub_2523A13FC(v51, v143, v54);
  if ((*(v58 + 48))(v54, 1, v46) == 1)
  {

    sub_252372288(v54, &qword_27F4DB260, &qword_252695278);
    goto LABEL_19;
  }

  (*(v58 + 32))(v131, v54, v46);
  LODWORD(v132) = v57;
  LOBYTE(v143[0]) = v57;
  sub_2523A2858(v143, v52 & 1, v53);
  sub_252690000();
  v62 = v61;
  sub_25268FFF0();
  v64 = v63;
  sub_252690020();
  v66 = v65;
  v67 = v113;
  v68 = v134;
  v133(v113, *MEMORY[0x277D16280], v134);
  v69 = sub_25268FEA0();
  v71 = v70;
  (*(v114 + 8))(v67, v68);
  v72 = sub_25268FD50();
  v74 = v73;
  v75 = sub_25268FD90();
  LOBYTE(v76) = 3;
  v77 = v111;
  if ((v78 & 1) == 0)
  {
    if (v75 >= 3)
    {
      v104 = v75;
      type metadata accessor for HMCharacteristicValueCurrentHeatingCooling(0);
      *&v143[0] = v104;
      result = sub_2526933C0();
      __break(1u);
      return result;
    }

    v76 = 0x10200u >> (8 * v75);
  }

  *&v145 = v62;
  *(&v145 + 1) = v64;
  *&v146 = v66;
  BYTE8(v146) = 3;
  *&v147 = 1;
  BYTE8(v147) = 1;
  *&v148 = v69;
  BYTE8(v148) = v71 & 1;
  *&v149 = v72;
  BYTE8(v149) = v74 & 1;
  BYTE9(v149) = v76;
  v150 = 0uLL;
  v151 = 513;
  v79 = v138;
  sub_2523A80F0(v138, &v145, v143);
  v141[4] = v149;
  v141[5] = v150;
  v142 = v151;
  v141[0] = v145;
  v141[1] = v146;
  v141[2] = v147;
  v141[3] = v148;
  sub_252385F08(v141);
  v149 = v143[4];
  v150 = v143[5];
  v151 = v144;
  v145 = v143[0];
  v146 = v143[1];
  v147 = v143[2];
  v148 = v143[3];
  LOBYTE(v139[0]) = v132;
  v80 = v124;
  sub_2523A86B4(v79, v139, v77, &v145, v53, v124);
  v81 = v116;
  sub_25237153C(v80, v116, &qword_27F4DB120, &qword_2526956F0);
  v82 = v117;
  if ((*(v115 + 48))(v81, 1, v117) == 1)
  {
    sub_252372288(v81, &qword_27F4DB120, &qword_2526956F0);
    v83 = v112;
    (*(v112 + 16))(v121, v79, v122);
    v84 = v119;
    v85 = &v119[v82[5]];
    v86 = &v85[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB270, &unk_2526959F0) + 48)];
    v87 = v150;
    *(v85 + 4) = v149;
    *(v85 + 5) = v87;
    *(v85 + 48) = v151;
    v88 = v146;
    *v85 = v145;
    *(v85 + 1) = v88;
    v89 = v148;
    *(v85 + 2) = v147;
    *(v85 + 3) = v89;
    v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB278, &unk_2526959A0);
    sub_25237153C(v53, v86 + *(v90 + 40), &qword_27F4DB258, &unk_252696090);
    sub_2523ACC80(v77, v86 + *(v90 + 36), type metadata accessor for AccessoryControl.ValueDestination);
    v91 = v82;
    v92 = v110;
    sub_2523ACC80(v138, v110, type metadata accessor for HAPControlSolver.Source);
    v93 = (*(v108 + 80) + 16) & ~*(v108 + 80);
    v94 = swift_allocObject();
    sub_2523ACC18(v92, v94 + v93, type metadata accessor for HAPControlSolver.Source);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB030, &qword_252695028);
    v95 = swift_allocObject();
    *(v95 + 16) = xmmword_252694E90;
    *(v95 + 32) = sub_2523A531C;
    *(v95 + 40) = v94;
    sub_252372288(v124, &qword_27F4DB120, &qword_2526956F0);
    v79 = v138;
    sub_252372288(v53, &qword_27F4DB258, &unk_252696090);
    (*(v135 + 8))(v131, v136);
    *v86 = v95;
    v77 = v111;
    type metadata accessor for AccessoryControl.State(0);
    swift_storeEnumTagMultiPayload();
    (*(v83 + 32))(v84, v121, v122);
    type metadata accessor for AccessoryControl.ElementIdentifier(0);
    swift_storeEnumTagMultiPayload();
    v96 = &v84[v91[7]];
    v97 = v91[9];
    v84[v97] = 16;
    v84[v91[6]] = 0;
    *v96 = 0;
    v96[1] = 0;
    *&v84[v91[8]] = 1028;
    v84[v97] = 16;
    v84[v91[10]] = 1;
  }

  else
  {
    sub_252372288(v80, &qword_27F4DB120, &qword_2526956F0);
    sub_252372288(v53, &qword_27F4DB258, &unk_252696090);
    (*(v135 + 8))(v131, v136);
    v139[4] = v149;
    v139[5] = v150;
    v140 = v151;
    v139[0] = v145;
    v139[1] = v146;
    v139[2] = v147;
    v139[3] = v148;
    sub_252385F08(v139);
    v84 = v119;
    sub_2523ACC18(v81, v119, type metadata accessor for AccessoryControl);
  }

  v98 = v137;
  v99 = v118;
  sub_2523ACC18(v84, v118, type metadata accessor for AccessoryControl);
  v100 = v99;
  v101 = v120;
  sub_2523ACC18(v100, v120, type metadata accessor for AccessoryControl);
  sub_2523ACC80(v101, v98, type metadata accessor for AccessoryControl);
  v102 = type metadata accessor for AccessoryControlModule.Layout.Thermostat(0);
  v103 = v132;
  sub_2523A30F0(v79, v107, v123, v132, v77, v98 + *(v102 + 20));

  LOBYTE(v139[0]) = v103;
  sub_2523A74C0(v79, v139, v77, (v98 + *(v102 + 24)));
  sub_2523872B4(v101, type metadata accessor for AccessoryControl);
  sub_2523872B4(v77, type metadata accessor for AccessoryControl.ValueDestination);
  return (*(*(v102 - 8) + 56))(v98, 0, 1, v102);
}

uint64_t sub_2523ACC18(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2523ACC80(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2523ACCF8@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB210, &unk_2526951B0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = (&v32 - v7);
  if (*(a1 + 4) == 1)
  {
    if (qword_27F4DA998 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for AccessoryControl.WriteSpecification(0);
    v10 = __swift_project_value_buffer(v9, qword_27F4DB8A0);
    return sub_2523AFAA0(v10, a3, type metadata accessor for AccessoryControl.WriteSpecification);
  }

  else
  {
    v12 = *a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB220, &unk_2526951C0);
    v13 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB228, &qword_2526A92D0) - 8);
    v14 = (*(*v13 + 80) + 32) & ~*(*v13 + 80);
    v15 = swift_allocObject();
    v32 = xmmword_252694E90;
    *(v15 + 16) = xmmword_252694E90;
    v16 = v15 + v14;
    v17 = v16 + v13[14];
    v18 = *MEMORY[0x277D16330];
    v19 = sub_25268F4D0();
    (*(*(v19 - 8) + 104))(v16, v18, v19);
    *(v17 + 24) = MEMORY[0x277D839B0];
    *v17 = v12 & 1;
    v20 = sub_25256E63C(v15);
    swift_setDeallocating();
    sub_252372288(v16, &qword_27F4DB228, &qword_2526A92D0);
    swift_deallocClassInstance();
    v21 = type metadata accessor for AccessoryControl.HAPWriteSpecification(0);
    v22 = *(v21 + 24);
    v23 = sub_25268F140();
    (*(*(v23 - 8) + 56))(v8 + v22, 1, 1, v23);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAF58, &qword_2526951D0);
    v24 = sub_25268DA10();
    v25 = *(v24 - 8);
    v26 = (*(v25 + 80) + 32) & ~*(v25 + 80);
    v27 = swift_allocObject();
    *(v27 + 16) = v32;
    (*(v25 + 16))(v27 + v26, a2, v24);
    v28 = sub_25240C1FC(v27);
    swift_setDeallocating();
    (*(v25 + 8))(v27 + v26, v24);
    swift_deallocClassInstance();
    v29 = sub_2523F75C4(v20);

    *v8 = v29;
    v8[1] = 0;
    *(v8 + *(v21 + 28)) = v28;
    v30 = *(*(v21 - 8) + 56);
    v30(v8, 0, 1, v21);
    v30(a3, 1, 1, v21);
    v31 = *(type metadata accessor for AccessoryControl.WriteSpecification(0) + 20);
    *(a3 + v31) = 0;
    sub_252377048(v8, a3, &qword_27F4DB210, &unk_2526951B0);

    *(a3 + v31) = 0;
  }

  return result;
}

uint64_t sub_2523AD134(uint64_t *a1)
{
  v2 = sub_25268F4D0();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *a1;
  (*(v3 + 104))(v6, *MEMORY[0x277D160E0], v2, v4);
  type metadata accessor for HAPControlSolver.Source(0);
  v8 = sub_25268FE60();
  LODWORD(a1) = v9;
  (*(v3 + 8))(v6, v2);
  return (v7 == v8) & ~a1;
}

uint64_t sub_2523AD264@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB210, &unk_2526951B0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = (&v32 - v7);
  if (*(a1 + 8) == 1)
  {
    if (qword_27F4DA998 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for AccessoryControl.WriteSpecification(0);
    v10 = __swift_project_value_buffer(v9, qword_27F4DB8A0);
    return sub_2523AFAA0(v10, a3, type metadata accessor for AccessoryControl.WriteSpecification);
  }

  else
  {
    v12 = *a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB220, &unk_2526951C0);
    v13 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB228, &qword_2526A92D0) - 8);
    v14 = (*(*v13 + 80) + 32) & ~*(*v13 + 80);
    v15 = swift_allocObject();
    v32 = xmmword_252694E90;
    *(v15 + 16) = xmmword_252694E90;
    v16 = v15 + v14;
    v17 = (v16 + v13[14]);
    v18 = *MEMORY[0x277D160E0];
    v19 = sub_25268F4D0();
    (*(*(v19 - 8) + 104))(v16, v18, v19);
    v17[3] = MEMORY[0x277D83B88];
    *v17 = v12;
    v20 = sub_25256E63C(v15);
    swift_setDeallocating();
    sub_252372288(v16, &qword_27F4DB228, &qword_2526A92D0);
    swift_deallocClassInstance();
    v21 = type metadata accessor for AccessoryControl.HAPWriteSpecification(0);
    v22 = *(v21 + 24);
    v23 = sub_25268F140();
    (*(*(v23 - 8) + 56))(v8 + v22, 1, 1, v23);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAF58, &qword_2526951D0);
    v24 = sub_25268DA10();
    v25 = *(v24 - 8);
    v26 = (*(v25 + 80) + 32) & ~*(v25 + 80);
    v27 = swift_allocObject();
    *(v27 + 16) = v32;
    (*(v25 + 16))(v27 + v26, a2, v24);
    v28 = sub_25240C1FC(v27);
    swift_setDeallocating();
    (*(v25 + 8))(v27 + v26, v24);
    swift_deallocClassInstance();
    v29 = sub_2523F75C4(v20);

    *v8 = v29;
    v8[1] = 0;
    *(v8 + *(v21 + 28)) = v28;
    v30 = *(*(v21 - 8) + 56);
    v30(v8, 0, 1, v21);
    v30(a3, 1, 1, v21);
    v31 = *(type metadata accessor for AccessoryControl.WriteSpecification(0) + 20);
    *(a3 + v31) = 0;
    sub_252377048(v8, a3, &qword_27F4DB210, &unk_2526951B0);

    *(a3 + v31) = 0;
  }

  return result;
}

uint64_t sub_2523AD6A0(char *a1, uint64_t a2)
{
  v243 = type metadata accessor for AccessoryControlGroup(0);
  v244 = *(v243 - 8);
  MEMORY[0x28223BE20](v243);
  v245 = &v223 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DADB8, &qword_2526A6E60);
  MEMORY[0x28223BE20](v5 - 8);
  v236 = &v223 - v6;
  v232 = type metadata accessor for AccessoryControl.PickerViewConfig(0);
  MEMORY[0x28223BE20](v232);
  v234 = &v223 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB230, &unk_2526A9010);
  MEMORY[0x28223BE20](v8 - 8);
  v256 = &v223 - v9;
  v242 = sub_25268FFD0();
  v241 = *(v242 - 8);
  MEMORY[0x28223BE20](v242);
  v240 = &v223 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for HAPControlSolver.Source(0);
  v254 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v255 = v12;
  v258 = &v223 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v261 = sub_25268DA10();
  v260 = *(v261 - 8);
  MEMORY[0x28223BE20](v261);
  v267 = &v223 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v259 = type metadata accessor for AccessoryControl(0);
  MEMORY[0x28223BE20](v259);
  v233 = &v223 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v263 = &v223 - v16;
  v252 = sub_25268E2E0();
  v250 = *(v252 - 8);
  MEMORY[0x28223BE20](v252);
  v249 = &v223 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v248 = &v223 - v19;
  v262 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD88, &unk_2526956E0);
  v238 = *(v262 - 8);
  MEMORY[0x28223BE20](v262);
  v265 = &v223 - v20;
  v247 = type metadata accessor for ControlTextModifier.Config(0);
  MEMORY[0x28223BE20](v247);
  *&v273 = &v223 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v257 = type metadata accessor for AccessoryControl.StatusProvider(0);
  MEMORY[0x28223BE20](v257);
  v235 = &v223 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v246 = &v223 - v24;
  MEMORY[0x28223BE20](v25);
  v272 = &v223 - v26;
  v251 = type metadata accessor for AccessoryControl.BinaryViewConfig(0);
  MEMORY[0x28223BE20](v251);
  v266 = &v223 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v264 = &v223 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB208, &unk_252695180);
  MEMORY[0x28223BE20](v30 - 8);
  v231 = &v223 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v237 = (&v223 - v33);
  MEMORY[0x28223BE20](v34);
  v253 = &v223 - v35;
  MEMORY[0x28223BE20](v36);
  v38 = &v223 - v37;
  v39 = sub_25268F9E0();
  v40 = *(v39 - 8);
  v274 = v39;
  v275 = v40;
  MEMORY[0x28223BE20](v39);
  v239 = &v223 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v42);
  v271 = &v223 - v43;
  v44 = sub_25268F4D0();
  v45 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v277 = &v223 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_25268E530();
  v48 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v50 = &v223 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = type metadata accessor for AccessoryControl.ValueDestination(0);
  MEMORY[0x28223BE20](v51 - 8);
  v276 = &v223 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2523AFAA0(a2, v276, type metadata accessor for AccessoryControl.ValueDestination);
  (*(v48 + 104))(v50, *MEMORY[0x277D15850], v47);
  sub_252376EA8(&qword_27F4DADD8, MEMORY[0x277D158E0], MEMORY[0x277D158F8]);
  v278 = a1;
  sub_252692D40();
  sub_252692D40();
  if (v280 == v279)
  {
    (*(v48 + 8))(v50, v47);

    v54 = v277;
    v53 = v278;
  }

  else
  {
    v55 = sub_2526933B0();
    (*(v48 + 8))(v50, v47);

    v54 = v277;
    v53 = v278;
    if ((v55 & 1) == 0)
    {
LABEL_8:
      sub_2523AFA40(v276, type metadata accessor for AccessoryControl.ValueDestination);
      return MEMORY[0x277D84F90];
    }
  }

  v56 = v45 + 104;
  v57 = *(v45 + 104);
  (v57)(v54, *MEMORY[0x277D160F8], v44);
  v269 = *(v11 + 76);
  v58 = sub_25268FE70();
  v60 = *(v45 + 8);
  v59 = v45 + 8;
  v270 = v60;
  v60(v54, v44);
  if (v58 != 2 && (v58 & 1) == 0)
  {
    goto LABEL_8;
  }

  v268 = v11;
  (v57)(v54, *MEMORY[0x277D16330], v44);
  sub_25268FD80();
  v270(v54, v44);
  v61 = v274;
  v62 = v275;
  v63 = (v275 + 6);
  v230 = v275[6];
  if (v230(v38, 1, v274) == 1)
  {
    sub_252372288(v38, &qword_27F4DB208, &unk_252695180);
    goto LABEL_8;
  }

  v225 = v63;
  v65 = v62[4];
  v224 = v62 + 4;
  v223 = v65;
  v65(v271, v38, v61);
  v66 = sub_25268FE80();
  v67 = v246;
  *v246 = v66;
  swift_storeEnumTagMultiPayload();
  v68 = &v53[v268[11]];
  v69 = *(v68 + 1);
  v229 = v44;
  v228 = v59;
  v226 = v56;
  v227 = v57;
  if (v69)
  {
    v70 = *v68;

    sub_2523AFA40(v67, type metadata accessor for AccessoryControl.StatusProvider);
    v71 = v272;
    *v272 = v70;
    *(v71 + 8) = v69;
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    sub_2523AF938(v67, v272, type metadata accessor for AccessoryControl.StatusProvider);
  }

  v72 = v265;
  swift_storeEnumTagMultiPayload();
  v73 = v248;
  sub_25268E250();
  v247 = sub_25268E2D0();
  v75 = v74;
  v76 = *(v250 + 8);
  v77 = v252;
  v76(v73, v252);
  v78 = v249;
  sub_25268E250();
  v79 = type metadata accessor for IconDescriptor(0);
  sub_25268E2C0();
  v76(v78, v77);
  *v72 = v247;
  v72[1] = v75;
  *(v72 + *(v79 + 24)) = 0;
  sub_25268E260();
  v250 = sub_25268E2D0();
  v81 = v80;
  v76(v73, v77);
  sub_25268E260();
  v82 = (v72 + *(v262 + 28));
  sub_25268E2C0();
  v76(v78, v77);
  *v82 = v250;
  v82[1] = v81;
  *(v82 + *(v79 + 24)) = 0;
  v83 = v268;
  v248 = v268[6];
  v84 = sub_25268E510();
  v85 = v266;
  sub_2523800AC(v72, v266);
  v86 = v251;
  sub_2523AFAA0(v273, v85 + *(v251 + 24), type metadata accessor for ControlTextModifier.Config);
  v87 = &v278[v83[7]];
  v88 = *v87;
  v89 = *(v87 + 1);
  sub_2523AFAA0(v272, v85 + v86[11], type metadata accessor for AccessoryControl.StatusProvider);
  v90 = v85 + v86[7];
  *v90 = 0u;
  *(v90 + 16) = 0u;
  *(v90 + 32) = -1;
  v91 = v85 + v86[8];
  *v91 = 0u;
  *(v91 + 16) = 0u;
  *(v91 + 32) = -1;
  v252 = v86[12];
  *(v85 + v86[5]) = v84;
  v92 = (v85 + v86[10]);
  v249 = v88;
  *v92 = v88;
  v92[1] = v89;
  v93 = *v90;
  v94 = *(v90 + 8);
  v95 = *(v90 + 16);
  v96 = *(v90 + 24);
  LOBYTE(v79) = *(v90 + 32);
  v250 = v89;

  v97 = v278;
  sub_252376DA8(v93, v94, v95, v96, v79);
  *v90 = 0u;
  *(v90 + 16) = 0u;
  *(v90 + 32) = -1;
  sub_252376DA8(*v91, *(v91 + 8), *(v91 + 16), *(v91 + 24), *(v91 + 32));
  *v91 = 0u;
  *(v91 + 16) = 0u;
  *(v91 + 32) = -1;
  *(v85 + v252) = 0;
  *(v85 + v86[9]) = 0;
  if (v97[v268[10]] == 1)
  {
    v98 = v277;
    sub_25268F9A0();
    v99 = sub_25268FE70();
    v270(v98, v229);
    sub_252372288(v265, &qword_27F4DAD88, &unk_2526956E0);
    sub_2523AFA40(v273, type metadata accessor for ControlTextModifier.Config);
    sub_2523AFA40(v272, type metadata accessor for AccessoryControl.StatusProvider);
    v272 = v99 & 1;
    *&v273 = 0;
    v265 = 1;
    v100 = v263;
    v101 = v264;
  }

  else
  {
    sub_252372288(v265, &qword_27F4DAD88, &unk_2526956E0);
    sub_2523AFA40(v273, type metadata accessor for ControlTextModifier.Config);
    sub_2523AFA40(v272, type metadata accessor for AccessoryControl.StatusProvider);
    v265 = 0;
    v272 = 0;
    *&v273 = 1;
    v100 = v263;
    v101 = v264;
    v98 = v277;
  }

  sub_2523AF938(v266, v101, type metadata accessor for AccessoryControl.BinaryViewConfig);
  sub_25268F9B0();
  v102 = v259;
  v103 = v100 + *(v259 + 20);
  v104 = (v103 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DADC8, &qword_252695A20) + 48));
  sub_2523AFAA0(v101, v103, type metadata accessor for AccessoryControl.BinaryViewConfig);
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD80, &unk_2526951A0);
  sub_2523AFAA0(v276, v104 + *(v105 + 36), type metadata accessor for AccessoryControl.ValueDestination);
  v106 = v258;
  sub_2523AFAA0(v97, v258, type metadata accessor for HAPControlSolver.Source);
  v107 = (*(v254 + 80) + 16) & ~*(v254 + 80);
  v108 = v107 + v255;
  v255 = *(v254 + 80);
  v254 = v108;
  v109 = swift_allocObject();
  v266 = v107;
  sub_2523AF938(v106, v109 + v107, type metadata accessor for HAPControlSolver.Source);
  v110 = (v104 + *(v105 + 40));
  *v110 = v272;
  v110[1] = 0;
  v110[2] = v265;
  v110[3] = 0;
  v110[4] = v273;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB018, &qword_252695018);
  v111 = swift_allocObject();
  v273 = xmmword_252694E90;
  *(v111 + 16) = xmmword_252694E90;
  *(v111 + 32) = sub_2523AF8B8;
  *(v111 + 40) = v109;
  *v104 = v111;
  v265 = type metadata accessor for AccessoryControl.State(0);
  swift_storeEnumTagMultiPayload();
  LOBYTE(v103) = v97[v268[13]];
  v112 = &v97[v268[14]];
  v114 = *v112;
  v113 = *(v112 + 1);
  v115 = v260;
  v116 = *(v260 + 32);
  v117 = v261;
  v268 = (v260 + 32);
  v252 = v116;
  v116(v100, v267, v261);
  v272 = type metadata accessor for AccessoryControl.ElementIdentifier(0);
  swift_storeEnumTagMultiPayload();
  v118 = (v100 + v102[7]);
  v119 = v102[9];
  *(v100 + v119) = 16;
  *(v100 + v102[6]) = v103;
  *v118 = v114;
  v118[1] = v113;
  *(v100 + v102[8]) = 1027;
  *(v100 + v119) = 16;
  *(v100 + v102[10]) = 1;
  v120 = *MEMORY[0x277D160E0];
  v121 = v229;
  v227(v98, v120, v229);

  v122 = v253;
  sub_25268FD80();
  v270(v98, v121);
  v123 = v274;
  if (v230(v122, 1, v274) == 1)
  {
    sub_252372288(v122, &qword_27F4DB208, &unk_252695180);
    v124 = sub_252690050();
    v125 = v256;
    (*(*(v124 - 8) + 56))(v256, 1, 1, v124);
LABEL_18:
    sub_252372288(v125, &qword_27F4DB230, &unk_2526A9010);
LABEL_19:
    v129 = v245;
    (*(v115 + 16))(v245, v97, v117);
    swift_storeEnumTagMultiPayload();
    v130 = v243;
    sub_2523AFAA0(v100, v129 + *(v243 + 20), type metadata accessor for AccessoryControl);
    type metadata accessor for AccessoryControlGroup.Layout(0);
    swift_storeEnumTagMultiPayload();
    v131 = (v129 + *(v130 + 28));
    v132 = (v129 + *(v130 + 24));
    v133 = v250;
    *v132 = v249;
    v132[1] = v133;
    *v131 = 0;
    v131[1] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD98, &qword_252694EB8);
    v134 = (*(v244 + 80) + 32) & ~*(v244 + 80);
    v135 = swift_allocObject();
    *(v135 + 16) = v273;
    sub_2523AF938(v129, v135 + v134, type metadata accessor for AccessoryControlGroup);

    sub_2523AFA40(v264, type metadata accessor for AccessoryControl.BinaryViewConfig);
    (v275[1])(v271, v123);
    sub_2523AFA40(v276, type metadata accessor for AccessoryControl.ValueDestination);
    v136 = v100;
LABEL_20:
    sub_2523AFA40(v136, type metadata accessor for AccessoryControl);
    return v135;
  }

  v125 = v256;
  sub_25268F9D0();
  v126 = v275[1];
  v253 = (v275 + 1);
  v251 = v126;
  v126(v122, v123);
  v127 = sub_252690050();
  v128 = *(v127 - 8);
  if ((*(v128 + 48))(v125, 1, v127) == 1)
  {
    goto LABEL_18;
  }

  if ((*(v128 + 88))(v125, v127) != *MEMORY[0x277D16CC8])
  {
    (*(v128 + 8))(v125, v127);
    goto LABEL_19;
  }

  (*(v128 + 96))(v125, v127);
  v137 = v241;
  v138 = v240;
  v139 = v125;
  v140 = v242;
  (*(v241 + 32))(v240, v139, v242);
  v141 = v277;
  v142 = v120;
  v143 = v229;
  v227(v277, v142, v229);
  v144 = v237;
  sub_25268FD80();
  v145 = v274;
  v270(v141, v143);
  if (v230(v144, 1, v145) == 1)
  {
    (*(v137 + 8))(v138, v140);
    sub_252372288(v144, &qword_27F4DB208, &unk_252695180);
    v123 = v145;
    v100 = v263;
    goto LABEL_19;
  }

  v223(v239, v144, v145);
  v146 = sub_25268FFA0();
  result = sub_25268FFB0();
  v147 = v146 - result;
  if (__OFSUB__(v146, result))
  {
    goto LABEL_59;
  }

  result = sub_25268FFC0();
  v148 = v227;
  if (v147 > 300)
  {
    v149 = 300;
LABEL_30:
    v151 = sub_25268FFC0();
    if (v151 <= v149)
    {
      v152 = v149;
    }

    else
    {
      v152 = v151;
    }

    v153 = sub_25268FFA0();
    if (v153 < v152)
    {
      v154 = MEMORY[0x277D84F90];
LABEL_35:
      v155 = [objc_allocWithZone(MEMORY[0x277CCA958]) init];
      [v155 setAllowedUnits_];
      v275 = v155;
      isUniquelyReferenced_nonNull_native = [v155 setUnitsStyle_];
      v157 = *(v154 + 16);
      if (v157)
      {
        v158 = (v154 + 32);
        v159 = MEMORY[0x277D84F90];
        do
        {
          v162 = *v158++;
          v161 = v162;
          isUniquelyReferenced_nonNull_native = [v275 stringFromTimeInterval_];
          if (isUniquelyReferenced_nonNull_native)
          {
            v163 = isUniquelyReferenced_nonNull_native;
            v164 = sub_252692BD0();
            v166 = v165;

            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              isUniquelyReferenced_nonNull_native = sub_252368918(0, *(v159 + 16) + 1, 1, v159);
              v159 = isUniquelyReferenced_nonNull_native;
            }

            v168 = *(v159 + 16);
            v167 = *(v159 + 24);
            if (v168 >= v167 >> 1)
            {
              isUniquelyReferenced_nonNull_native = sub_252368918((v167 > 1), v168 + 1, 1, v159);
              v159 = isUniquelyReferenced_nonNull_native;
            }

            *(v159 + 16) = v168 + 1;
            v160 = (v159 + 32 * v168);
            v160[4] = v161;
            v160[5] = v164;
            v160[6] = v166;
            v160[7] = 0;
          }

          --v157;
        }

        while (v157);
      }

      else
      {
        v159 = MEMORY[0x277D84F90];
      }

      MEMORY[0x28223BE20](isUniquelyReferenced_nonNull_native);
      *(&v223 - 2) = v278;
      v174 = sub_2525F87E0(sub_2523AF9A0, (&v223 - 4), v154);
      v176 = v175;

      LODWORD(v256) = v176;
      if (v176)
      {
        v177 = 0;
      }

      else
      {
        v177 = v174;
      }

      v247 = v177;
      v248 = sub_25268E510();
      v246 = sub_252692330();
      v178 = *(v238 + 56);
      v238 += 56;
      v237 = v178;
      v178(v236, 1, 1, v262);
      v224 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB380, &qword_2526A49E0) + 64);
      v179 = sub_25268FE80();
      v180 = v235;
      *v235 = v179;
      LODWORD(v223) = *MEMORY[0x277D161A0];
      v181 = v277;
      v182 = v229;
      v148(v277);
      v183 = sub_25268FEA0();
      v185 = v184;
      v186 = v270;
      v270(v181, v182);
      *(v180 + 1) = v183;
      v180[16] = v185 & 1;
      v227(v181, v223, v182);
      v187 = v231;
      sub_25268FD80();
      v186(v181, v182);
      v188 = v274;
      if (v230(v187, 1, v274) == 1)
      {
        sub_252372288(v187, &qword_27F4DB208, &unk_252695180);
        v189 = 1;
        v190 = v235;
        v191 = v224;
      }

      else
      {
        v192 = v224;
        v190 = v235;
        sub_25268F990();
        (v251)(v187, v188);
        v189 = 0;
        v191 = v192;
      }

      v193 = sub_25268D990();
      (*(*(v193 - 8) + 56))(v191 + v190, v189, 1, v193);
      swift_storeEnumTagMultiPayload();
      v194 = v232;
      v195 = *(v232 + 24);
      v196 = v234;
      v237(&v234[v195], 1, 1, v262);
      v197 = v196 + v194[11];
      *v196 = v159;
      *(v196 + 8) = 1;
      *(v196 + v194[8]) = v248;
      *(v196 + v194[9]) = v246;
      sub_252377048(v236, v196 + v195, &qword_27F4DADB8, &qword_2526A6E60);
      sub_2523AF938(v190, v196 + v194[10], type metadata accessor for AccessoryControl.StatusProvider);
      *v197 = 0;
      *(v197 + 8) = 1;
      *(v196 + v194[7]) = 0;
      v198 = v267;
      sub_25268F9B0();
      v199 = v259;
      v200 = v233;
      v201 = &v233[*(v259 + 20)];
      v202 = (v201 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DADB0, &unk_2526A7360) + 48));
      sub_2523AFAA0(v196, v201, type metadata accessor for AccessoryControl.PickerViewConfig);
      v203 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD68, &qword_2526A4D70);
      sub_2523AFAA0(v276, v202 + *(v203 + 36), type metadata accessor for AccessoryControl.ValueDestination);
      v204 = v278;
      v205 = v258;
      sub_2523AFAA0(v278, v258, type metadata accessor for HAPControlSolver.Source);
      v206 = swift_allocObject();
      sub_2523AF938(v205, v206 + v266, type metadata accessor for HAPControlSolver.Source);
      v207 = v202 + *(v203 + 40);
      *v207 = v247;
      v207[8] = v256 & 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB020, &unk_2526956B0);
      v208 = swift_allocObject();
      *(v208 + 16) = v273;
      *(v208 + 32) = sub_2523AF9C0;
      *(v208 + 40) = v206;
      *v202 = v208;
      swift_storeEnumTagMultiPayload();
      v209 = v261;
      (v252)(v200, v198, v261);
      swift_storeEnumTagMultiPayload();
      v210 = (v200 + v199[7]);
      v211 = v199[9];
      *(v200 + v211) = 16;
      *(v200 + v199[6]) = 0;
      *v210 = 0;
      v210[1] = 0;
      *(v200 + v199[8]) = 1028;
      *(v200 + v211) = 14;
      *(v200 + v199[10]) = 1;
      v212 = v245;
      (*(v260 + 16))(v245, v204, v209);
      swift_storeEnumTagMultiPayload();
      v213 = v243;
      v214 = v212 + *(v243 + 20);
      v215 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DADD0, &qword_252694EC8) + 48);
      v216 = v263;
      sub_2523AFAA0(v263, v214, type metadata accessor for AccessoryControl);
      sub_2523AFAA0(v200, v214 + v215, type metadata accessor for AccessoryControl);
      type metadata accessor for AccessoryControlGroup.Layout(0);
      swift_storeEnumTagMultiPayload();
      v217 = (v212 + *(v213 + 28));
      v218 = (v212 + *(v213 + 24));
      v219 = v250;
      *v218 = v249;
      v218[1] = v219;
      *v217 = 0;
      v217[1] = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD98, &qword_252694EB8);
      v220 = (*(v244 + 80) + 32) & ~*(v244 + 80);
      v135 = swift_allocObject();
      *(v135 + 16) = v273;
      sub_2523AF938(v212, v135 + v220, type metadata accessor for AccessoryControlGroup);

      v221 = v274;
      v222 = v251;
      (v251)(v239, v274);
      (*(v241 + 8))(v240, v242);
      sub_2523AFA40(v264, type metadata accessor for AccessoryControl.BinaryViewConfig);
      v222(v271, v221);
      sub_2523AFA40(v276, type metadata accessor for AccessoryControl.ValueDestination);
      sub_2523AFA40(v200, type metadata accessor for AccessoryControl);
      sub_2523AFA40(v196, type metadata accessor for AccessoryControl.PickerViewConfig);
      v136 = v216;
      goto LABEL_20;
    }

    v169 = v153;
    result = sub_252368DB0(0, 1, 1, MEMORY[0x277D84F90]);
    v154 = result;
    v170 = *(result + 16);
    v171 = v152;
    while (1)
    {
      v172 = *(v154 + 24);
      if (v170 >= v172 >> 1)
      {
        result = sub_252368DB0((v172 > 1), v170 + 1, 1, v154);
        v154 = result;
      }

      *(v154 + 16) = v170 + 1;
      *(v154 + 8 * v170 + 32) = v171;
      v173 = v171 + v152;
      if (__OFADD__(v171, v152))
      {
        break;
      }

      v171 += v152;
      ++v170;
      if (v169 < v173)
      {
        goto LABEL_35;
      }
    }

    __break(1u);
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  if (!result)
  {
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  v150 = v147 / 5 / result;
  v149 = v150 * result;
  if ((v150 * result) >> 64 == (v150 * result) >> 63)
  {
    goto LABEL_30;
  }

LABEL_61:
  __break(1u);
  return result;
}

uint64_t sub_2523AF8B8@<X0>(char *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(type metadata accessor for HAPControlSolver.Source(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_2523ACCF8(a1, v6, a2);
}

uint64_t sub_2523AF938(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2523AF9C0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(type metadata accessor for HAPControlSolver.Source(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_2523AD264(a1, v6, a2);
}

uint64_t sub_2523AFA40(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2523AFAA0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_2523AFB0C()
{
  result = qword_27F4DB388;
  if (!qword_27F4DB388)
  {
    type metadata accessor for MatterControlSolver.Source(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DB388);
  }

  return result;
}

uint64_t sub_2523AFB64@<X0>(char *a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v43 = a2;
  v5 = type metadata accessor for MatterControlSolver.Source(0);
  MEMORY[0x28223BE20](v5);
  v41 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v44 = &v40 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB120, &qword_2526956F0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v40 - v13;
  v15 = type metadata accessor for AccessoryControl(0);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB398, &qword_252695540);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v40 - v19;
  v21 = sub_25268FC20();
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v24 = &v40 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = v5;
  sub_25268F8D0();
  if ((*(v22 + 48))(v20, 1, v21) == 1)
  {
    v25 = a3;
    sub_252372288(v20, &qword_27F4DB398, &qword_252695540);
    if (qword_27F4DABD0 != -1)
    {
      swift_once();
    }

    v26 = sub_2526905A0();
    __swift_project_value_buffer(v26, qword_27F4E4B18);
    v27 = v44;
    sub_2523B2C04(a1, v44, type metadata accessor for MatterControlSolver.Source);
    v28 = sub_252690580();
    v29 = sub_252692EF0();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v45 = v31;
      *v30 = 136315138;
      sub_2523B2C04(v27, v41, type metadata accessor for MatterControlSolver.Source);
      v32 = sub_252692C20();
      v34 = v33;
      sub_2523B2C6C(v27, type metadata accessor for MatterControlSolver.Source);
      v35 = sub_2525BDA90(v32, v34, &v45);

      *(v30 + 4) = v35;
      _os_log_impl(&dword_252309000, v28, v29, "Failed to build RVC Run Control for source %s", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v31);
      MEMORY[0x2530A5A40](v31, -1, -1);
      MEMORY[0x2530A5A40](v30, -1, -1);
    }

    else
    {

      sub_2523B2C6C(v27, type metadata accessor for MatterControlSolver.Source);
    }

    v39 = type metadata accessor for AccessoryControlModule.Layout.RVC(0);
    return (*(*(v39 - 8) + 56))(v25, 1, 1, v39);
  }

  else
  {
    (*(v22 + 32))(v24, v20, v21);
    v36 = v43;
    sub_2523C3BB4(v24, v43, v17);
    sub_2523B2CCC(a1, v24, v36, v14);
    sub_2523BA78C(a1, v24, v36, v11);
    (*(v22 + 8))(v24, v21);
    sub_2523B2B2C(v17, a3, type metadata accessor for AccessoryControl);
    v37 = type metadata accessor for AccessoryControlModule.Layout.RVC(0);
    sub_2523B2ABC(v14, a3 + *(v37 + 20));
    sub_2523B2ABC(v11, a3 + *(v37 + 24));
    return (*(*(v37 - 8) + 56))(a3, 0, 1, v37);
  }
}

uint64_t sub_2523B00D0(char *a1, unint64_t a2)
{
  v4 = type metadata accessor for AccessoryControlModule(0);
  v5 = *(v4 - 1);
  MEMORY[0x28223BE20](v4);
  v7 = (&v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB390, &qword_252695538);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v28 - v9;
  v11 = type metadata accessor for AccessoryControlModule.Layout.RVC(0);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + *(type metadata accessor for AccessoryControlSolver.Context(0) + 20)))
  {
    v15 = sub_2523B04C8(a1, a2);
    sub_2525EC4EC(v7);
    v16 = (v7 + v4[5]);
    v17 = (v7 + v4[7]);
    *v17 = 0;
    v17[1] = 0;
    *(v7 + v4[6]) = v15;
    type metadata accessor for AccessoryControlModule.Layout(0);
    swift_storeEnumTagMultiPayload();
    *v16 = 0;
    v16[1] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD60, &qword_252694EB0);
    v18 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_252694E90;
    sub_2523B2B2C(v7, v19 + v18, type metadata accessor for AccessoryControlModule);
  }

  else
  {
    sub_2523AFB64(a1, a2, v10);
    if ((*(v12 + 48))(v10, 1, v11) == 1)
    {
      sub_252372288(v10, &qword_27F4DB390, &qword_252695538);
      return MEMORY[0x277D84F90];
    }

    else
    {
      sub_2523B2B2C(v10, v14, type metadata accessor for AccessoryControlModule.Layout.RVC);
      sub_2525EC4EC(v7);
      v20 = &a1[*(type metadata accessor for MatterControlSolver.Source(0) + 20)];
      v22 = *v20;
      v21 = *(v20 + 1);
      v23 = (v7 + v4[5]);
      v24 = (v7 + v4[7]);
      *v24 = 0;
      v24[1] = 0;
      v25 = v4[6];
      *(v7 + v25) = MEMORY[0x277D84F90];
      type metadata accessor for AccessoryControlModule.Layout(0);
      swift_storeEnumTagMultiPayload();
      *v23 = v22;
      v23[1] = v21;

      sub_2523B2C6C(v7 + v25, type metadata accessor for AccessoryControlModule.Layout);
      sub_2523B2C04(v14, v7 + v25, type metadata accessor for AccessoryControlModule.Layout.RVC);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD60, &qword_252694EB0);
      v26 = (*(v5 + 80) + 32) & ~*(v5 + 80);
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_252694E90;
      sub_2523B2B2C(v7, v19 + v26, type metadata accessor for AccessoryControlModule);
      sub_2523B2C6C(v14, type metadata accessor for AccessoryControlModule.Layout.RVC);
    }
  }

  return v19;
}

void *sub_2523B04C8(char *a1, uint64_t a2)
{
  v59 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB120, &qword_2526956F0);
  MEMORY[0x28223BE20](v3 - 8);
  v60 = &v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v61 = (&v54 - v6);
  MEMORY[0x28223BE20](v7);
  v65 = &v54 - v8;
  MEMORY[0x28223BE20](v9);
  v64 = &v54 - v10;
  MEMORY[0x28223BE20](v11);
  v63 = &v54 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB3A0, &qword_252695548);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v54 - v14;
  v16 = type metadata accessor for MatterControlSolver.Source(0);
  MEMORY[0x28223BE20](v16);
  v62 = &v54 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v54 - v19;
  v21 = type metadata accessor for AccessoryControl(0);
  v57 = *(v21 - 8);
  v58 = v21;
  MEMORY[0x28223BE20](v21);
  v23 = &v54 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB398, &qword_252695540);
  MEMORY[0x28223BE20](v24 - 8);
  v26 = &v54 - v25;
  v27 = sub_25268FC20();
  v28 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v30 = &v54 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25268F8D0();
  if ((*(v28 + 48))(v26, 1, v27) == 1)
  {
    sub_252372288(v26, &qword_27F4DB398, &qword_252695540);
    if (qword_27F4DABD0 != -1)
    {
      swift_once();
    }

    v31 = sub_2526905A0();
    __swift_project_value_buffer(v31, qword_27F4E4B18);
    v32 = v62;
    sub_2523B2C04(a1, v62, type metadata accessor for MatterControlSolver.Source);
    v33 = sub_252690580();
    v34 = sub_252692EF0();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v72 = v36;
      *v35 = 136315138;
      sub_2523B2C04(v32, v20, type metadata accessor for MatterControlSolver.Source);
      v37 = sub_252692C20();
      v39 = v38;
      sub_2523B2C6C(v32, type metadata accessor for MatterControlSolver.Source);
      v40 = sub_2525BDA90(v37, v39, &v72);

      *(v35 + 4) = v40;
      _os_log_impl(&dword_252309000, v33, v34, "Failed to build RVC Run Control for source %s", v35, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v36);
      MEMORY[0x2530A5A40](v36, -1, -1);
      MEMORY[0x2530A5A40](v35, -1, -1);
    }

    else
    {

      sub_2523B2C6C(v32, type metadata accessor for MatterControlSolver.Source);
    }

    return MEMORY[0x277D84F90];
  }

  else
  {
    v54 = v28;
    v55 = v27;
    (*(v28 + 32))(v30, v26, v27);
    v41 = sub_25268E310();
    v42 = *(*(v41 - 8) + 56);
    v43 = v59;
    v42(v15, 1, 1, v41);
    v71 = 3;
    sub_2525EA7E4(v15, &v71, v20);
    sub_252372288(v15, &qword_27F4DB3A0, &qword_252695548);
    v56 = v23;
    v62 = v30;
    sub_2523C3BB4(v30, v43, v23);
    sub_2523B2C6C(v20, type metadata accessor for MatterControlSolver.Source);
    v42(v15, 1, 1, v41);
    v70 = 1;
    sub_2525EA7E4(v15, &v70, v20);
    sub_252372288(v15, &qword_27F4DB3A0, &qword_252695548);
    sub_2523B2CCC(v20, v62, v43, v63);
    sub_2523B2C6C(v20, type metadata accessor for MatterControlSolver.Source);
    v42(v15, 1, 1, v41);
    v69 = 2;
    sub_2525EA7E4(v15, &v69, v20);
    sub_252372288(v15, &qword_27F4DB3A0, &qword_252695548);
    sub_2523B3570(v20, v62, v43, v64);
    sub_2523B2C6C(v20, type metadata accessor for MatterControlSolver.Source);
    v42(v15, 1, 1, v41);
    v68 = 4;
    sub_2525EA7E4(v15, &v68, v20);
    v44 = v62;
    sub_252372288(v15, &qword_27F4DB3A0, &qword_252695548);
    sub_2523B8E90(v20, v44, v43, v65);
    sub_2523B2C6C(v20, type metadata accessor for MatterControlSolver.Source);
    v45 = *(type metadata accessor for AccessoryControlSolver.Context(0) + 20);
    if (*(v43 + v45) - 1 > 1)
    {
      v46 = v60;
      (*(v57 + 56))(v60, 1, 1, v58);
    }

    else
    {
      v42(v15, 1, 1, v41);
      v66 = 5;
      sub_2525EA7E4(v15, &v66, v20);
      sub_252372288(v15, &qword_27F4DB3A0, &qword_252695548);
      v46 = v60;
      sub_2523BB764(v44, v43, v60);
      sub_2523B2C6C(v20, type metadata accessor for MatterControlSolver.Source);
    }

    v48 = v61;
    sub_2523B2ABC(v46, v61);
    v67 = *(v43 + v45);
    v49 = v65;
    v50 = v56;
    v52 = v63;
    v51 = v64;
    v53 = sub_2523B0DB4(&v67, a1, v44, v43, v56, v63, v64, v48, v65);
    sub_252372288(v48, &qword_27F4DB120, &qword_2526956F0);
    sub_252372288(v49, &qword_27F4DB120, &qword_2526956F0);
    sub_252372288(v51, &qword_27F4DB120, &qword_2526956F0);
    sub_252372288(v52, &qword_27F4DB120, &qword_2526956F0);
    sub_2523B2C6C(v50, type metadata accessor for AccessoryControl);
    (*(v54 + 8))(v44, v55);
    return v53;
  }
}

void *sub_2523B0DB4(unsigned __int8 *a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, unsigned int (*a8)(char *, uint64_t, uint64_t), uint64_t a9)
{
  v259 = a8;
  v249 = a7;
  v256 = a6;
  v261 = a5;
  v232 = a4;
  v252 = a3;
  v258 = a2;
  v263 = a1;
  v255 = a9;
  v253 = sub_25268FBD0();
  v251 = *(v253 - 8);
  MEMORY[0x28223BE20](v253);
  v250 = &v227 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v260 = type metadata accessor for AccessoryControlGroup.DecorationControlConfig(0);
  MEMORY[0x28223BE20](v260);
  v244 = &v227 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v233 = &v227 - v12;
  MEMORY[0x28223BE20](v13);
  v234 = &v227 - v14;
  MEMORY[0x28223BE20](v15);
  v235 = &v227 - v16;
  MEMORY[0x28223BE20](v17);
  v247 = &v227 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB120, &qword_2526956F0);
  MEMORY[0x28223BE20](v19 - 8);
  v254 = &v227 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v237 = &v227 - v22;
  MEMORY[0x28223BE20](v23);
  v230 = &v227 - v24;
  MEMORY[0x28223BE20](v25);
  v240 = &v227 - v26;
  MEMORY[0x28223BE20](v27);
  v236 = &v227 - v28;
  MEMORY[0x28223BE20](v29);
  v248 = &v227 - v30;
  MEMORY[0x28223BE20](v31);
  v246 = &v227 - v32;
  MEMORY[0x28223BE20](v33);
  v245 = &v227 - v34;
  MEMORY[0x28223BE20](v35);
  v37 = &v227 - v36;
  v38 = type metadata accessor for AccessoryControl(0);
  v39 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v243 = &v227 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v41);
  v231 = &v227 - v42;
  MEMORY[0x28223BE20](v43);
  v238 = &v227 - v44;
  MEMORY[0x28223BE20](v45);
  v239 = &v227 - v46;
  MEMORY[0x28223BE20](v47);
  v49 = &v227 - v48;
  MEMORY[0x28223BE20](v50);
  v52 = (&v227 - v51);
  MEMORY[0x28223BE20](v53);
  v55 = &v227 - v54;
  MEMORY[0x28223BE20](v56);
  v58 = &v227 - v57;
  v59 = type metadata accessor for AccessoryControlGroup(0);
  v257 = *(v59 - 1);
  MEMORY[0x28223BE20](v59);
  v241 = &v227 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v61);
  v242 = &v227 - v62;
  MEMORY[0x28223BE20](v63);
  MEMORY[0x28223BE20](v64);
  MEMORY[0x28223BE20](v65);
  MEMORY[0x28223BE20](v66);
  MEMORY[0x28223BE20](v67);
  v69 = &v227 - v68;
  MEMORY[0x28223BE20](v70);
  MEMORY[0x28223BE20](v71);
  MEMORY[0x28223BE20](v72);
  MEMORY[0x28223BE20](v73);
  MEMORY[0x28223BE20](v74);
  MEMORY[0x28223BE20](&v227 - v75);
  MEMORY[0x28223BE20](v76);
  MEMORY[0x28223BE20](v77);
  v79 = &v227 - v78;
  MEMORY[0x28223BE20](v80);
  v93 = *v263;
  v262 = v59;
  v263 = v38;
  if (v93)
  {
    v228 = v86;
    v229 = v85;
    v235 = v84;
    v245 = v83;
    v94 = v256;
    v95 = v39;
    v96 = v90;
    v97 = type metadata accessor for MatterControlSolver.Source(0);
    v98 = v258;
    v99 = &v258[*(v97 + 20)];
    v100 = *v99;
    v101 = v99[1];
    v102 = v261;
    sub_2523B2C04(v261, v96, type metadata accessor for AccessoryControl.ElementIdentifier);
    sub_2523B2C04(v102, v96 + v59[5], type metadata accessor for AccessoryControl);
    v247 = type metadata accessor for AccessoryControlGroup.Layout(0);
    swift_storeEnumTagMultiPayload();
    v103 = (v96 + v59[7]);
    v104 = (v96 + v59[6]);
    v248 = v100;
    *v104 = v100;
    v104[1] = v101;
    *v103 = 0;
    v103[1] = 0;
    v261 = v96;
    sub_2523B2C04(v96, v69, type metadata accessor for AccessoryControlGroup);
    v246 = v101;

    v105 = sub_2523687E4(0, 1, 1, MEMORY[0x277D84F90]);
    v107 = v105[2];
    v106 = v105[3];
    v108 = v98;
    if (v107 >= v106 >> 1)
    {
      v105 = sub_2523687E4((v106 > 1), v107 + 1, 1, v105);
    }

    v105[2] = v107 + 1;
    v256 = (*(v257 + 80) + 32) & ~*(v257 + 80);
    v109 = *(v257 + 72);
    sub_2523B2B2C(v69, v105 + v256 + v109 * v107, type metadata accessor for AccessoryControlGroup);
    v110 = v250;
    sub_25268FA30();
    v111 = sub_25268FBC0();
    v251[1](v110, v253);
    v112 = (v95 + 48);
    if (v111)
    {
      v113 = v236;
      sub_2523B2B94(v94, v236);
      v114 = *v112;
      v115 = v263;
      if ((*v112)(v113, 1, v263) != 1)
      {
        v257 = v109;
        v116 = v239;
        sub_2523B2B2C(v113, v239, type metadata accessor for AccessoryControl);
        v117 = v240;
        sub_2523B40D4(v116, v249, v232, v108, v240);
        v118 = v117;
        v119 = v230;
        sub_2523B2B94(v118, v230);
        if (v114(v119, 1, v115) == 1)
        {
          v120 = v238;
          sub_2523B2C04(v116, v238, type metadata accessor for AccessoryControl);
          v121 = v114(v119, 1, v115) == 1;
          v122 = v262;
          v123 = v119;
          v124 = v234;
          if (!v121)
          {
            sub_252372288(v123, &qword_27F4DB120, &qword_2526956F0);
          }
        }

        else
        {
          v120 = v238;
          sub_2523B2B2C(v119, v238, type metadata accessor for AccessoryControl);
          v122 = v262;
          v124 = v234;
        }

        v199 = *MEMORY[0x277D15DA0];
        v200 = sub_25268F0E0();
        (*(*(v200 - 8) + 104))(v124, v199, v200);
        v201 = v260;
        *(v124 + *(v260 + 20)) = 0;
        *(v124 + *(v201 + 24)) = 2;
        v202 = v116;
        v203 = v245;
        sub_2523B2C04(v202, v245, type metadata accessor for AccessoryControl.ElementIdentifier);
        v204 = v203 + v122[5];
        v205 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DADA0, &unk_252696070) + 48);
        sub_2523B2C04(v120, v204, type metadata accessor for AccessoryControl);
        sub_2523B2C04(v124, v204 + v205, type metadata accessor for AccessoryControlGroup.DecorationControlConfig);
        swift_storeEnumTagMultiPayload();
        v264 = v248;
        v265 = v246;

        MEMORY[0x2530A4800](0x6F4D6E61656C632FLL, 0xEA00000000006564);
        v206 = v265;
        v207 = (v203 + v122[7]);
        v208 = (v203 + v122[6]);
        *v208 = v264;
        v208[1] = v206;
        *v207 = 0;
        v207[1] = 0;
        sub_2523B2C04(v203, v235, type metadata accessor for AccessoryControlGroup);
        v210 = v105[2];
        v209 = v105[3];
        if (v210 >= v209 >> 1)
        {
          v105 = sub_2523687E4((v209 > 1), v210 + 1, 1, v105);
        }

        v109 = v257;
        sub_2523B2C6C(v124, type metadata accessor for AccessoryControlGroup.DecorationControlConfig);
        sub_2523B2C6C(v238, type metadata accessor for AccessoryControl);
        sub_252372288(v240, &qword_27F4DB120, &qword_2526956F0);
        sub_2523B2C6C(v239, type metadata accessor for AccessoryControl);
        v105[2] = v210 + 1;
        sub_2523B2B2C(v235, v105 + v256 + v210 * v109, type metadata accessor for AccessoryControlGroup);
        v198 = v245;
LABEL_38:
        sub_2523B2C6C(v198, type metadata accessor for AccessoryControlGroup);
        v115 = v263;
        goto LABEL_39;
      }
    }

    else
    {
      v113 = v237;
      sub_2523B2B94(v255, v237);
      v114 = *v112;
      v115 = v263;
      if ((*v112)(v113, 1, v263) != 1)
      {
        v185 = v231;
        sub_2523B2B2C(v113, v231, type metadata accessor for AccessoryControl);
        v186 = *MEMORY[0x277D15D98];
        v187 = sub_25268F0E0();
        v188 = v233;
        (*(*(v187 - 8) + 104))(v233, v186, v187);
        v189 = v260;
        *(v188 + *(v260 + 20)) = 0;
        *(v188 + *(v189 + 24)) = 2;
        v190 = v229;
        sub_2523B2C04(v185, v229, type metadata accessor for AccessoryControl.ElementIdentifier);
        v122 = v262;
        v191 = v190 + v262[5];
        v192 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DADA0, &unk_252696070) + 48);
        sub_2523B2C04(v185, v191, type metadata accessor for AccessoryControl);
        sub_2523B2C04(v188, v191 + v192, type metadata accessor for AccessoryControlGroup.DecorationControlConfig);
        swift_storeEnumTagMultiPayload();
        v264 = v248;
        v265 = v246;

        MEMORY[0x2530A4800](0x656D6F486F672FLL, 0xE700000000000000);
        v193 = v265;
        v194 = (v190 + v122[7]);
        v195 = (v190 + v122[6]);
        *v195 = v264;
        v195[1] = v193;
        *v194 = 0;
        v194[1] = 0;
        sub_2523B2C04(v190, v228, type metadata accessor for AccessoryControlGroup);
        v197 = v105[2];
        v196 = v105[3];
        if (v197 >= v196 >> 1)
        {
          v105 = sub_2523687E4((v196 > 1), v197 + 1, 1, v105);
        }

        sub_2523B2C6C(v188, type metadata accessor for AccessoryControlGroup.DecorationControlConfig);
        sub_2523B2C6C(v185, type metadata accessor for AccessoryControl);
        v105[2] = v197 + 1;
        sub_2523B2B2C(v228, v105 + v256 + v197 * v109, type metadata accessor for AccessoryControlGroup);
        v198 = v229;
        goto LABEL_38;
      }
    }

    sub_252372288(v113, &qword_27F4DB120, &qword_2526956F0);
    v122 = v262;
LABEL_39:
    v211 = v254;
    sub_2523B2B94(v259, v254);
    if (v114(v211, 1, v115) == 1)
    {
      sub_2523B2C6C(v261, type metadata accessor for AccessoryControlGroup);
      sub_252372288(v211, &qword_27F4DB120, &qword_2526956F0);
      return v105;
    }

    v212 = v243;
    sub_2523B2B2C(v211, v243, type metadata accessor for AccessoryControl);
    v213 = *MEMORY[0x277D15DA8];
    v214 = sub_25268F0E0();
    v215 = v244;
    (*(*(v214 - 8) + 104))(v244, v213, v214);
    v216 = v260;
    *(v215 + *(v260 + 20)) = 3;
    *(v215 + *(v216 + 24)) = 2;
    v217 = v242;
    sub_2523B2C04(v212, v242, type metadata accessor for AccessoryControl.ElementIdentifier);
    v218 = v217 + v122[5];
    v219 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DADA0, &unk_252696070) + 48);
    sub_2523B2C04(v212, v218, type metadata accessor for AccessoryControl);
    sub_2523B2C04(v215, v218 + v219, type metadata accessor for AccessoryControlGroup.DecorationControlConfig);
    swift_storeEnumTagMultiPayload();
    v264 = v248;
    v265 = v246;

    MEMORY[0x2530A4800](0x6369506D6F6F722FLL, 0xEB0000000072656BLL);
    v220 = v265;
    v221 = (v217 + v122[7]);
    v222 = (v217 + v122[6]);
    *v222 = v264;
    v222[1] = v220;
    *v221 = 0;
    v221[1] = 0;
    v223 = v241;
    sub_2523B2C04(v217, v241, type metadata accessor for AccessoryControlGroup);
    v225 = v105[2];
    v224 = v105[3];
    if (v225 >= v224 >> 1)
    {
      v105 = sub_2523687E4((v224 > 1), v225 + 1, 1, v105);
    }

    sub_2523B2C6C(v215, type metadata accessor for AccessoryControlGroup.DecorationControlConfig);
    sub_2523B2C6C(v212, type metadata accessor for AccessoryControl);
    v105[2] = v225 + 1;
    sub_2523B2B2C(v223, v105 + v256 + v225 * v109, type metadata accessor for AccessoryControlGroup);
    sub_2523B2C6C(v217, type metadata accessor for AccessoryControlGroup);
    v184 = v261;
LABEL_44:
    sub_2523B2C6C(v184, type metadata accessor for AccessoryControlGroup);
    return v105;
  }

  v241 = v88;
  v242 = v87;
  v243 = v55;
  v244 = v82;
  v250 = v81;
  v251 = v52;
  v253 = v91;
  v254 = &v227 - v89;
  v252 = v92;
  v240 = v49;
  sub_2523B2B94(v256, v37);
  v125 = *(v39 + 48);
  v256 = v39 + 48;
  if (v125(v37, 1, v38) == 1)
  {
    sub_252372288(v37, &qword_27F4DB120, &qword_2526956F0);
    v126 = &v258[*(type metadata accessor for MatterControlSolver.Source(0) + 20)];
    v128 = *v126;
    v127 = v126[1];
    v129 = v261;
    sub_2523B2C04(v261, v79, type metadata accessor for AccessoryControl.ElementIdentifier);
    v130 = v262;
    sub_2523B2C04(v129, &v79[v262[5]], type metadata accessor for AccessoryControl);
    type metadata accessor for AccessoryControlGroup.Layout(0);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    sub_2523B2B2C(v37, v58, type metadata accessor for AccessoryControl);
    v131 = v261;
    sub_2523B2C04(v261, v79, type metadata accessor for AccessoryControl.ElementIdentifier);
    v130 = v262;
    v132 = &v79[v262[5]];
    v133 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DADD0, &qword_252694EC8) + 48);
    sub_2523B2C04(v131, v132, type metadata accessor for AccessoryControl);
    sub_2523B2B2C(v58, v132 + v133, type metadata accessor for AccessoryControl);
    type metadata accessor for AccessoryControlGroup.Layout(0);
    swift_storeEnumTagMultiPayload();
    v134 = &v258[*(type metadata accessor for MatterControlSolver.Source(0) + 20)];
    v128 = *v134;
    v127 = v134[1];
  }

  v135 = v247;
  v136 = v241;
  v137 = &v79[v130[7]];
  v138 = &v79[v130[6]];
  *v138 = v128;
  *(v138 + 1) = v127;
  *v137 = 0;
  *(v137 + 1) = 0;

  v139 = v79;
  v140 = v254;
  sub_2523B2B2C(v139, v254, type metadata accessor for AccessoryControlGroup);
  sub_2523B2C04(v140, v136, type metadata accessor for AccessoryControlGroup);
  v105 = sub_2523687E4(0, 1, 1, MEMORY[0x277D84F90]);
  v142 = v105[2];
  v141 = v105[3];
  if (v142 >= v141 >> 1)
  {
    v105 = sub_2523687E4((v141 > 1), v142 + 1, 1, v105);
  }

  v105[2] = v142 + 1;
  v143 = (*(v257 + 80) + 32) & ~*(v257 + 80);
  v261 = *(v257 + 72);
  sub_2523B2B2C(v136, v105 + v143 + v261 * v142, type metadata accessor for AccessoryControlGroup);
  v144 = v245;
  sub_2523B2B94(v259, v245);
  v145 = v263;
  v146 = v125(v144, 1, v263);
  v258 = v128;
  if (v146 == 1)
  {
    sub_252372288(v144, &qword_27F4DB120, &qword_2526956F0);
    v147 = v246;
  }

  else
  {
    v259 = v125;
    v148 = v144;
    v149 = v243;
    sub_2523B2B2C(v148, v243, type metadata accessor for AccessoryControl);
    v264 = v128;
    v265 = v127;

    MEMORY[0x2530A4800](0x6369506D6F6F722FLL, 0xEB0000000072656BLL);
    v150 = v264;
    v151 = v265;
    v152 = v242;
    sub_2523B2C04(v149, v242, type metadata accessor for AccessoryControl.ElementIdentifier);
    sub_2523B2C04(v149, v152 + v262[5], type metadata accessor for AccessoryControl);
    type metadata accessor for AccessoryControlGroup.Layout(0);
    v130 = v262;
    swift_storeEnumTagMultiPayload();
    v153 = (v152 + v130[7]);
    v154 = (v152 + v130[6]);
    *v154 = v150;
    v154[1] = v151;
    *v153 = 0;
    v153[1] = 0;
    v156 = v105[2];
    v155 = v105[3];
    v147 = v246;
    if (v156 >= v155 >> 1)
    {
      v105 = sub_2523687E4((v155 > 1), v156 + 1, 1, v105);
    }

    sub_2523B2C6C(v243, type metadata accessor for AccessoryControl);
    v105[2] = v156 + 1;
    sub_2523B2B2C(v242, v105 + v143 + v156 * v261, type metadata accessor for AccessoryControlGroup);
    v145 = v263;
    v125 = v259;
  }

  sub_2523B2B94(v255, v147);
  if (v125(v147, 1, v145) == 1)
  {
    sub_252372288(v147, &qword_27F4DB120, &qword_2526956F0);
  }

  else
  {
    v262 = v143;
    v157 = v147;
    v158 = v251;
    sub_2523B2B2C(v157, v251, type metadata accessor for AccessoryControl);
    v159 = *MEMORY[0x277D15DB0];
    v160 = sub_25268F0E0();
    (*(*(v160 - 8) + 104))(v135, v159, v160);
    v161 = v260;
    *(v135 + *(v260 + 20)) = 1;
    *(v135 + *(v161 + 24)) = 2;
    v162 = v250;
    sub_2523B2C04(v158, v250, type metadata accessor for AccessoryControl.ElementIdentifier);
    v163 = v162 + v130[5];
    v164 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DADA0, &unk_252696070) + 48);
    sub_2523B2C04(v158, v163, type metadata accessor for AccessoryControl);
    sub_2523B2C04(v135, v163 + v164, type metadata accessor for AccessoryControlGroup.DecorationControlConfig);
    type metadata accessor for AccessoryControlGroup.Layout(0);
    swift_storeEnumTagMultiPayload();
    v264 = v258;
    v265 = v127;

    MEMORY[0x2530A4800](0x656D6F486F672FLL, 0xE700000000000000);
    v165 = v265;
    v166 = (v162 + v130[7]);
    v167 = (v162 + v130[6]);
    *v167 = v264;
    v167[1] = v165;
    *v166 = 0;
    v166[1] = 0;
    sub_2523B2C04(v162, v244, type metadata accessor for AccessoryControlGroup);
    v169 = v105[2];
    v168 = v105[3];
    if (v169 >= v168 >> 1)
    {
      v105 = sub_2523687E4((v168 > 1), v169 + 1, 1, v105);
    }

    v143 = v262;
    sub_2523B2C6C(v135, type metadata accessor for AccessoryControlGroup.DecorationControlConfig);
    sub_2523B2C6C(v251, type metadata accessor for AccessoryControl);
    v105[2] = v169 + 1;
    sub_2523B2B2C(v244, v105 + v143 + v169 * v261, type metadata accessor for AccessoryControlGroup);
    sub_2523B2C6C(v250, type metadata accessor for AccessoryControlGroup);
    v145 = v263;
  }

  v170 = v248;
  sub_2523B2B94(v249, v248);
  if (v125(v170, 1, v145) != 1)
  {
    v171 = v240;
    sub_2523B2B2C(v170, v240, type metadata accessor for AccessoryControl);
    v172 = *MEMORY[0x277D15D98];
    v173 = sub_25268F0E0();
    v174 = v235;
    (*(*(v173 - 8) + 104))(v235, v172, v173);
    v175 = v260;
    *(v174 + *(v260 + 20)) = 3;
    *(v174 + *(v175 + 24)) = 2;
    v176 = v252;
    sub_2523B2C04(v171, v252, type metadata accessor for AccessoryControl.ElementIdentifier);
    v177 = v176 + v130[5];
    v178 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DADA0, &unk_252696070) + 48);
    sub_2523B2C04(v171, v177, type metadata accessor for AccessoryControl);
    sub_2523B2C04(v174, v177 + v178, type metadata accessor for AccessoryControlGroup.DecorationControlConfig);
    type metadata accessor for AccessoryControlGroup.Layout(0);
    swift_storeEnumTagMultiPayload();
    v264 = v258;
    v265 = v127;

    MEMORY[0x2530A4800](0x61646E6F6365732FLL, 0xEF6E61656C437972);
    v179 = v265;
    v180 = (v176 + v130[7]);
    v181 = (v176 + v130[6]);
    *v181 = v264;
    v181[1] = v179;
    *v180 = 0;
    v180[1] = 0;
    sub_2523B2C04(v176, v253, type metadata accessor for AccessoryControlGroup);
    v183 = v105[2];
    v182 = v105[3];
    if (v183 >= v182 >> 1)
    {
      v105 = sub_2523687E4((v182 > 1), v183 + 1, 1, v105);
    }

    sub_2523B2C6C(v174, type metadata accessor for AccessoryControlGroup.DecorationControlConfig);
    sub_2523B2C6C(v171, type metadata accessor for AccessoryControl);
    sub_2523B2C6C(v254, type metadata accessor for AccessoryControlGroup);
    v105[2] = v183 + 1;
    sub_2523B2B2C(v253, v105 + v143 + v183 * v261, type metadata accessor for AccessoryControlGroup);
    v184 = v252;
    goto LABEL_44;
  }

  sub_2523B2C6C(v254, type metadata accessor for AccessoryControlGroup);
  sub_252372288(v170, &qword_27F4DB120, &qword_2526956F0);
  return v105;
}