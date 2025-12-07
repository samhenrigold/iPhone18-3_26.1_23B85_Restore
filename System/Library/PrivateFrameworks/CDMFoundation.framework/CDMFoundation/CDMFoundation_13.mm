void sub_1DC3BDDD8()
{
  OUTLINED_FUNCTION_33();
  v4 = v0;
  v63 = v5;
  v7 = v6;
  v8 = sub_1DC51617C();
  OUTLINED_FUNCTION_0();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_129();
  sub_1DC51373C();
  OUTLINED_FUNCTION_0();
  v64 = v13;
  v65 = v12;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_56_2();
  v66 = sub_1DC516F7C();
  OUTLINED_FUNCTION_0();
  v15 = v14;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_7_21();
  sub_1DC515B3C();
  OUTLINED_FUNCTION_183();
  v18 = (*(v17 + 1040))();

  if (v18)
  {
    sub_1DC28D414();
    OUTLINED_FUNCTION_18_13();
    v19(v2);
    v20 = v7;
    v21 = sub_1DC516F6C();
    v22 = sub_1DC517B9C();

    if (os_log_type_enabled(v21, v22))
    {
      OUTLINED_FUNCTION_140();
      v69[0] = OUTLINED_FUNCTION_54_13();
      *v10 = 136315394;
      v23 = sub_1DC515D6C();
      OUTLINED_FUNCTION_376(v23, v24);
      OUTLINED_FUNCTION_374();
      *(v10 + 4) = v3;
      OUTLINED_FUNCTION_220_1();
      v25 = sub_1DC515A5C();
      OUTLINED_FUNCTION_376(v25, v26);
      OUTLINED_FUNCTION_374();
      *(v10 + 14) = v3;
      _os_log_impl(&dword_1DC287000, v21, v22, "textBasedTRPCandidateMessage is a machine utterance. requestId: %s trpCandidateId: %s", v10, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_146_3();
      OUTLINED_FUNCTION_58();
    }

    (*(v15 + 8))(v2, v66);
    sub_1DC3C060C();
  }

  else
  {
    __swift_project_boxed_opaque_existential_1((v4 + OBJC_IVAR____TtC13CDMFoundation25AssistantNLRequestHandler_sessionState), *(v4 + OBJC_IVAR____TtC13CDMFoundation25AssistantNLRequestHandler_sessionState + 24));
    OUTLINED_FUNCTION_159();
    sub_1DC51626C();
    OUTLINED_FUNCTION_183();
    v27 = OUTLINED_FUNCTION_336();
    v28(v27);
    __swift_destroy_boxed_opaque_existential_1Tm(v69);
    OUTLINED_FUNCTION_32_5();
    v29(v3, v63, v8);
    v30 = OUTLINED_FUNCTION_51();
    v32 = v31(v30);
    v33 = *MEMORY[0x1E69D06D0];
    v34 = OUTLINED_FUNCTION_51();
    v35(v34);
    if (v32 == v33)
    {
      v36 = sub_1DC5136DC();
      sub_1DC51117C();
      v37 = OUTLINED_FUNCTION_57_4();
      v36(v37);
    }

    sub_1DC515A5C();
    v39 = v38;
    v40 = sub_1DC515B2C();
    v42 = v41;
    OUTLINED_FUNCTION_183();
    v44 = *(v43 + 552);

    v45 = v44(v69);
    v47 = v46;
    swift_isUniquelyReferenced_nonNull_native();
    v67 = *v47;
    v48 = OUTLINED_FUNCTION_75();
    sub_1DC358334(v48, v49, v40, v42, v50);
    *v47 = v67;
    v51 = OUTLINED_FUNCTION_57_4();
    v45(v51);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C440, &qword_1DC522EF0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1DC522F20;
    *(inited + 32) = v40;
    *(inited + 40) = v42;

    sub_1DC33347C(inited);
    OUTLINED_FUNCTION_183();
    v54 = (*(v53 + 576))(v69);
    v56 = v55;
    swift_isUniquelyReferenced_nonNull_native();
    v68 = *v56;
    v57 = OUTLINED_FUNCTION_153_0();
    sub_1DC3D7184(v57, v58, v39, v59);
    *v56 = v68;

    v60 = OUTLINED_FUNCTION_57_4();
    v54(v60);
    OUTLINED_FUNCTION_183();
    if ((*(v61 + 584))())
    {
      OUTLINED_FUNCTION_358();
      v62 = v1;
      sub_1DC3BF144();
    }

    else
    {
      sub_1DC515A5C();
      v62 = v1;
      sub_1DC3BFAC0();
    }

    (*(v64 + 8))(v62, v65);
  }

  OUTLINED_FUNCTION_34();
}

uint64_t sub_1DC3BE3B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D388, &unk_1DC5283E8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v17 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D320, &qword_1DC5283A0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v17 - v12;
  if (__swift_getEnumTagSinglePayload(a1, 1, v14) == 1)
  {
    sub_1DC28EB30(a1, &qword_1ECC7D388, &unk_1DC5283E8);
    sub_1DC3D6B14(a2, a3, v10);

    return sub_1DC28EB30(v10, &qword_1ECC7D388, &unk_1DC5283E8);
  }

  else
  {
    sub_1DC3D80AC(a1, v13);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v4;
    sub_1DC3D6EE0(v13, a2, a3, isUniquelyReferenced_nonNull_native);

    *v4 = v18;
  }

  return result;
}

uint64_t sub_1DC3BE548(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    sub_1DC28F9B0(a1, v9);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *v3;
    sub_1DC3D6D94(v9, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v8;
  }

  else
  {
    sub_1DC28EB30(a1, &qword_1ECC7D410, &qword_1DC528430);
    sub_1DC3D6A18(a2, a3, v9);

    return sub_1DC28EB30(v9, &qword_1ECC7D410, &qword_1DC528430);
  }

  return result;
}

uint64_t sub_1DC3BE61C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D4D0, &qword_1DC5285A0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v17 - v9;
  v11 = type metadata accessor for AssistantNLRequestHandler.NluResponseType(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (__swift_getEnumTagSinglePayload(a1, 1, v14) == 1)
  {
    sub_1DC28EB30(a1, &qword_1ECC7D4D0, &qword_1DC5285A0);
    sub_1DC3D6C60(a2, a3, v10);

    return sub_1DC28EB30(v10, &qword_1ECC7D4D0, &qword_1DC5285A0);
  }

  else
  {
    sub_1DC3D8D78(a1, v13);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v4;
    sub_1DC3D72C0(v13, a2, a3, isUniquelyReferenced_nonNull_native);

    *v4 = v18;
  }

  return result;
}

void sub_1DC3BE7A8()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_228_0();
  sub_1DC51373C();
  OUTLINED_FUNCTION_0();
  v11 = v3;
  v12 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v4 = OUTLINED_FUNCTION_9_24();
  type metadata accessor for AssistantNLRequestHandler(v4);
  sub_1DC515C0C();
  sub_1DC3BD06C();
  OUTLINED_FUNCTION_334();

  v5 = OUTLINED_FUNCTION_16();
  v6(v5);

  v7 = sub_1DC5136DC();
  sub_1DC51117C();
  v8 = OUTLINED_FUNCTION_57_4();
  v7(v8);
  sub_1DC2C5FC4(v0 + 16, v13);
  __swift_project_boxed_opaque_existential_1(v13, v13[3]);
  sub_1DC515D6C();
  sub_1DC515B5C();
  v9 = OUTLINED_FUNCTION_104_1();
  v10(v9);

  (*(v11 + 8))(v1, v12);
  __swift_destroy_boxed_opaque_existential_1Tm(v13);
  OUTLINED_FUNCTION_34();
}

uint64_t sub_1DC3BE954(uint64_t a1)
{
  v2 = sub_1DC515B5C();
  (*(*v1 + 448))(v2);
  OUTLINED_FUNCTION_183();
  v4 = *(v3 + 816);

  return v4();
}

void sub_1DC3BE9EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_33();
  a19 = v22;
  a20 = v23;
  OUTLINED_FUNCTION_38_2();
  sub_1DC516F7C();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_79();
  v25 = sub_1DC5162DC();
  v26 = OUTLINED_FUNCTION_2_29(v25, &a9);
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_14(v27);
  v28 = sub_1DC51373C();
  v29 = OUTLINED_FUNCTION_2_29(v28, &v96);
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_7_21();
  v30 = *(sub_1DC515A3C() + 16);

  if (v30)
  {
    v85 = v20;
    v96 = MEMORY[0x1E69E7CD0];
    v31 = sub_1DC515A3C();
    v32 = 0;
    v83 = *(v31 + 16);
    v33 = OUTLINED_FUNCTION_307(v31) + 32;
    v34 = &qword_1DC5283E0;
    v35 = &selRef_tcuId;
    while (v83 != v32)
    {
      OUTLINED_FUNCTION_178_1();
      if (v32 >= *(v36 + 16))
      {
        __break(1u);
LABEL_20:
        __break(1u);
LABEL_21:
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_377(v33, &v94);
      v92 = v94;
      sub_1DC28F9B0(v95, v93);
      v37 = OUTLINED_FUNCTION_311();
      OUTLINED_FUNCTION_377(v37, v38);
      v39 = sub_1DC3D7F84(v90, v35);
      if (!v40)
      {
        goto LABEL_20;
      }

      v86 = v32;
      sub_1DC2E5B58(v89, v39, v40);

      __swift_destroy_boxed_opaque_existential_1Tm(v91);
      v41 = OUTLINED_FUNCTION_311();
      OUTLINED_FUNCTION_377(v41, v42);
      v43 = v35;
      v44 = sub_1DC3D7F84(v90, v35);
      if (!v45)
      {
        goto LABEL_21;
      }

      v46 = v44;
      v47 = v34;
      v48 = v45;
      v21 = sub_1DC515A5C();
      OUTLINED_FUNCTION_12_0();
      v50 = (*(v49 + 552))(v89);
      v52 = v51;
      swift_isUniquelyReferenced_nonNull_native();
      OUTLINED_FUNCTION_43_5(*v52);
      v53 = OUTLINED_FUNCTION_77_1();
      sub_1DC358334(v53, v54, v46, v48, v55);
      *v52 = v88;

      v50(v89, 0);
      sub_1DC28EB30(&v92, &qword_1ECC7D380, v47);
      __swift_destroy_boxed_opaque_existential_1Tm(v91);
      v33 += 48;
      v32 = v86 + 1;
      v34 = v47;
      v35 = v43;
    }

    OUTLINED_FUNCTION_308();

    sub_1DC515A5C();
    (*(*v85 + 576))(&v94);
    OUTLINED_FUNCTION_194();
    swift_isUniquelyReferenced_nonNull_native();
    v92 = *v21;
    OUTLINED_FUNCTION_112_1();
    sub_1DC3D7184(v56, v57, v58, v59);
    *v21 = v92;

    (v34)(&v94, 0);
    v60 = sub_1DC515A3C();
    v61 = *(v60 + 16);
    if (v61)
    {
      v87 = *(*v85 + 848);
      v62 = v60 + 32;
      v84 = *(*v85 + 584);
      OUTLINED_FUNCTION_62_7();
      do
      {
        OUTLINED_FUNCTION_377(v62, &v94);
        v92 = v94;
        sub_1DC28F9B0(v95, v93);
        sub_1DC515A5C();
        sub_1DC515A6C();
        OUTLINED_FUNCTION_213();
        v63 = OUTLINED_FUNCTION_63_0();
        v87(v63);

        OUTLINED_FUNCTION_37();
        v65 = v64();
        if (v84(v65))
        {
          v66 = OUTLINED_FUNCTION_311();
          sub_1DC28F414(v66, v67, &qword_1ECC7D380, &qword_1DC5283E0);
          sub_1DC3D7F84(v90, &selRef_tcuId);
          sub_1DC3BF144();
        }

        else
        {
          sub_1DC515A5C();
          v68 = OUTLINED_FUNCTION_311();
          sub_1DC28F414(v68, v69, &qword_1ECC7D380, &qword_1DC5283E0);
          sub_1DC3D7F84(v90, &selRef_tcuId);
          OUTLINED_FUNCTION_63_0();
          sub_1DC3BFAC0();
        }

        OUTLINED_FUNCTION_37();
        v70(&v92);
        __swift_destroy_boxed_opaque_existential_1Tm(v91);
        sub_1DC28EB30(&v92, &qword_1ECC7D380, &qword_1DC5283E0);
        v62 += 48;
        --v61;
      }

      while (v61);
    }
  }

  else
  {
    sub_1DC28D414();
    OUTLINED_FUNCTION_32_5();
    v71 = OUTLINED_FUNCTION_261();
    v72(v71);
    v73 = sub_1DC516F6C();
    v74 = sub_1DC517BAC();
    if (OUTLINED_FUNCTION_14_7(v74))
    {
      v75 = OUTLINED_FUNCTION_35_8();
      OUTLINED_FUNCTION_81_2(v75);
      OUTLINED_FUNCTION_16_0();
      _os_log_impl(v76, v77, v78, v79, v80, 2u);
      OUTLINED_FUNCTION_31();
    }

    v81 = OUTLINED_FUNCTION_35_0();
    v82(v81);
  }

  OUTLINED_FUNCTION_34();
}

void sub_1DC3BF144()
{
  OUTLINED_FUNCTION_33();
  v3 = v1;
  v101 = v5;
  v102 = v4;
  v103 = v6;
  OUTLINED_FUNCTION_155();
  v7 = sub_1DC5162DC();
  OUTLINED_FUNCTION_0();
  v100 = v8;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_15();
  v94 = v10;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_23_1();
  v96 = v12;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v92 - v14;
  v16 = sub_1DC516F7C();
  OUTLINED_FUNCTION_0();
  v18 = v17;
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_15();
  v92 = v20;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_23_1();
  v104 = v22;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_23_1();
  v93 = v24;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_38_3();
  sub_1DC28D414();
  OUTLINED_FUNCTION_4_2();
  v97 = v26;
  v98 = v27;
  v99 = v28;
  (v27)(v2);
  v29 = v0;
  v30 = sub_1DC516F6C();
  v31 = sub_1DC517B9C();

  v32 = os_log_type_enabled(v30, v31);
  v105 = v1;
  v106 = v7;
  v107 = v18;
  v108 = v29;
  v95 = v15;
  if (v32)
  {
    v33 = OUTLINED_FUNCTION_140();
    v109 = OUTLINED_FUNCTION_143();
    *v33 = 136315394;
    *(v33 + 4) = sub_1DC291244(0xD00000000000003BLL, 0x80000001DC5450C0, &v109);
    *(v33 + 12) = 2080;
    sub_1DC515A6C();
    OUTLINED_FUNCTION_0_49();
    sub_1DC3D8E40(v34, v35, MEMORY[0x1E69D08E0]);
    sub_1DC51823C();
    OUTLINED_FUNCTION_193();
    v36 = v15;
    v37 = v100;
    (*(v100 + 8))(v36, v7);
    v38 = OUTLINED_FUNCTION_74();
    v41 = sub_1DC291244(v38, v39, v40);
    v3 = v105;

    *(v33 + 14) = v41;
    _os_log_impl(&dword_1DC287000, v30, v31, "#assume-persona: %s received message for userId:%s", v33, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_114_1();
    OUTLINED_FUNCTION_14_5();

    v42 = v107;
  }

  else
  {
    v37 = v100;

    v42 = v18;
  }

  v43 = *(v42 + 8);
  v44 = v2;
  v45 = v16;
  v43(v44, v16);
  if (*(v3 + OBJC_IVAR____TtC13CDMFoundation25AssistantNLRequestHandler_userIdDict) && (sub_1DC515A6C(), v46 = OUTLINED_FUNCTION_36(), v48 = sub_1DC3BF940(v46, v47), v49 = *(v37 + 8), v50 = OUTLINED_FUNCTION_357(), v49(v50), v48) && (v51 = sub_1DC3D7F84(v48, &selRef_personaIdentifier), v52))
  {
    v53 = v51;
    v54 = v52;
    sub_1DC5162CC();
    v55 = sub_1DC5162BC();
    v57 = v56;
    v58 = OUTLINED_FUNCTION_357();
    v49(v58);
    if (v53 == v55 && v54 == v57)
    {
    }

    else
    {
      OUTLINED_FUNCTION_147_0();
      v60 = sub_1DC51825C();

      v61 = v101;
      if ((v60 & 1) == 0)
      {
        v86 = v105;
        v87 = OUTLINED_FUNCTION_121_1((v105 + OBJC_IVAR____TtC13CDMFoundation25AssistantNLRequestHandler_cmdPersonaManager), *(v105 + OBJC_IVAR____TtC13CDMFoundation25AssistantNLRequestHandler_cmdPersonaManager + 24));
        MEMORY[0x1EEE9AC00](v87);
        v88 = v108;
        *(&v92 - 6) = v86;
        *(&v92 - 5) = v88;
        v89 = v103;
        *(&v92 - 4) = v102;
        *(&v92 - 3) = v89;
        *(&v92 - 2) = v61;
        v90 = OUTLINED_FUNCTION_147_0();
        v91(v90);

        goto LABEL_18;
      }
    }

    v98(v93, v97, v45);
    v77 = sub_1DC516F6C();
    v78 = sub_1DC517B9C();
    if (OUTLINED_FUNCTION_14_7(v78))
    {
      v79 = OUTLINED_FUNCTION_35_8();
      OUTLINED_FUNCTION_81_2(v79);
      OUTLINED_FUNCTION_16_0();
      _os_log_impl(v80, v81, v82, v83, v84, 2u);
      OUTLINED_FUNCTION_31();
    }

    v85 = OUTLINED_FUNCTION_42_2();
    (v43)(v85);
    sub_1DC515A5C();
  }

  else
  {
    v98(v104, v97, v16);
    v62 = v108;
    v63 = sub_1DC516F6C();
    v64 = sub_1DC517BAC();

    if (os_log_type_enabled(v63, v64))
    {
      v65 = OUTLINED_FUNCTION_63();
      v100 = v16;
      v108 = v43;
      v66 = v65;
      v67 = OUTLINED_FUNCTION_82();
      v109 = v67;
      *v66 = 136315138;
      sub_1DC515A6C();
      OUTLINED_FUNCTION_0_49();
      sub_1DC3D8E40(v68, v69, MEMORY[0x1E69D08E0]);
      sub_1DC51823C();
      OUTLINED_FUNCTION_193();
      v70 = OUTLINED_FUNCTION_265();
      v71(v70);
      v72 = OUTLINED_FUNCTION_74();
      v75 = sub_1DC291244(v72, v73, v74);

      *(v66 + 4) = v75;
      _os_log_impl(&dword_1DC287000, v63, v64, "#assume-persona: couldn't find personaId for %s", v66, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v67);
      OUTLINED_FUNCTION_146_3();
      OUTLINED_FUNCTION_102();

      v108(v104, v100);
    }

    else
    {

      v76 = OUTLINED_FUNCTION_184_1();
      v43(v76, v16);
    }

    sub_1DC515A5C();
  }

  sub_1DC3BFAC0();

LABEL_18:
  OUTLINED_FUNCTION_34();
}

void *sub_1DC3BF940(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = sub_1DC3D67C4(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = *(*(a2 + 56) + 8 * v3);
  v6 = v5;
  return v5;
}

uint64_t sub_1DC3BF988@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (*(a3 + 16) && (v6 = sub_1DC2AEB04(a1, a2), (v7 & 1) != 0))
  {
    v8 = v6;
    v9 = *(a3 + 56);
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D320, &qword_1DC5283A0);
    sub_1DC28F414(v9 + *(*(v10 - 8) + 72) * v8, a4, &qword_1ECC7D320, &qword_1DC5283A0);
    v11 = a4;
    v12 = 0;
    v13 = v10;
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D320, &qword_1DC5283A0);
    v11 = a4;
    v12 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v11, v12, 1, v13);
}

double sub_1DC3BFA68@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (*(a3 + 16) && (v6 = sub_1DC2AEB04(a1, a2), (v7 & 1) != 0))
  {
    sub_1DC2C5FC4(*(a3 + 56) + 40 * v6, a4);
  }

  else
  {
    *(a4 + 32) = 0;
    result = 0.0;
    *a4 = 0u;
    *(a4 + 16) = 0u;
  }

  return result;
}

void sub_1DC3BFAC0()
{
  OUTLINED_FUNCTION_33();
  v2 = v0;
  v4 = v3;
  v6 = v5;
  v20 = v7;
  v9 = v8;
  v11 = v10;
  v12 = sub_1DC5168FC();
  OUTLINED_FUNCTION_0();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_17_0();
  sub_1DC2C5FC4(v2 + 16, v21);
  v16 = v22;
  v17 = v23;
  __swift_project_boxed_opaque_existential_1(v21, v22);
  (*(v17 + 56))(v2 + OBJC_IVAR____TtC13CDMFoundation25AssistantNLRequestHandler_sessionId, *(v2 + OBJC_IVAR____TtC13CDMFoundation25AssistantNLRequestHandler_requestId), *(v2 + OBJC_IVAR____TtC13CDMFoundation25AssistantNLRequestHandler_requestId + 8), v11, v9, v4, v16, v17);
  __swift_destroy_boxed_opaque_existential_1Tm(v21);
  sub_1DC2A0AE0();
  OUTLINED_FUNCTION_19_1();
  v18(v1);
  v19 = swift_allocObject();
  v19[2] = v2;
  v19[3] = v11;
  v19[4] = v9;
  v19[5] = v20;
  v19[6] = v6;

  sub_1DC5168CC();

  (*(v14 + 8))(v1, v12);
  OUTLINED_FUNCTION_34();
}

void sub_1DC3BFC7C()
{
  OUTLINED_FUNCTION_33();
  v4 = v1;
  OUTLINED_FUNCTION_38_2();
  sub_1DC516F7C();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_37_5();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_313(v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D388, &unk_1DC5283E8);
  OUTLINED_FUNCTION_10(v8);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_24_0();
  sub_1DC5162DC();
  OUTLINED_FUNCTION_0();
  v45 = v11;
  v46 = v10;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_98_1();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_55_2();
  v13 = sub_1DC5152BC();
  if (!v14)
  {
    sub_1DC28D414();
    OUTLINED_FUNCTION_18_13();
    v29(v2);
    v30 = sub_1DC516F6C();
    v31 = sub_1DC517BAC();
    if (OUTLINED_FUNCTION_14_7(v31))
    {
      v32 = OUTLINED_FUNCTION_35_8();
      OUTLINED_FUNCTION_81_2(v32);
      OUTLINED_FUNCTION_16_0();
      _os_log_impl(v33, v34, v35, v36, v37, 2u);
      OUTLINED_FUNCTION_31();
    }

    v38 = OUTLINED_FUNCTION_212();
    goto LABEL_9;
  }

  v15 = v13;
  v16 = v14;
  OUTLINED_FUNCTION_223_1();
  v18 = (*(v17 + 392))();
  v19 = OUTLINED_FUNCTION_149();
  sub_1DC3BF988(v19, v20, v18, v21);

  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D320, &qword_1DC5283A0);
  if (!__swift_getEnumTagSinglePayload(v3, 1, v22))
  {
    (*(v45 + 16))(v0, v3 + *(v22 + 64), v46);
    sub_1DC28EB30(v3, &qword_1ECC7D388, &unk_1DC5283E8);
    OUTLINED_FUNCTION_278();
    OUTLINED_FUNCTION_112_1();
    v40();
    OUTLINED_FUNCTION_343();
    v41 = OUTLINED_FUNCTION_149();
    v42(v41);

    v38 = OUTLINED_FUNCTION_265();
LABEL_9:
    v39(v38);
    goto LABEL_12;
  }

  sub_1DC28EB30(v3, &qword_1ECC7D388, &unk_1DC5283E8);
  sub_1DC28D414();
  OUTLINED_FUNCTION_44_8();
  v23();

  v24 = sub_1DC516F6C();
  v25 = sub_1DC517BAC();

  if (os_log_type_enabled(v24, v25))
  {
    OUTLINED_FUNCTION_63();
    v26 = OUTLINED_FUNCTION_117();
    OUTLINED_FUNCTION_332(v26);
    *v4 = 136315138;
    v28 = sub_1DC291244(v27, v16, &v47);

    *(v4 + 4) = v28;
    _os_log_impl(&dword_1DC287000, v24, v25, "handleTRPFinalizedMessage: Unable to find mapped userId for final tcuId=%s. Not updating TurnInputContainer.", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v15);
    OUTLINED_FUNCTION_54_12();
    OUTLINED_FUNCTION_58();
  }

  else
  {
  }

  v43 = OUTLINED_FUNCTION_265();
  v44(v43);
LABEL_12:
  OUTLINED_FUNCTION_34();
}

void sub_1DC3C0090()
{
  OUTLINED_FUNCTION_33();
  v5 = v0;
  v61 = sub_1DC5162DC();
  OUTLINED_FUNCTION_0();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_23_0();
  sub_1DC5161DC();
  OUTLINED_FUNCTION_0();
  v59 = v10;
  v60 = v9;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_79();
  sub_1DC516F7C();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_142_1();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_53();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_94_1();
  sub_1DC3D5514();
  if (v15)
  {
    OUTLINED_FUNCTION_121_1((v0 + OBJC_IVAR____TtC13CDMFoundation25AssistantNLRequestHandler_serverFallbackDisablingUtils), *(v0 + OBJC_IVAR____TtC13CDMFoundation25AssistantNLRequestHandler_serverFallbackDisablingUtils + 24));
    OUTLINED_FUNCTION_340();
    v16 = sub_1DC516A5C();
    sub_1DC28D414();
    OUTLINED_FUNCTION_56_3();
    if (v16)
    {
      v18 = OUTLINED_FUNCTION_233_0();
      v19(v18);
      v20 = sub_1DC516F6C();
      v21 = sub_1DC517B9C();
      if (OUTLINED_FUNCTION_25_0(v21))
      {
        v22 = OUTLINED_FUNCTION_35_8();
        *v22 = 0;
        _os_log_impl(&dword_1DC287000, v20, v21, "shouldDisableServerFallback return true for machineUtterance", v22, 2u);
        OUTLINED_FUNCTION_54_12();
      }

      v23 = OUTLINED_FUNCTION_73();
      v25 = v24(v23);
      (*(*v5 + 656))(v25);
      OUTLINED_FUNCTION_349();
      sub_1DC515B5C();
      OUTLINED_FUNCTION_137();
      (*(v59 + 104))(v2, *MEMORY[0x1E69D0778], v60);
      v26 = OUTLINED_FUNCTION_46_6();
      v27(v26);

      (*(v59 + 8))(v2, v60);
    }

    else
    {
      v17(v4);
      v41 = sub_1DC516F6C();
      sub_1DC517B9C();
      OUTLINED_FUNCTION_116();
      if (os_log_type_enabled(v41, v42))
      {
        v43 = OUTLINED_FUNCTION_35_8();
        OUTLINED_FUNCTION_52_1(v43);
        OUTLINED_FUNCTION_51_8(&dword_1DC287000, v44, v45, "Falling back to execute-NL-on-server path");
        OUTLINED_FUNCTION_58();
      }

      v46 = OUTLINED_FUNCTION_265();
      v47(v46);
      sub_1DC3D1B58();
    }
  }

  else
  {
    sub_1DC28D414();
    v28 = OUTLINED_FUNCTION_276();
    v30 = v29;
    v31(v28);
    v32 = sub_1DC516F6C();
    v33 = sub_1DC517B9C();
    if (OUTLINED_FUNCTION_25_0(v33))
    {
      v34 = OUTLINED_FUNCTION_35_8();
      *v34 = 0;
      _os_log_impl(&dword_1DC287000, v32, v33, "Generating immediate NL message; Pommes will handle this machine utterance", v34, 2u);
      OUTLINED_FUNCTION_114_1();
    }

    v35 = OUTLINED_FUNCTION_210_1();
    v36 = v30;
    v38 = v37;
    (v37)(v35, v36);
    sub_1DC515B5C();
    OUTLINED_FUNCTION_194();
    sub_1DC515C5C();
    OUTLINED_FUNCTION_183();
    v39 = OUTLINED_FUNCTION_42_2();
    v40(v39);
    OUTLINED_FUNCTION_283();

    (*(v7 + 8))(v3, v61);
    if (v1)
    {
      OUTLINED_FUNCTION_20_14((v5 + OBJC_IVAR____TtC13CDMFoundation25AssistantNLRequestHandler_messagePublisher));
      OUTLINED_FUNCTION_112_1();
      sub_1DC515D8C();
    }

    else
    {
      v48 = OUTLINED_FUNCTION_310();
      v49(v48);
      v50 = sub_1DC516F6C();
      v51 = sub_1DC517BAC();
      if (OUTLINED_FUNCTION_14_7(v51))
      {
        v52 = OUTLINED_FUNCTION_35_8();
        OUTLINED_FUNCTION_18_12(v52);
        OUTLINED_FUNCTION_27_16();
        _os_log_impl(v53, v54, v55, v56, v57, 2u);
        OUTLINED_FUNCTION_40_0();
      }

      v58 = OUTLINED_FUNCTION_258();
      v38(v58);
    }
  }

  OUTLINED_FUNCTION_34();
}

void sub_1DC3C060C()
{
  OUTLINED_FUNCTION_33();
  v4 = v0;
  v72 = sub_1DC5162DC();
  OUTLINED_FUNCTION_0();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_23_0();
  sub_1DC5161DC();
  OUTLINED_FUNCTION_0();
  v68 = v9;
  v70 = v8;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_7_21();
  sub_1DC516F7C();
  OUTLINED_FUNCTION_0();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_15();
  v67 = v13;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_142_1();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_53();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_94_1();
  sub_1DC3D5514();
  if (v17)
  {
    OUTLINED_FUNCTION_121_1((v0 + OBJC_IVAR____TtC13CDMFoundation25AssistantNLRequestHandler_serverFallbackDisablingUtils), *(v0 + OBJC_IVAR____TtC13CDMFoundation25AssistantNLRequestHandler_serverFallbackDisablingUtils + 24));
    OUTLINED_FUNCTION_340();
    v18 = sub_1DC516A5C();
    sub_1DC28D414();
    OUTLINED_FUNCTION_56_3();
    if (v18)
    {
      v20 = OUTLINED_FUNCTION_233_0();
      v21(v20);
      v22 = sub_1DC516F6C();
      v23 = sub_1DC517B9C();
      if (OUTLINED_FUNCTION_25_0(v23))
      {
        v24 = OUTLINED_FUNCTION_35_8();
        *v24 = 0;
        _os_log_impl(&dword_1DC287000, v22, v23, "shouldDisableServerFallback return true for machineUtterance", v24, 2u);
        OUTLINED_FUNCTION_67();
      }

      v25 = OUTLINED_FUNCTION_73();
      v27 = v26(v25);
      (*(*v4 + 656))(v27);
      OUTLINED_FUNCTION_349();
      sub_1DC515A5C();
      OUTLINED_FUNCTION_137();
      (*(v68 + 104))(v1, *MEMORY[0x1E69D0778], v70);
      v28 = OUTLINED_FUNCTION_46_6();
      v29(v28);

      v30 = OUTLINED_FUNCTION_41();
      v31(v30);
    }

    else
    {
      v19(v3);
      v50 = sub_1DC516F6C();
      sub_1DC517B9C();
      OUTLINED_FUNCTION_116();
      if (os_log_type_enabled(v50, v51))
      {
        v52 = OUTLINED_FUNCTION_35_8();
        OUTLINED_FUNCTION_52_1(v52);
        OUTLINED_FUNCTION_51_8(&dword_1DC287000, v53, v54, "Falling back to execute-NL-on-server path");
        OUTLINED_FUNCTION_58();
      }

      v55 = OUTLINED_FUNCTION_265();
      v56(v55);
      sub_1DC3D1DC8();
    }
  }

  else
  {
    v71 = v6;
    sub_1DC28D414();
    v32 = OUTLINED_FUNCTION_276();
    v69 = v33;
    v35 = v34;
    v66 = v36;
    (v36)(v32);
    v37 = sub_1DC516F6C();
    v38 = sub_1DC517B9C();
    if (OUTLINED_FUNCTION_25_0(v38))
    {
      v39 = OUTLINED_FUNCTION_35_8();
      *v39 = 0;
      _os_log_impl(&dword_1DC287000, v37, v38, "Generating immediate NL message; Pommes will handle this machine utterance", v39, 2u);
      OUTLINED_FUNCTION_114_1();
    }

    v40 = *(v11 + 8);
    v41 = OUTLINED_FUNCTION_30();
    v65 = v35;
    v40(v41);
    v42 = sub_1DC515A5C();
    v44 = v43;
    v45 = sub_1DC515B2C();
    v47 = v46;
    sub_1DC515A6C();
    OUTLINED_FUNCTION_183();
    v49 = (*(v48 + 800))(v42, v44, v45, v47, v2);

    (*(v71 + 8))(v2, v72);
    if (v49)
    {
      OUTLINED_FUNCTION_20_14((v4 + OBJC_IVAR____TtC13CDMFoundation25AssistantNLRequestHandler_messagePublisher));
      OUTLINED_FUNCTION_112_1();
      sub_1DC515D8C();
    }

    else
    {
      v66(v67, v69, v65);
      v57 = sub_1DC516F6C();
      v58 = sub_1DC517BAC();
      if (OUTLINED_FUNCTION_14_7(v58))
      {
        v59 = OUTLINED_FUNCTION_35_8();
        OUTLINED_FUNCTION_18_12(v59);
        OUTLINED_FUNCTION_27_16();
        _os_log_impl(v60, v61, v62, v63, v64, 2u);
        OUTLINED_FUNCTION_40_0();
      }

      (v40)(v67, v65);
    }
  }

  OUTLINED_FUNCTION_34();
}

