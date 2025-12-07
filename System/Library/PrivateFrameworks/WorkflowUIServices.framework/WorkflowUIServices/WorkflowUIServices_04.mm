uint64_t sub_1C836AFE8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1C8311C5C;

  return TypedValue.PrimitiveValue.PlacemarkValue.typedValue()(a1);
}

uint64_t ParameterSummaryLocationParameter.init(parameterDefinition:identifier:placeholder:defaultValue:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29EAD0, &qword_1C8418AB0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v24 - v13;
  v15 = sub_1C840CB6C();
  OUTLINED_FUNCTION_5();
  v17 = v16;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_1();
  v21 = v20 - v19;
  (*(v17 + 16))(v20 - v19, a1, v15);
  sub_1C83379C0(a6, v14);
  v22 = sub_1C8337BEC(v21, a2, a3, a4, a5, v14);
  sub_1C832D574(a6, &qword_1EC29EAD0, &qword_1C8418AB0);
  (*(v17 + 8))(a1, v15);
  return v22;
}

uint64_t ParameterSummaryLocationParameter.init(parameterDefinition:identifier:placeholder:value:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = sub_1C840C9CC();
  OUTLINED_FUNCTION_5();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_1();
  v16 = v15 - v14;
  v17 = sub_1C840CB6C();
  OUTLINED_FUNCTION_5();
  v19 = v18;
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_1();
  v23 = v22 - v21;
  (*(v19 + 16))(v22 - v21, a1, v17);
  (*(v12 + 16))(v16, a6, v10);
  v24 = sub_1C833846C(v23, a2, a3, a4, a5, v16);
  (*(v12 + 8))(a6, v10);
  (*(v19 + 8))(a1, v17);
  return v24;
}

uint64_t ParameterSummaryLocationParameter.__deallocating_deinit()
{
  v0 = _s18WorkflowUIServices024ParameterSummaryLocationC0Cfd_0();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1C836B4C0(void *a1)
{
  v2 = [a1 name];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_1C840CDDC();

  return v3;
}

uint64_t type metadata accessor for ParameterSummaryLocationParameter(uint64_t a1)
{
  result = qword_1EC29E3E0;
  if (!qword_1EC29E3E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void static ParameterSummaryContentBuilder.parameterSummaryContent(typedValue:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v178 = a3;
  *&v177 = a2;
  v183 = a1;
  v184 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29D298, &unk_1C8415B80);
  OUTLINED_FUNCTION_59(v5);
  OUTLINED_FUNCTION_3_2();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_6_3(&v163 - v7);
  v181 = sub_1C840C85C();
  OUTLINED_FUNCTION_5();
  v182 = v8;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_1_10();
  OUTLINED_FUNCTION_6_3(v10);
  v176 = sub_1C840B1DC();
  OUTLINED_FUNCTION_5();
  v175 = v11;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_1_10();
  OUTLINED_FUNCTION_6_3(v13);
  v170 = sub_1C840CAAC();
  OUTLINED_FUNCTION_5();
  v169 = v14;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_1_10();
  OUTLINED_FUNCTION_6_3(v16);
  v173 = sub_1C840C8AC();
  OUTLINED_FUNCTION_5();
  v172 = v17;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_1_10();
  OUTLINED_FUNCTION_6_3(v19);
  v20 = sub_1C840C9DC();
  OUTLINED_FUNCTION_5();
  v22 = v21;
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_22();
  v26 = v24 - v25;
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v163 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29EAD0, &qword_1C8418AB0);
  OUTLINED_FUNCTION_59(v30);
  OUTLINED_FUNCTION_3_2();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_13_5();
  v32 = sub_1C840CA1C();
  OUTLINED_FUNCTION_5();
  v34 = v33;
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_22();
  v38 = (v36 - v37);
  MEMORY[0x1EEE9AC00](v39);
  v41 = &v163 - v40;
  MEMORY[0x1EEE9AC00](v42);
  v44 = &v163 - v43;
  sub_1C83379C0(v183, v4);
  if (__swift_getEnumTagSinglePayload(v4, 1, v32) == 1)
  {
    sub_1C836D218(v4, &qword_1EC29EAD0, &qword_1C8418AB0);
LABEL_3:
    v45 = v184;
    *(v184 + 8) = 0;
    *v45 = MEMORY[0x1E69E7CC0];
    return;
  }

  (*(v34 + 32))(v44, v4, v32);
  v46 = *(v34 + 16);
  v166 = v44;
  v183 = v34 + 16;
  v167 = v46;
  v46(v41, v44, v32);
  v164 = *(v34 + 88);
  v105 = v164(v41, v32) == *MEMORY[0x1E69DAE70];
  v165 = v32;
  if (v105)
  {
    (*(v34 + 96))(v41, v32);
    v47 = swift_projectBox();
    (*(v22 + 16))(v29, v47, v20);

    (*(v22 + 104))(v26, *MEMORY[0x1E69DADD8], v20);
    v48 = sub_1C840CC4C();
    v49 = *(v22 + 8);
    v49(v26, v20);
    v49(v29, v20);
    v50 = v34;
    v51 = v182;
    if (v48)
    {
      (*(v34 + 8))(v166, v165);
      goto LABEL_3;
    }
  }

  else
  {
    (*(v34 + 8))(v41, v32);
    v50 = v34;
    v51 = v182;
  }

  sub_1C840CE2C("1 item", 6);
  v52 = v166;
  if (qword_1EC29CF30 != -1)
  {
    swift_once();
  }

  v53 = qword_1EC29EA60;
  v54 = sub_1C840CD9C();
  v55 = sub_1C840CD9C();

  v56 = [v53 localizedStringForKey:v54 value:v55 table:0];

  v57 = sub_1C840CDDC();
  v59 = v58;

  v60 = v165;
  OUTLINED_FUNCTION_3_7();
  v61();
  v62 = OUTLINED_FUNCTION_26_1();
  v63 = (v164)(v62);
  if (v63 != *MEMORY[0x1E69DAE18])
  {
    v91 = v184;
    if (v63 != *MEMORY[0x1E69DAE28])
    {
      v108 = OUTLINED_FUNCTION_26_1();
      v109(v108);
      v99 = v179;
      goto LABEL_48;
    }

    v163 = v57;
    v92 = OUTLINED_FUNCTION_8_8();
    v93(v92);
    v57 = *v38;
    v94 = swift_projectBox();
    v95 = v172;
    v96 = v171;
    v97 = v173;
    (*(v172 + 16))(v171, v94, v173);
    v59 = v168;
    sub_1C840C89C();
    v98 = v169;
    v99 = v170;
    if ((*(v169 + 88))(v59, v170) != *MEMORY[0x1E69DB098])
    {
      (*(v95 + 8))(v96, v97);
      (*(v98 + 8))(v59, v99);

      OUTLINED_FUNCTION_10_9();
      v91 = v184;
      goto LABEL_48;
    }

    v100 = v98;
    v101 = v60;
    v52 = 0xD000000000000010;
    (*(v100 + 96))(v59, v99);
    v50 = *v59;
    v99 = *(*v59 + 16);
    v102 = *(*v59 + 24);
    v103 = *(*v59 + 32);
    v104 = *(*v59 + 40);

    v105 = v99 == 0xD000000000000010 && 0x80000001C841ED50 == v102;
    if (v105)
    {

      OUTLINED_FUNCTION_12_6();
    }

    else
    {
      v99 = sub_1C840D69C();

      OUTLINED_FUNCTION_12_6();
      if ((v99 & 1) == 0)
      {
        v106 = OUTLINED_FUNCTION_5_7();
        v107(v106, v173);

LABEL_47:
        v91 = v184;
        v60 = v101;
        OUTLINED_FUNCTION_10_9();
LABEL_48:
        static ParameterSummaryContentBuilder.parameterSummaryValue(with:)(v52, v177, v178, &v197);
        if (v198)
        {

          sub_1C830D408(&v197, &v185);
          static ParameterSummaryContent.value(_:fallbackName:)(&v185, 0, 0xE000000000000000, v91);
          __swift_destroy_boxed_opaque_existential_1(&v185);
          (*(v50 + 8))(v52, v60);
        }

        else
        {
          v143 = v60;
          sub_1C836D218(&v197, &qword_1EC29D678, &unk_1C8418B10);
          sub_1C840CA0C();
          v144 = sub_1C840CC0C();
          if (__swift_getEnumTagSinglePayload(v99, 1, v144) == 1)
          {
            sub_1C836D218(v99, &qword_1EC29D298, &unk_1C8415B80);
          }

          else
          {
            v57 = sub_1C840CBDC();
            v146 = v145;
            (*(*(v144 - 8) + 8))(v99, v144);

            v59 = v146;
          }

          v188 = v143;
          v189 = &protocol witness table for TypedValue;
          __swift_allocate_boxed_opaque_existential_1(&v185);
          OUTLINED_FUNCTION_3_7();
          v147();
          static ParameterSummaryContent.value(_:fallbackName:)(&v185, v57, v59, v91);

          (*(v50 + 8))(v52, v143);
          __swift_destroy_boxed_opaque_existential_1(&v185);
        }

        return;
      }
    }

    v139 = v103 == 0x6E4565646F4E4946 && v104 == 0xEC00000079746974;
    v57 = v173;
    if (v139)
    {
    }

    else
    {
      v140 = sub_1C840D69C();

      if ((v140 & 1) == 0)
      {
        v141 = OUTLINED_FUNCTION_5_7();
        v142(v141, v57);

        goto LABEL_47;
      }
    }

    v148 = sub_1C836C698();
    if (v149)
    {
      v150 = v148;
    }

    else
    {
      v150 = 0x696C637265706170;
    }

    if (v149)
    {
      v151 = v149;
    }

    else
    {
      v151 = 0xE900000000000070;
    }

    v152 = v101;
    v193 = v101;
    v194 = &protocol witness table for TypedValue;
    __swift_allocate_boxed_opaque_existential_1(&v192);
    OUTLINED_FUNCTION_3_7();
    v153();
    v154 = v174;
    sub_1C840B1CC();
    v155 = sub_1C840B1BC();
    v157 = v156;
    OUTLINED_FUNCTION_8_0();
    v158(v154, v176);
    v185 = v155;
    v186 = v157;
    OUTLINED_FUNCTION_11_6();
    v189 = v150;
    v190 = v151;
    v191 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29D290, &unk_1C8414F80);
    v159 = swift_allocObject();
    *(v159 + 16) = xmmword_1C8414660;
    sub_1C832DBC8(&v185, v159 + 32);
    *(v159 + 128) = 1;
    v160 = OUTLINED_FUNCTION_5_7();
    v161(v160, v57);
    (*(v50 + 8))(0xD000000000000010, v152);
    sub_1C832D840(&v185);

    v162 = v184;
    *(v184 + 8) = 0;
    *v162 = v159;
    return;
  }

  v163 = v57;
  v64 = v52;
  v65 = OUTLINED_FUNCTION_8_8();
  v66(v65);
  v67 = v60;
  v68 = *v38;
  v69 = swift_projectBox();
  v70 = v180;
  v71 = v181;
  (*(v51 + 16))(v180, v69, v181);
  v72 = *(sub_1C840C84C() + 16);

  v73 = v184;
  if (v72)
  {
    v178 = v68;
    v179 = v50;
    v74 = 0x696C637265706170;
    v75 = *(sub_1C840C84C() + 16);

    if (v75 == 1)
    {
      v76 = v70;
      v77 = sub_1C836C698();
      if (v78)
      {
        v74 = v77;
        v79 = v78;
      }

      else
      {
        v79 = 0xE900000000000070;
      }

      v193 = v67;
      v194 = &protocol witness table for TypedValue;
      __swift_allocate_boxed_opaque_existential_1(&v192);
      OUTLINED_FUNCTION_3_7();
      v80();
      v81 = v71;
      v82 = v174;
      sub_1C840B1CC();
      v83 = sub_1C840B1BC();
      v85 = v84;
      OUTLINED_FUNCTION_8_0();
      v86(v82, v176);
      v185 = v83;
      v186 = v85;
      OUTLINED_FUNCTION_11_6();
      v189 = v74;
      v190 = v79;
      v191 = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29D290, &unk_1C8414F80);
      v87 = swift_allocObject();
      *(v87 + 16) = xmmword_1C8414660;
      sub_1C832DBC8(&v185, v87 + 32);
      *(v87 + 128) = 1;
      OUTLINED_FUNCTION_8_0();
      v88(v76, v81);
      OUTLINED_FUNCTION_8_0();
      v90 = v64;
    }

    else
    {

      v110 = sub_1C840CE2C("%ld items", v163);
      v111 = v110;
      v113 = v112;
      v114 = HIBYTE(v112) & 0xF;
      if ((v112 & 0x2000000000000000) == 0)
      {
        v114 = v110 & 0xFFFFFFFFFFFFLL;
      }

      if (v114)
      {
        v185 = 0;
        v186 = 0xE000000000000000;
        sub_1C840D3DC();

        v185 = v111;
        v186 = v113;
        *&v197 = 10;
        *(&v197 + 1) = 0xE100000000000000;
        v195 = 32;
        v196 = 0xE100000000000000;
        sub_1C833644C();
        v185 = sub_1C840D32C();
        v186 = v115;
        MEMORY[0x1CCA75890](0xD000000000000010, 0x80000001C841ED30);
        v116 = sub_1C840CD9C();

        v117 = sub_1C840CD9C();

        v118 = [v53 localizedStringForKey:v116 value:v117 table:0];

        sub_1C840CDDC();
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29D680, &unk_1C8415B90);
      v119 = swift_allocObject();
      v177 = xmmword_1C8414660;
      *(v119 + 16) = xmmword_1C8414660;
      v120 = v180;
      v121 = *(sub_1C840C84C() + 16);

      v122 = MEMORY[0x1E69E65A8];
      *(v119 + 56) = MEMORY[0x1E69E6530];
      *(v119 + 64) = v122;
      *(v119 + 32) = v121;
      v123 = sub_1C840CDAC();
      v125 = v124;

      v126 = sub_1C836C698();
      if (v127)
      {
        v128 = v126;
      }

      else
      {
        v128 = 0x696C637265706170;
      }

      v129 = v64;
      if (v127)
      {
        v130 = v127;
      }

      else
      {
        v130 = 0xE900000000000070;
      }

      v193 = v67;
      v194 = &protocol witness table for TypedValue;
      __swift_allocate_boxed_opaque_existential_1(&v192);
      OUTLINED_FUNCTION_3_7();
      v131();
      v132 = v174;
      sub_1C840B1CC();
      v133 = sub_1C840B1BC();
      v135 = v134;
      OUTLINED_FUNCTION_8_0();
      v136(v132, v176);
      v185 = v133;
      v186 = v135;
      v187 = v123;
      v188 = v125;
      v189 = v128;
      v190 = v130;
      v191 = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29D290, &unk_1C8414F80);
      v87 = swift_allocObject();
      *(v87 + 16) = v177;
      sub_1C832DBC8(&v185, v87 + 32);
      *(v87 + 128) = 1;
      OUTLINED_FUNCTION_8_0();
      v137(v120, v181);
      OUTLINED_FUNCTION_8_0();
      v90 = v129;
    }

    v89(v90, v67);
    sub_1C832D840(&v185);

    v138 = v184;
    *(v184 + 8) = 0;
    *v138 = v87;
  }

  else
  {

    (*(v51 + 8))(v70, v71);
    (*(v50 + 8))(v64, v67);

    *(v73 + 8) = 0;
    *v73 = MEMORY[0x1E69E7CC0];
  }
}

uint64_t sub_1C836C698()
{
  v65 = sub_1C840CBFC();
  OUTLINED_FUNCTION_5();
  v63 = v1;
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_1_10();
  v68 = v3;
  v69 = sub_1C840CBBC();
  OUTLINED_FUNCTION_5();
  v66 = v4;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_22();
  v64 = v6 - v7;
  OUTLINED_FUNCTION_26_2();
  MEMORY[0x1EEE9AC00](v8);
  v67 = &v62 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29E470, &qword_1C8418B50);
  OUTLINED_FUNCTION_59(v10);
  OUTLINED_FUNCTION_3_2();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v62 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29E478, &qword_1C8418B58);
  OUTLINED_FUNCTION_5();
  v16 = v15;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_22();
  v20 = v18 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v62 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29D298, &unk_1C8415B80);
  OUTLINED_FUNCTION_59(v24);
  OUTLINED_FUNCTION_3_2();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_13_5();
  v26 = sub_1C840CC0C();
  OUTLINED_FUNCTION_5();
  v28 = v27;
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v62 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C840CA0C();
  if (__swift_getEnumTagSinglePayload(v0, 1, v26) == 1)
  {
    v32 = &qword_1EC29D298;
    v33 = &unk_1C8415B80;
    v34 = v0;
LABEL_5:
    sub_1C836D218(v34, v32, v33);
    return 0;
  }

  (*(v28 + 32))(v31, v0, v26);
  sub_1C840CBCC();
  if (__swift_getEnumTagSinglePayload(v13, 1, v14) == 1)
  {
    v35 = OUTLINED_FUNCTION_7_6();
    v36(v35);
    v32 = &qword_1EC29E470;
    v33 = &qword_1C8418B50;
    v34 = v13;
    goto LABEL_5;
  }

  (*(v16 + 32))(v23, v13, v14);
  (*(v16 + 16))(v20, v23, v14);
  v39 = (*(v16 + 88))(v20, v14);
  if (v39 == *MEMORY[0x1E69DB370])
  {
    v40 = *(v16 + 8);
    v41 = OUTLINED_FUNCTION_14_6();
    v40(v41);
    v42 = OUTLINED_FUNCTION_7_6();
    v43(v42);
    (v40)(v20, v14);
    return 0;
  }

  if (v39 == *MEMORY[0x1E69DB378])
  {
    (*(v16 + 96))(v20, v14);
    v44 = v66;
    v45 = v67;
    v46 = v69;
    (*(v66 + 32))();
    v47 = v64;
    (*(v44 + 16))(v64, v45, v46);
    v48 = OUTLINED_FUNCTION_26_1();
    if (v49(v48) == *MEMORY[0x1E69DB390])
    {
      v50 = OUTLINED_FUNCTION_26_1();
      v51(v50);
      v52 = v63;
      (*(v63 + 32))(v68, v47, v65);
      v37 = sub_1C840CBEC();
      (*(v52 + 8))(v68, v65);
      (*(v44 + 8))(v67, v69);
      v53 = OUTLINED_FUNCTION_14_6();
      v54(v53);
      v55 = OUTLINED_FUNCTION_7_6();
      v56(v55);
      return v37;
    }

    v57 = *(v44 + 8);
    v57(v45);
    v58 = OUTLINED_FUNCTION_14_6();
    v59(v58);
    v60 = OUTLINED_FUNCTION_7_6();
    v61(v60);
    (v57)(v47, v46);
    return 0;
  }

  result = sub_1C840D68C();
  __break(1u);
  return result;
}

uint64_t static ParameterSummaryContentBuilder.parameterSummaryValue(with:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v72 = a3;
  v74 = a4;
  sub_1C840C9DC();
  OUTLINED_FUNCTION_5();
  v68 = v7;
  v69 = v6;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_1_10();
  v67 = v8;
  v9 = sub_1C840CA1C();
  OUTLINED_FUNCTION_5();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_22();
  v73 = v13 - v14;
  OUTLINED_FUNCTION_26_2();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v61 - v16;
  v71 = sub_1C840D2FC();
  OUTLINED_FUNCTION_5();
  v19 = v18;
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_22();
  v66 = v21 - v22;
  OUTLINED_FUNCTION_26_2();
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v61 - v24;
  v26 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_22();
  v65 = (v28 - v29);
  OUTLINED_FUNCTION_26_2();
  v31 = MEMORY[0x1EEE9AC00](v30);
  v33 = &v61 - v32;
  v70 = v11;
  v34 = *(v11 + 16);
  v34(v17, a1, v9, v31);
  v35 = v17;
  v36 = v72;
  (*(v72 + 16))(v35, a2, v72);
  if (__swift_getEnumTagSinglePayload(v25, 1, a2) != 1)
  {
    v52 = *(v26 + 32);
    v52(v33, v25, a2);
    v53 = v74;
    v74[3] = a2;
    v53[4] = v36;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v53);
    v55 = v33;
    return (v52)(boxed_opaque_existential_1, v55, a2);
  }

  v38 = *(v19 + 8);
  v37 = v19 + 8;
  v63 = v38;
  v64 = v26;
  v38(v25, v71);
  v39 = v73;
  v40 = OUTLINED_FUNCTION_14_6();
  (v34)(v40);
  v41 = v70;
  v42 = a1;
  if ((*(v70 + 88))(v39, v9) == *MEMORY[0x1E69DAE70])
  {
    v61 = v37;
    v62 = v34;
    v43 = v9;
    (*(v41 + 96))(v73, v9);
    v44 = swift_projectBox();
    v45 = v67;
    v46 = v68;
    v47 = v69;
    (*(v68 + 16))(v67, v44, v69);
    if ((*(v46 + 88))(v45, v47) != *MEMORY[0x1E69DADF0])
    {
      (*(v46 + 8))(v45, v47);

      goto LABEL_10;
    }

    (*(v46 + 96))(v45, v47);
    v48 = v36;
    v49 = *v45;
    v50 = v45[1];

    v51 = v66;
    (*(v48 + 8))(v49, v50, a2, v48);
    if (__swift_getEnumTagSinglePayload(v51, 1, a2) == 1)
    {
      v63(v51, v71);
LABEL_10:
      v57 = v74;
      v9 = v43;
      v34 = v62;
      goto LABEL_11;
    }

    v59 = v65;
    v52 = *(v64 + 32);
    v52(v65, v51, a2);
    v60 = v74;
    v74[3] = a2;
    v60[4] = v48;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v60);
    v55 = v59;
    return (v52)(boxed_opaque_existential_1, v55, a2);
  }

  (*(v41 + 8))(v73, v9);
  v57 = v74;
LABEL_11:
  v57[3] = v9;
  v57[4] = &protocol witness table for TypedValue;
  v58 = __swift_allocate_boxed_opaque_existential_1(v57);
  return (v34)(v58, v42, v9);
}

_BYTE *sub_1C836D164(_BYTE *result, int a2, int a3)
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

uint64_t sub_1C836D218(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1C836D284(unint64_t a1)
{
  if (a1 >> 62)
  {
    return sub_1C840D51C();
  }

  else
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

id static IntelligenceSymbolUnderGlow.getEmitterCell()()
{
  sub_1C8312180(0, &qword_1EC29E480, 0x1E6979358);
  v0 = sub_1C840CDDC();
  v2 = sub_1C836D484(v0, v1);
  v3 = sub_1C840CD9C();
  v4 = sub_1C840CD9C();
  OUTLINED_FUNCTION_0_6();

  v5 = sub_1C840CFCC();
  v6 = sub_1C840CD9C();
  OUTLINED_FUNCTION_0_6();

  v7 = [objc_allocWithZone(MEMORY[0x1E6979360]) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC29EB80, &unk_1C8416660);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1C8415260;
  *(v8 + 32) = v2;
  v9 = v2;
  sub_1C836D964(v8, v7, &qword_1EC29E480, 0x1E6979358, &selRef_setEmitterBehaviors_);
  LODWORD(v10) = 1078774989;
  [v7 setBirthRate_];
  LODWORD(v11) = 5.0;
  [v7 setLifetime_];
  LODWORD(v12) = 3.0;
  [v7 setLifetimeRange_];
  [v7 setScaleSpeed_];
  [v7 setScaleRange_];

  return v7;
}

id sub_1C836D484(uint64_t a1, uint64_t a2)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_1C840CD9C();

  v4 = [v2 initWithType_];

  return v4;
}

id static IntelligenceSymbolUnderGlow.getEmitterLayer(_:)(void *a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x1E6979368]) init];
  [v2 setEmitterShape_];
  [v2 setEmitterMode_];
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC29EB80, &unk_1C8416660);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1C8415260;
  *(v3 + 32) = a1;
  v4 = a1;
  sub_1C836D964(v3, v2, &qword_1EC29E488, 0x1E6979360, &selRef_setEmitterCells_);
  [v2 setRenderMode_];
  [v2 setUpdateInterval_];
  return v2;
}

void static IntelligenceSymbolUnderGlow.generateSprite(colors:cell:scale:)(unint64_t a1, void *a2, double a3)
{
  v6 = sub_1C836D284(a1);
  v7 = v6;
  v8 = v6 * 64.0 * a3;
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  if (v8 <= -9.22337204e18)
  {
    goto LABEL_33;
  }

  if (v8 >= 9.22337204e18)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  if ((v8 - 0x2000000000000000) >> 62 != 3)
  {
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v10 = a3 * 64.0;
  if (COERCE_UNSIGNED_INT64(fabs(a3 * 64.0)) > 0x7FEFFFFFFFFFFFFFLL || COERCE_UNSIGNED_INT64(fabs(v6 * 64.0 * a3)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_36;
  }

  if (v10 <= -9.22337204e18)
  {
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
    return;
  }

  if (v10 >= 9.22337204e18)
  {
    goto LABEL_38;
  }

  v31 = DeviceRGB;
  v11 = __CGBitmapContextCreate(v8, v10, 4 * v8, DeviceRGB);
  if (v11)
  {
    v12 = v11;
    v29 = v6;
    v30 = a2;
    v13 = sub_1C836D284(a1);
    v14 = 0;
    v15 = a3 * 32.0;
    while (v13 != v14)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v16 = MEMORY[0x1CCA75DF0](v14, a1);
      }

      else
      {
        if (v14 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_32;
        }

        v16 = *(a1 + 8 * v14 + 32);
      }

      v17 = v16;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
LABEL_32:
        __break(1u);
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      CopyWithAlpha = CGColorCreateCopyWithAlpha(v16, 0.0);
      if (CopyWithAlpha)
      {
        v19 = CopyWithAlpha;
        __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC29EB80, &unk_1C8416660);
        v20 = swift_allocObject();
        *(v20 + 16) = xmmword_1C8418B60;
        *(v20 + 32) = v17;
        *(v20 + 40) = v19;
        type metadata accessor for CGColor(0);
        v21 = v17;
        v22 = v19;
        v23 = sub_1C840CFCC();

        v24 = CGGradientCreateWithColors(0, v23, 0);

        if (v24)
        {
          v33.x = v15 + v10 * v14;
          v33.y = v15;
          v34.x = v33.x;
          v34.y = v15;
          CGContextDrawRadialGradient(v12, v24, v33, 0.0, v34, v15, 0);
        }
      }

      ++v14;
    }

    Image = CGBitmapContextCreateImage(v12);
    if (!Image)
    {
      v26 = v12;
      v27 = v31;
      goto LABEL_27;
    }

    v26 = Image;
    [v30 setContents_];
    [v30 setContentsRect_];
    if ((v29 & 0x8000000000000000) != 0)
    {
      goto LABEL_39;
    }

    if (!HIDWORD(v29))
    {
      [v30 setContentsFramesPerRow_];
      [v30 setContentsFrameCount_];
      [v30 setContentsFrameMode_];

      v27 = v12;
LABEL_27:

      v28 = v26;
      goto LABEL_28;
    }

    goto LABEL_40;
  }

  v28 = v31;
LABEL_28:
}

void sub_1C836D964(uint64_t a1, void *a2, unint64_t *a3, void *a4, SEL *a5)
{
  sub_1C8312180(0, a3, a4);
  v7 = sub_1C840CFCC();

  [a2 *a5];
}

_BYTE *storeEnumTagSinglePayload for IntelligenceSymbolUnderGlow(_BYTE *result, int a2, int a3)
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

uint64_t TypedValue.EnumerationValue.init(typedValue:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1C840CA1C();
  OUTLINED_FUNCTION_5();
  v6 = v5;
  if ((*(v7 + 88))(a1, v4) == *MEMORY[0x1E69DAE20])
  {
    (*(v6 + 96))(a1, v4);
    v8 = sub_1C840C88C();
    v9 = swift_projectBox();
    (*(*(v8 - 8) + 16))(a2, v9, v8);

    v10 = a2;
    v11 = 0;
    v12 = v8;
  }

  else
  {
    (*(v6 + 8))(a1, v4);
    v12 = sub_1C840C88C();
    v10 = a2;
    v11 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v10, v11, 1, v12);
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> TypedValue.EnumerationValue.textValue()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29D298, &unk_1C8415B80);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v11 - v1;
  sub_1C840C86C();
  v3 = sub_1C840CC0C();
  if (__swift_getEnumTagSinglePayload(v2, 1, v3) == 1)
  {
    sub_1C832D574(v2, &qword_1EC29D298, &unk_1C8415B80);
    v4 = sub_1C840C87C();
    v6 = v5;
  }

  else
  {
    v4 = sub_1C840CBDC();
    v6 = v7;
    (*(*(v3 - 8) + 8))(v2, v3);
  }

  v8 = v4;
  v9 = v6;
  result._object = v9;
  result._countAndFlagsBits = v8;
  return result;
}

uint64_t TypedValue.EnumerationValue.typedValue()(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1C836DDD8, 0, 0);
}

uint64_t sub_1C836DDD8()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = sub_1C840C88C();
  v4 = swift_allocBox();
  (*(*(v3 - 8) + 16))(v5, v2, v3);
  *v1 = v4;
  v6 = *MEMORY[0x1E69DAE20];
  sub_1C840CA1C();
  OUTLINED_FUNCTION_6();
  (*(v7 + 104))(v1, v6);
  v8 = v0[1];

  return v8();
}

uint64_t sub_1C836DEE8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1C8311C5C;

  return TypedValue.EnumerationValue.typedValue()(a1);
}

uint64_t sub_1C836DF80(uint64_t a1)
{
  v2 = sub_1C840CC1C();
  v3 = MEMORY[0x1EEE9AC00](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v5, a1, v3);
  return sub_1C836E0CC(v5);
}

uint64_t sub_1C836E04C@<X0>(uint64_t a1@<X8>)
{
  v3 = qword_1EC2A9CE0;
  swift_beginAccess();
  sub_1C840CC1C();
  OUTLINED_FUNCTION_6();
  return (*(v4 + 16))(a1, v1 + v3);
}

