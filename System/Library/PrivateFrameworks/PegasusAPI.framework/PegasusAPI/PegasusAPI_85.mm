uint64_t sub_1B95B298C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD38D8(&qword_1EBAD19A0, type metadata accessor for Searchfoundation_RFSummaryItemPairCardSection, protocol conformance descriptor for Searchfoundation_RFSummaryItemPairCardSection);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B95B2A0C(uint64_t a1)
{
  v2 = sub_1B8CD38D8(&qword_1EBACE5E8, type metadata accessor for Searchfoundation_RFSummaryItemPairCardSection, protocol conformance descriptor for Searchfoundation_RFSummaryItemPairCardSection);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B95B2A7C(uint64_t a1, uint64_t a2)
{
  sub_1B8CD38D8(&qword_1EBACE5E8, type metadata accessor for Searchfoundation_RFSummaryItemPairCardSection, protocol conformance descriptor for Searchfoundation_RFSummaryItemPairCardSection);

  return sub_1B964C5D0();
}

uint64_t sub_1B95B2B14()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAD17D0);
  __swift_project_value_buffer(v0, qword_1EBAD17D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964E4A0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "is_on";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "text_1";
  *(v10 + 8) = 6;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "text_2";
  *(v12 + 1) = 6;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "text_3";
  *(v14 + 1) = 6;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "text_4";
  *(v16 + 1) = 6;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "thumbnail";
  *(v18 + 1) = 9;
  v18[16] = 2;
  v9();
  return sub_1B964C760();
}

void Searchfoundation_RFSummaryItemSwitchV2CardSection.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    v1 = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(v1)
    {
      case 1:
        OUTLINED_FUNCTION_12();
        sub_1B964C400();
        break;
      case 2:
        OUTLINED_FUNCTION_16_36();
        sub_1B95B75E8();
        break;
      case 3:
        OUTLINED_FUNCTION_16_36();
        sub_1B95B7664();
        break;
      case 4:
        OUTLINED_FUNCTION_16_36();
        sub_1B95B5C68();
        break;
      case 5:
        OUTLINED_FUNCTION_16_36();
        sub_1B95B2F0C();
        break;
      case 6:
        OUTLINED_FUNCTION_16_36();
        sub_1B95B5E20();
        break;
      default:
        continue;
    }
  }
}

void sub_1B95B2F0C()
{
  OUTLINED_FUNCTION_822();
  v0 = OUTLINED_FUNCTION_20_20();
  v1(v0);
  type metadata accessor for Searchfoundation_RFTextProperty(0);
  OUTLINED_FUNCTION_3_87();
  sub_1B8CD38D8(v2, v3, protocol conformance descriptor for Searchfoundation_RFTextProperty);
  OUTLINED_FUNCTION_4_21();
  sub_1B964C580();
  OUTLINED_FUNCTION_823();
}

void Searchfoundation_RFSummaryItemSwitchV2CardSection.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_273_0();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC708, &unk_1B96D92F0);
  OUTLINED_FUNCTION_183(v4);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_185();
  v58 = v6;
  v7 = OUTLINED_FUNCTION_201();
  v59 = type metadata accessor for Searchfoundation_RFVisualProperty(v7);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_21();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8DF8, &qword_1B96B9A80);
  v10 = OUTLINED_FUNCTION_183(v9);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_44_0();
  OUTLINED_FUNCTION_65_13();
  v12 = MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_33_16(v12, v13, v14, v15, v16, v17, v18, v19, v55);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_91_6();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_211();
  v61 = type metadata accessor for Searchfoundation_RFTextProperty(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_44_0();
  OUTLINED_FUNCTION_74_15();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_675_0();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_177_0();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_1247();
  if (*v0 != 1 || (sub_1B964C670(), !v1))
  {
    v60 = type metadata accessor for Searchfoundation_RFSummaryItemSwitchV2CardSection(0);
    sub_1B906D5EC(&v0[v60[6]], v3, &qword_1EBAB8DF8, &qword_1B96B9A80);
    v26 = OUTLINED_FUNCTION_602();
    OUTLINED_FUNCTION_178(v26, v27, v61);
    if (v28)
    {
      sub_1B8D9207C(v3, &qword_1EBAB8DF8, &qword_1B96B9A80);
    }

    else
    {
      OUTLINED_FUNCTION_0_112();
      sub_1B95B9E70();
      OUTLINED_FUNCTION_3_87();
      sub_1B8CD38D8(v29, v30, protocol conformance descriptor for Searchfoundation_RFTextProperty);
      OUTLINED_FUNCTION_683_0();
      sub_1B964C740();
      OUTLINED_FUNCTION_1_97();
      sub_1B95B9E1C();
      if (v1)
      {
        goto LABEL_25;
      }
    }

    v31 = OUTLINED_FUNCTION_115(v60[7]);
    sub_1B906D5EC(v31, v32, v33, v34);
    v35 = OUTLINED_FUNCTION_493();
    OUTLINED_FUNCTION_178(v35, v36, v61);
    if (v28)
    {
      sub_1B8D9207C(v2, &qword_1EBAB8DF8, &qword_1B96B9A80);
    }

    else
    {
      OUTLINED_FUNCTION_0_112();
      sub_1B95B9E70();
      OUTLINED_FUNCTION_3_87();
      sub_1B8CD38D8(v37, v38, protocol conformance descriptor for Searchfoundation_RFTextProperty);
      OUTLINED_FUNCTION_597_0();
      sub_1B964C740();
      OUTLINED_FUNCTION_1_97();
      sub_1B95B9E1C();
      if (v1)
      {
        goto LABEL_25;
      }
    }

    sub_1B906D5EC(&v0[v60[8]], v57, &qword_1EBAB8DF8, &qword_1B96B9A80);
    OUTLINED_FUNCTION_118(v57);
    v39 = v59;
    if (v28)
    {
      sub_1B8D9207C(v57, &qword_1EBAB8DF8, &qword_1B96B9A80);
      v40 = v56;
    }

    else
    {
      OUTLINED_FUNCTION_0_112();
      sub_1B95B9E70();
      OUTLINED_FUNCTION_3_87();
      sub_1B8CD38D8(v41, v42, protocol conformance descriptor for Searchfoundation_RFTextProperty);
      v43 = OUTLINED_FUNCTION_597_0();
      OUTLINED_FUNCTION_1065(v43, 4, v61, v44);
      OUTLINED_FUNCTION_1_97();
      sub_1B95B9E1C();
      if (v1)
      {
        goto LABEL_25;
      }

      v40 = v56;
      v39 = v59;
    }

    sub_1B906D5EC(&v0[v60[9]], v40, &qword_1EBAB8DF8, &qword_1B96B9A80);
    v45 = OUTLINED_FUNCTION_207();
    OUTLINED_FUNCTION_178(v45, v46, v61);
    if (v28)
    {
      sub_1B8D9207C(v40, &qword_1EBAB8DF8, &qword_1B96B9A80);
    }

    else
    {
      OUTLINED_FUNCTION_0_112();
      sub_1B95B9E70();
      OUTLINED_FUNCTION_3_87();
      sub_1B8CD38D8(v47, v48, protocol conformance descriptor for Searchfoundation_RFTextProperty);
      v49 = OUTLINED_FUNCTION_257_0();
      OUTLINED_FUNCTION_1065(v49, 5, v61, v50);
      OUTLINED_FUNCTION_1_97();
      sub_1B95B9E1C();
      if (v1)
      {
        goto LABEL_25;
      }
    }

    sub_1B906D5EC(&v0[v60[10]], v58, &qword_1EBACC708, &unk_1B96D92F0);
    OUTLINED_FUNCTION_90(v58);
    if (v28)
    {
      sub_1B8D9207C(v58, &qword_1EBACC708, &unk_1B96D92F0);
LABEL_24:
      sub_1B964C290();
      goto LABEL_25;
    }

    OUTLINED_FUNCTION_5_54();
    sub_1B95B9E70();
    OUTLINED_FUNCTION_10_45();
    sub_1B8CD38D8(v51, v52, protocol conformance descriptor for Searchfoundation_RFVisualProperty);
    v53 = OUTLINED_FUNCTION_272_2();
    OUTLINED_FUNCTION_1065(v53, 6, v39, v54);
    OUTLINED_FUNCTION_8_49();
    sub_1B95B9E1C();
    if (!v1)
    {
      goto LABEL_24;
    }
  }

LABEL_25:
  OUTLINED_FUNCTION_272_0();
}

void static Searchfoundation_RFSummaryItemSwitchV2CardSection.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  v7 = OUTLINED_FUNCTION_280();
  v128 = type metadata accessor for Searchfoundation_RFVisualProperty(v7);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v119 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC708, &unk_1B96D92F0);
  OUTLINED_FUNCTION_183(v11);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v119 - v13;
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACCC18, &unk_1B96D8D70);
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_116();
  v16 = type metadata accessor for Searchfoundation_RFTextProperty(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_44_0();
  OUTLINED_FUNCTION_74_15();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_89_13();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_682();
  v131 = v20;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_447_0();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8DF8, &qword_1B96B9A80);
  v23 = OUTLINED_FUNCTION_183(v22);
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_44_0();
  OUTLINED_FUNCTION_62_12();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_682();
  v130 = v25;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_682();
  v132 = v27;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_211();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E00, &qword_1B964D600);
  OUTLINED_FUNCTION_59_1();
  v30 = MEMORY[0x1EEE9AC00](v29);
  v31 = MEMORY[0x1EEE9AC00](v30);
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_91_6();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_725();
  if (*v1 != *v0)
  {
    goto LABEL_57;
  }

  v122 = v34;
  v123 = v35;
  v119 = v10;
  v120 = v14;
  v121 = v2;
  v36 = v33;
  v37 = type metadata accessor for Searchfoundation_RFSummaryItemSwitchV2CardSection(0);
  v38 = *(v37 + 24);
  v126 = v36;
  v39 = *(v36 + 48);
  v124 = v37;
  v125 = v1;
  OUTLINED_FUNCTION_229_3(&v1[v38], v6);
  OUTLINED_FUNCTION_229_3(&v0[v38], v6 + v39);
  OUTLINED_FUNCTION_118(v6);
  if (v84)
  {
    OUTLINED_FUNCTION_118(v6 + v39);
    if (v84)
    {
      sub_1B8D9207C(v6, &qword_1EBAB8DF8, &qword_1B96B9A80);
      goto LABEL_7;
    }

LABEL_31:
    v85 = &qword_1EBAB8E00;
    v86 = &qword_1B964D600;
LABEL_35:
    v88 = v6;
LABEL_56:
    sub_1B8D9207C(v88, v85, v86);
LABEL_57:
    v83 = 0;
    goto LABEL_58;
  }

  sub_1B906D5EC(v6, v5, &qword_1EBAB8DF8, &qword_1B96B9A80);
  OUTLINED_FUNCTION_118(v6 + v39);
  if (v84)
  {
    OUTLINED_FUNCTION_1_97();
    sub_1B95B9E1C();
    goto LABEL_31;
  }

  OUTLINED_FUNCTION_0_112();
  sub_1B95B9E70();
  sub_1B8D5BA08(*v5, *v4);
  if ((v87 & 1) == 0 || *(v5 + 8) != *(v4 + 8))
  {
    OUTLINED_FUNCTION_7_50();
    sub_1B95B9E1C();
    OUTLINED_FUNCTION_214_5();
    v85 = &qword_1EBAB8DF8;
    v86 = &qword_1B96B9A80;
    goto LABEL_35;
  }

  sub_1B964C2B0();
  OUTLINED_FUNCTION_2_82();
  sub_1B8CD38D8(v93, v94, MEMORY[0x1E69AAC10]);
  v95 = OUTLINED_FUNCTION_239_2();
  OUTLINED_FUNCTION_6_49();
  sub_1B95B9E1C();
  OUTLINED_FUNCTION_200();
  sub_1B95B9E1C();
  sub_1B8D9207C(v6, &qword_1EBAB8DF8, &qword_1B96B9A80);
  if ((v95 & 1) == 0)
  {
    goto LABEL_57;
  }

LABEL_7:
  v40 = *(v126 + 48);
  OUTLINED_FUNCTION_71_10();
  sub_1B906D5EC(v41, v42, v43, v44);
  OUTLINED_FUNCTION_71_10();
  sub_1B906D5EC(v45, v46, v47, v48);
  OUTLINED_FUNCTION_118(v3);
  if (v84)
  {
    OUTLINED_FUNCTION_118(v3 + v40);
    if (v84)
    {
      sub_1B8D9207C(v3, &qword_1EBAB8DF8, &qword_1B96B9A80);
      goto LABEL_12;
    }

LABEL_39:
    v85 = &qword_1EBAB8E00;
    v86 = &qword_1B964D600;
LABEL_43:
    v88 = v3;
    goto LABEL_56;
  }

  v89 = v132;
  sub_1B906D5EC(v3, v132, &qword_1EBAB8DF8, &qword_1B96B9A80);
  OUTLINED_FUNCTION_118(v3 + v40);
  if (v90)
  {
    OUTLINED_FUNCTION_1_97();
    sub_1B95B9E1C();
    goto LABEL_39;
  }

  OUTLINED_FUNCTION_0_112();
  v91 = v131;
  sub_1B95B9E70();
  sub_1B8D5BA08(*v89, *v91);
  if ((v92 & 1) == 0 || *(v89 + 8) != *(v91 + 8))
  {
    OUTLINED_FUNCTION_7_50();
    sub_1B95B9E1C();
    OUTLINED_FUNCTION_214_5();
    v85 = &qword_1EBAB8DF8;
    v86 = &qword_1B96B9A80;
    goto LABEL_43;
  }

  sub_1B964C2B0();
  OUTLINED_FUNCTION_2_82();
  sub_1B8CD38D8(v100, v101, MEMORY[0x1E69AAC10]);
  v102 = OUTLINED_FUNCTION_239_2();
  OUTLINED_FUNCTION_6_49();
  sub_1B95B9E1C();
  OUTLINED_FUNCTION_200();
  sub_1B95B9E1C();
  sub_1B8D9207C(v3, &qword_1EBAB8DF8, &qword_1B96B9A80);
  if ((v102 & 1) == 0)
  {
    goto LABEL_57;
  }

LABEL_12:
  v49 = *(v126 + 48);
  v50 = v123;
  OUTLINED_FUNCTION_71_10();
  sub_1B906D5EC(v51, v52, v53, v54);
  OUTLINED_FUNCTION_71_10();
  sub_1B906D5EC(v55, v56, v57, v58);
  OUTLINED_FUNCTION_118(v50);
  if (v84)
  {
    OUTLINED_FUNCTION_118(v50 + v49);
    if (!v84)
    {
      goto LABEL_55;
    }

    sub_1B8D9207C(v50, &qword_1EBAB8DF8, &qword_1B96B9A80);
  }

  else
  {
    sub_1B906D5EC(v50, v130, &qword_1EBAB8DF8, &qword_1B96B9A80);
    OUTLINED_FUNCTION_178(v50 + v49, 1, v16);
    if (v96)
    {
      goto LABEL_54;
    }

    OUTLINED_FUNCTION_0_112();
    sub_1B95B9E70();
    v97 = OUTLINED_FUNCTION_102_12();
    sub_1B8D5BA08(v97, v98);
    if ((v99 & 1) == 0 || (OUTLINED_FUNCTION_52_13(), !v84))
    {
      OUTLINED_FUNCTION_7_50();
      sub_1B95B9E1C();
      OUTLINED_FUNCTION_182();
      sub_1B95B9E1C();
      v85 = &qword_1EBAB8DF8;
      v86 = &qword_1B96B9A80;
      v88 = v123;
      goto LABEL_56;
    }

    OUTLINED_FUNCTION_1328();
    OUTLINED_FUNCTION_2_82();
    sub_1B8CD38D8(v107, v108, MEMORY[0x1E69AAC10]);
    v109 = OUTLINED_FUNCTION_181();
    OUTLINED_FUNCTION_6_49();
    sub_1B95B9E1C();
    OUTLINED_FUNCTION_128();
    sub_1B95B9E1C();
    sub_1B8D9207C(v123, &qword_1EBAB8DF8, &qword_1B96B9A80);
    if ((v109 & 1) == 0)
    {
      goto LABEL_57;
    }
  }

  v59 = *(v126 + 48);
  OUTLINED_FUNCTION_242_3();
  OUTLINED_FUNCTION_71_10();
  sub_1B906D5EC(v60, v61, v62, v63);
  OUTLINED_FUNCTION_71_10();
  sub_1B906D5EC(v64, v65, v66, v67);
  OUTLINED_FUNCTION_118(v50);
  if (v84)
  {
    OUTLINED_FUNCTION_118(v50 + v59);
    if (v84)
    {
      sub_1B8D9207C(v50, &qword_1EBAB8DF8, &qword_1B96B9A80);
      goto LABEL_22;
    }

LABEL_55:
    v85 = &qword_1EBAB8E00;
    v86 = &qword_1B964D600;
    v88 = v50;
    goto LABEL_56;
  }

  sub_1B906D5EC(v50, v129, &qword_1EBAB8DF8, &qword_1B96B9A80);
  OUTLINED_FUNCTION_178(v50 + v59, 1, v16);
  if (v103)
  {
LABEL_54:
    OUTLINED_FUNCTION_1_97();
    sub_1B95B9E1C();
    goto LABEL_55;
  }

  OUTLINED_FUNCTION_0_112();
  sub_1B95B9E70();
  v104 = OUTLINED_FUNCTION_102_12();
  sub_1B8D5BA08(v104, v105);
  if ((v106 & 1) == 0 || (OUTLINED_FUNCTION_52_13(), !v84))
  {
    OUTLINED_FUNCTION_7_50();
    sub_1B95B9E1C();
    OUTLINED_FUNCTION_182();
    sub_1B95B9E1C();
    v85 = &qword_1EBAB8DF8;
    v86 = &qword_1B96B9A80;
    v88 = v122;
    goto LABEL_56;
  }

  OUTLINED_FUNCTION_1328();
  OUTLINED_FUNCTION_2_82();
  sub_1B8CD38D8(v114, v115, MEMORY[0x1E69AAC10]);
  v116 = OUTLINED_FUNCTION_181();
  OUTLINED_FUNCTION_6_49();
  sub_1B95B9E1C();
  OUTLINED_FUNCTION_128();
  sub_1B95B9E1C();
  sub_1B8D9207C(v122, &qword_1EBAB8DF8, &qword_1B96B9A80);
  if ((v116 & 1) == 0)
  {
    goto LABEL_57;
  }

LABEL_22:
  v68 = *(v127 + 48);
  v69 = v121;
  OUTLINED_FUNCTION_71_10();
  sub_1B906D5EC(v70, v71, v72, v73);
  OUTLINED_FUNCTION_71_10();
  sub_1B906D5EC(v74, v75, v76, v77);
  v78 = OUTLINED_FUNCTION_207();
  v79 = v128;
  OUTLINED_FUNCTION_44(v78, v80);
  if (v84)
  {
    OUTLINED_FUNCTION_48(v69 + v68);
    if (v84)
    {
      sub_1B8D9207C(v69, &qword_1EBACC708, &unk_1B96D92F0);
      goto LABEL_27;
    }

LABEL_67:
    v85 = &qword_1EBACCC18;
    v86 = &unk_1B96D8D70;
LABEL_71:
    v88 = v69;
    goto LABEL_56;
  }

  sub_1B906D5EC(v69, v120, &qword_1EBACC708, &unk_1B96D92F0);
  OUTLINED_FUNCTION_48(v69 + v68);
  if (v110)
  {
    OUTLINED_FUNCTION_8_49();
    sub_1B95B9E1C();
    goto LABEL_67;
  }

  OUTLINED_FUNCTION_5_54();
  sub_1B95B9E70();
  v111 = OUTLINED_FUNCTION_102_12();
  sub_1B8D5D124(v111, v112);
  if ((v113 & 1) == 0 || (OUTLINED_FUNCTION_52_13(), !v84))
  {
    OUTLINED_FUNCTION_14_32();
    sub_1B95B9E1C();
    OUTLINED_FUNCTION_182();
    sub_1B95B9E1C();
    v85 = &qword_1EBACC708;
    v86 = &unk_1B96D92F0;
    goto LABEL_71;
  }

  OUTLINED_FUNCTION_1328();
  OUTLINED_FUNCTION_2_82();
  sub_1B8CD38D8(v117, v118, MEMORY[0x1E69AAC10]);
  OUTLINED_FUNCTION_181();
  OUTLINED_FUNCTION_12_40();
  sub_1B95B9E1C();
  OUTLINED_FUNCTION_128();
  sub_1B95B9E1C();
  sub_1B8D9207C(v69, &qword_1EBACC708, &unk_1B96D92F0);
  if ((v79 & 1) == 0)
  {
    goto LABEL_57;
  }

LABEL_27:
  sub_1B964C2B0();
  OUTLINED_FUNCTION_2_82();
  sub_1B8CD38D8(v81, v82, MEMORY[0x1E69AAC10]);
  OUTLINED_FUNCTION_310();
  v83 = sub_1B964C850();
LABEL_58:
  OUTLINED_FUNCTION_264(v83);
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B95B40D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD38D8(&qword_1EBAD1998, type metadata accessor for Searchfoundation_RFSummaryItemSwitchV2CardSection, protocol conformance descriptor for Searchfoundation_RFSummaryItemSwitchV2CardSection);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B95B4158(uint64_t a1)
{
  v2 = sub_1B8CD38D8(&qword_1EBACE5D0, type metadata accessor for Searchfoundation_RFSummaryItemSwitchV2CardSection, protocol conformance descriptor for Searchfoundation_RFSummaryItemSwitchV2CardSection);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B95B41C8(uint64_t a1, uint64_t a2)
{
  sub_1B8CD38D8(&qword_1EBACE5D0, type metadata accessor for Searchfoundation_RFSummaryItemSwitchV2CardSection, protocol conformance descriptor for Searchfoundation_RFSummaryItemSwitchV2CardSection);

  return sub_1B964C5D0();
}

uint64_t sub_1B95B4260()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAD17E8);
  __swift_project_value_buffer(v0, qword_1EBAD17E8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964E4A0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "text_1";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "text_2";
  *(v10 + 8) = 6;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "text_3";
  *(v12 + 1) = 6;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "text_4";
  *(v14 + 1) = 6;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "thumbnail_1";
  *(v16 + 1) = 11;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "thumbnail_2";
  *(v18 + 1) = 11;
  v18[16] = 2;
  v9();
  return sub_1B964C760();
}

void Searchfoundation_RFSummaryItemImageRightCardSection.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    v1 = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(v1)
    {
      case 1:
        OUTLINED_FUNCTION_16_36();
        sub_1B95B7664();
        break;
      case 2:
        OUTLINED_FUNCTION_9();
        sub_1B95B4670();
        break;
      case 3:
        OUTLINED_FUNCTION_41_26();
        OUTLINED_FUNCTION_9();
        sub_1B95B5D98();
        break;
      case 4:
        OUTLINED_FUNCTION_16_36();
        sub_1B95B5C68();
        break;
      case 5:
        v3 = OUTLINED_FUNCTION_9();
        sub_1B95B46DC(v3, v4, v5, v6);
        break;
      case 6:
        OUTLINED_FUNCTION_16_36();
        sub_1B95B5E20();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B95B4670()
{
  v0 = OUTLINED_FUNCTION_20_20();
  type metadata accessor for Searchfoundation_RFTextProperty(v0);
  OUTLINED_FUNCTION_3_87();
  sub_1B8CD38D8(v1, v2, protocol conformance descriptor for Searchfoundation_RFTextProperty);
  OUTLINED_FUNCTION_4_21();
  return sub_1B964C570();
}

uint64_t sub_1B95B46DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Searchfoundation_RFSummaryItemImageRightCardSection(0);
  type metadata accessor for Searchfoundation_RFVisualProperty(0);
  sub_1B8CD38D8(&qword_1ED9D2A40, type metadata accessor for Searchfoundation_RFVisualProperty, protocol conformance descriptor for Searchfoundation_RFVisualProperty);
  return sub_1B964C580();
}

void Searchfoundation_RFSummaryItemImageRightCardSection.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_273_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC708, &unk_1B96D92F0);
  v3 = OUTLINED_FUNCTION_183(v2);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_44_0();
  OUTLINED_FUNCTION_62_12();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_266_0();
  v31 = v5;
  v6 = OUTLINED_FUNCTION_201();
  v33 = type metadata accessor for Searchfoundation_RFVisualProperty(v6);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_44_0();
  OUTLINED_FUNCTION_77_10();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_266_0();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8DF8, &qword_1B96B9A80);
  v10 = OUTLINED_FUNCTION_183(v9);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_44_0();
  v34 = v11;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_211_5();
  type metadata accessor for Searchfoundation_RFTextProperty(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_44_0();
  OUTLINED_FUNCTION_59_15();
  MEMORY[0x1EEE9AC00](v14);
  v15 = OUTLINED_FUNCTION_95_8();
  v35 = type metadata accessor for Searchfoundation_RFSummaryItemImageRightCardSection(v15);
  sub_1B906D5EC(v0 + v35[7], v0, &qword_1EBAB8DF8, &qword_1B96B9A80);
  OUTLINED_FUNCTION_118(v0);
  if (v16)
  {
    sub_1B8D9207C(v0, &qword_1EBAB8DF8, &qword_1B96B9A80);
  }

  else
  {
    OUTLINED_FUNCTION_0_112();
    sub_1B95B9E70();
    OUTLINED_FUNCTION_3_87();
    sub_1B8CD38D8(v17, v18, protocol conformance descriptor for Searchfoundation_RFTextProperty);
    OUTLINED_FUNCTION_709_0();
    sub_1B964C740();
    OUTLINED_FUNCTION_1_97();
    sub_1B95B9E1C();
    if (v1)
    {
      goto LABEL_22;
    }
  }

  if (!*(*v0 + 16) || (OUTLINED_FUNCTION_3_87(), sub_1B8CD38D8(v19, v20, protocol conformance descriptor for Searchfoundation_RFTextProperty), OUTLINED_FUNCTION_231(), OUTLINED_FUNCTION_83_5(), sub_1B964C730(), !v1))
  {
    if (!*(v0[1] + 16) || (OUTLINED_FUNCTION_3_87(), sub_1B8CD38D8(v21, v22, protocol conformance descriptor for Searchfoundation_RFTextProperty), OUTLINED_FUNCTION_231(), OUTLINED_FUNCTION_83_5(), sub_1B964C730(), !v1))
    {
      sub_1B906D5EC(v0 + v35[8], v34, &qword_1EBAB8DF8, &qword_1B96B9A80);
      OUTLINED_FUNCTION_118(v34);
      if (v16)
      {
        sub_1B8D9207C(v34, &qword_1EBAB8DF8, &qword_1B96B9A80);
      }

      else
      {
        OUTLINED_FUNCTION_0_112();
        sub_1B95B9E70();
        OUTLINED_FUNCTION_3_87();
        sub_1B8CD38D8(v23, v24, protocol conformance descriptor for Searchfoundation_RFTextProperty);
        OUTLINED_FUNCTION_272_2();
        OUTLINED_FUNCTION_83_5();
        sub_1B964C740();
        OUTLINED_FUNCTION_1_97();
        sub_1B95B9E1C();
        if (v1)
        {
          goto LABEL_22;
        }
      }

      sub_1B906D5EC(v0 + v35[9], v31, &qword_1EBACC708, &unk_1B96D92F0);
      v25 = OUTLINED_FUNCTION_208_3();
      OUTLINED_FUNCTION_178(v25, v26, v33);
      if (v16)
      {
        sub_1B8D9207C(v31, &qword_1EBACC708, &unk_1B96D92F0);
      }

      else
      {
        OUTLINED_FUNCTION_5_54();
        sub_1B95B9E70();
        OUTLINED_FUNCTION_10_45();
        sub_1B8CD38D8(v27, v28, protocol conformance descriptor for Searchfoundation_RFVisualProperty);
        OUTLINED_FUNCTION_83_5();
        sub_1B964C740();
        OUTLINED_FUNCTION_8_49();
        sub_1B95B9E1C();
        if (v1)
        {
          goto LABEL_22;
        }
      }

      sub_1B906D5EC(v0 + v35[10], v32, &qword_1EBACC708, &unk_1B96D92F0);
      OUTLINED_FUNCTION_32(v32);
      if (v16)
      {
        sub_1B8D9207C(v32, &qword_1EBACC708, &unk_1B96D92F0);
LABEL_21:
        OUTLINED_FUNCTION_12();
        sub_1B964C290();
        goto LABEL_22;
      }

      OUTLINED_FUNCTION_5_54();
      sub_1B95B9E70();
      OUTLINED_FUNCTION_10_45();
      sub_1B8CD38D8(v29, v30, protocol conformance descriptor for Searchfoundation_RFVisualProperty);
      OUTLINED_FUNCTION_272_2();
      OUTLINED_FUNCTION_83_5();
      sub_1B964C740();
      OUTLINED_FUNCTION_8_49();
      sub_1B95B9E1C();
      if (!v1)
      {
        goto LABEL_21;
      }
    }
  }

LABEL_22:
  OUTLINED_FUNCTION_272_0();
}

void static Searchfoundation_RFSummaryItemImageRightCardSection.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  v4 = v3;
  v6 = v5;
  v122 = type metadata accessor for Searchfoundation_RFVisualProperty(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_44_0();
  v100 = v8;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_266_0();
  v105 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC708, &unk_1B96D92F0);
  v12 = OUTLINED_FUNCTION_183(v11);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_44_0();
  v102 = v13;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_266_0();
  OUTLINED_FUNCTION_221_3(v15);
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACCC18, &unk_1B96D8D70);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_44_0();
  v108 = v17;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_266_0();
  v116 = v19;
  v20 = OUTLINED_FUNCTION_201();
  type metadata accessor for Searchfoundation_RFTextProperty(v20);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_44_0();
  OUTLINED_FUNCTION_75_11();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_1247();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8DF8, &qword_1B96B9A80);
  v24 = OUTLINED_FUNCTION_183(v23);
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_44_0();
  OUTLINED_FUNCTION_65_13();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_447_0();
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E00, &qword_1B964D600);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_44_0();
  v131 = v28;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_87_0();
  v132 = type metadata accessor for Searchfoundation_RFSummaryItemImageRightCardSection(0);
  v30 = *(v132 + 28);
  v128 = v26;
  v31 = *(v26 + 48);
  OUTLINED_FUNCTION_217_3();
  sub_1B906D5EC(v32, v33, v34, &qword_1B96B9A80);
  sub_1B906D5EC(v4 + v30, v2 + v31, &qword_1EBAB8DF8, &qword_1B96B9A80);
  OUTLINED_FUNCTION_57(v2);
  if (v75)
  {
    OUTLINED_FUNCTION_57(v2 + v31);
    if (v75)
    {
      sub_1B8D9207C(v2, &qword_1EBAB8DF8, &qword_1B96B9A80);
      goto LABEL_6;
    }

LABEL_27:
    v76 = &qword_1EBAB8E00;
    v77 = &qword_1B964D600;
LABEL_31:
    v79 = v2;
LABEL_32:
    sub_1B8D9207C(v79, v76, v77);
LABEL_33:
    v74 = 0;
    goto LABEL_34;
  }

  sub_1B906D5EC(v2, v0, &qword_1EBAB8DF8, &qword_1B96B9A80);
  OUTLINED_FUNCTION_57(v2 + v31);
  if (v75)
  {
    OUTLINED_FUNCTION_1_97();
    sub_1B95B9E1C();
    goto LABEL_27;
  }

  OUTLINED_FUNCTION_0_112();
  sub_1B95B9E70();
  sub_1B8D5BA08(*v0, *v1);
  if ((v78 & 1) == 0 || *(v0 + 8) != *(v1 + 8))
  {
    OUTLINED_FUNCTION_7_50();
    sub_1B95B9E1C();
    OUTLINED_FUNCTION_224_4();
    v76 = &qword_1EBAB8DF8;
    v77 = &qword_1B96B9A80;
    goto LABEL_31;
  }

  v80 = OUTLINED_FUNCTION_91_7();
  OUTLINED_FUNCTION_2_82();
  sub_1B8CD38D8(v81, v82, MEMORY[0x1E69AAC10]);
  OUTLINED_FUNCTION_509();
  sub_1B964C850();
  OUTLINED_FUNCTION_9_45();
  sub_1B95B9E1C();
  OUTLINED_FUNCTION_186();
  sub_1B95B9E1C();
  sub_1B8D9207C(v2, &qword_1EBAB8DF8, &qword_1B96B9A80);
  if ((v80 & 1) == 0)
  {
    goto LABEL_33;
  }

