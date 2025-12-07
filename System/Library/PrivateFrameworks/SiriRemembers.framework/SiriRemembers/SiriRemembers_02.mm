uint64_t AppMatcher.getInteractionStatsNonEntity(intent:bundleIds:groupBySiriDonation:)(void *a1, uint64_t a2, uint64_t a3)
{
  static AppSelectionUtilityHelper.equivalentInteractionIntentsFor(intent:)(a1);
  AppMatcher.getInteractionStatsNonEntity(interactionTypes:bundleIds:groupBySiriDonation:)();
  v4 = v3;

  return v4;
}

void AppMatcher.getInteractionStatsNonEntity(interactionTypes:bundleIds:groupBySiriDonation:)()
{
  OUTLINED_FUNCTION_64();
  v93 = v0;
  HIDWORD(v92) = v1;
  v95 = v2;
  v87 = v3;
  v91 = sub_231476CA8();
  OUTLINED_FUNCTION_4();
  v90 = v4;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_47_0(v7 - v6);
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D568, &qword_2314795C8);
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_47_0(&v85 - v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD4D680, &unk_2314795C0);
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_11();
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v85 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = (&v85 - v17);
  v107 = OUTLINED_FUNCTION_40_0();
  *v18 = 1;
  type metadata accessor for QueryValue(0);
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  LOBYTE(v104) = 0;
  sub_2313E95CC(v18, v16, &unk_27DD4D680, &unk_2314795C0);
  v19 = MEMORY[0x277D84F90];
  swift_bridgeObjectRetain_n();
  OUTLINED_FUNCTION_30();
  v108 = v16;
  sub_2313E8CDC();
  v20 = v101;
  v86 = v100;
  v21 = v102;
  v85 = v103;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    OUTLINED_FUNCTION_1_0();
    sub_2313F3244();
    v19 = v77;
  }

  v23 = *(v19 + 16);
  v22 = *(v19 + 24);
  if (v23 >= v22 >> 1)
  {
    OUTLINED_FUNCTION_16_0(v22);
    sub_2313F3244();
    v19 = v78;
  }

  swift_bridgeObjectRelease_n();
  sub_2313E937C(v18, &unk_27DD4D680, &unk_2314795C0);
  *(v19 + 16) = v23 + 1;
  v24 = v19 + 32 * v23;
  *(v24 + 32) = v86;
  *(v24 + 40) = v20;
  *(v24 + 48) = v21;
  *(v24 + 56) = v85;
  v25 = v96;
  OUTLINED_FUNCTION_65();
  OUTLINED_FUNCTION_45();
  sub_2313E95CC(v25, v108, &unk_27DD4D680, &unk_2314795C0);

  OUTLINED_FUNCTION_30();
  sub_2313E8CDC();
  v26 = v100;
  v27 = v101;
  v28 = v102;
  v87 = v103;
  v29 = v19;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    OUTLINED_FUNCTION_1_0();
    sub_2313F3244();
    v29 = v79;
  }

  v31 = *(v29 + 16);
  v30 = *(v29 + 24);
  if (v31 >= v30 >> 1)
  {
    OUTLINED_FUNCTION_16_0(v30);
    sub_2313F3244();
    v29 = v80;
  }

  sub_2313E937C(v96, &unk_27DD4D680, &unk_2314795C0);
  *(v29 + 16) = v31 + 1;
  v32 = v29 + 32 * v31;
  *(v32 + 32) = v26;
  *(v32 + 40) = v27;
  *(v32 + 48) = v28;
  *(v32 + 56) = v87;
  v33 = v99;
  OUTLINED_FUNCTION_52();
  sub_231476C88();
  sub_231476BE8();
  (*(v90 + 8))(v26, v91);
  swift_storeEnumTagMultiPayload();
  v34 = v97;
  sub_231403238();
  v106 = v33;
  sub_2313E95CC(v34, v108, &unk_27DD4D680, &unk_2314795C0);

  OUTLINED_FUNCTION_30();
  sub_2313E8CDC();
  v35 = v100;
  v36 = v101;
  v37 = v102;
  v38 = v103;
  v39 = v29;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    OUTLINED_FUNCTION_3_0();
    sub_2313F3244();
    v39 = v81;
  }

  v41 = *(v39 + 16);
  v40 = *(v39 + 24);
  if (v41 >= v40 >> 1)
  {
    OUTLINED_FUNCTION_20(v40);
    sub_2313F3244();
    v39 = v82;
  }

  v42 = MEMORY[0x277D84F90];

  sub_2313E937C(v97, &unk_27DD4D680, &unk_2314795C0);
  sub_2313E937C(v98, &qword_27DD4D568, &qword_2314795C8);
  *(v39 + 16) = v41 + 1;
  v43 = v39 + 32 * v41;
  *(v43 + 32) = v35;
  *(v43 + 40) = v36;
  *(v43 + 48) = v37;
  *(v43 + 56) = v38;
  if (v95)
  {
    v44 = v106;

    v45 = v94;
    OUTLINED_FUNCTION_65();
    v99 = v44;
    sub_2313E95CC(v45, v108, &unk_27DD4D680, &unk_2314795C0);

    OUTLINED_FUNCTION_30();
    sub_2313E8CDC();
    v46 = v100;
    v47 = v101;
    v48 = v102;
    v49 = v103;
    v50 = v39;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_3_0();
      sub_2313F3244();
      v50 = v83;
    }

    v52 = *(v50 + 16);
    v51 = *(v50 + 24);
    if (v52 >= v51 >> 1)
    {
      OUTLINED_FUNCTION_20(v51);
      sub_2313F3244();
      v50 = v84;
    }

    sub_2313E937C(v94, &unk_27DD4D680, &unk_2314795C0);
    *(v50 + 16) = v52 + 1;
    v53 = v50 + 32 * v52;
    *(v53 + 32) = v46;
    *(v53 + 40) = v47;
    *(v53 + 48) = v48;
    *(v53 + 56) = v49;
    OUTLINED_FUNCTION_31_0();
    v39 = v50;
  }

  v104 = v42;
  v105 = v39;
  OUTLINED_FUNCTION_6_1(v106);
  v54 = OUTLINED_FUNCTION_51();
  v55 = v93;
  InteractionQuery.fetchStats(_:groupBy:useDistinct:enableFastQuery:)(v54, v56, v57, v58, v59, v60, v61, v62, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96);
  if (v55)
  {
    OUTLINED_FUNCTION_7_0();
  }

  else
  {
    OUTLINED_FUNCTION_7_0();

    if (qword_280C3CF50 != -1)
    {
      OUTLINED_FUNCTION_0();
      swift_once();
    }

    v63 = sub_231477B68();
    OUTLINED_FUNCTION_38(v63, qword_280C3D970);
    v64 = sub_231477B58();
    sub_2314782A8();
    v65 = OUTLINED_FUNCTION_28_1();
    if (os_log_type_enabled(v65, v66))
    {
      OUTLINED_FUNCTION_24();
      v67 = swift_slowAlloc();
      OUTLINED_FUNCTION_23();
      v68 = swift_slowAlloc();
      v100 = v68;
      *v67 = 136315138;
      type metadata accessor for HistoryStats(0);

      v69 = sub_231477DB8();
      v71 = v70;

      v72 = sub_2313EB684(v69, v71, &v100);

      *(v67 + 4) = v72;
      OUTLINED_FUNCTION_59_0(&dword_2313E1000, v73, v74, "AppMatcher#getInteractionStatsNonEntity stats: %s");
      __swift_destroy_boxed_opaque_existential_0(v68);
      v75 = OUTLINED_FUNCTION_8_1();
      MEMORY[0x23192F1F0](v75);
      v76 = OUTLINED_FUNCTION_4_0();
      MEMORY[0x23192F1F0](v76);
    }
  }

  OUTLINED_FUNCTION_62();
}

Swift::OpaquePointer_optional __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> AppMatcher.getEntities(intent:)(INIntent intent)
{
  [(objc_class *)intent.super.isa copy];
  sub_231478468();
  swift_unknownObjectRelease();
  sub_2313EB848(v39, &v36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D570, &qword_2314795D8);
  if (swift_dynamicCast())
  {
    sub_2313F198C(v34, v37);
    sub_2313EB848(v39, v34);
    sub_2313E4AFC(0, &qword_27DD4D580, 0x277CD4078);
    if (swift_dynamicCast())
    {
      v2 = v36;
      sub_23140EC00(v36);
    }

    v3 = v38;
    __swift_project_boxed_opaque_existential_1(v37, v38);
    v4 = OUTLINED_FUNCTION_53();
    v6 = v5(v4);
    if (v1)
    {
      __swift_destroy_boxed_opaque_existential_0(v39);
      __swift_destroy_boxed_opaque_existential_0(v37);
    }

    else
    {
      v16 = v6;
      v17 = v6 + 64;
      v18 = 1 << *(v6 + 32);
      v19 = -1;
      if (v18 < 64)
      {
        v19 = ~(-1 << v18);
      }

      v20 = v19 & *(v6 + 64);
      v21 = (v18 + 63) >> 6;

      v23 = 0;
      v3 = MEMORY[0x277D84F90];
      v40 = v22;
      do
      {
        while (1)
        {
          if (!v20)
          {
            while (1)
            {
              v24 = v23 + 1;
              if (__OFADD__(v23, 1))
              {
                break;
              }

              if (v24 >= v21)
              {
                goto LABEL_29;
              }

              v20 = *(v17 + 8 * v24);
              ++v23;
              if (v20)
              {
                v23 = v24;
                goto LABEL_18;
              }
            }

            __break(1u);
LABEL_32:
            __break(1u);
            goto LABEL_33;
          }

LABEL_18:
          v25 = *(*(v16 + 56) + ((v23 << 9) | (8 * __clz(__rbit64(v20)))));
          v26 = *(v25 + 16);
          v27 = *(v3 + 16);
          if (__OFADD__(v27, v26))
          {
            goto LABEL_32;
          }

          if (!swift_isUniquelyReferenced_nonNull_native() || v27 + v26 > *(v3 + 24) >> 1)
          {
            sub_23141CB80();
            v3 = v28;
          }

          v20 &= v20 - 1;
          if (!*(v25 + 16))
          {
            break;
          }

          v29 = (*(v3 + 24) >> 1) - *(v3 + 16);
          v30 = type metadata accessor for Entity(0);
          if (v29 < v26)
          {
            __break(1u);
LABEL_35:
            __break(1u);
            goto LABEL_36;
          }

          swift_arrayInitWithCopy();

          v16 = v40;
          if (v26)
          {
            v31 = *(v3 + 16);
            v32 = __OFADD__(v31, v26);
            v33 = v31 + v26;
            if (v32)
            {
              goto LABEL_35;
            }

            *(v3 + 16) = v33;
          }
        }

        v16 = v40;
      }

      while (!v26);
      __break(1u);
LABEL_29:

      __swift_destroy_boxed_opaque_existential_0(v39);

      __swift_destroy_boxed_opaque_existential_0(v37);
    }
  }

  else
  {
    v35 = 0;
    memset(v34, 0, sizeof(v34));
    sub_2313E937C(v34, &qword_27DD4D578, &qword_2314795E0);
    if (qword_280C3CF50 != -1)
    {
LABEL_33:
      OUTLINED_FUNCTION_0();
      swift_once();
    }

    v8 = sub_231477B68();
    OUTLINED_FUNCTION_38(v8, qword_280C3D970);
    v9 = sub_231477B58();
    sub_2314782A8();
    v10 = OUTLINED_FUNCTION_28_1();
    if (os_log_type_enabled(v10, v11))
    {
      OUTLINED_FUNCTION_32();
      v12 = swift_slowAlloc();
      OUTLINED_FUNCTION_46(v12);
      OUTLINED_FUNCTION_29_0(&dword_2313E1000, v13, v14, "AppMatcher#getEntities: Intent is not DonationExtractable.");
      v15 = OUTLINED_FUNCTION_4_0();
      MEMORY[0x23192F1F0](v15);
    }

    __swift_destroy_boxed_opaque_existential_0(v39);
    v3 = 0;
  }

  v30 = v3;
LABEL_36:
  result.value._rawValue = v30;
  result.is_nil = v7;
  return result;
}

Swift::OpaquePointer_optional __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> AppMatcher.getSiriMatcherEntities(intent:)(INIntent intent)
{
  [(objc_class *)intent.super.isa copy];
  sub_231478468();
  swift_unknownObjectRelease();
  sub_2313EB848(v32, v28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D570, &qword_2314795D8);
  if (swift_dynamicCast())
  {
    sub_2313F198C(v29, v31);
    sub_2313EB848(v32, v29);
    sub_2313E4AFC(0, &qword_27DD4D580, 0x277CD4078);
    if (swift_dynamicCast())
    {
      v1 = v28[0];
      sub_23140EC00(v28[0]);
    }

    if (qword_280C3CF50 != -1)
    {
      OUTLINED_FUNCTION_0();
      swift_once();
    }

    v2 = sub_231477B68();
    OUTLINED_FUNCTION_38(v2, qword_280C3D970);
    sub_2314137BC(v31, v29);
    v3 = sub_231477B58();
    sub_2314782A8();
    v4 = OUTLINED_FUNCTION_28_1();
    if (os_log_type_enabled(v4, v5))
    {
      OUTLINED_FUNCTION_24();
      v6 = swift_slowAlloc();
      OUTLINED_FUNCTION_23();
      v7 = swift_slowAlloc();
      v33 = v7;
      *v6 = 136315138;
      sub_2314137BC(v29, v28);
      v8 = sub_231477EB8();
      v10 = v9;
      __swift_destroy_boxed_opaque_existential_0(v29);
      v11 = sub_2313EB684(v8, v10, &v33);

      *(v6 + 4) = v11;
      OUTLINED_FUNCTION_58(&dword_2313E1000, v12, v13, "AppMatcher#getSiriMatcherEntities: The donationExtractableIntent: %s");
      __swift_destroy_boxed_opaque_existential_0(v7);
      v14 = OUTLINED_FUNCTION_8_1();
      MEMORY[0x23192F1F0](v14);
      OUTLINED_FUNCTION_15_0();
      MEMORY[0x23192F1F0]();
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_0(v29);
    }

    __swift_project_boxed_opaque_existential_1(v31, v31[3]);
    v25 = OUTLINED_FUNCTION_53();
    v24 = v26(v25);
    __swift_destroy_boxed_opaque_existential_0(v32);
    __swift_destroy_boxed_opaque_existential_0(v31);
  }

  else
  {
    v30 = 0;
    memset(v29, 0, sizeof(v29));
    sub_2313E937C(v29, &qword_27DD4D578, &qword_2314795E0);
    if (qword_280C3CF50 != -1)
    {
      OUTLINED_FUNCTION_0();
      swift_once();
    }

    v15 = sub_231477B68();
    OUTLINED_FUNCTION_38(v15, qword_280C3D970);
    v16 = sub_231477B58();
    sub_2314782A8();
    v17 = OUTLINED_FUNCTION_28_1();
    if (os_log_type_enabled(v17, v18))
    {
      OUTLINED_FUNCTION_32();
      v19 = swift_slowAlloc();
      OUTLINED_FUNCTION_46(v19);
      OUTLINED_FUNCTION_29_0(&dword_2313E1000, v20, v21, "AppMatcher#getSiriMatcherEntities: Intent is not DonationExtractable.");
      v22 = OUTLINED_FUNCTION_4_0();
      MEMORY[0x23192F1F0](v22);
    }

    __swift_destroy_boxed_opaque_existential_0(v32);
    v24 = 0;
  }

  v27 = v24;
  result.value._rawValue = v27;
  result.is_nil = v23;
  return result;
}

double AppMatcher.getEntityQuery(entities:)@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v42 = a2;
  v3 = type metadata accessor for Entity(0) - 8;
  MEMORY[0x28223BE20](v3);
  v6 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  v8 = MEMORY[0x277D84F90];
  if (v7)
  {
    v9 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v43 = *(v4 + 72);
    do
    {
      sub_231413E28(v9, v6, type metadata accessor for Entity);
      v44 = *(v6 + 4);
      v45 = 0;
      v46 = 5;

      sub_2314479DC(v10, &v47);
      sub_231403090(v44, v45, v46);
      sub_231413E84(v6, type metadata accessor for Entity);
      v11 = v51;
      v13 = v47;
      v12 = v48;
      v15 = v49;
      v14 = v50;
      if (v51 == 255)
      {
        sub_231412668(v47, v48, v49, v50, 255);
      }

      else
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_3_0();
          sub_23141D16C();
          v8 = v20;
        }

        v17 = *(v8 + 16);
        v16 = *(v8 + 24);
        v18 = v8;
        if (v17 >= v16 >> 1)
        {
          OUTLINED_FUNCTION_20(v16);
          sub_23141D16C();
          v18 = v21;
        }

        *(v18 + 16) = v17 + 1;
        v8 = v18;
        v19 = v18 + 40 * v17;
        *(v19 + 32) = v13;
        *(v19 + 40) = v12;
        *(v19 + 48) = v15;
        *(v19 + 56) = v14;
        *(v19 + 64) = v11;
      }

      v9 += v43;
      --v7;
    }

    while (v7);
  }

  if (*(v8 + 16))
  {
    if (qword_280C3CF50 != -1)
    {
      OUTLINED_FUNCTION_0();
      swift_once();
    }

    v22 = sub_231477B68();
    __swift_project_value_buffer(v22, qword_280C3D970);

    v23 = sub_231477B58();
    v24 = sub_2314782A8();

    v25 = os_log_type_enabled(v23, v24);
    v26 = MEMORY[0x277D84F90];
    if (v25)
    {
      OUTLINED_FUNCTION_24();
      v27 = swift_slowAlloc();
      OUTLINED_FUNCTION_23();
      v28 = swift_slowAlloc();
      v44 = v28;
      *v27 = 136315138;
      v47 = v8;
      v48 = 0;
      v49 = 0;
      v50 = 0;
      v51 = 0;
      v29 = sub_231423790(v28);
      v31 = sub_2313EB684(v29, v30, &v44);

      *(v27 + 4) = v31;
      _os_log_impl(&dword_2313E1000, v23, v24, "AppMatcher#getEntityQuery: EntityQuery filter: %s", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v28);
      v32 = OUTLINED_FUNCTION_8_1();
      MEMORY[0x23192F1F0](v32);
      OUTLINED_FUNCTION_15_0();
      MEMORY[0x23192F1F0]();
    }

    sub_231412668(0, 0, 0, 0, 255);
    v33 = v42;
    *v42 = v8;
    result = 0.0;
    *(v33 + 8) = 0u;
    *(v33 + 24) = 0u;
    *(v33 + 5) = v26;
  }

  else
  {

    if (qword_280C3CF50 != -1)
    {
      OUTLINED_FUNCTION_0();
      swift_once();
    }

    v35 = sub_231477B68();
    __swift_project_value_buffer(v35, qword_280C3D970);
    v36 = sub_231477B58();
    v37 = sub_2314782A8();
    v38 = OUTLINED_FUNCTION_28_1();
    if (os_log_type_enabled(v38, v39))
    {
      OUTLINED_FUNCTION_32();
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&dword_2313E1000, v36, v37, "AppMatcher#getEntityQuery: No entity filter generated", v40, 2u);
      OUTLINED_FUNCTION_15_0();
      MEMORY[0x23192F1F0]();
    }

    result = 0.0;
    v41 = v42;
    v42[1] = 0u;
    v41[2] = 0u;
    *v41 = 0u;
  }

  return result;
}

Swift::Bool __swiftcall AppMatcher.includePersonEntity(intent:)(INIntent intent)
{
  isa = intent.super.isa;
  sub_2313E4AFC(0, &qword_280C3BBD0, 0x277CD3D30);
  v2 = intent.super.isa;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D570, &qword_2314795D8);
  if (swift_dynamicCast())
  {
    sub_2313F198C(v16, v19);
    v3 = v20;
    v4 = v21;
    __swift_project_boxed_opaque_existential_1(v19, v20);
    v5 = (*(v4 + 40))(v3, v4);
    __swift_destroy_boxed_opaque_existential_0(v19);
  }

  else
  {
    v17 = 0;
    memset(v16, 0, sizeof(v16));
    sub_2313E937C(v16, &qword_27DD4D578, &qword_2314795E0);
    if (qword_280C3CF50 != -1)
    {
      OUTLINED_FUNCTION_0();
      swift_once();
    }

    v6 = sub_231477B68();
    __swift_project_value_buffer(v6, qword_280C3D970);
    v7 = sub_231477B58();
    sub_2314782A8();
    v8 = OUTLINED_FUNCTION_44();
    if (os_log_type_enabled(v8, v9))
    {
      OUTLINED_FUNCTION_32();
      v10 = swift_slowAlloc();
      *v10 = 0;
      OUTLINED_FUNCTION_56();
      _os_log_impl(v11, v12, v13, v14, v10, 2u);
      OUTLINED_FUNCTION_15_0();
      MEMORY[0x23192F1F0]();
    }

    v5 = 0;
  }

  return v5 & 1;
}

uint64_t sub_23140EC00(void *a1)
{
  v1 = MEMORY[0x277D84F90];
  v15 = MEMORY[0x277D84F90];
  v2 = sub_231433338(a1);
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v3 = v1;
  }

  result = sub_2313F3038(v3);
  if (!result)
  {

    v14 = MEMORY[0x277D84F90];
LABEL_18:
    sub_231433440(v14);
  }

  v5 = result;
  if (result >= 1)
  {
    for (i = 0; i != v5; ++i)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x23192E5D0](i, v3);
      }

      else
      {
        v7 = *(v3 + 8 * i + 32);
      }

      v8 = v7;
      sub_231430174(v7);
      if (v9)
      {
      }

      else
      {
        [v8 hash];
        v10 = sub_231478798();
        sub_231413B18(v10, v11, v8);
      }

      v12 = v8;
      MEMORY[0x23192E1C0]();
      v13 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x18);
      if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v13 >> 1)
      {
        OUTLINED_FUNCTION_20(v13);
        sub_231478158();
      }

      sub_231478188();
    }

    v14 = v15;

    goto LABEL_18;
  }

  __break(1u);
  return result;
}

uint64_t sub_23140ED90(uint64_t a1, uint64_t a2)
{
  v26 = a2;
  v3 = sub_231476CA8();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v25 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v23 - v7;
  v24 = &v23 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D900, &qword_2314795B8);
  v10 = v9 - 8;
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v23 - v14;
  sub_2313E95CC(a1, &v23 - v14, &qword_27DD4D900, &qword_2314795B8);

  v16 = *(v10 + 56);
  v17 = *(v4 + 16);
  v17(v8, &v15[v16], v3);
  sub_231413E84(&v15[v16], type metadata accessor for HistoryStats);
  sub_2313E95CC(v26, v13, &qword_27DD4D900, &qword_2314795B8);

  v18 = *(v10 + 56);
  v19 = v25;
  v17(v25, &v13[v18], v3);
  sub_231413E84(&v13[v18], type metadata accessor for HistoryStats);
  v20 = v24;
  LOBYTE(v18) = sub_231476C08();
  v21 = *(v4 + 8);
  v21(v19, v3);
  v21(v20, v3);
  return v18 & 1;
}

uint64_t sub_23140EFF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v36 = a4;
  v37 = a1;
  v8 = sub_231476CA8();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D900, &qword_2314795B8);
  v13 = MEMORY[0x28223BE20](v12);
  v15 = (&v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = MEMORY[0x28223BE20](v13);
  v18 = (&v34 - v17);
  *v18 = a2;
  v18[1] = a3;
  sub_231413E28(v36, &v34 + *(v16 + 48) - v17, type metadata accessor for HistoryStats);
  sub_2313E95CC(v18, v15, &qword_27DD4D900, &qword_2314795B8);
  v19 = *v15;
  v35 = v15[1];
  v36 = v19;
  v20 = *(v12 + 48);

  sub_231413E84(v15 + v20, type metadata accessor for HistoryStats);
  sub_2313E95CC(v18, v15, &qword_27DD4D900, &qword_2314795B8);

  v21 = *(v12 + 48);
  (*(v9 + 16))(v11, v15 + v21, v8);
  v22 = v15 + v21;
  v23 = v37;
  sub_231413E84(v22, type metadata accessor for HistoryStats);
  sub_231476C38();
  v25 = v24;
  result = (*(v9 + 8))(v11, v8);
  if (__OFADD__(v23, 1))
  {
    __break(1u);
  }

  else
  {
    v27 = fabs(v25);
    v28 = 1.0 / (fmin((v23 + 1), 10.0) * sqrt(v27 / 60.0));
    sub_2313E95CC(v18, v15, &qword_27DD4D900, &qword_2314795B8);

    v29 = *(v12 + 48);
    v30 = HistoryStats.frequency.getter();
    sub_231413E84(v15 + v29, type metadata accessor for HistoryStats);
    v31 = log10(v30);
    result = sub_2313E937C(v18, &qword_27DD4D900, &qword_2314795B8);
    v32 = 0.1;
    if (v31 / 0.477121255 > 0.1)
    {
      v32 = v31 / 0.477121255;
    }

    v33 = v35;
    *a5 = v36;
    *(a5 + 8) = v33;
    *(a5 + 16) = v23;
    *(a5 + 24) = v27;
    *(a5 + 32) = v28;
    *(a5 + 40) = v31 / 0.477121255;
    *(a5 + 48) = v28 * v32;
  }

  return result;
}

