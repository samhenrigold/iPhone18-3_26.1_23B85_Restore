uint64_t sub_1B8F38B78()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABF130);
  __swift_project_value_buffer(v0, qword_1EBABF130);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "ImageCrop_NONE";
  *(v6 + 8) = 14;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "ImageCrop_PLAIN";
  *(v10 + 1) = 15;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "ImageCrop_SMART";
  *(v12 + 1) = 15;
  v12[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B8F38DA0()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABF148);
  __swift_project_value_buffer(v0, qword_1EBABF148);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1B9650810;
  v4 = v20 + v3 + v1[14];
  *(v20 + v3) = 0;
  *v4 = "DataSource_UNDEFINED";
  *(v4 + 8) = 20;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_1B964C750();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v20 + v3 + v2 + v1[14];
  *(v20 + v3 + v2) = 1;
  *v8 = "DataSource_WIKIPEDIA";
  *(v8 + 8) = 20;
  *(v8 + 16) = 2;
  v7();
  v9 = (v20 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 2;
  *v10 = "DataSource_UMC";
  *(v10 + 1) = 14;
  v10[16] = 2;
  v7();
  v11 = (v20 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "DataSource_PEGASUS_ENTITY_WEB_IMAGE";
  *(v12 + 1) = 35;
  v12[16] = 2;
  v7();
  v13 = (v20 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "DataSource_SPORTS";
  *(v14 + 1) = 17;
  v14[16] = 2;
  v7();
  v15 = (v20 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "DataSource_MAPS";
  *(v16 + 1) = 15;
  v16[16] = 2;
  v7();
  v17 = (v20 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "DataSource_ITUNES_STORE";
  *(v18 + 1) = 23;
  v18[16] = 2;
  v7();
  return sub_1B964C760();
}

uint64_t sub_1B8F390D4()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABF160);
  __swift_project_value_buffer(v0, qword_1EBABF160);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D060;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "Properties";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  *(v6 + 24) = "p";
  *(v6 + 32) = 1;
  *(v6 + 40) = 2;
  v7 = *MEMORY[0x1E69AADD8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "Type";
  *(v10 + 1) = 4;
  v10[16] = 2;
  *(v10 + 3) = "t";
  *(v10 + 4) = 1;
  v10[40] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Feedback_V2_DomainProperty.decodeMessage<A>(decoder:)()
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
      OUTLINED_FUNCTION_12();
      sub_1B964C4A0();
    }

    else if (result == 1)
    {
      OUTLINED_FUNCTION_12();
      sub_1B964C450();
    }
  }

  return result;
}

uint64_t Apple_Parsec_Feedback_V2_DomainProperty.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  if (!*(*v0 + 16) || (OUTLINED_FUNCTION_29(), result = sub_1B964C630(), !v1))
  {
    if (!*(v2 + 8) || (OUTLINED_FUNCTION_29(), result = sub_1B964C6C0(), !v1))
    {
      type metadata accessor for Apple_Parsec_Feedback_V2_DomainProperty(0);
      return OUTLINED_FUNCTION_8_1();
    }
  }

  return result;
}

uint64_t static Apple_Parsec_Feedback_V2_DomainProperty.== infix(_:_:)()
{
  OUTLINED_FUNCTION_468();
  if ((sub_1B8D921A4() & 1) == 0 || *(v1 + 8) != *(v0 + 8))
  {
    return 0;
  }

  type metadata accessor for Apple_Parsec_Feedback_V2_DomainProperty(0);
  OUTLINED_FUNCTION_188_1();
  OUTLINED_FUNCTION_0_38();
  v4 = sub_1B8CD2408(v2, v3, MEMORY[0x1E69AAC10]);
  return OUTLINED_FUNCTION_634(v4) & 1;
}

uint64_t sub_1B8F39508(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2408(&qword_1EBABF680, type metadata accessor for Apple_Parsec_Feedback_V2_DomainProperty, protocol conformance descriptor for Apple_Parsec_Feedback_V2_DomainProperty);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8F39588(uint64_t a1)
{
  v2 = sub_1B8CD2408(&qword_1EBABF4D0, type metadata accessor for Apple_Parsec_Feedback_V2_DomainProperty, protocol conformance descriptor for Apple_Parsec_Feedback_V2_DomainProperty);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8F395F8(uint64_t a1, uint64_t a2)
{
  sub_1B8CD2408(&qword_1EBABF4D0, type metadata accessor for Apple_Parsec_Feedback_V2_DomainProperty, protocol conformance descriptor for Apple_Parsec_Feedback_V2_DomainProperty);

  return sub_1B964C5D0();
}

uint64_t sub_1B8F39690()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABF178);
  __swift_project_value_buffer(v0, qword_1EBABF178);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v132 = swift_allocObject();
  *(v132 + 16) = xmmword_1B96637F0;
  v4 = v132 + v3 + v1[14];
  *(v132 + v3) = 1;
  *v4 = "Type";
  *(v4 + 8) = 4;
  *(v4 + 16) = 2;
  *(v4 + 24) = "d";
  *(v4 + 32) = 1;
  *(v4 + 40) = 2;
  v5 = *MEMORY[0x1E69AADD8];
  v6 = sub_1B964C750();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v132 + v3 + v2 + v1[14];
  *(v132 + v3 + v2) = 2;
  *v8 = "Id";
  *(v8 + 8) = 2;
  *(v8 + 16) = 2;
  *(v8 + 24) = "r";
  *(v8 + 32) = 1;
  *(v8 + 40) = 2;
  v7();
  v9 = v1[14];
  v10 = (v132 + v3 + 2 * v2);
  *v10 = 3;
  v11 = v10 + v9;
  *v11 = "CanonicalId";
  *(v11 + 1) = 11;
  v11[16] = 2;
  *(v11 + 3) = "cr";
  *(v11 + 4) = 2;
  v11[40] = 2;
  v7();
  v12 = v1[14];
  v13 = (v132 + v3 + 3 * v2);
  *v13 = 4;
  v14 = v13 + v12;
  *v14 = "ExternalIds";
  *(v14 + 1) = 11;
  v14[16] = 2;
  *(v14 + 3) = "ei";
  *(v14 + 4) = 2;
  v14[40] = 2;
  v7();
  v15 = v1[14];
  v16 = (v132 + v3 + 4 * v2);
  *v16 = 5;
  v17 = v16 + v15;
  *v17 = "Subdomain";
  *(v17 + 1) = 9;
  v17[16] = 2;
  *(v17 + 3) = "sd";
  *(v17 + 4) = 2;
  v17[40] = 2;
  v7();
  v18 = v1[14];
  v19 = (v132 + v3 + 5 * v2);
  *v19 = 6;
  v20 = v19 + v18;
  *v20 = "ResultTags";
  *(v20 + 1) = 10;
  v20[16] = 2;
  *(v20 + 3) = "rt";
  *(v20 + 4) = 2;
  v20[40] = 2;
  v7();
  v21 = v1[14];
  v22 = (v132 + v3 + 6 * v2);
  *v22 = 7;
  v23 = v22 + v21;
  *v23 = "QueryTags";
  *(v23 + 1) = 9;
  v23[16] = 2;
  *(v23 + 3) = "qt";
  *(v23 + 4) = 2;
  v23[40] = 2;
  v7();
  v24 = v1[14];
  v25 = (v132 + v3 + 7 * v2);
  *v25 = 8;
  v26 = v25 + v24;
  *v26 = "PreMergeQueryTags";
  *(v26 + 1) = 17;
  v26[16] = 2;
  *(v26 + 3) = "pmqt";
  *(v26 + 4) = 4;
  v26[40] = 2;
  v7();
  v27 = v1[14];
  v28 = (v132 + v3 + 8 * v2);
  *v28 = 9;
  v29 = v28 + v27;
  *v29 = "Prefix";
  *(v29 + 1) = 6;
  v29[16] = 2;
  *(v29 + 3) = "p";
  *(v29 + 4) = 1;
  v29[40] = 2;
  v7();
  v30 = v1[14];
  v31 = (v132 + v3 + 9 * v2);
  *v31 = 10;
  v32 = v31 + v30;
  *v32 = "Query";
  *(v32 + 1) = 5;
  v32[16] = 2;
  *(v32 + 3) = "q";
  *(v32 + 4) = 1;
  v32[40] = 2;
  v7();
  v33 = v1[14];
  v34 = (v132 + v3 + 10 * v2);
  *v34 = 11;
  v35 = v34 + v33;
  *v35 = "ABVersion";
  *(v35 + 1) = 9;
  v35[16] = 2;
  *(v35 + 3) = "ab";
  *(v35 + 4) = 2;
  v35[40] = 2;
  v7();
  v36 = v1[14];
  v37 = (v132 + v3 + 11 * v2);
  *v37 = 12;
  v38 = v37 + v36;
  *v38 = "SearchID";
  *(v38 + 1) = 8;
  v38[16] = 2;
  *(v38 + 3) = "sid";
  *(v38 + 4) = 3;
  v38[40] = 2;
  v7();
  v39 = v1[14];
  v40 = (v132 + v3 + 12 * v2);
  *v40 = 13;
  v41 = v40 + v39;
  *v41 = "UserGuid";
  *(v41 + 1) = 8;
  v41[16] = 2;
  *(v41 + 3) = "u";
  *(v41 + 4) = 1;
  v41[40] = 2;
  v7();
  v42 = v1[14];
  v43 = (v132 + v3 + 13 * v2);
  *v43 = 14;
  v44 = v43 + v42;
  *v44 = "InDomainOrder";
  *(v44 + 1) = 13;
  v44[16] = 2;
  *(v44 + 3) = "do";
  *(v44 + 4) = 2;
  v44[40] = 2;
  v7();
  v45 = v1[14];
  v46 = (v132 + v3 + 14 * v2);
  *v46 = 15;
  v47 = v46 + v45;
  *v47 = "RankerOrder";
  *(v47 + 1) = 11;
  v47[16] = 2;
  *(v47 + 3) = "ro";
  *(v47 + 4) = 2;
  v47[40] = 2;
  v7();
  v48 = v1[14];
  v49 = (v132 + v3 + 15 * v2);
  *v49 = 16;
  v50 = v49 + v48;
  *v50 = "PostMergeOrder";
  *(v50 + 1) = 14;
  v50[16] = 2;
  *(v50 + 3) = "mo";
  *(v50 + 4) = 2;
  v50[40] = 2;
  v7();
  v51 = v1[14];
  v52 = (v132 + v3 + 16 * v2);
  *v52 = 17;
  v53 = v52 + v51;
  *v53 = "SerpGrouping";
  *(v53 + 1) = 12;
  v53[16] = 2;
  *(v53 + 3) = "sg";
  *(v53 + 4) = 2;
  v53[40] = 2;
  v7();
  v54 = v1[14];
  v55 = (v132 + v3 + 17 * v2);
  *v55 = 18;
  v56 = v55 + v54;
  *v56 = "SectionID";
  *(v56 + 1) = 9;
  v56[16] = 2;
  *(v56 + 3) = "s";
  *(v56 + 4) = 1;
  v56[40] = 2;
  v7();
  v57 = v1[14];
  v58 = (v132 + v3 + 18 * v2);
  *v58 = 19;
  v59 = v58 + v57;
  *v59 = "CardFBRs";
  *(v59 + 1) = 8;
  v59[16] = 2;
  *(v59 + 3) = "cf";
  *(v59 + 4) = 2;
  v59[40] = 2;
  v7();
  v60 = v1[14];
  v61 = (v132 + v3 + 19 * v2);
  *v61 = 20;
  v62 = v61 + v60;
  *v62 = "CardFBRIndexes";
  *(v62 + 1) = 14;
  v62[16] = 2;
  *(v62 + 3) = "ci";
  *(v62 + 4) = 2;
  v62[40] = 2;
  v7();
  v63 = v1[14];
  v64 = (v132 + v3 + 20 * v2);
  *v64 = 21;
  v65 = v64 + v63;
  *v65 = "DomainProperties";
  *(v65 + 1) = 16;
  v65[16] = 2;
  *(v65 + 3) = "dp";
  *(v65 + 4) = 2;
  v65[40] = 2;
  v7();
  v66 = v1[14];
  v67 = (v132 + v3 + 21 * v2);
  *v67 = 22;
  v68 = v67 + v66;
  *v68 = "ResultAge";
  *(v68 + 1) = 9;
  v68[16] = 2;
  *(v68 + 3) = "ag";
  *(v68 + 4) = 2;
  v68[40] = 2;
  v7();
  v69 = v1[14];
  v70 = (v132 + v3 + 22 * v2);
  *v70 = 23;
  v71 = v70 + v69;
  *v71 = "SiriUtterance";
  *(v71 + 1) = 13;
  v71[16] = 2;
  *(v71 + 3) = "su";
  *(v71 + 4) = 2;
  v71[40] = 2;
  v7();
  v72 = v1[14];
  v73 = (v132 + v3 + 23 * v2);
  *v73 = 24;
  v74 = v73 + v72;
  *v74 = "SiriRelatedAppBundelId";
  *(v74 + 1) = 22;
  v74[16] = 2;
  *(v74 + 3) = "sbid";
  *(v74 + 4) = 4;
  v74[40] = 2;
  v7();
  v75 = v1[14];
  v76 = (v132 + v3 + 24 * v2);
  *v76 = 25;
  v77 = v76 + v75;
  *v77 = "IsLocalCompletion";
  *(v77 + 1) = 17;
  v77[16] = 2;
  *(v77 + 3) = "lc";
  *(v77 + 4) = 2;
  v77[40] = 2;
  v7();
  v78 = v1[14];
  v79 = (v132 + v3 + 25 * v2);
  *v79 = 26;
  v80 = v79 + v78;
  *v80 = "IsLocalAndServerCompletionDifferent";
  *(v80 + 1) = 35;
  v80[16] = 2;
  *(v80 + 3) = "ils";
  *(v80 + 4) = 3;
  v80[40] = 2;
  v7();
  v81 = v1[14];
  v82 = (v132 + v3 + 26 * v2);
  *v82 = 27;
  v83 = v82 + v81;
  *v83 = "CardIds";
  *(v83 + 1) = 7;
  v83[16] = 2;
  *(v83 + 3) = "cs";
  *(v83 + 4) = 2;
  v83[40] = 2;
  v7();
  v84 = v1[14];
  v85 = (v132 + v3 + 27 * v2);
  *v85 = 28;
  v86 = v85 + v84;
  *v86 = "EntityType";
  *(v86 + 1) = 10;
  v86[16] = 2;
  *(v86 + 3) = "et";
  *(v86 + 4) = 2;
  v86[40] = 2;
  v7();
  v87 = v1[14];
  v88 = (v132 + v3 + 28 * v2);
  *v88 = 29;
  v89 = v88 + v87;
  *v89 = "DisplayInformation";
  *(v89 + 1) = 18;
  v89[16] = 2;
  *(v89 + 3) = "di";
  *(v89 + 4) = 2;
  v89[40] = 2;
  v7();
  v90 = v1[14];
  v91 = (v132 + v3 + 29 * v2);
  *v91 = 30;
  v92 = v91 + v90;
  *v92 = "UncorrectedQuery";
  *(v92 + 1) = 16;
  v92[16] = 2;
  *(v92 + 3) = "uq";
  *(v92 + 4) = 2;
  v92[40] = 2;
  v7();
  v93 = v1[14];
  v94 = (v132 + v3 + 30 * v2);
  *v94 = 31;
  v95 = v94 + v93;
  *v95 = "userDataShareOptIn";
  *(v95 + 1) = 18;
  v95[16] = 2;
  *(v95 + 3) = "soi";
  *(v95 + 4) = 3;
  v95[40] = 2;
  v7();
  v96 = v1[14];
  v97 = (v132 + v3 + 31 * v2);
  *v97 = 32;
  v98 = v97 + v96;
  *v98 = "ABVersionFailure";
  *(v98 + 1) = 16;
  v98[16] = 2;
  *(v98 + 3) = "abf";
  *(v98 + 4) = 3;
  v98[40] = 2;
  v7();
  v99 = (v132 + v3 + 32 * v2);
  v100 = v99 + v1[14];
  *v99 = 33;
  *v100 = "qid";
  *(v100 + 1) = 3;
  v100[16] = 2;
  v7();
  v101 = v1[14];
  v102 = (v132 + v3 + 33 * v2);
  *v102 = 34;
  v103 = v102 + v101;
  *v103 = "SuppressedSuggestion";
  *(v103 + 1) = 20;
  v103[16] = 2;
  *(v103 + 3) = "ssg";
  *(v103 + 4) = 3;
  v103[40] = 2;
  v7();
  v104 = v1[14];
  v105 = (v132 + v3 + 34 * v2);
  *v105 = 35;
  v106 = v105 + v104;
  *v106 = "SelectedExperience";
  *(v106 + 1) = 18;
  v106[16] = 2;
  *(v106 + 3) = "se";
  *(v106 + 4) = 2;
  v106[40] = 2;
  v7();
  v107 = v1[14];
  v108 = (v132 + v3 + 35 * v2);
  *v108 = 36;
  v109 = v108 + v107;
  *v109 = "KGInformation";
  *(v109 + 1) = 13;
  v109[16] = 2;
  *(v109 + 3) = "kg";
  *(v109 + 4) = 2;
  v109[40] = 2;
  v7();
  v110 = v1[14];
  v111 = (v132 + v3 + 36 * v2);
  *v111 = 37;
  v112 = v111 + v110;
  *v112 = "ViewType";
  *(v112 + 1) = 8;
  v112[16] = 2;
  *(v112 + 3) = "vt";
  *(v112 + 4) = 2;
  v112[40] = 2;
  v7();
  v113 = v1[14];
  v114 = (v132 + v3 + 37 * v2);
  *v114 = 38;
  v115 = v114 + v113;
  *v115 = "EntitySubtype";
  *(v115 + 1) = 13;
  v115[16] = 2;
  *(v115 + 3) = "es";
  *(v115 + 4) = 2;
  v115[40] = 2;
  v7();
  v116 = v1[14];
  v117 = (v132 + v3 + 38 * v2);
  *v117 = 39;
  v118 = v117 + v116;
  *v118 = "answer_type";
  *(v118 + 1) = 11;
  v118[16] = 2;
  *(v118 + 3) = "at";
  *(v118 + 4) = 2;
  v118[40] = 2;
  v7();
  v119 = v1[14];
  v120 = (v132 + v3 + 39 * v2);
  *v120 = 40;
  v121 = v120 + v119;
  *v121 = "serverReleaseVersion";
  *(v121 + 1) = 20;
  v121[16] = 2;
  *(v121 + 3) = "srv";
  *(v121 + 4) = 3;
  v121[40] = 2;
  v7();
  v122 = v1[14];
  v123 = (v132 + v3 + 40 * v2);
  *v123 = 41;
  v124 = v123 + v122;
  *v124 = "summary";
  *(v124 + 1) = 7;
  v124[16] = 2;
  *(v124 + 3) = "sum";
  *(v124 + 4) = 3;
  v124[40] = 2;
  v7();
  v125 = v1[14];
  v126 = (v132 + v3 + 41 * v2);
  *v126 = 42;
  v127 = v126 + v125;
  *v127 = "queryFreshness";
  *(v127 + 1) = 14;
  v127[16] = 2;
  *(v127 + 3) = "qf";
  *(v127 + 4) = 2;
  v127[40] = 2;
  v7();
  v128 = v1[14];
  v129 = (v132 + v3 + 42 * v2);
  *v129 = 43;
  v130 = v129 + v128;
  *v130 = "content_age";
  *(v130 + 1) = 11;
  v130[16] = 2;
  *(v130 + 3) = "ca";
  *(v130 + 4) = 2;
  v130[40] = 2;
  v7();
  return sub_1B964C760();
}

uint64_t sub_1B8F3A50C()
{
  type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackResult._StorageClass(0);
  swift_allocObject();
  result = sub_1B8F3A54C();
  qword_1EBABF190 = result;
  return result;
}

uint64_t sub_1B8F3A54C()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = 0xE000000000000000;
  *(v0 + 32) = 0;
  *(v0 + 40) = 0xE000000000000000;
  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 48) = 0;
  *(v0 + 56) = 0xE000000000000000;
  *(v0 + 64) = v1;
  *(v0 + 72) = 0;
  *(v0 + 80) = 0xE000000000000000;
  *(v0 + 88) = v1;
  *(v0 + 96) = v1;
  *(v0 + 104) = v1;
  *(v0 + 112) = 0;
  *(v0 + 120) = 0xE000000000000000;
  *(v0 + 128) = 0;
  *(v0 + 136) = 0xE000000000000000;
  *(v0 + 144) = 0;
  *(v0 + 152) = 0;
  *(v0 + 160) = 0xE000000000000000;
  *(v0 + 168) = 0;
  *(v0 + 176) = 0xE000000000000000;
  *(v0 + 184) = 0;
  *(v0 + 192) = 0;
  *(v0 + 200) = 0;
  *(v0 + 208) = 0xE000000000000000;
  *(v0 + 216) = v1;
  *(v0 + 224) = v1;
  v2 = OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Feedback_V2_FeedbackResultP33_EE57CE0666E61E33DDFEED139D3F792813_StorageClass__domainProperties;
  v3 = type metadata accessor for Apple_Parsec_Feedback_V2_DomainProperty(0);
  __swift_storeEnumTagSinglePayload(v0 + v2, 1, 1, v3);
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Feedback_V2_FeedbackResultP33_EE57CE0666E61E33DDFEED139D3F792813_StorageClass__resultAge) = 0;
  v4 = (v0 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Feedback_V2_FeedbackResultP33_EE57CE0666E61E33DDFEED139D3F792813_StorageClass__siriUtterance);
  *v4 = 0;
  v4[1] = 0xE000000000000000;
  v5 = (v0 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Feedback_V2_FeedbackResultP33_EE57CE0666E61E33DDFEED139D3F792813_StorageClass__siriRelatedAppBundelID);
  *v5 = 0;
  v5[1] = 0xE000000000000000;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Feedback_V2_FeedbackResultP33_EE57CE0666E61E33DDFEED139D3F792813_StorageClass__isLocalCompletion) = 0;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Feedback_V2_FeedbackResultP33_EE57CE0666E61E33DDFEED139D3F792813_StorageClass__isLocalAndServerCompletionDifferent) = 0;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Feedback_V2_FeedbackResultP33_EE57CE0666E61E33DDFEED139D3F792813_StorageClass__cardIds) = v1;
  v6 = (v0 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Feedback_V2_FeedbackResultP33_EE57CE0666E61E33DDFEED139D3F792813_StorageClass__entityType);
  *v6 = 0;
  v6[1] = 0xE000000000000000;
  v7 = (v0 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Feedback_V2_FeedbackResultP33_EE57CE0666E61E33DDFEED139D3F792813_StorageClass__displayInformation);
  *v7 = 0;
  v7[1] = 0xE000000000000000;
  v8 = (v0 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Feedback_V2_FeedbackResultP33_EE57CE0666E61E33DDFEED139D3F792813_StorageClass__uncorrectedQuery);
  *v8 = 0;
  v8[1] = 0xE000000000000000;
  v9 = v0 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Feedback_V2_FeedbackResultP33_EE57CE0666E61E33DDFEED139D3F792813_StorageClass__userDataShareOptIn;
  *v9 = 0;
  *(v9 + 8) = 1;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Feedback_V2_FeedbackResultP33_EE57CE0666E61E33DDFEED139D3F792813_StorageClass__abversionFailure) = 0;
  v10 = (v0 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Feedback_V2_FeedbackResultP33_EE57CE0666E61E33DDFEED139D3F792813_StorageClass__qid);
  *v10 = 0;
  v10[1] = 0xE000000000000000;
  v11 = (v0 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Feedback_V2_FeedbackResultP33_EE57CE0666E61E33DDFEED139D3F792813_StorageClass__suppressedSuggestion);
  *v11 = 0;
  v11[1] = 0xE000000000000000;
  v12 = (v0 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Feedback_V2_FeedbackResultP33_EE57CE0666E61E33DDFEED139D3F792813_StorageClass__selectedExperience);
  *v12 = 0;
  v12[1] = 0xE000000000000000;
  v13 = OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Feedback_V2_FeedbackResultP33_EE57CE0666E61E33DDFEED139D3F792813_StorageClass__kginformation;
  v14 = type metadata accessor for Apple_Parsec_Feedback_V2_KGInfo(0);
  __swift_storeEnumTagSinglePayload(v0 + v13, 1, 1, v14);
  v15 = v0 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Feedback_V2_FeedbackResultP33_EE57CE0666E61E33DDFEED139D3F792813_StorageClass__viewType;
  *v15 = 0;
  *(v15 + 8) = 1;
  v16 = v0 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Feedback_V2_FeedbackResultP33_EE57CE0666E61E33DDFEED139D3F792813_StorageClass__entitySubtype;
  *v16 = 0;
  *(v16 + 8) = 1;
  v17 = v0 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Feedback_V2_FeedbackResultP33_EE57CE0666E61E33DDFEED139D3F792813_StorageClass__answerType;
  *v17 = 0;
  *(v17 + 8) = 1;
  v18 = (v0 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Feedback_V2_FeedbackResultP33_EE57CE0666E61E33DDFEED139D3F792813_StorageClass__serverReleaseVersion);
  *v18 = 0;
  v18[1] = 0xE000000000000000;
  v19 = (v0 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Feedback_V2_FeedbackResultP33_EE57CE0666E61E33DDFEED139D3F792813_StorageClass__summary);
  *v19 = 0;
  v19[1] = 0xE000000000000000;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Feedback_V2_FeedbackResultP33_EE57CE0666E61E33DDFEED139D3F792813_StorageClass__queryFreshness) = 0;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Feedback_V2_FeedbackResultP33_EE57CE0666E61E33DDFEED139D3F792813_StorageClass__contentAge) = v1;
  return v0;
}

uint64_t sub_1B8F3A750(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABF280, &qword_1B966D628);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v174 = &v136 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABF278, &qword_1B966D620);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v154 = &v136 - v6;
  *(v1 + 16) = 0;
  *(v1 + 24) = 0xE000000000000000;
  *(v1 + 32) = 0;
  *(v1 + 40) = 0xE000000000000000;
  *(v1 + 48) = 0;
  v136 = (v1 + 48);
  v7 = MEMORY[0x1E69E7CC0];
  *(v1 + 64) = MEMORY[0x1E69E7CC0];
  *(v1 + 72) = 0;
  v137 = (v1 + 72);
  *(v1 + 56) = 0xE000000000000000;
  *(v1 + 80) = 0xE000000000000000;
  *(v1 + 88) = v7;
  v138 = (v1 + 88);
  *(v1 + 96) = v7;
  v139 = (v1 + 96);
  *(v1 + 104) = v7;
  v140 = (v1 + 104);
  *(v1 + 112) = 0;
  v141 = (v1 + 112);
  *(v1 + 120) = 0xE000000000000000;
  *(v1 + 128) = 0;
  v142 = (v1 + 128);
  *(v1 + 144) = 0;
  v143 = (v1 + 144);
  *(v1 + 152) = 0;
  v144 = (v1 + 152);
  *(v1 + 136) = 0xE000000000000000;
  *(v1 + 160) = 0xE000000000000000;
  *(v1 + 168) = 0;
  v145 = (v1 + 168);
  *(v1 + 176) = 0xE000000000000000;
  *(v1 + 200) = 0;
  v148 = (v1 + 200);
  *(v1 + 192) = 0;
  v147 = (v1 + 192);
  *(v1 + 184) = 0;
  v146 = (v1 + 184);
  *(v1 + 216) = v7;
  v149 = (v1 + 216);
  *(v1 + 208) = 0xE000000000000000;
  *(v1 + 224) = v7;
  v150 = (v1 + 224);
  v8 = OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Feedback_V2_FeedbackResultP33_EE57CE0666E61E33DDFEED139D3F792813_StorageClass__domainProperties;
  v151 = OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Feedback_V2_FeedbackResultP33_EE57CE0666E61E33DDFEED139D3F792813_StorageClass__domainProperties;
  v9 = type metadata accessor for Apple_Parsec_Feedback_V2_DomainProperty(0);
  __swift_storeEnumTagSinglePayload(v1 + v8, 1, 1, v9);
  v152 = OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Feedback_V2_FeedbackResultP33_EE57CE0666E61E33DDFEED139D3F792813_StorageClass__resultAge;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Feedback_V2_FeedbackResultP33_EE57CE0666E61E33DDFEED139D3F792813_StorageClass__resultAge) = 0;
  v10 = (v1 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Feedback_V2_FeedbackResultP33_EE57CE0666E61E33DDFEED139D3F792813_StorageClass__siriUtterance);
  v153 = (v1 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Feedback_V2_FeedbackResultP33_EE57CE0666E61E33DDFEED139D3F792813_StorageClass__siriUtterance);
  *v10 = 0;
  v10[1] = 0xE000000000000000;
  v11 = (v1 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Feedback_V2_FeedbackResultP33_EE57CE0666E61E33DDFEED139D3F792813_StorageClass__siriRelatedAppBundelID);
  v155 = (v1 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Feedback_V2_FeedbackResultP33_EE57CE0666E61E33DDFEED139D3F792813_StorageClass__siriRelatedAppBundelID);
  *v11 = 0;
  v11[1] = 0xE000000000000000;
  v156 = OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Feedback_V2_FeedbackResultP33_EE57CE0666E61E33DDFEED139D3F792813_StorageClass__isLocalCompletion;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Feedback_V2_FeedbackResultP33_EE57CE0666E61E33DDFEED139D3F792813_StorageClass__isLocalCompletion) = 0;
  v157 = OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Feedback_V2_FeedbackResultP33_EE57CE0666E61E33DDFEED139D3F792813_StorageClass__isLocalAndServerCompletionDifferent;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Feedback_V2_FeedbackResultP33_EE57CE0666E61E33DDFEED139D3F792813_StorageClass__isLocalAndServerCompletionDifferent) = 0;
  v158 = OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Feedback_V2_FeedbackResultP33_EE57CE0666E61E33DDFEED139D3F792813_StorageClass__cardIds;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Feedback_V2_FeedbackResultP33_EE57CE0666E61E33DDFEED139D3F792813_StorageClass__cardIds) = v7;
  v12 = (v1 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Feedback_V2_FeedbackResultP33_EE57CE0666E61E33DDFEED139D3F792813_StorageClass__entityType);
  v159 = (v1 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Feedback_V2_FeedbackResultP33_EE57CE0666E61E33DDFEED139D3F792813_StorageClass__entityType);
  *v12 = 0;
  v12[1] = 0xE000000000000000;
  v13 = (v1 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Feedback_V2_FeedbackResultP33_EE57CE0666E61E33DDFEED139D3F792813_StorageClass__displayInformation);
  v160 = (v1 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Feedback_V2_FeedbackResultP33_EE57CE0666E61E33DDFEED139D3F792813_StorageClass__displayInformation);
  *v13 = 0;
  v13[1] = 0xE000000000000000;
  v14 = (v1 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Feedback_V2_FeedbackResultP33_EE57CE0666E61E33DDFEED139D3F792813_StorageClass__uncorrectedQuery);
  v161 = (v1 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Feedback_V2_FeedbackResultP33_EE57CE0666E61E33DDFEED139D3F792813_StorageClass__uncorrectedQuery);
  *v14 = 0;
  v14[1] = 0xE000000000000000;
  v15 = v1 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Feedback_V2_FeedbackResultP33_EE57CE0666E61E33DDFEED139D3F792813_StorageClass__userDataShareOptIn;
  v162 = v1 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Feedback_V2_FeedbackResultP33_EE57CE0666E61E33DDFEED139D3F792813_StorageClass__userDataShareOptIn;
  *v15 = 0;
  *(v15 + 8) = 1;
  v163 = OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Feedback_V2_FeedbackResultP33_EE57CE0666E61E33DDFEED139D3F792813_StorageClass__abversionFailure;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Feedback_V2_FeedbackResultP33_EE57CE0666E61E33DDFEED139D3F792813_StorageClass__abversionFailure) = 0;
  v16 = (v1 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Feedback_V2_FeedbackResultP33_EE57CE0666E61E33DDFEED139D3F792813_StorageClass__qid);
  v164 = (v1 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Feedback_V2_FeedbackResultP33_EE57CE0666E61E33DDFEED139D3F792813_StorageClass__qid);
  *v16 = 0;
  v16[1] = 0xE000000000000000;
  v17 = (v1 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Feedback_V2_FeedbackResultP33_EE57CE0666E61E33DDFEED139D3F792813_StorageClass__suppressedSuggestion);
  v165 = (v1 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Feedback_V2_FeedbackResultP33_EE57CE0666E61E33DDFEED139D3F792813_StorageClass__suppressedSuggestion);
  *v17 = 0;
  v17[1] = 0xE000000000000000;
  v18 = (v1 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Feedback_V2_FeedbackResultP33_EE57CE0666E61E33DDFEED139D3F792813_StorageClass__selectedExperience);
  v166 = (v1 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Feedback_V2_FeedbackResultP33_EE57CE0666E61E33DDFEED139D3F792813_StorageClass__selectedExperience);
  *v18 = 0;
  v18[1] = 0xE000000000000000;
  v19 = OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Feedback_V2_FeedbackResultP33_EE57CE0666E61E33DDFEED139D3F792813_StorageClass__kginformation;
  v167 = OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Feedback_V2_FeedbackResultP33_EE57CE0666E61E33DDFEED139D3F792813_StorageClass__kginformation;
  v20 = type metadata accessor for Apple_Parsec_Feedback_V2_KGInfo(0);
  __swift_storeEnumTagSinglePayload(v1 + v19, 1, 1, v20);
  v21 = v1 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Feedback_V2_FeedbackResultP33_EE57CE0666E61E33DDFEED139D3F792813_StorageClass__viewType;
  v168 = v1 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Feedback_V2_FeedbackResultP33_EE57CE0666E61E33DDFEED139D3F792813_StorageClass__viewType;
  *v21 = 0;
  *(v21 + 8) = 1;
  v22 = v1 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Feedback_V2_FeedbackResultP33_EE57CE0666E61E33DDFEED139D3F792813_StorageClass__entitySubtype;
  v169 = v1 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Feedback_V2_FeedbackResultP33_EE57CE0666E61E33DDFEED139D3F792813_StorageClass__entitySubtype;
  *v22 = 0;
  *(v22 + 8) = 1;
  v23 = v1 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Feedback_V2_FeedbackResultP33_EE57CE0666E61E33DDFEED139D3F792813_StorageClass__answerType;
  v170 = v1 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Feedback_V2_FeedbackResultP33_EE57CE0666E61E33DDFEED139D3F792813_StorageClass__answerType;
  *v23 = 0;
  *(v23 + 8) = 1;
  v24 = (v1 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Feedback_V2_FeedbackResultP33_EE57CE0666E61E33DDFEED139D3F792813_StorageClass__serverReleaseVersion);
  v171 = (v1 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Feedback_V2_FeedbackResultP33_EE57CE0666E61E33DDFEED139D3F792813_StorageClass__serverReleaseVersion);
  *v24 = 0;
  v24[1] = 0xE000000000000000;
  v25 = (v1 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Feedback_V2_FeedbackResultP33_EE57CE0666E61E33DDFEED139D3F792813_StorageClass__summary);
  v172 = (v1 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Feedback_V2_FeedbackResultP33_EE57CE0666E61E33DDFEED139D3F792813_StorageClass__summary);
  *v25 = 0;
  v25[1] = 0xE000000000000000;
  v173 = (v1 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Feedback_V2_FeedbackResultP33_EE57CE0666E61E33DDFEED139D3F792813_StorageClass__queryFreshness);
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Feedback_V2_FeedbackResultP33_EE57CE0666E61E33DDFEED139D3F792813_StorageClass__queryFreshness) = 0;
  v26 = OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Feedback_V2_FeedbackResultP33_EE57CE0666E61E33DDFEED139D3F792813_StorageClass__contentAge;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Feedback_V2_FeedbackResultP33_EE57CE0666E61E33DDFEED139D3F792813_StorageClass__contentAge) = v7;
  swift_beginAccess();
  v27 = *(a1 + 16);
  v28 = *(a1 + 24);
  swift_beginAccess();
  *(v1 + 16) = v27;
  *(v1 + 24) = v28;
  swift_beginAccess();
  v29 = *(a1 + 32);
  v30 = *(a1 + 40);
  swift_beginAccess();
  *(v1 + 32) = v29;
  *(v1 + 40) = v30;

  swift_beginAccess();
  v32 = *(a1 + 48);
  v31 = *(a1 + 56);
  v33 = v136;
  swift_beginAccess();
  *v33 = v32;
  *(v1 + 56) = v31;

  swift_beginAccess();
  v34 = *(a1 + 64);
  swift_beginAccess();
  *(v1 + 64) = v34;

  swift_beginAccess();
  v36 = *(a1 + 72);
  v35 = *(a1 + 80);
  v37 = v137;
  swift_beginAccess();
  *v37 = v36;
  *(v1 + 80) = v35;

  swift_beginAccess();
  v38 = *(a1 + 88);
  v39 = v138;
  swift_beginAccess();
  *v39 = v38;

  swift_beginAccess();
  v40 = *(a1 + 96);
  v41 = v139;
  swift_beginAccess();
  *v41 = v40;

  swift_beginAccess();
  v42 = *(a1 + 104);
  v43 = v140;
  swift_beginAccess();
  *v43 = v42;

  swift_beginAccess();
  v45 = *(a1 + 112);
  v44 = *(a1 + 120);
  v46 = v141;
  swift_beginAccess();
  *v46 = v45;
  *(v1 + 120) = v44;

  swift_beginAccess();
  v48 = *(a1 + 128);
  v47 = *(a1 + 136);
  v49 = v142;
  swift_beginAccess();
  *v49 = v48;
  *(v1 + 136) = v47;

  swift_beginAccess();
  LODWORD(v47) = *(a1 + 144);
  v50 = v143;
  swift_beginAccess();
  *v50 = v47;
  swift_beginAccess();
  v52 = *(a1 + 152);
  v51 = *(a1 + 160);
  v53 = v144;
  swift_beginAccess();
  *v53 = v52;
  *(v1 + 160) = v51;

  swift_beginAccess();
  v55 = *(a1 + 168);
  v54 = *(a1 + 176);
  v56 = v145;
  swift_beginAccess();
  *v56 = v55;
  *(v1 + 176) = v54;

  swift_beginAccess();
  LODWORD(v54) = *(a1 + 184);
  v57 = v146;
  swift_beginAccess();
  *v57 = v54;
  swift_beginAccess();
  LODWORD(v54) = *(a1 + 188);
  swift_beginAccess();
  *(v1 + 188) = v54;
  swift_beginAccess();
  LODWORD(v54) = *(a1 + 192);
  v58 = v147;
  swift_beginAccess();
  *v58 = v54;
  swift_beginAccess();
  LODWORD(v54) = *(a1 + 196);
  swift_beginAccess();
  *(v1 + 196) = v54;
  swift_beginAccess();
  v60 = *(a1 + 200);
  v59 = *(a1 + 208);
  v61 = v148;
  swift_beginAccess();
  *v61 = v60;
  *(v1 + 208) = v59;

  swift_beginAccess();
  v62 = *(a1 + 216);
  v63 = v149;
  swift_beginAccess();
  *v63 = v62;

  swift_beginAccess();
  v64 = *(a1 + 224);
  v65 = v150;
  swift_beginAccess();
  *v65 = v64;

  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  v66 = OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Feedback_V2_FeedbackResultP33_EE57CE0666E61E33DDFEED139D3F792813_StorageClass__resultAge;
  swift_beginAccess();
  v67 = *(a1 + v66);
  v68 = v152;
  swift_beginAccess();
  *(v1 + v68) = v67;
  v69 = (a1 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Feedback_V2_FeedbackResultP33_EE57CE0666E61E33DDFEED139D3F792813_StorageClass__siriUtterance);
  swift_beginAccess();
  v71 = *v69;
  v70 = v69[1];
  v72 = v153;
  swift_beginAccess();
  *v72 = v71;
  v72[1] = v70;

  v73 = (a1 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Feedback_V2_FeedbackResultP33_EE57CE0666E61E33DDFEED139D3F792813_StorageClass__siriRelatedAppBundelID);
  swift_beginAccess();
  v75 = *v73;
  v74 = v73[1];
  v76 = v155;
  swift_beginAccess();
  *v76 = v75;
  v76[1] = v74;

  v77 = OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Feedback_V2_FeedbackResultP33_EE57CE0666E61E33DDFEED139D3F792813_StorageClass__isLocalCompletion;
  swift_beginAccess();
  LODWORD(v77) = *(a1 + v77);
  v78 = v156;
  swift_beginAccess();
  *(v1 + v78) = v77;
  v79 = OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Feedback_V2_FeedbackResultP33_EE57CE0666E61E33DDFEED139D3F792813_StorageClass__isLocalAndServerCompletionDifferent;
  swift_beginAccess();
  LOBYTE(v79) = *(a1 + v79);
  v80 = v157;
  swift_beginAccess();
  *(v1 + v80) = v79;
  v81 = OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Feedback_V2_FeedbackResultP33_EE57CE0666E61E33DDFEED139D3F792813_StorageClass__cardIds;
  swift_beginAccess();
  v82 = *(a1 + v81);
  v83 = v158;
  swift_beginAccess();
  *(v1 + v83) = v82;

  v84 = (a1 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Feedback_V2_FeedbackResultP33_EE57CE0666E61E33DDFEED139D3F792813_StorageClass__entityType);
  swift_beginAccess();
  v86 = *v84;
  v85 = v84[1];
  v87 = v159;
  swift_beginAccess();
  *v87 = v86;
  v87[1] = v85;

  v88 = (a1 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Feedback_V2_FeedbackResultP33_EE57CE0666E61E33DDFEED139D3F792813_StorageClass__displayInformation);
  swift_beginAccess();
  v90 = *v88;
  v89 = v88[1];
  v91 = v160;
  swift_beginAccess();
  *v91 = v90;
  v91[1] = v89;

  v92 = (a1 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Feedback_V2_FeedbackResultP33_EE57CE0666E61E33DDFEED139D3F792813_StorageClass__uncorrectedQuery);
  swift_beginAccess();
  v94 = *v92;
  v93 = v92[1];
  v95 = v161;
  swift_beginAccess();
  *v95 = v94;
  v95[1] = v93;

  v96 = (a1 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Feedback_V2_FeedbackResultP33_EE57CE0666E61E33DDFEED139D3F792813_StorageClass__userDataShareOptIn);
  swift_beginAccess();
  v97 = *v96;
  LOBYTE(v96) = *(v96 + 8);
  v98 = v162;
  swift_beginAccess();
  *v98 = v97;
  *(v98 + 8) = v96;
  v99 = OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Feedback_V2_FeedbackResultP33_EE57CE0666E61E33DDFEED139D3F792813_StorageClass__abversionFailure;
  swift_beginAccess();
  LODWORD(v99) = *(a1 + v99);
  v100 = v163;
  swift_beginAccess();
  *(v1 + v100) = v99;
  v101 = (a1 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Feedback_V2_FeedbackResultP33_EE57CE0666E61E33DDFEED139D3F792813_StorageClass__qid);
  swift_beginAccess();
  v103 = *v101;
  v102 = v101[1];
  v104 = v164;
  swift_beginAccess();
  *v104 = v103;
  v104[1] = v102;

  v105 = (a1 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Feedback_V2_FeedbackResultP33_EE57CE0666E61E33DDFEED139D3F792813_StorageClass__suppressedSuggestion);
  swift_beginAccess();
  v107 = *v105;
  v106 = v105[1];
  v108 = v165;
  swift_beginAccess();
  *v108 = v107;
  v108[1] = v106;

  v109 = (a1 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Feedback_V2_FeedbackResultP33_EE57CE0666E61E33DDFEED139D3F792813_StorageClass__selectedExperience);
  swift_beginAccess();
  v111 = *v109;
  v110 = v109[1];
  v112 = v166;
  swift_beginAccess();
  *v112 = v111;
  v112[1] = v110;

  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  v113 = (a1 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Feedback_V2_FeedbackResultP33_EE57CE0666E61E33DDFEED139D3F792813_StorageClass__viewType);
  swift_beginAccess();
  v114 = *v113;
  LOBYTE(v113) = *(v113 + 8);
  v115 = v168;
  swift_beginAccess();
  *v115 = v114;
  *(v115 + 8) = v113;
  v116 = (a1 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Feedback_V2_FeedbackResultP33_EE57CE0666E61E33DDFEED139D3F792813_StorageClass__entitySubtype);
  swift_beginAccess();
  v117 = *v116;
  LOBYTE(v116) = *(v116 + 8);
  v118 = v169;
  swift_beginAccess();
  *v118 = v117;
  *(v118 + 8) = v116;
  v119 = (a1 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Feedback_V2_FeedbackResultP33_EE57CE0666E61E33DDFEED139D3F792813_StorageClass__answerType);
  swift_beginAccess();
  v120 = *v119;
  LOBYTE(v119) = *(v119 + 8);
  v121 = v170;
  swift_beginAccess();
  *v121 = v120;
  *(v121 + 8) = v119;
  v122 = (a1 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Feedback_V2_FeedbackResultP33_EE57CE0666E61E33DDFEED139D3F792813_StorageClass__serverReleaseVersion);
  swift_beginAccess();
  v124 = *v122;
  v123 = v122[1];
  v125 = v171;
  swift_beginAccess();
  *v125 = v124;
  v125[1] = v123;

  v126 = (a1 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Feedback_V2_FeedbackResultP33_EE57CE0666E61E33DDFEED139D3F792813_StorageClass__summary);
  swift_beginAccess();
  v128 = *v126;
  v127 = v126[1];
  v129 = v172;
  swift_beginAccess();
  *v129 = v128;
  v129[1] = v127;

  v130 = (a1 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Feedback_V2_FeedbackResultP33_EE57CE0666E61E33DDFEED139D3F792813_StorageClass__queryFreshness);
  swift_beginAccess();
  v131 = *v130;
  v132 = v173;
  swift_beginAccess();
  *v132 = v131;
  v133 = OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Feedback_V2_FeedbackResultP33_EE57CE0666E61E33DDFEED139D3F792813_StorageClass__contentAge;
  swift_beginAccess();
  v134 = *(a1 + v133);

  swift_beginAccess();
  *(v1 + v26) = v134;

  return v1;
}

