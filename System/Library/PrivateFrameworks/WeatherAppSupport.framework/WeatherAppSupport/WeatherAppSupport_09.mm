uint64_t sub_220DAEED4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void **a3@<X2>, uint64_t a4@<X8>)
{
  v67 = a2;
  v63 = a1;
  v70 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF951F8, &qword_220DC1DA0);
  OUTLINED_FUNCTION_18(v6);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v7);
  v64 = &v58 - v8;
  v68 = sub_220DC0260();
  OUTLINED_FUNCTION_0();
  v66 = v9;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_9();
  v65 = v11;
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v12);
  v14 = &v58 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94F90, &unk_220DC4410);
  OUTLINED_FUNCTION_18(v15);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v16);
  v17 = OUTLINED_FUNCTION_18_17();
  OUTLINED_FUNCTION_0();
  v69 = v18;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_1();
  v22 = v21 - v20;
  v24 = *a3;
  v23 = a3[1];
  v25 = a3[2];
  v26 = a3[3];
  v27 = a3[4];
  v28 = a3[5];
  sub_220CEF48C(v67, v4);
  v29 = OUTLINED_FUNCTION_16_21();
  if (__swift_getEnumTagSinglePayload(v29, v30, v17) == 1)
  {
    v31 = v68;
    sub_220CE1ABC(v4, &qword_27CF94F90, &unk_220DC4410);
    if (qword_27CF94F40 != -1)
    {
      OUTLINED_FUNCTION_4_0(&qword_27CF94F40);
    }

    v32 = sub_220DBF410();
    __swift_project_value_buffer(v32, qword_27CF95F48);
    v33 = sub_220DBF3F0();
    v34 = sub_220DC0980();
    if (os_log_type_enabled(v33, v34))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_17_14(&dword_220CD1000, v35, v36, "Failed to create platter string for Feels Like due to missing extrema values");
      OUTLINED_FUNCTION_19_14();
    }

    v37 = 1;
    v38 = v70;
  }

  else
  {
    (*(v69 + 32))(v22, v4, v17);
    v71 = v24;
    v72 = v23;
    v73 = v25;
    v74 = v26;
    v75 = v27;
    v76 = v28;
    sub_220DAF450(&v71, v14);
    v71 = v24;
    v72 = v23;
    v73 = v25;
    v74 = v26;
    v75 = v27;
    v76 = v28;
    v39 = v64;
    sub_220DAFD84(v63, &v71, v64);
    v40 = OUTLINED_FUNCTION_16_21();
    v31 = v68;
    if (__swift_getEnumTagSinglePayload(v40, v41, v68) == 1)
    {
      (*(v69 + 8))(v22, v17);
      sub_220CE1ABC(v39, &qword_27CF951F8, &qword_220DC1DA0);
      v38 = v70;
      (*(v66 + 32))(v70, v14, v31);
    }

    else
    {
      v63 = v22;
      v67 = v17;
      v42 = v14;
      v43 = v66;
      (*(v66 + 32))(v65, v39, v31);
      if (qword_280FA6600 != -1)
      {
        OUTLINED_FUNCTION_10(&qword_280FA6600);
      }

      OUTLINED_FUNCTION_2_35();
      v64 = sub_220DBE240();
      v62 = v44;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF951E8, &qword_220DC1D90);
      v45 = sub_220DC0250();
      v58 = v45;
      v46 = *(v45 - 8);
      v59 = *(v46 + 72);
      v47 = (*(v46 + 80) + 32) & ~*(v46 + 80);
      v48 = swift_allocObject();
      v60 = v48;
      v61 = v42;
      *(v48 + 16) = xmmword_220DC17C0;
      v49 = v48 + v47;
      v50 = *(v43 + 16);
      v50(v48 + v47, v42, v31);
      v51 = *MEMORY[0x277D7B3C0];
      v52 = v31;
      v53 = *(v46 + 104);
      v53(v49, v51, v45);
      v54 = v59;
      v55 = v65;
      v50(v49 + v59, v65, v52);
      v53(v49 + v54, v51, v58);
      v31 = v52;
      v38 = v70;
      sub_220DC0220();
      v56 = *(v43 + 8);
      v56(v55, v52);
      v56(v61, v52);
      (*(v69 + 8))(v63, v67);
    }

    v37 = 0;
  }

  return __swift_storeEnumTagSinglePayload(v38, v37, 1, v31);
}

uint64_t sub_220DAF450@<X0>(void **a1@<X1>, uint64_t a2@<X8>)
{
  v82 = a2;
  v76 = sub_220DC0300();
  v3 = *(v76 - 8);
  MEMORY[0x28223BE20](v76);
  v5 = v68 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = sub_220DC0A40();
  v86 = *(v75 - 8);
  MEMORY[0x28223BE20](v75);
  v7 = v68 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FA0, &unk_220DC17F0);
  v84 = *(v8 - 8);
  v85 = v8;
  v9 = MEMORY[0x28223BE20](v8);
  v79 = v68 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v78 = v68 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v77 = v68 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v83 = v68 - v16;
  MEMORY[0x28223BE20](v15);
  v87 = v68 - v17;
  v18 = *a1;
  sub_220DBF2F0();
  sub_220D287C0();
  v19 = v18;
  sub_220DBE040();
  sub_220DBF300();
  sub_220DBE040();
  sub_220DC02B0();
  sub_220DBF130();
  swift_allocObject();
  v20 = v19;
  v70 = v20;
  sub_220DBF120();
  v21 = [v20 symbol];
  sub_220DC0620();

  LODWORD(v74) = *MEMORY[0x277D7B408];
  v22 = *(v3 + 104);
  v72 = v3 + 104;
  v73 = v22;
  v23 = v5;
  v24 = v76;
  v22(v5);
  v71 = sub_220CF6ABC();
  v25 = v75;
  v80 = sub_220DBE090();
  v81 = v26;

  v27 = *(v3 + 8);
  v68[1] = v3 + 8;
  v69 = v27;
  v28 = v24;
  v27(v23, v24);
  v29 = *(v86 + 8);
  v86 += 8;
  v68[0] = v29;
  v29(v7, v25);
  v30 = v7;
  sub_220DC02B0();
  swift_allocObject();
  v31 = v70;
  sub_220DBF120();
  v32 = [v31 symbol];
  sub_220DC0620();

  v33 = v85;
  v73(v23, v74, v28);
  v34 = v83;
  v74 = sub_220DBE090();
  v36 = v35;

  v37 = v84;

  v69(v23, v28);
  v38 = v34;
  (v68[0])(v30, v25);
  v39 = *(v37 + 16);
  v40 = v77;
  v39(v77, v87, v33);
  v41 = v78;
  v39(v78, v38, v33);
  v42 = v79;
  sub_220DBE130();
  sub_220DBE050();
  v44 = v43;
  v47 = *(v37 + 8);
  v46 = v37 + 8;
  v45 = v47;
  v47(v42, v33);
  v48 = round(v44);
  sub_220DBE130();
  sub_220DBE050();
  v50 = v49;
  v47(v42, v33);
  v47(v41, v33);
  v47(v40, v33);
  if (v48 == round(v50))
  {

    if (qword_280FA6600 != -1)
    {
      swift_once();
    }

    sub_220DBE240();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF951E8, &qword_220DC1D90);
    v51 = *(sub_220DC0250() - 8);
    v52 = (*(v51 + 80) + 32) & ~*(v51 + 80);
    v53 = swift_allocObject();
    *(v53 + 16) = xmmword_220DC17A0;
    v54 = (v53 + v52);
    v55 = v81;
    *v54 = v80;
    v54[1] = v55;
    (*(v51 + 104))();
    sub_220DC0220();
  }

  else
  {
    v86 = v36;
    v56 = v74;
    v84 = v46;
    if (qword_280FA6600 != -1)
    {
      swift_once();
    }

    v79 = sub_220DBE240();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF951E8, &qword_220DC1D90);
    v57 = sub_220DC0250();
    v58 = *(v57 - 8);
    v59 = *(v58 + 72);
    v60 = (*(v58 + 80) + 32) & ~*(v58 + 80);
    v61 = swift_allocObject();
    *(v61 + 16) = xmmword_220DC17C0;
    v62 = (v61 + v60);
    v63 = v86;
    *v62 = v56;
    v62[1] = v63;
    v64 = *(v58 + 104);
    (v64)(v62, *MEMORY[0x277D7B3C8], v57);
    v65 = (v62 + v59);
    v66 = v81;
    *v65 = v80;
    v65[1] = v66;
    v64();
    sub_220DC0220();
    v38 = v83;
  }

  v45(v38, v33);
  return (v45)(v87, v33);
}

uint64_t sub_220DAFD84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v118 = a1;
  v119 = a3;
  v110 = sub_220DBE5C0();
  v109 = *(v110 - 8);
  MEMORY[0x28223BE20](v110);
  v108 = &v101 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = sub_220DBE5E0();
  v106 = *(v107 - 8);
  MEMORY[0x28223BE20](v107);
  v105 = &v101 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FA0, &unk_220DC17F0);
  v123 = *(v6 - 8);
  v7 = MEMORY[0x28223BE20](v6);
  v104 = &v101 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v103 = &v101 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v102 = &v101 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v101 = &v101 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v117 = &v101 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v116 = &v101 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v101 - v20;
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v101 - v23;
  v25 = MEMORY[0x28223BE20](v22);
  v27 = &v101 - v26;
  MEMORY[0x28223BE20](v25);
  v29 = &v101 - v28;
  v31 = *a2;
  v30 = *(a2 + 8);
  v32 = *(a2 + 24);
  v112 = *(a2 + 16);
  v113 = v32;
  v33 = *(a2 + 40);
  v114 = *(a2 + 32);
  v115 = v33;
  sub_220DBF2F0();
  sub_220D287C0();
  v34 = v31;
  sub_220DBE040();
  sub_220DBF300();
  v111 = v27;
  sub_220DBE040();
  sub_220DBE7B0();
  v120 = v21;
  sub_220DBE780();
  v35 = *(v123 + 16);
  v36 = v116;
  v122 = v29;
  v35(v116, v29, v6);
  v37 = v117;
  v121 = v24;
  v118 = v6;
  v35(v117, v24, v6);
  v124[0] = v34;
  v124[1] = v30;
  v39 = v112;
  v38 = v113;
  v124[2] = v112;
  v124[3] = v113;
  v41 = v114;
  v40 = v115;
  v124[4] = v114;
  v124[5] = v115;
  v42 = v34;
  v43 = v30;
  v44 = v39;
  v45 = v38;
  v46 = v41;
  v47 = v40;
  switch(sub_220DB14E4(v36, v37, v124))
  {
    case 1u:
      v59 = v105;
      sub_220DBE580();
      v60 = v108;
      sub_220DBE5D0();
      (*(v106 + 8))(v59, v107);
      LOBYTE(v59) = sub_220DBE5A0();
      (*(v109 + 8))(v60, v110);
      v48 = v118;
      v49 = v111;
      if (v59)
      {
        v56 = v122;
        v51 = v123;
        if (qword_280FA6600 != -1)
        {
          goto LABEL_36;
        }
      }

      else
      {
        v56 = v122;
        v51 = v123;
        if (qword_280FA6600 != -1)
        {
          goto LABEL_36;
        }
      }

      goto LABEL_29;
    case 2u:
      v54 = v105;
      sub_220DBE580();
      v55 = v108;
      sub_220DBE5D0();
      (*(v106 + 8))(v54, v107);
      LOBYTE(v54) = sub_220DBE5A0();
      (*(v109 + 8))(v55, v110);
      v48 = v118;
      v49 = v111;
      if (v54)
      {
        v56 = v122;
        v51 = v123;
        if (qword_280FA6600 != -1)
        {
          goto LABEL_36;
        }
      }

      else
      {
        v56 = v122;
        v51 = v123;
        if (qword_280FA6600 != -1)
        {
          goto LABEL_36;
        }
      }

      goto LABEL_29;
    case 3u:
      v57 = v105;
      sub_220DBE580();
      v58 = v108;
      sub_220DBE5D0();
      (*(v106 + 8))(v57, v107);
      LOBYTE(v57) = sub_220DBE5A0();
      (*(v109 + 8))(v58, v110);
      v48 = v118;
      v49 = v111;
      if (v57)
      {
        v56 = v122;
        v51 = v123;
        if (qword_280FA6600 == -1)
        {
          goto LABEL_29;
        }
      }

      else
      {
        v56 = v122;
        v51 = v123;
        if (qword_280FA6600 == -1)
        {
          goto LABEL_29;
        }
      }

LABEL_36:
      swift_once();
LABEL_29:
      sub_220DBE240();
      v50 = v119;
      goto LABEL_30;
    case 4u:
      v52 = v105;
      sub_220DBE580();
      v53 = v108;
      sub_220DBE5D0();
      (*(v106 + 8))(v52, v107);
      LOBYTE(v52) = sub_220DBE5A0();
      (*(v109 + 8))(v53, v110);
      v48 = v118;
      v49 = v111;
      if (v52)
      {
        v51 = v123;
        if (qword_280FA6600 == -1)
        {
          goto LABEL_22;
        }
      }

      else
      {
        v51 = v123;
        if (qword_280FA6600 == -1)
        {
          goto LABEL_22;
        }
      }

      swift_once();
LABEL_22:
      sub_220DBE240();
      v50 = v119;
LABEL_23:
      v56 = v122;
LABEL_30:
      sub_220DC0210();
      v96 = *(v51 + 8);
      v96(v120, v48);
      v96(v121, v48);
      v96(v49, v48);
      v96(v56, v48);
      v97 = 0;
LABEL_31:
      v98 = sub_220DC0260();
      return __swift_storeEnumTagSinglePayload(v50, v97, 1, v98);
    case 5u:
      v61 = v118;
      v62 = v111;
      v63 = v120;
      v64 = v121;
      if (qword_27CF94F40 != -1)
      {
        swift_once();
      }

      v65 = sub_220DBF410();
      __swift_project_value_buffer(v65, qword_27CF95F48);
      v66 = v101;
      v67 = v122;
      v35(v101, v122, v61);
      v68 = v102;
      v35(v102, v62, v61);
      v35(v103, v64, v61);
      v35(v104, v63, v61);
      v69 = v62;
      v70 = sub_220DBF3F0();
      v71 = sub_220DC0980();
      if (os_log_type_enabled(v70, v71))
      {
        v72 = swift_slowAlloc();
        v117 = swift_slowAlloc();
        v124[0] = v117;
        *v72 = 136446978;
        sub_220DB1ED4(&qword_27CF96720, MEMORY[0x277CC8800]);
        LODWORD(v116) = v71;
        v73 = sub_220DC0C70();
        v115 = v70;
        v74 = v69;
        v76 = v75;
        v77 = *(v123 + 8);
        v77(v66, v61);
        v78 = sub_220D3F210(v73, v76, v124);

        *(v72 + 4) = v78;
        v79 = v74;
        *(v72 + 12) = 2082;
        v80 = sub_220DC0C70();
        v82 = v81;
        v77(v68, v61);
        v83 = sub_220D3F210(v80, v82, v124);

        *(v72 + 14) = v83;
        *(v72 + 22) = 2082;
        v84 = v103;
        v85 = sub_220DC0C70();
        v87 = v86;
        v77(v84, v61);
        v88 = sub_220D3F210(v85, v87, v124);

        *(v72 + 24) = v88;
        *(v72 + 32) = 2082;
        v89 = v104;
        v90 = sub_220DC0C70();
        v92 = v91;
        v77(v89, v61);
        v93 = sub_220D3F210(v90, v92, v124);

        *(v72 + 34) = v93;
        v94 = v115;
        _os_log_impl(&dword_220CD1000, v115, v116, "Failed to make yesterday platter string for Feels Like due to unhandled case with maxApparentTemperature:%{public}s, minApparentTemperature:%{public}s, maxActualTemperature:%{public}s, minActualTemperature:%{public}s", v72, 0x2Au);
        v95 = v117;
        swift_arrayDestroy();
        MEMORY[0x223D98FB0](v95, -1, -1);
        MEMORY[0x223D98FB0](v72, -1, -1);

        v77(v120, v61);
        v77(v121, v61);
        v77(v79, v61);
        v77(v122, v61);
      }

      else
      {

        v100 = *(v123 + 8);
        v100(v104, v61);
        v100(v103, v61);
        v100(v68, v61);
        v100(v66, v61);
        v100(v63, v61);
        v100(v64, v61);
        v100(v69, v61);
        v100(v67, v61);
      }

      v97 = 1;
      v50 = v119;
      goto LABEL_31;
    default:
      v48 = v118;
      v49 = v111;
      if (qword_280FA6600 != -1)
      {
        swift_once();
      }

      sub_220DBE240();
      v50 = v119;
      v51 = v123;
      goto LABEL_23;
  }
}