void __swiftcall AppMatcherSignals.init(bundleId:recencyOrder:secondsAgo:recencyScore:frequencyScore:overallScore:)(SiriRemembers::AppMatcherSignals *__return_ptr retstr, Swift::String bundleId, Swift::Int recencyOrder, Swift::Double secondsAgo, Swift::Double recencyScore, Swift::Double frequencyScore, Swift::Double overallScore)
{
  retstr->bundleId = bundleId;
  retstr->recencyOrder = recencyOrder;
  retstr->secondsAgo = secondsAgo;
  retstr->recencyScore = recencyScore;
  retstr->frequencyScore = frequencyScore;
  retstr->overallScore = overallScore;
}

uint64_t AppMatcherResult.resolution.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v3;
  v4 = *(v1 + 16);
  *(a1 + 16) = v4;
  return sub_231413820(v2, v3, v4);
}

uint64_t static AppMatchResolution.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *(a1 + 16);
  v6 = *a2;
  v5 = a2[1];
  v7 = *(a2 + 16);
  switch(v4)
  {
    case 1u:
      if (v7 != 1)
      {
        goto LABEL_23;
      }

      if (v3 != v6 || v2 != v5)
      {
        OUTLINED_FUNCTION_18();
        v10 = sub_2314787C8();
        v33 = OUTLINED_FUNCTION_36_0();
        v35 = OUTLINED_FUNCTION_14_0(v33, v34, 1u);
        v37 = OUTLINED_FUNCTION_14_0(v35, v36, 1u);
        sub_231413840(v37, v38, 1u);
        v17 = OUTLINED_FUNCTION_36_0();
        v19 = 1;
        goto LABEL_22;
      }

      v48 = 1;
      v49 = OUTLINED_FUNCTION_18();
      v51 = OUTLINED_FUNCTION_14_0(v49, v50, 1u);
      v53 = OUTLINED_FUNCTION_14_0(v51, v52, 1u);
      sub_231413840(v53, v54, 1u);
      v55 = OUTLINED_FUNCTION_18();
      sub_231413840(v55, v56, 1u);
      return v48;
    case 2u:
      if (v7 != 2)
      {
        goto LABEL_23;
      }

      v10 = sub_23140FC70(*a1, *a2);
      v20 = OUTLINED_FUNCTION_36_0();
      v22 = OUTLINED_FUNCTION_14_0(v20, v21, 2u);
      v24 = OUTLINED_FUNCTION_14_0(v22, v23, 2u);
      sub_231413840(v24, v25, 2u);
      v17 = OUTLINED_FUNCTION_36_0();
      v19 = 2;
      goto LABEL_22;
    case 3u:
      if (v7 != 3 || (v5 | v6) != 0)
      {
        goto LABEL_23;
      }

      v27 = OUTLINED_FUNCTION_18();
      sub_231413840(v27, v28, 3u);
      v29 = 0;
      v30 = 0;
      v31 = 3;
      goto LABEL_26;
    default:
      if (*(a2 + 16))
      {
LABEL_23:
        v40 = OUTLINED_FUNCTION_36_0();
        v42 = OUTLINED_FUNCTION_14_0(v40, v41, v7);
        v44 = OUTLINED_FUNCTION_14_0(v42, v43, v4);
        sub_231413840(v44, v45, v4);
        v46 = OUTLINED_FUNCTION_36_0();
        sub_231413840(v46, v47, v7);
        return 0;
      }

      v8 = *a1;
      if (v3 == v6 && v2 == v5)
      {
        v57 = OUTLINED_FUNCTION_14_0(v8, v2, 0);
        v59 = OUTLINED_FUNCTION_14_0(v57, v58, 0);
        sub_231413840(v59, v60, 0);
        v29 = OUTLINED_FUNCTION_18();
        v31 = 0;
LABEL_26:
        sub_231413840(v29, v30, v31);
        return 1;
      }

      v10 = sub_2314787C8();
      v11 = OUTLINED_FUNCTION_36_0();
      v13 = OUTLINED_FUNCTION_14_0(v11, v12, 0);
      v15 = OUTLINED_FUNCTION_14_0(v13, v14, 0);
      sub_231413840(v15, v16, 0);
      v17 = OUTLINED_FUNCTION_36_0();
      v19 = 0;
LABEL_22:
      sub_231413840(v17, v18, v19);
      return v10 & 1;
  }
}

uint64_t sub_23140F540(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || a1 == a2)
  {
    return 1;
  }

  v3 = (a2 + 48);
  v4 = (a1 + 48);
  while (2)
  {
    v5 = *(v4 - 2);
    v6 = *v4;
    v7 = *(v3 - 2);
    v8 = *v3;
    switch(*v4)
    {
      case 1:
        if (v8 != 1)
        {
          goto LABEL_31;
        }

        v42 = OUTLINED_FUNCTION_17();
        v44 = OUTLINED_FUNCTION_19_0(v42, v43, 1);
        sub_231403090(v44, v45, 1);
        if (v5 != v7)
        {
          return 0;
        }

        goto LABEL_26;
      case 2:
        if (v8 != 2)
        {
          goto LABEL_31;
        }

        v31 = OUTLINED_FUNCTION_17();
        v33 = OUTLINED_FUNCTION_19_0(v31, v32, 2);
        sub_231403090(v33, v34, 2);
        if (*&v5 != *&v7)
        {
          return 0;
        }

        goto LABEL_26;
      case 3:
        if (v8 != 3)
        {
          goto LABEL_30;
        }

        if (v5 != v7 || *(v4 - 1) != *(v3 - 1))
        {
          v21 = sub_2314787C8();
          v36 = OUTLINED_FUNCTION_21();
          sub_231401AEC(v36, v37, 3);
          v38 = OUTLINED_FUNCTION_17();
          sub_231401AEC(v38, v39, 3);
          v40 = OUTLINED_FUNCTION_17();
          v28 = OUTLINED_FUNCTION_19_0(v40, v41, 3);
          v30 = 3;
          goto LABEL_25;
        }

        sub_231401AEC(*(v4 - 2), *(v4 - 1), 3);
        v61 = OUTLINED_FUNCTION_17();
        sub_231401AEC(v61, v62, 3);
        v63 = OUTLINED_FUNCTION_17();
        sub_231403090(v63, v64, 3);
        v65 = OUTLINED_FUNCTION_17();
        sub_231403090(v65, v66, 3);
        goto LABEL_26;
      case 4:
        if (v8 != 4)
        {
          goto LABEL_30;
        }

        v13 = OUTLINED_FUNCTION_21();
        sub_231401AEC(v13, v14, 4);
        v15 = OUTLINED_FUNCTION_17();
        sub_231401AEC(v15, v16, 4);
        v17 = OUTLINED_FUNCTION_21();
        sub_231401AEC(v17, v18, 4);
        v19 = OUTLINED_FUNCTION_17();
        sub_231401AEC(v19, v20, 4);
        v21 = sub_23140F540(v5, v7);
        v22 = OUTLINED_FUNCTION_17();
        v24 = OUTLINED_FUNCTION_19_0(v22, v23, 4);
        v26 = OUTLINED_FUNCTION_19_0(v24, v25, 4);
        sub_231403090(v26, v27, 4);
        v28 = OUTLINED_FUNCTION_17();
        v30 = 4;
        goto LABEL_25;
      case 5:
        if (v8 == 5)
        {
          v46 = OUTLINED_FUNCTION_21();
          sub_231401AEC(v46, v47, 5);
          v48 = OUTLINED_FUNCTION_17();
          sub_231401AEC(v48, v49, 5);
          v50 = OUTLINED_FUNCTION_21();
          sub_231401AEC(v50, v51, 5);
          v52 = OUTLINED_FUNCTION_17();
          sub_231401AEC(v52, v53, 5);
          sub_23141AB28(v5, v7);
          v21 = v54;
          v55 = OUTLINED_FUNCTION_17();
          v57 = OUTLINED_FUNCTION_19_0(v55, v56, 5);
          v59 = OUTLINED_FUNCTION_19_0(v57, v58, 5);
          sub_231403090(v59, v60, 5);
          v28 = OUTLINED_FUNCTION_17();
          v30 = 5;
LABEL_25:
          sub_231403090(v28, v29, v30);
          if ((v21 & 1) == 0)
          {
            return 0;
          }

LABEL_26:
          v3 += 3;
          v4 += 24;
          if (!--v2)
          {
            return 1;
          }

          continue;
        }

LABEL_30:
        v68 = OUTLINED_FUNCTION_17();
        sub_231401AEC(v68, v69, v6);

LABEL_31:
        v70 = OUTLINED_FUNCTION_21();
        sub_231401AEC(v70, v71, v8);
        v72 = OUTLINED_FUNCTION_17();
        v74 = OUTLINED_FUNCTION_19_0(v72, v73, v6);
        sub_231403090(v74, v75, v8);
        v76 = OUTLINED_FUNCTION_17();
        sub_231403090(v76, v77, v6);
        return 0;
      default:
        if (*v3)
        {
          goto LABEL_31;
        }

        v9 = OUTLINED_FUNCTION_17();
        v11 = OUTLINED_FUNCTION_19_0(v9, v10, 0);
        sub_231403090(v11, v12, 0);
        if ((v7 ^ v5))
        {
          return 0;
        }

        goto LABEL_26;
    }
  }
}

uint64_t sub_23140F83C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || a1 == a2)
  {
    return 1;
  }

  v3 = (a2 + 64);
  v4 = (a1 + 64);
  while (2)
  {
    v6 = *(v4 - 4);
    v5 = *(v4 - 3);
    v8 = *(v4 - 2);
    v7 = *(v4 - 1);
    v10 = *v4;
    v4 += 40;
    v9 = v10;
    v12 = *(v3 - 4);
    v11 = *(v3 - 3);
    v14 = *(v3 - 2);
    v13 = *(v3 - 1);
    v16 = *v3;
    v3 += 40;
    v15 = v16;
    v124[0] = v6;
    v124[1] = v5;
    v124[2] = v8;
    v124[3] = v7;
    v125 = v9;
    v126 = v12;
    v127 = v11;
    v128 = v14;
    v129 = v13;
    v130 = v16;
    v122 = v7;
    v123 = v8;
    switch(v9)
    {
      case 1:
        if (v15 != 1)
        {
          goto LABEL_44;
        }

        OUTLINED_FUNCTION_27_0();
        v73 = v72;
        OUTLINED_FUNCTION_26();
        sub_231412700(v74, v75, v76, v77, v78);
        v79 = OUTLINED_FUNCTION_25();
        sub_231412700(v79, v80, v73, v122, 1);
        v81 = OUTLINED_FUNCTION_2_0();
        sub_231412700(v81, v82, v83, v84, 1);
        v85 = OUTLINED_FUNCTION_9_0();
        sub_231412700(v85, v86, v87, v88, 1);
        v121 = sub_23140F83C(v6, v12);
        sub_2313E937C(v124, &qword_27DD4D5C8, &qword_23147A800);
        v89 = OUTLINED_FUNCTION_2_0();
        sub_23141267C(v89, v90, v91, v92, 1);
        v38 = OUTLINED_FUNCTION_9_0();
        v42 = 1;
        goto LABEL_35;
      case 2:
        if (v15 != 2)
        {
          goto LABEL_44;
        }

        if (v6 != v12 || v5 != v11)
        {
          v44 = OUTLINED_FUNCTION_50(v6, v5);
          v55 = OUTLINED_FUNCTION_2_0();
          sub_231412700(v55, v56, v57, v58, 2);
          v49 = OUTLINED_FUNCTION_25();
          v52 = v122;
          v51 = v123;
          v53 = 2;
          goto LABEL_20;
        }

        OUTLINED_FUNCTION_26();
        v97 = 2;
        goto LABEL_41;
      case 3:
        if (v15 != 3)
        {
          goto LABEL_44;
        }

        v59 = v6 == v12 && v5 == v11;
        if (v59 || (v60 = OUTLINED_FUNCTION_25(), v62 = OUTLINED_FUNCTION_50(v60, v61), v7 = v122, v8 = v123, (v62 & 1) != 0))
        {
          if (v8 == v14 && v7 == v13)
          {
            v93 = OUTLINED_FUNCTION_27_0();
            v95 = v98;
            v96 = v99;
            v97 = 3;
LABEL_41:
            sub_231412700(v93, v94, v95, v96, v97);
            v100 = OUTLINED_FUNCTION_25();
            sub_231412700(v100, v101, v123, v122, v9);
            sub_2313E937C(v124, &qword_27DD4D5C8, &qword_23147A800);
          }

          else
          {
            v121 = sub_2314787C8();
            v64 = OUTLINED_FUNCTION_2_0();
            sub_231412700(v64, v65, v66, v67, 3);
            v68 = OUTLINED_FUNCTION_9_0();
            sub_231412700(v68, v69, v70, v71, 3);
            sub_2313E937C(v124, &qword_27DD4D5C8, &qword_23147A800);
LABEL_36:
            if ((v121 & 1) == 0)
            {
              return 0;
            }
          }

LABEL_42:
          if (!--v2)
          {
            return 1;
          }

          continue;
        }

        v115 = OUTLINED_FUNCTION_27_0();
        v117 = v116;
        v119 = v118;
        sub_231412700(v115, v120, v14, v13, 3);
        v110 = OUTLINED_FUNCTION_25();
        v112 = v117;
        v113 = v119;
        v114 = 3;
LABEL_45:
        sub_231412700(v110, v111, v112, v113, v114);
        sub_2313E937C(v124, &qword_27DD4D5C8, &qword_23147A800);
        return 0;
      case 4:
        if (v15 != 4)
        {
          goto LABEL_44;
        }

        if (v6 == v12 && v5 == v11)
        {
          OUTLINED_FUNCTION_26();
          v97 = 4;
          goto LABEL_41;
        }

        v44 = OUTLINED_FUNCTION_50(v6, v5);
        v45 = OUTLINED_FUNCTION_2_0();
        sub_231412700(v45, v46, v47, v48, 4);
        v49 = OUTLINED_FUNCTION_25();
        v52 = v122;
        v51 = v123;
        v53 = 4;
LABEL_20:
        sub_231412700(v49, v50, v51, v52, v53);
        sub_2313E937C(v124, &qword_27DD4D5C8, &qword_23147A800);
        if ((v44 & 1) == 0)
        {
          return 0;
        }

        goto LABEL_42;
      default:
        if (v15)
        {
LABEL_44:
          v103 = OUTLINED_FUNCTION_27_0();
          v105 = v104;
          v107 = v106;
          sub_231412700(v103, v108, v14, v13, v109);
          v110 = OUTLINED_FUNCTION_25();
          v112 = v105;
          v113 = v107;
          v114 = v9;
          goto LABEL_45;
        }

        OUTLINED_FUNCTION_27_0();
        v18 = v17;
        OUTLINED_FUNCTION_26();
        sub_231412700(v19, v20, v21, v22, v23);
        v24 = OUTLINED_FUNCTION_25();
        sub_231412700(v24, v25, v18, v122, 0);
        v26 = OUTLINED_FUNCTION_2_0();
        sub_231412700(v26, v27, v28, v29, 0);
        v30 = OUTLINED_FUNCTION_9_0();
        sub_231412700(v30, v31, v32, v33, 0);
        v121 = sub_23140F83C(v6, v12);
        sub_2313E937C(v124, &qword_27DD4D5C8, &qword_23147A800);
        v34 = OUTLINED_FUNCTION_2_0();
        sub_23141267C(v34, v35, v36, v37, 0);
        v38 = OUTLINED_FUNCTION_9_0();
        v42 = 0;
LABEL_35:
        sub_23141267C(v38, v39, v40, v41, v42);
        goto LABEL_36;
    }
  }
}

uint64_t sub_23140FC14(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_23140FC70(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_2314787C8() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_23140FCFC(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_23140FDB0(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_231449250();
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = sub_23140FFD0(v6);
  *a1 = v2;
  return result;
}

uint64_t sub_23140FE1C(uint64_t *a1)
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D900, &qword_2314795B8) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_231449264();
    v3 = v4;
  }

  v5 = *(v3 + 16);
  v7[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v7[1] = v5;
  result = sub_2314100C4(v7);
  *a1 = v3;
  return result;
}

size_t sub_23140FED0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F90];
  }

  v3 = sub_23141D750(*(a1 + 16), 0);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D900, &qword_2314795B8) - 8);
  v5 = sub_231413B7C(&v8, v3 + ((*(v4 + 80) + 32) & ~*(v4 + 80)), v1, a1);
  v6 = v8;

  sub_231401B18(v6);
  if (v5 != v1)
  {
    __break(1u);
    return MEMORY[0x277D84F90];
  }

  return v3;
}