uint64_t sub_1B8F3B7AC()
{
  OUTLINED_FUNCTION_468();
  v1(0);
  OUTLINED_FUNCTION_59_1();
  v2 = OUTLINED_FUNCTION_432();
  v3(v2);
  return v0;
}

uint64_t sub_1B8F3B804()
{
  OUTLINED_FUNCTION_468();
  v1(0);
  OUTLINED_FUNCTION_59_1();
  v2 = OUTLINED_FUNCTION_432();
  v3(v2);
  return v0;
}

uint64_t sub_1B8F3B85C()
{
  v1 = OUTLINED_FUNCTION_313();
  v2(v1);
  OUTLINED_FUNCTION_59_1();
  (*(v3 + 8))(v0);
  return v0;
}

void *sub_1B8F3B974()
{

  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Feedback_V2_FeedbackResultP33_EE57CE0666E61E33DDFEED139D3F792813_StorageClass__domainProperties, &qword_1EBABF278, &qword_1B966D620);

  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Feedback_V2_FeedbackResultP33_EE57CE0666E61E33DDFEED139D3F792813_StorageClass__kginformation, &qword_1EBABF280, &qword_1B966D628);

  return v0;
}

uint64_t sub_1B8F3BB2C()
{
  v0 = sub_1B8F3B974();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t Apple_Parsec_Feedback_V2_FeedbackResult.decodeMessage<A>(decoder:)()
{
  v1 = OUTLINED_FUNCTION_118_1();
  v2 = *(type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackResult(v1) + 20);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackResult._StorageClass(0);
    OUTLINED_FUNCTION_57_0();
    swift_allocObject();
    v3 = OUTLINED_FUNCTION_40_0();
    *(v0 + v2) = sub_1B8F3A750(v3);
  }

  v4 = OUTLINED_FUNCTION_7_6();
  return sub_1B8F3BBF8(v4, v5, v6, v7);
}

uint64_t sub_1B8F3BBF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  while (1)
  {
    result = sub_1B964C3C0();
    if (v4 || (v10 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        sub_1B8E75B3C();
        continue;
      case 2:
        sub_1B8E75BA0();
        continue;
      case 3:
        sub_1B8F438D8();
        continue;
      case 4:
        sub_1B8F3C0F8(a2, a1, a3, a4);
        continue;
      case 5:
        sub_1B8E6D974(a2, a1);
        continue;
      case 6:
        sub_1B8F3C17C(a2, a1, a3, a4);
        continue;
      case 7:
        sub_1B8F3C200(a2, a1, a3, a4);
        continue;
      case 8:
        sub_1B8F3C284(a2, a1, a3, a4);
        continue;
      case 9:
        sub_1B8E2F858(a2, a1);
        continue;
      case 10:
        sub_1B8E71858(a2, a1);
        continue;
      case 11:
        sub_1B8E718DC(a2, a1, a3, a4);
        continue;
      case 12:
        sub_1B8E71960(a2, a1);
        continue;
      case 13:
        sub_1B8F3C308(a2, a1);
        continue;
      case 14:
        sub_1B8F3C38C(a2, a1, a3, a4);
        continue;
      case 15:
        sub_1B8F3C410(a2, a1, a3, a4);
        continue;
      case 16:
        sub_1B8F3C494(a2, a1, a3, a4);
        continue;
      case 17:
        sub_1B8F3C518(a2, a1, a3, a4);
        continue;
      case 18:
        sub_1B8E88F84(a2, a1);
        continue;
      case 19:
        sub_1B8F3C59C(a2, a1, a3, a4);
        continue;
      case 20:
        sub_1B8F3C668(a2, a1, a3, a4);
        continue;
      case 21:
        sub_1B8F3C6EC(a2, a1, a3, a4);
        continue;
      case 22:
        v16 = &OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Feedback_V2_FeedbackResultP33_EE57CE0666E61E33DDFEED139D3F792813_StorageClass__resultAge;
        v17 = MEMORY[0x1E69AACA8];
        goto LABEL_41;
      case 23:
      case 24:
      case 28:
      case 29:
      case 30:
      case 33:
      case 34:
      case 35:
      case 40:
      case 41:
        sub_1B8F3C9C4();
        continue;
      case 25:
        v14 = &OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Feedback_V2_FeedbackResultP33_EE57CE0666E61E33DDFEED139D3F792813_StorageClass__isLocalCompletion;
        goto LABEL_22;
      case 26:
        sub_1B8F3C7C8(a2, a1, a3, a4);
        continue;
      case 27:
        v16 = &OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Feedback_V2_FeedbackResultP33_EE57CE0666E61E33DDFEED139D3F792813_StorageClass__cardIds;
        v17 = MEMORY[0x1E69AAC60];
        goto LABEL_41;
      case 31:
        v11 = &OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Feedback_V2_FeedbackResultP33_EE57CE0666E61E33DDFEED139D3F792813_StorageClass__userDataShareOptIn;
        v12 = &type metadata for Apple_Parsec_Feedback_V2_UserDataShareOptIn;
        v13 = sub_1B8F4A8D4;
        goto LABEL_39;
      case 32:
        v14 = &OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Feedback_V2_FeedbackResultP33_EE57CE0666E61E33DDFEED139D3F792813_StorageClass__abversionFailure;
LABEL_22:
        v15 = MEMORY[0x1E69AAC98];
        goto LABEL_25;
      case 36:
        sub_1B8F3C854(a2, a1, a3, a4);
        continue;
      case 37:
        v11 = &OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Feedback_V2_FeedbackResultP33_EE57CE0666E61E33DDFEED139D3F792813_StorageClass__viewType;
        v12 = &type metadata for Apple_Parsec_Feedback_V2_ViewType;
        v13 = sub_1B8F4A880;
        goto LABEL_39;
      case 38:
        v11 = &OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Feedback_V2_FeedbackResultP33_EE57CE0666E61E33DDFEED139D3F792813_StorageClass__entitySubtype;
        v12 = &type metadata for Apple_Parsec_Feedback_V2_EntitySubType;
        v13 = sub_1B8F4A82C;
        goto LABEL_39;
      case 39:
        v11 = &OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Feedback_V2_FeedbackResultP33_EE57CE0666E61E33DDFEED139D3F792813_StorageClass__answerType;
        v12 = &type metadata for Apple_Parsec_Feedback_V2_AnswerType;
        v13 = sub_1B8F4A7D8;
LABEL_39:
        sub_1B8F3C930(a2, a1, a3, a4, v11, v13, v12);
        break;
      case 42:
        v14 = &OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Feedback_V2_FeedbackResultP33_EE57CE0666E61E33DDFEED139D3F792813_StorageClass__queryFreshness;
        v15 = MEMORY[0x1E69AAC88];
LABEL_25:
        sub_1B8F3CA2C(a2, a1, a3, a4, v14, v15);
        break;
      case 43:
        v16 = &OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Feedback_V2_FeedbackResultP33_EE57CE0666E61E33DDFEED139D3F792813_StorageClass__contentAge;
        v17 = MEMORY[0x1E69AAC68];
LABEL_41:
        sub_1B8F3CAA0(a2, a1, a3, a4, v16, v17);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B8F3C0F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1B964C4D0();
  return swift_endAccess();
}

uint64_t sub_1B8F3C17C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1B964C440();
  return swift_endAccess();
}

uint64_t sub_1B8F3C200(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1B964C440();
  return swift_endAccess();
}

uint64_t sub_1B8F3C284(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1B964C440();
  return swift_endAccess();
}

uint64_t sub_1B8F3C308(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  sub_1B964C530();
  return swift_endAccess();
}

uint64_t sub_1B8F3C38C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1B964C4A0();
  return swift_endAccess();
}

uint64_t sub_1B8F3C410(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1B964C4A0();
  return swift_endAccess();
}

uint64_t sub_1B8F3C494(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1B964C4A0();
  return swift_endAccess();
}

uint64_t sub_1B8F3C518(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1B964C4A0();
  return swift_endAccess();
}

uint64_t sub_1B8F3C59C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackResult(0);
  sub_1B8CD2408(&qword_1EBABF4E8, type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackResult, protocol conformance descriptor for Apple_Parsec_Feedback_V2_FeedbackResult);
  sub_1B964C570();
  return swift_endAccess();
}

uint64_t sub_1B8F3C668(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1B964C440();
  return swift_endAccess();
}

uint64_t sub_1B8F3C6EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Apple_Parsec_Feedback_V2_DomainProperty(0);
  sub_1B8CD2408(&qword_1EBABF4D0, type metadata accessor for Apple_Parsec_Feedback_V2_DomainProperty, protocol conformance descriptor for Apple_Parsec_Feedback_V2_DomainProperty);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B8F3C7C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1B964C400();
  return swift_endAccess();
}

uint64_t sub_1B8F3C854(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Apple_Parsec_Feedback_V2_KGInfo(0);
  sub_1B8CD2408(&qword_1EBABF520, type metadata accessor for Apple_Parsec_Feedback_V2_KGInfo, protocol conformance descriptor for Apple_Parsec_Feedback_V2_KGInfo);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B8F3C930(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t), uint64_t a7)
{
  OUTLINED_FUNCTION_122_1();
  OUTLINED_FUNCTION_131();
  v8 = swift_beginAccess();
  a6(v8);
  v9 = sub_1B964C420();
  return OUTLINED_FUNCTION_199_1(v9);
}

uint64_t sub_1B8F3C9C4()
{
  OUTLINED_FUNCTION_147_1();
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  OUTLINED_FUNCTION_12();
  v0 = sub_1B964C530();
  return OUTLINED_FUNCTION_199_1(v0);
}

uint64_t sub_1B8F3CA2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t))
{
  OUTLINED_FUNCTION_122_1();
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  v7 = OUTLINED_FUNCTION_174_2();
  v8 = a6(v7);
  return OUTLINED_FUNCTION_199_1(v8);
}

uint64_t sub_1B8F3CAA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t))
{
  OUTLINED_FUNCTION_122_1();
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  v7 = OUTLINED_FUNCTION_174_2();
  v8 = a6(v7);
  return OUTLINED_FUNCTION_199_1(v8);
}

uint64_t sub_1B8F3CB54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABF280, &qword_1B966D628);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v96 = v95 - v10;
  v97 = type metadata accessor for Apple_Parsec_Feedback_V2_KGInfo(0);
  MEMORY[0x1EEE9AC00](v97);
  v98 = v95 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABF278, &qword_1B966D620);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = v95 - v13;
  v15 = type metadata accessor for Apple_Parsec_Feedback_V2_DomainProperty(0);
  MEMORY[0x1EEE9AC00](v15);
  v107 = v95 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v17 = *(a1 + 24);
  v18 = HIBYTE(v17) & 0xF;
  if ((v17 & 0x2000000000000000) == 0)
  {
    v18 = *(a1 + 16) & 0xFFFFFFFFFFFFLL;
  }

  if (v18)
  {

    sub_1B964C700();
    if (v4)
    {
    }
  }

  swift_beginAccess();
  v19 = *(a1 + 40);
  v20 = HIBYTE(v19) & 0xF;
  if ((v19 & 0x2000000000000000) == 0)
  {
    v20 = *(a1 + 32) & 0xFFFFFFFFFFFFLL;
  }

  if (v20)
  {

    sub_1B964C700();
    if (v4)
    {
    }
  }

  swift_beginAccess();
  v21 = *(a1 + 56);
  v22 = HIBYTE(v21) & 0xF;
  if ((v21 & 0x2000000000000000) == 0)
  {
    v22 = *(a1 + 48) & 0xFFFFFFFFFFFFLL;
  }

  if (v22)
  {

    sub_1B964C700();
    if (v4)
    {
    }
  }

  swift_beginAccess();
  if (*(*(a1 + 64) + 16))
  {

    sub_1B964C6E0();
    if (v4)
    {
    }
  }

  swift_beginAccess();
  v23 = *(a1 + 80);
  v24 = HIBYTE(v23) & 0xF;
  if ((v23 & 0x2000000000000000) == 0)
  {
    v24 = *(a1 + 72) & 0xFFFFFFFFFFFFLL;
  }

  if (v24)
  {

    sub_1B964C700();
    if (v4)
    {
    }
  }

  swift_beginAccess();
  if (*(*(a1 + 88) + 16))
  {

    sub_1B964C620();
    if (v4)
    {
    }
  }

  swift_beginAccess();
  if (*(*(a1 + 96) + 16))
  {

    sub_1B964C620();
    if (v4)
    {
    }
  }

  swift_beginAccess();
  if (*(*(a1 + 104) + 16))
  {

    sub_1B964C620();
    if (v4)
    {
    }
  }

  swift_beginAccess();
  v25 = *(a1 + 120);
  v26 = HIBYTE(v25) & 0xF;
  if ((v25 & 0x2000000000000000) == 0)
  {
    v26 = *(a1 + 112) & 0xFFFFFFFFFFFFLL;
  }

  if (v26)
  {

    sub_1B964C700();
    if (v4)
    {
    }
  }

  swift_beginAccess();
  v27 = *(a1 + 136);
  v28 = HIBYTE(v27) & 0xF;
  if ((v27 & 0x2000000000000000) == 0)
  {
    v28 = *(a1 + 128) & 0xFFFFFFFFFFFFLL;
  }

  if (v28)
  {

    sub_1B964C700();
    if (v4)
    {
    }
  }

  swift_beginAccess();
  if (*(a1 + 144))
  {
    result = sub_1B964C6C0();
    if (v4)
    {
      return result;
    }
  }

  swift_beginAccess();
  v30 = *(a1 + 160);
  v31 = HIBYTE(v30) & 0xF;
  if ((v30 & 0x2000000000000000) == 0)
  {
    v31 = *(a1 + 152) & 0xFFFFFFFFFFFFLL;
  }

  if (v31)
  {

    sub_1B964C700();
    if (!v4)
    {

      goto LABEL_50;
    }
  }