void sub_1DC3C0B9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_33();
  a19 = v24;
  a20 = v25;
  v166 = v20;
  v167 = v26;
  v180 = v27;
  v185 = v28;
  v29 = sub_1DC516F7C();
  v30 = OUTLINED_FUNCTION_2_29(v29, &a10);
  v165[2] = v31;
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_20_0(v33);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D390, &qword_1DC527790);
  OUTLINED_FUNCTION_10(v34);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_25();
  v172 = v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D398, &qword_1DC5283F8);
  OUTLINED_FUNCTION_10(v37);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_25();
  v171 = v39;
  OUTLINED_FUNCTION_12();
  v188 = sub_1DC511E5C();
  OUTLINED_FUNCTION_0();
  v184 = v40;
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_271(v42);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7D3A0, &unk_1DC522560);
  OUTLINED_FUNCTION_10(v43);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_25();
  v170 = v45;
  OUTLINED_FUNCTION_12();
  v46 = sub_1DC51107C();
  v47 = OUTLINED_FUNCTION_2_29(v46, &a13);
  v165[5] = v48;
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_20_0(v49);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CFB0, qword_1DC526050);
  OUTLINED_FUNCTION_10(v50);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_25();
  v186 = v52;
  v53 = OUTLINED_FUNCTION_12();
  v169 = type metadata accessor for DialogState(v53);
  OUTLINED_FUNCTION_35();
  MEMORY[0x1EEE9AC00](v54);
  OUTLINED_FUNCTION_2_1();
  v175 = v55;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D3B0, &qword_1DC528400);
  OUTLINED_FUNCTION_10(v56);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v57);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_20_0(v58);
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D3B8, &qword_1DC528408);
  v60 = OUTLINED_FUNCTION_10(v59);
  MEMORY[0x1EEE9AC00](v60);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v61);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v62);
  OUTLINED_FUNCTION_62();
  v187 = v63;
  OUTLINED_FUNCTION_12();
  sub_1DC51122C();
  OUTLINED_FUNCTION_0();
  v181 = v65;
  v182 = v64;
  MEMORY[0x1EEE9AC00](v64);
  OUTLINED_FUNCTION_7_21();
  v66 = sub_1DC51164C();
  v67 = *(v66 - 8);
  MEMORY[0x1EEE9AC00](v66);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_17_0();
  v68 = sub_1DC511EEC();
  OUTLINED_FUNCTION_0();
  v70 = v69;
  MEMORY[0x1EEE9AC00](v71);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_101_0();
  MEMORY[0x1EEE9AC00](v72);
  OUTLINED_FUNCTION_138_1();
  sub_1DC511EDC();
  OUTLINED_FUNCTION_370("com.apple.search");
  sub_1DC51163C();
  v178 = v70;
  v73 = v70;
  v74 = v165[7];
  v75 = *(v73 + 16);
  v174 = v20;
  v179 = v68;
  v76 = v68;
  v77 = v20;
  v75(v21, v20, v76);
  sub_1DC51162C();
  sub_1DC51121C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D150, qword_1DC526DD8);
  v78 = v23;
  OUTLINED_FUNCTION_33_17();
  v79 = swift_allocObject();
  *(v79 + 16) = xmmword_1DC522F20;
  v176 = v67;
  v177 = v66;
  v80 = *(v67 + 16);
  v173 = v22;
  v80(v79 + v21, v22, v66);
  sub_1DC51100C();
  sub_1DC5111DC();
  OUTLINED_FUNCTION_12_0();
  v82 = v167;
  (*(v81 + 104))();
  OUTLINED_FUNCTION_110();
  (*(v83 + 136))();
  OUTLINED_FUNCTION_149_0();

  sub_1DC3C1830(v21, v74);

  v84 = sub_1DC51119C();
  v85 = OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_39(v85, v86, v84);
  if (v87)
  {
    sub_1DC28EB30(v74, &qword_1ECC7D3B0, &qword_1DC528400);
    v89 = 1;
  }

  else
  {
    v21 = v187;
    sub_1DC51112C();
    OUTLINED_FUNCTION_7_1();
    (*(v88 + 8))(v74, v84);
    v89 = 0;
  }

  v90 = sub_1DC5112EC();
  OUTLINED_FUNCTION_214_0();
  __swift_storeEnumTagSinglePayload(v91, v92, v93, v90);
  OUTLINED_FUNCTION_193_0();
  sub_1DC28F414(v94, v95, v96, v97);
  v98 = OUTLINED_FUNCTION_34_11();
  OUTLINED_FUNCTION_39(v98, v99, v90);
  if (v87)
  {
    sub_1DC28EB30(v89, &qword_1ECC7D3B8, &qword_1DC528408);
    sub_1DC5119DC();
    OUTLINED_FUNCTION_19();
    __swift_storeEnumTagSinglePayload(v100, v101, v102, v103);
  }

  else
  {
    OUTLINED_FUNCTION_58_4();
    sub_1DC51129C();
    OUTLINED_FUNCTION_7_1();
    v104 = OUTLINED_FUNCTION_48_0();
    v105(v104);
    v106 = sub_1DC51104C();
    OUTLINED_FUNCTION_62_0();
    v107(v21, v165[6]);
    OUTLINED_FUNCTION_22_13();
    sub_1DC3C18F8(v106, v108, v186);
  }

  v109 = v183;
  v110 = OUTLINED_FUNCTION_43();
  sub_1DC28F414(v110, v111, v112, v113);
  v114 = OUTLINED_FUNCTION_34_11();
  OUTLINED_FUNCTION_39(v114, v115, v90);
  if (v87)
  {
    sub_1DC28EB30(v168, &qword_1ECC7D3B8, &qword_1DC528408);
  }

  else
  {
    sub_1DC5112BC();
    OUTLINED_FUNCTION_7_1();
    v116 = OUTLINED_FUNCTION_48_0();
    v117(v116);
  }

  sub_1DC51190C();
  OUTLINED_FUNCTION_292();
  OUTLINED_FUNCTION_214_0();
  __swift_storeEnumTagSinglePayload(v118, v119, v120, v121);
  sub_1DC3B3BC0(v186, v170, v175);
  OUTLINED_FUNCTION_19();
  __swift_storeEnumTagSinglePayload(v122, v123, v124, v188);
  OUTLINED_FUNCTION_144_2();
  (*(v125 + 1000))(v171);
  sub_1DC28EB30(v171, &qword_1ECC7D398, &qword_1DC5283F8);
  OUTLINED_FUNCTION_16_11();
  sub_1DC3D8B40(v175, v172);
  OUTLINED_FUNCTION_61();
  __swift_storeEnumTagSinglePayload(v126, v127, v128, v169);
  OUTLINED_FUNCTION_144_2();
  v130 = (*(v129 + 1008))(v172);
  v132 = v131;
  v133 = sub_1DC28EB30(v172, &qword_1ECC7D390, &qword_1DC527790);
  MEMORY[0x1EEE9AC00](v133);
  v134 = v185;
  v165[-8] = v77;
  v165[-7] = v134;
  v165[-6] = v180;
  v165[-5] = v78;
  v165[-4] = v82;
  v165[-3] = v109;
  v165[-2] = v130;
  v165[-1] = v132;
  if (v135 == 1)
  {
    v136 = objc_allocWithZone(sub_1DC515A8C());
    OUTLINED_FUNCTION_43_12();
    v137 = sub_1DC515A7C();

    if (!v137)
    {
      sub_1DC28D414();
      OUTLINED_FUNCTION_58_4();
      OUTLINED_FUNCTION_211_0();
      OUTLINED_FUNCTION_355();
      v138();

      v139 = sub_1DC516F6C();
      sub_1DC517BAC();

      if (OUTLINED_FUNCTION_172())
      {
        OUTLINED_FUNCTION_63();
        v140 = OUTLINED_FUNCTION_111();
        v189 = v140;
        *(v132 + 4) = OUTLINED_FUNCTION_366(4.8149e-34);
        OUTLINED_FUNCTION_16_0();
        _os_log_impl(v141, v142, v143, v144, v145, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v140);
        OUTLINED_FUNCTION_40_0();
        OUTLINED_FUNCTION_31();

        (*(v132 + 8))(v165[0], v165);
LABEL_18:
        OUTLINED_FUNCTION_1_32();
LABEL_20:
        sub_1DC3D8824();
        sub_1DC28EB30(v187, &qword_1ECC7D3B8, &qword_1DC528408);
        v161 = OUTLINED_FUNCTION_133_1();
        v162(v161);
        v163 = OUTLINED_FUNCTION_227_0();
        v164(v163);
        goto LABEL_21;
      }

      goto LABEL_19;
    }
  }

  else
  {
    v146 = objc_allocWithZone(sub_1DC5156AC());
    OUTLINED_FUNCTION_43_12();
    v147 = sub_1DC5155EC();

    if (!v147)
    {
      sub_1DC28D414();
      OUTLINED_FUNCTION_58_4();
      OUTLINED_FUNCTION_211_0();
      OUTLINED_FUNCTION_355();
      v152();

      v139 = sub_1DC516F6C();
      sub_1DC517BAC();

      if (OUTLINED_FUNCTION_172())
      {
        OUTLINED_FUNCTION_63();
        v153 = OUTLINED_FUNCTION_111();
        v189 = v153;
        *(v132 + 4) = OUTLINED_FUNCTION_366(4.8149e-34);
        OUTLINED_FUNCTION_16_0();
        _os_log_impl(v154, v155, v156, v157, v158, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v153);
        OUTLINED_FUNCTION_40_0();
        OUTLINED_FUNCTION_31();

        (*(v132 + 8))(v165[1], v165);
        goto LABEL_18;
      }

LABEL_19:

      v159 = OUTLINED_FUNCTION_55();
      v160(v159);
      OUTLINED_FUNCTION_1_32();
      goto LABEL_20;
    }
  }

  OUTLINED_FUNCTION_1_32();
  sub_1DC3D8824();
  sub_1DC28EB30(v187, &qword_1ECC7D3B8, &qword_1DC528408);
  v148 = OUTLINED_FUNCTION_133_1();
  v149(v148);
  v150 = OUTLINED_FUNCTION_227_0();
  v151(v150);
LABEL_21:
  (*(v184 + 8))(v109, v188);
  (*(v181 + 8))(v78, v182);
  OUTLINED_FUNCTION_34();
}

uint64_t sub_1DC3C1830@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v5 = v3 - 1;
    v6 = sub_1DC51119C();
    (*(*(v6 - 8) + 16))(a2, a1 + ((*(*(v6 - 8) + 80) + 32) & ~*(*(v6 - 8) + 80)) + *(*(v6 - 8) + 72) * v5, v6);
    v7 = a2;
    v8 = 0;
    v9 = v6;
  }

  else
  {
    v9 = sub_1DC51119C();
    v7 = a2;
    v8 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v7, v8, 1, v9);
}

uint64_t sub_1DC3C18F8@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 16);
  v6 = a2(0);
  if (v5)
  {
    OUTLINED_FUNCTION_7_1();
    (*(v7 + 16))(a3, a1 + ((*(v7 + 80) + 32) & ~*(v7 + 80)), v6);
    v8 = 0;
  }

  else
  {
    v8 = 1;
  }

  return __swift_storeEnumTagSinglePayload(a3, v8, 1, v6);
}

void sub_1DC3C19A0()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_186_0(v5, v6, v7, v8, v9, v10, v11, v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D398, &qword_1DC5283F8);
  OUTLINED_FUNCTION_10(v13);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_11_1();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D010, &qword_1DC5263B0);
  OUTLINED_FUNCTION_10(v15);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_40_3();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D420, &unk_1DC528440);
  OUTLINED_FUNCTION_10(v17);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_24_0();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7CA30, &qword_1DC522A00);
  OUTLINED_FUNCTION_10(v19);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_28_13();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CEE8, &qword_1DC528550);
  OUTLINED_FUNCTION_10(v21);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_95();
  v23 = *MEMORY[0x1E69D0450];
  v24 = sub_1DC515DBC();
  OUTLINED_FUNCTION_35();
  (*(v25 + 104))(v3, v23, v24);
  v26 = OUTLINED_FUNCTION_21_12();
  OUTLINED_FUNCTION_378(v26, v27, v28, v24);
  sub_1DC51573C();

  OUTLINED_FUNCTION_63_0();
  sub_1DC5156EC();
  v29 = OBJC_IVAR____TtC13CDMFoundation25AssistantNLRequestHandler_sessionId;
  v30 = sub_1DC510B6C();
  OUTLINED_FUNCTION_35();
  (*(v31 + 16))(v1, v0 + v29, v30);
  v32 = OUTLINED_FUNCTION_32_9();
  __swift_storeEnumTagSinglePayload(v32, v33, v34, v30);
  sub_1DC51576C();

  OUTLINED_FUNCTION_63_0();
  sub_1DC51575C();

  sub_1DC5156CC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7D370, &unk_1DC5283D0);
  OUTLINED_FUNCTION_155();
  sub_1DC51122C();
  OUTLINED_FUNCTION_0();
  v35 = OUTLINED_FUNCTION_254();
  v36 = OUTLINED_FUNCTION_272(v35, xmmword_1DC522F20);
  v37(v36);
  sub_1DC5156DC();
  v38 = *MEMORY[0x1E69D0AA0];
  v39 = sub_1DC51170C();
  OUTLINED_FUNCTION_35();
  (*(v40 + 104))(v4, v38, v39);
  OUTLINED_FUNCTION_61();
  OUTLINED_FUNCTION_372(v41, v42, v43);
  sub_1DC51570C();
  v44 = sub_1DC5162DC();
  OUTLINED_FUNCTION_35();
  (*(v45 + 16))(v2, v55, v44);
  OUTLINED_FUNCTION_61();
  __swift_storeEnumTagSinglePayload(v46, v47, v48, v44);
  sub_1DC51574C();
  v49 = sub_1DC511E5C();
  OUTLINED_FUNCTION_35();
  v50 = OUTLINED_FUNCTION_310();
  v51(v50);
  v52 = OUTLINED_FUNCTION_23_20();
  OUTLINED_FUNCTION_293(v52, v53, v54, v49);
  sub_1DC51571C();
  OUTLINED_FUNCTION_208_0();

  sub_1DC51572C();
  OUTLINED_FUNCTION_34();
}

void sub_1DC3C1D74()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_186_0(v5, v6, v7, v8, v9, v10, v11, v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D398, &qword_1DC5283F8);
  OUTLINED_FUNCTION_10(v13);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_11_1();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D010, &qword_1DC5263B0);
  OUTLINED_FUNCTION_10(v15);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_40_3();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D420, &unk_1DC528440);
  OUTLINED_FUNCTION_10(v17);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_24_0();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7CA30, &qword_1DC522A00);
  OUTLINED_FUNCTION_10(v19);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_28_13();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CEE8, &qword_1DC528550);
  OUTLINED_FUNCTION_10(v21);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_95();
  v23 = *MEMORY[0x1E69D0450];
  v24 = sub_1DC515DBC();
  OUTLINED_FUNCTION_35();
  (*(v25 + 104))(v3, v23, v24);
  v26 = OUTLINED_FUNCTION_21_12();
  OUTLINED_FUNCTION_378(v26, v27, v28, v24);
  sub_1DC51566C();

  OUTLINED_FUNCTION_63_0();
  sub_1DC51561C();
  v29 = OBJC_IVAR____TtC13CDMFoundation25AssistantNLRequestHandler_sessionId;
  v30 = sub_1DC510B6C();
  OUTLINED_FUNCTION_35();
  (*(v31 + 16))(v1, v0 + v29, v30);
  v32 = OUTLINED_FUNCTION_32_9();
  __swift_storeEnumTagSinglePayload(v32, v33, v34, v30);
  sub_1DC51569C();

  OUTLINED_FUNCTION_63_0();
  sub_1DC51568C();

  sub_1DC5155FC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7D370, &unk_1DC5283D0);
  OUTLINED_FUNCTION_155();
  sub_1DC51122C();
  OUTLINED_FUNCTION_0();
  v35 = OUTLINED_FUNCTION_254();
  v36 = OUTLINED_FUNCTION_272(v35, xmmword_1DC522F20);
  v37(v36);
  sub_1DC51560C();
  v38 = *MEMORY[0x1E69D0AA0];
  v39 = sub_1DC51170C();
  OUTLINED_FUNCTION_35();
  (*(v40 + 104))(v4, v38, v39);
  OUTLINED_FUNCTION_61();
  OUTLINED_FUNCTION_372(v41, v42, v43);
  sub_1DC51563C();
  v44 = sub_1DC5162DC();
  OUTLINED_FUNCTION_35();
  (*(v45 + 16))(v2, v55, v44);
  OUTLINED_FUNCTION_61();
  __swift_storeEnumTagSinglePayload(v46, v47, v48, v44);
  sub_1DC51567C();
  v49 = sub_1DC511E5C();
  OUTLINED_FUNCTION_35();
  v50 = OUTLINED_FUNCTION_310();
  v51(v50);
  v52 = OUTLINED_FUNCTION_23_20();
  OUTLINED_FUNCTION_293(v52, v53, v54, v49);
  sub_1DC51564C();
  OUTLINED_FUNCTION_208_0();

  sub_1DC51565C();
  OUTLINED_FUNCTION_34();
}

void sub_1DC3C2148(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_33();
  a19 = v23;
  a20 = v24;
  v185 = v20;
  v205 = v25;
  v206 = v26;
  v192 = v27;
  v193 = v28;
  v197 = v29;
  v30 = sub_1DC516F7C();
  v31 = OUTLINED_FUNCTION_2_29(v30, &v210);
  v180 = v32;
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_20_0(v34);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D390, &qword_1DC527790);
  OUTLINED_FUNCTION_10(v35);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_25();
  v191 = v37;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D398, &qword_1DC5283F8);
  OUTLINED_FUNCTION_10(v38);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_14(v40);
  v209 = sub_1DC511E5C();
  OUTLINED_FUNCTION_0();
  v203 = v41;
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_2_1();
  v202 = v43;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7D3A0, &unk_1DC522560);
  OUTLINED_FUNCTION_10(v44);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_14(v46);
  v47 = sub_1DC51107C();
  v48 = OUTLINED_FUNCTION_2_29(v47, &a9);
  v182 = v49;
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_20_0(v50);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CFB0, qword_1DC526050);
  OUTLINED_FUNCTION_10(v51);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v52);
  OUTLINED_FUNCTION_25();
  v54 = OUTLINED_FUNCTION_14(v53);
  v189 = type metadata accessor for DialogState(v54);
  OUTLINED_FUNCTION_35();
  MEMORY[0x1EEE9AC00](v55);
  OUTLINED_FUNCTION_2_1();
  v208 = v56;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D3B0, &qword_1DC528400);
  OUTLINED_FUNCTION_10(v57);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v58);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_20_0(v59);
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D3B8, &qword_1DC528408);
  v61 = OUTLINED_FUNCTION_10(v60);
  MEMORY[0x1EEE9AC00](v61);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v62);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v63);
  OUTLINED_FUNCTION_62();
  v207 = v64;
  OUTLINED_FUNCTION_12();
  sub_1DC51122C();
  OUTLINED_FUNCTION_0();
  v200 = v66;
  v201 = v65;
  MEMORY[0x1EEE9AC00](v65);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_17_0();
  v67 = sub_1DC51164C();
  v68 = *(v67 - 8);
  MEMORY[0x1EEE9AC00](v67);
  OUTLINED_FUNCTION_9_24();
  v69 = sub_1DC511EEC();
  OUTLINED_FUNCTION_0();
  v71 = v70;
  MEMORY[0x1EEE9AC00](v72);
  OUTLINED_FUNCTION_8();
  v75 = v73 - v74;
  MEMORY[0x1EEE9AC00](v76);
  OUTLINED_FUNCTION_138_1();
  sub_1DC511EDC();
  OUTLINED_FUNCTION_370("com.apple.search");
  sub_1DC51163C();
  v198 = v71;
  v77 = v71;
  v78 = v184;
  v79 = *(v77 + 16);
  v195 = v20;
  v199 = v69;
  v79(v75, v20, v69);
  sub_1DC51162C();
  sub_1DC51121C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D150, qword_1DC526DD8);
  OUTLINED_FUNCTION_33_17();
  v80 = swift_allocObject();
  *(v80 + 16) = xmmword_1DC522F20;
  v196 = v68;
  v81 = *(v68 + 16);
  v194 = v21;
  v186 = v67;
  v81(v80 + v67 - 8, v21, v67);
  sub_1DC51100C();
  v204 = v22;
  sub_1DC5111DC();
  v82 = v185;
  OUTLINED_FUNCTION_12_0();
  (*(v83 + 104))(v206);
  OUTLINED_FUNCTION_110();
  v85 = (*(v84 + 136))();

  sub_1DC3C1830(v85, v78);

  v86 = sub_1DC51119C();
  v87 = OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_39(v87, v88, v86);
  if (v89)
  {
    sub_1DC28EB30(v78, &qword_1ECC7D3B0, &qword_1DC528400);
    v91 = 1;
  }

  else
  {
    sub_1DC51112C();
    OUTLINED_FUNCTION_7_1();
    (*(v90 + 8))(v78, v86);
    v91 = 0;
  }

  v92 = sub_1DC5112EC();
  OUTLINED_FUNCTION_214_0();
  __swift_storeEnumTagSinglePayload(v93, v94, v95, v92);
  OUTLINED_FUNCTION_193_0();
  sub_1DC28F414(v96, v97, v98, v99);
  OUTLINED_FUNCTION_30_8(v91);
  v100 = v202;
  if (v89)
  {
    sub_1DC28EB30(v91, &qword_1ECC7D3B8, &qword_1DC528408);
    sub_1DC5119DC();
    OUTLINED_FUNCTION_19();
    __swift_storeEnumTagSinglePayload(v101, v102, v103, v104);
  }

  else
  {
    OUTLINED_FUNCTION_76_1();
    sub_1DC51129C();
    OUTLINED_FUNCTION_7_1();
    v105 = OUTLINED_FUNCTION_74();
    v106(v105);
    v107 = sub_1DC51104C();
    OUTLINED_FUNCTION_62_0();
    v108(v69, v183);
    OUTLINED_FUNCTION_22_13();
    sub_1DC3C18F8(v107, v109, v188);
  }

  sub_1DC28F414(v207, v187, &qword_1ECC7D3B8, &qword_1DC528408);
  OUTLINED_FUNCTION_30_8(v187);
  if (v89)
  {
    sub_1DC28EB30(v187, &qword_1ECC7D3B8, &qword_1DC528408);
  }

  else
  {
    sub_1DC5112BC();
    OUTLINED_FUNCTION_7_1();
    v110 = OUTLINED_FUNCTION_212();
    v111(v110);
  }

  sub_1DC51190C();
  OUTLINED_FUNCTION_214_0();
  __swift_storeEnumTagSinglePayload(v112, v113, v114, v115);
  v116 = OUTLINED_FUNCTION_16();
  sub_1DC3B3BC0(v116, v117, v118);
  v119 = v190;
  OUTLINED_FUNCTION_19();
  __swift_storeEnumTagSinglePayload(v120, v121, v122, v209);
  OUTLINED_FUNCTION_189_0();
  (*(v123 + 1000))(v190);
  sub_1DC28EB30(v190, &qword_1ECC7D398, &qword_1DC5283F8);
  OUTLINED_FUNCTION_16_11();
  sub_1DC3D8B40(v208, v191);
  OUTLINED_FUNCTION_61();
  __swift_storeEnumTagSinglePayload(v124, v125, v126, v189);
  OUTLINED_FUNCTION_189_0();
  (*(v127 + 1008))(v191);
  OUTLINED_FUNCTION_193();
  v128 = sub_1DC28EB30(v191, &qword_1ECC7D390, &qword_1DC527790);
  MEMORY[0x1EEE9AC00](v128);
  v129 = v204;
  v179[-4] = v204;
  v179[-3] = v100;
  v179[-2] = v82;
  v179[-1] = v119;
  v130 = sub_1DC51616C();
  v131 = objc_allocWithZone(v130);
  OUTLINED_FUNCTION_348();
  v132 = sub_1DC5160FC();

  v133 = MEMORY[0x1E69E7CC8];
  v211 = MEMORY[0x1E69E7CC8];
  if (v132)
  {
    v134 = v132;
    OUTLINED_FUNCTION_1_31();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v210 = v133;
    sub_1DC3D7048(v130, v192, v193, isUniquelyReferenced_nonNull_native);
    v211 = v210;
  }

  else
  {
    v137 = MEMORY[0x1E69E7CC8];
    v136 = sub_1DC2AEB04(v192, v193);
    if (v138)
    {
      OUTLINED_FUNCTION_334();
      swift_isUniquelyReferenced_nonNull_native();
      v210 = v137;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7D3C0, &qword_1DC528410);
      v129 = v204;
      sub_1DC517FFC();
      v139 = v210;

      v140 = *(v139[7] + 8 * v179);
      sub_1DC51800C();

      v211 = v139;
    }
  }

  MEMORY[0x1EEE9AC00](v136);
  v142 = v205;
  v141 = v206;
  v179[-6] = v82;
  v179[-5] = v142;
  v179[-4] = v197;
  v179[-3] = v141;
  v179[-2] = &v211;
  v179[-1] = v133;
  if (v143 == 1)
  {
    v144 = objc_allocWithZone(sub_1DC5155BC());
    OUTLINED_FUNCTION_43_12();
    if (!sub_1DC51552C())
    {
      sub_1DC28D414();
      v145 = v180;
      OUTLINED_FUNCTION_32_5();
      v146 = OUTLINED_FUNCTION_211_0();
      v147 = v181;
      v148(v146);

      v149 = sub_1DC516F6C();
      sub_1DC517BAC();
      OUTLINED_FUNCTION_354();

      if (OUTLINED_FUNCTION_172())
      {
        OUTLINED_FUNCTION_63();
        v150 = v145;
        v151 = OUTLINED_FUNCTION_73_5();
        v210 = v151;
        *(v133 + 4) = OUTLINED_FUNCTION_367(4.8149e-34);
        OUTLINED_FUNCTION_27_16();
        _os_log_impl(v152, v153, v154, v155, v156, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v151);
        OUTLINED_FUNCTION_58();
        OUTLINED_FUNCTION_40_0();

        (*(v150 + 8))(v179[0], v147);
LABEL_23:
        OUTLINED_FUNCTION_1_32();
        sub_1DC3D8824();
        sub_1DC28EB30(v207, &qword_1ECC7D3B8, &qword_1DC528408);
        v175 = OUTLINED_FUNCTION_260();
        v176(v175);
        v177 = OUTLINED_FUNCTION_133_1();
        v178(v177);
        goto LABEL_24;
      }

      goto LABEL_22;
    }
  }

  else
  {
    v157 = objc_allocWithZone(sub_1DC51539C());
    OUTLINED_FUNCTION_43_12();
    if (!sub_1DC51530C())
    {
      sub_1DC28D414();
      v162 = v180;
      OUTLINED_FUNCTION_32_5();
      v163 = OUTLINED_FUNCTION_211_0();
      v164 = v181;
      v165(v163);

      v149 = sub_1DC516F6C();
      sub_1DC517BAC();
      OUTLINED_FUNCTION_354();

      if (OUTLINED_FUNCTION_172())
      {
        OUTLINED_FUNCTION_63();
        v166 = v162;
        v167 = OUTLINED_FUNCTION_73_5();
        v210 = v167;
        *(v133 + 4) = OUTLINED_FUNCTION_367(4.8149e-34);
        OUTLINED_FUNCTION_27_16();
        _os_log_impl(v168, v169, v170, v171, v172, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v167);
        OUTLINED_FUNCTION_58();
        OUTLINED_FUNCTION_40_0();

        (*(v166 + 8))(v179[1], v164);
        goto LABEL_23;
      }

LABEL_22:

      v173 = OUTLINED_FUNCTION_159();
      v174(v173);
      goto LABEL_23;
    }
  }

  OUTLINED_FUNCTION_1_32();
  sub_1DC3D8824();
  sub_1DC28EB30(v207, &qword_1ECC7D3B8, &qword_1DC528408);
  v158 = OUTLINED_FUNCTION_260();
  v159(v158);
  v160 = OUTLINED_FUNCTION_133_1();
  v161(v160);
LABEL_24:

  (*(v203 + 8))(v100, v209);
  (*(v200 + 8))(v129, v201);
  OUTLINED_FUNCTION_34();
}

void sub_1DC3C2F2C()
{
  OUTLINED_FUNCTION_33();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D398, &qword_1DC5283F8);
  OUTLINED_FUNCTION_10(v4);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_11_1();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D418, &qword_1DC528438);
  OUTLINED_FUNCTION_10(v6);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_28_13();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7D4B0, &unk_1DC528580);
  OUTLINED_FUNCTION_10(v8);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_95();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D420, &unk_1DC528440);
  OUTLINED_FUNCTION_10(v10);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_24_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7D370, &unk_1DC5283D0);
  v12 = sub_1DC51122C();
  OUTLINED_FUNCTION_0();
  v14 = v13;
  OUTLINED_FUNCTION_337();
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1DC522F20;
  (*(v14 + 16))(v15 + v0, v3, v12);
  sub_1DC51610C();
  v16 = *MEMORY[0x1E69D0AA0];
  v17 = sub_1DC51170C();
  OUTLINED_FUNCTION_35();
  (*(v18 + 104))(v1, v16, v17);
  OUTLINED_FUNCTION_61();
  __swift_storeEnumTagSinglePayload(v19, v20, v21, v17);
  sub_1DC51612C();
  sub_1DC511EEC();
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_378(v22, v23, v24, v25);
  sub_1DC51611C();
  sub_1DC5161DC();
  OUTLINED_FUNCTION_19();
  __swift_storeEnumTagSinglePayload(v26, v27, v28, v29);
  sub_1DC51613C();
  v30 = sub_1DC511E5C();
  OUTLINED_FUNCTION_35();
  v31 = OUTLINED_FUNCTION_310();
  v32(v31);
  v33 = OUTLINED_FUNCTION_23_20();
  OUTLINED_FUNCTION_293(v33, v34, v35, v30);
  sub_1DC51614C();
  OUTLINED_FUNCTION_208_0();

  sub_1DC51615C();
  OUTLINED_FUNCTION_34();
}

void sub_1DC3C31F0()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_202_1(v4, v5, v6, v7, v8, v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D010, &qword_1DC5263B0);
  OUTLINED_FUNCTION_10(v10);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_11_1();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7CA30, &qword_1DC522A00);
  OUTLINED_FUNCTION_10(v12);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_24_0();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CEE8, &qword_1DC528550);
  OUTLINED_FUNCTION_10(v14);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_78_8();
  v16 = *MEMORY[0x1E69D0450];
  v17 = sub_1DC515DBC();
  OUTLINED_FUNCTION_35();
  (*(v18 + 104))(v3, v16, v17);
  OUTLINED_FUNCTION_61();
  __swift_storeEnumTagSinglePayload(v19, v20, v21, v17);
  sub_1DC51557C();

  OUTLINED_FUNCTION_65_1();
  sub_1DC51553C();
  v22 = OBJC_IVAR____TtC13CDMFoundation25AssistantNLRequestHandler_sessionId;
  v23 = sub_1DC510B6C();
  OUTLINED_FUNCTION_35();
  (*(v24 + 16))(v2, v1 + v22, v23);
  OUTLINED_FUNCTION_61();
  OUTLINED_FUNCTION_372(v25, v26, v27);
  sub_1DC5155AC();

  OUTLINED_FUNCTION_65_1();
  sub_1DC51559C();

  OUTLINED_FUNCTION_41();
  sub_1DC51554C();
  v28 = sub_1DC5162DC();
  OUTLINED_FUNCTION_35();
  (*(v29 + 16))(v0, v34, v28);
  v30 = OUTLINED_FUNCTION_23_20();
  OUTLINED_FUNCTION_293(v30, v31, v32, v28);
  sub_1DC51558C();

  sub_1DC3C3448(v33);

  sub_1DC51555C();

  sub_1DC51556C();
  OUTLINED_FUNCTION_34();
}

void sub_1DC3C3448(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D4F0, &qword_1DC5285C0);
    v2 = sub_1DC51804C();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  while (v5)
  {
    v8 = v7;
LABEL_12:
    v9 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v10 = v9 | (v8 << 6);
    v11 = (*(a1 + 48) + 16 * v10);
    v13 = *v11;
    v12 = v11[1];
    v14 = *(*(a1 + 56) + 8 * v10);
    sub_1DC51616C();

    v15 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D4F8, &qword_1DC5285C8);
    swift_dynamicCast();
    v16 = sub_1DC2AEB04(v13, v12);
    v17 = v16;
    if (v18)
    {
      v19 = (v2[6] + 16 * v16);
      *v19 = v13;
      v19[1] = v12;

      v20 = v2[7];
      v21 = *(v20 + 8 * v17);
      *(v20 + 8 * v17) = v26;

      v7 = v8;
    }

    else
    {
      if (v2[2] >= v2[3])
      {
        goto LABEL_19;
      }

      *(v2 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v16;
      v22 = (v2[6] + 16 * v16);
      *v22 = v13;
      v22[1] = v12;
      *(v2[7] + 8 * v16) = v26;
      v23 = v2[2];
      v24 = __OFADD__(v23, 1);
      v25 = v23 + 1;
      if (v24)
      {
        goto LABEL_20;
      }

      v2[2] = v25;
      v7 = v8;
    }
  }

  while (1)
  {
    v8 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v8 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v8);
    ++v7;
    if (v5)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
}

void sub_1DC3C3668()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_202_1(v4, v5, v6, v7, v8, v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D010, &qword_1DC5263B0);
  OUTLINED_FUNCTION_10(v10);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_11_1();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7CA30, &qword_1DC522A00);
  OUTLINED_FUNCTION_10(v12);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_24_0();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CEE8, &qword_1DC528550);
  OUTLINED_FUNCTION_10(v14);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_78_8();
  v16 = *MEMORY[0x1E69D0450];
  v17 = sub_1DC515DBC();
  OUTLINED_FUNCTION_35();
  (*(v18 + 104))(v3, v16, v17);
  OUTLINED_FUNCTION_61();
  __swift_storeEnumTagSinglePayload(v19, v20, v21, v17);
  sub_1DC51535C();

  OUTLINED_FUNCTION_65_1();
  sub_1DC51531C();
  v22 = OBJC_IVAR____TtC13CDMFoundation25AssistantNLRequestHandler_sessionId;
  v23 = sub_1DC510B6C();
  OUTLINED_FUNCTION_35();
  (*(v24 + 16))(v2, v1 + v22, v23);
  OUTLINED_FUNCTION_61();
  OUTLINED_FUNCTION_372(v25, v26, v27);
  sub_1DC51538C();

  OUTLINED_FUNCTION_65_1();
  sub_1DC51537C();

  OUTLINED_FUNCTION_41();
  sub_1DC51532C();
  v28 = sub_1DC5162DC();
  OUTLINED_FUNCTION_35();
  (*(v29 + 16))(v0, v34, v28);
  v30 = OUTLINED_FUNCTION_23_20();
  OUTLINED_FUNCTION_293(v30, v31, v32, v28);
  sub_1DC51536C();

  sub_1DC3C3448(v33);

  sub_1DC51533C();

  sub_1DC51534C();
  OUTLINED_FUNCTION_34();
}

void sub_1DC3C38C0()
{
  OUTLINED_FUNCTION_33();
  v5 = sub_1DC516F7C();
  OUTLINED_FUNCTION_0();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_123();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_142_1();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_23_1();
  v120 = v11;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_23_1();
  v115 = v13;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_23_1();
  v113 = v15;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_62();
  v114 = v17;
  OUTLINED_FUNCTION_12();
  v121 = sub_1DC5162DC();
  OUTLINED_FUNCTION_0();
  v119 = v18;
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_15();
  v112 = v20;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_62();
  v117 = v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D388, &unk_1DC5283E8);
  OUTLINED_FUNCTION_10(v23);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_31_3();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D320, &qword_1DC5283A0);
  OUTLINED_FUNCTION_35();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_109();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_98_1();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_313(v29);
  OUTLINED_FUNCTION_38_1();
  if ((*(v30 + 464))())
  {
    sub_1DC28D414();
    OUTLINED_FUNCTION_56_3();
    v31(v3);
    v32 = sub_1DC516F6C();
    v33 = sub_1DC517B9C();
    if (OUTLINED_FUNCTION_14_7(v33))
    {
      v34 = OUTLINED_FUNCTION_35_8();
      OUTLINED_FUNCTION_81_2(v34);
      OUTLINED_FUNCTION_16_0();
      _os_log_impl(v35, v36, v37, v38, v39, 2u);
      OUTLINED_FUNCTION_31();
    }

    v40 = *(v7 + 8);
    v41 = v3;
    goto LABEL_5;
  }

  v118 = v5;
  OUTLINED_FUNCTION_43_11();
  (*(v43 + 440))();
  if (!v44)
  {
    sub_1DC28D414();
    OUTLINED_FUNCTION_56_3();
    v63(v2);
    v64 = sub_1DC516F6C();
    v65 = sub_1DC517B9C();
    if (OUTLINED_FUNCTION_14_7(v65))
    {
      v66 = OUTLINED_FUNCTION_35_8();
      OUTLINED_FUNCTION_81_2(v66);
      OUTLINED_FUNCTION_16_0();
      _os_log_impl(v67, v68, v69, v70, v71, 2u);
      OUTLINED_FUNCTION_31();
    }

    v41 = OUTLINED_FUNCTION_42_2();
    goto LABEL_14;
  }

  OUTLINED_FUNCTION_43_11();
  v46 = v45 + 368;
  v110 = *(v45 + 368);
  v47 = v110();
  v48 = OUTLINED_FUNCTION_34_0();
  sub_1DC3BF988(v48, v49, v47, v50);

  v51 = OUTLINED_FUNCTION_100();
  OUTLINED_FUNCTION_39(v51, v52, v25);
  if (!v53)
  {
    sub_1DC3D80AC(v1, v122);
    v72 = OUTLINED_FUNCTION_31_0();
    sub_1DC28F414(v72, v73, v74, v75);
    v76 = *(v0 + *(v25 + 48));
    v77 = *(v25 + 64);
    if (v76 == 2)
    {
      (*(v119 + 8))(v0 + v77, v121);
      sub_1DC51119C();
      OUTLINED_FUNCTION_35();
      (*(v78 + 8))(v0);
      sub_1DC28D414();
      OUTLINED_FUNCTION_70_7();
      v79(v115);

      v80 = sub_1DC516F6C();
      sub_1DC517B9C();
      OUTLINED_FUNCTION_306();
      if (OUTLINED_FUNCTION_172())
      {
LABEL_22:
        OUTLINED_FUNCTION_63();
        v85 = OUTLINED_FUNCTION_111();
        *v1 = 136315138;
        OUTLINED_FUNCTION_116_3();
        OUTLINED_FUNCTION_283();

        *(v1 + 4) = v46;
        OUTLINED_FUNCTION_16_0();
        _os_log_impl(v86, v87, v88, v89, v90, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v85);
        OUTLINED_FUNCTION_40_0();
        OUTLINED_FUNCTION_31();
LABEL_24:

        v91 = OUTLINED_FUNCTION_75();
        v92(v91);
        v93 = v122;
LABEL_29:
        sub_1DC28EB30(v93, &qword_1ECC7D320, &qword_1DC5283A0);
        goto LABEL_15;
      }
    }

    else
    {
      v1 = v119;
      v116 = *(v119 + 8);
      v116(v0 + v77, v121);
      sub_1DC51119C();
      OUTLINED_FUNCTION_2();
      v46 = v81 + 8;
      v82 = OUTLINED_FUNCTION_43();
      v111 = v83;
      v83(v82);
      if ((v76 & 1) == 0)
      {
        sub_1DC28F414(v122, v4, &qword_1ECC7D320, &qword_1DC5283A0);
        (*(v119 + 32))(v117, v4 + *(v25 + 64), v121);
        v111(v4);
        sub_1DC28D414();
        OUTLINED_FUNCTION_70_7();
        v94(v114);
        (*(v119 + 16))(v112, v117, v121);

        v95 = sub_1DC516F6C();
        v96 = sub_1DC517B9C();

        if (os_log_type_enabled(v95, v96))
        {
          v97 = v96;
          v96 = OUTLINED_FUNCTION_140();
          OUTLINED_FUNCTION_143();
          *v96 = 136315394;
          OUTLINED_FUNCTION_116_3();
          OUTLINED_FUNCTION_155_0();

          *(v96 + 4) = v114;
          *(v96 + 12) = 2080;
          OUTLINED_FUNCTION_0_49();
          sub_1DC3D8E40(v98, v99, MEMORY[0x1E69D08E0]);
          sub_1DC51823C();
          OUTLINED_FUNCTION_163();
          v100 = OUTLINED_FUNCTION_47_0();
          v101 = v116;
          (v116)(v100);
          v102 = OUTLINED_FUNCTION_151();
          sub_1DC291244(v102, v103, v104);
          OUTLINED_FUNCTION_155_0();

          *(v96 + 14) = v112;
          _os_log_impl(&dword_1DC287000, v95, v97, "Updating TurnContainer with turnInput for rcId: %s and userId: %s", v96, 0x16u);
          OUTLINED_FUNCTION_218_0();
          OUTLINED_FUNCTION_102();
          OUTLINED_FUNCTION_14_5();
        }

        else
        {

          v105 = OUTLINED_FUNCTION_47_0();
          v101 = v116;
          (v116)(v105);
        }

        (*(v7 + 8))(v114, v118);
        OUTLINED_FUNCTION_12_0();
        (*(v106 + 104))(v117);
        OUTLINED_FUNCTION_327();
        v107 = OUTLINED_FUNCTION_208_0();
        v108(v107);

        OUTLINED_FUNCTION_233();
        (*(v109 + 472))(1);
        v101(v117, v121);
        v93 = v96;
        goto LABEL_29;
      }

      sub_1DC28D414();
      OUTLINED_FUNCTION_70_7();
      v84(v113);

      v80 = sub_1DC516F6C();
      sub_1DC517B9C();
      OUTLINED_FUNCTION_306();
      if (OUTLINED_FUNCTION_172())
      {
        goto LABEL_22;
      }
    }

    goto LABEL_24;
  }

  sub_1DC28EB30(v1, &qword_1ECC7D388, &unk_1DC5283E8);
  sub_1DC28D414();
  OUTLINED_FUNCTION_56_3();
  v54(v120);

  v55 = sub_1DC516F6C();
  v56 = sub_1DC517BAC();

  if (!OUTLINED_FUNCTION_301())
  {

    v40 = *(v7 + 8);
    v41 = v120;
LABEL_5:
    v42 = v5;
LABEL_14:
    v40(v41, v42);
    goto LABEL_15;
  }

  v57 = OUTLINED_FUNCTION_140();
  OUTLINED_FUNCTION_143();
  *v57 = 136315394;
  OUTLINED_FUNCTION_116_3();
  OUTLINED_FUNCTION_155_0();

  *(v57 + 4) = v120;
  *(v57 + 12) = 2080;
  v59 = (v110)(v58);
  sub_1DC51763C();

  v60 = OUTLINED_FUNCTION_159();
  sub_1DC291244(v60, v61, v62);
  OUTLINED_FUNCTION_155_0();

  *(v57 + 14) = v59;
  _os_log_impl(&dword_1DC287000, v55, v56, "Not updating TurnContainer as turnInput was not found for rcId: %s turnInputsByRcId: %s", v57, 0x16u);
  OUTLINED_FUNCTION_218_0();
  OUTLINED_FUNCTION_102();
  OUTLINED_FUNCTION_146_3();

  (*(v7 + 8))(v120, v5);