uint64_t sub_220DB0CEC@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  v109 = a2;
  sub_220DC0300();
  OUTLINED_FUNCTION_0();
  v97 = v4;
  v98 = v3;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_1();
  v95 = v6 - v5;
  v96 = sub_220DC0A40();
  OUTLINED_FUNCTION_0();
  v94 = v7;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_1();
  v102 = v10 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FA0, &unk_220DC17F0);
  OUTLINED_FUNCTION_0();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_9();
  v101 = v15;
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v16);
  v100 = (&v93 - v17);
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v18);
  v106 = &v93 - v19;
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v20);
  v105 = &v93 - v21;
  OUTLINED_FUNCTION_23();
  v23 = MEMORY[0x28223BE20](v22);
  v25 = &v93 - v24;
  MEMORY[0x28223BE20](v23);
  v27 = &v93 - v26;
  v29 = *a1;
  v28 = *(a1 + 8);
  v30 = *(a1 + 16);
  v31 = *(a1 + 24);
  v32 = *(a1 + 40);
  v103 = *(a1 + 32);
  v104 = v32;
  sub_220DBE9D0();
  sub_220DBE9B0();
  v107 = v13;
  v33 = *(v13 + 16);
  v34 = v105;
  v111 = v27;
  v33(v105, v27, v11);
  v35 = v106;
  v110 = v25;
  v108 = v11;
  v99 = v33;
  v33(v106, v25, v11);
  v112[0] = v29;
  v112[1] = v28;
  v112[2] = v30;
  v112[3] = v31;
  v37 = v103;
  v36 = v104;
  v112[4] = v103;
  v112[5] = v104;
  v38 = v29;
  v39 = v28;
  v40 = v30;
  v41 = v31;
  v42 = v37;
  v43 = v36;
  v44 = sub_220DB14E4(v34, v35, v112);
  if (v44 == 5)
  {
    if (qword_27CF94F40 != -1)
    {
      OUTLINED_FUNCTION_4_0(&qword_27CF94F40);
    }

    v45 = sub_220DBF410();
    __swift_project_value_buffer(v45, qword_27CF95F48);
    v46 = v99;
    v47 = v100;
    v48 = v108;
    v99(v100, v111, v108);
    v49 = v101;
    v50 = v110;
    v46(v101, v110, v48);
    v51 = sub_220DBF3F0();
    v52 = sub_220DC0980();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v106 = swift_slowAlloc();
      v112[0] = v106;
      *v53 = 136446466;
      sub_220DB1ED4(&qword_27CF96720, MEMORY[0x277CC8800]);
      v54 = sub_220DC0C70();
      v56 = v55;
      v57 = *(v107 + 8);
      v57(v47, v48);
      v58 = sub_220D3F210(v54, v56, v112);
      LODWORD(v107) = v52;
      v59 = v58;

      *(v53 + 4) = v59;
      *(v53 + 12) = 2082;
      v60 = sub_220DC0C70();
      v62 = v61;
      v63 = OUTLINED_FUNCTION_37();
      (v57)(v63);
      v64 = sub_220D3F210(v60, v62, v112);

      *(v53 + 14) = v64;
      _os_log_impl(&dword_220CD1000, v51, v107, "Failed to make today Feels Like sentence due to unhandled case with apparentTemperature:%{public}s, actualTemperature:%{public}s", v53, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_19_14();
      OUTLINED_FUNCTION_19_14();

      v57(v110, v48);
      v57(v111, v48);
    }

    else
    {

      v86 = *(v107 + 8);
      v86(v49, v48);
      v87 = OUTLINED_FUNCTION_37();
      (v86)(v87);
      v86(v50, v48);
      v88 = OUTLINED_FUNCTION_36();
      (v86)(v88);
    }

    goto LABEL_10;
  }

  v65 = sub_220DB18B8(v44);
  if (!v66)
  {
    v89 = v108;
    v90 = *(v107 + 8);
    v90(v110, v108);
    v90(v111, v89);
LABEL_10:
    v85 = 1;
    v82 = v109;
    goto LABEL_11;
  }

  v105 = v66;
  v106 = v65;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF951E8, &qword_220DC1D90);
  sub_220DC0250();
  OUTLINED_FUNCTION_0();
  v103 = v68;
  v104 = v67;
  v69 = (*(v68 + 80) + 32) & ~*(v68 + 80);
  v70 = swift_allocObject();
  *(v70 + 16) = xmmword_220DC17A0;
  v100 = (v70 + v69);
  v101 = v70;
  sub_220DC02B0();
  sub_220DBF130();
  swift_allocObject();
  v71 = v38;
  sub_220DBF120();
  v72 = [v71 symbol];
  sub_220DC0620();

  v74 = v97;
  v73 = v98;
  v75 = v95;
  (*(v97 + 104))(v95, *MEMORY[0x277D7B408], v98);
  sub_220CF6ABC();
  v76 = v108;
  v77 = v96;
  v78 = sub_220DBE090();
  v80 = v79;

  (*(v74 + 8))(v75, v73);
  (*(v94 + 8))(v102, v77);
  v81 = v100;
  *v100 = v78;
  v81[1] = v80;
  v103[13]();
  v82 = v109;
  sub_220DC0220();
  v83 = *(v107 + 8);
  v83(v110, v76);
  v84 = OUTLINED_FUNCTION_37();
  (v83)(v84);
  v85 = 0;
LABEL_11:
  v91 = sub_220DC0260();
  return __swift_storeEnumTagSinglePayload(v82, v85, 1, v91);
}

uint64_t sub_220DB14E4(uint64_t a1, uint64_t a2, void **a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FA0, &unk_220DC17F0);
  OUTLINED_FUNCTION_0();
  v8 = v7;
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v9);
  v10 = *a3;
  v11 = a3[3];
  v43 = a3[2];
  v44 = a3[1];
  v12 = a3[4];
  v13 = a3[5];
  v45 = a1;
  sub_220DBE130();
  sub_220DBE050();
  v15 = v14;
  v16 = *(v8 + 8);
  v17 = OUTLINED_FUNCTION_37();
  v16(v17);
  v18 = round(v15);
  sub_220DBE130();

  sub_220DBE050();
  v20 = v19;
  v21 = OUTLINED_FUNCTION_37();
  v16(v21);
  if (v18 == round(v20))
  {
    (v16)(a2, v6);
    (v16)(v45, v6);
    return 0;
  }

  sub_220DB1ED4(&qword_27CF96728, MEMORY[0x277CC87E8]);
  v23 = OUTLINED_FUNCTION_9_25(a2, v45);
  if ((v23 & 1) == 0)
  {
    goto LABEL_27;
  }

  if (qword_27CF94F68 != -1)
  {
    v23 = OUTLINED_FUNCTION_7_25(&qword_27CF94F68);
  }

  v24 = OUTLINED_FUNCTION_20_9(v23, qword_27CF966F0);
  if ((OUTLINED_FUNCTION_9_25(v24, v25) & 1) == 0)
  {
    v37 = OUTLINED_FUNCTION_36();
    v16(v37);
    v38 = OUTLINED_FUNCTION_27_0();
    v16(v38);
    return 1;
  }

  else
  {
LABEL_27:
    if (OUTLINED_FUNCTION_9_25(a2, v45))
    {
      if (qword_27CF94F68 != -1)
      {
        OUTLINED_FUNCTION_7_25(&qword_27CF94F68);
      }

      __swift_project_value_buffer(v6, qword_27CF966F0);
      sub_220D287C0();
      if (sub_220DBE010())
      {
        v26 = OUTLINED_FUNCTION_36();
        v16(v26);
        v27 = OUTLINED_FUNCTION_27_0();
        v16(v27);
        return 2;
      }
    }

    sub_220D287C0();
    v28 = OUTLINED_FUNCTION_14_20(v45, a2);
    if ((v28 & 1) == 0)
    {
      goto LABEL_16;
    }

    if (qword_27CF94F70 != -1)
    {
      v28 = OUTLINED_FUNCTION_6_26(&qword_27CF94F70);
    }

    v29 = OUTLINED_FUNCTION_20_9(v28, qword_27CF96708);
    if ((OUTLINED_FUNCTION_9_25(v29, v30) & 1) == 0)
    {
      v41 = OUTLINED_FUNCTION_36();
      v16(v41);
      v42 = OUTLINED_FUNCTION_27_0();
      v16(v42);
      return 3;
    }

    else
    {
LABEL_16:
      v31 = OUTLINED_FUNCTION_14_20(v45, a2);
      if (v31)
      {
        if (qword_27CF94F70 != -1)
        {
          v31 = OUTLINED_FUNCTION_6_26(&qword_27CF94F70);
        }

        v32 = OUTLINED_FUNCTION_20_9(v31, qword_27CF96708);
        v34 = OUTLINED_FUNCTION_14_20(v32, v33);
        v35 = OUTLINED_FUNCTION_36();
        v16(v35);
        v36 = OUTLINED_FUNCTION_27_0();
        v16(v36);
        if (v34)
        {
          return 4;
        }
      }

      else
      {
        v39 = OUTLINED_FUNCTION_36();
        v16(v39);
        v40 = OUTLINED_FUNCTION_27_0();
        v16(v40);
      }

      return 5;
    }
  }
}

uint64_t sub_220DB18B8(unsigned __int8 a1)
{
  v2 = sub_220DBE5C0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_220DBE5E0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = a1;
  switch(a1)
  {
    case 1u:
      sub_220DBE580();
      sub_220DBE5D0();
      (*(v7 + 8))(v9, v6);
      v11 = sub_220DBE5A0();
      (*(v3 + 8))(v5, v2);
      v12 = qword_280FA6600;
      if (v11)
      {
        goto LABEL_9;
      }

      if (qword_280FA6600 != -1)
      {
        goto LABEL_18;
      }

      return sub_220DBE240();
    case 2u:
      sub_220DBE580();
      sub_220DBE5D0();
      (*(v7 + 8))(v9, v6);
      v15 = sub_220DBE5A0();
      (*(v3 + 8))(v5, v2);
      v12 = qword_280FA6600;
      if (v15)
      {
LABEL_9:
        if (v12 != -1)
        {
          goto LABEL_18;
        }
      }

      else if (qword_280FA6600 != -1)
      {
        goto LABEL_18;
      }

      return sub_220DBE240();
    case 3u:
      sub_220DBE580();
      sub_220DBE5D0();
      (*(v7 + 8))(v9, v6);
      v16 = sub_220DBE5A0();
      (*(v3 + 8))(v5, v2);
      v14 = qword_280FA6600;
      if (v16)
      {
        goto LABEL_12;
      }

      if (qword_280FA6600 == -1)
      {
        return sub_220DBE240();
      }

      goto LABEL_18;
    case 4u:
      sub_220DBE580();
      sub_220DBE5D0();
      (*(v7 + 8))(v9, v6);
      v13 = sub_220DBE5A0();
      (*(v3 + 8))(v5, v2);
      v14 = qword_280FA6600;
      if (v13)
      {
LABEL_12:
        if (v14 == -1)
        {
          return sub_220DBE240();
        }
      }

      else if (qword_280FA6600 == -1)
      {
        return sub_220DBE240();
      }

LABEL_18:
      swift_once();
      return sub_220DBE240();
    default:
      return result;
  }
}

uint64_t sub_220DB1E38(double a1, uint64_t a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FA0, &unk_220DC17F0);
  __swift_allocate_value_buffer(v4, a3);
  __swift_project_value_buffer(v4, a3);
  v5 = [objc_opt_self() fahrenheit];
  sub_220D287C0();
  return sub_220DBE040();
}

uint64_t sub_220DB1ED4(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF94FA0, &unk_220DC17F0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t ChartPastDataTreatment.hashValue.getter()
{
  v1 = *v0;
  sub_220DC0CE0();
  MEMORY[0x223D98920](v1);
  return sub_220DC0D20();
}

unint64_t sub_220DB1FBC()
{
  result = qword_27CF96730;
  if (!qword_27CF96730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF96730);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ChartPastDataTreatment(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t SunriseSunsetDetailChartContentStyle.TwilightSunColors.init(twilightCivil:twilightNautical:twilightAstronomical:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

uint64_t static SunriseSunsetDetailChartContentStyle.TwilightSunColors.== infix(_:_:)(void *a1, void *a2)
{
  if ((sub_220DBFE90() & 1) == 0 || (sub_220DBFE90() & 1) == 0)
  {
    return 0;
  }

  return sub_220DBFE90();
}

uint64_t sub_220DB2194()
{
  v0 = sub_220DBFE80();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95290, &qword_220DC2180);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_220DC5A40;
  v5 = *MEMORY[0x277CE0EE0];
  v6 = *(v1 + 104);
  v6(v3, v5, v0);
  sub_220DBFF30();
  *(v4 + 32) = sub_220DC00F0();
  *(v4 + 40) = v7;
  v6(v3, v5, v0);
  sub_220DBFF30();
  *(v4 + 48) = sub_220DC00F0();
  *(v4 + 56) = v8;
  v6(v3, v5, v0);
  sub_220DBFF30();
  *(v4 + 64) = sub_220DC00F0();
  *(v4 + 72) = v9;
  v6(v3, v5, v0);
  sub_220DBFF30();
  *(v4 + 80) = sub_220DC00F0();
  *(v4 + 88) = v10;
  v6(v3, v5, v0);
  sub_220DBFF30();
  *(v4 + 96) = sub_220DC00F0();
  *(v4 + 104) = v11;
  result = sub_220DC0100();
  qword_27CF96738 = result;
  return result;
}

uint64_t sub_220DB23EC()
{
  v0 = sub_220DBFE80();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95290, &qword_220DC2180);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_220DC5A40;
  v5 = *MEMORY[0x277CE0EE0];
  v6 = *(v1 + 104);
  v6(v3, v5, v0);
  sub_220DBFF30();
  *(v4 + 32) = sub_220DC00F0();
  *(v4 + 40) = v7;
  v6(v3, v5, v0);
  sub_220DBFF30();
  *(v4 + 48) = sub_220DC00F0();
  *(v4 + 56) = v8;
  v6(v3, v5, v0);
  sub_220DBFF30();
  *(v4 + 64) = sub_220DC00F0();
  *(v4 + 72) = v9;
  v6(v3, v5, v0);
  sub_220DBFF30();
  *(v4 + 80) = sub_220DC00F0();
  *(v4 + 88) = v10;
  v6(v3, v5, v0);
  sub_220DBFF30();
  *(v4 + 96) = sub_220DC00F0();
  *(v4 + 104) = v11;
  result = sub_220DC0100();
  qword_27CF96740 = result;
  return result;
}

double sub_220DB2630(void *a1, uint64_t *a2, uint64_t a3)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  return result;
}

double SunriseSunsetDetailChartContentStyle.horizonLineShadow.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 80);
  *a1 = *(v1 + 56);
  *(a1 + 8) = *(v1 + 64);
  *(a1 + 24) = v2;

  return result;
}

double SunriseSunsetDetailChartContentStyle.twilightSunColors.getter@<D0>(void *a1@<X8>)
{
  v2 = v1[14];
  v3 = v1[15];
  v4 = v1[16];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;

  return result;
}

__n128 SunriseSunsetDetailChartContentStyle.init(nightLineGradient:dayLineGradient:daySunImage:nightSunImage:dayNightLineWidth:horizonLineWidth:horizonLineColor:horizonLineShadow:sunImageWidth:nightSunColor:nightSunSymbolSize:twilightSunColors:twilightSunSymbolSize:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X5>, uint64_t a7@<X6>, __n128 *a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, double a11@<D1>, double a12@<D2>, double a13@<D3>, double a14@<D4>)
{
  v14 = *a6;
  v15 = a6[3];
  v16 = a8[1].n128_u64[0];
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a10;
  *(a9 + 40) = a11;
  *(a9 + 48) = a5;
  *(a9 + 56) = v14;
  *(a9 + 64) = *(a6 + 1);
  *(a9 + 80) = v15;
  *(a9 + 88) = a12;
  *(a9 + 96) = a7;
  *(a9 + 104) = a13;
  result = *a8;
  *(a9 + 112) = *a8;
  *(a9 + 128) = v16;
  *(a9 + 136) = a14;
  return result;
}