uint64_t sub_1C836E0CC(uint64_t a1)
{
  v3 = qword_1EC2A9CE0;
  swift_beginAccess();
  sub_1C840CC1C();
  OUTLINED_FUNCTION_6();
  (*(v4 + 40))(v1 + v3, a1);
  return swift_endAccess();
}

uint64_t ParameterSummaryEnumerationParameter.init(enumerationDefinition:parameterDefinition:identifier:defaultValue:placeholder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v30 = a6;
  v31 = a7;
  v28 = a3;
  v29 = a4;
  v27 = a1;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29EAD0, &qword_1C8418AB0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v26 - v11;
  v13 = sub_1C840CB6C();
  OUTLINED_FUNCTION_5();
  v15 = v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = qword_1EC2A9CE0;
  v20 = sub_1C840CC1C();
  v21 = *(v20 - 8);
  v22 = v7 + v19;
  v23 = v27;
  (*(v21 + 16))(v22, v27, v20);
  (*(v15 + 16))(v18, a2, v13);
  sub_1C83379C0(a5, v12);
  v24 = sub_1C8337D0C(v18, v28, v29, v30, v31, v12);
  sub_1C832D574(a5, &qword_1EC29EAD0, &qword_1C8418AB0);
  (*(v15 + 8))(a2, v13);
  (*(v21 + 8))(v23, v20);
  return v24;
}

uint64_t sub_1C836E418()
{
  v1 = qword_1EC2A9CE0;
  sub_1C840CC1C();
  OUTLINED_FUNCTION_6();
  v3 = *(v2 + 8);

  return v3(v0 + v1);
}

uint64_t ParameterSummaryEnumerationParameter.deinit()
{
  v0 = _s18WorkflowUIServices024ParameterSummaryLocationC0Cfd_0();
  v1 = qword_1EC2A9CE0;
  sub_1C840CC1C();
  OUTLINED_FUNCTION_6();
  (*(v2 + 8))(v0 + v1);
  return v0;
}

uint64_t ParameterSummaryEnumerationParameter.__deallocating_deinit()
{
  v0 = _s18WorkflowUIServices024ParameterSummaryLocationC0Cfd_0();
  v1 = qword_1EC2A9CE0;
  sub_1C840CC1C();
  OUTLINED_FUNCTION_6();
  (*(v2 + 8))(v0 + v1);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v3, v4);
}

uint64_t type metadata accessor for ParameterSummaryEnumerationParameter(uint64_t a1)
{
  result = qword_1EC29E490;
  if (!qword_1EC29E490)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C836E5C0(uint64_t a1)
{
  result = sub_1C840CC1C();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t (*EnvironmentValues.iconViewBorderStyle.modify(void *a1))(uint64_t a1)
{
  *a1 = v1;
  a1[1] = sub_1C831CFC0();
  sub_1C840BB3C();
  return sub_1C836E7EC;
}

uint64_t (*EnvironmentValues.clipsCorners.modify(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  *a1 = v1;
  *(a1 + 8) = sub_1C831F148();
  sub_1C840BB3C();
  *(a1 + 16) = *(a1 + 17);
  return sub_1C836E8C8;
}

uint64_t (*EnvironmentValues.maskShapeContext.modify(void *a1))(uint64_t a1, uint64_t a2)
{
  *a1 = v1;
  a1[1] = sub_1C831E680();
  sub_1C840BB3C();
  return sub_1C836E934;
}

uint64_t EnvironmentValues.MaskShapeContext.hashValue.getter()
{
  v1 = *v0;
  sub_1C840D77C();
  MEMORY[0x1CCA76180](v1);
  return sub_1C840D7CC();
}

uint64_t sub_1C836E9EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1C836EFA8();

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

uint64_t EnvironmentValues.iconBlendMode.setter(uint64_t a1)
{
  v2 = sub_1C840C62C();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  (*(v3 + 16))(&v7 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v2, v4);
  sub_1C831F59C();
  sub_1C840BB4C();
  return (*(v3 + 8))(a1, v2);
}

void (*EnvironmentValues.iconBlendMode.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = v3;
  *v3 = v1;
  v4 = sub_1C840C62C();
  v3[1] = v4;
  v5 = *(v4 - 8);
  v3[2] = v5;
  v6 = *(v5 + 64);
  v3[3] = __swift_coroFrameAllocStub(v6);
  v3[4] = __swift_coroFrameAllocStub(v6);
  v3[5] = __swift_coroFrameAllocStub(v6);
  v3[6] = sub_1C831F59C();
  sub_1C840BB3C();
  return sub_1C836EC4C;
}

void sub_1C836EC4C(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*(*a1 + 16) + 16);
  v4(*(*a1 + 32), v3[5], v3[1]);
  v5 = v3[5];
  v7 = v3[3];
  v6 = v3[4];
  v8 = v3[1];
  v9 = v3[2];
  if (a2)
  {
    v4(v3[3], v3[4], v3[1]);
    sub_1C840BB4C();
    v10 = *(v9 + 8);
    v10(v6, v8);
    v10(v5, v8);
  }

  else
  {
    sub_1C840BB4C();
    (*(v9 + 8))(v5, v8);
  }

  free(v5);
  free(v6);
  free(v7);

  free(v3);
}

uint64_t sub_1C836ED78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1C836F200(&qword_1EC29E4D8, MEMORY[0x1E6981E38], MEMORY[0x1E6981E48]);

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

uint64_t View.iconBlendMode(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for IconBlendModeModifier(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1C840C62C();
  (*(*(v9 - 8) + 16))(v8, a1, v9);
  MEMORY[0x1CCA74BF0](v8, a2, v6, a3);
  return sub_1C836EF48(v8);
}

uint64_t type metadata accessor for IconBlendModeModifier(uint64_t a1)
{
  result = qword_1EC29E4C8;
  if (!qword_1EC29E4C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C836EF48(uint64_t a1)
{
  v2 = type metadata accessor for IconBlendModeModifier(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1C836EFA8()
{
  result = qword_1EC29E4B8;
  if (!qword_1EC29E4B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC29E4B8);
  }

  return result;
}

uint64_t sub_1C836F024(uint64_t a1)
{
  result = sub_1C840C62C();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1C836F0EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  KeyPath = swift_getKeyPath();
  v7 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29E4E0, &qword_1C8418E90) + 36));
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29E4E8, &qword_1C8418E98) + 28);
  v9 = sub_1C840C62C();
  (*(*(v9 - 8) + 16))(v7 + v8, v3, v9);
  *v7 = KeyPath;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29E4F0, &unk_1C8418EA0);
  v11 = *(*(v10 - 8) + 16);

  return v11(a2, a1, v10);
}

uint64_t sub_1C836F200(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1C836F248()
{
  result = qword_1EC29E4F8;
  if (!qword_1EC29E4F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC29E4E0, &qword_1C8418E90);
    sub_1C830D3C0(&qword_1EC29E500, &qword_1EC29E4F0, &unk_1C8418EA0, MEMORY[0x1E697FDF8]);
    sub_1C830D3C0(&qword_1EC29E508, &qword_1EC29E4E8, &qword_1C8418E98, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC29E4F8);
  }

  return result;
}

uint64_t type metadata accessor for AppShortcutPlatterMenu(uint64_t a1)
{
  result = qword_1EC29CCC0;
  if (!qword_1EC29CCC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1C836F3A0(uint64_t a1)
{
  sub_1C836F46C(319, &qword_1EC29CAD0, MEMORY[0x1E697E178]);
  if (v1 <= 0x3F)
  {
    sub_1C836F46C(319, &qword_1EC29CAC0, sub_1C836F4C0);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1C836F46C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1C840B60C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1C836F4C0()
{
  result = qword_1EC29C888;
  if (!qword_1EC29C888)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC29C888);
  }

  return result;
}

uint64_t sub_1C836F520@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v34 = a1;
  v3 = type metadata accessor for AppShortcutPlatterMenu(0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v30[0] = v5;
  v6 = v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29E510, &unk_1C8418F18);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v33 = v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v32 = v30 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v31 = v30 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v16 = v30 - v15;
  sub_1C837023C(v2, v6);
  v17 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v18 = swift_allocObject();
  sub_1C83702AC(v6, v18 + v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29E518, &qword_1C8418F28);
  sub_1C830D3C0(&qword_1EC29E520, &qword_1EC29E518, &qword_1C8418F28, MEMORY[0x1E697D658]);
  OUTLINED_FUNCTION_1_12(sub_1C8370310, v19, sub_1C836FC78);
  sub_1C837023C(v30[1], v6);
  v20 = swift_allocObject();
  sub_1C83702AC(v6, v20 + v17);
  v21 = v31;
  OUTLINED_FUNCTION_1_12(sub_1C8370470, v22, sub_1C83700BC);
  v23 = *(v8 + 16);
  v24 = v32;
  v23(v32, v16, v7);
  v25 = v33;
  v23(v33, v21, v7);
  v26 = v34;
  v23(v34, v24, v7);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29E528, &unk_1C8418F30);
  v23(&v26[*(v27 + 48)], v25, v7);
  v28 = *(v8 + 8);
  v28(v21, v7);
  v28(v16, v7);
  v28(v25, v7);
  return (v28)(v24, v7);
}

uint64_t sub_1C836F8D8()
{
  v1 = sub_1C840B71C();
  v25 = *(v1 - 8);
  v26 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v24 = (&v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29D4C8, &qword_1C84157E8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v22 - v4;
  v27 = sub_1C840B13C();
  v23 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v22 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1C840AFEC();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for AppShortcutPlatterMenu(0);
  v12 = (v0 + *(v11 + 24));
  v13 = v12[1];
  v28 = *v12;
  v29 = v13;

  sub_1C840AFCC();
  sub_1C833644C();
  v14 = sub_1C840D33C();
  v16 = v15;
  (*(v8 + 8))(v10, v7);

  if (v16)
  {
    v28 = 0;
    v29 = 0xE000000000000000;
    sub_1C840D3DC();
    MEMORY[0x1CCA75890](0xD000000000000032, 0x80000001C841F6A0);
    MEMORY[0x1CCA75890](*(v0 + *(v11 + 28)), *(v0 + *(v11 + 28) + 8));
    MEMORY[0x1CCA75890](0x7574616E67697326, 0xEB000000003D6572);
    MEMORY[0x1CCA75890](v14, v16);

    sub_1C840B12C();

    v18 = v27;
    if (__swift_getEnumTagSinglePayload(v5, 1, v27) == 1)
    {
      return sub_1C83704EC(v5);
    }

    else
    {
      v20 = v22;
      v19 = v23;
      (*(v23 + 32))(v22, v5, v18);
      v21 = v24;
      sub_1C8344A8C(v24);
      sub_1C840B70C();
      (*(v25 + 8))(v21, v26);
      return (*(v19 + 8))(v20, v18);
    }
  }

  return result;
}

uint64_t sub_1C836FD1C()
{
  v1 = sub_1C840B71C();
  v25 = *(v1 - 8);
  v26 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v24 = (&v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29D4C8, &qword_1C84157E8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v22 - v4;
  v27 = sub_1C840B13C();
  v23 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v22 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1C840AFEC();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for AppShortcutPlatterMenu(0);
  v12 = (v0 + *(v11 + 24));
  v13 = v12[1];
  v28 = *v12;
  v29 = v13;

  sub_1C840AFCC();
  sub_1C833644C();
  v14 = sub_1C840D33C();
  v16 = v15;
  (*(v8 + 8))(v10, v7);

  if (v16)
  {
    v28 = 0;
    v29 = 0xE000000000000000;
    sub_1C840D3DC();
    MEMORY[0x1CCA75890](0xD000000000000032, 0x80000001C841F660);
    MEMORY[0x1CCA75890](*(v0 + *(v11 + 28)), *(v0 + *(v11 + 28) + 8));
    MEMORY[0x1CCA75890](0x7574616E67697326, 0xEB000000003D6572);
    MEMORY[0x1CCA75890](v14, v16);

    sub_1C840B12C();

    v18 = v27;
    if (__swift_getEnumTagSinglePayload(v5, 1, v27) == 1)
    {
      return sub_1C83704EC(v5);
    }

    else
    {
      v20 = v22;
      v19 = v23;
      (*(v23 + 32))(v22, v5, v18);
      v21 = v24;
      sub_1C8344A8C(v24);
      sub_1C840B70C();
      (*(v25 + 8))(v21, v26);
      return (*(v19 + 8))(v20, v18);
    }
  }

  return result;
}

uint64_t sub_1C8370138()
{
  OUTLINED_FUNCTION_0_8();
  if (!v1)
  {
    swift_once();
  }

  sub_1C833644C();

  result = sub_1C840C08C();
  *v0 = result;
  *(v0 + 8) = v3;
  *(v0 + 16) = v4 & 1;
  *(v0 + 24) = v5;
  return result;
}

uint64_t sub_1C83701E0()
{
  OUTLINED_FUNCTION_0_8();
  if (!v1)
  {
    swift_once();
  }

  result = sub_1C840C42C();
  *v0 = result;
  return result;
}

uint64_t sub_1C837023C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppShortcutPlatterMenu(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

double sub_1C83702A0(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }

  return result;
}

uint64_t sub_1C83702AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppShortcutPlatterMenu(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroyTm_0()
{
  v1 = type metadata accessor for AppShortcutPlatterMenu(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29E8F0, &unk_1C84164E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_1C840B71C();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  else
  {
  }

  sub_1C83702A0(*(v0 + v3 + *(v1 + 20)), *(v0 + v3 + *(v1 + 20) + 8));

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1C83704EC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29D4C8, &qword_1C84157E8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void ParameterUnit.init(typedValue:)(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = sub_1C840C9DC();
  OUTLINED_FUNCTION_5();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_1();
  v12 = v11 - v10;
  v13 = sub_1C840CA1C();
  OUTLINED_FUNCTION_5();
  v15 = v14;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_1();
  v19 = (v18 - v17);
  (*(v15 + 16))(v18 - v17, a1, v13);
  if ((*(v15 + 88))(v19, v13) == *MEMORY[0x1E69DAE70])
  {
    (*(v15 + 96))(v19, v13);
    v20 = swift_projectBox();
    (*(v8 + 16))(v12, v20, v6);
    if ((*(v8 + 88))(v12, v6) == *MEMORY[0x1E69DADF0])
    {
      (*(v8 + 96))(v12, v6);

      ParameterUnit.init(textValue:)(a2, &v22);
      (*(v15 + 8))(a1, v13);
      if (v22)
      {
        *a3 = v22;
        return;
      }
    }

    else
    {
      (*(v15 + 8))(a1, v13);
      (*(v8 + 8))(v12, v6);
    }
  }

  else
  {
    v21 = *(v15 + 8);
    v21(a1, v13);
    v21(v19, v13);
  }

  *a3 = 0;
}

void ParameterUnit.init(textValue:)(uint64_t a3@<X2>, void *a4@<X8>)
{
  v6 = objc_opt_self();
  v7 = sub_1C840CD9C();
  v8 = sub_1C83709A8(a3);
  v9 = [v6 unitFromString:v7 unitType:v8 caseSensitive:0];

  if (v9)
  {
    v10 = swift_dynamicCastUnknownClass();
    if (v10)
    {
      v11 = v10;

      ParameterUnit.init(unit:)(v11, a3, &v16);
      goto LABEL_6;
    }
  }

  v15 = static ParameterUnit.allCases()(a3);
  MEMORY[0x1EEE9AC00](v15);
  type metadata accessor for ParameterUnit(255, a3, v12, v13);
  sub_1C840D01C();
  swift_getWitnessTable();
  sub_1C840CF4C();

LABEL_6:
  v14 = v16;
  if (!v16)
  {
    v14 = 0;
  }

  *a4 = v14;
}

id sub_1C83709A8(uint64_t a1)
{
  v1 = objc_opt_self();
  v2 = [v1 unitTypeForUnitClass_];

  return v2;
}

void ParameterUnit.init(unit:)(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = sub_1C83709A8(a2);
  if (v5)
  {
  }

  else
  {

    a1 = 0;
  }

  *a3 = a1;
}

uint64_t static ParameterUnit.allCases()(uint64_t a1)
{
  v2 = sub_1C83709A8(a1);
  if (v2)
  {
    v5 = v2;
    v6 = [objc_opt_self() availableUnitsForUnitType_];
    sub_1C8312180(0, &qword_1EC29E540, 0x1E696AFD0);
    sub_1C840CFDC();

    MEMORY[0x1EEE9AC00](v7);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29E548, &qword_1C8418F50);
    type metadata accessor for ParameterUnit(0, a1, v8, v9);
    sub_1C83715B4();
    v10 = sub_1C840CF3C();
  }

  else
  {
    type metadata accessor for ParameterUnit(0, a1, v3, v4);
    return sub_1C840CFFC();
  }

  return v10;
}

uint64_t sub_1C8370BA8(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = ParameterUnit.textValue()();
  if (v5)
  {

    return 0;
  }

  else if (v6._countAndFlagsBits == a2 && v6._object == a3)
  {

    return 1;
  }

  else
  {
    v9 = sub_1C840D69C();

    return v9 & 1;
  }
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ParameterUnit.textValue()()
{
  v1 = *v0;
  v2 = [objc_allocWithZone(MEMORY[0x1E696AD30]) init];
  [v2 setUnitStyle_];
  v3 = [v2 stringFromUnit_];
  v4 = sub_1C840CDDC();
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result._object = v8;
  result._countAndFlagsBits = v7;
  return result;
}

uint64_t sub_1C8370D4C()
{
  v1 = *(v0 + 16);
  v2 = sub_1C840C9DC();
  v3 = swift_allocBox();
  (*(*(v2 - 8) + 104))(v4, *MEMORY[0x1E69DADD8], v2);
  *v1 = v3;
  v5 = *MEMORY[0x1E69DAE70];
  v6 = sub_1C840CA1C();
  (*(*(v6 - 8) + 104))(v1, v5, v6);
  v7 = *(v0 + 8);

  return v7();
}

void static ParameterUnit.defaultValue()(uint64_t a1@<X0>, void *a2@<X8>)
{
  v6 = sub_1C83709A8(a1);
  if (!v6)
  {
    goto LABEL_7;
  }

  v4 = [objc_opt_self() defaultUnitForUnitType_];
  v5 = swift_dynamicCastUnknownClass();
  if (!v5)
  {

LABEL_7:
    *a2 = 0;
    return;
  }

  ParameterUnit.init(unit:)(v5, a1, a2);
}

uint64_t sub_1C8370F08(uint64_t a1)
{
  v1 = sub_1C83709A8(a1);
  if (!v1)
  {
    return 1953066581;
  }

  v2 = v1;
  v3 = [objc_opt_self() localizedStringForUnitType_];
  v4 = sub_1C840CDDC();

  return v4;
}

void sub_1C8370F8C(void **a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *a1;
  v6 = swift_dynamicCastUnknownClass();
  if (v6)
  {
    v7 = v6;
    v8 = v5;
    ParameterUnit.init(unit:)(v7, a2, a3);
  }

  else
  {
    *a3 = 0;
  }
}

void ParameterUnit.hash(into:)(uint64_t a1)
{
  v2 = *v1;
  sub_1C840D27C();
}

uint64_t ParameterUnit.hashValue.getter()
{
  v2[9] = *v0;
  sub_1C840D77C();
  ParameterUnit.hash(into:)(v2);
  return sub_1C840D7CC();
}

uint64_t sub_1C8371120(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1C8311C5C;

  return ParameterUnit.typedValue()(a1);
}

uint64_t sub_1C83711C0(uint64_t a1)
{
  sub_1C840D77C();
  ParameterUnit.hash(into:)(v2);
  return sub_1C840D7CC();
}

uint64_t ParameterSummaryMeasurementUnitParameter.__allocating_init(parameterDefinition:identifier:placeholder:defaultValue:)()
{
  OUTLINED_FUNCTION_0_9();
  swift_allocObject();
  OUTLINED_FUNCTION_2_0();
  return ParameterSummaryMeasurementUnitParameter.init(parameterDefinition:identifier:placeholder:defaultValue:)(v1, v2, v3, v4, v5, v0);
}

uint64_t ParameterSummaryMeasurementUnitParameter.init(parameterDefinition:identifier:placeholder:defaultValue:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29EAD0, &qword_1C8418AB0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v24 - v13;
  v15 = sub_1C840CB6C();
  OUTLINED_FUNCTION_5();
  v17 = v16;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_1();
  v21 = v20 - v19;
  (*(v17 + 16))(v20 - v19, a1, v15);
  sub_1C83379C0(a6, v14);
  v22 = ParameterSummaryCustomEnumerableParameter.init(parameterDefinition:identifier:placeholder:defaultValue:)(v21, a2, a3, a4, a5, v14);
  sub_1C8371618(a6);
  (*(v17 + 8))(a1, v15);
  return v22;
}

uint64_t ParameterSummaryMeasurementUnitParameter.__allocating_init(parameterDefinition:identifier:placeholder:value:)()
{
  OUTLINED_FUNCTION_0_9();
  swift_allocObject();
  OUTLINED_FUNCTION_2_0();
  return ParameterSummaryMeasurementUnitParameter.init(parameterDefinition:identifier:placeholder:value:)();
}

uint64_t ParameterSummaryMeasurementUnitParameter.init(parameterDefinition:identifier:placeholder:value:)()
{
  OUTLINED_FUNCTION_0_9();
  v1 = sub_1C840CB6C();
  OUTLINED_FUNCTION_5();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_1();
  (*(v3 + 16))(v6 - v5, v0, v1);
  OUTLINED_FUNCTION_2_0();
  v13 = ParameterSummaryCustomEnumerableParameter.init(parameterDefinition:identifier:placeholder:value:)(v7, v8, v9, v10, v11, v12);
  (*(v3 + 8))(v0, v1);
  return v13;
}

uint64_t ParameterSummaryMeasurementUnitParameter.__deallocating_deinit()
{
  v0 = ParameterSummaryCustomEnumerableParameter.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

unint64_t sub_1C83715B4()
{
  result = qword_1EC29E550[0];
  if (!qword_1EC29E550[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC29E548, &qword_1C8418F50);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC29E550);
  }

  return result;
}

uint64_t sub_1C8371618(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29EAD0, &qword_1C8418AB0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C8371680(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C83716D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1C8371720(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 8))
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

uint64_t sub_1C8371760(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t static ParameterSummaryArrayGroup.makeArrayGroup(typeInstance:parameterDefinition:toolInvocation:toolSessionPool:defaultValue:placeholder:mode:)()
{
  OUTLINED_FUNCTION_130();
  *(v0 + 64) = v1;
  *(v0 + 72) = v2;
  *(v0 + 48) = v3;
  *(v0 + 56) = v4;
  *(v0 + 32) = v5;
  *(v0 + 40) = v6;
  *(v0 + 16) = v7;
  *(v0 + 24) = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29EAD0, &qword_1C8418AB0);
  OUTLINED_FUNCTION_59(v9);
  *(v0 + 80) = OUTLINED_FUNCTION_89();
  v10 = sub_1C840C70C();
  *(v0 + 88) = v10;
  OUTLINED_FUNCTION_13(v10);
  *(v0 + 96) = v11;
  *(v0 + 104) = OUTLINED_FUNCTION_89();
  v12 = sub_1C840CB6C();
  *(v0 + 112) = v12;
  OUTLINED_FUNCTION_13(v12);
  *(v0 + 120) = v13;
  *(v0 + 128) = OUTLINED_FUNCTION_89();
  v14 = sub_1C840CA5C();
  *(v0 + 136) = v14;
  OUTLINED_FUNCTION_13(v14);
  *(v0 + 144) = v15;
  *(v0 + 152) = OUTLINED_FUNCTION_89();
  *(v0 + 209) = *v20;
  sub_1C840D05C();
  *(v0 + 160) = sub_1C840D04C();
  v17 = sub_1C840D03C();
  *(v0 + 168) = v17;
  *(v0 + 176) = v16;

  return MEMORY[0x1EEE6DFA0](sub_1C83719AC, v17, v16);
}

uint64_t sub_1C83719AC()
{
  v21 = *(v0 + 209);
  v1 = *(v0 + 128);
  v2 = *(v0 + 112);
  v3 = *(v0 + 120);
  v5 = *(v0 + 96);
  v4 = *(v0 + 104);
  v6 = *(v0 + 88);
  v20 = *(v0 + 80);
  v7 = *(v0 + 56);
  v8 = *(v0 + 32);
  v9 = *(v0 + 24);
  (*(*(v0 + 144) + 16))(*(v0 + 152), *(v0 + 16), *(v0 + 136));
  (*(v3 + 16))(v1, v9, v2);
  (*(v5 + 16))(v4, v8, v6);
  sub_1C83379C0(v7, v20);
  *(v0 + 208) = v21;
  type metadata accessor for ParameterSummaryArrayGroup(0);
  swift_allocObject();

  swift_unknownObjectRetain();
  v10 = swift_task_alloc();
  *(v0 + 184) = v10;
  *v10 = v0;
  v10[1] = sub_1C8371B40;
  v11 = *(v0 + 152);
  v12 = *(v0 + 128);
  v13 = *(v0 + 104);
  v15 = *(v0 + 72);
  v14 = *(v0 + 80);
  v16 = *(v0 + 64);
  v17 = *(v0 + 40);
  v18 = *(v0 + 48);

  return sub_1C8372184(v11, v12, v13, v17, v18, v14, v16, v15);
}

uint64_t sub_1C8371B40()
{
  OUTLINED_FUNCTION_10_0();
  v3 = v2;
  OUTLINED_FUNCTION_16_0();
  v5 = v4;
  OUTLINED_FUNCTION_32();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_95();
  *v8 = v7;
  v5[24] = v0;

  if (v0)
  {
    v9 = v5[21];
    v10 = v5[22];
    v11 = sub_1C8371CD8;
  }

  else
  {
    v5[25] = v3;
    v9 = v5[21];
    v10 = v5[22];
    v11 = sub_1C8371C50;
  }

  return MEMORY[0x1EEE6DFA0](v11, v9, v10);
}

uint64_t sub_1C8371C50()
{
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_31_1();

  v1 = *(v0 + 8);
  v2 = *(v0 + 200);

  return v1(v2);
}

uint64_t sub_1C8371CD8()
{
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_31_1();

  OUTLINED_FUNCTION_41();

  return v0();
}

uint64_t type metadata accessor for ParameterSummaryArrayGroup(uint64_t a1)
{
  result = qword_1EC29E690;
  if (!qword_1EC29E690)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ParameterSummaryArrayGroup.identifier.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t ParameterSummaryArrayGroup.parameterDefinition.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18WorkflowUIServices26ParameterSummaryArrayGroup_parameterDefinition;
  sub_1C840CB6C();
  OUTLINED_FUNCTION_6();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t ParameterSummaryArrayGroup.Mode.hashValue.getter()
{
  v1 = *v0;
  sub_1C840D77C();
  MEMORY[0x1CCA76180](v1);
  return sub_1C840D7CC();
}

double sub_1C8371F1C()
{
  OUTLINED_FUNCTION_60(v0 + OBJC_IVAR____TtC18WorkflowUIServices26ParameterSummaryArrayGroup_parameters, v2);

  return result;
}

uint64_t sub_1C8371F5C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18WorkflowUIServices26ParameterSummaryArrayGroup_parameters;
  OUTLINED_FUNCTION_33(v1 + OBJC_IVAR____TtC18WorkflowUIServices26ParameterSummaryArrayGroup_parameters, v5);
  *(v1 + v3) = a1;
}

uint64_t sub_1C837200C(void *a1, uint64_t a2)
{
  v2 = a1[1];
  v3 = swift_unknownObjectRetain();
  return sub_1C8372090(v3, v2);
}

uint64_t sub_1C8372090(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC18WorkflowUIServices26ParameterSummaryArrayGroup_delegate;
  OUTLINED_FUNCTION_33(v4, v6);
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t (*sub_1C83720F4(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = v3;
  v4 = OBJC_IVAR____TtC18WorkflowUIServices26ParameterSummaryArrayGroup_delegate;
  v3[5] = v1;
  v3[6] = v4;
  v5 = v1 + v4;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v7 = *(v5 + 8);
  v3[3] = Strong;
  v3[4] = v7;
  return sub_1C8372180;
}

uint64_t sub_1C8372184(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 136) = a8;
  *(v9 + 144) = v8;
  *(v9 + 120) = a6;
  *(v9 + 128) = a7;
  *(v9 + 104) = a4;
  *(v9 + 112) = a5;
  *(v9 + 88) = a2;
  *(v9 + 96) = a3;
  *(v9 + 80) = a1;
  v10 = sub_1C840CA5C();
  *(v9 + 152) = v10;
  *(v9 + 160) = *(v10 - 8);
  *(v9 + 168) = swift_task_alloc();
  v11 = sub_1C840CAAC();
  *(v9 + 176) = v11;
  *(v9 + 184) = *(v11 - 8);
  *(v9 + 192) = swift_task_alloc();
  *(v9 + 272) = *v16;
  sub_1C840D05C();
  *(v9 + 200) = sub_1C840D04C();
  v13 = sub_1C840D03C();
  *(v9 + 208) = v13;
  *(v9 + 216) = v12;

  return MEMORY[0x1EEE6DFA0](sub_1C83722F4, v13, v12);
}

uint64_t sub_1C83722F4(__n128 a1)
{
  v2 = *(v1 + 152);
  v3 = *(v1 + 160);
  v4 = *(v1 + 144);
  v5 = *(v1 + 104);
  v64 = *(v1 + 112);
  v66 = *(v1 + 136);
  v6 = *(v1 + 88);
  v7 = *(v1 + 96);
  v8 = *(v1 + 80);
  *(v4 + OBJC_IVAR____TtC18WorkflowUIServices26ParameterSummaryArrayGroup_parameters) = MEMORY[0x1E69E7CC0];
  *(v4 + OBJC_IVAR____TtC18WorkflowUIServices26ParameterSummaryArrayGroup_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v4 + 16) = sub_1C840CB3C();
  *(v4 + 24) = v9;
  v10 = OBJC_IVAR____TtC18WorkflowUIServices26ParameterSummaryArrayGroup_parameterDefinition;
  v11 = sub_1C840CB6C();
  *(v1 + 224) = v11;
  v12 = *(v11 - 8);
  *(v1 + 232) = v12;
  v61 = v12;
  v63 = v10;
  v62 = v11;
  v54 = *(v12 + 16);
  v54(v4 + v10, v6);
  v13 = *(v3 + 16);
  v60 = OBJC_IVAR____TtC18WorkflowUIServices26ParameterSummaryArrayGroup_typeInstance;
  v13(v4 + OBJC_IVAR____TtC18WorkflowUIServices26ParameterSummaryArrayGroup_typeInstance, v8, v2);
  v14 = OBJC_IVAR____TtC18WorkflowUIServices26ParameterSummaryArrayGroup_toolInvocation;
  v15 = sub_1C840C70C();
  *(v1 + 240) = v15;
  v16 = *(v15 - 8);
  *(v1 + 248) = v16;
  v56 = v16;
  v58 = v15;
  v59 = v14;
  (*(v16 + 16))(v4 + v14, v7);
  v55 = (v4 + OBJC_IVAR____TtC18WorkflowUIServices26ParameterSummaryArrayGroup_toolSessionPool);
  *v55 = v5;
  v55[1] = v64;
  if (v66)
  {
    v18 = *(v1 + 128);
    v17 = *(v1 + 136);
    swift_unknownObjectRetain();
  }

  else
  {
    swift_unknownObjectRetain();
    v19 = sub_1C840CB4C();
    v21 = v20;

    v22 = HIBYTE(v21) & 0xF;
    if ((v21 & 0x2000000000000000) == 0)
    {
      v22 = v19 & 0xFFFFFFFFFFFFLL;
    }

    if (v22)
    {
      v23 = sub_1C840CB4C();
    }

    else
    {
      v23 = sub_1C840CB3C();
    }

    v18 = v23;
    v17 = v24;
  }

  v25 = *(v1 + 272);
  v26 = *(v1 + 160);
  v27 = *(v1 + 168);
  v28 = *(v1 + 144);
  v29 = *(v1 + 152);
  v30 = *(v1 + 80);
  v31 = (v28 + OBJC_IVAR____TtC18WorkflowUIServices26ParameterSummaryArrayGroup_placeholder);
  *v31 = v18;
  v31[1] = v17;
  *(v28 + OBJC_IVAR____TtC18WorkflowUIServices26ParameterSummaryArrayGroup_mode) = v25;
  v13(v27, v30, v29);
  v32 = (*(v26 + 88))(v27, v29);
  if (v32 == *MEMORY[0x1E69DAF30] || v32 == *MEMORY[0x1E69DAF20])
  {
    v35 = *(v1 + 184);
    v34 = *(v1 + 192);
    v36 = *(v1 + 176);
    v37 = *(v1 + 144);
    (*(*(v1 + 160) + 96))(*(v1 + 168), *(v1 + 152));
    v38 = swift_projectBox();
    (*(v35 + 16))(v34, v38, v36);

    (*(v35 + 32))(v37 + OBJC_IVAR____TtC18WorkflowUIServices26ParameterSummaryArrayGroup_typeIdentifier, v34, v36);
    swift_task_alloc();
    OUTLINED_FUNCTION_87();
    *(v1 + 256) = v39;
    *v39 = v40;
    v39[1] = sub_1C8372928;

    return sub_1C83749D0();
  }

  else
  {
    v53 = *(v1 + 168);
    v49 = *(v1 + 160);
    v51 = *(v1 + 152);
    v65 = *(v1 + 144);
    v50 = *(v1 + 120);
    v42 = *(v1 + 96);
    v43 = *(v1 + 88);
    v52 = *(v1 + 80);

    type metadata accessor for ParameterSummaryParameterMapping.MappingError(0);
    sub_1C8375BF8();
    swift_allocError();
    v45 = v44;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29EAE0, &qword_1C8417B90);
    (v54)(v45, v43, v62);
    sub_1C840C77C();
    sub_1C840CD3C();
    sub_1C840C79C();
    type metadata accessor for ParameterSummaryToolTemplate(0);
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    swift_unknownObjectRelease();
    sub_1C8375520(v50, &qword_1EC29EAD0, &qword_1C8418AB0);
    v57 = *(v56 + 8);
    v57(v42, v58);
    v46 = *(v61 + 8);
    v46(v43, v62);
    v47 = *(v49 + 8);
    v47(v52, v51);
    v47(v53, v51);

    v46(v4 + v63, v62);
    v47(v4 + v60, v51);
    v57(v4 + v59, v58);
    swift_unknownObjectRelease();

    sub_1C8338A00(v65 + OBJC_IVAR____TtC18WorkflowUIServices26ParameterSummaryArrayGroup_delegate);
    type metadata accessor for ParameterSummaryArrayGroup(0);
    swift_deallocPartialClassInstance();

    OUTLINED_FUNCTION_41();

    return v48();
  }
}

uint64_t sub_1C8372928()
{
  OUTLINED_FUNCTION_10_0();
  v2 = *v1;
  OUTLINED_FUNCTION_32();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 264) = v0;

  v5 = *(v2 + 216);
  v6 = *(v2 + 208);
  if (v0)
  {
    v7 = sub_1C8372BF0;
  }

  else
  {
    v7 = sub_1C8372A58;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, v5);
}

uint64_t sub_1C8372A58()
{
  v1 = v0[31];
  v2 = v0[29];
  v14 = v0[30];
  v15 = v0[28];
  v3 = v0[20];
  v4 = v0[18];
  v16 = v0[19];
  v5 = v0[15];
  v6 = v0[12];
  v12 = v0[11];
  v13 = v0[10];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29EAC0, &unk_1C8419240);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1C8414660;
  sub_1C832DE28((v0 + 2), v7 + 32);
  v8 = OBJC_IVAR____TtC18WorkflowUIServices26ParameterSummaryArrayGroup_parameters;
  OUTLINED_FUNCTION_33(v4 + OBJC_IVAR____TtC18WorkflowUIServices26ParameterSummaryArrayGroup_parameters, (v0 + 7));
  *(v4 + v8) = v7;

  sub_1C837370C(v5);
  swift_unknownObjectRelease();
  sub_1C8375520(v5, &qword_1EC29EAD0, &qword_1C8418AB0);
  (*(v1 + 8))(v6, v14);
  (*(v2 + 8))(v12, v15);
  (*(v3 + 8))(v13, v16);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  v9 = v0[1];
  v10 = v0[18];

  return v9(v10);
}

uint64_t sub_1C8372BF0()
{
  v1 = v0[30];
  v2 = v0[31];
  v3 = v0[29];
  v4 = v0[20];
  v11 = v0[28];
  v12 = v0[19];
  v5 = v0[15];
  v6 = v0[12];
  v8 = v0[10];
  v7 = v0[11];

  swift_unknownObjectRelease();
  sub_1C8375520(v5, &qword_1EC29EAD0, &qword_1C8418AB0);
  (*(v2 + 8))(v6, v1);
  (*(v3 + 8))(v7, v11);
  (*(v4 + 8))(v8, v12);

  OUTLINED_FUNCTION_41();

  return v9();
}

uint64_t sub_1C8372D18()
{
  OUTLINED_FUNCTION_130();
  v1[10] = v2;
  v1[11] = v0;
  v3 = sub_1C840CAAC();
  v1[12] = v3;
  OUTLINED_FUNCTION_13(v3);
  v1[13] = v4;
  v1[14] = OUTLINED_FUNCTION_89();
  v5 = sub_1C840C85C();
  v1[15] = v5;
  OUTLINED_FUNCTION_13(v5);
  v1[16] = v6;
  v1[17] = OUTLINED_FUNCTION_89();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29EAD0, &qword_1C8418AB0);
  OUTLINED_FUNCTION_59(v7);
  v1[18] = OUTLINED_FUNCTION_89();
  v8 = sub_1C840CA1C();
  v1[19] = v8;
  OUTLINED_FUNCTION_13(v8);
  v1[20] = v9;
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();
  sub_1C840D05C();
  v1[23] = sub_1C840D04C();
  v11 = sub_1C840D03C();
  v1[24] = v11;
  v1[25] = v10;

  return MEMORY[0x1EEE6DFA0](sub_1C8372ED0, v11, v10);
}

void sub_1C8372ED0()
{
  OUTLINED_FUNCTION_30_2();
  v1 = v0[11];
  v2 = OBJC_IVAR____TtC18WorkflowUIServices26ParameterSummaryArrayGroup_parameters;
  OUTLINED_FUNCTION_60(v1 + OBJC_IVAR____TtC18WorkflowUIServices26ParameterSummaryArrayGroup_parameters, (v0 + 7));
  v3 = *(v1 + v2);
  v0[26] = v3;
  v4 = *(v3 + 16);
  v5 = MEMORY[0x1E69E7CC0];
  v0[28] = 0;
  v0[29] = v5;
  v0[27] = v4;

  if (v4)
  {
    if (*(v6 + 16))
    {
      sub_1C832DE28(v6 + 32, (v0 + 2));
      v7 = v0[6];
      OUTLINED_FUNCTION_32_1(v0 + 2);
      v23 = (*(v7 + 120) + **(v7 + 120));
      swift_task_alloc();
      OUTLINED_FUNCTION_87();
      v0[30] = v8;
      *v8 = v9;
      v10 = OUTLINED_FUNCTION_4_6(v8);

      v23(v10);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {

    if (*(v5 + 16))
    {
      v11 = v0[19];
      v12 = v0[20];
      v14 = v0[16];
      v13 = v0[17];
      v15 = v0[15];
      v16 = v0[10];
      (*(v0[13] + 16))(v0[14], v0[11] + OBJC_IVAR____TtC18WorkflowUIServices26ParameterSummaryArrayGroup_typeIdentifier, v0[12]);
      sub_1C840C83C();
      v17 = swift_allocBox();
      (*(v14 + 32))(v18, v13, v15);
      *v16 = v17;
      (*(v12 + 104))(v16, *MEMORY[0x1E69DAE18], v11);
      v19 = v16;
      v20 = 0;
    }

    else
    {
      v11 = v0[19];
      v21 = v0[10];

      v19 = v21;
      v20 = 1;
    }

    __swift_storeEnumTagSinglePayload(v19, v20, 1, v11);

    OUTLINED_FUNCTION_41();

    v22();
  }
}

uint64_t sub_1C8373178()
{
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_16_0();
  v3 = v2;
  OUTLINED_FUNCTION_32();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_95();
  *v6 = v5;
  v3[31] = v0;

  __swift_destroy_boxed_opaque_existential_1(v3 + 2);
  if (v0)
  {

    v7 = v3[24];
    v8 = v3[25];
    v9 = sub_1C8373668;
  }

  else
  {
    v7 = v3[24];
    v8 = v3[25];
    v9 = sub_1C83732A4;
  }

  return MEMORY[0x1EEE6DFA0](v9, v7, v8);
}

uint64_t sub_1C83732A4()
{
  OUTLINED_FUNCTION_30_2();
  v1 = v0[18];
  v2 = v0[19];
  if (__swift_getEnumTagSinglePayload(v1, 1, v2) == 1)
  {
    sub_1C8375520(v1, &qword_1EC29EAD0, &qword_1C8418AB0);
    v3 = v0[29];
  }

  else
  {
    v5 = v0[21];
    v4 = v0[22];
    v6 = v0[20];
    v7 = *(v6 + 32);
    v7(v4, v1, v2);
    (*(v6 + 16))(v5, v4, v2);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v3 = v0[29];
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1C832EB38();
      v3 = v32;
    }

    v9 = *(v3 + 16);
    if (v9 >= *(v3 + 24) >> 1)
    {
      sub_1C832EB38();
      v3 = v33;
    }

    v10 = v0[21];
    v11 = v0[19];
    v12 = v0[20];
    (*(v12 + 8))(v0[22], v11);
    *(v3 + 16) = v9 + 1;
    v7(v3 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v9, v10, v11);
  }

  v13 = v0[27];
  v14 = v0[28] + 1;
  v0[28] = v14;
  v0[29] = v3;
  result = v0[26];
  if (v14 == v13)
  {

    if (*(v3 + 16))
    {
      v16 = v0[19];
      v17 = v0[20];
      v19 = v0[16];
      v18 = v0[17];
      v20 = v0[15];
      v21 = v0[10];
      (*(v0[13] + 16))(v0[14], v0[11] + OBJC_IVAR____TtC18WorkflowUIServices26ParameterSummaryArrayGroup_typeIdentifier, v0[12]);
      sub_1C840C83C();
      v22 = swift_allocBox();
      (*(v19 + 32))(v23, v18, v20);
      *v21 = v22;
      (*(v17 + 104))(v21, *MEMORY[0x1E69DAE18], v16);
      v24 = v21;
      v25 = 0;
    }

    else
    {
      v16 = v0[19];
      v30 = v0[10];

      v24 = v30;
      v25 = 1;
    }

    __swift_storeEnumTagSinglePayload(v24, v25, 1, v16);

    OUTLINED_FUNCTION_41();

    return v31();
  }

  else if (v14 >= *(result + 16))
  {
    __break(1u);
  }

  else
  {
    sub_1C832DE28(result + 40 * v14 + 32, (v0 + 2));
    v26 = v0[6];
    OUTLINED_FUNCTION_32_1(v0 + 2);
    v34 = (*(v26 + 120) + **(v26 + 120));
    swift_task_alloc();
    OUTLINED_FUNCTION_87();
    v0[30] = v27;
    *v27 = v28;
    v29 = OUTLINED_FUNCTION_4_6(v27);

    return v34(v29);
  }

  return result;
}

uint64_t sub_1C8373668()
{

  OUTLINED_FUNCTION_41();

  return v0();
}

uint64_t sub_1C837370C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29DF08, &qword_1C8417B20);
  v3 = OUTLINED_FUNCTION_59(v2);
  MEMORY[0x1EEE9AC00](v3);
  v86 = &v83 - v4;
  v5 = sub_1C840CA1C();
  OUTLINED_FUNCTION_5();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v85 = &v83 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29EAD0, &qword_1C8418AB0);
  v11 = OUTLINED_FUNCTION_59(v10);
  MEMORY[0x1EEE9AC00](v11);
  v84 = &v83 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v83 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v83 - v17;
  v19 = sub_1C840C85C();
  OUTLINED_FUNCTION_5();
  v21 = v20;
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v25 = &v83 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v83 - v27;
  v87 = a1;
  sub_1C83379C0(a1, v18);
  v29 = OUTLINED_FUNCTION_29_1();
  if (__swift_getEnumTagSinglePayload(v29, v30, v5) == 1)
  {
    sub_1C8375520(v18, &qword_1EC29EAD0, &qword_1C8418AB0);
LABEL_7:
    v51 = v88;
    v52 = OBJC_IVAR____TtC18WorkflowUIServices26ParameterSummaryArrayGroup_parameters;
    OUTLINED_FUNCTION_60(v88 + OBJC_IVAR____TtC18WorkflowUIServices26ParameterSummaryArrayGroup_parameters, &v89);
    sub_1C83BB318(*(v51 + v52), v93);
    v53 = v94;
    if (v94)
    {
      v54 = v95;
      OUTLINED_FUNCTION_32_1(v93);
      (*(v54 + 128))(v87, v53, v54);
      return __swift_destroy_boxed_opaque_existential_1(v93);
    }

    v55 = v93;
    return sub_1C8375520(v55, &qword_1EC29E660, &qword_1C8419D90);
  }

  v31 = OUTLINED_FUNCTION_28_2();
  if (v32(v31) != *MEMORY[0x1E69DAE18])
  {
    v49 = OUTLINED_FUNCTION_28_2();
    v50(v49);
    goto LABEL_7;
  }

  v83 = v7;
  v33 = OUTLINED_FUNCTION_28_2();
  v34(v33);
  swift_projectBox();
  v35 = v19;
  v36 = v21;
  v37 = v28;
  v38 = *(v21 + 16);
  v39 = v37;
  v38();

  v40 = v88;
  if (*(v88 + OBJC_IVAR____TtC18WorkflowUIServices26ParameterSummaryArrayGroup_mode))
  {
    v41 = sub_1C840D08C();
    __swift_storeEnumTagSinglePayload(v86, 1, 1, v41);
    v42 = v39;
    (v38)(v25, v39, v35);
    sub_1C840D05C();
    v43 = v40;

    v44 = sub_1C840D04C();
    v45 = (*(v21 + 80) + 40) & ~*(v21 + 80);
    v46 = swift_allocObject();
    v47 = MEMORY[0x1E69E85E0];
    *(v46 + 2) = v44;
    *(v46 + 3) = v47;
    *(v46 + 4) = v43;
    (*(v36 + 32))(&v46[v45], v25, v35);
    sub_1C83BE2BC();

    return (*(v36 + 8))(v42, v35);
  }

  v56 = v39;
  v57 = v36;
  v58 = v35;
  v59 = OBJC_IVAR____TtC18WorkflowUIServices26ParameterSummaryArrayGroup_parameters;
  OUTLINED_FUNCTION_60(v88 + OBJC_IVAR____TtC18WorkflowUIServices26ParameterSummaryArrayGroup_parameters, v92);
  sub_1C83BB318(*(v40 + v59), &v89);
  if (v90)
  {
    v60 = v40;
    sub_1C830D408(&v89, v93);
    v61 = v56;
    v62 = *(sub_1C840C84C() + 16);

    if (v62)
    {
      v63 = *(sub_1C840C84C() + 16);

      if (v63 == 1)
      {
        v64 = sub_1C840C84C();
        sub_1C83BB300(v64, v15);

        if (__swift_getEnumTagSinglePayload(v15, 1, v5) != 1)
        {
          v69 = v83;
          v70 = v85;
          (*(v83 + 32))(v85, v15, v5);
          sub_1C83BB318(*(v60 + v59), &v89);
          v71 = v90;
          if (v90)
          {
            v72 = v91;
            __swift_project_boxed_opaque_existential_1(&v89, v90);
            v73 = v84;
            (*(v69 + 16))(v84, v70, v5);
            OUTLINED_FUNCTION_27();
            __swift_storeEnumTagSinglePayload(v74, v75, v76, v5);
            (*(v72 + 128))(v73, v71, v72);
            sub_1C8375520(v73, &qword_1EC29EAD0, &qword_1C8418AB0);
            (*(v69 + 8))(v70, v5);
            v77 = OUTLINED_FUNCTION_19_4();
            v78(v77);
            __swift_destroy_boxed_opaque_existential_1(&v89);
          }

          else
          {
            v79 = OUTLINED_FUNCTION_28_2();
            v80(v79);
            v81 = OUTLINED_FUNCTION_19_4();
            v82(v81);
            sub_1C8375520(&v89, &qword_1EC29E660, &qword_1C8419D90);
          }

          return __swift_destroy_boxed_opaque_existential_1(v93);
        }

        sub_1C8375520(v15, &qword_1EC29EAD0, &qword_1C8418AB0);
        v61 = v56;
      }

      v65 = v94;
      v66 = v95;
      OUTLINED_FUNCTION_32_1(v93);
      (*(v66 + 128))(v87, v65, v66);
    }

    (*(v57 + 8))(v61, v58);
    return __swift_destroy_boxed_opaque_existential_1(v93);
  }

  v67 = OUTLINED_FUNCTION_19_4();
  v68(v67);
  v55 = &v89;
  return sub_1C8375520(v55, &qword_1EC29E660, &qword_1C8419D90);
}

uint64_t sub_1C8373DF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[38] = a4;
  v5[39] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29EAD0, &qword_1C8418AB0);
  v5[40] = swift_task_alloc();
  v6 = sub_1C840CA1C();
  v5[41] = v6;
  v5[42] = *(v6 - 8);
  v5[43] = swift_task_alloc();
  v5[44] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29E6A0, &qword_1C8419228);
  v5[45] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29E6A8, &unk_1C8419230);
  v5[46] = swift_task_alloc();
  v5[47] = swift_task_alloc();
  sub_1C840D05C();
  v5[48] = sub_1C840D04C();
  v8 = sub_1C840D03C();
  v5[49] = v8;
  v5[50] = v7;

  return MEMORY[0x1EEE6DFA0](sub_1C8373FA0, v8, v7);
}