LABEL_15:
  OUTLINED_FUNCTION_34();
}

void sub_1DC3C4380()
{
  OUTLINED_FUNCTION_33();
  v4 = v0;
  v118 = v5;
  v122 = v6;
  v8 = v7;
  sub_1DC5162DC();
  OUTLINED_FUNCTION_0();
  v119 = v10;
  v121 = v9;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_2_1();
  v114 = v11;
  OUTLINED_FUNCTION_12();
  v12 = sub_1DC516F7C();
  OUTLINED_FUNCTION_0();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_8();
  v18 = v16 - v17;
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_53_1();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_23_1();
  v116 = v21;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_23_1();
  v113 = v23;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_271(v25);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D388, &unk_1DC5283E8);
  OUTLINED_FUNCTION_10(v26);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_78_8();
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D320, &qword_1DC5283A0);
  OUTLINED_FUNCTION_35();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_109();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_313(v31);
  OUTLINED_FUNCTION_38_1();
  if (((*(v32 + 464))() & 1) == 0)
  {
    OUTLINED_FUNCTION_43_11();
    v44 += 49;
    v45 = *v44;
    v46 = (*v44)();
    sub_1DC3BF988(v8, v122, v46, v3);

    OUTLINED_FUNCTION_39(v3, 1, v28);
    if (v47)
    {
      sub_1DC28EB30(v3, &qword_1ECC7D388, &unk_1DC5283E8);
      sub_1DC28D414();
      v48 = OUTLINED_FUNCTION_162_3();
      v49 = v12;
      v50(v48);

      v51 = sub_1DC516F6C();
      v52 = sub_1DC517BAC();

      if (os_log_type_enabled(v51, v52))
      {
        v120 = v49;
        v53 = OUTLINED_FUNCTION_140();
        v124 = OUTLINED_FUNCTION_143();
        *v53 = 136315394;
        v54 = OUTLINED_FUNCTION_116_3();
        *(v53 + 4) = v54;
        *(v53 + 12) = 2080;
        (v45)(v54);
        sub_1DC51763C();
        OUTLINED_FUNCTION_349();

        v55 = OUTLINED_FUNCTION_46_6();
        v58 = sub_1DC291244(v55, v56, v57);

        *(v53 + 14) = v58;
        _os_log_impl(&dword_1DC287000, v51, v52, "Not updating TurnContainer as turnInput was not found for tcuId: %s turnInputsByTcuId: %s", v53, 0x16u);
        OUTLINED_FUNCTION_208_0();
        swift_arrayDestroy();
        OUTLINED_FUNCTION_14_5();
        OUTLINED_FUNCTION_146_3();

        (*(v14 + 8))(v1, v120);
      }

      else
      {

        (*(v14 + 8))(v1, v49);
      }

      goto LABEL_25;
    }

    sub_1DC3D80AC(v3, v123);
    v59 = OUTLINED_FUNCTION_234();
    sub_1DC28F414(v59, v60, v61, v62);
    v63 = *(v2 + *(v28 + 48));
    v64 = *(v28 + 64);
    if (v63 == 2)
    {
      (*(v119 + 8))(v2 + v64, v121);
      sub_1DC51119C();
      OUTLINED_FUNCTION_35();
      (*(v65 + 8))(v2);
      sub_1DC28D414();
      OUTLINED_FUNCTION_32_5();
      v66(v116);

      v67 = sub_1DC516F6C();
      sub_1DC517B9C();
      OUTLINED_FUNCTION_306();
      if (OUTLINED_FUNCTION_172())
      {
        OUTLINED_FUNCTION_63();
        v68 = OUTLINED_FUNCTION_111();
        v124 = v68;
        *v12 = 136315138;
        *(v12 + 4) = OUTLINED_FUNCTION_116_3();
        OUTLINED_FUNCTION_16_0();
        _os_log_impl(v69, v70, v71, v72, v73, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v68);
        OUTLINED_FUNCTION_40_0();
        OUTLINED_FUNCTION_31();
      }

      v74 = OUTLINED_FUNCTION_89();
      v75(v74);
    }

    else
    {
      v117 = *(v119 + 8);
      v117(v2 + v64, v121);
      sub_1DC51119C();
      OUTLINED_FUNCTION_35();
      (*(v76 + 8))(v2);
      sub_1DC28D414();
      OUTLINED_FUNCTION_70_7();
      v78 = v12;
      if ((v63 & 1) == 0)
      {
        v77();
        v89 = OUTLINED_FUNCTION_357();
        v90(v89);

        v91 = sub_1DC516F6C();
        v92 = sub_1DC517B9C();

        if (os_log_type_enabled(v91, v92))
        {
          v93 = OUTLINED_FUNCTION_140();
          v124 = OUTLINED_FUNCTION_143();
          *v93 = 136315394;
          *(v93 + 4) = sub_1DC291244(v8, v122, &v124);
          *(v93 + 12) = 2080;
          OUTLINED_FUNCTION_0_49();
          sub_1DC3D8E40(v94, v95, MEMORY[0x1E69D08E0]);
          sub_1DC51823C();
          v96 = OUTLINED_FUNCTION_151();
          (v117)(v96);
          v97 = OUTLINED_FUNCTION_45_0();
          sub_1DC291244(v97, v98, v99);
          OUTLINED_FUNCTION_251_0();
          *(v93 + 14) = v114;
          OUTLINED_FUNCTION_42_1();
          _os_log_impl(v100, v101, v102, v103, v104, 0x16u);
          swift_arrayDestroy();
          OUTLINED_FUNCTION_114_1();
          OUTLINED_FUNCTION_31();

          (*(v14 + 8))(v115, v78);
        }

        else
        {

          v105 = OUTLINED_FUNCTION_187();
          (v117)(v105);
          v106 = OUTLINED_FUNCTION_12_3();
          v108(v106, v107);
        }

        OUTLINED_FUNCTION_12_0();
        (*(v109 + 104))(v118);
        OUTLINED_FUNCTION_327();
        v110 = OUTLINED_FUNCTION_208_0();
        v111(v110);

        OUTLINED_FUNCTION_233();
        (*(v112 + 472))(1);
        v88 = v91;
        goto LABEL_24;
      }

      (v77)(v113);

      v79 = sub_1DC516F6C();
      sub_1DC517B9C();
      OUTLINED_FUNCTION_306();
      if (OUTLINED_FUNCTION_172())
      {
        OUTLINED_FUNCTION_63();
        v80 = OUTLINED_FUNCTION_73_5();
        v124 = v80;
        *v4 = 136315138;
        *(v4 + 4) = OUTLINED_FUNCTION_116_3();
        OUTLINED_FUNCTION_27_16();
        _os_log_impl(v81, v82, v83, v84, v85, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v80);
        OUTLINED_FUNCTION_58();
        OUTLINED_FUNCTION_40_0();
      }

      v86 = OUTLINED_FUNCTION_45_0();
      v87(v86);
    }

    v88 = v123;
LABEL_24:
    sub_1DC28EB30(v88, &qword_1ECC7D320, &qword_1DC5283A0);
    goto LABEL_25;
  }

  sub_1DC28D414();
  OUTLINED_FUNCTION_56_3();
  v33(v18);
  v34 = sub_1DC516F6C();
  v35 = sub_1DC517B9C();
  if (OUTLINED_FUNCTION_14_7(v35))
  {
    v36 = OUTLINED_FUNCTION_35_8();
    OUTLINED_FUNCTION_81_2(v36);
    OUTLINED_FUNCTION_16_0();
    _os_log_impl(v37, v38, v39, v40, v41, 2u);
    OUTLINED_FUNCTION_31();
  }

  v42 = OUTLINED_FUNCTION_30();
  v43(v42);
LABEL_25:
  OUTLINED_FUNCTION_34();
}

void sub_1DC3C4CE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_33();
  a19 = v24;
  a20 = v25;
  v26 = v20;
  v28 = v27;
  v30 = v29;
  v128 = v31;
  sub_1DC516F7C();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_12();
  v33 = sub_1DC51110C();
  v34 = OUTLINED_FUNCTION_2_29(v33, &a18);
  v125 = v35;
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_14(v37);
  sub_1DC51373C();
  OUTLINED_FUNCTION_0();
  v127 = v38;
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_20_0(v39);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D388, &unk_1DC5283E8);
  OUTLINED_FUNCTION_10(v40);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_95();
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7D3D0, &qword_1DC529550);
  OUTLINED_FUNCTION_10(v42);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_24_0();
  v131 = sub_1DC51119C();
  OUTLINED_FUNCTION_0();
  v45 = v44;
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_56_1();
  sub_1DC5162DC();
  OUTLINED_FUNCTION_0();
  v129 = v49;
  v130 = v48;
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_7_21();
  sub_1DC3D5B38(v28);
  v134 = sub_1DC51629C();
  OUTLINED_FUNCTION_109_3();
  v52 = sub_1DC3D8E40(v50, v51, MEMORY[0x1E69D08B8]);
  v53 = OUTLINED_FUNCTION_295(v52);
  sub_1DC2C5FC4(v20 + OBJC_IVAR____TtC13CDMFoundation25AssistantNLRequestHandler_sessionState, v53);
  OUTLINED_FUNCTION_7_1();
  (*(v54 + 104))(v53);
  sub_1DC51589C();
  OUTLINED_FUNCTION_19();
  __swift_storeEnumTagSinglePayload(v55, v56, v57, v58);
  OUTLINED_FUNCTION_183();
  (*(v59 + 872))(v30, v21, v133, v23);
  sub_1DC28EB30(v23, &unk_1ECC7D3D0, &qword_1DC529550);
  __swift_destroy_boxed_opaque_existential_1Tm(v133);
  v60 = v28;
  v121 = sub_1DC515B5C();
  v62 = v61;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D320, &qword_1DC5283A0);
  v64 = *(v63 + 48);
  v65 = *(v63 + 64);
  v122 = *(v45 + 16);
  v66 = OUTLINED_FUNCTION_50_0();
  v67(v66);
  *(v22 + v64) = 2;
  (*(v129 + 16))(v22 + v65, v21, v130);
  v68 = OUTLINED_FUNCTION_21_12();
  __swift_storeEnumTagSinglePayload(v68, v69, v70, v63);
  OUTLINED_FUNCTION_183();
  v72 = (*(v71 + 384))(v133);
  sub_1DC3BE3B4(v22, v121, v62);
  v73 = OUTLINED_FUNCTION_242_0();
  v72(v73);
  sub_1DC51372C();
  v123 = v60;
  sub_1DC515D6C();
  OUTLINED_FUNCTION_279();
  sub_1DC515B5C();
  OUTLINED_FUNCTION_183();
  OUTLINED_FUNCTION_57_5();
  v74 = OUTLINED_FUNCTION_65_1();
  v75(v74);

  sub_1DC51371C();
  OUTLINED_FUNCTION_178_1();
  v76();
  sub_1DC5136EC();
  OUTLINED_FUNCTION_12_0();
  v126 = v21;
  (*(v77 + 104))(v21);
  OUTLINED_FUNCTION_110();
  (*(v78 + 136))();
  OUTLINED_FUNCTION_149_0();

  sub_1DC5136FC();
  sub_1DC51370C();
  v79 = sub_1DC5110DC();
  OUTLINED_FUNCTION_307(v79);
  v81 = v80;
  v82 = *(v125 + 8);
  v82(v65);
  v83 = type metadata accessor for ResultCandidateNlSpeechInput();
  OUTLINED_FUNCTION_57_5();
  sub_1DC51370C();
  sub_1DC5110DC();
  OUTLINED_FUNCTION_238();
  v82(v65);
  v84 = v123;
  v85 = OUTLINED_FUNCTION_12_3();
  v87 = sub_1DC3E3608(v85, v86, v84);
  v134 = v83;
  v135 = &off_1F57FB6B0;
  v133[0] = v87;
  (*(*v26 + 432))(&v132);
  OUTLINED_FUNCTION_192();
  sub_1DC3BE548(v133, v122, v81);
  v88 = OUTLINED_FUNCTION_345();
  v26(v88);
  sub_1DC28D414();
  v89 = OUTLINED_FUNCTION_257();
  v90(v89);
  v91 = v84;
  v92 = sub_1DC516F6C();
  LOBYTE(v83) = sub_1DC517B9C();

  if (os_log_type_enabled(v92, v83))
  {
    OUTLINED_FUNCTION_82();
    OUTLINED_FUNCTION_297();
    *v84 = 136315650;
    v93 = sub_1DC515D6C();
    OUTLINED_FUNCTION_255(v93, v94);
    OUTLINED_FUNCTION_373();
    *(v84 + 1) = v81;
    *(v84 + 6) = 2080;
    v95 = sub_1DC515B5C();
    OUTLINED_FUNCTION_255(v95, v96);
    OUTLINED_FUNCTION_91_2();
    *(v84 + 14) = v91;
    *(v84 + 11) = 2080;
    sub_1DC5138DC();
    OUTLINED_FUNCTION_362();
    OUTLINED_FUNCTION_72_6();
    swift_beginAccess();
    v97 = v127;
    v134 = v127;
    OUTLINED_FUNCTION_17_14();
    v100 = sub_1DC3D8E40(v98, v99, MEMORY[0x1E69D1018]);
    OUTLINED_FUNCTION_295(v100);
    OUTLINED_FUNCTION_90();
    v101();
    sub_1DC5138CC();
    OUTLINED_FUNCTION_238();
    __swift_destroy_boxed_opaque_existential_1Tm(v133);
    v102 = OUTLINED_FUNCTION_12_3();
    sub_1DC291244(v102, v103, v104);
    OUTLINED_FUNCTION_251_0();
    *(v84 + 3) = v91;
    OUTLINED_FUNCTION_42_1();
    _os_log_impl(v105, v106, v107, v108, v109, 0x20u);
    OUTLINED_FUNCTION_342();
    swift_arrayDestroy();
    OUTLINED_FUNCTION_67();
    OUTLINED_FUNCTION_31();

    v110 = OUTLINED_FUNCTION_352();
    v111(v110);
    v112 = OUTLINED_FUNCTION_227_0();
    v113(v112, v131);
    (*(v129 + 8))(v126, v130);
  }

  else
  {

    v114 = OUTLINED_FUNCTION_352();
    v115(v114);
    v116 = OUTLINED_FUNCTION_227_0();
    v117(v116, v131);
    (*(v129 + 8))(v126, v130);
    v97 = v127;
  }

  OUTLINED_FUNCTION_72_6();
  swift_beginAccess();
  OUTLINED_FUNCTION_90();
  v118(v128, v124, v97);
  v119 = OUTLINED_FUNCTION_78_6();
  v120(v119);
  OUTLINED_FUNCTION_34();
}

void sub_1DC3C564C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_33();
  a19 = v24;
  a20 = v25;
  v26 = v20;
  v28 = v27;
  v127 = v29;
  sub_1DC516F7C();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_12();
  v31 = sub_1DC51110C();
  v32 = OUTLINED_FUNCTION_2_29(v31, &a17);
  v124 = v33;
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_14(v35);
  sub_1DC51373C();
  OUTLINED_FUNCTION_0();
  v125 = v37;
  v126 = v36;
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_2_1();
  v130 = v38;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D388, &unk_1DC5283E8);
  OUTLINED_FUNCTION_10(v39);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_54_3();
  sub_1DC515F6C();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_1();
  sub_1DC51119C();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_107_0();
  sub_1DC5162DC();
  OUTLINED_FUNCTION_0();
  v128 = v45;
  v129 = v44;
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_17_0();
  v46 = v28;
  sub_1DC515C5C();
  sub_1DC515C8C();
  v138 = sub_1DC51629C();
  OUTLINED_FUNCTION_109_3();
  v49 = sub_1DC3D8E40(v47, v48, MEMORY[0x1E69D08B8]);
  v50 = OUTLINED_FUNCTION_295(v49);
  sub_1DC2C5FC4(v26 + OBJC_IVAR____TtC13CDMFoundation25AssistantNLRequestHandler_sessionState, v50);
  OUTLINED_FUNCTION_7_1();
  (*(v51 + 104))(v50);
  OUTLINED_FUNCTION_183();
  v52 = OUTLINED_FUNCTION_50_0();
  v53(v52);
  v54 = OUTLINED_FUNCTION_74_0();
  v55(v54);
  __swift_destroy_boxed_opaque_existential_1Tm(v137);
  sub_1DC515B5C();
  v123 = v56;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D320, &qword_1DC5283A0);
  v58 = *(v57 + 48);
  v59 = *(v57 + 64);
  v60 = OUTLINED_FUNCTION_73();
  v61(v60);
  *(v22 + v58) = 2;
  (*(v128 + 16))(v22 + v59, v23, v129);
  OUTLINED_FUNCTION_61();
  __swift_storeEnumTagSinglePayload(v62, v63, v64, v57);
  OUTLINED_FUNCTION_183();
  v66 = (*(v65 + 384))(v137);
  v67 = OUTLINED_FUNCTION_153_0();
  sub_1DC3BE3B4(v67, v68, v123);
  v69 = OUTLINED_FUNCTION_242_0();
  v66(v69);
  sub_1DC51372C();
  v70 = sub_1DC515D6C();
  v72 = v71;
  sub_1DC515B5C();
  OUTLINED_FUNCTION_183();
  OUTLINED_FUNCTION_58_4();
  v73(v70, v72);

  sub_1DC51371C();
  OUTLINED_FUNCTION_178_1();
  v74();
  sub_1DC5136EC();
  OUTLINED_FUNCTION_12_0();
  (*(v75 + 104))(v23);
  OUTLINED_FUNCTION_110();
  (*(v76 + 136))();
  OUTLINED_FUNCTION_10_19();

  sub_1DC5136FC();
  sub_1DC51370C();
  v77 = sub_1DC5110DC();
  v79 = v78;
  v80 = *(v124 + 8);
  v80(v21);
  v81 = type metadata accessor for ResultCandidateNlSpeechInput();
  OUTLINED_FUNCTION_291();
  sub_1DC51370C();
  sub_1DC5110DC();
  v80(v72);
  v82 = OUTLINED_FUNCTION_234();
  v84 = sub_1DC3E3608(v82, v83, v46);
  v138 = v81;
  v139 = &off_1F57FB6B0;
  v137[0] = v84;
  (*(*v26 + 432))(&v131);
  OUTLINED_FUNCTION_192();
  sub_1DC3BE548(v137, v77, v79);
  v85 = OUTLINED_FUNCTION_345();
  v26(v85);
  sub_1DC28D414();
  v86 = OUTLINED_FUNCTION_257();
  v87(v86);
  v88 = v46;
  v89 = sub_1DC516F6C();
  LOBYTE(v77) = sub_1DC517B9C();

  if (os_log_type_enabled(v89, v77))
  {
    OUTLINED_FUNCTION_82();
    OUTLINED_FUNCTION_297();
    v131 = 136315650;
    v90 = sub_1DC515D6C();
    OUTLINED_FUNCTION_255(v90, v91);
    OUTLINED_FUNCTION_373();
    v132 = v72;
    v133 = 2080;
    v92 = sub_1DC515B5C();
    OUTLINED_FUNCTION_255(v92, v93);
    OUTLINED_FUNCTION_91_2();
    v134 = v88;
    v135 = 2080;
    sub_1DC5138DC();
    OUTLINED_FUNCTION_362();
    v94 = v130;
    OUTLINED_FUNCTION_72_6();
    swift_beginAccess();
    v95 = v126;
    v138 = v126;
    OUTLINED_FUNCTION_17_14();
    v98 = sub_1DC3D8E40(v96, v97, MEMORY[0x1E69D1018]);
    OUTLINED_FUNCTION_295(v98);
    OUTLINED_FUNCTION_70_7();
    v99();
    sub_1DC5138CC();
    OUTLINED_FUNCTION_238();
    __swift_destroy_boxed_opaque_existential_1Tm(v137);
    v100 = OUTLINED_FUNCTION_12_3();
    sub_1DC291244(v100, v101, v102);
    OUTLINED_FUNCTION_251_0();
    v136 = v88;
    OUTLINED_FUNCTION_42_1();
    _os_log_impl(v103, v104, v105, v106, v107, 0x20u);
    OUTLINED_FUNCTION_342();
    swift_arrayDestroy();
    OUTLINED_FUNCTION_67();
    OUTLINED_FUNCTION_31();

    v108 = OUTLINED_FUNCTION_352();
    v109(v108);
    v110 = OUTLINED_FUNCTION_339();
    v111(v110);
    v112 = OUTLINED_FUNCTION_338();
    v113(v112);
    v114 = v125;
  }

  else
  {

    v115 = OUTLINED_FUNCTION_352();
    v116(v115);
    v117 = OUTLINED_FUNCTION_339();
    v118(v117);
    v119 = OUTLINED_FUNCTION_338();
    v120(v119);
    v114 = v125;
    v95 = v126;
    v94 = v130;
  }

  OUTLINED_FUNCTION_72_6();
  swift_beginAccess();
  (*(v114 + 16))(v127, v94, v95);
  v121 = OUTLINED_FUNCTION_174();
  v122(v121);
  OUTLINED_FUNCTION_34();
}

void sub_1DC3C5FB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_33();
  a19 = v25;
  a20 = v26;
  v27 = v21;
  v29 = v28;
  v135 = v30;
  v125 = v31;
  v124 = v32;
  v34 = v33;
  OUTLINED_FUNCTION_57_0();
  v35 = sub_1DC516F7C();
  OUTLINED_FUNCTION_0();
  v131 = v36;
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_2_1();
  v130 = v38;
  OUTLINED_FUNCTION_12();
  sub_1DC51110C();
  OUTLINED_FUNCTION_0();
  v128 = v40;
  v129 = v39;
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_15();
  v127 = v41;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_23_1();
  v126 = v43;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_14(v45);
  v46 = sub_1DC51373C();
  v47 = OUTLINED_FUNCTION_2_29(v46, &a14);
  v123 = v48;
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_2_1();
  v50 = v49;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D388, &unk_1DC5283E8);
  OUTLINED_FUNCTION_10(v51);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v52);
  OUTLINED_FUNCTION_95();
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7D3D0, &qword_1DC529550);
  OUTLINED_FUNCTION_10(v53);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v54);
  OUTLINED_FUNCTION_31_3();
  v137 = sub_1DC51119C();
  OUTLINED_FUNCTION_0();
  v133 = v55;
  MEMORY[0x1EEE9AC00](v56);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v57);
  OUTLINED_FUNCTION_42_3();
  v58 = [v34 speechPackage];
  if (!v58)
  {
    __break(1u);
    goto LABEL_10;
  }

  v59 = v58;
  v122 = v35;
  v121 = v20;
  v60 = sub_1DC3C68E4(v58);

  sub_1DC51589C();
  OUTLINED_FUNCTION_19();
  __swift_storeEnumTagSinglePayload(v61, v62, v63, v64);
  OUTLINED_FUNCTION_144_2();
  (*(v65 + 872))(v60, v135, v29, v22);
  sub_1DC28EB30(v22, &unk_1ECC7D3D0, &qword_1DC529550);
  v132 = v34;
  sub_1DC3D7F20(v34);
  v134 = v23;
  if (!v66)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_279();
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D320, &qword_1DC5283A0);
  v68 = *(v67 + 48);
  v69 = *(v67 + 64);
  v70 = *(v133 + 16);
  v70(v24, v134, v137);
  *(v24 + v68) = 2;
  sub_1DC5162DC();
  OUTLINED_FUNCTION_35();
  (*(v71 + 16))(v24 + v69, v135);
  v72 = OUTLINED_FUNCTION_21_12();
  __swift_storeEnumTagSinglePayload(v72, v73, v74, v67);
  OUTLINED_FUNCTION_144_2();
  v76 = (*(v75 + 408))(v140);
  v78 = v77;
  sub_1DC3BE3B4(v24, v22, v59);
  v76(v140, 0);
  sub_1DC51372C();
  v79 = *(v27 + OBJC_IVAR____TtC13CDMFoundation25AssistantNLRequestHandler_requestId);
  v80 = *(v27 + OBJC_IVAR____TtC13CDMFoundation25AssistantNLRequestHandler_requestId + 8);
  sub_1DC3D7F20(v132);
  if (!v81)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_123_0();
  OUTLINED_FUNCTION_308();

  OUTLINED_FUNCTION_76_1();
  v120 = v80;
  v82(v79, v80, v78, v22, v135, v124, v125);

  sub_1DC51371C();
  v83 = OUTLINED_FUNCTION_184(&a15);
  v70(v83, v134, v137);
  sub_1DC5136EC();
  OUTLINED_FUNCTION_12_0();
  (*(v84 + 104))(v135);
  OUTLINED_FUNCTION_110();
  (*(v85 + 136))();

  sub_1DC5136FC();
  sub_1DC51370C();
  v136 = sub_1DC5110DC();
  v87 = v86;
  v89 = v128 + 8;
  v88 = *(v128 + 8);
  v88(v126, v129);
  v90 = type metadata accessor for TurnConstructionCandidateNlSpeechInput();
  sub_1DC51370C();
  sub_1DC5110DC();
  OUTLINED_FUNCTION_238();
  v88(v127, v129);
  v91 = v132;
  v92 = OUTLINED_FUNCTION_12_3();
  v94 = sub_1DC3E3870(v92, v93, v91);
  v141 = v90;
  v142 = &off_1F57FB698;
  v140[0] = v94;
  v95 = (*(*v27 + 432))(&v139);
  sub_1DC3BE548(v140, v136, v87);
  v96 = OUTLINED_FUNCTION_345();
  v95(v96);
  v97 = sub_1DC28D414();
  (*(v131 + 16))(v130, v97, v122);
  v98 = v91;

  v99 = sub_1DC516F6C();
  LOBYTE(v91) = sub_1DC517B9C();

  if (!os_log_type_enabled(v99, v91))
  {

    v117 = OUTLINED_FUNCTION_288();
    v118(v117);
    (*(v133 + 8))(v134, v137);
    OUTLINED_FUNCTION_269();
    v107 = v123;
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_82();
  v138 = OUTLINED_FUNCTION_297();
  *v131 = 136315650;
  v100 = OUTLINED_FUNCTION_308();
  *(v131 + 4) = sub_1DC291244(v100, v120, v101);
  *(v131 + 12) = 2080;
  v89 = sub_1DC3D7F20(v98);
  v103 = v102;

  if (v103)
  {
    sub_1DC291244(v89, v103, &v138);
    OUTLINED_FUNCTION_91_2();
    *(v131 + 14) = v98;
    *(v131 + 22) = 2080;
    sub_1DC5138DC();
    OUTLINED_FUNCTION_362();
    OUTLINED_FUNCTION_72_6();
    swift_beginAccess();
    OUTLINED_FUNCTION_269();
    v141 = v89;
    OUTLINED_FUNCTION_17_14();
    v106 = sub_1DC3D8E40(v104, v105, MEMORY[0x1E69D1018]);
    OUTLINED_FUNCTION_295(v106);
    v107 = v123;
    OUTLINED_FUNCTION_90();
    v108();
    sub_1DC5138CC();
    OUTLINED_FUNCTION_238();
    __swift_destroy_boxed_opaque_existential_1Tm(v140);
    v109 = OUTLINED_FUNCTION_12_3();
    sub_1DC291244(v109, v110, v111);
    OUTLINED_FUNCTION_251_0();
    *(v131 + 24) = v103;
    OUTLINED_FUNCTION_42_1();
    _os_log_impl(v112, v113, v114, v115, v116, 0x20u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_58();
    OUTLINED_FUNCTION_31();

    (*(v131 + 8))(v130, v122);
    (*(v133 + 8))(v134, v137);
LABEL_8:
    OUTLINED_FUNCTION_72_6();
    swift_beginAccess();
    OUTLINED_FUNCTION_90();
    v119(v121, v50, v89);
    (*(v107 + 8))(v50, v89);
    OUTLINED_FUNCTION_34();
    return;
  }

LABEL_12:
  __break(1u);
}

id sub_1DC3C68E4(void *a1)
{
  v5 = MEMORY[0x1E69E7CC0];
  result = [a1 recognition];
  if (result)
  {
    v2 = result;
    AFSpeechRecognition.toNLXAsrHypotheses()();
    v4 = v3;

    sub_1DC3C9A08(v4);
    return v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1DC3C6950(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_33();
  a19 = v22;
  a20 = v23;
  v132 = v20;
  v133 = v24;
  v26 = v25;
  OUTLINED_FUNCTION_43_5(v27);
  v140 = sub_1DC516F7C();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_2_1();
  v138 = v29;
  OUTLINED_FUNCTION_12();
  v30 = sub_1DC51110C();
  v31 = OUTLINED_FUNCTION_2_29(v30, &a14);
  v135 = v32;
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_14(v34);
  v139 = sub_1DC51373C();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_2_1();
  v146 = v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D388, &unk_1DC5283E8);
  OUTLINED_FUNCTION_10(v37);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_14(v39);
  v148 = sub_1DC51119C();
  OUTLINED_FUNCTION_0();
  v141 = v40;
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_62();
  v44 = v43;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BF08, &unk_1DC522330);
  OUTLINED_FUNCTION_10(v45);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_28_13();
  v47 = sub_1DC5157FC();
  OUTLINED_FUNCTION_0();
  v49 = v48;
  MEMORY[0x1EEE9AC00](v50);
  OUTLINED_FUNCTION_8();
  v53 = v51 - v52;
  MEMORY[0x1EEE9AC00](v54);
  OUTLINED_FUNCTION_56_1();
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7D3D0, &qword_1DC529550);
  OUTLINED_FUNCTION_10(v55);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v56);
  OUTLINED_FUNCTION_25();
  v144 = v57;
  OUTLINED_FUNCTION_12();
  v58 = sub_1DC5162DC();
  OUTLINED_FUNCTION_0();
  v60 = v59;
  MEMORY[0x1EEE9AC00](v61);
  OUTLINED_FUNCTION_2_1();
  v143 = v62;
  sub_1DC515A6C();
  v137 = sub_1DC515B2C();
  v142 = v63;
  sub_1DC515A5C();
  sub_1DC515B3C();
  sub_1DC3BD06C();
  v130 = v64;

  v147 = v26;
  sub_1DC515B1C();
  OUTLINED_FUNCTION_39(v21, 1, v47);
  v145 = v60;
  if (v65)
  {
    sub_1DC28EB30(v21, &qword_1ECC7BF08, &unk_1DC522330);
  }

  else
  {
    v66 = *(v49 + 32);
    v67 = OUTLINED_FUNCTION_42_2();
    v66(v67);
    v68 = OUTLINED_FUNCTION_55();
    v66(v68);
    v69 = (*(v49 + 88))(v53, v47);
    v70 = *MEMORY[0x1E69D0320];
    v71 = OUTLINED_FUNCTION_328();
    v72(v71, v47);
    if (v69 == v70)
    {
      v73 = *MEMORY[0x1E69D0350];
      sub_1DC51589C();
      OUTLINED_FUNCTION_2();
      v75 = v144;
      (*(v74 + 104))(v144, v73, v69);
      OUTLINED_FUNCTION_61();
      __swift_storeEnumTagSinglePayload(v76, v77, v78, v69);
      goto LABEL_7;
    }
  }

  v75 = v144;
  sub_1DC515B0C();
LABEL_7:
  OUTLINED_FUNCTION_12_0();
  (*(v79 + 872))(v130, v143, v133, v75);

  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D320, &qword_1DC5283A0);
  v81 = v58;
  v82 = *(v80 + 48);
  v83 = *(v80 + 64);
  v134 = *(v141 + 16);
  v84 = OUTLINED_FUNCTION_51();
  v85(v84);
  *(v131 + v82) = 2;
  (*(v145 + 16))(v131 + v83, v143, v81);
  OUTLINED_FUNCTION_61();
  __swift_storeEnumTagSinglePayload(v86, v87, v88, v80);
  OUTLINED_FUNCTION_38_1();
  v90 = (v89 + 408);
  v91 = *(v89 + 408);

  v92 = v44;
  v91(v151);
  OUTLINED_FUNCTION_192();
  sub_1DC3BE3B4(v131, v137, v142);
  v93 = OUTLINED_FUNCTION_242_0();
  v90(v93);
  sub_1DC51372C();
  sub_1DC515D6C();
  OUTLINED_FUNCTION_144_2();
  OUTLINED_FUNCTION_106();
  v94();

  sub_1DC51371C();
  v95 = OUTLINED_FUNCTION_46_6();
  v134(v95);
  sub_1DC5136EC();
  OUTLINED_FUNCTION_12_0();
  (*(v96 + 104))(v143);
  OUTLINED_FUNCTION_110();
  v98 = (*(v97 + 136))();

  sub_1DC5136FC();
  sub_1DC51370C();
  sub_1DC5110DC();
  OUTLINED_FUNCTION_349();
  v99 = *(v135 + 8);
  v99(v91);
  v100 = type metadata accessor for TextBasedTRPCandidateNLInput();
  OUTLINED_FUNCTION_291();
  sub_1DC51370C();
  sub_1DC5110DC();
  OUTLINED_FUNCTION_163();
  v101 = OUTLINED_FUNCTION_89();
  v99(v101);
  v102 = v147;
  v103 = OUTLINED_FUNCTION_151();
  v106 = sub_1DC3E3870(v103, v104, v105);
  v152 = v100;
  v153 = &off_1F57FB6C8;
  v151[0] = v106;
  v107 = (*(*v132 + 432))(&v150);
  sub_1DC3BE548(v151, v98, v44);
  v108 = OUTLINED_FUNCTION_345();
  v107(v108);
  sub_1DC28D414();
  OUTLINED_FUNCTION_213();
  (*(v109 + 16))(v138);

  v110 = sub_1DC516F6C();
  v111 = sub_1DC517B9C();

  if (OUTLINED_FUNCTION_301())
  {
    v112 = OUTLINED_FUNCTION_82();
    v149 = swift_slowAlloc();
    *v112 = 136315650;
    *(v112 + 4) = sub_1DC291244(*(v132 + OBJC_IVAR____TtC13CDMFoundation25AssistantNLRequestHandler_requestId), *(v132 + OBJC_IVAR____TtC13CDMFoundation25AssistantNLRequestHandler_requestId + 8), &v149);
    v113 = v44;
    *(v112 + 12) = 2080;
    sub_1DC291244(v137, v142, &v149);
    OUTLINED_FUNCTION_251_0();
    *(v112 + 14) = v138;
    *(v112 + 22) = 2080;
    sub_1DC5138DC();
    OUTLINED_FUNCTION_362();
    v114 = v146;
    OUTLINED_FUNCTION_72_6();
    swift_beginAccess();
    v152 = v139;
    OUTLINED_FUNCTION_17_14();
    v117 = sub_1DC3D8E40(v115, v116, MEMORY[0x1E69D1018]);
    OUTLINED_FUNCTION_295(v117);
    OUTLINED_FUNCTION_19_1();
    v118();
    sub_1DC5138CC();
    OUTLINED_FUNCTION_137();
    __swift_destroy_boxed_opaque_existential_1Tm(v151);
    v119 = OUTLINED_FUNCTION_48_0();
    v122 = sub_1DC291244(v119, v120, v121);

    *(v112 + 24) = v122;
    _os_log_impl(&dword_1DC287000, v110, v111, "Created nluRequest for requestId=%s tcuId=%s nluRequest = %s", v112, 0x20u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_40_0();
    OUTLINED_FUNCTION_67();

    (*(v92 + 8))(v138, v140);
    (*(v141 + 8))(v113, v148);
    sub_1DC28EB30(v144, &unk_1ECC7D3D0, &qword_1DC529550);
    OUTLINED_FUNCTION_227_0();
    OUTLINED_FUNCTION_319();
    v123();
  }

  else
  {

    v124 = OUTLINED_FUNCTION_288();
    v125(v124);
    (*(v141 + 8))(v44, v148);
    sub_1DC28EB30(v144, &unk_1ECC7D3D0, &qword_1DC529550);
    OUTLINED_FUNCTION_227_0();
    OUTLINED_FUNCTION_319();
    v126();
    v114 = v146;
  }

  OUTLINED_FUNCTION_72_6();
  swift_beginAccess();
  OUTLINED_FUNCTION_19_1();
  v127(v136, v114, v139);
  v128 = OUTLINED_FUNCTION_147_0();
  v129(v128);
  OUTLINED_FUNCTION_34();
}

