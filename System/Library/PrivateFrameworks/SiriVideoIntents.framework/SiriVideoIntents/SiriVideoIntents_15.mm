uint64_t sub_2697E55BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_38_6();
  a23 = v25;
  a24 = v26;
  a22 = v24;
  if (qword_280322708 != -1)
  {
    OUTLINED_FUNCTION_0_6();
    swift_once();
  }

  v27 = v24[67];
  v28 = v24[49];
  v29 = v24[46];
  v30 = v24[47];
  v31 = __swift_project_value_buffer(v29, qword_281571B50);
  (*(v30 + 16))(v28, v31, v29);
  v32 = v27;
  v33 = sub_2698548B4();
  LOBYTE(v30) = sub_269854F24();

  if (os_log_type_enabled(v33, v30))
  {
    v34 = v24[67];
    v35 = OUTLINED_FUNCTION_27_2();
    v36 = OUTLINED_FUNCTION_9_3();
    a13 = v36;
    *v35 = 136315138;
    v24[35] = v34;
    v37 = v34;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803228C0, &qword_269859090);
    v38 = sub_269854AE4();
    v40 = sub_26974F520(v38, v39, &a13);

    *(v35 + 4) = v40;
    OUTLINED_FUNCTION_119(&dword_269684000, v41, v42, "ModelAppPredictor error gathering signals, %s");
    __swift_destroy_boxed_opaque_existential_0(v36);
    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_10();
  }

  v43 = OUTLINED_FUNCTION_22_3();
  v44(v43);
  v45 = v24[67];
  v46 = v24[63];
  v47 = v24[44];
  v48 = v24[39];
  v49 = v24[37];
  v50 = v24[28];
  v51 = v24[29];
  __swift_project_boxed_opaque_existential_1(v24 + 25, v50);
  OUTLINED_FUNCTION_23_17();
  v53 = v52(v50, v51);
  v55 = v54;

  sub_2697E719C((v24 + 2));
  *v46 = v48;
  v46[1] = v53;
  v46[2] = v55;
  swift_storeEnumTagMultiPayload();
  sub_2697E2F08(v46, v49);

  __swift_destroy_boxed_opaque_existential_0(v24 + 25);
  v56 = *(v47 + 112);
  sub_2697E2988(v46);
  OUTLINED_FUNCTION_2_34();
  v68 = v58;
  v69 = v57;
  v70 = v24[49];
  v71 = v24[48];
  sub_2697E71F0(v56);

  OUTLINED_FUNCTION_7_7();
  OUTLINED_FUNCTION_7_8();

  return v60(v59, v60, v61, v62, v63, v64, v65, v66, v68, v69, v70, v71, a13, a14, a15, a16);
}

void sub_2697E589C(uint64_t a1, uint64_t a2)
{
  v103 = sub_2698548D4();
  OUTLINED_FUNCTION_8();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_3_1();
  v9 = v8 - v7;
  v10 = sub_269853904();
  OUTLINED_FUNCTION_8();
  v12 = v11;
  v14 = MEMORY[0x28223BE20](v13);
  v99 = &v84 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v114 = &v84 - v16;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323B28, &qword_26985C360);
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v17);
  v115 = (&v84 - v18);
  v19 = *(a2 + 16);
  if (!v19)
  {
    return;
  }

  v98 = v9;
  v117 = MEMORY[0x277D84F90];
  sub_269815090(0, v19, 0);
  v20 = 0;
  v21 = 0;
  v22 = v117;
  v23 = a1 + 64;
  v87 = a2 + 32;
  v113 = v12 + 16;
  v107 = v12 + 88;
  v24 = *MEMORY[0x277D60170];
  v105 = *MEMORY[0x277D60188];
  v106 = v24;
  v97 = (v5 + 16);
  v96 = (v12 + 8);
  v95 = v5 + 8;
  v108 = v12;
  v100 = v12 + 96;
  *&v25 = 136315138;
  v88 = v25;
  v85 = v10;
  v109 = a1 + 64;
  v110 = a1;
  v86 = v19;
  do
  {
    v89 = v22;
    v90 = v21;
    v26 = (v87 + 16 * v20);
    v91 = v20 + 1;
    v27 = v26[1];
    v101 = *v26;
    v28 = 1 << *(a1 + 32);
    if (v28 < 64)
    {
      v29 = ~(-1 << v28);
    }

    else
    {
      v29 = -1;
    }

    v30 = v29 & *(a1 + 64);
    v31 = (v28 + 63) >> 6;
    v104 = v27;

    v32 = 0;
    v102 = MEMORY[0x277D84F90];
    v112 = v31;
    while (v30)
    {
LABEL_12:
      v34 = __clz(__rbit64(v30));
      v30 &= v30 - 1;
      v35 = v34 | (v32 << 6);
      v36 = (*(a1 + 48) + 16 * v35);
      v37 = *v36;
      v38 = v36[1];
      v39 = v108;
      v40 = *(a1 + 56) + *(v108 + 72) * v35;
      v41 = *(v111 + 48);
      v42 = *(v108 + 16);
      v43 = v115;
      v42(v115 + v41, v40, v10);
      *v43 = v37;
      v43[1] = v38;
      v44 = v43 + v41;
      v45 = v114;
      v42(v114, v44, v10);
      v46 = (*(v39 + 88))(v45, v10);
      if (v46 == v106)
      {
        v73 = OUTLINED_FUNCTION_21_18();
        v74(v73);
        v75 = *v42;

        v23 = v109;
        goto LABEL_26;
      }

      if (v46 == v105)
      {
        v47 = OUTLINED_FUNCTION_21_18();
        v48(v47);
        v49 = *v42;
        v50 = *(v49 + 16);

        v23 = v109;
        if (!v50 || (v51 = sub_26973CEF8(v101, v104), (v52 & 1) == 0))
        {

          a1 = v110;
          v31 = v112;
          goto LABEL_23;
        }

        v75 = *(*(v49 + 56) + 8 * v51);

LABEL_26:

        sub_26969B0C0(v115, &qword_280323B28, &qword_26985C360);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_26977C2D8();
          v102 = v79;
        }

        v76 = *(v102 + 16);
        if (v76 >= *(v102 + 24) >> 1)
        {
          sub_26977C2D8();
          v102 = v80;
        }

        v77 = v102;
        *(v102 + 16) = v76 + 1;
        v78 = (v77 + 24 * v76);
        v78[4] = v37;
        v78[5] = v38;
        v78[6] = v75;
        v10 = v85;
        a1 = v110;
        v31 = v112;
      }

      else
      {
        v53 = qword_280322708;

        if (v53 != -1)
        {
          OUTLINED_FUNCTION_0_6();
          swift_once();
        }

        v54 = v103;
        v55 = __swift_project_value_buffer(v103, qword_281571B50);
        (*v97)(v98, v55, v54);
        v56 = v115 + v41;
        v57 = v99;
        v42(v99, v56, v10);
        v58 = sub_2698548B4();
        v59 = sub_269854F24();
        v60 = os_log_type_enabled(v58, v59);
        v61 = v96;
        v62 = v96 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        if (v60)
        {
          v63 = OUTLINED_FUNCTION_27_2();
          v94 = v62;
          v64 = v57;
          v65 = v63;
          v93 = OUTLINED_FUNCTION_9_3();
          v116 = v93;
          *v65 = v88;
          sub_2697E7254();
          v92 = sub_269855544();
          v67 = v66;
          v68 = *v61;
          v68(v64, v10);
          v69 = sub_26974F520(v92, v67, &v116);

          *(v65 + 4) = v69;
          _os_log_impl(&dword_269684000, v58, v59, "groupValuesByApp unsupported signal value type: %s", v65, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v93);
          OUTLINED_FUNCTION_10();
          OUTLINED_FUNCTION_10();

          v70 = OUTLINED_FUNCTION_25_17();
          v72 = v103;
        }

        else
        {

          v68 = *v61;
          v68(v57, v10);
          v70 = OUTLINED_FUNCTION_25_17();
          v72 = v54;
        }

        v71(v70, v72);
        v31 = v112;
        v68(v114, v10);
        v23 = v109;
        a1 = v110;
LABEL_23:
        sub_26969B0C0(v115, &qword_280323B28, &qword_26985C360);
      }
    }

    while (1)
    {
      v33 = v32 + 1;
      if (__OFADD__(v32, 1))
      {
        __break(1u);
        return;
      }

      if (v33 >= v31)
      {
        break;
      }

      v30 = *(v23 + 8 * v33);
      ++v32;
      if (v30)
      {
        v32 = v33;
        goto LABEL_12;
      }
    }

    v21 = v90;
    v81 = sub_2697E399C(v102);

    v22 = v89;
    v117 = v89;
    v83 = *(v89 + 16);
    v82 = *(v89 + 24);
    if (v83 >= v82 >> 1)
    {
      sub_269815090((v82 > 1), v83 + 1, 1);
      v22 = v117;
    }

    *(v22 + 16) = v83 + 1;
    *(v22 + 8 * v83 + 32) = v81;
    v20 = v91;
  }

  while (v91 != v86);
}

double sub_2697E6020(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v6 = sub_269854A64();
  v7 = [a3 featureValueForName_];

  v8 = 0.0;
  if (v7)
  {
    v9 = [v7 dictionaryValue];

    sub_26969329C(0, &qword_2815718C0, 0x277CCABB0);
    v10 = sub_2698549E4();

    v11 = sub_2697E3630(v10);

    if (v11)
    {
      v12 = sub_26981D094(1, v11);
      v14 = v13;

      if ((v14 & 1) == 0)
      {
        v8 = *&v12;
      }
    }
  }

  return v8;
}

void sub_2697E6148(uint64_t a1, unint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  v4 = a1;
  v5 = *(a1 + 16);
  v6 = sub_26975004C();
  v7 = v6;
  v46 = v5;
  if (v6 >= v5)
  {
    v8 = v5;
  }

  else
  {
    v8 = v6;
  }

  v47 = MEMORY[0x277D84F90];
  sub_269814FF8(0, v8 & ~(v8 >> 63), 0);
  if (v7 < 0)
  {
LABEL_43:
    __break(1u);
    return;
  }

  v45 = a2 >> 62;
  v9 = a2;
  v40 = a2;
  if (v8)
  {
    v10 = 0;
    v44 = a2 & 0xC000000000000001;
    v41 = a2 & 0xFFFFFFFFFFFFFF8;
    v38 = v4;
    v11 = (v4 + 40);
    while (v46 != v10)
    {
      v12 = *(v11 - 1);
      v13 = *v11;
      if (v45)
      {
        v14 = sub_269855324();
      }

      else
      {
        v14 = *(v41 + 16);
      }

      if (v10 == v14)
      {
        goto LABEL_38;
      }

      if (v44)
      {

        v15 = MEMORY[0x26D646120](v10, v9);
      }

      else
      {
        if (v10 >= *(v41 + 16))
        {
          goto LABEL_42;
        }

        v15 = *(v9 + 8 * v10 + 32);

        swift_unknownObjectRetain();
      }

      v16 = a3(v12, v13, v15);
      v18 = v17;
      v20 = v19;
      swift_unknownObjectRelease();

      v22 = *(v47 + 16);
      v21 = *(v47 + 24);
      if (v22 >= v21 >> 1)
      {
        sub_269814FF8(v21 > 1, v22 + 1, 1);
      }

      ++v10;
      *(v47 + 16) = v22 + 1;
      v23 = (v47 + 24 * v22);
      v23[4] = v16;
      v23[5] = v18;
      v23[6] = v20;
      v11 += 2;
      v9 = v40;
      if (v8 == v10)
      {
        v24 = v41;
        v4 = v38;
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v24 = a2 & 0xFFFFFFFFFFFFFF8;
  v44 = v9 & 0xC000000000000001;
LABEL_21:
  v39 = v9 + 32;
  v25 = (v4 + 16 * v8 + 40);
  v42 = v24;
  while (v46 != v8)
  {
    if (v8 >= v46)
    {
      goto LABEL_39;
    }

    if (__OFADD__(v8, 1))
    {
      goto LABEL_40;
    }

    v27 = *(v25 - 1);
    v26 = *v25;
    if (v45)
    {
      v28 = sub_269855324();
    }

    else
    {
      v28 = *(v24 + 16);
    }

    if (v8 == v28)
    {
      return;
    }

    if (v44)
    {

      v29 = MEMORY[0x26D646120](v8, v40);
    }

    else
    {
      if (v8 >= *(v24 + 16))
      {
        goto LABEL_41;
      }

      v29 = *(v39 + 8 * v8);

      swift_unknownObjectRetain();
    }

    v30 = a3(v27, v26, v29);
    v32 = v31;
    v34 = v33;
    swift_unknownObjectRelease();

    v36 = *(v47 + 16);
    v35 = *(v47 + 24);
    if (v36 >= v35 >> 1)
    {
      sub_269814FF8(v35 > 1, v36 + 1, 1);
    }

    *(v47 + 16) = v36 + 1;
    v37 = (v47 + 24 * v36);
    v37[4] = v30;
    v37[5] = v32;
    v37[6] = v34;
    ++v8;
    v25 += 2;
    v24 = v42;
  }
}

uint64_t sub_2697E64B0@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t *a8@<X8>)
{
  v15 = type metadata accessor for AppDisambiguationContext(0);
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_3_1();
  v19 = v18 - v17;
  v20 = sub_2698548D4();
  OUTLINED_FUNCTION_8();
  v120 = v21;
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_3_1();
  v124 = v24 - v23;
  v25 = type metadata accessor for ModelInput(0);
  MEMORY[0x28223BE20](v25 - 8);
  OUTLINED_FUNCTION_3_1();
  v126 = v27 - v26;
  v125 = type metadata accessor for ModelParams(0);
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_3_1();
  v127 = (v30 - v29);
  v31 = sub_2698054AC(a1);
  if (v32)
  {
    v119 = a6;
    v34 = v33;
    v35 = a1[2];
    v117 = a8;
    v111 = v15;
    v110 = v19;
    v113 = a5;
    v118 = v20;
    v116 = v32;
    v112 = v31;
    v115 = a3;
    v114 = a2;
    if (v35)
    {
      v36 = OUTLINED_FUNCTION_19_17(MEMORY[0x277D84F90]);
      sub_269814E64(v36, v37, v38);
      v39 = v130[0];
      v40 = *(v130[0] + 16);
      v41 = (a1 + 6);
      v42 = v35;
      do
      {
        v43 = *v41;
        v130[0] = v39;
        v44 = *(v39 + 24);
        v45 = v40 + 1;
        if (v40 >= v44 >> 1)
        {
          sub_269814E64(v44 > 1, v40 + 1, 1);
          v39 = v130[0];
        }

        *(v39 + 16) = v45;
        *(v39 + 8 * v40 + 32) = v43;
        v41 += 3;
        ++v40;
        --v42;
      }

      while (v42);
    }

    else
    {
      v45 = *(MEMORY[0x277D84F90] + 16);
      if (!v45)
      {

        v53 = 0.0;
LABEL_17:
        v55 = *(a5 + 40);
        v54 = *(a5 + 48);
        sub_269853984();
        OUTLINED_FUNCTION_4_3();
        v56 = OUTLINED_FUNCTION_22_3();
        v109 = v57;
        v58(v56);
        v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322F40, &unk_269858D40);
        __swift_storeEnumTagSinglePayload(v126, 0, 1, v59);
        v60 = *(a5 + 120);
        v122 = *(a5 + 128);
        v123 = *(a5 + 112);
        v121 = *(a5 + 136);
        v62 = *(a5 + 144);
        v61 = *(a5 + 152);
        sub_2697E6EC0(a5, v130);
        v63 = v131;
        if (v131)
        {
          v64 = v132;
          __swift_project_boxed_opaque_existential_1(v130, v131);
          v65 = *(v64 + 16);
          OUTLINED_FUNCTION_24_17();
          v66 = v65(v63, v64);
          v63 = v67;
          __swift_destroy_boxed_opaque_existential_0(v130);
        }

        else
        {
          OUTLINED_FUNCTION_24_17();
          sub_26969B0C0(v130, &qword_2803255D0, &unk_2698667D0);
          v66 = 0;
        }

        *v127 = v114;
        v127[1] = v115;
        sub_2697E713C(v126, v127 + v125[5], type metadata accessor for ModelInput);
        *(v127 + v125[6]) = a1;
        v68 = (v127 + v125[7]);
        *v68 = v123;
        v68[1] = v60;
        v68[2] = v122;
        v68[3] = v121;
        v68[4] = v62;
        v68[5] = v61;
        v69 = (v127 + v125[8]);
        *v69 = v66;
        v69[1] = v63;
        v70 = qword_280322708;

        if (v70 != -1)
        {
          OUTLINED_FUNCTION_0_6();
          swift_once();
        }

        v71 = __swift_project_value_buffer(v118, qword_281571B50);
        (*(v120 + 16))(v124, v71, v118);
        v72 = a7;

        v73 = sub_2698548B4();
        v74 = sub_269854F14();

        if (os_log_type_enabled(v73, v74))
        {
          v75 = OUTLINED_FUNCTION_27_2();
          v76 = OUTLINED_FUNCTION_9_3();
          v129 = v76;
          *v75 = 136315138;
          v130[0] = v119;
          v130[1] = a7;

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322EA0, &unk_2698577C0);
          v77 = sub_269854AE4();
          v79 = sub_26974F520(v77, v78, &v129);

          *(v75 + 4) = v79;
          OUTLINED_FUNCTION_18_8();
          _os_log_impl(v80, v81, v82, v83, v84, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v76);
          OUTLINED_FUNCTION_10();
          OUTLINED_FUNCTION_18_7();

          (*(v120 + 8))(v124, v118);
          v72 = a7;
        }

        else
        {

          (*(v120 + 8))(v124, v118);
        }

        if (v35 < 2)
        {
          *v117 = v112;
          v117[1] = v116;
          if (!v35)
          {
            v94 = MEMORY[0x277D84F90];
LABEL_37:
            v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322F48, &unk_2698667E0);
            v96 = *(v95 + 64);
            v97 = (v117 + *(v95 + 80));
            v117[2] = v94;
            OUTLINED_FUNCTION_6_39();
            sub_2697E713C(v127, v117 + v96, v98);
            __swift_storeEnumTagSinglePayload(v117 + v96, 0, 1, v125);
            *v97 = v119;
            v97[1] = v72;
            type metadata accessor for AppSelectionResult(0);
LABEL_38:
            swift_storeEnumTagMultiPayload();
          }
        }

        else
        {
          if (v55 > v34 || v53 < v54)
          {

            v130[0] = a1;

            sub_2697E0E9C(v130);
            v86 = sub_269771A0C(*(v113 + 56), v130[0]);
            v89 = sub_2697DEC88(v86, v87, v88);
            if (v53 >= v54)
            {
              v90 = 2 * (v55 > v34);
            }

            else
            {
              v90 = (2 * (v55 > v34)) | 4;
            }

            OUTLINED_FUNCTION_6_39();
            sub_2697E713C(v127, v110 + v91, v92);
            __swift_storeEnumTagSinglePayload(v110 + v111[8], 1, 1, v109);
            *v110 = v89;
            *(v110 + 8) = 0;
            *(v110 + 16) = v90;
            *(v110 + v111[9]) = 0;
            v93 = (v110 + v111[10]);
            *v93 = v119;
            v93[1] = v72;
            sub_2697E713C(v110, v117, type metadata accessor for AppDisambiguationContext);
            type metadata accessor for AppSelectionResult(0);
            goto LABEL_38;
          }

          *v117 = v112;
          v117[1] = v116;
        }

        v99 = OUTLINED_FUNCTION_19_17(MEMORY[0x277D84F90]);
        sub_269814F0C(v99, v100, v101);
        v94 = v130[0];
        v102 = (a1 + 5);
        do
        {
          v104 = *(v102 - 1);
          v103 = *v102;
          v130[0] = v94;
          v105 = *(v94 + 16);
          v106 = *(v94 + 24);

          if (v105 >= v106 >> 1)
          {
            sub_269814F0C(v106 > 1, v105 + 1, 1);
            v94 = v130[0];
          }

          *(v94 + 16) = v105 + 1;
          v107 = v94 + 16 * v105;
          *(v107 + 32) = v104;
          *(v107 + 40) = v103;
          v102 += 3;
          --v35;
        }

        while (v35);
        goto LABEL_37;
      }

      v39 = MEMORY[0x277D84F90];
    }

    v51 = 0.0;
    v52 = 32;
    do
    {
      v51 = v51 + *(v39 + v52);
      v52 += 8;
      --v45;
    }

    while (v45);

    if (v51 == 0.0)
    {
      v53 = 0.0;
    }

    else
    {
      v53 = v34 / v51;
    }

    goto LABEL_17;
  }

  sub_2697E6EC0(a5, v130);
  v46 = v131;
  if (v131)
  {
    __swift_project_boxed_opaque_existential_1(v130, v131);
    OUTLINED_FUNCTION_23_17();
    v47 = OUTLINED_FUNCTION_22_3();
    v46 = v48(v47);
    v50 = v49;
    __swift_destroy_boxed_opaque_existential_0(v130);
  }

  else
  {
    sub_26969B0C0(v130, &qword_2803255D0, &unk_2698667D0);
    v50 = 0;
  }

  *a8 = a4;
  a8[1] = v46;
  a8[2] = v50;
  type metadata accessor for AppSelectionResult(0);
  swift_storeEnumTagMultiPayload();
}

void *sub_2697E6D54()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  __swift_destroy_boxed_opaque_existential_0((v0 + 72));

  return v0;
}

uint64_t sub_2697E6D8C()
{
  sub_2697E6D54();

  return MEMORY[0x2821FE8D8](v0, 120, 7);
}

uint64_t sub_2697E6DE4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2696BBE14;

  return sub_2697E3BC8();
}

uint64_t sub_2697E6EC0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803255D0, &unk_2698667D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_2697E6F30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
  }
}

uint64_t sub_2697E6F80(uint64_t a1, char a2, void *a3)
{
  v4 = 0;
  v33 = *(a1 + 16);
  for (i = (a1 + 48); ; i += 3)
  {
    if (v33 == v4)
    {
    }

    if (v4 >= *(a1 + 16))
    {
      break;
    }

    v7 = *(i - 2);
    v6 = *(i - 1);
    v8 = *i;
    v9 = *a3;

    v17 = sub_26973CEF8(v7, v6);
    v18 = v9[2];
    v19 = (v10 & 1) == 0;
    v20 = v18 + v19;
    if (__OFADD__(v18, v19))
    {
      goto LABEL_17;
    }

    v21 = v10;
    if (v9[3] >= v20)
    {
      if ((a2 & 1) == 0)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280326500, &unk_2698577E0);
        sub_2698552F4();
      }
    }

    else
    {
      sub_26980E1E8(v20, a2 & 1, v11, v12, v13, v14, v15, v16, v31, v32, v33, SBYTE4(v33));
      v22 = sub_26973CEF8(v7, v6);
      if ((v21 & 1) != (v23 & 1))
      {
        goto LABEL_19;
      }

      v17 = v22;
    }

    v24 = *a3;
    if (v21)
    {
      v25 = *(v24[7] + 8 * v17);

      *(v24[7] + 8 * v17) = v25;
    }

    else
    {
      v24[(v17 >> 6) + 8] |= 1 << v17;
      v26 = (v24[6] + 16 * v17);
      *v26 = v7;
      v26[1] = v6;
      *(v24[7] + 8 * v17) = v8;
      v27 = v24[2];
      v28 = __OFADD__(v27, 1);
      v29 = v27 + 1;
      if (v28)
      {
        goto LABEL_18;
      }

      v24[2] = v29;
    }

    ++v4;
    a2 = 1;
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  result = sub_2698555F4();
  __break(1u);
  return result;
}

uint64_t sub_2697E713C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_4_3();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_2697E71F0(uint64_t a1)
{
  v2 = type metadata accessor for AppSelectionResult(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2697E7254()
{
  result = qword_2803255E0;
  if (!qword_2803255E0)
  {
    sub_269853904();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803255E0);
  }

  return result;
}

void *sub_2697E72B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for TrialAppPredictorConfigProvider();
  v29[3] = v6;
  v29[4] = &off_287A44348;
  v29[0] = a1;
  v27 = &type metadata for PlayOnThirdPartySignalsCreator;
  v28 = &off_287A45FB8;
  v24 = &type metadata for CoreAnalyticsService;
  v25 = &xmmword_287A41610;
  type metadata accessor for ModelAppPredictor();
  v7 = swift_allocObject();
  v8 = __swift_mutable_project_boxed_opaque_existential_1(v29, v6);
  MEMORY[0x28223BE20](v8);
  v10 = (&v17[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v11 + 16))(v10);
  __swift_mutable_project_boxed_opaque_existential_1(v26, v27);
  __swift_mutable_project_boxed_opaque_existential_1(v23, v24);
  v12 = *v10;
  v22[3] = v6;
  v22[4] = &off_287A44348;
  v21[4] = &off_287A45FB8;
  v22[0] = v12;
  v21[3] = &type metadata for PlayOnThirdPartySignalsCreator;
  v20[3] = &type metadata for CoreAnalyticsService;
  v20[4] = &xmmword_287A41610;
  sub_2696A73F8(v22, (v7 + 2));
  v7[7] = a2;
  v7[8] = a3;
  sub_2696A73F8(v21, (v7 + 9));
  sub_2696A73F8(v22, &v18);
  v13 = swift_allocObject();
  sub_26968E5D4(&v18, v13 + 16);
  sub_2696A73F8(v20, &v18);
  __swift_mutable_project_boxed_opaque_existential_1(&v18, v19);
  v17[3] = &type metadata for CoreAnalyticsService;
  v17[4] = &xmmword_287A41610;
  type metadata accessor for AppSelectionResultAnalyticsLogger();
  v14 = swift_allocObject();
  __swift_mutable_project_boxed_opaque_existential_1(v17, &type metadata for CoreAnalyticsService);
  v14[5] = &type metadata for CoreAnalyticsService;
  v14[6] = &xmmword_287A41610;
  v14[7] = sub_2697E7518;
  v14[8] = v13;
  __swift_destroy_boxed_opaque_existential_0(v17);
  __swift_destroy_boxed_opaque_existential_0(v20);
  __swift_destroy_boxed_opaque_existential_0(v21);
  __swift_destroy_boxed_opaque_existential_0(v22);
  __swift_destroy_boxed_opaque_existential_0(&v18);
  v7[14] = v14;
  __swift_destroy_boxed_opaque_existential_0(v23);
  __swift_destroy_boxed_opaque_existential_0(v26);
  __swift_destroy_boxed_opaque_existential_0(v29);
  return v7;
}