uint64_t static SunriseSunsetDetailChartContentStyle.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 104);
  v6 = *(a1 + 136);
  v7 = *(a2 + 8);
  v8 = *(a2 + 32);
  v9 = *(a2 + 40);
  v20 = *(a1 + 64);
  v21 = *(a1 + 80);
  v18 = *(a2 + 64);
  v19 = *(a2 + 80);
  v10 = *(a2 + 104);
  v11 = *(a2 + 136);
  if ((MEMORY[0x223D97D10](*a1, *a2) & 1) == 0 || (MEMORY[0x223D97D10](v2, v7) & 1) == 0 || (sub_220DBFFD0() & 1) == 0)
  {
    return 0;
  }

  v12 = sub_220DBFFD0();
  result = 0;
  if ((v12 & 1) != 0 && v3 == v8 && v4 == v9)
  {
    if (sub_220DBFE90())
    {

      v15 = sub_220DBFE90();

      result = 0;
      if ((v15 & 1) == 0)
      {
        return result;
      }

      if ((~vaddvq_s32(vandq_s8(vuzp1q_s32(vceqq_f64(v20, v18), vceqq_f64(v21, v19)), xmmword_220DC82A0)) & 0xF) != 0)
      {
        return result;
      }

      v16 = sub_220DBFE90();
      result = 0;
      if ((v16 & 1) == 0 || v5 != v10)
      {
        return result;
      }

      if (sub_220DBFE90() & 1) != 0 && (sub_220DBFE90())
      {
        v17 = sub_220DBFE90();

        return v17 & (v6 == v11);
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_220DB2A3C(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 144))
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

uint64_t sub_220DB2A7C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 144) = 1;
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

    *(result + 144) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 ChartLineMark.init(chartData:dateExtrema:xAxisRange:yAxisRange:lineStyle:colorSchemeContrast:shadow:useSecondValue:showAccessibilityLabels:)@<Q0>(uint64_t a1@<X0>, const void *a2@<X1>, uint64_t a5@<X4>, uint64_t *a6@<X5>, char a7@<W6>, char a8@<W7>, char *a9@<X8>, double a10@<D0>, double a11@<D1>)
{
  v17 = *a6;
  v25 = *(a6 + 1);
  v18 = a6[3];
  *a9 = a1;
  memcpy(a9 + 8, a2, 0x59uLL);
  v19 = type metadata accessor for ChartLineMark(0);
  v20 = &a9[v19[7]];
  *v20 = a10;
  v20[1] = a11;
  sub_220DB3920();
  sub_220DB3870();
  v21 = v19[11];
  sub_220DBFA30();
  OUTLINED_FUNCTION_0_2();
  (*(v22 + 32))(&a9[v21], a5);
  v23 = &a9[v19[12]];
  *v23 = v17;
  result = v25;
  *(v23 + 8) = v25;
  *(v23 + 3) = v18;
  a9[v19[9]] = a7;
  a9[v19[10]] = a8;
  return result;
}

void ChartLineMark.body.getter(uint64_t a1@<X8>)
{
  v143 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF96748, &qword_220DC8458);
  v5 = OUTLINED_FUNCTION_18(v4);
  MEMORY[0x28223BE20](v5);
  v140 = &v124 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF96750, &unk_220DC8460);
  v8 = OUTLINED_FUNCTION_18(v7);
  MEMORY[0x28223BE20](v8);
  v138 = &v124 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95E80, &qword_220DC59A0);
  v11 = OUTLINED_FUNCTION_18(v10);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_9();
  v137 = v12;
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v124 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v124 - v17;
  v19 = type metadata accessor for StyledLineMark(0);
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_9();
  v141 = v21;
  MEMORY[0x28223BE20](v22);
  v24 = (&v124 - v23);
  v145 = sub_220DBE560();
  OUTLINED_FUNCTION_0();
  v144.n128_u64[0] = v25;
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_9();
  v139 = v27;
  MEMORY[0x28223BE20](v28);
  v30 = &v124 - v29;
  type metadata accessor for ChartLineStrokeStyle(0);
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v31);
  v33 = &v124 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for ChartLineMark(0);
  v142.n128_u64[0] = v1 + v34[8];
  sub_220DB381C();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      v105 = *v1;
      OUTLINED_FUNCTION_15_16();
      v106 = v141;
      sub_220CFF7DC();
      OUTLINED_FUNCTION_7_26();
      v108 = *(v1 + v107);
      OUTLINED_FUNCTION_0_27();
      sub_220DB381C();
      type metadata accessor for ChartLineStyle(0);

      OUTLINED_FUNCTION_4_26();
      sub_220DBF720();
      v109 = v34[11];
      v110 = *(v1 + v34[10]);
      v111 = v19[15];
      sub_220DBFA30();
      OUTLINED_FUNCTION_0_2();
      (*(v112 + 16))(&v106[v111], v1 + v109);
      v144 = OUTLINED_FUNCTION_22_13();
      v113 = OUTLINED_FUNCTION_9_26(v19[12]);
      v114 = v145;
      __swift_storeEnumTagSinglePayload(v113, v115, v116, v145);
      v117 = OUTLINED_FUNCTION_9_26(v19[13]);
      __swift_storeEnumTagSinglePayload(v117, v118, v119, v114);
      *v106 = v105;
      memcpy(v106 + 8, v147, 0x59uLL);
      OUTLINED_FUNCTION_5_32();
      OUTLINED_FUNCTION_12_25(v120);
      v106[v121] = v108;
      OUTLINED_FUNCTION_10_24();
      v106[v122] = v110;
      OUTLINED_FUNCTION_13_16();
      OUTLINED_FUNCTION_2_36(v123, v144);
      sub_220DB3870();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF96758, &qword_220DC8470);
      swift_storeEnumTagMultiPayload();

      return;
    }

    v36 = v144.n128_u64[0];
    v37 = v139;
    v38 = v33;
    v39 = v145;
    (*(v144.n128_u64[0] + 32))(v139, v38, v145);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95C20, &qword_220DC5FE0);
    if (sub_220DBE440())
    {
      v138 = *v1;
      OUTLINED_FUNCTION_15_16();
      v40 = v141;
      sub_220CFF7DC();
      OUTLINED_FUNCTION_7_26();
      LODWORD(v136) = *(v1 + v41);
      OUTLINED_FUNCTION_0_27();
      sub_220DB381C();
      type metadata accessor for ChartLineStyle(0);

      OUTLINED_FUNCTION_4_26();
      sub_220DBF720();
      v42 = v34[11];
      v142.n128_u32[0] = *(v1 + v34[10]);
      v43 = v36;
      v44 = v19[15];
      sub_220DBFA30();
      OUTLINED_FUNCTION_0_2();
      (*(v45 + 16))(&v40[v44], v1 + v42);
      v135 = OUTLINED_FUNCTION_22_13();
      (*(v43 + 16))(&v40[v19[12]], v37, v39);
      OUTLINED_FUNCTION_7();
      __swift_storeEnumTagSinglePayload(v46, v47, v48, v39);
      v49 = OUTLINED_FUNCTION_9_26(v19[13]);
      __swift_storeEnumTagSinglePayload(v49, v50, v51, v39);
      v52 = *(v43 + 8);

      v52(v37, v39);
      *v40 = v138;
      memcpy(v40 + 8, v147, 0x59uLL);
      OUTLINED_FUNCTION_5_32();
      OUTLINED_FUNCTION_12_25(v53);
      v40[v54] = v136;
      OUTLINED_FUNCTION_10_24();
      v40[v55] = v142.n128_u8[0];
      OUTLINED_FUNCTION_13_16();
      OUTLINED_FUNCTION_2_36(v56, v135);
      v57 = v137;
      sub_220DB3870();
      v58 = v57;
      v59 = 0;
    }

    else
    {
      (*(v36 + 8))(v37, v39);
      v58 = v137;
      v59 = 1;
    }

    __swift_storeEnumTagSinglePayload(v58, v59, 1, v19);
    sub_220DB3920();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF96760, &qword_220DC8478);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    v134 = v30;
    v135.n128_u64[0] = v18;
    v136 = v16;
    v60 = v145;
    (*(v144.n128_u64[0] + 32))(v30, v33, v145);
    v139 = *v1;
    OUTLINED_FUNCTION_15_16();
    v133 = v1 + v34[6];
    sub_220CFF7DC();
    OUTLINED_FUNCTION_7_26();
    LODWORD(v137) = *(v1 + v61);
    OUTLINED_FUNCTION_0_27();
    sub_220DB381C();
    type metadata accessor for ChartLineStyle(0);

    OUTLINED_FUNCTION_4_26();
    sub_220DBF720();
    v62 = v34[11];
    v63 = *(v1 + v34[10]);
    v64 = v19[15];
    sub_220DBFA30();
    OUTLINED_FUNCTION_0_2();
    v66 = *(v65 + 16);
    v129 = v67;
    v130 = v62;
    v127 = v65 + 16;
    v128 = v66;
    (v66)(v24 + v64, v1 + v62);
    v68 = v1 + v34[12];
    v69 = *v68;
    v132 = *(v68 + 8);
    v70 = *(v68 + 3);
    __swift_storeEnumTagSinglePayload(v24 + v19[12], 1, 1, v60);
    v71 = v24 + v19[13];
    v72 = v134;
    v125 = *(v144.n128_u64[0] + 16);
    v126 = v144.n128_u64[0] + 16;
    v125(v71, v134, v60);
    OUTLINED_FUNCTION_7();
    __swift_storeEnumTagSinglePayload(v73, v74, v75, v60);
    *v24 = v139;
    memcpy(v24 + 1, v147, 0x59uLL);
    v76 = (v24 + v19[7]);
    *v76 = v2;
    v76[1] = v3;
    OUTLINED_FUNCTION_12_25((v24 + v19[8]));
    *(v24 + v77) = v137;
    v78 = v24 + v19[11];
    v79 = v149;
    *v78 = v148;
    *(v78 + 1) = v79;
    *(v78 + 4) = v150;
    v80 = v19[14];
    v131 = v63;
    *(v24 + v80) = v63;
    v81 = v24 + v19[16];
    *v81 = v69;
    *(v81 + 8) = v132;
    *(v81 + 3) = v70;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95C20, &qword_220DC5FE0);

    v82 = v72;
    if (sub_220DBE440())
    {
      memcpy(v146, v1 + 1, 0x59uLL);
      v83 = v141;
      sub_220CFF7DC();
      OUTLINED_FUNCTION_0_27();
      sub_220DB381C();
      v84 = v139;

      OUTLINED_FUNCTION_4_26();
      sub_220DBF720();
      v128(&v83[v19[15]], v1 + v130, v129);
      v142 = *(v68 + 8);
      v85 = v82;
      v86 = v82;
      v87 = v145;
      v125(&v83[v19[12]], v85, v145);
      OUTLINED_FUNCTION_7();
      __swift_storeEnumTagSinglePayload(v88, v89, v90, v87);
      v91 = OUTLINED_FUNCTION_9_26(v19[13]);
      __swift_storeEnumTagSinglePayload(v91, v92, v93, v87);
      *v83 = v84;
      memcpy(v83 + 8, v146, 0x59uLL);
      OUTLINED_FUNCTION_5_32();
      *v94 = 0x694C646568736144;
      v94[1] = 0xEA0000000000656ELL;
      v83[v19[9]] = v137;
      v95 = &v83[v19[11]];
      v96 = v152;
      *v95 = v151;
      *(v95 + 1) = v96;
      *(v95 + 4) = v153;
      v83[v19[14]] = v131;
      OUTLINED_FUNCTION_13_16();
      OUTLINED_FUNCTION_2_36(v97, v142);
      v98 = v135.n128_u64[0];
      sub_220DB3870();
      OUTLINED_FUNCTION_7();
      __swift_storeEnumTagSinglePayload(v99, v100, v101, v19);

      v102 = v87;
      v103 = v138;
      v82 = v86;
      v104 = v136;
    }

    else
    {
      v98 = v135.n128_u64[0];
      __swift_storeEnumTagSinglePayload(v135.n128_i64[0], 1, 1, v19);
      v102 = v145;
      v103 = v138;
      v104 = v136;
      v83 = v141;
    }

    sub_220DB381C();
    v146[0] = v83;
    sub_220CFF7DC();
    v146[1] = v104;
    sub_220D7749C(v146, v103);
    sub_220CDA548(v98, &qword_27CF95E80, &qword_220DC59A0);
    sub_220DB38C4(v24);
    (*(v144.n128_u64[0] + 8))(v82, v102);
    sub_220CDA548(v104, &qword_27CF95E80, &qword_220DC59A0);
    sub_220DB38C4(v83);
    sub_220DB3920();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF96760, &qword_220DC8478);
    OUTLINED_FUNCTION_16_22();
    swift_storeEnumTagMultiPayload();
  }

  sub_220DB3920();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF96758, &qword_220DC8470);
  OUTLINED_FUNCTION_16_22();
  swift_storeEnumTagMultiPayload();
}

uint64_t sub_220DB381C()
{
  OUTLINED_FUNCTION_6_4();
  v1(0);
  OUTLINED_FUNCTION_0_2();
  v2 = OUTLINED_FUNCTION_20();
  v3(v2);
  return v0;
}

uint64_t sub_220DB3870()
{
  OUTLINED_FUNCTION_6_4();
  v1(0);
  OUTLINED_FUNCTION_0_2();
  v2 = OUTLINED_FUNCTION_20();
  v3(v2);
  return v0;
}

uint64_t sub_220DB38C4(uint64_t a1)
{
  v2 = type metadata accessor for StyledLineMark(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_220DB3920()
{
  OUTLINED_FUNCTION_6_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_0_2();
  v3 = OUTLINED_FUNCTION_20();
  v4(v3);
  return v0;
}

void sub_220DB39BC(uint64_t a1)
{
  sub_220CD6118(319, &qword_280FA6638, type metadata accessor for DetailChartDataElement, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_220D8B1D4(319);
    if (v2 <= 0x3F)
    {
      sub_220D8B2B0();
      if (v3 <= 0x3F)
      {
        type metadata accessor for ChartLineStyle(319);
        if (v4 <= 0x3F)
        {
          sub_220DBFA30();
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

unint64_t sub_220DB3AD8()
{
  result = qword_27CF96778;
  if (!qword_27CF96778)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF96780, &unk_220DC8500);
    sub_220DB3B94();
    sub_220DB3CE4(&qword_27CF95E78, type metadata accessor for StyledLineMark);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF96778);
  }

  return result;
}

unint64_t sub_220DB3B94()
{
  result = qword_27CF96788;
  if (!qword_27CF96788)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF96748, &qword_220DC8458);
    sub_220DB3C20();
    sub_220D7A988();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF96788);
  }

  return result;
}

unint64_t sub_220DB3C20()
{
  result = qword_27CF96790;
  if (!qword_27CF96790)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF96750, &unk_220DC8460);
    sub_220DB3CE4(&qword_27CF95E78, type metadata accessor for StyledLineMark);
    sub_220D7A988();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF96790);
  }

  return result;
}

uint64_t sub_220DB3CE4(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_16_22();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_220DB3D50(uint64_t a1)
{
  sub_220CD6118(319, &qword_280FA6638, type metadata accessor for DetailChartDataElement, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_220D8B1D4(319);
    if (v2 <= 0x3F)
    {
      sub_220D8B2B0();
      if (v3 <= 0x3F)
      {
        type metadata accessor for ChartLineStyle(319);
        if (v4 <= 0x3F)
        {
          sub_220CD6118(319, &qword_27CF967A8, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
          if (v5 <= 0x3F)
          {
            sub_220DBFA30();
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

void *sub_220DB3EE8@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for StyledLineMark(0) + 40);
  v4 = v3 + *(type metadata accessor for ChartLineStyle(0) + 24);
  v6 = *v4;
  v5 = *(v4 + 8);
  v7 = *(v4 + 16);
  if (*(v4 + 24))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF96800, &qword_220DC8628);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_220DC17A0;
    *(v8 + 32) = v6;
    sub_220D1EC60(v6, v5, v7, 1);

    MEMORY[0x223D97D40](v8);
    sub_220DC0190();
    sub_220DC0180();
    sub_220DBF7B0();
    v9 = v14;
    result = sub_220D1ECD8(v6, v5, v7, 1);
  }

  else
  {
    v13[0] = *v4;
    v13[1] = v5;
    v13[2] = v7;
    result = sub_220DB4030(v13, &v14);
    v9 = v14;
  }

  v12 = v15;
  v11 = v16;
  *a1 = v9;
  *(a1 + 24) = v11;
  *(a1 + 8) = v12;
  return result;
}

void *sub_220DB4030@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  result = type metadata accessor for StyledLineMark(0);
  if (v2[*(result + 9)] == 1)
  {
    if (v2[48] == 1)
    {
      v7 = *(result + 7);
    }

    else
    {
      v7 = 40;
    }

    v9 = *&v2[v7];
    if ((v2[64] & 1) == 0)
    {
      v10 = (v2 + 56);
      goto LABEL_13;
    }

    goto LABEL_11;
  }

  if (v2[16] == 1)
  {
    v8 = *(result + 7);
  }

  else
  {
    v8 = 8;
  }

  v9 = *&v2[v8];
  if (v2[32])
  {
LABEL_11:
    v10 = &v2[*(result + 7) + 8];
    goto LABEL_13;
  }

  v10 = (v2 + 24);
LABEL_13:
  v11 = *v10;
  if (*v10 <= v9 + 0.01)
  {
    v11 = v9 + 0.01;
  }

  if (v4 > v5 || v9 > v11)
  {
    __break(1u);
  }

  else
  {
    if (v4 >= v5)
    {
    }

    else
    {
      sub_220DC00D0();
    }

    sub_220DC0190();
    sub_220DC0180();
    result = sub_220DBF7B0();
    *a2 = v13;
    *(a2 + 16) = v14;
    *(a2 + 32) = v15;
  }

  return result;
}

uint64_t sub_220DB4188@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v73 = a1;
  v3 = type metadata accessor for StyledLineMark(0);
  v58 = *(v3 - 8);
  v57 = *(v58 + 64);
  v4 = v3 - 8;
  MEMORY[0x28223BE20](v3 - 8);
  v56 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF967B0, &qword_220DC8580);
  v66 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v61 = &v52 - v6;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF967B8, &qword_220DC8588);
  v68 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v62 = &v52 - v7;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF967C0, &qword_220DC8590);
  v70 = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  v63 = &v52 - v8;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF967C8, &unk_220DC8598);
  v72 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v64 = &v52 - v9;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95ED8, &unk_220DC5A10);
  v75 = *(v74 - 8);
  v10 = *(v75 + 64);
  v11 = MEMORY[0x28223BE20](v74);
  v53 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v52 - v12;
  sub_220DBFA00();
  v59 = v4;
  v14 = (v1 + *(v4 + 40));
  v15 = v14[1];
  v16 = *(v1 + *(v4 + 44));
  *&v84 = *v14;
  *(&v84 + 1) = v15;

  if (v16)
  {
    v17 = 0x646E6F636553;
  }

  else
  {
    v17 = 0;
  }

  if (v16)
  {
    v18 = 0xE600000000000000;
  }

  else
  {
    v18 = 0xE000000000000000;
  }

  MEMORY[0x223D982B0](v17, v18);

  v60 = v13;
  sub_220DBF5A0();

  v55 = v2;
  *&v82[0] = *v2;
  KeyPath = swift_getKeyPath();
  sub_220DB381C();
  v19 = v75;
  v20 = v53;
  v21 = v74;
  (*(v75 + 16))(v53, v13, v74);
  v22 = v19;
  v23 = (v57 + *(v19 + 80) + ((*(v58 + 80) + 16) & ~*(v58 + 80))) & ~*(v19 + 80);
  v24 = swift_allocObject();
  sub_220DB3870();
  (*(v22 + 32))(v24 + v23, v20, v21);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95EE0, &qword_220DC85D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF967D0, &qword_220DC85D8);
  sub_220DB5B0C(&qword_27CF95EE8, &qword_27CF95EE0, &qword_220DC85D0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF967D8, &qword_220DC85E0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF967E0, &qword_220DC85E8);
  v27 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF967E8, &unk_220DC85F0);
  v28 = sub_220DB5B0C(&qword_27CF967F0, &qword_27CF967E8, &unk_220DC85F0);
  v29 = sub_220CEFF14();
  *&v84 = v27;
  v30 = MEMORY[0x277D837D0];
  *(&v84 + 1) = MEMORY[0x277D837D0];
  *&v85 = v28;
  *(&v85 + 1) = v29;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  *&v84 = v26;
  *(&v84 + 1) = v30;
  *&v85 = OpaqueTypeConformance2;
  *(&v85 + 1) = v29;
  v32 = swift_getOpaqueTypeConformance2();
  *&v84 = v25;
  *(&v84 + 1) = v32;
  swift_getOpaqueTypeConformance2();
  v33 = v61;
  sub_220DC0090();
  v34 = v59;
  v35 = v55;
  v36 = v55 + *(v59 + 52);
  v37 = *(v36 + 1);
  v84 = *v36;
  v85 = v37;
  v86 = *(v36 + 4);
  v38 = sub_220DB5B50();
  v39 = v62;
  v40 = v65;
  sub_220DBF560();
  (*(v66 + 8))(v33, v40);
  v41 = v35;
  sub_220DB3EE8(v82);
  v79 = v82[0];
  v80 = v82[1];
  v81 = v83;
  v77 = v40;
  v78 = v38;
  v42 = swift_getOpaqueTypeConformance2();
  v43 = MEMORY[0x277CDF838];
  v44 = MEMORY[0x277CDF828];
  v45 = v63;
  v46 = v67;
  sub_220DBF4A0();
  sub_220D7AE00(v82);
  (*(v68 + 8))(v39, v46);
  ChartLineStyle.opacity(for:)(v41 + *(v34 + 68));
  *&v79 = v46;
  *(&v79 + 1) = v43;
  *&v80 = v42;
  *(&v80 + 1) = v44;
  v47 = swift_getOpaqueTypeConformance2();
  v48 = v64;
  v49 = v69;
  sub_220DBF550();
  (*(v70 + 8))(v45, v49);
  v76 = v41;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF96050, &qword_220DC6030);
  *&v79 = v49;
  *(&v79 + 1) = v47;
  swift_getOpaqueTypeConformance2();
  *&v79 = sub_220DBF590();
  *(&v79 + 1) = MEMORY[0x277CBB2F8];
  swift_getOpaqueTypeConformance2();
  v50 = v71;
  sub_220DBF500();
  (*(v72 + 8))(v48, v50);
  return (*(v75 + 8))(v60, v74);
}

uint64_t sub_220DB4BFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v30 = a2;
  v35 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF967E8, &unk_220DC85F0);
  v31 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v30 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF967E0, &qword_220DC85E8);
  v32 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v30 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF967D8, &qword_220DC85E0);
  v14 = *(v13 - 8);
  v33 = v13;
  v34 = v14;
  MEMORY[0x28223BE20](v13);
  v16 = &v30 - v15;
  v36 = a1;
  v37 = a2;
  v38 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF96808, &qword_220DC8630);
  v39 = sub_220DBF6B0();
  v40 = MEMORY[0x277CBB438];
  swift_getOpaqueTypeConformance2();
  sub_220DBF670();
  v17 = type metadata accessor for DetailChartDataElement(0);
  v18 = (a1 + *(v17 + 48));
  v20 = *v18;
  v19 = v18[1];
  v39 = v20;
  v40 = v19;
  v21 = sub_220DB5B0C(&qword_27CF967F0, &qword_27CF967E8, &unk_220DC85F0);
  v22 = sub_220CEFF14();
  v23 = MEMORY[0x277D837D0];
  sub_220DBF4C0();
  (*(v31 + 8))(v9, v7);
  v24 = (a1 + *(v17 + 52));
  v26 = *v24;
  v25 = v24[1];
  v43 = v26;
  v44 = v25;
  v39 = v7;
  v40 = v23;
  v41 = v21;
  v42 = v22;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_220DBF4D0();
  (*(v32 + 8))(v12, v10);
  type metadata accessor for StyledLineMark(0);
  v39 = v10;
  v40 = v23;
  v41 = OpaqueTypeConformance2;
  v42 = v22;
  swift_getOpaqueTypeConformance2();
  v28 = v33;
  sub_220DBF4E0();
  return (*(v34 + 8))(v16, v28);
}

