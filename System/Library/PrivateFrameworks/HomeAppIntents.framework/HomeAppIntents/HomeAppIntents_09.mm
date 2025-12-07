uint64_t sub_2527EEE64(uint64_t a1, __int128 *a2, double a3, double a4)
{
  v90 = a2;
  v7 = sub_2528BFDE0();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v68 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FE8A8, &qword_2528CDF80);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v83 = &v68 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v68 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FE8A0, &qword_2528CDF78);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v86 = &v68 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v20 = &v68 - v19;
  v21 = sub_2528C0700();
  v22 = *(v21 - 8);
  v88 = v21;
  v89 = v22;
  v23 = MEMORY[0x28223BE20](v21);
  v80 = &v68 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v87 = &v68 - v25;
  v26 = *MEMORY[0x277D161E8];
  v82 = *(v8 + 104);
  v82(v10, v26, v7);
  v85 = a1;
  sub_2528BF760();
  v27 = *(v8 + 8);
  v84 = v7;
  v27(v10, v7);
  v28 = sub_2528C01F0();
  v29 = *(v28 - 8);
  v81 = *(v29 + 48);
  if (v81(v15, 1, v28) == 1)
  {
    sub_2527213D8(v15, &qword_27F4FE8A8, &qword_2528CDF80);
    v30 = sub_2528C0720();
    (*(*(v30 - 8) + 56))(v20, 1, 1, v30);
LABEL_4:
    sub_2527213D8(v20, &qword_27F4FE8A0, &qword_2528CDF78);
LABEL_5:
    type metadata accessor for HomeAppIntentError(0);
    sub_2527F2A94(&qword_27F4FC2B0, type metadata accessor for HomeAppIntentError, &protocol conformance descriptor for HomeAppIntentError);
    swift_allocError();
    v35 = v34;
    v36 = v90[1];
    v91 = *v90;
    v92 = v36;
    v93 = *(v90 + 32);
    sub_252870158(&v95);
    *v35 = v95;
    swift_storeEnumTagMultiPayload();
    return swift_willThrow();
  }

  v79 = v27;
  sub_2528C01E0();
  v78 = *(v29 + 8);
  v78(v15, v28);
  v31 = sub_2528C0720();
  v32 = *(v31 - 8);
  v33 = *(v32 + 48);
  v77 = v32 + 48;
  v76 = v33;
  if (v33(v20, 1, v31) == 1)
  {
    goto LABEL_4;
  }

  v38 = *(v32 + 88);
  v75 = v32 + 88;
  v74 = v38;
  v39 = v38(v20, v31);
  if (v39 != *MEMORY[0x277D16CD0])
  {
    (*(v32 + 8))(v20, v31);
    goto LABEL_5;
  }

  v94 = v39;
  v72 = v32;
  v40 = *(v32 + 96);
  v73 = v31;
  v71 = v40;
  v40(v20, v31);
  v41 = *(v89 + 32);
  v42 = v87;
  v43 = v20;
  v44 = v88;
  v70 = v89 + 32;
  v69 = v41;
  v41(v87, v43, v88);
  sub_2528C06E0();
  if (v45 < a3 || (sub_2528C06F0(), v46 > a3))
  {
    (*(v89 + 8))(v42, v44);
    goto LABEL_5;
  }

  v47 = v84;
  v82(v10, *MEMORY[0x277D16228], v84);
  v48 = v83;
  sub_2528BF760();
  v79(v10, v47);
  if (v81(v48, 1, v28) == 1)
  {
    sub_2527213D8(v48, &qword_27F4FE8A8, &qword_2528CDF80);
    v49 = v86;
    (*(v72 + 56))(v86, 1, 1, v73);
    v50 = v89;
    v51 = v87;
LABEL_14:
    sub_2527213D8(v49, &qword_27F4FE8A0, &qword_2528CDF78);
    v55 = v88;
LABEL_15:
    type metadata accessor for HomeAppIntentError(0);
    sub_2527F2A94(&qword_27F4FC2B0, type metadata accessor for HomeAppIntentError, &protocol conformance descriptor for HomeAppIntentError);
    swift_allocError();
    v57 = v56;
    v58 = v90[1];
    v91 = *v90;
    v92 = v58;
    v93 = *(v90 + 32);
    sub_252870158(&v95);
    *v57 = v95;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    return (*(v50 + 8))(v51, v55);
  }

  v49 = v86;
  sub_2528C01E0();
  v78(v48, v28);
  v52 = v73;
  v53 = v76(v49, 1, v73);
  v50 = v89;
  v51 = v87;
  v54 = v72;
  if (v53 == 1)
  {
    goto LABEL_14;
  }

  v59 = v74(v49, v52);
  v55 = v88;
  if (v59 != v94)
  {
    (*(v54 + 8))(v49, v52);
    goto LABEL_15;
  }

  v71(v49, v52);
  v60 = v80;
  v69(v80, v49, v55);
  sub_2528C06E0();
  if (v61 < a4 || (sub_2528C06F0(), v62 > a4))
  {
    (*(v50 + 8))(v60, v55);
    goto LABEL_15;
  }

  if (a3 <= a4)
  {
    v67 = *(v50 + 8);
    v67(v60, v55);
    return (v67)(v51, v55);
  }

  else
  {
    type metadata accessor for HomeAppIntentError(0);
    sub_2527F2A94(&qword_27F4FC2B0, type metadata accessor for HomeAppIntentError, &protocol conformance descriptor for HomeAppIntentError);
    swift_allocError();
    v64 = v63;
    v65 = v90[1];
    v91 = *v90;
    v92 = v65;
    v93 = *(v90 + 32);
    sub_252870158(&v95);
    *v64 = v95;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v66 = *(v50 + 8);
    v66(v60, v55);
    return (v66)(v51, v55);
  }
}

uint64_t sub_2527EF818(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v76 = a7;
  v69 = a6;
  v70 = a5;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCDB8, &unk_2528C5CC0);
  MEMORY[0x28223BE20](v11 - 8);
  v75 = &v63 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCEF0, &unk_2528C6AB0);
  MEMORY[0x28223BE20](v13 - 8);
  v77 = &v63 - v14;
  v15 = sub_2528BFB20();
  v78 = *(v15 - 8);
  v79 = v15;
  MEMORY[0x28223BE20](v15);
  v64 = &v63 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD670, &qword_2528D3570);
  MEMORY[0x28223BE20](v17 - 8);
  v67 = &v63 - v18;
  v19 = sub_2528BECF0();
  v81 = *(v19 - 8);
  v82 = v19;
  v20 = MEMORY[0x28223BE20](v19);
  v73 = &v63 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v23 = &v63 - v22;
  v68 = sub_2528BF9D0();
  v24 = *(v68 - 8);
  v25 = MEMORY[0x28223BE20](v68);
  v27 = &v63 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v29 = (&v63 - v28);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v84 = *a1;
  v65 = a3;
  sub_25278BC2C(a3, a2, isUniquelyReferenced_nonNull_native);
  v31 = v84;
  v74 = a1;
  *a1 = v84;
  v66 = a4;
  v32 = sub_2528BF370();
  sub_252819FA8(v23);
  if (*(v32 + 16) && (v33 = sub_252785C40(v23), (v34 & 1) != 0))
  {
    v35 = v68;
    (*(v24 + 16))(v27, *(v32 + 56) + *(v24 + 72) * v33, v68);
    v72 = *(v81 + 8);
    v72(v23, v82);

    (*(v24 + 32))(v29, v27, v35);
    v71 = a2;
    sub_2528BE6B0();
    v36 = v83;
    LOWORD(v84) = v83;
    v37 = v66;
    v38 = v67;
    sub_2527F005C(v29, &v84, v66, v67);
    v84 = sub_25278D51C(MEMORY[0x277D84F90]);
    MEMORY[0x28223BE20](v84);
    *(&v63 - 6) = v38;
    *(&v63 - 5) = v37;
    v40 = v69;
    v39 = v70;
    *(&v63 - 4) = &v84;
    *(&v63 - 3) = v40;
    *(&v63 - 8) = v36;
    *(&v63 - 1) = v29;
    v41 = v80;
    sub_2527E5018(sub_2527F2754, (&v63 - 8), v39);
    v42 = v84;
    sub_2527213D8(v38, &qword_27F4FD670, &qword_2528D3570);
    v43 = swift_isUniquelyReferenced_nonNull_native();
    v84 = v31;
    sub_2527F277C(v42, sub_2527F2690, 0, v43, &v84);
    if (v41)
    {

      __break(1u);
      return result;
    }

    v44 = v84;
    (*(v24 + 8))(v29, v35);
    v45 = v75;
    *v74 = v44;
    v46 = v79;
    v47 = v71;
  }

  else
  {

    v72 = *(v81 + 8);
    v72(v23, v82);
    v47 = a2;
    v46 = v79;
    v45 = v75;
  }

  sub_25272006C(v76, v45, &qword_27F4FCDB8, &unk_2528C5CC0);
  v48 = sub_2528C00D0();
  v49 = *(v48 - 8);
  v50 = (*(v49 + 48))(v45, 1, v48);
  v51 = v78;
  if (v50 == 1)
  {
    sub_2527213D8(v45, &qword_27F4FCDB8, &unk_2528C5CC0);
    v52 = v77;
    (*(v51 + 56))(v77, 1, 1, v46);
    return sub_2527213D8(v52, &qword_27F4FCEF0, &unk_2528C6AB0);
  }

  v53 = v73;
  v71 = v47;
  sub_252819FA8(v73);
  v54 = v77;
  sub_2528C0080();
  v72(v53, v82);
  v55 = v48;
  v52 = v54;
  (*(v49 + 8))(v45, v55);
  if ((*(v51 + 48))(v54, 1, v46) == 1)
  {
    return sub_2527213D8(v52, &qword_27F4FCEF0, &unk_2528C6AB0);
  }

  v57 = v64;
  v58 = (*(v51 + 32))(v64, v52, v46);
  MEMORY[0x28223BE20](v58);
  *(&v63 - 2) = v57;
  sub_252853334(sub_2527F2738, (&v63 - 4), v65);
  v60 = v59;
  v61 = v74;
  v62 = swift_isUniquelyReferenced_nonNull_native();
  v84 = *v61;
  sub_25278BC2C(v60, v71, v62);
  *v61 = v84;
  return (*(v51 + 8))(v57, v46);
}

void *sub_2527EFF90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  v8 = *(a1 + 32);
  result = sub_25284D314(a2);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC700, &qword_2528C47D0);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_2528C3910;
    *(v10 + 32) = v4;
    *(v10 + 40) = v5;
    *(v10 + 48) = v6;
    *(v10 + 56) = v7;
    *(v10 + 64) = v8;
    sub_252760C18(v4, v5, v6, v7, v8);
    result = v10;
  }

  *a3 = result;
  return result;
}

uint64_t sub_2527F005C@<X0>(uint64_t (*a1)(char *, char *, uint64_t)@<X0>, __int16 *a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v114 = a3;
  v115 = a1;
  v116 = a4;
  v104 = sub_2528BFC70();
  v103 = *(v104 - 8);
  MEMORY[0x28223BE20](v104);
  v6 = &v100 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD670, &qword_2528D3570);
  MEMORY[0x28223BE20](v7 - 8);
  v109 = &v100 - v8;
  v9 = sub_2528BF240();
  v112 = *(v9 - 8);
  v113 = v9;
  v10 = MEMORY[0x28223BE20](v9);
  v102 = &v100 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v108 = &v100 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v100 = &v100 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v106 = &v100 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v100 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = &v100 - v21;
  v120 = sub_2528BF9D0();
  v118 = *(v120 - 8);
  v23 = MEMORY[0x28223BE20](v120);
  v101 = &v100 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v23);
  v107 = &v100 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v105 = &v100 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v31 = &v100 - v30;
  MEMORY[0x28223BE20](v29);
  v33 = &v100 - v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC628, &qword_2528C4750);
  v35 = MEMORY[0x28223BE20](v34 - 8);
  v111 = &v100 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = MEMORY[0x28223BE20](v35);
  v39 = &v100 - v38;
  MEMORY[0x28223BE20](v37);
  v41 = &v100 - v40;
  v117 = sub_2528BECF0();
  v119 = *(v117 - 8);
  v42 = MEMORY[0x28223BE20](v117);
  v110 = &v100 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = MEMORY[0x28223BE20](v42);
  v46 = &v100 - v45;
  MEMORY[0x28223BE20](v44);
  v48 = &v100 - v47;
  v49 = *a2;
  LOWORD(v123) = v49;
  LOWORD(v121) = 24073;
  if (_s14HomeAppIntents10DeviceTypeO2eeoiySbAC_ACtFZ_0(&v123, &v121) & 1) != 0 || (LOWORD(v123) = v49, LOWORD(v121) = 24087, (_s14HomeAppIntents10DeviceTypeO2eeoiySbAC_ACtFZ_0(&v123, &v121)))
  {
    sub_2528BF440();
    v50 = v119;
    v51 = v117;
    if ((*(v119 + 48))(v41, 1, v117) == 1)
    {
      sub_2527213D8(v41, &qword_27F4FC628, &qword_2528C4750);
LABEL_15:
      v58 = 1;
      v59 = v116;
      v60 = v120;
LABEL_16:
      v53 = v118;
      return (*(v53 + 56))(v59, v58, 1, v60);
    }

    (*(v50 + 32))(v48, v41, v51);
    v52 = sub_2528BF370();
    v53 = v118;
    if (*(v52 + 16))
    {
      v54 = sub_252785C40(v48);
      if (v55)
      {
        v56 = v120;
        (*(v53 + 16))(v31, *(v52 + 56) + *(v53 + 72) * v54, v120);

        v115 = *(v53 + 32);
        v115(v33, v31, v56);
        sub_2528BF460();
        (*(v112 + 104))(v20, *MEMORY[0x277D15868], v113);
        sub_2527F2A94(&qword_27F4FE890, MEMORY[0x277D158E0], MEMORY[0x277D158F8]);
        sub_2528C0AD0();
        sub_2528C0AD0();
        if (v123 == v121 && v124 == v122)
        {
          v57 = 1;
        }

        else
        {
          v57 = sub_2528C1060();
        }

        v73 = *(v112 + 8);
        v74 = v20;
        v75 = v113;
        v73(v74, v113);
        v73(v22, v75);
        (*(v119 + 8))(v48, v117);

        if (v57)
        {
          v76 = v116;
          v77 = v120;
          v115(v116, v33, v120);
LABEL_25:
          v60 = v77;
          v59 = v76;
          v58 = 0;
          goto LABEL_16;
        }

        v53 = v118;
        v78 = v120;
        (*(v118 + 8))(v33, v120);
        v60 = v78;
LABEL_27:
        v58 = 1;
        v59 = v116;
        return (*(v53 + 56))(v59, v58, 1, v60);
      }
    }

    (*(v50 + 8))(v48, v51);
    goto LABEL_11;
  }

  LOWORD(v123) = v49;
  LOWORD(v121) = 24089;
  if ((_s14HomeAppIntents10DeviceTypeO2eeoiySbAC_ACtFZ_0(&v123, &v121) & 1) == 0)
  {
    goto LABEL_15;
  }

  sub_2528BF660();
  v61 = v119;
  v62 = *(v119 + 48);
  v63 = v117;
  if (v62(v39, 1, v117) == 1)
  {
    sub_2527213D8(v39, &qword_27F4FC628, &qword_2528C4750);
    v53 = v118;
    v64 = v63;
    v65 = v61;
    goto LABEL_30;
  }

  (*(v61 + 32))(v46, v39, v63);
  v67 = sub_2528BF390();
  v64 = v63;
  if (!*(v67 + 16) || (v68 = sub_252785C40(v46), (v69 & 1) == 0))
  {

    (*(v119 + 8))(v46, v63);
    v53 = v118;
    v72 = v109;
    (*(v118 + 56))(v109, 1, 1, v120);
    goto LABEL_29;
  }

  v70 = v103;
  v71 = v104;
  (*(v103 + 16))(v6, *(v67 + 56) + *(v103 + 72) * v68, v104);

  v72 = v109;
  sub_2528BFBE0();
  (*(v70 + 8))(v6, v71);
  v53 = v118;
  if ((*(v118 + 48))(v72, 1, v120) == 1)
  {
    (*(v119 + 8))(v46, v64);
LABEL_29:
    sub_2527213D8(v72, &qword_27F4FD670, &qword_2528D3570);
    v65 = v119;
    goto LABEL_30;
  }

  v109 = *(v53 + 32);
  (v109)(v105, v72, v120);
  sub_2528BF460();
  v89 = v100;
  (*(v112 + 104))(v100, *MEMORY[0x277D15770], v113);
  sub_2527F2A94(&qword_27F4FE890, MEMORY[0x277D158E0], MEMORY[0x277D158F8]);
  sub_2528C0AD0();
  sub_2528C0AD0();
  if (v123 == v121 && v124 == v122)
  {
    v90 = 1;
  }

  else
  {
    v90 = sub_2528C1060();
  }

  v97 = *(v112 + 8);
  v98 = v89;
  v99 = v113;
  v97(v98, v113);
  v97(v106, v99);
  v64 = v117;
  (*(v119 + 8))(v46, v117);

  if (v90)
  {
    v76 = v116;
    v77 = v120;
    (v109)(v116, v105, v120);
    goto LABEL_25;
  }

  v53 = v118;
  (*(v118 + 8))(v105, v120);
  v65 = v119;
LABEL_30:
  v79 = v111;
  sub_2528BF440();
  if (v62(v79, 1, v64) == 1)
  {
    sub_2527213D8(v79, &qword_27F4FC628, &qword_2528C4750);
  }

  else
  {
    v80 = v110;
    (*(v65 + 32))(v110, v79, v64);
    v81 = sub_2528BF370();
    if (*(v81 + 16))
    {
      v82 = sub_252785C40(v80);
      if (v83)
      {
        v84 = v101;
        v85 = v120;
        (*(v53 + 16))(v101, *(v81 + 56) + *(v53 + 72) * v82, v120);

        v86 = *(v53 + 32);
        v86(v107, v84, v85);
        sub_2528BF460();
        v87 = v102;
        (*(v112 + 104))(v102, *MEMORY[0x277D15770], v113);
        sub_2527F2A94(&qword_27F4FE890, MEMORY[0x277D158E0], MEMORY[0x277D158F8]);
        sub_2528C0AD0();
        sub_2528C0AD0();
        if (v123 == v121 && v124 == v122)
        {
          v88 = 1;
        }

        else
        {
          v88 = sub_2528C1060();
        }

        v91 = *(v112 + 8);
        v92 = v87;
        v93 = v113;
        v91(v92, v113);
        v91(v108, v93);
        (*(v119 + 8))(v110, v117);

        if (v88)
        {
          v94 = v116;
          v95 = v120;
          v86(v116, v107, v120);
          v60 = v95;
          v59 = v94;
          v58 = 0;
          return (*(v53 + 56))(v59, v58, 1, v60);
        }

        v96 = v120;
        (*(v53 + 8))(v107, v120);
        v60 = v96;
        goto LABEL_27;
      }
    }

    (*(v65 + 8))(v80, v64);
  }

LABEL_11:
  v58 = 1;
  v59 = v116;
  v60 = v120;
  return (*(v53 + 56))(v59, v58, 1, v60);
}

uint64_t sub_2527F0E44(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v45 = a4;
  v42 = a3;
  v43 = a2;
  v44 = sub_2528BF400();
  v5 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2528BF9D0();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD668, &qword_2528C8900);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v37 - v13;
  v15 = type metadata accessor for DeviceEntity(0);
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *a1;
  v40 = *(a1 + 8);
  v41 = v19;
  v20 = *(a1 + 16);
  v38 = *(a1 + 24);
  v39 = v20;
  v21 = *(a1 + 32);
  (*(v9 + 16))(v11, v43, v8);
  (*(v5 + 16))(v7, v45, v44);
  DeviceEntity.init(staticService:snapshot:)(v11, v7, v14);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    return sub_2527213D8(v14, &qword_27F4FD668, &qword_2528C8900);
  }

  sub_25279F090(v14, v18);
  v23 = v42;
  v24 = *v42;
  v25 = v18;
  if (*(*v42 + 16))
  {
    v26 = sub_252785BD4(v18);
    v28 = v40;
    v27 = v41;
    v30 = v38;
    v29 = v39;
    if (v31)
    {
      v32 = *(*(v24 + 56) + 8 * v26);
    }

    else
    {
      v32 = MEMORY[0x277D84F90];
    }
  }

  else
  {
    v32 = MEMORY[0x277D84F90];
    v28 = v40;
    v27 = v41;
    v30 = v38;
    v29 = v39;
  }

  sub_252760C18(v27, v28, v29, v30, v21);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v32 = sub_252737E74(0, *(v32 + 2) + 1, 1, v32);
  }

  v34 = *(v32 + 2);
  v33 = *(v32 + 3);
  if (v34 >= v33 >> 1)
  {
    v32 = sub_252737E74((v33 > 1), v34 + 1, 1, v32);
  }

  *(v32 + 2) = v34 + 1;
  v35 = &v32[40 * v34];
  *(v35 + 4) = v27;
  *(v35 + 5) = v28;
  *(v35 + 6) = v29;
  *(v35 + 7) = v30;
  v35[64] = v21;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v46 = *v23;
  sub_25278BC2C(v32, v25, isUniquelyReferenced_nonNull_native);
  *v23 = v46;
  return sub_25272E840(v25);
}