uint64_t sub_1C8373FA0()
{
  OUTLINED_FUNCTION_30_2();
  v2 = v0[38];
  v3 = OBJC_IVAR____TtC18WorkflowUIServices26ParameterSummaryArrayGroup_parameters;
  v0[51] = OBJC_IVAR____TtC18WorkflowUIServices26ParameterSummaryArrayGroup_parameters;
  OUTLINED_FUNCTION_33(v2 + v3, (v0 + 32));
  v4 = *(v2 + v3);

  v5 = *(sub_1C840C84C() + 16);

  sub_1C8375D38(0, v5, v4);
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  if ((v13 & 1) == 0)
  {
    goto LABEL_2;
  }

  sub_1C840D6AC();
  swift_unknownObjectRetain_n();
  v15 = swift_dynamicCastClass();
  if (!v15)
  {
    swift_unknownObjectRelease();
    v15 = MEMORY[0x1E69E7CC0];
  }

  v16 = *(v15 + 16);

  if (__OFSUB__(v13 >> 1, v11))
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  if (v16 != (v13 >> 1) - v11)
  {
LABEL_32:
    swift_unknownObjectRelease_n();
LABEL_2:
    sub_1C8375C50(v7, v9, v11, v13);
    v9 = v14;
LABEL_9:
    swift_unknownObjectRelease();
    goto LABEL_10;
  }

  v9 = swift_dynamicCastClass();
  swift_unknownObjectRelease_n();
  if (!v9)
  {
    v9 = MEMORY[0x1E69E7CC0];
    goto LABEL_9;
  }

LABEL_10:
  v7 = v0[39];
  v17 = sub_1C840C84C();
  v18 = 0;
  v0[52] = v17;
  v11 = v9 + 32;
  v19 = *(v17 + 16);
  for (v0[53] = v19; ; v19 = v0[53])
  {
    v0[54] = v9;
    if (v18 == v19)
    {
      v20 = 1;
    }

    else
    {
      if ((v18 & 0x8000000000000000) != 0)
      {
        goto LABEL_29;
      }

      if (v18 >= *(v0[52] + 16))
      {
        goto LABEL_30;
      }

      v19 = v18 + 1;
      v21 = OUTLINED_FUNCTION_8_9(v18);
      v22(v21);
      v23 = OUTLINED_FUNCTION_26_3();
      sub_1C8375DA4(v23, v24, &qword_1EC29E6A0, &qword_1C8419228);
      v20 = 0;
    }

    v0[55] = v19;
    v25 = v0[46];
    v7 = v0[47];
    v26 = v0[44];
    __swift_storeEnumTagSinglePayload(v25, v20, 1, v26);
    v27 = OUTLINED_FUNCTION_26_3();
    sub_1C8375DA4(v27, v28, &qword_1EC29E6A8, &unk_1C8419230);
    v29 = OUTLINED_FUNCTION_29_1();
    if (__swift_getEnumTagSinglePayload(v29, v30, v26) == 1)
    {
      v41 = v0[51];
      v42 = v0[38];

      *(v42 + v41) = v9;

      OUTLINED_FUNCTION_60(v42 + OBJC_IVAR____TtC18WorkflowUIServices26ParameterSummaryArrayGroup_delegate, (v0 + 35));
      if (swift_unknownObjectWeakLoadStrong())
      {
        swift_getObjectType();
        v43 = type metadata accessor for ParameterSummaryArrayGroup(0);
        OUTLINED_FUNCTION_12_7(v43, &protocol witness table for ParameterSummaryArrayGroup);
        v44 = OUTLINED_FUNCTION_25_3();
        v26(v44);
        swift_unknownObjectRelease();
        sub_1C8375520((v0 + 7), &qword_1EC29E660, &qword_1C8419D90);
        __swift_destroy_boxed_opaque_existential_1(v0 + 2);
      }

      OUTLINED_FUNCTION_15_6(v45, v46, v47, v48, v49, v50, v51, v52);

      OUTLINED_FUNCTION_41();
      OUTLINED_FUNCTION_131();

      __asm { BRAA            X1, X16 }
    }

    v31 = OUTLINED_FUNCTION_13_6();
    v32(v31);
    if (v7 >= *(v9 + 16))
    {
      break;
    }

    if (v7 < 0)
    {
      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    OUTLINED_FUNCTION_24_1();
    __swift_project_boxed_opaque_existential_1(v0 + 27, v0[30]);
    v33 = OUTLINED_FUNCTION_17_5();
    v34(v33);
    OUTLINED_FUNCTION_27();
    __swift_storeEnumTagSinglePayload(v35, v36, v37, v25);
    v38 = OUTLINED_FUNCTION_22_3();
    v39(v38);
    sub_1C8375520(v1, &qword_1EC29EAD0, &qword_1C8418AB0);
    v40 = *(v13 + 8);
    v13 += 8;
    v40(v26, v25);
    __swift_destroy_boxed_opaque_existential_1(v0 + 27);
    v18 = v0[55];
  }

  swift_task_alloc();
  OUTLINED_FUNCTION_87();
  v0[56] = v55;
  *v55 = v56;
  OUTLINED_FUNCTION_5_8(v55);
  OUTLINED_FUNCTION_131();

  return sub_1C83749D0();
}

uint64_t sub_1C83743B8()
{
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_16_0();
  v3 = v2;
  OUTLINED_FUNCTION_32();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_95();
  *v6 = v5;

  if (v0)
  {

    v7 = *(v3 + 392);
    v8 = *(v3 + 400);
    v9 = sub_1C83744D0;
  }

  else
  {
    v7 = *(v3 + 392);
    v8 = *(v3 + 400);
    v9 = sub_1C83745A8;
  }

  return MEMORY[0x1EEE6DFA0](v9, v7, v8);
}

uint64_t sub_1C83744D0()
{
  OUTLINED_FUNCTION_10_0();
  v2 = *(v0 + 336);
  v1 = *(v0 + 344);
  v3 = *(v0 + 328);

  (*(v2 + 8))(v1, v3);
  *(v0 + 168) = 0;
  *(v0 + 152) = 0u;
  *(v0 + 136) = 0u;
  sub_1C8375520(v0 + 136, &qword_1EC29E660, &qword_1C8419D90);

  OUTLINED_FUNCTION_15_6(v4, v5, v6, v7, v8, v9, v10, v11);

  OUTLINED_FUNCTION_41();

  return v12();
}

uint64_t sub_1C83745A8()
{
  OUTLINED_FUNCTION_30_2();
  v2 = *(v0 + 336);
  v1 = *(v0 + 344);
  v4 = *(v0 + 320);
  v3 = *(v0 + 328);
  sub_1C830D408((v0 + 136), v0 + 96);
  v5 = *(v0 + 120);
  v6 = *(v0 + 128);
  __swift_project_boxed_opaque_existential_1((v0 + 96), v5);
  v8 = *(v2 + 16);
  v7 = v2 + 16;
  v8(v4, v1, v3);
  OUTLINED_FUNCTION_27();
  __swift_storeEnumTagSinglePayload(v9, v10, v11, v3);
  (*(v6 + 128))(v4, v5, v6);
  sub_1C8375520(v4, &qword_1EC29EAD0, &qword_1C8418AB0);
  sub_1C832DE28(v0 + 96, v0 + 176);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *(v0 + 432);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_25:
    sub_1C832ED10();
    v13 = v57;
  }

  v14 = *(v13 + 16);
  if (v14 >= *(v13 + 24) >> 1)
  {
    sub_1C832ED10();
    v13 = v58;
  }

  (*(*(v0 + 336) + 8))(*(v0 + 344), *(v0 + 328));
  *(v13 + 16) = v14 + 1;
  sub_1C830D408((v0 + 176), v13 + 32 + 40 * v14);
  for (i = (v0 + 96); ; i = (v0 + 216))
  {
    __swift_destroy_boxed_opaque_existential_1(i);
    v16 = *(v0 + 440);
    *(v0 + 432) = v13;
    if (v16 == *(v0 + 424))
    {
      v17 = 1;
    }

    else
    {
      if ((v16 & 0x8000000000000000) != 0)
      {
        goto LABEL_23;
      }

      if (v16 >= *(*(v0 + 416) + 16))
      {
        goto LABEL_24;
      }

      v14 = v16 + 1;
      v18 = OUTLINED_FUNCTION_8_9(v16);
      v19(v18);
      v20 = OUTLINED_FUNCTION_26_3();
      sub_1C8375DA4(v20, v21, &qword_1EC29E6A0, &qword_1C8419228);
      v17 = 0;
      v16 = v14;
    }

    *(v0 + 440) = v16;
    v23 = *(v0 + 368);
    v22 = *(v0 + 376);
    v24 = *(v0 + 352);
    __swift_storeEnumTagSinglePayload(v23, v17, 1, v24);
    v25 = OUTLINED_FUNCTION_26_3();
    sub_1C8375DA4(v25, v26, &qword_1EC29E6A8, &unk_1C8419230);
    v27 = OUTLINED_FUNCTION_29_1();
    if (__swift_getEnumTagSinglePayload(v27, v28, v24) == 1)
    {
      v39 = *(v0 + 408);
      v40 = *(v0 + 304);

      *(v40 + v39) = v13;

      OUTLINED_FUNCTION_60(v40 + OBJC_IVAR____TtC18WorkflowUIServices26ParameterSummaryArrayGroup_delegate, v0 + 280);
      if (swift_unknownObjectWeakLoadStrong())
      {
        swift_getObjectType();
        v41 = type metadata accessor for ParameterSummaryArrayGroup(0);
        OUTLINED_FUNCTION_12_7(v41, &protocol witness table for ParameterSummaryArrayGroup);
        v42 = OUTLINED_FUNCTION_25_3();
        v24(v42);
        swift_unknownObjectRelease();
        sub_1C8375520(v0 + 56, &qword_1EC29E660, &qword_1C8419D90);
        __swift_destroy_boxed_opaque_existential_1((v0 + 16));
      }

      OUTLINED_FUNCTION_15_6(v43, v44, v45, v46, v47, v48, v49, v50);

      OUTLINED_FUNCTION_41();
      OUTLINED_FUNCTION_131();

      __asm { BRAA            X1, X16 }
    }

    v29 = OUTLINED_FUNCTION_13_6();
    v30(v29);
    if (v22 >= *(v13 + 16))
    {
      break;
    }

    if (v22 < 0)
    {
      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    OUTLINED_FUNCTION_24_1();
    __swift_project_boxed_opaque_existential_1((v0 + 216), *(v0 + 240));
    v31 = OUTLINED_FUNCTION_17_5();
    v32(v31);
    OUTLINED_FUNCTION_27();
    __swift_storeEnumTagSinglePayload(v33, v34, v35, v23);
    v36 = OUTLINED_FUNCTION_22_3();
    v37(v36);
    sub_1C8375520(v7, &qword_1EC29EAD0, &qword_1C8418AB0);
    v38 = *(v14 + 8);
    v14 += 8;
    v38(v24, v23);
  }

  swift_task_alloc();
  OUTLINED_FUNCTION_87();
  *(v0 + 448) = v53;
  *v53 = v54;
  OUTLINED_FUNCTION_5_8(v53);
  OUTLINED_FUNCTION_131();

  return sub_1C83749D0();
}

uint64_t sub_1C83749D0()
{
  OUTLINED_FUNCTION_130();
  v1[14] = v2;
  v1[15] = v0;
  v3 = sub_1C840B1DC();
  v1[16] = v3;
  OUTLINED_FUNCTION_13(v3);
  v1[17] = v4;
  v1[18] = OUTLINED_FUNCTION_89();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29EAD0, &qword_1C8418AB0);
  OUTLINED_FUNCTION_59(v5);
  v1[19] = OUTLINED_FUNCTION_89();
  sub_1C840D05C();
  v1[20] = sub_1C840D04C();
  v7 = sub_1C840D03C();
  v1[21] = v7;
  v1[22] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1C8374ADC, v7, v6);
}