uint64_t sub_220DB4FD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v26 = a3;
  v27 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95ED8, &unk_220DC5A10);
  v24 = *(v6 - 8);
  v25 = v6;
  MEMORY[0x28223BE20](v6);
  v23 = v20 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95EB0, &unk_220DC7330);
  MEMORY[0x28223BE20](v8 - 8);
  v20[1] = v20 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95EB8, &qword_220DC59C0);
  MEMORY[0x28223BE20](v10 - 8);
  v11 = sub_220DBF6B0();
  v12 = *(v11 - 8);
  v21 = v11;
  v22 = v12;
  MEMORY[0x28223BE20](v11);
  v14 = v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220DBFA00();
  v20[0] = sub_220DBE560();
  sub_220DBF5A0();

  sub_220DBFA00();
  v15 = *(a2 + *(type metadata accessor for StyledLineMark(0) + 36));
  v16 = type metadata accessor for DetailChartDataElement(0);
  v17 = 20;
  if (v15)
  {
    v17 = 24;
  }

  v28 = *(a1 + *(v16 + v17));
  sub_220DBF5A0();

  (*(v24 + 16))(v23, v26, v25);
  sub_220DBF6A0();
  v18 = v21;
  sub_220DBF530();
  return (*(v22 + 8))(v14, v18);
}

uint64_t sub_220DB5364@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v48 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95EB0, &unk_220DC7330);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v46 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v45 = &v38 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF951E0, &unk_220DC1D80);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v39 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v38 - v10;
  v12 = sub_220DBE560();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v40 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = &v38 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95EB8, &qword_220DC59C0);
  v19 = MEMORY[0x28223BE20](v18 - 8);
  v41 = &v38 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v50 = &v38 - v21;
  v22 = sub_220DBF590();
  v43 = *(v22 - 8);
  v44 = v22;
  MEMORY[0x28223BE20](v22);
  v42 = &v38 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220DBFA00();
  v24 = type metadata accessor for StyledLineMark(0);
  sub_220CFF7DC();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v11, 1, v12);
  v49 = v24;
  if (EnumTagSinglePayload == 1)
  {
    (*(v13 + 16))(v17, a1 + *(v24 + 24), v12);
    v26 = a1;
    if (__swift_getEnumTagSinglePayload(v11, 1, v12) != 1)
    {
      sub_220CDA548(v11, &qword_27CF951E0, &unk_220DC1D80);
    }
  }

  else
  {
    (*(v13 + 32))(v17, v11, v12);
    v26 = a1;
  }

  sub_220DBF5A0();

  v27 = *(v13 + 8);
  v27(v17, v12);
  v38 = sub_220DBFA00();
  v28 = v49;
  v29 = v39;
  sub_220CFF7DC();
  v30 = __swift_getEnumTagSinglePayload(v29, 1, v12);
  v47 = v26;
  if (v30 == 1)
  {
    v31 = v26 + *(v28 + 24);
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95C20, &qword_220DC5FE0);
    v33 = v40;
    (*(v13 + 16))(v40, v31 + *(v32 + 36), v12);
    if (__swift_getEnumTagSinglePayload(v29, 1, v12) != 1)
    {
      sub_220CDA548(v29, &qword_27CF951E0, &unk_220DC1D80);
    }
  }

  else
  {
    v33 = v40;
    (*(v13 + 32))(v40, v29, v12);
  }

  sub_220DBF5A0();

  v27(v33, v12);
  sub_220DBFA00();
  v34 = (v47 + *(v49 + 28));
  v51 = *v34;
  sub_220DBF5A0();

  sub_220DBFA00();
  v51 = v34[1];
  sub_220DBF5A0();

  v35 = v42;
  sub_220DBF580();
  type metadata accessor for ChartLineStyle(0);
  v36 = v44;
  sub_220DBF520();
  return (*(v43 + 8))(v35, v36);
}

uint64_t sub_220DB5A20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for StyledLineMark(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95ED8, &unk_220DC5A10);
  OUTLINED_FUNCTION_18(v8);
  v10 = v2 + ((v7 + *(v9 + 80)) & ~*(v9 + 80));

  return sub_220DB4BFC(a1, v2 + v6, v10, a2);
}

uint64_t sub_220DB5B0C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    OUTLINED_FUNCTION_16_22();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_220DB5B50()
{
  result = qword_27CF967F8;
  if (!qword_27CF967F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF967B0, &qword_220DC8580);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF967D8, &qword_220DC85E0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF967E0, &qword_220DC85E8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF967E8, &unk_220DC85F0);
    sub_220DB5B0C(&qword_27CF967F0, &qword_27CF967E8, &unk_220DC85F0);
    sub_220CEFF14();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF967F8);
  }

  return result;
}

uint64_t DetailChartDataElement.init(date:value:secondValue:thirdValue:valueLabel:dateLabel:accessibilityDateString:accessibilityValueDescription:color:textColor:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, double a11@<D1>, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  sub_220DBE560();
  OUTLINED_FUNCTION_6();
  (*(v24 + 32))(a9, a1);
  v25 = type metadata accessor for DetailChartDataElement(0);
  *(a9 + v25[5]) = a10;
  *(a9 + v25[6]) = a11;
  v26 = a9 + v25[7];
  *v26 = a2;
  *(v26 + 8) = a3 & 1;
  OUTLINED_FUNCTION_4_27();
  result = sub_220DB7114(a4, a9 + v27);
  v29 = (a9 + v25[9]);
  *v29 = a5;
  v29[1] = a6;
  v30 = (a9 + v25[12]);
  *v30 = a7;
  v30[1] = a8;
  v31 = (a9 + v25[13]);
  *v31 = a12;
  v31[1] = a13;
  *(a9 + v25[10]) = a14;
  *(a9 + v25[11]) = a15;
  return result;
}

uint64_t static DetailChartDataElement.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((sub_220DBE460() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for DetailChartDataElement(0);
  if (*(a1 + v4[5]) != *(a2 + v4[5]))
  {
    return 0;
  }

  v5 = v4;
  if (*(a1 + v4[6]) != *(a2 + v4[6]))
  {
    return 0;
  }

  v6 = v4[7];
  v7 = (a1 + v6);
  v8 = *(a1 + v6 + 8);
  v9 = (a2 + v6);
  v10 = *(a2 + v6 + 8);
  if (v8)
  {
    if (!v10)
    {
      return 0;
    }
  }

  else
  {
    if (*v7 != *v9)
    {
      LOBYTE(v10) = 1;
    }

    if (v10)
    {
      return 0;
    }
  }

  if (!static DetailChartDataElement.ValueLabel.== infix(_:_:)((a1 + v4[8]), (a2 + v4[8])))
  {
    return 0;
  }

  OUTLINED_FUNCTION_5_24(v5[9]);
  v13 = v13 && v11 == v12;
  if (!v13 && (sub_220DC0CA0() & 1) == 0)
  {
    return 0;
  }

  v14 = v5[10];
  v15 = *(a2 + v14);
  if (*(a1 + v14))
  {
    if (!v15)
    {
      return 0;
    }

    v16 = sub_220DBFE90();

    if ((v16 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v15)
  {
    return 0;
  }

  v17 = v5[11];
  v18 = *(a2 + v17);
  if (!*(a1 + v17))
  {
    if (!v18)
    {
      goto LABEL_26;
    }

    return 0;
  }

  if (!v18)
  {
    return 0;
  }

  v19 = sub_220DBFE90();

  if ((v19 & 1) == 0)
  {
    return 0;
  }

LABEL_26:
  OUTLINED_FUNCTION_5_24(v5[12]);
  v22 = v13 && v20 == v21;
  if (!v22 && (sub_220DC0CA0() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_5_24(v5[13]);
  if (v13 && v23 == v24)
  {
    return 1;
  }

  return sub_220DC0CA0();
}

BOOL static DetailChartDataElement.ValueLabel.== infix(_:_:)(char *a1, char *a2)
{
  v88 = a1;
  v89 = a2;
  v2 = sub_220DBFFC0();
  v86 = *(v2 - 8);
  v87 = v2;
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_1();
  v83 = v4 - v3;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF96810, &unk_220DC8640);
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v5);
  v84 = &v82 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95A48, &unk_220DC4100);
  MEMORY[0x28223BE20](v7 - 8);
  OUTLINED_FUNCTION_4();
  v10 = v8 - v9;
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v82 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v82 - v15;
  type metadata accessor for DetailChartDataElement.ValueLabel(0);
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_4();
  v20 = (v18 - v19);
  v22 = MEMORY[0x28223BE20](v21);
  v24 = (&v82 - v23);
  MEMORY[0x28223BE20](v22);
  v26 = (&v82 - v25);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF96818, &unk_220DC8650);
  v28 = MEMORY[0x28223BE20](v27 - 8);
  v30 = &v82 - v29;
  v31 = (&v82 + *(v28 + 56) - v29);
  sub_220DB7064(v88, &v82 - v29);
  sub_220DB7064(v89, v31);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v88 = v16;
    v89 = v14;
    v82 = v10;
    v35 = v86;
    v34 = v87;
    OUTLINED_FUNCTION_4_27();
    v36 = v30;
    sub_220DB7064(v30, v26);
    v37 = *v26;
    v38 = v26[1];
    v39 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95A50, &unk_220DC5A00) + 48);
    OUTLINED_FUNCTION_16_23();
    if (swift_getEnumCaseMultiPayload())
    {
      sub_220CDA548(v26 + v39, &qword_27CF95A48, &unk_220DC4100);
      v30 = v36;
      goto LABEL_14;
    }

    v48 = *v31;
    v47 = *(v31 + 1);
    sub_220D2C870(v26 + v39, v88);
    sub_220D2C870(v31 + v39, v89);
    if (v37 == *&v48 && v38 == v47)
    {

      v51 = v35;
      v52 = v85;
    }

    else
    {
      v50 = sub_220DC0CA0();

      v51 = v35;
      v52 = v85;
      if ((v50 & 1) == 0)
      {
        OUTLINED_FUNCTION_26();
        sub_220CDA548(v53, v54, v55);
        OUTLINED_FUNCTION_26();
LABEL_33:
        sub_220CDA548(v56, v57, v58);
LABEL_34:
        OUTLINED_FUNCTION_5_33();
        v45 = v36;
        goto LABEL_35;
      }
    }

    v61 = *(v52 + 48);
    v62 = v88;
    v63 = v84;
    sub_220DB66D4(v88, v84);
    sub_220DB66D4(v89, v63 + v61);
    if (__swift_getEnumTagSinglePayload(v63, 1, v34) == 1)
    {
      OUTLINED_FUNCTION_26();
      sub_220CDA548(v64, v65, v66);
      OUTLINED_FUNCTION_26();
      sub_220CDA548(v67, v68, v69);
      if (__swift_getEnumTagSinglePayload(v63 + v61, 1, v34) == 1)
      {
        sub_220CDA548(v63, &qword_27CF95A48, &unk_220DC4100);
        goto LABEL_37;
      }
    }

    else
    {
      v70 = v82;
      sub_220DB66D4(v63, v82);
      if (__swift_getEnumTagSinglePayload(v63 + v61, 1, v34) != 1)
      {
        v77 = v83;
        (*(v51 + 32))(v83, v63 + v61, v34);
        OUTLINED_FUNCTION_13_17();
        sub_220DB69F8(v78, v79, MEMORY[0x277CE1040]);
        v80 = sub_220DC05B0();
        v81 = *(v51 + 8);
        v81(v77, v34);
        sub_220CDA548(v89, &qword_27CF95A48, &unk_220DC4100);
        sub_220CDA548(v62, &qword_27CF95A48, &unk_220DC4100);
        v81(v70, v34);
        sub_220CDA548(v63, &qword_27CF95A48, &unk_220DC4100);
        if ((v80 & 1) == 0)
        {
          goto LABEL_34;
        }

LABEL_37:
        OUTLINED_FUNCTION_5_33();
        v60 = v36;
        goto LABEL_38;
      }

      OUTLINED_FUNCTION_26();
      sub_220CDA548(v71, v72, v73);
      OUTLINED_FUNCTION_26();
      sub_220CDA548(v74, v75, v76);
      (*(v51 + 8))(v70, v34);
    }

    v57 = &qword_27CF96810;
    v58 = &unk_220DC8640;
    v56 = v63;
    goto LABEL_33;
  }

  if (EnumCaseMultiPayload != 1)
  {
    OUTLINED_FUNCTION_4_27();
    sub_220DB7064(v30, v20);
    v40 = *v20;
    v41 = v20[1];
    OUTLINED_FUNCTION_16_23();
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      if (v40 == *v31 && v41 == *(v31 + 1))
      {
      }

      else
      {
        v43 = sub_220DC0CA0();

        if ((v43 & 1) == 0)
        {
          OUTLINED_FUNCTION_5_33();
          v45 = v30;
LABEL_35:
          sub_220DB70BC(v45, v44);
          return 0;
        }
      }

      OUTLINED_FUNCTION_5_33();
      v60 = v30;
LABEL_38:
      sub_220DB70BC(v60, v59);
      return 1;
    }

LABEL_14:

    goto LABEL_15;
  }

  OUTLINED_FUNCTION_4_27();
  sub_220DB7064(v30, v24);
  OUTLINED_FUNCTION_16_23();
  if (swift_getEnumCaseMultiPayload() != 1)
  {
LABEL_15:
    sub_220CDA548(v30, &qword_27CF96818, &unk_220DC8650);
    return 0;
  }

  v33 = *v24 == *v31;
  sub_220DB70BC(v30, type metadata accessor for DetailChartDataElement.ValueLabel);
  return v33;
}

uint64_t sub_220DB66D4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95A48, &unk_220DC4100);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void DetailChartDataElement.ValueLabel.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_28_3();
  a21 = v24;
  a22 = v25;
  OUTLINED_FUNCTION_11_0();
  sub_220DBFFC0();
  OUTLINED_FUNCTION_2_15();
  v27 = v26;
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_1();
  v31 = v30 - v29;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95A48, &unk_220DC4100);
  MEMORY[0x28223BE20](v32 - 8);
  OUTLINED_FUNCTION_4();
  v35 = v33 - v34;
  MEMORY[0x28223BE20](v36);
  v38 = &a9 - v37;
  type metadata accessor for DetailChartDataElement.ValueLabel(0);
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_1();
  v42 = (v41 - v40);
  OUTLINED_FUNCTION_4_27();
  sub_220DB7064(v23, v42);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v44 = *v42;
      MEMORY[0x223D98920](1);
      v45 = 0.0;
      if (v44 != 0.0)
      {
        v45 = v44;
      }

      MEMORY[0x223D98940](*&v45);
    }

    else
    {
      MEMORY[0x223D98920](2);
      sub_220DC0660();
    }
  }

  else
  {
    v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95A50, &unk_220DC5A00);
    sub_220D2C870(v42 + *(v46 + 48), v38);
    MEMORY[0x223D98920](0);
    sub_220DC0660();

    sub_220DB66D4(v38, v35);
    if (__swift_getEnumTagSinglePayload(v35, 1, v22) == 1)
    {
      sub_220DC0D00();
    }

    else
    {
      (*(v27 + 32))(v31, v35, v22);
      sub_220DC0D00();
      OUTLINED_FUNCTION_13_17();
      sub_220DB69F8(v47, v48, MEMORY[0x277CE1038]);
      sub_220DC0560();
      (*(v27 + 8))(v31, v22);
    }

    sub_220CDA548(v38, &qword_27CF95A48, &unk_220DC4100);
  }

  OUTLINED_FUNCTION_29_0();
}

uint64_t sub_220DB69F8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t DetailChartDataElement.valueLabel.getter@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for DetailChartDataElement(0);
  OUTLINED_FUNCTION_4_27();
  return sub_220DB7064(v1 + v3, a1);
}

uint64_t DetailChartDataElement.dateLabel.getter()
{
  type metadata accessor for DetailChartDataElement(0);
  OUTLINED_FUNCTION_4_24();
  return OUTLINED_FUNCTION_20();
}

double DetailChartDataElement.color.getter()
{
  type metadata accessor for DetailChartDataElement(0);

  return result;
}

double DetailChartDataElement.textColor.getter()
{
  type metadata accessor for DetailChartDataElement(0);

  return result;
}

uint64_t DetailChartDataElement.accessibilityDateString.getter()
{
  type metadata accessor for DetailChartDataElement(0);
  OUTLINED_FUNCTION_4_24();
  return OUTLINED_FUNCTION_20();
}

uint64_t DetailChartDataElement.accessibilityValueDescription.getter()
{
  type metadata accessor for DetailChartDataElement(0);
  OUTLINED_FUNCTION_4_24();
  return OUTLINED_FUNCTION_20();
}

uint64_t sub_220DB6C28()
{
  sub_220DBE560();
  OUTLINED_FUNCTION_6();
  v0 = OUTLINED_FUNCTION_20();

  return v1(v0);
}

uint64_t sub_220DB6E54(uint64_t (*a1)(void *))
{
  sub_220DC0CE0();
  a1(v3);
  return sub_220DC0D20();
}

uint64_t sub_220DB6EC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *))
{
  sub_220DC0CE0();
  a4(v6);
  return sub_220DC0D20();
}

void Array<A>.maxValue.getter()
{
  OUTLINED_FUNCTION_28_3();
  type metadata accessor for DetailChartDataElement(0);
  OUTLINED_FUNCTION_2_15();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_7_27();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_9_1();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_11_22();
  if (v4)
  {
    OUTLINED_FUNCTION_0_28();
    OUTLINED_FUNCTION_25_12();
    for (i = 1; v4 != i; ++i)
    {
      OUTLINED_FUNCTION_0_28();
      sub_220DB7064(v9, v1);
      if (*(v3 + *(v0 + 20)) >= *(v1 + *(v0 + 20)))
      {
        OUTLINED_FUNCTION_3_31();
        sub_220DB70BC(v1, v11);
      }

      else
      {
        OUTLINED_FUNCTION_2_37();
        sub_220DB70BC(v3, v10);
        OUTLINED_FUNCTION_18_18();
      }
    }

    OUTLINED_FUNCTION_1_41();
    sub_220DB7114(v3, v2);
    v12 = OUTLINED_FUNCTION_16_23();
    sub_220DB70BC(v12, v13);
  }

  OUTLINED_FUNCTION_28_7();
  OUTLINED_FUNCTION_29_0();
}

uint64_t sub_220DB7064(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_11_0();
  v4(v3);
  OUTLINED_FUNCTION_6();
  v5 = OUTLINED_FUNCTION_20();
  v6(v5);
  return a2;
}