uint64_t sub_2527F1204(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, char *a5, int a6, uint64_t a7)
{
  v152 = a7;
  v154 = a6;
  v180 = a5;
  v172 = a4;
  v173 = a3;
  v153 = a2;
  v159 = a1;
  v171 = sub_2528BF400();
  v151 = *(v171 - 1);
  MEMORY[0x28223BE20](v171);
  v170 = &v149 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD668, &qword_2528C8900);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = &v149 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v161 = &v149 - v12;
  v169 = type metadata accessor for DeviceEntity(0);
  v150 = *(v169 - 1);
  v13 = MEMORY[0x28223BE20](v169);
  v15 = &v149 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v160 = &v149 - v16;
  v167 = sub_2528BF240();
  v149 = *(v167 - 8);
  v17 = MEMORY[0x28223BE20](v167);
  v164 = &v149 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v162 = &v149 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v166 = &v149 - v22;
  MEMORY[0x28223BE20](v21);
  v165 = &v149 - v23;
  v24 = sub_2528BECF0();
  v25 = *(v24 - 8);
  v26 = MEMORY[0x28223BE20](v24);
  v156 = &v149 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v29 = &v149 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD670, &qword_2528D3570);
  v31 = MEMORY[0x28223BE20](v30 - 8);
  v33 = &v149 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v35 = &v149 - v34;
  v36 = sub_2528BF9D0();
  v174 = *(v36 - 8);
  v175 = v36;
  v37 = MEMORY[0x28223BE20](v36);
  v39 = &v149 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = MEMORY[0x28223BE20](v37);
  v157 = &v149 - v41;
  v42 = MEMORY[0x28223BE20](v40);
  v43 = MEMORY[0x28223BE20](v42);
  v168 = &v149 - v44;
  v45 = MEMORY[0x28223BE20](v43);
  v155 = &v149 - v46;
  v47 = MEMORY[0x28223BE20](v45);
  v49 = &v149 - v48;
  v50 = MEMORY[0x28223BE20](v47);
  v158 = &v149 - v51;
  result = MEMORY[0x28223BE20](v50);
  v163 = *v159;
  v55 = *(v159 + 32) >> 1;
  if (v55 == 50)
  {
    v167 = v15;
    v180 = v11;
    LOWORD(v176) = v154;
    LOWORD(v179) = 25;
    result = _s14HomeAppIntents10DeviceTypeO2eeoiySbAC_ACtFZ_0(&v176, &v179);
    if ((result & 1) == 0)
    {
      return result;
    }

    v62 = sub_2528BF740();
    v63 = *(v62 + 16);
    if (!v63)
    {
    }

    v64 = v175;
    v65 = *(v174 + 16);
    v66 = *(v174 + 80);
    v162 = v62;
    v67 = v62 + ((v66 + 32) & ~v66);
    v165 = *(v174 + 72);
    v166 = v65;
    v164 = (v151 + 16);
    v68 = (v150 + 48);
    v69 = (v174 + 8);
    v174 += 16;
    do
    {
      v70 = v166;
      (v166)(v39, v67, v64);
      v71 = v168;
      (v70)(v168, v39, v64);
      v72 = v170;
      (*v164)(v170, v173, v171);
      v73 = v72;
      v74 = v180;
      DeviceEntity.init(staticService:snapshot:)(v71, v73, v180);
      if ((*v68)(v74, 1, v169) == 1)
      {
        (*v69)(v39, v64);
        sub_2527213D8(v74, &qword_27F4FD668, &qword_2528C8900);
      }

      else
      {
        v75 = v167;
        sub_25279F090(v74, v167);
        v76 = *v172;
        if (*(*v172 + 16) && (v77 = sub_252785BD4(v75), (v78 & 1) != 0))
        {
          v79 = *(*(v76 + 56) + 8 * v77);
        }

        else
        {
          v79 = MEMORY[0x277D84F90];
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v79 = sub_252737E74(0, *(v79 + 2) + 1, 1, v79);
        }

        v81 = *(v79 + 2);
        v80 = *(v79 + 3);
        if (v81 >= v80 >> 1)
        {
          v79 = sub_252737E74((v80 > 1), v81 + 1, 1, v79);
        }

        *(v79 + 2) = v81 + 1;
        v82 = &v79[40 * v81];
        *(v82 + 4) = v163;
        *(v82 + 5) = 0;
        *(v82 + 6) = 0;
        *(v82 + 7) = 0;
        v82[64] = 100;
        v83 = v172;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v176 = *v83;
        *v83 = 0x8000000000000000;
        v85 = v79;
        v86 = v167;
        sub_25278BC2C(v85, v167, isUniquelyReferenced_nonNull_native);
        *v83 = v176;
        sub_25272E840(v86);
        v64 = v175;
        (*v69)(v39, v175);
      }

      v67 += v165;
      --v63;
    }

    while (v63);
  }

  if (v55 != 44)
  {
    return result;
  }

  v56 = (v174 + 48);
  if ((v163 & 1) == 0)
  {
    v163 = v54;
    sub_25272006C(v153, v33, &qword_27F4FD670, &qword_2528D3570);
    v93 = v175;
    if ((*v56)(v33, 1, v175) == 1)
    {
      return sub_2527213D8(v33, &qword_27F4FD670, &qword_2528D3570);
    }

    (*(v174 + 32))(v163, v33, v93);
    result = sub_2528BF740();
    v97 = result;
    v98 = v157;
    v166 = *(result + 16);
    if (!v166)
    {
LABEL_66:

      v176 = 0u;
      v177 = 0u;
      v178 = 88;
      v135 = v163;
      sub_2527F0E44(&v176, v163, v172, v173);
      return (*(v174 + 8))(v135, v93);
    }

    v99 = 0;
    v170 = (v174 + 16);
    LODWORD(v169) = *MEMORY[0x277D15850];
    v168 = (v149 + 104);
    v100 = (v149 + 8);
    v165 = v25 + 8;
    v171 = (v174 + 8);
    v161 = (v174 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    while (1)
    {
      if (v99 >= *(v97 + 16))
      {
        goto LABEL_86;
      }

      (*(v174 + 16))(v98, v97 + ((*(v174 + 80) + 32) & ~*(v174 + 80)) + *(v174 + 72) * v99, v93);
      sub_2528BF460();
      (*v168)(v164, v169, v167);
      sub_2527F2A94(&qword_27F4FE890, MEMORY[0x277D158E0], MEMORY[0x277D158F8]);
      sub_2528C0AD0();
      sub_2528C0AD0();
      if (v176 == v179)
      {
        v101 = *v100;
        v102 = v167;
        (*v100)(v164, v167);
        v101(v162, v102);
      }

      else
      {
        v103 = sub_2528C1060();
        v104 = *v100;
        v105 = v167;
        (*v100)(v164, v167);
        v104(v162, v105);

        if ((v103 & 1) == 0)
        {

          v109 = *v171;
          v148 = v175;
          (*v171)(v157, v175);
          v110 = v148;
          return (v109)(v163, v110);
        }
      }

      v106 = v156;
      v98 = v157;
      sub_2528BF900();
      v107 = sub_25277B310(v106, v180);
      (*v165)(v106, v24);
      if (v107)
      {
        result = (*v171)(v98, v175);
      }

      else
      {
        v108 = sub_2528BF970();
        v109 = *v171;
        result = (*v171)(v98, v175);
        if (v108 == 2 || (v108 & 1) != 0)
        {

          v110 = v175;
          return (v109)(v163, v110);
        }
      }

      ++v99;
      v93 = v175;
      if (v166 == v99)
      {
        goto LABEL_66;
      }
    }
  }

  v164 = &v149 - v53;
  sub_25272006C(v153, v35, &qword_27F4FD670, &qword_2528D3570);
  v57 = v175;
  if ((*v56)(v35, 1, v175) != 1)
  {
    v94 = v174;
    v95 = v164;
    (*(v174 + 32))(v164, v35, v57);
    v176 = 1uLL;
    v177 = 0uLL;
    v178 = 88;
    sub_2527F0E44(&v176, v95, v172, v173);
    v96 = sub_2528BF970();
    if (v96 == 2)
    {
      return (*(v94 + 8))(v95, v57);
    }

    if (v96)
    {
      return (*(v174 + 8))(v164, v57);
    }

    v136 = sub_2528BF740();
    v170 = *(v136 + 16);
    if (v170)
    {
      v137 = 0;
      v138 = *(v174 + 16);
      v168 = (v136 + ((*(v174 + 80) + 32) & ~*(v174 + 80)));
      v169 = v138;
      v139 = *(v180 + 2);
      v140 = *(v174 + 72);
      v166 = v136;
      v167 = v140;
      v141 = (v25 + 8);
      v174 += 16;
      v171 = (v174 - 8);
      (v138)(v158, v168, v175);
      while (1)
      {
        sub_2528BF900();
        v144 = 0;
        do
        {
          if (v139 == v144)
          {
            (*v141)(v29, v24);
            v176 = 0u;
            v177 = 0u;
            v178 = 88;
            v142 = v158;
            sub_2527F0E44(&v176, v158, v172, v173);
            v143 = *v171;
            (*v171)(v142, v175);
            goto LABEL_74;
          }

          v145 = v144 + 1;
          sub_2527F2A94(&qword_27F4FC680, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
          v146 = sub_2528C0930();
          v144 = v145;
        }

        while ((v146 & 1) == 0);
        (*v141)(v29, v24);
        v143 = *v171;
        (*v171)(v158, v175);
LABEL_74:
        if (++v137 == v170)
        {
          break;
        }

        v169(v158, &v168[v167 * v137], v175);
      }

      v147 = v175;
    }

    else
    {

      v143 = *(v174 + 8);
      v147 = v57;
    }

    return (v143)(v164, v147);
  }

  sub_2527213D8(v35, &qword_27F4FD670, &qword_2528D3570);
  LOWORD(v176) = v154;
  LOWORD(v179) = 9;
  if ((_s14HomeAppIntents10DeviceTypeO2eeoiySbAC_ACtFZ_0(&v176, &v179) & 1) == 0)
  {
    LOWORD(v176) = v154;
    LOWORD(v179) = 23;
    if ((_s14HomeAppIntents10DeviceTypeO2eeoiySbAC_ACtFZ_0(&v176, &v179) & 1) == 0)
    {
      LOWORD(v176) = v154;
      LOWORD(v179) = 25;
      result = _s14HomeAppIntents10DeviceTypeO2eeoiySbAC_ACtFZ_0(&v176, &v179);
      if ((result & 1) == 0)
      {
        return result;
      }
    }
  }

  result = sub_2528BF740();
  v180 = result;
  v58 = v175;
  v164 = *(result + 16);
  if (!v164)
  {
LABEL_52:

    v111 = sub_2528BF740();
    v112 = *(v111 + 16);
    if (v112)
    {
      v180 = *(v174 + 16);
      v113 = *(v174 + 80);
      v165 = v111;
      v114 = v111 + ((v113 + 32) & ~v113);
      v167 = *(v174 + 72);
      v166 = (v151 + 16);
      v115 = (v150 + 48);
      v174 += 16;
      v116 = (v174 - 8);
      v117 = v155;
      do
      {
        v118 = v180;
        (v180)(v117, v114, v58);
        v119 = v168;
        v118(v168, v117, v58);
        v120 = v170;
        (*v166)(v170, v173, v171);
        v121 = v119;
        v122 = v161;
        DeviceEntity.init(staticService:snapshot:)(v121, v120, v161);
        if ((*v115)(v122, 1, v169) == 1)
        {
          (*v116)(v117, v58);
          sub_2527213D8(v122, &qword_27F4FD668, &qword_2528C8900);
        }

        else
        {
          v123 = v160;
          sub_25279F090(v122, v160);
          v124 = *v172;
          if (*(*v172 + 16) && (v125 = sub_252785BD4(v123), (v126 & 1) != 0))
          {
            v127 = *(*(v124 + 56) + 8 * v125);
          }

          else
          {
            v127 = MEMORY[0x277D84F90];
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v127 = sub_252737E74(0, *(v127 + 2) + 1, 1, v127);
          }

          v129 = *(v127 + 2);
          v128 = *(v127 + 3);
          if (v129 >= v128 >> 1)
          {
            v127 = sub_252737E74((v128 > 1), v129 + 1, 1, v127);
          }

          *(v127 + 2) = v129 + 1;
          v130 = &v127[40 * v129];
          *(v130 + 4) = 1;
          *(v130 + 5) = 0;
          *(v130 + 6) = 0;
          *(v130 + 7) = 0;
          v130[64] = 88;
          v131 = v172;
          v132 = swift_isUniquelyReferenced_nonNull_native();
          *&v176 = *v131;
          *v131 = 0x8000000000000000;
          v133 = v127;
          v134 = v160;
          sub_25278BC2C(v133, v160, v132);
          *v131 = v176;
          sub_25272E840(v134);
          v117 = v155;
          v58 = v175;
          (*v116)(v155, v175);
        }

        v114 += v167;
        --v112;
      }

      while (v112);
    }
  }

  v59 = 0;
  v163 = &v180[(*(v174 + 80) + 32) & ~*(v174 + 80)];
  v162 = (v174 + 16);
  LODWORD(v159) = *MEMORY[0x277D15850];
  v158 = (v149 + 104);
  v60 = (v149 + 8);
  v61 = (v174 + 8);
  while (v59 < *(v180 + 2))
  {
    (*(v174 + 16))(v49, v163 + *(v174 + 72) * v59, v58);
    sub_2528BF460();
    (*v158)(v166, v159, v167);
    sub_2527F2A94(&qword_27F4FE890, MEMORY[0x277D158E0], MEMORY[0x277D158F8]);
    sub_2528C0AD0();
    sub_2528C0AD0();
    if (v176 == v179)
    {
      v87 = *v60;
      v88 = v167;
      (*v60)(v166, v167);
      v87(v165, v88);
    }

    else
    {
      v89 = sub_2528C1060();
      v90 = *v60;
      v91 = v167;
      (*v60)(v166, v167);
      v90(v165, v91);

      if ((v89 & 1) == 0)
      {
        v58 = v175;
        result = (*v61)(v49, v175);
        goto LABEL_26;
      }
    }

    v92 = sub_2528BF970();
    v58 = v175;
    result = (*v61)(v49, v175);
    if (v92 != 2 && (v92 & 1) != 0)
    {
    }

LABEL_26:
    if (v164 == ++v59)
    {
      goto LABEL_52;
    }
  }

  __break(1u);
LABEL_86:
  __break(1u);
  return result;
}

double sub_2527F2690@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCE48, &unk_2528C61E0) + 48);
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD198, &qword_2528C7D10) + 48);
  v6 = *(a1 + v4);
  sub_25272E7DC(a1, a2);
  *(a2 + v5) = v6;

  return result;
}

uint64_t sub_2527F277C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v37[0] = type metadata accessor for DeviceEntity(0);
  v45 = *(v37[0] - 8);
  MEMORY[0x28223BE20](v37[0]);
  v11 = v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FE928, &qword_2528CE208);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = v37 - v13;
  v15 = -1 << *(a1 + 32);
  v16 = ~v15;
  v17 = *(a1 + 64);
  v18 = -v15;
  v38 = a1;
  v39 = a1 + 64;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  else
  {
    v19 = -1;
  }

  v40 = v16;
  v41 = 0;
  v42 = v19 & v17;
  v43 = a2;
  v44 = a3;

  v37[1] = a3;
  sub_2528BEA50();
  while (1)
  {
    sub_2527E367C(v14);
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD198, &qword_2528C7D10);
    if ((*(*(v20 - 8) + 48))(v14, 1, v20) == 1)
    {
      sub_25279F400(v38);
    }

    v21 = *(v20 + 48);
    sub_25279F090(v14, v11);
    v22 = *&v14[v21];
    v23 = *a5;
    v25 = sub_252785BD4(v11);
    v26 = v23[2];
    v27 = (v24 & 1) == 0;
    v28 = v26 + v27;
    if (__OFADD__(v26, v27))
    {
      break;
    }

    v29 = v24;
    if (v23[3] >= v28)
    {
      if (a4)
      {
        v32 = *a5;
        if ((v24 & 1) == 0)
        {
          goto LABEL_14;
        }
      }

      else
      {
        sub_2527E12F8();
        v32 = *a5;
        if ((v29 & 1) == 0)
        {
          goto LABEL_14;
        }
      }

LABEL_5:
      sub_25272E840(v11);
      *(v32[7] + 8 * v25) = v22;

      a4 = 1;
    }

    else
    {
      sub_2527DE0A0(v28, a4 & 1);
      v30 = sub_252785BD4(v11);
      if ((v29 & 1) != (v31 & 1))
      {
        goto LABEL_21;
      }

      v25 = v30;
      v32 = *a5;
      if (v29)
      {
        goto LABEL_5;
      }

LABEL_14:
      v32[(v25 >> 6) + 8] |= 1 << v25;
      sub_25279F090(v11, v32[6] + *(v45 + 72) * v25);
      *(v32[7] + 8 * v25) = v22;
      v33 = v32[2];
      v34 = __OFADD__(v33, 1);
      v35 = v33 + 1;
      if (v34)
      {
        goto LABEL_20;
      }

      v32[2] = v35;
      a4 = 1;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  result = sub_2528C10A0();
  __break(1u);
  return result;
}

uint64_t sub_2527F2A94(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2527F2AF4(void (**a1)(void, void), uint64_t a2)
{
  v4 = sub_2527F2CE4(a1, a2);
  if (!v3)
  {
    if (*(v4 + 16))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC6A0, &qword_2528D3C80);
      v5 = sub_2528C07B0();
      v6 = *(v5 - 8);
      v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
      v2 = swift_allocObject();
      *(v2 + 16) = xmmword_2528C3910;
      sub_2528C0790();
      (*(v6 + 104))(v2 + v7, *MEMORY[0x277D16EB8], v5);
    }

    else
    {

      v2 = type metadata accessor for HomeAppIntentError(0);
      sub_2527F5B6C(&qword_27F4FC2B0, type metadata accessor for HomeAppIntentError, &protocol conformance descriptor for HomeAppIntentError);
      swift_allocError();
      v10 = v9;
      sub_252870158(&v11);
      *v10 = v11;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
    }
  }

  return v2;
}

uint64_t sub_2527F2CE4(void (**a1)(void, void), uint64_t a2)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC208, &qword_2528C6B40);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v42 - v7;
  v9 = sub_2528C04F0();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v2;
  v14 = v2[1];
  v15 = v2[2];
  v47 = v2[3];
  LODWORD(v11) = *(v2 + 32);
  result = MEMORY[0x277D84F90];
  v51 = MEMORY[0x277D84F90];
  v48 = v11;
  if ((v11 & 0xFE) == 0x62)
  {
    v45 = v13;
    v46 = v12;
    sub_2528BFB20();
    sub_2528BFA40();
    if ((*(v10 + 48))(v8, 1, v9) == 1)
    {
      sub_2527213D8(v8, &qword_27F4FC208, &qword_2528C6B40);
      type metadata accessor for HomeAppIntentError(0);
      sub_2527F5B6C(&qword_27F4FC2B0, type metadata accessor for HomeAppIntentError, &protocol conformance descriptor for HomeAppIntentError);
      swift_allocError();
      *v17 = 45;
      swift_storeEnumTagMultiPayload();
      return swift_willThrow();
    }

    v49 = a1;
    (*(v10 + 32))(v46, v8, v9);
    LOBYTE(v50) = v45;
    if (RobotVacuumCleanerRunState.rawValue.getter() == 0x676E696E6E7572 && v18 == 0xE700000000000000)
    {
    }

    else
    {
      v19 = sub_2528C1060();

      if ((v19 & 1) == 0)
      {
        v20 = v49;
        goto LABEL_35;
      }
    }

    v20 = v49;
    v21 = sub_2527F5234(v14, v49, a2);
    if (v3)
    {
      return (*(v10 + 8))(v46, v9);
    }

    sub_252736884(v21);
    if (v15)
    {
      v22 = *(v15 + 16);
      v23 = MEMORY[0x277D84F90];
      if (v22)
      {
        v42 = a2;
        v43 = v10;
        v50 = MEMORY[0x277D84F90];
        sub_25282EEDC(0, v22, 0);
        v23 = v50;
        v24 = (v15 + 32);
        *&v25 = 134217984;
        v44 = v25;
        do
        {
          v27 = *v24++;
          v26 = v27;
          if (v27 < 0x100000000)
          {
            if (v26 < 0)
            {
              if (qword_27F4FBB40 != -1)
              {
                swift_once();
              }

              v32 = sub_2528C08B0();
              __swift_project_value_buffer(v32, qword_27F5025C8);
              v33 = sub_2528C0890();
              v34 = sub_2528C0D00();
              if (os_log_type_enabled(v33, v34))
              {
                v35 = swift_slowAlloc();
                *v35 = v44;
                *(v35 + 4) = v26;
                _os_log_impl(&dword_252711000, v33, v34, "Tried to convert a Int lower than 0 to UInt32: %ld", v35, 0xCu);
                MEMORY[0x2530A8D80](v35, -1, -1);
              }

              LODWORD(v26) = 0;
            }
          }

          else
          {
            if (qword_27F4FBB40 != -1)
            {
              swift_once();
            }

            v28 = sub_2528C08B0();
            __swift_project_value_buffer(v28, qword_27F5025C8);
            v29 = sub_2528C0890();
            v30 = sub_2528C0D00();
            if (os_log_type_enabled(v29, v30))
            {
              v31 = swift_slowAlloc();
              *v31 = v44;
              *(v31 + 4) = v26;
              _os_log_impl(&dword_252711000, v29, v30, "Tried to convert a Int larger than max to UInt32: %ld", v31, 0xCu);
              MEMORY[0x2530A8D80](v31, -1, -1);
            }

            LODWORD(v26) = -1;
          }

          v50 = v23;
          v37 = *(v23 + 16);
          v36 = *(v23 + 24);
          if (v37 >= v36 >> 1)
          {
            sub_25282EEDC((v36 > 1), v37 + 1, 1);
            v23 = v50;
          }

          *(v23 + 16) = v37 + 1;
          *(v23 + 4 * v37 + 32) = v26;
          --v22;
          v20 = v49;
        }

        while (v22);
        a2 = v42;
        v10 = v43;
      }

      v38 = v48;
      if (v48)
      {
        goto LABEL_31;
      }
    }

    else
    {
      v23 = 0;
      v38 = v48;
      if (v48)
      {
LABEL_31:
        v39 = 0;
LABEL_34:
        LOBYTE(v50) = v38 & 1;
        v40 = sub_2527F32F4(v23, v39 | ((v38 & 1) << 32), a2);

        sub_252736884(v40);
LABEL_35:
        LOBYTE(v50) = v45;
        v41 = sub_2527F3EB0(v20, a2);
        if (v3)
        {
          (*(v10 + 8))(v46, v9);
        }

        else
        {
          sub_252736884(v41);
          (*(v10 + 8))(v46, v9);
          return v51;
        }
      }
    }

    v39 = Int.uint32.getter(v47);
    goto LABEL_34;
  }

  return result;
}