void sub_1DC3C7504()
{
  OUTLINED_FUNCTION_33();
  v70 = v0;
  v3 = v2;
  v62 = v4;
  v6 = v5;
  sub_1DC510B6C();
  OUTLINED_FUNCTION_0();
  v65 = v8;
  v66 = v7;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_2_1();
  v63 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7D350, &unk_1DC52EF90);
  OUTLINED_FUNCTION_10(v10);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_25();
  v67 = v12;
  OUTLINED_FUNCTION_12();
  v64 = sub_1DC510F3C();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_12();
  sub_1DC5162DC();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_9_24();
  sub_1DC516F7C();
  OUTLINED_FUNCTION_0();
  v68 = v15;
  v69 = v16;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_15();
  v61 = v17;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_55_2();
  sub_1DC5110FC();

  MEMORY[0x1E1296160](58, 0xE100000000000000);

  v19 = OUTLINED_FUNCTION_42_2();
  MEMORY[0x1E1296160](v19);

  sub_1DC5110EC();
  OUTLINED_FUNCTION_299();
  sub_1DC51108C();
  if (v3)
  {

    sub_1DC5110BC();
  }

  v20 = v69;
  v21 = v68;
  if (*(v0 + OBJC_IVAR____TtC13CDMFoundation25AssistantNLRequestHandler_isMUXEnabled) == 1)
  {
    sub_1DC5162BC();
    sub_1DC5110CC();
    sub_1DC28D414();
    OUTLINED_FUNCTION_56_3();
    v59 = v23;
    v60 = v22;
    (v23)(v1);
    v24 = OUTLINED_FUNCTION_55();
    v25(v24);
    v26 = sub_1DC516F6C();
    v27 = sub_1DC517B9C();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = OUTLINED_FUNCTION_63();
      v71 = OUTLINED_FUNCTION_82();
      *v28 = 136315138;
      OUTLINED_FUNCTION_0_49();
      sub_1DC3D8E40(v29, v30, MEMORY[0x1E69D08E0]);
      v31 = sub_1DC51823C();
      v32 = v6;
      v34 = v33;
      v35 = OUTLINED_FUNCTION_153_0();
      v36(v35);
      v37 = OUTLINED_FUNCTION_98_5();
      sub_1DC291244(v37, v34, v38);
      OUTLINED_FUNCTION_162();
      v6 = v32;
      v20 = v69;

      *(v28 + 4) = v31;
      _os_log_impl(&dword_1DC287000, v26, v27, "Sending userId: %s to NLX", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v71);
      OUTLINED_FUNCTION_14_5();
      v21 = v68;
      OUTLINED_FUNCTION_66();
    }

    else
    {

      v39 = OUTLINED_FUNCTION_153_0();
      v40(v39);
    }

    v41 = *(v20 + 8);
    v42 = OUTLINED_FUNCTION_121_0();
    v41(v42);
    v43 = *(v70 + OBJC_IVAR____TtC13CDMFoundation25AssistantNLRequestHandler_userIdDict);
    if (v43)
    {
      v44 = sub_1DC3BF940(v62, v43);
      if (v44)
      {
        v45 = sub_1DC3D7F84(v44, &selRef_loggableMultiUserSharedUserId);
        if (v46)
        {
          v47 = v45;

          OUTLINED_FUNCTION_30();
          sub_1DC51109C();
          v59(v61, v60, v21);

          v48 = sub_1DC516F6C();
          v49 = sub_1DC517B9C();

          if (OUTLINED_FUNCTION_302())
          {
            OUTLINED_FUNCTION_63();
            v72 = OUTLINED_FUNCTION_111();
            *v6 = 136315138;
            v50 = OUTLINED_FUNCTION_30();
            sub_1DC291244(v50, v51, v52);
            OUTLINED_FUNCTION_1_31();

            *(v6 + 4) = v47;
            _os_log_impl(&dword_1DC287000, v48, v49, "Sending loggableSharedUserId: %s to NLX", v6, 0xCu);
            __swift_destroy_boxed_opaque_existential_1Tm(v72);
            OUTLINED_FUNCTION_54_12();
            OUTLINED_FUNCTION_66();

            v53 = OUTLINED_FUNCTION_54_4();
          }

          else
          {

            v53 = OUTLINED_FUNCTION_45_0();
          }

          v41(v53);
        }
      }
    }
  }

  sub_1DC510B5C();
  sub_1DC5138EC();
  (*(v65 + 8))(v63, v66);
  v54 = OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_39(v54, v55, v64);
  if (v56)
  {
    sub_1DC510F2C();
    OUTLINED_FUNCTION_30_8(v67);
    if (!v56)
    {
      sub_1DC28EB30(v67, &unk_1ECC7D350, &unk_1DC52EF90);
    }
  }

  else
  {
    v57 = OUTLINED_FUNCTION_31_0();
    v58(v57);
  }

  sub_1DC5110AC();
  OUTLINED_FUNCTION_34();
}

void sub_1DC3C7B24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7D3E0, &qword_1DC528418);
  OUTLINED_FUNCTION_10(v5);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_25();
  v60 = v7;
  OUTLINED_FUNCTION_12();
  v59 = sub_1DC511AAC();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_15();
  v57 = v9;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_62();
  v56 = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7D3D0, &qword_1DC529550);
  OUTLINED_FUNCTION_10(v12);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_25();
  v62 = v14;
  OUTLINED_FUNCTION_12();
  v64 = sub_1DC51589C();
  OUTLINED_FUNCTION_0();
  v58 = v15;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_2_1();
  v61 = v17;
  OUTLINED_FUNCTION_12();
  sub_1DC510AFC();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_56_2();
  v19 = sub_1DC51107C();
  OUTLINED_FUNCTION_0();
  v21 = v20;
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_7_21();
  v23 = sub_1DC5112EC();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_123();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_56_1();
  OUTLINED_FUNCTION_38_1();
  (*(v26 + 888))(a2, a3);
  sub_1DC51118C();

  sub_1DC51111C();
  sub_1DC51129C();
  sub_1DC51102C();
  (*(v21 + 8))(v4, v19);
  sub_1DC51115C();
  OUTLINED_FUNCTION_70_7();
  v27 = OUTLINED_FUNCTION_16();
  v28(v27);
  sub_1DC51113C();
  sub_1DC510AEC();
  sub_1DC510AAC();
  v29 = OUTLINED_FUNCTION_357();
  v30(v29);
  v31 = OUTLINED_FUNCTION_268(1000.0);
  if (!(v32 ^ v33 | v45))
  {
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (v31 <= -1.0)
  {
    goto LABEL_12;
  }

  if (v31 >= 1.84467441e19)
  {
LABEL_13:
    __break(1u);
    return;
  }

  sub_1DC51114C();
  v34 = v62;
  sub_1DC28F414(a4, v62, &unk_1ECC7D3D0, &qword_1DC529550);
  v35 = OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_39(v35, v36, v64);
  if (v45)
  {
    v37 = OUTLINED_FUNCTION_210_1();
    v38(v37, v23);
    v39 = &unk_1ECC7D3D0;
    v40 = &qword_1DC529550;
  }

  else
  {
    OUTLINED_FUNCTION_278();
    v41 = OUTLINED_FUNCTION_31_0();
    v42(v41);
    v34 = v60;
    sub_1DC3F495C();
    v43 = OUTLINED_FUNCTION_44();
    OUTLINED_FUNCTION_39(v43, v44, v59);
    if (!v45)
    {
      OUTLINED_FUNCTION_278();
      OUTLINED_FUNCTION_112_1();
      v50();
      OUTLINED_FUNCTION_44_8();
      v51(v57, v56, v59);
      sub_1DC51116C();
      v52 = OUTLINED_FUNCTION_314();
      v53(v52);
      (*(v58 + 8))(v61, v64);
      v54 = OUTLINED_FUNCTION_210_1();
      v55(v54, v23);
      return;
    }

    v46 = OUTLINED_FUNCTION_234();
    v47(v46);
    v48 = OUTLINED_FUNCTION_210_1();
    v49(v48, v23);
    v39 = &unk_1ECC7D3E0;
    v40 = &qword_1DC528418;
  }

  sub_1DC28EB30(v34, v39, v40);
}

void sub_1DC3C80A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_57_0();
  sub_1DC510AFC();
  OUTLINED_FUNCTION_0();
  v24 = v6;
  v25 = v5;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_17_0();
  sub_1DC51107C();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_129();
  v8 = sub_1DC5112EC();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_53_1();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_38_3();
  OUTLINED_FUNCTION_38_1();
  (*(v11 + 888))(a2, a3);
  sub_1DC51118C();
  sub_1DC51129C();
  sub_1DC51102C();
  v12 = OUTLINED_FUNCTION_176();
  v13(v12);
  OUTLINED_FUNCTION_235_0();
  sub_1DC51115C();
  v14 = OUTLINED_FUNCTION_162_3();
  v15(v14, v4, v8);
  sub_1DC51113C();
  sub_1DC510AEC();
  sub_1DC510AAC();
  (*(v24 + 8))(v3, v25);
  v16 = OUTLINED_FUNCTION_268(1000.0);
  if (!(v18 ^ v19 | v17))
  {
    __break(1u);
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v16 <= -1.0)
  {
    goto LABEL_6;
  }

  if (v16 < 1.84467441e19)
  {
    sub_1DC51114C();
    v20 = OUTLINED_FUNCTION_35_0();
    v21(v20);
    return;
  }

LABEL_7:
  __break(1u);
}

void sub_1DC3C8348(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_33();
  a19 = v24;
  a20 = v25;
  v261 = v26;
  v28 = v27;
  OUTLINED_FUNCTION_43_5(v29);
  v250 = *v20;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BFE0, &unk_1DC5253A0);
  OUTLINED_FUNCTION_10(v30);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_14(v32);
  v33 = sub_1DC5167EC();
  v34 = OUTLINED_FUNCTION_2_29(v33, &v262);
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_20_0(v36);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7D3A0, &unk_1DC522560);
  v38 = OUTLINED_FUNCTION_10(v37);
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_14(v40);
  v41 = sub_1DC51190C();
  v42 = OUTLINED_FUNCTION_2_29(v41, &a18);
  v240 = v43;
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_98_1();
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_14(v48);
  v254 = sub_1DC51620C();
  OUTLINED_FUNCTION_0();
  v260 = v49;
  MEMORY[0x1EEE9AC00](v50);
  OUTLINED_FUNCTION_2_1();
  v253 = v51;
  OUTLINED_FUNCTION_12();
  v52 = sub_1DC51107C();
  v53 = OUTLINED_FUNCTION_2_29(v52, &a15);
  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v54);
  OUTLINED_FUNCTION_94_1();
  v55 = sub_1DC5162DC();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v56);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v57);
  OUTLINED_FUNCTION_38_3();
  v58 = sub_1DC516F7C();
  OUTLINED_FUNCTION_0();
  v60 = v59;
  MEMORY[0x1EEE9AC00](v61);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v62);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v63);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v64);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v65);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v66);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v67);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v68);
  OUTLINED_FUNCTION_56_1();
  sub_1DC28D414();
  OUTLINED_FUNCTION_4_2();
  v255 = v58;
  v256 = v69;
  v257 = v71;
  v258 = v70;
  v71(v22);
  OUTLINED_FUNCTION_19_1();
  v252 = v28;
  v242 = v72;
  (v72)(v23, v28, v55);
  v73 = sub_1DC516F6C();
  v74 = sub_1DC517B9C();
  v251 = v21;
  v247 = v60;
  if (os_log_type_enabled(v73, v74))
  {
    v75 = OUTLINED_FUNCTION_63();
    v76 = OUTLINED_FUNCTION_82();
    v263[0] = v76;
    *v75 = 136315138;
    OUTLINED_FUNCTION_0_49();
    sub_1DC3D8E40(v77, v78, MEMORY[0x1E69D08E0]);
    sub_1DC51823C();
    OUTLINED_FUNCTION_193();
    v79 = OUTLINED_FUNCTION_77_1();
    v243 = v80;
    v80(v79);
    v81 = OUTLINED_FUNCTION_74();
    v84 = sub_1DC291244(v81, v82, v83);
    OUTLINED_FUNCTION_232();

    *(v75 + 4) = v84;
    _os_log_impl(&dword_1DC287000, v73, v74, "Creating NLXTurnContext for userId:%s", v75, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v76);
    OUTLINED_FUNCTION_14_5();
    OUTLINED_FUNCTION_114_1();
  }

  else
  {

    v85 = OUTLINED_FUNCTION_77_1();
    v243 = v86;
    v86(v85);
  }

  v87 = v255;
  v259 = *(v247 + 8);
  (v259)(v22, v255);
  sub_1DC51106C();
  v88 = v252;
  sub_1DC34A028();
  v90 = v89;
  OUTLINED_FUNCTION_132_1();
  v91();

  v92 = sub_1DC516F6C();
  v93 = sub_1DC517B9C();

  if (os_log_type_enabled(v92, v93))
  {
    OUTLINED_FUNCTION_63();
    v94 = OUTLINED_FUNCTION_115_4();
    v263[0] = v94;
    *v255 = 136315138;
    v95 = sub_1DC5119DC();
    v96 = MEMORY[0x1E12962D0](v90, v95);
    v98 = sub_1DC291244(v96, v97, v263);
    v88 = v252;

    *(v87 + 1) = v98;
    OUTLINED_FUNCTION_128_0(&dword_1DC287000, v99, v93, "From SessionState systemDialogActs: %s");
    __swift_destroy_boxed_opaque_existential_1Tm(v94);
    OUTLINED_FUNCTION_232();
    OUTLINED_FUNCTION_66();
    v87 = v255;
    OUTLINED_FUNCTION_66();
  }

  v100 = OUTLINED_FUNCTION_187();
  v259(v100);
  sub_1DC51105C();
  OUTLINED_FUNCTION_20_14(v261);
  v101 = *MEMORY[0x1E69D07B8];
  v249 = v260[13];
  v250 = v260 + 13;
  v249(v253, v101, v254);
  OUTLINED_FUNCTION_51();
  OUTLINED_FUNCTION_201_0();
  sub_1DC5162AC();
  v102 = OUTLINED_FUNCTION_146_1();
  ++v260;
  v248 = v103;
  v103(v102);
  if (v264)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CEA8, &qword_1DC52A880);
    OUTLINED_FUNCTION_252();
    if (swift_dynamicCast())
    {
      v104 = v262;
    }

    else
    {
      v104 = 0;
    }
  }

  else
  {
    sub_1DC28EB30(v263, &qword_1ECC7D3F0, &qword_1DC5238B0);
    v104 = 0;
  }

  OUTLINED_FUNCTION_132_1();
  v105();

  v106 = sub_1DC516F6C();
  v107 = sub_1DC517B9C();

  if (os_log_type_enabled(v106, v107))
  {
    OUTLINED_FUNCTION_63();
    v108 = OUTLINED_FUNCTION_115_4();
    v262 = v104;
    v263[0] = v108;
    *v87 = 136315138;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7D400, &unk_1DC528420);
    v109 = sub_1DC51777C();
    v111 = sub_1DC291244(v109, v110, v263);
    OUTLINED_FUNCTION_232();

    *(v87 + 1) = v111;
    v88 = v252;
    OUTLINED_FUNCTION_128_0(&dword_1DC287000, v112, v107, "From SessionState activeTasks: %s");
    __swift_destroy_boxed_opaque_existential_1Tm(v108);
    OUTLINED_FUNCTION_14_5();
    v87 = v255;
    OUTLINED_FUNCTION_66();
  }

  v113 = OUTLINED_FUNCTION_34_0();
  v259(v113);
  sub_1DC51100C();
  OUTLINED_FUNCTION_20_14(v261);
  v114 = v254;
  v249(v253, *MEMORY[0x1E69D07C8], v254);
  OUTLINED_FUNCTION_51();
  OUTLINED_FUNCTION_201_0();
  sub_1DC5162AC();
  v115 = OUTLINED_FUNCTION_146_1();
  v248(v115);
  if (v264)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CEA8, &qword_1DC52A880);
    OUTLINED_FUNCTION_252();
    if (swift_dynamicCast())
    {
      v116 = v262;
    }

    else
    {
      v116 = 0;
    }
  }

  else
  {
    sub_1DC28EB30(v263, &qword_1ECC7D3F0, &qword_1DC5238B0);
    v116 = 0;
  }

  OUTLINED_FUNCTION_132_1();
  v117();

  v118 = sub_1DC516F6C();
  v119 = sub_1DC517B9C();

  if (os_log_type_enabled(v118, v119))
  {
    OUTLINED_FUNCTION_63();
    v120 = OUTLINED_FUNCTION_117();
    v262 = v116;
    v263[0] = v120;
    *v254 = 136315138;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7D400, &unk_1DC528420);
    v121 = sub_1DC51777C();
    v123 = sub_1DC291244(v121, v122, v263);
    OUTLINED_FUNCTION_232();

    *(v114 + 1) = v123;
    v88 = v252;
    OUTLINED_FUNCTION_28_8();
    _os_log_impl(v124, v125, v126, v127, v114, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v120);
    v87 = v255;
    OUTLINED_FUNCTION_66();
    OUTLINED_FUNCTION_58();
  }

  v128 = OUTLINED_FUNCTION_46_0();
  v259(v128);
  sub_1DC51101C();
  OUTLINED_FUNCTION_184(&a17);
  OUTLINED_FUNCTION_132_1();
  v129();
  v130 = OUTLINED_FUNCTION_51();
  v242(v130);
  v131 = sub_1DC516F6C();
  v132 = sub_1DC517B9C();
  if (OUTLINED_FUNCTION_197_0(v132))
  {
    OUTLINED_FUNCTION_63();
    v263[0] = OUTLINED_FUNCTION_111();
    *v119 = 136315138;
    OUTLINED_FUNCTION_0_49();
    sub_1DC3D8E40(v133, v134, MEMORY[0x1E69D08E0]);
    sub_1DC51823C();
    OUTLINED_FUNCTION_62_7();
    v135 = OUTLINED_FUNCTION_234();
    v243(v135);
    v136 = OUTLINED_FUNCTION_212();
    v139 = sub_1DC291244(v136, v137, v138);
    OUTLINED_FUNCTION_232();

    *(v119 + 4) = v139;
    OUTLINED_FUNCTION_42_1();
    _os_log_impl(v140, v141, v142, v143, v144, 0xCu);
    OUTLINED_FUNCTION_53_12();
    OUTLINED_FUNCTION_31();

    v145 = v246;
    v146 = v87;
    v88 = v252;
  }

  else
  {

    OUTLINED_FUNCTION_62_7();
    v147 = OUTLINED_FUNCTION_176();
    v243(v147);
    v145 = OUTLINED_FUNCTION_151();
  }

  (v259)(v145, v146);
  OUTLINED_FUNCTION_325();
  OUTLINED_FUNCTION_205_1();
  OUTLINED_FUNCTION_12_0();
  (*(v148 + 896))(v88);
  sub_1DC51103C();
  sub_1DC5112DC();
  v149 = OUTLINED_FUNCTION_46_6();
  v150(v149);
  sub_1DC5112AC();
  OUTLINED_FUNCTION_20_14(v261);
  v249(v253, *MEMORY[0x1E69D07E8], v254);
  OUTLINED_FUNCTION_51();
  OUTLINED_FUNCTION_201_0();
  sub_1DC5162AC();
  v151 = OUTLINED_FUNCTION_121_0();
  v248(v151);
  if (v264)
  {
    OUTLINED_FUNCTION_184(&a14);
    v152 = swift_dynamicCast();
    __swift_storeEnumTagSinglePayload(v245, v152 ^ 1u, 1, v132);
    v153 = OUTLINED_FUNCTION_34_11();
    OUTLINED_FUNCTION_39(v153, v154, v132);
    if (!v155)
    {
      v156 = OUTLINED_FUNCTION_43();
      v157(v156);
      v158 = OUTLINED_FUNCTION_184(&v259);
      v257(v158, v256, v255);
      v159 = *(v240 + 16);
      v160 = OUTLINED_FUNCTION_147_0();
      v159(v160);
      v161 = sub_1DC516F6C();
      v162 = sub_1DC517B9C();
      if (OUTLINED_FUNCTION_197_0(v162))
      {
        v163 = OUTLINED_FUNCTION_63();
        v261 = OUTLINED_FUNCTION_82();
        v263[0] = v261;
        *v163 = 136315138;
        v164 = OUTLINED_FUNCTION_212();
        v159(v164);
        OUTLINED_FUNCTION_50_0();
        sub_1DC51777C();
        OUTLINED_FUNCTION_194();
        v260 = v159;
        v165 = *(v240 + 8);
        v165();
        v166 = OUTLINED_FUNCTION_42_2();
        sub_1DC291244(v166, v167, v168);
        OUTLINED_FUNCTION_283();
        OUTLINED_FUNCTION_205_1();

        *(v163 + 4) = v132;
        OUTLINED_FUNCTION_325();
        v169 = v162;
        v170 = v260;
        _os_log_impl(&dword_1DC287000, v161, v169, "From SessionState legacyNLContext: %s", v163, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v261);
        OUTLINED_FUNCTION_232();
        OUTLINED_FUNCTION_66();
        OUTLINED_FUNCTION_42();

        OUTLINED_FUNCTION_204_1();
        v171 = OUTLINED_FUNCTION_246_0();
        v172(v171);
      }

      else
      {

        v170 = v159;
        v165 = *(v240 + 8);
        v208 = OUTLINED_FUNCTION_50_0();
        (v165)(v208);
        v209 = OUTLINED_FUNCTION_184_1();
        (v259)(v209, v255);
      }

      OUTLINED_FUNCTION_159_0();
      v170();
      sub_1DC5112CC();
      (v165)(v161, v132);
      goto LABEL_47;
    }
  }

  else
  {
    sub_1DC28EB30(v263, &qword_1ECC7D3F0, &qword_1DC5238B0);
    OUTLINED_FUNCTION_184(&a14);
    OUTLINED_FUNCTION_19();
    __swift_storeEnumTagSinglePayload(v173, v174, v175, v132);
  }

  sub_1DC28EB30(v245, &unk_1ECC7D3A0, &unk_1DC522560);
  OUTLINED_FUNCTION_20_14(v261);
  v176 = v253;
  v249(v253, *MEMORY[0x1E69D07D0], v254);
  OUTLINED_FUNCTION_75();
  OUTLINED_FUNCTION_201_0();
  sub_1DC5162AC();
  v177 = OUTLINED_FUNCTION_45_0();
  v248(v177);
  if (!v264)
  {
    v183 = OUTLINED_FUNCTION_62_10();
    v184(v183);
    sub_1DC28EB30(v263, &qword_1ECC7D3F0, &qword_1DC5238B0);
    OUTLINED_FUNCTION_83(&v261);
    OUTLINED_FUNCTION_19();
    __swift_storeEnumTagSinglePayload(v185, v186, v187, v241);
    goto LABEL_33;
  }

  OUTLINED_FUNCTION_83(&v261);
  v178 = swift_dynamicCast();
  __swift_storeEnumTagSinglePayload(v244, v178 ^ 1u, 1, v241);
  v179 = OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_39(v179, v180, v241);
  if (v155)
  {
    v181 = OUTLINED_FUNCTION_62_10();
    v182(v181);
LABEL_33:
    v188 = &qword_1ECC7BFE0;
    v189 = &unk_1DC5253A0;
    v190 = v244;
    goto LABEL_34;
  }

  OUTLINED_FUNCTION_196_1();
  (*(v191 + 32))();
  v192 = OUTLINED_FUNCTION_184(&v254);
  v257(v192, v256, v255);
  OUTLINED_FUNCTION_90();
  v193 = OUTLINED_FUNCTION_238_0();
  v194(v193);
  v195 = sub_1DC516F6C();
  sub_1DC517B9C();
  OUTLINED_FUNCTION_116();
  if (os_log_type_enabled(v195, v196))
  {
    OUTLINED_FUNCTION_63();
    v132 = OUTLINED_FUNCTION_111();
    v263[0] = v132;
    *v237 = 136315138;
    sub_1DC3D8E40(&qword_1ECC7D3F8, MEMORY[0x1E69CE670], MEMORY[0x1E69CE690]);
    sub_1DC51823C();
    OUTLINED_FUNCTION_163();
    v198 = *(v176 + 8);
    v198();
    v199 = OUTLINED_FUNCTION_151();
    sub_1DC291244(v199, v200, v201);
    OUTLINED_FUNCTION_155_0();
    OUTLINED_FUNCTION_205_1();

    *(v237 + 4) = v237;
    OUTLINED_FUNCTION_42_1();
    _os_log_impl(v202, v203, v204, v205, v206, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v132);
    OUTLINED_FUNCTION_325();
    OUTLINED_FUNCTION_66();
    OUTLINED_FUNCTION_31();

    OUTLINED_FUNCTION_204_1();
    v207 = v239;
  }

  else
  {

    v198 = *(v253 + 8);
    v210 = OUTLINED_FUNCTION_358();
    (v198)(v210);
    v207 = OUTLINED_FUNCTION_184_1();
  }

  (v259)(v207, v255);
  OUTLINED_FUNCTION_58_4();
  sub_1DC5167CC();
  v211 = OUTLINED_FUNCTION_100();
  OUTLINED_FUNCTION_39(v211, v212, v132);
  if (!v155)
  {
    v261 = v198;
    OUTLINED_FUNCTION_76_1();
    v216 = OUTLINED_FUNCTION_63_0();
    v217(v216);
    v218 = OUTLINED_FUNCTION_184(&v250);
    v257(v218, v256, v255);
    v219 = *(v241 + 16);
    (v219)(v236, v238, v132);
    v220 = sub_1DC516F6C();
    v221 = sub_1DC517B9C();
    if (OUTLINED_FUNCTION_197_0(v221))
    {
      v223 = OUTLINED_FUNCTION_63();
      v260 = OUTLINED_FUNCTION_82();
      v263[0] = v260;
      *v223 = 136315138;
      OUTLINED_FUNCTION_181_0();
      (v219)(v236, v236, v132);
      OUTLINED_FUNCTION_174();
      sub_1DC51777C();
      OUTLINED_FUNCTION_194();
      v258 = v219;
      v224 = *(v241 + 8);
      v224();
      v225 = OUTLINED_FUNCTION_42_2();
      sub_1DC291244(v225, v226, v227);
      OUTLINED_FUNCTION_283();
      OUTLINED_FUNCTION_205_1();

      *(v223 + 4) = v132;
      OUTLINED_FUNCTION_325();
      _os_log_impl(&dword_1DC287000, v220, v221, "From PommesContext legacyNLContext: %s", v223, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v260);
      OUTLINED_FUNCTION_66();
      v228 = v258;
      OUTLINED_FUNCTION_66();

      OUTLINED_FUNCTION_204_1();
      v229 = OUTLINED_FUNCTION_246_0();
      v230(v229);
    }

    else
    {

      v228 = v219;
      v224 = *(v241 + 8);
      v231 = OUTLINED_FUNCTION_174();
      (v224)(v231);
      OUTLINED_FUNCTION_204_1();
      v232 = OUTLINED_FUNCTION_246_0();
      v233(v232);
      OUTLINED_FUNCTION_181_0();
    }

    OUTLINED_FUNCTION_159_0();
    v228();
    sub_1DC5112CC();
    (v224)(v220, v132);
    OUTLINED_FUNCTION_62_7();
    v261();
LABEL_47:
    v234 = OUTLINED_FUNCTION_62_10();
    v235(v234);
    goto LABEL_48;
  }

  v213 = OUTLINED_FUNCTION_121_0();
  (v198)(v213);
  v214 = OUTLINED_FUNCTION_62_10();
  v215(v214);
  v188 = &unk_1ECC7D3A0;
  v189 = &unk_1DC522560;
  v190 = v237;
LABEL_34:
  sub_1DC28EB30(v190, v188, v189);
LABEL_48:
  OUTLINED_FUNCTION_34();
}

uint64_t sub_1DC3C98D8()
{
  OUTLINED_FUNCTION_12_0();
  (*(v0 + 344))(v5);
  OUTLINED_FUNCTION_121_1(v5, v5[3]);
  v1 = OUTLINED_FUNCTION_63_0();
  v3 = v2(v1);
  __swift_destroy_boxed_opaque_existential_1Tm(v5);
  return v3;
}

uint64_t sub_1DC3C9970()
{
  v0 = OUTLINED_FUNCTION_63_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_10(v2);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_54_3();
  sub_1DC51713C();
  OUTLINED_FUNCTION_292();
  OUTLINED_FUNCTION_19();
  __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  sub_1DC2C8CC4();
  OUTLINED_FUNCTION_112_1();
  return sub_1DC28EB30(v8, v9, v10);
}

