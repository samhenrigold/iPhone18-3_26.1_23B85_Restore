uint64_t sub_1C8E711DC@<X0>(uint64_t a1@<X8>)
{
  v28 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3130D0, &qword_1C9090BD0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v25 - v2;
  v4 = sub_1C90632CC();
  v26 = *(v4 - 8);
  v27 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313108, &unk_1C9090BE0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v25 - v8;
  v10 = sub_1C906322C();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313110, &unk_1C906AB70);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v25 - v19;
  sub_1C90632DC();
  v21 = sub_1C90632FC();
  __swift_storeEnumTagSinglePayload(v9, 1, 1, v21);
  sub_1C906321C();
  sub_1C8E74A74();
  sub_1C90632BC();
  (*(v26 + 8))(v6, v27);
  sub_1C8E74ACC(v9);
  (*(v11 + 8))(v13, v10);
  MEMORY[0x1CCA80CD0](v3, MEMORY[0x1E69E67B0]);
  v22 = sub_1C8D28184(&qword_1EDA6DA78, &qword_1EC313110, &unk_1C906AB70, MEMORY[0x1E69E8290]);
  MEMORY[0x1CCA80C70](v17, v14, v22);
  v23 = *(v15 + 8);
  v23(v17, v14);
  sub_1C90631FC();
  return (v23)(v20, v14);
}

uint64_t sub_1C8E71570@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = MEMORY[0x1CCA81A20](*a1, a1[1], a1[2], a1[3]);
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t static ToolInvocationSummary.ParameterSummary.formatStringVariableRegex.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC311460 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC317C40, &qword_1C9090030);
  __swift_project_value_buffer(v2, qword_1EC317C08);
  OUTLINED_FUNCTION_15_23();
  v4 = *(v3 + 16);

  return v4(a1);
}

uint64_t ToolInvocationSummary.ParameterSummary.debugDescription.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *v5;
  if (*(v5 + 16))
  {
    if (*(v5 + 16) == 1)
    {
      v7 = *(v6 + 16);
      if (v7)
      {
        v22 = MEMORY[0x1E69E7CC0];
        sub_1C8CA6480();
        v8 = (v6 + 40);
        do
        {
          v10 = *(v8 - 1);
          v9 = *v8;
          v12 = *(v22 + 16);
          v11 = *(v22 + 24);

          if (v12 >= v11 >> 1)
          {
            sub_1C8CA6480();
          }

          *(v22 + 16) = v12 + 1;
          v13 = v22 + 16 * v12;
          *(v13 + 32) = v10;
          *(v13 + 40) = v9;
          v8 += 2;
          --v7;
        }

        while (v7);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312558, &qword_1C9066990);
      OUTLINED_FUNCTION_156();
      sub_1C8D28184(v14, v15, &qword_1C9066990, v16);
      v17 = sub_1C9063E9C();
      v19 = v18;

      MEMORY[0x1CCA81A90](v17, v19);

      MEMORY[0x1CCA81A90](93, 0xE100000000000000);
    }

    else
    {
      v20 = OUTLINED_FUNCTION_93();
      MEMORY[0x1CCA81A90](v20);
      MEMORY[0x1CCA81A90](41, 0xE100000000000000);
    }
  }

  else
  {
  }

  return OUTLINED_FUNCTION_93();
}

BOOL static ToolInvocationSummary.ParameterSummary.== infix(_:_:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *a1;
  v5 = *(a1 + 8);
  v7 = *(a1 + 16);
  v9 = *a2;
  v8 = a2[1];
  v10 = *(a2 + 16);
  if (!*(a1 + 16))
  {
    if (!*(a2 + 16))
    {
      v25 = *a1;
      if (v6 != v9 || v5 != v8)
      {
        v27 = sub_1C9064C2C();
        v28 = OUTLINED_FUNCTION_100();
        v32 = OUTLINED_FUNCTION_1_55(v28, v29, 0, v30, v31);
        v36 = OUTLINED_FUNCTION_1_55(v32, v33, 0, v34, v35);
        sub_1C8DC853C(v36, v37, 0);
        v38 = OUTLINED_FUNCTION_100();
        v40 = 0;
        goto LABEL_17;
      }

      v74 = OUTLINED_FUNCTION_1_55(v25, v5, 0, a4, a5);
      v78 = OUTLINED_FUNCTION_1_55(v74, v75, 0, v76, v77);
      sub_1C8DC853C(v78, v79, 0);
      v71 = v6;
      v72 = v5;
      v73 = 0;
LABEL_23:
      sub_1C8DC853C(v71, v72, v73);
      return 1;
    }

LABEL_19:
    v53 = OUTLINED_FUNCTION_100();
    v57 = OUTLINED_FUNCTION_1_55(v53, v54, v10, v55, v56);
    v61 = OUTLINED_FUNCTION_1_55(v57, v58, v7, v59, v60);
    sub_1C8DC853C(v61, v62, v7);
    v63 = OUTLINED_FUNCTION_100();
    sub_1C8DC853C(v63, v64, v10);
    return 0;
  }

  if (v7 == 1)
  {
    if (v10 == 1)
    {
      v11 = sub_1C8D07714();
      v12 = OUTLINED_FUNCTION_100();
      v16 = OUTLINED_FUNCTION_1_55(v12, v13, 1, v14, v15);
      v20 = OUTLINED_FUNCTION_1_55(v16, v17, 1, v18, v19);
      sub_1C8DC853C(v20, v21, 1);
      v22 = OUTLINED_FUNCTION_100();
      sub_1C8DC853C(v22, v23, 1);
      return v11 & 1;
    }

    goto LABEL_19;
  }

  if (v10 != 2)
  {
    goto LABEL_19;
  }

  v41 = *a1;
  if (v6 == v9 && v5 == v8)
  {
    v65 = OUTLINED_FUNCTION_1_55(v41, v5, 2, a4, a5);
    v69 = OUTLINED_FUNCTION_1_55(v65, v66, 2, v67, v68);
    sub_1C8DC853C(v69, v70, 2);
    v71 = v6;
    v72 = v5;
    v73 = 2;
    goto LABEL_23;
  }

  v27 = sub_1C9064C2C();
  v43 = OUTLINED_FUNCTION_100();
  v47 = OUTLINED_FUNCTION_1_55(v43, v44, 2, v45, v46);
  v51 = OUTLINED_FUNCTION_1_55(v47, v48, 2, v49, v50);
  sub_1C8DC853C(v51, v52, 2);
  v38 = OUTLINED_FUNCTION_100();
  v40 = 2;
LABEL_17:
  sub_1C8DC853C(v38, v39, v40);
  return (v27 & 1) != 0;
}

uint64_t sub_1C8E719F8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65756C6176 && a2 == 0xE500000000000000;
  if (v4 || (sub_1C9064C2C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x7365756C6176 && a2 == 0xE600000000000000;
    if (v6 || (sub_1C9064C2C() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x6C6F686563616C70 && a2 == 0xEB00000000726564)
    {

      return 2;
    }

    else
    {
      v8 = sub_1C9064C2C();

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

uint64_t sub_1C8E71B04(char a1)
{
  if (!a1)
  {
    return 0x65756C6176;
  }

  if (a1 == 1)
  {
    return 0x7365756C6176;
  }

  return 0x6C6F686563616C70;
}

uint64_t sub_1C8E71B64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C8E719F8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C8E71B8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8E73B64(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C8E71BC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8E73B64(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1C8E71C04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8E73BB8(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C8E71C40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8E73BB8(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1C8E71C7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8E73CB4(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C8E71CB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8E73CB4(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1C8E71CF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8E73C60(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C8E71D30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8E73C60(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

void ToolInvocationSummary.ParameterSummary.encode(to:)()
{
  OUTLINED_FUNCTION_196();
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC317C48, &qword_1C9090038);
  OUTLINED_FUNCTION_11();
  v44 = v5;
  v45 = v4;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v6);
  v41 = &v40 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC317C50, &qword_1C9090040);
  OUTLINED_FUNCTION_11();
  v42 = v9;
  v43 = v8;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v40 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC317C58, &qword_1C9090048);
  OUTLINED_FUNCTION_11();
  v40 = v14;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_73();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC317C60, &qword_1C9090050);
  OUTLINED_FUNCTION_11();
  v48 = v17;
  v49 = v16;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v40 - v19;
  v21 = *v0;
  v46 = v0[1];
  v47 = v21;
  v22 = *(v0 + 16);
  v23 = v3[4];
  v24 = __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_1C8E73B64(v24, v25, v26);
  v27 = sub_1C9064E1C();
  if (v22)
  {
    if (v22 == 1)
    {
      LOBYTE(v50) = 1;
      sub_1C8E73C60(v27, v28, v29);
      OUTLINED_FUNCTION_6_29(&type metadata for ToolInvocationSummary.ParameterSummary.ValuesCodingKeys);
      v50 = v47;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC317C88, &qword_1C9090058);
      sub_1C8E73D5C(&qword_1EC317C90, sub_1C8E73C0C, MEMORY[0x1E69E6300]);
      v30 = v43;
      sub_1C9064B8C();
      v31 = *(v42 + 8);
      v32 = v12;
    }

    else
    {
      LOBYTE(v50) = 2;
      sub_1C8E73BB8(v27, v28, v29);
      v36 = v41;
      v37 = OUTLINED_FUNCTION_6_29(&type metadata for ToolInvocationSummary.ParameterSummary.PlaceholderCodingKeys);
      v50 = v47;
      v51 = v46;
      sub_1C8E73C0C(v37, v38, v39);
      v30 = v45;
      sub_1C9064B8C();
      v31 = *(v44 + 8);
      v32 = v36;
    }

    v31(v32, v30);
  }

  else
  {
    LOBYTE(v50) = 0;
    sub_1C8E73CB4(v27, v28, v29);
    v33 = OUTLINED_FUNCTION_6_29(&type metadata for ToolInvocationSummary.ParameterSummary.ValueCodingKeys);
    v50 = v47;
    v51 = v46;
    sub_1C8E73C0C(v33, v34, v35);
    sub_1C9064B8C();
    (*(v40 + 8))(v1, v13);
  }

  (*(v48 + 8))(v20, v23);
  OUTLINED_FUNCTION_198();
}

uint64_t ToolInvocationSummary.ParameterSummary.hash(into:)()
{
  if (*(v0 + 16))
  {
    if (*(v0 + 16) == 1)
    {
      MEMORY[0x1CCA82810](1);
      OUTLINED_FUNCTION_93();

      return sub_1C8D0771C();
    }

    v2 = 2;
  }

  else
  {
    v2 = 0;
  }

  MEMORY[0x1CCA82810](v2);
  OUTLINED_FUNCTION_93();

  return sub_1C9063FBC();
}

uint64_t ToolInvocationSummary.ParameterSummary.hashValue.getter()
{
  v1 = *(v0 + 16);
  OUTLINED_FUNCTION_298();
  if (!v1)
  {
    v10 = 0;
LABEL_6:
    v11 = MEMORY[0x1CCA82810](v10);
    OUTLINED_FUNCTION_18_20(v11, v12, v13, v14, v15, v16, v17, v18, v20, v21);
    sub_1C9063FBC();
    return sub_1C9064DBC();
  }

  if (v1 != 1)
  {
    v10 = 2;
    goto LABEL_6;
  }

  v2 = MEMORY[0x1CCA82810](1);
  OUTLINED_FUNCTION_18_20(v2, v3, v4, v5, v6, v7, v8, v9, v20, v21);
  sub_1C8D0771C();
  return sub_1C9064DBC();
}

void ToolInvocationSummary.ParameterSummary.init(from:)()
{
  OUTLINED_FUNCTION_196();
  v3 = v2;
  v74 = v4;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC317CA0, &qword_1C9090060);
  OUTLINED_FUNCTION_11();
  v73 = v5;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v6);
  v75 = &v64[-v7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC317CA8, &qword_1C9090068);
  OUTLINED_FUNCTION_11();
  v71 = v8;
  v72 = v9;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_15_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC317CB0, &qword_1C9090070);
  OUTLINED_FUNCTION_11();
  v70 = v11;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v64[-v13];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC317CB8, &unk_1C9090078);
  OUTLINED_FUNCTION_11();
  v17 = v16;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v64[-v19];
  v21 = v3[3];
  v77 = v3;
  v22 = __swift_project_boxed_opaque_existential_1(v3, v21);
  sub_1C8E73B64(v22, v23, v24);
  sub_1C9064DEC();
  if (v0)
  {
    goto LABEL_10;
  }

  v67 = v14;
  v68 = v1;
  v80 = v17;
  v69 = v20;
  v25 = sub_1C9064A9C();
  v26 = sub_1C8CB8914(v25, 0);
  if (v28 == v29 >> 1)
  {
    goto LABEL_9;
  }

  v66 = 0;
  if (v28 < (v29 >> 1))
  {
    v30 = v15;
    v31 = *(v27 + v28);
    sub_1C8CB891C(v28 + 1, v29 >> 1, v26, v27, v28, v29);
    v33 = v32;
    v35 = v34;
    v36 = swift_unknownObjectRelease();
    if (v33 == v35 >> 1)
    {
      v65 = v31;
      if (v31)
      {
        v39 = v69;
        if (v31 == 1)
        {
          LOBYTE(v78) = 1;
          sub_1C8E73C60(v36, v37, v38);
          OUTLINED_FUNCTION_21_16(&type metadata for ToolInvocationSummary.ParameterSummary.ValuesCodingKeys, &v78);
          v40 = v74;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC317C88, &qword_1C9090058);
          sub_1C8E73D5C(&qword_1EC317CC8, sub_1C8E73D08, MEMORY[0x1E69E6330]);
          sub_1C9064A6C();
          swift_unknownObjectRelease();
          v53 = OUTLINED_FUNCTION_19_20();
          v54(v53);
          v55 = OUTLINED_FUNCTION_2_50();
          v56(v55);
          v57 = 0;
          v58 = v77;
          v59 = v78;
        }

        else
        {
          LOBYTE(v78) = 2;
          sub_1C8E73BB8(v36, v37, v38);
          v50 = OUTLINED_FUNCTION_21_16(&type metadata for ToolInvocationSummary.ParameterSummary.PlaceholderCodingKeys, &v78);
          v40 = v74;
          sub_1C8E73D08(v50, v51, v52);
          sub_1C9064A6C();
          swift_unknownObjectRelease();
          v62 = OUTLINED_FUNCTION_20_19();
          v63(v62);
          (*(v80 + 8))(v39, v30);
          v59 = v78;
          v57 = v79;
          v58 = v77;
        }

        goto LABEL_16;
      }

      LOBYTE(v78) = 0;
      sub_1C8E73CB4(v36, v37, v38);
      v45 = v66;
      v46 = v69;
      v47 = sub_1C906498C();
      if (!v45)
      {
        sub_1C8E73D08(v47, v48, v49);
        sub_1C9064A6C();
        swift_unknownObjectRelease();
        v60 = OUTLINED_FUNCTION_16_21();
        v61(v60);
        (*(v80 + 8))(v46, v30);
        v59 = v78;
        v57 = v79;
        v58 = v77;
        v40 = v74;
LABEL_16:
        *v40 = v59;
        *(v40 + 8) = v57;
        *(v40 + 16) = v65;
        goto LABEL_11;
      }

      (*(v80 + 8))(v46, v30);
      swift_unknownObjectRelease();
LABEL_10:
      v58 = v77;
LABEL_11:
      __swift_destroy_boxed_opaque_existential_1(v58);
      OUTLINED_FUNCTION_198();
      return;
    }

    v15 = v30;
LABEL_9:
    v41 = sub_1C90647DC();
    swift_allocError();
    v43 = v42;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312570, &unk_1C90669A0);
    *v43 = &type metadata for ToolInvocationSummary.ParameterSummary;
    v44 = v69;
    sub_1C906499C();
    sub_1C90647CC();
    (*(*(v41 - 8) + 104))(v43, *MEMORY[0x1E69E6AF8], v41);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v80 + 8))(v44, v15);
    goto LABEL_10;
  }

  __break(1u);
}

uint64_t sub_1C8E7299C(uint64_t a1)
{
  sub_1C9064D7C();
  ToolInvocationSummary.ParameterSummary.hash(into:)();
  return sub_1C9064DBC();
}

ToolKit::ToolInvocationSummary __swiftcall ToolInvocationSummary.init(formatString:parameterSummaries:)(Swift::String formatString, Swift::OpaquePointer parameterSummaries)
{
  *v2 = formatString;
  *(v2 + 16) = parameterSummaries;
  result.formatString = formatString;
  result.parameterSummaries = parameterSummaries;
  return result;
}

uint64_t ToolInvocationSummary.asSummaryElements()()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = MEMORY[0x1E69E7CC0];
  v32 = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_288();
  if (sub_1C9063FCC())
  {
    v5 = objc_allocWithZone(MEMORY[0x1E696AE70]);
    v6 = sub_1C8E73958(0x3F2A2E287B5C245CLL, 0xEB000000007D5C29, 0);
    v30 = 0;
    v31 = 0;
    OUTLINED_FUNCTION_288();
    v7 = sub_1C9063EBC();
    v8 = OUTLINED_FUNCTION_288();
    v9 = MEMORY[0x1CCA81B00](v8);
    v10 = swift_allocObject();
    v10[2] = &v30;
    v10[3] = v1;
    v10[4] = v2;
    v10[5] = v3;
    v10[6] = &v32;
    v11 = swift_allocObject();
    *(v11 + 16) = sub_1C8E73DD4;
    *(v11 + 24) = v10;
    v29[4] = sub_1C8E73DE4;
    v29[5] = v11;
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 1107296256;
    v29[2] = sub_1C8E731A4;
    v29[3] = &block_descriptor_4;
    v12 = _Block_copy(v29);

    [v6 enumerateMatchesInString:v7 options:0 range:0 usingBlock:{v9, v12}];

    _Block_release(v12);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }

    else
    {
      isEscapingClosureAtFileLocation = v30;
      v14 = OUTLINED_FUNCTION_288();
      v15 = MEMORY[0x1CCA81B00](v14);
      if (!__OFSUB__(v15, v31 + v30))
      {
        sub_1C906440C();
        if ((v16 & 1) == 0)
        {
          v17 = sub_1C90640BC();
          v1 = MEMORY[0x1CCA81A20](v17);
          isEscapingClosureAtFileLocation = v18;

          v19 = HIBYTE(isEscapingClosureAtFileLocation) & 0xF;
          if ((isEscapingClosureAtFileLocation & 0x2000000000000000) == 0)
          {
            v19 = v1 & 0xFFFFFFFFFFFFLL;
          }

          if (v19)
          {
            v20 = v32;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v32 = v20;
            if (isUniquelyReferenced_nonNull_native)
            {
LABEL_9:
              v22 = *(v20 + 16);
              if (v22 >= *(v20 + 24) >> 1)
              {
                sub_1C8D01748();
                v32 = v28;
              }

              v23 = v32;
              *(v32 + 16) = v22 + 1;
              v24 = v23 + 40 * v22;
              *(v24 + 32) = v1;
              *(v24 + 40) = isEscapingClosureAtFileLocation;
              *(v24 + 48) = 0;
              *(v24 + 56) = 0;
              *(v24 + 64) = 0;
              v32 = v23;
              goto LABEL_15;
            }

LABEL_19:
            sub_1C8D01748();
            v20 = v27;
            v32 = v27;
            goto LABEL_9;
          }
        }

LABEL_15:
        v4 = v32;

        v25 = sub_1C8E73DD4;
        goto LABEL_16;
      }
    }

    __break(1u);
    goto LABEL_19;
  }

  v25 = 0;
  v10 = 0;
LABEL_16:

  sub_1C8CC7E94(v25, v10);
  return v4;
}

void sub_1C8E72DD4(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, void *a8)
{
  v12 = sub_1C9063D3C();
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v57 = v13;
    v58 = a7;
    v16 = a1;
    v17 = &off_1E832F000;
    if (__OFSUB__([v16 range], a4[1] + *a4))
    {
      __break(1u);
    }

    else
    {
      sub_1C906440C();
      if ((v18 & 1) == 0)
      {
        v56 = v12;
        v19 = sub_1C90640BC();
        v20 = MEMORY[0x1CCA81A20](v19);
        v22 = v21;

        v23 = HIBYTE(v22) & 0xF;
        if ((v22 & 0x2000000000000000) == 0)
        {
          v23 = v20 & 0xFFFFFFFFFFFFLL;
        }

        if (v23)
        {
          sub_1C8E73A64(sub_1C8D01748);
          v24 = *(*a8 + 16);
          sub_1C8E73B1C(v24, sub_1C8D01748);
          v25 = *a8;
          *(v25 + 16) = v24 + 1;
          v26 = v25 + 40 * v24;
          *(v26 + 32) = v20;
          *(v26 + 40) = v22;
          *(v26 + 48) = 0;
          *(v26 + 56) = 0;
          *(v26 + 64) = 0;
        }

        else
        {
        }

        v17 = &off_1E832F000;
        v12 = v56;
      }

      [v16 rangeAtIndex_];
      sub_1C906440C();
      if ((v27 & 1) == 0)
      {
        v28 = sub_1C90640BC();
        v29 = MEMORY[0x1CCA81A20](v28);
        v31 = v30;

        v32 = v58;
        if (v58[2] && (v33 = sub_1C8CAE064(v29, v31), (v36 & 1) != 0))
        {
          v37 = v32[7] + 24 * v33;
          v38 = *v37;
          v39 = *(v37 + 8);
          v40 = *(v37 + 16);
          v41 = v40 | 0x80;
          sub_1C8DC8514(*v37, v39, v40, v34, v35);
        }

        else
        {
          v58 = a8;
          sub_1C906371C();

          v42 = sub_1C9063D1C();
          v43 = sub_1C906445C();

          if (os_log_type_enabled(v42, v43))
          {
            v44 = swift_slowAlloc();
            v45 = swift_slowAlloc();
            v59 = v45;
            *v44 = 136446210;
            *(v44 + 4) = sub_1C8CACE04(v29, v31, &v59, v46, v47, v48);
            _os_log_impl(&dword_1C8C9B000, v42, v43, "Could not find parameter summary with key %{public}s", v44, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v45);
            MEMORY[0x1CCA833A0](v45, -1, -1);
            MEMORY[0x1CCA833A0](v44, -1, -1);
          }

          (*(v57 + 8))(v15, v12);
          v38 = 0;
          v41 = -126;
          v39 = 0xE000000000000000;
          a8 = v58;
        }

        v49 = a8;
        sub_1C8E73A64(sub_1C8D01748);
        v50 = *(*a8 + 16);
        sub_1C8E73B1C(v50, sub_1C8D01748);
        v51 = *v49;
        *(v51 + 16) = v50 + 1;
        v52 = v51 + 40 * v50;
        *(v52 + 32) = v29;
        *(v52 + 40) = v31;
        *(v52 + 48) = v38;
        *(v52 + 56) = v39;
        *(v52 + 64) = v41;
        v17 = &off_1E832F000;
      }

      v53 = [v16 v17[310]];
      v55 = v54;

      *a4 = v53;
      a4[1] = v55;
    }
  }
}

void sub_1C8E731A4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a1 + 32);
  v8 = a2;
  v7(a2, a3, a4);
}

void static ToolInvocationSummary.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = *a1 == *a2 && a1[1] == a2[1];
  if (v2 || (sub_1C9064C2C() & 1) != 0)
  {
    v3 = OUTLINED_FUNCTION_94();

    sub_1C8F5840C(v3, v4);
  }
}

uint64_t sub_1C8E73288(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x745374616D726F66 && a2 == 0xEC000000676E6972;
  if (v4 || (sub_1C9064C2C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001C90CBC80 == a2)
  {

    return 1;
  }

  else
  {
    v7 = sub_1C9064C2C();

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

uint64_t sub_1C8E7335C(char a1)
{
  if (a1)
  {
    return 0xD000000000000012;
  }

  else
  {
    return 0x745374616D726F66;
  }
}

uint64_t sub_1C8E733A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C8E73288(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C8E733D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8E73E0C(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C8E7340C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8E73E0C(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

void ToolInvocationSummary.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_196();
  v25 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC317CD0, &qword_1C9090088);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v26);
  v27 = __swift_project_boxed_opaque_existential_1(v25, v25[3]);
  sub_1C8E73E0C(v27, v28, v29);
  sub_1C9064E1C();
  sub_1C9064B2C();
  if (!v23)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC317CE0, &qword_1C9090090);
    sub_1C8E73EB4(&qword_1EC317CE8, sub_1C8E73E60, MEMORY[0x1E69E6160], MEMORY[0x1E69E5E38]);
    sub_1C9064B8C();
  }

  v30 = OUTLINED_FUNCTION_93();
  v31(v30);
  OUTLINED_FUNCTION_198();
}

uint64_t ToolInvocationSummary.hash(into:)(uint64_t a1)
{
  sub_1C9063FBC();
  v1 = OUTLINED_FUNCTION_94();

  return sub_1C8DC77B8(v1, v2);
}

uint64_t ToolInvocationSummary.hashValue.getter()
{
  v1 = *(v0 + 16);
  v2 = OUTLINED_FUNCTION_298();
  OUTLINED_FUNCTION_18_20(v2, v3, v4, v5, v6, v7, v8, v9, v11, v12[0]);
  sub_1C9063FBC();
  sub_1C8DC77B8(v12, v1);
  return sub_1C9064DBC();
}

void ToolInvocationSummary.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_196();
  v25 = v24;
  v27 = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC317CF8, &qword_1C9090098);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_15_0();
  v29 = __swift_project_boxed_opaque_existential_1(v25, v25[3]);
  sub_1C8E73E0C(v29, v30, v31);
  sub_1C9064DEC();
  if (v23)
  {
    __swift_destroy_boxed_opaque_existential_1(v25);
  }

  else
  {
    v32 = sub_1C9064A0C();
    v34 = v33;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC317CE0, &qword_1C9090090);
    sub_1C8E73EB4(&qword_1EC317D00, sub_1C8E73F38, MEMORY[0x1E69E6190], MEMORY[0x1E69E5E58]);
    sub_1C9064A6C();
    v35 = OUTLINED_FUNCTION_10_2();
    v36(v35);
    *v27 = v32;
    v27[1] = v34;
    v27[2] = v37;

    __swift_destroy_boxed_opaque_existential_1(v25);
  }

  OUTLINED_FUNCTION_198();
}

