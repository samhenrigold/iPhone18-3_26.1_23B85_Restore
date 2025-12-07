uint64_t sub_1C72D50CC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  OUTLINED_FUNCTION_11();
  v6 = v5 & v4;
  v8 = (v7 + 63) >> 6;
  result = sub_1C75504FC();
  v10 = 0;
  if (v6)
  {
    goto LABEL_7;
  }

  while (1)
  {
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v11 >= v8)
    {

      sub_1C706D154();
      sub_1C703FD7C();
      v14 = v13;

      *a2 = v14;
      return result;
    }

    v6 = *(v3 + 64 + 8 * v11);
    ++v10;
    if (v6)
    {
      v10 = v11;
      do
      {
LABEL_7:
        v6 &= v6 - 1;
        v12 = sub_1C75504FC();
        result = sub_1C6FD25FC(v12);
      }

      while (v6);
      continue;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C72D51E4()
{
  v0 = sub_1C754FF1C();
  __swift_allocate_value_buffer(v0, qword_1EC21A4E8);
  __swift_project_value_buffer(v0, qword_1EC21A4E8);
  return sub_1C754FEFC();
}

uint64_t QueryToken.init(localizedText:source:aliasNames:range:suggestions:retrievalResults:disambiguationSuggestionDataSource:debugAliasNames:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t *a11, uint64_t a12)
{
  v18 = *a3;
  v19 = *a11;
  *(a9 + 88) = 0;
  *(a9 + 104) = 0;
  *(a9 + 112) = 0;
  *(a9 + 96) = 0;
  sub_1C72D533C();
  *a9 = v20;
  *(a9 + 8) = v21;
  *(a9 + 16) = a1;
  *(a9 + 24) = a2;
  *(a9 + 32) = v18;
  *(a9 + 40) = a5;
  *(a9 + 48) = a6;
  *(a9 + 56) = a7 & 1;
  *(a9 + 64) = a4;
  *(a9 + 72) = a12;
  *(a9 + 80) = a8;

  *(a9 + 112) = v19;
  sub_1C72D5900(a9, a10);
}

void sub_1C72D533C()
{
  OUTLINED_FUNCTION_33();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A548, &unk_1C7580D28);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_36();
  v64 = v9;
  OUTLINED_FUNCTION_37_3();
  sub_1C755024C();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_14_0();
  v67 = v12 - v11;
  OUTLINED_FUNCTION_37_3();
  sub_1C755023C();
  OUTLINED_FUNCTION_3_0();
  v65 = v14;
  v66 = v13;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_78();
  v17 = v15 - v16;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_140_1();
  v63 = v19;
  v20 = OUTLINED_FUNCTION_37_3();
  TokenSuggestion = type metadata accessor for QueryTokenSuggestion(v20);
  v22 = OUTLINED_FUNCTION_18(TokenSuggestion);
  v24 = v23;
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_5_31();
  v70 = 0x3A74786574;
  v71 = 0xE500000000000000;
  MEMORY[0x1CCA5CD70](v6, v4);
  v25 = 0x3A74786574;
  v26 = 0xE500000000000000;
  v27 = *(v2 + 16);
  if (v27)
  {
    OUTLINED_FUNCTION_191();
    v29 = v2 + v28;
    v30 = *(v24 + 72);
    do
    {
      OUTLINED_FUNCTION_1_101();
      sub_1C72DE0BC();
      strcpy(&v69, "|suggestion:");
      BYTE13(v69) = 0;
      HIWORD(v69) = -5120;
      sub_1C755180C();

      strcpy(&v68, "categoryType: ");
      HIBYTE(v68) = -18;
      QueryTokenCategoryType.description.getter();
      MEMORY[0x1CCA5CD70]();

      MEMORY[0x1CCA5CD70](v68, *(&v68 + 1));

      MEMORY[0x1CCA5CD70](v69, *(&v69 + 1));

      OUTLINED_FUNCTION_2_94();
      sub_1C72DDC7C(v0, v31);
      v29 += v30;
      --v27;
    }

    while (v27);
    v25 = v70;
    v26 = v71;
  }

  v32 = sub_1C72DC29C(v25, v26);
  v34 = v33;
  sub_1C72DE07C(&unk_1EC21A550);
  sub_1C755022C();
  sub_1C6FEB1B0(v32, v34);
  sub_1C72DCCFC(v32, v34, v67);
  v61 = v34;
  v62 = v32;
  sub_1C6FC1640(v32, v34);
  sub_1C755021C();
  v35 = OUTLINED_FUNCTION_103();
  v36(v35);
  v37 = *(v65 + 16);
  v37(v64, v63, v66);
  v38 = 8;
  *(v64 + *(v7 + 36)) = 8;
  *&v68 = MEMORY[0x1E69E7CC0];
  sub_1C6F7ED9C(0, 0, 0, v39, v40, v41, v42);
  v43 = v68;
  v37(v17, v64, v66);
  sub_1C72DE07C(&unk_1EC21A558);
  sub_1C75509AC();
  v45 = *(&v69 + 1);
  v44 = v69;
  v46 = MEMORY[0x1E69E7558];
  while (1)
  {
    v47 = *(v44 + 16);
    if (v45 == v47)
    {
LABEL_11:
      sub_1C6FD7FC8(v64, &qword_1EC21A548, &unk_1C7580D28);

      *&v69 = v43;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00, &qword_1C755BD70);
      sub_1C703328C();
      sub_1C75505FC();
      sub_1C6FC1640(v62, v61);

      (*(v65 + 8))(v63, v66);
      OUTLINED_FUNCTION_90();
      OUTLINED_FUNCTION_25_0();
      return;
    }

    if (v45 >= v47)
    {
      break;
    }

    v48 = *(v44 + v45 + 32);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218F80, &unk_1C75605C0);
    v49 = swift_allocObject();
    *(v49 + 16) = xmmword_1C755BAB0;
    *(v49 + 56) = MEMORY[0x1E69E7508];
    *(v49 + 64) = v46;
    *(v49 + 32) = v48;
    v50 = sub_1C75506BC();
    v52 = v51;
    *&v68 = v43;
    v54 = *(v43 + 16);
    v53 = *(v43 + 24);
    if (v54 >= v53 >> 1)
    {
      v56 = OUTLINED_FUNCTION_15(v53);
      sub_1C6F7ED9C(v56, v54 + 1, 1, v57, v58, v59, v60);
      v43 = v68;
    }

    --v38;
    *(v43 + 16) = v54 + 1;
    v55 = v43 + 16 * v54;
    *(v55 + 32) = v50;
    *(v55 + 40) = v52;
    ++v45;
    if (!v38)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
}

uint64_t sub_1C72D5900(uint64_t a1, uint64_t a2)
{
  *(a1 + 96) = a2;
  sub_1C75504FC();

  v3 = *(a1 + 96);
  if (v3)
  {
    v6 = *(a1 + 96);
    sub_1C72D50CC(&v6, &v5);
    v3 = v5;
  }

  *(a1 + 104) = v3;
}

uint64_t QueryToken.init(queryAnnotation:substring:source:aliasNames:range:debugAliasNames:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>, uint64_t a10)
{
  v35 = a6;
  v36 = a7;
  v34 = a10;
  v16 = *a4;
  v17 = [a1 suggestion];
  if (v17)
  {
    v18 = v17;
    v19 = [objc_opt_self() PHSearchEntityCategoryTypeFromPHSearchSuggestionCategoriesType_];
    static StoryGenerationUtilities.queryTokenCategoryTypeString(for:)(v19, &v37 + 7);
    sub_1C72D5B04();
  }

  else
  {
    v21 = [a1 QUToken];
    if (!v21)
    {
      v26 = MEMORY[0x1E69E7CC0];
      goto LABEL_6;
    }

    v18 = v21;
    sub_1C72D5FAC(v21, a2, a3, a5, v22, v23, v24, v25, v33, a10, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44);
  }

  v26 = v20;

LABEL_6:
  sub_1C72D533C();
  v28 = v27;
  v30 = v29;

  LOBYTE(v38) = a8 & 1;

  v32 = v38;
  *a9 = v28;
  *(a9 + 8) = v30;
  *(a9 + 16) = a2;
  *(a9 + 24) = a3;
  *(a9 + 32) = v16;
  *(a9 + 40) = v35;
  *(a9 + 48) = v36;
  *(a9 + 56) = v32;
  *(a9 + 64) = a5;
  *(a9 + 72) = v34;
  *(a9 + 80) = v26;
  *(a9 + 88) = 0;
  *(a9 + 104) = 0;
  *(a9 + 112) = 0;
  *(a9 + 96) = 0;
  return result;
}

void sub_1C72D5B04()
{
  OUTLINED_FUNCTION_33();
  v81 = v2;
  v82 = v3;
  v80 = v4;
  v6 = v5;
  v83 = v7;
  TokenSuggestion = type metadata accessor for QueryTokenSuggestion(0);
  v9 = OUTLINED_FUNCTION_18(TokenSuggestion);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_78();
  v12 = v10 - v11;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_29_8();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_206_1();
  MEMORY[0x1EEE9AC00](v15);
  v17 = (&v80 - v16);
  MEMORY[0x1EEE9AC00](v18);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_511();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_76_14();
  MEMORY[0x1EEE9AC00](v21);
  v23 = (&v80 - v22);
  v24 = *v6;
  switch(*v6)
  {
    case 1:
      v55 = sub_1C71CCABC(v83);
      v56 = MEMORY[0x1E69E7CC0];
      if (v55)
      {
        v57 = v55;
      }

      else
      {
        v57 = MEMORY[0x1E69E7CC0];
      }

      *v23 = v57;
      type metadata accessor for QueryTokenCategoryType(0);
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_1_101();
      sub_1C72DE0BC();
      v58 = OUTLINED_FUNCTION_52_24();
      sub_1C6FB35C8(v58, v59, v60, v56);
      OUTLINED_FUNCTION_55_24();
      if (v38)
      {
        v76 = OUTLINED_FUNCTION_2_0(v61);
        sub_1C6FB35C8(v76, v77, v78, v6);
        v6 = v79;
      }

      OUTLINED_FUNCTION_2_94();
      sub_1C72DDC7C(v23, v62);
      *(v6 + 16) = v56;
      OUTLINED_FUNCTION_20_49();
      OUTLINED_FUNCTION_3_86();
      goto LABEL_23;
    case 3:
      sub_1C72D99D8(v83, v80, v81, v82);
      OUTLINED_FUNCTION_1_101();
      sub_1C72DE0BC();
      v33 = OUTLINED_FUNCTION_52_24();
      sub_1C6FB35C8(v33, v34, v35, v36);
      OUTLINED_FUNCTION_55_24();
      if (v38)
      {
        v63 = OUTLINED_FUNCTION_2_0(v37);
        sub_1C6FB35C8(v63, v64, v65, v6);
        v6 = v66;
      }

      OUTLINED_FUNCTION_2_94();
      sub_1C72DDC7C(v1, v39);
      *(v6 + 16) = v12;
      OUTLINED_FUNCTION_20_49();
      OUTLINED_FUNCTION_3_86();
      goto LABEL_23;
    case 7:
      sub_1C72DA0C8(v83, v17);
      OUTLINED_FUNCTION_1_101();
      sub_1C72DE0BC();
      v40 = OUTLINED_FUNCTION_52_24();
      sub_1C6FB35C8(v40, v41, v42, v43);
      OUTLINED_FUNCTION_55_24();
      if (v38)
      {
        v67 = OUTLINED_FUNCTION_2_0(v44);
        sub_1C6FB35C8(v67, v68, v69, v6);
        v6 = v70;
      }

      OUTLINED_FUNCTION_2_94();
      sub_1C72DDC7C(v17, v45);
      *(v6 + 16) = v12;
      OUTLINED_FUNCTION_20_49();
      OUTLINED_FUNCTION_3_86();
      goto LABEL_23;
    case 0xB:
      sub_1C72DA41C(v83, v0);
      OUTLINED_FUNCTION_1_101();
      sub_1C72DE0BC();
      v46 = OUTLINED_FUNCTION_52_24();
      sub_1C6FB35C8(v46, v47, v48, v49);
      v51 = v50;
      v53 = *(v50 + 16);
      v52 = *(v50 + 24);
      if (v53 >= v52 >> 1)
      {
        OUTLINED_FUNCTION_15(v52);
        OUTLINED_FUNCTION_90_9();
        sub_1C6FB35C8(v71, v72, v73, v74);
        v51 = v75;
      }

      OUTLINED_FUNCTION_2_94();
      sub_1C72DDC7C(v0, v54);
      *(v51 + 16) = v53 + 1;
      OUTLINED_FUNCTION_20_49();
      OUTLINED_FUNCTION_3_86();
LABEL_23:
      sub_1C72DD0B8();
      break;
    default:
      if (qword_1EC213FF0 != -1)
      {
        OUTLINED_FUNCTION_51_19(&qword_1EC213FF0);
      }

      v25 = sub_1C754FF1C();
      __swift_project_value_buffer(v25, qword_1EC21A4E8);
      v26 = sub_1C754FEEC();
      v27 = sub_1C755119C();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        v85 = v29;
        *v28 = 136315138;
        v84 = v24;
        TokenCategoryType = QueryTokenCategoryTypeString.rawValue.getter();
        v32 = sub_1C6F765A4(TokenCategoryType, v31, &v85);

        *(v28 + 4) = v32;
        _os_log_impl(&dword_1C6F5C000, v26, v27, "Create QueryTokenSuggestion object for category type %s using PHSearchSuggestion is not supported", v28, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v29);
        OUTLINED_FUNCTION_109();
        OUTLINED_FUNCTION_109();
      }

      break;
  }

  OUTLINED_FUNCTION_25_0();
}

void sub_1C72D5FAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_33();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216328, &qword_1C7575BE0);
  OUTLINED_FUNCTION_76(v24);
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_108_0(v26);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2189C8, &qword_1C7574C40);
  OUTLINED_FUNCTION_76(v27);
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_36();
  v30 = OUTLINED_FUNCTION_119(v29);
  v470 = type metadata accessor for GroundedGenericLocation(v30);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_108_0(v33 - v32);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A538, &unk_1C7580D10);
  v35 = OUTLINED_FUNCTION_76(v34);
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_130();
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_140_1();
  OUTLINED_FUNCTION_119(v38);
  v454 = sub_1C754DF6C();
  OUTLINED_FUNCTION_3_0();
  v40 = v39;
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_108_0(v43 - v42);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218C50, &qword_1C75606A0);
  v45 = OUTLINED_FUNCTION_76(v44);
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_14_2();
  v490 = v46;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_140_1();
  v489 = v48;
  v49 = OUTLINED_FUNCTION_37_3();
  TokenSuggestion = type metadata accessor for QueryTokenSuggestion(v49);
  OUTLINED_FUNCTION_3_0();
  v492 = v50;
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_14_2();
  v487 = v52;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_130();
  v486 = v54;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v55);
  OUTLINED_FUNCTION_130();
  v485 = v56;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v57);
  OUTLINED_FUNCTION_130();
  v484 = v58;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v59);
  OUTLINED_FUNCTION_130();
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v60);
  OUTLINED_FUNCTION_130();
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v61);
  OUTLINED_FUNCTION_130();
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v62);
  OUTLINED_FUNCTION_130();
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v63);
  OUTLINED_FUNCTION_130();
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v64);
  OUTLINED_FUNCTION_130();
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v65);
  OUTLINED_FUNCTION_130();
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v66);
  OUTLINED_FUNCTION_130();
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v67);
  OUTLINED_FUNCTION_130();
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v68);
  OUTLINED_FUNCTION_130();
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v69);
  OUTLINED_FUNCTION_130();
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v70);
  OUTLINED_FUNCTION_130();
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v71);
  OUTLINED_FUNCTION_130();
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v72);
  OUTLINED_FUNCTION_130();
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v73);
  OUTLINED_FUNCTION_130();
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v74);
  OUTLINED_FUNCTION_130();
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v75);
  OUTLINED_FUNCTION_130();
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v76);
  OUTLINED_FUNCTION_130();
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v77);
  OUTLINED_FUNCTION_130();
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v78);
  OUTLINED_FUNCTION_130();
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v79);
  OUTLINED_FUNCTION_130();
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v80);
  OUTLINED_FUNCTION_130();
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v81);
  OUTLINED_FUNCTION_130();
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v82);
  OUTLINED_FUNCTION_130();
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v83);
  OUTLINED_FUNCTION_130();
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v84);
  OUTLINED_FUNCTION_130();
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v85);
  OUTLINED_FUNCTION_130();
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v86);
  OUTLINED_FUNCTION_130();
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v87);
  OUTLINED_FUNCTION_130();
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v88);
  OUTLINED_FUNCTION_130();
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v89);
  OUTLINED_FUNCTION_130();
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v90);
  OUTLINED_FUNCTION_140_1();
  OUTLINED_FUNCTION_119(v91);
  v497 = sub_1C754E25C();
  OUTLINED_FUNCTION_3_0();
  v93 = v92;
  MEMORY[0x1EEE9AC00](v94);
  OUTLINED_FUNCTION_14_0();
  v496 = v96 - v95;
  OUTLINED_FUNCTION_37_3();
  v97 = sub_1C754E2FC();
  OUTLINED_FUNCTION_3_0();
  v99 = v98;
  MEMORY[0x1EEE9AC00](v100);
  OUTLINED_FUNCTION_14_0();
  v103 = v102 - v101;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A540, &qword_1C7580D20);
  OUTLINED_FUNCTION_27_0();
  *&v105 = MEMORY[0x1EEE9AC00](v104).n128_u64[0];
  v107 = &v450 - v106;
  v108 = [v23 entityCategoryTypes];
  sub_1C754E29C();

  sub_1C754E27C();
  (*(v99 + 8))(v103, v97);
  v109 = sub_1C72DE07C(&qword_1EDD0CB70);
  v495 = (v93 + 8);
  v469 = v40 + 16;
  v455 = (v40 + 8);
  v498 = MEMORY[0x1E69E7CC0];
  v488 = v23;
  v491 = v40;
  v493 = v97;
  v494 = v107;
  while (2)
  {
    v110 = v496;
    sub_1C755107C();
    sub_1C72DE07C(&qword_1EDD0CB80);
    v111 = v497;
    v112 = sub_1C755063C();
    (*v495)(v110, v111);
    if (v112)
    {
      sub_1C6FD7FC8(v107, &qword_1EC21A540, &qword_1C7580D20);
      OUTLINED_FUNCTION_25_0();
    }

    else
    {
      v113 = v107;
      v114 = sub_1C75510CC();
      v115 = v109;
      v109 = *v116;
      v114(v500, 0);
      v107 = v115;
      sub_1C755108C();
      if ((v109 & 0x8000000000000000) == 0)
      {
        v117 = [v23 metadataForCategoryType_];
        if (v117)
        {
          v113 = v117;
          v125 = sub_1C7550B5C();
        }

        else
        {
          v125 = MEMORY[0x1E69E7CC0];
        }

        switch(v109)
        {
          case 1uLL:
            if ([objc_opt_self() enableQueryAnnotationPipelineInPhotos])
            {
              sub_1C71BBE78(v125);
              OUTLINED_FUNCTION_68();
              if (v113)
              {
                v158 = v113;
              }

              else
              {
                v158 = MEMORY[0x1E69E7CC0];
              }

              v159 = *(v158 + 2);
              if (v159 == 2)
              {
                OUTLINED_FUNCTION_56_22();
                sub_1C6FB632C();
                v262 = sub_1C754DABC();
                OUTLINED_FUNCTION_12();
                v264 = *(v263 + 16);
                v265 = v263 + 16;
                OUTLINED_FUNCTION_191();
                v267 = &v158[v266];
                v264(v489, &v158[v266], v262);
                OUTLINED_FUNCTION_90_9();
                __swift_storeEnumTagSinglePayload(v268, v269, v270, v271);
                sub_1C6FB632C();
                v264(v490, &v267[*(v265 + 56)], v262);

                OUTLINED_FUNCTION_90_9();
                goto LABEL_212;
              }

              if (v159 == 1)
              {
                OUTLINED_FUNCTION_56_22();
                sub_1C6FB632C();
                v160 = sub_1C754DABC();
                OUTLINED_FUNCTION_12();
                (*(v161 + 16))(v489, &v158[(*(v161 + 80) + 32) & ~*(v161 + 80)], v160);

                OUTLINED_FUNCTION_90_9();
                __swift_storeEnumTagSinglePayload(v162, v163, v164, v165);
                OUTLINED_FUNCTION_84();
                v169 = v160;
LABEL_212:
                __swift_storeEnumTagSinglePayload(v166, v167, v168, v169);
LABEL_213:
                __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218CC0, &qword_1C7563B90);
                sub_1C6FD7F70();
                sub_1C6FD7F70();
                type metadata accessor for QueryTokenCategoryType(0);
                swift_storeEnumTagMultiPayload();
                OUTLINED_FUNCTION_1_101();
                sub_1C72DE0BC();
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v342 = OUTLINED_FUNCTION_8_64();
                  sub_1C6FB35C8(v342, v343, v344, v345);
                  v498 = v346;
                }

                v109 = v107;
                OUTLINED_FUNCTION_9_68();
                v107 = v494;
                if (v142)
                {
                  v347 = OUTLINED_FUNCTION_2_0(v272);
                  sub_1C6FB35C8(v347, v348, v349, v498);
                  v498 = v350;
                }

                OUTLINED_FUNCTION_2_94();
                sub_1C72DDC7C(v474, v273);
                sub_1C6FD7FC8(v490, &qword_1EC218C50, &qword_1C75606A0);
                sub_1C6FD7FC8(v489, &qword_1EC218C50, &qword_1C75606A0);
                OUTLINED_FUNCTION_0_134();
                goto LABEL_218;
              }
            }

            else
            {
              sub_1C71BBEB4(v125);
              OUTLINED_FUNCTION_68();
              if (v113)
              {
                v216 = v113;
              }

              else
              {
                v216 = MEMORY[0x1E69E7CC0];
              }

              v217 = *(v216 + 2);
              if (v217 == 2)
              {
                OUTLINED_FUNCTION_56_22();
                sub_1C6FB632C();
                OUTLINED_FUNCTION_191();
                v275 = &v216[v274];
                v276 = *(v40 + 16);
                v277 = v453;
                v452 = v275;
                v278 = v454;
                v456 = v276;
                (v276)(v453);
                sub_1C703E8A0();
                if (qword_1EC214168 != -1)
                {
                  OUTLINED_FUNCTION_44_26();
                  swift_once();
                }

                v279 = sub_1C754E24C();
                __swift_project_value_buffer(v279, qword_1EC21C0C8);
                sub_1C754E1BC();

                v451 = *(v491 + 8);
                v280 = OUTLINED_FUNCTION_108_9();
                v281(v280);
                v282 = sub_1C754DABC();
                OUTLINED_FUNCTION_25_8();
                __swift_storeEnumTagSinglePayload(v283, v284, v285, v282);
                sub_1C6FB632C();
                v456(v277, v452 + *(v491 + 72), v278);

                sub_1C703E8A0();
                sub_1C754E1BC();

                v286 = OUTLINED_FUNCTION_108_9();
                v451(v286);
                v40 = v491;
                OUTLINED_FUNCTION_25_8();
                __swift_storeEnumTagSinglePayload(v287, v288, v289, v282);
                goto LABEL_213;
              }

              v218 = v454;
              if (v217 == 1)
              {
                OUTLINED_FUNCTION_56_22();
                sub_1C6FB632C();
                OUTLINED_FUNCTION_191();
                v220 = v453;
                (*(v40 + 16))(v453, &v216[v219], v218);

                sub_1C703E8A0();
                if (qword_1EC214168 != -1)
                {
                  OUTLINED_FUNCTION_44_26();
                  swift_once();
                }

                v221 = sub_1C754E24C();
                __swift_project_value_buffer(v221, qword_1EC21C0C8);
                v222 = v489;
                sub_1C754E1BC();

                (*v455)(v220, v218);
                v223 = sub_1C754DABC();
                v224 = v222;
                v225 = 0;
                goto LABEL_198;
              }
            }

            v223 = sub_1C754DABC();
            v224 = v489;
            v225 = 1;
LABEL_198:
            __swift_storeEnumTagSinglePayload(v224, v225, 1, v223);
            OUTLINED_FUNCTION_84();
            v169 = v223;
            goto LABEL_212;
          case 3uLL:
            sub_1C71BBD84(v125, v118, v119, v120, v121, v122, v123, v124, v450, v451, v452, v453, v454, v455, v456, v457, v458, v459, v460, v461, v462, v463, v464, v465, v466, v467, v468, v469);
            OUTLINED_FUNCTION_68();
            v144 = MEMORY[0x1E69E7CC0];
            if (v113)
            {
              v144 = v113;
            }

            *v473 = v144;
            type metadata accessor for QueryTokenCategoryType(0);
            OUTLINED_FUNCTION_63_2();
            swift_storeEnumTagMultiPayload();
            OUTLINED_FUNCTION_1_101();
            sub_1C72DE0BC();
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v308 = OUTLINED_FUNCTION_8_64();
              sub_1C6FB35C8(v308, v309, v310, v311);
              v498 = v312;
            }

            OUTLINED_FUNCTION_9_68();
            v109 = v115;
            if (v142)
            {
              v313 = OUTLINED_FUNCTION_2_0(v145);
              sub_1C6FB35C8(v313, v314, v315, v498);
              v498 = v316;
            }

            v107 = v494;
            OUTLINED_FUNCTION_2_94();
            sub_1C72DDC7C(v473, v146);
            OUTLINED_FUNCTION_0_134();
            goto LABEL_218;
          case 4uLL:
            sub_1C71BC154(v125);
            OUTLINED_FUNCTION_68();
            sub_1C706EC80();
            v179 = sub_1C71CDA68(v178);
            v180 = v475;
            *v475 = v179;
            v180[1] = MEMORY[0x1E69E7CD0];
            type metadata accessor for QueryTokenCategoryType(0);
            OUTLINED_FUNCTION_63_2();
            swift_storeEnumTagMultiPayload();
            OUTLINED_FUNCTION_1_101();
            sub_1C72DE0BC();
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v369 = OUTLINED_FUNCTION_8_64();
              sub_1C6FB35C8(v369, v370, v371, v372);
              v498 = v373;
            }

            OUTLINED_FUNCTION_9_68();
            v109 = v115;
            if (v142)
            {
              v374 = OUTLINED_FUNCTION_2_0(v181);
              sub_1C6FB35C8(v374, v375, v376, v498);
              v498 = v377;
            }

            v107 = v494;
            OUTLINED_FUNCTION_2_94();
            sub_1C72DDC7C(v475, v182);
            OUTLINED_FUNCTION_0_134();
            goto LABEL_218;
          case 5uLL:
            if (!*(v125 + 16))
            {

              OUTLINED_FUNCTION_144_0(&v489);
              OUTLINED_FUNCTION_84();
              __swift_storeEnumTagSinglePayload(v245, v246, v247, v470);
              v109 = v115;
LABEL_189:
              sub_1C6FD7FC8(v125, &qword_1EC2189C8, &qword_1C7574C40);
              v107 = v494;
              continue;
            }

            sub_1C6F774EC(v125 + 32, v500);

            OUTLINED_FUNCTION_144_0(&v489);
            v196 = v470;
            swift_dynamicCast();
            OUTLINED_FUNCTION_90_9();
            __swift_storeEnumTagSinglePayload(v197, v198, v199, v200);
            v201 = OUTLINED_FUNCTION_15_6();
            v109 = v115;
            if (__swift_getEnumTagSinglePayload(v201, v202, v196) == 1)
            {
              goto LABEL_189;
            }

            OUTLINED_FUNCTION_41_31();
            OUTLINED_FUNCTION_63_17();
            sub_1C72DD0B8();
            OUTLINED_FUNCTION_63_17();
            sub_1C72DE0BC();
            type metadata accessor for QueryTokenCategoryType(0);
            OUTLINED_FUNCTION_63_2();
            swift_storeEnumTagMultiPayload();
            OUTLINED_FUNCTION_1_101();
            sub_1C72DE0BC();
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v107 = v494;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v423 = OUTLINED_FUNCTION_8_64();
              sub_1C6FB35C8(v423, v424, v425, v426);
              v498 = v427;
            }

            OUTLINED_FUNCTION_9_68();
            if (v142)
            {
              v428 = OUTLINED_FUNCTION_2_0(v204);
              sub_1C6FB35C8(v428, v429, v430, v498);
              v498 = v431;
            }

            OUTLINED_FUNCTION_2_94();
            sub_1C72DDC7C(v463, v205);
            sub_1C72DDC7C(v465, type metadata accessor for GroundedGenericLocation);
            OUTLINED_FUNCTION_0_134();
