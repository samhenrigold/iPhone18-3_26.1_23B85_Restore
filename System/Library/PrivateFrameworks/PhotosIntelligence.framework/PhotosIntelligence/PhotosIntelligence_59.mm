unint64_t sub_1C73C669C()
{
  result = qword_1EC21B398;
  if (!qword_1EC21B398)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PetSummary, &type metadata for PetSummary, v0, v1);
    atomic_store(result, &qword_1EC21B398);
  }

  return result;
}

unint64_t sub_1C73C66F0()
{
  result = qword_1EDD0C0A8;
  if (!qword_1EDD0C0A8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PersonSummary, &type metadata for PersonSummary, v0, v1);
    atomic_store(result, &qword_1EDD0C0A8);
  }

  return result;
}

uint64_t objectdestroyTm_3(uint64_t a1)
{

  return MEMORY[0x1EEE6BDD0](v1, a1, 7);
}

uint64_t sub_1C73C6790(void *a1)
{
  v1 = [a1 contactMatchingDictionary];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1C75504AC();

  return v3;
}

unint64_t sub_1C73C67FC()
{
  result = qword_1EC21B3B0;
  if (!qword_1EC21B3B0)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC21B3A8, &qword_1C7587778);
    result = swift_getWitnessTable(MEMORY[0x1E6969E28], v3, v0, v1);
    atomic_store(result, &qword_1EC21B3B0);
  }

  return result;
}

void sub_1C73C6860(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v37 = a2;
  v39 = a1;
  v42 = a3;
  v4 = sub_1C754DC1C();
  OUTLINED_FUNCTION_3_0();
  v38 = v5;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215BD8, &unk_1C7564890);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v32 - v10;
  v12 = sub_1C754DD2C();
  OUTLINED_FUNCTION_3_0();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v32 - v19;
  type metadata accessor for FreeformStoryDiagnosticsUtils();
  sub_1C734B404();
  if (!v3)
  {
    v36 = v4;
    v22 = v38;
    v21 = v39;
    if (__swift_getEnumTagSinglePayload(v11, 1, v12) == 1)
    {
      sub_1C7044B24(v11);
    }

    else
    {
      v33 = *(v14 + 32);
      v34 = v14 + 32;
      v33(v20, v11, v12);
      v35 = [objc_allocWithZone(MEMORY[0x1E696AC08]) init];
      v40 = v21;
      v41 = v37;
      v23 = v22;
      v24 = *(v22 + 104);
      v25 = v36;
      v24(v8, *MEMORY[0x1E6968F70], v36);
      sub_1C6FB5E8C();
      sub_1C754DD1C();
      (*(v23 + 8))(v8, v25);
      sub_1C754DCDC();
      v26 = sub_1C755065C();

      v27 = v35;
      v28 = [v35 fileExistsAtPath_];

      v29 = *(v14 + 8);
      v29(v20, v12);
      if (v28)
      {
        v30 = v42;
        v33(v42, v17, v12);
        v31 = 0;
LABEL_8:
        __swift_storeEnumTagSinglePayload(v30, v31, 1, v12);
        return;
      }

      v29(v17, v12);
    }

    v31 = 1;
    v30 = v42;
    goto LABEL_8;
  }
}

void sub_1C73C6BB8()
{
  v1 = [v0 sceneprintProperties];
  if (v1)
  {
    v2 = sub_1C73C6F38(v1, &selRef_sceneprint);
    if (v3 >> 60 != 15)
    {
      v4 = v2;
      v5 = v3;
      sub_1C6F65BE8(0, &qword_1EDD0CE48, 0x1E696ACD0);
      sub_1C6F65BE8(0, &qword_1EDD069C8, 0x1E6984678);
      v6 = sub_1C75511FC();
      if (!v6)
      {
        goto LABEL_4;
      }

      v7 = v6;
      v8 = sub_1C73C6F38(v7, &selRef_descriptorData);
      if (v9 >> 60 == 15)
      {

LABEL_4:
        sub_1C70B5C10(v4, v5);
        return;
      }

      v10 = v8;
      v11 = v9;
      v12 = MEMORY[0x1CCA5A320]();
      sub_1C725CE9C(v12 / 4, 0.0);
      v14 = v13;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C70E3D94();
        v14 = v15;
      }

      if (*(v14 + 16) >> 61)
      {
        __break(1u);
      }

      else
      {
        sub_1C73C6FA4();
        sub_1C754D85C();
        sub_1C70B5C10(v4, v5);

        sub_1C70B5C10(v10, v11);
      }
    }
  }
}

void sub_1C73C6D60(uint64_t a1, uint64_t a2)
{
  sub_1C73C6EBC(a1, a2);
  sub_1C73C6E9C(a1);
  sub_1C73C6E9C(a2);
}

uint64_t sub_1C73C6DDC(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 16);
  v7 = 1065353216;
  __Mean = 0.0;
  sub_1C725CE9C(v2, 0.0);
  v4 = v3;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1C6FB1B5C();
    v4 = v5;
  }

  vDSP_normalize((a1 + 32), 1, (v4 + 32), 1, &__Mean, &v7, v2);
  return v4;
}

void sub_1C73C6E9C(uint64_t a1)
{
  if (*(a1 + 16) >> 31)
  {
    __break(1u);
  }

  else
  {
    cblas_snrm2_NEWLAPACK();
  }
}

float sub_1C73C6EBC(uint64_t a1, uint64_t a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    __break(1u);
  }

  __C = 0.0;
  vDSP_dotpr((a1 + 32), 1, (a2 + 32), 1, &__C, v2);
  return __C;
}

uint64_t sub_1C73C6F38(void *a1, SEL *a2)
{
  v3 = [a1 *a2];

  if (!v3)
  {
    return 0;
  }

  v4 = sub_1C754DDEC();

  return v4;
}

unint64_t sub_1C73C6FA4()
{
  result = qword_1EDD0CBC8;
  if (!qword_1EDD0CBC8)
  {
    result = swift_getWitnessTable(MEMORY[0x1E6969068], MEMORY[0x1E6969080], v0, v1);
    atomic_store(result, &qword_1EDD0CBC8);
  }

  return result;
}

uint64_t static MomentsPromptDatabaseLoader.MomentsPromptTemplate.== infix(_:_:)(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1C7551DBC();
  }
}