LABEL_50:
  swift_beginAccess();
  v32 = *(a1 + 176);
  v33 = HIBYTE(v32) & 0xF;
  if ((v32 & 0x2000000000000000) == 0)
  {
    v33 = *(a1 + 168) & 0xFFFFFFFFFFFFLL;
  }

  if (v33)
  {

    sub_1B964C700();
    if (v4)
    {
    }
  }

  swift_beginAccess();
  v34 = a4;
  if (*(a1 + 184))
  {
    v35 = a3;
    result = sub_1B964C6C0();
    if (v4)
    {
      return result;
    }
  }

  else
  {
    v35 = a3;
  }

  swift_beginAccess();
  if (!*(a1 + 188) || (result = sub_1B964C6C0(), !v4))
  {
    swift_beginAccess();
    if (!*(a1 + 192) || (result = sub_1B964C6C0(), !v4))
    {
      swift_beginAccess();
      if (!*(a1 + 196) || (result = sub_1B964C6C0(), !v4))
      {
        v95[2] = v34;
        swift_beginAccess();
        v36 = *(a1 + 208);
        v37 = HIBYTE(v36) & 0xF;
        if ((v36 & 0x2000000000000000) == 0)
        {
          v37 = *(a1 + 200) & 0xFFFFFFFFFFFFLL;
        }

        if (v37)
        {

          sub_1B964C700();
          if (v4)
          {
          }
        }

        swift_beginAccess();
        v38 = *(*(a1 + 216) + 16);
        v95[1] = v35;
        if (v38)
        {
          type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackResult(0);
          sub_1B8CD2408(&qword_1EBABF4E8, type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackResult, protocol conformance descriptor for Apple_Parsec_Feedback_V2_FeedbackResult);

          sub_1B964C730();
          if (v4)
          {
          }
        }

        swift_beginAccess();
        if (*(*(a1 + 224) + 16))
        {

          sub_1B964C620();
          if (v4)
          {
          }
        }

        swift_beginAccess();
        sub_1B8D92024();
        if (__swift_getEnumTagSinglePayload(v14, 1, v15) == 1)
        {
          sub_1B8D9207C(v14, &qword_1EBABF278, &qword_1B966D620);
        }

        else
        {
          sub_1B8F3B7AC();
          sub_1B8CD2408(&qword_1EBABF4D0, type metadata accessor for Apple_Parsec_Feedback_V2_DomainProperty, protocol conformance descriptor for Apple_Parsec_Feedback_V2_DomainProperty);
          sub_1B964C740();
          if (v4)
          {
            return sub_1B8F3B85C();
          }

          sub_1B8F3B85C();
        }

        v39 = OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Feedback_V2_FeedbackResultP33_EE57CE0666E61E33DDFEED139D3F792813_StorageClass__resultAge;
        swift_beginAccess();
        if (!*(a1 + v39) || (result = sub_1B964C6D0(), !v4))
        {
          v40 = (a1 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Feedback_V2_FeedbackResultP33_EE57CE0666E61E33DDFEED139D3F792813_StorageClass__siriUtterance);
          swift_beginAccess();
          v41 = *v40;
          v42 = v40[1];
          v43 = HIBYTE(v42) & 0xF;
          if ((v42 & 0x2000000000000000) == 0)
          {
            v43 = v41 & 0xFFFFFFFFFFFFLL;
          }

          if (v43)
          {

            sub_1B964C700();
            if (v5)
            {
            }
          }

          v44 = (a1 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Feedback_V2_FeedbackResultP33_EE57CE0666E61E33DDFEED139D3F792813_StorageClass__siriRelatedAppBundelID);
          swift_beginAccess();
          v45 = *v44;
          v46 = v44[1];
          v47 = HIBYTE(v46) & 0xF;
          if ((v46 & 0x2000000000000000) == 0)
          {
            v47 = v45 & 0xFFFFFFFFFFFFLL;
          }

          if (v47)
          {

            sub_1B964C700();
            if (v5)
            {
            }
          }

          v48 = OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Feedback_V2_FeedbackResultP33_EE57CE0666E61E33DDFEED139D3F792813_StorageClass__isLocalCompletion;
          swift_beginAccess();
          if (!*(a1 + v48) || (result = sub_1B964C6C0(), !v5))
          {
            v49 = OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Feedback_V2_FeedbackResultP33_EE57CE0666E61E33DDFEED139D3F792813_StorageClass__isLocalAndServerCompletionDifferent;
            swift_beginAccess();
            if (*(a1 + v49) != 1 || (result = sub_1B964C670(), !v5))
            {
              v50 = OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Feedback_V2_FeedbackResultP33_EE57CE0666E61E33DDFEED139D3F792813_StorageClass__cardIds;
              swift_beginAccess();
              if (*(*(a1 + v50) + 16))
              {

                sub_1B964C620();
                if (v5)
                {
                }
              }

              v51 = (a1 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Feedback_V2_FeedbackResultP33_EE57CE0666E61E33DDFEED139D3F792813_StorageClass__entityType);
              swift_beginAccess();
              v52 = *v51;
              v53 = v51[1];
              v54 = HIBYTE(v53) & 0xF;
              if ((v53 & 0x2000000000000000) == 0)
              {
                v54 = v52 & 0xFFFFFFFFFFFFLL;
              }

              if (v54)
              {

                sub_1B964C700();
                if (v5)
                {
                }
              }

              v55 = (a1 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Feedback_V2_FeedbackResultP33_EE57CE0666E61E33DDFEED139D3F792813_StorageClass__displayInformation);
              swift_beginAccess();
              v56 = *v55;
              v57 = v55[1];
              v58 = HIBYTE(v57) & 0xF;
              if ((v57 & 0x2000000000000000) == 0)
              {
                v58 = v56 & 0xFFFFFFFFFFFFLL;
              }

              if (v58)
              {

                sub_1B964C700();
                if (v5)
                {
                }
              }

              v59 = (a1 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Feedback_V2_FeedbackResultP33_EE57CE0666E61E33DDFEED139D3F792813_StorageClass__uncorrectedQuery);
              swift_beginAccess();
              v60 = *v59;
              v61 = v59[1];
              v62 = HIBYTE(v61) & 0xF;
              if ((v61 & 0x2000000000000000) == 0)
              {
                v62 = v60 & 0xFFFFFFFFFFFFLL;
              }

              if (v62)
              {

                sub_1B964C700();
                if (v5)
                {
                }
              }

              v63 = (a1 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Feedback_V2_FeedbackResultP33_EE57CE0666E61E33DDFEED139D3F792813_StorageClass__userDataShareOptIn);
              swift_beginAccess();
              if (!*v63 || (v64 = *(v63 + 8), v105 = *v63, v106 = v64, sub_1B8F4A8D4(), result = sub_1B964C680(), !v5))
              {
                v65 = OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Feedback_V2_FeedbackResultP33_EE57CE0666E61E33DDFEED139D3F792813_StorageClass__abversionFailure;
                swift_beginAccess();
                if (!*(a1 + v65) || (result = sub_1B964C6C0(), !v5))
                {
                  v66 = (a1 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Feedback_V2_FeedbackResultP33_EE57CE0666E61E33DDFEED139D3F792813_StorageClass__qid);
                  swift_beginAccess();
                  v67 = *v66;
                  v68 = v66[1];
                  v69 = HIBYTE(v68) & 0xF;
                  if ((v68 & 0x2000000000000000) == 0)
                  {
                    v69 = v67 & 0xFFFFFFFFFFFFLL;
                  }

                  if (v69)
                  {

                    sub_1B964C700();
                    if (v5)
                    {
                    }
                  }

                  v70 = (a1 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Feedback_V2_FeedbackResultP33_EE57CE0666E61E33DDFEED139D3F792813_StorageClass__suppressedSuggestion);
                  swift_beginAccess();
                  v71 = *v70;
                  v72 = v70[1];
                  v73 = HIBYTE(v72) & 0xF;
                  if ((v72 & 0x2000000000000000) == 0)
                  {
                    v73 = v71 & 0xFFFFFFFFFFFFLL;
                  }

                  if (v73)
                  {

                    sub_1B964C700();
                    if (v5)
                    {
                    }
                  }

                  v74 = (a1 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Feedback_V2_FeedbackResultP33_EE57CE0666E61E33DDFEED139D3F792813_StorageClass__selectedExperience);
                  swift_beginAccess();
                  v75 = *v74;
                  v76 = v74[1];
                  v77 = HIBYTE(v76) & 0xF;
                  if ((v76 & 0x2000000000000000) == 0)
                  {
                    v77 = v75 & 0xFFFFFFFFFFFFLL;
                  }

                  if (v77)
                  {

                    sub_1B964C700();
                    if (v5)
                    {
                    }
                  }

                  swift_beginAccess();
                  v78 = v96;
                  sub_1B8D92024();
                  if (__swift_getEnumTagSinglePayload(v78, 1, v97) == 1)
                  {
                    sub_1B8D9207C(v96, &qword_1EBABF280, &qword_1B966D628);
                    goto LABEL_140;
                  }

                  sub_1B8F3B7AC();
                  sub_1B8CD2408(&qword_1EBABF520, type metadata accessor for Apple_Parsec_Feedback_V2_KGInfo, protocol conformance descriptor for Apple_Parsec_Feedback_V2_KGInfo);
                  sub_1B964C740();
                  if (!v5)
                  {
                    sub_1B8F3B85C();
LABEL_140:
                    v79 = (a1 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Feedback_V2_FeedbackResultP33_EE57CE0666E61E33DDFEED139D3F792813_StorageClass__viewType);
                    swift_beginAccess();
                    if (!*v79 || (v80 = *(v79 + 8), v103 = *v79, v104 = v80, sub_1B8F4A880(), result = sub_1B964C680(), !v5))
                    {
                      v81 = (a1 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Feedback_V2_FeedbackResultP33_EE57CE0666E61E33DDFEED139D3F792813_StorageClass__entitySubtype);
                      swift_beginAccess();
                      if (!*v81 || (v82 = *(v81 + 8), v101 = *v81, v102 = v82, sub_1B8F4A82C(), result = sub_1B964C680(), !v5))
                      {
                        v83 = (a1 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Feedback_V2_FeedbackResultP33_EE57CE0666E61E33DDFEED139D3F792813_StorageClass__answerType);
                        swift_beginAccess();
                        if (!*v83 || (v84 = *(v83 + 8), v99 = *v83, v100 = v84, sub_1B8F4A7D8(), result = sub_1B964C680(), !v5))
                        {
                          v85 = (a1 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Feedback_V2_FeedbackResultP33_EE57CE0666E61E33DDFEED139D3F792813_StorageClass__serverReleaseVersion);
                          swift_beginAccess();
                          v86 = *v85;
                          v87 = v85[1];
                          v88 = HIBYTE(v87) & 0xF;
                          if ((v87 & 0x2000000000000000) == 0)
                          {
                            v88 = v86 & 0xFFFFFFFFFFFFLL;
                          }

                          if (v88)
                          {

                            sub_1B964C700();
                            if (v5)
                            {
                            }
                          }

                          v89 = (a1 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Feedback_V2_FeedbackResultP33_EE57CE0666E61E33DDFEED139D3F792813_StorageClass__summary);
                          swift_beginAccess();
                          v90 = *v89;
                          v91 = v89[1];
                          v92 = HIBYTE(v91) & 0xF;
                          if ((v91 & 0x2000000000000000) == 0)
                          {
                            v92 = v90 & 0xFFFFFFFFFFFFLL;
                          }

                          if (v92)
                          {

                            sub_1B964C700();
                            if (v5)
                            {
                            }
                          }

                          v93 = (a1 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Feedback_V2_FeedbackResultP33_EE57CE0666E61E33DDFEED139D3F792813_StorageClass__queryFreshness);
                          swift_beginAccess();
                          if (*v93 == 0.0 || (result = sub_1B964C6B0(), !v5))
                          {
                            v94 = OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Feedback_V2_FeedbackResultP33_EE57CE0666E61E33DDFEED139D3F792813_StorageClass__contentAge;
                            result = swift_beginAccess();
                            if (*(*(a1 + v94) + 16))
                            {

                              sub_1B964C630();
                            }
                          }
                        }
                      }
                    }

                    return result;
                  }

                  return sub_1B8F3B85C();
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

uint64_t sub_1B8F3DD7C(uint64_t a1, uint64_t a2)
{
  v190 = type metadata accessor for Apple_Parsec_Feedback_V2_KGInfo(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_62();
  v192 = (v6 - v5);
  v188 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABF6B0, &qword_1B966F7F8);
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v7);
  v193 = &v186 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABF280, &qword_1B966D628);
  v10 = OUTLINED_FUNCTION_183(v9);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v191 = (&v186 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v11);
  v189 = &v186 - v13;
  v14 = type metadata accessor for Apple_Parsec_Feedback_V2_DomainProperty(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_62();
  v18 = v17 - v16;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABF6B8, &unk_1B966F800);
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v20);
  v194 = &v186 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABF278, &qword_1B966D620);
  v23 = OUTLINED_FUNCTION_183(v22);
  v24 = MEMORY[0x1EEE9AC00](v23);
  v26 = &v186 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v28 = &v186 - v27;
  OUTLINED_FUNCTION_521(a1 + 16, v280);
  v30 = *(a1 + 16);
  v29 = *(a1 + 24);
  OUTLINED_FUNCTION_521(a2 + 16, v279);
  v31 = v30 == *(a2 + 16) && v29 == *(a2 + 24);
  if (v31 || (sub_1B964C9F0() & 1) != 0)
  {
    OUTLINED_FUNCTION_521(a1 + 32, v278);
    v32 = *(a1 + 32);
    v33 = *(a1 + 40);
    OUTLINED_FUNCTION_521(a2 + 32, v277);
    v34 = v32 == *(a2 + 32) && v33 == *(a2 + 40);
    if (v34 || (OUTLINED_FUNCTION_34_2() & 1) != 0)
    {
      OUTLINED_FUNCTION_521(a1 + 48, v276);
      v35 = *(a1 + 48);
      v36 = *(a1 + 56);
      OUTLINED_FUNCTION_521(a2 + 48, v275);
      v37 = v35 == *(a2 + 48) && v36 == *(a2 + 56);
      if (v37 || (OUTLINED_FUNCTION_34_2() & 1) != 0)
      {
        OUTLINED_FUNCTION_521(a1 + 64, &v274);
        v38 = *(a1 + 64);
        OUTLINED_FUNCTION_521(a2 + 64, &v273);
        if (sub_1B8D6123C(v38, *(a2 + 64)))
        {
          OUTLINED_FUNCTION_521(a1 + 72, &v272);
          v39 = *(a1 + 72);
          v40 = *(a1 + 80);
          OUTLINED_FUNCTION_521(a2 + 72, &v271);
          v41 = v39 == *(a2 + 72) && v40 == *(a2 + 80);
          if (v41 || (OUTLINED_FUNCTION_34_2() & 1) != 0)
          {
            OUTLINED_FUNCTION_521(a1 + 88, &v270);
            OUTLINED_FUNCTION_521(a2 + 88, &v269);
            if (sub_1B8D921A8())
            {
              OUTLINED_FUNCTION_521(a1 + 96, &v268);
              OUTLINED_FUNCTION_521(a2 + 96, &v267);
              if (sub_1B8D921A8())
              {
                OUTLINED_FUNCTION_521(a1 + 104, &v266);
                OUTLINED_FUNCTION_521(a2 + 104, &v265);
                if (sub_1B8D921A8())
                {
                  OUTLINED_FUNCTION_521(a1 + 112, &v264);
                  v42 = *(a1 + 112);
                  v43 = *(a1 + 120);
                  OUTLINED_FUNCTION_521(a2 + 112, &v263);
                  v44 = v42 == *(a2 + 112) && v43 == *(a2 + 120);
                  if (v44 || (OUTLINED_FUNCTION_34_2() & 1) != 0)
                  {
                    OUTLINED_FUNCTION_521(a1 + 128, &v262);
                    v45 = *(a1 + 128);
                    v46 = *(a1 + 136);
                    OUTLINED_FUNCTION_521(a2 + 128, &v261);
                    v47 = v45 == *(a2 + 128) && v46 == *(a2 + 136);
                    if (v47 || (OUTLINED_FUNCTION_34_2() & 1) != 0)
                    {
                      OUTLINED_FUNCTION_521(a1 + 144, &v260);
                      v48 = *(a1 + 144);
                      OUTLINED_FUNCTION_521(a2 + 144, &v259);
                      if (v48 == *(a2 + 144))
                      {
                        OUTLINED_FUNCTION_521(a1 + 152, &v258);
                        v49 = *(a1 + 152);
                        v50 = *(a1 + 160);
                        OUTLINED_FUNCTION_521(a2 + 152, &v257);
                        v51 = v49 == *(a2 + 152) && v50 == *(a2 + 160);
                        if (v51 || (OUTLINED_FUNCTION_34_2() & 1) != 0)
                        {
                          OUTLINED_FUNCTION_521(a1 + 168, &v256);
                          v52 = *(a1 + 168);
                          v53 = *(a1 + 176);
                          OUTLINED_FUNCTION_521(a2 + 168, &v255);
                          v54 = v52 == *(a2 + 168) && v53 == *(a2 + 176);
                          if (v54 || (OUTLINED_FUNCTION_34_2() & 1) != 0)
                          {
                            OUTLINED_FUNCTION_521(a1 + 184, &v254);
                            v55 = *(a1 + 184);
                            OUTLINED_FUNCTION_521(a2 + 184, &v253);
                            if (v55 == *(a2 + 184))
                            {
                              OUTLINED_FUNCTION_521(a1 + 188, &v252);
                              v56 = *(a1 + 188);
                              OUTLINED_FUNCTION_521(a2 + 188, &v251);
                              if (v56 == *(a2 + 188))
                              {
                                OUTLINED_FUNCTION_521(a1 + 192, &v250);
                                v57 = *(a1 + 192);
                                OUTLINED_FUNCTION_521(a2 + 192, &v249);
                                if (v57 == *(a2 + 192))
                                {
                                  OUTLINED_FUNCTION_521(a1 + 196, &v248);
                                  v58 = *(a1 + 196);
                                  OUTLINED_FUNCTION_521(a2 + 196, &v247);
                                  if (v58 == *(a2 + 196))
                                  {
                                    OUTLINED_FUNCTION_521(a1 + 200, &v246);
                                    v59 = *(a1 + 200);
                                    v60 = *(a1 + 208);
                                    OUTLINED_FUNCTION_521(a2 + 200, &v245);
                                    v61 = v59 == *(a2 + 200) && v60 == *(a2 + 208);
                                    if (v61 || (OUTLINED_FUNCTION_34_2() & 1) != 0)
                                    {
                                      OUTLINED_FUNCTION_521(a1 + 216, &v244);
                                      v62 = *(a1 + 216);
                                      OUTLINED_FUNCTION_521(a2 + 216, &v243);
                                      v63 = *(a2 + 216);

                                      sub_1B8D8BB74(v62, v63);
                                      LODWORD(v187) = v64;

                                      if ((v187 & 1) == 0)
                                      {
                                        goto LABEL_140;
                                      }

                                      OUTLINED_FUNCTION_521(a1 + 224, &v242);
                                      OUTLINED_FUNCTION_521(a2 + 224, &v241);
                                      if ((sub_1B8D921A8() & 1) == 0)
                                      {
                                        goto LABEL_140;
                                      }

                                      OUTLINED_FUNCTION_521(a1 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Feedback_V2_FeedbackResultP33_EE57CE0666E61E33DDFEED139D3F792813_StorageClass__domainProperties, &v240);
                                      sub_1B8D92024();
                                      OUTLINED_FUNCTION_521(a2 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Feedback_V2_FeedbackResultP33_EE57CE0666E61E33DDFEED139D3F792813_StorageClass__domainProperties, &v239);
                                      v65 = *(v19 + 48);
                                      v66 = v194;
                                      sub_1B8D92024();
                                      v187 = v65;
                                      sub_1B8D92024();
                                      OUTLINED_FUNCTION_178(v66, 1, v14);
                                      if (v31)
                                      {
                                        sub_1B8D9207C(v28, &qword_1EBABF278, &qword_1B966D620);
                                        OUTLINED_FUNCTION_178(v194 + v187, 1, v14);
                                        if (v31)
                                        {
                                          sub_1B8D9207C(v194, &qword_1EBABF278, &qword_1B966D620);
                                          goto LABEL_62;
                                        }
                                      }

                                      else
                                      {
                                        v166 = v194;
                                        sub_1B8D92024();
                                        OUTLINED_FUNCTION_178(v166 + v187, 1, v14);
                                        if (!v167)
                                        {
                                          OUTLINED_FUNCTION_13_11();
                                          sub_1B8F3B7AC();
                                          v171 = sub_1B8D921A4();
                                          if ((v171 & 1) == 0 || *(v26 + 2) != *(v18 + 8))
                                          {
                                            sub_1B8D9207C(v28, &qword_1EBABF278, &qword_1B966D620);
                                            OUTLINED_FUNCTION_99_5();
                                            sub_1B8F3B85C();
                                            sub_1B8F3B85C();
                                            v170 = v194;
                                            v168 = &qword_1EBABF278;
                                            v169 = &qword_1B966D620;
                                            goto LABEL_139;
                                          }

                                          sub_1B964C2B0();
                                          OUTLINED_FUNCTION_0_38();
                                          sub_1B8CD2408(v172, v173, MEMORY[0x1E69AAC10]);
                                          v174 = sub_1B964C850();
                                          sub_1B8D9207C(v28, &qword_1EBABF278, &qword_1B966D620);
                                          OUTLINED_FUNCTION_99_5();
                                          sub_1B8F3B85C();
                                          sub_1B8F3B85C();
                                          sub_1B8D9207C(v194, &qword_1EBABF278, &qword_1B966D620);
                                          if ((v174 & 1) == 0)
                                          {
                                            goto LABEL_140;
                                          }

LABEL_62:
                                          v67 = OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Feedback_V2_FeedbackResultP33_EE57CE0666E61E33DDFEED139D3F792813_StorageClass__resultAge;
                                          OUTLINED_FUNCTION_521(a1 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Feedback_V2_FeedbackResultP33_EE57CE0666E61E33DDFEED139D3F792813_StorageClass__resultAge, &v238);
                                          v68 = *(a1 + v67);
                                          v69 = OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Feedback_V2_FeedbackResultP33_EE57CE0666E61E33DDFEED139D3F792813_StorageClass__resultAge;
                                          v70 = OUTLINED_FUNCTION_521(a2 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Feedback_V2_FeedbackResultP33_EE57CE0666E61E33DDFEED139D3F792813_StorageClass__resultAge, &v237);
                                          if (v68 != *(a2 + v69))
                                          {
                                            goto LABEL_140;
                                          }

                                          v71 = a1 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Feedback_V2_FeedbackResultP33_EE57CE0666E61E33DDFEED139D3F792813_StorageClass__siriUtterance;
                                          v72 = OUTLINED_FUNCTION_79_1(v70, &v236);
                                          v73 = *(v71 + 8);
                                          OUTLINED_FUNCTION_30_11(v72, &v235);
                                          OUTLINED_FUNCTION_54_4();
                                          if (!v31 || v73 != v75)
                                          {
                                            v74 = OUTLINED_FUNCTION_120_0();
                                            if ((v74 & 1) == 0)
                                            {
                                              goto LABEL_140;
                                            }
                                          }

                                          v77 = a1 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Feedback_V2_FeedbackResultP33_EE57CE0666E61E33DDFEED139D3F792813_StorageClass__siriRelatedAppBundelID;
                                          v78 = OUTLINED_FUNCTION_79_1(v74, &v234);
                                          v79 = *(v77 + 8);
                                          OUTLINED_FUNCTION_30_11(v78, &v233);
                                          OUTLINED_FUNCTION_54_4();
                                          v81 = v31 && v79 == v80;
                                          if (!v81 && (OUTLINED_FUNCTION_120_0() & 1) == 0)
                                          {
                                            goto LABEL_140;
                                          }

                                          v82 = OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Feedback_V2_FeedbackResultP33_EE57CE0666E61E33DDFEED139D3F792813_StorageClass__isLocalCompletion;
                                          OUTLINED_FUNCTION_521(a1 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Feedback_V2_FeedbackResultP33_EE57CE0666E61E33DDFEED139D3F792813_StorageClass__isLocalCompletion, &v232);
                                          LODWORD(v82) = *(a1 + v82);
                                          v83 = OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Feedback_V2_FeedbackResultP33_EE57CE0666E61E33DDFEED139D3F792813_StorageClass__isLocalCompletion;
                                          OUTLINED_FUNCTION_521(a2 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Feedback_V2_FeedbackResultP33_EE57CE0666E61E33DDFEED139D3F792813_StorageClass__isLocalCompletion, &v231);
                                          if (v82 != *(a2 + v83))
                                          {
                                            goto LABEL_140;
                                          }

                                          v84 = OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Feedback_V2_FeedbackResultP33_EE57CE0666E61E33DDFEED139D3F792813_StorageClass__isLocalAndServerCompletionDifferent;
                                          OUTLINED_FUNCTION_521(a1 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Feedback_V2_FeedbackResultP33_EE57CE0666E61E33DDFEED139D3F792813_StorageClass__isLocalAndServerCompletionDifferent, &v230);
                                          LODWORD(v84) = *(a1 + v84);
                                          v85 = OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Feedback_V2_FeedbackResultP33_EE57CE0666E61E33DDFEED139D3F792813_StorageClass__isLocalAndServerCompletionDifferent;
                                          OUTLINED_FUNCTION_521(a2 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Feedback_V2_FeedbackResultP33_EE57CE0666E61E33DDFEED139D3F792813_StorageClass__isLocalAndServerCompletionDifferent, &v229);
                                          if (v84 != *(a2 + v85))
                                          {
                                            goto LABEL_140;
                                          }

                                          OUTLINED_FUNCTION_521(a1 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Feedback_V2_FeedbackResultP33_EE57CE0666E61E33DDFEED139D3F792813_StorageClass__cardIds, &v228);
                                          OUTLINED_FUNCTION_521(a2 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Feedback_V2_FeedbackResultP33_EE57CE0666E61E33DDFEED139D3F792813_StorageClass__cardIds, &v227);
                                          v86 = sub_1B8D921A8();
                                          if ((v86 & 1) == 0)
                                          {
                                            goto LABEL_140;
                                          }

                                          v87 = a1 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Feedback_V2_FeedbackResultP33_EE57CE0666E61E33DDFEED139D3F792813_StorageClass__entityType;
                                          v88 = OUTLINED_FUNCTION_79_1(v86, &v226);
                                          v89 = *(v87 + 8);
                                          OUTLINED_FUNCTION_30_11(v88, &v225);
                                          OUTLINED_FUNCTION_54_4();
                                          if (!v31 || v89 != v91)
                                          {
                                            v90 = OUTLINED_FUNCTION_120_0();
                                            if ((v90 & 1) == 0)
                                            {
                                              goto LABEL_140;
                                            }
                                          }

                                          v93 = a1 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Feedback_V2_FeedbackResultP33_EE57CE0666E61E33DDFEED139D3F792813_StorageClass__displayInformation;
                                          v94 = OUTLINED_FUNCTION_79_1(v90, &v224);
                                          v95 = *(v93 + 8);
                                          OUTLINED_FUNCTION_30_11(v94, &v223);
                                          OUTLINED_FUNCTION_54_4();
                                          if (!v31 || v95 != v97)
                                          {
                                            v96 = OUTLINED_FUNCTION_120_0();
                                            if ((v96 & 1) == 0)
                                            {
                                              goto LABEL_140;
                                            }
                                          }

                                          v99 = a1 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Feedback_V2_FeedbackResultP33_EE57CE0666E61E33DDFEED139D3F792813_StorageClass__uncorrectedQuery;
                                          v100 = OUTLINED_FUNCTION_79_1(v96, &v222);
                                          v101 = *(v99 + 8);
                                          OUTLINED_FUNCTION_30_11(v100, &v221);
                                          OUTLINED_FUNCTION_54_4();
                                          if (!v31 || v101 != v103)
                                          {
                                            v102 = OUTLINED_FUNCTION_120_0();
                                            if ((v102 & 1) == 0)
                                            {
                                              goto LABEL_140;
                                            }
                                          }

                                          OUTLINED_FUNCTION_7_7(v102, &v220);
                                          OUTLINED_FUNCTION_141_5();
                                          OUTLINED_FUNCTION_30_11(v105, &v219);
                                          v106 = OUTLINED_FUNCTION_167_1();
                                          if (!sub_1B8D92198(v106, v107, v108))
                                          {
                                            goto LABEL_140;
                                          }

                                          v109 = OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Feedback_V2_FeedbackResultP33_EE57CE0666E61E33DDFEED139D3F792813_StorageClass__abversionFailure;
                                          OUTLINED_FUNCTION_521(a1 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Feedback_V2_FeedbackResultP33_EE57CE0666E61E33DDFEED139D3F792813_StorageClass__abversionFailure, &v218);
                                          LODWORD(v109) = *(a1 + v109);
                                          v110 = OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Feedback_V2_FeedbackResultP33_EE57CE0666E61E33DDFEED139D3F792813_StorageClass__abversionFailure;
                                          v111 = OUTLINED_FUNCTION_521(a2 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Feedback_V2_FeedbackResultP33_EE57CE0666E61E33DDFEED139D3F792813_StorageClass__abversionFailure, &v217);
                                          if (v109 != *(a2 + v110))
                                          {
                                            goto LABEL_140;
                                          }

                                          v112 = a1 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Feedback_V2_FeedbackResultP33_EE57CE0666E61E33DDFEED139D3F792813_StorageClass__qid;
                                          v113 = OUTLINED_FUNCTION_79_1(v111, &v216);
                                          v114 = *(v112 + 8);
                                          OUTLINED_FUNCTION_30_11(v113, &v215);
                                          OUTLINED_FUNCTION_54_4();
                                          if (!v31 || v114 != v116)
                                          {
                                            v115 = OUTLINED_FUNCTION_120_0();
                                            if ((v115 & 1) == 0)
                                            {
                                              goto LABEL_140;
                                            }
                                          }

                                          v118 = a1 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Feedback_V2_FeedbackResultP33_EE57CE0666E61E33DDFEED139D3F792813_StorageClass__suppressedSuggestion;
                                          v119 = OUTLINED_FUNCTION_79_1(v115, &v214);
                                          v120 = *(v118 + 8);
                                          OUTLINED_FUNCTION_30_11(v119, &v213);
                                          OUTLINED_FUNCTION_54_4();
                                          if (!v31 || v120 != v122)
                                          {
                                            v121 = OUTLINED_FUNCTION_120_0();
                                            if ((v121 & 1) == 0)
                                            {
                                              goto LABEL_140;
                                            }
                                          }

                                          v124 = a1 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Feedback_V2_FeedbackResultP33_EE57CE0666E61E33DDFEED139D3F792813_StorageClass__selectedExperience;
                                          v125 = OUTLINED_FUNCTION_79_1(v121, &v212);
                                          v126 = *(v124 + 8);
                                          OUTLINED_FUNCTION_30_11(v125, &v211);
                                          OUTLINED_FUNCTION_54_4();
                                          v128 = v31 && v126 == v127;
                                          if (!v128 && (OUTLINED_FUNCTION_120_0() & 1) == 0)
                                          {
                                            goto LABEL_140;
                                          }

                                          OUTLINED_FUNCTION_521(a1 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Feedback_V2_FeedbackResultP33_EE57CE0666E61E33DDFEED139D3F792813_StorageClass__kginformation, &v210);
                                          sub_1B8D92024();
                                          OUTLINED_FUNCTION_521(a2 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Feedback_V2_FeedbackResultP33_EE57CE0666E61E33DDFEED139D3F792813_StorageClass__kginformation, &v209);
                                          v129 = *(v188 + 48);
                                          v130 = v193;
                                          sub_1B8D92024();
                                          sub_1B8D92024();
                                          OUTLINED_FUNCTION_178(v130, 1, v190);
                                          if (v31)
                                          {
                                            sub_1B8D9207C(v189, &qword_1EBABF280, &qword_1B966D628);
                                            OUTLINED_FUNCTION_178(v193 + v129, 1, v190);
                                            if (v31)
                                            {
                                              v131 = sub_1B8D9207C(v193, &qword_1EBABF280, &qword_1B966D628);
LABEL_113:
                                              OUTLINED_FUNCTION_7_7(v131, &v208);
                                              OUTLINED_FUNCTION_141_5();
                                              OUTLINED_FUNCTION_30_11(v132, &v207);
                                              v133 = OUTLINED_FUNCTION_167_1();
                                              v137 = sub_1B8D58228(v133, v134, v135, v136);
                                              if (v137)
                                              {
                                                OUTLINED_FUNCTION_7_7(v137, &v206);
                                                OUTLINED_FUNCTION_141_5();
                                                OUTLINED_FUNCTION_30_11(v138, &v205);
                                                v139 = OUTLINED_FUNCTION_167_1();
                                                v142 = sub_1B8D92198(v139, v140, v141);
                                                if (v142)
                                                {
                                                  OUTLINED_FUNCTION_7_7(v142, &v204);
                                                  OUTLINED_FUNCTION_141_5();
                                                  OUTLINED_FUNCTION_30_11(v143, &v203);
                                                  v144 = OUTLINED_FUNCTION_167_1();
                                                  v147 = sub_1B8D92198(v144, v145, v146);
                                                  if (v147)
                                                  {
                                                    v148 = a1 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Feedback_V2_FeedbackResultP33_EE57CE0666E61E33DDFEED139D3F792813_StorageClass__serverReleaseVersion;
                                                    v149 = OUTLINED_FUNCTION_79_1(v147, &v202);
                                                    v150 = *(v148 + 8);
                                                    OUTLINED_FUNCTION_30_11(v149, &v201);
                                                    OUTLINED_FUNCTION_54_4();
                                                    v153 = v31 && v150 == v152;
                                                    if (v153 || (v151 = OUTLINED_FUNCTION_120_0(), (v151 & 1) != 0))
                                                    {
                                                      v154 = a1 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Feedback_V2_FeedbackResultP33_EE57CE0666E61E33DDFEED139D3F792813_StorageClass__summary;
                                                      v155 = OUTLINED_FUNCTION_79_1(v151, &v200);
                                                      v156 = *(v154 + 8);
                                                      OUTLINED_FUNCTION_30_11(v155, &v199);
                                                      OUTLINED_FUNCTION_54_4();
                                                      v159 = v31 && v156 == v158;
                                                      if (v159 || (v157 = OUTLINED_FUNCTION_120_0(), (v157 & 1) != 0))
                                                      {
                                                        v160 = (a1 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Feedback_V2_FeedbackResultP33_EE57CE0666E61E33DDFEED139D3F792813_StorageClass__queryFreshness);
                                                        v161 = OUTLINED_FUNCTION_7_7(v157, &v198);
                                                        v162 = *v160;
                                                        v163 = (a2 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Feedback_V2_FeedbackResultP33_EE57CE0666E61E33DDFEED139D3F792813_StorageClass__queryFreshness);
                                                        OUTLINED_FUNCTION_7_7(v161, &v197);
                                                        if (v162 == *v163)
                                                        {
                                                          OUTLINED_FUNCTION_521(a1 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Feedback_V2_FeedbackResultP33_EE57CE0666E61E33DDFEED139D3F792813_StorageClass__contentAge, &v196);
                                                          OUTLINED_FUNCTION_521(a2 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Feedback_V2_FeedbackResultP33_EE57CE0666E61E33DDFEED139D3F792813_StorageClass__contentAge, &v195);
                                                          v164 = sub_1B8D921A4();
LABEL_141:

                                                          return v164 & 1;
                                                        }
                                                      }
                                                    }
                                                  }
                                                }
                                              }

LABEL_140:
                                              v164 = 0;
                                              goto LABEL_141;
                                            }
                                          }

                                          else
                                          {
                                            v175 = v193;
                                            sub_1B8D92024();
                                            OUTLINED_FUNCTION_178(v175 + v129, 1, v190);
                                            if (!v176)
                                            {
                                              OUTLINED_FUNCTION_15_13();
                                              v177 = v192;
                                              sub_1B8F3B7AC();
                                              v178 = sub_1B8D6123C(*v191, *v177);
                                              if (v178)
                                              {
                                                sub_1B8D78434(v191[1], v192[1]);
                                                if (v179)
                                                {
                                                  sub_1B964C2B0();
                                                  OUTLINED_FUNCTION_0_38();
                                                  sub_1B8CD2408(v180, v181, MEMORY[0x1E69AAC10]);
                                                  v182 = sub_1B964C850();
                                                  sub_1B8F3B85C();
                                                  sub_1B8D9207C(v189, &qword_1EBABF280, &qword_1B966D628);
                                                  sub_1B8F3B85C();
                                                  v131 = sub_1B8D9207C(v193, &qword_1EBABF280, &qword_1B966D628);
                                                  if ((v182 & 1) == 0)
                                                  {
                                                    goto LABEL_140;
                                                  }

                                                  goto LABEL_113;
                                                }
                                              }

                                              sub_1B8F3B85C();
                                              OUTLINED_FUNCTION_112_1();
                                              sub_1B8D9207C(v183, v184, v185);
                                              sub_1B8F3B85C();
                                              OUTLINED_FUNCTION_112_1();
LABEL_139:
                                              sub_1B8D9207C(v170, v168, v169);
                                              goto LABEL_140;
                                            }

                                            sub_1B8D9207C(v189, &qword_1EBABF280, &qword_1B966D628);
                                            sub_1B8F3B85C();
                                          }

                                          v168 = &qword_1EBABF6B0;
                                          v169 = &qword_1B966F7F8;
                                          v170 = v193;
                                          goto LABEL_139;
                                        }

                                        sub_1B8D9207C(v28, &qword_1EBABF278, &qword_1B966D620);
                                        sub_1B8F3B85C();
                                      }

                                      v168 = &qword_1EBABF6B8;
                                      v169 = &unk_1B966F800;
                                      v170 = v194;
                                      goto LABEL_139;
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

  v164 = 0;
  return v164 & 1;
}

uint64_t sub_1B8F3EE40(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2408(&qword_1EBABF678, type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackResult, protocol conformance descriptor for Apple_Parsec_Feedback_V2_FeedbackResult);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8F3EEC0(uint64_t a1)
{
  v2 = sub_1B8CD2408(&qword_1EBABF4E8, type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackResult, protocol conformance descriptor for Apple_Parsec_Feedback_V2_FeedbackResult);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8F3EF30(uint64_t a1, uint64_t a2)
{
  sub_1B8CD2408(&qword_1EBABF4E8, type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackResult, protocol conformance descriptor for Apple_Parsec_Feedback_V2_FeedbackResult);

  return sub_1B964C5D0();
}

uint64_t sub_1B8F3EFC8()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABF198);
  __swift_project_value_buffer(v0, qword_1EBABF198);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE60;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "IntentName";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  *(v6 + 24) = "n";
  *(v6 + 32) = 1;
  *(v6 + 40) = 2;
  v7 = *MEMORY[0x1E69AADD8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "Args";
  *(v10 + 8) = 4;
  *(v10 + 16) = 2;
  *(v10 + 24) = "arg";
  *(v10 + 32) = 3;
  *(v10 + 40) = 2;
  v9();
  v11 = v1[14];
  v12 = (v5 + 2 * v2);
  *v12 = 5;
  v13 = v12 + v11;
  *v13 = "KGQs";
  *(v13 + 1) = 4;
  v13[16] = 2;
  *(v13 + 3) = "kgq";
  *(v13 + 4) = 3;
  v13[40] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Feedback_V2_IntentInfo.decodeMessage<A>(decoder:)()
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

    switch(result)
    {
      case 5:
        OUTLINED_FUNCTION_12();
        sub_1B964C4D0();
        break;
      case 2:
        v3 = OUTLINED_FUNCTION_9();
        sub_1B8F40C5C(v3, v4, v5, v6, v7, &qword_1EBABF2D8, v8, v9);
        break;
      case 1:
        OUTLINED_FUNCTION_12();
        sub_1B964C530();
        break;
    }
  }

  return result;
}

uint64_t Apple_Parsec_Feedback_V2_IntentInfo.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  OUTLINED_FUNCTION_1();
  if (!v4 || (result = OUTLINED_FUNCTION_3(v2, v3, 1), !v0))
  {
    if (!*(*(v1 + 16) + 16) || (type metadata accessor for Apple_Parsec_Feedback_V2_ArgInfo(0), sub_1B8CD2408(&qword_1EBABF2D8, type metadata accessor for Apple_Parsec_Feedback_V2_ArgInfo, protocol conformance descriptor for Apple_Parsec_Feedback_V2_ArgInfo), OUTLINED_FUNCTION_231(), OUTLINED_FUNCTION_687(), result = sub_1B964C730(), !v0))
    {
      if (!*(*(v1 + 24) + 16) || (OUTLINED_FUNCTION_29(), result = sub_1B964C6E0(), !v0))
      {
        type metadata accessor for Apple_Parsec_Feedback_V2_IntentInfo(0);
        return OUTLINED_FUNCTION_8_1();
      }
    }
  }

  return result;
}

uint64_t static Apple_Parsec_Feedback_V2_IntentInfo.== infix(_:_:)(uint64_t a1)
{
  OUTLINED_FUNCTION_17_1(a1);
  v5 = v5 && v3 == v4;
  if (!v5 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  sub_1B8D75838(*(v2 + 16), *(v1 + 16));
  if ((v6 & 1) == 0 || (sub_1B8D6123C(*(v2 + 24), *(v1 + 24)) & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for Apple_Parsec_Feedback_V2_IntentInfo(0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_38();
  v9 = sub_1B8CD2408(v7, v8, MEMORY[0x1E69AAC10]);
  return OUTLINED_FUNCTION_634(v9) & 1;
}

uint64_t sub_1B8F3F53C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2408(&qword_1EBABF670, type metadata accessor for Apple_Parsec_Feedback_V2_IntentInfo, protocol conformance descriptor for Apple_Parsec_Feedback_V2_IntentInfo);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8F3F5BC(uint64_t a1)
{
  v2 = sub_1B8CD2408(&qword_1EBABF2F0, type metadata accessor for Apple_Parsec_Feedback_V2_IntentInfo, protocol conformance descriptor for Apple_Parsec_Feedback_V2_IntentInfo);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8F3F62C(uint64_t a1, uint64_t a2)
{
  sub_1B8CD2408(&qword_1EBABF2F0, type metadata accessor for Apple_Parsec_Feedback_V2_IntentInfo, protocol conformance descriptor for Apple_Parsec_Feedback_V2_IntentInfo);

  return sub_1B964C5D0();
}

uint64_t sub_1B8F3F6C4()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABF1B0);
  __swift_project_value_buffer(v0, qword_1EBABF1B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D060;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "Id";
  *(v6 + 8) = 2;
  *(v6 + 16) = 2;
  *(v6 + 24) = "id";
  *(v6 + 32) = 2;
  *(v6 + 40) = 2;
  v7 = *MEMORY[0x1E69AADD8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "EntitySyn";
  *(v10 + 1) = 9;
  v10[16] = 2;
  *(v10 + 3) = "es";
  *(v10 + 4) = 2;
  v10[40] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Feedback_V2_ArgInfo.decodeMessage<A>(decoder:)()
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

    if (result == 2 || result == 1)
    {
      OUTLINED_FUNCTION_12();
      sub_1B964C530();
    }
  }

  return result;
}

uint64_t Apple_Parsec_Feedback_V2_ArgInfo.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  OUTLINED_FUNCTION_1();
  if (!v3 || (result = OUTLINED_FUNCTION_3(v1, v2, 1), !v0))
  {
    OUTLINED_FUNCTION_1();
    if (!v7 || (result = OUTLINED_FUNCTION_3(v5, v6, 2), !v0))
    {
      type metadata accessor for Apple_Parsec_Feedback_V2_ArgInfo(0);
      return OUTLINED_FUNCTION_8_1();
    }
  }

  return result;
}

uint64_t static Apple_Parsec_Feedback_V2_ArgInfo.== infix(_:_:)(uint64_t a1)
{
  OUTLINED_FUNCTION_17_1(a1);
  v5 = v5 && v3 == v4;
  if (!v5 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v6 = *(v2 + 16) == *(v1 + 16) && *(v2 + 24) == *(v1 + 24);
  if (!v6 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for Apple_Parsec_Feedback_V2_ArgInfo(0);
  OUTLINED_FUNCTION_188_1();
  OUTLINED_FUNCTION_0_38();
  v9 = sub_1B8CD2408(v7, v8, MEMORY[0x1E69AAC10]);
  return OUTLINED_FUNCTION_634(v9) & 1;
}

uint64_t sub_1B8F3FAF0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2408(&qword_1EBABF668, type metadata accessor for Apple_Parsec_Feedback_V2_ArgInfo, protocol conformance descriptor for Apple_Parsec_Feedback_V2_ArgInfo);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8F3FB70(uint64_t a1)
{
  v2 = sub_1B8CD2408(&qword_1EBABF2D8, type metadata accessor for Apple_Parsec_Feedback_V2_ArgInfo, protocol conformance descriptor for Apple_Parsec_Feedback_V2_ArgInfo);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8F3FBE0(uint64_t a1, uint64_t a2)
{
  sub_1B8CD2408(&qword_1EBABF2D8, type metadata accessor for Apple_Parsec_Feedback_V2_ArgInfo, protocol conformance descriptor for Apple_Parsec_Feedback_V2_ArgInfo);

  return sub_1B964C5D0();
}

uint64_t sub_1B8F3FC78()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABF1C8);
  __swift_project_value_buffer(v0, qword_1EBABF1C8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D060;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 3;
  *v6 = "AnswerFacts";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  *(v6 + 24) = "af";
  *(v6 + 32) = 2;
  *(v6 + 40) = 2;
  v7 = *MEMORY[0x1E69AADD8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 4;
  *v10 = "AllIntents";
  *(v10 + 1) = 10;
  v10[16] = 2;
  *(v10 + 3) = "i";
  *(v10 + 4) = 1;
  v10[40] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Feedback_V2_KGInfo.decodeMessage<A>(decoder:)()
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

    if (result == 4)
    {
      v3 = OUTLINED_FUNCTION_9();
      sub_1B8F3FEF4(v3, v4, v5, v6);
    }

    else if (result == 3)
    {
      OUTLINED_FUNCTION_12();
      sub_1B964C4D0();
    }
  }

  return result;
}

uint64_t sub_1B8F3FEF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Apple_Parsec_Feedback_V2_IntentInfo(0);
  sub_1B8CD2408(&qword_1EBABF2F0, type metadata accessor for Apple_Parsec_Feedback_V2_IntentInfo, protocol conformance descriptor for Apple_Parsec_Feedback_V2_IntentInfo);
  return sub_1B964C570();
}

uint64_t Apple_Parsec_Feedback_V2_KGInfo.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  if (!*(*v0 + 16) || (OUTLINED_FUNCTION_29(), result = sub_1B964C6E0(), !v1))
  {
    if (!*(*(v2 + 8) + 16) || (type metadata accessor for Apple_Parsec_Feedback_V2_IntentInfo(0), sub_1B8CD2408(&qword_1EBABF2F0, type metadata accessor for Apple_Parsec_Feedback_V2_IntentInfo, protocol conformance descriptor for Apple_Parsec_Feedback_V2_IntentInfo), OUTLINED_FUNCTION_231(), OUTLINED_FUNCTION_687(), result = sub_1B964C730(), !v1))
    {
      type metadata accessor for Apple_Parsec_Feedback_V2_KGInfo(0);
      return OUTLINED_FUNCTION_8_1();
    }
  }

  return result;
}

uint64_t static Apple_Parsec_Feedback_V2_KGInfo.== infix(_:_:)()
{
  OUTLINED_FUNCTION_468();
  if ((sub_1B8D6123C(*v2, *v3) & 1) == 0)
  {
    return 0;
  }

  sub_1B8D78434(*(v1 + 8), *(v0 + 8));
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for Apple_Parsec_Feedback_V2_KGInfo(0);
  OUTLINED_FUNCTION_188_1();
  OUTLINED_FUNCTION_0_38();
  v7 = sub_1B8CD2408(v5, v6, MEMORY[0x1E69AAC10]);
  return OUTLINED_FUNCTION_634(v7) & 1;
}

uint64_t sub_1B8F4019C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2408(&qword_1EBABF660, type metadata accessor for Apple_Parsec_Feedback_V2_KGInfo, protocol conformance descriptor for Apple_Parsec_Feedback_V2_KGInfo);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8F4021C(uint64_t a1)
{
  v2 = sub_1B8CD2408(&qword_1EBABF520, type metadata accessor for Apple_Parsec_Feedback_V2_KGInfo, protocol conformance descriptor for Apple_Parsec_Feedback_V2_KGInfo);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8F4028C(uint64_t a1, uint64_t a2)
{
  sub_1B8CD2408(&qword_1EBABF520, type metadata accessor for Apple_Parsec_Feedback_V2_KGInfo, protocol conformance descriptor for Apple_Parsec_Feedback_V2_KGInfo);

  return sub_1B964C5D0();
}

uint64_t sub_1B8F40324()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABF1E0);
  __swift_project_value_buffer(v0, qword_1EBABF1E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "Source";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  *(v6 + 24) = "o";
  *(v6 + 32) = 1;
  *(v6 + 40) = 2;
  v7 = *MEMORY[0x1E69AADD8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "Score";
  *(v10 + 1) = 5;
  v10[16] = 2;
  *(v10 + 3) = "s";
  *(v10 + 4) = 1;
  v10[40] = 2;
  v9();
  v11 = v1[14];
  v12 = (v5 + 2 * v2);
  *v12 = 3;
  v13 = v12 + v11;
  *v13 = "Qid";
  *(v13 + 1) = 3;
  v13[16] = 2;
  *(v13 + 3) = "q";
  *(v13 + 4) = 1;
  v13[40] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Feedback_V2_CompletionSourceInfo.decodeMessage<A>(decoder:)()
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
      case 3:
        goto LABEL_9;
      case 2:
        OUTLINED_FUNCTION_12();
        sub_1B964C510();
        break;
      case 1:
LABEL_9:
        OUTLINED_FUNCTION_12();
        sub_1B964C530();
        break;
    }
  }
}

uint64_t Apple_Parsec_Feedback_V2_CompletionSourceInfo.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  OUTLINED_FUNCTION_1();
  if (!v5 || (result = OUTLINED_FUNCTION_3(v3, v4, 1), (v0 = v1) == 0))
  {
    if (*(v2 + 16) == 0.0 || (v1 = v0, OUTLINED_FUNCTION_12(), result = sub_1B964C6F0(), !v0))
    {
      OUTLINED_FUNCTION_1();
      if (!v9 || (result = OUTLINED_FUNCTION_3(v7, v8, 3), !v1))
      {
        type metadata accessor for Apple_Parsec_Feedback_V2_CompletionSourceInfo(0);
        return OUTLINED_FUNCTION_8_1();
      }
    }
  }

  return result;
}

uint64_t static Apple_Parsec_Feedback_V2_CompletionSourceInfo.== infix(_:_:)(uint64_t a1)
{
  OUTLINED_FUNCTION_17_1(a1);
  v5 = v5 && v3 == v4;
  if (!v5 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  if (*(v2 + 16) != *(v1 + 16))
  {
    return 0;
  }

  v6 = *(v2 + 24) == *(v1 + 24) && *(v2 + 32) == *(v1 + 32);
  if (!v6 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for Apple_Parsec_Feedback_V2_CompletionSourceInfo(0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_38();
  v9 = sub_1B8CD2408(v7, v8, MEMORY[0x1E69AAC10]);
  return OUTLINED_FUNCTION_634(v9) & 1;
}

uint64_t sub_1B8F40808(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2408(&qword_1EBABF658, type metadata accessor for Apple_Parsec_Feedback_V2_CompletionSourceInfo, protocol conformance descriptor for Apple_Parsec_Feedback_V2_CompletionSourceInfo);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8F40888(uint64_t a1)
{
  v2 = sub_1B8CD2408(&qword_1EBABF308, type metadata accessor for Apple_Parsec_Feedback_V2_CompletionSourceInfo, protocol conformance descriptor for Apple_Parsec_Feedback_V2_CompletionSourceInfo);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8F408F8(uint64_t a1, uint64_t a2)
{
  sub_1B8CD2408(&qword_1EBABF308, type metadata accessor for Apple_Parsec_Feedback_V2_CompletionSourceInfo, protocol conformance descriptor for Apple_Parsec_Feedback_V2_CompletionSourceInfo);

  return sub_1B964C5D0();
}

uint64_t sub_1B8F40990()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABF1F8);
  __swift_project_value_buffer(v0, qword_1EBABF1F8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D060;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "Value";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  *(v6 + 24) = "v";
  *(v6 + 32) = 1;
  *(v6 + 40) = 2;
  v7 = *MEMORY[0x1E69AADD8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "Info";
  *(v10 + 1) = 4;
  v10[16] = 2;
  *(v10 + 3) = "i";
  *(v10 + 4) = 1;
  v10[40] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Feedback_V2_ClientCompletion.decodeMessage<A>(decoder:)()
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
      v3 = OUTLINED_FUNCTION_9();
      sub_1B8F40C5C(v3, v4, v5, v6, v7, &qword_1EBABF308, v8, v9);
    }

    else if (result == 1)
    {
      OUTLINED_FUNCTION_12();
      sub_1B964C530();
    }
  }

  return result;
}

uint64_t sub_1B8F40C5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), unint64_t *a6, uint64_t (*a7)(uint64_t), const char *a8)
{
  a5(0);
  sub_1B8CD2408(a6, a7, a8);
  return sub_1B964C570();
}

uint64_t Apple_Parsec_Feedback_V2_ClientCompletion.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  OUTLINED_FUNCTION_1();
  if (!v4 || (result = OUTLINED_FUNCTION_3(v2, v3, 1), !v0))
  {
    if (!*(*(v1 + 16) + 16) || (type metadata accessor for Apple_Parsec_Feedback_V2_CompletionSourceInfo(0), sub_1B8CD2408(&qword_1EBABF308, type metadata accessor for Apple_Parsec_Feedback_V2_CompletionSourceInfo, protocol conformance descriptor for Apple_Parsec_Feedback_V2_CompletionSourceInfo), OUTLINED_FUNCTION_231(), OUTLINED_FUNCTION_687(), result = sub_1B964C730(), !v0))
    {
      type metadata accessor for Apple_Parsec_Feedback_V2_ClientCompletion(0);
      return OUTLINED_FUNCTION_8_1();
    }
  }

  return result;
}

uint64_t static Apple_Parsec_Feedback_V2_ClientCompletion.== infix(_:_:)(uint64_t a1)
{
  OUTLINED_FUNCTION_17_1(a1);
  v5 = v5 && v3 == v4;
  if (!v5 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  sub_1B8D6C2F8(*(v2 + 16), *(v1 + 16));
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for Apple_Parsec_Feedback_V2_ClientCompletion(0);
  OUTLINED_FUNCTION_188_1();
  OUTLINED_FUNCTION_0_38();
  v9 = sub_1B8CD2408(v7, v8, MEMORY[0x1E69AAC10]);
  return OUTLINED_FUNCTION_634(v9) & 1;
}

uint64_t sub_1B8F40F00(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2408(&qword_1EBABF650, type metadata accessor for Apple_Parsec_Feedback_V2_ClientCompletion, protocol conformance descriptor for Apple_Parsec_Feedback_V2_ClientCompletion);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8F40F80(uint64_t a1)
{
  v2 = sub_1B8CD2408(&qword_1EBABF548, type metadata accessor for Apple_Parsec_Feedback_V2_ClientCompletion, protocol conformance descriptor for Apple_Parsec_Feedback_V2_ClientCompletion);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8F40FF0(uint64_t a1, uint64_t a2)
{
  sub_1B8CD2408(&qword_1EBABF548, type metadata accessor for Apple_Parsec_Feedback_V2_ClientCompletion, protocol conformance descriptor for Apple_Parsec_Feedback_V2_ClientCompletion);

  return sub_1B964C5D0();
}

uint64_t sub_1B8F41088()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABF210);
  __swift_project_value_buffer(v0, qword_1EBABF210);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v158 = swift_allocObject();
  *(v158 + 16) = xmmword_1B966D610;
  v4 = v158 + v3;
  v5 = v158 + v3 + v1[14];
  *(v158 + v3) = 1;
  *v5 = "UserGuid";
  *(v5 + 8) = 8;
  *(v5 + 16) = 2;
  *(v5 + 24) = "u";
  *(v5 + 32) = 1;
  *(v5 + 40) = 2;
  v6 = *MEMORY[0x1E69AADD8];
  v7 = sub_1B964C750();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "EndpointId";
  *(v9 + 8) = 10;
  *(v9 + 16) = 2;
  *(v9 + 24) = "e";
  *(v9 + 32) = 1;
  *(v9 + 40) = 2;
  v8();
  v10 = v1[14];
  v11 = (v4 + 2 * v2);
  *v11 = 3;
  v12 = v11 + v10;
  *v12 = "Prefix";
  *(v12 + 1) = 6;
  v12[16] = 2;
  *(v12 + 3) = "p";
  *(v12 + 4) = 1;
  v12[40] = 2;
  v8();
  v13 = v1[14];
  v14 = (v4 + 3 * v2);
  *v14 = 4;
  v15 = v14 + v13;
  *v15 = "Query";
  *(v15 + 1) = 5;
  v15[16] = 2;
  *(v15 + 3) = "q";
  *(v15 + 4) = 1;
  v15[40] = 2;
  v8();
  v16 = v1[14];
  v17 = (v4 + 4 * v2);
  *v17 = 5;
  v18 = v17 + v16;
  *v18 = "ClientCacheQuery";
  *(v18 + 1) = 16;
  v18[16] = 2;
  *(v18 + 3) = "cq";
  *(v18 + 4) = 2;
  v18[40] = 2;
  v8();
  v19 = v1[14];
  v20 = (v4 + 5 * v2);
  *v20 = 6;
  v21 = v20 + v19;
  *v21 = "BingQuery";
  *(v21 + 1) = 9;
  v21[16] = 2;
  *(v21 + 3) = "bq";
  *(v21 + 4) = 2;
  v21[40] = 2;
  v8();
  v22 = v1[14];
  v23 = (v4 + 6 * v2);
  *v23 = 7;
  v24 = v23 + v22;
  *v24 = "TS";
  *(v24 + 1) = 2;
  v24[16] = 2;
  *(v24 + 3) = "ts";
  *(v24 + 4) = 2;
  v24[40] = 2;
  v8();
  v25 = v1[14];
  v26 = (v4 + 7 * v2);
  *v26 = 8;
  v27 = v26 + v25;
  *v27 = "Geo";
  *(v27 + 1) = 3;
  v27[16] = 2;
  *(v27 + 3) = "g";
  *(v27 + 4) = 1;
  v27[40] = 2;
  v8();
  v28 = v1[14];
  v29 = (v4 + 8 * v2);
  *v29 = 43;
  v30 = v29 + v28;
  *v30 = "GeoV2";
  *(v30 + 1) = 5;
  v30[16] = 2;
  *(v30 + 3) = "g2";
  *(v30 + 4) = 2;
  v30[40] = 2;
  v8();
  v31 = v1[14];
  v32 = (v4 + 9 * v2);
  *v32 = 39;
  v33 = v32 + v31;
  *v33 = "GeoID";
  *(v33 + 1) = 5;
  v33[16] = 2;
  *(v33 + 3) = "gid";
  *(v33 + 4) = 3;
  v33[40] = 2;
  v8();
  v34 = v1[14];
  v35 = (v4 + 10 * v2);
  *v35 = 9;
  v36 = v35 + v34;
  *v36 = "Client";
  *(v36 + 1) = 6;
  v36[16] = 2;
  *(v36 + 3) = "a";
  *(v36 + 4) = 1;
  v36[40] = 2;
  v8();
  v37 = v1[14];
  v38 = (v4 + 11 * v2);
  *v38 = 10;
  v39 = v38 + v37;
  *v39 = "Device";
  *(v39 + 1) = 6;
  v39[16] = 2;
  *(v39 + 3) = "d";
  *(v39 + 4) = 1;
  v39[40] = 2;
  v8();
  v40 = v1[14];
  v41 = (v4 + 12 * v2);
  *v41 = 11;
  v42 = v41 + v40;
  *v42 = "Locale";
  *(v42 + 1) = 6;
  v42[16] = 2;
  *(v42 + 3) = "l";
  *(v42 + 4) = 1;
  v42[40] = 2;
  v8();
  v43 = v1[14];
  v44 = (v4 + 13 * v2);
  *v44 = 12;
  v45 = v44 + v43;
  *v45 = "Storefront";
  *(v45 + 1) = 10;
  v45[16] = 2;
  *(v45 + 3) = "i";
  *(v45 + 4) = 1;
  v45[40] = 2;
  v8();
  v46 = v1[14];
  v47 = (v4 + 14 * v2);
  *v47 = 13;
  v48 = v47 + v46;
  *v48 = "LatLng";
  *(v48 + 1) = 6;
  v48[16] = 2;
  *(v48 + 3) = "c";
  *(v48 + 4) = 1;
  v48[40] = 2;
  v8();
  v49 = v1[14];
  v50 = (v4 + 15 * v2);
  *v50 = 14;
  v51 = v50 + v49;
  *v51 = "Tags";
  *(v51 + 1) = 4;
  v51[16] = 2;
  *(v51 + 3) = "t";
  *(v51 + 4) = 1;
  v51[40] = 2;
  v8();
  v52 = v1[14];
  v53 = (v4 + 16 * v2);
  *v53 = 15;
  v54 = v53 + v52;
  *v54 = "DopplerTags";
  *(v54 + 1) = 11;
  v54[16] = 2;
  *(v54 + 3) = "dt";
  *(v54 + 4) = 2;
  v54[40] = 2;
  v8();
  v55 = v1[14];
  v56 = (v4 + 17 * v2);
  *v56 = 16;
  v57 = v56 + v55;
  *v57 = "PreMergeTags";
  *(v57 + 1) = 12;
  v57[16] = 2;
  *(v57 + 3) = "pmqt";
  *(v57 + 4) = 4;
  v57[40] = 2;
  v8();
  v58 = v1[14];
  v59 = (v4 + 18 * v2);
  *v59 = 17;
  v60 = v59 + v58;
  *v60 = "ABVersion";
  *(v60 + 1) = 9;
  v60[16] = 2;
  *(v60 + 3) = "ab";
  *(v60 + 4) = 2;
  v60[40] = 2;
  v8();
  v61 = v1[14];
  v62 = (v4 + 19 * v2);
  *v62 = 18;
  v63 = v62 + v61;
  *v63 = "SearchId";
  *(v63 + 1) = 8;
  v63[16] = 2;
  *(v63 + 3) = "sid";
  *(v63 + 4) = 3;
  v63[40] = 2;
  v8();
  v64 = v1[14];
  v65 = (v4 + 20 * v2);
  *v65 = 19;
  v66 = v65 + v64;
  *v66 = "ReleaseTag";
  *(v66 + 1) = 10;
  v66[16] = 2;
  *(v66 + 3) = "r";
  *(v66 + 4) = 1;
  v66[40] = 2;
  v8();
  v67 = v1[14];
  v68 = (v4 + 21 * v2);
  *v68 = 20;
  v69 = v68 + v67;
  *v69 = "CanonicalId";
  *(v69 + 1) = 11;
  v69[16] = 2;
  *(v69 + 3) = "cid";
  *(v69 + 4) = 3;
  v69[40] = 2;
  v8();
  v70 = v1[14];
  v71 = (v4 + 22 * v2);
  *v71 = 21;
  v72 = v71 + v70;
  *v72 = "TopCompletionProbability";
  *(v72 + 1) = 24;
  v72[16] = 2;
  *(v72 + 3) = "tp";
  *(v72 + 4) = 2;
  v72[40] = 2;
  v8();
  v73 = v1[14];
  v74 = (v4 + 23 * v2);
  *v74 = 22;
  v75 = v74 + v73;
  *v75 = "MaxCompletionProbability";
  *(v75 + 1) = 24;
  v75[16] = 2;
  *(v75 + 3) = "mp";
  *(v75 + 4) = 2;
  v75[40] = 2;
  v8();
  v76 = v1[14];
  v77 = (v4 + 24 * v2);
  *v77 = 23;
  v78 = v77 + v76;
  *v78 = "ClientCompletions";
  *(v78 + 1) = 17;
  v78[16] = 2;
  *(v78 + 3) = "lc";
  *(v78 + 4) = 2;
  v78[40] = 2;
  v8();
  v79 = v1[14];
  v80 = (v4 + 25 * v2);
  *v80 = 24;
  v81 = v80 + v79;
  *v81 = "OtherFBQs";
  *(v81 + 1) = 9;
  v81[16] = 2;
  *(v81 + 3) = "o";
  *(v81 + 4) = 1;
  v81[40] = 2;
  v8();
  v82 = v1[14];
  v83 = (v4 + 26 * v2);
  *v83 = 25;
  v84 = v83 + v82;
  *v84 = "SerpGrouping";
  *(v84 + 1) = 12;
  v84[16] = 2;
  *(v84 + 3) = "sg";
  *(v84 + 4) = 2;
  v84[40] = 2;
  v8();
  v85 = v1[14];
  v86 = (v4 + 27 * v2);
  *v86 = 26;
  v87 = v86 + v85;
  *v87 = "QueryDecile";
  *(v87 + 1) = 11;
  v87[16] = 2;
  *(v87 + 3) = "qd";
  *(v87 + 4) = 2;
  v87[40] = 2;
  v8();
  v88 = v1[14];
  v89 = (v4 + 28 * v2);
  *v89 = 27;
  v90 = v89 + v88;
  *v90 = "Geohashes";
  *(v90 + 1) = 9;
  v90[16] = 2;
  *(v90 + 3) = "h";
  *(v90 + 4) = 1;
  v90[40] = 2;
  v8();
  v91 = v1[14];
  v92 = (v4 + 29 * v2);
  *v92 = 28;
  v93 = v92 + v91;
  *v93 = "ResultIds";
  *(v93 + 1) = 9;
  v93[16] = 2;
  *(v93 + 3) = "rs";
  *(v93 + 4) = 2;
  v93[40] = 2;
  v8();
  v94 = v1[14];
  v95 = (v4 + 30 * v2);
  *v95 = 29;
  v96 = v95 + v94;
  *v96 = "IsRewrittenQuery";
  *(v96 + 1) = 16;
  v96[16] = 2;
  *(v96 + 3) = "rwq";
  *(v96 + 4) = 3;
  v96[40] = 2;
  v8();
  v97 = v1[14];
  v98 = (v4 + 31 * v2);
  *v98 = 30;
  v99 = v98 + v97;
  *v99 = "IPShard";
  *(v99 + 1) = 7;
  v99[16] = 2;
  *(v99 + 3) = "ips";
  *(v99 + 4) = 3;
  v99[40] = 2;
  v8();
  v100 = v1[14];
  v101 = (v4 + 32 * v2);
  *v101 = 31;
  v102 = v101 + v100;
  *v102 = "IPShardTruncated";
  *(v102 + 1) = 16;
  v102[16] = 2;
  *(v102 + 3) = "ipst";
  *(v102 + 4) = 4;
  v102[40] = 2;
  v8();
  v103 = v1[14];
  v104 = (v4 + 33 * v2);
  *v104 = 32;
  v105 = v104 + v103;
  *v105 = "IPShardFull";
  *(v105 + 1) = 11;
  v105[16] = 2;
  *(v105 + 3) = "ipsf";
  *(v105 + 4) = 4;
  v105[40] = 2;
  v8();
  v106 = v1[14];
  v107 = (v4 + 34 * v2);
  *v107 = 33;
  v108 = v107 + v106;
  *v108 = "ShardABC2";
  *(v108 + 1) = 9;
  v108[16] = 2;
  *(v108 + 3) = "abc2";
  *(v108 + 4) = 4;
  v108[40] = 2;
  v8();
  v109 = v1[14];
  v110 = (v4 + 35 * v2);
  *v110 = 34;
  v111 = v110 + v109;
  *v111 = "ShardABCH1";
  *(v111 + 1) = 10;
  v111[16] = 2;
  *(v111 + 3) = "abch1";
  *(v111 + 4) = 5;
  v111[40] = 2;
  v8();
  v112 = v1[14];
  v113 = (v4 + 36 * v2);
  *v113 = 35;
  v114 = v113 + v112;
  *v114 = "ShardABCH2";
  *(v114 + 1) = 10;
  v114[16] = 2;
  *(v114 + 3) = "abch2";
  *(v114 + 4) = 5;
  v114[40] = 2;
  v8();
  v115 = v1[14];
  v116 = (v4 + 37 * v2);
  *v116 = 36;
  v117 = v116 + v115;
  *v117 = "UncorrectedQuery";
  *(v117 + 1) = 16;
  v117[16] = 2;
  *(v117 + 3) = "uq";
  *(v117 + 4) = 2;
  v117[40] = 2;
  v8();
  v118 = v1[14];
  v119 = (v4 + 38 * v2);
  *v119 = 37;
  v120 = v119 + v118;
  *v120 = "PartnerTreatmentId";
  *(v120 + 1) = 18;
  v120[16] = 2;
  *(v120 + 3) = "ptid";
  *(v120 + 4) = 4;
  v120[40] = 2;
  v8();
  v121 = v1[14];
  v122 = (v4 + 39 * v2);
  *v122 = 38;
  v123 = v122 + v121;
  *v123 = "userDataShareOptIn";
  *(v123 + 1) = 18;
  v123[16] = 2;
  *(v123 + 3) = "soi";
  *(v123 + 4) = 3;
  v123[40] = 2;
  v8();
  v124 = v1[14];
  v125 = (v4 + 40 * v2);
  *v125 = 40;
  v126 = v125 + v124;
  *v126 = "ABVersionFailure";
  *(v126 + 1) = 16;
  v126[16] = 2;
  *(v126 + 3) = "abf";
  *(v126 + 4) = 3;
  v126[40] = 2;
  v8();
  v127 = v1[14];
  v128 = (v4 + 41 * v2);
  *v128 = 41;
  v129 = v128 + v127;
  *v129 = "TrialTreatmentFailure";
  *(v129 + 1) = 21;
  v129[16] = 2;
  *(v129 + 3) = "trf";
  *(v129 + 4) = 3;
  v129[40] = 2;
  v8();
  v130 = v1[14];
  v131 = (v4 + 42 * v2);
  *v131 = 42;
  v132 = v131 + v130;
  *v132 = "CFTreatmentID";
  *(v132 + 1) = 13;
  v132[16] = 2;
  *(v132 + 3) = "cftid";
  *(v132 + 4) = 5;
  v132[40] = 2;
  v8();
  v133 = v1[14];
  v134 = (v4 + 43 * v2);
  *v134 = 44;
  v135 = v134 + v133;
  *v135 = "EntityType";
  *(v135 + 1) = 10;
  v135[16] = 2;
  *(v135 + 3) = "et";
  *(v135 + 4) = 2;
  v135[40] = 2;
  v8();
  v136 = v1[14];
  v137 = (v4 + 44 * v2);
  *v137 = 45;
  v138 = v137 + v136;
  *v138 = "CrAtKScore";
  *(v138 + 1) = 10;
  v138[16] = 2;
  *(v138 + 3) = "caks";
  *(v138 + 4) = 4;
  v138[40] = 2;
  v8();
  v139 = v1[14];
  v140 = (v4 + 45 * v2);
  *v140 = 46;
  v141 = v140 + v139;
  *v141 = "CFDebug";
  *(v141 + 1) = 7;
  v141[16] = 2;
  *(v141 + 3) = "cfd";
  *(v141 + 4) = 3;
  v141[40] = 2;
  v8();
  v142 = v1[14];
  v143 = (v4 + 46 * v2);
  *v143 = 47;
  v144 = v143 + v142;
  *v144 = "PegasusVersion";
  *(v144 + 1) = 14;
  v144[16] = 2;
  *(v144 + 3) = "v";
  *(v144 + 4) = 1;
  v144[40] = 2;
  v8();
  v145 = v1[14];
  v146 = (v4 + 47 * v2);
  *v146 = 48;
  v147 = v146 + v145;
  *v147 = "OtherCrAtKScores";
  *(v147 + 1) = 16;
  v147[16] = 2;
  *(v147 + 3) = "ocaks";
  *(v147 + 4) = 5;
  v147[40] = 2;
  v8();
  v148 = v1[14];
  v149 = (v4 + 48 * v2);
  *v149 = 49;
  v150 = v149 + v148;
  *v150 = "CompletionNodeProbability";
  *(v150 + 1) = 25;
  v150[16] = 2;
  *(v150 + 3) = "cnp";
  *(v150 + 4) = 3;
  v150[40] = 2;
  v8();
  v151 = v1[14];
  v152 = (v4 + 49 * v2);
  *v152 = 50;
  v153 = v152 + v151;
  *v153 = "CompletionNormalizedNodeProbability";
  *(v153 + 1) = 35;
  v153[16] = 2;
  *(v153 + 3) = "cnnp";
  *(v153 + 4) = 4;
  v153[40] = 2;
  v8();
  v154 = v1[14];
  v155 = (v4 + 50 * v2);
  *v155 = 51;
  v156 = v155 + v154;
  *v156 = "EdgeName";
  *(v156 + 1) = 8;
  v156[16] = 2;
  *(v156 + 3) = "en";
  *(v156 + 4) = 2;
  v156[40] = 2;
  v8();
  return sub_1B964C760();
}

void sub_1B8F421CC()
{
  type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackQuery._StorageClass();
  swift_allocObject();
  sub_1B8F4220C();
  qword_1EBABF228 = v0;
}

double sub_1B8F4220C()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = 0xE000000000000000;
  *(v0 + 32) = 0;
  *(v0 + 40) = 0xE000000000000000;
  *(v0 + 48) = 0;
  *(v0 + 56) = 0xE000000000000000;
  *(v0 + 64) = 0;
  *(v0 + 72) = 0xE000000000000000;
  *(v0 + 80) = 0;
  *(v0 + 88) = 0xE000000000000000;
  *(v0 + 96) = 0;
  *(v0 + 104) = 0xE000000000000000;
  result = 0.0;
  *(v0 + 112) = 0u;
  *(v0 + 128) = 0xE000000000000000;
  *(v0 + 136) = 0;
  *(v0 + 144) = 0xE000000000000000;
  *(v0 + 152) = 0;
  *(v0 + 160) = 0;
  *(v0 + 168) = 0xE000000000000000;
  *(v0 + 176) = 0;
  *(v0 + 184) = 1;
  *(v0 + 192) = 0;
  *(v0 + 200) = 0xE000000000000000;
  *(v0 + 208) = 0;
  *(v0 + 216) = 0xE000000000000000;
  *(v0 + 224) = 0;
  *(v0 + 232) = 0xE000000000000000;
  v2 = MEMORY[0x1E69E7CC0];
  *(v0 + 240) = MEMORY[0x1E69E7CC0];
  *(v0 + 248) = v2;
  *(v0 + 256) = v2;
  *(v0 + 264) = 0;
  *(v0 + 272) = 0;
  *(v0 + 280) = 0xE000000000000000;
  *(v0 + 288) = 0;
  *(v0 + 296) = 0xE000000000000000;
  *(v0 + 304) = 0;
  *(v0 + 312) = 0xE000000000000000;
  *(v0 + 320) = 0;
  *(v0 + 328) = v2;
  *(v0 + 336) = v2;
  *(v0 + 344) = 0u;
  *(v0 + 360) = 0xE000000000000000;
  *(v0 + 368) = v2;
  *(v0 + 376) = 0;
  *(v0 + 396) = 0;
  *(v0 + 380) = 0u;
  *(v0 + 408) = 0;
  *(v0 + 416) = 0xE000000000000000;
  *(v0 + 424) = 0;
  *(v0 + 432) = 0;
  *(v0 + 440) = 1;
  *(v0 + 444) = 0;
  *(v0 + 448) = 0;
  *(v0 + 456) = 0;
  *(v0 + 464) = 0xE000000000000000;
  *(v0 + 472) = 0;
  *(v0 + 480) = 0xE000000000000000;
  *(v0 + 488) = 0;
  *(v0 + 496) = 0;
  *(v0 + 504) = 0xE000000000000000;
  *(v0 + 512) = 0;
  *(v0 + 520) = 0xE000000000000000;
  *(v0 + 528) = v2;
  *(v0 + 536) = 0u;
  *(v0 + 552) = 0xE000000000000000;
  return result;
}

uint64_t sub_1B8F422E4(uint64_t a1)
{
  *(v1 + 16) = 0;
  *(v1 + 24) = 0xE000000000000000;
  *(v1 + 32) = 0;
  *(v1 + 48) = 0;
  *(v1 + 40) = 0xE000000000000000;
  v64 = a1 + 376;
  *(v1 + 56) = 0xE000000000000000;
  *(v1 + 64) = 0;
  *(v1 + 72) = 0xE000000000000000;
  *(v1 + 80) = 0;
  *(v1 + 88) = 0xE000000000000000;
  *(v1 + 96) = 0;
  *(v1 + 112) = 0u;
  *(v1 + 104) = 0xE000000000000000;
  *(v1 + 128) = 0xE000000000000000;
  *(v1 + 136) = 0;
  *(v1 + 144) = 0xE000000000000000;
  *(v1 + 152) = 0;
  *(v1 + 160) = 0;
  *(v1 + 168) = 0xE000000000000000;
  *(v1 + 176) = 0;
  *(v1 + 184) = 1;
  *(v1 + 192) = 0;
  *(v1 + 208) = 0;
  *(v1 + 200) = 0xE000000000000000;
  *(v1 + 216) = 0xE000000000000000;
  *(v1 + 224) = 0;
  *(v1 + 232) = 0xE000000000000000;
  v3 = MEMORY[0x1E69E7CC0];
  *(v1 + 240) = MEMORY[0x1E69E7CC0];
  *(v1 + 248) = v3;
  *(v1 + 256) = v3;
  *(v1 + 264) = 0;
  *(v1 + 272) = 0;
  *(v1 + 280) = 0xE000000000000000;
  *(v1 + 288) = 0;
  *(v1 + 296) = 0xE000000000000000;
  *(v1 + 304) = 0;
  *(v1 + 312) = 0xE000000000000000;
  *(v1 + 320) = 0;
  *(v1 + 328) = v3;
  *(v1 + 336) = v3;
  *(v1 + 344) = 0u;
  *(v1 + 360) = 0xE000000000000000;
  *(v1 + 368) = v3;
  *(v1 + 376) = 0;
  *(v1 + 396) = 0;
  *(v1 + 380) = 0u;
  *(v1 + 408) = 0;
  *(v1 + 416) = 0xE000000000000000;
  *(v1 + 424) = 0;
  *(v1 + 432) = 0;
  *(v1 + 440) = 1;
  *(v1 + 444) = 0;
  *(v1 + 448) = 0;
  *(v1 + 456) = 0;
  *(v1 + 464) = 0xE000000000000000;
  *(v1 + 472) = 0;
  *(v1 + 480) = 0xE000000000000000;
  *(v1 + 488) = 0;
  *(v1 + 496) = 0;
  *(v1 + 504) = 0xE000000000000000;
  *(v1 + 512) = 0;
  *(v1 + 520) = 0xE000000000000000;
  *(v1 + 528) = v3;
  *(v1 + 536) = 0u;
  *(v1 + 552) = 0xE000000000000000;
  swift_beginAccess();
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  swift_beginAccess();
  *(v1 + 16) = v5;
  *(v1 + 24) = v4;
  swift_beginAccess();
  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  swift_beginAccess();
  *(v1 + 32) = v7;
  *(v1 + 40) = v6;

  swift_beginAccess();
  v9 = *(a1 + 48);
  v8 = *(a1 + 56);
  swift_beginAccess();
  *(v1 + 48) = v9;
  *(v1 + 56) = v8;

  swift_beginAccess();
  v11 = *(a1 + 64);
  v10 = *(a1 + 72);
  swift_beginAccess();
  *(v1 + 64) = v11;
  *(v1 + 72) = v10;

  swift_beginAccess();
  v13 = *(a1 + 80);
  v12 = *(a1 + 88);
  swift_beginAccess();
  *(v1 + 80) = v13;
  *(v1 + 88) = v12;

  swift_beginAccess();
  v15 = *(a1 + 96);
  v14 = *(a1 + 104);
  swift_beginAccess();
  *(v1 + 96) = v15;
  *(v1 + 104) = v14;

  swift_beginAccess();
  v16 = *(a1 + 112);
  swift_beginAccess();
  *(v1 + 112) = v16;
  swift_beginAccess();
  v18 = *(a1 + 120);
  v17 = *(a1 + 128);
  swift_beginAccess();
  *(v1 + 120) = v18;
  *(v1 + 128) = v17;

  swift_beginAccess();
  v20 = *(a1 + 136);
  v19 = *(a1 + 144);
  swift_beginAccess();
  *(v1 + 136) = v20;
  *(v1 + 144) = v19;

  swift_beginAccess();
  LODWORD(v19) = *(a1 + 152);
  swift_beginAccess();
  *(v1 + 152) = v19;
  swift_beginAccess();
  v22 = *(a1 + 160);
  v21 = *(a1 + 168);
  swift_beginAccess();
  *(v1 + 160) = v22;
  *(v1 + 168) = v21;

  swift_beginAccess();
  v23 = *(a1 + 176);
  LOBYTE(v12) = *(a1 + 184);
  swift_beginAccess();
  *(v1 + 176) = v23;
  *(v1 + 184) = v12;
  swift_beginAccess();
  v25 = *(a1 + 192);
  v24 = *(a1 + 200);
  swift_beginAccess();
  *(v1 + 192) = v25;
  *(v1 + 200) = v24;

  swift_beginAccess();
  v27 = *(a1 + 208);
  v26 = *(a1 + 216);
  swift_beginAccess();
  *(v1 + 208) = v27;
  *(v1 + 216) = v26;

  swift_beginAccess();
  v29 = *(a1 + 224);
  v28 = *(a1 + 232);
  swift_beginAccess();
  *(v1 + 224) = v29;
  *(v1 + 232) = v28;

  swift_beginAccess();
  v30 = *(a1 + 240);
  swift_beginAccess();
  *(v1 + 240) = v30;

  swift_beginAccess();
  v31 = *(a1 + 248);
  swift_beginAccess();
  *(v1 + 248) = v31;

  swift_beginAccess();
  v32 = *(a1 + 256);
  swift_beginAccess();
  *(v1 + 256) = v32;

  swift_beginAccess();
  LODWORD(v32) = *(a1 + 264);
  swift_beginAccess();
  *(v1 + 264) = v32;
  swift_beginAccess();
  v34 = *(a1 + 272);
  v33 = *(a1 + 280);
  swift_beginAccess();
  *(v1 + 272) = v34;
  *(v1 + 280) = v33;

  swift_beginAccess();
  v36 = *(a1 + 288);
  v35 = *(a1 + 296);
  swift_beginAccess();
  *(v1 + 288) = v36;
  *(v1 + 296) = v35;

  swift_beginAccess();
  v38 = *(a1 + 304);
  v37 = *(a1 + 312);
  swift_beginAccess();
  *(v1 + 304) = v38;
  *(v1 + 312) = v37;

  swift_beginAccess();
  v39 = *(a1 + 320);
  swift_beginAccess();
  *(v1 + 320) = v39;
  swift_beginAccess();
  v40 = *(a1 + 324);
  swift_beginAccess();
  *(v1 + 324) = v40;
  swift_beginAccess();
  v41 = *(a1 + 328);
  swift_beginAccess();
  *(v1 + 328) = v41;

  swift_beginAccess();
  v42 = *(a1 + 336);
  swift_beginAccess();
  *(v1 + 336) = v42;

  swift_beginAccess();
  LODWORD(v42) = *(a1 + 344);
  swift_beginAccess();
  *(v1 + 344) = v42;
  swift_beginAccess();
  LODWORD(v42) = *(a1 + 348);
  swift_beginAccess();
  *(v1 + 348) = v42;
  swift_beginAccess();
  v44 = *(a1 + 352);
  v43 = *(a1 + 360);
  swift_beginAccess();
  *(v1 + 352) = v44;
  *(v1 + 360) = v43;

  swift_beginAccess();
  v45 = *(a1 + 368);
  swift_beginAccess();
  *(v1 + 368) = v45;

  swift_beginAccess();
  LOBYTE(v45) = *(a1 + 376);
  swift_beginAccess();
  *(v1 + 376) = v45;
  swift_beginAccess();
  LODWORD(v45) = *(a1 + 380);
  swift_beginAccess();
  *(v1 + 380) = v45;
  swift_beginAccess();
  LODWORD(v45) = *(a1 + 384);
  swift_beginAccess();
  *(v1 + 384) = v45;
  swift_beginAccess();
  LODWORD(v45) = *(a1 + 388);
  swift_beginAccess();
  *(v1 + 388) = v45;
  swift_beginAccess();
  LODWORD(v45) = *(a1 + 392);
  swift_beginAccess();
  *(v1 + 392) = v45;
  swift_beginAccess();
  LODWORD(v45) = *(a1 + 396);
  swift_beginAccess();
  *(v1 + 396) = v45;
  swift_beginAccess();
  LODWORD(v45) = *(a1 + 400);
  swift_beginAccess();
  *(v1 + 400) = v45;
  swift_beginAccess();
  v47 = *(a1 + 408);
  v46 = *(a1 + 416);
  swift_beginAccess();
  *(v1 + 408) = v47;
  *(v1 + 416) = v46;

  swift_beginAccess();
  LODWORD(v46) = *(a1 + 424);
  swift_beginAccess();
  *(v1 + 424) = v46;
  swift_beginAccess();
  v48 = *(a1 + 432);
  LOBYTE(v12) = *(v64 + 64);
  swift_beginAccess();
  *(v1 + 432) = v48;
  *(v1 + 440) = v12;
  swift_beginAccess();
  LODWORD(v48) = *(a1 + 444);
  swift_beginAccess();
  *(v1 + 444) = v48;
  swift_beginAccess();
  LOBYTE(v48) = *(v64 + 72);
  swift_beginAccess();
  *(v1 + 448) = v48;
  swift_beginAccess();
  v50 = *(a1 + 456);
  v49 = *(a1 + 464);
  swift_beginAccess();
  *(v1 + 456) = v50;
  *(v1 + 464) = v49;

  swift_beginAccess();
  v52 = *(a1 + 472);
  v51 = *(a1 + 480);
  swift_beginAccess();
  *(v1 + 472) = v52;
  *(v1 + 480) = v51;

  swift_beginAccess();
  v53 = *(a1 + 488);
  swift_beginAccess();
  *(v1 + 488) = v53;
  swift_beginAccess();
  v55 = *(a1 + 496);
  v54 = *(a1 + 504);
  swift_beginAccess();
  *(v1 + 496) = v55;
  *(v1 + 504) = v54;

  swift_beginAccess();
  v56 = *(a1 + 512);
  v57 = *(a1 + 520);
  swift_beginAccess();
  *(v1 + 512) = v56;
  *(v1 + 520) = v57;

  swift_beginAccess();
  v58 = *(a1 + 528);
  swift_beginAccess();
  *(v1 + 528) = v58;

  swift_beginAccess();
  v59 = *(a1 + 536);
  swift_beginAccess();
  *(v1 + 536) = v59;
  swift_beginAccess();
  v60 = *(a1 + 540);
  swift_beginAccess();
  *(v1 + 540) = v60;
  swift_beginAccess();
  v61 = *(a1 + 544);
  v62 = *(a1 + 552);

  swift_beginAccess();
  *(v1 + 544) = v61;
  *(v1 + 552) = v62;

  return v1;
}

void *sub_1B8F4312C()
{

  return v0;
}

uint64_t sub_1B8F4322C()
{
  v0 = sub_1B8F4312C();

  return MEMORY[0x1EEE6BDC0](v0, 560, 7);
}

uint64_t Apple_Parsec_Feedback_V2_FeedbackQuery.decodeMessage<A>(decoder:)()
{
  v1 = OUTLINED_FUNCTION_118_1();
  v2 = *(type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackQuery(v1) + 20);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackQuery._StorageClass();
    OUTLINED_FUNCTION_51_7();
    swift_allocObject();
    v3 = OUTLINED_FUNCTION_40_0();
    *(v0 + v2) = sub_1B8F422E4(v3);
  }

  v4 = OUTLINED_FUNCTION_7_6();
  return sub_1B8F432D4(v4, v5, v6, v7);
}

uint64_t sub_1B8F432D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  while (1)
  {
    result = sub_1B964C3C0();
    if (v4 || (v10 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        sub_1B8E75B3C();
        break;
      case 2:
        sub_1B8E75BA0();
        break;
      case 3:
        sub_1B8F438D8();
        break;
      case 4:
        sub_1B8E16ACC(a2, a1);
        break;
      case 5:
        sub_1B8E16B50(a2, a1);
        break;
      case 6:
        sub_1B8E16BD4(a2, a1);
        break;
      case 7:
        sub_1B8F4393C(a2, a1, a3, a4);
        break;
      case 8:
        sub_1B8E16CDC(a2, a1);
        break;
      case 9:
        sub_1B8E171C8(a2, a1);
        break;
      case 10:
        sub_1B8F439C0(a2, a1, a3, a4);
        break;
      case 11:
        sub_1B8E2FD8C(a2, a1);
        break;
      case 12:
        sub_1B8E2FE10(a2, a1);
        break;
      case 13:
        sub_1B8E2FE94(a2, a1);
        break;
      case 14:
        sub_1B8F43A54(a2, a1, a3, a4);
        break;
      case 15:
        sub_1B8F43AD8(a2, a1, a3, a4);
        break;
      case 16:
        sub_1B8F43B5C(a2, a1, a3, a4);
        break;
      case 17:
        sub_1B8F43BE0(a2, a1, a3, a4);
        break;
      case 18:
        sub_1B8F43C64(a2, a1);
        break;
      case 19:
        sub_1B8F43CE8(a2, a1);
        break;
      case 20:
        sub_1B8F43D6C(a2, a1);
        break;
      case 21:
        sub_1B8F43DF0(a2, a1, a3, a4);
        break;
      case 22:
        sub_1B8F43E74(a2, a1, a3, a4);
        break;
      case 23:
        sub_1B8F43EF8(a2, a1, a3, a4);
        break;
      case 24:
        sub_1B8F43FC4(a2, a1, a3, a4);
        break;
      case 25:
        sub_1B8F44090(a2, a1, a3, a4);
        break;
      case 26:
        sub_1B8F44114(a2, a1, a3, a4);
        break;
      case 27:
        sub_1B8E894AC(a2, a1);
        break;
      case 28:
        sub_1B8F44198(a2, a1, a3, a4);
        break;
      case 29:
        sub_1B8F4421C(a2, a1, a3, a4);
        break;
      case 30:
        sub_1B8F442A0(a2, a1, a3, a4);
        break;
      case 31:
        sub_1B8F44324(a2, a1, a3, a4);
        break;
      case 32:
        sub_1B8F443A8(a2, a1, a3, a4);
        break;
      case 33:
        sub_1B8F4442C(a2, a1, a3, a4);
        break;
      case 34:
        sub_1B8F444B0(a2, a1, a3, a4);
        break;
      case 35:
        sub_1B8F44534(a2, a1, a3, a4);
        break;
      case 36:
        sub_1B8F445B8(a2, a1);
        break;
      case 37:
        sub_1B8F4463C(a2, a1, a3, a4);
        break;
      case 38:
        sub_1B8F446C0(a2, a1, a3, a4);
        break;
      case 39:
        sub_1B8F44754(a2, a1, a3, a4);
        break;
      case 40:
        sub_1B8F447D8(a2, a1, a3, a4);
        break;
      case 41:
        sub_1B8F4485C(a2, a1, a3, a4);
        break;
      case 42:
        sub_1B8F448E0(a2, a1);
        break;
      case 43:
        sub_1B8F44964(a2, a1);
        break;
      case 44:
        sub_1B8F449E8(a2, a1);
        break;
      case 45:
        sub_1B8F44A6C(a2, a1, a3, a4);
        break;
      case 46:
        sub_1B8F44AF0(a2, a1);
        break;
      case 47:
        sub_1B8F44B74(a2, a1);
        break;
      case 48:
        sub_1B8F44BF8(a2, a1, a3, a4);
        break;
      case 49:
        sub_1B8F44C7C(a2, a1, a3, a4);
        break;
      case 50:
        sub_1B8F44D00(a2, a1, a3, a4);
        break;
      case 51:
        sub_1B8F44D84(a2, a1);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B8F438D8()
{
  OUTLINED_FUNCTION_147_1();
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  OUTLINED_FUNCTION_12();
  v0 = sub_1B964C530();
  return OUTLINED_FUNCTION_199_1(v0);
}

uint64_t sub_1B8F4393C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1B964C4B0();
  return swift_endAccess();
}

uint64_t sub_1B8F439C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1B8F4A784();
  sub_1B964C420();
  return swift_endAccess();
}

uint64_t sub_1B8F43A54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1B964C440();
  return swift_endAccess();
}

uint64_t sub_1B8F43AD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1B964C440();
  return swift_endAccess();
}

uint64_t sub_1B8F43B5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1B964C440();
  return swift_endAccess();
}

uint64_t sub_1B8F43BE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1B964C4A0();
  return swift_endAccess();
}

uint64_t sub_1B8F43C64(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  sub_1B964C530();
  return swift_endAccess();
}

uint64_t sub_1B8F43CE8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  sub_1B964C530();
  return swift_endAccess();
}

uint64_t sub_1B8F43D6C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  sub_1B964C530();
  return swift_endAccess();
}

uint64_t sub_1B8F43DF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1B964C490();
  return swift_endAccess();
}

uint64_t sub_1B8F43E74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1B964C490();
  return swift_endAccess();
}

uint64_t sub_1B8F43EF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Apple_Parsec_Feedback_V2_ClientCompletion(0);
  sub_1B8CD2408(&qword_1EBABF548, type metadata accessor for Apple_Parsec_Feedback_V2_ClientCompletion, protocol conformance descriptor for Apple_Parsec_Feedback_V2_ClientCompletion);
  sub_1B964C570();
  return swift_endAccess();
}

uint64_t sub_1B8F43FC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackQuery(0);
  sub_1B8CD2408(&qword_1EBABF560, type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackQuery, protocol conformance descriptor for Apple_Parsec_Feedback_V2_FeedbackQuery);
  sub_1B964C570();
  return swift_endAccess();
}

uint64_t sub_1B8F44090(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1B964C4A0();
  return swift_endAccess();
}

uint64_t sub_1B8F44114(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1B964C4A0();
  return swift_endAccess();
}

uint64_t sub_1B8F44198(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1B964C4D0();
  return swift_endAccess();
}

uint64_t sub_1B8F4421C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1B964C400();
  return swift_endAccess();
}

uint64_t sub_1B8F442A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1B964C4A0();
  return swift_endAccess();
}

uint64_t sub_1B8F44324(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1B964C4A0();
  return swift_endAccess();
}

uint64_t sub_1B8F443A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1B964C4A0();
  return swift_endAccess();
}

uint64_t sub_1B8F4442C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1B964C4A0();
  return swift_endAccess();
}

uint64_t sub_1B8F444B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1B964C4A0();
  return swift_endAccess();
}

uint64_t sub_1B8F44534(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1B964C4A0();
  return swift_endAccess();
}

uint64_t sub_1B8F445B8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  sub_1B964C530();
  return swift_endAccess();
}

uint64_t sub_1B8F4463C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1B964C4A0();
  return swift_endAccess();
}

uint64_t sub_1B8F446C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1B8F4A8D4();
  sub_1B964C420();
  return swift_endAccess();
}

uint64_t sub_1B8F44754(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1B964C4A0();
  return swift_endAccess();
}

uint64_t sub_1B8F447D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1B964C4A0();
  return swift_endAccess();
}

uint64_t sub_1B8F4485C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1B964C400();
  return swift_endAccess();
}

uint64_t sub_1B8F448E0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  sub_1B964C530();
  return swift_endAccess();
}

uint64_t sub_1B8F44964(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  sub_1B964C530();
  return swift_endAccess();
}

uint64_t sub_1B8F449E8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  sub_1B964C530();
  return swift_endAccess();
}