uint64_t sub_1DC3C9A08(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(*v1 + 16);
  result = v4 + v3;
  if (__OFADD__(v4, v3))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1DC3D75CC(result, 1);
  v6 = *v1;
  if (!*(a1 + 16))
  {

    if (!v3)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v7 = (*(v6 + 24) >> 1) - *(v6 + 16);
  result = sub_1DC51141C();
  if (v7 < v3)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_arrayInitWithCopy();

  if (!v3)
  {
LABEL_8:
    *v1 = v6;
    return result;
  }

  v8 = *(v6 + 16);
  v9 = __OFADD__(v8, v3);
  v10 = v8 + v3;
  if (!v9)
  {
    *(v6 + 16) = v10;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

void sub_1DC3C9B08()
{
  OUTLINED_FUNCTION_33();
  v2 = v1;
  sub_1DC516F7C();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_15();
  v56 = v4;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_62();
  v55 = v6;
  OUTLINED_FUNCTION_12();
  v7 = sub_1DC51110C();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_9_24();
  sub_1DC5137CC();
  OUTLINED_FUNCTION_0();
  v57 = v10;
  v58 = v9;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_1();
  v13 = v12 - v11;
  (*((*MEMORY[0x1E69E7D40] & *v2) + 0x78))();
  sub_1DC51379C();
  sub_1DC5110DC();
  v14 = OUTLINED_FUNCTION_328();
  v15(v14, v7);
  OUTLINED_FUNCTION_343();
  v17 = (*(v16 + 416))();
  v18 = OUTLINED_FUNCTION_176();
  sub_1DC3BFA68(v18, v19, v17, v20);

  if (v61)
  {

    sub_1DC28F9B0(&v60, v62);
    v21 = v62[4];
    __swift_project_boxed_opaque_existential_1(v62, v62[3]);
    v22 = OUTLINED_FUNCTION_23_2();
    if (v23(v22, v21))
    {
      sub_1DC2C5FC4(v62, &v60);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D328, &qword_1DC5283A8);
      OUTLINED_FUNCTION_155();
      v24 = type metadata accessor for TurnConstructionCandidateNlSpeechInput();
      if (OUTLINED_FUNCTION_156_0(v24) || (sub_1DC2C5FC4(v62, &v60), v39 = type metadata accessor for TextBasedTRPCandidateNLInput(), (OUTLINED_FUNCTION_156_0(v39) & 1) != 0))
      {
        OUTLINED_FUNCTION_223_1();
        v40 = OUTLINED_FUNCTION_229();
        v41(v40);
      }

      else
      {
        sub_1DC28D414();
        OUTLINED_FUNCTION_56_3();
        v44(v55);
        v45 = sub_1DC516F6C();
        v46 = sub_1DC517BAC();
        if (OUTLINED_FUNCTION_14_7(v46))
        {
          v47 = OUTLINED_FUNCTION_35_8();
          OUTLINED_FUNCTION_18_12(v47);
          OUTLINED_FUNCTION_27_16();
          _os_log_impl(v48, v49, v50, v51, v52, 2u);
          OUTLINED_FUNCTION_40_0();
        }

        v53 = OUTLINED_FUNCTION_77_1();
        v54(v53);
      }
    }

    else
    {
      sub_1DC2C5FC4(v62, &v60);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D328, &qword_1DC5283A8);
      OUTLINED_FUNCTION_155();
      v33 = type metadata accessor for ResultCandidateNlSpeechInput();
      if (OUTLINED_FUNCTION_156_0(v33))
      {
        v34 = *(*v59 + 120);

        v36 = v34(v35);
      }

      else
      {
        v36 = 0;
      }

      OUTLINED_FUNCTION_223_1();
      v42 = OUTLINED_FUNCTION_159();
      v43(v42);
    }

    (*(v57 + 8))(v13, v58);
    __swift_destroy_boxed_opaque_existential_1Tm(v62);
  }

  else
  {
    sub_1DC28EB30(&v60, &qword_1ECC7D410, &qword_1DC528430);
    sub_1DC28D414();
    OUTLINED_FUNCTION_56_3();
    v25(v56);

    v26 = sub_1DC516F6C();
    v27 = sub_1DC517BAC();

    if (os_log_type_enabled(v26, v27))
    {
      OUTLINED_FUNCTION_63();
      v28 = OUTLINED_FUNCTION_73_5();
      v62[0] = v28;
      *v0 = 136315138;
      v29 = OUTLINED_FUNCTION_176();
      v32 = sub_1DC291244(v29, v30, v31);

      *(v0 + 4) = v32;
      OUTLINED_FUNCTION_236_0(&dword_1DC287000, v26, v27, "NLU Response received for unknown requestId: %s", v55);
      __swift_destroy_boxed_opaque_existential_1Tm(v28);
      OUTLINED_FUNCTION_58();
      OUTLINED_FUNCTION_40_0();
    }

    else
    {
    }

    v37 = OUTLINED_FUNCTION_314();
    v38(v37);
    (*(v57 + 8))(v13, v58);
  }

  OUTLINED_FUNCTION_34();
}

void sub_1DC3CA270(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_33();
  a19 = v25;
  a20 = v26;
  v519 = v21;
  v28 = v27;
  v515 = v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D390, &qword_1DC527790);
  OUTLINED_FUNCTION_10(v30);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_20_0(v32);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D398, &qword_1DC5283F8);
  OUTLINED_FUNCTION_10(v33);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_14(v35);
  v36 = sub_1DC511E5C();
  v37 = OUTLINED_FUNCTION_2_29(v36, &v517);
  v487 = v38;
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_20_0(v39);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7D3A0, &unk_1DC522560);
  OUTLINED_FUNCTION_10(v40);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_20_0(v42);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CFB0, qword_1DC526050);
  OUTLINED_FUNCTION_10(v43);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_14(v45);
  v46 = sub_1DC51107C();
  v47 = OUTLINED_FUNCTION_2_29(v46, &v508);
  v481 = v48;
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_14(v49);
  v50 = sub_1DC5112EC();
  v51 = OUTLINED_FUNCTION_2_29(v50, &v510);
  v483 = v52;
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_62();
  v55 = OUTLINED_FUNCTION_14(v54);
  v485 = type metadata accessor for DialogState(v55);
  OUTLINED_FUNCTION_35();
  MEMORY[0x1EEE9AC00](v56);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_14(v57);
  v58 = sub_1DC5168FC();
  v59 = OUTLINED_FUNCTION_2_29(v58, &v522);
  v493 = v60;
  MEMORY[0x1EEE9AC00](v59);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_14(v61);
  v62 = sub_1DC5162DC();
  v63 = OUTLINED_FUNCTION_2_29(v62, &a9);
  v494 = v64;
  MEMORY[0x1EEE9AC00](v63);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_20_0(v65);
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D388, &unk_1DC5283E8);
  v67 = OUTLINED_FUNCTION_10(v66);
  MEMORY[0x1EEE9AC00](v67);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v68);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_20_0(v69);
  v506 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D320, &qword_1DC5283A0);
  OUTLINED_FUNCTION_35();
  MEMORY[0x1EEE9AC00](v70);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v71);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v72);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_14(v73);
  v508 = sub_1DC51172C();
  OUTLINED_FUNCTION_0();
  v502 = v74;
  MEMORY[0x1EEE9AC00](v75);
  OUTLINED_FUNCTION_2_1();
  v507 = v76;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D420, &unk_1DC528440);
  OUTLINED_FUNCTION_10(v77);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v78);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_14(v79);
  v512 = sub_1DC51170C();
  OUTLINED_FUNCTION_0();
  v510 = v80;
  v82 = MEMORY[0x1EEE9AC00](v81);
  v511 = &v469 - ((v83 + 15) & 0xFFFFFFFFFFFFFFF0);
  v491 = v83;
  MEMORY[0x1EEE9AC00](v82);
  OUTLINED_FUNCTION_62();
  v509 = v84;
  OUTLINED_FUNCTION_12();
  v85 = sub_1DC516F7C();
  OUTLINED_FUNCTION_0();
  v87 = v86;
  MEMORY[0x1EEE9AC00](v88);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_123();
  MEMORY[0x1EEE9AC00](v89);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v90);
  OUTLINED_FUNCTION_23_1();
  v505 = v91;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v92);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v93);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v94);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v95);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v96);
  OUTLINED_FUNCTION_56_1();
  v97 = sub_1DC5137CC();
  OUTLINED_FUNCTION_0();
  v99 = v98;
  MEMORY[0x1EEE9AC00](v100);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_109();
  MEMORY[0x1EEE9AC00](v101);
  OUTLINED_FUNCTION_98_1();
  MEMORY[0x1EEE9AC00](v102);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v103);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v104);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v105);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v106);
  OUTLINED_FUNCTION_55_2();
  v107 = (*((*MEMORY[0x1E69E7D40] & *v28) + 0x78))();
  v516 = v24;
  v517 = v99;
  if (v515)
  {
    v513 = v87;
    v514 = v97;
    v518 = v85;
    MEMORY[0x1EEE9AC00](v107);
    v109 = v108;
    v110 = v519;
    *(&v469 - 4) = v108;
    *(&v469 - 3) = v110;
    *(&v469 - 2) = v24;
    objc_allocWithZone(sub_1DC51528C());
    v111 = v109;
    v112 = sub_1DC51521C();
    if (v112)
    {
      v113 = v112;
      sub_1DC28D414();
      v114 = v513;
      OUTLINED_FUNCTION_90();
      v470 = v115;
      v472 = v116;
      v471 = v117;
      v117(v22);
      v118 = v111;
      v119 = v113;
      v120 = sub_1DC516F6C();
      v121 = v110;
      v122 = sub_1DC517B9C();

      v123 = os_log_type_enabled(v120, v122);
      v515 = v118;
      if (v123)
      {
        OUTLINED_FUNCTION_140();
        v124 = OUTLINED_FUNCTION_207_1();
        v125 = OUTLINED_FUNCTION_82();
        v520[0] = v125;
        *v111 = 138412546;
        *(v111 + 1) = v119;
        *v124 = v113;
        OUTLINED_FUNCTION_221_0();
        v126 = v119;
        v127 = sub_1DC515B5C();
        sub_1DC291244(v127, v128, v520);
        OUTLINED_FUNCTION_334();

        *(v111 + 14) = v113;
        OUTLINED_FUNCTION_85_6();
        _os_log_impl(v129, v130, v131, v132, v133, 0x16u);
        sub_1DC28EB30(v124, &qword_1ECC7DFE0, &qword_1DC5227F0);
        v24 = v516;
        v134 = v519;
        OUTLINED_FUNCTION_66();
        __swift_destroy_boxed_opaque_existential_1Tm(v125);
        v114 = v513;
        OUTLINED_FUNCTION_66();
        OUTLINED_FUNCTION_40_0();

        v135 = OUTLINED_FUNCTION_224_1();
        v136(v135);
        v137 = v512;
      }

      else
      {

        v177 = OUTLINED_FUNCTION_224_1();
        v178(v177);
        v137 = v512;
        v134 = v121;
      }

      OUTLINED_FUNCTION_121_1((v134 + OBJC_IVAR____TtC13CDMFoundation25AssistantNLRequestHandler_messagePublisher), *(v134 + OBJC_IVAR____TtC13CDMFoundation25AssistantNLRequestHandler_messagePublisher + 24));
      v499 = v119;
      OUTLINED_FUNCTION_147_0();
      sub_1DC515D8C();
      v179 = v507;
      sub_1DC51374C();
      v180 = v511;
      sub_1DC51171C();
      OUTLINED_FUNCTION_62_0();
      v181(v179, v508);
      OUTLINED_FUNCTION_291();
      Siri_Nlu_External_ResponseStatus.StatusCode.toOrchestrationStatusCode()(v182);
      v183 = v510;
      v185 = v510 + 8;
      v184 = *(v510 + 1);
      v186 = OUTLINED_FUNCTION_60();
      v184(v186);
      OUTLINED_FUNCTION_39(v119, 1, v137);
      if (!v232)
      {
        OUTLINED_FUNCTION_278();
        v505 = v218;
        v504 = v219;
        v219(v509, v119, v137);
        v220 = *(v183 + 13);
        v220(v180, *MEMORY[0x1E69D0A98], v137);
        OUTLINED_FUNCTION_108_1();
        sub_1DC3D8E40(v221, v222, MEMORY[0x1E69D0AB8]);
        OUTLINED_FUNCTION_238_0();
        sub_1DC5179EC();
        OUTLINED_FUNCTION_238_0();
        sub_1DC5179EC();
        v223 = OUTLINED_FUNCTION_60();
        v507 = v184;
        v508 = v185;
        v184(v223);
        v503 = v520[0];
        OUTLINED_FUNCTION_43_5(v522);
        v224 = v515;
        sub_1DC515B5C();
        OUTLINED_FUNCTION_279();
        v225 = (*(*v134 + 368))();
        v226 = v497;
        v227 = OUTLINED_FUNCTION_65_1();
        sub_1DC3BF988(v227, v228, v225, v229);

        v230 = OUTLINED_FUNCTION_34_11();
        OUTLINED_FUNCTION_39(v230, v231, v506);
        if (v232)
        {
          sub_1DC28EB30(v226, &qword_1ECC7D388, &unk_1DC5283E8);
          OUTLINED_FUNCTION_277();
          OUTLINED_FUNCTION_34_14();
          v233();
          v234 = v224;
          v235 = sub_1DC516F6C();
          v236 = sub_1DC517BAC();

          if (os_log_type_enabled(v235, v236))
          {
            OUTLINED_FUNCTION_63();
            v520[0] = OUTLINED_FUNCTION_117();
            OUTLINED_FUNCTION_350(4.8149e-34);
            v237 = sub_1DC515B5C();
            sub_1DC291244(v237, v238, v520);
            OUTLINED_FUNCTION_91_2();
            *(v225 + 4) = v134;
            OUTLINED_FUNCTION_84_5();
            _os_log_impl(v239, v240, v241, v242, v243, 0xCu);
            OUTLINED_FUNCTION_53_12();
            OUTLINED_FUNCTION_58();
          }

          OUTLINED_FUNCTION_365();
          OUTLINED_FUNCTION_74_0();
          OUTLINED_FUNCTION_222_1();
          v244();
          v245 = v510;
          sub_1DC2A0AE0();
          OUTLINED_FUNCTION_90();
          v246(v492);
          v248 = v511;
          v247 = v512;
          (*(v245 + 2))(v511, v509, v512);
          v249 = OUTLINED_FUNCTION_371();
          v250 = OUTLINED_FUNCTION_347(v249);
          v504(v250, v248, v247);
          v251 = v234;

          OUTLINED_FUNCTION_348();
          sub_1DC5168DC();
          OUTLINED_FUNCTION_300();

          v252 = OUTLINED_FUNCTION_121_0();
          v253(v252);
          v254 = OUTLINED_FUNCTION_16();
          goto LABEL_50;
        }

        sub_1DC3D80AC(v226, v500);
        OUTLINED_FUNCTION_262();
        sub_1DC3D5B38(v224);
        v270 = v516;
        v271 = OUTLINED_FUNCTION_36();
        sub_1DC3D0CAC(v271, v272, v273, v274, v275, v276, v277, v278, v469, v470, v471, v472, v473, v474, v475, v476, v477, v478, v479, v480);
        if (v279)
        {
          OUTLINED_FUNCTION_277();
          OUTLINED_FUNCTION_34_14();
          v280();
          v281 = v224;
          v282 = sub_1DC516F6C();
          v283 = sub_1DC517B9C();

          if (os_log_type_enabled(v282, v283))
          {
            OUTLINED_FUNCTION_63();
            v520[0] = OUTLINED_FUNCTION_117();
            OUTLINED_FUNCTION_350(4.8149e-34);
            v284 = sub_1DC515B5C();
            sub_1DC291244(v284, v285, v520);
            OUTLINED_FUNCTION_91_2();
            *(v225 + 4) = v134;
            OUTLINED_FUNCTION_84_5();
            _os_log_impl(v286, v287, v288, v289, v290, 0xCu);
            OUTLINED_FUNCTION_53_12();
            v291 = v503;
            OUTLINED_FUNCTION_66();

            OUTLINED_FUNCTION_51();
            OUTLINED_FUNCTION_222_1();
            v292();
            v293 = v510;
          }

          else
          {

            OUTLINED_FUNCTION_51();
            OUTLINED_FUNCTION_222_1();
            v295();
            v293 = v510;
            v291 = v503;
          }

          v296 = v291 == v502;
          sub_1DC2A0AE0();
          OUTLINED_FUNCTION_19_1();
          v297 = v492;
          OUTLINED_FUNCTION_355();
          v298();
          v300 = v511;
          v299 = v512;
          (*(v293 + 2))(v511, v509, v512);
          v301 = OUTLINED_FUNCTION_371();
          v302 = OUTLINED_FUNCTION_347(v301);
          v504(v302, v300, v299);
          v518 = v281;

          OUTLINED_FUNCTION_348();
          sub_1DC5168CC();

          v303 = OUTLINED_FUNCTION_174();
          v304(v303);
          v515 = sub_1DC515B5C();
          v513 = v305;
          v306 = v506;
          v307 = *(v506 + 48);
          v308 = *(v506 + 64);
          v309 = OUTLINED_FUNCTION_61_6();
          v311 = *(v310 - 256);
          sub_1DC28F414(v309, v311, v312, v313);
          v511 = *(v306 + 64);
          sub_1DC51119C();
          OUTLINED_FUNCTION_35();
          v314 = v490;
          v315 = OUTLINED_FUNCTION_78_6();
          v316(v315);
          *(v314 + v307) = v296;
          v317 = v494;
          OUTLINED_FUNCTION_44_8();
          v318 = v495;
          v319(v314 + v308, v501, v495);
          v320 = OUTLINED_FUNCTION_23_20();
          __swift_storeEnumTagSinglePayload(v320, v321, v322, v306);
          OUTLINED_FUNCTION_233();
          v324 = (*(v323 + 384))(v520);
          sub_1DC3BE3B4(v314, v515, v513);
          v324(v520, 0);
          v325 = *(v317 + 8);
          v325(&v511[v311], v318);
          OUTLINED_FUNCTION_233();
          (*(v326 + 816))();
          OUTLINED_FUNCTION_300();

          sub_1DC28EB30(v297, &qword_1ECC7D320, &qword_1DC5283A0);
          v327 = OUTLINED_FUNCTION_63_0();
          (v325)(v327);
LABEL_49:
          v254 = v509;
          v255 = v512;
LABEL_50:
          (v507)(v254, v255);
          goto LABEL_51;
        }

        v294 = *(sub_1DC51377C() + 16);

        if (v294)
        {
          LODWORD(v497) = 0;
        }

        else
        {
          v224 = v511;
          v270 = v512;
          v220(v511, *MEMORY[0x1E69D0AA0], v512);
          OUTLINED_FUNCTION_238_0();
          sub_1DC5179EC();
          OUTLINED_FUNCTION_238_0();
          sub_1DC5179EC();
          v328 = OUTLINED_FUNCTION_63_0();
          v507(v328);
          LODWORD(v497) = v520[0] == v522;
        }

        OUTLINED_FUNCTION_61_6();
        OUTLINED_FUNCTION_159_0();
        sub_1DC28F414(v329, v330, v331, v332);
        v511 = *(v506 + 64);
        OUTLINED_FUNCTION_106();
        sub_1DC51112C();
        sub_1DC51119C();
        OUTLINED_FUNCTION_248_0();
        v504 = v333;
        v334 = *(v333 + 8);
        v335 = OUTLINED_FUNCTION_63_0();
        v334(v335);
        OUTLINED_FUNCTION_57_5();
        sub_1DC51129C();
        v336 = *(v483 + 8);
        v336(v225, v484);
        v337 = sub_1DC51104C();
        OUTLINED_FUNCTION_62_0();
        v338(v220, v482);
        OUTLINED_FUNCTION_22_13();
        OUTLINED_FUNCTION_57_5();
        sub_1DC3C18F8(v337, v339, v340);

        OUTLINED_FUNCTION_159_0();
        sub_1DC28F414(v341, v342, &qword_1ECC7D320, &qword_1DC5283A0);
        v510 = *(v506 + 64);
        OUTLINED_FUNCTION_196_1();
        sub_1DC51112C();
        v505 = v270;
        (v334)(v224, v270);
        OUTLINED_FUNCTION_58_4();
        sub_1DC5112BC();
        v343 = OUTLINED_FUNCTION_174();
        (v336)(v343);
        sub_1DC51190C();
        OUTLINED_FUNCTION_61();
        __swift_storeEnumTagSinglePayload(v344, v345, v346, v347);
        OUTLINED_FUNCTION_106();
        v348 = OUTLINED_FUNCTION_77_1();
        sub_1DC3B3BC0(v348, v349, v350);
        v351 = (v494 + 8);
        v352 = *(v494 + 8);
        OUTLINED_FUNCTION_193_0();
        v352();
        v353 = &v511[v498];
        v510 = v352;
        v511 = v351;
        (v352)(v353, v114);
        v354 = v486;
        v355 = v516;
        sub_1DC51376C();
        OUTLINED_FUNCTION_61();
        v356 = v488;
        __swift_storeEnumTagSinglePayload(v357, v358, v359, v488);
        v360 = v519;
        OUTLINED_FUNCTION_189_0();
        OUTLINED_FUNCTION_291();
        v361(v354);
        sub_1DC28EB30(v354, &qword_1ECC7D398, &qword_1DC5283F8);
        OUTLINED_FUNCTION_16_11();
        OUTLINED_FUNCTION_159_0();
        sub_1DC3D8B40(v362, v363);
        OUTLINED_FUNCTION_61();
        __swift_storeEnumTagSinglePayload(v364, v365, v366, v485);
        OUTLINED_FUNCTION_189_0();
        v368 = (*(v367 + 1008))(v354);
        v370 = v369;
        v371 = sub_1DC28EB30(v354, &qword_1ECC7D390, &qword_1DC527790);
        MEMORY[0x1EEE9AC00](v371);
        *(&v469 - 10) = v515;
        *(&v469 - 9) = v360;
        *(&v469 - 8) = v355;
        v372 = v497;
        *(&v469 - 56) = v497;
        v373 = v501;
        *(&v469 - 6) = v509;
        *(&v469 - 5) = v373;
        *(&v469 - 4) = v334;
        *(&v469 - 3) = v368;
        *(&v469 - 2) = v370;
        if (v374 == 1)
        {
          v375 = objc_allocWithZone(sub_1DC515A8C());
          OUTLINED_FUNCTION_43_12();
          sub_1DC515A7C();
          OUTLINED_FUNCTION_1_31();

          v376 = v513;
          if (!v368)
          {
            OUTLINED_FUNCTION_184(&v500);
            OUTLINED_FUNCTION_277();
            OUTLINED_FUNCTION_34_14();
            v377();
            v378 = v517 + 16;
            v379 = *(v517 + 16);
            v380 = OUTLINED_FUNCTION_326(&v498);
            v379(v380);
            v381 = sub_1DC516F6C();
            sub_1DC517BAC();
            OUTLINED_FUNCTION_116();
            if (os_log_type_enabled(v381, v382))
            {
              goto LABEL_43;
            }

            goto LABEL_44;
          }
        }

        else
        {
          v383 = objc_allocWithZone(sub_1DC5156AC());
          OUTLINED_FUNCTION_43_12();
          sub_1DC5155EC();
          OUTLINED_FUNCTION_1_31();

          v376 = v513;
          if (!v368)
          {
            OUTLINED_FUNCTION_184(&v501);
            OUTLINED_FUNCTION_277();
            OUTLINED_FUNCTION_34_14();
            v419();
            v378 = v517 + 16;
            v379 = *(v517 + 16);
            v420 = OUTLINED_FUNCTION_326(&v499);
            v379(v420);
            v381 = sub_1DC516F6C();
            sub_1DC517BAC();
            OUTLINED_FUNCTION_116();
            if (os_log_type_enabled(v381, v421))
            {
LABEL_43:
              OUTLINED_FUNCTION_63();
              v376 = 0;
              v422 = OUTLINED_FUNCTION_117();
              v522 = OUTLINED_FUNCTION_307(v422);
              MEMORY[0] = 136315138;
              v423 = sub_1DC5138DC();
              v521 = v360;
              OUTLINED_FUNCTION_8_17();
              v426 = sub_1DC3D8E40(v424, v425, MEMORY[0x1E69D1028]);
              v427 = OUTLINED_FUNCTION_304(v426);
              (v379)(v427, 0, v360);
              sub_1DC5138CC();
              OUTLINED_FUNCTION_238();
              v428 = OUTLINED_FUNCTION_54_4();
              v429(v428);
              __swift_destroy_boxed_opaque_existential_1Tm(v520);
              v430 = OUTLINED_FUNCTION_98_5();
              sub_1DC291244(v430, v378, v431);
              OUTLINED_FUNCTION_251_0();
              MEMORY[4] = v423;
              OUTLINED_FUNCTION_84_5();
              _os_log_impl(v432, v433, v434, v435, v436, 0xCu);
              v437 = OUTLINED_FUNCTION_184(&a11);
              __swift_destroy_boxed_opaque_existential_1Tm(v437);
              OUTLINED_FUNCTION_42();
              OUTLINED_FUNCTION_58();

              OUTLINED_FUNCTION_365();
LABEL_45:
              OUTLINED_FUNCTION_222_1();
              v440();
              OUTLINED_FUNCTION_1_32();
              sub_1DC3D8824();
              OUTLINED_FUNCTION_267();
              if (v232)
              {
                v441 = 1;
              }

              else
              {
                v441 = 0;
              }

              OUTLINED_FUNCTION_62_0();
              v442(v489, v488);
              v518 = sub_1DC515B5C();
              v513 = v443;
              v444 = v506;
              v445 = *(v506 + 48);
              v446 = OUTLINED_FUNCTION_61_6();
              v448 = *(v447 - 256);
              sub_1DC28F414(v446, v448, v449, v450);
              v451 = *(v444 + 64);
              v452 = v490;
              v453 = OUTLINED_FUNCTION_16();
              v454(v453);
              *(v452 + v445) = v441;
              v455 = OUTLINED_FUNCTION_290();
              v457 = v495;
              v458(v455, *(v456 - 256), v495);
              v459 = OUTLINED_FUNCTION_32_9();
              __swift_storeEnumTagSinglePayload(v459, v460, v461, v444);
              v462 = v519;
              (*(*v519 + 384))(v520);
              OUTLINED_FUNCTION_192();
              sub_1DC3BE3B4(v452, v518, v513);
              (v444)(v520, 0);
              v463 = v448 + v451;
              v464 = v510;
              v465 = (v510)(v463, v457);
              (*(*v462 + 816))(v465);
              OUTLINED_FUNCTION_300();

              sub_1DC28EB30(v376, &qword_1ECC7D320, &qword_1DC5283A0);
              v466 = OUTLINED_FUNCTION_73();
              v464(v466);
              goto LABEL_49;
            }

LABEL_44:

            v438 = OUTLINED_FUNCTION_258();
            v439(v438);
            goto LABEL_45;
          }
        }

        v384 = v372;
        OUTLINED_FUNCTION_267();
        if (v232)
        {
          v385 = 1;
        }

        else
        {
          v385 = 0;
        }

        LODWORD(v518) = v385;
        OUTLINED_FUNCTION_119_3();
        (*(v386 + 944))(v368);
        v387 = v368;
        sub_1DC515D6C();
        OUTLINED_FUNCTION_194();

        v388 = v387;
        v389 = sub_1DC515B5C();
        v391 = v390;

        OUTLINED_FUNCTION_189_0();
        (*(v392 + 1056))(v384, v385, v368, &v469, v389, v391);

        OUTLINED_FUNCTION_1_32();
        sub_1DC3D8824();
        OUTLINED_FUNCTION_62_0();
        v393(v489, v356);
        v513 = sub_1DC515B5C();
        v395 = v394;
        v396 = v506;
        v397 = *(v506 + 48);
        v398 = OUTLINED_FUNCTION_61_6();
        v400 = *(v399 - 256);
        sub_1DC28F414(v398, v400, v401, v402);
        v403 = *(v396 + 64);
        v404 = v490;
        v405 = OUTLINED_FUNCTION_35_0();
        v406(v405);
        *(v404 + v397) = v518;
        v407 = OUTLINED_FUNCTION_290();
        v409 = v495;
        v410(v407, *(v408 - 256), v495);
        v411 = OUTLINED_FUNCTION_32_9();
        __swift_storeEnumTagSinglePayload(v411, v412, v413, v396);
        OUTLINED_FUNCTION_189_0();
        (*(v414 + 384))(v520);
        OUTLINED_FUNCTION_192();
        sub_1DC3BE3B4(v404, v513, v395);
        (v396)(v520, 0);
        v415 = v400 + v403;
        v416 = v510;
        (v510)(v415, v409);
        OUTLINED_FUNCTION_189_0();
        (*(v417 + 816))();
        OUTLINED_FUNCTION_300();

        sub_1DC28EB30(v385, &qword_1ECC7D320, &qword_1DC5283A0);
        v418 = OUTLINED_FUNCTION_78_6();
        v416(v418);
        goto LABEL_49;
      }

      sub_1DC28EB30(v119, &qword_1ECC7D420, &unk_1DC528440);
      v187 = v505;
      OUTLINED_FUNCTION_277();
      v188 = v518;
      OUTLINED_FUNCTION_34_14();
      v189();
      v190 = v517;
      v191 = *(v517 + 16);
      v192 = v496;
      v193 = OUTLINED_FUNCTION_258();
      v194 = v514;
      v191(v193);
      v195 = OUTLINED_FUNCTION_34_3();
      (v191)(v195, v24, v194);
      v196 = sub_1DC516F6C();
      v197 = sub_1DC517BAC();
      if (OUTLINED_FUNCTION_14_7(v197))
      {
        v198 = v190;
        v190 = OUTLINED_FUNCTION_140();
        v512 = OUTLINED_FUNCTION_143();
        v522 = v512;
        *v190 = 136315394;
        LODWORD(v511) = v187;
        sub_1DC51374C();
        sub_1DC51777C();
        OUTLINED_FUNCTION_123_0();
        v199 = *(v198 + 8);
        v200 = OUTLINED_FUNCTION_42_2();
        v199(v200);
        v201 = OUTLINED_FUNCTION_98_5();
        sub_1DC291244(v201, v188, v202);
        OUTLINED_FUNCTION_162();

        *(v190 + 4) = v192;
        OUTLINED_FUNCTION_221_0();
        v203 = sub_1DC5138DC();
        v521 = v194;
        OUTLINED_FUNCTION_8_17();
        v206 = sub_1DC3D8E40(v204, v205, MEMORY[0x1E69D1028]);
        v207 = OUTLINED_FUNCTION_304(v206);
        (v191)(v207, v503, v194);
        sub_1DC5138CC();
        OUTLINED_FUNCTION_123_0();
        v208 = OUTLINED_FUNCTION_42_2();
        v199(v208);
        v209 = v519;
        __swift_destroy_boxed_opaque_existential_1Tm(v520);
        v210 = OUTLINED_FUNCTION_98_5();
        sub_1DC291244(v210, v188, v211);
        OUTLINED_FUNCTION_162();

        *(v190 + 14) = v203;
        OUTLINED_FUNCTION_85_6();
        _os_log_impl(v212, v213, v214, v215, v216, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_42();
        OUTLINED_FUNCTION_40_0();

        OUTLINED_FUNCTION_365();
        OUTLINED_FUNCTION_222_1();
        v217();
      }

      else
      {

        v263 = *(v190 + 8);
        v264 = OUTLINED_FUNCTION_34_3();
        v263(v264, v194);
        v265 = OUTLINED_FUNCTION_42_2();
        (v263)(v265);
        OUTLINED_FUNCTION_222_1();
        v266();
        v209 = v519;
      }

      v267 = v515;
      sub_1DC515D6C();
      OUTLINED_FUNCTION_279();

      v268 = sub_1DC515B5C();
      (*(*v209 + 1056))(0, 0, v188, v190, v268, v269);

      OUTLINED_FUNCTION_300();
    }

    else
    {
      sub_1DC28D414();
      v156 = v513;
      OUTLINED_FUNCTION_32_5();
      v157 = v499;
      v158(v499);
      v159 = v517;
      v160 = v24;
      v161 = *(v517 + 16);
      v162 = v514;
      v161(v20, v160, v514);
      v163 = sub_1DC516F6C();
      v164 = sub_1DC517BAC();
      if (os_log_type_enabled(v163, v164))
      {
        OUTLINED_FUNCTION_63();
        v165 = OUTLINED_FUNCTION_115_4();
        v522 = v165;
        *v159 = 136315138;
        sub_1DC5138DC();
        LODWORD(v519) = v164;
        v521 = v514;
        OUTLINED_FUNCTION_8_17();
        v168 = sub_1DC3D8E40(v166, v167, MEMORY[0x1E69D1028]);
        v169 = OUTLINED_FUNCTION_304(v168);
        v161(v169, v20, v514);
        sub_1DC5138CC();
        v171 = v170;
        v172 = OUTLINED_FUNCTION_318();
        v173(v172, v514);
        __swift_destroy_boxed_opaque_existential_1Tm(v520);
        v174 = OUTLINED_FUNCTION_98_5();
        v176 = sub_1DC291244(v174, v171, v175);

        *(v159 + 4) = v176;
        _os_log_impl(&dword_1DC287000, v163, v519, "nlRepetitionMessage could not be created for nluResponse: %s", v159, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v165);
        OUTLINED_FUNCTION_66();
        OUTLINED_FUNCTION_67();
      }

      else
      {

        v261 = OUTLINED_FUNCTION_318();
        v262(v261, v162);
      }

      (*(v156 + 8))(v157, v518);
    }
  }

  else
  {
    sub_1DC28D414();
    v138 = OUTLINED_FUNCTION_261();
    v139(v138);
    v140 = *(v99 + 16);
    v141 = OUTLINED_FUNCTION_54_4();
    v140(v141);
    v142 = sub_1DC516F6C();
    v143 = sub_1DC517BAC();
    if (os_log_type_enabled(v142, v143))
    {
      v144 = OUTLINED_FUNCTION_63();
      v512 = v144;
      v515 = OUTLINED_FUNCTION_82();
      v522 = v515;
      *v144 = 136315138;
      v145 = sub_1DC5138DC();
      LODWORD(v514) = v143;
      v146 = v145;
      v521 = v97;
      OUTLINED_FUNCTION_8_17();
      v149 = sub_1DC3D8E40(v147, v148, MEMORY[0x1E69D1028]);
      v150 = OUTLINED_FUNCTION_304(v149);
      (v140)(v150, v23, v97);
      sub_1DC5138CC();
      OUTLINED_FUNCTION_238();
      v151 = OUTLINED_FUNCTION_75();
      v152(v151);
      __swift_destroy_boxed_opaque_existential_1Tm(v520);
      v153 = OUTLINED_FUNCTION_98_5();
      sub_1DC291244(v153, v144, v154);
      OUTLINED_FUNCTION_251_0();
      v155 = v512;
      *(v512 + 4) = v146;
      _os_log_impl(&dword_1DC287000, v142, v514, "asrResult could not be found for nlResponse: %s", v155, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v515);
      OUTLINED_FUNCTION_42();
      OUTLINED_FUNCTION_66();
    }

    else
    {

      v256 = OUTLINED_FUNCTION_75();
      v257(v256);
    }

    v258 = OUTLINED_FUNCTION_35_0();
    v259(v258);
    OUTLINED_FUNCTION_12_0();
    (*(v260 + 1056))(0, 0);
  }

LABEL_51:
  v467 = OUTLINED_FUNCTION_51();
  v468(v467);
  OUTLINED_FUNCTION_34();
}

uint64_t sub_1DC3CC6A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7CA30, &qword_1DC522A00);
  OUTLINED_FUNCTION_10(v7);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_28_13();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CEE8, &qword_1DC528550);
  OUTLINED_FUNCTION_10(v9);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_42_11();
  v11 = *MEMORY[0x1E69D0450];
  v12 = sub_1DC515DBC();
  OUTLINED_FUNCTION_35();
  (*(v13 + 104))(v3, v11, v12);
  OUTLINED_FUNCTION_61();
  __swift_storeEnumTagSinglePayload(v14, v15, v16, v12);
  OUTLINED_FUNCTION_235_0();
  sub_1DC51525C();
  sub_1DC515D9C();
  sub_1DC51522C();
  v17 = OBJC_IVAR____TtC13CDMFoundation25AssistantNLRequestHandler_sessionId;
  sub_1DC510B6C();
  OUTLINED_FUNCTION_2();
  (*(v18 + 16))(v4, a3 + v17, a1);
  v19 = OUTLINED_FUNCTION_32_9();
  __swift_storeEnumTagSinglePayload(v19, v20, v21, a1);
  OUTLINED_FUNCTION_312();
  sub_1DC51527C();
  sub_1DC515D6C();
  sub_1DC51526C();
  sub_1DC515B5C();
  sub_1DC51524C();
  sub_1DC51375C();
  return sub_1DC51523C();
}

void sub_1DC3CC84C()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_166_2(v6, v7, v8, v9, v10, v11, v12, v13);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D398, &qword_1DC5283F8);
  OUTLINED_FUNCTION_10(v14);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_28_13();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D010, &qword_1DC5263B0);
  OUTLINED_FUNCTION_10(v16);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_24_0();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D420, &unk_1DC528440);
  OUTLINED_FUNCTION_10(v18);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_11_1();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7D4B0, &unk_1DC528580);
  OUTLINED_FUNCTION_10(v20);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_54_3();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7CA30, &qword_1DC522A00);
  OUTLINED_FUNCTION_10(v22);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_31_3();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CEE8, &qword_1DC528550);
  OUTLINED_FUNCTION_10(v24);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_42_11();
  v26 = *MEMORY[0x1E69D0450];
  v27 = sub_1DC515DBC();
  OUTLINED_FUNCTION_35();
  (*(v28 + 104))(v1, v26, v27);
  OUTLINED_FUNCTION_61();
  __swift_storeEnumTagSinglePayload(v29, v30, v31, v27);
  OUTLINED_FUNCTION_235_0();
  sub_1DC51573C();
  sub_1DC515D9C();
  sub_1DC5156EC();
  sub_1DC510B6C();
  OUTLINED_FUNCTION_2();
  v32 = OUTLINED_FUNCTION_330();
  v33(v32);
  OUTLINED_FUNCTION_61();
  __swift_storeEnumTagSinglePayload(v34, v35, v36, v0);
  sub_1DC51576C();
  sub_1DC515D6C();
  sub_1DC51575C();
  sub_1DC515B5C();
  sub_1DC5156CC();
  sub_1DC51377C();
  v37 = v0;
  sub_1DC5156DC();
  if (v55)
  {
    v37 = v54;
    sub_1DC33D8D0(v2);
  }

  else
  {
    sub_1DC511EEC();
    OUTLINED_FUNCTION_292();
    OUTLINED_FUNCTION_19();
    __swift_storeEnumTagSinglePayload(v38, v39, v40, v41);
  }

  OUTLINED_FUNCTION_353();
  sub_1DC5156FC();
  sub_1DC51170C();
  OUTLINED_FUNCTION_2();
  (*(v42 + 16))(v3, v56, v37);
  v43 = OUTLINED_FUNCTION_23_20();
  OUTLINED_FUNCTION_293(v43, v44, v45, v37);
  sub_1DC51570C();
  sub_1DC5162DC();
  OUTLINED_FUNCTION_2();
  (*(v46 + 16))(v5, v57, v0);
  OUTLINED_FUNCTION_61();
  __swift_storeEnumTagSinglePayload(v47, v48, v49, v0);
  OUTLINED_FUNCTION_336();
  sub_1DC51574C();
  sub_1DC511E5C();
  OUTLINED_FUNCTION_2();
  (*(v50 + 16))(v4, v58, v0);
  v51 = OUTLINED_FUNCTION_32_9();
  __swift_storeEnumTagSinglePayload(v51, v52, v53, v0);
  OUTLINED_FUNCTION_312();
  sub_1DC51571C();

  sub_1DC51572C();
  OUTLINED_FUNCTION_34();
}

void sub_1DC3CCC08()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_166_2(v6, v7, v8, v9, v10, v11, v12, v13);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D398, &qword_1DC5283F8);
  OUTLINED_FUNCTION_10(v14);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_28_13();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D010, &qword_1DC5263B0);
  OUTLINED_FUNCTION_10(v16);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_24_0();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D420, &unk_1DC528440);
  OUTLINED_FUNCTION_10(v18);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_11_1();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7D4B0, &unk_1DC528580);
  OUTLINED_FUNCTION_10(v20);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_54_3();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7CA30, &qword_1DC522A00);
  OUTLINED_FUNCTION_10(v22);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_31_3();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CEE8, &qword_1DC528550);
  OUTLINED_FUNCTION_10(v24);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_42_11();
  v26 = *MEMORY[0x1E69D0450];
  v27 = sub_1DC515DBC();
  OUTLINED_FUNCTION_35();
  (*(v28 + 104))(v1, v26, v27);
  OUTLINED_FUNCTION_61();
  __swift_storeEnumTagSinglePayload(v29, v30, v31, v27);
  OUTLINED_FUNCTION_235_0();
  sub_1DC51566C();
  sub_1DC515D9C();
  sub_1DC51561C();
  sub_1DC510B6C();
  OUTLINED_FUNCTION_2();
  v32 = OUTLINED_FUNCTION_330();
  v33(v32);
  OUTLINED_FUNCTION_61();
  __swift_storeEnumTagSinglePayload(v34, v35, v36, v0);
  sub_1DC51569C();
  sub_1DC515D6C();
  sub_1DC51568C();
  sub_1DC515B5C();
  sub_1DC5155FC();
  sub_1DC51377C();
  v37 = v0;
  sub_1DC51560C();
  if (v55)
  {
    v37 = v54;
    sub_1DC33D8D0(v2);
  }

  else
  {
    sub_1DC511EEC();
    OUTLINED_FUNCTION_292();
    OUTLINED_FUNCTION_19();
    __swift_storeEnumTagSinglePayload(v38, v39, v40, v41);
  }

  OUTLINED_FUNCTION_353();
  sub_1DC51562C();
  sub_1DC51170C();
  OUTLINED_FUNCTION_2();
  (*(v42 + 16))(v3, v56, v37);
  v43 = OUTLINED_FUNCTION_23_20();
  OUTLINED_FUNCTION_293(v43, v44, v45, v37);
  sub_1DC51563C();
  sub_1DC5162DC();
  OUTLINED_FUNCTION_2();
  (*(v46 + 16))(v5, v57, v0);
  OUTLINED_FUNCTION_61();
  __swift_storeEnumTagSinglePayload(v47, v48, v49, v0);
  OUTLINED_FUNCTION_336();
  sub_1DC51567C();
  sub_1DC511E5C();
  OUTLINED_FUNCTION_2();
  (*(v50 + 16))(v4, v58, v0);
  v51 = OUTLINED_FUNCTION_32_9();
  __swift_storeEnumTagSinglePayload(v51, v52, v53, v0);
  OUTLINED_FUNCTION_312();
  sub_1DC51564C();

  sub_1DC51565C();
  OUTLINED_FUNCTION_34();
}