LABEL_6:
  sub_1B8D5B224(*v6, *v4, v35, v36, v37, v38, v39, v40, v98, v100, v102, v105, v108, v111, v114, v116, v119, v122, v125, v128);
  if ((v47 & 1) == 0)
  {
    goto LABEL_33;
  }

  sub_1B8D5B224(v6[1], v4[1], v41, v42, v43, v44, v45, v46, v99, v101, v103, v106, v109, v112, v115, v117, v120, v123, v126, v129);
  if ((v48 & 1) == 0)
  {
    goto LABEL_33;
  }

  v49 = *(v132 + 32);
  v50 = *(v130 + 48);
  sub_1B906D5EC(v6 + v49, v131, &qword_1EBAB8DF8, &qword_1B96B9A80);
  sub_1B906D5EC(v4 + v49, v131 + v50, &qword_1EBAB8DF8, &qword_1B96B9A80);
  OUTLINED_FUNCTION_57(v131);
  if (v75)
  {
    OUTLINED_FUNCTION_57(v131 + v50);
    if (v75)
    {
      sub_1B8D9207C(v131, &qword_1EBAB8DF8, &qword_1B96B9A80);
      goto LABEL_13;
    }

LABEL_40:
    v76 = &qword_1EBAB8E00;
    v77 = &qword_1B964D600;
LABEL_44:
    v79 = v131;
    goto LABEL_32;
  }

  sub_1B906D5EC(v131, v127, &qword_1EBAB8DF8, &qword_1B96B9A80);
  OUTLINED_FUNCTION_57(v131 + v50);
  if (v83)
  {
    OUTLINED_FUNCTION_1_97();
    sub_1B95B9E1C();
    goto LABEL_40;
  }

  OUTLINED_FUNCTION_0_112();
  OUTLINED_FUNCTION_238_3();
  sub_1B95B9E70();
  sub_1B8D5BA08(*v127, 0x70008C8AALL);
  if ((v84 & 1) == 0 || (OUTLINED_FUNCTION_218_3(), !v75))
  {
    OUTLINED_FUNCTION_6_49();
    sub_1B95B9E1C();
    sub_1B95B9E1C();
    v76 = &qword_1EBAB8DF8;
    v77 = &qword_1B96B9A80;
    goto LABEL_44;
  }

  v87 = OUTLINED_FUNCTION_91_7();
  OUTLINED_FUNCTION_2_82();
  sub_1B8CD38D8(v88, v89, MEMORY[0x1E69AAC10]);
  OUTLINED_FUNCTION_552(v127 + v49);
  OUTLINED_FUNCTION_9_45();
  sub_1B95B9E1C();
  sub_1B95B9E1C();
  sub_1B8D9207C(v131, &qword_1EBAB8DF8, &qword_1B96B9A80);
  if ((v87 & 1) == 0)
  {
    goto LABEL_33;
  }

LABEL_13:
  v51 = *(v121 + 48);
  OUTLINED_FUNCTION_71_10();
  sub_1B906D5EC(v52, v53, v54, v55);
  v56 = v118;
  OUTLINED_FUNCTION_71_10();
  sub_1B906D5EC(v57, v58, v59, v60);
  OUTLINED_FUNCTION_44(v118, 1);
  if (v75)
  {
    OUTLINED_FUNCTION_48(v118 + v51);
    if (!v75)
    {
      goto LABEL_56;
    }

    sub_1B8D9207C(v118, &qword_1EBACC708, &unk_1B96D92F0);
  }

  else
  {
    sub_1B906D5EC(v118, v113, &qword_1EBACC708, &unk_1B96D92F0);
    OUTLINED_FUNCTION_48(v118 + v51);
    if (v85)
    {
      goto LABEL_55;
    }

    OUTLINED_FUNCTION_5_54();
    sub_1B95B9E70();
    sub_1B8D5D124(*v113, *v107);
    if ((v86 & 1) == 0 || *(v113 + 8) != *(v107 + 8))
    {
      goto LABEL_59;
    }

    OUTLINED_FUNCTION_1328();
    OUTLINED_FUNCTION_2_82();
    sub_1B8CD38D8(v94, v95, MEMORY[0x1E69AAC10]);
    sub_1B964C850();
    OUTLINED_FUNCTION_12_40();
    sub_1B95B9E1C();
    sub_1B95B9E1C();
    sub_1B8D9207C(v118, &qword_1EBACC708, &unk_1B96D92F0);
    if ((v124 & 1) == 0)
    {
      goto LABEL_33;
    }
  }

  v61 = *(v121 + 48);
  OUTLINED_FUNCTION_71_10();
  sub_1B906D5EC(v62, v63, v64, v65);
  v56 = v110;
  OUTLINED_FUNCTION_71_10();
  sub_1B906D5EC(v66, v67, v68, v69);
  v70 = OUTLINED_FUNCTION_207();
  OUTLINED_FUNCTION_44(v70, v71);
  if (v75)
  {
    OUTLINED_FUNCTION_48(v110 + v61);
    if (v75)
    {
      sub_1B8D9207C(v110, &qword_1EBACC708, &unk_1B96D92F0);
      goto LABEL_23;
    }

LABEL_56:
    v76 = &qword_1EBACCC18;
    v77 = &unk_1B96D8D70;
LABEL_60:
    v79 = v56;
    goto LABEL_32;
  }

  sub_1B906D5EC(v110, v104, &qword_1EBACC708, &unk_1B96D92F0);
  OUTLINED_FUNCTION_48(v110 + v61);
  if (v90)
  {
LABEL_55:
    OUTLINED_FUNCTION_8_49();
    sub_1B95B9E1C();
    goto LABEL_56;
  }

  OUTLINED_FUNCTION_5_54();
  sub_1B95B9E70();
  v91 = OUTLINED_FUNCTION_107_7();
  sub_1B8D5D124(v91, v92);
  if ((v93 & 1) == 0 || (OUTLINED_FUNCTION_58_15(), !v75))
  {
LABEL_59:
    OUTLINED_FUNCTION_14_32();
    sub_1B95B9E1C();
    sub_1B95B9E1C();
    v76 = &qword_1EBACC708;
    v77 = &unk_1B96D92F0;
    goto LABEL_60;
  }

  OUTLINED_FUNCTION_1328();
  OUTLINED_FUNCTION_2_82();
  sub_1B8CD38D8(v96, v97, MEMORY[0x1E69AAC10]);
  OUTLINED_FUNCTION_645_0();
  OUTLINED_FUNCTION_12_40();
  sub_1B95B9E1C();
  OUTLINED_FUNCTION_207_7();
  sub_1B8D9207C(v110, &qword_1EBACC708, &unk_1B96D92F0);
  if ((v124 & 1) == 0)
  {
    goto LABEL_33;
  }

LABEL_23:
  OUTLINED_FUNCTION_215_4();
  OUTLINED_FUNCTION_2_82();
  sub_1B8CD38D8(v72, v73, MEMORY[0x1E69AAC10]);
  OUTLINED_FUNCTION_310();
  v74 = sub_1B964C850();
LABEL_34:
  OUTLINED_FUNCTION_264(v74);
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B95B5650(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD38D8(&qword_1EBAD1990, type metadata accessor for Searchfoundation_RFSummaryItemImageRightCardSection, protocol conformance descriptor for Searchfoundation_RFSummaryItemImageRightCardSection);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B95B56D0(uint64_t a1)
{
  v2 = sub_1B8CD38D8(&qword_1EBACE5B0, type metadata accessor for Searchfoundation_RFSummaryItemImageRightCardSection, protocol conformance descriptor for Searchfoundation_RFSummaryItemImageRightCardSection);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B95B5740(uint64_t a1, uint64_t a2)
{
  sub_1B8CD38D8(&qword_1EBACE5B0, type metadata accessor for Searchfoundation_RFSummaryItemImageRightCardSection, protocol conformance descriptor for Searchfoundation_RFSummaryItemImageRightCardSection);

  return sub_1B964C5D0();
}

uint64_t sub_1B95B57D8()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAD1800);
  __swift_project_value_buffer(v0, qword_1EBAD1800);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1B9650810;
  v4 = v20 + v3 + v1[14];
  *(v20 + v3) = 1;
  *v4 = "text_1";
  *(v4 + 8) = 6;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADE8];
  v6 = sub_1B964C750();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v20 + v3 + v2 + v1[14];
  *(v20 + v3 + v2) = 2;
  *v8 = "text_2";
  *(v8 + 8) = 6;
  *(v8 + 16) = 2;
  v7();
  v9 = (v20 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "attribution";
  *(v10 + 1) = 11;
  v10[16] = 2;
  v7();
  v11 = (v20 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "attribution_ignores_expansion";
  *(v12 + 1) = 29;
  v12[16] = 2;
  v7();
  v13 = (v20 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "expanding_component_content";
  *(v14 + 1) = 27;
  v14[16] = 2;
  v7();
  v15 = (v20 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "thumbnail";
  *(v16 + 1) = 9;
  v16[16] = 2;
  v7();
  v17 = (v20 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 7;
  *v18 = "attribution_caveat";
  *(v18 + 1) = 18;
  v18[16] = 2;
  v7();
  return sub_1B964C760();
}

void Searchfoundation_RFSummaryItemExpandableCardSection.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    v1 = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(v1)
    {
      case 1:
        OUTLINED_FUNCTION_16_36();
        sub_1B95B7664();
        break;
      case 2:
        OUTLINED_FUNCTION_16_36();
        sub_1B95B5C68();
        break;
      case 3:
        v3 = OUTLINED_FUNCTION_9();
        sub_1B95B5CE4(v3, v4, v5, v6);
        break;
      case 4:
        OUTLINED_FUNCTION_12();
        sub_1B964C400();
        break;
      case 5:
        OUTLINED_FUNCTION_9();
        sub_1B95B5D98();
        break;
      case 6:
        OUTLINED_FUNCTION_16_36();
        sub_1B95B5E20();
        break;
      case 7:
        OUTLINED_FUNCTION_16_36();
        sub_1B95B5E9C();
        break;
      default:
        continue;
    }
  }
}

void sub_1B95B5C68()
{
  OUTLINED_FUNCTION_822();
  v0 = OUTLINED_FUNCTION_20_20();
  v1(v0);
  type metadata accessor for Searchfoundation_RFTextProperty(0);
  OUTLINED_FUNCTION_3_87();
  sub_1B8CD38D8(v2, v3, protocol conformance descriptor for Searchfoundation_RFTextProperty);
  OUTLINED_FUNCTION_4_21();
  sub_1B964C580();
  OUTLINED_FUNCTION_823();
}

uint64_t sub_1B95B5CE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Searchfoundation_RFSummaryItemExpandableCardSection(0);
  type metadata accessor for Searchfoundation_RFSummaryItemAttribution(0);
  sub_1B8CD38D8(&qword_1EBAD18B0, type metadata accessor for Searchfoundation_RFSummaryItemAttribution, protocol conformance descriptor for Searchfoundation_RFSummaryItemAttribution);
  return sub_1B964C580();
}

void sub_1B95B5D98()
{
  OUTLINED_FUNCTION_273_0();
  v1 = v0;
  v2(0);
  v3 = OUTLINED_FUNCTION_128();
  sub_1B8CD38D8(v3, v4, v1);
  sub_1B964C570();
  OUTLINED_FUNCTION_272_0();
}

void sub_1B95B5E20()
{
  OUTLINED_FUNCTION_822();
  v0 = OUTLINED_FUNCTION_20_20();
  v1(v0);
  type metadata accessor for Searchfoundation_RFVisualProperty(0);
  OUTLINED_FUNCTION_10_45();
  sub_1B8CD38D8(v2, v3, protocol conformance descriptor for Searchfoundation_RFVisualProperty);
  OUTLINED_FUNCTION_4_21();
  sub_1B964C580();
  OUTLINED_FUNCTION_823();
}

void sub_1B95B5E9C()
{
  OUTLINED_FUNCTION_822();
  v0 = OUTLINED_FUNCTION_20_20();
  v1(v0);
  type metadata accessor for Searchfoundation_RFTextProperty(0);
  OUTLINED_FUNCTION_3_87();
  sub_1B8CD38D8(v2, v3, protocol conformance descriptor for Searchfoundation_RFTextProperty);
  OUTLINED_FUNCTION_4_21();
  sub_1B964C580();
  OUTLINED_FUNCTION_823();
}

void Searchfoundation_RFSummaryItemExpandableCardSection.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_273_0();
  v4 = v0;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC708, &unk_1B96D92F0);
  OUTLINED_FUNCTION_183(v5);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_185();
  v50 = v7;
  v8 = OUTLINED_FUNCTION_201();
  v51 = type metadata accessor for Searchfoundation_RFVisualProperty(v8);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_221_3(v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAD1850, &qword_1B96DE9F0);
  OUTLINED_FUNCTION_183(v11);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_185();
  v52 = v13;
  v14 = OUTLINED_FUNCTION_201();
  v53 = type metadata accessor for Searchfoundation_RFSummaryItemAttribution(v14);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_21();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8DF8, &qword_1B96B9A80);
  v17 = OUTLINED_FUNCTION_183(v16);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_44_0();
  OUTLINED_FUNCTION_75_11();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_563();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_219_0();
  v20 = type metadata accessor for Searchfoundation_RFTextProperty(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_44_0();
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_129_9();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_1247();
  v54 = type metadata accessor for Searchfoundation_RFSummaryItemExpandableCardSection(0);
  sub_1B906D5EC(v4 + v54[7], v3, &qword_1EBAB8DF8, &qword_1B96B9A80);
  OUTLINED_FUNCTION_37_0(v3);
  if (v24)
  {
    sub_1B8D9207C(v3, &qword_1EBAB8DF8, &qword_1B96B9A80);
    v27 = v1;
  }

  else
  {
    OUTLINED_FUNCTION_0_112();
    sub_1B95B9E70();
    OUTLINED_FUNCTION_3_87();
    sub_1B8CD38D8(v25, v26, protocol conformance descriptor for Searchfoundation_RFTextProperty);
    OUTLINED_FUNCTION_683_0();
    sub_1B964C740();
    v27 = v1;
    OUTLINED_FUNCTION_1_97();
    sub_1B95B9E1C();
    if (v1)
    {
      goto LABEL_26;
    }
  }

  OUTLINED_FUNCTION_235_4();
  sub_1B906D5EC(v4 + v28, v2, &qword_1EBAB8DF8, &qword_1B96B9A80);
  OUTLINED_FUNCTION_37_0(v2);
  if (v24)
  {
    sub_1B8D9207C(v2, &qword_1EBAB8DF8, &qword_1B96B9A80);
    v29 = v53;
  }

  else
  {
    OUTLINED_FUNCTION_0_112();
    OUTLINED_FUNCTION_690();
    sub_1B95B9E70();
    OUTLINED_FUNCTION_3_87();
    sub_1B8CD38D8(v30, v31, protocol conformance descriptor for Searchfoundation_RFTextProperty);
    v32 = OUTLINED_FUNCTION_106_9();
    OUTLINED_FUNCTION_163_9(v32, 2, v20, v33);
    v27 = v1;
    OUTLINED_FUNCTION_1_97();
    sub_1B95B9E1C();
    v29 = v53;
    if (v1)
    {
      goto LABEL_26;
    }
  }

  OUTLINED_FUNCTION_234_6();
  sub_1B906D5EC(v4 + v34, v52, &qword_1EBAD1850, &qword_1B96DE9F0);
  OUTLINED_FUNCTION_118(v52);
  if (v24)
  {
    sub_1B8D9207C(v52, &qword_1EBAD1850, &qword_1B96DE9F0);
  }

  else
  {
    OUTLINED_FUNCTION_17_30();
    OUTLINED_FUNCTION_233_2();
    sub_1B95B9E70();
    sub_1B8CD38D8(&qword_1EBAD18B0, type metadata accessor for Searchfoundation_RFSummaryItemAttribution, protocol conformance descriptor for Searchfoundation_RFSummaryItemAttribution);
    v35 = OUTLINED_FUNCTION_106_9();
    OUTLINED_FUNCTION_163_9(v35, 3, v29, v36);
    v27 = v1;
    OUTLINED_FUNCTION_71_12();
    sub_1B95B9E1C();
    if (v1)
    {
      goto LABEL_26;
    }
  }

  if (*v4 != 1 || (v1 = v27, sub_1B964C670(), !v27))
  {
    if (!*(*(v4 + 8) + 16) || (type metadata accessor for Searchfoundation_RFSummaryItemExpandableContent(0), sub_1B8CD38D8(&qword_1EBAD18A8, type metadata accessor for Searchfoundation_RFSummaryItemExpandableContent, protocol conformance descriptor for Searchfoundation_RFSummaryItemExpandableContent), OUTLINED_FUNCTION_231(), v1 = v27, sub_1B964C730(), !v27))
    {
      sub_1B906D5EC(v4 + v54[10], v50, &qword_1EBACC708, &unk_1B96D92F0);
      v37 = OUTLINED_FUNCTION_207();
      OUTLINED_FUNCTION_178(v37, v38, v51);
      if (v24)
      {
        sub_1B8D9207C(v50, &qword_1EBACC708, &unk_1B96D92F0);
      }

      else
      {
        OUTLINED_FUNCTION_5_54();
        sub_1B95B9E70();
        OUTLINED_FUNCTION_10_45();
        sub_1B8CD38D8(v39, v40, protocol conformance descriptor for Searchfoundation_RFVisualProperty);
        v41 = OUTLINED_FUNCTION_257_0();
        OUTLINED_FUNCTION_163_9(v41, 6, v51, v42);
        OUTLINED_FUNCTION_8_49();
        sub_1B95B9E1C();
        if (v1)
        {
          goto LABEL_26;
        }
      }

      sub_1B906D5EC(v4 + v54[11], v49, &qword_1EBAB8DF8, &qword_1B96B9A80);
      v43 = OUTLINED_FUNCTION_208_3();
      OUTLINED_FUNCTION_178(v43, v44, v20);
      if (v24)
      {
        sub_1B8D9207C(v49, &qword_1EBAB8DF8, &qword_1B96B9A80);
LABEL_25:
        sub_1B964C290();
        goto LABEL_26;
      }

      OUTLINED_FUNCTION_0_112();
      sub_1B95B9E70();
      OUTLINED_FUNCTION_3_87();
      sub_1B8CD38D8(v45, v46, protocol conformance descriptor for Searchfoundation_RFTextProperty);
      v47 = OUTLINED_FUNCTION_257_0();
      OUTLINED_FUNCTION_163_9(v47, 7, v20, v48);
      OUTLINED_FUNCTION_1_97();
      sub_1B95B9E1C();
      if (!v1)
      {
        goto LABEL_25;
      }
    }
  }

LABEL_26:
  OUTLINED_FUNCTION_272_0();
}

void static Searchfoundation_RFSummaryItemExpandableCardSection.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  v5 = v4;
  v7 = v6;
  v143 = type metadata accessor for Searchfoundation_RFVisualProperty(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_21();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC708, &unk_1B96D92F0);
  OUTLINED_FUNCTION_183(v9);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_185();
  v141 = v11;
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACCC18, &unk_1B96D8D70);
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_185();
  v13 = OUTLINED_FUNCTION_201();
  type metadata accessor for Searchfoundation_RFSummaryItemAttribution(v13);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_21();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAD1850, &qword_1B96DE9F0);
  OUTLINED_FUNCTION_183(v15);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_185();
  OUTLINED_FUNCTION_221_3(v17);
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAD18B8, &qword_1B96DEA10);
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_185();
  v19 = OUTLINED_FUNCTION_201();
  v20 = type metadata accessor for Searchfoundation_RFTextProperty(v19);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_44_0();
  v137 = v22;
  OUTLINED_FUNCTION_230();
  v24 = MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_41_25(v24, v25, v26, v27, v28, v29, v30, v31, v137);
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_211();
  v33 = OUTLINED_FUNCTION_288();
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(v33, v34);
  v36 = OUTLINED_FUNCTION_183(v35);
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_44_0();
  v139 = v37;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_451_1();
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_1247();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E00, &qword_1B964D600);
  OUTLINED_FUNCTION_135_0();
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_44_0();
  v140 = v41;
  OUTLINED_FUNCTION_230();
  v43 = MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_33_16(v43, v44, v45, v46, v47, v48, v49, v50, v138);
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_87_0();
  v148 = v0;
  v149 = type metadata accessor for Searchfoundation_RFSummaryItemExpandableCardSection(0);
  v52 = *(v149 + 28);
  v53 = *(v0 + 48);
  OUTLINED_FUNCTION_217_3();
  sub_1B906D5EC(v54, v55, v56, &qword_1B96B9A80);
  v57 = &v5[v52];
  v58 = v5;
  sub_1B906D5EC(v57, v3 + v53, &qword_1EBAB8DF8, &qword_1B96B9A80);
  OUTLINED_FUNCTION_57(v3);
  if (v81)
  {
    OUTLINED_FUNCTION_57(v3 + v53);
    if (v81)
    {
      sub_1B8D9207C(v3, &qword_1EBAB8DF8, &qword_1B96B9A80);
      goto LABEL_6;
    }
  }

  else
  {
    sub_1B906D5EC(v3, v2, &qword_1EBAB8DF8, &qword_1B96B9A80);
    OUTLINED_FUNCTION_57(v3 + v53);
    if (!v81)
    {
      OUTLINED_FUNCTION_0_112();
      sub_1B95B9E70();
      sub_1B8D5BA08(*v2, *v1);
      if ((v84 & 1) == 0 || *(v2 + 8) != *(v1 + 8))
      {
        OUTLINED_FUNCTION_7_50();
        sub_1B95B9E1C();
        sub_1B95B9E1C();
        v82 = &qword_1EBAB8DF8;
        v83 = &qword_1B96B9A80;
        goto LABEL_23;
      }

      OUTLINED_FUNCTION_91_7();
      OUTLINED_FUNCTION_2_82();
      sub_1B8CD38D8(v89, v90, MEMORY[0x1E69AAC10]);
      v91 = sub_1B964C850();
      OUTLINED_FUNCTION_6_49();
      sub_1B95B9E1C();
      sub_1B95B9E1C();
      sub_1B8D9207C(v3, &qword_1EBAB8DF8, &qword_1B96B9A80);
      if ((v91 & 1) == 0)
      {
        goto LABEL_33;
      }

LABEL_6:
      v59 = *(v149 + 32);
      v60 = *(v148 + 48);
      OUTLINED_FUNCTION_71_10();
      sub_1B906D5EC(v61, v62, v63, v64);
      OUTLINED_FUNCTION_71_10();
      sub_1B906D5EC(v65, v66, v67, v68);
      OUTLINED_FUNCTION_57(v147);
      if (v81)
      {
        OUTLINED_FUNCTION_57(v147 + v60);
        if (v81)
        {
          sub_1B8D9207C(v147, &qword_1EBAB8DF8, &qword_1B96B9A80);
          goto LABEL_11;
        }
      }

      else
      {
        sub_1B906D5EC(v147, v146, &qword_1EBAB8DF8, &qword_1B96B9A80);
        OUTLINED_FUNCTION_57(v147 + v60);
        if (!v86)
        {
          OUTLINED_FUNCTION_0_112();
          OUTLINED_FUNCTION_238_3();
          sub_1B95B9E70();
          sub_1B8D5BA08(*v146, *v59);
          if ((v87 & 1) == 0 || (OUTLINED_FUNCTION_218_3(), !v81))
          {
            OUTLINED_FUNCTION_7_50();
            sub_1B95B9E1C();
            OUTLINED_FUNCTION_288();
            sub_1B95B9E1C();
            v82 = &qword_1EBAB8DF8;
            v83 = &qword_1B96B9A80;
            goto LABEL_31;
          }

          v60 = v146;
          OUTLINED_FUNCTION_91_7();
          OUTLINED_FUNCTION_2_82();
          sub_1B8CD38D8(v121, v122, MEMORY[0x1E69AAC10]);
          v123 = OUTLINED_FUNCTION_552(&qword_1EBAB8DF8 + v146);
          OUTLINED_FUNCTION_6_49();
          sub_1B95B9E1C();
          OUTLINED_FUNCTION_200();
          sub_1B95B9E1C();
          sub_1B8D9207C(v147, &qword_1EBAB8DF8, &qword_1B96B9A80);
          if ((v123 & 1) == 0)
          {
            goto LABEL_33;
          }

LABEL_11:
          v69 = v20;
          v70 = *(v145 + 48);
          OUTLINED_FUNCTION_233_2();
          OUTLINED_FUNCTION_71_10();
          sub_1B906D5EC(v71, v72, v73, v74);
          OUTLINED_FUNCTION_71_10();
          sub_1B906D5EC(v75, v76, v77, v78);
          v79 = OUTLINED_FUNCTION_602();
          OUTLINED_FUNCTION_44(v79, v80);
          if (v81)
          {
            OUTLINED_FUNCTION_48(v60 + v70);
            if (v81)
            {
              sub_1B8D9207C(v60, &qword_1EBAD1850, &qword_1B96DE9F0);
              goto LABEL_42;
            }
          }

          else
          {
            sub_1B906D5EC(v60, v144, &qword_1EBAD1850, &qword_1B96DE9F0);
            OUTLINED_FUNCTION_48(v60 + v70);
            if (!v92)
            {
              OUTLINED_FUNCTION_17_30();
              sub_1B95B9E70();
              OUTLINED_FUNCTION_461();
              static Searchfoundation_RFSummaryItemAttribution.== infix(_:_:)();
              v94 = v93;
              sub_1B95B9E1C();
              OUTLINED_FUNCTION_128();
              sub_1B95B9E1C();
              sub_1B8D9207C(v60, &qword_1EBAD1850, &qword_1B96DE9F0);
              if ((v94 & 1) == 0)
              {
                goto LABEL_33;
              }

LABEL_42:
              if (*v7 != *v58)
              {
                goto LABEL_33;
              }

              sub_1B8D616CC(*(v7 + 1), *(v58 + 1));
              if ((v95 & 1) == 0)
              {
                goto LABEL_33;
              }

              v96 = *(v142 + 48);
              OUTLINED_FUNCTION_242_3();
              OUTLINED_FUNCTION_71_10();
              sub_1B906D5EC(v97, v98, v99, v100);
              v101 = v60;
              OUTLINED_FUNCTION_71_10();
              sub_1B906D5EC(v102, v103, v104, v105);
              v106 = OUTLINED_FUNCTION_602();
              OUTLINED_FUNCTION_44(v106, v107);
              if (v81)
              {
                OUTLINED_FUNCTION_48(v60 + v96);
                if (v81)
                {
                  sub_1B8D9207C(v60, &qword_1EBACC708, &unk_1B96D92F0);
                  goto LABEL_49;
                }
              }

              else
              {
                sub_1B906D5EC(v60, v141, &qword_1EBACC708, &unk_1B96D92F0);
                OUTLINED_FUNCTION_48(v60 + v96);
                if (!v124)
                {
                  OUTLINED_FUNCTION_5_54();
                  sub_1B95B9E70();
                  v125 = OUTLINED_FUNCTION_199_7();
                  sub_1B8D5D124(v125, v126);
                  if ((v127 & 1) == 0 || (OUTLINED_FUNCTION_123_9(), !v81))
                  {
                    OUTLINED_FUNCTION_14_32();
                    sub_1B95B9E1C();
                    OUTLINED_FUNCTION_214_5();
                    v82 = &qword_1EBACC708;
                    v83 = &unk_1B96D92F0;
                    goto LABEL_71;
                  }

                  OUTLINED_FUNCTION_1328();
                  OUTLINED_FUNCTION_2_82();
                  sub_1B8CD38D8(v132, v133, MEMORY[0x1E69AAC10]);
                  OUTLINED_FUNCTION_845_0();
                  OUTLINED_FUNCTION_12_40();
                  sub_1B95B9E1C();
                  OUTLINED_FUNCTION_200();
                  sub_1B95B9E1C();
                  sub_1B8D9207C(v60, &qword_1EBACC708, &unk_1B96D92F0);
                  if ((v143 & 1) == 0)
                  {
                    goto LABEL_33;
                  }

LABEL_49:
                  v108 = *(v148 + 48);
                  OUTLINED_FUNCTION_71_10();
                  sub_1B906D5EC(v109, v110, v111, v112);
                  v101 = v140;
                  OUTLINED_FUNCTION_71_10();
                  sub_1B906D5EC(v113, v114, v115, v116);
                  v117 = OUTLINED_FUNCTION_602();
                  OUTLINED_FUNCTION_178(v117, v118, v69);
                  if (v81)
                  {
                    OUTLINED_FUNCTION_48(v140 + v108);
                    if (v81)
                    {
                      sub_1B8D9207C(v140, &qword_1EBAB8DF8, &qword_1B96B9A80);
                      goto LABEL_54;
                    }
                  }

                  else
                  {
                    sub_1B906D5EC(v140, v139, &qword_1EBAB8DF8, &qword_1B96B9A80);
                    OUTLINED_FUNCTION_48(v140 + v108);
                    if (!v128)
                    {
                      OUTLINED_FUNCTION_0_112();
                      sub_1B95B9E70();
                      v129 = OUTLINED_FUNCTION_199_7();
                      sub_1B8D5BA08(v129, v130);
                      if ((v131 & 1) == 0 || (OUTLINED_FUNCTION_123_9(), !v81))
                      {
                        OUTLINED_FUNCTION_7_50();
                        sub_1B95B9E1C();
                        OUTLINED_FUNCTION_214_5();
                        v82 = &qword_1EBAB8DF8;
                        v83 = &qword_1B96B9A80;
                        goto LABEL_71;
                      }

                      OUTLINED_FUNCTION_252_2();
                      OUTLINED_FUNCTION_2_82();
                      sub_1B8CD38D8(v134, v135, MEMORY[0x1E69AAC10]);
                      v136 = OUTLINED_FUNCTION_845_0();
                      OUTLINED_FUNCTION_6_49();
                      sub_1B95B9E1C();
                      OUTLINED_FUNCTION_200();
                      sub_1B95B9E1C();
                      sub_1B8D9207C(v140, &qword_1EBAB8DF8, &qword_1B96B9A80);
                      if ((v136 & 1) == 0)
                      {
                        goto LABEL_33;
                      }

LABEL_54:
                      OUTLINED_FUNCTION_215_4();
                      OUTLINED_FUNCTION_2_82();
                      sub_1B8CD38D8(v119, v120, MEMORY[0x1E69AAC10]);
                      OUTLINED_FUNCTION_509();
                      v88 = sub_1B964C850();
                      goto LABEL_34;
                    }

                    OUTLINED_FUNCTION_1_97();
                    sub_1B95B9E1C();
                  }

                  v82 = &qword_1EBAB8E00;
                  v83 = &qword_1B964D600;
                  goto LABEL_71;
                }

                OUTLINED_FUNCTION_8_49();
                sub_1B95B9E1C();
              }

              v82 = &qword_1EBACCC18;
              v83 = &unk_1B96D8D70;
LABEL_71:
              v85 = v101;
              goto LABEL_32;
            }

            OUTLINED_FUNCTION_71_12();
            sub_1B95B9E1C();
          }

          v82 = &qword_1EBAD18B8;
          v83 = &qword_1B96DEA10;
          v85 = v60;
          goto LABEL_32;
        }

        OUTLINED_FUNCTION_1_97();
        sub_1B95B9E1C();
      }

      v82 = &qword_1EBAB8E00;
      v83 = &qword_1B964D600;
LABEL_31:
      v85 = v147;
      goto LABEL_32;
    }

    OUTLINED_FUNCTION_1_97();
    sub_1B95B9E1C();
  }

  v82 = &qword_1EBAB8E00;
  v83 = &qword_1B964D600;
LABEL_23:
  v85 = v3;
LABEL_32:
  sub_1B8D9207C(v85, v82, v83);
LABEL_33:
  v88 = 0;
LABEL_34:
  OUTLINED_FUNCTION_264(v88);
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B95B7104(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD38D8(&qword_1EBAD1988, type metadata accessor for Searchfoundation_RFSummaryItemExpandableCardSection, protocol conformance descriptor for Searchfoundation_RFSummaryItemExpandableCardSection);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B95B7184(uint64_t a1)
{
  v2 = sub_1B8CD38D8(&qword_1EBACE560, type metadata accessor for Searchfoundation_RFSummaryItemExpandableCardSection, protocol conformance descriptor for Searchfoundation_RFSummaryItemExpandableCardSection);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B95B71F4(uint64_t a1, uint64_t a2)
{
  sub_1B8CD38D8(&qword_1EBACE560, type metadata accessor for Searchfoundation_RFSummaryItemExpandableCardSection, protocol conformance descriptor for Searchfoundation_RFSummaryItemExpandableCardSection);

  return sub_1B964C5D0();
}

uint64_t sub_1B95B728C()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAD1818);
  __swift_project_value_buffer(v0, qword_1EBAD1818);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "text";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "text_compact";
  *(v10 + 1) = 12;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "text_minimal";
  *(v12 + 1) = 12;
  v12[16] = 2;
  v9();
  return sub_1B964C760();
}

void Searchfoundation_RFSummaryItemAttribution.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    v1 = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(v1)
    {
      case 3:
        OUTLINED_FUNCTION_16_36();
        sub_1B95B7664();
        break;
      case 2:
        OUTLINED_FUNCTION_16_36();
        sub_1B95B75E8();
        break;
      case 1:
        OUTLINED_FUNCTION_16_36();
        sub_1B95B756C();
        break;
    }
  }
}