uint64_t sub_23140FFD0(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_231478788();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        v6 = sub_231478178();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_23141070C(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_23141020C(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_2314100C4(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_231478788();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D900, &qword_2314795B8);
        v6 = sub_231478178();
        *(v6 + 16) = v5;
      }

      v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D900, &qword_2314795B8) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_231410C60(v8, v9, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_2314102B0(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_23141020C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 56 * a3 - 8;
    v6 = result - a3;
    while (2)
    {
      v7 = *(v4 + 56 * a3 + 48);
      v8 = v6;
      v9 = v5;
      do
      {
        if (*v9 >= v7)
        {
          break;
        }

        if (!v4)
        {
          __break(1u);
          return result;
        }

        v10 = *(v9 + 8);
        v11 = *(v9 + 16);
        v12 = *(v9 + 24);
        v13 = *(v9 + 48);
        v14 = *(v9 - 32);
        *(v9 + 8) = *(v9 - 48);
        v15 = *(v9 + 32);
        *(v9 + 24) = v14;
        *(v9 + 40) = *(v9 - 16);
        *(v9 + 56) = *v9;
        *(v9 - 48) = v10;
        *(v9 - 40) = v11;
        *(v9 - 32) = v12;
        *(v9 - 24) = v15;
        *(v9 - 8) = v13;
        *v9 = v7;
        v9 -= 56;
      }

      while (!__CFADD__(v8++, 1));
      ++a3;
      v5 += 56;
      --v6;
      if (a3 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

uint64_t sub_2314102B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v57 = sub_231476CA8();
  v8 = *(v57 - 8);
  v9 = MEMORY[0x28223BE20](v57);
  v56 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v55 = &v41 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D900, &qword_2314795B8);
  v13 = MEMORY[0x28223BE20](v12);
  v50 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v54 = &v41 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v53 = &v41 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v62 = &v41 - v20;
  result = MEMORY[0x28223BE20](v19);
  v61 = &v41 - v23;
  v43 = a2;
  if (a3 != a2)
  {
    v24 = *a4;
    v25 = *(v22 + 72);
    v51 = (v8 + 8);
    v52 = (v8 + 16);
    v26 = v24 + v25 * (a3 - 1);
    v48 = -v25;
    v49 = v24;
    v27 = a1 - a3;
    v42 = v25;
    v28 = v24 + v25 * a3;
    v60 = v12;
    while (2)
    {
      v46 = v26;
      v47 = a3;
      v44 = v28;
      v45 = v27;
      v58 = v27;
      do
      {
        v29 = v61;
        sub_2313E95CC(v28, v61, &qword_27DD4D900, &qword_2314795B8);
        v30 = v62;
        sub_2313E95CC(v26, v62, &qword_27DD4D900, &qword_2314795B8);
        v31 = v53;
        sub_2313E95CC(v29, v53, &qword_27DD4D900, &qword_2314795B8);

        v32 = *(v12 + 48);
        v59 = *v52;
        v33 = v55;
        v34 = v57;
        v59(v55, v31 + v32, v57);
        sub_231413E84(v31 + v32, type metadata accessor for HistoryStats);
        v35 = v54;
        sub_2313E95CC(v30, v54, &qword_27DD4D900, &qword_2314795B8);

        v36 = *(v60 + 48);
        v37 = v56;
        v59(v56, v35 + v36, v34);
        sub_231413E84(v35 + v36, type metadata accessor for HistoryStats);
        LOBYTE(v29) = sub_231476C08();
        v38 = *v51;
        v12 = v60;
        (*v51)(v37, v34);
        v38(v33, v34);
        sub_2313E937C(v62, &qword_27DD4D900, &qword_2314795B8);
        result = sub_2313E937C(v61, &qword_27DD4D900, &qword_2314795B8);
        if ((v29 & 1) == 0)
        {
          break;
        }

        if (!v49)
        {
          __break(1u);
          return result;
        }

        v39 = v50;
        sub_2314125B8(v28, v50);
        swift_arrayInitWithTakeFrontToBack();
        result = sub_2314125B8(v39, v26);
        v26 += v48;
        v28 += v48;
      }

      while (!__CFADD__(v58++, 1));
      a3 = v47 + 1;
      v26 = v46 + v42;
      v27 = v45 - 1;
      v28 = v44 + v42;
      if (v47 + 1 != v43)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_23141070C(double **result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v96 = MEMORY[0x277D84F90];
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = MEMORY[0x277D84F90];
    v91 = a4;
    while (1)
    {
      v9 = v7 + 1;
      if (v7 + 1 < v6)
      {
        v10 = *(*a3 + 56 * v9 + 48);
        v11 = *a3 + 56 * v7;
        v12 = *(v11 + 48);
        v13 = (v11 + 160);
        v14 = v7 + 2;
        v15 = v10;
        while (1)
        {
          v16 = v14;
          if (++v9 >= v6)
          {
            break;
          }

          v17 = *v13;
          v13 += 7;
          v18 = (v12 < v10) ^ (v15 >= v17);
          ++v14;
          v15 = v17;
          if ((v18 & 1) == 0)
          {
            goto LABEL_9;
          }
        }

        v9 = v6;
LABEL_9:
        if (v12 < v10)
        {
          if (v9 < v7)
          {
            goto LABEL_108;
          }

          if (v7 < v9)
          {
            if (v6 >= v16)
            {
              v6 = v16;
            }

            v19 = 56 * v6 - 16;
            v20 = 56 * v7 + 40;
            v21 = v9;
            v22 = v7;
            do
            {
              if (v22 != --v21)
              {
                v23 = *a3;
                if (!*a3)
                {
                  goto LABEL_113;
                }

                v24 = (v23 + v20);
                v25 = *(v23 + v20 - 40);
                v26 = v23 + v19;
                v27 = *(v24 - 3);
                v28 = *(v24 - 1);
                v29 = *v24;
                v30 = *(v26 - 24);
                v31 = *(v26 - 8);
                v32 = *(v26 + 8);
                *(v24 - 40) = *(v26 - 40);
                *(v24 + 1) = v32;
                *(v24 - 8) = v31;
                *(v24 - 24) = v30;
                *(v26 - 40) = v25;
                *(v26 - 24) = v27;
                *(v26 - 16) = v28;
                *v26 = v29;
              }

              ++v22;
              v19 -= 56;
              v20 += 56;
            }

            while (v22 < v21);
            v6 = a3[1];
          }
        }
      }

      if (v9 < v6)
      {
        if (__OFSUB__(v9, v7))
        {
          goto LABEL_107;
        }

        if (v9 - v7 < a4)
        {
          if (__OFADD__(v7, a4))
          {
            goto LABEL_109;
          }

          if (v7 + a4 < v6)
          {
            v6 = v7 + a4;
          }

          if (v6 < v7)
          {
LABEL_110:
            __break(1u);
LABEL_111:
            __break(1u);
LABEL_112:
            __break(1u);
LABEL_113:
            __break(1u);
LABEL_114:
            __break(1u);
LABEL_115:
            __break(1u);
            return;
          }

          if (v9 != v6)
          {
            v33 = *a3;
            v34 = *a3 + 56 * v9 - 8;
            v35 = v7 - v9;
            do
            {
              v36 = *(v33 + 56 * v9 + 48);
              v37 = v35;
              v38 = v34;
              do
              {
                if (*v38 >= v36)
                {
                  break;
                }

                if (!v33)
                {
                  goto LABEL_111;
                }

                v39 = *(v38 + 8);
                v40 = *(v38 + 16);
                v41 = *(v38 + 24);
                v42 = *(v38 + 48);
                v43 = *(v38 - 32);
                *(v38 + 8) = *(v38 - 48);
                v44 = *(v38 + 32);
                *(v38 + 24) = v43;
                *(v38 + 40) = *(v38 - 16);
                *(v38 + 56) = *v38;
                *(v38 - 48) = v39;
                *(v38 - 40) = v40;
                *(v38 - 32) = v41;
                *(v38 - 24) = v44;
                *(v38 - 8) = v42;
                *v38 = v36;
                v38 -= 56;
              }

              while (!__CFADD__(v37++, 1));
              ++v9;
              v34 += 56;
              --v35;
            }

            while (v9 != v6);
            v9 = v6;
          }
        }
      }

      if (v9 < v7)
      {
        goto LABEL_106;
      }

      v93 = v9;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_23141CD28();
        v8 = v89;
      }

      v46 = v8[2];
      v47 = v46 + 1;
      if (v46 >= v8[3] >> 1)
      {
        sub_23141CD28();
        v8 = v90;
      }

      v8[2] = v47;
      v48 = v8 + 4;
      v49 = &v8[2 * v46 + 4];
      *v49 = v7;
      v49[1] = v93;
      v94 = *result;
      if (!*result)
      {
        goto LABEL_114;
      }

      if (v46)
      {
        while (1)
        {
          v50 = v47 - 1;
          v51 = &v48[2 * v47 - 2];
          v52 = &v8[2 * v47];
          if (v47 >= 4)
          {
            break;
          }

          if (v47 == 3)
          {
            v53 = v8[4];
            v54 = v8[5];
            v63 = __OFSUB__(v54, v53);
            v55 = v54 - v53;
            v56 = v63;
LABEL_56:
            if (v56)
            {
              goto LABEL_96;
            }

            v68 = *v52;
            v67 = v52[1];
            v69 = __OFSUB__(v67, v68);
            v70 = v67 - v68;
            v71 = v69;
            if (v69)
            {
              goto LABEL_99;
            }

            v72 = v51[1];
            v73 = v72 - *v51;
            if (__OFSUB__(v72, *v51))
            {
              goto LABEL_102;
            }

            if (__OFADD__(v70, v73))
            {
              goto LABEL_104;
            }

            if (v70 + v73 >= v55)
            {
              if (v55 < v73)
              {
                v50 = v47 - 2;
              }

              goto LABEL_78;
            }

            goto LABEL_71;
          }

          if (v47 < 2)
          {
            goto LABEL_98;
          }

          v75 = *v52;
          v74 = v52[1];
          v63 = __OFSUB__(v74, v75);
          v70 = v74 - v75;
          v71 = v63;
LABEL_71:
          if (v71)
          {
            goto LABEL_101;
          }

          v77 = *v51;
          v76 = v51[1];
          v63 = __OFSUB__(v76, v77);
          v78 = v76 - v77;
          if (v63)
          {
            goto LABEL_103;
          }

          if (v78 < v70)
          {
            goto LABEL_85;
          }

LABEL_78:
          if (v50 - 1 >= v47)
          {
            __break(1u);
LABEL_91:
            __break(1u);
LABEL_92:
            __break(1u);
LABEL_93:
            __break(1u);
LABEL_94:
            __break(1u);
LABEL_95:
            __break(1u);
LABEL_96:
            __break(1u);
LABEL_97:
            __break(1u);
LABEL_98:
            __break(1u);
LABEL_99:
            __break(1u);
LABEL_100:
            __break(1u);
LABEL_101:
            __break(1u);
LABEL_102:
            __break(1u);
LABEL_103:
            __break(1u);
LABEL_104:
            __break(1u);
LABEL_105:
            __break(1u);
LABEL_106:
            __break(1u);
LABEL_107:
            __break(1u);
LABEL_108:
            __break(1u);
LABEL_109:
            __break(1u);
            goto LABEL_110;
          }

          if (!*a3)
          {
            goto LABEL_112;
          }

          v82 = &v48[2 * v50 - 2];
          v83 = *v82;
          v84 = &v48[2 * v50];
          v85 = v84[1];
          sub_231411AB0((*a3 + 56 * *v82), (*a3 + 56 * *v84), *a3 + 56 * v85, v94);
          if (v5)
          {
            goto LABEL_89;
          }

          if (v85 < v83)
          {
            goto LABEL_91;
          }

          v86 = v8;
          v87 = v8[2];
          if (v50 > v87)
          {
            goto LABEL_92;
          }

          *v82 = v83;
          v82[1] = v85;
          if (v50 >= v87)
          {
            goto LABEL_93;
          }

          v47 = v87 - 1;
          memmove(&v48[2 * v50], v84 + 2, 16 * (v87 - 1 - v50));
          v86[2] = v87 - 1;
          v88 = v87 > 2;
          v8 = v86;
          v5 = 0;
          if (!v88)
          {
            goto LABEL_85;
          }
        }

        v57 = &v48[2 * v47];
        v58 = *(v57 - 8);
        v59 = *(v57 - 7);
        v63 = __OFSUB__(v59, v58);
        v60 = v59 - v58;
        if (v63)
        {
          goto LABEL_94;
        }

        v62 = *(v57 - 6);
        v61 = *(v57 - 5);
        v63 = __OFSUB__(v61, v62);
        v55 = v61 - v62;
        v56 = v63;
        if (v63)
        {
          goto LABEL_95;
        }

        v64 = v52[1];
        v65 = v64 - *v52;
        if (__OFSUB__(v64, *v52))
        {
          goto LABEL_97;
        }

        v63 = __OFADD__(v55, v65);
        v66 = v55 + v65;
        if (v63)
        {
          goto LABEL_100;
        }

        if (v66 >= v60)
        {
          v80 = *v51;
          v79 = v51[1];
          v63 = __OFSUB__(v79, v80);
          v81 = v79 - v80;
          if (v63)
          {
            goto LABEL_105;
          }

          if (v55 < v81)
          {
            v50 = v47 - 2;
          }

          goto LABEL_78;
        }

        goto LABEL_56;
      }

LABEL_85:
      v6 = a3[1];
      v7 = v93;
      a4 = v91;
      if (v93 >= v6)
      {
        v96 = v8;
        break;
      }
    }
  }

  if (!*result)
  {
    goto LABEL_115;
  }

  sub_231411978(&v96, *result, a3);
LABEL_89:
}

void sub_231410C60(unint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v151 = a1;
  v173 = sub_231476CA8();
  v6 = *(v173 - 8);
  v7 = MEMORY[0x28223BE20](v173);
  v172 = &v147 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v171 = &v147 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D900, &qword_2314795B8);
  v160 = *(v10 - 8);
  v11 = MEMORY[0x28223BE20](v10);
  v155 = &v147 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v166 = &v147 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v170 = &v147 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v169 = &v147 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v178 = &v147 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v177 = &v147 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v25 = &v147 - v24;
  v26 = MEMORY[0x28223BE20](v23);
  v28 = &v147 - v27;
  v161 = a3;
  v29 = a3[1];
  if (v29 < 1)
  {
    v31 = MEMORY[0x277D84F90];
LABEL_106:
    v178 = *v151;
    if (!v178)
    {
      goto LABEL_148;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_108;
    }

    goto LABEL_142;
  }

  v30 = 0;
  v168 = (v6 + 16);
  v167 = (v6 + 8);
  v174 = v26;
  v31 = MEMORY[0x277D84F90];
  v152 = a4;
  v148 = &v147 - v27;
  v157 = v25;
  while (1)
  {
    v32 = v30;
    v33 = v30 + 1;
    if (v33 >= v29)
    {
      goto LABEL_33;
    }

    v164 = v29;
    v149 = v31;
    v34 = v28;
    v35 = *v161;
    v36 = *(v160 + 72);
    v163 = v33;
    v37 = v35 + v36 * v33;
    v31 = &qword_2314795B8;
    sub_2313E95CC(v37, v28, &qword_27DD4D900, &qword_2314795B8);
    sub_2313E95CC(v35 + v36 * v32, v25, &qword_27DD4D900, &qword_2314795B8);
    v38 = v162;
    LODWORD(v159) = sub_23140ED90(v34, v25);
    v162 = v38;
    if (v38)
    {
      sub_2313E937C(v25, &qword_27DD4D900, &qword_2314795B8);
      sub_2313E937C(v34, &qword_27DD4D900, &qword_2314795B8);
LABEL_116:

      return;
    }

    sub_2313E937C(v25, &qword_27DD4D900, &qword_2314795B8);
    sub_2313E937C(v34, &qword_27DD4D900, &qword_2314795B8);
    v150 = v32;
    v39 = v32 + 2;
    v40 = (v35 + v36 * (v32 + 2));
    v33 = v163;
    v41 = v164;
    v42 = v174;
    v158 = v36;
    while (1)
    {
      v43 = v39;
      v44 = v33 + 1;
      if (v44 >= v41)
      {
        break;
      }

      v175 = v39;
      v176 = v40;
      v45 = v177;
      v163 = v44;
      sub_2313E95CC(v40, v177, &qword_27DD4D900, &qword_2314795B8);
      v165 = v37;
      v46 = v178;
      sub_2313E95CC(v37, v178, &qword_27DD4D900, &qword_2314795B8);
      v47 = v45;
      v48 = v169;
      sub_2313E95CC(v47, v169, &qword_27DD4D900, &qword_2314795B8);

      v49 = *(v42 + 48);
      v50 = *v168;
      v51 = v171;
      v52 = v173;
      (*v168)(v171, v48 + v49, v173);
      v31 = type metadata accessor for HistoryStats;
      sub_231413E84(v48 + v49, type metadata accessor for HistoryStats);
      v53 = v170;
      sub_2313E95CC(v46, v170, &qword_27DD4D900, &qword_2314795B8);

      v54 = *(v174 + 48);
      v55 = v172;
      v50(v172, v53 + v54, v52);
      sub_231413E84(v53 + v54, type metadata accessor for HistoryStats);
      LODWORD(v54) = sub_231476C08() & 1;
      v56 = *v167;
      v57 = v55;
      v25 = v157;
      (*v167)(v57, v52);
      v58 = v51;
      v42 = v174;
      v59 = v52;
      v36 = v158;
      v56(v58, v59);
      sub_2313E937C(v178, &qword_27DD4D900, &qword_2314795B8);
      sub_2313E937C(v177, &qword_27DD4D900, &qword_2314795B8);
      v43 = v175;
      v41 = v164;
      v40 = v176 + v36;
      v37 = v165 + v36;
      v39 = v175 + 1;
      v33 = v163;
      if ((v159 & 1) != v54)
      {
        goto LABEL_10;
      }
    }

    v33 = v41;
LABEL_10:
    if ((v159 & 1) == 0)
    {
      a4 = v152;
LABEL_31:
      v31 = v149;
      v32 = v150;
      goto LABEL_33;
    }

    v32 = v150;
    a4 = v152;
    if (v33 < v150)
    {
      goto LABEL_141;
    }

    if (v150 < v33)
    {
      if (v41 >= v43)
      {
        v60 = v43;
      }

      else
      {
        v60 = v41;
      }

      v163 = v33;
      v61 = v36 * (v60 - 1);
      v62 = v36 * v60;
      v63 = v150 * v36;
      v64 = v33;
      do
      {
        if (v32 != --v64)
        {
          v65 = *v161;
          if (!*v161)
          {
            goto LABEL_146;
          }

          sub_2314125B8(v65 + v63, v155);
          v66 = v63 < v61 || v65 + v63 >= (v65 + v62);
          if (v66)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v63 != v61)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          sub_2314125B8(v155, v65 + v61);
          a4 = v152;
          v33 = v163;
        }

        ++v32;
        v61 -= v36;
        v62 -= v36;
        v63 += v36;
      }

      while (v32 < v64);
      goto LABEL_31;
    }

    v31 = v149;
LABEL_33:
    v67 = v161[1];
    if (v33 >= v67)
    {
      goto LABEL_53;
    }

    v68 = v33;
    v109 = __OFSUB__(v33, v32);
    v69 = v33 - v32;
    if (v109)
    {
      goto LABEL_138;
    }

    if (v69 < a4)
    {
      break;
    }

    v33 = v68;
LABEL_53:
    if (v33 < v32)
    {
      goto LABEL_137;
    }

    v163 = v33;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_23141CD28();
      v31 = v137;
    }

    v91 = *(v31 + 2);
    v92 = v91 + 1;
    v93 = v163;
    if (v91 >= *(v31 + 3) >> 1)
    {
      sub_23141CD28();
      v93 = v163;
      v31 = v138;
    }

    *(v31 + 2) = v92;
    v94 = v31 + 32;
    v95 = &v31[16 * v91 + 32];
    *v95 = v32;
    *(v95 + 1) = v93;
    v176 = *v151;
    if (!v176)
    {
      goto LABEL_147;
    }

    if (v91)
    {
      while (1)
      {
        v96 = v92 - 1;
        v97 = &v94[16 * v92 - 16];
        v98 = &v31[16 * v92];
        if (v92 >= 4)
        {
          break;
        }

        if (v92 == 3)
        {
          v99 = *(v31 + 4);
          v100 = *(v31 + 5);
          v109 = __OFSUB__(v100, v99);
          v101 = v100 - v99;
          v102 = v109;
LABEL_73:
          if (v102)
          {
            goto LABEL_124;
          }

          v114 = *v98;
          v113 = *(v98 + 1);
          v115 = __OFSUB__(v113, v114);
          v116 = v113 - v114;
          v117 = v115;
          if (v115)
          {
            goto LABEL_127;
          }

          v118 = *(v97 + 1);
          v119 = v118 - *v97;
          if (__OFSUB__(v118, *v97))
          {
            goto LABEL_130;
          }

          if (__OFADD__(v116, v119))
          {
            goto LABEL_132;
          }

          if (v116 + v119 >= v101)
          {
            if (v101 < v119)
            {
              v96 = v92 - 2;
            }

            goto LABEL_95;
          }

          goto LABEL_88;
        }

        if (v92 < 2)
        {
          goto LABEL_126;
        }

        v121 = *v98;
        v120 = *(v98 + 1);
        v109 = __OFSUB__(v120, v121);
        v116 = v120 - v121;
        v117 = v109;
LABEL_88:
        if (v117)
        {
          goto LABEL_129;
        }

        v123 = *v97;
        v122 = *(v97 + 1);
        v109 = __OFSUB__(v122, v123);
        v124 = v122 - v123;
        if (v109)
        {
          goto LABEL_131;
        }

        if (v124 < v116)
        {
          goto LABEL_102;
        }

LABEL_95:
        if (v96 - 1 >= v92)
        {
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
LABEL_138:
          __break(1u);
LABEL_139:
          __break(1u);
          goto LABEL_140;
        }

        if (!*v161)
        {
          goto LABEL_144;
        }

        v128 = &v94[16 * v96 - 16];
        v129 = *v128;
        v130 = v96;
        v131 = &v94[16 * v96];
        v132 = *(v131 + 1);
        v133 = v162;
        sub_231411C70(*v161 + *(v160 + 72) * *v128, *v161 + *(v160 + 72) * *v131, *v161 + *(v160 + 72) * v132, v176);
        v162 = v133;
        if (v133)
        {
          goto LABEL_116;
        }

        if (v132 < v129)
        {
          goto LABEL_119;
        }

        v134 = v25;
        v135 = v31;
        v31 = *(v31 + 2);
        if (v130 > v31)
        {
          goto LABEL_120;
        }

        *v128 = v129;
        *(v128 + 1) = v132;
        if (v130 >= v31)
        {
          goto LABEL_121;
        }

        v92 = (v31 - 1);
        sub_231449110(v131 + 16, &v31[-v130 - 1], v131);
        *(v135 + 2) = v31 - 1;
        v136 = v31 > 2;
        v31 = v135;
        v25 = v134;
        if (!v136)
        {
          goto LABEL_102;
        }
      }

      v103 = &v94[16 * v92];
      v104 = *(v103 - 8);
      v105 = *(v103 - 7);
      v109 = __OFSUB__(v105, v104);
      v106 = v105 - v104;
      if (v109)
      {
        goto LABEL_122;
      }

      v108 = *(v103 - 6);
      v107 = *(v103 - 5);
      v109 = __OFSUB__(v107, v108);
      v101 = v107 - v108;
      v102 = v109;
      if (v109)
      {
        goto LABEL_123;
      }

      v110 = *(v98 + 1);
      v111 = v110 - *v98;
      if (__OFSUB__(v110, *v98))
      {
        goto LABEL_125;
      }

      v109 = __OFADD__(v101, v111);
      v112 = v101 + v111;
      if (v109)
      {
        goto LABEL_128;
      }

      if (v112 >= v106)
      {
        v126 = *v97;
        v125 = *(v97 + 1);
        v109 = __OFSUB__(v125, v126);
        v127 = v125 - v126;
        if (v109)
        {
          goto LABEL_136;
        }

        if (v101 < v127)
        {
          v96 = v92 - 2;
        }

        goto LABEL_95;
      }

      goto LABEL_73;
    }

LABEL_102:
    v29 = v161[1];
    v30 = v163;
    a4 = v152;
    v28 = v148;
    if (v163 >= v29)
    {
      goto LABEL_106;
    }
  }

  if (__OFADD__(v32, a4))
  {
    goto LABEL_139;
  }

  if (v32 + a4 >= v67)
  {
    v70 = v161[1];
  }

  else
  {
    v70 = v32 + a4;
  }

  if (v70 < v32)
  {
LABEL_140:
    __break(1u);
LABEL_141:
    __break(1u);
LABEL_142:
    v31 = sub_2314490FC(v31);
LABEL_108:
    v139 = v31;
    v140 = (v31 + 16);
    for (i = *(v31 + 2); i >= 2; *v140 = i)
    {
      v142 = v162;
      if (!*v161)
      {
        goto LABEL_145;
      }

      v143 = &v139[16 * i];
      v31 = *v143;
      v144 = &v140[2 * i];
      v145 = *(v144 + 1);
      sub_231411C70(*v161 + *(v160 + 72) * *v143, *v161 + *(v160 + 72) * *v144, *v161 + *(v160 + 72) * v145, v178);
      v162 = v142;
      if (v142)
      {
        break;
      }

      if (v145 < v31)
      {
        goto LABEL_133;
      }

      if (i - 2 >= *v140)
      {
        goto LABEL_134;
      }

      *v143 = v31;
      *(v143 + 1) = v145;
      v146 = *v140 - i;
      if (*v140 < i)
      {
        goto LABEL_135;
      }

      i = *v140 - 1;
      sub_231449110(v144 + 16, v146, v144);
    }

    goto LABEL_116;
  }

  v33 = v68;
  if (v68 == v70)
  {
    goto LABEL_53;
  }

  v149 = v31;
  v71 = *v161;
  v72 = *(v160 + 72);
  v73 = *v161 + v72 * (v33 - 1);
  v164 = -v72;
  v150 = v32;
  v74 = v32 - v33;
  v165 = v71;
  v153 = v72;
  v75 = v71 + v33 * v72;
  v76 = v174;
  v154 = v70;
LABEL_43:
  v163 = v33;
  v156 = v75;
  v158 = v74;
  v159 = v73;
  v77 = v74;
  v78 = v73;
  while (1)
  {
    v175 = v77;
    v79 = v177;
    sub_2313E95CC(v75, v177, &qword_27DD4D900, &qword_2314795B8);
    sub_2313E95CC(v78, v178, &qword_27DD4D900, &qword_2314795B8);
    v80 = v169;
    sub_2313E95CC(v79, v169, &qword_27DD4D900, &qword_2314795B8);

    v81 = *(v76 + 48);
    v176 = *v168;
    v82 = v171;
    v83 = v173;
    v176(v171, v80 + v81, v173);
    sub_231413E84(v80 + v81, type metadata accessor for HistoryStats);
    v84 = v170;
    sub_2313E95CC(v178, v170, &qword_27DD4D900, &qword_2314795B8);

    v85 = *(v76 + 48);
    v86 = v172;
    v176(v172, v84 + v85, v83);
    sub_231413E84(v84 + v85, type metadata accessor for HistoryStats);
    v87 = sub_231476C08();
    v88 = *v167;
    (*v167)(v86, v83);
    v88(v82, v83);
    sub_2313E937C(v178, &qword_27DD4D900, &qword_2314795B8);
    sub_2313E937C(v177, &qword_27DD4D900, &qword_2314795B8);
    if ((v87 & 1) == 0)
    {
      v76 = v174;
LABEL_50:
      v33 = v163 + 1;
      v73 = v159 + v153;
      v74 = v158 - 1;
      v75 = v156 + v153;
      if (v163 + 1 == v154)
      {
        v33 = v154;
        v31 = v149;
        v25 = v157;
        v32 = v150;
        goto LABEL_53;
      }

      goto LABEL_43;
    }

    v89 = v175;
    if (!v165)
    {
      break;
    }

    v90 = v166;
    sub_2314125B8(v75, v166);
    v76 = v174;
    swift_arrayInitWithTakeFrontToBack();
    sub_2314125B8(v90, v78);
    v78 += v164;
    v75 += v164;
    v66 = __CFADD__(v89, 1);
    v77 = v89 + 1;
    if (v66)
    {
      goto LABEL_50;
    }
  }

  __break(1u);
LABEL_144:
  __break(1u);
LABEL_145:
  __break(1u);
LABEL_146:
  __break(1u);
LABEL_147:
  __break(1u);
LABEL_148:
  __break(1u);
}

uint64_t sub_231411978(uint64_t *a1, double *a2, void *a3)
{
  v4 = a1;
  v15 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_2314490FC(v15);
    v15 = result;
  }

  v12 = v4;
  *v4 = v15;
  v6 = (v15 + 16);
  for (i = *(v15 + 16); ; *v6 = i)
  {
    if (i < 2)
    {
LABEL_10:
      *v12 = v15;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v4 = (v15 + 16 * i);
    v8 = *v4;
    v9 = &v6[2 * i];
    v10 = v9[1];
    sub_231411AB0((*a3 + 56 * *v4), (*a3 + 56 * *v9), *a3 + 56 * v10, a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v10 < v8)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (i - 2 >= *v6)
    {
      goto LABEL_12;
    }

    *v4 = v8;
    v4[1] = v10;
    v11 = *v6 - i;
    if (*v6 < i)
    {
      goto LABEL_13;
    }

    i = *v6 - 1;
    result = memmove(v9, v9 + 2, 16 * v11);
  }

  *v12 = v15;
  __break(1u);
  return result;
}

uint64_t sub_231411AB0(double *a1, double *a2, unint64_t a3, double *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 56;
  v9 = (a3 - a2) / 56;
  if (v8 < v9)
  {
    sub_23141D948(a1, (a2 - a1) / 56, a4);
    v10 = &v4[7 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_28;
      }

      if (v4[6] >= v6[6])
      {
        break;
      }

      v12 = v6;
      v13 = v7 == v6;
      v6 += 7;
      if (!v13)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 7;
    }

    v12 = v4;
    v13 = v7 == v4;
    v4 += 7;
    if (v13)
    {
      goto LABEL_13;
    }

LABEL_12:
    v14 = *v12;
    v15 = *(v12 + 1);
    v16 = *(v12 + 2);
    v7[6] = v12[6];
    *(v7 + 1) = v15;
    *(v7 + 2) = v16;
    *v7 = v14;
    goto LABEL_13;
  }

  sub_23141D948(a2, (a3 - a2) / 56, a4);
  v10 = &v4[7 * v9];
LABEL_15:
  for (v5 -= 56; v10 > v4 && v6 > v7; v5 -= 56)
  {
    if (*(v6 - 1) < *(v10 - 1))
    {
      v21 = v6 - 7;
      v13 = v5 + 56 == v6;
      v6 -= 7;
      if (!v13)
      {
        v22 = *v21;
        v23 = *(v21 + 1);
        v24 = *(v21 + 2);
        *(v5 + 48) = v21[6];
        *(v5 + 16) = v23;
        *(v5 + 32) = v24;
        *v5 = v22;
        v6 = v21;
      }

      goto LABEL_15;
    }

    if (v10 != (v5 + 56))
    {
      v18 = *(v10 - 7);
      v19 = *(v10 - 5);
      v20 = *(v10 - 3);
      *(v5 + 48) = *(v10 - 1);
      *(v5 + 16) = v19;
      *(v5 + 32) = v20;
      *v5 = v18;
    }

    v10 -= 7;
  }

LABEL_28:
  v25 = (v10 - v4) / 56;
  if (v6 != v4 || v6 >= &v4[7 * v25])
  {
    memmove(v6, v4, 56 * v25);
  }

  return 1;
}