uint64_t sub_1B8F44A6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1B964C490();
  return swift_endAccess();
}

uint64_t sub_1B8F44AF0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  sub_1B964C530();
  return swift_endAccess();
}

uint64_t sub_1B8F44B74(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  sub_1B964C530();
  return swift_endAccess();
}

uint64_t sub_1B8F44BF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1B964C430();
  return swift_endAccess();
}

uint64_t sub_1B8F44C7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1B964C490();
  return swift_endAccess();
}

uint64_t sub_1B8F44D00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1B964C490();
  return swift_endAccess();
}

uint64_t sub_1B8F44D84(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  sub_1B964C530();
  return swift_endAccess();
}

uint64_t sub_1B8F44E48(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void), uint64_t (*a5)(void))
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

uint64_t sub_1B8F44EC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  v6 = *(a1 + 24);
  v7 = HIBYTE(v6) & 0xF;
  if ((v6 & 0x2000000000000000) == 0)
  {
    v7 = *(a1 + 16) & 0xFFFFFFFFFFFFLL;
  }

  if (v7)
  {

    sub_1B964C700();
    if (v4)
    {
    }
  }

  swift_beginAccess();
  v8 = *(a1 + 40);
  v9 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v9 = *(a1 + 32) & 0xFFFFFFFFFFFFLL;
  }

  if (v9)
  {

    sub_1B964C700();
    if (v4)
    {
    }
  }

  swift_beginAccess();
  v10 = *(a1 + 56);
  v11 = HIBYTE(v10) & 0xF;
  if ((v10 & 0x2000000000000000) == 0)
  {
    v11 = *(a1 + 48) & 0xFFFFFFFFFFFFLL;
  }

  if (v11)
  {

    sub_1B964C700();
    if (v4)
    {
    }
  }

  swift_beginAccess();
  v12 = *(a1 + 72);
  v13 = HIBYTE(v12) & 0xF;
  if ((v12 & 0x2000000000000000) == 0)
  {
    v13 = *(a1 + 64) & 0xFFFFFFFFFFFFLL;
  }

  if (v13)
  {

    sub_1B964C700();
    if (v4)
    {
    }
  }

  swift_beginAccess();
  v14 = *(a1 + 88);
  v15 = HIBYTE(v14) & 0xF;
  if ((v14 & 0x2000000000000000) == 0)
  {
    v15 = *(a1 + 80) & 0xFFFFFFFFFFFFLL;
  }

  if (v15)
  {

    sub_1B964C700();
    if (v4)
    {
    }
  }

  swift_beginAccess();
  v16 = *(a1 + 104);
  v17 = HIBYTE(v16) & 0xF;
  if ((v16 & 0x2000000000000000) == 0)
  {
    v17 = *(a1 + 96) & 0xFFFFFFFFFFFFLL;
  }

  if (v17)
  {

    sub_1B964C700();
    if (v4)
    {
    }
  }

  swift_beginAccess();
  if (*(a1 + 112))
  {
    result = sub_1B964C6D0();
    if (v4)
    {
      return result;
    }
  }

  swift_beginAccess();
  v19 = *(a1 + 128);
  v20 = HIBYTE(v19) & 0xF;
  if ((v19 & 0x2000000000000000) == 0)
  {
    v20 = *(a1 + 120) & 0xFFFFFFFFFFFFLL;
  }

  if (v20)
  {

    sub_1B964C700();
    if (v4)
    {
    }
  }

  swift_beginAccess();
  v21 = *(a1 + 168);
  v22 = HIBYTE(v21) & 0xF;
  if ((v21 & 0x2000000000000000) == 0)
  {
    v22 = *(a1 + 160) & 0xFFFFFFFFFFFFLL;
  }

  if (v22)
  {

    sub_1B964C700();
    if (v4)
    {
    }
  }

  swift_beginAccess();
  if (*(a1 + 176))
  {
    sub_1B8F4A784();
    result = sub_1B964C680();
    if (v4)
    {
      return result;
    }
  }

  swift_beginAccess();
  v23 = *(a1 + 200);
  v24 = HIBYTE(v23) & 0xF;
  if ((v23 & 0x2000000000000000) == 0)
  {
    v24 = *(a1 + 192) & 0xFFFFFFFFFFFFLL;
  }

  if (v24)
  {

    sub_1B964C700();
    if (v4)
    {
    }
  }

  swift_beginAccess();
  v25 = *(a1 + 216);
  v26 = HIBYTE(v25) & 0xF;
  if ((v25 & 0x2000000000000000) == 0)
  {
    v26 = *(a1 + 208) & 0xFFFFFFFFFFFFLL;
  }

  if (v26)
  {

    sub_1B964C700();
    if (v4)
    {
    }
  }

  swift_beginAccess();
  v27 = *(a1 + 232);
  v28 = HIBYTE(v27) & 0xF;
  if ((v27 & 0x2000000000000000) == 0)
  {
    v28 = *(a1 + 224) & 0xFFFFFFFFFFFFLL;
  }

  if (v28)
  {

    sub_1B964C700();
    if (v4)
    {
    }
  }

  swift_beginAccess();
  if (*(*(a1 + 240) + 16))
  {

    sub_1B964C620();
    if (v4)
    {
    }
  }

  swift_beginAccess();
  if (*(*(a1 + 248) + 16))
  {

    sub_1B964C620();
    if (v4)
    {
    }
  }

  swift_beginAccess();
  if (*(*(a1 + 256) + 16))
  {

    sub_1B964C620();
    if (v4)
    {
    }
  }

  swift_beginAccess();
  if (*(a1 + 264))
  {
    result = sub_1B964C6C0();
    if (v4)
    {
      return result;
    }
  }

  swift_beginAccess();
  v29 = *(a1 + 280);
  v30 = HIBYTE(v29) & 0xF;
  if ((v29 & 0x2000000000000000) == 0)
  {
    v30 = *(a1 + 272) & 0xFFFFFFFFFFFFLL;
  }

  if (v30)
  {

    sub_1B964C700();
    if (v4)
    {
    }
  }

  swift_beginAccess();
  v31 = *(a1 + 296);
  v32 = HIBYTE(v31) & 0xF;
  if ((v31 & 0x2000000000000000) == 0)
  {
    v32 = *(a1 + 288) & 0xFFFFFFFFFFFFLL;
  }

  if (v32)
  {

    sub_1B964C700();
    if (v4)
    {
    }
  }

  swift_beginAccess();
  v33 = *(a1 + 312);
  v34 = HIBYTE(v33) & 0xF;
  if ((v33 & 0x2000000000000000) == 0)
  {
    v34 = *(a1 + 304) & 0xFFFFFFFFFFFFLL;
  }

  if (v34)
  {

    sub_1B964C700();
    if (v4)
    {
    }
  }

  swift_beginAccess();
  if (*(a1 + 320) != 0.0)
  {
    result = sub_1B964C6B0();
    if (v4)
    {
      return result;
    }
  }

  swift_beginAccess();
  if (*(a1 + 324) != 0.0)
  {
    result = sub_1B964C6B0();
    if (v4)
    {
      return result;
    }
  }

  swift_beginAccess();
  if (*(*(a1 + 328) + 16))
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_ClientCompletion(0);
    sub_1B8CD2408(&qword_1EBABF548, type metadata accessor for Apple_Parsec_Feedback_V2_ClientCompletion, protocol conformance descriptor for Apple_Parsec_Feedback_V2_ClientCompletion);

    sub_1B964C730();
    if (!v4)
    {

      goto LABEL_91;
    }
  }