void sub_1B95B756C()
{
  OUTLINED_FUNCTION_822();
  v0 = OUTLINED_FUNCTION_20_20();
  v1(v0);
  type metadata accessor for Searchfoundation_RFTextProperty(0);
  OUTLINED_FUNCTION_3_87();
  sub_1B8CD38D8(v2, v3, protocol conformance descriptor for Searchfoundation_RFTextProperty);
  OUTLINED_FUNCTION_4_21();
  sub_1B964C580();
  OUTLINED_FUNCTION_823();
}

void sub_1B95B75E8()
{
  OUTLINED_FUNCTION_822();
  v0 = OUTLINED_FUNCTION_20_20();
  v1(v0);
  type metadata accessor for Searchfoundation_RFTextProperty(0);
  OUTLINED_FUNCTION_3_87();
  sub_1B8CD38D8(v2, v3, protocol conformance descriptor for Searchfoundation_RFTextProperty);
  OUTLINED_FUNCTION_4_21();
  sub_1B964C580();
  OUTLINED_FUNCTION_823();
}

void sub_1B95B7664()
{
  OUTLINED_FUNCTION_822();
  v0 = OUTLINED_FUNCTION_20_20();
  v1(v0);
  type metadata accessor for Searchfoundation_RFTextProperty(0);
  OUTLINED_FUNCTION_3_87();
  sub_1B8CD38D8(v2, v3, protocol conformance descriptor for Searchfoundation_RFTextProperty);
  OUTLINED_FUNCTION_4_21();
  sub_1B964C580();
  OUTLINED_FUNCTION_823();
}

void Searchfoundation_RFSummaryItemAttribution.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_273_0();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8DF8, &qword_1B96B9A80);
  v5 = OUTLINED_FUNCTION_183(v4);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_44_0();
  v26 = v6;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_563();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_219_0();
  type metadata accessor for Searchfoundation_RFTextProperty(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_44_0();
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_129_9();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_725();
  v12 = type metadata accessor for Searchfoundation_RFSummaryItemAttribution(0);
  sub_1B906D5EC(v0 + v12[5], v3, &qword_1EBAB8DF8, &qword_1B96B9A80);
  OUTLINED_FUNCTION_32(v3);
  if (v13)
  {
    sub_1B8D9207C(v3, &qword_1EBAB8DF8, &qword_1B96B9A80);
  }

  else
  {
    OUTLINED_FUNCTION_0_112();
    sub_1B95B9E70();
    OUTLINED_FUNCTION_3_87();
    sub_1B8CD38D8(v14, v15, protocol conformance descriptor for Searchfoundation_RFTextProperty);
    OUTLINED_FUNCTION_272_2();
    sub_1B964C740();
    OUTLINED_FUNCTION_1_97();
    sub_1B95B9E1C();
    if (v1)
    {
      goto LABEL_14;
    }
  }

  sub_1B906D5EC(v0 + v12[6], v2, &qword_1EBAB8DF8, &qword_1B96B9A80);
  OUTLINED_FUNCTION_32(v2);
  if (v13)
  {
    sub_1B8D9207C(v2, &qword_1EBAB8DF8, &qword_1B96B9A80);
  }

  else
  {
    OUTLINED_FUNCTION_0_112();
    OUTLINED_FUNCTION_690();
    sub_1B95B9E70();
    OUTLINED_FUNCTION_3_87();
    sub_1B8CD38D8(v16, v17, protocol conformance descriptor for Searchfoundation_RFTextProperty);
    v18 = OUTLINED_FUNCTION_106_9();
    OUTLINED_FUNCTION_246_5(v18, 2, v19, v20);
    OUTLINED_FUNCTION_1_97();
    sub_1B95B9E1C();
    if (v1)
    {
      goto LABEL_14;
    }
  }

  sub_1B906D5EC(v0 + v12[7], v26, &qword_1EBAB8DF8, &qword_1B96B9A80);
  OUTLINED_FUNCTION_32(v26);
  if (v13)
  {
    sub_1B8D9207C(v26, &qword_1EBAB8DF8, &qword_1B96B9A80);
LABEL_13:
    sub_1B964C290();
    goto LABEL_14;
  }

  OUTLINED_FUNCTION_0_112();
  sub_1B95B9E70();
  OUTLINED_FUNCTION_3_87();
  sub_1B8CD38D8(v21, v22, protocol conformance descriptor for Searchfoundation_RFTextProperty);
  v23 = OUTLINED_FUNCTION_257_0();
  OUTLINED_FUNCTION_246_5(v23, 3, v24, v25);
  OUTLINED_FUNCTION_1_97();
  sub_1B95B9E1C();
  if (!v1)
  {
    goto LABEL_13;
  }

LABEL_14:
  OUTLINED_FUNCTION_272_0();
}

void static Searchfoundation_RFSummaryItemAttribution.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  v4 = v3;
  v6 = v5;
  type metadata accessor for Searchfoundation_RFTextProperty(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_44_0();
  OUTLINED_FUNCTION_75_11();
  v9 = MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_35_17(v9, v10, v11, v12, v13, v14, v15, v16, v74);
  MEMORY[0x1EEE9AC00](v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8DF8, &qword_1B96B9A80);
  v19 = OUTLINED_FUNCTION_183(v18);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_44_0();
  OUTLINED_FUNCTION_77_10();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_451_1();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_447_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E00, &qword_1B964D600);
  OUTLINED_FUNCTION_135_0();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_44_0();
  OUTLINED_FUNCTION_59_15();
  v24 = MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_33_16(v24, v25, v26, v27, v28, v29, v30, v31, v75);
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_211();
  v82 = type metadata accessor for Searchfoundation_RFSummaryItemAttribution(0);
  v33 = *(v82 + 20);
  v81 = v0;
  v34 = *(v0 + 48);
  sub_1B906D5EC(v6 + v33, v2, &qword_1EBAB8DF8, &qword_1B96B9A80);
  sub_1B906D5EC(v4 + v33, v2 + v34, &qword_1EBAB8DF8, &qword_1B96B9A80);
  OUTLINED_FUNCTION_99_0(v2);
  if (v52)
  {
    OUTLINED_FUNCTION_99_0(v2 + v34);
    if (v52)
    {
      sub_1B8D9207C(v2, &qword_1EBAB8DF8, &qword_1B96B9A80);
      goto LABEL_6;
    }

LABEL_20:
    v53 = &qword_1EBAB8E00;
    v54 = &qword_1B964D600;
LABEL_24:
    v58 = v2;
LABEL_43:
    sub_1B8D9207C(v58, v53, v54);
LABEL_44:
    v51 = 0;
    goto LABEL_45;
  }

  sub_1B906D5EC(v2, v1, &qword_1EBAB8DF8, &qword_1B96B9A80);
  OUTLINED_FUNCTION_99_0(v2 + v34);
  if (v52)
  {
    OUTLINED_FUNCTION_1_97();
    sub_1B95B9E1C();
    goto LABEL_20;
  }

  OUTLINED_FUNCTION_0_112();
  sub_1B95B9E70();
  v55 = OUTLINED_FUNCTION_107_7();
  sub_1B8D5BA08(v55, v56);
  if ((v57 & 1) == 0 || (OUTLINED_FUNCTION_58_15(), !v52))
  {
    OUTLINED_FUNCTION_7_50();
    sub_1B95B9E1C();
    OUTLINED_FUNCTION_224_4();
    v53 = &qword_1EBAB8DF8;
    v54 = &qword_1B96B9A80;
    goto LABEL_24;
  }

  v61 = OUTLINED_FUNCTION_252_2();
  OUTLINED_FUNCTION_2_82();
  sub_1B8CD38D8(v62, v63, MEMORY[0x1E69AAC10]);
  OUTLINED_FUNCTION_645_0();
  OUTLINED_FUNCTION_9_45();
  sub_1B95B9E1C();
  sub_1B95B9E1C();
  sub_1B8D9207C(v2, &qword_1EBAB8DF8, &qword_1B96B9A80);
  if ((v61 & 1) == 0)
  {
    goto LABEL_44;
  }

LABEL_6:
  v35 = *(v82 + 24);
  v36 = *(v81 + 48);
  OUTLINED_FUNCTION_217_3();
  sub_1B906D5EC(v37, v38, v39, &qword_1B96B9A80);
  OUTLINED_FUNCTION_229_3(v4 + v35, v80 + v36);
  OUTLINED_FUNCTION_99_0(v80);
  if (v52)
  {
    OUTLINED_FUNCTION_99_0(v80 + v36);
    if (v52)
    {
      sub_1B8D9207C(v80, &qword_1EBAB8DF8, &qword_1B96B9A80);
      goto LABEL_11;
    }

LABEL_28:
    v53 = &qword_1EBAB8E00;
    v54 = &qword_1B964D600;
LABEL_32:
    v58 = v80;
    goto LABEL_43;
  }

  sub_1B906D5EC(v80, v79, &qword_1EBAB8DF8, &qword_1B96B9A80);
  OUTLINED_FUNCTION_99_0(v80 + v36);
  if (v59)
  {
    OUTLINED_FUNCTION_1_97();
    sub_1B95B9E1C();
    goto LABEL_28;
  }

  OUTLINED_FUNCTION_0_112();
  sub_1B95B9E70();
  sub_1B8D5BA08(*v79, *v77);
  if ((v60 & 1) == 0 || (OUTLINED_FUNCTION_218_3(), !v52))
  {
    OUTLINED_FUNCTION_7_50();
    sub_1B95B9E1C();
    OUTLINED_FUNCTION_294();
    sub_1B95B9E1C();
    v53 = &qword_1EBAB8DF8;
    v54 = &qword_1B96B9A80;
    goto LABEL_32;
  }

  v68 = OUTLINED_FUNCTION_252_2();
  OUTLINED_FUNCTION_2_82();
  sub_1B8CD38D8(v69, v70, MEMORY[0x1E69AAC10]);
  OUTLINED_FUNCTION_552(v79 + v35);
  OUTLINED_FUNCTION_9_45();
  sub_1B95B9E1C();
  sub_1B95B9E1C();
  sub_1B8D9207C(v80, &qword_1EBAB8DF8, &qword_1B96B9A80);
  if ((v68 & 1) == 0)
  {
    goto LABEL_44;
  }

LABEL_11:
  v40 = *(v81 + 48);
  OUTLINED_FUNCTION_71_10();
  sub_1B906D5EC(v41, v42, v43, v44);
  OUTLINED_FUNCTION_71_10();
  sub_1B906D5EC(v45, v46, v47, v48);
  OUTLINED_FUNCTION_99_0(v78);
  if (v52)
  {
    OUTLINED_FUNCTION_99_0(v78 + v40);
    if (v52)
    {
      sub_1B8D9207C(v78, &qword_1EBAB8DF8, &qword_1B96B9A80);
      goto LABEL_16;
    }

LABEL_38:
    v53 = &qword_1EBAB8E00;
    v54 = &qword_1B964D600;
LABEL_42:
    v58 = v78;
    goto LABEL_43;
  }

  sub_1B906D5EC(v78, v76, &qword_1EBAB8DF8, &qword_1B96B9A80);
  OUTLINED_FUNCTION_99_0(v78 + v40);
  if (v64)
  {
    OUTLINED_FUNCTION_1_97();
    sub_1B95B9E1C();
    goto LABEL_38;
  }

  OUTLINED_FUNCTION_0_112();
  sub_1B95B9E70();
  v65 = OUTLINED_FUNCTION_102_12();
  sub_1B8D5BA08(v65, v66);
  if ((v67 & 1) == 0 || (OUTLINED_FUNCTION_52_13(), !v52))
  {
    OUTLINED_FUNCTION_7_50();
    sub_1B95B9E1C();
    OUTLINED_FUNCTION_182();
    sub_1B95B9E1C();
    v53 = &qword_1EBAB8DF8;
    v54 = &qword_1B96B9A80;
    goto LABEL_42;
  }

  OUTLINED_FUNCTION_252_2();
  OUTLINED_FUNCTION_2_82();
  sub_1B8CD38D8(v71, v72, MEMORY[0x1E69AAC10]);
  v73 = OUTLINED_FUNCTION_181();
  OUTLINED_FUNCTION_6_49();
  sub_1B95B9E1C();
  OUTLINED_FUNCTION_128();
  sub_1B95B9E1C();
  sub_1B8D9207C(v78, &qword_1EBAB8DF8, &qword_1B96B9A80);
  if ((v73 & 1) == 0)
  {
    goto LABEL_44;
  }

LABEL_16:
  sub_1B964C2B0();
  OUTLINED_FUNCTION_2_82();
  sub_1B8CD38D8(v49, v50, MEMORY[0x1E69AAC10]);
  OUTLINED_FUNCTION_597_0();
  v51 = sub_1B964C850();
LABEL_45:
  OUTLINED_FUNCTION_264(v51);
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B95B8140(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD38D8(&qword_1EBAD1980, type metadata accessor for Searchfoundation_RFSummaryItemAttribution, protocol conformance descriptor for Searchfoundation_RFSummaryItemAttribution);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B95B81C0(uint64_t a1)
{
  v2 = sub_1B8CD38D8(&qword_1EBAD18B0, type metadata accessor for Searchfoundation_RFSummaryItemAttribution, protocol conformance descriptor for Searchfoundation_RFSummaryItemAttribution);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B95B8230(uint64_t a1, uint64_t a2)
{
  sub_1B8CD38D8(&qword_1EBAD18B0, type metadata accessor for Searchfoundation_RFSummaryItemAttribution, protocol conformance descriptor for Searchfoundation_RFSummaryItemAttribution);

  return sub_1B964C5D0();
}

uint64_t sub_1B95B82C8()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAD1830);
  __swift_project_value_buffer(v0, qword_1EBAD1830);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D060;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "simple_item_rich_card_section";
  *(v6 + 8) = 29;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "command_reference";
  *(v10 + 1) = 17;
  v10[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B95B84B4()
{
  type metadata accessor for Searchfoundation_RFSummaryItemExpandableContent._StorageClass(0);
  v0 = swift_allocObject();
  v1 = OBJC_IVAR____TtCV10PegasusAPI47Searchfoundation_RFSummaryItemExpandableContentP33_B8878121477FEF1E0BCBBD6E26E37CEF13_StorageClass__value;
  v2 = type metadata accessor for Searchfoundation_RFSummaryItemExpandableContent.OneOf_Value(0);
  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
  v3 = OBJC_IVAR____TtCV10PegasusAPI47Searchfoundation_RFSummaryItemExpandableContentP33_B8878121477FEF1E0BCBBD6E26E37CEF13_StorageClass__commandReference;
  v4 = type metadata accessor for Searchfoundation_CommandReference(0);
  result = __swift_storeEnumTagSinglePayload(v0 + v3, 1, 1, v4);
  qword_1EBAD1848 = v0;
  return result;
}

uint64_t sub_1B95B8538(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8D80, &unk_1B964D580);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v16 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAD1858, &unk_1B96DE9F8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v16 - v7;
  v9 = OBJC_IVAR____TtCV10PegasusAPI47Searchfoundation_RFSummaryItemExpandableContentP33_B8878121477FEF1E0BCBBD6E26E37CEF13_StorageClass__value;
  v10 = type metadata accessor for Searchfoundation_RFSummaryItemExpandableContent.OneOf_Value(0);
  __swift_storeEnumTagSinglePayload(v1 + v9, 1, 1, v10);
  v11 = OBJC_IVAR____TtCV10PegasusAPI47Searchfoundation_RFSummaryItemExpandableContentP33_B8878121477FEF1E0BCBBD6E26E37CEF13_StorageClass__commandReference;
  v12 = type metadata accessor for Searchfoundation_CommandReference(0);
  __swift_storeEnumTagSinglePayload(v1 + v11, 1, 1, v12);
  v13 = OBJC_IVAR____TtCV10PegasusAPI47Searchfoundation_RFSummaryItemExpandableContentP33_B8878121477FEF1E0BCBBD6E26E37CEF13_StorageClass__value;
  swift_beginAccess();
  sub_1B906D5EC(a1 + v13, v8, &qword_1EBAD1858, &unk_1B96DE9F8);
  swift_beginAccess();
  sub_1B906CF4C(v8, v1 + v9, &qword_1EBAD1858, &unk_1B96DE9F8);
  swift_endAccess();
  v14 = OBJC_IVAR____TtCV10PegasusAPI47Searchfoundation_RFSummaryItemExpandableContentP33_B8878121477FEF1E0BCBBD6E26E37CEF13_StorageClass__commandReference;
  swift_beginAccess();
  sub_1B906D5EC(a1 + v14, v5, &qword_1EBAB8D80, &unk_1B964D580);

  swift_beginAccess();
  sub_1B906CF4C(v5, v1 + v11, &qword_1EBAB8D80, &unk_1B964D580);
  swift_endAccess();
  return v1;
}

uint64_t sub_1B95B873C()
{
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI47Searchfoundation_RFSummaryItemExpandableContentP33_B8878121477FEF1E0BCBBD6E26E37CEF13_StorageClass__value, &qword_1EBAD1858, &unk_1B96DE9F8);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI47Searchfoundation_RFSummaryItemExpandableContentP33_B8878121477FEF1E0BCBBD6E26E37CEF13_StorageClass__commandReference, &qword_1EBAB8D80, &unk_1B964D580);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

void sub_1B95B8828()
{
  OUTLINED_FUNCTION_273_0();
  v2 = v1;
  v18 = v3;
  v5 = v4;
  v6 = v0;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = *(v13(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *(v0 + v14);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v5(0);
    OUTLINED_FUNCTION_57_0();
    swift_allocObject();
    v17 = OUTLINED_FUNCTION_40_0();
    v16 = v18(v17);
    *(v6 + v14) = v16;
  }

  v2(v16, v12, v10, v8);
  OUTLINED_FUNCTION_272_0();
}

uint64_t sub_1B95B88DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  while (1)
  {
    result = sub_1B964C3C0();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      sub_1B95B8E88(a2, a1, a3, a4);
    }

    else if (result == 1)
    {
      sub_1B95B8968(a1, a2, a3, a4);
    }
  }

  return result;
}

uint64_t sub_1B95B8968(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = a3;
  v38 = a4;
  v39 = a2;
  v5 = type metadata accessor for Searchfoundation_RFSimpleItemRichCardSection(0);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v34 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAD1858, &unk_1B96DE9F8);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v32 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v29 - v11;
  v13 = type metadata accessor for Searchfoundation_RFSummaryItemExpandableContent.OneOf_Value(0);
  v14 = MEMORY[0x1EEE9AC00](v13);
  MEMORY[0x1EEE9AC00](v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC430, &unk_1B96DFD00);
  v16 = MEMORY[0x1EEE9AC00](v15 - 8);
  v35 = &v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v29 - v18;
  __swift_storeEnumTagSinglePayload(&v29 - v18, 1, 1, v5);
  v20 = OBJC_IVAR____TtCV10PegasusAPI47Searchfoundation_RFSummaryItemExpandableContentP33_B8878121477FEF1E0BCBBD6E26E37CEF13_StorageClass__value;
  swift_beginAccess();
  v33 = a1;
  v30 = v20;
  sub_1B906D5EC(a1 + v20, v12, &qword_1EBAD1858, &unk_1B96DE9F8);
  v31 = v13;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v12, &qword_1EBAD1858, &unk_1B96DE9F8);
  }

  else
  {
    sub_1B95B9E70();
    sub_1B95B9E70();
    sub_1B8D9207C(v19, &qword_1EBACC430, &unk_1B96DFD00);
    sub_1B95B9E70();
    sub_1B95B9E70();
    __swift_storeEnumTagSinglePayload(v19, 0, 1, v5);
  }

  sub_1B8CD38D8(&qword_1ED9C9CA0, type metadata accessor for Searchfoundation_RFSimpleItemRichCardSection, protocol conformance descriptor for Searchfoundation_RFSimpleItemRichCardSection);
  v22 = v36;
  sub_1B964C580();
  if (v22)
  {
    v23 = v19;
    return sub_1B8D9207C(v23, &qword_1EBACC430, &unk_1B96DFD00);
  }

  v24 = v35;
  sub_1B906D5EC(v19, v35, &qword_1EBACC430, &unk_1B96DFD00);
  if (__swift_getEnumTagSinglePayload(v24, 1, v5) == 1)
  {
    sub_1B8D9207C(v19, &qword_1EBACC430, &unk_1B96DFD00);
    v23 = v24;
    return sub_1B8D9207C(v23, &qword_1EBACC430, &unk_1B96DFD00);
  }

  sub_1B95B9E70();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  sub_1B8D9207C(v19, &qword_1EBACC430, &unk_1B96DFD00);
  v26 = v32;
  sub_1B95B9E70();
  __swift_storeEnumTagSinglePayload(v26, 0, 1, v31);
  v27 = v33;
  v28 = v30;
  swift_beginAccess();
  sub_1B906CF4C(v26, v27 + v28, &qword_1EBAD1858, &unk_1B96DE9F8);
  return swift_endAccess();
}

uint64_t sub_1B95B8E88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_CommandReference(0);
  sub_1B8CD38D8(&qword_1EBACDFE8, type metadata accessor for Searchfoundation_CommandReference, protocol conformance descriptor for Searchfoundation_CommandReference);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B95B8F94(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void), uint64_t (*a5)(void))
{
  a4(0);
  OUTLINED_FUNCTION_12();
  result = a5();
  if (!v5)
  {
    OUTLINED_FUNCTION_186();
    return sub_1B964C290();
  }

  return result;
}

uint64_t sub_1B95B900C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22 = a4;
  v20 = a2;
  v21 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8D80, &unk_1B964D580);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v18 - v7;
  v19 = type metadata accessor for Searchfoundation_CommandReference(0);
  MEMORY[0x1EEE9AC00](v19);
  v18 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAD1858, &unk_1B96DE9F8);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v18 - v11;
  v13 = type metadata accessor for Searchfoundation_RFSimpleItemRichCardSection(0);
  MEMORY[0x1EEE9AC00](v13);
  v14 = OBJC_IVAR____TtCV10PegasusAPI47Searchfoundation_RFSummaryItemExpandableContentP33_B8878121477FEF1E0BCBBD6E26E37CEF13_StorageClass__value;
  swift_beginAccess();
  sub_1B906D5EC(a1 + v14, v12, &qword_1EBAD1858, &unk_1B96DE9F8);
  v15 = type metadata accessor for Searchfoundation_RFSummaryItemExpandableContent.OneOf_Value(0);
  if (__swift_getEnumTagSinglePayload(v12, 1, v15) == 1)
  {
    sub_1B8D9207C(v12, &qword_1EBAD1858, &unk_1B96DE9F8);
  }

  else
  {
    sub_1B95B9E70();
    sub_1B8CD38D8(&qword_1ED9C9CA0, type metadata accessor for Searchfoundation_RFSimpleItemRichCardSection, protocol conformance descriptor for Searchfoundation_RFSimpleItemRichCardSection);
    sub_1B964C740();
    result = sub_1B95B9E1C();
    if (v4)
    {
      return result;
    }
  }

  v17 = OBJC_IVAR____TtCV10PegasusAPI47Searchfoundation_RFSummaryItemExpandableContentP33_B8878121477FEF1E0BCBBD6E26E37CEF13_StorageClass__commandReference;
  swift_beginAccess();
  sub_1B906D5EC(a1 + v17, v8, &qword_1EBAB8D80, &unk_1B964D580);
  if (__swift_getEnumTagSinglePayload(v8, 1, v19) == 1)
  {
    return sub_1B8D9207C(v8, &qword_1EBAB8D80, &unk_1B964D580);
  }

  sub_1B95B9E70();
  sub_1B8CD38D8(&qword_1EBACDFE8, type metadata accessor for Searchfoundation_CommandReference, protocol conformance descriptor for Searchfoundation_CommandReference);
  sub_1B964C740();
  return sub_1B95B9E1C();
}

uint64_t sub_1B95B93E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v7 = OUTLINED_FUNCTION_280();
  v9 = v8(v7);
  if (*(v5 + *(v9 + 20)) != *(v4 + *(v9 + 20)))
  {

    v10 = OUTLINED_FUNCTION_177_1();
    v11 = a4(v10);

    if ((v11 & 1) == 0)
    {
      return 0;
    }
  }

  sub_1B964C2B0();
  OUTLINED_FUNCTION_2_82();
  sub_1B8CD38D8(v12, v13, MEMORY[0x1E69AAC10]);
  OUTLINED_FUNCTION_288();
  return sub_1B964C850() & 1;
}

void sub_1B95B94BC()
{
  OUTLINED_FUNCTION_284();
  v70 = v2;
  v4 = v3;
  v67 = type metadata accessor for Searchfoundation_CommandReference(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_21();
  v63 = v6;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8D88, &qword_1B96CA730);
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_185();
  v69 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8D80, &unk_1B964D580);
  v10 = OUTLINED_FUNCTION_183(v9);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_44_0();
  v64 = v11;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_266_0();
  v68 = v13;
  v14 = OUTLINED_FUNCTION_201();
  v15 = type metadata accessor for Searchfoundation_RFSummaryItemExpandableContent.OneOf_Value(v14);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_21();
  v65 = v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAD19D0, &qword_1B96DFCF8) - 8;
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v62 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAD1858, &unk_1B96DE9F8);
  v23 = OUTLINED_FUNCTION_183(v22);
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_563();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_211_5();
  v25 = OBJC_IVAR____TtCV10PegasusAPI47Searchfoundation_RFSummaryItemExpandableContentP33_B8878121477FEF1E0BCBBD6E26E37CEF13_StorageClass__value;
  OUTLINED_FUNCTION_521(v4 + OBJC_IVAR____TtCV10PegasusAPI47Searchfoundation_RFSummaryItemExpandableContentP33_B8878121477FEF1E0BCBBD6E26E37CEF13_StorageClass__value, &v74);
  v26 = v4 + v25;
  v27 = v70;
  sub_1B906D5EC(v26, v0, &qword_1EBAD1858, &unk_1B96DE9F8);
  v28 = OBJC_IVAR____TtCV10PegasusAPI47Searchfoundation_RFSummaryItemExpandableContentP33_B8878121477FEF1E0BCBBD6E26E37CEF13_StorageClass__value;
  OUTLINED_FUNCTION_521(v27 + OBJC_IVAR____TtCV10PegasusAPI47Searchfoundation_RFSummaryItemExpandableContentP33_B8878121477FEF1E0BCBBD6E26E37CEF13_StorageClass__value, &v73);
  v29 = *(v18 + 56);
  v30 = OUTLINED_FUNCTION_542();
  sub_1B906D5EC(v30, v31, &qword_1EBAD1858, &unk_1B96DE9F8);
  sub_1B906D5EC(v27 + v28, &v21[v29], &qword_1EBAD1858, &unk_1B96DE9F8);
  OUTLINED_FUNCTION_178(v21, 1, v15);
  if (!v32)
  {
    sub_1B906D5EC(v21, v1, &qword_1EBAD1858, &unk_1B96DE9F8);
    OUTLINED_FUNCTION_178(&v21[v29], 1, v15);
    if (!v32)
    {
      sub_1B95B9E70();

      v33 = OUTLINED_FUNCTION_246();
      v35 = static Searchfoundation_RFSummaryItemExpandableContent.OneOf_Value.== infix(_:_:)(v33, v34);
      sub_1B95B9E1C();
      sub_1B8D9207C(v0, &qword_1EBAD1858, &unk_1B96DE9F8);
      OUTLINED_FUNCTION_690();
      sub_1B95B9E1C();
      sub_1B8D9207C(v21, &qword_1EBAD1858, &unk_1B96DE9F8);
      if (v35)
      {
        goto LABEL_12;
      }

LABEL_10:

      goto LABEL_22;
    }

    sub_1B8D9207C(v0, &qword_1EBAD1858, &unk_1B96DE9F8);
    sub_1B95B9E1C();
LABEL_9:
    sub_1B8D9207C(v21, &qword_1EBAD19D0, &qword_1B96DFCF8);
    goto LABEL_10;
  }

  sub_1B8D9207C(v0, &qword_1EBAD1858, &unk_1B96DE9F8);
  OUTLINED_FUNCTION_178(&v21[v29], 1, v15);
  if (!v32)
  {
    goto LABEL_9;
  }

  sub_1B8D9207C(v21, &qword_1EBAD1858, &unk_1B96DE9F8);
LABEL_12:
  OUTLINED_FUNCTION_521(v4 + OBJC_IVAR____TtCV10PegasusAPI47Searchfoundation_RFSummaryItemExpandableContentP33_B8878121477FEF1E0BCBBD6E26E37CEF13_StorageClass__commandReference, &v72);
  v36 = v68;
  OUTLINED_FUNCTION_71_10();
  sub_1B906D5EC(v37, v38, v39, v40);
  OUTLINED_FUNCTION_521(v27 + OBJC_IVAR____TtCV10PegasusAPI47Searchfoundation_RFSummaryItemExpandableContentP33_B8878121477FEF1E0BCBBD6E26E37CEF13_StorageClass__commandReference, &v71);
  v41 = *(v66 + 48);
  v42 = v69;
  OUTLINED_FUNCTION_71_10();
  sub_1B906D5EC(v43, v44, v45, v46);
  OUTLINED_FUNCTION_71_10();
  sub_1B906D5EC(v47, v48, v49, v50);
  v51 = OUTLINED_FUNCTION_602();
  OUTLINED_FUNCTION_44(v51, v52);
  if (!v32)
  {
    v53 = v64;
    sub_1B906D5EC(v42, v64, &qword_1EBAB8D80, &unk_1B964D580);
    OUTLINED_FUNCTION_48(v42 + v41);
    if (!v54)
    {
      OUTLINED_FUNCTION_42_18();
      v58 = v63;
      sub_1B95B9E70();
      v59 = *v53 == *v58 && v53[1] == v58[1];
      if (v59 || (sub_1B964C9F0() & 1) != 0)
      {
        sub_1B964C2B0();
        OUTLINED_FUNCTION_2_82();
        sub_1B8CD38D8(v60, v61, MEMORY[0x1E69AAC10]);
        OUTLINED_FUNCTION_310();
        sub_1B964C850();

        sub_1B95B9E1C();
        sub_1B8D9207C(v36, &qword_1EBAB8D80, &unk_1B964D580);
        sub_1B95B9E1C();
        sub_1B8D9207C(v42, &qword_1EBAB8D80, &unk_1B964D580);
        goto LABEL_22;
      }

      sub_1B95B9E1C();
      sub_1B8D9207C(v36, &qword_1EBAB8D80, &unk_1B964D580);
      sub_1B95B9E1C();
      v57 = OUTLINED_FUNCTION_200();
      v56 = &unk_1B964D580;
      goto LABEL_21;
    }

    sub_1B8D9207C(v36, &qword_1EBAB8D80, &unk_1B964D580);
    sub_1B95B9E1C();
LABEL_20:
    v55 = &qword_1EBAB8D88;
    v56 = &qword_1B96CA730;
    v57 = v42;
LABEL_21:
    sub_1B8D9207C(v57, v55, v56);
    goto LABEL_22;
  }

  sub_1B8D9207C(v36, &qword_1EBAB8D80, &unk_1B964D580);
  OUTLINED_FUNCTION_48(v42 + v41);
  if (!v32)
  {
    goto LABEL_20;
  }

  sub_1B8D9207C(v42, &qword_1EBAB8D80, &unk_1B964D580);
LABEL_22:
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B95B9BDC()
{
  OUTLINED_FUNCTION_111_0();
  v2 = v1;
  sub_1B964CA70();
  v2(0);
  v3 = OUTLINED_FUNCTION_461();
  sub_1B8CD38D8(v3, v4, v0);
  sub_1B964C7E0();
  return sub_1B964CA90();
}