uint64_t sub_2527F32F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v96 = a3;
  v6 = sub_2528BF130();
  v100 = *(v6 - 8);
  v101 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v86 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC2A8, &qword_2528C3958);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v86 - v10;
  v97 = sub_2528BF1E0();
  v12 = *(v97 - 8);
  v13 = MEMORY[0x28223BE20](v97);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v86 - v15;
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v86 - v18;
  MEMORY[0x28223BE20](v17);
  v98 = &v86 - v21;
  v22 = MEMORY[0x277D84F90];
  if (a1 || (a2 & 0x100000000) == 0)
  {
    v91 = v20;
    v93 = v3;
    sub_2528C02A0();
    v23 = v97;
    if ((*(v12 + 48))(v11, 1, v97) != 1)
    {
      v92 = v12;
      (*(v12 + 32))(v98, v11, v23);
      v25 = v23;
      if (a1)
      {
        v26 = v99;
        if (qword_27F4FBB40 != -1)
        {
          swift_once();
        }

        v27 = sub_2528C08B0();
        __swift_project_value_buffer(v27, qword_27F5025C8);
        v28 = v92;
        (*(v92 + 16))(v19, v98, v23);

        v29 = sub_2528C0890();
        v30 = sub_2528C0D10();

        if (os_log_type_enabled(v29, v30))
        {
          v31 = swift_slowAlloc();
          v100 = swift_slowAlloc();
          v102 = v100;
          *v31 = 136446466;
          v32 = MEMORY[0x2530A81A0](a1, MEMORY[0x277D84CC0]);
          LODWORD(v95) = v30;
          v34 = sub_2527389AC(v32, v33, &v102);

          *(v31 + 4) = v34;
          *(v31 + 12) = 2080;
          sub_2528BF190();
          v35 = v26;
          v36 = MEMORY[0x2530A81A0]();
          v38 = v37;

          v39 = *(v28 + 8);
          v39(v19, v97);
          v40 = v36;
          v26 = v35;
          v25 = v97;
          v41 = sub_2527389AC(v40, v38, &v102);
          v42 = v39;

          *(v31 + 14) = v41;
          _os_log_impl(&dword_252711000, v29, v95, "Selecting areaIDs %{public}s from avaliable areas: %s", v31, 0x16u);
          v43 = v100;
          swift_arrayDestroy();
          MEMORY[0x2530A8D80](v43, -1, -1);
          MEMORY[0x2530A8D80](v31, -1, -1);
        }

        else
        {

          v42 = *(v28 + 8);
          v42(v19, v25);
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC6E0, &qword_2528C47B8);
        v44 = *(sub_2528BF2E0() - 8);
        v45 = (*(v44 + 80) + 32) & ~*(v44 + 80);
        v22 = swift_allocObject();
        *(v22 + 16) = xmmword_2528C3910;
        sub_2527F46F4(a1, v96, v22 + v45);
        if (!v26)
        {
          v42(v98, v25);
          return v22;
        }

        v42(v98, v25);
      }

      else
      {
        if ((a2 & 0x100000000) != 0)
        {
          (*(v92 + 8))(v98, v23);
          return v22;
        }

        if (qword_27F4FBB40 != -1)
        {
          swift_once();
        }

        v46 = sub_2528C08B0();
        v47 = __swift_project_value_buffer(v46, qword_27F5025C8);
        v48 = v92;
        v87 = *(v92 + 16);
        v88 = v92 + 16;
        v87(v16, v98, v25);
        v89 = v47;
        v49 = sub_2528C0890();
        v50 = sub_2528C0D10();
        if (os_log_type_enabled(v49, v50))
        {
          v51 = swift_slowAlloc();
          v95 = swift_slowAlloc();
          v102 = v95;
          *v51 = 67240450;
          *(v51 + 4) = a2;
          *(v51 + 8) = 2080;
          LODWORD(v94) = v50;
          v52 = sub_2528BF170();
          if (v52)
          {
            v53 = v52;
          }

          else
          {
            v53 = v22;
          }

          v54 = sub_2528BF1D0();
          v86 = MEMORY[0x2530A81A0](v53, v54);
          v56 = v55;

          v90 = *(v48 + 8);
          v90(v16, v97);
          v57 = sub_2527389AC(v86, v56, &v102);
          v25 = v97;

          *(v51 + 10) = v57;
          _os_log_impl(&dword_252711000, v49, v94, "Selecting mapID %{public}u from avaliable maps: %s", v51, 0x12u);
          v58 = v95;
          __swift_destroy_boxed_opaque_existential_0Tm(v95);
          MEMORY[0x2530A8D80](v58, -1, -1);
          MEMORY[0x2530A8D80](v51, -1, -1);
        }

        else
        {

          v90 = *(v48 + 8);
          v90(v16, v25);
        }

        v59 = sub_2528BF180();
        v60 = *(v59 + 16);
        v61 = v99;
        if (v60)
        {
          v102 = v22;
          sub_25282EEDC(0, v60, 0);
          v62 = v102;
          v63 = *(v100 + 16);
          v64 = *(v100 + 80);
          v86 = v59;
          v65 = v59 + ((v64 + 32) & ~v64);
          v94 = *(v100 + 72);
          v95 = v63;
          v100 += 16;
          v66 = (v100 - 8);
          do
          {
            v67 = v101;
            (v95)(v8, v65, v101);
            v68 = sub_2528BF110();
            (*v66)(v8, v67);
            v102 = v62;
            v70 = *(v62 + 16);
            v69 = *(v62 + 24);
            if (v70 >= v69 >> 1)
            {
              sub_25282EEDC((v69 > 1), v70 + 1, 1);
              v62 = v102;
            }

            *(v62 + 16) = v70 + 1;
            *(v62 + 4 * v70 + 32) = v68;
            v65 += v94;
            --v60;
          }

          while (v60);

          v61 = v99;
          v25 = v97;
        }

        else
        {

          v62 = MEMORY[0x277D84F90];
        }

        v71 = v91;
        v87(v91, v98, v25);

        v72 = sub_2528C0890();
        v73 = sub_2528C0D10();

        if (os_log_type_enabled(v72, v73))
        {
          v74 = swift_slowAlloc();
          v100 = swift_slowAlloc();
          v102 = v100;
          *v74 = 136446466;
          v75 = MEMORY[0x2530A81A0](v62, MEMORY[0x277D84CC0]);
          LODWORD(v99) = v73;
          v77 = sub_2527389AC(v75, v76, &v102);

          *(v74 + 4) = v77;
          *(v74 + 12) = 2080;
          sub_2528BF190();
          v78 = MEMORY[0x2530A81A0]();
          v80 = v79;

          v90(v71, v97);
          v81 = sub_2527389AC(v78, v80, &v102);
          v25 = v97;

          *(v74 + 14) = v81;
          _os_log_impl(&dword_252711000, v72, v99, "Using areaIDs %{public}s from avaliable areas: %s", v74, 0x16u);
          v82 = v100;
          swift_arrayDestroy();
          MEMORY[0x2530A8D80](v82, -1, -1);
          MEMORY[0x2530A8D80](v74, -1, -1);
        }

        else
        {

          v90(v71, v25);
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC6E0, &qword_2528C47B8);
        v83 = *(sub_2528BF2E0() - 8);
        v84 = (*(v83 + 80) + 32) & ~*(v83 + 80);
        v22 = swift_allocObject();
        *(v22 + 16) = xmmword_2528C3910;
        sub_2527F46F4(v62, v96, v22 + v84);
        if (!v61)
        {

          v90(v98, v25);
          return v22;
        }

        v90(v98, v25);
      }

      *(v22 + 16) = 0;

      return v22;
    }

    sub_2527213D8(v11, &qword_27F4FC2A8, &qword_2528C3958);
    type metadata accessor for HomeAppIntentError(0);
    sub_2527F5B6C(&qword_27F4FC2B0, type metadata accessor for HomeAppIntentError, &protocol conformance descriptor for HomeAppIntentError);
    swift_allocError();
    *v24 = 45;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }

  return v22;
}

char *sub_2527F3EB0(void (**a1)(void, void), uint64_t a2)
{
  v74 = a2;
  v78 = a1;
  v3 = sub_2528BF2E0();
  v77 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v81 = &v62 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FE938, &qword_2528CE220);
  v80 = *(v5 - 8);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v8 = &v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v62 - v9;
  v11 = sub_2528BECF0();
  v79 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v62 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_2528BFB20();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v62 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_2528C0450();
  v19 = MEMORY[0x28223BE20](v18);
  v22 = *v2;
  if ((v22 - 7) < 0x14)
  {
    goto LABEL_2;
  }

  v72 = v11;
  v73 = v14;
  v68 = v17;
  v69 = v13;
  v29 = v79;
  v75 = v10;
  v76 = v3;
  v30 = v15;
  v31 = v80;
  if (((1 << v22) & 0x65) != 0)
  {
    v32 = v78;
    v46 = &v62 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
    v70 = v19;
    v33 = v21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FE940, &qword_2528CE228);
    v34 = *(v31 + 72);
    v67 = *(v31 + 80);
    v71 = swift_allocObject();
    *(v71 + 16) = xmmword_2528C17E0;
    v35 = *MEMORY[0x277D16910];
    v36 = *(v33 + 104);
    v65 = v33 + 104;
    v66 = v36;
    v36(v46, v35, v70);
    v63 = *(v30 + 16);
    v64 = v30 + 16;
    v37 = v68;
    v63(v68, v32, v73);
    v62 = v29[2];
    v79 = v29 + 2;
    v38 = v69;
    v39 = v74;
    v62(v69, v74, v72);
    sub_2528BF2D0();
    v80 = v34;
    v40 = *MEMORY[0x277D168E8];
    v41 = sub_2528C0440();
    v42 = v40;
    v43 = v71;
    (*(*(v41 - 8) + 104))(v46, v42, v41);
    v66(v46, *MEMORY[0x277D16940], v70);
    v63(v37, v78, v73);
    v44 = v39;
    v45 = v76;
    v62(v38, v44, v72);
    LODWORD(v46) = v67;
  }

  else
  {
    v54 = v15;
    v55 = v79;
    v57 = v68;
    v56 = v69;
    if (((1 << v22) & 0x18) != 0)
    {
LABEL_2:
      v23 = type metadata accessor for HomeAppIntentError(0);
      sub_2527F5B6C(&qword_27F4FC2B0, type metadata accessor for HomeAppIntentError, &protocol conformance descriptor for HomeAppIntentError);
      swift_allocError();
      v25 = v24;
      v82 = v22;
      v26 = RobotVacuumCleanerRunState.rawValue.getter();
      *v25 = 45;
      *(v25 + 8) = v26;
      *(v25 + 16) = v27;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      return v23;
    }

    v58 = &v62 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
    v70 = v19;
    v59 = v21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FE940, &qword_2528CE228);
    v46 = *(v31 + 80);
    v80 = *(v31 + 72);
    v60 = swift_allocObject();
    *(v60 + 16) = xmmword_2528C3910;
    v71 = v60 + ((v46 + 32) & ~v46);
    v43 = v60;
    LODWORD(v67) = *MEMORY[0x277D168F8];
    v61 = sub_2528C0440();
    (*(*(v61 - 8) + 104))(v58, v67, v61);
    (*(v59 + 104))(v58, *MEMORY[0x277D16940], v70);
    (*(v54 + 16))(v57, v78, v73);
    v55[2](v56, v74, v72);
    v45 = v76;
  }

  sub_2528BF2D0();
  v47 = *(v43 + 16);
  v48 = v75;
  if (v47)
  {
    v71 = v43;
    v49 = v43 + ((v46 + 32) & ~v46);
    v78 = (v77 + 32);
    v79 = (v77 + 48);
    v23 = MEMORY[0x277D84F90];
    v50 = v45;
    do
    {
      sub_25272006C(v49, v48, &qword_27F4FE938, &qword_2528CE220);
      sub_2527F5BB4(v48, v8);
      if ((*v79)(v8, 1, v50) == 1)
      {
        sub_2527213D8(v8, &qword_27F4FE938, &qword_2528CE220);
      }

      else
      {
        v51 = *v78;
        (*v78)(v81, v8, v50);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v23 = sub_252738498(0, *(v23 + 2) + 1, 1, v23);
        }

        v53 = *(v23 + 2);
        v52 = *(v23 + 3);
        if (v53 >= v52 >> 1)
        {
          v23 = sub_252738498((v52 > 1), v53 + 1, 1, v23);
        }

        *(v23 + 2) = v53 + 1;
        v50 = v76;
        v51(&v23[((*(v77 + 80) + 32) & ~*(v77 + 80)) + *(v77 + 72) * v53], v81);
        v48 = v75;
      }

      v49 += v80;
      --v47;
    }

    while (v47);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return v23;
}

uint64_t sub_2527F46F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v69 = a2;
  v84 = a1;
  v73 = a3;
  v4 = sub_2528BF290();
  v72 = *(v4 - 8);
  v5 = MEMORY[0x28223BE20](v4);
  v71 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v68 = &v60 - v7;
  v67 = sub_2528BECF0();
  v66 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v82 = &v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = sub_2528C0460();
  v81 = *(v85 - 8);
  MEMORY[0x28223BE20](v85);
  v70 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2528C04F0();
  v79 = *(v10 - 8);
  v80 = v10;
  MEMORY[0x28223BE20](v10);
  v78 = &v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_2528C0450();
  v74 = *(v76 - 8);
  MEMORY[0x28223BE20](v76);
  v75 = (&v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC288, &qword_2528C3950);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v77 = &v60 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v83 = &v60 - v16;
  v90 = sub_2528BF130();
  v17 = *(v90 - 8);
  MEMORY[0x28223BE20](v90);
  v19 = &v60 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC2A8, &qword_2528C3958);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = &v60 - v21;
  v23 = sub_2528BF1E0();
  v24 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v26 = &v60 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = v3;
  sub_2528C02A0();
  if ((*(v24 + 48))(v22, 1, v23) == 1)
  {
    sub_2527213D8(v22, &qword_27F4FC2A8, &qword_2528C3958);
    type metadata accessor for HomeAppIntentError(0);
    sub_2527F5B6C(&qword_27F4FC2B0, type metadata accessor for HomeAppIntentError, &protocol conformance descriptor for HomeAppIntentError);
    swift_allocError();
    *v28 = 45;
    swift_storeEnumTagMultiPayload();
    return swift_willThrow();
  }

  else
  {
    v62 = v4;
    v63 = v24;
    v30 = *(v24 + 32);
    v64 = v23;
    v30(v26, v22, v23);
    v31 = sub_2528BF190();
    v32 = *(v31 + 16);
    v65 = v26;
    if (v32)
    {
      v61 = v3;
      v89[0] = MEMORY[0x277D84F90];
      sub_25282EEDC(0, v32, 0);
      v33 = v89[0];
      v34 = v17 + 16;
      v87 = *(v17 + 16);
      v35 = (*(v17 + 80) + 32) & ~*(v17 + 80);
      v60 = v31;
      v36 = v31 + v35;
      v86 = *(v34 + 56);
      v88 = v34;
      v37 = (v34 - 8);
      do
      {
        v38 = v90;
        v87(v19, v36, v90);
        v39 = sub_2528BF110();
        (*v37)(v19, v38);
        v89[0] = v33;
        v41 = *(v33 + 16);
        v40 = *(v33 + 24);
        if (v41 >= v40 >> 1)
        {
          sub_25282EEDC((v40 > 1), v41 + 1, 1);
          v33 = v89[0];
        }

        *(v33 + 16) = v41 + 1;
        *(v33 + 4 * v41 + 32) = v39;
        v36 += v86;
        --v32;
      }

      while (v32);

      v27 = v61;
      v42 = v85;
      v26 = v65;
    }

    else
    {

      v33 = MEMORY[0x277D84F90];
      v42 = v85;
    }

    v43 = sub_2527442AC(v33);

    v44 = v84;
    v45 = sub_2527F5A94(v84, v43);

    if (v45)
    {
      v46 = v75;
      *v75 = v44;
      v47 = *MEMORY[0x277D168C8];
      v48 = sub_2528C0420();
      (*(*(v48 - 8) + 104))(v46, v47, v48);
      (*(v74 + 104))(v46, *MEMORY[0x277D16918], v76);
      (*(v79 + 16))(v78, v27, v80);

      v49 = v83;
      sub_2528C0430();
      v50 = v77;
      sub_25272006C(v49, v77, &qword_27F4FC288, &qword_2528C3950);
      v51 = v81;
      if ((*(v81 + 48))(v50, 1, v42) == 1)
      {
        sub_2527213D8(v50, &qword_27F4FC288, &qword_2528C3950);
        type metadata accessor for HomeAppIntentError(0);
        sub_2527F5B6C(&qword_27F4FC2B0, type metadata accessor for HomeAppIntentError, &protocol conformance descriptor for HomeAppIntentError);
        swift_allocError();
        *v52 = 45;
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
        sub_2527213D8(v49, &qword_27F4FC288, &qword_2528C3950);
      }

      else
      {
        v54 = v70;
        (*(v51 + 32))(v70, v50, v42);
        (*(v66 + 16))(v82, v69, v67);
        v55 = v68;
        sub_2528C02D0();
        v90 = sub_2528BF0E0();
        v56 = *(v72 + 8);
        v57 = v62;
        v56(v55, v62);
        v58 = v71;
        sub_2528C02D0();
        sub_2528BF250();
        v56(v58, v57);
        v89[3] = v42;
        v89[4] = sub_2527F5B6C(&qword_27F4FC298, MEMORY[0x277D169E8], MEMORY[0x277D169D8]);
        boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(v89);
        (*(v51 + 16))(boxed_opaque_existential_0Tm, v54, v42);
        sub_2528BF2C0();
        (*(v51 + 8))(v54, v42);
        sub_2527213D8(v83, &qword_27F4FC288, &qword_2528C3950);
      }

      return (*(v63 + 8))(v65, v64);
    }

    else
    {
      type metadata accessor for HomeAppIntentError(0);
      sub_2527F5B6C(&qword_27F4FC2B0, type metadata accessor for HomeAppIntentError, &protocol conformance descriptor for HomeAppIntentError);
      swift_allocError();
      *v53 = 45;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      return (*(v63 + 8))(v26, v64);
    }
  }
}