uint64_t sub_1C73C7160(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6574616C706D6574 && a2 == 0xEE00676E69727453;
  if (v4 || (sub_1C7551DBC() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6E4974706D6F7270 && a2 == 0xEB00000000786564;
    if (v6 || (sub_1C7551DBC() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x7974697669746361 && a2 == 0xEC00000065707954;
      if (v7 || (sub_1C7551DBC() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x7954656C646E7562 && a2 == 0xEA00000000006570;
        if (v8 || (sub_1C7551DBC() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x7079546563616C70 && a2 == 0xE900000000000065;
          if (v9 || (sub_1C7551DBC() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD000000000000014 && 0x80000001C75AE4D0 == a2;
            if (v10 || (sub_1C7551DBC() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x6C616E6F73726570 && a2 == 0xEE00737469617254;
              if (v11 || (sub_1C7551DBC() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x614E6E6F73726570 && a2 == 0xEA0000000000656DLL;
                if (v12 || (sub_1C7551DBC() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x6D614E6563616C70 && a2 == 0xE900000000000065;
                  if (v13 || (sub_1C7551DBC() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0x656D614E79746963 && a2 == 0xE800000000000000;
                    if (v14 || (sub_1C7551DBC() & 1) != 0)
                    {

                      return 9;
                    }

                    else if (a1 == 0x65666552656D6974 && a2 == 0xED000065636E6572)
                    {

                      return 10;
                    }

                    else
                    {
                      v16 = sub_1C7551DBC();

                      if (v16)
                      {
                        return 10;
                      }

                      else
                      {
                        return 11;
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_1C73C74EC(char a1)
{
  result = 0x6574616C706D6574;
  switch(a1)
  {
    case 1:
      result = 0x6E4974706D6F7270;
      break;
    case 2:
      result = 0x7974697669746361;
      break;
    case 3:
      result = 0x7954656C646E7562;
      break;
    case 4:
      result = 0x7079546563616C70;
      break;
    case 5:
      result = 0xD000000000000014;
      break;
    case 6:
      result = 0x6C616E6F73726570;
      break;
    case 7:
      result = 0x614E6E6F73726570;
      break;
    case 8:
      result = 0x6D614E6563616C70;
      break;
    case 9:
      result = 0x656D614E79746963;
      break;
    case 10:
      result = 0x65666552656D6974;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C73C7664@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C73C7160(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C73C768C(uint64_t a1)
{
  v2 = sub_1C73C7D4C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C73C76C8(uint64_t a1)
{
  v2 = sub_1C73C7D4C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t MomentsPromptDatabaseLoader.MomentsPromptTemplate.hashValue.getter()
{
  sub_1C7551F3C();
  sub_1C75505AC();
  return sub_1C7551FAC();
}

uint64_t MomentsPromptDatabaseLoader.MomentsPromptTemplate.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21B3B8, &unk_1C7587780);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v26 - v7;
  v9 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C73C7D4C();
  sub_1C7551FFC();
  if (!v2)
  {
    LOBYTE(v41[0]) = 0;
    v10 = sub_1C7551BBC();
    v12 = v11;
    OUTLINED_FUNCTION_0_168(1);
    v34 = sub_1C7551BFC();
    OUTLINED_FUNCTION_0_168(2);
    v33 = sub_1C7551BBC();
    v39 = v13;
    OUTLINED_FUNCTION_0_168(3);
    v32 = sub_1C7551BBC();
    v38 = v14;
    OUTLINED_FUNCTION_0_168(4);
    v31 = sub_1C7551BBC();
    v37 = v15;
    OUTLINED_FUNCTION_0_168(5);
    v30 = sub_1C7551BBC();
    v36 = v16;
    OUTLINED_FUNCTION_0_168(6);
    v29 = sub_1C7551BBC();
    v35 = v17;
    OUTLINED_FUNCTION_0_168(7);
    v46 = sub_1C7551BCC();
    OUTLINED_FUNCTION_0_168(8);
    v28 = sub_1C7551BCC();
    OUTLINED_FUNCTION_0_168(9);
    v27 = sub_1C7551BCC();
    v47 = 10;
    v18 = sub_1C7551BCC();
    v46 &= 1u;
    v28 &= 1u;
    v27 &= 1u;
    v19 = OUTLINED_FUNCTION_2_116();
    v20(v19);
    HIDWORD(v26) = v18 & 1;
    __src[0] = v10;
    __src[1] = v12;
    __src[2] = v34;
    __src[3] = v33;
    v21 = v39;
    __src[4] = v39;
    __src[5] = v32;
    v22 = v38;
    __src[6] = v38;
    v23 = v37;
    __src[7] = v31;
    __src[8] = v37;
    v24 = v36;
    __src[9] = v30;
    __src[10] = v36;
    __src[11] = v29;
    __src[12] = v35;
    LOBYTE(__src[13]) = v46;
    BYTE1(__src[13]) = v28;
    BYTE2(__src[13]) = v27;
    BYTE3(__src[13]) = BYTE4(v26);
    memcpy(a2, __src, 0x6CuLL);
    sub_1C7262AA8(__src, v41);
    __swift_destroy_boxed_opaque_existential_1(a1);
    v41[0] = v10;
    v41[1] = v12;
    v41[2] = v34;
    v41[3] = v33;
    v41[4] = v21;
    v41[5] = v32;
    v41[6] = v22;
    v41[7] = v31;
    v41[8] = v23;
    v41[9] = v30;
    v41[10] = v24;
    v41[11] = v29;
    v41[12] = v35;
    v42 = v46;
    v43 = v28;
    v44 = v27;
    v45 = BYTE4(v26);
    return sub_1C7262B04(v41);
  }

  OUTLINED_FUNCTION_4_95();
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  if (v5)
  {

    if ((v8 & 1) == 0)
    {
LABEL_9:
      if (v9)
      {
      }

      return result;
    }
  }

  else if (!v8)
  {
    goto LABEL_9;
  }

  if (v9)
  {
  }

  return result;
}

uint64_t sub_1C73C7D04(uint64_t a1)
{
  sub_1C7551F3C();
  sub_1C75505AC();
  return sub_1C7551FAC();
}

unint64_t sub_1C73C7D4C()
{
  result = qword_1EC21B3C0;
  if (!qword_1EC21B3C0)
  {
    result = swift_getWitnessTable(byte_1C75879C8, &type metadata for MomentsPromptDatabaseLoader.MomentsPromptTemplate.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EC21B3C0);
  }

  return result;
}

id static MomentsPromptDatabaseLoader.readTemplates(from:)(uint64_t a1, uint64_t a2)
{
  v18[4] = *MEMORY[0x1E69E9840];
  v2 = sub_1C75506DC();
  OUTLINED_FUNCTION_3_0();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v18[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C75506CC();
  v8 = sub_1C755069C();
  v10 = v9;
  (*(v4 + 8))(v7, v2);
  if (v10 >> 60 != 15)
  {
    v12 = objc_opt_self();
    v13 = sub_1C754DDCC();
    v18[0] = 0;
    v2 = [v12 JSONObjectWithData:v13 options:0 error:v18];

    if (v2)
    {
      v14 = v18[0];
      sub_1C75515CC();
      swift_unknownObjectRelease();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC21ACD0, &unk_1C756DB10);
      if (swift_dynamicCast())
      {
        v2 = sub_1C725EAB0(v17);
        sub_1C70B5C10(v8, v10);

        return v2;
      }

      sub_1C726152C();
      swift_allocError();
      *v15 = 0;
      v15[1] = 0;
    }

    else
    {
      v2 = v18[0];
      sub_1C754DBEC();
    }

    swift_willThrow();
    sub_1C70B5C10(v8, v10);
    return v2;
  }

  sub_1C726152C();
  swift_allocError();
  *v11 = 0;
  v11[1] = 0;
  swift_willThrow();
  return v2;
}

uint64_t sub_1C73C8044@<X0>(uint64_t a1@<X8>)
{
  v2 = 0xEE00676E69727453;
  v3 = 0x6574616C706D6574;
  v4 = OUTLINED_FUNCTION_9_84();
  if (!v130)
  {
    sub_1C6FE32F4(v129);
    goto LABEL_7;
  }

  if ((OUTLINED_FUNCTION_1_124(v4, v5, v6, MEMORY[0x1E69E6158], v7, v8, v9, v10, v93, v98, v103, v108, v113, v118) & 1) == 0)
  {
LABEL_7:
    sub_1C726152C();
    swift_allocError();
    *v26 = v3;
    v26[1] = v2;
    return swift_willThrow();
  }

  v2 = 0xEB00000000786564;
  v3 = 0x6E4974706D6F7270;
  v11 = OUTLINED_FUNCTION_9_84();
  if ((OUTLINED_FUNCTION_1_124(v11, v12, v13, MEMORY[0x1E69E6530], v14, v15, v16, v17, v94, v99, v104, v109, v114, v119) & 1) == 0)
  {

    goto LABEL_7;
  }

  v131 = v127;
  v18 = sub_1C6FE3750();
  if (OUTLINED_FUNCTION_1_124(v18, v19, v20, MEMORY[0x1E69E6158], v21, v22, v23, v24, v95, v100, v105, v110, v115, v120))
  {
    v25 = v128;
    v126 = v127;
  }

  else
  {
    v126 = 0;
    v25 = 0xE000000000000000;
  }

  v125 = v25;
  v28 = sub_1C6FE3750();
  if (v130)
  {
    if (OUTLINED_FUNCTION_1_124(v28, v29, v30, MEMORY[0x1E69E6158], v31, v32, v33, v34, v96, v101, v106, v111, v116, v121))
    {
      v35 = v128;
      v124 = v127;
      goto LABEL_15;
    }
  }

  else
  {
    sub_1C6FE32F4(v129);
  }

  v124 = 0;
  v35 = 0xE000000000000000;
LABEL_15:
  v123 = v35;
  v36 = OUTLINED_FUNCTION_8_78(0x7079546563616C70);
  if (v130)
  {
    if (OUTLINED_FUNCTION_1_124(v36, v37, v38, MEMORY[0x1E69E6158], v39, v40, v41, v42, v96, v101, v106, v111, v116, v121))
    {
      v43 = v128;
      v122 = v127;
      goto LABEL_20;
    }
  }

  else
  {
    sub_1C6FE32F4(v129);
  }

  v122 = 0;
  v43 = 0xE000000000000000;
LABEL_20:
  v117 = v43;
  v44 = sub_1C6FE3750();
  if (v130)
  {
    if (OUTLINED_FUNCTION_1_124(v44, v45, v46, MEMORY[0x1E69E6158], v47, v48, v49, v50, v96, v101, v106, v111, v117, v122))
    {
      v51 = v128;
      v112 = v127;
      goto LABEL_25;
    }
  }

  else
  {
    sub_1C6FE32F4(v129);
  }

  v112 = 0;
  v51 = 0xE000000000000000;
LABEL_25:
  v107 = v51;
  v52 = sub_1C6FE3750();
  if (v130)
  {
    if (OUTLINED_FUNCTION_1_124(v52, v53, v54, MEMORY[0x1E69E6158], v55, v56, v57, v58, v96, v101, v107, v112, v117, v122))
    {
      v59 = v128;
      v102 = v127;
      goto LABEL_30;
    }
  }

  else
  {
    sub_1C6FE32F4(v129);
  }

  v102 = 0;
  v59 = 0xE000000000000000;
LABEL_30:
  v97 = v59;
  v60 = sub_1C6FE3750();
  if (v130)
  {
    if (OUTLINED_FUNCTION_1_124(v60, v61, v62, MEMORY[0x1E69E6370], v63, v64, v65, v66, v97, v102, v107, v112, v117, v122))
    {
      v67 = v127;
      goto LABEL_35;
    }
  }

  else
  {
    sub_1C6FE32F4(v129);
  }

  v67 = 0;
LABEL_35:
  v68 = OUTLINED_FUNCTION_8_78(0x6D614E6563616C70);
  if (v130)
  {
    v75 = v127;
    if (OUTLINED_FUNCTION_1_124(v68, v69, v70, MEMORY[0x1E69E6370], v71, v72, v73, v74, v97, v102, v107, v112, v117, v122))
    {
      v76 = v127;
      goto LABEL_40;
    }
  }

  else
  {
    v75 = v127;
    sub_1C6FE32F4(v129);
  }

  v76 = 0;
LABEL_40:
  v77 = sub_1C6FE3750();
  if (v130)
  {
    if (OUTLINED_FUNCTION_1_124(v77, v78, v79, MEMORY[0x1E69E6370], v80, v81, v82, v83, v97, v102, v107, v112, v117, v122))
    {
      v84 = v127;
      goto LABEL_45;
    }
  }

  else
  {
    sub_1C6FE32F4(v129);
  }

  v84 = 0;
LABEL_45:
  v85 = sub_1C6FE3750();
  if (!v130)
  {
    result = sub_1C6FE32F4(v129);
    goto LABEL_49;
  }

  result = OUTLINED_FUNCTION_1_124(v85, v86, v87, MEMORY[0x1E69E6370], v88, v89, v90, v91, v97, v102, v107, v112, v117, v122);
  if (!result)
  {
LABEL_49:
    v92 = 0;
    goto LABEL_50;
  }

  v92 = v127;
LABEL_50:
  *a1 = v75;
  *(a1 + 8) = v128;
  *(a1 + 16) = v131;
  *(a1 + 24) = v126;
  *(a1 + 32) = v125;
  *(a1 + 40) = v124;
  *(a1 + 48) = v123;
  *(a1 + 56) = v122;
  *(a1 + 64) = v117;
  *(a1 + 72) = v112;
  *(a1 + 80) = v107;
  *(a1 + 88) = v102;
  *(a1 + 96) = v97;
  *(a1 + 104) = v67;
  *(a1 + 105) = v76;
  *(a1 + 106) = v84;
  *(a1 + 107) = v92;
  return result;
}

unint64_t sub_1C73C84BC()
{
  result = qword_1EC21B3C8;
  if (!qword_1EC21B3C8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for MomentsPromptDatabaseLoader.MomentsPromptTemplate, &type metadata for MomentsPromptDatabaseLoader.MomentsPromptTemplate, v0, v1);
    atomic_store(result, &qword_1EC21B3C8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for MomentsPromptDatabaseLoader(_BYTE *result, int a2, int a3)
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

uint64_t sub_1C73C85C0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 108))
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

uint64_t sub_1C73C8600(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 104) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 108) = 1;
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

    *(result + 108) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for MomentsPromptDatabaseLoader.MomentsPromptTemplate.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xF6)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF5)
  {
    v6 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
          *result = a2 + 10;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C73C8754()
{
  result = qword_1EC21B3D0;
  if (!qword_1EC21B3D0)
  {
    result = swift_getWitnessTable(byte_1C75879A0, &type metadata for MomentsPromptDatabaseLoader.MomentsPromptTemplate.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EC21B3D0);
  }

  return result;
}

unint64_t sub_1C73C87AC()
{
  result = qword_1EC21B3D8;
  if (!qword_1EC21B3D8)
  {
    result = swift_getWitnessTable(byte_1C7587910, &type metadata for MomentsPromptDatabaseLoader.MomentsPromptTemplate.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EC21B3D8);
  }

  return result;
}

unint64_t sub_1C73C8804()
{
  result = qword_1EC21B3E0;
  if (!qword_1EC21B3E0)
  {
    result = swift_getWitnessTable(byte_1C7587938, &type metadata for MomentsPromptDatabaseLoader.MomentsPromptTemplate.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EC21B3E0);
  }

  return result;
}

uint64_t dispatch thunk of static PhotosFeedbackGenerativeStoryFactoryProtocol.createDonation(memory:prompt:statistics:generationTime:photoLibrary:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v20 = (*(a10 + 8) + **(a10 + 8));
  v18 = swift_task_alloc();
  *(v10 + 16) = v18;
  *v18 = v10;
  v18[1] = sub_1C72CCAE8;

  return v20(a1, a2, a3, a4, a5, a6, a7 & 1, a8, a9, a10);
}

uint64_t sub_1C73C89C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v23 = a4;
  v24 = a3;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2168B0, &qword_1C75656C0);
  MEMORY[0x1EEE9AC00](v22);
  v8 = &v21 - v7;
  v25 = a1;
  v9 = 1 << *(a2 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(a2 + 64);
  v12 = (v9 + 63) >> 6;
  result = sub_1C75504FC();
  v14 = 0;
  while (v11)
  {
    v15 = v14;
LABEL_10:
    v16 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v17 = v16 | (v15 << 6);
    v18 = *(a2 + 48);
    v19 = type metadata accessor for Hastings.Feature(0);
    sub_1C73CAAA0(v18 + *(*(v19 - 8) + 72) * v17, v8, type metadata accessor for Hastings.Feature);
    *&v8[*(v22 + 48)] = *(*(a2 + 56) + 8 * v17);
    sub_1C75504FC();
    sub_1C73CA310(&v25, v8, v24, v23, v20);
    result = sub_1C73CAD08(v8);
    if (v4)
    {
    }
  }

  while (1)
  {
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v15 >= v12)
    {

      return v25;
    }

    v11 = *(a2 + 64 + 8 * v15);
    ++v14;
    if (v11)
    {
      v14 = v15;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

void Hastings.FeatureSelector.selectSignificantFeatures(for:scopingAssetUUIDs:progressReporter:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v178 = a1;
  v8 = type metadata accessor for Hastings.Feature(0);
  OUTLINED_FUNCTION_3_0();
  v161 = v9;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_78();
  v13 = v11 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = v148 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v171 = (v148 - v18);
  v177 = _s15FeatureSelectorV11FeatureInfoVMa(0);
  OUTLINED_FUNCTION_3_0();
  v150 = v19;
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_78();
  v23 = v21 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v26 = v148 - v25;
  sub_1C754F2CC();
  v160 = v4;
  if (v4)
  {
    sub_1C754F2FC();
    OUTLINED_FUNCTION_12();
    (*(v28 + 8))(a3);
  }

  else
  {
    v165 = v26;
    v163 = v16;
    v179 = v13;
    v29 = 0;
    v154 = *(v178 + 16);
    v153 = v178 + 32;
    v175 = "Hastings.curatedAssets";
    *&v27 = 136315650;
    v151 = v27;
    *&v27 = 136315394;
    v159 = v27;
    v158 = MEMORY[0x1E69E7CC8];
    v148[0] = a3;
    v30 = v177;
    v164 = v23;
    v167 = v5;
    v152 = a2;
    v176 = v8;
    while (v29 != v154)
    {
      v31 = (v153 + 32 * v29);
      v32 = v31[1];
      v166 = *v31;
      v33 = v31[2];
      v34 = v31[3];
      v157 = v29 + 1;
      v35 = MEMORY[0x1E69E7CC0];
      v186 = MEMORY[0x1E69E7CC0];
      sub_1C75504FC();
      swift_bridgeObjectRetain_n();
      v156 = v33;
      sub_1C75504FC();
      swift_bridgeObjectRetain_n();
      v36 = v160;
      v37 = sub_1C73C89C4(MEMORY[0x1E69E7CC8], v34, a2, &v186);
      v160 = v36;
      v155 = v34;

      v38 = 0;
      v185 = v35;
      v39 = v37 + 64;
      v40 = 1 << *(v37 + 32);
      if (v40 < 64)
      {
        v41 = ~(-1 << v40);
      }

      else
      {
        v41 = -1;
      }

      v42 = v41 & *(v37 + 64);
      v43 = (v40 + 63) >> 6;
      v178 = v35;
      v162 = v32;
      v169 = v37 + 64;
      v168 = v43;
      if (v42)
      {
        while (1)
        {
LABEL_13:
          v45 = __clz(__rbit64(v42));
          v42 &= v42 - 1;
          v46 = v45 | (v38 << 6);
          v47 = *(*(v37 + 56) + 8 * v46);
          v48 = *(v47 + 16);
          if (v48)
          {
            v149 = v37;
            v183 = MEMORY[0x1E69E7CC0];
            sub_1C75504FC();
            sub_1C716D854();
            v57 = v183;
            OUTLINED_FUNCTION_15_4();
            v148[1] = v47;
            v59 = v47 + v58;
            v173 = *(v60 + 72);
            v174 = v59;
            v61 = v48;
            v62 = v165;
            do
            {
              v63 = v62;
              sub_1C73CAAA0(v59, v62, _s15FeatureSelectorV11FeatureInfoVMa);
              v64 = *(v63 + *(v30 + 24));
              sub_1C73CAB00(v63, _s15FeatureSelectorV11FeatureInfoVMa);
              v183 = v57;
              v66 = *(v57 + 16);
              v65 = *(v57 + 24);
              v67 = v66 + 1;
              if (v66 >= v65 >> 1)
              {
                OUTLINED_FUNCTION_15(v65);
                sub_1C716D854();
                v57 = v183;
              }

              *(v57 + 16) = v67;
              *(v57 + 8 * v66 + 32) = v64;
              v59 += v173;
              --v61;
              v30 = v177;
              v62 = v165;
            }

            while (v61);
            v68 = 0;
            v69 = 0;
            v70 = v66 + 1;
            v71 = v164;
            v72 = v178;
            do
            {
              v73 = *(v57 + 8 * v68 + 32);
              v74 = __OFADD__(v69, v73);
              v69 += v73;
              if (v74)
              {
                __break(1u);
                goto LABEL_71;
              }

              ++v68;
            }

            while (v70 != v68);
            v75 = v69 / v67;
            v76 = 0.0;
            v77 = 32;
            do
            {
              v76 = v76 + (*(v57 + v77) - v75) * (*(v57 + v77) - v75);
              v77 += 8;
              --v70;
            }

            while (v70);

            v78 = sqrt(v76 / v67) * 0.5;
            if (v78 <= v75 * 0.6)
            {
              v78 = v75 * 0.6;
            }

            v79 = OUTLINED_FUNCTION_10_73(v75 - v78);
            if (!(v81 ^ v74 | v80))
            {
LABEL_71:
              __break(1u);
LABEL_72:
              __break(1u);
LABEL_73:
              __break(1u);
              return;
            }

            if (v79 <= -9.22337204e18)
            {
              goto LABEL_72;
            }

            if (v79 >= 9.22337204e18)
            {
              goto LABEL_73;
            }

            v170 = v79;
            v82 = v174;
            v83 = v171;
            do
            {
              v172 = v48;
              sub_1C73CAAA0(v82, v71, _s15FeatureSelectorV11FeatureInfoVMa);
              OUTLINED_FUNCTION_0_169();
              sub_1C73CAAA0(v71, v83, v84);
              v85 = *(v71 + *(v30 + 24));
              v86 = v170;
              v174 = v82;
              if (v85 >= v170)
              {
                OUTLINED_FUNCTION_0_169();
                sub_1C73CAAA0(v83, v163, v93);
                OUTLINED_FUNCTION_12_69(&v185);
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  sub_1C6FB2E64(0, *(v72 + 16) + 1, 1, v72);
                  v72 = v107;
                }

                OUTLINED_FUNCTION_18_59();
                v95 = *(v72 + 16);
                v94 = *(v72 + 24);
                if (v95 >= v94 >> 1)
                {
                  v108 = OUTLINED_FUNCTION_15(v94);
                  sub_1C6FB2E64(v108, v95 + 1, 1, v72);
                  v72 = v109;
                }

                *(v72 + 16) = v95 + 1;
                OUTLINED_FUNCTION_15_4();
                OUTLINED_FUNCTION_4_96();
                sub_1C73CADE0(v96, v97, v98);
                v178 = v72;
                v185 = v72;
                swift_endAccess();
                v183 = 0;
                v184 = 0xE000000000000000;
                sub_1C755180C();
                v100 = *v171;
                v99 = v171[1];
                sub_1C75504FC();

                v183 = v100;
                v184 = v99;
                MEMORY[0x1CCA5CD70](0x2073657373617020, 0xE900000000000028);
                v182 = v85;
                sub_1C7551D8C();
                OUTLINED_FUNCTION_14_62();

                MEMORY[0x1CCA5CD70](40, 0xE100000000000000);
                OUTLINED_FUNCTION_7_86(*(v71 + *(v30 + 20)));
                OUTLINED_FUNCTION_14_62();

                MEMORY[0x1CCA5CD70](0x203D3E2029, 0xE500000000000000);
                OUTLINED_FUNCTION_7_86(v170);
                OUTLINED_FUNCTION_14_62();

                MEMORY[0x1CCA5CD70](41, 0xE100000000000000);
                v90 = v183;
                v91 = v184;
                OUTLINED_FUNCTION_12_69(&v186);
                v92 = v186;
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  OUTLINED_FUNCTION_2_117();
                  sub_1C6FB1814();
                  v92 = v110;
                }
              }

              else
              {
                v178 = v72;
                v183 = 0;
                v184 = 0xE000000000000000;
                v87 = v83;
                sub_1C755180C();
                v89 = *v83;
                v88 = v87[1];
                sub_1C75504FC();

                v183 = v89;
                v184 = v88;
                MEMORY[0x1CCA5CD70](0x2820736C69616620, 0xE800000000000000);
                v182 = v85;
                sub_1C7551D8C();
                OUTLINED_FUNCTION_14_62();

                MEMORY[0x1CCA5CD70](40, 0xE100000000000000);
                OUTLINED_FUNCTION_7_86(*(v71 + *(v30 + 20)));
                OUTLINED_FUNCTION_14_62();

                MEMORY[0x1CCA5CD70](540811305, 0xE400000000000000);
                v182 = v86;
                sub_1C7551D8C();
                OUTLINED_FUNCTION_14_62();

                MEMORY[0x1CCA5CD70](41, 0xE100000000000000);
                v90 = v183;
                v91 = v184;
                OUTLINED_FUNCTION_12_69(&v186);
                v92 = v186;
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  OUTLINED_FUNCTION_2_117();
                  sub_1C6FB1814();
                  v92 = v106;
                }

                OUTLINED_FUNCTION_18_59();
              }

              v102 = *(v92 + 16);
              v101 = *(v92 + 24);
              v72 = v178;
              if (v102 >= v101 >> 1)
              {
                OUTLINED_FUNCTION_15(v101);
                sub_1C6FB1814();
                v92 = v105;
              }

              *(v92 + 16) = v102 + 1;
              v103 = v92 + 16 * v102;
              *(v103 + 32) = v90;
              *(v103 + 40) = v91;
              v186 = v92;
              swift_endAccess();
              v71 = v164;
              sub_1C73CAB00(v164, _s15FeatureSelectorV11FeatureInfoVMa);
              OUTLINED_FUNCTION_3_105();
              v83 = v171;
              sub_1C73CAB00(v171, v104);
              v82 = v174 + v173;
              v48 = v86 - 1;
              v30 = v177;
            }

            while (v48);
            v178 = v72;

            v32 = v162;
            v37 = v149;
          }

          else
          {
            v49 = *(*(v37 + 48) + v46);
            sub_1C75504FC();
            v50 = sub_1C754FEEC();
            v51 = sub_1C755117C();

            if (os_log_type_enabled(v50, v51))
            {
              v52 = swift_slowAlloc();
              v183 = swift_slowAlloc();
              *v52 = v159;
              v53 = 0xE900000000000072;
              v54 = 0x6574636172616843;
              switch(v49)
              {
                case 1:
                  v53 = 0xE800000000000000;
                  v54 = 0x6E6F697461636F4CLL;
                  break;
                case 2:
                  v53 = 0xE500000000000000;
                  v54 = 0x746E657645;
                  break;
                case 3:
                  v53 = 0xE400000000000000;
                  v54 = 1885958740;
                  break;
                case 4:
                  v53 = 0xE500000000000000;
                  v54 = 0x7972657551;
                  break;
                case 5:
                  v53 = 0xEA00000000007265;
                  v54 = 0x6B61657262656954;
                  break;
                default:
                  break;
              }

              v55 = sub_1C6F765A4(v54, v53, &v183);

              *(v52 + 4) = v55;
              *(v52 + 12) = 2080;
              v56 = v162;
              *(v52 + 14) = sub_1C6F765A4(v166, v162, &v183);
              _os_log_impl(&dword_1C6F5C000, v50, v51, "No feature %s for cluster %s is found", v52, 0x16u);
              swift_arrayDestroy();
              v32 = v56;
              OUTLINED_FUNCTION_109();
              OUTLINED_FUNCTION_109();

              v30 = v177;
            }

            else
            {
            }
          }

          v39 = v169;
          v43 = v168;
          if (!v42)
          {
            goto LABEL_9;
          }
        }
      }

      while (1)
      {
LABEL_9:
        v44 = v38 + 1;
        if (__OFADD__(v38, 1))
        {
          __break(1u);
          return;
        }

        if (v44 >= v43)
        {
          break;
        }

        v42 = *(v39 + 8 * v44);
        ++v38;
        if (v42)
        {
          v38 = v44;
          goto LABEL_13;
        }
      }

      sub_1C75504FC();
      v111 = sub_1C754FEEC();
      v112 = sub_1C755117C();

      if (os_log_type_enabled(v111, v112))
      {
        LODWORD(v173) = v112;
        v113 = swift_slowAlloc();
        v172 = swift_slowAlloc();
        v182 = v172;
        *v113 = v151;
        v114 = sub_1C6F765A4(v166, v32, &v182);

        *(v113 + 4) = v114;
        v174 = v113;
        *(v113 + 12) = 2080;
        v115 = v178;
        v116 = *(v178 + 16);
        if (v116)
        {
          v170 = v111;
          v181 = MEMORY[0x1E69E7CC0];
          sub_1C75504FC();
          sub_1C6F7ED9C(0, v116, 0, v117, v118, v119, v120);
          v121 = v181;
          OUTLINED_FUNCTION_15_4();
          v123 = v115 + v122;
          v125 = *(v124 + 72);
          v126 = v179;
          do
          {
            sub_1C73CAAA0(v123, v126, type metadata accessor for Hastings.Feature);
            v183 = 0;
            v184 = 0xE000000000000000;
            sub_1C755180C();
            MEMORY[0x1CCA5CD70](0x2865727574616546, 0xEC000000203A6469);
            MEMORY[0x1CCA5CD70](*v179, *(v179 + 8));
            MEMORY[0x1CCA5CD70](0x203A65707974202CLL, 0xE800000000000000);
            v180 = *(v179 + 16);
            sub_1C75519EC();
            MEMORY[0x1CCA5CD70](0xD000000000000010, v175 | 0x8000000000000000);
            sub_1C754F58C();
            sub_1C75519EC();
            MEMORY[0x1CCA5CD70](41, 0xE100000000000000);
            v126 = v179;
            v127 = v183;
            v128 = v184;
            sub_1C73CAB00(v179, type metadata accessor for Hastings.Feature);
            v181 = v121;
            v130 = *(v121 + 16);
            v129 = *(v121 + 24);
            if (v130 >= v129 >> 1)
            {
              v132 = OUTLINED_FUNCTION_15(v129);
              sub_1C6F7ED9C(v132, v130 + 1, 1, v133, v134, v135, v136);
              v126 = v179;
              v121 = v181;
            }

            *(v121 + 16) = v130 + 1;
            v131 = v121 + 16 * v130;
            *(v131 + 32) = v127;
            *(v131 + 40) = v128;
            v123 += v125;
            --v116;
          }

          while (v116);

          v30 = v177;
          v111 = v170;
        }

        else
        {
          v121 = MEMORY[0x1E69E7CC0];
        }

        v183 = v121;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00, &qword_1C755BD70);
        sub_1C703328C();
        v137 = OUTLINED_FUNCTION_13_76();
        v139 = v138;

        v140 = sub_1C6F765A4(v137, v139, &v182);

        v141 = v174;
        *(v174 + 14) = v140;
        *(v141 + 22) = 2080;
        swift_beginAccess();
        v183 = v186;
        sub_1C75504FC();
        v142 = OUTLINED_FUNCTION_13_76();
        v144 = v143;

        v145 = sub_1C6F765A4(v142, v144, &v182);

        *(v141 + 24) = v145;
        _os_log_impl(&dword_1C6F5C000, v111, v173, "Cluster %s with significant features\n\t%s.\nStatus of the feature selection\n\t%s.", v141, 0x20u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_109();
        OUTLINED_FUNCTION_109();

        a2 = v152;
      }

      else
      {

        a2 = v152;
      }

      sub_1C75504FC();
      v146 = v158;
      swift_isUniquelyReferenced_nonNull_native();
      v183 = v146;
      sub_1C6FC8618();

      v158 = v183;

      v29 = v157;
    }

    v147 = v160;
    sub_1C754F2EC();
    if (v147)
    {
    }
  }
}

void *Hastings.FeatureSelector.selectNonsignificantFeatures(from:for:)(uint64_t a1, void *a2)
{
  v104 = sub_1C754F58C();
  OUTLINED_FUNCTION_3_0();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v87 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Hastings.Feature(0);
  OUTLINED_FUNCTION_3_0();
  v100 = v9;
  v101 = v10;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_78();
  v88 = v11 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v109 = &v87 - v14;
  v15 = *(a1 + 56);
  v103 = a1 + 56;
  v16 = 1 << *(a1 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & v15;
  v102 = (v16 + 63) >> 6;
  v99 = *MEMORY[0x1E69C1920];
  v97 = v5 + 8;
  v98 = (v5 + 104);
  sub_1C75504FC();
  v19 = 0;
  v93 = a2 + 7;
  v91 = MEMORY[0x1E69E7CC8];
  v90 = a1;
  v89 = a2;
  while (v18)
  {
    v20 = v104;
LABEL_11:
    v105 = v19;
    v106 = v18;
    v94 = *(v101 + 72);
    OUTLINED_FUNCTION_0_169();
    sub_1C73CAAA0(v22, v109, v23);
    (*v98)(v8, v99, v20);
    sub_1C73CAB58();
    sub_1C7550A5C();
    sub_1C7550A5C();
    if (v112 == v110 && v113 == v111)
    {
      v28 = OUTLINED_FUNCTION_17_73();
      v29(v28);
    }

    else
    {
      v25 = sub_1C7551DBC();
      v26 = OUTLINED_FUNCTION_17_73();
      v27(v26);

      if ((v25 & 1) == 0)
      {
        goto LABEL_51;
      }
    }

    v30 = a2[2];
    if (v30)
    {
      v31 = a2[5];
      v92 = a2[4];
      v33 = a2[6];
      v32 = a2[7];
      v96 = v31;
      sub_1C75504FC();
      v95 = v33;
      sub_1C75504FC();
      sub_1C75504FC();
      v34 = 1;
LABEL_20:
      v35 = &v93[4 * v34];
      v108 = v32;
      while (v30 != v34)
      {
        if (v34 >= v30)
        {
          __break(1u);
LABEL_55:
          __break(1u);
          goto LABEL_56;
        }

        if (__OFADD__(v34, 1))
        {
          goto LABEL_55;
        }

        v36 = *(v35 - 2);
        v107 = *(v35 - 3);
        v37 = *(v35 - 1);
        v38 = *v35;
        v39 = *(v32 + 16);
        sub_1C75504FC();
        sub_1C75504FC();
        sub_1C75504FC();
        if (v39)
        {
          v40 = sub_1C6FC27A8();
          if (v41)
          {
            v39 = *(*(*(v32 + 56) + 8 * v40) + 16);
          }

          else
          {
            v39 = 0;
          }
        }

        if (*(v38 + 16))
        {
          v42 = sub_1C6FC27A8();
          if ((v43 & 1) != 0 && v39 < *(*(*(v38 + 56) + 8 * v42) + 16))
          {

            ++v34;
            v92 = v107;
            v95 = v37;
            v96 = v36;
            v32 = v38;
            goto LABEL_20;
          }
        }

        ++v34;
        v35 += 4;
        v32 = v108;
      }

      v44 = v32;
      v45 = v95;
      if (!*(v32 + 16))
      {

        OUTLINED_FUNCTION_18_59();
        a2 = v89;
        goto LABEL_51;
      }

      sub_1C6FC27A8();
      OUTLINED_FUNCTION_18_59();
      a2 = v89;
      v47 = v96;
      if ((v48 & 1) == 0 || !*(*(*(v32 + 56) + 8 * v46) + 16))
      {

        goto LABEL_51;
      }

      OUTLINED_FUNCTION_0_169();
      sub_1C73CAAA0(v109, v88, v49);
      v50 = v91;
      swift_isUniquelyReferenced_nonNull_native();
      v112 = v50;
      v51 = OUTLINED_FUNCTION_15_73();
      v54 = sub_1C6FC2E14(v51, v52, v53, v44);
      if (__OFADD__(v50[2], (v55 & 1) == 0))
      {
        goto LABEL_57;
      }

      v56 = v54;
      v57 = v55;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215348, &qword_1C755CC50);
      v58 = sub_1C7551A2C();
      v59 = v112;
      v91 = v112;
      if (v58)
      {
        v60 = OUTLINED_FUNCTION_15_73();
        v63 = sub_1C6FC2E14(v60, v61, v62, v108);
        if ((v57 & 1) != (v64 & 1))
        {
          goto LABEL_59;
        }

        v56 = v63;
        v59 = v91;
      }

      if (v57)
      {

        v59 = v91;
      }

      else
      {
        v59[(v56 >> 6) + 8] |= 1 << v56;
        v65 = (v59[6] + 32 * v56);
        *v65 = v92;
        v65[1] = v47;
        v66 = v108;
        v65[2] = v45;
        v65[3] = v66;
        *(v59[7] + 8 * v56) = MEMORY[0x1E69E7CC0];
        v67 = v59[2];
        v68 = __OFADD__(v67, 1);
        v69 = v67 + 1;
        if (v68)
        {
          goto LABEL_58;
        }

        v59[2] = v69;
      }

      v70 = v59[7];
      v71 = *(v70 + 8 * v56);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v70 + 8 * v56) = v71;
      if (isUniquelyReferenced_nonNull_native)
      {
        v73 = v56;
      }

      else
      {
        v79 = OUTLINED_FUNCTION_2_117();
        sub_1C6FB2E64(v79, v80, v81, v82);
        v71 = v83;
        v73 = v56;
        *(v70 + 8 * v56) = v83;
      }

      v75 = *(v71 + 16);
      v74 = *(v71 + 24);
      if (v75 >= v74 >> 1)
      {
        v84 = OUTLINED_FUNCTION_15(v74);
        sub_1C6FB2E64(v84, v75 + 1, 1, v71);
        v71 = v85;
        *(v70 + 8 * v73) = v85;
      }

      *(v71 + 16) = v75 + 1;
      OUTLINED_FUNCTION_4_96();
      sub_1C73CADE0(v88, v76, v77);
    }

LABEL_51:
    v18 = (v106 - 1) & v106;
    OUTLINED_FUNCTION_3_105();
    sub_1C73CAB00(v109, v78);
    v19 = v105;
  }

  v20 = v104;
  while (1)
  {
    v21 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v21 >= v102)
    {

      return v91;
    }

    v18 = *(v103 + 8 * v21);
    ++v19;
    if (v18)
    {
      v19 = v21;
      goto LABEL_11;
    }
  }

LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  result = sub_1C7551E4C();
  __break(1u);
  return result;
}

uint64_t sub_1C73CA310(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t *a4, __n128 a5)
{
  v81 = a4;
  v85 = a1;
  v82 = _s15FeatureSelectorV11FeatureInfoVMa(0);
  v8 = *(v82 - 8);
  MEMORY[0x1EEE9AC00](v82);
  v83 = &v76 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v86 = &v76 - v11;
  v12 = type metadata accessor for Hastings.Asset(0);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = (&v76 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2168B0, &qword_1C75656C0);
  v17 = v16 - 8;
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v76 - v18;
  v20 = type metadata accessor for Hastings.Feature(0);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v22 = &v76 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C73CAD70(a2, v19);
  v23 = v19;
  v24 = *&v19[*(v17 + 56)];
  sub_1C73CADE0(v23, v22, type metadata accessor for Hastings.Feature);
  v84 = v22[16];
  v29 = *(v24 + 16);
  if (v29)
  {
    v77 = a3;
    v78 = v8;
    v79 = v22;
    v80 = v5;
    v87 = MEMORY[0x1E69E7CC0];
    sub_1C6F7ED9C(0, v29, 0, v25, v26, v27, v28);
    v30 = v87;
    v31 = *(v13 + 80);
    v76 = v24;
    v32 = v24 + ((v31 + 32) & ~v31);
    v33 = *(v13 + 72);
    do
    {
      sub_1C73CAAA0(v32, v15, type metadata accessor for Hastings.Asset);
      v34 = *v15;
      v35 = v15[1];
      sub_1C75504FC();
      sub_1C73CAB00(v15, type metadata accessor for Hastings.Asset);
      v87 = v30;
      v41 = *(v30 + 16);
      v40 = *(v30 + 24);
      if (v41 >= v40 >> 1)
      {
        sub_1C6F7ED9C(v40 > 1, v41 + 1, 1, v36, v37, v38, v39);
        v30 = v87;
      }

      *(v30 + 16) = v41 + 1;
      v42 = v30 + 16 * v41;
      *(v42 + 32) = v34;
      *(v42 + 40) = v35;
      v32 += v33;
      --v29;
    }

    while (v29);

    v22 = v79;
    a3 = v77;
    v8 = v78;
  }

  else
  {

    v30 = MEMORY[0x1E69E7CC0];
  }

  v43 = *(v30 + 16);
  if (a3)
  {
    sub_1C75504FC();
    v44 = sub_1C72B8CBC(v30, a3);

    v45 = *(v44 + 16);
  }

  else
  {

    v45 = v43;
  }

  v46 = v83;
  if (!v45)
  {
    v87 = 0;
    v88 = 0xE000000000000000;
    sub_1C755180C();
    MEMORY[0x1CCA5CD70](*v22, *(v22 + 1));
    MEMORY[0x1CCA5CD70](0xD00000000000002ALL, 0x80000001C75AE4F0);
    v89 = 0;
    v68 = sub_1C7551D8C();
    MEMORY[0x1CCA5CD70](v68);

    MEMORY[0x1CCA5CD70](40, 0xE100000000000000);
    v89 = v43;
    v69 = sub_1C7551D8C();
    MEMORY[0x1CCA5CD70](v69);

    MEMORY[0x1CCA5CD70](10537, 0xE200000000000000);
    v70 = v87;
    v71 = v88;
    v72 = v81;
    swift_beginAccess();
    sub_1C6FB0600();
    v73 = *(*v72 + 16);
    sub_1C6FB0EFC();
    v74 = *v72;
    *(v74 + 16) = v73 + 1;
    v75 = v74 + 16 * v73;
    *(v75 + 32) = v70;
    *(v75 + 40) = v71;
    swift_endAccess();
    return sub_1C73CAB00(v22, type metadata accessor for Hastings.Feature);
  }

  v47 = v86;
  sub_1C73CAAA0(v22, v86, type metadata accessor for Hastings.Feature);
  v48 = v82;
  *(v47 + *(v82 + 20)) = v43;
  *(v47 + *(v48 + 24)) = v45;
  sub_1C73CAAA0(v47, v46, _s15FeatureSelectorV11FeatureInfoVMa);
  v49 = v85;
  swift_isUniquelyReferenced_nonNull_native();
  v87 = *v49;
  v50 = v87;
  v51 = sub_1C6FC34C8(v84);
  if (__OFADD__(*(v50 + 16), (v52 & 1) == 0))
  {
    __break(1u);
    goto LABEL_21;
  }

  v53 = v51;
  v54 = v52;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21B408, &qword_1C7587AB8);
  v55 = sub_1C7551A2C();
  v56 = v87;
  if (v55)
  {
    v57 = sub_1C6FC34C8(v84);
    if ((v54 & 1) == (v58 & 1))
    {
      v53 = v57;
      goto LABEL_16;
    }

LABEL_21:
    result = sub_1C7551E4C();
    __break(1u);
    return result;
  }

LABEL_16:
  *v85 = v56;
  if ((v54 & 1) == 0)
  {
    sub_1C6FCABDC();
  }

  v59 = *(v56 + 56) + 8 * v53;
  sub_1C6FB0E54();
  v60 = *(*v59 + 16);
  sub_1C6FB16A0(v60, v61, v62, v63, v64, v65);
  sub_1C73CAB00(v86, _s15FeatureSelectorV11FeatureInfoVMa);
  sub_1C73CAB00(v22, type metadata accessor for Hastings.Feature);
  v66 = *v59;
  *(v66 + 16) = v60 + 1;
  return sub_1C73CADE0(v46, v66 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v60, _s15FeatureSelectorV11FeatureInfoVMa);
}

Swift::Int __swiftcall Hastings.FeatureSelector.threshold(for:)(Swift::OpaquePointer a1)
{
  sub_1C73CA9F8(a1._rawValue);
  v3 = v2;
  v4 = sub_1C73CAA3C(a1._rawValue, v2) * 0.5;
  if (v4 <= v3 * 0.6)
  {
    v4 = v3 * 0.6;
  }

  v6 = OUTLINED_FUNCTION_10_73(v3 - v4);
  if (!(v8 ^ v9 | v7))
  {
    __break(1u);
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v6 <= -9.22337204e18)
  {
    goto LABEL_8;
  }

  if (v6 < 9.22337204e18)
  {
    return v6;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_1C73CA9F8(uint64_t result)
{
  if (*(result + 16))
  {
    v1 = 0;
    v2 = (result + 32);
    v3 = *(result + 16);
    while (1)
    {
      v4 = *v2++;
      v5 = __OFADD__(v1, v4);
      v1 += v4;
      if (v5)
      {
        break;
      }

      if (!--v3)
      {
        return result;
      }
    }

    __break(1u);
  }

  return result;
}

long double sub_1C73CAA3C(uint64_t a1, double a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = (a1 + 32);
    v4 = 0.0;
    v5 = *(a1 + 16);
    do
    {
      v6 = *v3++;
      v4 = v4 + (v6 - a2) * (v6 - a2);
      --v5;
    }

    while (v5);
  }

  else
  {
    v4 = 0.0;
  }

  return sqrt(v4 / v2);
}

uint64_t sub_1C73CAAA0(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_12();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1C73CAB00(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_12();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_1C73CAB58()
{
  result = qword_1EC2147A0;
  if (!qword_1EC2147A0)
  {
    v3 = sub_1C754F58C();
    result = swift_getWitnessTable(MEMORY[0x1E69C1950], v3, v0, v1);
    atomic_store(result, &qword_1EC2147A0);
  }

  return result;
}

uint64_t sub_1C73CABF8(uint64_t a1)
{
  result = sub_1C754FF1C();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1C73CAC8C(uint64_t a1)
{
  result = type metadata accessor for Hastings.Feature(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1C73CAD08(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2168B0, &qword_1C75656C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C73CAD70(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2168B0, &qword_1C75656C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C73CADE0(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_12();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t DynamicLifeContextGenerator.__allocating_init(extendedTokenCollection:characterSummaries:shufflePromptParameters:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v6 = swift_allocObject();
  DynamicLifeContextGenerator.init(extendedTokenCollection:characterSummaries:shufflePromptParameters:)(a1, a2, v3);
  return v6;
}

uint64_t DynamicLifeContextGenerator.init(extendedTokenCollection:characterSummaries:shufflePromptParameters:)(uint64_t *a1, uint64_t a2, char a3)
{
  v5 = *a1;
  v6 = a1[1];
  v7 = a1[2];
  v9 = a1[4];
  v8 = a1[5];
  sub_1C754FEFC();
  *(v3 + OBJC_IVAR____TtC18PhotosIntelligence27DynamicLifeContextGenerator_personExtendedTokens) = v5;
  *(v3 + OBJC_IVAR____TtC18PhotosIntelligence27DynamicLifeContextGenerator_petExtendedTokens) = v6;
  *(v3 + OBJC_IVAR____TtC18PhotosIntelligence27DynamicLifeContextGenerator_locationExtendedTokens) = v7;
  *(v3 + OBJC_IVAR____TtC18PhotosIntelligence27DynamicLifeContextGenerator_homeExtendedTokens) = v9;
  *(v3 + OBJC_IVAR____TtC18PhotosIntelligence27DynamicLifeContextGenerator_timeExtendedTokens) = v8;
  sub_1C75504FC();

  result = v3;
  *(v3 + OBJC_IVAR____TtC18PhotosIntelligence27DynamicLifeContextGenerator_shufflePromptParameters) = a3;
  if (a2)
  {
    v11 = *(a2 + 16);
    v12 = &unk_1C756A000;
    if (v11)
    {
      v13 = a2 + 32;
      sub_1C75504FC();
      v14 = MEMORY[0x1E69E7CC0];
      while (1)
      {
        sub_1C6FB5E28(v13, v53);
        sub_1C6F699F8(v53, &v46);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC219738, &unk_1C7579E20);
        if (swift_dynamicCast())
        {
          v15 = v52;
          if (*(&v49 + 1) != 1)
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v18 = OUTLINED_FUNCTION_19_3();
              sub_1C6FB2768(v18, v19, v20, v21);
              v14 = v22;
            }

            v16 = *(v14 + 24);
            if (*(v14 + 16) >= v16 >> 1)
            {
              v23 = OUTLINED_FUNCTION_8_79(v16);
              sub_1C6FB2768(v23, v24, v25, v26);
              v14 = v27;
            }

            OUTLINED_FUNCTION_11_70();
            *(v17 + 64) = v15;
            goto LABEL_13;
          }
        }

        else
        {
          v49 = xmmword_1C756A560;
          v51 = 0;
          v52 = 0;
          v50 = 0;
        }

        sub_1C73CB2E4(v49, 1);
LABEL_13:
        v13 += 40;
        if (!--v11)
        {

          result = v3;
          v12 = &unk_1C756A000;
          goto LABEL_17;
        }
      }
    }

    v14 = MEMORY[0x1E69E7CC0];
LABEL_17:
    *(result + OBJC_IVAR____TtC18PhotosIntelligence27DynamicLifeContextGenerator_personSummaries) = v14;
    v29 = *(a2 + 16);
    if (v29)
    {
      v30 = a2 + 32;
      v28 = MEMORY[0x1E69E7CC0];
      v45 = v12[86];
      while (1)
      {
        sub_1C6FB5E28(v30, v53);
        sub_1C6F699F8(v53, &v49);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC219738, &unk_1C7579E20);
        if (swift_dynamicCast())
        {
          v31 = LODWORD(v48[1]) | (BYTE4(v48[1]) << 32);
          if (*(&v46 + 1) != 1)
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v34 = OUTLINED_FUNCTION_19_3();
              sub_1C6FB2738(v34, v35, v36, v37);
              v28 = v38;
            }

            v32 = *(v28 + 24);
            if (*(v28 + 16) >= v32 >> 1)
            {
              v39 = OUTLINED_FUNCTION_8_79(v32);
              sub_1C6FB2738(v39, v40, v41, v42);
              v28 = v43;
            }

            OUTLINED_FUNCTION_11_70();
            *(v33 + 68) = BYTE4(v31);
            *(v33 + 64) = v31;
            goto LABEL_28;
          }
        }

        else
        {
          v46 = v45;
          v47 = 0;
          memset(v48, 0, 13);
        }

        sub_1C73CB2E4(v46, 1);
LABEL_28:
        v30 += 40;
        if (!--v29)
        {
          goto LABEL_31;
        }
      }
    }

    v28 = MEMORY[0x1E69E7CC0];
LABEL_31:

    result = v3;
  }

  else
  {
    v28 = MEMORY[0x1E69E7CC0];
    *(v3 + OBJC_IVAR____TtC18PhotosIntelligence27DynamicLifeContextGenerator_personSummaries) = MEMORY[0x1E69E7CC0];
  }

  *(result + OBJC_IVAR____TtC18PhotosIntelligence27DynamicLifeContextGenerator_petSummaries) = v28;
  return result;
}

uint64_t sub_1C73CB2E4(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t DynamicLifeContextGenerator.DynamicLifeContextInfo.relationshipsAsSentence.getter()
{
  v1 = *(v0 + 16);
  sub_1C75504FC();
  return v1;
}

uint64_t DynamicLifeContextGenerator.DynamicLifeContextInfo.homeLocationsAsSentence.getter()
{
  v1 = *(v0 + 40);
  sub_1C75504FC();
  return v1;
}

uint64_t DynamicLifeContextGenerator.DynamicLifeContextInfo.topLocationsAsSentence.getter()
{
  v1 = *(v0 + 64);
  sub_1C75504FC();
  return v1;
}

uint64_t DynamicLifeContextGenerator.DynamicLifeContextInfo.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 1);
  v4 = *(v0 + 2);
  v5 = *(v0 + 3);
  v15 = *(v0 + 4);
  v16 = *(v0 + 6);
  v17 = *(v0 + 5);
  v18 = *(v0 + 7);
  v19 = *(v0 + 9);
  v20 = *(v0 + 8);
  sub_1C755180C();
  MEMORY[0x1CCA5CD70](0x646C696843736168, 0xED0000203A6E6572);
  if (v1)
  {
    v6 = 1702195828;
  }

  else
  {
    v6 = 0x65736C6166;
  }

  if (v1)
  {
    v7 = 0xE400000000000000;
  }

  else
  {
    v7 = 0xE500000000000000;
  }

  MEMORY[0x1CCA5CD70](v6, v7);

  MEMORY[0x1CCA5CD70](0x737465507361680ALL, 0xEA0000000000203ALL);
  if (v2)
  {
    v8 = 1702195828;
  }

  else
  {
    v8 = 0x65736C6166;
  }

  if (v2)
  {
    v9 = 0xE400000000000000;
  }

  else
  {
    v9 = 0xE500000000000000;
  }

  MEMORY[0x1CCA5CD70](v8, v9);

  OUTLINED_FUNCTION_21();
  MEMORY[0x1CCA5CD70]();
  v10 = MEMORY[0x1E69E6158];
  v11 = MEMORY[0x1CCA5D090](v3, MEMORY[0x1E69E6158]);
  MEMORY[0x1CCA5CD70](v11);

  OUTLINED_FUNCTION_21();
  MEMORY[0x1CCA5CD70](0xD00000000000001ALL);
  MEMORY[0x1CCA5CD70](v4, v5);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1CCA5CD70]();
  v12 = MEMORY[0x1CCA5D090](v15, v10);
  MEMORY[0x1CCA5CD70](v12);

  OUTLINED_FUNCTION_21();
  MEMORY[0x1CCA5CD70](0xD00000000000001ALL);
  MEMORY[0x1CCA5CD70](v17, v16);
  MEMORY[0x1CCA5CD70](0x61636F4C706F740ALL, 0xEF203A736E6F6974);
  v13 = MEMORY[0x1CCA5D090](v18, v10);
  MEMORY[0x1CCA5CD70](v13);

  OUTLINED_FUNCTION_21();
  MEMORY[0x1CCA5CD70]();
  MEMORY[0x1CCA5CD70](v20, v19);
  return 0;
}

uint64_t DynamicLifeContextGenerator.CharacterSourceForLifeContext.hashValue.getter()
{
  v1 = *v0;
  sub_1C7551F3C();
  MEMORY[0x1CCA5E460](v1);
  return sub_1C7551FAC();
}

uint64_t sub_1C73CB6F0@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, void *a6@<X8>)
{
  v7 = v6;
  v11 = sub_1C754F38C();
  OUTLINED_FUNCTION_3_0();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_14_0();
  v17 = v16 - v15;
  v18 = *a1;
  v19 = *a5;
  __swift_project_boxed_opaque_existential_1(a3, a3[3]);
  v20 = a4;
  sub_1C754F1CC();
  sub_1C754F2CC();
  if (v96)
  {
    OUTLINED_FUNCTION_70(a3, a3[3]);
    OUTLINED_FUNCTION_13_77();
    (*(v13 + 8))(v17, v11);
    sub_1C754F2FC();
    OUTLINED_FUNCTION_3();
    return (*(v21 + 8))(a4);
  }

  else
  {
    v90 = v7;
    v91 = v13;
    v88 = a3;
    v89 = v17;
    v23 = v11;
    v24 = v7;
    v25 = a2;
    switch(v18)
    {
      case 1:
      case 2:
        LOBYTE(__src[0]) = 0;
        v86 = sub_1C73CC054(__src);
        LOBYTE(__src[0]) = 0;
        goto LABEL_9;
      case 3:
        v32 = v19 ^ 1;
        LOBYTE(__src[0]) = v32;
        v86 = sub_1C73CC054(__src);
        LOBYTE(__src[0]) = v32;
LABEL_9:
        sub_1C73CC0F4(__src);
        v87 = *(v7 + OBJC_IVAR____TtC18PhotosIntelligence27DynamicLifeContextGenerator_shufflePromptParameters);
        v34 = v91;
        v85 = v33;
        if (v87 == 1)
        {
          __src[0] = v33;
          v20 = OUTLINED_FUNCTION_12_70(*(a2 + 32));
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00, &qword_1C755BD70);
          sub_1C73CE3F0();
          OUTLINED_FUNCTION_7_87();
          v35 = sub_1C7550A1C();
        }

        else
        {
          v35 = sub_1C75504FC();
        }

        v84 = static StoryGenerationUtilities.arrayAsSentence(for:includeComma:emptyArrayResult:)(v35, 1, 1701736270);
        v83 = v36;

        v41 = *(v7 + OBJC_IVAR____TtC18PhotosIntelligence27DynamicLifeContextGenerator_homeExtendedTokens);
        v42 = *(v41 + 16);
        v43 = MEMORY[0x1E69E7CC0];
        if (v42)
        {
          v82 = v23;
          __src[0] = MEMORY[0x1E69E7CC0];
          sub_1C6F7ED9C(0, v42, 0, v37, v38, v39, v40);
          v43 = __src[0];
          v44 = (v41 + 56);
          do
          {
            v46 = *(v44 - 1);
            v45 = *v44;
            __src[0] = v43;
            v48 = *(v43 + 16);
            v47 = *(v43 + 24);
            v20 = v48 + 1;
            sub_1C75504FC();
            if (v48 >= v47 >> 1)
            {
              sub_1C6F7ED9C(v47 > 1, v48 + 1, 1, v49, v50, v51, v52);
              v43 = __src[0];
            }

            *(v43 + 16) = v20;
            v53 = v43 + 16 * v48;
            *(v53 + 32) = v46;
            *(v53 + 40) = v45;
            v44 += 7;
            --v42;
          }

          while (v42);
          v23 = v82;
          v34 = v91;
          v24 = v90;
          v25 = a2;
        }

        __src[0] = v43;
        sub_1C75504FC();
        sub_1C70401E8();

        v54 = __src[0];
        if (v87)
        {
          v20 = OUTLINED_FUNCTION_12_70(*(v25 + 32));
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00, &qword_1C755BD70);
          sub_1C73CE3F0();
          OUTLINED_FUNCTION_7_87();
          v55 = sub_1C7550A1C();
        }

        else
        {
          sub_1C75504FC();
          v55 = v54;
        }

        OUTLINED_FUNCTION_14_63();
        v95 = static StoryGenerationUtilities.arrayAsSentence(for:includeComma:emptyArrayResult:)(v55, 1, v20);
        v92 = v56;

        sub_1C73CCE24(*(v24 + OBJC_IVAR____TtC18PhotosIntelligence27DynamicLifeContextGenerator_locationExtendedTokens), v57, v58, v59, v60, v61, v62);
        v64 = v63;
        if (v87)
        {
          __src[0] = v63;
          OUTLINED_FUNCTION_12_70(*(v25 + 32));
          v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00, &qword_1C755BD70);
          sub_1C73CE3F0();
          OUTLINED_FUNCTION_14_63();
          v65 = sub_1C7550A1C();
        }

        else
        {
          sub_1C75504FC();
          v65 = v64;
        }

        v66 = static StoryGenerationUtilities.arrayAsSentence(for:includeComma:emptyArrayResult:)(v65, 1, v20);
        v68 = v67;

        LOWORD(__src[0]) = v86 & 0x101;
        __src[1] = v85;
        __src[2] = v84;
        __src[3] = v83;
        __src[4] = v54;
        __src[5] = v95;
        __src[6] = v92;
        __src[7] = v64;
        __src[8] = v66;
        __src[9] = v68;
        sub_1C73CE3B8(__src, v99);
        v69 = sub_1C754FEEC();
        v70 = sub_1C75511BC();
        sub_1C730BAFC(__src);
        if (os_log_type_enabled(v69, v70))
        {
          v71 = v34;
          v72 = swift_slowAlloc();
          v73 = swift_slowAlloc();
          v101 = v73;
          *v72 = 136642819;
          memcpy(__dst, __src, sizeof(__dst));
          sub_1C73CE3B8(__src, v99);
          v74 = DynamicLifeContextGenerator.DynamicLifeContextInfo.description.getter();
          v76 = v75;
          memcpy(v99, __dst, sizeof(v99));
          sub_1C730BAFC(v99);
          v77 = sub_1C6F765A4(v74, v76, &v101);

          *(v72 + 4) = v77;
          _os_log_impl(&dword_1C6F5C000, v69, v70, "DynamicLifeContextInfo: %{sensitive}s", v72, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v73);
          OUTLINED_FUNCTION_109();
          v34 = v71;
          OUTLINED_FUNCTION_109();
        }

        sub_1C754F2EC();
        memcpy(a6, __src, 0x50uLL);
        OUTLINED_FUNCTION_70(v88, v88[3]);
        OUTLINED_FUNCTION_13_77();
        result = (*(v34 + 8))(v89, v23);
        break;
      default:
        v26 = sub_1C754FEEC();
        v27 = sub_1C755119C();
        if (os_log_type_enabled(v26, v27))
        {
          v28 = swift_slowAlloc();
          v29 = swift_slowAlloc();
          __src[0] = v29;
          *v28 = 136315138;
          v30 = 0xED00007374696172;
          v31 = 0x74206C61626F6C67;
          switch(v18)
          {
            case 0:
              v30 = 0x80000001C7595DE0;
              v31 = 0xD000000000000013;
              break;
            case 1:
              break;
            case 2:
              v30 = 0xEB0000000072656CLL;
              v31 = 0x6C657479726F7473;
              break;
            case 3:
              v30 = 0xEE006E6F69746172;
              v31 = 0x7563207465737361;
              break;
            case 4:
              v30 = 0xE500000000000000;
              v31 = 0x636973756DLL;
              break;
            default:
              JUMPOUT(0);
          }

          v78 = sub_1C6F765A4(v31, v30, __src);

          *(v28 + 4) = v78;
          _os_log_impl(&dword_1C6F5C000, v26, v27, "Could not generate person or pet information for %s adapter.", v28, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v29);
          OUTLINED_FUNCTION_109();
          OUTLINED_FUNCTION_109();

          v20 = a4;
        }

        else
        {
        }

        v79 = sub_1C73CE364();
        OUTLINED_FUNCTION_166_0(&type metadata for DynamicLifeContextGenerator.Error, v79);
        *v80 = 1;
        swift_willThrow();
        OUTLINED_FUNCTION_70(v88, v88[3]);
        OUTLINED_FUNCTION_13_77();
        (*(v91 + 8))(v89, v23);
        sub_1C754F2FC();
        OUTLINED_FUNCTION_3();
        result = (*(v81 + 8))(v20);
        break;
    }
  }

  return result;
}

uint64_t sub_1C73CC054(_BYTE *a1)
{
  if (*a1)
  {
    v2 = *(v1 + OBJC_IVAR____TtC18PhotosIntelligence27DynamicLifeContextGenerator_personSummaries);
    v3 = (v2 + 68);
    v4 = *(v2 + 16) + 1;
    v5 = &OBJC_IVAR____TtC18PhotosIntelligence27DynamicLifeContextGenerator_petSummaries;
    do
    {
      v6 = --v4 != 0;
      if (!v4)
      {
        break;
      }

      v7 = *v3;
      v3 += 20;
    }

    while ((v7 - 1) > 1);
  }

  else
  {
    v8 = *(v1 + OBJC_IVAR____TtC18PhotosIntelligence27DynamicLifeContextGenerator_personExtendedTokens);
    v9 = (v8 + 80);
    v10 = *(v8 + 16) + 1;
    v5 = &OBJC_IVAR____TtC18PhotosIntelligence27DynamicLifeContextGenerator_petExtendedTokens;
    do
    {
      v6 = --v10 != 0;
      if (!v10)
      {
        break;
      }

      v11 = *v9;
      v9 += 36;
    }

    while ((v11 - 1) >= 2);
  }

  return v6 | ((*(*(v1 + *v5) + 16) != 0) << 8);
}

void sub_1C73CC0F4(_BYTE *a1)
{
  if (*a1 != 1)
  {
    v15 = 0;
    v16 = *(v1 + OBJC_IVAR____TtC18PhotosIntelligence27DynamicLifeContextGenerator_personExtendedTokens);
    v17 = *(v16 + 16);
    v18 = v16 + 88;
    v145 = MEMORY[0x1E69E7CC0];
    v147 = v16;
    v143 = v16 + 88;
LABEL_15:
    v19 = v18 + 72 * v15;
    while (v17 != v15)
    {
      if (v15 >= *(v16 + 16))
      {
        goto LABEL_159;
      }

      isUniquelyReferenced_nonNull_native = *(v19 - 5);
      if (isUniquelyReferenced_nonNull_native != 18)
      {
        v20 = *(v19 - 3);
        v21 = *(v19 - 4);
        LOBYTE(v150) = *(v19 - 5);
        sub_1C75504FC();
        sub_1C75504FC();
        sub_1C75504FC();
        v22 = sub_1C73CE308(&v150, v20, v21);

        v16 = v147;

        if (v22)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1C6FB27C0();
            v145 = v24;
          }

          v18 = v143;
          v23 = *(v145 + 16);
          if (v23 >= *(v145 + 24) >> 1)
          {
            sub_1C6FB27C0();
            v145 = v25;
          }

          ++v15;
          *(v145 + 16) = v23 + 1;
          *(v145 + v23 + 32) = isUniquelyReferenced_nonNull_native;
          goto LABEL_15;
        }
      }

      v19 += 72;
      ++v15;
    }

    v38 = 0;
    isUniquelyReferenced_nonNull_native = *(v1 + OBJC_IVAR____TtC18PhotosIntelligence27DynamicLifeContextGenerator_petExtendedTokens);
    v39 = *(isUniquelyReferenced_nonNull_native + 16);
    v28 = MEMORY[0x1E69E7CC0];
    v29 = v145;
LABEL_43:
    v40 = (isUniquelyReferenced_nonNull_native + 97 + 72 * v38);
    while (v39 != v38)
    {
      if (v38 >= *(isUniquelyReferenced_nonNull_native + 16))
      {
        goto LABEL_161;
      }

      v41 = *(v40 - 17);
      if (v41 == 4)
      {
        if (*v40)
        {
          v42 = 4;
LABEL_52:
          v43 = v28;
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            v28 = v43;
          }

          else
          {
            sub_1C6FB2798(0, *(v43 + 16) + 1, 1, v43);
            v28 = v46;
          }

          v45 = *(v28 + 16);
          v44 = *(v28 + 24);
          if (v45 >= v44 >> 1)
          {
            sub_1C6FB2798(v44 > 1, v45 + 1, 1, v28);
            v28 = v47;
          }

          ++v38;
          *(v28 + 16) = v45 + 1;
          *(v28 + 2 * v45 + 32) = v42;
          goto LABEL_43;
        }
      }

      else if (((v41 == 3) & *v40) != 0)
      {
        v42 = 3;
        goto LABEL_52;
      }

      v40 += 72;
      ++v38;
    }

LABEL_58:
    v148 = v28;
    sub_1C73CE918();
    v48 = sub_1C75504DC();
    v49 = *(v29 + 16);
    if (v49)
    {
      isUniquelyReferenced_nonNull_native = 0;
      v50 = v29 + 32;
      while (isUniquelyReferenced_nonNull_native < *(v29 + 16))
      {
        v51 = v29;
        v52 = *(v50 + isUniquelyReferenced_nonNull_native);
        swift_isUniquelyReferenced_nonNull_native();
        v150 = v48;
        v53 = sub_1C6FC2CD8();
        if (__OFADD__(*(v48 + 16), (v54 & 1) == 0))
        {
          goto LABEL_147;
        }

        v55 = v53;
        v56 = v54;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21B430, &qword_1C7587D48);
        v57 = sub_1C7551A2C();
        v48 = v150;
        if (v57)
        {
          v58 = sub_1C6FC2CD8();
          if ((v56 & 1) != (v59 & 1))
          {
            goto LABEL_164;
          }

          v55 = v58;
        }

        if ((v56 & 1) == 0)
        {
          *(v48 + 8 * (v55 >> 6) + 64) |= 1 << v55;
          *(*(v48 + 48) + v55) = v52;
          *(*(v48 + 56) + 8 * v55) = 0;
          v60 = *(v48 + 16);
          v61 = __OFADD__(v60, 1);
          v62 = v60 + 1;
          if (v61)
          {
            goto LABEL_162;
          }

          *(v48 + 16) = v62;
        }

        v63 = *(v48 + 56);
        v64 = *(v63 + 8 * v55);
        v61 = __OFADD__(v64, 1);
        v65 = v64 + 1;
        if (v61)
        {
          goto LABEL_148;
        }

        ++isUniquelyReferenced_nonNull_native;
        *(v63 + 8 * v55) = v65;
        v29 = v51;
        if (v49 == isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_70;
        }
      }

LABEL_146:
      __break(1u);
LABEL_147:
      __break(1u);
LABEL_148:
      __break(1u);
    }

    else
    {
LABEL_70:

      v66 = 1 << *(v48 + 32);
      v67 = -1;
      if (v66 < 64)
      {
        v67 = ~(-1 << v66);
      }

      v68 = v67 & *(v48 + 64);
      v69 = (v66 + 63) >> 6;
      sub_1C75504FC();
      v70 = 0;
      v71 = MEMORY[0x1E69E7CC0];
      if (v68)
      {
        goto LABEL_77;
      }

      while (1)
      {
        v72 = v70 + 1;
        if (__OFADD__(v70, 1))
        {
          __break(1u);
          goto LABEL_146;
        }

        if (v72 >= v69)
        {
          break;
        }

        v68 = *(v48 + 64 + 8 * v72);
        ++v70;
        if (v68)
        {
          v70 = v72;
          do
          {
LABEL_77:
            v73 = __clz(__rbit64(v68)) | (v70 << 6);
            if (*(*(v48 + 56) + 8 * v73) < 2)
            {
              v78 = 0xEC00000065636E61;
              v76 = 0x746E696175716361;
              switch(*(*(v48 + 48) + v73))
              {
                case 1:
                  v78 = 0xE700000000000000;
                  v82 = 0x6568746F7262;
                  goto LABEL_89;
                case 2:
                  v78 = 0xE500000000000000;
                  v76 = 0x646C696863;
                  break;
                case 3:
                  v76 = 0xD000000000000015;
                  v78 = 0x80000001C7596B70;
                  break;
                case 4:
                  v78 = 0xE800000000000000;
                  v84 = 0x6B726F776F63;
                  goto LABEL_100;
                case 5:
                  v78 = 0xE800000000000000;
                  v84 = 0x746867756164;
LABEL_100:
                  v76 = v84 & 0xFFFFFFFFFFFFLL | 0x7265000000000000;
                  break;
                case 6:
                  v76 = 0xD000000000000013;
                  v78 = 0x80000001C7596BA0;
                  break;
                case 7:
                  v78 = 0xE600000000000000;
                  v76 = 0x796C696D6166;
                  break;
                case 8:
                  v78 = 0xE600000000000000;
                  v83 = 1752457574;
                  goto LABEL_105;
                case 9:
                  v78 = 0xE600000000000000;
                  v76 = 0x646E65697266;
                  break;
                case 0xA:
                  v76 = 0xD000000000000010;
                  v78 = 0x80000001C7596BD0;
                  break;
                case 0xB:
                  v78 = 0xE200000000000000;
                  v76 = 25965;
                  break;
                case 0xC:
                  v76 = 0x726568746F6DLL;
                  v78 = 0xE600000000000000;
                  break;
                case 0xD:
                  v78 = 0xE600000000000000;
                  v76 = 0x746E65726170;
                  break;
                case 0xE:
                  v78 = 0xE700000000000000;
                  v82 = 0x656E74726170;
LABEL_89:
                  v76 = v82 & 0xFFFFFFFFFFFFLL | 0x72000000000000;
                  break;
                case 0xF:
                  v78 = 0xE300000000000000;
                  v76 = 7237491;
                  break;
                case 0x10:
                  v78 = 0xE600000000000000;
                  v83 = 1953720691;
LABEL_105:
                  v76 = v83 & 0xFFFF0000FFFFFFFFLL | 0x726500000000;
                  break;
                case 0x11:
                  v78 = 0xE300000000000000;
                  v76 = 7367030;
                  break;
                default:
                  break;
              }
            }

            else
            {
              LOBYTE(v150) = *(*(v48 + 48) + v73);
              v74 = v71;
              v75 = StoryPersonRelationshipType.pluralValue.getter();
              v71 = v74;
              v76 = v75;
              v78 = v77;
            }

            v79 = v71;
            if (swift_isUniquelyReferenced_nonNull_native())
            {
              v71 = v79;
            }

            else
            {
              sub_1C6FB1814();
              v71 = v85;
            }

            v80 = *(v71 + 16);
            isUniquelyReferenced_nonNull_native = v80 + 1;
            if (v80 >= *(v71 + 24) >> 1)
            {
              sub_1C6FB1814();
              v71 = v86;
            }

            v68 &= v68 - 1;
            *(v71 + 16) = isUniquelyReferenced_nonNull_native;
            v81 = v71 + 16 * v80;
            *(v81 + 32) = v76;
            *(v81 + 40) = v78;
          }

          while (v68);
        }
      }

      v140 = v71;

      v87 = sub_1C75504DC();
      v88 = v148;
      v89 = *(v148 + 16);
      if (!v89)
      {
LABEL_120:

        v112 = *(v87 + 16);
        if (!v112)
        {

          v139 = MEMORY[0x1E69E7CC0];
LABEL_144:
          v150 = v140;
          sub_1C6FD2568(v139);
          sub_1C75504FC();
          sub_1C70401E8();

          return;
        }

        v152 = MEMORY[0x1E69E7CC0];
        sub_1C6F7ED9C(0, v112, 0, v108, v109, v110, v111);
        v113 = v152;
        v116 = sub_1C70D4544();
        v117 = 0;
        v118 = v87 + 64;
        v141 = v114;
        v142 = v112;
        while ((v116 & 0x8000000000000000) == 0 && v116 < 1 << *(v87 + 32))
        {
          v119 = v116 >> 6;
          if ((*(v118 + 8 * (v116 >> 6)) & (1 << v116)) == 0)
          {
            goto LABEL_153;
          }

          if (*(v87 + 36) != v114)
          {
            goto LABEL_154;
          }

          v149 = v114;
          v120 = (*(v87 + 48) + 16 * v116);
          v121 = *v120;
          v122 = v120[1];
          v146 = v115;
          if (*(*(v87 + 56) + 8 * v116) < 2)
          {
            sub_1C75504FC();
          }

          else
          {
            v150 = *v120;
            v151 = v122;
            swift_bridgeObjectRetain_n();
            MEMORY[0x1CCA5CD70](115, 0xE100000000000000);

            v121 = v150;
            v122 = v151;
          }

          v127 = v113;
          v152 = v113;
          v128 = *(v113 + 16);
          v129 = *(v127 + 24);
          isUniquelyReferenced_nonNull_native = v128 + 1;
          v130 = v149;
          if (v128 >= v129 >> 1)
          {
            sub_1C6F7ED9C(v129 > 1, v128 + 1, 1, v123, v124, v125, v126);
            v130 = v149;
            v127 = v152;
          }

          *(v127 + 16) = isUniquelyReferenced_nonNull_native;
          v131 = v127 + 16 * v128;
          *(v131 + 32) = v121;
          *(v131 + 40) = v122;
          v132 = 1 << *(v87 + 32);
          if (v116 >= v132)
          {
            goto LABEL_155;
          }

          v118 = v87 + 64;
          v133 = *(v87 + 64 + 8 * v119);
          if ((v133 & (1 << v116)) == 0)
          {
            goto LABEL_156;
          }

          v113 = v127;
          if (*(v87 + 36) != v130)
          {
            goto LABEL_157;
          }

          v134 = v133 & (-2 << (v116 & 0x3F));
          if (v134)
          {
            v132 = __clz(__rbit64(v134)) | v116 & 0x7FFFFFFFFFFFFFC0;
          }

          else
          {
            isUniquelyReferenced_nonNull_native = v119 << 6;
            v135 = v119 + 1;
            v136 = (v87 + 72 + 8 * v119);
            while (v135 < (v132 + 63) >> 6)
            {
              v138 = *v136++;
              v137 = v138;
              isUniquelyReferenced_nonNull_native += 64;
              ++v135;
              if (v138)
              {
                sub_1C6F9ED50(v116, v130, v146 & 1);
                v132 = __clz(__rbit64(v137)) + isUniquelyReferenced_nonNull_native;
                goto LABEL_141;
              }
            }

            sub_1C6F9ED50(v116, v130, v146 & 1);
          }

LABEL_141:
          v115 = 0;
          ++v117;
          v116 = v132;
          v114 = v141;
          if (v117 == v142)
          {

            v139 = v113;
            goto LABEL_144;
          }
        }

        goto LABEL_152;
      }

      v90 = 0;
      while (v90 < *(v88 + 16))
      {
        v91 = PHDetectionTypeDescription();
        v92 = sub_1C755068C();
        v94 = v93;

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v150 = v87;
        v95 = sub_1C6F78124(v92, v94);
        if (__OFADD__(*(v87 + 16), (v96 & 1) == 0))
        {
          goto LABEL_150;
        }

        v97 = v95;
        v98 = v96;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2151A8, &qword_1C755C750);
        v99 = sub_1C7551A2C();
        v87 = v150;
        if (v99)
        {
          v100 = sub_1C6F78124(v92, v94);
          if ((v98 & 1) != (v101 & 1))
          {
            goto LABEL_164;
          }

          v97 = v100;
        }

        if (v98)
        {
        }

        else
        {
          *(v87 + 8 * (v97 >> 6) + 64) |= 1 << v97;
          v102 = (*(v87 + 48) + 16 * v97);
          *v102 = v92;
          v102[1] = v94;
          *(*(v87 + 56) + 8 * v97) = 0;
          v103 = *(v87 + 16);
          v61 = __OFADD__(v103, 1);
          v104 = v103 + 1;
          if (v61)
          {
            goto LABEL_163;
          }

          *(v87 + 16) = v104;
        }

        v105 = *(v87 + 56);
        v106 = *(v105 + 8 * v97);
        v61 = __OFADD__(v106, 1);
        v107 = v106 + 1;
        v88 = v148;
        if (v61)
        {
          goto LABEL_151;
        }

        ++v90;
        *(v105 + 8 * v97) = v107;
        if (v89 == v90)
        {
          goto LABEL_120;
        }
      }
    }

    __break(1u);
LABEL_150:
    __break(1u);
LABEL_151:
    __break(1u);
LABEL_152:
    __break(1u);
LABEL_153:
    __break(1u);
LABEL_154:
    __break(1u);
LABEL_155:
    __break(1u);
LABEL_156:
    __break(1u);
LABEL_157:
    __break(1u);
    goto LABEL_158;
  }

  v3 = 0;
  v4 = *(v1 + OBJC_IVAR____TtC18PhotosIntelligence27DynamicLifeContextGenerator_personSummaries);
  v5 = v4 + 71;
  v6 = -*(v4 + 16);
  v144 = MEMORY[0x1E69E7CC0];
LABEL_3:
  for (i = (v5 + 40 * v3++); ; i += 40)
  {
    if (v6 + v3 == 1)
    {
      v26 = 0;
      isUniquelyReferenced_nonNull_native = *(v1 + OBJC_IVAR____TtC18PhotosIntelligence27DynamicLifeContextGenerator_petSummaries);
      v27 = *(isUniquelyReferenced_nonNull_native + 16);
      v28 = MEMORY[0x1E69E7CC0];
      v29 = v144;
LABEL_27:
      for (j = (isUniquelyReferenced_nonNull_native + 68 + 40 * v26); ; j += 40)
      {
        if (v27 == v26)
        {
          goto LABEL_58;
        }

        if (v26 >= *(isUniquelyReferenced_nonNull_native + 16))
        {
          goto LABEL_160;
        }

        v31 = *(j - 1);
        if (v31 == 4)
        {
          if (*j)
          {
            v32 = 4;
LABEL_36:
            v33 = v28;
            if (swift_isUniquelyReferenced_nonNull_native())
            {
              v28 = v33;
            }

            else
            {
              sub_1C6FB2798(0, *(v33 + 16) + 1, 1, v33);
              v28 = v36;
            }

            v35 = *(v28 + 16);
            v34 = *(v28 + 24);
            if (v35 >= v34 >> 1)
            {
              sub_1C6FB2798(v34 > 1, v35 + 1, 1, v28);
              v28 = v37;
            }

            ++v26;
            *(v28 + 16) = v35 + 1;
            *(v28 + 2 * v35 + 32) = v32;
            goto LABEL_27;
          }
        }

        else if (((v31 == 3) & *j) != 0)
        {
          v32 = 3;
          goto LABEL_36;
        }

        ++v26;
      }
    }

    if ((v3 - 1) >= *(v4 + 16))
    {
      break;
    }

    isUniquelyReferenced_nonNull_native = *(i - 5);
    if (isUniquelyReferenced_nonNull_native != 18)
    {
      v8 = *i;
      v9 = *(i - 1);
      LOBYTE(v150) = *(i - 5);
      sub_1C75504FC();
      sub_1C75504FC();
      v10 = sub_1C73CE308(&v150, v8, v9);

      if (v10)
      {
        v11 = v144;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1C6FB27C0();
          v11 = v13;
        }

        v5 = v4 + 71;
        v12 = *(v11 + 16);
        if (v12 >= *(v11 + 24) >> 1)
        {
          sub_1C6FB27C0();
          v11 = v14;
        }

        *(v11 + 16) = v12 + 1;
        v144 = v11;
        *(v11 + v12 + 32) = isUniquelyReferenced_nonNull_native;
        goto LABEL_3;
      }
    }

    ++v3;
  }

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
  sub_1C7551E4C();
  __break(1u);

  __break(1u);
}

void sub_1C73CCE24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = 0;
  v9 = *(a1 + 16);
  v10 = a1 + 32;
  v11 = MEMORY[0x1E69E7CC0];
  v12 = MEMORY[0x1E69E7CC0];
LABEL_2:
  v13 = (v10 + 56 * v8);
  while (v9 != v8)
  {
    if (v8 >= v9)
    {
      __break(1u);
LABEL_22:
      __break(1u);

      __break(1u);
      return;
    }

    v14 = v13[1];
    v35 = *v13;
    v36 = v14;
    v37 = v13[2];
    v38 = *(v13 + 6);
    v15 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      goto LABEL_22;
    }

    if (BYTE8(v37))
    {
      sub_1C70260B4(&v35, v34);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v39 = v12;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1C716DD2C();
        v12 = v39;
      }

      v17 = v12[2];
      v7 = (v17 + 1);
      if (v17 >= v12[3] >> 1)
      {
        sub_1C716DD2C();
        v12 = v39;
      }

      v12[2] = v7;
      v18 = &v12[7 * v17];
      v19 = v35;
      v20 = v36;
      v21 = v37;
      v18[10] = v38;
      *(v18 + 3) = v20;
      *(v18 + 4) = v21;
      *(v18 + 2) = v19;
      v8 = v15;
      goto LABEL_2;
    }

    ++v8;
    v13 = (v13 + 56);
  }

  v22 = v12[2];
  if (v22)
  {
    *&v35 = v11;
    sub_1C6F7ED9C(0, v22, 0, a4, a5, a6, a7);
    v23 = v35;
    v24 = v12 + 7;
    do
    {
      v26 = *(v24 - 1);
      v25 = *v24;
      *&v35 = v23;
      v27 = *(v23 + 16);
      v28 = *(v23 + 24);
      sub_1C75504FC();
      if (v27 >= v28 >> 1)
      {
        sub_1C6F7ED9C(v28 > 1, v27 + 1, 1, v29, v30, v31, v32);
        v23 = v35;
      }

      *(v23 + 16) = v27 + 1;
      v33 = v23 + 16 * v27;
      *(v33 + 32) = v26;
      *(v33 + 40) = v25;
      v24 += 7;
      --v22;
    }

    while (v22);
  }

  else
  {

    v23 = MEMORY[0x1E69E7CC0];
  }

  *&v35 = v23;
  sub_1C75504FC();
  sub_1C70401E8();
}

void sub_1C73CD040(unsigned __int8 *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, unsigned __int8 *a6, uint64_t a7)
{
  v80 = a2;
  v77 = a7;
  v79 = a3;
  sub_1C754F2FC();
  OUTLINED_FUNCTION_3_0();
  v82 = v11;
  v83 = v12;
  MEMORY[0x1EEE9AC00](v11);
  v76 = &v67 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v67 - v15;
  v17 = sub_1C754F38C();
  OUTLINED_FUNCTION_3_0();
  v19 = v18;
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_14_0();
  v23 = v22 - v21;
  LODWORD(v78) = *a1;
  LODWORD(v75) = *a6;
  __swift_project_boxed_opaque_existential_1(a4, a4[3]);
  sub_1C754F1CC();
  v24 = v81;
  sub_1C754F2CC();
  v25 = v24;
  if (v24)
  {
    v81 = v24;
    OUTLINED_FUNCTION_70(a4, a4[3]);
    sub_1C754F1AC();
    (*(v19 + 8))(v23, v17);
    (*(v83 + 8))(a5, v82);
    return;
  }

  v26 = v16;
  v27 = v78;
  v72 = v17;
  v73 = a4;
  v70 = v19;
  v71 = v23;
  v28 = v83;
  v74 = a5;
  if (v80 <= 0)
  {
    v33 = sub_1C73CE364();
    v34 = OUTLINED_FUNCTION_166_0(&type metadata for DynamicLifeContextGenerator.Error, v33);
    *v35 = 0;
    v81 = v34;
    swift_willThrow();
    goto LABEL_6;
  }

  v29 = v26;
  sub_1C754F2BC();
  v92 = v27;
  v30 = v76;
  (*(v28 + 32))(v76, v29, v82);
  v91 = v75;
  v31 = v30;
  v32 = v77;
  sub_1C73CB6F0(&v92, v79, v73, v31, &v91, __src);
  memcpy(v89, __src, sizeof(v89));
  LOBYTE(v88[0]) = v27;
  v38 = sub_1C73CDFA0(v88);
  v78 = v39;
  v88[20] = 0;
  v88[21] = 0xE000000000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21B418, &qword_1C7587AF0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C755BAA0;
  OUTLINED_FUNCTION_30();
  v41 = swift_allocObject();
  *(v41 + 16) = sub_1C73CE97C;
  *(v41 + 24) = v32;
  *(inited + 32) = sub_1C73CE970;
  *(inited + 40) = v41;
  v42 = inited + 40;
  OUTLINED_FUNCTION_30();
  v43 = swift_allocObject();
  *(v43 + 16) = sub_1C73CE974;
  *(v43 + 24) = v32;
  *(inited + 48) = sub_1C73CE970;
  *(inited + 56) = v43;
  OUTLINED_FUNCTION_30();
  v44 = swift_allocObject();
  *(v44 + 16) = sub_1C73CE978;
  *(v44 + 24) = v32;
  *(inited + 64) = sub_1C73CE970;
  *(inited + 72) = v44;
  v67 = inited;
  swift_retain_n();
  v81 = 0;
  for (i = 1; ; ++i)
  {
    if (i == 4)
    {
LABEL_25:
      sub_1C730BAFC(v89);
      swift_setDeallocating();
      sub_1C6FDE6C8();
      sub_1C754F2EC();
      v81 = v25;
      OUTLINED_FUNCTION_70(v73, v73[3]);
      v63 = v71;
      sub_1C754F1AC();
      (*(v70 + 8))(v63, v72);
      return;
    }

    v46 = v25;
    v47 = *(v42 - 8);
    memcpy(v88, v89, 0x50uLL);
    v48 = v38;
    v86 = v38;
    v87 = v78;

    v47(&v84, &v86, v88, v79);

    v49 = v85;
    if (!v85)
    {
      v25 = v46;
      goto LABEL_24;
    }

    if (v84 || v85 != 0xE000000000000000)
    {
      break;
    }

    v50 = 0;
    v51 = v80;
LABEL_20:
    v62 = &v50[v81];
    if (__OFADD__(v81, v50))
    {
      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
      return;
    }

    if (v62 <= v51)
    {
      MEMORY[0x1CCA5CD70]();
      v51 = v80;
      v81 = v62;
    }

    v25 = v46;
    if (v81 == v51)
    {
      goto LABEL_25;
    }

LABEL_24:
    sub_1C754F2DC();
    v42 += 16;
    v38 = v48;
  }

  v77 = v84;
  if (sub_1C7551DBC())
  {
    v50 = 0;
    v51 = v80;
    goto LABEL_20;
  }

  v52 = objc_allocWithZone(MEMORY[0x1E696AE70]);
  v53 = sub_1C71C8B80(0x5A2D417A2D615E5BLL, 0xED00005D20392D30, 0);
  if (!v53)
  {
    goto LABEL_27;
  }

  v54 = objc_allocWithZone(MEMORY[0x1E696AE70]);
  v55 = sub_1C71C8B80(0x5D275C090A5BLL, 0xE600000000000000, 0);
  if (v55)
  {
    v76 = v53;
    v46 = 0;
    v88[0] = v77;
    v88[1] = v49;
    v86 = 32;
    v87 = 0xE100000000000000;
    v69 = v55;
    sub_1C6FB5E8C();
    v75 = *(sub_1C755152C() + 16);

    sub_1C75507FC();
    v56 = sub_1C755065C();
    v68 = OUTLINED_FUNCTION_15_74(v76, sel_numberOfMatchesInString_options_range_);

    v57 = sub_1C755065C();
    v58 = v69;
    v59 = OUTLINED_FUNCTION_15_74(v69, sel_numberOfMatchesInString_options_range_);

    v60 = &v68[v75];
    if (__OFADD__(v75, v68))
    {
      goto LABEL_29;
    }

    v61 = __OFADD__(v60, v59);
    v50 = &v59[v60];
    if (v61)
    {
      goto LABEL_30;
    }

    v51 = v80;
    v28 = v83;
    goto LABEL_20;
  }

LABEL_27:
  v64 = sub_1C7196EF4();
  v65 = OUTLINED_FUNCTION_166_0(&type metadata for StoryGenerationUtilities.Error, v64);
  *v66 = 0;
  *(v66 + 8) = 2;
  v81 = v65;
  swift_willThrow();

  sub_1C730BAFC(v89);
  swift_setDeallocating();
  sub_1C6FDE6C8();
LABEL_6:
  OUTLINED_FUNCTION_1_125(v73);
  v36 = OUTLINED_FUNCTION_2_118();
  v37(v36);
  (*(v28 + 8))(v74, v82);
}

void *sub_1C73CD8BC(unsigned __int8 *a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, __n128), uint64_t a4, uint64_t a5, void *a6, uint64_t a7, unsigned __int8 *a8)
{
  v70 = a2;
  v65 = a4;
  v74 = a7;
  v69 = a5;
  v64 = a3;
  sub_1C754F2FC();
  OUTLINED_FUNCTION_3_0();
  v72 = v12;
  v73 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v60 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v60 - v16;
  v18 = sub_1C754F38C();
  OUTLINED_FUNCTION_3_0();
  v20 = v19;
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_14_0();
  v24 = (v23 - v22);
  LODWORD(v68) = *a1;
  LODWORD(v67) = *a8;
  __swift_project_boxed_opaque_existential_1(a6, a6[3]);
  v25 = v74;
  sub_1C754F1CC();
  v26 = v71;
  sub_1C754F2CC();
  v71 = v26;
  if (v26)
  {
    OUTLINED_FUNCTION_70(a6, a6[3]);
    OUTLINED_FUNCTION_16_60(v24);
    (*(v20 + 8))(v24, v18);
    (*(v72 + 8))(v25, v73);
    return a6;
  }

  v27 = v67;
  v28 = v17;
  v29 = v68;
  v62 = v20;
  v63 = a6;
  v60 = v24;
  v61 = v18;
  if (v70 < 1)
  {
    v42 = sub_1C73CE364();
    OUTLINED_FUNCTION_166_0(&type metadata for DynamicLifeContextGenerator.Error, v42);
    *v43 = 0;
    swift_willThrow();
    OUTLINED_FUNCTION_70(v63, v63[3]);
    a6 = v60;
    OUTLINED_FUNCTION_16_60(v60);
    (*(v62 + 8))(a6, v61);
    (*(v72 + 8))(v74, v73);
    return a6;
  }

  v30 = v28;
  sub_1C754F2BC();
  v84 = v29;
  v31 = v72;
  v32 = v14;
  (*(v72 + 32))(v14, v30, v73);
  v83 = v27;
  v33 = v63;
  v34 = v32;
  v35 = v66;
  v36 = v71;
  sub_1C73CB6F0(&v84, v69, v63, v34, &v83, __src);
  v38 = v61;
  v37 = v62;
  if (v36)
  {
    OUTLINED_FUNCTION_70(v33, v33[3]);
    v39 = v38;
    v40 = v60;
    OUTLINED_FUNCTION_16_60(v60);
    v41 = *(v37 + 8);
    a6 = (v37 + 8);
    v41(v40, v39);
    (*(v31 + 8))(v74, v73);
    return a6;
  }

  memcpy(v81, __src, sizeof(v81));
  v78[0] = v29;
  v44 = sub_1C73CDFA0(v78);
  v47 = v46;
  v68 = v44;
  v79 = 0;
  v80 = 0xE000000000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21B418, &qword_1C7587AF0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C755BAA0;
  OUTLINED_FUNCTION_30();
  v49 = swift_allocObject();
  *(v49 + 16) = sub_1C73CE454;
  *(v49 + 24) = v35;
  *(inited + 32) = sub_1C73CE498;
  *(inited + 40) = v49;
  v50 = inited + 40;
  OUTLINED_FUNCTION_30();
  v51 = swift_allocObject();
  *(v51 + 16) = sub_1C73CE49C;
  *(v51 + 24) = v35;
  *(inited + 48) = sub_1C73CE970;
  *(inited + 56) = v51;
  OUTLINED_FUNCTION_30();
  v52 = swift_allocObject();
  *(v52 + 16) = sub_1C73CE4A4;
  *(v52 + 24) = v35;
  *(inited + 64) = sub_1C73CE970;
  *(inited + 72) = v52;
  v67 = inited;
  swift_retain_n();
  v71 = 0;
  for (i = 1; ; ++i)
  {
    if (i == 4)
    {
LABEL_16:
      sub_1C730BAFC(v81);
      swift_setDeallocating();
      sub_1C6FDE6C8();
      sub_1C754F2EC();
      a6 = v79;
      OUTLINED_FUNCTION_70(v33, v33[3]);
      v59 = v60;
      sub_1C754F1AC();
      (*(v62 + 8))(v59, v61);
      return a6;
    }

    v54 = *(v50 - 8);
    memcpy(v78, v81, 0x50uLL);
    v77[0] = v68;
    v77[1] = v47;

    v54(&v75, v77, v78, v69);

    v55 = v76;
    if (v76)
    {
      break;
    }

LABEL_15:
    sub_1C754F2DC();
    v50 += 16;
  }

  v56 = v75;
  result = (v64)(v75, v76);
  v57 = result + v71;
  if (!__OFADD__(v71, result))
  {
    v58 = v70;
    if (v57 <= v70)
    {
      MEMORY[0x1CCA5CD70](v56, v55);
      v58 = v70;
      v71 = v57;
    }

    v33 = v63;
    if (v71 == v58)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  __break(1u);
  return result;
}

ValueMetadata *sub_1C73CDFA0(unsigned __int8 *a1)
{
  v1 = *a1;
  result = &type metadata for StoryGenerationStrings.DynamicLifeContextForGlobalTraitsGeneration;
  switch(v1)
  {
    case 1:
      return result;
    case 2:
    case 3:
      result = &type metadata for StoryGenerationStrings.DynamicLifeContextForStoryGeneration;
      break;
    default:
      sub_1C73CE364();
      swift_allocError();
      *v3 = 1;
      result = swift_willThrow();
      break;
  }

  return result;
}

uint64_t sub_1C73CE09C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a3 + 8);
  v9 = *(v4 + OBJC_IVAR____TtC18PhotosIntelligence27DynamicLifeContextGenerator_shufflePromptParameters);
  v10 = (*(a2 + 56))(*(a3 + 32), a4, v9, a1, a2);
  v12 = v11;
  v13 = (*(a2 + 64))(v8, a4, v9, a1, a2);
  v15 = (*(a2 + 72))(v10, v12, v13, v14, a1, a2);

  return v15;
}

uint64_t DynamicLifeContextGenerator.deinit()
{
  v1 = OBJC_IVAR____TtC18PhotosIntelligence27DynamicLifeContextGenerator_logger;
  sub_1C754FF1C();
  OUTLINED_FUNCTION_3();
  (*(v2 + 8))(v0 + v1);

  return v0;
}

uint64_t DynamicLifeContextGenerator.__deallocating_deinit()
{
  DynamicLifeContextGenerator.deinit();

  return swift_deallocClassInstance();
}

BOOL sub_1C73CE308(char *a1, char a2, char a3)
{
  if (a2)
  {
    return 0;
  }

  v4 = *a1;
  return ((sub_1C6FA0848(*a1, 2) & 1) == 0 || (a3 & 1) != 0) && !sub_1C705D5AC(v4, &unk_1F469EDE0);
}

unint64_t sub_1C73CE364()
{
  result = qword_1EC21B410;
  if (!qword_1EC21B410)
  {
    result = swift_getWitnessTable(byte_1C7587D08, &type metadata for DynamicLifeContextGenerator.Error, v0, v1);
    atomic_store(result, &qword_1EC21B410);
  }

  return result;
}

unint64_t sub_1C73CE3F0()
{
  result = qword_1EDD06AA0;
  if (!qword_1EDD06AA0)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC217A00, &qword_1C755BD70);
    result = swift_getWitnessTable(MEMORY[0x1E69E6328], v3, v0, v1);
    atomic_store(result, &qword_1EDD06AA0);
  }

  return result;
}

unint64_t sub_1C73CE4B0()
{
  result = qword_1EC21B420;
  if (!qword_1EC21B420)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for DynamicLifeContextGenerator.CharacterSourceForLifeContext, &type metadata for DynamicLifeContextGenerator.CharacterSourceForLifeContext, v0, v1);
    atomic_store(result, &qword_1EC21B420);
  }

  return result;
}