LABEL_218:
            sub_1C72DD0B8();
            continue;
          case 6uLL:

            type metadata accessor for QueryTokenCategoryType(0);
            OUTLINED_FUNCTION_144_0(&v499);
            swift_storeEnumTagMultiPayload();
            OUTLINED_FUNCTION_1_101();
            sub_1C72DE0BC();
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v351 = OUTLINED_FUNCTION_8_64();
              sub_1C6FB35C8(v351, v352, v353, v354);
              v498 = v355;
            }

            OUTLINED_FUNCTION_9_68();
            v109 = v115;
            if (v142)
            {
              v356 = OUTLINED_FUNCTION_2_0(v170);
              sub_1C6FB35C8(v356, v357, v358, v498);
              v498 = v359;
            }

            v107 = v494;
            OUTLINED_FUNCTION_2_94();
            sub_1C72DDC7C(v476, v171);
            OUTLINED_FUNCTION_0_134();
            goto LABEL_218;
          case 7uLL:
            if (*(v125 + 16))
            {
              sub_1C6F774EC(v125 + 32, v500);

              if (swift_dynamicCast())
              {
                sub_1C75506FC();
                v213 = v212;

                if (v213)
                {
                  sub_1C754F11C();

                  goto LABEL_192;
                }
              }
            }

            else
            {
            }

            sub_1C754F14C();
            OUTLINED_FUNCTION_84();
            __swift_storeEnumTagSinglePayload(v248, v249, v250, v251);
LABEL_192:
            OUTLINED_FUNCTION_63_17();
            sub_1C7091CBC();
            type metadata accessor for QueryTokenCategoryType(0);
            OUTLINED_FUNCTION_63_2();
            swift_storeEnumTagMultiPayload();
            OUTLINED_FUNCTION_1_101();
            sub_1C72DE0BC();
            v109 = v115;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v396 = OUTLINED_FUNCTION_8_64();
              sub_1C6FB35C8(v396, v397, v398, v399);
              v498 = v400;
            }

            v107 = v494;
            OUTLINED_FUNCTION_9_68();
            if (v142)
            {
              v401 = OUTLINED_FUNCTION_2_0(v252);
              sub_1C6FB35C8(v401, v402, v403, v498);
              v498 = v404;
            }

            OUTLINED_FUNCTION_2_94();
            sub_1C72DDC7C(v477, v253);
            OUTLINED_FUNCTION_0_134();
            goto LABEL_218;
          case 8uLL:
            sub_1C71BC2A4();
            OUTLINED_FUNCTION_68();
            if (v113)
            {
              v149 = v113;
            }

            else
            {
              v149 = MEMORY[0x1E69E7CC0];
            }

            if (sub_1C6FB6304())
            {
              sub_1C6FB6330();
              if ((v149 & 0xC000000000000001) != 0)
              {
                MEMORY[0x1CCA5DDD0](0, v149);
              }

              else
              {
                v150 = v149[4];
              }

              OUTLINED_FUNCTION_68();
              v151 = (v149 & 0xC000000000000001);
              sub_1C72DCFB8(v151);
              if (v152)
              {
                sub_1C75506FC();
                v154 = v153;
              }

              else
              {
                v154 = 0;
              }

              v257 = [v151 momentUUIDs];
              sub_1C7550B5C();
            }

            else
            {

              v154 = 0;
              v151 = 0;
            }

            sub_1C706D154();
            static QueryToken.personalEventSuggestion(from:momentUUIDs:)(v154, v258, v478);

            OUTLINED_FUNCTION_1_101();
            sub_1C72DE0BC();
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v326 = OUTLINED_FUNCTION_8_64();
              sub_1C6FB35C8(v326, v327, v328, v329);
              v498 = v330;
            }

            v40 = v491;
            v109 = v115;
            v260 = *(v498 + 16);
            v259 = *(v498 + 24);
            v107 = v494;
            if (v260 >= v259 >> 1)
            {
              v331 = OUTLINED_FUNCTION_15(v259);
              sub_1C6FB35C8(v331, v260 + 1, 1, v498);
              v498 = v332;
            }

            OUTLINED_FUNCTION_2_94();
            sub_1C72DDC7C(v478, v261);
            *(v498 + 16) = v260 + 1;
            OUTLINED_FUNCTION_6_75();
            OUTLINED_FUNCTION_3_86();
            goto LABEL_218;
          case 9uLL:

            type metadata accessor for QueryTokenCategoryType(0);
            OUTLINED_FUNCTION_144_0(&a9);
            swift_storeEnumTagMultiPayload();
            OUTLINED_FUNCTION_1_101();
            sub_1C72DE0BC();
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v387 = OUTLINED_FUNCTION_8_64();
              sub_1C6FB35C8(v387, v388, v389, v390);
              v498 = v391;
            }

            OUTLINED_FUNCTION_9_68();
            v109 = v115;
            if (v142)
            {
              v392 = OUTLINED_FUNCTION_2_0(v210);
              sub_1C6FB35C8(v392, v393, v394, v498);
              v498 = v395;
            }

            v107 = v494;
            OUTLINED_FUNCTION_2_94();
            sub_1C72DDC7C(v479, v211);
            OUTLINED_FUNCTION_0_134();
            goto LABEL_218;
          case 0xAuLL:

            type metadata accessor for QueryTokenCategoryType(0);
            OUTLINED_FUNCTION_144_0(&a11);
            swift_storeEnumTagMultiPayload();
            OUTLINED_FUNCTION_1_101();
            sub_1C72DE0BC();
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v299 = OUTLINED_FUNCTION_8_64();
              sub_1C6FB35C8(v299, v300, v301, v302);
              v498 = v303;
            }

            OUTLINED_FUNCTION_9_68();
            v109 = v115;
            if (v142)
            {
              v304 = OUTLINED_FUNCTION_2_0(v141);
              sub_1C6FB35C8(v304, v305, v306, v498);
              v498 = v307;
            }

            v107 = v494;
            OUTLINED_FUNCTION_2_94();
            sub_1C72DDC7C(v480, v143);
            OUTLINED_FUNCTION_0_134();
            goto LABEL_218;
          case 0xBuLL:

            type metadata accessor for QueryTokenCategoryType(0);
            OUTLINED_FUNCTION_144_0(&a13);
            swift_storeEnumTagMultiPayload();
            OUTLINED_FUNCTION_1_101();
            sub_1C72DE0BC();
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v317 = OUTLINED_FUNCTION_8_64();
              sub_1C6FB35C8(v317, v318, v319, v320);
              v498 = v321;
            }

            OUTLINED_FUNCTION_9_68();
            v109 = v115;
            if (v142)
            {
              v322 = OUTLINED_FUNCTION_2_0(v147);
              sub_1C6FB35C8(v322, v323, v324, v498);
              v498 = v325;
            }

            v107 = v494;
            OUTLINED_FUNCTION_2_94();
            sub_1C72DDC7C(v481, v148);
            OUTLINED_FUNCTION_0_134();
            goto LABEL_218;
          case 0xCuLL:
            sub_1C71BBD84(v125, v118, v119, v120, v121, v122, v123, v124, v450, v451, v452, v453, v454, v455, v456, v457, v458, v459, v460, v461, v462, v463, v464, v465, v466, v467, v468, v469);
            OUTLINED_FUNCTION_68();
            v183 = MEMORY[0x1E69E7CC0];
            if (v113)
            {
              v184 = v113;
            }

            else
            {
              v184 = MEMORY[0x1E69E7CC0];
            }

            v185 = v184[2];
            if (v185)
            {
              v500[0] = MEMORY[0x1E69E7CC0];
              sub_1C716E7B4(0, v185, 0);
              v183 = v500[0];
              v186 = (v184 + 5);
              do
              {
                sub_1C75504FC();
                v187 = sub_1C755065C();
                v188 = PHMemoryMoodForString();

                v500[0] = v183;
                v190 = *(v183 + 16);
                v189 = *(v183 + 24);
                if (v190 >= v189 >> 1)
                {
                  OUTLINED_FUNCTION_15(v189);
                  OUTLINED_FUNCTION_321();
                  sub_1C716E7B4(v191, v192, v193);
                  v183 = v500[0];
                }

                *(v183 + 16) = v190 + 1;
                *(v183 + 8 * v190 + 32) = v188;
                v186 += 16;
                --v185;
              }

              while (v185);
            }

            *v482 = v183;
            type metadata accessor for QueryTokenCategoryType(0);
            OUTLINED_FUNCTION_63_2();
            swift_storeEnumTagMultiPayload();
            OUTLINED_FUNCTION_1_101();
            sub_1C72DE0BC();
            v109 = v107;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v378 = OUTLINED_FUNCTION_8_64();
              sub_1C6FB35C8(v378, v379, v380, v381);
              v498 = v382;
            }

            v23 = v488;
            v40 = v491;
            v107 = v494;
            OUTLINED_FUNCTION_9_68();
            if (v142)
            {
              v383 = OUTLINED_FUNCTION_2_0(v194);
              sub_1C6FB35C8(v383, v384, v385, v498);
              v498 = v386;
            }

            OUTLINED_FUNCTION_2_94();
            sub_1C72DDC7C(v482, v195);
            OUTLINED_FUNCTION_0_134();
            goto LABEL_218;
          case 0xDuLL:
            if (*(v125 + 16))
            {
              sub_1C6F774EC(v125 + 32, v500);

              swift_dynamicCast();
            }

            else
            {
            }

            v109 = v115;
            sub_1C755065C();
            OUTLINED_FUNCTION_68();
            v241 = PHMemoryCurationLengthForString();

            *v483 = v241;
            type metadata accessor for QueryTokenCategoryType(0);
            OUTLINED_FUNCTION_63();
            swift_storeEnumTagMultiPayload();
            OUTLINED_FUNCTION_1_101();
            sub_1C72DE0BC();
            v242 = swift_isUniquelyReferenced_nonNull_native();
            v107 = v494;
            if ((v242 & 1) == 0)
            {
              v290 = OUTLINED_FUNCTION_8_64();
              sub_1C6FB35C8(v290, v291, v292, v293);
              v498 = v294;
            }

            OUTLINED_FUNCTION_9_68();
            if (v142)
            {
              v295 = OUTLINED_FUNCTION_2_0(v243);
              sub_1C6FB35C8(v295, v296, v297, v498);
              v498 = v298;
            }

            OUTLINED_FUNCTION_2_94();
            sub_1C72DDC7C(v483, v244);
            OUTLINED_FUNCTION_0_134();
            goto LABEL_218;
          case 0xEuLL:
            sub_1C71BBD84(v125, v118, v119, v120, v121, v122, v123, v124, v450, v451, v452, v453, v454, v455, v456, v457, v458, v459, v460, v461, v462, v463, v464, v465, v466, v467, v468, v469);
            OUTLINED_FUNCTION_68();
            v155 = MEMORY[0x1E69E7CC0];
            if (v113)
            {
              v155 = v113;
            }

            *v484 = v155;
            type metadata accessor for QueryTokenCategoryType(0);
            OUTLINED_FUNCTION_63_2();
            swift_storeEnumTagMultiPayload();
            OUTLINED_FUNCTION_1_101();
            sub_1C72DE0BC();
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v333 = OUTLINED_FUNCTION_8_64();
              sub_1C6FB35C8(v333, v334, v335, v336);
              v498 = v337;
            }

            OUTLINED_FUNCTION_9_68();
            v109 = v115;
            if (v142)
            {
              v338 = OUTLINED_FUNCTION_2_0(v156);
              sub_1C6FB35C8(v338, v339, v340, v498);
              v498 = v341;
            }

            v107 = v494;
            OUTLINED_FUNCTION_2_94();
            sub_1C72DDC7C(v484, v157);
            OUTLINED_FUNCTION_0_134();
            sub_1C72DD0B8();
            continue;
          case 0xFuLL:
            sub_1C71BBD84(v125, v118, v119, v120, v121, v122, v123, v124, v450, v451, v452, v453, v454, v455, v456, v457, v458, v459, v460, v461, v462, v463, v464, v465, v466, v467, v468, v469);
            OUTLINED_FUNCTION_68();
            v126 = MEMORY[0x1E69E7CC0];
            if (v113)
            {
              v127 = v113;
            }

            else
            {
              v127 = MEMORY[0x1E69E7CC0];
            }

            v128 = *(v127 + 2);
            if (v128)
            {
              v500[0] = MEMORY[0x1E69E7CC0];
              sub_1C716E88C(0, v128, 0);
              v109 = v500[0];
              v456 = v127;
              v129 = (v127 + 40);
              do
              {
                v131 = *(v129 - 1);
                v130 = *v129;
                v132 = v131 == 2036490562 && v130 == 0xE400000000000000;
                if (v132 || (OUTLINED_FUNCTION_6_2(2036490562, 0xE400000000000000) & 1) != 0)
                {
                  v133 = 1;
                }

                else
                {
                  v136 = v131 == 0x646C696843 && v130 == 0xE500000000000000;
                  if (v136 || (OUTLINED_FUNCTION_6_2(0x646C696843, 0xE500000000000000) & 1) != 0)
                  {
                    v133 = 2;
                  }

                  else
                  {
                    v137 = v131 == 0x644120676E756F59 && v130 == 0xEB00000000746C75;
                    if (v137 || (OUTLINED_FUNCTION_6_2(0x644120676E756F59, 0xEB00000000746C75) & 1) != 0)
                    {
                      v133 = 3;
                    }

                    else
                    {
                      v138 = v131 == 0x726F696E6553 && v130 == 0xE600000000000000;
                      if (v138 || (OUTLINED_FUNCTION_6_2(0x726F696E6553, 0xE600000000000000) & 1) != 0)
                      {
                        v133 = 4;
                      }

                      else if (v131 == 0x746C756441 && v130 == 0xE500000000000000)
                      {
                        v133 = 5;
                      }

                      else if (OUTLINED_FUNCTION_6_2(0x746C756441, 0xE500000000000000))
                      {
                        v133 = 5;
                      }

                      else
                      {
                        v133 = 0;
                      }
                    }
                  }
                }

                v500[0] = v109;
                v135 = *(v109 + 16);
                v134 = *(v109 + 24);
                if (v135 >= v134 >> 1)
                {
                  v140 = OUTLINED_FUNCTION_15(v134);
                  sub_1C716E88C(v140, v135 + 1, 1);
                  v109 = v500[0];
                }

                *(v109 + 16) = v135 + 1;
                *(v109 + 2 * v135 + 32) = v133;
                v129 += 2;
                --v128;
              }

              while (v128);
            }

            else
            {

              v109 = v126;
            }

            v226 = *(v109 + 16);
            if (v226)
            {
              v227 = (v109 + 32);
              v228 = v126;
              do
              {
                v230 = *v227++;
                v229 = v230;
                if (v230)
                {
                  v231 = swift_isUniquelyReferenced_nonNull_native();
                  v500[0] = v228;
                  if ((v231 & 1) == 0)
                  {
                    v232 = OUTLINED_FUNCTION_99();
                    sub_1C716E88C(v232, v233, v234);
                    v228 = v500[0];
                  }

                  v236 = *(v228 + 16);
                  v235 = *(v228 + 24);
                  if (v236 >= v235 >> 1)
                  {
                    v237 = OUTLINED_FUNCTION_15(v235);
                    sub_1C716E88C(v237, v236 + 1, 1);
                    v228 = v500[0];
                  }

                  *(v228 + 16) = v236 + 1;
                  *(v228 + 2 * v236 + 32) = v229;
                }

                --v226;
              }

              while (v226);
            }

            else
            {
              v228 = v126;
            }

            if (*(v228 + 16))
            {
              *v471 = v228;
              type metadata accessor for QueryTokenCategoryType(0);
              OUTLINED_FUNCTION_63();
              swift_storeEnumTagMultiPayload();
              OUTLINED_FUNCTION_1_101();
              sub_1C72DE0BC();
              v238 = swift_isUniquelyReferenced_nonNull_native();
              v23 = v488;
              v40 = v491;
              v109 = v107;
              if ((v238 & 1) == 0)
              {
                v405 = OUTLINED_FUNCTION_8_64();
                sub_1C6FB35C8(v405, v406, v407, v408);
                v498 = v409;
              }

              v107 = v494;
              OUTLINED_FUNCTION_9_68();
              if (v142)
              {
                v410 = OUTLINED_FUNCTION_2_0(v239);
                sub_1C6FB35C8(v410, v411, v412, v498);
                v498 = v413;
              }

              OUTLINED_FUNCTION_2_94();
              sub_1C72DDC7C(v471, v240);
              OUTLINED_FUNCTION_0_134();
              goto LABEL_218;
            }

            v23 = v488;
            v40 = v491;
LABEL_9:
            OUTLINED_FUNCTION_98_12();
            continue;
          case 0x10uLL:

            type metadata accessor for QueryTokenCategoryType(0);
            swift_storeEnumTagMultiPayload();
            OUTLINED_FUNCTION_1_101();
            sub_1C72DE0BC();
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v360 = OUTLINED_FUNCTION_8_64();
              sub_1C6FB35C8(v360, v361, v362, v363);
              v498 = v364;
            }

            OUTLINED_FUNCTION_9_68();
            v109 = v115;
            if (v142)
            {
              v365 = OUTLINED_FUNCTION_2_0(v172);
              sub_1C6FB35C8(v365, v366, v367, v498);
              v498 = v368;
            }

            v107 = v494;
            OUTLINED_FUNCTION_2_94();
            sub_1C72DDC7C(v486, v173);
            OUTLINED_FUNCTION_0_134();
            sub_1C72DD0B8();
            continue;
          case 0x12uLL:
            sub_1C71BBD84(v125, v118, v119, v120, v121, v122, v123, v124, v450, v451, v452, v453, v454, v455, v456, v457, v458, v459, v460, v461, v462, v463, v464, v465, v466, v467, v468, v469);
            OUTLINED_FUNCTION_68();
            OUTLINED_FUNCTION_98_12();
            if (!v113)
            {
              continue;
            }

            OUTLINED_FUNCTION_75_11();
            static QueryToken.partOfDaySuggestion(from:)();

            v206 = OUTLINED_FUNCTION_15_6();
            OUTLINED_FUNCTION_111_7(v206, v207);
            if (v132)
            {
              goto LABEL_153;
            }

            OUTLINED_FUNCTION_3_86();
            OUTLINED_FUNCTION_63_17();
            sub_1C72DD0B8();
            OUTLINED_FUNCTION_1_101();
            sub_1C72DE0BC();
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v432 = OUTLINED_FUNCTION_8_64();
              sub_1C6FB35C8(v432, v433, v434, v435);
              v498 = v436;
            }

            OUTLINED_FUNCTION_9_68();
            if (v142)
            {
              v437 = OUTLINED_FUNCTION_2_0(v208);
              sub_1C6FB35C8(v437, v438, v439, v498);
              v498 = v440;
            }

            OUTLINED_FUNCTION_2_94();
            sub_1C72DDC7C(v457, v209);
            OUTLINED_FUNCTION_0_134();
            goto LABEL_218;
          case 0x13uLL:
            sub_1C71BBD84(v125, v118, v119, v120, v121, v122, v123, v124, v450, v451, v452, v453, v454, v455, v456, v457, v458, v459, v460, v461, v462, v463, v464, v465, v466, v467, v468, v469);
            OUTLINED_FUNCTION_68();
            OUTLINED_FUNCTION_98_12();
            if (!v113)
            {
              continue;
            }

            OUTLINED_FUNCTION_75_11();
            static QueryToken.partOfWeekSuggestion(from:)();

            v214 = OUTLINED_FUNCTION_15_6();
            OUTLINED_FUNCTION_111_7(v214, v215);
            if (v132)
            {
              goto LABEL_153;
            }

            OUTLINED_FUNCTION_3_86();
            OUTLINED_FUNCTION_63_17();
            sub_1C72DD0B8();
            OUTLINED_FUNCTION_1_101();
            sub_1C72DE0BC();
            v254 = swift_isUniquelyReferenced_nonNull_native();
            if ((v254 & 1) == 0)
            {
              v441 = OUTLINED_FUNCTION_8_64();
              sub_1C6FB35C8(v441, v442, v443, v444);
              v498 = v445;
            }

            OUTLINED_FUNCTION_9_68();
            if (v142)
            {
              v446 = OUTLINED_FUNCTION_2_0(v255);
              sub_1C6FB35C8(v446, v447, v448, v498);
              v498 = v449;
            }

            OUTLINED_FUNCTION_2_94();
            sub_1C72DDC7C(v459, v256);
            OUTLINED_FUNCTION_0_134();
            goto LABEL_218;
          case 0x14uLL:
            sub_1C71BBD84(v125, v118, v119, v120, v121, v122, v123, v124, v450, v451, v452, v453, v454, v455, v456, v457, v458, v459, v460, v461, v462, v463, v464, v465, v466, v467, v468, v469);
            OUTLINED_FUNCTION_68();
            OUTLINED_FUNCTION_98_12();
            if (!v113)
            {
              continue;
            }

            OUTLINED_FUNCTION_75_11();
            static QueryToken.seasonSuggestion(from:)();

            v174 = OUTLINED_FUNCTION_15_6();
            OUTLINED_FUNCTION_111_7(v174, v175);
            if (v132)
            {
LABEL_153:
              sub_1C6FD7FC8(v125, &qword_1EC21A538, &unk_1C7580D10);
              continue;
            }

            OUTLINED_FUNCTION_3_86();
            OUTLINED_FUNCTION_63_17();
            sub_1C72DD0B8();
            OUTLINED_FUNCTION_1_101();
            sub_1C72DE0BC();
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v414 = OUTLINED_FUNCTION_8_64();
              sub_1C6FB35C8(v414, v415, v416, v417);
              v498 = v418;
            }

            OUTLINED_FUNCTION_9_68();
            if (v142)
            {
              v419 = OUTLINED_FUNCTION_2_0(v176);
              sub_1C6FB35C8(v419, v420, v421, v498);
              v498 = v422;
            }

            OUTLINED_FUNCTION_2_94();
            sub_1C72DDC7C(v461, v177);
            OUTLINED_FUNCTION_0_134();
            goto LABEL_218;
          default:

            goto LABEL_9;
        }
      }

      __break(1u);
    }

    break;
  }
}

Swift::Void __swiftcall QueryToken.addRetrievalResults(_:)(Swift::OpaquePointer a1)
{
  rawValue = a1._rawValue;
  v3 = *(v1 + 96);
  if (v3)
  {
    v4 = a1._rawValue + 64;
    OUTLINED_FUNCTION_11();
    v7 = v6 & v5;
    v9 = (v8 + 63) >> 6;
    sub_1C75504FC();
    sub_1C75504FC();
    v10 = 0;
    v22 = v9;
    v23 = rawValue + 64;
    v24 = rawValue;
    if (v7)
    {
      goto LABEL_7;
    }

    do
    {
LABEL_3:
      v11 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        __break(1u);
        goto LABEL_19;
      }

      if (v11 >= v9)
      {

        v1 = v21;
        *(v21 + 96) = v3;
        v26 = v3;
        goto LABEL_17;
      }

      v7 = *&v4[8 * v11];
      ++v10;
    }

    while (!v7);
    v10 = v11;
LABEL_7:
    while (1)
    {
      v12 = __clz(__rbit64(v7)) | (v10 << 6);
      v13 = (*(rawValue + 6) + 16 * v12);
      v14 = *v13;
      v15 = v13[1];
      v16 = *(*(rawValue + 7) + 8 * v12);
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      swift_isUniquelyReferenced_nonNull_native();
      v26 = v3;
      sub_1C6F78124(v14, v15);
      if (__OFADD__(*(v3 + 16), (v17 & 1) == 0))
      {
        break;
      }

      v18 = v17;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215280, &qword_1C756C8F0);
      v3 = v26;
      if (sub_1C7551A2C())
      {
        sub_1C6F78124(v14, v15);
        if ((v18 & 1) != (v19 & 1))
        {
          goto LABEL_20;
        }
      }

      if (v18)
      {
      }

      else
      {
        OUTLINED_FUNCTION_15_1();
        sub_1C6FCABE4();
      }

      v4 = v23;
      rawValue = v24;
      v7 &= v7 - 1;
      sub_1C739796C(v16);

      v9 = v22;
      if (!v7)
      {
        goto LABEL_3;
      }
    }

LABEL_19:
    __break(1u);
LABEL_20:
    sub_1C7551E4C();
    __break(1u);
  }

  else
  {
    *(v1 + 96) = a1;
    v26 = a1._rawValue;
    sub_1C75504FC();
LABEL_17:
    sub_1C72D50CC(&v26, &v25);
    v20 = v25;

    *(v1 + 104) = v20;
  }
}

Swift::Void __swiftcall QueryToken.resetRetrievalResults()()
{

  *(v0 + 96) = 0;

  *(v0 + 104) = 0;
}

Swift::Void __swiftcall QueryToken.replaceRetrievalResults(with:)(Swift::OpaquePointer with)
{
  v1[12]._rawValue = with._rawValue;
  sub_1C75504FC();

  rawValue = with._rawValue;
  sub_1C72D50CC(&rawValue, &v4);
  v3 = v4;

  v1[13]._rawValue = v3;
}

void QueryToken.disambiguate(withUserSuggestion:categoryType:)()
{
  OUTLINED_FUNCTION_33();
  v3 = v2;
  v5 = v4;
  TokenSuggestion = type metadata accessor for QueryTokenSuggestion(0);
  v7 = OUTLINED_FUNCTION_18(TokenSuggestion);
  v9 = v8;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_14_2();
  v72 = v10;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_206_1();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v68 - v13;
  LOBYTE(v75) = *v3;
  v73 = v0;
  sub_1C72D5B04();
  v16 = v15;
  v17 = v15[2];
  if (v17)
  {
    v75 = MEMORY[0x1E69E7CC0];
    sub_1C716E928(0, v17, 0);
    v18 = v75;
    OUTLINED_FUNCTION_191();
    v70 = v16;
    v71 = v19;
    v20 = v16 + v19;
    v21 = *(v9 + 72);
    do
    {
      OUTLINED_FUNCTION_1_101();
      sub_1C72DE0BC();
      QueryTokenCategoryType.string.getter(&v74);
      OUTLINED_FUNCTION_2_94();
      sub_1C72DDC7C(v14, v22);
      v23 = v74;
      v75 = v18;
      v25 = *(v18 + 2);
      v24 = *(v18 + 3);
      if (v25 >= v24 >> 1)
      {
        OUTLINED_FUNCTION_15(v24);
        OUTLINED_FUNCTION_321();
        sub_1C716E928(v26, v27, v28);
        v18 = v75;
      }

      *(v18 + 2) = v25 + 1;
      *(v18 + v25 + 32) = v23;
      v20 += v21;
      --v17;
    }

    while (v17);
    if (qword_1EC213CA0 != -1)
    {
LABEL_41:
      swift_once();
    }

    v29 = off_1EC216240;
    v30 = v25 + 1;
    v31 = MEMORY[0x1E69E7CC0];
    v32 = 32;
    do
    {
      if (v29[2])
      {
        v33 = sub_1C6FC3264();
        if (v34)
        {
          v35 = *(v29[7] + 8 * v33);
          sub_1C75504FC();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            OUTLINED_FUNCTION_99();
            sub_1C6FB45B4();
            v31 = v38;
          }

          v37 = *(v31 + 16);
          v36 = *(v31 + 24);
          if (v37 >= v36 >> 1)
          {
            OUTLINED_FUNCTION_15(v36);
            OUTLINED_FUNCTION_321();
            sub_1C6FB45B4();
            v31 = v39;
          }

          *(v31 + 16) = v37 + 1;
          *(v31 + 8 * v37 + 32) = v35;
        }
      }

      ++v32;
      --v30;
    }

    while (v30);

    v40 = 0;
    v75 = MEMORY[0x1E69E7CC0];
    v25 = *(v31 + 16);
    while (v25 != v40)
    {
      if (v40 >= *(v31 + 16))
      {
        __break(1u);
LABEL_40:
        __break(1u);
        goto LABEL_41;
      }

      v41 = v40 + 1;
      v42 = sub_1C75504FC();
      sub_1C6FD3968(v42);
      v40 = v41;
    }

    v43 = 0;
    v44 = v75;
    isa = v73[10].isa;
    v25 = *(isa + 2);
    v46 = isa + v71;
    v47 = MEMORY[0x1E69E7CC0];
LABEL_21:
    v48 = &v46[v21 * v43];
    while (v25 != v43)
    {
      if (v43 >= *(isa + 2))
      {
        goto LABEL_40;
      }

      OUTLINED_FUNCTION_1_101();
      sub_1C72DE0BC();
      QueryTokenCategoryType.string.getter(&v74);
      if (sub_1C705D134(v74, v44))
      {
        OUTLINED_FUNCTION_3_86();
        sub_1C72DD0B8();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v75 = v47;
        v69 = v46;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v51 = OUTLINED_FUNCTION_99();
          sub_1C716E8D0(v51, v52, v53);
          v47 = v75;
        }

        v55 = *(v47 + 16);
        v54 = *(v47 + 24);
        if (v55 >= v54 >> 1)
        {
          OUTLINED_FUNCTION_15(v54);
          OUTLINED_FUNCTION_321();
          sub_1C716E8D0(v56, v57, v58);
          v47 = v75;
        }

        ++v43;
        *(v47 + 16) = v55 + 1;
        OUTLINED_FUNCTION_3_86();
        sub_1C72DD0B8();
        v46 = v69;
        goto LABEL_21;
      }

      OUTLINED_FUNCTION_2_94();
      sub_1C72DDC7C(v1, v49);
      v48 += v21;
      ++v43;
    }

    v75 = v70;
    sub_1C6FD383C(v47);

    v59 = v73;
    v73[10].isa = v75;
    LOBYTE(v59[4].isa) = 1;
    OUTLINED_FUNCTION_25_0();
  }

  else
  {

    if (qword_1EC213FF0 != -1)
    {
      OUTLINED_FUNCTION_51_19(&qword_1EC213FF0);
    }

    v60 = sub_1C754FF1C();
    __swift_project_value_buffer(v60, qword_1EC21A4E8);
    v61 = v5;
    v73 = sub_1C754FEEC();
    v62 = sub_1C755117C();

    if (os_log_type_enabled(v73, v62))
    {
      v63 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      *v63 = 138412290;
      *(v63 + 4) = v61;
      *v64 = v61;
      v65 = v61;
      _os_log_impl(&dword_1C6F5C000, v73, v62, "No query token suggestions to add with the given user search suggestion = %@", v63, 0xCu);
      sub_1C6FD7FC8(v64, &qword_1EC215190, &qword_1C755C730);
      OUTLINED_FUNCTION_109();
      OUTLINED_FUNCTION_109();
    }

    OUTLINED_FUNCTION_25_0();
  }
}