char *sub_2527F5234(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v63 = a3;
  v69 = a1;
  v4 = sub_2528BFB20();
  v66 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v65 = &v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_2528BF290();
  v62 = *(v64 - 8);
  v6 = MEMORY[0x28223BE20](v64);
  v61 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v60 = &v54 - v8;
  v9 = sub_2528BECF0();
  v57 = *(v9 - 8);
  v58 = v9;
  MEMORY[0x28223BE20](v9);
  v67 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC288, &qword_2528C3950);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v54 - v12;
  v14 = sub_2528C0460();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v59 = &v54 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC208, &qword_2528C6B40);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v54 - v18;
  v20 = sub_2528C04F0();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = &v54 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = a2;
  sub_2528BFA40();
  v24 = v20;
  v25 = v21;
  if ((*(v21 + 48))(v19, 1, v24) == 1)
  {
    sub_2527213D8(v19, &qword_27F4FC208, &qword_2528C6B40);
  }

  else
  {
    (*(v21 + 32))(v23, v19, v24);
    if (sub_2528C0320())
    {
      v55 = v24;

      sub_25272972C(v69, v13);
      v26 = v15;
      v27 = (*(v15 + 48))(v13, 1, v14);
      v56 = v23;
      if (v27 != 1)
      {
        v43 = *(v15 + 32);
        v44 = v59;
        v43(v59, v13, v14);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC6E0, &qword_2528C47B8);
        v69 = v26;
        v45 = *(sub_2528BF2E0() - 8);
        v66 = (*(v45 + 80) + 32) & ~*(v45 + 80);
        v65 = swift_allocObject();
        *(v65 + 1) = xmmword_2528C3910;
        (*(v57 + 16))(v67, v63, v58);
        v46 = v60;
        sub_2528BFAB0();
        v63 = sub_2528BF0E0();
        v47 = *(v62 + 8);
        v48 = v64;
        v47(v46, v64);
        v49 = v61;
        sub_2528BFAB0();
        sub_2528BF250();
        v47(v49, v48);
        v70[3] = v14;
        v70[4] = sub_2527F5B6C(&qword_27F4FC298, MEMORY[0x277D169E8], MEMORY[0x277D169D8]);
        boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(v70);
        v51 = v69;
        (*(v69 + 16))(boxed_opaque_existential_0Tm, v44, v14);
        v52 = v65;
        sub_2528BF2C0();
        (*(v51 + 8))(v44, v14);
        (*(v25 + 8))(v56, v55);
        return v52;
      }

      sub_2527213D8(v13, &qword_27F4FC288, &qword_2528C3950);
      if (qword_27F4FBB40 != -1)
      {
        swift_once();
      }

      v28 = sub_2528C08B0();
      __swift_project_value_buffer(v28, qword_27F5025C8);
      v30 = v65;
      v29 = v66;
      (*(v66 + 16))(v65, v68, v4);

      v31 = sub_2528C0890();
      v32 = sub_2528C0CF0();

      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        v70[0] = v34;
        *v33 = 136315394;
        v35 = sub_2528BFAE0();
        v36 = v30;
        v38 = v37;
        (*(v29 + 8))(v36, v4);
        v39 = sub_2527389AC(v35, v38, v70);

        *(v33 + 4) = v39;
        *(v33 + 12) = 2080;
        v40 = MEMORY[0x2530A81A0](v69, &type metadata for RobotVacuumCleanerCleanMode);
        v42 = sub_2527389AC(v40, v41, v70);

        *(v33 + 14) = v42;
        _os_log_impl(&dword_252711000, v31, v32, "Failed to find clean mode on %s to match clean modes: %s", v33, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x2530A8D80](v34, -1, -1);
        MEMORY[0x2530A8D80](v33, -1, -1);
      }

      else
      {

        (*(v29 + 8))(v30, v4);
      }

      (*(v25 + 8))(v56, v55);
    }

    else
    {
      (*(v21 + 8))(v23, v24);
    }
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_2527F5A94(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    return 1;
  }

  v4 = 0;
  v5 = a1 + 32;
  v6 = a2 + 56;
  while (*(a2 + 16))
  {
    v7 = *(v5 + 4 * v4);
    v8 = MEMORY[0x2530A8770](*(a2 + 40), v7, 4);
    v9 = -1 << *(a2 + 32);
    v10 = v8 & ~v9;
    if (((*(v6 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
    {
      break;
    }

    ++v4;
    v11 = ~v9;
    while (*(*(a2 + 48) + 4 * v10) != v7)
    {
      v10 = (v10 + 1) & v11;
      if (((*(v6 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        return 0;
      }
    }

    if (v4 == v2)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_2527F5B6C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2527F5BB4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FE938, &qword_2528CE220);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2527F5C60(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v6 = sub_2528BE560();
  MEMORY[0x28223BE20](v6 - 8);
  v7 = sub_2528BE690();
  MEMORY[0x28223BE20](v7 - 8);
  result = MEMORY[0x277D84F90];
  v16 = MEMORY[0x277D84F90];
  v9 = *(a1 + 16);
  if (v9)
  {
    sub_2528BEA10();
    v10 = a1 + 32;
    do
    {
      sub_25276E828(v10, v15);
      v11 = __swift_project_boxed_opaque_existential_0(v15, v15[3]);
      MEMORY[0x28223BE20](v11);
      (*(v13 + 16))(v15 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
      sub_2528BE680();
      sub_2527F5EE0();
      sub_2528BEA00();
      v14 = __swift_destroy_boxed_opaque_existential_0Tm(v15);
      MEMORY[0x2530A8180](v14);
      if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_2528C0B50();
      }

      sub_2528C0B90();
      v10 += 40;
      --v9;
    }

    while (v9);
    return v16;
  }

  return result;
}

uint64_t sub_2527F5EE0()
{
  sub_2528BE560();
  sub_2527F5FB4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FE950, &unk_2528CE2B0);
  sub_2527F600C();
  return sub_2528C0DF0();
}

unint64_t sub_2527F5FB4()
{
  result = qword_27F4FE948;
  if (!qword_27F4FE948)
  {
    sub_2528BE560();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE948);
  }

  return result;
}

unint64_t sub_2527F600C()
{
  result = qword_27F4FE958;
  if (!qword_27F4FE958)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4FE950, &unk_2528CE2B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE958);
  }

  return result;
}

uint64_t sub_2527F6070(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v4[6] = *(type metadata accessor for DeviceEntity(0) - 8);
  v4[7] = swift_task_alloc();
  DeviceInfoEvent = type metadata accessor for GetDeviceInfoEvent(0);
  v4[8] = DeviceInfoEvent;
  v4[9] = *(DeviceInfoEvent - 8);
  v4[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2527F618C, 0, 0);
}

unint64_t sub_2527F618C()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 64);
  v4 = *(v0 + 32);
  v3 = *(v0 + 40);
  v5 = *(v0 + 24);
  *v1 = 0xD000000000000022;
  v1[1] = 0x80000002528E6150;
  sub_2527F8AAC(v3, v1 + v2[5]);
  __swift_project_boxed_opaque_existential_0(v4, v4[3]);
  result = sub_2528C0CB0();
  *(v1 + v2[6]) = result;
  v55 = v5;
  v7 = *(v5 + 16);
  *(v1 + v2[7]) = v7;
  if (v7)
  {
    v8 = 0;
    v9 = *(v0 + 48);
    v10 = *(v0 + 24) + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v11 = MEMORY[0x277D84F98];
    while (1)
    {
      if (v8 >= *(v55 + 16))
      {
        goto LABEL_47;
      }

      sub_25272E7DC(v10 + *(v9 + 72) * v8, *(v0 + 56));
      sub_2528BE6B0();
      v12 = *(v0 + 88);
      if ((v12 & 0xC000) == 0x4000)
      {
        LOBYTE(v12) = HIBYTE(v12) & 0x3F;
      }

      v13 = v12 + 1;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v56 = v11;
      result = sub_252791C7C(v13);
      v16 = *(v11 + 16);
      v17 = (v15 & 1) == 0;
      v18 = __OFADD__(v16, v17);
      v19 = v16 + v17;
      if (v18)
      {
        goto LABEL_48;
      }

      v20 = v15;
      if (*(v11 + 24) < v19)
      {
        break;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_11;
      }

      v28 = result;
      sub_2527E18F4();
      result = v28;
      v11 = v56;
      if ((v20 & 1) == 0)
      {
LABEL_12:
        *(v11 + 8 * (result >> 6) + 64) |= 1 << result;
        *(*(v11 + 48) + 8 * result) = v13;
        *(*(v11 + 56) + 8 * result) = 0;
        v22 = *(v11 + 16);
        v18 = __OFADD__(v22, 1);
        v23 = v22 + 1;
        if (v18)
        {
          goto LABEL_50;
        }

        *(v11 + 16) = v23;
      }

LABEL_14:
      v24 = *(v11 + 56);
      v25 = *(v24 + 8 * result);
      v26 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        goto LABEL_49;
      }

      ++v8;
      v27 = *(v0 + 56);
      *(v24 + 8 * result) = v26;
      result = sub_2527AADA0(v27, type metadata accessor for DeviceEntity);
      if (v7 == v8)
      {
        goto LABEL_20;
      }
    }

    sub_2527DE918(v19, isUniquelyReferenced_nonNull_native);
    result = sub_252791C7C(v13);
    if ((v20 & 1) != (v21 & 1))
    {

      return sub_2528C10A0();
    }

LABEL_11:
    if ((v20 & 1) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_14;
  }

  v11 = MEMORY[0x277D84F98];
LABEL_20:

  v29 = -1;
  v30 = -1 << *(v11 + 32);
  if (-v30 < 64)
  {
    v29 = ~(-1 << -v30);
  }

  v31 = v29 & *(v11 + 64);
  if (v31)
  {
    v32 = 0;
    v33 = __clz(__rbit64(v31));
    v34 = (v31 - 1) & v31;
    v35 = (63 - v30) >> 6;
LABEL_28:
    v38 = *(v11 + 48);
    v39 = *(v11 + 56);
    v40 = *(v38 + 8 * v33);
    v41 = *(v39 + 8 * v33);
    if (!v34)
    {
      goto LABEL_30;
    }

    do
    {
      v42 = v32;
LABEL_34:
      v43 = (v42 << 9) | (8 * __clz(__rbit64(v34)));
      v44 = *(v38 + v43);
      v34 &= v34 - 1;
      v45 = *(v39 + v43);
      if (v45 < v41)
      {
        v40 = v44;
        v41 = v45;
      }
    }

    while (v34);
LABEL_30:
    while (1)
    {
      v42 = v32 + 1;
      if (__OFADD__(v32, 1))
      {
        break;
      }

      if (v42 >= v35)
      {
        v46 = *(v0 + 40);

        sub_2527213D8(v46, &qword_27F4FCE00, &qword_2528C5D20);

        v47 = 0;
        goto LABEL_39;
      }

      v34 = *(v11 + 64 + 8 * v42);
      ++v32;
      if (v34)
      {
        v32 = v42;
        goto LABEL_34;
      }
    }

    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
  }

  else
  {
    v36 = 0;
    v35 = (63 - v30) >> 6;
    while (v35 - 1 != v31)
    {
      v32 = v31 + 1;
      v37 = *(v11 + 8 * v31 + 72);
      v36 -= 64;
      ++v31;
      if (v37)
      {
        v34 = (v37 - 1) & v37;
        v33 = __clz(__rbit64(v37)) - v36;
        goto LABEL_28;
      }
    }

    sub_2527213D8(*(v0 + 40), &qword_27F4FCE00, &qword_2528C5D20);

    v40 = 0;
    v47 = 1;
LABEL_39:
    v49 = *(v0 + 72);
    v48 = *(v0 + 80);
    v50 = *(v0 + 64);
    v51 = *(v0 + 32);
    v52 = *(v0 + 16);
    v53 = v48 + *(v50 + 32);
    *v53 = v40;
    *(v53 + 8) = v47;
    sub_2527F8BA0(v48, v52);
    (*(v49 + 56))(v52, 0, 1, v50);
    __swift_destroy_boxed_opaque_existential_0Tm(v51);

    v54 = *(v0 + 8);

    return v54();
  }

  return result;
}

unint64_t sub_2527F662C(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v3 = 0x6D614E746E657665;
    v4 = 0x6D617473656D6974;
    v5 = 0x65536E6F69746361;
    if (a1 != 3)
    {
      v5 = 0xD000000000000014;
    }

    if (a1 != 2)
    {
      v4 = v5;
    }

    if (a1)
    {
      v3 = 0x746E65696C63;
    }

    if (a1 <= 1u)
    {
      return v3;
    }

    else
    {
      return v4;
    }
  }

  else if (a1 > 7u)
  {
    if (a1 == 8)
    {
      return 0xD000000000000035;
    }

    else
    {
      return 0xD000000000000024;
    }
  }

  else
  {
    v1 = 0xD000000000000026;
    if (a1 != 6)
    {
      v1 = 0xD000000000000030;
    }

    if (a1 == 5)
    {
      return 0xD000000000000030;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_2527F67B4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2527F9A98(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2527F67F4(uint64_t a1)
{
  v2 = sub_2527F924C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2527F6830(uint64_t a1)
{
  v2 = sub_2527F924C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2527F686C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FE9F8, &qword_2528CE6A8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_2527F924C();
  sub_2528C11A0();
  v8[15] = 0;
  sub_2528C0FE0();
  if (!v1)
  {
    v8[14] = 1;
    sub_2528C0FC0();
    v8[13] = 2;
    sub_2528C1000();
    v8[12] = 3;
    sub_2528C0FC0();
    v8[11] = 4;
    sub_2528C0FF0();
    v8[10] = 5;
    sub_2528C0FF0();
    v8[9] = 6;
    sub_2528C0FF0();
    v8[8] = 7;
    sub_2528C0FF0();
    v8[7] = 8;
    sub_2528C0FF0();
    v8[6] = 9;
    sub_2528C0FF0();
    v8[5] = 10;
    sub_2528C0FF0();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_2527F6B34(uint64_t a1)
{
  v2 = sub_2527F90B4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2527F6B70(uint64_t a1)
{
  v2 = sub_2527F90B4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2527F6BF0(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FE9D0, &qword_2528CE698);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_2527F915C();
  sub_2528C11A0();
  v8[15] = 0;
  sub_2528C0FE0();
  if (!v1)
  {
    type metadata accessor for GetDeviceInfoEvent(0);
    v8[14] = 1;
    sub_2528BE890();
    sub_2527F91B0(&qword_27F4FE9E0, MEMORY[0x277CBA178], &protocol conformance descriptor for IntentSystemContext.Source);
    sub_2528C0FD0();
    v8[13] = 2;
    sub_2528C1010();
    v8[12] = 3;
    sub_2528C1010();
    v8[11] = 4;
    sub_2528C0FC0();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_2527F6E38()
{
  v1 = *v0;
  v2 = 0x6D614E746E657665;
  v3 = 0x61655373656D6F68;
  v4 = 0x6F43656369766564;
  if (v1 != 3)
  {
    v4 = 0xD000000000000012;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x656372756F73;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_2527F6EEC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2527F9E18(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2527F6F20(uint64_t a1)
{
  v2 = sub_2527F915C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2527F6F5C(uint64_t a1)
{
  v2 = sub_2527F915C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2527F70C0(void *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void), uint64_t a5)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v13 - v9;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  a4();
  sub_2528C11A0();
  v20 = 0;
  v11 = v13[1];
  sub_2528C0FE0();
  if (v11)
  {
    return (*(v8 + 8))(v10, v7);
  }

  v19 = 1;
  sub_2528C0FC0();
  v18 = 2;
  sub_2528C1000();
  v17 = 3;
  sub_2528C0FF0();
  v16 = 4;
  sub_2528C1010();
  v15 = 5;
  sub_2528C1010();
  v14 = 6;
  sub_2528C0FB0();
  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_2527F72F0(uint64_t a1)
{
  v2 = sub_2527F9108();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2527F732C(uint64_t a1)
{
  v2 = sub_2527F9108();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2527F73AC()
{
  v1 = *v0;
  sub_2528C1130();
  MEMORY[0x2530A87A0](v1);
  return sub_2528C1180();
}

uint64_t sub_2527F73F4(uint64_t a1)
{
  v2 = *v1;
  sub_2528C1130();
  MEMORY[0x2530A87A0](v2);
  return sub_2528C1180();
}

uint64_t sub_2527F7438()
{
  v1 = *v0;
  v2 = 0x6D614E746E657665;
  v3 = 0x7475626972747461;
  if (v1 != 5)
  {
    v3 = 0x74756F656D6974;
  }

  v4 = 0xD000000000000014;
  if (v1 != 3)
  {
    v4 = 0x7954656369766564;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x746E65696C63;
  if (v1 != 1)
  {
    v5 = 0x6D617473656D6974;
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

uint64_t sub_2527F7528(uint64_t a1)
{
  v2 = sub_2527F91F8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2527F7564(uint64_t a1)
{
  v2 = sub_2527F91F8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2527F75E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[26] = a2;
  v3[27] = a3;
  v3[25] = a1;
  v4 = sub_2528BFD70();
  v3[28] = v4;
  v3[29] = *(v4 - 8);
  v3[30] = swift_task_alloc();
  v5 = sub_2528C0CD0();
  v3[31] = v5;
  v3[32] = *(v5 - 8);
  v3[33] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FBBC0, &qword_2528C1800);
  v3[34] = swift_task_alloc();
  v6 = sub_2528BEC90();
  v3[35] = v6;
  v3[36] = *(v6 - 8);
  v3[37] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCE00, &qword_2528C5D20);
  v3[38] = swift_task_alloc();
  v7 = sub_2528BFCE0();
  v3[39] = v7;
  v3[40] = *(v7 - 8);
  v3[41] = swift_task_alloc();
  v3[42] = swift_task_alloc();
  v8 = sub_2528BEE30();
  v3[43] = v8;
  v3[44] = *(v8 - 8);
  v3[45] = swift_task_alloc();
  v3[46] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD050, &qword_2528CE320);
  v3[47] = v9;
  v3[48] = *(v9 - 8);
  v3[49] = swift_task_alloc();
  v3[50] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD080, &qword_2528C74B0);
  v3[51] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCD98, &qword_2528C6200);
  v3[52] = swift_task_alloc();
  v10 = sub_2528BF400();
  v3[53] = v10;
  v3[54] = *(v10 - 8);
  v3[55] = swift_task_alloc();
  v3[56] = swift_task_alloc();
  sub_2528BEFC0();
  v11 = swift_task_alloc();
  v3[57] = v11;
  *v11 = v3;
  v11[1] = sub_2527F7A28;

  return MEMORY[0x28216EA40]();
}

uint64_t sub_2527F7A28(uint64_t a1)
{
  v3 = *v1;
  v6 = *v1;
  *(v3 + 464) = a1;

  v4 = swift_task_alloc();
  *(v3 + 472) = v4;
  *v4 = v6;
  v4[1] = sub_2527F7B74;

  return sub_25279D1DC(a1);
}

uint64_t sub_2527F7B74(uint64_t a1)
{
  *(*v1 + 480) = a1;

  return MEMORY[0x2822009F8](sub_2527F7C74, 0, 0);
}

uint64_t sub_2527F7C74()
{
  v99 = (v0 + 489);
  v2 = v0[60];
  v3 = v0[54];
  v108 = v0[47];
  v4 = v0[44];

  v5 = v2 + 64;
  v6 = -1;
  v7 = -1 << *(v2 + 32);
  if (-v7 < 64)
  {
    v6 = ~(-1 << -v7);
  }

  v8 = v6 & *(v2 + 64);
  v9 = (63 - v7) >> 6;
  v104 = (v4 + 8);
  v106 = (v3 + 8);
  v102 = v2;

  v11 = 0;
  v100 = v2 + 64;
  v116 = v0;
  if (v8)
  {
    while (1)
    {
      v12 = v11;
LABEL_8:
      v13 = v0[55];
      v111 = v0[53];
      v15 = v0[49];
      v14 = v0[50];
      v16 = v0[46];
      v113 = v0[43];
      v115 = v0[26];
      v17 = __clz(__rbit64(v8)) | (v12 << 6);
      v18 = *(v102 + 48);
      v19 = sub_2528BECF0();
      (*(*(v19 - 8) + 16))(v14, v18 + *(*(v19 - 8) + 72) * v17, v19);
      v20 = *(v102 + 56);
      v21 = sub_2528BEEC0();
      (*(*(v21 - 8) + 16))(v14 + *(v108 + 48), v20 + *(*(v21 - 8) + 72) * v17, v21);
      sub_2527F8A3C(v14, v15);
      sub_2528BEE70();
      sub_2528BF2F0();
      (*v106)(v13, v111);
      v22 = sub_2528BEE20();
      v24 = v23;
      (*v104)(v16, v113);
      type metadata accessor for SceneEntity(0);
      sub_2528BE6B0();
      v0 = v116;
      v3 = v116[24];
      if (v22 == v116[23] && v24 == v3)
      {
        break;
      }

      v25 = sub_2528C1060();

      if (v25)
      {
        goto LABEL_15;
      }

      v8 &= v8 - 1;
      v10 = sub_2527213D8(v116[49], &qword_27F4FD050, &qword_2528CE320);
      v11 = v12;
      v5 = v100;
      if (!v8)
      {
        goto LABEL_5;
      }
    }

LABEL_15:
    v29 = v116[51];
    v31 = v116[48];
    v30 = v116[49];
    v32 = v116[47];

    sub_2527F8A3C(v30, v29);
    (*(v31 + 56))(v29, 0, 1, v32);
LABEL_16:

    v33 = v0[51];
    v34 = (*(v0[48] + 48))(v33, 1, v0[47]);
    v35 = v0[53];
    v36 = v0[54];
    v37 = v0[52];
    if (v34 == 1)
    {
      sub_2527213D8(v0[27], &qword_27F4FCE00, &qword_2528C5D20);
      sub_2527213D8(v33, &qword_27F4FD080, &qword_2528C74B0);
      (*(v36 + 56))(v37, 1, 1, v35);
LABEL_20:
      sub_2527213D8(v0[52], &qword_27F4FCD98, &qword_2528C6200);
LABEL_21:
      sub_2527AADA0(v0[26], type metadata accessor for SceneEntity);
      v109 = 0;
      v112 = 0;
      v115 = 0;
      v107 = 0;
      v114 = 0;
      v105 = 0;
      v1 = 0;
LABEL_22:
      v41 = v0[25];

      *v41 = v109;
      v41[1] = v112;
      v41[2] = v115;
      v41[3] = v107;
      v41[4] = v1;
      v41[5] = v114;
      v41[6] = v105;
      v42 = v0[1];

      return v42();
    }

    v38 = *(v108 + 48);
    sub_2528BEE70();
    v39 = sub_2528BEEC0();
    (*(*(v39 - 8) + 8))(v33 + v38, v39);
    (*(v36 + 56))(v37, 0, 1, v35);
    v40 = sub_2528BECF0();
    (*(*(v40 - 8) + 8))(v33, v40);
    if ((*(v36 + 48))(v37, 1, v35) == 1)
    {
      sub_2527213D8(v0[27], &qword_27F4FCE00, &qword_2528C5D20);
      goto LABEL_20;
    }

    (*(v0[54] + 32))(v0[56], v0[52], v0[53]);
    v44 = sub_2528BF380();
    if (!*(v44 + 16) || (v45 = v0[26], v46 = type metadata accessor for SceneEntity(0), v47 = sub_252785C40(v45 + *(v46 + 20)), (v48 & 1) == 0))
    {
      v60 = v0[56];
      v61 = v0[53];
      v62 = v0[27];

      sub_2527213D8(v62, &qword_27F4FCE00, &qword_2528C5D20);
      (*v106)(v60, v61);
      goto LABEL_21;
    }

    v50 = v0[41];
    v49 = v0[42];
    v51 = v0[39];
    v52 = v0[40];
    v53 = v0[38];
    v54 = v0[27];
    (*(v52 + 16))(v50, *(v44 + 56) + *(v52 + 72) * v47, v51);

    (*(v52 + 32))(v49, v50, v51);
    sub_2527F8AAC(v54, v53);
    v55 = sub_2528BE890();
    v56 = *(v55 - 8);
    v57 = (*(v56 + 48))(v53, 1, v55);
    v58 = v0[38];
    if (v57 == 1)
    {
      sub_2527213D8(v0[38], &qword_27F4FCE00, &qword_2528C5D20);
      v59 = 0;
    }

    else
    {
      v59 = sub_2528BE880();
      (*(v56 + 8))(v58, v55);
    }

    v63 = v0[36];
    v3 = v0[37];
    v65 = v0[34];
    v64 = v0[35];
    v67 = v0[31];
    v66 = v0[32];
    *(v0 + 488) = v57 == 1;
    sub_2528BEC80();
    sub_2528BEC60();
    v1 = v68;
    (*(v63 + 8))(v3, v64);
    sub_2528BFC80();
    LODWORD(v3) = (*(v66 + 48))(v65, 1, v67);
    v69 = v0[34];
    v115 = v59;
    if (v3 == 1)
    {
      sub_2527213D8(v69, &qword_27F4FBBC0, &qword_2528C1800);
      v114 = 0;
LABEL_49:
      v74 = v0[45];
      v75 = v0[42];
      v76 = v0[43];
      v95 = v0[40];
      v96 = v0[39];
      v97 = v0[53];
      v77 = v0[29];
      v78 = v0[30];
      v79 = v0[28];
      v92 = v0[27];
      v93 = v0[56];
      v110 = v0[26];
      v112 = 0x80000002528E6120;
      *(v0 + 496) = v3 == 1;
      sub_2528BF2F0();
      v80 = sub_2528BEDD0();
      (*v104)(v74, v76);
      v94 = v80 & 1;
      v81 = sub_2528BFC90();
      v82 = *(v77 + 104);
      v82(v78, *MEMORY[0x277D15FC0], v79);
      LOBYTE(v74) = sub_2528195D4(v78, v81);

      v83 = *(v77 + 8);
      v83(v78, v79);
      v91 = v74 & 1;
      v84 = sub_2528BFC90();
      v82(v78, *MEMORY[0x277D16020], v79);
      LOBYTE(v74) = sub_2528195D4(v78, v84);

      v83(v78, v79);
      v90 = v74 & 1;
      v85 = sub_2528BFC90();
      v82(v78, *MEMORY[0x277D15FD8], v79);
      LOBYTE(v74) = sub_2528195D4(v78, v85);

      v83(v78, v79);
      v103 = v74 & 1;
      v86 = sub_2528BFC90();
      v82(v78, *MEMORY[0x277D15FE0], v79);
      LOBYTE(v74) = sub_2528195D4(v78, v86);

      v83(v78, v79);
      v101 = v74 & 1;
      v87 = sub_2528BFC90();
      v82(v78, *MEMORY[0x277D16000], v79);
      LOBYTE(v74) = sub_2528195D4(v78, v87);

      v83(v78, v79);
      v98 = v74 & 1;
      v88 = sub_2528BFC90();
      v82(v78, *MEMORY[0x277D15FF0], v79);
      LOBYTE(v74) = sub_2528195D4(v78, v88);

      sub_2527213D8(v92, &qword_27F4FCE00, &qword_2528C5D20);
      v83(v78, v79);
      (*(v95 + 8))(v75, v96);
      (*v106)(v93, v97);
      v0[9] = 0xD000000000000022;
      v0[10] = 0x80000002528E6120;
      v0[11] = v115;
      LOBYTE(v77) = *(v0 + 488);
      *(v0 + 96) = v77;
      *(v0 + 97) = *v99;
      *(v0 + 25) = *(v99 + 3);
      v0[13] = v1;
      v0[14] = v114;
      v89 = *(v0 + 496);
      *(v0 + 120) = v89;
      *(v0 + 121) = v94;
      *(v0 + 122) = v91;
      *(v0 + 123) = v90;
      *(v0 + 124) = v103;
      *(v0 + 125) = v101;
      *(v0 + 126) = v98;
      *(v0 + 127) = v74 & 1;
      v105 = v0[15];
      v107 = v0[12];
      sub_2527F8B1C((v0 + 9), (v0 + 16));
      sub_2527AADA0(v110, type metadata accessor for SceneEntity);
      v109 = 0xD000000000000022;
      v0[2] = 0xD000000000000022;
      v0[3] = 0x80000002528E6120;
      v0[4] = v115;
      *(v0 + 40) = v77;
      *(v0 + 41) = *v99;
      *(v0 + 11) = *(v99 + 3);
      v0[6] = v1;
      v0[7] = v114;
      *(v0 + 64) = v89;
      *(v0 + 65) = v94;
      *(v0 + 66) = v91;
      *(v0 + 67) = v90;
      *(v0 + 68) = v103;
      *(v0 + 69) = v101;
      *(v0 + 70) = v98;
      *(v0 + 71) = v74 & 1;
      sub_2527B5DB0((v0 + 2));
      goto LABEL_22;
    }

    v70 = v0[32];
    v71 = v0[33];
    v72 = v0[31];
    (*(v70 + 16))(v71, v69, v72);
    v10 = (*(v70 + 88))(v71, v72);
    if (v10 == *MEMORY[0x277D16EF0])
    {
      v73 = 0;
LABEL_48:
      v114 = v73;
      (*(v0[32] + 8))(v0[34], v0[31]);
      goto LABEL_49;
    }

    if (v10 == *MEMORY[0x277D16F10])
    {
      v73 = 1;
      goto LABEL_48;
    }
  }

  else
  {
LABEL_5:
    while (1)
    {
      v12 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v12 >= v9)
      {
        v26 = v0[51];
        v27 = v0[47];
        v28 = v0[48];

        (*(v28 + 56))(v26, 1, 1, v27);
        goto LABEL_16;
      }

      v8 = *(v5 + 8 * v12);
      ++v11;
      if (v8)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  if (v10 == *MEMORY[0x277D16F38])
  {
    v73 = 2;
    goto LABEL_48;
  }

  if (v10 == *MEMORY[0x277D16F28])
  {
    v73 = 3;
    goto LABEL_48;
  }

  if (v10 == *MEMORY[0x277D16EF8])
  {
    v73 = 4;
    goto LABEL_48;
  }

  if (v10 == *MEMORY[0x277D16F00])
  {
    v73 = 5;
    goto LABEL_48;
  }

  if (v10 == *MEMORY[0x277D16F18])
  {
    v73 = 6;
    goto LABEL_48;
  }

  return sub_2528C1050();
}

uint64_t sub_2527F8A3C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD050, &qword_2528CE320);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2527F8AAC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCE00, &qword_2528C5D20);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for GetDeviceInfoEvent(uint64_t a1)
{
  result = qword_27F4FE968;
  if (!qword_27F4FE968)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2527F8BA0(uint64_t a1, uint64_t a2)
{
  DeviceInfoEvent = type metadata accessor for GetDeviceInfoEvent(0);
  (*(*(DeviceInfoEvent - 8) + 32))(a2, a1, DeviceInfoEvent);
  return a2;
}

__n128 __swift_memcpy73_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 57) = *(a2 + 57);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

void sub_2527F8C70(uint64_t a1)
{
  sub_2527F8D14(319);
  if (v1 <= 0x3F)
  {
    sub_2527F8D6C();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2527F8D14(uint64_t a1)
{
  if (!qword_27F4FE978)
  {
    sub_2528BE890();
    v1 = sub_2528C0DC0();
    if (!v2)
    {
      atomic_store(v1, &qword_27F4FE978);
    }
  }
}

void sub_2527F8D6C()
{
  if (!qword_27F4FE980)
  {
    v0 = sub_2528C0DC0();
    if (!v1)
    {
      atomic_store(v0, &qword_27F4FE980);
    }
  }
}

uint64_t sub_2527F8DBC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 73))
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

uint64_t sub_2527F8E04(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 73) = 1;
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

    *(result + 73) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2527F8E68(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_2527F8EB0(uint64_t result, int a2, int a3)
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

unint64_t sub_2527F8F10()
{
  result = qword_27F4FE988;
  if (!qword_27F4FE988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE988);
  }

  return result;
}

unint64_t sub_2527F8F68()
{
  result = qword_27F4FE990;
  if (!qword_27F4FE990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE990);
  }

  return result;
}

unint64_t sub_2527F8FC0()
{
  result = qword_27F4FE998;
  if (!qword_27F4FE998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE998);
  }

  return result;
}

unint64_t sub_2527F9060()
{
  result = qword_27F4FE9A8;
  if (!qword_27F4FE9A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE9A8);
  }

  return result;
}

unint64_t sub_2527F90B4()
{
  result = qword_27F4FE9B8;
  if (!qword_27F4FE9B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE9B8);
  }

  return result;
}

unint64_t sub_2527F9108()
{
  result = qword_27F4FE9C8;
  if (!qword_27F4FE9C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE9C8);
  }

  return result;
}

unint64_t sub_2527F915C()
{
  result = qword_27F4FE9D8;
  if (!qword_27F4FE9D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE9D8);
  }

  return result;
}

uint64_t sub_2527F91B0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2527F91F8()
{
  result = qword_27F4FE9F0;
  if (!qword_27F4FE9F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE9F0);
  }

  return result;
}

unint64_t sub_2527F924C()
{
  result = qword_27F4FEA00;
  if (!qword_27F4FEA00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FEA00);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ActivateSceneEvent.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF6)
  {
    goto LABEL_17;
  }

  if (a2 + 10 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 10) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 10;
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

      return (*a1 | (v4 << 8)) - 10;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 10;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v8 = v6 - 11;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ActivateSceneEvent.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF6)
  {
    v4 = 0;
  }

  if (a2 > 0xF5)
  {
    v5 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
    *result = a2 + 10;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ShowEvent.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ShowEvent.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2527F9574()
{
  result = qword_27F4FEA08;
  if (!qword_27F4FEA08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FEA08);
  }

  return result;
}

unint64_t sub_2527F95CC()
{
  result = qword_27F4FEA10;
  if (!qword_27F4FEA10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FEA10);
  }

  return result;
}

unint64_t sub_2527F9624()
{
  result = qword_27F4FEA18;
  if (!qword_27F4FEA18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FEA18);
  }

  return result;
}

unint64_t sub_2527F967C()
{
  result = qword_27F4FEA20;
  if (!qword_27F4FEA20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FEA20);
  }

  return result;
}

unint64_t sub_2527F96D4()
{
  result = qword_27F4FEA28;
  if (!qword_27F4FEA28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FEA28);
  }

  return result;
}

unint64_t sub_2527F972C()
{
  result = qword_27F4FEA30;
  if (!qword_27F4FEA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FEA30);
  }

  return result;
}

unint64_t sub_2527F9784()
{
  result = qword_27F4FEA38;
  if (!qword_27F4FEA38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FEA38);
  }

  return result;
}