uint64_t sub_1C8E738C0(uint64_t a1)
{
  v2 = *(v1 + 16);
  sub_1C9064D7C();
  sub_1C9063FBC();
  sub_1C8DC77B8(v4, v2);
  return sub_1C9064DBC();
}

id sub_1C8E73958(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10[1] = *MEMORY[0x1E69E9840];
  v5 = sub_1C9063EBC();

  v10[0] = 0;
  v6 = [v3 initWithPattern:v5 options:a3 error:v10];

  if (v6)
  {
    v7 = v10[0];
  }

  else
  {
    v8 = v10[0];
    sub_1C9061D7C();

    swift_willThrow();
  }

  return v6;
}

uint64_t sub_1C8E73A64(uint64_t (*a1)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v3;
  if (!result)
  {
    result = a1(result, *(v3 + 16) + 1, 1, v3);
    *v1 = result;
  }

  return result;
}

uint64_t sub_1C8E73AD8(uint64_t result)
{
  if (result + 1 > *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    return sub_1C90641CC();
  }

  return result;
}

uint64_t sub_1C8E73B1C(uint64_t result, uint64_t (*a2)(BOOL))
{
  v3 = *(*v2 + 24);
  if (result + 1 > (v3 >> 1))
  {
    result = a2(v3 > 1);
    *v2 = result;
  }

  return result;
}

unint64_t sub_1C8E73B64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC317C68;
  if (!qword_1EC317C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC317C68);
  }

  return result;
}

unint64_t sub_1C8E73BB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC317C70;
  if (!qword_1EC317C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC317C70);
  }

  return result;
}

unint64_t sub_1C8E73C0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC317C78;
  if (!qword_1EC317C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC317C78);
  }

  return result;
}

unint64_t sub_1C8E73C60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC317C80;
  if (!qword_1EC317C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC317C80);
  }

  return result;
}

unint64_t sub_1C8E73CB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC317C98;
  if (!qword_1EC317C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC317C98);
  }

  return result;
}

unint64_t sub_1C8E73D08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC317CC0;
  if (!qword_1EC317CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC317CC0);
  }

  return result;
}

uint64_t sub_1C8E73D5C(unint64_t *a1, uint64_t (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC317C88, &qword_1C9090058);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C8E73E0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC317CD8;
  if (!qword_1EC317CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC317CD8);
  }

  return result;
}

unint64_t sub_1C8E73E60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC317CF0;
  if (!qword_1EC317CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC317CF0);
  }

  return result;
}

uint64_t sub_1C8E73EB4(unint64_t *a1, uint64_t (*a2)(void), uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC317CE0, &qword_1C9090090);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C8E73F38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC317D08;
  if (!qword_1EC317D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC317D08);
  }

  return result;
}

unint64_t sub_1C8E73F90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC317D10;
  if (!qword_1EC317D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC317D10);
  }

  return result;
}

unint64_t sub_1C8E73FE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC317D18;
  if (!qword_1EC317D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC317D18);
  }

  return result;
}

unint64_t sub_1C8E74040(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC317D20;
  if (!qword_1EC317D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC317D20);
  }

  return result;
}

uint64_t sub_1C8E740B8(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x3F && *(a1 + 33))
    {
      v2 = *a1 + 62;
    }

    else
    {
      v2 = ((*(a1 + 32) >> 1) & 0x3E | (*(a1 + 32) >> 7)) ^ 0x3F;
      if (v2 >= 0x3E)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t sub_1C8E74104(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3E)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 63;
    *(result + 8) = 0;
    if (a3 >= 0x3F)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3F)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *result = 0u;
      *(result + 16) = 0u;
      *(result + 32) = 4 * (((-a2 >> 1) & 0x1F) - 32 * a2);
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ToolInvocationSummary.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for ToolInvocationSummary.ParameterSummary.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_1C8E74398(_BYTE *result, int a2, int a3)
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

unint64_t sub_1C8E74448(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC317D28;
  if (!qword_1EC317D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC317D28);
  }

  return result;
}

unint64_t sub_1C8E744A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC317D30;
  if (!qword_1EC317D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC317D30);
  }

  return result;
}

unint64_t sub_1C8E744F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC317D38;
  if (!qword_1EC317D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC317D38);
  }

  return result;
}

unint64_t sub_1C8E74550(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC317D40;
  if (!qword_1EC317D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC317D40);
  }

  return result;
}

unint64_t sub_1C8E745A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC317D48;
  if (!qword_1EC317D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC317D48);
  }

  return result;
}

unint64_t sub_1C8E74600(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC317D50;
  if (!qword_1EC317D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC317D50);
  }

  return result;
}

unint64_t sub_1C8E74658(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC317D58;
  if (!qword_1EC317D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC317D58);
  }

  return result;
}

unint64_t sub_1C8E746B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC317D60;
  if (!qword_1EC317D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC317D60);
  }

  return result;
}

unint64_t sub_1C8E74708(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC317D68;
  if (!qword_1EC317D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC317D68);
  }

  return result;
}

unint64_t sub_1C8E74760(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC317D70;
  if (!qword_1EC317D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC317D70);
  }

  return result;
}

unint64_t sub_1C8E747B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC317D78;
  if (!qword_1EC317D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC317D78);
  }

  return result;
}

unint64_t sub_1C8E74810(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC317D80;
  if (!qword_1EC317D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC317D80);
  }

  return result;
}

unint64_t sub_1C8E74868(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC317D88;
  if (!qword_1EC317D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC317D88);
  }

  return result;
}

unint64_t sub_1C8E748C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC317D90;
  if (!qword_1EC317D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC317D90);
  }

  return result;
}

unint64_t sub_1C8E74918(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC317D98;
  if (!qword_1EC317D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC317D98);
  }

  return result;
}

unint64_t sub_1C8E74970(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC317DA0;
  if (!qword_1EC317DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC317DA0);
  }

  return result;
}

unint64_t sub_1C8E749C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC317DA8;
  if (!qword_1EC317DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC317DA8);
  }

  return result;
}

unint64_t sub_1C8E74A20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC317DB0;
  if (!qword_1EC317DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC317DB0);
  }

  return result;
}

unint64_t sub_1C8E74A74()
{
  result = qword_1EDA6DA80;
  if (!qword_1EDA6DA80)
  {
    sub_1C906322C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6DA80);
  }

  return result;
}

uint64_t sub_1C8E74ACC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313108, &unk_1C9090BE0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 AssistantEnumerationSchemaDefinition.init(identifier:cases:displayRepresentation:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __n128 *a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 48);
  v6 = a3->n128_u64[0];
  v7 = a3->n128_u64[1];
  v8 = a3[2].n128_u64[0];
  *a4 = *a1;
  *(a4 + 8) = v4;
  v9 = *(a1 + 32);
  *(a4 + 16) = *(a1 + 16);
  *(a4 + 32) = v9;
  *(a4 + 48) = v5;
  *(a4 + 56) = a2;
  *(a4 + 64) = v6;
  *(a4 + 72) = v7;
  result = a3[1];
  *(a4 + 80) = result;
  *(a4 + 96) = v8;
  return result;
}

uint64_t AssistantEnumerationSchemaDefinition.identifier.getter@<X0>(uint64_t a5@<X8>)
{
  v6 = *(v5 + 8);
  v7 = *(v5 + 48);
  *a5 = *v5;
  *(a5 + 8) = v6;
  v8 = *(v5 + 32);
  *(a5 + 16) = *(v5 + 16);
  *(a5 + 32) = v8;
  *(a5 + 48) = v7;
}

uint64_t AssistantEnumerationSchemaDefinition.displayRepresentation.getter@<X0>(void *a5@<X8>)
{
  v6 = v5[8];
  v7 = v5[9];
  v9 = v5[10];
  v8 = v5[11];
  v10 = v5[12];
  *a5 = v6;
  a5[1] = v7;
  a5[2] = v9;
  a5[3] = v8;
  a5[4] = v10;
}

uint64_t static AssistantEnumerationSchemaDefinition.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v25 = a1[8];
  v26 = a1[9];
  v24 = a1[10];
  v27 = a1[11];
  v28 = a1[12];
  v8 = a2[2];
  v7 = a2[3];
  v10 = a2[4];
  v9 = a2[5];
  v11 = a2[6];
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    if (v2 != v8 || v4 != v7 || v3 != v10)
    {
      goto LABEL_29;
    }

    goto LABEL_22;
  }

  v23 = a1[6];
  v13 = a1[5];
  v14 = 0;
  if (sub_1C9064C2C())
  {
    v15 = v2 == v8 && v4 == v7;
    v16 = v15 && v3 == v10;
    v5 = v13;
    v6 = v23;
    if (v16)
    {
LABEL_22:
      v19 = v5 == v9 && v6 == v11;
      if (v19 || (sub_1C9064C2C() & 1) != 0)
      {
        sub_1C8CEA9F4();
        if (v20)
        {
          v29[0] = v25;
          v29[1] = v26;
          v29[2] = v24;
          v29[3] = v27;
          v29[4] = v28;
          static TypeDisplayRepresentation.== infix(_:_:)(v29);
          v14 = v21;

          return v14 & 1;
        }
      }

LABEL_29:
      v14 = 0;
    }
  }

  return v14 & 1;
}

uint64_t sub_1C8E74E00(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_1C9064C2C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x7365736163 && a2 == 0xE500000000000000;
    if (v6 || (sub_1C9064C2C() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0xD000000000000015 && 0x80000001C90C9740 == a2)
    {

      return 2;
    }

    else
    {
      v8 = sub_1C9064C2C();

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

uint64_t sub_1C8E74F1C(char a1)
{
  if (!a1)
  {
    return 0x696669746E656469;
  }

  if (a1 == 1)
  {
    return 0x7365736163;
  }

  return 0xD000000000000015;
}

uint64_t sub_1C8E74F80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C8E74E00(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C8E74FA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8E752FC(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C8E74FE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8E752FC(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t AssistantEnumerationSchemaDefinition.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC317DD8, &qword_1C9090C00);
  OUTLINED_FUNCTION_11();
  v41 = v5;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v33 - v7;
  v9 = *v2;
  v10 = v2[1];
  v12 = v2[6];
  v11 = v2[7];
  v13 = v2[9];
  v38 = v2[8];
  v39 = v11;
  v14 = v2[11];
  v36 = v2[10];
  v37 = v13;
  v34 = v2[12];
  v35 = v14;
  v15 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C8E752FC(v15, v16, v17);

  v18 = v4;
  v19 = sub_1C9064E1C();
  v42 = v9;
  v43 = v10;
  v20 = *(v2 + 1);
  v45 = *(v2 + 2);
  v44 = v20;
  v46 = v12;
  v47 = 0;
  sub_1C8E28354(v19, v21, v22);
  v23 = v40;
  sub_1C9064B8C();

  if (v23)
  {
    return (*(v41 + 8))(v8, v4);
  }

  v25 = v36;
  v26 = v37;
  v27 = v38;
  v28 = v34;
  v29 = v35;
  v42 = v39;
  v47 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC317DE8, &qword_1C9090C08);
  sub_1C8E75934(&qword_1EDA62D98, &qword_1EDA63050, &protocol conformance descriptor for EnumerationCaseDefinition, MEMORY[0x1E69E6300]);
  v30 = sub_1C9064B8C();
  v42 = v27;
  v43 = v26;
  *&v44 = v25;
  *(&v44 + 1) = v29;
  *&v45 = v28;
  v47 = 2;
  sub_1C8E2F488(v30, v31, v32);

  sub_1C9064B8C();

  return (*(v41 + 8))(v8, v18);
}

unint64_t sub_1C8E752FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC317DE0;
  if (!qword_1EC317DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC317DE0);
  }

  return result;
}

uint64_t AssistantEnumerationSchemaDefinition.hash(into:)(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[11];
  sub_1C9063FBC();
  MEMORY[0x1CCA82830](v2);
  MEMORY[0x1CCA82830](v3);
  MEMORY[0x1CCA82830](v4);
  sub_1C9063FBC();
  sub_1C8D0225C();
  sub_1C9063FBC();
  sub_1C9064D9C();
  if (v5)
  {
    sub_1C9063FBC();
  }

  return sub_1C8CC1590();
}

uint64_t AssistantEnumerationSchemaDefinition.hashValue.getter()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[11];
  sub_1C9064D7C();
  sub_1C9063FBC();
  MEMORY[0x1CCA82830](v1);
  MEMORY[0x1CCA82830](v2);
  MEMORY[0x1CCA82830](v3);
  sub_1C9063FBC();
  sub_1C8D0225C();
  sub_1C9063FBC();
  sub_1C9064D9C();
  if (v4)
  {
    sub_1C9063FBC();
  }

  sub_1C8CC1590();
  return sub_1C9064DBC();
}

uint64_t AssistantEnumerationSchemaDefinition.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC317DF0, &qword_1C9090C10);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v5);
  v6 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C8E752FC(v6, v7, v8);
  v9 = sub_1C9064DEC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v30 = a2;
  sub_1C8E28C20(v9, v10, v11);
  sub_1C9064A6C();
  v26 = v35;
  v27 = v33;
  v25 = v36;
  v24 = v37;
  v28 = v39;
  v29 = v34;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC317DE8, &qword_1C9090C08);
  LOBYTE(v32[0]) = 1;
  sub_1C8E75934(&qword_1EDA62D90, &qword_1EDA63048, &protocol conformance descriptor for EnumerationCaseDefinition, MEMORY[0x1E69E6330]);
  v12 = sub_1C9064A6C();
  v23 = v38;
  v13 = v33;
  v51 = 2;
  sub_1C8E2FB84(v12, v14, v15);
  sub_1C9064A6C();
  v16 = OUTLINED_FUNCTION_1_5();
  v17(v16);
  v21 = v48;
  v22 = v47;
  v19 = v50;
  v20 = v49;
  v31 = v46;
  v32[0] = v27;
  v32[1] = v29;
  v32[2] = v26;
  v32[3] = v25;
  v32[4] = v24;
  v32[5] = v23;
  v32[6] = v28;
  v32[7] = v13;
  v32[8] = v46;
  v32[9] = v47;
  v32[10] = v48;
  v32[11] = v49;
  v32[12] = v50;
  memcpy(v30, v32, 0x68uLL);
  sub_1C8CC3A5C(v32, &v33);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v33 = v27;
  v34 = v29;
  v35 = v26;
  v36 = v25;
  v37 = v24;
  v38 = v23;
  v39 = v28;
  v40 = v13;
  v41 = v31;
  v42 = v22;
  v43 = v21;
  v44 = v20;
  v45 = v19;
  return sub_1C8E75A00(&v33);
}

uint64_t sub_1C8E758F4(uint64_t a1)
{
  sub_1C9064D7C();
  AssistantEnumerationSchemaDefinition.hash(into:)(v2);
  return sub_1C9064DBC();
}

uint64_t sub_1C8E75934(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC317DE8, &qword_1C9090C08);
    sub_1C8E759BC(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C8E759BC(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for EnumerationCaseDefinition(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C8E75A34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC317DF8;
  if (!qword_1EC317DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC317DF8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AssistantEnumerationSchemaDefinition.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C8E75B78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC317E00;
  if (!qword_1EC317E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC317E00);
  }

  return result;
}

unint64_t sub_1C8E75BD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC317E08;
  if (!qword_1EC317E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC317E08);
  }

  return result;
}

unint64_t sub_1C8E75C28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC317E10;
  if (!qword_1EC317E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC317E10);
  }

  return result;
}

uint64_t *sub_1C8E75C7C()
{
  v1 = *v0;
  v2 = qword_1EDA6EBA8;
  sub_1C906204C();
  OUTLINED_FUNCTION_38_2();
  (*(v3 + 8))(v0 + v2);
  (*(*(*(v1 + 80) - 8) + 8))(v0 + *(*v0 + 136));
  v4 = *(*v0 + 152);
  sub_1C90620BC();
  OUTLINED_FUNCTION_38_2();
  (*(v5 + 8))(v0 + v4);

  return v0;
}

uint64_t sub_1C8E75D90()
{
  sub_1C906478C();
  MEMORY[0x1CCA81A90](0xD00000000000001BLL, 0x80000001C90CBCE0);
  sub_1C906204C();
  sub_1C8E7640C();
  v0 = sub_1C9064BDC();
  MEMORY[0x1CCA81A90](v0);

  MEMORY[0x1CCA81A90](0x203A65706F637320, 0xE800000000000000);
  sub_1C90648BC();
  MEMORY[0x1CCA81A90](0x3A656C61636F6C20, 0xE900000000000020);
  v1 = sub_1C906206C();
  MEMORY[0x1CCA81A90](v1);

  MEMORY[0x1CCA81A90](0x203A797265757120, 0xE800000000000000);
  v2 = sub_1C9064C3C();
  MEMORY[0x1CCA81A90](v2);

  MEMORY[0x1CCA81A90](62, 0xE100000000000000);
  return 0;
}

uint64_t ToolKitDatabaseRequestScope.debugDescription.getter()
{
  if (*(v0 + 8))
  {
    return 7105633;
  }

  v2 = sub_1C9064BDC();
  MEMORY[0x1CCA81A90](v2);

  MEMORY[0x1CCA81A90](41, 0xE100000000000000);
  return 678977901;
}

uint64_t ToolKitDatabaseRequestError.hashValue.getter()
{
  v1 = *v0;
  sub_1C9064D7C();
  MEMORY[0x1CCA82810](v1);
  return sub_1C9064DBC();
}

unint64_t sub_1C8E760B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC317E20;
  if (!qword_1EC317E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC317E20);
  }

  return result;
}

uint64_t sub_1C8E76124(uint64_t a1)
{
  result = sub_1C906204C();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      result = sub_1C90620BC();
      if (v4 <= 0x3F)
      {
        return swift_initClassMetadata2();
      }
    }
  }

  return result;
}

uint64_t sub_1C8E7624C()
{
  sub_1C8E75C7C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

_BYTE *sub_1C8E762BC(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1C8E763D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C8E7640C()
{
  result = qword_1EDA6CB98;
  if (!qword_1EDA6CB98)
  {
    sub_1C906204C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6CB98);
  }

  return result;
}

uint64_t sub_1C8E76468(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 25))
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

uint64_t sub_1C8E764A8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1C8E764FC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x644965707974 && a2 == 0xE600000000000000;
  if (v4 || (sub_1C9064C2C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001C90CBD00 == a2)
  {

    return 1;
  }

  else
  {
    v7 = sub_1C9064C2C();

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

uint64_t sub_1C8E765C8(char a1)
{
  if (a1)
  {
    return 0xD000000000000012;
  }

  else
  {
    return 0x644965707974;
  }
}

uint64_t sub_1C8E76608@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C8E764FC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C8E76630(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8E77064(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C8E7666C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8E77064(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1C8E766A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C8D16968(a1, a2, a3);

  return MEMORY[0x1EEE09760](a1, a2, a3, v6);
}

uint64_t sub_1C8E7670C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1C8E76E98(a1, a2, a3);

  return sub_1C9062B4C();
}

uint64_t sub_1C8E76804(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = qword_1EC311468;

  if (v5 != -1)
  {
    swift_once();
  }

  v6 = sub_1C9062E6C();
  __swift_project_value_buffer(v6, qword_1EC390C50);
  sub_1C9062E5C();
  sub_1C9062BFC();
  if (qword_1EC311470 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v6, qword_1EC390C68);
  sub_1C9062E5C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC317E70, &qword_1C9091428);
  sub_1C8E771D8();
  return sub_1C9062BFC();
}

uint64_t sub_1C8E76970(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC317E80, &qword_1C9091430);
  OUTLINED_FUNCTION_11();
  v14 = v5;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v13 - v7;
  v13 = *(v1 + 16);
  v17 = *(v1 + 24);
  v9 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C8E77064(v9, v10, v11);
  sub_1C9064E1C();
  v19 = 0;
  sub_1C9064B2C();
  if (!v2)
  {
    v15 = v13;
    v16 = v17;
    v18 = 1;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC317E70, &qword_1C9091428);
    sub_1C8E77160(&qword_1EC317E88, &unk_1C908BCB8);
    sub_1C9064B8C();
  }

  return (*(v14 + 8))(v8, v4);
}

uint64_t sub_1C8E76B4C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC317E60, &qword_1C9091420);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v5);
  v6 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C8E77064(v6, v7, v8);
  sub_1C9064DEC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v9 = sub_1C9064A0C();
  v11 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC317E70, &qword_1C9091428);
  sub_1C8E77160(&qword_1EC317E78, &unk_1C908BC38);
  sub_1C9064A6C();
  v12 = OUTLINED_FUNCTION_10_2();
  v13(v12);
  *a2 = v9;
  *(a2 + 8) = v11;
  *(a2 + 16) = v15;
  *(a2 + 24) = v16;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1C8E76D70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = aTypecoercions[0];

  return v5;
}

unint64_t sub_1C8E76DAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC317E38;
  if (!qword_1EC317E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC317E38);
  }

  return result;
}

unint64_t sub_1C8E76E04(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8E76E44(a1, a2, a3);
  a1[1] = v4;
  v7 = sub_1C8E76E98(v4, v5, v6);
  a1[2] = v7;
  v10 = sub_1C8D16968(v7, v8, v9);
  a1[3] = v10;
  result = sub_1C8E76EEC(v10, v11, v12);
  a1[4] = result;
  return result;
}

unint64_t sub_1C8E76E44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC317E40;
  if (!qword_1EC317E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC317E40);
  }

  return result;
}

unint64_t sub_1C8E76E98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC317E48;
  if (!qword_1EC317E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC317E48);
  }

  return result;
}

unint64_t sub_1C8E76EEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC317E50;
  if (!qword_1EC317E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC317E50);
  }

  return result;
}

uint64_t sub_1C8E76F60(uint64_t a1, uint64_t *a2, char a3)
{
  v4 = sub_1C9062E6C();
  __swift_allocate_value_buffer(v4, a2);
  v5 = __swift_project_value_buffer(v4, a2);
  sub_1C8E77064(v5, v6, v7);
  return sub_1C9062E8C();
}

unint64_t sub_1C8E77010(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC317E58;
  if (!qword_1EC317E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC317E58);
  }

  return result;
}

unint64_t sub_1C8E77064(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC317E68;
  if (!qword_1EC317E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC317E68);
  }

  return result;
}

unint64_t sub_1C8E770B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA60A98;
  if (!qword_1EDA60A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA60A98);
  }

  return result;
}

unint64_t sub_1C8E7710C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA60AA0;
  if (!qword_1EDA60AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA60AA0);
  }

  return result;
}

uint64_t sub_1C8E77160(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    v4 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC317E70, &qword_1C9091428);
    v9 = sub_1C8E770B8(v4, v5, v6);
    sub_1C8E7710C(v9, v7, v8);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C8E771D8()
{
  result = qword_1EC317E90;
  if (!qword_1EC317E90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC317E70, &qword_1C9091428);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC317E90);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for TypeCoercionRecord.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C8E7731C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC317E98;
  if (!qword_1EC317E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC317E98);
  }

  return result;
}

unint64_t sub_1C8E77374(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC317EA0;
  if (!qword_1EC317EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC317EA0);
  }

  return result;
}

unint64_t sub_1C8E773CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC317EA8;
  if (!qword_1EC317EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC317EA8);
  }

  return result;
}