uint64_t type metadata accessor for DynamicLifeContextGenerator(uint64_t a1)
{
  result = qword_1EDD08F70;
  if (!qword_1EDD08F70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C73CE558(uint64_t a1)
{
  result = sub_1C754FF1C();
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

_BYTE *storeEnumTagSinglePayload for DynamicLifeContextGenerator.Options(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_1C73CE7A4(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C73CE884()
{
  result = qword_1EC21B428;
  if (!qword_1EC21B428)
  {
    result = swift_getWitnessTable(aI_17, &type metadata for DynamicLifeContextGenerator.Error, v0, v1);
    atomic_store(result, &qword_1EC21B428);
  }

  return result;
}

uint64_t sub_1C73CE8D8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  result = (*(v4 + 16))(*a1, a1[1], a2, a3);
  *a4 = result;
  a4[1] = v7;
  return result;
}

unint64_t sub_1C73CE918()
{
  result = qword_1EDD08BE0;
  if (!qword_1EDD08BE0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for StoryPersonRelationshipType, &type metadata for StoryPersonRelationshipType, v0, v1);
    atomic_store(result, &qword_1EDD08BE0);
  }

  return result;
}

uint64_t LLMSamplingParameters.init(temperature:strategy:maxTokens:randomSeed:)@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X8>)
{
  v8 = *a3;
  v9 = *(a3 + 8);
  *a8 = result;
  *(a8 + 8) = a2 & 1;
  *(a8 + 16) = v8;
  *(a8 + 24) = v9;
  *(a8 + 32) = a4;
  *(a8 + 40) = a5 & 1;
  *(a8 + 48) = a6;
  *(a8 + 56) = a7 & 1;
  return result;
}

uint64_t static LLMSamplingParameters.SamplingStrategy.topK(_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = 1;
  return result;
}

uint64_t static LLMSamplingParameters.SamplingStrategy.Choice.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*(a1 + 8))
  {
    if (*&v2 == *&v3)
    {
      return *(a2 + 8);
    }

    else
    {
      return 0;
    }
  }

  else if ((*(a2 + 8) & 1) != 0 || v2 != v3)
  {
    return OUTLINED_FUNCTION_5_9();
  }

  else
  {
    return OUTLINED_FUNCTION_10_6();
  }
}