uint64_t sub_1B95B9CAC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD38D8(&qword_1EBAD1978, type metadata accessor for Searchfoundation_RFSummaryItemExpandableContent, protocol conformance descriptor for Searchfoundation_RFSummaryItemExpandableContent);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B95B9D2C(uint64_t a1)
{
  v2 = sub_1B8CD38D8(&qword_1EBAD18A8, type metadata accessor for Searchfoundation_RFSummaryItemExpandableContent, protocol conformance descriptor for Searchfoundation_RFSummaryItemExpandableContent);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B95B9D9C(uint64_t a1, uint64_t a2)
{
  sub_1B8CD38D8(&qword_1EBAD18A8, type metadata accessor for Searchfoundation_RFSummaryItemExpandableContent, protocol conformance descriptor for Searchfoundation_RFSummaryItemExpandableContent);

  return sub_1B964C5D0();
}

uint64_t sub_1B95B9E1C()
{
  v1 = OUTLINED_FUNCTION_313();
  v2(v1);
  OUTLINED_FUNCTION_59_1();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t sub_1B95B9E70()
{
  v1 = OUTLINED_FUNCTION_280();
  v2(v1);
  OUTLINED_FUNCTION_59_1();
  v3 = OUTLINED_FUNCTION_432();
  v4(v3);
  return v0;
}

uint64_t sub_1B95B9EC4()
{
  v1 = OUTLINED_FUNCTION_280();
  v2(v1);
  OUTLINED_FUNCTION_59_1();
  v3 = OUTLINED_FUNCTION_432();
  v4(v3);
  return v0;
}

void sub_1B95BAC20(uint64_t a1)
{
  sub_1B95BAD74(319, &qword_1ED9D39F0, type metadata accessor for Searchfoundation_RFTextProperty, MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v2 <= 0x3F)
    {
      sub_1B95BAD74(319, &qword_1ED9F1E00, type metadata accessor for Searchfoundation_RFTextProperty, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        sub_1B95BAD74(319, &qword_1ED9F1BC0, type metadata accessor for Searchfoundation_RFVisualProperty, MEMORY[0x1E69E6720]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1B95BAD74(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1B95BAE00(uint64_t a1)
{
  sub_1B95BAD74(319, &qword_1ED9D39F0, type metadata accessor for Searchfoundation_RFTextProperty, MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v2 <= 0x3F)
    {
      sub_1B95BAD74(319, &qword_1ED9F1E00, type metadata accessor for Searchfoundation_RFTextProperty, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1B95BAF28(uint64_t a1)
{
  sub_1B95BAD74(319, &qword_1ED9D39F0, type metadata accessor for Searchfoundation_RFTextProperty, MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v2 <= 0x3F)
    {
      sub_1B95BAD74(319, &qword_1ED9F1E00, type metadata accessor for Searchfoundation_RFTextProperty, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        sub_1B95BAD74(319, &qword_1ED9F1BC0, type metadata accessor for Searchfoundation_RFVisualProperty, MEMORY[0x1E69E6720]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1B95BB0A0(uint64_t a1)
{
  sub_1B95BAD74(319, &qword_1ED9D39F0, type metadata accessor for Searchfoundation_RFTextProperty, MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v2 <= 0x3F)
    {
      sub_1B95BAD74(319, &qword_1ED9F1E00, type metadata accessor for Searchfoundation_RFTextProperty, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        sub_1B95BAD74(319, &qword_1ED9F1BC0, type metadata accessor for Searchfoundation_RFVisualProperty, MEMORY[0x1E69E6720]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1B95BB210(uint64_t a1)
{
  sub_1B964C2B0();
  if (v1 <= 0x3F)
  {
    sub_1B95BAD74(319, &qword_1ED9F1E00, type metadata accessor for Searchfoundation_RFTextProperty, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      sub_1B95BAD74(319, &qword_1ED9F1BC0, type metadata accessor for Searchfoundation_RFVisualProperty, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1B95BB380(uint64_t a1)
{
  sub_1B964C2B0();
  if (v1 <= 0x3F)
  {
    sub_1B95BAD74(319, &qword_1ED9F1E00, type metadata accessor for Searchfoundation_RFTextProperty, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      sub_1B95BAD74(319, &qword_1ED9F1BC0, type metadata accessor for Searchfoundation_RFVisualProperty, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1B95BB4B8(uint64_t a1)
{
  sub_1B95BAD74(319, &qword_1ED9D39F0, type metadata accessor for Searchfoundation_RFTextProperty, MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v2 <= 0x3F)
    {
      sub_1B95BAD74(319, &qword_1ED9F1E00, type metadata accessor for Searchfoundation_RFTextProperty, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        sub_1B95BAD74(319, &qword_1ED9F1BC0, type metadata accessor for Searchfoundation_RFVisualProperty, MEMORY[0x1E69E6720]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_1B95BB624(uint64_t a1)
{
  sub_1B95BAD74(319, &qword_1ED9CF5A0, type metadata accessor for Searchfoundation_RFSummaryItemExpandableContent, MEMORY[0x1E69E62F8]);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    v2 = sub_1B964C2B0();
    if (v4 <= 0x3F)
    {
      sub_1B95BAD74(319, &qword_1ED9F1E00, type metadata accessor for Searchfoundation_RFTextProperty, MEMORY[0x1E69E6720]);
      v2 = v5;
      if (v6 <= 0x3F)
      {
        sub_1B95BAD74(319, qword_1ED9D1538, type metadata accessor for Searchfoundation_RFSummaryItemAttribution, MEMORY[0x1E69E6720]);
        if (v8 > 0x3F)
        {
          return v7;
        }

        sub_1B95BAD74(319, &qword_1ED9F1BC0, type metadata accessor for Searchfoundation_RFVisualProperty, MEMORY[0x1E69E6720]);
        if (v9 > 0x3F)
        {
          return v7;
        }

        else
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return v2;
}

void sub_1B95BB804(uint64_t a1)
{
  sub_1B964C2B0();
  if (v1 <= 0x3F)
  {
    sub_1B95BAD74(319, &qword_1ED9F1E00, type metadata accessor for Searchfoundation_RFTextProperty, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1B95BB900(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = sub_1B964C2B0();
  if (v6 <= 0x3F)
  {
    result = a4(319);
    if (v7 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1B95BB98C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Searchfoundation_RFSimpleItemRichCardSection(0);

  return MEMORY[0x1EEE6BEB8](a1, a2, v4, sub_1B8D49D94);
}

uint64_t sub_1B95BB9E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Searchfoundation_RFSimpleItemRichCardSection(0);

  return MEMORY[0x1EEE6C118](a1, a2, a3, v6, sub_1B8D49E84);
}

uint64_t sub_1B95BBA4C(uint64_t a1)
{
  v2 = type metadata accessor for Searchfoundation_RFSimpleItemRichCardSection(319);
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    *(*(a1 - 8) + 84) = *(*(v2 - 8) + 84);
    return 0;
  }

  return v2;
}

void sub_1B95BBAFC(uint64_t a1)
{
  sub_1B95BAD74(319, &qword_1ED9F1E00, type metadata accessor for Searchfoundation_RFTextProperty, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    sub_1B95BAD74(319, &qword_1ED9F1BC0, type metadata accessor for Searchfoundation_RFVisualProperty, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1B95BBC3C(uint64_t a1)
{
  sub_1B95BAD74(319, &qword_1ED9D04D0, type metadata accessor for Searchfoundation_RFSummaryItemExpandableContent.OneOf_Value, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    sub_1B95BAD74(319, qword_1ED9ED650, type metadata accessor for Searchfoundation_CommandReference, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t OUTLINED_FUNCTION_23_26(uint64_t a1)
{
  __swift_storeEnumTagSinglePayload(a1, 1, 1, v3);
  __swift_storeEnumTagSinglePayload(v1 + *(v2 + 32), 1, 1, v3);
  return v1 + *(v2 + 36);
}

uint64_t OUTLINED_FUNCTION_39_17@<X0>(uint64_t a1@<X8>)
{
  *(v3 + 40) = a1;

  return sub_1B906D5EC(v1 + a1, v2, v4, v5);
}

uint64_t OUTLINED_FUNCTION_99_14()
{
  type metadata accessor for Searchfoundation_RFSummaryItemPairCardSection._StorageClass(0);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_106_10@<X0>(uint64_t a1@<X8>)
{

  return sub_1B906D5EC(v1 + a1, v2, v3, v4);
}

uint64_t OUTLINED_FUNCTION_141_13(uint64_t a1)
{

  return sub_1B906D5EC(a1, v1, v2, v3);
}

uint64_t OUTLINED_FUNCTION_163_9(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_1B964C740();
}

uint64_t OUTLINED_FUNCTION_164_4(uint64_t a1)
{
  type metadata accessor for Searchfoundation_RFSummaryItemPairCardSection(a1);

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_165_8@<X0>(uint64_t a1@<X8>)
{

  return sub_1B906D5EC(v1 + a1, v4, v2, v3);
}

uint64_t OUTLINED_FUNCTION_194_5@<X0>(uint64_t a1@<X8>)
{

  return sub_1B906D5EC(v1 + a1, v4, v3, v2);
}

uint64_t OUTLINED_FUNCTION_207_7()
{

  return sub_1B95B9E1C();
}

uint64_t OUTLINED_FUNCTION_214_5()
{

  return sub_1B95B9E1C();
}

uint64_t OUTLINED_FUNCTION_215_4()
{

  return sub_1B964C2B0();
}

uint64_t OUTLINED_FUNCTION_223_1(uint64_t a1, uint64_t a2)
{

  return sub_1B906D5EC(a1, a2, v2, v3);
}

uint64_t OUTLINED_FUNCTION_224_4()
{

  return sub_1B95B9E1C();
}

uint64_t OUTLINED_FUNCTION_229_3(uint64_t a1, uint64_t a2)
{

  return sub_1B906D5EC(a1, a2, v2, v3);
}

uint64_t OUTLINED_FUNCTION_230_4(uint64_t a1, uint64_t a2)
{

  return sub_1B906D5EC(a1, a2, v2, v3);
}

uint64_t OUTLINED_FUNCTION_232_3()
{

  return type metadata accessor for Searchfoundation_RFTextProperty(0);
}

uint64_t OUTLINED_FUNCTION_246_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_1B964C740();
}

uint64_t OUTLINED_FUNCTION_251_4(uint64_t a1, uint64_t a2)
{

  return sub_1B906D5EC(a1, a2, v2, v3);
}

uint64_t OUTLINED_FUNCTION_252_2()
{

  return sub_1B964C2B0();
}

uint64_t Searchfoundation_RFTableHeaderCardSection.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = MEMORY[0x1E69E7CC0];
  *a1 = MEMORY[0x1E69E7CC0];
  *(a1 + 8) = v2;
  *(a1 + 16) = v2;
  *(a1 + 24) = 0;
  *(a1 + 32) = 1;
  *(a1 + 40) = 0;
  *(a1 + 48) = 1;
  type metadata accessor for Searchfoundation_RFTableHeaderCardSection(0);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t Searchfoundation_RFTableRowCardSection.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = MEMORY[0x1E69E7CC0];
  *a1 = MEMORY[0x1E69E7CC0];
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 24) = v2;
  type metadata accessor for Searchfoundation_RFTableRowCardSection(0);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t sub_1B95BC588(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B95C434C();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t (*static Searchfoundation_RFTableHeaderInFlowLayout.allCases.modify())(uint64_t a1)
{
  OUTLINED_FUNCTION_288();
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_1B95BC678@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = static Searchfoundation_RFTableHeaderInFlowLayout.allCases.getter(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1B95BC6C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B95C43F4();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t (*static Searchfoundation_RFColumnHorizontalAlignment.allCases.modify())(uint64_t a1)
{
  OUTLINED_FUNCTION_288();
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_1B95BC7B8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = static Searchfoundation_RFColumnHorizontalAlignment.allCases.getter(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1B95BC808(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B95C43A0();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t (*static Searchfoundation_RFTableRowVerticalAlignment.allCases.modify())(uint64_t a1)
{
  OUTLINED_FUNCTION_288();
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_1B95BC8F8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = static Searchfoundation_RFTableRowVerticalAlignment.allCases.getter(a1);
  *a2 = result;
  return result;
}

uint64_t Searchfoundation_RFTableHeaderCardSection.cells.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t Searchfoundation_RFTableHeaderCardSection.compactCells.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t Searchfoundation_RFTableHeaderCardSection.shouldRepeatHeaderInFlowLayout.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 24) = *result;
  *(v1 + 32) = v2;
  return result;
}

uint64_t Searchfoundation_RFTableHeaderCardSection.verticalAlignment.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 40) = *result;
  *(v1 + 48) = v2;
  return result;
}

uint64_t Searchfoundation_RFTableHeaderCardSection.unknownFields.getter()
{
  v0 = OUTLINED_FUNCTION_27();
  type metadata accessor for Searchfoundation_RFTableHeaderCardSection(v0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v1 = OUTLINED_FUNCTION_18_1();

  return v2(v1);
}

uint64_t Searchfoundation_RFTableHeaderCardSection.unknownFields.setter()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Searchfoundation_RFTableHeaderCardSection(v0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v1 = OUTLINED_FUNCTION_209();

  return v2(v1);
}

uint64_t Searchfoundation_RFTableHeaderCardSection.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Searchfoundation_RFTableHeaderCardSection(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t Searchfoundation_RFTableRowCardSection.cells.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t Searchfoundation_RFTableRowCardSection.verticalAlignment.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 8) = *result;
  *(v1 + 16) = v2;
  return result;
}

uint64_t Searchfoundation_RFTableRowCardSection.compactCells.setter(uint64_t a1)
{

  *(v1 + 24) = a1;
  return result;
}

uint64_t Searchfoundation_RFTableRowCardSection.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Searchfoundation_RFTableRowCardSection(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t Searchfoundation_RFTableColumnDefinition.spacer.getter()
{
  OUTLINED_FUNCTION_180_3();
  v1 = OUTLINED_FUNCTION_177_1();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_183(v3);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_27_9();
  v5 = type metadata accessor for Searchfoundation_RFTableColumnDefinition.OneOf_Definition(0);
  OUTLINED_FUNCTION_15_15(v5);
  if (v6)
  {
    sub_1B8D9207C(v0, &qword_1EBAB8DA8, &qword_1B96DFD10);
    return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  }

  OUTLINED_FUNCTION_543();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    sub_1B95BD070();
    return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  }

  OUTLINED_FUNCTION_9_46();
  OUTLINED_FUNCTION_288();
  return sub_1B95BD324();
}

void (*Searchfoundation_RFTableColumnDefinition.spacer.modify(void *a1))(uint64_t a1, uint64_t a2)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  *v3 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8DA8, &qword_1B96DFD10);
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v3[1] = v6;
  v7 = type metadata accessor for Searchfoundation_RFTableSpacerColumnDefinition(0);
  OUTLINED_FUNCTION_183(v7);
  v9 = *(v8 + 64);
  v3[2] = __swift_coroFrameAllocStub(v9);
  v3[3] = __swift_coroFrameAllocStub(v9);
  OUTLINED_FUNCTION_461();
  sub_1B8D92024();
  v10 = type metadata accessor for Searchfoundation_RFTableColumnDefinition.OneOf_Definition(0);
  v3[4] = v10;
  if (__swift_getEnumTagSinglePayload(v6, 1, v10) == 1)
  {
    sub_1B8D9207C(v6, &qword_1EBAB8DA8, &qword_1B96DFD10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      OUTLINED_FUNCTION_9_46();
      sub_1B95BD324();
      return sub_1B95BD02C;
    }

    sub_1B95BD070();
  }

  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  return sub_1B95BD02C;
}

uint64_t sub_1B95BD070()
{
  v1 = OUTLINED_FUNCTION_313();
  v2(v1);
  OUTLINED_FUNCTION_59_1();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t Searchfoundation_RFTableColumnDefinition.content.getter()
{
  OUTLINED_FUNCTION_180_3();
  v2 = OUTLINED_FUNCTION_177_1();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_183(v4);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_27_9();
  v6 = type metadata accessor for Searchfoundation_RFTableColumnDefinition.OneOf_Definition(0);
  OUTLINED_FUNCTION_15_15(v6);
  if (v7)
  {
    sub_1B8D9207C(v1, &qword_1EBAB8DA8, &qword_1B96DFD10);
  }

  else
  {
    OUTLINED_FUNCTION_543();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 1)
    {
      OUTLINED_FUNCTION_8_50();
      OUTLINED_FUNCTION_288();
      return sub_1B95BD324();
    }

    sub_1B95BD070();
  }

  *v0 = 0;
  *(v0 + 8) = 0;
  return OUTLINED_FUNCTION_69_10();
}

uint64_t sub_1B95BD1AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6, uint64_t (*a7)(uint64_t))
{
  v9 = (a5)(0, a2, a3, a4);
  OUTLINED_FUNCTION_183(v9);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_79();
  OUTLINED_FUNCTION_177_1();
  sub_1B95BD5E4();
  return a7(v7);
}

uint64_t sub_1B95BD258()
{
  sub_1B8D9207C(v0, &qword_1EBAB8DA8, &qword_1B96DFD10);
  OUTLINED_FUNCTION_128();
  sub_1B95BD324();
  type metadata accessor for Searchfoundation_RFTableColumnDefinition.OneOf_Definition(0);
  OUTLINED_FUNCTION_543();
  swift_storeEnumTagMultiPayload();
  v1 = OUTLINED_FUNCTION_72_11();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t Searchfoundation_RFTableContentColumnDefinition.init()@<X0>(uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  return OUTLINED_FUNCTION_69_10();
}

uint64_t sub_1B95BD324()
{
  v1 = OUTLINED_FUNCTION_280();
  v2(v1);
  OUTLINED_FUNCTION_59_1();
  v3 = OUTLINED_FUNCTION_432();
  v4(v3);
  return v0;
}

void (*Searchfoundation_RFTableColumnDefinition.content.modify())(uint64_t a1, uint64_t a2)
{
  v2 = OUTLINED_FUNCTION_25_4();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_86(v3);
  v4 = OUTLINED_FUNCTION_686();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_85(v8);
  type metadata accessor for Searchfoundation_RFTableContentColumnDefinition(v9);
  OUTLINED_FUNCTION_59_1();
  v11 = *(v10 + 64);
  *(v1 + 16) = __swift_coroFrameAllocStub(v11);
  v12 = __swift_coroFrameAllocStub(v11);
  OUTLINED_FUNCTION_43_7(v12);
  v13 = type metadata accessor for Searchfoundation_RFTableColumnDefinition.OneOf_Definition(0);
  OUTLINED_FUNCTION_8_22(v13);
  if (v14)
  {
    sub_1B8D9207C(v0, &qword_1EBAB8DA8, &qword_1B96DFD10);
LABEL_7:
    *v11 = 0;
    *(v11 + 8) = 0;
    *(v11 + 16) = 1;
    *(v11 + 20) = 0;
    *(v11 + 28) = 0;
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    return sub_1B95BD4D0;
  }

  OUTLINED_FUNCTION_177_1();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 1)
  {
    sub_1B95BD070();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_8_50();
  OUTLINED_FUNCTION_128();
  sub_1B95BD324();
  return sub_1B95BD4D0;
}

void sub_1B95BD514()
{
  OUTLINED_FUNCTION_284();
  OUTLINED_FUNCTION_54_13();
  if (v4)
  {
    OUTLINED_FUNCTION_461();
    sub_1B95BD5E4();
    sub_1B8D9207C(v3, &qword_1EBAB8DA8, &qword_1B96DFD10);
    OUTLINED_FUNCTION_78_9();
    OUTLINED_FUNCTION_52_15();
    OUTLINED_FUNCTION_132_9();
    sub_1B95BD070();
  }

  else
  {
    sub_1B8D9207C(v3, &qword_1EBAB8DA8, &qword_1B96DFD10);
    OUTLINED_FUNCTION_78_9();
    OUTLINED_FUNCTION_52_15();
    OUTLINED_FUNCTION_132_9();
  }

  free(v2);
  free(v1);
  free(v0);
  OUTLINED_FUNCTION_283();

  free(v5);
}

uint64_t sub_1B95BD5E4()
{
  v1 = OUTLINED_FUNCTION_280();
  v2(v1);
  OUTLINED_FUNCTION_59_1();
  v3 = OUTLINED_FUNCTION_432();
  v4(v3);
  return v0;
}

uint64_t Searchfoundation_RFTableColumnDefinition.unknownFields.getter()
{
  v0 = OUTLINED_FUNCTION_27();
  type metadata accessor for Searchfoundation_RFTableColumnDefinition(v0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v1 = OUTLINED_FUNCTION_18_1();

  return v2(v1);
}

uint64_t Searchfoundation_RFTableColumnDefinition.unknownFields.setter()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Searchfoundation_RFTableColumnDefinition(v0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v1 = OUTLINED_FUNCTION_209();

  return v2(v1);
}

uint64_t Searchfoundation_RFTableColumnDefinition.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Searchfoundation_RFTableColumnDefinition(v0);
  return OUTLINED_FUNCTION_25();
}

void static Searchfoundation_RFTableColumnDefinition.OneOf_Definition.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_284();
  a19 = v21;
  a20 = v22;
  v23 = type metadata accessor for Searchfoundation_RFTableContentColumnDefinition(0);
  v24 = OUTLINED_FUNCTION_183(v23);
  MEMORY[0x1EEE9AC00](v24);
  v26 = (&a9 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  v27 = type metadata accessor for Searchfoundation_RFTableSpacerColumnDefinition(0);
  v28 = OUTLINED_FUNCTION_183(v27);
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_31_8();
  type metadata accessor for Searchfoundation_RFTableColumnDefinition.OneOf_Definition(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_55_15();
  MEMORY[0x1EEE9AC00](v30);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8DA0, &unk_1B964D5A0);
  OUTLINED_FUNCTION_183(v31);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v32);
  v34 = &a9 - v33;
  sub_1B95BD5E4();
  sub_1B95BD5E4();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_28_27();
    sub_1B95BD5E4();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      OUTLINED_FUNCTION_8_50();
      sub_1B95BD324();
      static Searchfoundation_RFTableContentColumnDefinition.== infix(_:_:)(v20, v26);
      sub_1B95BD070();
LABEL_7:
      sub_1B95BD070();
      OUTLINED_FUNCTION_7_51();
      sub_1B95BD070();
      goto LABEL_8;
    }
  }

  else
  {
    OUTLINED_FUNCTION_28_27();
    sub_1B95BD5E4();
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      OUTLINED_FUNCTION_9_46();
      sub_1B95BD324();
      sub_1B964C2B0();
      OUTLINED_FUNCTION_0_113();
      sub_1B8CD3920(v35, v36, MEMORY[0x1E69AAC10]);
      OUTLINED_FUNCTION_461();
      sub_1B964C850();
      sub_1B95BD070();
      OUTLINED_FUNCTION_128();
      goto LABEL_7;
    }
  }

  sub_1B95BD070();
  sub_1B8D9207C(v34, &qword_1EBAB8DA0, &unk_1B964D5A0);
LABEL_8:
  OUTLINED_FUNCTION_283();
}

uint64_t static Searchfoundation_RFTableSpacerColumnDefinition.== infix(_:_:)()
{
  OUTLINED_FUNCTION_280();
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_113();
  sub_1B8CD3920(v0, v1, MEMORY[0x1E69AAC10]);
  OUTLINED_FUNCTION_288();
  return sub_1B964C850() & 1;
}

uint64_t static Searchfoundation_RFTableContentColumnDefinition.== infix(_:_:)(float *a1, float *a2)
{
  if (*a1 == *a2)
  {
    OUTLINED_FUNCTION_468();
    v5 = *(v4 + 8);
    v7 = *(v6 + 8);
    if (*(v6 + 16) == 1)
    {
      switch(v7)
      {
        case 1:
          if (v5 != 1)
          {
            return 0;
          }

          goto LABEL_7;
        case 2:
          if (v5 != 2)
          {
            return 0;
          }

          goto LABEL_7;
        case 3:
          if (v5 != 3)
          {
            return 0;
          }

          goto LABEL_7;
        default:
          if (!v5)
          {
            goto LABEL_7;
          }

          return 0;
      }
    }

    if (v5 == v7)
    {
LABEL_7:
      if (*(v3 + 20) == *(v2 + 20) && *(v3 + 24) == *(v2 + 24) && *(v3 + 28) == *(v2 + 28) && *(v3 + 29) == *(v2 + 29))
      {
        type metadata accessor for Searchfoundation_RFTableContentColumnDefinition(0);
        sub_1B964C2B0();
        OUTLINED_FUNCTION_0_113();
        v10 = sub_1B8CD3920(v8, v9, MEMORY[0x1E69AAC10]);
        return OUTLINED_FUNCTION_634(v10) & 1;
      }
    }
  }

  return 0;
}

uint64_t Searchfoundation_RFTableColumnDefinition.init()()
{
  v1 = OUTLINED_FUNCTION_27();
  v2 = type metadata accessor for Searchfoundation_RFTableColumnDefinition.OneOf_Definition(v1);
  __swift_storeEnumTagSinglePayload(v0, 1, 1, v2);
  type metadata accessor for Searchfoundation_RFTableColumnDefinition(0);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t Searchfoundation_RFTableSpacerColumnDefinition.unknownFields.getter()
{
  OUTLINED_FUNCTION_27();
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v0 = OUTLINED_FUNCTION_432();

  return v1(v0);
}

uint64_t Searchfoundation_RFTableSpacerColumnDefinition.unknownFields.setter()
{
  OUTLINED_FUNCTION_313();
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v0 = OUTLINED_FUNCTION_288();

  return v1(v0);
}

uint64_t Searchfoundation_RFTableContentColumnDefinition.unknownFields.getter()
{
  v0 = OUTLINED_FUNCTION_27();
  type metadata accessor for Searchfoundation_RFTableContentColumnDefinition(v0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v1 = OUTLINED_FUNCTION_18_1();

  return v2(v1);
}

uint64_t Searchfoundation_RFTableContentColumnDefinition.unknownFields.setter()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Searchfoundation_RFTableContentColumnDefinition(v0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v1 = OUTLINED_FUNCTION_209();

  return v2(v1);
}

uint64_t Searchfoundation_RFTableContentColumnDefinition.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Searchfoundation_RFTableContentColumnDefinition(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t Searchfoundation_RFTableCell.text.getter()
{
  OUTLINED_FUNCTION_180_3();
  v2 = OUTLINED_FUNCTION_177_1();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_183(v4);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_27_9();
  v6 = type metadata accessor for Searchfoundation_RFTableCell.OneOf_Content(0);
  OUTLINED_FUNCTION_15_15(v6);
  if (v7)
  {
    sub_1B8D9207C(v1, &qword_1EBAB8D90, &qword_1B964D590);
LABEL_6:
    *v0 = MEMORY[0x1E69E7CC0];
    *(v0 + 8) = 0;
    type metadata accessor for Searchfoundation_RFTextProperty(0);
    return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  }

  OUTLINED_FUNCTION_543();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    sub_1B95BD070();
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_11_46();
  OUTLINED_FUNCTION_288();
  return sub_1B95BD324();
}

uint64_t sub_1B95BE0E4()
{
  sub_1B8D9207C(v0, &qword_1EBAB8D90, &qword_1B964D590);
  OUTLINED_FUNCTION_128();
  sub_1B95BD324();
  type metadata accessor for Searchfoundation_RFTableCell.OneOf_Content(0);
  OUTLINED_FUNCTION_543();
  swift_storeEnumTagMultiPayload();
  v1 = OUTLINED_FUNCTION_72_11();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

void (*Searchfoundation_RFTableCell.text.modify())(uint64_t a1, uint64_t a2)
{
  v2 = OUTLINED_FUNCTION_25_4();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_86(v3);
  v4 = OUTLINED_FUNCTION_686();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_85(v8);
  type metadata accessor for Searchfoundation_RFTextProperty(v9);
  OUTLINED_FUNCTION_59_1();
  v11 = *(v10 + 64);
  *(v1 + 16) = __swift_coroFrameAllocStub(v11);
  v12 = __swift_coroFrameAllocStub(v11);
  OUTLINED_FUNCTION_43_7(v12);
  v13 = type metadata accessor for Searchfoundation_RFTableCell.OneOf_Content(0);
  OUTLINED_FUNCTION_8_22(v13);
  if (v14)
  {
    sub_1B8D9207C(v0, &qword_1EBAB8D90, &qword_1B964D590);
  }

  else
  {
    OUTLINED_FUNCTION_177_1();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload != 1)
    {
      OUTLINED_FUNCTION_11_46();
      OUTLINED_FUNCTION_128();
      sub_1B95BD324();
      return sub_1B95BE2A4;
    }

    sub_1B95BD070();
  }

  OUTLINED_FUNCTION_77_11(MEMORY[0x1E69E7CC0]);
  return sub_1B95BE2A4;
}

void sub_1B95BE2E8()
{
  OUTLINED_FUNCTION_284();
  OUTLINED_FUNCTION_54_13();
  if (v4)
  {
    OUTLINED_FUNCTION_461();
    sub_1B95BD5E4();
    sub_1B8D9207C(v3, &qword_1EBAB8D90, &qword_1B964D590);
    OUTLINED_FUNCTION_78_9();
    OUTLINED_FUNCTION_52_15();
    OUTLINED_FUNCTION_132_9();
    sub_1B95BD070();
  }

  else
  {
    sub_1B8D9207C(v3, &qword_1EBAB8D90, &qword_1B964D590);
    OUTLINED_FUNCTION_78_9();
    OUTLINED_FUNCTION_52_15();
    OUTLINED_FUNCTION_132_9();
  }

  free(v2);
  free(v1);
  free(v0);
  OUTLINED_FUNCTION_283();

  free(v5);
}

uint64_t Searchfoundation_RFTableCell.visual.getter()
{
  OUTLINED_FUNCTION_180_3();
  v2 = OUTLINED_FUNCTION_177_1();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_183(v4);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_27_9();
  v6 = type metadata accessor for Searchfoundation_RFTableCell.OneOf_Content(0);
  OUTLINED_FUNCTION_15_15(v6);
  if (v7)
  {
    sub_1B8D9207C(v1, &qword_1EBAB8D90, &qword_1B964D590);
  }

  else
  {
    OUTLINED_FUNCTION_543();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 1)
    {
      OUTLINED_FUNCTION_10_46();
      OUTLINED_FUNCTION_288();
      return sub_1B95BD324();
    }

    sub_1B95BD070();
  }

  *v0 = MEMORY[0x1E69E7CC0];
  *(v0 + 8) = 0;
  type metadata accessor for Searchfoundation_RFVisualProperty(0);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

void (*Searchfoundation_RFTableCell.visual.modify())()
{
  v2 = OUTLINED_FUNCTION_25_4();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_86(v3);
  v4 = OUTLINED_FUNCTION_686();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_85(v8);
  type metadata accessor for Searchfoundation_RFVisualProperty(v9);
  OUTLINED_FUNCTION_59_1();
  v11 = *(v10 + 64);
  *(v1 + 16) = __swift_coroFrameAllocStub(v11);
  v12 = __swift_coroFrameAllocStub(v11);
  OUTLINED_FUNCTION_43_7(v12);
  v13 = type metadata accessor for Searchfoundation_RFTableCell.OneOf_Content(0);
  OUTLINED_FUNCTION_8_22(v13);
  if (v14)
  {
    sub_1B8D9207C(v0, &qword_1EBAB8D90, &qword_1B964D590);
LABEL_7:
    OUTLINED_FUNCTION_77_11(MEMORY[0x1E69E7CC0]);
    return sub_1B95BE614;
  }

  OUTLINED_FUNCTION_177_1();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 1)
  {
    sub_1B95BD070();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_10_46();
  OUTLINED_FUNCTION_128();
  sub_1B95BD324();
  return sub_1B95BE614;
}

uint64_t Searchfoundation_RFTableCell.columnSpan.setter(int a1)
{
  result = OUTLINED_FUNCTION_66_9();
  *(v1 + v4) = a1;
  return result;
}

uint64_t Searchfoundation_RFTableCell.columnSpan.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Searchfoundation_RFTableCell(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t Searchfoundation_RFTableCell.horizontalAlignment.getter()
{
  v2 = OUTLINED_FUNCTION_27();
  result = type metadata accessor for Searchfoundation_RFTableCell(v2);
  v4 = (v1 + *(result + 24));
  v5 = *v4;
  LOBYTE(v4) = *(v4 + 8);
  *v0 = v5;
  *(v0 + 8) = v4;
  return result;
}

uint64_t Searchfoundation_RFTableCell.horizontalAlignment.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  result = type metadata accessor for Searchfoundation_RFTableCell(0);
  v5 = v1 + *(result + 24);
  *v5 = v2;
  *(v5 + 8) = v3;
  return result;
}

uint64_t Searchfoundation_RFTableCell.horizontalAlignment.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Searchfoundation_RFTableCell(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t Searchfoundation_RFTableCell.applySmallCaps.setter(char a1)
{
  result = type metadata accessor for Searchfoundation_RFTableCell(0);
  *(v1 + *(result + 28)) = a1;
  return result;
}

uint64_t Searchfoundation_RFTableCell.applySmallCaps.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Searchfoundation_RFTableCell(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t sub_1B95BE868()
{
  v0 = OUTLINED_FUNCTION_27();
  v1(v0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v2 = OUTLINED_FUNCTION_18_1();

  return v3(v2);
}

uint64_t sub_1B95BE8F0()
{
  v0 = OUTLINED_FUNCTION_313();
  v1(v0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v2 = OUTLINED_FUNCTION_209();

  return v3(v2);
}

uint64_t Searchfoundation_RFTableCell.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Searchfoundation_RFTableCell(v0);
  return OUTLINED_FUNCTION_25();
}

void static Searchfoundation_RFTableCell.OneOf_Content.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  v20[1] = type metadata accessor for Searchfoundation_RFVisualProperty(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_31_8();
  v20[0] = type metadata accessor for Searchfoundation_RFTextProperty(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v3);
  v5 = v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Searchfoundation_RFTableCell.OneOf_Content(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_55_15();
  MEMORY[0x1EEE9AC00](v7);
  v9 = v20 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAD1AC8, &qword_1B96DFD18);
  OUTLINED_FUNCTION_183(v10);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v11);
  v13 = v20 - v12;
  sub_1B95BD5E4();
  sub_1B95BD5E4();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_27_20();
    sub_1B95BD5E4();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      OUTLINED_FUNCTION_10_46();
      sub_1B95BD324();
      sub_1B8D5D124(*v1, *v0);
      if ((v14 & 1) != 0 && *(v1 + 8) == *(v0 + 8))
      {
        sub_1B964C2B0();
        OUTLINED_FUNCTION_0_113();
        sub_1B8CD3920(v15, v16, MEMORY[0x1E69AAC10]);
        sub_1B964C850();
      }

      OUTLINED_FUNCTION_29_36();
      sub_1B95BD070();
LABEL_14:
      sub_1B95BD070();
      OUTLINED_FUNCTION_3_88();
      sub_1B95BD070();
      goto LABEL_15;
    }
  }

  else
  {
    OUTLINED_FUNCTION_27_20();
    sub_1B95BD5E4();
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      OUTLINED_FUNCTION_11_46();
      sub_1B95BD324();
      sub_1B8D5BA08(*v9, *v5);
      if ((v17 & 1) != 0 && v9[8] == v5[8])
      {
        sub_1B964C2B0();
        OUTLINED_FUNCTION_0_113();
        sub_1B8CD3920(v18, v19, MEMORY[0x1E69AAC10]);
        sub_1B964C850();
      }

      OUTLINED_FUNCTION_31_29();
      sub_1B95BD070();
      goto LABEL_14;
    }
  }

  sub_1B95BD070();
  sub_1B8D9207C(v13, &qword_1EBAD1AC8, &qword_1B96DFD18);
LABEL_15:
  OUTLINED_FUNCTION_283();
}

uint64_t Searchfoundation_RFTableCell.init()()
{
  v1 = OUTLINED_FUNCTION_27();
  v2 = type metadata accessor for Searchfoundation_RFTableCell.OneOf_Content(v1);
  __swift_storeEnumTagSinglePayload(v0, 1, 1, v2);
  v3 = OUTLINED_FUNCTION_66_9();
  *(v0 + v4) = 0;
  v5 = v0 + *(v3 + 24);
  *v5 = 0;
  *(v5 + 8) = 1;
  *(v0 + *(v3 + 28)) = 0;
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t sub_1B95BEDC0()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAD19F0);
  __swift_project_value_buffer(v0, qword_1EBAD19F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "RF_TABLE_HEADER_FLOW_LAYOUT_DEFAULT";
  *(v6 + 8) = 35;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "RF_TABLE_HEADER_FLOW_LAYOUT_ONLY_FIRST";
  *(v10 + 1) = 38;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "RF_TABLE_HEADER_FLOW_LAYOUT_REPEATED";
  *(v12 + 1) = 36;
  v12[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B95BEFEC()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAD1A08);
  __swift_project_value_buffer(v0, qword_1EBAD1A08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964E4B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "RF_COLUMN_ALIGNMENT_UNSPECIFIED";
  *(v6 + 8) = 31;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "RF_COLUMN_ALIGNMENT_LEADING";
  *(v10 + 8) = 27;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "RF_COLUMN_ALIGNMENT_CENTER";
  *(v12 + 1) = 26;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "RF_COLUMN_ALIGNMENT_TRAILING";
  *(v14 + 1) = 28;
  v14[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B95BF254()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAD1A20);
  __swift_project_value_buffer(v0, qword_1EBAD1A20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B9650810;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "RF_ROW_ALIGNMENT_UNSPECIFIED";
  *(v6 + 8) = 28;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "RF_ROW_ALIGNMENT_TOP";
  *(v10 + 8) = 20;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "RF_ROW_ALIGNMENT_CENTER";
  *(v12 + 1) = 23;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "RF_ROW_ALIGNMENT_BOTTOM";
  *(v14 + 1) = 23;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "RF_ROW_ALIGNMENT_FIRST_TEXT_BASELINE";
  *(v16 + 1) = 36;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 5;
  *v18 = "RF_ROW_ALIGNMENT_LAST_TEXT_BASELINE";
  *(v18 + 1) = 35;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 6;
  *v20 = "RF_ROW_ALIGNMENT_FIRST_TEXT_LINE_CENTER";
  *(v20 + 1) = 39;
  v20[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B95BF58C()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAD1A38);
  __swift_project_value_buffer(v0, qword_1EBAD1A38);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE70;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "columns";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "cells";
  *(v10 + 8) = 5;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "compact_cells";
  *(v12 + 1) = 13;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "should_repeat_header_in_flow_layout";
  *(v14 + 1) = 35;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "vertical_alignment";
  *(v16 + 1) = 18;
  v16[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Searchfoundation_RFTableHeaderCardSection.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        v3 = OUTLINED_FUNCTION_9();
        sub_1B95C0388(v3, v4, v5, v6, v7, &qword_1EBAD1AD0, v8, v9);
        break;
      case 2:
        v22 = OUTLINED_FUNCTION_9();
        sub_1B95BF940(v22, v23, v24, v25);
        break;
      case 3:
        v14 = OUTLINED_FUNCTION_9();
        sub_1B95BF9E0(v14, v15, v16, v17);
        break;
      case 4:
        v18 = OUTLINED_FUNCTION_9();
        sub_1B95BFA80(v18, v19, v20, v21);
        break;
      case 5:
        v10 = OUTLINED_FUNCTION_9();
        sub_1B95BFAE8(v10, v11, v12, v13);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B95BF940(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Searchfoundation_RFTableCell(0);
  sub_1B8CD3920(&qword_1EBAD1AD8, type metadata accessor for Searchfoundation_RFTableCell, protocol conformance descriptor for Searchfoundation_RFTableCell);
  return sub_1B964C570();
}

uint64_t sub_1B95BF9E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Searchfoundation_RFTableCell(0);
  sub_1B8CD3920(&qword_1EBAD1AD8, type metadata accessor for Searchfoundation_RFTableCell, protocol conformance descriptor for Searchfoundation_RFTableCell);
  return sub_1B964C570();
}

uint64_t Searchfoundation_RFTableHeaderCardSection.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  if (!*(*v0 + 16) || (type metadata accessor for Searchfoundation_RFTableColumnDefinition(0), sub_1B8CD3920(&qword_1EBAD1AD0, type metadata accessor for Searchfoundation_RFTableColumnDefinition, protocol conformance descriptor for Searchfoundation_RFTableColumnDefinition), OUTLINED_FUNCTION_231(), OUTLINED_FUNCTION_687(), result = sub_1B964C730(), !v1))
  {
    if (!*(v2[1] + 16) || (OUTLINED_FUNCTION_65_14(), OUTLINED_FUNCTION_2_83(), sub_1B8CD3920(v4, v5, protocol conformance descriptor for Searchfoundation_RFTableCell), OUTLINED_FUNCTION_231(), OUTLINED_FUNCTION_687(), result = sub_1B964C730(), !v1))
    {
      if (!*(v2[2] + 16) || (OUTLINED_FUNCTION_65_14(), OUTLINED_FUNCTION_2_83(), sub_1B8CD3920(v6, v7, protocol conformance descriptor for Searchfoundation_RFTableCell), OUTLINED_FUNCTION_231(), OUTLINED_FUNCTION_687(), result = sub_1B964C730(), !v1))
      {
        if (!v2[3] || (OUTLINED_FUNCTION_94_4(), sub_1B95C434C(), OUTLINED_FUNCTION_687(), result = sub_1B964C680(), !v1))
        {
          if (!v2[5] || (OUTLINED_FUNCTION_94_4(), sub_1B95C43A0(), OUTLINED_FUNCTION_687(), result = sub_1B964C680(), !v1))
          {
            type metadata accessor for Searchfoundation_RFTableHeaderCardSection(0);
            return OUTLINED_FUNCTION_8_1();
          }
        }
      }
    }
  }

  return result;
}

uint64_t static Searchfoundation_RFTableHeaderCardSection.== infix(_:_:)()
{
  OUTLINED_FUNCTION_468();
  sub_1B8D6AC34(*v2, *v3);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  sub_1B8D6B3B4(*(v1 + 8), v0[1]);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  sub_1B8D6B3B4(*(v1 + 16), v0[2]);
  if ((v6 & 1) == 0 || !sub_1B8D92198(*(v1 + 24), *(v1 + 32), v0[3]) || !sub_1B8D92198(*(v1 + 40), *(v1 + 48), v0[5]))
  {
    return 0;
  }

  type metadata accessor for Searchfoundation_RFTableHeaderCardSection(0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_113();
  v9 = sub_1B8CD3920(v7, v8, MEMORY[0x1E69AAC10]);
  return OUTLINED_FUNCTION_634(v9) & 1;
}

uint64_t sub_1B95BFE98(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD3920(&qword_1EBAD1C38, type metadata accessor for Searchfoundation_RFTableHeaderCardSection, protocol conformance descriptor for Searchfoundation_RFTableHeaderCardSection);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B95BFF18(uint64_t a1)
{
  v2 = sub_1B8CD3920(&qword_1EBACE5C8, type metadata accessor for Searchfoundation_RFTableHeaderCardSection, protocol conformance descriptor for Searchfoundation_RFTableHeaderCardSection);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B95BFF88(uint64_t a1, uint64_t a2)
{
  sub_1B8CD3920(&qword_1EBACE5C8, type metadata accessor for Searchfoundation_RFTableHeaderCardSection, protocol conformance descriptor for Searchfoundation_RFTableHeaderCardSection);

  return sub_1B964C5D0();
}

uint64_t sub_1B95C0020()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAD1A50);
  __swift_project_value_buffer(v0, qword_1EBAD1A50);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964E4B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "cells";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "vertical_alignment";
  *(v10 + 8) = 18;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "scale_to_fit";
  *(v12 + 1) = 12;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "compact_cells";
  *(v14 + 1) = 13;
  v14[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Searchfoundation_RFTableRowCardSection.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        v3 = OUTLINED_FUNCTION_9();
        sub_1B95C0388(v3, v4, v5, v6, v7, &qword_1EBAD1AD8, v8, v9);
        break;
      case 2:
        v14 = OUTLINED_FUNCTION_9();
        sub_1B95C0420(v14, v15, v16, v17);
        break;
      case 3:
        OUTLINED_FUNCTION_12();
        sub_1B964C400();
        break;
      case 4:
        v10 = OUTLINED_FUNCTION_9();
        sub_1B95C0488(v10, v11, v12, v13);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B95C0388(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6, uint64_t a7, const char *a8)
{
  a5(0);
  v9 = OUTLINED_FUNCTION_128();
  sub_1B8CD3920(v9, v10, a8);
  return sub_1B964C570();
}

uint64_t sub_1B95C0488(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Searchfoundation_RFTableCell(0);
  sub_1B8CD3920(&qword_1EBAD1AD8, type metadata accessor for Searchfoundation_RFTableCell, protocol conformance descriptor for Searchfoundation_RFTableCell);
  return sub_1B964C570();
}

uint64_t Searchfoundation_RFTableRowCardSection.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  if (!*(*v0 + 16) || (OUTLINED_FUNCTION_65_14(), OUTLINED_FUNCTION_2_83(), sub_1B8CD3920(v3, v4, protocol conformance descriptor for Searchfoundation_RFTableCell), OUTLINED_FUNCTION_231(), OUTLINED_FUNCTION_687(), result = sub_1B964C730(), !v1))
  {
    if (!*(v2 + 8) || (OUTLINED_FUNCTION_94_4(), sub_1B95C43A0(), OUTLINED_FUNCTION_687(), result = sub_1B964C680(), !v1))
    {
      if (*(v2 + 17) != 1 || (OUTLINED_FUNCTION_29(), result = sub_1B964C670(), !v1))
      {
        if (!*(*(v2 + 24) + 16) || (OUTLINED_FUNCTION_65_14(), OUTLINED_FUNCTION_2_83(), sub_1B8CD3920(v6, v7, protocol conformance descriptor for Searchfoundation_RFTableCell), OUTLINED_FUNCTION_231(), OUTLINED_FUNCTION_687(), result = sub_1B964C730(), !v1))
        {
          type metadata accessor for Searchfoundation_RFTableRowCardSection(0);
          return OUTLINED_FUNCTION_8_1();
        }
      }
    }
  }

  return result;
}

uint64_t static Searchfoundation_RFTableRowCardSection.== infix(_:_:)()
{
  OUTLINED_FUNCTION_468();
  sub_1B8D6B3B4(*v2, *v3);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  if (!sub_1B8D92198(*(v1 + 8), *(v1 + 16), *(v0 + 8)))
  {
    return 0;
  }

  if (*(v1 + 17) != *(v0 + 17))
  {
    return 0;
  }

  sub_1B8D6B3B4(*(v1 + 24), *(v0 + 24));
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for Searchfoundation_RFTableRowCardSection(0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_113();
  v8 = sub_1B8CD3920(v6, v7, MEMORY[0x1E69AAC10]);
  return OUTLINED_FUNCTION_634(v8) & 1;
}

uint64_t sub_1B95C07DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD3920(&qword_1EBAD1C30, type metadata accessor for Searchfoundation_RFTableRowCardSection, protocol conformance descriptor for Searchfoundation_RFTableRowCardSection);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B95C085C(uint64_t a1)
{
  v2 = sub_1B8CD3920(&qword_1EBACE5C0, type metadata accessor for Searchfoundation_RFTableRowCardSection, protocol conformance descriptor for Searchfoundation_RFTableRowCardSection);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B95C08CC(uint64_t a1, uint64_t a2)
{
  sub_1B8CD3920(&qword_1EBACE5C0, type metadata accessor for Searchfoundation_RFTableRowCardSection, protocol conformance descriptor for Searchfoundation_RFTableRowCardSection);

  return sub_1B964C5D0();
}

uint64_t sub_1B95C0964()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAD1A68);
  __swift_project_value_buffer(v0, qword_1EBAD1A68);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D060;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "spacer";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "content";
  *(v10 + 1) = 7;
  v10[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Searchfoundation_RFTableColumnDefinition.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      OUTLINED_FUNCTION_432();
      OUTLINED_FUNCTION_24_3();
      sub_1B95C10B4(v7, v8, v9, v10);
    }

    else if (result == 1)
    {
      OUTLINED_FUNCTION_432();
      OUTLINED_FUNCTION_24_3();
      sub_1B95C0BBC(v3, v4, v5, v6);
    }
  }

  return result;
}

uint64_t sub_1B95C0BBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  v5 = type metadata accessor for Searchfoundation_RFTableSpacerColumnDefinition(0);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v28 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8DA8, &qword_1B96DFD10);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for Searchfoundation_RFTableColumnDefinition.OneOf_Definition(0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  MEMORY[0x1EEE9AC00](v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAD1C40, &qword_1B96E0C98);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v24 - v17;
  __swift_storeEnumTagSinglePayload(&v24 - v17, 1, 1, v5);
  v25 = a1;
  sub_1B8D92024();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  v27 = v11;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v10, &qword_1EBAB8DA8, &qword_1B96DFD10);
  }

  else
  {
    sub_1B95BD324();
    sub_1B95BD324();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1B95BD070();
    }

    else
    {
      sub_1B8D9207C(v18, &qword_1EBAD1C40, &qword_1B96E0C98);
      sub_1B95BD324();
      sub_1B95BD324();
      __swift_storeEnumTagSinglePayload(v18, 0, 1, v5);
    }
  }

  sub_1B8CD3920(&qword_1EBAD1BD8, type metadata accessor for Searchfoundation_RFTableSpacerColumnDefinition, protocol conformance descriptor for Searchfoundation_RFTableSpacerColumnDefinition);
  v19 = v29;
  sub_1B964C580();
  if (v19)
  {
    v20 = v18;
    return sub_1B8D9207C(v20, &qword_1EBAD1C40, &qword_1B96E0C98);
  }

  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v16, 1, v5) == 1)
  {
    sub_1B8D9207C(v18, &qword_1EBAD1C40, &qword_1B96E0C98);
    v20 = v16;
    return sub_1B8D9207C(v20, &qword_1EBAD1C40, &qword_1B96E0C98);
  }

  sub_1B95BD324();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v22 = v27;
  sub_1B8D9207C(v18, &qword_1EBAD1C40, &qword_1B96E0C98);
  v23 = v25;
  sub_1B8D9207C(v25, &qword_1EBAB8DA8, &qword_1B96DFD10);
  sub_1B95BD324();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v23, 0, 1, v22);
}

uint64_t sub_1B95C10B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  v5 = type metadata accessor for Searchfoundation_RFTableContentColumnDefinition(0);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v28 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8DA8, &qword_1B96DFD10);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for Searchfoundation_RFTableColumnDefinition.OneOf_Definition(0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  MEMORY[0x1EEE9AC00](v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAD1C48, &unk_1B96E0CA0);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v24 - v17;
  __swift_storeEnumTagSinglePayload(&v24 - v17, 1, 1, v5);
  v25 = a1;
  sub_1B8D92024();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  v27 = v11;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v10, &qword_1EBAB8DA8, &qword_1B96DFD10);
  }

  else
  {
    sub_1B95BD324();
    sub_1B95BD324();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1B8D9207C(v18, &qword_1EBAD1C48, &unk_1B96E0CA0);
      sub_1B95BD324();
      sub_1B95BD324();
      __swift_storeEnumTagSinglePayload(v18, 0, 1, v5);
    }

    else
    {
      sub_1B95BD070();
    }
  }

  sub_1B8CD3920(&qword_1EBAD1BF0, type metadata accessor for Searchfoundation_RFTableContentColumnDefinition, protocol conformance descriptor for Searchfoundation_RFTableContentColumnDefinition);
  v19 = v29;
  sub_1B964C580();
  if (v19)
  {
    v20 = v18;
    return sub_1B8D9207C(v20, &qword_1EBAD1C48, &unk_1B96E0CA0);
  }

  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v16, 1, v5) == 1)
  {
    sub_1B8D9207C(v18, &qword_1EBAD1C48, &unk_1B96E0CA0);
    v20 = v16;
    return sub_1B8D9207C(v20, &qword_1EBAD1C48, &unk_1B96E0CA0);
  }

  sub_1B95BD324();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v22 = v27;
  sub_1B8D9207C(v18, &qword_1EBAD1C48, &unk_1B96E0CA0);
  v23 = v25;
  sub_1B8D9207C(v25, &qword_1EBAB8DA8, &qword_1B96DFD10);
  sub_1B95BD324();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v23, 0, 1, v22);
}

uint64_t Searchfoundation_RFTableColumnDefinition.traverse<A>(visitor:)()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8DA8, &qword_1B96DFD10);
  OUTLINED_FUNCTION_183(v1);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v15 - v3;
  sub_1B8D92024();
  v5 = type metadata accessor for Searchfoundation_RFTableColumnDefinition.OneOf_Definition(0);
  if (__swift_getEnumTagSinglePayload(v4, 1, v5) == 1)
  {
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_686();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_24_3();
    sub_1B95C1904(v6, v7, v8, v9);
  }

  else
  {
    OUTLINED_FUNCTION_24_3();
    sub_1B95C16F0(v10, v11, v12, v13);
  }

  OUTLINED_FUNCTION_7_51();
  result = sub_1B95BD070();
  if (!v0)
  {
LABEL_6:
    type metadata accessor for Searchfoundation_RFTableColumnDefinition(0);
    OUTLINED_FUNCTION_12();
    return sub_1B964C290();
  }

  return result;
}

uint64_t sub_1B95C16F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8DA8, &qword_1B96DFD10);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for Searchfoundation_RFTableSpacerColumnDefinition(0);
  MEMORY[0x1EEE9AC00](v7);
  sub_1B8D92024();
  v8 = type metadata accessor for Searchfoundation_RFTableColumnDefinition.OneOf_Definition(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_1B8D9207C(v6, &qword_1EBAB8DA8, &qword_1B96DFD10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_1B95BD324();
      sub_1B8CD3920(&qword_1EBAD1BD8, type metadata accessor for Searchfoundation_RFTableSpacerColumnDefinition, protocol conformance descriptor for Searchfoundation_RFTableSpacerColumnDefinition);
      sub_1B964C740();
      return sub_1B95BD070();
    }

    result = sub_1B95BD070();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B95C1904(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8DA8, &qword_1B96DFD10);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for Searchfoundation_RFTableContentColumnDefinition(0);
  MEMORY[0x1EEE9AC00](v7);
  sub_1B8D92024();
  v8 = type metadata accessor for Searchfoundation_RFTableColumnDefinition.OneOf_Definition(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_1B8D9207C(v6, &qword_1EBAB8DA8, &qword_1B96DFD10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1B95BD324();
      sub_1B8CD3920(&qword_1EBAD1BF0, type metadata accessor for Searchfoundation_RFTableContentColumnDefinition, protocol conformance descriptor for Searchfoundation_RFTableContentColumnDefinition);
      sub_1B964C740();
      return sub_1B95BD070();
    }

    result = sub_1B95BD070();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B95C1DE0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD3920(&qword_1EBAD1C28, type metadata accessor for Searchfoundation_RFTableColumnDefinition, protocol conformance descriptor for Searchfoundation_RFTableColumnDefinition);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B95C1E60(uint64_t a1)
{
  v2 = sub_1B8CD3920(&qword_1EBAD1AD0, type metadata accessor for Searchfoundation_RFTableColumnDefinition, protocol conformance descriptor for Searchfoundation_RFTableColumnDefinition);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B95C1ED0(uint64_t a1, uint64_t a2)
{
  sub_1B8CD3920(&qword_1EBAD1AD0, type metadata accessor for Searchfoundation_RFTableColumnDefinition, protocol conformance descriptor for Searchfoundation_RFTableColumnDefinition);

  return sub_1B964C5D0();
}

uint64_t sub_1B95C1F68()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAD1A80);
  __swift_project_value_buffer(v0, qword_1EBAD1A80);
  return sub_1B964C770();
}

uint64_t Searchfoundation_RFTableSpacerColumnDefinition.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2)
{
  do
  {
    result = sub_1B964C3C0();
  }

  while (!v2 && (v4 & 1) == 0);
  return result;
}

uint64_t sub_1B95C20D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD3920(&qword_1EBAD1C20, type metadata accessor for Searchfoundation_RFTableSpacerColumnDefinition, protocol conformance descriptor for Searchfoundation_RFTableSpacerColumnDefinition);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B95C2158(uint64_t a1)
{
  v2 = sub_1B8CD3920(&qword_1EBAD1BD8, type metadata accessor for Searchfoundation_RFTableSpacerColumnDefinition, protocol conformance descriptor for Searchfoundation_RFTableSpacerColumnDefinition);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B95C21C8(uint64_t a1, uint64_t a2)
{
  sub_1B8CD3920(&qword_1EBAD1BD8, type metadata accessor for Searchfoundation_RFTableSpacerColumnDefinition, protocol conformance descriptor for Searchfoundation_RFTableSpacerColumnDefinition);

  return sub_1B964C5D0();
}

uint64_t sub_1B95C2260()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAD1A98);
  __swift_project_value_buffer(v0, qword_1EBAD1A98);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964E4A0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "size_percent";
  *(v6 + 8) = 12;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "horizontal_alignment";
  *(v10 + 8) = 20;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "drop_order";
  *(v12 + 1) = 10;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "equal_size_column_group";
  *(v14 + 1) = 23;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "disable_truncation";
  *(v16 + 1) = 18;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "should_drop_in_flow_layout";
  *(v18 + 1) = 26;
  v18[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Searchfoundation_RFTableContentColumnDefinition.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        OUTLINED_FUNCTION_12();
        sub_1B964C490();
        break;
      case 2:
        v3 = OUTLINED_FUNCTION_9();
        sub_1B95C2604(v3, v4, v5, v6);
        break;
      case 3:
      case 4:
        OUTLINED_FUNCTION_12();
        sub_1B964C4A0();
        break;
      case 5:
      case 6:
        OUTLINED_FUNCTION_12();
        sub_1B964C400();
        break;
      default:
        continue;
    }
  }
}

uint64_t Searchfoundation_RFTableContentColumnDefinition.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  if (*v1 == 0.0 || (v2 = v0, OUTLINED_FUNCTION_12(), result = sub_1B964C6B0(), !v0))
  {
    if (!*(v3 + 8) || (OUTLINED_FUNCTION_94_4(), sub_1B95C43F4(), OUTLINED_FUNCTION_687(), result = sub_1B964C680(), !v2))
    {
      if (!*(v3 + 20) || (OUTLINED_FUNCTION_29(), result = sub_1B964C6C0(), !v2))
      {
        if (!*(v3 + 24) || (OUTLINED_FUNCTION_29(), result = sub_1B964C6C0(), !v2))
        {
          if (*(v3 + 28) != 1 || (OUTLINED_FUNCTION_29(), result = sub_1B964C670(), !v2))
          {
            if (*(v3 + 29) != 1 || (OUTLINED_FUNCTION_29(), result = sub_1B964C670(), !v2))
            {
              type metadata accessor for Searchfoundation_RFTableContentColumnDefinition(0);
              return OUTLINED_FUNCTION_8_1();
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_1B95C2844(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD3920(&qword_1EBAD1C18, type metadata accessor for Searchfoundation_RFTableContentColumnDefinition, protocol conformance descriptor for Searchfoundation_RFTableContentColumnDefinition);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B95C28C4(uint64_t a1)
{
  v2 = sub_1B8CD3920(&qword_1EBAD1BF0, type metadata accessor for Searchfoundation_RFTableContentColumnDefinition, protocol conformance descriptor for Searchfoundation_RFTableContentColumnDefinition);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B95C2934(uint64_t a1, uint64_t a2)
{
  sub_1B8CD3920(&qword_1EBAD1BF0, type metadata accessor for Searchfoundation_RFTableContentColumnDefinition, protocol conformance descriptor for Searchfoundation_RFTableContentColumnDefinition);

  return sub_1B964C5D0();
}

uint64_t sub_1B95C29CC()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAD1AB0);
  __swift_project_value_buffer(v0, qword_1EBAD1AB0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE70;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "text";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "visual";
  *(v10 + 8) = 6;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "column_span";
  *(v12 + 1) = 11;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "horizontal_alignment";
  *(v14 + 1) = 20;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "applySmallCaps";
  *(v16 + 1) = 14;
  v16[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Searchfoundation_RFTableCell.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        OUTLINED_FUNCTION_432();
        OUTLINED_FUNCTION_24_3();
        sub_1B95C2D38(v3, v4, v5, v6);
        break;
      case 2:
        OUTLINED_FUNCTION_432();
        OUTLINED_FUNCTION_24_3();
        sub_1B95C3230(v19, v20, v21, v22);
        break;
      case 3:
        v11 = OUTLINED_FUNCTION_9();
        sub_1B95C3728(v11, v12, v13, v14);
        break;
      case 4:
        v15 = OUTLINED_FUNCTION_9();
        sub_1B95C378C(v15, v16, v17, v18);
        break;
      case 5:
        v7 = OUTLINED_FUNCTION_9();
        sub_1B95C3800(v7, v8, v9, v10);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B95C2D38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  v5 = type metadata accessor for Searchfoundation_RFTextProperty(0);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v28 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8D90, &qword_1B964D590);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for Searchfoundation_RFTableCell.OneOf_Content(0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  MEMORY[0x1EEE9AC00](v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8DF8, &qword_1B96B9A80);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v24 - v17;
  __swift_storeEnumTagSinglePayload(&v24 - v17, 1, 1, v5);
  v25 = a1;
  sub_1B8D92024();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  v27 = v11;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v10, &qword_1EBAB8D90, &qword_1B964D590);
  }

  else
  {
    sub_1B95BD324();
    sub_1B95BD324();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1B95BD070();
    }

    else
    {
      sub_1B8D9207C(v18, &qword_1EBAB8DF8, &qword_1B96B9A80);
      sub_1B95BD324();
      sub_1B95BD324();
      __swift_storeEnumTagSinglePayload(v18, 0, 1, v5);
    }
  }

  sub_1B8CD3920(&qword_1ED9D2D08, type metadata accessor for Searchfoundation_RFTextProperty, protocol conformance descriptor for Searchfoundation_RFTextProperty);
  v19 = v29;
  sub_1B964C580();
  if (v19)
  {
    v20 = v18;
    return sub_1B8D9207C(v20, &qword_1EBAB8DF8, &qword_1B96B9A80);
  }

  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v16, 1, v5) == 1)
  {
    sub_1B8D9207C(v18, &qword_1EBAB8DF8, &qword_1B96B9A80);
    v20 = v16;
    return sub_1B8D9207C(v20, &qword_1EBAB8DF8, &qword_1B96B9A80);
  }

  sub_1B95BD324();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v22 = v27;
  sub_1B8D9207C(v18, &qword_1EBAB8DF8, &qword_1B96B9A80);
  v23 = v25;
  sub_1B8D9207C(v25, &qword_1EBAB8D90, &qword_1B964D590);
  sub_1B95BD324();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v23, 0, 1, v22);
}

uint64_t sub_1B95C3230(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  v5 = type metadata accessor for Searchfoundation_RFVisualProperty(0);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v28 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8D90, &qword_1B964D590);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for Searchfoundation_RFTableCell.OneOf_Content(0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  MEMORY[0x1EEE9AC00](v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC708, &unk_1B96D92F0);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v24 - v17;
  __swift_storeEnumTagSinglePayload(&v24 - v17, 1, 1, v5);
  v25 = a1;
  sub_1B8D92024();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  v27 = v11;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v10, &qword_1EBAB8D90, &qword_1B964D590);
  }

  else
  {
    sub_1B95BD324();
    sub_1B95BD324();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1B8D9207C(v18, &qword_1EBACC708, &unk_1B96D92F0);
      sub_1B95BD324();
      sub_1B95BD324();
      __swift_storeEnumTagSinglePayload(v18, 0, 1, v5);
    }

    else
    {
      sub_1B95BD070();
    }
  }

  sub_1B8CD3920(&qword_1ED9D2A40, type metadata accessor for Searchfoundation_RFVisualProperty, protocol conformance descriptor for Searchfoundation_RFVisualProperty);
  v19 = v29;
  sub_1B964C580();
  if (v19)
  {
    v20 = v18;
    return sub_1B8D9207C(v20, &qword_1EBACC708, &unk_1B96D92F0);
  }

  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v16, 1, v5) == 1)
  {
    sub_1B8D9207C(v18, &qword_1EBACC708, &unk_1B96D92F0);
    v20 = v16;
    return sub_1B8D9207C(v20, &qword_1EBACC708, &unk_1B96D92F0);
  }

  sub_1B95BD324();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v22 = v27;
  sub_1B8D9207C(v18, &qword_1EBACC708, &unk_1B96D92F0);
  v23 = v25;
  sub_1B8D9207C(v25, &qword_1EBAB8D90, &qword_1B964D590);
  sub_1B95BD324();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v23, 0, 1, v22);
}

uint64_t sub_1B95C378C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Searchfoundation_RFTableCell(0);
  sub_1B95C43F4();
  return sub_1B964C420();
}

uint64_t Searchfoundation_RFTableCell.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8D90, &qword_1B964D590);
  OUTLINED_FUNCTION_183(v3);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v20 - v5;
  sub_1B8D92024();
  v7 = type metadata accessor for Searchfoundation_RFTableCell.OneOf_Content(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    goto LABEL_15;
  }

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_24_3();
    v1 = v0;
    sub_1B95C3C30(v8, v9, v10, v11);
  }

  else
  {
    OUTLINED_FUNCTION_24_3();
    v1 = v0;
    sub_1B95C3A1C(v12, v13, v14, v15);
  }

  OUTLINED_FUNCTION_3_88();
  result = sub_1B95BD070();
  if (!v1)
  {
LABEL_15:
    if (!*(v2 + *(OUTLINED_FUNCTION_65_14() + 20)) || (OUTLINED_FUNCTION_29(), result = sub_1B964C6C0(), !v1))
    {
      v17 = (v2 + *(v7 + 24));
      v18 = *v17;
      if (!*v17 || (v19 = *(v17 + 8), v20 = v18, v21 = v19, sub_1B95C43F4(), OUTLINED_FUNCTION_687(), result = sub_1B964C680(), !v1))
      {
        if (*(v2 + *(v7 + 28)) != 1)
        {
          return OUTLINED_FUNCTION_8_1();
        }

        OUTLINED_FUNCTION_29();
        result = sub_1B964C670();
        if (!v1)
        {
          return OUTLINED_FUNCTION_8_1();
        }
      }
    }
  }

  return result;
}

uint64_t sub_1B95C3A1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8D90, &qword_1B964D590);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for Searchfoundation_RFTextProperty(0);
  MEMORY[0x1EEE9AC00](v7);
  sub_1B8D92024();
  v8 = type metadata accessor for Searchfoundation_RFTableCell.OneOf_Content(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_1B8D9207C(v6, &qword_1EBAB8D90, &qword_1B964D590);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_1B95BD324();
      sub_1B8CD3920(&qword_1ED9D2D08, type metadata accessor for Searchfoundation_RFTextProperty, protocol conformance descriptor for Searchfoundation_RFTextProperty);
      sub_1B964C740();
      return sub_1B95BD070();
    }

    result = sub_1B95BD070();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B95C3C30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8D90, &qword_1B964D590);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for Searchfoundation_RFVisualProperty(0);
  MEMORY[0x1EEE9AC00](v7);
  sub_1B8D92024();
  v8 = type metadata accessor for Searchfoundation_RFTableCell.OneOf_Content(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_1B8D9207C(v6, &qword_1EBAB8D90, &qword_1B964D590);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1B95BD324();
      sub_1B8CD3920(&qword_1ED9D2A40, type metadata accessor for Searchfoundation_RFVisualProperty, protocol conformance descriptor for Searchfoundation_RFVisualProperty);
      sub_1B964C740();
      return sub_1B95BD070();
    }

    result = sub_1B95BD070();
  }

  __break(1u);
  return result;
}

void static Searchfoundation_RFTableCell.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  v4 = OUTLINED_FUNCTION_280();
  type metadata accessor for Searchfoundation_RFTableCell.OneOf_Content(v4);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_31_8();
  v6 = OUTLINED_FUNCTION_686();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
  OUTLINED_FUNCTION_183(v8);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_79();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8D98, &qword_1B964D598);
  OUTLINED_FUNCTION_183(v10);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_49_17();
  OUTLINED_FUNCTION_313_1();
  OUTLINED_FUNCTION_50(v2);
  if (!v12)
  {
    OUTLINED_FUNCTION_177_1();
    sub_1B8D92024();
    OUTLINED_FUNCTION_50(v2 + v3);
    if (!v12)
    {
      sub_1B95BD324();
      static Searchfoundation_RFTableCell.OneOf_Content.== infix(_:_:)();
      v14 = v13;
      sub_1B95BD070();
      sub_1B95BD070();
      sub_1B8D9207C(v2, &qword_1EBAB8D90, &qword_1B964D590);
      if ((v14 & 1) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_11;
    }

    OUTLINED_FUNCTION_3_88();
    sub_1B95BD070();
LABEL_9:
    sub_1B8D9207C(v2, &qword_1EBAB8D98, &qword_1B964D598);
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_50(v2 + v3);
  if (!v12)
  {
    goto LABEL_9;
  }

  sub_1B8D9207C(v2, &qword_1EBAB8D90, &qword_1B964D590);
LABEL_11:
  v15 = OUTLINED_FUNCTION_66_9();
  if (*(v1 + v16) == *(v0 + v16))
  {
    v17 = v15;
    if (sub_1B8D92198(*(v1 + *(v15 + 24)), *(v1 + *(v15 + 24) + 8), *(v0 + *(v15 + 24))) && *(v1 + *(v17 + 28)) == *(v0 + *(v17 + 28)))
    {
      sub_1B964C2B0();
      OUTLINED_FUNCTION_0_113();
      v20 = sub_1B8CD3920(v18, v19, MEMORY[0x1E69AAC10]);
      OUTLINED_FUNCTION_634(v20);
    }
  }

LABEL_15:
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B95C40FC(uint64_t (*a1)(void), uint64_t a2, uint64_t a3, const char *a4)
{
  sub_1B964CA70();
  a1(0);
  v6 = OUTLINED_FUNCTION_461();
  sub_1B8CD3920(v6, v7, a4);
  sub_1B964C7E0();
  return sub_1B964CA90();
}

uint64_t sub_1B95C41DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD3920(&qword_1EBAD1C10, type metadata accessor for Searchfoundation_RFTableCell, protocol conformance descriptor for Searchfoundation_RFTableCell);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B95C425C(uint64_t a1)
{
  v2 = sub_1B8CD3920(&qword_1EBAD1AD8, type metadata accessor for Searchfoundation_RFTableCell, protocol conformance descriptor for Searchfoundation_RFTableCell);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B95C42CC(uint64_t a1, uint64_t a2)
{
  sub_1B8CD3920(&qword_1EBAD1AD8, type metadata accessor for Searchfoundation_RFTableCell, protocol conformance descriptor for Searchfoundation_RFTableCell);

  return sub_1B964C5D0();
}

unint64_t sub_1B95C434C()
{
  result = qword_1EBAD1AE0;
  if (!qword_1EBAD1AE0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Searchfoundation_RFTableHeaderInFlowLayout, &type metadata for Searchfoundation_RFTableHeaderInFlowLayout, v0, v1);
    atomic_store(result, &qword_1EBAD1AE0);
  }

  return result;
}

unint64_t sub_1B95C43A0()
{
  result = qword_1EBAD1AE8;
  if (!qword_1EBAD1AE8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Searchfoundation_RFTableRowVerticalAlignment, &type metadata for Searchfoundation_RFTableRowVerticalAlignment, v0, v1);
    atomic_store(result, &qword_1EBAD1AE8);
  }

  return result;
}

unint64_t sub_1B95C43F4()
{
  result = qword_1EBAD1B10;
  if (!qword_1EBAD1B10)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Searchfoundation_RFColumnHorizontalAlignment, &type metadata for Searchfoundation_RFColumnHorizontalAlignment, v0, v1);
    atomic_store(result, &qword_1EBAD1B10);
  }

  return result;
}

unint64_t sub_1B95C444C()
{
  result = qword_1EBAD1B28;
  if (!qword_1EBAD1B28)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Searchfoundation_RFTableHeaderInFlowLayout, &type metadata for Searchfoundation_RFTableHeaderInFlowLayout, v0, v1);
    atomic_store(result, &qword_1EBAD1B28);
  }

  return result;
}

unint64_t sub_1B95C44A4()
{
  result = qword_1EBAD1B30;
  if (!qword_1EBAD1B30)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Searchfoundation_RFTableHeaderInFlowLayout, &type metadata for Searchfoundation_RFTableHeaderInFlowLayout, v0, v1);
    atomic_store(result, &qword_1EBAD1B30);
  }

  return result;
}

unint64_t sub_1B95C44FC()
{
  result = qword_1EBAD1B38;
  if (!qword_1EBAD1B38)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Searchfoundation_RFTableHeaderInFlowLayout, &type metadata for Searchfoundation_RFTableHeaderInFlowLayout, v0, v1);
    atomic_store(result, &qword_1EBAD1B38);
  }

  return result;
}

unint64_t sub_1B95C4584()
{
  result = qword_1EBAD1B50;
  if (!qword_1EBAD1B50)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Searchfoundation_RFColumnHorizontalAlignment, &type metadata for Searchfoundation_RFColumnHorizontalAlignment, v0, v1);
    atomic_store(result, &qword_1EBAD1B50);
  }

  return result;
}

unint64_t sub_1B95C45DC()
{
  result = qword_1EBAD1B58;
  if (!qword_1EBAD1B58)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Searchfoundation_RFColumnHorizontalAlignment, &type metadata for Searchfoundation_RFColumnHorizontalAlignment, v0, v1);
    atomic_store(result, &qword_1EBAD1B58);
  }

  return result;
}