unint64_t sub_2527F97DC()
{
  result = qword_27F4FEA40;
  if (!qword_27F4FEA40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FEA40);
  }

  return result;
}

unint64_t sub_2527F9834()
{
  result = qword_27F4FEA48;
  if (!qword_27F4FEA48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FEA48);
  }

  return result;
}

unint64_t sub_2527F988C()
{
  result = qword_27F4FEA50;
  if (!qword_27F4FEA50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FEA50);
  }

  return result;
}

unint64_t sub_2527F98E4()
{
  result = qword_27F4FEA58;
  if (!qword_27F4FEA58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FEA58);
  }

  return result;
}

unint64_t sub_2527F993C()
{
  result = qword_27F4FEA60;
  if (!qword_27F4FEA60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FEA60);
  }

  return result;
}

unint64_t sub_2527F9994()
{
  result = qword_27F4FEA68;
  if (!qword_27F4FEA68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FEA68);
  }

  return result;
}

unint64_t sub_2527F99EC()
{
  result = qword_27F4FEA70;
  if (!qword_27F4FEA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FEA70);
  }

  return result;
}

unint64_t sub_2527F9A44()
{
  result = qword_27F4FEA78;
  if (!qword_27F4FEA78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FEA78);
  }

  return result;
}

uint64_t sub_2527F9A98(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D614E746E657665 && a2 == 0xE900000000000065;
  if (v4 || (sub_2528C1060() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x746E65696C63 && a2 == 0xE600000000000000 || (sub_2528C1060() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6D617473656D6974 && a2 == 0xE900000000000070 || (sub_2528C1060() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x65536E6F69746361 && a2 == 0xED0000646E694B74 || (sub_2528C1060() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000014 && 0x80000002528E6180 == a2 || (sub_2528C1060() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000030 && 0x80000002528E61C0 == a2 || (sub_2528C1060() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000026 && 0x80000002528E6200 == a2 || (sub_2528C1060() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000030 && 0x80000002528E6230 == a2 || (sub_2528C1060() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000035 && 0x80000002528E6270 == a2 || (sub_2528C1060() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000024 && 0x80000002528E62B0 == a2 || (sub_2528C1060() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000024 && 0x80000002528E62E0 == a2)
  {

    return 10;
  }

  else
  {
    v6 = sub_2528C1060();

    if (v6)
    {
      return 10;
    }

    else
    {
      return 11;
    }
  }
}

uint64_t sub_2527F9E18(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D614E746E657665 && a2 == 0xE900000000000065;
  if (v4 || (sub_2528C1060() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656372756F73 && a2 == 0xE600000000000000 || (sub_2528C1060() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x61655373656D6F68 && a2 == 0xED00006465686372 || (sub_2528C1060() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6F43656369766564 && a2 == 0xEB00000000746E75 || (sub_2528C1060() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000012 && 0x80000002528E61A0 == a2)
  {

    return 4;
  }

  else
  {
    v6 = sub_2528C1060();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_2527F9FE0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D614E746E657665 && a2 == 0xE900000000000065;
  if (v4 || (sub_2528C1060() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x746E65696C63 && a2 == 0xE600000000000000 || (sub_2528C1060() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6D617473656D6974 && a2 == 0xE900000000000070 || (sub_2528C1060() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000014 && 0x80000002528E6180 == a2 || (sub_2528C1060() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7954656369766564 && a2 == 0xEA00000000006570 || (sub_2528C1060() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x7475626972747461 && a2 == 0xED00006570795465 || (sub_2528C1060() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x74756F656D6974 && a2 == 0xE700000000000000)
  {

    return 6;
  }

  else
  {
    v6 = sub_2528C1060();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t sub_2527FA2A0@<X0>(uint64_t a2@<X8>)
{
  if (sub_2528BE9A0() || sub_2528BE9A0() || sub_2528BE9A0() || sub_2528BE9A0() || sub_2528BE9A0())
  {
    swift_getKeyPath();
    sub_252744BB0();
    sub_2528BE840();

    v3 = 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = type metadata accessor for HomeEntity(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a2, v3, 1, v4);
}

uint64_t sub_2527FA3D8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC488, &unk_2528C3F80);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v9 - v6;
  sub_2527FEA40(a1, &v9 - v6);
  sub_2527FEA40(v7, v5);
  sub_2528BE7A0();
  return sub_2527213D8(v7, &qword_27F4FC488, &unk_2528C3F80);
}

uint64_t sub_2527FA4E0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC488, &unk_2528C3F80);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v9 - v6;
  sub_2527FEA40(a1, &v9 - v6);
  sub_2527FEA40(v7, v5);
  sub_2528BE7A0();
  return sub_2527213D8(v7, &qword_27F4FC488, &unk_2528C3F80);
}

uint64_t sub_2527FA5EC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC488, &unk_2528C3F80);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v9 - v6;
  sub_2527FEA40(a1, &v9 - v6);
  sub_2527FEA40(v7, v5);
  sub_2528BE7A0();
  return sub_2527213D8(v7, &qword_27F4FC488, &unk_2528C3F80);
}

uint64_t sub_2527FA6D0(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCD30, &unk_2528CF3D0);
  sub_2527FE86C(&qword_27F4FEB18, &qword_27F4FCD30, &unk_2528CF3D0);
  sub_2528C0910();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCD38, &qword_2528C5BC8);
  sub_2527FE86C(&qword_27F4FEB20, &qword_27F4FCD38, &qword_2528C5BC8);
  sub_2528C0910();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCD40, &unk_2528CF3E0);
  sub_2527FE86C(&qword_27F4FEB28, &qword_27F4FCD40, &unk_2528CF3E0);
  sub_2528C0910();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCD48, &qword_2528C5C28);
  sub_2527FE86C(&qword_27F4FEB30, &qword_27F4FCD48, &qword_2528C5C28);
  sub_2528C0910();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCD50, &qword_2528CF3F0);
  sub_2527FE86C(&qword_27F4FEB38, &qword_27F4FCD50, &qword_2528CF3F0);
  return sub_2528C0910();
}

uint64_t sub_2527FA89C(uint64_t a1, uint64_t *a2)
{
  v3[2] = a1;
  v3[3] = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC488, &unk_2528C3F80);
  v5 = swift_task_alloc();
  v6 = *a2;
  v3[4] = v5;
  v3[5] = v6;

  return MEMORY[0x2822009F8](sub_2527FA940, 0, 0);
}

uint64_t sub_2527FA940(uint64_t a1)
{
  sub_2527FA2A0(v1[4]);
  v2 = swift_task_alloc();
  v1[6] = v2;
  *v2 = v1;
  v2[1] = sub_2527FA9F0;
  v3 = v1[4];
  v4 = v1[5];

  return sub_2528B5188(v4, v3);
}

uint64_t sub_2527FA9F0(uint64_t a1)
{
  v4 = *v2;
  v4[7] = v1;

  if (v1)
  {
    sub_2527213D8(v4[4], &qword_27F4FC488, &unk_2528C3F80);

    return MEMORY[0x2822009F8](sub_2527FAB7C, 0, 0);
  }

  else
  {
    v5 = v4[2];
    sub_2527213D8(v4[4], &qword_27F4FC488, &unk_2528C3F80);
    *v5 = a1;

    v6 = v4[1];

    return v6();
  }
}

uint64_t sub_2527FAB7C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2527FABE0()
{
  sub_2528C1130();
  sub_2527FA6D0(v1);
  return sub_2528C1180();
}

uint64_t sub_2527FAC24(uint64_t a1)
{
  sub_2528C1130();
  sub_2527FA6D0(v2);
  return sub_2528C1180();
}

uint64_t sub_2527FAC60(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v8 = *(a2 + 32);
  return sub_2527FDDAC(v5, v7) & 1;
}

uint64_t sub_2527FACAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC488, &unk_2528C3F80);
  v3[4] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2527FAD48, 0, 0);
}

uint64_t sub_2527FAD48(uint64_t a1)
{
  if (sub_2528BE9A0())
  {
    swift_getKeyPath();
    sub_252744BB0();
    sub_2528BE840();

    v2 = 0;
  }

  else
  {
    v2 = 1;
  }

  v3 = v1[4];
  v4 = type metadata accessor for HomeEntity(0);
  (*(*(v4 - 8) + 56))(v3, v2, 1, v4);
  v5 = swift_task_alloc();
  v1[5] = v5;
  *v5 = v1;
  v5[1] = sub_2527FAE94;
  v6 = v1[4];
  v7 = v1[2];

  return sub_2527B0B0C(v7, v6);
}

uint64_t sub_2527FAE94(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  *(*v2 + 48) = v1;

  sub_2527213D8(*(v4 + 32), &qword_27F4FC488, &unk_2528C3F80);
  if (v1)
  {

    return MEMORY[0x2822009F8](sub_2527FB014, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6(a1);
  }
}

uint64_t sub_2527FB014()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2527FB078(uint64_t a1, uint64_t *a2)
{
  *(v3 + 16) = a1;
  v4 = *a2;
  v5 = *v2;
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_25273430C;

  return sub_2527FACAC(v4, v7, v5);
}

uint64_t sub_2527FB1BC(_WORD *a1)
{
  *(v2 + 16) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC488, &unk_2528C3F80);
  *(v2 + 24) = swift_task_alloc();
  *(v2 + 72) = *a1;

  return MEMORY[0x2822009F8](sub_2527FB264, 0, 0);
}

uint64_t sub_2527FB264()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FEB60, &qword_2528D3390);
  v3 = swift_allocObject();
  *(v0 + 32) = v3;
  *(v3 + 16) = xmmword_2528C3910;
  *(v3 + 32) = v1;
  v4 = sub_2527FB68C(v2);
  v5 = sub_2527FB7C4(v4);
  *(v0 + 40) = v5;
  v6 = sub_2527FB888(v5);
  *(v0 + 48) = v6;
  v7 = swift_task_alloc();
  *(v0 + 56) = v7;
  *v7 = v0;
  v7[1] = sub_2527FB380;
  v8 = *(v0 + 24);

  return sub_252836FA8(v3, v8, v5, v6);
}

uint64_t sub_2527FB380(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  *(*v2 + 64) = v1;

  sub_2527213D8(*(v4 + 24), &qword_27F4FC488, &unk_2528C3F80);

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_2527FB56C, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6(a1);
  }
}

uint64_t sub_2527FB56C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2527FB5D0(uint64_t a1, _WORD *a2)
{
  *(v3 + 128) = a1;
  v5 = v2[5];
  *(v3 + 80) = v2[4];
  *(v3 + 96) = v5;
  *(v3 + 112) = v2[6];
  v6 = v2[1];
  *(v3 + 16) = *v2;
  *(v3 + 32) = v6;
  v7 = v2[3];
  *(v3 + 48) = v2[2];
  *(v3 + 64) = v7;
  v8 = swift_task_alloc();
  *(v3 + 136) = v8;
  *v8 = v3;
  v8[1] = sub_2527FECD4;

  return sub_2527FB1BC(a2);
}

uint64_t sub_2527FB68C@<X0>(uint64_t a2@<X8>)
{
  if (sub_2528BE9A0() || sub_2528BE9A0() || sub_2528BE9A0() || sub_2528BE9A0() || sub_2528BE9A0())
  {
    swift_getKeyPath();
    sub_252744BB0();
    sub_2528BE840();

    v3 = 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = type metadata accessor for HomeEntity(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a2, v3, 1, v4);
}

uint64_t sub_2527FB7C4(uint64_t a1)
{
  if (sub_2528BE9A0() || sub_2528BE9A0() || sub_2528BE9A0() || (result = sub_2528BE9A0()) != 0)
  {
    swift_getKeyPath();
    sub_2527FE944();
    sub_2528BE840();

    return v2;
  }

  return result;
}

uint64_t sub_2527FB888(uint64_t a1)
{
  if (sub_2528BE9A0() || sub_2528BE9A0() || sub_2528BE9A0() || sub_2528BE9A0() || (result = sub_2528BE9A0()) != 0)
  {
    swift_getKeyPath();
    sub_2527FE8C0();
    sub_2528BE840();

    return v2;
  }

  return result;
}

uint64_t sub_2527FB968(uint64_t a1, char a2)
{
  *(v3 + 112) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC488, &unk_2528C3F80);
  *(v3 + 32) = swift_task_alloc();
  *(v3 + 40) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2527FBA14, 0, 0);
}

uint64_t sub_2527FBA14(uint64_t a1)
{
  v2 = *(v1 + 16);
  if (*(v1 + 112))
  {
    v3 = sub_2527FB68C(*(v1 + 32));
    v4 = sub_2527FB7C4(v3);
    *(v1 + 80) = v4;
    v5 = sub_2527FB888(v4);
    *(v1 + 88) = v5;
    v11 = sub_252838B2C;
    v6 = swift_task_alloc();
    *(v1 + 96) = v6;
    *v6 = v1;
    v6[1] = sub_2527FBD50;
    v7 = *(v1 + 32);
  }

  else
  {
    v8 = sub_2527FB68C(*(v1 + 40));
    v4 = sub_2527FB7C4(v8);
    *(v1 + 48) = v4;
    v5 = sub_2527FB888(v4);
    *(v1 + 56) = v5;
    v11 = sub_252837E58;
    v9 = swift_task_alloc();
    *(v1 + 64) = v9;
    *v9 = v1;
    v9[1] = sub_2527FBB70;
    v7 = *(v1 + 40);
  }

  return v11(v2, v7, v4, v5);
}

uint64_t sub_2527FBB70(uint64_t a1)
{
  v4 = *(*v2 + 40);
  v5 = *v2;
  *(*v2 + 72) = v1;

  sub_2527213D8(v4, &qword_27F4FC488, &unk_2528C3F80);

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_2527FBF30, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6(a1);
  }
}

uint64_t sub_2527FBD50(uint64_t a1)
{
  v4 = *(*v2 + 32);
  v5 = *v2;
  *(*v2 + 104) = v1;

  sub_2527213D8(v4, &qword_27F4FC488, &unk_2528C3F80);

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_2527FBF9C, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6(a1);
  }
}

uint64_t sub_2527FBF30()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2527FBF9C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2527FC008(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCD30, &unk_2528CF3D0);
  sub_2527FE86C(&qword_27F4FEB18, &qword_27F4FCD30, &unk_2528CF3D0);
  sub_2528C0910();
  sub_2528C0910();
  sub_2528C0910();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCD38, &qword_2528C5BC8);
  sub_2527FE86C(&qword_27F4FEB20, &qword_27F4FCD38, &qword_2528C5BC8);
  sub_2528C0910();
  sub_2528C0910();
  sub_2528C0910();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCD40, &unk_2528CF3E0);
  sub_2527FE86C(&qword_27F4FEB28, &qword_27F4FCD40, &unk_2528CF3E0);
  sub_2528C0910();
  sub_2528C0910();
  sub_2528C0910();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCD48, &qword_2528C5C28);
  sub_2527FE86C(&qword_27F4FEB30, &qword_27F4FCD48, &qword_2528C5C28);
  sub_2528C0910();
  sub_2528C0910();
  sub_2528C0910();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCD50, &qword_2528CF3F0);
  sub_2527FE86C(&qword_27F4FEB38, &qword_27F4FCD50, &qword_2528CF3F0);
  sub_2528C0910();
  return sub_2528C0910();
}

uint64_t sub_2527FC2E4(uint64_t a1, uint64_t a2)
{
  *(v3 + 128) = a1;
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = v2[5];
  *(v3 + 80) = v2[4];
  *(v3 + 96) = v6;
  *(v3 + 112) = v2[6];
  v7 = v2[1];
  *(v3 + 16) = *v2;
  *(v3 + 32) = v7;
  v8 = v2[3];
  *(v3 + 48) = v2[2];
  *(v3 + 64) = v8;
  v9 = swift_task_alloc();
  *(v3 + 136) = v9;
  *v9 = v3;
  v9[1] = sub_2527FC3B0;

  return sub_2527FB968(v4, v5);
}

uint64_t sub_2527FC3B0(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (!v1)
  {
    **(v4 + 128) = a1;
  }

  v6 = *(v5 + 8);

  return v6();
}

uint64_t sub_2527FC4C0()
{
  sub_2528C1130();
  sub_2527FC008(v1);
  return sub_2528C1180();
}

uint64_t sub_2527FC500(uint64_t a1)
{
  sub_2528C1130();
  sub_2527FC008(v2);
  return sub_2528C1180();
}

uint64_t SceneEntityFromNameResolver.resolve(from:context:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[3] = a2;
  v4[4] = a3;
  v4[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC488, &unk_2528C3F80);
  v5 = swift_task_alloc();
  v6 = *v3;
  v4[5] = v5;
  v4[6] = v6;

  return MEMORY[0x2822009F8](sub_2527FC5E0, 0, 0);
}

uint64_t sub_2527FC5E0(uint64_t a1)
{
  if (sub_2528BE9A0())
  {
    swift_getKeyPath();
    sub_252744BB0();
    sub_2528BE840();

    v2 = 0;
  }

  else
  {
    v2 = 1;
  }

  v3 = v1[5];
  v4 = type metadata accessor for HomeEntity(0);
  (*(*(v4 - 8) + 56))(v3, v2, 1, v4);
  v5 = swift_task_alloc();
  v1[7] = v5;
  *v5 = v1;
  v5[1] = sub_2527FC72C;
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[3];

  return sub_252746D74(v8, v6, v7);
}

uint64_t sub_2527FC72C(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 40);
  *(v3 + 64) = a1;
  *(v3 + 72) = v1;

  sub_2527213D8(v4, &qword_27F4FC488, &unk_2528C3F80);
  if (v1)
  {
    v5 = sub_2527FC9BC;
  }

  else
  {
    v5 = sub_2527FC870;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2527FC870()
{
  v1 = v0[8];
  if (*(v1 + 16))
  {
    v2 = v0[2];
    v3 = type metadata accessor for SceneEntity(0);
    v4 = *(v3 - 8);
    sub_2527FE034(v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80)), v2, type metadata accessor for SceneEntity);

    v5 = 0;
  }

  else
  {

    v3 = type metadata accessor for SceneEntity(0);
    v4 = *(v3 - 8);
    v5 = 1;
  }

  (*(v4 + 56))(v0[2], v5, 1, v3);

  v6 = v0[1];

  return v6();
}

uint64_t sub_2527FC9BC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2527FCA20(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = a2[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2527228B0;

  return SceneEntityFromNameResolver.resolve(from:context:)(a1, v4, v5);
}

uint64_t sub_2527FCACC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, unint64_t *a5)
{
  sub_2528C1130();
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  sub_2527FE86C(a5, a3, a4);
  sub_2528C0910();
  return sub_2528C1180();
}

uint64_t sub_2527FCB5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, unint64_t *a6)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  sub_2527FE86C(a6, a4, a5);
  return sub_2528C0910();
}

uint64_t sub_2527FCBDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, unint64_t *a6)
{
  sub_2528C1130();
  __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  sub_2527FE86C(a6, a4, a5);
  sub_2528C0910();
  return sub_2528C1180();
}

uint64_t SceneEntityFromSceneTypeResolver.resolve(from:context:)(uint64_t a1, _BYTE *a2)
{
  *(v3 + 16) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC488, &unk_2528C3F80);
  v5 = swift_task_alloc();
  *(v3 + 65) = *a2;
  v6 = *v2;
  *(v3 + 24) = v5;
  *(v3 + 32) = v6;

  return MEMORY[0x2822009F8](sub_2527FCD14, 0, 0);
}

uint64_t sub_2527FCD14(uint64_t a1)
{
  *(v1 + 64) = *(v1 + 65);
  if (sub_2528BE9A0())
  {
    swift_getKeyPath();
    sub_252744BB0();
    sub_2528BE840();

    v2 = 0;
  }

  else
  {
    v2 = 1;
  }

  v3 = *(v1 + 24);
  v4 = type metadata accessor for HomeEntity(0);
  (*(*(v4 - 8) + 56))(v3, v2, 1, v4);
  v5 = swift_task_alloc();
  *(v1 + 40) = v5;
  *v5 = v1;
  v5[1] = sub_2527FCE6C;
  v6 = *(v1 + 24);

  return sub_252747DF8((v1 + 64), v6);
}

uint64_t sub_2527FCE6C(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 24);
  *(v3 + 48) = a1;
  *(v3 + 56) = v1;

  sub_2527213D8(v4, &qword_27F4FC488, &unk_2528C3F80);
  if (v1)
  {
    v5 = sub_2527FD0F8;
  }

  else
  {
    v5 = sub_2527FCFB0;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2527FCFB0()
{
  v1 = v0[6];
  if (*(v1 + 16))
  {
    v2 = v0[2];
    v3 = type metadata accessor for SceneEntity(0);
    v4 = *(v3 - 8);
    sub_2527FE034(v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80)), v2, type metadata accessor for SceneEntity);

    v5 = 0;
  }

  else
  {

    v3 = type metadata accessor for SceneEntity(0);
    v4 = *(v3 - 8);
    v5 = 1;
  }

  (*(v4 + 56))(v0[2], v5, 1, v3);

  v6 = v0[1];

  return v6();
}

uint64_t sub_2527FD0F8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2527FD1B0(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC450, &qword_2528C3F10);
  sub_2527FE86C(&qword_27F4FEA80, &qword_27F4FC450, &qword_2528C3F10);
  return sub_2528C0910();
}

uint64_t sub_2527FD234()
{
  sub_2528C1130();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC450, &qword_2528C3F10);
  sub_2527FE86C(&qword_27F4FEA80, &qword_27F4FC450, &qword_2528C3F10);
  sub_2528C0910();
  return sub_2528C1180();
}

uint64_t sub_2527FD2C4(uint64_t a1, _BYTE *a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_25271F3AC;

  return SceneEntityFromSceneTypeResolver.resolve(from:context:)(a1, a2);
}

uint64_t ActivateSceneIntentHomeResolver.resolve(from:context:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC628, &qword_2528C4750);
  v3[5] = swift_task_alloc();
  v4 = sub_2528BECF0();
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2527FD468, 0, 0);
}

uint64_t sub_2527FD468()
{
  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[5];
  sub_2528BECA0();
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_2527213D8(v0[5], &qword_27F4FC628, &qword_2528C4750);
    v4 = swift_task_alloc();
    v0[13] = v4;
    *v4 = v0;
    v4[1] = sub_2527FD92C;
    v6 = v0[3];
    v5 = v0[4];

    return HomeEntityQuery.entities(matching:)(v6, v5);
  }

  else
  {
    v9 = v0[7];
    v8 = v0[8];
    v10 = v0[6];
    (*(v9 + 32))(v8, v0[5], v10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC828, &qword_2528C48D8);
    v11 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v12 = swift_allocObject();
    v0[9] = v12;
    *(v12 + 16) = xmmword_2528C3910;
    (*(v9 + 16))(v12 + v11, v8, v10);
    v13 = swift_task_alloc();
    v0[10] = v13;
    *v13 = v0;
    v13[1] = sub_2527FD658;

    return HomeEntityQuery.entities(for:)(v12);
  }
}