uint64_t sub_1C73CEA54(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1349545844 && a2 == 0xE400000000000000;
  if (v3 || (sub_1C7551DBC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1265659764 && a2 == 0xE400000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1C7551DBC();

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

uint64_t sub_1C73CEB24(char a1)
{
  if (a1)
  {
    return 1265659764;
  }

  else
  {
    return 1349545844;
  }
}

uint64_t sub_1C73CEB44(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x746E756F63 && a2 == 0xE500000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1C7551DBC();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1C73CEBCC(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1C7551DBC();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1C73CEC5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C73CEA54(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C73CEC84(uint64_t a1)
{
  v2 = sub_1C73CF0FC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C73CECC0(uint64_t a1)
{
  v2 = sub_1C73CF0FC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C73CED00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C73CEB44(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1C73CED2C(uint64_t a1)
{
  v2 = sub_1C73CF150();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C73CED68(uint64_t a1)
{
  v2 = sub_1C73CF150();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C73CEDA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C73CEBCC(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1C73CEDD4(uint64_t a1)
{
  v2 = sub_1C73CF1A4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C73CEE10(uint64_t a1)
{
  v2 = sub_1C73CF1A4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t LLMSamplingParameters.SamplingStrategy.Choice.encode(to:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21B438, &qword_1C7587D50);
  OUTLINED_FUNCTION_3_0();
  v25 = v5;
  v26 = v4;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v6);
  v24 = &v22 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21B440, &qword_1C7587D58);
  OUTLINED_FUNCTION_3_0();
  v22 = v9;
  v23 = v8;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v22 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21B448, &qword_1C7587D60);
  OUTLINED_FUNCTION_3_0();
  v15 = v14;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_389();
  v27 = *v1;
  v17 = *(v1 + 8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C73CF0FC();
  sub_1C755200C();
  if (v17)
  {
    v29 = 1;
    sub_1C73CF150();
    v18 = v24;
    OUTLINED_FUNCTION_7_88();
    sub_1C7551C6C();
    v19 = v26;
    sub_1C7551D0C();
    (*(v25 + 8))(v18, v19);
  }

  else
  {
    v28 = 0;
    sub_1C73CF1A4();
    OUTLINED_FUNCTION_7_88();
    sub_1C7551C6C();
    v20 = v23;
    sub_1C7551CEC();
    (*(v22 + 8))(v12, v20);
  }

  return (*(v15 + 8))(v2, v13);
}

unint64_t sub_1C73CF0FC()
{
  result = qword_1EDD09F90;
  if (!qword_1EDD09F90)
  {
    result = swift_getWitnessTable(byte_1C75884D4, &type metadata for LLMSamplingParameters.SamplingStrategy.Choice.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EDD09F90);
  }

  return result;
}

unint64_t sub_1C73CF150()
{
  result = qword_1EDD09F68;
  if (!qword_1EDD09F68)
  {
    result = swift_getWitnessTable(a5_5, &type metadata for LLMSamplingParameters.SamplingStrategy.Choice.TopKCodingKeys, v0, v1);
    atomic_store(result, &qword_1EDD09F68);
  }

  return result;
}

unint64_t sub_1C73CF1A4()
{
  result = qword_1EC21B450;
  if (!qword_1EC21B450)
  {
    result = swift_getWitnessTable(byte_1C7588434, &type metadata for LLMSamplingParameters.SamplingStrategy.Choice.TopPCodingKeys, v0, v1);
    atomic_store(result, &qword_1EC21B450);
  }

  return result;
}

uint64_t LLMSamplingParameters.SamplingStrategy.Choice.hash(into:)()
{
  v1 = *v0;
  if (v0[1])
  {
    MEMORY[0x1CCA5E460](1);
    return MEMORY[0x1CCA5E460](v1);
  }

  else
  {
    MEMORY[0x1CCA5E460](0);
    if ((v1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v3 = v1;
    }

    else
    {
      v3 = 0;
    }

    return MEMORY[0x1CCA5E4A0](v3);
  }
}

uint64_t LLMSamplingParameters.SamplingStrategy.Choice.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_1C7551F3C();
  if (v2)
  {
    MEMORY[0x1CCA5E460](1);
    MEMORY[0x1CCA5E460](v1);
  }

  else
  {
    MEMORY[0x1CCA5E460](0);
    if ((v1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v3 = v1;
    }

    else
    {
      v3 = 0;
    }

    MEMORY[0x1CCA5E4A0](v3);
  }

  return sub_1C7551FAC();
}

uint64_t LLMSamplingParameters.SamplingStrategy.Choice.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v55 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21B458, &qword_1C7587D68);
  OUTLINED_FUNCTION_3_0();
  v52 = v4;
  v53 = v5;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v46[-v7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21B460, &qword_1C7587D70);
  OUTLINED_FUNCTION_3_0();
  v51 = v9;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_389();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21B468, &unk_1C7587D78);
  OUTLINED_FUNCTION_3_0();
  v54 = v12;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v46[-v14];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C73CF0FC();
  v16 = v56;
  sub_1C7551FFC();
  if (v16)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v49 = v2;
  v50 = v8;
  v56 = a1;
  v17 = v55;
  v18 = v15;
  sub_1C7551C5C();
  result = sub_1C6FD80E0();
  if (v21 == v22 >> 1)
  {
    goto LABEL_8;
  }

  v48 = 0;
  if (v21 < (v22 >> 1))
  {
    v23 = *(v20 + v21);
    sub_1C6FD80C8();
    v25 = v24;
    v27 = v26;
    swift_unknownObjectRelease();
    if (v25 == v27 >> 1)
    {
      v47 = v23;
      if (v23)
      {
        v58 = 1;
        sub_1C73CF150();
        OUTLINED_FUNCTION_12_71();
        v28 = v48;
        sub_1C7551B4C();
        if (!v28)
        {
          v35 = sub_1C7551BFC();
          swift_unknownObjectRelease();
          v36 = OUTLINED_FUNCTION_6_99();
          v37(v36);
          v38 = OUTLINED_FUNCTION_3_106();
          v39(v38);
LABEL_13:
          *v17 = v35;
          *(v17 + 8) = v47;
          return __swift_destroy_boxed_opaque_existential_1(v56);
        }
      }

      else
      {
        v57 = 0;
        sub_1C73CF1A4();
        v32 = v48;
        OUTLINED_FUNCTION_12_71();
        sub_1C7551B4C();
        if (!v32)
        {
          sub_1C7551BDC();
          v41 = v40;
          swift_unknownObjectRelease();
          v42 = OUTLINED_FUNCTION_6_99();
          v43(v42);
          v44 = OUTLINED_FUNCTION_3_106();
          v45(v44);
          v35 = v41;
          goto LABEL_13;
        }
      }

      v33 = OUTLINED_FUNCTION_3_106();
      v34(v33);
      swift_unknownObjectRelease();
      a1 = v56;
      return __swift_destroy_boxed_opaque_existential_1(a1);
    }

LABEL_8:
    v29 = sub_1C75518EC();
    swift_allocError();
    v31 = v30;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215490, &qword_1C7560600);
    *v31 = &type metadata for LLMSamplingParameters.SamplingStrategy.Choice;
    sub_1C7551B5C();
    sub_1C75518DC();
    (*(*(v29 - 8) + 104))(v31, *MEMORY[0x1E69E6AF8], v29);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v54 + 8))(v18, v11);
    a1 = v56;
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C73CF7EC(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  sub_1C7551F3C();
  if (v3)
  {
    MEMORY[0x1CCA5E460](1);
    MEMORY[0x1CCA5E460](v2);
  }

  else
  {
    MEMORY[0x1CCA5E460](0);
    if ((v2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v4 = v2;
    }

    else
    {
      v4 = 0;
    }

    MEMORY[0x1CCA5E4A0](v4);
  }

  return sub_1C7551FAC();
}

uint64_t static LLMSamplingParameters.SamplingStrategy.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (*&v2 != *&v3)
    {
      v4 = 0;
    }

    if ((v4 & 1) == 0)
    {
      return OUTLINED_FUNCTION_5_9();
    }
  }

  else
  {
    if (v2 != v3)
    {
      v4 = 1;
    }

    if (v4)
    {
      return OUTLINED_FUNCTION_5_9();
    }
  }

  return OUTLINED_FUNCTION_10_6();
}

uint64_t sub_1C73CF8B0(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6563696F6863 && a2 == 0xE600000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1C7551DBC();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1C73CF93C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C73CF8B0(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1C73CF968(uint64_t a1)
{
  v2 = sub_1C73D0438();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C73CF9A4(uint64_t a1)
{
  v2 = sub_1C73D0438();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void LLMSamplingParameters.SamplingStrategy.encode(to:)()
{
  OUTLINED_FUNCTION_124();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21B470, &qword_1C7587D88);
  OUTLINED_FUNCTION_3_0();
  v5 = v4;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v11 - v7;
  v9 = *v0;
  v10 = *(v0 + 8);
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_1C73D0438();
  sub_1C755200C();
  v11 = v9;
  v12 = v10;
  sub_1C73D048C();
  sub_1C7551D2C();
  (*(v5 + 8))(v8, v3);
  OUTLINED_FUNCTION_125();
}

void LLMSamplingParameters.SamplingStrategy.init(from:)()
{
  OUTLINED_FUNCTION_124();
  v3 = v2;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21B478, &qword_1C7587D90);
  OUTLINED_FUNCTION_3_0();
  v8 = v7;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_389();
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  v10 = sub_1C73D0438();
  OUTLINED_FUNCTION_9_85(&type metadata for LLMSamplingParameters.SamplingStrategy.CodingKeys, v11, v10);
  if (!v0)
  {
    sub_1C73D04E0();
    sub_1C7551C1C();
    (*(v8 + 8))(v1, v6);
    *v5 = v12;
    *(v5 + 8) = v13;
  }

  __swift_destroy_boxed_opaque_existential_1(v3);
  OUTLINED_FUNCTION_125();
}

uint64_t static LLMSamplingParameters.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);
  if (*(a1 + 8))
  {
    if (!*(a2 + 8))
    {
      return OUTLINED_FUNCTION_5_9();
    }
  }

  else
  {
    if (*a1 == *a2)
    {
      v10 = *(a2 + 8);
    }

    else
    {
      v10 = 1;
    }

    if (v10)
    {
      return OUTLINED_FUNCTION_5_9();
    }
  }

  if (v3 == 255)
  {
    if (v9 == 255)
    {
      goto LABEL_18;
    }

    return OUTLINED_FUNCTION_5_9();
  }

  if (v9 == 255)
  {
    return OUTLINED_FUNCTION_5_9();
  }

  result = 0;
  if (v3)
  {
    if ((v9 & 1) == 0 || *&v2 != *&v8)
    {
      return result;
    }

LABEL_18:
    if (v5)
    {
      if (!*(a2 + 40))
      {
        return OUTLINED_FUNCTION_5_9();
      }
    }

    else
    {
      if (v4 == *(a2 + 32))
      {
        v12 = *(a2 + 40);
      }

      else
      {
        v12 = 1;
      }

      if (v12)
      {
        return OUTLINED_FUNCTION_5_9();
      }
    }

    if (v7)
    {
      if ((*(a2 + 56) & 1) == 0)
      {
        return OUTLINED_FUNCTION_5_9();
      }
    }

    else
    {
      if (v6 == *(a2 + 48))
      {
        v13 = *(a2 + 56);
      }

      else
      {
        v13 = 1;
      }

      if (v13)
      {
        return OUTLINED_FUNCTION_5_9();
      }
    }

    return OUTLINED_FUNCTION_10_6();
  }

  if ((v9 & 1) == 0 && v2 == v8)
  {
    goto LABEL_18;
  }

  return result;
}

uint64_t sub_1C73CFD5C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x74617265706D6574 && a2 == 0xEB00000000657275;
  if (v4 || (sub_1C7551DBC() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x7967657461727473 && a2 == 0xE800000000000000;
    if (v6 || (sub_1C7551DBC() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6E656B6F5478616DLL && a2 == 0xE900000000000073;
      if (v7 || (sub_1C7551DBC() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x65536D6F646E6172 && a2 == 0xEA00000000006465)
      {

        return 3;
      }

      else
      {
        v9 = sub_1C7551DBC();

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

uint64_t sub_1C73CFEC8(char a1)
{
  result = 0x74617265706D6574;
  switch(a1)
  {
    case 1:
      result = 0x7967657461727473;
      break;
    case 2:
      result = 0x6E656B6F5478616DLL;
      break;
    case 3:
      result = 0x65536D6F646E6172;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C73CFF64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C73CFD5C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C73CFF8C(uint64_t a1)
{
  v2 = sub_1C73D0534();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C73CFFC8(uint64_t a1)
{
  v2 = sub_1C73D0534();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void LLMSamplingParameters.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, __int16 a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_124();
  v41 = v25;
  v27 = v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21B488, &qword_1C7587D98);
  OUTLINED_FUNCTION_3_0();
  v30 = v29;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v31);
  v33 = v36 - v32;
  v34 = *(v24 + 16);
  v44 = *(v24 + 24);
  v39 = *(v24 + 32);
  v40 = v34;
  v38 = *(v24 + 40);
  v37 = *(v24 + 48);
  v36[1] = *(v24 + 56);
  __swift_project_boxed_opaque_existential_1(v27, v27[3]);
  sub_1C73D0534();
  sub_1C755200C();
  v35 = v41;
  sub_1C7551C9C();
  if (!v35)
  {
    v42 = v40;
    v43 = v44;
    sub_1C73D0588();
    sub_1C7551CBC();
    sub_1C7551CAC();
    sub_1C7551CAC();
  }

  (*(v30 + 8))(v33, v28);
  OUTLINED_FUNCTION_125();
}

void LLMSamplingParameters.init(from:)()
{
  OUTLINED_FUNCTION_124();
  v3 = v2;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21B490, &qword_1C7587DA0);
  OUTLINED_FUNCTION_3_0();
  v8 = v7;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_389();
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  v10 = sub_1C73D0534();
  OUTLINED_FUNCTION_9_85(&type metadata for LLMSamplingParameters.CodingKeys, v11, v10);
  if (!v0)
  {
    LOBYTE(v19) = 0;
    OUTLINED_FUNCTION_2_119();
    v12 = sub_1C7551B8C();
    v22 = v13 & 1;
    sub_1C73D05DC();
    OUTLINED_FUNCTION_7_88();
    sub_1C7551BAC();
    OUTLINED_FUNCTION_2_119();
    v18 = sub_1C7551B9C();
    v21 = v14 & 1;
    OUTLINED_FUNCTION_2_119();
    v15 = sub_1C7551B9C();
    v17 = v16;
    (*(v8 + 8))(v1, v6);
    *v5 = v12;
    *(v5 + 8) = v22;
    *(v5 + 16) = v19;
    *(v5 + 24) = v20;
    *(v5 + 32) = v18;
    *(v5 + 40) = v21;
    *(v5 + 48) = v15;
    *(v5 + 56) = v17 & 1;
  }

  __swift_destroy_boxed_opaque_existential_1(v3);
  OUTLINED_FUNCTION_125();
}

unint64_t sub_1C73D0438()
{
  result = qword_1EDD09FA8;
  if (!qword_1EDD09FA8)
  {
    result = swift_getWitnessTable(byte_1C75883E4, &type metadata for LLMSamplingParameters.SamplingStrategy.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EDD09FA8);
  }

  return result;
}

unint64_t sub_1C73D048C()
{
  result = qword_1EDD09F50;
  if (!qword_1EDD09F50)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for LLMSamplingParameters.SamplingStrategy.Choice, &type metadata for LLMSamplingParameters.SamplingStrategy.Choice, v0, v1);
    atomic_store(result, &qword_1EDD09F50);
  }

  return result;
}

unint64_t sub_1C73D04E0()
{
  result = qword_1EC21B480;
  if (!qword_1EC21B480)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for LLMSamplingParameters.SamplingStrategy.Choice, &type metadata for LLMSamplingParameters.SamplingStrategy.Choice, v0, v1);
    atomic_store(result, &qword_1EC21B480);
  }

  return result;
}

unint64_t sub_1C73D0534()
{
  result = qword_1EDD09FC0;
  if (!qword_1EDD09FC0)
  {
    result = swift_getWitnessTable(asc_1C7588394, &type metadata for LLMSamplingParameters.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EDD09FC0);
  }

  return result;
}

unint64_t sub_1C73D0588()
{
  result = qword_1EDD09F48;
  if (!qword_1EDD09F48)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for LLMSamplingParameters.SamplingStrategy, &type metadata for LLMSamplingParameters.SamplingStrategy, v0, v1);
    atomic_store(result, &qword_1EDD09F48);
  }

  return result;
}

unint64_t sub_1C73D05DC()
{
  result = qword_1EC21B498;
  if (!qword_1EC21B498)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for LLMSamplingParameters.SamplingStrategy, &type metadata for LLMSamplingParameters.SamplingStrategy, v0, v1);
    atomic_store(result, &qword_1EC21B498);
  }

  return result;
}

unint64_t sub_1C73D0634()
{
  result = qword_1EC21B4A0;
  if (!qword_1EC21B4A0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for LLMSamplingParameters.SamplingStrategy.Choice, &type metadata for LLMSamplingParameters.SamplingStrategy.Choice, v0, v1);
    atomic_store(result, &qword_1EC21B4A0);
  }

  return result;
}

uint64_t sub_1C73D0688(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 57))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 24);
      if (v3 <= 1)
      {
        v2 = -1;
      }

      else
      {
        v2 = (v3 ^ 0xFF) - 1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C73D06CC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 57) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 57) = 0;
    }

    if (a2)
    {
      *(result + 24) = ~a2;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for LLMSamplingParameters.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for LLMSamplingParameters.SamplingStrategy.Choice.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1C73D0924(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_5_9();
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_BYTE *sub_1C73D0970(_BYTE *result, int a2, int a3)
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

unint64_t sub_1C73D0A20()
{
  result = qword_1EC21B4A8;
  if (!qword_1EC21B4A8)
  {
    result = swift_getWitnessTable(byte_1C758808C, &type metadata for LLMSamplingParameters.SamplingStrategy.Choice.TopKCodingKeys, v0, v1);
    atomic_store(result, &qword_1EC21B4A8);
  }

  return result;
}

unint64_t sub_1C73D0A78()
{
  result = qword_1EC21B4B0;
  if (!qword_1EC21B4B0)
  {
    result = swift_getWitnessTable(byte_1C7588144, &type metadata for LLMSamplingParameters.SamplingStrategy.Choice.TopPCodingKeys, v0, v1);
    atomic_store(result, &qword_1EC21B4B0);
  }

  return result;
}

unint64_t sub_1C73D0AD0()
{
  result = qword_1EC21B4B8;
  if (!qword_1EC21B4B8)
  {
    result = swift_getWitnessTable(aM_10, &type metadata for LLMSamplingParameters.SamplingStrategy.Choice.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EC21B4B8);
  }

  return result;
}

unint64_t sub_1C73D0B28()
{
  result = qword_1EC21B4C0;
  if (!qword_1EC21B4C0)
  {
    result = swift_getWitnessTable(byte_1C75882B4, &type metadata for LLMSamplingParameters.SamplingStrategy.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EC21B4C0);
  }

  return result;
}

unint64_t sub_1C73D0B80()
{
  result = qword_1EC21B4C8;
  if (!qword_1EC21B4C8)
  {
    result = swift_getWitnessTable(byte_1C758836C, &type metadata for LLMSamplingParameters.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EC21B4C8);
  }

  return result;
}

unint64_t sub_1C73D0BD8()
{
  result = qword_1EDD09FB0;
  if (!qword_1EDD09FB0)
  {
    result = swift_getWitnessTable(byte_1C75882DC, &type metadata for LLMSamplingParameters.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EDD09FB0);
  }

  return result;
}

unint64_t sub_1C73D0C30()
{
  result = qword_1EDD09FB8;
  if (!qword_1EDD09FB8)
  {
    result = swift_getWitnessTable(asc_1C7588304, &type metadata for LLMSamplingParameters.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EDD09FB8);
  }

  return result;
}

unint64_t sub_1C73D0C88()
{
  result = qword_1EDD09F98;
  if (!qword_1EDD09F98)
  {
    result = swift_getWitnessTable(byte_1C7588224, &type metadata for LLMSamplingParameters.SamplingStrategy.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EDD09F98);
  }

  return result;
}

unint64_t sub_1C73D0CE0()
{
  result = qword_1EDD09FA0;
  if (!qword_1EDD09FA0)
  {
    result = swift_getWitnessTable(byte_1C758824C, &type metadata for LLMSamplingParameters.SamplingStrategy.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EDD09FA0);
  }

  return result;
}

unint64_t sub_1C73D0D38()
{
  result = qword_1EDD09F58;
  if (!qword_1EDD09F58)
  {
    result = swift_getWitnessTable(asc_1C75880B4, &type metadata for LLMSamplingParameters.SamplingStrategy.Choice.TopPCodingKeys, v0, v1);
    atomic_store(result, &qword_1EDD09F58);
  }

  return result;
}

unint64_t sub_1C73D0D90()
{
  result = qword_1EDD09F60;
  if (!qword_1EDD09F60)
  {
    result = swift_getWitnessTable(aU_10, &type metadata for LLMSamplingParameters.SamplingStrategy.Choice.TopPCodingKeys, v0, v1);
    atomic_store(result, &qword_1EDD09F60);
  }

  return result;
}

unint64_t sub_1C73D0DE8()
{
  result = qword_1EDD09F70;
  if (!qword_1EDD09F70)
  {
    result = swift_getWitnessTable(byte_1C7587FFC, &type metadata for LLMSamplingParameters.SamplingStrategy.Choice.TopKCodingKeys, v0, v1);
    atomic_store(result, &qword_1EDD09F70);
  }

  return result;
}

unint64_t sub_1C73D0E40()
{
  result = qword_1EDD09F78;
  if (!qword_1EDD09F78)
  {
    result = swift_getWitnessTable(asc_1C7588024, &type metadata for LLMSamplingParameters.SamplingStrategy.Choice.TopKCodingKeys, v0, v1);
    atomic_store(result, &qword_1EDD09F78);
  }

  return result;
}

unint64_t sub_1C73D0E98()
{
  result = qword_1EDD09F80;
  if (!qword_1EDD09F80)
  {
    result = swift_getWitnessTable(byte_1C758816C, &type metadata for LLMSamplingParameters.SamplingStrategy.Choice.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EDD09F80);
  }

  return result;
}

unint64_t sub_1C73D0EF0()
{
  result = qword_1EDD09F88;
  if (!qword_1EDD09F88)
  {
    result = swift_getWitnessTable(byte_1C7588194, &type metadata for LLMSamplingParameters.SamplingStrategy.Choice.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EDD09F88);
  }

  return result;
}

uint64_t sub_1C73D0F54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = 0;
  v12 = a1;
  v9 = *(a2 + 16);
  while (v9 != v8)
  {
    v10 = *(type metadata accessor for Hastings.Asset(0) - 8);
    sub_1C73D4B94(&v12, (a2 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v8++), a3, a4);
    if (v4)
    {
    }
  }

  return v12;
}

void sub_1C73D1050(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, double a6, double a7, double a8, double a9)
{
  v73 = a5;
  v70 = type metadata accessor for Hastings.ClusterAssetElector.StochatizedAsset(0);
  v71 = *(v70 - 8);
  MEMORY[0x1EEE9AC00](v70);
  v18 = &v63 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v68 = &v63 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v69 = &v63 - v22;
  v23 = 0;
  v24 = *(a1 + 16);
  v77 = a1;
  v78 = v24;
  v76 = OBJC_IVAR____TtCV18PhotosIntelligence8Hastings19ClusterAssetElector_anchorAssetUUIDs;
  v65 = OBJC_IVAR____TtCV18PhotosIntelligence8Hastings19ClusterAssetElector_dependentAssetUUIDs;
  v75 = OBJC_IVAR____TtCV18PhotosIntelligence8Hastings19ClusterAssetElector_allRequiredCharactersAssetUUIDs;
  v64 = OBJC_IVAR____TtCV18PhotosIntelligence8Hastings19ClusterAssetElector_numberOfRequiredCharacters;
  v67 = a2 + OBJC_IVAR____TtCV18PhotosIntelligence8Hastings19ClusterAssetElector_configuration;
  v25 = MEMORY[0x1E69E7CC0];
  v74 = a2;
  v72 = a3;
  v66 = a4;
  while (1)
  {
    if (v78 == v23)
    {

      return;
    }

    v87 = type metadata accessor for Hastings.Asset(0);
    v26 = v77 + ((*(*(v87 - 8) + 80) + 32) & ~*(*(v87 - 8) + 80)) + *(*(v87 - 8) + 72) * v23;
    v28 = *v26;
    v27 = *(v26 + 8);
    if (sub_1C7009C30(*v26, v27, *(a2 + v76)))
    {
      v86 = 0;
    }

    else
    {
      v29 = (sub_1C7009C30(v28, v27, *(a2 + v65)) & 1) != 0 ? 2 : 1;
      v86 = v29;
    }

    if (sub_1C7009C30(v28, v27, *(a2 + v75)))
    {
      v30 = *(a2 + v64);
      v31 = v87;
      v32 = v30 < 0 || *(v26 + *(v87 + 36)) != v30;
    }

    else
    {
      v32 = 2;
      v31 = v87;
    }

    v33 = *(v26 + *(v31 + 40));
    v84 = *(a2 + OBJC_IVAR____TtCV18PhotosIntelligence8Hastings19ClusterAssetElector_curationOptions + qword_1C7589210[v86]);
    if (*(a3 + 16) && (sub_1C6FC292C(v26), (v35 & 1) != 0))
    {
      v85 = 0;
      v36 = *(*(a3 + 56) + 8 * v34);
    }

    else
    {
      v36 = 0;
      v85 = 1;
    }

    if (a6 < 0.0)
    {
      break;
    }

    v80 = v36;
    v81 = v33;
    v82 = v32;
    v83 = v25;
    v37 = v23;
    v38 = *(v26 + 16);
    v88 = -a6;
    v89 = a6;
    __swift_mutable_project_boxed_opaque_existential_0(a4, *(a4 + 24));
    sub_1C70AB55C();
    sub_1C70AB5B0();
    sub_1C755046C();
    v39 = floor((v38 + v90) / a7) * a7;
    if (a7 > 0.0)
    {
      v40 = v39;
    }

    else
    {
      v40 = v38 + v90;
    }

    if (a8 < 0.0)
    {
      goto LABEL_39;
    }

    v41 = *(v26 + 24);
    v88 = -a8;
    v89 = a8;
    __swift_mutable_project_boxed_opaque_existential_0(a4, *(a4 + 24));
    sub_1C755046C();
    v42 = floor((v41 + v90) / a9) * a9;
    if (a9 > 0.0)
    {
      v43 = v42;
    }

    else
    {
      v43 = v41 + v90;
    }

    v44 = v87;
    v45 = [*(v26 + *(v87 + 52)) iconicScoreModel];
    v46 = [v45 bucketForIconicScore_];

    if (v73)
    {
      v47 = *(v26 + *(v44 + 44));
    }

    else
    {
      v47 = 0;
    }

    v48 = v18;
    v49 = *(v67 + 57) == 1;
    v50 = v66;
    v79 = v37;
    if (v49)
    {
      v51 = *(v26 + *(v44 + 48));
    }

    else
    {
      v51 = 0;
    }

    v52 = v85;
    v53 = v84 & v85 ^ 1;
    v54 = v68;
    sub_1C73D968C();
    v55 = v70;
    v54[*(v70 + 20)] = v86;
    v56 = v81;
    v54[v55[6]] = v82;
    v54[v55[7]] = v56;
    v54[v55[8]] = v53;
    v57 = &v54[v55[9]];
    *v57 = v80;
    v57[8] = v52;
    *&v54[v55[10]] = v40;
    *&v54[v55[11]] = v43;
    *&v54[v55[12]] = v46;
    v54[v55[13]] = v47;
    v54[v55[14]] = v51;
    sub_1C73D973C();
    v18 = v48;
    sub_1C73D973C();
    v25 = v83;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1C6FB4C0C(0, *(v25 + 16) + 1, 1, v25);
      v25 = v61;
    }

    a2 = v74;
    a3 = v72;
    a4 = v50;
    v59 = *(v25 + 16);
    v58 = *(v25 + 24);
    v60 = v79;
    if (v59 >= v58 >> 1)
    {
      sub_1C6FB4C0C(v58 > 1, v59 + 1, 1, v25);
      v25 = v62;
    }

    *(v25 + 16) = v59 + 1;
    sub_1C73D973C();
    v23 = v60 + 1;
  }

  __break(1u);
LABEL_39:
  __break(1u);
}