uint64_t sub_1C8E77430(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x644965707974 && a2 == 0xE600000000000000;
  if (v4 || (sub_1C9064C2C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001C90CBD20 == a2)
  {

    return 1;
  }

  else
  {
    v7 = sub_1C9064C2C();

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

uint64_t sub_1C8E774FC(char a1)
{
  if (a1)
  {
    return 0xD000000000000012;
  }

  else
  {
    return 0x644965707974;
  }
}

uint64_t sub_1C8E7753C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C8E77430(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C8E77564(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8E77F2C(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C8E775A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8E77F2C(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1C8E775DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C8E77D40(a1, a2, a3);

  return MEMORY[0x1EEE09760](a1, a2, a3, v6);
}

uint64_t sub_1C8E77640(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1C8E77CEC(a1, a2, a3);

  return sub_1C9062B4C();
}

uint64_t sub_1C8E77740(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (qword_1EC311478 != -1)
  {
    swift_once();
  }

  v5 = sub_1C9062E6C();
  __swift_project_value_buffer(v5, qword_1EC390C80);
  sub_1C9062E5C();

  sub_1C9062BFC();
  if (qword_1EC311480 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v5, qword_1EC390C98);
  sub_1C9062E5C();

  return sub_1C9062BFC();
}

uint64_t sub_1C8E77898(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v17[0] = a4;
  v17[1] = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC317F00, &qword_1C9091780);
  OUTLINED_FUNCTION_11();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = v17 - v11;
  v13 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C8E77F2C(v13, v14, v15);
  sub_1C9064E1C();
  v19 = 0;
  sub_1C9064B2C();
  if (!v5)
  {
    v18 = 1;
    sub_1C9064B2C();
  }

  return (*(v9 + 8))(v12, v7);
}

uint64_t sub_1C8E77A04(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC317EF0, &qword_1C9091778);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v3);
  v4 = a1[4];
  v5 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C8E77F2C(v5, v6, v7);
  sub_1C9064DEC();
  if (!v1)
  {
    v4 = sub_1C9064A0C();
    sub_1C9064A0C();
    v9 = OUTLINED_FUNCTION_0_60();
    v10(v9);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v4;
}

uint64_t sub_1C8E77BC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = qword_1EC317EB0;

  return v5;
}

unint64_t sub_1C8E77C00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC317EC0;
  if (!qword_1EC317EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC317EC0);
  }

  return result;
}

unint64_t sub_1C8E77C58(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8E77C98(a1, a2, a3);
  a1[1] = v4;
  v7 = sub_1C8E77CEC(v4, v5, v6);
  a1[2] = v7;
  v10 = sub_1C8E77D40(v7, v8, v9);
  a1[3] = v10;
  result = sub_1C8E77D94(v10, v11, v12);
  a1[4] = result;
  return result;
}

unint64_t sub_1C8E77C98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC317EC8;
  if (!qword_1EC317EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC317EC8);
  }

  return result;
}

unint64_t sub_1C8E77CEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC317ED0;
  if (!qword_1EC317ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC317ED0);
  }

  return result;
}

unint64_t sub_1C8E77D40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC317ED8;
  if (!qword_1EC317ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC317ED8);
  }

  return result;
}

unint64_t sub_1C8E77D94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC317EE0;
  if (!qword_1EC317EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC317EE0);
  }

  return result;
}

uint64_t sub_1C8E77E08(uint64_t a1, uint64_t *a2, char a3)
{
  v4 = sub_1C9062E6C();
  __swift_allocate_value_buffer(v4, a2);
  v5 = __swift_project_value_buffer(v4, a2);
  sub_1C8E77F2C(v5, v6, v7);
  return sub_1C9062E8C();
}

uint64_t sub_1C8E77E84@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1C8E77A04(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

unint64_t sub_1C8E77ED8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC317EE8;
  if (!qword_1EC317EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC317EE8);
  }

  return result;
}

unint64_t sub_1C8E77F2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC317EF8;
  if (!qword_1EC317EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC317EF8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for UTTypeCoercionRecord.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C8E78060(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC317F08;
  if (!qword_1EC317F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC317F08);
  }

  return result;
}

unint64_t sub_1C8E780B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC317F10;
  if (!qword_1EC317F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC317F10);
  }

  return result;
}

unint64_t sub_1C8E78110(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC317F18;
  if (!qword_1EC317F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC317F18);
  }

  return result;
}

BOOL sub_1C8E78164(uint64_t (*a1)(unint64_t), uint64_t a2, uint64_t a3)
{
  v6 = 0;
  v7 = *(a3 + 16);
  do
  {
    v8 = v6;
    if (v7 == v6)
    {
      break;
    }

    v9 = *(type metadata accessor for ToolDatabase.RollbackCleanupOperation(0) - 8);
    v10 = a1(a3 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v8);
    if (v3)
    {
      break;
    }

    v6 = v8 + 1;
  }

  while ((v10 & 1) == 0);
  return v7 != v8;
}

uint64_t ToolDatabase.RollbackableError.hashValue.getter()
{
  sub_1C9064D7C();
  MEMORY[0x1CCA82810](0);
  return sub_1C9064DBC();
}

uint64_t ToolDatabase.RollbackCleanupOperation.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1C906204C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

Swift::Void __swiftcall ToolDatabase.RollbackCleanupOperation.run()()
{
  v1 = type metadata accessor for ToolDatabase.RollbackCleanupOperation(0);
  v2 = *(v1 + 24);
  if ((*(v0 + v2) & 1) == 0)
  {
    (*(v0 + *(v1 + 20)))();
    *(v0 + v2) = 1;
  }
}

uint64_t ToolDatabase.RollbackCleanupOperation.hash(into:)(uint64_t a1)
{
  sub_1C906204C();
  OUTLINED_FUNCTION_7_30();
  sub_1C8E7E0C4(v1, v2, MEMORY[0x1E69695B8]);

  return sub_1C9063E7C();
}

uint64_t ToolDatabase.RollbackCleanupOperation.hashValue.getter()
{
  sub_1C9064D7C();
  sub_1C906204C();
  OUTLINED_FUNCTION_7_30();
  sub_1C8E7E0C4(v0, v1, MEMORY[0x1E69695B8]);
  sub_1C9063E7C();
  return sub_1C9064DBC();
}

uint64_t sub_1C8E784E8(uint64_t a1)
{
  sub_1C9064D7C();
  sub_1C906204C();
  sub_1C8E7E0C4(&qword_1EDA666F0, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1C9063E7C();
  return sub_1C9064DBC();
}

uint64_t ToolDatabase.Rollbackable.onRollback(perform:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for ToolDatabase.RollbackCleanupOperation(0);
  v9 = v8 - 8;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_15();
  v12 = v11 - v10;
  _s7ToolKit0A8DatabaseC7VersionVAEycfC_0();
  v13 = (v12 + *(v9 + 28));
  *v13 = a1;
  v13[1] = a2;
  *(v12 + *(v9 + 32)) = 0;
  v14 = *(a4 + 48);

  v14(v12, a3, a4);
  return sub_1C8E7BBA8(v12);
}

uint64_t ToolDatabase.Transaction.Mode.hashValue.getter()
{
  v1 = *v0;
  sub_1C9064D7C();
  MEMORY[0x1CCA82810](v1);
  return sub_1C9064DBC();
}

double ToolDatabase.Transaction.parent.getter@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t sub_1C8E786F0(uint64_t a1, char *a2, char *a3)
{
  v5 = *a2;
  v6 = *a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC317F40, &qword_1C9091BF8);
  v7 = swift_allocObject();
  *(v7 + 24) = 0;
  *(v7 + 16) = MEMORY[0x1E69E7CC0];
  *(v3 + 32) = v7;
  *(v3 + 16) = a1;
  *(v3 + 24) = v5;
  *(v3 + 25) = v6;
  return v3;
}

uint64_t sub_1C8E78764(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v6 = sub_1C9062F0C();
  OUTLINED_FUNCTION_11();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v36 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v36 - v16;
  sub_1C906264C();
  OUTLINED_FUNCTION_11();
  v37 = v19;
  v38 = v18;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_15();
  v22 = v21 - v20;
  v23 = *a2;
  v40 = *a3;
  v24 = a1;
  sub_1C90626FC();
  v25 = MEMORY[0x1E69A00B0];
  switch(v23)
  {
    case 1:
      v26 = *MEMORY[0x1E69A00B0];
      goto LABEL_7;
    case 2:
      v26 = *MEMORY[0x1E69A00A8];
      goto LABEL_7;
    case 3:
      v27 = MEMORY[0x1E69A00A0];
      if (sub_1C906261C())
      {
        (*(v8 + 104))(v14, *v27, v6);
      }

      else
      {
        sub_1C90625EC();
      }

      v25 = MEMORY[0x1E69A00B0];
      goto LABEL_10;
    default:
      v26 = *MEMORY[0x1E69A00A0];
LABEL_7:
      v27 = MEMORY[0x1E69A00A0];
      (*(v8 + 104))(v14, v26, v6);
LABEL_10:
      (*(v8 + 32))(v17, v14, v6);
      (*(v8 + 16))(v11, v17, v6);
      v28 = (*(v8 + 88))(v11, v6);
      if (v28 == *v27)
      {
        v29 = 0;
      }

      else if (v28 == *v25)
      {
        v29 = 1;
      }

      else
      {
        if (v28 != *MEMORY[0x1E69A00A8])
        {
          result = sub_1C9064C1C();
          __break(1u);
          return result;
        }

        v29 = 2;
      }

      MEMORY[0x1EEE9AC00](v28);
      *(&v36 - 2) = v17;
      v30 = v24;
      v31 = v39;
      sub_1C906270C();
      if (v31)
      {
        (*(v37 + 8))(v22, v38);
      }

      else
      {
        v42 = v29;
        v41 = v40;
        OUTLINED_FUNCTION_19_0();
        v30 = swift_allocObject();
        sub_1C8E786F0(v24, &v42, &v41);
        v34 = *(v37 + 8);

        v34(v22, v38);
      }

      v32 = OUTLINED_FUNCTION_17_23();
      v33(v32);
      return v30;
  }
}

uint64_t sub_1C8E78B40(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC317F48, &unk_1C9091C00);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v8 - v4;
  v6 = sub_1C9062F0C();
  (*(*(v6 - 8) + 16))(v5, a2, v6);
  __swift_storeEnumTagSinglePayload(v5, 0, 1, v6);
  sub_1C9062F3C();
  return sub_1C8D14208(v5, &qword_1EC317F48, &unk_1C9091C00);
}

uint64_t sub_1C8E78C94()
{
  OUTLINED_FUNCTION_13_20();
  OUTLINED_FUNCTION_0_3();
  return sub_1C906270C();
}

uint64_t sub_1C8E78D84()
{
  OUTLINED_FUNCTION_13_20();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  return OUTLINED_FUNCTION_21_17(v2, v3, v4, v5, v6, v7, v8, v9, v11);
}

uint64_t sub_1C8E78E30()
{
  OUTLINED_FUNCTION_13_20();
  OUTLINED_FUNCTION_0_3();
  return sub_1C906270C();
}

uint64_t sub_1C8E78F14()
{
  OUTLINED_FUNCTION_13_20();
  result = sub_1C906270C();
  if (!v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_1C8E79078()
{
  OUTLINED_FUNCTION_27_13();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312EE8, &unk_1C9091C10);
  OUTLINED_FUNCTION_0_3();
  return sub_1C906270C();
}

uint64_t sub_1C8E79148(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_13_20();
  __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
  result = sub_1C906270C();
  if (!v5)
  {
    return v9;
  }

  return result;
}

uint64_t sub_1C8E791DC()
{
  OUTLINED_FUNCTION_27_13();
  sub_1C90620BC();
  OUTLINED_FUNCTION_0_3();
  return sub_1C906270C();
}

uint64_t sub_1C8E79320(uint64_t a1)
{
  v2 = type metadata accessor for ToolDatabase.RollbackCleanupOperation(0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 32);
  os_unfair_lock_lock((v6 + 24));
  v7 = *(v6 + 16);

  os_unfair_lock_unlock((v6 + 24));
  v8 = *(v7 + 16);
  if (v8)
  {
    v9 = v7 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    do
    {
      v11 = sub_1C8E7E29C(v9, v5);
      v12 = *(v2 + 24);
      if ((v5[v12] & 1) == 0)
      {
        (*&v5[*(v2 + 20)])(v11);
        v5[v12] = 1;
      }

      ToolDatabase.Transaction.deregisterRollbackOperation(operation:)();
      sub_1C8E7BBA8(v5);
      v9 += v10;
      --v8;
    }

    while (v8);
  }
}

void ToolDatabase.Transaction.registerRollbackOperation(operation:)()
{
  v1 = *(v0 + 32);
  os_unfair_lock_lock((v1 + 24));
  sub_1C8E7BC28((v1 + 16), &v3);
  os_unfair_lock_unlock((v1 + 24));
  if ((v3 & 1) == 0)
  {
    MEMORY[0x1EEE9AC00](v2);
    OUTLINED_FUNCTION_29_16();
    os_unfair_lock_lock((v1 + 24));
    sub_1C8E7BC44((v1 + 16));
    os_unfair_lock_unlock((v1 + 24));
  }
}

BOOL sub_1C8E79570@<W0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v4 = *a1;
  v6[2] = a2;
  result = sub_1C8E78164(sub_1C8E7E3D4, v6, v4);
  *a3 = result;
  return result;
}

void ToolDatabase.Transaction.deregisterRollbackOperation(operation:)()
{
  v1 = *(v0 + 32);
  os_unfair_lock_lock(v1 + 6);
  sub_1C8E7BC60(&v1[4]);
  os_unfair_lock_unlock(v1 + 6);
}

uint64_t sub_1C8E79618(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, uint64_t a4)
{
  result = sub_1C8E797E8();
  if (!v4)
  {
    v10 = *(a4 + 25);
    type metadata accessor for ToolDatabase.Accessor();
    swift_allocObject();
    v9 = sub_1C903A588(a1, &v10);

    a2(v9);
  }

  return result;
}

uint64_t sub_1C8E796D0()
{
  result = OUTLINED_FUNCTION_20_20();
  if (!v0)
  {
    v7 = *(v3 + 25);
    v5 = type metadata accessor for ToolDatabase.Accessor();
    OUTLINED_FUNCTION_24_21(v5);
    sub_1C903A588(v2, &v7);

    v6 = OUTLINED_FUNCTION_31_15();
    v1(v6);

    return v8;
  }

  return result;
}

uint64_t sub_1C8E79768()
{
  result = OUTLINED_FUNCTION_18_21();
  if (!v0)
  {
    v16 = *(v2 + 25);
    v4 = type metadata accessor for ToolDatabase.Accessor();
    v5 = OUTLINED_FUNCTION_24_21(v4);
    OUTLINED_FUNCTION_22_25(v5, v6, v7, v8, v9, v10, v11, v12, v14, *v15, *&v15[4], v15[6], v16);

    v13 = OUTLINED_FUNCTION_26_13();
    v1(v13);
  }

  return result;
}

uint64_t sub_1C8E797E8()
{
  result = sub_1C9062F6C();
  if ((result & 1) == 0)
  {
    sub_1C8E7DB28(result, v1, v2);
    swift_allocError();
    return swift_willThrow();
  }

  return result;
}

uint64_t ToolDatabase.Transaction.deinit()
{

  return v0;
}

uint64_t ToolDatabase.Transaction.__deallocating_deinit()
{
  ToolDatabase.Transaction.deinit();
  OUTLINED_FUNCTION_19_0();

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t ToolDatabase.Savepoint.name.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(v5 + 32);

  return v6;
}

uint64_t sub_1C8E799D0(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, __int128 *a5)
{
  v10 = *a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC317F40, &qword_1C9091BF8);
  v11 = swift_allocObject();
  *(v11 + 24) = 0;
  *(v11 + 16) = MEMORY[0x1E69E7CC0];
  *(v5 + 88) = v11;
  *(v5 + 32) = a1;
  *(v5 + 40) = a2;
  sub_1C8D04FA4(a5, v5 + 48);
  *(v5 + 16) = a3;
  *(v5 + 24) = v10;
  return v5;
}

uint64_t sub_1C8E79A60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 *a5, __n128 a6)
{
  v9 = sub_1C9062B9C();
  OUTLINED_FUNCTION_11();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_15();
  v15 = v14 - v13;
  v16 = sub_1C906204C();
  OUTLINED_FUNCTION_11();
  v18 = v17;
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_15();
  v22 = v21 - v20;
  v31 = *a5;
  if (a2)
  {
    v23 = a2;
  }

  else
  {
    _s7ToolKit0A8DatabaseC7VersionVAEycfC_0();
    a1 = sub_1C906200C();
    v23 = v24;
    (*(v18 + 8))(v22, v16);
  }

  *&v30[0] = 0x4E494F5045564153;
  *(&v30[0] + 1) = 0xEB00000000222054;

  MEMORY[0x1CCA81A90](a1, v23);
  MEMORY[0x1CCA81A90](34, 0xE100000000000000);
  sub_1C9062B8C();
  v25 = a4;
  sub_1C9062FAC();
  (*(v11 + 8))(v15, v9);

  if (v28)
  {
  }

  else
  {
    v32 = v31;
    sub_1C8D04FBC(a3, v30);
    v25 = swift_allocObject();
    sub_1C8E799D0(a1, v23, a4, &v32, v30);
  }

  return v25;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ToolDatabase.Savepoint.commit()()
{
  sub_1C9062B9C();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_15();
  MEMORY[0x1CCA81A90](*(v0 + 32), *(v0 + 40));
  MEMORY[0x1CCA81A90](34, 0xE100000000000000);
  sub_1C9062B8C();
  sub_1C9062FAC();
  v2 = OUTLINED_FUNCTION_17_23();
  v3(v2);
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ToolDatabase.Savepoint.rollBack()()
{
  v1 = sub_1C9062B9C();
  OUTLINED_FUNCTION_11();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_15();
  v7 = v6 - v5;
  sub_1C906478C();

  MEMORY[0x1CCA81A90](*(v0 + 32), *(v0 + 40));
  MEMORY[0x1CCA81A90](34, 0xE100000000000000);
  sub_1C9062B8C();
  sub_1C9062FAC();
  (*(v3 + 8))(v7, v1);

  sub_1C8E79F44(v0);
}

uint64_t sub_1C8E79F44(uint64_t a1)
{
  v2 = type metadata accessor for ToolDatabase.RollbackCleanupOperation(0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 88);
  os_unfair_lock_lock((v6 + 24));
  v7 = *(v6 + 16);

  os_unfair_lock_unlock((v6 + 24));
  v8 = *(v7 + 16);
  if (v8)
  {
    v9 = v7 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    do
    {
      v11 = sub_1C8E7E29C(v9, v5);
      v12 = *(v2 + 24);
      if ((v5[v12] & 1) == 0)
      {
        (*&v5[*(v2 + 20)])(v11);
        v5[v12] = 1;
      }

      ToolDatabase.Savepoint.deregisterRollbackOperation(operation:)(v5);
      sub_1C8E7BBA8(v5);
      v9 += v10;
      --v8;
    }

    while (v8);
  }
}

void ToolDatabase.Savepoint.registerRollbackOperation(operation:)(uint64_t a1)
{
  v3 = *(v1 + 88);
  os_unfair_lock_lock((v3 + 24));
  sub_1C8E7BC28((v3 + 16), v7);
  os_unfair_lock_unlock((v3 + 24));
  if ((v7[0] & 1) == 0)
  {
    MEMORY[0x1EEE9AC00](v4);
    OUTLINED_FUNCTION_29_16();
    os_unfair_lock_lock((v3 + 24));
    sub_1C8E7E3BC((v3 + 16));
    os_unfair_lock_unlock((v3 + 24));
    sub_1C8E7BC90(v1 + 48, v7);
    v5 = v8;
    if (v8)
    {
      v6 = v9;
      __swift_project_boxed_opaque_existential_1(v7, v8);
      (*(v6 + 48))(a1, v5, v6);
      __swift_destroy_boxed_opaque_existential_1(v7);
    }

    else
    {
      sub_1C8D14208(v7, &qword_1EC317F20, &qword_1C90918A0);
    }
  }
}

uint64_t sub_1C8E7A1E0(uint64_t *a1, uint64_t a2)
{
  sub_1C8E73A34();
  v4 = *(*a1 + 16);
  sub_1C8E73AC0(v4);
  v5 = *a1;
  *(*a1 + 16) = v4 + 1;
  v6 = *(type metadata accessor for ToolDatabase.RollbackCleanupOperation(0) - 8);
  result = sub_1C8E7E29C(a2, v5 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v4);
  *a1 = v5;
  return result;
}

uint64_t ToolDatabase.Savepoint.deregisterRollbackOperation(operation:)(uint64_t a1)
{
  v3 = *(v1 + 88);
  os_unfair_lock_lock(v3 + 6);
  sub_1C8E7BD00(&v3[4]);
  os_unfair_lock_unlock(v3 + 6);
  sub_1C8E7BC90(v1 + 48, v7);
  v4 = v8;
  if (!v8)
  {
    return sub_1C8D14208(v7, &qword_1EC317F20, &qword_1C90918A0);
  }

  v5 = v9;
  __swift_project_boxed_opaque_existential_1(v7, v8);
  (*(v5 + 56))(a1, v4, v5);
  return __swift_destroy_boxed_opaque_existential_1(v7);
}

char *sub_1C8E7A374(uint64_t a1, uint64_t a2, uint64_t (*a3)(unint64_t))
{
  v6[2] = a2;
  result = sub_1C8E7DB7C(a3, v6);
  v5 = *(*a1 + 16);
  if (v5 >= result)
  {
    return sub_1C8F4BBBC(result, v5);
  }

  __break(1u);
  return result;
}

uint64_t ToolDatabase.Savepoint.perform<A>(work:)(void (*a1)(uint64_t))
{
  v16 = *(v1 + 24);
  v3 = type metadata accessor for ToolDatabase.Accessor();
  v4 = OUTLINED_FUNCTION_24_21(v3);
  v12 = OUTLINED_FUNCTION_22_25(v4, v5, v6, v7, v8, v9, v10, v11, v14, *v15, *&v15[4], v15[6], v16);

  a1(v12);
}

uint64_t ToolDatabase.Savepoint.deinit()
{

  sub_1C8D14208(v0 + 48, &qword_1EC317F20, &qword_1C90918A0);

  return v0;
}

uint64_t ToolDatabase.Savepoint.__deallocating_deinit()
{
  ToolDatabase.Savepoint.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 96, 7);
}

void ToolDatabase.inTransaction<A>(mode:work:)()
{
  OUTLINED_FUNCTION_13_20();
  OUTLINED_FUNCTION_0_3();
  sub_1C8D10DD4();
}

uint64_t sub_1C8E7A64C(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[2] = a5;
  v6[3] = a1;
  v7 = a2;
  v8 = a3;
  v9 = a4;
  return sub_1C8E7A9F0(sub_1C8E7E244, v6, a5);
}

uint64_t sub_1C8E7A6A0@<X0>(uint64_t a1@<X0>, char a2@<W1>, void (*a3)(uint64_t, uint64_t, uint64_t)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v17[1] = a5;
  v17[2] = a4;
  v18 = a3;
  v19 = a6;
  v9 = sub_1C90626DC();
  MEMORY[0x1EEE9AC00](v9);
  v11 = v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  type metadata accessor for ToolDatabase.Transaction();
  v13 = *(a1 + 16);
  v22 = a2;
  ToolDatabase.environment.getter(&v21);
  v20 = v21;
  result = sub_1C8E78764(v13, &v22, &v20);
  if (!v6)
  {
    v17[0] = v11;
    v18(result, v15, v16);
    sub_1C8E78C94();
  }

  return result;
}

uint64_t sub_1C8E7A9F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C9063DEC();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = (&v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(v3 + 24);
  *v8 = v9;
  (*(v5 + 104))(v8, *MEMORY[0x1E69E8018], v4, v6);
  v9;
  LOBYTE(v9) = sub_1C9063DFC();
  result = (*(v5 + 8))(v8, v4);
  if (v9)
  {
    return sub_1C90644BC();
  }

  __break(1u);
  return result;
}

uint64_t ToolDatabase.inTransaction<A>(mode:work:)(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 40) = a5;
  *(v6 + 48) = v5;
  *(v6 + 24) = a3;
  *(v6 + 32) = a4;
  *(v6 + 16) = a1;
  *(v6 + 56) = *v5;
  *(v6 + 88) = *a2;
  return OUTLINED_FUNCTION_199();
}

uint64_t sub_1C8E7AB88()
{
  v1 = *(v0 + 88);
  v2 = swift_task_alloc();
  *(v0 + 64) = v2;
  v3 = *(v0 + 24);
  *(v2 + 16) = *(v0 + 40);
  *(v2 + 32) = v1;
  *(v2 + 40) = v3;
  swift_task_alloc();
  OUTLINED_FUNCTION_33();
  *(v0 + 72) = v4;
  *v4 = v5;
  v4[1] = sub_1C8E7AC68;

  return sub_1C8D111D8();
}

uint64_t sub_1C8E7AC68()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_377();
  v3 = v2;
  OUTLINED_FUNCTION_248();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_3();
  *v6 = v5;
  *(v3 + 80) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_21_1();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {

    OUTLINED_FUNCTION_6_0();

    return v10();
  }
}

uint64_t sub_1C8E7AD88()
{
  OUTLINED_FUNCTION_7();

  OUTLINED_FUNCTION_6_0();

  return v0();
}

uint64_t sub_1C8E7ADE4(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 40) = a5;
  *(v6 + 48) = a6;
  *(v6 + 24) = a2;
  *(v6 + 32) = a4;
  *(v6 + 80) = a3;
  *(v6 + 16) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1C8E7AE10, 0, 0);
}