uint64_t sub_2527FD658(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 88) = a1;
  *(v3 + 96) = v1;

  if (v1)
  {
    v4 = sub_2527FDB98;
  }

  else
  {
    v4 = sub_2527FD78C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2527FD78C()
{
  v1 = v0[11];
  v3 = v0[7];
  v2 = v0[8];
  v4 = v0[6];
  if (*(v1 + 16))
  {
    v5 = v0[2];
    v6 = type metadata accessor for HomeEntity(0);
    v7 = *(v6 - 8);
    sub_2527FE034(v1 + ((*(v7 + 80) + 32) & ~*(v7 + 80)), v5, type metadata accessor for HomeEntity);

    (*(v3 + 8))(v2, v4);
    v8 = 0;
  }

  else
  {

    (*(v3 + 8))(v2, v4);
    v6 = type metadata accessor for HomeEntity(0);
    v7 = *(v6 - 8);
    v8 = 1;
  }

  (*(v7 + 56))(v0[2], v8, 1, v6);

  v9 = v0[1];

  return v9();
}

uint64_t sub_2527FD92C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 112) = a1;
  *(v3 + 120) = v1;

  if (v1)
  {
    v4 = sub_2527FDC20;
  }

  else
  {
    v4 = sub_2527FDA40;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2527FDA40()
{
  v1 = v0[14];
  if (*(v1 + 16))
  {
    v2 = v0[2];
    v3 = type metadata accessor for HomeEntity(0);
    v4 = *(v3 - 8);
    sub_2527FE034(v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80)), v2, type metadata accessor for HomeEntity);

    v5 = 0;
  }

  else
  {

    v3 = type metadata accessor for HomeEntity(0);
    v4 = *(v3 - 8);
    v5 = 1;
  }

  (*(v4 + 56))(v0[2], v5, 1, v3);

  v6 = v0[1];

  return v6();
}

uint64_t sub_2527FDB98()
{
  (*(v0[7] + 8))(v0[8], v0[6]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_2527FDC20()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2527FDCD4(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = a2[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2527228B0;

  return ActivateSceneIntentHomeResolver.resolve(from:context:)(a1, v4, v5);
}

uint64_t sub_2527FDD80@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2528BE7B0();
  *a1 = result;
  return result;
}

uint64_t sub_2527FDDAC(void *a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCD30, &unk_2528CF3D0);
  if ((sub_2528BE9B0() & 1) == 0)
  {
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCD38, &qword_2528C5BC8);
  if ((sub_2528BE9B0() & 1) == 0)
  {
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCD40, &unk_2528CF3E0);
  if ((sub_2528BE9B0() & 1) == 0)
  {
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCD48, &qword_2528C5C28);
  if ((sub_2528BE9B0() & 1) == 0)
  {
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCD50, &qword_2528CF3F0);
  return sub_2528BE9B0() & 1;
}

uint64_t sub_2527FDEA8(void *a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCD30, &unk_2528CF3D0);
  if (sub_2528BE9B0() & 1) != 0 && (sub_2528BE9B0() & 1) != 0 && (sub_2528BE9B0() & 1) != 0 && (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCD38, &qword_2528C5BC8), (sub_2528BE9B0()) && (sub_2528BE9B0() & 1) != 0 && (sub_2528BE9B0() & 1) != 0 && (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCD40, &unk_2528CF3E0), (sub_2528BE9B0()) && (sub_2528BE9B0() & 1) != 0 && (sub_2528BE9B0() & 1) != 0 && (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCD48, &qword_2528C5C28), (sub_2528BE9B0()) && (sub_2528BE9B0() & 1) != 0 && (sub_2528BE9B0() & 1) != 0 && (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCD50, &qword_2528CF3F0), (sub_2528BE9B0()))
  {
    return sub_2528BE9B0() & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2527FE034(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_2527FE0A0()
{
  result = qword_27F4FEA88;
  if (!qword_27F4FEA88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FEA88);
  }

  return result;
}

unint64_t sub_2527FE0F4()
{
  result = qword_27F4FEA90;
  if (!qword_27F4FEA90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4FEA98, qword_2528CEC40);
    sub_25274690C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FEA90);
  }

  return result;
}

unint64_t sub_2527FE180()
{
  result = qword_27F4FEAA0;
  if (!qword_27F4FEAA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FEAA0);
  }

  return result;
}

unint64_t sub_2527FE1D8()
{
  result = qword_27F4FEAA8;
  if (!qword_27F4FEAA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FEAA8);
  }

  return result;
}

unint64_t sub_2527FE234()
{
  result = qword_27F4FEAB0;
  if (!qword_27F4FEAB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FEAB0);
  }

  return result;
}

unint64_t sub_2527FE28C()
{
  result = qword_27F4FEAB8;
  if (!qword_27F4FEAB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FEAB8);
  }

  return result;
}

unint64_t sub_2527FE2E0()
{
  result = qword_27F4FEAC0;
  if (!qword_27F4FEAC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FEAC0);
  }

  return result;
}

unint64_t sub_2527FE338()
{
  result = qword_27F4FEAC8;
  if (!qword_27F4FEAC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FEAC8);
  }

  return result;
}

unint64_t sub_2527FE390()
{
  result = qword_27F4FEAD0;
  if (!qword_27F4FEAD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FEAD0);
  }

  return result;
}

unint64_t sub_2527FE3E4()
{
  result = qword_27F4FEAD8;
  if (!qword_27F4FEAD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FEAD8);
  }

  return result;
}

unint64_t sub_2527FE43C()
{
  result = qword_27F4FEAE0;
  if (!qword_27F4FEAE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FEAE0);
  }

  return result;
}

unint64_t sub_2527FE494()
{
  result = qword_27F4FEAE8;
  if (!qword_27F4FEAE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FEAE8);
  }

  return result;
}

uint64_t sub_2527FE4E8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2527FE534()
{
  result = qword_27F4FEAF0;
  if (!qword_27F4FEAF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FEAF0);
  }

  return result;
}

unint64_t sub_2527FE58C()
{
  result = qword_27F4FEAF8;
  if (!qword_27F4FEAF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FEAF8);
  }

  return result;
}

unint64_t sub_2527FE5E8()
{
  result = qword_27F4FEB00;
  if (!qword_27F4FEB00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FEB00);
  }

  return result;
}

unint64_t sub_2527FE640()
{
  result = qword_27F4FEB08;
  if (!qword_27F4FEB08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FEB08);
  }

  return result;
}

unint64_t sub_2527FE6E0()
{
  result = qword_27F4FEB10;
  if (!qword_27F4FEB10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FEB10);
  }

  return result;
}

__n128 __swift_memcpy112_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = result;
  *(a1 + 64) = v5;
  return result;
}

uint64_t sub_2527FE798(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 112))
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

uint64_t sub_2527FE7E0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2527FE86C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2527FE8C0()
{
  result = qword_27F4FEB40;
  if (!qword_27F4FEB40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4FEB48, &qword_2528CF428);
    sub_252756264();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FEB40);
  }

  return result;
}

unint64_t sub_2527FE944()
{
  result = qword_27F4FEB50;
  if (!qword_27F4FEB50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4FEB58, &qword_2528CF4F8);
    sub_25275636C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FEB50);
  }

  return result;
}

void *keypath_get_44Tm@<X0>(void *a1@<X8>)
{
  result = sub_2528BE790();
  *a1 = v3;
  return result;
}

uint64_t sub_2527FEA40(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC488, &unk_2528C3F80);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2527FEAB0@<X0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCD30, &unk_2528CF3D0);
  swift_getKeyPath();
  v15 = sub_2528BE9C0();
  swift_getKeyPath();
  v14 = sub_2528BE9C0();
  swift_getKeyPath();
  v13 = sub_2528BE9C0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCD38, &qword_2528C5BC8);
  swift_getKeyPath();
  v12 = sub_2528BE9C0();
  swift_getKeyPath();
  v11 = sub_2528BE9C0();
  swift_getKeyPath();
  v2 = sub_2528BE9C0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCD40, &unk_2528CF3E0);
  swift_getKeyPath();
  v3 = sub_2528BE9C0();
  swift_getKeyPath();
  v4 = sub_2528BE9C0();
  swift_getKeyPath();
  v5 = sub_2528BE9C0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCD48, &qword_2528C5C28);
  swift_getKeyPath();
  v6 = sub_2528BE9C0();
  swift_getKeyPath();
  v7 = sub_2528BE9C0();
  swift_getKeyPath();
  v8 = sub_2528BE9C0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCD50, &qword_2528CF3F0);
  swift_getKeyPath();
  v9 = sub_2528BE9C0();
  swift_getKeyPath();
  result = sub_2528BE9C0();
  *a1 = v15;
  a1[1] = v14;
  a1[2] = v13;
  a1[3] = v12;
  a1[4] = v11;
  a1[5] = v2;
  a1[6] = v3;
  a1[7] = v4;
  a1[8] = v5;
  a1[9] = v6;
  a1[10] = v7;
  a1[11] = v8;
  a1[12] = v9;
  a1[13] = result;
  return result;
}

uint64_t sub_2527FED04()
{
  v0 = sub_2528BE9F0();
  __swift_allocate_value_buffer(v0, qword_27F4FEB68);
  __swift_project_value_buffer(v0, qword_27F4FEB68);
  return sub_2528BE9D0();
}

uint64_t static DeviceType.SingleDeviceType.typeDisplayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F4FB840 != -1)
  {
    swift_once();
  }

  v2 = sub_2528BE9F0();
  v3 = __swift_project_value_buffer(v2, qword_27F4FEB68);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_2527FEE10()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FEEB0, &qword_2528D0DF8);
  v0 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD2E8, &qword_2528D0E00) - 8);
  v1 = *(v0 + 72);
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_2528CF890;
  v4 = (v3 + v2);
  *v4 = 0;
  sub_2528BE8C0();
  v4[v1] = 1;
  sub_2528BE8C0();
  v4[2 * v1] = 2;
  sub_2528BE8C0();
  v4[3 * v1] = 3;
  sub_2528BE8C0();
  v4[4 * v1] = 4;
  sub_2528BE8C0();
  v4[5 * v1] = 5;
  sub_2528BE8C0();
  v4[6 * v1] = 6;
  sub_2528BE8C0();
  v4[7 * v1] = 7;
  sub_2528BE8C0();
  v4[8 * v1] = 8;
  sub_2528BE8C0();
  v4[9 * v1] = 9;
  sub_2528BE8C0();
  v4[10 * v1] = 10;
  sub_2528BE8C0();
  v4[11 * v1] = 11;
  sub_2528BE8C0();
  v4[12 * v1] = 12;
  sub_2528BE8C0();
  v4[13 * v1] = 13;
  sub_2528BE8C0();
  v4[14 * v1] = 14;
  sub_2528BE8C0();
  v4[15 * v1] = 15;
  sub_2528BE8C0();
  v4[16 * v1] = 16;
  sub_2528BE8C0();
  v4[17 * v1] = 17;
  sub_2528BE8C0();
  v4[18 * v1] = 18;
  sub_2528BE8C0();
  v4[19 * v1] = 19;
  sub_2528BE8C0();
  v4[20 * v1] = 20;
  sub_2528BE8C0();
  v4[21 * v1] = 21;
  sub_2528BE8C0();
  v4[22 * v1] = 22;
  sub_2528BE8C0();
  v4[23 * v1] = 23;
  sub_2528BE8C0();
  v4[24 * v1] = 24;
  sub_2528BE8C0();
  v4[25 * v1] = 25;
  sub_2528BE8C0();
  v4[26 * v1] = 26;
  sub_2528BE8C0();
  v4[27 * v1] = 27;
  sub_2528BE8C0();
  v4[28 * v1] = 28;
  sub_2528BE8C0();
  v4[29 * v1] = 29;
  sub_2528BE8C0();
  v4[30 * v1] = 30;
  sub_2528BE8C0();
  v4[31 * v1] = 31;
  sub_2528BE8C0();
  v4[32 * v1] = 32;
  sub_2528BE8C0();
  v5 = sub_252790AD0(v3);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_27F4FEB80 = v5;
  return result;
}

double static DeviceType.SingleDeviceType.caseDisplayRepresentations.getter(uint64_t a1, uint64_t a2)
{
  if (qword_27F4FB848 != -1)
  {
    swift_once();
  }

  return result;
}

uint64_t sub_2527FF5AC@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = sub_2528BF240();
  v5 = *(v4 - 8);
  result = (*(v5 + 88))(a1, v4);
  if (result == *MEMORY[0x277D15650])
  {
    v7 = 0;
  }

  else if (result == *MEMORY[0x277D15750])
  {
    v7 = 1;
  }

  else if (result == *MEMORY[0x277D156B0] || result == *MEMORY[0x277D157E8] || result == *MEMORY[0x277D157F0])
  {
    v7 = 3;
  }

  else if (result == *MEMORY[0x277D15798])
  {
    v7 = 4;
  }

  else if (result == *MEMORY[0x277D157B8])
  {
    v7 = 5;
  }

  else if (result == *MEMORY[0x277D156C0])
  {
    v7 = 6;
  }

  else if (result == *MEMORY[0x277D15828])
  {
    v7 = 7;
  }

  else
  {
    if (result == *MEMORY[0x277D15810])
    {
      goto LABEL_23;
    }

    if (result == *MEMORY[0x277D15868])
    {
      v7 = 9;
      goto LABEL_70;
    }

    if (result == *MEMORY[0x277D15760])
    {
      v7 = 10;
      goto LABEL_70;
    }

    if (result == *MEMORY[0x277D15698])
    {
      v7 = 11;
      goto LABEL_70;
    }

    if (result == *MEMORY[0x277D157D8])
    {
      v7 = 12;
      goto LABEL_70;
    }

    if (result == *MEMORY[0x277D156F0])
    {
      v7 = 13;
      goto LABEL_70;
    }

    if (result == *MEMORY[0x277D15770])
    {
      v7 = 25;
      goto LABEL_70;
    }

    if (result == *MEMORY[0x277D15610])
    {
      v7 = 14;
      goto LABEL_70;
    }

    if (result == *MEMORY[0x277D15678])
    {
      v7 = 16;
      goto LABEL_70;
    }

    if (result == *MEMORY[0x277D158D0])
    {
      v7 = 15;
      goto LABEL_70;
    }

    if (result == *MEMORY[0x277D156D8])
    {
      v7 = 17;
      goto LABEL_70;
    }

    if (result == *MEMORY[0x277D156A0])
    {
      v7 = 18;
      goto LABEL_70;
    }

    if (result == *MEMORY[0x277D15730])
    {
      v7 = 19;
      goto LABEL_70;
    }

    if (result == *MEMORY[0x277D15870])
    {
      v7 = 20;
      goto LABEL_70;
    }

    if (result == *MEMORY[0x277D15708])
    {
      v7 = 22;
      goto LABEL_70;
    }

    if (result == *MEMORY[0x277D15688])
    {
      v7 = 24;
      goto LABEL_70;
    }

    if (result == *MEMORY[0x277D15888])
    {
      v7 = 26;
      goto LABEL_70;
    }

    if (result == *MEMORY[0x277D15630])
    {
      v7 = 27;
      goto LABEL_70;
    }

    if (result == *MEMORY[0x277D15788])
    {
      v7 = 28;
      goto LABEL_70;
    }

    if (result == *MEMORY[0x277D15640])
    {
      v7 = 29;
      goto LABEL_70;
    }

    if (result == *MEMORY[0x277D15850])
    {
      v7 = 30;
      goto LABEL_70;
    }

    if (result == *MEMORY[0x277D15718])
    {
LABEL_23:
      v7 = 8;
    }

    else if (result == *MEMORY[0x277D15898])
    {
      v7 = 31;
    }

    else if (result == *MEMORY[0x277D15720])
    {
      v7 = 32;
    }

    else
    {
      result = (*(v5 + 8))(a1, v4);
      v7 = 33;
    }
  }

LABEL_70:
  *a2 = v7;
  return result;
}

uint64_t sub_2527FF9DC@<X0>(uint64_t a1@<X8>)
{
  switch(*v1)
  {
    case 0:
      v3 = MEMORY[0x277D15650];
      goto LABEL_32;
    case 1:
      v3 = MEMORY[0x277D15750];
      goto LABEL_32;
    case 4:
      v3 = MEMORY[0x277D15798];
      goto LABEL_32;
    case 5:
      v3 = MEMORY[0x277D157B8];
      goto LABEL_32;
    case 6:
      v3 = MEMORY[0x277D156C0];
      goto LABEL_32;
    case 7:
      v3 = MEMORY[0x277D15828];
      goto LABEL_32;
    case 8:
      v3 = MEMORY[0x277D15810];
      goto LABEL_32;
    case 9:
    case 0x17:
      v3 = MEMORY[0x277D15868];
      goto LABEL_32;
    case 0xA:
      v3 = MEMORY[0x277D15760];
      goto LABEL_32;
    case 0xB:
      v3 = MEMORY[0x277D15698];
      goto LABEL_32;
    case 0xC:
      v3 = MEMORY[0x277D157D8];
      goto LABEL_32;
    case 0xD:
      v3 = MEMORY[0x277D156F0];
      goto LABEL_32;
    case 0xE:
      v3 = MEMORY[0x277D15610];
      goto LABEL_32;
    case 0xF:
      v3 = MEMORY[0x277D158D0];
      goto LABEL_32;
    case 0x10:
      v3 = MEMORY[0x277D15678];
      goto LABEL_32;
    case 0x11:
      v3 = MEMORY[0x277D156D8];
      goto LABEL_32;
    case 0x12:
      v3 = MEMORY[0x277D156A0];
      goto LABEL_32;
    case 0x13:
      v3 = MEMORY[0x277D15730];
      goto LABEL_32;
    case 0x14:
      v3 = MEMORY[0x277D15870];
      goto LABEL_32;
    case 0x16:
      v3 = MEMORY[0x277D15708];
      goto LABEL_32;
    case 0x18:
      v3 = MEMORY[0x277D15688];
      goto LABEL_32;
    case 0x19:
      v3 = MEMORY[0x277D15770];
      goto LABEL_32;
    case 0x1A:
      v3 = MEMORY[0x277D15888];
      goto LABEL_32;
    case 0x1B:
      v3 = MEMORY[0x277D15630];
      goto LABEL_32;
    case 0x1C:
      v3 = MEMORY[0x277D15788];
      goto LABEL_32;
    case 0x1D:
      v3 = MEMORY[0x277D15640];
      goto LABEL_32;
    case 0x1E:
      v3 = MEMORY[0x277D15850];
      goto LABEL_32;
    case 0x1F:
      v3 = MEMORY[0x277D15898];
      goto LABEL_32;
    case 0x20:
      v3 = MEMORY[0x277D15720];
LABEL_32:
      v9 = *v3;
      v10 = sub_2528BF240();
      v12 = *(v10 - 8);
      (*(v12 + 104))(a1, v9, v10);
      v5 = *(v12 + 56);
      v7 = a1;
      v8 = 0;
      v6 = v10;
      break;
    default:
      v4 = sub_2528BF240();
      v5 = *(*(v4 - 8) + 56);
      v6 = v4;
      v7 = a1;
      v8 = 1;
      break;
  }

  return v5(v7, v8, 1, v6);
}

HomeAppIntents::DeviceType::SingleDeviceType_optional __swiftcall DeviceType.SingleDeviceType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_2528C1070();

  v5 = 0;
  v6 = 15;
  switch(v3)
  {
    case 0:
      goto LABEL_25;
    case 1:
      v5 = 1;
      goto LABEL_25;
    case 2:
      v5 = 2;
      goto LABEL_25;
    case 3:
      v5 = 3;
      goto LABEL_25;
    case 4:
      v5 = 4;
      goto LABEL_25;
    case 5:
      v5 = 5;
      goto LABEL_25;
    case 6:
      v5 = 6;
      goto LABEL_25;
    case 7:
      v5 = 7;
      goto LABEL_25;
    case 8:
      v5 = 8;
      goto LABEL_25;
    case 9:
      v5 = 9;
      goto LABEL_25;
    case 10:
      v5 = 10;
      goto LABEL_25;
    case 11:
      v5 = 11;
      goto LABEL_25;
    case 12:
      v5 = 12;
      goto LABEL_25;
    case 13:
      v5 = 13;
      goto LABEL_25;
    case 14:
      v5 = 14;
LABEL_25:
      v6 = v5;
      break;
    case 15:
      break;
    case 16:
      v6 = 16;
      break;
    case 17:
      v6 = 17;
      break;
    case 18:
      v6 = 18;
      break;
    case 19:
      v6 = 19;
      break;
    case 20:
      v6 = 20;
      break;
    case 21:
      v6 = 21;
      break;
    case 22:
      v6 = 22;
      break;
    case 23:
      v6 = 23;
      break;
    case 24:
      v6 = 24;
      break;
    case 25:
      v6 = 25;
      break;
    case 26:
      v6 = 26;
      break;
    case 27:
      v6 = 27;
      break;
    case 28:
      v6 = 28;
      break;
    case 29:
      v6 = 29;
      break;
    case 30:
      v6 = 30;
      break;
    case 31:
      v6 = 31;
      break;
    case 32:
      v6 = 32;
      break;
    default:
      v6 = 33;
      break;
  }

  *v2 = v6;
  return result;
}