uint64_t sub_231411C70(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v85 = sub_231476CA8();
  v8 = *(v85 - 8);
  v9 = MEMORY[0x28223BE20](v85);
  v84 = &v72 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v83 = &v72 - v11;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D900, &qword_2314795B8);
  v12 = MEMORY[0x28223BE20](v91);
  v82 = &v72 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v81 = &v72 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v89 = &v72 - v17;
  result = MEMORY[0x28223BE20](v16);
  v92 = &v72 - v19;
  v21 = *(v20 + 72);
  if (!v21)
  {
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    return result;
  }

  v22 = a2 - a1 == 0x8000000000000000 && v21 == -1;
  if (v22)
  {
    goto LABEL_60;
  }

  v23 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v21 == -1)
  {
    goto LABEL_61;
  }

  v25 = (a2 - a1) / v21;
  v95 = a1;
  v94 = a4;
  v79 = (v8 + 8);
  v80 = (v8 + 16);
  v26 = v23 / v21;
  if (v25 >= v23 / v21)
  {
    sub_23141D970(a2, v23 / v21, a4);
    v46 = a4 + v26 * v21;
    v47 = -v21;
    v48 = v46;
    v87 = a1;
    v88 = a4;
    v75 = v47;
LABEL_36:
    v90 = a2;
    v49 = a2 + v47;
    v50 = a3;
    v51 = v48;
    v76 = a2 + v47;
    v74 = v48;
    while (1)
    {
      if (v46 <= a4)
      {
        v95 = v90;
        v93 = v51;
        goto LABEL_58;
      }

      if (v90 <= a1)
      {
        break;
      }

      v73 = v51;
      v86 = v50 + v47;
      v77 = v46 + v47;
      v78 = v50;
      v52 = v92;
      sub_2313E95CC(v46 + v47, v92, &qword_27DD4D900, &qword_2314795B8);
      sub_2313E95CC(v49, v89, &qword_27DD4D900, &qword_2314795B8);
      v53 = v46;
      v54 = v81;
      sub_2313E95CC(v52, v81, &qword_27DD4D900, &qword_2314795B8);

      v55 = v91;
      v56 = *(v91 + 48);
      v57 = *v80;
      v58 = v83;
      v59 = v85;
      (*v80)(v83, v54 + v56, v85);
      sub_231413E84(v54 + v56, type metadata accessor for HistoryStats);
      v60 = v82;
      sub_2313E95CC(v89, v82, &qword_27DD4D900, &qword_2314795B8);

      v61 = *(v55 + 48);
      v62 = v84;
      v57(v84, v60 + v61, v59);
      sub_231413E84(v60 + v61, type metadata accessor for HistoryStats);
      v63 = sub_231476C08();
      v64 = *v79;
      (*v79)(v62, v59);
      v64(v58, v59);
      sub_2313E937C(v89, &qword_27DD4D900, &qword_2314795B8);
      sub_2313E937C(v92, &qword_27DD4D900, &qword_2314795B8);
      if (v63)
      {
        v46 = v53;
        a3 = v86;
        v69 = v78 < v90 || v86 >= v90;
        a4 = v88;
        if (v69)
        {
          a2 = v76;
          swift_arrayInitWithTakeFrontToBack();
          v48 = v73;
          a1 = v87;
          v47 = v75;
        }

        else
        {
          v70 = v73;
          v48 = v73;
          v47 = v75;
          v71 = v76;
          a2 = v76;
          a1 = v87;
          if (v78 != v90)
          {
            swift_arrayInitWithTakeBackToFront();
            a2 = v71;
            v48 = v70;
          }
        }

        goto LABEL_36;
      }

      v65 = v86;
      v66 = v78 < v53 || v86 >= v53;
      a4 = v88;
      if (v66)
      {
        v67 = v77;
        swift_arrayInitWithTakeFrontToBack();
        v50 = v65;
        v46 = v67;
        v51 = v67;
        a1 = v87;
        v47 = v75;
        v49 = v76;
        v48 = v74;
      }

      else
      {
        v68 = v77;
        v51 = v77;
        v22 = v53 == v78;
        v50 = v86;
        v46 = v77;
        a1 = v87;
        v47 = v75;
        v49 = v76;
        v48 = v74;
        if (!v22)
        {
          swift_arrayInitWithTakeBackToFront();
          v50 = v65;
          v46 = v68;
          v51 = v68;
        }
      }
    }

    v95 = v90;
    v93 = v48;
  }

  else
  {
    sub_23141D970(a1, (a2 - a1) / v21, a4);
    v77 = v21;
    v78 = a4 + v25 * v21;
    v93 = v78;
    v86 = a3;
    while (a4 < v78 && a2 < a3)
    {
      v87 = a1;
      v28 = v92;
      sub_2313E95CC(a2, v92, &qword_27DD4D900, &qword_2314795B8);
      v29 = v89;
      sub_2313E95CC(a4, v89, &qword_27DD4D900, &qword_2314795B8);
      v30 = v28;
      v31 = v81;
      sub_2313E95CC(v30, v81, &qword_27DD4D900, &qword_2314795B8);

      v32 = v91;
      v33 = *(v91 + 48);
      v88 = a4;
      v34 = *v80;
      v35 = v83;
      v36 = v85;
      (*v80)(v83, v31 + v33, v85);
      v90 = a2;
      sub_231413E84(v31 + v33, type metadata accessor for HistoryStats);
      v37 = v82;
      sub_2313E95CC(v29, v82, &qword_27DD4D900, &qword_2314795B8);

      v38 = *(v32 + 48);
      v39 = v84;
      v34(v84, v37 + v38, v36);
      sub_231413E84(v37 + v38, type metadata accessor for HistoryStats);
      v40 = sub_231476C08();
      v41 = *v79;
      (*v79)(v39, v36);
      v41(v35, v36);
      sub_2313E937C(v29, &qword_27DD4D900, &qword_2314795B8);
      sub_2313E937C(v92, &qword_27DD4D900, &qword_2314795B8);
      if (v40)
      {
        v42 = v77;
        a2 = v90 + v77;
        v43 = v87;
        a4 = v88;
        if (v87 < v90 || v87 >= a2)
        {
          swift_arrayInitWithTakeFrontToBack();
          a3 = v86;
        }

        else
        {
          a3 = v86;
          if (v87 != v90)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      else
      {
        a2 = v90;
        v42 = v77;
        v43 = v87;
        a4 = v88 + v77;
        if (v87 < v88 || v87 >= a4)
        {
          swift_arrayInitWithTakeFrontToBack();
          a3 = v86;
        }

        else
        {
          a3 = v86;
          if (v87 != v88)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v94 = a4;
      }

      a1 = v43 + v42;
      v95 = a1;
    }
  }

LABEL_58:
  sub_231412440(&v95, &v94, &v93);
  return 1;
}

uint64_t sub_231412440(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D900, &qword_2314795B8);
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_20:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_20;
  }

  v9 = v4 + (v5 - v4) / v7 * v7;
  if (v3 < v4 || v3 >= v9)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

void *sub_231412578(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_231412980(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_2314125B8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D900, &qword_2314795B8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_231412628(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a6)
  {
    sub_231412668(result, a2, a3, a4, a5);
  }

  return result;
}

uint64_t sub_231412668(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5 != -1)
  {
    return sub_23141267C(result, a2, a3, a4, a5);
  }

  return result;
}

uint64_t sub_23141267C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  switch(a5)
  {
    case 0:
    case 1:
    case 2:
    case 4:

      goto LABEL_4;
    case 3:

LABEL_4:

      break;
    default:
      return v6;
  }

  return v6;
}

uint64_t sub_231412700(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  switch(a5)
  {
    case 0:
    case 1:
    case 2:
    case 4:

      goto LABEL_4;
    case 3:

LABEL_4:

      break;
    default:
      return v6;
  }

  return v6;
}

void *sub_231412784(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2314130E8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2314127E8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2314131F0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_231412808(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2314132E8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_231412828(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2314133E0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_231412980(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D590, &qword_231479830);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 24);
      if (v5)
      {
LABEL_13:
        sub_23141D894((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void sub_231412A88(char a1, uint64_t a2, char a3, uint64_t a4, uint64_t *a5, uint64_t *a6, void (*a7)(uint64_t, uint64_t, void *), uint64_t a8)
{
  if ((a3 & 1) == 0)
  {
    v11 = a2;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_13_3();
  if (v12 == v13)
  {
LABEL_7:
    v14 = *(a4 + 16);
    if (v11 <= v14)
    {
      v15 = *(a4 + 16);
    }

    else
    {
      v15 = v11;
    }

    if (v15)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
      v16 = swift_allocObject();
      v17 = _swift_stdlib_malloc_size(v16);
      v16[2] = v14;
      v16[3] = 2 * ((v17 - 32) / 16);
      if (a1)
      {
LABEL_12:
        a7(a4 + 32, v14, v16 + 4);
        *(a4 + 16) = 0;
LABEL_15:

        return;
      }
    }

    else
    {
      v16 = MEMORY[0x277D84F90];
      if (a1)
      {
        goto LABEL_12;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_37();
  if (!v12)
  {
    OUTLINED_FUNCTION_12_3();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_231412B7C()
{
  OUTLINED_FUNCTION_54();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_13_3(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_43();
    if (v2)
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD4D9A0, &qword_2314798E8);
      v7 = OUTLINED_FUNCTION_49(v6);
      v8 = _swift_stdlib_malloc_size(v7);
      OUTLINED_FUNCTION_33(v8);
      if (v1)
      {
LABEL_8:
        v9 = OUTLINED_FUNCTION_41();
        sub_23141D8B8(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D628, &unk_2314798F0);
    OUTLINED_FUNCTION_48(v12, v13, v14, v12);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_37();
  if (!v4)
  {
    OUTLINED_FUNCTION_12_3();
    goto LABEL_6;
  }

  __break(1u);
}

uint64_t sub_231412C48(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D5E8, &qword_23147CCC0);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 40);
      if (v5)
      {
LABEL_13:
        sub_23141FBCC((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D5F0, &qword_2314798B0);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_231412D60(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D5F8, &qword_2314798B8);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 40);
      if (v5)
      {
LABEL_13:
        sub_23141FBCC((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D600, &qword_2314798C0);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void sub_231412E78()
{
  OUTLINED_FUNCTION_54();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_13_3(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_43();
    if (v2)
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D618, &qword_2314798D8);
      v10 = OUTLINED_FUNCTION_49(v9);
      v11 = _swift_stdlib_malloc_size(v10);
      v6 = OUTLINED_FUNCTION_33(v11);
      if (v1)
      {
LABEL_8:
        v12 = OUTLINED_FUNCTION_41();
        sub_23141D948(v12, v13, v14);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_48(v6, v7, v8, &type metadata for AppMatcherSignals);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_37();
  if (!v4)
  {
    OUTLINED_FUNCTION_12_3();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_231412F34()
{
  OUTLINED_FUNCTION_54();
  if (v3)
  {
    OUTLINED_FUNCTION_13_3();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_37();
      if (v5)
      {
LABEL_24:
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_12_3();
    }
  }

  else
  {
    v4 = v2;
  }

  v7 = *(v0 + 16);
  if (v4 <= v7)
  {
    v8 = *(v0 + 16);
  }

  else
  {
    v8 = v4;
  }

  if (!v8)
  {
    v12 = MEMORY[0x277D84F90];
    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D620, &qword_2314798E0);
  v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D900, &qword_2314795B8) - 8);
  v10 = *(v9 + 72);
  v11 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v12 = swift_allocObject();
  v13 = _swift_stdlib_malloc_size(v12);
  if (!v10)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v13 - v11 == 0x8000000000000000 && v10 == -1)
  {
    goto LABEL_23;
  }

  v12[2] = v7;
  v12[3] = 2 * ((v13 - v11) / v10);
LABEL_18:
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D900, &qword_2314795B8) - 8);
  if (v1)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    sub_23141D970(v0 + v16, v7, v12 + v16);
    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void *sub_2314130E8(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD4D8E0, &unk_2314798A0);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 40);
      if (v5)
      {
LABEL_13:
        sub_23141FBB4((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void *sub_2314131F0(void *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 3);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 2);
    if (v7 <= v8)
    {
      v9 = *(a4 + 2);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD4D860, &qword_231479838);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 2);
      if (v5)
      {
LABEL_13:
        sub_23141D984(a4 + 32, v8, (v10 + 32));
        *(a4 + 2) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    memcpy((v10 + 32), a4 + 32, 2 * v8);
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void *sub_2314132E8(void *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 3);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 2);
    if (v7 <= v8)
    {
      v9 = *(a4 + 2);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D5C0, &unk_231479870);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 4);
      if (v5)
      {
LABEL_13:
        sub_23141D9A4(a4 + 32, v8, (v10 + 32));
        *(a4 + 2) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    memcpy((v10 + 32), a4 + 32, 4 * v8);
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void *sub_2314133E0(void *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 3);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 2);
    if (v7 <= v8)
    {
      v9 = *(a4 + 2);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D5B8, &qword_231479868);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 16);
      if (v5)
      {
LABEL_13:
        sub_23141D85C(a4 + 32, v8, (v10 + 32));
        *(a4 + 2) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    memcpy((v10 + 32), a4 + 32, 16 * v8);
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void sub_2314134D8(char a1, uint64_t a2, char a3, uint64_t a4, uint64_t *a5, uint64_t *a6, void (*a7)(uint64_t, uint64_t, void *))
{
  if ((a3 & 1) == 0)
  {
    v10 = a2;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_13_3();
  if (v11 == v12)
  {
LABEL_7:
    v13 = *(a4 + 16);
    if (v10 <= v13)
    {
      v14 = *(a4 + 16);
    }

    else
    {
      v14 = v10;
    }

    if (v14)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
      v15 = swift_allocObject();
      v16 = _swift_stdlib_malloc_size(v15);
      v15[2] = v13;
      v15[3] = 2 * ((v16 - 32) / 8);
      if (a1)
      {
LABEL_12:
        a7(a4 + 32, v13, v15 + 4);
        *(a4 + 16) = 0;
LABEL_15:

        return;
      }
    }

    else
    {
      v15 = MEMORY[0x277D84F90];
      if (a1)
      {
        goto LABEL_12;
      }
    }

    memcpy(v15 + 4, (a4 + 32), 8 * v13);
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_37();
  if (!v11)
  {
    OUTLINED_FUNCTION_12_3();
    goto LABEL_7;
  }

  __break(1u);
}

uint64_t sub_2314135C4(uint64_t a1)
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

  sub_231413AA0(result, 1, sub_23141CB80);
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
  result = type metadata accessor for Entity(0);
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

uint64_t sub_2314136D8(uint64_t a1)
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

  result = sub_231413AA0(result, 1, sub_23141D410);
  v6 = *v1;
  if (!*(a1 + 16))
  {

    if (!v3)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v7 = *(v6 + 16);
  if ((*(v6 + 24) >> 1) - v7 < v3)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  memcpy((v6 + 8 * v7 + 32), (a1 + 32), 8 * v3);

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

uint64_t sub_2314137BC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_231413820(uint64_t result, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 2u)
  {
  }

  return v3;
}

uint64_t sub_231413840(uint64_t result, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 2u)
  {
  }

  return v3;
}

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t get_enum_tag_for_layout_string_13SiriRemembers18AppMatchResolutionO(uint64_t a1)
{
  if ((*(a1 + 16) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_2314138AC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_2314138EC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_23141393C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFD && *(a1 + 17))
    {
      v2 = *a1 + 252;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 3)
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

uint64_t sub_23141397C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_2314139C0(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    *(result + 8) = 0;
    LOBYTE(a2) = 3;
  }

  *(result + 16) = a2;
  return result;
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_231413A04(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_231413A44(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_231413AA0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = *v3;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v6;
  if (!result || a1 > *(v6 + 24) >> 1)
  {
    result = a3();
    *v3 = result;
  }

  return result;
}

void sub_231413B18(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_231477E58();

  [a3 setContactIdentifier_];
}

uint64_t sub_231413B7C(void *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D900, &qword_2314795B8);
  v37 = *(v40 - 8);
  v8 = MEMORY[0x28223BE20](v40);
  v39 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v8);
  v38 = &v34 - v11;
  v12 = a4 + 64;
  v13 = -1 << *(a4 + 32);
  if (-v13 < 64)
  {
    v14 = ~(-1 << -v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(a4 + 64);
  if (!a2)
  {
    v17 = 0;
    a3 = 0;
LABEL_22:
    *a1 = a4;
    a1[1] = v12;
    a1[2] = ~v13;
    a1[3] = v17;
    a1[4] = v15;
    return a3;
  }

  if (!a3)
  {
    v17 = 0;
    goto LABEL_22;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v34 = -1 << *(a4 + 32);
    v35 = a1;
    v16 = 0;
    v17 = 0;
    v18 = (63 - v13) >> 6;
    v36 = a3;
    while (1)
    {
      if (v16 >= a3)
      {
        goto LABEL_25;
      }

      v19 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        goto LABEL_26;
      }

      if (!v15)
      {
        while (1)
        {
          v20 = v17 + 1;
          if (__OFADD__(v17, 1))
          {
            break;
          }

          if (v20 >= v18)
          {
            v15 = 0;
            a3 = v16;
            a1 = v35;
            goto LABEL_20;
          }

          v15 = *(v12 + 8 * v20);
          ++v17;
          if (v15)
          {
            v41 = a2;
            goto LABEL_16;
          }
        }

        __break(1u);
LABEL_25:
        __break(1u);
LABEL_26:
        __break(1u);
        goto LABEL_27;
      }

      v41 = a2;
      v20 = v17;
LABEL_16:
      v21 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v22 = v21 | (v20 << 6);
      v23 = a4;
      v24 = *(a4 + 48);
      v25 = *(a4 + 56);
      v26 = (v24 + 16 * v22);
      v27 = *v26;
      v28 = v26[1];
      v29 = v25 + *(*(type metadata accessor for HistoryStats(0) - 8) + 72) * v22;
      v30 = v39;
      sub_231413E28(v29, &v39[*(v40 + 48)], type metadata accessor for HistoryStats);
      *v30 = v27;
      v30[1] = v28;
      v31 = v30;
      v32 = v38;
      sub_2314125B8(v31, v38);
      v33 = v41;
      sub_2314125B8(v32, v41);
      a3 = v36;
      if (v19 == v36)
      {
        break;
      }

      a2 = v33 + *(v37 + 72);

      v16 = v19;
      v17 = v20;
      a4 = v23;
    }

    v17 = v20;
    a1 = v35;
    a4 = v23;
LABEL_20:
    v13 = v34;
    goto LABEL_22;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_231413E28(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_3();
  v4 = OUTLINED_FUNCTION_17();
  v5(v4);
  return a2;
}

uint64_t sub_231413E84(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_3();
  (*(v3 + 8))(a1);
  return a1;
}

void OUTLINED_FUNCTION_29_0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_33(uint64_t result)
{
  *(v2 + 16) = v1;
  *(v2 + 24) = 2 * ((result - 32) / v3);
  return result;
}

__n128 OUTLINED_FUNCTION_40_0()
{
  v2 = *(v0 + 16);
  *(v1 - 144) = *v0;
  *(v1 - 128) = v2;
  return *(v0 + 25);
}

uint64_t OUTLINED_FUNCTION_50(uint64_t a1, uint64_t a2)
{

  return sub_2314787C8();
}

void *static AppSelectionUtilityHelper.equivalentInteractionIntentsFor(intent:)(void *a1)
{
  v2 = [a1 _className];
  v3 = sub_231477E68();
  v5 = v4;

  v6 = v3 == 0xD000000000000011 && 0x8000000231481C90 == v5;
  if (v6 || (sub_2314787C8() & 1) != 0 || (v3 == 0xD000000000000016 ? (v7 = 0x8000000231481CB0 == v5) : (v7 = 0), v7))
  {

    return &unk_2846086A8;
  }

  v8 = sub_2314787C8();

  if (v8)
  {
    return &unk_2846086A8;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D610, &qword_2314798D0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_231479580;
  v10 = [a1 _className];
  v11 = sub_231477E68();
  v13 = v12;

  *(v9 + 32) = v11;
  *(v9 + 40) = v13;
  return v9;
}

uint64_t static AppSelectionUtilityHelper.getBundleId(bundle:)(uint64_t a1, unint64_t a2)
{
  v2 = a1;
  sub_23141413C(124, 0xE100000000000000, a1, a2);
  if (v3)
  {
  }

  else
  {
    v4 = sub_231478088();
    v2 = MEMORY[0x23192DFC0](v4);
  }

  return v2;
}

unint64_t sub_23141413C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v6 = a3 & 0xFFFFFFFFFFFFLL;
  }

  v7 = 4 * v6;
  for (i = 15; ; i = sub_231477F58())
  {
    if (i >> 14 == v7)
    {
      return 0;
    }

    if (sub_231478068() == a1 && v9 == a2)
    {
      break;
    }

    v11 = sub_2314787C8();

    if (v11)
    {
      return i;
    }
  }

  return i;
}

uint64_t static AppSelectionUtilityHelper.getCountryCode(handleId:)(uint64_t a1, unint64_t a2)
{
  if ((sub_2313F24D8(a1, a2) & 1) == 0)
  {
    return 0;
  }

  v4 = sub_2313F2654(10, a1, a2);
  v5 = MEMORY[0x23192DFC0](v4);

  return v5;
}

uint64_t getEnumTagSinglePayload for AppSelectionUtilityHelper(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
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

_BYTE *storeEnumTagSinglePayload for AppSelectionUtilityHelper(_BYTE *result, int a2, int a3)
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

unint64_t sub_23141439C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), void (*a4)(void), void (*a5)(BOOL, uint64_t, uint64_t))
{
  v25 = a5;
  v28 = a2;
  v7 = a3(0);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v26 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v9);
  v13 = (&v25 - v12);
  v14 = 0;
  v29 = *(a1 + 16);
  v27 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v29 == v14)
    {

      return v27;
    }

    if (v14 >= *(a1 + 16))
    {
      break;
    }

    v15 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v16 = *(v8 + 72);
    sub_231414684(a1 + v15 + v16 * v14, v13, a4);
    v18 = *v13;
    v17 = v13[1];

    LOBYTE(v17) = sub_23142AEEC(v30, v18, v17);

    if (v17)
    {
      sub_23141473C(v13, v26, a4);
      v19 = v27;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v21 = v19;
      v31 = v19;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v25(0, *(v19 + 16) + 1, 1);
        v21 = v31;
      }

      v23 = *(v21 + 16);
      v22 = *(v21 + 24);
      v24 = v23 + 1;
      if (v23 >= v22 >> 1)
      {
        v27 = v23 + 1;
        v25(v22 > 1, v23 + 1, 1);
        v24 = v27;
        v21 = v31;
      }

      ++v14;
      *(v21 + 16) = v24;
      v27 = v21;
      result = sub_23141473C(v26, v21 + v15 + v23 * v16, a4);
    }

    else
    {
      result = sub_2314146E4(v13, a4);
      ++v14;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_2314145E0(unint64_t a1, uint64_t (*a2)(void), void (*a3)(void), void (*a4)(BOOL, uint64_t, uint64_t))
{
  v4 = a1;
  if (*(a1 + 16) > 1uLL)
  {
    v10 = MEMORY[0x23192E2C0]();

    v4 = sub_23141439C(v8, &v10, a2, a3, a4);
  }

  else
  {
  }

  return v4;
}

uint64_t sub_231414684(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_3();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_2314146E4(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_3();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_23141473C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_3();
  (*(v5 + 32))(a2, a1);
  return a2;
}

void CLPlacemark.entityId.getter()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D630, &qword_231479970);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_231479960;
  *(inited + 32) = sub_231414BC8(v1, &selRef_name);
  *(inited + 40) = v3;
  *(inited + 48) = sub_231414BC8(v1, &selRef_thoroughfare);
  *(inited + 56) = v4;
  *(inited + 64) = sub_231414BC8(v1, &selRef_subThoroughfare);
  *(inited + 72) = v5;
  *(inited + 80) = sub_231414BC8(v1, &selRef_locality);
  *(inited + 88) = v6;
  *(inited + 96) = sub_231414BC8(v1, &selRef_subLocality);
  *(inited + 104) = v7;
  *(inited + 112) = sub_231414BC8(v1, &selRef_administrativeArea);
  *(inited + 120) = v8;
  *(inited + 128) = sub_231414BC8(v1, &selRef_subAdministrativeArea);
  *(inited + 136) = v9;
  *(inited + 144) = sub_231414BC8(v1, &selRef_postalCode);
  *(inited + 152) = v10;
  *(inited + 160) = sub_231414BC8(v1, &selRef_country);
  *(inited + 168) = v11;
  *(inited + 176) = sub_231414BC8(v1, &selRef_inlandWater);
  *(inited + 184) = v12;
  v13 = 0;
  *(inited + 192) = sub_231414BC8(v1, &selRef_ocean);
  *(inited + 200) = v14;
  v15 = MEMORY[0x277D84F90];
LABEL_2:
  v16 = 16 * v13 + 40;
  while (1)
  {
    if (v13 == 11)
    {
      swift_setDeallocating();
      sub_231414B68();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D638, qword_231479978);
      sub_2313EF69C();
      sub_231477E28();

      return;
    }

    if (v13 > 0xA)
    {
      break;
    }

    ++v13;
    v17 = v16 + 16;
    v18 = *(inited + v16);
    v16 += 16;
    if (v18)
    {
      v19 = *(inited + v17 - 24);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_23141CC58();
        v15 = v22;
      }

      v20 = *(v15 + 16);
      if (v20 >= *(v15 + 24) >> 1)
      {
        sub_23141CC58();
        v15 = v23;
      }

      *(v15 + 16) = v20 + 1;
      v21 = v15 + 16 * v20;
      *(v21 + 32) = v19;
      *(v21 + 40) = v18;
      goto LABEL_2;
    }
  }

  __break(1u);
}

uint64_t sub_231414A00@<X0>(uint64_t *a1@<X8>)
{
  CLPlacemark.entityId.getter();
  v4 = v3;
  v5 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v5 = v2 & 0xFFFFFFFFFFFFLL;
  }

  if (v5)
  {
    v6 = v2;
    a1[4] = MEMORY[0x277D84F98];
    type metadata accessor for Entity(0);
    sub_231476C98();
    *a1 = v6;
    a1[1] = v4;
    a1[2] = 0x6D6563616C504C43;
    a1[3] = 0xEB000000006B7261;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = a1[4];
    result = sub_2313F1184(v6, v4, 3, 0x73736572646461, 0xE700000000000000, isUniquelyReferenced_nonNull_native);
    a1[4] = v10;
  }

  else
  {

    sub_2313F17E0();
    swift_allocError();
    *v9 = 1;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_231414B24()
{
  swift_arrayDestroy();

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

uint64_t sub_231414B68()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D640, &qword_23147FD10);
  swift_arrayDestroy();

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

uint64_t sub_231414BC8(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = sub_231477E68();

  return v4;
}

NSObject *sub_231414C28()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D648, &qword_231479A18);
  MEMORY[0x28223BE20](v2 - 8);
  v197 = v187 - v3;
  v198 = sub_231476D48();
  OUTLINED_FUNCTION_4();
  v196 = v4;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_2();
  v195 = v7 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D650, &unk_231479A20);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v187 - v9;
  sub_231476D18();
  OUTLINED_FUNCTION_4();
  v193 = v12;
  v194 = v11;
  v13 = MEMORY[0x28223BE20](v11);
  v191 = v187 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v190 = v187 - v16;
  MEMORY[0x28223BE20](v15);
  v192 = v187 - v17;
  v18 = sub_231476998();
  OUTLINED_FUNCTION_4();
  *&v200 = v19;
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_2();
  v199 = v22 - v21;
  type metadata accessor for Entity(0);
  OUTLINED_FUNCTION_4();
  v24 = v23;
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_2();
  v28 = (v27 - v26);
  v29 = sub_231414BC8(v0, &selRef_intentType);
  if (!v30)
  {
    if (qword_280C3CF50 != -1)
    {
      OUTLINED_FUNCTION_5(&qword_280C3CF50);
    }

    v61 = sub_231477B68();
    __swift_project_value_buffer(v61, qword_280C3D970);
    v62 = sub_231477B58();
    v63 = sub_2314782A8();
    if (!os_log_type_enabled(v62, v63))
    {
      goto LABEL_19;
    }

    v64 = swift_slowAlloc();
    *v64 = 0;
    v65 = "DeviceSelectionIntent is missing intentType. Cannot extract Entity.";
    goto LABEL_18;
  }

  v31 = v29;
  v32 = v30;
  v188 = v18;
  v189 = v24;
  v33 = sub_231414BC8(v0, &selRef_remoteDeviceID);
  if (!v34)
  {

    if (qword_280C3CF50 != -1)
    {
      OUTLINED_FUNCTION_5(&qword_280C3CF50);
    }

    v66 = sub_231477B68();
    __swift_project_value_buffer(v66, qword_280C3D970);
    v62 = sub_231477B58();
    v63 = sub_2314782A8();
    if (!os_log_type_enabled(v62, v63))
    {
      goto LABEL_19;
    }

    v64 = swift_slowAlloc();
    *v64 = 0;
    v65 = "DeviceSelectionIntent is missing remoteDeviceID. Cannot extract Entity.";
LABEL_18:
    _os_log_impl(&dword_2313E1000, v62, v63, v65, v64, 2u);
    MEMORY[0x23192F1F0](v64, -1, -1);
LABEL_19:

    sub_2313F17E0();
    swift_allocError();
    *v67 = 1;
    swift_willThrow();
    return v62;
  }

  v35 = v33;
  v36 = v34;
  v187[1] = v1;
  v28[4] = MEMORY[0x277D84F98];
  sub_231476C98();
  v201 = v31;
  v202 = v32;

  MEMORY[0x23192E060](47, 0xE100000000000000);
  MEMORY[0x23192E060](v35, v36);
  MEMORY[0x23192E060](47, 0xE100000000000000);
  v203 = [v0 interactionType];
  v37 = sub_231478798();
  MEMORY[0x23192E060](v37);

  v38 = v202;
  *v28 = v201;
  v28[1] = v38;
  OUTLINED_FUNCTION_11_2();
  v28[2] = v39;
  OUTLINED_FUNCTION_10_1();
  v28[3] = v40;
  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_1_1();
  sub_2313F1184(v35, v36, 3, 0x654465746F6D6572, 0xEE00444965636976, v41);
  v28[4] = v201;
  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_1_1();
  sub_2313F1184(v31, v32, 3, 0x7954746E65746E69, 0xEA00000000006570, v42);
  OUTLINED_FUNCTION_4_1();
  v43 = [v0 interactionType];
  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_1_1();
  sub_2313F1184(v43, 0, 1, 0x7463617265746E69, 0xEF657079546E6F69, v44);
  OUTLINED_FUNCTION_4_1();
  sub_231414BC8(v0, &selRef_voiceID);
  if (v45)
  {
    OUTLINED_FUNCTION_9_1();
    OUTLINED_FUNCTION_1_1();
    v46 = OUTLINED_FUNCTION_8_2();
    sub_2313F1184(v46, v47, v48, v49, 0xE700000000000000, v50);
    OUTLINED_FUNCTION_4_1();
  }

  sub_231414BC8(v0, &selRef_roomName);
  if (v51)
  {
    OUTLINED_FUNCTION_9_1();
    OUTLINED_FUNCTION_1_1();
    v52 = OUTLINED_FUNCTION_8_2();
    sub_2313F1184(v52, v53, v54, v55, 0xE800000000000000, v56);
    OUTLINED_FUNCTION_4_1();
  }

  v57 = [v0 requestTime];
  if (v57)
  {
    v58 = v57;
    v59 = v199;
    sub_2314768D8();

    sub_231476978();
    v60 = sub_231476D38();
    if (__swift_getEnumTagSinglePayload(v10, 1, v60) == 1)
    {
      sub_23140224C(v10, &qword_27DD4D650, &unk_231479A20);
    }

    else
    {
      v68 = v190;
      sub_231476D28();
      (*(*(v60 - 8) + 8))(v10, v60);
      v69 = v192;
      v70 = v193;
      v71 = v68;
      v72 = v194;
      (*(v193 + 32))(v192, v71, v194);
      (*(v70 + 16))(v191, v69, v72);
      sub_231477EB8();
      swift_isUniquelyReferenced_nonNull_native();
      OUTLINED_FUNCTION_1_1();
      OUTLINED_FUNCTION_12_4(v73, v74, v75, 0xD000000000000014, 0x8000000231482390, v76);
      OUTLINED_FUNCTION_4_1();
      (*(v70 + 8))(v69, v72);
    }

    v77 = v197;
    sub_231476988();
    v78 = v198;
    if (__swift_getEnumTagSinglePayload(v77, 1, v198) == 1)
    {
      sub_23140224C(v77, &qword_27DD4D648, &qword_231479A18);
    }

    else
    {
      v79 = v195;
      v80 = v196;
      (*(v196 + 32))(v195, v77, v78);
      sub_2314158E4();
      sub_231478798();
      swift_isUniquelyReferenced_nonNull_native();
      OUTLINED_FUNCTION_1_1();
      OUTLINED_FUNCTION_12_4(v81, v82, v83, 0xD000000000000014, 0x8000000231482370, v84);
      OUTLINED_FUNCTION_4_1();
      (*(v80 + 8))(v79, v78);
    }

    v85 = sub_2314768F8();
    if ((v86 & 1) == 0)
    {
      v201 = v85;
      sub_231478798();
      OUTLINED_FUNCTION_9_1();
      OUTLINED_FUNCTION_1_1();
      v87 = OUTLINED_FUNCTION_8_2();
      sub_2313F1184(v87, v88, v89, 0x5474736575716572, v90, v91);
      OUTLINED_FUNCTION_4_1();
    }

    sub_231476918();
    if ((v92 & 1) == 0)
    {
      OUTLINED_FUNCTION_6_2();
      OUTLINED_FUNCTION_1_1();
      v93 = OUTLINED_FUNCTION_2_1();
      sub_2313F1184(v93, v94, v95, 0xD000000000000010, v96, v97);
      OUTLINED_FUNCTION_4_1();
    }

    sub_2314768C8();
    if ((v98 & 1) == 0)
    {
      OUTLINED_FUNCTION_6_2();
      OUTLINED_FUNCTION_1_1();
      v99 = OUTLINED_FUNCTION_2_1();
      sub_2313F1184(v99, v100, v101, v102, v103, v104);
      OUTLINED_FUNCTION_4_1();
    }

    sub_231476958();
    if ((v105 & 1) == 0)
    {
      OUTLINED_FUNCTION_6_2();
      OUTLINED_FUNCTION_1_1();
      v106 = OUTLINED_FUNCTION_2_1();
      sub_2313F1184(v106, v107, v108, v109, v110, v111);
      OUTLINED_FUNCTION_4_1();
    }

    sub_231476928();
    if ((v112 & 1) == 0)
    {
      OUTLINED_FUNCTION_6_2();
      OUTLINED_FUNCTION_1_1();
      v113 = OUTLINED_FUNCTION_2_1();
      sub_2313F1184(v113, v114, v115, v116, v117, v118);
      OUTLINED_FUNCTION_4_1();
    }

    sub_2314768E8();
    if ((v119 & 1) == 0)
    {
      swift_isUniquelyReferenced_nonNull_native();
      OUTLINED_FUNCTION_1_1();
      v120 = OUTLINED_FUNCTION_2_1();
      sub_2313F1184(v120, v121, v122, 0x5474736575716572, v123, v124);
      OUTLINED_FUNCTION_4_1();
    }

    sub_231476908();
    if ((v125 & 1) == 0)
    {
      OUTLINED_FUNCTION_6_2();
      OUTLINED_FUNCTION_1_1();
      v126 = OUTLINED_FUNCTION_0_3();
      sub_2313F1184(v126, v127, v128, 0xD000000000000010, v129, v130);
      OUTLINED_FUNCTION_4_1();
    }

    sub_231476938();
    if ((v131 & 1) == 0)
    {
      OUTLINED_FUNCTION_6_2();
      OUTLINED_FUNCTION_1_1();
      v132 = OUTLINED_FUNCTION_0_3();
      sub_2313F1184(v132, v133, v134, v135, v136, v137);
      OUTLINED_FUNCTION_4_1();
    }

    sub_231476948();
    if ((v138 & 1) == 0)
    {
      OUTLINED_FUNCTION_6_2();
      OUTLINED_FUNCTION_1_1();
      v139 = OUTLINED_FUNCTION_0_3();
      sub_2313F1184(v139, v140, v141, v142, v143, v144);
      OUTLINED_FUNCTION_4_1();
    }

    sub_231476888();
    if ((v145 & 1) == 0)
    {
      OUTLINED_FUNCTION_6_2();
      OUTLINED_FUNCTION_1_1();
      v146 = OUTLINED_FUNCTION_0_3();
      sub_2313F1184(v146, v147, v148, v149, v150, v151);
      OUTLINED_FUNCTION_4_1();
    }

    sub_231476898();
    if ((v152 & 1) == 0)
    {
      OUTLINED_FUNCTION_6_2();
      OUTLINED_FUNCTION_1_1();
      v153 = OUTLINED_FUNCTION_0_3();
      sub_2313F1184(v153, v154, v155, v156, v157, v158);
      OUTLINED_FUNCTION_4_1();
    }

    sub_2314768A8();
    if ((v159 & 1) == 0)
    {
      OUTLINED_FUNCTION_6_2();
      OUTLINED_FUNCTION_1_1();
      v160 = OUTLINED_FUNCTION_0_3();
      sub_2313F1184(v160, v161, v162, v163, v164, v165);
      OUTLINED_FUNCTION_4_1();
    }

    sub_231476968();
    if ((v166 & 1) == 0)
    {
      OUTLINED_FUNCTION_6_2();
      OUTLINED_FUNCTION_1_1();
      v167 = OUTLINED_FUNCTION_0_3();
      sub_2313F1184(v167, v168, v169, v170, v171, v172);
      OUTLINED_FUNCTION_4_1();
    }

    sub_2314768B8();
    if ((v173 & 1) == 0)
    {
      OUTLINED_FUNCTION_6_2();
      OUTLINED_FUNCTION_1_1();
      v174 = OUTLINED_FUNCTION_0_3();
      sub_2313F1184(v174, v175, v176, v177, v178, v179);
      OUTLINED_FUNCTION_4_1();
    }

    (*(v200 + 8))(v59, v188);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D658, &unk_23147B6C0);
  inited = swift_initStackObject();
  v200 = xmmword_231479580;
  *(inited + 16) = xmmword_231479580;
  OUTLINED_FUNCTION_11_2();
  OUTLINED_FUNCTION_10_1();
  *(v181 + 32) = v183;
  *(v181 + 40) = v182;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D5D0, &unk_231479880);
  v184 = (*(v189 + 80) + 32) & ~*(v189 + 80);
  v185 = swift_allocObject();
  *(v185 + 16) = v200;
  sub_2313F0868(v28, v185 + v184);
  *(inited + 48) = v185;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D6B0, qword_23147B940);
  v62 = sub_231477DC8();
  sub_2313F09B4(v28);
  return v62;
}

unint64_t sub_2314158E4()
{
  result = qword_27DD4D660;
  if (!qword_27DD4D660)
  {
    sub_231476D48();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4D660);
  }

  return result;
}

unint64_t sub_23141593C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D668, qword_23147BAF0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_231479A40;
  *(inited + 32) = 0xD000000000000011;
  *(inited + 40) = 0x80000002314823B0;
  v3 = sub_231414BC8(v1, &selRef_candidateBundles);
  v5 = MEMORY[0x277D837D0];
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 80) = &protocol witness table for String;
  if (v4)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0;
  }

  if (v4)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0xE000000000000000;
  }

  *(inited + 48) = v6;
  *(inited + 56) = v7;
  *(inited + 88) = 0xD000000000000011;
  *(inited + 96) = 0x80000002314823D0;
  v8 = sub_231414BC8(v1, &selRef_candidateActions);
  *(inited + 128) = v5;
  *(inited + 136) = &protocol witness table for String;
  if (v9)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0;
  }

  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = 0xE000000000000000;
  }

  *(inited + 104) = v10;
  *(inited + 112) = v11;
  *(inited + 144) = 0xD000000000000018;
  *(inited + 152) = 0x80000002314823F0;
  result = sub_231414BC8(v1, &selRef_selectedCandidateIndex);
  if (v13)
  {
    v14 = v13;
  }

  else
  {
    result = 0;
    v14 = 0xE000000000000000;
  }

  v15 = HIBYTE(v14) & 0xF;
  v16 = result & 0xFFFFFFFFFFFFLL;
  if ((v14 & 0x2000000000000000) != 0)
  {
    v17 = HIBYTE(v14) & 0xF;
  }

  else
  {
    v17 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v17)
  {

    *(inited + 184) = MEMORY[0x277D83B88];
    *(inited + 192) = &protocol witness table for Int;
    goto LABEL_86;
  }

  if ((v14 & 0x1000000000000000) != 0)
  {
    v19 = sub_231415D8C(result, v14, 10);
    v35 = v36;
LABEL_85:

    *(inited + 184) = MEMORY[0x277D83B88];
    *(inited + 192) = &protocol witness table for Int;
    if ((v35 & 1) == 0)
    {
LABEL_87:
      *(inited + 160) = v19;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD4D830, &qword_231479A60);
      return sub_231477DC8();
    }