void sub_1DC3CCFC4()
{
  OUTLINED_FUNCTION_33();
  v47 = v0;
  OUTLINED_FUNCTION_38_2();
  v3 = sub_1DC5168FC();
  OUTLINED_FUNCTION_0();
  v48 = v4;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_2_1();
  v46 = v6;
  OUTLINED_FUNCTION_12();
  v7 = sub_1DC516F7C();
  OUTLINED_FUNCTION_0();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_15();
  v45 = v11;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_109();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_107_0();
  v51 = sub_1DC28D414();
  v50 = *(v9 + 16);
  v50(v1);
  v14 = v0;
  v15 = sub_1DC516F6C();
  v16 = sub_1DC517B9C();

  v17 = &off_1DC522000;
  if (os_log_type_enabled(v15, v16))
  {
    OUTLINED_FUNCTION_140();
    OUTLINED_FUNCTION_207_1();
    v52 = OUTLINED_FUNCTION_115_4();
    *v9 = 138412546;
    *(v9 + 4) = v14;
    *v7 = v14;
    OUTLINED_FUNCTION_221_0();
    v18 = v14;
    v19 = sub_1DC515B5C();
    v17 = OUTLINED_FUNCTION_305(v19, v20);

    *(v9 + 14) = v17;
    _os_log_impl(&dword_1DC287000, v15, v16, "Posting nluResultMessage: %@ for rcId: %s", v9, 0x16u);
    sub_1DC28EB30(v7, &qword_1ECC7DFE0, &qword_1DC5227F0);
    OUTLINED_FUNCTION_66();
    __swift_destroy_boxed_opaque_existential_1Tm(v52);
    OUTLINED_FUNCTION_66();
    OUTLINED_FUNCTION_40_0();
  }

  v21 = OUTLINED_FUNCTION_187();
  v49 = v22;
  v22(v21);
  OUTLINED_FUNCTION_20_14(&v0[OBJC_IVAR____TtC13CDMFoundation25AssistantNLRequestHandler_messagePublisher]);
  OUTLINED_FUNCTION_112_1();
  v23 = sub_1DC515D8C();
  (v50)(v2, v51, v7);
  v24 = v14;
  v25 = sub_1DC516F6C();
  v26 = sub_1DC517B9C();

  if (os_log_type_enabled(v25, v26))
  {
    swift_slowAlloc();
    v27 = OUTLINED_FUNCTION_175();
    *v17 = 67109378;
    v17[1] = (v23 & 1);
    *(v17 + 4) = 2112;
    *(v17 + 10) = v24;
    *v27 = v24;
    v28 = v24;
    _os_log_impl(&dword_1DC287000, v25, v26, "postSucceeded: %{BOOL}d for nlResultMessage: %@", v17, 0x12u);
    sub_1DC28EB30(v27, &qword_1ECC7DFE0, &qword_1DC5227F0);
    OUTLINED_FUNCTION_58();
    OUTLINED_FUNCTION_14_5();
  }

  v29 = OUTLINED_FUNCTION_46_0();
  v30(v29);
  sub_1DC2A0AE0();
  OUTLINED_FUNCTION_32_5();
  v31(v46);
  v32 = swift_allocObject();
  *(v32 + 16) = v24;
  *(v32 + 24) = v47;
  *(v32 + 32) = v23 & 1;
  v33 = v24;

  OUTLINED_FUNCTION_170_1();
  sub_1DC5168CC();

  (*(v48 + 8))(v46, v3);
  if ((v23 & 1) == 0)
  {
    (v50)(v45, v51, v7);
    v34 = v33;
    v35 = sub_1DC516F6C();
    v36 = sub_1DC517BAC();

    if (os_log_type_enabled(v35, v36))
    {
      OUTLINED_FUNCTION_140();
      v37 = OUTLINED_FUNCTION_207_1();
      OUTLINED_FUNCTION_82();
      *v33 = 138412546;
      *(v33 + 4) = v34;
      *v37 = v34;
      OUTLINED_FUNCTION_221_0();
      v38 = v34;
      v39 = sub_1DC515B5C();
      OUTLINED_FUNCTION_249_0(v39, v40);
      OUTLINED_FUNCTION_23_2();

      *(v33 + 14) = v38;
      OUTLINED_FUNCTION_198_0(&dword_1DC287000, v41, v42, "Posting of nlResultMessage: %@ failed for rcId: %s");
      sub_1DC28EB30(v37, &qword_1ECC7DFE0, &qword_1DC5227F0);
      OUTLINED_FUNCTION_54_12();
      OUTLINED_FUNCTION_53_12();
      OUTLINED_FUNCTION_40_0();

      v43 = v45;
      v44 = v7;
    }

    else
    {

      v43 = OUTLINED_FUNCTION_34_0();
    }

    v49(v43, v44);
  }

  OUTLINED_FUNCTION_34();
}

void sub_1DC3CD4E8()
{
  OUTLINED_FUNCTION_33();
  v28 = v3;
  OUTLINED_FUNCTION_228_0();
  v27 = sub_1DC51170C();
  OUTLINED_FUNCTION_0();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_7_21();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CE30, &unk_1DC524E20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7CE38, &unk_1DC528570);
  OUTLINED_FUNCTION_136_1();
  v8 = *(v7 + 72);
  OUTLINED_FUNCTION_185_1();
  v11 = v10 & ~v9;
  v12 = OUTLINED_FUNCTION_296();
  *(v12 + 16) = xmmword_1DC528380;
  v13 = v12 + v11;
  sub_1DC51680C();
  v14 = sub_1DC2A0C74();
  OUTLINED_FUNCTION_209_0(v14);
  v15 = (v13 + v8 + *(v1 + 56));

  sub_1DC51687C();
  *v15 = sub_1DC2A0C80(6);
  v15[1] = v16;
  v17 = (v13 + 2 * v8 + *(v1 + 56));
  sub_1DC51682C();
  *v17 = sub_1DC515D9C();
  v17[1] = v18;
  OUTLINED_FUNCTION_323();
  sub_1DC5168BC();
  sub_1DC510B6C();
  OUTLINED_FUNCTION_4_27();
  sub_1DC3D8E40(v19, v20, MEMORY[0x1E69695E0]);
  *v0 = sub_1DC51823C();
  v0[1] = v21;
  OUTLINED_FUNCTION_323();
  sub_1DC5168AC();
  *v0 = sub_1DC515D6C();
  v0[1] = v22;
  OUTLINED_FUNCTION_323();
  sub_1DC51686C();
  *v0 = sub_1DC515B5C();
  v0[1] = v23;
  OUTLINED_FUNCTION_323();
  sub_1DC51681C();
  sub_1DC5156BC();
  sub_1DC517FEC();
  (*(v5 + 8))(v2, v27);
  *v0 = 0;
  v0[1] = 0xE000000000000000;
  sub_1DC51684C();
  if (v28)
  {
    v24 = 1702195828;
  }

  else
  {
    v24 = 0x65736C6166;
  }

  if (v28)
  {
    v25 = 0xE400000000000000;
  }

  else
  {
    v25 = 0xE500000000000000;
  }

  v26 = (v13 + 7 * v8 + *(v1 + 56));
  MEMORY[0x1E1296160](v24, v25);

  *v26 = 0;
  v26[1] = 0xE000000000000000;
  OUTLINED_FUNCTION_34();
}

void sub_1DC3CD7C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_33();
  a19 = v26;
  a20 = v27;
  v550 = v28;
  v553 = v29;
  v568 = v30;
  v564 = v31;
  v565 = v32;
  v33 = sub_1DC5168FC();
  v34 = OUTLINED_FUNCTION_2_29(v33, &v552);
  v525 = v35;
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_14(v36);
  v37 = sub_1DC5162DC();
  v38 = OUTLINED_FUNCTION_2_29(v37, &v553);
  v557 = v39;
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_20_0(v42);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7D3A0, &unk_1DC522560);
  OUTLINED_FUNCTION_10(v43);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_14(v45);
  v46 = sub_1DC51107C();
  v47 = OUTLINED_FUNCTION_2_29(v46, &v569);
  v533 = v48;
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_20_0(v49);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CFB0, qword_1DC526050);
  OUTLINED_FUNCTION_10(v50);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_25();
  v562 = v52;
  v53 = OUTLINED_FUNCTION_12();
  v54 = type metadata accessor for DialogState(v53);
  v55 = OUTLINED_FUNCTION_10(v54);
  MEMORY[0x1EEE9AC00](v55);
  OUTLINED_FUNCTION_2_1();
  v561 = v56;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D388, &unk_1DC5283E8);
  v58 = OUTLINED_FUNCTION_10(v57);
  MEMORY[0x1EEE9AC00](v58);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v59);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_20_0(v60);
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D3B8, &qword_1DC528408);
  v62 = OUTLINED_FUNCTION_10(v61);
  MEMORY[0x1EEE9AC00](v62);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v63);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v64);
  OUTLINED_FUNCTION_62();
  v567 = v65;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C370, &qword_1DC5230E0);
  v67 = OUTLINED_FUNCTION_10(v66);
  MEMORY[0x1EEE9AC00](v67);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v68);
  OUTLINED_FUNCTION_62();
  v570 = v69;
  v70 = OUTLINED_FUNCTION_12();
  v563 = type metadata accessor for AssistantNLRequestHandler.NluResponseType(v70);
  OUTLINED_FUNCTION_0();
  v545 = v71;
  MEMORY[0x1EEE9AC00](v72);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v73);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_20_0(v74);
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D418, &qword_1DC528438);
  OUTLINED_FUNCTION_10(v75);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v76);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_14(v77);
  v78 = sub_1DC5161DC();
  v79 = OUTLINED_FUNCTION_2_29(v78, &v565);
  v537 = v80;
  MEMORY[0x1EEE9AC00](v79);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_14(v81);
  v82 = sub_1DC516F7C();
  v83 = OUTLINED_FUNCTION_2_29(v82, &a14);
  v554 = v84;
  MEMORY[0x1EEE9AC00](v83);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v85);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v86);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v87);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v88);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v89);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v90);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v91);
  OUTLINED_FUNCTION_53();
  MEMORY[0x1EEE9AC00](v92);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_14(v93);
  v94 = sub_1DC51172C();
  OUTLINED_FUNCTION_0();
  v559 = v95;
  MEMORY[0x1EEE9AC00](v96);
  OUTLINED_FUNCTION_7_21();
  v97 = sub_1DC5137CC();
  OUTLINED_FUNCTION_0();
  v548 = v98;
  MEMORY[0x1EEE9AC00](v99);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v100);
  OUTLINED_FUNCTION_38_3();
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D420, &unk_1DC528440);
  v102 = OUTLINED_FUNCTION_10(v101);
  MEMORY[0x1EEE9AC00](v102);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v103);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v104);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_14(v105);
  v106 = sub_1DC51170C();
  OUTLINED_FUNCTION_0();
  v547 = v107;
  MEMORY[0x1EEE9AC00](v108);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_101_0();
  MEMORY[0x1EEE9AC00](v109);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_20_0(v110);
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D4D0, &qword_1DC5285A0);
  OUTLINED_FUNCTION_10(v111);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v112);
  OUTLINED_FUNCTION_95();
  v575 = 0;
  v573 = MEMORY[0x1E69E7CC8];
  v574 = MEMORY[0x1E69E7CC8];
  v569 = v20;
  v113 = v563;
  v552 = v94;
  v543 = v23;
  v566 = v97;
  v542 = v22;
  v558 = v106;
  if (v568)
  {
    v114 = v568;
    *v24 = v568;
    v115 = v113;
    swift_storeEnumTagMultiPayload();
    v116 = OUTLINED_FUNCTION_21_12();
    __swift_storeEnumTagSinglePayload(v116, v117, v118, v115);
    swift_beginAccess();
    v119 = v114;
    v120 = v565;

    sub_1DC3BE61C(v24, v564, v120);
    v121 = swift_endAccess();
    v122 = (*MEMORY[0x1E69E7D40] & *v119) + 120;
    v539 = *((*MEMORY[0x1E69E7D40] & *v119) + 0x78);
    v538 = v122;
    v539(v121);
    sub_1DC51374C();
    v24 = v548 + 1;
    v568 = v548[1];
    v568(v22, v566);
    sub_1DC51171C();
    OUTLINED_FUNCTION_319();
    v123();
    OUTLINED_FUNCTION_213();
    Siri_Nlu_External_ResponseStatus.StatusCode.toOrchestrationStatusCode()(v124);
    v125 = *(v547 + 8);
    v125(v21, v106);
    OUTLINED_FUNCTION_39(v114, 1, v106);
    if (v126)
    {
      sub_1DC28EB30(v114, &qword_1ECC7D420, &unk_1DC528440);
      sub_1DC28D414();
      OUTLINED_FUNCTION_81_4();
      v127(v541);
      v128 = v119;
      v129 = v565;

      v130 = sub_1DC516F6C();
      v131 = sub_1DC517BAC();

      if (os_log_type_enabled(v130, v131))
      {
        v132 = OUTLINED_FUNCTION_140();
        v572[0] = OUTLINED_FUNCTION_143();
        *v132 = 136315394;
        OUTLINED_FUNCTION_196_1();
        OUTLINED_FUNCTION_289();
        v133();
        OUTLINED_FUNCTION_106();
        sub_1DC51374C();
        v568(v106, v566);
        v134 = sub_1DC51777C();
        sub_1DC291244(v134, v135, v572);
        OUTLINED_FUNCTION_373();
        *(v132 + 4) = v24;
        *(v132 + 12) = 2080;
        *(v132 + 14) = sub_1DC291244(v564, v129, v572);
        _os_log_impl(&dword_1DC287000, v130, v131, "Failed to map response status = %s for tcuId:%s", v132, 0x16u);
        OUTLINED_FUNCTION_219_0();
        OUTLINED_FUNCTION_54_12();
        OUTLINED_FUNCTION_67();

        OUTLINED_FUNCTION_62_0();
        v136(v541, v556);
      }

      else
      {

        v182 = OUTLINED_FUNCTION_229();
        v183(v182);
      }

      OUTLINED_FUNCTION_266();
      if (v184)
      {
        OUTLINED_FUNCTION_12_0();
        (*(v185 + 1056))(0, 1);
      }

      goto LABEL_125;
    }

    v537 = v119;
    v154 = v534;
    v155 = OUTLINED_FUNCTION_35_0();
    v156(v155);
    v157 = *MEMORY[0x1E69D0A98];
    v158 = *(v547 + 104);
    v536 = (v547 + 104);
    v518 = v158;
    v158(v21, v157, v106);
    OUTLINED_FUNCTION_108_1();
    v161 = sub_1DC3D8E40(v159, v160, MEMORY[0x1E69D0AB8]);
    sub_1DC5179EC();
    v517 = v161;
    sub_1DC5179EC();
    v541 = v21;
    v125(v21, v106);
    v162 = v572[0];
    v163 = v571[0];
    v523 = v572[0] == v571[0];
    v544 = (*(*v569 + 408))(v572);
    v165 = v164;
    sub_1DC3D02A0(v571, v564, v565);
    OUTLINED_FUNCTION_137();
    v166 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D320, &qword_1DC5283A0);
    if (!__swift_getEnumTagSinglePayload(v119, 1, v166))
    {
      *(v119 + *(v166 + 48)) = v162 == v163;
    }

    v165(v571, 0);
    v544(v572, 0);
    OUTLINED_FUNCTION_58_4();
    OUTLINED_FUNCTION_289();
    v168();
    sub_1DC51377C();
    v169 = OUTLINED_FUNCTION_162();
    v568(v169, v566);
    v170 = *(v162 + 16);

    v142 = v554;
    if (v170)
    {
      v125(v154, v558);

      v181 = 0;
    }

    else
    {
      v518(v541, *MEMORY[0x1E69D0AA0], v558);
      v24 = v517;
      sub_1DC5179EC();
      sub_1DC5179EC();

      v186 = OUTLINED_FUNCTION_73();
      (v125)(v186);
      v187 = OUTLINED_FUNCTION_77_1();
      (v125)(v187);
      v181 = v572[0] == v571[0];
    }

    v575 = v181;
    v177 = v569;
    OUTLINED_FUNCTION_269();
    v180 = v565;
    goto LABEL_20;
  }

  v541 = v21;
  v154 = v565;
  OUTLINED_FUNCTION_308();
  OUTLINED_FUNCTION_159_0();
  sub_1DC28F414(v137, v138, v139, v140);
  v141 = OUTLINED_FUNCTION_44();
  v142 = v539;
  OUTLINED_FUNCTION_39(v141, v143, v539);
  if (v126)
  {
    sub_1DC28EB30(v97, &qword_1ECC7D418, &qword_1DC528438);
    sub_1DC28D414();
    OUTLINED_FUNCTION_81_4();
    v24 = v556;
    v144(v25);
    v145 = sub_1DC516F6C();
    v146 = sub_1DC517BAC();
    if (OUTLINED_FUNCTION_25_0(v146))
    {
      v147 = OUTLINED_FUNCTION_35_8();
      OUTLINED_FUNCTION_18_12(v147);
      OUTLINED_FUNCTION_28_8();
      _os_log_impl(v148, v149, v150, v151, v94, 2u);
      OUTLINED_FUNCTION_40_0();
    }

    v152 = OUTLINED_FUNCTION_51();
    v153(v152);
    v181 = 0;
    v523 = 1;
    v177 = v569;
    v180 = v154;
LABEL_20:
    v179 = v564;
    goto LABEL_21;
  }

  (*(v537 + 4))(v536, v97, v539);
  OUTLINED_FUNCTION_32_5();
  v171 = OUTLINED_FUNCTION_74_0();
  v172(v171);
  v523 = 1;
  v173 = v563;
  swift_storeEnumTagMultiPayload();
  v174 = OUTLINED_FUNCTION_21_12();
  __swift_storeEnumTagSinglePayload(v174, v175, v176, v173);
  v177 = v569;
  swift_beginAccess();

  v178 = v564;
  sub_1DC3BE61C(v24, v564, v154);
  swift_endAccess();
  v179 = v178;
  v180 = v154;
  (*(v537 + 1))(v536, v539);
  v181 = 0;
  v142 = v554;
  OUTLINED_FUNCTION_269();
LABEL_21:
  OUTLINED_FUNCTION_205_1();
  OUTLINED_FUNCTION_119_3();
  v189 = (*(v188 + 536))();
  v544 = sub_1DC3526D0(v179, v180, v189);
  v191 = v190;

  if (v191)
  {
    OUTLINED_FUNCTION_119_3();
    v192 += 70;
    v193 = *v192;
    v194 = v192;

    v196 = v193(v195);
    v197 = *(v196 + 16);
    LODWORD(v568) = v181;
    if (v197 && (v198 = sub_1DC2AEB04(v544, v191), (v199 & 1) != 0))
    {
      v200 = *(*(v196 + 56) + 8 * v198);
    }

    else
    {
      v200 = MEMORY[0x1E69E7CD0];
    }

    if (!*(v200 + 16))
    {

      sub_1DC28D414();
      OUTLINED_FUNCTION_19_1();
      v399 = OUTLINED_FUNCTION_211_0();
      v400(v399);

      v401 = sub_1DC516F6C();
      sub_1DC517BAC();

      if (OUTLINED_FUNCTION_172())
      {
        OUTLINED_FUNCTION_63();
        v402 = OUTLINED_FUNCTION_111();
        v572[0] = v402;
        *v194 = 136315138;
        OUTLINED_FUNCTION_181_0();
        v403 = OUTLINED_FUNCTION_174();
        v406 = sub_1DC291244(v403, v404, v405);

        *(v194 + 4) = v406;
        OUTLINED_FUNCTION_16_0();
        _os_log_impl(v407, v408, v409, v410, v411, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v402);
        OUTLINED_FUNCTION_40_0();
        OUTLINED_FUNCTION_31();

        (*(v142 + 1))(v531, v24);
      }

      else
      {

        v420 = OUTLINED_FUNCTION_328();
        v421(v420, v24);
        OUTLINED_FUNCTION_181_0();
      }

      OUTLINED_FUNCTION_266();
      if ((v422 & 1) == 0)
      {
        goto LABEL_124;
      }

      goto LABEL_100;
    }

    v535 = v191;
    v201 = v200 + 56;
    v202 = 1 << *(v200 + 32);
    v203 = -1;
    if (v202 < 64)
    {
      v203 = ~(-1 << v202);
    }

    v204 = v203 & *(v200 + 56);
    v205 = OBJC_IVAR____TtC13CDMFoundation25AssistantNLRequestHandler_turnConstructionCandidateIdToNLUResponse;

    v539 = v205;
    OUTLINED_FUNCTION_72_6();
    swift_beginAccess();
    v206 = 0;
    OUTLINED_FUNCTION_62_7();
    v534 = v207;
    OUTLINED_FUNCTION_62_7();
    v532 = v208;
    OUTLINED_FUNCTION_62_7();
    v531 = v209;
    OUTLINED_FUNCTION_62_7();
    v533 = v211;
    v212 = MEMORY[0x1E69E7CC8];
    v548 = MEMORY[0x1E69E7CC8];
    v213 = v551;
    v214 = v549;
    v547 = v200 + 56;
    v537 = v210;
    v538 = v200;
    if (v204)
    {
      while (1)
      {
        v536 = v212;
        v215 = v177;
LABEL_35:
        v217 = (*(v200 + 48) + ((v206 << 10) | (16 * __clz(__rbit64(v204)))));
        v219 = *v217;
        v218 = v217[1];
        v220 = *(v539 + v215);
        v221 = *(v220 + 16);

        v222 = MEMORY[0x1E69E7D40];
        v568 = v218;
        v559 = v219;
        if (!v221 || (v223 = OUTLINED_FUNCTION_51(), v225 = sub_1DC2AEB04(v223, v224), (v226 & 1) == 0))
        {

          OUTLINED_FUNCTION_216_0();

          sub_1DC28D414();
          OUTLINED_FUNCTION_191_1();
          v425 = *(v424 - 256);
          OUTLINED_FUNCTION_70_7();
          v426 = v530;
          v427 = v556;
          v428(v530);
          v429 = v568;

          v430 = sub_1DC516F6C();
          sub_1DC517B9C();
          OUTLINED_FUNCTION_354();

          if (OUTLINED_FUNCTION_172())
          {
            OUTLINED_FUNCTION_63();
            v571[0] = OUTLINED_FUNCTION_73_5();
            *v200 = 136315138;
            v431 = OUTLINED_FUNCTION_34_3();
            v433 = sub_1DC291244(v431, v429, v432);

            *(v200 + 4) = v433;
            OUTLINED_FUNCTION_27_16();
            _os_log_impl(v434, v435, v436, v437, v438, 0xCu);
            OUTLINED_FUNCTION_53_12();
            OUTLINED_FUNCTION_40_0();

            (*(v425 + 8))(v530, v427);
          }

          else
          {

            (*(v425 + 8))(v426, v427);
          }

          OUTLINED_FUNCTION_266();
          if (v461)
          {
            OUTLINED_FUNCTION_225_1();
            goto LABEL_121;
          }

          goto LABEL_124;
        }

        sub_1DC3D8B40(*(v220 + 56) + *(v545 + 72) * v225, v560);

        OUTLINED_FUNCTION_19();
        v227 = v214;
        v228 = v566;
        __swift_storeEnumTagSinglePayload(v229, v230, v231, v566);
        OUTLINED_FUNCTION_19();
        __swift_storeEnumTagSinglePayload(v232, v233, v234, v558);
        OUTLINED_FUNCTION_193_0();
        sub_1DC3D8B40(v235, v236);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          OUTLINED_FUNCTION_112_4();
          sub_1DC3D8824();
        }

        else
        {
          v237 = *v220;
          v238 = *((*v222 & **v220) + 0x78);
          OUTLINED_FUNCTION_76_1();
          v238();
          OUTLINED_FUNCTION_61();
          __swift_storeEnumTagSinglePayload(v239, v240, v241, v228);
          v242 = OUTLINED_FUNCTION_264();
          sub_1DC384434(v242, v243, &qword_1ECC7C370, &qword_1DC5230E0);
          OUTLINED_FUNCTION_76_1();
          v238();
          OUTLINED_FUNCTION_213();
          sub_1DC51374C();
          OUTLINED_FUNCTION_37();
          v244 = OUTLINED_FUNCTION_47_0();
          v245(v244);
          OUTLINED_FUNCTION_106();
          sub_1DC51171C();
          OUTLINED_FUNCTION_37();
          OUTLINED_FUNCTION_319();
          v246();
          OUTLINED_FUNCTION_213();
          Siri_Nlu_External_ResponseStatus.StatusCode.toOrchestrationStatusCode()(v247);

          OUTLINED_FUNCTION_37();
          v248(v228, v558);
          sub_1DC384434(v238, v227, &qword_1ECC7D420, &unk_1DC528440);
        }

        v249 = v546;
        v250 = v555;
        v214 = v227;
        v251 = v569;
        OUTLINED_FUNCTION_119_3();
        if (*((*(v252 + 392))() + 16))
        {
          v253 = sub_1DC2AEB04(v564, v565);
          if (v254)
          {
            v250 = v253;
            v255 = OUTLINED_FUNCTION_212();
            v257 = __swift_instantiateConcreteTypeFromMangledNameV2(v255, v256);
            OUTLINED_FUNCTION_35();
            OUTLINED_FUNCTION_159_0();
            sub_1DC28F414(v258, v259, &qword_1ECC7D320, &qword_1DC5283A0);

            OUTLINED_FUNCTION_61();
            v263 = v257;
            goto LABEL_46;
          }

          v266 = OUTLINED_FUNCTION_74();
          __swift_instantiateConcreteTypeFromMangledNameV2(v266, v267);
          v250 = v555;
        }

        else
        {

          v264 = OUTLINED_FUNCTION_74();
          __swift_instantiateConcreteTypeFromMangledNameV2(v264, v265);
        }

        OUTLINED_FUNCTION_19();
LABEL_46:
        __swift_storeEnumTagSinglePayload(v260, v261, v262, v263);
        v268 = OUTLINED_FUNCTION_74();
        __swift_instantiateConcreteTypeFromMangledNameV2(v268, v269);
        v270 = OUTLINED_FUNCTION_44();
        if (!__swift_getEnumTagSinglePayload(v270, v271, v272))
        {
          sub_1DC51112C();
        }

        sub_1DC28EB30(v250, &qword_1ECC7D388, &unk_1DC5283E8);
        v273 = sub_1DC5112EC();
        OUTLINED_FUNCTION_214_0();
        __swift_storeEnumTagSinglePayload(v274, v275, v276, v273);
        OUTLINED_FUNCTION_193_0();
        OUTLINED_FUNCTION_263();
        sub_1DC28F414(v277, v278, v279, v280);
        v281 = OUTLINED_FUNCTION_34_11();
        OUTLINED_FUNCTION_39(v281, v282, v273);
        if (v126)
        {
          v283 = OUTLINED_FUNCTION_74();
          sub_1DC28EB30(v283, v284, &qword_1DC528408);
          sub_1DC5119DC();
          OUTLINED_FUNCTION_19();
          __swift_storeEnumTagSinglePayload(v285, v286, v287, v288);
        }

        else
        {
          OUTLINED_FUNCTION_213();
          sub_1DC51129C();
          OUTLINED_FUNCTION_7_1();
          v289 = OUTLINED_FUNCTION_31_0();
          v290(v289);
          v291 = sub_1DC51104C();
          OUTLINED_FUNCTION_37();
          v292(&qword_1ECC7D3B8, v540);
          if (*(v291 + 16))
          {
            v293 = sub_1DC5119DC();
            OUTLINED_FUNCTION_35();
            v294 = OUTLINED_FUNCTION_261();
            v295(v294);

            OUTLINED_FUNCTION_61();
            v299 = v293;
          }

          else
          {

            sub_1DC5119DC();
            OUTLINED_FUNCTION_19();
          }

          __swift_storeEnumTagSinglePayload(v296, v297, v298, v299);
        }

        OUTLINED_FUNCTION_193_0();
        OUTLINED_FUNCTION_263();
        sub_1DC28F414(v300, v301, v302, v303);
        v304 = OUTLINED_FUNCTION_34_11();
        OUTLINED_FUNCTION_39(v304, v305, v273);
        if (v126)
        {
          v306 = OUTLINED_FUNCTION_74();
          sub_1DC28EB30(v306, v307, &qword_1DC528408);
          v310 = 1;
        }

        else
        {
          sub_1DC5112BC();
          OUTLINED_FUNCTION_7_1();
          v308 = OUTLINED_FUNCTION_31_0();
          v309(v308);
          v310 = 0;
        }

        v311 = sub_1DC51190C();
        __swift_storeEnumTagSinglePayload(v249, v310, 1, v311);
        v312 = v561;
        v313 = sub_1DC3B3BC0(v562, v249, v561);
        MEMORY[0x1EEE9AC00](v313);
        v314 = v570;
        *(&v516 - 6) = v570;
        *(&v516 - 5) = v214;
        *(&v516 - 4) = &v575;
        *(&v516 - 3) = v553;
        *(&v516 - 2) = v251;
        *(&v516 - 1) = v312;
        v315 = objc_allocWithZone(sub_1DC51616C());
        OUTLINED_FUNCTION_43_12();
        v316 = sub_1DC5160FC();
        v154 = v316;
        if (v316)
        {
          v317 = v316;
          v318 = v574;
          swift_isUniquelyReferenced_nonNull_native();
          v571[0] = v318;
          v319 = v559;
          v320 = OUTLINED_FUNCTION_51();
          v322 = sub_1DC2AEB04(v320, v321);
          if (__OFADD__(*(v318 + 16), (v323 & 1) == 0))
          {
            goto LABEL_137;
          }

          v324 = v322;
          v325 = v323;
          v548 = v154;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7D3C0, &qword_1DC528410);
          if (sub_1DC517FFC())
          {
            v326 = v568;
            v327 = sub_1DC2AEB04(v319, v568);
            v329 = v570;
            v214 = v549;
            if ((v325 & 1) != (v328 & 1))
            {
              goto LABEL_140;
            }

            v324 = v327;
          }

          else
          {
            v329 = v570;
            v214 = v549;
            v326 = v568;
          }

          v331 = v571[0];
          if (v325)
          {
            v337 = *(v571[0] + 56);
            v338 = *(v337 + 8 * v324);
            *(v337 + 8 * v324) = v317;
          }

          else
          {
            OUTLINED_FUNCTION_280(v571[0] + 8 * (v324 >> 6));
            v339 = (v331[6] + 16 * v324);
            *v339 = v319;
            v339[1] = v326;
            *(v331[7] + 8 * v324) = v317;
            v340 = v331[2];
            v341 = __OFADD__(v340, 1);
            v342 = v340 + 1;
            if (v341)
            {
              goto LABEL_139;
            }

            v331[2] = v342;
          }

          v574 = v331;
          v314 = v329;
          v154 = v548;
        }

        else
        {
          v330 = OUTLINED_FUNCTION_51();
          v331 = v548;
          v333 = sub_1DC2AEB04(v330, v332);
          if (v334)
          {
            v335 = v333;
            v336 = v574;
            swift_isUniquelyReferenced_nonNull_native();
            v571[0] = v336;
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7D3C0, &qword_1DC528410);
            v214 = v549;
            v314 = v570;
            sub_1DC517FFC();
            v331 = v571[0];

            sub_1DC51800C();
            v574 = v331;
          }
        }

        v548 = v331;
        EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v314, 1, v566);
        v344 = MEMORY[0x1E69E7CC0];
        if (!EnumTagSinglePayload)
        {
          v344 = sub_1DC51375C();
        }

        v345 = v573;
        swift_isUniquelyReferenced_nonNull_native();
        v571[0] = v345;
        v346 = OUTLINED_FUNCTION_51();
        v348 = sub_1DC2AEB04(v346, v347);
        if (__OFADD__(*(v345 + 16), (v349 & 1) == 0))
        {
          goto LABEL_136;
        }

        v350 = v348;
        v351 = v349;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D4D8, &qword_1DC5285A8);
        if (sub_1DC517FFC())
        {
          v352 = OUTLINED_FUNCTION_34_3();
          v353 = sub_1DC2AEB04(v352, v568);
          v177 = v569;
          if ((v351 & 1) != (v354 & 1))
          {
            goto LABEL_140;
          }

          v350 = v353;
        }

        else
        {
          v177 = v569;
        }

        v212 = v571[0];
        if (v351)
        {
          *(*(v571[0] + 56) + 8 * v350) = v344;
        }

        else
        {
          OUTLINED_FUNCTION_280(v571[0] + 8 * (v350 >> 6));
          v355 = (v212[6] + 16 * v350);
          v356 = v568;
          *v355 = v559;
          v355[1] = v356;
          *(v212[7] + 8 * v350) = v344;
          v357 = v212[2];
          v341 = __OFADD__(v357, 1);
          v358 = v357 + 1;
          if (v341)
          {
            goto LABEL_138;
          }

          v212[2] = v358;
        }

        v204 &= v204 - 1;

        sub_1DC28EB30(v567, &qword_1ECC7D3B8, &qword_1DC528408);
        OUTLINED_FUNCTION_112_4();
        sub_1DC3D8824();
        v573 = v212;
        OUTLINED_FUNCTION_1_32();
        sub_1DC3D8824();
        sub_1DC28EB30(v214, &qword_1ECC7D420, &unk_1DC528440);
        sub_1DC28EB30(v570, &qword_1ECC7C370, &qword_1DC5230E0);
        OUTLINED_FUNCTION_205_1();
        v213 = v551;
        v200 = v538;
        v201 = v547;
        v210 = v537;
        if (!v204)
        {
          goto LABEL_31;
        }
      }
    }

    while (1)
    {
LABEL_31:
      v216 = v206 + 1;
      if (__OFADD__(v206, 1))
      {
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
        sub_1DC51829C();
        __break(1u);
        return;
      }

      if (v216 >= v210)
      {
        break;
      }

      v204 = *(v201 + 8 * v216);
      ++v206;
      if (v204)
      {
        v536 = v212;
        v215 = v177;
        v206 = v216;
        goto LABEL_35;
      }
    }

    v371 = *(v200 + 16);

    if (v371 == v548[2])
    {
      v373 = v544;
      if (*(v177 + OBJC_IVAR____TtC13CDMFoundation25AssistantNLRequestHandler_isMUXEnabled) != 1)
      {
        MEMORY[0x1EEE9AC00](v372);
        *(&v516 - 6) = v177;
        *(&v516 - 5) = v373;
        v439 = v535;
        *(&v516 - 4) = v535;
        *(&v516 - 3) = &v574;
        *(&v516 - 2) = &v573;
        v440 = objc_allocWithZone(sub_1DC51539C());
        OUTLINED_FUNCTION_170_1();
        sub_1DC51530C();
        OUTLINED_FUNCTION_269();
        v442 = v564;
        if (v441)
        {
          v443 = v441;
          sub_1DC2A0AE0();
          OUTLINED_FUNCTION_44_8();
          v444 = v524;
          v445 = v526;
          v446(v524);
          v447 = swift_allocObject();
          v447[2] = v177;
          v447[3] = v373;
          v447[4] = v439;
          v447[5] = v442;
          v447[6] = v565;

          OUTLINED_FUNCTION_348();
          sub_1DC5168CC();

          v448 = OUTLINED_FUNCTION_149();
          v449(v448);
          sub_1DC28D414();
          OUTLINED_FUNCTION_81_4();
          v450 = OUTLINED_FUNCTION_211_0();
          v451(v450);

          v452 = sub_1DC516F6C();
          v453 = sub_1DC517B9C();

          if (os_log_type_enabled(v452, v453))
          {
            OUTLINED_FUNCTION_63();
            v454 = v439;
            v455 = OUTLINED_FUNCTION_73_5();
            v571[0] = v455;
            *v445 = 136315138;
            v456 = sub_1DC291244(v544, v454, v571);
            OUTLINED_FUNCTION_181_0();

            *(v445 + 4) = v456;
            OUTLINED_FUNCTION_28_8();
            OUTLINED_FUNCTION_236_0(v457, v458, v459, v460);
            __swift_destroy_boxed_opaque_existential_1Tm(v455);
            OUTLINED_FUNCTION_58();
            OUTLINED_FUNCTION_40_0();

            (*(v444 + 8))(v528, v213);
          }

          else
          {

            v486 = OUTLINED_FUNCTION_328();
            v487(v486, v213);
          }

          v419 = v550;
          OUTLINED_FUNCTION_121_1((v177 + OBJC_IVAR____TtC13CDMFoundation25AssistantNLRequestHandler_messagePublisher), *(v177 + OBJC_IVAR____TtC13CDMFoundation25AssistantNLRequestHandler_messagePublisher + 24));
          OUTLINED_FUNCTION_63_0();
          sub_1DC515D8C();

          goto LABEL_119;
        }

        sub_1DC28D414();
        OUTLINED_FUNCTION_191_1();
        OUTLINED_FUNCTION_44_8();
        v473(v521);

        v474 = sub_1DC516F6C();
        sub_1DC517BAC();
        OUTLINED_FUNCTION_354();

        if (OUTLINED_FUNCTION_172())
        {
          v475 = OUTLINED_FUNCTION_140();
          v571[0] = OUTLINED_FUNCTION_143();
          *v475 = 136315394;
          v476 = OUTLINED_FUNCTION_174();
          v479 = sub_1DC291244(v476, v477, v478);
          OUTLINED_FUNCTION_216_0();

          *(v475 + 4) = v479;
          *(v475 + 12) = 2080;
          *(v475 + 14) = sub_1DC291244(*(v177 + OBJC_IVAR____TtC13CDMFoundation25AssistantNLRequestHandler_requestId), *(v177 + OBJC_IVAR____TtC13CDMFoundation25AssistantNLRequestHandler_requestId + 8), v571);
          OUTLINED_FUNCTION_16_0();
          _os_log_impl(v480, v481, v482, v483, v484, 0x16u);
          swift_arrayDestroy();
          OUTLINED_FUNCTION_40_0();
          OUTLINED_FUNCTION_31();
        }

        else
        {
        }

        v488 = OUTLINED_FUNCTION_264();
        v489(v488);
        v490 = v550;

        if ((v490 & 1) == 0)
        {
          goto LABEL_124;
        }

LABEL_100:
        OUTLINED_FUNCTION_35_15();
        OUTLINED_FUNCTION_225_1();
        v423();
        goto LABEL_124;
      }

      OUTLINED_FUNCTION_119_3();
      v375 = (*(v374 + 392))();
      v376 = v529;
      v377 = v565;
      v378 = OUTLINED_FUNCTION_73();
      sub_1DC3BF988(v378, v379, v375, v380);

      v381 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D320, &qword_1DC5283A0);
      v382 = OUTLINED_FUNCTION_34_11();
      v384 = __swift_getEnumTagSinglePayload(v382, v383, v381);
      v385 = v556;
      if (v384)
      {
        OUTLINED_FUNCTION_216_0();

        sub_1DC28EB30(v376, &qword_1ECC7D388, &unk_1DC5283E8);
        sub_1DC28D414();
        OUTLINED_FUNCTION_191_1();
        v387 = *(v386 - 256);
        OUTLINED_FUNCTION_44_8();
        v388(v213);

        v389 = sub_1DC516F6C();
        sub_1DC517BAC();

        if (OUTLINED_FUNCTION_172())
        {
          OUTLINED_FUNCTION_63();
          v390 = OUTLINED_FUNCTION_111();
          v571[0] = v390;
          *v377 = 136315138;
          OUTLINED_FUNCTION_74_0();
          OUTLINED_FUNCTION_181_0();
          *(v377 + 4) = sub_1DC291244(v391, v392, v393);
          OUTLINED_FUNCTION_16_0();
          _os_log_impl(v394, v395, v396, v397, v398, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v390);
          OUTLINED_FUNCTION_40_0();
          OUTLINED_FUNCTION_31();

          (*(v387 + 8))(v551, v385);
        }

        else
        {

          (*(v387 + 8))(v213, v385);
        }

        OUTLINED_FUNCTION_266();
        if ((v485 & 1) == 0)
        {
          goto LABEL_124;
        }

LABEL_120:
        OUTLINED_FUNCTION_35_15();
        OUTLINED_FUNCTION_225_1();
LABEL_121:
        v462();
LABEL_124:

        goto LABEL_125;
      }

      v463 = v154[2];
      v464 = OUTLINED_FUNCTION_83(&v547);
      v463(v464);
      sub_1DC28EB30(v376, &qword_1ECC7D388, &unk_1DC5283E8);
      OUTLINED_FUNCTION_278();
      v465 = v522;
      v466 = OUTLINED_FUNCTION_147_0();
      v468 = v467(v466);
      MEMORY[0x1EEE9AC00](v468);
      *(&v516 - 6) = v465;
      *(&v516 - 5) = v177;
      v469 = v154;
      v470 = v535;
      *(&v516 - 4) = v373;
      *(&v516 - 3) = v470;
      *(&v516 - 2) = &v574;
      *(&v516 - 1) = &v573;
      objc_allocWithZone(sub_1DC5155BC());
      OUTLINED_FUNCTION_170_1();
      v471 = sub_1DC51552C();
      if (!v471)
      {
        sub_1DC28D414();
        OUTLINED_FUNCTION_191_1();
        v492 = *(v491 - 256);
        OUTLINED_FUNCTION_90();
        v493 = v520;
        v494(v520);
        v495 = v519;
        v496 = OUTLINED_FUNCTION_264();
        v497 = v527;
        v463(v496);

        v498 = sub_1DC516F6C();
        v499 = sub_1DC517BAC();

        if (OUTLINED_FUNCTION_301())
        {
          v500 = OUTLINED_FUNCTION_82();
          v571[0] = swift_slowAlloc();
          *v500 = 136315650;
          OUTLINED_FUNCTION_0_49();
          sub_1DC3D8E40(v501, v502, MEMORY[0x1E69D08E0]);
          v503 = v495;
          sub_1DC51823C();
          OUTLINED_FUNCTION_163();
          v504 = v497;
          OUTLINED_FUNCTION_262();
          LODWORD(v570) = v499;
          OUTLINED_FUNCTION_344();
          v499();
          v505 = OUTLINED_FUNCTION_151();
          sub_1DC291244(v505, v506, v507);
          OUTLINED_FUNCTION_155_0();

          *(v500 + 4) = v503;
          *(v500 + 12) = 2080;
          v508 = sub_1DC291244(v544, v535, v571);
          OUTLINED_FUNCTION_216_0();

          *(v500 + 14) = v508;
          *(v500 + 22) = 2080;
          *(v500 + 24) = sub_1DC291244(*(v177 + OBJC_IVAR____TtC13CDMFoundation25AssistantNLRequestHandler_requestId), *(v177 + OBJC_IVAR____TtC13CDMFoundation25AssistantNLRequestHandler_requestId + 8), v571);
          OUTLINED_FUNCTION_85_6();
          _os_log_impl(v509, v510, v511, v512, v513, 0x20u);
          swift_arrayDestroy();
          OUTLINED_FUNCTION_66();
          OUTLINED_FUNCTION_40_0();

          (*(v492 + 8))(v520, v556);
        }

        else
        {

          v504 = v497;
          OUTLINED_FUNCTION_262();
          OUTLINED_FUNCTION_344();
          v499();
          (*(v492 + 8))(v493, v556);
        }

        v514 = v550;
        (v499)(v522, v504);

        if (v514)
        {
          OUTLINED_FUNCTION_35_15();
          OUTLINED_FUNCTION_225_1();
          v515();
        }

        goto LABEL_124;
      }

      v472 = v471;

      OUTLINED_FUNCTION_121_1((v177 + OBJC_IVAR____TtC13CDMFoundation25AssistantNLRequestHandler_messagePublisher), *(v177 + OBJC_IVAR____TtC13CDMFoundation25AssistantNLRequestHandler_messagePublisher + 24));
      OUTLINED_FUNCTION_63_0();
      sub_1DC515D8C();

      (v469[1])(v465, v527);
      v419 = v550;
    }

    else
    {
      OUTLINED_FUNCTION_216_0();

      v419 = v550;
      OUTLINED_FUNCTION_181_0();
    }