uint64_t OUTLINED_FUNCTION_14_24()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_24_17()
{
  v6 = *(v3 - 232);
  v5 = *(v3 - 224);
  v7 = *(v3 - 240);

  sub_2697E6F30(v5, v1, v6, v7, v2, v0);
}

void *sub_2697E75F0()
{
  result = sub_2697E7610();
  qword_28033D8B0 = result;
  return result;
}

void *sub_2697E7610()
{
  if (qword_280322678 != -1)
  {
    swift_once();
  }

  v0 = qword_28033D8A8;
  type metadata accessor for ModelAppPredictor();
  swift_retain_n();
  v1 = sub_2697E3A34();
  v2 = qword_280322410;

  if (v2 != -1)
  {
    swift_once();
  }

  v3 = qword_28033D5F8;
  type metadata accessor for UserDefaultsProviderImpl();
  swift_allocObject();
  swift_retain_n();
  v4 = sub_2697B9550();
  v5 = sub_2697E87C4(v0, v1, v3, v4);

  return v5;
}

uint64_t sub_2697E7724()
{
  OUTLINED_FUNCTION_2_7();
  *(v1 + 520) = v0;
  *(v1 + 504) = v2;
  *(v1 + 512) = v3;
  *(v1 + 488) = v4;
  *(v1 + 496) = v5;
  *(v1 + 632) = v6;
  *(v1 + 480) = v7;
  v8 = sub_2698548D4();
  *(v1 + 528) = v8;
  *(v1 + 536) = *(v8 - 8);
  *(v1 + 544) = swift_task_alloc();
  *(v1 + 552) = swift_task_alloc();
  *(v1 + 560) = type metadata accessor for AppSelectionResult(0);
  *(v1 + 568) = swift_task_alloc();
  *(v1 + 576) = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_3_16();

  return MEMORY[0x2822009F8](v9);
}

uint64_t sub_2697E7830()
{
  v1 = *(v0 + 520);
  v2 = *(v0 + 632);
  __swift_project_boxed_opaque_existential_1((v1 + 16), *(v1 + 40));
  sub_2697EABE0(v0 + 216);
  v3 = *(v0 + 272);
  v4 = *(v0 + 280);
  v5 = *(v0 + 288);
  v6 = *(v0 + 296);
  v7 = *(v0 + 304);
  v8 = *(v0 + 312);
  v9 = *(v0 + 320);
  type metadata accessor for ForcedAppDisambiguation.AppSelectionResultRemapper();
  v10 = v2 & 1;
  v51 = *(v1 + 176);
  *(v0 + 424) = &type metadata for SiriSignalsGatherer;
  *(v0 + 432) = &off_287A41DC8;
  inited = swift_initStackObject();
  *(v0 + 584) = inited;
  __swift_mutable_project_boxed_opaque_existential_1(v0 + 400, *(v0 + 424));
  *(inited + 136) = &type metadata for SiriSignalsGatherer;
  *(inited + 144) = &off_287A41DC8;
  *(inited + 16) = v10;
  *(inited + 24) = v3;
  *(inited + 32) = v4;
  *(inited + 40) = v5;
  *(inited + 48) = v6;
  *(inited + 56) = v7;
  *(inited + 64) = v8;
  *(inited + 72) = v9;
  *(inited + 80) = v51;
  *(inited + 96) = sub_2697E865C;
  *(inited + 104) = v1;
  *(inited + 152) = sub_2697EB138;
  *(inited + 160) = 0;
  *(inited + 168) = sub_26968E738;
  *(inited + 176) = 0;
  *(inited + 184) = 0;
  *(inited + 192) = 0;
  swift_retain_n();
  swift_unknownObjectRetain();
  __swift_destroy_boxed_opaque_existential_0((v0 + 400));
  sub_2697E6EC0(v0 + 216, v0 + 440);
  v12 = *(v0 + 464);
  sub_2697E8668(v0 + 440);
  if (v12)
  {
    if (qword_280322708 != -1)
    {
      OUTLINED_FUNCTION_2_1(&qword_280322708);
    }

    __swift_project_value_buffer(*(v0 + 528), qword_281571B50);
    v13 = OUTLINED_FUNCTION_11_4();
    v14(v13);
    v15 = sub_2698548B4();
    v16 = sub_269854F14();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      OUTLINED_FUNCTION_15_2(&dword_269684000, v18, v19, "RoutingAppPredictor routing to new app selector");
      MEMORY[0x26D647170](v17, -1, -1);
    }

    v20 = *(v0 + 552);
    v21 = *(v0 + 536);
    v22 = *(v0 + 528);
    v23 = *(v0 + 520);

    (*(v21 + 8))(v20, v22);
    __swift_project_boxed_opaque_existential_1((v23 + 56), *(v23 + 80));
    v24 = swift_task_alloc();
    *(v0 + 592) = v24;
    *v24 = v0;
    v24[1] = sub_2697E7D10;
    OUTLINED_FUNCTION_6_40();

    __asm { BRAA            X8, X16 }
  }

  if (qword_280322708 != -1)
  {
    OUTLINED_FUNCTION_2_1(&qword_280322708);
  }

  __swift_project_value_buffer(*(v0 + 528), qword_281571B50);
  v27 = OUTLINED_FUNCTION_11_4();
  v28(v27);
  v29 = sub_2698548B4();
  v30 = sub_269854F14();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    *v31 = 0;
    OUTLINED_FUNCTION_15_2(&dword_269684000, v32, v33, "RoutingAppPredictor routing to legacy app selector");
    MEMORY[0x26D647170](v31, -1, -1);
  }

  v34 = *(v0 + 544);
  v35 = *(v0 + 536);
  v36 = *(v0 + 528);
  v37 = *(v0 + 520);
  v50 = *(v0 + 488);
  v52 = *(v0 + 504);

  (*(v35 + 8))(v34, v36);
  v38 = swift_task_alloc();
  *(v0 + 608) = v38;
  *(v38 + 16) = v37;
  *(v38 + 24) = v10;
  *(v38 + 32) = v50;
  *(v38 + 48) = v52;
  v39 = swift_task_alloc();
  *(v0 + 616) = v39;
  *v39 = v0;
  v39[1] = sub_2697E8028;
  OUTLINED_FUNCTION_6_40();

  return MEMORY[0x2822007B8](v40, v41, v42, v43, v44, v45, v46, v47);
}

uint64_t sub_2697E7D10()
{
  v1 = *v0;
  OUTLINED_FUNCTION_1_6();
  *v2 = v1;
  v3 = *v0;
  *v2 = *v0;

  v4 = swift_task_alloc();
  *(v1 + 600) = v4;
  *v4 = v3;
  v4[1] = sub_2697E7E74;

  return sub_269812CFC();
}

uint64_t sub_2697E7E74()
{
  OUTLINED_FUNCTION_2_7();
  v1 = *v0;
  OUTLINED_FUNCTION_1_6();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_3_16();

  return MEMORY[0x2822009F8](v3);
}

uint64_t sub_2697E7F5C()
{
  v1 = v0[72];
  v2 = v0[71];
  v3 = v0[60];

  sub_2697E71F0(v2);
  sub_2697E719C((v0 + 27));
  sub_2697E86E4(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_2697E8028()
{
  v1 = *v0;
  OUTLINED_FUNCTION_1_6();
  *v2 = v1;
  v3 = *v0;
  *v2 = *v0;

  v4 = swift_task_alloc();
  *(v1 + 624) = v4;
  *v4 = v3;
  v4[1] = sub_2697E81B0;

  return sub_269812CFC();
}

uint64_t sub_2697E81B0()
{
  OUTLINED_FUNCTION_2_7();
  v1 = *v0;
  OUTLINED_FUNCTION_1_6();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_3_16();

  return MEMORY[0x2822009F8](v3);
}

void sub_2697E8298(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  __swift_project_boxed_opaque_existential_1((a5 + 96), *(a5 + 120));

  sub_269818540();
}

uint64_t sub_2697E8300(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v16[0] = a6;
  v16[1] = a7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_2803255F8, &unk_2698668C0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v16 - v11;
  __swift_project_boxed_opaque_existential_1((a2 + 136), *(a2 + 160));
  (*(v10 + 16))(v12, a1, v9);
  v13 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v14 = swift_allocObject();
  (*(v10 + 32))(v14 + v13, v12, v9);
  sub_2696B10EC();
}

uint64_t sub_2697E8488(uint64_t a1)
{
  v2 = type metadata accessor for AppSelectionResult(0);
  MEMORY[0x28223BE20](v2 - 8);
  sub_2697E2F08(a1, &v5 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_2803255F8, &unk_2698668C0);
  return sub_269854D54();
}

uint64_t sub_2697E8528()
{
  sub_269706E7C();

  return MEMORY[0x2821FE8D8](v0, 192, 7);
}

uint64_t sub_2697E8580()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2696DEBD8;

  return sub_2697E7724();
}

uint64_t sub_2697E8668(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803255D0, &unk_2698667D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2697E86E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppSelectionResult(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2697E8748(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_2803255F8, &unk_2698668C0);

  return sub_2697E8488(a1);
}

void *sub_2697E87C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for TrialAppPredictorConfigProvider();
  v32[3] = v8;
  v32[4] = &off_287A44348;
  v32[0] = a1;
  v30 = type metadata accessor for ModelAppPredictor();
  v31 = &off_287A445C0;
  *&v29 = a2;
  v27 = &type metadata for PlayOnThirdPartySignalsCreator;
  v28 = &off_287A45FB8;
  v9 = type metadata accessor for AppSelector();
  v24 = v9;
  v25 = &off_287A3D6A0;
  v23[0] = a3;
  type metadata accessor for RoutingAppPredictor();
  v10 = swift_allocObject();
  v11 = __swift_mutable_project_boxed_opaque_existential_1(v32, v8);
  MEMORY[0x28223BE20](v11);
  v13 = (&v23[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v14 + 16))(v13);
  __swift_mutable_project_boxed_opaque_existential_1(v26, v27);
  v15 = __swift_mutable_project_boxed_opaque_existential_1(v23, v24);
  MEMORY[0x28223BE20](v15);
  v17 = (&v23[-1] - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v18 + 16))(v17);
  v19 = *v13;
  v20 = *v17;
  v10[5] = v8;
  v10[6] = &off_287A44348;
  v10[2] = v19;
  v10[15] = &type metadata for PlayOnThirdPartySignalsCreator;
  v10[16] = &off_287A45FB8;
  v10[20] = v9;
  v10[21] = &off_287A3D6A0;
  v10[17] = v20;
  sub_2696AE06C(&v29, (v10 + 7));
  v10[22] = a4;
  v10[23] = &off_287A41E38;
  __swift_destroy_boxed_opaque_existential_0(v23);
  __swift_destroy_boxed_opaque_existential_0(v26);
  __swift_destroy_boxed_opaque_existential_0(v32);
  return v10;
}

uint64_t sub_2697E8A54(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 88))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
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

uint64_t sub_2697E8A94(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t sub_2697E8AF4()
{
  v1 = v0;
  sub_269855204();
  v2 = MEMORY[0x26D645A60](0xD000000000000012, 0x80000002698808A0);
  OUTLINED_FUNCTION_1_46(v2, v3, &unk_287A447A8, v4, v5, v6, v7, v8, *v1, v1[1], v1[2], v1[3], v1[4], v18, 0);
  MEMORY[0x26D645A60](8236, 0xE200000000000000);
  v9 = v19;
  sub_269855204();
  v10 = MEMORY[0x26D645A60](0xD00000000000001ELL, 0x80000002698808C0);
  OUTLINED_FUNCTION_1_46(v10, v11, &unk_287A44718, v12, v13, v14, v15, v16, v1[5], v1[6], v1[7], v1[8], v1[9], v1[10], 0);

  MEMORY[0x26D645A60](v20, 0xE000000000000000);

  return v9;
}

uint64_t sub_2697E8C44(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 48))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2697E8C64(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 48) = v3;
  return result;
}

uint64_t OUTLINED_FUNCTION_1_46(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{

  return sub_2698552D4();
}

uint64_t sub_2697E8CD4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

uint64_t sub_2697E8D34(uint64_t *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_269855584() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v5 && (sub_269855584() & 1) == 0)
  {
    return 0;
  }

  if (a1[4] == a2[4] && a1[5] == a2[5])
  {
    return 1;
  }

  return sub_269855584();
}

id sub_2697E8E04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_269854A64();
  v6 = sub_269854A64();
  v7 = [v4 levelForFactor:v5 withNamespaceName:v6];

  return v7;
}

id sub_2697E8EAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_269854A64();
  v11[4] = a3;
  v11[5] = a4;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 1107296256;
  v11[2] = sub_2697E8CD4;
  v11[3] = &block_descriptor_21;
  v8 = _Block_copy(v11);

  v9 = [v4 addUpdateHandlerForNamespaceName:v7 usingBlock:v8];

  _Block_release(v8);

  return v9;
}

uint64_t sub_2697E8F80(uint64_t a1)
{
  result = swift_checkMetadataState();
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

void *sub_2697E902C(uint64_t a1, uint64_t a2)
{
  v5 = sub_2698548D4();
  OUTLINED_FUNCTION_8();
  v7 = v6;
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v36 - v12;
  v14 = v2[3];
  v15 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v14);
  v16 = (*(v15 + 8))(a1, a2, v2[5], v2[6], v14, v15);
  if (!v16)
  {
    if (qword_2803226F0 != -1)
    {
      OUTLINED_FUNCTION_2_35(&qword_2803226F0);
    }

    v27 = __swift_project_value_buffer(v5, qword_28033D940);
    (*(v7 + 16))(v13, v27, v5);

    v28 = sub_2698548B4();
    v29 = sub_269854F24();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = v5;
      v32 = swift_slowAlloc();
      v39 = v32;
      *(v30 + 4) = OUTLINED_FUNCTION_6_41(4.8149e-34);
      _os_log_impl(&dword_269684000, v28, v29, "Read factor %s from TRIClient, value is nil", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v32);
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_10();

      (*(v7 + 8))(v13, v31);
      return v16;
    }

    v33 = *(v7 + 8);
    v34 = v13;
LABEL_12:
    v33(v34, v5);
    return v16;
  }

  if (qword_2803226F0 != -1)
  {
    OUTLINED_FUNCTION_2_35(&qword_2803226F0);
  }

  v17 = __swift_project_value_buffer(v5, qword_28033D940);
  (*(v7 + 16))(v11, v17, v5);
  v18 = v16;

  v19 = sub_2698548B4();
  v20 = sub_269854F14();

  if (!os_log_type_enabled(v19, v20))
  {

    v33 = *(v7 + 8);
    v34 = v11;
    goto LABEL_12;
  }

  v21 = swift_slowAlloc();
  v22 = swift_slowAlloc();
  v37 = v5;
  v39 = v22;
  *(v21 + 4) = OUTLINED_FUNCTION_6_41(4.8151e-34);
  *(v21 + 12) = 2080;
  v38 = v16;
  v23 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280325688, &qword_269866B70);
  v24 = sub_269854AE4();
  v26 = sub_26974F520(v24, v25, &v39);

  *(v21 + 14) = v26;
  _os_log_impl(&dword_269684000, v19, v20, "Read factor %s from TRIClient, %s", v21, 0x16u);
  swift_arrayDestroy();
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_10();

  (*(v7 + 8))(v11, v37);
  return v16;
}

uint64_t sub_2697E93F0(uint64_t a1, uint64_t a2, void *a3, void (*a4)(void *__return_ptr, uint64_t), uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = sub_2698548D4();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v16 = result;
    v35 = a6;
    v36 = a7;
    v18 = a3[3];
    v17 = a3[4];
    __swift_project_boxed_opaque_existential_1(a3, v18);
    (*(v17 + 16))(v18, v17);
    a4(v40, v16 + 112);
    if (qword_280322708 != -1)
    {
      swift_once();
    }

    v19 = __swift_project_value_buffer(v11, qword_281571B50);
    v20 = v12;
    (*(v12 + 16))(v14, v19, v11);
    memcpy(__dst, v40, sizeof(__dst));
    sub_2697EA9F4(__dst, v39);
    sub_2697EA9F4(__dst, v39);
    v21 = v36;

    v22 = sub_2698548B4();
    v23 = sub_269854F14();

    sub_26976030C(__dst);
    v24 = os_log_type_enabled(v22, v23);
    v25 = v35;
    if (v24)
    {
      v26 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v38[0] = v34;
      *v26 = 136315394;
      *(v26 + 4) = sub_26974F520(v25, v21, v38);
      *(v26 + 12) = 2080;
      memcpy(v39, __dst, sizeof(v39));
      v27 = sub_269854AE4();
      v29 = v20;
      v30 = sub_26974F520(v27, v28, v38);

      *(v26 + 14) = v30;
      _os_log_impl(&dword_269684000, v22, v23, "Got an update from TRIClient for namespace %s, the new config is %s", v26, 0x16u);
      v31 = v34;
      swift_arrayDestroy();
      MEMORY[0x26D647170](v31, -1, -1);
      MEMORY[0x26D647170](v26, -1, -1);

      (*(v29 + 8))(v14, v11);
    }

    else
    {
      sub_26976030C(__dst);

      (*(v20 + 8))(v14, v11);
    }

    [*(v16 + 104) lock];
    swift_beginAccess();
    memcpy(v37, (v16 + 16), sizeof(v37));
    memcpy(v38, v40, sizeof(v38));
    memcpy((v16 + 16), v40, 0x58uLL);
    sub_26976030C(v37);
    v32 = *(v16 + 104);
    sub_2697EA9F4(v38, v39);
    [v32 unlock];
    memcpy(v39, v40, sizeof(v39));
    sub_26976030C(v39);
  }

  return result;
}

uint64_t sub_2697E97D0(uint64_t a1, uint64_t a2, void *a3, void (*a4)(void *__return_ptr, uint64_t), uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = sub_2698548D4();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v16 = result;
    v35 = a6;
    v36 = a7;
    v18 = a3[3];
    v17 = a3[4];
    __swift_project_boxed_opaque_existential_1(a3, v18);
    (*(v17 + 16))(v18, v17);
    a4(v40, v16 + 208);
    if (qword_280322708 != -1)
    {
      swift_once();
    }

    v19 = __swift_project_value_buffer(v11, qword_281571B50);
    v20 = v12;
    (*(v12 + 16))(v14, v19, v11);
    sub_2697EA660(v40, v39);
    v21 = v36;

    v22 = sub_2698548B4();
    v23 = sub_269854F14();

    v24 = os_log_type_enabled(v22, v23);
    v25 = v35;
    if (v24)
    {
      v26 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v38 = v34;
      *v26 = 136315394;
      *(v26 + 4) = sub_26974F520(v25, v21, &v38);
      *(v26 + 12) = 2080;
      sub_2697EA660(v39, &v37);
      v27 = sub_269854AE4();
      v28 = v20;
      v30 = v29;
      sub_2697E719C(v39);
      v31 = sub_26974F520(v27, v30, &v38);

      *(v26 + 14) = v31;
      _os_log_impl(&dword_269684000, v22, v23, "Got an update from TRIClient for namespace %s, the new config is %s", v26, 0x16u);
      v32 = v34;
      swift_arrayDestroy();
      MEMORY[0x26D647170](v32, -1, -1);
      MEMORY[0x26D647170](v26, -1, -1);

      (*(v28 + 8))(v14, v11);
    }

    else
    {

      sub_2697E719C(v39);
      (*(v20 + 8))(v14, v11);
    }

    [*(v16 + 200) lock];
    swift_beginAccess();
    sub_2697EA6D4(v40, v16 + 16);
    swift_endAccess();
    [*(v16 + 200) unlock];
    sub_2697E719C(v40);
  }

  return result;
}

uint64_t sub_2697E9B58()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 88));

  __swift_destroy_boxed_opaque_existential_0((v0 + *(*v0 + 104)));
  return v0;
}

uint64_t sub_2697E9C00()
{
  sub_2697E9B58();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

void *sub_2697E9C80(void *a1, uint64_t a2, unint64_t a3, void *a4)
{
  v8 = sub_2698548D4();
  OUTLINED_FUNCTION_8();
  v34 = v9;
  MEMORY[0x28223BE20](v10);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42[3] = sub_2697EA59C();
  v42[4] = &off_287A447C8;
  v42[0] = a1;
  a4[13] = [objc_allocWithZone(MEMORY[0x277CCAAF8]) init];
  sub_2696A73F8(v42, v41);
  v41[5] = a2;
  v41[6] = a3;
  *&v40[24] = &type metadata for TrialClientConfiguration;
  *&v40[32] = &off_287A44AA8;
  OUTLINED_FUNCTION_3_42();
  *v40 = swift_allocObject();
  sub_2697EA5E0(v41, *v40 + 16);
  v13 = __swift_project_boxed_opaque_existential_1(v40, &type metadata for TrialClientConfiguration);

  sub_2697EA730(v13, __src);
  __swift_destroy_boxed_opaque_existential_0(v40);
  memcpy(a4 + 2, __src, 0x58uLL);
  a4[17] = &type metadata for TrialClientConfiguration;
  a4[18] = &off_287A44AA8;
  OUTLINED_FUNCTION_3_42();
  v14 = swift_allocObject();
  a4[14] = v14;
  sub_2697EA5E0(v41, v14 + 16);
  v36 = a2;
  v15 = sub_269854A64();
  v35 = a1;
  v16 = [a1 compatibilityVersionWithNamespaceName_];

  if (qword_280322708 != -1)
  {
    OUTLINED_FUNCTION_2_1(&qword_280322708);
  }

  __swift_project_value_buffer(v8, qword_281571B50);
  OUTLINED_FUNCTION_5_35();
  v17(v12);

  v18 = v8;
  v19 = sub_2698548B4();
  v20 = sub_269854F14();

  v21 = v15;
  v22 = v12;
  if (os_log_type_enabled(v19, v20))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v33 = v22;
    v39 = v24;
    *v23 = 136315650;
    *(v23 + 4) = sub_26974F520(v36, a3, &v39);
    *(v23 + 12) = 1024;
    *(v23 + 14) = v16;
    *(v23 + 18) = 2080;
    swift_beginAccess();
    memcpy(v40, a4 + 2, sizeof(v40));
    memcpy(v38, a4 + 2, sizeof(v38));
    sub_2697EA9F4(v40, &v37);
    v25 = sub_269854AE4();
    v32 = v18;
    v27 = sub_26974F520(v25, v26, &v39);

    *(v23 + 20) = v27;
    _os_log_impl(&dword_269684000, v19, v20, "TRIClient for namespace %s, namespaceVersion %u, initial config = %s", v23, 0x1Cu);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_10();

    (v21)[1](v33, v32);
  }

  else
  {

    (v21)[1](v12, v18);
  }

  v28 = swift_allocObject();
  swift_weakInit();
  sub_2696A73F8(v42, v40);
  v29 = swift_allocObject();
  v29[2] = v28;
  sub_26968E5D4(v40, (v29 + 3));
  v29[8] = sub_2697EACD4;
  v29[9] = 0;
  v30 = v36;
  v29[10] = v36;
  v29[11] = a3;

  sub_2697E8EAC(v30, a3, sub_2697EA9C0, v29);

  swift_unknownObjectRelease();

  sub_2697EA630(v41);

  __swift_destroy_boxed_opaque_existential_0(v42);
  return a4;
}