LABEL_86:
    v19 = -1;
    goto LABEL_87;
  }

  if ((v14 & 0x2000000000000000) == 0)
  {
    if ((result & 0x1000000000000000) != 0)
    {
      result = (v14 & 0xFFFFFFFFFFFFFFFLL) + 32;
    }

    else
    {
      result = sub_231478558();
    }

    v18 = *result;
    if (v18 == 43)
    {
      if (v16 >= 1)
      {
        if (v16 != 1)
        {
          v19 = 0;
          if (result)
          {
            while (1)
            {
              OUTLINED_FUNCTION_1_2();
              if (!v21 & v20)
              {
                goto LABEL_83;
              }

              OUTLINED_FUNCTION_0_4();
              if (!v21)
              {
                goto LABEL_83;
              }

              v19 = v28 + v27;
              if (__OFADD__(v28, v27))
              {
                goto LABEL_83;
              }

              OUTLINED_FUNCTION_2_2();
              if (v21)
              {
                goto LABEL_84;
              }
            }
          }

          goto LABEL_74;
        }

        goto LABEL_83;
      }

      goto LABEL_93;
    }

    if (v18 != 45)
    {
      if (v16)
      {
        v19 = 0;
        if (result)
        {
          while (1)
          {
            v31 = *result - 48;
            if (v31 > 9)
            {
              goto LABEL_83;
            }

            v32 = 10 * v19;
            if ((v19 * 10) >> 64 != (10 * v19) >> 63)
            {
              goto LABEL_83;
            }

            v19 = v32 + v31;
            if (__OFADD__(v32, v31))
            {
              goto LABEL_83;
            }

            ++result;
            if (!--v16)
            {
              goto LABEL_74;
            }
          }
        }

        goto LABEL_74;
      }

LABEL_83:
      v19 = 0;
      v24 = 1;
      goto LABEL_84;
    }

    if (v16 >= 1)
    {
      if (v16 != 1)
      {
        v19 = 0;
        if (result)
        {
          while (1)
          {
            OUTLINED_FUNCTION_1_2();
            if (!v21 & v20)
            {
              goto LABEL_83;
            }

            OUTLINED_FUNCTION_0_4();
            if (!v21)
            {
              goto LABEL_83;
            }

            v19 = v23 - v22;
            if (__OFSUB__(v23, v22))
            {
              goto LABEL_83;
            }

            OUTLINED_FUNCTION_2_2();
            if (v21)
            {
              goto LABEL_84;
            }
          }
        }

LABEL_74:
        v24 = 0;
LABEL_84:
        v35 = v24;
        goto LABEL_85;
      }

      goto LABEL_83;
    }

    __break(1u);
LABEL_92:
    __break(1u);
LABEL_93:
    __break(1u);
    goto LABEL_94;
  }

  if (result != 43)
  {
    if (result != 45)
    {
      if (v15)
      {
        while (1)
        {
          OUTLINED_FUNCTION_1_2();
          if (!v21 & v20)
          {
            break;
          }

          OUTLINED_FUNCTION_0_4();
          if (!v21)
          {
            break;
          }

          v19 = v34 + v33;
          if (__OFADD__(v34, v33))
          {
            break;
          }

          OUTLINED_FUNCTION_2_2();
          if (v21)
          {
            goto LABEL_84;
          }
        }
      }

      goto LABEL_83;
    }

    if (v15)
    {
      if (v15 != 1)
      {
        OUTLINED_FUNCTION_3_1();
        while (1)
        {
          OUTLINED_FUNCTION_1_2();
          if (!v21 & v20)
          {
            break;
          }

          OUTLINED_FUNCTION_0_4();
          if (!v21)
          {
            break;
          }

          v19 = v26 - v25;
          if (__OFSUB__(v26, v25))
          {
            break;
          }

          OUTLINED_FUNCTION_2_2();
          if (v21)
          {
            goto LABEL_84;
          }
        }
      }

      goto LABEL_83;
    }

    goto LABEL_92;
  }

  if (v15)
  {
    if (v15 != 1)
    {
      OUTLINED_FUNCTION_3_1();
      while (1)
      {
        OUTLINED_FUNCTION_1_2();
        if (!v21 & v20)
        {
          break;
        }

        OUTLINED_FUNCTION_0_4();
        if (!v21)
        {
          break;
        }

        v19 = v30 + v29;
        if (__OFADD__(v30, v29))
        {
          break;
        }

        OUTLINED_FUNCTION_2_2();
        if (v21)
        {
          goto LABEL_84;
        }
      }
    }

    goto LABEL_83;
  }

LABEL_94:
  __break(1u);
  return result;
}