uint64_t sub_1C8E7AE10()
{
  OUTLINED_FUNCTION_24_0();
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  v3 = *(v0 + 80);
  v4 = *(v0 + 24);
  v5 = *(v0 + 32);
  v6 = swift_allocObject();
  *(v0 + 56) = v6;
  *(v6 + 16) = v2;
  *(v6 + 24) = v4;
  *(v6 + 32) = v3;
  *(v6 + 40) = v5;
  *(v6 + 48) = v1;

  swift_task_alloc();
  OUTLINED_FUNCTION_33();
  *(v0 + 64) = v7;
  *v7 = v8;
  v7[1] = sub_1C8E7AF10;
  v9 = *(v0 + 48);
  v10 = *(v0 + 16);

  return sub_1C8E7B864(v10, &unk_1C9091C30, v6, v9);
}

uint64_t sub_1C8E7AF10()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_377();
  v3 = v2;
  OUTLINED_FUNCTION_248();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_3();
  *v6 = v5;
  *(v3 + 72) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_21_1();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {

    OUTLINED_FUNCTION_6_0();

    return v10();
  }
}

uint64_t sub_1C8E7B030()
{
  OUTLINED_FUNCTION_7();

  OUTLINED_FUNCTION_6_0();

  return v0();
}

uint64_t sub_1C8E7B08C(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 48) = a5;
  *(v6 + 56) = a6;
  *(v6 + 32) = a2;
  *(v6 + 40) = a4;
  *(v6 + 120) = a3;
  *(v6 + 24) = a1;
  v7 = sub_1C90626DC();
  *(v6 + 64) = v7;
  *(v6 + 72) = *(v7 - 8);
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C8E7B164, 0, 0);
}

uint64_t sub_1C8E7B164()
{
  OUTLINED_FUNCTION_133();
  v12 = v0;
  v1 = *(v0 + 120);
  v2 = *(v0 + 32);
  type metadata accessor for ToolDatabase.Transaction();
  v3 = *(v2 + 16);
  v9 = v1;
  ToolDatabase.environment.getter(&v10);
  v11[0] = v10;
  *(v0 + 96) = sub_1C8E78764(v3, &v9, v11);
  v8 = (*(v0 + 40) + **(v0 + 40));
  swift_task_alloc();
  OUTLINED_FUNCTION_33();
  *(v0 + 104) = v4;
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_19_21(v4);

  return v8(v6);
}

uint64_t sub_1C8E7B2E8()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_377();
  OUTLINED_FUNCTION_248();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_3();
  *v5 = v4;
  *(v6 + 112) = v0;

  OUTLINED_FUNCTION_21_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C8E7B864(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1C8E7B88C, 0, 0);
}

uint64_t sub_1C8E7B88C()
{
  OUTLINED_FUNCTION_7();
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  v2 = *(v0 + 24);
  *(v1 + 16) = *(v0 + 40);
  *(v1 + 32) = v2;
  swift_task_alloc();
  OUTLINED_FUNCTION_33();
  *(v0 + 64) = v3;
  *v3 = v4;
  v3[1] = sub_1C8E7B970;
  OUTLINED_FUNCTION_21_1();

  return MEMORY[0x1EEE6DE38](v5);
}

uint64_t sub_1C8E7B970()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_377();
  v3 = v2;
  OUTLINED_FUNCTION_248();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_3();
  *v6 = v5;
  *(v3 + 72) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_21_1();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {

    OUTLINED_FUNCTION_6_0();

    return v10();
  }
}

uint64_t sub_1C8E7BA90()
{
  OUTLINED_FUNCTION_7();

  OUTLINED_FUNCTION_6_0();

  return v0();
}

uint64_t type metadata accessor for ToolDatabase.RollbackCleanupOperation(uint64_t a1)
{
  result = qword_1EDA68C90;
  if (!qword_1EDA68C90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C8E7BBA8(uint64_t a1)
{
  v2 = type metadata accessor for ToolDatabase.RollbackCleanupOperation(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C8E7BC90(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC317F20, &qword_1C90918A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C8E7BD30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v25 = a3;
  v26 = a4;
  v24 = a1;
  v7 = sub_1C9063DAC();
  v29 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_1C9063DDC();
  v10 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC316420, &qword_1C90729E0);
  v13 = sub_1C906427C();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v23 - v16;
  v27 = *(a2 + 24);
  (*(v14 + 16))(&v23 - v16, v24, v13, v15);
  v18 = (*(v14 + 80) + 40) & ~*(v14 + 80);
  v19 = swift_allocObject();
  v20 = v25;
  *(v19 + 2) = a5;
  *(v19 + 3) = v20;
  *(v19 + 4) = v26;
  (*(v14 + 32))(&v19[v18], v17, v13);
  aBlock[4] = sub_1C8E7E02C;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1C8E7CA0C;
  aBlock[3] = &block_descriptor_5;
  v21 = _Block_copy(aBlock);

  sub_1C9063DCC();
  v30 = MEMORY[0x1E69E7CC0];
  sub_1C8E7E0C4(&qword_1EDA62E98, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC317F58, &unk_1C9091C40);
  sub_1C8E7E10C();
  sub_1C90646CC();
  MEMORY[0x1CCA81F50](0, v12, v9, v21);
  _Block_release(v21);
  (*(v29 + 8))(v9, v7);
  (*(v10 + 8))(v12, v28);
}

uint64_t sub_1C8E7C0D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23[2] = a3;
  v24 = a1;
  v25 = a2;
  v23[0] = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC316420, &qword_1C90729E0);
  v5 = sub_1C9064DCC();
  v6 = sub_1C906464C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v23 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC316510, &qword_1C9085200);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = v23 - v11;
  v13 = dispatch_semaphore_create(0);
  v14 = swift_allocBox();
  v16 = v15;
  __swift_storeEnumTagSinglePayload(v15, 1, 1, v5);
  v17 = sub_1C90642AC();
  __swift_storeEnumTagSinglePayload(v12, 1, 1, v17);
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v23[1] = a4;
  v18[4] = a4;
  v18[5] = v14;
  v19 = v25;
  v18[6] = v24;
  v18[7] = v19;
  v18[8] = v13;

  v20 = v13;
  sub_1C8CE80E4(0, 0, v12, &unk_1C9091C58, v18);

  sub_1C906454C();
  swift_beginAccess();
  (*(v7 + 16))(v9, v16, v6);
  result = __swift_getEnumTagSinglePayload(v9, 1, v5);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v22 = sub_1C906427C();
    sub_1C8E7C7D0(v9, v22);

    (*(*(v5 - 8) + 8))(v9, v5);
  }

  return result;
}

uint64_t sub_1C8E7C394(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[8] = a7;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC316420, &qword_1C90729E0);
  v8[9] = sub_1C9064DCC();
  v10 = sub_1C906464C();
  v8[10] = v10;
  v8[11] = *(v10 - 8);
  v8[12] = swift_task_alloc();
  v11 = swift_task_alloc();
  v8[13] = v11;
  v8[14] = swift_projectBox();
  v14 = (a5 + *a5);
  v12 = swift_task_alloc();
  v8[15] = v12;
  *v12 = v8;
  v12[1] = sub_1C8E7C54C;

  return v14(v11);
}

uint64_t sub_1C8E7C54C()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_377();
  OUTLINED_FUNCTION_248();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_3();
  *v5 = v4;
  *(v6 + 128) = v0;

  OUTLINED_FUNCTION_21_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C8E7C648()
{
  OUTLINED_FUNCTION_24_0();
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_32_13();
  swift_beginAccess();
  v0 = OUTLINED_FUNCTION_28_16();
  v1(v0);
  sub_1C906455C();

  OUTLINED_FUNCTION_6_0();

  return v2();
}

uint64_t sub_1C8E7C708()
{
  OUTLINED_FUNCTION_24_0();
  **(v0 + 96) = *(v0 + 128);
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_32_13();
  swift_beginAccess();
  v1 = OUTLINED_FUNCTION_28_16();
  v2(v1);
  sub_1C906455C();

  OUTLINED_FUNCTION_6_0();

  return v3();
}

uint64_t sub_1C8E7C7D0(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v7 + 24);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1C9064DCC();
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v19 - v15;
  (*(v17 + 16))(&v19 - v15, a1, v13, v14);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v9 + 32))(v12, v16, v8);
    return sub_1C906425C();
  }

  else
  {
    (*(v4 + 32))(v6, v16, v3);
    return sub_1C906426C();
  }
}

uint64_t sub_1C8E7CA0C(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

void sub_1C8E7CAB0(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void (*a5)(uint64_t)@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v44 = a3;
  v40 = a8;
  v41 = a6;
  v42 = a5;
  v43 = a9;
  v14 = sub_1C90626DC();
  v39 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v39 - v18;
  type metadata accessor for ToolDatabase.Savepoint();
  v47 = a7;
  v48 = a10;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v46);
  (*(*(a7 - 8) + 16))(boxed_opaque_existential_1, a4, a7);
  v21 = *(a1 + 16);
  (*(a10 + 16))(&v50, a7, a10);
  v49 = v50;
  v22 = v45;
  v24 = sub_1C8E79A60(a2, v44, v46, v21, &v49, v23);
  __swift_destroy_boxed_opaque_existential_1(v46);
  if (!v22)
  {
    v26 = v39;
    v25 = v40;
    v42(v24);
    ToolDatabase.Savepoint.commit()();
    v28 = v27;
    if (v27)
    {
      (*(*(v25 - 1) + 8))(v43, v25);
      v46[0] = v27;
      v29 = v27;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC316420, &qword_1C90729E0);
      if (swift_dynamicCast())
      {

        (*(v26 + 32))(v16, v19, v14);
        sub_1C8D11CA4(1, v30, v31, v32, v33, v34, v35, v36, v39, v40, v41, v42, v43, v44, v45, v46[0], v46[1], v46[2], v47, v48);
        sub_1C8E7E0C4(&qword_1EC312ED8, MEMORY[0x1E699FE10], MEMORY[0x1E699FE18]);
        swift_allocError();
        (*(v26 + 16))(v38, v16, v14);
        swift_willThrow();

        (*(v26 + 8))(v16, v14);

        return;
      }

      ToolDatabase.Savepoint.rollBack()();
      if (v37)
      {

        return;
      }

      swift_willThrow();
    }
  }
}

uint64_t ToolDatabase.inInsertionSession<A>(work:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return OUTLINED_FUNCTION_199();
}

uint64_t sub_1C8E7CE78()
{
  OUTLINED_FUNCTION_24_0();
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v3 = *(v0 + 24);
  *(v0 + 80) = 3;
  OUTLINED_FUNCTION_19_0();
  v4 = swift_allocObject();
  *(v0 + 56) = v4;
  v4[2] = v2;
  v4[3] = v3;
  v4[4] = v1;

  swift_task_alloc();
  OUTLINED_FUNCTION_33();
  *(v0 + 64) = v5;
  *v5 = v6;
  v5[1] = sub_1C8E7AF10;
  v7 = *(v0 + 40);
  v8 = *(v0 + 16);

  return ToolDatabase.inTransaction<A>(mode:work:)(v8, (v0 + 80), &unk_1C90918D0, v4, v7);
}

uint64_t sub_1C8E7CF74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a3;
  v4[6] = a4;
  v4[3] = a1;
  v4[4] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1C8E7CF98, 0, 0);
}

uint64_t sub_1C8E7CF98()
{
  v1 = v0[5];
  v0[2] = v0[4];

  v6 = (v1 + *v1);
  swift_task_alloc();
  OUTLINED_FUNCTION_33();
  v0[7] = v2;
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_19_21(v2);

  return v6(v4);
}

uint64_t sub_1C8E7D08C()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_377();
  v3 = v2;
  OUTLINED_FUNCTION_248();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_3();
  *v6 = v5;
  *(v3 + 64) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_21_1();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {
    OUTLINED_FUNCTION_6_0();

    return v10();
  }
}

uint64_t sub_1C8E7D220(uint64_t a1, void (*a2)(uint64_t *))
{
  v4 = a1;

  a2(&v4);
}

uint64_t ToolDatabase.InsertionSession.perform<A>(work:)(uint64_t a1)
{
  type metadata accessor for ToolDatabase.Transaction();

  ToolDatabase.Rollbackable.inSavepoint<A>(name:work:)();
}

uint64_t sub_1C8E7D354()
{
  OUTLINED_FUNCTION_24_0();
  swift_task_alloc();
  OUTLINED_FUNCTION_33();
  *(v0 + 16) = v1;
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_12_25(v1);

  return sub_1C8E7ADE4(v3, v4, v5, v6, v7, v8);
}

uint64_t sub_1C8E7D42C()
{
  OUTLINED_FUNCTION_24_0();
  v3 = v2;
  v5 = v4;
  v6 = *(v0 + 24);
  v7 = *(v0 + 32);
  swift_task_alloc();
  OUTLINED_FUNCTION_33();
  *(v1 + 16) = v8;
  *v8 = v9;
  v8[1] = sub_1C8E1BB44;

  return sub_1C8E7CF74(v5, v3, v6, v7);
}

unint64_t sub_1C8E7D55C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC317F28;
  if (!qword_1EC317F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC317F28);
  }

  return result;
}

unint64_t sub_1C8E7D644(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC317F38;
  if (!qword_1EC317F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC317F38);
  }

  return result;
}

_BYTE *_s17RollbackableErrorOwst(_BYTE *result, int a2, int a3)
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

uint64_t sub_1C8E7D834(uint64_t a1)
{
  result = sub_1C906204C();
  if (v2 <= 0x3F)
  {
    result = sub_1C8E7D8C0();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_1C8E7D8C0()
{
  result = qword_1EDA62D18;
  if (!qword_1EDA62D18)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_1EDA62D18);
  }

  return result;
}

_BYTE *_s11TransactionC4ModeOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t *__swift_initWithCopy_strong(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t *__swift_assignWithCopy_strong(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t *__swift_assignWithTake_strong(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  return a1;
}

unint64_t sub_1C8E7DB28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC317F50;
  if (!qword_1EC317F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC317F50);
  }

  return result;
}

char *sub_1C8E7DB7C(uint64_t (*a1)(unint64_t), uint64_t a2)
{
  v4 = v3;
  v7 = type metadata accessor for ToolDatabase.RollbackCleanupOperation(0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v36 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v36 - v15;
  v17 = *v2;
  result = sub_1C8E7DE60(a1, a2, *v2);
  if (v3)
  {
    return v4;
  }

  v42 = a2;
  v44 = v16;
  v38 = v10;
  v39 = v13;
  if (v19)
  {
    return *(v17 + 16);
  }

  v4 = result;
  v45 = 0;
  v37 = v2;
  v20 = result + 1;
  if (!__OFADD__(result, 1))
  {
    v21 = v17;
    v22 = v44;
    v40 = v8;
    v41 = a1;
    while (1)
    {
      v23 = *(v21 + 16);
      if (v20 == v23)
      {
        return v4;
      }

      if (v20 >= v23)
      {
        __break(1u);
LABEL_25:
        __break(1u);
LABEL_26:
        __break(1u);
LABEL_27:
        __break(1u);
LABEL_28:
        __break(1u);
        break;
      }

      v24 = v4;
      v25 = v21;
      v43 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v26 = v21 + v43;
      v27 = *(v8 + 72);
      v46 = v20;
      v28 = v27 * v20;
      sub_1C8E7E29C(v26 + v27 * v20, v22);
      v29 = v45;
      v30 = a1(v22);
      v4 = v29;
      result = sub_1C8E7BBA8(v22);
      v45 = v29;
      if (v29)
      {
        return v4;
      }

      if (v30)
      {
        v8 = v40;
        a1 = v41;
        v4 = v24;
        v22 = v44;
        v21 = v25;
        v31 = v46;
      }

      else
      {
        v31 = v46;
        v22 = v44;
        if (v46 == v24)
        {
          a1 = v41;
          v21 = v25;
        }

        else
        {
          if ((v24 & 0x8000000000000000) != 0)
          {
            goto LABEL_25;
          }

          v32 = *(v25 + 16);
          if (v24 >= v32)
          {
            goto LABEL_26;
          }

          v33 = v27 * v24;
          result = sub_1C8E7E29C(v26 + v33, v39);
          if (v46 >= v32)
          {
            goto LABEL_27;
          }

          sub_1C8E7E29C(v26 + v28, v38);
          v21 = v25;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1C8F4BD90();
            v21 = v35;
          }

          a1 = v41;
          v34 = v21 + v43;
          sub_1C8E7E300(v38, v21 + v43 + v33);
          result = v39;
          if (v46 >= *(v21 + 16))
          {
            goto LABEL_28;
          }

          result = sub_1C8E7E300(v39, v34 + v28);
          v31 = v46;
          *v37 = v21;
          v22 = v44;
        }

        v4 = v24 + 1;
        v8 = v40;
      }

      v20 = v31 + 1;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8E7DE60(uint64_t (*a1)(unint64_t), uint64_t a2, uint64_t a3)
{
  v6 = 0;
  v7 = *(a3 + 16);
  while (1)
  {
    if (v7 == v6)
    {
      return 0;
    }

    v8 = *(type metadata accessor for ToolDatabase.RollbackCleanupOperation(0) - 8);
    result = a1(a3 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v6);
    if (v3)
    {
      return result;
    }

    if (result)
    {
      break;
    }

    ++v6;
  }

  return v6;
}

uint64_t sub_1C8E7DF7C()
{
  OUTLINED_FUNCTION_24_0();
  swift_task_alloc();
  OUTLINED_FUNCTION_33();
  *(v0 + 16) = v1;
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_12_25(v1);

  return sub_1C8E7B08C(v3, v4, v5, v6, v7, v8);
}

uint64_t sub_1C8E7E02C()
{
  v1 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC316420, &qword_1C90729E0);
  v2 = *(sub_1C906427C() - 8);
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0 + ((*(v2 + 80) + 40) & ~*(v2 + 80));

  return sub_1C8E7C0D8(v3, v4, v5, v1);
}

uint64_t sub_1C8E7E0C4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1C8E7E10C()
{
  result = qword_1EDA62D88;
  if (!qword_1EDA62D88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC317F58, &unk_1C9091C40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA62D88);
  }

  return result;
}

uint64_t sub_1C8E7E170()
{
  OUTLINED_FUNCTION_133();
  v3 = v2;
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = v0[5];
  v8 = v0[6];
  v9 = v0[7];
  v10 = v0[8];
  swift_task_alloc();
  OUTLINED_FUNCTION_33();
  *(v1 + 16) = v11;
  *v11 = v12;
  v11[1] = sub_1C8E1685C;

  return sub_1C8E7C394(v3, v4, v5, v7, v8, v9, v10, v6);
}

uint64_t sub_1C8E7E29C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolDatabase.RollbackCleanupOperation(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C8E7E300(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolDatabase.RollbackCleanupOperation(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C8E7E454(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8E7E5E0(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C8E7E490(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8E7E5E0(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t ValidPredicate.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC317F60, &qword_1C9091C60);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v10 - v4;
  v6 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C8E7E5E0(v6, v7, v8);
  sub_1C9064E1C();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_1C8E7E5E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA60C20;
  if (!qword_1EDA60C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA60C20);
  }

  return result;
}

unint64_t sub_1C8E7E6C4(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8E7E704(a1, a2, a3);
  a1[1] = v4;
  v7 = sub_1C8DCDDD4(v4, v5, v6);
  a1[2] = v7;
  v10 = sub_1C8DCD98C(v7, v8, v9);
  a1[3] = v10;
  result = sub_1C8E7E758(v10, v11, v12);
  a1[4] = result;
  return result;
}

unint64_t sub_1C8E7E704(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA60BE0;
  if (!qword_1EDA60BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA60BE0);
  }

  return result;
}

unint64_t sub_1C8E7E758(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA60BF0;
  if (!qword_1EDA60BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA60BF0);
  }

  return result;
}

unint64_t sub_1C8E7E7B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA60BE8;
  if (!qword_1EDA60BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA60BE8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ValidPredicate(_BYTE *result, int a2, int a3)
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

unint64_t sub_1C8E7E8F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA60C10;
  if (!qword_1EDA60C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA60C10);
  }

  return result;
}

unint64_t sub_1C8E7E94C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA60C18;
  if (!qword_1EDA60C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA60C18);
  }

  return result;
}

uint64_t sub_1C8E7E9B0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6449656C646E7562 && a2 == 0xE800000000000000;
  if (v4 || (sub_1C9064C2C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001C90CBE30 == a2)
  {

    return 1;
  }

  else
  {
    v7 = sub_1C9064C2C();

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

uint64_t sub_1C8E7EA80(char a1)
{
  if (a1)
  {
    return 0xD000000000000014;
  }

  else
  {
    return 0x6449656C646E7562;
  }
}

uint64_t sub_1C8E7EABC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[0] = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC317F80, &qword_1C9092048);
  OUTLINED_FUNCTION_11();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = v16 - v10;
  v12 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C8E7F28C(v12, v13, v14);
  sub_1C9064E1C();
  v18 = 0;
  sub_1C9064B2C();
  if (!v4)
  {
    v16[1] = v16[0];
    v17 = 1;
    type metadata accessor for LSPersistentIdentifier(0);
    sub_1C8E7F2E0(&unk_1EDA60478, MEMORY[0x1E69E08E8]);
    sub_1C9064B8C();
  }

  return (*(v8 + 8))(v11, v6);
}

uint64_t sub_1C8E7EC64(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC317F78, &qword_1C9092040);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v3);
  v4 = a1[4];
  v5 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C8E7F28C(v5, v6, v7);
  sub_1C9064DEC();
  if (!v1)
  {
    v4 = sub_1C9064A0C();
    type metadata accessor for LSPersistentIdentifier(0);
    sub_1C8E7F2E0(&qword_1EDA62D48, MEMORY[0x1E69E08F0]);
    sub_1C9064A6C();
    v9 = OUTLINED_FUNCTION_0_5();
    v10(v9);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v4;
}

uint64_t sub_1C8E7EE5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C8E7E9B0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C8E7EE84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8E7F28C(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C8E7EEC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8E7F28C(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1C8E7EEFC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1C8E7EC64(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

uint64_t sub_1C8E7EF4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C8E7F238(a1, a2, a3);

  return MEMORY[0x1EEE09760](a1, a2, a3, v6);
}

uint64_t sub_1C8E7EFB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1C8E7F324(a1, a2, a3);

  return sub_1C9062B4C();
}

uint64_t sub_1C8E7F0A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C8E7F378(a1, a2, a3);

  return MEMORY[0x1EEE096E8](a1, a2, a3, v6);
}

unint64_t sub_1C8E7F0FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA60788;
  if (!qword_1EDA60788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA60788);
  }

  return result;
}

unint64_t sub_1C8E7F154(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA63000;
  if (!qword_1EDA63000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA63000);
  }

  return result;
}

unint64_t sub_1C8E7F1AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA60790;
  if (!qword_1EDA60790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA60790);
  }

  return result;
}

uint64_t sub_1C8E7F200(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = qword_1EC317F68;

  return v5;
}

unint64_t sub_1C8E7F238(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA62FF0;
  if (!qword_1EDA62FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA62FF0);
  }

  return result;
}

unint64_t sub_1C8E7F28C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA63018[0];
  if (!qword_1EDA63018[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDA63018);
  }

  return result;
}

uint64_t sub_1C8E7F2E0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for LSPersistentIdentifier(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C8E7F324(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA60798;
  if (!qword_1EDA60798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA60798);
  }

  return result;
}

unint64_t sub_1C8E7F378(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA60780;
  if (!qword_1EDA60780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA60780);
  }

  return result;
}

uint64_t sub_1C8E7F3EC(uint64_t a1, uint64_t *a2, char a3)
{
  v4 = sub_1C9062E6C();
  __swift_allocate_value_buffer(v4, a2);
  v5 = __swift_project_value_buffer(v4, a2);
  sub_1C8E7F28C(v5, v6, v7);
  return sub_1C9062E8C();
}

_BYTE *storeEnumTagSinglePayload for LaunchServicesStateRecord.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C8E7F548(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC317F88;
  if (!qword_1EC317F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC317F88);
  }

  return result;
}

unint64_t sub_1C8E7F5A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA63008;
  if (!qword_1EDA63008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA63008);
  }

  return result;
}

unint64_t sub_1C8E7F5F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA63010;
  if (!qword_1EDA63010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA63010);
  }

  return result;
}

ToolKit::ToolTypeDefinition_optional __swiftcall ToolTypeDefinition.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_37_5();
  v2 = sub_1C906497C();

  v4 = 5;
  if (v2 < 5)
  {
    v4 = v2;
  }

  *v1 = v4;
  return result;
}

ToolKit::ToolAuthenticationPolicy_optional __swiftcall ToolAuthenticationPolicy.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_37_5();
  v2 = sub_1C906497C();

  v4 = 4;
  if (v2 < 4)
  {
    v4 = v2;
  }

  *v1 = v4;
  return result;
}