uint64_t sub_220DB70BC(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_6();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_220DB7114(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_11_0();
  v4(v3);
  OUTLINED_FUNCTION_6();
  v5 = OUTLINED_FUNCTION_20();
  v6(v5);
  return a2;
}

void Array<A>.minValue.getter()
{
  OUTLINED_FUNCTION_28_3();
  type metadata accessor for DetailChartDataElement(0);
  OUTLINED_FUNCTION_2_15();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_7_27();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_9_1();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_11_22();
  if (v4)
  {
    OUTLINED_FUNCTION_0_28();
    OUTLINED_FUNCTION_25_12();
    for (i = 1; v4 != i; ++i)
    {
      OUTLINED_FUNCTION_0_28();
      sub_220DB7064(v9, v1);
      if (*(v1 + *(v0 + 20)) >= *(v3 + *(v0 + 20)))
      {
        OUTLINED_FUNCTION_3_31();
        sub_220DB70BC(v1, v11);
      }

      else
      {
        OUTLINED_FUNCTION_2_37();
        sub_220DB70BC(v3, v10);
        OUTLINED_FUNCTION_18_18();
      }
    }

    OUTLINED_FUNCTION_1_41();
    sub_220DB7114(v3, v2);
    v12 = OUTLINED_FUNCTION_16_23();
    sub_220DB70BC(v12, v13);
  }

  OUTLINED_FUNCTION_28_7();
  OUTLINED_FUNCTION_29_0();
}

void Array<A>.maxSecondValue.getter()
{
  OUTLINED_FUNCTION_28_3();
  type metadata accessor for DetailChartDataElement(0);
  OUTLINED_FUNCTION_2_15();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_7_27();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_9_1();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_11_22();
  if (v4)
  {
    OUTLINED_FUNCTION_0_28();
    OUTLINED_FUNCTION_25_12();
    for (i = 1; v4 != i; ++i)
    {
      OUTLINED_FUNCTION_0_28();
      sub_220DB7064(v9, v1);
      if (*(v3 + *(v0 + 24)) >= *(v1 + *(v0 + 24)))
      {
        OUTLINED_FUNCTION_3_31();
        sub_220DB70BC(v1, v11);
      }

      else
      {
        OUTLINED_FUNCTION_2_37();
        sub_220DB70BC(v3, v10);
        OUTLINED_FUNCTION_18_18();
      }
    }

    OUTLINED_FUNCTION_1_41();
    sub_220DB7114(v3, v2);
    v12 = OUTLINED_FUNCTION_16_23();
    sub_220DB70BC(v12, v13);
  }

  OUTLINED_FUNCTION_28_7();
  OUTLINED_FUNCTION_29_0();
}

void Array<A>.maxThirdValue.getter()
{
  OUTLINED_FUNCTION_28_3();
  type metadata accessor for DetailChartDataElement(0);
  OUTLINED_FUNCTION_2_15();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_4();
  v6 = v4 - v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_9_1();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_29_7();
  if (v2)
  {
    OUTLINED_FUNCTION_0_28();
    OUTLINED_FUNCTION_25_12();
    for (i = 1; v2 != i; ++i)
    {
      OUTLINED_FUNCTION_0_28();
      sub_220DB7064(v10, v6);
      v12 = OUTLINED_FUNCTION_27_9();
      if (!v14)
      {
        v12 = v13;
      }

      v15 = v6 + v11;
      if (!*(v15 + 8))
      {
        v13 = *v15;
      }

      if (v12 >= v13)
      {
        OUTLINED_FUNCTION_3_31();
        sub_220DB70BC(v6, v17);
      }

      else
      {
        OUTLINED_FUNCTION_2_37();
        sub_220DB70BC(v1, v16);
        sub_220DB7114(v6, v1);
      }
    }

    OUTLINED_FUNCTION_1_41();
    sub_220DB7114(v1, v0);
    OUTLINED_FUNCTION_22_14();
  }

  OUTLINED_FUNCTION_29_0();
}

void Array<A>.minSecondValue.getter()
{
  OUTLINED_FUNCTION_28_3();
  type metadata accessor for DetailChartDataElement(0);
  OUTLINED_FUNCTION_2_15();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_7_27();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_9_1();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_11_22();
  if (v4)
  {
    OUTLINED_FUNCTION_0_28();
    OUTLINED_FUNCTION_25_12();
    for (i = 1; v4 != i; ++i)
    {
      OUTLINED_FUNCTION_0_28();
      sub_220DB7064(v9, v1);
      if (*(v1 + *(v0 + 24)) >= *(v3 + *(v0 + 24)))
      {
        OUTLINED_FUNCTION_3_31();
        sub_220DB70BC(v1, v11);
      }

      else
      {
        OUTLINED_FUNCTION_2_37();
        sub_220DB70BC(v3, v10);
        OUTLINED_FUNCTION_18_18();
      }
    }

    OUTLINED_FUNCTION_1_41();
    sub_220DB7114(v3, v2);
    v12 = OUTLINED_FUNCTION_16_23();
    sub_220DB70BC(v12, v13);
  }

  OUTLINED_FUNCTION_28_7();
  OUTLINED_FUNCTION_29_0();
}

void Array<A>.minThirdValue.getter()
{
  OUTLINED_FUNCTION_28_3();
  type metadata accessor for DetailChartDataElement(0);
  OUTLINED_FUNCTION_2_15();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_4();
  v6 = v4 - v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_9_1();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_29_7();
  if (v2)
  {
    OUTLINED_FUNCTION_0_28();
    OUTLINED_FUNCTION_25_12();
    for (i = 1; v2 != i; ++i)
    {
      OUTLINED_FUNCTION_0_28();
      sub_220DB7064(v10, v6);
      v12 = OUTLINED_FUNCTION_27_9();
      if (!v14)
      {
        v12 = v13;
      }

      v15 = v1 + v11;
      if (*(v15 + 8))
      {
        v16 = 1.79769313e308;
      }

      else
      {
        v16 = *v15;
      }

      if (v12 >= v16)
      {
        OUTLINED_FUNCTION_3_31();
        sub_220DB70BC(v6, v18);
      }

      else
      {
        OUTLINED_FUNCTION_2_37();
        sub_220DB70BC(v1, v17);
        sub_220DB7114(v6, v1);
      }
    }

    OUTLINED_FUNCTION_1_41();
    sub_220DB7114(v1, v0);
    OUTLINED_FUNCTION_22_14();
  }

  OUTLINED_FUNCTION_29_0();
}

uint64_t AirQualityDetailStringBuilder.attributionDescription(for:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF96840, &qword_220DC8800);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v14 - v2;
  sub_220DBEBF0();
  v4 = sub_220DBED60();
  if (__swift_getEnumTagSinglePayload(v3, 1, v4) == 1)
  {
    sub_220DB7C08(v3);
    return 0;
  }

  else
  {
    v6 = sub_220DBED50();
    v8 = v7;
    (*(*(v4 - 8) + 8))(v3, v4);
    if (qword_280FA6600 != -1)
    {
      swift_once();
    }

    v9 = sub_220DBE240();
    v11 = v10;
    sub_220CD8184(0, &qword_27CF95038, 0x277CCA898);
    sub_220DB7ED0(v9, v11);
    v12 = sub_220DB7C70(v6, v8);

    sub_220CD8184(0, &qword_27CF96848, 0x277CCAB48);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF96850, &qword_220DC8808);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_220DC87F0;
    *(v13 + 32) = v12;
    return sub_220DC0A70();
  }
}

uint64_t sub_220DB7C08(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF96840, &qword_220DC8800);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_220DB7C70(uint64_t a1, uint64_t a2)
{
  v4 = sub_220DBE2E0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v23[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v26 = sub_220DC0640();
  v27 = v8;
  v24 = 0x656D6F7A65657262;
  v25 = 0xEB00000000726574;
  sub_220CEFF14();
  v9 = MEMORY[0x277D837D0];
  v10 = sub_220DC0B10();

  if (v10)
  {
    sub_220CD8184(0, &qword_27CF96848, 0x277CCAB48);

    return sub_220DB7ED0(a1, a2);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF96858, &unk_220DC8880);
    inited = swift_initStackObject();
    v13 = MEMORY[0x277D741F0];
    *(inited + 16) = xmmword_220DC17C0;
    v14 = *v13;
    v15 = MEMORY[0x277D83B88];
    *(inited + 32) = v14;
    *(inited + 40) = 1;
    v16 = *MEMORY[0x277D740E8];
    *(inited + 64) = v15;
    *(inited + 72) = v16;
    v17 = v14;
    v18 = v16;
    sub_220DBEBE0();
    v19 = sub_220DBE2C0();
    v21 = v20;
    (*(v5 + 8))(v7, v4);
    *(inited + 104) = v9;
    *(inited + 80) = v19;
    *(inited + 88) = v21;
    type metadata accessor for Key(0);
    sub_220DB7FD8();
    v22 = sub_220DC0540();
    objc_allocWithZone(MEMORY[0x277CCAB48]);

    return sub_220DB8030(a1, a2, v22);
  }
}

id sub_220DB7ED0(uint64_t a1, uint64_t a2)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_220DC05E0();

  v4 = [v2 initWithString_];

  return v4;
}

unint64_t sub_220DB7FD8()
{
  result = qword_27CF95110;
  if (!qword_27CF95110)
  {
    type metadata accessor for Key(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF95110);
  }

  return result;
}

id sub_220DB8030(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_220DC05E0();

  if (a3)
  {
    type metadata accessor for Key(0);
    sub_220DB7FD8();
    v6 = sub_220DC0530();
  }

  else
  {
    v6 = 0;
  }

  v7 = [v3 initWithString:v5 attributes:v6];

  return v7;
}

uint64_t PrecipitationCalculator.init()@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for IsSameDayCache();
  v2 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF955E8, &unk_220DC2EA0);
  swift_allocObject();
  result = sub_220DBF280();
  *(v2 + 16) = result;
  *a1 = v2;
  return result;
}

void PrecipitationCalculator.dominantPrecipitationType(precipitation:snowfall:)()
{
  OUTLINED_FUNCTION_28_3();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95208, &unk_220DC1E40);
  OUTLINED_FUNCTION_0();
  v5 = v4;
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_16_24();
  v7 = objc_opt_self();
  v8 = [v7 centimeters];
  sub_220DBE130();

  sub_220DBE050();
  v9 = *(v5 + 8);
  v9(v0, v3);
  v10 = [v7 centimeters];
  sub_220DBE130();

  sub_220DBE050();
  v12 = v11;
  v9(v0, v3);
  OUTLINED_FUNCTION_18_19();
  if (v15 ^ v16 | v14)
  {
    v13 = 0;
  }

  if (v12 > 0.0)
  {
    v13 = 2;
  }

  *v2 = v13;
  OUTLINED_FUNCTION_29_0();
}

uint64_t sub_220DB82E8@<X0>(uint64_t (*a1)(void)@<X1>, char *a2@<X8>)
{
  v5 = sub_220DBEBA0();
  OUTLINED_FUNCTION_0();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_16_24();
  a1();
  WeatherCondition.dominantPrecipitation.getter(&v11);
  result = (*(v7 + 8))(v2, v5);
  v10 = v11;
  if (v11 == 6)
  {
    v10 = 5;
  }

  *a2 = v10;
  return result;
}

uint64_t PrecipitationCalculator.precipitationAmountForDisplay(precipitation:snowfall:precipitationType:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X2>, uint64_t a4@<X8>)
{
  switch(*a3)
  {
    case 1:
    case 3:
    case 4:
    case 5:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95208, &unk_220DC1E40);
      OUTLINED_FUNCTION_6();
      v7 = *(v6 + 16);
      v9 = v8;
      v10 = a4;
      v11 = a1;
      goto LABEL_3;
    case 2:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95208, &unk_220DC1E40);
      OUTLINED_FUNCTION_6();
      v7 = *(v14 + 16);
      v9 = v15;
      v10 = a4;
      v11 = a2;
LABEL_3:

      result = v7(v10, v11, v9);
      break;
    default:
      v16 = [objc_opt_self() centimeters];
      OUTLINED_FUNCTION_11_0();
      sub_220CDB190();

      result = sub_220DBE040();
      break;
  }

  return result;
}

void PrecipitationCalculator.precipitationAmountForDisplay(from:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v105 = a2;
  v99 = sub_220DBEBA0();
  OUTLINED_FUNCTION_0();
  v101 = v6;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_1();
  v98 = v9 - v8;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95208, &unk_220DC1E40);
  OUTLINED_FUNCTION_0();
  v96 = v10;
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v11);
  v100 = &v88 - v12;
  OUTLINED_FUNCTION_6_1();
  *&v103 = sub_220DBE6E0();
  OUTLINED_FUNCTION_0();
  *&v106 = v13;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_1();
  v17 = v16 - v15;
  v104 = sub_220DBE560();
  OUTLINED_FUNCTION_0();
  v102 = v18;
  v20 = MEMORY[0x28223BE20](v19);
  v22 = &v88 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_14_22();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95A10, "Z");
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_16_24();
  sub_220DBE830();
  OUTLINED_FUNCTION_0();
  v25 = v24;
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_1();
  v29 = v28 - v27;
  v107 = *v2;
  v30 = OUTLINED_FUNCTION_11_0();
  v31 = type metadata accessor for WeatherValueCalculationContext(v30);
  v32 = a1;
  sub_220D833A8(a1 + v31[5], v3);
  if (__swift_getEnumTagSinglePayload(v3, 1, v2) == 1)
  {
    sub_220CDA548(v3, &qword_27CF95A10, "Z");
    v33 = a1;
    v34 = v107;
LABEL_3:
    v35 = v105;
LABEL_8:
    v112 = v34;
    v49 = v31[7];
    v111 = *(v33 + v31[6]);
    v50 = *(v33 + v49 + 8);
    v51 = *(v33 + v49 + 16);
    v52 = *(v33 + v49 + 24);
    v53 = *(v33 + v49 + 32);
    v54 = *(v33 + v49 + 40);
    *&v108 = *(v33 + v49);
    *(&v108 + 1) = v50;
    *&v109 = v51;
    *(&v109 + 1) = v52;
    *&v110 = v53;
    *(&v110 + 1) = v54;
    v55 = v31[8];
    v56 = v108;
    v57 = v50;
    v58 = v51;
    v59 = v52;
    v60 = v53;
    v61 = v54;
    sub_220DB8CC4(v33, &v108, v33 + v55, v35);
    v62 = v108;
    v63 = v109;
    v64 = v110;

    return;
  }

  v94 = v25;
  (*(v25 + 32))(v29, v3, v2);
  v95 = v2;
  sub_220DBE8F0();
  sub_220DBE810();
  v93 = v31[9];
  sub_220DBE600();
  v36 = OUTLINED_FUNCTION_28();
  v38 = IsSameDayCache.isSameDay(_:_:calendar:)(v36, v37, v17);
  v39 = *(v106 + 8);
  *&v106 = v106 + 8;
  *&v92 = v39;
  v39(v17, v103);
  v40 = v102 + 8;
  v41 = *(v102 + 8);
  v42 = v104;
  v41(v22, v104);
  v41(v4, v42);
  if ((v38 & 1) == 0)
  {
    OUTLINED_FUNCTION_8_0();
    v48(v29, v95);
    v35 = v105;
    v33 = v32;
    v34 = v107;
    goto LABEL_8;
  }

  v91 = v29;
  v33 = v32;
  sub_220DBEA60();
  sub_220DBE8F0();
  sub_220DBE600();
  v43 = OUTLINED_FUNCTION_28();
  v44 = v107;
  v46 = IsSameDayCache.isSameDay(_:_:calendar:)(v43, v45, v17);
  (v92)(v17, v103);
  v47 = v104;
  v41(v22, v104);
  v41(v4, v47);
  v34 = v44;
  if (v46)
  {
    (*(v94 + 8))(v91, v95);
    goto LABEL_3;
  }

  v65 = v40;
  v66 = v22;
  v102 = v65;
  v67 = (v33 + v31[7]);
  v68 = v67[1];
  v103 = *v67;
  v92 = v68;
  v106 = v67[2];
  sub_220CDB190();
  v69 = v106;
  v70 = v100;
  sub_220DBE040();
  v71 = v98;
  sub_220DBE950();
  v72 = sub_220DBEB80();
  v73 = v101 + 8;
  v90 = *(v101 + 8);
  v90(v71, v99);
  v74 = v105;
  if (v72)
  {
    v101 = v73;
    sub_220DBE810();
    sub_220DBE8F0();
    v89 = v33;
    v75 = sub_220DBE530();
    v76 = v104;
    v41(v66, v104);
    v41(v4, v76);
    if ((v75 & 1) != 0 && (v77 = v34, v78 = v98, sub_220DBE820(), v79 = sub_220DBEB80(), v80 = v78, v34 = v77, v90(v80, v99), (v79 & 1) == 0))
    {
      v86 = OUTLINED_FUNCTION_8_19();
      v87(v86);
      (*(v96 + 32))(v105, v100, v97);
    }

    else
    {
      v112 = v34;
      v108 = v103;
      v109 = v92;
      v110 = v106;
      sub_220DB9CBC(v89, &v108, v105);
      OUTLINED_FUNCTION_8_0();
      v81(v100, v97);
      v82 = OUTLINED_FUNCTION_8_19();
      v83(v82);
    }
  }

  else
  {
    v84 = OUTLINED_FUNCTION_8_19();
    v85(v84);
    (*(v96 + 32))(v74, v70, v97);
  }
}

uint64_t sub_220DB8CC4@<X0>(uint64_t a1@<X0>, __int128 *a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v68 = a3;
  v69 = a1;
  v70 = a4;
  v58 = sub_220DBE560();
  v57 = *(v58 - 8);
  v6 = MEMORY[0x28223BE20](v58);
  v56 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v55 = &v53 - v8;
  v9 = type metadata accessor for PresentativePastHourRange.PresentativePastHourRangeContext(0);
  MEMORY[0x28223BE20](v9 - 8);
  v59 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_220DBEE10();
  v66 = *(v11 - 8);
  v67 = v11;
  v12 = MEMORY[0x28223BE20](v11);
  v64 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v53 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v53 - v17;
  v63 = type metadata accessor for PresentativePastHourRange(0);
  MEMORY[0x28223BE20](v63);
  v65 = &v53 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_220DBEBA0();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = &v53 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95208, &unk_220DC1E40);
  v25 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v27 = &v53 - v26;
  v28 = *a2;
  v61 = a2[1];
  v62 = v28;
  v71 = a2[2];
  v60 = *v4;
  sub_220CDB190();
  v29 = v71;
  sub_220DBE040();
  v30 = v69;
  sub_220DBE950();
  v31 = sub_220DBEB80();
  (*(v21 + 8))(v23, v20);
  if ((v31 & 1) == 0)
  {
    return (*(v25 + 32))(v70, v27, v24);
  }

  v54 = v27;
  v32 = v25;
  v33 = v24;
  sub_220DBEA20();
  sub_220DBEA30();
  v34 = v64;
  sub_220DBEA50();
  v35 = v65;
  PrecipitationCalculator.findPresentativePastHourRange(pastHourAmounts:past6HourAmounts:past24HourAmounts:)(v65);
  v36 = *(v66 + 8);
  v37 = v34;
  v38 = v67;
  v36(v37, v67);
  v36(v16, v38);
  v36(v18, v38);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    v39 = v59;
    sub_220CDD014(v35, v59);
    sub_220DBE050();
    if (v40 == 0.0)
    {
      v41 = v55;
      v42 = v30;
      sub_220DBE8F0();
      v43 = v56;
      sub_220DBEA60();
      v44 = sub_220DBE440();
      v45 = *(v57 + 8);
      v46 = v43;
      v47 = v58;
      v45(v46, v58);
      v45(v41, v47);
      sub_220CDD864(v39, type metadata accessor for PresentativePastHourRange.PresentativePastHourRangeContext);
      v48 = v70;
      v49 = v54;
      if (v44)
      {
        return (*(v32 + 32))(v70, v54, v33);
      }

      goto LABEL_10;
    }

    v51 = type metadata accessor for PresentativePastHourRange.PresentativePastHourRangeContext;
    v52 = v39;
  }

  else
  {
    v51 = type metadata accessor for PresentativePastHourRange;
    v52 = v35;
  }

  sub_220CDD864(v52, v51);
  v48 = v70;
  v42 = v30;
  v49 = v54;