uint64_t sub_1C8374ADC()
{
  v1 = v0[18];
  v3 = v0[16];
  v2 = v0[17];
  v0[23] = OBJC_IVAR____TtC18WorkflowUIServices26ParameterSummaryArrayGroup_parameterDefinition;
  sub_1C840CA1C();
  v4 = OUTLINED_FUNCTION_29_1();
  __swift_storeEnumTagSinglePayload(v4, v5, 1, v6);
  sub_1C840CB3C();
  v14 = v7;
  MEMORY[0x1CCA75890](35, 0xE100000000000000);
  sub_1C840B1CC();
  v8 = sub_1C840B1BC();
  v10 = v9;
  (*(v2 + 8))(v1, v3);
  MEMORY[0x1CCA75890](v8, v10);

  v0[24] = v14;
  swift_task_alloc();
  OUTLINED_FUNCTION_87();
  v0[25] = v11;
  *v11 = v12;
  v11[1] = sub_1C8374C94;

  return sub_1C8353A08();
}

uint64_t sub_1C8374C94()
{
  OUTLINED_FUNCTION_10_0();
  v2 = *v1;
  OUTLINED_FUNCTION_32();
  *v4 = v3;
  *v4 = *v1;
  v3[26] = v0;

  sub_1C8375520(v2[19], &qword_1EC29EAD0, &qword_1C8418AB0);

  v5 = v2[22];
  v6 = v2[21];
  if (v0)
  {
    v7 = sub_1C8374FD8;
  }

  else
  {
    v7 = sub_1C8374E08;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, v5);
}

uint64_t sub_1C8374E08()
{

  sub_1C8375B48(v0 + 16, v0 + 64);
  if (*(v0 + 104) == 1)
  {
    v1 = *(v0 + 112);
    sub_1C8375BA4(v0 + 16);
    sub_1C830D408((v0 + 64), v1);
  }

  else
  {
    v3 = *(v0 + 184);
    v4 = *(v0 + 120);
    sub_1C8375BA4(v0 + 64);
    type metadata accessor for ParameterSummaryParameterMapping.MappingError(0);
    sub_1C8375BF8();
    swift_allocError();
    v6 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29EAE0, &qword_1C8417B90);
    sub_1C840CB6C();
    OUTLINED_FUNCTION_6();
    (*(v7 + 16))(v6, v4 + v3);
    sub_1C840C77C();
    sub_1C840CD3C();
    sub_1C840C79C();
    type metadata accessor for ParameterSummaryToolTemplate(0);
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    sub_1C8375BA4(v0 + 16);
  }

  OUTLINED_FUNCTION_41();

  return v2();
}

uint64_t sub_1C8374FD8()
{
  OUTLINED_FUNCTION_130();

  OUTLINED_FUNCTION_41();

  return v0();
}

uint64_t ParameterSummaryArrayGroup.deinit()
{

  v1 = OBJC_IVAR____TtC18WorkflowUIServices26ParameterSummaryArrayGroup_parameterDefinition;
  sub_1C840CB6C();
  OUTLINED_FUNCTION_0_10();
  (*(v2 + 8))(v0 + v1);
  v3 = OBJC_IVAR____TtC18WorkflowUIServices26ParameterSummaryArrayGroup_typeIdentifier;
  sub_1C840CAAC();
  OUTLINED_FUNCTION_0_10();
  (*(v4 + 8))(v0 + v3);
  v5 = OBJC_IVAR____TtC18WorkflowUIServices26ParameterSummaryArrayGroup_typeInstance;
  sub_1C840CA5C();
  OUTLINED_FUNCTION_0_10();
  (*(v6 + 8))(v0 + v5);
  v7 = OBJC_IVAR____TtC18WorkflowUIServices26ParameterSummaryArrayGroup_toolInvocation;
  sub_1C840C70C();
  OUTLINED_FUNCTION_0_10();
  (*(v8 + 8))(v0 + v7);
  swift_unknownObjectRelease();

  sub_1C8338A00(v0 + OBJC_IVAR____TtC18WorkflowUIServices26ParameterSummaryArrayGroup_delegate);
  return v0;
}

uint64_t ParameterSummaryArrayGroup.__deallocating_deinit()
{
  ParameterSummaryArrayGroup.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t (*sub_1C8375268(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = v3;
  v4 = *v1;
  v5 = OBJC_IVAR____TtC18WorkflowUIServices26ParameterSummaryArrayGroup_delegate;
  v3[5] = *v1;
  v3[6] = v5;
  v6 = v4 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  v3[3] = Strong;
  v3[4] = v8;
  return sub_1C8375E04;
}

void sub_1C83752F8(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + *(*a1 + 48) + 8) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

uint64_t sub_1C8375380()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C837541C;

  return sub_1C8372D18();
}

uint64_t sub_1C837541C()
{
  OUTLINED_FUNCTION_130();
  OUTLINED_FUNCTION_16_0();
  v1 = *v0;
  OUTLINED_FUNCTION_95();
  *v2 = v1;

  OUTLINED_FUNCTION_41();

  return v3();
}

uint64_t sub_1C8375520(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_0_10();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1C8375574(uint64_t a1)
{
  v4 = sub_1C840C85C();
  OUTLINED_FUNCTION_59(v4);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  swift_task_alloc();
  OUTLINED_FUNCTION_87();
  *(v2 + 16) = v10;
  *v10 = v11;
  v10[1] = sub_1C837541C;

  return sub_1C8373DF4(a1, v7, v8, v9, v1 + v6);
}

unint64_t sub_1C8375668()
{
  result = qword_1EC29E688;
  if (!qword_1EC29E688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC29E688);
  }

  return result;
}

uint64_t sub_1C83756C4(uint64_t a1)
{
  result = sub_1C840CB6C();
  if (v2 <= 0x3F)
  {
    result = sub_1C840CAAC();
    if (v3 <= 0x3F)
    {
      result = sub_1C840CA5C();
      if (v4 <= 0x3F)
      {
        result = sub_1C840C70C();
        if (v5 <= 0x3F)
        {
          return swift_updateClassMetadata2();
        }
      }
    }
  }

  return result;
}

uint64_t dispatch thunk of ParameterSummaryArrayGroup.asTypedValue()()
{
  OUTLINED_FUNCTION_10_0();
  v3 = v2;
  v7 = (*(*v0 + 216) + **(*v0 + 216));
  swift_task_alloc();
  OUTLINED_FUNCTION_87();
  *(v1 + 16) = v4;
  *v4 = v5;
  v4[1] = sub_1C837541C;

  return v7(v3);
}

_BYTE *storeEnumTagSinglePayload for ParameterSummaryArrayGroup.Mode(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C8375BF8()
{
  result = qword_1EC29DF40;
  if (!qword_1EC29DF40)
  {
    type metadata accessor for ParameterSummaryParameterMapping.MappingError(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC29DF40);
  }

  return result;
}

void sub_1C8375C50(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 >= 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29EAC0, &unk_1C8419240);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v7[2] = v5;
      v7[3] = 2 * ((v8 - 32) / 40);
    }

    if (v4 != a3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29D2D8, &qword_1C8415200);
      swift_arrayInitWithCopy();
      return;
    }

    goto LABEL_9;
  }
}

void sub_1C8375D38(unint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v3 = *(a3 + 16);
  if (v3 < a1 || v3 < a2)
  {
    goto LABEL_9;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {

    return;
  }

LABEL_10:
  __break(1u);
}

uint64_t sub_1C8375DA4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_6();
  (*(v6 + 32))(a2, a1);
  return a2;
}

uint64_t OUTLINED_FUNCTION_15_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
}

uint64_t sub_1C8375E44(uint64_t *TupleTypeMetadata, uint64_t a2, uint64_t a3)
{
  v5 = TupleTypeMetadata;
  if (a2 == 1)
  {
    v6 = *(a3 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x1EEE9AC00](TupleTypeMetadata);
    OUTLINED_FUNCTION_1();
    v9 = v8 - v7;
    for (i = 0; a2 != i; ++i)
    {
      *(v9 + 8 * i) = *((a3 & 0xFFFFFFFFFFFFFFFELL) + 8 * i);
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v6 = TupleTypeMetadata;
  }

  MEMORY[0x1EEE9AC00](TupleTypeMetadata);
  OUTLINED_FUNCTION_1();
  v13 = v12 - v11;
  if (a2)
  {
    v14 = (a3 & 0xFFFFFFFFFFFFFFFELL);
    v15 = (v6 + 32);
    v16 = a2;
    do
    {
      if (a2 == 1)
      {
        v17 = 0;
      }

      else
      {
        v17 = *v15;
      }

      v19 = *v14++;
      v18 = v19;
      v20 = *v5++;
      (*(*(v18 - 8) + 16))(v13 + v17, v20);
      v15 += 4;
      --v16;
    }

    while (v16);
  }

  return sub_1C840C64C();
}

uint64_t sub_1C8375FD4(uint64_t a1)
{
  sub_1C840B71C();
  OUTLINED_FUNCTION_5();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_1();
  (*(v5 + 16))(v4 - v3, a1);
  return sub_1C840BACC();
}

uint64_t sub_1C8376088@<X0>(void *a1@<X8>)
{
  v2 = sub_1C840BB2C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29E6B0, &qword_1C8415D10);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v12 - v7;
  type metadata accessor for AppShortcutIndexedSearchView(0);
  sub_1C8317A78();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_1C840B5EC();
    return (*(*(v9 - 8) + 32))(a1, v8, v9);
  }

  else
  {
    sub_1C840D17C();
    v11 = sub_1C840BD9C();
    sub_1C840B3CC();

    sub_1C840BB1C();
    swift_getAtKeyPath();

    return (*(v3 + 8))(v5, v2);
  }
}

id sub_1C8376290()
{
  v1 = sub_1C840BB2C();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = v0 + *(type metadata accessor for AppShortcutIndexedSearchView(0) + 24);
  v6 = *v5;
  if (*(v5 + 8) == 1)
  {

    return v6;
  }

  else
  {
    v10[0] = *v5;

    sub_1C840D17C();
    v8 = sub_1C840BD9C();
    sub_1C840B3CC();

    sub_1C840BB1C();
    swift_getAtKeyPath();
    v9 = sub_1C83702A0(v10[0], 0);
    (*(v2 + 8))(v4, v1, v9);
    return v10[1];
  }
}

void AppShortcutIndexedSearchView.init(phraseSignature:bundleIdentifier:associatedAppBundleIdentifier:)()
{
  OUTLINED_FUNCTION_26_4();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  *v12 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29D2F0, &qword_1C84152A0);
  swift_storeEnumTagMultiPayload();
  v14 = type metadata accessor for AppShortcutIndexedSearchView(0);
  v15 = v14[5];
  *(v13 + v15) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29E6B0, &qword_1C8415D10);
  swift_storeEnumTagMultiPayload();
  v16 = v13 + v14[6];
  *v16 = swift_getKeyPath();
  v16[8] = 0;
  v17 = (v13 + v14[7]);
  *v17 = v11;
  v17[1] = v9;
  v18 = (v13 + v14[8]);
  *v18 = v7;
  v18[1] = v5;
  v19 = (v13 + v14[9]);
  *v19 = v3;
  v19[1] = v1;
  OUTLINED_FUNCTION_27_0();
}

void AppShortcutIndexedSearchView.body.getter()
{
  OUTLINED_FUNCTION_26_4();
  v45 = v2;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29E6B8, &qword_1C8419320);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_3_2();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v43 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29E6C0, &qword_1C8419328);
  OUTLINED_FUNCTION_59(v6);
  OUTLINED_FUNCTION_3_2();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_20_1();
  v8 = sub_1C840B38C();
  OUTLINED_FUNCTION_5();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_1();
  v14 = v13 - v12;
  v15 = sub_1C840B5EC();
  v16 = OUTLINED_FUNCTION_59(v15);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_1();
  v19 = (v18 - v17);
  v20 = type metadata accessor for AppShortcutIndexedSearchView.DerivedStyles(0);
  v21 = OUTLINED_FUNCTION_59(v20);
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_1();
  v24 = v23 - v22;
  type metadata accessor for AppShortcutIndexedSearchView(0);

  sub_1C837690C(v19);
  sub_1C837DED0();
  sub_1C83769E8();
  sub_1C837DED0();
  sub_1C83775DC(v14, v46);
  (*(v10 + 8))(v14, v8);
  if (v48)
  {
    v25 = 1;
    v26 = v44;
  }

  else
  {
    *v49 = v46[0];
    *&v49[16] = v46[1];
    *&v49[32] = v46[2];
    v50 = v47;
    v27 = *(&v47 + 1);
    *v5 = sub_1C840BB7C();
    *(v5 + 1) = v27;
    v5[16] = 0;
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29E6C8, &qword_1C8419330);
    sub_1C8377810(v0, v24, v49, &v5[*(v28 + 44)]);
    LOBYTE(v27) = sub_1C840BDCC();
    v29 = &v5[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29E6D0, &qword_1C8419338) + 36)];
    *v29 = v27;
    v30 = *&v49[8];
    *(v29 + 24) = *&v49[24];
    *(v29 + 8) = v30;
    v29[40] = 0;
    v31 = sub_1C8379228();
    KeyPath = swift_getKeyPath();
    v33 = &v5[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29E6D8, &qword_1C8419370) + 36)];
    *v33 = KeyPath;
    v33[1] = v31;
    v34 = sub_1C840C5FC();
    v36 = v35;
    v37 = &v5[*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC29E6E0, &qword_1C8419378) + 36)];
    sub_1C8379624(v49, v24, v37);
    v38 = (v37 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29D310, &qword_1C8419380) + 36));
    *v38 = v34;
    v38[1] = v36;
    v39 = swift_getKeyPath();
    v40 = v44;
    v41 = &v5[*(v44 + 36)];
    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29E6F0, &qword_1C8419388);
    sub_1C837690C((v41 + *(v42 + 28)));
    *v41 = v39;
    sub_1C832247C();
    v25 = 0;
    v26 = v40;
  }

  __swift_storeEnumTagSinglePayload(v1, v25, 1, v26);
  sub_1C832247C();
  sub_1C837E580(v24, type metadata accessor for AppShortcutIndexedSearchView.DerivedStyles);
  OUTLINED_FUNCTION_27_0();
}

uint64_t sub_1C837690C@<X0>(void *a1@<X8>)
{
  v2 = [objc_opt_self() currentDevice];
  v3 = [v2 userInterfaceIdiom];

  if (v3)
  {

    return sub_1C8376088(a1);
  }

  else
  {
    v5 = *MEMORY[0x1E697DBA8];
    v6 = sub_1C840B5EC();
    v7 = *(*(v6 - 8) + 104);

    return v7(a1, v5, v6);
  }
}

void sub_1C83769E8()
{
  OUTLINED_FUNCTION_26_4();
  v145 = v0;
  v150 = v1;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v155[5] = *MEMORY[0x1E69E9840];
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC29E8E0, &unk_1C8415AF0);
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_22();
  v140 = v9 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v142 = &v136 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v139 = (&v136 - v14);
  v15 = type metadata accessor for TopHitViewColorScheme(0);
  v16 = OUTLINED_FUNCTION_59(v15);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_1();
  v137 = (v18 - v17);
  v153 = sub_1C840B38C();
  OUTLINED_FUNCTION_5();
  v151 = v19;
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_1();
  v23 = v22 - v21;
  sub_1C840B5EC();
  OUTLINED_FUNCTION_5();
  v148 = v25;
  v149 = v24;
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_1();
  v28 = v27 - v26;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC29E960, &qword_1C8419C00);
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_22();
  v33 = (v31 - v32);
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v136 - v35;
  v154 = sub_1C840C62C();
  OUTLINED_FUNCTION_5();
  v38 = v37;
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_22();
  v136 = (v40 - v41);
  MEMORY[0x1EEE9AC00](v42);
  v152 = &v136 - v43;
  v44 = [objc_allocWithZone(MEMORY[0x1E69E0988]) init];
  v138 = v5;
  v143 = v3;
  v45 = sub_1C840CD9C();
  v155[0] = 0;
  v46 = [v44 colorsForBundleIdentifier:v45 error:v155];

  v146 = v7;
  v147 = v38;
  if (v46)
  {
    v47 = v155[0];
    v48 = v46;
    v49 = [v48 backgroundGradient];
    if (v49)
    {
      v7[2] = v49;
      v50 = [v49 isDark];
      v51 = *(v29 + 48);
      if (v50)
      {
        v52 = MEMORY[0x1E6981DF0];
        v53 = sub_1C840C2CC();
      }

      else
      {
        sub_1C840C2AC();
        v53 = sub_1C840C2DC();

        v52 = MEMORY[0x1E6981DA0];
      }

      v66 = *v52;
      v65 = v147;
      v63 = *(v147 + 104);
      v64 = v154;
      v63(&v36[v51], v66, v154);
      goto LABEL_13;
    }
  }

  else
  {
    v54 = v155[0];
    v55 = sub_1C840B0EC();

    swift_willThrow();
    v56 = v55;
    v7 = v146;
  }

  v58 = v148;
  v57 = v149;
  v7[2] = 0;
  (*(v58 + 104))(v28, *MEMORY[0x1E697DBA8], v57);
  v59 = sub_1C840B5DC();
  (*(v58 + 8))(v28, v57);
  v60 = *(v29 + 48);
  v61 = (v38 + 104);
  if (v59)
  {
    v62 = sub_1C840C2CC();
  }

  else
  {
    v62 = sub_1C840C2AC();
  }

  v53 = v62;
  v63 = *v61;
  v64 = v154;
  (*v61)(&v33[v60], *MEMORY[0x1E6981DF0], v154);
  v36 = v33;
  v65 = v147;
LABEL_13:
  v67 = &v36[*(v29 + 48)];
  v144 = *(v65 + 32);
  v144(v152, v67, v64);
  v68 = v145;
  v69 = v153;
  (*(v151 + 16))(v23, v145, v153);
  v70 = OUTLINED_FUNCTION_12();
  v72 = v71(v70);
  if (v72 != *MEMORY[0x1E6985BB0])
  {
    v97 = v72;
    v98 = *MEMORY[0x1E6985BC0];
    v73 = v53;

    if (v97 == v98)
    {
      v99 = v149;
      v100 = v150;
      if (v46 && (v101 = [v46 backgroundGradient]) != 0)
      {
        v102 = v101;

        v103 = OUTLINED_FUNCTION_34_2();
        v104(v103);
        v105 = OUTLINED_FUNCTION_31_2();
        v106(v105);
        v96 = v146;
        *v146 = v102;
        *(v96 + 8) = 0;
      }

      else
      {
        v123 = v148;
        (*(v148 + 104))(v28, *MEMORY[0x1E697DBB8], v99);
        v124 = sub_1C840B5DC();
        v148 = *(v123 + 8);
        (v148)(v28, v99);
        if ((v124 & 1) == 0)
        {
          sub_1C840C2CC();
          sub_1C840C2DC();
          OUTLINED_FUNCTION_8_7();

          v130 = v142;
          v131 = OUTLINED_FUNCTION_22_4(*(v141 + 36));
          (v63)(v131);
          *v130 = v99;
          sub_1C8317A78();
          OUTLINED_FUNCTION_4_7();
          sub_1C83360A8(v132);
          v133 = v100;
          v110 = sub_1C840B6AC();

          v134 = OUTLINED_FUNCTION_11_7();
          v135(v134);
          (v148)(v133, v149);
          v115 = v130;
          v73 = v53;
          goto LABEL_26;
        }

        sub_1C840C2AC();
        sub_1C840C2DC();
        OUTLINED_FUNCTION_8_7();

        v155[0] = v99;

        v125 = sub_1C840B6AC();

        v126 = OUTLINED_FUNCTION_11_7();
        v127(v126);
        (v148)(v100, v99);
        v96 = v146;
        *v146 = v125;
        OUTLINED_FUNCTION_35_1();
      }
    }

    else
    {
      sub_1C840C2CC();
      v116 = sub_1C840C2DC();

      v155[0] = v116;

      v117 = sub_1C840B6AC();

      v118 = *(v151 + 8);
      v119 = v68;
      v120 = v153;
      v118(v119, v153);
      v121 = OUTLINED_FUNCTION_18_3();
      v122(v121);
      v96 = v146;
      *v146 = v117;
      OUTLINED_FUNCTION_35_1();
      v118(v23, v120);
    }

    v28 = v154;
    goto LABEL_31;
  }

  v73 = v53;

  if (!v46 || (v74 = [v46 backgroundGradient]) == 0)
  {

    sub_1C840C2CC();
    sub_1C840C2DC();
    OUTLINED_FUNCTION_8_7();

    v107 = v142;
    v108 = OUTLINED_FUNCTION_22_4(*(v141 + 36));
    (v63)(v108);
    *v107 = v69;
    sub_1C8317A78();
    OUTLINED_FUNCTION_4_7();
    sub_1C83360A8(v109);
    v110 = sub_1C840B6AC();

    v111 = OUTLINED_FUNCTION_34_2();
    v112(v111);
    v113 = OUTLINED_FUNCTION_18_3();
    v114(v113);
    v115 = v107;
    v73 = v53;
LABEL_26:
    sub_1C832D574(v115, &unk_1EC29E8E0, &unk_1C8415AF0);
    v96 = v146;
    *v146 = v110;
    OUTLINED_FUNCTION_35_1();
LABEL_31:
    v89 = v144;
    goto LABEL_32;
  }

  v75 = MEMORY[0x1E6981DA0];

  LOBYTE(v155[0]) = 1;
  v76 = v137;
  TopHitViewColorScheme.init(bundleIdentifier:style:)(v138, v143, v155);
  v77 = v76[2];
  v78 = v76[3];
  v79 = v76[4];
  v80 = v76[5];

  sub_1C837E580(v76, type metadata accessor for TopHitViewColorScheme);
  v155[0] = v77;
  v155[1] = v78;
  v155[2] = v79;
  v155[3] = v80;
  v81 = TopHitViewIconBackgroundStyle.resolve(in:)(v150);

  v143 = v81;
  v82 = [v81 color];
  v83 = [v82 platformColor];
  v84 = sub_1C840C26C();

  v85 = [v81 blendMode];
  v86 = MEMORY[0x1E6981DB8];
  if (v85 != 1)
  {
    v86 = MEMORY[0x1E6981DF0];
  }

  if (v85 == 2)
  {
    v86 = v75;
  }

  v87 = v136;
  v28 = v154;
  v63(v136, *v86, v154);
  v88 = v139;
  v89 = v144;
  v144(v139 + *(v141 + 36), v87, v28);
  *v88 = v84;
  sub_1C8317A78();
  OUTLINED_FUNCTION_4_7();
  sub_1C83360A8(v90);
  v91 = sub_1C840B6AC();

  v92 = OUTLINED_FUNCTION_11_7();
  v93(v92);
  v94 = OUTLINED_FUNCTION_18_3();
  v95(v94);
  sub_1C832D574(v88, &unk_1EC29E8E0, &unk_1C8415AF0);
  v96 = v146;
  *v146 = v91;
  OUTLINED_FUNCTION_35_1();
LABEL_32:
  v128 = (v96 + *(type metadata accessor for AppShortcutIndexedSearchView.DerivedStyles(0) + 24));
  *v128 = v73;
  v129 = type metadata accessor for TopHitViewTextStyle.Resolved(0);
  v89(v128 + *(v129 + 20), v152, v28);
  OUTLINED_FUNCTION_27_0();
}

void sub_1C83775DC(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1C840B38C();
  OUTLINED_FUNCTION_5();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_1();
  (*(v6 + 16))(v9 - v8, a1, v4);
  v10 = OUTLINED_FUNCTION_31_2();
  v12 = v11(v10);
  if (v12 == *MEMORY[0x1E6985BB0])
  {
    v13 = 0;
    v14 = xmmword_1C8419260;
    v15 = 14.0;
    v16 = 0x402C000000000000;
    v17 = 0x4032000000000000;
    v18 = 0x402C000000000000;
  }

  else if (v12 == *MEMORY[0x1E6985BC0])
  {
    v19 = [objc_opt_self() mainScreen];
    [v19 bounds];
    v21 = v20;
    v23 = v22;
    v25 = v24;
    v27 = v26;

    v32.origin.x = v21;
    v32.origin.y = v23;
    v32.size.width = v25;
    v32.size.height = v27;
    Width = CGRectGetWidth(v32);
    v17 = 0;
    v13 = 0;
    v29 = Width <= 414.0;
    v15 = 16.0;
    if (!v29)
    {
      v15 = 20.0;
    }

    v14 = xmmword_1C8419250;
    v18 = 0x402C000000000000;
    v16 = 0x4030000000000000;
  }

  else
  {
    if (v12 != *MEMORY[0x1E6985BB8])
    {
      v30 = OUTLINED_FUNCTION_31_2();
      v31(v30);
    }

    v17 = 0;
    v16 = 0;
    v18 = 0;
    v13 = 1;
    v14 = 0uLL;
    v15 = 0.0;
  }

  *a2 = v17;
  *(a2 + 8) = v16;
  *(a2 + 16) = v15;
  *(a2 + 24) = v16;
  *(a2 + 32) = v15;
  *(a2 + 40) = v14;
  *(a2 + 56) = v18;
  *(a2 + 64) = v13;
}