uint64_t sub_1C73D16EC(uint64_t a1, uint64_t a2)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = a2;
  sub_1C73D934C(a1, sub_1C73D92DC, 0, isUniquelyReferenced_nonNull_native, &v8);
  v6 = v8;
  if (v2)
  {
  }

  return v6;
}

uint64_t sub_1C73D1770(uint64_t *a1, uint64_t a2)
{
  v4 = *(type metadata accessor for Hastings.ClusterAssetElector.StochatizedAsset(0) - 8);
  v5 = *a1;
  swift_retain_n();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1C7422EC4();
    v5 = v6;
  }

  v7 = *(v5 + 16);
  v9[0] = v5 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
  v9[1] = v7;

  sub_1C73D7E68(v9, a2);
  *a1 = v5;
}

void sub_1C73D1850()
{
  OUTLINED_FUNCTION_33();
  v1 = v0;
  v3 = v2;
  v102 = v4;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2168B0, &qword_1C75656C0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_14_2();
  v113 = v6;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v7);
  v9 = v98 - v8;
  v10 = type metadata accessor for Hastings.Asset(0);
  v11 = OUTLINED_FUNCTION_18(v10);
  v116 = v12;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_14_2();
  v105 = v13;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_130();
  v112 = v15;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v16);
  v18 = (v98 - v17);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216548, &unk_1C7589190);
  sub_1C754F46C();
  v20 = v1 + OBJC_IVAR____TtCV18PhotosIntelligence8Hastings19ClusterAssetElector_curationOptions;
  v106 = v19;
  v21 = v3;
  sub_1C754F45C();
  v108 = v1;
  Hastings.ClusterAssetElector.sortedAssets(from:assetsByQueryString:clusterID:randomizer:)();
  v23 = v22;

  v101 = v20;
  v24 = *(v20 + 8);
  v25 = MEMORY[0x1E69E7CC0];
  v107 = v21;
  v100 = v23;
  v111 = v9;
  if (!v24)
  {
    goto LABEL_24;
  }

  if (!*(v24 + 16))
  {
    v25 = MEMORY[0x1E69E7CC0];
LABEL_24:
    v114 = v25;
    goto LABEL_25;
  }

  v26 = sub_1C754F46C();
  v27 = 0;
  v115 = *(v26 + 16);
  v114 = MEMORY[0x1E69E7CC0];
LABEL_4:
  v28 = v27;
  while (v28 != v115)
  {
    if (v28 >= *(v26 + 16))
    {
      goto LABEL_56;
    }

    v117 = v28 + 1;
    v29 = v26;
    OUTLINED_FUNCTION_0_170();
    sub_1C73D968C();
    if (*(v24 + 16))
    {
      v31 = *v18;
      v30 = v18[1];
      sub_1C7551F3C();
      sub_1C75505AC();
      v32 = sub_1C7551FAC();
      v33 = ~(-1 << *(v24 + 32));
      while (1)
      {
        v34 = v32 & v33;
        if (((*(v24 + 56 + (((v32 & v33) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v32 & v33)) & 1) == 0)
        {
          break;
        }

        v35 = (*(v24 + 48) + 16 * v34);
        if (*v35 != v31 || v35[1] != v30)
        {
          v37 = sub_1C7551DBC();
          v32 = v34 + 1;
          if ((v37 & 1) == 0)
          {
            continue;
          }
        }

        OUTLINED_FUNCTION_1_126();
        sub_1C73D973C();
        v39 = v114;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v119 = v39;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v41 = OUTLINED_FUNCTION_99();
          sub_1C716E298(v41, v42, v43);
          v39 = v119;
        }

        v45 = *(v39 + 16);
        v44 = *(v39 + 24);
        if (v45 >= v44 >> 1)
        {
          v46 = OUTLINED_FUNCTION_15(v44);
          sub_1C716E298(v46, v45 + 1, 1);
          v39 = v119;
        }

        *(v39 + 16) = v45 + 1;
        v114 = v39;
        OUTLINED_FUNCTION_1_126();
        sub_1C73D973C();
        v26 = v29;
        v27 = v117;
        goto LABEL_4;
      }
    }

    OUTLINED_FUNCTION_3_107();
    sub_1C73D96E4(v18, v38);
    v28 = v117;
    v26 = v29;
  }

  v9 = v111;
LABEL_25:
  v47 = v108;
  sub_1C73D37A4();
  v49 = v48;
  OUTLINED_FUNCTION_56_27();
  v50 = sub_1C754F42C();
  v51 = sub_1C73D16EC(v49, v50);
  v52 = *(v47 + OBJC_IVAR____TtCV18PhotosIntelligence8Hastings19ClusterAssetElector_diagnosticReporter);
  if (v52)
  {
    v99 = *(v47 + OBJC_IVAR____TtCV18PhotosIntelligence8Hastings19ClusterAssetElector_diagnosticReporter);
    OUTLINED_FUNCTION_56_27();
    v98[1] = sub_1C754F45C();
    v98[2] = v53;
    v54 = v51 + 64;
    v55 = 1 << *(v51 + 32);
    v56 = -1;
    if (v55 < 64)
    {
      v56 = ~(-1 << v55);
    }

    v57 = v56 & *(v51 + 64);
    v58 = (v55 + 63) >> 6;
    sub_1C75504FC();
    v59 = 0;
    v117 = MEMORY[0x1E69E7CC8];
    v108 = v58;
    v109 = v51;
    v103 = v51 + 64;
    if (v57)
    {
      while (1)
      {
LABEL_33:
        v115 = v57;
        v104 = type metadata accessor for Hastings.Feature(0);
        OUTLINED_FUNCTION_12();
        v112 = *(v61 + 72);
        OUTLINED_FUNCTION_2_120();
        sub_1C73D968C();
        v62 = *(*(v51 + 56) + 8 * (__clz(__rbit64(v57)) | (v59 << 6)));
        *&v9[*(v110 + 48)] = v62;
        sub_1C6FD7F70();
        sub_1C75504FC();

        v67 = *(v62 + 16);
        if (v67)
        {
          v118 = MEMORY[0x1E69E7CC0];
          sub_1C6F7ED9C(0, v67, 0, v63, v64, v65, v66);
          v68 = v118;
          OUTLINED_FUNCTION_191();
          v70 = v62 + v69;
          v72 = *(v71 + 72);
          v73 = v105;
          do
          {
            OUTLINED_FUNCTION_0_170();
            sub_1C73D968C();
            v74 = *v73;
            v75 = v73[1];
            sub_1C75504FC();
            OUTLINED_FUNCTION_3_107();
            sub_1C73D96E4(v73, v76);
            v118 = v68;
            v78 = *(v68 + 16);
            v77 = *(v68 + 24);
            if (v78 >= v77 >> 1)
            {
              v80 = OUTLINED_FUNCTION_15(v77);
              sub_1C6F7ED9C(v80, v78 + 1, 1, v81, v82, v83, v84);
              v73 = v105;
              v68 = v118;
            }

            *(v68 + 16) = v78 + 1;
            v79 = v68 + 16 * v78;
            *(v79 + 32) = v74;
            *(v79 + 40) = v75;
            v70 += v72;
            --v67;
          }

          while (v67);
          v54 = v103;
        }

        else
        {
          v68 = MEMORY[0x1E69E7CC0];
        }

        v85 = v117;
        swift_isUniquelyReferenced_nonNull_native();
        v118 = v85;
        v86 = sub_1C6FC27A8();
        if (__OFADD__(*(v85 + 16), (v87 & 1) == 0))
        {
          break;
        }

        v88 = v86;
        v89 = v87;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2168E0, &qword_1C75891A0);
        if (sub_1C7551A2C())
        {
          v90 = sub_1C6FC27A8();
          if ((v89 & 1) != (v91 & 1))
          {
            goto LABEL_59;
          }

          v88 = v90;
        }

        v92 = v118;
        v117 = v118;
        if (v89)
        {
          *(*(v118 + 56) + 8 * v88) = v68;
        }

        else
        {
          *(v118 + 8 * (v88 >> 6) + 64) |= 1 << v88;
          OUTLINED_FUNCTION_2_120();
          sub_1C73D968C();
          *(*(v92 + 56) + 8 * v88) = v68;
          v93 = *(v92 + 16);
          v94 = __OFADD__(v93, 1);
          v95 = v93 + 1;
          if (v94)
          {
            goto LABEL_58;
          }

          *(v92 + 16) = v95;
        }

        v57 = (v115 - 1) & v115;
        OUTLINED_FUNCTION_7_89();
        sub_1C73D96E4(v113, v96);
        v9 = v111;
        sub_1C6FD7FC8(v111, &qword_1EC2168B0, &qword_1C75656C0);
        v58 = v108;
        v51 = v109;
        if (!v57)
        {
          goto LABEL_29;
        }
      }
    }

    else
    {
LABEL_29:
      while (1)
      {
        v60 = v59 + 1;
        if (__OFADD__(v59, 1))
        {
          break;
        }

        if (v60 >= v58)
        {

          v52 = v99;
          swift_beginAccess();
          swift_isUniquelyReferenced_nonNull_native();
          v119 = *(v52 + 24);
          sub_1C6FC9C70();
          *(v52 + 24) = v119;

          swift_endAccess();
          goto LABEL_51;
        }

        v57 = *(v54 + 8 * v60);
        ++v59;
        if (v57)
        {
          v59 = v60;
          goto LABEL_33;
        }
      }

      __break(1u);
LABEL_56:
      __break(1u);
    }

    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    sub_1C7551E4C();
    __break(1u);
  }

  else
  {
LABEL_51:
    type metadata accessor for Hastings.ClusterAssetElector.ElectedAssetIterator.DiagnosticReporter();
    *(swift_allocObject() + 16) = MEMORY[0x1E69E7CC0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218118, &unk_1C7570E70);
    v97 = swift_allocObject();
    *(v97 + 16) = xmmword_1C755BAB0;
    *(v97 + 32) = v100;
    sub_1C75504FC();
    OUTLINED_FUNCTION_56_27();
    sub_1C754F45C();
    swift_retain_n();
    Hastings.ClusterAssetElector.ElectedAssetIterator.init(from:assetsByFeature:assetDependencySets:requiredAssets:id:diagnosticReporter:)();
    if (v52)
    {
      OUTLINED_FUNCTION_56_27();
      sub_1C754F45C();
      swift_beginAccess();
      swift_isUniquelyReferenced_nonNull_native();
      v119 = *(v52 + 32);
      sub_1C6FC9B94();
      *(v52 + 32) = v119;

      swift_endAccess();
    }

    else
    {
    }

    OUTLINED_FUNCTION_25_0();
  }
}