unint64_t sub_1B95C4634()
{
  result = qword_1EBAD1B60;
  if (!qword_1EBAD1B60)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Searchfoundation_RFColumnHorizontalAlignment, &type metadata for Searchfoundation_RFColumnHorizontalAlignment, v0, v1);
    atomic_store(result, &qword_1EBAD1B60);
  }

  return result;
}

unint64_t sub_1B95C46BC()
{
  result = qword_1EBAD1B78;
  if (!qword_1EBAD1B78)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Searchfoundation_RFTableRowVerticalAlignment, &type metadata for Searchfoundation_RFTableRowVerticalAlignment, v0, v1);
    atomic_store(result, &qword_1EBAD1B78);
  }

  return result;
}

unint64_t sub_1B95C4714()
{
  result = qword_1EBAD1B80;
  if (!qword_1EBAD1B80)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Searchfoundation_RFTableRowVerticalAlignment, &type metadata for Searchfoundation_RFTableRowVerticalAlignment, v0, v1);
    atomic_store(result, &qword_1EBAD1B80);
  }

  return result;
}

unint64_t sub_1B95C476C()
{
  result = qword_1EBAD1B88;
  if (!qword_1EBAD1B88)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Searchfoundation_RFTableRowVerticalAlignment, &type metadata for Searchfoundation_RFTableRowVerticalAlignment, v0, v1);
    atomic_store(result, &qword_1EBAD1B88);
  }

  return result;
}