void *sub_2697EA120(void *a1, uint64_t a2, unint64_t a3, void *a4)
{
  sub_2698548D4();
  OUTLINED_FUNCTION_8();
  v28 = v9;
  v29 = v8;
  MEMORY[0x28223BE20](v8);
  v11 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36[3] = sub_2697EA59C();
  v36[4] = &off_287A447C8;
  v36[0] = a1;
  a4[25] = [objc_allocWithZone(MEMORY[0x277CCAAF8]) init];
  sub_2696A73F8(v36, v33);
  v34 = a2;
  v35 = a3;
  v31[3] = &type metadata for TrialClientConfiguration;
  v31[4] = &off_287A44AA8;
  OUTLINED_FUNCTION_3_42();
  v31[0] = swift_allocObject();
  sub_2697EA5E0(v33, v31[0] + 16);
  type metadata accessor for TrialAppPredictorConfigProvider();

  sub_2697DC998(v32);
  __swift_destroy_boxed_opaque_existential_0(v31);
  memcpy(a4 + 2, v32, 0xB8uLL);
  a4[29] = &type metadata for TrialClientConfiguration;
  a4[30] = &off_287A44AA8;
  v12 = a2;
  OUTLINED_FUNCTION_3_42();
  v13 = swift_allocObject();
  a4[26] = v13;
  sub_2697EA5E0(v33, v13 + 16);
  v14 = sub_269854A64();
  v27[1] = a1;
  v15 = [a1 compatibilityVersionWithNamespaceName_];

  if (qword_280322708 != -1)
  {
    OUTLINED_FUNCTION_2_1(&qword_280322708);
  }

  __swift_project_value_buffer(v29, qword_281571B50);
  OUTLINED_FUNCTION_5_35();
  v16(v11);

  v17 = sub_2698548B4();
  v18 = sub_269854F14();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    *v19 = 136315650;
    *(v19 + 4) = sub_26974F520(v12, a3, &v30);
    *(v19 + 12) = 1024;
    *(v19 + 14) = v15;
    *(v19 + 18) = 2080;
    swift_beginAccess();
    sub_2697EA660((a4 + 2), v32);
    v20 = sub_269854AE4();
    v27[0] = v11;
    v22 = v12;
    v23 = sub_26974F520(v20, v21, &v30);

    *(v19 + 20) = v23;
    v12 = v22;
    _os_log_impl(&dword_269684000, v17, v18, "TRIClient for namespace %s, namespaceVersion %u, initial config = %s", v19, 0x1Cu);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_10();

    (*(v28 + 8))(v27[0], v29);
  }

  else
  {

    off_287A44950(v11, v29);
  }

  v24 = swift_allocObject();
  swift_weakInit();
  sub_2696A73F8(v36, v32);
  v25 = swift_allocObject();
  v25[2] = v24;
  sub_26968E5D4(v32, (v25 + 3));
  v25[8] = sub_2697DC95C;
  v25[9] = 0;
  v25[10] = v12;
  v25[11] = a3;

  sub_2697E8EAC(v12, a3, sub_2697EA618, v25);

  swift_unknownObjectRelease();

  sub_2697EA630(v33);

  __swift_destroy_boxed_opaque_existential_0(v36);
  return a4;
}

unint64_t sub_2697EA59C()
{
  result = qword_280325680;
  if (!qword_280325680)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280325680);
  }

  return result;
}

uint64_t block_copy_helper_21(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

double sub_2697EA730@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v24 = &type metadata for TrialClientConfiguration;
  v25 = &off_287A44AA8;
  OUTLINED_FUNCTION_3_42();
  v23[0] = swift_allocObject();
  sub_2697EA5E0(a1, v23[0] + 16);
  __swift_project_boxed_opaque_existential_1(v23, &type metadata for TrialClientConfiguration);
  v4 = sub_2697E902C(0xD000000000000017, 0x8000000269880930);
  if (v4 && (v5 = sub_2697DE348(v4), v6))
  {
    v22[0] = v5;
    v22[1] = v6;
    sub_2697EAD1C(v22, &v21);

    v7 = v21;
  }

  else
  {
    v7 = MEMORY[0x277D84FA0];
  }

  __swift_project_boxed_opaque_existential_1(v23, v24);
  v8 = sub_2697E902C(0xD000000000000013, 0x8000000269880950);
  if (v8)
  {
    v9 = v8;
    v10 = [v8 BOOLeanValue];
  }

  else
  {
    v10 = 0;
  }

  __swift_project_boxed_opaque_existential_1(v23, v24);
  v11 = sub_2697E902C(0xD000000000000015, 0x8000000269880970);
  if (v11)
  {
    v12 = v11;
    v13 = [v11 longValue];

    v14 = v13 < 1;
    if (v13 >= 1)
    {
      v15 = v13;
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v15 = 0;
    v14 = 1;
  }

  __swift_project_boxed_opaque_existential_1(v23, v24);
  v16 = sub_2697E902C(0xD00000000000001BLL, 0x8000000269880990);
  if (v16)
  {
    v17 = v16;
    v18 = [v16 longValue];

    v19 = v18;
  }

  else
  {
    v19 = 21600.0;
  }

  LOBYTE(v22[0]) = v14;
  LOBYTE(v21) = 1;
  __swift_destroy_boxed_opaque_existential_0(v23);
  *a2 = v10;
  *(a2 + 8) = v15;
  *(a2 + 16) = v22[0];
  *(a2 + 24) = v7;
  *(a2 + 32) = v19;
  *(a2 + 40) = 0;
  *(a2 + 48) = v21;
  *(a2 + 56) = xmmword_269866A20;
  *&result = 4;
  *(a2 + 72) = xmmword_269866A30;
  return result;
}

uint64_t objectdestroy_7Tm_2()
{

  __swift_destroy_boxed_opaque_existential_0((v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t sub_2697EAA50(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
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

uint64_t sub_2697EAA90(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t OUTLINED_FUNCTION_2_35(uint64_t a1)
{

  return swift_once();
}

unint64_t OUTLINED_FUNCTION_6_41(float a1)
{
  *v3 = a1;

  return sub_26974F520(v2, v1, (v4 - 88));
}

id sub_2697EAB4C@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + 104);
  [v3 lock];
  swift_beginAccess();
  memcpy(__dst, (v1 + 16), sizeof(__dst));
  memcpy(a1, (v1 + 16), 0x58uLL);
  sub_2697EA9F4(__dst, v5);
  return [v3 unlock];
}

id sub_2697EABE0@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 200);
  [v3 lock];
  swift_beginAccess();
  sub_2697EA660(v1 + 16, a1);
  return [v3 unlock];
}

uint64_t sub_2697EAC54(uint64_t a1)
{
  type metadata accessor for TrialSignalCollectConfigProvider();
  v1 = swift_allocObject();
  result = sub_2697EB074();
  qword_28033D8B8 = v1;
  return result;
}

void *sub_2697EACD4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2697EA730(v3, __src);
  return memcpy(a2, __src, 0x58uLL);
}

void sub_2697EAD1C(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v43 = a2;
  v45 = sub_269851B04();
  v5 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v44 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  v7 = a1[1];
  v48 = 44;
  v49 = 0xE100000000000000;
  v47 = &v48;

  v9 = sub_2696A6A74(0x7FFFFFFFFFFFFFFFLL, 1, sub_2696A2958, v46, v8, v7);
  v42 = v3;
  v10 = *(v9 + 16);
  v11 = MEMORY[0x277D84F90];
  if (v10)
  {
    v41 = v5;
    v48 = MEMORY[0x277D84F90];
    sub_269814F0C(0, v10, 0);
    v12 = 0;
    v13 = v48;
    v14 = (v9 + 56);
    while (v12 < *(v9 + 16))
    {
      v16 = *(v14 - 3);
      v15 = *(v14 - 2);
      v17 = v13;
      v18 = *(v14 - 1);
      v19 = *v14;

      v20 = v18;
      v13 = v17;
      v21 = MEMORY[0x26D645A10](v16, v15, v20, v19);
      v23 = v22;

      v48 = v13;
      v25 = v13[2];
      v24 = v13[3];
      if (v25 >= v24 >> 1)
      {
        sub_269814F0C(v24 > 1, v25 + 1, 1);
        v13 = v48;
      }

      ++v12;
      v13[2] = v25 + 1;
      v26 = &v13[2 * v25];
      v26[4] = v21;
      v26[5] = v23;
      v14 += 4;
      if (v10 == v12)
      {

        v5 = v41;
        v11 = MEMORY[0x277D84F90];
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  else
  {

    v13 = MEMORY[0x277D84F90];
LABEL_9:
    v27 = v13[2];
    if (v27)
    {
      v50 = v11;
      sub_269814F0C(0, v27, 0);
      v28 = v50;
      v29 = (v5 + 1);
      v41 = v13;
      v30 = v13 + 5;
      do
      {
        v31 = *v30;
        v48 = *(v30 - 1);
        v49 = v31;

        v32 = v44;
        sub_269851AE4();
        sub_269693054();
        v33 = sub_2698550F4();
        v35 = v34;
        (*v29)(v32, v45);

        v50 = v28;
        v37 = *(v28 + 16);
        v36 = *(v28 + 24);
        if (v37 >= v36 >> 1)
        {
          sub_269814F0C(v36 > 1, v37 + 1, 1);
          v28 = v50;
        }

        *(v28 + 16) = v37 + 1;
        v38 = v28 + 16 * v37;
        *(v38 + 32) = v33;
        *(v38 + 40) = v35;
        v30 += 2;
        --v27;
      }

      while (v27);
    }

    else
    {

      v28 = MEMORY[0x277D84F90];
    }

    sub_2697F1EE0(v28);
    *v43 = v39;
  }
}

uint64_t sub_2697EB074()
{
  v1 = [objc_opt_self() clientWithIdentifier_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280325690, &qword_269866C38);
  v2 = swift_allocObject();
  *(v0 + 16) = sub_2697E9C80(v1, 0xD00000000000001CLL, 0x80000002698809F0, v2);
  return v0;
}

BOOL sub_2697EB144(uint64_t a1)
{
  v2 = v1;
  type metadata accessor for SignalRecordingContext(0);
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v4);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_5_36();
  sub_2697EC8F4(a1, v6, v7);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 2u:
      v12 = OUTLINED_FUNCTION_4_35();
      v14 = sub_2697EC954(v12, v13);
      v15 = (*(v2 + 64))(v14);
      result = (*(v2 + 80))() < v15;
      break;
    case 3u:
    case 4u:

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323C10, &unk_269866CD0);
      OUTLINED_FUNCTION_2_36();
      v8 = &v6[v10];
      goto LABEL_4;
    default:
      v8 = OUTLINED_FUNCTION_4_35();
LABEL_4:
      sub_2697EC954(v8, v9);
      result = 0;
      break;
  }

  return result;
}

uint64_t sub_2697EB268(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v3[5] = *v2;
  v4 = type metadata accessor for ModelParams(0);
  v3[6] = v4;
  OUTLINED_FUNCTION_8_9(v4);
  v3[7] = swift_task_alloc();
  v5 = type metadata accessor for AppDisambiguationContext(0);
  v3[8] = v5;
  OUTLINED_FUNCTION_8_9(v5);
  v3[9] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323CC8, &unk_269866680);
  OUTLINED_FUNCTION_8_9(v6);
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();
  v7 = type metadata accessor for AppSelectionResult(0);
  v3[12] = v7;
  OUTLINED_FUNCTION_8_9(v7);
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  v8 = sub_2698548D4();
  v3[15] = v8;
  v3[16] = *(v8 - 8);
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();
  v3[20] = swift_task_alloc();
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();
  v9 = type metadata accessor for SignalRecordingContext(0);
  v3[23] = v9;
  OUTLINED_FUNCTION_8_9(v9);
  v3[24] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2697EB48C);
}

void sub_2697EB48C()
{
  v1 = v0[3];
  if (v1 >> 62)
  {
    v2 = sub_269855324();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v2 == 2)
  {
    v3 = v0[24];
    OUTLINED_FUNCTION_5_36();
    sub_2697EC8F4(v4, v3, v5);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v7 = v0[24];
    if (EnumCaseMultiPayload == 2)
    {
      v0[25] = v7[2];
      v0[26] = v7[3];
      v0[27] = v7[4];
      v0[28] = v7[5];
      v0[29] = v7[6];
      if (qword_2803226F0 != -1)
      {
        swift_once();
      }

      v8 = v0[22];
      v10 = v0[15];
      v9 = v0[16];
      v11 = __swift_project_value_buffer(v10, qword_28033D940);
      v0[30] = v11;
      v12 = *(v9 + 16);
      v0[31] = v12;
      v0[32] = (v9 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v12(v8, v11, v10);

      v13 = sub_2698548B4();
      v14 = sub_269854F14();

      v15 = os_log_type_enabled(v13, v14);
      v16 = v0[22];
      v18 = v0[15];
      v17 = v0[16];
      if (v15)
      {
        v19 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        *v19 = 136315138;
        v20 = OUTLINED_FUNCTION_0_17();
        *(v19 + 4) = sub_26974F520(v20, v21, v22);
        _os_log_impl(&dword_269684000, v13, v14, "ABComparisonPlayOnThirdPartyAppHandler specifiedAppId %s", v19, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v30);
        OUTLINED_FUNCTION_10();
        OUTLINED_FUNCTION_10();
      }

      v23 = *(v17 + 8);
      v23(v16, v18);
      v0[33] = v23;
      __swift_project_boxed_opaque_existential_1((v0[4] + 24), *(v0[4] + 48));
      sub_2698175E8();
      v0[34] = v24;
      v25 = swift_task_alloc();
      v0[35] = v25;
      *v25 = v0;
      v25[1] = sub_2697EB8AC;
      OUTLINED_FUNCTION_112();

      __asm { BRAA            X8, X16 }
    }

    sub_2697EC954(v7, type metadata accessor for SignalRecordingContext);
  }

  OUTLINED_FUNCTION_112();

  __asm { BRAA            X3, X16 }
}

uint64_t sub_2697EB8AC()
{

  return MEMORY[0x2822009F8](sub_2697EB9E0);
}

void sub_2697EB9E0()
{
  v1 = v0;
  sub_2697EC8F4(v0[14], v0[13], type metadata accessor for AppSelectionResult);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v56 = v0[31];
      v57 = v0[30];
      v58 = v0[20];
      v59 = v0[15];
      v60 = v0[13];
      v61 = v0[9];

      sub_26971522C(v60, v61);
      v56(v58, v57, v59);
      v62 = sub_2698548B4();
      v63 = sub_269854F14();
      if (os_log_type_enabled(v62, v63))
      {
        v64 = OUTLINED_FUNCTION_16_2();
        *v64 = 0;
        _os_log_impl(&dword_269684000, v62, v63, "ABComparisonPlayOnThirdPartyAppHandler got disambiguate", v64, 2u);
        OUTLINED_FUNCTION_10();
      }

      v65 = v0[33];
      v66 = v1[20];
      v67 = v1[15];
      v69 = v1[8];
      v68 = v1[9];
      v70 = v1[6];

      v65(v66, v67);
      v71 = v68 + *(v69 + 28);
      v37 = *(*(v71 + *(v70 + 24)) + 16);
      if (v37 >= 2)
      {
        v72 = v1[9];
        v73 = v1[6];
        v74 = v1[7];
        sub_2697EC8F4(v71, v74, type metadata accessor for ModelParams);
        OUTLINED_FUNCTION_2_36();
        sub_2697EC954(v72, v75);
        v19 = *(v74 + *(v73 + 32) + 8);

        OUTLINED_FUNCTION_6_42();
        v38 = 0;
LABEL_26:
        v76 = 2;
LABEL_27:
        v77 = v1[3] & 0xC000000000000001;
        sub_269750050();
        if (v77)
        {
          v78 = MEMORY[0x26D646120](0, v1[3]);
        }

        else
        {
          v78 = *(v1[3] + 32);
        }

        sub_269750050();
        v79 = v1[3];
        if (v77)
        {
          v80 = MEMORY[0x26D646120](1, v79);
        }

        else
        {
          v80 = *(v79 + 40);
        }

        v81 = v80;
        v82 = [objc_allocWithZone(MEMORY[0x277D581B8]) init];
        if (!v82)
        {
          OUTLINED_FUNCTION_0_54();
          sub_2697EC954(v85, v86);

          goto LABEL_51;
        }

        v83 = v82;
        if ((v37 & 0xFFFFFFFF80000000) != 0)
        {
          v84 = 1;
        }

        else
        {
          v84 = v38;
        }

        if (v84)
        {
          [v82 deleteNumCandidateApps];
        }

        else
        {
          [v82 setNumCandidateApps_];
        }

        if (v76 == 2)
        {
          [v83 deleteIsDecisionCorrect];
          if (!v19)
          {
            goto LABEL_47;
          }
        }

        else
        {
          [v83 setIsDecisionCorrect_];
          if (!v19)
          {
            goto LABEL_47;
          }
        }

        v89 = OUTLINED_FUNCTION_2_6();
        v91 = sub_2697EC350(v89, v90);
        swift_bridgeObjectRelease_n();
        if ((v91 & 0x100000000) == 0)
        {
          [v83 setModelVersion_];
LABEL_48:
          [v83 setProjectIntent_];
          [v78 setAbModelEvaluated_];
          v92 = [objc_allocWithZone(MEMORY[0x277D581C0]) init];
          v93 = v1[14];
          if (v92)
          {
            v94 = v92;
            [v92 setTriggerReason_];
            [v81 setAbModelResultTriggered_];

            OUTLINED_FUNCTION_0_54();
            sub_2697EC954(v93, v95);
            goto LABEL_52;
          }

          OUTLINED_FUNCTION_0_54();
          sub_2697EC954(v93, v96);

LABEL_51:

LABEL_52:

          OUTLINED_FUNCTION_112();

          __asm { BRAA            X3, X16 }
        }

LABEL_47:
        [v83 deleteModelVersion];
        goto LABEL_48;
      }

      v101 = v1[9];
      OUTLINED_FUNCTION_0_54();
      sub_2697EC954(v102, v103);

      OUTLINED_FUNCTION_2_36();
      v15 = v101;
      break;
    case 2u:
      v16 = v0[31];
      v17 = v0[13];

      v18 = *v17;
      v19 = v17[2];
      v20 = OUTLINED_FUNCTION_10_27();
      v16(v20);
      v21 = sub_2698548B4();
      v22 = sub_269854F14();
      if (os_log_type_enabled(v21, v22))
      {
        *OUTLINED_FUNCTION_16_2() = 0;
        OUTLINED_FUNCTION_24_18(&dword_269684000, v23, v24, "ABComparisonPlayOnThirdPartyAppHandler got noAppAvailable");
        OUTLINED_FUNCTION_10();
      }

      v25 = v0[33];

      v26 = OUTLINED_FUNCTION_0_17();
      v25(v26);
      goto LABEL_12;
    case 3u:
      v27 = v0[31];
      v28 = v0[13];

      v18 = *v28;
      v19 = v28[2];
      v29 = OUTLINED_FUNCTION_10_27();
      v27(v29);
      v30 = sub_2698548B4();
      v31 = sub_269854F14();
      if (os_log_type_enabled(v30, v31))
      {
        *OUTLINED_FUNCTION_16_2() = 0;
        OUTLINED_FUNCTION_24_18(&dword_269684000, v32, v33, "ABComparisonPlayOnThirdPartyAppHandler got failed");
        OUTLINED_FUNCTION_10();
      }

      v34 = v0[33];

      v35 = OUTLINED_FUNCTION_0_17();
      v34(v35);
      if (!v18)
      {
        goto LABEL_13;
      }

LABEL_12:
      v36 = *(v18 + 16);

      if (v36 <= 1)
      {
        OUTLINED_FUNCTION_0_54();
        sub_2697EC954(v87, v88);

        goto LABEL_51;
      }

LABEL_13:
      v37 = 0;
      v38 = 1;
      goto LABEL_26;
    case 4u:
    case 5u:
      v2 = v0[31];
      v3 = v0[30];
      v4 = v0[17];
      v5 = v0[15];

      v2(v4, v3, v5);
      v6 = sub_2698548B4();
      v7 = sub_269854F14();
      v8 = os_log_type_enabled(v6, v7);
      v9 = v0[33];
      v10 = v1[17];
      v11 = v1[14];
      v12 = v1[15];
      if (v8)
      {
        v13 = OUTLINED_FUNCTION_16_2();
        *v13 = 0;
        _os_log_impl(&dword_269684000, v6, v7, "ABComparisonPlayOnThirdPartyAppHandler got other", v13, 2u);
        OUTLINED_FUNCTION_10();
      }

      v9(v10, v12);
      OUTLINED_FUNCTION_0_54();
      v15 = v11;
      break;
    default:
      v39 = v0[31];
      v40 = v0[13];
      v41 = v0[11];
      v43 = *v40;
      v42 = v40[1];
      v107 = v40[2];
      v108 = v0;
      v44 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322F48, &unk_2698667E0) + 64);

      v45 = v40 + v44;
      v1 = v0;
      sub_269715290(v45, v41);
      v46 = OUTLINED_FUNCTION_10_27();
      v39(v46);

      v47 = sub_2698548B4();
      v48 = sub_269854F14();

      v49 = os_log_type_enabled(v47, v48);
      v50 = v0[33];
      if (v49)
      {
        v51 = swift_slowAlloc();
        v52 = swift_slowAlloc();
        v109 = v52;
        *v51 = 136315138;
        *(v51 + 4) = sub_26974F520(v43, v42, &v109);
        _os_log_impl(&dword_269684000, v47, v48, "ABComparisonPlayOnThirdPartyAppHandler got selected, predictedAppId is %s", v51, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v52);
        v1 = v108;
        OUTLINED_FUNCTION_10();
        OUTLINED_FUNCTION_10();
      }

      v53 = OUTLINED_FUNCTION_0_17();
      v50(v53);
      v37 = *(v107 + 16);

      if (v37 >= 2)
      {
        if (v1[26] == v43 && v1[27] == v42)
        {
          v55 = 1;
        }

        else
        {
          v55 = sub_269855584();
        }

        v105 = v1[10];
        v104 = v1[11];
        v106 = v1[6];

        v76 = v55 & 1;
        sub_269715290(v104, v105);
        if (__swift_getEnumTagSinglePayload(v105, 1, v106) == 1)
        {
          sub_2697E2FCC(v1[10]);
          v38 = 0;
          v19 = 0;
        }

        else
        {
          v19 = *(v1[10] + *(v1[6] + 32) + 8);

          OUTLINED_FUNCTION_6_42();
          v38 = 0;
        }

        goto LABEL_27;
      }

      v99 = v1[14];
      v100 = v1[11];

      sub_2697E2FCC(v100);
      OUTLINED_FUNCTION_0_54();
      v15 = v99;
      break;
  }

  sub_2697EC954(v15, v14);
  goto LABEL_52;
}