LABEL_119:

    if ((v419 & 1) == 0)
    {
      OUTLINED_FUNCTION_216_0();
      goto LABEL_124;
    }

    goto LABEL_120;
  }

  sub_1DC28D414();
  OUTLINED_FUNCTION_19_1();
  v359 = v532;
  v360(v532);

  v361 = sub_1DC516F6C();
  sub_1DC517BAC();

  if (OUTLINED_FUNCTION_172())
  {
    OUTLINED_FUNCTION_63();
    v362 = OUTLINED_FUNCTION_111();
    v572[0] = v362;
    *v180 = 136315138;
    v363 = OUTLINED_FUNCTION_46_0();
    *(v180 + 4) = sub_1DC291244(v363, v364, v365);
    OUTLINED_FUNCTION_16_0();
    _os_log_impl(v366, v367, v368, v369, v370, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v362);
    OUTLINED_FUNCTION_66();
    OUTLINED_FUNCTION_31();

    (*(v142 + 1))(v359, v556);
  }

  else
  {

    v412 = OUTLINED_FUNCTION_78_6();
    v414(v412, v413);
  }

  OUTLINED_FUNCTION_266();
  if (v415)
  {
    OUTLINED_FUNCTION_35_15();
    OUTLINED_FUNCTION_225_1();
    v418(v416, v417);
  }

LABEL_125:
  OUTLINED_FUNCTION_34();
}

void (*sub_1DC3D02A0(void *a1, uint64_t a2, uint64_t a3))(void *a1)
{
  v6 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v6;
  v6[4] = sub_1DC3D765C(v6, a2, a3);
  return sub_1DC337000;
}

void sub_1DC3D0314()
{
  OUTLINED_FUNCTION_33();
  v70 = v5;
  v7 = v6;
  v67 = v8;
  v68 = v9;
  v66 = v10;
  v12 = v11;
  v14 = v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D390, &qword_1DC527790);
  OUTLINED_FUNCTION_10(v15);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_25();
  v69 = v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D398, &qword_1DC5283F8);
  v19 = OUTLINED_FUNCTION_10(v18);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_37_5();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_313(v21);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D418, &qword_1DC528438);
  OUTLINED_FUNCTION_10(v22);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_78_8();
  v24 = sub_1DC5137CC();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_271(v26);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7D4B0, &unk_1DC528580);
  OUTLINED_FUNCTION_10(v27);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_24_0();
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D420, &unk_1DC528440);
  v30 = OUTLINED_FUNCTION_10(v29);
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_123();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_42_3();
  v32 = OUTLINED_FUNCTION_34_11();
  if (!__swift_getEnumTagSinglePayload(v32, v33, v24))
  {
    sub_1DC51377C();
  }

  sub_1DC51610C();
  sub_1DC28F414(v66, v0, &qword_1ECC7D420, &unk_1DC528440);
  sub_1DC51170C();
  v34 = OUTLINED_FUNCTION_155_0();
  OUTLINED_FUNCTION_39(v34, 1, v14);
  if (v35)
  {
    OUTLINED_FUNCTION_7_1();
    (*(v36 + 104))(v1);
    OUTLINED_FUNCTION_39(v0, 1, v14);
    if (!v35)
    {
      sub_1DC28EB30(v0, &qword_1ECC7D420, &unk_1DC528440);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7_1();
    v37 = OUTLINED_FUNCTION_41();
    v38(v37);
  }

  OUTLINED_FUNCTION_61();
  __swift_storeEnumTagSinglePayload(v39, v40, v41, v14);
  sub_1DC51612C();
  if (*v67)
  {
    v42 = v12;
    if (__swift_getEnumTagSinglePayload(v12, 1, v24))
    {
      sub_1DC511EEC();
      OUTLINED_FUNCTION_19();
      __swift_storeEnumTagSinglePayload(v43, v44, v45, v46);
    }

    else
    {
      v51 = OUTLINED_FUNCTION_151();
      v52(v51);
      sub_1DC33D8D0(v3);
      v53 = OUTLINED_FUNCTION_48_0();
      v54(v53);
    }
  }

  else
  {
    sub_1DC511EEC();
    OUTLINED_FUNCTION_19();
    __swift_storeEnumTagSinglePayload(v47, v48, v49, v50);
    v42 = v12;
  }

  OUTLINED_FUNCTION_336();
  sub_1DC51611C();
  sub_1DC28F414(v68, v4, &qword_1ECC7D418, &qword_1DC528438);
  sub_1DC51613C();
  if (!__swift_getEnumTagSinglePayload(v42, 1, v24))
  {
    sub_1DC51376C();
  }

  v55 = sub_1DC511E5C();
  OUTLINED_FUNCTION_214_0();
  __swift_storeEnumTagSinglePayload(v56, v57, v58, v55);
  (*(*v7 + 1000))(v2);
  sub_1DC28EB30(v2, &qword_1ECC7D398, &qword_1DC5283F8);
  v59 = OUTLINED_FUNCTION_32_9();
  __swift_storeEnumTagSinglePayload(v59, v60, v61, v55);
  OUTLINED_FUNCTION_312();
  sub_1DC51614C();
  OUTLINED_FUNCTION_16_11();
  sub_1DC3D8B40(v70, v69);
  type metadata accessor for DialogState(0);
  OUTLINED_FUNCTION_292();
  OUTLINED_FUNCTION_61();
  __swift_storeEnumTagSinglePayload(v62, v63, v64, v65);
  (*(*v7 + 1008))(v69);
  OUTLINED_FUNCTION_123_0();
  sub_1DC28EB30(v69, &qword_1ECC7D390, &qword_1DC527790);
  sub_1DC51615C();
  OUTLINED_FUNCTION_34();
}

void sub_1DC3D0854()
{
  OUTLINED_FUNCTION_33();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7CA30, &qword_1DC522A00);
  OUTLINED_FUNCTION_10(v4);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_40_3();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CEE8, &qword_1DC528550);
  OUTLINED_FUNCTION_10(v6);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_95();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D010, &qword_1DC5263B0);
  OUTLINED_FUNCTION_10(v8);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_78_8();
  v10 = sub_1DC5162DC();
  OUTLINED_FUNCTION_35();
  v11 = OUTLINED_FUNCTION_176();
  v12(v11);
  OUTLINED_FUNCTION_61();
  __swift_storeEnumTagSinglePayload(v13, v14, v15, v10);
  sub_1DC51558C();
  v16 = *MEMORY[0x1E69D0450];
  v17 = sub_1DC515DBC();
  OUTLINED_FUNCTION_35();
  (*(v18 + 104))(v1, v16, v17);
  v19 = OUTLINED_FUNCTION_21_12();
  OUTLINED_FUNCTION_378(v19, v20, v21, v17);
  sub_1DC51557C();
  v22 = OBJC_IVAR____TtC13CDMFoundation25AssistantNLRequestHandler_sessionId;
  v23 = sub_1DC510B6C();
  OUTLINED_FUNCTION_35();
  (*(v24 + 16))(v0, v3 + v22, v23);
  OUTLINED_FUNCTION_61();
  __swift_storeEnumTagSinglePayload(v25, v26, v27, v23);
  sub_1DC5155AC();

  sub_1DC51553C();

  OUTLINED_FUNCTION_229();
  sub_1DC51559C();

  OUTLINED_FUNCTION_30();
  sub_1DC51554C();

  sub_1DC3C3448(v28);

  sub_1DC51555C();

  sub_1DC51556C();
  OUTLINED_FUNCTION_34();
}

void sub_1DC3D0AD0()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_341();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7CA30, &qword_1DC522A00);
  OUTLINED_FUNCTION_10(v4);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_40_3();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CEE8, &qword_1DC528550);
  OUTLINED_FUNCTION_10(v6);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_95();
  v8 = *MEMORY[0x1E69D0450];
  v9 = sub_1DC515DBC();
  OUTLINED_FUNCTION_35();
  (*(v10 + 104))(v1, v8, v9);
  v11 = OUTLINED_FUNCTION_21_12();
  OUTLINED_FUNCTION_378(v11, v12, v13, v9);
  sub_1DC51535C();
  v14 = OBJC_IVAR____TtC13CDMFoundation25AssistantNLRequestHandler_sessionId;
  v15 = sub_1DC510B6C();
  OUTLINED_FUNCTION_35();
  (*(v16 + 16))(v0, v3 + v14, v15);
  OUTLINED_FUNCTION_61();
  __swift_storeEnumTagSinglePayload(v17, v18, v19, v15);
  sub_1DC51538C();

  OUTLINED_FUNCTION_264();
  sub_1DC51531C();

  sub_1DC51537C();

  OUTLINED_FUNCTION_30();
  sub_1DC51532C();

  sub_1DC3C3448(v20);

  sub_1DC51533C();

  sub_1DC51534C();
  OUTLINED_FUNCTION_34();
}

void sub_1DC3D0CAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_33();
  a19 = v23;
  a20 = v24;
  v165 = v21;
  v176 = v25;
  OUTLINED_FUNCTION_38_2();
  v26 = sub_1DC5161DC();
  v27 = OUTLINED_FUNCTION_2_29(v26, &a9);
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_14(v28);
  v29 = sub_1DC516F7C();
  OUTLINED_FUNCTION_0();
  v31 = v30;
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_98_1();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_62();
  v180 = v38;
  OUTLINED_FUNCTION_12();
  v184 = sub_1DC511EEC();
  OUTLINED_FUNCTION_0();
  v171 = v39;
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_15();
  v179 = v41;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_62();
  v189 = v43;
  OUTLINED_FUNCTION_12();
  v44 = sub_1DC51164C();
  OUTLINED_FUNCTION_0();
  v46 = v45;
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_2_1();
  v175 = v48;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C170, &qword_1DC522F38);
  OUTLINED_FUNCTION_10(v49);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v50);
  OUTLINED_FUNCTION_11_1();
  v51 = sub_1DC51122C();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v52);
  OUTLINED_FUNCTION_1();
  v55 = v54 - v53;
  v56 = sub_1DC51377C();
  sub_1DC3C18F8(v56, MEMORY[0x1E69D09E0], v22);

  OUTLINED_FUNCTION_30_8(v22);
  if (v93)
  {
    sub_1DC28EB30(v22, &qword_1ECC7C170, &qword_1DC522F38);
    v57 = sub_1DC28D414();
    (*(v31 + 16))(v20, v57, v29);
    v58 = sub_1DC516F6C();
    v59 = sub_1DC517B9C();
    if (OUTLINED_FUNCTION_25_0(v59))
    {
      v60 = OUTLINED_FUNCTION_35_8();
      OUTLINED_FUNCTION_18_12(v60);
      OUTLINED_FUNCTION_28_8();
      _os_log_impl(v61, v62, v63, v64, v51, 2u);
      OUTLINED_FUNCTION_40_0();
    }

    v65 = OUTLINED_FUNCTION_229();
    v66(v65);
  }

  else
  {
    v167 = v31;
    v67 = OUTLINED_FUNCTION_50_0();
    v163 = v51;
    v68(v67);
    v69 = *(sub_1DC5111AC() + 16);
    v182 = v29;
    if (v69)
    {
      v72 = *(v46 + 16);
      v71 = v46 + 16;
      v70 = v72;
      OUTLINED_FUNCTION_24();
      v75 = v73 + v74;
      v185 = (v71 - 8);
      v187 = *(v71 + 56);
      OUTLINED_FUNCTION_178_1();
      v183 = (v76 + 8);
      v77 = MEMORY[0x1E69E7CC0];
      v169 = *(v78 + 2112);
      v173 = v44;
      v174 = v55;
      v172 = v72;
      while (1)
      {
        v79 = OUTLINED_FUNCTION_31_0();
        v70(v79);
        if (sub_1DC51151C())
        {
          break;
        }

        v90 = OUTLINED_FUNCTION_288();
        v91(v90);
LABEL_29:
        v75 += v187;
        if (!--v69)
        {
          v108 = v77;

          goto LABEL_32;
        }
      }

      sub_1DC51161C();
      v80 = sub_1DC28D414();
      v81 = OUTLINED_FUNCTION_288();
      v181 = v82;
      (v82)(v81);
      v83 = v176;
      v84 = sub_1DC516F6C();
      v85 = sub_1DC517B9C();

      if (os_log_type_enabled(v84, v85))
      {
        v177 = v77;
        v86 = OUTLINED_FUNCTION_63();
        v190 = OUTLINED_FUNCTION_82();
        *v86 = v169;
        v87 = sub_1DC515B5C();
        OUTLINED_FUNCTION_375(v87, v88);
        OUTLINED_FUNCTION_334();

        *(v86 + 4) = v29;
        v29 = v182;
        _os_log_impl(&dword_1DC287000, v84, v85, "Found a DelegatedUserDialogAct for rcId: %s", v86, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v190);
        OUTLINED_FUNCTION_102();
        v77 = v177;
        OUTLINED_FUNCTION_66();

        v89 = *v183;
        (*v183)(v180, v182);
      }

      else
      {

        v89 = *v183;
        (*v183)(v180, v29);
      }

      v93 = sub_1DC511EBC() == 0xD000000000000013 && 0x80000001DC544D00 == v92;
      if (v93)
      {
      }

      else
      {
        v94 = sub_1DC51825C();

        if ((v94 & 1) == 0)
        {
          (*(v171 + 8))(v189, v184);
          (*v185)(v175, v173);
          v55 = v174;
LABEL_28:
          v70 = v172;
          goto LABEL_29;
        }
      }

      v178 = v89;
      v181(v170, v80, v29);
      v95 = v83;
      v96 = sub_1DC516F6C();
      v97 = sub_1DC517B9C();

      if (os_log_type_enabled(v96, v97))
      {
        OUTLINED_FUNCTION_63();
        v191 = OUTLINED_FUNCTION_115_4();
        *v29 = v169;
        v98 = sub_1DC515B5C();
        OUTLINED_FUNCTION_375(v98, v99);
        OUTLINED_FUNCTION_10_19();

        *(v29 + 4) = v95;
        _os_log_impl(&dword_1DC287000, v96, v97, "Found a DelegatedUserDialogAct with externalParserId set to the right value, for rcId: %s", v29, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v191);
        OUTLINED_FUNCTION_66();
        OUTLINED_FUNCTION_67();

        v100 = v170;
        v101 = v182;
      }

      else
      {

        v100 = v170;
        v101 = v29;
      }

      v178(v100, v101);
      OUTLINED_FUNCTION_37();
      v102(v179, v189, v184);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v77 = sub_1DC3D6338(0, *(v77 + 16) + 1, 1, v77, &unk_1ECC7D4C0, &unk_1DC528590, MEMORY[0x1E69D0BE8], MEMORY[0x1E69D0BE8]);
      }

      v104 = *(v77 + 16);
      v103 = *(v77 + 24);
      if (v104 >= v103 >> 1)
      {
        v77 = sub_1DC3D6338(v103 > 1, v104 + 1, 1, v77, &unk_1ECC7D4C0, &unk_1DC528590, MEMORY[0x1E69D0BE8], MEMORY[0x1E69D0BE8]);
      }

      (*(v171 + 8))(v189, v184);
      v105 = OUTLINED_FUNCTION_288();
      v106(v105);
      *(v77 + 16) = v104 + 1;
      OUTLINED_FUNCTION_24();
      (*(v171 + 32))(v77 + v107 + *(v171 + 72) * v104, v179, v184);
      v55 = v174;
      v29 = v182;
      goto LABEL_28;
    }

    v108 = MEMORY[0x1E69E7CC0];
LABEL_32:
    v186 = sub_1DC28D414();
    v188 = *(v167 + 16);
    v188();
    v109 = v176;
    v110 = sub_1DC516F6C();
    v111 = sub_1DC517B9C();

    if (os_log_type_enabled(v110, v111))
    {
      v112 = OUTLINED_FUNCTION_140();
      OUTLINED_FUNCTION_143();
      *v112 = 136315394;
      v113 = sub_1DC515B5C();
      OUTLINED_FUNCTION_375(v113, v114);
      v115 = v55;
      OUTLINED_FUNCTION_373();
      *(v112 + 4) = v55;
      *(v112 + 12) = 2080;

      MEMORY[0x1E12962D0](v116, v184);
      v118 = v117;

      v119 = OUTLINED_FUNCTION_98_5();
      v121 = sub_1DC291244(v119, v118, v120);
      v55 = v115;

      *(v112 + 14) = v121;
      _os_log_impl(&dword_1DC287000, v110, v111, "delegatedUserDialogActs for rcId: %s delegatedUserDialogActs: %s", v112, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_58();
      v29 = v182;
      OUTLINED_FUNCTION_66();

      v123 = v167 + 8;
      v122 = *(v167 + 8);
      v122(v168, v182);
    }

    else
    {

      v123 = v167 + 8;
      v122 = *(v167 + 8);
      v122(v168, v29);
    }

    if (!*(v108 + 16))
    {
      (v188)(v166, v186, v29);
      v139 = v109;
      v140 = sub_1DC516F6C();
      sub_1DC517B9C();

      if (OUTLINED_FUNCTION_301())
      {
        OUTLINED_FUNCTION_63();
        OUTLINED_FUNCTION_73_5();
        *v110 = 136315138;
        v141 = sub_1DC515B5C();
        v143 = OUTLINED_FUNCTION_375(v141, v142);

        *(v110 + 4) = v143;
        OUTLINED_FUNCTION_85_6();
        _os_log_impl(v144, v145, v146, v147, v148, 0xCu);
        OUTLINED_FUNCTION_53_12();
        OUTLINED_FUNCTION_40_0();

        OUTLINED_FUNCTION_62_7();
        v149 = OUTLINED_FUNCTION_51();
        (v122)(v149);
        OUTLINED_FUNCTION_62_0();
        v151 = v55;
LABEL_45:
        v150(v151, v163);

        goto LABEL_46;
      }

      OUTLINED_FUNCTION_62_7();
      v138 = OUTLINED_FUNCTION_151();
LABEL_44:
      (v122)(v138);
      OUTLINED_FUNCTION_62_0();
      v151 = v55;
      goto LABEL_45;
    }

    OUTLINED_FUNCTION_121_1((v165 + OBJC_IVAR____TtC13CDMFoundation25AssistantNLRequestHandler_serverFallbackDisablingUtils), *(v165 + OBJC_IVAR____TtC13CDMFoundation25AssistantNLRequestHandler_serverFallbackDisablingUtils + 24));
    if (sub_1DC516A5C())
    {
      (*v165)[82]();
      OUTLINED_FUNCTION_194();
      sub_1DC515B5C();
      OUTLINED_FUNCTION_123_0();
      OUTLINED_FUNCTION_196_1();
      v124 = OUTLINED_FUNCTION_259();
      v126 = *(v125 - 256);
      v127(v124);
      OUTLINED_FUNCTION_43_11();
      v128 = OUTLINED_FUNCTION_42_2();
      v129(v128);

      (v165[1])(v123, v126);
      (v188)(v164, v186, v182);
      v130 = sub_1DC516F6C();
      v131 = sub_1DC517B9C();
      if (OUTLINED_FUNCTION_14_7(v131))
      {
        v132 = OUTLINED_FUNCTION_35_8();
        OUTLINED_FUNCTION_81_2(v132);
        OUTLINED_FUNCTION_16_0();
        _os_log_impl(v133, v134, v135, v136, v137, 2u);
        OUTLINED_FUNCTION_31();
      }

      OUTLINED_FUNCTION_62_7();
      v138 = OUTLINED_FUNCTION_30();
      goto LABEL_44;
    }

    OUTLINED_FUNCTION_76_1();
    OUTLINED_FUNCTION_259();
    OUTLINED_FUNCTION_355();
    v152();
    OUTLINED_FUNCTION_144_2();
    v154 = *(v153 + 1024);

    v155 = OUTLINED_FUNCTION_187();
    v154(v155);

    v156 = OUTLINED_FUNCTION_146_1();
    v157(v156);
    v158 = sub_1DC515D6C();
    v160 = v159;
    sub_1DC515B5C();
    OUTLINED_FUNCTION_144_2();
    (*(v161 + 1056))(1, 0, v158, v160);

    OUTLINED_FUNCTION_62_0();
    v162(v55, v163);
  }

LABEL_46:
  OUTLINED_FUNCTION_34();
}

void sub_1DC3D1B58()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_155();
  v2 = sub_1DC5161DC();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_9_24();
  v4 = sub_1DC516F7C();
  OUTLINED_FUNCTION_0();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_7_21();
  sub_1DC28D414();
  OUTLINED_FUNCTION_32_5();
  v8(v1);
  v9 = v0;
  v10 = sub_1DC516F6C();
  v11 = sub_1DC517B9C();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = OUTLINED_FUNCTION_140();
    OUTLINED_FUNCTION_143();
    *v12 = 136315394;
    v13 = sub_1DC515D6C();
    OUTLINED_FUNCTION_305(v13, v14);
    OUTLINED_FUNCTION_149_0();

    OUTLINED_FUNCTION_333();
    v15 = sub_1DC515B5C();
    OUTLINED_FUNCTION_305(v15, v16);
    OUTLINED_FUNCTION_149_0();

    *(v12 + 14) = v2;
    OUTLINED_FUNCTION_369(&dword_1DC287000, v17, v18, "Server-fallback for machine utterance. requestId: %s, rcId: %s");
    swift_arrayDestroy();
    OUTLINED_FUNCTION_14_5();
    OUTLINED_FUNCTION_66();
  }

  (*(v6 + 8))(v1, v4);
  v19 = OUTLINED_FUNCTION_233_0();
  v20(v19);
  OUTLINED_FUNCTION_144_2();
  v21 = OUTLINED_FUNCTION_261();
  v22(v21);
  v23 = OUTLINED_FUNCTION_73();
  v24(v23);
  OUTLINED_FUNCTION_34();
}

void sub_1DC3D1DC8()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_155();
  v2 = sub_1DC5161DC();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_9_24();
  v4 = sub_1DC516F7C();
  OUTLINED_FUNCTION_0();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_7_21();
  sub_1DC28D414();
  OUTLINED_FUNCTION_32_5();
  v8(v1);
  v9 = v0;
  v10 = sub_1DC516F6C();
  v11 = sub_1DC517B9C();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = OUTLINED_FUNCTION_140();
    OUTLINED_FUNCTION_143();
    *v12 = 136315394;
    v13 = sub_1DC515D6C();
    OUTLINED_FUNCTION_305(v13, v14);
    OUTLINED_FUNCTION_149_0();

    OUTLINED_FUNCTION_333();
    v15 = sub_1DC515A5C();
    OUTLINED_FUNCTION_305(v15, v16);
    OUTLINED_FUNCTION_149_0();

    *(v12 + 14) = v2;
    OUTLINED_FUNCTION_369(&dword_1DC287000, v17, v18, "Server-fallback for machine utterance. requestId: %s, trpCandidateId: %s");
    swift_arrayDestroy();
    OUTLINED_FUNCTION_14_5();
    OUTLINED_FUNCTION_66();
  }

  (*(v6 + 8))(v1, v4);
  v19 = OUTLINED_FUNCTION_233_0();
  v20(v19);
  OUTLINED_FUNCTION_144_2();
  v21 = OUTLINED_FUNCTION_261();
  v22(v21);
  v23 = OUTLINED_FUNCTION_73();
  v24(v23);
  OUTLINED_FUNCTION_34();
}

void sub_1DC3D2038()
{
  OUTLINED_FUNCTION_33();
  v2 = v0;
  sub_1DC516F7C();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_56_2();
  OUTLINED_FUNCTION_38_1();
  v5 = (*(v4 + 416))();
  v6 = OUTLINED_FUNCTION_16();
  sub_1DC3BFA68(v6, v7, v5, v8);

  if (v22[3])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D328, &qword_1DC5283A8);
    OUTLINED_FUNCTION_38_2();
    type metadata accessor for ResultCandidateNlSpeechInput();
    OUTLINED_FUNCTION_252();
    if (swift_dynamicCast())
    {
      v9 = (*(*v21 + 120))();
      (*(*v2 + 656))();
      v10 = v9;
      sub_1DC515D6C();

      sub_1DC515B5C();
      OUTLINED_FUNCTION_223_1();
      v11 = OUTLINED_FUNCTION_159();
      v12(v11);

      goto LABEL_8;
    }
  }

  else
  {
    sub_1DC28EB30(v22, &qword_1ECC7D410, &qword_1DC528430);
  }

  sub_1DC28D414();
  OUTLINED_FUNCTION_19_1();
  v13(v1);
  v14 = sub_1DC516F6C();
  sub_1DC517BAC();
  OUTLINED_FUNCTION_116();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = OUTLINED_FUNCTION_35_8();
    OUTLINED_FUNCTION_52_1(v16);
    OUTLINED_FUNCTION_51_8(&dword_1DC287000, v17, v18, "Missing ResultCandidate while logging error");
    OUTLINED_FUNCTION_58();
  }

  v19 = OUTLINED_FUNCTION_36();
  v20(v19);
LABEL_8:
  OUTLINED_FUNCTION_34();
}

void sub_1DC3D22FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_33();
  a19 = v21;
  a20 = v22;
  v167 = v20;
  LODWORD(v165) = v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D418, &qword_1DC528438);
  OUTLINED_FUNCTION_10(v24);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_14(v26);
  v166 = sub_1DC5161DC();
  OUTLINED_FUNCTION_0();
  v169 = v27;
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_2_1();
  v170 = v29;
  OUTLINED_FUNCTION_12();
  v30 = sub_1DC516F7C();
  OUTLINED_FUNCTION_0();
  v32 = v31;
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_15();
  v161 = v34;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v38);
  v40 = v160 - v39;
  sub_1DC51110C();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_129();
  sub_1DC51370C();
  sub_1DC5110DC();
  v42 = OUTLINED_FUNCTION_34_0();
  v43(v42);
  v44 = sub_1DC28D414();
  v45 = *(v32 + 16);
  v163 = v44;
  v164 = v45;
  (v45)(v40);

  v46 = sub_1DC516F6C();
  v47 = sub_1DC517B9C();

  v48 = OUTLINED_FUNCTION_302();
  v49 = &off_1DC522000;
  v168 = v32;
  if (v48)
  {
    OUTLINED_FUNCTION_63();
    v50 = OUTLINED_FUNCTION_73_5();
    v175[0] = v50;
    off_1DC522000 = 136315138;
    v51 = OUTLINED_FUNCTION_358();
    *&off_1DC522004 = sub_1DC291244(v51, v52, v53);
    OUTLINED_FUNCTION_236_0(&dword_1DC287000, v46, v47, "Received CDMSetup failure callback for nluRequestId: %s", v160[0]);
    __swift_destroy_boxed_opaque_existential_1Tm(v50);
    OUTLINED_FUNCTION_114_1();
    OUTLINED_FUNCTION_40_0();
  }

  v54 = OUTLINED_FUNCTION_318();
  v55 = v30;
  v162 = v56;
  v56(v54, v30);
  v57 = v167;
  OUTLINED_FUNCTION_223_1();
  v59 = (*(v58 + 416))();
  v60 = OUTLINED_FUNCTION_358();
  sub_1DC3BFA68(v60, v61, v59, v62);

  v63 = *(v169 + 104);
  v64 = v166;
  v63(v170, *MEMORY[0x1E69D0768], v166);
  if (v165 != 2 && (v165 & 1) != 0)
  {
    v49 = v170;
    v65 = OUTLINED_FUNCTION_159();
    v66(v65);
    v63(v49, *MEMORY[0x1E69D0770], v64);
  }

  sub_1DC28F414(v175, v172, &qword_1ECC7D410, &qword_1DC528430);
  if (!v173)
  {
    sub_1DC28EB30(v172, &qword_1ECC7D410, &qword_1DC528430);
    goto LABEL_13;
  }

  v49 = v174;
  __swift_project_boxed_opaque_existential_1(v172, v173);
  v67 = OUTLINED_FUNCTION_23_2();
  v69 = v68(v67, v49);
  __swift_destroy_boxed_opaque_existential_1Tm(v172);
  if ((v69 & 1) == 0)
  {
LABEL_13:
    sub_1DC28F414(v175, v172, &qword_1ECC7D410, &qword_1DC528430);
    if (v173)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D328, &qword_1DC5283A8);
      OUTLINED_FUNCTION_155();
      v84 = type metadata accessor for ResultCandidateNlSpeechInput();
      if (OUTLINED_FUNCTION_298(v84))
      {

        v85 = v171;
        OUTLINED_FUNCTION_12_0();
        v87 = *(v86 + 120);
        v165 = v85;
        v88 = v87();
        v89 = *(v57 + OBJC_IVAR____TtC13CDMFoundation25AssistantNLRequestHandler_serverFallbackDisablingUtils + 32);
        v90 = v57;
        v91 = __swift_project_boxed_opaque_existential_1((v57 + OBJC_IVAR____TtC13CDMFoundation25AssistantNLRequestHandler_serverFallbackDisablingUtils), *(v57 + OBJC_IVAR____TtC13CDMFoundation25AssistantNLRequestHandler_serverFallbackDisablingUtils + 24));
        v92 = v88;
        sub_1DC515D6C();
        sub_1DC516A5C();
        v93 = OUTLINED_FUNCTION_306();
        if (v91)
        {
          v94 = (*(*v90 + 656))(v93);
          v96 = v95;
          sub_1DC515B5C();
          v97 = OUTLINED_FUNCTION_55();
          v98(v97);

          v99 = OUTLINED_FUNCTION_145_3(&a17);
          v100(v99);
          v101 = v92;
          v102 = sub_1DC516F6C();
          v103 = sub_1DC517B9C();

          if (os_log_type_enabled(v102, v103))
          {
            OUTLINED_FUNCTION_140();
            v172[0] = OUTLINED_FUNCTION_54_13();
            OUTLINED_FUNCTION_350(4.8151e-34);
            v104 = sub_1DC515D6C();
            OUTLINED_FUNCTION_255(v104, v105);
            OUTLINED_FUNCTION_10_19();

            *(v96 + 4) = v94;
            OUTLINED_FUNCTION_220_1();
            v106 = sub_1DC515B5C();
            OUTLINED_FUNCTION_255(v106, v107);
            OUTLINED_FUNCTION_10_19();

            *(v96 + 14) = v94;
            OUTLINED_FUNCTION_130_3();
            _os_log_impl(v108, v109, v110, v111, v112, 0x16u);
            OUTLINED_FUNCTION_218_0();
            OUTLINED_FUNCTION_102();
            OUTLINED_FUNCTION_58();

            OUTLINED_FUNCTION_187_0();
            v113 = OUTLINED_FUNCTION_46_0();
          }

          else
          {

            OUTLINED_FUNCTION_187_0();
            v113 = v94;
            v114 = v55;
          }

          v162(v113, v114);
          v157 = v166;
          type metadata accessor for AssistantNLRequestHandler(0);
          sub_1DC515D6C();
          OUTLINED_FUNCTION_193();

          OUTLINED_FUNCTION_62_2();
          sub_1DC3D2E74();

          (*(v169 + 8))(v170, v157);
        }

        else
        {

          v129 = OUTLINED_FUNCTION_145_3(&a16);
          v130(v129);
          v131 = v92;
          v132 = sub_1DC516F6C();
          v133 = sub_1DC517B9C();

          v134 = os_log_type_enabled(v132, v133);
          v135 = v166;
          if (v134)
          {
            OUTLINED_FUNCTION_140();
            v172[0] = OUTLINED_FUNCTION_54_13();
            OUTLINED_FUNCTION_350(4.8151e-34);
            v136 = sub_1DC515D6C();
            OUTLINED_FUNCTION_255(v136, v137);
            OUTLINED_FUNCTION_10_19();

            *(v91 + 4) = v89;
            OUTLINED_FUNCTION_220_1();
            v138 = sub_1DC515B5C();
            OUTLINED_FUNCTION_255(v138, v139);
            OUTLINED_FUNCTION_10_19();

            *(v91 + 14) = v89;
            OUTLINED_FUNCTION_130_3();
            _os_log_impl(v140, v141, v142, v143, v144, 0x16u);
            OUTLINED_FUNCTION_218_0();
            OUTLINED_FUNCTION_102();
            OUTLINED_FUNCTION_58();

            OUTLINED_FUNCTION_187_0();
            v145 = OUTLINED_FUNCTION_54_4();
          }

          else
          {

            OUTLINED_FUNCTION_187_0();
            v145 = v89;
            v146 = v55;
          }

          v162(v145, v146);
          OUTLINED_FUNCTION_12_0();
          v159 = v170;
          (*(v158 + 1024))(v131, MEMORY[0x1E69E7CC0], v170);

          (*(v169 + 8))(v159, v135);
        }

        goto LABEL_31;
      }
    }

    else
    {
      sub_1DC28EB30(v172, &qword_1ECC7D410, &qword_1DC528430);
    }

    v115 = v161;
    v164(v161, v163, v55);

    v116 = sub_1DC516F6C();
    sub_1DC517BAC();

    if (OUTLINED_FUNCTION_172())
    {
      OUTLINED_FUNCTION_63();
      v117 = v115;
      v118 = OUTLINED_FUNCTION_73_5();
      v172[0] = v118;
      *v49 = 136315138;
      v119 = OUTLINED_FUNCTION_121_0();
      v122 = sub_1DC291244(v119, v120, v121);

      *(v49 + 1) = v122;
      OUTLINED_FUNCTION_27_16();
      _os_log_impl(v123, v124, v125, v126, v127, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v118);
      OUTLINED_FUNCTION_58();
      OUTLINED_FUNCTION_40_0();

      OUTLINED_FUNCTION_187_0();
      v128 = v117;
    }

    else
    {

      OUTLINED_FUNCTION_187_0();
      v128 = v115;
    }

    goto LABEL_29;
  }

  sub_1DC28F414(v175, v172, &qword_1ECC7D410, &qword_1DC528430);
  if (!v173)
  {

    sub_1DC28EB30(v172, &qword_1ECC7D410, &qword_1DC528430);
LABEL_26:
    v147 = OUTLINED_FUNCTION_145_3(&a18);
    v148(v147);
    v149 = sub_1DC516F6C();
    v150 = sub_1DC517BAC();
    if (OUTLINED_FUNCTION_14_7(v150))
    {
      v151 = OUTLINED_FUNCTION_35_8();
      OUTLINED_FUNCTION_81_2(v151);
      OUTLINED_FUNCTION_16_0();
      _os_log_impl(v152, v153, v154, v155, v156, 2u);
      OUTLINED_FUNCTION_31();
    }

    OUTLINED_FUNCTION_187_0();
    v128 = v49;
LABEL_29:
    v162(v128, v55);
    (*(v169 + 8))(v170, v64);
    goto LABEL_31;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D328, &qword_1DC5283A8);
  OUTLINED_FUNCTION_155();
  v70 = type metadata accessor for TurnConstructionCandidateNlSpeechInput();
  if ((OUTLINED_FUNCTION_298(v70) & 1) == 0)
  {

    goto LABEL_26;
  }

  if ([*(v171 + 32) tcuId])
  {
    OUTLINED_FUNCTION_251_0();
    sub_1DC51772C();
    OUTLINED_FUNCTION_279();

    OUTLINED_FUNCTION_32_5();
    v71 = v160[0];
    v72 = OUTLINED_FUNCTION_89();
    v73(v72);
    v74 = OUTLINED_FUNCTION_21_12();
    __swift_storeEnumTagSinglePayload(v74, v75, v76, v64);
    v77 = OUTLINED_FUNCTION_65_1();
    sub_1DC3CD7C8(v77, v78, 0, v71, 0, v79, v80, v81, v160[0], v160[1], v160[2], v160[3], v161, v162, v163, v164, v165, v166, v167, v168);

    sub_1DC28EB30(v71, &qword_1ECC7D418, &qword_1DC528438);
    v82 = OUTLINED_FUNCTION_41();
    v83(v82);
LABEL_31:
    sub_1DC28EB30(v175, &qword_1ECC7D410, &qword_1DC528430);
    OUTLINED_FUNCTION_34();
    return;
  }

  __break(1u);
}