LABEL_10:
  v73 = v60;
  v72[0] = v62;
  v72[1] = v61;
  v72[2] = v71;
  sub_220DB9CBC(v42, v72, v48);
  return (*(v32 + 8))(v49, v33);
}

void PrecipitationCalculator.apparentPrecipitationIntensityForDisplay(for:currentWeather:dayWeather:timeZone:)()
{
  OUTLINED_FUNCTION_28_3();
  v110 = v0;
  v111 = v2;
  v103 = v3;
  v105 = v4;
  v108 = v5;
  v113 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95208, &unk_220DC1E40);
  OUTLINED_FUNCTION_0();
  v96 = v8;
  v97 = v7;
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v9);
  v95 = &v89 - v10;
  OUTLINED_FUNCTION_6_1();
  v94 = sub_220DBEE10();
  OUTLINED_FUNCTION_0();
  v93 = v11;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_1();
  v92 = v14 - v13;
  OUTLINED_FUNCTION_6_1();
  sub_220DBE560();
  OUTLINED_FUNCTION_0();
  v101 = v16;
  v102 = v15;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_9();
  v100 = v17;
  OUTLINED_FUNCTION_23();
  v19 = MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_22_15(v19, v20, v21, v22, v23, v24, v25, v26, v89);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95A10, "Z");
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v27);
  v29 = &v89 - v28;
  v109 = sub_220DBE830();
  OUTLINED_FUNCTION_0();
  v104 = v30;
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_1();
  v98 = v33 - v32;
  OUTLINED_FUNCTION_6_1();
  sub_220DBE6E0();
  OUTLINED_FUNCTION_0();
  v106 = v35;
  v107 = v34;
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_1();
  v112 = v37 - v36;
  OUTLINED_FUNCTION_6_1();
  v38 = sub_220DBEBA0();
  OUTLINED_FUNCTION_0();
  v40 = v39;
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_1();
  v44 = v43 - v42;
  v45 = sub_220DBEE90();
  OUTLINED_FUNCTION_0();
  v47 = v46;
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_16_24();
  v49 = sub_220DBEE60();
  OUTLINED_FUNCTION_0();
  v51 = v50;
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_1();
  v55 = v54 - v53;
  v110 = *v110;
  (*(v47 + 104))(v1, *MEMORY[0x277CE3798], v45);
  sub_220DBEE40();
  sub_220DBE950();
  LOBYTE(v45) = sub_220DBEB80();
  v56 = *(v40 + 8);
  v91 = v38;
  v56(v44, v38);
  if (v45)
  {
    v89 = v55;
    v90 = v51;
    sub_220DBE600();
    v57 = swift_allocObject();
    *(v57 + 16) = 2;
    sub_220D833A8(v105, v29);
    v58 = v109;
    if (__swift_getEnumTagSinglePayload(v29, 1, v109) == 1)
    {
      sub_220CDA548(v29, &qword_27CF95A10, "Z");
      v59 = v110;
      v60 = v111;
    }

    else
    {
      v103 = v57;
      v105 = v49;
      v61 = v98;
      (*(v104 + 32))(v98, v29, v58);
      v62 = v99;
      sub_220DBE8F0();
      v63 = v100;
      sub_220DBE810();
      v64 = v110;
      v65 = IsSameDayCache.isSameDay(_:_:calendar:)(v62, v63, v112);
      v66 = *(v101 + 8);
      v67 = v63;
      v68 = v102;
      v66(v67, v102);
      v66(v62, v68);
      if (v65)
      {
        v69 = v109;
        v57 = v103;
        v70 = sub_220DB9B48(v103, v64, v108, v113, v112);
        v60 = v111;
        v59 = v64;
        if (v70)
        {
          (*(v104 + 8))(v98, v69);
          v49 = v105;
        }

        else
        {
          v87 = v98;
          sub_220DBE820();
          v88 = sub_220DBEB80();
          v56(v44, v91);
          (*(v104 + 8))(v87, v69);
          v49 = v105;
          if ((v88 & 1) == 0)
          {
            goto LABEL_14;
          }
        }
      }

      else
      {
        (*(v104 + 8))(v61, v109);
        v60 = v111;
        v49 = v105;
        v57 = v103;
        v59 = v64;
      }
    }

    if ((sub_220DB9B48(v57, v59, v108, v113, v112) & 1) == 0 || (v71 = v49, v72 = v60, v73 = v99, sub_220DBE8F0(), v74 = v100, sub_220DBEA60(), OUTLINED_FUNCTION_28(), v75 = sub_220DBE440(), v76 = *(v101 + 8), v77 = v74, v78 = v102, v76(v77, v102), v79 = v73, v60 = v72, v49 = v71, v76(v79, v78), (v75 & 1) == 0) || (v80 = v92, sub_220DBEA50(), v81 = v95, sub_220DBEDD0(), OUTLINED_FUNCTION_8_0(), v82(v80, v94), v83 = v97, sub_220DBE050(), v85 = v84, (*(v96 + 8))(v81, v83), v85 != 0.0))
    {
      sub_220DBE8D0();
      (*(v106 + 8))(v112, v107);
      OUTLINED_FUNCTION_8_0();
      v86(v89, v49);
LABEL_15:

      goto LABEL_16;
    }

LABEL_14:
    (*(v106 + 8))(v112, v107);
    (*(v90 + 32))(v60, v89, v49);
    goto LABEL_15;
  }

  (*(v51 + 32))(v111, v55, v49);
LABEL_16:
  OUTLINED_FUNCTION_29_0();
}

uint64_t sub_220DB9B48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_220DBE560();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v19 - v12;
  v16 = *(a1 + 16);
  v14 = (a1 + 16);
  v15 = v16;
  if (v16 == 2)
  {
    sub_220DBEA60();
    sub_220DBE8F0();
    v15 = IsSameDayCache.isSameDay(_:_:calendar:)(v13, v11, a5);
    v17 = *(v8 + 8);
    v17(v11, v7);
    v17(v13, v7);
    swift_beginAccess();
    *v14 = v15 & 1;
  }

  return v15 & 1;
}

uint64_t sub_220DB9CBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v27 = a1;
  v28 = a3;
  v4 = sub_220DBEC20();
  v25 = *(v4 - 8);
  v26 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_220DBEBA0();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95208, &unk_220DC1E40);
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v25 - v16;
  v18 = *(a2 + 32);
  sub_220CDB190();
  v19 = v18;
  sub_220DBE040();
  sub_220DBE950();
  LOBYTE(a2) = sub_220DBEB80();
  (*(v8 + 8))(v10, v7);
  if (a2)
  {
    sub_220DBE860();
    v20 = v25;
    v21 = v26;
    v22 = (*(v25 + 88))(v6, v26);
    if (v22 == *MEMORY[0x277CE3388])
    {
      (*(v12 + 32))(v15, v17, v11);
    }

    else
    {
      v24 = (v12 + 8);
      if (v22 == *MEMORY[0x277CE33A0])
      {
        sub_220DBE880();
        (*v24)(v17, v11);
      }

      else
      {
        sub_220DBE8A0();
        (*v24)(v17, v11);
        (*(v20 + 8))(v6, v21);
      }
    }
  }

  else
  {
    v15 = v17;
  }

  return (*(v12 + 32))(v28, v15, v11);
}

void static LinearGradient.fallback.getter(uint64_t a1)
{
  sub_220DC0180();
  sub_220DC0190();
  MEMORY[0x223D97D40](MEMORY[0x277D84F90]);
  v1 = sub_220DBF7B0();
  OUTLINED_FUNCTION_0_29(v1, v2, v3, v4, v5, v6, v7, v8, v9, v11, v10, v12, v13);
}

double LinearGradient.init(_:)(uint64_t a1)
{
  v1 = sub_220DBF7B0();
  *&result = OUTLINED_FUNCTION_0_29(v1, v2, v3, v4, v5, v6, v7, v8, v9, v12, v10, v13, v14).n128_u64[0];
  return result;
}

void *static DetailChartCondition.read(from:)@<X0>(_BYTE *a1@<X8>)
{
  result = sub_220DBF260();
  if (!v1)
  {
    v4 = v7 - 1;
    if (v4 >= 9)
    {
      sub_220DBF210();
      v5 = sub_220DBA2D0();
      OUTLINED_FUNCTION_0_30(v5);
      OUTLINED_FUNCTION_1_42();
      (*(v6 + 104))();
      return swift_willThrow();
    }

    else
    {
      *a1 = v4;
    }
  }

  return result;
}

unint64_t sub_220DBA2D0()
{
  result = qword_27CF96860;
  if (!qword_27CF96860)
  {
    sub_220DBF210();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF96860);
  }

  return result;
}

void *static DetailCondition.read(from:)@<X0>(char *a1@<X8>)
{
  result = sub_220DBF260();
  if (!v1)
  {
    v4 = 2;
    switch(v8)
    {
      case 1:
        goto LABEL_10;
      case 2:
        v4 = 3;
        goto LABEL_10;
      case 3:
        v4 = 4;
        goto LABEL_10;
      case 4:
        result = sub_220DBF260();
        if (v7 == 2)
        {
          v4 = 1;
        }

        else
        {
          if (v7 != 1)
          {
LABEL_8:
            sub_220DBF210();
            v5 = sub_220DBA2D0();
            OUTLINED_FUNCTION_0_30(v5);
            OUTLINED_FUNCTION_1_42();
            (*(v6 + 104))();
            return swift_willThrow();
          }

          v4 = 0;
        }

LABEL_10:
        *a1 = v4;
        break;
      case 5:
      case 6:
      case 7:
        v4 = v8;
        goto LABEL_10;
      default:
        goto LABEL_8;
    }
  }

  return result;
}

uint64_t DetailCondition.write(to:)(uint64_t a1)
{
  switch(*v1)
  {
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
    case 7:
      return sub_220DBF270();
    default:
      result = sub_220DBF270();
      if (!v2)
      {
        return sub_220DBF270();
      }

      return result;
  }
}

void *static TemperatureChartKind.read(from:)@<X0>(char *a1@<X8>)
{
  result = sub_220DBF260();
  if (!v1)
  {
    if (v7 == 1)
    {
      v4 = 0;
      goto LABEL_6;
    }

    if (v7 == 2)
    {
      v4 = 1;
LABEL_6:
      *a1 = v4;
      return result;
    }

    sub_220DBF210();
    v5 = sub_220DBA2D0();
    OUTLINED_FUNCTION_0_30(v5);
    OUTLINED_FUNCTION_1_42();
    (*(v6 + 104))();
    return swift_willThrow();
  }

  return result;
}

uint64_t PresentativePastHourRange.dominantPrecipitation.getter@<X0>(char *a1@<X8>)
{
  v3 = type metadata accessor for PresentativePastHourRange.PresentativePastHourRangeContext(0);
  v4 = v3 - 8;
  MEMORY[0x28223BE20](v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for PresentativePastHourRange(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220D5AC7C(v1, v9);
  sub_220DBA98C(v9, v6);
  v10 = v6[*(v4 + 32)];
  result = sub_220DBA9F0(v6);
  *a1 = v10;
  return result;
}

uint64_t sub_220DBA98C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PresentativePastHourRange.PresentativePastHourRangeContext(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_220DBA9F0(uint64_t a1)
{
  v2 = type metadata accessor for PresentativePastHourRange.PresentativePastHourRangeContext(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t WeatherCondition.dominantPrecipitation.getter@<X0>(char *a1@<X8>)
{
  sub_220DBEBA0();
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_1();
  v4 = OUTLINED_FUNCTION_4_28(v3);
  v5(v4);
  v6 = OUTLINED_FUNCTION_7_29();
  result = v7(v6);
  if (result == *MEMORY[0x277CE32F8] || result == *MEMORY[0x277CE3228])
  {
    goto LABEL_6;
  }

  if (result == *MEMORY[0x277CE32F0])
  {
LABEL_8:
    v10 = 3;
    goto LABEL_9;
  }

  if (result == *MEMORY[0x277CE3300])
  {
    goto LABEL_6;
  }

  if (result == *MEMORY[0x277CE3270] || result == *MEMORY[0x277CE3240])
  {
    goto LABEL_8;
  }

  if (result == *MEMORY[0x277CE3290])
  {
    v10 = 5;
    goto LABEL_9;
  }

  if (result == *MEMORY[0x277CE3308])
  {
    goto LABEL_8;
  }

  if (result == *MEMORY[0x277CE3310])
  {
    goto LABEL_6;
  }

  if (result == *MEMORY[0x277CE3318] || result == *MEMORY[0x277CE32A0] || result == *MEMORY[0x277CE3280])
  {
    goto LABEL_8;
  }

  if (result == *MEMORY[0x277CE32C0])
  {
    v10 = 4;
    goto LABEL_9;
  }

  if (result == *MEMORY[0x277CE32A8])
  {
    goto LABEL_6;
  }

  if (result == *MEMORY[0x277CE3258])
  {
    goto LABEL_8;
  }

  if (result == *MEMORY[0x277CE3238])
  {
LABEL_6:
    v10 = 2;
LABEL_9:
    *a1 = v10;
    return result;
  }

  if (result == *MEMORY[0x277CE3218] || result == *MEMORY[0x277CE3260] || result == *MEMORY[0x277CE3268])
  {
    goto LABEL_8;
  }

  if (result == *MEMORY[0x277CE3320])
  {
    v10 = 1;
    goto LABEL_9;
  }

  v14 = OUTLINED_FUNCTION_6_27(6);
  return v15(v14);
}

uint64_t DominantPrecipitation.title.getter()
{
  switch(*v0)
  {
    case 1:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_14;
      }

      goto LABEL_9;
    case 2:
      if (qword_280FA6600 == -1)
      {
        goto LABEL_11;
      }

      goto LABEL_13;
    case 3:
      if (qword_280FA6600 == -1)
      {
        goto LABEL_11;
      }

LABEL_13:
      OUTLINED_FUNCTION_10(&qword_280FA6600);
      goto LABEL_11;
    case 4:
      if (qword_280FA6600 == -1)
      {
        goto LABEL_9;
      }

      goto LABEL_14;
    default:
      if (qword_280FA6600 == -1)
      {
        goto LABEL_9;
      }

LABEL_14:
      OUTLINED_FUNCTION_10(&qword_280FA6600);
LABEL_9:
      OUTLINED_FUNCTION_3_32();
LABEL_11:
      OUTLINED_FUNCTION_6_0();
      return sub_220DBE240();
  }
}

uint64_t DominantPrecipitation.hashValue.getter()
{
  v1 = *v0;
  sub_220DC0CE0();
  MEMORY[0x223D98920](v1);
  return sub_220DC0D20();
}

uint64_t Measurement<>.formattedWithoutScaling(precipitationType:)(_BYTE *a1)
{
  sub_220DC0300();
  OUTLINED_FUNCTION_0();
  v40 = v3;
  v41 = v2;
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_1();
  v39 = v5 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95228, &unk_220DC1E60);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v37 - v7;
  v9 = sub_220DC02F0();
  OUTLINED_FUNCTION_0();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_1();
  v15 = v14 - v13;
  v16 = sub_220DC0960();
  OUTLINED_FUNCTION_0();
  v18 = v17;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_1();
  v22 = v21 - v20;
  v38 = sub_220DC0950();
  OUTLINED_FUNCTION_0();
  v24 = v23;
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_1();
  v28 = v27 - v26;
  v29 = MEMORY[0x277D7B4C0];
  if (*a1 != 2)
  {
    v29 = MEMORY[0x277D7B4B8];
  }

  (*(v18 + 104))(v22, *v29, v16);
  (*(v11 + 104))(v15, *MEMORY[0x277D7B3F0], v9);
  v30 = sub_220DBE5E0();
  __swift_storeEnumTagSinglePayload(v8, 1, 1, v30);
  sub_220DC0810();
  sub_220DC0280();

  sub_220D69B34(v8);
  (*(v11 + 8))(v15, v9);
  (*(v18 + 8))(v22, v16);
  v32 = v39;
  v31 = v40;
  v33 = v41;
  (*(v40 + 104))(v39, *MEMORY[0x277D7B408], v41);
  sub_220DBF100();
  sub_220DBF0D0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95208, &unk_220DC1E40);
  sub_220D427C0();
  v34 = v38;
  v35 = sub_220DBE0B0();

  (*(v31 + 8))(v32, v33);
  (*(v24 + 8))(v28, v34);
  return v35;
}

uint64_t Precipitation.dominantPrecipitation.getter@<X0>(char *a1@<X8>)
{
  sub_220DBEC20();
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_1();
  v4 = OUTLINED_FUNCTION_4_28(v3);
  v5(v4);
  v6 = OUTLINED_FUNCTION_7_29();
  result = v7(v6);
  if (result == *MEMORY[0x277CE3390])
  {
    *a1 = 0;
    return result;
  }

  if (result == *MEMORY[0x277CE33A8])
  {
    v9 = 1;
LABEL_11:
    *a1 = v9;
    return result;
  }

  if (result == *MEMORY[0x277CE3398])
  {
    v9 = 3;
    goto LABEL_11;
  }

  if (result == *MEMORY[0x277CE33B0])
  {
    v9 = 4;
    goto LABEL_11;
  }

  if (result == *MEMORY[0x277CE33A0])
  {
    v9 = 2;
    goto LABEL_11;
  }

  v10 = OUTLINED_FUNCTION_6_27(5);
  return v11(v10);
}

uint64_t sub_220DBB51C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, void *a7)
{
  if (sub_220DBE610())
  {
    OUTLINED_FUNCTION_29_8();
    return sub_220DBB5E0(v9, a2, v15, a7);
  }

  else if (sub_220DBE640())
  {
    OUTLINED_FUNCTION_29_8();
    return sub_220DBBA5C(a2, v15, a7);
  }

  else
  {
    OUTLINED_FUNCTION_29_8();
    v11 = OUTLINED_FUNCTION_37();
    return sub_220DBBEE8(v11, v12, a5, v13, a7);
  }
}

uint64_t sub_220DBB5E0(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94F90, &unk_220DC4410);
  OUTLINED_FUNCTION_18(v11);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_21_15(v13, v77);
  v14 = a4;
  v15 = v4;
  v16 = v5;
  v17 = v6;
  v18 = v7;
  v19 = v8;
  v20 = a3;
  OUTLINED_FUNCTION_47_2();
  OUTLINED_FUNCTION_28_8();
  if (v21)
  {
    if (qword_27CF94F40 != -1)
    {
      OUTLINED_FUNCTION_4_0(&qword_27CF94F40);
    }

    v22 = sub_220DBF410();
    __swift_project_value_buffer(v22, qword_27CF95F48);
    v23 = sub_220DBF3F0();
    v24 = sub_220DC0980();
    if (OUTLINED_FUNCTION_19_10(v24))
    {
      v25 = OUTLINED_FUNCTION_34_1();
      OUTLINED_FUNCTION_27_4(v25);
      OUTLINED_FUNCTION_12_16(&dword_220CD1000, v26, v27, "Failed to create Visibility summary (today) due to missing extrema values");
      OUTLINED_FUNCTION_17();
    }

    return 0;
  }

  else
  {
    switch(v4 >> 62)
    {
      case 1uLL:
        v68 = qword_280FA6600;

        if (v68 != -1)
        {
          OUTLINED_FUNCTION_10(&qword_280FA6600);
        }

        OUTLINED_FUNCTION_6_28();
        OUTLINED_FUNCTION_33();
        v54 = v69 + 61;
        goto LABEL_21;
      case 2uLL:
        v46 = qword_280FA6600;

        if (v46 != -1)
        {
          OUTLINED_FUNCTION_10(&qword_280FA6600);
        }

        OUTLINED_FUNCTION_6_28();
        OUTLINED_FUNCTION_33();
        v54 = v53 + 55;
LABEL_21:
        OUTLINED_FUNCTION_10_18(0xD00000000000002ELL, v47, v48, v49, v50, v51, v52, v54);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
        v70 = swift_allocObject();
        v28 = OUTLINED_FUNCTION_12_26(v70, xmmword_220DC1CC0);
        v72 = v71;
        v73 = MEMORY[0x277D837D0];
        v70[3].n128_u64[1] = MEMORY[0x277D837D0];
        v74 = sub_220CEFDB0();
        v70[2].n128_u64[0] = v28;
        v70[2].n128_u64[1] = v72;
        v75 = OUTLINED_FUNCTION_15_18(v74);
        OUTLINED_FUNCTION_32_7(v75);
        OUTLINED_FUNCTION_16_25();

        v42 = OUTLINED_FUNCTION_9_27();
        v45 = v73;
        goto LABEL_22;
      case 3uLL:
        v55 = qword_280FA6600;

        if (v55 != -1)
        {
          OUTLINED_FUNCTION_10(&qword_280FA6600);
        }

        OUTLINED_FUNCTION_6_28();
        OUTLINED_FUNCTION_10_18(v56 + 34, 0x8000000220E02780, v57, v58, v59, v60, v61, v56 + 110);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
        v62 = swift_allocObject();
        v28 = OUTLINED_FUNCTION_12_26(v62, xmmword_220DC1CE0);
        v62[3].n128_u64[1] = MEMORY[0x277D837D0];
        v63 = sub_220CEFDB0();
        v64 = OUTLINED_FUNCTION_20_10(v63);
        OUTLINED_FUNCTION_19_15(v64, v65);
        OUTLINED_FUNCTION_16_25();

        OUTLINED_FUNCTION_9_27();
        OUTLINED_FUNCTION_42_3();
        goto LABEL_23;
      default:
        OUTLINED_FUNCTION_9_27();
        OUTLINED_FUNCTION_42_3();
        sub_220DBDF04(v29);
        if (qword_280FA6600 != -1)
        {
          OUTLINED_FUNCTION_10(&qword_280FA6600);
        }

        OUTLINED_FUNCTION_6_28();
        OUTLINED_FUNCTION_33();
        OUTLINED_FUNCTION_10_18(v31, v32, v33, v34, v35, v36, v37, v30 + 57);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
        v38 = swift_allocObject();
        v28 = OUTLINED_FUNCTION_12_26(v38, xmmword_220DC17C0);
        v40 = v39;
        v38[3].n128_u64[1] = MEMORY[0x277D837D0];
        v41 = sub_220CEFDB0();
        v38[2].n128_u64[0] = v28;
        v38[2].n128_u64[1] = v40;
        OUTLINED_FUNCTION_15_18(v41);
        sub_220DC05F0();
        OUTLINED_FUNCTION_16_25();

        v42 = OUTLINED_FUNCTION_9_27();
        v45 = v78;
LABEL_22:
        v66 = v79;
        v67 = v80;
LABEL_23:
        sub_220DBDE80(v42, v43, v44, v45, v66, v67);
        break;
    }
  }

  return v28;
}