unint64_t sub_2697EC350(unint64_t result, unint64_t a2)
{
  v3 = HIBYTE(a2) & 0xF;
  v4 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = v3;
  }

  else
  {
    v5 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    LOBYTE(v3) = 1;
LABEL_65:
    LOBYTE(v27[0]) = v3;
    return v5 | (v3 << 32);
  }

  v6 = result;
  if ((a2 & 0x1000000000000000) != 0)
  {

    sub_2697EC9AC(v6, a2, 0xAu);
    v8 = v26;

    v3 = HIDWORD(v8) & 1;
LABEL_63:
    v5 = v8;
    if (v3)
    {
      v5 = 0;
    }

    goto LABEL_65;
  }

  if ((a2 & 0x2000000000000000) == 0)
  {
    if ((result & 0x1000000000000000) != 0)
    {
      result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
    }

    else
    {
      result = sub_269855264();
    }

    v7 = *result;
    if (v7 == 43)
    {
      if (v4 >= 1)
      {
        v3 = v4 - 1;
        if (v4 != 1)
        {
          LODWORD(v8) = 0;
          if (result)
          {
            v15 = (result + 1);
            while (1)
            {
              v16 = *v15 - 48;
              if (v16 > 9)
              {
                goto LABEL_61;
              }

              v17 = 10 * v8;
              if ((v17 & 0xFFFFFFFF00000000) != 0)
              {
                goto LABEL_61;
              }

              LODWORD(v8) = v17 + v16;
              if (__CFADD__(v17, v16))
              {
                goto LABEL_61;
              }

              ++v15;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_53;
        }

        goto LABEL_61;
      }

      goto LABEL_71;
    }

    if (v7 != 45)
    {
      if (v4)
      {
        LODWORD(v8) = 0;
        if (result)
        {
          while (1)
          {
            v21 = *result - 48;
            if (v21 > 9)
            {
              goto LABEL_61;
            }

            v22 = 10 * v8;
            if ((v22 & 0xFFFFFFFF00000000) != 0)
            {
              goto LABEL_61;
            }

            LODWORD(v8) = v22 + v21;
            if (__CFADD__(v22, v21))
            {
              goto LABEL_61;
            }

            ++result;
            if (!--v4)
            {
              goto LABEL_53;
            }
          }
        }

        goto LABEL_53;
      }

LABEL_61:
      LODWORD(v8) = 0;
      LOBYTE(v3) = 1;
      goto LABEL_62;
    }

    if (v4 >= 1)
    {
      v3 = v4 - 1;
      if (v4 != 1)
      {
        LODWORD(v8) = 0;
        if (result)
        {
          v9 = (result + 1);
          while (1)
          {
            v10 = *v9 - 48;
            if (v10 > 9)
            {
              goto LABEL_61;
            }

            v11 = 10 * v8;
            if ((v11 & 0xFFFFFFFF00000000) != 0)
            {
              goto LABEL_61;
            }

            LODWORD(v8) = v11 - v10;
            if (v11 < v10)
            {
              goto LABEL_61;
            }

            ++v9;
            if (!--v3)
            {
              goto LABEL_62;
            }
          }
        }

LABEL_53:
        LOBYTE(v3) = 0;
LABEL_62:
        v28 = v3;
        goto LABEL_63;
      }

      goto LABEL_61;
    }

    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v27[0] = result;
  v27[1] = a2 & 0xFFFFFFFFFFFFFFLL;
  if (result != 43)
  {
    if (result != 45)
    {
      if (v3)
      {
        LODWORD(v8) = 0;
        v23 = v27;
        while (1)
        {
          v24 = *v23 - 48;
          if (v24 > 9)
          {
            break;
          }

          v25 = 10 * v8;
          if ((v25 & 0xFFFFFFFF00000000) != 0)
          {
            break;
          }

          LODWORD(v8) = v25 + v24;
          if (__CFADD__(v25, v24))
          {
            break;
          }

          ++v23;
          if (!--v3)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    if (v3)
    {
      if (--v3)
      {
        LODWORD(v8) = 0;
        v12 = v27 + 1;
        while (1)
        {
          v13 = *v12 - 48;
          if (v13 > 9)
          {
            break;
          }

          v14 = 10 * v8;
          if ((v14 & 0xFFFFFFFF00000000) != 0)
          {
            break;
          }

          LODWORD(v8) = v14 - v13;
          if (v14 < v13)
          {
            break;
          }

          ++v12;
          if (!--v3)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    goto LABEL_70;
  }

  if (v3)
  {
    if (--v3)
    {
      LODWORD(v8) = 0;
      v18 = v27 + 1;
      while (1)
      {
        v19 = *v18 - 48;
        if (v19 > 9)
        {
          break;
        }

        v20 = 10 * v8;
        if ((v20 & 0xFFFFFFFF00000000) != 0)
        {
          break;
        }

        LODWORD(v8) = v20 + v19;
        if (__CFADD__(v20, v19))
        {
          break;
        }

        ++v18;
        if (!--v3)
        {
          goto LABEL_62;
        }
      }
    }

    goto LABEL_61;
  }

LABEL_72:
  __break(1u);
  return result;
}

void *sub_2697EC628()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 24));

  return v0;
}

uint64_t sub_2697EC658()
{
  sub_2697EC628();

  return MEMORY[0x2821FE8D8](v0, 96, 7);
}

uint64_t sub_2697EC6D8(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2697EC780;

  return sub_2697EB268(a1, a2);
}

uint64_t sub_2697EC780(uint64_t a1, uint64_t a2)
{
  v7 = *v2;

  v5 = *(v7 + 8);

  return v5(a1, a2);
}

void *sub_2697EC884(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324020, &unk_26985E5D0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

uint64_t sub_2697EC8F4(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_4_3();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_2697EC954(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_4_3();
  (*(v3 + 8))(a1);
  return a1;
}

void sub_2697EC9AC(uint64_t a1, uint64_t a2, unsigned int a3)
{

  v5 = sub_269854BF4();
  v6 = v4;
  if ((v4 & 0x1000000000000000) != 0)
  {
    v41 = OUTLINED_FUNCTION_2_6();
    v5 = sub_2697ED314(v41, v42);
    v44 = v43;

    v6 = v44;
    if ((v44 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v4 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v5 & 0x1000000000000000) != 0)
    {
      v7 = ((v6 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v8 = v5 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      OUTLINED_FUNCTION_2_6();
      v7 = sub_269855264();
    }

    v9 = *v7;
    if (v9 == 43)
    {
      if (v8 >= 1)
      {
        if (v8 != 1)
        {
          OUTLINED_FUNCTION_3_43();
          if (v19)
          {
            OUTLINED_FUNCTION_22_18();
            while (1)
            {
              OUTLINED_FUNCTION_21_19();
              if (v15 && v23 < v21)
              {
                v24 = -48;
              }

              else if (v23 < 0x41 || v23 >= v20)
              {
                OUTLINED_FUNCTION_16_21();
                if (!v15 || v23 >= v25)
                {
                  goto LABEL_130;
                }

                v24 = -87;
              }

              else
              {
                v24 = -55;
              }

              v26 = v22 * a3;
              if ((v26 & 0xFFFFFFFF00000000) == 0 && !__CFADD__(v26, (v23 + v24)))
              {
                OUTLINED_FUNCTION_20_16();
                if (!v27)
                {
                  continue;
                }
              }

              goto LABEL_130;
            }
          }
        }

        goto LABEL_130;
      }

      goto LABEL_134;
    }

    if (v9 != 45)
    {
      if (v8)
      {
        OUTLINED_FUNCTION_14_25();
        if (v28 ^ v29 | v27)
        {
          v32 = v35;
        }

        if (v28 ^ v29 | v27)
        {
          v33 = 65;
        }

        if (!(v28 ^ v29 | v27))
        {
          v34 = 58;
        }

        if (v30)
        {
          v36 = 0;
          while (1)
          {
            v37 = *v30;
            if (v37 < 0x30 || v37 >= v34)
            {
              if (v37 < 0x41 || v37 >= v33)
              {
                if (v37 < 0x61 || v37 >= v32)
                {
                  goto LABEL_130;
                }

                v38 = -87;
              }

              else
              {
                v38 = -55;
              }
            }

            else
            {
              v38 = -48;
            }

            v39 = v36 * a3;
            if ((v39 & 0xFFFFFFFF00000000) == 0)
            {
              v40 = v37 + v38;
              v15 = __CFADD__(v39, v40);
              v36 = v39 + v40;
              if (!v15)
              {
                ++v30;
                if (--v31)
                {
                  continue;
                }
              }
            }

            goto LABEL_130;
          }
        }
      }

      goto LABEL_130;
    }

    if (v8 >= 1)
    {
      if (v8 != 1)
      {
        OUTLINED_FUNCTION_3_43();
        if (v10)
        {
          OUTLINED_FUNCTION_22_18();
          while (1)
          {
            OUTLINED_FUNCTION_21_19();
            if (v15 && v14 < v12)
            {
              v16 = -48;
            }

            else if (v14 < 0x41 || v14 >= v11)
            {
              OUTLINED_FUNCTION_16_21();
              if (!v15 || v14 >= v17)
              {
                break;
              }

              v16 = -87;
            }

            else
            {
              v16 = -55;
            }

            v18 = v13 * a3;
            if ((v18 & 0xFFFFFFFF00000000) == 0 && v18 >= (v14 + v16))
            {
              OUTLINED_FUNCTION_20_16();
              if (!v27)
              {
                continue;
              }
            }

            break;
          }
        }
      }

LABEL_130:

      return;
    }

    __break(1u);
LABEL_133:
    __break(1u);
LABEL_134:
    __break(1u);
    goto LABEL_135;
  }

  OUTLINED_FUNCTION_13_26();
  if (!v27)
  {
    if (v46 != 45)
    {
      if (v45)
      {
        OUTLINED_FUNCTION_1_47();
        while (1)
        {
          OUTLINED_FUNCTION_9_32();
          if (v15 && v64 < v63)
          {
            v65 = -48;
          }

          else if (v64 < 0x41 || v64 >= v62)
          {
            OUTLINED_FUNCTION_16_21();
            if (!v15 || v64 >= v66)
            {
              goto LABEL_130;
            }

            v65 = -87;
          }

          else
          {
            v65 = -55;
          }

          v67 = v61 * a3;
          if ((v67 & 0xFFFFFFFF00000000) == 0 && !__CFADD__(v67, (v64 + v65)))
          {
            OUTLINED_FUNCTION_8_35();
            if (!v27)
            {
              continue;
            }
          }

          goto LABEL_130;
        }
      }

      goto LABEL_130;
    }

    if (v45)
    {
      if (v45 != 1)
      {
        OUTLINED_FUNCTION_1_47();
        OUTLINED_FUNCTION_7_39();
        while (1)
        {
          OUTLINED_FUNCTION_9_32();
          if (v15 && v50 < v49)
          {
            v51 = -48;
          }

          else if (v50 < 0x41 || v50 >= v48)
          {
            OUTLINED_FUNCTION_16_21();
            if (!v15 || v50 >= v52)
            {
              goto LABEL_130;
            }

            v51 = -87;
          }

          else
          {
            v51 = -55;
          }

          v53 = v47 * a3;
          if ((v53 & 0xFFFFFFFF00000000) == 0 && v53 >= (v50 + v51))
          {
            OUTLINED_FUNCTION_8_35();
            if (!v27)
            {
              continue;
            }
          }

          goto LABEL_130;
        }
      }

      goto LABEL_130;
    }

    goto LABEL_133;
  }

  if (v45)
  {
    if (v45 != 1)
    {
      OUTLINED_FUNCTION_1_47();
      OUTLINED_FUNCTION_7_39();
      while (1)
      {
        OUTLINED_FUNCTION_9_32();
        if (v15 && v57 < v56)
        {
          v58 = -48;
        }

        else if (v57 < 0x41 || v57 >= v55)
        {
          OUTLINED_FUNCTION_16_21();
          if (!v15 || v57 >= v59)
          {
            goto LABEL_130;
          }

          v58 = -87;
        }

        else
        {
          v58 = -55;
        }

        v60 = v54 * a3;
        if ((v60 & 0xFFFFFFFF00000000) == 0 && !__CFADD__(v60, (v57 + v58)))
        {
          OUTLINED_FUNCTION_8_35();
          if (!v27)
          {
            continue;
          }
        }

        goto LABEL_130;
      }
    }

    goto LABEL_130;
  }

LABEL_135:
  __break(1u);
}

void sub_2697ECE58(uint64_t a1, uint64_t a2, uint64_t a3)
{

  v5 = sub_269854BF4();
  v6 = v4;
  if ((v4 & 0x1000000000000000) != 0)
  {
    v38 = OUTLINED_FUNCTION_2_6();
    v5 = sub_2697ED314(v38, v39);
    v41 = v40;

    v6 = v41;
    if ((v41 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v4 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v5 & 0x1000000000000000) != 0)
    {
      v7 = ((v6 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v8 = v5 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      OUTLINED_FUNCTION_2_6();
      v7 = sub_269855264();
    }

    v9 = *v7;
    if (v9 == 43)
    {
      if (v8 >= 1)
      {
        if (v8 != 1)
        {
          OUTLINED_FUNCTION_3_43();
          if (v18)
          {
            OUTLINED_FUNCTION_22_18();
            while (1)
            {
              OUTLINED_FUNCTION_21_19();
              if (v15 && v22 < v20)
              {
                v23 = -48;
              }

              else if (v22 < 0x41 || v22 >= v19)
              {
                OUTLINED_FUNCTION_15_26();
                if (!v15 || v22 >= v24)
                {
                  goto LABEL_130;
                }

                v23 = -87;
              }

              else
              {
                v23 = -55;
              }

              if ((v21 * a3) >> 64 == (v21 * a3) >> 63 && !__OFADD__(v21 * a3, (v22 + v23)))
              {
                OUTLINED_FUNCTION_20_16();
                if (!v25)
                {
                  continue;
                }
              }

              goto LABEL_130;
            }
          }
        }

        goto LABEL_130;
      }

      goto LABEL_134;
    }

    if (v9 != 45)
    {
      if (v8)
      {
        OUTLINED_FUNCTION_14_25();
        if (v26 ^ v27 | v25)
        {
          v30 = v33;
        }

        if (v26 ^ v27 | v25)
        {
          v31 = 65;
        }

        if (!(v26 ^ v27 | v25))
        {
          v32 = 58;
        }

        if (v28)
        {
          v34 = 0;
          while (1)
          {
            v35 = *v28;
            if (v35 < 0x30 || v35 >= v32)
            {
              if (v35 < 0x41 || v35 >= v31)
              {
                if (v35 < 0x61 || v35 >= v30)
                {
                  goto LABEL_130;
                }

                v36 = -87;
              }

              else
              {
                v36 = -55;
              }
            }

            else
            {
              v36 = -48;
            }

            v37 = v34 * a3;
            if ((v34 * a3) >> 64 == (v34 * a3) >> 63)
            {
              v34 = v37 + (v35 + v36);
              if (!__OFADD__(v37, (v35 + v36)))
              {
                ++v28;
                if (--v29)
                {
                  continue;
                }
              }
            }

            goto LABEL_130;
          }
        }
      }

      goto LABEL_130;
    }

    if (v8 >= 1)
    {
      if (v8 != 1)
      {
        OUTLINED_FUNCTION_3_43();
        if (v10)
        {
          OUTLINED_FUNCTION_22_18();
          while (1)
          {
            OUTLINED_FUNCTION_21_19();
            if (v15 && v14 < v12)
            {
              v16 = -48;
            }

            else if (v14 < 0x41 || v14 >= v11)
            {
              OUTLINED_FUNCTION_15_26();
              if (!v15 || v14 >= v17)
              {
                break;
              }

              v16 = -87;
            }

            else
            {
              v16 = -55;
            }

            if ((v13 * a3) >> 64 == (v13 * a3) >> 63 && !__OFSUB__(v13 * a3, (v14 + v16)))
            {
              OUTLINED_FUNCTION_20_16();
              if (!v25)
              {
                continue;
              }
            }

            break;
          }
        }
      }

LABEL_130:

      return;
    }

    __break(1u);
LABEL_133:
    __break(1u);
LABEL_134:
    __break(1u);
    goto LABEL_135;
  }

  OUTLINED_FUNCTION_13_26();
  if (!v25)
  {
    if (v43 != 45)
    {
      if (v42)
      {
        OUTLINED_FUNCTION_1_47();
        while (1)
        {
          OUTLINED_FUNCTION_9_32();
          if (v15 && v59 < v58)
          {
            v60 = -48;
          }

          else if (v59 < 0x41 || v59 >= v57)
          {
            OUTLINED_FUNCTION_15_26();
            if (!v15 || v59 >= v61)
            {
              goto LABEL_130;
            }

            v60 = -87;
          }

          else
          {
            v60 = -55;
          }

          if ((v56 * a3) >> 64 == (v56 * a3) >> 63 && !__OFADD__(v56 * a3, (v59 + v60)))
          {
            OUTLINED_FUNCTION_8_35();
            if (!v25)
            {
              continue;
            }
          }

          goto LABEL_130;
        }
      }

      goto LABEL_130;
    }

    if (v42)
    {
      if (v42 != 1)
      {
        OUTLINED_FUNCTION_1_47();
        OUTLINED_FUNCTION_7_39();
        while (1)
        {
          OUTLINED_FUNCTION_9_32();
          if (v15 && v47 < v46)
          {
            v48 = -48;
          }

          else if (v47 < 0x41 || v47 >= v45)
          {
            OUTLINED_FUNCTION_15_26();
            if (!v15 || v47 >= v49)
            {
              goto LABEL_130;
            }

            v48 = -87;
          }

          else
          {
            v48 = -55;
          }

          if ((v44 * a3) >> 64 == (v44 * a3) >> 63 && !__OFSUB__(v44 * a3, (v47 + v48)))
          {
            OUTLINED_FUNCTION_8_35();
            if (!v25)
            {
              continue;
            }
          }

          goto LABEL_130;
        }
      }

      goto LABEL_130;
    }

    goto LABEL_133;
  }

  if (v42)
  {
    if (v42 != 1)
    {
      OUTLINED_FUNCTION_1_47();
      OUTLINED_FUNCTION_7_39();
      while (1)
      {
        OUTLINED_FUNCTION_9_32();
        if (v15 && v53 < v52)
        {
          v54 = -48;
        }

        else if (v53 < 0x41 || v53 >= v51)
        {
          OUTLINED_FUNCTION_15_26();
          if (!v15 || v53 >= v55)
          {
            goto LABEL_130;
          }

          v54 = -87;
        }

        else
        {
          v54 = -55;
        }

        if ((v50 * a3) >> 64 == (v50 * a3) >> 63 && !__OFADD__(v50 * a3, (v53 + v54)))
        {
          OUTLINED_FUNCTION_8_35();
          if (!v25)
          {
            continue;
          }
        }

        goto LABEL_130;
      }
    }

    goto LABEL_130;
  }

LABEL_135:
  __break(1u);
}

uint64_t sub_2697ED314(uint64_t a1, unint64_t a2)
{
  v2 = sub_2697ED380(sub_2697ED37C, 0, a1, a2);
  v6 = sub_2697ED3B4(v2, v3, v4, v5);

  return v6;
}

uint64_t sub_2697ED3B4(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = sub_2698550C4();
    if (!v9 || (v10 = v9, v11 = sub_2697EC884(v9, 0), v12 = sub_2697ED514(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = sub_269854B24();

      return v13;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v14[0] = a3;
      v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_269854B24();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  sub_269855264();
LABEL_4:

  return sub_269854B24();
}

unint64_t sub_2697ED514(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_36;
  }

  if (a3 < 0)
  {
    goto LABEL_40;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_36:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    result = v12;
    if ((v12 & 0xC) == v15)
    {
      result = sub_2697ED724(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_269854BA4();
      v19 = result;
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_269855264();
        }

        v19 = *(result + v18);
      }
    }

    if ((v12 & 0xC) == v15)
    {
      result = sub_2697ED724(v12, a6, a7);
      v12 = result;
      if ((a7 & 0x1000000000000000) == 0)
      {
LABEL_27:
        v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
        goto LABEL_31;
      }
    }

    else if ((a7 & 0x1000000000000000) == 0)
    {
      goto LABEL_27;
    }

    if (v23 <= v12 >> 16)
    {
      goto LABEL_39;
    }

    result = sub_269854B84();
    v12 = result;
LABEL_31:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_36;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_38;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_36;
    }
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

unint64_t sub_2697ED724(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_269854BB4();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x26D645A90](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

uint64_t OUTLINED_FUNCTION_6_42()
{

  return sub_2697EC954(v0, type metadata accessor for ModelParams);
}

void OUTLINED_FUNCTION_24_18(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

unint64_t sub_2697ED930(uint64_t a1)
{
  type metadata accessor for SignalRecordingContext(0);
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v2);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for AppDisambiguationContext(0);
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v6);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2697EE474(a1, v4);
  if (swift_getEnumCaseMultiPayload() == 4)
  {

    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323C10, &unk_269866CD0);
    sub_26971522C(&v4[*(v9 + 48)], v8);
    v10 = *&v8[*(v5 + 36)];
    OUTLINED_FUNCTION_0_55();
    sub_2697EE4D8(v8, v11);
    return (v10 >> 1) & 1;
  }

  else
  {
    OUTLINED_FUNCTION_2_37();
    sub_2697EE4D8(v4, v13);
    return 0;
  }
}

uint64_t sub_2697EDA64(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_2698548D4();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v2[7] = type metadata accessor for SignalRecordingContext(0);
  v2[8] = swift_task_alloc();
  v2[9] = type metadata accessor for AppDisambiguationContext(0);
  v2[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2697EDB84);
}

unsigned __int8 *sub_2697EDB84()
{
  v1 = v0[3];
  if (v1 >> 62)
  {
    v2 = sub_269855324();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v2 == 2)
  {
    sub_2697EE474(v0[2], v0[8]);
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      v3 = v0[9];
      v4 = v0[10];
      v5 = v0[8];
      v7 = *v5;
      v6 = v5[1];
      v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323C10, &unk_269866CD0);
      sub_26971522C(v5 + *(v8 + 48), v4);
      if (!*(v4 + *(v3 + 40) + 8))
      {

        if (qword_2803226F0 != -1)
        {
          swift_once();
        }

        v18 = v0[5];
        v17 = v0[6];
        v19 = v0[4];
        v20 = __swift_project_value_buffer(v19, qword_28033D940);
        (*(v18 + 16))(v17, v20, v19);
        v21 = sub_2698548B4();
        v22 = sub_269854F14();
        if (os_log_type_enabled(v21, v22))
        {
          v23 = swift_slowAlloc();
          *v23 = 0;
          _os_log_impl(&dword_269684000, v21, v22, "ABComparisonSmartAppSelectionDisambiguationHandler no request ID", v23, 2u);
          MEMORY[0x26D647170](v23, -1, -1);
        }

        v24 = v0[10];
        v26 = v0[5];
        v25 = v0[6];
        v27 = v0[4];

        (*(v26 + 8))(v25, v27);
LABEL_111:
        v16 = type metadata accessor for AppDisambiguationContext;
        v15 = v24;
        goto LABEL_112;
      }

      v9 = v1 & 0xC000000000000001;
      sub_269750050();
      v10 = v0[3];
      if ((v1 & 0xC000000000000001) != 0)
      {

        v12 = MEMORY[0x26D646120](0, v10);
      }

      else
      {
        v11 = *(v10 + 32);

        v12 = v11;
      }

      sub_269750050();
      v13 = v0[3];
      if (v9)
      {
        v14 = MEMORY[0x26D646120](1, v13);
      }

      else
      {
        v14 = *(v13 + 40);
      }

      v28 = v14;
      v29 = *(v0[10] + 16);
      v30 = [objc_allocWithZone(MEMORY[0x277D581B8]) init];
      v31 = v0[10];
      if (v30)
      {
        v32 = v7;
        v33 = v30;
        v75 = v29;
        v76 = v12;
        v34 = v28;
        v77 = v29 & 6;
        v35 = v31 + *(v0[9] + 28);
        v36 = type metadata accessor for ModelParams(0);
        v37 = *(v35 + *(v36 + 24));
        if (!(*(v37 + 16) >> 31))
        {
          [v33 setNumCandidateApps_];
        }

        if (v77)
        {

          v39 = v33;
        }

        else
        {
          v40 = sub_2698054AC(v37);
          if (v41)
          {
            v42 = v32 == v40 && v41 == v6;
            if (v42)
            {
              v43 = 1;
            }

            else
            {
              v43 = sub_269855584();
            }
          }

          else
          {
            v43 = 0;
          }

          v39 = v33;
          result = [v33 setIsDecisionCorrect_];
        }

        v44 = (v35 + *(v36 + 32));
        v45 = v44[1];
        if (!v45)
        {
          goto LABEL_104;
        }

        v46 = *v44;
        v47 = HIBYTE(v45) & 0xF;
        v48 = v46 & 0xFFFFFFFFFFFFLL;
        if (!((v45 & 0x2000000000000000) != 0 ? HIBYTE(v45) & 0xF : v46 & 0xFFFFFFFFFFFFLL))
        {
          goto LABEL_104;
        }

        if ((v45 & 0x1000000000000000) != 0)
        {

          sub_2697EC9AC(v46, v45, 0xAu);
          v51 = v74;

          if ((v51 & 0x100000000) != 0)
          {
            goto LABEL_104;
          }

          goto LABEL_103;
        }

        if ((v45 & 0x2000000000000000) != 0)
        {
          if (v46 == 43)
          {
            if (v47)
            {
              if (v47 != 1)
              {
                OUTLINED_FUNCTION_6_43();
                while (1)
                {
                  OUTLINED_FUNCTION_1_48();
                  if (!v42 & v52)
                  {
                    break;
                  }

                  OUTLINED_FUNCTION_5_37();
                  if (!v42)
                  {
                    break;
                  }

                  v51 = v61 + v60;
                  if (__CFADD__(v61, v60))
                  {
                    break;
                  }

                  OUTLINED_FUNCTION_4_36();
                  if (v42)
                  {
                    goto LABEL_102;
                  }
                }
              }

              goto LABEL_101;
            }

LABEL_125:
            __break(1u);
            return result;
          }

          if (v46 != 45)
          {
            if (v47)
            {
              while (1)
              {
                OUTLINED_FUNCTION_1_48();
                if (!v42 & v52)
                {
                  break;
                }

                OUTLINED_FUNCTION_5_37();
                if (!v42)
                {
                  break;
                }

                v51 = v65 + v64;
                if (__CFADD__(v65, v64))
                {
                  break;
                }

                OUTLINED_FUNCTION_4_36();
                if (v42)
                {
                  goto LABEL_102;
                }
              }
            }

            goto LABEL_101;
          }

          if (v47)
          {
            if (v47 != 1)
            {
              OUTLINED_FUNCTION_6_43();
              while (1)
              {
                OUTLINED_FUNCTION_1_48();
                if (!v42 & v52)
                {
                  break;
                }

                OUTLINED_FUNCTION_5_37();
                if (!v42)
                {
                  break;
                }

                v51 = v57 - v56;
                if (v57 < v56)
                {
                  break;
                }

                OUTLINED_FUNCTION_4_36();
                if (v42)
                {
                  goto LABEL_102;
                }
              }
            }

            goto LABEL_101;
          }
        }

        else
        {
          if ((v46 & 0x1000000000000000) != 0)
          {
            result = ((v45 & 0xFFFFFFFFFFFFFFFLL) + 32);
          }

          else
          {
            result = sub_269855264();
          }

          v50 = *result;
          if (v50 == 43)
          {
            if (v48 >= 1)
            {
              if (v48 != 1)
              {
                v51 = 0;
                if (result)
                {
                  while (1)
                  {
                    OUTLINED_FUNCTION_1_48();
                    if (!v42 & v52)
                    {
                      goto LABEL_101;
                    }

                    OUTLINED_FUNCTION_5_37();
                    if (!v42)
                    {
                      goto LABEL_101;
                    }

                    v51 = v59 + v58;
                    if (__CFADD__(v59, v58))
                    {
                      goto LABEL_101;
                    }

                    OUTLINED_FUNCTION_4_36();
                    if (v42)
                    {
                      goto LABEL_102;
                    }
                  }
                }

                goto LABEL_92;
              }

              goto LABEL_101;
            }

            goto LABEL_124;
          }

          if (v50 != 45)
          {
            if (v48)
            {
              v51 = 0;
              if (result)
              {
                while (1)
                {
                  v62 = *result - 48;
                  if (v62 > 9)
                  {
                    goto LABEL_101;
                  }

                  v63 = 10 * v51;
                  if ((v63 & 0xFFFFFFFF00000000) != 0)
                  {
                    goto LABEL_101;
                  }

                  v51 = v63 + v62;
                  if (__CFADD__(v63, v62))
                  {
                    goto LABEL_101;
                  }

                  ++result;
                  if (!--v48)
                  {
                    goto LABEL_92;
                  }
                }
              }

              goto LABEL_92;
            }

LABEL_101:
            v51 = 0;
            v55 = 1;
LABEL_102:
            if (v55)
            {
LABEL_104:
              [v39 setProjectIntent_];
              [v76 setAbModelEvaluated_];
              v66 = [objc_allocWithZone(MEMORY[0x277D581C0]) init];
              if (v66)
              {
                v67 = v66;
                v68 = v0[10];
                if ((v75 & 7) != 0)
                {
                  if (v77)
                  {
                    v69 = 2;
                  }

                  else
                  {
                    v69 = 3;
                  }

                  [v66 setTriggerReason_];
                  v70 = v67;
                  [v34 setAbModelResultTriggered_];

                  OUTLINED_FUNCTION_0_55();
                  sub_2697EE4D8(v68, v71);
                  goto LABEL_113;
                }

                OUTLINED_FUNCTION_0_55();
                v15 = v68;
                goto LABEL_112;
              }

              v24 = v0[10];

              goto LABEL_111;
            }

LABEL_103:
            [v39 setModelVersion_];
            goto LABEL_104;
          }

          if (v48 >= 1)
          {
            if (v48 != 1)
            {
              v51 = 0;
              if (result)
              {
                while (1)
                {
                  OUTLINED_FUNCTION_1_48();
                  if (!v42 & v52)
                  {
                    goto LABEL_101;
                  }

                  OUTLINED_FUNCTION_5_37();
                  if (!v42)
                  {
                    goto LABEL_101;
                  }

                  v51 = v54 - v53;
                  if (v54 < v53)
                  {
                    goto LABEL_101;
                  }

                  OUTLINED_FUNCTION_4_36();
                  if (v42)
                  {
                    goto LABEL_102;
                  }
                }
              }

LABEL_92:
              v55 = 0;
              goto LABEL_102;
            }

            goto LABEL_101;
          }

          __break(1u);
        }

        __break(1u);
LABEL_124:
        __break(1u);
        goto LABEL_125;
      }

      OUTLINED_FUNCTION_0_55();
      v15 = v31;
    }

    else
    {
      OUTLINED_FUNCTION_2_37();
    }

LABEL_112:
    sub_2697EE4D8(v15, v16);
  }

LABEL_113:

  v72 = OUTLINED_FUNCTION_7_40();

  return v73(v72);
}

uint64_t sub_2697EE2E0(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2697EE37C;

  return sub_2697EDA64(a1, a2);
}

uint64_t sub_2697EE37C()
{

  v0 = OUTLINED_FUNCTION_7_40();

  return v1(v0);
}

uint64_t sub_2697EE474(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SignalRecordingContext(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2697EE4D8(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_4_3();
  (*(v3 + 8))(a1);
  return a1;
}

BOOL sub_2697EE5C0(uint64_t a1)
{
  v2 = type metadata accessor for SignalRecordingContext(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2697EE474(a1, v4);
  v5 = swift_getEnumCaseMultiPayload() == 5;
  sub_2697602B0(v4);
  return v5;
}

uint64_t sub_2697EE664(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_2698548D4();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v2[7] = type metadata accessor for SignalRecordingContext(0);
  v2[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2697EE754);
}

uint64_t sub_2697EE754()
{
  v1 = v0[3];
  if (v1 >> 62)
  {
    v2 = sub_269855324();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v2 != 1)
  {
    goto LABEL_14;
  }

  sub_2697EE474(v0[2], v0[8]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v4 = v0[8];
  if (EnumCaseMultiPayload != 5)
  {
    sub_2697602B0(v4);
LABEL_14:
    v5 = 0;
    v6 = 0;
    goto LABEL_15;
  }

  v5 = *v4;
  v6 = v4[1];
  v7 = [objc_allocWithZone(MEMORY[0x277D581C0]) init];
  if (!v7)
  {

    goto LABEL_14;
  }

  v8 = v7;
  [v7 setTriggerReason:1];
  sub_269750050();
  v9 = v0[3];
  if ((v1 & 0xC000000000000001) != 0)
  {
    v10 = MEMORY[0x26D646120](0, v9);
  }

  else
  {
    v10 = *(v9 + 32);
  }

  v11 = v10;
  [v10 setAbModelResultTriggered:v8];
  if (qword_2803226F0 != -1)
  {
    swift_once();
  }

  v13 = v0[5];
  v12 = v0[6];
  v14 = v0[4];
  v15 = __swift_project_value_buffer(v14, qword_28033D940);
  (*(v13 + 16))(v12, v15, v14);
  v16 = sub_2698548B4();
  v17 = sub_269854F14();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_269684000, v16, v17, "ABComparisonSmartAppSelectionSuccessHandler will emit evaluation message", v18, 2u);
    MEMORY[0x26D647170](v18, -1, -1);
    v19 = v11;
    v11 = v16;
  }

  else
  {
    v19 = v8;
    v8 = v16;
  }

  (*(v0[5] + 8))(v0[6], v0[4]);
LABEL_15:

  v20 = v0[1];

  return v20(v5, v6);
}

uint64_t sub_2697EE9DC(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2697EC780;

  return sub_2697EE664(a1, a2);
}

uint64_t sub_2697EEA80(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 120))
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

uint64_t sub_2697EEAC0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
      *(result + 120) = 1;
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

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2697EEB2C(uint64_t a1, char a2, uint64_t a3)
{
  v4 = v3;
  sub_2698548D4();
  OUTLINED_FUNCTION_8();
  v82 = v9;
  v83 = v8;
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v78 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v78 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v78 - v17;
  MEMORY[0x28223BE20](v16);
  v79 = &v78 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280322D50, &unk_2698583F0);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = &v78 - v21;
  v23 = sub_269851D34();
  OUTLINED_FUNCTION_8();
  v80 = v24;
  v26 = MEMORY[0x28223BE20](v25);
  v81 = &v78 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v29 = (&v78 - v28);
  if ((sub_2697EF2B4(a3) & 1) == 0)
  {
    if (qword_2803226F0 != -1)
    {
      OUTLINED_FUNCTION_2_35(&qword_2803226F0);
    }

    v33 = v83;
    __swift_project_value_buffer(v83, qword_28033D940);
    OUTLINED_FUNCTION_3_44();
    v34(v12);
    OUTLINED_FUNCTION_11_33();
    v35 = sub_2698548B4();
    v36 = sub_269854F14();
    if (OUTLINED_FUNCTION_6_44(v36))
    {
      OUTLINED_FUNCTION_27_2();
      v37 = OUTLINED_FUNCTION_7_41();
      OUTLINED_FUNCTION_10_28(v37);
      OUTLINED_FUNCTION_8_36(4.8149e-34);
      sub_2697EFA44(v85);
      v38 = OUTLINED_FUNCTION_9_33();

      *(v12 + 4) = v38;
      OUTLINED_FUNCTION_1_49(&dword_269684000, v39, v40, "PlayOnThirdPartyAppEligibilityManager for %s, storefront not enabled");
      OUTLINED_FUNCTION_2_38();
      OUTLINED_FUNCTION_5_38();
    }

    else
    {

      sub_2697EFA44(v85);
    }

    v29[1](v12, v33);
    return 0;
  }

  if ((a2 & 1) != 0 || a1 < 1)
  {
    if (qword_2803226F0 != -1)
    {
      OUTLINED_FUNCTION_2_35(&qword_2803226F0);
    }

    v41 = v83;
    __swift_project_value_buffer(v83, qword_28033D940);
    OUTLINED_FUNCTION_3_44();
    v42(v15);
    OUTLINED_FUNCTION_11_33();
    v43 = sub_2698548B4();
    v44 = sub_269854F14();
    if (OUTLINED_FUNCTION_6_44(v44))
    {
      OUTLINED_FUNCTION_27_2();
      v45 = OUTLINED_FUNCTION_7_41();
      OUTLINED_FUNCTION_10_28(v45);
      OUTLINED_FUNCTION_8_36(4.8149e-34);
      sub_2697EFA44(v85);
      v46 = OUTLINED_FUNCTION_9_33();

      *(v15 + 4) = v46;
      OUTLINED_FUNCTION_1_49(&dword_269684000, v47, v48, "PlayOnThirdPartyAppEligibilityManager for %s, no valid sampling frequency");
      OUTLINED_FUNCTION_2_38();
      OUTLINED_FUNCTION_5_38();
    }

    else
    {

      sub_2697EFA44(v85);
    }

    v29[1](v15, v41);
    return 0;
  }

  if ((*(v4 + 16))() >= 1.0 / a1)
  {
    if (qword_2803226F0 != -1)
    {
      OUTLINED_FUNCTION_2_35(&qword_2803226F0);
    }

    v50 = v83;
    __swift_project_value_buffer(v83, qword_28033D940);
    OUTLINED_FUNCTION_3_44();
    v51(v18);
    OUTLINED_FUNCTION_11_33();
    v52 = sub_2698548B4();
    v53 = sub_269854F14();
    if (OUTLINED_FUNCTION_6_44(v53))
    {
      OUTLINED_FUNCTION_27_2();
      v54 = OUTLINED_FUNCTION_7_41();
      OUTLINED_FUNCTION_10_28(v54);
      OUTLINED_FUNCTION_8_36(4.8149e-34);
      sub_2697EFA44(v85);
      v55 = OUTLINED_FUNCTION_9_33();

      *(v18 + 4) = v55;
      OUTLINED_FUNCTION_1_49(&dword_269684000, v56, v57, "PlayOnThirdPartyAppEligibilityManager for %s, not eligible due to sampling");
      OUTLINED_FUNCTION_2_38();
      OUTLINED_FUNCTION_5_38();
    }

    else
    {

      sub_2697EFA44(v85);
    }

    v29[1](v18, v50);
    return 0;
  }

  v84 = *(v4 + 40);
  swift_unknownObjectRetain();
  v30 = swift_readAtKeyPath();
  sub_269707020(v31, v22);
  v30(v85, 0);
  swift_unknownObjectRelease();
  v32 = v23;
  if (__swift_getEnumTagSinglePayload(v22, 1, v23) != 1)
  {
    v58 = v80;
    v59 = v29;
    v60 = (*(v80 + 32))(v29, v22, v32);
    v61 = v81;
    (*(v4 + 64))(v60);
    sub_269851CB4();
    if (*(v4 + 32) <= v62)
    {
      v77 = *(v58 + 8);
      v77(v61, v32);
      v77(v29, v32);
      return 1;
    }

    if (qword_2803226F0 != -1)
    {
      OUTLINED_FUNCTION_2_35(&qword_2803226F0);
    }

    v63 = v83;
    v64 = __swift_project_value_buffer(v83, qword_28033D940);
    v65 = v82;
    v66 = v79;
    (*(v82 + 16))(v79, v64, v63);
    OUTLINED_FUNCTION_11_33();
    v67 = sub_2698548B4();
    v68 = sub_269854F14();
    if (OUTLINED_FUNCTION_6_44(v68))
    {
      OUTLINED_FUNCTION_27_2();
      v69 = OUTLINED_FUNCTION_7_41();
      OUTLINED_FUNCTION_10_28(v69);
      *v66 = 136315138;
      v78 = v59;
      v70 = v85[0];
      v71 = v85[1];

      sub_2697EFA44(v85);
      v72 = sub_26974F520(v70, v71, &v84);

      *(v66 + 4) = v72;
      OUTLINED_FUNCTION_1_49(&dword_269684000, v73, v74, "PlayOnThirdPartyAppEligibilityManager for %s, not eligible due to cooldown period");
      OUTLINED_FUNCTION_2_38();
      OUTLINED_FUNCTION_5_38();

      (*(v65 + 8))(v66, v83);
      v75 = *(v58 + 8);
      v75(v81, v32);
      v76 = v78;
    }

    else
    {

      sub_2697EFA44(v85);
      (*(v65 + 8))(v66, v63);
      v75 = *(v58 + 8);
      v75(v61, v32);
      v76 = v59;
    }

    v75(v76, v32);
    return 0;
  }

  sub_2697DB144(v22);
  return 1;
}

uint64_t sub_2697EF2B4(uint64_t a1)
{
  v3 = sub_2698548D4();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v42 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = &v42 - v11;
  if (!*(a1 + 16))
  {
    return 1;
  }

  __swift_project_boxed_opaque_existential_1((v1 + 80), *(v1 + 104));
  v47 = sub_2697B6BCC();
  if (v13)
  {
    v14 = v13;
    if (qword_2803226F0 != -1)
    {
LABEL_29:
      swift_once();
    }

    v15 = __swift_project_value_buffer(v3, qword_28033D940);
    v42 = *(v4 + 16);
    v42(v12, v15, v3);

    v16 = sub_2698548B4();
    v17 = sub_269854F14();

    v18 = os_log_type_enabled(v16, v17);
    v45 = v10;
    v46 = v4;
    v43 = v15;
    if (v18)
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v50[0] = v20;
      *v19 = 136315138;
      *(v19 + 4) = sub_26974F520(v47, v14, v50);
      _os_log_impl(&dword_269684000, v16, v17, "PlayOnThirdPartyAppEligibilityManager device storefront is %s", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v20);
      MEMORY[0x26D647170](v20, -1, -1);
      MEMORY[0x26D647170](v19, -1, -1);
    }

    v44 = *(v4 + 8);
    v44(v12, v3);
    v21 = 1 << *(a1 + 32);
    v22 = -1;
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    v4 = v22 & *(a1 + 56);
    v23 = (v21 + 63) >> 6;

    v10 = 0;
    v12 = MEMORY[0x277D837D0];
    while (v4)
    {
      v24 = v10;
LABEL_15:
      v25 = (*(a1 + 48) + ((v24 << 10) | (16 * __clz(__rbit64(v4)))));
      v27 = *v25;
      v26 = v25[1];
      v4 &= v4 - 1;
      v50[0] = v47;
      v50[1] = v14;
      v48 = v27;
      v49 = v26;
      sub_269693054();
      if (sub_269855144())
      {

        return 1;
      }
    }

    while (1)
    {
      v24 = (v10 + 1);
      if (__OFADD__(v10, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v24 >= v23)
      {
        break;
      }

      v4 = *(a1 + 56 + 8 * v24);
      ++v10;
      if (v4)
      {
        v10 = v24;
        goto LABEL_15;
      }
    }

    v29 = v45;
    v42(v45, v43, v3);

    v30 = sub_2698548B4();
    v31 = sub_269854F14();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v50[0] = v33;
      *v32 = 136315394;
      v34 = sub_26974F520(v47, v14, v50);

      *(v32 + 4) = v34;
      *(v32 + 12) = 2080;
      v35 = sub_269854E54();
      v37 = sub_26974F520(v35, v36, v50);

      *(v32 + 14) = v37;
      _os_log_impl(&dword_269684000, v30, v31, "PlayOnThirdPartyAppEligibilityManager device storefront %s is not in the enabled storefront list %s", v32, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26D647170](v33, -1, -1);
      MEMORY[0x26D647170](v32, -1, -1);
    }

    else
    {
    }

    v44(v29, v3);
  }

  else
  {
    if (qword_2803226F0 != -1)
    {
      swift_once();
    }

    v38 = __swift_project_value_buffer(v3, qword_28033D940);
    (*(v4 + 16))(v7, v38, v3);
    v39 = sub_2698548B4();
    v40 = sub_269854F14();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&dword_269684000, v39, v40, "PlayOnThirdPartyAppEligibilityManager no device storefront", v41, 2u);
      MEMORY[0x26D647170](v41, -1, -1);
    }

    (*(v4 + 8))(v7, v3);
  }

  return 0;
}

uint64_t sub_2697EF888()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280322D50, &unk_2698583F0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = v13 - v2;
  v4 = sub_269851D34();
  OUTLINED_FUNCTION_8();
  v6 = v5;
  v8 = MEMORY[0x28223BE20](v7);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v0 + 64))(v8);
  v11 = *(v6 + 16);
  v13[0] = *(v0 + 40);
  v11(v3, v10, v4);
  __swift_storeEnumTagSinglePayload(v3, 0, 1, v4);
  v13[1] = v13[0];
  swift_unknownObjectRetain();
  swift_setAtReferenceWritableKeyPath();
  swift_unknownObjectRelease();
  return (*(v6 + 8))(v10, v4);
}

void OUTLINED_FUNCTION_1_49(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0xCu);
}

void OUTLINED_FUNCTION_2_38()
{
  __swift_destroy_boxed_opaque_existential_0(v0);

  JUMPOUT(0x26D647170);
}

void OUTLINED_FUNCTION_5_38()
{

  JUMPOUT(0x26D647170);
}

BOOL OUTLINED_FUNCTION_6_44(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_7_41()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_8_36(float a1)
{
  *v1 = a1;
}

unint64_t OUTLINED_FUNCTION_9_33()
{

  return sub_26974F520(v0, v1, (v2 - 240));
}

uint64_t OUTLINED_FUNCTION_11_33()
{

  return sub_2697EFA0C(v0, v1 - 224);
}

uint64_t sub_2697EFB8C()
{
  v0 = sub_269851BE4();
  OUTLINED_FUNCTION_8();
  v18 = v1;
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_3_1();
  v5 = v4 - v3;
  sub_269854EB4();
  v6 = MEMORY[0x277D84F90];
  sub_2696B6FF4();
  while (1)
  {
    sub_2698550E4();
    if (!v25)
    {
      break;
    }

    sub_269694FFC(&v24, v23);
    sub_2696B6F94(v23, v22);
    v7 = sub_2697AE7D4();
    if (swift_dynamicCast())
    {
      v8 = v26;
      if ([v26 appProtectionHidden])
      {
        v21 = 0;
        v19 = 0u;
        v20 = 0u;
      }

      else
      {
        *(&v20 + 1) = v7;
        v21 = &off_287A413D0;
        *&v19 = v8;
      }
    }

    else
    {
      v19 = 0u;
      v20 = 0u;
      v21 = 0;
    }

    __swift_destroy_boxed_opaque_existential_0(v23);
    if (*(&v20 + 1))
    {
      sub_26968E5D4(&v19, v22);
      sub_26968E5D4(v22, &v19);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v11 = OUTLINED_FUNCTION_16_22();
        sub_26977C3A8(v11, v12, v13, v6);
        v6 = v14;
      }

      v10 = *(v6 + 16);
      v9 = *(v6 + 24);
      if (v10 >= v9 >> 1)
      {
        v15 = OUTLINED_FUNCTION_9(v9);
        sub_26977C3A8(v15, v10 + 1, 1, v6);
        v6 = v16;
      }

      *(v6 + 16) = v10 + 1;
      sub_26968E5D4(&v19, v6 + 40 * v10 + 32);
    }

    else
    {
      sub_26969B0C0(&v19, &unk_2803263B0, &unk_26985D0B0);
    }
  }

  (*(v18 + 8))(v5, v0);
  return v6;
}

uint64_t (*sub_2697EFDDC(uint64_t (*result)(__int128 *), uint64_t a2, uint64_t a3))(__int128 *)
{
  v5 = result;
  v6 = 0;
  v7 = *(a3 + 16);
  v8 = a3 + 32;
  v9 = MEMORY[0x277D84F90];
  v19 = result;
  while (1)
  {
    if (v7 == v6)
    {
      goto LABEL_14;
    }

    if (v6 >= *(a3 + 16))
    {
      break;
    }

    sub_2696A73F8(v8, v21);
    v10 = v5(v21);
    if (v3)
    {
      __swift_destroy_boxed_opaque_existential_0(v21);

LABEL_14:

      return v9;
    }

    if (v10)
    {
      sub_26968E5D4(v21, v20);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v22 = v9;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v12 = OUTLINED_FUNCTION_16_22();
        sub_2698150B0(v12, v13, v14);
        v9 = v22;
      }

      v15 = *(v9 + 16);
      if (v15 >= *(v9 + 24) >> 1)
      {
        OUTLINED_FUNCTION_15_27();
        sub_2698150B0(v16, v17, v18);
        v9 = v22;
      }

      *(v9 + 16) = v15 + 1;
      result = sub_26968E5D4(v20, v9 + 40 * v15 + 32);
      v5 = v19;
    }

    else
    {
      result = __swift_destroy_boxed_opaque_existential_0(v21);
    }

    v8 += 40;
    ++v6;
  }

  __break(1u);
  return result;
}

uint64_t sub_2697EFF3C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return OUTLINED_FUNCTION_10_29();
  }

  OUTLINED_FUNCTION_1_50();
  v24 = v3;
  v25 = v4;
  v23 = MEMORY[0x277D84F90];
  OUTLINED_FUNCTION_5_39();
  v5 = v23;
  v6 = a1 + 32;
  do
  {
    sub_2696A73F8(v6, v22);
    sub_2696A73F8(v22, v21);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324380, &qword_269858C00);
    v7 = sub_269854AE4();
    v9 = v8;
    __swift_destroy_boxed_opaque_existential_0(v22);
    v23 = v5;
    v11 = *(v5 + 16);
    v10 = *(v5 + 24);
    if (v11 >= v10 >> 1)
    {
      OUTLINED_FUNCTION_9(v10);
      OUTLINED_FUNCTION_15_27();
      sub_269814F0C(v13, v14, v15);
      v5 = v23;
    }

    *(v5 + 16) = v11 + 1;
    v12 = v5 + 16 * v11;
    *(v12 + 32) = v7;
    *(v12 + 40) = v9;
    v6 += 40;
    --v1;
  }

  while (v1);
  v22[0] = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322878, &qword_2698587A0);
  v16 = sub_2697B47C4();
  OUTLINED_FUNCTION_3_45(v16, v17, v18, v16);
  OUTLINED_FUNCTION_12_28();
  v19 = OUTLINED_FUNCTION_14_26();
  MEMORY[0x26D645A60](v19);

  MEMORY[0x26D645A60](23818, 0xE200000000000000);
  return v24;
}