uint64_t sub_1C8377810@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v93 = a3;
  v96 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29E808, &qword_1C8419AE0);
  v98 = *(v6 - 8);
  v99 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v97 = &v77 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v95 = &v77 - v9;
  v10 = sub_1C840C62C();
  v90 = *(v10 - 8);
  v91 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v89 = &v77 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = sub_1C840B38C();
  v85 = *(v86 - 8);
  MEMORY[0x1EEE9AC00](v86);
  v84 = &v77 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v83 = &v77 - v14;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29E810, &qword_1C8419AE8);
  MEMORY[0x1EEE9AC00](v88);
  v94 = &v77 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v77 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v102 = &v77 - v20;
  v87 = type metadata accessor for AppShortcutIndexedSearchView.DerivedStyles(0);
  v79 = *(v87 - 8);
  MEMORY[0x1EEE9AC00](v87);
  v101 = sub_1C840B5EC();
  v21 = *(v101 - 1);
  MEMORY[0x1EEE9AC00](v101);
  v82 = &v77 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = (&v77 - v24);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29E818, &qword_1C8419AF0);
  v27 = (v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v92 = &v77 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v31 = (&v77 - v30);
  v78 = sub_1C8376290();
  v103 = a1;
  sub_1C8376088(v25);
  v32 = (a1 + *(type metadata accessor for AppShortcutIndexedSearchView(0) + 36));
  v34 = *v32;
  v33 = v32[1];
  KeyPath = v34;
  v80 = v33;
  v100 = a2;
  sub_1C837E5F8();
  v35 = swift_allocObject();
  sub_1C837FA98();
  *v31 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29D2F0, &qword_1C84152A0);
  swift_storeEnumTagMultiPayload();
  v36 = (v31 + v27[13]);
  v37 = v78;
  *(v31 + v27[12]) = v78;
  *v36 = xmmword_1C8415220;
  v36[1] = xmmword_1C8419270;
  v38 = (v31 + v27[14]);
  *v38 = sub_1C837FAF0;
  v38[1] = v35;
  v39 = v82;
  v40 = v101;
  (*(v21 + 16))(v82, v25, v101);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29E820, &qword_1C8419AF8);
  swift_allocObject();
  v41 = v80;

  v42 = v37;
  v43 = sub_1C837BD14(v42, KeyPath, v41, v39, 60.0, 20.0, 28.0, 7.0);
  (*(v21 + 8))(v25, v40);
  v44 = v27[11];
  v101 = v31;
  *(v31 + v44) = v43;
  KeyPath = swift_getKeyPath();
  v82 = sub_1C840BBAC();
  v45 = v83;
  sub_1C837DED0();
  v46 = *MEMORY[0x1E6985BB0];
  v47 = v85;
  v48 = v84;
  v49 = v86;
  v79 = *(v85 + 104);
  v79(v84, v46, v86);
  LOBYTE(v37) = sub_1C840B37C();
  v50 = *(v47 + 8);
  v50(v48, v49);
  v50(v45, v49);
  v51 = 0;
  if (v37)
  {
  }

  v85 = v51;
  v80 = swift_getKeyPath();
  sub_1C837DED0();
  v79(v48, v46, v49);
  v52 = sub_1C840B37C();
  v50(v48, v49);
  v50(v45, v49);
  if (v52)
  {
    v53 = v100;
    v54 = v100 + *(v87 + 24);
    v55 = type metadata accessor for TopHitViewTextStyle.Resolved(0);
    v57 = v89;
    v56 = v90;
    v58 = v91;
    (*(v90 + 16))(v89, v54 + *(v55 + 20), v91);
  }

  else
  {
    v57 = v89;
    v56 = v90;
    v58 = v91;
    (*(v90 + 104))(v89, *MEMORY[0x1E6981DF0], v91);
    v53 = v100;
  }

  v59 = v93;
  v60 = *(v93 + 48);
  v105 = 0;
  (*(v56 + 32))(&v18[*(v88 + 36)], v57, v58);
  *v18 = KeyPath;
  v18[8] = v105;
  *(v18 + 9) = *v104;
  *(v18 + 3) = *&v104[3];
  *(v18 + 2) = v60;
  *(v18 + 3) = v82;
  *(v18 + 4) = sub_1C83785B8;
  v61 = v80;
  *(v18 + 5) = 0;
  *(v18 + 6) = v61;
  *(v18 + 7) = v85;
  v62 = sub_1C832247C();
  MEMORY[0x1EEE9AC00](v62);
  *(&v77 - 2) = v103;
  MEMORY[0x1EEE9AC00](v63);
  *(&v77 - 4) = v64;
  *(&v77 - 3) = v53;
  *(&v77 - 2) = v59;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29E828, &qword_1C8419B00);
  type metadata accessor for AppShortcutPlatterMenu(0);
  sub_1C837FB70();
  sub_1C837E6E0(&unk_1EC29CCD0);
  v65 = v95;
  sub_1C840C00C();
  v66 = v92;
  sub_1C8317A78();
  v67 = v94;
  sub_1C8317A78();
  v69 = v97;
  v68 = v98;
  v70 = *(v98 + 16);
  v71 = v99;
  v70(v97, v65, v99);
  v72 = v96;
  sub_1C8317A78();
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29E8C8, &qword_1C8419B48);
  sub_1C8317A78();
  v74 = v72 + *(v73 + 64);
  *v74 = 0;
  *(v74 + 8) = 1;
  v70((v72 + *(v73 + 80)), v69, v71);
  v75 = *(v68 + 8);
  v75(v65, v71);
  sub_1C832D574(v102, &qword_1EC29E810, &qword_1C8419AE8);
  sub_1C832D574(v101, &qword_1EC29E818, &qword_1C8419AF0);
  v75(v69, v71);
  sub_1C832D574(v67, &qword_1EC29E810, &qword_1C8419AE8);
  return sub_1C832D574(v66, &qword_1EC29E818, &qword_1C8419AF0);
}

uint64_t sub_1C8378368(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29E958, &qword_1C8419BF8);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v9 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC29E938, &unk_1C8419BD0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v9 - v6;
  if (a1[1])
  {
    *v4 = *a1;
    *(v4 + 4) = 256;
    swift_storeEnumTagMultiPayload();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29E948, &qword_1C8419BF0);
    sub_1C83801A4();
    sub_1C83360A8(&unk_1EC29CAF0);
    return sub_1C840BC6C();
  }

  else
  {
    sub_1C8379B78(*a1, (&v9 - v6));
    sub_1C8317A78();
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29E948, &qword_1C8419BF0);
    sub_1C83801A4();
    sub_1C83360A8(&unk_1EC29CAF0);
    sub_1C840BC6C();
    return sub_1C832D574(v7, &unk_1EC29E938, &unk_1C8419BD0);
  }
}

double sub_1C83785E0@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for AppShortcutIndexedSearchView(0);
  v5 = *(v4 + 32);
  v6 = (a1 + *(v4 + 28));
  v8 = *v6;
  v7 = v6[1];
  v10 = *(a1 + v5);
  v9 = *(a1 + v5 + 8);
  *a2 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29E8F0, &unk_1C84164E0);
  swift_storeEnumTagMultiPayload();
  v11 = type metadata accessor for AppShortcutPlatterMenu(0);
  v12 = a2 + v11[5];
  *v12 = swift_getKeyPath();
  v12[8] = 0;
  v13 = (a2 + v11[6]);
  *v13 = v8;
  v13[1] = v7;
  v14 = (a2 + v11[7]);
  *v14 = v10;
  v14[1] = v9;

  return result;
}

uint64_t sub_1C83786C8@<X0>(uint64_t *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v76 = a2;
  v69 = a1;
  v81 = a3;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC29E8B0, &unk_1C8415780);
  MEMORY[0x1EEE9AC00](v80);
  v65 = (&v62 - v3);
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC29E8D0, &qword_1C8419B50);
  MEMORY[0x1EEE9AC00](v78);
  v79 = &v62 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29D4C0, &qword_1C84157B0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v73 = &v62 - v6;
  v72 = sub_1C840C3EC();
  v71 = *(v72 - 8);
  MEMORY[0x1EEE9AC00](v72);
  v70 = &v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC29E840, &qword_1C8419B10);
  MEMORY[0x1EEE9AC00](v77);
  v74 = &v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v75 = &v62 - v10;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC29E8E0, &unk_1C8415AF0);
  MEMORY[0x1EEE9AC00](v64);
  v63 = (&v62 - v11);
  v68 = sub_1C840B5EC();
  v67 = *(v68 - 8);
  MEMORY[0x1EEE9AC00](v68);
  v66 = &v62 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v62 - v14;
  v16 = sub_1C840B38C();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v62 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v62 - v21;
  sub_1C837DED0();
  v23 = *(v17 + 104);
  v23(v19, *MEMORY[0x1E6985BB0], v16);
  v24 = sub_1C840B37C();
  v25 = *(v17 + 8);
  v25(v19, v16);
  v25(v22, v16);
  if (v24)
  {
    if (v69[2] && *(v69 + 8) == 1)
    {
      v26 = *v69;

      v27 = sub_1C840C2CC();
    }

    else
    {
      sub_1C837690C(v15);
      v38 = v67;
      v39 = v66;
      v40 = v68;
      (*(v67 + 104))(v66, *MEMORY[0x1E697DBB8], v68);
      v41 = sub_1C840B5DC();
      v42 = *(v38 + 8);
      v42(v39, v40);
      v42(v15, v40);
      if (v41)
      {
        v27 = sub_1C840C2AC();
        sub_1C840C2AC();
        v43 = sub_1C840C2DC();

        *&__src[0] = v43;
      }

      else
      {
        v27 = sub_1C840C2CC();
        sub_1C840C2CC();
        v45 = sub_1C840C2DC();

        v46 = *(v64 + 36);
        v47 = *MEMORY[0x1E6981DB8];
        v48 = sub_1C840C62C();
        v49 = v63;
        (*(*(v48 - 8) + 104))(v63 + v46, v47, v48);
        *v49 = v45;
        sub_1C83360A8(&qword_1EC29C930);
      }

      v26 = sub_1C840B6AC();
    }

    sub_1C840C3DC();
    v50 = v71;
    v51 = v70;
    v52 = v72;
    (*(v71 + 104))(v70, *MEMORY[0x1E6981630], v72);
    sub_1C840C46C();

    (*(v50 + 8))(v51, v52);
    v53 = v73;
    sub_1C840BC1C();
    v54 = sub_1C840BC2C();
    __swift_storeEnumTagSinglePayload(v53, 0, 1, v54);
    v55 = sub_1C840C43C();

    sub_1C832D574(v53, &qword_1EC29D4C0, &qword_1C84157B0);

    sub_1C840C5FC();
    sub_1C840B69C();
    sub_1C840C5FC();
    sub_1C840B8CC();
    v83 = 0;
    v56 = v74;
    v57 = &v74[*(v77 + 36)];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC29E8A0, &qword_1C8415790);
    sub_1C840B90C();
    *v57 = 0;
    *v56 = v55;
    *(v56 + 1) = v27;
    *(v56 + 2) = v26;
    v58 = __src[8];
    *(v56 + 24) = __src[7];
    *(v56 + 40) = v58;
    *(v56 + 56) = __src[9];
    memcpy(v56 + 72, __src, 0x70uLL);
    *(v56 + 23) = 0x3FF0000000000000;
    *(v56 + 96) = 0;
    v59 = v75;
    sub_1C832247C();
    sub_1C8317A78();
    swift_storeEnumTagMultiPayload();
    sub_1C837FC80();
    sub_1C83359B4();
    v60 = v81;
    sub_1C840BC6C();

    sub_1C832D574(v59, &unk_1EC29E840, &qword_1C8419B10);
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC29E830, &qword_1C8419B08);
    v37 = v60;
    goto LABEL_13;
  }

  sub_1C837DED0();
  v23(v19, *MEMORY[0x1E6985BC0], v16);
  v28 = sub_1C840B37C();
  v25(v19, v16);
  v25(v22, v16);
  if (v28)
  {
    v29 = *(v76 + 40);
    KeyPath = swift_getKeyPath();
    v31 = v65;
    *v65 = KeyPath;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29E6B0, &qword_1C8415D10);
    swift_storeEnumTagMultiPayload();
    *(v31 + *(type metadata accessor for SizedEllipsis(0) + 20)) = v29;
    sub_1C840C61C();
    sub_1C840B69C();
    v32 = (v31 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29E8C0, &qword_1C8419B40) + 36));
    v33 = __src[1];
    *v32 = __src[0];
    v32[1] = v33;
    v32[2] = __src[2];
    v34 = (v31 + *(v80 + 36));
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC29E8A0, &qword_1C8415790);
    sub_1C840B90C();
    *v34 = 0;
    sub_1C8317A78();
    swift_storeEnumTagMultiPayload();
    sub_1C837FC80();
    sub_1C83359B4();
    v35 = v81;
    sub_1C840BC6C();
    sub_1C832D574(v31, &unk_1EC29E8B0, &unk_1C8415780);
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC29E830, &qword_1C8419B08);
    v37 = v35;
LABEL_13:
    v44 = 0;
    return __swift_storeEnumTagSinglePayload(v37, v44, 1, v36);
  }

  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC29E830, &qword_1C8419B08);
  v37 = v81;
  v44 = 1;
  return __swift_storeEnumTagSinglePayload(v37, v44, 1, v36);
}

uint64_t sub_1C8379228()
{
  v1 = sub_1C840B5EC();
  v27 = *(v1 - 8);
  v28 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v25 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v24 = &v24 - v4;
  v29 = sub_1C840BB2C();
  v5 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29D2F0, &qword_1C84152A0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v24 - v9;
  v11 = sub_1C840B38C();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = v0;
  sub_1C8317A78();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v12 + 32))(v14, v10, v11);
  }

  else
  {
    sub_1C840D17C();
    v15 = sub_1C840BD9C();
    sub_1C840B3CC();

    sub_1C840BB1C();
    swift_getAtKeyPath();

    (*(v5 + 8))(v7, v29);
  }

  v16 = (*(v12 + 88))(v14, v11);
  if (v16 == *MEMORY[0x1E6985BB0])
  {
    return sub_1C840C2CC();
  }

  if (v16 == *MEMORY[0x1E6985BC0])
  {
    v18 = v24;
    sub_1C837690C(v24);
    v20 = v27;
    v19 = v28;
    v21 = v25;
    (*(v27 + 104))(v25, *MEMORY[0x1E697DBA8], v28);
    v22 = sub_1C840B5DC();
    v23 = *(v20 + 8);
    v23(v21, v19);
    v23(v18, v19);
    if (v22)
    {
      return sub_1C840C2CC();
    }

    return sub_1C840C2AC();
  }

  else
  {
    if (v16 != *MEMORY[0x1E6985BB8])
    {
      (*(v12 + 8))(v14, v11);
    }

    return 0;
  }
}

uint64_t sub_1C8379624@<X0>(uint64_t *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v43 = a1;
  v44 = a2;
  v48 = a3;
  v3 = sub_1C840B8AC();
  v45 = *(v3 - 8);
  v4 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v46 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = (&v42 - v6);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29D5D8, &unk_1C8415950);
  MEMORY[0x1EEE9AC00](v47);
  v9 = (&v42 - v8);
  v10 = sub_1C840B38C();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v42 - v15;
  sub_1C837DED0();
  (*(v11 + 104))(v13, *MEMORY[0x1E6985BB0], v10);
  v17 = sub_1C840B37C();
  v18 = *(v11 + 8);
  v18(v13, v10);
  v18(v16, v10);
  if (v17)
  {
    v19 = *v43;
    v20 = *(v3 + 20);
    v21 = *MEMORY[0x1E697F468];
    v22 = sub_1C840BB8C();
    (*(*(v22 - 8) + 104))(v7 + v20, v21, v22);
    *v7 = v19;
    v7[1] = v19;
    v23 = *(v44 + 16);
    if (v23)
    {
      v24 = *(v44 + 16);
    }

    else
    {
      v27 = [objc_opt_self() clearColor];
      v24 = [objc_allocWithZone(MEMORY[0x1E69E0B18]) initWithColor_];
    }

    sub_1C837E5F8();
    v28 = swift_allocObject();
    sub_1C837FA98();
    *v9 = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29E6B0, &qword_1C8415D10);
    swift_storeEnumTagMultiPayload();
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC29E7D0, &unk_1C8417890);
    v30 = v29[9];
    *(v9 + v30) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29D5A0, &qword_1C8415910);
    swift_storeEnumTagMultiPayload();
    *(v9 + v29[10]) = v24;
    v31 = (v9 + v29[11]);
    *v31 = sub_1C837FA10;
    v31[1] = v28;
    v32 = v24;
    v33 = v23;
    Gradient.init(_:)(v32);
    sub_1C840B78C();
    v34 = v9 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC29E7E0, &unk_1C8415960) + 36);
    v35 = &v34[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29D5E0, &unk_1C8417920) + 36)];
    sub_1C837E5F8();
    *&v35[*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC29E7F0, &unk_1C8415970) + 36)] = 256;
    v36 = v50;
    *v34 = v49;
    *(v34 + 1) = v36;
    *(v34 + 4) = v51;
    v37 = sub_1C840C5FC();
    v39 = v38;

    sub_1C837E580(v7, MEMORY[0x1E697EAF0]);
    v40 = &v34[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29D5E8, &unk_1C8419AD0) + 36)];
    *v40 = v37;
    v40[1] = v39;
    v26 = v48;
    sub_1C832247C();
    v25 = 0;
  }

  else
  {
    v25 = 1;
    v26 = v48;
  }

  return __swift_storeEnumTagSinglePayload(v26, v25, 1, v47);
}

uint64_t sub_1C8379B78@<X0>(void *a1@<X0>, uint64_t *a3@<X8>)
{
  *a3 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29E6B0, &qword_1C8415D10);
  swift_storeEnumTagMultiPayload();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29D598, &unk_1C8419BE0);
  v6 = v5[9];
  *(a3 + v6) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29D5A0, &qword_1C8415910);
  swift_storeEnumTagMultiPayload();
  *(a3 + v5[10]) = a1;
  v7 = (a3 + v5[11]);
  *v7 = sub_1C8380368;
  v7[1] = 0;
  sub_1C831A820(a1, v20);
  v8 = v20[0];
  v9 = v20[1];
  v10 = v20[2];
  v11 = v20[3];
  v12 = v20[4];
  v13 = sub_1C840C5FC();
  v15 = v14;
  *&v21 = v8;
  *(&v21 + 1) = v9;
  *&v22 = v10;
  *(&v22 + 1) = v11;
  *&v23 = v12;
  WORD4(v23) = 256;
  *&v24 = v13;
  *(&v24 + 1) = v14;
  v16 = (a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29D5A8, &qword_1C8415918) + 36));
  v17 = v22;
  *v16 = v21;
  v16[1] = v17;
  v18 = v24;
  v16[2] = v23;
  v16[3] = v18;
  v25[0] = v8;
  v25[1] = v9;
  v25[2] = v10;
  v25[3] = v11;
  v25[4] = v12;
  v26 = 256;
  v27 = v13;
  v28 = v15;

  sub_1C8317A78();
  sub_1C832D574(v25, &qword_1EC29D5B0, &unk_1C8415920);
}

void AppShortcutIndexedSearchView.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29E6F8, &qword_1C8419390);
  OUTLINED_FUNCTION_5();
  v30 = v5;
  v31 = v4;
  OUTLINED_FUNCTION_3_2();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v29 - v7;
  v9 = type metadata accessor for AppShortcutIndexedSearchView(0);
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_1();
  v13 = (v12 - v11);
  *v13 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29D2F0, &qword_1C84152A0);
  swift_storeEnumTagMultiPayload();
  v14 = v9[5];
  *(v13 + v14) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29E6B0, &qword_1C8415D10);
  swift_storeEnumTagMultiPayload();
  v15 = v13 + v9[6];
  KeyPath = swift_getKeyPath();
  *v15 = KeyPath;
  v15[8] = 0;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C837E52C();
  sub_1C840D7EC();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    sub_1C832D574(v13, &qword_1EC29D330, &unk_1C8415340);
    sub_1C832D574(v13 + v14, &qword_1EC29E700, &unk_1C8415A30);
  }

  else
  {
    v16 = v30;
    v17 = v31;
    v35 = 0;
    v18 = OUTLINED_FUNCTION_25_4(&v35);
    v19 = (v13 + v9[7]);
    *v19 = v18;
    v19[1] = v20;
    v34 = 1;
    v21 = OUTLINED_FUNCTION_25_4(&v34);
    v22 = (v13 + v9[8]);
    *v22 = v21;
    v22[1] = v23;
    v33 = 2;
    v24 = OUTLINED_FUNCTION_25_4(&v33);
    v25 = v8;
    v27 = v26;
    (*(v16 + 8))(v25, v17);
    v28 = (v13 + v9[9]);
    *v28 = v24;
    v28[1] = v27;
    sub_1C837E5F8();
    __swift_destroy_boxed_opaque_existential_1(a1);
    sub_1C837E580(v13, type metadata accessor for AppShortcutIndexedSearchView);
  }
}

uint64_t AppShortcutIndexedSearchView.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29E708, &qword_1C8419398);
  OUTLINED_FUNCTION_5();
  v6 = v5;
  OUTLINED_FUNCTION_3_2();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_20_1();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C837E52C();
  sub_1C840D7FC();
  type metadata accessor for AppShortcutIndexedSearchView(0);
  v14[1] = 0;
  v8 = sub_1C840D60C();
  if (!v1)
  {
    v14[0] = 1;
    v13 = 2;
    v10 = OUTLINED_FUNCTION_23_3(v8, v9, v14);
    OUTLINED_FUNCTION_23_3(v10, v11, &v13);
  }

  return (*(v6 + 8))(v2, v4);
}

unint64_t sub_1C837A23C()
{
  sub_1C840D54C();
  OUTLINED_FUNCTION_8_7();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1C837A284(char a1)
{
  if (!a1)
  {
    return 0x6953657361726870;
  }

  if (a1 == 1)
  {
    return 0xD000000000000010;
  }

  return 0xD00000000000001DLL;
}

unint64_t sub_1C837A318@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C837A23C();
  *a1 = result;
  return result;
}

uint64_t sub_1C837A348@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C837A284(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_1C837A37C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C837A23C();
  *a1 = result;
  return result;
}

uint64_t sub_1C837A3A4(uint64_t a1)
{
  v2 = sub_1C837E52C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C837A3E0(uint64_t a1)
{
  v2 = sub_1C837E52C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1C837A41C()
{
  OUTLINED_FUNCTION_26_4();
  v27 = v0;
  v28 = v1;
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC29E758, &qword_1C8419990);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC29E760, &qword_1C8419998);
  v26[0] = *(v3 + 16);
  type metadata accessor for SpotlightUiShadow(255);
  OUTLINED_FUNCTION_17_0();
  sub_1C840B85C();
  v4 = *(v3 + 24);
  OUTLINED_FUNCTION_3_8();
  v34 = v4;
  v35 = sub_1C837E6E0(v5);
  OUTLINED_FUNCTION_1_1();
  v26[1] = v6;
  swift_getWitnessTable();
  OUTLINED_FUNCTION_17_0();
  sub_1C840BC4C();
  OUTLINED_FUNCTION_17_0();
  sub_1C840B85C();
  OUTLINED_FUNCTION_5_9();
  sub_1C840BC7C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC29E770, &qword_1C84199A0);
  OUTLINED_FUNCTION_5_9();
  sub_1C840BC7C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC29E778, &unk_1C84199A8);
  OUTLINED_FUNCTION_5_9();
  swift_getTupleTypeMetadata2();
  sub_1C840C63C();
  OUTLINED_FUNCTION_1_3();
  swift_getWitnessTable();
  v7 = sub_1C840C59C();
  OUTLINED_FUNCTION_5();
  v9 = v8;
  OUTLINED_FUNCTION_3_2();
  MEMORY[0x1EEE9AC00](v10);
  v12 = v26 - v11;
  v13 = sub_1C840B85C();
  OUTLINED_FUNCTION_5();
  v15 = v14;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_22();
  v19 = v17 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = v26 - v21;
  sub_1C840C5EC();
  v29 = v26[0];
  v30 = v4;
  v31 = v27;
  sub_1C840C58C();
  OUTLINED_FUNCTION_8();
  WitnessTable = swift_getWitnessTable();
  sub_1C837B9BC(v7, WitnessTable);
  (*(v9 + 8))(v12, v7);
  v32 = WitnessTable;
  v33 = MEMORY[0x1E697EBE0];
  v24 = swift_getWitnessTable();
  sub_1C8317B60(v19, v13, v24);
  v25 = *(v15 + 8);
  v25(v19, v13);
  sub_1C8317B60(v22, v13, v24);
  v25(v22, v13);
  OUTLINED_FUNCTION_27_0();
}

uint64_t sub_1C837A754@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v156 = a4;
  v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29E780, &unk_1C84158D0);
  MEMORY[0x1EEE9AC00](v153);
  v142 = &v134 - v7;
  v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29E778, &unk_1C84199A8);
  MEMORY[0x1EEE9AC00](v154);
  v155 = &v134 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v162 = &v134 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC29E760, &qword_1C8419998);
  v158 = type metadata accessor for SpotlightUiShadow(255);
  v12 = sub_1C840B85C();
  v13 = sub_1C837E6E0(&unk_1EC29CCF8);
  v188 = a3;
  v189 = v13;
  WitnessTable = swift_getWitnessTable();
  v137 = v12;
  v14 = sub_1C840BC4C();
  v138 = v11;
  v161 = v14;
  v15 = sub_1C840B85C();
  v139 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v140 = &v134 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v134 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC29E758, &qword_1C8419990);
  v159 = v15;
  v21 = sub_1C840BC7C();
  v146 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v145 = &v134 - v22;
  v141 = sub_1C840C3EC();
  v23 = *(v141 - 1);
  MEMORY[0x1EEE9AC00](v141);
  v25 = &v134 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v144 = v20;
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v134 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC29E770, &qword_1C84199A0);
  v160 = v21;
  v147 = v29;
  v30 = sub_1C840BC7C();
  v151 = *(v30 - 8);
  v152 = v30;
  MEMORY[0x1EEE9AC00](v30);
  v150 = &v134 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v149 = &v134 - v33;
  v34 = a2;
  v35 = a2;
  v36 = a3;
  v38 = type metadata accessor for AppShortcutIndexedSearchView.BadgedIconView(0, v35, a3, v37);
  v39 = a1;
  v157 = *(a1 + *(v38 + 36));
  v40 = sub_1C837B9D0();
  v148 = v38;
  if (v40)
  {
    v140 = v40;
    WFImage.image.getter();
    v41 = v141;
    (*(v23 + 104))(v25, *MEMORY[0x1E6981630], v141);
    v42 = sub_1C840C46C();

    (*(v23 + 8))(v25, v41);
    v143 = a1;
    sub_1C840C5FC();
    sub_1C840B69C();
    LOBYTE(v174[0]) = 1;
    *&v167[6] = v172[0];
    *&v167[22] = v172[1];
    *&v167[38] = v172[2];
    v43 = v157;
    v44 = v157[7];
    v45 = v144;
    v46 = &v28[*(v144 + 36)];
    *v46 = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29D2F0, &qword_1C84152A0);
    swift_storeEnumTagMultiPayload();
    v47 = v158;
    *(v46 + *(v158 + 20)) = 0x3FA999999999999ALL;
    *(v46 + *(v47 + 24)) = 0x4020000000000000;
    v48 = *&v167[16];
    *(v28 + 18) = *v167;
    *v28 = v42;
    *(v28 + 1) = 0;
    *(v28 + 8) = 257;
    *(v28 + 34) = v48;
    *(v28 + 50) = *&v167[32];
    *(v28 + 8) = *&v167[46];
    *(v28 + 9) = v44;
    *(v28 + 40) = 256;
    v49 = sub_1C837F894(&unk_1EC29C9C8);
    v50 = sub_1C837F5A8();

    v51 = swift_getWitnessTable();
    v165 = v50;
    v166 = v51;
    v52 = v159;
    v53 = swift_getWitnessTable();
    v54 = v145;
    sub_1C832271C(v28, v45, v52, v49, v53, v55, v56, v57, v134, v135, WitnessTable, v137, v138, v139, v140, v141, v142, v143);
    v163 = v49;
    v164 = v53;
    v58 = v160;
    v59 = swift_getWitnessTable();
    v60 = sub_1C837F6EC();
    v61 = v149;
    sub_1C832271C(v54, v58, v147, v59, v60, v62, v63, v64, v134, v135, WitnessTable, v137, v138, v139, v140, v141, v142, v143);

    (*(v146 + 8))(v54, v58);
    sub_1C832D574(v28, &qword_1EC29E758, &qword_1C8419990);
    v65 = v143;
    v66 = v61;
    v67 = v43;
  }

  else
  {
    v135 = v36;
    v141 = v19;
    v68 = v140;
    v69 = v157;
    v70 = v157[5];
    if (v70)
    {
      v71 = v157[4];
      v72 = *(v148 + 44);
      v143 = v39;
      v73 = *(v39 + v72 + 16);

      sub_1C840BF0C();
      v75 = v74;
      KeyPath = swift_getKeyPath();
      sub_1C840C5FC();
      sub_1C840B69C();
      LOBYTE(v174[0]) = 0;
      v77 = v69[6];
      v78 = [v77 platformColor];
      v79 = sub_1C840C26C();

      v80 = swift_getKeyPath();
      *&v172[0] = KeyPath;
      BYTE8(v172[0]) = 0;
      *&v172[1] = v71;
      *(&v172[1] + 1) = v70;
      *&v172[2] = v73;
      *(&v172[2] + 1) = v75;
      v172[3] = v173[0];
      v172[4] = v173[1];
      v172[5] = v173[2];
      *&v172[6] = v80;
      *(&v172[6] + 1) = v79;
      MEMORY[0x1EEE9AC00](v80);
      v81 = v135;
      *(&v134 - 4) = v34;
      *(&v134 - 3) = v81;
      *(&v134 - 2) = v39;
      v82 = sub_1C837F5A8();
      sub_1C840C5FC();
      v83 = v68;
      sub_1C840C0BC();
      memcpy(v174, v172, sizeof(v174));
      sub_1C832D574(v174, &unk_1EC29E760, &qword_1C8419998);
      v84 = swift_getWitnessTable();
      v170 = v82;
      v171 = v84;
      v85 = v159;
      v86 = swift_getWitnessTable();
      v87 = v141;
      sub_1C8317B60(v83, v85, v86);
      v88 = *(v139 + 8);
      v88(v83, v85);
      sub_1C8317B60(v87, v85, v86);
      v89 = sub_1C837F894(&unk_1EC29C9C8);
      v90 = v145;
      sub_1C8322590(v83, v144, v85, v89, v86, v91, v92, v93, v134, v135, WitnessTable, v137, v138, v139, v140, v141, v142, v143);
      v168 = v89;
      v169 = v86;
      v94 = v160;
      v95 = swift_getWitnessTable();
      v96 = sub_1C837F6EC();
      v66 = v149;
      sub_1C832271C(v90, v94, v147, v95, v96, v97, v98, v99, v134, v135, WitnessTable, v137, v138, v139, v140, v141, v142, v143);
      (*(v146 + 8))(v90, v94);
      v88(v83, v85);
      v88(v87, v85);
      v65 = v143;
      v67 = v157;
    }

    else
    {
      v100 = sub_1C840C2BC();
      v65 = v39;
      sub_1C840C5FC();
      sub_1C840B69C();
      *&v174[0] = v100;
      *(&v174[0] + 1) = *&v172[0];
      LOBYTE(v174[1]) = BYTE8(v172[0]);
      *(&v174[1] + 1) = *&v172[1];
      LOBYTE(v174[2]) = BYTE8(v172[1]);
      *(&v174[2] + 8) = v172[2];
      v101 = sub_1C837F894(&unk_1EC29C9C8);
      v102 = sub_1C837F5A8();
      v103 = swift_getWitnessTable();
      v186 = v102;
      v187 = v103;
      v104 = swift_getWitnessTable();
      v184 = v101;
      v185 = v104;
      v105 = v160;
      v106 = swift_getWitnessTable();
      v107 = sub_1C837F6EC();
      v66 = v149;
      sub_1C8322590(v174, v105, v147, v106, v107, v108, v109, v110, v134, v135, WitnessTable, v137, v138, v139, v140, v141, v142, v143);

      v67 = v69;
    }
  }

  v111 = v67[3];
  v112 = v162;
  if (v111)
  {
    v113 = v148;
    v114 = *(v65 + *(v148 + 44) + 8);
    *&v174[2] = swift_getKeyPath();
    BYTE8(v174[2]) = 0;
    *&v174[3] = swift_getKeyPath();
    BYTE8(v174[5]) = 0;
    v182 = 0;
    v115 = v111;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29E7B0, &qword_1C84158C0);
    sub_1C840C50C();
    v174[6] = v173[0];
    *&v174[0] = v115;
    *(&v174[0] + 1) = v114;
    *&v174[1] = 0;
    BYTE8(v174[1]) = 64;
    v175 = 0;
    if (qword_1EC29CD08 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v158, qword_1EC29CD10);
    v116 = v142;
    sub_1C83361FC(v174, v142);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC29E7A0, &qword_1C84157F0);
    sub_1C837E5F8();
    sub_1C8336258(v174);
    v117 = *(v65 + *(v113 + 44)) + *(v65 + *(v113 + 44) + 8) * -0.5 + 3.0;
    v118 = v153;
    v119 = (v116 + *(v153 + 36));
    *v119 = v117;
    v119[1] = v117;
    sub_1C832247C();
    v120 = 0;
  }

  else
  {
    v120 = 1;
    v118 = v153;
  }

  __swift_storeEnumTagSinglePayload(v112, v120, 1, v118);
  v122 = v150;
  v121 = v151;
  v123 = v152;
  (*(v151 + 16))(v150, v66, v152);
  *&v174[0] = v122;
  v124 = v155;
  sub_1C8317A78();
  *(&v174[0] + 1) = v124;
  *&v173[0] = v123;
  *(&v173[0] + 1) = v154;
  v125 = sub_1C837F894(&unk_1EC29C9C8);
  v126 = v66;
  v127 = sub_1C837F5A8();
  v128 = swift_getWitnessTable();
  v180 = v127;
  v181 = v128;
  v129 = swift_getWitnessTable();
  v178 = v125;
  v179 = v129;
  v130 = swift_getWitnessTable();
  v131 = sub_1C837F6EC();
  v176 = v130;
  v177 = v131;
  v182 = swift_getWitnessTable();
  v183 = sub_1C837F770(&unk_1EC29CA48);
  sub_1C8375E44(v174, 2, v173);
  sub_1C832D574(v162, &qword_1EC29E778, &unk_1C84199A8);
  v132 = *(v121 + 8);
  v132(v126, v123);
  sub_1C832D574(v124, &qword_1EC29E778, &unk_1C84199A8);
  return (v132)(v122, v123);
}