unsigned __int8 *sub_231415D8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = sub_231478078();
  v6 = result;
  v7 = v5;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_231416314(result, v5);
    v36 = v35;

    v7 = v36;
    if ((v36 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v8 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_231478558();
    }

    v9 = *result;
    if (v9 == 43)
    {
      if (v8 >= 1)
      {
        v20 = v8 - 1;
        if (v8 != 1)
        {
          v21 = a3 + 48;
          v22 = a3 + 55;
          v23 = a3 + 87;
          if (a3 > 10)
          {
            v21 = 58;
          }

          else
          {
            v23 = 97;
            v22 = 65;
          }

          if (result)
          {
            v14 = 0;
            v24 = result + 1;
            do
            {
              v25 = *v24;
              if (v25 < 0x30 || v25 >= v21)
              {
                if (v25 < 0x41 || v25 >= v22)
                {
                  v18 = 0;
                  if (v25 < 0x61 || v25 >= v23)
                  {
                    goto LABEL_127;
                  }

                  v26 = -87;
                }

                else
                {
                  v26 = -55;
                }
              }

              else
              {
                v26 = -48;
              }

              v27 = v14 * a3;
              if ((v14 * a3) >> 64 != (v14 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v14 = v27 + (v25 + v26);
              if (__OFADD__(v27, (v25 + v26)))
              {
                goto LABEL_126;
              }

              ++v24;
              --v20;
            }

            while (v20);
LABEL_46:
            v18 = v14;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v18 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v9 != 45)
    {
      if (v8)
      {
        v28 = a3 + 48;
        v29 = a3 + 55;
        v30 = a3 + 87;
        if (a3 > 10)
        {
          v28 = 58;
        }

        else
        {
          v30 = 97;
          v29 = 65;
        }

        if (result)
        {
          v31 = 0;
          do
          {
            v32 = *result;
            if (v32 < 0x30 || v32 >= v28)
            {
              if (v32 < 0x41 || v32 >= v29)
              {
                v18 = 0;
                if (v32 < 0x61 || v32 >= v30)
                {
                  goto LABEL_127;
                }

                v33 = -87;
              }

              else
              {
                v33 = -55;
              }
            }

            else
            {
              v33 = -48;
            }

            v34 = v31 * a3;
            if ((v31 * a3) >> 64 != (v31 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v31 = v34 + (v32 + v33);
            if (__OFADD__(v34, (v32 + v33)))
            {
              goto LABEL_126;
            }

            ++result;
            --v8;
          }

          while (v8);
          v18 = v34 + (v32 + v33);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v8 >= 1)
    {
      v10 = v8 - 1;
      if (v8 != 1)
      {
        v11 = a3 + 48;
        v12 = a3 + 55;
        v13 = a3 + 87;
        if (a3 > 10)
        {
          v11 = 58;
        }

        else
        {
          v13 = 97;
          v12 = 65;
        }

        if (result)
        {
          v14 = 0;
          v15 = result + 1;
          while (1)
          {
            v16 = *v15;
            if (v16 < 0x30 || v16 >= v11)
            {
              if (v16 < 0x41 || v16 >= v12)
              {
                v18 = 0;
                if (v16 < 0x61 || v16 >= v13)
                {
                  goto LABEL_127;
                }

                v17 = -87;
              }

              else
              {
                v17 = -55;
              }
            }

            else
            {
              v17 = -48;
            }

            v19 = v14 * a3;
            if ((v14 * a3) >> 64 != (v14 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v14 = v19 - (v16 + v17);
            if (__OFSUB__(v19, (v16 + v17)))
            {
              goto LABEL_126;
            }

            ++v15;
            if (!--v10)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v18 = 0;
LABEL_127:

        return v18;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v37 = HIBYTE(v7) & 0xF;
  v62 = v6;
  v63 = v7 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v37)
      {
        v39 = 0;
        v55 = a3 + 48;
        v56 = a3 + 55;
        v57 = a3 + 87;
        if (a3 > 10)
        {
          v55 = 58;
        }

        else
        {
          v57 = 97;
          v56 = 65;
        }

        v58 = &v62;
        while (1)
        {
          v59 = *v58;
          if (v59 < 0x30 || v59 >= v55)
          {
            if (v59 < 0x41 || v59 >= v56)
            {
              v18 = 0;
              if (v59 < 0x61 || v59 >= v57)
              {
                goto LABEL_127;
              }

              v60 = -87;
            }

            else
            {
              v60 = -55;
            }
          }

          else
          {
            v60 = -48;
          }

          v61 = v39 * a3;
          if ((v39 * a3) >> 64 != (v39 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v39 = v61 + (v59 + v60);
          if (__OFADD__(v61, (v59 + v60)))
          {
            goto LABEL_126;
          }

          v58 = (v58 + 1);
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v37)
    {
      v38 = v37 - 1;
      if (v38)
      {
        v39 = 0;
        v40 = a3 + 48;
        v41 = a3 + 55;
        v42 = a3 + 87;
        if (a3 > 10)
        {
          v40 = 58;
        }

        else
        {
          v42 = 97;
          v41 = 65;
        }

        v43 = &v62 + 1;
        while (1)
        {
          v44 = *v43;
          if (v44 < 0x30 || v44 >= v40)
          {
            if (v44 < 0x41 || v44 >= v41)
            {
              v18 = 0;
              if (v44 < 0x61 || v44 >= v42)
              {
                goto LABEL_127;
              }

              v45 = -87;
            }

            else
            {
              v45 = -55;
            }
          }

          else
          {
            v45 = -48;
          }

          v46 = v39 * a3;
          if ((v39 * a3) >> 64 != (v39 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v39 = v46 - (v44 + v45);
          if (__OFSUB__(v46, (v44 + v45)))
          {
            goto LABEL_126;
          }

          ++v43;
          if (!--v38)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v37)
  {
    v47 = v37 - 1;
    if (v47)
    {
      v39 = 0;
      v48 = a3 + 48;
      v49 = a3 + 55;
      v50 = a3 + 87;
      if (a3 > 10)
      {
        v48 = 58;
      }

      else
      {
        v50 = 97;
        v49 = 65;
      }

      v51 = &v62 + 1;
      do
      {
        v52 = *v51;
        if (v52 < 0x30 || v52 >= v48)
        {
          if (v52 < 0x41 || v52 >= v49)
          {
            v18 = 0;
            if (v52 < 0x61 || v52 >= v50)
            {
              goto LABEL_127;
            }

            v53 = -87;
          }

          else
          {
            v53 = -55;
          }
        }

        else
        {
          v53 = -48;
        }

        v54 = v39 * a3;
        if ((v39 * a3) >> 64 != (v39 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v39 = v54 + (v52 + v53);
        if (__OFADD__(v54, (v52 + v53)))
        {
          goto LABEL_126;
        }

        ++v51;
        --v47;
      }

      while (v47);
LABEL_125:
      v18 = v39;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_231416314(uint64_t a1, unint64_t a2)
{
  v2 = sub_231416380(sub_23141637C, 0, a1, a2);
  v6 = sub_2314163B4(v2, v3, v4, v5);

  return v6;
}

uint64_t sub_2314163B4(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = sub_231478428();
    if (!v9 || (v10 = v9, v11 = sub_2313F12D8(v9, 0), v12 = sub_231416514(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = sub_231477F28();

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
      return sub_231477F28();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  sub_231478558();
LABEL_4:

  return sub_231477F28();
}

unint64_t sub_231416514(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
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
      result = sub_231431CE8(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_231478028();
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
          result = sub_231478558();
        }

        v19 = *(result + v18);
      }
    }

    if ((v12 & 0xC) == v15)
    {
      result = sub_231431CE8(v12, a6, a7);
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

    result = sub_231478008();
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

uint64_t Donation.entities.getter()
{
  type metadata accessor for Donation(0);
}

uint64_t Donation.entities.setter()
{
  v2 = OUTLINED_FUNCTION_91();
  v3 = *(type metadata accessor for Donation(v2) + 20);

  *(v1 + v3) = v0;
  return result;
}

void (*Donation.entities.modify())()
{
  v0 = OUTLINED_FUNCTION_91();
  type metadata accessor for Donation(v0);
  return nullsub_1;
}

uint64_t Donation.updateStrategy.getter()
{
  v2 = OUTLINED_FUNCTION_92();
  result = type metadata accessor for Donation(v2);
  *v0 = *(v1 + *(result + 24));
  return result;
}

uint64_t Donation.updateStrategy.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for Donation(0);
  *(v1 + *(result + 24)) = v2;
  return result;
}

void (*Donation.updateStrategy.modify())()
{
  v0 = OUTLINED_FUNCTION_91();
  type metadata accessor for Donation(v0);
  return nullsub_1;
}

uint64_t Donation.userDonator.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = v1 + *(type metadata accessor for Donation(0) + 32);
  result = sub_2313EADE8(*v4, *(v4 + 8));
  *v4 = v2;
  *(v4 + 8) = v3;
  return result;
}

void (*Donation.userDonator.modify())()
{
  v0 = OUTLINED_FUNCTION_91();
  type metadata accessor for Donation(v0);
  return nullsub_1;
}

void Donation.init(interaction:entities:userDonator:)()
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_73();
  v3 = v2;
  v5 = *v4;
  v6 = v4[1];
  v7 = type metadata accessor for Donation(0);
  v8 = OUTLINED_FUNCTION_132_0(v7);
  v10 = v3 + v9;
  *(v3 + v9) = xmmword_231479AA0;
  v11 = v8[9];
  v12 = v8[10];
  *(v3 + v12) = 0;
  *(v3 + v8[7]) = 0;
  OUTLINED_FUNCTION_9_2();
  sub_2313F31EC();
  *(v3 + *(v1 + 20)) = v0;
  sub_2313EADE8(*v10, *(v10 + 8));
  *v10 = v5;
  *(v10 + 8) = v6;
  *(v3 + v11) = 1;
  *(v3 + v12) = 0;
  OUTLINED_FUNCTION_16();
}

uint64_t Donation.init(interaction:entities:isDirectDonation:devicePlatform:isLocal:userDonator:)@<X0>(uint64_t a1@<X1>, char a2@<W2>, char *a3@<X3>, char a4@<W4>, uint64_t *a5@<X5>, uint64_t a6@<X8>)
{
  v9 = *a3;
  v10 = *a5;
  v11 = a5[1];
  v12 = type metadata accessor for Donation(0);
  *(a6 + v12[6]) = 0;
  v13 = a6 + v12[8];
  *v13 = xmmword_231479AA0;
  v14 = v12[10];
  *(a6 + v14) = 0;
  v15 = a2 ^ 1;
  v16 = v12[9];
  *(a6 + v12[7]) = v15;
  OUTLINED_FUNCTION_9_2();
  OUTLINED_FUNCTION_42();
  sub_2313F31EC();
  *(a6 + v12[5]) = a1;
  result = sub_2313EADE8(*v13, *(v13 + 8));
  *v13 = v10;
  *(v13 + 8) = v11;
  *(a6 + v16) = a4;
  *(a6 + v14) = v9;
  return result;
}

uint64_t sub_231416AC4(void *a1, uint64_t (*a2)(void *, uint64_t))
{
  if (qword_280C3CF50 != -1)
  {
    swift_once();
  }

  v4 = sub_231477B68();
  __swift_project_value_buffer(v4, qword_280C3D970);
  v5 = a1;
  v6 = sub_231477B58();
  v7 = sub_2314782B8();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v15 = v9;
    *v8 = 136446210;
    v10 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD4D8D0, &qword_231479558);
    v11 = sub_231477EB8();
    v13 = sub_2313EB684(v11, v12, &v15);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_2313E1000, v6, v7, "error when making donation: %{public}s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x23192F1F0](v9, -1, -1);
    MEMORY[0x23192F1F0](v8, -1, -1);
  }

  return a2(a1, 1);
}

void sub_231416C64(char a1, void (*a2)(void *, uint64_t))
{
  if (a1)
  {
    if (qword_280C3CF50 != -1)
    {
      swift_once();
    }

    v3 = sub_231477B68();
    __swift_project_value_buffer(v3, qword_280C3D970);
    v4 = sub_231477B58();
    v5 = sub_2314782A8();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_2313E1000, v4, v5, "donation succeeded", v6, 2u);
      MEMORY[0x23192F1F0](v6, -1, -1);
    }

    a2(0, 0);
  }

  else
  {
    if (qword_280C3CF50 != -1)
    {
      swift_once();
    }

    v7 = sub_231477B68();
    __swift_project_value_buffer(v7, qword_280C3D970);
    v8 = sub_231477B58();
    v9 = sub_2314782B8();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_2313E1000, v8, v9, "donation failed", v10, 2u);
      MEMORY[0x23192F1F0](v10, -1, -1);
    }

    sub_23141FA18();
    v11 = swift_allocError();
    *v12 = 0;
    a2(v11, 1);
  }
}

uint64_t sub_231416E68(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

void Donation.donate(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_64();
  a19 = v23;
  a20 = v24;
  v223 = v20;
  v224 = v21;
  v25 = OUTLINED_FUNCTION_97();
  v216 = type metadata accessor for Interaction(v25);
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_17_0();
  v215 = v27;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_81();
  OUTLINED_FUNCTION_47_0(v29);
  v211 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D568, &qword_2314795C8);
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_81();
  OUTLINED_FUNCTION_47_0(v32);
  v221 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD4D680, &unk_2314795C0);
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_17_0();
  v214 = v34;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_39();
  v218 = v40;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_81();
  v222 = v42;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D690, &qword_231479AD0);
  MEMORY[0x28223BE20](v43 - 8);
  OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_81();
  v217 = v47;
  v48 = OUTLINED_FUNCTION_47();
  v213 = type metadata accessor for _NewInteraction(v48);
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_12_0();
  v220 = v50;
  v219 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D698, &qword_231479AD8);
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_34();
  v54 = v52 - v53;
  MEMORY[0x28223BE20](v55);
  v57 = &v202 - v56;
  v58 = type metadata accessor for Donation(0);
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v59);
  OUTLINED_FUNCTION_34();
  v62 = v60 - v61;
  MEMORY[0x28223BE20](v63);
  OUTLINED_FUNCTION_142();
  v64 = sub_231477008();
  OUTLINED_FUNCTION_4();
  v66 = v65;
  MEMORY[0x28223BE20](v67);
  OUTLINED_FUNCTION_2();
  v70 = v69 - v68;
  v71 = v20[1];
  v227 = *v20;
  *v228 = v71;
  *&v228[9] = *(v20 + 25);
  v72 = v224;
  v73 = sub_2313F4D04();
  if (v72)
  {
    goto LABEL_29;
  }

  v206 = v62;
  Value = v22;
  v207 = v58;
  v205 = v57;
  v208 = 0;
  v224 = v73;
  sub_231477058();
  v74 = sub_231476FD8();
  v75 = (*(v66 + 8))(v70, v64);
  if (v74)
  {
    if (qword_280C3CF50 != -1)
    {
      OUTLINED_FUNCTION_0();
      swift_once();
    }

    v76 = sub_231477B68();
    __swift_project_value_buffer(v76, qword_280C3D970);
    v77 = sub_231477B58();
    sub_2314782C8();
    v78 = OUTLINED_FUNCTION_44();
    if (os_log_type_enabled(v78, v79))
    {
      v80 = OUTLINED_FUNCTION_102();
      OUTLINED_FUNCTION_80(v80);
      OUTLINED_FUNCTION_32_0(&dword_2313E1000, v81, v82, "InteractionStore donation failed. Cannot write to a readonly db connection.");
      OUTLINED_FUNCTION_15_0();
      MEMORY[0x23192F1F0]();
    }

    sub_23141ECFC();
    swift_allocError();
    *v83 = 2;
    swift_willThrow();
    goto LABEL_15;
  }

  v84 = v223;
  if (*(v223 + *(v207 + 24)))
  {
    v85 = v54;
  }

  else
  {
    MEMORY[0x28223BE20](v75);
    *(&v202 - 2) = v84;
    sub_2314770A8();
    v97 = v208;
    sub_2314770F8();
    v208 = v97;
    if (v97)
    {
LABEL_15:

      goto LABEL_29;
    }

    if (v227)
    {
      if (qword_280C3CF50 != -1)
      {
        OUTLINED_FUNCTION_0();
        swift_once();
      }

      v115 = sub_231477B68();
      __swift_project_value_buffer(v115, qword_280C3D970);
      v116 = sub_231477B58();
      sub_2314782A8();
      v117 = OUTLINED_FUNCTION_44();
      if (os_log_type_enabled(v117, v118))
      {
        v119 = OUTLINED_FUNCTION_102();
        OUTLINED_FUNCTION_80(v119);
        OUTLINED_FUNCTION_32_0(&dword_2313E1000, v120, v121, "Donation stopped. The donation ID already exists in the db history.");
        OUTLINED_FUNCTION_15_0();
        MEMORY[0x23192F1F0]();
      }

      goto LABEL_29;
    }

    v85 = v54;
  }

  if (qword_280C3CF50 != -1)
  {
    OUTLINED_FUNCTION_0();
    swift_once();
  }

  v86 = sub_231477B68();
  v87 = __swift_project_value_buffer(v86, qword_280C3D970);
  OUTLINED_FUNCTION_11_3();
  OUTLINED_FUNCTION_105();
  sub_2313EB328();
  v88 = sub_231477B58();
  v89 = sub_2314782A8();
  if (os_log_type_enabled(v88, v89))
  {
    v90 = swift_slowAlloc();
    v206 = v87;
    v91 = v90;
    *&v227 = swift_slowAlloc();
    v203 = v85;
    v92 = v227;
    *v91 = 136315138;
    OUTLINED_FUNCTION_11_3();
    sub_2313EB328();
    v93 = sub_231477EB8();
    v95 = v94;
    OUTLINED_FUNCTION_10_2();
    sub_2313EB380();
    v96 = sub_2313EB684(v93, v95, &v227);

    *(v91 + 4) = v96;
    _os_log_impl(&dword_2313E1000, v88, v89, "InteractionStore donation started. Donation: %s", v91, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v92);
    v85 = v203;
    OUTLINED_FUNCTION_15_0();
    MEMORY[0x23192F1F0]();
    v87 = v206;
    OUTLINED_FUNCTION_15_0();
    MEMORY[0x23192F1F0]();
  }

  else
  {

    OUTLINED_FUNCTION_10_2();
    sub_2313EB380();
  }

  v98 = v205;
  v99 = v222;
  v100 = v219;
  v101 = v208;
  sub_231418314();
  if (v101)
  {
    goto LABEL_15;
  }

  v206 = v87;
  *&v98[*(v100 + 48)] = v102;
  OUTLINED_FUNCTION_138();
  sub_2313E93D4();

  OUTLINED_FUNCTION_23_0();
  v103 = v220;
  sub_2313F31EC();
  OUTLINED_FUNCTION_138();
  sub_2313E93D4();
  v219 = *(v85 + *(v100 + 48));
  OUTLINED_FUNCTION_5_1();
  sub_2313EB380();
  v104 = v103[1];
  *v99 = *v103;
  v99[1] = v104;
  Value = type metadata accessor for QueryValue(0);
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  sub_2313E93D4();

  v105 = MEMORY[0x277D84F90];
  swift_bridgeObjectRetain_n();
  OUTLINED_FUNCTION_93();
  sub_2313E8CDC();
  v106 = v227;
  v107 = v228[0];
  v108 = *&v228[8];
  v109 = v105;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    OUTLINED_FUNCTION_3_0();
    sub_2313F3244();
    v109 = v188;
  }

  v111 = *(v109 + 16);
  v110 = *(v109 + 24);
  v112 = v111 + 1;
  if (v111 >= v110 >> 1)
  {
    OUTLINED_FUNCTION_37_0(v110);
    sub_2313F3244();
    v109 = v189;
  }

  swift_bridgeObjectRelease_n();
  sub_2313E937C(v222, &unk_27DD4D680, &unk_2314795C0);
  *(v109 + 16) = v112;
  v113 = v109 + 32 * v111;
  *(v113 + 32) = v106;
  *(v113 + 48) = v107;
  *(v113 + 56) = v108;
  OUTLINED_FUNCTION_124();
  v114 = v217;
  sub_23143BA9C();
  v208 = 0;

  OUTLINED_FUNCTION_105();
  sub_2313E93D4();
  v122 = v216;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v112, 1, v216);
  sub_2313E937C(v112, &qword_27DD4D690, &qword_231479AD0);
  v124 = v220;
  if (EnumTagSinglePayload == 1)
  {
    v222 = *(v213 + 52);
    OUTLINED_FUNCTION_139();
    sub_231476BE8();
    swift_storeEnumTagMultiPayload();
    sub_231403238();
    v226 = 0;
    sub_2313E93D4();
    v125 = MEMORY[0x277D84F90];
    swift_bridgeObjectRetain_n();
    OUTLINED_FUNCTION_93();
    OUTLINED_FUNCTION_150();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_3_0();
      sub_2313F3244();
      v125 = v190;
    }

    v126 = *(v125 + 24);
    if (*(v125 + 16) >= v126 >> 1)
    {
      OUTLINED_FUNCTION_20(v126);
      sub_2313F3244();
      v125 = v191;
    }

    swift_bridgeObjectRelease_n();
    OUTLINED_FUNCTION_83(&a12);
    sub_2313E937C(v210, &qword_27DD4D568, &qword_2314795C8);
    OUTLINED_FUNCTION_107();
    v127 = v226;
    sub_231476BE8();
    swift_storeEnumTagMultiPayload();
    sub_231403238();
    v225 = v127;
    OUTLINED_FUNCTION_130();
    sub_2313E93D4();

    OUTLINED_FUNCTION_93();
    OUTLINED_FUNCTION_150();
    OUTLINED_FUNCTION_70();
    v128 = v125;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_3_0();
      sub_2313F3244();
      v128 = v192;
    }

    v130 = *(v128 + 16);
    v129 = *(v128 + 24);
    if (v130 >= v129 >> 1)
    {
      OUTLINED_FUNCTION_38_0(v129);
      sub_2313F3244();
      v128 = v193;
    }

    OUTLINED_FUNCTION_83(&a15);
    sub_2313E937C(v212, &qword_27DD4D568, &qword_2314795C8);
    *(v128 + 16) = v130 + 1;
    OUTLINED_FUNCTION_71(v128 + 32 * v130);
    v131 = v225;
    OUTLINED_FUNCTION_79(v220[4]);
    OUTLINED_FUNCTION_115();
    v226 = v131;
    OUTLINED_FUNCTION_104();
    sub_2313E93D4();

    OUTLINED_FUNCTION_93();
    sub_2313E8CDC();
    OUTLINED_FUNCTION_70();
    v132 = v128;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_3_0();
      sub_2313F3244();
      v132 = v194;
    }

    v134 = *(v132 + 16);
    v133 = *(v132 + 24);
    if (v134 >= v133 >> 1)
    {
      OUTLINED_FUNCTION_38_0(v133);
      sub_2313F3244();
      v132 = v195;
    }

    OUTLINED_FUNCTION_83(&a17);
    *(v132 + 16) = v134 + 1;
    OUTLINED_FUNCTION_71(v132 + 32 * v134);
    v135 = v226;
    OUTLINED_FUNCTION_79(v220[6]);
    OUTLINED_FUNCTION_115();
    v225 = v135;
    OUTLINED_FUNCTION_104();
    sub_2313E93D4();

    OUTLINED_FUNCTION_93();
    sub_2313E8CDC();
    OUTLINED_FUNCTION_70();
    v136 = v132;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_3_0();
      sub_2313F3244();
      v136 = v196;
    }

    v138 = *(v136 + 16);
    v137 = *(v136 + 24);
    if (v138 >= v137 >> 1)
    {
      OUTLINED_FUNCTION_38_0(v137);
      sub_2313F3244();
      v136 = v197;
    }

    OUTLINED_FUNCTION_83(&a18);
    *(v136 + 16) = v138 + 1;
    OUTLINED_FUNCTION_71(v136 + 32 * v138);
    v139 = v225;
    v124 = v220;
    OUTLINED_FUNCTION_79(v220[8]);
    OUTLINED_FUNCTION_115();
    v226 = v139;
    sub_2313E93D4();

    OUTLINED_FUNCTION_93();
    sub_2313E8CDC();
    v141 = *(&v227 + 1);
    v140 = v227;
    v142 = v228[0];
    v143 = *&v228[8];
    v144 = v136;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_3_0();
      sub_2313F3244();
      v144 = v198;
    }

    v146 = *(v144 + 16);
    v145 = *(v144 + 24);
    if (v146 >= v145 >> 1)
    {
      OUTLINED_FUNCTION_38_0(v145);
      sub_2313F3244();
      v144 = v199;
    }

    sub_2313E937C(v214, &unk_27DD4D680, &unk_2314795C0);
    *(v144 + 16) = v146 + 1;
    v147 = v144 + 32 * v146;
    *(v147 + 32) = v140;
    *(v147 + 40) = v141;
    *(v147 + 48) = v142;
    *(v147 + 56) = v143;
    v148 = *(v124 + *(v213 + 64));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D6A0, &qword_2314795D0);
    OUTLINED_FUNCTION_120();
    v112 = OUTLINED_FUNCTION_114();
    *(v112 + 16) = xmmword_231479580;
    *(v112 + v141) = v148;
    OUTLINED_FUNCTION_95();
    swift_storeEnumTagMultiPayload();

    v149 = v144;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_3_0();
      sub_2313F3244();
      v149 = v200;
    }

    v151 = *(v149 + 16);
    v150 = *(v149 + 24);
    v152 = v215;
    if (v151 >= v150 >> 1)
    {
      OUTLINED_FUNCTION_20(v150);
      sub_2313F3244();
      v149 = v201;
    }

    *(v149 + 16) = v151 + 1;
    v153 = v149 + 32 * v151;
    *(v153 + 32) = xmmword_231479A90;
    *(v153 + 48) = 0;
    *(v153 + 56) = v112;
    OUTLINED_FUNCTION_124();
    OUTLINED_FUNCTION_133();
    v154 = v208;
    sub_23143BA9C();
    if (v154)
    {

      v155 = OUTLINED_FUNCTION_96();
      sub_2313E937C(v155, v156, v157);
      sub_2313E937C(v217, &qword_27DD4D690, &qword_231479AD0);
      OUTLINED_FUNCTION_5_1();
      sub_2313EB380();
      goto LABEL_29;
    }

    v158 = &qword_231479AD0;
    v114 = v217;
    sub_2313E937C(v217, &qword_27DD4D690, &qword_231479AD0);
    OUTLINED_FUNCTION_99();
    sub_2314030BC();
    v122 = v216;
  }

  else
  {
    v158 = v208;
    v152 = v215;
  }

  OUTLINED_FUNCTION_14_1();
  OUTLINED_FUNCTION_105();
  sub_2313EB328();
  OUTLINED_FUNCTION_110();
  v160 = 0x30200u >> (8 * v159);
  if (v161)
  {
    LOBYTE(v160) = 1;
  }

  *(v112 + *(v122 + 64)) = v160;
  v162 = v209;
  sub_2313E93D4();
  if (__swift_getEnumTagSinglePayload(v162, 1, v122) == 1)
  {
    v163 = v158;
    v164 = sub_2313E937C(v162, &qword_27DD4D690, &qword_231479AD0);
  }

  else
  {
    OUTLINED_FUNCTION_9_2();
    sub_2313F31EC();
    v163 = v158;
    if (*(v152 + 80) == 1)
    {
      v165 = sub_231477B58();
      sub_2314782A8();
      v166 = OUTLINED_FUNCTION_44();
      if (os_log_type_enabled(v166, v167))
      {
        v168 = OUTLINED_FUNCTION_102();
        OUTLINED_FUNCTION_80(v168);
        OUTLINED_FUNCTION_32_0(&dword_2313E1000, v169, v170, "donation is replacing existing interaction");
        OUTLINED_FUNCTION_15_0();
        MEMORY[0x23192F1F0]();
      }

      *(v124 + 81) = 1;
      *(v112 + 80) = 1;
      v172 = *v152;
      v171 = v152[1];

      OUTLINED_FUNCTION_4_2();
      sub_2313EB380();

      *v112 = v172;
      *(v112 + 8) = v171;
    }

    else
    {
      OUTLINED_FUNCTION_4_2();
      v164 = sub_2313EB380();
    }
  }

  MEMORY[0x28223BE20](v164);
  *(&v202 - 4) = v114;
  *(&v202 - 3) = v124;
  *(&v202 - 2) = v219;
  sub_2314770A8();
  sub_2314770F8();
  if (v163)
  {

    v173 = sub_231477B58();
    sub_2314782A8();
    v174 = OUTLINED_FUNCTION_44();
    if (os_log_type_enabled(v174, v175))
    {
      v176 = OUTLINED_FUNCTION_102();
      OUTLINED_FUNCTION_80(v176);
      OUTLINED_FUNCTION_32_0(&dword_2313E1000, v177, v178, "Failed to write to legacy SiriRemembersDB");
      OUTLINED_FUNCTION_15_0();
      MEMORY[0x23192F1F0]();
    }
  }

  else
  {
  }

  v179 = sub_231477B58();
  sub_2314782A8();
  v180 = OUTLINED_FUNCTION_44();
  if (os_log_type_enabled(v180, v181))
  {
    v182 = OUTLINED_FUNCTION_102();
    OUTLINED_FUNCTION_80(v182);
    OUTLINED_FUNCTION_32_0(&dword_2313E1000, v183, v184, "InteractionStore donation succeeded");
    OUTLINED_FUNCTION_15_0();
    MEMORY[0x23192F1F0]();
  }

  v185 = OUTLINED_FUNCTION_96();
  sub_2313E937C(v185, v186, v187);
  sub_2313E937C(v114, &qword_27DD4D690, &qword_231479AD0);
  OUTLINED_FUNCTION_5_1();
  sub_2313EB380();
  OUTLINED_FUNCTION_4_2();
  sub_2313EB380();
LABEL_29:
  OUTLINED_FUNCTION_62();
}

void sub_231418314()
{
  OUTLINED_FUNCTION_64();
  v206 = v1;
  v3 = v0;
  v177 = v4;
  v212 = *MEMORY[0x277D85DE8];
  sub_231477D58();
  OUTLINED_FUNCTION_4();
  v191 = v6;
  v192 = v5;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_47_0(v7);
  v187 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D888, &unk_23147A210);
  OUTLINED_FUNCTION_4();
  v188 = v8;
  OUTLINED_FUNCTION_61();
  MEMORY[0x28223BE20](v9);
  v205 = &v167 - v10;
  v11 = OUTLINED_FUNCTION_47();
  v186 = type metadata accessor for _NewEntity(v11);
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_12_0();
  v14 = OUTLINED_FUNCTION_28(v13);
  v184 = type metadata accessor for Entity(v14);
  OUTLINED_FUNCTION_4();
  v189 = v15;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_12_0();
  v203 = v17;
  OUTLINED_FUNCTION_47();
  v196 = sub_231477D88();
  OUTLINED_FUNCTION_4();
  v193 = v18;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_12_0();
  v207 = v20;
  OUTLINED_FUNCTION_47();
  v21 = sub_231476CA8();
  OUTLINED_FUNCTION_4();
  v23 = v22;
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_141();
  v25 = *(v3 + 1);
  v180 = *v3;
  v26 = *(v3 + 3);
  v179 = *(v3 + 2);
  v27 = *(v3 + 5);
  v176 = *(v3 + 4);
  v28 = *(v3 + 9);
  v175 = *(v3 + 8);
  v29 = *(v3 + 7);
  v174 = *(v3 + 6);
  v204 = v29;
  v182 = type metadata accessor for Donation(0);
  LODWORD(v171) = v3[v182[7]];
  v170 = v3[80];
  OUTLINED_FUNCTION_140(v3[82]);
  v172 = v3[81];
  v30 = type metadata accessor for Interaction(0);
  v31 = v30[12];
  v197 = v2;
  v198 = v23;
  v33 = *(v23 + 16);
  v32 = v23 + 16;
  v194 = v21;
  v183 = v33;
  v33(v2, &v3[v31], v21);
  v169 = *&v3[v30[13]];
  v34 = *&v3[v30[19]];
  v35 = sub_2314767B8();
  OUTLINED_FUNCTION_74();
  swift_allocObject();
  v199 = v25;

  v200 = v26;

  v201 = v27;

  v202 = v28;

  sub_2314767A8();
  v36 = v206;
  v37 = sub_2313F6380();
  v181 = v38;
  v206 = v36;
  if (v36)
  {
    (*(v198 + 8))(v197, v194);

    goto LABEL_62;
  }

  v39 = v37;
  v40 = v197;
  v195 = v35;
  v178 = v32;

  v41 = v3[v182[9]];
  v42 = v3[v182[10]];
  v43 = *&v3[v182[8] + 8];
  v167 = v3;
  if (v43 > 2)
  {
    v44 = 1;
  }

  else
  {
    v44 = qword_23147A348[v43];
  }

  v168 = v44;
  OUTLINED_FUNCTION_135();
  v45 = v176;
  v46 = v175;
  v47 = v174;
  v48 = v173;
  v49 = v172;
  v50 = v171;
  v51 = v170;
  *v52 = v54;
  *(v52 + 8) = v53;
  *(v52 + 16) = v56;
  *(v52 + 24) = v55;
  *(v52 + 32) = v45;
  *(v52 + 40) = v57;
  *(v52 + 48) = v46;
  *(v52 + 56) = v58;
  *(v52 + 64) = v47;
  *(v52 + 72) = v59;
  *(v52 + 80) = v50;
  *(v52 + 81) = v51;
  *(v52 + 88) = v48;
  *(v52 + 96) = v49;
  v60 = v52;
  v61 = type metadata accessor for _NewInteraction(0);
  v62 = OUTLINED_FUNCTION_125(v61);
  v63(v62, v40, v194);
  *(v60 + SHIDWORD(v209)) = v169;
  v64 = (v60 + v210);
  v65 = v181;
  *v64 = v39;
  v64[1] = v65;
  v66 = v211;
  *(v60 + v211) = 0;
  *(v60 + v212) = v41;
  *(v60 + SHIDWORD(v212)) = v42;
  *(v60 + v213) = v168;
  sub_231477D78();
  v208 = sub_231401864(v34);
  v67 = v206;
  sub_231401B20(&v208);
  if (v67)
  {
LABEL_76:

    __break(1u);
    return;
  }

  v171 = v66;
  v206 = 0;
  v68 = v208;
  v69 = v196;
  v70 = v203;
  v202 = *(v208 + 16);
  if (v202)
  {
    v71 = 0;
    v72 = (v208 + 64);
    v201 = v208;
    while (2)
    {
      if (v71 >= *(v68 + 16))
      {
LABEL_65:
        __break(1u);
LABEL_66:
        __break(1u);
LABEL_67:
        __break(1u);
LABEL_68:
        __break(1u);
LABEL_69:
        __break(1u);
LABEL_70:
        __break(1u);
LABEL_71:
        __break(1u);
LABEL_72:
        __break(1u);
LABEL_73:
        __break(1u);
LABEL_74:
        __break(1u);
      }

      v74 = *(v72 - 2);
      v73 = *(v72 - 1);
      v75 = *v72;
      v204 = v71 + 1;
      v77 = *(v72 - 4);
      v76 = *(v72 - 3);

      v78 = OUTLINED_FUNCTION_128();
      sub_231401AEC(v78, v79, v75);
      v80 = sub_231401D64(v77, v76);
      v81 = v80;
      v83 = v82;
      switch(v82 >> 62)
      {
        case 1uLL:
          if (v80 >> 32 < v80)
          {
            goto LABEL_67;
          }

          v200 = v73;
          if (!sub_231476848() || !__OFSUB__(v81, sub_231476868()))
          {
            goto LABEL_22;
          }

          goto LABEL_73;
        case 2uLL:
          v88 = *(v80 + 16);
          v199 = *(v80 + 24);
          v89 = sub_231476848();
          v200 = v73;
          if (v89 && __OFSUB__(v88, sub_231476868()))
          {
            goto LABEL_71;
          }

          if (__OFSUB__(v199, v88))
          {
            goto LABEL_68;
          }

LABEL_22:
          sub_231476858();
          OUTLINED_FUNCTION_78();
          sub_2313F7138(&qword_280C3C920, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
          OUTLINED_FUNCTION_17();
          v69 = v196;
          sub_231477D48();
          sub_2313EB8A4(v81, v83);
LABEL_23:
          switch(v75)
          {
            case 1:
              v208 = v74;
              sub_23141F9C4();
              sub_231478458();
              goto LABEL_28;
            case 2:
              sub_2314781C8();
              goto LABEL_28;
            case 4:
              OUTLINED_FUNCTION_74();
              swift_allocObject();
              sub_2314767A8();
              v67 = v206;
              sub_231447358();
              v70 = v203;
              v206 = v67;
              if (v67)
              {
                goto LABEL_75;
              }

              v91 = OUTLINED_FUNCTION_128();
              v93 = 4;
              goto LABEL_31;
            case 5:
              OUTLINED_FUNCTION_74();
              swift_allocObject();
              sub_2314767A8();
              v67 = v206;
              sub_2313F6380();
              v70 = v203;
              v206 = v67;
              if (!v67)
              {

                v91 = OUTLINED_FUNCTION_128();
                v93 = 5;
LABEL_31:
                sub_231403090(v91, v92, v93);
LABEL_32:
                v94 = OUTLINED_FUNCTION_128();
                v96 = sub_231401D64(v94, v95);
                v97 = v96;
                v99 = v98;
                switch(v98 >> 62)
                {
                  case 1uLL:
                    if (v96 >> 32 < v96)
                    {
                      goto LABEL_69;
                    }

                    if (!sub_231476848() || !__OFSUB__(v97, sub_231476868()))
                    {
                      goto LABEL_43;
                    }

                    goto LABEL_74;
                  case 2uLL:
                    v104 = *(v96 + 16);
                    v105 = *(v96 + 24);
                    if (sub_231476848() && __OFSUB__(v104, sub_231476868()))
                    {
                      goto LABEL_72;
                    }

                    if (__OFSUB__(v105, v104))
                    {
                      goto LABEL_70;
                    }

LABEL_43:
                    sub_231476858();
                    OUTLINED_FUNCTION_78();
                    sub_2313F7138(&qword_280C3C920, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
                    OUTLINED_FUNCTION_17();
LABEL_44:
                    sub_231477D48();
                    v107 = OUTLINED_FUNCTION_109();
                    sub_2313EB8A4(v107, v108);
                    v68 = v201;
                    v71 = v204;
                    v72 += 40;
                    if (v202 == v204)
                    {
                      goto LABEL_45;
                    }

                    continue;
                  case 3uLL:
                    OUTLINED_FUNCTION_2_3();
                    sub_2313F7138(&qword_280C3C920, v106, MEMORY[0x277CC5538]);
                    OUTLINED_FUNCTION_30_0();
                    goto LABEL_44;
                  default:
                    LOBYTE(v208) = v96;
                    OUTLINED_FUNCTION_129(SBYTE1(v96));
                    OUTLINED_FUNCTION_127(SBYTE4(v97));
                    OUTLINED_FUNCTION_123(SBYTE6(v97));
                    HIBYTE(v208) = v100;
                    LOBYTE(v209) = v99;
                    OUTLINED_FUNCTION_121(SBYTE1(v99));
                    BYTE3(v209) = v101;
                    BYTE4(v209) = v102;
                    BYTE5(v209) = BYTE5(v99);
                    OUTLINED_FUNCTION_2_3();
                    sub_2313F7138(&qword_280C3C920, v103, MEMORY[0x277CC5538]);
                    OUTLINED_FUNCTION_77();
                    goto LABEL_44;
                }
              }

LABEL_75:

              OUTLINED_FUNCTION_131();
              swift_unexpectedError();
              __break(1u);
              break;
            default:
LABEL_28:
              v70 = v203;
              goto LABEL_32;
          }

          break;
        case 3uLL:
          OUTLINED_FUNCTION_2_3();
          sub_2313F7138(&qword_280C3C920, v90, MEMORY[0x277CC5538]);
          OUTLINED_FUNCTION_30_0();
          goto LABEL_18;
        default:
          LOBYTE(v208) = v80;
          OUTLINED_FUNCTION_129(SBYTE1(v80));
          OUTLINED_FUNCTION_127(SBYTE4(v81));
          OUTLINED_FUNCTION_123(SBYTE6(v81));
          HIBYTE(v208) = v84;
          LOBYTE(v209) = v83;
          OUTLINED_FUNCTION_121(SBYTE1(v83));
          BYTE3(v209) = v85;
          BYTE4(v209) = v86;
          BYTE5(v209) = BYTE5(v83);
          OUTLINED_FUNCTION_2_3();
          sub_2313F7138(&qword_280C3C920, v87, MEMORY[0x277CC5538]);
          OUTLINED_FUNCTION_77();
LABEL_18:
          sub_231477D48();
          sub_2313EB8A4(v81, v83);
          goto LABEL_23;
      }

      goto LABEL_76;
    }
  }

LABEL_45:

  v175 = *(v167 + v182[5]) + 64;
  OUTLINED_FUNCTION_36();
  v111 = v110 & v109;
  v174 = (v112 + 63) >> 6;
  v176 = v113;

  v114 = 0;
  v115 = MEMORY[0x277D84F90];
  v116 = v190;
  v117 = v193;
  while (v111)
  {
    v118 = v114;
LABEL_51:
    v173 = (v111 - 1) & v111;
    v172 = v118;
    v119 = __clz(__rbit64(v111)) | (v118 << 6);
    v120 = *(v176 + 56);
    v121 = (*(v176 + 48) + 16 * v119);
    v122 = v121[1];
    v179 = *v121;
    v123 = *(v120 + 8 * v119);
    v182 = *(v123 + 16);
    v181 = v122;

    v124 = 0;
    v180 = v123;
    while (v182 != v124)
    {
      if (v124 >= *(v123 + 16))
      {
        __break(1u);
        goto LABEL_65;
      }

      v204 = v115;
      OUTLINED_FUNCTION_59();
      v203 = v125;
      OUTLINED_FUNCTION_63_0();
      sub_2313EB328();
      v126 = v70[2];
      v127 = v70[3];

      v202 = v126;
      sub_231401D64(v126, v127);
      OUTLINED_FUNCTION_126();
      v128 = v206;
      v129 = v207;
      sub_2314027B0(v130, v131, v207);
      v132 = v128;
      v133 = OUTLINED_FUNCTION_17();
      sub_2313EB8A4(v133, v134);
      v135 = *v70;
      v136 = v70[1];

      v201 = v135;
      sub_231401D64(v135, v136);
      OUTLINED_FUNCTION_126();
      sub_2314027B0(v137, v138, v129);
      v139 = OUTLINED_FUNCTION_17();
      sub_2313EB8A4(v139, v140);
      sub_231402974();
      v141 = v70;
      v143 = v142;
      OUTLINED_FUNCTION_74();
      swift_allocObject();
      sub_2314767A8();
      v144 = sub_2313F6380();
      if (v132)
      {
        OUTLINED_FUNCTION_96();

        OUTLINED_FUNCTION_145();

        OUTLINED_FUNCTION_5_1();
        sub_2313EB380();
        (*(v193 + 8))(v129, v196);

        OUTLINED_FUNCTION_13_4();
        sub_2313EB380();
        goto LABEL_62;
      }

      v206 = 0;
      v199 = v145;
      v200 = v144;

      v208 = v143;
      v209 = 0;
      LOBYTE(v210) = 5;

      v146 = sub_231402B08(0, 0xE000000000000000);
      v197 = v147;
      v198 = v146;

      sub_231403090(v208, v209, v210);
      v148 = *(v184 + 28);
      v149 = v186;
      v150 = v185;
      v151 = v194;
      v152 = v127;
      v153 = v183;
      v183(v185 + *(v186 + 32), v141 + v148, v194);
      v153(v150 + *(v149 + 36), v141 + v148, v151);
      v154 = v202;
      *v150 = v201;
      v150[1] = v136;
      v150[2] = v154;
      v150[3] = v152;
      v155 = v199;
      v150[4] = v200;
      v150[5] = v155;
      v156 = v197;
      v150[6] = v198;
      v150[7] = v156;
      OUTLINED_FUNCTION_57_0();
      sub_2313F31EC();

      v115 = v204;
      v70 = v141;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v159 = OUTLINED_FUNCTION_3_0();
        v115 = sub_231403A1C(v159, v160, v161, v115);
      }

      v116 = v190;
      v158 = *(v115 + 16);
      v157 = *(v115 + 24);
      v69 = v196;
      v117 = v193;
      if (v158 >= v157 >> 1)
      {
        v162 = OUTLINED_FUNCTION_20(v157);
        v115 = sub_231403A1C(v162, v158 + 1, 1, v115);
      }

      *(v115 + 16) = v158 + 1;
      OUTLINED_FUNCTION_59();
      sub_2314030BC();
      OUTLINED_FUNCTION_13_4();
      sub_2313EB380();
      v124 = (v203 + 1);
      v123 = v180;
    }

    v114 = v172;
    v111 = v173;
  }

  while (1)
  {
    v118 = v114 + 1;
    if (__OFADD__(v114, 1))
    {
      goto LABEL_66;
    }

    if (v118 >= v174)
    {
      break;
    }

    v111 = *(v175 + 8 * v118);
    ++v114;
    if (v111)
    {
      goto LABEL_51;
    }
  }

  OUTLINED_FUNCTION_96();

  v163 = v207;
  sub_231477D68();
  v164 = sub_231403B58(v116);
  v165 = OUTLINED_FUNCTION_90();
  v166(v165);
  (*(v117 + 8))(v163, v69);
  *(v177 + v171) = v164;
LABEL_62:
  OUTLINED_FUNCTION_62();
}

uint64_t sub_2314193A8(char a1, uint64_t a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 0x6E6F707365526F6ELL;
  }

  else
  {
    v3 = 0xD000000000000015;
  }

  if (v2)
  {
    v4 = 0x8000000231481F60;
  }

  else
  {
    v4 = 0xEA00000000006573;
  }

  if (a2)
  {
    v5 = 0x6E6F707365526F6ELL;
  }

  else
  {
    v5 = 0xD000000000000015;
  }

  if (a2)
  {
    v6 = 0xEA00000000006573;
  }

  else
  {
    v6 = 0x8000000231481F60;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_82(v3, a2, v5);
  }

  return v8 & 1;
}

uint64_t sub_231419444(unsigned __int8 a1, char a2)
{
  v2 = 0xED0000797469746ELL;
  v3 = 0x4564696C61766E69;
  v4 = a1;
  v5 = 0x4564696C61766E69;
  v6 = 0xED0000797469746ELL;
  switch(v4)
  {
    case 1:
      break;
    case 2:
      v5 = 0x6564646962726F66;
      v6 = 0xE90000000000006ELL;
      break;
    case 3:
      v5 = 0x6B53746E65746E69;
      v6 = 0xED00006465707069;
      break;
    default:
      v5 = 0xD000000000000012;
      v6 = 0x8000000231481D90;
      break;
  }

  switch(a2)
  {
    case 1:
      break;
    case 2:
      v3 = 0x6564646962726F66;
      v2 = 0xE90000000000006ELL;
      break;
    case 3:
      v3 = 0x6B53746E65746E69;
      v2 = 0xED00006465707069;
      break;
    default:
      v3 = 0xD000000000000012;
      v2 = 0x8000000231481D90;
      break;
  }

  if (v5 == v3 && v6 == v2)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_2314787C8();
  }

  return v8 & 1;
}

uint64_t sub_2314195BC(unsigned __int8 a1, uint64_t a2)
{
  v2 = 0xD000000000000014;
  v3 = "SendMessageIntent";
  v4 = "SendMessageIntent";
  v5 = a1;
  v6 = 0xD000000000000014;
  switch(v5)
  {
    case 1:
      v4 = "databaseURLIsInvalid";
      break;
    case 2:
      v4 = "databaseWouldNotOpen";
      v6 = 0xD00000000000001DLL;
      break;
    case 3:
      v4 = "cannotWriteToReadonlyDatabase";
      v6 = 0xD000000000000016;
      break;
    default:
      break;
  }

  switch(a2)
  {
    case 1:
      v3 = "databaseURLIsInvalid";
      break;
    case 2:
      v3 = "databaseWouldNotOpen";
      v2 = 0xD00000000000001DLL;
      break;
    case 3:
      v3 = "cannotWriteToReadonlyDatabase";
      v2 = 0xD000000000000016;
      break;
    default:
      break;
  }

  if (v6 == v2 && (v4 | 0x8000000000000000) == (v3 | 0x8000000000000000))
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_82(v6, a2, v2);
  }

  return v8 & 1;
}

uint64_t sub_2314196D0(unsigned __int8 a1, uint64_t a2)
{
  v2 = 0x6449656369766564;
  v3 = 0xE800000000000000;
  v4 = a1;
  v5 = 0x6449656369766564;
  switch(v4)
  {
    case 1:
      v3 = 0xE600000000000000;
      v5 = 0x6E69616D6F64;
      break;
    case 2:
      v6 = 0x656C646E7562;
      goto LABEL_8;
    case 3:
      v3 = 0xE400000000000000;
      v5 = 1701869940;
      break;
    case 4:
      v5 = 0x676E696C646E6168;
      v3 = 0xEE00737574617453;
      break;
    case 5:
      v5 = 0x6F69746365726964;
      v3 = 0xE90000000000006ELL;
      break;
    case 6:
      v5 = 0x6574616E6F447369;
      v3 = 0xEF69726953794264;
      break;
    case 7:
      v6 = 0x797469746E65;
LABEL_8:
      v5 = v6 & 0xFFFFFFFFFFFFLL | 0x6449000000000000;
      break;
    case 8:
      v5 = 0x7954797469746E65;
      v3 = 0xEA00000000006570;
      break;
    case 9:
      v3 = 0xE700000000000000;
      v5 = 0x6C61636F4C7369;
      break;
    default:
      break;
  }

  v7 = 0xE800000000000000;
  switch(a2)
  {
    case 1:
      v7 = 0xE600000000000000;
      v2 = 0x6E69616D6F64;
      break;
    case 2:
      v8 = 0x656C646E7562;
      goto LABEL_19;
    case 3:
      v7 = 0xE400000000000000;
      v2 = 1701869940;
      break;
    case 4:
      v2 = 0x676E696C646E6168;
      v7 = 0xEE00737574617453;
      break;
    case 5:
      v2 = 0x6F69746365726964;
      v7 = 0xE90000000000006ELL;
      break;
    case 6:
      v2 = 0x6574616E6F447369;
      v7 = 0xEF69726953794264;
      break;
    case 7:
      v8 = 0x797469746E65;
LABEL_19:
      v2 = v8 & 0xFFFFFFFFFFFFLL | 0x6449000000000000;
      break;
    case 8:
      v2 = 0x7954797469746E65;
      v7 = 0xEA00000000006570;
      break;
    case 9:
      v7 = 0xE700000000000000;
      v2 = 0x6C61636F4C7369;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v7)
  {
    v10 = 1;
  }

  else
  {
    v10 = OUTLINED_FUNCTION_82(v5, a2, v2);
  }

  return v10 & 1;
}

uint64_t sub_231419940(char a1, uint64_t a2)
{
  v3 = 0xE100000000000000;
  v4 = 61;
  switch(a1)
  {
    case 1:
      v3 = 0xE200000000000000;
      v4 = 15649;
      break;
    case 2:
      v4 = 60;
      break;
    case 3:
      v3 = 0xE200000000000000;
      v4 = 15676;
      break;
    case 4:
      v4 = 62;
      break;
    case 5:
      v3 = 0xE200000000000000;
      v4 = 15678;
      break;
    case 6:
      v3 = 0xE200000000000000;
      v4 = 20041;
      break;
    case 7:
      v3 = 0xE400000000000000;
      v4 = 1162561868;
      break;
    default:
      break;
  }

  v5 = 0xE100000000000000;
  v6 = 61;
  switch(a2)
  {
    case 1:
      v5 = 0xE200000000000000;
      v6 = 15649;
      break;
    case 2:
      v6 = 60;
      break;
    case 3:
      v5 = 0xE200000000000000;
      v6 = 15676;
      break;
    case 4:
      v6 = 62;
      break;
    case 5:
      v5 = 0xE200000000000000;
      v6 = 15678;
      break;
    case 6:
      v5 = 0xE200000000000000;
      v6 = 20041;
      break;
    case 7:
      v5 = 0xE400000000000000;
      v6 = 1162561868;
      break;
    default:
      break;
  }

  if (v4 == v6 && v3 == v5)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_82(v4, a2, v6);
  }

  return v8 & 1;
}

uint64_t sub_231419A88(unsigned __int8 a1, uint64_t a2)
{
  v2 = 0x79636E65636572;
  v3 = 0xE700000000000000;
  v4 = a1;
  v5 = 0x79636E65636572;
  switch(v4)
  {
    case 1:
      v3 = 0xE300000000000000;
      v5 = 7156326;
      break;
    case 2:
      v3 = 0xE400000000000000;
      v5 = 1831874918;
      break;
    case 3:
      v3 = 0xE400000000000000;
      v5 = 1919431014;
      break;
    case 4:
      v5 = 1919432294;
      v3 = 0xE400000000000000;
      break;
    case 5:
      v3 = 0xE500000000000000;
      v5 = 0x7961643166;
      break;
    case 6:
      v5 = 0x7961643766;
      v3 = 0xE500000000000000;
      break;
    case 7:
      v3 = 0xE600000000000000;
      v5 = 0x796164383266;
      break;
    case 8:
      v3 = 0xE400000000000000;
      v5 = 1718511974;
      break;
    default:
      break;
  }

  v6 = 0xE700000000000000;
  switch(a2)
  {
    case 1:
      v6 = 0xE300000000000000;
      v2 = 7156326;
      break;
    case 2:
      v6 = 0xE400000000000000;
      v2 = 1831874918;
      break;
    case 3:
      v6 = 0xE400000000000000;
      v2 = 1919431014;
      break;
    case 4:
      v2 = 1919432294;
      v6 = 0xE400000000000000;
      break;
    case 5:
      v6 = 0xE500000000000000;
      v2 = 0x7961643166;
      break;
    case 6:
      v2 = 0x7961643766;
      v6 = 0xE500000000000000;
      break;
    case 7:
      v6 = 0xE600000000000000;
      v2 = 0x796164383266;
      break;
    case 8:
      v6 = 0xE400000000000000;
      v2 = 1718511974;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_82(v5, a2, v2);
  }

  return v8 & 1;
}

uint64_t sub_231419C54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v82 = a3;
  v83 = a4;
  v84 = a2;
  v92 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D880, &qword_23147A208);
  MEMORY[0x28223BE20](v6 - 8);
  v81 = &v64 - v7;
  v80 = type metadata accessor for _NewEntity(0);
  MEMORY[0x28223BE20](v80);
  v86 = &v64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D888, &unk_23147A210);
  v78 = *(v9 - 8);
  v79 = v9;
  MEMORY[0x28223BE20](v9);
  v77 = &v64 - v10;
  v11 = sub_231477468();
  v85 = *(v11 - 8);
  v12 = MEMORY[0x28223BE20](v11);
  v76 = &v64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v64 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD4D890, qword_23147F7F0);
  v74 = *(v16 - 8);
  v75 = v16;
  MEMORY[0x28223BE20](v16);
  v18 = &v64 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D690, &qword_231479AD0);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v64 - v20;
  v22 = type metadata accessor for Interaction(0);
  MEMORY[0x28223BE20](v22);
  v24 = (&v64 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2313E93D4();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v21, 1, v22);
  v26 = MEMORY[0x277D837D0];
  v27 = MEMORY[0x277D0B840];
  if (EnumTagSinglePayload == 1)
  {
    v28 = MEMORY[0x277D0B840];
    sub_2313E937C(v21, &qword_27DD4D690, &qword_231479AD0);
    v29 = v85;
  }

  else
  {
    sub_2313F31EC();
    type metadata accessor for _Interaction(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D878, &qword_23147A200);
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_231479580;
    v32 = *v24;
    v31 = v24[1];
    *(v30 + 56) = v26;
    *(v30 + 64) = v27;
    *(v30 + 32) = v32;
    *(v30 + 40) = v31;

    sub_231477448();
    sub_2313F7138(&qword_280C3C5E0, type metadata accessor for _Interaction, &unk_23148044C);
    sub_231476EE8();
    v29 = v85;
    (*(v85 + 8))(v15, v11);
    v33 = v75;
    sub_2314774E8();
    if (v5)
    {
      (*(v74 + 8))(v18, v33);
      return sub_2313EB380();
    }

    v35 = v33;
    v28 = v27;
    (*(v74 + 8))(v18, v35);
    sub_2313EB380();
  }

  type metadata accessor for _NewInteraction(0);
  sub_2313F7138(&qword_280C3C588, type metadata accessor for _NewInteraction, &unk_2314801DC);
  result = sub_231477418();
  if (!v5)
  {
    v36 = v29;
    v37 = sub_231477788();
    v72 = sub_231477768();
    v38 = 0;
    v71 = *(v83 + 16);
    v67 = "dsTokens=?4, updatedAt=?5";
    v68 = (v36 + 8);
    v69 = xmmword_231479AB0;
    v66 = xmmword_231479AC0;
    v39 = v28;
    v70 = v11;
    v65 = v37;
    while (1)
    {
      if (v71 == v38)
      {
      }

      v40 = v77;
      v73 = v38;
      sub_2313E93D4();
      v41 = v40[1];
      v74 = *v40;
      v84 = 0;
      v85 = v41;
      v42 = v86;
      sub_2313F31EC();
      v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D878, &qword_23147A200);
      v43 = swift_allocObject();
      *(v43 + 16) = v69;
      v44 = *v42;
      v45 = v42[1];
      v46 = MEMORY[0x277D837D0];
      *(v43 + 56) = MEMORY[0x277D837D0];
      *(v43 + 64) = v39;
      v75 = v44;
      *(v43 + 32) = v44;
      *(v43 + 40) = v45;
      v47 = v42[2];
      v48 = v42[3];
      *(v43 + 96) = v46;
      *(v43 + 104) = v39;
      *(v43 + 72) = v47;
      *(v43 + 80) = v48;
      v49 = v42[4];
      v50 = v42[5];
      *(v43 + 136) = v46;
      *(v43 + 144) = v39;
      *(v43 + 112) = v49;
      *(v43 + 120) = v50;
      v51 = v42[6];
      v52 = v42[7];
      *(v43 + 176) = v46;
      *(v43 + 184) = v39;
      *(v43 + 152) = v51;
      *(v43 + 160) = v52;

      v53 = v81;
      sub_231476BC8();
      *(v43 + 216) = MEMORY[0x277D839F8];
      *(v43 + 224) = MEMORY[0x277D0B860];
      *(v43 + 192) = v54;
      v55 = v70;
      sub_231477448();
      __swift_storeEnumTagSinglePayload(v53, 0, 1, v55);
      v56 = v84;
      sub_231477818();
      if (v56)
      {

        sub_2313E937C(v53, &qword_27DD4D880, &qword_23147A208);
        return sub_2313EB380();
      }

      sub_2313E937C(v53, &qword_27DD4D880, &qword_23147A208);
      v57 = swift_allocObject();
      *(v57 + 16) = v66;
      *(v57 + 56) = v46;
      *(v57 + 64) = v39;
      *(v57 + 32) = v75;
      *(v57 + 40) = v45;
      *(v57 + 96) = v46;
      *(v57 + 104) = v39;
      *(v57 + 72) = v47;
      *(v57 + 80) = v48;

      v58 = v76;
      sub_231477448();
      v89 = 0;
      v87 = 0u;
      v88 = 0u;
      sub_231477538();
      sub_2313E937C(&v87, &unk_27DD4D8A0, &unk_23147A220);
      (*v68)(v58, v55);
      if (v91)
      {
        break;
      }

      *&v87 = v65;
      *(&v87 + 1) = v90;
      *&v88 = v74;
      *(&v88 + 1) = v85;
      sub_23141F970();
      sub_231477418();
      sub_2313EB380();

      v38 = v73 + 1;
    }

    if (qword_280C3CF50 != -1)
    {
      swift_once();
    }

    v59 = sub_231477B68();
    __swift_project_value_buffer(v59, qword_280C3D970);
    v60 = sub_231477B58();
    v61 = sub_2314782B8();
    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      *&v87 = v63;
      *v62 = 136446722;
      *(v62 + 4) = sub_2313EB684(0xD00000000000005ELL, 0x80000002314825D0, &v87);
      *(v62 + 12) = 2082;
      *(v62 + 14) = sub_2313EB684(0xD00000000000004DLL, 0x8000000231482630, &v87);
      *(v62 + 22) = 2050;
      *(v62 + 24) = 369;
      _os_log_impl(&dword_2313E1000, v60, v61, "unwrapped nil. file=%{public}s function=%{public}s line=%{public}ld", v62, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x23192F1F0](v63, -1, -1);
      MEMORY[0x23192F1F0](v62, -1, -1);
    }

    sub_23141F91C();
    swift_allocError();
    swift_willThrow();

    return sub_2313EB380();
  }

  return result;
}