uint64_t QueryToken.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A500, &qword_1C7580738);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v5);
  v6 = a1[3];
  v52 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v6);
  sub_1C72DD110();
  sub_1C7551FFC();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(v52);
  }

  else
  {
    LOBYTE(v30) = 1;
    OUTLINED_FUNCTION_62_17();
    v8 = sub_1C7551BBC();
    v28 = v9;
    sub_1C72DD164();
    OUTLINED_FUNCTION_62_17();
    sub_1C7551C1C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00, &qword_1C755BD70);
    sub_1C72DD364(&qword_1EDD0CF50);
    OUTLINED_FUNCTION_19_55();
    sub_1C7551BAC();
    v10 = v30;
    type metadata accessor for _NSRange(0);
    OUTLINED_FUNCTION_46_24();
    sub_1C72DE07C(v11);
    OUTLINED_FUNCTION_19_55();
    sub_1C7551BAC();
    v26 = v31;
    v27 = v30;
    v50 = v32;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2155D0, &qword_1C7580740);
    LOBYTE(v29[0]) = 5;
    sub_1C72DD3BC(&unk_1EDD06B68);
    OUTLINED_FUNCTION_19_55();
    sub_1C7551C1C();
    v25 = v8;
    v12 = v30;
    LOBYTE(v30) = 0;
    OUTLINED_FUNCTION_62_17();
    v13 = sub_1C7551B6C();
    if (!v14)
    {
      sub_1C72D533C();
    }

    v23 = v13;
    v24 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2150B0, &qword_1C755C2B8);
    sub_1C72DD1B8();
    OUTLINED_FUNCTION_19_55();
    sub_1C7551BAC();
    v15 = v30;
    LOBYTE(v29[0]) = 9;
    sub_1C72DD2BC();
    OUTLINED_FUNCTION_62_17();
    sub_1C7551BAC();
    v22 = v30;

    if (v30)
    {
      sub_1C75504FC();
      sub_1C72D50CC(&v30, v29);
      v21 = v29[0];
      v16 = OUTLINED_FUNCTION_69_0();
      v17(v16);
    }

    else
    {
      v18 = OUTLINED_FUNCTION_69_0();
      v19(v18);
      v21 = 0;
    }

    v29[0] = v23;
    v29[1] = v24;
    v29[2] = v25;
    v29[3] = v28;
    LOBYTE(v29[4]) = 1;
    *(&v29[4] + 1) = v51[0];
    HIDWORD(v29[4]) = *(v51 + 3);
    v29[5] = v27;
    v29[6] = v26;
    v20 = v50;
    LOBYTE(v29[7]) = v50;
    *(&v29[7] + 1) = *v49;
    HIDWORD(v29[7]) = *&v49[3];
    v29[8] = v10;
    v29[9] = 0;
    v29[10] = v12;
    LOBYTE(v29[11]) = 0;
    *(&v29[11] + 1) = *v48;
    HIDWORD(v29[11]) = *&v48[3];
    v29[12] = v15;
    v29[13] = v21;
    v29[14] = v22;
    memcpy(a2, v29, 0x78uLL);
    sub_1C6FCA6E4(v29, &v30);
    __swift_destroy_boxed_opaque_existential_1(v52);
    v30 = v23;
    v31 = v24;
    v32 = v25;
    v33 = v28;
    v34 = 1;
    *v35 = v51[0];
    *&v35[3] = *(v51 + 3);
    v36 = v27;
    v37 = v26;
    v38 = v20;
    *v39 = *v49;
    *&v39[3] = *&v49[3];
    v40 = v10;
    v41 = 0;
    v42 = v12;
    v43 = 0;
    *v44 = *v48;
    *&v44[3] = *&v48[3];
    v45 = v15;
    v46 = v21;
    v47 = v22;
    return sub_1C6FDD548(&v30);
  }
}

uint64_t QueryToken.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A508, &qword_1C7580748);
  OUTLINED_FUNCTION_3_0();
  v5 = v4;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v27 - v7;
  v9 = *v1;
  v10 = v1[1];
  v11 = v1[2];
  v38 = v1[3];
  v39 = v11;
  v37 = *(v1 + 32);
  v59[0] = *(v1 + 33);
  *(v59 + 3) = *(v1 + 9);
  v12 = v1[6];
  v34 = v1[5];
  v33 = v12;
  v35 = *(v1 + 56);
  v58[0] = *(v1 + 57);
  *(v58 + 3) = *(v1 + 15);
  v13 = v1[9];
  v36 = v1[8];
  v29 = v13;
  v14 = v1[11];
  v32 = v1[10];
  v28 = v14;
  v15 = v1[13];
  v30 = v1[12];
  v31 = v15;
  v16 = v1[14];
  v17 = a1[3];
  v18 = a1;
  v19 = v9;
  __swift_project_boxed_opaque_existential_1(v18, v17);
  sub_1C72DD110();
  v20 = v10;
  sub_1C755200C();
  LOBYTE(v40) = 0;
  OUTLINED_FUNCTION_55();
  v21 = v60;
  sub_1C7551CCC();
  if (!v21)
  {
    v22 = v37;
    LOBYTE(v40) = 1;
    OUTLINED_FUNCTION_97();
    sub_1C7551CCC();
    LOBYTE(v40) = v22;
    v57 = 2;
    sub_1C72DD310();
    OUTLINED_FUNCTION_97();
    sub_1C7551D2C();
    v40 = v36;
    v57 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00, &qword_1C755BD70);
    sub_1C72DD364(&qword_1EDD0CF60);
    OUTLINED_FUNCTION_14_51();
    sub_1C7551CBC();
    v40 = v34;
    v41 = v33;
    LOBYTE(v42) = v35 & 1;
    v57 = 4;
    type metadata accessor for _NSRange(0);
    OUTLINED_FUNCTION_46_24();
    sub_1C72DE07C(v23);
    OUTLINED_FUNCTION_14_51();
    sub_1C7551CBC();
    v40 = v32;
    v57 = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2155D0, &qword_1C7580740);
    sub_1C72DD3BC(&unk_1EDD06B70);
    OUTLINED_FUNCTION_14_51();
    sub_1C7551D2C();
    v40 = v19;
    v41 = v20;
    v42 = v39;
    v43 = v38;
    v44 = v22;
    *v45 = v59[0];
    *&v45[3] = *(v59 + 3);
    v46 = v34;
    v47 = v33;
    v48 = v35;
    *v49 = v58[0];
    *&v49[3] = *(v58 + 3);
    v50 = v36;
    v51 = v29;
    v52 = v32;
    v53 = v28;
    v24 = v30;
    v54 = v30;
    v55 = v31;
    v56 = v16;
    sub_1C72D36F8();
    v40 = v25;
    v57 = 6;
    type metadata accessor for PHSearchAmbiguityType(0);
    sub_1C72DE07C(&unk_1EDD0CDF0);
    OUTLINED_FUNCTION_14_51();
    sub_1C7551D2C();
    LOBYTE(v40) = 7;
    OUTLINED_FUNCTION_97();
    sub_1C7551D0C();
    v40 = v24;
    v57 = 8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2150B0, &qword_1C755C2B8);
    sub_1C72DD450();
    OUTLINED_FUNCTION_14_51();
    sub_1C7551CBC();
    v40 = v16;
    v57 = 9;
    sub_1C72DD4FC();
    sub_1C75504FC();
    OUTLINED_FUNCTION_97();
    sub_1C7551CBC();
  }

  return (*(v5 + 8))(v8, v3);
}

uint64_t QueryToken.hash(into:)(uint64_t a1)
{
  sub_1C75505AC();
  v1 = OUTLINED_FUNCTION_90();

  return sub_1C7041CDC(v1, v2);
}

void QueryToken.personUUIDs()()
{
  OUTLINED_FUNCTION_134();
  type metadata accessor for QueryTokenCategoryType(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5_31();
  TokenSuggestion = type metadata accessor for QueryTokenSuggestion(0);
  v5 = OUTLINED_FUNCTION_18(TokenSuggestion);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_26_38();
  while (1)
  {
    if (v2 == v1)
    {
LABEL_6:
      OUTLINED_FUNCTION_135_0();
      return;
    }

    OUTLINED_FUNCTION_573();
    if (v6)
    {
      break;
    }

    OUTLINED_FUNCTION_20_49();
    OUTLINED_FUNCTION_1_101();
    sub_1C72DE0BC();
    OUTLINED_FUNCTION_4_76();
    OUTLINED_FUNCTION_15_1();
    sub_1C72DD0B8();
    if (!swift_getEnumCaseMultiPayload())
    {
      goto LABEL_6;
    }

    ++v1;
    OUTLINED_FUNCTION_5_68();
    sub_1C72DDC7C(v0, v7);
  }

  __break(1u);
}

void QueryToken.groundingDateInfo()()
{
  OUTLINED_FUNCTION_33();
  v41 = v1;
  v42 = v2;
  type metadata accessor for QueryTokenCategoryType(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_14_0();
  v6 = v5 - v4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218C50, &qword_1C75606A0);
  v8 = OUTLINED_FUNCTION_76(v7);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_14_2();
  v40 = v9;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_140_1();
  v39 = v11;
  v12 = OUTLINED_FUNCTION_37_3();
  TokenSuggestion = type metadata accessor for QueryTokenSuggestion(v12);
  v14 = OUTLINED_FUNCTION_18(TokenSuggestion);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_14_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215D50, &qword_1C75606A8);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_76_14();
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v37 - v17;
  v19 = *(v0 + 80);
  v21 = *(v20 + 48);
  v22 = sub_1C754DABC();
  OUTLINED_FUNCTION_84();
  __swift_storeEnumTagSinglePayload(v23, v24, v25, v22);
  v38 = v21;
  OUTLINED_FUNCTION_84();
  __swift_storeEnumTagSinglePayload(v26, v27, v28, v22);
  v29 = 0;
  v30 = *(v19 + 16);
  while (1)
  {
    if (v30 == v29)
    {
      goto LABEL_7;
    }

    if (v29 >= *(v19 + 16))
    {
      break;
    }

    OUTLINED_FUNCTION_191();
    OUTLINED_FUNCTION_1_101();
    sub_1C72DE0BC();
    OUTLINED_FUNCTION_4_76();
    sub_1C72DD0B8();
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218CC0, &qword_1C7563B90);
      v32 = v39;
      OUTLINED_FUNCTION_45_7();
      sub_1C7091CBC();
      v33 = v40;
      OUTLINED_FUNCTION_45_7();
      sub_1C7091CBC();
      sub_1C72DD550(v32, v18);
      sub_1C72DD550(v33, &v18[v38]);
LABEL_7:
      OUTLINED_FUNCTION_45_7();
      sub_1C6FD7F70();
      sub_1C7091CBC();
      sub_1C7091CBC();
      OUTLINED_FUNCTION_35();
      sub_1C6FD7FC8(v34, v35, v36);
      OUTLINED_FUNCTION_25_0();
      return;
    }

    ++v29;
    OUTLINED_FUNCTION_5_68();
    sub_1C72DDC7C(v6, v31);
  }

  __break(1u);
}

void QueryToken.selectedLocationAssetUUIDs()()
{
  OUTLINED_FUNCTION_134();
  type metadata accessor for QueryTokenCategoryType(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5_31();
  TokenSuggestion = type metadata accessor for QueryTokenSuggestion(0);
  v5 = OUTLINED_FUNCTION_18(TokenSuggestion);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_26_38();
  while (1)
  {
    if (v2 == v1)
    {
      goto LABEL_7;
    }

    OUTLINED_FUNCTION_573();
    if (v6)
    {
      break;
    }

    OUTLINED_FUNCTION_20_49();
    OUTLINED_FUNCTION_1_101();
    sub_1C72DE0BC();
    OUTLINED_FUNCTION_4_76();
    OUTLINED_FUNCTION_15_1();
    sub_1C72DD0B8();
    if (swift_getEnumCaseMultiPayload() == 6)
    {

LABEL_7:
      OUTLINED_FUNCTION_135_0();
      return;
    }

    ++v1;
    OUTLINED_FUNCTION_5_68();
    sub_1C72DDC7C(v0, v7);
  }

  __break(1u);
}

uint64_t sub_1C72D99D8(void *a1, void x1_0, void x2_0, uint64_t a2)
{
  v5 = sub_1C754DF6C();
  v68 = *(v5 - 8);
  v69 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v66 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v67 = &v60 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v60 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v65 = &v60 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218C50, &qword_1C75606A0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v64 = &v60 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v60 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v60 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v60 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A538, &unk_1C7580D10);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v27 = &v60 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v60 - v29;
  *&v32 = MEMORY[0x1EEE9AC00](v31).n128_u64[0];
  v34 = &v60 - v33;
  if (a2)
  {
    v61 = a1;
    v62 = v24;
    static QueryToken.partOfDaySuggestion(from:)();
    TokenSuggestion = type metadata accessor for QueryTokenSuggestion(0);
    if (__swift_getEnumTagSinglePayload(v34, 1, TokenSuggestion) != 1)
    {
      return sub_1C72DD0B8();
    }

    sub_1C6FD7FC8(v34, &qword_1EC21A538, &unk_1C7580D10);
    static QueryToken.partOfWeekSuggestion(from:)();
    if (__swift_getEnumTagSinglePayload(v30, 1, TokenSuggestion) != 1)
    {
      return sub_1C72DD0B8();
    }

    sub_1C6FD7FC8(v30, &qword_1EC21A538, &unk_1C7580D10);
    static QueryToken.seasonSuggestion(from:)();
    if (__swift_getEnumTagSinglePayload(v27, 1, TokenSuggestion) != 1)
    {
      return sub_1C72DD0B8();
    }

    sub_1C6FD7FC8(v27, &qword_1EC21A538, &unk_1C7580D10);
    a1 = v61;
    v24 = v62;
  }

  v63 = v18;
  v36 = [a1 startDate];
  if (v36)
  {
    v37 = v36;
    sub_1C754DF2C();

    v39 = v68;
    v38 = v69;
    v40 = v65;
    (*(v68 + 32))(v65, v11, v69);
    sub_1C703E8A0();
    v41 = v67;
    if (qword_1EC214168 != -1)
    {
      swift_once();
    }

    v42 = sub_1C754E24C();
    __swift_project_value_buffer(v42, qword_1EC21C0C8);
    sub_1C754E1BC();

    (*(v39 + 8))(v40, v38);
    v43 = sub_1C754DABC();
    __swift_storeEnumTagSinglePayload(v24, 0, 1, v43);
  }

  else
  {
    v44 = [a1 startDateComponents];
    v41 = v67;
    v39 = v68;
    if (v44)
    {
      v45 = v44;
      sub_1C754DA0C();

      v46 = 0;
    }

    else
    {
      v46 = 1;
    }

    v38 = v69;
    v48 = sub_1C754DABC();
    __swift_storeEnumTagSinglePayload(v21, v46, 1, v48);
    sub_1C7091CBC();
  }

  v49 = [a1 endDate];
  if (v49)
  {
    v50 = v49;
    v51 = v66;
    sub_1C754DF2C();

    (*(v39 + 32))(v41, v51, v38);
    sub_1C703E8A0();
    if (qword_1EC214168 != -1)
    {
      swift_once();
    }

    v52 = sub_1C754E24C();
    __swift_project_value_buffer(v52, qword_1EC21C0C8);
    v53 = v63;
    sub_1C754E1BC();

    (*(v39 + 8))(v41, v38);
    v54 = sub_1C754DABC();
    __swift_storeEnumTagSinglePayload(v53, 0, 1, v54);
  }

  else
  {
    v55 = [a1 endDateComponents];
    if (v55)
    {
      v56 = v55;
      v57 = v64;
      sub_1C754DA0C();

      v58 = 0;
    }

    else
    {
      v58 = 1;
      v57 = v64;
    }

    v59 = sub_1C754DABC();
    __swift_storeEnumTagSinglePayload(v57, v58, 1, v59);
    sub_1C7091CBC();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218CC0, &qword_1C7563B90);
  sub_1C7091CBC();
  sub_1C7091CBC();
  type metadata accessor for QueryTokenCategoryType(0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1C72DA0C8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v41 = sub_1C72DCEF8(a1);
  v4 = &selRef_addingKeyAssetForObject_toAssets_options_;
  v5 = [a1 text];
  v6 = sub_1C755068C();
  v8 = v7;

  v9 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v9 = v6 & 0xFFFFFFFFFFFFLL;
  }

  if (v9)
  {
    sub_1C6FB1814();
    v11 = v10;
    v12 = *(v10 + 16);
    if (v12 >= *(v10 + 24) >> 1)
    {
      sub_1C6FB1814();
      v11 = v40;
    }

    *(v11 + 16) = v12 + 1;
    v13 = v11 + 16 * v12;
    *(v13 + 32) = v6;
    *(v13 + 40) = v8;
    v4 = &selRef_addingKeyAssetForObject_toAssets_options_;
  }

  else
  {

    v11 = MEMORY[0x1E69E7CC0];
  }

  v14 = sub_1C72DCF58(a1);
  v42 = a2;
  if (v14)
  {
    v15 = v14;
    result = sub_1C6FB6304();
    if (result)
    {
      v17 = result;
      if (result < 1)
      {
        __break(1u);
        return result;
      }

      for (i = 0; i != v17; ++i)
      {
        if ((v15 & 0xC000000000000001) != 0)
        {
          v19 = MEMORY[0x1CCA5DDD0](i, v15);
        }

        else
        {
          v19 = *(v15 + 8 * i + 32);
        }

        v20 = v19;
        v21 = [v19 v4[15]];
        v22 = sub_1C755068C();
        v24 = v23;

        v25 = HIBYTE(v24) & 0xF;
        if ((v24 & 0x2000000000000000) == 0)
        {
          v25 = v22 & 0xFFFFFFFFFFFFLL;
        }

        if (v25)
        {
          v26 = [v20 v4[15]];
          v27 = sub_1C755068C();
          v29 = v28;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1C6FB1814();
            v11 = v32;
          }

          v30 = *(v11 + 16);
          if (v30 >= *(v11 + 24) >> 1)
          {
            sub_1C6FB1814();
            v11 = v33;
          }

          *(v11 + 16) = v30 + 1;
          v31 = v11 + 16 * v30;
          *(v31 + 32) = v27;
          *(v31 + 40) = v29;
          v4 = &selRef_addingKeyAssetForObject_toAssets_options_;
        }

        else
        {
        }
      }
    }
  }

  if (v41)
  {
    v34 = v41;
  }

  else
  {
    v34 = MEMORY[0x1E69E7CD0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00, &qword_1C755BD70);
  sub_1C703328C();
  v35 = sub_1C75505FC();
  v37 = v36;

  sub_1C6FB5E8C();
  sub_1C75504FC();
  v38 = sub_1C755152C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217298, &qword_1C75697D8);
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_1C755BAB0;
  *(v39 + 32) = v35;
  *(v39 + 40) = v37;
  *(v39 + 48) = v35;
  *(v39 + 56) = v37;
  *(v39 + 64) = v38;
  *(v39 + 72) = 0;
  *(v39 + 80) = 0;
  *(v39 + 88) = 4;
  *v42 = v39;
  v42[1] = v34;
  type metadata accessor for QueryTokenCategoryType(0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1C72DA41C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v106 = a2;
  v99 = sub_1C754DABC();
  v103 = *(v99 - 8);
  MEMORY[0x1EEE9AC00](v99);
  v93 = &v87 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v100 = &v87 - v5;
  MEMORY[0x1EEE9AC00](v6);
  v102 = &v87 - v7;
  v107 = type metadata accessor for PersonalEventBackingItem(0);
  MEMORY[0x1EEE9AC00](v107);
  v101 = &v87 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = sub_1C754DF6C();
  v104 = *(v97 - 8);
  MEMORY[0x1EEE9AC00](v97);
  v98 = &v87 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v94 = &v87 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v96 = &v87 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v95 = &v87 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218C50, &qword_1C75606A0);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v87 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v87 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v87 - v23;
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v87 - v26;
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v87 - v29;
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v87 - v32;
  *&v35 = MEMORY[0x1EEE9AC00](v34).n128_u64[0];
  v37 = &v87 - v36;
  v38 = a1;
  v39 = [a1 momentUUIDs];
  sub_1C7550B5C();

  sub_1C706D154();
  v41 = v40;
  if (!*(v40 + 16))
  {
    v87 = v33;
    v88 = v27;
    v47 = v95;
    v46 = v96;
    v48 = v97;
    v90 = v30;
    v91 = v24;
    v105 = v37;
    v92 = v21;
    v89 = v18;
    v49 = v99;

    v50 = [v38 startDate];
    if (v50)
    {
      v51 = v50;
      sub_1C754DF2C();

      v52 = v104;
      (*(v104 + 32))(v47, v46, v48);
      sub_1C703E8A0();
      v53 = v105;
      if (qword_1EC214168 != -1)
      {
        swift_once();
      }

      v54 = sub_1C754E24C();
      __swift_project_value_buffer(v54, qword_1EC21C0C8);
      sub_1C754E1BC();

      (*(v52 + 8))(v47, v48);
      v55 = v53;
      v56 = v49;
      __swift_storeEnumTagSinglePayload(v55, 0, 1, v49);
    }

    else
    {
      v57 = [v38 startDateComponents];
      if (v57)
      {
        v58 = v57;
        v59 = v87;
        sub_1C754DA0C();

        v60 = 0;
        v56 = v49;
      }

      else
      {
        v60 = 1;
        v56 = v49;
        v59 = v87;
      }

      __swift_storeEnumTagSinglePayload(v59, v60, 1, v56);
      sub_1C7091CBC();
    }

    v61 = v98;
    v62 = [v38 endDate];
    v63 = v100;
    if (v62)
    {
      v64 = v62;
      sub_1C754DF2C();

      v65 = v104;
      v66 = v94;
      (*(v104 + 32))(v94, v61, v48);
      sub_1C703E8A0();
      if (qword_1EC214168 != -1)
      {
        swift_once();
      }

      v67 = sub_1C754E24C();
      __swift_project_value_buffer(v67, qword_1EC21C0C8);
      v68 = v90;
      sub_1C754E1BC();
      v69 = v68;

      (*(v65 + 8))(v66, v48);
      __swift_storeEnumTagSinglePayload(v68, 0, 1, v56);
      v70 = v101;
      v71 = v102;
    }

    else
    {
      v72 = [v38 endDateComponents];
      if (v72)
      {
        v73 = v72;
        v74 = v88;
        sub_1C754DA0C();

        v75 = 0;
        v70 = v101;
        v71 = v102;
      }

      else
      {
        v75 = 1;
        v70 = v101;
        v71 = v102;
        v74 = v88;
      }

      __swift_storeEnumTagSinglePayload(v74, v75, 1, v56);
      v69 = v90;
      sub_1C7091CBC();
    }

    v76 = v103;
    v77 = v91;
    v78 = v92;
    sub_1C6FD7F70();
    if (__swift_getEnumTagSinglePayload(v77, 1, v56) == 1)
    {
      sub_1C6FD7FC8(v69, &qword_1EC218C50, &qword_1C75606A0);
      v79 = v77;
    }

    else
    {
      v80 = *(v76 + 32);
      v80(v71, v77, v56);
      sub_1C7091CBC();
      if (__swift_getEnumTagSinglePayload(v78, 1, v56) != 1)
      {
        sub_1C6FD7FC8(v105, &qword_1EC218C50, &qword_1C75606A0);
        v80(v63, v78, v56);
        v84 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216298, &unk_1C7580760) + 48);
        v80(v70, v71, v56);
        v80(&v70[v84], v63, v56);
LABEL_29:
        v85 = v106;
        swift_storeEnumTagMultiPayload();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218CB0, &qword_1C7580730);
        v86 = sub_1C754F24C();
        __swift_storeEnumTagSinglePayload(v85, 1, 1, v86);
        sub_1C72DD0B8();
        type metadata accessor for QueryTokenCategoryType(0);
        return swift_storeEnumTagMultiPayload();
      }

      (*(v76 + 8))(v71, v56);
      v79 = v78;
    }

    sub_1C6FD7FC8(v79, &qword_1EC218C50, &qword_1C75606A0);
    v81 = v89;
    sub_1C7091CBC();
    if (__swift_getEnumTagSinglePayload(v81, 1, v56) == 1)
    {
      sub_1C6FD7FC8(v81, &qword_1EC218C50, &qword_1C75606A0);
    }

    else
    {
      v82 = *(v76 + 32);
      v83 = v93;
      v82(v93, v81, v56);
      v82(v70, v83, v56);
    }

    goto LABEL_29;
  }

  v42 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218CB0, &qword_1C7580730) + 48);
  v43 = sub_1C754F24C();
  v44 = v106;
  __swift_storeEnumTagSinglePayload(v106, 1, 1, v43);
  *(v44 + v42) = v41;
  swift_storeEnumTagMultiPayload();
  type metadata accessor for QueryTokenCategoryType(0);

  return swift_storeEnumTagMultiPayload();
}

void static QueryToken.partOfDaySuggestion(from:)()
{
  OUTLINED_FUNCTION_33();
  v1 = v0;
  v49 = v2;
  v46[1] = type metadata accessor for QueryTokenCategoryType(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_14_0();
  v46[0] = v5 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A2D8, &unk_1C757FB60);
  OUTLINED_FUNCTION_76(v6);
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v7);
  v9 = v46 - v8;
  v10 = sub_1C754F65C();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_14_0();
  v51 = v13 - v12;
  v14 = 0;
  v15 = *(v1 + 16);
  v48 = v16;
  v50 = (v16 + 32);
  v17 = v1 + 40;
  v52 = MEMORY[0x1E69E7CC0];
  for (i = v1 + 40; ; v17 = i)
  {
    v18 = ~v14;
    v19 = v17 + 16 * v14;
    v20 = v15 - v14;
    if (!v20)
    {
      break;
    }

    while (1)
    {
      v21 = v15;
      sub_1C75504FC();
      sub_1C754F63C();

      OUTLINED_FUNCTION_48_22(v9);
      if (!v22)
      {
        break;
      }

      sub_1C6FD7FC8(v9, &qword_1EC21A2D8, &unk_1C757FB60);
      --v18;
      v19 += 16;
      --v20;
      v15 = v21;
      if (!v20)
      {
        goto LABEL_13;
      }
    }

    v23 = *v50;
    (*v50)(v51, v9, v10);
    v24 = v52;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v30 = OUTLINED_FUNCTION_99();
      sub_1C6FB4074(v30, v31, v32, v24);
      v24 = v33;
    }

    v27 = *(v24 + 16);
    v26 = *(v24 + 24);
    if (v27 >= v26 >> 1)
    {
      v34 = OUTLINED_FUNCTION_2_0(v26);
      sub_1C6FB4074(v34, v35, v36, v24);
      v52 = v37;
    }

    else
    {
      v52 = v24;
    }

    v14 = -v18;
    *(v52 + 16) = v27 + 1;
    OUTLINED_FUNCTION_6_75();
    v23(v28 + v29 * v27);
    v15 = v21;
  }

LABEL_13:
  if (*(v52 + 16))
  {
    *v46[0] = v52;
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_4_76();
    sub_1C72DD0B8();
    type metadata accessor for QueryTokenSuggestion(0);
    OUTLINED_FUNCTION_25_8();
    __swift_storeEnumTagSinglePayload(v38, v39, v40, v41);
  }

  else
  {
    type metadata accessor for QueryTokenSuggestion(0);
    OUTLINED_FUNCTION_84();
    __swift_storeEnumTagSinglePayload(v42, v43, v44, v45);
  }

  OUTLINED_FUNCTION_25_0();
}