uint64_t sub_220DBBA5C(uint64_t a1, void *a2, void *a3)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94F90, &unk_220DC4410);
  OUTLINED_FUNCTION_18(v10);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_21_15(v12, v77);
  v13 = a3;
  v14 = v3;
  v15 = v4;
  v16 = v5;
  v17 = v6;
  v18 = v7;
  v19 = a2;
  OUTLINED_FUNCTION_47_2();
  OUTLINED_FUNCTION_28_8();
  if (v20)
  {
    if (qword_27CF94F40 != -1)
    {
      OUTLINED_FUNCTION_4_0(&qword_27CF94F40);
    }

    v21 = sub_220DBF410();
    __swift_project_value_buffer(v21, qword_27CF95F48);
    v22 = sub_220DBF3F0();
    v23 = sub_220DC0980();
    if (OUTLINED_FUNCTION_19_10(v23))
    {
      v24 = OUTLINED_FUNCTION_34_1();
      OUTLINED_FUNCTION_27_4(v24);
      OUTLINED_FUNCTION_12_16(&dword_220CD1000, v25, v26, "Failed to create Visibility summary (yesterday) due to missing extrema values");
      OUTLINED_FUNCTION_17();
    }

    return 0;
  }

  else
  {
    switch(v3 >> 62)
    {
      case 1uLL:
        v67 = qword_280FA6600;

        if (v67 != -1)
        {
          OUTLINED_FUNCTION_10(&qword_280FA6600);
        }

        OUTLINED_FUNCTION_33();
        v53 = v69 | v68;
        goto LABEL_21;
      case 2uLL:
        v45 = qword_280FA6600;

        if (v45 != -1)
        {
          OUTLINED_FUNCTION_10(&qword_280FA6600);
        }

        OUTLINED_FUNCTION_6_28();
        OUTLINED_FUNCTION_33();
        v53 = v52 + 69;
LABEL_21:
        OUTLINED_FUNCTION_10_18(0xD00000000000002ELL, v46, v47, v48, v49, v50, v51, v53);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
        v70 = swift_allocObject();
        v27 = OUTLINED_FUNCTION_12_26(v70, xmmword_220DC1CC0);
        v72 = v71;
        v73 = MEMORY[0x277D837D0];
        v70[3].n128_u64[1] = MEMORY[0x277D837D0];
        v74 = sub_220CEFDB0();
        v70[2].n128_u64[0] = v27;
        v70[2].n128_u64[1] = v72;
        v75 = OUTLINED_FUNCTION_15_18(v74);
        OUTLINED_FUNCTION_32_7(v75);
        OUTLINED_FUNCTION_16_25();

        v41 = OUTLINED_FUNCTION_9_27();
        v44 = v73;
        goto LABEL_22;
      case 3uLL:
        v54 = qword_280FA6600;

        if (v54 != -1)
        {
          OUTLINED_FUNCTION_10(&qword_280FA6600);
        }

        OUTLINED_FUNCTION_6_28();
        OUTLINED_FUNCTION_10_18(v55 + 30, 0x8000000220E01190, v56, v57, v58, v59, v60, v55 + 109);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
        v61 = swift_allocObject();
        v27 = OUTLINED_FUNCTION_12_26(v61, xmmword_220DC1CE0);
        v61[3].n128_u64[1] = MEMORY[0x277D837D0];
        v62 = sub_220CEFDB0();
        v63 = OUTLINED_FUNCTION_20_10(v62);
        OUTLINED_FUNCTION_19_15(v63, v64);
        OUTLINED_FUNCTION_16_25();

        OUTLINED_FUNCTION_9_27();
        OUTLINED_FUNCTION_42_3();
        goto LABEL_23;
      default:
        OUTLINED_FUNCTION_9_27();
        OUTLINED_FUNCTION_42_3();
        sub_220DBDF04(v28);
        if (qword_280FA6600 != -1)
        {
          OUTLINED_FUNCTION_10(&qword_280FA6600);
        }

        OUTLINED_FUNCTION_6_28();
        OUTLINED_FUNCTION_33();
        OUTLINED_FUNCTION_10_18(v30, v31, v32, v33, v34, v35, v36, v29 + 61);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
        v37 = swift_allocObject();
        v27 = OUTLINED_FUNCTION_12_26(v37, xmmword_220DC17C0);
        v39 = v38;
        v37[3].n128_u64[1] = MEMORY[0x277D837D0];
        v40 = sub_220CEFDB0();
        v37[2].n128_u64[0] = v27;
        v37[2].n128_u64[1] = v39;
        OUTLINED_FUNCTION_15_18(v40);
        sub_220DC05F0();
        OUTLINED_FUNCTION_16_25();

        v41 = OUTLINED_FUNCTION_9_27();
        v44 = v78;
LABEL_22:
        v65 = v79;
        v66 = v80;
LABEL_23:
        sub_220DBDE80(v41, v42, v43, v44, v65, v66);
        break;
    }
  }

  return v27;
}

uint64_t sub_220DBBEE8(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, void *a5)
{
  v118 = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94F90, &unk_220DC4410);
  OUTLINED_FUNCTION_18(v9);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v10);
  v12 = v114 - v11;
  v13 = *a4;
  v14 = *(a4 + 8);
  v15 = *(a4 + 16);
  v16 = *(a4 + 24);
  v17 = *(a4 + 32);
  v18 = *(a4 + 40);
  sub_220CEF48C(a2, v114 - v11);
  v119[0] = v13;
  v119[1] = v14;
  v119[2] = v15;
  v119[3] = v16;
  v119[4] = v17;
  v119[5] = v18;
  v19 = a5;
  v20 = v13;
  v21 = v14;
  v22 = v15;
  v23 = v16;
  v24 = v17;
  v25 = v18;
  sub_220DBCB0C(v12, v119, v19, v120);
  OUTLINED_FUNCTION_28_8();
  if (v26)
  {
    if (qword_27CF94F40 != -1)
    {
      OUTLINED_FUNCTION_4_0(&qword_27CF94F40);
    }

    v27 = sub_220DBF410();
    __swift_project_value_buffer(v27, qword_27CF95F48);
    v28 = sub_220DBF3F0();
    v29 = sub_220DC0980();
    if (OUTLINED_FUNCTION_19_10(v29))
    {
      v30 = OUTLINED_FUNCTION_34_1();
      OUTLINED_FUNCTION_27_4(v30);
      OUTLINED_FUNCTION_12_16(&dword_220CD1000, v31, v32, "Failed to create Visibility summary (future) due to missing extrema values");
      OUTLINED_FUNCTION_17();
    }

    return 0;
  }

  else
  {
    v35 = v120[1];
    v34 = v120[2];
    v37 = v120[3];
    v36 = v120[4];
    v38 = v120[5];
    v39 = sub_220DBE520();
    switch(v12 >> 62)
    {
      case 1uLL:

        v117 = v37;
        v118 = v36;
        switch(v39)
        {
          case 1:
            v41 = v35;
            OUTLINED_FUNCTION_11_23();
            if (!v26)
            {
              OUTLINED_FUNCTION_10(&qword_280FA6600);
            }

            goto LABEL_91;
          case 2:
            v41 = v35;
            OUTLINED_FUNCTION_11_23();
            if (!v26)
            {
              OUTLINED_FUNCTION_10(&qword_280FA6600);
            }

            OUTLINED_FUNCTION_1_43();
            v48 = v70 | 1;
            v49 = v39 | 0x8000000000000000;
            v50 = v70 + 52;
            goto LABEL_101;
          case 3:
            v41 = v35;
            OUTLINED_FUNCTION_11_23();
            if (!v26)
            {
              OUTLINED_FUNCTION_10(&qword_280FA6600);
            }

            OUTLINED_FUNCTION_1_43();
            v48 = v73 + 3;
            v49 = v39 | 0x8000000000000000;
            v50 = v73 + 54;
            goto LABEL_101;
          case 4:
            v41 = v35;
            OUTLINED_FUNCTION_11_23();
            if (!v26)
            {
              OUTLINED_FUNCTION_10(&qword_280FA6600);
            }

            goto LABEL_100;
          case 5:
            v41 = v35;
            OUTLINED_FUNCTION_11_23();
            if (!v26)
            {
              OUTLINED_FUNCTION_10(&qword_280FA6600);
            }

            goto LABEL_91;
          case 6:
            v41 = v35;
            OUTLINED_FUNCTION_11_23();
            if (!v26)
            {
              OUTLINED_FUNCTION_10(&qword_280FA6600);
            }

LABEL_100:
            OUTLINED_FUNCTION_1_43();
            v48 = v99 + 2;
            v49 = v39 | 0x8000000000000000;
            v50 = v99 + 53;
            goto LABEL_101;
          default:
            v41 = v35;
            OUTLINED_FUNCTION_11_23();
            if (!v26)
            {
              OUTLINED_FUNCTION_10(&qword_280FA6600);
            }

LABEL_91:
            OUTLINED_FUNCTION_1_43();
            v49 = v39 | 0x8000000000000000;
            v50 = v89 + 51;
            goto LABEL_92;
        }

      case 2uLL:

        v117 = v37;
        v118 = v36;
        switch(v39)
        {
          case 1:
            v41 = v35;
            OUTLINED_FUNCTION_11_23();
            if (!v26)
            {
              OUTLINED_FUNCTION_10(&qword_280FA6600);
            }

            goto LABEL_69;
          case 2:
            v41 = v35;
            OUTLINED_FUNCTION_11_23();
            if (!v26)
            {
              OUTLINED_FUNCTION_10(&qword_280FA6600);
            }

            OUTLINED_FUNCTION_1_43();
            v48 = v47 | 1;
            v49 = v39 | 0x8000000000000000;
            v50 = v47 + 56;
            break;
          case 3:
            v41 = v35;
            OUTLINED_FUNCTION_11_23();
            if (!v26)
            {
              OUTLINED_FUNCTION_10(&qword_280FA6600);
            }

            OUTLINED_FUNCTION_1_43();
            v48 = v51 + 3;
            v49 = v39 | 0x8000000000000000;
            v50 = v51 + 58;
            break;
          case 4:
            v41 = v35;
            OUTLINED_FUNCTION_11_23();
            if (!v26)
            {
              OUTLINED_FUNCTION_10(&qword_280FA6600);
            }

            goto LABEL_78;
          case 5:
            v41 = v35;
            OUTLINED_FUNCTION_11_23();
            if (!v26)
            {
              OUTLINED_FUNCTION_10(&qword_280FA6600);
            }

            goto LABEL_69;
          case 6:
            v41 = v35;
            OUTLINED_FUNCTION_11_23();
            if (!v26)
            {
              OUTLINED_FUNCTION_10(&qword_280FA6600);
            }

LABEL_78:
            OUTLINED_FUNCTION_1_43();
            v48 = v75 + 2;
            v49 = v39 | 0x8000000000000000;
            v50 = v75 + 57;
            break;
          default:
            v41 = v35;
            OUTLINED_FUNCTION_11_23();
            if (!v26)
            {
              OUTLINED_FUNCTION_10(&qword_280FA6600);
            }

LABEL_69:
            OUTLINED_FUNCTION_1_43();
            v49 = v39 | 0x8000000000000000;
            v50 = v74 + 55;
LABEL_92:
            v48 = 0xD000000000000032;
            break;
        }

LABEL_101:
        OUTLINED_FUNCTION_10_18(v48, v49, v42, v43, v44, v45, v46, v50);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
        v100 = swift_allocObject();
        v101 = OUTLINED_FUNCTION_12_26(v100, xmmword_220DC1CC0);
        v103 = v102;
        v104 = MEMORY[0x277D837D0];
        v100[3].n128_u64[1] = MEMORY[0x277D837D0];
        v105 = sub_220CEFDB0();
        v100[2].n128_u64[0] = v101;
        v100[2].n128_u64[1] = v103;
        v100[6].n128_u64[0] = v104;
        v100[6].n128_u64[1] = v105;
        v100[4].n128_u64[0] = v105;
        v100[4].n128_u64[1] = v41;
        v100[5].n128_u64[0] = v34;
        v100[8].n128_u64[1] = v104;
        v100[9].n128_u64[0] = v105;
        v106 = v118;
        v100[7].n128_u64[0] = v117;
        v100[7].n128_u64[1] = v106;
        v33 = sub_220DC05F0();
        OUTLINED_FUNCTION_39_4();
        sub_220DBDE80(v107, v108, v109, v110, v111, v112);

        goto LABEL_102;
      case 3uLL:

        v118 = v36;
        v116 = v38;
        switch(v39)
        {
          case 1:
            OUTLINED_FUNCTION_5_34();
            OUTLINED_FUNCTION_11_23();
            if (!v26)
            {
              OUTLINED_FUNCTION_10(&qword_280FA6600);
            }

            goto LABEL_81;
          case 2:
            OUTLINED_FUNCTION_5_34();
            OUTLINED_FUNCTION_11_23();
            if (!v26)
            {
              OUTLINED_FUNCTION_10(&qword_280FA6600);
            }

            OUTLINED_FUNCTION_1_43();
            v58 = v57 + 35;
            v59 = v39 | 0x8000000000000000;
            v60 = v57 + 100;
            break;
          case 3:
            OUTLINED_FUNCTION_5_34();
            OUTLINED_FUNCTION_11_23();
            if (!v26)
            {
              OUTLINED_FUNCTION_10(&qword_280FA6600);
            }

            OUTLINED_FUNCTION_1_43();
            v58 = v71 + 37;
            v59 = v39 | 0x8000000000000000;
            v60 = v71 + 102;
            break;
          case 4:
            OUTLINED_FUNCTION_5_34();
            OUTLINED_FUNCTION_11_23();
            if (!v26)
            {
              OUTLINED_FUNCTION_10(&qword_280FA6600);
            }

            goto LABEL_84;
          case 5:
            OUTLINED_FUNCTION_5_34();
            OUTLINED_FUNCTION_11_23();
            if (!v26)
            {
              OUTLINED_FUNCTION_10(&qword_280FA6600);
            }

            goto LABEL_81;
          case 6:
            OUTLINED_FUNCTION_5_34();
            OUTLINED_FUNCTION_11_23();
            if (!v26)
            {
              OUTLINED_FUNCTION_10(&qword_280FA6600);
            }

LABEL_84:
            OUTLINED_FUNCTION_1_43();
            v58 = v77 + 36;
            v59 = v39 | 0x8000000000000000;
            v60 = v77 + 101;
            break;
          default:
            OUTLINED_FUNCTION_5_34();
            OUTLINED_FUNCTION_11_23();
            if (!v26)
            {
              OUTLINED_FUNCTION_10(&qword_280FA6600);
            }

LABEL_81:
            OUTLINED_FUNCTION_1_43();
            v58 = v76 + 34;
            v59 = v39 | 0x8000000000000000;
            v60 = v76 + 99;
            break;
        }

        v114[1] = OUTLINED_FUNCTION_10_18(v58, v59, v52, v53, v54, v55, v56, v60);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
        v78 = swift_allocObject();
        *(v78 + 16) = xmmword_220DC1CE0;
        LOBYTE(v120[0]) = a1;
        v79 = VisibilityCondition.shortDescription.getter();
        v81 = v80;
        v82 = MEMORY[0x277D837D0];
        *(v78 + 56) = MEMORY[0x277D837D0];
        v83 = sub_220CEFDB0();
        *(v78 + 32) = v79;
        *(v78 + 40) = v81;
        *(v78 + 96) = v82;
        *(v78 + 104) = v83;
        *(v78 + 64) = v83;
        *(v78 + 72) = v34;
        *(v78 + 80) = v12;
        LOBYTE(v119[0]) = v36;
        v84 = VisibilityCondition.shortDescription.getter();
        *(v78 + 136) = v82;
        *(v78 + 144) = v83;
        *(v78 + 112) = v84;
        *(v78 + 120) = v85;
        *(v78 + 176) = v82;
        *(v78 + 184) = v83;
        v86 = v118;
        v87 = v116;
        *(v78 + 152) = v118;
        *(v78 + 160) = v87;
        v33 = sub_220DC05F0();
        sub_220DBDE80(a1, v34, v12, v36, v86, v87);
        goto LABEL_97;
      default:
        OUTLINED_FUNCTION_33_3();
        OUTLINED_FUNCTION_39_4();
        sub_220DBDF04(v40);
        v117 = v37;
        v115 = v35;
        switch(v39)
        {
          case 1:
            OUTLINED_FUNCTION_18_20();
            OUTLINED_FUNCTION_19();
            if (!v26)
            {
              OUTLINED_FUNCTION_10(&qword_280FA6600);
            }

            goto LABEL_88;
          case 2:
            OUTLINED_FUNCTION_18_20();
            OUTLINED_FUNCTION_19();
            if (!v26)
            {
              OUTLINED_FUNCTION_10(&qword_280FA6600);
            }

            OUTLINED_FUNCTION_2_39();
            OUTLINED_FUNCTION_33();
            v69 = v68 + 48;
            break;
          case 3:
            OUTLINED_FUNCTION_18_20();
            OUTLINED_FUNCTION_19();
            if (!v26)
            {
              OUTLINED_FUNCTION_10(&qword_280FA6600);
            }

            OUTLINED_FUNCTION_2_39();
            OUTLINED_FUNCTION_33();
            v69 = v72 + 50;
            break;
          case 4:
            OUTLINED_FUNCTION_18_20();
            OUTLINED_FUNCTION_19();
            if (!v26)
            {
              OUTLINED_FUNCTION_10(&qword_280FA6600);
            }

            goto LABEL_95;
          case 5:
            OUTLINED_FUNCTION_18_20();
            OUTLINED_FUNCTION_19();
            if (!v26)
            {
              OUTLINED_FUNCTION_10(&qword_280FA6600);
            }

            goto LABEL_88;
          case 6:
            OUTLINED_FUNCTION_18_20();
            OUTLINED_FUNCTION_19();
            if (!v26)
            {
              OUTLINED_FUNCTION_10(&qword_280FA6600);
            }

LABEL_95:
            OUTLINED_FUNCTION_2_39();
            OUTLINED_FUNCTION_33();
            v69 = v90 + 49;
            break;
          default:
            OUTLINED_FUNCTION_18_20();
            OUTLINED_FUNCTION_19();
            if (!v26)
            {
              OUTLINED_FUNCTION_10(&qword_280FA6600);
            }

LABEL_88:
            OUTLINED_FUNCTION_2_39();
            OUTLINED_FUNCTION_33();
            v69 = v88 + 47;
            break;
        }

        OUTLINED_FUNCTION_10_18(v61, v62, v63, v64, v65, v66, v67, v69);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
        v91 = swift_allocObject();
        *(v91 + 16) = xmmword_220DC17C0;
        v92 = v39;
        LOBYTE(v120[0]) = v39;
        v93 = VisibilityCondition.shortDescription.getter();
        v95 = v94;
        v96 = MEMORY[0x277D837D0];
        *(v91 + 56) = MEMORY[0x277D837D0];
        v97 = sub_220CEFDB0();
        *(v91 + 32) = v93;
        *(v91 + 40) = v95;
        *(v91 + 96) = v96;
        *(v91 + 104) = v97;
        v98 = v115;
        *(v91 + 64) = v97;
        *(v91 + 72) = v98;
        *(v91 + 80) = v12;
        v33 = sub_220DC05F0();
        sub_220DBDE80(v92, v98, v12, v117, v36, v38);
LABEL_97:

LABEL_102:

        break;
    }
  }

  return v33;
}