uint64_t sub_1C837B68C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v26 = a1;
  v28 = a4;
  v6 = type metadata accessor for SpotlightUiShadow(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = (&v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v27 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1C840B85C();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v25 - v17;
  v20 = type metadata accessor for AppShortcutIndexedSearchView.BadgedIconView(0, a2, a3, v19);
  (*(v26 + *(v20 + 48)))();
  *v8 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29D2F0, &qword_1C84152A0);
  swift_storeEnumTagMultiPayload();
  *(v8 + *(v6 + 20)) = 0x3FA999999999999ALL;
  *(v8 + *(v6 + 24)) = 0x4020000000000000;
  MEMORY[0x1CCA74BF0](v8, a2, v6, a3);
  sub_1C837E580(v8, type metadata accessor for SpotlightUiShadow);
  (*(v27 + 8))(v11, a2);
  v21 = sub_1C837E6E0(&unk_1EC29CCF8);
  v29 = a3;
  v30 = v21;
  WitnessTable = swift_getWitnessTable();
  sub_1C8317B60(v15, v12, WitnessTable);
  v23 = *(v13 + 8);
  v23(v15, v12);
  sub_1C8317B60(v18, v12, WitnessTable);
  return (v23)(v18, v12);
}

void *sub_1C837B9D0()
{
  KeyPath = swift_getKeyPath();
  sub_1C837D250(KeyPath);

  v2 = *(v0 + 16);
  v3 = v2;
  return v2;
}

void sub_1C837BA4C(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1C837BBB8(v1);
}

void sub_1C837BA7C(void *a1)
{
  v3 = *(v1 + 16);
  v4 = v3;
  LOBYTE(v3) = sub_1C837D474(v3, a1);

  if (v3)
  {
    MEMORY[0x1EEE9AC00](v5);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29E920, &qword_1C8419BC8);
    sub_1C83800EC();
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v9[2] = v1;
    v9[3] = a1;
    sub_1C837D2EC(v7, sub_1C8380314, v9);
  }

  else
  {
    v8 = *(v1 + 16);
    *(v1 + 16) = a1;
  }
}

void sub_1C837BBB8(void *a1)
{
  v3 = *(v1 + 16);
  v12 = a1;
  v13 = v3;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29E7B8, &qword_1C8419A60);
  v6 = sub_1C837F924();
  LOBYTE(v5) = sub_1C837D500(&v13, &v12, v5, v6);

  if (v5)
  {
    MEMORY[0x1EEE9AC00](v7);
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v11[2] = v1;
    v11[3] = a1;
    sub_1C837D3A0(v9, sub_1C8380374, v11, MEMORY[0x1E69E7CA8] + 8);
  }

  else
  {
    v10 = *(v1 + 16);
    *(v1 + 16) = a1;
  }
}

void *sub_1C837BD14(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6, double a7, double a8)
{
  v9 = v8;
  v101 = a4;
  v106 = *MEMORY[0x1E69E9840];
  v14 = sub_1C840B13C();
  v98 = *(v14 - 8);
  v99 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v100 = &v94 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v97 = &v94 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29DF08, &qword_1C8417B20);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v94 = &v94 - v19;
  v96 = sub_1C840B8AC();
  MEMORY[0x1EEE9AC00](v96);
  v95 = (&v94 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = sub_1C840B5EC();
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v94 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9[2] = 0;
  sub_1C840B2EC();
  v25 = WFSpotlightResultRunnableImageDisplayStyle();
  v26 = a1;
  v27 = [a1 valueForCustomKey_];

  if (v27)
  {
    objc_opt_self();
    v28 = swift_dynamicCastObjCClass();
    if (v28)
    {
      v102 = [v28 unsignedIntegerValue];
    }

    else
    {
      v102 = 0;
    }

    swift_unknownObjectRelease();
  }

  else
  {
    v102 = 0;
  }

  v29 = [v26 thumbnailSymbolName];
  if (v29)
  {
    v30 = v29;
    v31 = sub_1C840CDDC();
    v33 = v32;

    v34 = HIBYTE(v33) & 0xF;
    if ((v33 & 0x2000000000000000) == 0)
    {
      v34 = v31 & 0xFFFFFFFFFFFFLL;
    }

    if (v34)
    {
      goto LABEL_19;
    }
  }

  v35 = WFSpotlightResultRunnableAccessorySystemImageNameKey();
  v33 = [v26 valueForCustomKey_];

  if (!v33)
  {
    v31 = 0;
LABEL_19:
    v36 = v21;
LABEL_21:
    v38 = v22;
    goto LABEL_22;
  }

  v105 = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC29E8F8, &qword_1C8419B90);
  v36 = v21;
  if (!swift_dynamicCast())
  {
    v31 = 0;
    v33 = 0;
    goto LABEL_21;
  }

  v31 = v103;
  v33 = v104;
  v37 = HIBYTE(v104) & 0xF;
  if ((v104 & 0x2000000000000000) == 0)
  {
    v37 = v103 & 0xFFFFFFFFFFFFLL;
  }

  v38 = v22;
  if (!v37)
  {

    v31 = 0;
    v33 = 0;
  }

LABEL_22:
  v39 = v26;
  v9[4] = v31;
  v9[5] = v33;
  sub_1C8312180(0, &unk_1ED7EE930, 0x1E69E0960);

  v9[3] = sub_1C833350C(a2, a3);
  v40 = [objc_allocWithZone(MEMORY[0x1E69E0988]) init];
  v41 = sub_1C840CD9C();

  v103 = 0;
  v42 = [v40 colorsForBundleIdentifier:v41 error:&v103];

  if (v42)
  {
    v43 = v103;
    v44 = v42;
    v45 = [v44 backgroundGradient];
    v46 = v101;
    if (v45)
    {

      if ([v44 isDefaultTintColor])
      {
        v47 = [objc_opt_self() whiteColor];
      }

      else
      {
        v47 = [v44 tintColor];
      }

      v53 = v47;

      goto LABEL_34;
    }
  }

  else
  {
    v48 = v103;
    v49 = sub_1C840B0EC();

    swift_willThrow();
    v42 = 0;
    v46 = v101;
  }

  (*(v38 + 104))(v24, *MEMORY[0x1E697DBA8], v36);
  v50 = sub_1C840B5DC();
  (*(v38 + 8))(v24, v36);
  v51 = objc_opt_self();
  if (v50)
  {
    v52 = [v51 whiteColor];
  }

  else
  {
    v52 = [v51 blackColor];
  }

  v53 = v52;
LABEL_34:
  v9[6] = v53;
  if (v102 == 1)
  {
    sub_1C83514E8();
  }

  else
  {
    v54 = *(v96 + 20);
    v55 = *MEMORY[0x1E697F468];
    v56 = sub_1C840BB8C();
    v57 = v95;
    (*(*(v56 - 8) + 104))(v95 + v54, v55, v56);
    *v57 = a8;
    v57[1] = a8;
    sub_1C837E6E0(&qword_1EC29CDC0);
  }

  v9[7] = sub_1C840C5BC();
  v58 = WFSpotlightResultRunnableLNPropertyIdentifier();
  v59 = [v39 valueForCustomKey_];

  if (v59)
  {
    v105 = v59;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC29E8F8, &qword_1C8419B90);
    if (swift_dynamicCast())
    {
      v61 = v103;
      v60 = v104;
      if (qword_1EC29CF88 != -1)
      {
        swift_once();
      }

      v62 = sub_1C83C2400(v61, v60);
      if (v63 >> 60 == 15)
      {
        v64 = sub_1C840D08C();
        __swift_storeEnumTagSinglePayload(v94, 1, 1, v64);
        v65 = swift_allocObject();
        v65[2] = 0;
        v65[3] = 0;
        v66 = v102;
        v65[4] = v9;
        v65[5] = v66;
        v65[6] = v61;
        v65[7] = v60;

        sub_1C83BE2BC();
      }

      else
      {
        v67 = v62;
        v68 = v63;

        sub_1C8312180(0, &qword_1EC29C870, 0x1E69E0B58);
        v69 = sub_1C837C77C(v67, v68);
        if (v69)
        {
          goto LABEL_54;
        }
      }
    }
  }

  v70 = [v39 thumbnailURL];
  if (v70)
  {
    v71 = v70;
    v102 = v9;
    v72 = v38;
    v73 = v42;
    v74 = v39;
    v75 = v46;
    v76 = v36;
    v77 = v97;
    sub_1C840B11C();

    sub_1C8312180(0, &qword_1EC29C870, 0x1E69E0B58);
    v79 = v98;
    v78 = v99;
    v80 = v100;
    (*(v98 + 16))(v100, v77, v99);
    v69 = sub_1C837C89C(v80);
    v81 = v77;
    v36 = v76;
    v46 = v75;
    v39 = v74;
    v42 = v73;
    v38 = v72;
    v9 = v102;
    (*(v79 + 8))(v81, v78);
  }

  else
  {
    v82 = [v39 thumbnailData];
    if (!v82)
    {
      sub_1C8312180(0, &qword_1EC29C8A0, 0x1E6964E00);
      v87 = sub_1C840CDDC();
      v89 = sub_1C837C938(v87, v88);
      if (v89)
      {
        v90 = v89;
        v91 = [v39 valueForCustomKey_];
        if (v91)
        {
          v105 = v91;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC29E8F8, &qword_1C8419B90);
          if (swift_dynamicCast())
          {
            v102 = v103;
            sub_1C8312180(0, &qword_1EC29C870, 0x1E69E0B58);
            v92 = v100;
            sub_1C840B0FC();

            v69 = sub_1C837C89C(v92);

            goto LABEL_54;
          }
        }
      }

      v69 = 0;
      goto LABEL_54;
    }

    v83 = v82;
    v84 = sub_1C840B17C();
    v86 = v85;

    sub_1C8312180(0, &qword_1EC29C870, 0x1E69E0B58);
    v69 = sub_1C837C77C(v84, v86);
  }

LABEL_54:
  sub_1C837BA7C(v69);

  (*(v38 + 8))(v46, v36);
  return v9;
}

id sub_1C837C77C(uint64_t a1, unint64_t a2)
{
  v4 = sub_1C840B15C();
  v5 = [swift_getObjCClassFromMetadata() imageWithData_];

  sub_1C8315128(a1, a2);
  return v5;
}

uint64_t sub_1C837C7E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = swift_task_alloc();
  *(v7 + 16) = v11;
  *v11 = v7;
  v11[1] = sub_1C8352A6C;

  return sub_1C837C9AC(a5, a6, a7);
}

id sub_1C837C89C(uint64_t a1)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_1C840B10C();
  v4 = [v2 initWithContentsOfURL_];

  v5 = sub_1C840B13C();
  (*(*(v5 - 8) + 8))(a1, v5);
  return v4;
}

id sub_1C837C938(uint64_t a1, uint64_t a2)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_1C840CD9C();

  v4 = [v2 initWithKeyName_];

  return v4;
}

uint64_t sub_1C837C9AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[21] = a3;
  v4[22] = v3;
  v4[19] = a1;
  v4[20] = a2;
  v4[23] = *v3;
  v5 = sub_1C840B4AC();
  v4[24] = v5;
  v4[25] = *(v5 - 8);
  v4[26] = swift_task_alloc();
  v4[27] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C837CAA4, 0, 0);
}

uint64_t sub_1C837CAA4()
{
  v20 = v0;
  v0[28] = *MEMORY[0x1E69E10B0];
  sub_1C840B36C();
  v1 = sub_1C840B48C();
  v2 = sub_1C840D15C();
  v3 = os_log_type_enabled(v1, v2);
  v4 = v0[27];
  v5 = v0[24];
  v6 = v0[25];
  if (v3)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v19 = v8;
    *v7 = 136315138;
    v9 = sub_1C840D84C();
    v11 = sub_1C830E180(v9, v10, &v19);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_1C830A000, v1, v2, "%s: Fetching image asynchronously", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    OUTLINED_FUNCTION_134();
    OUTLINED_FUNCTION_134();
  }

  v12 = *(v6 + 8);
  v12(v4, v5);
  v0[29] = v12;
  v13 = v0[19];
  v14 = objc_allocWithZone(MEMORY[0x1E69E0A40]);
  v15 = sub_1C840CD9C();
  v16 = [v14 initWithLNPropertyIdentifier:v15 displayStyle:v13];
  v0[30] = v16;

  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1C837CD18;
  v17 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29E908, &unk_1C8419BB0);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1C837D134;
  v0[13] = &block_descriptor_0;
  v0[14] = v17;
  [v16 loadLNPropertyImageWithCompletion_];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1C837CD18()
{
  v1 = *(*v0 + 48);
  *(*v0 + 248) = v1;
  if (v1)
  {
    v2 = sub_1C837CF90;
  }

  else
  {
    v2 = sub_1C837CE28;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1C837CE28()
{
  v1 = v0[18];
  v2 = [v1 imageData];
  if (v2)
  {
    v3 = v2;
    sub_1C840B17C();

    if (qword_1EC29CF88 != -1)
    {
      swift_once();
    }

    v4 = v0[30];
    v5 = v0[21];
    v6 = v0[20];

    v7 = OUTLINED_FUNCTION_79();
    sub_1C8380094(v7, v8);
    v9 = OUTLINED_FUNCTION_79();
    sub_1C83C2494(v9, v10, v6, v5);
    sub_1C8312180(0, &qword_1EC29C870, 0x1E69E0B58);
    v11 = OUTLINED_FUNCTION_79();
    sub_1C8380094(v11, v12);
    v13 = OUTLINED_FUNCTION_79();
    v15 = sub_1C837C77C(v13, v14);
    sub_1C837BA7C(v15);

    v16 = OUTLINED_FUNCTION_79();
    sub_1C8315128(v16, v17);
  }

  else
  {
    v18 = v0[30];
  }

  OUTLINED_FUNCTION_41();

  return v19();
}

uint64_t sub_1C837CF90(uint64_t a1)
{
  v2 = *(v1 + 248);
  swift_willThrow();
  sub_1C840B36C();
  v3 = v2;
  v4 = sub_1C840B48C();
  v5 = sub_1C840D16C();

  v6 = os_log_type_enabled(v4, v5);
  v8 = *(v1 + 240);
  v7 = *(v1 + 248);
  if (v6)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    v11 = v7;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    _os_log_impl(&dword_1C830A000, v4, v5, "Failed to load entity image: %@", v9, 0xCu);
    sub_1C832D574(v10, &qword_1EC29E910, &qword_1C8417950);
    OUTLINED_FUNCTION_134();
    OUTLINED_FUNCTION_134();
  }

  else
  {
  }

  (*(v1 + 232))(*(v1 + 208), *(v1 + 192));

  OUTLINED_FUNCTION_41();

  return v13();
}

uint64_t *sub_1C837D134(uint64_t a1, void *a2, void *a3)
{
  result = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v6 = *result;
  if (a3)
  {
    v7 = a3;

    return sub_1C837D1C4(v6, v7);
  }

  else if (a2)
  {
    v8 = a2;

    return sub_1C837D230(v6, v8);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C837D1C4(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29E918, &qword_1C8419BC0);
  v4 = swift_allocError();
  *v5 = a2;

  return MEMORY[0x1EEE6DEE8](a1, v4);
}

BOOL sub_1C837D474(unint64_t a1, unint64_t a2)
{
  v2 = (a1 | a2) == 0;
  if (a1 && a2)
  {
    sub_1C8312180(0, &qword_1EC29C870, 0x1E69E0B58);
    v5 = a1;
    v6 = a2;
    v2 = sub_1C840D26C();
  }

  return (v2 & 1) == 0;
}

id *sub_1C837D52C()
{

  v1 = qword_1EC29CC78;
  sub_1C840B2FC();
  OUTLINED_FUNCTION_6();
  (*(v2 + 8))(v0 + v1);
  return v0;
}

uint64_t sub_1C837D5AC()
{
  sub_1C837D52C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

BOOL sub_1C837D608(double a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8)
{
  v8 = a1 == a5;
  if (a2 != a6)
  {
    v8 = 0;
  }

  if (a3 != a7)
  {
    v8 = 0;
  }

  return a4 == a8 && v8;
}

void *sub_1C837D640@<X0>(void *a1@<X0>, char a2@<W1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v8 = sub_1C840BBCC();
  v13 = 0;
  sub_1C837D734(a1, a2 & 1, __src);
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v15, __src, sizeof(v15));
  sub_1C8317A78();
  sub_1C832D574(v15, &qword_1EC29E738, &qword_1C8419948);
  memcpy(&v12[7], __dst, 0x80uLL);
  v9 = v13;
  *a3 = v8;
  *(a3 + 8) = a4;
  *(a3 + 16) = v9;
  return memcpy((a3 + 17), v12, 0x87uLL);
}

uint64_t sub_1C837D734@<X0>(void *a1@<X0>, int a2@<W1>, void *a3@<X8>)
{
  v71 = a3;
  v72 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29E740, &qword_1C8419950);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v62 - v5;
  v7 = sub_1C840BFEC();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = sub_1C840BB2C();
  v68 = *(v70 - 8);
  MEMORY[0x1EEE9AC00](v70);
  v12 = v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = a2;
  if (a2)
  {
    v101[0] = v72;
    v13 = v72;
  }

  else
  {
    v14 = v72;

    sub_1C840D17C();
    v15 = sub_1C840BD9C();
    sub_1C840B3CC();

    v16 = v68;
    sub_1C840BB1C();
    swift_getAtKeyPath();
    v17 = sub_1C83702A0(v14, 0);
    (*(v16 + 8))(v12, v70, v17);
    v13 = v101[0];
  }

  v18 = sub_1C837F478(v13, &selRef_displayName);
  v66 = v6;
  v67 = v7;
  v64 = v10;
  v65 = v8;
  if (v19)
  {
    *&v97 = v18;
    *(&v97 + 1) = v19;
    sub_1C833644C();
    v20 = sub_1C840C08C();
    v22 = v21;
    v24 = v23;
    v62[1] = v25;
    (*(v8 + 104))(v10, *MEMORY[0x1E6980F38], v7);
    v26 = sub_1C840BE7C();
    __swift_storeEnumTagSinglePayload(v6, 1, 1, v26);
    sub_1C840BF3C();
    sub_1C832D574(v6, &qword_1EC29E740, &qword_1C8419950);
    (*(v8 + 8))(v10, v7);
    sub_1C840BF1C();
    sub_1C840BF6C();

    v27 = sub_1C840C07C();
    v29 = v28;
    v63 = v12;
    v31 = v30;
    v33 = v32;

    sub_1C832D564(v20, v22, v24 & 1);

    KeyPath = swift_getKeyPath();
    v35 = v31 & 1;
    v12 = v63;
    LOBYTE(v92) = v35;
    LOBYTE(v91[0]) = 0;
    sub_1C832D510(v27, v29, v35);
    *&v97 = v27;
    *(&v97 + 1) = v29;
    LOBYTE(v98) = v35;
    *(&v98 + 1) = v33;
    *&v99 = KeyPath;
    *(&v99 + 1) = 3;
    LOBYTE(v100) = 0;

    v36 = 1.0;
  }

  else
  {
    *&v100 = 0;
    v98 = 0u;
    v99 = 0u;
    v97 = 0u;
    v36 = 0.0;
  }

  *(&v100 + 1) = v36;
  if (v69)
  {
    v96 = v72;
    v37 = v72;
  }

  else
  {
    v38 = v72;

    sub_1C840D17C();
    v39 = sub_1C840BD9C();
    sub_1C840B3CC();

    sub_1C840BB1C();
    swift_getAtKeyPath();
    v40 = sub_1C83702A0(v38, 0);
    (*(v68 + 8))(v12, v70, v40);
    v37 = v96;
  }

  v41 = sub_1C837F478(v37, &selRef_subtitle);
  if (v42)
  {
    *&v92 = v41;
    *(&v92 + 1) = v42;
    sub_1C833644C();
    v43 = sub_1C840C08C();
    v45 = v44;
    v47 = v46;
    v49 = v64;
    v48 = v65;
    v50 = v67;
    (*(v65 + 104))(v64, *MEMORY[0x1E6980EF0], v67);
    v51 = sub_1C840BE7C();
    v52 = v66;
    __swift_storeEnumTagSinglePayload(v66, 1, 1, v51);
    sub_1C840BF3C();
    sub_1C832D574(v52, &qword_1EC29E740, &qword_1C8419950);
    (*(v48 + 8))(v49, v50);
    v53 = sub_1C840C07C();
    v55 = v54;
    LOBYTE(v48) = v56;
    v58 = v57;

    sub_1C832D564(v43, v45, v47 & 1);

    v59 = swift_getKeyPath();
    LOBYTE(v91[0]) = v48 & 1;
    LOBYTE(v90[0]) = 0;
    sub_1C832D510(v53, v55, v48 & 1);
    *&v92 = v53;
    *(&v92 + 1) = v55;
    LOBYTE(v93) = v48 & 1;
    *(&v93 + 1) = v58;
    *&v94 = v59;
    *(&v94 + 1) = 3;
    LOBYTE(v95) = 0;

    v60 = 1.0;
  }

  else
  {
    *&v95 = 0;
    v93 = 0u;
    v94 = 0u;
    v92 = 0u;
    v60 = 0.0;
  }

  *(&v95 + 1) = v60;
  v78 = v97;
  v79 = v98;
  v80 = v99;
  v81 = v100;
  v74 = v92;
  v75 = v93;
  v76 = v94;
  v77 = v95;
  v84 = v99;
  v85 = v100;
  v82 = v97;
  v83 = v98;
  v73[2] = v99;
  v73[3] = v100;
  v73[0] = v97;
  v73[1] = v98;
  v88 = v94;
  v89 = v95;
  v86 = v92;
  v87 = v93;
  sub_1C8317A78();
  sub_1C8317A78();
  sub_1C832D574(&v97, &unk_1EC29E748, &qword_1C8419958);
  sub_1C832D574(&v92, &unk_1EC29E748, &qword_1C8419958);
  v73[4] = v86;
  v73[5] = v87;
  v73[6] = v88;
  v73[7] = v89;
  memcpy(v71, v73, 0x80uLL);
  v90[0] = v74;
  v90[1] = v75;
  v90[2] = v76;
  v90[3] = v77;
  sub_1C832D574(v90, &unk_1EC29E748, &qword_1C8419958);
  v91[0] = v78;
  v91[1] = v79;
  v91[2] = v80;
  v91[3] = v81;
  return sub_1C832D574(v91, &unk_1EC29E748, &qword_1C8419958);
}

void sub_1C837DED0()
{
  OUTLINED_FUNCTION_26_4();
  v2 = v1;
  sub_1C840BB2C();
  OUTLINED_FUNCTION_5();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29D2F0, &qword_1C84152A0);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_3_2();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_20_1();
  sub_1C8317A78();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1C840B38C();
    OUTLINED_FUNCTION_6();
    (*(v5 + 32))(v2, v0);
  }

  else
  {
    sub_1C840D17C();
    v6 = sub_1C840BD9C();
    sub_1C840B3CC();

    sub_1C840BB1C();
    swift_getAtKeyPath();

    v7 = OUTLINED_FUNCTION_31_2();
    v8(v7);
  }

  OUTLINED_FUNCTION_27_0();
}

uint64_t sub_1C837E08C()
{
  v0 = type metadata accessor for SpotlightUiShadow(0);
  __swift_allocate_value_buffer(v0, qword_1EC29CD10);
  v1 = OUTLINED_FUNCTION_12();
  v3 = __swift_project_value_buffer(v1, v2);
  *v3 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29D2F0, &qword_1C84152A0);
  OUTLINED_FUNCTION_16();
  result = swift_storeEnumTagMultiPayload();
  *(v3 + *(v0 + 20)) = 0x3FBEB851EB851EB8;
  *(v3 + *(v0 + 24)) = 0x4018000000000000;
  return result;
}

uint64_t static SpotlightUiShadow.badge.getter()
{
  if (qword_1EC29CD08 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for SpotlightUiShadow(0);
  __swift_project_value_buffer(v1, qword_1EC29CD10);
  return sub_1C837E5F8();
}

uint64_t SpotlightUiShadow.body(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1C840C2AC();
  if (sub_1C837E290())
  {
    type metadata accessor for SpotlightUiShadow(0);
  }

  v5 = sub_1C840C2DC();

  v6 = *(v2 + *(type metadata accessor for SpotlightUiShadow(0) + 24));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29E710, &qword_1C84193A0);
  OUTLINED_FUNCTION_6();
  (*(v7 + 16))(a2, a1);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC29E718, &qword_1C84193A8);
  v9 = (a2 + *(result + 36));
  *v9 = v5;
  v9[1] = v6;
  v9[2] = 0;
  v9[3] = 0;
  return result;
}

uint64_t sub_1C837E290()
{
  v0 = sub_1C840B38C();
  OUTLINED_FUNCTION_5();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_22();
  v6 = (v4 - v5);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v15 - v8;
  v10 = [objc_opt_self() currentDevice];
  v11 = [v10 userInterfaceIdiom];

  if (v11 == 1)
  {
    sub_1C837DED0();
    (*(v2 + 104))(v6, *MEMORY[0x1E6985BC0], v0);
    v12 = sub_1C840B37C();
    v13 = *(v2 + 8);
    v13(v6, v0);
    v13(v9, v0);
  }

  else
  {
    v12 = 0;
  }

  return v12 & 1;
}

uint64_t sub_1C837E438@<X0>(void *a1@<X0>, uint64_t a3@<X8>)
{
  v4 = [a1 platformColor];
  v5 = sub_1C840C26C();
  sub_1C837E5F8();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29E800, &qword_1C8415930);
  *(a3 + *(result + 52)) = v5;
  *(a3 + *(result + 56)) = 256;
  return result;
}