uint64_t sub_23141A7C8@<X0>(char *a1@<X1>, BOOL *a2@<X8>)
{
  v17[0] = a2;
  v3 = sub_231477468();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17[1] = "f keys found, expected one.";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D878, &qword_23147A200);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_231479AC0;
  v8 = *a1;
  v9 = *(a1 + 1);
  v10 = MEMORY[0x277D0B840];
  *(v7 + 56) = MEMORY[0x277D837D0];
  *(v7 + 64) = v10;
  *(v7 + 32) = v8;
  *(v7 + 40) = v9;
  v11 = *(type metadata accessor for Interaction(0) + 48);
  v12 = sub_231476CA8();
  v13 = MEMORY[0x277D0B6A0];
  *(v7 + 96) = v12;
  *(v7 + 104) = v13;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v7 + 72));
  (*(*(v12 - 8) + 16))(boxed_opaque_existential_1, &a1[v11], v12);

  sub_231477448();
  v15 = v17[3];
  sub_2314777E8();
  if (v15)
  {
    return (*(v4 + 8))(v6, v3);
  }

  (*(v4 + 8))(v6, v3);
  result = sub_231477738();
  *v17[0] = result == 0;
  return result;
}

id sub_23141A9D0(uint64_t a1, uint64_t a2)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_231477E58();

  v4 = [v2 initWithString_];

  return v4;
}