uint64_t Hastings.ClusterAssetElector.Configuration.init(alwaysPrioritizeBetterCurationScoreOverNotImproved:alwaysPrioritizeBetterCurationScore:prioritizeTopNSemanticMatch:prioritizeSemanticMatchIfAssetsAreGoodEnough:prioritizeAestheticallyGoodAssetForNonMatches:prioritizeIconicity:assetElectionSortingCurationScoreRandomizationWeight:assetElectionSortingCurationScoreQuantum:assetElectionSortingAestheticScoreRandomizationWeight:assetElectionSortingAestheticScoreQuantum:promotePlayableAssets:promoteAssetsWithLocation:)@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X2>, char a4@<W3>, char a5@<W4>, char a6@<W5>, char a7@<W6>, char a8@<W7>, uint64_t a9@<X8>, double a10@<D0>, double a11@<D1>, double a12@<D2>, double a13@<D3>, char a14)
{
  *a9 = result;
  *(a9 + 1) = a2;
  *(a9 + 8) = a3;
  *(a9 + 16) = a4 & 1;
  *(a9 + 17) = a5;
  *(a9 + 18) = a6;
  *(a9 + 19) = a7;
  *(a9 + 24) = a10;
  *(a9 + 32) = a11;
  *(a9 + 40) = a12;
  *(a9 + 48) = a13;
  *(a9 + 56) = a8;
  *(a9 + 57) = a14;
  return result;
}

uint64_t Hastings.ClusterAssetElector.__allocating_init(configuration:curationOptions:diagnosticReporter:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = swift_allocObject();
  Hastings.ClusterAssetElector.init(configuration:curationOptions:diagnosticReporter:)();
  return v3;
}

uint64_t sub_1C73D2218(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000022 && 0x80000001C75AE7A0 == a2;
  if (v4 || (sub_1C7551DBC() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD00000000000001ELL && 0x80000001C75AE7D0 == a2;
    if (v6 || (sub_1C7551DBC() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0xD000000000000031 && 0x80000001C75AE7F0 == a2)
    {

      return 2;
    }

    else
    {
      v8 = sub_1C7551DBC();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

unint64_t sub_1C73D2330(char a1)
{
  if (!a1)
  {
    return 0xD000000000000022;
  }

  if (a1 == 1)
  {
    return 0xD00000000000001ELL;
  }

  return 0xD000000000000031;
}

uint64_t sub_1C73D238C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C73D2218(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C73D23B4(uint64_t a1)
{
  v2 = sub_1C73D3000();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C73D23F0(uint64_t a1)
{
  v2 = sub_1C73D3000();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Hastings.ClusterAssetElector.DiagnosticReporter.deinit()
{

  return v0;
}

uint64_t Hastings.ClusterAssetElector.DiagnosticReporter.__deallocating_deinit()
{
  Hastings.ClusterAssetElector.DiagnosticReporter.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1C73D2490()
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21B4E8, &qword_1C7588530);
  OUTLINED_FUNCTION_3_0();
  v5 = v4;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_61_1();
  v7 = OUTLINED_FUNCTION_23_14();
  __swift_project_boxed_opaque_existential_1(v7, v8);
  v9 = sub_1C73D3000();
  OUTLINED_FUNCTION_20_14(&_s19ClusterAssetElectorC18DiagnosticReporterC10CodingKeysON, v10, v9);
  OUTLINED_FUNCTION_0_53();
  swift_beginAccess();
  v24[0] = v0[2];
  LOBYTE(v23[0]) = 0;
  v11 = OUTLINED_FUNCTION_23_14();
  __swift_instantiateConcreteTypeFromMangledNameV2(v11, v12);
  v13 = sub_1C73D3128(&qword_1EC21B500, &qword_1EC21B4F8, &qword_1C7588538, sub_1C73D3054);
  OUTLINED_FUNCTION_67_21(v24, v23, v14, v15, v13);
  if (!v1)
  {
    OUTLINED_FUNCTION_0_53();
    swift_beginAccess();
    v23[0] = v0[3];
    LOBYTE(v22) = 1;
    v16 = OUTLINED_FUNCTION_23_14();
    __swift_instantiateConcreteTypeFromMangledNameV2(v16, v17);
    v18 = sub_1C73D3128(&qword_1EC21B528, &qword_1EC21B520, &qword_1C7588548, sub_1C708CA7C);
    OUTLINED_FUNCTION_67_21(v23, &v22, v19, v20, v18);
    OUTLINED_FUNCTION_0_53();
    swift_beginAccess();
    v22 = v0[4];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21B530, &unk_1C7588550);
    sub_1C73D31F4();
    sub_1C7551D2C();
  }

  return (*(v5 + 8))(v2, v3);
}

void *sub_1C73D26D4()
{
  result = v0;
  v2 = MEMORY[0x1E69E7CC8];
  v0[2] = MEMORY[0x1E69E7CC8];
  v0[3] = v2;
  v0[4] = v2;
  return result;
}

uint64_t sub_1C73D2710()
{
  v0 = sub_1C754FF1C();
  __swift_allocate_value_buffer(v0, qword_1EC21B4D0);
  v1 = __swift_project_value_buffer(v0, qword_1EC21B4D0);
  if (qword_1EC213E88 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_1EC25B6F0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void Hastings.ClusterAssetElector.init(configuration:curationOptions:diagnosticReporter:)()
{
  OUTLINED_FUNCTION_33();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = sub_1C754F58C();
  OUTLINED_FUNCTION_3_0();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_108_0(v13 - v12);
  v68 = type metadata accessor for Hastings.Feature(0);
  OUTLINED_FUNCTION_3_0();
  v15 = v14;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_14_0();
  v71 = (v18 - v17);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216A40, &qword_1C7565B28);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_14_2();
  v73 = v21;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_108_0(&v61 - v23);
  v24 = *(v5 + 16);
  v80 = *v5;
  v81 = v24;
  *v82 = *(v5 + 32);
  *&v82[14] = *(v5 + 46);
  v25 = OBJC_IVAR____TtCV18PhotosIntelligence8Hastings19ClusterAssetElector_logger;
  if (qword_1EC214098 != -1)
  {
    goto LABEL_43;
  }

  while (1)
  {
    v26 = sub_1C754FF1C();
    v27 = __swift_project_value_buffer(v26, qword_1EC21B4D0);
    (*(*(v26 - 8) + 16))(&v25[v1], v27, v26);
    v28 = (v1 + OBJC_IVAR____TtCV18PhotosIntelligence8Hastings19ClusterAssetElector_configuration);
    v29 = v7[1];
    *v28 = *v7;
    v28[1] = v29;
    v28[2] = v7[2];
    *(v28 + 42) = *(v7 + 42);
    v30 = v1 + OBJC_IVAR____TtCV18PhotosIntelligence8Hastings19ClusterAssetElector_curationOptions;
    *(v30 + 46) = *(v5 + 46);
    v31 = *(v5 + 32);
    *(v30 + 16) = *(v5 + 16);
    *(v30 + 32) = v31;
    *v30 = *v5;
    *(v1 + OBJC_IVAR____TtCV18PhotosIntelligence8Hastings19ClusterAssetElector_diagnosticReporter) = v3;
    if (!*(&v81 + 1))
    {
      break;
    }

    v67 = v8;
    v62 = v1;
    v32 = *(&v81 + 1) + 64;
    v33 = 1 << *(*(&v81 + 1) + 32);
    v34 = -1;
    if (v33 < 64)
    {
      v34 = ~(-1 << v33);
    }

    v1 = v34 & *(*(&v81 + 1) + 64);
    v74 = *(&v81 + 1);
    swift_bridgeObjectRetain_n();
    sub_1C7035CB0(&v80, &v78);
    v35 = v3;
    v3 = v32;
    v8 = (v33 + 63) >> 6;
    v66 = *MEMORY[0x1E69C1920];
    v65 = (v10 + 104);
    v64 = (v10 + 8);
    v61 = v35;

    v5 = 0;
    v63 = MEMORY[0x1E69E7CC0];
    v25 = v71;
    v7 = v70;
    v72 = v3;
    while (v1)
    {
LABEL_11:
      v37 = __clz(__rbit64(v1));
      v1 &= v1 - 1;
      v38 = v37 | (v5 << 6);
      v39 = v74;
      OUTLINED_FUNCTION_2_120();
      sub_1C73D968C();
      v10 = *(*(v39 + 56) + 8 * v38);
      *(v7 + *(v19 + 48)) = v10;
      v40 = v73;
      sub_1C6FD7F70();
      v75 = *(v40 + *(v19 + 48));
      OUTLINED_FUNCTION_16_61();
      sub_1C73D973C();
      switch(v25[16])
      {
        case 1:
        case 2:
        case 3:
        case 4:
        case 5:
          v41 = sub_1C7551DBC();
          sub_1C75504FC();

          if ((v41 & 1) == 0)
          {
            goto LABEL_19;
          }

          break;
        default:
          sub_1C75504FC();

          break;
      }

      v7 = v19;
      v19 = v15;
      v42 = v69;
      v15 = v67;
      (*v65)(v69, v66, v67);
      sub_1C73D31AC(&qword_1EC2147A0, MEMORY[0x1E69C1928], MEMORY[0x1E69C1950]);
      OUTLINED_FUNCTION_135();
      sub_1C7550A5C();
      OUTLINED_FUNCTION_135();
      sub_1C7550A5C();
      v10 = v79;
      if (v78 == v76 && v79 == v77)
      {
        (*v64)(v42, v15);

        OUTLINED_FUNCTION_42_34();
LABEL_21:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_99();
          sub_1C6FB20F8();
          v63 = v51;
        }

        v10 = v63[2];
        v48 = v63[3];
        if (v10 >= v48 >> 1)
        {
          OUTLINED_FUNCTION_15(v48);
          sub_1C6FB20F8();
          v63 = v52;
        }

        v3 = v72;
        OUTLINED_FUNCTION_7_89();
        sub_1C73D96E4(v25, v49);
        sub_1C6FD7FC8(v7, &qword_1EC216A40, &qword_1C7565B28);
        v50 = v63;
        v63[2] = v10 + 1;
        v50[v10 + 4] = v75;
      }

      else
      {
        v44 = sub_1C7551DBC();
        v45 = v42;
        v46 = v44;
        (*v64)(v45, v15);

        OUTLINED_FUNCTION_42_34();
        if (v46)
        {
          goto LABEL_21;
        }

LABEL_19:

        OUTLINED_FUNCTION_7_89();
        sub_1C73D96E4(v25, v47);
        sub_1C6FD7FC8(v7, &qword_1EC216A40, &qword_1C7565B28);
        v3 = v72;
      }
    }

    while (1)
    {
      v36 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v36 >= v8)
      {

        v1 = v62;
        v3 = v61;
        v10 = v63;
        goto LABEL_28;
      }

      v1 = *(v3 + 8 * v36);
      ++v5;
      if (v1)
      {
        v5 = v36;
        goto LABEL_11;
      }
    }

LABEL_42:
    __break(1u);
LABEL_43:
    swift_once();
  }

  sub_1C7035CB0(&v80, &v78);

  v10 = MEMORY[0x1E69E7CC0];
LABEL_28:
  v53 = sub_1C75504FC();
  sub_1C6FDE498(v53);
  v55 = v54;

  v19 = MEMORY[0x1E69E7CD0];
  if (v55)
  {
    v56 = v55;
  }

  else
  {
    v56 = MEMORY[0x1E69E7CD0];
  }

  *(v1 + OBJC_IVAR____TtCV18PhotosIntelligence8Hastings19ClusterAssetElector_allRequiredCharactersAssetUUIDs) = v56;
  v57 = *(v10 + 16);

  v25 = 0;
  *(v1 + OBJC_IVAR____TtCV18PhotosIntelligence8Hastings19ClusterAssetElector_numberOfRequiredCharacters) = v57;
  v58 = *&v82[8];
  v78 = v19;
  v5 = *(*&v82[8] + 16);
  v7 = (*&v82[8] + 32);
  while (v5 != v25)
  {
    if (v25 >= *(v58 + 16))
    {
      __break(1u);
LABEL_41:
      __break(1u);
      goto LABEL_42;
    }

    ++v25;
    v7 = (v7 + 24);
    v59 = sub_1C75504FC();
    v10 = &v78;
    sub_1C739796C(v59);
  }

  v25 = 0;
  *(v1 + OBJC_IVAR____TtCV18PhotosIntelligence8Hastings19ClusterAssetElector_anchorAssetUUIDs) = v78;
  v78 = v19;
  v19 = *(v58 + 16);
  v5 = v58 + 40;
  while (v19 != v25)
  {
    if (v25 >= *(v58 + 16))
    {
      goto LABEL_41;
    }

    ++v25;
    v5 += 24;
    v60 = sub_1C75504FC();
    v10 = &v78;
    sub_1C739796C(v60);
  }

  sub_1C714E318(&v80);

  *(v1 + OBJC_IVAR____TtCV18PhotosIntelligence8Hastings19ClusterAssetElector_dependentAssetUUIDs) = v78;
  OUTLINED_FUNCTION_25_0();
}

unint64_t sub_1C73D3000()
{
  result = qword_1EC21B4F0;
  if (!qword_1EC21B4F0)
  {
    result = swift_getWitnessTable(byte_1C7589134, &_s19ClusterAssetElectorC18DiagnosticReporterC10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EC21B4F0);
  }

  return result;
}

unint64_t sub_1C73D3054()
{
  result = qword_1EC21B508;
  if (!qword_1EC21B508)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC21B510, &qword_1C7588540);
    v4[0] = sub_1C73D31AC(&qword_1EC21B518, type metadata accessor for Hastings.ClusterAssetElector.StochatizedAsset, protocol conformance descriptor for Hastings.ClusterAssetElector.StochatizedAsset);
    result = swift_getWitnessTable(MEMORY[0x1E69E6300], v3, v4);
    atomic_store(result, &qword_1EC21B508);
  }

  return result;
}

uint64_t sub_1C73D3128(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    v8 = a4();
    v9[0] = MEMORY[0x1E69E6160];
    v9[1] = v8;
    result = swift_getWitnessTable(MEMORY[0x1E69E5E38], v7, v9);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C73D31AC(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C73D31F4()
{
  result = qword_1EC21B538;
  if (!qword_1EC21B538)
  {
    v5[4] = v0;
    v5[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC21B530, &unk_1C7588550);
    v4 = sub_1C73D31AC(&qword_1EC21B540, type metadata accessor for Hastings.ClusterAssetElector.ElectedAssetIterator.DiagnosticReporter, protocol conformance descriptor for Hastings.ClusterAssetElector.ElectedAssetIterator.DiagnosticReporter);
    v5[0] = MEMORY[0x1E69E6160];
    v5[1] = v4;
    result = swift_getWitnessTable(MEMORY[0x1E69E5E38], v3, v5);
    atomic_store(result, &qword_1EC21B538);
  }

  return result;
}

void Hastings.ClusterAssetElector.sortedAssets(from:assetsByQueryString:clusterID:randomizer:)()
{
  OUTLINED_FUNCTION_33();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = type metadata accessor for Hastings.Asset(0);
  v13 = OUTLINED_FUNCTION_18(v12);
  v15 = v14;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_14_0();
  v62 = v17 - v16;
  v18 = type metadata accessor for Hastings.ClusterAssetElector.StochatizedAsset(0);
  v19 = OUTLINED_FUNCTION_18(v18);
  v21 = v20;
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_14_2();
  v64 = v22;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v59 - v24;
  v26 = sub_1C73D7314(v11, v9);
  Hastings.ClusterAssetElector.stochatizedAssets(from:bestSemanticalRankByAsset:randomizer:)(v11, v26, v3);
  v69[0] = v27;
  swift_retain_n();
  sub_1C75504FC();
  sub_1C73D1770(v69, v1);

  v66 = v21;

  v28 = v69[0];
  v29 = *(v1 + OBJC_IVAR____TtCV18PhotosIntelligence8Hastings19ClusterAssetElector_diagnosticReporter);
  if (v29)
  {
    swift_beginAccess();

    swift_isUniquelyReferenced_nonNull_native();
    v68 = *(v29 + 16);
    sub_1C6FC9B80();
    *(v29 + 16) = v68;
    swift_endAccess();
  }

  v30 = OBJC_IVAR____TtCV18PhotosIntelligence8Hastings19ClusterAssetElector_logger;
  sub_1C75504FC();
  v31 = sub_1C754FEEC();
  v32 = sub_1C755117C();

  v33 = os_log_type_enabled(v31, v32);
  v67 = v30;
  v63 = v15;
  if (v33)
  {
    swift_slowAlloc();
    v34 = v28;
    v35 = OUTLINED_FUNCTION_47_10();
    v69[0] = v35;
    *v30 = 136315138;
    *(v30 + 4) = sub_1C6F765A4(v7, v5, v69);
    _os_log_impl(&dword_1C6F5C000, v31, v32, "Sorted Stochatized Assets for cluster %s:", v30, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v35);
    v28 = v34;
    OUTLINED_FUNCTION_109();
    OUTLINED_FUNCTION_109();
  }

  v36 = *(v28 + 16);
  if (v36)
  {
    OUTLINED_FUNCTION_191();
    v61 = v28;
    v38 = v28 + v37;
    v40 = *(v39 + 72);
    *&v41 = 136315138;
    v65 = v41;
    v60 = v28 + v37;
    v66 = v40;
    do
    {
      OUTLINED_FUNCTION_19_66();
      sub_1C73D968C();
      v42 = sub_1C754FEEC();
      v43 = sub_1C755117C();
      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        v45 = OUTLINED_FUNCTION_20_1();
        v69[0] = v45;
        *v44 = v65;
        v46 = Hastings.ClusterAssetElector.StochatizedAsset.description.getter();
        OUTLINED_FUNCTION_8_80();
        v48 = sub_1C73D96E4(v25, v47);
        OUTLINED_FUNCTION_73_21(v48, v49, v69);
        OUTLINED_FUNCTION_2_61();

        *(v44 + 4) = v46;
        _os_log_impl(&dword_1C6F5C000, v42, v43, "%s", v44, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v45);
        OUTLINED_FUNCTION_109();
        v40 = v66;
        OUTLINED_FUNCTION_109();
      }

      else
      {

        OUTLINED_FUNCTION_8_80();
        sub_1C73D96E4(v25, v50);
      }

      v38 += v40;
      --v36;
    }

    while (v36);
    v51 = *(v61 + 16);
    v52 = v64;
    if (v51)
    {
      v69[0] = MEMORY[0x1E69E7CC0];
      sub_1C716E298(0, v51, 0);
      v53 = v69[0];
      v54 = v60;
      do
      {
        OUTLINED_FUNCTION_19_66();
        sub_1C73D968C();
        OUTLINED_FUNCTION_0_170();
        sub_1C73D968C();
        OUTLINED_FUNCTION_8_80();
        sub_1C73D96E4(v52, v55);
        v69[0] = v53;
        v57 = *(v53 + 16);
        v56 = *(v53 + 24);
        if (v57 >= v56 >> 1)
        {
          v58 = OUTLINED_FUNCTION_15(v56);
          sub_1C716E298(v58, v57 + 1, 1);
          v53 = v69[0];
        }

        *(v53 + 16) = v57 + 1;
        OUTLINED_FUNCTION_191();
        OUTLINED_FUNCTION_1_126();
        sub_1C73D973C();
        v54 += v40;
        --v51;
      }

      while (v51);
    }
  }

  OUTLINED_FUNCTION_25_0();
}

void sub_1C73D37A4()
{
  OUTLINED_FUNCTION_33();
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216548, &unk_1C7589190);
  OUTLINED_FUNCTION_3_0();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_78();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_130();
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_130();
  v59 = v8;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v9);
  v60 = *(sub_1C73D3D6C(v1) + 16);
  if (v60 >= sub_1C754F43C())
  {
    OUTLINED_FUNCTION_55_31();
    v20();
    v21 = sub_1C754FEEC();
    v22 = sub_1C75511BC();
    if (!os_log_type_enabled(v21, v22))
    {

      v44 = OUTLINED_FUNCTION_135();
      v45(v44);
      goto LABEL_16;
    }

    v23 = OUTLINED_FUNCTION_23_1();
    v24 = OUTLINED_FUNCTION_20_1();
    v61 = v24;
    *v23 = 136315394;
    sub_1C754F45C();
    v25 = OUTLINED_FUNCTION_135();
    v26(v25);
    v27 = OUTLINED_FUNCTION_23_14();
    v30 = sub_1C6F765A4(v27, v28, v29);

    *(v23 + 4) = v30;
    *(v23 + 12) = 2048;
    *(v23 + 14) = v60;
    _os_log_impl(&dword_1C6F5C000, v21, v22, "Cluster %s: Using %ld dependency group features as tie-breaker", v23, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v24);
    OUTLINED_FUNCTION_109();
LABEL_13:
    OUTLINED_FUNCTION_109();

    goto LABEL_16;
  }

  OUTLINED_FUNCTION_55_31();
  v58 = v10;
  v10();
  v11 = sub_1C754FEEC();
  v12 = sub_1C75511BC();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = OUTLINED_FUNCTION_23_1();
    v57 = OUTLINED_FUNCTION_20_1();
    v61 = v57;
    *v13 = 136315394;
    v14 = sub_1C754F45C();
    v15 = OUTLINED_FUNCTION_52_29(v4);
    v17 = v16(v15);
    OUTLINED_FUNCTION_73_21(v17, v18, &v61);
    OUTLINED_FUNCTION_2_61();

    *(v13 + 4) = v14;
    *(v13 + 12) = 2048;
    v19 = v60;
    *(v13 + 14) = v60;
    _os_log_impl(&dword_1C6F5C000, v11, v12, "Cluster %s: Not enough (%ld) dependency group features to be used for tie-breaking", v13, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v57);
    OUTLINED_FUNCTION_109();
    OUTLINED_FUNCTION_109();
  }

  else
  {

    v31 = OUTLINED_FUNCTION_52_29(v4);
    v32(v31);
    v19 = v60;
  }

  sub_1C73D3E54();
  v34 = *(v33 + 16);
  if (v19 >= v34)
  {

    OUTLINED_FUNCTION_55_31();
    v58();
    v21 = sub_1C754FEEC();
    v46 = sub_1C75511BC();
    if (!os_log_type_enabled(v21, v46))
    {

      OUTLINED_FUNCTION_63_23();
      v55 = OUTLINED_FUNCTION_135();
      v56(v55);
      goto LABEL_16;
    }

    OUTLINED_FUNCTION_20_1();
    v47 = OUTLINED_FUNCTION_47_10();
    v61 = v47;
    *v12 = 136315650;
    sub_1C754F45C();
    OUTLINED_FUNCTION_63_23();
    v48 = OUTLINED_FUNCTION_135();
    v49(v48);
    v50 = OUTLINED_FUNCTION_23_14();
    v53 = sub_1C6F765A4(v50, v51, v52);

    *(v12 + 4) = v53;
    *(v12 + 12) = 2048;
    *(v12 + 14) = v34;
    *(v12 + 22) = 2048;
    *(v12 + 24) = v60;
    _os_log_impl(&dword_1C6F5C000, v21, v46, "Cluster %s: Somehow got only %ld subcluster features, using %ld dependency group features as tie-breaker", v12, 0x20u);
    __swift_destroy_boxed_opaque_existential_1(v47);
    OUTLINED_FUNCTION_109();
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_55_31();
  v58();
  v35 = sub_1C754FEEC();
  v36 = sub_1C75511BC();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = OUTLINED_FUNCTION_23_1();
    v38 = OUTLINED_FUNCTION_20_1();
    v61 = v38;
    *v37 = 136315394;
    sub_1C754F45C();
    OUTLINED_FUNCTION_63_23();
    v39(v59, v2);
    v40 = OUTLINED_FUNCTION_23_14();
    v43 = sub_1C6F765A4(v40, v41, v42);

    *(v37 + 4) = v43;
    *(v37 + 12) = 2048;
    *(v37 + 14) = v34;
    _os_log_impl(&dword_1C6F5C000, v35, v36, "Cluster %s: Using %ld subcluster features as tie-breaker", v37, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v38);
    OUTLINED_FUNCTION_109();
    OUTLINED_FUNCTION_109();
  }

  else
  {

    OUTLINED_FUNCTION_63_23();
    v54(v59, v2);
  }

LABEL_16:
  OUTLINED_FUNCTION_25_0();
}

uint64_t sub_1C73D3D6C(uint64_t a1)
{
  v2 = v1;
  v10 = MEMORY[0x1E69E7CD0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216548, &unk_1C7589190);
  v4 = sub_1C754F46C();

  v5 = MEMORY[0x1E69E7CC8];
  v6 = sub_1C73D0F54(MEMORY[0x1E69E7CC8], v4, v2, &v10);

  v9[2] = &v10;
  v9[3] = v2;
  v9[4] = a1;
  v7 = sub_1C6FD9EEC(v5, sub_1C73DB40C, v9, v6);

  return v7;
}

void sub_1C73D3E54()
{
  OUTLINED_FUNCTION_33();
  v106 = v0;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216548, &unk_1C7589190);
  OUTLINED_FUNCTION_3_0();
  v108 = v5;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_14_2();
  v105[3] = v7;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_130();
  v107 = v9;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_108_0(v105 - v11);
  v105[2] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216A10, &unk_1C7565AF0);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_108_0(v13);
  v119 = sub_1C754DF6C();
  OUTLINED_FUNCTION_3_0();
  *&v113 = v14;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_14_0();
  v115 = v17 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219230, &unk_1C7563720);
  v19 = OUTLINED_FUNCTION_76(v18);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_14_2();
  v117 = v20;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v21);
  v23 = (v105 - v22);
  v118 = type metadata accessor for Hastings.Asset(0);
  OUTLINED_FUNCTION_3_0();
  v25 = v24;
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_14_2();
  v114 = v27;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_130();
  v116 = v29;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_102_4();
  v31 = sub_1C754F43C();
  type metadata accessor for Random();
  swift_allocObject();
  v32 = Random.init(randomSeed:)(42);
  v122 = 0;
  type metadata accessor for KMeans();
  swift_initStackObject();
  v110 = KMeans.init(numberOfClusters:distanceBlock:earlyStoppingDistance:random:randomSampler:)(v31, sub_1C7085560, 0, v32, &v122, 0.000001);
  v109 = v4;
  v105[4] = v3;
  v33 = v25;
  v34 = sub_1C754F46C();
  v35 = 0;
  v36 = *(v34 + 16);
  v112 = MEMORY[0x1E69E7CC0];
  v111 = v25;
  while (1)
  {
    if (v36 == v35)
    {

      v49 = v112;
      v50 = *(v112 + 16);
      v51 = v119;
      if (v50)
      {
        v35 = *(v118 + 32);
        OUTLINED_FUNCTION_191();
        v53 = v49 + v52;
        v54 = *(v33 + 72);
        v118 = v113 + 32;
        v114 = v113 + 8;
        v55 = MEMORY[0x1E69E7CC0];
        v56 = &unk_1EC219230;
        v113 = xmmword_1C755BAB0;
        v58 = v116;
        v57 = v117;
        do
        {
          OUTLINED_FUNCTION_0_170();
          sub_1C73D968C();
          sub_1C6FD7F70();
          if (__swift_getEnumTagSinglePayload(v57, 1, v51) == 1)
          {
            OUTLINED_FUNCTION_3_107();
            sub_1C73D96E4(v58, v59);
          }

          else
          {
            v60 = v56;
            (*v118)(v115, v57, v51);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2150D0, &unk_1C7569880);
            v61 = swift_allocObject();
            *(v61 + 16) = v113;
            sub_1C754DE3C();
            *&v62 = v62;
            *(v61 + 32) = LODWORD(v62);
            v63 = OUTLINED_FUNCTION_66_2();
            v64(v63);
            OUTLINED_FUNCTION_3_107();
            sub_1C73D96E4(v58, v65);
            v66 = v55;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              OUTLINED_FUNCTION_99();
              sub_1C6FB2DBC();
              v66 = v69;
            }

            v68 = *(v66 + 16);
            v67 = *(v66 + 24);
            v55 = v66;
            if (v68 >= v67 >> 1)
            {
              OUTLINED_FUNCTION_15(v67);
              sub_1C6FB2DBC();
              v55 = v70;
            }

            *(v55 + 16) = v68 + 1;
            *(v55 + 8 * v68 + 32) = v61;
            v58 = v116;
            v57 = v117;
            v56 = v60;
          }

          v53 += v54;
          --v50;
        }

        while (v50);
        v49 = v112;
        v71 = *(v112 + 16);
      }

      else
      {
        v71 = 0;
        v55 = MEMORY[0x1E69E7CC0];
      }

      v72 = v109;
      v73 = v108;
      v74 = v107;
      if (v71 == *(v55 + 16))
      {
        v35 = 0;
        (*(*v110 + 192))(v55);

        v93 = v110;
        OUTLINED_FUNCTION_0_53();
        swift_beginAccess();
        v94 = *(v93 + 64);
        if (v94)
        {
          v120 = MEMORY[0x1E69E7CC8];
          v95 = *(v94 + 16);
          sub_1C75504FC();
          v96 = 0;
          v23 = v105[1];
          while (v95 != v96)
          {
            if (v96 >= *(v94 + 16))
            {
              goto LABEL_44;
            }

            v97 = *(v112 + 16);
            if (v96 == v97)
            {
              break;
            }

            if (v96 >= v97)
            {
              goto LABEL_45;
            }

            *v23 = *(v94 + 8 * v96 + 32);
            OUTLINED_FUNCTION_0_170();
            sub_1C73D968C();
            sub_1C73D5338(&v120);
            sub_1C6FD7FC8(v23, &qword_1EC216A10, &unk_1C7565AF0);
            ++v96;
          }

          goto LABEL_38;
        }

        v98 = v105[0];
        OUTLINED_FUNCTION_39_39();
        v100 = v99();
        v77 = OUTLINED_FUNCTION_47_23(v100);
        v101 = sub_1C755119C();
        if (!os_log_type_enabled(v77, v101))
        {

          (*(v73 + 8))(v98, v72);
          goto LABEL_30;
        }

        swift_slowAlloc();
        v80 = OUTLINED_FUNCTION_47_10();
        v120 = v80;
        MEMORY[0] = 136315138;
        sub_1C754F45C();
        OUTLINED_FUNCTION_64_18();
        v103 = v102(v98, v72);
        OUTLINED_FUNCTION_73_21(v103, v104, &v120);
        OUTLINED_FUNCTION_2_61();

        MEMORY[4] = v98;
        v86 = "Cluster %s: No labels from clustering";
        v87 = v101;
        v88 = v77;
        v89 = 0;
        v90 = 12;
      }

      else
      {
        OUTLINED_FUNCTION_39_39();
        v75();

        v76 = sub_1C75504FC();
        v77 = OUTLINED_FUNCTION_47_23(v76);
        v78 = sub_1C755119C();
        if (!os_log_type_enabled(v77, v78))
        {

          swift_bridgeObjectRelease_n();
          (*(v73 + 8))(v74, v72);
          goto LABEL_30;
        }

        OUTLINED_FUNCTION_20_1();
        v80 = OUTLINED_FUNCTION_47_10();
        v121 = v80;
        *v35 = 136315650;
        sub_1C754F45C();
        OUTLINED_FUNCTION_64_18();
        v82 = v81(v74, v72);
        OUTLINED_FUNCTION_73_21(v82, v83, &v121);
        OUTLINED_FUNCTION_2_61();

        *(v35 + 4) = v74;
        *(v35 + 12) = 2048;
        v84 = *(v49 + 16);

        *(v35 + 14) = v84;

        *(v35 + 22) = 2048;
        v85 = *(v55 + 16);

        *(v35 + 24) = v85;

        v86 = "Cluster %s: assetsForClustering has inexplicably not the same number of items (%ld) as pointsForClustering %ld";
        v87 = v78;
        v88 = v77;
        v89 = v35;
        v90 = 32;
      }

      _os_log_impl(&dword_1C6F5C000, v88, v87, v86, v89, v90);
      __swift_destroy_boxed_opaque_existential_1(v80);
      OUTLINED_FUNCTION_109();
      OUTLINED_FUNCTION_109();