uint64_t ToolTypeDefinition.rawValue.getter()
{
  result = 0x6E65746E49707061;
  switch(*v0)
  {
    case 1:
      result = 0x65746E4969726973;
      break;
    case 2:
      result = 0x6E6F69746361;
      break;
    case 3:
      result = OUTLINED_FUNCTION_133_3();
      break;
    case 4:
      result = 0x6C6F6F54776F6C66;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t ToolAuthenticationPolicy.rawValue.getter()
{
  result = 0x656E696665646E75;
  switch(*v0)
  {
    case 1:
      result = 1701736302;
      break;
    case 2:
      result = 0xD00000000000001ELL;
      break;
    case 3:
      result = 0xD000000000000027;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t ToolSymbolIconColor.rawValue.getter()
{
  result = 0x6B63616C42;
  switch(*v0)
  {
    case 1:
      result = 0x6574696857;
      break;
    case 2:
      result = 0x6C6562614CLL;
      break;
    case 3:
      result = 6579538;
      break;
    case 4:
      v2 = 1701147207;
      goto LABEL_16;
    case 5:
      result = 1702194242;
      break;
    case 6:
      result = 0x65676E61724FLL;
      break;
    case 7:
      result = 0x776F6C6C6559;
      break;
    case 8:
      result = 0xD000000000000014;
      break;
    case 9:
      result = 1802398032;
      break;
    case 0xA:
      result = 0x656C70727550;
      break;
    case 0xB:
      result = 1818322260;
      break;
    case 0xC:
      result = 0x6F6769646E49;
      break;
    case 0xD:
      v2 = 2003792450;
LABEL_16:
      result = v2 & 0xFFFF0000FFFFFFFFLL | 0x6E00000000;
      break;
    case 0xE:
      result = 1953392973;
      break;
    case 0xF:
      result = 1851881795;
      break;
    case 0x10:
      result = 2036429383;
      break;
    case 0x11:
      result = 0x7261656C43;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t ContainerDefinition.Device.debugDescription.getter()
{
  if (!*(v0 + 8))
  {
    return OUTLINED_FUNCTION_209_1();
  }

  OUTLINED_FUNCTION_164_4();
  v3 = v1;
  MEMORY[0x1CCA81A90]();
  OUTLINED_FUNCTION_340();
  return v3;
}

void static ToolDefinition.== infix(_:_:)()
{
  OUTLINED_FUNCTION_164();
  v3 = v2;
  v5 = v4;
  type metadata accessor for ToolIcon(0);
  OUTLINED_FUNCTION_13_1();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_15();
  v9 = v8 - v7;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3144B8, &qword_1C90839E0);
  OUTLINED_FUNCTION_9(v10);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_15_0();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC317F90, &qword_1C90A6ED0);
  OUTLINED_FUNCTION_13_1();
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_38();
  v14 = *v5 == *v3 && *(v5 + 8) == *(v3 + 8);
  if (v14 || (sub_1C9064C2C() & 1) != 0)
  {
    v15 = *(v5 + 16) == *(v3 + 16) && *(v5 + 24) == *(v3 + 24);
    if (v15 || (sub_1C9064C2C()) && (sub_1C8E5ACB0(*(v5 + 32), *(v3 + 32)) & 1) != 0 && (sub_1C8CEB63C() & 1) != 0 && (sub_1C8CEB63C())
    {
      v169[0] = *(v5 + 56);
      v173[0] = *(v3 + 56);

      static TypeInstance.== infix(_:_:)(v169, v173);
      v17 = v16;

      if (v17)
      {
        v18 = *(v5 + 72);
        v19 = *(v3 + 72);
        if (v18)
        {
          if (!v19)
          {
            goto LABEL_84;
          }

          v20 = *(v5 + 64) == *(v3 + 64) && v18 == v19;
          if (!v20 && (sub_1C9064C2C() & 1) == 0)
          {
            goto LABEL_84;
          }
        }

        else if (v19)
        {
          goto LABEL_84;
        }

        memcpy(v172, (v5 + 80), sizeof(v172));
        memcpy(v173, (v3 + 80), 0x70uLL);
        v21 = v172[1];
        memcpy(v167, (v5 + 96), 0x60uLL);
        v149 = v173[0];
        v154 = v173[1];
        memcpy(v166, (v3 + 96), 0x60uLL);
        if (v172[1])
        {
          v22 = OUTLINED_FUNCTION_185_5(v172[1]);
          memcpy(v22, (v5 + 96), 0x60uLL);
          memcpy(v168, v169, sizeof(v168));
          v23 = v154;
          if (v154)
          {
            memcpy(&v159[2], (v3 + 96), 0x60uLL);
            v159[0] = v149;
            v159[1] = v154;
            sub_1C8D63FCC();
            OUTLINED_FUNCTION_222_3();
            sub_1C8D63FCC();
            OUTLINED_FUNCTION_222_3();
            sub_1C8D63FCC();
            static AppDefinition.== infix(_:_:)(v168);
            v150 = v24;
            memcpy(v157, v159, sizeof(v157));
            sub_1C8E8732C(v157);
            memcpy(v158, v168, sizeof(v158));
            sub_1C8E8732C(v158);
            v159[0] = v21;
            v159[1] = v146;
            memcpy(&v159[2], v167, 0x60uLL);
            sub_1C8D16D78(v159, &qword_1EC317F98, &qword_1C9092190);
            if ((v150 & 1) == 0)
            {
              goto LABEL_84;
            }

            goto LABEL_35;
          }

          memcpy(v159, v169, sizeof(v159));
          OUTLINED_FUNCTION_196_5();
          OUTLINED_FUNCTION_196_5();
          OUTLINED_FUNCTION_196_5();
          sub_1C8E8732C(v159);
        }

        else
        {
          v23 = v173[1];
          if (!v173[1])
          {
            v29 = OUTLINED_FUNCTION_258_2();
            memcpy(v29, (v5 + 96), 0x60uLL);
            OUTLINED_FUNCTION_366();
            sub_1C8D63FCC();
            OUTLINED_FUNCTION_366();
            sub_1C8D63FCC();
            sub_1C8D16D78(v169, &qword_1EC317F98, &qword_1C9092190);
LABEL_35:
            memcpy(v157, (v5 + 192), 0x61uLL);
            memcpy(v169, (v5 + 192), 0x61uLL);
            memcpy(v158, (v3 + 192), 0x61uLL);
            memcpy(v167, (v3 + 192), 0x61uLL);
            sub_1C8CC1340(v157, v166);
            sub_1C8CC1340(v158, v166);
            v30 = static ContainerDefinition.== infix(_:_:)(v169);
            memcpy(v159, v167, 0x61uLL);
            sub_1C8CC15FC(v159);
            memcpy(v168, v169, 0x61uLL);
            sub_1C8CC15FC(v168);
            if ((v30 & 1) == 0)
            {
              goto LABEL_84;
            }

            memcpy(v166, (v5 + 296), 0x61uLL);
            memcpy(v167, (v3 + 296), 0x61uLL);
            v31 = v166[1];
            memcpy(v165, (v5 + 312), 0x51uLL);
            v151 = v167[0];
            v155 = v167[1];
            memcpy(v164, (v3 + 312), 0x51uLL);
            if (v166[1])
            {
              v32 = OUTLINED_FUNCTION_185_5(v166[1]);
              memcpy(v32, (v5 + 312), 0x51uLL);
              memcpy(v163, v169, 0x61uLL);
              v33 = v155;
              if (v155)
              {
                memcpy(&v162[2], (v3 + 312), 0x51uLL);
                v162[0] = v151;
                v162[1] = v155;
                sub_1C8D63FCC();
                OUTLINED_FUNCTION_222_3();
                sub_1C8D63FCC();
                OUTLINED_FUNCTION_222_3();
                sub_1C8D63FCC();
                v152 = static ContainerDefinition.== infix(_:_:)(v163);
                memcpy(v160, v162, 0x61uLL);
                sub_1C8CC15FC(v160);
                memcpy(v161, v163, 0x61uLL);
                sub_1C8CC15FC(v161);
                v162[0] = v31;
                v162[1] = v146;
                memcpy(&v162[2], v165, 0x51uLL);
                sub_1C8D16D78(v162, &qword_1EC312EF8, &unk_1C90839D0);
                if ((v152 & 1) == 0)
                {
                  goto LABEL_84;
                }

                goto LABEL_45;
              }

              memcpy(v162, v169, 0x61uLL);
              OUTLINED_FUNCTION_196_5();
              OUTLINED_FUNCTION_196_5();
              OUTLINED_FUNCTION_196_5();
              sub_1C8CC15FC(v162);
            }

            else
            {
              v33 = v167[1];
              if (!v167[1])
              {
                v35 = OUTLINED_FUNCTION_258_2();
                memcpy(v35, (v5 + 312), 0x51uLL);
                OUTLINED_FUNCTION_366();
                sub_1C8D63FCC();
                OUTLINED_FUNCTION_366();
                sub_1C8D63FCC();
                sub_1C8D16D78(v169, &qword_1EC312EF8, &unk_1C90839D0);
LABEL_45:
                if ((sub_1C8CF15C4() & 1) == 0)
                {
                  goto LABEL_84;
                }

                memcpy(v161, (v5 + 408), 0x50uLL);
                memcpy(v160, (v5 + 408), 0x50uLL);
                memcpy(v162, (v3 + 408), 0x50uLL);
                memcpy(v165, (v3 + 408), 0x50uLL);
                v36 = static ToolDescription.== infix(_:_:)(v160, v165);
                memcpy(v163, v165, 0x50uLL);
                sub_1C8DFBD54(v161, v164);
                sub_1C8DFBD54(v162, v164);
                sub_1C8E87298(v163);
                memcpy(v169, v160, 0x50uLL);
                sub_1C8E87298(v169);
                if ((v36 & 1) == 0)
                {
                  goto LABEL_84;
                }

                v156 = type metadata accessor for ToolDefinition(0);
                v37 = *(v12 + 48);
                sub_1C8D63FCC();
                sub_1C8D63FCC();
                OUTLINED_FUNCTION_78_4(v0);
                if (v14)
                {
                  OUTLINED_FUNCTION_78_4(v0 + v37);
                  if (v14)
                  {
                    sub_1C8D16D78(v0, &qword_1EC3144B8, &qword_1C90839E0);
                    goto LABEL_57;
                  }
                }

                else
                {
                  OUTLINED_FUNCTION_177_5();
                  sub_1C8D63FCC();
                  OUTLINED_FUNCTION_78_4(v0 + v37);
                  if (!v38)
                  {
                    sub_1C8E872C8(v0 + v37, v9);
                    static ToolIcon.== infix(_:_:)();
                    v41 = v40;
                    sub_1C8E961D0(v9, type metadata accessor for ToolIcon);
                    v42 = OUTLINED_FUNCTION_124();
                    sub_1C8E961D0(v42, v43);
                    sub_1C8D16D78(v0, &qword_1EC3144B8, &qword_1C90839E0);
                    if ((v41 & 1) == 0)
                    {
                      goto LABEL_84;
                    }

LABEL_57:
                    OUTLINED_FUNCTION_176_5(v156[17]);
                    if ((sub_1C8D07714() & 1) == 0)
                    {
                      goto LABEL_84;
                    }

                    v44 = OUTLINED_FUNCTION_176_5(v156[18]);
                    sub_1C8CEB10C(v44, v45);
                    if ((v47 & 1) == 0)
                    {
                      goto LABEL_84;
                    }

                    v48 = v156[19];
                    v49 = *(v5 + v48);
                    v50 = *(v5 + v48 + 8);
                    v51 = *(v5 + v48 + 24);
                    v153 = *(v5 + v48 + 16);
                    v52 = (v3 + v48);
                    v53 = v52[1];
                    v55 = v52[2];
                    v54 = v52[3];
                    if (v50)
                    {
                      if (v53)
                      {
                        v56 = v49 == *v52 && v50 == v53;
                        if (v56 || (OUTLINED_FUNCTION_127(), (sub_1C9064C2C() & 1) != 0))
                        {
                          if (!v51)
                          {
                            v97 = OUTLINED_FUNCTION_61_9();
                            sub_1C8DFBDB0(v97, v98, v99, 0, v100);
                            v148 = 0;
                            if (!v54)
                            {
                              v122 = OUTLINED_FUNCTION_60_9();
                              sub_1C8DFBDB0(v122, v123, v124, 0, v125);
                              v126 = OUTLINED_FUNCTION_61_9();
                              sub_1C8DFBDB0(v126, v127, v128, 0, v129);
                              v120 = OUTLINED_FUNCTION_60_9();
                              goto LABEL_87;
                            }

LABEL_81:
                            v101 = OUTLINED_FUNCTION_60_9();
                            sub_1C8DFBDB0(v101, v102, v103, v54, v104);
                            v105 = OUTLINED_FUNCTION_127();
                            sub_1C8DFBDB0(v105, v106, v153, v148, v107);
                            v108 = OUTLINED_FUNCTION_60_9();
                            sub_1C8D16E14(v108, v109);
LABEL_82:

                            v91 = OUTLINED_FUNCTION_61_9();
                            goto LABEL_83;
                          }

                          if (v54)
                          {
                            if (v153 != v55 || v51 != v54)
                            {
                              v147 = sub_1C9064C2C();
                              v58 = OUTLINED_FUNCTION_127();
                              sub_1C8DFBDB0(v58, v59, v153, v51, v60);
                              v61 = OUTLINED_FUNCTION_77_3();
                              sub_1C8DFBDB0(v61, v62, v55, v54, v63);
                              v64 = OUTLINED_FUNCTION_127();
                              sub_1C8DFBDB0(v64, v65, v153, v51, v66);
                              v67 = OUTLINED_FUNCTION_77_3();
                              sub_1C8D16E14(v67, v68);
                              if (v147)
                              {
                                goto LABEL_88;
                              }

                              goto LABEL_82;
                            }

                            v110 = OUTLINED_FUNCTION_127();
                            sub_1C8DFBDB0(v110, v111, v153, v51, v112);
                            v113 = OUTLINED_FUNCTION_77_3();
                            sub_1C8DFBDB0(v113, v114, v153, v51, v115);
                            v116 = OUTLINED_FUNCTION_46_9();
                            sub_1C8DFBDB0(v116, v117, v118, v51, v119);
                            v120 = OUTLINED_FUNCTION_77_3();
LABEL_87:
                            sub_1C8D16E14(v120, v121);
LABEL_88:

                            goto LABEL_89;
                          }
                        }

                        v93 = OUTLINED_FUNCTION_61_9();
                        sub_1C8DFBDB0(v93, v94, v95, v51, v96);
                        v148 = v51;
                        goto LABEL_81;
                      }

                      v78 = OUTLINED_FUNCTION_127();
                      sub_1C8DFBDB0(v78, v79, v153, v51, v80);
                      OUTLINED_FUNCTION_279_1(v81, v82, v83, v84, v85);
                      v86 = OUTLINED_FUNCTION_127();
                      sub_1C8DFBDB0(v86, v87, v153, v51, v88);
                    }

                    else
                    {
                      sub_1C8DFBDB0(v49, 0, v153, v51, v46);
                      if (!v53)
                      {
                        OUTLINED_FUNCTION_279_1(v69, v70, v71, v72, v73);
LABEL_89:
                        v130 = OUTLINED_FUNCTION_61_9();
                        sub_1C8D16E14(v130, v131);
                        OUTLINED_FUNCTION_176_5(v156[20]);
                        if ((sub_1C8CEB710() & 1) == 0)
                        {
                          goto LABEL_84;
                        }

                        if (*(v5 + v156[21]) != *(v3 + v156[21]))
                        {
                          goto LABEL_84;
                        }

                        if ((sub_1C8E5A914(*(v5 + v156[22]), *(v3 + v156[22])) & 1) == 0)
                        {
                          goto LABEL_84;
                        }

                        v132 = OUTLINED_FUNCTION_176_5(v156[23]);
                        sub_1C8CF1828(v132, v133);
                        if ((v134 & 1) == 0)
                        {
                          goto LABEL_84;
                        }

                        v135 = v156[24];
                        v136 = (v5 + v135);
                        v137 = *(v5 + v135 + 8);
                        v138 = (v3 + v135);
                        v139 = v138[1];
                        if (v137)
                        {
                          if (!v139)
                          {
                            goto LABEL_84;
                          }

                          v140 = *v136 == *v138 && v137 == v139;
                          if (!v140 && (sub_1C9064C2C() & 1) == 0)
                          {
                            goto LABEL_84;
                          }
                        }

                        else if (v139)
                        {
                          goto LABEL_84;
                        }

                        if (*(v5 + v156[25]) == *(v3 + v156[25]))
                        {
                          v141 = OUTLINED_FUNCTION_176_5(v156[26]);
                          sub_1C8CEB10C(v141, v142);
                          if (v143)
                          {
                            v144 = OUTLINED_FUNCTION_176_5(v156[27]);
                            if (v144)
                            {
                              if (v145)
                              {
                                sub_1C8CEB4A0(v144, v145);
                              }
                            }
                          }
                        }

                        goto LABEL_84;
                      }

                      v74 = OUTLINED_FUNCTION_60_9();
                      sub_1C8DFBDB0(v74, v75, v76, v54, v77);
                    }

                    v89 = OUTLINED_FUNCTION_61_9();
                    sub_1C8D16E14(v89, v90);
                    v91 = OUTLINED_FUNCTION_60_9();
LABEL_83:
                    sub_1C8D16E14(v91, v92);
                    goto LABEL_84;
                  }

                  OUTLINED_FUNCTION_8_31();
                  sub_1C8E961D0(v1, v39);
                }

                v26 = &qword_1EC317F90;
                v27 = &qword_1C90A6ED0;
                v28 = v0;
LABEL_33:
                sub_1C8D16D78(v28, v26, v27);
                goto LABEL_84;
              }

              OUTLINED_FUNCTION_184_5(v166);
              OUTLINED_FUNCTION_184_5(v167);
            }

            v34 = OUTLINED_FUNCTION_259_1();
            memcpy(v34, v165, 0x51uLL);
            v169[13] = v151;
            v170 = v33;
            memcpy(&qword_1EC312F70, v164, 0x51uLL);
            v26 = &qword_1EC313988;
            v27 = &qword_1C906F410;
LABEL_32:
            v28 = v169;
            goto LABEL_33;
          }

          OUTLINED_FUNCTION_184_5(v172);
          OUTLINED_FUNCTION_184_5(v173);
        }

        v25 = OUTLINED_FUNCTION_259_1();
        memcpy(v25, v167, 0x60uLL);
        v170 = v149;
        v171 = v23;
        memcpy(&qword_1EC318018, v166, 0x60uLL);
        v26 = &unk_1EC317FA0;
        v27 = &unk_1C9092198;
        goto LABEL_32;
      }
    }
  }

LABEL_84:
  OUTLINED_FUNCTION_163();
}

uint64_t ParameterRelationshipDefinition.Relation.debugDescription.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 8);
  switch(v4 >> 5)
  {
    case 1u:
      v5 = 15649;
      goto LABEL_16;
    case 2u:
      if (v4)
      {
        v5 = 15678;
      }

      else
      {
        v5 = 62;
      }

      goto LABEL_16;
    case 3u:
      if (v4)
      {
        v5 = 15676;
      }

      else
      {
        v5 = 60;
      }

      goto LABEL_16;
    case 4u:
      v5 = 126;
      goto LABEL_16;
    case 5u:
      v5 = 32289;
      goto LABEL_16;
    case 6u:
      if (*v3 | v4 ^ 0xC0)
      {
        return 0x656E6F4E7369;
      }

      else
      {
        return 0x656D6F537369;
      }

    default:
      v5 = 15677;
LABEL_16:
      v8 = v5;
      sub_1C8DDC4F8(a1, a2, a3);
      v7 = sub_1C906433C();
      MEMORY[0x1CCA81A90](v7);

      return v8;
  }
}

__n128 ContainerDefinition.init(name:containerId:bundleVersion:containerType:teamId:device:origin:synonyms:)@<Q0>(unint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, unint64_t a5@<X4>, unint64_t a6@<X5>, unsigned __int8 *a7@<X6>, unint64_t a8@<X7>, __n128 *a9@<X8>, unint64_t a10, __n128 *a11, unsigned __int8 *a12, unint64_t a13)
{
  v13 = *a7;
  v14 = *a12;
  a9->n128_u64[0] = a1;
  a9->n128_u64[1] = a2;
  a9[2].n128_u64[0] = a4;
  a9[2].n128_u64[1] = a5;
  a9[3].n128_u64[0] = a6;
  a9[3].n128_u8[8] = v13;
  a9[4].n128_u64[0] = a8;
  a9[4].n128_u64[1] = a10;
  result = *a11;
  a9[5] = *a11;
  a9[6].n128_u8[0] = v14;
  a9[1].n128_u64[0] = a13;
  a9[1].n128_u64[1] = a3;
  return result;
}

void *ToolDefinition.init(id:name:toolType:parameters:hiddenParameters:outputType:outputResultName:sourceContainer:attributionContainer:additionalAttributionContainers:description:customIcon:categories:searchKeywords:deprecationDefinition:requirements:flags:systemProtocols:authenticationPolicy:sourceActionProvider:visibilityFlags:backingLinkActionIdentifiers:overriddenSampleInvocations:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t *a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, const void *a12, const void *a13, uint64_t a14, const void *a15, uint64_t a16, uint64_t a17, uint64_t a18, _OWORD *a19, uint64_t a20, uint64_t *a21, uint64_t a22, char *a23, uint64_t a24, uint64_t a25, uint64_t *a26, uint64_t a27, uint64_t a28)
{
  v29 = *a5;
  v30 = *a8;
  memcpy(__dst, a12, 0x61uLL);
  v48 = *a21;
  v49 = *a23;
  v31 = *a26;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = v29;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = v30;
  *(a9 + 64) = a10;
  *(a9 + 72) = a11;
  memcpy((a9 + 192), a12, 0x61uLL);
  memcpy((a9 + 296), a13, 0x61uLL);
  *(a9 + 400) = a14;
  memcpy((a9 + 408), a15, 0x50uLL);
  v32 = type metadata accessor for ToolDefinition(0);
  OUTLINED_FUNCTION_192_5();
  sub_1C8D63FCC();
  *(a9 + v32[17]) = a17;
  *(a9 + v32[18]) = a18;
  v33 = (a9 + v32[19]);
  v34 = a19[1];
  *v33 = *a19;
  v33[1] = v34;
  *(a9 + v32[20]) = a20;
  *(a9 + v32[21]) = v48;
  *(a9 + v32[23]) = a22;
  *(a9 + v32[22]) = v49;
  v35 = (a9 + v32[24]);
  *v35 = a24;
  v35[1] = a25;
  *(a9 + v32[25]) = v31;
  *(a9 + v32[26]) = a27;
  *(a9 + v32[27]) = a28;
  sub_1C8CC1340(__dst, v51);
  sub_1C8CC139C();
  v36 = OUTLINED_FUNCTION_278();
  sub_1C8D16D78(v36, v37, &qword_1C90839E0);
  OUTLINED_FUNCTION_226_4();
  return memcpy(v38, v39, v40);
}

__n128 ParameterDefinition.init(key:name:description:flags:valueType:relationships:parentToolMetadata:overriddenSampleInvocations:BOOLeanMetadata:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X6>, uint64_t *a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  *(a9 + 104) = *a11;
  result = *a13;
  v14 = *(a13 + 16);
  *(a9 + 72) = *a13;
  v15 = *a7;
  v16 = *a8;
  v17 = *(a11 + 16);
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = v15;
  *(a9 + 56) = v16;
  *(a9 + 64) = a10;
  *(a9 + 120) = v17;
  *(a9 + 128) = a12;
  *(a9 + 88) = v14;
  return result;
}

__n128 ParameterDefinition.init(key:name:description:flags:valueType:relationships:parentToolMetadata:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X6>, uint64_t *a8@<X7>, uint64_t a9@<X8>, uint64_t a10, __n128 *a11)
{
  v11 = *a7;
  v12 = *a8;
  v13 = a11[1].n128_u64[0];
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = v11;
  *(a9 + 56) = v12;
  *(a9 + 64) = a10;
  *(a9 + 72) = 0u;
  *(a9 + 88) = 0u;
  result = *a11;
  *(a9 + 104) = *a11;
  *(a9 + 120) = v13;
  *(a9 + 128) = 0;
  return result;
}

void static ToolIcon.== infix(_:_:)()
{
  OUTLINED_FUNCTION_164();
  v1 = sub_1C9061EBC();
  OUTLINED_FUNCTION_11();
  v55 = v2;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_25();
  v53 = (v4 - v5);
  MEMORY[0x1EEE9AC00](v6);
  v54 = &v52 - v7;
  type metadata accessor for ToolIcon(0);
  OUTLINED_FUNCTION_13_1();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_25();
  v11 = (v9 - v10);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v52 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = (&v52 - v16);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC317FA8, &qword_1C90921A0);
  OUTLINED_FUNCTION_9(v18);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_142();
  v21 = v0 + *(v20 + 56);
  sub_1C8E96178();
  OUTLINED_FUNCTION_177_5();
  sub_1C8E96178();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      OUTLINED_FUNCTION_7_31();
      sub_1C8E96178();
      v23 = *v14;
      v24 = *(v14 + 1);
      v25 = *(v14 + 8);
      OUTLINED_FUNCTION_203();
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v26 = *(v21 + 16);
        if (v23 == *v21 && v24 == *(v21 + 8))
        {

          if ((v25 & 0x80000000) == 0)
          {
LABEL_10:
            if ((v26 & 0x80000000) != 0 || (sub_1C8E5AC04(v25, v26) & 1) == 0)
            {
              goto LABEL_33;
            }

            v29 = BYTE1(v25);
            v30 = BYTE1(v26);
            goto LABEL_32;
          }
        }

        else
        {
          OUTLINED_FUNCTION_288();
          v28 = sub_1C9064C2C();

          if ((v28 & 1) == 0)
          {
            goto LABEL_33;
          }

          if ((v25 & 0x80000000) == 0)
          {
            goto LABEL_10;
          }
        }

        if ((v26 & 0x80000000) != 0)
        {
          v29 = v25;
          v30 = v26;
LABEL_32:
          sub_1C8E5AC04(v29, v30);
        }

LABEL_33:
        OUTLINED_FUNCTION_8_31();
        sub_1C8E961D0(v0, v49);
        goto LABEL_34;
      }
    }

    else
    {
      OUTLINED_FUNCTION_7_31();
      sub_1C8E96178();
      v38 = *v11;
      v37 = *(v11 + 1);
      v39 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3164B0, &qword_1C9085190) + 48);
      OUTLINED_FUNCTION_203();
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v40 = *(v21 + 8);
        v52 = *v21;
        v41 = *(v55 + 32);
        v42 = &v11[v39];
        v43 = v54;
        v41(v54, v42, v1);
        v44 = (v21 + v39);
        v45 = v53;
        v41(v53, v44, v1);
        if (v38 == v52 && v37 == v40)
        {
        }

        else
        {
          OUTLINED_FUNCTION_246();
          v47 = sub_1C9064C2C();

          if ((v47 & 1) == 0)
          {
            v48 = *(v55 + 8);
            v48(v45, v1);
            v48(v43, v1);
            goto LABEL_33;
          }
        }

        sub_1C9061E1C();
        v50 = *(v55 + 8);
        v50(v45, v1);
        v50(v43, v1);
        OUTLINED_FUNCTION_8_31();
        sub_1C8E961D0(v0, v51);
        goto LABEL_34;
      }

      (*(v55 + 8))(&v11[v39], v1);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7_31();
    OUTLINED_FUNCTION_145();
    sub_1C8E96178();
    v31 = *v17;
    v32 = v17[1];
    OUTLINED_FUNCTION_203();
    if (!swift_getEnumCaseMultiPayload())
    {
      if (v31 != *v21 || v32 != *(v21 + 8))
      {
        v34 = OUTLINED_FUNCTION_276();
        OUTLINED_FUNCTION_335_0(v34, v35, v36);
      }

      goto LABEL_33;
    }
  }

  sub_1C8D16D78(v0, &qword_1EC317FA8, &qword_1C90921A0);