void sub_220DBCB0C(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, unint64_t *a4@<X8>)
{
  v191 = a3;
  v183 = a4;
  v190 = sub_220DC0300();
  OUTLINED_FUNCTION_0();
  v195 = v6;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_1_21();
  v177 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95228, &unk_220DC1E60);
  OUTLINED_FUNCTION_18(v9);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_14(v149 - v11);
  v189 = sub_220DC02F0();
  OUTLINED_FUNCTION_0();
  v193 = v12;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_1_21();
  OUTLINED_FUNCTION_14(v14);
  v179 = sub_220DC0960();
  OUTLINED_FUNCTION_0();
  v192 = v15;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_1_21();
  OUTLINED_FUNCTION_14(v17);
  v175 = sub_220DC0950();
  OUTLINED_FUNCTION_0();
  v194 = v18;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_1_21();
  v173 = v20;
  v188 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95208, &unk_220DC1E40);
  OUTLINED_FUNCTION_0();
  v178 = v21;
  v23 = MEMORY[0x28223BE20](v22);
  v187 = (v149 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = MEMORY[0x28223BE20](v23);
  v186 = v149 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v184 = v149 - v28;
  MEMORY[0x28223BE20](v27);
  v185 = v149 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94F90, &unk_220DC4410);
  OUTLINED_FUNCTION_18(v30);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v31);
  v33 = v149 - v32;
  v34 = sub_220DBF310();
  OUTLINED_FUNCTION_0();
  v180 = v35;
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_1_21();
  v181 = v37;
  v182 = a1;
  v38 = *a2;
  v39 = *(a2 + 8);
  v41 = *(a2 + 16);
  v40 = *(a2 + 24);
  v42 = *(a2 + 32);
  v43 = *(a2 + 40);
  sub_220CEF48C(a1, v33);
  if (__swift_getEnumTagSinglePayload(v33, 1, v34) != 1)
  {
    (*(v180 + 32))(v181, v33, v34);
    v154 = v34;
    sub_220DBF2F0();
    sub_220CD8184(0, &qword_280FA6618, 0x277CCAE20);
    v52 = v43;
    sub_220DBE040();
    sub_220DBF300();
    v53 = v52;
    sub_220DBE040();

    static VisibilityCondition.condition(for:)(&v197);
    v155 = v197;
    static VisibilityCondition.condition(for:)(&v196);
    v150 = v196;
    sub_220DC03F0();
    sub_220DC03F0();
    v171 = *MEMORY[0x277D7B4B0];
    v54 = v192;
    v55 = *(v192 + 104);
    v169 = v192 + 104;
    v170 = v55;
    v56 = v172;
    v57 = v179;
    v55(v172);
    v168 = *MEMORY[0x277D7B3F0];
    v58 = v193;
    v59 = *(v193 + 104);
    v166 = v193 + 104;
    v167 = v59;
    v60 = v174;
    v61 = v189;
    v59(v174);
    v165 = sub_220DBE5E0();
    v62 = v176;
    v63 = OUTLINED_FUNCTION_31_8();
    __swift_storeEnumTagSinglePayload(v63, v64, v65, v66);
    v67 = sub_220DC0810();
    OUTLINED_FUNCTION_22_16(v67);

    sub_220CE1ABC(v62, &qword_27CF95228, &unk_220DC1E60);
    v68 = *(v58 + 8);
    v193 = v58 + 8;
    v164 = v68;
    v68(v60, v61);
    v69 = *(v54 + 8);
    v192 = v54 + 8;
    v163 = v69;
    v69(v56, v57);
    v162 = *MEMORY[0x277D7B408];
    v70 = v195;
    v71 = *(v195 + 104);
    v160 = v195 + 104;
    v161 = v71;
    v72 = v177;
    v73 = v190;
    v71(v177);
    v159 = sub_220DBF100();
    sub_220DBF0D0();
    v158 = sub_220D427C0();
    OUTLINED_FUNCTION_37();
    v152 = sub_220DBE0B0();
    v153 = v74;

    v75 = *(v70 + 8);
    v195 = v70 + 8;
    v157 = v75;
    v75(v72, v73);
    v76 = *(v194 + 8);
    v194 += 8;
    v156 = v76;
    v77 = OUTLINED_FUNCTION_33_3();
    v78(v77);
    v79 = sub_220DC0830();
    OUTLINED_FUNCTION_34_3();
    v80();
    v81 = v189;
    OUTLINED_FUNCTION_41_3();
    v82();
    v83 = OUTLINED_FUNCTION_31_8();
    __swift_storeEnumTagSinglePayload(v83, v84, v85, v165);
    OUTLINED_FUNCTION_22_16(v79);

    sub_220CE1ABC(v62, &qword_27CF95228, &unk_220DC1E60);
    v164(v60, v81);
    v86 = OUTLINED_FUNCTION_35_5();
    v87(v86);
    v88 = v190;
    OUTLINED_FUNCTION_11_6();
    v89();
    sub_220DBF0D0();
    OUTLINED_FUNCTION_37();
    v149[1] = sub_220DBE0B0();
    v151 = v90;

    v157(v72, v88);
    v91 = OUTLINED_FUNCTION_33_3();
    v156(v91);
    OUTLINED_FUNCTION_34_3();
    v92();
    v93 = v189;
    OUTLINED_FUNCTION_41_3();
    v94();
    v95 = OUTLINED_FUNCTION_31_8();
    __swift_storeEnumTagSinglePayload(v95, v96, v97, v165);
    v98 = sub_220DC0810();
    OUTLINED_FUNCTION_22_16(v98);

    sub_220CE1ABC(v62, &qword_27CF95228, &unk_220DC1E60);
    v164(v60, v93);
    v99 = OUTLINED_FUNCTION_35_5();
    v100(v99);
    v101 = v190;
    OUTLINED_FUNCTION_11_6();
    v102();
    sub_220DBF0D0();
    OUTLINED_FUNCTION_37();
    v104 = v187;
    v103 = v188;
    v105 = sub_220DBE0B0();
    v107 = v106;

    v157(v72, v101);
    v108 = OUTLINED_FUNCTION_33_3();
    v156(v108);
    sub_220DBE050();
    v110 = v109;
    v111 = v184;
    v112 = v184;
    sub_220DBE050();
    v113 = v191;
    v114 = v103;
    if (v110 == v115)
    {

      sub_220CE1ABC(v182, &qword_27CF94F90, &unk_220DC4410);
      v116 = OUTLINED_FUNCTION_38_4();
      v103(v116);
      v117 = OUTLINED_FUNCTION_14_2();
      v103(v117);
      (v103)(v111, v103);
      v118 = OUTLINED_FUNCTION_37();
      v103(v118);
      (*(v180 + 8))(v181, v154);
      OUTLINED_FUNCTION_37_4();
      v120 = v152;
      v121 = v153;
      v122 = 0;
      v114 = 0;
LABEL_9:
      v123 = 0;
LABEL_18:
      v144 = v183;
      *v183 = v119;
      v144[1] = v120;
      v144[2] = v121;
      v144[3] = v122;
      v144[4] = v114;
      v144[5] = v123;
      return;
    }

    v194 = v105;
    v195 = v107;
    v121 = v151;
    OUTLINED_FUNCTION_37_4();
    v124 = v150;
    if (v125 == v150)
    {
      v126 = sub_220CD8184(0, &qword_27CF95530, 0x277D82BB8);
      v127 = sub_220DBE030();
      v128 = sub_220DBE030();
      v129 = sub_220DC0AB0();

      if (v129)
      {
        sub_220DBE050();
        v131 = v130;
        sub_220DBE050();
        if (v131 != v132)
        {

          sub_220CE1ABC(v182, &qword_27CF94F90, &unk_220DC4410);
          v145 = OUTLINED_FUNCTION_38_4();
          v126(v145);
          v146 = OUTLINED_FUNCTION_14_2();
          v126(v146);
          (v126)(v184, v114);
          (v126)(v185, v114);
          v147 = OUTLINED_FUNCTION_43_2();
          v148(v147);
          OUTLINED_FUNCTION_37_4();
          OUTLINED_FUNCTION_36_4();
          goto LABEL_9;
        }
      }

      sub_220DBE050();
      v134 = v133;
      sub_220DBE050();
      v136 = v135;

      sub_220CE1ABC(v182, &qword_27CF94F90, &unk_220DC4410);
      v137 = OUTLINED_FUNCTION_45_3();
      v104(v137);
      v138 = OUTLINED_FUNCTION_14_2();
      v104(v138);
      (v104)(v184, v114);
      (v104)(v185, v114);
      v139 = OUTLINED_FUNCTION_43_2();
      v140(v139);
      if (v134 != v136)
      {
        OUTLINED_FUNCTION_37_4();
        OUTLINED_FUNCTION_36_4();
        v123 = 0;
LABEL_17:
        v120 = v194;
        v121 = v195;
        goto LABEL_18;
      }
    }

    else
    {

      sub_220CE1ABC(v182, &qword_27CF94F90, &unk_220DC4410);
      v141 = OUTLINED_FUNCTION_45_3();
      v112(v141);
      v142 = OUTLINED_FUNCTION_14_2();
      v112(v142);
      (v112)(v111, v103);
      v143 = OUTLINED_FUNCTION_37();
      v112(v143);
      (*(v180 + 8))(v181, v154);
    }

    v119 = v124 | 0xC000000000000000;
    v122 = v155;
    v114 = v152;
    v123 = v153;
    goto LABEL_17;
  }

  v44 = v191;

  sub_220CE1ABC(v33, &qword_27CF94F90, &unk_220DC4410);
  if (qword_27CF94F40 != -1)
  {
    OUTLINED_FUNCTION_4_0(&qword_27CF94F40);
  }

  v45 = sub_220DBF410();
  __swift_project_value_buffer(v45, qword_27CF95F48);
  v46 = sub_220DBF3F0();
  v47 = sub_220DC0980();
  if (OUTLINED_FUNCTION_19_10(v47))
  {
    v48 = OUTLINED_FUNCTION_34_1();
    OUTLINED_FUNCTION_27_4(v48);
    OUTLINED_FUNCTION_12_16(&dword_220CD1000, v49, v50, "Failed to determine the sentence kind for Visibility due to missing extrema values");
    OUTLINED_FUNCTION_17();
  }

  sub_220CE1ABC(v182, &qword_27CF94F90, &unk_220DC4410);
  v51 = v183;
  *v183 = 0x7FFFFFFF8;
  *(v51 + 1) = 0u;
  *(v51 + 3) = 0u;
  v51[5] = 0;
}

uint64_t sub_220DBD970(uint64_t a1, uint64_t a2, double a3)
{
  v53 = a2;
  sub_220DC0300();
  OUTLINED_FUNCTION_0();
  v58 = v5;
  v59 = v4;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_1_21();
  v57 = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95228, &unk_220DC1E60);
  OUTLINED_FUNCTION_18(v7);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v8);
  v52 = &v48 - v9;
  v50 = sub_220DC02F0();
  OUTLINED_FUNCTION_0();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_1();
  v15 = v14 - v13;
  v16 = sub_220DC0960();
  OUTLINED_FUNCTION_0();
  v18 = v17;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_1();
  v22 = v21 - v20;
  sub_220DC0950();
  OUTLINED_FUNCTION_0();
  v55 = v23;
  v56 = v24;
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_1();
  v27 = v26 - v25;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95208, &unk_220DC1E40);
  OUTLINED_FUNCTION_0();
  v54 = v28;
  v30 = MEMORY[0x28223BE20](v29);
  v48 = &v48 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v49 = &v48 - v32;
  v33 = *(a1 + 40);
  sub_220CD8184(0, &qword_280FA6618, 0x277CCAE20);
  v34 = v33;
  sub_220DBE040();
  sub_220DC03F0();
  (*(v18 + 104))(v22, *MEMORY[0x277D7B4B0], v16);
  (*(v11 + 104))(v15, *MEMORY[0x277D7B3E8], v50);
  v35 = sub_220DBE5E0();
  v36 = v52;
  __swift_storeEnumTagSinglePayload(v52, 1, 1, v35);
  sub_220DC0810();
  sub_220DC0280();

  sub_220CE1ABC(v36, &qword_27CF95228, &unk_220DC1E60);
  v37 = OUTLINED_FUNCTION_33_3();
  v38(v37);
  (*(v18 + 8))(v22, v16);
  v40 = v57;
  v39 = v58;
  v41 = v59;
  (*(v58 + 104))(v57, *MEMORY[0x277D7B408], v59);
  sub_220DBF100();
  sub_220DBF0D0();
  sub_220D427C0();
  v42 = v51;
  v43 = v55;
  v44 = v48;
  v45 = sub_220DBE0B0();

  (*(v39 + 8))(v40, v41);
  (*(v56 + 8))(v27, v43);
  v46 = *(v54 + 8);
  v46(v44, v42);
  v46(v49, v42);
  return v45;
}

unint64_t sub_220DBDE80(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (result >> 3 != 0xFFFFFFFF)
  {
    return sub_220DBDE94(result, a2, a3, a4, a5, a6);
  }

  return result;
}

uint64_t sub_220DBDE94(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = a1 >> 62;

  if ((v6 - 1) < 2 || v6)
  {
  }

  return result;
}

double sub_220DBDF04(unint64_t a1)
{
  if ((a1 >> 62) - 1 < 2 || a1 >> 62)
  {
  }

  return result;
}

void OUTLINED_FUNCTION_47_2()
{

  sub_220DBCB0C(v1, v2 - 176, v0, (v2 - 128));
}