void sub_2697F00A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_17_22();
  v31 = *(v30 + 16);
  if (v31)
  {
    v32 = v30;
    OUTLINED_FUNCTION_1_50();
    v43 = MEMORY[0x277D84F90];
    OUTLINED_FUNCTION_5_39();
    v33 = v43;
    v34 = v32 + 40;
    do
    {

      sub_269854AE4();
      OUTLINED_FUNCTION_6_45();
      if (v36)
      {
        v38 = OUTLINED_FUNCTION_9(v35);
        sub_269814F0C(v38, v28, 1);
        v33 = v43;
      }

      *(v33 + 16) = v28;
      v37 = v33 + 16 * v29;
      *(v37 + 32) = v26;
      *(v37 + 40) = v27;
      v34 += 16;
      --v31;
    }

    while (v31);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322878, &qword_2698587A0);
    v39 = sub_2697B47C4();
    OUTLINED_FUNCTION_3_45(v39, v40, v41, v39);
    OUTLINED_FUNCTION_12_28();
    v42 = OUTLINED_FUNCTION_14_26();
    MEMORY[0x26D645A60](v42);

    OUTLINED_FUNCTION_13_27();
  }

  else
  {
    OUTLINED_FUNCTION_10_29();
  }

  OUTLINED_FUNCTION_18_18();
}

void sub_2697F01B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_17_22();
  v31 = *(v30 + 16);
  if (v31)
  {
    v32 = v30;
    OUTLINED_FUNCTION_1_50();
    v43 = MEMORY[0x277D84F90];
    OUTLINED_FUNCTION_5_39();
    v33 = v43;
    v34 = v32 + 48;
    do
    {

      sub_269854AE4();
      OUTLINED_FUNCTION_6_45();
      if (v36)
      {
        v38 = OUTLINED_FUNCTION_9(v35);
        sub_269814F0C(v38, v28, 1);
        v33 = v43;
      }

      *(v33 + 16) = v28;
      v37 = v33 + 16 * v29;
      *(v37 + 32) = v26;
      *(v37 + 40) = v27;
      v34 += 24;
      --v31;
    }

    while (v31);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322878, &qword_2698587A0);
    v39 = sub_2697B47C4();
    OUTLINED_FUNCTION_3_45(v39, v40, v41, v39);
    OUTLINED_FUNCTION_12_28();
    v42 = OUTLINED_FUNCTION_14_26();
    MEMORY[0x26D645A60](v42);

    OUTLINED_FUNCTION_13_27();
  }

  else
  {
    OUTLINED_FUNCTION_10_29();
  }

  OUTLINED_FUNCTION_18_18();
}

uint64_t sub_2697F0300(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_8();
  v5 = MEMORY[0x28223BE20](v4);
  v35 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v31 - v7;
  v9 = *(a1 + 16);
  if (!v9)
  {
    return OUTLINED_FUNCTION_10_29();
  }

  OUTLINED_FUNCTION_1_50();
  v37 = v10;
  v38 = v11;
  v36 = MEMORY[0x277D84F90];
  v13 = v12;
  sub_269814F0C(0, v9, 0);
  v14 = v36;
  v15 = *(v13 + 16);
  v16 = (a1 + ((*(v13 + 80) + 32) & ~*(v13 + 80)));
  v33 = *(v13 + 72);
  v34 = v15;
  v32 = (v13 + 8);
  do
  {
    v17 = v34;
    v34(v8, v16, v3);
    v17(v35, v8, v3);
    v18 = sub_269854AE4();
    v20 = v19;
    (*v32)(v8, v3);
    v36 = v14;
    v22 = *(v14 + 16);
    v21 = *(v14 + 24);
    if (v22 >= v21 >> 1)
    {
      sub_269814F0C(v21 > 1, v22 + 1, 1);
      v14 = v36;
    }

    *(v14 + 16) = v22 + 1;
    v23 = v14 + 16 * v22;
    *(v23 + 32) = v18;
    *(v23 + 40) = v20;
    v16 += v33;
    --v9;
  }

  while (v9);
  v36 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322878, &qword_2698587A0);
  v24 = sub_2697B47C4();
  v27 = OUTLINED_FUNCTION_3_45(v24, v25, v26, v24);
  v29 = v28;

  MEMORY[0x26D645A60](v27, v29);

  MEMORY[0x26D645A60](23818, 0xE200000000000000);
  return v37;
}