void static QueryToken.partOfWeekSuggestion(from:)()
{
  OUTLINED_FUNCTION_33();
  v42 = v3;
  type metadata accessor for QueryTokenCategoryType(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_14_0();
  v5 = OUTLINED_FUNCTION_15_1();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  v8 = OUTLINED_FUNCTION_76(v7);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_99_11();
  v10 = sub_1C754F09C();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_14_2();
  v43 = v12;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_140_1();
  OUTLINED_FUNCTION_60_17(v14);
  v44 = MEMORY[0x1E69E7CC0];
  for (i = v16; ; v16 = i)
  {
    v17 = (v16 + 16 * v2);
    if (v15 == v2)
    {
      break;
    }

    while (1)
    {
      v18 = v15;
      v19 = *(v17 - 1);
      v0 = *v17;
      sub_1C75504FC();
      sub_1C754F07C();

      OUTLINED_FUNCTION_48_22(v1);
      if (!v20)
      {
        break;
      }

      sub_1C6FD7FC8(v1, &qword_1EC21A2D0, &unk_1C7580750);
      OUTLINED_FUNCTION_96_9();
    }

    v21 = OUTLINED_FUNCTION_95_13();
    v19(v21);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v27 = OUTLINED_FUNCTION_8_64();
      sub_1C6FB40B4(v27, v28, v29, v30);
      v44 = v31;
    }

    OUTLINED_FUNCTION_91_11();
    if (v24)
    {
      v32 = OUTLINED_FUNCTION_15(v23);
      sub_1C6FB40B4(v32, v0, 1, v44);
      v44 = v33;
    }

    ++v2;
    *(v44 + 16) = v0;
    OUTLINED_FUNCTION_6_75();
    (v19)(v25 + v26 * v17, v43, v10);
    v15 = v18;
  }

  v34 = OUTLINED_FUNCTION_94_13();
  sub_1C710DB60(v34, v35);

  OUTLINED_FUNCTION_48_22(v0);
  if (v20)
  {
    sub_1C6FD7FC8(v0, &qword_1EC21A2D0, &unk_1C7580750);
    v39 = 1;
    v38 = v42;
  }

  else
  {
    v36 = OUTLINED_FUNCTION_71_12();
    v17(v36);
    v37 = OUTLINED_FUNCTION_101_10();
    v17(v37);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_4_76();
    v38 = v42;
    sub_1C72DD0B8();
    v39 = 0;
  }

  TokenSuggestion = type metadata accessor for QueryTokenSuggestion(0);
  __swift_storeEnumTagSinglePayload(v38, v39, 1, TokenSuggestion);
  OUTLINED_FUNCTION_25_0();
}

void static QueryToken.seasonSuggestion(from:)()
{
  OUTLINED_FUNCTION_33();
  v42 = v3;
  type metadata accessor for QueryTokenCategoryType(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_14_0();
  v5 = OUTLINED_FUNCTION_15_1();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  v8 = OUTLINED_FUNCTION_76(v7);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_99_11();
  v10 = sub_1C754F5FC();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_14_2();
  v43 = v12;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_140_1();
  OUTLINED_FUNCTION_60_17(v14);
  v44 = MEMORY[0x1E69E7CC0];
  for (i = v16; ; v16 = i)
  {
    v17 = (v16 + 16 * v2);
    if (v15 == v2)
    {
      break;
    }

    while (1)
    {
      v18 = v15;
      v19 = *(v17 - 1);
      v0 = *v17;
      sub_1C75504FC();
      sub_1C754F5DC();

      OUTLINED_FUNCTION_48_22(v1);
      if (!v20)
      {
        break;
      }

      sub_1C6FD7FC8(v1, &qword_1EC21A2C8, &unk_1C757FB50);
      OUTLINED_FUNCTION_96_9();
    }

    v21 = OUTLINED_FUNCTION_95_13();
    v19(v21);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v27 = OUTLINED_FUNCTION_8_64();
      sub_1C6FB40F4(v27, v28, v29, v30);
      v44 = v31;
    }

    OUTLINED_FUNCTION_91_11();
    if (v24)
    {
      v32 = OUTLINED_FUNCTION_15(v23);
      sub_1C6FB40F4(v32, v0, 1, v44);
      v44 = v33;
    }

    ++v2;
    *(v44 + 16) = v0;
    OUTLINED_FUNCTION_6_75();
    (v19)(v25 + v26 * v17, v43, v10);
    v15 = v18;
  }

  v34 = OUTLINED_FUNCTION_94_13();
  sub_1C710DB78(v34, v35);

  OUTLINED_FUNCTION_48_22(v0);
  if (v20)
  {
    sub_1C6FD7FC8(v0, &qword_1EC21A2C8, &unk_1C757FB50);
    v39 = 1;
    v38 = v42;
  }

  else
  {
    v36 = OUTLINED_FUNCTION_71_12();
    v17(v36);
    v37 = OUTLINED_FUNCTION_101_10();
    v17(v37);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_4_76();
    v38 = v42;
    sub_1C72DD0B8();
    v39 = 0;
  }

  TokenSuggestion = type metadata accessor for QueryTokenSuggestion(0);
  __swift_storeEnumTagSinglePayload(v38, v39, 1, TokenSuggestion);
  OUTLINED_FUNCTION_25_0();
}

uint64_t static QueryToken.publicEventSuggestion(from:)(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216328, &qword_1C7575BE0);
  v4 = OUTLINED_FUNCTION_76(v3);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_29_8();
  MEMORY[0x1EEE9AC00](v5);
  if (a2)
  {
    sub_1C754F11C();
    sub_1C7091CBC();
  }

  else
  {
    sub_1C754F14C();
    OUTLINED_FUNCTION_84();
    __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  }

  sub_1C7091CBC();
  type metadata accessor for QueryTokenCategoryType(0);
  OUTLINED_FUNCTION_63_2();
  return swift_storeEnumTagMultiPayload();
}

uint64_t static QueryToken.personalEventSuggestion(from:momentUUIDs:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216320, &unk_1C7563B80);
  v7 = OUTLINED_FUNCTION_76(v6);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_78();
  MEMORY[0x1EEE9AC00](v8);
  if (a1)
  {
    OUTLINED_FUNCTION_103();
    sub_1C754F21C();
    sub_1C7091CBC();
  }

  else
  {
    sub_1C754F24C();
    OUTLINED_FUNCTION_84();
    __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
  }

  v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218CB0, &qword_1C7580730) + 48);
  sub_1C7091CBC();
  *(a3 + v13) = a2;
  type metadata accessor for PersonalEventBackingItem(0);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for QueryTokenCategoryType(0);
  OUTLINED_FUNCTION_63();
  swift_storeEnumTagMultiPayload();
  return sub_1C75504FC();
}

uint64_t QueryToken.hashValue.getter()
{
  v1 = *(v0 + 80);
  sub_1C7551F3C();
  sub_1C75505AC();
  sub_1C7041CDC(v3, v1);
  return sub_1C7551FAC();
}

uint64_t sub_1C72DB994(uint64_t a1)
{
  v2 = *(v1 + 80);
  sub_1C7551F3C();
  sub_1C75505AC();
  sub_1C7041CDC(v4, v2);
  return sub_1C7551FAC();
}

void QueryToken.season()()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_89_12();
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_14_0();
  v5 = v4 - v3;
  TokenSuggestion = type metadata accessor for QueryTokenSuggestion(0);
  v7 = OUTLINED_FUNCTION_18(TokenSuggestion);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5_31();
  OUTLINED_FUNCTION_100_10();
  v8 = sub_1C754F5FC();
  OUTLINED_FUNCTION_84();
  __swift_storeEnumTagSinglePayload(v9, v10, v11, v8);
  v12 = 0;
  v13 = *(v1 + 16);
  while (1)
  {
    if (v13 == v12)
    {
      goto LABEL_7;
    }

    if (v12 >= *(v1 + 16))
    {
      break;
    }

    OUTLINED_FUNCTION_20_49();
    OUTLINED_FUNCTION_1_101();
    sub_1C72DE0BC();
    OUTLINED_FUNCTION_4_76();
    OUTLINED_FUNCTION_55();
    sub_1C72DD0B8();
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      sub_1C6FD7FC8(v0, &qword_1EC21A2C8, &unk_1C757FB50);
      (*(*(v8 - 8) + 32))(v0, v5, v8);
      OUTLINED_FUNCTION_25_8();
      __swift_storeEnumTagSinglePayload(v15, v16, v17, v8);
LABEL_7:
      OUTLINED_FUNCTION_25_0();
      return;
    }

    ++v12;
    OUTLINED_FUNCTION_5_68();
    sub_1C72DDC7C(v5, v14);
  }

  __break(1u);
}

void QueryToken.personalEvent()()
{
  OUTLINED_FUNCTION_134();
  OUTLINED_FUNCTION_89_12();
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5_31();
  TokenSuggestion = type metadata accessor for QueryTokenSuggestion(0);
  v4 = OUTLINED_FUNCTION_18(TokenSuggestion);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_100_10();
  sub_1C754F24C();
  OUTLINED_FUNCTION_84();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  v9 = 0;
  v10 = *(v0 + 16);
  while (1)
  {
    if (v10 == v9)
    {
      goto LABEL_7;
    }

    OUTLINED_FUNCTION_573();
    if (v11)
    {
      break;
    }

    OUTLINED_FUNCTION_20_49();
    OUTLINED_FUNCTION_1_101();
    sub_1C72DE0BC();
    OUTLINED_FUNCTION_4_76();
    OUTLINED_FUNCTION_15_1();
    sub_1C72DD0B8();
    if (swift_getEnumCaseMultiPayload() == 9)
    {
      v13 = OUTLINED_FUNCTION_90();
      sub_1C6FD7FC8(v13, v14, &unk_1C7563B80);
      v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218CB0, &qword_1C7580730) + 48);
      OUTLINED_FUNCTION_35();
      sub_1C7091CBC();
      OUTLINED_FUNCTION_23_36();
      sub_1C72DDC7C(v1 + v15, v16);
LABEL_7:
      OUTLINED_FUNCTION_135_0();
      return;
    }

    ++v9;
    OUTLINED_FUNCTION_5_68();
    sub_1C72DDC7C(v1, v12);
  }

  __break(1u);
}

void QueryToken.selectedEventDateComponents()()
{
  OUTLINED_FUNCTION_33();
  v2 = v1;
  v67 = v3;
  v4 = sub_1C754DABC();
  OUTLINED_FUNCTION_3_0();
  v63 = v5;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_14_0();
  v62 = v8 - v7;
  v9 = OUTLINED_FUNCTION_37_3();
  type metadata accessor for QueryTokenCategoryType(v9);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_14_0();
  v13 = v12 - v11;
  v65 = type metadata accessor for PersonalEventBackingItem(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_14_2();
  v66 = v15;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v16);
  TokenSuggestion = type metadata accessor for QueryTokenSuggestion(0);
  v18 = OUTLINED_FUNCTION_18(TokenSuggestion);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_14_0();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218C50, &qword_1C75606A0);
  OUTLINED_FUNCTION_76(v19);
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v62 - v21;
  v23 = *(v0 + 80);
  OUTLINED_FUNCTION_84();
  __swift_storeEnumTagSinglePayload(v24, v25, v26, v4);
  v64 = v2;
  OUTLINED_FUNCTION_84();
  __swift_storeEnumTagSinglePayload(v27, v28, v29, v4);
  v30 = 0;
  v31 = *(v23 + 16);
  while (1)
  {
    if (v31 == v30)
    {
      goto LABEL_12;
    }

    OUTLINED_FUNCTION_573();
    if (v32)
    {
      break;
    }

    OUTLINED_FUNCTION_20_49();
    OUTLINED_FUNCTION_1_101();
    sub_1C72DE0BC();
    OUTLINED_FUNCTION_4_76();
    sub_1C72DD0B8();
    if (swift_getEnumCaseMultiPayload() == 9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218CB0, &qword_1C7580730);
      OUTLINED_FUNCTION_24_32();
      sub_1C72DD0B8();
      sub_1C6FD7FC8(v13, &qword_1EC216320, &unk_1C7563B80);
      v34 = v66;
      sub_1C72DD0B8();
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload == 2)
      {
        v48 = v64;
        OUTLINED_FUNCTION_35();
        sub_1C6FD7FC8(v49, v50, v51);
        OUTLINED_FUNCTION_35();
        sub_1C6FD7FC8(v52, v53, v54);
        v55 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216298, &unk_1C7580760) + 48);
        v56 = *(v63 + 32);
        v56(v62, v34, v4);
        v56(v48, v34 + v55, v4);
        v57 = OUTLINED_FUNCTION_55();
        (v56)(v57);
        OUTLINED_FUNCTION_25_8();
        __swift_storeEnumTagSinglePayload(v58, v59, v60, v4);
        v46 = v48;
        v47 = 0;
LABEL_10:
        __swift_storeEnumTagSinglePayload(v46, v47, 1, v4);
      }

      else
      {
        if (EnumCaseMultiPayload == 1)
        {
          v36 = v64;
          OUTLINED_FUNCTION_35();
          sub_1C6FD7FC8(v37, v38, v39);
          OUTLINED_FUNCTION_35();
          sub_1C6FD7FC8(v40, v41, v42);
          (*(v63 + 32))(v22, v34, v4);
          OUTLINED_FUNCTION_25_8();
          __swift_storeEnumTagSinglePayload(v43, v44, v45, v4);
          v46 = v36;
          v47 = 1;
          goto LABEL_10;
        }

        OUTLINED_FUNCTION_23_36();
        sub_1C72DDC7C(v34, v61);
      }

LABEL_12:
      sub_1C7091CBC();
      OUTLINED_FUNCTION_25_0();
      return;
    }

    ++v30;
    OUTLINED_FUNCTION_5_68();
    sub_1C72DDC7C(v13, v33);
  }

  __break(1u);
}

PhotosIntelligence::QuerySortOrder __swiftcall QueryToken.sortOrder()()
{
  OUTLINED_FUNCTION_134();
  OUTLINED_FUNCTION_89_12();
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_14_0();
  v6 = (v5 - v4);
  TokenSuggestion = type metadata accessor for QueryTokenSuggestion(0);
  v8 = OUTLINED_FUNCTION_18(TokenSuggestion);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_26_38();
  while (1)
  {
    if (v2 == v1)
    {
      v12 = 0;
LABEL_8:
      *v0 = v12;
      OUTLINED_FUNCTION_135_0();
      return result;
    }

    OUTLINED_FUNCTION_573();
    if (v10)
    {
      break;
    }

    OUTLINED_FUNCTION_20_49();
    OUTLINED_FUNCTION_1_101();
    sub_1C72DE0BC();
    OUTLINED_FUNCTION_4_76();
    sub_1C72DD0B8();
    if (swift_getEnumCaseMultiPayload() == 13)
    {
      v12 = *v6;
      goto LABEL_8;
    }

    ++v1;
    OUTLINED_FUNCTION_5_68();
    sub_1C72DDC7C(v6, v11);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C72DC29C(uint64_t a1, unint64_t a2)
{
  v4 = 0;
  v45 = *MEMORY[0x1E69E9840];
  v39[0] = a1;
  v39[1] = a2;
  *&v42 = a1;
  *(&v42 + 1) = a2;
  sub_1C75504FC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A560, &qword_1C7580D38);
  if (swift_dynamicCast())
  {
    sub_1C6F699F8(v40, &v43);
    __swift_project_boxed_opaque_existential_1(&v43, v44);
    sub_1C754DB0C();
    v40[0] = v42;
    __swift_destroy_boxed_opaque_existential_1(&v43);
    goto LABEL_59;
  }

  v41 = 0;
  memset(v40, 0, sizeof(v40));
  sub_1C6FD7FC8(v40, &qword_1EC21A568, &unk_1C7580D40);
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_63;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    *&v40[0] = a1;
    *(&v40[0] + 1) = a2 & 0xFFFFFFFFFFFFFFLL;
    v5 = v40;
    v6 = HIBYTE(a2) & 0xF;
  }

  else if ((a1 & 0x1000000000000000) != 0)
  {
    v5 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v6 = a1 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v5 = sub_1C75518FC();
  }

  sub_1C72DC7A4(v5, v6, &v43);
  v7 = *(&v43 + 1);
  v8 = v43;
  if (*(&v43 + 1) >> 60 != 15)
  {
    v40[0] = v43;
    goto LABEL_59;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v9 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v9 = a1 & 0xFFFFFFFFFFFFLL;
  }

LABEL_12:
  *&v40[0] = MEMORY[0x1CCA5A2C0](v9);
  *(&v40[0] + 1) = v10;
  MEMORY[0x1EEE9AC00](*&v40[0]);
  v34[2] = v39;
  v11 = sub_1C72DC8C0(sub_1C72DE000, v34);
  v13 = *(&v40[0] + 1) >> 62;
  v14 = v11;
  v16 = v15;
  v18 = v17;
  v19 = BYTE14(v40[0]);
  switch(*(&v40[0] + 1) >> 62)
  {
    case 1:
      LODWORD(v20) = DWORD1(v40[0]) - LODWORD(v40[0]);
      if (__OFSUB__(DWORD1(v40[0]), v40[0]))
      {
        goto LABEL_66;
      }

      v20 = v20;
LABEL_22:
      if (v12 == v20)
      {
        goto LABEL_23;
      }

      if (v13 == 2)
      {
        v19 = *(*&v40[0] + 24);
      }

      else if (v13 == 1)
      {
        v19 = *&v40[0] >> 32;
      }

      goto LABEL_56;
    case 2:
      v22 = *(*&v40[0] + 16);
      v21 = *(*&v40[0] + 24);
      v23 = __OFSUB__(v21, v22);
      v20 = v21 - v22;
      if (!v23)
      {
        goto LABEL_22;
      }

      __break(1u);
LABEL_18:
      if (v12)
      {
        v19 = 0;
LABEL_56:
        if (v19 < v12)
        {
          __break(1u);
LABEL_66:
          __break(1u);
        }

        sub_1C754DD9C();
LABEL_58:

        goto LABEL_59;
      }

LABEL_23:
      v34[4] = v4;
      v35 = v8;
      v36 = v7;
      LOBYTE(v24) = 0;
      if ((v16 & 0x2000000000000000) != 0)
      {
        v25 = HIBYTE(v16) & 0xF;
      }

      else
      {
        v25 = v11 & 0xFFFFFFFFFFFFLL;
      }

      v26 = (v11 >> 59) & 1;
      if ((v16 & 0x1000000000000000) == 0)
      {
        LOBYTE(v26) = 1;
      }

      v27 = 4 << v26;
      v37 = (v16 & 0xFFFFFFFFFFFFFFFLL) + 32;
      v38 = v16 & 0xFFFFFFFFFFFFFFLL;
      *(&v42 + 7) = 0;
      *&v42 = 0;
      break;
    case 3:
      goto LABEL_18;
    default:
      v20 = BYTE14(v40[0]);
      goto LABEL_22;
  }

  while (4 * v25 != v18 >> 14)
  {
    v4 = v18 & 0xC;
    v28 = v18;
    if (v4 == v27)
    {
      v28 = sub_1C7491B74(v18, v14, v16);
    }

    v29 = v28 >> 16;
    if (v28 >> 16 >= v25)
    {
      __break(1u);
LABEL_61:
      __break(1u);
LABEL_62:
      __break(1u);
LABEL_63:
      v9 = sub_1C755089C();
      v8 = 0;
      v7 = 0xF000000000000000;
      goto LABEL_12;
    }

    if ((v16 & 0x1000000000000000) != 0)
    {
      v31 = sub_1C75508DC();
    }

    else if ((v16 & 0x2000000000000000) != 0)
    {
      *&v43 = v14;
      *(&v43 + 1) = v38;
      v31 = *(&v43 + v29);
    }

    else
    {
      v30 = v37;
      if ((v14 & 0x1000000000000000) == 0)
      {
        v30 = sub_1C75518FC();
      }

      v31 = *(v30 + v29);
    }

    if (v4 == v27)
    {
      v18 = sub_1C7491B74(v18, v14, v16);
      if ((v16 & 0x1000000000000000) == 0)
      {
LABEL_41:
        v18 = (v18 & 0xFFFFFFFFFFFF0000) + 65540;
        goto LABEL_46;
      }
    }

    else if ((v16 & 0x1000000000000000) == 0)
    {
      goto LABEL_41;
    }

    if (v25 <= v18 >> 16)
    {
      goto LABEL_62;
    }

    v18 = sub_1C75508AC();
LABEL_46:
    *(&v42 + v24) = v31;
    v24 = v24 + 1;
    if ((v24 >> 8))
    {
      goto LABEL_61;
    }

    if (v24 == 14)
    {
      *&v43 = v42;
      *(&v43 + 6) = *(&v42 + 6);
      sub_1C754DDBC();
      LOBYTE(v24) = 0;
    }
  }

  if (v24)
  {
    *&v43 = v42;
    *(&v43 + 6) = *(&v42 + 6);
    sub_1C754DDBC();
    sub_1C70B5C10(v35, v36);
    goto LABEL_58;
  }

  sub_1C70B5C10(v35, v36);
LABEL_59:
  v32 = v40[0];
  sub_1C6FEB1B0(*&v40[0], *(&v40[0] + 1));

  sub_1C6FC1640(v32, *(&v32 + 1));
  return v32;
}

uint64_t sub_1C72DC7A4@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = 0;
  v6 = 0xC000000000000000;
  if (a1 && a2)
  {
    if (a2 <= 14)
    {
      result = sub_1C754DD3C();
      v6 = v9 & 0xFFFFFFFFFFFFFFLL;
    }

    else
    {
      sub_1C754D9CC();
      swift_allocObject();
      v8 = sub_1C754D98C();
      if (a2 >= 0x7FFFFFFF)
      {
        sub_1C754DD8C();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = a2;
        v6 = v8 | 0x8000000000000000;
      }

      else
      {
        result = a2 << 32;
        v6 = v8 | 0x4000000000000000;
      }
    }
  }

  *a3 = result;
  a3[1] = v6;
  return result;
}

void *sub_1C72DC86C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6[0] = a3;
  v6[1] = a4;
  v5[2] = v6;
  return sub_1C72DCDE0(sub_1C72DE05C, v5, a1, a2);
}

uint64_t sub_1C72DC8C0(void *(*a1)(uint64_t *__return_ptr, char *, char *), uint64_t a2)
{
  v5 = v2;
  v19[2] = *MEMORY[0x1E69E9840];
  v7 = *v2;
  v6 = v2[1];
  switch(v6 >> 62)
  {
    case 1uLL:
      v12 = v6 & 0x3FFFFFFFFFFFFFFFLL;

      sub_1C6FC1640(v7, v6);
      *v5 = xmmword_1C7580720;
      sub_1C6FC1640(0, 0xC000000000000000);
      v13 = v7 >> 32;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_16;
      }

      if (v13 < v7)
      {
        goto LABEL_23;
      }

      if (sub_1C754D99C() && __OFSUB__(v7, sub_1C754D9BC()))
      {
        goto LABEL_24;
      }

      sub_1C754D9CC();
      swift_allocObject();
      v14 = sub_1C754D97C();

      v12 = v14;
LABEL_16:
      if (v13 < v7)
      {
        __break(1u);
LABEL_23:
        __break(1u);
LABEL_24:
        __break(1u);
      }

      v4 = sub_1C72DCE44(v7, v7 >> 32, a1);

      v11 = v12 | 0x4000000000000000;
      if (v3)
      {
        goto LABEL_18;
      }

      goto LABEL_20;
    case 2uLL:
      v4 = v6 & 0x3FFFFFFFFFFFFFFFLL;

      sub_1C6FC1640(v7, v6);
      v17 = v7;
      v18 = v6 & 0x3FFFFFFFFFFFFFFFLL;
      *v5 = xmmword_1C7580720;
      sub_1C6FC1640(0, 0xC000000000000000);
      sub_1C754DD4C();
      v7 = v17;
      v10 = sub_1C72DCE44(*(v17 + 16), *(v17 + 24), a1);
      if (v3)
      {
        v11 = v18 | 0x8000000000000000;
LABEL_18:
        *v5 = v7;
        v5[1] = v11;
      }

      else
      {
        v4 = v10;
        v11 = v18 | 0x8000000000000000;
LABEL_20:
        *v5 = v7;
        v5[1] = v11;
      }

      return v4;
    case 3uLL:
      memset(v19, 0, 15);
      a1(&v17, v19, v19);
      if (!v3)
      {
        return v17;
      }

      return v4;
    default:
      v4 = v7 >> 8;
      sub_1C6FC1640(v7, v6);
      v19[0] = v7;
      LOWORD(v19[1]) = v6;
      BYTE2(v19[1]) = BYTE2(v6);
      BYTE3(v19[1]) = BYTE3(v6);
      BYTE4(v19[1]) = BYTE4(v6);
      BYTE5(v19[1]) = BYTE5(v6);
      BYTE6(v19[1]) = BYTE6(v6);
      a1(&v17, v19, v19 + BYTE6(v6));
      if (!v3)
      {
        v4 = v17;
      }

      v9 = LODWORD(v19[1]) | ((WORD2(v19[1]) | (BYTE6(v19[1]) << 16)) << 32);
      *v5 = v19[0];
      v5[1] = v9;
      return v4;
  }
}

uint64_t sub_1C72DCC84@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v4 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    v5 = 0xC000000000000000;
    goto LABEL_5;
  }

  if (v4 <= 14)
  {
    result = sub_1C754DD3C();
    v5 = v7 & 0xFFFFFFFFFFFFFFLL;
  }

  else if (v4 >= 0x7FFFFFFF)
  {
    result = MEMORY[0x1CCA5A270]();
    v5 = v8 | 0x8000000000000000;
  }

  else
  {
    result = MEMORY[0x1CCA5A290]();
    v5 = v6 | 0x4000000000000000;
  }

LABEL_5:
  *a3 = result;
  a3[1] = v5;
  return result;
}

void sub_1C72DCCFC(uint64_t a1, unint64_t a2, uint64_t a3)
{
  switch(a2 >> 62)
  {
    case 1uLL:
      v7 = a1 >> 32;
      if (a1 >> 32 < a1)
      {
        goto LABEL_11;
      }

      a1 = a1;
      v6 = v7;
      goto LABEL_9;
    case 2uLL:
      v5 = *(a1 + 24);
      a1 = *(a1 + 16);
      v6 = v5;
LABEL_9:
      sub_1C72DDEE8(a1, v6);
      if (v3)
      {
        goto LABEL_10;
      }

      return;
    case 3uLL:
      a1 = 0;
      v4 = 0;
      goto LABEL_5;
    default:
      v4 = a2 & 0xFFFFFFFFFFFFFFLL;
LABEL_5:
      sub_1C72DDE14(a1, v4);
      if (v3)
      {
LABEL_10:

        __break(1u);
LABEL_11:
        __break(1u);
      }

      return;
  }
}

uint64_t sub_1C72DCD98(uint64_t result)
{
  if (result)
  {
    result = sub_1C755181C();
    if ((v1 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_1C72DCDE0(void *(*a1)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v6 = a4 - a3;
    v7 = a3;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  result = a1(&v9, v7, v6);
  if (!v4)
  {
    return v9;
  }

  __break(1u);
  return result;
}

char *sub_1C72DCE44(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, char *, char *))
{
  result = sub_1C754D99C();
  if (!result)
  {
    goto LABEL_12;
  }

  v8 = result;
  result = sub_1C754D9BC();
  v9 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = __OFSUB__(a2, a1);
  v11 = a2 - a1;
  if (v10)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v12 = sub_1C754D9AC();
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  result = a3(&v14, &v8[v9], &v8[v9 + v13]);
  if (!v3)
  {
    return v14;
  }

  return result;
}

uint64_t sub_1C72DCEF8(void *a1)
{
  v1 = [a1 locationAssetUUIDs];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1C7550F8C();

  return v3;
}

uint64_t sub_1C72DCF58(void *a1)
{
  v1 = [a1 nextTokenSuggestions];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_1C72DDC38();
  v3 = sub_1C7550B5C();

  return v3;
}

uint64_t sub_1C72DCFB8(void *a1)
{
  v2 = [a1 meaningLabel];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_1C755068C();

  return v3;
}

void *sub_1C72DD028(void *result, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0 || 1 << *(a5 + 32) <= a2)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a5 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a5 + 36) == a3)
  {
    *result = *(*(a5 + 56) + 8 * a2);
    sub_1C75504FC();
    sub_1C75504FC();
    return OUTLINED_FUNCTION_90();
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_1C72DD0B8()
{
  OUTLINED_FUNCTION_115();
  v1(0);
  OUTLINED_FUNCTION_12();
  v2 = OUTLINED_FUNCTION_90();
  v3(v2);
  return v0;
}

unint64_t sub_1C72DD110()
{
  result = qword_1EDD0F860[0];
  if (!qword_1EDD0F860[0])
  {
    result = swift_getWitnessTable(byte_1C7580CC0, &unk_1F46C0E30, v0, v1);
    atomic_store(result, qword_1EDD0F860);
  }

  return result;
}

unint64_t sub_1C72DD164()
{
  result = qword_1EDD095C8;
  if (!qword_1EDD095C8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for QueryTokenDataSourceType, &type metadata for QueryTokenDataSourceType, v0, v1);
    atomic_store(result, &qword_1EDD095C8);
  }

  return result;
}

unint64_t sub_1C72DD1B8()
{
  result = qword_1EDD06C10;
  if (!qword_1EDD06C10)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC2150B0, &qword_1C755C2B8);
    v4[0] = MEMORY[0x1E69E6190];
    v4[1] = sub_1C72DD264(&qword_1EDD0CEE8);
    result = swift_getWitnessTable(MEMORY[0x1E69E5E58], v3, v4);
    atomic_store(result, &qword_1EDD06C10);
  }

  return result;
}

