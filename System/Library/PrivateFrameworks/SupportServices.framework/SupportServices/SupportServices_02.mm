uint64_t sub_26BD09830()
{
  OUTLINED_FUNCTION_184();
  v2 = *(type metadata accessor for AuthResponse(0) + 20);
  v3 = *(v1 + v2);
  v4 = *(v0 + v2);
  if (v3 != v4)
  {

    v5 = sub_26BD09904(v3, v4);

    if (!v5)
    {
      return 0;
    }
  }

  sub_26BDA0850();
  OUTLINED_FUNCTION_0_0();
  sub_26BD0D430(v6, v7, MEMORY[0x277D216D0]);
  return sub_26BDA0BB0() & 1;
}

BOOL sub_26BD09904(uint64_t a1, uint64_t a2)
{
  v146 = a2;
  v125 = type metadata accessor for AuthResponse.AuthenticationToken(0);
  MEMORY[0x28223BE20](v125);
  v121 = &v120 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280449918, &unk_26BDA3CC0);
  MEMORY[0x28223BE20](v124);
  v126 = &v120 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280449848, &qword_26BDA36E0);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v122 = &v120 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v131 = &v120 - v8;
  v129 = type metadata accessor for PhoneNumber(0);
  MEMORY[0x28223BE20](v129);
  v123 = &v120 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280449920, &qword_26BDA9390);
  MEMORY[0x28223BE20](v128);
  v130 = &v120 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280449840, &qword_26BDA36D8);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v127 = &v120 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v137 = &v120 - v14;
  v135 = type metadata accessor for AuthResponse.ImproveSearchConsent(0);
  MEMORY[0x28223BE20](v135);
  v132 = &v120 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280449928, &qword_26BDA3CD0);
  MEMORY[0x28223BE20](v134);
  v136 = &v120 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280449900, &unk_26BDA3CA0);
  v18 = MEMORY[0x28223BE20](v17 - 8);
  v133 = &v120 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v142 = &v120 - v20;
  v145 = type metadata accessor for AuthResponse.Account(0);
  MEMORY[0x28223BE20](v145);
  v139 = &v120 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280449930, &qword_26BDA3CD8);
  v23 = MEMORY[0x28223BE20](v22);
  v141 = &v120 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v26 = &v120 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280449908, &unk_26BDA9DD0);
  v28 = MEMORY[0x28223BE20](v27 - 8);
  v138 = &v120 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x28223BE20](v28);
  v144 = &v120 - v31;
  v32 = MEMORY[0x28223BE20](v30);
  v143 = &v120 - v33;
  MEMORY[0x28223BE20](v32);
  v35 = &v120 - v34;
  swift_beginAccess();
  sub_26BD0D868();
  swift_beginAccess();
  v140 = v22;
  v36 = *(v22 + 48);
  sub_26BD0D868();
  v37 = v145;
  sub_26BD0D868();
  if (__swift_getEnumTagSinglePayload(v26, 1, v37) == 1)
  {

    sub_26BD04E80(v35, &qword_280449908, &unk_26BDA9DD0);
    v38 = a1;
    if (__swift_getEnumTagSinglePayload(&v26[v36], 1, v37) == 1)
    {
      sub_26BD04E80(v26, &qword_280449908, &unk_26BDA9DD0);
      goto LABEL_9;
    }

LABEL_6:
    sub_26BD04E80(v26, &qword_280449930, &qword_26BDA3CD8);
    goto LABEL_23;
  }

  v38 = a1;
  v39 = v143;
  sub_26BD0D868();
  if (__swift_getEnumTagSinglePayload(&v26[v36], 1, v37) == 1)
  {

    sub_26BD04E80(v35, &qword_280449908, &unk_26BDA9DD0);
    sub_26BD0D920(v39, type metadata accessor for AuthResponse.Account);
    goto LABEL_6;
  }

  v40 = v139;
  sub_26BD0D8C4();

  v41 = sub_26BD0BAE4(v39, v40);
  sub_26BD0D920(v40, type metadata accessor for AuthResponse.Account);
  sub_26BD04E80(v35, &qword_280449908, &unk_26BDA9DD0);
  sub_26BD0D920(v39, type metadata accessor for AuthResponse.Account);
  sub_26BD04E80(v26, &qword_280449908, &unk_26BDA9DD0);
  if ((v41 & 1) == 0)
  {
    goto LABEL_23;
  }

LABEL_9:
  swift_beginAccess();
  v42 = v38;
  v43 = v144;
  sub_26BD0D868();
  swift_beginAccess();
  v44 = v141;
  v45 = *(v140 + 48);
  sub_26BD0D868();
  sub_26BD0D868();
  if (__swift_getEnumTagSinglePayload(v44, 1, v37) == 1)
  {
    sub_26BD04E80(v43, &qword_280449908, &unk_26BDA9DD0);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v44 + v45, 1, v37);
    v47 = v42;
    v48 = v142;
    if (EnumTagSinglePayload == 1)
    {
      sub_26BD04E80(v44, &qword_280449908, &unk_26BDA9DD0);
      goto LABEL_16;
    }

LABEL_14:
    v51 = &qword_280449930;
    v52 = &qword_26BDA3CD8;
    v53 = v44;
LABEL_22:
    sub_26BD04E80(v53, v51, v52);
    goto LABEL_23;
  }

  v49 = v138;
  sub_26BD0D868();
  v50 = __swift_getEnumTagSinglePayload(v44 + v45, 1, v37);
  v48 = v142;
  if (v50 == 1)
  {
    sub_26BD04E80(v144, &qword_280449908, &unk_26BDA9DD0);
    sub_26BD0D920(v49, type metadata accessor for AuthResponse.Account);
    goto LABEL_14;
  }

  v54 = v139;
  sub_26BD0D8C4();
  v55 = v44;
  v56 = sub_26BD0BAE4(v49, v54);
  sub_26BD0D920(v54, type metadata accessor for AuthResponse.Account);
  sub_26BD04E80(v144, &qword_280449908, &unk_26BDA9DD0);
  sub_26BD0D920(v49, type metadata accessor for AuthResponse.Account);
  sub_26BD04E80(v55, &qword_280449908, &unk_26BDA9DD0);
  v47 = v42;
  if ((v56 & 1) == 0)
  {
    goto LABEL_23;
  }