uint64_t sub_1C837E4C8@<X0>(uint64_t a1@<X8>)
{
  result = sub_1C840BAFC();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

unint64_t sub_1C837E52C()
{
  result = qword_1EC29CB60[0];
  if (!qword_1EC29CB60[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC29CB60);
  }

  return result;
}

uint64_t sub_1C837E580(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_6();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1C837E5F8()
{
  OUTLINED_FUNCTION_14();
  v1(0);
  OUTLINED_FUNCTION_6();
  v2 = OUTLINED_FUNCTION_12();
  v3(v2);
  return v0;
}

unint64_t sub_1C837E6E0(uint64_t a1)
{
  result = OUTLINED_FUNCTION_26(a1);
  if (!result)
  {
    v3(255);
    OUTLINED_FUNCTION_16();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

void sub_1C837E7C8(uint64_t a1)
{
  sub_1C837E8D4(319, &unk_1EC29CAE0, MEMORY[0x1E6985BC8]);
  if (v1 <= 0x3F)
  {
    sub_1C837E8D4(319, &qword_1EC29CE38, MEMORY[0x1E697DBD0]);
    if (v2 <= 0x3F)
    {
      sub_1C837E924(319, &qword_1EC29CAC0, &qword_1EC29C888, 0x1E6964E90, MEMORY[0x1E697DCC0]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1C837E8D4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    OUTLINED_FUNCTION_16();
    v4 = sub_1C840B60C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1C837E924(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1C8312180(255, a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_1C837E98C(uint64_t a1)
{
  result = sub_1C840B2FC();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_1C837EA90(uint64_t a1)
{
  sub_1C837E8D4(319, &unk_1EC29CAE0, MEMORY[0x1E6985BC8]);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

unint64_t sub_1C837EB30()
{
  result = qword_1EC29C9B0;
  if (!qword_1EC29C9B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC29E6B8, &qword_1C8419320);
    sub_1C837EBE8();
    sub_1C83360A8(&unk_1EC29C908);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC29C9B0);
  }

  return result;
}

unint64_t sub_1C837EBE8()
{
  result = qword_1EC29C9D8;
  if (!qword_1EC29C9D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC29E6E0, &qword_1C8419378);
    sub_1C837ECA0();
    sub_1C83360A8(&unk_1EC29C960);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC29C9D8);
  }

  return result;
}

unint64_t sub_1C837ECA0()
{
  result = qword_1EC29CA00;
  if (!qword_1EC29CA00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC29E6D8, &qword_1C8419370);
    sub_1C837ED58();
    sub_1C83360A8(&qword_1ED7EE960);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC29CA00);
  }

  return result;
}

unint64_t sub_1C837ED58()
{
  result = qword_1EC29CA58;
  if (!qword_1EC29CA58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC29E6D0, &qword_1C8419338);
    sub_1C83360A8(&unk_1EC29C8D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC29CA58);
  }

  return result;
}

unint64_t sub_1C837EE10()
{
  result = qword_1EC29CA90;
  if (!qword_1EC29CA90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC29E718, &qword_1C84193A8);
    sub_1C83360A8(&unk_1EC29C928);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC29CA90);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AppShortcutIndexedSearchView.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

void sub_1C837EFCC(uint64_t a1)
{
  sub_1C837E924(319, &qword_1EC29C8B8, &qword_1EC29CF20, 0x1E69E0B18, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for TopHitViewTextStyle.Resolved(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1C837F08C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 9))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 <= 1)
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

uint64_t sub_1C837F0CC(uint64_t result, unsigned int a2, unsigned int a3)
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

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_1C837F140(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 24))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 <= 1)
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

uint64_t sub_1C837F180(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

void sub_1C837F1D4(uint64_t a1)
{
  sub_1C837E8D4(319, &unk_1EC29CAE0, MEMORY[0x1E6985BC8]);
  if (v3 <= 0x3F)
  {
    type metadata accessor for AppShortcutIndexedSearchView.BadgedIconView.DerivedStyles(319, *(a1 + 16), *(a1 + 24), v2);
    if (v4 <= 0x3F)
    {
      sub_1C8312180(319, &qword_1EC29C888, 0x1E6964E90);
      if (v5 <= 0x3F)
      {
        sub_1C8316CE4();
        if (v6 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_1C837F374()
{
  result = qword_1EC29E730;
  if (!qword_1EC29E730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC29E730);
  }

  return result;
}

unint64_t sub_1C837F3CC()
{
  result = qword_1EC29CB48;
  if (!qword_1EC29CB48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC29CB48);
  }

  return result;
}

unint64_t sub_1C837F424()
{
  result = qword_1EC29CB50;
  if (!qword_1EC29CB50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC29CB50);
  }

  return result;
}

uint64_t sub_1C837F478(void *a1, SEL *a2)
{
  v3 = [a1 *a2];

  if (!v3)
  {
    return 0;
  }

  v4 = sub_1C840CDDC();

  return v4;
}

unint64_t sub_1C837F4F0()
{
  result = qword_1EC29C9F0;
  if (!qword_1EC29C9F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC29E788, &unk_1C84199B8);
    sub_1C8351134();
    sub_1C83360A8(&qword_1EC29CE20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC29C9F0);
  }

  return result;
}

unint64_t sub_1C837F5A8()
{
  result = qword_1EC29CA30;
  if (!qword_1EC29CA30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC29E760, &qword_1C8419998);
    sub_1C837F660();
    sub_1C83360A8(&qword_1ED7EE960);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC29CA30);
  }

  return result;
}

unint64_t sub_1C837F660()
{
  result = qword_1EC29CAA8;
  if (!qword_1EC29CAA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC29E790, &unk_1C84199C8);
    sub_1C8323558();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC29CAA8);
  }

  return result;
}

unint64_t sub_1C837F6EC()
{
  result = qword_1EC29CA80;
  if (!qword_1EC29CA80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC29E770, &qword_1C84199A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC29CA80);
  }

  return result;
}

unint64_t sub_1C837F770(uint64_t a1)
{
  result = OUTLINED_FUNCTION_26(a1);
  if (!result)
  {
    OUTLINED_FUNCTION_18(0, v4, v5);
    v2();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1C837F7DC()
{
  result = qword_1EC29CA50;
  if (!qword_1EC29CA50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC29E780, &unk_1C84158D0);
    sub_1C837F894(&qword_1EC29CAB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC29CA50);
  }

  return result;
}

unint64_t sub_1C837F894(uint64_t a1)
{
  result = OUTLINED_FUNCTION_26(a1);
  if (!result)
  {
    OUTLINED_FUNCTION_18(0, v4, v5);
    v2();
    OUTLINED_FUNCTION_3_8();
    sub_1C837E6E0(v6);
    OUTLINED_FUNCTION_1_1();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1C837F924()
{
  result = qword_1EC29E7C0;
  if (!qword_1EC29E7C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC29E7B8, &qword_1C8419A60);
    sub_1C837F9A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC29E7C0);
  }

  return result;
}

unint64_t sub_1C837F9A8()
{
  result = qword_1EC29E7C8;
  if (!qword_1EC29E7C8)
  {
    sub_1C8312180(255, &qword_1EC29C870, 0x1E69E0B58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC29E7C8);
  }

  return result;
}

uint64_t sub_1C837FA10@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1C840B8AC();
  OUTLINED_FUNCTION_59(v4);

  return sub_1C837E438(a1, a2);
}

void sub_1C837FA8C(void *a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t sub_1C837FA98()
{
  OUTLINED_FUNCTION_14();
  v1(0);
  OUTLINED_FUNCTION_6();
  v2 = OUTLINED_FUNCTION_12();
  v3(v2);
  return v0;
}

uint64_t sub_1C837FAF0()
{
  v1 = type metadata accessor for AppShortcutIndexedSearchView.DerivedStyles(0);
  OUTLINED_FUNCTION_59(v1);
  v3 = (v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)));

  return sub_1C8378368(v3);
}

unint64_t sub_1C837FB70()
{
  result = qword_1EC29C940;
  if (!qword_1EC29C940)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC29E828, &qword_1C8419B00);
    sub_1C837FBF4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC29C940);
  }

  return result;
}

unint64_t sub_1C837FBF4()
{
  result = qword_1EC29C948;
  if (!qword_1EC29C948)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC29E830, &qword_1C8419B08);
    sub_1C837FC80();
    sub_1C83359B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC29C948);
  }

  return result;
}

unint64_t sub_1C837FC80()
{
  result = qword_1EC29C998;
  if (!qword_1EC29C998)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC29E840, &qword_1C8419B10);
    sub_1C837FD38();
    sub_1C83360A8(&unk_1EC29C918);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC29C998);
  }

  return result;
}

unint64_t sub_1C837FD38()
{
  result = qword_1EC29C9B8;
  if (!qword_1EC29C9B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC29E850, &qword_1C8419B18);
    sub_1C837FDC4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC29C9B8);
  }

  return result;
}

unint64_t sub_1C837FDC4()
{
  result = qword_1EC29C9E8;
  if (!qword_1EC29C9E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC29E860, &qword_1C8419B20);
    sub_1C837FE50();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC29C9E8);
  }

  return result;
}

unint64_t sub_1C837FE50()
{
  result = qword_1EC29CA08;
  if (!qword_1EC29CA08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC29E870, &qword_1C8419B28);
    sub_1C837FEDC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC29CA08);
  }

  return result;
}

unint64_t sub_1C837FEDC()
{
  result = qword_1EC29CA68;
  if (!qword_1EC29CA68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC29E880, &unk_1C8419B30);
    sub_1C83360A8(&qword_1EC29C910);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC29CA68);
  }

  return result;
}

uint64_t sub_1C837FF94(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1C8352A6C;

  return sub_1C837C7E8(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_1C8380094(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v2;
    }
  }
}

unint64_t sub_1C83800EC()
{
  result = qword_1EC29E928;
  if (!qword_1EC29E928)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC29E920, &qword_1C8419BC8);
    sub_1C83801A4();
    sub_1C83360A8(&unk_1EC29CAF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC29E928);
  }

  return result;
}

unint64_t sub_1C83801A4()
{
  result = qword_1EC29CA20;
  if (!qword_1EC29CA20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC29E938, &unk_1C8419BD0);
    sub_1C8380230();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC29CA20);
  }

  return result;
}

unint64_t sub_1C8380230()
{
  result = qword_1EC29CAA0;
  if (!qword_1EC29CAA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC29D5A8, &qword_1C8415918);
    sub_1C83360A8(&unk_1EC29CC80);
    sub_1C83360A8(&unk_1EC29C990);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC29CAA0);
  }

  return result;
}

uint64_t sub_1C8380330@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1C837E408(a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  *(a2 + 9) = v5 & 1;
  return result;
}

void WidgetConfigurationCardView.init(request:dismiss:content:)(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v9 = a1;
  v10 = [v9 appBundleIdentifier];
  if (v10 && (v11 = v10, v12 = sub_1C840CDDC(), v14 = v13, v11, sub_1C83806BC(), , v19 = sub_1C83805D4(v12, v14, 0), , v19))
  {
    v16 = [v19 localizedName];
  }

  else
  {
    v15 = [v9 remoteAppLocalizedName];
    if (!v15)
    {
      v17 = 0;
      v18 = 0;
      v19 = 0;
      goto LABEL_9;
    }

    v16 = v15;
    v19 = 0;
  }

  v17 = sub_1C840CDDC();
  v18 = v20;

LABEL_9:
  v21 = [v9 widgetDisplayName];
  if (v21)
  {
    v22 = v21;
    v23 = sub_1C840CDDC();
    v25 = v24;
  }

  else
  {
    v34 = a3;
    v26 = [v9 intent];
    v27 = [v26 _title];

    v28 = sub_1C840CDDC();
    v30 = v29;

    v23 = sub_1C83C18D0(v28, v30);
    v25 = v31;

    if (v25)
    {
    }

    else
    {
      v32 = [v9 fallbackDisplayName];

      v23 = sub_1C840CDDC();
      v25 = v33;
    }

    a3 = v34;
  }

  *a6 = v9;
  a6[1] = v17;
  a6[2] = v18;
  a6[3] = v23;
  a6[4] = v25;
  a6[5] = a4;
  a6[6] = a5;
  a6[7] = a2;
  a6[8] = a3;
}

id sub_1C83805D4(uint64_t a1, uint64_t a2, char a3)
{
  v9[1] = *MEMORY[0x1E69E9840];
  v4 = sub_1C840CD9C();

  v9[0] = 0;
  v5 = [swift_getObjCClassFromMetadata() bundleRecordWithBundleIdentifier:v4 allowPlaceholder:a3 & 1 error:v9];

  if (v5)
  {
    v6 = v9[0];
  }

  else
  {
    v7 = v9[0];
    sub_1C840B0EC();

    swift_willThrow();
  }

  return v5;
}

unint64_t sub_1C83806BC()
{
  result = qword_1EC29E980;
  if (!qword_1EC29E980)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC29E980);
  }

  return result;
}

id sub_1C8380700()
{
  result = [*v0 widgetPrimaryColor];
  if (result)
  {
    return sub_1C840C26C();
  }

  return result;
}

uint64_t sub_1C8380734(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v14 - v9;
  (*(v1 + 40))(v8);
  v11 = *(a1 + 24);
  sub_1C8317B60(v6, v3, v11);
  v12 = *(v4 + 8);
  v12(v6, v3);
  sub_1C8317B60(v10, v3, v11);
  return (v12)(v10, v3);
}

uint64_t WidgetConfigurationCardView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v70 = a2;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC29E988, &qword_1C8419C10);
  v62 = *(a1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC29E990, &qword_1C8419C18);
  OUTLINED_FUNCTION_17_0();
  v3 = sub_1C840B85C();
  v60 = *(a1 + 24);
  OUTLINED_FUNCTION_1_13();
  v80[12] = v60;
  v80[13] = sub_1C830D3C0(v4, &qword_1EC29E990, &qword_1C8419C18, v5);
  v65 = MEMORY[0x1E697E858];
  __dst[0] = v3;
  __dst[1] = swift_getWitnessTable();
  OUTLINED_FUNCTION_4_8();
  swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_17_0();
  swift_getTupleTypeMetadata2();
  v6 = sub_1C840C63C();
  OUTLINED_FUNCTION_7_7(v6);
  OUTLINED_FUNCTION_17_0();
  sub_1C840C57C();
  v7 = sub_1C840C3AC();
  OUTLINED_FUNCTION_5();
  v58 = v8;
  OUTLINED_FUNCTION_3_2();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v57 - v10;
  sub_1C840BCEC();
  v12 = sub_1C840B85C();
  OUTLINED_FUNCTION_5();
  v59 = v13;
  OUTLINED_FUNCTION_3_2();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v57 - v15;
  v17 = sub_1C840B85C();
  OUTLINED_FUNCTION_5();
  v61 = v18;
  OUTLINED_FUNCTION_3_2();
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v57 - v20;
  type metadata accessor for CardBackgroundColorModifier(255);
  v22 = sub_1C840B85C();
  OUTLINED_FUNCTION_5();
  v67 = v23;
  OUTLINED_FUNCTION_3_2();
  MEMORY[0x1EEE9AC00](v24);
  v57 = &v57 - v25;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC29E9A0, &qword_1C8419C20);
  v68 = v22;
  v26 = sub_1C840B85C();
  OUTLINED_FUNCTION_5();
  v69 = v27;
  MEMORY[0x1EEE9AC00](v28);
  v64 = &v57 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v66 = &v57 - v31;
  memcpy(__dst, v63, 0x48uLL);
  v71 = v62;
  v72 = v60;
  v73 = __dst;
  v32 = OUTLINED_FUNCTION_8_10();
  sub_1C840C39C();
  v80[11] = v32;
  OUTLINED_FUNCTION_0_3();
  WitnessTable = swift_getWitnessTable();
  sub_1C8381A6C(v7, WitnessTable, 17.0, 14.0, 17.0, 14.0);
  (*(v58 + 8))(v11, v7);
  OUTLINED_FUNCTION_3_9();
  v36 = sub_1C8381B98(v34, v35, MEMORY[0x1E6980268]);
  v80[9] = WitnessTable;
  v80[10] = v36;
  v37 = swift_getWitnessTable();
  sub_1C840BDCC();
  sub_1C840C1DC();
  (*(v59 + 8))(v16, v12);
  memcpy(v80, __dst, 0x48uLL);
  v38 = sub_1C8380700();
  v78 = v37;
  v79 = MEMORY[0x1E697E5D8];
  v39 = v57;
  v40 = swift_getWitnessTable();
  sub_1C8343FB0(v38, v17, v40);

  (*(v61 + 8))(v21, v17);
  if ([__dst[0] widgetTintColor])
  {
    v41 = sub_1C840C26C();
  }

  else
  {
    v41 = 0;
  }

  v80[0] = v41;
  OUTLINED_FUNCTION_2_7();
  v44 = sub_1C8381B98(v42, v43, &unk_1C8416364);
  v76 = v40;
  v77 = v44;
  v45 = v68;
  v46 = swift_getWitnessTable();
  v47 = v64;
  sub_1C840C18C();

  (*(v67 + 8))(v39, v45);
  OUTLINED_FUNCTION_6_8();
  v52 = sub_1C830D3C0(v48, v49, v50, v51);
  v74 = v46;
  v75 = v52;
  v53 = swift_getWitnessTable();
  v54 = v66;
  sub_1C8317B60(v47, v26, v53);
  v55 = *(v69 + 8);
  v55(v47, v26);
  sub_1C8317B60(v54, v26, v53);
  return (v55)(v54, v26);
}

uint64_t sub_1C8380F20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC29E988, &qword_1C8419C10);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC29E990, &qword_1C8419C18);
  v6 = sub_1C840B85C();
  v23 = a3;
  v24 = sub_1C830D3C0(&qword_1EC29E998, &qword_1EC29E990, &qword_1C8419C18, MEMORY[0x1E6980BC8]);
  v21 = v6;
  WitnessTable = swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata2();
  sub_1C840C63C();
  swift_getWitnessTable();
  v7 = sub_1C840C57C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v17[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v17[-v12];
  sub_1C840BBBC();
  v18 = a2;
  v19 = a3;
  v20 = a1;
  sub_1C840C56C();
  v14 = swift_getWitnessTable();
  sub_1C8317B60(v10, v7, v14);
  v15 = *(v8 + 8);
  v15(v10, v7);
  sub_1C8317B60(v13, v7, v14);
  return (v15)(v13, v7);
}

uint64_t sub_1C83811D4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v60 = a4;
  v58 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v46 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC29E990, &qword_1C8419C18);
  v8 = sub_1C840B85C();
  v55 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v54 = &v45 - v9;
  v10 = sub_1C830D3C0(&qword_1EC29E998, &qword_1EC29E990, &qword_1C8419C18, MEMORY[0x1E6980BC8]);
  __dst[9] = a3;
  __dst[10] = v10;
  v11 = a3;
  WitnessTable = swift_getWitnessTable();
  __dst[0] = v8;
  __dst[1] = WitnessTable;
  v50 = WitnessTable;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v53 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v56 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v48 = &v45 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v52 = &v45 - v18;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29E988, &qword_1C8419C10);
  MEMORY[0x1EEE9AC00](v47);
  v51 = &v45 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v45 - v21;
  v24 = a1[3];
  v23 = a1[4];
  v26 = a1[1];
  v25 = a1[2];
  memcpy(__dst, a1, 0x48uLL);
  v59 = a2;
  v57 = v11;
  v28 = type metadata accessor for WidgetConfigurationCardView(0, a2, v11, v27);
  v49 = v22;
  v29 = v23;
  v30 = v46;
  sub_1C838175C(v24, v29, v26, v25, v28, v22);
  sub_1C8380734(v28);
  v31 = sub_1C8380700();
  if (!v31)
  {
    v32 = [objc_opt_self() systemGroupedBackgroundColor];
    v31 = sub_1C840C26C();
  }

  __dst[0] = v31;
  v33 = v54;
  v34 = v59;
  sub_1C840C13C();

  (*(v58 + 8))(v30, v34);
  v35 = v48;
  v36 = v50;
  sub_1C840C16C();
  (*(v55 + 8))(v33, v8);
  __dst[0] = v8;
  __dst[1] = v36;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v38 = v52;
  sub_1C8317B60(v35, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  v39 = v53;
  v40 = *(v53 + 8);
  v40(v35, OpaqueTypeMetadata2);
  v41 = v49;
  v42 = v51;
  sub_1C8329014(v49, v51);
  __dst[0] = v42;
  v43 = v56;
  (*(v39 + 16))(v56, v38, OpaqueTypeMetadata2);
  __dst[1] = v43;
  v63[0] = v47;
  v63[1] = OpaqueTypeMetadata2;
  v61 = sub_1C8381FDC();
  v62 = OpaqueTypeConformance2;
  sub_1C8375E44(__dst, 2, v63);
  v40(v38, OpaqueTypeMetadata2);
  sub_1C8329084(v41);
  v40(v43, OpaqueTypeMetadata2);
  return sub_1C8329084(v42);
}

uint64_t sub_1C838175C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v7 = v6;
  *&v30 = a3;
  *(&v30 + 1) = a4;
  v34 = a6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29EA58, &unk_1C8419D40);
  OUTLINED_FUNCTION_5();
  v32 = v12;
  v33 = v11;
  OUTLINED_FUNCTION_3_2();
  MEMORY[0x1EEE9AC00](v13);
  v31 = &v29 - v14;
  memcpy(__dst, v7, 0x48uLL);
  v15 = swift_allocObject();
  *(v15 + 16) = *(a5 + 16);
  memcpy((v15 + 32), v7, 0x48uLL);
  if (a2)
  {
    v16 = a1;
  }

  else
  {
    v16 = 0;
  }

  if (a2)
  {
    v17 = a2;
  }

  else
  {
    v17 = 0xE000000000000000;
  }

  v18 = __dst[7];
  v19 = __dst[8];
  if (__dst[7])
  {
    v20 = swift_allocObject();
    *(v20 + 16) = v18;
    *(v20 + 24) = v19;
    v21 = sub_1C83821A0;
  }

  else
  {
    v21 = nullsub_1;
    v20 = 0;
  }

  v22 = swift_allocObject();
  *(v22 + 16) = v21;
  *(v22 + 24) = v20;
  *&v36 = sub_1C8382104;
  *(&v36 + 1) = v15;
  *&v37 = v16;
  *(&v37 + 1) = v17;
  v38 = v30;
  *&v39 = sub_1C8382110;
  *(&v39 + 1) = v22;
  (*(*(a5 - 8) + 16))(v35, __dst, a5);

  sub_1C832AD1C(v18, v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29EA48, &qword_1C8419D38);
  sub_1C830D3C0(&qword_1EC29EA50, &qword_1EC29EA48, &qword_1C8419D38, &protocol conformance descriptor for WidgetConfigurationCardHeaderView<A>);
  v23 = v31;
  sub_1C840C17C();
  v40[0] = v36;
  v40[1] = v37;
  v40[2] = v38;
  v40[3] = v39;
  sub_1C8382138(v40);
  memcpy(v35, __dst, sizeof(v35));
  v24 = sub_1C8380700();
  if (!v24)
  {
    v25 = [objc_opt_self() systemGroupedBackgroundColor];
    v24 = sub_1C840C26C();
  }

  v26 = v24;
  v27 = v34;
  (*(v32 + 32))(v34, v23, v33);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29E988, &qword_1C8419C10);
  *(v27 + *(result + 36)) = v26;
  return result;
}

uint64_t sub_1C8381A6C(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  v12 = sub_1C840BCEC();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v17 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C840BDCC();
  *&v17[1] = a3;
  *&v17[2] = a4;
  *&v17[3] = a5;
  *&v17[4] = a6;
  v18 = 0;
  sub_1C840BCDC();
  MEMORY[0x1CCA74BF0](v15, a1, v12, a2);
  return (*(v13 + 8))(v15, v12);
}

uint64_t sub_1C8381B98(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_1C8381BE0@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1C840C3EC();
  v5 = *(v4 - 8);
  *&v6 = MEMORY[0x1EEE9AC00](v4).n128_u64[0];
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  v10 = [v9 appBundleIdentifier];
  if (!v10 || (v11 = v10, sub_1C840CDDC(), v11, v12 = objc_opt_self(), , v13 = sub_1C840CD9C(), v14 = [v12 applicationIconImageForBundleIdentifier:v13 format:2], swift_bridgeObjectRelease_n(), v13, !v14))
  {
    result = [v9 remoteAppIcon];
    if (!result)
    {
      v16 = 0;
      goto LABEL_7;
    }

    v14 = result;
  }

  WFImage.image.getter();
  (*(v5 + 104))(v8, *MEMORY[0x1E6981630], v4);
  v16 = sub_1C840C46C();

  result = (*(v5 + 8))(v8, v4);
LABEL_7:
  *a2 = v16;
  return result;
}

void *WidgetConfigurationCardView.init(request:dismiss:cancel:content:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>)
{

  WidgetConfigurationCardView.init(request:dismiss:content:)(a1, a2, a3, a6, a7, __src);
  sub_1C8381E78(a4, a5);

  return memcpy(a8, __src, 0x48uLL);
}

double sub_1C8381E78(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
  }

  return result;
}