BOOL static Donation.== infix(_:_:)()
{
  OUTLINED_FUNCTION_73();
  static Interaction.== infix(_:_:)(v2, v3);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = type metadata accessor for Donation(0);
  if ((sub_23141AEE0(*(v1 + *(v5 + 20)), *(v0 + *(v5 + 20))) & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_76();
  if (!v6)
  {
    return 0;
  }

  OUTLINED_FUNCTION_76();
  if (!v6)
  {
    return 0;
  }

  v7 = *(v5 + 32);
  v8 = *(v1 + v7 + 8);
  v17 = *(v1 + v7);
  v18 = v8;
  v9 = (v0 + v7);
  v10 = v9[1];
  v15 = *v9;
  v16 = v10;
  sub_2313E6C34(v17, v8);
  v11 = OUTLINED_FUNCTION_42();
  sub_2313E6C34(v11, v12);
  v13 = static UserDonator.== infix(_:_:)(&v17, &v15);
  sub_2313EADE8(v15, v16);
  sub_2313EADE8(v17, v18);
  if ((v13 & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_76();
  if (!v6)
  {
    return 0;
  }

  OUTLINED_FUNCTION_76();
  return v6 != 0;
}

void sub_23141AB28(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return;
  }

  v3 = a1;
  if (*(a1 + 16) != *(a2 + 16))
  {
    return;
  }

  v4 = 0;
  v5 = a1 + 64;
  OUTLINED_FUNCTION_36();
  v8 = v7 & v6;
  v10 = (v9 + 63) >> 6;
  v85 = v3;
  while (2)
  {
    if (v8)
    {
      v11 = __clz(__rbit64(v8));
      v86 = (v8 - 1) & v8;
      goto LABEL_11;
    }

    v12 = v4;
    do
    {
      v4 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        return;
      }

      if (v4 >= v10)
      {
        return;
      }

      v13 = *(v5 + 8 * v4);
      ++v12;
    }

    while (!v13);
    v11 = __clz(__rbit64(v13));
    v86 = (v13 - 1) & v13;
LABEL_11:
    v14 = v11 | (v4 << 6);
    v15 = *(*(v3 + 48) + 16 * v14 + 8);
    v16 = *(v3 + 56) + 24 * v14;
    v17 = *v16;
    v18 = *(v16 + 8);
    v19 = *(v16 + 16);

    v20 = OUTLINED_FUNCTION_42();
    sub_231401AEC(v20, v21, v19);
    if (!v15)
    {
      return;
    }

    v22 = sub_2313F0604();
    v24 = v23;

    if ((v24 & 1) == 0)
    {
      goto LABEL_41;
    }

    v25 = *(a2 + 56) + 24 * v22;
    v26 = *v25;
    v27 = *(v25 + 16);
    switch(v27)
    {
      case 1:
        v58 = OUTLINED_FUNCTION_55_0();
        sub_231403090(v58, v59, 1);
        if (v19 != 1)
        {
          goto LABEL_41;
        }

        v60 = OUTLINED_FUNCTION_42();
        sub_231403090(v60, v61, 1);
        v54 = *&v26 == *&v17;
        v3 = v85;
        goto LABEL_29;
      case 2:
        v3 = v85;
        if (v19 == 2)
        {
          v50 = OUTLINED_FUNCTION_55_0();
          sub_231403090(v50, v51, 2);
          v52 = OUTLINED_FUNCTION_42();
          sub_231403090(v52, v53, 2);
          v54 = v26 == v17;
LABEL_29:
          v8 = v86;
          if (!v54)
          {
            return;
          }

          continue;
        }

        v27 = 2;
LABEL_40:
        v81 = OUTLINED_FUNCTION_55_0();
        sub_231403090(v81, v82, v27);
LABEL_41:
        v83 = OUTLINED_FUNCTION_42();
        sub_231403090(v83, v84, v19);
        return;
      case 3:
        if (v19 != 3)
        {
          goto LABEL_39;
        }

        if (*&v26 != *&v17 || *(v25 + 8) != v18)
        {
          OUTLINED_FUNCTION_55_0();
          v40 = sub_2314787C8();

          v56 = OUTLINED_FUNCTION_55_0();
          sub_231403090(v56, v57, 3);
          v47 = OUTLINED_FUNCTION_42();
          v49 = 3;
          goto LABEL_33;
        }

        v77 = OUTLINED_FUNCTION_42();
        sub_231403090(v77, v78, 3);
        v79 = OUTLINED_FUNCTION_42();
        sub_231403090(v79, v80, 3);
        v3 = v85;
        v8 = v86;
        continue;
      case 4:
        if (v19 != 4)
        {
          goto LABEL_39;
        }

        v32 = OUTLINED_FUNCTION_55_0();
        sub_231401AEC(v32, v33, 4);
        v34 = OUTLINED_FUNCTION_55_0();
        sub_231401AEC(v34, v35, 4);
        v36 = OUTLINED_FUNCTION_42();
        sub_231401AEC(v36, v37, 4);
        v38 = OUTLINED_FUNCTION_90();
        v40 = sub_23140F540(v38, v39);
        v41 = OUTLINED_FUNCTION_42();
        sub_231403090(v41, v42, 4);
        v43 = OUTLINED_FUNCTION_55_0();
        sub_231403090(v43, v44, 4);
        v45 = OUTLINED_FUNCTION_55_0();
        sub_231403090(v45, v46, 4);
        v47 = OUTLINED_FUNCTION_42();
        v49 = 4;
        goto LABEL_33;
      case 5:
        if (v19 != 5)
        {
LABEL_39:

          goto LABEL_40;
        }

        v62 = OUTLINED_FUNCTION_55_0();
        sub_231401AEC(v62, v63, 5);
        v64 = OUTLINED_FUNCTION_55_0();
        sub_231401AEC(v64, v65, 5);
        v66 = OUTLINED_FUNCTION_42();
        sub_231401AEC(v66, v67, 5);
        v68 = OUTLINED_FUNCTION_90();
        sub_23141AB28(v68, v69);
        v40 = v70;
        v71 = OUTLINED_FUNCTION_42();
        sub_231403090(v71, v72, 5);
        v73 = OUTLINED_FUNCTION_55_0();
        sub_231403090(v73, v74, 5);
        v75 = OUTLINED_FUNCTION_55_0();
        sub_231403090(v75, v76, 5);
        v47 = OUTLINED_FUNCTION_42();
        v49 = 5;
LABEL_33:
        sub_231403090(v47, v48, v49);
        v3 = v85;
        v8 = v86;
        if ((v40 & 1) == 0)
        {
          return;
        }

        continue;
      default:
        v28 = OUTLINED_FUNCTION_55_0();
        sub_231403090(v28, v29, 0);
        if (v19)
        {
          goto LABEL_41;
        }

        v30 = OUTLINED_FUNCTION_42();
        sub_231403090(v30, v31, 0);
        v3 = v85;
        v8 = v86;
        if (((LODWORD(v26) ^ LODWORD(v17)) & 1) == 0)
        {
          continue;
        }

        return;
    }
  }
}

uint64_t sub_23141AEE0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Entity(0);
  v5 = *(v4 - 8);
  v39 = v4;
  v40 = v5;
  v6 = MEMORY[0x28223BE20](v4);
  v8 = (&v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = MEMORY[0x28223BE20](v6);
  v11 = (&v33 - v10);
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v12 = 0;
  v13 = a1 + 64;
  v14 = 1 << *(a1 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & *(a1 + 64);
  v17 = (v14 + 63) >> 6;
  v34 = v17;
  v35 = a1;
  if (v16)
  {
    while (1)
    {
      v18 = __clz(__rbit64(v16));
      v36 = (v16 - 1) & v16;
LABEL_12:
      v21 = *(*(a1 + 56) + 8 * (v18 | (v12 << 6)));

      v22 = sub_2313F0604();
      v24 = v23;

      if ((v24 & 1) == 0 || (v25 = *(*(a2 + 56) + 8 * v22), v26 = *(v25 + 16), v26 != *(v21 + 16)))
      {
LABEL_38:

        return 0;
      }

      if (v26 && v25 != v21)
      {
        break;
      }

LABEL_33:

      v17 = v34;
      a1 = v35;
      v16 = v36;
      if (!v36)
      {
        goto LABEL_7;
      }
    }

    v33 = a2;
    v27 = (*(v40 + 80) + 32) & ~*(v40 + 80);
    v37 = v21 + v27;
    v38 = v25 + v27;

    v28 = 0;
    while (v28 < *(v25 + 16))
    {
      result = sub_2313EB328();
      if (v28 >= *(v21 + 16))
      {
        goto LABEL_42;
      }

      sub_2313EB328();
      v29 = *v11 == *v8 && v11[1] == v8[1];
      if (!v29 && (sub_2314787C8() & 1) == 0 || (v11[2] == v8[2] ? (v30 = v11[3] == v8[3]) : (v30 = 0), !v30 && (sub_2314787C8() & 1) == 0 || (sub_23141AB28(v11[4], v8[4]), (v31 & 1) == 0)))
      {
        sub_2313EB380();
        sub_2313EB380();
LABEL_37:

        goto LABEL_38;
      }

      v32 = sub_231476C68();
      sub_2313EB380();
      result = sub_2313EB380();
      if ((v32 & 1) == 0)
      {
        goto LABEL_37;
      }

      if (v26 == ++v28)
      {

        a2 = v33;
        goto LABEL_33;
      }
    }
  }

  else
  {
LABEL_7:
    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {
        return 1;
      }

      v20 = *(v13 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v36 = (v20 - 1) & v20;
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_42:
  __break(1u);
  return result;
}

uint64_t sub_23141B298(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7463617265746E69 && a2 == 0xEB000000006E6F69;
  if (v4 || (sub_2314787C8() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x7365697469746E65 && a2 == 0xE800000000000000;
    if (v6 || (sub_2314787C8() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x7453657461647075 && a2 == 0xEE00796765746172;
      if (v7 || (sub_2314787C8() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x727453726F6E6F64 && a2 == 0xEB000000006D6165;
        if (v8 || (sub_2314787C8() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x616E6F4472657375 && a2 == 0xEB00000000726F74;
          if (v9 || (sub_2314787C8() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x6C61636F4C7369 && a2 == 0xE700000000000000;
            if (v10 || (sub_2314787C8() & 1) != 0)
            {

              return 5;
            }

            else if (a1 == 0x6C50656369766564 && a2 == 0xEE006D726F667461)
            {

              return 6;
            }

            else
            {
              v12 = sub_2314787C8();

              if (v12)
              {
                return 6;
              }

              else
              {
                return 7;
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_23141B4EC(unsigned __int8 a1)
{
  sub_2314788E8();
  MEMORY[0x23192E9B0](a1);
  return sub_231478918();
}

uint64_t sub_23141B548(uint64_t a1)
{
  v2 = *v1;
  sub_2314788E8();
  MEMORY[0x23192E9B0](v2);
  return sub_231478918();
}

uint64_t sub_23141B58C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23141B298(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23141B5D4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_23141B4E4();
  *a1 = result;
  return result;
}

uint64_t sub_23141B5FC(uint64_t a1)
{
  v2 = sub_2313F7180();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23141B638(uint64_t a1)
{
  v2 = sub_2313F7180();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Donation.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D6C8, &unk_231479AF0);
  OUTLINED_FUNCTION_4();
  v7 = v6;
  OUTLINED_FUNCTION_61();
  MEMORY[0x28223BE20](v8);
  v10 = &v29 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2313F7180();
  sub_231478968();
  LOBYTE(v30) = 0;
  type metadata accessor for Interaction(0);
  OUTLINED_FUNCTION_62_0();
  sub_2313F7138(v11, v12, &protocol conformance descriptor for Interaction);
  OUTLINED_FUNCTION_99();
  sub_231478748();
  if (!v2)
  {
    v13 = type metadata accessor for Donation(0);
    v30 = *(v3 + v13[5]);
    OUTLINED_FUNCTION_122();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D6E0, &unk_23147C540);
    sub_23141ED50();
    OUTLINED_FUNCTION_99();
    sub_231478748();
    LOBYTE(v30) = *(v3 + v13[6]);
    v32 = 2;
    v14 = sub_23141EE14();
    OUTLINED_FUNCTION_43_0(v14, v15, v16, &type metadata for UpdateStrategy);
    LOBYTE(v30) = *(v3 + v13[7]);
    v32 = 3;
    v17 = sub_23141EE68();
    OUTLINED_FUNCTION_43_0(v17, v18, v19, &type metadata for DonorStream);
    v20 = (v3 + v13[8]);
    v21 = v20[1];
    v30 = *v20;
    v31 = v21;
    v32 = 4;
    sub_2313E6C34(v30, v21);
    v22 = sub_23141EEBC();
    OUTLINED_FUNCTION_43_0(v22, v23, v24, &type metadata for UserDonator);
    sub_2313EADE8(v30, v31);
    LOBYTE(v30) = 5;
    sub_231478728();
    LOBYTE(v30) = *(v3 + v13[10]);
    v32 = 6;
    v25 = sub_23141EF10();
    OUTLINED_FUNCTION_43_0(v25, v26, v27, &type metadata for InteractionDevicePlatform);
  }

  return (*(v7 + 8))(v10, v5);
}

unint64_t sub_23141B924(uint64_t a1, uint64_t a2)
{
  v2 = sub_231478638();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_23141B970(char a1)
{
  result = 0x4564696C61766E69;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0x6564646962726F66;
      break;
    case 3:
      result = 0x6B53746E65746E69;
      break;
    default:
      result = 0xD000000000000012;
      break;
  }

  return result;
}

unint64_t sub_23141BA54@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_23141B924(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_23141BA84@<X0>(unint64_t *a1@<X8>)
{
  result = sub_23141B970(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_23141BAB0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65726F6E6769 && a2 == 0xE600000000000000;
  if (v4 || (sub_2314787C8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x746972777265766FLL && a2 == 0xE900000000000065)
  {

    return 1;
  }

  else
  {
    v7 = sub_2314787C8();

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

uint64_t sub_23141BB84(char a1)
{
  sub_2314788E8();
  MEMORY[0x23192E9B0](a1 & 1);
  return sub_231478918();
}

uint64_t sub_23141BBCC(char a1)
{
  if (a1)
  {
    return 0x746972777265766FLL;
  }

  else
  {
    return 0x65726F6E6769;
  }
}

uint64_t sub_23141BC20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23141BAB0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23141BC48@<X0>(_BYTE *a1@<X8>)
{
  result = sub_23141BB7C();
  *a1 = result;
  return result;
}