void sub_2697F05C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, id a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_17_22();
  v50 = v27;
  v29 = v28;
  v30 = v26;
  if (!(v26 >> 62))
  {
    if (*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_14:
    OUTLINED_FUNCTION_10_29();
    goto LABEL_15;
  }

  if (!sub_269855324())
  {
    goto LABEL_14;
  }

LABEL_3:
  OUTLINED_FUNCTION_1_50();
  v31 = v29(v30);
  if (!v31)
  {
LABEL_12:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322878, &qword_2698587A0);
    v44 = sub_2697B47C4();
    v47 = OUTLINED_FUNCTION_3_45(v44, v45, v46, v44);
    v49 = v48;

    MEMORY[0x26D645A60](v47, v49);

    OUTLINED_FUNCTION_13_27();
LABEL_15:
    OUTLINED_FUNCTION_18_18();
    return;
  }

  v32 = v31;
  v51 = MEMORY[0x277D84F90];
  sub_269814F0C(0, v31 & ~(v31 >> 63), 0);
  if ((v32 & 0x8000000000000000) == 0)
  {
    v33 = 0;
    v34 = v50;
    do
    {
      if ((v30 & 0xC000000000000001) != 0)
      {
        MEMORY[0x26D646120](v33, v30);
      }

      else
      {
        v35 = *(v30 + 8 * v33 + 32);
      }

      v34(0);
      v36 = sub_269854AE4();
      v38 = v37;
      v39 = *(v51 + 16);
      if (v39 >= *(v51 + 24) >> 1)
      {
        OUTLINED_FUNCTION_15_27();
        sub_269814F0C(v41, v42, v43);
        v34 = v50;
      }

      ++v33;
      *(v51 + 16) = v39 + 1;
      v40 = v51 + 16 * v39;
      *(v40 + 32) = v36;
      *(v40 + 40) = v38;
    }

    while (v32 != v33);
    goto LABEL_12;
  }

  __break(1u);
}

uint64_t sub_2697F0770(uint64_t a1)
{
  v2 = v1;
  type metadata accessor for SignalRecordingContext(0);
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_3_1();
  v7 = v6 - v5;
  sub_2697EE474(a1, v6 - v5);
  OUTLINED_FUNCTION_14_26();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_2_37();
      sub_2697EE4D8(v7, v13);
      __swift_project_boxed_opaque_existential_1((v2 + 24), *(v2 + 48));
      sub_2697EAC90(&v14);
      if ((v14 & 1) == 0)
      {
        sub_26976030C(&v14);
        goto LABEL_5;
      }

      v11 = sub_2697EEB2C(v15, v16 & 1, v17);
      sub_26976030C(&v14);
      break;
    case 3u:
    case 4u:

      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323C10, &unk_269866CD0);
      v8 = type metadata accessor for AppDisambiguationContext;
      v9 = v7 + *(v10 + 48);
      goto LABEL_4;
    default:
      OUTLINED_FUNCTION_2_37();
      v9 = v7;
LABEL_4:
      sub_2697EE4D8(v9, v8);
LABEL_5:
      v11 = 0;
      break;
  }

  return v11 & 1;
}

uint64_t sub_2697F08C8(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_2698548D4();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v3[8] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323B28, &qword_26985C360);
  v3[9] = swift_task_alloc();
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  v5 = sub_269853984();
  v3[13] = v5;
  v3[14] = *(v5 - 8);
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  v3[17] = type metadata accessor for SignalRecordingContext(0);
  v3[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2697F0A84);
}

uint64_t sub_2697F0A84()
{
  v1 = v0[3];
  if (v1 >> 62)
  {
    if (!sub_269855324())
    {
      goto LABEL_12;
    }
  }

  else if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_12;
  }

  sub_269750050();
  v2 = v0[3];
  if ((v1 & 0xC000000000000001) != 0)
  {
    v3 = MEMORY[0x26D646120](0, v2);
  }

  else
  {
    v3 = *(v2 + 32);
  }

  v4 = v3;
  v0[19] = v3;
  sub_2697EE474(v0[2], v0[18]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v6 = v0[18];
  if (EnumCaseMultiPayload == 1)
  {
    if (*(v6 + 2))
    {
      v7 = v0[4];
      v8 = *v6;
      v9 = (*(v7 + 64))();
      v11 = v10;
      __swift_project_boxed_opaque_existential_1((v7 + 80), *(v7 + 104));
      v12 = __swift_project_boxed_opaque_existential_1((v7 + 160), *(v7 + 184));
      __swift_project_boxed_opaque_existential_1((v7 + 200), *(v7 + 224));
      v13 = sub_2697F17C8(v8, v9, v11, *v12);
      v0[20] = v13;

      __swift_project_boxed_opaque_existential_1((v7 + 120), *(v7 + 144));
      sub_269818540();
      v15 = v14;
      v0[21] = v14;

      v16 = swift_task_alloc();
      v0[22] = v16;
      *v16 = v0;
      v16[1] = sub_2697F0D30;
      v17 = v0[15];

      return sub_2697B7D94(v17, v15, v13);
    }
  }

  else
  {

    OUTLINED_FUNCTION_2_37();
    sub_2697EE4D8(v6, v19);
  }

LABEL_12:
  OUTLINED_FUNCTION_11_34();

  v20 = OUTLINED_FUNCTION_7_42();

  return v21(v20, 0);
}

uint64_t sub_2697F0D30()
{
  *(*v1 + 184) = v0;

  if (v0)
  {

    v2 = sub_2697F1500;
  }

  else
  {
    v2 = sub_2697F0E70;
  }

  return MEMORY[0x2822009F8](v2);
}

uint64_t sub_2697F0E70()
{
  v83 = v0;
  v1 = *(v0 + 152);
  (*(*(v0 + 112) + 32))(*(v0 + 128), *(v0 + 120), *(v0 + 104));
  sub_269853964();
  sub_2697F255C();
  v3 = v2;
  v5 = v4;

  [v1 setVideoPlayOnThirdPartyAppGroundTruthGenerated_];
  v6 = *(v5 + 16);
  v71 = v0;
  v61 = v3;
  if (v6)
  {
    v69 = *(v0 + 80);
    v70 = *(v0 + 88);
    v67 = *(v0 + 64);
    v68 = *(v0 + 72);
    v82 = MEMORY[0x277D84F90];
    OUTLINED_FUNCTION_5_39();
    v7 = v82;
    v3 = sub_2697F1788(v5);
    v10 = 0;
    v11 = v5 + 64;
    v63 = v8;
    v64 = v6;
    v62 = v5 + 72;
    v12 = v5;
    v65 = v5 + 64;
    v66 = v5;
    while ((v3 & 0x8000000000000000) == 0 && v3 < 1 << *(v12 + 32))
    {
      if ((*(v11 + 8 * (v3 >> 6)) & (1 << v3)) == 0)
      {
        goto LABEL_33;
      }

      if (*(v12 + 36) != v8)
      {
        goto LABEL_34;
      }

      v75 = v3 >> 6;
      v73 = v10;
      v74 = v8;
      v72 = v9;
      v13 = *(v67 + 48);
      v14 = v71[11];
      v15 = v71[12];
      v16 = v71[10];
      v17 = *(v12 + 56);
      v18 = (*(v12 + 48) + 16 * v3);
      v19 = v18[1];
      v76 = *v18;
      v79 = v71[9];
      v20 = sub_269853904();
      OUTLINED_FUNCTION_8();
      v22 = v21;
      (*(v21 + 16))(v15 + v13, v17 + *(v23 + 72) * v3, v20);
      *v14 = v76;
      *(v70 + 8) = v19;
      v24 = *(v22 + 32);
      v24(&v14[*(v67 + 48)], v15 + v13, v20);
      sub_2697F1D04(v14, v16);
      v25 = *v16;
      v26 = *(v69 + 8);
      v27 = *(v67 + 48);
      *v79 = *v16;
      *(v68 + 8) = v26;
      v24(v79 + v27, v16 + v27, v20);

      sub_26969B0C0(v79, &qword_280323B28, &qword_26985C360);
      sub_26969B0C0(v14, &qword_280323B28, &qword_26985C360);
      v82 = v7;
      v0 = *(v7 + 16);
      v28 = *(v7 + 24);
      if (v0 >= v28 >> 1)
      {
        sub_269814F0C(v28 > 1, v0 + 1, 1);
        v7 = v82;
      }

      *(v7 + 16) = v0 + 1;
      v29 = v7 + 16 * v0;
      *(v29 + 32) = v25;
      *(v29 + 40) = v26;
      v12 = v66;
      v30 = 1 << *(v66 + 32);
      if (v3 >= v30)
      {
        goto LABEL_35;
      }

      v11 = v65;
      v31 = *(v65 + 8 * v75);
      if ((v31 & (1 << v3)) == 0)
      {
        goto LABEL_36;
      }

      if (*(v66 + 36) != v74)
      {
        goto LABEL_37;
      }

      v32 = v31 & (-2 << (v3 & 0x3F));
      if (v32)
      {
        v30 = __clz(__rbit64(v32)) | v3 & 0x7FFFFFFFFFFFFFC0;
        v33 = v73;
      }

      else
      {
        v0 = v75 << 6;
        v34 = (v62 + 8 * v75);
        v35 = v75 + 1;
        while (v35 < (v30 + 63) >> 6)
        {
          v37 = *v34++;
          v36 = v37;
          v0 += 64;
          ++v35;
          if (v37)
          {
            sub_26968E5C8(v3, v74, v72 & 1);
            v30 = __clz(__rbit64(v36)) + v0;
            goto LABEL_19;
          }
        }

        sub_26968E5C8(v3, v74, v72 & 1);
LABEL_19:
        v33 = v73;
        v12 = v66;
      }

      v9 = 0;
      v10 = v33 + 1;
      v3 = v30;
      v8 = v63;
      if (v10 == v64)
      {

        v0 = v71;
        v3 = v61;
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    swift_once();
    goto LABEL_25;
  }

  v7 = MEMORY[0x277D84F90];
LABEL_23:
  if (!*(v7 + 16))
  {
    v57 = *(v0 + 152);
    (*(*(v0 + 112) + 8))(*(v0 + 128), *(v0 + 104));

    goto LABEL_29;
  }

  if (qword_2803226F0 != -1)
  {
    goto LABEL_38;
  }

LABEL_25:
  v38 = *(v0 + 48);
  v39 = *(v0 + 56);
  v40 = *(v0 + 40);
  v41 = __swift_project_value_buffer(v40, qword_28033D940);
  (*(v38 + 16))(v39, v41, v40);
  v42 = v7;

  v43 = sub_2698548B4();
  v44 = sub_269854F24();

  v45 = os_log_type_enabled(v43, v44);
  v46 = *(v0 + 152);
  v47 = *(v0 + 128);
  v49 = *(v0 + 104);
  v48 = *(v0 + 112);
  v50 = *(v0 + 48);
  v80 = *(v0 + 40);
  v81 = *(v0 + 56);
  if (v45)
  {
    v78 = *(v0 + 104);
    v51 = swift_slowAlloc();
    v77 = v47;
    v52 = swift_slowAlloc();
    v82 = v52;
    *v51 = 136315138;
    v53 = MEMORY[0x26D645BC0](v42, MEMORY[0x277D837D0]);
    v55 = v54;

    v56 = sub_26974F520(v53, v55, &v82);

    *(v51 + 4) = v56;
    _os_log_impl(&dword_269684000, v43, v44, "PlayOnThirdPartyAppSignalRecordingHandler populate has unhandled signals %s", v51, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v52);
    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_10();

    (*(v50 + 8))(v81, v80);
    (*(v48 + 8))(v77, v78);
  }

  else
  {

    (*(v50 + 8))(v81, v80);
    (*(v48 + 8))(v47, v49);
  }

LABEL_29:

  v58 = OUTLINED_FUNCTION_7_42();

  return v59(v58, 1);
}

uint64_t sub_2697F1500()
{
  v1 = *(v0 + 184);

  OUTLINED_FUNCTION_11_34();

  v2 = OUTLINED_FUNCTION_7_42();

  return v3(v2, 0);
}

void *sub_2697F15E4()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 3);

  __swift_destroy_boxed_opaque_existential_0(v0 + 10);
  __swift_destroy_boxed_opaque_existential_0(v0 + 15);
  __swift_destroy_boxed_opaque_existential_0(v0 + 20);
  __swift_destroy_boxed_opaque_existential_0(v0 + 25);
  __swift_destroy_boxed_opaque_existential_0(v0 + 30);
  sub_2697EFA44((v0 + 35));
  return v0;
}

uint64_t sub_2697F163C()
{
  sub_2697F15E4();

  return MEMORY[0x2821FE8D8](v0, 400, 7);
}

uint64_t sub_2697F16BC(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2697EC780;

  return sub_2697F08C8(a1, a2);
}

uint64_t sub_2697F17C8(int a1, uint64_t a2, uint64_t a3, void *a4)
{
  v61 = a2;
  v62 = a3;
  HIDWORD(v60) = a1;
  sub_2698548D4();
  OUTLINED_FUNCTION_8();
  v63 = v6;
  v64 = v5;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3_1();
  v65 = v8 - v7;
  v79[3] = &type metadata for LSApplicationRecordProvider;
  v79[4] = &xmmword_287A41430;
  v78[3] = &type metadata for AppIntentsMetadataProvider;
  v78[4] = &off_287A413C0;
  v78[0] = a4;
  v77[3] = &type metadata for FeatureFlagServiceImpl;
  v77[4] = &off_287A41BD8;
  sub_2696A73F8(v79, v75);
  sub_2696A73F8(v78, &v76);
  v9 = objc_opt_self();
  v10 = a4;
  v11 = [v9 enumeratorWithOptions_];
  v12 = sub_2697EFB8C();
  v59 = 0;

  v13 = 0;
  v14 = *(v12 + 16);
  v15 = v12 + 32;
  v16 = MEMORY[0x277D84F90];
  v17 = 40;
  while (v14 != v13)
  {
    if (v13 >= *(v12 + 16))
    {
      __break(1u);
LABEL_29:
      swift_once();
      goto LABEL_24;
    }

    sub_2696A73F8(v15, &v70);
    v18 = v72;
    v19 = v73;
    __swift_project_boxed_opaque_existential_1(&v70, v72);
    if ((*(v19 + 24))(v18, v19) == 1)
    {
      __swift_destroy_boxed_opaque_existential_0(&v70);
    }

    else
    {
      sub_26968E5D4(&v70, &v66);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v74 = v16;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v21 = OUTLINED_FUNCTION_16_22();
        sub_2698150B0(v21, v22, v23);
        v16 = v74;
      }

      v25 = *(v16 + 16);
      v24 = *(v16 + 24);
      if (v25 >= v24 >> 1)
      {
        v26 = OUTLINED_FUNCTION_9(v24);
        sub_2698150B0(v26, v25 + 1, 1);
        v16 = v74;
      }

      *(v16 + 16) = v25 + 1;
      sub_26968E5D4(&v66, v16 + 40 * v25 + 32);
    }

    v15 += 40;
    ++v13;
  }

  MEMORY[0x28223BE20](v27);
  *(&v58 - 48) = BYTE4(v60) & 1;
  *(&v58 - 5) = v75;
  v28 = v62;
  *(&v58 - 4) = v61;
  *(&v58 - 3) = v28;
  *(&v58 - 2) = v77;
  v29 = sub_2697EFDDC(sub_2697F1D74, (&v58 - 8), v16);
  v30 = *(v29 + 2);
  if (v30)
  {
    v31 = v29 + 32;
    v17 = MEMORY[0x277D84F90];
    do
    {
      sub_2696A73F8(v31, &v70);
      v32 = v72;
      v33 = v73;
      __swift_project_boxed_opaque_existential_1(&v70, v72);
      v34 = (*(v33 + 8))(v32, v33);
      v36 = v35;
      __swift_destroy_boxed_opaque_existential_0(&v70);
      if (v36)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_16_22();
          sub_26977BCE4();
          v17 = v40;
        }

        v38 = *(v17 + 16);
        v37 = *(v17 + 24);
        if (v38 >= v37 >> 1)
        {
          OUTLINED_FUNCTION_9(v37);
          OUTLINED_FUNCTION_15_27();
          sub_26977BCE4();
          v17 = v41;
        }

        *(v17 + 16) = v38 + 1;
        v39 = v17 + 16 * v38;
        *(v39 + 32) = v34;
        *(v39 + 40) = v36;
      }

      v31 += 40;
      --v30;
    }

    while (v30);
  }

  else
  {

    v17 = MEMORY[0x277D84F90];
  }

  v14 = v63;
  v13 = v64;
  v12 = v65;
  if (qword_280322708 != -1)
  {
    goto LABEL_29;
  }

LABEL_24:
  v42 = __swift_project_value_buffer(v13, qword_281571B50);
  (*(v14 + 16))(v12, v42, v13);

  v43 = sub_2698548B4();
  v44 = sub_269854F14();

  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    *&v70 = v46;
    *v45 = 136315138;
    sub_2697F00A8(v17, v47, v48, v49, v50, v51, v52, v53, v58, v59, v60, v61, v62, v63, v64, v65, v66, *(&v66 + 1), v67, v68, v69, v70, *(&v70 + 1), v71, v72, v73);
    v56 = sub_26974F520(v54, v55, &v70);

    *(v45 + 4) = v56;
    _os_log_impl(&dword_269684000, v43, v44, "PlayOnThirdPartyApp candidateApps: %s", v45, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v46);
    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_10();

    (*(v14 + 8))(v65, v13);
  }

  else
  {

    (*(v14 + 8))(v12, v13);
  }

  sub_2696B6F40(v75);
  __swift_destroy_boxed_opaque_existential_0(v79);
  __swift_destroy_boxed_opaque_existential_0(v78);
  __swift_destroy_boxed_opaque_existential_0(v77);
  return v17;
}

uint64_t sub_2697F1D04(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323B28, &qword_26985C360);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_3_45(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_269854A44();
}

void OUTLINED_FUNCTION_5_39()
{

  sub_269814F0C(0, v0, 0);
}

uint64_t OUTLINED_FUNCTION_11_34()
{
}

uint64_t OUTLINED_FUNCTION_12_28()
{
}

void OUTLINED_FUNCTION_13_27()
{

  JUMPOUT(0x26D645A60);
}

void sub_2697F1EE0(uint64_t a1)
{
  MEMORY[0x26D645D60](*(a1 + 16), MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  OUTLINED_FUNCTION_27_14();
  while (1)
  {
    if (v2 == v1)
    {

      return;
    }

    if (v1 >= *(a1 + 16))
    {
      break;
    }

    ++v1;

    v13 = OUTLINED_FUNCTION_25_18(v5, v6, v7, v8, v9, v10, v11, v12, v16, v17);
    sub_2697F4AE4(v13, v14, v15);

    v3 += 16;
  }

  __break(1u);
}

void sub_2697F1F88()
{
  OUTLINED_FUNCTION_19_1();
  OUTLINED_FUNCTION_29_14();
  v6 = sub_2698519E4();
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_16_23();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_15_28();
  sub_2697F8C6C(&unk_280326380, MEMORY[0x277CB9E20], MEMORY[0x277CB9E28]);
  OUTLINED_FUNCTION_11_35();
  v9 = *(v0 + 16);
  if (v9)
  {
    OUTLINED_FUNCTION_7_43();
    do
    {
      v4(v1, v3, v6);
      sub_2697F4C2C(v2, v1);
      v10 = OUTLINED_FUNCTION_31_3();
      v11(v10);
      v3 += v5;
      --v9;
    }

    while (v9);
  }

  else
  {
    OUTLINED_FUNCTION_11_16();
  }

  OUTLINED_FUNCTION_21_0();
}

void sub_2697F20E0()
{
  OUTLINED_FUNCTION_19_1();
  OUTLINED_FUNCTION_29_14();
  v6 = sub_269851A04();
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_16_23();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_15_28();
  sub_2697F8C6C(&unk_2803263A0, MEMORY[0x277CBA000], MEMORY[0x277CBA008]);
  OUTLINED_FUNCTION_11_35();
  v9 = *(v0 + 16);
  if (v9)
  {
    OUTLINED_FUNCTION_7_43();
    do
    {
      v4(v1, v3, v6);
      sub_2697F4EF4(v2, v1);
      v10 = OUTLINED_FUNCTION_31_3();
      v11(v10);
      v3 += v5;
      --v9;
    }

    while (v9);
  }

  else
  {
    OUTLINED_FUNCTION_11_16();
  }

  OUTLINED_FUNCTION_21_0();
}

uint64_t sub_2697F2238(uint64_t a1)
{
  v2 = *(a1 + 16);
  type metadata accessor for INMediaItemType(0);
  sub_2697F8C6C(&qword_2803256E8, type metadata accessor for INMediaItemType, &unk_269858004);
  OUTLINED_FUNCTION_11_35();
  v8 = v3;
  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = 32;
    do
    {
      sub_2697F51BC(&v7, *(a1 + v5));
      v5 += 8;
      --v4;
    }

    while (v4);

    return v8;
  }

  else
  {
    OUTLINED_FUNCTION_11_16();
  }

  return v2;
}

uint64_t sub_2697F22F8(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_2696C9CB4();
  v8 = MEMORY[0x26D645D60](v2, &type metadata for DeviceSelectionInteractionType, v3);
  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = 32;
    do
    {
      sub_2697F52AC(&v7, *(a1 + v5++));
      --v4;
    }

    while (v4);

    return v8;
  }

  else
  {
    OUTLINED_FUNCTION_11_16();
  }

  return v2;
}

void sub_2697F238C(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322EA0, &unk_2698577C0);
  sub_2696D1F08();
  OUTLINED_FUNCTION_11_35();
  OUTLINED_FUNCTION_27_14();
  while (1)
  {
    if (v2 == v1)
    {

      return;
    }

    if (v1 >= *(a1 + 16))
    {
      break;
    }

    ++v1;

    v13 = OUTLINED_FUNCTION_25_18(v5, v6, v7, v8, v9, v10, v11, v12, v16, v17);
    sub_2697F539C(v13, v14, v15);

    v3 += 16;
  }

  __break(1u);
}