unint64_t sub_1C72DD264(uint64_t a1)
{
  result = OUTLINED_FUNCTION_147(a1);
  if (!result)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC215BF0, &qword_1C755C2F0);
    result = OUTLINED_FUNCTION_109_1(v3, v4, v5, v6, v7, v8, v9, v10, v11, v12);
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1C72DD2BC()
{
  result = qword_1EDD06F10;
  if (!qword_1EDD06F10)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for QueryDisambiguationSuggestionDataSource, &type metadata for QueryDisambiguationSuggestionDataSource, v0, v1);
    atomic_store(result, &qword_1EDD06F10);
  }

  return result;
}

unint64_t sub_1C72DD310()
{
  result = qword_1EDD095D0;
  if (!qword_1EDD095D0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for QueryTokenDataSourceType, &type metadata for QueryTokenDataSourceType, v0, v1);
    atomic_store(result, &qword_1EDD095D0);
  }

  return result;
}

unint64_t sub_1C72DD364(uint64_t a1)
{
  result = OUTLINED_FUNCTION_147(a1);
  if (!result)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC217A00, &qword_1C755BD70);
    result = OUTLINED_FUNCTION_109_1(v3, v4, v5, v6, v7, v8, v9, v10, v11, v12);
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1C72DD3BC(uint64_t a1)
{
  result = OUTLINED_FUNCTION_147(a1);
  if (!result)
  {
    v4 = v3;
    v5 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC2155D0, &qword_1C7580740);
    v6 = OUTLINED_FUNCTION_73_16();
    v7 = sub_1C72DE07C(v6);
    result = swift_getWitnessTable(v4, v5, &v7);
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1C72DD450()
{
  result = qword_1EDD06C18;
  if (!qword_1EDD06C18)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC2150B0, &qword_1C755C2B8);
    v4[0] = MEMORY[0x1E69E6160];
    v4[1] = sub_1C72DD264(&qword_1EDD0CEF0);
    result = swift_getWitnessTable(MEMORY[0x1E69E5E38], v3, v4);
    atomic_store(result, &qword_1EDD06C18);
  }

  return result;
}

unint64_t sub_1C72DD4FC()
{
  result = qword_1EDD06F18[0];
  if (!qword_1EDD06F18[0])
  {
    result = swift_getWitnessTable(protocol conformance descriptor for QueryDisambiguationSuggestionDataSource, &type metadata for QueryDisambiguationSuggestionDataSource, v0, v1);
    atomic_store(result, qword_1EDD06F18);
  }

  return result;
}

uint64_t sub_1C72DD550(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218C50, &qword_1C75606A0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_1C72DD5C4()
{
  result = qword_1EC21A510;
  if (!qword_1EC21A510)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for QueryTokenAmbiguityReason, &type metadata for QueryTokenAmbiguityReason, v0, v1);
    atomic_store(result, &qword_1EC21A510);
  }

  return result;
}

unint64_t sub_1C72DD61C()
{
  result = qword_1EC21A518;
  if (!qword_1EC21A518)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for QueryTokenDataSourceType, &type metadata for QueryTokenDataSourceType, v0, v1);
    atomic_store(result, &qword_1EC21A518);
  }

  return result;
}

unint64_t sub_1C72DD674()
{
  result = qword_1EDD0C910;
  if (!qword_1EDD0C910)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for QueryToken, &type metadata for QueryToken, v0, v1);
    atomic_store(result, &qword_1EDD0C910);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for QueryTokenAmbiguityReason(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF0)
  {
    if (a2 + 16 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 16) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 17;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x11;
  v5 = v6 - 17;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for QueryTokenAmbiguityReason(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 16 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 16) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF0)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xEF)
  {
    v6 = ((a2 - 240) >> 8) + 1;
    *result = a2 + 16;
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
          *result = a2 + 16;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for QueryTokenDataSourceType(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1C72DD908(uint64_t a1, int a2)
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

uint64_t sub_1C72DD948(uint64_t result, int a2, int a3)
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

_BYTE *sub_1C72DD9B0(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF7)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF6)
  {
    v6 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
          *result = a2 + 9;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C72DDA8C()
{
  result = qword_1EC21A520;
  if (!qword_1EC21A520)
  {
    result = swift_getWitnessTable(byte_1C7580C98, &unk_1F46C0E30, v0, v1);
    atomic_store(result, &qword_1EC21A520);
  }

  return result;
}

unint64_t sub_1C72DDAE4()
{
  result = qword_1EDD0F850;
  if (!qword_1EDD0F850)
  {
    result = swift_getWitnessTable("鎑'$*\a", &unk_1F46C0E30, v0, v1);
    atomic_store(result, &qword_1EDD0F850);
  }

  return result;
}

unint64_t sub_1C72DDB3C()
{
  result = qword_1EDD0F858;
  if (!qword_1EDD0F858)
  {
    result = swift_getWitnessTable(byte_1C7580C30, &unk_1F46C0E30, v0, v1);
    atomic_store(result, &qword_1EDD0F858);
  }

  return result;
}

unint64_t sub_1C72DDB90()
{
  result = qword_1EDD0DC08[0];
  if (!qword_1EDD0DC08[0])
  {
    result = swift_getWitnessTable(protocol conformance descriptor for QueryTokenDataSourceType, &type metadata for QueryTokenDataSourceType, v0, v1);
    atomic_store(result, qword_1EDD0DC08);
  }

  return result;
}

unint64_t sub_1C72DDBE4()
{
  result = qword_1EC21A528;
  if (!qword_1EC21A528)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for QueryTokenAmbiguityReason, &type metadata for QueryTokenAmbiguityReason, v0, v1);
    atomic_store(result, &qword_1EC21A528);
  }

  return result;
}

unint64_t sub_1C72DDC38()
{
  result = qword_1EC217FE0;
  if (!qword_1EC217FE0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC217FE0);
  }

  return result;
}

uint64_t sub_1C72DDC7C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_12();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1C72DDCD4(uint64_t result, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0 || 1 << *(a5 + 32) <= a2)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a5 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a5 + 36) == a3)
  {
    v5 = *(a5 + 56) + 16 * a2;
    v6 = *v5;
    v7 = *(v5 + 8);
    *result = *v5;
    *(result + 8) = v7;
    sub_1C75504FC();
    sub_1C6FBC70C(v6);
    return OUTLINED_FUNCTION_90();
  }

LABEL_8:
  __break(1u);
  return result;
}