LABEL_34:
  OUTLINED_FUNCTION_163();
}

uint64_t sub_1C8E80F50@<X0>(uint64_t *a1@<X8>)
{
  result = ToolTypeDefinition.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1C8E81058@<X0>(unint64_t *a1@<X8>)
{
  result = ToolAuthenticationPolicy.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t ToolFlag.description.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  if ((*v4 & 1) == 0)
  {
    v3 = MEMORY[0x1E69E7CC0];
    if ((v5 & 2) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_7;
  }

  OUTLINED_FUNCTION_173_5(a1, a2, a3, MEMORY[0x1E69E7CC0]);
  OUTLINED_FUNCTION_260_0();
  if (v7)
  {
    OUTLINED_FUNCTION_9_1(v6);
    sub_1C8D00CA4();
    v3 = v35;
  }

  OUTLINED_FUNCTION_223_2();
  *(v8 + 32) = 0x707041736E65706FLL;
  *(v8 + 40) = 0xEF6E75526E656857;
  if ((v5 & 2) != 0)
  {
LABEL_7:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_16_2();
      v3 = v36;
    }

    OUTLINED_FUNCTION_207_3();
    if (v7)
    {
      OUTLINED_FUNCTION_9_1(v9);
      sub_1C8D00CA4();
      v3 = v37;
    }

    OUTLINED_FUNCTION_223_2();
    strcpy((v10 + 32), "isDiscontinued");
    *(v10 + 47) = -18;
  }

LABEL_12:
  if ((v5 & 4) != 0)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_16_2();
      v3 = v38;
    }

    OUTLINED_FUNCTION_48_11();
    if (v7)
    {
      OUTLINED_FUNCTION_9_1(v11);
      sub_1C8D00CA4();
      v3 = v39;
    }

    OUTLINED_FUNCTION_44_16();
    *(v13 + 32) = 0xD000000000000010;
    *(v13 + 40) = v12;
    if ((v5 & 8) == 0)
    {
LABEL_14:
      if ((v5 & 0x10) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_29;
    }
  }

  else if ((v5 & 8) == 0)
  {
    goto LABEL_14;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    OUTLINED_FUNCTION_16_2();
    v3 = v40;
  }

  OUTLINED_FUNCTION_48_11();
  if (v7)
  {
    OUTLINED_FUNCTION_9_1(v14);
    sub_1C8D00CA4();
    v3 = v41;
  }

  OUTLINED_FUNCTION_44_16();
  *(v16 + 32) = 0xD000000000000017;
  *(v16 + 40) = v15;
  if ((v5 & 0x10) == 0)
  {
LABEL_15:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_34;
  }

LABEL_29:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    OUTLINED_FUNCTION_16_2();
    v3 = v42;
  }

  OUTLINED_FUNCTION_48_11();
  if (v7)
  {
    OUTLINED_FUNCTION_9_1(v17);
    sub_1C8D00CA4();
    v3 = v43;
  }

  OUTLINED_FUNCTION_44_16();
  *(v19 + 32) = 0xD000000000000010;
  *(v19 + 40) = v18;
  if ((v5 & 0x20) == 0)
  {
LABEL_16:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_39;
  }

LABEL_34:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    OUTLINED_FUNCTION_16_2();
    v3 = v44;
  }

  OUTLINED_FUNCTION_48_11();
  if (v7)
  {
    OUTLINED_FUNCTION_9_1(v20);
    sub_1C8D00CA4();
    v3 = v45;
  }

  OUTLINED_FUNCTION_44_16();
  *(v22 + 32) = 0xD000000000000010;
  *(v22 + 40) = v21;
  if ((v5 & 0x40) == 0)
  {
LABEL_17:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_44;
  }

LABEL_39:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    OUTLINED_FUNCTION_16_2();
    v3 = v46;
  }

  OUTLINED_FUNCTION_48_11();
  if (v7)
  {
    OUTLINED_FUNCTION_9_1(v23);
    sub_1C8D00CA4();
    v3 = v47;
  }

  OUTLINED_FUNCTION_44_16();
  *(v25 + 32) = 0xD000000000000014;
  *(v25 + 40) = v24;
  if ((v5 & 0x80) != 0)
  {
LABEL_44:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_16_2();
      v3 = v48;
    }

    v27 = *(v3 + 16);
    v26 = *(v3 + 24);
    if (v27 >= v26 >> 1)
    {
      OUTLINED_FUNCTION_9_1(v26);
      sub_1C8D00CA4();
      v3 = v49;
    }

    OUTLINED_FUNCTION_97_5();
    *(v3 + 16) = v27 + 1;
    v28 = v3 + 16 * v27;
    *(v28 + 32) = 0xD000000000000018;
    *(v28 + 40) = v29;
  }

LABEL_49:
  OUTLINED_FUNCTION_289_1();
  OUTLINED_FUNCTION_156();
  sub_1C8D28184(v30, v31, &qword_1C9066990, v32);
  OUTLINED_FUNCTION_70_3();
  sub_1C9063E9C();
  OUTLINED_FUNCTION_29_12();
  v33 = OUTLINED_FUNCTION_249();
  MEMORY[0x1CCA81A90](v33);

  OUTLINED_FUNCTION_340();
  return 0x28203A7367616C66;
}

uint64_t ToolVisibilityFlag.description.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v3;
  if ((*v3 & 1) == 0)
  {
    v6 = MEMORY[0x1E69E7CC0];
    if ((v5 & 2) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_7;
  }

  OUTLINED_FUNCTION_173_5(a1, a2, a3, MEMORY[0x1E69E7CC0]);
  v6 = v7;
  v4 = *(v7 + 16);
  v8 = *(v7 + 24);
  v3 = (v4 + 1);
  if (v4 >= v8 >> 1)
  {
    OUTLINED_FUNCTION_9_1(v8);
    sub_1C8D00CA4();
    v6 = v22;
  }

  *(v6 + 16) = v3;
  v9 = v6 + 16 * v4;
  *(v9 + 32) = 0x756374726F68732ELL;
  *(v9 + 40) = 0xEA00000000007374;
  if ((v5 & 2) != 0)
  {
LABEL_7:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_16_2();
      v6 = v23;
    }

    OUTLINED_FUNCTION_48_11();
    if (v11)
    {
      OUTLINED_FUNCTION_9_1(v10);
      sub_1C8D00CA4();
      v6 = v24;
    }

    *(v6 + 16) = v3;
    v12 = v6 + 16 * v4;
    *(v12 + 32) = 0x617473697373612ELL;
    *(v12 + 40) = 0xEA0000000000746ELL;
  }

LABEL_12:
  if ((v5 & 4) == 0)
  {
    if ((v5 & 8) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_20;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    OUTLINED_FUNCTION_16_2();
    v6 = v25;
  }

  OUTLINED_FUNCTION_48_11();
  if (v11)
  {
    OUTLINED_FUNCTION_9_1(v13);
    sub_1C8D00CA4();
    v6 = v26;
  }

  *(v6 + 16) = v3;
  v14 = v6 + 16 * v4;
  *(v14 + 32) = 0x65766F727070612ELL;
  *(v14 + 40) = 0xE900000000000064;
  if ((v5 & 8) != 0)
  {
LABEL_20:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_16_2();
    }

    OUTLINED_FUNCTION_207_3();
    if (v11)
    {
      OUTLINED_FUNCTION_9_1(v15);
      sub_1C8D00CA4();
    }

    OUTLINED_FUNCTION_223_2();
    *(v16 + 32) = 0x67696C746F70732ELL;
    *(v16 + 40) = 0xEA00000000007468;
  }

LABEL_25:
  OUTLINED_FUNCTION_289_1();
  OUTLINED_FUNCTION_156();
  sub_1C8D28184(v17, v18, &qword_1C9066990, v19);
  OUTLINED_FUNCTION_70_3();
  sub_1C9063E9C();
  OUTLINED_FUNCTION_29_12();
  v20 = OUTLINED_FUNCTION_249();
  MEMORY[0x1CCA81A90](v20);

  MEMORY[0x1CCA81A90](93, 0xE100000000000000);
  return 91;
}

void __swiftcall ToolDescription.init(summary:attribution:result:note:requires:)(ToolKit::ToolDescription *__return_ptr retstr, Swift::String_optional summary, Swift::String_optional attribution, Swift::String_optional result, Swift::String_optional note, Swift::String_optional requires)
{
  retstr->summary = summary;
  retstr->attribution = attribution;
  retstr->result = result;
  retstr->note = note;
  retstr->requires = requires;
}