uint64_t sub_2697F2440(uint64_t a1)
{
  result = MEMORY[0x26D645D60](*(a1 + 16), MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v3 = 0;
  v14 = result;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  for (i = (v4 + 63) >> 6; v6; result = )
  {
    v8 = v3;
LABEL_9:
    v9 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v10 = (*(a1 + 48) + ((v8 << 10) | (16 * v9)));
    v11 = *v10;
    v12 = v10[1];

    sub_2697F4AE4(v13, v11, v12);
  }

  while (1)
  {
    v8 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v8 >= i)
    {

      return v14;
    }

    v6 = *(a1 + 64 + 8 * v8);
    ++v3;
    if (v6)
    {
      v3 = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

void sub_2697F29B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t *a21, uint64_t (*a22)(void, void, void, void), uint64_t (*a23)(void))
{
  OUTLINED_FUNCTION_19_1();
  v25 = v24;
  v27 = v26;
  v260 = v28;
  v30 = v29;
  v32 = v31;
  v268 = v33;
  v277 = sub_269853904();
  OUTLINED_FUNCTION_8();
  v269 = v34;
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_3_13();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_23_3();
  OUTLINED_FUNCTION_3_13();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_23_3();
  v270 = v38;
  OUTLINED_FUNCTION_22_0();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_23_3();
  v276 = v40;
  OUTLINED_FUNCTION_22_0();
  MEMORY[0x28223BE20](v41);
  v267 = &v242 - v42;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323B30, &qword_26985C368);
  MEMORY[0x28223BE20](v43 - 8);
  OUTLINED_FUNCTION_12();
  v274 = (v44 - v45);
  OUTLINED_FUNCTION_22_0();
  MEMORY[0x28223BE20](v46);
  v271 = (&v242 - v47);
  v48 = sub_2698548D4();
  OUTLINED_FUNCTION_8();
  v272 = v49;
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_3_13();
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_23_3();
  OUTLINED_FUNCTION_3_13();
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_23_3();
  v275 = v53;
  OUTLINED_FUNCTION_22_0();
  v55 = MEMORY[0x28223BE20](v54);
  v57 = &v242 - v56;
  MEMORY[0x28223BE20](v55);
  OUTLINED_FUNCTION_15_28();
  v27(v280);
  v58 = v280[0];
  if (!v280[0])
  {
    if (qword_2803226F0 != -1)
    {
      goto LABEL_117;
    }

    goto LABEL_16;
  }

  v258 = v30;
  v59 = *(v32 + 16);

  sub_2697F1EE0(v60);
  v62 = *(v61 + 16);

  if (v59 != v62)
  {
    if (qword_2803226F0 != -1)
    {
      OUTLINED_FUNCTION_2_35(&qword_2803226F0);
    }

    OUTLINED_FUNCTION_33_0(v48, qword_28033D940);
    v80 = v272;
    (*(v272 + 16))(v57);
    v81 = sub_2698548B4();
    v82 = sub_269854F24();
    if (OUTLINED_FUNCTION_17_2(v82))
    {
      v83 = OUTLINED_FUNCTION_16_2();
      OUTLINED_FUNCTION_30_2(v83);
      OUTLINED_FUNCTION_20_7(&dword_269684000, v84, v85, "SelfSerialization create has duplicate candidateAppBundleIds");
      OUTLINED_FUNCTION_18_7();
    }

    (*(v80 + 8))(v57, v48);
LABEL_24:

    goto LABEL_93;
  }

  v256 = v58;
  v257 = v48;
  v48 = 0;
  v243 = a23;
  v265 = a22;
  v273 = a21;
  v244 = v32;
  v63 = v32 + 40;
  v23 = MEMORY[0x277D84F90];
  v245 = MEMORY[0x277D84F90];
  v278 = v59;
  v266 = v32 + 40;
LABEL_4:
  v64 = (v63 + 16 * v48);
  for (i = v48; v59 != i; ++i)
  {
    if (i >= v59)
    {
LABEL_113:
      __break(1u);
LABEL_114:
      __break(1u);
LABEL_115:
      __break(1u);
LABEL_116:
      __break(1u);
LABEL_117:
      OUTLINED_FUNCTION_2_35(&qword_2803226F0);
LABEL_16:
      OUTLINED_FUNCTION_33_0(v48, qword_28033D940);
      v73 = v272;
      OUTLINED_FUNCTION_36_1();
      v74(v23);
      v75 = sub_2698548B4();
      v76 = sub_269854F24();
      if (OUTLINED_FUNCTION_17_2(v76))
      {
        v77 = OUTLINED_FUNCTION_16_2();
        OUTLINED_FUNCTION_30_2(v77);
        OUTLINED_FUNCTION_20_7(&dword_269684000, v78, v79, "SelfSerialization create could not create independentSignals");
        OUTLINED_FUNCTION_18_7();
      }

      (*(v73 + 8))(v23, v48);
      goto LABEL_93;
    }

    v48 = i + 1;
    if (__OFADD__(i, 1))
    {
      goto LABEL_114;
    }

    v67 = *(v64 - 1);
    v66 = *v64;

    v25(v280, v68);
    v69 = v280[0];
    if (v280[0])
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v23 = v265(0, v23[2] + 1, 1, v23);
      }

      v63 = v266;
      v71 = v23[2];
      v70 = v23[3];
      if (v71 >= v70 >> 1)
      {
        v23 = v265(v70 > 1, v71 + 1, 1, v23);
      }

      v23[2] = v71 + 1;
      v72 = &v23[3 * v71];
      v72[4] = v67;
      v72[5] = v66;
      v72[6] = v69;
      v59 = v278;
      goto LABEL_4;
    }

    v64 += 2;
    v59 = v278;
  }

  v86 = (v273)(v23);
  if (*(v86 + 16) != v59)
  {

    v214 = v272;
    if (qword_2803226F0 != -1)
    {
      OUTLINED_FUNCTION_2_35(&qword_2803226F0);
    }

    v215 = v257;
    OUTLINED_FUNCTION_33_0(v257, qword_28033D940);
    OUTLINED_FUNCTION_36_1();
    v216 = v275;
    v217(v275);
    v218 = sub_2698548B4();
    v219 = sub_269854F24();
    v220 = OUTLINED_FUNCTION_17_2(v219);
    v221 = v256;
    if (v220)
    {
      v222 = OUTLINED_FUNCTION_16_2();
      OUTLINED_FUNCTION_30_2(v222);
      OUTLINED_FUNCTION_20_7(&dword_269684000, v223, v224, "SelfSerialization create could not create dependentSignals");
      OUTLINED_FUNCTION_18_7();
    }

    (*(v214 + 8))(v216, v215);
    goto LABEL_93;
  }

  v87 = v268 + 64;
  v88 = 1 << *(v268 + 32);
  if (v88 < 64)
  {
    v89 = ~(-1 << v88);
  }

  else
  {
    v89 = -1;
  }

  v58 = v89 & *(v268 + 64);
  v252 = (v88 + 63) >> 6;
  v275 = (v269 + 16);
  v273 = (v269 + 32);
  v265 = (v269 + 88);
  v264 = *MEMORY[0x277D60170];
  v254 = *MEMORY[0x277D60188];
  v249 = v272 + 16;
  v250 = v272 + 8;
  v262 = v269 + 96;
  v263 = (v269 + 8);
  v253 = v86 + 64;
  v242 = v269 + 40;

  v90 = 0;
  v246 = MEMORY[0x277D84F98];
  v23 = v277;
  v91 = v274;
  v272 = v86;
  v266 = v87;
  while (1)
  {
LABEL_30:
    if (!v58)
    {
      while (1)
      {
        v92 = v90 + 1;
        if (__OFADD__(v90, 1))
        {
          goto LABEL_112;
        }

        if (v92 >= v252)
        {
          v23 = &qword_26985C360;
          v162 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323B28, &qword_26985C360);
          __swift_storeEnumTagSinglePayload(v91, 1, 1, v162);
          v58 = 0;
          goto LABEL_37;
        }

        v58 = *(v87 + 8 * v92);
        ++v90;
        if (v58)
        {
          v90 = v92;
          goto LABEL_36;
        }
      }
    }

    v92 = v90;
LABEL_36:
    v93 = __clz(__rbit64(v58));
    v58 &= v58 - 1;
    v94 = v93 | (v92 << 6);
    v95 = v269;
    v96 = (*(v268 + 48) + 16 * v94);
    v97 = *v96;
    v87 = v96[1];
    v98 = v267;
    (*(v269 + 16))(v267, *(v268 + 56) + *(v269 + 72) * v94, v23);
    v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323B28, &qword_26985C360);
    v100 = v23;
    v101 = v99;
    v102 = *(v99 + 48);
    *v91 = v97;
    *(v91 + 1) = v87;
    (*(v95 + 32))(&v91[v102], v98, v100);
    v103 = v101;
    v23 = &qword_26985C360;
    __swift_storeEnumTagSinglePayload(v91, 0, 1, v103);

    v59 = v278;
LABEL_37:
    v104 = v271;
    sub_2697F8BFC(v91, v271);
    v105 = OUTLINED_FUNCTION_34_0();
    __swift_instantiateConcreteTypeFromMangledNameV2(v105, v106);
    v107 = OUTLINED_FUNCTION_11_16();
    if (__swift_getEnumTagSinglePayload(v107, 1, v87) == 1)
    {
      break;
    }

    v109 = *v104;
    v108 = v104[1];
    v48 = *v273;
    v110 = v104 + *(v87 + 48);
    v111 = v276;
    v112 = v277;
    (*v273)(v276, v110, v277);
    v113 = *v275;
    v114 = v270;
    (*v275)(v270, v111, v112);
    v115 = OUTLINED_FUNCTION_34_0();
    v117 = v116(v115);
    if (v117 == v264)
    {
      v118 = OUTLINED_FUNCTION_34_0();
      v119(v118);
      v120 = v258;
      if (*(v258 + 16))
      {
        v121 = *v114;
        v122 = OUTLINED_FUNCTION_8_3();
        v124 = sub_26973CEF8(v122, v123);
        if (v125)
        {
          v126 = v124;

          v127 = *(*(v120 + 56) + 16 * v126);
          v279 = v121;
          v280[0] = v256;

          v127(v280, &v279);

          v23 = v277;
          (*v263)(v276, v277);
          goto LABEL_42;
        }
      }

      v113(v251, v276, v277);
      v163 = v246;
      swift_isUniquelyReferenced_nonNull_native();
      v280[0] = v163;
      v164 = OUTLINED_FUNCTION_8_3();
      sub_26973CEF8(v164, v165);
      OUTLINED_FUNCTION_26_16();
      if (v168)
      {
        __break(1u);
LABEL_119:
        OUTLINED_FUNCTION_2_35(&qword_2803226F0);
LABEL_108:
        OUTLINED_FUNCTION_33_0(v90, qword_28033D940);
        OUTLINED_FUNCTION_7_4();
        v234 = v247;
        v235(v247);
        v236 = sub_2698548B4();
        v237 = sub_269854F24();
        if (OUTLINED_FUNCTION_17_2(v237))
        {
          v238 = OUTLINED_FUNCTION_16_2();
          OUTLINED_FUNCTION_30_2(v238);
          OUTLINED_FUNCTION_20_7(&dword_269684000, v239, v240, "SelfSerialization error creating ordered dependent signals");
          OUTLINED_FUNCTION_18_7();
        }

        OUTLINED_FUNCTION_7_4();
        v241(v234, v90);
        goto LABEL_24;
      }

      v169 = v166;
      v170 = v167;
      v171 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803256A0, &qword_269866F70);
      if (OUTLINED_FUNCTION_34_11(v171))
      {
        v172 = OUTLINED_FUNCTION_8_3();
        v174 = sub_26973CEF8(v172, v173);
        v23 = v277;
        v59 = v278;
        if ((v170 & 1) != (v175 & 1))
        {
          goto LABEL_123;
        }

        v169 = v174;
      }

      else
      {
        v23 = v277;
        v59 = v278;
      }

      v87 = v266;
      if (v170)
      {

        OUTLINED_FUNCTION_31_13();
        OUTLINED_FUNCTION_30_16();
        (*(v169 + 40))(v188 + v189 * v190, v251, v23);
        goto LABEL_85;
      }

      v191 = v280[0];
      OUTLINED_FUNCTION_28_14(v280[0] + 8 * (v169 >> 6));
      v193 = (v192 + 16 * v169);
      *v193 = v109;
      v193[1] = v108;
      OUTLINED_FUNCTION_30_16();
      (v48)(v194 + v195 * v196, v251, v23);
      v197 = v191;
      v198 = OUTLINED_FUNCTION_14_27();
      v199(v198);
      v200 = *(v191 + 16);
      v168 = __OFADD__(v200, 1);
      v201 = v200 + 1;
      if (v168)
      {
        goto LABEL_121;
      }

LABEL_87:
      v246 = v197;
      *(v197 + 16) = v201;
LABEL_42:
      v91 = v274;
      v87 = v266;
    }

    else
    {
      v128 = v260;
      if (v117 == v254)
      {
        v129 = OUTLINED_FUNCTION_34_0();
        v130(v129);
        v131 = *v114;
        if (*(v128 + 16))
        {
          v132 = OUTLINED_FUNCTION_8_3();
          v134 = sub_26973CEF8(v132, v133);
          if (v135)
          {
            v136 = v134;

            v137 = *(v128 + 56) + 16 * v136;
            v138 = *(v137 + 8);
            v255 = *v137;
            v139 = v272;
            v140 = 1 << *(v272 + 32);
            if (v140 < 64)
            {
              v141 = ~(-1 << v140);
            }

            else
            {
              v141 = -1;
            }

            v142 = v141 & *(v272 + 64);
            v143 = (v140 + 63) >> 6;
            v261 = v138;

            v144 = 0;
            v91 = v274;
            while (v142)
            {
              v145 = v142;
LABEL_57:
              v142 = (v145 - 1) & v145;
              if (*(v131 + 16))
              {
                v147 = __clz(__rbit64(v145)) | (v144 << 6);
                v148 = *(*(v139 + 56) + 8 * v147);
                v149 = (*(v139 + 48) + 16 * v147);
                v150 = *v149;
                v151 = v149[1];

                v152 = v148;
                v153 = sub_26973CEF8(v150, v151);
                v48 = v154;

                if (v48)
                {
                  v279 = *(*(v131 + 56) + 8 * v153);
                  v280[0] = v152;
                  v255(v280, &v279);
                }

                v91 = v274;
                v139 = v272;
              }
            }

            v23 = v277;
            while (1)
            {
              v146 = v144 + 1;
              if (__OFADD__(v144, 1))
              {
                break;
              }

              if (v146 >= v143)
              {
                (*v263)(v276, v277);

                v59 = v278;
                v87 = v266;
                goto LABEL_30;
              }

              v145 = *(v253 + 8 * v146);
              ++v144;
              if (v145)
              {
                v144 = v146;
                goto LABEL_57;
              }
            }

            __break(1u);
LABEL_112:
            __break(1u);
            goto LABEL_113;
          }
        }

        v113(v248, v276, v112);
        v176 = v246;
        swift_isUniquelyReferenced_nonNull_native();
        v280[0] = v176;
        v177 = OUTLINED_FUNCTION_8_3();
        sub_26973CEF8(v177, v178);
        OUTLINED_FUNCTION_26_16();
        if (v168)
        {
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          sub_2698555F4();
          __break(1u);
          return;
        }

        v181 = v179;
        v182 = v180;
        v183 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803256A0, &qword_269866F70);
        if (OUTLINED_FUNCTION_34_11(v183))
        {
          v184 = OUTLINED_FUNCTION_8_3();
          v186 = sub_26973CEF8(v184, v185);
          v23 = v277;
          v59 = v278;
          if ((v182 & 1) != (v187 & 1))
          {
            goto LABEL_123;
          }

          v181 = v186;
        }

        else
        {
          v23 = v277;
          v59 = v278;
        }

        v87 = v266;
        if ((v182 & 1) == 0)
        {
          v206 = v280[0];
          OUTLINED_FUNCTION_28_14(v280[0] + 8 * (v181 >> 6));
          v208 = (v207 + 16 * v181);
          *v208 = v109;
          v208[1] = v108;
          OUTLINED_FUNCTION_30_16();
          (v48)(v209 + v210 * v181, v248, v23);
          v197 = v206;
          v211 = OUTLINED_FUNCTION_14_27();
          v212(v211);
          v213 = *(v206 + 16);
          v168 = __OFADD__(v213, 1);
          v201 = v213 + 1;
          if (v168)
          {
            goto LABEL_122;
          }

          goto LABEL_87;
        }

        OUTLINED_FUNCTION_31_13();
        OUTLINED_FUNCTION_30_16();
        (*(v182 + 40))(v202 + v203 * v181, v248, v23);
LABEL_85:
        v204 = OUTLINED_FUNCTION_14_27();
        v205(v204);
        v91 = v274;
      }

      else
      {

        if (qword_2803226F0 != -1)
        {
          swift_once();
        }

        OUTLINED_FUNCTION_33_0(v257, qword_28033D940);
        OUTLINED_FUNCTION_7_4();
        v155(v259);
        v156 = sub_2698548B4();
        v157 = sub_269854F24();
        v158 = os_log_type_enabled(v156, v157);
        v91 = v274;
        if (v158)
        {
          v48 = OUTLINED_FUNCTION_16_2();
          *v48 = 0;
          _os_log_impl(&dword_269684000, v156, v157, "SelfSerialization unsupported SignalValue type", v48, 2u);
          OUTLINED_FUNCTION_10();
        }

        OUTLINED_FUNCTION_7_4();
        v159(v259, v257);
        v160 = *v263;
        v23 = v277;
        (*v263)(v276, v277);
        v161 = OUTLINED_FUNCTION_34_0();
        (v160)(v161);
        v87 = v266;
      }
    }
  }

  v225 = 0;
  v280[0] = MEMORY[0x277D84F90];
  v48 = v244 + 40;
  v90 = v257;
  v58 = v256;
LABEL_95:
  v226 = (v48 + 16 * v225);
  v227 = v272;
  while (v59 != v225)
  {
    if (v225 >= v59)
    {
      goto LABEL_115;
    }

    v23 = (v225 + 1);
    if (__OFADD__(v225, 1))
    {
      goto LABEL_116;
    }

    if (*(v227 + 16))
    {
      v228 = *(v226 - 1);
      v229 = *v226;

      v230 = sub_26973CEF8(v228, v229);
      if (v231)
      {
        v232 = *(*(v272 + 56) + 8 * v230);

        MEMORY[0x26D645B90](v233);
        if (*((v280[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v280[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_269854CD4();
        }

        sub_269854CF4();
        v245 = v280[0];
        ++v225;
        goto LABEL_95;
      }

      v227 = v272;
    }

    ++v225;
    v226 += 2;
  }

  if (v59 != v243(v245))
  {

    if (qword_2803226F0 == -1)
    {
      goto LABEL_108;
    }

    goto LABEL_119;
  }

LABEL_93:
  OUTLINED_FUNCTION_21_0();
}

id sub_2697F427C@<X0>(Class *a1@<X0>, void *a2@<X8>)
{
  result = [objc_allocWithZone(*a1) init];
  *a2 = result;
  return result;
}

uint64_t sub_2697F42B4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803256B0, &qword_269866F80);
  result = sub_269854A04();
  qword_28033D8C0 = result;
  return result;
}

id sub_2697F4304(id result, uint64_t a2)
{
  if (a2 == 1)
  {
    v2 = 1;
  }

  else
  {
    if (a2)
    {
      return result;
    }

    v2 = 0;
  }

  return [result setIsDeviceLockStatus_];
}

id sub_2697F432C(id result, uint64_t a2)
{
  if (a2 == a2)
  {
    return [result setBucketedDeviceMotionState_];
  }

  return result;
}

id sub_2697F4348(id result, uint64_t a2)
{
  if (a2 == a2)
  {
    return [result setIntentType_];
  }

  return result;
}

id sub_2697F4364(id result, uint64_t a2)
{
  if (a2 == a2)
  {
    return [result setNowPlayingState_];
  }

  return result;
}

id sub_2697F4380(id result, uint64_t a2)
{
  if (a2 == a2)
  {
    return [result setDeviceClass_];
  }

  return result;
}

id sub_2697F439C(id result, uint64_t a2)
{
  if (a2 == a2)
  {
    return [result setClientHourOfDay_];
  }

  return result;
}

uint64_t sub_2697F43E8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803256A8, &qword_269866F78);
  result = sub_269854A04();
  qword_28033D8C8 = result;
  return result;
}

id sub_2697F4438(id result, uint64_t a2)
{
  if (a2 == a2)
  {
    return [result setRelativeAppUsage1Day_];
  }

  return result;
}

id sub_2697F4454(id result, uint64_t a2)
{
  if (a2 == a2)
  {
    return [result setRelativeAppUsage7Day_];
  }

  return result;
}

id sub_2697F4470(id result, uint64_t a2)
{
  if (a2 == a2)
  {
    return [result setRelativeAppUsage14Day_];
  }

  return result;
}

id sub_2697F448C(id result, uint64_t a2)
{
  if (a2 == a2)
  {
    return [result setEntityAbsoluteCount2Min_];
  }

  return result;
}

id sub_2697F44A8(id result, uint64_t a2)
{
  if (a2 == a2)
  {
    return [result setEntityAbsoluteCount10Min_];
  }

  return result;
}

id sub_2697F44C4(id result, uint64_t a2)
{
  if (a2 == a2)
  {
    return [result setEntityAbsoluteCount1Hr_];
  }

  return result;
}

id sub_2697F44E0(id result, uint64_t a2)
{
  if (a2 == a2)
  {
    return [result setEntityAbsoluteCount6Hr_];
  }

  return result;
}

id sub_2697F44FC(id result, uint64_t a2)
{
  if (a2 == a2)
  {
    return [result setEntityAbsoluteCount1Day_];
  }

  return result;
}

id sub_2697F4518(id result, uint64_t a2)
{
  if (a2 == a2)
  {
    return [result setEntityAbsoluteCount7Day_];
  }

  return result;
}

id sub_2697F4534(id result, uint64_t a2)
{
  if (a2 == a2)
  {
    return [result setEntityAbsoluteCount14Day_];
  }

  return result;
}

id sub_2697F4550(id result, uint64_t a2)
{
  if (a2 == a2)
  {
    return [result setEntityAbsoluteCount28Day_];
  }

  return result;
}

id sub_2697F456C(id result, uint64_t a2)
{
  if (a2 == a2)
  {
    return [result setEntityRecency_];
  }

  return result;
}

id sub_2697F4588(id result, uint64_t a2)
{
  if (a2 == a2)
  {
    return [result setEntityPartialSiriCount2Min_];
  }

  return result;
}

id sub_2697F45A4(id result, uint64_t a2)
{
  if (a2 == a2)
  {
    return [result setEntityPartialSiriCount10Min_];
  }

  return result;
}

id sub_2697F45C0(id result, uint64_t a2)
{
  if (a2 == a2)
  {
    return [result setEntityPartialSiriCount1Hr_];
  }

  return result;
}

id sub_2697F45DC(id result, uint64_t a2)
{
  if (a2 == a2)
  {
    return [result setEntityPartialSiriCount6Hr_];
  }

  return result;
}

id sub_2697F45F8(id result, uint64_t a2)
{
  if (a2 == a2)
  {
    return [result setEntityPartialSiriCount1Day_];
  }

  return result;
}

id sub_2697F4614(id result, uint64_t a2)
{
  if (a2 == a2)
  {
    return [result setEntityPartialSiriCount7Day_];
  }

  return result;
}

id sub_2697F4630(id result, uint64_t a2)
{
  if (a2 == a2)
  {
    return [result setEntityPartialSiriCount28Day_];
  }

  return result;
}

id sub_2697F464C(id result, uint64_t a2)
{
  if (a2 == a2)
  {
    return [result setEntityPartialAppCount2Min_];
  }

  return result;
}

id sub_2697F4668(id result, uint64_t a2)
{
  if (a2 == a2)
  {
    return [result setEntityPartialAppCount10Min_];
  }

  return result;
}

id sub_2697F4684(id result, uint64_t a2)
{
  if (a2 == a2)
  {
    return [result setEntityPartialAppCount1Hr_];
  }

  return result;
}

id sub_2697F46A0(id result, uint64_t a2)
{
  if (a2 == a2)
  {
    return [result setEntityPartialAppCount6Hr_];
  }

  return result;
}

id sub_2697F46BC(id result, uint64_t a2)
{
  if (a2 == a2)
  {
    return [result setEntityPartialAppCount1Day_];
  }

  return result;
}

id sub_2697F46D8(id result, uint64_t a2)
{
  if (a2 == a2)
  {
    return [result setEntityPartialAppCount7Day_];
  }

  return result;
}

id sub_2697F46F4(id result, uint64_t a2)
{
  if (a2 == a2)
  {
    return [result setEntityPartialAppCount28Day_];
  }

  return result;
}

id sub_2697F4710(id result, uint64_t a2)
{
  if (a2 == a2)
  {
    return [result setMediaUserContextNumberOfLibraryItems_];
  }

  return result;
}

id sub_2697F472C(id result, uint64_t a2)
{
  if (a2 == a2)
  {
    return [result setMediaUserContextSubscriptionStatus_];
  }

  return result;
}

id sub_2697F4748(id result, uint64_t a2)
{
  if (a2 == 1)
  {
    v2 = 1;
  }

  else
  {
    if (a2)
    {
      return result;
    }

    v2 = 0;
  }

  return [result setIsLastForegroundApp_];
}

id sub_2697F4770(id result, uint64_t a2)
{
  if (a2 == 1)
  {
    v2 = 1;
  }

  else
  {
    if (a2)
    {
      return result;
    }

    v2 = 0;
  }

  return [result setIsLastNowPlayingApp_];
}

id sub_2697F4798(id result, uint64_t a2)
{
  if (a2 == a2)
  {
    return [result setNowPlayingAbsoluteCount2Min_];
  }

  return result;
}

id sub_2697F47B4(id result, uint64_t a2)
{
  if (a2 == a2)
  {
    return [result setNowPlayingAbsoluteCount10Min_];
  }

  return result;
}

id sub_2697F47D0(id result, uint64_t a2)
{
  if (a2 == a2)
  {
    return [result setNowPlayingAbsoluteCount1Hr_];
  }

  return result;
}

id sub_2697F47EC(id result, uint64_t a2)
{
  if (a2 == a2)
  {
    return [result setNowPlayingAbsoluteCount6Hr_];
  }

  return result;
}

id sub_2697F4808(id result, uint64_t a2)
{
  if (a2 == a2)
  {
    return [result setNowPlayingAbsoluteCount1Day_];
  }

  return result;
}

id sub_2697F4824(id result, uint64_t a2)
{
  if (a2 == a2)
  {
    return [result setNowPlayingAbsoluteCount7Day_];
  }

  return result;
}

id sub_2697F4840(id result, uint64_t a2)
{
  if (a2 == a2)
  {
    return [result setNowPlayingAbsoluteCount28Day_];
  }

  return result;
}

id sub_2697F485C(id result, uint64_t a2)
{
  if (a2 == 1)
  {
    v2 = 1;
  }

  else
  {
    if (a2)
    {
      return result;
    }

    v2 = 0;
  }

  return [result setIsNowPlayingApp_];
}

id sub_2697F4884(id result, uint64_t a2)
{
  if (a2 == 1)
  {
    v2 = 1;
  }

  else
  {
    if (a2)
    {
      return result;
    }

    v2 = 0;
  }

  return [result setIsSelectedApp_];
}

id sub_2697F48AC(id result, uint64_t a2)
{
  if (a2 == a2)
  {
    return [result setTimeSinceLastForegroundAppStartInSec_];
  }

  return result;
}

id sub_2697F48C8(id result, uint64_t a2)
{
  if (a2 == a2)
  {
    return [result setTimeSinceLastForegroundAppEndInSec_];
  }

  return result;
}