void *sub_1C72DDD74(void *result, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0 || 1 << *(a5 + 32) <= a2)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a5 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a5 + 36) == a3)
  {
    v5 = *(*(a5 + 48) + 8 * a2);
    v6 = *(a5 + 56) + 24 * a2;
    v7 = *(v6 + 8);
    v8 = *(v6 + 16);
    *result = *v6;
    result[1] = v7;
    *(result + 16) = v8;
    v9 = v5;
    v10 = OUTLINED_FUNCTION_90();
    sub_1C725C8BC(v10, v11, v8);
    return v9;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_1C72DDE14(uint64_t a1, uint64_t a2)
{
  sub_1C755024C();
  sub_1C72DE07C(&unk_1EC21A550);
  return sub_1C755020C();
}

uint64_t sub_1C72DDEE8(uint64_t a1, uint64_t a2)
{
  result = sub_1C754D99C();
  if (!result || (result = sub_1C754D9BC(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      sub_1C754D9AC();
      sub_1C755024C();
      sub_1C72DE07C(&unk_1EC21A550);
      return sub_1C755020C();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_1C72DDFC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X8>)
{
  result = sub_1C72DC86C(a1, a2, *a3, a3[1]);
  if (!v4)
  {
    *a4 = result;
    a4[1] = v7;
    a4[2] = v8;
    a4[3] = v9;
  }

  return result;
}

uint64_t sub_1C72DE01C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1C72DCD98(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

unint64_t sub_1C72DE07C(uint64_t a1)
{
  result = OUTLINED_FUNCTION_147(a1);
  if (!result)
  {
    v3(255);
    v4 = OUTLINED_FUNCTION_63();
    result = swift_getWitnessTable(v4);
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_1C72DE0BC()
{
  OUTLINED_FUNCTION_115();
  v1(0);
  OUTLINED_FUNCTION_12();
  v2 = OUTLINED_FUNCTION_90();
  v3(v2);
  return v0;
}

void OUTLINED_FUNCTION_60_17(uint64_t a1@<X8>)
{
  *(v2 - 160) = a1;
  *(v2 - 128) = v1;
  *(v2 - 96) = v1 + 32;
}

void OUTLINED_FUNCTION_79_12(uint64_t a1@<X8>)
{
  v2 = *(a1 - 256);
  v3 = *(v1 - 520);
  *(v1 - 216) = v2;
  *(v1 - 208) = v3;
}

uint64_t OUTLINED_FUNCTION_86_10(uint64_t a1)
{

  return sub_1C75505FC();
}

uint64_t OUTLINED_FUNCTION_89_12()
{

  return type metadata accessor for QueryTokenCategoryType(0);
}

void OUTLINED_FUNCTION_92_12(double a1, __n128 a2)
{
  *(v4 - 288) = v2;
  *(v4 - 240) = v3;
  *(v4 - 232) = a2;
}

uint64_t sub_1C72DE340(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_110_6(a1);
  if (v1)
  {
    if (v1 == 1)
    {
      v3 = 0x654B79726F6D656DLL;
    }

    else
    {
      v3 = 0x734179726F6D656DLL;
    }
  }

  else
  {
    v3 = 0x6465727574616566;
  }

  OUTLINED_FUNCTION_111_8(v2, v3);

  return sub_1C7551FAC();
}

uint64_t sub_1C72DE3F0(uint64_t a1, char a2)
{
  v3 = sub_1C7551F3C();
  if (a2)
  {
    if (a2 == 1)
    {
      v4 = 0x7265746C6966;
    }

    else
    {
      v4 = 0x746C694665736162;
    }
  }

  else
  {
    v4 = 0x4955557465737361;
  }

  OUTLINED_FUNCTION_111_8(v3, v4);

  return sub_1C7551FAC();
}

uint64_t sub_1C72DE488(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_110_6(a1);
  if (v1)
  {
    if (v1 == 1)
    {
      v3 = 0x6569766F6DLL;
    }

    else
    {
      v3 = 0x6867696C68676968;
    }
  }

  else
  {
    v3 = 0x6C6C697473;
  }

  OUTLINED_FUNCTION_111_8(v2, v3);

  return sub_1C7551FAC();
}

uint64_t sub_1C72DE55C(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_110_6(a1);
  if (v1)
  {
    v3 = 0x6D6F725072657375;
  }

  else
  {
    v3 = 1702060386;
  }

  OUTLINED_FUNCTION_111_8(v2, v3);

  return sub_1C7551FAC();
}

uint64_t sub_1C72DE5E0(uint64_t a1)
{
  v1 = sub_1C7551F3C();
  OUTLINED_FUNCTION_14_33(v1);
  return sub_1C7551FAC();
}

uint64_t sub_1C72DE638(uint64_t a1)
{
  sub_1C7551F3C();
  sub_1C75505AC();
  return sub_1C7551FAC();
}

uint64_t sub_1C72DE6AC(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_110_6(a1);
  if (v1)
  {
    if (v1 == 1)
    {
      v3 = 0x7972617262696CLL;
    }

    else
    {
      v3 = 0x6C65646F6DLL;
    }
  }

  else
  {
    v3 = 0x7247746E656D6F6DLL;
  }

  OUTLINED_FUNCTION_111_8(v2, v3);

  return sub_1C7551FAC();
}

uint64_t sub_1C72DE740(uint64_t a1)
{
  OUTLINED_FUNCTION_110_6(a1);
  OUTLINED_FUNCTION_3_1();
  if (v1)
  {
    v3 = 0xD000000000000015;
  }

  else
  {
    v3 = 0x696A6F6D65;
  }

  OUTLINED_FUNCTION_111_8(v2, v3);

  return sub_1C7551FAC();
}

uint64_t sub_1C72DE7AC(uint64_t a1)
{
  OUTLINED_FUNCTION_110_6(a1);
  TextSanitizer.SupportedLanguage.rawValue.getter();
  sub_1C75505AC();

  return sub_1C7551FAC();
}

uint64_t sub_1C72DE818(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_110_6(a1);
  if (v1)
  {
    if (v1 == 1)
    {
      v3 = 0x7473726966;
    }

    else
    {
      v3 = 1953718636;
    }
  }

  else
  {
    v3 = 1701736302;
  }

  OUTLINED_FUNCTION_111_8(v2, v3);

  return sub_1C7551FAC();
}

uint64_t sub_1C72DE894(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_110_6(a1);
  if (v1)
  {
    v3 = 0x6973754D78656C66;
  }

  else
  {
    v3 = 0x73754D656C707061;
  }

  OUTLINED_FUNCTION_111_8(v2, v3);

  return sub_1C7551FAC();
}

uint64_t sub_1C72DE924(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_110_6(a1);
  if (v1)
  {
    if (v1 == 1)
    {
      v3 = 0x656C746974627573;
    }

    else
    {
      v3 = 0x73656972657571;
    }
  }

  else
  {
    v3 = 0x656C746974;
  }

  OUTLINED_FUNCTION_111_8(v2, v3);

  return sub_1C7551FAC();
}

uint64_t sub_1C72DEA10(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_110_6(a1);
  if (v1)
  {
    if (v1 == 1)
    {
      v3 = 0xD000000000000013;
    }

    else
    {
      v3 = 0xD00000000000001BLL;
    }
  }

  else
  {
    v3 = 0x74706D6F7270;
  }

  OUTLINED_FUNCTION_111_8(v2, v3);

  return sub_1C7551FAC();
}

uint64_t sub_1C72DEAA0(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_110_6(a1);
  if (v1)
  {
    v3 = 0x6973754D78656C66;
  }

  else
  {
    v3 = 0x73754D656C707061;
  }

  OUTLINED_FUNCTION_111_8(v2, v3);

  return sub_1C7551FAC();
}

uint64_t sub_1C72DEB28(uint64_t a1, char a2)
{
  sub_1C7551F3C();
  sub_1C75505AC();

  return sub_1C7551FAC();
}

uint64_t sub_1C72DEBF0(uint64_t a1)
{
  OUTLINED_FUNCTION_110_6(a1);
  v1 = ActivityFeatureCode.rawValue.getter();
  sub_1C75513FC();

  return sub_1C7551FAC();
}

uint64_t sub_1C72DECB4(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_110_6(a1);
  if (v1)
  {
    if (v1 == 1)
    {
      v3 = 0x6E69646465626D65;
    }

    else
    {
      v3 = 0x6574656C706D6F63;
    }
  }

  else
  {
    v3 = 0x617461646174656DLL;
  }

  OUTLINED_FUNCTION_111_8(v2, v3);

  return sub_1C7551FAC();
}

uint64_t sub_1C72DED48(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_110_6(a1);
  if (v1)
  {
    v3 = 0x676E6967617473;
  }

  else
  {
    v3 = 0x7972726163;
  }

  OUTLINED_FUNCTION_111_8(v2, v3);

  return sub_1C7551FAC();
}

uint64_t sub_1C72DEDB4(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_110_6(a1);
  if (v1)
  {
    v3 = 0x6F6572657473;
  }

  else
  {
    v3 = 17459;
  }

  OUTLINED_FUNCTION_111_8(v2, v3);

  return sub_1C7551FAC();
}

uint64_t sub_1C72DEE5C(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_110_6(a1);
  if (v1)
  {
    v3 = 0x6F65646976;
  }

  else
  {
    v3 = 0x746F68506576696CLL;
  }

  OUTLINED_FUNCTION_111_8(v2, v3);

  return sub_1C7551FAC();
}

uint64_t sub_1C72DEF2C(uint64_t a1, char a2)
{
  sub_1C7551F3C();
  MEMORY[0x1CCA5E460](qword_1C7581328[a2]);
  return sub_1C7551FAC();
}

uint64_t sub_1C72DEF7C(uint64_t a1)
{
  OUTLINED_FUNCTION_110_6(a1);
  OUTLINED_FUNCTION_3_1();
  if (v1)
  {
    v3 = 0xD000000000000013;
  }

  else
  {
    v3 = 0x646E616D65446E6FLL;
  }

  OUTLINED_FUNCTION_111_8(v2, v3);

  return sub_1C7551FAC();
}

uint64_t sub_1C72DEFEC(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_110_6(a1);
  if (v1)
  {
    if (v1 == 1)
    {
      v3 = 0xD000000000000012;
    }

    else
    {
      v3 = 0xD000000000000013;
    }
  }

  else
  {
    v3 = 0x6E6E417972657571;
  }

  OUTLINED_FUNCTION_111_8(v2, v3);

  return sub_1C7551FAC();
}

uint64_t sub_1C72DF0A4(uint64_t a1, unsigned __int8 a2)
{
  sub_1C7551F3C();
  MEMORY[0x1CCA5E460](a2);
  return sub_1C7551FAC();
}

uint64_t sub_1C72DF0E8(uint64_t a1)
{
  v1 = sub_1C7551F3C();
  OUTLINED_FUNCTION_14_33(v1);
  return sub_1C7551FAC();
}

uint64_t sub_1C72DF128(uint64_t a1, unsigned __int8 a2)
{
  sub_1C7551F3C();
  MEMORY[0x1CCA5E460](a2 - 1);
  return sub_1C7551FAC();
}

uint64_t sub_1C72DF248(uint64_t a1)
{
  OUTLINED_FUNCTION_110_6(a1);
  OUTLINED_FUNCTION_3_1();
  if (v1)
  {
    v3 = 0x6B6F546C616E6966;
  }

  else
  {
    v3 = 0xD000000000000012;
  }

  OUTLINED_FUNCTION_111_8(v2, v3);

  return sub_1C7551FAC();
}

uint64_t sub_1C72DF2DC(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_110_6(a1);
  if (v1)
  {
    if (v1 == 1)
    {
      v3 = 0xD000000000000011;
    }

    else
    {
      v3 = 0x79726F7453657375;
    }
  }

  else
  {
    v3 = 0x61626F6C47657375;
  }

  OUTLINED_FUNCTION_111_8(v2, v3);

  return sub_1C7551FAC();
}

uint64_t sub_1C72DF3A0(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_164_3(a1);
  v3 = v1(v2);
  OUTLINED_FUNCTION_109_4(v3, v4, v5);

  return sub_1C7551FAC();
}

uint64_t sub_1C72DF404(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_110_6(a1);
  if (v1)
  {
    if (v1 == 1)
    {
      v3 = 0x6B6361626C6C6166;
    }

    else
    {
      v3 = 0x73746F6873;
    }
  }

  else
  {
    v3 = 0x72657470616863;
  }

  OUTLINED_FUNCTION_111_8(v2, v3);

  return sub_1C7551FAC();
}

uint64_t sub_1C72DF4C0(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_110_6(a1);
  if (v1)
  {
    if (v1 == 1)
    {
      v3 = 1702125924;
    }

    else
    {
      v3 = 0x746E657665;
    }
  }

  else
  {
    v3 = 1701736302;
  }

  OUTLINED_FUNCTION_111_8(v2, v3);

  return sub_1C7551FAC();
}

uint64_t sub_1C72DF53C(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_110_6(a1);
  if (v1)
  {
    v3 = 0x49636973754D6F6ELL;
  }

  else
  {
    v3 = 0x516E49636973756DLL;
  }

  OUTLINED_FUNCTION_111_8(v2, v3);

  return sub_1C7551FAC();
}

uint64_t sub_1C72DF5E8(uint64_t a1)
{
  OUTLINED_FUNCTION_164_3(a1);
  v1(v4, v2);
  return sub_1C7551FAC();
}

uint64_t sub_1C72DF640(uint64_t a1)
{
  OUTLINED_FUNCTION_164_3(a1);
  v3 = v1(v2);
  OUTLINED_FUNCTION_109_4(v3, v4, v5);

  return sub_1C7551FAC();
}

uint64_t sub_1C72DF688(uint64_t a1)
{
  OUTLINED_FUNCTION_110_6(a1);
  sub_1C7551F6C();
  return sub_1C7551FAC();
}

uint64_t sub_1C72DF6C4(uint64_t a1, uint64_t a2)
{
  sub_1C7551F3C();
  MEMORY[0x1CCA5E460](a2);
  return sub_1C7551FAC();
}

uint64_t static TextSanitizer.validateCharacterCategories(_:unsupportedCategories:storyGenerationCache:useCaseIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  *(v5 + 32) = a3;
  *(v5 + 40) = a4;
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  *(v5 + 89) = *a5;
  return OUTLINED_FUNCTION_1_0();
}

void sub_1C72DF728()
{
  v2 = v0[4];
  v103 = v2 + 56;
  sub_1C75504FC();
  v3 = MEMORY[0x1E69E7CD0];
  v102 = v0;
  while (1)
  {
    sub_1C755088C();
    if (!v4)
    {
LABEL_70:
      v0[6] = v3;
      v0[7] = v3;

      if (!*(v2 + 16) || (sub_1C7551F3C(), sub_1C75505AC(), sub_1C7551FAC(), OUTLINED_FUNCTION_9_69(), ((*(v103 + v91) >> v0) & 1) == 0))
      {
LABEL_76:
        OUTLINED_FUNCTION_116();
        OUTLINED_FUNCTION_38_4();

        __asm { BRAA            X2, X16 }
      }

      v92 = ~v90;
      while (*(v0 + *(v2 + 48)) != 1)
      {
        v93 = sub_1C7551DBC();

        if (v93)
        {
          goto LABEL_80;
        }

        v0 = ((v0 + 1) & v92);
        OUTLINED_FUNCTION_70_16();
        if (((*(v103 + v94) >> v0) & 1) == 0)
        {
          goto LABEL_76;
        }
      }

LABEL_80:
      v97 = *(v102 + 89);
      static TextSanitizer.availableSupportedLocales()();
      v102[8] = v98;
      *(v102 + 88) = v97;
      v99 = swift_task_alloc();
      v102[9] = v99;
      *v99 = v102;
      v99[1] = sub_1C72DFCBC;
      OUTLINED_FUNCTION_61_3(v102[2]);
      OUTLINED_FUNCTION_38_4();

      static TextSanitizer.validateCharacters(_:locales:storyGenerationCache:useCaseIdentifier:)();
      return;
    }

    if (*(v2 + 16))
    {
      v5 = sub_1C7551F3C();
      OUTLINED_FUNCTION_62_18(v5, v6, v7, v8, v9, v10, v11, v12);
      sub_1C7551FAC();
      OUTLINED_FUNCTION_3_42();
      if ((*(v103 + v14) >> v1))
      {
        break;
      }
    }

LABEL_16:

LABEL_69:
    sub_1C7036C14(v0[4], v3);
    if (v89)
    {
      goto LABEL_70;
    }
  }

  v15 = ~v13;
  while (1)
  {
    v16 = *(*(v2 + 48) + v1) ? 0x80000001C75964E0 : 0xE500000000000000;
    if ((*(*(v2 + 48) + v1) & 1) == 0 && v16 == 0xE500000000000000)
    {
      break;
    }

    OUTLINED_FUNCTION_182_2();
    v19 = v18 & 0xFFFF00000000FFFFLL | 0x696A6F0000;
    if (v20)
    {
      v21 = v19;
    }

    else
    {
      v21 = 0xD000000000000015;
    }

    v22 = OUTLINED_FUNCTION_132_6(v21, v17, v19);

    if (v22)
    {
      goto LABEL_18;
    }

    v1 = (v1 + 1) & v15;
    OUTLINED_FUNCTION_62_0();
    if (((*(v103 + v23) >> v1) & 1) == 0)
    {
      goto LABEL_16;
    }
  }

LABEL_18:
  if (v3[2])
  {
    v24 = sub_1C7551F3C();
    OUTLINED_FUNCTION_62_18(v24, v25, v26, v27, v28, v29, v30, v31);
    sub_1C7551FAC();
    OUTLINED_FUNCTION_3_42();
    if ((*(v3 + v33 + 56) >> v1))
    {
      v34 = ~v32;
      while (1)
      {
        v35 = *(v3[6] + v1) ? 0x80000001C75964E0 : 0xE500000000000000;
        if ((*(v3[6] + v1) & 1) == 0 && v35 == 0xE500000000000000)
        {
          break;
        }

        OUTLINED_FUNCTION_182_2();
        v38 = v37 & 0xFFFF00000000FFFFLL | 0x696A6F0000;
        if (v20)
        {
          v39 = v38;
        }

        else
        {
          v39 = 0xD000000000000015;
        }

        v40 = OUTLINED_FUNCTION_132_6(v39, v36, v38);

        if (v40)
        {
          goto LABEL_51;
        }

        v1 = (v1 + 1) & v34;
        OUTLINED_FUNCTION_33_30();
        if ((v41 & 1) == 0)
        {
          goto LABEL_31;
        }
      }

      goto LABEL_51;
    }
  }

LABEL_31:
  OUTLINED_FUNCTION_282();
  v42 = sub_1C755065C();
  IsSingleEmoji = CEMStringIsSingleEmoji();

  if (!IsSingleEmoji)
  {
LABEL_52:
    v0 = v102;
    goto LABEL_69;
  }

  v44 = sub_1C7551F3C();
  OUTLINED_FUNCTION_62_18(v44, v45, v46, v47, v48, v49, v50, v51);
  sub_1C7551FAC();
  OUTLINED_FUNCTION_79_1();
  OUTLINED_FUNCTION_150_6();
  if (v53)
  {
    v54 = ~v52;
    while (1)
    {
      OUTLINED_FUNCTION_180_2();
      v57 = v20 ? v56 : 0x80000001C75964E0;
      if ((v55 & 1) == 0 && v57 == v56)
      {
        break;
      }

      OUTLINED_FUNCTION_182_2();
      v60 = v59 & 0xFFFF00000000FFFFLL | 0x696A6F0000;
      if (v20)
      {
        v61 = v60;
      }

      else
      {
        v61 = 0xD000000000000015;
      }

      v62 = OUTLINED_FUNCTION_132_6(v61, v58, v60);

      if (v62)
      {
        goto LABEL_52;
      }

      IsSingleEmoji = (IsSingleEmoji + 1) & v54;
      OUTLINED_FUNCTION_34_11();
      if (((*(v3 + v63 + 56) >> IsSingleEmoji) & 1) == 0)
      {
        goto LABEL_44;
      }
    }

LABEL_51:

    goto LABEL_52;
  }

LABEL_44:
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v65 = v3[2];
  if (v3[3] > v65)
  {
    v0 = v102;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1C72F2D54();
    }

    goto LABEL_67;
  }

  v0 = v102;
  if (isUniquelyReferenced_nonNull_native)
  {
    sub_1C72E7B80(v65 + 1);
  }

  else
  {
    sub_1C72F6128(v65 + 1);
  }

  v66 = sub_1C7551F3C();
  OUTLINED_FUNCTION_62_18(v66, v67, v68, v69, v70, v71, v72, v73);
  sub_1C7551FAC();
  OUTLINED_FUNCTION_79_1();
  OUTLINED_FUNCTION_150_6();
  if ((v75 & 1) == 0)
  {
LABEL_67:
    OUTLINED_FUNCTION_34_11();
    *(v3 + v86 + 56) |= 1 << IsSingleEmoji;
    *(v3[6] + IsSingleEmoji) = 0;
    OUTLINED_FUNCTION_54_3();
    if (v88)
    {
      __break(1u);
      return;
    }

    v3[2] = v87;
    goto LABEL_69;
  }

  v76 = ~v74;
  while (1)
  {
    OUTLINED_FUNCTION_180_2();
    v79 = v20 ? v78 : 0x80000001C75964E0;
    if ((v77 & 1) == 0 && v79 == v78)
    {
      break;
    }

    OUTLINED_FUNCTION_182_2();
    v82 = v81 & 0xFFFF00000000FFFFLL | 0x696A6F0000;
    if (v20)
    {
      v83 = v82;
    }

    else
    {
      v83 = 0xD000000000000015;
    }

    v84 = OUTLINED_FUNCTION_132_6(v83, v80, v82);

    if (v84)
    {
      goto LABEL_84;
    }

    IsSingleEmoji = (IsSingleEmoji + 1) & v76;
    OUTLINED_FUNCTION_34_11();
    if (((*(v3 + v85 + 56) >> IsSingleEmoji) & 1) == 0)
    {
      v0 = v102;
      goto LABEL_67;
    }
  }

LABEL_84:
  OUTLINED_FUNCTION_38_4();

  sub_1C7551E3C();
}

uint64_t sub_1C72DFCBC()
{
  OUTLINED_FUNCTION_123();
  v3 = v2;
  OUTLINED_FUNCTION_47();
  v5 = v4;
  OUTLINED_FUNCTION_6_4();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_14();
  *v8 = v7;
  *(v5 + 80) = v0;

  if (!v0)
  {
    *(v5 + 90) = v3 & 1;
  }

  OUTLINED_FUNCTION_13();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1C72DFDEC()
{
  v1 = *(v0 + 56);
  if ((*(v0 + 90) & 1) == 0)
  {
    sub_1C7551F3C();
    sub_1C75505AC();
    sub_1C7551FAC();
    v2 = v1 + 56;
    OUTLINED_FUNCTION_79_1();
    v5 = v4 & ~v3;
    if ((*(v2 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
    {
      v6 = ~v3;
      v7 = *(v0 + 56);
      while (*(*(v7 + 48) + v5) != 1)
      {
        v8 = sub_1C7551DBC();

        if (v8)
        {
          goto LABEL_9;
        }

        v5 = (v5 + 1) & v6;
        if (((*(v2 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) == 0)
        {
          goto LABEL_7;
        }
      }

LABEL_9:
      v1 = *(v0 + 56);
    }

    else
    {
LABEL_7:
      v9 = *(v0 + 48);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_1C72EDCDC(1, v5, isUniquelyReferenced_nonNull_native);
      v1 = v9;
    }
  }

  OUTLINED_FUNCTION_116();

  return v11(v1);
}

uint64_t sub_1C72DFF64()
{
  OUTLINED_FUNCTION_42();

  OUTLINED_FUNCTION_43();

  return v0();
}

uint64_t static TextSanitizer.validateCharacterCategories(_:storyGenerationCache:useCaseIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  *(v4 + 24) = a2;
  *(v4 + 32) = a3;
  *(v4 + 16) = a1;
  *(v4 + 65) = *a4;
  return OUTLINED_FUNCTION_1_0();
}

uint64_t sub_1C72DFFE0()
{
  OUTLINED_FUNCTION_49_0();
  v1 = *(v0 + 65);
  sub_1C707DB58(&unk_1F469DFD0);
  v3 = v2;
  *(v0 + 40) = v2;
  *(v0 + 64) = v1;
  v4 = swift_task_alloc();
  *(v0 + 48) = v4;
  *v4 = v0;
  v4[1] = sub_1C72E00A0;
  v5 = OUTLINED_FUNCTION_61_3(*(v0 + 16));

  return static TextSanitizer.validateCharacterCategories(_:unsupportedCategories:storyGenerationCache:useCaseIdentifier:)(v5, v6, v3, v7, (v0 + 64));
}

uint64_t sub_1C72E00A0()
{
  OUTLINED_FUNCTION_49_0();
  v3 = v2;
  OUTLINED_FUNCTION_47();
  v4 = *v1;
  OUTLINED_FUNCTION_14();
  *v5 = v4;
  *(v6 + 56) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_41();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {
    OUTLINED_FUNCTION_116();

    return v10(v3);
  }
}

uint64_t TextSanitizer.SupportedLanguage.locale.getter(uint64_t a1)
{
  TextSanitizer.SupportedLanguage.rawValue.getter();

  return sub_1C754E03C();
}

uint64_t TextSanitizer.SupportedLanguage.init(rawValue:)()
{
  OUTLINED_FUNCTION_29_0();
  v1 = sub_1C7551DFC();

  v3 = 17;
  if (v1 < 0x11)
  {
    v3 = v1;
  }

  *v0 = v3;
  return result;
}

uint64_t sub_1C72E0348@<X0>(uint64_t *a1@<X8>)
{
  result = TextSanitizer.SupportedLanguage.rawValue.getter();
  *a1 = result;
  a1[1] = 0xE200000000000000;
  return result;
}

void static TextSanitizer.availableSupportedLanguageCodes()(__n128 a1)
{
  v1 = sub_1C72E0384(a1);
  sub_1C739E244(v1);

  sub_1C706D4E4();
}

void static TextSanitizer.availableSupportedLocales()()
{
  OUTLINED_FUNCTION_33();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2177A8, &qword_1C757FB70);
  OUTLINED_FUNCTION_76(v0);
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v47 - v2;
  v4 = sub_1C754E13C();
  OUTLINED_FUNCTION_3_0();
  v64 = v5;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_14_0();
  v61 = v8 - v7;
  OUTLINED_FUNCTION_37_3();
  v9 = sub_1C754E07C();
  OUTLINED_FUNCTION_3_0();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_78();
  v15 = v13 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v65 = &v47 - v17;
  OUTLINED_FUNCTION_37_3();
  v60 = sub_1C754E15C();
  OUTLINED_FUNCTION_3_0();
  v19 = v18;
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_78();
  v50 = v21 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v49 = &v47 - v24;
  v26 = MEMORY[0x1EEE9AC00](v25);
  v54 = &v47 - v27;
  v28 = sub_1C72E0384(v26);
  sub_1C739E244(v28);

  sub_1C706D4E4();
  v30 = v29;
  v31 = MEMORY[0x1CCA5A5D0]();
  v32 = v31;
  v66 = MEMORY[0x1E69E7CD0];
  v59 = *(v31 + 16);
  if (v59)
  {
    v33 = 0;
    v56 = (v64 + 8);
    v57 = v31 + 32;
    v51 = (v11 + 32);
    v52 = v4;
    v63 = v30 + 56;
    v64 = v30;
    v62 = v11 + 16;
    v48 = (v19 + 16);
    v55 = (v19 + 8);
    v34 = v54;
    v53 = v3;
    v58 = v31;
    while (v33 < *(v32 + 16))
    {
      sub_1C75504FC();
      OUTLINED_FUNCTION_90();
      sub_1C754E03C();
      v35 = v61;
      sub_1C754E14C();
      sub_1C754E12C();
      (*v56)(v35, v4);
      if (__swift_getEnumTagSinglePayload(v3, 1, v9) == 1)
      {
        (*v55)(v34, v60);
        sub_1C72FBFC0(v3, &qword_1EC2177A8);
      }

      else
      {
        (*v51)(v65, v3, v9);
        if (*(v64 + 16))
        {
          OUTLINED_FUNCTION_5_69();
          sub_1C72FC014(&qword_1EC215FD8, v36, MEMORY[0x1E6969620]);
          sub_1C755058C();
          OUTLINED_FUNCTION_9_2();
          v39 = ~v38;
          while (1)
          {
            v40 = v37 & v39;
            if (((*(v63 + (((v37 & v39) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v37 & v39)) & 1) == 0)
            {
              break;
            }

            (*(v11 + 16))(v15, *(v64 + 48) + *(v11 + 72) * v40, v9);
            OUTLINED_FUNCTION_5_69();
            sub_1C72FC014(&qword_1EC215FE0, v41, MEMORY[0x1E6969628]);
            v42 = sub_1C755063C();
            v43 = *(v11 + 8);
            v43(v15, v9);
            v37 = v40 + 1;
            if (v42)
            {
              v44 = v60;
              (*v48)(v50, v54, v60);
              v45 = v49;
              sub_1C70F13B8();
              v46 = *v55;
              (*v55)(v45, v44);
              v43(v65, v9);
              v34 = v54;
              v46(v54, v44);
              goto LABEL_12;
            }
          }
        }

        (*(v11 + 8))(v65, v9);
        v34 = v54;
        (*v55)(v54, v60);
LABEL_12:
        v4 = v52;
        v3 = v53;
      }

      ++v33;
      v32 = v58;
      if (v33 == v59)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_14:

    OUTLINED_FUNCTION_25_0();
  }
}

uint64_t TextSanitizer.CharacterCategory.init(rawValue:)()
{
  OUTLINED_FUNCTION_29_0();
  v1 = sub_1C7551B2C();

  if (v1 == 1)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (!v1)
  {
    v3 = 0;
  }

  *v0 = v3;
  return result;
}

uint64_t TextSanitizer.CharacterCategory.rawValue.getter()
{
  if (*v0)
  {
    return 0xD000000000000015;
  }

  else
  {
    return 0x696A6F6D65;
  }
}

uint64_t sub_1C72E0C68@<X0>(uint64_t *a1@<X8>)
{
  result = TextSanitizer.CharacterCategory.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t TextSanitizer.LanguageValidationCategory.init(rawValue:)()
{
  OUTLINED_FUNCTION_29_0();
  v1 = sub_1C7551B2C();

  v3 = 4;
  if (v1 < 4)
  {
    v3 = v1;
  }

  *v0 = v3;
  return result;
}

unint64_t TextSanitizer.LanguageValidationCategory.rawValue.getter()
{
  result = 0xD000000000000014;
  switch(*v0)
  {
    case 1:
      result = 0xD000000000000017;
      break;
    case 3:
      result = 0xD000000000000011;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1C72E0E88@<X0>(unint64_t *a1@<X8>)
{
  result = TextSanitizer.LanguageValidationCategory.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void static TextSanitizer.validateLanguageWithLexicon(_:supportedLanguageIdentifiers:storyGenerationCache:)(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X2>, char *a4@<X8>)
{
  v110 = a4;
  v122[9] = *MEMORY[0x1E69E9840];
  v118 = sub_1C754E13C();
  OUTLINED_FUNCTION_3_0();
  v111 = v7;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_14_0();
  v117 = v10 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2177A8, &qword_1C757FB70);
  OUTLINED_FUNCTION_76(v11);
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v12);
  v116 = &v99 - v13;
  OUTLINED_FUNCTION_37_3();
  sub_1C754E15C();
  OUTLINED_FUNCTION_3_0();
  v119 = v15;
  v120 = v14;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_78();
  v112 = v16 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v99 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v99 - v22;
  if (qword_1EDD0F478 != -1)
  {
    OUTLINED_FUNCTION_2_95();
    swift_once();
  }

  v24 = sub_1C754FF1C();
  v25 = __swift_project_value_buffer(v24, qword_1EDD28DD0);
  sub_1C75504FC();
  sub_1C75504FC();
  v114 = v25;
  v26 = sub_1C754FEEC();
  v27 = sub_1C75511BC();

  v28 = os_log_type_enabled(v26, v27);
  v121 = a3;
  v109 = v20;
  if (v28)
  {
    OUTLINED_FUNCTION_11_3();
    v29 = swift_slowAlloc();
    v113 = v23;
    v30 = v29;
    OUTLINED_FUNCTION_40_25();
    v122[0] = swift_slowAlloc();
    *v30 = 136643075;
    *(v30 + 4) = sub_1C6F765A4(a1, a2, v122);
    *(v30 + 12) = 2080;
    v31 = sub_1C7550F9C();
    v33 = a1;
    v34 = sub_1C6F765A4(v31, v32, v122);
    a3 = v121;

    *(v30 + 14) = v34;
    a1 = v33;
    _os_log_impl(&dword_1C6F5C000, v26, v27, "[validateLanguageWithLexicon] Validating the language of %{sensitive}s being part of the supported language identifiers: %s", v30, 0x16u);
    swift_arrayDestroy();
    v35 = OUTLINED_FUNCTION_4_0();
    MEMORY[0x1CCA5F8E0](v35);
    v23 = v113;
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
  }

  v36 = StoryGenerationCache.cachedLexiconLanguageIdentifier()();
  if (v36)
  {
    v37 = v36;
  }

  else
  {
    v37 = [objc_allocWithZone(MEMORY[0x1E69ABFB0]) init];
    if (!v37)
    {
      sub_1C72FB180();
      swift_allocError();
      *v95 = 1;
      swift_willThrow();
      return;
    }
  }

  StoryGenerationCache.cacheLexiconLanguageIdentifier(languageIdentifier:)(v37);
  v38 = a1;
  v39 = sub_1C755065C();
  v122[0] = 0;
  v40 = [v37 detectLanguagesInString:v39 error:v122];

  if (v122[0])
  {
    v122[0];

    swift_willThrow();
  }

  else
  {
    v41 = v111;
    v104 = v37;
    v103 = v38;
    v42 = sub_1C7550B5C();

    v115 = v42;
    v105 = *(v42 + 16);
    if (v105)
    {
      v44 = 0;
      v107 = v115 + ((*(v119 + 80) + 32) & ~*(v119 + 80));
      v106 = v41 + 1;
      v102 = a3 + 7;
      v111 = (v119 + 8);
      *&v43 = 136315138;
      v99 = v43;
      v108 = v119 + 16;
      v100 = a2;
      v113 = v23;
      do
      {
        OUTLINED_FUNCTION_171_1();
        if (v45)
        {
          __break(1u);
        }

        v46 = *(v119 + 16);
        v46(v23, v107 + *(v119 + 72) * v44, v120);
        v47 = v117;
        sub_1C754E14C();
        v48 = v116;
        sub_1C754E12C();
        (*v106)(v47, v118);
        v49 = sub_1C754E07C();
        if (__swift_getEnumTagSinglePayload(v48, 1, v49) == 1)
        {
          sub_1C72FBFC0(v48, &qword_1EC2177A8);
          v50 = v112;
          v46(v112, v23, v120);
          v51 = sub_1C754FEEC();
          v52 = sub_1C755119C();
          if (os_log_type_enabled(v51, v52))
          {
            OUTLINED_FUNCTION_13_3();
            v53 = swift_slowAlloc();
            OUTLINED_FUNCTION_98();
            v101 = swift_slowAlloc();
            v122[0] = v101;
            *v53 = v99;
            OUTLINED_FUNCTION_4_77();
            sub_1C72FC014(&qword_1EDD0CB88, v54, MEMORY[0x1E6969798]);
            sub_1C7551D8C();
            v55 = *v111;
            (*v111)(v50, v120);
            v56 = OUTLINED_FUNCTION_90();
            v59 = sub_1C6F765A4(v56, v57, v58);

            *(v53 + 4) = v59;
            _os_log_impl(&dword_1C6F5C000, v51, v52, "[validateLanguageWithLexicon] Could not get the detected language from detected locale: %s", v53, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v101);
            OUTLINED_FUNCTION_235();
            MEMORY[0x1CCA5F8E0]();
            v23 = v113;
            OUTLINED_FUNCTION_235();
            MEMORY[0x1CCA5F8E0]();

            v55(v23, v120);
          }

          else
          {

            v73 = *v111;
            v74 = v120;
            (*v111)(v50, v120);
            v73(v23, v74);
          }
        }

        else
        {
          v60 = v23;
          v61 = sub_1C754E05C();
          v62 = v48;
          v64 = v63;
          (*(*(v49 - 8) + 8))(v62, v49);
          if (v121[2])
          {
            sub_1C7551F3C();
            sub_1C75505AC();
            sub_1C7551FAC();
            OUTLINED_FUNCTION_9_2();
            v67 = ~v66;
            while (1)
            {
              v68 = v65 & v67;
              OUTLINED_FUNCTION_33_30();
              if ((v69 & 1) == 0)
              {
                break;
              }

              v70 = (v121[6] + 16 * v68);
              if (*v70 != v61 || v70[1] != v64)
              {
                OUTLINED_FUNCTION_84_8();
                v72 = sub_1C7551DBC();
                v65 = v68 + 1;
                if ((v72 & 1) == 0)
                {
                  continue;
                }
              }

              v83 = v109;
              v46(v109, v60, v120);
              sub_1C75504FC();
              v84 = sub_1C754FEEC();
              v85 = sub_1C75511BC();

              if (os_log_type_enabled(v84, v85))
              {
                OUTLINED_FUNCTION_11_3();
                v86 = swift_slowAlloc();
                OUTLINED_FUNCTION_40_25();
                v122[0] = swift_slowAlloc();
                *(v86 + 4) = OUTLINED_FUNCTION_166_4(4.9655e-34);
                *(v86 + 12) = 2080;
                OUTLINED_FUNCTION_4_77();
                sub_1C72FC014(v87, v88, MEMORY[0x1E6969798]);
                v89 = v83;
                v90 = v120;
                sub_1C7551D8C();
                v91 = OUTLINED_FUNCTION_51();
                v93 = v92;
                v94 = *v111;
                (*v111)(v91, v90);
                sub_1C6F765A4(v89, v93, v122);
                OUTLINED_FUNCTION_51();

                *(v86 + 14) = v89;
                _os_log_impl(&dword_1C6F5C000, v84, v85, "[validateLanguageWithLexicon] '%{sensitive}s' valid detected locale: %s", v86, 0x16u);
                swift_arrayDestroy();
                OUTLINED_FUNCTION_235();
                MEMORY[0x1CCA5F8E0]();
                OUTLINED_FUNCTION_235();
                MEMORY[0x1CCA5F8E0]();

                v94(v113, v90);
              }

              else
              {

                v96 = *v111;
                v97 = v120;
                (*v111)(v83, v120);
                v96(v60, v97);
              }

              v98 = 0;
              goto LABEL_37;
            }
          }

          v23 = v60;
          (*v111)(v60, v120);
        }

        ++v44;
      }

      while (v44 != v105);
    }

    sub_1C75504FC();
    sub_1C75504FC();
    v75 = sub_1C754FEEC();
    v76 = sub_1C75511BC();

    if (os_log_type_enabled(v75, v76))
    {
      OUTLINED_FUNCTION_11_3();
      v77 = swift_slowAlloc();
      OUTLINED_FUNCTION_40_25();
      v122[0] = swift_slowAlloc();
      *(v77 + 4) = OUTLINED_FUNCTION_166_4(4.9655e-34);
      *(v77 + 12) = 2080;
      MEMORY[0x1CCA5D090](v115, v120);

      v78 = OUTLINED_FUNCTION_55();
      v81 = sub_1C6F765A4(v78, v79, v80);

      *(v77 + 14) = v81;
      _os_log_impl(&dword_1C6F5C000, v75, v76, "[validateLanguageWithLexicon] The language of '%{sensitive}s' is not supported, detected locales: %s", v77, 0x16u);
      swift_arrayDestroy();
      v82 = OUTLINED_FUNCTION_4_0();
      MEMORY[0x1CCA5F8E0](v82);
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
    }

    else
    {
    }

    v98 = 1;
LABEL_37:
    *v110 = v98;
  }
}

uint64_t static TextSanitizer.validateLanguageWithLanguageRecognizer(_:useCaseIdentifier:languageCodes:topK:tokenThreshold:)()
{
  OUTLINED_FUNCTION_42();
  v2 = v1;
  *(v0 + 456) = v3;
  *(v0 + 56) = v4;
  *(v0 + 64) = v5;
  *(v0 + 40) = v6;
  *(v0 + 48) = v7;
  *(v0 + 24) = v8;
  *(v0 + 32) = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A578, &qword_1C7580D78);
  OUTLINED_FUNCTION_76(v10);
  *(v0 + 72) = OUTLINED_FUNCTION_77();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A580, &qword_1C7580D80);
  *(v0 + 80) = v11;
  OUTLINED_FUNCTION_76(v11);
  *(v0 + 88) = OUTLINED_FUNCTION_281_1();
  *(v0 + 96) = swift_task_alloc();
  *(v0 + 104) = swift_task_alloc();
  *(v0 + 112) = swift_task_alloc();
  *(v0 + 120) = swift_task_alloc();
  *(v0 + 128) = swift_task_alloc();
  *(v0 + 136) = swift_task_alloc();
  *(v0 + 144) = swift_task_alloc();
  v12 = sub_1C754FC3C();
  *(v0 + 152) = v12;
  OUTLINED_FUNCTION_18(v12);
  *(v0 + 160) = v13;
  *(v0 + 168) = OUTLINED_FUNCTION_77();
  v14 = sub_1C754FC4C();
  *(v0 + 176) = v14;
  OUTLINED_FUNCTION_18(v14);
  *(v0 + 184) = v15;
  *(v0 + 192) = OUTLINED_FUNCTION_77();
  v16 = sub_1C754FCEC();
  *(v0 + 200) = v16;
  OUTLINED_FUNCTION_18(v16);
  *(v0 + 208) = v17;
  *(v0 + 216) = OUTLINED_FUNCTION_77();
  v18 = sub_1C754FC6C();
  *(v0 + 224) = v18;
  OUTLINED_FUNCTION_18(v18);
  *(v0 + 232) = v19;
  *(v0 + 240) = OUTLINED_FUNCTION_77();
  v20 = sub_1C754FD2C();
  *(v0 + 248) = v20;
  OUTLINED_FUNCTION_18(v20);
  *(v0 + 256) = v21;
  *(v0 + 264) = OUTLINED_FUNCTION_281_1();
  *(v0 + 272) = swift_task_alloc();
  v22 = sub_1C754EC4C();
  *(v0 + 280) = v22;
  OUTLINED_FUNCTION_18(v22);
  *(v0 + 288) = v23;
  *(v0 + 296) = OUTLINED_FUNCTION_77();
  v24 = sub_1C754DFFC();
  *(v0 + 304) = v24;
  OUTLINED_FUNCTION_18(v24);
  *(v0 + 312) = v25;
  *(v0 + 320) = OUTLINED_FUNCTION_281_1();
  *(v0 + 328) = swift_task_alloc();
  *(v0 + 336) = swift_task_alloc();
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A588, &qword_1C7580D88);
  OUTLINED_FUNCTION_76(v26);
  *(v0 + 344) = OUTLINED_FUNCTION_77();
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A590, &qword_1C7580D90);
  OUTLINED_FUNCTION_76(v27);
  *(v0 + 352) = OUTLINED_FUNCTION_77();
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A598, &unk_1C7580D98);
  OUTLINED_FUNCTION_76(v28);
  *(v0 + 360) = OUTLINED_FUNCTION_77();
  v29 = sub_1C754EC1C();
  OUTLINED_FUNCTION_76(v29);
  *(v0 + 368) = OUTLINED_FUNCTION_77();
  v30 = sub_1C754EC9C();
  *(v0 + 376) = v30;
  OUTLINED_FUNCTION_18(v30);
  *(v0 + 384) = v31;
  *(v0 + 392) = OUTLINED_FUNCTION_77();
  v32 = sub_1C754EA9C();
  *(v0 + 400) = v32;
  OUTLINED_FUNCTION_18(v32);
  *(v0 + 408) = v33;
  *(v0 + 416) = OUTLINED_FUNCTION_77();
  *(v0 + 457) = *v2;
  v34 = OUTLINED_FUNCTION_24_1();

  return MEMORY[0x1EEE6DFA0](v34, v35, v36);
}

uint64_t sub_1C72E1F5C()
{
  v51 = v0;
  if (qword_1EDD0F478 != -1)
  {
    OUTLINED_FUNCTION_2_95();
    swift_once();
  }

  v1 = sub_1C754FF1C();
  *(v0 + 424) = __swift_project_value_buffer(v1, qword_1EDD28DD0);
  sub_1C75504FC();
  sub_1C75504FC();
  v2 = sub_1C754FEEC();
  v3 = sub_1C75511BC();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 40);
    v5 = *(v0 + 32);
    OUTLINED_FUNCTION_11_3();
    v6 = swift_slowAlloc();
    OUTLINED_FUNCTION_40_25();
    v50 = swift_slowAlloc();
    *v6 = 136643075;
    *(v6 + 4) = sub_1C6F765A4(v5, v4, &v50);
    *(v6 + 12) = 2080;
    sub_1C754E07C();
    OUTLINED_FUNCTION_5_69();
    sub_1C72FC014(v7, v8, MEMORY[0x1E6969620]);
    v9 = sub_1C7550F9C();
    v11 = sub_1C6F765A4(v9, v10, &v50);

    *(v6 + 14) = v11;
    _os_log_impl(&dword_1C6F5C000, v2, v3, "[validateLanguageWithLanguageRecognizer] Validating the language of %{sensitive}s being part of the supported language codes: %s", v6, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
    v12 = OUTLINED_FUNCTION_4_0();
    MEMORY[0x1CCA5F8E0](v12);
  }

  v13 = *(v0 + 408);
  v14 = *(v0 + 416);
  v15 = *(v0 + 400);
  v16 = *(v0 + 360);
  v18 = *(v0 + 344);
  v17 = *(v0 + 352);
  v45 = *(v0 + 336);
  v49 = *(v0 + 328);
  v19 = *(v0 + 312);
  v46 = *(v0 + 304);
  sub_1C75504FC();
  OUTLINED_FUNCTION_96_10();
  sub_1C754EA8C();
  v20 = sub_1C754EBDC();
  OUTLINED_FUNCTION_213_2(v16, v21, v22, v20);
  (*(v13 + 16))(v17, v14, v15);
  __swift_storeEnumTagSinglePayload(v17, 0, 1, v15);
  v23 = sub_1C754EAFC();
  OUTLINED_FUNCTION_213_2(v18, v24, v25, v23);
  OUTLINED_FUNCTION_323();
  sub_1C754EBFC();
  sub_1C754EC2C();
  sub_1C754DFEC();
  v26 = *(v19 + 16);
  v26(v49, v45, v46);
  v27 = sub_1C754FEEC();
  v28 = sub_1C75511BC();
  if (os_log_type_enabled(v27, v28))
  {
    OUTLINED_FUNCTION_13_3();
    v29 = swift_slowAlloc();
    OUTLINED_FUNCTION_98();
    v48 = swift_slowAlloc();
    v50 = v48;
    *v29 = 136315138;
    OUTLINED_FUNCTION_74_12();
    sub_1C72FC014(v30, v31, MEMORY[0x1E69695E0]);
    v47 = v28;
    v32 = v26;
    v33 = sub_1C7551D8C();
    v35 = v34;
    v36 = OUTLINED_FUNCTION_95_14();
    v18(v36);
    v37 = v33;
    v26 = v32;
    v38 = sub_1C6F765A4(v37, v35, &v50);

    *(v29 + 4) = v38;
    OUTLINED_FUNCTION_210_2(&dword_1C6F5C000, "[validateLanguageWithLanguageRecognizer] Calling languageRecognizer scrub with userRequestIdentifier: %s", v47);
    __swift_destroy_boxed_opaque_existential_1(v48);
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
    v39 = OUTLINED_FUNCTION_4_0();
    MEMORY[0x1CCA5F8E0](v39);
  }

  else
  {

    v40 = OUTLINED_FUNCTION_95_14();
    v18(v40);
  }

  *(v0 + 432) = v18;
  switch(*(v0 + 457))
  {
    case 5:
    case 7:
      break;
    default:
      OUTLINED_FUNCTION_11_56();
      break;
  }

  v26(*(v0 + 320), *(v0 + 336), *(v0 + 304));
  v41 = [objc_opt_self() processInfo];
  [v41 processIdentifier];

  OUTLINED_FUNCTION_67_18();
  sub_1C754EC3C();
  v42 = swift_task_alloc();
  *(v0 + 440) = v42;
  *v42 = v0;
  v42[1] = sub_1C72E24F0;
  v43 = OUTLINED_FUNCTION_61_3(*(v0 + 32));

  return MEMORY[0x1EEE0B2A8](v43);
}

uint64_t sub_1C72E24F0()
{
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_6_4();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 448) = v0;

  if (!v0)
  {
  }

  v4 = OUTLINED_FUNCTION_94();
  v5(v4);
  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1C72E266C()
{
  v1 = *(v0 + 392);
  v2 = *(v0 + 376);
  v3 = *(v0 + 384);
  v4 = *(v0 + 24);
  (*(v0 + 432))(*(v0 + 336), *(v0 + 304));
  (*(v3 + 8))(v1, v2);
  v5 = OUTLINED_FUNCTION_66_2();
  v6(v5);
  *v4 = 0;
  OUTLINED_FUNCTION_104_8();

  OUTLINED_FUNCTION_43();

  return v7();
}

uint64_t sub_1C72E284C()
{
  v153 = v0;
  v1 = *(v0 + 448);
  v2 = (v0 + 248);
  (*(v0 + 432))(*(v0 + 336), *(v0 + 304));
  *(v0 + 16) = v1;
  v3 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219760, ":");
  if ((OUTLINED_FUNCTION_162_5(v4) & 1) == 0)
  {
    v32 = *(v0 + 408);
    v129 = *(v0 + 400);
    v33 = *(v0 + 376);
    v34 = *(v0 + 384);
    v35 = *(v0 + 392);
    v123 = *(v0 + 416);
LABEL_13:
    (*(v34 + 8))(v35, v33);
    (*(v32 + 8))(v123, v129);

    OUTLINED_FUNCTION_43();
LABEL_14:

    return v52();
  }

  v6 = *(v0 + 208);
  v5 = *(v0 + 216);

  v7 = OUTLINED_FUNCTION_67_18();
  v8(v7);
  sub_1C754FD0C();
  v9 = v6 + 88;
  v10 = OUTLINED_FUNCTION_15_1();
  if (v11(v10) != *MEMORY[0x1E69A0A58])
  {
    v36 = (v0 + 264);
    v37 = v0 + 256;
    (*(*(v0 + 208) + 8))(*(v0 + 216), *(v0 + 200));
    OUTLINED_FUNCTION_13_61();
    v40 = sub_1C72FC014(v38, v39, MEMORY[0x1E69A0A80]);
    OUTLINED_FUNCTION_86_0(v40);
    OUTLINED_FUNCTION_11_47();
    v41();
    swift_willThrow();
    v13 = (v0 + 416);
    v42 = (v0 + 408);
    v16 = (v0 + 400);
    v43 = (v0 + 384);
LABEL_12:
    v123 = *v13;
    v129 = *v16;
    v32 = *v42;
    v34 = *v43;
    (*(*v37 + 8))(*v36, *v2);
    v35 = OUTLINED_FUNCTION_90();
    goto LABEL_13;
  }

  v13 = (v0 + 192);
  v12 = *(v0 + 192);
  OUTLINED_FUNCTION_175_2();
  v145 = v14;
  v16 = (v0 + 176);
  v15 = *(v0 + 176);
  (*(*(v0 + 208) + 96))(v5, *(v0 + 200));
  v17 = OUTLINED_FUNCTION_173_3();
  v18(v17);
  sub_1C754FC5C();
  if ((*(v9 + 88))(v12, v15) != *MEMORY[0x1E69A09F8])
  {
    OUTLINED_FUNCTION_13_61();
    v46 = sub_1C72FC014(v44, v45, MEMORY[0x1E69A0A80]);
    OUTLINED_FUNCTION_86_0(v46);
    OUTLINED_FUNCTION_11_47();
    v47();
    swift_willThrow();
    v48 = OUTLINED_FUNCTION_15_1();
    v49(v48);
    v50 = OUTLINED_FUNCTION_66_2();
    v51(v50);
    v43 = (v0 + 408);
    v36 = (v0 + 392);
    v37 = v0 + 384;
    v2 = (v0 + 376);
    v42 = v145;
    goto LABEL_12;
  }

  v19 = *(v0 + 48);
  (*(*(v0 + 184) + 96))(*(v0 + 192), *(v0 + 176));
  v20 = OUTLINED_FUNCTION_67_18();
  v21(v20);
  v22 = sub_1C754FC2C();
  sub_1C75504FC();
  v23 = sub_1C72FB1D4(v22, v19);

  v24 = v23 + 64;
  v25 = -1 << v23[32];
  if (-v25 < 64)
  {
    v26 = ~(-1 << -v25);
  }

  else
  {
    v26 = -1;
  }

  v27 = v26 & *(v23 + 8);
  v149 = v23;
  if (!v27)
  {
    v54 = 0;
    v31 = (63 - v25) >> 6;
    while (v31 - 1 != v54)
    {
      v28 = v54 + 1;
      v55 = *&v23[8 * v54 + 72];
      v27 -= 64;
      ++v54;
      if (v55)
      {
        v30 = (v55 - 1) & v55;
        v29 = __clz(__rbit64(v55)) - v27;
        goto LABEL_21;
      }
    }

    v73 = 1;
LABEL_32:
    v75 = *(v0 + 72);
    v74 = *(v0 + 80);
    __swift_storeEnumTagSinglePayload(v75, v73, 1, v74);

    if (__swift_getEnumTagSinglePayload(v75, 1, v74) == 1)
    {
      v76 = *(v0 + 408);
      v147 = *(v0 + 400);
      v150 = *(v0 + 416);
      v78 = *(v0 + 376);
      v77 = *(v0 + 384);
      v137 = *(v0 + 392);
      v140 = *(v0 + 72);
      v143 = *(v0 + 24);
      (*(*(v0 + 160) + 8))(*(v0 + 168), *(v0 + 152));
      v79 = OUTLINED_FUNCTION_323();
      v80(v79);
      v81 = OUTLINED_FUNCTION_55();
      v82(v81);
      (*(v77 + 8))(v137, v78);
      (*(v76 + 8))(v150, v147);
      sub_1C72FBFC0(v140, &qword_1EC21A578);
      *v143 = 2;
    }

    else
    {
      sub_1C72FB398(*(v0 + 72), *(v0 + 144));
      OUTLINED_FUNCTION_84_8();
      sub_1C712A774(v83, v84, v85, v86);
      OUTLINED_FUNCTION_84_8();
      sub_1C712A774(v87, v88, v89, v90);
      v91 = sub_1C754FEEC();
      v92 = sub_1C75511BC();
      v93 = os_log_type_enabled(v91, v92);
      v94 = *(v0 + 408);
      v95 = *(v0 + 416);
      v96 = *(v0 + 400);
      v97 = *(v0 + 384);
      v148 = *(v0 + 376);
      v151 = *(v0 + 392);
      v141 = *(v0 + 264);
      v144 = *(v0 + 256);
      v136 = *(v0 + 232);
      v138 = *(v0 + 248);
      v132 = *(v0 + 224);
      v134 = *(v0 + 240);
      v98 = *(v0 + 160);
      v130 = *(v0 + 152);
      v131 = *(v0 + 168);
      v99 = *(v0 + 96);
      v100 = *(v0 + 104);
      if (v93)
      {
        log = v91;
        v126 = v92;
        v101 = *(v0 + 80);
        v102 = *(v0 + 88);
        OUTLINED_FUNCTION_11_3();
        v128 = v96;
        v103 = swift_slowAlloc();
        OUTLINED_FUNCTION_98();
        v124 = swift_slowAlloc();
        v152[0] = v124;
        *v103 = 134218242;
        sub_1C72FB398(v100, v102);
        v104 = *(v102 + *(v101 + 48));
        v105 = sub_1C754E07C();
        OUTLINED_FUNCTION_12();
        v107 = *(v106 + 8);
        v107(v102, v105);
        *(v103 + 4) = v104;
        *(v103 + 12) = 2080;
        sub_1C712A774(v99, v102, &qword_1EC21A580, &qword_1C7580D80);
        v125 = v95;
        v108 = sub_1C754E05C();
        v122 = v97;
        v110 = v109;
        sub_1C72FBFC0(v99, &qword_1EC21A580);
        v107(v102, v105);
        v111 = sub_1C6F765A4(v108, v110, v152);

        *(v103 + 14) = v111;
        _os_log_impl(&dword_1C6F5C000, log, v126, "[validateLanguageWithLanguageRecognizer] Unsupported languages max score: %f found for: %s", v103, 0x16u);
        __swift_destroy_boxed_opaque_existential_1(v124);
        OUTLINED_FUNCTION_235();
        MEMORY[0x1CCA5F8E0]();
        OUTLINED_FUNCTION_235();
        MEMORY[0x1CCA5F8E0]();

        (*(v98 + 8))(v131, v130);
        (*(v136 + 8))(v134, v132);
        (*(v144 + 8))(v141, v138);
        (*(v122 + 8))(v151, v148);
        (*(v94 + 8))(v125, v128);
      }

      else
      {

        OUTLINED_FUNCTION_11_47();
        sub_1C72FBFC0(v112, v113);
        OUTLINED_FUNCTION_11_47();
        sub_1C72FBFC0(v114, v115);
        (*(v98 + 8))(v131, v130);
        (*(v136 + 8))(v134, v132);
        (*(v144 + 8))(v141, v138);
        (*(v97 + 8))(v151, v148);
        v116 = OUTLINED_FUNCTION_55();
        v117(v116);
      }

      v118 = *(v0 + 144);
      v119 = *(v0 + 24);
      v120 = *(v118 + *(*(v0 + 80) + 48));
      sub_1C72FBFC0(v118, &qword_1EC21A580);
      if (v120 >= 0.9)
      {
        v121 = 1;
      }

      else
      {
        v121 = 2;
      }

      *v119 = v121;
    }

    OUTLINED_FUNCTION_104_8();

    OUTLINED_FUNCTION_43();
    goto LABEL_14;
  }

  v28 = 0;
  v29 = __clz(__rbit64(v27));
  v30 = (v27 - 1) & v27;
  v31 = (63 - v25) >> 6;
LABEL_21:
  v56 = *(v0 + 128);
  v133 = *(v0 + 136);
  v57 = *(v0 + 80);
  v58 = *(v23 + 6);
  sub_1C754E07C();
  OUTLINED_FUNCTION_12();
  v135 = *(v59 + 72);
  v142 = v60;
  v139 = *(v59 + 16);
  v139(v56, v58 + v135 * v29);
  v146 = v57;
  *(v56 + *(v57 + 48)) = *(*(v23 + 7) + 8 * v29);
  sub_1C72FB398(v56, v133);

  while (v30)
  {
    v61 = v28;
LABEL_27:
    v62 = *(v0 + 136);
    v64 = *(v0 + 112);
    v63 = *(v0 + 120);
    OUTLINED_FUNCTION_88();
    v66 = v65 | (v61 << 6);
    (v139)(v64, *(v149 + 6) + v66 * v135, v142);
    *(v64 + *(v146 + 48)) = *(*(v149 + 7) + 8 * v66);
    v67 = OUTLINED_FUNCTION_282();
    sub_1C72FB398(v67, v68);
    if (*(v62 + *(v146 + 48)) >= *(v63 + *(v146 + 48)))
    {
      result = sub_1C72FBFC0(*(v0 + 120), &qword_1EC21A580);
    }

    else
    {
      sub_1C72FBFC0(*(v0 + 136), &qword_1EC21A580);
      v69 = OUTLINED_FUNCTION_282();
      result = sub_1C72FB398(v69, v70);
    }

    v28 = v61;
  }

  while (1)
  {
    v61 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      break;
    }

    if (v61 >= v31)
    {
      v71 = *(v0 + 136);
      v72 = *(v0 + 72);

      sub_1C72FB398(v71, v72);
      v73 = 0;
      goto LABEL_32;
    }

    v30 = *&v24[8 * v61];
    ++v28;
    if (v30)
    {
      goto LABEL_27;
    }
  }

  __break(1u);
  return result;
}

uint64_t static TextSanitizer.validateLanguage(_:useCaseIdentifier:languageCodes:topK:tokenThreshold:)()
{
  OUTLINED_FUNCTION_75_1();
  OUTLINED_FUNCTION_189_1();
  *(v0 + 32) = *v1;
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_5_2(v2);
  *v3 = v4;
  v3[1] = sub_1C72E35BC;
  OUTLINED_FUNCTION_183_1();

  return static TextSanitizer.validateLanguageWithLanguageRecognizer(_:useCaseIdentifier:languageCodes:topK:tokenThreshold:)();
}

uint64_t sub_1C72E35BC()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  v2 = *v1;
  OUTLINED_FUNCTION_14();
  *v3 = v2;
  *(v4 + 24) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_41();

    return MEMORY[0x1EEE6DFA0](v5, v6, v7);
  }

  else
  {
    OUTLINED_FUNCTION_43();

    return v8();
  }
}

uint64_t static TextSanitizer.validateLanguage(_:useCaseIdentifier:topK:tokenThreshold:)(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4, uint64_t a5, uint64_t a6, char a7)
{
  *(v7 + 81) = a7;
  *(v7 + 40) = a5;
  *(v7 + 48) = a6;
  *(v7 + 24) = a2;
  *(v7 + 32) = a3;
  *(v7 + 16) = a1;
  *(v7 + 82) = *a4;
  return OUTLINED_FUNCTION_1_0();
}

uint64_t sub_1C72E3700()
{
  OUTLINED_FUNCTION_123();
  v1 = *(v0 + 82);
  v3 = sub_1C72E0384(v2);
  sub_1C739E244(v3);

  sub_1C706D4E4();
  *(v0 + 56) = v4;
  *(v0 + 80) = v1;
  v5 = swift_task_alloc();
  *(v0 + 64) = v5;
  *v5 = v0;
  v5[1] = sub_1C72E37F0;

  return static TextSanitizer.validateLanguageWithLanguageRecognizer(_:useCaseIdentifier:languageCodes:topK:tokenThreshold:)();
}

uint64_t sub_1C72E37F0()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  v3 = v2;
  OUTLINED_FUNCTION_6_4();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_14();
  *v6 = v5;
  *(v3 + 72) = v0;

  if (v0)
  {

    v7 = OUTLINED_FUNCTION_24_1();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {

    OUTLINED_FUNCTION_43();

    return v10();
  }
}

uint64_t static TextSanitizer.validateCharactersWithCharacterSets(_:locales:useCaseIdentifier:)()
{
  OUTLINED_FUNCTION_42();
  v2 = v1;
  *(v0 + 32) = v3;
  *(v0 + 40) = v4;
  *(v0 + 24) = v5;
  v6 = sub_1C754FC1C();
  *(v0 + 48) = v6;
  OUTLINED_FUNCTION_18(v6);
  *(v0 + 56) = v7;
  *(v0 + 64) = OUTLINED_FUNCTION_281_1();
  *(v0 + 72) = swift_task_alloc();
  v8 = sub_1C754FC4C();
  *(v0 + 80) = v8;
  OUTLINED_FUNCTION_18(v8);
  *(v0 + 88) = v9;
  *(v0 + 96) = OUTLINED_FUNCTION_77();
  v10 = sub_1C754FCEC();
  *(v0 + 104) = v10;
  OUTLINED_FUNCTION_18(v10);
  *(v0 + 112) = v11;
  *(v0 + 120) = OUTLINED_FUNCTION_77();
  v12 = sub_1C754FC6C();
  *(v0 + 128) = v12;
  OUTLINED_FUNCTION_18(v12);
  *(v0 + 136) = v13;
  *(v0 + 144) = OUTLINED_FUNCTION_77();
  v14 = sub_1C754FD2C();
  *(v0 + 152) = v14;
  OUTLINED_FUNCTION_18(v14);
  *(v0 + 160) = v15;
  *(v0 + 168) = OUTLINED_FUNCTION_281_1();
  *(v0 + 176) = swift_task_alloc();
  v16 = sub_1C754EC4C();
  *(v0 + 184) = v16;
  OUTLINED_FUNCTION_18(v16);
  *(v0 + 192) = v17;
  *(v0 + 200) = OUTLINED_FUNCTION_77();
  v18 = sub_1C754DFFC();
  *(v0 + 208) = v18;
  OUTLINED_FUNCTION_18(v18);
  *(v0 + 216) = v19;
  *(v0 + 224) = OUTLINED_FUNCTION_281_1();
  *(v0 + 232) = swift_task_alloc();
  *(v0 + 240) = swift_task_alloc();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A588, &qword_1C7580D88);
  OUTLINED_FUNCTION_76(v20);
  *(v0 + 248) = OUTLINED_FUNCTION_77();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A590, &qword_1C7580D90);
  OUTLINED_FUNCTION_76(v21);
  *(v0 + 256) = OUTLINED_FUNCTION_77();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A598, &unk_1C7580D98);
  OUTLINED_FUNCTION_76(v22);
  *(v0 + 264) = OUTLINED_FUNCTION_77();
  v23 = sub_1C754EC1C();
  OUTLINED_FUNCTION_76(v23);
  *(v0 + 272) = OUTLINED_FUNCTION_77();
  v24 = sub_1C754EC9C();
  *(v0 + 280) = v24;
  OUTLINED_FUNCTION_18(v24);
  *(v0 + 288) = v25;
  *(v0 + 296) = OUTLINED_FUNCTION_77();
  *(v0 + 336) = *v2;
  v26 = OUTLINED_FUNCTION_24_1();

  return MEMORY[0x1EEE6DFA0](v26, v27, v28);
}

uint64_t sub_1C72E3CD0()
{
  v36 = v0;
  v2 = *(v0 + 264);
  v4 = *(v0 + 248);
  v3 = *(v0 + 256);
  v5 = sub_1C754EBDC();
  OUTLINED_FUNCTION_213_2(v2, v6, v7, v5);
  v8 = sub_1C754EA9C();
  OUTLINED_FUNCTION_213_2(v3, v9, v10, v8);
  v11 = sub_1C75504FC();
  sub_1C71CD7B8(v11);
  sub_1C754EAEC();
  v12 = sub_1C754EAFC();
  __swift_storeEnumTagSinglePayload(v4, 0, 1, v12);
  OUTLINED_FUNCTION_15_1();
  sub_1C754EBFC();
  sub_1C754EC2C();
  sub_1C754DFEC();
  if (qword_1EDD0F478 != -1)
  {
    OUTLINED_FUNCTION_2_95();
    swift_once();
  }

  v13 = *(v0 + 216);
  v14 = sub_1C754FF1C();
  *(v0 + 304) = __swift_project_value_buffer(v14, qword_1EDD28DD0);
  v15 = *(v13 + 16);
  v16 = OUTLINED_FUNCTION_67_18();
  v15(v16);
  v17 = sub_1C754FEEC();
  v18 = sub_1C75511BC();
  if (os_log_type_enabled(v17, v18))
  {
    OUTLINED_FUNCTION_13_3();
    v19 = swift_slowAlloc();
    OUTLINED_FUNCTION_98();
    v33 = swift_slowAlloc();
    v35 = v33;
    *v19 = 136315138;
    OUTLINED_FUNCTION_74_12();
    sub_1C72FC014(v20, v21, MEMORY[0x1E69695E0]);
    v22 = sub_1C7551D8C();
    v34 = v15;
    v24 = v23;
    v25 = OUTLINED_FUNCTION_95_14();
    v1(v25);
    v26 = sub_1C6F765A4(v22, v24, &v35);
    v15 = v34;

    *(v19 + 4) = v26;
    OUTLINED_FUNCTION_210_2(&dword_1C6F5C000, "[validateCharactersWithCharacterSets] Calling languageScriptValidator scrub with userRequestIdentifier: %s", v18);
    __swift_destroy_boxed_opaque_existential_1(v33);
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
    v27 = OUTLINED_FUNCTION_4_0();
    MEMORY[0x1CCA5F8E0](v27);
  }

  else
  {

    v28 = OUTLINED_FUNCTION_95_14();
    v1(v28);
  }

  *(v0 + 312) = v1;
  switch(*(v0 + 336))
  {
    case 5:
    case 7:
      break;
    default:
      OUTLINED_FUNCTION_11_56();
      break;
  }

  (v15)(*(v0 + 224), *(v0 + 240), *(v0 + 208));
  v29 = [objc_opt_self() processInfo];
  [v29 processIdentifier];

  OUTLINED_FUNCTION_67_18();
  sub_1C754EC3C();
  v30 = swift_task_alloc();
  *(v0 + 320) = v30;
  *v30 = v0;
  v30[1] = sub_1C72E40CC;
  v31 = OUTLINED_FUNCTION_61_3(*(v0 + 24));

  return MEMORY[0x1EEE0B2A8](v31);
}

uint64_t sub_1C72E40CC()
{
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_6_4();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 328) = v0;

  if (!v0)
  {
  }

  v4 = OUTLINED_FUNCTION_94();
  v5(v4);
  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1C72E4248()
{
  (*(v0 + 312))(*(v0 + 240), *(v0 + 208));
  v1 = OUTLINED_FUNCTION_66_2();
  v2(v1);
  OUTLINED_FUNCTION_105_9();

  OUTLINED_FUNCTION_116();
  v3 = OUTLINED_FUNCTION_178_1();

  return v4(v3);
}

uint64_t sub_1C72E4390()
{
  v78 = v0;
  v1 = *(v0 + 328);
  v2 = (v0 + 152);
  (*(v0 + 312))(*(v0 + 240), *(v0 + 208));
  *(v0 + 16) = v1;
  v3 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219760, ":");
  if (OUTLINED_FUNCTION_162_5(v4))
  {
    v5 = (v0 + 168);
    v7 = *(v0 + 112);
    v6 = *(v0 + 120);

    v8 = OUTLINED_FUNCTION_66_2();
    v9(v8);
    sub_1C754FD0C();
    v10 = v7 + 88;
    v11 = OUTLINED_FUNCTION_15_1();
    if (v12(v11) == *MEMORY[0x1E69A0A58])
    {
      v14 = (v0 + 96);
      v13 = *(v0 + 96);
      OUTLINED_FUNCTION_175_2();
      v74 = v15;
      v16 = *(v0 + 80);
      (*(*(v0 + 112) + 96))(v6, *(v0 + 104));
      v17 = OUTLINED_FUNCTION_173_3();
      v18(v17);
      sub_1C754FC5C();
      if ((*(v10 + 88))(v13, v16) == *MEMORY[0x1E69A09F0])
      {
        v19 = *(v0 + 96);
        v20 = *(v0 + 72);
        v22 = *(v0 + 56);
        v21 = *(v0 + 64);
        v23 = *(v0 + 48);
        (*(*(v0 + 88) + 96))(v19, *(v0 + 80));
        (*(v22 + 32))(v20, v19, v23);
        (*(v22 + 16))(v21, v20, v23);
        v24 = sub_1C754FEEC();
        v25 = sub_1C75511BC();
        v26 = os_log_type_enabled(v24, v25);
        v27 = *(v0 + 288);
        v28 = *(v0 + 296);
        v29 = *(v0 + 280);
        v75 = *(v0 + 168);
        v76 = *(v0 + 160);
        v72 = *(v0 + 144);
        v73 = *(v0 + 152);
        v30 = *(v0 + 136);
        v70 = *(v0 + 72);
        v71 = *(v0 + 128);
        v31 = *(v0 + 48);
        v32 = *(v0 + 56);
        if (v26)
        {
          OUTLINED_FUNCTION_13_3();
          v66 = v25;
          v33 = swift_slowAlloc();
          OUTLINED_FUNCTION_98();
          v69 = v27;
          v34 = swift_slowAlloc();
          v77 = v34;
          *v33 = 136315138;
          v67 = v29;
          v68 = v28;
          v35 = sub_1C754FC0C();
          v37 = v36;
          v38 = *(v32 + 8);
          v39 = OUTLINED_FUNCTION_66_2();
          v38(v39);
          v40 = sub_1C6F765A4(v35, v37, &v77);

          *(v33 + 4) = v40;
          _os_log_impl(&dword_1C6F5C000, v24, v66, "[validateLocaleCharactersUsingCharacterSets] Character set rejection: %s", v33, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v34);
          OUTLINED_FUNCTION_235();
          MEMORY[0x1CCA5F8E0]();
          v41 = OUTLINED_FUNCTION_4_0();
          MEMORY[0x1CCA5F8E0](v41);

          (v38)(v70, v31);
          (*(v30 + 8))(v72, v71);
          (*(v76 + 8))(v75, v73);
          (*(v69 + 8))(v68, v67);
        }

        else
        {

          v64 = *(v32 + 8);
          v65 = OUTLINED_FUNCTION_66_2();
          v64(v65);
          (v64)(v70, v31);
          (*(v30 + 8))(v72, v71);
          (*(v76 + 8))(v75, v73);
          (*(v27 + 8))(v28, v29);
        }

        OUTLINED_FUNCTION_105_9();

        OUTLINED_FUNCTION_116();
        v62 = OUTLINED_FUNCTION_178_1();
        goto LABEL_11;
      }

      OUTLINED_FUNCTION_13_61();
      v54 = sub_1C72FC014(v52, v53, MEMORY[0x1E69A0A80]);
      OUTLINED_FUNCTION_86_0(v54);
      OUTLINED_FUNCTION_11_47();
      v55();
      swift_willThrow();
      v56 = OUTLINED_FUNCTION_15_1();
      v57(v56);
      v58 = OUTLINED_FUNCTION_66_2();
      v59(v58);
      v5 = (v0 + 296);
      v51 = v0 + 288;
      v2 = (v0 + 280);
      v50 = (v0 + 80);
      v49 = v74;
    }

    else
    {
      (*(*(v0 + 112) + 8))(*(v0 + 120), *(v0 + 104));
      OUTLINED_FUNCTION_13_61();
      v47 = sub_1C72FC014(v45, v46, MEMORY[0x1E69A0A80]);
      OUTLINED_FUNCTION_86_0(v47);
      OUTLINED_FUNCTION_11_47();
      v48();
      swift_willThrow();
      v14 = (v0 + 296);
      v49 = (v0 + 288);
      v50 = (v0 + 280);
      v51 = v0 + 160;
    }

    v44 = *v14;
    v60 = *v50;
    v42 = *v49;
    (*(*v51 + 8))(*v5, *v2);
    v43 = v60;
  }

  else
  {
    v42 = *(v0 + 288);
    v43 = *(v0 + 280);
    v44 = *(v0 + 296);
  }

  (*(v42 + 8))(v44, v43);

  OUTLINED_FUNCTION_116();
  v62 = 0;
LABEL_11:

  return v61(v62);
}

uint64_t static TextSanitizer.validateCharactersWordByWord(_:storyGenerationCache:locales:useCaseIdentifier:)()
{
  OUTLINED_FUNCTION_42();
  v2 = v1;
  *(v0 + 88) = v3;
  *(v0 + 96) = v4;
  *(v0 + 72) = v5;
  *(v0 + 80) = v6;
  v7 = sub_1C754E13C();
  *(v0 + 104) = v7;
  OUTLINED_FUNCTION_18(v7);
  *(v0 + 112) = v8;
  *(v0 + 120) = OUTLINED_FUNCTION_77();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2177A8, &qword_1C757FB70);
  OUTLINED_FUNCTION_76(v9);
  *(v0 + 128) = OUTLINED_FUNCTION_77();
  v10 = sub_1C754E15C();
  *(v0 + 136) = v10;
  OUTLINED_FUNCTION_18(v10);
  *(v0 + 144) = v11;
  *(v0 + 152) = OUTLINED_FUNCTION_77();
  *(v0 + 242) = *v2;
  v12 = OUTLINED_FUNCTION_24_1();

  return MEMORY[0x1EEE6DFA0](v12, v13, v14);
}

void sub_1C72E4B98()
{
  v1 = v0[12];
  v4 = *(v1 + 56);
  v3 = v1 + 56;
  v2 = v4;
  v5 = -1;
  v6 = -1 << *(v0[12] + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & v2;
  v8 = (63 - v6) >> 6;
  v54 = v0[12];
  v55 = v0[18];
  sub_1C75504FC();
  v9 = 0;
  v53 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v10 = v9;
    if (!v7)
    {
      break;
    }

LABEL_8:
    v11 = v0[19];
    v12 = v0[16];
    OUTLINED_FUNCTION_8_2();
    (*(v55 + 16))(v11, *(v54 + 48) + *(v55 + 72) * (v13 | (v9 << 6)));
    sub_1C754E14C();
    sub_1C754E12C();
    v14 = OUTLINED_FUNCTION_323();
    v15(v14);
    v16 = sub_1C754E07C();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v16);
    v18 = v0[16];
    if (EnumTagSinglePayload == 1)
    {
      v19 = OUTLINED_FUNCTION_193_1();
      v20(v19);
      sub_1C72FBFC0(v18, &qword_1EC2177A8);
    }

    else
    {
      v21 = sub_1C754E05C();
      v52 = v22;
      v23 = OUTLINED_FUNCTION_193_1();
      v24(v23);
      (*(*(v16 - 8) + 8))(v18, v16);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C6FB1814();
        v53 = v27;
      }

      v25 = *(v53 + 16);
      if (v25 >= *(v53 + 24) >> 1)
      {
        sub_1C6FB1814();
        v53 = v28;
      }

      *(v53 + 16) = v25 + 1;
      v26 = v53 + 16 * v25;
      *(v26 + 32) = v21;
      *(v26 + 40) = v52;
    }
  }

  while (1)
  {
    v9 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
      goto LABEL_30;
    }

    if (v9 >= v8)
    {
      break;
    }

    v7 = *(v3 + 8 * v9);
    ++v10;
    if (v7)
    {
      goto LABEL_8;
    }
  }

  v30 = v0[9];
  v29 = v0[10];

  sub_1C706D154();
  v32 = v31;
  v0[20] = v31;
  v0[8] = MEMORY[0x1E69E7CD0];
  sub_1C6F65BE8(0, &qword_1EC21A5A0, 0x1E696AD00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A5A8, &qword_1C7580DC8);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_1C755BAB0;
  v34 = *MEMORY[0x1E696A528];
  *(v33 + 32) = *MEMORY[0x1E696A528];
  v35 = v34;
  v36 = sub_1C72E58A0(v33, 0);
  v0[21] = v36;
  sub_1C6F9EDB0(v30, v29, v36);
  v37 = sub_1C755065C();
  v38 = [v37 length];

  v39 = swift_allocObject();
  v0[22] = v39;
  v39[2] = v30;
  v39[3] = v29;
  v39[4] = v0 + 8;
  v39[5] = v32;
  v40 = swift_allocObject();
  *(v40 + 16) = sub_1C72FB9B8;
  *(v40 + 24) = v39;
  v0[6] = sub_1C72FB9C4;
  v0[7] = v40;
  v0[2] = MEMORY[0x1E69E9820];
  v0[3] = 1107296256;
  v0[4] = sub_1C72E5EBC;
  v0[5] = &block_descriptor_28;
  v41 = _Block_copy(v0 + 2);
  sub_1C75504FC();
  sub_1C75504FC();

  [v36 enumerateTagsInRange:0 unit:v38 scheme:0 options:v35 usingBlock:{14, v41}];
  _Block_release(v41);
  LOBYTE(v36) = swift_isEscapingClosureAtFileLocation();

  if (v36)
  {
LABEL_30:
    __break(1u);
    return;
  }

  v42 = v0[8];
  v0[23] = v42;
  v43 = *(v42 + 32);
  *(v0 + 243) = v43;
  v44 = -1;
  v45 = -1 << v43;
  if (-(-1 << v43) < 64)
  {
    v44 = ~(-1 << -v45);
  }

  v46 = v44 & *(v42 + 56);
  sub_1C75504FC();
  if (v46)
  {
    v47 = 0;
LABEL_23:
    v0[24] = v46;
    v0[25] = v47;
    OUTLINED_FUNCTION_135_6((v47 << 10) | (16 * __clz(__rbit64(v46))));
    *(v45 + 240) = v49;
    sub_1C75504FC();
    v50 = swift_task_alloc();
    v0[28] = v50;
    *v50 = v0;
    OUTLINED_FUNCTION_63_18(v50);

    static TextSanitizer.validateCharactersWithCharacterSets(_:locales:useCaseIdentifier:)();
  }

  else
  {
    v48 = 0;
    while (((63 - v45) >> 6) - 1 != v48)
    {
      v47 = v48 + 1;
      v46 = *(v42 + 8 * v48++ + 64);
      if (v46)
      {
        goto LABEL_23;
      }
    }

    OUTLINED_FUNCTION_116();

    v51(1);
  }
}