void sub_1DC3D2E74()
{
  OUTLINED_FUNCTION_33();
  v3 = v2;
  v24 = v5;
  v25 = v4;
  v26 = v7;
  v27 = v6;
  sub_1DC510B6C();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_1();
  sub_1DC516F7C();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_28_0();
  sub_1DC28D414();
  OUTLINED_FUNCTION_18_13();
  v10(v0);
  v11 = sub_1DC516F6C();
  v12 = sub_1DC517B9C();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = OUTLINED_FUNCTION_35_8();
    OUTLINED_FUNCTION_18_12(v13);
    _os_log_impl(&dword_1DC287000, v11, v12, "Sending CommandFailed to fail this request.", v1, 2u);
    OUTLINED_FUNCTION_40_0();
  }

  v14 = OUTLINED_FUNCTION_234();
  v15(v14);
  v16 = [objc_allocWithZone(MEMORY[0x1E69C7778]) init];
  sub_1DC510B5C();
  sub_1DC510B1C();
  OUTLINED_FUNCTION_193();
  v17 = OUTLINED_FUNCTION_89();
  v18(v17);
  v19 = OUTLINED_FUNCTION_74();
  sub_1DC3D87C0(v19, v20, v16);

  v21 = v16;
  sub_1DC37C694(v25, v26, v21);
  if (v3)
  {
    v22 = sub_1DC5176FC();
  }

  else
  {
    v22 = 0;
  }

  [v21 setReason_];

  v28[4] = sub_1DC3D5D00;
  v28[5] = 0;
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 1107296256;
  v28[2] = sub_1DC37278C;
  v28[3] = &block_descriptor_11;
  v23 = _Block_copy(v28);
  [v27 handleCommand:v21 completion:v23];
  _Block_release(v23);

  OUTLINED_FUNCTION_34();
}

void sub_1DC3D312C()
{
  OUTLINED_FUNCTION_33();
  v3 = v2;
  v57 = v4;
  sub_1DC511D5C();
  OUTLINED_FUNCTION_0();
  v60 = v5;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_23_0();
  v6 = sub_1DC516F7C();
  OUTLINED_FUNCTION_0();
  v55 = v7;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_2_1();
  v56 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D398, &qword_1DC5283F8);
  OUTLINED_FUNCTION_10(v10);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_42_11();
  v12 = sub_1DC511E5C();
  OUTLINED_FUNCTION_0();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_1();
  v18 = v17 - v16;
  sub_1DC28F414(v3, v0, &qword_1ECC7D398, &qword_1DC5283F8);
  OUTLINED_FUNCTION_30_8(v0);
  if (v19)
  {
    sub_1DC511E4C();
    OUTLINED_FUNCTION_30_8(v0);
    if (!v19)
    {
      sub_1DC28EB30(v0, &qword_1ECC7D398, &qword_1DC5283F8);
    }
  }

  else
  {
    v20 = OUTLINED_FUNCTION_43();
    v21(v20);
  }

  v22 = *(v0 + OBJC_IVAR____TtC13CDMFoundation25AssistantNLRequestHandler_siriInputLocale + 8);
  if (v22 && ((*(*v0 + 1016))(*(v0 + OBJC_IVAR____TtC13CDMFoundation25AssistantNLRequestHandler_siriInputLocale), v22, 0) & 1) != 0)
  {
    v23 = sub_1DC511E3C();
    v24 = *(v23 + 16);
    v54 = v6;
    if (v24)
    {
      v61[0] = MEMORY[0x1E69E7CC0];
      sub_1DC2DF6FC(0, v24, 0);
      v25 = v61[0];
      OUTLINED_FUNCTION_24();
      v27 = v23 + v26;
      v58 = *(v28 + 56);
      v59 = v29;
      v30 = (v28 - 8);
      do
      {
        v31 = OUTLINED_FUNCTION_45_0();
        v59(v31);
        v32 = sub_1DC511D3C();
        v34 = v33;
        (*v30)(v1, v60);
        v61[0] = v25;
        v36 = *(v25 + 16);
        v35 = *(v25 + 24);
        if (v36 >= v35 >> 1)
        {
          sub_1DC2DF6FC((v35 > 1), v36 + 1, 1);
          v25 = v61[0];
        }

        *(v25 + 16) = v36 + 1;
        v37 = v25 + 16 * v36;
        *(v37 + 32) = v32;
        *(v37 + 40) = v34;
        v27 += v58;
        --v24;
      }

      while (v24);

      v6 = v54;
    }

    else
    {
    }

    nullsub_1();
    v39 = v38;
    v40 = sub_1DC28D414();
    (*(v55 + 16))(v56, v40, v6);

    v41 = sub_1DC516F6C();
    v42 = v6;
    v43 = sub_1DC517B9C();

    if (os_log_type_enabled(v41, v43))
    {
      v24 = OUTLINED_FUNCTION_140();
      v61[0] = OUTLINED_FUNCTION_143();
      *v24 = 136315394;
      v44 = MEMORY[0x1E12962D0](v39, MEMORY[0x1E69E6158]);
      sub_1DC291244(v44, v45, v61);
      OUTLINED_FUNCTION_149_0();

      *(v24 + 4) = v42;
      *(v24 + 12) = 2080;
      OUTLINED_FUNCTION_12_0();
      (*(v46 + 88))();
      v47 = MEMORY[0x1E12962D0]();
      v49 = v48;

      v50 = sub_1DC291244(v47, v49, v61);

      *(v24 + 14) = v50;
      _os_log_impl(&dword_1DC287000, v41, v43, "LVC appending %s to existing LVCHistory.LVCTurns: %s", v24, 0x16u);
      OUTLINED_FUNCTION_342();
      swift_arrayDestroy();
      OUTLINED_FUNCTION_67();
      OUTLINED_FUNCTION_14_5();

      (*(v55 + 8))(v56, v54);
    }

    else
    {

      (*(v55 + 8))(v56, v42);
    }

    OUTLINED_FUNCTION_12_0();
    (*(v51 + 104))(v61);
    OUTLINED_FUNCTION_192();
    sub_1DC3D7B44(0, 0, v39);
    (v24)(v61, 0);
    v52 = OUTLINED_FUNCTION_35_0();
    v53(v52);
  }

  else
  {
    (*(v14 + 32))(v57, v18, v12);
  }

  OUTLINED_FUNCTION_34();
}

void sub_1DC3D36F8()
{
  OUTLINED_FUNCTION_33();
  v3 = v0;
  OUTLINED_FUNCTION_38_2();
  v4 = sub_1DC516F7C();
  OUTLINED_FUNCTION_0();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_37_5();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_107_0();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D390, &qword_1DC527790);
  OUTLINED_FUNCTION_10(v10);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_28_13();
  v12 = type metadata accessor for RVSRequest(0);
  v13 = OUTLINED_FUNCTION_10(v12);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_1();
  v16 = v15 - v14;
  if (*(v0 + OBJC_IVAR____TtC13CDMFoundation25AssistantNLRequestHandler_siriInputLocale + 8))
  {
    v65 = v2;
    v17 = v4;
    v18 = OUTLINED_FUNCTION_151();
    sub_1DC28F414(v18, v19, v20, v21);
    v22 = *(v0 + OBJC_IVAR____TtC13CDMFoundation25AssistantNLRequestHandler_rvsHistory);

    OUTLINED_FUNCTION_121_0();
    OUTLINED_FUNCTION_263();
    v64 = v22;
    sub_1DC3B2B18(v23, v24, v25, v26, v22, 0, v27);
    type metadata accessor for ResponseVariantSelector();
    v28 = sub_1DC37DAA0();
    OUTLINED_FUNCTION_343();
    v29 = OUTLINED_FUNCTION_121_0();
    if (v30(v29))
    {
      sub_1DC28D414();
      OUTLINED_FUNCTION_90();
      v62 = v31;
      v63 = v32;
      (v32)(v1);

      v33 = sub_1DC516F6C();
      v34 = sub_1DC517B9C();

      if (os_log_type_enabled(v33, v34))
      {
        OUTLINED_FUNCTION_63();
        v61 = v16;
        v35 = OUTLINED_FUNCTION_115_4();
        v66[0] = v35;
        *v28 = 136315138;
        v36 = OUTLINED_FUNCTION_121_0();
        *(v28 + 4) = sub_1DC291244(v36, v37, v38);
        OUTLINED_FUNCTION_128_0(&dword_1DC287000, v39, v34, "Making a response variant selector request for %s");
        __swift_destroy_boxed_opaque_existential_1Tm(v35);
        v16 = v61;
        OUTLINED_FUNCTION_66();
        OUTLINED_FUNCTION_66();
      }

      v40 = *(v6 + 8);
      v40(v1, v17);
      v41 = (*(*v28 + 104))(v16);
      v43 = v42;
      v63(v65, v62, v17);

      v44 = sub_1DC516F6C();
      v45 = sub_1DC517B9C();

      if (os_log_type_enabled(v44, v45))
      {
        OUTLINED_FUNCTION_140();
        v66[0] = v41;
        v67 = OUTLINED_FUNCTION_54_13();
        *v3 = 136315394;
        v66[1] = v43;

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D0A0, &unk_1DC524070);
        v47 = sub_1DC51777C();
        sub_1DC291244(v47, v48, &v67);
        OUTLINED_FUNCTION_23_2();

        *(v3 + 4) = v65;
        OUTLINED_FUNCTION_220_1();
        v49 = v64;
        (*(*v64 + 88))();
        MEMORY[0x1E12962D0]();

        v50 = OUTLINED_FUNCTION_212();
        v53 = sub_1DC291244(v50, v51, v52);

        *(v3 + 14) = v53;
        OUTLINED_FUNCTION_130_3();
        _os_log_impl(v54, v55, v56, v57, v58, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_14_5();
        OUTLINED_FUNCTION_58();

        v40(v65, v17);
      }

      else
      {

        v59 = OUTLINED_FUNCTION_74();
        (v40)(v59);
        v49 = v64;
      }

      v60 = *(*v49 + 104);

      v60(v66);
      OUTLINED_FUNCTION_192();
      sub_1DC3D7BF4(0, 0, v41, v43);
      (v60)(v66, 0);

      OUTLINED_FUNCTION_15_13();
      sub_1DC3D8824();
    }

    else
    {
      OUTLINED_FUNCTION_15_13();
      sub_1DC3D8824();
    }
  }

  OUTLINED_FUNCTION_121_0();
  OUTLINED_FUNCTION_34();
}

uint64_t sub_1DC3D3DF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_12_0();
  v5 = (*(v4 + 632))();
  if ((v5 & 1) == 0)
  {
    goto LABEL_4;
  }

  sub_1DC2A32B0(v5, v6, v7);
  OUTLINED_FUNCTION_72_6();
  v8 = sub_1DC517E1C();
  if (!a3)
  {
    if (v8 != 0x4E495F6E65 || v9 != 0xE500000000000000)
    {
      OUTLINED_FUNCTION_62_2();
      v14 = sub_1DC51825C();

      return v14 & 1;
    }

LABEL_10:

    v14 = 1;
    return v14 & 1;
  }

  v10 = *(a3 + 16);

  v11 = OUTLINED_FUNCTION_62_2();
  v13 = sub_1DC2E4CBC(v11, v12, v10);

  if (v13)
  {
    goto LABEL_10;
  }

LABEL_4:
  v14 = 0;
  return v14 & 1;
}

void sub_1DC3D3F3C()
{
  OUTLINED_FUNCTION_33();
  v4 = v0;
  v91 = v5;
  v92 = v6;
  OUTLINED_FUNCTION_228_0();
  v7 = sub_1DC516F7C();
  OUTLINED_FUNCTION_0();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_8();
  v13 = v11 - v12;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_53_1();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_23_1();
  v89 = v16;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_101_0();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_138_1();
  sub_1DC5159DC();
  v19 = swift_dynamicCastClass();
  v20 = *(v0 + OBJC_IVAR____TtC13CDMFoundation25AssistantNLRequestHandler_isMUXEnabled);
  if (v19)
  {
    v21 = v2;
    if ((v20 & 1) == 0)
    {
      v90 = v0;
      v95 = v9;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D428, &qword_1DC528450);
      v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D430, &qword_1DC528458) - 8;
      OUTLINED_FUNCTION_33_17();
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_1DC522F20;
      v23 = *(v22 + 56);
      v93 = v19;
      v24 = v19;
      sub_1DC515C5C();
      *(v20 + v1 + v23) = sub_1DC5159CC();
      sub_1DC5162DC();
      sub_1DC3D8878();
      OUTLINED_FUNCTION_0_49();
      sub_1DC3D8E40(v25, v26, MEMORY[0x1E69D08D0]);
      OUTLINED_FUNCTION_63_0();
      v27 = sub_1DC51764C();

      goto LABEL_11;
    }
  }

  else if (!*(v0 + OBJC_IVAR____TtC13CDMFoundation25AssistantNLRequestHandler_isMUXEnabled))
  {
    v90 = v0;
    v93 = 0;
    v95 = v9;
    sub_1DC5162DC();
    OUTLINED_FUNCTION_155();
    sub_1DC3D8878();
    OUTLINED_FUNCTION_0_49();
    sub_1DC3D8E40(v47, v48, MEMORY[0x1E69D08D0]);
    v28 = sub_1DC51764C();
    v27 = v28;
LABEL_11:
    MEMORY[0x1EEE9AC00](v28);
    OUTLINED_FUNCTION_140_3();
    *(v49 - 32) = v2;
    *(v49 - 24) = v91;
    *(v49 - 16) = v92;
    *(v49 - 8) = v27;
    v50 = objc_allocWithZone(sub_1DC5154AC());
    OUTLINED_FUNCTION_170_1();
    v51 = sub_1DC51541C();

    if (v51)
    {
      OUTLINED_FUNCTION_20_14((v90 + OBJC_IVAR____TtC13CDMFoundation25AssistantNLRequestHandler_messagePublisher));
      OUTLINED_FUNCTION_147_0();
      sub_1DC515D8C();
      sub_1DC28D414();
      v52 = OUTLINED_FUNCTION_162_3();
      v53(v52);
      v54 = v51;
      v55 = sub_1DC516F6C();
      v56 = sub_1DC517B9C();

      if (os_log_type_enabled(v55, v56))
      {
        OUTLINED_FUNCTION_63();
        v57 = OUTLINED_FUNCTION_175();
        *v20 = 138412290;
        *(v20 + 4) = v54;
        *v57 = v51;
        v58 = v54;
        _os_log_impl(&dword_1DC287000, v55, v56, "Posted ExecuteNLOnServerMessage: %@", v20, 0xCu);
        sub_1DC28EB30(v57, &qword_1ECC7DFE0, &qword_1DC5227F0);
        OUTLINED_FUNCTION_67();
        OUTLINED_FUNCTION_14_5();
        v59 = v93;
      }

      else
      {
        v59 = v55;
        v55 = v93;
      }

      (*(v95 + 8))(v3, v7);
    }

    else
    {
      v71 = sub_1DC28D414();
      (*(v95 + 16))(v13, v71, v7);
      v72 = v2;
      v73 = sub_1DC516F6C();
      v74 = sub_1DC517B9C();

      if (os_log_type_enabled(v73, v74))
      {
        OUTLINED_FUNCTION_140();
        v75 = OUTLINED_FUNCTION_54_13();
        OUTLINED_FUNCTION_332(v75);
        *v2 = 136315394;
        v76 = sub_1DC515D6C();
        OUTLINED_FUNCTION_249_0(v76, v77);
        OUTLINED_FUNCTION_23_2();

        *(v2 + 1) = v72;
        OUTLINED_FUNCTION_220_1();
        v78 = sub_1DC515B5C();
        OUTLINED_FUNCTION_249_0(v78, v79);
        OUTLINED_FUNCTION_23_2();

        *(v2 + 14) = v72;
        OUTLINED_FUNCTION_130_3();
        _os_log_impl(v80, v81, v82, v83, v84, 0x16u);
        OUTLINED_FUNCTION_219_0();
        OUTLINED_FUNCTION_54_12();
        OUTLINED_FUNCTION_58();
      }

      else
      {
      }

      v85 = OUTLINED_FUNCTION_153_0();
      v86(v85);
    }

    goto LABEL_26;
  }

  v87 = sub_1DC28D414();
  v88 = *(v9 + 16);
  v94 = v7;
  v88(v0);
  v29 = sub_1DC516F6C();
  v30 = sub_1DC517B9C();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = OUTLINED_FUNCTION_35_8();
    *v31 = 0;
    _os_log_impl(&dword_1DC287000, v29, v30, "Posting MUXServerFallbackMessage since MUX is enabled", v31, 2u);
    v4 = v0;
    OUTLINED_FUNCTION_66();
  }

  v32 = *(v9 + 8);
  v33 = v32(v0, v7);
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_140_3();
  *(v34 - 32) = v2;
  *(v34 - 24) = v91;
  *(v34 - 16) = v92;
  v35 = objc_allocWithZone(sub_1DC5155DC());
  OUTLINED_FUNCTION_170_1();
  v36 = sub_1DC5155CC();
  if (v36)
  {
    v37 = v36;
    v38 = *(v4 + OBJC_IVAR____TtC13CDMFoundation25AssistantNLRequestHandler_messagePublisher + 24);
    OUTLINED_FUNCTION_121_1((v4 + OBJC_IVAR____TtC13CDMFoundation25AssistantNLRequestHandler_messagePublisher), v38);
    OUTLINED_FUNCTION_147_0();
    sub_1DC515D8C();
    (v88)(v1, v87, v7);
    v39 = v37;
    v40 = sub_1DC516F6C();
    sub_1DC517B9C();

    if (OUTLINED_FUNCTION_302())
    {
      OUTLINED_FUNCTION_63();
      v41 = v32;
      v42 = OUTLINED_FUNCTION_175();
      *v38 = 138412290;
      *(v38 + 4) = v39;
      *v42 = v37;
      v43 = v39;
      OUTLINED_FUNCTION_200_1(&dword_1DC287000, v44, v45, "Posted MUXServerFallbackMessage: %@");
      sub_1DC28EB30(v42, &qword_1ECC7DFE0, &qword_1DC5227F0);
      v32 = v41;
      OUTLINED_FUNCTION_66();
      OUTLINED_FUNCTION_14_5();
      v46 = v19;
    }

    else
    {
      v46 = v40;
      v40 = v19;
    }

    v32(v1, v94);
  }

  else
  {
    v60 = v32;
    (v88)(v89, v87, v7);
    v61 = v2;
    v62 = sub_1DC516F6C();
    v63 = sub_1DC517B9C();

    if (os_log_type_enabled(v62, v63))
    {
      v64 = OUTLINED_FUNCTION_140();
      OUTLINED_FUNCTION_143();
      *v64 = 136315394;
      v65 = sub_1DC515D6C();
      OUTLINED_FUNCTION_249_0(v65, v66);
      OUTLINED_FUNCTION_23_2();

      *(v64 + 4) = v61;
      OUTLINED_FUNCTION_221_0();
      v67 = sub_1DC515B5C();
      OUTLINED_FUNCTION_249_0(v67, v68);
      OUTLINED_FUNCTION_23_2();

      *(v64 + 14) = v61;
      OUTLINED_FUNCTION_198_0(&dword_1DC287000, v69, v70, "MUXServerFallbackMessage could not be created for requestId: %s rcId: %s");
      OUTLINED_FUNCTION_342();
      swift_arrayDestroy();
      OUTLINED_FUNCTION_67();
      OUTLINED_FUNCTION_40_0();
    }

    else
    {
    }

    v60(v89, v7);
  }

LABEL_26:
  OUTLINED_FUNCTION_34();
}

void sub_1DC3D4790()
{
  OUTLINED_FUNCTION_33();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D418, &qword_1DC528438);
  OUTLINED_FUNCTION_10(v3);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_11_1();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7CA30, &qword_1DC522A00);
  OUTLINED_FUNCTION_10(v5);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_95();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CEE8, &qword_1DC528550);
  OUTLINED_FUNCTION_10(v7);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_42_11();
  v9 = *MEMORY[0x1E69D0450];
  v10 = sub_1DC515DBC();
  OUTLINED_FUNCTION_35();
  (*(v11 + 104))(v0, v9, v10);
  OUTLINED_FUNCTION_61();
  __swift_storeEnumTagSinglePayload(v12, v13, v14, v10);
  sub_1DC51547C();
  sub_1DC515D9C();
  sub_1DC51542C();
  sub_1DC515D7C();
  sub_1DC510B6C();
  v15 = OUTLINED_FUNCTION_21_12();
  OUTLINED_FUNCTION_378(v15, v16, v17, v18);
  sub_1DC51549C();
  sub_1DC515D6C();
  sub_1DC51548C();
  sub_1DC515B5C();
  sub_1DC51544C();

  sub_1DC51545C();
  sub_1DC5161DC();
  OUTLINED_FUNCTION_2();
  v19 = OUTLINED_FUNCTION_30();
  v20(v19);
  v21 = OUTLINED_FUNCTION_23_20();
  OUTLINED_FUNCTION_293(v21, v22, v23, v2);
  sub_1DC51543C();

  sub_1DC51546C();
  OUTLINED_FUNCTION_34();
}

void sub_1DC3D499C()
{
  OUTLINED_FUNCTION_33();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  sub_1DC516F7C();
  OUTLINED_FUNCTION_0();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_123();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_37_5();
  v15 = MEMORY[0x1EEE9AC00](v14);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_23_1();
  v84 = v16;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_138_1();
  v85 = v18;
  if (*(v0 + OBJC_IVAR____TtC13CDMFoundation25AssistantNLRequestHandler_isMUXEnabled) == 1)
  {
    v82 = v9;
    v79 = v19;
    v20 = sub_1DC28D414();
    v21 = v11;
    v23 = *(v11 + 16);
    v22 = v11 + 16;
    v80 = v20;
    v81 = v23;
    (v23)(v0);
    v24 = sub_1DC516F6C();
    v25 = sub_1DC517B9C();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = OUTLINED_FUNCTION_35_8();
      OUTLINED_FUNCTION_81_2(v26);
      _os_log_impl(&dword_1DC287000, v24, v25, "Posting MUXServerFallbackMessage since MUX is enabled", v1, 2u);
      OUTLINED_FUNCTION_31();
    }

    v27 = *(v21 + 8);
    v28 = v85;
    v83 = v27;
    v29 = (v27)(v0, v85);
    MEMORY[0x1EEE9AC00](v29);
    OUTLINED_FUNCTION_140_3();
    *(v30 - 32) = v82;
    *(v30 - 24) = v7;
    *(v30 - 16) = v5;
    v31 = objc_allocWithZone(sub_1DC5155DC());
    OUTLINED_FUNCTION_170_1();
    v32 = sub_1DC5155CC();
    if (v32)
    {
      v33 = v32;
      OUTLINED_FUNCTION_20_14((v0 + OBJC_IVAR____TtC13CDMFoundation25AssistantNLRequestHandler_messagePublisher));
      OUTLINED_FUNCTION_147_0();
      sub_1DC515D8C();
      v81(v84, v80, v85);
      v34 = v33;
      v35 = sub_1DC516F6C();
      sub_1DC517B9C();

      if (OUTLINED_FUNCTION_302())
      {
        OUTLINED_FUNCTION_63();
        v36 = OUTLINED_FUNCTION_175();
        *v25 = 138412290;
        *(v25 + 4) = v34;
        *v36 = v33;
        v37 = v34;
        OUTLINED_FUNCTION_200_1(&dword_1DC287000, v38, v39, "Posted MUXServerFallbackMessage: %@");
        sub_1DC28EB30(v36, &qword_1ECC7DFE0, &qword_1DC5227F0);
        OUTLINED_FUNCTION_146_3();
        v28 = v85;
        OUTLINED_FUNCTION_66();
      }

      else
      {
        v37 = v35;
        v35 = v34;
      }

      v83(v84, v28);
    }

    else
    {
      v81(v79, v80, v85);
      v51 = v82;
      v52 = sub_1DC516F6C();
      v53 = sub_1DC517B9C();

      if (os_log_type_enabled(v52, v53))
      {
        OUTLINED_FUNCTION_140();
        v54 = OUTLINED_FUNCTION_54_13();
        OUTLINED_FUNCTION_332(v54);
        *v22 = 136315394;
        v55 = sub_1DC515D6C();
        OUTLINED_FUNCTION_249_0(v55, v56);
        OUTLINED_FUNCTION_23_2();

        *(v22 + 4) = v51;
        OUTLINED_FUNCTION_220_1();
        v57 = sub_1DC515A5C();
        OUTLINED_FUNCTION_249_0(v57, v58);
        OUTLINED_FUNCTION_23_2();

        *(v22 + 14) = v51;
        OUTLINED_FUNCTION_130_3();
        _os_log_impl(v59, v60, v61, v62, v63, 0x16u);
        OUTLINED_FUNCTION_219_0();
        OUTLINED_FUNCTION_54_12();
        OUTLINED_FUNCTION_58();
      }

      v83(v79, v85);
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](v18);
    OUTLINED_FUNCTION_140_3();
    *(v40 - 32) = v9;
    *(v40 - 24) = v7;
    *(v40 - 16) = v5;
    v41 = objc_allocWithZone(sub_1DC5154AC());
    OUTLINED_FUNCTION_170_1();
    v42 = sub_1DC51541C();
    if (v42)
    {
      v43 = v42;
      OUTLINED_FUNCTION_20_14((v0 + OBJC_IVAR____TtC13CDMFoundation25AssistantNLRequestHandler_messagePublisher));
      OUTLINED_FUNCTION_112_1();
      sub_1DC515D8C();
      v44 = sub_1DC28D414();
      (*(v11 + 16))(v3, v44, v85);
      v45 = v43;
      v46 = sub_1DC516F6C();
      sub_1DC517B9C();

      if (OUTLINED_FUNCTION_302())
      {
        OUTLINED_FUNCTION_63();
        v47 = OUTLINED_FUNCTION_175();
        *v85 = 138412290;
        *(v85 + 4) = v45;
        *v47 = v43;
        v48 = v45;
        OUTLINED_FUNCTION_200_1(&dword_1DC287000, v49, v50, "Posted ExecuteNLOnServerMessage: %@");
        sub_1DC28EB30(v47, &qword_1ECC7DFE0, &qword_1DC5227F0);
        OUTLINED_FUNCTION_54_12();
        OUTLINED_FUNCTION_66();
      }

      else
      {
        v48 = v46;
        v46 = v45;
      }

      v77 = OUTLINED_FUNCTION_147_0();
      v78(v77);
    }

    else
    {
      sub_1DC28D414();
      OUTLINED_FUNCTION_32_5();
      v64(v2);
      v65 = v9;
      v66 = sub_1DC516F6C();
      v67 = v11;
      v68 = sub_1DC517B9C();

      if (os_log_type_enabled(v66, v68))
      {
        v69 = OUTLINED_FUNCTION_140();
        v70 = OUTLINED_FUNCTION_143();
        OUTLINED_FUNCTION_332(v70);
        *v69 = 136315394;
        v71 = sub_1DC515D6C();
        OUTLINED_FUNCTION_249_0(v71, v72);
        OUTLINED_FUNCTION_23_2();

        *(v69 + 4) = v65;
        OUTLINED_FUNCTION_221_0();
        v73 = sub_1DC515A5C();
        OUTLINED_FUNCTION_249_0(v73, v74);
        OUTLINED_FUNCTION_23_2();

        *(v69 + 14) = v65;
        OUTLINED_FUNCTION_198_0(&dword_1DC287000, v75, v76, "ExecuteNLOnServerMessage could not be created for requestId: %s trpCandidateId: %s");
        OUTLINED_FUNCTION_219_0();
        OUTLINED_FUNCTION_54_12();
        OUTLINED_FUNCTION_40_0();
      }

      (*(v67 + 8))(v2, v85);
    }
  }

  OUTLINED_FUNCTION_34();
}

void sub_1DC3D4FF8()
{
  OUTLINED_FUNCTION_33();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D418, &qword_1DC528438);
  OUTLINED_FUNCTION_10(v5);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_54_3();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7CA30, &qword_1DC522A00);
  OUTLINED_FUNCTION_10(v7);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_95();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CEE8, &qword_1DC528550);
  OUTLINED_FUNCTION_10(v9);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_42_11();
  v11 = *MEMORY[0x1E69D0450];
  v12 = sub_1DC515DBC();
  OUTLINED_FUNCTION_35();
  (*(v13 + 104))(v0, v11, v12);
  OUTLINED_FUNCTION_61();
  __swift_storeEnumTagSinglePayload(v14, v15, v16, v12);
  OUTLINED_FUNCTION_235_0();
  sub_1DC5154FC();
  sub_1DC515D9C();
  sub_1DC5154BC();
  sub_1DC515D7C();
  sub_1DC510B6C();
  v17 = OUTLINED_FUNCTION_21_12();
  OUTLINED_FUNCTION_378(v17, v18, v19, v20);
  sub_1DC51551C();
  sub_1DC515D6C();
  v21 = sub_1DC51550C();
  v2(v21);
  sub_1DC5154DC();

  sub_1DC5154EC();
  sub_1DC5161DC();
  OUTLINED_FUNCTION_2();
  v22 = OUTLINED_FUNCTION_73();
  v23(v22);
  OUTLINED_FUNCTION_61();
  __swift_storeEnumTagSinglePayload(v24, v25, v26, v4);
  OUTLINED_FUNCTION_353();
  sub_1DC5154CC();
  OUTLINED_FUNCTION_34();
}

void sub_1DC3D51FC()
{
  OUTLINED_FUNCTION_33();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D418, &qword_1DC528438);
  OUTLINED_FUNCTION_10(v3);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_54_3();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7CA30, &qword_1DC522A00);
  OUTLINED_FUNCTION_10(v5);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_40_3();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CEE8, &qword_1DC528550);
  OUTLINED_FUNCTION_10(v7);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_42_11();
  v9 = *MEMORY[0x1E69D0450];
  v10 = sub_1DC515DBC();
  OUTLINED_FUNCTION_35();
  (*(v11 + 104))(v0, v9, v10);
  OUTLINED_FUNCTION_61();
  __swift_storeEnumTagSinglePayload(v12, v13, v14, v10);
  OUTLINED_FUNCTION_235_0();
  sub_1DC51547C();
  sub_1DC515D9C();
  sub_1DC51542C();
  sub_1DC515D7C();
  sub_1DC510B6C();
  OUTLINED_FUNCTION_61();
  __swift_storeEnumTagSinglePayload(v15, v16, v17, v18);
  sub_1DC51549C();
  sub_1DC515D6C();
  sub_1DC51548C();
  sub_1DC515A5C();
  sub_1DC51544C();

  sub_1DC51545C();
  sub_1DC5161DC();
  OUTLINED_FUNCTION_2();
  v19 = OUTLINED_FUNCTION_73();
  v20(v19);
  OUTLINED_FUNCTION_61();
  __swift_storeEnumTagSinglePayload(v21, v22, v23, v2);
  OUTLINED_FUNCTION_353();
  sub_1DC51543C();
  sub_1DC5162DC();
  OUTLINED_FUNCTION_38_2();
  sub_1DC3D8878();
  OUTLINED_FUNCTION_0_49();
  sub_1DC3D8E40(v24, v25, MEMORY[0x1E69D08D0]);
  sub_1DC51764C();
  sub_1DC51546C();
  OUTLINED_FUNCTION_34();
}

BOOL sub_1DC3D545C()
{
  v0 = MEMORY[0x1E12961D0]();
  if (_MergedGlobals_15 != -1)
  {
    swift_once();
  }

  v1 = qword_1EDAC9538;
  OUTLINED_FUNCTION_62_2();
  v2 = sub_1DC5176FC();
  v3 = [v1 firstMatchInString:v2 options:0 range:{0, v0}];

  if (v3)
  {
  }

  return v3 != 0;
}