LABEL_30:
      type metadata accessor for Hastings.Feature(0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2168C8, &unk_1C75656D0);
      OUTLINED_FUNCTION_17_74();
      sub_1C73D31AC(v91, v92, protocol conformance descriptor for Hastings.Feature);
      sub_1C75504DC();

LABEL_38:
      OUTLINED_FUNCTION_25_0();
      return;
    }

    if (v35 >= *(v34 + 16))
    {
      break;
    }

    OUTLINED_FUNCTION_0_170();
    sub_1C73D968C();
    sub_1C6FD7F70();
    if (__swift_getEnumTagSinglePayload(v23, 1, v119) == 1)
    {
      OUTLINED_FUNCTION_3_107();
      sub_1C73D96E4(v1, v37);
      sub_1C6FD7FC8(v23, &unk_1EC219230, &unk_1C7563720);
      ++v35;
    }

    else
    {
      sub_1C6FD7FC8(v23, &unk_1EC219230, &unk_1C7563720);
      OUTLINED_FUNCTION_1_126();
      sub_1C73D973C();
      v38 = v112;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v121 = v38;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v40 = OUTLINED_FUNCTION_99();
        sub_1C716E298(v40, v41, v42);
        v33 = v111;
        v38 = v121;
      }

      v44 = *(v38 + 16);
      v43 = *(v38 + 24);
      v45 = v44 + 1;
      if (v44 >= v43 >> 1)
      {
        v46 = OUTLINED_FUNCTION_15(v43);
        v48 = v47;
        sub_1C716E298(v46, v47, 1);
        v45 = v48;
        v33 = v111;
        v38 = v121;
      }

      ++v35;
      *(v38 + 16) = v45;
      v112 = v38;
      OUTLINED_FUNCTION_1_126();
      sub_1C73D973C();
    }
  }

  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);

  sub_1C6FD7FC8(v23, &qword_1EC216A10, &unk_1C7565AF0);

  __break(1u);
}

uint64_t sub_1C73D4B94(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v42[2] = a4;
  v50 = a1;
  v6 = type metadata accessor for Hastings.Asset(0);
  v44 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v49 = v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = 0;
  v9 = 0;
  v10 = a2[1];
  v53 = *a2;
  v45 = a3;
  v46 = a2;
  v51 = v10;
  v11 = *(a3 + OBJC_IVAR____TtCV18PhotosIntelligence8Hastings19ClusterAssetElector_curationOptions + 40);
  v12 = *(v11 + 16);
  v47 = v11;
  v48 = v12;
  v43 = OBJC_IVAR____TtCV18PhotosIntelligence8Hastings19ClusterAssetElector_anchorAssetUUIDs;
  for (i = (v11 + 48); ; i += 3)
  {
    if (v48 == v9)
    {
      return sub_1C6F6E5B4(v8, 0);
    }

    if (v9 >= *(v47 + 16))
    {
      break;
    }

    v14 = *i;
    if (!*(*i + 16))
    {
      return sub_1C6F6E5B4(v8, 0);
    }

    sub_1C75504FC();
    sub_1C75504FC();
    sub_1C75504FC();
    v15 = sub_1C6F78124(v53, v51);
    if ((v16 & 1) == 0)
    {

      return sub_1C6F6E5B4(v8, 0);
    }

    v17 = (*(v14 + 56) + 16 * v15);
    v19 = *v17;
    v18 = v17[1];
    sub_1C75504FC();

    sub_1C73D968C();
    sub_1C6F6E5B4(v8, 0);
    v20 = v50;
    swift_isUniquelyReferenced_nonNull_native();
    v52 = *v20;
    v21 = v52;
    v22 = sub_1C6F78124(v19, v18);
    if (__OFADD__(v21[2], (v23 & 1) == 0))
    {
      goto LABEL_23;
    }

    v24 = v22;
    v25 = v23;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21B6F0, &unk_1C75891C0);
    v26 = sub_1C7551A2C();
    v27 = v52;
    if (v26)
    {
      v28 = sub_1C6F78124(v19, v18);
      if ((v25 & 1) != (v29 & 1))
      {
        goto LABEL_25;
      }

      v24 = v28;
    }

    *v50 = v27;
    if ((v25 & 1) == 0)
    {
      v27[(v24 >> 6) + 8] |= 1 << v24;
      v30 = (v27[6] + 16 * v24);
      *v30 = v19;
      v30[1] = v18;
      *(v27[7] + 8 * v24) = MEMORY[0x1E69E7CC0];
      v31 = v27[2];
      v32 = __OFADD__(v31, 1);
      v33 = v31 + 1;
      if (v32)
      {
        goto LABEL_24;
      }

      v27[2] = v33;
      sub_1C75504FC();
    }

    v34 = v27[7];
    v35 = *(v34 + 8 * v24);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v34 + 8 * v24) = v35;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1C6FB2ED4(0, *(v35 + 16) + 1, 1, v35);
      v35 = v39;
      *(v34 + 8 * v24) = v39;
    }

    v38 = *(v35 + 16);
    v37 = *(v35 + 24);
    if (v38 >= v37 >> 1)
    {
      sub_1C6FB2ED4(v37 > 1, v38 + 1, 1, v35);
      v35 = v40;
      *(v34 + 8 * v24) = v40;
    }

    *(v35 + 16) = v38 + 1;
    sub_1C73D973C();
    if (sub_1C7009C30(v53, v51, *(v45 + v43)))
    {
      sub_1C70F082C(&v52, v19, v18);
    }

    ++v9;
    v8 = sub_1C6F86C50;
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  result = sub_1C7551E4C();
  __break(1u);
  return result;
}

void sub_1C73D4F84(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v33 = a5;
  v34 = a4;
  v35 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216548, &unk_1C7589190);
  v36 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v32 - v8;
  v10 = type metadata accessor for Hastings.Feature(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a2;
  v13 = *(a2 + 8);
  v15 = *(a2 + 16);
  v16 = *a3;
  sub_1C75504FC();
  sub_1C75504FC();
  sub_1C75504FC();
  v17 = sub_1C7009C30(v14, v13, v16);

  if (v17)
  {
    v18 = *(v10 + 24);
    v19 = *MEMORY[0x1E69C1910];
    v20 = sub_1C754F58C();
    (*(*(v20 - 8) + 104))(&v12[v18], v19, v20);
    *v12 = v14;
    *(v12 + 1) = v13;
    v12[16] = 5;
    v21 = v35;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v37 = *v21;
    sub_1C6FC8748(v15, v12, isUniquelyReferenced_nonNull_native);
    *v21 = v37;
    sub_1C73D96E4(v12, type metadata accessor for Hastings.Feature);
  }

  else
  {
    v35 = v14;

    (*(v36 + 16))(v9, v33, v7);
    sub_1C75504FC();
    v23 = sub_1C754FEEC();
    v24 = sub_1C75511BC();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v37 = v26;
      *v25 = 136315394;
      v27 = sub_1C754F45C();
      v29 = v28;
      (*(v36 + 8))(v9, v7);
      v30 = sub_1C6F765A4(v27, v29, &v37);

      *(v25 + 4) = v30;
      *(v25 + 12) = 2080;
      v31 = sub_1C6F765A4(v35, v13, &v37);

      *(v25 + 14) = v31;
      _os_log_impl(&dword_1C6F5C000, v23, v24, "Cluster%s: group %s doesn't have any anchor asset, not usable as feature", v25, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1CCA5F8E0](v26, -1, -1);
      MEMORY[0x1CCA5F8E0](v25, -1, -1);
    }

    else
    {

      (*(v36 + 8))(v9, v7);
    }
  }
}

uint64_t sub_1C73D5338(uint64_t *a1)
{
  v42 = a1;
  v1 = type metadata accessor for Hastings.Feature(0);
  MEMORY[0x1EEE9AC00](v1);
  v40 = v39 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = v39 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216A10, &unk_1C7565AF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = (v39 - v7);
  v9 = type metadata accessor for Hastings.Asset(0);
  v41 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v39 - v11;
  sub_1C6FD7F70();
  v13 = *v8;
  sub_1C73D973C();
  v43 = 0x7473756C63627553;
  v44 = 0xEB00000000207265;
  v45 = v13;
  v14 = sub_1C7551D8C();
  MEMORY[0x1CCA5CD70](v14);

  v15 = v43;
  v16 = v44;
  v39[1] = v1;
  v17 = *(v1 + 24);
  v18 = v42;
  v19 = *MEMORY[0x1E69C1910];
  v20 = sub_1C754F58C();
  (*(*(v20 - 8) + 104))(&v5[v17], v19, v20);
  *v5 = v15;
  *(v5 + 1) = v16;
  v5[16] = 5;
  sub_1C73D968C();
  swift_isUniquelyReferenced_nonNull_native();
  v43 = *v18;
  v21 = v43;
  v22 = sub_1C6FC27A8();
  if (__OFADD__(*(v21 + 16), (v23 & 1) == 0))
  {
    __break(1u);
    goto LABEL_9;
  }

  v24 = v22;
  v25 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2151F8, &qword_1C755CAD0);
  v26 = sub_1C7551A2C();
  v27 = v43;
  if (v26)
  {
    v28 = sub_1C6FC27A8();
    if ((v25 & 1) == (v29 & 1))
    {
      v24 = v28;
      goto LABEL_5;
    }

LABEL_9:
    result = sub_1C7551E4C();
    __break(1u);
    return result;
  }

LABEL_5:
  *v18 = v27;
  if ((v25 & 1) == 0)
  {
    v30 = v40;
    sub_1C73D968C();
    sub_1C6FC70CC(v24, v30, MEMORY[0x1E69E7CC0], v27);
  }

  v31 = *(v27 + 56) + 8 * v24;
  sub_1C6FB0AA8();
  v32 = *(*v31 + 16);
  sub_1C6FB12F4(v32, v33, v34, v35, v36, v37);
  sub_1C73D96E4(v5, type metadata accessor for Hastings.Feature);
  sub_1C73D96E4(v12, type metadata accessor for Hastings.Asset);
  *(*v31 + 16) = v32 + 1;
  return sub_1C73D973C();
}