uint64_t static ToolDescription.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v3 = a1[1];
  v4 = a1[2];
  v6 = a1[3];
  v5 = a1[4];
  v7 = a1[5];
  v8 = a1[6];
  v10 = a1[7];
  v9 = a1[8];
  v11 = a1[9];
  v12 = a2[1];
  v13 = a2[2];
  v15 = a2[3];
  v14 = a2[4];
  v17 = a2[5];
  v16 = a2[6];
  v18 = a2[7];
  v19 = a2[8];
  v20 = a2[9];
  if (v3)
  {
    if (!v12)
    {
      return 0;
    }

    if (*a1 != *a2 || v3 != v12)
    {
      v51 = a1[7];
      v53 = a2[7];
      v49 = a2[8];
      v50 = a1[6];
      v47 = a1[9];
      v48 = a2[9];
      v22 = a1[8];
      v23 = a2[6];
      v24 = a1[5];
      v25 = a1[4];
      v26 = a2[5];
      v27 = a2[4];
      v28 = a1[2];
      v29 = sub_1C9064C2C();
      v4 = v28;
      v14 = v27;
      v17 = v26;
      v5 = v25;
      v7 = v24;
      v16 = v23;
      v9 = v22;
      v11 = v47;
      v20 = v48;
      v19 = v49;
      v8 = v50;
      v10 = v51;
      v18 = v53;
      if ((v29 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v12)
  {
    return 0;
  }

  if (v6)
  {
    if (!v15)
    {
      return 0;
    }

    if (v4 != v13 || v6 != v15)
    {
      v52 = v9;
      v54 = v17;
      v31 = v16;
      v32 = v7;
      v33 = v5;
      v34 = v14;
      v35 = sub_1C9064C2C();
      v14 = v34;
      v9 = v52;
      v17 = v54;
      v5 = v33;
      v7 = v32;
      v16 = v31;
      if ((v35 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v15)
  {
    return 0;
  }

  if (v7)
  {
    if (!v17)
    {
      return 0;
    }

    if (v5 != v14 || v7 != v17)
    {
      v37 = v18;
      v38 = v9;
      v39 = v16;
      v40 = sub_1C9064C2C();
      v16 = v39;
      v9 = v38;
      v18 = v37;
      if ((v40 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v17)
  {
    return 0;
  }

  if (v10)
  {
    if (!v18)
    {
      return 0;
    }

    if (v8 != v16 || v10 != v18)
    {
      OUTLINED_FUNCTION_110_4();
      v43 = v42;
      v44 = sub_1C9064C2C();
      v9 = v43;
      if ((v44 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v18)
  {
    return 0;
  }

  if (v11)
  {
    if (v20)
    {
      v45 = v9 == v19 && v11 == v20;
      if (v45 || (sub_1C9064C2C() & 1) != 0)
      {
        return 1;
      }
    }
  }

  else if (!v20)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_1C8E81BB4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7972616D6D7573 && a2 == 0xE700000000000000;
  if (v4 || (sub_1C9064C2C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x7475626972747461 && a2 == 0xEB000000006E6F69;
    if (v6 || (sub_1C9064C2C() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x746C75736572 && a2 == 0xE600000000000000;
      if (v7 || (sub_1C9064C2C() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 1702129518 && a2 == 0xE400000000000000;
        if (v8 || (sub_1C9064C2C() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0x7365726975716572 && a2 == 0xE800000000000000)
        {

          return 4;
        }

        else
        {
          v10 = sub_1C9064C2C();

          if (v10)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

uint64_t sub_1C8E81D54(char a1)
{
  result = 0x7972616D6D7573;
  switch(a1)
  {
    case 1:
      result = 0x7475626972747461;
      break;
    case 2:
      result = 0x746C75736572;
      break;
    case 3:
      result = 1702129518;
      break;
    case 4:
      result = 0x7365726975716572;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C8E81DF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C8E81BB4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C8E81E1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8E95560(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C8E81E58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8E95560(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

void ToolDescription.encode(to:)()
{
  OUTLINED_FUNCTION_196();
  OUTLINED_FUNCTION_251_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC317FB0, &qword_1C90921A8);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_72();
  v2 = OUTLINED_FUNCTION_217(v0, v0[3]);
  sub_1C8E95560(v2, v3, v4);
  OUTLINED_FUNCTION_200();
  sub_1C9064E1C();
  sub_1C9064ADC();
  if (!v7)
  {
    OUTLINED_FUNCTION_223_0();
    OUTLINED_FUNCTION_49_10();
    sub_1C9064ADC();
    OUTLINED_FUNCTION_49_10();
    sub_1C9064ADC();
    OUTLINED_FUNCTION_325();
    OUTLINED_FUNCTION_49_10();
    sub_1C9064ADC();
    OUTLINED_FUNCTION_49_10();
    sub_1C9064ADC();
  }

  v5 = OUTLINED_FUNCTION_287();
  v6(v5);
  OUTLINED_FUNCTION_328();
  OUTLINED_FUNCTION_198();
}

uint64_t ToolDescription.hash(into:)(uint64_t a1)
{
  v2 = v1[3];
  v3 = v1[5];
  v4 = v1[7];
  v5 = v1[9];
  if (v1[1])
  {
    sub_1C9064D9C();
    OUTLINED_FUNCTION_95_0();
    sub_1C9063FBC();
    if (v2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_1C9064D9C();
    if (v2)
    {
LABEL_3:
      sub_1C9064D9C();
      OUTLINED_FUNCTION_181_1();
      sub_1C9063FBC();
      if (v3)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  sub_1C9064D9C();
  if (v3)
  {
LABEL_4:
    sub_1C9064D9C();
    OUTLINED_FUNCTION_120_4();
    sub_1C9063FBC();
    if (v4)
    {
      goto LABEL_5;
    }

LABEL_12:
    sub_1C9064D9C();
    if (v5)
    {
      goto LABEL_6;
    }

    return sub_1C9064D9C();
  }

LABEL_11:
  sub_1C9064D9C();
  if (!v4)
  {
    goto LABEL_12;
  }

LABEL_5:
  sub_1C9064D9C();
  OUTLINED_FUNCTION_181();
  sub_1C9063FBC();
  if (!v5)
  {
    return sub_1C9064D9C();
  }

LABEL_6:
  sub_1C9064D9C();

  return sub_1C9063FBC();
}

uint64_t ToolDescription.hashValue.getter()
{
  OUTLINED_FUNCTION_298();
  ToolDescription.hash(into:)(v1);
  return sub_1C9064DBC();
}

void ToolDescription.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_196();
  v25 = v24;
  v27 = v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC317FB8, &qword_1C90921B0);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_110();
  v30 = OUTLINED_FUNCTION_117();
  v32 = OUTLINED_FUNCTION_217(v30, v31);
  sub_1C8E95560(v32, v33, v34);
  sub_1C9064DEC();
  if (v23)
  {
    __swift_destroy_boxed_opaque_existential_1(v25);
  }

  else
  {
    OUTLINED_FUNCTION_104_4();
    v35 = sub_1C90649AC();
    v52 = v36;
    OUTLINED_FUNCTION_104_4();
    v37 = sub_1C90649AC();
    v51 = v38;
    v48 = v37;
    v47 = sub_1C90649AC();
    v50 = v39;
    LOBYTE(v54[0]) = 3;
    OUTLINED_FUNCTION_104_4();
    v46 = sub_1C90649AC();
    v49 = v40;
    OUTLINED_FUNCTION_231_2();
    OUTLINED_FUNCTION_104_4();
    v41 = sub_1C90649AC();
    v42 = OUTLINED_FUNCTION_100_6();
    v44 = v43;
    v45(v42, v28);
    v53[0] = v35;
    v53[1] = v52;
    v53[2] = v48;
    v53[3] = v51;
    v53[4] = v47;
    v53[5] = v50;
    v53[6] = v46;
    v53[7] = v49;
    v53[8] = v41;
    v53[9] = v44;
    memcpy(v27, v53, 0x50uLL);
    sub_1C8DFBD54(v53, v54);
    __swift_destroy_boxed_opaque_existential_1(v25);
    v54[0] = v35;
    v54[1] = v52;
    v54[2] = v48;
    v54[3] = v51;
    v54[4] = v47;
    v54[5] = v50;
    v54[6] = v46;
    v54[7] = v49;
    v54[8] = v41;
    v54[9] = v44;
    sub_1C8E87298(v54);
  }

  OUTLINED_FUNCTION_164_0();
  OUTLINED_FUNCTION_198();
}

uint64_t sub_1C8E8251C(uint64_t a1)
{
  sub_1C9064D7C();
  ToolDescription.hash(into:)(v2);
  return sub_1C9064DBC();
}

uint64_t ToolDefinition.sourceApplication.getter@<X0>(void *a1@<X8>)
{
  memcpy(__dst, (v1 + 80), sizeof(__dst));
  memcpy(a1, (v1 + 80), 0x70uLL);
  return sub_1C8D63FCC();
}

uint64_t ToolDefinition.sourceContainer.getter@<X0>(void *a1@<X8>)
{
  memcpy(__dst, (v1 + 192), 0x61uLL);
  memcpy(a1, (v1 + 192), 0x61uLL);
  return sub_1C8CC1340(__dst, &v4);
}

uint64_t ToolDefinition.attributionContainer.getter@<X0>(void *a1@<X8>)
{
  memcpy(__dst, (v1 + 296), sizeof(__dst));
  memcpy(a1, (v1 + 296), 0x61uLL);
  return sub_1C8D63FCC();
}

uint64_t ToolDefinition.description.getter@<X0>(void *a1@<X8>)
{
  memcpy(__dst, (v1 + 408), sizeof(__dst));
  memcpy(a1, (v1 + 408), 0x50uLL);
  return sub_1C8DFBD54(__dst, &v4);
}

uint64_t ToolDefinition.customIcon.getter()
{
  v0 = OUTLINED_FUNCTION_386();
  type metadata accessor for ToolDefinition(v0);
  return sub_1C8D63FCC();
}

uint64_t ToolDefinition.categories.getter()
{
  type metadata accessor for ToolDefinition(0);
}

uint64_t ToolDefinition.searchKeywords.getter()
{
  type metadata accessor for ToolDefinition(0);
}

void ToolDefinition.deprecationDefinition.getter()
{
  v2 = OUTLINED_FUNCTION_386();
  v4 = (v1 + *(type metadata accessor for ToolDefinition(v2) + 76));
  v5 = *v4;
  v6 = v4[1];
  v7 = v4[2];
  v8 = v4[3];
  *v0 = *v4;
  v0[1] = v6;
  v0[2] = v7;
  v0[3] = v8;

  sub_1C8DFBDB0(v5, v6, v7, v8, v3);
}

uint64_t ToolDefinition.requirements.getter()
{
  type metadata accessor for ToolDefinition(0);
}

uint64_t ToolDefinition.flags.getter()
{
  v2 = OUTLINED_FUNCTION_386();
  result = type metadata accessor for ToolDefinition(v2);
  *v0 = *(v1 + *(result + 84));
  return result;
}

uint64_t ToolDefinition.authenticationPolicy.getter()
{
  v2 = OUTLINED_FUNCTION_386();
  result = type metadata accessor for ToolDefinition(v2);
  *v0 = *(v1 + *(result + 88));
  return result;
}

void ToolDefinition.sampleInvocations.getter()
{
  if (qword_1EDA631E8 != -1)
  {
    OUTLINED_FUNCTION_111_2();
    swift_once();
  }

  ToolDefinition.fetchSampleInvocations(assistantSchemaProvider:cacheResults:)();
}

void ToolDefinition.fetchSampleInvocations(assistantSchemaProvider:cacheResults:)()
{
  OUTLINED_FUNCTION_196();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  sub_1C9063D3C();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_15();
  v7 = type metadata accessor for ToolDefinition(0);
  if (*(v0 + *(v7 + 108)))
  {
  }

  else
  {
    v55 = v7;
    switch(*(v0 + 32))
    {
      case 1:
      case 2:
      case 4:
        goto LABEL_7;
      case 3:
        OUTLINED_FUNCTION_42();
LABEL_7:
        v8 = sub_1C9064C2C();

        if (v8)
        {
          goto LABEL_8;
        }

        sub_1C906371C();
        v22 = sub_1C9063D1C();
        v23 = sub_1C906443C();
        if (os_log_type_enabled(v22, v23))
        {
          v24 = swift_slowAlloc();
          *v24 = 0;
          _os_log_impl(&dword_1C8C9B000, v22, v23, "Skipping fetching sample invocations since this is not an app intent", v24, 2u);
          MEMORY[0x1CCA833A0](v24, -1, -1);
        }

        v25 = OUTLINED_FUNCTION_181_1();
        v26(v25);
        goto LABEL_3;
      default:

LABEL_8:
        v54 = v5;
        v9 = [objc_opt_self() sharedProvider];
        v10 = sub_1C9063EBC();
        v11 = [v9 examplePhrasesForBundleIdentifier:v10 useCache:v3 & 1];

        sub_1C8D72FC8();
        v12 = sub_1C906419C();

        v13 = 0;
        v14 = *(v1 + *(v55 + 104));
        v56 = MEMORY[0x1E69E7CC0];
        v15 = *(v14 + 16);
        v16 = (v14 + 40);
        break;
    }

    while (v15 != v13)
    {
      if (v13 >= *(v14 + 16))
      {
        __break(1u);
LABEL_42:
        __break(1u);
LABEL_43:
        __break(1u);
LABEL_44:
        __break(1u);
LABEL_45:
        __break(1u);
        return;
      }

      ++v13;
      v18 = *(v16 - 1);
      v17 = *v16;

      static SampleInvocationDefinition.definitions(from:typeName:parameterKey:)(v12, v18, v17, 0, 0);
      v20 = v19;

      sub_1C8CAEAFC(v20);
      v16 += 2;
    }

    v21 = v56;
    if (!*(v56 + 16))
    {
      v27 = *(v1 + *(v55 + 92));
      v28 = *(v27 + 16);
      if (v28)
      {
        v29 = v27 + 48;
        do
        {
          if (!*(v29 + 40))
          {
            v30 = *(v29 + 16);
            v31 = *(v29 + 32);
            v32 = *(v54 + 16);
            if (*(v32 + 16))
            {
              v53 = *(v29 + 24);

              v51 = sub_1C8CC056C();
              v52 = v33;
              OUTLINED_FUNCTION_366();
              sub_1C8D548A0(v34, v35, v36, v37, v30, v53, v31, 0);
              if (v52)
              {
                v38 = *(*(v32 + 56) + 112 * v51 + 96);
                v39 = *(v38 + 16);
                v40 = *(v21 + 16);
                v41 = v40 + v39;
                if (__OFADD__(v40, v39))
                {
                  goto LABEL_42;
                }

                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                v43 = v21;
                if (!isUniquelyReferenced_nonNull_native || v41 > *(v21 + 24) >> 1)
                {
                  if (v40 <= v41)
                  {
                    v44 = v40 + v39;
                  }

                  else
                  {
                    v44 = v40;
                  }

                  sub_1C8CAEA64(isUniquelyReferenced_nonNull_native, v44, 1, v21);
                  v43 = v45;
                }

                if (*(v38 + 16))
                {
                  if ((*(v43 + 24) >> 1) - *(v43 + 16) < v39)
                  {
                    goto LABEL_44;
                  }

                  v46 = v43;
                  swift_arrayInitWithCopy();

                  if (v39)
                  {
                    v47 = *(v46 + 16);
                    v48 = __OFADD__(v47, v39);
                    v49 = v47 + v39;
                    if (v48)
                    {
                      goto LABEL_45;
                    }

                    v21 = v46;
                    *(v46 + 16) = v49;
                  }

                  else
                  {
                    v21 = v46;
                  }
                }

                else
                {
                  v50 = v43;

                  v21 = v50;
                  if (v39)
                  {
                    goto LABEL_43;
                  }
                }
              }
            }
          }

          v29 += 64;
          --v28;
        }

        while (v28);
      }
    }
  }

LABEL_3:
  OUTLINED_FUNCTION_198();
}

uint64_t ToolDefinition.systemProtocols.getter()
{
  type metadata accessor for ToolDefinition(0);
}

uint64_t ToolDefinition.sourceActionProvider.getter()
{
  type metadata accessor for ToolDefinition(0);

  return OUTLINED_FUNCTION_94();
}

uint64_t ToolDefinition.visibilityFlags.getter()
{
  v2 = OUTLINED_FUNCTION_386();
  result = type metadata accessor for ToolDefinition(v2);
  *v0 = *(v1 + *(result + 100));
  return result;
}

uint64_t ToolDefinition.backingLinkActionIdentifiers.getter()
{
  type metadata accessor for ToolDefinition(0);
}

uint64_t ToolDefinition.overriddenSampleInvocations.getter()
{
  type metadata accessor for ToolDefinition(0);
}

uint64_t ToolDefinition.debugDescription.getter()
{
  sub_1C906478C();

  MEMORY[0x1CCA81A90](*v0, v0[1]);
  MEMORY[0x1CCA81A90](40, 0xE100000000000000);
  v1 = v0[5];
  v2 = *(v1 + 16);
  if (v2)
  {
    v17 = MEMORY[0x1E69E7CC0];
    sub_1C8CA6480();
    v3 = v1 + 88;
    do
    {
      v15 = *(v3 - 56);
      v16 = *(v3 - 48);

      MEMORY[0x1CCA81A90](8250, 0xE200000000000000);
      v4 = TypeInstance.debugDescription.getter();
      MEMORY[0x1CCA81A90](v4);

      v5 = *(v17 + 16);
      if (v5 >= *(v17 + 24) >> 1)
      {
        sub_1C8CA6480();
      }

      v3 += 136;
      *(v17 + 16) = v5 + 1;
      v6 = v17 + 16 * v5;
      *(v6 + 32) = v15;
      *(v6 + 40) = v16;
      --v2;
    }

    while (v2);
  }

  v7 = OUTLINED_FUNCTION_181();
  __swift_instantiateConcreteTypeFromMangledNameV2(v7, v8);
  OUTLINED_FUNCTION_156();
  sub_1C8D28184(v9, v10, &qword_1C9066990, v11);
  OUTLINED_FUNCTION_70_3();
  sub_1C9063E9C();

  v12 = OUTLINED_FUNCTION_288();
  MEMORY[0x1CCA81A90](v12);

  MEMORY[0x1CCA81A90](0x203E2D2029, 0xE500000000000000);
  v13 = TypeInstance.debugDescription.getter();
  MEMORY[0x1CCA81A90](v13);

  return 0x20636E7566;
}

uint64_t ParameterDefinition.debugDescription.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *v5;

  MEMORY[0x1CCA81A90](8250, 0xE200000000000000);
  v6 = TypeInstance.debugDescription.getter();
  MEMORY[0x1CCA81A90](v6);

  return v8;
}

void ToolDefinition.init(id:name:toolType:parameters:outputType:sourceApplication:)()
{
  OUTLINED_FUNCTION_164();
  v1 = v0;
  v31 = v2;
  v32 = v3;
  v30 = v4;
  v29 = v5;
  v7 = v6;
  v8 = &qword_1EC3144B8;
  v9 = OUTLINED_FUNCTION_182_1();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(v9, v10);
  v12 = OUTLINED_FUNCTION_9(v11);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_311();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_52_10();
  v15 = *v1;
  v14 = v1[1];
  OUTLINED_FUNCTION_247_1();
  OUTLINED_FUNCTION_76_5();
  sub_1C8D63FCC();
  v16 = MEMORY[0x1E69E7CC0];
  if (v14)
  {
    v34[0] = v15;
    v34[1] = v14;
    OUTLINED_FUNCTION_123_4(v34);
    v36[0] = v15;
    v36[1] = v14;
    OUTLINED_FUNCTION_123_4(v36);
    sub_1C8E9562C(v36, &v33);
    v8 = 0;
    sub_1C8E83E20(v34, v35);
    memcpy((v7 + 192), v35, 0x61uLL);
  }

  else
  {
    OUTLINED_FUNCTION_12_26();
    OUTLINED_FUNCTION_96_4(v17);
    *(v7 + 232) = xmmword_1C9092170;
    *(v7 + 248) = v1;
    OUTLINED_FUNCTION_211_2(xmmword_1C9092180);
  }

  *v7 = v29;
  *(v7 + 8) = v30;
  OUTLINED_FUNCTION_204_2(v31);
  *(v7 + 40) = v32;
  *(v7 + 48) = v16;
  *(v7 + 56) = v28;
  *(v7 + 64) = 0;
  *(v7 + 72) = 0;
  *(v7 + 80) = v15;
  OUTLINED_FUNCTION_170_6();
  OUTLINED_FUNCTION_29_17();
  *(v7 + 400) = v16;
  *&v18 = OUTLINED_FUNCTION_56_7();
  *(v7 + 408) = v18;
  *(v7 + 424) = v18;
  *(v7 + 440) = v18;
  *(v7 + 456) = v18;
  *(v7 + 472) = v18;
  OUTLINED_FUNCTION_167_3();
  *(v7 + v8[17]) = v16;
  *(v7 + v8[18]) = v16;
  v19 = (v7 + v8[19]);
  *v19 = 0u;
  v19[1] = 0u;
  *(v7 + v8[20]) = v16;
  *(v7 + v8[21]) = 0;
  *(v7 + v8[23]) = v16;
  *(v7 + v8[22]) = 0;
  OUTLINED_FUNCTION_19_22();
  OUTLINED_FUNCTION_267_1(v20);
  *(v7 + v21) = v16;
  OUTLINED_FUNCTION_120_4();
  sub_1C8D16D78(v22, v23, v24);
  OUTLINED_FUNCTION_120_4();
  sub_1C8D16D78(v25, v26, v27);
  OUTLINED_FUNCTION_200_4();
  OUTLINED_FUNCTION_163();
}

void ToolDefinition.init(id:name:toolType:parameters:outputType:outputResultName:sourceApplication:descriptionSummary:customIcon:categories:searchKeywords:deprecationDefinition:requirements:flags:systemProtocols:authenticationPolicy:sampleInvocations:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, int **a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, __n128 *a28, uint64_t a29, uint64_t a30, uint64_t a31, char *a32, uint64_t a33)
{
  OUTLINED_FUNCTION_164();
  v70 = v33;
  v71 = v34;
  v36 = v35;
  v38 = v37;
  v68 = v39;
  v69 = v40;
  v66 = v41;
  v67 = v42;
  v44 = v43;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3144B8, &qword_1C90839E0);
  OUTLINED_FUNCTION_9(v45);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v46);
  v64 = *v38;
  v65 = *v36;
  v47 = *a22;
  v48 = a22[1];
  v72 = a28[1];
  v73 = *a28;
  v74 = *a32;
  sub_1C8D63FCC();
  v49 = MEMORY[0x1E69E7CC0];
  if (v48)
  {
    v76[0] = v47;
    v76[1] = v48;
    memcpy(v77, a22 + 2, sizeof(v77));
    v79[0] = v47;
    v79[1] = v48;
    memcpy(v80, a22 + 2, sizeof(v80));
    sub_1C8E9562C(v79, &v75);
    sub_1C8E83E20(v76, v78);
    memcpy((v44 + 192), v78, 0x61uLL);
  }

  else
  {
    OUTLINED_FUNCTION_12_26();
    *(v44 + 192) = v50;
    *(v44 + 200) = v51;
    *(v44 + 208) = v49;
    *(v44 + 216) = 0xD000000000000013;
    *(v44 + 224) = v52;
    *(v44 + 232) = xmmword_1C9092170;
    *(v44 + 248) = 1;
    *(v44 + 256) = xmmword_1C9092180;
    *(v44 + 272) = 0;
    *(v44 + 280) = 0;
    *(v44 + 288) = 1;
  }

  *v44 = v66;
  *(v44 + 8) = v67;
  *(v44 + 16) = v68;
  *(v44 + 24) = v69;
  *(v44 + 32) = v64;
  *(v44 + 40) = v70;
  *(v44 + 48) = v49;
  *(v44 + 56) = v65;
  *(v44 + 64) = v71;
  *(v44 + 72) = a21;
  *(v44 + 80) = v47;
  *(v44 + 88) = v48;
  memcpy((v44 + 96), a22 + 2, 0x60uLL);
  OUTLINED_FUNCTION_29_17();
  *(v44 + 400) = v49;
  *(v44 + 408) = a23;
  *(v44 + 416) = a24;
  *&v53 = OUTLINED_FUNCTION_56_7();
  *(v44 + 424) = v53;
  *(v44 + 440) = v53;
  *(v44 + 456) = v53;
  *(v44 + 472) = v53;
  sub_1C8D63FCC();
  OUTLINED_FUNCTION_23_20(v47[17]);
  OUTLINED_FUNCTION_165_6(v54, v73, v72);
  *(v44 + v55) = a29;
  OUTLINED_FUNCTION_254_1(v47[21]);
  *(v44 + v47[23]) = a31;
  *(v44 + v47[22]) = v74;
  OUTLINED_FUNCTION_19_22();
  OUTLINED_FUNCTION_267_1(v56);
  *(v44 + v57) = a33;
  OUTLINED_FUNCTION_120_4();
  sub_1C8D16D78(v58, v59, v60);
  OUTLINED_FUNCTION_120_4();
  sub_1C8D16D78(v61, v62, v63);
  *(v44 + v47[26]) = v49;
  OUTLINED_FUNCTION_163();
}

void ToolDefinition.init(id:name:toolType:parameters:outputType:outputResultName:sourceApplication:descriptionSummary:categories:searchKeywords:deprecationDefinition:requirements:flags:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  OUTLINED_FUNCTION_164();
  v63 = v31;
  v64 = v32;
  v62 = v33;
  OUTLINED_FUNCTION_205_3(v34, v35, v36);
  OUTLINED_FUNCTION_264_2();
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3144B8, &qword_1C90839E0);
  v38 = OUTLINED_FUNCTION_9(v37);
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_311();
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_52_10();
  v40 = *v30;
  v41 = v30[1];
  OUTLINED_FUNCTION_247_1();
  v60 = v29[1];
  v61 = *v29;
  OUTLINED_FUNCTION_76_5();
  sub_1C8D63FCC();
  v42 = MEMORY[0x1E69E7CC0];
  if (v41)
  {
    v66[0] = v40;
    v66[1] = v41;
    OUTLINED_FUNCTION_123_4(v66);
    v68[0] = v40;
    v68[1] = v41;
    OUTLINED_FUNCTION_123_4(v68);
    sub_1C8E9562C(v68, &v65);
    v29 = 0;
    sub_1C8E83E20(v66, v67);
    memcpy((v28 + 192), v67, 0x61uLL);
  }

  else
  {
    OUTLINED_FUNCTION_12_26();
    OUTLINED_FUNCTION_96_4(v43);
    *(v28 + 232) = xmmword_1C9092170;
    *(v28 + 248) = v30;
    OUTLINED_FUNCTION_211_2(xmmword_1C9092180);
  }

  *v28 = v58;
  *(v28 + 8) = v59;
  OUTLINED_FUNCTION_204_2(v62);
  *(v28 + 40) = v63;
  *(v28 + 48) = v42;
  *(v28 + 56) = v56;
  *(v28 + 64) = v64;
  *(v28 + 72) = v57;
  *(v28 + 80) = v40;
  OUTLINED_FUNCTION_170_6();
  OUTLINED_FUNCTION_29_17();
  *(v28 + 400) = v42;
  *(v28 + 408) = a23;
  *(v28 + 416) = a24;
  *&v44 = OUTLINED_FUNCTION_56_7();
  *(v28 + 424) = v44;
  *(v28 + 440) = v44;
  *(v28 + 456) = v44;
  *(v28 + 472) = v44;
  OUTLINED_FUNCTION_167_3();
  OUTLINED_FUNCTION_23_20(v29[4].n128_i32[1]);
  OUTLINED_FUNCTION_165_6(v45, v61, v60);
  *(v28 + v46) = a28;
  OUTLINED_FUNCTION_202_3();
  *(v28 + v47) = v42;
  *(v28 + v29[5].n128_i32[2]) = 0;
  OUTLINED_FUNCTION_19_22();
  OUTLINED_FUNCTION_267_1(v48);
  *(v28 + v49) = v42;
  OUTLINED_FUNCTION_120_4();
  sub_1C8D16D78(v50, v51, v52);
  OUTLINED_FUNCTION_120_4();
  sub_1C8D16D78(v53, v54, v55);
  OUTLINED_FUNCTION_200_4();
  OUTLINED_FUNCTION_163();
}

void ToolDefinition.init(id:name:toolType:parameters:outputType:outputResultName:sourceApplication:descriptionSummary:categories:searchKeywords:deprecationDefinition:requirements:flags:authenticationPolicy:sampleInvocations:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  OUTLINED_FUNCTION_164();
  v64 = v31;
  v65 = v32;
  v63 = v33;
  OUTLINED_FUNCTION_205_3(v34, v35, v36);
  OUTLINED_FUNCTION_264_2();
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3144B8, &qword_1C90839E0);
  v38 = OUTLINED_FUNCTION_9(v37);
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_311();
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_52_10();
  v40 = *v30;
  v41 = v30[1];
  OUTLINED_FUNCTION_247_1();
  v61 = v29[1];
  v62 = *v29;
  OUTLINED_FUNCTION_76_5();
  sub_1C8D63FCC();
  v42 = MEMORY[0x1E69E7CC0];
  if (v41)
  {
    v67[0] = v40;
    v67[1] = v41;
    OUTLINED_FUNCTION_123_4(v67);
    v69[0] = v40;
    v69[1] = v41;
    OUTLINED_FUNCTION_123_4(v69);
    sub_1C8E9562C(v69, &v66);
    v29 = 0;
    sub_1C8E83E20(v67, v68);
    memcpy((v28 + 192), v68, 0x61uLL);
  }

  else
  {
    OUTLINED_FUNCTION_12_26();
    OUTLINED_FUNCTION_96_4(v43);
    *(v28 + 232) = xmmword_1C9092170;
    *(v28 + 248) = v30;
    OUTLINED_FUNCTION_211_2(xmmword_1C9092180);
  }

  *v28 = v59;
  *(v28 + 8) = v60;
  OUTLINED_FUNCTION_204_2(v63);
  *(v28 + 40) = v64;
  *(v28 + 48) = v42;
  *(v28 + 56) = v57;
  *(v28 + 64) = v65;
  *(v28 + 72) = v58;
  *(v28 + 80) = v40;
  OUTLINED_FUNCTION_170_6();
  OUTLINED_FUNCTION_29_17();
  *(v28 + 400) = v42;
  *(v28 + 408) = a23;
  *(v28 + 416) = a24;
  *&v44 = OUTLINED_FUNCTION_56_7();
  *(v28 + 424) = v44;
  *(v28 + 440) = v44;
  *(v28 + 456) = v44;
  *(v28 + 472) = v44;
  OUTLINED_FUNCTION_167_3();
  OUTLINED_FUNCTION_23_20(v29[4].n128_i32[1]);
  OUTLINED_FUNCTION_165_6(v45, v62, v61);
  *(v28 + v46) = a28;
  OUTLINED_FUNCTION_202_3();
  *(v28 + v47) = v42;
  *(v28 + v29[5].n128_i32[2]) = 0;
  OUTLINED_FUNCTION_19_22();
  OUTLINED_FUNCTION_267_1(v48);
  *(v28 + v49) = v50;
  OUTLINED_FUNCTION_120_4();
  sub_1C8D16D78(v51, v52, v53);
  OUTLINED_FUNCTION_120_4();
  sub_1C8D16D78(v54, v55, v56);
  OUTLINED_FUNCTION_200_4();
  OUTLINED_FUNCTION_163();
}

void ToolDefinition.init(id:name:toolType:parameters:hiddenParameters:outputType:outputResultName:sourceApplication:descriptionSummary:customIcon:categories:searchKeywords:deprecationDefinition:requirements:flags:systemProtocols:authenticationPolicy:sampleInvocations:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, __n128 *a29, uint64_t a30, uint64_t *a31, uint64_t a32, char *a33, uint64_t a34)
{
  OUTLINED_FUNCTION_164();
  v35 = v34;
  v62 = v36;
  v63 = v37;
  v39 = v38;
  v60 = v40;
  v61 = v41;
  v59 = v42;
  v44 = v43;

  v45 = *v39;
  v46 = *v35;
  v47 = *a23;
  v48 = a23[1];
  v64 = a29[1];
  v65 = *a29;
  v66 = *a31;
  v49 = *a33;
  v50 = MEMORY[0x1E69E7CC0];
  if (v48)
  {
    v68[0] = *a23;
    v68[1] = v48;
    memcpy(v69, a23 + 2, sizeof(v69));
    v71[0] = v47;
    v71[1] = v48;
    memcpy(v72, a23 + 2, sizeof(v72));
    sub_1C8E9562C(v71, v67);
    v35 = 0;
    sub_1C8E83E20(v68, __src);
    memcpy((v44 + 192), __src, 0x61uLL);
  }

  else
  {
    OUTLINED_FUNCTION_12_26();
    *(v44 + 192) = v51;
    *(v44 + 200) = v52;
    *(v44 + 208) = v50;
    *(v44 + 216) = 0xD000000000000013;
    *(v44 + 224) = v53;
    *(v44 + 232) = xmmword_1C9092170;
    *(v44 + 248) = 1;
    *(v44 + 256) = xmmword_1C9092180;
    *(v44 + 272) = 0;
    *(v44 + 280) = 0;
    *(v44 + 288) = 1;
  }

  *v44 = v59;
  *(v44 + 8) = v60;
  *(v44 + 16) = v61;
  *(v44 + 24) = v62;
  *(v44 + 32) = v45;
  *(v44 + 40) = v63;
  *(v44 + 48) = v50;
  *(v44 + 56) = v46;
  *(v44 + 64) = a21;
  *(v44 + 72) = a22;
  *(v44 + 80) = v47;
  *(v44 + 88) = v48;
  memcpy((v44 + 96), a23 + 2, 0x60uLL);
  *(v44 + 296) = 0u;
  *(v44 + 312) = 0u;
  *(v44 + 328) = 0u;
  *(v44 + 344) = 0u;
  *(v44 + 360) = 0u;
  *(v44 + 376) = 0u;
  *(v44 + 392) = 0;
  *(v44 + 400) = v50;
  *(v44 + 408) = a24;
  *(v44 + 416) = a25;
  *&v54 = OUTLINED_FUNCTION_56_7();
  *(v44 + 424) = v54;
  *(v44 + 440) = v54;
  *(v44 + 456) = v54;
  *(v44 + 472) = v54;
  OUTLINED_FUNCTION_192_5();
  sub_1C8D63FCC();
  *(v44 + *(v35 + 17)) = a27;
  *(v44 + *(v35 + 18)) = a28;
  OUTLINED_FUNCTION_165_6((v44 + *(v35 + 19)), v65, v64);
  *(v44 + v55) = a30;
  *(v44 + *(v35 + 21)) = v66;
  *(v44 + *(v35 + 23)) = a32;
  *(v44 + *(v35 + 22)) = v49;
  v56 = (v44 + *(v35 + 24));
  *v56 = 0;
  v56[1] = 0;
  *(v44 + *(v35 + 25)) = 0;
  *(v44 + *(v35 + 27)) = a34;
  v57 = OUTLINED_FUNCTION_181();
  sub_1C8D16D78(v57, v58, &qword_1C90839E0);
  *(v44 + *(v35 + 26)) = v50;
  OUTLINED_FUNCTION_163();
}

uint64_t sub_1C8E83E20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v18 = *(a1 + 16);
  v5 = *(a1 + 24);
  v4 = *(a1 + 32);
  v6 = *(a1 + 40);
  v16 = *(a1 + 48);
  v7 = *(a1 + 56);
  v17 = *(a1 + 64);
  v8 = *(a1 + 72);
  v19 = *(a1 + 96);
  v15 = *(a1 + 104);
  v9 = objc_allocWithZone(MEMORY[0x1E69635D0]);

  v10 = OUTLINED_FUNCTION_288();
  v12 = sub_1C9042D34(v10, v11);
  if (v2)
  {

    v13 = 1;
  }

  else
  {

    v13 = 3;
  }

  *a2 = v18;
  *(a2 + 8) = v5;
  *(a2 + 16) = v15;
  *(a2 + 24) = v4;
  *(a2 + 32) = v6;
  *(a2 + 40) = v16;
  *(a2 + 48) = v7;
  *(a2 + 56) = v13;
  *(a2 + 64) = v17;
  *(a2 + 72) = v8;
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  *(a2 + 96) = v19;
  return result;
}

void ToolDefinition.init(id:name:toolType:parameters:hiddenParameters:outputType:outputResultName:sourceContainer:attributionContainer:descriptionSummary:customIcon:categories:searchKeywords:deprecationDefinition:requirements:flags:systemProtocols:authenticationPolicy:sampleInvocations:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, const void *a23, const void *a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, __n128 *a30, uint64_t a31, uint64_t *a32, uint64_t a33, char *a34)
{
  OUTLINED_FUNCTION_164();
  v65 = v35;
  v37 = v36;
  v63 = v38;
  v64 = v39;
  v61 = v40;
  v62 = v41;
  v43 = v42;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3144B8, &qword_1C90839E0);
  OUTLINED_FUNCTION_9(v44);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_73();

  v46 = *v37;
  memcpy(v67, a23, 0x61uLL);
  v47 = *a32;
  v48 = *a34;
  sub_1C8D63FCC();
  *v43 = v61;
  *(v43 + 8) = v62;
  *(v43 + 16) = v63;
  *(v43 + 24) = v64;
  *(v43 + 32) = v46;
  v49 = OUTLINED_FUNCTION_255_1(v65);
  memcpy(v49, v67, 0x61uLL);
  memcpy((v43 + 296), a24, 0x61uLL);
  v50 = MEMORY[0x1E69E7CC0];
  *(v43 + 400) = MEMORY[0x1E69E7CC0];
  *(v43 + 408) = a25;
  *(v43 + 416) = a26;
  *&v51 = OUTLINED_FUNCTION_56_7();
  *(v43 + 424) = v51;
  *(v43 + 440) = v51;
  *(v43 + 456) = v51;
  *(v43 + 472) = v51;
  OUTLINED_FUNCTION_212_3();
  sub_1C8D63FCC();
  OUTLINED_FUNCTION_23_20(*(a34 + 17));
  OUTLINED_FUNCTION_165_6(v52, *a30, a30[1]);
  *(v43 + v53) = v54;
  *(v43 + *(a34 + 21)) = v47;
  *(v43 + *(a34 + 23)) = a33;
  *(v43 + *(a34 + 22)) = v48;
  OUTLINED_FUNCTION_19_22();
  *(v43 + v55) = 0;
  *(v43 + *(a34 + 26)) = v50;
  OUTLINED_FUNCTION_254_1(*(a34 + 27));
  memcpy(v66, v67, sizeof(v66));
  sub_1C8CC1340(v67, &v68);
  sub_1C8CC139C();
  v56 = OUTLINED_FUNCTION_325();
  sub_1C8D16D78(v56, v57, &qword_1C90839E0);
  sub_1C8D16D78(v34, &qword_1EC3144B8, &qword_1C90839E0);
  OUTLINED_FUNCTION_226_4();
  memcpy(v58, v59, v60);
  OUTLINED_FUNCTION_163();
}

void ToolDefinition.init(id:name:toolType:parameters:hiddenParameters:outputType:outputResultName:sourceContainer:attributionContainer:descriptionSummary:customIcon:categories:searchKeywords:deprecationDefinition:requirements:flags:systemProtocols:authenticationPolicy:visibilityFlags:backingLinkActionIdentifiers:overriddenSampleInvocations:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, const void *a23, const void *a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, __n128 *a30, uint64_t a31, uint64_t *a32, uint64_t a33, char *a34, uint64_t *a35, uint64_t a36)
{
  OUTLINED_FUNCTION_164();
  v65 = v36;
  v38 = v37;
  v63 = v39;
  v64 = v40;
  v61 = v41;
  v62 = v42;
  v44 = v43;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3144B8, &qword_1C90839E0);
  OUTLINED_FUNCTION_9(v45);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_73();

  v47 = *v38;
  memcpy(v67, a23, 0x61uLL);
  v48 = *a32;
  v49 = *a34;
  v66 = *a35;
  OUTLINED_FUNCTION_219();
  sub_1C8D63FCC();
  *v44 = v61;
  *(v44 + 8) = v62;
  *(v44 + 16) = v63;
  *(v44 + 24) = v64;
  *(v44 + 32) = v47;
  v50 = OUTLINED_FUNCTION_255_1(v65);
  memcpy(v50, v67, 0x61uLL);
  memcpy((v44 + 296), a24, 0x61uLL);
  *(v44 + 400) = MEMORY[0x1E69E7CC0];
  *(v44 + 408) = a25;
  *(v44 + 416) = a26;
  *&v51 = OUTLINED_FUNCTION_56_7();
  *(v44 + 424) = v51;
  *(v44 + 440) = v51;
  *(v44 + 456) = v51;
  *(v44 + 472) = v51;
  OUTLINED_FUNCTION_212_3();
  sub_1C8D63FCC();
  OUTLINED_FUNCTION_23_20(*(a35 + 17));
  OUTLINED_FUNCTION_165_6(v52, *a30, a30[1]);
  *(v44 + v53) = v54;
  *(v44 + *(a35 + 21)) = v48;
  OUTLINED_FUNCTION_254_1(*(a35 + 23));
  *(v44 + *(a35 + 22)) = v49;
  OUTLINED_FUNCTION_19_22();
  *(v44 + v55) = v66;
  *(v44 + *(a35 + 26)) = a36;
  OUTLINED_FUNCTION_235_2();
  sub_1C8CC1340(v67, &v68);
  sub_1C8CC139C();
  sub_1C8D16D78(a27, &qword_1EC3144B8, &qword_1C90839E0);
  v56 = OUTLINED_FUNCTION_127();
  sub_1C8D16D78(v56, v57, &qword_1C90839E0);
  OUTLINED_FUNCTION_226_4();
  memcpy(v58, v59, v60);
  OUTLINED_FUNCTION_163();
}

void ToolDefinition.fetchSampleInvocations()()
{
  if (qword_1EDA631E8 != -1)
  {
    OUTLINED_FUNCTION_111_2();
    swift_once();
  }

  ToolDefinition.fetchSampleInvocations(assistantSchemaProvider:cacheResults:)();
}

uint64_t ToolDefinition.implements(_:)(__int128 *a1)
{
  v24 = *a1;
  v25 = a1[1];
  v23 = *(a1 + 32);
  result = type metadata accessor for ToolDefinition(0);
  v3 = 0;
  v4 = *(v1 + *(result + 92));
  v26 = v4;
  v27 = *(v4 + 16);
  for (i = (v4 + 32); ; i += 4)
  {
    if (v27 == v3)
    {
      return v27 != v3;
    }

    if (v3 >= *(v26 + 16))
    {
      break;
    }

    v6 = *i;
    v7 = i[1];
    v8 = i[2];
    *(v45 + 9) = *(i + 41);
    v44[1] = v7;
    v45[0] = v8;
    v44[0] = v6;
    v9 = i[1];
    v41 = *i;
    v42 = v9;
    v43[0] = i[2];
    *(v43 + 9) = *(i + 41);
    SystemToolProtocol.identifier.getter(v37);
    v10 = v38;
    v11 = v39;
    v12 = v40;
    v32 = v37[0];
    v33 = v37[1];
    v34 = v38;
    v35 = v39;
    v36 = v40;
    v30 = v25;
    v29 = v24;
    v31 = v23;
    sub_1C8D0717C(v44, v28);
    SystemToolProtocol.Identifier.rawValue.getter();
    v14 = v13;
    v16 = v15;
    v17 = OUTLINED_FUNCTION_288();
    sub_1C8D3ED20(v17, v18, v10, v11, v12);
    SystemToolProtocol.Identifier.rawValue.getter();
    if (v14 == v20 && v16 == v19)
    {
      sub_1C8D071D8(v44);

      return v27 != v3;
    }

    v22 = sub_1C9064C2C();
    sub_1C8D071D8(v44);

    if (v22)
    {
      return v27 != v3;
    }

    ++v3;
  }

  __break(1u);
  return result;
}

uint64_t static ContainerDefinition.== infix(_:_:)(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_81_4(a1);
  v4 = *(v3 + 24);
  v5 = *(v3 + 32);
  v6 = *(v3 + 40);
  v7 = *(v3 + 48);
  v23 = *(v3 + 64);
  v31 = *(v3 + 72);
  v25 = *(v3 + 80);
  v29 = *(v3 + 96);
  v8 = *(v2 + 24);
  v9 = *(v2 + 32);
  v10 = *(v2 + 40);
  v11 = *(v2 + 48);
  v32 = *(v2 + 56);
  v33 = *(v3 + 56);
  v22 = *(v2 + 64);
  v30 = *(v2 + 72);
  v24 = *(v2 + 80);
  v27 = *(v2 + 88);
  v28 = *(v3 + 88);
  v12 = v1 == *v2 && *(v3 + 8) == *(v2 + 8);
  v26 = *(v2 + 96);
  if (!v12 && (sub_1C9064C2C() & 1) == 0)
  {
    return 0;
  }

  v13 = OUTLINED_FUNCTION_288();
  sub_1C8CEB10C(v13, v14);
  if ((v15 & 1) == 0)
  {
    return 0;
  }

  if (v4 != v8 || v5 != v9)
  {
    OUTLINED_FUNCTION_94();
    if ((sub_1C9064C2C() & 1) == 0)
    {
      return 0;
    }
  }

  if (v7)
  {
    if (!v11)
    {
      return 0;
    }

    if (v6 == v10 && v7 == v11)
    {
      if (v33 != v32)
      {
        return 0;
      }

      goto LABEL_24;
    }

    OUTLINED_FUNCTION_124();
    OUTLINED_FUNCTION_222_3();
    sub_1C9064C2C();
    result = OUTLINED_FUNCTION_274();
    if ((v19 & 1) == 0)
    {
      return result;
    }
  }

  else
  {
    result = 0;
    if (v11)
    {
      return result;
    }
  }

  if (v33 == v32)
  {
LABEL_24:
    if (v31)
    {
      if (v30)
      {
        v20 = v23 == v22 && v31 == v30;
        if (v20 || (sub_1C9064C2C() & 1) != 0)
        {
          goto LABEL_31;
        }
      }
    }

    else if (!v30)
    {
LABEL_31:
      v35[0] = v25;
      v35[1] = v28;
      v34[0] = v24;
      v34[1] = v27;

      v21 = static AppDefinition.Device.== infix(_:_:)(v35, v34);

      return v21 & (v29 == v26);
    }

    return 0;
  }

  return result;
}

uint64_t sub_1C8E847D4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1C9064C2C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 1701667182 && a2 == 0xE400000000000000;
    if (v6 || (sub_1C9064C2C() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x657079546C6F6F74 && a2 == 0xE800000000000000;
      if (v7 || (sub_1C9064C2C() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6574656D61726170 && a2 == 0xEA00000000007372;
        if (v8 || (sub_1C9064C2C() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000010 && 0x80000001C90CBFC0 == a2;
          if (v9 || (sub_1C9064C2C() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x795474757074756FLL && a2 == 0xEA00000000006570;
            if (v10 || (sub_1C9064C2C() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0xD000000000000010 && 0x80000001C90CB5C0 == a2;
              if (v11 || (sub_1C9064C2C() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0xD000000000000011 && 0x80000001C90CBFE0 == a2;
                if (v12 || (sub_1C9064C2C() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x6F43656372756F73 && a2 == 0xEF72656E6961746ELL;
                  if (v13 || (sub_1C9064C2C() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0xD000000000000014 && 0x80000001C90CA2A0 == a2;
                    if (v14 || (sub_1C9064C2C() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0xD00000000000001FLL && 0x80000001C90CA2C0 == a2;
                      if (v15 || (sub_1C9064C2C() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0x7470697263736564 && a2 == 0xEB000000006E6F69;
                        if (v16 || (sub_1C9064C2C() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v17 = a1 == 0x63496D6F74737563 && a2 == 0xEA00000000006E6FLL;
                          if (v17 || (sub_1C9064C2C() & 1) != 0)
                          {

                            return 12;
                          }

                          else
                          {
                            v18 = a1 == 0x69726F6765746163 && a2 == 0xEA00000000007365;
                            if (v18 || (sub_1C9064C2C() & 1) != 0)
                            {

                              return 13;
                            }

                            else
                            {
                              v19 = a1 == 0x654B686372616573 && a2 == 0xEE007364726F7779;
                              if (v19 || (sub_1C9064C2C() & 1) != 0)
                              {

                                return 14;
                              }

                              else
                              {
                                v20 = a1 == 0xD000000000000015 && 0x80000001C90CC000 == a2;
                                if (v20 || (sub_1C9064C2C() & 1) != 0)
                                {

                                  return 15;
                                }

                                else
                                {
                                  v21 = a1 == 0x6D65726975716572 && a2 == 0xEC00000073746E65;
                                  if (v21 || (sub_1C9064C2C() & 1) != 0)
                                  {

                                    return 16;
                                  }

                                  else
                                  {
                                    v22 = a1 == 0x7367616C66 && a2 == 0xE500000000000000;
                                    if (v22 || (sub_1C9064C2C() & 1) != 0)
                                    {

                                      return 17;
                                    }

                                    else
                                    {
                                      v23 = a1 == 0xD000000000000014 && 0x80000001C90C9860 == a2;
                                      if (v23 || (sub_1C9064C2C() & 1) != 0)
                                      {

                                        return 18;
                                      }

                                      else
                                      {
                                        v24 = a1 == 0x72506D6574737973 && a2 == 0xEF736C6F636F746FLL;
                                        if (v24 || (sub_1C9064C2C() & 1) != 0)
                                        {

                                          return 19;
                                        }

                                        else
                                        {
                                          v25 = a1 == 0xD000000000000014 && 0x80000001C90C98C0 == a2;
                                          if (v25 || (sub_1C9064C2C() & 1) != 0)
                                          {

                                            return 20;
                                          }

                                          else
                                          {
                                            v26 = a1 == 0x696C696269736976 && a2 == 0xEF7367616C467974;
                                            if (v26 || (sub_1C9064C2C() & 1) != 0)
                                            {

                                              return 21;
                                            }

                                            else
                                            {
                                              v27 = a1 == 0xD00000000000001CLL && 0x80000001C90CC020 == a2;
                                              if (v27 || (sub_1C9064C2C() & 1) != 0)
                                              {

                                                return 22;
                                              }

                                              else if (a1 == 0xD00000000000001BLL && 0x80000001C90CC040 == a2)
                                              {

                                                return 23;
                                              }

                                              else
                                              {
                                                v29 = sub_1C9064C2C();

                                                if (v29)
                                                {
                                                  return 23;
                                                }

                                                else
                                                {
                                                  return 24;
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
}

unint64_t sub_1C8E84EE4(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 1701667182;
      break;
    case 2:
      result = 0x657079546C6F6F74;
      break;
    case 3:
      result = 0x6574656D61726170;
      break;
    case 4:
    case 6:
      result = 0xD000000000000010;
      break;
    case 5:
      result = 0x795474757074756FLL;
      break;
    case 7:
      result = 0xD000000000000011;
      break;
    case 8:
      result = 0x6F43656372756F73;
      break;
    case 9:
      result = 0xD000000000000014;
      break;
    case 10:
      result = 0xD00000000000001FLL;
      break;
    case 11:
      result = 0x7470697263736564;
      break;
    case 12:
      result = 0x63496D6F74737563;
      break;
    case 13:
      result = 0x69726F6765746163;
      break;
    case 14:
      result = 0x654B686372616573;
      break;
    case 15:
      result = 0xD000000000000015;
      break;
    case 16:
      result = 0x6D65726975716572;
      break;
    case 17:
      result = 0x7367616C66;
      break;
    case 18:
      result = 0xD000000000000014;
      break;
    case 19:
      result = 0x72506D6574737973;
      break;
    case 20:
      result = 0xD000000000000014;
      break;
    case 21:
      result = 0x696C696269736976;
      break;
    case 22:
      result = 0xD00000000000001CLL;
      break;
    case 23:
      result = 0xD00000000000001BLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C8E851B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C8E847D4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C8E851E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8E95664(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C8E8521C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8E95664(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

void ToolDefinition.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int16 a10, char a11, char a12, char a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  OUTLINED_FUNCTION_196();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC317FC0, &qword_1C90921B8);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_73();
  v28 = OUTLINED_FUNCTION_181_1();
  v30 = OUTLINED_FUNCTION_217(v28, v29);
  sub_1C8E95664(v30, v31, v32);
  OUTLINED_FUNCTION_115_0();
  OUTLINED_FUNCTION_106_0();
  sub_1C9064E1C();
  LOBYTE(v82[0]) = 0;
  OUTLINED_FUNCTION_59_10();
  sub_1C9064B2C();
  if (!v26)
  {
    LOBYTE(v82[0]) = 1;
    OUTLINED_FUNCTION_59_10();
    v33 = sub_1C9064B2C();
    LOBYTE(v82[0]) = *(v25 + 32);
    v81[0] = 2;
    sub_1C8D2225C(v33, v34, v35);
    OUTLINED_FUNCTION_53_9();
    sub_1C9064B8C();
    v82[0] = *(v25 + 40);
    v81[0] = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC316A68, &unk_1C90921C0);
    sub_1C8E956B8();
    OUTLINED_FUNCTION_124_4();
    OUTLINED_FUNCTION_106_0();
    OUTLINED_FUNCTION_59_10();
    sub_1C9064B8C();
    v82[0] = *(v25 + 48);
    v81[0] = 4;
    OUTLINED_FUNCTION_124_4();
    OUTLINED_FUNCTION_106_0();
    OUTLINED_FUNCTION_59_10();
    v36 = sub_1C9064B8C();
    v82[0] = *(v25 + 56);
    v81[0] = 5;
    v39 = sub_1C8CA6D90(v36, v37, v38);

    OUTLINED_FUNCTION_124_4();
    OUTLINED_FUNCTION_59_10();
    sub_1C9064B8C();

    if (!v39)
    {
      OUTLINED_FUNCTION_270();
      OUTLINED_FUNCTION_59_10();
      sub_1C9064ADC();
      memcpy(v82, (v25 + 80), sizeof(v82));
      memcpy(v81, (v25 + 80), sizeof(v81));
      v40 = sub_1C8D63FCC();
      sub_1C8E9573C(v40, v41, v42);
      OUTLINED_FUNCTION_53_9();
      sub_1C9064B0C();
      memcpy(v80, v81, sizeof(v80));
      sub_1C8D16D78(v80, &qword_1EC317F98, &qword_1C9092190);
      memcpy(v79, (v25 + 192), 0x61uLL);
      memcpy(v78, (v25 + 192), sizeof(v78));
      v43 = sub_1C8CC1340(v79, v77);
      sub_1C8E95790(v43, v44, v45);
      OUTLINED_FUNCTION_59_10();
      sub_1C9064B8C();
      memcpy(v76, v78, 0x61uLL);
      sub_1C8CC15FC(v76);
      memcpy(v77, (v25 + 296), 0x61uLL);
      memcpy(v75, (v25 + 296), sizeof(v75));
      sub_1C8D63FCC();
      OUTLINED_FUNCTION_59_10();
      sub_1C9064B0C();
      memcpy(v74, v75, 0x61uLL);
      sub_1C8D16D78(v74, &qword_1EC312EF8, &unk_1C90839D0);
      v73 = *(v25 + 400);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312EF0, &qword_1C906A028);
      sub_1C8E957E4();
      OUTLINED_FUNCTION_30_19();
      sub_1C9064B8C();
      memcpy(v72, (v25 + 408), sizeof(v72));
      memcpy(v71, (v25 + 408), sizeof(v71));
      v48 = sub_1C8DFBD54(v72, v70);
      sub_1C8E95868(v48, v49, v50);
      OUTLINED_FUNCTION_53_9();
      sub_1C9064B8C();
      memcpy(v70, v71, sizeof(v70));
      sub_1C8E87298(v70);
      v51 = type metadata accessor for ToolDefinition(0);
      type metadata accessor for ToolIcon(0);
      OUTLINED_FUNCTION_113_3();
      sub_1C8E95E78(v52, v53, &protocol conformance descriptor for ToolIcon);
      OUTLINED_FUNCTION_30_19();
      sub_1C9064B0C();
      OUTLINED_FUNCTION_143_2(v51[17]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC317FC8, &qword_1C90921D0);
      sub_1C8E958BC();
      OUTLINED_FUNCTION_20_21();
      sub_1C9064B8C();
      OUTLINED_FUNCTION_143_2(v51[18]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312558, &qword_1C9066990);
      OUTLINED_FUNCTION_21_2(&qword_1EDA6B530, MEMORY[0x1E69E6160]);
      OUTLINED_FUNCTION_32_14();
      OUTLINED_FUNCTION_59_10();
      sub_1C9064B8C();
      v54 = (v25 + v51[19]);
      v68 = *v54;
      v69 = v54[1];
      sub_1C8DFBDB0(*v54, v69, v54[2], v54[3], v55);
      sub_1C8E95994(v56, v57, v58);
      OUTLINED_FUNCTION_32_14();
      OUTLINED_FUNCTION_59_10();
      sub_1C9064B0C();
      sub_1C8D16E14(v68, v69);
      OUTLINED_FUNCTION_143_2(v51[20]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC317FD0, &qword_1C90921D8);
      sub_1C8E959E8();
      OUTLINED_FUNCTION_20_21();
      sub_1C9064B8C();
      OUTLINED_FUNCTION_143_2(v51[21]);
      sub_1C8D222B0(v59, v60, v61);
      OUTLINED_FUNCTION_32_14();
      OUTLINED_FUNCTION_59_10();
      v62 = sub_1C9064B8C();
      sub_1C8D223C0(v62, v63, v64);
      OUTLINED_FUNCTION_32_14();
      OUTLINED_FUNCTION_59_10();
      sub_1C9064B8C();
      OUTLINED_FUNCTION_143_2(v51[23]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC317FD8, &unk_1C90921E0);
      sub_1C8E95A6C();
      OUTLINED_FUNCTION_20_21();
      sub_1C9064B8C();
      OUTLINED_FUNCTION_59_10();
      sub_1C9064ADC();
      OUTLINED_FUNCTION_143_2(v51[25]);
      sub_1C8D22304(v65, v66, v67);
      OUTLINED_FUNCTION_32_14();
      OUTLINED_FUNCTION_59_10();
      sub_1C9064B8C();
      OUTLINED_FUNCTION_143_2(v51[26]);
      OUTLINED_FUNCTION_32_14();
      OUTLINED_FUNCTION_59_10();
      sub_1C9064B8C();
      OUTLINED_FUNCTION_143_2(v51[27]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC316A70, &qword_1C9087680);
      sub_1C8E95AF0();
      OUTLINED_FUNCTION_20_21();
      sub_1C9064B0C();
    }
  }

  v46 = OUTLINED_FUNCTION_278();
  v47(v46);
  OUTLINED_FUNCTION_328();
  OUTLINED_FUNCTION_198();
}

void ToolDefinition.hash(into:)()
{
  OUTLINED_FUNCTION_164();
  v3 = v2;
  v4 = type metadata accessor for ToolIcon(0);
  OUTLINED_FUNCTION_13_1();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_15();
  v8 = v7 - v6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3144B8, &qword_1C90839E0);
  OUTLINED_FUNCTION_9(v9);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_110();
  sub_1C9063FBC();
  sub_1C9063FBC();
  sub_1C8D305AC(v3, *(v0 + 32));
  sub_1C8D03800();
  sub_1C8D03800();
  v26[0] = *(v0 + 56);
  TypeInstance.hash(into:)();
  if (*(v0 + 72))
  {
    OUTLINED_FUNCTION_419();
    OUTLINED_FUNCTION_182_1();
    sub_1C9063FBC();
  }

  else
  {
    OUTLINED_FUNCTION_308();
  }

  memcpy(v26, (v0 + 80), 0x70uLL);
  if (v26[1])
  {
    v11 = v26[11];
    v20 = LOBYTE(v26[12]);
    OUTLINED_FUNCTION_419();

    sub_1C9063FBC();
    sub_1C9063FBC();
    sub_1C9063FBC();
    sub_1C9063FBC();
    sub_1C9063FBC();
    if (v11)
    {
      MEMORY[0x1CCA82810](1);
      sub_1C9063FBC();
    }

    else
    {
      MEMORY[0x1CCA82810](0);
    }

    MEMORY[0x1CCA82810](v20);
    sub_1C8CC1590();
    sub_1C8D16D78(v26, &qword_1EC317F98, &qword_1C9092190);
  }

  else
  {
    OUTLINED_FUNCTION_308();
  }

  memcpy(v24, (v0 + 192), 0x61uLL);
  ContainerDefinition.hash(into:)(v3);
  v12 = *(v0 + 296);
  v13 = *(v0 + 304);
  memcpy(v25, (v0 + 312), sizeof(v25));
  if (v13)
  {
    memcpy(&v21[2], (v0 + 312), 0x51uLL);
    v21[0] = v12;
    v21[1] = v13;
    OUTLINED_FUNCTION_419();
    v22[0] = v12;
    v22[1] = v13;
    memcpy(v23, v25, sizeof(v23));
    sub_1C8CC1340(v22, v24);
    ContainerDefinition.hash(into:)(v3);
    memcpy(v24, v21, 0x61uLL);
    sub_1C8CC15FC(v24);
  }

  else
  {
    OUTLINED_FUNCTION_308();
  }

  sub_1C8D048FC();
  memcpy(v24, (v0 + 408), 0x50uLL);
  ToolDescription.hash(into:)(v3);
  v14 = type metadata accessor for ToolDefinition(0);
  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v1, 1, v4) == 1)
  {
    OUTLINED_FUNCTION_308();
  }

  else
  {
    sub_1C8E872C8(v1, v8);
    OUTLINED_FUNCTION_419();
    ToolIcon.hash(into:)(v3);
    OUTLINED_FUNCTION_8_31();
    sub_1C8E961D0(v8, v15);
  }

  OUTLINED_FUNCTION_221_2();
  sub_1C8D0771C();
  OUTLINED_FUNCTION_221_2();
  sub_1C8CC1590();
  v16 = v0 + v14[19];
  if (*(v16 + 8))
  {
    v17 = *(v16 + 24);
    OUTLINED_FUNCTION_419();

    sub_1C9063FBC();
    if (v17)
    {
      OUTLINED_FUNCTION_419();
      OUTLINED_FUNCTION_182_1();
      sub_1C9063FBC();
    }

    else
    {
      OUTLINED_FUNCTION_308();
    }

    v18 = OUTLINED_FUNCTION_146_0();
    sub_1C8D16E14(v18, v19);
  }

  else
  {
    OUTLINED_FUNCTION_308();
  }

  OUTLINED_FUNCTION_221_2();
  sub_1C8D02E34();
  MEMORY[0x1CCA82810](*(v0 + v14[21]));
  sub_1C8D303FC(v3, *(v0 + v14[22]));
  OUTLINED_FUNCTION_221_2();
  sub_1C8D04B78();
  if (*(v0 + v14[24] + 8))
  {
    OUTLINED_FUNCTION_419();
    OUTLINED_FUNCTION_182_1();
    sub_1C9063FBC();
  }

  else
  {
    OUTLINED_FUNCTION_308();
  }

  MEMORY[0x1CCA82810](*(v0 + v14[25]));
  OUTLINED_FUNCTION_221_2();
  sub_1C8CC1590();
  if (*(v0 + v14[27]))
  {
    OUTLINED_FUNCTION_419();
    OUTLINED_FUNCTION_249();
    sub_1C8D03494();
  }

  else
  {
    OUTLINED_FUNCTION_308();
  }

  OUTLINED_FUNCTION_163();
}