uint64_t sub_1C72E51A0()
{
  OUTLINED_FUNCTION_49_0();
  v3 = v2;
  OUTLINED_FUNCTION_47();
  v5 = v4;
  OUTLINED_FUNCTION_6_4();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_14();
  *v8 = v7;
  *(v5 + 232) = v0;

  if (v0)
  {
  }

  else
  {
    *(v5 + 244) = v3 & 1;
  }

  OUTLINED_FUNCTION_13();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1C72E52B4()
{
  v25 = v1;
  if ((*(v1 + 244) & 1) == 0)
  {
    v0 = *(v1 + 232);
    static TextSanitizer.validateLanguageWithLexicon(_:supportedLanguageIdentifiers:storyGenerationCache:)(*(v1 + 208), *(v1 + 216), *(v1 + 160), (v1 + 241));
    if (!v0)
    {

      v18 = "unsupportedCharacters";
      switch(*(v1 + 241))
      {
        case 1:
        case 3:
          goto LABEL_23;
        case 2:
          v18 = "confidentlyNotSupported";
          goto LABEL_18;
        default:
LABEL_18:
          if ((v18 | 0x8000000000000000) == 0x80000001C7596500)
          {
            goto LABEL_2;
          }

LABEL_23:
          v20 = sub_1C7551DBC();

          if (v20)
          {
            goto LABEL_3;
          }

          v21 = *(v1 + 168);

          break;
      }

LABEL_25:

      OUTLINED_FUNCTION_116();
LABEL_26:
      OUTLINED_FUNCTION_20_3();

      __asm { BRAA            X2, X16 }
    }

    if (qword_1EDD0F478 == -1)
    {
LABEL_7:
      v4 = sub_1C754FF1C();
      __swift_project_value_buffer(v4, qword_1EDD28DD0);
      OUTLINED_FUNCTION_51();
      sub_1C75504FC();
      v5 = sub_1C754FEEC();
      v6 = sub_1C755119C();

      v7 = os_log_type_enabled(v5, v6);
      v8 = *(v1 + 216);
      if (v7)
      {
        v9 = *(v1 + 208);
        OUTLINED_FUNCTION_13_3();
        v10 = swift_slowAlloc();
        OUTLINED_FUNCTION_98();
        v11 = swift_slowAlloc();
        v24 = v11;
        *v10 = 136642819;
        v12 = sub_1C6F765A4(v9, v8, &v24);

        *(v10 + 4) = v12;
        _os_log_impl(&dword_1C6F5C000, v5, v6, "[validateCharactersWordByWord] Failed to localize with the lexicon for the word: '%{sensitive}s'", v10, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v11);
        OUTLINED_FUNCTION_235();
        MEMORY[0x1CCA5F8E0]();
        OUTLINED_FUNCTION_235();
        MEMORY[0x1CCA5F8E0]();
      }

      else
      {
      }

      v19 = *(v1 + 168);
      swift_willThrow();

      OUTLINED_FUNCTION_116();
      goto LABEL_26;
    }

LABEL_30:
    OUTLINED_FUNCTION_2_95();
    swift_once();
    goto LABEL_7;
  }

LABEL_2:

LABEL_3:
  v2 = *(v1 + 200);
  v3 = (*(v1 + 192) - 1) & *(v1 + 192);
  if (!v3)
  {
    while (1)
    {
      v13 = v2 + 1;
      if (__OFADD__(v2, 1))
      {
        break;
      }

      if (v13 >= (((1 << *(v1 + 243)) + 63) >> 6))
      {

        goto LABEL_25;
      }

      v3 = *(*(v1 + 184) + 8 * v13 + 56);
      ++v2;
      if (v3)
      {
        v2 = v13;
        goto LABEL_13;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

LABEL_13:
  *(v1 + 192) = v3;
  *(v1 + 200) = v2;
  OUTLINED_FUNCTION_135_6((v2 << 10) | (16 * __clz(__rbit64(v3))));
  *(v0 + 240) = v14;
  sub_1C75504FC();
  v15 = swift_task_alloc();
  *(v1 + 224) = v15;
  *v15 = v1;
  OUTLINED_FUNCTION_63_18(v15);
  OUTLINED_FUNCTION_20_3();

  return static TextSanitizer.validateCharactersWithCharacterSets(_:locales:useCaseIdentifier:)();
}

void sub_1C72E56CC()
{
  if (qword_1EDD0F478 != -1)
  {
    OUTLINED_FUNCTION_2_95();
    swift_once();
  }

  v1 = sub_1C754FF1C();
  __swift_project_value_buffer(v1, qword_1EDD28DD0);
  sub_1C75504FC();
  v2 = sub_1C754FEEC();
  v3 = sub_1C755119C();

  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[27];
  if (v4)
  {
    v6 = v0[26];
    OUTLINED_FUNCTION_13_3();
    v7 = swift_slowAlloc();
    OUTLINED_FUNCTION_98();
    v8 = swift_slowAlloc();
    v13 = v8;
    *v7 = 136642819;
    v9 = sub_1C6F765A4(v6, v5, &v13);

    *(v7 + 4) = v9;
    _os_log_impl(&dword_1C6F5C000, v2, v3, "[validateCharactersWordByWord] Failed to localize with character sets for the word: '%{sensitive}s'", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
  }

  else
  {
  }

  v10 = v0[21];
  swift_willThrow();

  OUTLINED_FUNCTION_116();
  OUTLINED_FUNCTION_20_3();

  __asm { BRAA            X2, X16 }
}

id sub_1C72E58A0(uint64_t a1, uint64_t a2)
{
  v3 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  type metadata accessor for NSLinguisticTagScheme(0);
  v4 = sub_1C7550B3C();

  v5 = [v3 initWithTagSchemes:v4 options:a2];

  return v5;
}

uint64_t sub_1C72E5920(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v43 = a8;
  v46 = a7;
  v11 = sub_1C754E13C();
  v44 = *(v11 - 8);
  v45 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1C754E15C();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2177A8, &qword_1C757FB70);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v43 - v19;
  v21 = sub_1C755065C();
  v22 = [v21 substringWithRange_];

  v23 = sub_1C755068C();
  v25 = v24;

  if (!a1)
  {
    goto LABEL_4;
  }

  sub_1C755068C();
  v26 = a1;
  sub_1C754E03C();
  sub_1C754E14C();
  (*(v15 + 8))(v17, v14);
  sub_1C754E12C();
  (*(v44 + 8))(v13, v45);
  v27 = sub_1C754E07C();
  if (__swift_getEnumTagSinglePayload(v20, 1, v27) == 1)
  {

    sub_1C72FBFC0(v20, &qword_1EC2177A8);
LABEL_4:
    if (qword_1EDD0F478 != -1)
    {
      swift_once();
    }

    v28 = sub_1C754FF1C();
    __swift_project_value_buffer(v28, qword_1EDD28DD0);
    sub_1C75504FC();
    v29 = sub_1C754FEEC();
    v30 = sub_1C75511BC();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v47 = v32;
      *v31 = 136642819;
      *(v31 + 4) = sub_1C6F765A4(v23, v25, &v47);
      _os_log_impl(&dword_1C6F5C000, v29, v30, "[validateCharactersWordByWord] NSLinguisticTagger could not infer the language of '%{sensitive}s'", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v32);
      MEMORY[0x1CCA5F8E0](v32, -1, -1);
      MEMORY[0x1CCA5F8E0](v31, -1, -1);
    }

    sub_1C70F082C(&v47, v23, v25);
  }

  v34 = sub_1C754E05C();
  v36 = v35;
  (*(*(v27 - 8) + 8))(v20, v27);
  if (sub_1C7009C30(v34, v36, v43))
  {
  }

  else
  {
    if (qword_1EDD0F478 != -1)
    {
      swift_once();
    }

    v37 = sub_1C754FF1C();
    __swift_project_value_buffer(v37, qword_1EDD28DD0);
    sub_1C75504FC();
    sub_1C75504FC();
    v38 = sub_1C754FEEC();
    v39 = sub_1C75511BC();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v47 = v41;
      *v40 = 136643075;
      *(v40 + 4) = sub_1C6F765A4(v23, v25, &v47);
      *(v40 + 12) = 2080;
      v42 = sub_1C6F765A4(v34, v36, &v47);

      *(v40 + 14) = v42;
      _os_log_impl(&dword_1C6F5C000, v38, v39, "[validateCharactersWordByWord] The language of '%{sensitive}s' is not supported, with detected language by NSLinguisticTagger: %s", v40, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1CCA5F8E0](v41, -1, -1);
      MEMORY[0x1CCA5F8E0](v40, -1, -1);
    }

    else
    {
    }

    sub_1C70F082C(&v47, v23, v25);
  }
}

void sub_1C72E5EBC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a1 + 32);
  v10 = a2;
  v9(a2, a3, a4, a5);
}