LABEL_91:
  swift_beginAccess();
  if (*(*(a1 + 336) + 16))
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackQuery(0);
    sub_1B8CD2408(&qword_1EBABF560, type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackQuery, protocol conformance descriptor for Apple_Parsec_Feedback_V2_FeedbackQuery);

    sub_1B964C730();
    if (v4)
    {
    }
  }

  swift_beginAccess();
  if (!*(a1 + 344) || (result = sub_1B964C6C0(), !v4))
  {
    swift_beginAccess();
    if (!*(a1 + 348) || (result = sub_1B964C6C0(), !v4))
    {
      swift_beginAccess();
      v35 = *(a1 + 360);
      v36 = HIBYTE(v35) & 0xF;
      if ((v35 & 0x2000000000000000) == 0)
      {
        v36 = *(a1 + 352) & 0xFFFFFFFFFFFFLL;
      }

      if (v36)
      {

        sub_1B964C700();
        if (v4)
        {
        }
      }

      swift_beginAccess();
      if (*(*(a1 + 368) + 16))
      {

        sub_1B964C6E0();
        if (v4)
        {
        }
      }

      swift_beginAccess();
      if (*(a1 + 376) != 1 || (result = sub_1B964C670(), !v4))
      {
        swift_beginAccess();
        if (!*(a1 + 380) || (result = sub_1B964C6C0(), !v4))
        {
          swift_beginAccess();
          if (!*(a1 + 384) || (result = sub_1B964C6C0(), !v4))
          {
            swift_beginAccess();
            if (!*(a1 + 388) || (result = sub_1B964C6C0(), !v4))
            {
              swift_beginAccess();
              if (!*(a1 + 392) || (result = sub_1B964C6C0(), !v4))
              {
                swift_beginAccess();
                if (!*(a1 + 396) || (result = sub_1B964C6C0(), !v4))
                {
                  swift_beginAccess();
                  if (!*(a1 + 400) || (result = sub_1B964C6C0(), !v4))
                  {
                    swift_beginAccess();
                    v37 = *(a1 + 416);
                    v38 = HIBYTE(v37) & 0xF;
                    if ((v37 & 0x2000000000000000) == 0)
                    {
                      v38 = *(a1 + 408) & 0xFFFFFFFFFFFFLL;
                    }

                    if (v38)
                    {

                      sub_1B964C700();
                      if (v4)
                      {
                      }
                    }

                    swift_beginAccess();
                    if (!*(a1 + 424) || (result = sub_1B964C6C0(), !v4))
                    {
                      swift_beginAccess();
                      if (!*(a1 + 432) || (sub_1B8F4A8D4(), result = sub_1B964C680(), !v4))
                      {
                        swift_beginAccess();
                        if (!*(a1 + 152) || (result = sub_1B964C6C0(), !v4))
                        {
                          swift_beginAccess();
                          if (!*(a1 + 444) || (result = sub_1B964C6C0(), !v4))
                          {
                            swift_beginAccess();
                            if (*(a1 + 448) != 1 || (result = sub_1B964C670(), !v4))
                            {
                              swift_beginAccess();
                              v39 = *(a1 + 464);
                              v40 = HIBYTE(v39) & 0xF;
                              if ((v39 & 0x2000000000000000) == 0)
                              {
                                v40 = *(a1 + 456) & 0xFFFFFFFFFFFFLL;
                              }

                              if (v40)
                              {

                                sub_1B964C700();
                                if (v4)
                                {
                                }
                              }

                              swift_beginAccess();
                              v41 = *(a1 + 144);
                              v42 = HIBYTE(v41) & 0xF;
                              if ((v41 & 0x2000000000000000) == 0)
                              {
                                v42 = *(a1 + 136) & 0xFFFFFFFFFFFFLL;
                              }

                              if (v42)
                              {

                                sub_1B964C700();
                                if (v4)
                                {
                                }
                              }

                              swift_beginAccess();
                              v43 = *(a1 + 480);
                              v44 = HIBYTE(v43) & 0xF;
                              if ((v43 & 0x2000000000000000) == 0)
                              {
                                v44 = *(a1 + 472) & 0xFFFFFFFFFFFFLL;
                              }

                              if (v44)
                              {

                                sub_1B964C700();
                                if (v4)
                                {
                                }
                              }

                              swift_beginAccess();
                              if (*(a1 + 488) == 0.0 || (result = sub_1B964C6B0(), !v4))
                              {
                                swift_beginAccess();
                                v45 = *(a1 + 504);
                                v46 = HIBYTE(v45) & 0xF;
                                if ((v45 & 0x2000000000000000) == 0)
                                {
                                  v46 = *(a1 + 496) & 0xFFFFFFFFFFFFLL;
                                }

                                if (v46)
                                {

                                  sub_1B964C700();
                                  if (v4)
                                  {
                                  }
                                }

                                swift_beginAccess();
                                v47 = *(a1 + 520);
                                v48 = HIBYTE(v47) & 0xF;
                                if ((v47 & 0x2000000000000000) == 0)
                                {
                                  v48 = *(a1 + 512) & 0xFFFFFFFFFFFFLL;
                                }

                                if (v48)
                                {

                                  sub_1B964C700();
                                  if (v4)
                                  {
                                  }
                                }

                                swift_beginAccess();
                                if (*(*(a1 + 528) + 16))
                                {

                                  sub_1B964C610();
                                  if (v4)
                                  {
                                  }
                                }

                                swift_beginAccess();
                                if (*(a1 + 536) == 0.0 || (result = sub_1B964C6B0(), !v4))
                                {
                                  swift_beginAccess();
                                  if (*(a1 + 540) == 0.0 || (result = sub_1B964C6B0(), !v4))
                                  {
                                    result = swift_beginAccess();
                                    v49 = *(a1 + 544);
                                    v50 = *(a1 + 552);
                                    v51 = HIBYTE(v50) & 0xF;
                                    if ((v50 & 0x2000000000000000) == 0)
                                    {
                                      v51 = v49 & 0xFFFFFFFFFFFFLL;
                                    }

                                    if (v51)
                                    {

                                      sub_1B964C700();
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

  return result;
}

uint64_t sub_1B8F45F84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  OUTLINED_FUNCTION_468();
  v8 = *(v7(0) + 20);
  v9 = *(v5 + v8);
  v10 = *(v4 + v8);
  if (v9 != v10)
  {

    v11 = a4(v9, v10);

    if ((v11 & 1) == 0)
    {
      return 0;
    }
  }

  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_38();
  sub_1B8CD2408(v12, v13, MEMORY[0x1E69AAC10]);
  OUTLINED_FUNCTION_231();
  return sub_1B964C850() & 1;
}

BOOL sub_1B8F46060()
{
  OUTLINED_FUNCTION_468();
  OUTLINED_FUNCTION_521(v2 + 16, v206);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  OUTLINED_FUNCTION_521(v0 + 16, v205);
  v5 = v3 == *(v0 + 16) && v4 == *(v0 + 24);
  if (!v5 && (OUTLINED_FUNCTION_22_8() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_521(v1 + 32, v204);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  OUTLINED_FUNCTION_521(v0 + 32, v203);
  v8 = v6 == *(v0 + 32) && v7 == *(v0 + 40);
  if (!v8 && (OUTLINED_FUNCTION_22_8() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_521(v1 + 48, v202);
  v9 = *(v1 + 48);
  v10 = *(v1 + 56);
  OUTLINED_FUNCTION_521(v0 + 48, v201);
  v11 = v9 == *(v0 + 48) && v10 == *(v0 + 56);
  if (!v11 && (OUTLINED_FUNCTION_22_8() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_521(v1 + 64, v200);
  v12 = *(v1 + 64);
  v13 = *(v1 + 72);
  OUTLINED_FUNCTION_521(v0 + 64, v199);
  v14 = v12 == *(v0 + 64) && v13 == *(v0 + 72);
  if (!v14 && (OUTLINED_FUNCTION_22_8() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_521(v1 + 80, v198);
  v15 = *(v1 + 80);
  v16 = *(v1 + 88);
  OUTLINED_FUNCTION_521(v0 + 80, v197);
  v17 = v15 == *(v0 + 80) && v16 == *(v0 + 88);
  if (!v17 && (OUTLINED_FUNCTION_22_8() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_521(v1 + 96, v196);
  v18 = *(v1 + 96);
  v19 = *(v1 + 104);
  OUTLINED_FUNCTION_521(v0 + 96, v195);
  v20 = v18 == *(v0 + 96) && v19 == *(v0 + 104);
  if (!v20 && (OUTLINED_FUNCTION_22_8() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_521(v1 + 112, v194);
  v21 = *(v1 + 112);
  OUTLINED_FUNCTION_521(v0 + 112, v193);
  if (v21 != *(v0 + 112))
  {
    return 0;
  }

  OUTLINED_FUNCTION_521(v1 + 120, v192);
  v22 = *(v1 + 120);
  v23 = *(v1 + 128);
  OUTLINED_FUNCTION_521(v0 + 120, v191);
  v24 = v22 == *(v0 + 120) && v23 == *(v0 + 128);
  if (!v24 && (OUTLINED_FUNCTION_22_8() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_521(v1 + 136, v190);
  v25 = *(v1 + 136);
  v26 = *(v1 + 144);
  OUTLINED_FUNCTION_521(v0 + 136, v189);
  v27 = v25 == *(v0 + 136) && v26 == *(v0 + 144);
  if (!v27 && (OUTLINED_FUNCTION_22_8() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_521(v1 + 152, v188);
  v28 = *(v1 + 152);
  OUTLINED_FUNCTION_521(v0 + 152, v187);
  if (v28 != *(v0 + 152))
  {
    return 0;
  }

  OUTLINED_FUNCTION_521(v1 + 160, v186);
  v29 = *(v1 + 160);
  v30 = *(v1 + 168);
  OUTLINED_FUNCTION_521(v0 + 160, v185);
  v31 = v29 == *(v0 + 160) && v30 == *(v0 + 168);
  if (!v31 && (OUTLINED_FUNCTION_22_8() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_521(v1 + 176, v184);
  v32 = *(v1 + 176);
  v33 = *(v1 + 184);
  OUTLINED_FUNCTION_521(v0 + 176, v183);
  if (!sub_1B8D92198(v32, v33, *(v0 + 176)))
  {
    return 0;
  }

  OUTLINED_FUNCTION_521(v1 + 192, v182);
  v34 = *(v1 + 192);
  v35 = *(v1 + 200);
  OUTLINED_FUNCTION_521(v0 + 192, v181);
  v36 = v34 == *(v0 + 192) && v35 == *(v0 + 200);
  if (!v36 && (OUTLINED_FUNCTION_22_8() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_521(v1 + 208, v180);
  v37 = *(v1 + 208);
  v38 = *(v1 + 216);
  OUTLINED_FUNCTION_521(v0 + 208, v179);
  v39 = v37 == *(v0 + 208) && v38 == *(v0 + 216);
  if (!v39 && (OUTLINED_FUNCTION_22_8() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_521(v1 + 224, v178);
  v40 = *(v1 + 224);
  v41 = *(v1 + 232);
  OUTLINED_FUNCTION_521(v0 + 224, v177);
  v42 = v40 == *(v0 + 224) && v41 == *(v0 + 232);
  if (!v42 && (OUTLINED_FUNCTION_22_8() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_521(v1 + 240, v176);
  OUTLINED_FUNCTION_521(v0 + 240, v175);
  if ((sub_1B8D921A8() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_521(v1 + 248, v174);
  OUTLINED_FUNCTION_521(v0 + 248, v173);
  if ((sub_1B8D921A8() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_521(v1 + 256, v172);
  OUTLINED_FUNCTION_521(v0 + 256, v171);
  if ((sub_1B8D921A8() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_521(v1 + 264, v170);
  v43 = *(v1 + 264);
  OUTLINED_FUNCTION_521(v0 + 264, v169);
  if (v43 != *(v0 + 264))
  {
    return 0;
  }

  OUTLINED_FUNCTION_521(v1 + 272, v168);
  v44 = *(v1 + 272);
  v45 = *(v1 + 280);
  OUTLINED_FUNCTION_521(v0 + 272, v167);
  v46 = v44 == *(v0 + 272) && v45 == *(v0 + 280);
  if (!v46 && (OUTLINED_FUNCTION_22_8() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_521(v1 + 288, v166);
  v47 = *(v1 + 288);
  v48 = *(v1 + 296);
  OUTLINED_FUNCTION_521(v0 + 288, v165);
  v49 = v47 == *(v0 + 288) && v48 == *(v0 + 296);
  if (!v49 && (OUTLINED_FUNCTION_22_8() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_521(v1 + 304, v164);
  v50 = *(v1 + 304);
  v51 = *(v1 + 312);
  OUTLINED_FUNCTION_521(v0 + 304, v163);
  v52 = v50 == *(v0 + 304) && v51 == *(v0 + 312);
  if (!v52 && (OUTLINED_FUNCTION_22_8() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_521(v1 + 320, v162);
  v53 = *(v1 + 320);
  OUTLINED_FUNCTION_521(v0 + 320, v161);
  if (v53 != *(v0 + 320))
  {
    return 0;
  }

  OUTLINED_FUNCTION_521(v1 + 324, v160);
  v54 = *(v1 + 324);
  OUTLINED_FUNCTION_521(v0 + 324, v159);
  if (v54 != *(v0 + 324))
  {
    return 0;
  }

  OUTLINED_FUNCTION_521(v1 + 328, v158);
  v55 = *(v1 + 328);
  OUTLINED_FUNCTION_521(v0 + 328, v157);
  v56 = *(v0 + 328);

  sub_1B8D8BBC8(v55, v56);
  v58 = v57;

  if ((v58 & 1) == 0
    || (OUTLINED_FUNCTION_521(v1 + 336, v156), v59 = *(v1 + 336), OUTLINED_FUNCTION_521(v0 + 336, v155), v60 = *(v0 + 336), , , sub_1B8D8BC1C(v59, v60), v62 = v61, , , (v62 & 1) == 0)
    || (OUTLINED_FUNCTION_521(v1 + 344, v154), v63 = *(v1 + 344), OUTLINED_FUNCTION_521(v0 + 344, v153), v63 != *(v0 + 344))
    || (OUTLINED_FUNCTION_521(v1 + 348, v152), v64 = *(v1 + 348), OUTLINED_FUNCTION_521(v0 + 348, v151), v64 != *(v0 + 348))
    || ((OUTLINED_FUNCTION_521(v1 + 352, v150), v65 = *(v1 + 352), v66 = *(v1 + 360), OUTLINED_FUNCTION_521(v0 + 352, v149), v65 == *(v0 + 352)) ? (v67 = v66 == *(v0 + 360)) : (v67 = 0),
        !v67 && (OUTLINED_FUNCTION_22_8() & 1) == 0
     || (OUTLINED_FUNCTION_521(v1 + 368, v148), v68 = *(v1 + 368), OUTLINED_FUNCTION_521(v0 + 368, v147), (sub_1B8D6123C(v68, *(v0 + 368)) & 1) == 0)
     || (OUTLINED_FUNCTION_521(v1 + 376, v146), v69 = *(v1 + 376), OUTLINED_FUNCTION_521(v0 + 376, v145), v69 != *(v0 + 376))
     || (OUTLINED_FUNCTION_521(v1 + 380, v144), v70 = *(v1 + 380), OUTLINED_FUNCTION_521(v0 + 380, v143), v70 != *(v0 + 380))
     || (OUTLINED_FUNCTION_521(v1 + 384, v142), v71 = *(v1 + 384), OUTLINED_FUNCTION_521(v0 + 384, v141), v71 != *(v0 + 384))
     || (OUTLINED_FUNCTION_521(v1 + 388, v140), v72 = *(v1 + 388), OUTLINED_FUNCTION_521(v0 + 388, v139), v72 != *(v0 + 388))
     || (OUTLINED_FUNCTION_521(v1 + 392, v138), v73 = *(v1 + 392), OUTLINED_FUNCTION_521(v0 + 392, v137), v73 != *(v0 + 392))
     || (OUTLINED_FUNCTION_521(v1 + 396, v136), v74 = *(v1 + 396), OUTLINED_FUNCTION_521(v0 + 396, v135), v74 != *(v0 + 396))
     || (OUTLINED_FUNCTION_521(v1 + 400, v134), v75 = *(v1 + 400), OUTLINED_FUNCTION_521(v0 + 400, v133), v75 != *(v0 + 400))
     || ((OUTLINED_FUNCTION_521(v1 + 408, v132), v76 = *(v1 + 408), v77 = *(v1 + 416), OUTLINED_FUNCTION_521(v0 + 408, v131), v76 == *(v0 + 408)) ? (v78 = v77 == *(v0 + 416)) : (v78 = 0), !v78 && (sub_1B964C9F0() & 1) == 0 || (OUTLINED_FUNCTION_521(v1 + 424, v130), v79 = *(v1 + 424), OUTLINED_FUNCTION_521(v0 + 424, v129), v79 != *(v0 + 424)) || (OUTLINED_FUNCTION_521(v1 + 432, v128), v80 = *(v1 + 432), v81 = *(v1 + 440), OUTLINED_FUNCTION_521(v0 + 432, v127), !sub_1B8D92198(v80, v81, *(v0 + 432))) || (OUTLINED_FUNCTION_521(v1 + 444, v126), v82 = *(v1 + 444), OUTLINED_FUNCTION_521(v0 + 444, v125), v82 != *(v0 + 444)) || (OUTLINED_FUNCTION_521(v1 + 448, v124), v83 = *(v1 + 448), OUTLINED_FUNCTION_521(v0 + 448, v123), v83 != *(v0 + 448)) || ((OUTLINED_FUNCTION_521(v1 + 456, v122), v84 = *(v1 + 456), v85 = *(v1 + 464), OUTLINED_FUNCTION_521(v0 + 456, v121), v84 == *(v0 + 456)) ? (v86 = v85 == *(v0 + 464)) : (v86 = 0), !v86 && (OUTLINED_FUNCTION_22_8() & 1) == 0 || ((OUTLINED_FUNCTION_521(v1 + 472, v120), v87 = *(v1 + 472), v88 = *(v1 + 480), OUTLINED_FUNCTION_521(v0 + 472, v119), v87 == *(v0 + 472)) ? (v89 = v88 == *(v0 + 480)) : (v89 = 0), !v89 && (OUTLINED_FUNCTION_22_8() & 1) == 0 || (OUTLINED_FUNCTION_521(v1 + 488, v118), v90 = *(v1 + 488), OUTLINED_FUNCTION_521(v0 + 488, v117), v90 != *(v0 + 488)) || ((OUTLINED_FUNCTION_521(v1 + 496, v116), v91 = *(v1 + 496), v92 = *(v1 + 504), OUTLINED_FUNCTION_521(v0 + 496, v115), v91 == *(v0 + 496)) ? (v93 = v92 == *(v0 + 504)) : (v93 = 0), !v93 && (OUTLINED_FUNCTION_22_8() & 1) == 0 || ((OUTLINED_FUNCTION_521(v1 + 512, v114), v94 = *(v1 + 512), v95 = *(v1 + 520), OUTLINED_FUNCTION_521(v0 + 512, v113), v94 == *(v0 + 512)) ? (v96 = v95 == *(v0 + 520)) : (v96 = 0), !v96 && (OUTLINED_FUNCTION_22_8() & 1) == 0 || (OUTLINED_FUNCTION_521(v1 + 528, v112), v97 = *(v1 + 528), OUTLINED_FUNCTION_521(v0 + 528, v111), (sub_1B8D63AC4(v97, *(v0 + 528)) & 1) == 0) || (OUTLINED_FUNCTION_521(v1 + 536, v110), v98 = *(v1 + 536), OUTLINED_FUNCTION_521(v0 + 536, v109), v98 != *(v0 + 536)) || (OUTLINED_FUNCTION_521(v1 + 540, v108), v99 = *(v1 + 540), OUTLINED_FUNCTION_521(v0 + 540, v107), v99 != *(v0 + 540)))))))))
  {

    return 0;
  }

  OUTLINED_FUNCTION_521(v1 + 544, v106);
  v100 = *(v1 + 544);
  v101 = *(v1 + 552);
  OUTLINED_FUNCTION_521(v0 + 544, &v105);
  if (v100 != *(v0 + 544) || v101 != *(v0 + 552))
  {
    v103 = OUTLINED_FUNCTION_22_8();

    return (v103 & 1) != 0;
  }

  return 1;
}

uint64_t sub_1B8F46B48(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2408(&qword_1EBABF648, type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackQuery, protocol conformance descriptor for Apple_Parsec_Feedback_V2_FeedbackQuery);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8F46BC8(uint64_t a1)
{
  v2 = sub_1B8CD2408(&qword_1EBABF560, type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackQuery, protocol conformance descriptor for Apple_Parsec_Feedback_V2_FeedbackQuery);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8F46C38(uint64_t a1, uint64_t a2)
{
  sub_1B8CD2408(&qword_1EBABF560, type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackQuery, protocol conformance descriptor for Apple_Parsec_Feedback_V2_FeedbackQuery);

  return sub_1B964C5D0();
}

uint64_t sub_1B8F46CB8()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABF230);
  __swift_project_value_buffer(v0, qword_1EBABF230);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1B96511B0;
  v4 = v22 + v3 + v1[14];
  *(v22 + v3) = 0;
  *v4 = "unknown";
  *(v4 + 8) = 7;
  *(v4 + 16) = 2;
  *(v4 + 24) = &unk_1F376BD90;
  v5 = *MEMORY[0x1E69AADE0];
  v6 = sub_1B964C750();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v22 + v3 + v2 + v1[14];
  *(v22 + v3 + v2) = 1;
  *v8 = "iphone";
  *(v8 + 8) = 6;
  *(v8 + 16) = 2;
  *(v8 + 24) = &unk_1F376BDF8;
  v7();
  v9 = (v22 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 2;
  *v10 = "ipad";
  *(v10 + 1) = 4;
  v10[16] = 2;
  *(v10 + 3) = &unk_1F376BE30;
  v7();
  v11 = (v22 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "ipodtouch";
  *(v12 + 1) = 9;
  v12[16] = 2;
  *(v12 + 3) = &unk_1F376BE68;
  v7();
  v13 = (v22 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "mac";
  *(v14 + 1) = 3;
  v14[16] = 2;
  *(v14 + 3) = &unk_1F376BEA0;
  v7();
  v15 = (v22 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "appletv";
  *(v16 + 1) = 7;
  v16[16] = 2;
  *(v16 + 3) = &unk_1F376BED8;
  v7();
  v17 = (v22 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "applewatch";
  *(v18 + 1) = 10;
  v18[16] = 2;
  *(v18 + 3) = &unk_1F376BF10;
  v7();
  v19 = (v22 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "homepod";
  *(v20 + 1) = 7;
  v20[16] = 2;
  *(v20 + 3) = &unk_1F376BF48;
  v7();
  return sub_1B964C760();
}

uint64_t sub_1B8F4708C()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABF248);
  __swift_project_value_buffer(v0, qword_1EBABF248);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964E4B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "ee_section_type";
  *(v6 + 8) = 15;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "image_feedback";
  *(v10 + 8) = 14;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "resource_identifier";
  *(v12 + 1) = 19;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "legacy_card_section_detail";
  *(v14 + 1) = 26;
  v14[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Feedback_V2_CardSectionDetail.decodeMessage<A>(decoder:)()
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
        sub_1B8F47390(v3, v4, v5, v6);
        break;
      case 2:
        v7 = OUTLINED_FUNCTION_9();
        sub_1B8F473F8(v7, v8, v9, v10);
        break;
      case 3:
      case 4:
        OUTLINED_FUNCTION_12();
        sub_1B964C530();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B8F473F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Apple_Parsec_Feedback_V2_CardSectionDetail(0);
  type metadata accessor for Apple_Parsec_Feedback_V2_ImageFeedback(0);
  sub_1B8CD2408(&qword_1EBABF328, type metadata accessor for Apple_Parsec_Feedback_V2_ImageFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_ImageFeedback);
  return sub_1B964C580();
}

uint64_t Apple_Parsec_Feedback_V2_CardSectionDetail.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABF2C0, &qword_1B966D630);
  OUTLINED_FUNCTION_183(v5);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v17 - v7;
  v9 = type metadata accessor for Apple_Parsec_Feedback_V2_ImageFeedback(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_62();
  if (!*v3 || (v11 = *(v3 + 8), v17 = *v3, v18 = v11, sub_1B8F484FC(), result = sub_1B964C680(), !v4))
  {
    v19 = type metadata accessor for Apple_Parsec_Feedback_V2_CardSectionDetail(0);
    sub_1B8D92024();
    if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
    {
      sub_1B8D9207C(v8, &qword_1EBABF2C0, &qword_1B966D630);
    }

    else
    {
      sub_1B8F3B7AC();
      sub_1B8CD2408(&qword_1EBABF328, type metadata accessor for Apple_Parsec_Feedback_V2_ImageFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_ImageFeedback);
      sub_1B964C740();
      result = sub_1B8F3B85C();
      if (v4)
      {
        return result;
      }
    }

    OUTLINED_FUNCTION_1();
    if (!v13 || (result = sub_1B964C700(), !v4))
    {
      OUTLINED_FUNCTION_1();
      if (!v16)
      {
        return OUTLINED_FUNCTION_8_1();
      }

      result = OUTLINED_FUNCTION_3(v14, v15, 4);
      if (!v4)
      {
        return OUTLINED_FUNCTION_8_1();
      }
    }
  }

  return result;
}

uint64_t static Apple_Parsec_Feedback_V2_CardSectionDetail.== infix(_:_:)()
{
  OUTLINED_FUNCTION_468();
  v3 = type metadata accessor for Apple_Parsec_Feedback_V2_ImageFeedback(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_62();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABF2C0, &qword_1B966D630);
  OUTLINED_FUNCTION_183(v5);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABF330, &qword_1B966D638);
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_79();
  if (!sub_1B8D92198(*v1, *(v1 + 8), *v0))
  {
    goto LABEL_11;
  }

  type metadata accessor for Apple_Parsec_Feedback_V2_CardSectionDetail(0);
  v9 = *(v7 + 48);
  sub_1B8D92024();
  sub_1B8D92024();
  v10 = OUTLINED_FUNCTION_207();
  OUTLINED_FUNCTION_178(v10, v11, v3);
  if (!v12)
  {
    sub_1B8D92024();
    OUTLINED_FUNCTION_178(v2 + v9, 1, v3);
    if (!v12)
    {
      sub_1B8F3B7AC();
      v15 = static Apple_Parsec_Feedback_V2_ImageFeedback.== infix(_:_:)();
      sub_1B8F3B85C();
      sub_1B8F3B85C();
      sub_1B8D9207C(v2, &qword_1EBABF2C0, &qword_1B966D630);
      if ((v15 & 1) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_14;
    }

    sub_1B8F3B85C();
LABEL_10:
    sub_1B8D9207C(v2, &qword_1EBABF330, &qword_1B966D638);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_178(v2 + v9, 1, v3);
  if (!v12)
  {
    goto LABEL_10;
  }

  sub_1B8D9207C(v2, &qword_1EBABF2C0, &qword_1B966D630);
LABEL_14:
  v16 = *(v1 + 16) == v0[2] && *(v1 + 24) == v0[3];
  if (v16 || (sub_1B964C9F0() & 1) != 0)
  {
    v17 = *(v1 + 32) == v0[4] && *(v1 + 40) == v0[5];
    if (v17 || (sub_1B964C9F0() & 1) != 0)
    {
      sub_1B964C2B0();
      OUTLINED_FUNCTION_0_38();
      v20 = sub_1B8CD2408(v18, v19, MEMORY[0x1E69AAC10]);
      v13 = OUTLINED_FUNCTION_634(v20);
      return v13 & 1;
    }
  }

LABEL_11:
  v13 = 0;
  return v13 & 1;
}

uint64_t sub_1B8F47AC8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2408(&qword_1EBABF640, type metadata accessor for Apple_Parsec_Feedback_V2_CardSectionDetail, protocol conformance descriptor for Apple_Parsec_Feedback_V2_CardSectionDetail);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8F47B48(uint64_t a1)
{
  v2 = sub_1B8CD2408(&qword_1EBABF578, type metadata accessor for Apple_Parsec_Feedback_V2_CardSectionDetail, protocol conformance descriptor for Apple_Parsec_Feedback_V2_CardSectionDetail);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8F47BB8(uint64_t a1, uint64_t a2)
{
  sub_1B8CD2408(&qword_1EBABF578, type metadata accessor for Apple_Parsec_Feedback_V2_CardSectionDetail, protocol conformance descriptor for Apple_Parsec_Feedback_V2_CardSectionDetail);

  return sub_1B964C5D0();
}

uint64_t sub_1B8F47C50()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABF260);
  __swift_project_value_buffer(v0, qword_1EBABF260);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 2;
  *v6 = "image_quality";
  *(v6 + 8) = 13;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 3;
  *v10 = "image_crop";
  *(v10 + 1) = 10;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "data_source";
  *(v12 + 1) = 11;
  v12[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Feedback_V2_ImageFeedback.decodeMessage<A>(decoder:)()
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

    switch(result)
    {
      case 4:
        v11 = OUTLINED_FUNCTION_9();
        sub_1B8F47FC8(v11, v12, v13, v14);
        break;
      case 3:
        v7 = OUTLINED_FUNCTION_9();
        sub_1B8F47F60(v7, v8, v9, v10);
        break;
      case 2:
        v3 = OUTLINED_FUNCTION_9();
        sub_1B8F47EF8(v3, v4, v5, v6);
        break;
    }
  }

  return result;
}

uint64_t Apple_Parsec_Feedback_V2_ImageFeedback.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  if (!*v0 || (OUTLINED_FUNCTION_94_4(), sub_1B8F48550(), OUTLINED_FUNCTION_687(), result = sub_1B964C680(), !v1))
  {
    if (!*(v2 + 16) || (OUTLINED_FUNCTION_94_4(), sub_1B8F485A4(), OUTLINED_FUNCTION_687(), result = sub_1B964C680(), !v1))
    {
      if (!*(v2 + 32) || (OUTLINED_FUNCTION_94_4(), sub_1B8F485F8(), OUTLINED_FUNCTION_687(), result = sub_1B964C680(), !v1))
      {
        type metadata accessor for Apple_Parsec_Feedback_V2_ImageFeedback(0);
        return OUTLINED_FUNCTION_8_1();
      }
    }
  }

  return result;
}

uint64_t static Apple_Parsec_Feedback_V2_ImageFeedback.== infix(_:_:)()
{
  OUTLINED_FUNCTION_468();
  v3 = *v2;
  v5 = *v4;
  if (*(v4 + 8) == 1)
  {
    switch(v5)
    {
      case 1:
        if (v3 != 1)
        {
          return 0;
        }

        goto LABEL_6;
      case 2:
        if (v3 != 2)
        {
          return 0;
        }

        goto LABEL_6;
      case 3:
        if (v3 != 3)
        {
          return 0;
        }

        goto LABEL_6;
      default:
        if (!v3)
        {
          goto LABEL_6;
        }

        return 0;
    }
  }

  if (v3 != v5)
  {
    return 0;
  }

LABEL_6:
  v6 = *(v1 + 16);
  v7 = *(v0 + 16);
  if (*(v0 + 24) == 1)
  {
    if (v7)
    {
      if (v7 == 1)
      {
        if (v6 != 1)
        {
          return 0;
        }
      }

      else if (v6 != 2)
      {
        return 0;
      }
    }

    else if (v6)
    {
      return 0;
    }
  }

  else if (v6 != v7)
  {
    return 0;
  }

  if (sub_1B8D92198(*(v1 + 32), *(v1 + 40), *(v0 + 32)))
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_ImageFeedback(0);
    sub_1B964C2B0();
    OUTLINED_FUNCTION_0_38();
    v10 = sub_1B8CD2408(v8, v9, MEMORY[0x1E69AAC10]);
    return OUTLINED_FUNCTION_634(v10) & 1;
  }

  return 0;
}

uint64_t sub_1B8F482AC(uint64_t (*a1)(void), uint64_t a2, uint64_t a3, const char *a4)
{
  sub_1B964CA70();
  a1(0);
  v6 = OUTLINED_FUNCTION_461();
  sub_1B8CD2408(v6, v7, a4);
  sub_1B964C7E0();
  return sub_1B964CA90();
}

uint64_t sub_1B8F4838C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2408(&qword_1EBABF638, type metadata accessor for Apple_Parsec_Feedback_V2_ImageFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_ImageFeedback);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8F4840C(uint64_t a1)
{
  v2 = sub_1B8CD2408(&qword_1EBABF328, type metadata accessor for Apple_Parsec_Feedback_V2_ImageFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_ImageFeedback);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8F4847C(uint64_t a1, uint64_t a2)
{
  sub_1B8CD2408(&qword_1EBABF328, type metadata accessor for Apple_Parsec_Feedback_V2_ImageFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_ImageFeedback);

  return sub_1B964C5D0();
}

unint64_t sub_1B8F484FC()
{
  result = qword_1EBABF320;
  if (!qword_1EBABF320)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Feedback_V2_EntityExperienceSectionType, &type metadata for Apple_Parsec_Feedback_V2_EntityExperienceSectionType, v0, v1);
    atomic_store(result, &qword_1EBABF320);
  }

  return result;
}

unint64_t sub_1B8F48550()
{
  result = qword_1EBABF340;
  if (!qword_1EBABF340)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Feedback_V2_ImageQuality, &type metadata for Apple_Parsec_Feedback_V2_ImageQuality, v0, v1);
    atomic_store(result, &qword_1EBABF340);
  }

  return result;
}

unint64_t sub_1B8F485A4()
{
  result = qword_1EBABF348;
  if (!qword_1EBABF348)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Feedback_V2_ImageCrop, &type metadata for Apple_Parsec_Feedback_V2_ImageCrop, v0, v1);
    atomic_store(result, &qword_1EBABF348);
  }

  return result;
}

unint64_t sub_1B8F485F8()
{
  result = qword_1EBABF350;
  if (!qword_1EBABF350)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Feedback_V2_DataSource, &type metadata for Apple_Parsec_Feedback_V2_DataSource, v0, v1);
    atomic_store(result, &qword_1EBABF350);
  }

  return result;
}

unint64_t sub_1B8F48650()
{
  result = qword_1EBABF360;
  if (!qword_1EBABF360)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Feedback_V2_UserDataShareOptIn, &type metadata for Apple_Parsec_Feedback_V2_UserDataShareOptIn, v0, v1);
    atomic_store(result, &qword_1EBABF360);
  }

  return result;
}

unint64_t sub_1B8F486A8()
{
  result = qword_1EBABF368;
  if (!qword_1EBABF368)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Feedback_V2_UserDataShareOptIn, &type metadata for Apple_Parsec_Feedback_V2_UserDataShareOptIn, v0, v1);
    atomic_store(result, &qword_1EBABF368);
  }

  return result;
}

unint64_t sub_1B8F48700()
{
  result = qword_1EBABF370;
  if (!qword_1EBABF370)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Feedback_V2_UserDataShareOptIn, &type metadata for Apple_Parsec_Feedback_V2_UserDataShareOptIn, v0, v1);
    atomic_store(result, &qword_1EBABF370);
  }

  return result;
}

unint64_t sub_1B8F48788()
{
  result = qword_1EBABF388;
  if (!qword_1EBABF388)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Feedback_V2_ViewType, &type metadata for Apple_Parsec_Feedback_V2_ViewType, v0, v1);
    atomic_store(result, &qword_1EBABF388);
  }

  return result;
}

unint64_t sub_1B8F487E0()
{
  result = qword_1EBABF390;
  if (!qword_1EBABF390)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Feedback_V2_ViewType, &type metadata for Apple_Parsec_Feedback_V2_ViewType, v0, v1);
    atomic_store(result, &qword_1EBABF390);
  }

  return result;
}

unint64_t sub_1B8F48838()
{
  result = qword_1EBABF398;
  if (!qword_1EBABF398)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Feedback_V2_ViewType, &type metadata for Apple_Parsec_Feedback_V2_ViewType, v0, v1);
    atomic_store(result, &qword_1EBABF398);
  }

  return result;
}

unint64_t sub_1B8F488C0()
{
  result = qword_1EBABF3B0;
  if (!qword_1EBABF3B0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Feedback_V2_EntitySubType, &type metadata for Apple_Parsec_Feedback_V2_EntitySubType, v0, v1);
    atomic_store(result, &qword_1EBABF3B0);
  }

  return result;
}

unint64_t sub_1B8F48918()
{
  result = qword_1EBABF3B8;
  if (!qword_1EBABF3B8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Feedback_V2_EntitySubType, &type metadata for Apple_Parsec_Feedback_V2_EntitySubType, v0, v1);
    atomic_store(result, &qword_1EBABF3B8);
  }

  return result;
}

unint64_t sub_1B8F48970()
{
  result = qword_1EBABF3C0;
  if (!qword_1EBABF3C0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Feedback_V2_EntitySubType, &type metadata for Apple_Parsec_Feedback_V2_EntitySubType, v0, v1);
    atomic_store(result, &qword_1EBABF3C0);
  }

  return result;
}

unint64_t sub_1B8F489F8()
{
  result = qword_1EBABF3D8;
  if (!qword_1EBABF3D8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Feedback_V2_AnswerType, &type metadata for Apple_Parsec_Feedback_V2_AnswerType, v0, v1);
    atomic_store(result, &qword_1EBABF3D8);
  }

  return result;
}

unint64_t sub_1B8F48A50()
{
  result = qword_1EBABF3E0;
  if (!qword_1EBABF3E0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Feedback_V2_AnswerType, &type metadata for Apple_Parsec_Feedback_V2_AnswerType, v0, v1);
    atomic_store(result, &qword_1EBABF3E0);
  }

  return result;
}

unint64_t sub_1B8F48AA8()
{
  result = qword_1EBABF3E8;
  if (!qword_1EBABF3E8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Feedback_V2_AnswerType, &type metadata for Apple_Parsec_Feedback_V2_AnswerType, v0, v1);
    atomic_store(result, &qword_1EBABF3E8);
  }

  return result;
}

unint64_t sub_1B8F48B30()
{
  result = qword_1EBABF400;
  if (!qword_1EBABF400)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Feedback_V2_EntityExperienceSectionType, &type metadata for Apple_Parsec_Feedback_V2_EntityExperienceSectionType, v0, v1);
    atomic_store(result, &qword_1EBABF400);
  }

  return result;
}

unint64_t sub_1B8F48B88()
{
  result = qword_1EBABF408;
  if (!qword_1EBABF408)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Feedback_V2_EntityExperienceSectionType, &type metadata for Apple_Parsec_Feedback_V2_EntityExperienceSectionType, v0, v1);
    atomic_store(result, &qword_1EBABF408);
  }

  return result;
}

unint64_t sub_1B8F48BE0()
{
  result = qword_1EBABF410;
  if (!qword_1EBABF410)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Feedback_V2_EntityExperienceSectionType, &type metadata for Apple_Parsec_Feedback_V2_EntityExperienceSectionType, v0, v1);
    atomic_store(result, &qword_1EBABF410);
  }

  return result;
}

unint64_t sub_1B8F48C68()
{
  result = qword_1EBABF428;
  if (!qword_1EBABF428)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Feedback_V2_ImageQuality, &type metadata for Apple_Parsec_Feedback_V2_ImageQuality, v0, v1);
    atomic_store(result, &qword_1EBABF428);
  }

  return result;
}

unint64_t sub_1B8F48CC0()
{
  result = qword_1EBABF430;
  if (!qword_1EBABF430)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Feedback_V2_ImageQuality, &type metadata for Apple_Parsec_Feedback_V2_ImageQuality, v0, v1);
    atomic_store(result, &qword_1EBABF430);
  }

  return result;
}

unint64_t sub_1B8F48D18()
{
  result = qword_1EBABF438;
  if (!qword_1EBABF438)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Feedback_V2_ImageQuality, &type metadata for Apple_Parsec_Feedback_V2_ImageQuality, v0, v1);
    atomic_store(result, &qword_1EBABF438);
  }

  return result;
}

unint64_t sub_1B8F48DA0()
{
  result = qword_1EBABF450;
  if (!qword_1EBABF450)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Feedback_V2_ImageCrop, &type metadata for Apple_Parsec_Feedback_V2_ImageCrop, v0, v1);
    atomic_store(result, &qword_1EBABF450);
  }

  return result;
}

unint64_t sub_1B8F48DF8()
{
  result = qword_1EBABF458;
  if (!qword_1EBABF458)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Feedback_V2_ImageCrop, &type metadata for Apple_Parsec_Feedback_V2_ImageCrop, v0, v1);
    atomic_store(result, &qword_1EBABF458);
  }

  return result;
}

unint64_t sub_1B8F48E50()
{
  result = qword_1EBABF460;
  if (!qword_1EBABF460)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Feedback_V2_ImageCrop, &type metadata for Apple_Parsec_Feedback_V2_ImageCrop, v0, v1);
    atomic_store(result, &qword_1EBABF460);
  }

  return result;
}

unint64_t sub_1B8F48ED8()
{
  result = qword_1EBABF478;
  if (!qword_1EBABF478)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Feedback_V2_DataSource, &type metadata for Apple_Parsec_Feedback_V2_DataSource, v0, v1);
    atomic_store(result, &qword_1EBABF478);
  }

  return result;
}

unint64_t sub_1B8F48F30()
{
  result = qword_1EBABF480;
  if (!qword_1EBABF480)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Feedback_V2_DataSource, &type metadata for Apple_Parsec_Feedback_V2_DataSource, v0, v1);
    atomic_store(result, &qword_1EBABF480);
  }

  return result;
}

unint64_t sub_1B8F48F88()
{
  result = qword_1EBABF488;
  if (!qword_1EBABF488)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Feedback_V2_DataSource, &type metadata for Apple_Parsec_Feedback_V2_DataSource, v0, v1);
    atomic_store(result, &qword_1EBABF488);
  }

  return result;
}

unint64_t sub_1B8F49010()
{
  result = qword_1EBABF4A0;
  if (!qword_1EBABF4A0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Feedback_V2_FeedbackQuery.DeviceType, &type metadata for Apple_Parsec_Feedback_V2_FeedbackQuery.DeviceType, v0, v1);
    atomic_store(result, &qword_1EBABF4A0);
  }

  return result;
}

unint64_t sub_1B8F49068()
{
  result = qword_1EBABF4A8;
  if (!qword_1EBABF4A8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Feedback_V2_FeedbackQuery.DeviceType, &type metadata for Apple_Parsec_Feedback_V2_FeedbackQuery.DeviceType, v0, v1);
    atomic_store(result, &qword_1EBABF4A8);
  }

  return result;
}

unint64_t sub_1B8F490C0()
{
  result = qword_1EBABF4B0;
  if (!qword_1EBABF4B0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Feedback_V2_FeedbackQuery.DeviceType, &type metadata for Apple_Parsec_Feedback_V2_FeedbackQuery.DeviceType, v0, v1);
    atomic_store(result, &qword_1EBABF4B0);
  }

  return result;
}

void sub_1B8F49D2C(uint64_t a1)
{
  sub_1B8DD7D14(319, &qword_1EBABA968, MEMORY[0x1E69E7360]);
  if (v1 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B8F49E30(uint64_t a1)
{
  sub_1B8F4A114(319, &qword_1EBABF5B8, type metadata accessor for Apple_Parsec_Feedback_V2_ArgInfo, MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    sub_1B8DD7D14(319, qword_1EDA06FD0, MEMORY[0x1E69E6158]);
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

uint64_t __swift_get_extra_inhabitant_indexTm_0()
{
  OUTLINED_FUNCTION_19_1();
  if (v1)
  {
    return OUTLINED_FUNCTION_700(*v0);
  }

  OUTLINED_FUNCTION_24_1();
  v3 = OUTLINED_FUNCTION_48_1();

  return __swift_getEnumTagSinglePayload(v3, v4, v5);
}

void __swift_store_extra_inhabitant_indexTm_1()
{
  OUTLINED_FUNCTION_7();
  if (v2)
  {
    *v1 = (v0 - 1);
  }

  else
  {
    sub_1B964C2B0();
    v3 = OUTLINED_FUNCTION_48_1();

    __swift_storeEnumTagSinglePayload(v3, v4, v0, v5);
  }
}

void sub_1B8F4A038(uint64_t a1)
{
  sub_1B8DD7D14(319, qword_1EDA06FD0, MEMORY[0x1E69E6158]);
  if (v1 <= 0x3F)
  {
    sub_1B8F4A114(319, &qword_1EBABF5D0, type metadata accessor for Apple_Parsec_Feedback_V2_IntentInfo, MEMORY[0x1E69E62F8]);
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

void sub_1B8F4A114(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void __swift_store_extra_inhabitant_index_339Tm()
{
  OUTLINED_FUNCTION_7();
  if (v2)
  {
    *(v1 + 8) = (v0 - 1);
  }

  else
  {
    sub_1B964C2B0();
    v3 = OUTLINED_FUNCTION_48_1();

    __swift_storeEnumTagSinglePayload(v3, v4, v0, v5);
  }
}

void sub_1B8F4A24C(uint64_t a1)
{
  sub_1B8F4A114(319, &qword_1EBABF5F8, type metadata accessor for Apple_Parsec_Feedback_V2_CompletionSourceInfo, MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1B8F4A350(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
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

void sub_1B8F4A414(uint64_t a1)
{
  sub_1B964C2B0();
  if (v1 <= 0x3F)
  {
    sub_1B8F4A114(319, &qword_1EBABF620, type metadata accessor for Apple_Parsec_Feedback_V2_ImageFeedback, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1B8F4A52C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  result = sub_1B964C2B0();
  if (v7 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1B8F4A5B0(uint64_t a1)
{
  sub_1B8F4A114(319, &qword_1ED9CA400, type metadata accessor for Apple_Parsec_Feedback_V2_DomainProperty, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    sub_1B8F4A114(319, &qword_1ED9CC010, type metadata accessor for Apple_Parsec_Feedback_V2_KGInfo, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

unint64_t sub_1B8F4A784()
{
  result = qword_1EBABF688;
  if (!qword_1EBABF688)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Feedback_V2_FeedbackQuery.DeviceType, &type metadata for Apple_Parsec_Feedback_V2_FeedbackQuery.DeviceType, v0, v1);
    atomic_store(result, &qword_1EBABF688);
  }

  return result;
}

unint64_t sub_1B8F4A7D8()
{
  result = qword_1EBABF690;
  if (!qword_1EBABF690)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Feedback_V2_AnswerType, &type metadata for Apple_Parsec_Feedback_V2_AnswerType, v0, v1);
    atomic_store(result, &qword_1EBABF690);
  }

  return result;
}

unint64_t sub_1B8F4A82C()
{
  result = qword_1EBABF698;
  if (!qword_1EBABF698)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Feedback_V2_EntitySubType, &type metadata for Apple_Parsec_Feedback_V2_EntitySubType, v0, v1);
    atomic_store(result, &qword_1EBABF698);
  }

  return result;
}

unint64_t sub_1B8F4A880()
{
  result = qword_1EBABF6A0;
  if (!qword_1EBABF6A0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Feedback_V2_ViewType, &type metadata for Apple_Parsec_Feedback_V2_ViewType, v0, v1);
    atomic_store(result, &qword_1EBABF6A0);
  }

  return result;
}

unint64_t sub_1B8F4A8D4()
{
  result = qword_1EBABF6A8;
  if (!qword_1EBABF6A8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Feedback_V2_UserDataShareOptIn, &type metadata for Apple_Parsec_Feedback_V2_UserDataShareOptIn, v0, v1);
    atomic_store(result, &qword_1EBABF6A8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_1_32(uint64_t a1)
{
  *v1 = a1;
  *(a1 + 64) = v2;
  result = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackQuery(0);
  *(a1 + 72) = *(result + 20);
  return result;
}

uint64_t OUTLINED_FUNCTION_2_19(uint64_t a1)
{
  *v1 = a1;
  *(a1 + 72) = v2;
  result = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackQuery(0);
  *(a1 + 84) = *(result + 20);
  return result;
}

uint64_t OUTLINED_FUNCTION_3_22(uint64_t a1)
{
  *v1 = a1;
  *(a1 + 64) = v2;
  result = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackResult(0);
  *(a1 + 72) = *(result + 20);
  return result;
}

uint64_t OUTLINED_FUNCTION_6_11(uint64_t a1)
{
  *v1 = a1;
  *(a1 + 72) = v2;
  return 0;
}

uint64_t OUTLINED_FUNCTION_7_20(uint64_t a1)
{

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_8_20(uint64_t a1)
{
  *v1 = a1;
  *(a1 + 56) = v2;
  result = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackResult(0);
  *(a1 + 64) = *(result + 20);
  return result;
}

uint64_t OUTLINED_FUNCTION_19_8()
{
  type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackQuery(0);

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_31_10()
{
  type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackResult._StorageClass(0);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_37_3(uint64_t a1)
{
  *v1 = a1;
  *(a1 + 88) = v2;
  return 0;
}

uint64_t OUTLINED_FUNCTION_46_4()
{
  type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackResult(0);

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_65_5()
{
  type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackQuery(0);

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_77_4(uint64_t a1)
{
  type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackQuery(a1);

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_81_2(uint64_t a1)
{
  type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackQuery(a1);

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_94_5(uint64_t a1)
{
  type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackResult(a1);

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_95_2(uint64_t a1)
{
  type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackResult(a1);

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_138_2()
{

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t Google_Protobuf_EnumOptions.Apple_Parsec_Feedback_V2_objcEnumType.getter()
{
  if (qword_1EBAB69B8 != -1)
  {
    OUTLINED_FUNCTION_11_18(&qword_1EBAB69B8);
  }

  OUTLINED_FUNCTION_4_22();
  v2 = sub_1B8F4F470(v0, v1, MEMORY[0x1E69AA970]);
  v3 = OUTLINED_FUNCTION_26_11(v2);
  return OUTLINED_FUNCTION_22_12(v3, v4, v5, v6, v7, v8, v9, v10, v12, v13);
}

uint64_t Google_Protobuf_EnumOptions.Apple_Parsec_Feedback_V2_objcEnumType.setter()
{
  OUTLINED_FUNCTION_16();
  if (qword_1EBAB69B8 != -1)
  {
    OUTLINED_FUNCTION_11_18(&qword_1EBAB69B8);
  }

  OUTLINED_FUNCTION_4_22();
  v3 = sub_1B8F4F470(v1, v2, MEMORY[0x1E69AA970]);
  OUTLINED_FUNCTION_25_10(v3, v4, v5, v6, v7, v8, v9, v10, v0);
}

uint64_t Google_Protobuf_EnumOptions.Apple_Parsec_Feedback_V2_objcEnumType.modify()
{
  v1 = OUTLINED_FUNCTION_29_13();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_21_9(v2);
  *v0 = Google_Protobuf_EnumOptions.Apple_Parsec_Feedback_V2_objcEnumType.getter();
  v0[1] = v3;
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8F4AFAC()
{
  OUTLINED_FUNCTION_31_11();
  v3 = qword_1EBAB69B8;
  if (v4)
  {

    if (v3 != -1)
    {
      OUTLINED_FUNCTION_11_18(&qword_1EBAB69B8);
    }

    v0[2] = v2;
    v0[3] = v1;
    OUTLINED_FUNCTION_4_22();
    v7 = sub_1B8F4F470(v5, v6, MEMORY[0x1E69AA970]);
    OUTLINED_FUNCTION_23_9(v7);
  }

  else
  {
    if (qword_1EBAB69B8 != -1)
    {
      OUTLINED_FUNCTION_11_18(&qword_1EBAB69B8);
    }

    v0[2] = v2;
    v0[3] = v1;
    OUTLINED_FUNCTION_4_22();
    v10 = sub_1B8F4F470(v8, v9, MEMORY[0x1E69AA970]);
    OUTLINED_FUNCTION_23_9(v10);
  }

  free(v0);
}

uint64_t Google_Protobuf_EnumOptions.hasApple_Parsec_Feedback_V2_objcEnumType.getter()
{
  if (qword_1EBAB69B8 != -1)
  {
    OUTLINED_FUNCTION_11_18(&qword_1EBAB69B8);
  }

  OUTLINED_FUNCTION_4_22();
  sub_1B8F4F470(v0, v1, MEMORY[0x1E69AA970]);
  v2 = OUTLINED_FUNCTION_24_13();

  return MEMORY[0x1EEE15650](v2);
}

Swift::Void __swiftcall Google_Protobuf_EnumOptions.clearApple_Parsec_Feedback_V2_objcEnumType()()
{
  if (qword_1EBAB69B8 != -1)
  {
    OUTLINED_FUNCTION_11_18(&qword_1EBAB69B8);
  }

  OUTLINED_FUNCTION_4_22();
  sub_1B8F4F470(v0, v1, MEMORY[0x1E69AA970]);
  v2 = OUTLINED_FUNCTION_24_13();

  MEMORY[0x1EEE15660](v2);
}

uint64_t Google_Protobuf_EnumValueOptions.Apple_Parsec_Feedback_V2_stringValue.getter()
{
  if (qword_1EBAB6990 != -1)
  {
    OUTLINED_FUNCTION_12_16(&qword_1EBAB6990);
  }

  OUTLINED_FUNCTION_3_23();
  v2 = sub_1B8F4F470(v0, v1, MEMORY[0x1E69AAA10]);
  v3 = OUTLINED_FUNCTION_26_11(v2);
  return OUTLINED_FUNCTION_22_12(v3, v4, v5, v6, v7, v8, v9, v10, v12, v13);
}

uint64_t Google_Protobuf_EnumValueOptions.Apple_Parsec_Feedback_V2_stringValue.setter()
{
  OUTLINED_FUNCTION_16();
  if (qword_1EBAB6990 != -1)
  {
    OUTLINED_FUNCTION_12_16(&qword_1EBAB6990);
  }

  OUTLINED_FUNCTION_3_23();
  v3 = sub_1B8F4F470(v1, v2, MEMORY[0x1E69AAA10]);
  OUTLINED_FUNCTION_25_10(v3, v4, v5, v6, v7, v8, v9, v10, v0);
}

uint64_t Google_Protobuf_EnumValueOptions.Apple_Parsec_Feedback_V2_stringValue.modify()
{
  v1 = OUTLINED_FUNCTION_29_13();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_21_9(v2);
  *v0 = Google_Protobuf_EnumValueOptions.Apple_Parsec_Feedback_V2_stringValue.getter();
  v0[1] = v3;
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8F4B354()
{
  OUTLINED_FUNCTION_31_11();
  v3 = qword_1EBAB6990;
  if (v4)
  {

    if (v3 != -1)
    {
      OUTLINED_FUNCTION_12_16(&qword_1EBAB6990);
    }

    v0[2] = v2;
    v0[3] = v1;
    OUTLINED_FUNCTION_3_23();
    v7 = sub_1B8F4F470(v5, v6, MEMORY[0x1E69AAA10]);
    OUTLINED_FUNCTION_23_9(v7);
  }

  else
  {
    if (qword_1EBAB6990 != -1)
    {
      OUTLINED_FUNCTION_12_16(&qword_1EBAB6990);
    }

    v0[2] = v2;
    v0[3] = v1;
    OUTLINED_FUNCTION_3_23();
    v10 = sub_1B8F4F470(v8, v9, MEMORY[0x1E69AAA10]);
    OUTLINED_FUNCTION_23_9(v10);
  }

  free(v0);
}

uint64_t Google_Protobuf_EnumValueOptions.hasApple_Parsec_Feedback_V2_stringValue.getter()
{
  if (qword_1EBAB6990 != -1)
  {
    OUTLINED_FUNCTION_12_16(&qword_1EBAB6990);
  }

  OUTLINED_FUNCTION_3_23();
  sub_1B8F4F470(v0, v1, MEMORY[0x1E69AAA10]);
  v2 = OUTLINED_FUNCTION_24_13();

  return MEMORY[0x1EEE15650](v2);
}

Swift::Void __swiftcall Google_Protobuf_EnumValueOptions.clearApple_Parsec_Feedback_V2_stringValue()()
{
  if (qword_1EBAB6990 != -1)
  {
    OUTLINED_FUNCTION_12_16(&qword_1EBAB6990);
  }

  OUTLINED_FUNCTION_3_23();
  sub_1B8F4F470(v0, v1, MEMORY[0x1E69AAA10]);
  v2 = OUTLINED_FUNCTION_24_13();

  MEMORY[0x1EEE15660](v2);
}

uint64_t Google_Protobuf_FieldOptions.Apple_Parsec_Feedback_V2_includeEmpty.getter()
{
  if (qword_1EBAB6970 != -1)
  {
    OUTLINED_FUNCTION_17_11(&qword_1EBAB6970);
  }

  OUTLINED_FUNCTION_1_33();
  v2 = sub_1B8F4F470(v0, v1, MEMORY[0x1E69AA9C8]);
  v3 = OUTLINED_FUNCTION_36_4(v2);
  return OUTLINED_FUNCTION_39_2(v3, v4, v5, v6, v7, v8, v9, v10, v12, v13, SWORD2(v13), SBYTE6(v13), SHIBYTE(v13));
}

uint64_t Google_Protobuf_FieldOptions.Apple_Parsec_Feedback_V2_includeEmpty.setter()
{
  if (qword_1EBAB6970 != -1)
  {
    OUTLINED_FUNCTION_17_11(&qword_1EBAB6970);
  }

  OUTLINED_FUNCTION_38_3();
  OUTLINED_FUNCTION_1_33();
  v2 = sub_1B8F4F470(v0, v1, MEMORY[0x1E69AA9C8]);
  return OUTLINED_FUNCTION_35_5(v2, v3, v4, v5, v6, v7, v8, v9, v11, v12, SWORD2(v12), SBYTE6(v12), SHIBYTE(v12));
}

uint64_t Google_Protobuf_FieldOptions.Apple_Parsec_Feedback_V2_includeEmpty.modify(void *a1)
{
  OUTLINED_FUNCTION_33(a1);
  if (qword_1EBAB6970 != -1)
  {
    OUTLINED_FUNCTION_17_11(&qword_1EBAB6970);
  }

  *(v1 + 8) = qword_1EBABF6D8;
  OUTLINED_FUNCTION_1_33();
  v4 = sub_1B8F4F470(v2, v3, MEMORY[0x1E69AA9C8]);
  OUTLINED_FUNCTION_32_8(v4);
  OUTLINED_FUNCTION_34_6();
  return OUTLINED_FUNCTION_37_4();
}

uint64_t Google_Protobuf_FieldOptions.hasApple_Parsec_Feedback_V2_includeEmpty.getter()
{
  if (qword_1EBAB6970 != -1)
  {
    OUTLINED_FUNCTION_17_11(&qword_1EBAB6970);
  }

  OUTLINED_FUNCTION_1_33();
  sub_1B8F4F470(v0, v1, MEMORY[0x1E69AA9C8]);
  v2 = OUTLINED_FUNCTION_24_13();

  return MEMORY[0x1EEE15650](v2);
}

Swift::Void __swiftcall Google_Protobuf_FieldOptions.clearApple_Parsec_Feedback_V2_includeEmpty()()
{
  if (qword_1EBAB6970 != -1)
  {
    OUTLINED_FUNCTION_17_11(&qword_1EBAB6970);
  }

  OUTLINED_FUNCTION_1_33();
  sub_1B8F4F470(v0, v1, MEMORY[0x1E69AA9C8]);
  v2 = OUTLINED_FUNCTION_24_13();

  MEMORY[0x1EEE15660](v2);
}

uint64_t Google_Protobuf_FieldOptions.Apple_Parsec_Feedback_V2_jsonKey.getter()
{
  if (qword_1EBAB6978 != -1)
  {
    OUTLINED_FUNCTION_8_21(&qword_1EBAB6978);
  }

  OUTLINED_FUNCTION_1_33();
  v2 = sub_1B8F4F470(v0, v1, MEMORY[0x1E69AA9C8]);
  v3 = OUTLINED_FUNCTION_26_11(v2);
  return OUTLINED_FUNCTION_22_12(v3, v4, v5, v6, v7, v8, v9, v10, v12, v13);
}

uint64_t Google_Protobuf_FieldOptions.Apple_Parsec_Feedback_V2_jsonKey.setter()
{
  OUTLINED_FUNCTION_16();
  if (qword_1EBAB6978 != -1)
  {
    OUTLINED_FUNCTION_8_21(&qword_1EBAB6978);
  }

  OUTLINED_FUNCTION_1_33();
  v3 = sub_1B8F4F470(v1, v2, MEMORY[0x1E69AA9C8]);
  OUTLINED_FUNCTION_25_10(v3, v4, v5, v6, v7, v8, v9, v10, v0);
}

uint64_t Google_Protobuf_FieldOptions.Apple_Parsec_Feedback_V2_jsonKey.modify()
{
  v1 = OUTLINED_FUNCTION_29_13();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_21_9(v2);
  *v0 = Google_Protobuf_FieldOptions.Apple_Parsec_Feedback_V2_jsonKey.getter();
  v0[1] = v3;
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8F4B988()
{
  OUTLINED_FUNCTION_31_11();
  v3 = qword_1EBAB6978;
  if (v4)
  {

    if (v3 != -1)
    {
      OUTLINED_FUNCTION_8_21(&qword_1EBAB6978);
    }

    v0[2] = v2;
    v0[3] = v1;
    OUTLINED_FUNCTION_1_33();
    v7 = sub_1B8F4F470(v5, v6, MEMORY[0x1E69AA9C8]);
    OUTLINED_FUNCTION_23_9(v7);
  }

  else
  {
    if (qword_1EBAB6978 != -1)
    {
      OUTLINED_FUNCTION_8_21(&qword_1EBAB6978);
    }

    v0[2] = v2;
    v0[3] = v1;
    OUTLINED_FUNCTION_1_33();
    v10 = sub_1B8F4F470(v8, v9, MEMORY[0x1E69AA9C8]);
    OUTLINED_FUNCTION_23_9(v10);
  }

  free(v0);
}

uint64_t Google_Protobuf_FieldOptions.hasApple_Parsec_Feedback_V2_jsonKey.getter()
{
  if (qword_1EBAB6978 != -1)
  {
    OUTLINED_FUNCTION_8_21(&qword_1EBAB6978);
  }

  OUTLINED_FUNCTION_1_33();
  sub_1B8F4F470(v0, v1, MEMORY[0x1E69AA9C8]);
  v2 = OUTLINED_FUNCTION_24_13();

  return MEMORY[0x1EEE15650](v2);
}

Swift::Void __swiftcall Google_Protobuf_FieldOptions.clearApple_Parsec_Feedback_V2_jsonKey()()
{
  if (qword_1EBAB6978 != -1)
  {
    OUTLINED_FUNCTION_8_21(&qword_1EBAB6978);
  }

  OUTLINED_FUNCTION_1_33();
  sub_1B8F4F470(v0, v1, MEMORY[0x1E69AA9C8]);
  v2 = OUTLINED_FUNCTION_24_13();

  MEMORY[0x1EEE15660](v2);
}

uint64_t Google_Protobuf_FieldOptions.Apple_Parsec_Feedback_V2_objcType.getter()
{
  if (qword_1EBAB6998 != -1)
  {
    OUTLINED_FUNCTION_7_21(&qword_1EBAB6998);
  }

  OUTLINED_FUNCTION_1_33();
  v2 = sub_1B8F4F470(v0, v1, MEMORY[0x1E69AA9C8]);
  v3 = OUTLINED_FUNCTION_26_11(v2);
  return OUTLINED_FUNCTION_22_12(v3, v4, v5, v6, v7, v8, v9, v10, v12, v13);
}

uint64_t Google_Protobuf_FieldOptions.Apple_Parsec_Feedback_V2_objcType.setter()
{
  OUTLINED_FUNCTION_16();
  if (qword_1EBAB6998 != -1)
  {
    OUTLINED_FUNCTION_7_21(&qword_1EBAB6998);
  }

  OUTLINED_FUNCTION_1_33();
  v3 = sub_1B8F4F470(v1, v2, MEMORY[0x1E69AA9C8]);
  OUTLINED_FUNCTION_25_10(v3, v4, v5, v6, v7, v8, v9, v10, v0);
}

uint64_t Google_Protobuf_FieldOptions.Apple_Parsec_Feedback_V2_objcType.modify()
{
  v1 = OUTLINED_FUNCTION_29_13();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_21_9(v2);
  *v0 = Google_Protobuf_FieldOptions.Apple_Parsec_Feedback_V2_objcType.getter();
  v0[1] = v3;
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8F4BD30()
{
  OUTLINED_FUNCTION_31_11();
  v3 = qword_1EBAB6998;
  if (v4)
  {

    if (v3 != -1)
    {
      OUTLINED_FUNCTION_7_21(&qword_1EBAB6998);
    }

    v0[2] = v2;
    v0[3] = v1;
    OUTLINED_FUNCTION_1_33();
    v7 = sub_1B8F4F470(v5, v6, MEMORY[0x1E69AA9C8]);
    OUTLINED_FUNCTION_23_9(v7);
  }

  else
  {
    if (qword_1EBAB6998 != -1)
    {
      OUTLINED_FUNCTION_7_21(&qword_1EBAB6998);
    }

    v0[2] = v2;
    v0[3] = v1;
    OUTLINED_FUNCTION_1_33();
    v10 = sub_1B8F4F470(v8, v9, MEMORY[0x1E69AA9C8]);
    OUTLINED_FUNCTION_23_9(v10);
  }

  free(v0);
}

uint64_t Google_Protobuf_FieldOptions.hasApple_Parsec_Feedback_V2_objcType.getter()
{
  if (qword_1EBAB6998 != -1)
  {
    OUTLINED_FUNCTION_7_21(&qword_1EBAB6998);
  }

  OUTLINED_FUNCTION_1_33();
  sub_1B8F4F470(v0, v1, MEMORY[0x1E69AA9C8]);
  v2 = OUTLINED_FUNCTION_24_13();

  return MEMORY[0x1EEE15650](v2);
}

Swift::Void __swiftcall Google_Protobuf_FieldOptions.clearApple_Parsec_Feedback_V2_objcType()()
{
  if (qword_1EBAB6998 != -1)
  {
    OUTLINED_FUNCTION_7_21(&qword_1EBAB6998);
  }

  OUTLINED_FUNCTION_1_33();
  sub_1B8F4F470(v0, v1, MEMORY[0x1E69AA9C8]);
  v2 = OUTLINED_FUNCTION_24_13();

  MEMORY[0x1EEE15660](v2);
}

uint64_t Google_Protobuf_FieldOptions.Apple_Parsec_Feedback_V2_objcAttr.getter()
{
  if (qword_1EBAB69A0 != -1)
  {
    OUTLINED_FUNCTION_6_12(&qword_1EBAB69A0);
  }

  OUTLINED_FUNCTION_1_33();
  v2 = sub_1B8F4F470(v0, v1, MEMORY[0x1E69AA9C8]);
  v3 = OUTLINED_FUNCTION_26_11(v2);
  return OUTLINED_FUNCTION_22_12(v3, v4, v5, v6, v7, v8, v9, v10, v12, v13);
}

uint64_t Google_Protobuf_FieldOptions.Apple_Parsec_Feedback_V2_objcAttr.setter()
{
  OUTLINED_FUNCTION_16();
  if (qword_1EBAB69A0 != -1)
  {
    OUTLINED_FUNCTION_6_12(&qword_1EBAB69A0);
  }

  OUTLINED_FUNCTION_1_33();
  v3 = sub_1B8F4F470(v1, v2, MEMORY[0x1E69AA9C8]);
  OUTLINED_FUNCTION_25_10(v3, v4, v5, v6, v7, v8, v9, v10, v0);
}

uint64_t Google_Protobuf_FieldOptions.Apple_Parsec_Feedback_V2_objcAttr.modify()
{
  v1 = OUTLINED_FUNCTION_29_13();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_21_9(v2);
  *v0 = Google_Protobuf_FieldOptions.Apple_Parsec_Feedback_V2_objcAttr.getter();
  v0[1] = v3;
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8F4C0D8()
{
  OUTLINED_FUNCTION_31_11();
  v3 = qword_1EBAB69A0;
  if (v4)
  {

    if (v3 != -1)
    {
      OUTLINED_FUNCTION_6_12(&qword_1EBAB69A0);
    }

    v0[2] = v2;
    v0[3] = v1;
    OUTLINED_FUNCTION_1_33();
    v7 = sub_1B8F4F470(v5, v6, MEMORY[0x1E69AA9C8]);
    OUTLINED_FUNCTION_23_9(v7);
  }

  else
  {
    if (qword_1EBAB69A0 != -1)
    {
      OUTLINED_FUNCTION_6_12(&qword_1EBAB69A0);
    }

    v0[2] = v2;
    v0[3] = v1;
    OUTLINED_FUNCTION_1_33();
    v10 = sub_1B8F4F470(v8, v9, MEMORY[0x1E69AA9C8]);
    OUTLINED_FUNCTION_23_9(v10);
  }

  free(v0);
}

uint64_t Google_Protobuf_FieldOptions.hasApple_Parsec_Feedback_V2_objcAttr.getter()
{
  if (qword_1EBAB69A0 != -1)
  {
    OUTLINED_FUNCTION_6_12(&qword_1EBAB69A0);
  }

  OUTLINED_FUNCTION_1_33();
  sub_1B8F4F470(v0, v1, MEMORY[0x1E69AA9C8]);
  v2 = OUTLINED_FUNCTION_24_13();

  return MEMORY[0x1EEE15650](v2);
}

Swift::Void __swiftcall Google_Protobuf_FieldOptions.clearApple_Parsec_Feedback_V2_objcAttr()()
{
  if (qword_1EBAB69A0 != -1)
  {
    OUTLINED_FUNCTION_6_12(&qword_1EBAB69A0);
  }

  OUTLINED_FUNCTION_1_33();
  sub_1B8F4F470(v0, v1, MEMORY[0x1E69AA9C8]);
  v2 = OUTLINED_FUNCTION_24_13();

  MEMORY[0x1EEE15660](v2);
}

uint64_t Google_Protobuf_FileOptions.Apple_Parsec_Feedback_V2_objcFacadePrefix.getter()
{
  if (qword_1EBAB69C0 != -1)
  {
    OUTLINED_FUNCTION_5_16(&qword_1EBAB69C0);
  }

  OUTLINED_FUNCTION_0_39();
  v2 = sub_1B8F4F470(v0, v1, MEMORY[0x1E69AA988]);
  v3 = OUTLINED_FUNCTION_26_11(v2);
  return OUTLINED_FUNCTION_22_12(v3, v4, v5, v6, v7, v8, v9, v10, v12, v13);
}

uint64_t Google_Protobuf_FileOptions.Apple_Parsec_Feedback_V2_objcFacadePrefix.setter()
{
  OUTLINED_FUNCTION_16();
  if (qword_1EBAB69C0 != -1)
  {
    OUTLINED_FUNCTION_5_16(&qword_1EBAB69C0);
  }

  OUTLINED_FUNCTION_0_39();
  v3 = sub_1B8F4F470(v1, v2, MEMORY[0x1E69AA988]);
  OUTLINED_FUNCTION_25_10(v3, v4, v5, v6, v7, v8, v9, v10, v0);
}

uint64_t Google_Protobuf_FileOptions.Apple_Parsec_Feedback_V2_objcFacadePrefix.modify()
{
  v1 = OUTLINED_FUNCTION_29_13();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_21_9(v2);
  *v0 = Google_Protobuf_FileOptions.Apple_Parsec_Feedback_V2_objcFacadePrefix.getter();
  v0[1] = v3;
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8F4C480()
{
  OUTLINED_FUNCTION_31_11();
  v3 = qword_1EBAB69C0;
  if (v4)
  {

    if (v3 != -1)
    {
      OUTLINED_FUNCTION_5_16(&qword_1EBAB69C0);
    }

    v0[2] = v2;
    v0[3] = v1;
    OUTLINED_FUNCTION_0_39();
    v7 = sub_1B8F4F470(v5, v6, MEMORY[0x1E69AA988]);
    OUTLINED_FUNCTION_23_9(v7);
  }

  else
  {
    if (qword_1EBAB69C0 != -1)
    {
      OUTLINED_FUNCTION_5_16(&qword_1EBAB69C0);
    }

    v0[2] = v2;
    v0[3] = v1;
    OUTLINED_FUNCTION_0_39();
    v10 = sub_1B8F4F470(v8, v9, MEMORY[0x1E69AA988]);
    OUTLINED_FUNCTION_23_9(v10);
  }

  free(v0);
}

uint64_t Google_Protobuf_FileOptions.hasApple_Parsec_Feedback_V2_objcFacadePrefix.getter()
{
  if (qword_1EBAB69C0 != -1)
  {
    OUTLINED_FUNCTION_5_16(&qword_1EBAB69C0);
  }

  OUTLINED_FUNCTION_0_39();
  sub_1B8F4F470(v0, v1, MEMORY[0x1E69AA988]);
  v2 = OUTLINED_FUNCTION_24_13();

  return MEMORY[0x1EEE15650](v2);
}

Swift::Void __swiftcall Google_Protobuf_FileOptions.clearApple_Parsec_Feedback_V2_objcFacadePrefix()()
{
  if (qword_1EBAB69C0 != -1)
  {
    OUTLINED_FUNCTION_5_16(&qword_1EBAB69C0);
  }

  OUTLINED_FUNCTION_0_39();
  sub_1B8F4F470(v0, v1, MEMORY[0x1E69AA988]);
  v2 = OUTLINED_FUNCTION_24_13();

  MEMORY[0x1EEE15660](v2);
}

uint64_t Google_Protobuf_FileOptions.Apple_Parsec_Feedback_V2_objcFramework.getter()
{
  if (qword_1EBAB69C8 != -1)
  {
    OUTLINED_FUNCTION_16_14(&qword_1EBAB69C8);
  }

  OUTLINED_FUNCTION_0_39();
  v2 = sub_1B8F4F470(v0, v1, MEMORY[0x1E69AA988]);
  v3 = OUTLINED_FUNCTION_26_11(v2);
  return OUTLINED_FUNCTION_22_12(v3, v4, v5, v6, v7, v8, v9, v10, v12, v13);
}

uint64_t Google_Protobuf_FileOptions.Apple_Parsec_Feedback_V2_objcFramework.setter()
{
  OUTLINED_FUNCTION_16();
  if (qword_1EBAB69C8 != -1)
  {
    OUTLINED_FUNCTION_16_14(&qword_1EBAB69C8);
  }

  OUTLINED_FUNCTION_0_39();
  v3 = sub_1B8F4F470(v1, v2, MEMORY[0x1E69AA988]);
  OUTLINED_FUNCTION_25_10(v3, v4, v5, v6, v7, v8, v9, v10, v0);
}

uint64_t Google_Protobuf_FileOptions.Apple_Parsec_Feedback_V2_objcFramework.modify()
{
  v1 = OUTLINED_FUNCTION_29_13();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_21_9(v2);
  *v0 = Google_Protobuf_FileOptions.Apple_Parsec_Feedback_V2_objcFramework.getter();
  v0[1] = v3;
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8F4C828()
{
  OUTLINED_FUNCTION_31_11();
  v3 = qword_1EBAB69C8;
  if (v4)
  {

    if (v3 != -1)
    {
      OUTLINED_FUNCTION_16_14(&qword_1EBAB69C8);
    }

    v0[2] = v2;
    v0[3] = v1;
    OUTLINED_FUNCTION_0_39();
    v7 = sub_1B8F4F470(v5, v6, MEMORY[0x1E69AA988]);
    OUTLINED_FUNCTION_23_9(v7);
  }

  else
  {
    if (qword_1EBAB69C8 != -1)
    {
      OUTLINED_FUNCTION_16_14(&qword_1EBAB69C8);
    }

    v0[2] = v2;
    v0[3] = v1;
    OUTLINED_FUNCTION_0_39();
    v10 = sub_1B8F4F470(v8, v9, MEMORY[0x1E69AA988]);
    OUTLINED_FUNCTION_23_9(v10);
  }

  free(v0);
}

uint64_t Google_Protobuf_FileOptions.hasApple_Parsec_Feedback_V2_objcFramework.getter()
{
  if (qword_1EBAB69C8 != -1)
  {
    OUTLINED_FUNCTION_16_14(&qword_1EBAB69C8);
  }

  OUTLINED_FUNCTION_0_39();
  sub_1B8F4F470(v0, v1, MEMORY[0x1E69AA988]);
  v2 = OUTLINED_FUNCTION_24_13();

  return MEMORY[0x1EEE15650](v2);
}

Swift::Void __swiftcall Google_Protobuf_FileOptions.clearApple_Parsec_Feedback_V2_objcFramework()()
{
  if (qword_1EBAB69C8 != -1)
  {
    OUTLINED_FUNCTION_16_14(&qword_1EBAB69C8);
  }

  OUTLINED_FUNCTION_0_39();
  sub_1B8F4F470(v0, v1, MEMORY[0x1E69AA988]);
  v2 = OUTLINED_FUNCTION_24_13();

  MEMORY[0x1EEE15660](v2);
}

uint64_t Google_Protobuf_FileOptions.Apple_Parsec_Feedback_V2_objcPackage.getter()
{
  if (qword_1EBAB69D0 != -1)
  {
    OUTLINED_FUNCTION_15_14(&qword_1EBAB69D0);
  }

  OUTLINED_FUNCTION_0_39();
  v2 = sub_1B8F4F470(v0, v1, MEMORY[0x1E69AA988]);
  v3 = OUTLINED_FUNCTION_26_11(v2);
  return OUTLINED_FUNCTION_22_12(v3, v4, v5, v6, v7, v8, v9, v10, v12, v13);
}

uint64_t Google_Protobuf_FileOptions.Apple_Parsec_Feedback_V2_objcPackage.setter()
{
  OUTLINED_FUNCTION_16();
  if (qword_1EBAB69D0 != -1)
  {
    OUTLINED_FUNCTION_15_14(&qword_1EBAB69D0);
  }

  OUTLINED_FUNCTION_0_39();
  v3 = sub_1B8F4F470(v1, v2, MEMORY[0x1E69AA988]);
  OUTLINED_FUNCTION_25_10(v3, v4, v5, v6, v7, v8, v9, v10, v0);
}

uint64_t Google_Protobuf_FileOptions.Apple_Parsec_Feedback_V2_objcPackage.modify()
{
  v1 = OUTLINED_FUNCTION_29_13();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_21_9(v2);
  *v0 = Google_Protobuf_FileOptions.Apple_Parsec_Feedback_V2_objcPackage.getter();
  v0[1] = v3;
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8F4CBD0()
{
  OUTLINED_FUNCTION_31_11();
  v3 = qword_1EBAB69D0;
  if (v4)
  {

    if (v3 != -1)
    {
      OUTLINED_FUNCTION_15_14(&qword_1EBAB69D0);
    }

    v0[2] = v2;
    v0[3] = v1;
    OUTLINED_FUNCTION_0_39();
    v7 = sub_1B8F4F470(v5, v6, MEMORY[0x1E69AA988]);
    OUTLINED_FUNCTION_23_9(v7);
  }

  else
  {
    if (qword_1EBAB69D0 != -1)
    {
      OUTLINED_FUNCTION_15_14(&qword_1EBAB69D0);
    }

    v0[2] = v2;
    v0[3] = v1;
    OUTLINED_FUNCTION_0_39();
    v10 = sub_1B8F4F470(v8, v9, MEMORY[0x1E69AA988]);
    OUTLINED_FUNCTION_23_9(v10);
  }

  free(v0);
}

uint64_t Google_Protobuf_FileOptions.hasApple_Parsec_Feedback_V2_objcPackage.getter()
{
  if (qword_1EBAB69D0 != -1)
  {
    OUTLINED_FUNCTION_15_14(&qword_1EBAB69D0);
  }

  OUTLINED_FUNCTION_0_39();
  sub_1B8F4F470(v0, v1, MEMORY[0x1E69AA988]);
  v2 = OUTLINED_FUNCTION_24_13();

  return MEMORY[0x1EEE15650](v2);
}

Swift::Void __swiftcall Google_Protobuf_FileOptions.clearApple_Parsec_Feedback_V2_objcPackage()()
{
  if (qword_1EBAB69D0 != -1)
  {
    OUTLINED_FUNCTION_15_14(&qword_1EBAB69D0);
  }

  OUTLINED_FUNCTION_0_39();
  sub_1B8F4F470(v0, v1, MEMORY[0x1E69AA988]);
  v2 = OUTLINED_FUNCTION_24_13();

  MEMORY[0x1EEE15660](v2);
}

uint64_t Google_Protobuf_FileOptions.Apple_Parsec_Feedback_V2_objcEnumNaming.getter()
{
  if (qword_1EBAB69D8 != -1)
  {
    OUTLINED_FUNCTION_14_12(&qword_1EBAB69D8);
  }

  OUTLINED_FUNCTION_0_39();
  v2 = sub_1B8F4F470(v0, v1, MEMORY[0x1E69AA988]);
  v3 = OUTLINED_FUNCTION_26_11(v2);
  return OUTLINED_FUNCTION_22_12(v3, v4, v5, v6, v7, v8, v9, v10, v12, v13);
}

uint64_t Google_Protobuf_FileOptions.Apple_Parsec_Feedback_V2_objcEnumNaming.setter()
{
  OUTLINED_FUNCTION_16();
  if (qword_1EBAB69D8 != -1)
  {
    OUTLINED_FUNCTION_14_12(&qword_1EBAB69D8);
  }

  OUTLINED_FUNCTION_0_39();
  v3 = sub_1B8F4F470(v1, v2, MEMORY[0x1E69AA988]);
  OUTLINED_FUNCTION_25_10(v3, v4, v5, v6, v7, v8, v9, v10, v0);
}

uint64_t Google_Protobuf_FileOptions.Apple_Parsec_Feedback_V2_objcEnumNaming.modify()
{
  v1 = OUTLINED_FUNCTION_29_13();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_21_9(v2);
  *v0 = Google_Protobuf_FileOptions.Apple_Parsec_Feedback_V2_objcEnumNaming.getter();
  v0[1] = v3;
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8F4CF78()
{
  OUTLINED_FUNCTION_31_11();
  v3 = qword_1EBAB69D8;
  if (v4)
  {

    if (v3 != -1)
    {
      OUTLINED_FUNCTION_14_12(&qword_1EBAB69D8);
    }

    v0[2] = v2;
    v0[3] = v1;
    OUTLINED_FUNCTION_0_39();
    v7 = sub_1B8F4F470(v5, v6, MEMORY[0x1E69AA988]);
    OUTLINED_FUNCTION_23_9(v7);
  }

  else
  {
    if (qword_1EBAB69D8 != -1)
    {
      OUTLINED_FUNCTION_14_12(&qword_1EBAB69D8);
    }

    v0[2] = v2;
    v0[3] = v1;
    OUTLINED_FUNCTION_0_39();
    v10 = sub_1B8F4F470(v8, v9, MEMORY[0x1E69AA988]);
    OUTLINED_FUNCTION_23_9(v10);
  }

  free(v0);
}

uint64_t Google_Protobuf_FileOptions.hasApple_Parsec_Feedback_V2_objcEnumNaming.getter()
{
  if (qword_1EBAB69D8 != -1)
  {
    OUTLINED_FUNCTION_14_12(&qword_1EBAB69D8);
  }

  OUTLINED_FUNCTION_0_39();
  sub_1B8F4F470(v0, v1, MEMORY[0x1E69AA988]);
  v2 = OUTLINED_FUNCTION_24_13();

  return MEMORY[0x1EEE15650](v2);
}

Swift::Void __swiftcall Google_Protobuf_FileOptions.clearApple_Parsec_Feedback_V2_objcEnumNaming()()
{
  if (qword_1EBAB69D8 != -1)
  {
    OUTLINED_FUNCTION_14_12(&qword_1EBAB69D8);
  }

  OUTLINED_FUNCTION_0_39();
  sub_1B8F4F470(v0, v1, MEMORY[0x1E69AA988]);
  v2 = OUTLINED_FUNCTION_24_13();

  MEMORY[0x1EEE15660](v2);
}

uint64_t Google_Protobuf_FileOptions.Apple_Parsec_Feedback_V2_objcUseArc.getter()
{
  if (qword_1EBAB69E0 != -1)
  {
    OUTLINED_FUNCTION_20_3(&qword_1EBAB69E0);
  }

  OUTLINED_FUNCTION_0_39();
  v2 = sub_1B8F4F470(v0, v1, MEMORY[0x1E69AA988]);
  v3 = OUTLINED_FUNCTION_36_4(v2);
  return OUTLINED_FUNCTION_39_2(v3, v4, v5, v6, v7, v8, v9, v10, v12, v13, SWORD2(v13), SBYTE6(v13), SHIBYTE(v13));
}

uint64_t Google_Protobuf_FileOptions.Apple_Parsec_Feedback_V2_objcUseArc.setter()
{
  if (qword_1EBAB69E0 != -1)
  {
    OUTLINED_FUNCTION_20_3(&qword_1EBAB69E0);
  }

  OUTLINED_FUNCTION_38_3();
  OUTLINED_FUNCTION_0_39();
  v2 = sub_1B8F4F470(v0, v1, MEMORY[0x1E69AA988]);
  return OUTLINED_FUNCTION_35_5(v2, v3, v4, v5, v6, v7, v8, v9, v11, v12, SWORD2(v12), SBYTE6(v12), SHIBYTE(v12));
}

uint64_t Google_Protobuf_FileOptions.Apple_Parsec_Feedback_V2_objcUseArc.modify(void *a1)
{
  OUTLINED_FUNCTION_33(a1);
  if (qword_1EBAB69E0 != -1)
  {
    OUTLINED_FUNCTION_20_3(&qword_1EBAB69E0);
  }

  *(v1 + 8) = qword_1EBABF748;
  OUTLINED_FUNCTION_0_39();
  v4 = sub_1B8F4F470(v2, v3, MEMORY[0x1E69AA988]);
  OUTLINED_FUNCTION_32_8(v4);
  OUTLINED_FUNCTION_34_6();
  return OUTLINED_FUNCTION_37_4();
}

uint64_t Google_Protobuf_FileOptions.hasApple_Parsec_Feedback_V2_objcUseArc.getter()
{
  if (qword_1EBAB69E0 != -1)
  {
    OUTLINED_FUNCTION_20_3(&qword_1EBAB69E0);
  }

  OUTLINED_FUNCTION_0_39();
  sub_1B8F4F470(v0, v1, MEMORY[0x1E69AA988]);
  v2 = OUTLINED_FUNCTION_24_13();

  return MEMORY[0x1EEE15650](v2);
}

Swift::Void __swiftcall Google_Protobuf_FileOptions.clearApple_Parsec_Feedback_V2_objcUseArc()()
{
  if (qword_1EBAB69E0 != -1)
  {
    OUTLINED_FUNCTION_20_3(&qword_1EBAB69E0);
  }

  OUTLINED_FUNCTION_0_39();
  sub_1B8F4F470(v0, v1, MEMORY[0x1E69AA988]);
  v2 = OUTLINED_FUNCTION_24_13();

  MEMORY[0x1EEE15660](v2);
}

uint64_t Google_Protobuf_FileOptions.Apple_Parsec_Feedback_V2_objcClassPrefix.getter()
{
  if (qword_1EBAB69E8 != -1)
  {
    OUTLINED_FUNCTION_13_12(&qword_1EBAB69E8);
  }

  OUTLINED_FUNCTION_0_39();
  v2 = sub_1B8F4F470(v0, v1, MEMORY[0x1E69AA988]);
  v3 = OUTLINED_FUNCTION_26_11(v2);
  return OUTLINED_FUNCTION_22_12(v3, v4, v5, v6, v7, v8, v9, v10, v12, v13);
}

uint64_t Google_Protobuf_FileOptions.Apple_Parsec_Feedback_V2_objcClassPrefix.setter()
{
  OUTLINED_FUNCTION_16();
  if (qword_1EBAB69E8 != -1)
  {
    OUTLINED_FUNCTION_13_12(&qword_1EBAB69E8);
  }

  OUTLINED_FUNCTION_0_39();
  v3 = sub_1B8F4F470(v1, v2, MEMORY[0x1E69AA988]);
  OUTLINED_FUNCTION_25_10(v3, v4, v5, v6, v7, v8, v9, v10, v0);
}

uint64_t Google_Protobuf_FileOptions.Apple_Parsec_Feedback_V2_objcClassPrefix.modify()
{
  v1 = OUTLINED_FUNCTION_29_13();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_21_9(v2);
  *v0 = Google_Protobuf_FileOptions.Apple_Parsec_Feedback_V2_objcClassPrefix.getter();
  v0[1] = v3;
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8F4D5B0()
{
  OUTLINED_FUNCTION_31_11();
  v3 = qword_1EBAB69E8;
  if (v4)
  {

    if (v3 != -1)
    {
      OUTLINED_FUNCTION_13_12(&qword_1EBAB69E8);
    }

    v0[2] = v2;
    v0[3] = v1;
    OUTLINED_FUNCTION_0_39();
    v7 = sub_1B8F4F470(v5, v6, MEMORY[0x1E69AA988]);
    OUTLINED_FUNCTION_23_9(v7);
  }

  else
  {
    if (qword_1EBAB69E8 != -1)
    {
      OUTLINED_FUNCTION_13_12(&qword_1EBAB69E8);
    }

    v0[2] = v2;
    v0[3] = v1;
    OUTLINED_FUNCTION_0_39();
    v10 = sub_1B8F4F470(v8, v9, MEMORY[0x1E69AA988]);
    OUTLINED_FUNCTION_23_9(v10);
  }

  free(v0);
}

uint64_t Google_Protobuf_FileOptions.hasApple_Parsec_Feedback_V2_objcClassPrefix.getter()
{
  if (qword_1EBAB69E8 != -1)
  {
    OUTLINED_FUNCTION_13_12(&qword_1EBAB69E8);
  }

  OUTLINED_FUNCTION_0_39();
  sub_1B8F4F470(v0, v1, MEMORY[0x1E69AA988]);
  v2 = OUTLINED_FUNCTION_24_13();

  return MEMORY[0x1EEE15650](v2);
}

Swift::Void __swiftcall Google_Protobuf_FileOptions.clearApple_Parsec_Feedback_V2_objcClassPrefix()()
{
  if (qword_1EBAB69E8 != -1)
  {
    OUTLINED_FUNCTION_13_12(&qword_1EBAB69E8);
  }

  OUTLINED_FUNCTION_0_39();
  sub_1B8F4F470(v0, v1, MEMORY[0x1E69AA988]);
  v2 = OUTLINED_FUNCTION_24_13();

  MEMORY[0x1EEE15660](v2);
}

uint64_t Google_Protobuf_MessageOptions.Apple_Parsec_Feedback_V2_customFacadeInitializer.getter()
{
  if (qword_1EBAB6980 != -1)
  {
    OUTLINED_FUNCTION_19_9(&qword_1EBAB6980);
  }

  OUTLINED_FUNCTION_2_20();
  v2 = sub_1B8F4F470(v0, v1, MEMORY[0x1E69AA9F0]);
  v3 = OUTLINED_FUNCTION_36_4(v2);
  return OUTLINED_FUNCTION_39_2(v3, v4, v5, v6, v7, v8, v9, v10, v12, v13, SWORD2(v13), SBYTE6(v13), SHIBYTE(v13));
}

uint64_t Google_Protobuf_MessageOptions.Apple_Parsec_Feedback_V2_customFacadeInitializer.setter()
{
  if (qword_1EBAB6980 != -1)
  {
    OUTLINED_FUNCTION_19_9(&qword_1EBAB6980);
  }

  OUTLINED_FUNCTION_38_3();
  OUTLINED_FUNCTION_2_20();
  v2 = sub_1B8F4F470(v0, v1, MEMORY[0x1E69AA9F0]);
  return OUTLINED_FUNCTION_35_5(v2, v3, v4, v5, v6, v7, v8, v9, v11, v12, SWORD2(v12), SBYTE6(v12), SHIBYTE(v12));
}

uint64_t Google_Protobuf_MessageOptions.Apple_Parsec_Feedback_V2_customFacadeInitializer.modify(void *a1)
{
  OUTLINED_FUNCTION_33(a1);
  if (qword_1EBAB6980 != -1)
  {
    OUTLINED_FUNCTION_19_9(&qword_1EBAB6980);
  }

  *(v1 + 8) = qword_1EBABF6E8;
  OUTLINED_FUNCTION_2_20();
  v4 = sub_1B8F4F470(v2, v3, MEMORY[0x1E69AA9F0]);
  OUTLINED_FUNCTION_32_8(v4);
  OUTLINED_FUNCTION_34_6();
  return OUTLINED_FUNCTION_37_4();
}

uint64_t Google_Protobuf_MessageOptions.hasApple_Parsec_Feedback_V2_customFacadeInitializer.getter()
{
  if (qword_1EBAB6980 != -1)
  {
    OUTLINED_FUNCTION_19_9(&qword_1EBAB6980);
  }

  OUTLINED_FUNCTION_2_20();
  sub_1B8F4F470(v0, v1, MEMORY[0x1E69AA9F0]);
  v2 = OUTLINED_FUNCTION_24_13();

  return MEMORY[0x1EEE15650](v2);
}

Swift::Void __swiftcall Google_Protobuf_MessageOptions.clearApple_Parsec_Feedback_V2_customFacadeInitializer()()
{
  if (qword_1EBAB6980 != -1)
  {
    OUTLINED_FUNCTION_19_9(&qword_1EBAB6980);
  }

  OUTLINED_FUNCTION_2_20();
  sub_1B8F4F470(v0, v1, MEMORY[0x1E69AA9F0]);
  v2 = OUTLINED_FUNCTION_24_13();

  MEMORY[0x1EEE15660](v2);
}

uint64_t Google_Protobuf_MessageOptions.Apple_Parsec_Feedback_V2_objcFacadeTranslate.getter()
{
  if (qword_1EBAB6988 != -1)
  {
    OUTLINED_FUNCTION_18_10(&qword_1EBAB6988);
  }

  OUTLINED_FUNCTION_2_20();
  v2 = sub_1B8F4F470(v0, v1, MEMORY[0x1E69AA9F0]);
  v3 = OUTLINED_FUNCTION_36_4(v2);
  return OUTLINED_FUNCTION_39_2(v3, v4, v5, v6, v7, v8, v9, v10, v12, v13, SWORD2(v13), SBYTE6(v13), SHIBYTE(v13));
}

uint64_t Google_Protobuf_MessageOptions.Apple_Parsec_Feedback_V2_objcFacadeTranslate.setter()
{
  if (qword_1EBAB6988 != -1)
  {
    OUTLINED_FUNCTION_18_10(&qword_1EBAB6988);
  }

  OUTLINED_FUNCTION_38_3();
  OUTLINED_FUNCTION_2_20();
  v2 = sub_1B8F4F470(v0, v1, MEMORY[0x1E69AA9F0]);
  return OUTLINED_FUNCTION_35_5(v2, v3, v4, v5, v6, v7, v8, v9, v11, v12, SWORD2(v12), SBYTE6(v12), SHIBYTE(v12));
}

uint64_t Google_Protobuf_MessageOptions.Apple_Parsec_Feedback_V2_objcFacadeTranslate.modify(void *a1)
{
  OUTLINED_FUNCTION_33(a1);
  if (qword_1EBAB6988 != -1)
  {
    OUTLINED_FUNCTION_18_10(&qword_1EBAB6988);
  }

  *(v1 + 8) = qword_1EBABF6F0;
  OUTLINED_FUNCTION_2_20();
  v4 = sub_1B8F4F470(v2, v3, MEMORY[0x1E69AA9F0]);
  OUTLINED_FUNCTION_32_8(v4);
  OUTLINED_FUNCTION_34_6();
  return OUTLINED_FUNCTION_37_4();
}

uint64_t Google_Protobuf_MessageOptions.hasApple_Parsec_Feedback_V2_objcFacadeTranslate.getter()
{
  if (qword_1EBAB6988 != -1)
  {
    OUTLINED_FUNCTION_18_10(&qword_1EBAB6988);
  }

  OUTLINED_FUNCTION_2_20();
  sub_1B8F4F470(v0, v1, MEMORY[0x1E69AA9F0]);
  v2 = OUTLINED_FUNCTION_24_13();

  return MEMORY[0x1EEE15650](v2);
}

Swift::Void __swiftcall Google_Protobuf_MessageOptions.clearApple_Parsec_Feedback_V2_objcFacadeTranslate()()
{
  if (qword_1EBAB6988 != -1)
  {
    OUTLINED_FUNCTION_18_10(&qword_1EBAB6988);
  }

  OUTLINED_FUNCTION_2_20();
  sub_1B8F4F470(v0, v1, MEMORY[0x1E69AA9F0]);
  v2 = OUTLINED_FUNCTION_24_13();

  MEMORY[0x1EEE15660](v2);
}

uint64_t Google_Protobuf_MessageOptions.Apple_Parsec_Feedback_V2_objcMsgSuperclass.getter()
{
  if (qword_1EBAB69A8 != -1)
  {
    OUTLINED_FUNCTION_10_14(&qword_1EBAB69A8);
  }

  OUTLINED_FUNCTION_2_20();
  v2 = sub_1B8F4F470(v0, v1, MEMORY[0x1E69AA9F0]);
  v3 = OUTLINED_FUNCTION_26_11(v2);
  return OUTLINED_FUNCTION_22_12(v3, v4, v5, v6, v7, v8, v9, v10, v12, v13);
}

uint64_t Google_Protobuf_MessageOptions.Apple_Parsec_Feedback_V2_objcMsgSuperclass.setter()
{
  OUTLINED_FUNCTION_16();
  if (qword_1EBAB69A8 != -1)
  {
    OUTLINED_FUNCTION_10_14(&qword_1EBAB69A8);
  }

  OUTLINED_FUNCTION_2_20();
  v3 = sub_1B8F4F470(v1, v2, MEMORY[0x1E69AA9F0]);
  OUTLINED_FUNCTION_25_10(v3, v4, v5, v6, v7, v8, v9, v10, v0);
}

uint64_t Google_Protobuf_MessageOptions.Apple_Parsec_Feedback_V2_objcMsgSuperclass.modify()
{
  v1 = OUTLINED_FUNCTION_29_13();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_21_9(v2);
  *v0 = Google_Protobuf_MessageOptions.Apple_Parsec_Feedback_V2_objcMsgSuperclass.getter();
  v0[1] = v3;
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8F4DEA4()
{
  OUTLINED_FUNCTION_31_11();
  v3 = qword_1EBAB69A8;
  if (v4)
  {

    if (v3 != -1)
    {
      OUTLINED_FUNCTION_10_14(&qword_1EBAB69A8);
    }

    v0[2] = v2;
    v0[3] = v1;
    OUTLINED_FUNCTION_2_20();
    v7 = sub_1B8F4F470(v5, v6, MEMORY[0x1E69AA9F0]);
    OUTLINED_FUNCTION_23_9(v7);
  }

  else
  {
    if (qword_1EBAB69A8 != -1)
    {
      OUTLINED_FUNCTION_10_14(&qword_1EBAB69A8);
    }

    v0[2] = v2;
    v0[3] = v1;
    OUTLINED_FUNCTION_2_20();
    v10 = sub_1B8F4F470(v8, v9, MEMORY[0x1E69AA9F0]);
    OUTLINED_FUNCTION_23_9(v10);
  }

  free(v0);
}

uint64_t Google_Protobuf_MessageOptions.hasApple_Parsec_Feedback_V2_objcMsgSuperclass.getter()
{
  if (qword_1EBAB69A8 != -1)
  {
    OUTLINED_FUNCTION_10_14(&qword_1EBAB69A8);
  }

  OUTLINED_FUNCTION_2_20();
  sub_1B8F4F470(v0, v1, MEMORY[0x1E69AA9F0]);
  v2 = OUTLINED_FUNCTION_24_13();

  return MEMORY[0x1EEE15650](v2);
}

Swift::Void __swiftcall Google_Protobuf_MessageOptions.clearApple_Parsec_Feedback_V2_objcMsgSuperclass()()
{
  if (qword_1EBAB69A8 != -1)
  {
    OUTLINED_FUNCTION_10_14(&qword_1EBAB69A8);
  }

  OUTLINED_FUNCTION_2_20();
  sub_1B8F4F470(v0, v1, MEMORY[0x1E69AA9F0]);
  v2 = OUTLINED_FUNCTION_24_13();

  MEMORY[0x1EEE15660](v2);
}

uint64_t Google_Protobuf_MessageOptions.Apple_Parsec_Feedback_V2_objcMsgType.getter()
{
  if (qword_1EBAB69B0 != -1)
  {
    OUTLINED_FUNCTION_9_15(&qword_1EBAB69B0);
  }

  OUTLINED_FUNCTION_2_20();
  v2 = sub_1B8F4F470(v0, v1, MEMORY[0x1E69AA9F0]);
  v3 = OUTLINED_FUNCTION_26_11(v2);
  return OUTLINED_FUNCTION_22_12(v3, v4, v5, v6, v7, v8, v9, v10, v12, v13);
}

uint64_t Google_Protobuf_MessageOptions.Apple_Parsec_Feedback_V2_objcMsgType.setter()
{
  OUTLINED_FUNCTION_16();
  if (qword_1EBAB69B0 != -1)
  {
    OUTLINED_FUNCTION_9_15(&qword_1EBAB69B0);
  }

  OUTLINED_FUNCTION_2_20();
  v3 = sub_1B8F4F470(v1, v2, MEMORY[0x1E69AA9F0]);
  OUTLINED_FUNCTION_25_10(v3, v4, v5, v6, v7, v8, v9, v10, v0);
}

uint64_t Google_Protobuf_MessageOptions.Apple_Parsec_Feedback_V2_objcMsgType.modify()
{
  v1 = OUTLINED_FUNCTION_29_13();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_21_9(v2);
  *v0 = Google_Protobuf_MessageOptions.Apple_Parsec_Feedback_V2_objcMsgType.getter();
  v0[1] = v3;
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8F4E24C()
{
  OUTLINED_FUNCTION_31_11();
  v3 = qword_1EBAB69B0;
  if (v4)
  {

    if (v3 != -1)
    {
      OUTLINED_FUNCTION_9_15(&qword_1EBAB69B0);
    }

    v0[2] = v2;
    v0[3] = v1;
    OUTLINED_FUNCTION_2_20();
    v7 = sub_1B8F4F470(v5, v6, MEMORY[0x1E69AA9F0]);
    OUTLINED_FUNCTION_23_9(v7);
  }

  else
  {
    if (qword_1EBAB69B0 != -1)
    {
      OUTLINED_FUNCTION_9_15(&qword_1EBAB69B0);
    }

    v0[2] = v2;
    v0[3] = v1;
    OUTLINED_FUNCTION_2_20();
    v10 = sub_1B8F4F470(v8, v9, MEMORY[0x1E69AA9F0]);
    OUTLINED_FUNCTION_23_9(v10);
  }

  free(v0);
}

uint64_t Google_Protobuf_MessageOptions.hasApple_Parsec_Feedback_V2_objcMsgType.getter()
{
  if (qword_1EBAB69B0 != -1)
  {
    OUTLINED_FUNCTION_9_15(&qword_1EBAB69B0);
  }

  OUTLINED_FUNCTION_2_20();
  sub_1B8F4F470(v0, v1, MEMORY[0x1E69AA9F0]);
  v2 = OUTLINED_FUNCTION_24_13();

  return MEMORY[0x1EEE15650](v2);
}

Swift::Void __swiftcall Google_Protobuf_MessageOptions.clearApple_Parsec_Feedback_V2_objcMsgType()()
{
  if (qword_1EBAB69B0 != -1)
  {
    OUTLINED_FUNCTION_9_15(&qword_1EBAB69B0);
  }

  OUTLINED_FUNCTION_2_20();
  sub_1B8F4F470(v0, v1, MEMORY[0x1E69AA9F0]);
  v2 = OUTLINED_FUNCTION_24_13();

  MEMORY[0x1EEE15660](v2);
}

uint64_t sub_1B8F4E454()
{
  v0 = sub_1B964C320();
  __swift_allocate_value_buffer(v0, qword_1EBABF6C0);
  __swift_project_value_buffer(v0, qword_1EBABF6C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABF780, &unk_1B968F160);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1B96594C0;
  if (qword_1EBAB6970 != -1)
  {
    swift_once();
  }

  v2 = qword_1EBABF6D8;
  *(v1 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABF788, &qword_1B966F850);
  *(v1 + 64) = sub_1B8F4F528(&qword_1EBABF790, &qword_1EBABF788, &qword_1B966F850);
  *(v1 + 32) = v2;
  v3 = qword_1EBAB6978;

  if (v3 != -1)
  {
    swift_once();
  }

  v4 = qword_1EBABF6E0;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABF798, &qword_1B966F858);
  *(v1 + 96) = v5;
  v6 = sub_1B8F4F528(&qword_1EBABF7A0, &qword_1EBABF798, &qword_1B966F858);
  *(v1 + 104) = v6;
  *(v1 + 72) = v4;
  v7 = qword_1EBAB6980;

  if (v7 != -1)
  {
    swift_once();
  }

  v8 = qword_1EBABF6E8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABF7A8, &qword_1B966F860);
  *(v1 + 136) = v9;
  v10 = sub_1B8F4F528(&qword_1EBABF7B0, &qword_1EBABF7A8, &qword_1B966F860);
  *(v1 + 144) = v10;
  *(v1 + 112) = v8;
  v11 = qword_1EBAB6988;

  if (v11 != -1)
  {
    swift_once();
  }

  v12 = qword_1EBABF6F0;
  *(v1 + 176) = v9;
  *(v1 + 184) = v10;
  *(v1 + 152) = v12;
  v13 = qword_1EBAB6990;

  if (v13 != -1)
  {
    swift_once();
  }

  v14 = qword_1EBABF6F8;
  *(v1 + 216) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABF7B8, &qword_1B966F868);
  *(v1 + 224) = sub_1B8F4F528(&qword_1EBABF7C0, &qword_1EBABF7B8, &qword_1B966F868);
  *(v1 + 192) = v14;
  v15 = qword_1EBAB6998;

  if (v15 != -1)
  {
    swift_once();
  }

  v16 = qword_1EBABF700;
  *(v1 + 256) = v5;
  *(v1 + 264) = v6;
  *(v1 + 232) = v16;
  v17 = qword_1EBAB69A0;

  if (v17 != -1)
  {
    swift_once();
  }

  v18 = qword_1EBABF708;
  *(v1 + 296) = v5;
  *(v1 + 304) = v6;
  *(v1 + 272) = v18;
  v19 = qword_1EBAB69A8;

  if (v19 != -1)
  {
    swift_once();
  }

  v20 = qword_1EBABF710;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABF7C8, &qword_1B966F870);
  *(v1 + 336) = v21;
  v22 = sub_1B8F4F528(&qword_1EBABF7D0, &qword_1EBABF7C8, &qword_1B966F870);
  *(v1 + 344) = v22;
  *(v1 + 312) = v20;
  v23 = qword_1EBAB69B0;

  if (v23 != -1)
  {
    swift_once();
  }

  v24 = qword_1EBABF718;
  *(v1 + 376) = v21;
  *(v1 + 384) = v22;
  *(v1 + 352) = v24;
  v25 = qword_1EBAB69B8;

  if (v25 != -1)
  {
    swift_once();
  }

  v26 = qword_1EBABF720;
  *(v1 + 416) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABF7D8, &qword_1B966F878);
  *(v1 + 424) = sub_1B8F4F528(&qword_1EBABF7E0, &qword_1EBABF7D8, &qword_1B966F878);
  *(v1 + 392) = v26;
  v27 = qword_1EBAB69C0;

  if (v27 != -1)
  {
    swift_once();
  }

  v28 = qword_1EBABF728;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABF7E8, &qword_1B966F880);
  *(v1 + 456) = v29;
  v30 = sub_1B8F4F528(&qword_1EBABF7F0, &qword_1EBABF7E8, &qword_1B966F880);
  *(v1 + 464) = v30;
  *(v1 + 432) = v28;
  v31 = qword_1EBAB69C8;

  if (v31 != -1)
  {
    swift_once();
  }

  v32 = qword_1EBABF730;
  *(v1 + 496) = v29;
  *(v1 + 504) = v30;
  *(v1 + 472) = v32;
  v33 = qword_1EBAB69D0;

  if (v33 != -1)
  {
    swift_once();
  }

  v34 = qword_1EBABF738;
  *(v1 + 536) = v29;
  *(v1 + 544) = v30;
  *(v1 + 512) = v34;
  v35 = qword_1EBAB69D8;

  if (v35 != -1)
  {
    swift_once();
  }

  v36 = qword_1EBABF740;
  *(v1 + 576) = v29;
  *(v1 + 584) = v30;
  *(v1 + 552) = v36;
  v37 = qword_1EBAB69E0;

  if (v37 != -1)
  {
    swift_once();
  }

  v38 = qword_1EBABF748;
  *(v1 + 616) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABF7F8, &qword_1B966F888);
  *(v1 + 624) = sub_1B8F4F528(&qword_1EBABF800, &qword_1EBABF7F8, &qword_1B966F888);
  *(v1 + 592) = v38;
  v39 = qword_1EBAB69E8;

  if (v39 != -1)
  {
    swift_once();
  }

  v40 = qword_1EBABF750;
  *(v1 + 656) = v29;
  *(v1 + 664) = v30;
  *(v1 + 632) = v40;

  return sub_1B964C310();
}

uint64_t Apple_Parsec_Feedback_V2_FeedbackOptions_Extensions.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EBAB6968 != -1)
  {
    swift_once();
  }

  v2 = sub_1B964C320();
  v3 = __swift_project_value_buffer(v2, qword_1EBABF6C0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1B8F4EBC4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABF788, &qword_1B966F850);
  swift_allocObject();
  result = sub_1B964C2C0();
  qword_1EBABF6D8 = result;
  return result;
}

uint64_t sub_1B8F4EC54()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABF798, &qword_1B966F858);
  swift_allocObject();
  result = sub_1B964C2C0();
  qword_1EBABF6E0 = result;
  return result;
}

uint64_t sub_1B8F4ECE4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABF7A8, &qword_1B966F860);
  swift_allocObject();
  result = sub_1B964C2C0();
  qword_1EBABF6E8 = result;
  return result;
}

uint64_t sub_1B8F4ED74()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABF7A8, &qword_1B966F860);
  swift_allocObject();
  result = sub_1B964C2C0();
  qword_1EBABF6F0 = result;
  return result;
}

uint64_t sub_1B8F4EE00()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABF7B8, &qword_1B966F868);
  swift_allocObject();
  result = sub_1B964C2C0();
  qword_1EBABF6F8 = result;
  return result;
}

uint64_t sub_1B8F4EE90()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABF798, &qword_1B966F858);
  swift_allocObject();
  result = sub_1B964C2C0();
  qword_1EBABF700 = result;
  return result;
}

uint64_t sub_1B8F4EF1C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABF798, &qword_1B966F858);
  swift_allocObject();
  result = sub_1B964C2C0();
  qword_1EBABF708 = result;
  return result;
}

uint64_t sub_1B8F4EFA8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABF7C8, &qword_1B966F870);
  swift_allocObject();
  result = sub_1B964C2C0();
  qword_1EBABF710 = result;
  return result;
}

uint64_t sub_1B8F4F034()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABF7C8, &qword_1B966F870);
  swift_allocObject();
  result = sub_1B964C2C0();
  qword_1EBABF718 = result;
  return result;
}

uint64_t sub_1B8F4F0C0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABF7D8, &qword_1B966F878);
  swift_allocObject();
  result = sub_1B964C2C0();
  qword_1EBABF720 = result;
  return result;
}

uint64_t sub_1B8F4F14C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABF7E8, &qword_1B966F880);
  swift_allocObject();
  result = sub_1B964C2C0();
  qword_1EBABF728 = result;
  return result;
}

uint64_t sub_1B8F4F1D8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABF7E8, &qword_1B966F880);
  swift_allocObject();
  result = sub_1B964C2C0();
  qword_1EBABF730 = result;
  return result;
}

uint64_t sub_1B8F4F264()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABF7E8, &qword_1B966F880);
  swift_allocObject();
  result = sub_1B964C2C0();
  qword_1EBABF738 = result;
  return result;
}

uint64_t sub_1B8F4F2F0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABF7E8, &qword_1B966F880);
  swift_allocObject();
  result = sub_1B964C2C0();
  qword_1EBABF740 = result;
  return result;
}

uint64_t sub_1B8F4F37C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABF7F8, &qword_1B966F888);
  swift_allocObject();
  result = sub_1B964C2C0();
  qword_1EBABF748 = result;
  return result;
}