LABEL_16:
  swift_beginAccess();
  sub_26BD0D868();
  swift_beginAccess();
  v57 = *(v134 + 48);
  v58 = v136;
  sub_26BD0D868();
  v59 = v58;
  sub_26BD0D868();
  v60 = v135;
  if (__swift_getEnumTagSinglePayload(v58, 1, v135) == 1)
  {
    sub_26BD04E80(v48, &qword_280449900, &unk_26BDA3CA0);
    v61 = __swift_getEnumTagSinglePayload(v58 + v57, 1, v60);
    v62 = v137;
    if (v61 == 1)
    {
      sub_26BD04E80(v59, &qword_280449900, &unk_26BDA3CA0);
      goto LABEL_37;
    }

    goto LABEL_21;
  }

  v63 = v133;
  sub_26BD0D868();
  v64 = __swift_getEnumTagSinglePayload(v58 + v57, 1, v60);
  v62 = v137;
  if (v64 == 1)
  {
    sub_26BD04E80(v48, &qword_280449900, &unk_26BDA3CA0);
    sub_26BD0D920(v63, type metadata accessor for AuthResponse.ImproveSearchConsent);
LABEL_21:
    v51 = &qword_280449928;
    v52 = &qword_26BDA3CD0;
    v53 = v59;
    goto LABEL_22;
  }

  v66 = v132;
  sub_26BD0D8C4();
  v67 = *v63 == *v66 && v63[1] == v66[1];
  if (!v67 && (sub_26BDA0FB0() & 1) == 0 || (v63[2] == v66[2] ? (v68 = v63[3] == v66[3]) : (v68 = 0), !v68 && (sub_26BDA0FB0() & 1) == 0))
  {
    sub_26BD0D920(v66, type metadata accessor for AuthResponse.ImproveSearchConsent);
    sub_26BD04E80(v48, &qword_280449900, &unk_26BDA3CA0);
    sub_26BD0D920(v63, type metadata accessor for AuthResponse.ImproveSearchConsent);
    v53 = v59;
    v51 = &qword_280449900;
    v52 = &unk_26BDA3CA0;
    goto LABEL_22;
  }

  sub_26BDA0850();
  sub_26BD0D430(&qword_2804490C0, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v69 = sub_26BDA0BB0();
  sub_26BD0D920(v66, type metadata accessor for AuthResponse.ImproveSearchConsent);
  sub_26BD04E80(v48, &qword_280449900, &unk_26BDA3CA0);
  sub_26BD0D920(v63, type metadata accessor for AuthResponse.ImproveSearchConsent);
  sub_26BD04E80(v59, &qword_280449900, &unk_26BDA3CA0);
  if ((v69 & 1) == 0)
  {
    goto LABEL_23;
  }

LABEL_37:
  v70 = OBJC_IVAR____TtCV15SupportServices12AuthResponseP33_634C8733C64163B592F193A7A8756DAC13_StorageClass__deprecatedUsesPhoneNumberForAppleID;
  swift_beginAccess();
  LODWORD(v70) = *(v47 + v70);
  v71 = OBJC_IVAR____TtCV15SupportServices12AuthResponseP33_634C8733C64163B592F193A7A8756DAC13_StorageClass__deprecatedUsesPhoneNumberForAppleID;
  v72 = v146;
  swift_beginAccess();
  if (v70 != *(v72 + v71))
  {
    goto LABEL_23;
  }

  v73 = (v47 + OBJC_IVAR____TtCV15SupportServices12AuthResponseP33_634C8733C64163B592F193A7A8756DAC13_StorageClass__deprecatedGivenName);
  swift_beginAccess();
  v74 = *v73;
  v75 = v73[1];
  v76 = (v146 + OBJC_IVAR____TtCV15SupportServices12AuthResponseP33_634C8733C64163B592F193A7A8756DAC13_StorageClass__deprecatedGivenName);
  swift_beginAccess();
  v77 = v74 == *v76 && v75 == v76[1];
  if (!v77 && (sub_26BDA0FB0() & 1) == 0)
  {
    goto LABEL_23;
  }

  v78 = (v47 + OBJC_IVAR____TtCV15SupportServices12AuthResponseP33_634C8733C64163B592F193A7A8756DAC13_StorageClass__deprecatedFamilyName);
  swift_beginAccess();
  v79 = *v78;
  v80 = v78[1];
  v81 = (v146 + OBJC_IVAR____TtCV15SupportServices12AuthResponseP33_634C8733C64163B592F193A7A8756DAC13_StorageClass__deprecatedFamilyName);
  swift_beginAccess();
  v82 = v79 == *v81 && v80 == v81[1];
  if (!v82 && (sub_26BDA0FB0() & 1) == 0)
  {
    goto LABEL_23;
  }

  v83 = (v47 + OBJC_IVAR____TtCV15SupportServices12AuthResponseP33_634C8733C64163B592F193A7A8756DAC13_StorageClass__deprecatedNickname);
  swift_beginAccess();
  v84 = *v83;
  v85 = v83[1];
  v86 = (v146 + OBJC_IVAR____TtCV15SupportServices12AuthResponseP33_634C8733C64163B592F193A7A8756DAC13_StorageClass__deprecatedNickname);
  swift_beginAccess();
  v87 = v84 == *v86 && v85 == v86[1];
  if (!v87 && (sub_26BDA0FB0() & 1) == 0)
  {
    goto LABEL_23;
  }

  v88 = (v47 + OBJC_IVAR____TtCV15SupportServices12AuthResponseP33_634C8733C64163B592F193A7A8756DAC13_StorageClass__deprecatedEmailAddress);
  swift_beginAccess();
  v89 = *v88;
  v90 = v88[1];
  v91 = (v146 + OBJC_IVAR____TtCV15SupportServices12AuthResponseP33_634C8733C64163B592F193A7A8756DAC13_StorageClass__deprecatedEmailAddress);
  swift_beginAccess();
  v92 = v89 == *v91 && v90 == v91[1];
  if (!v92 && (sub_26BDA0FB0() & 1) == 0)
  {
    goto LABEL_23;
  }

  v93 = (v47 + OBJC_IVAR____TtCV15SupportServices12AuthResponseP33_634C8733C64163B592F193A7A8756DAC13_StorageClass__deprecatedRegionCode);
  swift_beginAccess();
  v94 = *v93;
  v95 = v93[1];
  v96 = (v146 + OBJC_IVAR____TtCV15SupportServices12AuthResponseP33_634C8733C64163B592F193A7A8756DAC13_StorageClass__deprecatedRegionCode);
  swift_beginAccess();
  v97 = v94 == *v96 && v95 == v96[1];
  if (!v97 && (sub_26BDA0FB0() & 1) == 0)
  {
    goto LABEL_23;
  }

  swift_beginAccess();
  sub_26BD0D868();
  swift_beginAccess();
  v98 = *(v128 + 48);
  v99 = v62;
  v100 = v130;
  sub_26BD0D868();
  sub_26BD0D868();
  v101 = v129;
  if (__swift_getEnumTagSinglePayload(v100, 1, v129) != 1)
  {
    v104 = v127;
    sub_26BD0D868();
    v105 = __swift_getEnumTagSinglePayload(v100 + v98, 1, v101);
    v103 = v131;
    if (v105 == 1)
    {
      sub_26BD04E80(v137, &qword_280449840, &qword_26BDA36D8);
      sub_26BD0D920(v104, type metadata accessor for PhoneNumber);
      goto LABEL_69;
    }

    v106 = v123;
    sub_26BD0D8C4();
    v107 = static PhoneNumber.== infix(_:_:)();
    sub_26BD0D920(v106, type metadata accessor for PhoneNumber);
    sub_26BD04E80(v137, &qword_280449840, &qword_26BDA36D8);
    sub_26BD0D920(v104, type metadata accessor for PhoneNumber);
    sub_26BD04E80(v100, &qword_280449840, &qword_26BDA36D8);
    if (v107)
    {
      goto LABEL_71;
    }

LABEL_23:

    return 0;
  }

  sub_26BD04E80(v99, &qword_280449840, &qword_26BDA36D8);
  v102 = __swift_getEnumTagSinglePayload(v100 + v98, 1, v101);
  v103 = v131;
  if (v102 != 1)
  {
LABEL_69:
    v51 = &qword_280449920;
    v52 = &qword_26BDA9390;
    v53 = v100;
    goto LABEL_22;
  }

  sub_26BD04E80(v100, &qword_280449840, &qword_26BDA36D8);
LABEL_71:
  swift_beginAccess();
  sub_26BD0D868();
  v108 = v103;
  swift_beginAccess();
  v109 = *(v124 + 48);
  v110 = v126;
  sub_26BD0D868();
  v111 = v110;
  sub_26BD0D868();
  v112 = v125;
  if (__swift_getEnumTagSinglePayload(v110, 1, v125) == 1)
  {

    sub_26BD04E80(v108, &qword_280449848, &qword_26BDA36E0);
    if (__swift_getEnumTagSinglePayload(v110 + v109, 1, v112) == 1)
    {
      sub_26BD04E80(v110, &qword_280449848, &qword_26BDA36E0);
      return 1;
    }

    goto LABEL_77;
  }

  v113 = v122;
  sub_26BD0D868();
  if (__swift_getEnumTagSinglePayload(v110 + v109, 1, v112) == 1)
  {

    sub_26BD04E80(v131, &qword_280449848, &qword_26BDA36E0);
    sub_26BD0D920(v113, type metadata accessor for AuthResponse.AuthenticationToken);
LABEL_77:
    v114 = &qword_280449918;
    v115 = &unk_26BDA3CC0;
    v116 = v110;
LABEL_88:
    sub_26BD04E80(v116, v114, v115);
    return 0;
  }

  v117 = v121;
  sub_26BD0D8C4();
  v118 = *v113 == *v117 && v113[1] == v117[1];
  if (!v118 && (sub_26BDA0FB0() & 1) == 0 || v113[2] != v117[2] || v113[3] != v117[3])
  {

    sub_26BD04E80(v131, &qword_280449848, &qword_26BDA36E0);
    sub_26BD0D920(v117, type metadata accessor for AuthResponse.AuthenticationToken);
    sub_26BD0D920(v113, type metadata accessor for AuthResponse.AuthenticationToken);
    v116 = v111;
    v114 = &qword_280449848;
    v115 = &qword_26BDA36E0;
    goto LABEL_88;
  }

  sub_26BDA0850();
  sub_26BD0D430(&qword_2804490C0, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v119 = sub_26BDA0BB0();

  sub_26BD04E80(v131, &qword_280449848, &qword_26BDA36E0);
  sub_26BD0D920(v117, type metadata accessor for AuthResponse.AuthenticationToken);
  sub_26BD0D920(v113, type metadata accessor for AuthResponse.AuthenticationToken);
  sub_26BD04E80(v111, &qword_280449848, &qword_26BDA36E0);
  return (v119 & 1) != 0;
}

uint64_t _s15SupportServices0A19OptionTypeNamespaceV13unknownFields21InternalSwiftProtobuf14UnknownStorageVvg_0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_26BDA0850();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t _s15SupportServices0A19OptionTypeNamespaceV13unknownFields21InternalSwiftProtobuf14UnknownStorageVvs_0(uint64_t a1)
{
  v3 = sub_26BDA0850();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t sub_26BD0AE68(uint64_t a1, uint64_t a2)
{
  v4 = sub_26BD0D430(&qword_2804498F8, type metadata accessor for AuthResponse, &unk_26BDA3BF0);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26BD0AF08(uint64_t a1)
{
  v2 = sub_26BD0D430(&qword_2804498E0, type metadata accessor for AuthResponse, &unk_26BDA3C28);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26BD0AFD0(uint64_t a1, uint64_t a2)
{
  sub_26BD0D430(&qword_2804498E0, type metadata accessor for AuthResponse, &unk_26BDA3C28);

  return sub_26BDA0A00();
}

uint64_t sub_26BD0B050()
{
  v0 = sub_26BDA0B10();
  __swift_allocate_value_buffer(v0, qword_280459EF8);
  __swift_project_value_buffer(v0, qword_280459EF8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804495C8, &unk_26BDA3CB0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804495D0, &qword_26BDA3510) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_26BDA3650;
  v4 = v30 + v3;
  v5 = v30 + v3 + v1[14];
  *(v30 + v3) = 1;
  *v5 = "uses_phone_number_for_apple_id";
  *(v5 + 8) = 30;
  *(v5 + 16) = 2;
  *(v5 + 24) = "usesPhoneNumberForAppleID";
  *(v5 + 32) = 25;
  *(v5 + 40) = 2;
  v6 = *MEMORY[0x277D21878];
  v7 = sub_26BDA0AE0();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "given_name";
  *(v9 + 8) = 10;
  *(v9 + 16) = 2;
  *(v9 + 24) = "firstName";
  *(v9 + 32) = 9;
  *(v9 + 40) = 2;
  v8();
  v10 = v1[14];
  v11 = (v4 + 2 * v2);
  *v11 = 3;
  v12 = v11 + v10;
  *v12 = "family_name";
  *(v12 + 1) = 11;
  v12[16] = 2;
  *(v12 + 3) = "lastName";
  *(v12 + 4) = 8;
  v12[40] = 2;
  v8();
  v13 = v1[14];
  v14 = (v4 + 3 * v2);
  *v14 = 4;
  v15 = v14 + v13;
  *v15 = "nickname";
  *(v15 + 1) = 8;
  v15[16] = 2;
  *(v15 + 3) = "nickName";
  *(v15 + 4) = 8;
  v15[40] = 2;
  v8();
  v16 = v1[14];
  v17 = (v4 + 4 * v2);
  *v17 = 5;
  v18 = v17 + v16;
  *v18 = "email_address";
  *(v18 + 1) = 13;
  v18[16] = 2;
  *(v18 + 3) = "email";
  *(v18 + 4) = 5;
  v18[40] = 2;
  v8();
  v19 = (v4 + 5 * v2);
  v20 = v19 + v1[14];
  *v19 = 6;
  *v20 = "region_code";
  *(v20 + 1) = 11;
  v20[16] = 2;
  v8();
  v21 = (v4 + 6 * v2);
  v22 = v21 + v1[14];
  *v21 = 7;
  *v22 = "phone";
  *(v22 + 1) = 5;
  v22[16] = 2;
  v8();
  v23 = (v4 + 7 * v2);
  v24 = v23 + v1[14];
  *v23 = 8;
  *v24 = "facade_auth";
  *(v24 + 1) = 11;
  v24[16] = 2;
  v8();
  v25 = (v4 + 8 * v2);
  v26 = v25 + v1[14];
  *v25 = 9;
  *v26 = "reachable_at";
  *(v26 + 1) = 12;
  v26[16] = 2;
  v8();
  v27 = (v4 + 9 * v2);
  v28 = v27 + v1[14];
  *v27 = 10;
  *v28 = "is_age_under_thirteen";
  *(v28 + 1) = 21;
  v28[16] = 2;
  v8();
  return sub_26BDA0AF0();
}

uint64_t sub_26BD0B478(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  while (1)
  {
    result = sub_26BDA0900();
    if (v4 || (v6 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
      case 10:
        sub_26BDA0920();
        goto LABEL_11;
      case 2:
      case 3:
      case 4:
      case 5:
      case 6:
        sub_26BDA0990();
        goto LABEL_11;
      case 7:
        type metadata accessor for AuthResponse.Account(0);
        type metadata accessor for PhoneNumber(0);
        OUTLINED_FUNCTION_1_0();
        v8 = &protocol conformance descriptor for PhoneNumber;
        v9 = &qword_280449910;
        goto LABEL_9;
      case 8:
        type metadata accessor for AuthResponse.Account(0);
        type metadata accessor for AuthResponse.AuthenticationToken(0);
        OUTLINED_FUNCTION_5_0();
        v8 = &unk_26BDA3958;
        v9 = &qword_2804498A0;
LABEL_9:
        sub_26BD0D430(v9, v7, v8);
        OUTLINED_FUNCTION_22_0();
        sub_26BDA09B0();
        goto LABEL_11;
      case 9:
        type metadata accessor for PhoneNumber(0);
        OUTLINED_FUNCTION_1_0();
        sub_26BD0D430(&qword_280449910, v10, &protocol conformance descriptor for PhoneNumber);
        OUTLINED_FUNCTION_22_0();
        sub_26BDA09A0();
LABEL_11:
        v4 = 0;
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_26BD0B66C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280449848, &qword_26BDA36E0);
  OUTLINED_FUNCTION_110(v6);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v7);
  v9 = &v44 - v8;
  v45 = type metadata accessor for AuthResponse.AuthenticationToken(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_44();
  v13 = v12 - v11;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280449840, &qword_26BDA36D8);
  OUTLINED_FUNCTION_110(v14);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v15);
  v17 = &v44 - v16;
  v46 = type metadata accessor for PhoneNumber(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_44();
  v21 = (v20 - v19);
  if (*v3 != 1 || (result = sub_26BDA0A40(), !v4))
  {
    OUTLINED_FUNCTION_29();
    if (!v25 || (result = OUTLINED_FUNCTION_9_0(v23, v24, 2), (v5 = v4) == 0))
    {
      OUTLINED_FUNCTION_29();
      if (!v28 || (result = OUTLINED_FUNCTION_9_0(v26, v27, 3), (v5 = v4) == 0))
      {
        OUTLINED_FUNCTION_29();
        if (!v31 || (result = OUTLINED_FUNCTION_9_0(v29, v30, 4), (v5 = v4) == 0))
        {
          OUTLINED_FUNCTION_29();
          if (!v34 || (result = OUTLINED_FUNCTION_9_0(v32, v33, 5), (v5 = v4) == 0))
          {
            OUTLINED_FUNCTION_29();
            if (!v37 || (result = OUTLINED_FUNCTION_9_0(v35, v36, 6), (v5 = v4) == 0))
            {
              v44 = type metadata accessor for AuthResponse.Account(0);
              sub_26BD0D868();
              if (__swift_getEnumTagSinglePayload(v17, 1, v46) == 1)
              {
                sub_26BD04E80(v17, &qword_280449840, &qword_26BDA36D8);
              }

              else
              {
                sub_26BD0D8C4();
                OUTLINED_FUNCTION_1_0();
                sub_26BD0D430(v38, v39, &protocol conformance descriptor for PhoneNumber);
                sub_26BDA0AD0();
                result = sub_26BD0D920(v21, type metadata accessor for PhoneNumber);
                if (v5)
                {
                  return result;
                }
              }

              sub_26BD0D868();
              if (__swift_getEnumTagSinglePayload(v9, 1, v45) == 1)
              {
                sub_26BD04E80(v9, &qword_280449848, &qword_26BDA36E0);
              }

              else
              {
                OUTLINED_FUNCTION_6_0();
                sub_26BD0D8C4();
                OUTLINED_FUNCTION_5_0();
                sub_26BD0D430(v40, v41, &unk_26BDA3958);
                sub_26BDA0AD0();
                result = sub_26BD0D920(v13, v21);
                if (v5)
                {
                  return result;
                }
              }

              if (!*(*(v3 + 88) + 16) || (OUTLINED_FUNCTION_1_0(), sub_26BD0D430(v42, v43, &protocol conformance descriptor for PhoneNumber), result = sub_26BDA0AC0(), !v5))
              {
                if (*(v3 + 96) != 1)
                {
                  return sub_26BDA0830();
                }

                result = sub_26BDA0A40();
                if (!v5)
                {
                  return sub_26BDA0830();
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_26BD0BAE4(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v59 = type metadata accessor for AuthResponse.AuthenticationToken(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_44();
  v7 = (v6 - v5);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280449848, &qword_26BDA36E0);
  OUTLINED_FUNCTION_110(v8);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v9);
  v58 = &v54 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280449918, &unk_26BDA3CC0);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v12);
  v14 = &v54 - v13;
  type metadata accessor for PhoneNumber(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_44();
  v18 = v17 - v16;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280449840, &qword_26BDA36D8);
  OUTLINED_FUNCTION_110(v19);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v20);
  v22 = &v54 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280449920, &qword_26BDA9390);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v24);
  v26 = &v54 - v25;
  if (*a1 != *a2)
  {
    goto LABEL_2;
  }

  v29 = *(a1 + 1) == *(a2 + 1) && *(a1 + 2) == *(a2 + 2);
  if (!v29 && (sub_26BDA0FB0() & 1) == 0)
  {
    goto LABEL_2;
  }

  v30 = *(a1 + 3) == *(a2 + 3) && *(a1 + 4) == *(a2 + 4);
  if (!v30 && (sub_26BDA0FB0() & 1) == 0)
  {
    goto LABEL_2;
  }

  v31 = *(a1 + 5) == *(a2 + 5) && *(a1 + 6) == *(a2 + 6);
  if (!v31 && (sub_26BDA0FB0() & 1) == 0)
  {
    goto LABEL_2;
  }

  v32 = *(a1 + 7) == *(a2 + 7) && *(a1 + 8) == *(a2 + 8);
  if (!v32 && (sub_26BDA0FB0() & 1) == 0)
  {
    goto LABEL_2;
  }

  v33 = *(a1 + 9) == *(a2 + 9) && *(a1 + 10) == *(a2 + 10);
  if (!v33 && (sub_26BDA0FB0() & 1) == 0)
  {
    goto LABEL_2;
  }

  v55 = v7;
  v57 = v14;
  v56 = type metadata accessor for AuthResponse.Account(0);
  v34 = *(v23 + 48);
  sub_26BD0D868();
  sub_26BD0D868();
  OUTLINED_FUNCTION_56(v26);
  if (v29)
  {
    OUTLINED_FUNCTION_56(&v26[v34]);
    if (v29)
    {
      sub_26BD04E80(v26, &qword_280449840, &qword_26BDA36D8);
      goto LABEL_39;
    }

LABEL_37:
    v36 = &qword_280449920;
    v37 = &qword_26BDA9390;
    v38 = v26;
LABEL_59:
    sub_26BD04E80(v38, v36, v37);
    goto LABEL_2;
  }

  sub_26BD0D868();
  OUTLINED_FUNCTION_56(&v26[v34]);
  if (v35)
  {
    sub_26BD0D920(v22, type metadata accessor for PhoneNumber);
    goto LABEL_37;
  }

  sub_26BD0D8C4();
  v39 = static PhoneNumber.== infix(_:_:)();
  sub_26BD0D920(v18, type metadata accessor for PhoneNumber);
  sub_26BD0D920(v22, type metadata accessor for PhoneNumber);
  sub_26BD04E80(v26, &qword_280449840, &qword_26BDA36D8);
  if ((v39 & 1) == 0)
  {
    goto LABEL_2;
  }

LABEL_39:
  v40 = *(v11 + 48);
  v41 = v57;
  sub_26BD0D868();
  v42 = v41;
  sub_26BD0D868();
  v43 = v59;
  if (__swift_getEnumTagSinglePayload(v41, 1, v59) != 1)
  {
    v47 = v58;
    sub_26BD0D868();
    if (__swift_getEnumTagSinglePayload(v41 + v40, 1, v43) != 1)
    {
      v48 = v55;
      sub_26BD0D8C4();
      v49 = *v47 == *v48 && v47[1] == v48[1];
      if (v49 || (sub_26BDA0FB0()) && v47[2] == v48[2] && v47[3] == v48[3])
      {
        sub_26BDA0850();
        OUTLINED_FUNCTION_0_0();
        sub_26BD0D430(v50, v51, MEMORY[0x277D216D0]);
        v52 = sub_26BDA0BB0();
        OUTLINED_FUNCTION_6_0();
        sub_26BD0D920(v48, v53);
        sub_26BD0D920(v47, v43);
        sub_26BD04E80(v42, &qword_280449848, &qword_26BDA36E0);
        if ((v52 & 1) == 0)
        {
          goto LABEL_2;
        }

        goto LABEL_42;
      }

      sub_26BD0D920(v48, type metadata accessor for AuthResponse.AuthenticationToken);
      sub_26BD0D920(v47, type metadata accessor for AuthResponse.AuthenticationToken);
      v36 = &qword_280449848;
      v37 = &qword_26BDA36E0;
      goto LABEL_58;
    }

    sub_26BD0D920(v47, type metadata accessor for AuthResponse.AuthenticationToken);
LABEL_47:
    v36 = &qword_280449918;
    v37 = &unk_26BDA3CC0;
LABEL_58:
    v38 = v42;
    goto LABEL_59;
  }

  if (__swift_getEnumTagSinglePayload(v41 + v40, 1, v43) != 1)
  {
    goto LABEL_47;
  }

  sub_26BD04E80(v41, &qword_280449848, &qword_26BDA36E0);
LABEL_42:
  sub_26BD00B40(*(a1 + 11), *(a2 + 11));
  if ((v44 & 1) != 0 && a1[96] == a2[96])
  {
    sub_26BDA0850();
    OUTLINED_FUNCTION_0_0();
    sub_26BD0D430(v45, v46, MEMORY[0x277D216D0]);
    v27 = sub_26BDA0BB0();
    return v27 & 1;
  }

LABEL_2:
  v27 = 0;
  return v27 & 1;
}

uint64_t sub_26BD0C18C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 48);
  v5 = sub_26BDA0850();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_26BD0C200(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 48);
  v5 = sub_26BDA0850();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_26BD0C2C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_26BD0D430(&qword_280449938, type metadata accessor for AuthResponse.Account, &unk_26BDA3A88);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26BD0C368(uint64_t a1)
{
  v2 = sub_26BD0D430(&qword_2804498C0, type metadata accessor for AuthResponse.Account, &unk_26BDA3AC0);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26BD0C430(uint64_t a1, uint64_t a2)
{
  sub_26BD0D430(&qword_2804498C0, type metadata accessor for AuthResponse.Account, &unk_26BDA3AC0);

  return sub_26BDA0A00();
}

uint64_t sub_26BD0C4B0()
{
  v0 = sub_26BDA0B10();
  __swift_allocate_value_buffer(v0, qword_280459F10);
  __swift_project_value_buffer(v0, qword_280459F10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804495C8, &unk_26BDA3CB0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804495D0, &qword_26BDA3510) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26BDA1A20;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "token";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_26BDA0AE0();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "creation_time_milliseconds";
  *(v10 + 1) = 26;
  v10[16] = 2;
  *(v10 + 3) = "epochTs";
  *(v10 + 4) = 7;
  v10[40] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "ds_id";
  *(v12 + 1) = 5;
  v12[16] = 2;
  v9();
  return sub_26BDA0AF0();
}

uint64_t sub_26BD0C6DC()
{
  OUTLINED_FUNCTION_17_0();
  while (1)
  {
    result = sub_26BDA0900();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 3 || result == 2)
    {
      OUTLINED_FUNCTION_129();
      sub_26BDA0960();
    }

    else if (result == 1)
    {
      OUTLINED_FUNCTION_129();
      sub_26BDA0990();
    }
  }

  return result;
}

uint64_t sub_26BD0C764()
{
  OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_29();
  if (!v4 || (result = OUTLINED_FUNCTION_103(v2, v3, 1), !v1))
  {
    v6 = *(v0 + 16);
    if (!v6 || (result = OUTLINED_FUNCTION_23_0(v6, 2), !v1))
    {
      v7 = *(v0 + 24);
      if (!v7 || (result = OUTLINED_FUNCTION_23_0(v7, 3), !v1))
      {
        type metadata accessor for AuthResponse.AuthenticationToken(0);
        OUTLINED_FUNCTION_129();
        return sub_26BDA0830();
      }
    }
  }

  return result;
}

uint64_t sub_26BD0C814()
{
  OUTLINED_FUNCTION_184();
  OUTLINED_FUNCTION_20_0(v2);
  v5 = v5 && v3 == v4;
  if (!v5 && (sub_26BDA0FB0() & 1) == 0 || *(v1 + 16) != *(v0 + 16) || *(v1 + 24) != *(v0 + 24))
  {
    return 0;
  }

  type metadata accessor for AuthResponse.AuthenticationToken(0);
  sub_26BDA0850();
  OUTLINED_FUNCTION_0_0();
  sub_26BD0D430(v6, v7, MEMORY[0x277D216D0]);
  return OUTLINED_FUNCTION_105() & 1;
}

uint64_t sub_26BD0C8E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 28);
  v5 = sub_26BDA0850();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_26BD0C954(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 28);
  v5 = sub_26BDA0850();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_26BD0C9F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_26BD0D430(&qword_280449940, type metadata accessor for AuthResponse.AuthenticationToken, &unk_26BDA3920);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26BD0CA98(uint64_t a1)
{
  v2 = sub_26BD0D430(&qword_2804498A0, type metadata accessor for AuthResponse.AuthenticationToken, &unk_26BDA3958);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26BD0CB60(uint64_t a1, uint64_t a2)
{
  sub_26BD0D430(&qword_2804498A0, type metadata accessor for AuthResponse.AuthenticationToken, &unk_26BDA3958);

  return sub_26BDA0A00();
}

uint64_t sub_26BD0CBE0()
{
  v0 = sub_26BDA0B10();
  __swift_allocate_value_buffer(v0, qword_280459F28);
  __swift_project_value_buffer(v0, qword_280459F28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804495C8, &unk_26BDA3CB0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804495D0, &qword_26BDA3510) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26BDA1990;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "title";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_26BDA0AE0();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "details";
  *(v10 + 1) = 7;
  v10[16] = 2;
  v9();
  return sub_26BDA0AF0();
}

uint64_t sub_26BD0CDA8()
{
  OUTLINED_FUNCTION_17_0();
  while (1)
  {
    result = sub_26BDA0900();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 2 || result == 1)
    {
      OUTLINED_FUNCTION_129();
      sub_26BDA0990();
    }
  }

  return result;
}

uint64_t sub_26BD0CE14()
{
  OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_29();
  if (!v3 || (result = OUTLINED_FUNCTION_103(v1, v2, 1), !v0))
  {
    OUTLINED_FUNCTION_29();
    if (!v7 || (result = OUTLINED_FUNCTION_103(v5, v6, 2), !v0))
    {
      type metadata accessor for AuthResponse.ImproveSearchConsent(0);
      OUTLINED_FUNCTION_129();
      return sub_26BDA0830();
    }
  }

  return result;
}

uint64_t sub_26BD0CEB0()
{
  OUTLINED_FUNCTION_184();
  OUTLINED_FUNCTION_20_0(v2);
  v5 = v5 && v3 == v4;
  if (!v5 && (sub_26BDA0FB0() & 1) == 0)
  {
    return 0;
  }

  v6 = *(v1 + 16) == *(v0 + 16) && *(v1 + 24) == *(v0 + 24);
  if (!v6 && (sub_26BDA0FB0() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for AuthResponse.ImproveSearchConsent(0);
  sub_26BDA0850();
  OUTLINED_FUNCTION_0_0();
  sub_26BD0D430(v7, v8, MEMORY[0x277D216D0]);
  return OUTLINED_FUNCTION_105() & 1;
}

uint64_t sub_26BD0CF5C(uint64_t (*a1)(void), unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  sub_26BDA1050();
  a1(0);
  sub_26BD0D430(a2, a3, a4);
  sub_26BDA0BA0();
  return sub_26BDA1070();
}

uint64_t sub_26BD0D004@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = sub_26BDA0850();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_26BD0D078(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  v5 = sub_26BDA0850();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_26BD0D11C(uint64_t a1, uint64_t a2)
{
  v4 = sub_26BD0D430(&qword_280449948, type metadata accessor for AuthResponse.ImproveSearchConsent, &unk_26BDA37B8);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26BD0D1BC@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_26BDA0B10();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t sub_26BD0D258(uint64_t a1)
{
  v2 = sub_26BD0D430(&qword_280449880, type metadata accessor for AuthResponse.ImproveSearchConsent, &unk_26BDA37F0);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26BD0D320(uint64_t a1, uint64_t a2)
{
  sub_26BD0D430(&qword_280449880, type metadata accessor for AuthResponse.ImproveSearchConsent, &unk_26BDA37F0);

  return sub_26BDA0A00();
}

uint64_t sub_26BD0D430(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_26BD0D868()
{
  OUTLINED_FUNCTION_184();
  __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_34();
  (*(v4 + 16))(v0, v1);
  return v0;
}

uint64_t sub_26BD0D8C4()
{
  OUTLINED_FUNCTION_184();
  v2(0);
  OUTLINED_FUNCTION_34();
  (*(v3 + 32))(v0, v1);
  return v0;
}

uint64_t sub_26BD0D920(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_34();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_26BD0D978()
{
  OUTLINED_FUNCTION_184();
  __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_34();
  (*(v4 + 40))(v0, v1);
  return v0;
}

uint64_t OUTLINED_FUNCTION_9_0(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_26BDA0AB0();
}

uint64_t OUTLINED_FUNCTION_23_0(uint64_t a1, uint64_t a2)
{

  return sub_26BDA0A80();
}

uint64_t CustomerContactInfo.familyName.setter()
{
  OUTLINED_FUNCTION_171();

  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  return result;
}

uint64_t CustomerContactInfo.country.setter()
{
  OUTLINED_FUNCTION_171();

  *(v1 + 48) = v2;
  *(v1 + 56) = v0;
  return result;
}

uint64_t CustomerContactInfo.phoneCountryCode.setter()
{
  OUTLINED_FUNCTION_171();

  *(v1 + 64) = v2;
  *(v1 + 72) = v0;
  return result;
}

uint64_t CustomerContactInfo.phoneNumber.setter()
{
  OUTLINED_FUNCTION_171();

  *(v1 + 80) = v2;
  *(v1 + 88) = v0;
  return result;
}

uint64_t CustomerContactInfo.emailAddress.setter()
{
  OUTLINED_FUNCTION_171();

  *(v1 + 96) = v2;
  *(v1 + 104) = v0;
  return result;
}

uint64_t CustomerContactInfo.locale.setter()
{
  OUTLINED_FUNCTION_171();

  *(v1 + 112) = v2;
  *(v1 + 120) = v0;
  return result;
}

uint64_t CustomerContactInfo.userEnteredLanguage.setter()
{
  OUTLINED_FUNCTION_171();

  *(v1 + 128) = v2;
  *(v1 + 136) = v0;
  return result;
}

uint64_t CustomerContactInfo.clientProvidedInfo.getter@<X0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804499C8, &qword_26BDA3CE0);
  OUTLINED_FUNCTION_110(v3);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_8_0();
  v5 = type metadata accessor for CustomerContactInfo(0);
  v6 = OUTLINED_FUNCTION_32_0(*(v5 + 56));
  sub_26BD0E880(v6, v7, &qword_2804499C8, &qword_26BDA3CE0);
  v8 = type metadata accessor for CustomerContactInfo.ClientProvidedInfo(0);
  v9 = OUTLINED_FUNCTION_114();
  OUTLINED_FUNCTION_112(v9, v10, v8);
  if (v11)
  {
    *a1 = 0;
    a1[1] = 0xE000000000000000;
    _s15SupportServices0A19OptionTypeNamespaceVACycfC_0();
    v12 = OUTLINED_FUNCTION_114();
    result = OUTLINED_FUNCTION_112(v12, v13, v8);
    if (!v11)
    {
      return sub_26BD04E80(v1, &qword_2804499C8, &qword_26BDA3CE0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_1();
    v14 = OUTLINED_FUNCTION_126();
    return sub_26BD0E8FC(v14, v15, v16);
  }

  return result;
}

uint64_t CustomerContactInfo.clientProvidedInfo.setter()
{
  v2 = OUTLINED_FUNCTION_134();
  v3 = *(type metadata accessor for CustomerContactInfo(v2) + 56);
  sub_26BD04E80(v1 + v3, &qword_2804499C8, &qword_26BDA3CE0);
  OUTLINED_FUNCTION_1_1();
  sub_26BD0E8FC(v0, v1 + v3, v4);
  type metadata accessor for CustomerContactInfo.ClientProvidedInfo(0);
  OUTLINED_FUNCTION_151();

  return __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
}

uint64_t CustomerContactInfo.ClientProvidedInfo.init()@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  type metadata accessor for CustomerContactInfo.ClientProvidedInfo(0);
  return _s15SupportServices0A19OptionTypeNamespaceVACycfC_0();
}

void (*CustomerContactInfo.clientProvidedInfo.modify(void *a1))(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  *v3 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804499C8, &qword_26BDA3CE0);
  OUTLINED_FUNCTION_110(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v3[1] = v6;
  v7 = type metadata accessor for CustomerContactInfo.ClientProvidedInfo(0);
  v3[2] = v7;
  OUTLINED_FUNCTION_34();
  v9 = *(v8 + 64);
  v3[3] = __swift_coroFrameAllocStub(v9);
  v10 = __swift_coroFrameAllocStub(v9);
  v3[4] = v10;
  v11 = *(type metadata accessor for CustomerContactInfo(0) + 56);
  *(v3 + 10) = v11;
  v12 = OUTLINED_FUNCTION_32_0(v11);
  sub_26BD0E880(v12, v13, &qword_2804499C8, &qword_26BDA3CE0);
  v14 = OUTLINED_FUNCTION_114();
  OUTLINED_FUNCTION_112(v14, v15, v7);
  if (v16)
  {
    *v10 = 0;
    v10[1] = 0xE000000000000000;
    _s15SupportServices0A19OptionTypeNamespaceVACycfC_0();
    v17 = OUTLINED_FUNCTION_114();
    OUTLINED_FUNCTION_112(v17, v18, v7);
    if (!v16)
    {
      sub_26BD04E80(v6, &qword_2804499C8, &qword_26BDA3CE0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_1();
    sub_26BD0E8FC(v6, v10, v19);
  }

  return sub_26BD0E194;
}

uint64_t CustomerContactInfo.hasClientProvidedInfo.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804499C8, &qword_26BDA3CE0);
  OUTLINED_FUNCTION_110(v0);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_8_0();
  v2 = type metadata accessor for CustomerContactInfo(0);
  v3 = OUTLINED_FUNCTION_32_0(*(v2 + 56));
  sub_26BD0E880(v3, v4, &qword_2804499C8, &qword_26BDA3CE0);
  type metadata accessor for CustomerContactInfo.ClientProvidedInfo(0);
  v5 = OUTLINED_FUNCTION_114();
  OUTLINED_FUNCTION_112(v5, v6, v7);
  if (v8)
  {
    v9 = 0;
  }

  else
  {
    v9 = 1;
  }

  v10 = OUTLINED_FUNCTION_126();
  sub_26BD04E80(v10, v11, &qword_26BDA3CE0);
  return v9;
}

Swift::Void __swiftcall CustomerContactInfo.clearClientProvidedInfo()()
{
  v1 = type metadata accessor for CustomerContactInfo(0);
  sub_26BD04E80(v0 + *(v1 + 56), &qword_2804499C8, &qword_26BDA3CE0);
  type metadata accessor for CustomerContactInfo.ClientProvidedInfo(0);
  OUTLINED_FUNCTION_123();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t CustomerContactInfo.unknownFields.getter()
{
  v0 = OUTLINED_FUNCTION_217();
  type metadata accessor for CustomerContactInfo(v0);
  sub_26BDA0850();
  OUTLINED_FUNCTION_34();
  v1 = OUTLINED_FUNCTION_148();

  return v2(v1);
}

uint64_t CustomerContactInfo.unknownFields.setter()
{
  v0 = OUTLINED_FUNCTION_134();
  type metadata accessor for CustomerContactInfo(v0);
  sub_26BDA0850();
  OUTLINED_FUNCTION_34();
  v1 = OUTLINED_FUNCTION_234();

  return v2(v1);
}

uint64_t CustomerContactInfo.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_134();
  type metadata accessor for CustomerContactInfo(v0);
  return OUTLINED_FUNCTION_185();
}

uint64_t CustomerContactInfo.ClientProvidedInfo.unknownFields.getter()
{
  v0 = OUTLINED_FUNCTION_217();
  type metadata accessor for CustomerContactInfo.ClientProvidedInfo(v0);
  sub_26BDA0850();
  OUTLINED_FUNCTION_34();
  v1 = OUTLINED_FUNCTION_148();

  return v2(v1);
}

uint64_t CustomerContactInfo.ClientProvidedInfo.unknownFields.setter()
{
  v0 = OUTLINED_FUNCTION_134();
  type metadata accessor for CustomerContactInfo.ClientProvidedInfo(v0);
  sub_26BDA0850();
  OUTLINED_FUNCTION_34();
  v1 = OUTLINED_FUNCTION_234();

  return v2(v1);
}

uint64_t CustomerContactInfo.ClientProvidedInfo.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_134();
  type metadata accessor for CustomerContactInfo.ClientProvidedInfo(v0);
  return OUTLINED_FUNCTION_185();
}

uint64_t CustomerContactInfo.init()@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_34_0(v2);
  a1[14] = 0;
  a1[15] = v3;
  a1[16] = 0;
  a1[17] = v3;
  type metadata accessor for CustomerContactInfo(0);
  _s15SupportServices0A19OptionTypeNamespaceVACycfC_0();
  type metadata accessor for CustomerContactInfo.ClientProvidedInfo(0);
  OUTLINED_FUNCTION_123();

  return __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
}

uint64_t Placemark.coordinate.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804499D0, &qword_26BDA3CE8);
  OUTLINED_FUNCTION_110(v1);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_8_0();
  v3 = type metadata accessor for Placemark(0);
  v4 = OUTLINED_FUNCTION_32_0(*(v3 + 48));
  sub_26BD0E880(v4, v5, &qword_2804499D0, &qword_26BDA3CE8);
  v6 = type metadata accessor for Placemark.Coordinate(0);
  v7 = OUTLINED_FUNCTION_114();
  OUTLINED_FUNCTION_112(v7, v8, v6);
  if (v9)
  {
    OUTLINED_FUNCTION_82();
    _s15SupportServices0A19OptionTypeNamespaceVACycfC_0();
    v10 = OUTLINED_FUNCTION_114();
    result = OUTLINED_FUNCTION_112(v10, v11, v6);
    if (!v9)
    {
      return sub_26BD04E80(v0, &qword_2804499D0, &qword_26BDA3CE8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_0();
    v12 = OUTLINED_FUNCTION_126();
    return sub_26BD0E8FC(v12, v13, v14);
  }

  return result;
}

uint64_t sub_26BD0E730(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), void (*a6)(void), uint64_t (*a7)(char *))
{
  v10 = (a5)(0, a2, a3, a4);
  OUTLINED_FUNCTION_110(v10);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v11);
  v13 = &v15 - v12;
  sub_26BD0EBFC(a1, &v15 - v12, a6);
  return a7(v13);
}

uint64_t Placemark.coordinate.setter()
{
  v2 = OUTLINED_FUNCTION_134();
  v3 = *(type metadata accessor for Placemark(v2) + 48);
  sub_26BD04E80(v1 + v3, &qword_2804499D0, &qword_26BDA3CE8);
  OUTLINED_FUNCTION_2_0();
  sub_26BD0E8FC(v0, v1 + v3, v4);
  type metadata accessor for Placemark.Coordinate(0);
  OUTLINED_FUNCTION_151();

  return __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
}

uint64_t sub_26BD0E880(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_34();
  v5 = OUTLINED_FUNCTION_147();
  v6(v5);
  return a2;
}

uint64_t sub_26BD0E8FC(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_34();
  v4 = OUTLINED_FUNCTION_147();
  v5(v4);
  return a2;
}

void (*Placemark.coordinate.modify(void *a1))(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  *v3 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804499D0, &qword_26BDA3CE8);
  OUTLINED_FUNCTION_110(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v3[1] = v6;
  v7 = type metadata accessor for Placemark.Coordinate(0);
  v3[2] = v7;
  OUTLINED_FUNCTION_34();
  v9 = *(v8 + 64);
  v3[3] = __swift_coroFrameAllocStub(v9);
  v10 = __swift_coroFrameAllocStub(v9);
  v3[4] = v10;
  v11 = *(type metadata accessor for Placemark(0) + 48);
  *(v3 + 10) = v11;
  v12 = OUTLINED_FUNCTION_32_0(v11);
  sub_26BD0E880(v12, v13, &qword_2804499D0, &qword_26BDA3CE8);
  v14 = OUTLINED_FUNCTION_114();
  OUTLINED_FUNCTION_112(v14, v15, v7);
  if (v16)
  {
    *v10 = 0;
    v10[1] = 0xE000000000000000;
    v10[2] = 0;
    v10[3] = 0xE000000000000000;
    _s15SupportServices0A19OptionTypeNamespaceVACycfC_0();
    v17 = OUTLINED_FUNCTION_114();
    OUTLINED_FUNCTION_112(v17, v18, v7);
    if (!v16)
    {
      sub_26BD04E80(v6, &qword_2804499D0, &qword_26BDA3CE8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_0();
    sub_26BD0E8FC(v6, v10, v19);
  }

  return sub_26BD0EAC8;
}

void sub_26BD0EAF0(uint64_t **a1, char a2, uint64_t *a3, uint64_t *a4, void (*a5)(void))
{
  v8 = *a1;
  v9 = *(*a1 + 10);
  v10 = (*a1)[3];
  v11 = (*a1)[4];
  v12 = (*a1)[1];
  v13 = (*a1)[2];
  v14 = **a1;
  if (a2)
  {
    sub_26BD0EBFC((*a1)[4], v10, a5);
    sub_26BD04E80(v14 + v9, a3, a4);
    sub_26BD0E8FC(v10, v14 + v9, a5);
    OUTLINED_FUNCTION_151();
    __swift_storeEnumTagSinglePayload(v15, v16, v17, v13);
    sub_26BD0EC58();
  }

  else
  {
    sub_26BD04E80(v14 + v9, a3, a4);
    sub_26BD0E8FC(v11, v14 + v9, a5);
    OUTLINED_FUNCTION_151();
    __swift_storeEnumTagSinglePayload(v18, v19, v20, v13);
  }

  free(v11);
  free(v10);
  free(v12);

  free(v8);
}

uint64_t sub_26BD0EBFC(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_34();
  v4 = OUTLINED_FUNCTION_147();
  v5(v4);
  return a2;
}

uint64_t sub_26BD0EC58()
{
  v1 = OUTLINED_FUNCTION_134();
  v2(v1);
  OUTLINED_FUNCTION_34();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t Placemark.hasCoordinate.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804499D0, &qword_26BDA3CE8);
  OUTLINED_FUNCTION_110(v0);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_8_0();
  v2 = type metadata accessor for Placemark(0);
  v3 = OUTLINED_FUNCTION_32_0(*(v2 + 48));
  sub_26BD0E880(v3, v4, &qword_2804499D0, &qword_26BDA3CE8);
  type metadata accessor for Placemark.Coordinate(0);
  v5 = OUTLINED_FUNCTION_114();
  OUTLINED_FUNCTION_112(v5, v6, v7);
  if (v8)
  {
    v9 = 0;
  }

  else
  {
    v9 = 1;
  }

  v10 = OUTLINED_FUNCTION_126();
  sub_26BD04E80(v10, v11, &qword_26BDA3CE8);
  return v9;
}

Swift::Void __swiftcall Placemark.clearCoordinate()()
{
  v1 = type metadata accessor for Placemark(0);
  sub_26BD04E80(v0 + *(v1 + 48), &qword_2804499D0, &qword_26BDA3CE8);
  type metadata accessor for Placemark.Coordinate(0);
  OUTLINED_FUNCTION_123();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t Placemark.unknownFields.getter()
{
  v0 = OUTLINED_FUNCTION_217();
  type metadata accessor for Placemark(v0);
  sub_26BDA0850();
  OUTLINED_FUNCTION_34();
  v1 = OUTLINED_FUNCTION_148();

  return v2(v1);
}

uint64_t Placemark.unknownFields.setter()
{
  v0 = OUTLINED_FUNCTION_134();
  type metadata accessor for Placemark(v0);
  sub_26BDA0850();
  OUTLINED_FUNCTION_34();
  v1 = OUTLINED_FUNCTION_234();

  return v2(v1);
}

uint64_t Placemark.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_134();
  type metadata accessor for Placemark(v0);
  return OUTLINED_FUNCTION_185();
}

uint64_t Placemark.Coordinate.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_134();
  type metadata accessor for Placemark.Coordinate(v0);
  return OUTLINED_FUNCTION_185();
}

uint64_t Placemark.init()()
{
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_34_0(v0);
  type metadata accessor for Placemark(0);
  _s15SupportServices0A19OptionTypeNamespaceVACycfC_0();
  type metadata accessor for Placemark.Coordinate(0);
  OUTLINED_FUNCTION_123();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t CallContactDetails.phoneNumber.setter()
{
  OUTLINED_FUNCTION_171();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t CallContactDetails.operatingHours.setter()
{
  OUTLINED_FUNCTION_171();

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t sub_26BD0F0F4()
{
  v0 = OUTLINED_FUNCTION_217();
  v1(v0);
  sub_26BDA0850();
  OUTLINED_FUNCTION_34();
  v2 = OUTLINED_FUNCTION_148();

  return v3(v2);
}

uint64_t sub_26BD0F19C()
{
  v0 = OUTLINED_FUNCTION_134();
  v1(v0);
  sub_26BDA0850();
  OUTLINED_FUNCTION_34();
  v2 = OUTLINED_FUNCTION_234();

  return v3(v2);
}

uint64_t CallContactDetails.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_134();
  type metadata accessor for CallContactDetails(v0);
  return OUTLINED_FUNCTION_185();
}

uint64_t sub_26BD0F264()
{
  OUTLINED_FUNCTION_82();
  v0(0);
  return _s15SupportServices0A19OptionTypeNamespaceVACycfC_0();
}

uint64_t sub_26BD0F2BC()
{
  v0 = sub_26BDA0B10();
  __swift_allocate_value_buffer(v0, qword_280449950);
  __swift_project_value_buffer(v0, qword_280449950);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804495C8, &unk_26BDA3CB0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804495D0, &qword_26BDA3510) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_26BDA3650;
  v4 = v33 + v3;
  v5 = v33 + v3 + v1[14];
  *(v33 + v3) = 1;
  *v5 = "apple_id";
  *(v5 + 8) = 8;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21888];
  v7 = sub_26BDA0AE0();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "given_name";
  *(v9 + 8) = 10;
  *(v9 + 16) = 2;
  *(v9 + 24) = "userEnteredFirstName";
  *(v9 + 32) = 20;
  *(v9 + 40) = 2;
  v8();
  v10 = v1[14];
  v11 = (v4 + 2 * v2);
  *v11 = 3;
  v12 = v11 + v10;
  *v12 = "family_name";
  *(v12 + 1) = 11;
  v12[16] = 2;
  *(v12 + 3) = "userEnteredLastName";
  *(v12 + 4) = 19;
  v12[40] = 2;
  v8();
  v13 = v1[14];
  v14 = (v4 + 3 * v2);
  *v14 = 4;
  v15 = v14 + v13;
  *v15 = "country";
  *(v15 + 1) = 7;
  v15[16] = 2;
  *(v15 + 3) = "userEnteredCountry";
  *(v15 + 4) = 18;
  v15[40] = 2;
  v8();
  v16 = v1[14];
  v17 = (v4 + 4 * v2);
  *v17 = 5;
  v18 = v17 + v16;
  *v18 = "phone_country_code";
  *(v18 + 1) = 18;
  v18[16] = 2;
  *(v18 + 3) = "userEnteredCountryCode";
  *(v18 + 4) = 22;
  v18[40] = 2;
  v8();
  v19 = v1[14];
  v20 = (v4 + 5 * v2);
  *v20 = 6;
  v21 = v20 + v19;
  *v21 = "phone_number";
  *(v21 + 1) = 12;
  v21[16] = 2;
  *(v21 + 3) = "userEnteredPhoneNumber";
  *(v21 + 4) = 22;
  v21[40] = 2;
  v8();
  v22 = v1[14];
  v23 = (v4 + 6 * v2);
  *v23 = 7;
  v24 = v23 + v22;
  *v24 = "email_address";
  *(v24 + 1) = 13;
  v24[16] = 2;
  *(v24 + 3) = "userEnteredEmail";
  *(v24 + 4) = 16;
  v24[40] = 2;
  v8();
  v25 = v1[14];
  v26 = (v4 + 7 * v2);
  *v26 = 8;
  v27 = v26 + v25;
  *v27 = "locale";
  *(v27 + 1) = 6;
  v27[16] = 2;
  *(v27 + 3) = "userEnteredLocale";
  *(v27 + 4) = 17;
  v27[40] = 2;
  v8();
  v28 = (v4 + 8 * v2);
  v29 = v28 + v1[14];
  *v28 = 9;
  *v29 = "user_entered_language";
  *(v29 + 1) = 21;
  v29[16] = 2;
  v8();
  v30 = (v4 + 9 * v2);
  v31 = v30 + v1[14];
  *v30 = 10;
  *v31 = "client_provided_info";
  *(v31 + 1) = 20;
  v31[16] = 2;
  v8();
  return sub_26BDA0AF0();
}

uint64_t CustomerContactInfo.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  while (1)
  {
    result = sub_26BDA0900();
    if (v4 || (v6 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
      case 2:
      case 3:
      case 4:
      case 5:
      case 6:
      case 7:
      case 8:
      case 9:
        sub_26BDA0990();
        goto LABEL_7;
      case 10:
        type metadata accessor for CustomerContactInfo(0);
        type metadata accessor for CustomerContactInfo.ClientProvidedInfo(0);
        OUTLINED_FUNCTION_19_0();
        sub_26BD11FF8(&qword_2804499D8, v7, &protocol conformance descriptor for CustomerContactInfo.ClientProvidedInfo);
        sub_26BDA09B0();
LABEL_7:
        v4 = 0;
        break;
      default:
        continue;
    }
  }
}

uint64_t CustomerContactInfo.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_60();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804499C8, &qword_26BDA3CE0);
  OUTLINED_FUNCTION_110(v3);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_47_0();
  v6 = type metadata accessor for CustomerContactInfo.ClientProvidedInfo(v5);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_44();
  v10 = v9 - v8;
  OUTLINED_FUNCTION_29();
  if (!v13 || (result = OUTLINED_FUNCTION_103(v11, v12, 1), !v0))
  {
    OUTLINED_FUNCTION_29();
    if (!v17 || (result = OUTLINED_FUNCTION_103(v15, v16, 2), !v0))
    {
      OUTLINED_FUNCTION_29();
      if (!v20 || (result = OUTLINED_FUNCTION_103(v18, v19, 3), !v0))
      {
        OUTLINED_FUNCTION_29();
        if (!v23 || (result = OUTLINED_FUNCTION_103(v21, v22, 4), !v0))
        {
          OUTLINED_FUNCTION_29();
          if (!v26 || (result = OUTLINED_FUNCTION_103(v24, v25, 5), !v0))
          {
            OUTLINED_FUNCTION_29();
            if (!v29 || (result = OUTLINED_FUNCTION_103(v27, v28, 6), !v0))
            {
              OUTLINED_FUNCTION_29();
              if (!v32 || (result = OUTLINED_FUNCTION_103(v30, v31, 7), !v0))
              {
                OUTLINED_FUNCTION_29();
                if (!v35 || (result = OUTLINED_FUNCTION_103(v33, v34, 8), !v0))
                {
                  OUTLINED_FUNCTION_29();
                  if (!v38 || (result = OUTLINED_FUNCTION_103(v36, v37, 9), !v0))
                  {
                    v39 = type metadata accessor for CustomerContactInfo(0);
                    sub_26BD0E880(v1 + *(v39 + 56), v2, &qword_2804499C8, &qword_26BDA3CE0);
                    if (__swift_getEnumTagSinglePayload(v2, 1, v6) == 1)
                    {
                      sub_26BD04E80(v2, &qword_2804499C8, &qword_26BDA3CE0);
                    }

                    else
                    {
                      OUTLINED_FUNCTION_1_1();
                      sub_26BD0E8FC(v2, v10, v40);
                      OUTLINED_FUNCTION_19_0();
                      v43 = sub_26BD11FF8(v41, v42, &protocol conformance descriptor for CustomerContactInfo.ClientProvidedInfo);
                      OUTLINED_FUNCTION_36_0(v10, 10, v44, v43);
                      result = sub_26BD0EC58();
                      if (v0)
                      {
                        return result;
                      }
                    }

                    return OUTLINED_FUNCTION_104();
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t static CustomerContactInfo.== infix(_:_:)()
{
  OUTLINED_FUNCTION_171();
  type metadata accessor for CustomerContactInfo.ClientProvidedInfo(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_44();
  v6 = (v5 - v4);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804499C8, &qword_26BDA3CE0);
  OUTLINED_FUNCTION_110(v7);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v8);
  v10 = (v35 - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804499E0, &qword_26BDA3D08);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_8_0();
  v13 = *v1 == *v0 && v1[1] == v0[1];
  if (!v13 && (sub_26BDA0FB0() & 1) == 0)
  {
    goto LABEL_56;
  }

  v14 = v1[2] == v0[2] && v1[3] == v0[3];
  if (!v14 && (sub_26BDA0FB0() & 1) == 0)
  {
    goto LABEL_56;
  }

  v15 = v1[4] == v0[4] && v1[5] == v0[5];
  if (!v15 && (sub_26BDA0FB0() & 1) == 0)
  {
    goto LABEL_56;
  }

  v16 = v1[6] == v0[6] && v1[7] == v0[7];
  if (!v16 && (sub_26BDA0FB0() & 1) == 0)
  {
    goto LABEL_56;
  }

  v17 = v1[8] == v0[8] && v1[9] == v0[9];
  if (!v17 && (sub_26BDA0FB0() & 1) == 0)
  {
    goto LABEL_56;
  }

  v18 = v1[10] == v0[10] && v1[11] == v0[11];
  if (!v18 && (sub_26BDA0FB0() & 1) == 0)
  {
    goto LABEL_56;
  }

  v19 = v1[12] == v0[12] && v1[13] == v0[13];
  if (!v19 && (sub_26BDA0FB0() & 1) == 0)
  {
    goto LABEL_56;
  }

  v20 = v1[14] == v0[14] && v1[15] == v0[15];
  if (!v20 && (sub_26BDA0FB0() & 1) == 0)
  {
    goto LABEL_56;
  }

  v21 = v1[16] == v0[16] && v1[17] == v0[17];
  if (!v21 && (sub_26BDA0FB0() & 1) == 0)
  {
    goto LABEL_56;
  }

  v35[1] = type metadata accessor for CustomerContactInfo(0);
  v22 = *(v11 + 48);
  OUTLINED_FUNCTION_53_0();
  OUTLINED_FUNCTION_52_0();
  OUTLINED_FUNCTION_28(v2);
  if (v13)
  {
    OUTLINED_FUNCTION_28(v2 + v22);
    if (v13)
    {
      sub_26BD04E80(v2, &qword_2804499C8, &qword_26BDA3CE0);
LABEL_64:
      sub_26BDA0850();
      OUTLINED_FUNCTION_0_1();
      sub_26BD11FF8(v33, v34, MEMORY[0x277D216D0]);
      v26 = OUTLINED_FUNCTION_308();
      return v26 & 1;
    }

    goto LABEL_54;
  }

  sub_26BD0E880(v2, v10, &qword_2804499C8, &qword_26BDA3CE0);
  OUTLINED_FUNCTION_28(v2 + v22);
  if (v23)
  {
    sub_26BD0EC58();
LABEL_54:
    v24 = &qword_2804499E0;
    v25 = &qword_26BDA3D08;
LABEL_55:
    sub_26BD04E80(v2, v24, v25);
    goto LABEL_56;
  }

  OUTLINED_FUNCTION_1_1();
  sub_26BD0E8FC(v2 + v22, v6, v28);
  v29 = *v10 == *v6 && v10[1] == v6[1];
  if (!v29 && (sub_26BDA0FB0() & 1) == 0)
  {
    sub_26BD0EC58();
    sub_26BD0EC58();
    v24 = &qword_2804499C8;
    v25 = &qword_26BDA3CE0;
    goto LABEL_55;
  }

  sub_26BDA0850();
  OUTLINED_FUNCTION_0_1();
  sub_26BD11FF8(v30, v31, MEMORY[0x277D216D0]);
  v32 = OUTLINED_FUNCTION_54_0();
  sub_26BD0EC58();
  sub_26BD0EC58();
  sub_26BD04E80(v2, &qword_2804499C8, &qword_26BDA3CE0);
  if (v32)
  {
    goto LABEL_64;
  }

LABEL_56:
  v26 = 0;
  return v26 & 1;
}

uint64_t sub_26BD10018(uint64_t a1, uint64_t a2)
{
  v4 = sub_26BD11FF8(&qword_280449B08, type metadata accessor for CustomerContactInfo, &protocol conformance descriptor for CustomerContactInfo);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26BD10098(uint64_t a1)
{
  v2 = sub_26BD11FF8(&qword_280449A28, type metadata accessor for CustomerContactInfo, &protocol conformance descriptor for CustomerContactInfo);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26BD10108(uint64_t a1, uint64_t a2)
{
  sub_26BD11FF8(&qword_280449A28, type metadata accessor for CustomerContactInfo, &protocol conformance descriptor for CustomerContactInfo);

  return sub_26BDA0A00();
}

uint64_t sub_26BD101A0()
{
  v0 = sub_26BDA0B10();
  __swift_allocate_value_buffer(v0, qword_280449968);
  __swift_project_value_buffer(v0, qword_280449968);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804495C8, &unk_26BDA3CB0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804495D0, &qword_26BDA3510) - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_26BDA1A00;
  v4 = v3 + v2 + v1[14];
  *(v3 + v2) = 1;
  *v4 = "formatted_name";
  *(v4 + 8) = 14;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x277D21888];
  v6 = sub_26BDA0AE0();
  (*(*(v6 - 8) + 104))(v4, v5, v6);
  return sub_26BDA0AF0();
}

uint64_t CustomerContactInfo.ClientProvidedInfo.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_109();
  while (1)
  {
    result = sub_26BDA0900();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_26BDA0990();
    }
  }

  return result;
}

uint64_t CustomerContactInfo.ClientProvidedInfo.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_29();
  if (!v3 || (result = OUTLINED_FUNCTION_103(v1, v2, 1), !v0))
  {
    type metadata accessor for CustomerContactInfo.ClientProvidedInfo(0);
    return OUTLINED_FUNCTION_104();
  }

  return result;
}

uint64_t static CustomerContactInfo.ClientProvidedInfo.== infix(_:_:)(uint64_t a1)
{
  OUTLINED_FUNCTION_86(a1);
  v3 = v3 && v1 == v2;
  if (!v3 && (sub_26BDA0FB0() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for CustomerContactInfo.ClientProvidedInfo(0);
  sub_26BDA0850();
  OUTLINED_FUNCTION_0_1();
  sub_26BD11FF8(v4, v5, MEMORY[0x277D216D0]);
  return OUTLINED_FUNCTION_105() & 1;
}

uint64_t sub_26BD10518(uint64_t a1, uint64_t a2)
{
  v4 = sub_26BD11FF8(&qword_280449B00, type metadata accessor for CustomerContactInfo.ClientProvidedInfo, &protocol conformance descriptor for CustomerContactInfo.ClientProvidedInfo);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26BD10598(uint64_t a1)
{
  v2 = sub_26BD11FF8(&qword_2804499D8, type metadata accessor for CustomerContactInfo.ClientProvidedInfo, &protocol conformance descriptor for CustomerContactInfo.ClientProvidedInfo);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26BD10608(uint64_t a1, uint64_t a2)
{
  sub_26BD11FF8(&qword_2804499D8, type metadata accessor for CustomerContactInfo.ClientProvidedInfo, &protocol conformance descriptor for CustomerContactInfo.ClientProvidedInfo);

  return sub_26BDA0A00();
}

uint64_t sub_26BD106A4()
{
  v0 = sub_26BDA0B10();
  __swift_allocate_value_buffer(v0, qword_280449980);
  __swift_project_value_buffer(v0, qword_280449980);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804495C8, &unk_26BDA3CB0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804495D0, &qword_26BDA3510) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_26BDA1A10;
  v4 = v26 + v3;
  v5 = v26 + v3 + v1[14];
  *(v26 + v3) = 1;
  *v5 = "street_line_1";
  *(v5 + 8) = 13;
  *(v5 + 16) = 2;
  *(v5 + 24) = "streetAddress1";
  *(v5 + 32) = 14;
  *(v5 + 40) = 2;
  v6 = *MEMORY[0x277D21878];
  v7 = sub_26BDA0AE0();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "street_line_2";
  *(v9 + 8) = 13;
  *(v9 + 16) = 2;
  *(v9 + 24) = "streetAddress2";
  *(v9 + 32) = 14;
  *(v9 + 40) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "city";
  *(v11 + 1) = 4;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "state";
  *(v13 + 1) = 5;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "postal_code";
  *(v15 + 1) = 11;
  v15[16] = 2;
  v8();
  v16 = v1[14];
  v17 = (v4 + 5 * v2);
  *v17 = 7;
  v18 = v17 + v16;
  *v18 = "iso_country_code";
  *(v18 + 1) = 16;
  v18[16] = 2;
  *(v18 + 3) = "country";
  *(v18 + 4) = 7;
  v18[40] = 2;
  v8();
  v19 = v1[14];
  v20 = (v4 + 6 * v2);
  *v20 = 6;
  v21 = v20 + v19;
  *v21 = "market";
  *(v21 + 1) = 6;
  v21[16] = 2;
  *(v21 + 3) = "regionName";
  *(v21 + 4) = 10;
  v21[40] = 2;
  v8();
  v22 = v1[14];
  v23 = (v4 + 7 * v2);
  *v23 = 8;
  v24 = v23 + v22;
  *v24 = "coordinate";
  *(v24 + 1) = 10;
  v24[16] = 2;
  *(v24 + 3) = "geo";
  *(v24 + 4) = 3;
  v24[40] = 2;
  v8();
  return sub_26BDA0AF0();
}

uint64_t Placemark.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  while (1)
  {
    result = sub_26BDA0900();
    if (v4 || (v6 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
      case 2:
      case 3:
      case 4:
      case 5:
      case 6:
      case 7:
        sub_26BDA0990();
        goto LABEL_7;
      case 8:
        type metadata accessor for Placemark(0);
        type metadata accessor for Placemark.Coordinate(0);
        OUTLINED_FUNCTION_20_1();
        sub_26BD11FF8(&qword_2804499F8, v7, &protocol conformance descriptor for Placemark.Coordinate);
        sub_26BDA09B0();
LABEL_7:
        v4 = 0;
        break;
      default:
        continue;
    }
  }
}

uint64_t Placemark.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_60();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804499D0, &qword_26BDA3CE8);
  OUTLINED_FUNCTION_110(v3);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_47_0();
  v6 = type metadata accessor for Placemark.Coordinate(v5);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_44();
  v10 = v9 - v8;
  OUTLINED_FUNCTION_29();
  if (!v13 || (result = OUTLINED_FUNCTION_103(v11, v12, 1), !v0))
  {
    OUTLINED_FUNCTION_29();
    if (!v17 || (result = OUTLINED_FUNCTION_103(v15, v16, 2), !v0))
    {
      OUTLINED_FUNCTION_29();
      if (!v20 || (result = OUTLINED_FUNCTION_103(v18, v19, 3), !v0))
      {
        OUTLINED_FUNCTION_29();
        if (!v23 || (result = OUTLINED_FUNCTION_103(v21, v22, 4), !v0))
        {
          OUTLINED_FUNCTION_29();
          if (!v26 || (result = OUTLINED_FUNCTION_103(v24, v25, 5), !v0))
          {
            OUTLINED_FUNCTION_29();
            if (!v29 || (result = OUTLINED_FUNCTION_103(v27, v28, 6), !v0))
            {
              OUTLINED_FUNCTION_29();
              if (!v32 || (result = OUTLINED_FUNCTION_103(v30, v31, 7), !v0))
              {
                v33 = type metadata accessor for Placemark(0);
                sub_26BD0E880(v1 + *(v33 + 48), v2, &qword_2804499D0, &qword_26BDA3CE8);
                if (__swift_getEnumTagSinglePayload(v2, 1, v6) == 1)
                {
                  sub_26BD04E80(v2, &qword_2804499D0, &qword_26BDA3CE8);
                }

                else
                {
                  OUTLINED_FUNCTION_2_0();
                  sub_26BD0E8FC(v2, v10, v34);
                  OUTLINED_FUNCTION_20_1();
                  v37 = sub_26BD11FF8(v35, v36, &protocol conformance descriptor for Placemark.Coordinate);
                  OUTLINED_FUNCTION_36_0(v10, 8, v38, v37);
                  result = sub_26BD0EC58();
                  if (v0)
                  {
                    return result;
                  }
                }

                return OUTLINED_FUNCTION_104();
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t static Placemark.== infix(_:_:)()
{
  OUTLINED_FUNCTION_171();
  type metadata accessor for Placemark.Coordinate(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_44();
  v6 = (v5 - v4);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804499D0, &qword_26BDA3CE8);
  OUTLINED_FUNCTION_110(v7);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v8);
  v10 = (v34 - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280449A00, &unk_26BDA3D10);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_8_0();
  v13 = *v1 == *v0 && v1[1] == v0[1];
  if (!v13 && (sub_26BDA0FB0() & 1) == 0)
  {
    goto LABEL_46;
  }

  v14 = v1[2] == v0[2] && v1[3] == v0[3];
  if (!v14 && (sub_26BDA0FB0() & 1) == 0)
  {
    goto LABEL_46;
  }

  v15 = v1[4] == v0[4] && v1[5] == v0[5];
  if (!v15 && (sub_26BDA0FB0() & 1) == 0)
  {
    goto LABEL_46;
  }

  v16 = v1[6] == v0[6] && v1[7] == v0[7];
  if (!v16 && (sub_26BDA0FB0() & 1) == 0)
  {
    goto LABEL_46;
  }

  v17 = v1[8] == v0[8] && v1[9] == v0[9];
  if (!v17 && (sub_26BDA0FB0() & 1) == 0)
  {
    goto LABEL_46;
  }

  v18 = v1[10] == v0[10] && v1[11] == v0[11];
  if (!v18 && (sub_26BDA0FB0() & 1) == 0)
  {
    goto LABEL_46;
  }

  v19 = v1[12] == v0[12] && v1[13] == v0[13];
  if (!v19 && (sub_26BDA0FB0() & 1) == 0)
  {
    goto LABEL_46;
  }

  v34[1] = type metadata accessor for Placemark(0);
  v20 = *(v11 + 48);
  OUTLINED_FUNCTION_53_0();
  OUTLINED_FUNCTION_52_0();
  OUTLINED_FUNCTION_28(v2);
  if (v13)
  {
    OUTLINED_FUNCTION_28(v2 + v20);
    if (v13)
    {
      sub_26BD04E80(v2, &qword_2804499D0, &qword_26BDA3CE8);
LABEL_59:
      sub_26BDA0850();
      OUTLINED_FUNCTION_0_1();
      sub_26BD11FF8(v32, v33, MEMORY[0x277D216D0]);
      v24 = OUTLINED_FUNCTION_308();
      return v24 & 1;
    }

    goto LABEL_44;
  }

  sub_26BD0E880(v2, v10, &qword_2804499D0, &qword_26BDA3CE8);
  OUTLINED_FUNCTION_28(v2 + v20);
  if (v21)
  {
    sub_26BD0EC58();
LABEL_44:
    v22 = &qword_280449A00;
    v23 = &unk_26BDA3D10;
LABEL_45:
    sub_26BD04E80(v2, v22, v23);
    goto LABEL_46;
  }

  OUTLINED_FUNCTION_2_0();
  sub_26BD0E8FC(v2 + v20, v6, v26);
  v27 = *v10 == *v6 && v10[1] == v6[1];
  if (!v27 && (sub_26BDA0FB0() & 1) == 0 || (v10[2] == v6[2] ? (v28 = v10[3] == v6[3]) : (v28 = 0), !v28 && (sub_26BDA0FB0() & 1) == 0))
  {
    sub_26BD0EC58();
    sub_26BD0EC58();
    v22 = &qword_2804499D0;
    v23 = &qword_26BDA3CE8;
    goto LABEL_45;
  }

  sub_26BDA0850();
  OUTLINED_FUNCTION_0_1();
  sub_26BD11FF8(v29, v30, MEMORY[0x277D216D0]);
  v31 = OUTLINED_FUNCTION_54_0();
  sub_26BD0EC58();
  sub_26BD0EC58();
  sub_26BD04E80(v2, &qword_2804499D0, &qword_26BDA3CE8);
  if (v31)
  {
    goto LABEL_59;
  }

LABEL_46:
  v24 = 0;
  return v24 & 1;
}

uint64_t sub_26BD112E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_26BD11FF8(&qword_280449AF8, type metadata accessor for Placemark, &protocol conformance descriptor for Placemark);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26BD11360(uint64_t a1)
{
  v2 = sub_26BD11FF8(&qword_280449A50, type metadata accessor for Placemark, &protocol conformance descriptor for Placemark);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26BD113D0(uint64_t a1, uint64_t a2)
{
  sub_26BD11FF8(&qword_280449A50, type metadata accessor for Placemark, &protocol conformance descriptor for Placemark);

  return sub_26BDA0A00();
}

uint64_t sub_26BD11468()
{
  v0 = sub_26BDA0B10();
  __swift_allocate_value_buffer(v0, qword_280449998);
  __swift_project_value_buffer(v0, qword_280449998);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804495C8, &unk_26BDA3CB0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804495D0, &qword_26BDA3510) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26BDA1990;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "latitude_string";
  *(v6 + 8) = 15;
  *(v6 + 16) = 2;
  *(v6 + 24) = "latitude";
  *(v6 + 32) = 8;
  *(v6 + 40) = 2;
  v7 = *MEMORY[0x277D21878];
  v8 = sub_26BDA0AE0();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "longitude_string";
  *(v10 + 1) = 16;
  v10[16] = 2;
  *(v10 + 3) = "longitude";
  *(v10 + 4) = 9;
  v10[40] = 2;
  v9();
  return sub_26BDA0AF0();
}

uint64_t sub_26BD1174C(uint64_t a1, uint64_t a2)
{
  v4 = sub_26BD11FF8(&qword_280449AF0, type metadata accessor for Placemark.Coordinate, &protocol conformance descriptor for Placemark.Coordinate);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26BD117CC(uint64_t a1)
{
  v2 = sub_26BD11FF8(&qword_2804499F8, type metadata accessor for Placemark.Coordinate, &protocol conformance descriptor for Placemark.Coordinate);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26BD1183C(uint64_t a1, uint64_t a2)
{
  sub_26BD11FF8(&qword_2804499F8, type metadata accessor for Placemark.Coordinate, &protocol conformance descriptor for Placemark.Coordinate);

  return sub_26BDA0A00();
}

uint64_t sub_26BD118D4()
{
  v0 = sub_26BDA0B10();
  __swift_allocate_value_buffer(v0, qword_2804499B0);
  __swift_project_value_buffer(v0, qword_2804499B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804495C8, &unk_26BDA3CB0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804495D0, &qword_26BDA3510) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26BDA1990;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "phone_number";
  *(v6 + 8) = 12;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21888];
  v8 = sub_26BDA0AE0();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "operating_hours";
  *(v10 + 1) = 15;
  v10[16] = 2;
  v9();
  return sub_26BDA0AF0();
}

uint64_t sub_26BD11AC0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_26BDA0B10();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t sub_26BD11B70()
{
  OUTLINED_FUNCTION_109();
  while (1)
  {
    result = sub_26BDA0900();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 2 || result == 1)
    {
      sub_26BDA0990();
    }
  }

  return result;
}

uint64_t sub_26BD11C04(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_29();
  if (!v8 || (result = OUTLINED_FUNCTION_103(v6, v7, 1), !v4))
  {
    OUTLINED_FUNCTION_29();
    if (!v12 || (result = OUTLINED_FUNCTION_103(v10, v11, 2), !v4))
    {
      a4(0);
      return OUTLINED_FUNCTION_104();
    }
  }

  return result;
}

uint64_t sub_26BD11CAC(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  OUTLINED_FUNCTION_86(a1);
  v8 = v8 && v6 == v7;
  if (!v8 && (sub_26BDA0FB0() & 1) == 0)
  {
    return 0;
  }

  v9 = *(v4 + 16) == *(v3 + 16) && *(v4 + 24) == *(v3 + 24);
  if (!v9 && (sub_26BDA0FB0() & 1) == 0)
  {
    return 0;
  }

  a3(0);
  sub_26BDA0850();
  OUTLINED_FUNCTION_0_1();
  sub_26BD11FF8(v10, v11, MEMORY[0x277D216D0]);
  return OUTLINED_FUNCTION_105() & 1;
}

uint64_t sub_26BD11DA4(uint64_t (*a1)(void), unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  sub_26BDA1050();
  a1(0);
  sub_26BD11FF8(a2, a3, a4);
  sub_26BDA0BA0();
  return sub_26BDA1070();
}

uint64_t sub_26BD11E88(uint64_t a1, uint64_t a2)
{
  v4 = sub_26BD11FF8(&qword_280449AE8, type metadata accessor for CallContactDetails, &protocol conformance descriptor for CallContactDetails);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26BD11F08(uint64_t a1)
{
  v2 = sub_26BD11FF8(&qword_280449A78, type metadata accessor for CallContactDetails, &protocol conformance descriptor for CallContactDetails);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26BD11F78(uint64_t a1, uint64_t a2)
{
  sub_26BD11FF8(&qword_280449A78, type metadata accessor for CallContactDetails, &protocol conformance descriptor for CallContactDetails);

  return sub_26BDA0A00();
}

uint64_t sub_26BD11FF8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_26BD126A4()
{
  OUTLINED_FUNCTION_102();
  if (v2)
  {
    return OUTLINED_FUNCTION_7_0();
  }

  OUTLINED_FUNCTION_210();
  OUTLINED_FUNCTION_175();
  if (*(v4 + 84) == v0)
  {
    v5 = *(v1 + 52);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804499C8, &qword_26BDA3CE0);
    v5 = *(v1 + 56);
  }

  v6 = OUTLINED_FUNCTION_174(v5);

  return __swift_getEnumTagSinglePayload(v6, v7, v8);
}

void sub_26BD12764()
{
  OUTLINED_FUNCTION_52();
  if (v2)
  {
    OUTLINED_FUNCTION_254();
  }

  else
  {
    v3 = v1;
    v4 = v0;
    sub_26BDA0850();
    OUTLINED_FUNCTION_175();
    if (*(v5 + 84) == v4)
    {
      v6 = *(v3 + 52);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804499C8, &qword_26BDA3CE0);
      v6 = *(v3 + 56);
    }

    v7 = OUTLINED_FUNCTION_107(v6);

    __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
  }
}

void sub_26BD1281C(uint64_t a1)
{
  sub_26BDA0850();
  if (v1 <= 0x3F)
  {
    sub_26BD12CA0(319, &qword_280449A98, type metadata accessor for CustomerContactInfo.ClientProvidedInfo);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_26BD128F8()
{
  OUTLINED_FUNCTION_102();
  if (v1)
  {
    return OUTLINED_FUNCTION_7_0();
  }

  OUTLINED_FUNCTION_210();
  v3 = OUTLINED_FUNCTION_174(*(v0 + 20));

  return __swift_getEnumTagSinglePayload(v3, v4, v5);
}

void sub_26BD1296C()
{
  OUTLINED_FUNCTION_52();
  if (v1)
  {
    OUTLINED_FUNCTION_254();
  }

  else
  {
    v2 = v0;
    sub_26BDA0850();
    v3 = OUTLINED_FUNCTION_107(*(v2 + 20));

    __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
  }
}

uint64_t sub_26BD129D4(uint64_t a1)
{
  result = sub_26BDA0850();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_26BD12A64()
{
  OUTLINED_FUNCTION_102();
  if (v2)
  {
    return OUTLINED_FUNCTION_7_0();
  }

  OUTLINED_FUNCTION_210();
  OUTLINED_FUNCTION_175();
  if (*(v4 + 84) == v0)
  {
    v5 = *(v1 + 44);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804499D0, &qword_26BDA3CE8);
    v5 = *(v1 + 48);
  }

  v6 = OUTLINED_FUNCTION_174(v5);

  return __swift_getEnumTagSinglePayload(v6, v7, v8);
}

void sub_26BD12B24()
{
  OUTLINED_FUNCTION_52();
  if (v2)
  {
    OUTLINED_FUNCTION_254();
  }

  else
  {
    v3 = v1;
    v4 = v0;
    sub_26BDA0850();
    OUTLINED_FUNCTION_175();
    if (*(v5 + 84) == v4)
    {
      v6 = *(v3 + 44);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804499D0, &qword_26BDA3CE8);
      v6 = *(v3 + 48);
    }

    v7 = OUTLINED_FUNCTION_107(v6);

    __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
  }
}

void sub_26BD12BDC(uint64_t a1)
{
  sub_26BDA0850();
  if (v1 <= 0x3F)
  {
    sub_26BD12CA0(319, &qword_280449AC0, type metadata accessor for Placemark.Coordinate);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_26BD12CA0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_26BDA0DA0();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_44Tm()
{
  OUTLINED_FUNCTION_102();
  if (v1)
  {
    return OUTLINED_FUNCTION_7_0();
  }

  OUTLINED_FUNCTION_210();
  v3 = OUTLINED_FUNCTION_174(*(v0 + 24));

  return __swift_getEnumTagSinglePayload(v3, v4, v5);
}

void __swift_store_extra_inhabitant_index_45Tm()
{
  OUTLINED_FUNCTION_52();
  if (v1)
  {
    OUTLINED_FUNCTION_254();
  }

  else
  {
    v2 = v0;
    sub_26BDA0850();
    v3 = OUTLINED_FUNCTION_107(*(v2 + 24));

    __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
  }
}

uint64_t OUTLINED_FUNCTION_7_0()
{
  v1 = *(v0 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void OUTLINED_FUNCTION_34_0(uint64_t a1@<X8>)
{
  v1[4] = 0;
  v1[5] = a1;
  v1[6] = 0;
  v1[7] = a1;
  v1[8] = 0;
  v1[9] = a1;
  v1[10] = 0;
  v1[11] = a1;
  v1[12] = 0;
  v1[13] = a1;
}

uint64_t OUTLINED_FUNCTION_36_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_26BDA0AD0();
}

uint64_t OUTLINED_FUNCTION_52_0()
{

  return sub_26BD0E880(v0 + v3, v1 + v5, v2, v4);
}

uint64_t OUTLINED_FUNCTION_53_0()
{

  return sub_26BD0E880(v0 + v3, v1, v2, v4);
}

uint64_t OUTLINED_FUNCTION_54_0()
{

  return sub_26BDA0BB0();
}

uint64_t PhoneNumber.init()@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_8_1(a1);
  v2 = type metadata accessor for PhoneNumber(0);
  _s15SupportServices0A19OptionTypeNamespaceVACycfC_0();
  v3 = *(v2 + 28);
  v4 = sub_26BDA07E0();

  return __swift_storeEnumTagSinglePayload(v1 + v3, 1, 1, v4);
}

uint64_t PhoneNumber.countryCode.setter()
{
  OUTLINED_FUNCTION_171();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t PhoneNumber.number.setter()
{
  OUTLINED_FUNCTION_171();

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t PhoneNumber.validSince.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280449520, &unk_26BDA44F0);
  OUTLINED_FUNCTION_110(v3);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v4);
  v6 = &v11 - v5;
  v7 = type metadata accessor for PhoneNumber(0);
  sub_26BD13300(v1 + *(v7 + 28), v6);
  v8 = sub_26BDA07E0();
  OUTLINED_FUNCTION_112(v6, 1, v8);
  if (!v9)
  {
    return (*(*(v8 - 8) + 32))(a1, v6, v8);
  }

  sub_26BDA07D0();
  result = OUTLINED_FUNCTION_112(v6, 1, v8);
  if (!v9)
  {
    return sub_26BD04E80(v6, &qword_280449520, &unk_26BDA44F0);
  }

  return result;
}

uint64_t sub_26BD13300(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280449520, &unk_26BDA44F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26BD13370(uint64_t a1)
{
  v2 = sub_26BDA07E0();
  MEMORY[0x28223BE20](v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return PhoneNumber.validSince.setter();
}

uint64_t PhoneNumber.validSince.setter()
{
  v2 = OUTLINED_FUNCTION_134();
  v3 = *(type metadata accessor for PhoneNumber(v2) + 28);
  sub_26BD04E80(v1 + v3, &qword_280449520, &unk_26BDA44F0);
  v4 = sub_26BDA07E0();
  OUTLINED_FUNCTION_34();
  (*(v5 + 32))(v1 + v3, v0, v4);

  return __swift_storeEnumTagSinglePayload(v1 + v3, 0, 1, v4);
}

void (*PhoneNumber.validSince.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = v3;
  *v3 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280449520, &unk_26BDA44F0);
  OUTLINED_FUNCTION_110(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v3[1] = v6;
  v7 = sub_26BDA07E0();
  v3[2] = v7;
  OUTLINED_FUNCTION_18();
  v9 = v8;
  v3[3] = v8;
  v11 = *(v10 + 64);
  v3[4] = __swift_coroFrameAllocStub(v11);
  v12 = __swift_coroFrameAllocStub(v11);
  v3[5] = v12;
  v13 = *(type metadata accessor for PhoneNumber(0) + 28);
  *(v3 + 12) = v13;
  sub_26BD13300(v1 + v13, v6);
  OUTLINED_FUNCTION_112(v6, 1, v7);
  if (v14)
  {
    sub_26BDA07D0();
    OUTLINED_FUNCTION_112(v6, 1, v7);
    if (!v14)
    {
      sub_26BD04E80(v6, &qword_280449520, &unk_26BDA44F0);
    }
  }

  else
  {
    (*(v9 + 32))(v12, v6, v7);
  }

  return sub_26BD1366C;
}

void sub_26BD1366C(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 12);
  v4 = (*a1)[4];
  v5 = (*a1)[5];
  v6 = (*a1)[2];
  v7 = (*a1)[3];
  v9 = **a1;
  v8 = (*a1)[1];
  if (a2)
  {
    (*(v7 + 16))((*a1)[4], v5, v6);
    sub_26BD04E80(v9 + v3, &qword_280449520, &unk_26BDA44F0);
    (*(v7 + 32))(v9 + v3, v4, v6);
    OUTLINED_FUNCTION_31_0();
    (*(v7 + 8))(v5, v6);
  }

  else
  {
    sub_26BD04E80(v9 + v3, &qword_280449520, &unk_26BDA44F0);
    (*(v7 + 32))(v9 + v3, v5, v6);
    OUTLINED_FUNCTION_31_0();
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

uint64_t PhoneNumber.hasValidSince.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280449520, &unk_26BDA44F0);
  OUTLINED_FUNCTION_110(v1);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v2);
  v4 = &v10 - v3;
  v5 = type metadata accessor for PhoneNumber(0);
  sub_26BD13300(v0 + *(v5 + 28), v4);
  v6 = sub_26BDA07E0();
  OUTLINED_FUNCTION_112(v4, 1, v6);
  if (v7)
  {
    v8 = 0;
  }

  else
  {
    v8 = 1;
  }

  sub_26BD04E80(v4, &qword_280449520, &unk_26BDA44F0);
  return v8;
}

Swift::Void __swiftcall PhoneNumber.clearValidSince()()
{
  v1 = *(type metadata accessor for PhoneNumber(0) + 28);
  sub_26BD04E80(v0 + v1, &qword_280449520, &unk_26BDA44F0);
  v2 = sub_26BDA07E0();

  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
}

uint64_t PhoneNumber.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_134();
  type metadata accessor for PhoneNumber(v0);
  return OUTLINED_FUNCTION_185();
}

uint64_t ProductPedigreeInfo.unknownFields.getter()
{
  type metadata accessor for ProductPedigreeInfo(0);
  sub_26BDA0850();
  OUTLINED_FUNCTION_34();
  v0 = OUTLINED_FUNCTION_148();

  return v1(v0);
}

uint64_t ProductPedigreeInfo.unknownFields.setter()
{
  v2 = OUTLINED_FUNCTION_134();
  v3 = *(type metadata accessor for ProductPedigreeInfo(v2) + 28);
  sub_26BDA0850();
  OUTLINED_FUNCTION_34();
  v5 = *(v4 + 40);

  return v5(v1 + v3, v0);
}

uint64_t ProductPedigreeInfo.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_134();
  type metadata accessor for ProductPedigreeInfo(v0);
  return OUTLINED_FUNCTION_185();
}

uint64_t ProductPedigreeInfo.init()@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_8_1(a1);
  *(v1 + 32) = 0;
  *(v1 + 40) = v2;
  type metadata accessor for ProductPedigreeInfo(0);
  return _s15SupportServices0A19OptionTypeNamespaceVACycfC_0();
}

uint64_t CountryCodeInfo.alpha2CountryCode.setter()
{
  OUTLINED_FUNCTION_171();

  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  return result;
}

uint64_t CountryCodeInfo.displayCountryCode.setter()
{
  OUTLINED_FUNCTION_171();

  *(v1 + 56) = v2;
  *(v1 + 64) = v0;
  return result;
}

uint64_t CountryCodeInfo.unknownFields.getter()
{
  type metadata accessor for CountryCodeInfo(0);
  sub_26BDA0850();
  OUTLINED_FUNCTION_34();
  v0 = OUTLINED_FUNCTION_148();

  return v1(v0);
}

uint64_t CountryCodeInfo.unknownFields.setter()
{
  v2 = OUTLINED_FUNCTION_134();
  v3 = *(type metadata accessor for CountryCodeInfo(v2) + 36);
  sub_26BDA0850();
  OUTLINED_FUNCTION_34();
  v5 = *(v4 + 40);

  return v5(v1 + v3, v0);
}

uint64_t CountryCodeInfo.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_134();
  type metadata accessor for CountryCodeInfo(v0);
  return OUTLINED_FUNCTION_185();
}

uint64_t CountryCodeInfo.init()@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_8_1(a1);
  *(v1 + 32) = 0;
  *(v1 + 40) = v2;
  *(v1 + 48) = 0;
  *(v1 + 56) = 0;
  *(v1 + 64) = v2;
  type metadata accessor for CountryCodeInfo(0);
  return _s15SupportServices0A19OptionTypeNamespaceVACycfC_0();
}

uint64_t sub_26BD13E18(void (*a1)(void))
{
  a1(0);
  sub_26BDA0850();
  OUTLINED_FUNCTION_34();
  v1 = OUTLINED_FUNCTION_148();

  return v2(v1);
}

uint64_t sub_26BD13EC4()
{
  v2 = OUTLINED_FUNCTION_134();
  v4 = *(v3(v2) + 24);
  sub_26BDA0850();
  OUTLINED_FUNCTION_34();
  v6 = *(v5 + 40);

  return v6(v1 + v4, v0);
}

uint64_t SymptomInfo.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_134();
  type metadata accessor for SymptomInfo(v0);
  return OUTLINED_FUNCTION_185();
}

uint64_t SymptomInfo.init()@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_8_1(a1);
  type metadata accessor for SymptomInfo(0);
  return _s15SupportServices0A19OptionTypeNamespaceVACycfC_0();
}

uint64_t sub_26BD13FCC()
{
  v0 = sub_26BDA0B10();
  __swift_allocate_value_buffer(v0, qword_280449B10);
  __swift_project_value_buffer(v0, qword_280449B10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804495C8, &unk_26BDA3CB0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804495D0, &qword_26BDA3510) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26BDA1A20;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "country_code";
  *(v6 + 8) = 12;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21888];
  v8 = sub_26BDA0AE0();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "number";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "valid_since";
  *(v12 + 1) = 11;
  v12[16] = 2;
  v9();
  return sub_26BDA0AF0();
}

uint64_t PhoneNumber.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  while (1)
  {
    result = sub_26BDA0900();
    if (v4 || (v6 & 1) != 0)
    {
      return result;
    }

    if (result == 3)
    {
      type metadata accessor for PhoneNumber(0);
      sub_26BDA07E0();
      OUTLINED_FUNCTION_2_1();
      sub_26BD15EDC(&qword_280449B70, v7, MEMORY[0x277D21568]);
      sub_26BDA09B0();
LABEL_9:
      v4 = 0;
    }

    else if (result == 2 || result == 1)
    {
      sub_26BDA0990();
      goto LABEL_9;
    }
  }
}

uint64_t PhoneNumber.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_7_1();
  v19[3] = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280449520, &unk_26BDA44F0);
  OUTLINED_FUNCTION_110(v3);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v4);
  v6 = v19 - v5;
  v7 = sub_26BDA07E0();
  OUTLINED_FUNCTION_18();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  v12 = v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_29();
  if (!v13 || (result = sub_26BDA0AB0(), !v0))
  {
    OUTLINED_FUNCTION_29();
    if (!v15 || (result = sub_26BDA0AB0(), !v0))
    {
      v16 = type metadata accessor for PhoneNumber(0);
      sub_26BD13300(v1 + *(v16 + 28), v6);
      if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
      {
        sub_26BD04E80(v6, &qword_280449520, &unk_26BDA44F0);
      }

      else
      {
        v19[1] = v16;
        (*(v9 + 32))(v12, v6, v7);
        OUTLINED_FUNCTION_2_1();
        sub_26BD15EDC(v17, v18, MEMORY[0x277D21568]);
        sub_26BDA0AD0();
        if (v0)
        {
          return (*(v9 + 8))(v12, v7);
        }

        (*(v9 + 8))(v12, v7);
      }

      OUTLINED_FUNCTION_129();
      return sub_26BDA0830();
    }
  }

  return result;
}

uint64_t static PhoneNumber.== infix(_:_:)()
{
  OUTLINED_FUNCTION_171();
  v2 = sub_26BDA07E0();
  OUTLINED_FUNCTION_18();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280449520, &unk_26BDA44F0);
  OUTLINED_FUNCTION_110(v8);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v9);
  v11 = &v29 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280449528, &unk_26BDA34F0);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v13);
  v15 = &v29 - v14;
  v16 = *v1 == *v0 && v1[1] == v0[1];
  if (!v16 && (sub_26BDA0FB0() & 1) == 0)
  {
    goto LABEL_20;
  }

  v17 = v1[2] == v0[2] && v1[3] == v0[3];
  if (!v17 && (sub_26BDA0FB0() & 1) == 0)
  {
    goto LABEL_20;
  }

  v18 = *(type metadata accessor for PhoneNumber(0) + 28);
  v19 = *(v12 + 48);
  sub_26BD13300(v1 + v18, v15);
  sub_26BD13300(v0 + v18, &v15[v19]);
  OUTLINED_FUNCTION_112(v15, 1, v2);
  if (v16)
  {
    OUTLINED_FUNCTION_112(&v15[v19], 1, v2);
    if (v16)
    {
      sub_26BD04E80(v15, &qword_280449520, &unk_26BDA44F0);
LABEL_22:
      sub_26BDA0850();
      OUTLINED_FUNCTION_0_2();
      sub_26BD15EDC(v26, v27, MEMORY[0x277D216D0]);
      v21 = sub_26BDA0BB0();
      return v21 & 1;
    }

    goto LABEL_19;
  }

  sub_26BD13300(v15, v11);
  OUTLINED_FUNCTION_112(&v15[v19], 1, v2);
  if (v20)
  {
    (*(v4 + 8))(v11, v2);
LABEL_19:
    sub_26BD04E80(v15, &qword_280449528, &unk_26BDA34F0);
    goto LABEL_20;
  }

  (*(v4 + 32))(v7, &v15[v19], v2);
  OUTLINED_FUNCTION_2_1();
  sub_26BD15EDC(v22, v23, MEMORY[0x277D21578]);
  v24 = sub_26BDA0BB0();
  v25 = *(v4 + 8);
  v25(v7, v2);
  v25(v11, v2);
  sub_26BD04E80(v15, &qword_280449520, &unk_26BDA44F0);
  if (v24)
  {
    goto LABEL_22;
  }

LABEL_20:
  v21 = 0;
  return v21 & 1;
}

uint64_t sub_26BD1494C(uint64_t a1, uint64_t a2)
{
  v4 = sub_26BD15EDC(&qword_280449C50, type metadata accessor for PhoneNumber, &protocol conformance descriptor for PhoneNumber);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26BD149CC(uint64_t a1)
{
  v2 = sub_26BD15EDC(&qword_280449910, type metadata accessor for PhoneNumber, &protocol conformance descriptor for PhoneNumber);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26BD14A3C(uint64_t a1, uint64_t a2)
{
  sub_26BD15EDC(&qword_280449910, type metadata accessor for PhoneNumber, &protocol conformance descriptor for PhoneNumber);

  return sub_26BDA0A00();
}

uint64_t sub_26BD14AD8()
{
  v0 = sub_26BDA0B10();
  __swift_allocate_value_buffer(v0, qword_280449B28);
  __swift_project_value_buffer(v0, qword_280449B28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804495C8, &unk_26BDA3CB0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804495D0, &qword_26BDA3510) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26BDA1A20;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "super_group_id";
  *(v6 + 8) = 14;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21888];
  v8 = sub_26BDA0AE0();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "family_class_id";
  *(v10 + 8) = 15;
  *(v10 + 16) = 2;
  *(v10 + 24) = "prodFamilyClassId";
  *(v10 + 32) = 17;
  *(v10 + 40) = 2;
  v9();
  v11 = v1[14];
  v12 = (v5 + 2 * v2);
  *v12 = 3;
  v13 = v12 + v11;
  *v13 = "group_family_id";
  *(v13 + 1) = 15;
  v13[16] = 2;
  *(v13 + 3) = "prodGroupFamilyId";
  *(v13 + 4) = 17;
  v13[40] = 2;
  v9();
  return sub_26BDA0AF0();
}

uint64_t ProductPedigreeInfo.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_109();
  while (1)
  {
    result = sub_26BDA0900();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 3 || result == 2 || result == 1)
    {
      OUTLINED_FUNCTION_129();
      sub_26BDA0990();
    }
  }

  return result;
}

uint64_t ProductPedigreeInfo.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_7_1();
  OUTLINED_FUNCTION_29();
  if (!v3 || (result = OUTLINED_FUNCTION_103(v1, v2, 1), !v0))
  {
    OUTLINED_FUNCTION_29();
    if (!v7 || (result = OUTLINED_FUNCTION_103(v5, v6, 2), !v0))
    {
      OUTLINED_FUNCTION_29();
      if (!v10 || (result = OUTLINED_FUNCTION_103(v8, v9, 3), !v0))
      {
        type metadata accessor for ProductPedigreeInfo(0);
        return OUTLINED_FUNCTION_104();
      }
    }
  }

  return result;
}

uint64_t static ProductPedigreeInfo.== infix(_:_:)(uint64_t a1)
{
  OUTLINED_FUNCTION_86(a1);
  v5 = v5 && v3 == v4;
  if (!v5 && (sub_26BDA0FB0() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_221();
  v8 = v5 && v6 == v7;
  if (!v8 && (sub_26BDA0FB0() & 1) == 0)
  {
    return 0;
  }

  v9 = *(v2 + 32) == *(v1 + 32) && *(v2 + 40) == *(v1 + 40);
  if (!v9 && (sub_26BDA0FB0() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for ProductPedigreeInfo(0);
  sub_26BDA0850();
  OUTLINED_FUNCTION_0_2();
  sub_26BD15EDC(v10, v11, MEMORY[0x277D216D0]);
  return OUTLINED_FUNCTION_105() & 1;
}

uint64_t sub_26BD14FAC(uint64_t a1, uint64_t a2)
{
  v4 = sub_26BD15EDC(&qword_280449C48, type metadata accessor for ProductPedigreeInfo, &protocol conformance descriptor for ProductPedigreeInfo);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26BD1502C(uint64_t a1)
{
  v2 = sub_26BD15EDC(&qword_280449BB0, type metadata accessor for ProductPedigreeInfo, &protocol conformance descriptor for ProductPedigreeInfo);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26BD1509C(uint64_t a1, uint64_t a2)
{
  sub_26BD15EDC(&qword_280449BB0, type metadata accessor for ProductPedigreeInfo, &protocol conformance descriptor for ProductPedigreeInfo);

  return sub_26BDA0A00();
}

uint64_t sub_26BD15140()
{
  v0 = sub_26BDA0B10();
  __swift_allocate_value_buffer(v0, qword_280449B40);
  __swift_project_value_buffer(v0, qword_280449B40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804495C8, &unk_26BDA3CB0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804495D0, &qword_26BDA3510) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26BDA19E0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "itc_code";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21888];
  v8 = sub_26BDA0AE0();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "country_code";
  *(v10 + 8) = 12;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "alpha_2_country_code";
  *(v12 + 1) = 20;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "is_default";
  *(v14 + 1) = 10;
  v14[16] = 2;
  *(v14 + 3) = "default";
  *(v14 + 4) = 7;
  v14[40] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "display_country_code";
  *(v16 + 1) = 20;
  v16[16] = 2;
  v9();
  return sub_26BDA0AF0();
}

uint64_t CountryCodeInfo.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_109();
  while (1)
  {
    result = sub_26BDA0900();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
      case 2:
      case 3:
      case 5:
        OUTLINED_FUNCTION_129();
        sub_26BDA0990();
        break;
      case 4:
        OUTLINED_FUNCTION_129();
        sub_26BDA0920();
        break;
      default:
        continue;
    }
  }
}

uint64_t CountryCodeInfo.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_7_1();
  OUTLINED_FUNCTION_29();
  if (!v5 || (result = OUTLINED_FUNCTION_103(v3, v4, 1), (v0 = v1) == 0))
  {
    OUTLINED_FUNCTION_29();
    if (!v9 || (result = OUTLINED_FUNCTION_103(v7, v8, 2), (v0 = v1) == 0))
    {
      OUTLINED_FUNCTION_29();
      if (!v12 || (result = OUTLINED_FUNCTION_103(v10, v11, 3), (v0 = v1) == 0))
      {
        if (*(v2 + 48) != 1 || (v1 = v0, result = sub_26BDA0A40(), !v0))
        {
          OUTLINED_FUNCTION_29();
          if (!v15 || (result = OUTLINED_FUNCTION_103(v13, v14, 5), !v1))
          {
            type metadata accessor for CountryCodeInfo(0);
            return OUTLINED_FUNCTION_104();
          }
        }
      }
    }
  }

  return result;
}

uint64_t static CountryCodeInfo.== infix(_:_:)(uint64_t a1)
{
  OUTLINED_FUNCTION_86(a1);
  v5 = v5 && v3 == v4;
  if (!v5 && (sub_26BDA0FB0() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_221();
  v8 = v5 && v6 == v7;
  if (!v8 && (sub_26BDA0FB0() & 1) == 0)
  {
    return 0;
  }

  v9 = *(v2 + 32) == *(v1 + 32) && *(v2 + 40) == *(v1 + 40);
  if (!v9 && (sub_26BDA0FB0() & 1) == 0)
  {
    return 0;
  }

  if (*(v2 + 48) != *(v1 + 48))
  {
    return 0;
  }

  v11 = *(v2 + 56) == *(v1 + 56) && *(v2 + 64) == *(v1 + 64);
  if (!v11 && (sub_26BDA0FB0() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for CountryCodeInfo(0);
  sub_26BDA0850();
  OUTLINED_FUNCTION_0_2();
  sub_26BD15EDC(v12, v13, MEMORY[0x277D216D0]);
  return OUTLINED_FUNCTION_105() & 1;
}

uint64_t sub_26BD1573C(uint64_t a1, uint64_t a2)
{
  v4 = sub_26BD15EDC(&qword_280449C40, type metadata accessor for CountryCodeInfo, &protocol conformance descriptor for CountryCodeInfo);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26BD157BC(uint64_t a1)
{
  v2 = sub_26BD15EDC(&qword_280449BC8, type metadata accessor for CountryCodeInfo, &protocol conformance descriptor for CountryCodeInfo);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26BD1582C(uint64_t a1, uint64_t a2)
{
  sub_26BD15EDC(&qword_280449BC8, type metadata accessor for CountryCodeInfo, &protocol conformance descriptor for CountryCodeInfo);

  return sub_26BDA0A00();
}

uint64_t sub_26BD158CC()
{
  v0 = sub_26BDA0B10();
  __swift_allocate_value_buffer(v0, qword_280449B58);
  __swift_project_value_buffer(v0, qword_280449B58);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804495C8, &unk_26BDA3CB0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804495D0, &qword_26BDA3510) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26BDA1990;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "symptom_id";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21888];
  v8 = sub_26BDA0AE0();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "symptom_category_id";
  *(v10 + 1) = 19;
  v10[16] = 2;
  v9();
  return sub_26BDA0AF0();
}

uint64_t SymptomInfo.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_109();
  while (1)
  {
    result = sub_26BDA0900();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 2 || result == 1)
    {
      OUTLINED_FUNCTION_129();
      sub_26BDA0990();
    }
  }

  return result;
}

uint64_t SymptomInfo.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_7_1();
  OUTLINED_FUNCTION_29();
  if (!v3 || (result = OUTLINED_FUNCTION_103(v1, v2, 1), !v0))
  {
    OUTLINED_FUNCTION_29();
    if (!v7 || (result = OUTLINED_FUNCTION_103(v5, v6, 2), !v0))
    {
      type metadata accessor for SymptomInfo(0);
      return OUTLINED_FUNCTION_104();
    }
  }

  return result;
}

uint64_t static SymptomInfo.== infix(_:_:)(uint64_t a1)
{
  OUTLINED_FUNCTION_86(a1);
  v3 = v3 && v1 == v2;
  if (!v3 && (sub_26BDA0FB0() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_221();
  v6 = v3 && v4 == v5;
  if (!v6 && (sub_26BDA0FB0() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for SymptomInfo(0);
  sub_26BDA0850();
  OUTLINED_FUNCTION_0_2();
  sub_26BD15EDC(v7, v8, MEMORY[0x277D216D0]);
  return OUTLINED_FUNCTION_105() & 1;
}

uint64_t sub_26BD15C88(uint64_t (*a1)(void), unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  sub_26BDA1050();
  a1(0);
  sub_26BD15EDC(a2, a3, a4);
  sub_26BDA0BA0();
  return sub_26BDA1070();
}

uint64_t sub_26BD15D6C(uint64_t a1, uint64_t a2)
{
  v4 = sub_26BD15EDC(&qword_280449C38, type metadata accessor for SymptomInfo, &protocol conformance descriptor for SymptomInfo);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26BD15DEC(uint64_t a1)
{
  v2 = sub_26BD15EDC(&qword_280449BE0, type metadata accessor for SymptomInfo, &protocol conformance descriptor for SymptomInfo);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26BD15E5C(uint64_t a1, uint64_t a2)
{
  sub_26BD15EDC(&qword_280449BE0, type metadata accessor for SymptomInfo, &protocol conformance descriptor for SymptomInfo);

  return sub_26BDA0A00();
}

uint64_t sub_26BD15EDC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_26BD163E0()
{
  OUTLINED_FUNCTION_102();
  if (v2)
  {
    return OUTLINED_FUNCTION_7_0();
  }

  v4 = *(OUTLINED_FUNCTION_210() - 8);
  if (*(v4 + 84) == v0)
  {
    v5 = *(v1 + 24);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280449520, &unk_26BDA44F0);
    v5 = *(v1 + 28);
  }

  v6 = OUTLINED_FUNCTION_174(v5);

  return __swift_getEnumTagSinglePayload(v6, v7, v8);
}

void sub_26BD164A4()
{
  OUTLINED_FUNCTION_52();
  if (v2)
  {
    OUTLINED_FUNCTION_254();
  }

  else
  {
    v3 = v1;
    v4 = v0;
    v5 = *(sub_26BDA0850() - 8);
    if (*(v5 + 84) == v4)
    {
      v6 = *(v3 + 24);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280449520, &unk_26BDA44F0);
      v6 = *(v3 + 28);
    }

    v7 = OUTLINED_FUNCTION_107(v6);

    __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
  }
}

void sub_26BD16560(uint64_t a1)
{
  sub_26BDA0850();
  if (v1 <= 0x3F)
  {
    sub_26BD165F4(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_26BD165F4(uint64_t a1)
{
  if (!qword_280449C00)
  {
    sub_26BDA07E0();
    v1 = sub_26BDA0DA0();
    if (!v2)
    {
      atomic_store(v1, &qword_280449C00);
    }
  }
}

uint64_t sub_26BD16660()
{
  OUTLINED_FUNCTION_102();
  if (v1)
  {
    return OUTLINED_FUNCTION_7_0();
  }

  OUTLINED_FUNCTION_210();
  v3 = OUTLINED_FUNCTION_174(*(v0 + 28));

  return __swift_getEnumTagSinglePayload(v3, v4, v5);
}

void sub_26BD166D4()
{
  OUTLINED_FUNCTION_52();
  if (v1)
  {
    OUTLINED_FUNCTION_254();
  }

  else
  {
    v2 = v0;
    sub_26BDA0850();
    v3 = OUTLINED_FUNCTION_107(*(v2 + 28));

    __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
  }
}

uint64_t sub_26BD1673C(uint64_t a1)
{
  result = sub_26BDA0850();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_26BD167D4()
{
  OUTLINED_FUNCTION_102();
  if (v1)
  {
    return OUTLINED_FUNCTION_7_0();
  }

  OUTLINED_FUNCTION_210();
  v3 = OUTLINED_FUNCTION_174(*(v0 + 36));

  return __swift_getEnumTagSinglePayload(v3, v4, v5);
}

void sub_26BD16848()
{
  OUTLINED_FUNCTION_52();
  if (v1)
  {
    OUTLINED_FUNCTION_254();
  }

  else
  {
    v2 = v0;
    sub_26BDA0850();
    v3 = OUTLINED_FUNCTION_107(*(v2 + 36));

    __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
  }
}

uint64_t sub_26BD168B0(uint64_t a1)
{
  result = sub_26BDA0850();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_26BD16954()
{
  OUTLINED_FUNCTION_102();
  if (v1)
  {
    return OUTLINED_FUNCTION_7_0();
  }

  OUTLINED_FUNCTION_210();
  v3 = OUTLINED_FUNCTION_174(*(v0 + 24));

  return __swift_getEnumTagSinglePayload(v3, v4, v5);
}

void sub_26BD169C8()
{
  OUTLINED_FUNCTION_52();
  if (v1)
  {
    OUTLINED_FUNCTION_254();
  }

  else
  {
    v2 = v0;
    sub_26BDA0850();
    v3 = OUTLINED_FUNCTION_107(*(v2 + 24));

    __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
  }
}

void OUTLINED_FUNCTION_8_1(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  a1[2] = 0;
  a1[3] = 0xE000000000000000;
}

uint64_t OUTLINED_FUNCTION_31_0()
{

  return __swift_storeEnumTagSinglePayload(v2 + v1, 0, 1, v0);
}

uint64_t sub_26BD16AF4()
{
  OUTLINED_FUNCTION_102();
  if (v2)
  {
    return OUTLINED_FUNCTION_46(*v0);
  }

  OUTLINED_FUNCTION_210();
  v4 = OUTLINED_FUNCTION_174(*(v1 + 28));

  return __swift_getEnumTagSinglePayload(v4, v5, v6);
}

void sub_26BD16B6C()
{
  OUTLINED_FUNCTION_52();
  if (v3)
  {
    *v1 = (v0 - 1);
  }

  else
  {
    v4 = v2;
    sub_26BDA0850();
    v5 = OUTLINED_FUNCTION_107(*(v4 + 28));

    __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  }
}

void sub_26BD16BF8(uint64_t a1)
{
  sub_26BD16D20(319, &qword_280449C68, type metadata accessor for HMTSolutionResponse.Step);
  if (v1 <= 0x3F)
  {
    sub_26BD16D20(319, &qword_280449C70, type metadata accessor for HMTArticle);
    if (v2 <= 0x3F)
    {
      sub_26BD16D20(319, &qword_280449C78, type metadata accessor for HMTBCSSolution);
      if (v3 <= 0x3F)
      {
        sub_26BDA0850();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_26BD16D20(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_26BDA0B80();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_26BD16DD8()
{
  OUTLINED_FUNCTION_102();
  if (v2)
  {
    return OUTLINED_FUNCTION_46(*(v0 + 8));
  }

  OUTLINED_FUNCTION_210();
  v4 = OUTLINED_FUNCTION_174(*(v1 + 40));

  return __swift_getEnumTagSinglePayload(v4, v5, v6);
}

void sub_26BD16E50()
{
  OUTLINED_FUNCTION_52();
  if (v3)
  {
    *(v1 + 8) = (v0 - 1);
  }

  else
  {
    v4 = v2;
    sub_26BDA0850();
    v5 = OUTLINED_FUNCTION_107(*(v4 + 40));

    __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  }
}

uint64_t sub_26BD16EBC(uint64_t a1)
{
  result = sub_26BDA0850();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_26BD16F60()
{
  OUTLINED_FUNCTION_102();
  if (v2)
  {
    return OUTLINED_FUNCTION_46(*(v0 + 8));
  }

  OUTLINED_FUNCTION_210();
  v4 = OUTLINED_FUNCTION_174(*(v1 + 44));

  return __swift_getEnumTagSinglePayload(v4, v5, v6);
}

void sub_26BD16FD8()
{
  OUTLINED_FUNCTION_52();
  if (v3)
  {
    *(v1 + 8) = (v0 - 1);
  }

  else
  {
    v4 = v2;
    sub_26BDA0850();
    v5 = OUTLINED_FUNCTION_107(*(v4 + 44));

    __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  }
}

uint64_t sub_26BD17044(uint64_t a1)
{
  result = sub_26BDA0850();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for HMTArticle.TypeEnum(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for HMTArticle.TypeEnum(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
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

  *(result + 9) = v3;
  return result;
}

uint64_t sub_26BD1714C(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26BD17168(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    v2 = 1;
  }

  else
  {
    v2 = 0;
  }

  *(result + 8) = v2;
  return result;
}

uint64_t sub_26BD171AC()
{
  OUTLINED_FUNCTION_102();
  if (v3)
  {
    return OUTLINED_FUNCTION_46(*(v1 + 8));
  }

  OUTLINED_FUNCTION_210();
  OUTLINED_FUNCTION_175();
  if (*(v5 + 84) == v0)
  {
    v6 = *(v2 + 32);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280449CA0, &qword_26BDA4B78);
    v6 = *(v2 + 36);
  }

  v7 = OUTLINED_FUNCTION_174(v6);

  return __swift_getEnumTagSinglePayload(v7, v8, v9);
}

void sub_26BD17270()
{
  OUTLINED_FUNCTION_52();
  if (v4)
  {
    *(v1 + 8) = (v0 - 1);
  }

  else
  {
    v5 = v3;
    v6 = v2;
    sub_26BDA0850();
    OUTLINED_FUNCTION_175();
    if (*(v7 + 84) == v6)
    {
      v8 = *(v5 + 32);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280449CA0, &qword_26BDA4B78);
      v8 = *(v5 + 36);
    }

    v9 = OUTLINED_FUNCTION_107(v8);

    __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
  }
}

void sub_26BD1732C(uint64_t a1)
{
  sub_26BD17404();
  if (v1 <= 0x3F)
  {
    sub_26BDA0850();
    if (v2 <= 0x3F)
    {
      sub_26BD17758(319, &qword_280449CB8, type metadata accessor for HMTSolutionResponse.AlternativeSymptomInfo);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_26BD17404()
{
  if (!qword_280449480)
  {
    v0 = sub_26BDA0CB0();
    if (!v1)
    {
      atomic_store(v0, &qword_280449480);
    }
  }
}

uint64_t sub_26BD17488(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_26BDA0850();
  OUTLINED_FUNCTION_175();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280449CC0, &qword_26BDA4B88);
    OUTLINED_FUNCTION_175();
    if (*(v11 + 84) == a2)
    {
      v8 = v10;
      v12 = *(a3 + 20);
    }

    else
    {
      v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280449CC8, &unk_26BDA4B90);
      v12 = *(a3 + 24);
    }

    v9 = a1 + v12;
  }

  return __swift_getEnumTagSinglePayload(v9, a2, v8);
}

uint64_t sub_26BD1758C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_26BDA0850();
  OUTLINED_FUNCTION_175();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280449CC0, &qword_26BDA4B88);
    OUTLINED_FUNCTION_175();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = *(a4 + 20);
    }

    else
    {
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280449CC8, &unk_26BDA4B90);
      v14 = *(a4 + 24);
    }

    v11 = a1 + v14;
  }

  return __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

void sub_26BD17684(uint64_t a1)
{
  sub_26BDA0850();
  if (v1 <= 0x3F)
  {
    sub_26BD17758(319, &qword_280449CE0, type metadata accessor for SymptomInfo);
    if (v2 <= 0x3F)
    {
      sub_26BD17758(319, &qword_280449CE8, type metadata accessor for ProductPedigreeInfo);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_26BD17758(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_26BDA0DA0();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_26BD177D0(uint64_t a1@<X8>)
{
  sub_26BD177AC();
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 9) = v4 & 1;
}

void sub_26BD17810(uint64_t a1@<X8>)
{
  sub_26BD177AC();
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 9) = v4 & 1;
}

uint64_t sub_26BD17934(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v4 = OUTLINED_FUNCTION_47_1(a1);
  v5 = a3(v4);
  OUTLINED_FUNCTION_45_0(v5, v6);
  return sub_26BDA1070();
}

uint64_t sub_26BD17990(uint64_t a1)
{
  v1 = a1;
  OUTLINED_FUNCTION_47_1(a1);
  v2 = sub_26BD816E8(v1);
  OUTLINED_FUNCTION_38_1(v2, v3, v4);

  return sub_26BDA1070();
}

uint64_t sub_26BD179D8(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_47_1(a1);
  OUTLINED_FUNCTION_39_1(v1);
  return sub_26BDA1070();
}

uint64_t sub_26BD17A0C(uint64_t a1, uint64_t a2)
{
  v4 = sub_26BD1BFC0();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_26BD17AD4(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  sub_26BDA1050();
  v3 = sub_26BD816E8(v2);
  OUTLINED_FUNCTION_38_1(v3, v4, v5);

  return sub_26BDA1070();
}

uint64_t sub_26BD17B20(uint64_t a1)
{
  v1 = sub_26BDA1050();
  OUTLINED_FUNCTION_39_1(v1);
  return sub_26BDA1070();
}

uint64_t sub_26BD17B98(uint64_t a1, uint64_t a2, char a3, uint64_t (*a4)(void *))
{
  v5 = sub_26BDA1050();
  v6 = a4(v5);
  OUTLINED_FUNCTION_45_0(v6, v7);
  return sub_26BDA1070();
}

uint64_t sub_26BD17BEC(uint64_t a1, char a2)
{
  sub_26BDA1050();
  sub_26BDA0C10();

  return sub_26BDA1070();
}

unint64_t sub_26BD17C9C()
{
  result = qword_280449CF0;
  if (!qword_280449CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280449CF0);
  }

  return result;
}

unint64_t sub_26BD17CF4()
{
  result = qword_280449CF8;
  if (!qword_280449CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280449CF8);
  }

  return result;
}

unint64_t sub_26BD17D4C()
{
  result = qword_280449D00;
  if (!qword_280449D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280449D00);
  }

  return result;
}

uint64_t sub_26BD17DA0@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_34_1(a1);
  *(v1 + 16) = 0;
  *(v1 + 24) = v2;
  *(v1 + 32) = 0;
  *(v1 + 40) = 0;
  *(v1 + 48) = v2;
  *(v1 + 56) = 0;
  *(v1 + 64) = v2;
  *(v1 + 72) = 0;
  *(v1 + 80) = 1;
  *(v1 + 88) = 0;
  *(v1 + 96) = v2;
  type metadata accessor for HMTArticle(0);
  return _s15SupportServices0A19OptionTypeNamespaceVACycfC_0();
}

uint64_t sub_26BD17E00@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_34_1(a1);
  v1[2] = 0;
  v1[3] = 0;
  v1[4] = v2;
  v1[5] = 0;
  v1[6] = v2;
  v1[7] = 0;
  v1[8] = v2;
  v1[9] = 0;
  v1[10] = v2;
  type metadata accessor for HMTBCSSolution(0);
  return _s15SupportServices0A19OptionTypeNamespaceVACycfC_0();
}

uint64_t sub_26BD17E48(uint64_t a1)
{
  _s15SupportServices0A19OptionTypeNamespaceVACycfC_0();
  type metadata accessor for HMTSolutionResponse.AlternativeSymptomInfo(0);
  type metadata accessor for SymptomInfo(0);
  OUTLINED_FUNCTION_123();
  __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
  type metadata accessor for ProductPedigreeInfo(0);
  OUTLINED_FUNCTION_123();

  return __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
}

uint64_t sub_26BD17EC4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280449CA0, &qword_26BDA4B78);
  OUTLINED_FUNCTION_110(v1);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v2);
  v4 = &v16 - v3;
  type metadata accessor for HMTSolutionResponse.Step(0);
  sub_26BD0D868();
  v5 = type metadata accessor for HMTSolutionResponse.AlternativeSymptomInfo(0);
  OUTLINED_FUNCTION_112(v4, 1, v5);
  if (v6)
  {
    _s15SupportServices0A19OptionTypeNamespaceVACycfC_0();
    type metadata accessor for SymptomInfo(0);
    OUTLINED_FUNCTION_123();
    __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
    type metadata accessor for ProductPedigreeInfo(0);
    OUTLINED_FUNCTION_123();
    __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
    result = OUTLINED_FUNCTION_112(v4, 1, v5);
    if (!v6)
    {
      return sub_26BD04E80(v4, &qword_280449CA0, &qword_26BDA4B78);
    }
  }

  else
  {
    OUTLINED_FUNCTION_18_0();
    return sub_26BD1C20C();
  }

  return result;
}

uint64_t sub_26BD18004@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_34_1(a1);
  v2 = MEMORY[0x277D84F90];
  *(v1 + 16) = MEMORY[0x277D84F90];
  *(v1 + 24) = v2;
  *(v1 + 32) = 0;
  type metadata accessor for HMTSolutionResponse.Step(0);
  _s15SupportServices0A19OptionTypeNamespaceVACycfC_0();
  type metadata accessor for HMTSolutionResponse.AlternativeSymptomInfo(0);
  OUTLINED_FUNCTION_123();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

uint64_t sub_26BD18074@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for HMTSolutionResponse.Step(0);
  *a1 = OUTLINED_FUNCTION_37_0(v2, v3, v2);
  v4 = type metadata accessor for HMTArticle(0);
  a1[1] = OUTLINED_FUNCTION_37_0(v4, v5, v4);
  v6 = type metadata accessor for HMTBCSSolution(0);
  a1[2] = OUTLINED_FUNCTION_37_0(v6, v7, v6);
  type metadata accessor for HMTSolutionResponse(0);
  return _s15SupportServices0A19OptionTypeNamespaceVACycfC_0();
}

uint64_t sub_26BD18104()
{
  v0 = sub_26BDA0B10();
  __swift_allocate_value_buffer(v0, qword_280459F40);
  __swift_project_value_buffer(v0, qword_280459F40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804495C8, &unk_26BDA3CB0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804495D0, &qword_26BDA3510) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_26BDA19F0;
  v4 = v20 + v3 + v1[14];
  *(v20 + v3) = 1;
  *v4 = "id";
  *(v4 + 8) = 2;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x277D21870];
  v6 = sub_26BDA0AE0();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v20 + v3 + v2 + v1[14];
  *(v20 + v3 + v2) = 2;
  *v8 = "locale_identifier";
  *(v8 + 8) = 17;
  *(v8 + 16) = 2;
  *(v8 + 24) = "locale";
  *(v8 + 32) = 6;
  *(v8 + 40) = 2;
  v7();
  v9 = (v20 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "rank";
  *(v10 + 1) = 4;
  v10[16] = 2;
  v7();
  v11 = (v20 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "title";
  *(v12 + 1) = 5;
  v12[16] = 2;
  v7();
  v13 = (v20 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "summary";
  *(v14 + 1) = 7;
  v14[16] = 2;
  v7();
  v15 = (v20 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "type";
  *(v16 + 1) = 4;
  v16[16] = 2;
  v7();
  v17 = (v20 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 7;
  *v18 = "url";
  *(v18 + 1) = 3;
  v18[16] = 2;
  v7();
  return sub_26BDA0AF0();
}

uint64_t sub_26BD18410()
{
  OUTLINED_FUNCTION_49();
  while (1)
  {
    result = OUTLINED_FUNCTION_32_1();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
      case 2:
      case 4:
      case 5:
      case 7:
        OUTLINED_FUNCTION_116();
        sub_26BDA0990();
        break;
      case 3:
        OUTLINED_FUNCTION_116();
        sub_26BDA0980();
        break;
      case 6:
        sub_26BD1BFC0();
        OUTLINED_FUNCTION_35_0();
        sub_26BDA0930();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_26BD18504()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_29();
  if (!v4 || (result = OUTLINED_FUNCTION_103(v2, v3, 1), !v0))
  {
    OUTLINED_FUNCTION_29();
    if (!v8 || (result = OUTLINED_FUNCTION_103(v6, v7, 2), !v0))
    {
      if (*(v1 + 32) == 0.0 || (OUTLINED_FUNCTION_8_2(), OUTLINED_FUNCTION_129(), result = sub_26BDA0AA0(), !v0))
      {
        OUTLINED_FUNCTION_29();
        if (!v11 || (result = OUTLINED_FUNCTION_103(v9, v10, 4), !v0))
        {
          OUTLINED_FUNCTION_29();
          if (!v14 || (result = OUTLINED_FUNCTION_103(v12, v13, 5), !v0))
          {
            if (!*(v1 + 72) || (sub_26BD1BFC0(), OUTLINED_FUNCTION_8_2(), result = sub_26BDA0A50(), !v0))
            {
              OUTLINED_FUNCTION_29();
              if (!v17 || (result = OUTLINED_FUNCTION_103(v15, v16, 7), !v0))
              {
                type metadata accessor for HMTArticle(0);
                return OUTLINED_FUNCTION_104();
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_26BD1864C()
{
  OUTLINED_FUNCTION_184();
  OUTLINED_FUNCTION_20_0(v2);
  v5 = v5 && v3 == v4;
  if (!v5 && (sub_26BDA0FB0() & 1) == 0)
  {
    return 0;
  }

  v6 = *(v1 + 16) == *(v0 + 16) && *(v1 + 24) == *(v0 + 24);
  if (!v6 && (sub_26BDA0FB0() & 1) == 0)
  {
    return 0;
  }

  if (*(v1 + 32) != *(v0 + 32))
  {
    return 0;
  }

  v7 = *(v1 + 40) == *(v0 + 40) && *(v1 + 48) == *(v0 + 48);
  if (!v7 && (sub_26BDA0FB0() & 1) == 0)
  {
    return 0;
  }

  v8 = *(v1 + 56) == *(v0 + 56) && *(v1 + 64) == *(v0 + 64);
  if (!v8 && (sub_26BDA0FB0() & 1) == 0)
  {
    return 0;
  }

  if (!sub_26BD3AEDC(*(v1 + 72), *(v1 + 80), *(v0 + 72)))
  {
    return 0;
  }

  v9 = *(v1 + 88) == *(v0 + 88) && *(v1 + 96) == *(v0 + 96);
  if (!v9 && (sub_26BDA0FB0() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for HMTArticle(0);
  sub_26BDA0850();
  OUTLINED_FUNCTION_0_3();
  sub_26BD1B9B8(v10, v11, MEMORY[0x277D216D0]);
  return OUTLINED_FUNCTION_105() & 1;
}

uint64_t sub_26BD187A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 44);
  v5 = sub_26BDA0850();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_26BD18814(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 44);
  v5 = sub_26BDA0850();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_26BD188B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_26BD1B9B8(&qword_280449DB8, type metadata accessor for HMTArticle, &unk_26BDA5320);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26BD18958(uint64_t a1)
{
  v2 = sub_26BD1B9B8(&qword_280449D90, type metadata accessor for HMTArticle, &unk_26BDA5358);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26BD18A20(uint64_t a1, uint64_t a2)
{
  sub_26BD1B9B8(&qword_280449D90, type metadata accessor for HMTArticle, &unk_26BDA5358);

  return sub_26BDA0A00();
}

uint64_t sub_26BD18AA0()
{
  v0 = sub_26BDA0B10();
  __swift_allocate_value_buffer(v0, qword_280459F58);
  __swift_project_value_buffer(v0, qword_280459F58);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804495C8, &unk_26BDA3CB0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804495D0, &qword_26BDA3510) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26BDA1A20;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "UNKNOWN";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_26BDA0AE0();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "REGULAR";
  *(v10 + 1) = 7;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "USER_GUIDE";
  *(v12 + 1) = 10;
  v12[16] = 2;
  v9();
  return sub_26BDA0AF0();
}

uint64_t sub_26BD18CC8()
{
  v0 = sub_26BDA0B10();
  __swift_allocate_value_buffer(v0, qword_280459F70);
  __swift_project_value_buffer(v0, qword_280459F70);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804495C8, &unk_26BDA3CB0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804495D0, &qword_26BDA3510) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26BDA4B30;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "id";
  *(v6 + 8) = 2;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_26BDA0AE0();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "rank";
  *(v10 + 8) = 4;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "solutionSubType";
  *(v12 + 1) = 15;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "title";
  *(v14 + 1) = 5;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "summary";
  *(v16 + 1) = 7;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "url";
  *(v18 + 1) = 3;
  v18[16] = 2;
  v9();
  return sub_26BDA0AF0();
}

uint64_t sub_26BD18F80(uint64_t a1, uint64_t a2)
{
  while (1)
  {
    result = sub_26BDA0900();
    if (v2 || (v4 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
      case 3:
      case 4:
      case 5:
      case 6:
        OUTLINED_FUNCTION_129();
        sub_26BDA0990();
        break;
      case 2:
        OUTLINED_FUNCTION_129();
        sub_26BDA0980();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_26BD19050()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_29();
  if (!v4 || (result = OUTLINED_FUNCTION_103(v2, v3, 1), !v0))
  {
    if (*(v1 + 16) == 0.0 || (OUTLINED_FUNCTION_8_2(), OUTLINED_FUNCTION_129(), result = sub_26BDA0AA0(), !v0))
    {
      OUTLINED_FUNCTION_29();
      if (!v8 || (result = OUTLINED_FUNCTION_103(v6, v7, 3), !v0))
      {
        OUTLINED_FUNCTION_29();
        if (!v11 || (result = OUTLINED_FUNCTION_103(v9, v10, 4), !v0))
        {
          OUTLINED_FUNCTION_29();
          if (!v14 || (result = OUTLINED_FUNCTION_103(v12, v13, 5), !v0))
          {
            OUTLINED_FUNCTION_29();
            if (!v17 || (result = OUTLINED_FUNCTION_103(v15, v16, 6), !v0))
            {
              type metadata accessor for HMTBCSSolution(0);
              return OUTLINED_FUNCTION_104();
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_26BD1914C()
{
  OUTLINED_FUNCTION_184();
  OUTLINED_FUNCTION_20_0(v2);
  v5 = v5 && v3 == v4;
  if (!v5 && (sub_26BDA0FB0() & 1) == 0)
  {
    return 0;
  }

  if (*(v1 + 16) != *(v0 + 16))
  {
    return 0;
  }

  v6 = *(v1 + 24) == *(v0 + 24) && *(v1 + 32) == *(v0 + 32);
  if (!v6 && (sub_26BDA0FB0() & 1) == 0)
  {
    return 0;
  }

  v7 = *(v1 + 40) == *(v0 + 40) && *(v1 + 48) == *(v0 + 48);
  if (!v7 && (sub_26BDA0FB0() & 1) == 0)
  {
    return 0;
  }

  v8 = *(v1 + 56) == *(v0 + 56) && *(v1 + 64) == *(v0 + 64);
  if (!v8 && (sub_26BDA0FB0() & 1) == 0)
  {
    return 0;
  }

  v9 = *(v1 + 72) == *(v0 + 72) && *(v1 + 80) == *(v0 + 80);
  if (!v9 && (sub_26BDA0FB0() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for HMTBCSSolution(0);
  sub_26BDA0850();
  OUTLINED_FUNCTION_0_3();
  sub_26BD1B9B8(v10, v11, MEMORY[0x277D216D0]);
  return OUTLINED_FUNCTION_105() & 1;
}

uint64_t sub_26BD19290@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 40);
  v5 = sub_26BDA0850();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_26BD19304(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  v5 = sub_26BDA0850();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_26BD193A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_26BD1B9B8(&qword_280449DC8, type metadata accessor for HMTBCSSolution, &unk_26BDA5190);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26BD19448(uint64_t a1)
{
  v2 = sub_26BD1B9B8(&qword_280449D70, type metadata accessor for HMTBCSSolution, &unk_26BDA51C8);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26BD19510(uint64_t a1, uint64_t a2)
{
  sub_26BD1B9B8(&qword_280449D70, type metadata accessor for HMTBCSSolution, &unk_26BDA51C8);

  return sub_26BDA0A00();
}

uint64_t sub_26BD19590()
{
  v0 = sub_26BDA0B10();
  __swift_allocate_value_buffer(v0, qword_280459F88);
  __swift_project_value_buffer(v0, qword_280459F88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804495C8, &unk_26BDA3CB0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804495D0, &qword_26BDA3510) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26BDA1A20;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "stepMap";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_26BDA0AE0();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "articleMap";
  *(v10 + 1) = 10;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "bcsSolutionMap";
  *(v12 + 1) = 14;
  v12[16] = 2;
  v9();
  return sub_26BDA0AF0();
}

void sub_26BD19798()
{
  OUTLINED_FUNCTION_246();
  OUTLINED_FUNCTION_49();
  while (1)
  {
    v2 = OUTLINED_FUNCTION_32_1();
    if (v0 || (v3 & 1) != 0)
    {
      break;
    }

    switch(v2)
    {
      case 3:
        sub_26BDA0820();
        type metadata accessor for HMTBCSSolution(0);
        OUTLINED_FUNCTION_13_0();
        sub_26BD1B9B8(&qword_280449D70, v1, &unk_26BDA51C8);
        OUTLINED_FUNCTION_12_0();
        sub_26BD1B9B8(&qword_280449D78, v1, v6);
LABEL_10:
        sub_26BDA08E0();
        break;
      case 2:
        sub_26BDA0820();
        type metadata accessor for HMTArticle(0);
        OUTLINED_FUNCTION_15_0();
        sub_26BD1B9B8(&qword_280449D90, v1, &unk_26BDA5358);
        OUTLINED_FUNCTION_14_0();
        sub_26BD1B9B8(&qword_280449D98, v1, v5);
        goto LABEL_10;
      case 1:
        sub_26BDA0820();
        type metadata accessor for HMTSolutionResponse.Step(0);
        v1 = sub_26BD1B9B8(&qword_280449D10, type metadata accessor for HMTSolutionResponse.Step, &unk_26BDA4D90);
        OUTLINED_FUNCTION_17_1();
        sub_26BD1B9B8(&qword_280449D18, type metadata accessor for HMTSolutionResponse.Step, v4);
        goto LABEL_10;
    }
  }

  OUTLINED_FUNCTION_247();
}

uint64_t sub_26BD1996C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(*v3 + 16))
  {
    sub_26BDA0820();
    v5 = type metadata accessor for HMTSolutionResponse.Step(0);
    sub_26BD1B9B8(&qword_280449D10, type metadata accessor for HMTSolutionResponse.Step, &unk_26BDA4D90);
    OUTLINED_FUNCTION_17_1();
    sub_26BD1B9B8(v6, type metadata accessor for HMTSolutionResponse.Step, v7);
    result = sub_26BDA0A20();
    if (v4)
    {
      return result;
    }

    v3 = v15;
  }

  if (*(v3[1] + 16))
  {
    sub_26BDA0820();
    type metadata accessor for HMTArticle(0);
    OUTLINED_FUNCTION_15_0();
    sub_26BD1B9B8(v9, v5, &unk_26BDA5358);
    OUTLINED_FUNCTION_14_0();
    sub_26BD1B9B8(v10, v5, v11);
    result = sub_26BDA0A20();
    if (v4)
    {
      return result;
    }

    v3 = v15;
  }

  if (!*(v3[2] + 16) || (sub_26BDA0820(), type metadata accessor for HMTBCSSolution(0), OUTLINED_FUNCTION_13_0(), sub_26BD1B9B8(v12, v5, &unk_26BDA51C8), OUTLINED_FUNCTION_12_0(), sub_26BD1B9B8(v13, v5, v14), result = sub_26BDA0A20(), !v4))
  {
    type metadata accessor for HMTSolutionResponse(0);
    return sub_26BDA0830();
  }

  return result;
}

uint64_t sub_26BD19C24()
{
  OUTLINED_FUNCTION_184();
  sub_26BD2E240();
  if ((v0 & 1) == 0)
  {
    return 0;
  }

  sub_26BD2E954();
  if ((v1 & 1) == 0)
  {
    return 0;
  }

  sub_26BD2EE10();
  if ((v2 & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for HMTSolutionResponse(0);
  sub_26BDA0850();
  OUTLINED_FUNCTION_0_3();
  sub_26BD1B9B8(v3, v4, MEMORY[0x277D216D0]);
  return OUTLINED_FUNCTION_105() & 1;
}

uint64_t sub_26BD19D18(uint64_t a1, uint64_t a2)
{
  v4 = sub_26BD1B9B8(&qword_280449DD0, type metadata accessor for HMTSolutionResponse, &unk_26BDA5028);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26BD19DB8(uint64_t a1)
{
  v2 = sub_26BD1B9B8(&qword_280449D50, type metadata accessor for HMTSolutionResponse, &unk_26BDA5060);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26BD19E80(uint64_t a1, uint64_t a2)
{
  sub_26BD1B9B8(&qword_280449D50, type metadata accessor for HMTSolutionResponse, &unk_26BDA5060);

  return sub_26BDA0A00();
}

uint64_t sub_26BD19F00()
{
  v0 = sub_26BDA0B10();
  __swift_allocate_value_buffer(v0, qword_280459FA0);
  __swift_project_value_buffer(v0, qword_280459FA0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804495C8, &unk_26BDA3CB0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804495D0, &qword_26BDA3510) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26BDA1990;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "symptom_info";
  *(v6 + 8) = 12;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21888];
  v8 = sub_26BDA0AE0();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "product_info";
  *(v10 + 1) = 12;
  v10[16] = 2;
  v9();
  return sub_26BDA0AF0();
}

void sub_26BD1A0C8()
{
  OUTLINED_FUNCTION_246();
  OUTLINED_FUNCTION_49();
  while (1)
  {
    v1 = OUTLINED_FUNCTION_32_1();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (v1 == 2)
    {
      type metadata accessor for HMTSolutionResponse.AlternativeSymptomInfo(0);
      type metadata accessor for ProductPedigreeInfo(0);
      OUTLINED_FUNCTION_19_1();
      v4 = &protocol conformance descriptor for ProductPedigreeInfo;
      v5 = &qword_280449BB0;
LABEL_8:
      sub_26BD1B9B8(v5, v3, v4);
      OUTLINED_FUNCTION_35_0();
      sub_26BDA09B0();
    }

    else if (v1 == 1)
    {
      type metadata accessor for HMTSolutionResponse.AlternativeSymptomInfo(0);
      type metadata accessor for SymptomInfo(0);
      OUTLINED_FUNCTION_21_0();
      v4 = &protocol conformance descriptor for SymptomInfo;
      v5 = &qword_280449BE0;
      goto LABEL_8;
    }
  }

  OUTLINED_FUNCTION_247();
}

void sub_26BD1A1B8()
{
  OUTLINED_FUNCTION_246();
  v3 = v0;
  v32 = v4;
  v33 = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280449CC8, &unk_26BDA4B90);
  OUTLINED_FUNCTION_110(v6);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v7);
  v8 = OUTLINED_FUNCTION_229();
  v30 = type metadata accessor for ProductPedigreeInfo(v8);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_44();
  v29 = v11 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280449CC0, &qword_26BDA4B88);
  OUTLINED_FUNCTION_110(v12);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v13);
  v15 = &v28 - v14;
  type metadata accessor for SymptomInfo(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_44();
  v19 = v18 - v17;
  type metadata accessor for HMTSolutionResponse.AlternativeSymptomInfo(0);
  v31 = v3;
  sub_26BD0D868();
  OUTLINED_FUNCTION_42_0();
  if (__swift_getEnumTagSinglePayload(v20, v21, v22) == 1)
  {
    sub_26BD04E80(v15, &qword_280449CC0, &qword_26BDA4B88);
  }

  else
  {
    OUTLINED_FUNCTION_16_0();
    sub_26BD1C20C();
    OUTLINED_FUNCTION_21_0();
    sub_26BD1B9B8(v23, v24, &protocol conformance descriptor for SymptomInfo);
    sub_26BDA0AD0();
    sub_26BD1C1B4(v19, &qword_280449CC0);
    if (v1)
    {
      goto LABEL_8;
    }
  }

  sub_26BD0D868();
  if (__swift_getEnumTagSinglePayload(v2, 1, v30) == 1)
  {
    sub_26BD04E80(v2, &qword_280449CC8, &unk_26BDA4B90);
LABEL_7:
    sub_26BDA0830();
    goto LABEL_8;
  }

  v25 = v29;
  sub_26BD1C20C();
  OUTLINED_FUNCTION_19_1();
  sub_26BD1B9B8(v26, v27, &protocol conformance descriptor for ProductPedigreeInfo);
  sub_26BDA0AD0();
  sub_26BD1C1B4(v25, type metadata accessor for ProductPedigreeInfo);
  if (!v1)
  {
    goto LABEL_7;
  }

LABEL_8:
  OUTLINED_FUNCTION_247();
}

uint64_t sub_26BD1A4D0(uint64_t a1, uint64_t a2)
{
  v52 = type metadata accessor for ProductPedigreeInfo(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_44();
  v48 = v6 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280449CC8, &unk_26BDA4B90);
  OUTLINED_FUNCTION_110(v7);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v8);
  v49 = &v47 - v9;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280449DD8, &qword_26BDA5410);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v10);
  v53 = &v47 - v11;
  v12 = type metadata accessor for SymptomInfo(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_44();
  v16 = (v15 - v14);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280449CC0, &qword_26BDA4B88);
  OUTLINED_FUNCTION_110(v17);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v18);
  v20 = (&v47 - v19);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280449DE0, &qword_26BDA5418) - 8;
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v22);
  v23 = OUTLINED_FUNCTION_229();
  v50 = type metadata accessor for HMTSolutionResponse.AlternativeSymptomInfo(v23);
  v24 = *(v21 + 56);
  v54 = a1;
  sub_26BD0D868();
  sub_26BD0D868();
  OUTLINED_FUNCTION_112(v2, 1, v12);
  if (v25)
  {
    OUTLINED_FUNCTION_112(v2 + v24, 1, v12);
    if (v25)
    {
      sub_26BD04E80(v2, &qword_280449CC0, &qword_26BDA4B88);
      goto LABEL_22;
    }

    goto LABEL_9;
  }

  sub_26BD0D868();
  OUTLINED_FUNCTION_112(v2 + v24, 1, v12);
  if (v25)
  {
    sub_26BD1C1B4(v20, type metadata accessor for SymptomInfo);
LABEL_9:
    v26 = &qword_280449DE0;
    v27 = &qword_26BDA5418;
LABEL_10:
    v28 = v2;
LABEL_31:
    sub_26BD04E80(v28, v26, v27);
    goto LABEL_32;
  }

  sub_26BD1C20C();
  v29 = *v20 == *v16 && v20[1] == v16[1];
  if (!v29 && (sub_26BDA0FB0() & 1) == 0 || (v20[2] == v16[2] ? (v30 = v20[3] == v16[3]) : (v30 = 0), !v30 && (sub_26BDA0FB0() & 1) == 0))
  {
    sub_26BD1C1B4(v16, type metadata accessor for SymptomInfo);
    sub_26BD1C1B4(v20, type metadata accessor for SymptomInfo);
    v26 = &qword_280449CC0;
    v27 = &qword_26BDA4B88;
    goto LABEL_10;
  }

  v31 = *(v12 + 24);
  sub_26BDA0850();
  OUTLINED_FUNCTION_0_3();
  sub_26BD1B9B8(v32, v33, MEMORY[0x277D216D0]);
  v34 = sub_26BDA0BB0();
  OUTLINED_FUNCTION_16_0();
  sub_26BD1C1B4(v16, v35);
  sub_26BD1C1B4(v20, v31);
  sub_26BD04E80(v2, &qword_280449CC0, &qword_26BDA4B88);
  if ((v34 & 1) == 0)
  {
    goto LABEL_32;
  }

LABEL_22:
  v36 = *(v51 + 48);
  v37 = v53;
  sub_26BD0D868();
  sub_26BD0D868();
  v38 = v52;
  OUTLINED_FUNCTION_112(v37, 1, v52);
  if (v25)
  {
    OUTLINED_FUNCTION_112(v37 + v36, 1, v38);
    if (v25)
    {
      sub_26BD04E80(v37, &qword_280449CC8, &unk_26BDA4B90);
LABEL_36:
      sub_26BDA0850();
      OUTLINED_FUNCTION_0_3();
      sub_26BD1B9B8(v45, v46, MEMORY[0x277D216D0]);
      v41 = sub_26BDA0BB0();
      return v41 & 1;
    }

    goto LABEL_30;
  }

  v39 = v49;
  sub_26BD0D868();
  OUTLINED_FUNCTION_112(v37 + v36, 1, v38);
  if (v40)
  {
    sub_26BD1C1B4(v39, type metadata accessor for ProductPedigreeInfo);
LABEL_30:
    v26 = &qword_280449DD8;
    v27 = &qword_26BDA5410;
    v28 = v37;
    goto LABEL_31;
  }

  v43 = v48;
  sub_26BD1C20C();
  v44 = static ProductPedigreeInfo.== infix(_:_:)(v39);
  sub_26BD1C1B4(v43, type metadata accessor for ProductPedigreeInfo);
  sub_26BD1C1B4(v39, type metadata accessor for ProductPedigreeInfo);
  sub_26BD04E80(v37, &qword_280449CC8, &unk_26BDA4B90);
  if (v44)
  {
    goto LABEL_36;
  }

LABEL_32:
  v41 = 0;
  return v41 & 1;
}

uint64_t sub_26BD1AACC(uint64_t a1, uint64_t a2)
{
  v4 = sub_26BD1B9B8(&qword_280449DF0, type metadata accessor for HMTSolutionResponse.AlternativeSymptomInfo, &unk_26BDA4EC0);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26BD1AB6C(uint64_t a1)
{
  v2 = sub_26BD1B9B8(&qword_280449D30, type metadata accessor for HMTSolutionResponse.AlternativeSymptomInfo, &unk_26BDA4EF8);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26BD1AC34(uint64_t a1, uint64_t a2)
{
  sub_26BD1B9B8(&qword_280449D30, type metadata accessor for HMTSolutionResponse.AlternativeSymptomInfo, &unk_26BDA4EF8);

  return sub_26BDA0A00();
}

uint64_t sub_26BD1ACB4()
{
  v0 = sub_26BDA0B10();
  __swift_allocate_value_buffer(v0, qword_280459FB8);
  __swift_project_value_buffer(v0, qword_280459FB8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804495C8, &unk_26BDA3CB0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804495D0, &qword_26BDA3510) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26BDA19E0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "id";
  *(v6 + 8) = 2;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_26BDA0AE0();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "article_ids";
  *(v10 + 8) = 11;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "bcs_solution_ids";
  *(v12 + 1) = 16;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "should_show_contact_options";
  *(v14 + 1) = 27;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "alternative_symptom_info";
  *(v16 + 1) = 24;
  v16[16] = 2;
  v9();
  return sub_26BDA0AF0();
}

uint64_t sub_26BD1AF40()
{
  OUTLINED_FUNCTION_49();
  while (1)
  {
    result = OUTLINED_FUNCTION_32_1();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        OUTLINED_FUNCTION_116();
        sub_26BDA0990();
        break;
      case 2:
      case 3:
        OUTLINED_FUNCTION_116();
        sub_26BDA0970();
        break;
      case 4:
        OUTLINED_FUNCTION_116();
        sub_26BDA0920();
        break;
      case 5:
        type metadata accessor for HMTSolutionResponse.Step(0);
        type metadata accessor for HMTSolutionResponse.AlternativeSymptomInfo(0);
        OUTLINED_FUNCTION_20_2();
        sub_26BD1B9B8(&qword_280449D30, v3, &unk_26BDA4EF8);
        OUTLINED_FUNCTION_35_0();
        sub_26BDA09B0();
        break;
      default:
        continue;
    }
  }
}

void sub_26BD1B060(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_246();
  a19 = v22;
  a20 = v23;
  OUTLINED_FUNCTION_60();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280449CA0, &qword_26BDA4B78);
  OUTLINED_FUNCTION_110(v24);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v25);
  v27 = &a9 - v26;
  v28 = type metadata accessor for HMTSolutionResponse.AlternativeSymptomInfo(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_44();
  v32 = v31 - v30;
  OUTLINED_FUNCTION_29();
  if (!v35 || (OUTLINED_FUNCTION_103(v33, v34, 1), !v20))
  {
    if (!*(*(v21 + 16) + 16) || (OUTLINED_FUNCTION_8_2(), sub_26BDA0A90(), !v20))
    {
      if (!*(*(v21 + 24) + 16) || (OUTLINED_FUNCTION_8_2(), sub_26BDA0A90(), !v20))
      {
        if (*(v21 + 32) != 1 || (OUTLINED_FUNCTION_8_2(), sub_26BDA0A40(), !v20))
        {
          v36 = type metadata accessor for HMTSolutionResponse.Step(0);
          sub_26BD0D868();
          if (__swift_getEnumTagSinglePayload(v27, 1, v28) == 1)
          {
            sub_26BD04E80(v27, &qword_280449CA0, &qword_26BDA4B78);
LABEL_12:
            OUTLINED_FUNCTION_104();
            goto LABEL_13;
          }

          a10 = v36;
          OUTLINED_FUNCTION_18_0();
          v38 = v37;
          sub_26BD1C20C();
          OUTLINED_FUNCTION_20_2();
          sub_26BD1B9B8(v39, v40, &unk_26BDA4EF8);
          OUTLINED_FUNCTION_8_2();
          sub_26BDA0AD0();
          sub_26BD1C1B4(v32, v38);
          if (!v20)
          {
            goto LABEL_12;
          }
        }
      }
    }
  }

LABEL_13:
  OUTLINED_FUNCTION_247();
}

uint64_t sub_26BD1B290()
{
  OUTLINED_FUNCTION_184();
  type metadata accessor for HMTSolutionResponse.AlternativeSymptomInfo(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_44();
  v5 = v4 - v3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280449CA0, &qword_26BDA4B78);
  OUTLINED_FUNCTION_110(v6);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v7);
  v9 = v29 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280449DE8, &unk_26BDA5420);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v10);
  v12 = v29 - v11;
  v13 = *v1 == *v0 && *(v1 + 8) == *(v0 + 8);
  if (!v13 && (sub_26BDA0FB0() & 1) == 0 || (sub_26BCFF1F4(*(v1 + 16), *(v0 + 16)) & 1) == 0 || (sub_26BCFF1F4(*(v1 + 24), *(v0 + 24)) & 1) == 0 || *(v1 + 32) != *(v0 + 32))
  {
    goto LABEL_18;
  }

  v29[1] = type metadata accessor for HMTSolutionResponse.Step(0);
  sub_26BD0D868();
  sub_26BD0D868();
  OUTLINED_FUNCTION_42_0();
  OUTLINED_FUNCTION_112(v14, v15, v16);
  if (v13)
  {
    OUTLINED_FUNCTION_42_0();
    OUTLINED_FUNCTION_112(v17, v18, v19);
    if (v13)
    {
      sub_26BD04E80(v12, &qword_280449CA0, &qword_26BDA4B78);
LABEL_21:
      sub_26BDA0850();
      OUTLINED_FUNCTION_0_3();
      sub_26BD1B9B8(v27, v28, MEMORY[0x277D216D0]);
      v24 = OUTLINED_FUNCTION_105();
      return v24 & 1;
    }

    goto LABEL_17;
  }

  sub_26BD0D868();
  OUTLINED_FUNCTION_42_0();
  OUTLINED_FUNCTION_112(v20, v21, v22);
  if (v23)
  {
    sub_26BD1C1B4(v9, type metadata accessor for HMTSolutionResponse.AlternativeSymptomInfo);
LABEL_17:
    sub_26BD04E80(v12, &qword_280449DE8, &unk_26BDA5420);
    goto LABEL_18;
  }

  sub_26BD1C20C();
  v26 = sub_26BD1A4D0(v9, v5);
  sub_26BD1C1B4(v5, type metadata accessor for HMTSolutionResponse.AlternativeSymptomInfo);
  sub_26BD1C1B4(v9, type metadata accessor for HMTSolutionResponse.AlternativeSymptomInfo);
  sub_26BD04E80(v12, &qword_280449CA0, &qword_26BDA4B78);
  if (v26)
  {
    goto LABEL_21;
  }

LABEL_18:
  v24 = 0;
  return v24 & 1;
}

uint64_t sub_26BD1B588(uint64_t (*a1)(void), unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  OUTLINED_FUNCTION_47_1(a1);
  a1(0);
  sub_26BD1B9B8(a2, a3, a4);
  sub_26BDA0BA0();
  return sub_26BDA1070();
}

uint64_t sub_26BD1B628@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 32);
  v5 = sub_26BDA0850();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_26BD1B69C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = sub_26BDA0850();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_26BD1B740(uint64_t a1, uint64_t a2)
{
  v4 = sub_26BD1B9B8(&qword_280449DF8, type metadata accessor for HMTSolutionResponse.Step, &unk_26BDA4D58);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26BD1B7E0(uint64_t a1)
{
  v2 = sub_26BD1B9B8(&qword_280449D10, type metadata accessor for HMTSolutionResponse.Step, &unk_26BDA4D90);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26BD1B8A8(uint64_t a1, uint64_t a2)
{
  sub_26BD1B9B8(&qword_280449D10, type metadata accessor for HMTSolutionResponse.Step, &unk_26BDA4D90);

  return sub_26BDA0A00();
}

uint64_t sub_26BD1B9B8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_26BD1BF14()
{
  result = qword_280449DA8;
  if (!qword_280449DA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280449DB0, qword_26BDA53D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280449DA8);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_26BD1BFC0()
{
  result = qword_280449DC0;
  if (!qword_280449DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280449DC0);
  }

  return result;
}

uint64_t sub_26BD1C014(uint64_t a1, char a2)
{
  sub_26BDA0C10();
}

uint64_t sub_26BD1C0A4()
{
  OUTLINED_FUNCTION_40_1();
  switch(v0)
  {
    case 1:
    case 3:
    case 5:
      OUTLINED_FUNCTION_40_1();
      break;
    default:
      break;
  }

  sub_26BDA0C10();
}

uint64_t sub_26BD1C1B4(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_34();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_26BD1C20C()
{
  OUTLINED_FUNCTION_184();
  v2(0);
  OUTLINED_FUNCTION_34();
  (*(v3 + 32))(v0, v1);
  return v0;
}

unint64_t sub_26BD1C268()
{
  result = qword_280449E00;
  if (!qword_280449E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280449E00);
  }

  return result;
}

unint64_t sub_26BD1C2BC()
{
  result = qword_280449E08;
  if (!qword_280449E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280449E08);
  }

  return result;
}

unint64_t sub_26BD1C310()
{
  result = qword_280449E10;
  if (!qword_280449E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280449E10);
  }

  return result;
}

unint64_t sub_26BD1C364()
{
  result = qword_280449E18;
  if (!qword_280449E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280449E18);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_32_1()
{

  return sub_26BDA0900();
}

uint64_t OUTLINED_FUNCTION_37_0(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_26BDA0B70();
}

uint64_t OUTLINED_FUNCTION_38_1(uint64_t a1, uint64_t a2, uint64_t a3, ...)
{

  return sub_26BDA0C10();
}

uint64_t OUTLINED_FUNCTION_39_1(uint64_t a1, ...)
{

  return sub_26BDA0C10();
}

uint64_t OUTLINED_FUNCTION_45_0(uint64_t a1, uint64_t a2, ...)
{

  return sub_26BDA0BA0();
}

void *OUTLINED_FUNCTION_47_1(uint64_t a1, ...)
{

  return sub_26BDA1050();
}

uint64_t SupportOptionDetailsRequest.caseMetaData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_122();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_110(v5);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v6);
  v7 = OUTLINED_FUNCTION_17();
  type metadata accessor for SupportOptionDetailsRequest(v7);
  OUTLINED_FUNCTION_71_0();
  v8 = type metadata accessor for TriageRequest.CaseMetaData(0);
  OUTLINED_FUNCTION_14();
  if (v9)
  {
    _s15SupportServices0A19OptionTypeNamespaceVACycfC_0();
    v10 = *(v8 + 20);
    if (qword_280448E60 != -1)
    {
      OUTLINED_FUNCTION_226(&qword_280448E60);
    }

    *(a1 + v10) = qword_28044A6A8;
    v11 = OUTLINED_FUNCTION_114();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v11, v12, v8);

    if (EnumTagSinglePayload != 1)
    {
      return sub_26BD04E80(v1, &qword_280448F68, &qword_26BDA1A30);
    }
  }

  else
  {
    OUTLINED_FUNCTION_12_1();
    OUTLINED_FUNCTION_126();
    return sub_26BD2DF9C();
  }

  return result;
}

uint64_t SupportOptionDetailsRequest.caseMetaData.setter()
{
  v1 = OUTLINED_FUNCTION_134();
  v2 = type metadata accessor for SupportOptionDetailsRequest(v1);
  sub_26BD04E80(v0 + *(v2 + 24), &qword_280448F68, &qword_26BDA1A30);
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_143();
  sub_26BD2DF9C();
  type metadata accessor for TriageRequest.CaseMetaData(0);
  v3 = OUTLINED_FUNCTION_51_0();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void SupportOptionDetailsRequest.caseMetaData.modify()
{
  OUTLINED_FUNCTION_284();
  v1 = OUTLINED_FUNCTION_277();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_59(v2);
  v3 = OUTLINED_FUNCTION_117_0();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_110(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_187(v7);
  v9 = type metadata accessor for TriageRequest.CaseMetaData(v8);
  *(v0 + 16) = v9;
  OUTLINED_FUNCTION_34();
  v11 = *(v10 + 64);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_303(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  v15 = OUTLINED_FUNCTION_227(v14);
  *(v0 + 40) = *(type metadata accessor for SupportOptionDetailsRequest(v15) + 24);
  OUTLINED_FUNCTION_139_0();
  OUTLINED_FUNCTION_9();
  if (v16)
  {
    _s15SupportServices0A19OptionTypeNamespaceVACycfC_0();
    v17 = *(v9 + 20);
    if (qword_280448E60 != -1)
    {
      OUTLINED_FUNCTION_226(&qword_280448E60);
    }

    *(v11 + v17) = qword_28044A6A8;
    v18 = OUTLINED_FUNCTION_42_1();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v18, v19, v9);

    if (EnumTagSinglePayload != 1)
    {
      sub_26BD04E80(v7, &qword_280448F68, &qword_26BDA1A30);
    }
  }

  else
  {
    OUTLINED_FUNCTION_12_1();
    OUTLINED_FUNCTION_147_0();
  }

  OUTLINED_FUNCTION_283();
}

uint64_t SupportOptionDetailsRequest.clientContext.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_122();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_110(v5);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v6);
  v7 = OUTLINED_FUNCTION_17();
  type metadata accessor for SupportOptionDetailsRequest(v7);
  OUTLINED_FUNCTION_71_0();
  v8 = type metadata accessor for TriageRequest.ClientContext(0);
  OUTLINED_FUNCTION_14();
  if (v9)
  {
    _s15SupportServices0A19OptionTypeNamespaceVACycfC_0();
    v10 = *(v8 + 20);
    if (qword_280448E80 != -1)
    {
      OUTLINED_FUNCTION_220(&qword_280448E80);
    }

    *(a1 + v10) = qword_28044A6F0;
    v11 = OUTLINED_FUNCTION_114();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v11, v12, v8);

    if (EnumTagSinglePayload != 1)
    {
      return sub_26BD04E80(v1, &qword_280448F70, &qword_26BDA1A38);
    }
  }

  else
  {
    OUTLINED_FUNCTION_11_0();
    OUTLINED_FUNCTION_126();
    return sub_26BD2DF9C();
  }

  return result;
}

uint64_t SupportOptionDetailsRequest.clientContext.setter()
{
  v1 = OUTLINED_FUNCTION_134();
  v2 = type metadata accessor for SupportOptionDetailsRequest(v1);
  sub_26BD04E80(v0 + *(v2 + 28), &qword_280448F70, &qword_26BDA1A38);
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_143();
  sub_26BD2DF9C();
  type metadata accessor for TriageRequest.ClientContext(0);
  v3 = OUTLINED_FUNCTION_51_0();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void SupportOptionDetailsRequest.clientContext.modify()
{
  OUTLINED_FUNCTION_284();
  v1 = OUTLINED_FUNCTION_277();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_59(v2);
  v3 = OUTLINED_FUNCTION_117_0();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_110(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_187(v7);
  v9 = type metadata accessor for TriageRequest.ClientContext(v8);
  *(v0 + 16) = v9;
  OUTLINED_FUNCTION_34();
  v11 = *(v10 + 64);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_303(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  v15 = OUTLINED_FUNCTION_227(v14);
  *(v0 + 40) = *(type metadata accessor for SupportOptionDetailsRequest(v15) + 28);
  OUTLINED_FUNCTION_139_0();
  OUTLINED_FUNCTION_9();
  if (v16)
  {
    _s15SupportServices0A19OptionTypeNamespaceVACycfC_0();
    v17 = *(v9 + 20);
    if (qword_280448E80 != -1)
    {
      OUTLINED_FUNCTION_220(&qword_280448E80);
    }

    *(v11 + v17) = qword_28044A6F0;
    v18 = OUTLINED_FUNCTION_42_1();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v18, v19, v9);

    if (EnumTagSinglePayload != 1)
    {
      sub_26BD04E80(v7, &qword_280448F70, &qword_26BDA1A38);
    }
  }

  else
  {
    OUTLINED_FUNCTION_11_0();
    OUTLINED_FUNCTION_147_0();
  }

  OUTLINED_FUNCTION_283();
}

uint64_t SupportOptionDetailsRequest.hasClientContext.getter()
{
  v0 = OUTLINED_FUNCTION_128();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_110(v2);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v3);
  v4 = OUTLINED_FUNCTION_17();
  v5 = type metadata accessor for SupportOptionDetailsRequest(v4);
  OUTLINED_FUNCTION_32_0(*(v5 + 28));
  sub_26BD31AF8();
  type metadata accessor for TriageRequest.ClientContext(0);
  v6 = OUTLINED_FUNCTION_114();
  OUTLINED_FUNCTION_112(v6, v7, v8);
  if (v9)
  {
    v10 = 0;
  }

  else
  {
    v10 = 1;
  }

  v11 = OUTLINED_FUNCTION_126();
  sub_26BD04E80(v11, v12, &qword_26BDA1A38);
  return v10;
}

Swift::Void __swiftcall SupportOptionDetailsRequest.clearClientContext()()
{
  v1 = type metadata accessor for SupportOptionDetailsRequest(0);
  sub_26BD04E80(v0 + *(v1 + 28), &qword_280448F70, &qword_26BDA1A38);
  type metadata accessor for TriageRequest.ClientContext(0);
  OUTLINED_FUNCTION_123();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t SupportOptionDetailsRequest.reportingContext.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t SupportOptionDetailsRequest.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_134();
  type metadata accessor for SupportOptionDetailsRequest(v0);
  return OUTLINED_FUNCTION_185();
}

uint64_t SupportOptionDetailsRequest.init()@<X0>(uint64_t *a1@<X8>)
{
  *a1 = sub_26BDA0B70();
  type metadata accessor for SupportOptionDetailsRequest(0);
  _s15SupportServices0A19OptionTypeNamespaceVACycfC_0();
  type metadata accessor for TriageRequest.CaseMetaData(0);
  OUTLINED_FUNCTION_123();
  __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
  type metadata accessor for TriageRequest.ClientContext(0);
  v5 = OUTLINED_FUNCTION_48();

  return __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
}

uint64_t AssociatedProductInfo.unknownFields.getter()
{
  v0 = OUTLINED_FUNCTION_217();
  type metadata accessor for AssociatedProductInfo(v0);
  sub_26BDA0850();
  OUTLINED_FUNCTION_34();
  v1 = OUTLINED_FUNCTION_148();

  return v2(v1);
}

uint64_t AssociatedProductInfo.unknownFields.setter()
{
  v0 = OUTLINED_FUNCTION_134();
  type metadata accessor for AssociatedProductInfo(v0);
  sub_26BDA0850();
  OUTLINED_FUNCTION_34();
  v1 = OUTLINED_FUNCTION_234();

  return v2(v1);
}

uint64_t AssociatedProductInfo.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_134();
  type metadata accessor for AssociatedProductInfo(v0);
  return OUTLINED_FUNCTION_185();
}

uint64_t AssociatedProductInfo.init()@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_82();
  *(a1 + 32) = 0;
  *(a1 + 40) = v2;
  *(a1 + 48) = 0;
  *(a1 + 56) = v2;
  *(a1 + 64) = 0;
  type metadata accessor for AssociatedProductInfo(0);
  return _s15SupportServices0A19OptionTypeNamespaceVACycfC_0();
}

uint64_t SupportOptionDetailsResponse.supportOptionType.getter@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_8_3();
  result = OUTLINED_FUNCTION_230(v1 + 16, v5);
  v4 = *(v1 + 24);
  *a1 = *(v1 + 16);
  *(a1 + 8) = v4;
  return result;
}

uint64_t sub_26BD1D13C@<X0>(uint64_t a1@<X8>)
{
  result = SupportOptionDetailsResponse.supportOptionType.getter(&v4);
  v3 = v5;
  *a1 = v4;
  *(a1 + 8) = v3;
  return result;
}

uint64_t sub_26BD1D180(uint64_t *a1)
{
  v1 = *(a1 + 8);
  v3 = *a1;
  v4 = v1;
  return SupportOptionDetailsResponse.supportOptionType.setter(&v3);
}

uint64_t SupportOptionDetailsResponse.supportOptionType.setter(uint64_t *a1)
{
  v3 = v1;
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = OUTLINED_FUNCTION_72_0();
  v7 = *(v1 + v2);
  if ((v6 & 1) == 0)
  {
    OUTLINED_FUNCTION_35_1();
    v8 = OUTLINED_FUNCTION_36();
    v7 = sub_26BD24600(v8);
    *(v3 + v2) = v7;
  }

  result = OUTLINED_FUNCTION_235(v7 + 16, v10);
  *(v7 + 16) = v4;
  *(v7 + 24) = v5;
  return result;
}

uint64_t SupportOptionDetailsResponse.supportOptionType.modify()
{
  v2 = __swift_coroFrameAllocStub(0x60uLL);
  *(OUTLINED_FUNCTION_142(v2) + 88) = v0;
  OUTLINED_FUNCTION_21_1();
  *(v1 + 84) = v3;
  v4 = *(v0 + v3);
  OUTLINED_FUNCTION_127(v4 + 16);
  v5 = *(v4 + 24);
  *(v1 + 72) = *(v4 + 16);
  *(v1 + 80) = v5;
  return OUTLINED_FUNCTION_133();
}

void sub_26BD1D2AC()
{
  OUTLINED_FUNCTION_284();
  v1 = v0;
  v3 = *v2;
  v4 = *(*v2 + 72);
  v5 = *(*v2 + 84);
  v6 = *(*v2 + 88);
  v7 = *(*v2 + 80);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v6 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = *(v3 + 84);
    v11 = *(v3 + 88);
    OUTLINED_FUNCTION_35_1();
    v12 = OUTLINED_FUNCTION_36();
    v9 = sub_26BD24600(v12);
    *(v11 + v10) = v9;
  }

  v13 = 48;
  if (v1)
  {
    v13 = 24;
  }

  OUTLINED_FUNCTION_235(v9 + 16, v3 + v13);
  *(v9 + 16) = v4;
  *(v9 + 24) = v7;
  OUTLINED_FUNCTION_283();

  free(v14);
}

uint64_t SupportOptionDetailsResponse.supportOptionSubTypeString.getter()
{
  OUTLINED_FUNCTION_8_3();
  OUTLINED_FUNCTION_230(v0 + 32, v2);

  return OUTLINED_FUNCTION_147();
}

uint64_t SupportOptionDetailsResponse.supportOptionSubTypeString.setter()
{
  OUTLINED_FUNCTION_171();
  v4 = OUTLINED_FUNCTION_72_0();
  v5 = *(v1 + v3);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_35_1();
    v6 = OUTLINED_FUNCTION_36();
    v7 = sub_26BD24600(v6);
    OUTLINED_FUNCTION_219(v7);
  }

  OUTLINED_FUNCTION_235(v5 + 32, v9);
  *(v5 + 32) = v2;
  *(v5 + 40) = v0;
}

uint64_t SupportOptionDetailsResponse.supportOptionSubTypeString.modify()
{
  v2 = OUTLINED_FUNCTION_192();
  v3 = __swift_coroFrameAllocStub(v2);
  *(OUTLINED_FUNCTION_142(v3) + 64) = v0;
  OUTLINED_FUNCTION_21_1();
  *(v1 + 72) = v4;
  v5 = *(v0 + v4);
  OUTLINED_FUNCTION_127(v5 + 32);
  v6 = *(v5 + 40);
  *(v1 + 48) = *(v5 + 32);
  *(v1 + 56) = v6;

  return OUTLINED_FUNCTION_128();
}

void sub_26BD1D4C0()
{
  OUTLINED_FUNCTION_54();
  if (v3)
  {

    OUTLINED_FUNCTION_130();
    SupportOptionDetailsResponse.supportOptionSubTypeString.setter();
  }

  else
  {
    v4 = *(v0 + 72);
    v5 = *(v0 + 64);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v5 + v4);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      OUTLINED_FUNCTION_35_1();
      v8 = OUTLINED_FUNCTION_36();
      v9 = sub_26BD24600(v8);
      OUTLINED_FUNCTION_215(v9);
    }

    OUTLINED_FUNCTION_235(v7 + 32, v0 + 24);
    *(v7 + 32) = v2;
    *(v7 + 40) = v1;
  }

  free(v0);
}

void SupportOptionDetailsResponse.triggers.modify()
{
  OUTLINED_FUNCTION_189();
  v2 = OUTLINED_FUNCTION_144();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_42(v3);
  v4 = OUTLINED_FUNCTION_131();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_110(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  OUTLINED_FUNCTION_47(v8);
  v9 = sub_26BDA0810();
  OUTLINED_FUNCTION_6(v9);
  *(v1 + 48) = v10;
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_162(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_6_1(v14);
  OUTLINED_FUNCTION_63();
  OUTLINED_FUNCTION_37_1();
  OUTLINED_FUNCTION_9();
  if (v15)
  {
    sub_26BDA0800();
    OUTLINED_FUNCTION_9();
    if (!v15)
    {
      sub_26BD04E80(v0, &qword_280448F88, &qword_26BDA5440);
    }
  }

  else
  {
    v16 = OUTLINED_FUNCTION_21();
    v17(v16);
  }

  OUTLINED_FUNCTION_133();
  OUTLINED_FUNCTION_188();
}

uint64_t SupportOptionDetailsResponse.scb.getter@<X0>(void *a1@<X8>)
{
  v4 = OUTLINED_FUNCTION_122();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_110(v6);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v7);
  v8 = OUTLINED_FUNCTION_17();
  v9 = type metadata accessor for SupportOptionDetailsResponse(v8);
  OUTLINED_FUNCTION_230(*(v1 + *(v9 + 20)) + OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__scb, v13);
  OUTLINED_FUNCTION_141();
  sub_26BD31AF8();
  type metadata accessor for SupportOptionDetailsResponse.SCBDetails(0);
  OUTLINED_FUNCTION_14();
  if (v10)
  {
    v11 = MEMORY[0x277D84F90];
    *a1 = 0;
    a1[1] = v11;
    a1[2] = 0;
    a1[3] = 0xE000000000000000;
    _s15SupportServices0A19OptionTypeNamespaceVACycfC_0();
    result = OUTLINED_FUNCTION_14();
    if (!v10)
    {
      return sub_26BD04E80(v2, &qword_280449EF0, &qword_26BDA5448);
    }
  }

  else
  {
    OUTLINED_FUNCTION_30_0();
    OUTLINED_FUNCTION_126();
    return sub_26BD2DF9C();
  }

  return result;
}

uint64_t SupportOptionDetailsResponse.scb.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280449EF0, &qword_26BDA5448);
  OUTLINED_FUNCTION_110(v0);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_123_0();
  if ((OUTLINED_FUNCTION_72_0() & 1) == 0)
  {
    OUTLINED_FUNCTION_35_1();
    v2 = OUTLINED_FUNCTION_36();
    v3 = sub_26BD24600(v2);
    OUTLINED_FUNCTION_219(v3);
  }

  OUTLINED_FUNCTION_30_0();
  OUTLINED_FUNCTION_138_0();
  sub_26BD2DF9C();
  type metadata accessor for SupportOptionDetailsResponse.SCBDetails(0);
  OUTLINED_FUNCTION_157();
  OUTLINED_FUNCTION_151();
  __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  OUTLINED_FUNCTION_119_0();
  OUTLINED_FUNCTION_143();
  sub_26BD2E160();
  return swift_endAccess();
}

uint64_t SupportOptionDetailsResponse.SCBDetails.init()@<X0>(void *a1@<X8>)
{
  v2 = MEMORY[0x277D84F90];
  *a1 = 0;
  a1[1] = v2;
  a1[2] = 0;
  a1[3] = 0xE000000000000000;
  type metadata accessor for SupportOptionDetailsResponse.SCBDetails(0);
  return _s15SupportServices0A19OptionTypeNamespaceVACycfC_0();
}

void SupportOptionDetailsResponse.scb.modify()
{
  OUTLINED_FUNCTION_189();
  v3 = OUTLINED_FUNCTION_165();
  v4 = __swift_coroFrameAllocStub(v3);
  OUTLINED_FUNCTION_42(v4);
  v5 = OUTLINED_FUNCTION_131();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  OUTLINED_FUNCTION_110(v7);
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_47(v9);
  type metadata accessor for SupportOptionDetailsResponse.SCBDetails(v10);
  OUTLINED_FUNCTION_34();
  v12 = *(v11 + 64);
  *(v2 + 40) = __swift_coroFrameAllocStub(v12);
  v13 = __swift_coroFrameAllocStub(v12);
  *(v2 + 48) = v13;
  OUTLINED_FUNCTION_8_3();
  OUTLINED_FUNCTION_57_0(v0 + OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__scb);
  OUTLINED_FUNCTION_58_0();
  OUTLINED_FUNCTION_9();
  if (v14)
  {
    v15 = MEMORY[0x277D84F90];
    *v13 = 0;
    v13[1] = v15;
    v13[2] = 0;
    v13[3] = 0xE000000000000000;
    _s15SupportServices0A19OptionTypeNamespaceVACycfC_0();
    OUTLINED_FUNCTION_9();
    if (!v14)
    {
      sub_26BD04E80(v1, &qword_280449EF0, &qword_26BDA5448);
    }
  }

  else
  {
    OUTLINED_FUNCTION_30_0();
    OUTLINED_FUNCTION_147_0();
  }

  OUTLINED_FUNCTION_133();
  OUTLINED_FUNCTION_188();
}

uint64_t sub_26BD1DB10(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  OUTLINED_FUNCTION_171();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(v10, v11);
  OUTLINED_FUNCTION_110(v12);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_183();
  OUTLINED_FUNCTION_8_3();
  OUTLINED_FUNCTION_230(v5 + *a3, v18);
  sub_26BD31AF8();
  v14 = a4(0);
  OUTLINED_FUNCTION_112(v7, 1, v14);
  if (v15)
  {
    v16 = 0;
  }

  else
  {
    v16 = 1;
  }

  sub_26BD04E80(v7, v6, v4);
  return v16;
}

void sub_26BD1DC08()
{
  OUTLINED_FUNCTION_284();
  v2 = v1;
  OUTLINED_FUNCTION_171();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_110(v5);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_131_0();
  v7 = *(type metadata accessor for SupportOptionDetailsResponse(0) + 20);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    OUTLINED_FUNCTION_35_1();
    v8 = OUTLINED_FUNCTION_36();
    *(v0 + v7) = sub_26BD24600(v8);
  }

  v2(0);
  v9 = OUTLINED_FUNCTION_42_1();
  __swift_storeEnumTagSinglePayload(v9, v10, 1, v11);
  swift_beginAccess();
  sub_26BD2E160();
  swift_endAccess();
  OUTLINED_FUNCTION_283();
}

uint64_t SupportOptionDetailsResponse.cld.getter()
{
  v2 = OUTLINED_FUNCTION_122();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_110(v4);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_123_0();
  OUTLINED_FUNCTION_8_3();
  OUTLINED_FUNCTION_230(v1 + OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__cld, v12);
  OUTLINED_FUNCTION_168_0();
  type metadata accessor for SupportOptionDetailsResponse.CLDDetails(0);
  OUTLINED_FUNCTION_23(v0);
  if (v6)
  {
    _s15SupportServices0A19OptionTypeNamespaceVACycfC_0();
    type metadata accessor for CallContactDetails(0);
    OUTLINED_FUNCTION_123();
    __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
    result = OUTLINED_FUNCTION_23(v0);
    if (!v6)
    {
      return sub_26BD04E80(v0, &qword_280449F00, &qword_26BDA5450);
    }
  }

  else
  {
    OUTLINED_FUNCTION_29_1();
    return sub_26BD2DF9C();
  }

  return result;
}

uint64_t SupportOptionDetailsResponse.cld.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280449F00, &qword_26BDA5450);
  OUTLINED_FUNCTION_110(v0);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_123_0();
  if ((OUTLINED_FUNCTION_72_0() & 1) == 0)
  {
    OUTLINED_FUNCTION_35_1();
    v2 = OUTLINED_FUNCTION_36();
    v3 = sub_26BD24600(v2);
    OUTLINED_FUNCTION_219(v3);
  }

  OUTLINED_FUNCTION_29_1();
  OUTLINED_FUNCTION_138_0();
  sub_26BD2DF9C();
  type metadata accessor for SupportOptionDetailsResponse.CLDDetails(0);
  OUTLINED_FUNCTION_157();
  OUTLINED_FUNCTION_151();
  __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  OUTLINED_FUNCTION_119_0();
  OUTLINED_FUNCTION_143();
  sub_26BD2E160();
  return swift_endAccess();
}

uint64_t SupportOptionDetailsResponse.CLDDetails.init()(uint64_t a1)
{
  _s15SupportServices0A19OptionTypeNamespaceVACycfC_0();
  type metadata accessor for SupportOptionDetailsResponse.CLDDetails(0);
  type metadata accessor for CallContactDetails(0);
  v1 = OUTLINED_FUNCTION_48();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

void SupportOptionDetailsResponse.cld.modify()
{
  OUTLINED_FUNCTION_189();
  v3 = OUTLINED_FUNCTION_165();
  v4 = __swift_coroFrameAllocStub(v3);
  OUTLINED_FUNCTION_42(v4);
  v5 = OUTLINED_FUNCTION_131();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  OUTLINED_FUNCTION_110(v7);
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_47(v9);
  type metadata accessor for SupportOptionDetailsResponse.CLDDetails(v10);
  OUTLINED_FUNCTION_34();
  v12 = *(v11 + 64);
  *(v2 + 40) = __swift_coroFrameAllocStub(v12);
  *(v2 + 48) = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_8_3();
  OUTLINED_FUNCTION_57_0(v0 + OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__cld);
  OUTLINED_FUNCTION_58_0();
  OUTLINED_FUNCTION_9();
  if (v13)
  {
    _s15SupportServices0A19OptionTypeNamespaceVACycfC_0();
    type metadata accessor for CallContactDetails(0);
    OUTLINED_FUNCTION_123();
    __swift_storeEnumTagSinglePayload(v14, v15, v16, v17);
    OUTLINED_FUNCTION_9();
    if (!v13)
    {
      sub_26BD04E80(v1, &qword_280449F00, &qword_26BDA5450);
    }
  }

  else
  {
    OUTLINED_FUNCTION_29_1();
    OUTLINED_FUNCTION_147_0();
  }

  OUTLINED_FUNCTION_133();
  OUTLINED_FUNCTION_188();
}

void sub_26BD1E0B0()
{
  OUTLINED_FUNCTION_284();
  v2 = v1;
  v3 = *(*v0 + 40);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 32);
  if (v6)
  {
    OUTLINED_FUNCTION_167();
    sub_26BD2DFF4();
    v2(v3);
    OUTLINED_FUNCTION_256();
    sub_26BD2E04C();
  }

  else
  {
    v1(*(*v0 + 48));
  }

  free(v4);
  free(v3);
  free(v5);
  OUTLINED_FUNCTION_283();

  free(v7);
}

uint64_t SupportOptionDetailsResponse.c2C.getter@<X0>(void *a1@<X8>)
{
  v4 = OUTLINED_FUNCTION_122();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_110(v6);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_123_0();
  OUTLINED_FUNCTION_8_3();
  OUTLINED_FUNCTION_230(v2 + OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__c2C, v14);
  OUTLINED_FUNCTION_168_0();
  type metadata accessor for SupportOptionDetailsResponse.C2CDetails(0);
  OUTLINED_FUNCTION_23(v1);
  if (v8)
  {
    *a1 = 0;
    a1[1] = 0xE000000000000000;
    _s15SupportServices0A19OptionTypeNamespaceVACycfC_0();
    type metadata accessor for CallContactDetails(0);
    OUTLINED_FUNCTION_123();
    __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
    result = OUTLINED_FUNCTION_23(v1);
    if (!v8)
    {
      return sub_26BD04E80(v1, &qword_280449F10, &qword_26BDA5458);
    }
  }

  else
  {
    OUTLINED_FUNCTION_28_1();
    return sub_26BD2DF9C();
  }

  return result;
}

uint64_t SupportOptionDetailsResponse.c2C.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280449F10, &qword_26BDA5458);
  OUTLINED_FUNCTION_110(v0);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_123_0();
  if ((OUTLINED_FUNCTION_72_0() & 1) == 0)
  {
    OUTLINED_FUNCTION_35_1();
    v2 = OUTLINED_FUNCTION_36();
    v3 = sub_26BD24600(v2);
    OUTLINED_FUNCTION_219(v3);
  }

  OUTLINED_FUNCTION_28_1();
  OUTLINED_FUNCTION_138_0();
  sub_26BD2DF9C();
  type metadata accessor for SupportOptionDetailsResponse.C2CDetails(0);
  OUTLINED_FUNCTION_157();
  OUTLINED_FUNCTION_151();
  __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  OUTLINED_FUNCTION_119_0();
  OUTLINED_FUNCTION_143();
  sub_26BD2E160();
  return swift_endAccess();
}

uint64_t SupportOptionDetailsResponse.C2CDetails.init()@<X0>(void *a1@<X8>)
{
  v1 = OUTLINED_FUNCTION_167_0(a1);
  type metadata accessor for SupportOptionDetailsResponse.C2CDetails(v1);
  _s15SupportServices0A19OptionTypeNamespaceVACycfC_0();
  type metadata accessor for CallContactDetails(0);
  v2 = OUTLINED_FUNCTION_48();

  return __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

void SupportOptionDetailsResponse.c2C.modify()
{
  OUTLINED_FUNCTION_189();
  v3 = OUTLINED_FUNCTION_165();
  v4 = __swift_coroFrameAllocStub(v3);
  OUTLINED_FUNCTION_42(v4);
  v5 = OUTLINED_FUNCTION_131();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  OUTLINED_FUNCTION_110(v7);
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_47(v9);
  type metadata accessor for SupportOptionDetailsResponse.C2CDetails(v10);
  OUTLINED_FUNCTION_34();
  v12 = *(v11 + 64);
  *(v2 + 40) = __swift_coroFrameAllocStub(v12);
  v13 = __swift_coroFrameAllocStub(v12);
  *(v2 + 48) = v13;
  OUTLINED_FUNCTION_8_3();
  OUTLINED_FUNCTION_57_0(v0 + OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__c2C);
  OUTLINED_FUNCTION_58_0();
  OUTLINED_FUNCTION_9();
  if (v14)
  {
    *v13 = 0;
    v13[1] = 0xE000000000000000;
    _s15SupportServices0A19OptionTypeNamespaceVACycfC_0();
    type metadata accessor for CallContactDetails(0);
    OUTLINED_FUNCTION_123();
    __swift_storeEnumTagSinglePayload(v15, v16, v17, v18);
    OUTLINED_FUNCTION_9();
    if (!v14)
    {
      sub_26BD04E80(v1, &qword_280449F10, &qword_26BDA5458);
    }
  }

  else
  {
    OUTLINED_FUNCTION_28_1();
    OUTLINED_FUNCTION_147_0();
  }

  OUTLINED_FUNCTION_133();
  OUTLINED_FUNCTION_188();
}

uint64_t SupportOptionDetailsResponse.carriersInfo.modify()
{
  v1 = OUTLINED_FUNCTION_144();
  v2 = __swift_coroFrameAllocStub(v1);
  *(OUTLINED_FUNCTION_142(v2) + 56) = v0;
  OUTLINED_FUNCTION_21_1();
  OUTLINED_FUNCTION_151_0(v3);
  OUTLINED_FUNCTION_127(v0 + OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__carriersInfo);
  OUTLINED_FUNCTION_240();

  return OUTLINED_FUNCTION_128();
}

uint64_t sub_26BD1E6C8(uint64_t *a1)
{
  OUTLINED_FUNCTION_8_3();
  OUTLINED_FUNCTION_230(v1 + *a1, v4);
}

uint64_t sub_26BD1E744(uint64_t a1, uint64_t *a2)
{
  v5 = OUTLINED_FUNCTION_134();
  v6 = *(type metadata accessor for SupportOptionDetailsResponse(v5) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v3 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_35_1();
    v9 = OUTLINED_FUNCTION_36();
    v10 = sub_26BD24600(v9);
    OUTLINED_FUNCTION_219(v10);
  }

  v11 = *a2;
  OUTLINED_FUNCTION_235(v8 + v11, v13);
  *(v8 + v11) = v2;
}

uint64_t SupportOptionDetailsResponse.relatedProducts.modify()
{
  v1 = OUTLINED_FUNCTION_144();
  v2 = __swift_coroFrameAllocStub(v1);
  *(OUTLINED_FUNCTION_142(v2) + 56) = v0;
  OUTLINED_FUNCTION_21_1();
  OUTLINED_FUNCTION_151_0(v3);
  OUTLINED_FUNCTION_127(v0 + OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__relatedProducts);
  OUTLINED_FUNCTION_240();

  return OUTLINED_FUNCTION_128();
}

uint64_t sub_26BD1E868(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return SupportOptionDetailsResponse.grlProduct.setter(v1, v2);
}

uint64_t SupportOptionDetailsResponse.grlProduct.modify()
{
  v0 = OUTLINED_FUNCTION_192();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_3_0(v1);
  OUTLINED_FUNCTION_124();
  OUTLINED_FUNCTION_297();

  return OUTLINED_FUNCTION_128();
}

uint64_t sub_26BD1E944(void *a1)
{
  OUTLINED_FUNCTION_21_1();
  OUTLINED_FUNCTION_230(*(v1 + v3) + *a1, v5);

  return OUTLINED_FUNCTION_259();
}

uint64_t sub_26BD1E998(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return SupportOptionDetailsResponse.conciergeProduct.setter(v1, v2);
}

uint64_t sub_26BD1E9E4(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = v4;
  v8 = OUTLINED_FUNCTION_90();
  v9 = *(type metadata accessor for SupportOptionDetailsResponse(v8) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v4 + v9);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_35_1();
    v12 = OUTLINED_FUNCTION_36();
    v11 = sub_26BD24600(v12);
    *(v7 + v9) = v11;
  }

  v13 = (v11 + *a3);
  OUTLINED_FUNCTION_235(v13, v15);
  *v13 = v5;
  v13[1] = v3;
}

uint64_t SupportOptionDetailsResponse.conciergeProduct.modify()
{
  v0 = OUTLINED_FUNCTION_192();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_3_0(v1);
  OUTLINED_FUNCTION_124();
  OUTLINED_FUNCTION_297();

  return OUTLINED_FUNCTION_128();
}

uint64_t sub_26BD1EB00(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return SupportOptionDetailsResponse.conciergeSymptom.setter(v1, v2);
}

uint64_t SupportOptionDetailsResponse.conciergeSymptom.modify()
{
  v0 = OUTLINED_FUNCTION_192();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_3_0(v1);
  OUTLINED_FUNCTION_124();
  OUTLINED_FUNCTION_297();

  return OUTLINED_FUNCTION_128();
}

uint64_t sub_26BD1EBDC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return SupportOptionDetailsResponse.randevuProduct.setter(v1, v2);
}

uint64_t SupportOptionDetailsResponse.randevuProduct.modify()
{
  v0 = OUTLINED_FUNCTION_192();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_3_0(v1);
  OUTLINED_FUNCTION_124();
  OUTLINED_FUNCTION_297();

  return OUTLINED_FUNCTION_128();
}

uint64_t sub_26BD1ECB8(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return SupportOptionDetailsResponse.detectedCarrierID.setter(v1, v2);
}

uint64_t SupportOptionDetailsResponse.detectedCarrierID.modify()
{
  v0 = OUTLINED_FUNCTION_192();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_3_0(v1);
  OUTLINED_FUNCTION_124();
  OUTLINED_FUNCTION_297();

  return OUTLINED_FUNCTION_128();
}

uint64_t sub_26BD1ED94(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return SupportOptionDetailsResponse.localizedPurchaseRequirementsDescription.setter(v1, v2);
}

uint64_t SupportOptionDetailsResponse.localizedPurchaseRequirementsDescription.modify()
{
  v0 = OUTLINED_FUNCTION_192();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_3_0(v1);
  OUTLINED_FUNCTION_124();
  OUTLINED_FUNCTION_297();

  return OUTLINED_FUNCTION_128();
}

uint64_t SupportOptionDetailsResponse.usesSecureFlow.getter()
{
  OUTLINED_FUNCTION_21_1();
  v2 = *(v0 + v1);
  v3 = OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__usesSecureFlow;
  OUTLINED_FUNCTION_230(v2 + OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__usesSecureFlow, v5);
  return *(v2 + v3);
}

uint64_t SupportOptionDetailsResponse.usesSecureFlow.setter(char a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for SupportOptionDetailsResponse(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_35_1();
    v7 = OUTLINED_FUNCTION_36();
    v6 = sub_26BD24600(v7);
    *(v2 + v4) = v6;
  }

  v8 = OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__usesSecureFlow;
  result = OUTLINED_FUNCTION_235(v6 + OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__usesSecureFlow, v10);
  *(v6 + v8) = a1 & 1;
  return result;
}

uint64_t SupportOptionDetailsResponse.usesSecureFlow.modify()
{
  v2 = __swift_coroFrameAllocStub(0x58uLL);
  *(OUTLINED_FUNCTION_142(v2) + 72) = v0;
  OUTLINED_FUNCTION_21_1();
  *(v1 + 80) = v3;
  v4 = *(v0 + v3);
  v5 = OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__usesSecureFlow;
  OUTLINED_FUNCTION_127(v4 + OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__usesSecureFlow);
  *(v1 + 84) = *(v4 + v5);
  return OUTLINED_FUNCTION_133();
}

void sub_26BD1EFA0(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 80);
  v5 = *(*a1 + 72);
  v6 = *(*a1 + 84);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v5 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_35_1();
    v9 = OUTLINED_FUNCTION_36();
    v10 = sub_26BD24600(v9);
    OUTLINED_FUNCTION_215(v10);
  }

  v11 = 48;
  if (a2)
  {
    v11 = 24;
  }

  v12 = OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__usesSecureFlow;
  OUTLINED_FUNCTION_235(v8 + OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__usesSecureFlow, v3 + v11);
  *(v8 + v12) = v6;

  free(v3);
}

uint64_t sub_26BD1F050(uint64_t *a1)
{
  v4 = OUTLINED_FUNCTION_256();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_110(v6);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v7);
  v8 = OUTLINED_FUNCTION_17();
  v9 = type metadata accessor for SupportOptionDetailsResponse(v8);
  OUTLINED_FUNCTION_230(*(v1 + *(v9 + 20)) + *a1, v13);
  sub_26BD31AF8();
  sub_26BDA0810();
  OUTLINED_FUNCTION_14();
  if (v10)
  {
    sub_26BDA0800();
    result = OUTLINED_FUNCTION_14();
    if (!v10)
    {
      return sub_26BD04E80(v2, &qword_280448F88, &qword_26BDA5440);
    }
  }

  else
  {
    OUTLINED_FUNCTION_126_0();
    OUTLINED_FUNCTION_141();
    return v11();
  }

  return result;
}

uint64_t sub_26BD1F170(uint64_t a1, void *a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280448F88, &qword_26BDA5440);
  OUTLINED_FUNCTION_110(v5);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_228();
  v7 = *(type metadata accessor for SupportOptionDetailsResponse(0) + 20);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    OUTLINED_FUNCTION_35_1();
    v8 = OUTLINED_FUNCTION_36();
    *(v2 + v7) = sub_26BD24600(v8);
  }

  v9 = sub_26BDA0810();
  OUTLINED_FUNCTION_34();
  (*(v10 + 32))(v3, a1, v9);
  OUTLINED_FUNCTION_151();
  __swift_storeEnumTagSinglePayload(v11, v12, v13, v9);
  swift_beginAccess();
  sub_26BD2E160();
  return swift_endAccess();
}

void SupportOptionDetailsResponse.secureFlowResources.modify()
{
  OUTLINED_FUNCTION_189();
  v2 = OUTLINED_FUNCTION_144();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_42(v3);
  v4 = OUTLINED_FUNCTION_131();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_110(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  OUTLINED_FUNCTION_47(v8);
  v9 = sub_26BDA0810();
  OUTLINED_FUNCTION_6(v9);
  *(v1 + 48) = v10;
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_162(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_6_1(v14);
  OUTLINED_FUNCTION_63();
  OUTLINED_FUNCTION_37_1();
  OUTLINED_FUNCTION_9();
  if (v15)
  {
    sub_26BDA0800();
    OUTLINED_FUNCTION_9();
    if (!v15)
    {
      sub_26BD04E80(v0, &qword_280448F88, &qword_26BDA5440);
    }
  }

  else
  {
    v16 = OUTLINED_FUNCTION_21();
    v17(v16);
  }

  OUTLINED_FUNCTION_133();
  OUTLINED_FUNCTION_188();
}

void SupportOptionDetailsResponse.solutionIntentResources.modify()
{
  OUTLINED_FUNCTION_189();
  v2 = OUTLINED_FUNCTION_144();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_42(v3);
  v4 = OUTLINED_FUNCTION_131();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_110(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  OUTLINED_FUNCTION_47(v8);
  v9 = sub_26BDA0810();
  OUTLINED_FUNCTION_6(v9);
  *(v1 + 48) = v10;
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_162(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_6_1(v14);
  OUTLINED_FUNCTION_63();
  OUTLINED_FUNCTION_37_1();
  OUTLINED_FUNCTION_9();
  if (v15)
  {
    sub_26BDA0800();
    OUTLINED_FUNCTION_9();
    if (!v15)
    {
      sub_26BD04E80(v0, &qword_280448F88, &qword_26BDA5440);
    }
  }

  else
  {
    v16 = OUTLINED_FUNCTION_21();
    v17(v16);
  }

  OUTLINED_FUNCTION_133();
  OUTLINED_FUNCTION_188();
}

uint64_t sub_26BD1F624(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return SupportOptionDetailsResponse.redirectURLString.setter(v1, v2);
}

uint64_t SupportOptionDetailsResponse.redirectURLString.modify()
{
  v0 = OUTLINED_FUNCTION_192();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_3_0(v1);
  OUTLINED_FUNCTION_124();
  OUTLINED_FUNCTION_297();

  return OUTLINED_FUNCTION_128();
}

uint64_t sub_26BD1F700(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return SupportOptionDetailsResponse.locale.setter(v1, v2);
}

uint64_t SupportOptionDetailsResponse.locale.modify()
{
  v0 = OUTLINED_FUNCTION_192();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_3_0(v1);
  OUTLINED_FUNCTION_124();
  OUTLINED_FUNCTION_297();

  return OUTLINED_FUNCTION_128();
}

void SupportOptionDetailsResponse.curbsideDetails.modify()
{
  OUTLINED_FUNCTION_189();
  v2 = OUTLINED_FUNCTION_144();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_42(v3);
  v4 = OUTLINED_FUNCTION_131();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_110(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  OUTLINED_FUNCTION_47(v8);
  v9 = sub_26BDA0810();
  OUTLINED_FUNCTION_6(v9);
  *(v1 + 48) = v10;
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_162(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_6_1(v14);
  OUTLINED_FUNCTION_63();
  OUTLINED_FUNCTION_37_1();
  OUTLINED_FUNCTION_9();
  if (v15)
  {
    sub_26BDA0800();
    OUTLINED_FUNCTION_9();
    if (!v15)
    {
      sub_26BD04E80(v0, &qword_280448F88, &qword_26BDA5440);
    }
  }

  else
  {
    v16 = OUTLINED_FUNCTION_21();
    v17(v16);
  }

  OUTLINED_FUNCTION_133();
  OUTLINED_FUNCTION_188();
}

uint64_t sub_26BD1F9A4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return SupportOptionDetailsResponse.localizedPricingDisclaimer.setter(v1, v2);
}

uint64_t SupportOptionDetailsResponse.localizedPricingDisclaimer.modify()
{
  v0 = OUTLINED_FUNCTION_192();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_3_0(v1);
  OUTLINED_FUNCTION_124();
  OUTLINED_FUNCTION_297();

  return OUTLINED_FUNCTION_128();
}

void sub_26BD1FA74()
{
  OUTLINED_FUNCTION_284();
  OUTLINED_FUNCTION_54();
  if (v5)
  {
    v6 = v4;

    v7 = OUTLINED_FUNCTION_130();
    v6(v7);
  }

  else
  {
    v8 = v3;
    v9 = *(v0 + 72);
    v10 = *(v0 + 64);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *(v10 + v9);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v13 = *(v0 + 72);
      v14 = *(v0 + 64);
      OUTLINED_FUNCTION_35_1();
      v15 = OUTLINED_FUNCTION_36();
      v12 = sub_26BD24600(v15);
      *(v14 + v13) = v12;
    }

    v16 = (v12 + *v8);
    OUTLINED_FUNCTION_235(v16, v0 + 24);
    *v16 = v2;
    v16[1] = v1;
  }

  OUTLINED_FUNCTION_283();

  free(v17);
}

void SupportOptionDetailsResponse.appleIDRequirement.modify()
{
  OUTLINED_FUNCTION_189();
  v2 = OUTLINED_FUNCTION_144();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_42(v3);
  v4 = OUTLINED_FUNCTION_131();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_110(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  OUTLINED_FUNCTION_47(v8);
  v9 = sub_26BDA0810();
  OUTLINED_FUNCTION_6(v9);
  *(v1 + 48) = v10;
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_162(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_6_1(v14);
  OUTLINED_FUNCTION_63();
  OUTLINED_FUNCTION_37_1();
  OUTLINED_FUNCTION_9();
  if (v15)
  {
    sub_26BDA0800();
    OUTLINED_FUNCTION_9();
    if (!v15)
    {
      sub_26BD04E80(v0, &qword_280448F88, &qword_26BDA5440);
    }
  }

  else
  {
    v16 = OUTLINED_FUNCTION_21();
    v17(v16);
  }

  OUTLINED_FUNCTION_133();
  OUTLINED_FUNCTION_188();
}

void SupportOptionDetailsResponse.emailAttributes.modify()
{
  OUTLINED_FUNCTION_189();
  v2 = OUTLINED_FUNCTION_144();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_42(v3);
  v4 = OUTLINED_FUNCTION_131();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_110(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  OUTLINED_FUNCTION_47(v8);
  v9 = sub_26BDA0810();
  OUTLINED_FUNCTION_6(v9);
  *(v1 + 48) = v10;
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_162(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_6_1(v14);
  OUTLINED_FUNCTION_63();
  OUTLINED_FUNCTION_37_1();
  OUTLINED_FUNCTION_9();
  if (v15)
  {
    sub_26BDA0800();
    OUTLINED_FUNCTION_9();
    if (!v15)
    {
      sub_26BD04E80(v0, &qword_280448F88, &qword_26BDA5440);
    }
  }

  else
  {
    v16 = OUTLINED_FUNCTION_21();
    v17(v16);
  }

  OUTLINED_FUNCTION_133();
  OUTLINED_FUNCTION_188();
}

uint64_t SupportOptionDetailsResponse.contactCarriersInfo.modify()
{
  v1 = OUTLINED_FUNCTION_144();
  v2 = __swift_coroFrameAllocStub(v1);
  *(OUTLINED_FUNCTION_142(v2) + 56) = v0;
  OUTLINED_FUNCTION_21_1();
  OUTLINED_FUNCTION_151_0(v3);
  OUTLINED_FUNCTION_127(v0 + OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__contactCarriersInfo);
  OUTLINED_FUNCTION_240();

  return OUTLINED_FUNCTION_128();
}

void SupportOptionDetailsResponse.ers.modify()
{
  OUTLINED_FUNCTION_189();
  v2 = OUTLINED_FUNCTION_144();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_42(v3);
  v4 = OUTLINED_FUNCTION_131();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_110(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  OUTLINED_FUNCTION_47(v8);
  v9 = sub_26BDA0810();
  OUTLINED_FUNCTION_6(v9);
  *(v1 + 48) = v10;
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_162(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_6_1(v14);
  OUTLINED_FUNCTION_63();
  OUTLINED_FUNCTION_37_1();
  OUTLINED_FUNCTION_9();
  if (v15)
  {
    sub_26BDA0800();
    OUTLINED_FUNCTION_9();
    if (!v15)
    {
      sub_26BD04E80(v0, &qword_280448F88, &qword_26BDA5440);
    }
  }

  else
  {
    v16 = OUTLINED_FUNCTION_21();
    v17(v16);
  }

  OUTLINED_FUNCTION_133();
  OUTLINED_FUNCTION_188();
}

uint64_t SupportOptionDetailsResponse.applicationData.getter()
{
  OUTLINED_FUNCTION_21_1();
  OUTLINED_FUNCTION_230(*(v0 + v1) + OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__applicationData, v5);
  v2 = OUTLINED_FUNCTION_259();
  sub_26BCFEFC4(v2, v3);
  return OUTLINED_FUNCTION_259();
}

uint64_t SupportOptionDetailsResponse.applicationData.setter()
{
  OUTLINED_FUNCTION_171();
  v4 = OUTLINED_FUNCTION_72_0();
  v5 = *(v1 + v3);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_35_1();
    v6 = OUTLINED_FUNCTION_36();
    v7 = sub_26BD24600(v6);
    OUTLINED_FUNCTION_219(v7);
  }

  v8 = (v5 + OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__applicationData);
  OUTLINED_FUNCTION_235(v8, v12);
  v9 = *v8;
  v10 = v8[1];
  *v8 = v2;
  v8[1] = v0;
  return sub_26BCFF01C(v9, v10);
}

uint64_t SupportOptionDetailsResponse.applicationData.modify()
{
  v2 = OUTLINED_FUNCTION_192();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_3_0(v3);
  OUTLINED_FUNCTION_124();
  v4 = *v0;
  v5 = v0[1];
  *(v1 + 48) = *v0;
  *(v1 + 56) = v5;
  sub_26BCFEFC4(v4, v5);
  return OUTLINED_FUNCTION_133();
}

void sub_26BD202E0()
{
  OUTLINED_FUNCTION_54();
  if (v3)
  {
    v4 = OUTLINED_FUNCTION_130();
    sub_26BCFEFC4(v4, v5);
    OUTLINED_FUNCTION_130();
    SupportOptionDetailsResponse.applicationData.setter();
    v6 = *(v0 + 48);
    v7 = *(v0 + 56);
  }

  else
  {
    v8 = *(v0 + 72);
    v9 = *(v0 + 64);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *(v9 + v8);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      OUTLINED_FUNCTION_35_1();
      v12 = OUTLINED_FUNCTION_36();
      v13 = sub_26BD24600(v12);
      OUTLINED_FUNCTION_215(v13);
    }

    v14 = (v11 + OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__applicationData);
    OUTLINED_FUNCTION_235(v14, v0 + 24);
    v6 = *v14;
    v7 = v14[1];
    *v14 = v2;
    v14[1] = v1;
  }

  sub_26BCFF01C(v6, v7);

  free(v0);
}

uint64_t SupportOptionDetailsResponse.takeInForServiceDetails.modify()
{
  v1 = OUTLINED_FUNCTION_144();
  v2 = __swift_coroFrameAllocStub(v1);
  *(OUTLINED_FUNCTION_142(v2) + 56) = v0;
  OUTLINED_FUNCTION_21_1();
  OUTLINED_FUNCTION_151_0(v3);
  OUTLINED_FUNCTION_127(v0 + OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__takeInForServiceDetails);
  OUTLINED_FUNCTION_240();

  return OUTLINED_FUNCTION_128();
}

void sub_26BD20470(uint64_t *a1, char a2, uint64_t *a3, void (*a4)(uint64_t))
{
  v4 = *a1;
  v5 = *(*a1 + 48);
  if (a2)
  {

    a4(v7);
  }

  else
  {
    v9 = *(v4 + 64);
    v10 = *(v4 + 56);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *(v10 + v9);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      OUTLINED_FUNCTION_35_1();
      v13 = OUTLINED_FUNCTION_36();
      v14 = sub_26BD24600(v13);
      OUTLINED_FUNCTION_215(v14);
    }

    v15 = *a3;
    OUTLINED_FUNCTION_235(v12 + v15, v4 + 24);
    *(v12 + v15) = v5;
  }

  free(v4);
}

void SupportOptionDetailsResponse.mailIn.modify()
{
  OUTLINED_FUNCTION_189();
  v2 = OUTLINED_FUNCTION_144();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_42(v3);
  v4 = OUTLINED_FUNCTION_131();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_110(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  OUTLINED_FUNCTION_47(v8);
  v9 = sub_26BDA0810();
  OUTLINED_FUNCTION_6(v9);
  *(v1 + 48) = v10;
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_162(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_6_1(v14);
  OUTLINED_FUNCTION_63();
  OUTLINED_FUNCTION_37_1();
  OUTLINED_FUNCTION_9();
  if (v15)
  {
    sub_26BDA0800();
    OUTLINED_FUNCTION_9();
    if (!v15)
    {
      sub_26BD04E80(v0, &qword_280448F88, &qword_26BDA5440);
    }
  }

  else
  {
    v16 = OUTLINED_FUNCTION_21();
    v17(v16);
  }

  OUTLINED_FUNCTION_133();
  OUTLINED_FUNCTION_188();
}

void SupportOptionDetailsResponse.preContact.modify()
{
  OUTLINED_FUNCTION_189();
  v2 = OUTLINED_FUNCTION_144();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_42(v3);
  v4 = OUTLINED_FUNCTION_131();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_110(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  OUTLINED_FUNCTION_47(v8);
  v9 = sub_26BDA0810();
  OUTLINED_FUNCTION_6(v9);
  *(v1 + 48) = v10;
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_162(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_6_1(v14);
  OUTLINED_FUNCTION_63();
  OUTLINED_FUNCTION_37_1();
  OUTLINED_FUNCTION_9();
  if (v15)
  {
    sub_26BDA0800();
    OUTLINED_FUNCTION_9();
    if (!v15)
    {
      sub_26BD04E80(v0, &qword_280448F88, &qword_26BDA5440);
    }
  }

  else
  {
    v16 = OUTLINED_FUNCTION_21();
    v17(v16);
  }

  OUTLINED_FUNCTION_133();
  OUTLINED_FUNCTION_188();
}

void SupportOptionDetailsResponse.manageCoverageFlow.modify()
{
  OUTLINED_FUNCTION_189();
  v2 = OUTLINED_FUNCTION_144();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_42(v3);
  v4 = OUTLINED_FUNCTION_131();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_110(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  OUTLINED_FUNCTION_47(v8);
  v9 = sub_26BDA0810();
  OUTLINED_FUNCTION_6(v9);
  *(v1 + 48) = v10;
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_162(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_6_1(v14);
  OUTLINED_FUNCTION_63();
  OUTLINED_FUNCTION_37_1();
  OUTLINED_FUNCTION_9();
  if (v15)
  {
    sub_26BDA0800();
    OUTLINED_FUNCTION_9();
    if (!v15)
    {
      sub_26BD04E80(v0, &qword_280448F88, &qword_26BDA5440);
    }
  }

  else
  {
    v16 = OUTLINED_FUNCTION_21();
    v17(v16);
  }

  OUTLINED_FUNCTION_133();
  OUTLINED_FUNCTION_188();
}

void sub_26BD20A28()
{
  OUTLINED_FUNCTION_284();
  v2 = v1;
  v3 = *v0;
  v4 = *(*v0 + 56);
  v5 = *(*v0 + 64);
  if (v6)
  {
    v7 = v3[5];
    v8 = v3[6];
    v9 = v3[4];
    (*(v8 + 16))(*(*v0 + 56), v5, v7);
    v2(v4);
    (*(v8 + 8))(v5, v7);
  }

  else
  {
    v9 = v3[4];
    v1(*(*v0 + 64));
  }

  free(v5);
  free(v4);
  free(v9);
  OUTLINED_FUNCTION_283();

  free(v10);
}

uint64_t SupportOptionDetailsResponse.TimeSlot.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_134();
  type metadata accessor for SupportOptionDetailsResponse.TimeSlot(v0);
  return OUTLINED_FUNCTION_185();
}

uint64_t SupportOptionDetailsResponse.TimeSlot.init()@<X0>(void *a1@<X8>)
{
  v2 = OUTLINED_FUNCTION_167_0(a1);
  type metadata accessor for SupportOptionDetailsResponse.TimeSlot(v2);
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  return _s15SupportServices0A19OptionTypeNamespaceVACycfC_0();
}

uint64_t SupportOptionDetailsResponse.SCBDetails.timeSlots.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t sub_26BD20D40()
{
  v0 = OUTLINED_FUNCTION_217();
  v1(v0);
  sub_26BDA0850();
  OUTLINED_FUNCTION_34();
  v2 = OUTLINED_FUNCTION_148();

  return v3(v2);
}

uint64_t sub_26BD20DC8()
{
  v0 = OUTLINED_FUNCTION_134();
  v1(v0);
  sub_26BDA0850();
  OUTLINED_FUNCTION_34();
  v2 = OUTLINED_FUNCTION_234();

  return v3(v2);
}

uint64_t SupportOptionDetailsResponse.SCBDetails.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_134();
  type metadata accessor for SupportOptionDetailsResponse.SCBDetails(v0);
  return OUTLINED_FUNCTION_185();
}

uint64_t SupportOptionDetailsResponse.CLDDetails.contactDetails.getter()
{
  v1 = OUTLINED_FUNCTION_122();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_110(v3);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_17();
  type metadata accessor for SupportOptionDetailsResponse.CLDDetails(v5);
  OUTLINED_FUNCTION_71_0();
  type metadata accessor for CallContactDetails(0);
  OUTLINED_FUNCTION_14();
  if (v6)
  {
    OUTLINED_FUNCTION_82();
    _s15SupportServices0A19OptionTypeNamespaceVACycfC_0();
    result = OUTLINED_FUNCTION_14();
    if (!v6)
    {
      return sub_26BD04E80(v0, &qword_280449FE0, &unk_26BDA5460);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_2();
    OUTLINED_FUNCTION_126();
    return sub_26BD2DF9C();
  }

  return result;
}

uint64_t SupportOptionDetailsResponse.CLDDetails.contactDetails.setter()
{
  v1 = OUTLINED_FUNCTION_134();
  v2 = type metadata accessor for SupportOptionDetailsResponse.CLDDetails(v1);
  sub_26BD04E80(v0 + *(v2 + 20), &qword_280449FE0, &unk_26BDA5460);
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_143();
  sub_26BD2DF9C();
  type metadata accessor for CallContactDetails(0);
  v3 = OUTLINED_FUNCTION_51_0();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void SupportOptionDetailsResponse.CLDDetails.contactDetails.modify()
{
  OUTLINED_FUNCTION_284();
  v1 = OUTLINED_FUNCTION_277();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_59(v2);
  v3 = OUTLINED_FUNCTION_117_0();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_110(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_187(v7);
  v9 = type metadata accessor for CallContactDetails(v8);
  *(v0 + 16) = v9;
  OUTLINED_FUNCTION_34();
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_303(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_227(v13);
  v15 = *(type metadata accessor for SupportOptionDetailsResponse.CLDDetails(v14) + 20);
  *(v0 + 40) = v15;
  OUTLINED_FUNCTION_32_0(v15);
  OUTLINED_FUNCTION_139_0();
  v16 = OUTLINED_FUNCTION_114();
  v18 = OUTLINED_FUNCTION_112(v16, v17, v9);
  if (v19)
  {
    OUTLINED_FUNCTION_140_0(v18);
    v20 = OUTLINED_FUNCTION_114();
    OUTLINED_FUNCTION_112(v20, v21, v9);
    if (!v19)
    {
      sub_26BD04E80(v7, &qword_280449FE0, &unk_26BDA5460);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_2();
    OUTLINED_FUNCTION_130();
    sub_26BD2DF9C();
  }

  OUTLINED_FUNCTION_133();
  OUTLINED_FUNCTION_283();
}

uint64_t SupportOptionDetailsResponse.CLDDetails.hasContactDetails.getter()
{
  v0 = OUTLINED_FUNCTION_128();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_110(v2);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v3);
  v4 = OUTLINED_FUNCTION_17();
  v5 = type metadata accessor for SupportOptionDetailsResponse.CLDDetails(v4);
  OUTLINED_FUNCTION_32_0(*(v5 + 20));
  sub_26BD31AF8();
  type metadata accessor for CallContactDetails(0);
  v6 = OUTLINED_FUNCTION_114();
  OUTLINED_FUNCTION_112(v6, v7, v8);
  if (v9)
  {
    v10 = 0;
  }

  else
  {
    v10 = 1;
  }

  v11 = OUTLINED_FUNCTION_126();
  sub_26BD04E80(v11, v12, &unk_26BDA5460);
  return v10;
}

Swift::Void __swiftcall SupportOptionDetailsResponse.CLDDetails.clearContactDetails()()
{
  v1 = type metadata accessor for SupportOptionDetailsResponse.CLDDetails(0);
  sub_26BD04E80(v0 + *(v1 + 20), &qword_280449FE0, &unk_26BDA5460);
  type metadata accessor for CallContactDetails(0);
  OUTLINED_FUNCTION_123();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t SupportOptionDetailsResponse.C2CDetails.contactDetails.getter()
{
  v1 = OUTLINED_FUNCTION_122();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_110(v3);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_17();
  type metadata accessor for SupportOptionDetailsResponse.C2CDetails(v5);
  OUTLINED_FUNCTION_71_0();
  type metadata accessor for CallContactDetails(0);
  OUTLINED_FUNCTION_14();
  if (v6)
  {
    OUTLINED_FUNCTION_82();
    _s15SupportServices0A19OptionTypeNamespaceVACycfC_0();
    result = OUTLINED_FUNCTION_14();
    if (!v6)
    {
      return sub_26BD04E80(v0, &qword_280449FE0, &unk_26BDA5460);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_2();
    OUTLINED_FUNCTION_126();
    return sub_26BD2DF9C();
  }

  return result;
}

uint64_t sub_26BD212E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6, uint64_t (*a7)(uint64_t))
{
  v9 = (a5)(0, a2, a3, a4);
  OUTLINED_FUNCTION_110(v9);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_131_0();
  OUTLINED_FUNCTION_173();
  sub_26BD2DFF4();
  return a7(v7);
}

uint64_t SupportOptionDetailsResponse.C2CDetails.contactDetails.setter()
{
  v1 = OUTLINED_FUNCTION_134();
  v2 = type metadata accessor for SupportOptionDetailsResponse.C2CDetails(v1);
  sub_26BD04E80(v0 + *(v2 + 24), &qword_280449FE0, &unk_26BDA5460);
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_143();
  sub_26BD2DF9C();
  type metadata accessor for CallContactDetails(0);
  v3 = OUTLINED_FUNCTION_51_0();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void SupportOptionDetailsResponse.C2CDetails.contactDetails.modify()
{
  OUTLINED_FUNCTION_284();
  v1 = OUTLINED_FUNCTION_277();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_59(v2);
  v3 = OUTLINED_FUNCTION_117_0();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_110(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_187(v7);
  v9 = type metadata accessor for CallContactDetails(v8);
  *(v0 + 16) = v9;
  OUTLINED_FUNCTION_34();
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_303(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_227(v13);
  v15 = *(type metadata accessor for SupportOptionDetailsResponse.C2CDetails(v14) + 24);
  *(v0 + 40) = v15;
  OUTLINED_FUNCTION_32_0(v15);
  OUTLINED_FUNCTION_139_0();
  v16 = OUTLINED_FUNCTION_114();
  v18 = OUTLINED_FUNCTION_112(v16, v17, v9);
  if (v19)
  {
    OUTLINED_FUNCTION_140_0(v18);
    v20 = OUTLINED_FUNCTION_114();
    OUTLINED_FUNCTION_112(v20, v21, v9);
    if (!v19)
    {
      sub_26BD04E80(v7, &qword_280449FE0, &unk_26BDA5460);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_2();
    OUTLINED_FUNCTION_130();
    sub_26BD2DF9C();
  }

  OUTLINED_FUNCTION_133();
  OUTLINED_FUNCTION_283();
}

void sub_26BD2154C()
{
  OUTLINED_FUNCTION_189();
  v2 = v1;
  v3 = v0;
  v5 = *(*v4 + 10);
  v6 = (*v4)[3];
  v7 = (*v4)[4];
  v8 = (*v4)[1];
  v9 = (*v4)[2];
  v10 = **v4;
  if (v11)
  {
    sub_26BD2DFF4();
    sub_26BD04E80(v10 + v5, v3, v2);
    sub_26BD2DF9C();
    OUTLINED_FUNCTION_151();
    __swift_storeEnumTagSinglePayload(v12, v13, v14, v9);
    OUTLINED_FUNCTION_173();
    sub_26BD2E04C();
  }

  else
  {
    sub_26BD04E80(v10 + v5, v0, v1);
    sub_26BD2DF9C();
    OUTLINED_FUNCTION_151();
    __swift_storeEnumTagSinglePayload(v15, v16, v17, v9);
  }

  free(v7);
  free(v6);
  free(v8);
  OUTLINED_FUNCTION_188();

  free(v18);
}

uint64_t sub_26BD21680()
{
  OUTLINED_FUNCTION_177();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_110(v5);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_183();
  v1(0);
  sub_26BD31AF8();
  v7 = v0(0);
  OUTLINED_FUNCTION_112(v2, 1, v7);
  if (v8)
  {
    v9 = 0;
  }

  else
  {
    v9 = 1;
  }

  OUTLINED_FUNCTION_129();
  sub_26BD04E80(v10, v11, v12);
  return v9;
}

uint64_t sub_26BD21774()
{
  OUTLINED_FUNCTION_177();
  v1(0);
  OUTLINED_FUNCTION_141();
  sub_26BD04E80(v2, v3, v4);
  v0(0);
  OUTLINED_FUNCTION_123();

  return __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
}

uint64_t sub_26BD21824()
{
  v0 = OUTLINED_FUNCTION_217();
  v1(v0);
  sub_26BDA0850();
  OUTLINED_FUNCTION_34();
  v2 = OUTLINED_FUNCTION_148();

  return v3(v2);
}

uint64_t sub_26BD218AC()
{
  v0 = OUTLINED_FUNCTION_134();
  v1(v0);
  sub_26BDA0850();
  OUTLINED_FUNCTION_34();
  v2 = OUTLINED_FUNCTION_234();

  return v3(v2);
}

uint64_t SupportOptionDetailsResponse.C2CDetails.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_134();
  type metadata accessor for SupportOptionDetailsResponse.C2CDetails(v0);
  return OUTLINED_FUNCTION_185();
}

uint64_t SupportOptionDetailsResponse.TakeInForServiceDetails.countryItccList.getter()
{
  v1 = OUTLINED_FUNCTION_122();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_110(v3);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_17();
  type metadata accessor for SupportOptionDetailsResponse.TakeInForServiceDetails(v5);
  OUTLINED_FUNCTION_71_0();
  sub_26BDA0810();
  OUTLINED_FUNCTION_14();
  if (v6)
  {
    sub_26BDA0800();
    result = OUTLINED_FUNCTION_14();
    if (!v6)
    {
      return sub_26BD04E80(v0, &qword_280448F88, &qword_26BDA5440);
    }
  }

  else
  {
    OUTLINED_FUNCTION_126_0();
    OUTLINED_FUNCTION_141();
    return v7();
  }

  return result;
}

uint64_t sub_26BD21A44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  sub_26BDA0810();
  OUTLINED_FUNCTION_18();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_44();
  v9 = v8 - v7;
  v10 = OUTLINED_FUNCTION_130();
  v11(v10);
  return a5(v9);
}

uint64_t SupportOptionDetailsResponse.TakeInForServiceDetails.countryItccList.setter()
{
  v2 = OUTLINED_FUNCTION_134();
  v3 = *(type metadata accessor for SupportOptionDetailsResponse.TakeInForServiceDetails(v2) + 48);
  sub_26BD04E80(v1 + v3, &qword_280448F88, &qword_26BDA5440);
  v4 = sub_26BDA0810();
  OUTLINED_FUNCTION_34();
  (*(v5 + 32))(v1 + v3, v0, v4);
  OUTLINED_FUNCTION_151();

  return __swift_storeEnumTagSinglePayload(v6, v7, v8, v4);
}

void SupportOptionDetailsResponse.TakeInForServiceDetails.countryItccList.modify()
{
  OUTLINED_FUNCTION_189();
  v1 = OUTLINED_FUNCTION_165();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_59(v2);
  v3 = OUTLINED_FUNCTION_117_0();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_110(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  OUTLINED_FUNCTION_187(v7);
  v8 = sub_26BDA0810();
  *(v0 + 16) = v8;
  OUTLINED_FUNCTION_18();
  *(v0 + 24) = v9;
  v11 = *(v10 + 64);
  *(v0 + 32) = __swift_coroFrameAllocStub(v11);
  *(v0 + 40) = __swift_coroFrameAllocStub(v11);
  *(v0 + 48) = *(type metadata accessor for SupportOptionDetailsResponse.TakeInForServiceDetails(0) + 48);
  OUTLINED_FUNCTION_139_0();
  OUTLINED_FUNCTION_112(v7, 1, v8);
  if (v12)
  {
    sub_26BDA0800();
    OUTLINED_FUNCTION_112(v7, 1, v8);
    if (!v12)
    {
      sub_26BD04E80(v7, &qword_280448F88, &qword_26BDA5440);
    }
  }

  else
  {
    v13 = OUTLINED_FUNCTION_130();
    v14(v13);
  }

  OUTLINED_FUNCTION_188();
}

uint64_t SupportOptionDetailsResponse.TakeInForServiceDetails.hasCountryItccList.getter()
{
  v0 = OUTLINED_FUNCTION_128();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_110(v2);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v3);
  v4 = OUTLINED_FUNCTION_17();
  v5 = type metadata accessor for SupportOptionDetailsResponse.TakeInForServiceDetails(v4);
  OUTLINED_FUNCTION_32_0(*(v5 + 48));
  sub_26BD31AF8();
  sub_26BDA0810();
  v6 = OUTLINED_FUNCTION_114();
  OUTLINED_FUNCTION_112(v6, v7, v8);
  if (v9)
  {
    v10 = 0;
  }

  else
  {
    v10 = 1;
  }

  v11 = OUTLINED_FUNCTION_126();
  sub_26BD04E80(v11, v12, &qword_26BDA5440);
  return v10;
}

Swift::Void __swiftcall SupportOptionDetailsResponse.TakeInForServiceDetails.clearCountryItccList()()
{
  v1 = type metadata accessor for SupportOptionDetailsResponse.TakeInForServiceDetails(0);
  sub_26BD04E80(v0 + *(v1 + 48), &qword_280448F88, &qword_26BDA5440);
  sub_26BDA0810();
  OUTLINED_FUNCTION_123();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t SupportOptionDetailsResponse.TakeInForServiceDetails.localizedSectionHeader.setter()
{
  OUTLINED_FUNCTION_171();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t SupportOptionDetailsResponse.TakeInForServiceDetails.localizedSectionBody.setter()
{
  OUTLINED_FUNCTION_171();

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t SupportOptionDetailsResponse.TakeInForServiceDetails.localizedSectionFooter.setter()
{
  OUTLINED_FUNCTION_171();

  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  return result;
}

uint64_t SupportOptionDetailsResponse.TakeInForServiceDetails.localizedRemindersTitle.setter()
{
  OUTLINED_FUNCTION_171();

  *(v1 + 48) = v2;
  *(v1 + 56) = v0;
  return result;
}

uint64_t SupportOptionDetailsResponse.TakeInForServiceDetails.localizedPlaceholder.setter()
{
  OUTLINED_FUNCTION_171();

  *(v1 + 64) = v2;
  *(v1 + 72) = v0;
  return result;
}

uint64_t SupportOptionDetailsResponse.TakeInForServiceDetails.relevantStoreTypes.setter(uint64_t a1)
{

  *(v1 + 88) = a1;
  return result;
}

uint64_t SupportOptionDetailsResponse.TakeInForServiceDetails.unknownFields.getter()
{
  v0 = OUTLINED_FUNCTION_217();
  type metadata accessor for SupportOptionDetailsResponse.TakeInForServiceDetails(v0);
  sub_26BDA0850();
  OUTLINED_FUNCTION_34();
  v1 = OUTLINED_FUNCTION_148();

  return v2(v1);
}

uint64_t SupportOptionDetailsResponse.TakeInForServiceDetails.unknownFields.setter()
{
  v0 = OUTLINED_FUNCTION_134();
  type metadata accessor for SupportOptionDetailsResponse.TakeInForServiceDetails(v0);
  sub_26BDA0850();
  OUTLINED_FUNCTION_34();
  v1 = OUTLINED_FUNCTION_234();

  return v2(v1);
}

uint64_t SupportOptionDetailsResponse.TakeInForServiceDetails.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_134();
  type metadata accessor for SupportOptionDetailsResponse.TakeInForServiceDetails(v0);
  return OUTLINED_FUNCTION_185();
}

uint64_t SupportOptionDetailsResponse.TakeInForServiceDetails.init()@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_82();
  *(a1 + 32) = 0;
  *(a1 + 40) = v2;
  *(a1 + 48) = 0;
  *(a1 + 56) = v2;
  *(a1 + 64) = 0;
  *(a1 + 72) = v2;
  *(a1 + 80) = 0;
  *(a1 + 88) = MEMORY[0x277D84F90];
  type metadata accessor for SupportOptionDetailsResponse.TakeInForServiceDetails(0);
  _s15SupportServices0A19OptionTypeNamespaceVACycfC_0();
  sub_26BDA0810();
  v3 = OUTLINED_FUNCTION_48();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

uint64_t SupportOptionDetailsResponse.init()@<X0>(uint64_t a2@<X8>)
{
  _s15SupportServices0A19OptionTypeNamespaceVACycfC_0();
  v3 = *(type metadata accessor for SupportOptionDetailsResponse(0) + 20);
  if (qword_280448DB0 != -1)
  {
    swift_once();
  }

  *(a2 + v3) = qword_280449E68;
}

uint64_t sub_26BD22324()
{
  v0 = sub_26BDA0B10();
  __swift_allocate_value_buffer(v0, qword_280449E20);
  __swift_project_value_buffer(v0, qword_280449E20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804495C8, &unk_26BDA3CB0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804495D0, &qword_26BDA3510) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26BDA1A20;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "case_meta_data";
  *(v6 + 8) = 14;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21888];
  v8 = sub_26BDA0AE0();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "client_context";
  *(v10 + 1) = 14;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "reporting_context";
  *(v12 + 1) = 17;
  v12[16] = 2;
  v9();
  return sub_26BDA0AF0();
}

void SupportOptionDetailsRequest.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_246();
  OUTLINED_FUNCTION_49();
  while (1)
  {
    OUTLINED_FUNCTION_204();
    v1 = sub_26BDA0900();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(v1)
    {
      case 3:
        sub_26BDA0820();
        sub_26BDA08F0();
LABEL_11:
        v0 = 0;
        break;
      case 2:
        type metadata accessor for SupportOptionDetailsRequest(0);
        type metadata accessor for TriageRequest.ClientContext(0);
        OUTLINED_FUNCTION_79_0();
        v4 = &protocol conformance descriptor for TriageRequest.ClientContext;
        v5 = &qword_2804490F8;
        goto LABEL_9;
      case 1:
        type metadata accessor for SupportOptionDetailsRequest(0);
        type metadata accessor for TriageRequest.CaseMetaData(0);
        OUTLINED_FUNCTION_80_0();
        v4 = &protocol conformance descriptor for TriageRequest.CaseMetaData;
        v5 = &unk_280449100;
LABEL_9:
        sub_26BD2E1F8(v5, v3, v4);
        sub_26BDA09B0();
        goto LABEL_11;
    }
  }

  OUTLINED_FUNCTION_247();
}

void SupportOptionDetailsRequest.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_246();
  v4 = v0;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280448F70, &qword_26BDA1A38);
  OUTLINED_FUNCTION_110(v5);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v6);
  v7 = OUTLINED_FUNCTION_17();
  v19 = type metadata accessor for TriageRequest.ClientContext(v7);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_44();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280448F68, &qword_26BDA1A30);
  OUTLINED_FUNCTION_110(v9);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_129_0();
  v11 = type metadata accessor for TriageRequest.CaseMetaData(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_131_0();
  type metadata accessor for SupportOptionDetailsRequest(0);
  sub_26BD31AF8();
  if (__swift_getEnumTagSinglePayload(v3, 1, v11) == 1)
  {
    sub_26BD04E80(v3, &qword_280448F68, &qword_26BDA1A30);
  }

  else
  {
    sub_26BD2DF9C();
    OUTLINED_FUNCTION_80_0();
    sub_26BD2E1F8(v13, v14, &protocol conformance descriptor for TriageRequest.CaseMetaData);
    sub_26BDA0AD0();
    OUTLINED_FUNCTION_256();
    sub_26BD2E04C();
    if (v1)
    {
      goto LABEL_10;
    }
  }

  sub_26BD31AF8();
  v15 = OUTLINED_FUNCTION_114();
  if (__swift_getEnumTagSinglePayload(v15, v16, v19) == 1)
  {
    sub_26BD04E80(v2, &qword_280448F70, &qword_26BDA1A38);
  }

  else
  {
    sub_26BD2DF9C();
    OUTLINED_FUNCTION_79_0();
    sub_26BD2E1F8(v17, v18, &protocol conformance descriptor for TriageRequest.ClientContext);
    sub_26BDA0AD0();
    OUTLINED_FUNCTION_173();
    sub_26BD2E04C();
    if (v1)
    {
      goto LABEL_10;
    }
  }

  if (!*(*v4 + 16) || (sub_26BDA0820(), sub_26BDA0A30(), !v1))
  {
    sub_26BDA0830();
  }

LABEL_10:
  OUTLINED_FUNCTION_247();
}

void static SupportOptionDetailsRequest.== infix(_:_:)()
{
  OUTLINED_FUNCTION_189();
  v4 = v3;
  v6 = v5;
  v54 = type metadata accessor for TriageRequest.ClientContext(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_44();
  v50 = v9 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280448F70, &qword_26BDA1A38);
  OUTLINED_FUNCTION_110(v10);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v11);
  v51 = &v49 - v12;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280449108, &unk_26BDA5490);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v13);
  v55 = &v49 - v14;
  v15 = type metadata accessor for TriageRequest.CaseMetaData(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_123_0();
  v17 = OUTLINED_FUNCTION_256();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(v17, v18);
  OUTLINED_FUNCTION_110(v19);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_228();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280449110, &unk_26BDA1AB0) - 8;
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v22);
  v23 = OUTLINED_FUNCTION_128_0();
  v53 = type metadata accessor for SupportOptionDetailsRequest(v23);
  v24 = *(v21 + 56);
  v56 = v6;
  sub_26BD31AF8();
  sub_26BD31AF8();
  OUTLINED_FUNCTION_28(v2);
  if (v25)
  {
    OUTLINED_FUNCTION_28(v2 + v24);
    if (v25)
    {
      sub_26BD04E80(v2, &qword_280448F68, &qword_26BDA1A30);
      goto LABEL_14;
    }

    goto LABEL_9;
  }

  sub_26BD31AF8();
  OUTLINED_FUNCTION_28(v2 + v24);
  if (v25)
  {
    sub_26BD2E04C();
LABEL_9:
    v26 = &qword_280449110;
    v27 = &unk_26BDA1AB0;
LABEL_10:
    v28 = v2;
LABEL_24:
    sub_26BD04E80(v28, v26, v27);
    goto LABEL_25;
  }

  OUTLINED_FUNCTION_12_1();
  sub_26BD2DF9C();
  if (*(v1 + *(v15 + 20)) != *(v0 + *(v15 + 20)))
  {

    OUTLINED_FUNCTION_163_0();
    sub_26BD631C8();
    v30 = v29;

    if ((v30 & 1) == 0)
    {
      sub_26BD2E04C();
      sub_26BD2E04C();
      v26 = &qword_280448F68;
      v27 = &qword_26BDA1A30;
      goto LABEL_10;
    }
  }

  sub_26BDA0850();
  OUTLINED_FUNCTION_0_4();
  sub_26BD2E1F8(v31, v32, MEMORY[0x277D216D0]);
  OUTLINED_FUNCTION_138_0();
  v33 = sub_26BDA0BB0();
  sub_26BD2E04C();
  OUTLINED_FUNCTION_122();
  sub_26BD2E04C();
  sub_26BD04E80(v2, &qword_280448F68, &qword_26BDA1A30);
  if ((v33 & 1) == 0)
  {
    goto LABEL_25;
  }

LABEL_14:
  v34 = *(v52 + 48);
  v36 = v55;
  v35 = v56;
  sub_26BD31AF8();
  sub_26BD31AF8();
  v37 = v54;
  OUTLINED_FUNCTION_112(v36, 1, v54);
  if (!v25)
  {
    v38 = v51;
    sub_26BD31AF8();
    OUTLINED_FUNCTION_112(v36 + v34, 1, v37);
    if (!v39)
    {
      OUTLINED_FUNCTION_11_0();
      v41 = v50;
      sub_26BD2DF9C();
      if (*&v38[*(v37 + 20)] == *(v41 + *(v37 + 20)) || (, , OUTLINED_FUNCTION_147(), v42 = sub_26BD67C6C(), , , v42))
      {
        sub_26BDA0850();
        OUTLINED_FUNCTION_0_4();
        sub_26BD2E1F8(v43, v44, MEMORY[0x277D216D0]);
        v45 = OUTLINED_FUNCTION_171_0();
        sub_26BD2E04C();
        sub_26BD2E04C();
        sub_26BD04E80(v36, &qword_280448F70, &qword_26BDA1A38);
        if ((v45 & 1) == 0)
        {
          goto LABEL_25;
        }

        goto LABEL_30;
      }

      sub_26BD2E04C();
      sub_26BD2E04C();
      v26 = &qword_280448F70;
      v27 = &qword_26BDA1A38;
      goto LABEL_23;
    }

    sub_26BD2E04C();
LABEL_22:
    v26 = &qword_280449108;
    v27 = &unk_26BDA5490;
LABEL_23:
    v28 = v36;
    goto LABEL_24;
  }

  OUTLINED_FUNCTION_112(v36 + v34, 1, v37);
  if (!v25)
  {
    goto LABEL_22;
  }

  sub_26BD04E80(v36, &qword_280448F70, &qword_26BDA1A38);
LABEL_30:
  sub_26BD2F284(*v35, *v4);
  if (v46)
  {
    sub_26BDA0850();
    OUTLINED_FUNCTION_0_4();
    sub_26BD2E1F8(v47, v48, MEMORY[0x277D216D0]);
    v40 = sub_26BDA0BB0();
    goto LABEL_26;
  }

LABEL_25:
  v40 = 0;
LABEL_26:
  OUTLINED_FUNCTION_258(v40);
  OUTLINED_FUNCTION_188();
}

uint64_t sub_26BD230D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_26BD2E1F8(&qword_28044A218, type metadata accessor for SupportOptionDetailsRequest, &protocol conformance descriptor for SupportOptionDetailsRequest);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26BD23150(uint64_t a1)
{
  v2 = sub_26BD2E1F8(&qword_28044A040, type metadata accessor for SupportOptionDetailsRequest, &protocol conformance descriptor for SupportOptionDetailsRequest);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26BD231C0(uint64_t a1, uint64_t a2)
{
  sub_26BD2E1F8(&qword_28044A040, type metadata accessor for SupportOptionDetailsRequest, &protocol conformance descriptor for SupportOptionDetailsRequest);

  return sub_26BDA0A00();
}

uint64_t sub_26BD23258()
{
  v0 = sub_26BDA0B10();
  __swift_allocate_value_buffer(v0, qword_280449E38);
  __swift_project_value_buffer(v0, qword_280449E38);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804495C8, &unk_26BDA3CB0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804495D0, &qword_26BDA3510) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26BDA19E0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "product_id";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21888];
  v8 = sub_26BDA0AE0();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "product_code";
  *(v10 + 8) = 12;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "product_name";
  *(v12 + 1) = 12;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "concierge_product_name";
  *(v14 + 1) = 22;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "show_carriers";
  *(v16 + 1) = 13;
  v16[16] = 2;
  v9();
  return sub_26BDA0AF0();
}

uint64_t AssociatedProductInfo.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_109();
  while (1)
  {
    OUTLINED_FUNCTION_167();
    result = sub_26BDA0900();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
      case 2:
      case 3:
      case 4:
        OUTLINED_FUNCTION_129();
        sub_26BDA0990();
        break;
      case 5:
        OUTLINED_FUNCTION_129();
        sub_26BDA0920();
        break;
      default:
        continue;
    }
  }
}

uint64_t AssociatedProductInfo.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_29();
  if (!v4 || (result = OUTLINED_FUNCTION_103(v2, v3, 1), !v0))
  {
    OUTLINED_FUNCTION_29();
    if (!v8 || (result = OUTLINED_FUNCTION_103(v6, v7, 2), !v0))
    {
      OUTLINED_FUNCTION_29();
      if (!v11 || (result = OUTLINED_FUNCTION_103(v9, v10, 3), !v0))
      {
        OUTLINED_FUNCTION_29();
        if (!v14 || (result = OUTLINED_FUNCTION_103(v12, v13, 4), !v0))
        {
          if (*(v1 + 64) != 1 || (OUTLINED_FUNCTION_156(), result = sub_26BDA0A40(), !v0))
          {
            type metadata accessor for AssociatedProductInfo(0);
            OUTLINED_FUNCTION_129();
            return sub_26BDA0830();
          }
        }
      }
    }
  }

  return result;
}

uint64_t static AssociatedProductInfo.== infix(_:_:)()
{
  OUTLINED_FUNCTION_184();
  OUTLINED_FUNCTION_20_0(v2);
  v5 = v5 && v3 == v4;
  if (!v5 && (sub_26BDA0FB0() & 1) == 0)
  {
    return 0;
  }

  v6 = *(v1 + 16) == *(v0 + 16) && *(v1 + 24) == *(v0 + 24);
  if (!v6 && (sub_26BDA0FB0() & 1) == 0)
  {
    return 0;
  }

  v7 = *(v1 + 32) == *(v0 + 32) && *(v1 + 40) == *(v0 + 40);
  if (!v7 && (sub_26BDA0FB0() & 1) == 0)
  {
    return 0;
  }

  v8 = *(v1 + 48) == *(v0 + 48) && *(v1 + 56) == *(v0 + 56);
  if (!v8 && (sub_26BDA0FB0() & 1) == 0 || *(v1 + 64) != *(v0 + 64))
  {
    return 0;
  }

  type metadata accessor for AssociatedProductInfo(0);
  sub_26BDA0850();
  OUTLINED_FUNCTION_0_4();
  sub_26BD2E1F8(v10, v11, MEMORY[0x277D216D0]);
  return OUTLINED_FUNCTION_105() & 1;
}

uint64_t sub_26BD2383C(uint64_t a1, uint64_t a2)
{
  v4 = sub_26BD2E1F8(&qword_28044A210, type metadata accessor for AssociatedProductInfo, &protocol conformance descriptor for AssociatedProductInfo);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26BD238BC(uint64_t a1)
{
  v2 = sub_26BD2E1F8(&qword_28044A058, type metadata accessor for AssociatedProductInfo, &protocol conformance descriptor for AssociatedProductInfo);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26BD2392C(uint64_t a1, uint64_t a2)
{
  sub_26BD2E1F8(&qword_28044A058, type metadata accessor for AssociatedProductInfo, &protocol conformance descriptor for AssociatedProductInfo);

  return sub_26BDA0A00();
}

uint64_t sub_26BD239C4()
{
  v0 = sub_26BDA0B10();
  __swift_allocate_value_buffer(v0, qword_280449E50);
  __swift_project_value_buffer(v0, qword_280449E50);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804495C8, &unk_26BDA3CB0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804495D0, &qword_26BDA3510) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v71 = swift_allocObject();
  *(v71 + 16) = xmmword_26BDA5430;
  v4 = v71 + v3 + v1[14];
  *(v71 + v3) = 1;
  *v4 = "support_option_type";
  *(v4 + 8) = 19;
  *(v4 + 16) = 2;
  *(v4 + 24) = "solutionType";
  *(v4 + 32) = 12;
  *(v4 + 40) = 2;
  v5 = *MEMORY[0x277D21878];
  v6 = sub_26BDA0AE0();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v71 + v3 + v2 + v1[14];
  *(v71 + v3 + v2) = 2;
  *v8 = "support_option_sub_type_string";
  *(v8 + 8) = 30;
  *(v8 + 16) = 2;
  *(v8 + 24) = "solutionSubType";
  *(v8 + 32) = 15;
  *(v8 + 40) = 2;
  v7();
  v9 = (v71 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "triggers";
  *(v10 + 1) = 8;
  v10[16] = 2;
  v7();
  v11 = (v71 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 5;
  *v12 = "scb";
  *(v12 + 1) = 3;
  v12[16] = 2;
  v7();
  v13 = (v71 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 6;
  *v14 = "cld";
  *(v14 + 1) = 3;
  v14[16] = 2;
  v7();
  v15 = (v71 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 7;
  *v16 = "c2c";
  *(v16 + 1) = 3;
  v16[16] = 2;
  v7();
  v17 = v1[14];
  v18 = (v71 + v3 + 6 * v2);
  *v18 = 8;
  v19 = v18 + v17;
  *v19 = "carriers_info";
  *(v19 + 1) = 13;
  v19[16] = 2;
  *(v19 + 3) = "carriers";
  *(v19 + 4) = 8;
  v19[40] = 2;
  v7();
  v20 = (v71 + v3 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 9;
  *v21 = "related_products";
  *(v21 + 1) = 16;
  v21[16] = 2;
  v7();
  v22 = (v71 + v3 + 8 * v2);
  v23 = v22 + v1[14];
  *v22 = 10;
  *v23 = "grl_product";
  *(v23 + 1) = 11;
  v23[16] = 2;
  v7();
  v24 = (v71 + v3 + 9 * v2);
  v25 = v24 + v1[14];
  *v24 = 11;
  *v25 = "concierge_product";
  *(v25 + 1) = 17;
  v25[16] = 2;
  v7();
  v26 = (v71 + v3 + 10 * v2);
  v27 = v26 + v1[14];
  *v26 = 12;
  *v27 = "concierge_symptom";
  *(v27 + 1) = 17;
  v27[16] = 2;
  v7();
  v28 = (v71 + v3 + 11 * v2);
  v29 = v28 + v1[14];
  *v28 = 13;
  *v29 = "randevu_product";
  *(v29 + 1) = 15;
  v29[16] = 2;
  v7();
  v30 = (v71 + v3 + 12 * v2);
  v31 = v30 + v1[14];
  *v30 = 14;
  *v31 = "detected_carrier_id";
  *(v31 + 1) = 19;
  v31[16] = 2;
  v7();
  v32 = (v71 + v3 + 13 * v2);
  v33 = v32 + v1[14];
  *v32 = 15;
  *v33 = "localized_purchase_requirements_description";
  *(v33 + 1) = 43;
  v33[16] = 2;
  v7();
  v34 = v1[14];
  v35 = (v71 + v3 + 14 * v2);
  *v35 = 16;
  v36 = v35 + v34;
  *v36 = "uses_secure_flow";
  *(v36 + 1) = 16;
  v36[16] = 2;
  *(v36 + 3) = "secureFlow";
  *(v36 + 4) = 10;
  v36[40] = 2;
  v7();
  v37 = (v71 + v3 + 15 * v2);
  v38 = v37 + v1[14];
  *v37 = 17;
  *v38 = "secure_flow_resources";
  *(v38 + 1) = 21;
  v38[16] = 2;
  v7();
  v39 = (v71 + v3 + 16 * v2);
  v40 = v39 + v1[14];
  *v39 = 18;
  *v40 = "solution_intent_resources";
  *(v40 + 1) = 25;
  v40[16] = 2;
  v7();
  v41 = v1[14];
  v42 = (v71 + v3 + 17 * v2);
  *v42 = 19;
  v43 = v42 + v41;
  *v43 = "redirect_url_string";
  *(v43 + 1) = 19;
  v43[16] = 2;
  *(v43 + 3) = "redirectUrl";
  *(v43 + 4) = 11;
  v43[40] = 2;
  v7();
  v44 = (v71 + v3 + 18 * v2);
  v45 = v44 + v1[14];
  *v44 = 20;
  *v45 = "locale";
  *(v45 + 1) = 6;
  v45[16] = 2;
  v7();
  v46 = (v71 + v3 + 19 * v2);
  v47 = v46 + v1[14];
  *v46 = 21;
  *v47 = "curbside_details";
  *(v47 + 1) = 16;
  v47[16] = 2;
  v7();
  v48 = (v71 + v3 + 20 * v2);
  v49 = v48 + v1[14];
  *v48 = 28;
  *v49 = "localized_pricing_disclaimer";
  *(v49 + 1) = 28;
  v49[16] = 2;
  v7();
  v50 = v1[14];
  v51 = (v71 + v3 + 21 * v2);
  *v51 = 22;
  v52 = v51 + v50;
  *v52 = "apple_id_requirement";
  *(v52 + 1) = 20;
  v52[16] = 2;
  *(v52 + 3) = "appleIdCollection";
  *(v52 + 4) = 17;
  v52[40] = 2;
  v7();
  v53 = (v71 + v3 + 22 * v2);
  v54 = v53 + v1[14];
  *v53 = 23;
  *v54 = "email_attributes";
  *(v54 + 1) = 16;
  v54[16] = 2;
  v7();
  v55 = v1[14];
  v56 = (v71 + v3 + 23 * v2);
  *v56 = 24;
  v57 = v56 + v55;
  *v57 = "contact_carriers_info";
  *(v57 + 1) = 21;
  v57[16] = 2;
  *(v57 + 3) = "carrierDetails";
  *(v57 + 4) = 14;
  v57[40] = 2;
  v7();
  v58 = (v71 + v3 + 24 * v2);
  v59 = v58 + v1[14];
  *v58 = 25;
  *v59 = "ers";
  *(v59 + 1) = 3;
  v59[16] = 2;
  v7();
  v60 = (v71 + v3 + 25 * v2);
  v61 = v60 + v1[14];
  *v60 = 26;
  *v61 = "application_data";
  *(v61 + 1) = 16;
  v61[16] = 2;
  v7();
  v62 = (v71 + v3 + 26 * v2);
  v63 = v62 + v1[14];
  *v62 = 27;
  *v63 = "take_in_for_service_details";
  *(v63 + 1) = 27;
  v63[16] = 2;
  v7();
  v64 = (v71 + v3 + 27 * v2);
  v65 = v64 + v1[14];
  *v64 = 29;
  *v65 = "mail_in";
  *(v65 + 1) = 7;
  v65[16] = 2;
  v7();
  v66 = (v71 + v3 + 28 * v2);
  v67 = v66 + v1[14];
  *v66 = 30;
  *v67 = "pre_contact";
  *(v67 + 1) = 11;
  v67[16] = 2;
  v7();
  v68 = (v71 + v3 + 29 * v2);
  v69 = v68 + v1[14];
  *v68 = 31;
  *v69 = "manage_coverage_flow";
  *(v69 + 1) = 20;
  v69[16] = 2;
  v7();
  return sub_26BDA0AF0();
}

uint64_t sub_26BD2430C()
{
  type metadata accessor for SupportOptionDetailsResponse._StorageClass(0);
  swift_allocObject();
  result = sub_26BD2434C();
  qword_280449E68 = result;
  return result;
}

uint64_t sub_26BD2434C()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = 1;
  *(v0 + 32) = 0;
  *(v0 + 40) = 0xE000000000000000;
  v1 = OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__triggers;
  v2 = sub_26BDA0810();
  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
  v3 = OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__scb;
  v4 = type metadata accessor for SupportOptionDetailsResponse.SCBDetails(0);
  __swift_storeEnumTagSinglePayload(v0 + v3, 1, 1, v4);
  v5 = OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__cld;
  v6 = type metadata accessor for SupportOptionDetailsResponse.CLDDetails(0);
  __swift_storeEnumTagSinglePayload(v0 + v5, 1, 1, v6);
  v7 = OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__c2C;
  v8 = type metadata accessor for SupportOptionDetailsResponse.C2CDetails(0);
  __swift_storeEnumTagSinglePayload(v0 + v7, 1, 1, v8);
  v9 = MEMORY[0x277D84F90];
  *(v0 + OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__carriersInfo) = MEMORY[0x277D84F90];
  *(v0 + OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__relatedProducts) = v9;
  v10 = (v0 + OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__grlProduct);
  *v10 = 0;
  v10[1] = 0xE000000000000000;
  v11 = (v0 + OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__conciergeProduct);
  *v11 = 0;
  v11[1] = 0xE000000000000000;
  v12 = (v0 + OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__conciergeSymptom);
  *v12 = 0;
  v12[1] = 0xE000000000000000;
  v13 = (v0 + OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__randevuProduct);
  *v13 = 0;
  v13[1] = 0xE000000000000000;
  v14 = (v0 + OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__detectedCarrierID);
  *v14 = 0;
  v14[1] = 0xE000000000000000;
  v15 = (v0 + OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__localizedPurchaseRequirementsDescription);
  *v15 = 0;
  v15[1] = 0xE000000000000000;
  *(v0 + OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__usesSecureFlow) = 0;
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__secureFlowResources, 1, 1, v2);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__solutionIntentResources, 1, 1, v2);
  v16 = (v0 + OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__redirectURLString);
  *v16 = 0;
  v16[1] = 0xE000000000000000;
  v17 = (v0 + OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__locale);
  *v17 = 0;
  v17[1] = 0xE000000000000000;
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__curbsideDetails, 1, 1, v2);
  v18 = (v0 + OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__localizedPricingDisclaimer);
  *v18 = 0;
  v18[1] = 0xE000000000000000;
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__appleIDRequirement, 1, 1, v2);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__emailAttributes, 1, 1, v2);
  *(v0 + OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__contactCarriersInfo) = v9;
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__ers, 1, 1, v2);
  *(v0 + OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__applicationData) = xmmword_26BDA19C0;
  *(v0 + OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__takeInForServiceDetails) = v9;
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__mailIn, 1, 1, v2);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__preContact, 1, 1, v2);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__manageCoverageFlow, 1, 1, v2);
  return v0;
}