void sub_1B95C4F08(uint64_t a1)
{
  sub_1B95C5018(319, &qword_1ED9D39A0, type metadata accessor for Searchfoundation_RFTableColumnDefinition, MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    sub_1B95C5018(319, &qword_1ED9D3A20, type metadata accessor for Searchfoundation_RFTableCell, MEMORY[0x1E69E62F8]);
    if (v2 <= 0x3F)
    {
      sub_1B964C2B0();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1B95C5018(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1B95C50A4(uint64_t a1)
{
  sub_1B95C5018(319, &qword_1ED9D3A20, type metadata accessor for Searchfoundation_RFTableCell, MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B95C5194(uint64_t a1)
{
  sub_1B95C5018(319, qword_1ED9DA068, type metadata accessor for Searchfoundation_RFTableColumnDefinition.OneOf_Definition, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1B95C52C4(uint64_t a1)
{
  result = sub_1B964C2B0();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1B95C538C(uint64_t a1)
{
  sub_1B95C5018(319, qword_1ED9E1120, type metadata accessor for Searchfoundation_RFTableCell.OneOf_Content, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1B95C5488(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(uint64_t))
{
  result = a4(319, a2, a3);
  if (v7 <= 0x3F)
  {
    result = a5(319);
    if (v8 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_49_17()
{

  return sub_1B8D92024();
}

uint64_t OUTLINED_FUNCTION_52_15()
{

  return swift_storeEnumTagMultiPayload();
}

uint64_t OUTLINED_FUNCTION_69_10()
{
  *(v0 + 16) = 1;
  type metadata accessor for Searchfoundation_RFTableContentColumnDefinition(0);
  *(v0 + 20) = 0;
  *(v0 + 28) = 0;

  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t OUTLINED_FUNCTION_77_11@<X0>(uint64_t a2@<X8>)
{
  *v2 = a2;
  *(v2 + 8) = 0;

  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t OUTLINED_FUNCTION_78_9()
{

  return sub_1B95BD324();
}

uint64_t Searchfoundation_RFTextProperty.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = MEMORY[0x1E69E7CC0];
  *(a1 + 8) = 0;
  type metadata accessor for Searchfoundation_RFTextProperty(0);
  return OUTLINED_FUNCTION_279();
}

uint64_t static Searchfoundation_RFTextProperty.== infix(_:_:)()
{
  OUTLINED_FUNCTION_468();
  sub_1B8D5BA08(*v2, *v3);
  if ((v4 & 1) == 0 || *(v1 + 8) != *(v0 + 8))
  {
    return 0;
  }

  type metadata accessor for Searchfoundation_RFTextProperty(0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_114();
  v8 = sub_1B8CD3968(v6, v7, MEMORY[0x1E69AAC10]);
  return OUTLINED_FUNCTION_634(v8) & 1;
}

uint64_t sub_1B95C58C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B95DAE54();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t static Searchfoundation_RFTextEncapsulationStyle.allCases.modify()
{
  OUTLINED_FUNCTION_288();
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  return OUTLINED_FUNCTION_19_2();
}

uint64_t sub_1B95C59B0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = static Searchfoundation_RFTextEncapsulationStyle.allCases.getter(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1B95C5A00(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B95DCEF0();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t static Searchfoundation_RFNamedFont.allCases.modify()
{
  OUTLINED_FUNCTION_288();
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  return OUTLINED_FUNCTION_19_2();
}

uint64_t sub_1B95C5AE8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = static Searchfoundation_RFNamedFont.allCases.getter(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1B95C5B50(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B95DAEA8();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t static Searchfoundation_RFWeight.allCases.modify()
{
  OUTLINED_FUNCTION_288();
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  return OUTLINED_FUNCTION_19_2();
}

uint64_t sub_1B95C5C38@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = static Searchfoundation_RFWeight.allCases.getter(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1B95C5C88(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B95DCE9C();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t static Searchfoundation_RFFontDesign.allCases.modify()
{
  OUTLINED_FUNCTION_288();
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  return OUTLINED_FUNCTION_19_2();
}

uint64_t sub_1B95C5D70@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = static Searchfoundation_RFFontDesign.allCases.getter(a1);
  *a2 = result;
  return result;
}

uint64_t Searchfoundation_RFTextProperty.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Searchfoundation_RFTextProperty(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t Searchfoundation_RFTextElement.showMoreOnTap.getter()
{
  v1 = OUTLINED_FUNCTION_236();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_183(v3);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_22_3();
  type metadata accessor for Searchfoundation_RFTextElement(v5);
  OUTLINED_FUNCTION_100_0();
  type metadata accessor for Searchfoundation_RFShowMoreOnTap(0);
  v6 = OUTLINED_FUNCTION_9_2();
  if (v7)
  {
    OUTLINED_FUNCTION_158_4(v6);
    result = OUTLINED_FUNCTION_9_2();
    if (!v7)
    {
      return sub_1B8D9207C(v0, &qword_1EBAB8DE8, &qword_1B96E0CB0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_6_50();
    OUTLINED_FUNCTION_182();
    return sub_1B95DAC6C();
  }

  return result;
}

uint64_t Searchfoundation_RFTextElement.showMoreOnTap.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Searchfoundation_RFTextElement(v1);
  sub_1B8D9207C(v0 + *(v2 + 28), &qword_1EBAB8DE8, &qword_1B96E0CB0);
  OUTLINED_FUNCTION_6_50();
  OUTLINED_FUNCTION_122_0();
  sub_1B95DAC6C();
  type metadata accessor for Searchfoundation_RFShowMoreOnTap(0);
  v3 = OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Searchfoundation_RFTextElement.showMoreOnTap.modify()
{
  OUTLINED_FUNCTION_243();
  v2 = OUTLINED_FUNCTION_212();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_86(v3);
  v4 = OUTLINED_FUNCTION_686();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_85(v8);
  *(v1 + 16) = type metadata accessor for Searchfoundation_RFShowMoreOnTap(v9);
  OUTLINED_FUNCTION_59_1();
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_202_0(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_89_0(v13);
  v15 = type metadata accessor for Searchfoundation_RFTextElement(v14);
  OUTLINED_FUNCTION_64_0(*(v15 + 28));
  OUTLINED_FUNCTION_16_2();
  if (v16)
  {
    OUTLINED_FUNCTION_157_6();
    OUTLINED_FUNCTION_16_2();
    if (!v16)
    {
      sub_1B8D9207C(v0, &qword_1EBAB8DE8, &qword_1B96E0CB0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_6_50();
    OUTLINED_FUNCTION_461();
    sub_1B95DAC6C();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_242();
}

void sub_1B95C60F0()
{
  OUTLINED_FUNCTION_243();
  OUTLINED_FUNCTION_67();
  if (v5)
  {
    OUTLINED_FUNCTION_128();
    sub_1B95DACC0();
    sub_1B8D9207C(v4 + v3, &qword_1EBAB8DE8, &qword_1B96E0CB0);
    OUTLINED_FUNCTION_6_50();
    OUTLINED_FUNCTION_220_6();
    OUTLINED_FUNCTION_30_2();
    OUTLINED_FUNCTION_47_18();
    sub_1B95DAC18();
  }

  else
  {
    sub_1B8D9207C(v4 + v3, &qword_1EBAB8DE8, &qword_1B96E0CB0);
    OUTLINED_FUNCTION_6_50();
    OUTLINED_FUNCTION_221_4();
    OUTLINED_FUNCTION_30_2();
  }

  free(v2);
  free(v0);
  free(v1);
  OUTLINED_FUNCTION_242();

  free(v6);
}

uint64_t Searchfoundation_RFTextElement.hasShowMoreOnTap.getter()
{
  v0 = OUTLINED_FUNCTION_514();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_183(v2);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_22_3();
  type metadata accessor for Searchfoundation_RFTextElement(v4);
  OUTLINED_FUNCTION_274_0();
  v5 = type metadata accessor for Searchfoundation_RFShowMoreOnTap(0);
  OUTLINED_FUNCTION_11(v5);
  return OUTLINED_FUNCTION_193_1();
}

Swift::Void __swiftcall Searchfoundation_RFTextElement.clearShowMoreOnTap()()
{
  v1 = type metadata accessor for Searchfoundation_RFTextElement(0);
  sub_1B8D9207C(v0 + *(v1 + 28), &qword_1EBAB8DE8, &qword_1B96E0CB0);
  type metadata accessor for Searchfoundation_RFShowMoreOnTap(0);
  v2 = OUTLINED_FUNCTION_59_2();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t sub_1B95C62B8()
{
  v0 = OUTLINED_FUNCTION_27();
  v1(v0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v2 = OUTLINED_FUNCTION_18_1();

  return v3(v2);
}

uint64_t sub_1B95C6340()
{
  v0 = OUTLINED_FUNCTION_313();
  v1(v0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v2 = OUTLINED_FUNCTION_209();

  return v3(v2);
}

uint64_t Searchfoundation_RFTextElement.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Searchfoundation_RFTextElement(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t Searchfoundation_RFTextElement.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = MEMORY[0x1E69E7CC0];
  *(a1 + 8) = 0;
  type metadata accessor for Searchfoundation_RFTextElement(0);
  OUTLINED_FUNCTION_279();
  type metadata accessor for Searchfoundation_RFShowMoreOnTap(0);
  OUTLINED_FUNCTION_83();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t Searchfoundation_RFShowMoreOnTap.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Searchfoundation_RFShowMoreOnTap(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t Searchfoundation_RFFormattedText.value.getter()
{
  OUTLINED_FUNCTION_17_31();
  OUTLINED_FUNCTION_521(v0 + OBJC_IVAR____TtCV10PegasusAPI32Searchfoundation_RFFormattedTextP33_D56F78EC12659560DB481273784C886413_StorageClass__value, v2);
  OUTLINED_FUNCTION_209();
  return sub_1B8D92024();
}

uint64_t sub_1B95C6548()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAD1D70, &unk_1B96E0CB8);
  MEMORY[0x1EEE9AC00](v0 - 8);
  sub_1B8D92024();
  return Searchfoundation_RFFormattedText.value.setter();
}

uint64_t Searchfoundation_RFFormattedText.value.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = *(type metadata accessor for Searchfoundation_RFFormattedText(v1) + 20);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    OUTLINED_FUNCTION_57_17();
    v3 = OUTLINED_FUNCTION_40_0();
    *(v0 + v2) = sub_1B95CF644(v3);
  }

  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Searchfoundation_RFFormattedText.value.modify()
{
  OUTLINED_FUNCTION_243();
  v2 = __swift_coroFrameAllocStub(0x50uLL);
  *(OUTLINED_FUNCTION_99(v2) + 48) = v0;
  v3 = OUTLINED_FUNCTION_177_1();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = *(v6 + 64);
  *(v1 + 56) = __swift_coroFrameAllocStub(v7);
  *(v1 + 64) = __swift_coroFrameAllocStub(v7);
  OUTLINED_FUNCTION_41_27();
  *(v1 + 72) = v8;
  OUTLINED_FUNCTION_521(*(v0 + v8) + OBJC_IVAR____TtCV10PegasusAPI32Searchfoundation_RFFormattedTextP33_D56F78EC12659560DB481273784C886413_StorageClass__value, v1);
  sub_1B8D92024();
  OUTLINED_FUNCTION_242();
}

void sub_1B95C6768(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v4 = *(v2 + 56);
    v3 = *(v2 + 64);
    OUTLINED_FUNCTION_466();
    sub_1B8D92024();
    Searchfoundation_RFFormattedText.value.setter();
    v5 = OUTLINED_FUNCTION_236();
    sub_1B8D9207C(v5, v6, &unk_1B96E0CB8);
  }

  else
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v7 = *(v2 + 72);
      v8 = *(v2 + 48);
      OUTLINED_FUNCTION_57_17();
      v9 = OUTLINED_FUNCTION_40_0();
      *(v8 + v7) = sub_1B95CF644(v9);
    }

    v4 = *(v2 + 56);
    v3 = *(v2 + 64);
    OUTLINED_FUNCTION_131();
    swift_beginAccess();
    sub_1B8DAA170();
    swift_endAccess();
  }

  free(v3);
  free(v4);

  free(v2);
}

uint64_t Searchfoundation_RFFormattedText.text.getter()
{
  v2 = OUTLINED_FUNCTION_303();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_183(v4);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_17_31();
  OUTLINED_FUNCTION_119_0(v1 + OBJC_IVAR____TtCV10PegasusAPI32Searchfoundation_RFFormattedTextP33_D56F78EC12659560DB481273784C886413_StorageClass__value);
  OUTLINED_FUNCTION_1399();
  type metadata accessor for Searchfoundation_RFFormattedText.OneOf_Value(0);
  OUTLINED_FUNCTION_37_0(v0);
  if (v6)
  {
    sub_1B8D9207C(v0, &qword_1EBAD1D70, &unk_1B96E0CB8);
    return 0;
  }

  OUTLINED_FUNCTION_432();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    OUTLINED_FUNCTION_7_52();
    sub_1B95DAC18();
    return 0;
  }

  return *v0;
}

uint64_t sub_1B95C6968(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Searchfoundation_RFFormattedText.text.setter(v1, v2);
}

uint64_t Searchfoundation_RFFormattedText.text.setter(uint64_t a1, uint64_t a2)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAD1D70, &unk_1B96E0CB8);
  OUTLINED_FUNCTION_183(v6);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_139();
  v8 = *(type metadata accessor for Searchfoundation_RFFormattedText(0) + 20);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    OUTLINED_FUNCTION_57_17();
    v9 = OUTLINED_FUNCTION_40_0();
    *(v3 + v8) = sub_1B95CF644(v9);
  }

  *v2 = a1;
  v2[1] = a2;
  v10 = type metadata accessor for Searchfoundation_RFFormattedText.OneOf_Value(0);
  OUTLINED_FUNCTION_514();
  swift_storeEnumTagMultiPayload();
  v11 = OUTLINED_FUNCTION_53_0();
  __swift_storeEnumTagSinglePayload(v11, v12, v13, v10);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Searchfoundation_RFFormattedText.text.modify()
{
  OUTLINED_FUNCTION_243();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  *v0 = v3;
  v3[5] = v1;
  v4 = OUTLINED_FUNCTION_1_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v3[6] = v8;
  OUTLINED_FUNCTION_17_31();
  OUTLINED_FUNCTION_521(v1 + OBJC_IVAR____TtCV10PegasusAPI32Searchfoundation_RFFormattedTextP33_D56F78EC12659560DB481273784C886413_StorageClass__value, v3);
  OUTLINED_FUNCTION_176_2();
  sub_1B8D92024();
  type metadata accessor for Searchfoundation_RFFormattedText.OneOf_Value(0);
  OUTLINED_FUNCTION_28_13();
  OUTLINED_FUNCTION_178(v9, v10, v11);
  if (v12)
  {
    sub_1B8D9207C(v8, &qword_1EBAD1D70, &unk_1B96E0CB8);
  }

  else
  {
    OUTLINED_FUNCTION_303();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload != 1)
    {
      v14 = *v8;
      v15 = v8[1];
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_7_52();
    sub_1B95DAC18();
  }

  v14 = 0;
  v15 = 0xE000000000000000;
LABEL_8:
  v3[3] = v14;
  v3[4] = v15;
  OUTLINED_FUNCTION_242();
}

void sub_1B95C6BD0(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 48);
  if (a2)
  {

    v4 = OUTLINED_FUNCTION_186();
    Searchfoundation_RFFormattedText.text.setter(v4, v5);
  }

  else
  {
    v6 = OUTLINED_FUNCTION_186();
    Searchfoundation_RFFormattedText.text.setter(v6, v7);
  }

  free(v3);

  free(v2);
}

uint64_t Searchfoundation_RFFormattedText.inlineImageElement.getter@<X0>(void *a1@<X8>)
{
  v4 = OUTLINED_FUNCTION_236();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v7);
  v8 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_43_21(v8);
  OUTLINED_FUNCTION_119_0(v1 + OBJC_IVAR____TtCV10PegasusAPI32Searchfoundation_RFFormattedTextP33_D56F78EC12659560DB481273784C886413_StorageClass__value);
  OUTLINED_FUNCTION_106_0();
  type metadata accessor for Searchfoundation_RFFormattedText.OneOf_Value(0);
  OUTLINED_FUNCTION_9_2();
  if (v9)
  {
    sub_1B8D9207C(v2, &qword_1EBAD1D70, &unk_1B96E0CB8);
  }

  else
  {
    OUTLINED_FUNCTION_461();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 1)
    {
      OUTLINED_FUNCTION_28_28();
      OUTLINED_FUNCTION_182();
      return sub_1B95DAC6C();
    }

    OUTLINED_FUNCTION_7_52();
    sub_1B95DAC18();
  }

  *a1 = MEMORY[0x1E69E7CC0];
  v12 = type metadata accessor for Searchfoundation_RFImageElement(0);
  return OUTLINED_FUNCTION_163_2(v12);
}

uint64_t sub_1B95C6D5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6, uint64_t (*a7)(uint64_t))
{
  v9 = (a5)(0, a2, a3, a4);
  OUTLINED_FUNCTION_183(v9);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_79();
  OUTLINED_FUNCTION_177_1();
  sub_1B95DACC0();
  return a7(v7);
}

uint64_t Searchfoundation_RFFormattedText.inlineImageElement.setter()
{
  OUTLINED_FUNCTION_183_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAD1D70, &unk_1B96E0CB8);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_139();
  if ((OUTLINED_FUNCTION_71_13() & 1) == 0)
  {
    OUTLINED_FUNCTION_57_17();
    v2 = OUTLINED_FUNCTION_40_0();
    v3 = sub_1B95CF644(v2);
    OUTLINED_FUNCTION_135(v3);
  }

  OUTLINED_FUNCTION_28_28();
  OUTLINED_FUNCTION_175_7();
  v4 = type metadata accessor for Searchfoundation_RFFormattedText.OneOf_Value(0);
  OUTLINED_FUNCTION_514();
  swift_storeEnumTagMultiPayload();
  v5 = OUTLINED_FUNCTION_53_0();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v4);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Searchfoundation_RFFormattedText.inlineImageElement.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_491();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_26_3(v8);
  type metadata accessor for Searchfoundation_RFImageElement(v9);
  OUTLINED_FUNCTION_59_1();
  v11 = *(v10 + 64);
  *(v1 + 40) = __swift_coroFrameAllocStub(v11);
  v12 = __swift_coroFrameAllocStub(v11);
  *(v1 + 48) = v12;
  OUTLINED_FUNCTION_17_31();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_30_7();
  type metadata accessor for Searchfoundation_RFFormattedText.OneOf_Value(0);
  OUTLINED_FUNCTION_37_0(v0);
  if (v13)
  {
    sub_1B8D9207C(v0, &qword_1EBAD1D70, &unk_1B96E0CB8);
LABEL_7:
    *v12 = MEMORY[0x1E69E7CC0];
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_128();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 1)
  {
    OUTLINED_FUNCTION_7_52();
    sub_1B95DAC18();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_28_28();
  OUTLINED_FUNCTION_177_1();
  sub_1B95DAC6C();
LABEL_8:
  OUTLINED_FUNCTION_283();
}

uint64_t Searchfoundation_RFFormattedText.color.setter()
{
  OUTLINED_FUNCTION_183_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8DB8, &unk_1B96D9DC0);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_139();
  if ((OUTLINED_FUNCTION_71_13() & 1) == 0)
  {
    OUTLINED_FUNCTION_57_17();
    v2 = OUTLINED_FUNCTION_40_0();
    v3 = sub_1B95CF644(v2);
    OUTLINED_FUNCTION_135(v3);
  }

  OUTLINED_FUNCTION_8_51();
  OUTLINED_FUNCTION_175_7();
  type metadata accessor for Searchfoundation_RFColor(0);
  v4 = OUTLINED_FUNCTION_53_0();
  __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Searchfoundation_RFFormattedText.color.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_491();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_71(v8);
  type metadata accessor for Searchfoundation_RFColor(v9);
  OUTLINED_FUNCTION_59_1();
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_187(v11);
  *(v1 + 48) = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_17_31();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_17_2();
  if (v13)
  {
    type metadata accessor for Searchfoundation_RFColor.OneOf_Value(0);
    OUTLINED_FUNCTION_83();
    v18 = __swift_storeEnumTagSinglePayload(v14, v15, v16, v17);
    OUTLINED_FUNCTION_282_2(v18);
    type metadata accessor for Searchfoundation_RFOptionalFloat(0);
    OUTLINED_FUNCTION_83();
    __swift_storeEnumTagSinglePayload(v19, v20, v21, v22);
    OUTLINED_FUNCTION_17_2();
    if (!v13)
    {
      sub_1B8D9207C(v0, &qword_1EBAB8DB8, &unk_1B96D9DC0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_8_51();
    OUTLINED_FUNCTION_246();
    sub_1B95DAC6C();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

void sub_1B95C72D0()
{
  OUTLINED_FUNCTION_243();
  v2 = v1;
  v3 = *(*v0 + 40);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 32);
  if (v6)
  {
    OUTLINED_FUNCTION_186();
    sub_1B95DACC0();
    v2(v3);
    OUTLINED_FUNCTION_690();
    sub_1B95DAC18();
  }

  else
  {
    v1(*(*v0 + 48));
  }

  free(v4);
  free(v3);
  free(v5);
  OUTLINED_FUNCTION_242();

  free(v7);
}

uint64_t Searchfoundation_RFFormattedText.isItalic.setter()
{
  OUTLINED_FUNCTION_183_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAD1D78, &qword_1B96E0CC8);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_139();
  if ((OUTLINED_FUNCTION_71_13() & 1) == 0)
  {
    OUTLINED_FUNCTION_57_17();
    v2 = OUTLINED_FUNCTION_40_0();
    v3 = sub_1B95CF644(v2);
    OUTLINED_FUNCTION_135(v3);
  }

  OUTLINED_FUNCTION_3_89();
  OUTLINED_FUNCTION_175_7();
  type metadata accessor for Searchfoundation_RFOptionalBool(0);
  v4 = OUTLINED_FUNCTION_53_0();
  __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Searchfoundation_RFFormattedText.isItalic.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_491();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_26_3(v8);
  type metadata accessor for Searchfoundation_RFOptionalBool(v9);
  OUTLINED_FUNCTION_59_1();
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_187(v11);
  *(v1 + 48) = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_17_31();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_30_7();
  v13 = OUTLINED_FUNCTION_16_2();
  if (v14)
  {
    OUTLINED_FUNCTION_171_5(v13);
    OUTLINED_FUNCTION_16_2();
    if (!v14)
    {
      sub_1B8D9207C(v0, &qword_1EBAD1D78, &qword_1B96E0CC8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_3_89();
    OUTLINED_FUNCTION_461();
    sub_1B95DAC6C();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B95C7634(uint64_t a1, uint64_t a2, void *a3, void (*a4)(void))
{
  OUTLINED_FUNCTION_16();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(v10, v11);
  OUTLINED_FUNCTION_183(v12);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_137();
  OUTLINED_FUNCTION_17_31();
  OUTLINED_FUNCTION_119_0(v5 + *a3);
  sub_1B8D92024();
  v14 = (a4)(0);
  OUTLINED_FUNCTION_178(v7, 1, v14);
  if (v15)
  {
    v16 = 0;
  }

  else
  {
    v16 = 1;
  }

  sub_1B8D9207C(v7, v6, v4);
  return v16;
}

void sub_1B95C7728()
{
  OUTLINED_FUNCTION_243();
  v2 = v1;
  OUTLINED_FUNCTION_16();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_79();
  v7 = *(type metadata accessor for Searchfoundation_RFFormattedText(0) + 20);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    OUTLINED_FUNCTION_57_17();
    v8 = OUTLINED_FUNCTION_40_0();
    *(v0 + v7) = sub_1B95CF644(v8);
  }

  v2(0);
  OUTLINED_FUNCTION_83();
  __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  OUTLINED_FUNCTION_242();
}

uint64_t Searchfoundation_RFFormattedText.isBold.setter()
{
  OUTLINED_FUNCTION_183_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAD1D78, &qword_1B96E0CC8);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_139();
  if ((OUTLINED_FUNCTION_71_13() & 1) == 0)
  {
    OUTLINED_FUNCTION_57_17();
    v2 = OUTLINED_FUNCTION_40_0();
    v3 = sub_1B95CF644(v2);
    OUTLINED_FUNCTION_135(v3);
  }

  OUTLINED_FUNCTION_3_89();
  OUTLINED_FUNCTION_175_7();
  type metadata accessor for Searchfoundation_RFOptionalBool(0);
  v4 = OUTLINED_FUNCTION_53_0();
  __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Searchfoundation_RFFormattedText.isBold.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_491();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_26_3(v8);
  type metadata accessor for Searchfoundation_RFOptionalBool(v9);
  OUTLINED_FUNCTION_59_1();
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_187(v11);
  *(v1 + 48) = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_17_31();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_30_7();
  v13 = OUTLINED_FUNCTION_16_2();
  if (v14)
  {
    OUTLINED_FUNCTION_171_5(v13);
    OUTLINED_FUNCTION_16_2();
    if (!v14)
    {
      sub_1B8D9207C(v0, &qword_1EBAD1D78, &qword_1B96E0CC8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_3_89();
    OUTLINED_FUNCTION_461();
    sub_1B95DAC6C();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Searchfoundation_RFFormattedText.textEncapsulation.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = OUTLINED_FUNCTION_236();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v7);
  v8 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_43_21(v8);
  OUTLINED_FUNCTION_119_0(v1 + OBJC_IVAR____TtCV10PegasusAPI32Searchfoundation_RFFormattedTextP33_D56F78EC12659560DB481273784C886413_StorageClass__textEncapsulation);
  OUTLINED_FUNCTION_106_0();
  type metadata accessor for Searchfoundation_RFTextEncapsulation(0);
  OUTLINED_FUNCTION_9_2();
  if (v9)
  {
    *a1 = 0;
    *(a1 + 8) = 1;
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    result = OUTLINED_FUNCTION_9_2();
    if (!v9)
    {
      return sub_1B8D9207C(v2, &qword_1EBAD1D80, &qword_1B96E0CD0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_26_28();
    OUTLINED_FUNCTION_182();
    return sub_1B95DAC6C();
  }

  return result;
}

uint64_t Searchfoundation_RFFormattedText.textEncapsulation.setter()
{
  OUTLINED_FUNCTION_183_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAD1D80, &qword_1B96E0CD0);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_139();
  if ((OUTLINED_FUNCTION_71_13() & 1) == 0)
  {
    OUTLINED_FUNCTION_57_17();
    v2 = OUTLINED_FUNCTION_40_0();
    v3 = sub_1B95CF644(v2);
    OUTLINED_FUNCTION_135(v3);
  }

  OUTLINED_FUNCTION_26_28();
  OUTLINED_FUNCTION_175_7();
  type metadata accessor for Searchfoundation_RFTextEncapsulation(0);
  v4 = OUTLINED_FUNCTION_53_0();
  __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

uint64_t Searchfoundation_RFTextEncapsulation.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  v1 = type metadata accessor for Searchfoundation_RFTextEncapsulation(0);
  return OUTLINED_FUNCTION_163_2(v1);
}

void Searchfoundation_RFFormattedText.textEncapsulation.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_491();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_71(v8);
  type metadata accessor for Searchfoundation_RFTextEncapsulation(v9);
  OUTLINED_FUNCTION_59_1();
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_187(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  *(v1 + 48) = v13;
  OUTLINED_FUNCTION_17_31();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_82();
  v14 = OUTLINED_FUNCTION_17_2();
  if (v15)
  {
    *v13 = 0;
    v13[8] = 1;
    OUTLINED_FUNCTION_282_2(v14);
    OUTLINED_FUNCTION_17_2();
    if (!v15)
    {
      sub_1B8D9207C(v0, &qword_1EBAD1D80, &qword_1B96E0CD0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_26_28();
    OUTLINED_FUNCTION_246();
    sub_1B95DAC6C();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Searchfoundation_RFFormattedText.isHighlighted.setter()
{
  OUTLINED_FUNCTION_183_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAD1D78, &qword_1B96E0CC8);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_139();
  if ((OUTLINED_FUNCTION_71_13() & 1) == 0)
  {
    OUTLINED_FUNCTION_57_17();
    v2 = OUTLINED_FUNCTION_40_0();
    v3 = sub_1B95CF644(v2);
    OUTLINED_FUNCTION_135(v3);
  }

  OUTLINED_FUNCTION_3_89();
  OUTLINED_FUNCTION_175_7();
  type metadata accessor for Searchfoundation_RFOptionalBool(0);
  v4 = OUTLINED_FUNCTION_53_0();
  __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Searchfoundation_RFFormattedText.isHighlighted.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_491();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_26_3(v8);
  type metadata accessor for Searchfoundation_RFOptionalBool(v9);
  OUTLINED_FUNCTION_59_1();
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_187(v11);
  *(v1 + 48) = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_17_31();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_30_7();
  v13 = OUTLINED_FUNCTION_16_2();
  if (v14)
  {
    OUTLINED_FUNCTION_171_5(v13);
    OUTLINED_FUNCTION_16_2();
    if (!v14)
    {
      sub_1B8D9207C(v0, &qword_1EBAD1D78, &qword_1B96E0CC8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_3_89();
    OUTLINED_FUNCTION_461();
    sub_1B95DAC6C();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B95C8104(void *a1)
{
  v4 = OUTLINED_FUNCTION_690();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_17_31();
  OUTLINED_FUNCTION_119_0(v2 + *a1);
  OUTLINED_FUNCTION_209();
  sub_1B8D92024();
  type metadata accessor for Searchfoundation_RFColor(0);
  OUTLINED_FUNCTION_57(v1);
  if (!v8)
  {
    return sub_1B95DAC6C();
  }

  type metadata accessor for Searchfoundation_RFColor.OneOf_Value(0);
  OUTLINED_FUNCTION_83();
  __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  type metadata accessor for Searchfoundation_RFOptionalFloat(0);
  OUTLINED_FUNCTION_83();
  __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
  result = OUTLINED_FUNCTION_57(v1);
  if (!v8)
  {
    return sub_1B8D9207C(v1, &qword_1EBAB8DB8, &unk_1B96D9DC0);
  }

  return result;
}

uint64_t Searchfoundation_RFFormattedText.backgroundColor.setter()
{
  OUTLINED_FUNCTION_183_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8DB8, &unk_1B96D9DC0);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_139();
  if ((OUTLINED_FUNCTION_71_13() & 1) == 0)
  {
    OUTLINED_FUNCTION_57_17();
    v2 = OUTLINED_FUNCTION_40_0();
    v3 = sub_1B95CF644(v2);
    OUTLINED_FUNCTION_135(v3);
  }

  OUTLINED_FUNCTION_8_51();
  OUTLINED_FUNCTION_175_7();
  type metadata accessor for Searchfoundation_RFColor(0);
  v4 = OUTLINED_FUNCTION_53_0();
  __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Searchfoundation_RFFormattedText.backgroundColor.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_491();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_71(v8);
  type metadata accessor for Searchfoundation_RFColor(v9);
  OUTLINED_FUNCTION_59_1();
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_187(v11);
  *(v1 + 48) = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_17_31();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_17_2();
  if (v13)
  {
    type metadata accessor for Searchfoundation_RFColor.OneOf_Value(0);
    OUTLINED_FUNCTION_83();
    v18 = __swift_storeEnumTagSinglePayload(v14, v15, v16, v17);
    OUTLINED_FUNCTION_282_2(v18);
    type metadata accessor for Searchfoundation_RFOptionalFloat(0);
    OUTLINED_FUNCTION_83();
    __swift_storeEnumTagSinglePayload(v19, v20, v21, v22);
    OUTLINED_FUNCTION_17_2();
    if (!v13)
    {
      sub_1B8D9207C(v0, &qword_1EBAB8DB8, &unk_1B96D9DC0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_8_51();
    OUTLINED_FUNCTION_246();
    sub_1B95DAC6C();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Searchfoundation_RFFormattedText.attributions.modify()
{
  v2 = __swift_coroFrameAllocStub(0x48uLL);
  *(OUTLINED_FUNCTION_99(v2) + 56) = v0;
  OUTLINED_FUNCTION_41_27();
  *(v1 + 64) = v3;
  v4 = *(v0 + v3);
  v5 = OBJC_IVAR____TtCV10PegasusAPI32Searchfoundation_RFFormattedTextP33_D56F78EC12659560DB481273784C886413_StorageClass__attributions;
  OUTLINED_FUNCTION_521(v4 + OBJC_IVAR____TtCV10PegasusAPI32Searchfoundation_RFFormattedTextP33_D56F78EC12659560DB481273784C886413_StorageClass__attributions, v1);
  *(v1 + 48) = *(v4 + v5);

  return OUTLINED_FUNCTION_514();
}

uint64_t sub_1B95C85F0(uint64_t *a1)
{
  OUTLINED_FUNCTION_17_31();
  OUTLINED_FUNCTION_521(v1 + *a1, v4);
}

uint64_t sub_1B95C866C(uint64_t a1, uint64_t *a2)
{
  v6 = OUTLINED_FUNCTION_71_13();
  v7 = *(v2 + v3);
  if ((v6 & 1) == 0)
  {
    OUTLINED_FUNCTION_57_17();
    v8 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B95CF644(v8);
    OUTLINED_FUNCTION_135(v9);
  }

  v10 = *a2;
  OUTLINED_FUNCTION_18(v7 + v10, v12);
  *(v7 + v10) = a1;
}

uint64_t Searchfoundation_RFFormattedText.highlightedSubstrings.modify()
{
  v2 = __swift_coroFrameAllocStub(0x48uLL);
  *(OUTLINED_FUNCTION_99(v2) + 56) = v0;
  OUTLINED_FUNCTION_41_27();
  *(v1 + 64) = v3;
  v4 = *(v0 + v3);
  v5 = OBJC_IVAR____TtCV10PegasusAPI32Searchfoundation_RFFormattedTextP33_D56F78EC12659560DB481273784C886413_StorageClass__highlightedSubstrings;
  OUTLINED_FUNCTION_521(v4 + OBJC_IVAR____TtCV10PegasusAPI32Searchfoundation_RFFormattedTextP33_D56F78EC12659560DB481273784C886413_StorageClass__highlightedSubstrings, v1);
  *(v1 + 48) = *(v4 + v5);

  return OUTLINED_FUNCTION_514();
}

void sub_1B95C8788(uint64_t *a1, char a2, uint64_t *a3, void (*a4)(uint64_t))
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
      v13 = *(v4 + 64);
      v14 = *(v4 + 56);
      OUTLINED_FUNCTION_57_17();
      v15 = OUTLINED_FUNCTION_40_0();
      v12 = sub_1B95CF644(v15);
      *(v14 + v13) = v12;
    }

    v16 = *a3;
    OUTLINED_FUNCTION_18(v12 + v16, v4 + 24);
    *(v12 + v16) = v5;
  }

  free(v4);
}

uint64_t Searchfoundation_RFFormattedText.font.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = OUTLINED_FUNCTION_236();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v7);
  v8 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_43_21(v8);
  OUTLINED_FUNCTION_119_0(v1 + OBJC_IVAR____TtCV10PegasusAPI32Searchfoundation_RFFormattedTextP33_D56F78EC12659560DB481273784C886413_StorageClass__font);
  OUTLINED_FUNCTION_106_0();
  v9 = type metadata accessor for Searchfoundation_RFFont(0);
  OUTLINED_FUNCTION_9_2();
  if (v10)
  {
    type metadata accessor for Searchfoundation_RFFont.OneOf_Value(0);
    OUTLINED_FUNCTION_129();
    OUTLINED_FUNCTION_83();
    __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
    *(a1 + *(v9 + 20)) = 0;
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    result = OUTLINED_FUNCTION_9_2();
    if (!v10)
    {
      return sub_1B8D9207C(v2, &qword_1EBAD1D88, &qword_1B96E0CD8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_21_30();
    OUTLINED_FUNCTION_182();
    return sub_1B95DAC6C();
  }

  return result;
}

uint64_t Searchfoundation_RFFormattedText.font.setter()
{
  OUTLINED_FUNCTION_183_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAD1D88, &qword_1B96E0CD8);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_139();
  if ((OUTLINED_FUNCTION_71_13() & 1) == 0)
  {
    OUTLINED_FUNCTION_57_17();
    v2 = OUTLINED_FUNCTION_40_0();
    v3 = sub_1B95CF644(v2);
    OUTLINED_FUNCTION_135(v3);
  }

  OUTLINED_FUNCTION_21_30();
  OUTLINED_FUNCTION_175_7();
  type metadata accessor for Searchfoundation_RFFont(0);
  v4 = OUTLINED_FUNCTION_53_0();
  __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

uint64_t Searchfoundation_RFFont.init()()
{
  v1 = OUTLINED_FUNCTION_27();
  type metadata accessor for Searchfoundation_RFFont.OneOf_Value(v1);
  OUTLINED_FUNCTION_129();
  OUTLINED_FUNCTION_83();
  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  OUTLINED_FUNCTION_188_4();
  *(v0 + v6) = 0;
  return OUTLINED_FUNCTION_279();
}

void Searchfoundation_RFFormattedText.font.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_491();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_71(v8);
  v10 = type metadata accessor for Searchfoundation_RFFont(v9);
  OUTLINED_FUNCTION_59_1();
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_187(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  *(v1 + 48) = v14;
  OUTLINED_FUNCTION_17_31();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_17_2();
  if (v15)
  {
    type metadata accessor for Searchfoundation_RFFont.OneOf_Value(0);
    OUTLINED_FUNCTION_83();
    __swift_storeEnumTagSinglePayload(v16, v17, v18, v19);
    v14[*(v10 + 20)] = 0;
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    OUTLINED_FUNCTION_17_2();
    if (!v15)
    {
      sub_1B8D9207C(v0, &qword_1EBAD1D88, &qword_1B96E0CD8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_21_30();
    OUTLINED_FUNCTION_246();
    sub_1B95DAC6C();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B95C8C44@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v6 = OUTLINED_FUNCTION_690();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
  OUTLINED_FUNCTION_183(v8);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v9);
  v10 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_43_21(v10);
  OUTLINED_FUNCTION_119_0(v2 + *a1);
  OUTLINED_FUNCTION_466();
  sub_1B8D92024();
  type metadata accessor for Searchfoundation_RFOptionalBool(0);
  OUTLINED_FUNCTION_9_2();
  if (v11)
  {
    *a2 = 0;
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    result = OUTLINED_FUNCTION_9_2();
    if (!v11)
    {
      return sub_1B8D9207C(v3, &qword_1EBAD1D78, &qword_1B96E0CC8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_182();
    return sub_1B95DAC6C();
  }

  return result;
}

uint64_t Searchfoundation_RFFormattedText.isUnderlined.setter()
{
  OUTLINED_FUNCTION_183_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAD1D78, &qword_1B96E0CC8);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_139();
  if ((OUTLINED_FUNCTION_71_13() & 1) == 0)
  {
    OUTLINED_FUNCTION_57_17();
    v2 = OUTLINED_FUNCTION_40_0();
    v3 = sub_1B95CF644(v2);
    OUTLINED_FUNCTION_135(v3);
  }

  OUTLINED_FUNCTION_3_89();
  OUTLINED_FUNCTION_175_7();
  type metadata accessor for Searchfoundation_RFOptionalBool(0);
  v4 = OUTLINED_FUNCTION_53_0();
  __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Searchfoundation_RFFormattedText.isUnderlined.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_491();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_26_3(v8);
  type metadata accessor for Searchfoundation_RFOptionalBool(v9);
  OUTLINED_FUNCTION_59_1();
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_187(v11);
  *(v1 + 48) = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_17_31();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_30_7();
  v13 = OUTLINED_FUNCTION_16_2();
  if (v14)
  {
    OUTLINED_FUNCTION_171_5(v13);
    OUTLINED_FUNCTION_16_2();
    if (!v14)
    {
      sub_1B8D9207C(v0, &qword_1EBAD1D78, &qword_1B96E0CC8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_3_89();
    OUTLINED_FUNCTION_461();
    sub_1B95DAC6C();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Searchfoundation_RFFormattedText.engageable.getter()
{
  v2 = OUTLINED_FUNCTION_236();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_183(v4);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_43_21(v6);
  OUTLINED_FUNCTION_119_0(v0 + OBJC_IVAR____TtCV10PegasusAPI32Searchfoundation_RFFormattedTextP33_D56F78EC12659560DB481273784C886413_StorageClass__engageable);
  OUTLINED_FUNCTION_106_0();
  type metadata accessor for Searchfoundation_RFEngageable(0);
  OUTLINED_FUNCTION_9_2();
  if (v7)
  {
    type metadata accessor for Searchfoundation_RFEngageable.OneOf_EngageableOneof(0);
    OUTLINED_FUNCTION_129();
    OUTLINED_FUNCTION_83();
    __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    result = OUTLINED_FUNCTION_9_2();
    if (!v7)
    {
      return sub_1B8D9207C(v1, &qword_1EBAD1D90, &qword_1B96E0CE0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_29_37();
    OUTLINED_FUNCTION_182();
    return sub_1B95DAC6C();
  }

  return result;
}

uint64_t Searchfoundation_RFFormattedText.engageable.setter()
{
  OUTLINED_FUNCTION_183_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAD1D90, &qword_1B96E0CE0);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_139();
  if ((OUTLINED_FUNCTION_71_13() & 1) == 0)
  {
    OUTLINED_FUNCTION_57_17();
    v2 = OUTLINED_FUNCTION_40_0();
    v3 = sub_1B95CF644(v2);
    OUTLINED_FUNCTION_135(v3);
  }

  OUTLINED_FUNCTION_29_37();
  OUTLINED_FUNCTION_175_7();
  type metadata accessor for Searchfoundation_RFEngageable(0);
  v4 = OUTLINED_FUNCTION_53_0();
  __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

uint64_t Searchfoundation_RFEngageable.init()()
{
  v0 = OUTLINED_FUNCTION_27();
  type metadata accessor for Searchfoundation_RFEngageable.OneOf_EngageableOneof(v0);
  OUTLINED_FUNCTION_129();
  OUTLINED_FUNCTION_83();
  __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
  v5 = type metadata accessor for Searchfoundation_RFEngageable(0);
  return OUTLINED_FUNCTION_163_2(v5);
}

void Searchfoundation_RFFormattedText.engageable.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_491();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_71(v8);
  type metadata accessor for Searchfoundation_RFEngageable(v9);
  OUTLINED_FUNCTION_59_1();
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_187(v11);
  *(v1 + 48) = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_17_31();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_17_2();
  if (v13)
  {
    type metadata accessor for Searchfoundation_RFEngageable.OneOf_EngageableOneof(0);
    OUTLINED_FUNCTION_83();
    v18 = __swift_storeEnumTagSinglePayload(v14, v15, v16, v17);
    OUTLINED_FUNCTION_282_2(v18);
    OUTLINED_FUNCTION_17_2();
    if (!v13)
    {
      sub_1B8D9207C(v0, &qword_1EBAD1D90, &qword_1B96E0CE0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_29_37();
    OUTLINED_FUNCTION_246();
    sub_1B95DAC6C();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Searchfoundation_RFFormattedText.weight.modify()
{
  v2 = __swift_coroFrameAllocStub(0x60uLL);
  *(OUTLINED_FUNCTION_99(v2) + 88) = v0;
  OUTLINED_FUNCTION_41_27();
  *(v1 + 84) = v3;
  v4 = OUTLINED_FUNCTION_543();
  OUTLINED_FUNCTION_521(v4, v5);
  OUTLINED_FUNCTION_117_0();
  return OUTLINED_FUNCTION_105_0();
}

uint64_t sub_1B95C9448@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = OUTLINED_FUNCTION_41_27();
  v7 = *(v2 + v6) + *a1;
  result = OUTLINED_FUNCTION_6_2(v5);
  v9 = *(v7 + 8);
  *a2 = *v7;
  *(a2 + 8) = v9;
  return result;
}

uint64_t sub_1B95C94AC(uint64_t *a1, void *a2)
{
  v4 = v2;
  v5 = *a1;
  v6 = *(a1 + 8);
  v7 = *(type metadata accessor for Searchfoundation_RFFormattedText(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v2 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_57_17();
    v10 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B95CF644(v10);
    *(v4 + v7) = v9;
  }

  v11 = v9 + *a2;
  result = OUTLINED_FUNCTION_18(v11, v13);
  *v11 = v5;
  *(v11 + 8) = v6;
  return result;
}

uint64_t Searchfoundation_RFFormattedText.design.modify()
{
  v2 = __swift_coroFrameAllocStub(0x60uLL);
  *(OUTLINED_FUNCTION_99(v2) + 88) = v0;
  OUTLINED_FUNCTION_41_27();
  *(v1 + 84) = v3;
  v4 = OUTLINED_FUNCTION_543();
  OUTLINED_FUNCTION_521(v4, v5);
  OUTLINED_FUNCTION_117_0();
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B95C95C0()
{
  OUTLINED_FUNCTION_243();
  v1 = v0;
  v3 = v2;
  v5 = *v4;
  v6 = *(*v4 + 72);
  v7 = *(*v4 + 84);
  v8 = *(*v4 + 88);
  v9 = *(*v4 + 80);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v8 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = *(v5 + 84);
    v13 = *(v5 + 88);
    OUTLINED_FUNCTION_57_17();
    v14 = OUTLINED_FUNCTION_40_0();
    v11 = sub_1B95CF644(v14);
    *(v13 + v12) = v11;
  }

  v15 = 48;
  if (v3)
  {
    v15 = 24;
  }

  v16 = v11 + *v1;
  OUTLINED_FUNCTION_18(v16, v5 + v15);
  *v16 = v6;
  *(v16 + 8) = v9;
  OUTLINED_FUNCTION_242();

  free(v17);
}

uint64_t Searchfoundation_RFFormattedText.unknownFields.getter()
{
  OUTLINED_FUNCTION_27();
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v0 = OUTLINED_FUNCTION_432();

  return v1(v0);
}

uint64_t Searchfoundation_RFFormattedText.unknownFields.setter()
{
  OUTLINED_FUNCTION_313();
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v0 = OUTLINED_FUNCTION_288();

  return v1(v0);
}

uint64_t Searchfoundation_RFFormattedText.init()@<X0>(uint64_t a2@<X8>)
{
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v3 = *(type metadata accessor for Searchfoundation_RFFormattedText(0) + 20);
  if (qword_1ED9D2AD8 != -1)
  {
    swift_once();
  }

  *(a2 + v3) = qword_1ED9D2AE0;
}

uint64_t Searchfoundation_RFEngageable.commandReference.getter()
{
  OUTLINED_FUNCTION_180_3();
  v1 = OUTLINED_FUNCTION_177_1();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_183(v3);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_27_9();
  type metadata accessor for Searchfoundation_RFEngageable.OneOf_EngageableOneof(0);
  v5 = OUTLINED_FUNCTION_157_4();
  OUTLINED_FUNCTION_57(v5);
  if (v6)
  {
    sub_1B8D9207C(v0, &qword_1EBAD1DA0, &qword_1B96E0CF0);
LABEL_6:
    v8 = OUTLINED_FUNCTION_61_3();
    v9 = type metadata accessor for Searchfoundation_CommandReference(v8);
    return OUTLINED_FUNCTION_163_2(v9);
  }

  OUTLINED_FUNCTION_543();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    sub_1B95DAC18();
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_1_98();
  OUTLINED_FUNCTION_288();
  return sub_1B95DAC6C();
}

void Searchfoundation_RFEngageable.commandReference.modify()
{
  OUTLINED_FUNCTION_243();
  v2 = OUTLINED_FUNCTION_25_4();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_86(v3);
  v4 = OUTLINED_FUNCTION_686();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_85(v8);
  type metadata accessor for Searchfoundation_CommandReference(v9);
  OUTLINED_FUNCTION_59_1();
  v11 = *(v10 + 64);
  v1[2] = __swift_coroFrameAllocStub(v11);
  v12 = __swift_coroFrameAllocStub(v11);
  v1[3] = v12;
  v13 = OUTLINED_FUNCTION_186();
  OUTLINED_FUNCTION_643(v13, v14);
  v1[4] = type metadata accessor for Searchfoundation_RFEngageable.OneOf_EngageableOneof(0);
  OUTLINED_FUNCTION_16_2();
  if (v15)
  {
    sub_1B8D9207C(v0, &qword_1EBAD1DA0, &qword_1B96E0CF0);
  }

  else
  {
    OUTLINED_FUNCTION_177_1();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload != 1)
    {
      OUTLINED_FUNCTION_1_98();
      OUTLINED_FUNCTION_128();
      sub_1B95DAC6C();
      goto LABEL_8;
    }

    sub_1B95DAC18();
  }

  *v12 = 0;
  v12[1] = 0xE000000000000000;
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
LABEL_8:
  OUTLINED_FUNCTION_242();
}

uint64_t Searchfoundation_RFEngageable.previewList.getter()
{
  OUTLINED_FUNCTION_180_3();
  v2 = OUTLINED_FUNCTION_177_1();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_183(v4);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_27_9();
  type metadata accessor for Searchfoundation_RFEngageable.OneOf_EngageableOneof(0);
  v6 = OUTLINED_FUNCTION_157_4();
  OUTLINED_FUNCTION_57(v6);
  if (v7)
  {
    sub_1B8D9207C(v1, &qword_1EBAD1DA0, &qword_1B96E0CF0);
  }

  else
  {
    OUTLINED_FUNCTION_543();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 1)
    {
      OUTLINED_FUNCTION_48_18();
      OUTLINED_FUNCTION_288();
      return sub_1B95DAC6C();
    }

    sub_1B95DAC18();
  }

  *v0 = MEMORY[0x1E69E7CC0];
  v10 = type metadata accessor for Searchfoundation_RFPreviewList(0);
  return OUTLINED_FUNCTION_163_2(v10);
}

uint64_t sub_1B95C9EDC()
{
  sub_1B8D9207C(v0, &qword_1EBAD1DA0, &qword_1B96E0CF0);
  OUTLINED_FUNCTION_128();
  sub_1B95DAC6C();
  v1 = type metadata accessor for Searchfoundation_RFEngageable.OneOf_EngageableOneof(0);
  OUTLINED_FUNCTION_543();
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_80();

  return __swift_storeEnumTagSinglePayload(v2, v3, v4, v1);
}

uint64_t Searchfoundation_RFPreviewList.init()@<X0>(void *a1@<X8>)
{
  *a1 = MEMORY[0x1E69E7CC0];
  v1 = type metadata accessor for Searchfoundation_RFPreviewList(0);
  return OUTLINED_FUNCTION_163_2(v1);
}

void Searchfoundation_RFEngageable.previewList.modify()
{
  OUTLINED_FUNCTION_243();
  v2 = OUTLINED_FUNCTION_25_4();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_86(v3);
  v4 = OUTLINED_FUNCTION_686();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_85(v8);
  type metadata accessor for Searchfoundation_RFPreviewList(v9);
  OUTLINED_FUNCTION_59_1();
  v11 = *(v10 + 64);
  v1[2] = __swift_coroFrameAllocStub(v11);
  v12 = __swift_coroFrameAllocStub(v11);
  v1[3] = v12;
  v13 = OUTLINED_FUNCTION_186();
  OUTLINED_FUNCTION_643(v13, v14);
  v1[4] = type metadata accessor for Searchfoundation_RFEngageable.OneOf_EngageableOneof(0);
  OUTLINED_FUNCTION_16_2();
  if (v15)
  {
    sub_1B8D9207C(v0, &qword_1EBAD1DA0, &qword_1B96E0CF0);
LABEL_7:
    *v12 = MEMORY[0x1E69E7CC0];
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_177_1();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 1)
  {
    sub_1B95DAC18();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_48_18();
  OUTLINED_FUNCTION_128();
  sub_1B95DAC6C();
LABEL_8:
  OUTLINED_FUNCTION_242();
}

void sub_1B95CA138()
{
  OUTLINED_FUNCTION_284();
  v1 = (*v0)[3];
  v2 = (*v0)[4];
  v3 = (*v0)[1];
  v4 = (*v0)[2];
  v5 = **v0;
  if (v6)
  {
    OUTLINED_FUNCTION_461();
    sub_1B95DACC0();
    sub_1B8D9207C(v5, &qword_1EBAD1DA0, &qword_1B96E0CF0);
    sub_1B95DAC6C();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_80();
    __swift_storeEnumTagSinglePayload(v7, v8, v9, v2);
    sub_1B95DAC18();
  }

  else
  {
    sub_1B8D9207C(**v0, &qword_1EBAD1DA0, &qword_1B96E0CF0);
    sub_1B95DAC6C();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_80();
    __swift_storeEnumTagSinglePayload(v10, v11, v12, v2);
  }

  free(v1);
  free(v4);
  free(v3);
  OUTLINED_FUNCTION_283();

  free(v13);
}

uint64_t sub_1B95CA274()
{
  v0 = OUTLINED_FUNCTION_27();
  v1(v0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v2 = OUTLINED_FUNCTION_18_1();

  return v3(v2);
}

uint64_t sub_1B95CA2FC()
{
  v0 = OUTLINED_FUNCTION_313();
  v1(v0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v2 = OUTLINED_FUNCTION_209();

  return v3(v2);
}

uint64_t Searchfoundation_RFEngageable.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Searchfoundation_RFEngageable(v0);
  return OUTLINED_FUNCTION_25();
}

void static Searchfoundation_RFEngageable.OneOf_EngageableOneof.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  v24[0] = type metadata accessor for Searchfoundation_RFPreviewList(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_62();
  v4 = (v3 - v2);
  v24[1] = type metadata accessor for Searchfoundation_CommandReference(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_62();
  v8 = (v7 - v6);
  type metadata accessor for Searchfoundation_RFEngageable.OneOf_EngageableOneof(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_66();
  v12 = (v10 - v11);
  MEMORY[0x1EEE9AC00](v13);
  v15 = (v24 - v14);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAD1DA8, &unk_1B96E0CF8);
  OUTLINED_FUNCTION_183(v16);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_139();
  sub_1B95DACC0();
  sub_1B95DACC0();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_114_12();
    sub_1B95DACC0();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      OUTLINED_FUNCTION_48_18();
      sub_1B95DAC6C();
      sub_1B8D79238(*v12, *v4);
      if (v18)
      {
        sub_1B964C2B0();
        OUTLINED_FUNCTION_0_114();
        sub_1B8CD3968(v19, v20, MEMORY[0x1E69AAC10]);
        sub_1B964C850();
      }

      OUTLINED_FUNCTION_129_10();
      sub_1B95DAC18();
      OUTLINED_FUNCTION_200();
      goto LABEL_18;
    }
  }

  else
  {
    OUTLINED_FUNCTION_114_12();
    sub_1B95DACC0();
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      OUTLINED_FUNCTION_1_98();
      sub_1B95DAC6C();
      v21 = *v15 == *v8 && v15[1] == v8[1];
      if (v21 || (sub_1B964C9F0() & 1) != 0)
      {
        sub_1B964C2B0();
        OUTLINED_FUNCTION_0_114();
        sub_1B8CD3968(v22, v23, MEMORY[0x1E69AAC10]);
        sub_1B964C850();
        OUTLINED_FUNCTION_4_66();
        sub_1B95DAC18();
      }

      else
      {
        OUTLINED_FUNCTION_4_66();
        sub_1B95DAC18();
      }

      OUTLINED_FUNCTION_4_66();
LABEL_18:
      sub_1B95DAC18();
      OUTLINED_FUNCTION_27_21();
      sub_1B95DAC18();
      goto LABEL_19;
    }

    OUTLINED_FUNCTION_4_66();
  }

  sub_1B95DAC18();
  sub_1B8D9207C(v0, &qword_1EBAD1DA8, &unk_1B96E0CF8);
LABEL_19:
  OUTLINED_FUNCTION_283();
}

uint64_t static Searchfoundation_RFPreviewList.== infix(_:_:)()
{
  OUTLINED_FUNCTION_468();
  sub_1B8D79238(*v0, *v1);
  if ((v2 & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for Searchfoundation_RFPreviewList(0);
  OUTLINED_FUNCTION_871();
  OUTLINED_FUNCTION_0_114();
  v5 = sub_1B8CD3968(v3, v4, MEMORY[0x1E69AAC10]);
  return OUTLINED_FUNCTION_634(v5) & 1;
}

uint64_t Searchfoundation_RFPreviewList.previews.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t Searchfoundation_RFPreviewList.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Searchfoundation_RFPreviewList(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t Searchfoundation_RFPreview.text.setter()
{
  OUTLINED_FUNCTION_16();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t Searchfoundation_RFPreview.commandReference.getter()
{
  v1 = OUTLINED_FUNCTION_236();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_183(v3);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_22_3();
  type metadata accessor for Searchfoundation_RFPreview(v5);
  OUTLINED_FUNCTION_100_0();
  type metadata accessor for Searchfoundation_CommandReference(0);
  v6 = OUTLINED_FUNCTION_9_2();
  if (v7)
  {
    OUTLINED_FUNCTION_158_4(v6);
    result = OUTLINED_FUNCTION_9_2();
    if (!v7)
    {
      return sub_1B8D9207C(v0, &qword_1EBAB8D80, &unk_1B964D580);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_98();
    OUTLINED_FUNCTION_182();
    return sub_1B95DAC6C();
  }

  return result;
}

uint64_t Searchfoundation_RFPreview.commandReference.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Searchfoundation_RFPreview(v1);
  sub_1B8D9207C(v0 + *(v2 + 24), &qword_1EBAB8D80, &unk_1B964D580);
  OUTLINED_FUNCTION_1_98();
  OUTLINED_FUNCTION_122_0();
  sub_1B95DAC6C();
  type metadata accessor for Searchfoundation_CommandReference(0);
  v3 = OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Searchfoundation_RFPreview.commandReference.modify()
{
  OUTLINED_FUNCTION_243();
  v2 = OUTLINED_FUNCTION_212();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_86(v3);
  v4 = OUTLINED_FUNCTION_686();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_85(v8);
  *(v1 + 16) = type metadata accessor for Searchfoundation_CommandReference(v9);
  OUTLINED_FUNCTION_59_1();
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_202_0(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_89_0(v13);
  v15 = type metadata accessor for Searchfoundation_RFPreview(v14);
  OUTLINED_FUNCTION_64_0(*(v15 + 24));
  OUTLINED_FUNCTION_16_2();
  if (v16)
  {
    OUTLINED_FUNCTION_157_6();
    OUTLINED_FUNCTION_16_2();
    if (!v16)
    {
      sub_1B8D9207C(v0, &qword_1EBAB8D80, &unk_1B964D580);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_98();
    OUTLINED_FUNCTION_461();
    sub_1B95DAC6C();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_242();
}

void sub_1B95CAB44()
{
  OUTLINED_FUNCTION_243();
  OUTLINED_FUNCTION_67();
  if (v5)
  {
    OUTLINED_FUNCTION_128();
    sub_1B95DACC0();
    sub_1B8D9207C(v4 + v3, &qword_1EBAB8D80, &unk_1B964D580);
    OUTLINED_FUNCTION_1_98();
    OUTLINED_FUNCTION_220_6();
    OUTLINED_FUNCTION_30_2();
    OUTLINED_FUNCTION_4_66();
    sub_1B95DAC18();
  }

  else
  {
    sub_1B8D9207C(v4 + v3, &qword_1EBAB8D80, &unk_1B964D580);
    OUTLINED_FUNCTION_1_98();
    OUTLINED_FUNCTION_221_4();
    OUTLINED_FUNCTION_30_2();
  }

  free(v2);
  free(v0);
  free(v1);
  OUTLINED_FUNCTION_242();

  free(v6);
}

uint64_t Searchfoundation_RFPreview.hasCommandReference.getter()
{
  v0 = OUTLINED_FUNCTION_514();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_183(v2);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_22_3();
  type metadata accessor for Searchfoundation_RFPreview(v4);
  OUTLINED_FUNCTION_274_0();
  v5 = type metadata accessor for Searchfoundation_CommandReference(0);
  OUTLINED_FUNCTION_11(v5);
  return OUTLINED_FUNCTION_193_1();
}

Swift::Void __swiftcall Searchfoundation_RFPreview.clearCommandReference()()
{
  v1 = type metadata accessor for Searchfoundation_RFPreview(0);
  sub_1B8D9207C(v0 + *(v1 + 24), &qword_1EBAB8D80, &unk_1B964D580);
  type metadata accessor for Searchfoundation_CommandReference(0);
  v2 = OUTLINED_FUNCTION_59_2();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t Searchfoundation_RFPreview.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Searchfoundation_RFPreview(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t Searchfoundation_RFPreview.init()()
{
  v0 = OUTLINED_FUNCTION_61_3();
  v1 = type metadata accessor for Searchfoundation_RFPreview(v0);
  OUTLINED_FUNCTION_163_2(v1);
  type metadata accessor for Searchfoundation_CommandReference(0);
  OUTLINED_FUNCTION_83();

  return __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t Searchfoundation_RFTextEncapsulation.style.setter(uint64_t result)
{
  v2 = *(result + 8);
  *v1 = *result;
  *(v1 + 8) = v2;
  return result;
}

uint64_t Searchfoundation_RFTextEncapsulation.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Searchfoundation_RFTextEncapsulation(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t Searchfoundation_RFHighlightedSubstring.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Searchfoundation_RFHighlightedSubstring(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t sub_1B95CAF14()
{
  v0 = OUTLINED_FUNCTION_61_3();
  v2 = v1(v0);
  return OUTLINED_FUNCTION_163_2(v2);
}

uint64_t Searchfoundation_RFAttribution.title.getter()
{
  v1 = OUTLINED_FUNCTION_236();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_183(v3);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_22_3();
  type metadata accessor for Searchfoundation_RFAttribution(v5);
  OUTLINED_FUNCTION_100_0();
  type metadata accessor for Searchfoundation_RFTextProperty(0);
  OUTLINED_FUNCTION_9_2();
  if (v6)
  {
    OUTLINED_FUNCTION_465_0(MEMORY[0x1E69E7CC0]);
    result = OUTLINED_FUNCTION_9_2();
    if (!v6)
    {
      return sub_1B8D9207C(v0, &qword_1EBAB8DF8, &qword_1B96B9A80);
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_84();
    OUTLINED_FUNCTION_182();
    return sub_1B95DAC6C();
  }

  return result;
}

uint64_t Searchfoundation_RFAttribution.title.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Searchfoundation_RFAttribution(v1);
  sub_1B8D9207C(v0 + *(v2 + 36), &qword_1EBAB8DF8, &qword_1B96B9A80);
  OUTLINED_FUNCTION_2_84();
  OUTLINED_FUNCTION_122_0();
  sub_1B95DAC6C();
  type metadata accessor for Searchfoundation_RFTextProperty(0);
  v3 = OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Searchfoundation_RFAttribution.title.modify()
{
  OUTLINED_FUNCTION_243();
  v2 = OUTLINED_FUNCTION_212();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_86(v3);
  v4 = OUTLINED_FUNCTION_686();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_85(v8);
  *(v1 + 16) = type metadata accessor for Searchfoundation_RFTextProperty(v9);
  OUTLINED_FUNCTION_59_1();
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_202_0(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_89_0(v13);
  v15 = type metadata accessor for Searchfoundation_RFAttribution(v14);
  OUTLINED_FUNCTION_64_0(*(v15 + 36));
  OUTLINED_FUNCTION_16_2();
  if (v16)
  {
    OUTLINED_FUNCTION_657(MEMORY[0x1E69E7CC0]);
    OUTLINED_FUNCTION_16_2();
    if (!v16)
    {
      sub_1B8D9207C(v0, &qword_1EBAB8DF8, &qword_1B96B9A80);
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_84();
    OUTLINED_FUNCTION_461();
    sub_1B95DAC6C();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_242();
}

void sub_1B95CB198()
{
  OUTLINED_FUNCTION_243();
  OUTLINED_FUNCTION_67();
  if (v5)
  {
    OUTLINED_FUNCTION_128();
    sub_1B95DACC0();
    sub_1B8D9207C(v4 + v3, &qword_1EBAB8DF8, &qword_1B96B9A80);
    OUTLINED_FUNCTION_2_84();
    OUTLINED_FUNCTION_220_6();
    OUTLINED_FUNCTION_30_2();
    OUTLINED_FUNCTION_12_41();
    sub_1B95DAC18();
  }

  else
  {
    sub_1B8D9207C(v4 + v3, &qword_1EBAB8DF8, &qword_1B96B9A80);
    OUTLINED_FUNCTION_2_84();
    OUTLINED_FUNCTION_221_4();
    OUTLINED_FUNCTION_30_2();
  }

  free(v2);
  free(v0);
  free(v1);
  OUTLINED_FUNCTION_242();

  free(v6);
}

uint64_t Searchfoundation_RFAttribution.hasTitle.getter()
{
  v0 = OUTLINED_FUNCTION_514();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_183(v2);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_22_3();
  type metadata accessor for Searchfoundation_RFAttribution(v4);
  OUTLINED_FUNCTION_274_0();
  v5 = type metadata accessor for Searchfoundation_RFTextProperty(0);
  OUTLINED_FUNCTION_11(v5);
  return OUTLINED_FUNCTION_193_1();
}

Swift::Void __swiftcall Searchfoundation_RFAttribution.clearTitle()()
{
  v1 = type metadata accessor for Searchfoundation_RFAttribution(0);
  sub_1B8D9207C(v0 + *(v1 + 36), &qword_1EBAB8DF8, &qword_1B96B9A80);
  type metadata accessor for Searchfoundation_RFTextProperty(0);
  v2 = OUTLINED_FUNCTION_59_2();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t Searchfoundation_RFAttribution.subtitle.getter()
{
  v1 = OUTLINED_FUNCTION_236();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_183(v3);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_22_3();
  type metadata accessor for Searchfoundation_RFAttribution(v5);
  OUTLINED_FUNCTION_100_0();
  type metadata accessor for Searchfoundation_RFTextProperty(0);
  OUTLINED_FUNCTION_9_2();
  if (v6)
  {
    OUTLINED_FUNCTION_465_0(MEMORY[0x1E69E7CC0]);
    result = OUTLINED_FUNCTION_9_2();
    if (!v6)
    {
      return sub_1B8D9207C(v0, &qword_1EBAB8DF8, &qword_1B96B9A80);
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_84();
    OUTLINED_FUNCTION_182();
    return sub_1B95DAC6C();
  }

  return result;
}

uint64_t Searchfoundation_RFAttribution.subtitle.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Searchfoundation_RFAttribution(v1);
  sub_1B8D9207C(v0 + *(v2 + 40), &qword_1EBAB8DF8, &qword_1B96B9A80);
  OUTLINED_FUNCTION_2_84();
  OUTLINED_FUNCTION_122_0();
  sub_1B95DAC6C();
  type metadata accessor for Searchfoundation_RFTextProperty(0);
  v3 = OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Searchfoundation_RFAttribution.subtitle.modify()
{
  OUTLINED_FUNCTION_243();
  v2 = OUTLINED_FUNCTION_212();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_86(v3);
  v4 = OUTLINED_FUNCTION_686();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_85(v8);
  *(v1 + 16) = type metadata accessor for Searchfoundation_RFTextProperty(v9);
  OUTLINED_FUNCTION_59_1();
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_202_0(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_89_0(v13);
  v15 = type metadata accessor for Searchfoundation_RFAttribution(v14);
  OUTLINED_FUNCTION_64_0(*(v15 + 40));
  OUTLINED_FUNCTION_16_2();
  if (v16)
  {
    OUTLINED_FUNCTION_657(MEMORY[0x1E69E7CC0]);
    OUTLINED_FUNCTION_16_2();
    if (!v16)
    {
      sub_1B8D9207C(v0, &qword_1EBAB8DF8, &qword_1B96B9A80);
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_84();
    OUTLINED_FUNCTION_461();
    sub_1B95DAC6C();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_242();
}

uint64_t Searchfoundation_RFAttribution.hasSubtitle.getter()
{
  v0 = OUTLINED_FUNCTION_514();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_183(v2);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_22_3();
  type metadata accessor for Searchfoundation_RFAttribution(v4);
  OUTLINED_FUNCTION_274_0();
  v5 = type metadata accessor for Searchfoundation_RFTextProperty(0);
  OUTLINED_FUNCTION_11(v5);
  return OUTLINED_FUNCTION_193_1();
}

Swift::Void __swiftcall Searchfoundation_RFAttribution.clearSubtitle()()
{
  v1 = type metadata accessor for Searchfoundation_RFAttribution(0);
  sub_1B8D9207C(v0 + *(v1 + 40), &qword_1EBAB8DF8, &qword_1B96B9A80);
  type metadata accessor for Searchfoundation_RFTextProperty(0);
  v2 = OUTLINED_FUNCTION_59_2();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t Searchfoundation_RFAttribution.image.getter()
{
  v1 = OUTLINED_FUNCTION_236();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_183(v3);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_22_3();
  type metadata accessor for Searchfoundation_RFAttribution(v5);
  OUTLINED_FUNCTION_100_0();
  type metadata accessor for Searchfoundation_RFVisualProperty(0);
  OUTLINED_FUNCTION_9_2();
  if (v6)
  {
    OUTLINED_FUNCTION_465_0(MEMORY[0x1E69E7CC0]);
    result = OUTLINED_FUNCTION_9_2();
    if (!v6)
    {
      return sub_1B8D9207C(v0, &qword_1EBACC708, &unk_1B96D92F0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_5_55();
    OUTLINED_FUNCTION_182();
    return sub_1B95DAC6C();
  }

  return result;
}

uint64_t Searchfoundation_RFAttribution.image.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Searchfoundation_RFAttribution(v1);
  sub_1B8D9207C(v0 + *(v2 + 44), &qword_1EBACC708, &unk_1B96D92F0);
  OUTLINED_FUNCTION_5_55();
  OUTLINED_FUNCTION_122_0();
  sub_1B95DAC6C();
  type metadata accessor for Searchfoundation_RFVisualProperty(0);
  v3 = OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Searchfoundation_RFAttribution.image.modify()
{
  OUTLINED_FUNCTION_243();
  v2 = OUTLINED_FUNCTION_212();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_86(v3);
  v4 = OUTLINED_FUNCTION_686();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_85(v8);
  *(v1 + 16) = type metadata accessor for Searchfoundation_RFVisualProperty(v9);
  OUTLINED_FUNCTION_59_1();
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_202_0(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_89_0(v13);
  v15 = type metadata accessor for Searchfoundation_RFAttribution(v14);
  OUTLINED_FUNCTION_64_0(*(v15 + 44));
  OUTLINED_FUNCTION_16_2();
  if (v16)
  {
    OUTLINED_FUNCTION_657(MEMORY[0x1E69E7CC0]);
    OUTLINED_FUNCTION_16_2();
    if (!v16)
    {
      sub_1B8D9207C(v0, &qword_1EBACC708, &unk_1B96D92F0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_5_55();
    OUTLINED_FUNCTION_461();
    sub_1B95DAC6C();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_242();
}

void sub_1B95CB8C4()
{
  OUTLINED_FUNCTION_243();
  OUTLINED_FUNCTION_67();
  if (v5)
  {
    OUTLINED_FUNCTION_128();
    sub_1B95DACC0();
    sub_1B8D9207C(v4 + v3, &qword_1EBACC708, &unk_1B96D92F0);
    OUTLINED_FUNCTION_5_55();
    OUTLINED_FUNCTION_220_6();
    OUTLINED_FUNCTION_30_2();
    OUTLINED_FUNCTION_46_18();
    sub_1B95DAC18();
  }

  else
  {
    sub_1B8D9207C(v4 + v3, &qword_1EBACC708, &unk_1B96D92F0);
    OUTLINED_FUNCTION_5_55();
    OUTLINED_FUNCTION_221_4();
    OUTLINED_FUNCTION_30_2();
  }

  free(v2);
  free(v0);
  free(v1);
  OUTLINED_FUNCTION_242();

  free(v6);
}

uint64_t Searchfoundation_RFAttribution.hasImage.getter()
{
  v0 = OUTLINED_FUNCTION_514();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_183(v2);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_22_3();
  type metadata accessor for Searchfoundation_RFAttribution(v4);
  OUTLINED_FUNCTION_274_0();
  v5 = type metadata accessor for Searchfoundation_RFVisualProperty(0);
  OUTLINED_FUNCTION_11(v5);
  return OUTLINED_FUNCTION_193_1();
}

Swift::Void __swiftcall Searchfoundation_RFAttribution.clearImage()()
{
  v1 = type metadata accessor for Searchfoundation_RFAttribution(0);
  sub_1B8D9207C(v0 + *(v1 + 44), &qword_1EBACC708, &unk_1B96D92F0);
  type metadata accessor for Searchfoundation_RFVisualProperty(0);
  v2 = OUTLINED_FUNCTION_59_2();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t Searchfoundation_RFAttribution.localizedIndex.setter()
{
  OUTLINED_FUNCTION_16();

  *(v1 + 8) = v2;
  *(v1 + 16) = v0;
  return result;
}

uint64_t Searchfoundation_RFAttribution.localizedSeparator.setter()
{
  OUTLINED_FUNCTION_16();

  *(v1 + 24) = v2;
  *(v1 + 32) = v0;
  return result;
}

uint64_t Searchfoundation_RFAttribution.locale.setter()
{
  OUTLINED_FUNCTION_16();

  *(v1 + 40) = v2;
  *(v1 + 48) = v0;
  return result;
}

uint64_t Searchfoundation_RFAttribution.commandReference.getter()
{
  v1 = OUTLINED_FUNCTION_236();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_183(v3);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_22_3();
  type metadata accessor for Searchfoundation_RFAttribution(v5);
  OUTLINED_FUNCTION_100_0();
  type metadata accessor for Searchfoundation_CommandReference(0);
  v6 = OUTLINED_FUNCTION_9_2();
  if (v7)
  {
    OUTLINED_FUNCTION_158_4(v6);
    result = OUTLINED_FUNCTION_9_2();
    if (!v7)
    {
      return sub_1B8D9207C(v0, &qword_1EBAB8D80, &unk_1B964D580);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_98();
    OUTLINED_FUNCTION_182();
    return sub_1B95DAC6C();
  }

  return result;
}

uint64_t Searchfoundation_RFAttribution.commandReference.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Searchfoundation_RFAttribution(v1);
  sub_1B8D9207C(v0 + *(v2 + 48), &qword_1EBAB8D80, &unk_1B964D580);
  OUTLINED_FUNCTION_1_98();
  OUTLINED_FUNCTION_122_0();
  sub_1B95DAC6C();
  type metadata accessor for Searchfoundation_CommandReference(0);
  v3 = OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Searchfoundation_RFAttribution.commandReference.modify()
{
  OUTLINED_FUNCTION_243();
  v2 = OUTLINED_FUNCTION_212();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_86(v3);
  v4 = OUTLINED_FUNCTION_686();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_85(v8);
  *(v1 + 16) = type metadata accessor for Searchfoundation_CommandReference(v9);
  OUTLINED_FUNCTION_59_1();
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_202_0(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_89_0(v13);
  v15 = type metadata accessor for Searchfoundation_RFAttribution(v14);
  OUTLINED_FUNCTION_64_0(*(v15 + 48));
  OUTLINED_FUNCTION_16_2();
  if (v16)
  {
    OUTLINED_FUNCTION_157_6();
    OUTLINED_FUNCTION_16_2();
    if (!v16)
    {
      sub_1B8D9207C(v0, &qword_1EBAB8D80, &unk_1B964D580);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_98();
    OUTLINED_FUNCTION_461();
    sub_1B95DAC6C();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_242();
}

uint64_t Searchfoundation_RFAttribution.hasCommandReference.getter()
{
  v0 = OUTLINED_FUNCTION_514();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_183(v2);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_22_3();
  type metadata accessor for Searchfoundation_RFAttribution(v4);
  OUTLINED_FUNCTION_274_0();
  v5 = type metadata accessor for Searchfoundation_CommandReference(0);
  OUTLINED_FUNCTION_11(v5);
  return OUTLINED_FUNCTION_193_1();
}

Swift::Void __swiftcall Searchfoundation_RFAttribution.clearCommandReference()()
{
  v1 = type metadata accessor for Searchfoundation_RFAttribution(0);
  sub_1B8D9207C(v0 + *(v1 + 48), &qword_1EBAB8D80, &unk_1B964D580);
  type metadata accessor for Searchfoundation_CommandReference(0);
  v2 = OUTLINED_FUNCTION_59_2();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t Searchfoundation_RFAttribution.unknownFields.getter()
{
  v0 = OUTLINED_FUNCTION_27();
  type metadata accessor for Searchfoundation_RFAttribution(v0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v1 = OUTLINED_FUNCTION_18_1();

  return v2(v1);
}

uint64_t Searchfoundation_RFAttribution.unknownFields.setter()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Searchfoundation_RFAttribution(v0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v1 = OUTLINED_FUNCTION_209();

  return v2(v1);
}

uint64_t Searchfoundation_RFAttribution.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Searchfoundation_RFAttribution(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t Searchfoundation_RFAttribution.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0xE000000000000000;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0xE000000000000000;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0xE000000000000000;
  type metadata accessor for Searchfoundation_RFAttribution(0);
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v1 = type metadata accessor for Searchfoundation_RFTextProperty(0);
  OUTLINED_FUNCTION_83();
  __swift_storeEnumTagSinglePayload(v2, v3, v4, v1);
  OUTLINED_FUNCTION_83();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v1);
  type metadata accessor for Searchfoundation_RFVisualProperty(0);
  OUTLINED_FUNCTION_83();
  __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
  type metadata accessor for Searchfoundation_CommandReference(0);
  OUTLINED_FUNCTION_83();

  return __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
}

uint64_t Searchfoundation_RFFont.name.getter()
{
  OUTLINED_FUNCTION_180_3();
  v2 = OUTLINED_FUNCTION_177_1();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_183(v4);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_27_9();
  type metadata accessor for Searchfoundation_RFFont.OneOf_Value(0);
  v6 = OUTLINED_FUNCTION_157_4();
  OUTLINED_FUNCTION_57(v6);
  if (v7)
  {
    result = sub_1B8D9207C(v1, &qword_1EBAD1DB0, &qword_1B96E0D08);
  }

  else
  {
    OUTLINED_FUNCTION_543();
    result = swift_getEnumCaseMultiPayload();
    if (result != 1)
    {
      v9 = *v1;
      v10 = *(v1 + 8);
      goto LABEL_8;
    }

    result = sub_1B95DAC18();
  }

  v9 = 0;
  v10 = 1;
LABEL_8:
  *v0 = v9;
  *(v0 + 8) = v10;
  return result;
}

void *sub_1B95CC280@<X0>(void *(*a1)(uint64_t *__return_ptr)@<X3>, uint64_t a2@<X8>)
{
  result = a1(&v5);
  v4 = v6;
  *a2 = v5;
  *(a2 + 8) = v4;
  return result;
}

uint64_t sub_1B95CC2C8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t *))
{
  v5 = *(a1 + 8);
  v7 = *a1;
  v8 = v5;
  return a5(&v7);
}

uint64_t Searchfoundation_RFFont.name.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  sub_1B8D9207C(v1, &qword_1EBAD1DB0, &qword_1B96E0D08);
  *v1 = v2;
  *(v1 + 8) = v3;
  v4 = type metadata accessor for Searchfoundation_RFFont.OneOf_Value(0);
  OUTLINED_FUNCTION_288();
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_80();

  return __swift_storeEnumTagSinglePayload(v5, v6, v7, v4);
}

uint64_t Searchfoundation_RFFont.name.modify(void *a1)
{
  v2 = v1;
  v4 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v4;
  v4[2] = v2;
  v5 = OUTLINED_FUNCTION_690();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  OUTLINED_FUNCTION_183(v7);
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v4[3] = v9;
  OUTLINED_FUNCTION_461();
  sub_1B8D92024();
  v4[4] = type metadata accessor for Searchfoundation_RFFont.OneOf_Value(0);
  OUTLINED_FUNCTION_28_13();
  OUTLINED_FUNCTION_178(v10, v11, v12);
  if (v13)
  {
    sub_1B8D9207C(v9, &qword_1EBAD1DB0, &qword_1B96E0D08);
  }

  else
  {
    OUTLINED_FUNCTION_303();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload != 1)
    {
      v15 = *v9;
      v16 = v9[8];
      goto LABEL_8;
    }

    sub_1B95DAC18();
  }

  v15 = 0;
  v16 = 1;
LABEL_8:
  *v4 = v15;
  *(v4 + 8) = v16;
  return OUTLINED_FUNCTION_19_2();
}

void sub_1B95CC4BC(uint64_t **a1)
{
  v1 = *a1;
  v3 = (*a1)[3];
  v2 = (*a1)[4];
  v4 = (*a1)[2];
  v5 = **a1;
  v6 = *(*a1 + 8);
  sub_1B8D9207C(v4, &qword_1EBAD1DB0, &qword_1B96E0D08);
  *v4 = v5;
  *(v4 + 8) = v6;
  OUTLINED_FUNCTION_128();
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_80();
  __swift_storeEnumTagSinglePayload(v7, v8, v9, v2);
  free(v3);

  free(v1);
}

uint64_t Searchfoundation_RFFont.system.getter()
{
  OUTLINED_FUNCTION_180_3();
  v2 = OUTLINED_FUNCTION_177_1();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_183(v4);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_27_9();
  type metadata accessor for Searchfoundation_RFFont.OneOf_Value(0);
  v6 = OUTLINED_FUNCTION_157_4();
  OUTLINED_FUNCTION_57(v6);
  if (v7)
  {
    sub_1B8D9207C(v1, &qword_1EBAD1DB0, &qword_1B96E0D08);
  }

  else
  {
    OUTLINED_FUNCTION_543();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 1)
    {
      OUTLINED_FUNCTION_9_47();
      OUTLINED_FUNCTION_288();
      return sub_1B95DAC6C();
    }

    sub_1B95DAC18();
  }

  *v0 = 0;
  *(v0 + 8) = 0;
  *(v0 + 16) = 1;
  type metadata accessor for Searchfoundation_RFFont.RFSystemFont(0);
  return OUTLINED_FUNCTION_279();
}

uint64_t Searchfoundation_RFFont.system.setter()
{
  sub_1B8D9207C(v0, &qword_1EBAD1DB0, &qword_1B96E0D08);
  OUTLINED_FUNCTION_9_47();
  OUTLINED_FUNCTION_432();
  sub_1B95DAC6C();
  v1 = type metadata accessor for Searchfoundation_RFFont.OneOf_Value(0);
  OUTLINED_FUNCTION_288();
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_80();

  return __swift_storeEnumTagSinglePayload(v2, v3, v4, v1);
}

uint64_t Searchfoundation_RFFont.RFSystemFont.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  type metadata accessor for Searchfoundation_RFFont.RFSystemFont(0);
  return OUTLINED_FUNCTION_279();
}

void Searchfoundation_RFFont.system.modify()
{
  OUTLINED_FUNCTION_243();
  v2 = OUTLINED_FUNCTION_25_4();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_86(v3);
  v4 = OUTLINED_FUNCTION_686();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_85(v8);
  type metadata accessor for Searchfoundation_RFFont.RFSystemFont(v9);
  OUTLINED_FUNCTION_59_1();
  v11 = *(v10 + 64);
  v1[2] = __swift_coroFrameAllocStub(v11);
  v12 = __swift_coroFrameAllocStub(v11);
  v1[3] = v12;
  v13 = OUTLINED_FUNCTION_186();
  OUTLINED_FUNCTION_643(v13, v14);
  v1[4] = type metadata accessor for Searchfoundation_RFFont.OneOf_Value(0);
  OUTLINED_FUNCTION_16_2();
  if (v15)
  {
    sub_1B8D9207C(v0, &qword_1EBAD1DB0, &qword_1B96E0D08);
LABEL_7:
    *v12 = 0;
    v12[1] = 0;
    *(v12 + 16) = 1;
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_177_1();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 1)
  {
    sub_1B95DAC18();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_9_47();
  OUTLINED_FUNCTION_128();
  sub_1B95DAC6C();
LABEL_8:
  OUTLINED_FUNCTION_242();
}

void sub_1B95CC860(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[3];
  v4 = (*a1)[4];
  v5 = (*a1)[1];
  v6 = (*a1)[2];
  v7 = **a1;
  if (a2)
  {
    OUTLINED_FUNCTION_461();
    sub_1B95DACC0();
    sub_1B8D9207C(v7, &qword_1EBAD1DB0, &qword_1B96E0D08);
    OUTLINED_FUNCTION_9_47();
    sub_1B95DAC6C();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_80();
    __swift_storeEnumTagSinglePayload(v8, v9, v10, v4);
    OUTLINED_FUNCTION_133_10();
    sub_1B95DAC18();
  }

  else
  {
    sub_1B8D9207C(**a1, &qword_1EBAD1DB0, &qword_1B96E0D08);
    OUTLINED_FUNCTION_9_47();
    OUTLINED_FUNCTION_1_0();
    sub_1B95DAC6C();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_80();
    __swift_storeEnumTagSinglePayload(v11, v12, v13, v4);
  }

  free(v3);
  free(v6);
  free(v5);

  free(v2);
}

uint64_t Searchfoundation_RFFont.applySmallCaps.setter(uint64_t a1)
{
  v2 = a1;
  result = OUTLINED_FUNCTION_188_4();
  *(v1 + v4) = v2;
  return result;
}

uint64_t Searchfoundation_RFFont.applySmallCaps.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Searchfoundation_RFFont(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t Searchfoundation_RFFont.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Searchfoundation_RFFont(v0);
  return OUTLINED_FUNCTION_25();
}

void static Searchfoundation_RFFont.OneOf_Value.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  v2 = type metadata accessor for Searchfoundation_RFFont.RFSystemFont(0);
  v3 = OUTLINED_FUNCTION_183(v2);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_62();
  type metadata accessor for Searchfoundation_RFFont.OneOf_Value(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_66();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_219_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAD1DB8, &unk_1B96E0D10);
  OUTLINED_FUNCTION_183(v6);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_139();
  v9 = (v0 + *(v8 + 56));
  sub_1B95DACC0();
  OUTLINED_FUNCTION_690();
  sub_1B95DACC0();
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    OUTLINED_FUNCTION_121_7();
    sub_1B95DACC0();
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_1B8D92198(*v1, *(v1 + 8), *v9);
      goto LABEL_6;
    }

LABEL_8:
    sub_1B8D9207C(v0, &qword_1EBAD1DB8, &unk_1B96E0D10);
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_121_7();
  sub_1B95DACC0();
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    OUTLINED_FUNCTION_133_10();
    sub_1B95DAC18();
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_9_47();
  OUTLINED_FUNCTION_200();
  sub_1B95DAC6C();
  v10 = OUTLINED_FUNCTION_74_7();
  static Searchfoundation_RFFont.RFSystemFont.== infix(_:_:)(v10, v11);
  sub_1B95DAC18();
  OUTLINED_FUNCTION_236();
  sub_1B95DAC18();
LABEL_6:
  OUTLINED_FUNCTION_49_18();
  sub_1B95DAC18();
LABEL_9:
  OUTLINED_FUNCTION_283();
}

uint64_t static Searchfoundation_RFFont.RFSystemFont.== infix(_:_:)(float *a1, float *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  OUTLINED_FUNCTION_468();
  v3 = *(v2 + 8);
  v5 = *(v4 + 8);
  if (*(v4 + 16) == 1)
  {
    switch(v5)
    {
      case 1:
        if (v3 == 1)
        {
          goto LABEL_7;
        }

        return 0;
      case 2:
        if (v3 == 2)
        {
          goto LABEL_7;
        }

        return 0;
      case 3:
        if (v3 == 3)
        {
          goto LABEL_7;
        }

        return 0;
      case 4:
        if (v3 == 4)
        {
          goto LABEL_7;
        }

        return 0;
      case 5:
        if (v3 == 5)
        {
          goto LABEL_7;
        }

        return 0;
      case 6:
        if (v3 == 6)
        {
          goto LABEL_7;
        }

        return 0;
      case 7:
        if (v3 == 7)
        {
          goto LABEL_7;
        }

        return 0;
      case 8:
        if (v3 == 8)
        {
          goto LABEL_7;
        }

        return 0;
      case 9:
        if (v3 == 9)
        {
          goto LABEL_7;
        }

        return 0;
      default:
        if (v3)
        {
          return 0;
        }

        goto LABEL_7;
    }
  }

  if (v3 != v5)
  {
    return 0;
  }

LABEL_7:
  type metadata accessor for Searchfoundation_RFFont.RFSystemFont(0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_114();
  v9 = sub_1B8CD3968(v7, v8, MEMORY[0x1E69AAC10]);
  return OUTLINED_FUNCTION_634(v9) & 1;
}

uint64_t Searchfoundation_RFFont.RFSystemFont.weight.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 8) = *result;
  *(v1 + 16) = v2;
  return result;
}

uint64_t Searchfoundation_RFFont.RFSystemFont.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Searchfoundation_RFFont.RFSystemFont(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t sub_1B95CCEA8()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAD1C70);
  __swift_project_value_buffer(v0, qword_1EBAD1C70);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "RF_TEXT_ENCAPSULATION_STYLE_OUTLINE";
  *(v6 + 8) = 35;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "RF_TEXT_ENCAPSULATION_STYLE_FILL";
  *(v10 + 1) = 32;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "RF_TEXT_ENCAPSULATION_STYLE_BADGE";
  *(v12 + 1) = 33;
  v12[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B95CD0D4()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAB5328);
  __swift_project_value_buffer(v0, qword_1EBAB5328);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_1B964D040;
  v4 = v30 + v3 + v1[14];
  *(v30 + v3) = 0;
  *v4 = "RF_NAMED_FONT_UNSPECIFIED";
  *(v4 + 8) = 25;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_1B964C750();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v30 + v3 + v2 + v1[14];
  *(v30 + v3 + v2) = 1;
  *v8 = "RF_NAMED_FONT_LARGE_TITLE";
  *(v8 + 8) = 25;
  *(v8 + 16) = 2;
  v7();
  v9 = (v30 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 2;
  *v10 = "RF_NAMED_FONT_TITLE";
  *(v10 + 1) = 19;
  v10[16] = 2;
  v7();
  v11 = (v30 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "RF_NAMED_FONT_TITLE2";
  *(v12 + 1) = 20;
  v12[16] = 2;
  v7();
  v13 = (v30 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "RF_NAMED_FONT_TITLE3";
  *(v14 + 1) = 20;
  v14[16] = 2;
  v7();
  v15 = (v30 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "RF_NAMED_FONT_HEADLINE";
  *(v16 + 1) = 22;
  v16[16] = 2;
  v7();
  v17 = (v30 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "RF_NAMED_FONT_SUBHEADLINE";
  *(v18 + 1) = 25;
  v18[16] = 2;
  v7();
  v19 = (v30 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "RF_NAMED_FONT_BODY";
  *(v20 + 1) = 18;
  v20[16] = 2;
  v7();
  v21 = (v30 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 8;
  *v22 = "RF_NAMED_FONT_CALLOUT";
  *(v22 + 1) = 21;
  v22[16] = 2;
  v7();
  v23 = (v30 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 9;
  *v24 = "RF_NAMED_FONT_FOOTNOTE";
  *(v24 + 1) = 22;
  v24[16] = 2;
  v7();
  v25 = (v30 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 10;
  *v26 = "RF_NAMED_FONT_CAPTION";
  *(v26 + 1) = 21;
  v26[16] = 2;
  v7();
  v27 = (v30 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 11;
  *v28 = "RF_NAMED_FONT_CAPTION2";
  *(v28 + 1) = 22;
  v28[16] = 2;
  v7();
  return sub_1B964C760();
}