uint64_t sub_1C8381ECC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t get_enum_tag_for_layout_string_Ieg_Sg(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1C8381F28(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_1C8381F68(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1C8381FDC()
{
  result = qword_1EC29EA40;
  if (!qword_1EC29EA40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC29E988, &qword_1C8419C10);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC29EA48, &qword_1C8419D38);
    sub_1C830D3C0(&qword_1EC29EA50, &qword_1EC29EA48, &qword_1C8419D38, &protocol conformance descriptor for WidgetConfigurationCardHeaderView<A>);
    swift_getOpaqueTypeConformance2();
    sub_1C830D3C0(&qword_1EC29E998, &qword_1EC29E990, &qword_1C8419C18, MEMORY[0x1E6980BC8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC29EA40);
  }

  return result;
}

uint64_t sub_1C8382138(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29EA48, &qword_1C8419D38);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t StaticString._asString.getter(unint64_t result, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
    if (result)
    {
      return sub_1C840CE2C(result, a2);
    }

    __break(1u);
  }

  v3 = HIDWORD(result);
  if (HIDWORD(result))
  {
    __break(1u);
    goto LABEL_12;
  }

  if ((result & 0xFFFFF800) != 0xD800)
  {
    v3 = result >> 16;
    if (result >> 16 <= 0x10)
    {
      if (result <= 0x7F)
      {
        v4 = result + 1;
LABEL_9:
        v5 = __clz(v4);
        a2 = 4 - (v5 >> 3);
        v11 = (v4 + 0xFEFEFEFEFEFEFFLL) & ~(-1 << (8 * (4 - (v5 >> 3))));
        result = &v11;
        return sub_1C840CE2C(result, a2);
      }

LABEL_13:
      v6 = (result & 0x3F) << 8;
      v7 = (result >> 6) + v6 + 33217;
      v8 = (v6 | (result >> 6) & 0x3F) << 8;
      v9 = (result >> 18) + ((v8 | (result >> 12) & 0x3F) << 8) - 2122219023;
      v10 = (result >> 12) + v8 + 8487393;
      if (v3)
      {
        v4 = v9;
      }

      else
      {
        v4 = v10;
      }

      if (result < 0x800)
      {
        v4 = v7;
      }

      goto LABEL_9;
    }

LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

id static NSBundle._current.getter()
{
  if (qword_1EC29CF30 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC29EA60;

  return v1;
}

id sub_1C838231C()
{
  _s2__CMa();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  qword_1EC29EA60 = result;
  return result;
}

uint64_t sub_1C83823A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29EAC8, &unk_1C8419DE8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v21 - v9;
  v11 = sub_1C840CADC();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (__swift_getEnumTagSinglePayload(a1, 1, v11) == 1)
  {
    sub_1C8375520(a1, &qword_1EC29EAC8, &unk_1C8419DE8);
    sub_1C83A5730(v10);

    return sub_1C8375520(v10, &qword_1EC29EAC8, &unk_1C8419DE8);
  }

  else
  {
    (*(v12 + 32))(v14, a1, v11);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1C83516B4(v14, a2, a3, isUniquelyReferenced_nonNull_native, v17, v18, v19, v20, v21[0], *v4);

    *v4 = v21[1];
  }

  return result;
}

void sub_1C8382574(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v18 = a1;
  v19 = a2;
  v6 = type metadata accessor for ParameterSummaryToolTemplate(0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a3 + 16);
  if (v10)
  {
    v20 = MEMORY[0x1E69E7CC0];
    sub_1C83A5310(0, v10, 0);
    v11 = v20;
    v12 = *(sub_1C840C78C() - 8);
    v13 = a3 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
    v17 = *(v12 + 72);
    while (1)
    {
      v18(v13);
      if (v4)
      {
        break;
      }

      v4 = 0;
      v20 = v11;
      v15 = *(v11 + 16);
      v14 = *(v11 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_1C83A5310((v14 > 1), v15 + 1, 1);
        v11 = v20;
      }

      *(v11 + 16) = v15 + 1;
      sub_1C838C128(v9, v11 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v15);
      v13 += v17;
      if (!--v10)
      {
        return;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1C838275C@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v4 = result;
  v6 = *(a2 + 16);
  v7 = a2 + 32;
  if (v6)
  {
    while (1)
    {
      sub_1C8375B48(v7, &v9);
      result = v4(&v9);
      if (v3)
      {
        return sub_1C8375BA4(&v9);
      }

      if (result)
      {
        break;
      }

      result = sub_1C8375BA4(&v9);
      v7 += 48;
      if (!--v6)
      {
        goto LABEL_5;
      }
    }

    v8 = v10[0];
    *a3 = v9;
    *(a3 + 16) = v8;
    *(a3 + 25) = *(v10 + 9);
  }

  else
  {
LABEL_5:
    *(a3 + 32) = 0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
    *(a3 + 40) = -1;
  }

  return result;
}

uint64_t sub_1C8382820(void (*a1)(uint64_t *__return_ptr, uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = 0;
  v29 = *(a3 + 16);
  v27 = a3 + 32;
  v6 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if (v5 == v29)
    {
      return v6;
    }

    a1(&v33, v27 + 48 * v5);
    if (v4)
    {

      return v6;
    }

    v7 = v33;
    v8 = v33 >> 62 ? sub_1C840D51C() : *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v9 = v6 >> 62;
    result = v6 >> 62 ? sub_1C840D51C() : *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v11 = result + v8;
    if (__OFADD__(result, v8))
    {
      break;
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    v31 = v8;
    if (result)
    {
      if (!v9)
      {
        v12 = v6 & 0xFFFFFFFFFFFFFF8;
        if (v11 <= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_16;
        }

        goto LABEL_15;
      }

LABEL_14:
      sub_1C840D51C();
      goto LABEL_15;
    }

    if (v9)
    {
      goto LABEL_14;
    }

LABEL_15:
    result = sub_1C840D40C();
    v6 = result;
    v12 = result & 0xFFFFFFFFFFFFFF8;
LABEL_16:
    v13 = *(v12 + 16);
    v14 = (*(v12 + 24) >> 1) - v13;
    v15 = v12 + 8 * v13;
    v30 = v12;
    if (v7 >> 62)
    {
      v17 = sub_1C840D51C();
      if (v17)
      {
        v18 = v17;
        result = sub_1C840D51C();
        if (v14 < result)
        {
          goto LABEL_39;
        }

        if (v18 < 1)
        {
          goto LABEL_41;
        }

        v26 = result;
        sub_1C838C0A4();
        for (i = 0; i != v18; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29EB68, &qword_1C8419FC0);
          v20 = sub_1C838C010(v32, i, v7);
          v22 = *v21;
          swift_unknownObjectRetain();
          (v20)(v32, 0);
          *(v15 + 32 + 8 * i) = v22;
        }

        v16 = v26;
        goto LABEL_26;
      }
    }

    else
    {
      v16 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v16)
      {
        if (v14 < v16)
        {
          goto LABEL_40;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29EB60, &qword_1C8419FB8);
        swift_arrayInitWithCopy();
LABEL_26:

        if (v16 < v31)
        {
          goto LABEL_37;
        }

        if (v16 > 0)
        {
          v23 = *(v30 + 16);
          v24 = __OFADD__(v23, v16);
          v25 = v23 + v16;
          if (v24)
          {
            goto LABEL_38;
          }

          *(v30 + 16) = v25;
        }

        goto LABEL_31;
      }
    }

    if (v31 > 0)
    {
      goto LABEL_37;
    }

LABEL_31:
    v4 = 0;
    ++v5;
  }

  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
  return result;
}

uint64_t sub_1C8382B14(uint64_t (*a1)(uint64_t, uint64_t), uint64_t a2, uint64_t a3)
{
  v5 = 0;
  v6 = *(a3 + 16);
  for (i = a3 + 32; ; i += 40)
  {
    if (v6 == v5)
    {
      return 0;
    }

    result = a1(i, a2);
    if (v3)
    {
      return result;
    }

    if (result)
    {
      break;
    }

    ++v5;
  }

  return v5;
}

uint64_t sub_1C8382B94(uint64_t a1)
{
  v2 = sub_1C840C70C();
  v3 = MEMORY[0x1EEE9AC00](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_1C8382CD4();
}

uint64_t sub_1C8382C60@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtCC18WorkflowUIServices25ParameterSummaryViewModel22ToolTemplateDataSource_toolInvocation;
  v4 = OUTLINED_FUNCTION_62_0();
  OUTLINED_FUNCTION_60(v4, v5);
  sub_1C840C70C();
  OUTLINED_FUNCTION_6();
  return (*(v6 + 16))(a1, v1 + v3);
}

uint64_t sub_1C8382CD4()
{
  v0 = OUTLINED_FUNCTION_62_0();
  OUTLINED_FUNCTION_64_0(v0, v1);
  sub_1C840C70C();
  OUTLINED_FUNCTION_6();
  v2 = OUTLINED_FUNCTION_82_0();
  v3(v2);
  return swift_endAccess();
}

uint64_t (*sub_1C8382D4C())(uint64_t)
{
  v0 = OUTLINED_FUNCTION_82_0();
  OUTLINED_FUNCTION_64_0(v0, v1);
  return j_j__swift_endAccess;
}

uint64_t ParameterSummaryViewModel.ToolTemplateDataSource.sessionBackend.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtCC18WorkflowUIServices25ParameterSummaryViewModel22ToolTemplateDataSource_sessionBackend);
  v3 = *(v1 + OBJC_IVAR____TtCC18WorkflowUIServices25ParameterSummaryViewModel22ToolTemplateDataSource_sessionBackend + 8);
  *a1 = v2;
  a1[1] = v3;
  return j__swift_unknownObjectRetain(v2, v3);
}

uint64_t sub_1C8382DBC()
{
  OUTLINED_FUNCTION_130();
  v1[8] = v0;
  v2 = sub_1C840C6CC();
  v1[9] = v2;
  OUTLINED_FUNCTION_13(v2);
  v1[10] = v3;
  v1[11] = OUTLINED_FUNCTION_89();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29EA70, &qword_1C8419D78);
  OUTLINED_FUNCTION_59(v4);
  v1[12] = OUTLINED_FUNCTION_90();
  v1[13] = swift_task_alloc();
  v5 = sub_1C840C70C();
  v1[14] = v5;
  OUTLINED_FUNCTION_13(v5);
  v1[15] = v6;
  v1[16] = OUTLINED_FUNCTION_90();
  v1[17] = swift_task_alloc();
  v7 = sub_1C840C7BC();
  v1[18] = v7;
  OUTLINED_FUNCTION_13(v7);
  v1[19] = v8;
  v1[20] = OUTLINED_FUNCTION_90();
  v1[21] = swift_task_alloc();
  OUTLINED_FUNCTION_45();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1C8382F4C()
{
  OUTLINED_FUNCTION_34();
  v1 = v0[8];
  v2 = v1 + OBJC_IVAR____TtCC18WorkflowUIServices25ParameterSummaryViewModel22ToolTemplateDataSource_sessionBackend;
  v0[22] = *(v1 + OBJC_IVAR____TtCC18WorkflowUIServices25ParameterSummaryViewModel22ToolTemplateDataSource_sessionBackend);
  v3 = *(v2 + 8);
  v0[23] = v3;
  if (v3 < 0)
  {
    swift_getObjectType();
    v0[26] = swift_allocObject();
    swift_weakInit();
    swift_unknownObjectRetain();
    swift_task_alloc();
    OUTLINED_FUNCTION_87();
    v0[27] = v12;
    *v12 = v13;
    v12[1] = sub_1C838329C;
    OUTLINED_FUNCTION_88_0();

    return MEMORY[0x1EEE4AB48]();
  }

  else
  {
    v4 = v0[17];
    v5 = v0[14];
    v6 = v0[15];
    swift_getObjectType();
    v7 = OBJC_IVAR____TtCC18WorkflowUIServices25ParameterSummaryViewModel22ToolTemplateDataSource_toolInvocation;
    OUTLINED_FUNCTION_60(v1 + OBJC_IVAR____TtCC18WorkflowUIServices25ParameterSummaryViewModel22ToolTemplateDataSource_toolInvocation, (v0 + 5));
    (*(v6 + 16))(v4, v1 + v7, v5);
    swift_unknownObjectRetain();
    swift_task_alloc();
    OUTLINED_FUNCTION_87();
    v0[24] = v8;
    *v8 = v9;
    v8[1] = sub_1C8383140;
    OUTLINED_FUNCTION_88_0();

    return MEMORY[0x1EEE4AAA8](v10);
  }
}

uint64_t sub_1C8383140()
{
  OUTLINED_FUNCTION_10_0();
  v2 = *v1;
  OUTLINED_FUNCTION_13_7();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 200) = v0;

  (*(v2[15] + 8))(v2[17], v2[14]);
  OUTLINED_FUNCTION_45();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1C838329C()
{
  OUTLINED_FUNCTION_130();
  OUTLINED_FUNCTION_16_0();
  v3 = v2;
  OUTLINED_FUNCTION_13_7();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_95();
  *v6 = v5;
  *(v3 + 224) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_45();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C83833A0()
{
  OUTLINED_FUNCTION_120();
  v2 = v0[20];
  v3 = v0[21];
  v4 = v0[18];
  v5 = v0[19];
  j__swift_unknownObjectRelease(v0[22]);
  (*(v5 + 32))(v3, v2, v4);
  OUTLINED_FUNCTION_51_0(v0[25]);
  OUTLINED_FUNCTION_60(v1 + OBJC_IVAR____TtCC18WorkflowUIServices25ParameterSummaryViewModel22ToolTemplateDataSource_toolInvocation, (v0 + 2));
  v6 = OUTLINED_FUNCTION_50_0();
  v7(v6);
  sub_1C840C6DC();
  (*(v5 + 40))(v3, v2);
  v8 = sub_1C840D05C();
  v0[30] = OUTLINED_FUNCTION_90_0(v8);
  OUTLINED_FUNCTION_8_7();
  sub_1C840D03C();
  v9 = OUTLINED_FUNCTION_20_5();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1C8383490()
{
  OUTLINED_FUNCTION_120();
  v1 = v0[18];
  v2 = v0[12];
  sub_1C8344AB4(v0[13], v2, &qword_1EC29EA70, &qword_1C8419D78);
  if (__swift_getEnumTagSinglePayload(v2, 1, v1) == 1)
  {
    sub_1C8375520(v0[12], &qword_1EC29EA70, &qword_1C8419D78);
    v3 = OUTLINED_FUNCTION_12();
    j__swift_unknownObjectRelease(v3);
    v4 = OUTLINED_FUNCTION_79();
    sub_1C8375520(v4, v5, &qword_1C8419D78);

    OUTLINED_FUNCTION_70_0();
    v7 = MEMORY[0x1E69E7CC0];

    return v6(v7);
  }

  else
  {
    v9 = v0[22];
    v10 = v0[23];
    v11 = v0[21];
    v12 = v0[18];
    v13 = v0[19];
    v14 = v0[12];
    sub_1C8375520(v0[13], &qword_1EC29EA70, &qword_1C8419D78);
    v15 = OUTLINED_FUNCTION_12();
    j__swift_unknownObjectRelease(v15);
    (*(v13 + 32))(v11, v14, v12);
    OUTLINED_FUNCTION_51_0(v0[28]);
    OUTLINED_FUNCTION_60(v14 + OBJC_IVAR____TtCC18WorkflowUIServices25ParameterSummaryViewModel22ToolTemplateDataSource_toolInvocation, (v0 + 2));
    v16 = OUTLINED_FUNCTION_50_0();
    v17(v16);
    sub_1C840C6DC();
    (*(v12 + 8))(v10, v9);
    v18 = sub_1C840D05C();
    v0[30] = OUTLINED_FUNCTION_90_0(v18);
    OUTLINED_FUNCTION_8_7();
    sub_1C840D03C();
    v19 = OUTLINED_FUNCTION_20_5();

    return MEMORY[0x1EEE6DFA0](v19, v20, v21);
  }
}

uint64_t sub_1C8383690()
{
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_34();
  v1 = v0[21];
  v3 = v0[10];
  v2 = v0[11];
  v4 = v0[9];

  v5 = sub_1C840C74C();
  v6 = swift_task_alloc();
  *(v6 + 16) = v2;
  *(v6 + 24) = v1;
  sub_1C8382574(sub_1C838B180, v6, v5);
  v0[31] = v7;

  (*(v3 + 8))(v2, v4);
  OUTLINED_FUNCTION_45();
  OUTLINED_FUNCTION_67_0();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1C8383954(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[9] = a2;
  v3[10] = a3;
  v3[8] = a1;
  v4 = sub_1C840C70C();
  v3[11] = v4;
  v3[12] = *(v4 - 8);
  v3[13] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C8383A18, 0, 0);
}

uint64_t sub_1C8383A18()
{
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_60(v0[10] + 16, (v0 + 2));
  Strong = swift_weakLoadStrong();
  v0[14] = Strong;
  if (!Strong)
  {
    v11 = v0[8];
    v12 = sub_1C840C7BC();
    OUTLINED_FUNCTION_69_0(v11, v13, v14, v12);

    OUTLINED_FUNCTION_19_2();
    OUTLINED_FUNCTION_88_0();

    __asm { BRAA            X1, X16 }
  }

  v2 = Strong;
  v4 = v0[12];
  v3 = v0[13];
  v5 = v0[11];
  v0[15] = sub_1C840C71C();
  swift_getObjectType();
  v6 = OBJC_IVAR____TtCC18WorkflowUIServices25ParameterSummaryViewModel22ToolTemplateDataSource_toolInvocation;
  OUTLINED_FUNCTION_60(v2 + OBJC_IVAR____TtCC18WorkflowUIServices25ParameterSummaryViewModel22ToolTemplateDataSource_toolInvocation, (v0 + 5));
  (*(v4 + 16))(v3, v2 + v6, v5);
  swift_task_alloc();
  OUTLINED_FUNCTION_87();
  v0[16] = v7;
  *v7 = v8;
  v7[1] = sub_1C8383B8C;
  OUTLINED_FUNCTION_88_0();

  return MEMORY[0x1EEE4AAA8](v9);
}

uint64_t sub_1C8383B8C()
{
  OUTLINED_FUNCTION_120();
  OUTLINED_FUNCTION_16_0();
  OUTLINED_FUNCTION_13_7();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_95();
  *v5 = v4;
  *(v6 + 136) = v0;

  v7 = OUTLINED_FUNCTION_79();
  v8(v7);
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_45();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1C8383D04()
{
  OUTLINED_FUNCTION_130();

  sub_1C840C7BC();
  OUTLINED_FUNCTION_27();
  __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);

  OUTLINED_FUNCTION_19_2();

  return v4();
}

uint64_t sub_1C8383D84()
{
  OUTLINED_FUNCTION_130();

  OUTLINED_FUNCTION_41();

  return v0();
}

uint64_t sub_1C8383DE8()
{
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_60_0();
  swift_task_alloc();
  OUTLINED_FUNCTION_87();
  *(v1 + 16) = v2;
  *v2 = v3;
  v2[1] = sub_1C838C18C;
  v4 = OUTLINED_FUNCTION_46_1();

  return sub_1C8383954(v4, v5, v0);
}

uint64_t ParameterSummaryViewModel.ToolTemplateDataSource.deinit()
{
  v1 = OBJC_IVAR____TtCC18WorkflowUIServices25ParameterSummaryViewModel22ToolTemplateDataSource_toolInvocation;
  sub_1C840C70C();
  OUTLINED_FUNCTION_0_10();
  (*(v2 + 8))(v0 + v1);
  j__swift_unknownObjectRelease(*(v0 + OBJC_IVAR____TtCC18WorkflowUIServices25ParameterSummaryViewModel22ToolTemplateDataSource_sessionBackend));
  return v0;
}

uint64_t ParameterSummaryViewModel.ToolTemplateDataSource.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtCC18WorkflowUIServices25ParameterSummaryViewModel22ToolTemplateDataSource_toolInvocation;
  sub_1C840C70C();
  OUTLINED_FUNCTION_0_10();
  (*(v2 + 8))(v0 + v1);
  j__swift_unknownObjectRelease(*(v0 + OBJC_IVAR____TtCC18WorkflowUIServices25ParameterSummaryViewModel22ToolTemplateDataSource_sessionBackend));
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v3, v4);
}

uint64_t sub_1C8384060()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C83840F0;

  return sub_1C8382DBC();
}

uint64_t sub_1C83840F0()
{
  OUTLINED_FUNCTION_130();
  v3 = v2;
  OUTLINED_FUNCTION_16_0();
  v4 = *v1;
  OUTLINED_FUNCTION_95();
  *v5 = v4;

  OUTLINED_FUNCTION_70_0();
  if (!v0)
  {
    v6 = v3;
  }

  return v7(v6);
}

uint64_t sub_1C8384218()
{
  v0 = OUTLINED_FUNCTION_62_0();
  OUTLINED_FUNCTION_60(v0, v1);
  v2 = OUTLINED_FUNCTION_82_0();
  return sub_1C832DE28(v2, v3);
}

uint64_t sub_1C8384260(__int128 *a1)
{
  v3 = OBJC_IVAR____TtC18WorkflowUIServices25ParameterSummaryViewModel_templateDataSource;
  v4 = OUTLINED_FUNCTION_62_0();
  OUTLINED_FUNCTION_64_0(v4, v5);
  __swift_destroy_boxed_opaque_existential_1((v1 + v3));
  sub_1C830D408(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t (*sub_1C83842BC())(uint64_t a1)
{
  v0 = OUTLINED_FUNCTION_82_0();
  OUTLINED_FUNCTION_64_0(v0, v1);
  return j__swift_endAccess;
}

void sub_1C8384374()
{
  swift_beginAccess();

  v2 = sub_1C8384670(v1);

  v3 = v0 + OBJC_IVAR____TtC18WorkflowUIServices25ParameterSummaryViewModel_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v4 = *(v3 + 8);
    ObjectType = swift_getObjectType();
    (*(v4 + 8))(v2, 0, ObjectType, v4);

    swift_unknownObjectRelease();
  }

  else
  {
  }

  if (*(v0 + OBJC_IVAR____TtC18WorkflowUIServices25ParameterSummaryViewModel_pendingSelectNextParameterUpdate) == 1)
  {
    *(v0 + OBJC_IVAR____TtC18WorkflowUIServices25ParameterSummaryViewModel_pendingSelectNextParameterUpdate) = 0;
    ParameterSummaryViewModel.beginTypingInNextParameter()();
  }
}

Swift::Void __swiftcall ParameterSummaryViewModel.beginTypingInNextParameter()()
{
  sub_1C8387F80();
  if (v11)
  {
    sub_1C830D408(&v10, v12);
    v0 = v13;
    v1 = v14;
    __swift_project_boxed_opaque_existential_1(v12, v13);
    OUTLINED_FUNCTION_16_6();
    v3 = v2(v0, v1);
    sub_1C8387E30(v3, v4, &v10);

    sub_1C8344AB4(&v10, &v7, &qword_1EC29E660, &qword_1C8419D90);
    if (v8 || (sub_1C8375520(&v7, &qword_1EC29E660, &qword_1C8419D90), sub_1C8387BEC(), sub_1C83BB318(v5, &v7), , v8))
    {
      sub_1C830D408(&v7, v9);
      ParameterSummaryViewModel.beginTypingInParameter(_:)(v9);
      __swift_destroy_boxed_opaque_existential_1(v9);
      v6 = &v10;
    }

    else
    {
      sub_1C8375520(&v10, &qword_1EC29E660, &qword_1C8419D90);
      v6 = &v7;
    }

    sub_1C8375520(v6, &qword_1EC29E660, &qword_1C8419D90);
    __swift_destroy_boxed_opaque_existential_1(v12);
  }

  else
  {
    sub_1C8375520(&v10, &qword_1EC29E660, &qword_1C8419D90);
  }
}

double sub_1C83845E0()
{
  OUTLINED_FUNCTION_60(v0 + OBJC_IVAR____TtC18WorkflowUIServices25ParameterSummaryViewModel_parameters, v2);

  return result;
}

void sub_1C8384620(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18WorkflowUIServices25ParameterSummaryViewModel_parameters;
  v4 = OUTLINED_FUNCTION_62_0();
  OUTLINED_FUNCTION_33(v4, v5);
  *(v1 + v3) = a1;

  sub_1C8384374();
}

uint64_t sub_1C8384670(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  sub_1C8388070(v10);
  v7 = v1;
  v8 = v10;
  v9 = ObjectType;
  v4 = sub_1C8382820(sub_1C838BF88, &v6, a1);
  sub_1C8375520(v10, &unk_1EC29EAB0, &qword_1C8417C58);
  return v4;
}

uint64_t sub_1C8384704@<X0>(uint64_t a1@<X0>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  sub_1C8375B48(a1, v62);
  if (!v63)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC29EB80, &unk_1C8416660);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1C8415260;
    v13 = sub_1C840CD9C();

    *(v12 + 32) = v13;
    *a4 = v12;
    return result;
  }

  if (v63 != 1)
  {
    v54 = a3;
    sub_1C830D408(v62, v59);
    v64 = MEMORY[0x1E69E7CC0];
    v15 = v60;
    v16 = v61;
    __swift_mutable_project_boxed_opaque_existential_1(v59, v60);
    v17 = *(v16 + 32);
    v18 = swift_unknownObjectRetain();
    v17(v18, &protocol witness table for ParameterSummaryViewModel, v15, v16);
    v19 = v60;
    v20 = v61;
    __swift_project_boxed_opaque_existential_1(v59, v60);
    v21 = (*(v20 + 16))(v19, v20);
    v22 = *(v21 + 16);
    if (v22)
    {
      v23 = v21 + 32;
      do
      {
        sub_1C832DE28(v23, v56);
        v24 = sub_1C8388810(v56);
        v26 = v57;
        v25 = v58;
        __swift_mutable_project_boxed_opaque_existential_1(v56, v57);
        v27 = *(v25 + 64);
        v28 = swift_unknownObjectRetain();
        v27(v28, &protocol witness table for ParameterSummaryViewModel, v26, v25);
        v29 = v24;
        MEMORY[0x1CCA759B0]();
        if (*((v64 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v64 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1C840CFEC();
        }

        sub_1C840D00C();

        v30 = v64;
        __swift_destroy_boxed_opaque_existential_1(v56);
        v23 += 40;
        --v22;
      }

      while (v22);
    }

    else
    {

      v30 = MEMORY[0x1E69E7CC0];
    }

    v31 = v60;
    v32 = v61;
    __swift_project_boxed_opaque_existential_1(v59, v60);
    v33 = (*(v32 + 8))(v31, v32);
    v35 = v34;
    sub_1C8344AB4(v54, v56, &unk_1EC29EAB0, &qword_1C8417C58);
    v36 = v57;
    if (v57)
    {
      v37 = v58;
      __swift_project_boxed_opaque_existential_1(v56, v57);
      v38 = (*(v37 + 8))(v36, v37);
      v40 = v39;
      __swift_destroy_boxed_opaque_existential_1(v56);
      if (v33 == v38 && v35 == v40)
      {
      }

      else
      {
        v42 = sub_1C840D69C();

        if ((v42 & 1) == 0)
        {
          goto LABEL_27;
        }
      }

      sub_1C832DE28(v59, v56);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29EB78, &qword_1C8419FC8);
      type metadata accessor for ParameterSummaryArrayGroup(0);
      if (swift_dynamicCast())
      {
        if (*(v55 + OBJC_IVAR____TtC18WorkflowUIServices26ParameterSummaryArrayGroup_mode) == 1)
        {
          v43 = objc_opt_self();
          v44 = sub_1C840CD9C();
          v45 = v60;
          v46 = v61;
          __swift_project_boxed_opaque_existential_1(v59, v60);
          v47 = (*(v46 + 8))(v45, v46);
          v49 = v48;
          v50 = sub_1C840AF1C();
          v51 = objc_allocWithZone(WFSlotIdentifier);
          v52 = sub_1C838B474(v44, v47, v49, v50);
          v53 = [v43 addingSlotWithIdentifier:v52 imageScaleFactor:1.5];

          MEMORY[0x1CCA759B0]();
          if (*((v64 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v64 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1C840CFEC();
          }

          sub_1C840D00C();
          v30 = v64;
        }
      }

      goto LABEL_27;
    }

    sub_1C8375520(v56, &unk_1EC29EAB0, &qword_1C8417C58);

LABEL_27:
    *a4 = v30;
    return __swift_destroy_boxed_opaque_existential_1(v59);
  }

  sub_1C830D408(v62, v59);
  v6 = sub_1C8388810(v59);
  v7 = v60;
  v8 = v61;
  __swift_mutable_project_boxed_opaque_existential_1(v59, v60);
  v9 = *(v8 + 64);
  v10 = swift_unknownObjectRetain();
  v9(v10, &protocol witness table for ParameterSummaryViewModel, v7, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC29EB80, &unk_1C8416660);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1C8415260;
  *(v11 + 32) = v6;
  *a4 = v11;
  return __swift_destroy_boxed_opaque_existential_1(v59);
}

void ParameterSummaryViewModel.__allocating_init<A>(toolInvocation:toolSessionPool:)()
{
  OUTLINED_FUNCTION_26_4();
  v25 = v1;
  v26 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = sub_1C840C70C();
  OUTLINED_FUNCTION_5();
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v14 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v23 - v17;
  v19 = *(v10 + 16);
  v24 = v7;
  v19(&v23 - v17, v7, v8, v16);
  (v19)(v14, v7, v8);
  v20 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v21 = (v12 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = swift_allocObject();
  *(v22 + 16) = v3;
  *(v22 + 24) = v25;
  (*(v10 + 32))(v22 + v20, v14, v8);
  *(v22 + v21) = v5;
  swift_unknownObjectRetain();
  ParameterSummaryViewModel.__allocating_init<A>(toolInvocation:toolSessionPool:parameterTemplateMappingHandler:)(v18, v5, &unk_1C8419DA0, v22);
  (*(v10 + 8))(v24, v8);
  OUTLINED_FUNCTION_27_0();
}

uint64_t sub_1C8384E34(uint64_t a1, uint64_t a2)
{
  v2[6] = a1;
  v2[7] = a2;
  type metadata accessor for ParameterSummaryToolTemplate(0);
  v2[8] = swift_task_alloc();
  v3 = sub_1C840B4AC();
  v2[9] = v3;
  v2[10] = *(v3 - 8);
  v2[11] = swift_task_alloc();
  v2[12] = sub_1C840D05C();
  v2[13] = sub_1C840D04C();
  v4 = swift_task_alloc();
  v2[14] = v4;
  *v4 = v2;
  v4[1] = sub_1C8384FA8;

  return static ParameterSummaryParameterMapping.defaultMapping(toolInvocation:template:toolSessionPool:)();
}

uint64_t sub_1C8384FA8()
{
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_16_0();
  OUTLINED_FUNCTION_13_7();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_95();
  *v5 = v4;
  *(v6 + 120) = v0;

  v8 = sub_1C840D03C();
  if (v0)
  {
    v9 = sub_1C838515C;
  }

  else
  {
    v9 = sub_1C83850F0;
  }

  return MEMORY[0x1EEE6DFA0](v9, v8, v7);
}

uint64_t sub_1C83850F0()
{
  OUTLINED_FUNCTION_130();

  OUTLINED_FUNCTION_41();

  return v0();
}

uint64_t sub_1C838515C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_38();
  a21 = v23;
  a22 = v24;
  OUTLINED_FUNCTION_48_1();
  a20 = v22;
  v25 = *(v22 + 120);
  v27 = *(v22 + 56);
  v26 = *(v22 + 64);

  sub_1C840B36C();
  sub_1C83535E8(v27, v26);
  v28 = v25;
  v29 = sub_1C840B48C();
  v30 = sub_1C840D16C();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = *(v22 + 80);
    a10 = *(v22 + 88);
    v33 = *(v22 + 64);
    v32 = *(v22 + 72);
    v34 = swift_slowAlloc();
    a11 = swift_slowAlloc();
    *v34 = 136315394;
    swift_getErrorValue();
    v35 = sub_1C840D71C();
    v37 = sub_1C830E180(v35, v36, &a11);

    *(v34 + 4) = v37;
    *(v34 + 12) = 2080;
    v38 = ParameterSummaryToolTemplate.debugDescription.getter();
    v40 = v39;
    sub_1C838B69C(v33);
    v41 = sub_1C830E180(v38, v40, &a11);

    *(v34 + 14) = v41;
    _os_log_impl(&dword_1C830A000, v29, v30, "Failed to generate parameter template: %s template: %s", v34, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_134();
    OUTLINED_FUNCTION_134();

    (*(v31 + 8))(a10, v32);
  }

  else
  {
    v42 = *(v22 + 64);

    sub_1C838B69C(v42);
    v43 = OUTLINED_FUNCTION_15();
    v44(v43);
  }

  v45 = *(v22 + 48);

  *v45 = 0;
  *(v45 + 8) = 0xE000000000000000;
  *(v45 + 40) = 0;

  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_30();

  return v47(v46, v47, v48, v49, v50, v51, v52, v53, a9, a10, a11, a12, a13, a14);
}

void ParameterSummaryViewModel.init<A>(toolInvocation:toolSessionPool:parameterTemplateMappingHandler:)()
{
  OUTLINED_FUNCTION_26_4();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = sub_1C840C70C();
  OUTLINED_FUNCTION_5();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v0[OBJC_IVAR____TtC18WorkflowUIServices25ParameterSummaryViewModel_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v0[OBJC_IVAR____TtC18WorkflowUIServices25ParameterSummaryViewModel_pendingSelectNextParameterUpdate] = 0;
  *&v0[OBJC_IVAR____TtC18WorkflowUIServices25ParameterSummaryViewModel_parameters] = MEMORY[0x1E69E7CC0];
  v17 = &v0[OBJC_IVAR____TtC18WorkflowUIServices25ParameterSummaryViewModel_parameterTemplateMappingHandler];
  *v17 = v6;
  v17[1] = v4;
  v18 = v2 | 0x8000000000000000;
  (*(v13 + 16))(v16, v10, v11);
  v19 = type metadata accessor for ParameterSummaryViewModel.ToolTemplateDataSource(0);
  v20 = swift_allocObject();
  v21 = (v20 + OBJC_IVAR____TtCC18WorkflowUIServices25ParameterSummaryViewModel22ToolTemplateDataSource_sessionBackend);
  *v21 = v8;
  v21[1] = v18;
  (*(v13 + 32))(v20 + OBJC_IVAR____TtCC18WorkflowUIServices25ParameterSummaryViewModel22ToolTemplateDataSource_toolInvocation, v16, v11);
  v22 = &v0[OBJC_IVAR____TtC18WorkflowUIServices25ParameterSummaryViewModel_templateDataSource];
  v22[3] = v19;
  v22[4] = &protocol witness table for ParameterSummaryViewModel.ToolTemplateDataSource;
  *v22 = v20;
  v23 = type metadata accessor for ParameterSummaryViewModel();
  v24.receiver = v0;
  v24.super_class = v23;
  objc_msgSendSuper2(&v24, sel_init);
  (*(v13 + 8))(v10, v11);
  OUTLINED_FUNCTION_27_0();
}

_BYTE *ParameterSummaryViewModel.init(templateDataSource:parameterTemplateMappingHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, __n128 a4)
{
  *&v4[OBJC_IVAR____TtC18WorkflowUIServices25ParameterSummaryViewModel_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v4[OBJC_IVAR____TtC18WorkflowUIServices25ParameterSummaryViewModel_pendingSelectNextParameterUpdate] = 0;
  *&v4[OBJC_IVAR____TtC18WorkflowUIServices25ParameterSummaryViewModel_parameters] = MEMORY[0x1E69E7CC0];
  sub_1C832DE28(a1, &v4[OBJC_IVAR____TtC18WorkflowUIServices25ParameterSummaryViewModel_templateDataSource]);
  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  *(v8 + 24) = a3;
  v9 = &v4[OBJC_IVAR____TtC18WorkflowUIServices25ParameterSummaryViewModel_parameterTemplateMappingHandler];
  *v9 = &unk_1C8419DB0;
  v9[1] = v8;
  v12.receiver = v4;
  v12.super_class = type metadata accessor for ParameterSummaryViewModel();
  objc_msgSendSuper2(&v12, sel_init);
  v10 = OUTLINED_FUNCTION_8_7();
  __swift_destroy_boxed_opaque_existential_1(v10);
  return v4;
}

uint64_t sub_1C83856E8(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  a3(a2);
  v4 = *(v3 + 8);

  return v4();
}

uint64_t sub_1C8385754()
{
  OUTLINED_FUNCTION_130();
  v1[2] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29DF08, &qword_1C8417B20);
  OUTLINED_FUNCTION_59(v2);
  v1[3] = OUTLINED_FUNCTION_89();
  v1[4] = sub_1C840D05C();
  v1[5] = sub_1C840D04C();
  OUTLINED_FUNCTION_8_7();
  v4 = sub_1C840D03C();
  v1[6] = v4;
  v1[7] = v3;

  return MEMORY[0x1EEE6DFA0](sub_1C8385814, v4, v3);
}