uint64_t sub_1B8F4F408()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABF7E8, &qword_1B966F880);
  swift_allocObject();
  result = sub_1B964C2C0();
  qword_1EBABF750 = result;
  return result;
}

uint64_t sub_1B8F4F470(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

uint64_t sub_1B8F4F4DC(void *a1, uint64_t *a2, uint64_t a3)
{
  if (*a1 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1B8F4F528(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    v5 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable(MEMORY[0x1E69AAC18], v5);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_5_16(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_6_12(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_7_21(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_8_21(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_9_15(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_10_14(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_11_18(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_12_16(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_13_12(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_14_12(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_15_14(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_16_14(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_17_11(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_18_10(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_19_9(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_20_3(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_21_9(uint64_t result)
{
  *v1 = result;
  *(result + 32) = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_22_12(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    return a9;
  }

  else
  {
    return 0;
  }
}

uint64_t OUTLINED_FUNCTION_23_9(uint64_t a1)
{

  return sub_1B964C2F0();
}

uint64_t OUTLINED_FUNCTION_25_10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return sub_1B964C2F0();
}

uint64_t OUTLINED_FUNCTION_26_11(uint64_t a1)
{

  return sub_1B964C2D0();
}

uint64_t OUTLINED_FUNCTION_32_8(uint64_t a1)
{
  *(v1 + 16) = a1;

  return sub_1B964C2D0();
}

uint64_t OUTLINED_FUNCTION_35_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13)
{

  return sub_1B964C2F0();
}

uint64_t Apple_Parsec_Feedback_V2_TCPInfo.avgRtt.setter()
{
  v3 = OUTLINED_FUNCTION_65_3();
  v4 = type metadata accessor for Apple_Parsec_Feedback_V2_TCPInfo(v3);
  v5 = OUTLINED_FUNCTION_182_0(v4);
  v7 = *(v1 + v2);
  if ((v5 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_TCPInfo._StorageClass();
    OUTLINED_FUNCTION_475_0();
    swift_allocObject();
    OUTLINED_FUNCTION_40_0();
    sub_1B8FA9A40();
    OUTLINED_FUNCTION_157_2(v8);
  }

  result = OUTLINED_FUNCTION_9_3(v7 + 16, v6);
  *(v7 + 16) = v0;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_TCPInfo.rxDuplicateBytes.setter()
{
  v3 = OUTLINED_FUNCTION_244_1();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_TCPInfo._StorageClass();
    OUTLINED_FUNCTION_475_0();
    swift_allocObject();
    OUTLINED_FUNCTION_40_0();
    sub_1B8FA9A40();
    OUTLINED_FUNCTION_157_2(v6);
  }

  result = OUTLINED_FUNCTION_9_3(v5 + 64, v4);
  *(v5 + 64) = v0;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_TCPInfo.rxOutOfOrderBytes.setter()
{
  v3 = OUTLINED_FUNCTION_244_1();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_TCPInfo._StorageClass();
    OUTLINED_FUNCTION_475_0();
    swift_allocObject();
    OUTLINED_FUNCTION_40_0();
    sub_1B8FA9A40();
    OUTLINED_FUNCTION_157_2(v6);
  }

  result = OUTLINED_FUNCTION_9_3(v5 + 72, v4);
  *(v5 + 72) = v0;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_TCPInfo.rxPackets.setter()
{
  v3 = OUTLINED_FUNCTION_244_1();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_TCPInfo._StorageClass();
    OUTLINED_FUNCTION_475_0();
    swift_allocObject();
    OUTLINED_FUNCTION_40_0();
    sub_1B8FA9A40();
    OUTLINED_FUNCTION_157_2(v6);
  }

  result = OUTLINED_FUNCTION_9_3(v5 + 80, v4);
  *(v5 + 80) = v0;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_TCPInfo.txBytes.setter()
{
  v3 = OUTLINED_FUNCTION_244_1();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_TCPInfo._StorageClass();
    OUTLINED_FUNCTION_475_0();
    swift_allocObject();
    OUTLINED_FUNCTION_40_0();
    sub_1B8FA9A40();
    OUTLINED_FUNCTION_157_2(v6);
  }

  result = OUTLINED_FUNCTION_9_3(v5 + 88, v4);
  *(v5 + 88) = v0;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_TCPInfo.txPackets.setter()
{
  v3 = OUTLINED_FUNCTION_244_1();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_TCPInfo._StorageClass();
    OUTLINED_FUNCTION_475_0();
    swift_allocObject();
    OUTLINED_FUNCTION_40_0();
    sub_1B8FA9A40();
    OUTLINED_FUNCTION_157_2(v6);
  }

  result = OUTLINED_FUNCTION_9_3(v5 + 96, v4);
  *(v5 + 96) = v0;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_TCPInfo.txRetransmitBytes.setter()
{
  v3 = OUTLINED_FUNCTION_244_1();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_TCPInfo._StorageClass();
    OUTLINED_FUNCTION_475_0();
    swift_allocObject();
    OUTLINED_FUNCTION_40_0();
    sub_1B8FA9A40();
    OUTLINED_FUNCTION_157_2(v6);
  }

  result = OUTLINED_FUNCTION_9_3(v5 + 168, v4);
  *(v5 + 168) = v0;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_TCPInfo.wifiRxpackets.setter()
{
  v3 = OUTLINED_FUNCTION_244_1();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_TCPInfo._StorageClass();
    OUTLINED_FUNCTION_475_0();
    swift_allocObject();
    OUTLINED_FUNCTION_40_0();
    sub_1B8FA9A40();
    OUTLINED_FUNCTION_157_2(v6);
  }

  result = OUTLINED_FUNCTION_9_3(v5 + 120, v4);
  *(v5 + 120) = v0;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_TCPInfo.wifiTxpackets.setter()
{
  v3 = OUTLINED_FUNCTION_244_1();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_TCPInfo._StorageClass();
    OUTLINED_FUNCTION_475_0();
    swift_allocObject();
    OUTLINED_FUNCTION_40_0();
    sub_1B8FA9A40();
    OUTLINED_FUNCTION_157_2(v6);
  }

  result = OUTLINED_FUNCTION_9_3(v5 + 128, v4);
  *(v5 + 128) = v0;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_TCPInfo.wiredRxpackets.setter()
{
  v3 = OUTLINED_FUNCTION_244_1();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_TCPInfo._StorageClass();
    OUTLINED_FUNCTION_475_0();
    swift_allocObject();
    OUTLINED_FUNCTION_40_0();
    sub_1B8FA9A40();
    OUTLINED_FUNCTION_157_2(v6);
  }

  result = OUTLINED_FUNCTION_9_3(v5 + 136, v4);
  *(v5 + 136) = v0;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_TCPInfo.wiredTxpackets.setter()
{
  v3 = OUTLINED_FUNCTION_244_1();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_TCPInfo._StorageClass();
    OUTLINED_FUNCTION_475_0();
    swift_allocObject();
    OUTLINED_FUNCTION_40_0();
    sub_1B8FA9A40();
    OUTLINED_FUNCTION_157_2(v6);
  }

  result = OUTLINED_FUNCTION_9_3(v5 + 144, v4);
  *(v5 + 144) = v0;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_NetworkTimingData.connectionReused.setter()
{
  v3 = OUTLINED_FUNCTION_65_3();
  v4 = type metadata accessor for Apple_Parsec_Feedback_V2_NetworkTimingData(v3);
  v5 = OUTLINED_FUNCTION_182_0(v4);
  v7 = *(v1 + v2);
  if ((v5 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_NetworkTimingData._StorageClass(0);
    OUTLINED_FUNCTION_57_0();
    swift_allocObject();
    v8 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B8FABCD4(v8);
    OUTLINED_FUNCTION_157_2(v9);
  }

  result = OUTLINED_FUNCTION_9_3(v7 + 49, v6);
  *(v7 + 49) = v0 & 1;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_NetworkTimingData.connectionRace.setter()
{
  v3 = OUTLINED_FUNCTION_65_3();
  v4 = type metadata accessor for Apple_Parsec_Feedback_V2_NetworkTimingData(v3);
  v5 = OUTLINED_FUNCTION_182_0(v4);
  v7 = *(v1 + v2);
  if ((v5 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_NetworkTimingData._StorageClass(0);
    OUTLINED_FUNCTION_57_0();
    swift_allocObject();
    v8 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B8FABCD4(v8);
    OUTLINED_FUNCTION_157_2(v9);
  }

  result = OUTLINED_FUNCTION_9_3(v7 + 48, v6);
  *(v7 + 48) = v0 & 1;
  return result;
}

void sub_1B8F500F8()
{
  OUTLINED_FUNCTION_184_0();
  OUTLINED_FUNCTION_353_0();
  v6 = OUTLINED_FUNCTION_313();
  v8 = v7(v6);
  v9 = OUTLINED_FUNCTION_216_1(v8);
  v10 = *(v1 + v5);
  if ((v9 & 1) == 0)
  {
    v4(0);
    OUTLINED_FUNCTION_57_0();
    swift_allocObject();
    v11 = OUTLINED_FUNCTION_40_0();
    v12 = v3(v11);
    OUTLINED_FUNCTION_192_2(v12);
  }

  v13 = OUTLINED_FUNCTION_271_0();
  OUTLINED_FUNCTION_9_3(v13, v14);
  *(v10 + v2) = v0;
  OUTLINED_FUNCTION_183_2();
}

void Apple_Parsec_Feedback_V2_NetworkTimingData.peerAddress.setter()
{
  OUTLINED_FUNCTION_193_0();
  v4 = OUTLINED_FUNCTION_11_13();
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_NetworkTimingData(v4);
  v6 = OUTLINED_FUNCTION_47(v5);
  v8 = *(v1 + v3);
  if ((v6 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_NetworkTimingData._StorageClass(0);
    OUTLINED_FUNCTION_57_0();
    swift_allocObject();
    v9 = OUTLINED_FUNCTION_40_0();
    v10 = sub_1B8FABCD4(v9);
    OUTLINED_FUNCTION_135(v10);
  }

  OUTLINED_FUNCTION_9_3(v8 + 32, v7);
  v11 = *(v8 + 32);
  v12 = *(v8 + 40);
  *(v8 + 32) = v2;
  *(v8 + 40) = v0;
  sub_1B8D538A0(v11, v12);
  OUTLINED_FUNCTION_192_1();
}

uint64_t Apple_Parsec_Feedback_V2_NetworkTimingData.startTimeCounts.setter()
{
  OUTLINED_FUNCTION_183_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8C78, &qword_1B966F950);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  v3 = type metadata accessor for Apple_Parsec_Feedback_V2_NetworkTimingData(v2);
  if ((OUTLINED_FUNCTION_47(v3) & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_NetworkTimingData._StorageClass(0);
    OUTLINED_FUNCTION_57_0();
    swift_allocObject();
    v4 = OUTLINED_FUNCTION_40_0();
    v5 = sub_1B8FABCD4(v4);
    OUTLINED_FUNCTION_135(v5);
  }

  OUTLINED_FUNCTION_124_1();
  OUTLINED_FUNCTION_294();
  sub_1B8FAC528();
  v6 = type metadata accessor for Apple_Parsec_Feedback_V2_TCPInfo(0);
  OUTLINED_FUNCTION_65_1(v6);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8F188B0();
  return swift_endAccess();
}

uint64_t Apple_Parsec_Feedback_V2_NetworkTimingData.stopTimeCounts.setter()
{
  OUTLINED_FUNCTION_183_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8C78, &qword_1B966F950);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  v3 = type metadata accessor for Apple_Parsec_Feedback_V2_NetworkTimingData(v2);
  if ((OUTLINED_FUNCTION_47(v3) & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_NetworkTimingData._StorageClass(0);
    OUTLINED_FUNCTION_57_0();
    swift_allocObject();
    v4 = OUTLINED_FUNCTION_40_0();
    v5 = sub_1B8FABCD4(v4);
    OUTLINED_FUNCTION_135(v5);
  }

  OUTLINED_FUNCTION_124_1();
  OUTLINED_FUNCTION_294();
  sub_1B8FAC528();
  v6 = type metadata accessor for Apple_Parsec_Feedback_V2_TCPInfo(0);
  OUTLINED_FUNCTION_65_1(v6);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8F188B0();
  return swift_endAccess();
}

void sub_1B8F5086C()
{
  OUTLINED_FUNCTION_184_0();
  OUTLINED_FUNCTION_353_0();
  v6 = OUTLINED_FUNCTION_313();
  v8 = v7(v6);
  v9 = OUTLINED_FUNCTION_216_1(v8);
  v10 = *(v1 + v5);
  if ((v9 & 1) == 0)
  {
    v4(0);
    OUTLINED_FUNCTION_57_0();
    swift_allocObject();
    v11 = OUTLINED_FUNCTION_40_0();
    v12 = v3(v11);
    OUTLINED_FUNCTION_192_2(v12);
  }

  v13 = OUTLINED_FUNCTION_271_0();
  OUTLINED_FUNCTION_9_3(v13, v14);
  *(v10 + v2) = v0 & 1;
  OUTLINED_FUNCTION_183_2();
}

uint64_t sub_1B8F50914(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B9013634();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1B8F509F4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = static Apple_Parsec_Feedback_V2_SearchSuggestionType.allCases.getter(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1B8F50A44(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B902402C();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1B8F50B24@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = static Apple_Parsec_Feedback_V2_ResultType.allCases.getter(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1B8F50B58(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B9013A24();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1B8F50C38@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = static Apple_Parsec_Feedback_V2_EngagementActionTarget.allCases.getter(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1B8F50C88(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B90139D0();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1B8F50D68@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = static Apple_Parsec_Feedback_V2_EngagementDestination.allCases.getter(a1);
  *a2 = result;
  return result;
}

void Apple_Parsec_Feedback_V2_CardSectionType.init(rawValue:)(void *a1@<X8>, unint64_t a2@<X0>)
{
  if (a2 >= 0x3E)
  {
    switch(a2)
    {
      case 0xC8uLL:
        a2 = 64;
        break;
      case 0xC9uLL:
        a2 = 65;
        break;
      case 0xCAuLL:
        a2 = 66;
        break;
      case 0xCBuLL:
        a2 = 67;
        break;
      case 0xCCuLL:
        a2 = 68;
        break;
      case 0xCDuLL:
        a2 = 69;
        break;
      case 0xCEuLL:
        a2 = 70;
        break;
      case 0xCFuLL:
        a2 = 71;
        break;
      case 0xD0uLL:
        a2 = 72;
        break;
      case 0xD1uLL:
        a2 = 73;
        break;
      case 0xD2uLL:
        a2 = 74;
        break;
      case 0xD3uLL:
        a2 = 75;
        break;
      case 0xD4uLL:
        a2 = 76;
        break;
      case 0xD5uLL:
        a2 = 77;
        break;
      case 0xD6uLL:
        a2 = 78;
        break;
      default:
        v2 = 62;
        if (a2 != 63)
        {
          v2 = a2;
        }

        if (a2 == 64)
        {
          a2 = 63;
        }

        else
        {
          a2 = v2;
        }

        break;
    }
  }

  *a1 = a2;
  OUTLINED_FUNCTION_7_3(a1);
}

uint64_t Apple_Parsec_Feedback_V2_CardSectionType.rawValue.getter()
{
  result = *v0;
  if (*(v0 + 8) == 1)
  {
    return qword_1B967F5D0[result];
  }

  return result;
}

uint64_t sub_1B8F50EE0@<X0>(uint64_t *a1@<X8>)
{
  result = Apple_Parsec_Feedback_V2_CardSectionType.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B8F50F14(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B9013B74();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1B8F51010@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = static Apple_Parsec_Feedback_V2_CardSectionType.allCases.getter(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1B8F51054(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B9023FD8();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1B8F51134@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = static Apple_Parsec_Feedback_V2_FBTH.allCases.getter(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1B8F51184(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B9013A78();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1B8F51264@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = static Apple_Parsec_Feedback_V2_TriggerVisibleResultsEvent.allCases.getter(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1B8F512A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B9014060();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1B8F51388@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = static Apple_Parsec_Feedback_V2_SessionEndTriggerEvent.allCases.getter(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1B8F513BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B9013BC8();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1B8F5149C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = static Apple_Parsec_Feedback_V2_ActionCardType.allCases.getter(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1B8F514EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B9013C70();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1B8F515CC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = static Apple_Parsec_Feedback_V2_TriggerSearchRequestEvent.allCases.getter(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1B8F5161C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B9013D18();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1B8F516FC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = static Apple_Parsec_Feedback_V2_EndpointType.allCases.getter(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1B8F51740(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B9023F84();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1B8F51820@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = static Apple_Parsec_Feedback_V2_IndexType.allCases.getter(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1B8F51854(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B9013E68();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1B8F51934@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = static Apple_Parsec_Feedback_V2_CardDisappearEvent.allCases.getter(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1B8F51968(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B9013EBC();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1B8F51A48@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = static Apple_Parsec_Feedback_V2_ClearInputTriggerEvent.allCases.getter(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1B8F51A7C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B9013F10();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1B8F51B5C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = static Apple_Parsec_Feedback_V2_SectionEngagementTriggerEvent.allCases.getter(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1B8F51B90(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B9013F64();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1B8F51C70@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = static Apple_Parsec_Feedback_V2_VisibleSectionHeaderType.allCases.getter(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1B8F51CC0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B9013E14();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}