uint64_t DeviceType.SingleDeviceType.rawValue.getter()
{
  result = 0x6669727550726961;
  switch(*v0)
  {
    case 1:
      result = 0xD000000000000010;
      break;
    case 2:
      result = 0x5654656C707061;
      break;
    case 3:
      result = 0x6172656D6163;
      break;
    case 4:
      result = 0xD000000000000013;
      break;
    case 5:
      result = 0xD000000000000014;
      break;
    case 6:
      result = 0x53746361746E6F63;
      break;
    case 7:
      result = 1919905636;
      break;
    case 8:
      result = 7233894;
      break;
    case 9:
      result = 0x746563756166;
      break;
    case 0xA:
      result = 0x6F44656761726167;
      break;
    case 0xB:
      result = 0x6F43726574616568;
      break;
    case 0xC:
      result = 0xD000000000000016;
      break;
    case 0xD:
      result = 0x79746964696D7568;
      break;
    case 0xE:
      result = 0x736E65536B61656CLL;
      break;
    case 0xF:
      result = 0x6C7562746867696CLL;
      break;
    case 0x10:
      v2 = 0x53746867696CLL;
      goto LABEL_12;
    case 0x11:
      result = 1801678700;
      break;
    case 0x12:
      result = 0x65536E6F69746F6DLL;
      break;
    case 0x13:
      result = 0x636E61707563636FLL;
      break;
    case 0x14:
      result = 0x74656C74756FLL;
      break;
    case 0x15:
      result = 0xD000000000000012;
      break;
    case 0x16:
      result = 0x7974697275636573;
      break;
    case 0x17:
      result = 0x7265776F6873;
      break;
    case 0x18:
      v2 = 0x53656B6F6D73;
LABEL_12:
      result = v2 & 0xFFFFFFFFFFFFLL | 0x6E65000000000000;
      break;
    case 0x19:
      result = 0x656C6B6E69727073;
      break;
    case 0x1A:
      result = 0x686374697773;
      break;
    case 0x1B:
      result = 0x69736976656C6574;
      break;
    case 0x1C:
      result = 0xD000000000000011;
      break;
    case 0x1D:
      result = 0x74736F6D72656874;
      break;
    case 0x1E:
      result = 0x65766C6176;
      break;
    case 0x1F:
      result = 0x776F646E6977;
      break;
    case 0x20:
      result = 0x6F43776F646E6977;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_25280019C()
{
  v0 = DeviceType.SingleDeviceType.rawValue.getter();
  v2 = v1;
  if (v0 == DeviceType.SingleDeviceType.rawValue.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_2528C1060();
  }

  return v5 & 1;
}

uint64_t sub_252800238()
{
  sub_2528C1130();
  DeviceType.SingleDeviceType.rawValue.getter();
  sub_2528C0A40();

  return sub_2528C1180();
}

uint64_t sub_2528002A0(uint64_t a1)
{
  DeviceType.SingleDeviceType.rawValue.getter();
  sub_2528C0A40();
}

uint64_t sub_252800304(uint64_t a1)
{
  sub_2528C1130();
  DeviceType.SingleDeviceType.rawValue.getter();
  sub_2528C0A40();

  return sub_2528C1180();
}

uint64_t sub_252800374@<X0>(uint64_t *a1@<X8>)
{
  result = DeviceType.SingleDeviceType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_252800470(uint64_t a1)
{
  v2 = sub_252804884();

  return MEMORY[0x28210B458](a1, v2);
}

double sub_2528004BC(uint64_t a1, uint64_t a2)
{
  if (qword_27F4FB848 != -1)
  {
    swift_once();
  }

  return result;
}

uint64_t sub_252800518(uint64_t a1)
{
  v2 = sub_252804DDC();

  return MEMORY[0x28210C300](a1, v2);
}

uint64_t DeviceType.description.getter()
{
  v1 = *v0;
  if (v1 >> 14)
  {
    sub_2528C0E70();
    if (v1 >> 14 == 1)
    {
      MEMORY[0x2530A80B0](0x547972616D697270, 0xED0000203A657079);
      sub_2528C0ED0();
      v2 = 0x6563697672657320;
      v3 = 0xEE00203A65707954;
    }

    else
    {
      MEMORY[0x2530A80B0](0x6C616E696769726FLL, 0xEE00203A65707954);
      sub_2528C0ED0();
      v3 = 0x80000002528E6310;
      v2 = 0xD000000000000012;
    }

    MEMORY[0x2530A80B0](v2, v3);
  }

  sub_2528C0ED0();
  return 0;
}

uint64_t sub_252800748()
{
  v1 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FEB60, &qword_2528D3390);
  inited = swift_initStackObject();
  if ((v1 & 0xC000) == 0x8000)
  {
    *(inited + 16) = xmmword_2528C17D0;
    *(inited + 32) = v1;
    *(inited + 34) = v1;
    *(inited + 36) = (v1 >> 8) & 0x3F;
  }

  else
  {
    *(inited + 16) = xmmword_2528C3910;
    *(inited + 32) = v1;
  }

  v3 = sub_25274A250(inited);
  swift_setDeallocating();
  return v3;
}

uint64_t static DeviceType.allIntentValueTypes.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FBE28, &qword_2528C4730);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_2528C17D0;
  v1 = sub_252804788();
  *(v0 + 32) = &type metadata for DeviceType.SingleTypeCase;
  *(v0 + 40) = v1;
  v2 = sub_2528047DC();
  *(v0 + 48) = &type metadata for DeviceType.ComponentTypeCase;
  *(v0 + 56) = v2;
  v3 = sub_252804830();
  *(v0 + 64) = &type metadata for DeviceType.UserDefinedTypeCase;
  *(v0 + 72) = v3;
  return v0;
}

unint64_t DeviceType.asIntentValue.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = sub_2528BEC40();
  MEMORY[0x28223BE20](v3 - 8);
  v4 = *v1;
  if (v4 >> 14)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FEBA0, &qword_2528CF8A8);
    sub_2528BEC20();
    sub_252804884();
    v5 = sub_2528BE6E0();
    sub_2528BEC20();
    v6 = sub_2528BE6E0();
    sub_2528BE6C0();
    sub_2528BE6C0();
    if (v4 >> 14 == 1)
    {
      a1[3] = &type metadata for DeviceType.ComponentTypeCase;
      result = sub_2528047DC();
    }

    else
    {
      a1[3] = &type metadata for DeviceType.UserDefinedTypeCase;
      result = sub_252804830();
    }

    a1[4] = result;
    *a1 = v5;
    a1[1] = v6;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FEBA0, &qword_2528CF8A8);
    sub_2528BEC20();
    sub_252804884();
    v8 = sub_2528BE6E0();
    sub_2528BE6C0();
    a1[3] = &type metadata for DeviceType.SingleTypeCase;
    result = sub_252804788();
    a1[4] = result;
    *a1 = v8;
  }

  return result;
}

uint64_t static DeviceType.defaultResolverSpecification.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FEBB0, &qword_2528CF8B0);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v7 - v2;
  v4 = sub_2528048D8();
  MEMORY[0x2530A60E0](v4, &type metadata for DeviceType, &type metadata for DeviceType.SingleTypeCase.Resolver, v4);
  v5 = sub_25280492C();
  MEMORY[0x2530A60E0](v5, &type metadata for DeviceType, &type metadata for DeviceType.ComponentTypeCase.Resolver, v5);
  sub_2527FE2E0();
  sub_2528BEAA0();
  v7[0] = v4;
  v7[1] = &type metadata for DeviceType.SingleTypeCase.Resolver;
  sub_2528BEA90();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_252800C60(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x2822009F8](sub_252800C84, 0, 0);
}

uint64_t sub_252800C84()
{
  v1 = *(v0 + 16);
  sub_2528BE6B0();
  *v1 = *(v0 + 32);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_252800CF4@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_2528BEC40();
  MEMORY[0x28223BE20](v2 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FEBA0, &qword_2528CF8A8);
  sub_2528BEC20();
  sub_252804884();
  result = sub_2528BE6E0();
  *a1 = result;
  return result;
}

uint64_t sub_252800DB4(uint64_t a1)
{
  v2 = sub_25280677C();

  return MEMORY[0x28210B2E8](a1, v2);
}

uint64_t sub_252800E00(uint64_t a1)
{
  sub_25280677C();

  return sub_2528BE550();
}

uint64_t sub_252800E70(uint64_t a1)
{
  v2 = sub_25280502C();

  return MEMORY[0x28210B488](a1, v2);
}

uint64_t sub_252800EBC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC128, &unk_2528C3590);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v11 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC130, &unk_2528C6A80);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v11 - v4;
  v6 = sub_2528BEC40();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  if (qword_27F4FB850 != -1)
  {
    swift_once();
  }

  v8 = sub_2528BE9F0();
  __swift_project_value_buffer(v8, qword_27F502A28);
  sub_2528BE9E0();
  (*(v7 + 56))(v5, 1, 1, v6);
  v9 = sub_2528BE8D0();
  (*(*(v9 - 8) + 56))(v2, 1, 1, v9);
  return sub_2528BE900();
}

uint64_t sub_2528010CC(uint64_t a1)
{
  v2 = sub_25280527C();

  return MEMORY[0x28210C4B8](a1, v2);
}

uint64_t sub_252801144(uint64_t a1, _OWORD *a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = *a2;
  return MEMORY[0x2822009F8](sub_25280116C, 0, 0);
}

uint64_t sub_25280116C()
{
  v1 = *(v0 + 16);
  sub_2528BE6B0();
  v2 = *(v0 + 40);
  sub_2528BE6B0();
  *v1 = v2 | (*(v0 + 41) << 8) | 0x4000;
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_252801200(uint64_t a1)
{
  v2 = sub_252806728();

  return MEMORY[0x28210B2E8](a1, v2);
}

uint64_t sub_25280124C(uint64_t a1)
{
  sub_252806728();

  return sub_2528BE550();
}

uint64_t sub_2528012BC(uint64_t a1)
{
  v2 = sub_252805420();

  return MEMORY[0x28210B488](a1, v2);
}

uint64_t sub_25280132C(uint64_t a1)
{
  v2 = sub_252805670();

  return MEMORY[0x28210C4B8](a1, v2);
}

uint64_t sub_252801378()
{
  v0 = sub_2528BE9F0();
  __swift_allocate_value_buffer(v0, qword_27F502A58);
  __swift_project_value_buffer(v0, qword_27F502A58);
  return sub_2528BE9D0();
}

uint64_t sub_2528013DC(uint64_t a1, _OWORD *a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = *a2;
  return MEMORY[0x2822009F8](sub_252801404, 0, 0);
}

uint64_t sub_252801404()
{
  v1 = *(v0 + 16);
  sub_2528BE6B0();
  v2 = *(v0 + 40);
  sub_2528BE6B0();
  *v1 = v2 | (*(v0 + 41) << 8) | 0x8000;
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_252801498@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_2528BEC40();
  MEMORY[0x28223BE20](v2 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FEBA0, &qword_2528CF8A8);
  sub_2528BEC20();
  sub_252804884();
  v3 = sub_2528BE6E0();
  sub_2528BEC20();
  result = sub_2528BE6E0();
  *a1 = v3;
  a1[1] = result;
  return result;
}

uint64_t sub_252801584(uint64_t a1)
{
  v2 = sub_2528066D4();

  return MEMORY[0x28210B2E8](a1, v2);
}

uint64_t sub_2528015D0(uint64_t a1)
{
  sub_2528066D4();

  return sub_2528BE550();
}

uint64_t sub_252801640(uint64_t a1)
{
  v2 = sub_252805814();

  return MEMORY[0x28210B488](a1, v2);
}

uint64_t sub_2528016B0(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC128, &unk_2528C3590);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v18 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC130, &unk_2528C6A80);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v18 - v11;
  v13 = sub_2528BEC40();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  if (*a3 != -1)
  {
    swift_once();
  }

  v15 = sub_2528BE9F0();
  __swift_project_value_buffer(v15, a4);
  sub_2528BE9E0();
  (*(v14 + 56))(v12, 1, 1, v13);
  v16 = sub_2528BE8D0();
  (*(*(v16 - 8) + 56))(v9, 1, 1, v16);
  return sub_2528BE900();
}

uint64_t sub_2528018BC(uint64_t a1)
{
  v2 = sub_252805A64();

  return MEMORY[0x28210C4B8](a1, v2);
}

uint64_t sub_252801908()
{
  v1 = 0x6E656E6F706D6F63;
  if (*v0 != 1)
  {
    v1 = 0x6966654472657375;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7954656C676E6973;
  }
}

uint64_t sub_252801980@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_252806454(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2528019B4(uint64_t a1)
{
  v2 = sub_252804980();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2528019F0(uint64_t a1)
{
  v2 = sub_252804980();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_252801A2C()
{
  if (*v0)
  {
    return 0x6E656E6F706D6F63;
  }

  else
  {
    return 0x657079546E69616DLL;
  }
}

uint64_t sub_252801A74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x657079546E69616DLL && a2 == 0xE800000000000000;
  if (v6 || (sub_2528C1060() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6E656E6F706D6F63 && a2 == 0xED00006570795474)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_2528C1060();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_252801B58(uint64_t a1)
{
  v2 = sub_252804A7C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_252801B94(uint64_t a1)
{
  v2 = sub_252804A7C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_252801BDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_2528C1060();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_252801C68(uint64_t a1)
{
  v2 = sub_252804AD0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_252801CA4(uint64_t a1)
{
  v2 = sub_252804AD0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_252801CE0()
{
  if (*v0)
  {
    return 0x6966654472657375;
  }

  else
  {
    return 0x6C616E696769726FLL;
  }
}

uint64_t sub_252801D30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6C616E696769726FLL && a2 == 0xEC00000065707954;
  if (v6 || (sub_2528C1060() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6966654472657375 && a2 == 0xEF6570795464656ELL)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_2528C1060();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_252801E18(uint64_t a1)
{
  v2 = sub_2528049D4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_252801E54(uint64_t a1)
{
  v2 = sub_2528049D4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t DeviceType.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FEBC8, &qword_2528CF8B8);
  v27 = *(v4 - 8);
  v28 = v4;
  MEMORY[0x28223BE20](v4);
  v26 = &v22 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FEBD0, &qword_2528CF8C0);
  v24 = *(v6 - 8);
  v25 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v22 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FEBD8, &qword_2528CF8C8);
  v23 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v22 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FEBE0, &qword_2528CF8D0);
  v30 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v22 - v13;
  v15 = *v2;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_252804980();
  sub_2528C11A0();
  if (v15 >> 14)
  {
    if (v15 >> 14 == 1)
    {
      v37 = 1;
      sub_252804A7C();
      v16 = v12;
      sub_2528C0F90();
      v36 = v15;
      v35 = 0;
      sub_252804A28();
      v17 = v25;
      v18 = v29;
      sub_2528C1020();
      if (!v18)
      {
        v34 = BYTE1(v15) & 0x3F;
        v33 = 1;
        sub_2528C1020();
      }

      v19 = v24;
    }

    else
    {
      v42 = 2;
      sub_2528049D4();
      v8 = v26;
      v16 = v12;
      sub_2528C0F90();
      v41 = v15;
      v40 = 0;
      sub_252804A28();
      v17 = v28;
      v21 = v29;
      sub_2528C1020();
      if (!v21)
      {
        v39 = BYTE1(v15) & 0x3F;
        v38 = 1;
        sub_2528C1020();
      }

      v19 = v27;
    }

    (*(v19 + 8))(v8, v17);
    return (*(v30 + 8))(v14, v16);
  }

  else
  {
    v32 = 0;
    sub_252804AD0();
    sub_2528C0F90();
    v31 = v15;
    sub_252804A28();
    sub_2528C1020();
    (*(v23 + 8))(v11, v9);
    return (*(v30 + 8))(v14, v12);
  }
}

uint64_t DeviceType.init(from:)@<X0>(void *a1@<X0>, _WORD *a2@<X8>)
{
  v44 = a2;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FEC10, &qword_2528CF8D8);
  v43 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v45 = &v37 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FEC18, &qword_2528CF8E0);
  v5 = *(v4 - 8);
  v41 = v4;
  v42 = v5;
  MEMORY[0x28223BE20](v4);
  v7 = &v37 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FEC20, &qword_2528CF8E8);
  v39 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v37 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FEC28, &qword_2528CF8F0);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v37 - v13;
  v15 = a1[3];
  v47 = a1;
  __swift_project_boxed_opaque_existential_0(a1, v15);
  sub_252804980();
  v16 = v46;
  sub_2528C1190();
  if (!v16)
  {
    v38 = v8;
    v17 = v45;
    v46 = v12;
    v18 = sub_2528C0F80();
    v19 = *(v18 + 16);
    if (!v19 || ((v20 = *(v18 + 32), v19 == 1) ? (v21 = v20 == 3) : (v21 = 1), v21))
    {
      v22 = sub_2528C0EA0();
      swift_allocError();
      v24 = v23;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FEC30, &qword_2528CF8F8);
      *v24 = &type metadata for DeviceType;
      sub_2528C0F60();
      sub_2528C0E90();
      (*(*(v22 - 8) + 104))(v24, *MEMORY[0x277D84160], v22);
      swift_willThrow();
      (*(v46 + 8))(v14, v11);
      swift_unknownObjectRelease();
    }

    else
    {
      if (!*(v18 + 32))
      {
        v49 = 0;
        sub_252804AD0();
        v28 = v10;
        sub_2528C0F50();
        sub_252804B24();
        v29 = v38;
        sub_2528C0F70();
        (*(v39 + 8))(v28, v29);
        (*(v46 + 8))(v14, v11);
        swift_unknownObjectRelease();
        v36 = v48;
        goto LABEL_15;
      }

      if (v20 == 1)
      {
        v54 = 1;
        sub_252804A7C();
        v26 = v7;
        sub_2528C0F50();
        v52 = 0;
        sub_252804B24();
        v27 = v41;
        sub_2528C0F70();
        v35 = v53;
        v50 = 1;
        sub_2528C0F70();
        (*(v42 + 8))(v26, v27);
        (*(v46 + 8))(v14, v11);
        swift_unknownObjectRelease();
        v36 = v35 | (v51 << 8) | 0x4000;
LABEL_15:
        *v44 = v36;
        return __swift_destroy_boxed_opaque_existential_0Tm(v47);
      }

      v42 = v18;
      v59 = 2;
      sub_2528049D4();
      sub_2528C0F50();
      v30 = v44;
      v57 = 0;
      sub_252804B24();
      v31 = v40;
      v32 = v17;
      sub_2528C0F70();
      v33 = v46;
      v34 = v58;
      v55 = 1;
      sub_2528C0F70();
      (*(v43 + 8))(v32, v31);
      (*(v33 + 8))(v14, v11);
      swift_unknownObjectRelease();
      *v30 = v34 | (v56 << 8) | 0x8000;
    }
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(v47);
}

uint64_t sub_252802A90()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FBE28, &qword_2528C4730);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_2528C17D0;
  v1 = sub_252804788();
  *(v0 + 32) = &type metadata for DeviceType.SingleTypeCase;
  *(v0 + 40) = v1;
  v2 = sub_2528047DC();
  *(v0 + 48) = &type metadata for DeviceType.ComponentTypeCase;
  *(v0 + 56) = v2;
  v3 = sub_252804830();
  *(v0 + 64) = &type metadata for DeviceType.UserDefinedTypeCase;
  *(v0 + 72) = v3;
  return v0;
}

uint64_t DeviceType.hash(into:)(uint64_t a1)
{
  v2 = *v1;
  if (v2 >> 14)
  {
    if (v2 >> 14 == 1)
    {
      v3 = DeviceType.SingleDeviceType.rawValue.getter();
      v5 = v4;
      if (v3 == DeviceType.SingleDeviceType.rawValue.getter() && v5 == v6)
      {
LABEL_5:

        goto LABEL_14;
      }

      v11 = sub_2528C1060();

      if (v11)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v7 = DeviceType.SingleDeviceType.rawValue.getter();
      v9 = v8;
      if (v7 == DeviceType.SingleDeviceType.rawValue.getter() && v9 == v10)
      {
        goto LABEL_5;
      }

      v12 = sub_2528C1060();

      if (v12)
      {
        goto LABEL_14;
      }
    }

    DeviceType.SingleDeviceType.rawValue.getter();
    sub_2528C0A40();
  }

LABEL_14:
  DeviceType.SingleDeviceType.rawValue.getter();
  sub_2528C0A40();
}

uint64_t DeviceType.hashValue.getter()
{
  v2[39] = *v0;
  sub_2528C1130();
  DeviceType.hash(into:)(v2);
  return sub_2528C1180();
}

uint64_t sub_252802D8C()
{
  v2[39] = *v0;
  sub_2528C1130();
  DeviceType.hash(into:)(v2);
  return sub_2528C1180();
}

uint64_t sub_252802DDC(uint64_t a1)
{
  v3[39] = *v1;
  sub_2528C1130();
  DeviceType.hash(into:)(v3);
  return sub_2528C1180();
}

uint64_t sub_252802E28(uint64_t a1, char a2)
{
  if (a2)
  {
    v2 = 0x203A73656D616ELL;
  }

  else
  {
    v2 = 0x203A736469;
  }

  v5 = v2;
  v3 = MEMORY[0x2530A81A0](a1, MEMORY[0x277D837D0]);
  MEMORY[0x2530A80B0](v3);

  return v5;
}

uint64_t sub_252802EAC(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = *a2;
  v6 = *(a2 + 8);
  if (a1[1])
  {
    if (!v6)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  return sub_252804258(v4, v5);
}

uint64_t sub_252802EDC()
{
  v1 = *v0;
  v2 = MEMORY[0x277D84FA0];
  if (v1 <= 20)
  {
    if (v1 == 15)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC658, &qword_2528C4770);
      v13 = sub_2528BFCF0();
      v14 = *(v13 - 8);
      v15 = *(v14 + 72);
      v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
      v17 = swift_allocObject();
      *(v17 + 16) = xmmword_2528C35E0;
      v18 = v17 + v16;
      v19 = *(v14 + 104);
      v19(v18, *MEMORY[0x277D15F00], v13);
      v19(v18 + v15, *MEMORY[0x277D15ED0], v13);
      v19(v18 + 2 * v15, *MEMORY[0x277D15F18], v13);
      v19(v18 + 3 * v15, *MEMORY[0x277D15F28], v13);
      v2 = sub_252749AA8(v17);
      swift_setDeallocating();
      goto LABEL_16;
    }

    if (v1 != 17)
    {
      if (v1 == 20)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC658, &qword_2528C4770);
        v3 = sub_2528BFCF0();
        v4 = *(v3 - 8);
        v5 = *(v4 + 72);
        v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
        v7 = swift_allocObject();
        *(v7 + 16) = xmmword_2528C17E0;
        v8 = v7 + v6;
        v9 = *(v4 + 104);
        v9(v8, *MEMORY[0x277D15F38], v3);
        v10 = MEMORY[0x277D15EF0];
LABEL_10:
        v9(v8 + v5, *v10, v3);
        v2 = sub_252749AA8(v7);
        swift_setDeallocating();
LABEL_16:
        swift_arrayDestroy();
        goto LABEL_17;
      }

      return v2;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC658, &qword_2528C4770);
    v20 = sub_2528BFCF0();
    v21 = *(v20 - 8);
    v22 = (*(v21 + 80) + 32) & ~*(v21 + 80);
    v23 = swift_allocObject();
    v24 = v23;
    *(v23 + 16) = xmmword_2528C3910;
    v25 = MEMORY[0x277D15F30];
LABEL_14:
    (*(v21 + 104))(v23 + v22, *v25, v20);
    v2 = sub_252749AA8(v24);
    swift_setDeallocating();
    (*(v21 + 8))(v24 + v22, v20);
LABEL_17:
    swift_deallocClassInstance();
    return v2;
  }

  switch(v1)
  {
    case 21:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC658, &qword_2528C4770);
      v20 = sub_2528BFCF0();
      v21 = *(v20 - 8);
      v22 = (*(v21 + 80) + 32) & ~*(v21 + 80);
      v23 = swift_allocObject();
      v24 = v23;
      *(v23 + 16) = xmmword_2528C3910;
      v25 = MEMORY[0x277D15EE0];
      goto LABEL_14;
    case 26:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC658, &qword_2528C4770);
      v26 = sub_2528BFCF0();
      v27 = *(v26 - 8);
      v28 = *(v27 + 72);
      v29 = (*(v27 + 80) + 32) & ~*(v27 + 80);
      v30 = swift_allocObject();
      *(v30 + 16) = xmmword_2528C17D0;
      v31 = v30 + v29;
      v32 = *(v27 + 104);
      v32(v31, *MEMORY[0x277D15EF8], v26);
      v32(v31 + v28, *MEMORY[0x277D15F08], v26);
      v32(v31 + 2 * v28, *MEMORY[0x277D15F10], v26);
      v2 = sub_252749AA8(v30);
      swift_setDeallocating();
      goto LABEL_16;
    case 29:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC658, &qword_2528C4770);
      v3 = sub_2528BFCF0();
      v11 = *(v3 - 8);
      v5 = *(v11 + 72);
      v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
      v7 = swift_allocObject();
      *(v7 + 16) = xmmword_2528C17E0;
      v8 = v7 + v12;
      v9 = *(v11 + 104);
      v9(v8, *MEMORY[0x277D15ED8], v3);
      v10 = MEMORY[0x277D15F20];
      goto LABEL_10;
  }

  return v2;
}

unint64_t sub_252803524@<X0>(char a2@<W1>, uint64_t *a3@<X8>)
{
  v5 = sub_2528BEC40();
  MEMORY[0x28223BE20](v5 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FEE80, &qword_2528D0DF0);

  sub_2528BEC20();
  v6 = sub_2528BE730();
  sub_2528BE6C0();
  if (a2)
  {
    v7 = &type metadata for DeviceEntityResolverInputType.NamesCase;
    result = sub_25280662C();
  }

  else
  {
    v7 = &type metadata for DeviceEntityResolverInputType.IdsCase;
    result = sub_252806680();
  }

  a3[3] = v7;
  a3[4] = result;
  *a3 = v6;
  return result;
}