uint64_t sub_1C73D5774(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x726F68636E61 && a2 == 0xE600000000000000;
  if (v4 || (sub_1C7551DBC() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x646E657065646E69 && a2 == 0xEB00000000746E65;
    if (v6 || (sub_1C7551DBC() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x6E65646E65706564 && a2 == 0xE900000000000074)
    {

      return 2;
    }

    else
    {
      v8 = sub_1C7551DBC();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_1C73D588C(char a1)
{
  if (!a1)
  {
    return 0x726F68636E61;
  }

  if (a1 == 1)
  {
    return 0x646E657065646E69;
  }

  return 0x6E65646E65706564;
}

uint64_t sub_1C73D58EC(uint64_t a1)
{
  v2 = sub_1C73D9890();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C73D5928(uint64_t a1)
{
  v2 = sub_1C73D9890();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C73D596C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C73D5774(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C73D5994(uint64_t a1)
{
  v2 = sub_1C73D9794();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C73D59D0(uint64_t a1)
{
  v2 = sub_1C73D9794();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C73D5A0C(uint64_t a1)
{
  v2 = sub_1C73D97E8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C73D5A48(uint64_t a1)
{
  v2 = sub_1C73D97E8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C73D5A84(uint64_t a1)
{
  v2 = sub_1C73D983C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C73D5AC0(uint64_t a1)
{
  v2 = sub_1C73D983C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Hastings.ClusterAssetElector.StochatizedAsset.DependencyType.encode(to:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21B550, &qword_1C7588560);
  OUTLINED_FUNCTION_3_0();
  v32 = v6;
  v33 = v5;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_36();
  v31 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21B558, &qword_1C7588568);
  OUTLINED_FUNCTION_3_0();
  v29 = v10;
  v30 = v9;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_36();
  v28 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21B560, &qword_1C7588570);
  OUTLINED_FUNCTION_3_0();
  v26 = v14;
  v27 = v13;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_61_1();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21B568, &qword_1C7588578);
  OUTLINED_FUNCTION_3_0();
  v18 = v17;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_45_34();
  v20 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v21 = sub_1C73D9794();
  OUTLINED_FUNCTION_70_20(&_s19ClusterAssetElectorC16StochatizedAssetV14DependencyTypeO10CodingKeysON, v22, v21);
  if (v20)
  {
    if (v20 == 1)
    {
      v35 = 1;
      sub_1C73D983C();
      v2 = v28;
      OUTLINED_FUNCTION_4_59(&_s19ClusterAssetElectorC16StochatizedAssetV14DependencyTypeO21IndependentCodingKeysON, &v35);
      v24 = v29;
      v23 = v30;
    }

    else
    {
      v36 = 2;
      sub_1C73D97E8();
      v2 = v31;
      OUTLINED_FUNCTION_4_59(&_s19ClusterAssetElectorC16StochatizedAssetV14DependencyTypeO19DependentCodingKeysON, &v36);
      v24 = v32;
      v23 = v33;
    }
  }

  else
  {
    v34 = 0;
    sub_1C73D9890();
    OUTLINED_FUNCTION_4_59(&_s19ClusterAssetElectorC16StochatizedAssetV14DependencyTypeO16AnchorCodingKeysON, &v34);
    v24 = v26;
    v23 = v27;
  }

  (*(v24 + 8))(v2, v23);
  return (*(v18 + 8))(v3, v16);
}

uint64_t sub_1C73D5E1C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000021 && 0x80000001C75AE830 == a2;
  if (v4 || (sub_1C7551DBC() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD00000000000001ALL && 0x80000001C75AE860 == a2;
    if (v6 || (sub_1C7551DBC() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x726568746FLL && a2 == 0xE500000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_1C7551DBC();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_1C73D5F34(char a1)
{
  if (!a1)
  {
    return 0xD000000000000021;
  }

  if (a1 == 1)
  {
    return 0xD00000000000001ALL;
  }

  return 0x726568746FLL;
}

uint64_t sub_1C73D5F94(uint64_t a1)
{
  v2 = sub_1C73D998C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C73D5FD0(uint64_t a1)
{
  v2 = sub_1C73D998C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C73D6014@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C73D5E1C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C73D603C(uint64_t a1)
{
  v2 = sub_1C73D98E4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C73D6078(uint64_t a1)
{
  v2 = sub_1C73D98E4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C73D60B4(uint64_t a1)
{
  v2 = sub_1C73D99E0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C73D60F0(uint64_t a1)
{
  v2 = sub_1C73D99E0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C73D612C(uint64_t a1)
{
  v2 = sub_1C73D9938();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C73D6168(uint64_t a1)
{
  v2 = sub_1C73D9938();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Hastings.ClusterAssetElector.StochatizedAsset.PersonMatching.encode(to:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21B590, &qword_1C7588580);
  OUTLINED_FUNCTION_3_0();
  v32 = v6;
  v33 = v5;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_36();
  v31 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21B598, &qword_1C7588588);
  OUTLINED_FUNCTION_3_0();
  v29 = v10;
  v30 = v9;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_36();
  v28 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21B5A0, &qword_1C7588590);
  OUTLINED_FUNCTION_3_0();
  v26 = v14;
  v27 = v13;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_61_1();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21B5A8, &qword_1C7588598);
  OUTLINED_FUNCTION_3_0();
  v18 = v17;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_45_34();
  v20 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v21 = sub_1C73D98E4();
  OUTLINED_FUNCTION_70_20(&_s19ClusterAssetElectorC16StochatizedAssetV14PersonMatchingO10CodingKeysON, v22, v21);
  if (v20)
  {
    if (v20 == 1)
    {
      v35 = 1;
      sub_1C73D998C();
      v2 = v28;
      OUTLINED_FUNCTION_4_59(&_s19ClusterAssetElectorC16StochatizedAssetV14PersonMatchingO36AllRequiredCharactersAssetCodingKeysON, &v35);
      v24 = v29;
      v23 = v30;
    }

    else
    {
      v36 = 2;
      sub_1C73D9938();
      v2 = v31;
      OUTLINED_FUNCTION_4_59(&_s19ClusterAssetElectorC16StochatizedAssetV14PersonMatchingO15OtherCodingKeysON, &v36);
      v24 = v32;
      v23 = v33;
    }
  }

  else
  {
    v34 = 0;
    sub_1C73D99E0();
    OUTLINED_FUNCTION_4_59(&_s19ClusterAssetElectorC16StochatizedAssetV14PersonMatchingO43OnlyAndAllRequiredCharactersAssetCodingKeysON, &v34);
    v24 = v26;
    v23 = v27;
  }

  (*(v24 + 8))(v2, v23);
  return (*(v18 + 8))(v3, v16);
}

uint64_t Hastings.ClusterAssetElector.StochatizedAsset.dependencyType.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for Hastings.ClusterAssetElector.StochatizedAsset(0);
  *a1 = *(v1 + *(result + 20));
  return result;
}

uint64_t Hastings.ClusterAssetElector.StochatizedAsset.personMatching.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for Hastings.ClusterAssetElector.StochatizedAsset(0);
  *a1 = *(v1 + *(result + 24));
  return result;
}

int *Hastings.ClusterAssetElector.StochatizedAsset.init(asset:dependencyType:personMatching:isBadQuality:isExpressive:bestSemanticalRank:stochatizedCurationScore:stochatizedAestheticScore:iconicScoreBucket:isPlayable:hasPromotableLocation:)@<X0>(char *a1@<X1>, char *a2@<X2>, char a3@<W3>, char a4@<W4>, uint64_t a5@<X5>, char a6@<W6>, uint64_t a7@<X7>, uint64_t a8@<X8>, double a9@<D0>, double a10@<D1>, char a11, char a12)
{
  v20 = *a1;
  v21 = *a2;
  OUTLINED_FUNCTION_1_126();
  sub_1C73D973C();
  result = type metadata accessor for Hastings.ClusterAssetElector.StochatizedAsset(0);
  *(a8 + result[5]) = v20;
  *(a8 + result[6]) = v21;
  *(a8 + result[7]) = a3;
  *(a8 + result[8]) = a4;
  v23 = a8 + result[9];
  *v23 = a5;
  *(v23 + 8) = a6 & 1;
  *(a8 + result[10]) = a9;
  *(a8 + result[11]) = a10;
  *(a8 + result[12]) = a7;
  *(a8 + result[13]) = a11;
  *(a8 + result[14]) = a12;
  return result;
}

uint64_t Hastings.ClusterAssetElector.StochatizedAsset.description.getter()
{
  v1 = v0;
  sub_1C755180C();
  v2 = *v0;
  v3 = v1[1];
  sub_1C75504FC();
  v4 = sub_1C7033D84(8, v2, v3);
  v5 = MEMORY[0x1CCA5CC40](v4);
  v7 = v6;

  MEMORY[0x1CCA5CD70](v5, v7);

  MEMORY[0x1CCA5CD70](23328, 0xE200000000000000);
  v8 = type metadata accessor for Hastings.ClusterAssetElector.StochatizedAsset(0);
  OUTLINED_FUNCTION_71_17(v8, v9, &type metadata for Hastings.ClusterAssetElector.StochatizedAsset.DependencyType, v10);
  OUTLINED_FUNCTION_50_29();
  OUTLINED_FUNCTION_71_17(v11, v12, &type metadata for Hastings.ClusterAssetElector.StochatizedAsset.PersonMatching, v13);
  OUTLINED_FUNCTION_50_29();
  if (*(v1 + *(v8 + 28)))
  {
    v14 = 6578530;
  }

  else
  {
    v14 = 1685024615;
  }

  if (*(v1 + *(v8 + 28)))
  {
    v15 = 0xE300000000000000;
  }

  else
  {
    v15 = 0xE400000000000000;
  }

  MEMORY[0x1CCA5CD70](v14, v15);

  MEMORY[0x1CCA5CD70](0x6E61526D6573202CLL, 0xEA00000000003D6BLL);
  v16 = sub_1C7551D8C();
  MEMORY[0x1CCA5CD70](v16);

  OUTLINED_FUNCTION_50_29();
  if (*(v1 + *(v8 + 52)))
  {
    v17 = 0x656C626179616C70;
  }

  else
  {
    v17 = 0x79616C7020746F6ELL;
  }

  if (*(v1 + *(v8 + 52)))
  {
    v18 = 0xE800000000000000;
  }

  else
  {
    v18 = 0xEC000000656C6261;
  }

  MEMORY[0x1CCA5CD70](v17, v18);

  v19 = MEMORY[0x1CCA5CD70](0x3D727563202CLL, 0xE600000000000000);
  OUTLINED_FUNCTION_69_23(v19, v20);
  v21 = MEMORY[0x1CCA5CD70](0x3D736561202CLL, 0xE600000000000000);
  OUTLINED_FUNCTION_69_23(v21, v22);
  MEMORY[0x1CCA5CD70](0x3D6F6369202CLL, 0xE600000000000000);
  v23 = sub_1C7551D8C();
  MEMORY[0x1CCA5CD70](v23);

  MEMORY[0x1CCA5CD70](93, 0xE100000000000000);
  return 0;
}

uint64_t sub_1C73D69BC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7465737361 && a2 == 0xE500000000000000;
  if (v4 || (sub_1C7551DBC() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6E65646E65706564 && a2 == 0xEE00657079547963;
    if (v6 || (sub_1C7551DBC() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x614D6E6F73726570 && a2 == 0xEE00676E69686374;
      if (v7 || (sub_1C7551DBC() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6175516461427369 && a2 == 0xEC0000007974696CLL;
        if (v8 || (sub_1C7551DBC() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x7365727078457369 && a2 == 0xEC00000065766973;
          if (v9 || (sub_1C7551DBC() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD000000000000012 && 0x80000001C75AE880 == a2;
            if (v10 || (sub_1C7551DBC() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0xD000000000000018 && 0x80000001C75AE8A0 == a2;
              if (v11 || (sub_1C7551DBC() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0xD000000000000019 && 0x80000001C75AE8C0 == a2;
                if (v12 || (sub_1C7551DBC() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0xD000000000000011 && 0x80000001C7595830 == a2;
                  if (v13 || (sub_1C7551DBC() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0x626179616C507369 && a2 == 0xEA0000000000656CLL;
                    if (v14 || (sub_1C7551DBC() & 1) != 0)
                    {

                      return 9;
                    }

                    else if (a1 == 0xD000000000000015 && 0x80000001C75AE8E0 == a2)
                    {

                      return 10;
                    }

                    else
                    {
                      v16 = sub_1C7551DBC();

                      if (v16)
                      {
                        return 10;
                      }

                      else
                      {
                        return 11;
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_1C73D6D28(char a1)
{
  result = 0x7465737361;
  switch(a1)
  {
    case 1:
      result = 0x6E65646E65706564;
      break;
    case 2:
      result = 0x614D6E6F73726570;
      break;
    case 3:
      result = 0x6175516461427369;
      break;
    case 4:
      result = 0x7365727078457369;
      break;
    case 5:
      result = 0xD000000000000012;
      break;
    case 6:
      result = 0xD000000000000018;
      break;
    case 7:
      result = 0xD000000000000019;
      break;
    case 8:
      result = 0xD000000000000011;
      break;
    case 9:
      result = 0x626179616C507369;
      break;
    case 10:
      result = 0xD000000000000015;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C73D6EA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C73D69BC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C73D6ED0(uint64_t a1)
{
  v2 = sub_1C73D9A34();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C73D6F0C(uint64_t a1)
{
  v2 = sub_1C73D9A34();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Hastings.ClusterAssetElector.StochatizedAsset.encode(to:)()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21B5D0, &qword_1C75885A0);
  OUTLINED_FUNCTION_3_0();
  v4 = v3;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_61_1();
  v6 = OUTLINED_FUNCTION_23_14();
  __swift_project_boxed_opaque_existential_1(v6, v7);
  v8 = sub_1C73D9A34();
  OUTLINED_FUNCTION_20_14(&_s19ClusterAssetElectorC16StochatizedAssetV10CodingKeysON, v9, v8);
  type metadata accessor for Hastings.Asset(0);
  sub_1C73D31AC(&qword_1EC2168D8, type metadata accessor for Hastings.Asset, protocol conformance descriptor for Hastings.Asset);
  OUTLINED_FUNCTION_97();
  sub_1C7551D2C();
  if (!v0)
  {
    type metadata accessor for Hastings.ClusterAssetElector.StochatizedAsset(0);
    sub_1C73D9A88();
    OUTLINED_FUNCTION_10_74();
    sub_1C7551D2C();
    sub_1C73D9ADC();
    OUTLINED_FUNCTION_10_74();
    sub_1C7551D2C();
    OUTLINED_FUNCTION_10_74();
    sub_1C7551CDC();
    OUTLINED_FUNCTION_10_74();
    sub_1C7551CDC();
    OUTLINED_FUNCTION_97();
    sub_1C7551CAC();
    OUTLINED_FUNCTION_97();
    sub_1C7551CEC();
    OUTLINED_FUNCTION_97();
    sub_1C7551CEC();
    OUTLINED_FUNCTION_10_74();
    sub_1C7551D0C();
    OUTLINED_FUNCTION_10_74();
    sub_1C7551CDC();
    OUTLINED_FUNCTION_10_74();
    sub_1C7551CDC();
  }

  return (*(v4 + 8))(v1, v2);
}

void Hastings.ClusterAssetElector.stochatizedAssets(from:bestSemanticalRankByAsset:randomizer:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + OBJC_IVAR____TtCV18PhotosIntelligence8Hastings19ClusterAssetElector_configuration + 24);
  v8 = *(v3 + OBJC_IVAR____TtCV18PhotosIntelligence8Hastings19ClusterAssetElector_configuration + 32);
  v9 = *(v3 + OBJC_IVAR____TtCV18PhotosIntelligence8Hastings19ClusterAssetElector_configuration + 40);
  v10 = *(v3 + OBJC_IVAR____TtCV18PhotosIntelligence8Hastings19ClusterAssetElector_configuration + 48);
  v11 = *(v3 + OBJC_IVAR____TtCV18PhotosIntelligence8Hastings19ClusterAssetElector_configuration + 56);

  sub_1C75504FC();
  sub_1C73D1050(a1, v3, a2, a3, v11, v7, v8, v9, v10);
}

uint64_t sub_1C73D7314(uint64_t a1, uint64_t a2)
{
  v75 = a2;
  v65 = type metadata accessor for Hastings.Asset(0);
  MEMORY[0x1EEE9AC00](v65);
  v76 = &v64 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v68 = &v64 - v5;
  MEMORY[0x1EEE9AC00](v6);
  v73 = &v64 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v64 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v14 = (&v64 - v12);
  v15 = *(a1 + 16);
  v69 = v13;
  if (v15)
  {
    v16 = a1 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
    v17 = MEMORY[0x1E69E7CC8];
    v18 = *(v13 + 72);
    v77 = (&v64 - v12);
    while (1)
    {
      v78 = v15;
      sub_1C73D968C();
      v19 = *v14;
      v20 = v14[1];
      sub_1C73D968C();
      swift_isUniquelyReferenced_nonNull_native();
      v79 = v17;
      v21 = sub_1C6F78124(v19, v20);
      if (__OFADD__(*(v17 + 16), (v22 & 1) == 0))
      {
        break;
      }

      v23 = v21;
      v24 = v22;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216A38, &qword_1C7565B20);
      if (sub_1C7551A2C())
      {
        v25 = sub_1C6F78124(v19, v20);
        if ((v24 & 1) != (v26 & 1))
        {
          goto LABEL_54;
        }

        v23 = v25;
      }

      v17 = v79;
      if (v24)
      {
        sub_1C7091D14(v10, *(v79 + 56) + v23 * v18);
      }

      else
      {
        *(v79 + 8 * (v23 >> 6) + 64) |= 1 << v23;
        v27 = (*(v17 + 48) + 16 * v23);
        *v27 = v19;
        v27[1] = v20;
        sub_1C73D973C();
        v28 = *(v17 + 16);
        v29 = __OFADD__(v28, 1);
        v30 = v28 + 1;
        if (v29)
        {
          goto LABEL_51;
        }

        *(v17 + 16) = v30;
        sub_1C75504FC();
      }

      v14 = v77;
      sub_1C73D96E4(v77, type metadata accessor for Hastings.Asset);
      v16 += v18;
      v15 = v78 - 1;
      if (v78 == 1)
      {
        goto LABEL_14;
      }
    }
  }

  else
  {
    v17 = MEMORY[0x1E69E7CC8];
LABEL_14:
    v31 = v75 + 64;
    v32 = 1 << *(v75 + 32);
    v33 = -1;
    if (v32 < 64)
    {
      v33 = ~(-1 << v32);
    }

    v34 = v33 & *(v75 + 64);
    v35 = (v32 + 63) >> 6;
    sub_1C75504FC();
    v36 = 0;
    v74 = MEMORY[0x1E69E7CC8];
    v67 = v31;
    v72 = v35;
    if (v34)
    {
LABEL_17:
      v37 = v36;
LABEL_21:
      v38 = __clz(__rbit64(v34));
      v34 &= v34 - 1;
      v39 = v38 | (v37 << 6);
      v40 = *(*(v75 + 56) + 8 * v39);
      v42 = v40 + 16;
      v41 = *(v40 + 16);
      v78 = *(*(v75 + 48) + 16 * v39 + 8);
      sub_1C75504FC();
      sub_1C75504FC();
      v43 = 0;
      while (2)
      {
        v44 = (v42 + 24 * v43);
        do
        {
          if (v41 == v43)
          {

            v36 = v37;
            if (!v34)
            {
              goto LABEL_18;
            }

            goto LABEL_17;
          }

          if (v43 >= *(v40 + 16))
          {
            __break(1u);
            goto LABEL_49;
          }

          ++v43;
          v44 += 3;
        }

        while (!*(v17 + 16));
        v77 = v42;
        v45 = *(v44 - 1);
        v46 = *v44;
        sub_1C75504FC();
        sub_1C6F78124(v45, v46);
        if ((v47 & 1) == 0)
        {
LABEL_44:

          v35 = v72;
          v42 = v77;
          continue;
        }

        break;
      }

      v66 = *(v69 + 72);
      sub_1C73D968C();
      v48 = v73;
      sub_1C73D973C();
      sub_1C73D968C();
      v49 = v74;
      v50 = *(v74 + 16);
      v70 = v46;
      if (v50 && (sub_1C6FC292C(v48), (v52 & 1) != 0))
      {
        v53 = *(*(v49 + 56) + 8 * v51);
      }

      else
      {
        v53 = 0x7FFFFFFFFFFFFFFFLL;
      }

      if (v53 >= v43)
      {
        v53 = v43;
      }

      v71 = v53;
      swift_isUniquelyReferenced_nonNull_native();
      v79 = v49;
      sub_1C6FC292C(v76);
      if (!__OFADD__(*(v49 + 16), (v55 & 1) == 0))
      {
        v56 = v54;
        LODWORD(v74) = v55;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21B6F8, &unk_1C75891D0);
        if (sub_1C7551A2C())
        {
          sub_1C6FC292C(v76);
          v59 = v74;
          v31 = v67;
          if ((v74 & 1) != (v58 & 1))
          {
            goto LABEL_54;
          }

          v56 = v57;
        }

        else
        {
          v31 = v67;
          v59 = v74;
        }

        v60 = v79;
        v74 = v79;
        if (v59)
        {
          *(*(v79 + 56) + 8 * v56) = v71;
        }

        else
        {
          *(v79 + 8 * (v56 >> 6) + 64) |= 1 << v56;
          sub_1C73D968C();
          *(*(v60 + 56) + 8 * v56) = v71;
          v61 = *(v60 + 16);
          v29 = __OFADD__(v61, 1);
          v62 = v61 + 1;
          if (v29)
          {
            goto LABEL_53;
          }

          *(v60 + 16) = v62;
        }

        sub_1C73D96E4(v76, type metadata accessor for Hastings.Asset);
        sub_1C73D96E4(v73, type metadata accessor for Hastings.Asset);
        goto LABEL_44;
      }

      goto LABEL_52;
    }

LABEL_18:
    while (1)
    {
      v37 = v36 + 1;
      if (__OFADD__(v36, 1))
      {
        break;
      }

      if (v37 >= v35)
      {

        return v74;
      }

      v34 = *(v31 + 8 * v37);
      ++v36;
      if (v34)
      {
        goto LABEL_21;
      }
    }

LABEL_49:
    __break(1u);
  }

  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  result = sub_1C7551E4C();
  __break(1u);
  return result;
}

uint64_t sub_1C73D798C(void *a1, void *a2)
{
  type metadata accessor for Hastings.ClusterAssetElector.StochatizedAsset(0);
  OUTLINED_FUNCTION_40_41();
  if (!v48)
  {
    return v3;
  }

  v7 = v6[6];
  v8 = *(a1 + v7);
  v3 = *(a1 + v7) == 0;
  v9 = *(a2 + v7);
  if (v3 == (v9 != 0))
  {
    return v3;
  }

  v3 = v8 == 1;
  if (v3 == (v9 != 1))
  {
    return v3;
  }

  v10 = v2 + OBJC_IVAR____TtCV18PhotosIntelligence8Hastings19ClusterAssetElector_configuration;
  if (*(v2 + OBJC_IVAR____TtCV18PhotosIntelligence8Hastings19ClusterAssetElector_configuration + 19) == 1)
  {
    v11 = v6[12];
    v12 = *(a1 + v11);
    v13 = *(a2 + v11);
    if (v12 != v13)
    {
      return v13 < v12;
    }
  }

  v14 = v6[5];
  v3 = *(a1 + v14) == 0;
  if (v3 == (*(a2 + v14) != 0))
  {
    return v3;
  }

  v15 = v6[7];
  v3 = *(a2 + v15);
  if (*(a1 + v15) != v3)
  {
    return v3;
  }

  v17 = v6[9];
  v16 = v6[10];
  v18 = *(a1 + v16);
  v19 = *(a2 + v16);
  v20 = *(a1 + v17);
  v21 = *(a1 + v17 + 8);
  v22 = a2 + v17;
  v23 = *(a2 + v17);
  v24 = v22[8];
  if (*v10 == 1)
  {
    if (v18 >= 0.75 && v19 < 0.6)
    {
      return 1;
    }

    if (v19 >= 0.75 && v18 < 0.6)
    {
      return 0;
    }
  }

  if (*(v10 + 1) == 1)
  {
    if (v18 >= 0.75 && v19 < 0.75)
    {
      return 1;
    }

    if (v19 >= 0.75 && v18 < 0.75)
    {
      return 0;
    }
  }

  if (((*(v10 + 16) | v21 | v24) & 1) == 0)
  {
    v38 = *(v10 + 8);
    if (v38 >= v20 && v38 < v23)
    {
      return 1;
    }

    if (v38 >= v23 && v38 < v20)
    {
      return 0;
    }
  }

  if (*(v10 + 17) != 1)
  {
    goto LABEL_33;
  }

  if (!((v18 <= 0.5) | v21 & 1) && v24 == 1)
  {
    return 1;
  }

  if (!((v19 <= 0.5) | v24 & 1) && v21 == 1)
  {
    return 0;
  }

LABEL_33:
  if (*(v10 + 18) != 1)
  {
    if (((v21 | v24) & 1) != 0 || v20 == v23)
    {
      goto LABEL_67;
    }

    return v20 < v23;
  }

  if (!v21)
  {
    if (v20 == v23)
    {
      v42 = 1;
    }

    else
    {
      v42 = v24;
    }

    if (v42)
    {
      goto LABEL_67;
    }

    return v20 < v23;
  }

  if (v24)
  {
    v29 = v6[11];
    v30 = *(a1 + v29);
    v31 = *(a2 + v29);
    v32 = type metadata accessor for Hastings.Asset(0);
    v33 = [*(a1 + *(v32 + 52)) aestheticsModel];
    if (v33)
    {
      v34 = v33;
      [v33 aestheticScoreThresholdToBeAestheticallyPrettyGood];
      v36 = v35;
    }

    else
    {
      v36 = 1.0;
    }

    v3 = v36 <= v30;
    v43 = [*(a2 + *(v32 + 52)) aestheticsModel];
    if (v43)
    {
      v44 = v43;
      v45 = v36 <= v30;
      [v43 aestheticScoreThresholdToBeAestheticallyPrettyGood];
      v47 = v46;

      if (((v45 ^ (v47 > v31)) & 1) == 0)
      {
        return v3;
      }
    }

    else if (v31 < 1.0 == v36 <= v30)
    {
      return v3;
    }
  }

LABEL_67:
  if (v18 != v19)
  {
    return v19 < v18;
  }

  OUTLINED_FUNCTION_40_41();
  if (!v48)
  {
    return v3;
  }

  OUTLINED_FUNCTION_40_41();
  if (!v48)
  {
    return v3;
  }

  v48 = *a1 == *a2 && a1[1] == a2[1];
  if (v48)
  {
    return 0;
  }

  return sub_1C7551DBC();
}

uint64_t Hastings.ClusterAssetElector.deinit()
{
  v1 = OBJC_IVAR____TtCV18PhotosIntelligence8Hastings19ClusterAssetElector_logger;
  sub_1C754FF1C();
  OUTLINED_FUNCTION_12();
  (*(v2 + 8))(&v1[v0]);

  return v0;
}

uint64_t Hastings.ClusterAssetElector.__deallocating_deinit()
{
  Hastings.ClusterAssetElector.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1C73D7E68(uint64_t *a1, uint64_t a2)
{
  v4 = a1[1];
  swift_retain_n();
  result = sub_1C7551D7C();
  if (result < v4)
  {
    if (v4 >= -1)
    {
      v6 = result;
      v7 = v4 / 2;
      if (v4 <= 1)
      {
        v8 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        type metadata accessor for Hastings.ClusterAssetElector.StochatizedAsset(0);
        v8 = sub_1C7550BBC();
        *(v8 + 16) = v7;
      }

      v9 = *(type metadata accessor for Hastings.ClusterAssetElector.StochatizedAsset(0) - 8);
      v10[0] = v8 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
      v10[1] = v7;

      sub_1C73D8254(v10, v11, a1, v6, a2);
      *(v8 + 16) = 0;
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
    sub_1C73D7FDC(0, v4, 1, a1);
  }
}

void sub_1C73D7FDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v33 = type metadata accessor for Hastings.ClusterAssetElector.StochatizedAsset(0);
  MEMORY[0x1EEE9AC00](v33);
  v32 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = (&v24 - v10);
  MEMORY[0x1EEE9AC00](v12);
  v15 = (&v24 - v14);
  v26 = a2;
  if (a3 == a2)
  {
  }

  else
  {
    v16 = *(v13 + 72);
    v17 = *a4 + v16 * (a3 - 1);
    v18 = -v16;
    v19 = a1 - a3;
    v31 = *a4;
    v25 = v16;
    v20 = v31 + v16 * a3;
    while (2)
    {
      v29 = v17;
      v30 = a3;
      v27 = v20;
      v28 = v19;
      v21 = v17;
      do
      {
        sub_1C73D968C();
        sub_1C73D968C();
        v22 = sub_1C73D798C(v15, v11);
        sub_1C73D96E4(v11, type metadata accessor for Hastings.ClusterAssetElector.StochatizedAsset);
        sub_1C73D96E4(v15, type metadata accessor for Hastings.ClusterAssetElector.StochatizedAsset);
        if ((v22 & 1) == 0)
        {
          break;
        }

        if (!v31)
        {

          __break(1u);
          return;
        }

        sub_1C73D973C();
        swift_arrayInitWithTakeFrontToBack();
        sub_1C73D973C();
        v21 += v18;
        v20 += v18;
      }

      while (!__CFADD__(v19++, 1));
      a3 = v30 + 1;
      v17 = v29 + v25;
      v19 = v28 - 1;
      v20 = v27 + v25;
      if (v30 + 1 != v26)
      {
        continue;
      }

      break;
    }
  }
}

void sub_1C73D8254(unint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v118 = a1;
  v132 = type metadata accessor for Hastings.ClusterAssetElector.StochatizedAsset(0);
  v126 = *(v132 - 8);
  MEMORY[0x1EEE9AC00](v132);
  v121 = &v115 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v131 = &v115 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v134 = (&v115 - v12);
  MEMORY[0x1EEE9AC00](v13);
  v133 = (&v115 - v14);
  v128 = a3;
  v15 = a3[1];
  v135 = a5;
  if (v15 < 1)
  {
    swift_retain_n();
    v17 = MEMORY[0x1E69E7CC0];
LABEL_102:
    v132 = *v118;
    if (!v132)
    {
      goto LABEL_145;
    }

    swift_retain_n();
    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_104:
      v102 = v129;
      v103 = v17 + 16;
      v104 = *(v17 + 2);
      for (i = v17; ; v17 = i)
      {
        if (v104 < 2)
        {

          return;
        }

        v105 = *v128;
        if (!*v128)
        {
          goto LABEL_142;
        }

        v106 = &v17[16 * v104];
        v107 = *v106;
        v108 = v103;
        v109 = &v103[16 * v104];
        v110 = *(v109 + 1);
        v111 = *(v126 + 72);
        v112 = v105 + v111 * *v106;
        v113 = v105 + v111 * *v109;
        v133 = (v105 + v111 * v110);
        v134 = v112;

        sub_1C73D8C60(v134, v113, v133, v132);
        if (v102)
        {
          break;
        }

        if (v110 < v107)
        {
          goto LABEL_130;
        }

        if (v104 - 2 >= *v108)
        {
          goto LABEL_131;
        }

        v103 = v108;
        *v106 = v107;
        *(v106 + 1) = v110;
        v114 = *v108 - v104;
        if (*v108 < v104)
        {
          goto LABEL_132;
        }

        v104 = *v108 - 1;
        sub_1C7423CF4(v109 + 16, v114, v109);
        *v108 = v104;
      }

LABEL_114:

      return;
    }

LABEL_139:
    v17 = sub_1C7420830();
    goto LABEL_104;
  }

  v116 = a4;
  swift_retain_n();
  v16 = 0;
  v17 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if (v16 + 1 >= v15)
    {
      v127 = v16 + 1;
    }

    else
    {
      i = v17;
      v18 = *(v126 + 72);
      v19 = *v128 + v18 * (v16 + 1);
      v124 = *v128;
      v20 = v133;
      v127 = v15;
      sub_1C73D968C();
      v21 = v134;
      sub_1C73D968C();
      LODWORD(v125) = sub_1C73D798C(v20, v21);
      sub_1C73D96E4(v21, type metadata accessor for Hastings.ClusterAssetElector.StochatizedAsset);
      sub_1C73D96E4(v20, type metadata accessor for Hastings.ClusterAssetElector.StochatizedAsset);
      v22 = v127;
      v117 = v16;
      v23 = v16 + 2;
      v130 = v18;
      v24 = v124 + v18 * (v16 + 2);
      v25 = v16 + 1;
      while (1)
      {
        v26 = v23;
        if (++v25 >= v22)
        {
          break;
        }

        v27 = v133;
        sub_1C73D968C();
        v28 = v134;
        sub_1C73D968C();
        v29 = sub_1C73D798C(v27, v28) & 1;
        sub_1C73D96E4(v28, type metadata accessor for Hastings.ClusterAssetElector.StochatizedAsset);
        sub_1C73D96E4(v27, type metadata accessor for Hastings.ClusterAssetElector.StochatizedAsset);
        v22 = v127;
        v24 += v130;
        v19 += v130;
        v23 = v26 + 1;
        if ((v125 & 1) != v29)
        {
          goto LABEL_10;
        }
      }

      v25 = v22;
LABEL_10:
      v127 = v25;
      v17 = i;
      if ((v125 & 1) == 0)
      {
        goto LABEL_30;
      }

      v16 = v117;
      v30 = v127;
      if (v127 < v117)
      {
        goto LABEL_136;
      }

      if (v117 < v127)
      {
        if (v22 >= v26)
        {
          v31 = v26;
        }

        else
        {
          v31 = v22;
        }

        v32 = v130 * (v31 - 1);
        v33 = v130 * v31;
        v34 = v117 * v130;
        do
        {
          if (v16 != --v30)
          {
            v35 = *v128;
            if (!*v128)
            {
              goto LABEL_143;
            }

            sub_1C73D973C();
            v36 = v34 < v32 || v35 + v34 >= v35 + v33;
            if (v36)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v34 != v32)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            sub_1C73D973C();
          }

          ++v16;
          v32 -= v130;
          v33 -= v130;
          v34 += v130;
        }

        while (v16 < v30);
        v17 = i;
LABEL_30:
        v16 = v117;
      }
    }

    v37 = v128[1];
    if (v127 < v37)
    {
      if (__OFSUB__(v127, v16))
      {
        goto LABEL_135;
      }

      if (v127 - v16 < v116)
      {
        break;
      }
    }

LABEL_48:
    if (v127 < v16)
    {
      goto LABEL_134;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1C6FB17EC(0, *(v17 + 2) + 1, 1, v17);
      v17 = v100;
    }

    v50 = *(v17 + 2);
    v49 = *(v17 + 3);
    v51 = v50 + 1;
    if (v50 >= v49 >> 1)
    {
      sub_1C6FB17EC(v49 > 1, v50 + 1, 1, v17);
      v17 = v101;
    }

    *(v17 + 2) = v51;
    v52 = v17 + 32;
    v53 = &v17[16 * v50 + 32];
    v54 = v127;
    *v53 = v16;
    *(v53 + 1) = v54;
    v130 = *v118;
    if (!v130)
    {
      goto LABEL_144;
    }

    if (v50)
    {
      v125 = (v17 + 32);
      while (1)
      {
        v55 = v51 - 1;
        v56 = &v52[16 * v51 - 16];
        v57 = &v17[16 * v51];
        if (v51 >= 4)
        {
          break;
        }

        if (v51 == 3)
        {
          v58 = *(v17 + 4);
          v59 = *(v17 + 5);
          v68 = __OFSUB__(v59, v58);
          v60 = v59 - v58;
          v61 = v68;
LABEL_69:
          if (v61)
          {
            goto LABEL_121;
          }

          v73 = *v57;
          v72 = *(v57 + 1);
          v74 = __OFSUB__(v72, v73);
          v75 = v72 - v73;
          v76 = v74;
          if (v74)
          {
            goto LABEL_124;
          }

          v77 = *(v56 + 1);
          v78 = v77 - *v56;
          if (__OFSUB__(v77, *v56))
          {
            goto LABEL_127;
          }

          if (__OFADD__(v75, v78))
          {
            goto LABEL_129;
          }

          if (v75 + v78 >= v60)
          {
            if (v60 < v78)
            {
              v55 = v51 - 2;
            }

            goto LABEL_91;
          }

          goto LABEL_84;
        }

        if (v51 < 2)
        {
          goto LABEL_123;
        }

        v80 = *v57;
        v79 = *(v57 + 1);
        v68 = __OFSUB__(v79, v80);
        v75 = v79 - v80;
        v76 = v68;
LABEL_84:
        if (v76)
        {
          goto LABEL_126;
        }

        v82 = *v56;
        v81 = *(v56 + 1);
        v68 = __OFSUB__(v81, v82);
        v83 = v81 - v82;
        if (v68)
        {
          goto LABEL_128;
        }

        if (v83 < v75)
        {
          goto LABEL_98;
        }

LABEL_91:
        if (v55 - 1 >= v51)
        {
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
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
          goto LABEL_138;
        }

        v87 = *v128;
        if (!*v128)
        {
          goto LABEL_141;
        }

        v88 = &v52[16 * v55 - 16];
        v89 = *v88;
        v90 = v55;
        v91 = &v52[16 * v55];
        v92 = *(v91 + 1);
        v93 = *(v126 + 72);
        v94 = v87 + v93 * *v88;
        v95 = v87 + v93 * *v91;
        v96 = v87 + v93 * v92;

        v97 = v94;
        v98 = v129;
        sub_1C73D8C60(v97, v95, v96, v130);
        if (v98)
        {

          goto LABEL_114;
        }

        if (v92 < v89)
        {
          goto LABEL_116;
        }

        v99 = *(v17 + 2);
        if (v90 > v99)
        {
          goto LABEL_117;
        }

        *v88 = v89;
        *(v88 + 1) = v92;
        if (v90 >= v99)
        {
          goto LABEL_118;
        }

        v129 = 0;
        v51 = v99 - 1;
        sub_1C7423CF4(v91 + 16, v99 - 1 - v90, v91);
        *(v17 + 2) = v99 - 1;
        v52 = v125;
        if (v99 <= 2)
        {
          goto LABEL_98;
        }
      }

      v62 = &v52[16 * v51];
      v63 = *(v62 - 8);
      v64 = *(v62 - 7);
      v68 = __OFSUB__(v64, v63);
      v65 = v64 - v63;
      if (v68)
      {
        goto LABEL_119;
      }

      v67 = *(v62 - 6);
      v66 = *(v62 - 5);
      v68 = __OFSUB__(v66, v67);
      v60 = v66 - v67;
      v61 = v68;
      if (v68)
      {
        goto LABEL_120;
      }

      v69 = *(v57 + 1);
      v70 = v69 - *v57;
      if (__OFSUB__(v69, *v57))
      {
        goto LABEL_122;
      }

      v68 = __OFADD__(v60, v70);
      v71 = v60 + v70;
      if (v68)
      {
        goto LABEL_125;
      }

      if (v71 >= v65)
      {
        v85 = *v56;
        v84 = *(v56 + 1);
        v68 = __OFSUB__(v84, v85);
        v86 = v84 - v85;
        if (v68)
        {
          goto LABEL_133;
        }

        if (v60 < v86)
        {
          v55 = v51 - 2;
        }

        goto LABEL_91;
      }

      goto LABEL_69;
    }

LABEL_98:
    v16 = v127;
    v15 = v128[1];
    if (v127 >= v15)
    {
      goto LABEL_102;
    }
  }

  if (__OFADD__(v16, v116))
  {
    goto LABEL_137;
  }

  if (v16 + v116 >= v37)
  {
    v38 = v128[1];
  }

  else
  {
    v38 = v16 + v116;
  }

  if (v38 < v16)
  {
LABEL_138:
    __break(1u);
    goto LABEL_139;
  }

  v39 = v127;
  if (v127 == v38)
  {
    goto LABEL_48;
  }

  i = v17;
  v40 = *v128;
  v41 = *(v126 + 72);
  v42 = *v128 + v41 * (v127 - 1);
  v43 = -v41;
  v117 = v16;
  v44 = v16 - v127;
  v130 = v40;
  v119 = v41;
  v120 = v38;
  v45 = v40 + v127 * v41;
LABEL_41:
  v127 = v39;
  v123 = v45;
  v124 = v44;
  v125 = v42;
  while (1)
  {
    v46 = v133;
    sub_1C73D968C();
    v47 = v134;
    sub_1C73D968C();
    v48 = sub_1C73D798C(v46, v47);
    sub_1C73D96E4(v47, type metadata accessor for Hastings.ClusterAssetElector.StochatizedAsset);
    sub_1C73D96E4(v46, type metadata accessor for Hastings.ClusterAssetElector.StochatizedAsset);
    if ((v48 & 1) == 0)
    {
LABEL_46:
      v39 = v127 + 1;
      v42 = v125 + v119;
      v44 = v124 - 1;
      v45 = v123 + v119;
      if (v127 + 1 == v120)
      {
        v127 = v120;
        v17 = i;
        v16 = v117;
        goto LABEL_48;
      }

      goto LABEL_41;
    }

    if (!v130)
    {
      break;
    }

    sub_1C73D973C();
    swift_arrayInitWithTakeFrontToBack();
    sub_1C73D973C();
    v42 += v43;
    v45 += v43;
    v36 = __CFADD__(v44++, 1);
    if (v36)
    {
      goto LABEL_46;
    }
  }

  __break(1u);
LABEL_141:

  __break(1u);
LABEL_142:

  __break(1u);
LABEL_143:

  __break(1u);
LABEL_144:

  __break(1u);
LABEL_145:

  __break(1u);
}