uint64_t static TextSanitizer.validateCharacters(_:locales:storyGenerationCache:useCaseIdentifier:)()
{
  OUTLINED_FUNCTION_42();
  v2 = v1;
  *(v0 + 48) = v3;
  *(v0 + 56) = v4;
  *(v0 + 32) = v5;
  *(v0 + 40) = v6;
  v7 = sub_1C754D84C();
  *(v0 + 64) = v7;
  OUTLINED_FUNCTION_18(v7);
  *(v0 + 72) = v8;
  *(v0 + 80) = OUTLINED_FUNCTION_77();
  *(v0 + 122) = *v2;
  v9 = OUTLINED_FUNCTION_24_1();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1C72E5FEC()
{
  OUTLINED_FUNCTION_75_1();
  v28 = v0;
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  v3 = HIBYTE(v1) & 0xF;
  if ((v1 & 0x2000000000000000) == 0)
  {
    v3 = v2 & 0xFFFFFFFFFFFFLL;
  }

  if (v3)
  {
    *(v0 + 16) = v2;
    v5 = *(v0 + 72);
    v4 = *(v0 + 80);
    v6 = *(v0 + 64);
    *(v0 + 24) = v1;
    sub_1C754D7BC();
    sub_1C6FB5E8C();
    v7 = sub_1C755154C();
    v9 = v8;
    (*(v5 + 8))(v4, v6);
    if (v7)
    {
      v10 = 0;
    }

    else
    {
      v10 = v9 == 0xE000000000000000;
    }

    if (v10)
    {
    }

    else
    {
      OUTLINED_FUNCTION_90();
      v11 = sub_1C7551DBC();

      if ((v11 & 1) == 0)
      {
        if (qword_1EDD0F478 != -1)
        {
          OUTLINED_FUNCTION_2_95();
          swift_once();
        }

        v12 = sub_1C754FF1C();
        __swift_project_value_buffer(v12, qword_1EDD28DD0);
        OUTLINED_FUNCTION_51();
        sub_1C75504FC();
        sub_1C75504FC();
        v13 = sub_1C754FEEC();
        v14 = sub_1C75511BC();

        if (os_log_type_enabled(v13, v14))
        {
          v15 = *(v0 + 40);
          v16 = *(v0 + 32);
          OUTLINED_FUNCTION_11_3();
          v17 = swift_slowAlloc();
          OUTLINED_FUNCTION_40_25();
          v27 = swift_slowAlloc();
          *v17 = 136643075;
          *(v17 + 4) = sub_1C6F765A4(v16, v15, &v27);
          *(v17 + 12) = 2080;
          sub_1C754E15C();
          OUTLINED_FUNCTION_4_77();
          sub_1C72FC014(v18, v19, MEMORY[0x1E6969780]);
          OUTLINED_FUNCTION_55();
          v20 = sub_1C7550F9C();
          v22 = sub_1C6F765A4(v20, v21, &v27);

          *(v17 + 14) = v22;
          _os_log_impl(&dword_1C6F5C000, v13, v14, "Validating the characters of %{sensitive}s being part of the supported locales: %s", v17, 0x16u);
          swift_arrayDestroy();
          v23 = OUTLINED_FUNCTION_4_0();
          MEMORY[0x1CCA5F8E0](v23);
          OUTLINED_FUNCTION_235();
          MEMORY[0x1CCA5F8E0]();
        }

        *(v0 + 120) = *(v0 + 122);
        v24 = swift_task_alloc();
        *(v0 + 88) = v24;
        *v24 = v0;
        v24[1] = sub_1C72E6308;
        OUTLINED_FUNCTION_61_3(*(v0 + 32));

        return static TextSanitizer.validateCharactersWithCharacterSets(_:locales:useCaseIdentifier:)();
      }
    }
  }

  OUTLINED_FUNCTION_116();

  return v26(1);
}

uint64_t sub_1C72E6308()
{
  OUTLINED_FUNCTION_49_0();
  v3 = v2;
  OUTLINED_FUNCTION_47();
  v5 = v4;
  OUTLINED_FUNCTION_6_4();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_14();
  *v8 = v7;
  *(v5 + 96) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_41();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else if (v3)
  {

    OUTLINED_FUNCTION_116();

    return v12(1);
  }

  else
  {
    *(v5 + 121) = *(v5 + 122);
    v13 = v5 + 121;
    v14 = swift_task_alloc();
    *(v13 - 17) = v14;
    *v14 = v7;
    v14[1] = sub_1C72E64C4;
    OUTLINED_FUNCTION_61_3(*(v13 - 89));

    return static TextSanitizer.validateCharactersWordByWord(_:storyGenerationCache:locales:useCaseIdentifier:)();
  }
}

uint64_t sub_1C72E64C4()
{
  OUTLINED_FUNCTION_49_0();
  v3 = v2;
  OUTLINED_FUNCTION_47();
  v5 = v4;
  OUTLINED_FUNCTION_6_4();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_14();
  *v8 = v7;
  *(v5 + 112) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_13();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {

    v12 = *(v7 + 8);

    return v12(v3 & 1);
  }
}

uint64_t sub_1C72E65FC()
{
  OUTLINED_FUNCTION_42();

  OUTLINED_FUNCTION_116();

  return v0(0);
}

uint64_t sub_1C72E665C()
{
  OUTLINED_FUNCTION_42();

  OUTLINED_FUNCTION_116();

  return v0(0);
}

uint64_t sub_1C72E66BC()
{
  OUTLINED_FUNCTION_75_1();
  OUTLINED_FUNCTION_189_1();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_5_2(v0);
  *v1 = v2;
  v1[1] = sub_1C6F738F4;

  return static TextSanitizer.validateLanguage(_:useCaseIdentifier:languageCodes:topK:tokenThreshold:)();
}

uint64_t sub_1C72E6790()
{
  OUTLINED_FUNCTION_75_1();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_5_2(v6);
  *v7 = v8;
  v7[1] = sub_1C6F739D4;
  v9 = OUTLINED_FUNCTION_183_1();

  return static TextSanitizer.validateLanguage(_:useCaseIdentifier:topK:tokenThreshold:)(v9, v10, v11, v5, v3, v1, v12);
}

uint64_t sub_1C72E685C()
{
  OUTLINED_FUNCTION_123();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = swift_task_alloc();
  *(v0 + 16) = v11;
  *v11 = v0;
  v11[1] = sub_1C7070718;

  return static TextSanitizer.validateCharacterCategories(_:unsupportedCategories:storyGenerationCache:useCaseIdentifier:)(v10, v8, v6, v4, v2);
}

uint64_t sub_1C72E691C()
{
  OUTLINED_FUNCTION_49_0();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = swift_task_alloc();
  *(v0 + 16) = v9;
  *v9 = v0;
  v9[1] = sub_1C72FC068;

  return static TextSanitizer.validateCharacterCategories(_:storyGenerationCache:useCaseIdentifier:)(v8, v6, v4, v2);
}

void sub_1C72E69CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  OUTLINED_FUNCTION_223();
  OUTLINED_FUNCTION_15_57();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2167E8, &unk_1C7581230);
  v34 = OUTLINED_FUNCTION_44_0();
  OUTLINED_FUNCTION_169_5(v34, v35);
  OUTLINED_FUNCTION_102_10();
  if (!v36)
  {
LABEL_23:

    *v30 = v32;
    OUTLINED_FUNCTION_224_0();
    return;
  }

  v37 = 0;
  v38 = (v31 + 56);
  OUTLINED_FUNCTION_90_1();
  v41 = v40 & v39;
  OUTLINED_FUNCTION_72_5();
  if (!v41)
  {
LABEL_4:
    v42 = v37;
    while (1)
    {
      v37 = v42 + 1;
      if (__OFADD__(v42, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v37 >= v33)
      {
        break;
      }

      ++v42;
      if (v38[v37])
      {
        OUTLINED_FUNCTION_78_0();
        v41 = v44 & v43;
        goto LABEL_9;
      }
    }

    OUTLINED_FUNCTION_36_26();
    if (v53 >= 64)
    {
      v55 = OUTLINED_FUNCTION_66_1();
      sub_1C71FAC38(v55, v56, v31 + 56);
    }

    else
    {
      OUTLINED_FUNCTION_9_2();
      *v38 = v54;
    }

    *(v31 + 16) = 0;
    goto LABEL_23;
  }

  while (1)
  {
    OUTLINED_FUNCTION_88();
LABEL_9:
    OUTLINED_FUNCTION_179_3();
    v47 = (v46 + 16 * v45);
    v48 = *v47;
    v49 = v47[1];
    OUTLINED_FUNCTION_168_5();
    sub_1C75505AC();
    sub_1C7551FAC();
    OUTLINED_FUNCTION_29_32();
    if (v50)
    {
      break;
    }

    OUTLINED_FUNCTION_16();
LABEL_17:
    OUTLINED_FUNCTION_98_0();
    OUTLINED_FUNCTION_149_5();
    *v52 = v48;
    v52[1] = v49;
    OUTLINED_FUNCTION_47_1();
    if (!v41)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_15_0();
  while (1)
  {
    OUTLINED_FUNCTION_95_2();
    if (v50)
    {
      if (v51)
      {
        break;
      }
    }

    OUTLINED_FUNCTION_38_19();
    if (!v50)
    {
      OUTLINED_FUNCTION_14_1();
      goto LABEL_17;
    }
  }

LABEL_25:
  __break(1u);
}

void sub_1C72E6B34(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for Hastings.Asset(0);
  v32 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2190F8, &qword_1C7576D90);
  v7 = sub_1C755178C();
  v8 = v7;
  if (!*(v6 + 16))
  {
LABEL_27:

    *v2 = v8;
    return;
  }

  v31 = v1;
  v9 = 0;
  v10 = (v6 + 56);
  v11 = 1 << *(v6 + 32);
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  else
  {
    v12 = -1;
  }

  v13 = v12 & *(v6 + 56);
  v14 = (v11 + 63) >> 6;
  v15 = v7 + 56;
  if (!v13)
  {
LABEL_7:
    v17 = v9;
    while (1)
    {
      v9 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v9 >= v14)
      {
        break;
      }

      v18 = v10[v9];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v13 = (v18 - 1) & v18;
        goto LABEL_12;
      }
    }

    v29 = 1 << *(v6 + 32);
    if (v29 >= 64)
    {
      sub_1C71FAC38(0, (v29 + 63) >> 6, v6 + 56);
    }

    else
    {
      *v10 = -1 << v29;
    }

    v2 = v31;
    *(v6 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v16 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
LABEL_12:
    v19 = *(v32 + 72);
    sub_1C72FBF10(*(v6 + 48) + v19 * (v16 | (v9 << 6)), v5);
    sub_1C7551F3C();
    sub_1C75505AC();
    v20 = sub_1C7551FAC();
    v21 = -1 << *(v8 + 32);
    v22 = v20 & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
    {
      break;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v15 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    sub_1C72FBF10(v5, *(v8 + 48) + v24 * v19);
    ++*(v8 + 16);
    if (!v13)
    {
      goto LABEL_7;
    }
  }

  v25 = 0;
  v26 = (63 - v21) >> 6;
  while (++v23 != v26 || (v25 & 1) == 0)
  {
    v27 = v23 == v26;
    if (v23 == v26)
    {
      v23 = 0;
    }

    v25 |= v27;
    v28 = *(v15 + 8 * v23);
    if (v28 != -1)
    {
      v24 = __clz(__rbit64(~v28)) + (v23 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
}

void sub_1C72E6E38(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for Hastings.Feature(0);
  v34 = *(v3 - 8);
  v35 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC219100, &qword_1C7576D98);
  v7 = sub_1C755178C();
  v8 = v7;
  if (!*(v6 + 16))
  {
LABEL_27:

    *v2 = v8;
    return;
  }

  v32 = v1;
  v33 = v6;
  v9 = 0;
  v10 = (v6 + 56);
  v11 = 1 << *(v6 + 32);
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  else
  {
    v12 = -1;
  }

  v13 = v12 & *(v6 + 56);
  v14 = (v11 + 63) >> 6;
  v15 = v7 + 56;
  if (!v13)
  {
LABEL_7:
    v17 = v9;
    while (1)
    {
      v9 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v9 >= v14)
      {
        break;
      }

      v18 = v10[v9];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v13 = (v18 - 1) & v18;
        goto LABEL_12;
      }
    }

    v30 = 1 << *(v6 + 32);
    if (v30 >= 64)
    {
      sub_1C71FAC38(0, (v30 + 63) >> 6, v10);
    }

    else
    {
      *v10 = -1 << v30;
    }

    v2 = v32;
    *(v6 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v16 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
LABEL_12:
    v19 = *(v6 + 48);
    v20 = *(v34 + 72);
    sub_1C72FBF10(v19 + v20 * (v16 | (v9 << 6)), v5);
    sub_1C7551F3C();
    sub_1C75505AC();
    sub_1C75505AC();

    sub_1C754F58C();
    sub_1C72FC014(&qword_1EC215238, MEMORY[0x1E69C1928], MEMORY[0x1E69C1938]);
    sub_1C755059C();
    v21 = sub_1C7551FAC();
    v22 = -1 << *(v8 + 32);
    v23 = v21 & ~v22;
    v24 = v23 >> 6;
    if (((-1 << v23) & ~*(v15 + 8 * (v23 >> 6))) == 0)
    {
      break;
    }

    v25 = __clz(__rbit64((-1 << v23) & ~*(v15 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v15 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
    sub_1C72FBF10(v5, *(v8 + 48) + v25 * v20);
    ++*(v8 + 16);
    v6 = v33;
    if (!v13)
    {
      goto LABEL_7;
    }
  }

  v26 = 0;
  v27 = (63 - v22) >> 6;
  while (++v24 != v27 || (v26 & 1) == 0)
  {
    v28 = v24 == v27;
    if (v24 == v27)
    {
      v24 = 0;
    }

    v26 |= v28;
    v29 = *(v15 + 8 * v24);
    if (v29 != -1)
    {
      v25 = __clz(__rbit64(~v29)) + (v24 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
}

void sub_1C72E726C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC219148, &qword_1C7581320);
  v4 = sub_1C755178C();
  v5 = v4;
  if (!*(v3 + 16))
  {
LABEL_27:

    *v2 = v5;
    return;
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
  v12 = v4 + 56;
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

    v26 = 1 << *(v3 + 32);
    if (v26 >= 64)
    {
      sub_1C71FAC38(0, (v26 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v7 = -1 << v26;
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
    sub_1C7551F3C();
    sub_1C75505AC();

    v17 = sub_1C7551FAC();
    v18 = -1 << *(v5 + 32);
    v19 = v17 & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
    {
      break;
    }

    v21 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v12 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
    *(*(v5 + 48) + v21) = v16;
    ++*(v5 + 16);
    if (!v10)
    {
      goto LABEL_7;
    }
  }

  v22 = 0;
  v23 = (63 - v18) >> 6;
  while (++v20 != v23 || (v22 & 1) == 0)
  {
    v24 = v20 == v23;
    if (v20 == v23)
    {
      v20 = 0;
    }

    v22 |= v24;
    v25 = *(v12 + 8 * v20);
    if (v25 != -1)
    {
      v21 = __clz(__rbit64(~v25)) + (v20 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
}

void sub_1C72E74D0(uint64_t a1)
{
  v2 = v1;
  v37 = sub_1C754E07C();
  v3 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v36 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A6B0, &qword_1C7581318);
  v6 = sub_1C755178C();
  v7 = v6;
  if (!*(v5 + 16))
  {
LABEL_27:

    *v2 = v7;
    return;
  }

  v31 = v1;
  v32 = v5;
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
  v35 = v3 + 32;
  v14 = v6 + 56;
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

    v29 = 1 << *(v5 + 32);
    if (v29 >= 64)
    {
      sub_1C71FAC38(0, (v29 + 63) >> 6, v9);
    }

    else
    {
      *v9 = -1 << v29;
    }

    v2 = v31;
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
    v33 = *(v3 + 72);
    v34 = v19;
    v19(v36, v18, v37);
    sub_1C72FC014(&qword_1EC215FD8, MEMORY[0x1E6969610], MEMORY[0x1E6969620]);
    v20 = sub_1C755058C();
    v21 = -1 << *(v7 + 32);
    v22 = v20 & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
    {
      break;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v14 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    v34(*(v7 + 48) + v24 * v33, v36, v37);
    ++*(v7 + 16);
    v5 = v32;
    if (!v12)
    {
      goto LABEL_7;
    }
  }

  v25 = 0;
  v26 = (63 - v21) >> 6;
  while (++v23 != v26 || (v25 & 1) == 0)
  {
    v27 = v23 == v26;
    if (v23 == v26)
    {
      v23 = 0;
    }

    v25 |= v27;
    v28 = *(v14 + 8 * v23);
    if (v28 != -1)
    {
      v24 = __clz(__rbit64(~v28)) + (v23 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
}

void sub_1C72E7828(uint64_t a1)
{
  v2 = v1;
  v37 = sub_1C754E15C();
  v3 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v36 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A630, &qword_1C7581270);
  v6 = sub_1C755178C();
  v7 = v6;
  if (!*(v5 + 16))
  {
LABEL_27:

    *v2 = v7;
    return;
  }

  v31 = v1;
  v32 = v5;
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
  v35 = v3 + 32;
  v14 = v6 + 56;
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

    v29 = 1 << *(v5 + 32);
    if (v29 >= 64)
    {
      sub_1C71FAC38(0, (v29 + 63) >> 6, v9);
    }

    else
    {
      *v9 = -1 << v29;
    }

    v2 = v31;
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
    v33 = *(v3 + 72);
    v34 = v19;
    v19(v36, v18, v37);
    sub_1C72FC014(&qword_1EDD0F9C0, MEMORY[0x1E6969770], MEMORY[0x1E6969780]);
    v20 = sub_1C755058C();
    v21 = -1 << *(v7 + 32);
    v22 = v20 & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
    {
      break;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v14 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    v34(*(v7 + 48) + v24 * v33, v36, v37);
    ++*(v7 + 16);
    v5 = v32;
    if (!v12)
    {
      goto LABEL_7;
    }
  }

  v25 = 0;
  v26 = (63 - v21) >> 6;
  while (++v23 != v26 || (v25 & 1) == 0)
  {
    v27 = v23 == v26;
    if (v23 == v26)
    {
      v23 = 0;
    }

    v25 |= v27;
    v28 = *(v14 + 8 * v23);
    if (v28 != -1)
    {
      v24 = __clz(__rbit64(~v28)) + (v23 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
}

void sub_1C72E7B80(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216890, &qword_1C75812B0);
  v4 = sub_1C755178C();
  v5 = v4;
  if (!*(v3 + 16))
  {
LABEL_27:

    *v2 = v5;
    return;
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
  v12 = v4 + 56;
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

    v26 = 1 << *(v3 + 32);
    if (v26 >= 64)
    {
      sub_1C71FAC38(0, (v26 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v7 = -1 << v26;
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
    sub_1C7551F3C();
    sub_1C75505AC();

    v17 = sub_1C7551FAC();
    v18 = -1 << *(v5 + 32);
    v19 = v17 & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
    {
      break;
    }

    v21 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v12 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
    *(*(v5 + 48) + v21) = v16;
    ++*(v5 + 16);
    if (!v10)
    {
      goto LABEL_7;
    }
  }

  v22 = 0;
  v23 = (63 - v18) >> 6;
  while (++v20 != v23 || (v22 & 1) == 0)
  {
    v24 = v20 == v23;
    if (v20 == v23)
    {
      v20 = 0;
    }

    v22 |= v24;
    v25 = *(v12 + 8 * v20);
    if (v25 != -1)
    {
      v21 = __clz(__rbit64(~v25)) + (v20 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
}

void sub_1C72E7E10(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216888, &qword_1C7565668);
  v4 = sub_1C755178C();
  v5 = v4;
  if (!*(v3 + 16))
  {
LABEL_27:

    *v2 = v5;
    return;
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
  v12 = v4 + 56;
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

    v26 = 1 << *(v3 + 32);
    if (v26 >= 64)
    {
      sub_1C71FAC38(0, (v26 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v7 = -1 << v26;
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
    sub_1C7551F3C();
    MEMORY[0x1CCA5E460](v16);
    v17 = sub_1C7551FAC();
    v18 = -1 << *(v5 + 32);
    v19 = v17 & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
    {
      break;
    }

    v21 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v12 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
    *(*(v5 + 48) + 8 * v21) = v16;
    ++*(v5 + 16);
    if (!v10)
    {
      goto LABEL_7;
    }
  }

  v22 = 0;
  v23 = (63 - v18) >> 6;
  while (++v20 != v23 || (v22 & 1) == 0)
  {
    v24 = v20 == v23;
    if (v20 == v23)
    {
      v20 = 0;
    }

    v22 |= v24;
    v25 = *(v12 + 8 * v20);
    if (v25 != -1)
    {
      v21 = __clz(__rbit64(~v25)) + (v20 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
}