uint64_t sub_252803628()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FEE68, &qword_2528D0DE8);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v7 - v2;
  v4 = sub_252806584();
  MEMORY[0x2530A60E0](v4, &type metadata for DeviceEntityResolverInputType, &type metadata for DeviceEntityResolverInputType.IdsCase.Resolver, v4);
  v5 = sub_2528065D8();
  MEMORY[0x2530A60E0](v5, &type metadata for DeviceEntityResolverInputType, &type metadata for DeviceEntityResolverInputType.NamesCase.Resolver, v5);
  sub_2527FE3E4();
  sub_2528BEAA0();
  v7[0] = v4;
  v7[1] = &type metadata for DeviceEntityResolverInputType.IdsCase.Resolver;
  sub_2528BEA90();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_2528037B8(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *(v2 + 24) = a1;
  *(v2 + 32) = v3;
  return MEMORY[0x2822009F8](sub_2528037DC, 0, 0);
}

uint64_t sub_2528037DC()
{
  v1 = v0[3];
  sub_2528BE6B0();
  *v1 = v0[2];
  *(v1 + 8) = 0;
  v2 = v0[1];

  return v2();
}

uint64_t sub_252803850(uint64_t a1)
{
  v2 = sub_25280704C();

  return MEMORY[0x28210B2E8](a1, v2);
}

uint64_t sub_25280389C(uint64_t a1)
{
  sub_25280704C();

  return sub_2528BE550();
}

uint64_t sub_252803928(uint64_t a1)
{
  v2 = sub_252806B14();

  return MEMORY[0x28210B488](a1, v2);
}

uint64_t sub_252803974(uint64_t a1)
{
  v2 = sub_2528068C4();

  return MEMORY[0x28210C4B8](a1, v2);
}

uint64_t sub_2528039DC@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_2528BEC40();
  MEMORY[0x28223BE20](v2 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FEE80, &qword_2528D0DF0);
  sub_2528BEC20();
  result = sub_2528BE730();
  *a1 = result;
  return result;
}

uint64_t sub_252803A84(uint64_t a1)
{
  v2 = sub_252806FF8();

  return MEMORY[0x28210B2E8](a1, v2);
}

uint64_t sub_252803AD0(uint64_t a1)
{
  sub_252806FF8();

  return sub_2528BE550();
}

uint64_t sub_252803B5C(uint64_t a1)
{
  v2 = sub_252806E6C();

  return MEMORY[0x28210B488](a1, v2);
}

uint64_t sub_252803BA8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC128, &unk_2528C3590);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v10 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC130, &unk_2528C6A80);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v10 - v4;
  v6 = sub_2528BEC40();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  sub_2528BEC20();
  (*(v7 + 56))(v5, 1, 1, v6);
  v8 = sub_2528BE8D0();
  (*(*(v8 - 8) + 56))(v2, 1, 1, v8);
  return sub_2528BE900();
}

uint64_t sub_252803D70(uint64_t a1)
{
  v2 = sub_252806C1C();

  return MEMORY[0x28210C4B8](a1, v2);
}

uint64_t sub_252803DBC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FBE28, &qword_2528C4730);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_2528C17E0;
  v1 = sub_252806680();
  *(v0 + 32) = &type metadata for DeviceEntityResolverInputType.IdsCase;
  *(v0 + 40) = v1;
  v2 = sub_25280662C();
  *(v0 + 48) = &type metadata for DeviceEntityResolverInputType.NamesCase;
  *(v0 + 56) = v2;
  return v0;
}

uint64_t sub_252803E3C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 32);
    v4 = (a2 + 32);
    while (2)
    {
      v6 = 0xE600000000000000;
      v7 = 0x6D7575636176;
      switch(*v3)
      {
        case 1:
          v6 = 0xE300000000000000;
          v7 = 7368557;
          break;
        case 2:
          v7 = 0x68546D7575636176;
          v6 = 0xED0000706F4D6E65;
          break;
        case 3:
          v7 = 0x61656C4370656564;
          v6 = 0xE90000000000006ELL;
          break;
        case 4:
          v6 = 0xE400000000000000;
          v7 = 1869903201;
          break;
        case 5:
          v6 = 0xE500000000000000;
          v7 = 0x7465697571;
          break;
        case 6:
          v6 = 0xE500000000000000;
          v7 = 0x6B63697571;
          break;
        case 7:
          v6 = 0xE800000000000000;
          v7 = 0x6573696F4E776F6CLL;
          break;
        case 8:
          v6 = 0xE900000000000079;
          v7 = 0x6772656E45776F6CLL;
          break;
        case 9:
          v6 = 0xE800000000000000;
          v7 = 0x6E6F697461636176;
          break;
        case 0xA:
          v6 = 0xE500000000000000;
          v7 = 0x746867696ELL;
          break;
        case 0xB:
          v6 = 0xE300000000000000;
          v7 = 7954788;
          break;
        case 0xC:
          v6 = 0xE300000000000000;
          v7 = 7235949;
          break;
        case 0xD:
          v6 = 0xE300000000000000;
          v7 = 7889261;
          break;
        default:
          break;
      }

      v8 = 0xE600000000000000;
      v9 = 0x6D7575636176;
      switch(*v4)
      {
        case 1:
          v8 = 0xE300000000000000;
          if (v7 == 7368557)
          {
            goto LABEL_46;
          }

          goto LABEL_5;
        case 2:
          v8 = 0xED0000706F4D6E65;
          if (v7 != 0x68546D7575636176)
          {
            goto LABEL_5;
          }

          goto LABEL_46;
        case 3:
          v8 = 0xE90000000000006ELL;
          if (v7 != 0x61656C4370656564)
          {
            goto LABEL_5;
          }

          goto LABEL_46;
        case 4:
          v8 = 0xE400000000000000;
          if (v7 != 1869903201)
          {
            goto LABEL_5;
          }

          goto LABEL_46;
        case 5:
          v8 = 0xE500000000000000;
          if (v7 != 0x7465697571)
          {
            goto LABEL_5;
          }

          goto LABEL_46;
        case 6:
          v8 = 0xE500000000000000;
          if (v7 != 0x6B63697571)
          {
            goto LABEL_5;
          }

          goto LABEL_46;
        case 7:
          v8 = 0xE800000000000000;
          if (v7 != 0x6573696F4E776F6CLL)
          {
            goto LABEL_5;
          }

          goto LABEL_46;
        case 8:
          v8 = 0xE900000000000079;
          if (v7 != 0x6772656E45776F6CLL)
          {
            goto LABEL_5;
          }

          goto LABEL_46;
        case 9:
          v8 = 0xE800000000000000;
          if (v7 != 0x6E6F697461636176)
          {
            goto LABEL_5;
          }

          goto LABEL_46;
        case 0xA:
          v8 = 0xE500000000000000;
          v9 = 0x746867696ELL;
          goto LABEL_45;
        case 0xB:
          v8 = 0xE300000000000000;
          if (v7 != 7954788)
          {
            goto LABEL_5;
          }

          goto LABEL_46;
        case 0xC:
          v8 = 0xE300000000000000;
          if (v7 != 7235949)
          {
            goto LABEL_5;
          }

          goto LABEL_46;
        case 0xD:
          v8 = 0xE300000000000000;
          if (v7 != 7889261)
          {
            goto LABEL_5;
          }

          goto LABEL_46;
        default:
LABEL_45:
          if (v7 != v9)
          {
            goto LABEL_5;
          }

LABEL_46:
          if (v6 == v8)
          {
          }

          else
          {
LABEL_5:
            v5 = sub_2528C1060();

            if ((v5 & 1) == 0)
            {
              return 0;
            }
          }

          ++v3;
          ++v4;
          if (--v2)
          {
            continue;
          }

          return 1;
      }
    }
  }

  return 1;
}

uint64_t sub_2528041FC(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_252804258(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_2528C1060() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_2528042E8(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t _s14HomeAppIntents10DeviceTypeO2eeoiySbAC_ACtFZ_0(unsigned __int16 *a1, unsigned __int16 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (!(v2 >> 14))
  {
    if (!(v3 >> 14))
    {
      goto LABEL_38;
    }

    if (v3 >> 14 == 1)
    {
LABEL_10:
      v8 = DeviceType.SingleDeviceType.rawValue.getter();
      v10 = v9;
      if (v8 == DeviceType.SingleDeviceType.rawValue.getter() && v10 == v11)
      {
        goto LABEL_32;
      }

      v12 = sub_2528C1060();

      if (v12)
      {
        goto LABEL_38;
      }

      goto LABEL_43;
    }

LABEL_26:
    v22 = DeviceType.SingleDeviceType.rawValue.getter();
    v24 = v23;
    if (v22 == DeviceType.SingleDeviceType.rawValue.getter() && v24 == v25)
    {
      goto LABEL_32;
    }

    v26 = sub_2528C1060();

    if (v26)
    {
      goto LABEL_38;
    }

    goto LABEL_43;
  }

  if (v2 >> 14 != 1)
  {
    if (v3 >> 14)
    {
      if (v3 >> 14 != 1)
      {
        v27 = DeviceType.SingleDeviceType.rawValue.getter();
        v29 = v28;
        if (v27 == DeviceType.SingleDeviceType.rawValue.getter() && v29 == v30)
        {
          goto LABEL_32;
        }

        v33 = sub_2528C1060();

        if (v33)
        {
          goto LABEL_38;
        }

        goto LABEL_43;
      }

      goto LABEL_19;
    }

    goto LABEL_26;
  }

  if (!(v3 >> 14))
  {
    goto LABEL_10;
  }

  if (v3 >> 14 != 1)
  {
LABEL_19:
    v13 = DeviceType.SingleDeviceType.rawValue.getter();
    v15 = v14;
    if (v13 == DeviceType.SingleDeviceType.rawValue.getter() && v15 == v16)
    {
    }

    else
    {
      v17 = sub_2528C1060();

      if ((v17 & 1) == 0)
      {
        goto LABEL_43;
      }
    }

    v18 = DeviceType.SingleDeviceType.rawValue.getter();
    v20 = v19;
    if (v18 == DeviceType.SingleDeviceType.rawValue.getter() && v20 == v21)
    {
      goto LABEL_32;
    }

    v31 = sub_2528C1060();

    if (v31)
    {
      goto LABEL_38;
    }

LABEL_43:
    v38 = 0;
    return v38 & 1;
  }

  v4 = DeviceType.SingleDeviceType.rawValue.getter();
  v6 = v5;
  if (v4 == DeviceType.SingleDeviceType.rawValue.getter() && v6 == v7)
  {
LABEL_32:

    goto LABEL_38;
  }

  v32 = sub_2528C1060();

  if ((v32 & 1) == 0)
  {
    goto LABEL_43;
  }

LABEL_38:
  v34 = DeviceType.SingleDeviceType.rawValue.getter();
  v36 = v35;
  if (v34 == DeviceType.SingleDeviceType.rawValue.getter() && v36 == v37)
  {
    v38 = 1;
  }

  else
  {
    v38 = sub_2528C1060();
  }

  return v38 & 1;
}

unint64_t sub_252804788()
{
  result = qword_27F4FEB88;
  if (!qword_27F4FEB88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FEB88);
  }

  return result;
}

unint64_t sub_2528047DC()
{
  result = qword_27F4FEB90;
  if (!qword_27F4FEB90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FEB90);
  }

  return result;
}

unint64_t sub_252804830()
{
  result = qword_27F4FEB98;
  if (!qword_27F4FEB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FEB98);
  }

  return result;
}

unint64_t sub_252804884()
{
  result = qword_27F4FEBA8;
  if (!qword_27F4FEBA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FEBA8);
  }

  return result;
}

unint64_t sub_2528048D8()
{
  result = qword_27F4FEBB8;
  if (!qword_27F4FEBB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FEBB8);
  }

  return result;
}

unint64_t sub_25280492C()
{
  result = qword_27F4FEBC0;
  if (!qword_27F4FEBC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FEBC0);
  }

  return result;
}

unint64_t sub_252804980()
{
  result = qword_27F4FEBE8;
  if (!qword_27F4FEBE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FEBE8);
  }

  return result;
}

unint64_t sub_2528049D4()
{
  result = qword_27F4FEBF0;
  if (!qword_27F4FEBF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FEBF0);
  }

  return result;
}

unint64_t sub_252804A28()
{
  result = qword_27F4FEBF8;
  if (!qword_27F4FEBF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FEBF8);
  }

  return result;
}

unint64_t sub_252804A7C()
{
  result = qword_27F4FEC00;
  if (!qword_27F4FEC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FEC00);
  }

  return result;
}

unint64_t sub_252804AD0()
{
  result = qword_27F4FEC08;
  if (!qword_27F4FEC08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FEC08);
  }

  return result;
}

unint64_t sub_252804B24()
{
  result = qword_27F4FEC38;
  if (!qword_27F4FEC38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FEC38);
  }

  return result;
}

unint64_t sub_252804B7C()
{
  result = qword_27F4FEC40;
  if (!qword_27F4FEC40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FEC40);
  }

  return result;
}

unint64_t sub_252804BD4()
{
  result = qword_27F4FEC48;
  if (!qword_27F4FEC48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FEC48);
  }

  return result;
}

unint64_t sub_252804C2C()
{
  result = qword_27F4FEC50;
  if (!qword_27F4FEC50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FEC50);
  }

  return result;
}

unint64_t sub_252804C84()
{
  result = qword_27F4FEC58;
  if (!qword_27F4FEC58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FEC58);
  }

  return result;
}

unint64_t sub_252804CDC()
{
  result = qword_27F4FEC60;
  if (!qword_27F4FEC60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FEC60);
  }

  return result;
}

unint64_t sub_252804D30()
{
  result = qword_27F4FEC68;
  if (!qword_27F4FEC68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FEC68);
  }

  return result;
}

unint64_t sub_252804D84()
{
  result = qword_27F4FEC70;
  if (!qword_27F4FEC70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FEC70);
  }

  return result;
}

unint64_t sub_252804DDC()
{
  result = qword_27F4FEC78;
  if (!qword_27F4FEC78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FEC78);
  }

  return result;
}

unint64_t sub_252804E84()
{
  result = qword_27F4FEC80;
  if (!qword_27F4FEC80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FEC80);
  }

  return result;
}

unint64_t sub_252804EDC()
{
  result = qword_27F4FEC88;
  if (!qword_27F4FEC88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FEC88);
  }

  return result;
}

unint64_t sub_252804F7C()
{
  result = qword_27F4FECA0;
  if (!qword_27F4FECA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FECA0);
  }

  return result;
}

unint64_t sub_252804FD4()
{
  result = qword_27F4FECA8;
  if (!qword_27F4FECA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FECA8);
  }

  return result;
}

unint64_t sub_25280502C()
{
  result = qword_27F4FECB0;
  if (!qword_27F4FECB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FECB0);
  }

  return result;
}

unint64_t sub_252805084()
{
  result = qword_27F4FECB8;
  if (!qword_27F4FECB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FECB8);
  }

  return result;
}

unint64_t sub_2528050DC()
{
  result = qword_27F4FECC0;
  if (!qword_27F4FECC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FECC0);
  }

  return result;
}

unint64_t sub_252805134()
{
  result = qword_27F4FECC8;
  if (!qword_27F4FECC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FECC8);
  }

  return result;
}

unint64_t sub_2528051D0()
{
  result = qword_27F4FECE0;
  if (!qword_27F4FECE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FECE0);
  }

  return result;
}

unint64_t sub_252805224()
{
  result = qword_27F4FECE8;
  if (!qword_27F4FECE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FECE8);
  }

  return result;
}

unint64_t sub_25280527C()
{
  result = qword_27F4FECF0;
  if (!qword_27F4FECF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FECF0);
  }

  return result;
}

unint64_t sub_252805318()
{
  result = qword_27F4FED08;
  if (!qword_27F4FED08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FED08);
  }

  return result;
}

unint64_t sub_252805370()
{
  result = qword_27F4FED10;
  if (!qword_27F4FED10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FED10);
  }

  return result;
}

unint64_t sub_2528053C8()
{
  result = qword_27F4FED18;
  if (!qword_27F4FED18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FED18);
  }

  return result;
}

unint64_t sub_252805420()
{
  result = qword_27F4FED20;
  if (!qword_27F4FED20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FED20);
  }

  return result;
}

unint64_t sub_252805478()
{
  result = qword_27F4FED28;
  if (!qword_27F4FED28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FED28);
  }

  return result;
}

unint64_t sub_2528054D0()
{
  result = qword_27F4FED30;
  if (!qword_27F4FED30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FED30);
  }

  return result;
}

unint64_t sub_252805528()
{
  result = qword_27F4FED38;
  if (!qword_27F4FED38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FED38);
  }

  return result;
}

unint64_t sub_2528055C4()
{
  result = qword_27F4FED50;
  if (!qword_27F4FED50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FED50);
  }

  return result;
}

unint64_t sub_252805618()
{
  result = qword_27F4FED58;
  if (!qword_27F4FED58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FED58);
  }

  return result;
}

unint64_t sub_252805670()
{
  result = qword_27F4FED60;
  if (!qword_27F4FED60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FED60);
  }

  return result;
}

unint64_t sub_25280570C()
{
  result = qword_27F4FED78;
  if (!qword_27F4FED78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FED78);
  }

  return result;
}

unint64_t sub_252805764()
{
  result = qword_27F4FED80;
  if (!qword_27F4FED80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FED80);
  }

  return result;
}

unint64_t sub_2528057BC()
{
  result = qword_27F4FED88;
  if (!qword_27F4FED88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FED88);
  }

  return result;
}

unint64_t sub_252805814()
{
  result = qword_27F4FED90;
  if (!qword_27F4FED90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FED90);
  }

  return result;
}

unint64_t sub_25280586C()
{
  result = qword_27F4FED98;
  if (!qword_27F4FED98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FED98);
  }

  return result;
}

unint64_t sub_2528058C4()
{
  result = qword_27F4FEDA0;
  if (!qword_27F4FEDA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FEDA0);
  }

  return result;
}

unint64_t sub_25280591C()
{
  result = qword_27F4FEDA8;
  if (!qword_27F4FEDA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FEDA8);
  }

  return result;
}

unint64_t sub_2528059B8()
{
  result = qword_27F4FEDC0;
  if (!qword_27F4FEDC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FEDC0);
  }

  return result;
}

unint64_t sub_252805A0C()
{
  result = qword_27F4FEDC8;
  if (!qword_27F4FEDC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FEDC8);
  }

  return result;
}

unint64_t sub_252805A64()
{
  result = qword_27F4FEDD0;
  if (!qword_27F4FEDD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FEDD0);
  }

  return result;
}

unint64_t sub_252805B00()
{
  result = qword_27F4FEDE8;
  if (!qword_27F4FEDE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FEDE8);
  }

  return result;
}

unint64_t sub_252805B74()
{
  result = qword_27F4FEDF0;
  if (!qword_27F4FEDF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FEDF0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DeviceType(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE)
  {
    goto LABEL_17;
  }

  if (a2 + 65522 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65522 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65522;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65522;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65522;
    }
  }

LABEL_17:
  v6 = ((*a1 >> 4) & 0xC | (*a1 >> 14)) ^ 0xF;
  if (v6 >= 0xD)
  {
    v6 = -1;
  }

  return v6 + 1;
}

_WORD *storeEnumTagSinglePayload for DeviceType(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65522 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65522 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE)
  {
    v4 = 0;
  }

  if (a2 > 0xD)
  {
    v5 = ((a2 - 14) >> 16) + 1;
    *result = a2 - 14;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        result[1] = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
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

    result[1] = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = 16 * (-a2 & 0xC) - (a2 << 14);
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DeviceType.SingleDeviceType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE0)
  {
    goto LABEL_17;
  }

  if (a2 + 32 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 32) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 32;
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

      return (*a1 | (v4 << 8)) - 32;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 32;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x21;
  v8 = v6 - 33;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for DeviceType.SingleDeviceType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 32 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 32) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE0)
  {
    v4 = 0;
  }

  if (a2 > 0xDF)
  {
    v5 = ((a2 - 224) >> 8) + 1;
    *result = a2 + 32;
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
    *result = a2 + 32;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_252805EE0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_252805F28(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

unint64_t sub_25280601C()
{
  result = qword_27F4FEE08;
  if (!qword_27F4FEE08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FEE08);
  }

  return result;
}

unint64_t sub_252806074()
{
  result = qword_27F4FEE10;
  if (!qword_27F4FEE10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FEE10);
  }

  return result;
}

unint64_t sub_2528060CC()
{
  result = qword_27F4FEE18;
  if (!qword_27F4FEE18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FEE18);
  }

  return result;
}

unint64_t sub_252806124()
{
  result = qword_27F4FEE20;
  if (!qword_27F4FEE20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FEE20);
  }

  return result;
}

unint64_t sub_252806198()
{
  result = qword_27F4FEE28;
  if (!qword_27F4FEE28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FEE28);
  }

  return result;
}

unint64_t sub_2528061F0()
{
  result = qword_27F4FEE30;
  if (!qword_27F4FEE30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FEE30);
  }

  return result;
}

unint64_t sub_252806248()
{
  result = qword_27F4FEE38;
  if (!qword_27F4FEE38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FEE38);
  }

  return result;
}

unint64_t sub_2528062A0()
{
  result = qword_27F4FEE40;
  if (!qword_27F4FEE40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FEE40);
  }

  return result;
}

unint64_t sub_2528062F8()
{
  result = qword_27F4FEE48;
  if (!qword_27F4FEE48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FEE48);
  }

  return result;
}

unint64_t sub_252806350()
{
  result = qword_27F4FEE50;
  if (!qword_27F4FEE50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FEE50);
  }

  return result;
}

unint64_t sub_2528063A8()
{
  result = qword_27F4FEE58;
  if (!qword_27F4FEE58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FEE58);
  }

  return result;
}

unint64_t sub_252806400()
{
  result = qword_27F4FEE60;
  if (!qword_27F4FEE60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FEE60);
  }

  return result;
}

uint64_t sub_252806454(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7954656C676E6973 && a2 == 0xEA00000000006570;
  if (v4 || (sub_2528C1060() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E656E6F706D6F63 && a2 == 0xED00006570795474 || (sub_2528C1060() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6966654472657375 && a2 == 0xEF6570795464656ELL)
  {

    return 2;
  }

  else
  {
    v6 = sub_2528C1060();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

unint64_t sub_252806584()
{
  result = qword_27F4FEE70;
  if (!qword_27F4FEE70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FEE70);
  }

  return result;
}

unint64_t sub_2528065D8()
{
  result = qword_27F4FEE78;
  if (!qword_27F4FEE78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FEE78);
  }

  return result;
}

unint64_t sub_25280662C()
{
  result = qword_27F4FEE88;
  if (!qword_27F4FEE88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FEE88);
  }

  return result;
}

unint64_t sub_252806680()
{
  result = qword_27F4FEE90;
  if (!qword_27F4FEE90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FEE90);
  }

  return result;
}

unint64_t sub_2528066D4()
{
  result = qword_27F4FEE98;
  if (!qword_27F4FEE98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FEE98);
  }

  return result;
}

unint64_t sub_252806728()
{
  result = qword_27F4FEEA0;
  if (!qword_27F4FEEA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FEEA0);
  }

  return result;
}

unint64_t sub_25280677C()
{
  result = qword_27F4FEEA8;
  if (!qword_27F4FEEA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FEEA8);
  }

  return result;
}

unint64_t sub_252806814()
{
  result = qword_27F4FEEC8;
  if (!qword_27F4FEEC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FEEC8);
  }

  return result;
}

unint64_t sub_25280686C()
{
  result = qword_27F4FEED0;
  if (!qword_27F4FEED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FEED0);
  }

  return result;
}

unint64_t sub_2528068C4()
{
  result = qword_27F4FEED8;
  if (!qword_27F4FEED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FEED8);
  }

  return result;
}

unint64_t sub_252806918()
{
  result = qword_27F4FEEE0;
  if (!qword_27F4FEEE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FEEE0);
  }

  return result;
}

unint64_t sub_252806970()
{
  result = qword_27F4FEEE8;
  if (!qword_27F4FEEE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FEEE8);
  }

  return result;
}

unint64_t sub_2528069C8()
{
  result = qword_27F4FEEF0;
  if (!qword_27F4FEEF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FEEF0);
  }

  return result;
}

unint64_t sub_252806A20()
{
  result = qword_27F4FEEF8;
  if (!qword_27F4FEEF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FEEF8);
  }

  return result;
}