id sub_2697F48E4(id result, uint64_t a2)
{
  if (a2 == a2)
  {
    return [result setTimeSinceLastNowPlayingAppStartInSec_];
  }

  return result;
}

id sub_2697F4900(id result, uint64_t a2)
{
  if (a2 == a2)
  {
    return [result setTimeSinceLastNowPlayingAppEndInSec_];
  }

  return result;
}

id sub_2697F491C(id result, uint64_t a2)
{
  if (a2 == a2)
  {
    return [result setSpotlightRelativeCount_];
  }

  return result;
}

id sub_2697F4948(id result, uint64_t a2)
{
  if (a2 == 1)
  {
    v2 = 1;
  }

  else
  {
    if (a2)
    {
      return result;
    }

    v2 = 0;
  }

  return [result setIsForegroundApp_];
}

uint64_t sub_2697F4970()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280325710, &qword_269866FB8);
  result = sub_269854A04();
  qword_28033D8D0 = result;
  return result;
}

id sub_2697F49C0(id result, uint64_t a2)
{
  if (a2 == a2)
  {
    return [result setDisambiguationAppsOrder_];
  }

  return result;
}

id sub_2697F49DC(id result, uint64_t a2)
{
  if (a2 == a2)
  {
    return [result setDisambiguationReasons_];
  }

  return result;
}

id sub_2697F4A08(id result, uint64_t a2)
{
  if (a2 == a2)
  {
    return [result setNumDisambiguationApps_];
  }

  return result;
}

uint64_t sub_2697F4A34()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280325708, &qword_269866FB0);
  result = sub_269854A04();
  qword_28033D8D8 = result;
  return result;
}

id sub_2697F4A84(id result, uint64_t a2)
{
  if (a2 == 1)
  {
    v2 = 1;
  }

  else
  {
    if (a2)
    {
      return result;
    }

    v2 = 0;
  }

  return [result setIsDisambiguatedApp_];
}

id sub_2697F4AAC(id result, uint64_t a2)
{
  if (a2 == a2)
  {
    return [result setModelAppConfidence_];
  }

  return result;
}

id sub_2697F4AC8(id result, uint64_t a2)
{
  if (a2 == a2)
  {
    return [result setDisambiguationAppOrdinal_];
  }

  return result;
}

BOOL sub_2697F4AE4(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_269855674();
  sub_269854B34();
  v8 = sub_2698556C4();
  v9 = ~(-1 << *(v7 + 32));
  while (1)
  {
    v10 = v8 & v9;
    v11 = (1 << (v8 & v9)) & *(v7 + 56 + (((v8 & v9) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v11)
    {
      break;
    }

    v12 = (*(v7 + 48) + 16 * v10);
    v13 = *v12 == a2 && v12[1] == a3;
    if (v13 || (sub_269855584() & 1) != 0)
    {

      v14 = (*(v7 + 48) + 16 * v10);
      v15 = v14[1];
      *a1 = *v14;
      a1[1] = v15;

      return v11 == 0;
    }

    v8 = v10 + 1;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = *v3;

  v17 = OUTLINED_FUNCTION_31_3();
  sub_2697F6540(v17, v18, v10, isUniquelyReferenced_nonNull_native);
  *v3 = v20;
  *a1 = a2;
  a1[1] = a3;
  return v11 == 0;
}

BOOL sub_2697F4C2C(char *a1, char *a2)
{
  v22 = a1;
  v4 = sub_2698519E4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v2;
  v8 = *v2;
  sub_2697F8C6C(&unk_280326380, MEMORY[0x277CB9E20], MEMORY[0x277CB9E28]);
  v27 = a2;
  v9 = sub_269854A24();
  v24 = v8;
  v25 = v8 + 56;
  v10 = ~(-1 << *(v8 + 32));
  v26 = v5 + 16;
  v23 = v5 + 8;
  while (1)
  {
    v11 = v9 & v10;
    v12 = (1 << (v9 & v10)) & *(v25 + (((v9 & v10) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v12)
    {
      v17 = v21;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v19 = v27;
      (*(v5 + 16))(v7, v27, v4);
      v28 = *v17;
      sub_2697F66A8(v7, v11, isUniquelyReferenced_nonNull_native);
      *v17 = v28;
      (*(v5 + 32))(v22, v19, v4);
      return v12 == 0;
    }

    v13 = *(v5 + 72) * v11;
    v14 = *(v5 + 16);
    v14(v7, *(v24 + 48) + v13, v4);
    sub_2697F8C6C(&qword_2803256B8, MEMORY[0x277CB9E20], MEMORY[0x277CB9E30]);
    v15 = sub_269854A54();
    v16 = *(v5 + 8);
    v16(v7, v4);
    if (v15)
    {
      break;
    }

    v9 = v11 + 1;
  }

  v16(v27, v4);
  v14(v22, *(v24 + 48) + v13, v4);
  return v12 == 0;
}

BOOL sub_2697F4EF4(char *a1, char *a2)
{
  v22 = a1;
  v4 = sub_269851A04();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v2;
  v8 = *v2;
  sub_2697F8C6C(&unk_2803263A0, MEMORY[0x277CBA000], MEMORY[0x277CBA008]);
  v27 = a2;
  v9 = sub_269854A24();
  v24 = v8;
  v25 = v8 + 56;
  v10 = ~(-1 << *(v8 + 32));
  v26 = v5 + 16;
  v23 = v5 + 8;
  while (1)
  {
    v11 = v9 & v10;
    v12 = (1 << (v9 & v10)) & *(v25 + (((v9 & v10) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v12)
    {
      v17 = v21;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v19 = v27;
      (*(v5 + 16))(v7, v27, v4);
      v28 = *v17;
      sub_2697F6958(v7, v11, isUniquelyReferenced_nonNull_native);
      *v17 = v28;
      (*(v5 + 32))(v22, v19, v4);
      return v12 == 0;
    }

    v13 = *(v5 + 72) * v11;
    v14 = *(v5 + 16);
    v14(v7, *(v24 + 48) + v13, v4);
    sub_2697F8C6C(&qword_2803256C8, MEMORY[0x277CBA000], MEMORY[0x277CBA010]);
    v15 = sub_269854A54();
    v16 = *(v5 + 8);
    v16(v7, v4);
    if (v15)
    {
      break;
    }

    v9 = v11 + 1;
  }

  v16(v27, v4);
  v14(v22, *(v24 + 48) + v13, v4);
  return v12 == 0;
}

BOOL sub_2697F51BC(unint64_t *a1, unint64_t a2)
{
  v5 = *v2;
  sub_269855674();
  MEMORY[0x26D646580](a2);
  v6 = sub_2698556C4();
  v7 = ~(-1 << *(v5 + 32));
  while (1)
  {
    v8 = v6 & v7;
    v9 = (1 << (v6 & v7)) & *(v5 + 56 + (((v6 & v7) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v9)
    {
      break;
    }

    if (*(*(v5 + 48) + 8 * v8) == a2)
    {
      goto LABEL_6;
    }

    v6 = v8 + 1;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *v2;
  sub_2697F6C08(a2, v8, isUniquelyReferenced_nonNull_native);
  *v2 = v12;
LABEL_6:
  result = v9 == 0;
  *a1 = a2;
  return result;
}

BOOL sub_2697F52AC(_BYTE *a1, unint64_t a2)
{
  v5 = *v2;
  sub_269855674();
  MEMORY[0x26D646580](a2);
  v6 = sub_2698556C4();
  v7 = ~(-1 << *(v5 + 32));
  while (1)
  {
    v8 = v6 & v7;
    v9 = (1 << (v6 & v7)) & *(v5 + 56 + (((v6 & v7) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v9)
    {
      break;
    }

    if (*(*(v5 + 48) + v8) == a2)
    {
      goto LABEL_6;
    }

    v6 = v8 + 1;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *v2;
  sub_2697F6D40(a2, v8, isUniquelyReferenced_nonNull_native);
  *v2 = v12;
LABEL_6:
  result = v9 == 0;
  *a1 = a2;
  return result;
}

uint64_t sub_2697F539C(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_269855674();
  sub_269855694();
  if (a3)
  {
    sub_269854B34();
  }

  v8 = sub_2698556C4();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
  {
LABEL_15:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_2697F6E78(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }

  v11 = ~v9;
  v12 = *(v7 + 48);
  while (1)
  {
    v13 = (v12 + 16 * v10);
    v14 = v13[1];
    if (v14)
    {
      break;
    }

    if (!a3)
    {
      goto LABEL_17;
    }

LABEL_14:
    v10 = (v10 + 1) & v11;
    if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  if (!a3)
  {
    goto LABEL_14;
  }

  v15 = *v13 == a2 && v14 == a3;
  if (!v15 && (sub_269855584() & 1) == 0)
  {
    goto LABEL_14;
  }

LABEL_17:
  *a1 = *(*(v7 + 48) + 16 * v10);

  return 0;
}

uint64_t sub_2697F5524(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322F70, &qword_269858E00);
  result = sub_2698551D4();
  v5 = result;
  if (!*(v3 + 16))
  {
LABEL_27:

    *v2 = v5;
    return result;
  }

  v6 = 0;
  v7 = (v3 + 56);
  v8 = 1 << *(v3 + 32);
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(v3 + 56);
  v11 = (v8 + 63) >> 6;
  v12 = result + 56;
  if (!v10)
  {
LABEL_7:
    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v6 >= v11)
      {
        break;
      }

      v15 = v7[v6];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v10 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      sub_26980F698(0, (v28 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_12:
    v16 = (*(v3 + 48) + 16 * (v13 | (v6 << 6)));
    v17 = *v16;
    v18 = v16[1];
    sub_269855674();
    sub_269854B34();
    result = sub_2698556C4();
    v19 = -1 << *(v5 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      break;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = (*(v5 + 48) + 16 * v22);
    *v27 = v17;
    v27[1] = v18;
    ++*(v5 + 16);
    if (!v10)
    {
      goto LABEL_7;
    }
  }

  v23 = 0;
  v24 = (63 - v19) >> 6;
  while (++v21 != v24 || (v23 & 1) == 0)
  {
    v25 = v21 == v24;
    if (v21 == v24)
    {
      v21 = 0;
    }

    v23 |= v25;
    v26 = *(v12 + 8 * v21);
    if (v26 != -1)
    {
      v22 = __clz(__rbit64(~v26)) + (v21 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_2697F5780(uint64_t a1)
{
  v2 = v1;
  v36 = sub_2698519E4();
  v3 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803256C0, &qword_269866F88);
  result = sub_2698551D4();
  v7 = result;
  if (!*(v5 + 16))
  {
LABEL_27:

    *v2 = v7;
    return result;
  }

  v30 = v1;
  v31 = v5;
  v8 = 0;
  v9 = (v5 + 56);
  v10 = 1 << *(v5 + 32);
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v12 = v11 & *(v5 + 56);
  v13 = (v10 + 63) >> 6;
  v34 = v3 + 32;
  v14 = result + 56;
  if (!v12)
  {
LABEL_7:
    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v8 >= v13)
      {
        break;
      }

      v17 = v9[v8];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v12 = (v17 - 1) & v17;
        goto LABEL_12;
      }
    }

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      sub_26980F698(0, (v28 + 63) >> 6, v9);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v2 = v30;
    *(v5 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_12:
    v18 = *(v5 + 48) + *(v3 + 72) * (v15 | (v8 << 6));
    v19 = *(v3 + 32);
    v32 = *(v3 + 72);
    v33 = v19;
    v19(v35, v18, v36);
    sub_2697F8C6C(&unk_280326380, MEMORY[0x277CB9E20], MEMORY[0x277CB9E28]);
    result = sub_269854A24();
    v20 = -1 << *(v7 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
    {
      break;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v14 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    result = v33(*(v7 + 48) + v23 * v32, v35, v36);
    ++*(v7 + 16);
    v5 = v31;
    if (!v12)
    {
      goto LABEL_7;
    }
  }

  v24 = 0;
  v25 = (63 - v20) >> 6;
  while (++v22 != v25 || (v24 & 1) == 0)
  {
    v26 = v22 == v25;
    if (v22 == v25)
    {
      v22 = 0;
    }

    v24 |= v26;
    v27 = *(v14 + 8 * v22);
    if (v27 != -1)
    {
      v23 = __clz(__rbit64(~v27)) + (v22 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_2697F5AD8(uint64_t a1)
{
  v2 = v1;
  v36 = sub_269851A04();
  v3 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803256D0, &qword_269866F90);
  result = sub_2698551D4();
  v7 = result;
  if (!*(v5 + 16))
  {
LABEL_27:

    *v2 = v7;
    return result;
  }

  v30 = v1;
  v31 = v5;
  v8 = 0;
  v9 = (v5 + 56);
  v10 = 1 << *(v5 + 32);
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v12 = v11 & *(v5 + 56);
  v13 = (v10 + 63) >> 6;
  v34 = v3 + 32;
  v14 = result + 56;
  if (!v12)
  {
LABEL_7:
    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v8 >= v13)
      {
        break;
      }

      v17 = v9[v8];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v12 = (v17 - 1) & v17;
        goto LABEL_12;
      }
    }

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      sub_26980F698(0, (v28 + 63) >> 6, v9);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v2 = v30;
    *(v5 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_12:
    v18 = *(v5 + 48) + *(v3 + 72) * (v15 | (v8 << 6));
    v19 = *(v3 + 32);
    v32 = *(v3 + 72);
    v33 = v19;
    v19(v35, v18, v36);
    sub_2697F8C6C(&unk_2803263A0, MEMORY[0x277CBA000], MEMORY[0x277CBA008]);
    result = sub_269854A24();
    v20 = -1 << *(v7 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
    {
      break;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v14 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    result = v33(*(v7 + 48) + v23 * v32, v35, v36);
    ++*(v7 + 16);
    v5 = v31;
    if (!v12)
    {
      goto LABEL_7;
    }
  }

  v24 = 0;
  v25 = (63 - v20) >> 6;
  while (++v22 != v25 || (v24 & 1) == 0)
  {
    v26 = v22 == v25;
    if (v22 == v25)
    {
      v22 = 0;
    }

    v24 |= v26;
    v27 = *(v14 + 8 * v22);
    if (v27 != -1)
    {
      v23 = __clz(__rbit64(~v27)) + (v22 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_2697F5E30(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803256F0, &qword_269866FA8);
  result = sub_2698551D4();
  v5 = result;
  if (!*(v3 + 16))
  {
LABEL_27:

    *v2 = v5;
    return result;
  }

  v6 = 0;
  v7 = (v3 + 56);
  v8 = 1 << *(v3 + 32);
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(v3 + 56);
  v11 = (v8 + 63) >> 6;
  v12 = result + 56;
  if (!v10)
  {
LABEL_7:
    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v6 >= v11)
      {
        break;
      }

      v15 = v7[v6];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v10 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    v25 = 1 << *(v3 + 32);
    if (v25 >= 64)
    {
      sub_26980F698(0, (v25 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v7 = -1 << v25;
    }

    v2 = v1;
    *(v3 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_12:
    v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
    sub_269855674();
    MEMORY[0x26D646580](v16);
    result = sub_2698556C4();
    v17 = -1 << *(v5 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v12 + 8 * (v18 >> 6))) == 0)
    {
      break;
    }

    v20 = __clz(__rbit64((-1 << v18) & ~*(v12 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v12 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    *(*(v5 + 48) + 8 * v20) = v16;
    ++*(v5 + 16);
    if (!v10)
    {
      goto LABEL_7;
    }
  }

  v21 = 0;
  v22 = (63 - v17) >> 6;
  while (++v19 != v22 || (v21 & 1) == 0)
  {
    v23 = v19 == v22;
    if (v19 == v22)
    {
      v19 = 0;
    }

    v21 |= v23;
    v24 = *(v12 + 8 * v19);
    if (v24 != -1)
    {
      v20 = __clz(__rbit64(~v24)) + (v19 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_2697F607C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803256E0, &qword_269866FA0);
  result = sub_2698551D4();
  v5 = result;
  if (!*(v3 + 16))
  {
LABEL_27:

    *v2 = v5;
    return result;
  }

  v6 = 0;
  v7 = (v3 + 56);
  v8 = 1 << *(v3 + 32);
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(v3 + 56);
  v11 = (v8 + 63) >> 6;
  v12 = result + 56;
  if (!v10)
  {
LABEL_7:
    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v6 >= v11)
      {
        break;
      }

      v15 = v7[v6];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v10 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    v25 = 1 << *(v3 + 32);
    if (v25 >= 64)
    {
      sub_26980F698(0, (v25 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v7 = -1 << v25;
    }

    v2 = v1;
    *(v3 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_12:
    v16 = *(*(v3 + 48) + (v13 | (v6 << 6)));
    sub_269855674();
    MEMORY[0x26D646580](v16);
    result = sub_2698556C4();
    v17 = -1 << *(v5 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v12 + 8 * (v18 >> 6))) == 0)
    {
      break;
    }

    v20 = __clz(__rbit64((-1 << v18) & ~*(v12 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v12 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    *(*(v5 + 48) + v20) = v16;
    ++*(v5 + 16);
    if (!v10)
    {
      goto LABEL_7;
    }
  }

  v21 = 0;
  v22 = (63 - v17) >> 6;
  while (++v19 != v22 || (v21 & 1) == 0)
  {
    v23 = v19 == v22;
    if (v19 == v22)
    {
      v19 = 0;
    }

    v21 |= v23;
    v24 = *(v12 + 8 * v19);
    if (v24 != -1)
    {
      v20 = __clz(__rbit64(~v24)) + (v19 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_2697F62C8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803256D8, &qword_269866F98);
  result = sub_2698551D4();
  v5 = result;
  if (!*(v3 + 16))
  {
LABEL_29:

    *v2 = v5;
    return result;
  }

  v6 = 0;
  v7 = (v3 + 56);
  v8 = 1 << *(v3 + 32);
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(v3 + 56);
  v11 = (v8 + 63) >> 6;
  v12 = result + 56;
  if (!v10)
  {
LABEL_7:
    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v6 >= v11)
      {
        break;
      }

      v15 = v7[v6];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v10 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      sub_26980F698(0, (v28 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_12:
    v16 = (*(v3 + 48) + 16 * (v13 | (v6 << 6)));
    v18 = *v16;
    v17 = v16[1];
    sub_269855674();
    sub_269855694();
    if (v17)
    {
      sub_269854B34();
    }

    result = sub_2698556C4();
    v19 = -1 << *(v5 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      break;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = (*(v5 + 48) + 16 * v22);
    *v27 = v18;
    v27[1] = v17;
    ++*(v5 + 16);
    if (!v10)
    {
      goto LABEL_7;
    }
  }

  v23 = 0;
  v24 = (63 - v19) >> 6;
  while (++v21 != v24 || (v23 & 1) == 0)
  {
    v25 = v21 == v24;
    if (v21 == v24)
    {
      v21 = 0;
    }

    v23 |= v25;
    v26 = *(v12 + 8 * v21);
    if (v26 != -1)
    {
      v22 = __clz(__rbit64(~v26)) + (v21 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

unint64_t sub_2697F6540(unint64_t result, unint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_2697F5524(v8 + 1);
      goto LABEL_10;
    }

    if (v9 <= v8)
    {
      sub_2697F7778(v8 + 1);
LABEL_10:
      v15 = *v4;
      sub_269855674();
      sub_269854B34();
      result = sub_2698556C4();
      v16 = ~(-1 << *(v15 + 32));
      while (1)
      {
        a3 = result & v16;
        if (((*(v15 + 56 + (((result & v16) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v16)) & 1) == 0)
        {
          goto LABEL_7;
        }

        v17 = (*(v15 + 48) + 16 * a3);
        v18 = *v17 == v7 && v17[1] == a2;
        if (v18 || (sub_269855584() & 1) != 0)
        {
          goto LABEL_19;
        }

        result = a3 + 1;
      }
    }

    result = sub_2697F7034();
  }

LABEL_7:
  v10 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v11 = (*(v10 + 48) + 16 * a3);
  *v11 = v7;
  v11[1] = a2;
  v12 = *(v10 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
LABEL_19:
    result = sub_2698555E4();
    __break(1u);
  }

  else
  {
    *(v10 + 16) = v14;
  }

  return result;
}

uint64_t sub_2697F66A8(uint64_t a1, unint64_t a2, char a3)
{
  v22 = a1;
  v6 = sub_2698519E4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  if (v11 <= v10 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_2697F5780(v10 + 1);
      goto LABEL_8;
    }

    if (v11 <= v10)
    {
      sub_2697F79AC(v10 + 1);
LABEL_8:
      v21 = v3;
      v12 = *v3;
      sub_2697F8C6C(&unk_280326380, MEMORY[0x277CB9E20], MEMORY[0x277CB9E28]);
      v13 = sub_269854A24();
      v14 = ~(-1 << *(v12 + 32));
      while (1)
      {
        a2 = v13 & v14;
        if (((*(v12 + 56 + (((v13 & v14) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v13 & v14)) & 1) == 0)
        {
          break;
        }

        (*(v7 + 16))(v9, *(v12 + 48) + *(v7 + 72) * a2, v6);
        sub_2697F8C6C(&qword_2803256B8, MEMORY[0x277CB9E20], MEMORY[0x277CB9E30]);
        v15 = sub_269854A54();
        (*(v7 + 8))(v9, v6);
        if (v15)
        {
          goto LABEL_16;
        }

        v13 = a2 + 1;
      }

      v3 = v21;
      goto LABEL_13;
    }

    sub_2697F718C();
  }

LABEL_13:
  v16 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v7 + 32))(*(v16 + 48) + *(v7 + 72) * a2, v22, v6);
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (v19)
  {
    __break(1u);
LABEL_16:
    result = sub_2698555E4();
    __break(1u);
  }

  else
  {
    *(v16 + 16) = v20;
  }

  return result;
}

uint64_t sub_2697F6958(uint64_t a1, unint64_t a2, char a3)
{
  v22 = a1;
  v6 = sub_269851A04();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  if (v11 <= v10 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_2697F5AD8(v10 + 1);
      goto LABEL_8;
    }

    if (v11 <= v10)
    {
      sub_2697F7CC4(v10 + 1);
LABEL_8:
      v21 = v3;
      v12 = *v3;
      sub_2697F8C6C(&unk_2803263A0, MEMORY[0x277CBA000], MEMORY[0x277CBA008]);
      v13 = sub_269854A24();
      v14 = ~(-1 << *(v12 + 32));
      while (1)
      {
        a2 = v13 & v14;
        if (((*(v12 + 56 + (((v13 & v14) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v13 & v14)) & 1) == 0)
        {
          break;
        }

        (*(v7 + 16))(v9, *(v12 + 48) + *(v7 + 72) * a2, v6);
        sub_2697F8C6C(&qword_2803256C8, MEMORY[0x277CBA000], MEMORY[0x277CBA010]);
        v15 = sub_269854A54();
        (*(v7 + 8))(v9, v6);
        if (v15)
        {
          goto LABEL_16;
        }

        v13 = a2 + 1;
      }

      v3 = v21;
      goto LABEL_13;
    }

    sub_2697F718C();
  }

LABEL_13:
  v16 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v7 + 32))(*(v16 + 48) + *(v7 + 72) * a2, v22, v6);
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (v19)
  {
    __break(1u);
LABEL_16:
    result = sub_2698555E4();
    __break(1u);
  }

  else
  {
    *(v16 + 16) = v20;
  }

  return result;
}

unint64_t sub_2697F6C08(unint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_2697F5E30(v6 + 1);
      goto LABEL_10;
    }

    if (v7 <= v6)
    {
      sub_2697F7FDC(v6 + 1);
LABEL_10:
      v12 = *v3;
      sub_269855674();
      MEMORY[0x26D646580](v5);
      result = sub_2698556C4();
      v13 = ~(-1 << *(v12 + 32));
      while (1)
      {
        a2 = result & v13;
        if (((*(v12 + 56 + (((result & v13) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v13)) & 1) == 0)
        {
          goto LABEL_7;
        }

        type metadata accessor for INMediaItemType(0);
        if (*(*(v12 + 48) + 8 * a2) == v5)
        {
          goto LABEL_15;
        }

        result = a2 + 1;
      }
    }

    result = sub_2697F73A4();
  }

LABEL_7:
  v8 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v8 + 48) + 8 * a2) = v5;
  v9 = *(v8 + 16);
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
LABEL_15:
    result = sub_2698555E4();
    __break(1u);
  }

  else
  {
    *(v8 + 16) = v11;
  }

  return result;
}

unint64_t sub_2697F6D40(unint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_2697F607C(v6 + 1);
      goto LABEL_10;
    }

    if (v7 <= v6)
    {
      sub_2697F81F8(v6 + 1);
LABEL_10:
      v12 = *v3;
      sub_269855674();
      MEMORY[0x26D646580](v5);
      result = sub_2698556C4();
      v13 = ~(-1 << *(v12 + 32));
      while (1)
      {
        a2 = result & v13;
        if (((*(v12 + 56 + (((result & v13) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v13)) & 1) == 0)
        {
          goto LABEL_7;
        }

        if (*(*(v12 + 48) + a2) == v5)
        {
          goto LABEL_15;
        }

        result = a2 + 1;
      }
    }

    result = sub_2697F74E4();
  }

LABEL_7:
  v8 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v8 + 48) + a2) = v5;
  v9 = *(v8 + 16);
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
LABEL_15:
    result = sub_2698555E4();
    __break(1u);
  }

  else
  {
    *(v8 + 16) = v11;
  }

  return result;
}