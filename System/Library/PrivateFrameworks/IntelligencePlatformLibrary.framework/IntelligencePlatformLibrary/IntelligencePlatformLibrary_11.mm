uint64_t ResponseGeneration.Event.CacheManagerCall.StateInfo.hash(into:)()
{
  if (*(v0 + 33))
  {
    OUTLINED_FUNCTION_172_2();
    if (v1)
    {
      OUTLINED_FUNCTION_103_5();
      v2 = sub_19351DE98();
      v3 = v2;
      v4 = &type metadata for ResponseGeneration.Event.CacheManagerCall.Ended;
    }

    else
    {
      OUTLINED_FUNCTION_103_5();
      v2 = sub_19351DE44();
      v3 = v2;
      v4 = &type metadata for ResponseGeneration.Event.CacheManagerCall.Failed;
    }
  }

  else
  {
    v2 = sub_19351DEEC();
    v3 = v2;
    v4 = &type metadata for ResponseGeneration.Event.CacheManagerCall.Started;
  }

  return OUTLINED_FUNCTION_154_0(v2, v4, v3);
}

uint64_t ResponseGeneration.Event.GMSCall.StateInfo.hash(into:)()
{
  if (*(v0 + 33))
  {
    OUTLINED_FUNCTION_172_2();
    if (v1)
    {
      OUTLINED_FUNCTION_103_5();
      v2 = sub_19351DF94();
      v3 = v2;
      v4 = &type metadata for ResponseGeneration.Event.GMSCall.Ended;
    }

    else
    {
      OUTLINED_FUNCTION_103_5();
      v2 = sub_19351DF40();
      v3 = v2;
      v4 = &type metadata for ResponseGeneration.Event.GMSCall.Failed;
    }
  }

  else
  {
    v2 = sub_19351DFE8();
    v3 = v2;
    v4 = &type metadata for ResponseGeneration.Event.GMSCall.Started;
  }

  return OUTLINED_FUNCTION_154_0(v2, v4, v3);
}

void static ResponseGeneration.Event.EventType.== infix(_:_:)()
{
  OUTLINED_FUNCTION_117();
  v140 = v3;
  v141 = v4;
  v5 = type metadata accessor for ResponseGeneration.Event.GMSCall(0);
  v6 = OUTLINED_FUNCTION_47(v5);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_15_8();
  v136 = v7;
  OUTLINED_FUNCTION_47_3();
  MEMORY[0x1EEE9AC00](v8);
  v135 = &v131 - v9;
  v10 = type metadata accessor for ResponseGeneration.Event.CacheManagerCall(0);
  v11 = OUTLINED_FUNCTION_47(v10);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_15_8();
  v134 = v12;
  OUTLINED_FUNCTION_47_3();
  MEMORY[0x1EEE9AC00](v13);
  v133 = &v131 - v14;
  v15 = type metadata accessor for ResponseGeneration.Event.Generation(0);
  v16 = OUTLINED_FUNCTION_47(v15);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_15_8();
  v132 = v17;
  OUTLINED_FUNCTION_47_3();
  MEMORY[0x1EEE9AC00](v18);
  v131 = &v131 - v19;
  v20 = type metadata accessor for ResponseGeneration.Event.EventType(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_15_8();
  v139 = v22;
  OUTLINED_FUNCTION_47_3();
  MEMORY[0x1EEE9AC00](v23);
  v138 = &v131 - v24;
  OUTLINED_FUNCTION_47_3();
  v26 = MEMORY[0x1EEE9AC00](v25);
  v28 = &v131 - v27;
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_134_4();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_173_3();
  MEMORY[0x1EEE9AC00](v30);
  v137 = &v131 - v31;
  OUTLINED_FUNCTION_47_3();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_66_4();
  MEMORY[0x1EEE9AC00](v33);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3C1D8, &qword_19395B520);
  OUTLINED_FUNCTION_47(v34);
  OUTLINED_FUNCTION_3_0();
  v36 = MEMORY[0x1EEE9AC00](v35);
  v38 = &v131 - v37;
  v39 = &v131 + *(v36 + 56) - v37;
  sub_19351E57C();
  v141 = v39;
  sub_19351E57C();
  OUTLINED_FUNCTION_88_6();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_1_34();
      sub_19351E57C();
      v42 = v38;
      v90 = *v2;
      v89 = v2[1];
      v91 = v2[2];
      v67 = v2[3];
      v69 = *(v2 + 16);
      if (OUTLINED_FUNCTION_87_6() == 1)
      {
        v92 = *v20;
        v93 = v20[1];
        v140 = v42;
        OUTLINED_FUNCTION_63_6();
        v154[0] = v90;
        v154[1] = v89;
        v154[2] = v91;
        v154[3] = v67;
        LOWORD(v154[4]) = v69;
        v152 = v92;
        v153 = v93;
        v95 = OUTLINED_FUNCTION_62_11(v94);
        static ResponseGeneration.Event.RequestValidation.== infix(_:_:)(v95, v96, v97, v98, v99, v100, v101, v102, v131, v132, v133, v134, v135, v136, v137, v138, v139, v140, v141, v142, v143, v144, v145, v146, v147, v148, v149, v150, v151[0], v151[1], v151[2], v151[3], v151[4], v151[5]);
        goto LABEL_16;
      }

      v125 = OUTLINED_FUNCTION_44_7();
      goto LABEL_26;
    case 2u:
      OUTLINED_FUNCTION_1_34();
      v64 = v137;
      sub_19351E57C();
      memcpy(v154, v64, 0x48uLL);
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        OUTLINED_FUNCTION_185_2(&v152);
        memcpy(v151, v64, sizeof(v151));
        OUTLINED_FUNCTION_185_2(&v142);
        static ResponseGeneration.Event.Override.== infix(_:_:)();
        sub_193510818(&v152);
        sub_193510818(v154);
        goto LABEL_33;
      }

      sub_193510818(v154);
      goto LABEL_30;
    case 3u:
      OUTLINED_FUNCTION_1_34();
      sub_19351E57C();
      v66 = *v1;
      v65 = v1[1];
      v42 = v38;
      v68 = v1[2];
      v67 = v1[3];
      v69 = *(v1 + 16);
      if (OUTLINED_FUNCTION_87_6() == 3)
      {
        v70 = *v20;
        v71 = v20[1];
        v140 = v42;
        OUTLINED_FUNCTION_63_6();
        v154[0] = v66;
        v154[1] = v65;
        v154[2] = v68;
        v154[3] = v67;
        LOWORD(v154[4]) = v69;
        v152 = v70;
        v153 = v71;
        v73 = OUTLINED_FUNCTION_62_11(v72);
        static ResponseGeneration.Event.ResponseCatalog.== infix(_:_:)(v73, v74, v75, v76, v77, v78, v79, v80, v131, v132, v133, v134, v135, v136, v137, v138, v139, v140, v141, v142, v143, v144, v145, v146, v147, v148, v149, v150, v151[0], v151[1], v151[2], v151[3], v151[4], v151[5]);
        OUTLINED_FUNCTION_109_6();
        OUTLINED_FUNCTION_136_2();
        sub_19345D748(v81, v82, v83, v84, v85);
        v86 = OUTLINED_FUNCTION_19_3();
        v88 = v68;
        goto LABEL_17;
      }

      v125 = OUTLINED_FUNCTION_19_3();
      v127 = v68;
LABEL_26:
      sub_19345D748(v125, v126, v127, v67, v69);
      goto LABEL_27;
    case 4u:
      OUTLINED_FUNCTION_1_34();
      OUTLINED_FUNCTION_166();
      sub_19351E57C();
      v41 = *v0;
      v40 = v0[1];
      v42 = v38;
      v44 = v0[2];
      v43 = v0[3];
      v45 = *(v0 + 16);
      if (OUTLINED_FUNCTION_87_6() == 4)
      {
        v46 = *v20;
        v47 = v20[1];
        v140 = v42;
        OUTLINED_FUNCTION_63_6();
        v154[0] = v41;
        v154[1] = v40;
        v154[2] = v44;
        v154[3] = v43;
        LOWORD(v154[4]) = v45;
        v152 = v46;
        v153 = v47;
        v49 = OUTLINED_FUNCTION_62_11(v48);
        static ResponseGeneration.Event.ModelInference.== infix(_:_:)(v49, v50, v51, v52, v53, v54, v55, v56, v131, v132, v133, v134, v135, v136, v137, v138, v139, v140, v141, v142, v143, v144, v145, v146, v147, v148, v149, v150, v151[0], v151[1], v151[2], v151[3], v151[4], v151[5]);
        OUTLINED_FUNCTION_136_2();
        sub_193510804(v57, v58, v59, v60, v61);
        v62 = OUTLINED_FUNCTION_19_3();
        sub_193510804(v62, v63, v44, v43, v45);
        goto LABEL_33;
      }

      v123 = OUTLINED_FUNCTION_19_3();
      sub_193510804(v123, v124, v44, v43, v45);
LABEL_27:
      v38 = v42;
      goto LABEL_30;
    case 5u:
      OUTLINED_FUNCTION_1_34();
      sub_19351E57C();
      v103 = v38;
      v105 = *v28;
      v104 = *(v28 + 1);
      v106 = *(v28 + 2);
      v67 = *(v28 + 3);
      v69 = *(v28 + 16);
      if (OUTLINED_FUNCTION_87_6() != 5)
      {
        v128 = OUTLINED_FUNCTION_44_7();
        sub_19345D748(v128, v129, v130, v67, v69);
        v38 = v103;
        goto LABEL_30;
      }

      v140 = v103;
      v107 = *v20;
      v108 = v20[1];
      OUTLINED_FUNCTION_63_6();
      v154[0] = v105;
      v154[1] = v104;
      v154[2] = v106;
      v154[3] = v67;
      LOWORD(v154[4]) = v69;
      v152 = v107;
      v153 = v108;
      v110 = OUTLINED_FUNCTION_62_11(v109);
      static ResponseGeneration.Event.HallucinationDetection.== infix(_:_:)(v110, v111, v112, v113, v114, v115, v116, v117, v131, v132, v133, v134, v135, v136, v137, v138, v139, v140, v141, v142, v143, v144, v145, v146, v147, v148, v149, v150, v151[0], v151[1], v151[2], v151[3], v151[4], v151[5]);
LABEL_16:
      OUTLINED_FUNCTION_136_2();
      sub_19345D748(v118, v119, v120, v121, v122);
      v86 = OUTLINED_FUNCTION_44_7();
LABEL_17:
      sub_19345D748(v86, v87, v88, v67, v69);
      goto LABEL_33;
    case 6u:
      OUTLINED_FUNCTION_1_34();
      sub_19351E57C();
      if (OUTLINED_FUNCTION_87_6() != 6)
      {
        goto LABEL_29;
      }

      sub_19351E5D8();
      sub_19351E5D8();
      OUTLINED_FUNCTION_55();
      static ResponseGeneration.Event.CacheManagerCall.== infix(_:_:)();
      goto LABEL_20;
    case 7u:
      OUTLINED_FUNCTION_1_34();
      sub_19351E57C();
      if (OUTLINED_FUNCTION_87_6() != 7)
      {
        goto LABEL_29;
      }

      sub_19351E5D8();
      sub_19351E5D8();
      OUTLINED_FUNCTION_55();
      static ResponseGeneration.Event.GMSCall.== infix(_:_:)();
LABEL_20:
      sub_19351E634();
      goto LABEL_32;
    default:
      OUTLINED_FUNCTION_1_34();
      sub_19351E57C();
      if (OUTLINED_FUNCTION_87_6())
      {
        OUTLINED_FUNCTION_83_6();
LABEL_29:
        sub_19351E634();
LABEL_30:
        sub_19344E6DC(v38, &qword_1EAE3C1D8, &qword_19395B520);
      }

      else
      {
        sub_19351E5D8();
        sub_19351E5D8();
        OUTLINED_FUNCTION_107_5();
        static ResponseGeneration.Event.Generation.== infix(_:_:)();
        sub_19351E634();
LABEL_32:
        sub_19351E634();
LABEL_33:
        OUTLINED_FUNCTION_76_6();
        sub_19351E634();
      }

      OUTLINED_FUNCTION_116();
      return;
  }
}

void ResponseGeneration.Event.EventType.hash(into:)()
{
  OUTLINED_FUNCTION_117();
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for ResponseGeneration.Event.GMSCall(v0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_5_30();
  type metadata accessor for ResponseGeneration.Event.CacheManagerCall(v2);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5_1();
  type metadata accessor for ResponseGeneration.Event.Generation(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5_1();
  type metadata accessor for ResponseGeneration.Event.EventType(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5_1();
  v8 = (v7 - v6);
  OUTLINED_FUNCTION_1_34();
  sub_19351E57C();
  OUTLINED_FUNCTION_125_3();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_36_12();
      sub_19351E18C();
      goto LABEL_9;
    case 2u:
      memcpy(v20, v8, sizeof(v20));
      memcpy(v19, v8, sizeof(v19));
      sub_19351E138();
      sub_19393C540();
      sub_193510818(v20);
      goto LABEL_12;
    case 3u:
      OUTLINED_FUNCTION_36_12();
      sub_19351E0E4();
      goto LABEL_9;
    case 4u:
      OUTLINED_FUNCTION_36_12();
      sub_19351E090();
      sub_19393C540();
      v9 = OUTLINED_FUNCTION_148_3();
      sub_193510804(v9, v10, v11, v12, v13);
      goto LABEL_12;
    case 5u:
      OUTLINED_FUNCTION_36_12();
      sub_19351E03C();
LABEL_9:
      sub_19393C540();
      v14 = OUTLINED_FUNCTION_148_3();
      sub_19345D748(v14, v15, v16, v17, v18);
      goto LABEL_12;
    case 6u:
      sub_19351E5D8();
      sub_19351E688(&qword_1EAE3C1E8, type metadata accessor for ResponseGeneration.Event.CacheManagerCall, &protocol conformance descriptor for ResponseGeneration.Event.CacheManagerCall);
      OUTLINED_FUNCTION_21_1();
      sub_19393C540();
      goto LABEL_11;
    case 7u:
      sub_19351E5D8();
      sub_19351E688(&qword_1EAE3C1E0, type metadata accessor for ResponseGeneration.Event.GMSCall, &protocol conformance descriptor for ResponseGeneration.Event.GMSCall);
      OUTLINED_FUNCTION_21_1();
      sub_19393C540();
      goto LABEL_11;
    default:
      OUTLINED_FUNCTION_19_3();
      sub_19351E5D8();
      sub_19351E688(&qword_1EAE3C218, type metadata accessor for ResponseGeneration.Event.Generation, &protocol conformance descriptor for ResponseGeneration.Event.Generation);
      OUTLINED_FUNCTION_21_1();
      sub_19393C540();
      OUTLINED_FUNCTION_83_6();
LABEL_11:
      sub_19351E634();
LABEL_12:
      OUTLINED_FUNCTION_116();
      return;
  }
}

void PlanGeneration.PlanGenerationFailureReason.init(rawValue:)(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  if (a2 == 1)
  {
    v2 = 0;
  }

  else
  {
    v2 = a2;
  }

  *a1 = v2;
  OUTLINED_FUNCTION_21(a1);
}

uint64_t PlanGeneration.PlanGenerationFailureReason.rawValue.getter()
{
  if (v0[8])
  {
    return 1;
  }

  else
  {
    return *v0;
  }
}

uint64_t static PlanGeneration.PlanGenerationFailureReason.allCases.getter()
{
  v0 = OUTLINED_FUNCTION_95_0();
  v6 = sub_1934B0FCC(v0, v1, v2, v3, v4, v5);
  v8 = *(v6 + 2);
  v7 = *(v6 + 3);
  if (v7 >> 1 <= v8)
  {
    v18 = OUTLINED_FUNCTION_39(v7);
    OUTLINED_FUNCTION_84_2(v18, v19, v20, v21, &qword_1EAE3C3D0, &qword_19395BB40);
    OUTLINED_FUNCTION_17_2();
  }

  *(v6 + 2) = v8 + 1;
  OUTLINED_FUNCTION_92_4();
  if (v14 < (v8 + 2))
  {
    v22 = OUTLINED_FUNCTION_39(v13);
    v9 = OUTLINED_FUNCTION_85(v22, v23, v24, v25, &qword_1EAE3C3D0, &qword_19395BB40);
    v12 = v9;
  }

  OUTLINED_FUNCTION_47_5(v9, v10, v11, v12);
  *(v15 + 32) = 0;
  *(v15 + 40) = 1;
  return v16;
}

uint64_t PlanGeneration.PlanGenerationFailureReason.description.getter()
{
  if (*(v0 + 8))
  {
    return 0xD000000000000010;
  }

  else
  {
    return 0x6E776F6E6B6E55;
  }
}

uint64_t PlanGeneration.PlanGenerationFailureReason.init(_:)()
{
  v3 = OUTLINED_FUNCTION_0_15();
  v5 = v5 && v4 == 0xE700000000000000;
  if (v5 || (OUTLINED_FUNCTION_22_7(v3) & 1) != 0)
  {

    LOBYTE(v2) = 0;
  }

  else if (v2 == 0xD000000000000010 && 0x8000000193A19A00 == v1)
  {

    LOBYTE(v2) = 1;
  }

  else
  {
    OUTLINED_FUNCTION_25_7(16, 0x8000000193A19A00);
    result = OUTLINED_FUNCTION_89();
  }

  *v0 = 0;
  *(v0 + 8) = v2 & 1;
  *(v0 + 9) = 0;
  return result;
}

void static PlanGeneration.StateInfo.== infix(_:_:)()
{
  OUTLINED_FUNCTION_117();
  v1 = OUTLINED_FUNCTION_133_4();
  v2 = type metadata accessor for PlanGeneration.Ended(v1);
  v3 = OUTLINED_FUNCTION_47(v2);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_15_8();
  OUTLINED_FUNCTION_47_3();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_38_11();
  type metadata accessor for PlanGeneration.StateInfo(v5);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_66_4();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_97_4();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_98_6();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3C220, &qword_19395B528);
  OUTLINED_FUNCTION_47(v9);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_53_7();
  sub_19351E57C();
  OUTLINED_FUNCTION_107_5();
  sub_19351E57C();
  v11 = OUTLINED_FUNCTION_162_3();
  if (v11)
  {
    if (v11 == 1)
    {
      OUTLINED_FUNCTION_12_20();
      OUTLINED_FUNCTION_102_4();
      sub_19351E57C();
      OUTLINED_FUNCTION_55();
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_19351E5D8();
        OUTLINED_FUNCTION_120_2();
        v12 = OUTLINED_FUNCTION_94_5();
        static PlanGeneration.Ended.== infix(_:_:)(v12, v13);
        sub_19351E634();
        OUTLINED_FUNCTION_127();
        sub_19351E634();
LABEL_13:
        OUTLINED_FUNCTION_153_4();
        goto LABEL_14;
      }

      OUTLINED_FUNCTION_86_6();
      sub_19351E634();
    }

    else
    {
      OUTLINED_FUNCTION_12_20();
      OUTLINED_FUNCTION_114_0();
      sub_19351E57C();
      OUTLINED_FUNCTION_55();
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v14 = OUTLINED_FUNCTION_30_7();
        static PlanGeneration.Failed.== infix(_:_:)(v14, v15);
        v16 = OUTLINED_FUNCTION_125_3();
        sub_193456418(v16, v17);
        v18 = OUTLINED_FUNCTION_44_7();
        OUTLINED_FUNCTION_160_4(v18, v19, v20);
        goto LABEL_13;
      }

      v21 = OUTLINED_FUNCTION_44_7();
      OUTLINED_FUNCTION_160_4(v21, v22, v23);
    }
  }

  else
  {
    OUTLINED_FUNCTION_12_20();
    OUTLINED_FUNCTION_186();
    OUTLINED_FUNCTION_55();
    if (!swift_getEnumCaseMultiPayload())
    {
      v24 = OUTLINED_FUNCTION_128_3();
      static PlanGeneration.Started.== infix(_:_:)(v24);

      goto LABEL_13;
    }
  }

  sub_19344E6DC(v0, &qword_1EAE3C220, &qword_19395B528);
LABEL_14:
  OUTLINED_FUNCTION_123_4();
  OUTLINED_FUNCTION_116();
}

uint64_t PlanGeneration.StateInfo.hash(into:)()
{
  v0 = OUTLINED_FUNCTION_57_3();
  type metadata accessor for PlanGeneration.Ended(v0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_5_30();
  type metadata accessor for PlanGeneration.StateInfo(v2);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_1_7();
  OUTLINED_FUNCTION_12_20();
  OUTLINED_FUNCTION_55();
  sub_19351E57C();
  OUTLINED_FUNCTION_109_6();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      OUTLINED_FUNCTION_95_5();
      sub_19351E688(&qword_1EAE3C230, type metadata accessor for PlanGeneration.Ended, &protocol conformance descriptor for PlanGeneration.Ended);
      OUTLINED_FUNCTION_21_1();
      sub_19393C540();
      OUTLINED_FUNCTION_86_6();
      return sub_19351E634();
    }

    else
    {
      OUTLINED_FUNCTION_59_9();
      v7 = sub_19351E1E0();
      OUTLINED_FUNCTION_163_2(v7, &type metadata for PlanGeneration.Failed, v7);
      v8 = OUTLINED_FUNCTION_94_5();
      return OUTLINED_FUNCTION_161_2(v8, v9);
    }
  }

  else
  {
    v6 = sub_19351E234();
    OUTLINED_FUNCTION_163_2(v6, &type metadata for PlanGeneration.Started, v6);
  }
}

BOOL static PlanGeneration.Event.== infix(_:_:)(uint64_t a1, uint64_t *a2)
{
  v4 = OUTLINED_FUNCTION_3_4();
  v5 = type metadata accessor for PlanGeneration.Event.PlanCreation(v4);
  v6 = OUTLINED_FUNCTION_47(v5);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v7);
  v8 = *v2;
  v9 = *a2;
  if (v8 < 0)
  {
    if (v9 < 0)
    {
      v12 = v8 & 0x7FFFFFFFFFFFFFFFLL;
      v13 = *(v12 + 64);
      v14 = v9 & 0x7FFFFFFFFFFFFFFFLL;
      v15 = *(v14 + 64);
      v16 = *(v12 + 32);
      v21[0] = *(v12 + 16);
      v21[1] = v16;
      v21[2] = *(v12 + 48);
      v22 = v13;
      v17 = *(v14 + 32);
      v19[0] = *(v14 + 16);
      v19[1] = v17;
      v19[2] = *(v14 + 48);
      v20 = v15;

      v11 = static PlanGeneration.Event.ModelInference.== infix(_:_:)(v21, v19);
      goto LABEL_7;
    }
  }

  else if ((v9 & 0x8000000000000000) == 0)
  {
    swift_projectBox();
    swift_projectBox();
    sub_19351E57C();
    sub_19351E57C();

    static PlanGeneration.Event.PlanCreation.== infix(_:_:)();
    v11 = v10;
    sub_19351E634();
    OUTLINED_FUNCTION_109_6();
    sub_19351E634();
LABEL_7:

    return v11;
  }

  return 0;
}

uint64_t PlanGeneration.Event.hash(into:)()
{
  v1 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for PlanGeneration.Event.PlanCreation(v1);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_1_7();
  if ((*v0 & 0x8000000000000000) != 0)
  {
    sub_19351E288();
    return sub_19393C540();
  }

  else
  {
    swift_projectBox();
    sub_19351E57C();
    sub_19351E688(&qword_1EAE3C248, type metadata accessor for PlanGeneration.Event.PlanCreation, &protocol conformance descriptor for PlanGeneration.Event.PlanCreation);
    OUTLINED_FUNCTION_21_1();
    sub_19393C540();
    return sub_19351E634();
  }
}

void static PlanGeneration.Event.PlanCreation.StateInfo.== infix(_:_:)()
{
  OUTLINED_FUNCTION_117();
  v1 = OUTLINED_FUNCTION_133_4();
  v2 = type metadata accessor for PlanGeneration.Event.PlanCreation.Ended(v1);
  v3 = OUTLINED_FUNCTION_47(v2);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_15_8();
  OUTLINED_FUNCTION_47_3();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_38_11();
  type metadata accessor for PlanGeneration.Event.PlanCreation.StateInfo(v5);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_66_4();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_97_4();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_98_6();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3C250, &qword_19395B530);
  OUTLINED_FUNCTION_47(v9);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_53_7();
  sub_19351E57C();
  OUTLINED_FUNCTION_107_5();
  sub_19351E57C();
  v11 = OUTLINED_FUNCTION_162_3();
  if (v11)
  {
    if (v11 == 1)
    {
      OUTLINED_FUNCTION_11_19();
      OUTLINED_FUNCTION_102_4();
      sub_19351E57C();
      OUTLINED_FUNCTION_55();
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_19351E5D8();
        OUTLINED_FUNCTION_120_2();
        v12 = OUTLINED_FUNCTION_94_5();
        static PlanGeneration.Event.PlanCreation.Ended.== infix(_:_:)(v12, v13);
        sub_19351E634();
        OUTLINED_FUNCTION_127();
        sub_19351E634();
LABEL_13:
        OUTLINED_FUNCTION_153_4();
        goto LABEL_14;
      }

      OUTLINED_FUNCTION_85_6();
      sub_19351E634();
    }

    else
    {
      OUTLINED_FUNCTION_11_19();
      OUTLINED_FUNCTION_114_0();
      sub_19351E57C();
      OUTLINED_FUNCTION_55();
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v14 = OUTLINED_FUNCTION_30_7();
        static PlanGeneration.Event.PlanCreation.Failed.== infix(_:_:)(v14, v15);
        v16 = OUTLINED_FUNCTION_125_3();
        sub_193456418(v16, v17);
        v18 = OUTLINED_FUNCTION_44_7();
        OUTLINED_FUNCTION_160_4(v18, v19, v20);
        goto LABEL_13;
      }

      v21 = OUTLINED_FUNCTION_44_7();
      OUTLINED_FUNCTION_160_4(v21, v22, v23);
    }
  }

  else
  {
    OUTLINED_FUNCTION_11_19();
    OUTLINED_FUNCTION_186();
    OUTLINED_FUNCTION_55();
    if (!swift_getEnumCaseMultiPayload())
    {
      v24 = OUTLINED_FUNCTION_128_3();
      static PlanGeneration.Event.PlanCreation.Started.== infix(_:_:)(v24);

      goto LABEL_13;
    }
  }

  sub_19344E6DC(v0, &qword_1EAE3C250, &qword_19395B530);
LABEL_14:
  OUTLINED_FUNCTION_123_4();
  OUTLINED_FUNCTION_116();
}

uint64_t PlanGeneration.Event.PlanCreation.StateInfo.hash(into:)()
{
  v0 = OUTLINED_FUNCTION_57_3();
  type metadata accessor for PlanGeneration.Event.PlanCreation.Ended(v0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_5_30();
  type metadata accessor for PlanGeneration.Event.PlanCreation.StateInfo(v2);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_1_7();
  OUTLINED_FUNCTION_11_19();
  OUTLINED_FUNCTION_55();
  sub_19351E57C();
  OUTLINED_FUNCTION_109_6();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      OUTLINED_FUNCTION_95_5();
      sub_19351E688(&qword_1EAE3C260, type metadata accessor for PlanGeneration.Event.PlanCreation.Ended, &protocol conformance descriptor for PlanGeneration.Event.PlanCreation.Ended);
      OUTLINED_FUNCTION_21_1();
      sub_19393C540();
      OUTLINED_FUNCTION_85_6();
      return sub_19351E634();
    }

    else
    {
      OUTLINED_FUNCTION_59_9();
      v7 = sub_19351E2DC();
      OUTLINED_FUNCTION_163_2(v7, &type metadata for PlanGeneration.Event.PlanCreation.Failed, v7);
      v8 = OUTLINED_FUNCTION_94_5();
      return OUTLINED_FUNCTION_161_2(v8, v9);
    }
  }

  else
  {
    v6 = sub_19351E330();
    OUTLINED_FUNCTION_163_2(v6, &type metadata for PlanGeneration.Event.PlanCreation.Started, v6);
  }
}

uint64_t sub_193519CFC()
{
  OUTLINED_FUNCTION_91_0();
  OUTLINED_FUNCTION_95_0();
  OUTLINED_FUNCTION_56_4();
  sub_1934B0FCC(v3, v4, v5, v6, v7, v8);
  OUTLINED_FUNCTION_105_1();
  if (!(!v14 & v13))
  {
    OUTLINED_FUNCTION_33_5((v12 > 1), v9, v10, v11);
    OUTLINED_FUNCTION_17_2();
  }

  *(v11 + 16) = v0;
  OUTLINED_FUNCTION_92_4();
  if (v20 < v1 + 2)
  {
    OUTLINED_FUNCTION_39_2((v19 > 1), v16, v17, v18);
    OUTLINED_FUNCTION_17_2();
  }

  OUTLINED_FUNCTION_100_7(v15, v16, v17, v18);
  OUTLINED_FUNCTION_176_0();
  if (v26 != v27)
  {
    v21 = OUTLINED_FUNCTION_33_5((v25 > 1), v22, v23, v24);
    v24 = v21;
  }

  OUTLINED_FUNCTION_160_1(v21, v22, v23, v24);
  *(v32 + 32) = v2;
  *(v32 + 40) = v2;
  v33 = *(v31 + 24);
  if (v1 + 4 > (v33 >> 1))
  {
    v28 = OUTLINED_FUNCTION_39_2((v33 > 1), v29, v30, v31);
    v31 = v28;
  }

  OUTLINED_FUNCTION_149(v28, v29, v30, v31);
  return OUTLINED_FUNCTION_38_1(v34, v35);
}

unint64_t PlanGeneration.Event.ModelInference.Interface.description.getter()
{
  if (*(v0 + 8) != 1)
  {
    return OUTLINED_FUNCTION_1_5();
  }

  v1 = 0xD000000000000020;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000033;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000015;
  }
}

void PlanGeneration.Event.ModelInference.Interface.init(_:)()
{
  v2 = OUTLINED_FUNCTION_0_15();
  v4 = v4 && v3 == 0xE700000000000000;
  if (v4 || (OUTLINED_FUNCTION_22_7(v2) & 1) != 0)
  {

    OUTLINED_FUNCTION_56();
  }

  else
  {
    OUTLINED_FUNCTION_26_4();
    v7 = v4 && v6 == v0;
    if (v7 || (OUTLINED_FUNCTION_25_7(21, v6) & 1) != 0)
    {

      v5 = 0;
    }

    else
    {
      v8 = v1 == 0xD000000000000020 && 0x8000000193A19A60 == v0;
      if (v8 || (OUTLINED_FUNCTION_0_9(0xD000000000000020, 0x8000000193A19A60) & 1) != 0)
      {

        v5 = 1;
      }

      else if (v1 == 0xD000000000000033 && 0x8000000193A19A20 == v0)
      {

        OUTLINED_FUNCTION_55_0();
      }

      else
      {
        OUTLINED_FUNCTION_0_9(0xD000000000000033, 0x8000000193A19A20);
        OUTLINED_FUNCTION_89();
        OUTLINED_FUNCTION_152_0();
        if (v4)
        {
          v5 = 0;
        }
      }
    }
  }

  OUTLINED_FUNCTION_12_1(v5);
}

uint64_t static PlanGeneration.Event.ModelInference.StateInfo.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  v6 = *(a1 + 32);
  v104 = v4;
  v105 = *(a1 + 40);
  v7 = *(a1 + 48);
  v8 = *a2;
  v9 = *(a2 + 16);
  v10 = *(a2 + 24);
  v11 = *(a2 + 40);
  v12 = *(a2 + 48);
  if (!(v7 >> 14))
  {
    v47 = *(a1 + 48);
    if ((*(a2 + 48) & 0xC000) == 0)
    {
      v102 = *(a2 + 48);
      v96 = static PlanGeneration.Event.ModelInference.Started.== infix(_:_:)();
      v48 = OUTLINED_FUNCTION_131_4();
      sub_193511EB4(v48, v49, v50, v104, v6, v105, v7);
      OUTLINED_FUNCTION_137_1();
      sub_193511EB4(v51, v52, v53, v54, v55, v56, v102);
      return v96 & 1;
    }

    goto LABEL_12;
  }

  v101 = *(a2 + 48);
  if (v7 >> 14 != 1)
  {
    v100 = *a2;
    if ((v12 & 0xC000) == 0x8000)
    {
      v58 = *(a2 + 24);
      v99 = *(a2 + 8);
      v59 = *(a2 + 16);
      v60 = *(a2 + 32);
      v98 = *a1;
      sub_193511EEC(v8, v99, v9, v58, v60, v11, v12);
      v61 = OUTLINED_FUNCTION_131_4();
      sub_193511EEC(v61, v62, v63, v4, v6, v105, v7);
      sub_193511EEC(v100, v99, v59, v58, v60, v11, v101);
      v64 = OUTLINED_FUNCTION_125_3();
      v103 = v7;
      sub_193511EEC(v64, v65, v5, v4, v6, v105, v7);
      OUTLINED_FUNCTION_170_1();
      v24 = static PlanGeneration.Event.ModelInference.Failed.== infix(_:_:)();
      v66 = OUTLINED_FUNCTION_125_3();
      sub_193511EB4(v66, v67, v5, v4, v6, v105, v7);
      sub_193511EB4(v100, v99, v59, v58, v60, v11, v101);
      OUTLINED_FUNCTION_56_4();
      sub_193511EB4(v68, v69, v70, v71, v72, v73, v101);
      v42 = v98;
      v43 = v3;
      v44 = v5;
      v45 = v4;
      v46 = v6;
      goto LABEL_9;
    }

    v76 = OUTLINED_FUNCTION_170_1();
    v47 = v7;
    sub_1935123C0(v76, v77);
LABEL_12:
    OUTLINED_FUNCTION_137_1();
    v79 = v78;
    sub_193511EEC(v80, v81, v82, v83, v84, v85, v78);
    v86 = OUTLINED_FUNCTION_131_4();
    sub_193511EB4(v86, v87, v88, v104, v6, v105, v47);
    OUTLINED_FUNCTION_137_1();
    sub_193511EB4(v89, v90, v91, v92, v93, v94, v79);
    v24 = 0;
    return v24 & 1;
  }

  if ((v12 & 0xC000) != 0x4000)
  {
    v74 = OUTLINED_FUNCTION_170_1();
    v47 = v7;
    sub_19351216C(v74, v75);
    goto LABEL_12;
  }

  v95 = *(a1 + 8);
  v13 = *(a2 + 32);
  v14 = *(a2 + 16);
  sub_193511EEC(v8, *(a2 + 8), v9, v10, v13, v11, v12);
  sub_193511EEC(v2, v95, v5, v4, v6, v105, v7);
  v15 = OUTLINED_FUNCTION_102_4();
  sub_193511EEC(v15, v16, v14, v10, v13, v11, v101);
  v97 = v2;
  OUTLINED_FUNCTION_183_1();
  v103 = v7;
  sub_193511EEC(v17, v18, v19, v20, v21, v105, v7);
  v22 = OUTLINED_FUNCTION_170_1();
  v24 = static PlanGeneration.Event.ModelInference.Ended.== infix(_:_:)(v22, v23);
  OUTLINED_FUNCTION_183_1();
  sub_193511EB4(v25, v26, v27, v28, v29, v105, v7);
  OUTLINED_FUNCTION_56_4();
  sub_193511EB4(v30, v31, v32, v33, v34, v35, v101);
  OUTLINED_FUNCTION_56_4();
  sub_193511EB4(v36, v37, v38, v39, v40, v41, v101);
  v42 = v97;
  v43 = v95;
  v44 = v5;
  v45 = v4;
  v46 = v6;
LABEL_9:
  sub_193511EB4(v42, v43, v44, v45, v46, v105, v103);
  return v24 & 1;
}

uint64_t PlanGeneration.Event.ModelInference.StateInfo.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 48);
  if (v2 >> 14)
  {
    if (v2 >> 14 == 1)
    {
      sub_19351E3D8();
    }

    else
    {
      sub_19351E384();
    }
  }

  else
  {
    sub_19351E42C();
  }

  return sub_19393C540();
}

void IntelligenceFlowFeedbackLearning.EvaluationType.init(rawValue:)(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  if (a2 == 2)
  {
    v2 = 1;
  }

  else
  {
    v2 = a2;
  }

  if (a2 == 1)
  {
    v2 = 0;
  }

  *a1 = v2;
  OUTLINED_FUNCTION_21(a1);
}

uint64_t IntelligenceFlowFeedbackLearning.EvaluationType.rawValue.getter()
{
  v1 = 1;
  if (*v0)
  {
    v1 = 2;
  }

  if (v0[8])
  {
    return v1;
  }

  else
  {
    return *v0;
  }
}

uint64_t IntelligenceFlowFeedbackLearning.EvaluationType.description.getter()
{
  if (*(v0 + 8) != 1)
  {
    return OUTLINED_FUNCTION_1_5();
  }

  if (*v0)
  {
    return 0x6C6176456C6C7546;
  }

  return 0x6C61764574736146;
}

void IntelligenceFlowFeedbackLearning.EvaluationType.init(_:)()
{
  v2 = OUTLINED_FUNCTION_0_15();
  v4 = v4 && v3 == 0xE700000000000000;
  if (v4 || (OUTLINED_FUNCTION_22_7(v2) & 1) != 0 || (v1 == 0x6C61764574736146 ? (v5 = v0 == 0xED0000726F746175) : (v5 = 0), v5 || (OUTLINED_FUNCTION_0_9(0x6C61764574736146, 0xED0000726F746175) & 1) != 0))
  {

    v6 = 0;
  }

  else if (v1 == 0x6C6176456C6C7546 && v0 == 0xED0000726F746175)
  {

    v6 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_0_9(0x6C6176456C6C7546, 0xED0000726F746175);

    v6 = v8 & 1;
  }

  OUTLINED_FUNCTION_12_1(v6);
}

uint64_t sub_19351A6CC()
{
  OUTLINED_FUNCTION_91_0();
  OUTLINED_FUNCTION_95_0();
  OUTLINED_FUNCTION_56_4();
  sub_1934B0FCC(v3, v4, v5, v6, v7, v8);
  OUTLINED_FUNCTION_105_1();
  if (!(!v14 & v13))
  {
    OUTLINED_FUNCTION_33_5((v12 > 1), v9, v10, v11);
    OUTLINED_FUNCTION_17_2();
  }

  *(v11 + 16) = v0;
  OUTLINED_FUNCTION_92_4();
  if (v20 < v1 + 2)
  {
    OUTLINED_FUNCTION_39_2((v19 > 1), v16, v17, v18);
    OUTLINED_FUNCTION_17_2();
  }

  OUTLINED_FUNCTION_100_7(v15, v16, v17, v18);
  OUTLINED_FUNCTION_176_0();
  if (v26 != v27)
  {
    v21 = OUTLINED_FUNCTION_33_5((v25 > 1), v22, v23, v24);
    v24 = v21;
  }

  OUTLINED_FUNCTION_160_1(v21, v22, v23, v24);
  *(v28 + 32) = v2;
  *(v28 + 40) = v2;
  return v29;
}

uint64_t IntelligenceFlowFeedbackLearning.ActionResolutionState.description.getter()
{
  if (*(v0 + 8) != 1)
  {
    return OUTLINED_FUNCTION_1_5();
  }

  if (*v0)
  {
    return 0x6574656C706D6F43;
  }

  return 0x656C706D6F636E49;
}

void IntelligenceFlowFeedbackLearning.ActionResolutionState.init(_:)()
{
  v2 = OUTLINED_FUNCTION_0_15();
  v4 = v4 && v3 == 0xE700000000000000;
  if (v4 || (OUTLINED_FUNCTION_22_7(v2) & 1) != 0 || (v1 == 0x656C706D6F636E49 ? (v5 = v0 == 0xEA00000000006574) : (v5 = 0), v5 || (OUTLINED_FUNCTION_0_9(0x656C706D6F636E49, 0xEA00000000006574) & 1) != 0))
  {

    v6 = 0;
  }

  else if (v1 == 0x6574656C706D6F43 && v0 == 0xE800000000000000)
  {

    v6 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_0_9(0x6574656C706D6F43, 0xE800000000000000);

    v6 = v8 & 1;
  }

  OUTLINED_FUNCTION_12_1(v6);
}

void IntelligenceFlowFeedbackLearning.TaskStatus.description.getter()
{
  if (*(v0 + 8) == 1)
  {
    switch(*v0)
    {
      case 1:
        OUTLINED_FUNCTION_156_3();
        break;
      case 2:
        OUTLINED_FUNCTION_38();
        break;
      case 3:
        OUTLINED_FUNCTION_101_6(9);
        break;
      case 7:
        OUTLINED_FUNCTION_155_2();
        break;
      default:
        return;
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_5();
  }
}

void IntelligenceFlowFeedbackLearning.TaskStatus.init(_:)()
{
  v2 = OUTLINED_FUNCTION_0_15();
  v4 = v4 && v3 == 0xE700000000000000;
  if (v4 || (OUTLINED_FUNCTION_22_7(v2) & 1) != 0)
  {

    OUTLINED_FUNCTION_56();
  }

  else
  {
    v6 = v1 == 0x6E55746C75736552 && v0 == 0xED00006E776F6E6BLL;
    if (v6 || (OUTLINED_FUNCTION_0_9(0x6E55746C75736552, 0xED00006E776F6E6BLL) & 1) != 0)
    {

      v5 = 0;
    }

    else
    {
      v7 = OUTLINED_FUNCTION_156_3();
      v9 = v1 == v7 && v0 == v8;
      if (v9 || (OUTLINED_FUNCTION_0_9(v7, v8) & 1) != 0)
      {

        v5 = 1;
      }

      else
      {
        OUTLINED_FUNCTION_26_4();
        v11 = v4 && v10 == v0;
        if (v11 || (OUTLINED_FUNCTION_25_7(22, v10) & 1) != 0)
        {

          OUTLINED_FUNCTION_55_0();
        }

        else
        {
          v12 = v1 == 0xD00000000000001FLL && 0x8000000193A19AD0 == v0;
          if (v12 || (OUTLINED_FUNCTION_0_9(0xD00000000000001FLL, 0x8000000193A19AD0) & 1) != 0)
          {

            OUTLINED_FUNCTION_59();
          }

          else
          {
            v13 = v1 == 0xD00000000000001ELL && 0x8000000193A19AB0 == v0;
            if (v13 || (OUTLINED_FUNCTION_0_9(0xD00000000000001ELL, 0x8000000193A19AB0) & 1) != 0)
            {

              OUTLINED_FUNCTION_69_2();
            }

            else
            {
              v14 = v1 == 0x656E6F646E616241 && v0 == 0xE900000000000064;
              if (v14 || (OUTLINED_FUNCTION_0_9(0x656E6F646E616241, 0xE900000000000064) & 1) != 0)
              {

                OUTLINED_FUNCTION_83();
              }

              else
              {
                v15 = v1 == 0x656C6C65636E6143 && v0 == 0xE900000000000064;
                if (v15 || (OUTLINED_FUNCTION_0_9(0x656C6C65636E6143, 0xE900000000000064) & 1) != 0)
                {

                  OUTLINED_FUNCTION_90();
                }

                else
                {
                  v16 = OUTLINED_FUNCTION_155_2();
                  if (v1 == v16 && v0 == v17)
                  {

                    OUTLINED_FUNCTION_91_3();
                  }

                  else
                  {
                    OUTLINED_FUNCTION_0_9(v16, v17);
                    OUTLINED_FUNCTION_89();
                    v5 = 7;
                    if ((v1 & 1) == 0)
                    {
                      v5 = 0;
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

  OUTLINED_FUNCTION_12_1(v5);
}

uint64_t IntelligenceFlowFeedbackLearning.TaskPromptStatus.init(rawValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1 - 1;
  v3 = 0;
  switch(v2)
  {
    case 1:
      v3 = 1;
      break;
    case 2:
      v3 = 2;
      break;
    case 3:
      v3 = 3;
      break;
    default:
      return OUTLINED_FUNCTION_15_3(v3, a2);
  }

  return OUTLINED_FUNCTION_15_3(v3, a2);
}

uint64_t IntelligenceFlowFeedbackLearning.TaskPromptStatus.description.getter()
{
  if (*(v0 + 8) != 1)
  {
    return OUTLINED_FUNCTION_1_5();
  }

  result = 1701736270;
  switch(*v0)
  {
    case 1:
    case 2:
      result = 0x616D7269666E6F43;
      break;
    case 3:
      result = 0xD000000000000013;
      break;
    default:
      return result;
  }

  return result;
}

void IntelligenceFlowFeedbackLearning.TaskPromptStatus.init(_:)()
{
  v2 = OUTLINED_FUNCTION_0_15();
  v4 = v4 && v3 == 0xE700000000000000;
  if (v4 || (OUTLINED_FUNCTION_22_7(v2) & 1) != 0)
  {

    OUTLINED_FUNCTION_56();
  }

  else
  {
    v6 = v1 == 1701736270 && v0 == 0xE400000000000000;
    if (v6 || (OUTLINED_FUNCTION_0_9(1701736270, 0xE400000000000000) & 1) != 0)
    {

      v5 = 0;
    }

    else
    {
      v7 = v1 == 0x616D7269666E6F43 && v0 == 0xEF7365596E6F6974;
      if (v7 || (OUTLINED_FUNCTION_0_9(0x616D7269666E6F43, 0xEF7365596E6F6974) & 1) != 0)
      {

        v5 = 1;
      }

      else
      {
        v8 = v1 == 0x616D7269666E6F43 && v0 == 0xEE006F4E6E6F6974;
        if (v8 || (OUTLINED_FUNCTION_0_9(0x616D7269666E6F43, 0xEE006F4E6E6F6974) & 1) != 0)
        {

          OUTLINED_FUNCTION_55_0();
        }

        else if (v1 == 0xD000000000000013 && 0x8000000193A19B10 == v0)
        {

          OUTLINED_FUNCTION_59();
        }

        else
        {
          OUTLINED_FUNCTION_25_7(19, 0x8000000193A19B10);
          OUTLINED_FUNCTION_89();
          v5 = 3;
          if ((v1 & 1) == 0)
          {
            v5 = 0;
          }
        }
      }
    }
  }

  OUTLINED_FUNCTION_12_1(v5);
}

uint64_t sub_19351AE88()
{
  OUTLINED_FUNCTION_91_0();
  OUTLINED_FUNCTION_95_0();
  OUTLINED_FUNCTION_56_4();
  sub_1934B0FCC(v3, v4, v5, v6, v7, v8);
  OUTLINED_FUNCTION_63_2();
  if (!(!v14 & v13))
  {
    OUTLINED_FUNCTION_33_5((v12 > 1), v9, v10, v11);
    OUTLINED_FUNCTION_17_2();
  }

  *(v11 + 16) = v0;
  OUTLINED_FUNCTION_92_4();
  if (v20 < v2 + 2)
  {
    OUTLINED_FUNCTION_39_2((v19 > 1), v16, v17, v18);
    OUTLINED_FUNCTION_17_2();
  }

  OUTLINED_FUNCTION_100_7(v15, v16, v17, v18);
  OUTLINED_FUNCTION_175_3();
  if (v25 != v26)
  {
    OUTLINED_FUNCTION_56_4();
    v21 = sub_1934B0FCC(v64, v65, v66, v67, v68, v69);
    v24 = v21;
  }

  OUTLINED_FUNCTION_45_0(v21, v22, v23, v24);
  if (!(v25 ^ v26 | v14))
  {
    v27 = OUTLINED_FUNCTION_33_5((v31 > 1), v28, v29, v30);
    v30 = v27;
  }

  OUTLINED_FUNCTION_32(v27, v28, v29, v30);
  if (!(v25 ^ v26 | v14))
  {
    v32 = OUTLINED_FUNCTION_39_2((v36 > 1), v33, v34, v35);
    v35 = v32;
  }

  OUTLINED_FUNCTION_149(v32, v33, v34, v35);
  OUTLINED_FUNCTION_90_7(v37);
  if (v2 + 6 > (v42 >> 1))
  {
    v38 = OUTLINED_FUNCTION_33_5((v42 > 1), v39, v40, v41);
    v41 = v38;
  }

  OUTLINED_FUNCTION_160_1(v38, v39, v40, v41);
  OUTLINED_FUNCTION_90_7(v43);
  if (v2 + 7 > (v48 >> 1))
  {
    v44 = OUTLINED_FUNCTION_39_2((v48 > 1), v45, v46, v47);
    v47 = v44;
  }

  OUTLINED_FUNCTION_149(v44, v45, v46, v47);
  OUTLINED_FUNCTION_90_7(v49);
  if (v2 + 8 > (v54 >> 1))
  {
    v50 = OUTLINED_FUNCTION_33_5((v54 > 1), v51, v52, v53);
    v53 = v50;
  }

  OUTLINED_FUNCTION_160_1(v50, v51, v52, v53);
  OUTLINED_FUNCTION_90_7(v55);
  if (v2 + 9 > (v60 >> 1))
  {
    v56 = OUTLINED_FUNCTION_39_2((v60 > 1), v57, v58, v59);
    v59 = v56;
  }

  OUTLINED_FUNCTION_149(v56, v57, v58, v59);
  *(v61 + 32) = 7;
  *(v61 + 40) = v1;
  return v62;
}

void IntelligenceFlowFeedbackLearning.UserAlignmentCategory.description.getter()
{
  if (*(v0 + 8) == 1)
  {
    switch(*v0)
    {
      case 1:
      case 2:
      case 4:
      case 5:
        OUTLINED_FUNCTION_38();
        break;
      case 7:
        OUTLINED_FUNCTION_164_2();
        break;
      default:
        return;
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_5();
  }
}

void IntelligenceFlowFeedbackLearning.UserAlignmentCategory.init(_:)()
{
  v2 = OUTLINED_FUNCTION_0_15();
  v4 = v4 && v3 == 0xE700000000000000;
  if (v4 || (OUTLINED_FUNCTION_22_7(v2) & 1) != 0)
  {

    OUTLINED_FUNCTION_56();
  }

  else
  {
    v6 = v1 == 0x79726F6765746143 && v0 == 0xEF6E776F6E6B6E55;
    if (v6 || (OUTLINED_FUNCTION_0_9(0x79726F6765746143, 0xEF6E776F6E6B6E55) & 1) != 0)
    {

      v5 = 0;
    }

    else
    {
      OUTLINED_FUNCTION_26_4();
      v8 = v4 && v7 == v0;
      if (v8 || (OUTLINED_FUNCTION_25_7(18, v7) & 1) != 0)
      {

        v5 = 1;
      }

      else
      {
        OUTLINED_FUNCTION_26_4();
        v10 = v4 && v9 == v0;
        if (v10 || (OUTLINED_FUNCTION_25_7(18, v9) & 1) != 0)
        {

          OUTLINED_FUNCTION_55_0();
        }

        else
        {
          v11 = OUTLINED_FUNCTION_142_2();
          v12 = v4 && v0 == 0xE800000000000000;
          if (v12 || (OUTLINED_FUNCTION_0_9(v11, 0xE800000000000000) & 1) != 0)
          {

            OUTLINED_FUNCTION_59();
          }

          else
          {
            OUTLINED_FUNCTION_26_4();
            v14 = v4 && v13 == v0;
            if (v14 || (OUTLINED_FUNCTION_25_7(18, v13) & 1) != 0)
            {

              OUTLINED_FUNCTION_69_2();
            }

            else
            {
              OUTLINED_FUNCTION_26_4();
              v16 = v4 && v15 == v0;
              if (v16 || (OUTLINED_FUNCTION_25_7(18, v15) & 1) != 0)
              {

                OUTLINED_FUNCTION_83();
              }

              else
              {
                v17 = v1 == 0xD000000000000023 && 0x8000000193A19B30 == v0;
                if (v17 || (OUTLINED_FUNCTION_0_9(0xD000000000000023, 0x8000000193A19B30) & 1) != 0)
                {

                  OUTLINED_FUNCTION_90();
                }

                else
                {
                  v18 = OUTLINED_FUNCTION_164_2();
                  if (v1 == v18 && v0 == v19)
                  {

                    OUTLINED_FUNCTION_91_3();
                  }

                  else
                  {
                    OUTLINED_FUNCTION_0_9(v18, v19);
                    OUTLINED_FUNCTION_89();
                    v5 = 7;
                    if ((v1 & 1) == 0)
                    {
                      v5 = 0;
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

  OUTLINED_FUNCTION_12_1(v5);
}

uint64_t _s27IntelligencePlatformLibrary0A20FlowFeedbackLearningV10TaskStatusO8rawValueAESgSi_tcfC_0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1 - 1;
  v3 = 0;
  switch(v2)
  {
    case 1:
      v3 = 1;
      break;
    case 2:
      v3 = 2;
      break;
    case 3:
      v3 = 3;
      break;
    case 4:
      v3 = 4;
      break;
    case 5:
      v3 = 5;
      break;
    case 6:
      v3 = 6;
      break;
    case 7:
      v3 = 7;
      break;
    default:
      return OUTLINED_FUNCTION_15_3(v3, a2);
  }

  return OUTLINED_FUNCTION_15_3(v3, a2);
}

void IntelligenceFlowFeedbackLearning.EvaluationSource.description.getter()
{
  if (*(v0 + 8) == 1)
  {
    switch(*v0)
    {
      case 2:
      case 3:
      case 5:
        OUTLINED_FUNCTION_38();
        break;
      case 4:
        return;
      case 6:
        OUTLINED_FUNCTION_102_5();
        break;
      default:
        OUTLINED_FUNCTION_129_3();
        break;
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_5();
  }
}

void IntelligenceFlowFeedbackLearning.EvaluationSource.init(_:)()
{
  v2 = OUTLINED_FUNCTION_0_15();
  v4 = v4 && v3 == 0xE700000000000000;
  if (v4 || (OUTLINED_FUNCTION_22_7(v2) & 1) != 0)
  {

    OUTLINED_FUNCTION_56();
  }

  else
  {
    OUTLINED_FUNCTION_52_5();
    v7 = v1 == 26 && v6 == v0;
    if (v7 || (OUTLINED_FUNCTION_0_9(26, v6) & 1) != 0)
    {

      v5 = 0;
    }

    else
    {
      v8 = v1 == 17 && 0x8000000193A19C80 == v0;
      if (v8 || (OUTLINED_FUNCTION_0_9(17, 0x8000000193A19C80) & 1) != 0)
      {

        v5 = 1;
      }

      else
      {
        OUTLINED_FUNCTION_26_4();
        v10 = v4 && v9 == v0;
        if (v10 || (OUTLINED_FUNCTION_25_7(21, v9) & 1) != 0)
        {

          OUTLINED_FUNCTION_55_0();
        }

        else
        {
          OUTLINED_FUNCTION_26_4();
          v12 = v4 && v11 == v0;
          if (v12 || (OUTLINED_FUNCTION_25_7(21, v11) & 1) != 0)
          {

            OUTLINED_FUNCTION_59();
          }

          else
          {
            v13 = v1 == 0x61436E6F69746341 && v0 == 0xEF64656C6C65636ELL;
            if (v13 || (OUTLINED_FUNCTION_0_9(0x61436E6F69746341, 0xEF64656C6C65636ELL) & 1) != 0)
            {

              OUTLINED_FUNCTION_69_2();
            }

            else
            {
              OUTLINED_FUNCTION_26_4();
              v15 = v4 && v14 == v0;
              if (v15 || (OUTLINED_FUNCTION_25_7(21, v14) & 1) != 0)
              {

                OUTLINED_FUNCTION_83();
              }

              else
              {
                v16 = OUTLINED_FUNCTION_180_2();
                v18 = v4 && v17 == v0;
                if (v18 || (OUTLINED_FUNCTION_0_9(v16, v17) & 1) != 0)
                {

                  OUTLINED_FUNCTION_90();
                }

                else if (v1 == 25 && 0x8000000193A19BE0 == v0)
                {

                  OUTLINED_FUNCTION_91_3();
                }

                else
                {
                  OUTLINED_FUNCTION_0_9(25, 0x8000000193A19BE0);
                  OUTLINED_FUNCTION_89();
                  v5 = 7;
                  if ((v1 & 1) == 0)
                  {
                    v5 = 0;
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  OUTLINED_FUNCTION_12_1(v5);
}

void IntelligenceFlowFeedbackLearning.EvaluationVote.init(rawValue:)(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  v2 = 2;
  if (a2 == 2)
  {
    v3 = 1;
  }

  else
  {
    v3 = a2;
  }

  if (a2 != 3)
  {
    v2 = v3;
  }

  if (a2 == 1)
  {
    v2 = 0;
  }

  *a1 = v2;
  OUTLINED_FUNCTION_21(a1);
}

uint64_t IntelligenceFlowFeedbackLearning.EvaluationVote.description.getter()
{
  if (*(v0 + 8) == 1)
  {
    return *&aAbstain_0[8 * *v0];
  }

  else
  {
    return 0x6E776F6E6B6E55;
  }
}

void IntelligenceFlowFeedbackLearning.EvaluationVote.init(_:)()
{
  v2 = OUTLINED_FUNCTION_0_15();
  v4 = v4 && v3 == 0xE700000000000000;
  if (v4 || (OUTLINED_FUNCTION_22_7(v2) & 1) != 0)
  {

    OUTLINED_FUNCTION_56();
  }

  else
  {
    v6 = v1 == 0x6E696174736241 && v0 == 0xE700000000000000;
    if (v6 || (OUTLINED_FUNCTION_22_7(0x6E696174736241) & 1) != 0)
    {

      v5 = 0;
    }

    else
    {
      v7 = v1 == 0x73736563637553 && v0 == 0xE700000000000000;
      if (v7 || (OUTLINED_FUNCTION_22_7(0x73736563637553) & 1) != 0)
      {

        v5 = 1;
      }

      else if (v1 == 0x6572756C696146 && v0 == 0xE700000000000000)
      {

        OUTLINED_FUNCTION_55_0();
      }

      else
      {
        OUTLINED_FUNCTION_22_7(0x6572756C696146);
        OUTLINED_FUNCTION_89();
        OUTLINED_FUNCTION_152_0();
        if (v4)
        {
          v5 = 0;
        }
      }
    }
  }

  OUTLINED_FUNCTION_12_1(v5);
}

uint64_t sub_19351B888()
{
  OUTLINED_FUNCTION_91_0();
  OUTLINED_FUNCTION_95_0();
  OUTLINED_FUNCTION_56_4();
  sub_1934B0FCC(v3, v4, v5, v6, v7, v8);
  OUTLINED_FUNCTION_63_2();
  if (!(!v14 & v13))
  {
    OUTLINED_FUNCTION_33_5((v12 > 1), v9, v10, v11);
    OUTLINED_FUNCTION_17_2();
  }

  *(v11 + 16) = v0;
  OUTLINED_FUNCTION_92_4();
  if (v20 < v2 + 2)
  {
    OUTLINED_FUNCTION_39_2((v19 > 1), v16, v17, v18);
    OUTLINED_FUNCTION_17_2();
  }

  OUTLINED_FUNCTION_100_7(v15, v16, v17, v18);
  OUTLINED_FUNCTION_175_3();
  if (v25 != v26)
  {
    OUTLINED_FUNCTION_56_4();
    v21 = sub_1934B0FCC(v40, v41, v42, v43, v44, v45);
    v24 = v21;
  }

  OUTLINED_FUNCTION_45_0(v21, v22, v23, v24);
  if (!(v25 ^ v26 | v14))
  {
    v27 = OUTLINED_FUNCTION_33_5((v31 > 1), v28, v29, v30);
    v30 = v27;
  }

  OUTLINED_FUNCTION_32(v27, v28, v29, v30);
  if (!(v25 ^ v26 | v14))
  {
    v32 = OUTLINED_FUNCTION_39_2((v36 > 1), v33, v34, v35);
    v35 = v32;
  }

  OUTLINED_FUNCTION_149(v32, v33, v34, v35);
  *(v37 + 32) = 3;
  *(v37 + 40) = v1;
  return v38;
}

void IntelligenceFlowFeedbackLearning.CandidateResolution.description.getter()
{
  if (*(v0 + 8) == 1)
  {
    switch(*v0)
    {
      case 1:
        OUTLINED_FUNCTION_187_1();
        break;
      case 2:
        OUTLINED_FUNCTION_38();
        break;
      default:
        return;
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_5();
  }
}

void IntelligenceFlowFeedbackLearning.CandidateResolution.init(_:)()
{
  v2 = OUTLINED_FUNCTION_0_15();
  v4 = v4 && v3 == 0xE700000000000000;
  if (v4 || (OUTLINED_FUNCTION_22_7(v2) & 1) != 0)
  {

    OUTLINED_FUNCTION_56();
  }

  else
  {
    v6 = v1 == 0x766C6F7365726E55 && v0 == 0xEA00000000006465;
    if (v6 || (OUTLINED_FUNCTION_0_9(0x766C6F7365726E55, 0xEA00000000006465) & 1) != 0)
    {

      v5 = 0;
    }

    else
    {
      OUTLINED_FUNCTION_52_5();
      v8 = v1 == 19 && v7 == v0;
      if (v8 || (OUTLINED_FUNCTION_0_9(19, v7) & 1) != 0)
      {

        v5 = 1;
      }

      else
      {
        OUTLINED_FUNCTION_26_4();
        v10 = v4 && v9 == v0;
        if (v10 || (OUTLINED_FUNCTION_25_7(16, v9) & 1) != 0)
        {

          OUTLINED_FUNCTION_55_0();
        }

        else
        {
          v11 = OUTLINED_FUNCTION_142_2();
          if (v4 && v0 == 0xE800000000000000)
          {

            OUTLINED_FUNCTION_59();
          }

          else
          {
            OUTLINED_FUNCTION_0_9(v11, 0xE800000000000000);
            OUTLINED_FUNCTION_89();
            v5 = 3;
            if ((v1 & 1) == 0)
            {
              v5 = 0;
            }
          }
        }
      }
    }
  }

  OUTLINED_FUNCTION_12_1(v5);
}

uint64_t IntelligenceFlowFeedbackLearning.CandidateOutcome.init(rawValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1 - 1;
  v3 = 0;
  switch(v2)
  {
    case 1:
      v3 = 1;
      break;
    case 2:
      v3 = 2;
      break;
    case 3:
      v3 = 3;
      break;
    case 4:
      v3 = 4;
      break;
    case 5:
      v3 = 5;
      break;
    case 6:
      v3 = 6;
      break;
    case 7:
      v3 = 7;
      break;
    case 8:
      v3 = 8;
      break;
    case 9:
      v3 = 9;
      break;
    case 10:
      v3 = 10;
      break;
    default:
      return OUTLINED_FUNCTION_15_3(v3, a2);
  }

  return OUTLINED_FUNCTION_15_3(v3, a2);
}

uint64_t static IntelligenceFlowFeedbackLearning.CandidateOutcome.allCases.getter()
{
  v1 = OUTLINED_FUNCTION_95_0();
  sub_1934B0FCC(v1, v2, v3, v4, v5, v6);
  OUTLINED_FUNCTION_16_0();
  if (!(!v13 & v12))
  {
    v80 = OUTLINED_FUNCTION_39(v11);
    OUTLINED_FUNCTION_84_2(v80, v81, v82, v83, &qword_1EAE3C380, &qword_19395BAF0);
    OUTLINED_FUNCTION_17_2();
  }

  OUTLINED_FUNCTION_13_6(v7, v8, v9, v10);
  if (v19 != v20)
  {
    v84 = OUTLINED_FUNCTION_39(v18);
    OUTLINED_FUNCTION_85(v84, v85, v86, v87, &qword_1EAE3C380, &qword_19395BAF0);
    OUTLINED_FUNCTION_17_2();
  }

  OUTLINED_FUNCTION_8_5(v14, v15, v16, v17);
  if (v19 != v20)
  {
    OUTLINED_FUNCTION_39(v25);
    OUTLINED_FUNCTION_57();
    v21 = sub_1934B0FCC(v88, v89, v90, v91, v92, v93);
    v24 = v21;
  }

  OUTLINED_FUNCTION_9_7(v21, v22, v23, v24);
  if (!(v19 ^ v20 | v13))
  {
    v94 = OUTLINED_FUNCTION_39(v30);
    v26 = OUTLINED_FUNCTION_84_2(v94, v95, v96, v97, &qword_1EAE3C380, &qword_19395BAF0);
    v29 = v26;
  }

  OUTLINED_FUNCTION_3_7(v26, v27, v28, v29);
  if (!(v19 ^ v20 | v13))
  {
    v98 = OUTLINED_FUNCTION_39(v35);
    v31 = OUTLINED_FUNCTION_85(v98, v99, v100, v101, &qword_1EAE3C380, &qword_19395BAF0);
    v34 = v31;
  }

  OUTLINED_FUNCTION_5_11(v31, v32, v33, v34);
  if (!(v19 ^ v20 | v13))
  {
    v102 = OUTLINED_FUNCTION_39(v40);
    v36 = OUTLINED_FUNCTION_84_2(v102, v103, v104, v105, &qword_1EAE3C380, &qword_19395BAF0);
    v39 = v36;
  }

  OUTLINED_FUNCTION_50(v36, v37, v38, v39);
  OUTLINED_FUNCTION_4(v41);
  if (v0 + 7 > (v46 >> 1))
  {
    v106 = OUTLINED_FUNCTION_39(v46);
    v42 = OUTLINED_FUNCTION_85(v106, v107, v108, v109, &qword_1EAE3C380, &qword_19395BAF0);
    v45 = v42;
  }

  OUTLINED_FUNCTION_47_5(v42, v43, v44, v45);
  OUTLINED_FUNCTION_4(v47);
  if (v0 + 8 > (v52 >> 1))
  {
    v110 = OUTLINED_FUNCTION_39(v52);
    v48 = OUTLINED_FUNCTION_84_2(v110, v111, v112, v113, &qword_1EAE3C380, &qword_19395BAF0);
    v51 = v48;
  }

  OUTLINED_FUNCTION_50(v48, v49, v50, v51);
  OUTLINED_FUNCTION_4(v53);
  if (v0 + 9 > (v58 >> 1))
  {
    v114 = OUTLINED_FUNCTION_39(v58);
    v54 = OUTLINED_FUNCTION_85(v114, v115, v116, v117, &qword_1EAE3C380, &qword_19395BAF0);
    v57 = v54;
  }

  OUTLINED_FUNCTION_47_5(v54, v55, v56, v57);
  OUTLINED_FUNCTION_4(v59);
  if (v0 + 10 > (v64 >> 1))
  {
    v118 = OUTLINED_FUNCTION_39(v64);
    v60 = OUTLINED_FUNCTION_84_2(v118, v119, v120, v121, &qword_1EAE3C380, &qword_19395BAF0);
    v63 = v60;
  }

  OUTLINED_FUNCTION_50(v60, v61, v62, v63);
  OUTLINED_FUNCTION_4(v65);
  if (v0 + 11 > (v70 >> 1))
  {
    v122 = OUTLINED_FUNCTION_39(v70);
    v66 = OUTLINED_FUNCTION_85(v122, v123, v124, v125, &qword_1EAE3C380, &qword_19395BAF0);
    v69 = v66;
  }

  OUTLINED_FUNCTION_47_5(v66, v67, v68, v69);
  OUTLINED_FUNCTION_4(v71);
  if (v0 + 12 > (v76 >> 1))
  {
    v126 = OUTLINED_FUNCTION_39(v76);
    v72 = OUTLINED_FUNCTION_84_2(v126, v127, v128, v129, &qword_1EAE3C380, &qword_19395BAF0);
    v75 = v72;
  }

  OUTLINED_FUNCTION_50(v72, v73, v74, v75);
  return OUTLINED_FUNCTION_38_1(v77, v78);
}

void IntelligenceFlowFeedbackLearning.CandidateOutcome.description.getter()
{
  if (*(v0 + 8) == 1)
  {
    switch(*v0)
    {
      case 2:
        OUTLINED_FUNCTION_102_5();
        break;
      case 3:
      case 5:
      case 6:
      case 0xALL:
        OUTLINED_FUNCTION_129_3();
        break;
      case 4:
        OUTLINED_FUNCTION_101_6(10);
        break;
      case 7:
      case 8:
        return;
      default:
        OUTLINED_FUNCTION_38();
        break;
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_5();
  }
}

void IntelligenceFlowFeedbackLearning.CandidateOutcome.init(_:)()
{
  v2 = OUTLINED_FUNCTION_0_15();
  v4 = v4 && v3 == 0xE700000000000000;
  if (v4 || (OUTLINED_FUNCTION_22_7(v2) & 1) != 0)
  {

    OUTLINED_FUNCTION_56();
  }

  else
  {
    OUTLINED_FUNCTION_26_4();
    v7 = v4 && v6 == v0;
    if (v7 || (OUTLINED_FUNCTION_25_7(21, v6) & 1) != 0)
    {

      v5 = 0;
    }

    else
    {
      OUTLINED_FUNCTION_26_4();
      v9 = v4 && v8 == v0;
      if (v9 || (OUTLINED_FUNCTION_25_7(21, v8) & 1) != 0)
      {

        v5 = 1;
      }

      else
      {
        v10 = OUTLINED_FUNCTION_180_2();
        v12 = v4 && v11 == v0;
        if (v12 || (OUTLINED_FUNCTION_0_9(v10, v11) & 1) != 0)
        {

          OUTLINED_FUNCTION_55_0();
        }

        else
        {
          v13 = OUTLINED_FUNCTION_138();
          v15 = v4 && v14 == v0;
          if (v15 || (OUTLINED_FUNCTION_0_9(v13, v14) & 1) != 0)
          {

            OUTLINED_FUNCTION_59();
          }

          else
          {
            v16 = OUTLINED_FUNCTION_142_0();
            v18 = v4 && v17 == v0;
            if (v18 || (OUTLINED_FUNCTION_0_9(v16, v17) & 1) != 0)
            {

              OUTLINED_FUNCTION_69_2();
            }

            else
            {
              v19 = v1 == 0xD000000000000024 && 0x8000000193A19D60 == v0;
              if (v19 || (OUTLINED_FUNCTION_0_9(0xD000000000000024, 0x8000000193A19D60) & 1) != 0)
              {

                OUTLINED_FUNCTION_83();
              }

              else
              {
                v20 = OUTLINED_FUNCTION_179_2();
                v22 = v4 && v21 == v0;
                if (v22 || (OUTLINED_FUNCTION_0_9(v20, v21) & 1) != 0)
                {

                  OUTLINED_FUNCTION_90();
                }

                else
                {
                  v23 = v1 == 0x6465727265666E49 && v0 == 0xEF73736563637553;
                  if (v23 || (OUTLINED_FUNCTION_0_9(0x6465727265666E49, 0xEF73736563637553) & 1) != 0)
                  {

                    OUTLINED_FUNCTION_91_3();
                  }

                  else
                  {
                    v24 = v1 == 0x6465727265666E49 && v0 == 0xEF6572756C696146;
                    if (v24 || (OUTLINED_FUNCTION_0_9(0x6465727265666E49, 0xEF6572756C696146) & 1) != 0)
                    {

                      v5 = 8;
                    }

                    else
                    {
                      OUTLINED_FUNCTION_129_3();
                      v27 = v1 == v26 && v25 == v0;
                      if (v27 || (OUTLINED_FUNCTION_25_7(21, v25) & 1) != 0)
                      {

                        v5 = 9;
                      }

                      else
                      {
                        OUTLINED_FUNCTION_129_3();
                        if (v1 == v29 - 5 && v28 == v0)
                        {

                          v5 = 10;
                        }

                        else
                        {
                          OUTLINED_FUNCTION_0_9(v29 - 5, v28);
                          OUTLINED_FUNCTION_89();
                          v5 = 10;
                          if ((v1 & 1) == 0)
                          {
                            v5 = 0;
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

  OUTLINED_FUNCTION_12_1(v5);
}

uint64_t IntelligenceFlowFeedbackLearning.Trigger.description.getter()
{
  if (*(v0 + 8) != 1)
  {
    return OUTLINED_FUNCTION_1_5();
  }

  v1 = 0x656D69746C616552;
  if (*v0 != 1)
  {
    v1 = 0x736553664F646E45;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x5572656767697254;
  }
}

void IntelligenceFlowFeedbackLearning.Trigger.init(_:)()
{
  v2 = OUTLINED_FUNCTION_0_15();
  v4 = v4 && v3 == 0xE700000000000000;
  if (v4 || (OUTLINED_FUNCTION_22_7(v2) & 1) != 0)
  {

    OUTLINED_FUNCTION_56();
  }

  else
  {
    v6 = v1 == 0x5572656767697254 && v0 == 0xEE006E776F6E6B6ELL;
    if (v6 || (OUTLINED_FUNCTION_0_9(0x5572656767697254, 0xEE006E776F6E6B6ELL) & 1) != 0)
    {

      v5 = 0;
    }

    else
    {
      v7 = v1 == 0x656D69746C616552 && v0 == 0xEF6E6F6973736553;
      if (v7 || (OUTLINED_FUNCTION_0_9(0x656D69746C616552, 0xEF6E6F6973736553) & 1) != 0)
      {

        v5 = 1;
      }

      else if (v1 == 0x736553664F646E45 && v0 == 0xEC0000006E6F6973)
      {

        OUTLINED_FUNCTION_55_0();
      }

      else
      {
        OUTLINED_FUNCTION_0_9(0x736553664F646E45, 0xEC0000006E6F6973);
        OUTLINED_FUNCTION_89();
        OUTLINED_FUNCTION_152_0();
        if (v4)
        {
          v5 = 0;
        }
      }
    }
  }

  OUTLINED_FUNCTION_12_1(v5);
}

uint64_t IntelligenceFlowFeedbackLearning.Evaluator.init(rawValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1 - 1;
  v3 = 0;
  switch(v2)
  {
    case 1:
      v3 = 1;
      break;
    case 2:
      v3 = 2;
      break;
    case 3:
      v3 = 3;
      break;
    case 4:
      v3 = 4;
      break;
    default:
      return OUTLINED_FUNCTION_15_3(v3, a2);
  }

  return OUTLINED_FUNCTION_15_3(v3, a2);
}

uint64_t static IntelligenceFlowFeedbackLearning.Evaluator.allCases.getter()
{
  v0 = OUTLINED_FUNCTION_95_0();
  sub_1934B0FCC(v0, v1, v2, v3, v4, v5);
  OUTLINED_FUNCTION_16_0();
  if (!(!v12 & v11))
  {
    v43 = OUTLINED_FUNCTION_39(v10);
    OUTLINED_FUNCTION_84_2(v43, v44, v45, v46, &qword_1EAE3C370, &qword_19395BAE0);
    OUTLINED_FUNCTION_17_2();
  }

  OUTLINED_FUNCTION_13_6(v6, v7, v8, v9);
  if (v18 != v19)
  {
    v47 = OUTLINED_FUNCTION_39(v17);
    OUTLINED_FUNCTION_85(v47, v48, v49, v50, &qword_1EAE3C370, &qword_19395BAE0);
    OUTLINED_FUNCTION_17_2();
  }

  OUTLINED_FUNCTION_8_5(v13, v14, v15, v16);
  if (v18 != v19)
  {
    OUTLINED_FUNCTION_39(v24);
    OUTLINED_FUNCTION_57();
    v20 = sub_1934B0FCC(v51, v52, v53, v54, v55, v56);
    v23 = v20;
  }

  OUTLINED_FUNCTION_9_7(v20, v21, v22, v23);
  if (!(v18 ^ v19 | v12))
  {
    v57 = OUTLINED_FUNCTION_39(v29);
    v25 = OUTLINED_FUNCTION_84_2(v57, v58, v59, v60, &qword_1EAE3C370, &qword_19395BAE0);
    v28 = v25;
  }

  OUTLINED_FUNCTION_3_7(v25, v26, v27, v28);
  if (!(v18 ^ v19 | v12))
  {
    v61 = OUTLINED_FUNCTION_39(v34);
    v30 = OUTLINED_FUNCTION_85(v61, v62, v63, v64, &qword_1EAE3C370, &qword_19395BAE0);
    v33 = v30;
  }

  OUTLINED_FUNCTION_5_11(v30, v31, v32, v33);
  if (!(v18 ^ v19 | v12))
  {
    v65 = OUTLINED_FUNCTION_39(v39);
    v35 = OUTLINED_FUNCTION_84_2(v65, v66, v67, v68, &qword_1EAE3C370, &qword_19395BAE0);
    v38 = v35;
  }

  OUTLINED_FUNCTION_50(v35, v36, v37, v38);
  return OUTLINED_FUNCTION_38_1(v40, v41);
}

void IntelligenceFlowFeedbackLearning.Evaluator.description.getter()
{
  if (*(v0 + 8) == 1)
  {
    switch(*v0)
    {
      case 2:
        OUTLINED_FUNCTION_157_3();
        break;
      case 3:
        OUTLINED_FUNCTION_38();
        break;
      case 4:
        OUTLINED_FUNCTION_187_1();
        break;
      default:
        return;
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_5();
  }
}

void IntelligenceFlowFeedbackLearning.Evaluator.init(_:)()
{
  v2 = OUTLINED_FUNCTION_0_15();
  v4 = v4 && v3 == 0xE700000000000000;
  if (v4 || (OUTLINED_FUNCTION_22_7(v2) & 1) != 0)
  {

    OUTLINED_FUNCTION_56();
  }

  else
  {
    v6 = v1 == 0x72506E6F69746341 && v0 == 0xEC00000074706D6FLL;
    if (v6 || (OUTLINED_FUNCTION_0_9(0x72506E6F69746341, 0xEC00000074706D6FLL) & 1) != 0)
    {

      v5 = 0;
    }

    else
    {
      v7 = v1 == 0x6465786946 && v0 == 0xE500000000000000;
      if (v7 || (OUTLINED_FUNCTION_0_9(0x6465786946, 0xE500000000000000) & 1) != 0)
      {

        v5 = 1;
      }

      else
      {
        v8 = OUTLINED_FUNCTION_157_3();
        v10 = v1 == v8 && v0 == v9;
        if (v10 || (OUTLINED_FUNCTION_0_9(v8, v9) & 1) != 0)
        {

          OUTLINED_FUNCTION_55_0();
        }

        else
        {
          OUTLINED_FUNCTION_26_4();
          v12 = v4 && v11 == v0;
          if (v12 || (OUTLINED_FUNCTION_25_7(16, v11) & 1) != 0)
          {

            OUTLINED_FUNCTION_59();
          }

          else
          {
            v13 = OUTLINED_FUNCTION_179_2();
            if (v4 && v14 == v0)
            {

              OUTLINED_FUNCTION_69_2();
            }

            else
            {
              OUTLINED_FUNCTION_0_9(v13, v14);
              OUTLINED_FUNCTION_89();
              v5 = 4;
              if ((v1 & 1) == 0)
              {
                v5 = 0;
              }
            }
          }
        }
      }
    }
  }

  OUTLINED_FUNCTION_12_1(v5);
}

void static IntelligenceFlowFeedbackLearning.Event.ActionEvaluation.StateInfo.== infix(_:_:)()
{
  OUTLINED_FUNCTION_117();
  v2 = type metadata accessor for IntelligenceFlowFeedbackLearning.Event.ActionEvaluation.Ended(0);
  v3 = OUTLINED_FUNCTION_47(v2);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_15_8();
  v20 = v4;
  OUTLINED_FUNCTION_47_3();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_38_11();
  type metadata accessor for IntelligenceFlowFeedbackLearning.Event.ActionEvaluation.StateInfo(v6);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_97_4();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_173_3();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v20 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3C288, &qword_19395B538);
  OUTLINED_FUNCTION_47(v12);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_53_7();
  v15 = *(v14 + 56);
  sub_19351E57C();
  sub_19351E57C();
  v16 = OUTLINED_FUNCTION_162_3();
  if (!v16)
  {
    OUTLINED_FUNCTION_10_22();
    OUTLINED_FUNCTION_114_0();
    sub_19351E57C();
    if (!swift_getEnumCaseMultiPayload())
    {
      v17 = *(v0 + v15);
      v22 = *v11;
      v21 = v17;
      static IntelligenceFlowFeedbackLearning.Event.ActionEvaluation.Started.== infix(_:_:)(&v22, &v21);
      goto LABEL_9;
    }

LABEL_11:
    sub_19344E6DC(v0, &qword_1EAE3C288, &qword_19395B538);
    goto LABEL_12;
  }

  if (v16 != 1)
  {
    OUTLINED_FUNCTION_10_22();
    OUTLINED_FUNCTION_102_4();
    sub_19351E57C();
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v18 = OUTLINED_FUNCTION_99_7(*v1);
      static IntelligenceFlowFeedbackLearning.Event.ActionEvaluation.Failed.== infix(_:_:)(v18, v19);
      goto LABEL_9;
    }

    goto LABEL_11;
  }

  OUTLINED_FUNCTION_10_22();
  sub_19351E57C();
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    OUTLINED_FUNCTION_84_5();
    sub_19351E634();
    goto LABEL_11;
  }

  sub_19351E5D8();
  sub_19351E5D8();
  OUTLINED_FUNCTION_127();
  static IntelligenceFlowFeedbackLearning.Event.ActionEvaluation.Ended.== infix(_:_:)();
  sub_19351E634();
  OUTLINED_FUNCTION_94_5();
  sub_19351E634();
LABEL_9:
  OUTLINED_FUNCTION_153_4();
LABEL_12:
  OUTLINED_FUNCTION_123_4();
  OUTLINED_FUNCTION_116();
}

uint64_t IntelligenceFlowFeedbackLearning.Event.ActionEvaluation.StateInfo.hash(into:)()
{
  v0 = OUTLINED_FUNCTION_57_3();
  type metadata accessor for IntelligenceFlowFeedbackLearning.Event.ActionEvaluation.Ended(v0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_5_30();
  type metadata accessor for IntelligenceFlowFeedbackLearning.Event.ActionEvaluation.StateInfo(v2);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_1_7();
  OUTLINED_FUNCTION_10_22();
  OUTLINED_FUNCTION_55();
  sub_19351E57C();
  OUTLINED_FUNCTION_109_6();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      OUTLINED_FUNCTION_95_5();
      sub_19351E688(&qword_1EAE3C298, type metadata accessor for IntelligenceFlowFeedbackLearning.Event.ActionEvaluation.Ended, &protocol conformance descriptor for IntelligenceFlowFeedbackLearning.Event.ActionEvaluation.Ended);
      OUTLINED_FUNCTION_21_1();
      sub_19393C540();
      OUTLINED_FUNCTION_84_5();
      return sub_19351E634();
    }

    sub_19351E480();
  }

  else
  {
    sub_19351E4D4();
  }

  return sub_19393C540();
}

void static IntelligenceFlowFeedbackLearning.Event.InteractionDonation.StateInfo.== infix(_:_:)()
{
  OUTLINED_FUNCTION_117();
  v1 = type metadata accessor for IntelligenceFlowFeedbackLearning.Event.InteractionDonation.Ended(0);
  v2 = OUTLINED_FUNCTION_47(v1);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_38_11();
  type metadata accessor for IntelligenceFlowFeedbackLearning.Event.InteractionDonation.StateInfo(v4);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_134_4();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v13 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3C2A8, &qword_19395B540);
  OUTLINED_FUNCTION_47(v9);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_53_7();
  sub_19351E57C();
  sub_19351E57C();
  if (OUTLINED_FUNCTION_162_3() != 1)
  {
    OUTLINED_FUNCTION_35_13();
    sub_19351E57C();
    if (OUTLINED_FUNCTION_184_2() != 1)
    {
      v11 = OUTLINED_FUNCTION_99_7(*v8);
      static IntelligenceFlowFeedbackLearning.Event.InteractionDonation.Started.== infix(_:_:)(v11, v12);
      goto LABEL_6;
    }

LABEL_8:
    sub_19344E6DC(v0, &qword_1EAE3C2A8, &qword_19395B540);
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_35_13();
  sub_19351E57C();
  if (OUTLINED_FUNCTION_184_2() != 1)
  {
    OUTLINED_FUNCTION_80_6();
    sub_19351E634();
    goto LABEL_8;
  }

  sub_19351E5D8();
  sub_19351E5D8();
  OUTLINED_FUNCTION_127();
  static IntelligenceFlowFeedbackLearning.Event.InteractionDonation.Ended.== infix(_:_:)();
  sub_19351E634();
  OUTLINED_FUNCTION_94_5();
  sub_19351E634();
LABEL_6:
  OUTLINED_FUNCTION_153_4();
LABEL_9:
  OUTLINED_FUNCTION_123_4();
  OUTLINED_FUNCTION_116();
}

uint64_t IntelligenceFlowFeedbackLearning.Event.InteractionDonation.StateInfo.hash(into:)()
{
  v0 = OUTLINED_FUNCTION_57_3();
  type metadata accessor for IntelligenceFlowFeedbackLearning.Event.InteractionDonation.Ended(v0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_5_30();
  type metadata accessor for IntelligenceFlowFeedbackLearning.Event.InteractionDonation.StateInfo(v2);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_1_7();
  OUTLINED_FUNCTION_35_13();
  OUTLINED_FUNCTION_55();
  sub_19351E57C();
  OUTLINED_FUNCTION_109_6();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_95_5();
    sub_19351E688(&qword_1EAE3C2B0, type metadata accessor for IntelligenceFlowFeedbackLearning.Event.InteractionDonation.Ended, &protocol conformance descriptor for IntelligenceFlowFeedbackLearning.Event.InteractionDonation.Ended);
    OUTLINED_FUNCTION_21_1();
    sub_19393C540();
    OUTLINED_FUNCTION_80_6();
    return sub_19351E634();
  }

  else
  {
    sub_19351E528();
    return sub_19393C540();
  }
}

void static IntelligenceFlowFeedbackLearning.Event.EventValue.== infix(_:_:)()
{
  OUTLINED_FUNCTION_117();
  v1 = type metadata accessor for IntelligenceFlowFeedbackLearning.Event.InteractionDonation(0);
  v2 = OUTLINED_FUNCTION_47(v1);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_15_8();
  OUTLINED_FUNCTION_47_3();
  MEMORY[0x1EEE9AC00](v3);
  v4 = type metadata accessor for IntelligenceFlowFeedbackLearning.Event.ActionEvaluation(0);
  v5 = OUTLINED_FUNCTION_47(v4);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v6);
  type metadata accessor for IntelligenceFlowFeedbackLearning.Event.EventValue(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_66_4();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_98_6();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3C2C0, &qword_19395B548);
  OUTLINED_FUNCTION_47(v9);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_53_7();
  sub_19351E57C();
  sub_19351E57C();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_34_11();
    OUTLINED_FUNCTION_114_0();
    sub_19351E57C();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_19351E5D8();
      sub_19351E5D8();
      static IntelligenceFlowFeedbackLearning.Event.InteractionDonation.== infix(_:_:)();
      sub_19351E634();
LABEL_9:
      sub_19351E634();
      OUTLINED_FUNCTION_153_4();
      goto LABEL_10;
    }

    OUTLINED_FUNCTION_79_7();
  }

  else
  {
    OUTLINED_FUNCTION_34_11();
    OUTLINED_FUNCTION_186();
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_19351E5D8();
      sub_19351E5D8();
      OUTLINED_FUNCTION_55();
      static IntelligenceFlowFeedbackLearning.Event.ActionEvaluation.== infix(_:_:)();
      sub_19351E634();
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_78_6();
  }

  sub_19351E634();
  sub_19344E6DC(v0, &qword_1EAE3C2C0, &qword_19395B548);
LABEL_10:
  OUTLINED_FUNCTION_116();
}

uint64_t IntelligenceFlowFeedbackLearning.Event.EventValue.hash(into:)()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for IntelligenceFlowFeedbackLearning.Event.InteractionDonation(v0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_5_30();
  type metadata accessor for IntelligenceFlowFeedbackLearning.Event.ActionEvaluation(v2);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5_1();
  type metadata accessor for IntelligenceFlowFeedbackLearning.Event.EventValue(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_34_11();
  sub_19351E57C();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_19351E5D8();
    sub_19351E688(&qword_1EAE3C2C8, type metadata accessor for IntelligenceFlowFeedbackLearning.Event.InteractionDonation, &protocol conformance descriptor for IntelligenceFlowFeedbackLearning.Event.InteractionDonation);
    OUTLINED_FUNCTION_21_1();
    sub_19393C540();
    OUTLINED_FUNCTION_79_7();
  }

  else
  {
    OUTLINED_FUNCTION_166();
    sub_19351E5D8();
    sub_19351E688(&qword_1EAE3C2D0, type metadata accessor for IntelligenceFlowFeedbackLearning.Event.ActionEvaluation, &protocol conformance descriptor for IntelligenceFlowFeedbackLearning.Event.ActionEvaluation);
    OUTLINED_FUNCTION_21_1();
    sub_19393C540();
    OUTLINED_FUNCTION_78_6();
  }

  return sub_19351E634();
}

void static IntelligenceFlowFeedbackLearning.CandidateCategory.== infix(_:_:)()
{
  OUTLINED_FUNCTION_117();
  v1 = type metadata accessor for IntelligenceFlowFeedbackLearning.ParameterCandidateCategory(0);
  v2 = OUTLINED_FUNCTION_47(v1);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_38_11();
  type metadata accessor for IntelligenceFlowFeedbackLearning.CandidateCategory(v4);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_134_4();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v13 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3C2D8, &qword_19395B550);
  OUTLINED_FUNCTION_47(v9);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_53_7();
  sub_19351E57C();
  sub_19351E57C();
  if (OUTLINED_FUNCTION_162_3() != 1)
  {
    OUTLINED_FUNCTION_33_10();
    sub_19351E57C();
    if (OUTLINED_FUNCTION_184_2() != 1)
    {
      v11 = OUTLINED_FUNCTION_99_7(*v8);
      static IntelligenceFlowFeedbackLearning.ToolCandidateCategory.== infix(_:_:)(v11, v12);
      goto LABEL_6;
    }

LABEL_8:
    sub_19344E6DC(v0, &qword_1EAE3C2D8, &qword_19395B550);
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_33_10();
  sub_19351E57C();
  if (OUTLINED_FUNCTION_184_2() != 1)
  {
    OUTLINED_FUNCTION_75_8();
    sub_19351E634();
    goto LABEL_8;
  }

  sub_19351E5D8();
  sub_19351E5D8();
  OUTLINED_FUNCTION_127();
  static IntelligenceFlowFeedbackLearning.ParameterCandidateCategory.== infix(_:_:)();
  sub_19351E634();
  OUTLINED_FUNCTION_94_5();
  sub_19351E634();
LABEL_6:
  OUTLINED_FUNCTION_153_4();
LABEL_9:
  OUTLINED_FUNCTION_123_4();
  OUTLINED_FUNCTION_116();
}

uint64_t IntelligenceFlowFeedbackLearning.CandidateCategory.hash(into:)()
{
  v0 = OUTLINED_FUNCTION_57_3();
  type metadata accessor for IntelligenceFlowFeedbackLearning.ParameterCandidateCategory(v0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_5_30();
  type metadata accessor for IntelligenceFlowFeedbackLearning.CandidateCategory(v2);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_1_7();
  OUTLINED_FUNCTION_33_10();
  OUTLINED_FUNCTION_55();
  sub_19351E57C();
  OUTLINED_FUNCTION_109_6();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_95_5();
    sub_19351E688(&qword_1EAE3C2E0, type metadata accessor for IntelligenceFlowFeedbackLearning.ParameterCandidateCategory, &protocol conformance descriptor for IntelligenceFlowFeedbackLearning.ParameterCandidateCategory);
    OUTLINED_FUNCTION_21_1();
    sub_19393C540();
    OUTLINED_FUNCTION_75_8();
    return sub_19351E634();
  }

  else
  {
    sub_19351E6D0();
    return sub_19393C540();
  }
}

unint64_t sub_19351D85C()
{
  result = qword_1EAE3C110;
  if (!qword_1EAE3C110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3C110);
  }

  return result;
}

unint64_t sub_19351D8B0()
{
  result = qword_1EAE3C120;
  if (!qword_1EAE3C120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3C120);
  }

  return result;
}

unint64_t sub_19351D904()
{
  result = qword_1EAE3C128;
  if (!qword_1EAE3C128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3C128);
  }

  return result;
}

unint64_t sub_19351D958()
{
  result = qword_1EAE3C130;
  if (!qword_1EAE3C130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3C130);
  }

  return result;
}

unint64_t sub_19351D9AC()
{
  result = qword_1EAE3C138;
  if (!qword_1EAE3C138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3C138);
  }

  return result;
}

unint64_t sub_19351DA54()
{
  result = qword_1EAE3C148;
  if (!qword_1EAE3C148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3C148);
  }

  return result;
}

unint64_t sub_19351DAA8()
{
  result = qword_1EAE3C150;
  if (!qword_1EAE3C150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3C150);
  }

  return result;
}

unint64_t sub_19351DAFC()
{
  result = qword_1EAE3C158;
  if (!qword_1EAE3C158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3C158);
  }

  return result;
}

unint64_t sub_19351DB50()
{
  result = qword_1EAE3C160;
  if (!qword_1EAE3C160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3C160);
  }

  return result;
}

unint64_t sub_19351DBA4()
{
  result = qword_1EAE3C168;
  if (!qword_1EAE3C168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3C168);
  }

  return result;
}

unint64_t sub_19351DBF8()
{
  result = qword_1EAE3C170;
  if (!qword_1EAE3C170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3C170);
  }

  return result;
}

unint64_t sub_19351DC4C()
{
  result = qword_1EAE3C178;
  if (!qword_1EAE3C178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3C178);
  }

  return result;
}

unint64_t sub_19351DCA0()
{
  result = qword_1EAE3C180;
  if (!qword_1EAE3C180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3C180);
  }

  return result;
}

unint64_t sub_19351DCF4()
{
  result = qword_1EAE3C188;
  if (!qword_1EAE3C188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3C188);
  }

  return result;
}

unint64_t sub_19351DD48()
{
  result = qword_1EAE3C190;
  if (!qword_1EAE3C190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3C190);
  }

  return result;
}

unint64_t sub_19351DD9C()
{
  result = qword_1EAE3C198;
  if (!qword_1EAE3C198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3C198);
  }

  return result;
}

unint64_t sub_19351DDF0()
{
  result = qword_1EAE3C1A0;
  if (!qword_1EAE3C1A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3C1A0);
  }

  return result;
}

unint64_t sub_19351DE44()
{
  result = qword_1EAE3C1A8;
  if (!qword_1EAE3C1A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3C1A8);
  }

  return result;
}

unint64_t sub_19351DE98()
{
  result = qword_1EAE3C1B0;
  if (!qword_1EAE3C1B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3C1B0);
  }

  return result;
}

unint64_t sub_19351DEEC()
{
  result = qword_1EAE3C1B8;
  if (!qword_1EAE3C1B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3C1B8);
  }

  return result;
}

unint64_t sub_19351DF40()
{
  result = qword_1EAE3C1C0;
  if (!qword_1EAE3C1C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3C1C0);
  }

  return result;
}

unint64_t sub_19351DF94()
{
  result = qword_1EAE3C1C8;
  if (!qword_1EAE3C1C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3C1C8);
  }

  return result;
}

unint64_t sub_19351DFE8()
{
  result = qword_1EAE3C1D0;
  if (!qword_1EAE3C1D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3C1D0);
  }

  return result;
}

unint64_t sub_19351E03C()
{
  result = qword_1EAE3C1F0;
  if (!qword_1EAE3C1F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3C1F0);
  }

  return result;
}

unint64_t sub_19351E090()
{
  result = qword_1EAE3C1F8;
  if (!qword_1EAE3C1F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3C1F8);
  }

  return result;
}

unint64_t sub_19351E0E4()
{
  result = qword_1EAE3C200;
  if (!qword_1EAE3C200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3C200);
  }

  return result;
}

unint64_t sub_19351E138()
{
  result = qword_1EAE3C208;
  if (!qword_1EAE3C208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3C208);
  }

  return result;
}

unint64_t sub_19351E18C()
{
  result = qword_1EAE3C210;
  if (!qword_1EAE3C210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3C210);
  }

  return result;
}

unint64_t sub_19351E1E0()
{
  result = qword_1EAE3C228;
  if (!qword_1EAE3C228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3C228);
  }

  return result;
}

unint64_t sub_19351E234()
{
  result = qword_1EAE3C238;
  if (!qword_1EAE3C238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3C238);
  }

  return result;
}

unint64_t sub_19351E288()
{
  result = qword_1EAE3C240;
  if (!qword_1EAE3C240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3C240);
  }

  return result;
}

unint64_t sub_19351E2DC()
{
  result = qword_1EAE3C258;
  if (!qword_1EAE3C258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3C258);
  }

  return result;
}

unint64_t sub_19351E330()
{
  result = qword_1EAE3C268;
  if (!qword_1EAE3C268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3C268);
  }

  return result;
}

unint64_t sub_19351E384()
{
  result = qword_1EAE3C270;
  if (!qword_1EAE3C270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3C270);
  }

  return result;
}

unint64_t sub_19351E3D8()
{
  result = qword_1EAE3C278;
  if (!qword_1EAE3C278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3C278);
  }

  return result;
}

unint64_t sub_19351E42C()
{
  result = qword_1EAE3C280;
  if (!qword_1EAE3C280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3C280);
  }

  return result;
}

unint64_t sub_19351E480()
{
  result = qword_1EAE3C290;
  if (!qword_1EAE3C290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3C290);
  }

  return result;
}

unint64_t sub_19351E4D4()
{
  result = qword_1EAE3C2A0;
  if (!qword_1EAE3C2A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3C2A0);
  }

  return result;
}

unint64_t sub_19351E528()
{
  result = qword_1EAE3C2B8;
  if (!qword_1EAE3C2B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3C2B8);
  }

  return result;
}

uint64_t sub_19351E57C()
{
  OUTLINED_FUNCTION_91_0();
  v2(0);
  OUTLINED_FUNCTION_4_1();
  (*(v3 + 16))(v0, v1);
  return v0;
}

uint64_t sub_19351E5D8()
{
  OUTLINED_FUNCTION_91_0();
  v2(0);
  OUTLINED_FUNCTION_4_1();
  (*(v3 + 32))(v0, v1);
  return v0;
}

uint64_t sub_19351E634()
{
  v1 = OUTLINED_FUNCTION_3_4();
  v2(v1);
  OUTLINED_FUNCTION_4_1();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t sub_19351E688(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_19351E6D0()
{
  result = qword_1EAE3C2E8;
  if (!qword_1EAE3C2E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3C2E8);
  }

  return result;
}

unint64_t sub_19351E728()
{
  result = qword_1EAE3C2F0;
  if (!qword_1EAE3C2F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3C2F0);
  }

  return result;
}

unint64_t sub_19351E780()
{
  result = qword_1EAE3C2F8;
  if (!qword_1EAE3C2F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3C2F8);
  }

  return result;
}

unint64_t sub_19351E7D8()
{
  result = qword_1EAE3C300;
  if (!qword_1EAE3C300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3C300);
  }

  return result;
}

unint64_t sub_19351E830()
{
  result = qword_1EAE3C308;
  if (!qword_1EAE3C308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3C308);
  }

  return result;
}

unint64_t sub_19351E888()
{
  result = qword_1EAE3C310;
  if (!qword_1EAE3C310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3C310);
  }

  return result;
}

unint64_t sub_19351E8E0()
{
  result = qword_1EAE3C318;
  if (!qword_1EAE3C318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3C318);
  }

  return result;
}

unint64_t sub_19351E938()
{
  result = qword_1EAE3C320;
  if (!qword_1EAE3C320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3C320);
  }

  return result;
}

unint64_t sub_19351E990()
{
  result = qword_1EAE3C328;
  if (!qword_1EAE3C328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3C328);
  }

  return result;
}

unint64_t sub_19351E9E8()
{
  result = qword_1EAE3C330;
  if (!qword_1EAE3C330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3C330);
  }

  return result;
}

unint64_t sub_19351EA40()
{
  result = qword_1EAE3C338;
  if (!qword_1EAE3C338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3C338);
  }

  return result;
}

unint64_t sub_19351EA98()
{
  result = qword_1EAE3C340;
  if (!qword_1EAE3C340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3C340);
  }

  return result;
}

unint64_t sub_19351EAF0()
{
  result = qword_1EAE3C348;
  if (!qword_1EAE3C348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3C348);
  }

  return result;
}

unint64_t sub_19351EB48()
{
  result = qword_1EAE3C350;
  if (!qword_1EAE3C350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3C350);
  }

  return result;
}

unint64_t sub_19351EBA0()
{
  result = qword_1EAE3C358;
  if (!qword_1EAE3C358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3C358);
  }

  return result;
}

unint64_t sub_19351EBF8()
{
  result = qword_1EAE3C360;
  if (!qword_1EAE3C360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3C360);
  }

  return result;
}

unint64_t sub_19351EC50()
{
  result = qword_1EAE3C368;
  if (!qword_1EAE3C368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3C368);
  }

  return result;
}

void OUTLINED_FUNCTION_36_12()
{
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v0 + 32);
  *(v1 - 152) = *v0;
  *(v1 - 144) = v2;
  *(v1 - 136) = v3;
  *(v1 - 128) = v4;
  *(v1 - 120) = v5;
}

void OUTLINED_FUNCTION_59_9()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  v5 = v0[3];
  v6 = *(v0 + 32);
  *(v1 - 104) = v2;
  *(v1 - 96) = v3;
  *(v1 - 88) = v4;
  *(v1 - 80) = v5;
  *(v1 - 72) = v6;
}

uint64_t OUTLINED_FUNCTION_62_11@<X0>(uint64_t a1@<X8>)
{
  *(v2 + 248) = v3;
  *(v2 + 256) = a1;
  *(v2 + 264) = v1;
  return v4 - 160;
}

uint64_t OUTLINED_FUNCTION_120_2()
{

  return sub_19351E5D8();
}

uint64_t OUTLINED_FUNCTION_128_3()
{
  v4 = *v1;
  v5 = v1[1];
  *(v3 - 120) = *v2;
  *(v3 - 112) = v0;
  *(v3 - 160) = v4;
  *(v3 - 152) = v5;
  return v3 - 120;
}

uint64_t OUTLINED_FUNCTION_153_4()
{

  return sub_19351E634();
}

uint64_t OUTLINED_FUNCTION_161_2(uint64_t a1, uint64_t a2)
{

  return sub_193456418(a1, a2);
}

uint64_t OUTLINED_FUNCTION_166_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, ...)
{
  va_start(va, a28);

  return sub_19350E860(v28 - 256, va);
}

uint64_t OUTLINED_FUNCTION_167_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, ...)
{
  va_start(va, a37);

  return sub_19350E860(va, &a29);
}

void *OUTLINED_FUNCTION_185_2(void *a1)
{

  return memcpy(a1, v1, 0x48uLL);
}

uint64_t OUTLINED_FUNCTION_186()
{

  return sub_19351E57C();
}

void sub_19351F138()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEA9380);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v1 = OUTLINED_FUNCTION_47_2();
  OUTLINED_FUNCTION_4_2(v1, xmmword_19394FBB0);
  OUTLINED_FUNCTION_69_0("domain");
  sub_19393C400();
  OUTLINED_FUNCTION_31_1();
  v3 = *(v2 + 104);
  v4 = OUTLINED_FUNCTION_65();
  v3(v4);
  v5 = OUTLINED_FUNCTION_29_1();
  v6 = OUTLINED_FUNCTION_48(v5, "code");
  v3(v6);
  v7 = OUTLINED_FUNCTION_13_12();
  v8 = OUTLINED_FUNCTION_48(v7, "errorCode");
  v3(v8);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

uint64_t sub_19351F288()
{
  OUTLINED_FUNCTION_21_0();
  while (1)
  {
    result = OUTLINED_FUNCTION_165_0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        OUTLINED_FUNCTION_98();
        sub_19393C190();
        break;
      case 2:
        OUTLINED_FUNCTION_98();
        sub_19393C220();
        break;
      case 1:
        OUTLINED_FUNCTION_125();
        sub_19393C200();
        break;
    }
  }

  return result;
}

void sub_19351F30C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_356();
  OUTLINED_FUNCTION_110();
  v5 = *(v3 + 20);
  v6 = *(v3 + 32);
  if (*(v3 + 8))
  {
    OUTLINED_FUNCTION_167_3();
    sub_19393C3C0();
  }

  if (!v4)
  {
    if ((v5 & 1) == 0)
    {
      OUTLINED_FUNCTION_95_3();
      sub_19393C3D0();
    }

    if ((v6 & 1) == 0)
    {
      OUTLINED_FUNCTION_95_3();
      sub_19393C360();
    }
  }

  OUTLINED_FUNCTION_355();
}

void sub_19351F40C()
{
  OUTLINED_FUNCTION_115();
  v1 = sub_19393C420();
  __swift_allocate_value_buffer(v1, qword_1EAEA9398);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v2 = OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_4_2(v2, xmmword_19394FBE0);
  OUTLINED_FUNCTION_199_0("stateInfo");
  sub_19393C400();
  OUTLINED_FUNCTION_31_1();
  v4 = *(v3 + 104);
  v5 = OUTLINED_FUNCTION_65();
  (v4)(v5);
  v6 = OUTLINED_FUNCTION_52();
  *v7 = v0;
  *(OUTLINED_FUNCTION_371(v6) + 16) = v0;
  OUTLINED_FUNCTION_10_0();
  v4();
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_19351F5FC()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEA93C8);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v1 = OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_4_2(v1, xmmword_19394FBE0);
  OUTLINED_FUNCTION_69_0("handledError");
  sub_19393C400();
  OUTLINED_FUNCTION_31_1();
  v3 = *(v2 + 104);
  v4 = OUTLINED_FUNCTION_65();
  v3(v4);
  v5 = OUTLINED_FUNCTION_29_1();
  v6 = OUTLINED_FUNCTION_20_13(v5, "events");
  v3(v6);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_19351F728()
{
  OUTLINED_FUNCTION_21_0();
  while (1)
  {
    v1 = OUTLINED_FUNCTION_165_0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (v1 == 2)
    {
      OUTLINED_FUNCTION_98();
      sub_193497D68(v3);
    }

    else if (v1 == 1)
    {
      OUTLINED_FUNCTION_62();
      sub_193498018();
    }
  }
}

double sub_19351F86C()
{
  OUTLINED_FUNCTION_366();
  IntelligenceFlowPlatformPnR.Started.init()();
  *v0 = v2;
  result = 0.0;
  *(v0 + 8) = 0u;
  *(v0 + 24) = 0u;
  *(v0 + 40) = 0;
  return result;
}

void sub_19351F8B0()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEA93F8);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v1 = OUTLINED_FUNCTION_47_2();
  OUTLINED_FUNCTION_4_2(v1, xmmword_19394FBB0);
  OUTLINED_FUNCTION_44_8("started");
  sub_19393C400();
  OUTLINED_FUNCTION_31_1();
  v3 = *(v2 + 104);
  v4 = OUTLINED_FUNCTION_65();
  v3(v4);
  v5 = OUTLINED_FUNCTION_29_1();
  v6 = OUTLINED_FUNCTION_24_0(v5, "ended");
  v3(v6);
  v7 = OUTLINED_FUNCTION_13_12();
  v8 = OUTLINED_FUNCTION_20_13(v7, "failed");
  v3(v8);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

uint64_t sub_19351FBEC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a6)
  {
    sub_193456418(result, a2);
  }

  return result;
}

void sub_19351FCC0()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEA9428);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v1 = OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_4_2(v1, xmmword_19394FBE0);
  OUTLINED_FUNCTION_69_0("event");
  sub_19393C400();
  OUTLINED_FUNCTION_31_1();
  v3 = *(v2 + 104);
  v4 = OUTLINED_FUNCTION_65();
  v3(v4);
  v5 = OUTLINED_FUNCTION_29_1();
  v6 = OUTLINED_FUNCTION_48(v5, "contextId");
  v3(v6);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_19351FDF0()
{
  OUTLINED_FUNCTION_53_4();
  while (1)
  {
    v1 = OUTLINED_FUNCTION_124();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (v1 == 2)
    {
      v3 = type metadata accessor for ResponseGeneration(0);
      v4 = OUTLINED_FUNCTION_160(*(v3 + 20));
      sub_193497890(v4);
    }

    else if (v1 == 1)
    {
      type metadata accessor for ResponseGeneration.Event(0);
      OUTLINED_FUNCTION_86();
      sub_193498018();
    }
  }
}

void sub_19351FE8C()
{
  OUTLINED_FUNCTION_46_5();
  sub_19351FEE8();
  if (!v0)
  {
    OUTLINED_FUNCTION_46_5();
    sub_19345931C();
  }
}

void sub_19351FEE8()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_5_8(v2, v3);
  v4 = OUTLINED_FUNCTION_275();
  OUTLINED_FUNCTION_47(v4);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_8();
  type metadata accessor for ResponseGeneration.Event(v6);
  OUTLINED_FUNCTION_14_7();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_7_26();
  OUTLINED_FUNCTION_139_6();
  OUTLINED_FUNCTION_20_10();
  if (v8)
  {
    sub_19344E6DC(v0, &qword_1EAE3C068, byte_19395C2A0);
  }

  else
  {
    OUTLINED_FUNCTION_140_3();
    OUTLINED_FUNCTION_40_7();
    sub_19352F504(v1, type metadata accessor for ResponseGeneration.Event);
  }

  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_27();
}

void sub_193520080()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_5_8(v2, v3);
  v4 = OUTLINED_FUNCTION_275();
  OUTLINED_FUNCTION_47(v4);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_8();
  type metadata accessor for ResponseGeneration.Event.EventType(v6);
  OUTLINED_FUNCTION_14_7();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_7_26();
  OUTLINED_FUNCTION_139_6();
  OUTLINED_FUNCTION_20_10();
  if (v8)
  {
    sub_19344E6DC(v0, &qword_1EAE3C070, &qword_19395AF28);
  }

  else
  {
    OUTLINED_FUNCTION_140_3();
    OUTLINED_FUNCTION_40_7();
    OUTLINED_FUNCTION_4_26();
    sub_19352F504(v1, v9);
  }

  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_27();
}

void sub_193520210()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_5_8(v2, v3);
  v4 = OUTLINED_FUNCTION_275();
  OUTLINED_FUNCTION_47(v4);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_8();
  type metadata accessor for ResponseGeneration.Event.Generation.StateInfo(v6);
  OUTLINED_FUNCTION_14_7();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_7_26();
  OUTLINED_FUNCTION_139_6();
  OUTLINED_FUNCTION_20_10();
  if (v8)
  {
    sub_19344E6DC(v0, &qword_1EAE3C078, &qword_19395C2B0);
  }

  else
  {
    OUTLINED_FUNCTION_140_3();
    OUTLINED_FUNCTION_40_7();
    OUTLINED_FUNCTION_58_8();
    sub_19352F504(v1, v9);
  }

  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_27();
}

void sub_1935203B8()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, qword_1EAEA9488);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v4 = *(v3 + 72);
  OUTLINED_FUNCTION_49_0();
  v32 = OUTLINED_FUNCTION_156();
  OUTLINED_FUNCTION_27_2(v32, xmmword_193952660);
  *v1 = 1;
  *v0 = "handledError";
  *(v0 + 8) = 12;
  *(v0 + 16) = 2;
  sub_19393C400();
  OUTLINED_FUNCTION_11_0();
  v6 = *(v5 + 104);
  v7 = OUTLINED_FUNCTION_50_1();
  (v6)(v7);
  v8 = OUTLINED_FUNCTION_61();
  *v9 = 2;
  *v8 = "source";
  v8[1] = 6;
  v10 = OUTLINED_FUNCTION_41(v8);
  (v6)(v10);
  v11 = OUTLINED_FUNCTION_9_4((v1 + 2 * v4));
  v12 = OUTLINED_FUNCTION_5_4(v11, "characterCount");
  (v6)(v12);
  v13 = OUTLINED_FUNCTION_13((v1 + 3 * v4));
  v14 = OUTLINED_FUNCTION_5_4(v13, "wordCount");
  (v6)(v14);
  v15 = OUTLINED_FUNCTION_3_1(v1 + 4 * v4);
  *v16 = 5;
  *v15 = "fallbackReason";
  v15[1] = 14;
  v17 = OUTLINED_FUNCTION_41(v15);
  (v6)(v17);
  v18 = OUTLINED_FUNCTION_44(5 * v4);
  *v19 = 6;
  v20 = OUTLINED_FUNCTION_5_4(v18, "displayString");
  (v6)(v20);
  v21 = OUTLINED_FUNCTION_30_0((v1 + 6 * v4));
  *v21 = "spokenString";
  *(v21 + 1) = 12;
  v22 = OUTLINED_FUNCTION_41(v21);
  (v6)(v22);
  OUTLINED_FUNCTION_120();
  v24 = OUTLINED_FUNCTION_44(v23);
  *v25 = 8;
  *v24 = "catId";
  v24[1] = 5;
  v26 = OUTLINED_FUNCTION_41(v24);
  (v6)(v26);
  v27 = OUTLINED_FUNCTION_3_1(&v1[v4]);
  *v28 = 9;
  *v27 = "staticDialogId";
  v27[1] = 14;
  v29 = OUTLINED_FUNCTION_41(v27);
  (v6)(v29);
  v30 = OUTLINED_FUNCTION_44(9 * v4);
  *v31 = 10;
  *v30 = "transcriptEventId";
  *(v30 + 8) = 17;
  *(v30 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v6();
  sub_19393C410();
  OUTLINED_FUNCTION_114();
}

void sub_19352066C()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_53_4();
  while (1)
  {
    v1 = OUTLINED_FUNCTION_124();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(v1)
    {
      case 1:
        sub_193498018();
        break;
      case 2:
        goto LABEL_9;
      case 3:
      case 4:
        OUTLINED_FUNCTION_113();
        sub_19393C220();
        break;
      case 5:
        OUTLINED_FUNCTION_55_6();
LABEL_9:
        sub_1934982A8();
        break;
      case 6:
      case 7:
      case 8:
      case 9:
        OUTLINED_FUNCTION_113();
        sub_19393C200();
        break;
      case 10:
        v3 = type metadata accessor for ResponseGeneration.Event.Generation.Ended(0);
        v4 = OUTLINED_FUNCTION_160(*(v3 + 52));
        sub_193497890(v4);
        break;
      default:
        continue;
    }
  }

  OUTLINED_FUNCTION_27();
}

void sub_1935207B4()
{
  OUTLINED_FUNCTION_75_3();
  v4 = v1[1];
  if (v4 != 1)
  {
    v5 = *(v1 + 32);
    v7 = v1[2];
    v6 = v1[3];
    v16 = *v1;
    v17 = v4;
    v18 = v7;
    v19 = BYTE4(v7) & 1;
    v20 = v6;
    v21 = v5 & 1;
    OUTLINED_FUNCTION_108_1();
    sub_193447600();
  }

  if (!v2)
  {
    if ((*(v1 + 49) & 1) == 0)
    {
      v8 = *(v1 + 48);
      v16 = v1[5];
      LOBYTE(v17) = v8 & 1;
      OUTLINED_FUNCTION_129_4();
      sub_193447324(v9, v10, v11, v12, v13, v14);
    }

    if ((v1[7] & 1) == 0)
    {
      OUTLINED_FUNCTION_95_3();
      sub_19393C3D0();
    }

    if ((v1[8] & 1) == 0)
    {
      OUTLINED_FUNCTION_95_3();
      sub_19393C3D0();
    }

    if ((*(v1 + 81) & 1) == 0)
    {
      v15 = *(v1 + 80);
      v16 = v1[9];
      LOBYTE(v17) = v15 & 1;
      sub_193447324(&v16, 5, v3, &type metadata for ResponseGeneration.Event.Generation.Ended.FallbackReason, v0, &off_1F07C5FB0);
    }

    if (v1[12])
    {
      OUTLINED_FUNCTION_167_3();
      sub_19393C3C0();
    }

    if (v1[14])
    {
      OUTLINED_FUNCTION_167_3();
      sub_19393C3C0();
    }

    if (v1[16])
    {
      OUTLINED_FUNCTION_167_3();
      sub_19393C3C0();
    }

    if (v1[18])
    {
      OUTLINED_FUNCTION_167_3();
      sub_19393C3C0();
    }

    OUTLINED_FUNCTION_95_3();
    sub_193520978();
  }
}

void sub_193520978()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_77(v3, v4, v5, v6);
  v7 = OUTLINED_FUNCTION_275();
  OUTLINED_FUNCTION_47(v7);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_14_5();
  sub_19393BE60();
  OUTLINED_FUNCTION_76();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_10_23();
  type metadata accessor for ResponseGeneration.Event.Generation.Ended(0);
  OUTLINED_FUNCTION_212();
  OUTLINED_FUNCTION_6_3(v1, 1, v0);
  if (v10)
  {
    sub_19344E6DC(v1, &qword_1EAE3AA88, &qword_19394F9C0);
  }

  else
  {
    v11 = OUTLINED_FUNCTION_178_2();
    v12(v11);
    OUTLINED_FUNCTION_116_0(v2, 10);
    OUTLINED_FUNCTION_362();
    v13 = OUTLINED_FUNCTION_121_0();
    v14(v13);
  }

  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_27();
}

void sub_193520B24()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, qword_1EAEA94A0);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v4 = *(v3 + 72);
  OUTLINED_FUNCTION_49_0();
  v5 = OUTLINED_FUNCTION_156();
  OUTLINED_FUNCTION_9_8(v5, xmmword_193952700);
  *v0 = 0;
  OUTLINED_FUNCTION_63("SourceUnknown");
  sub_19393C400();
  OUTLINED_FUNCTION_11_0();
  v7 = *(v6 + 104);
  v8 = OUTLINED_FUNCTION_50_1();
  (v7)(v8);
  v9 = OUTLINED_FUNCTION_17_8((v0 + v4));
  v10 = OUTLINED_FUNCTION_0_0(v9, "SourceTool");
  (v7)(v10);
  v11 = OUTLINED_FUNCTION_59_2((v0 + 2 * v4));
  *v11 = "SourceFallback";
  *(v11 + 1) = 14;
  v12 = OUTLINED_FUNCTION_1_3(v11);
  (v7)(v12);
  v13 = OUTLINED_FUNCTION_9_4((v0 + 3 * v4));
  *v13 = "SourceOverride";
  *(v13 + 1) = 14;
  v14 = OUTLINED_FUNCTION_1_3(v13);
  (v7)(v14);
  v15 = OUTLINED_FUNCTION_13((v0 + 4 * v4));
  v16 = OUTLINED_FUNCTION_0_0(v15, "SourceClientCache");
  (v7)(v16);
  v17 = OUTLINED_FUNCTION_19_2((v0 + 5 * v4));
  v18 = OUTLINED_FUNCTION_0_0(v17, "SourceResponseCatalog");
  (v7)(v18);
  v19 = OUTLINED_FUNCTION_54_1(6);
  *v19 = "SourceNlgModel";
  *(v19 + 1) = 14;
  v19[16] = v1;
  OUTLINED_FUNCTION_2_0();
  v7();
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_193520D5C()
{
  OUTLINED_FUNCTION_115();
  v1 = sub_19393C420();
  __swift_allocate_value_buffer(v1, qword_1EAEA94B8);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v3 = *(v2 + 72);
  OUTLINED_FUNCTION_49_0();
  v4 = OUTLINED_FUNCTION_156();
  OUTLINED_FUNCTION_43_2(v4, xmmword_193952660);
  OUTLINED_FUNCTION_102("FallbackReasonUnknown");
  sub_19393C400();
  OUTLINED_FUNCTION_11_0();
  v6 = *(v5 + 104);
  v7 = OUTLINED_FUNCTION_50_1();
  v6(v7);
  v8 = OUTLINED_FUNCTION_34_12();
  v9 = OUTLINED_FUNCTION_25(v8, "FallbackReasonNotAdoptingNLGAPI");
  v6(v9);
  v10 = OUTLINED_FUNCTION_69();
  v11 = OUTLINED_FUNCTION_25(v10, "FallbackReasonNotInAllowList");
  v6(v11);
  v12 = OUTLINED_FUNCTION_9_4((v0 + 3 * v3));
  v13 = OUTLINED_FUNCTION_25(v12, "FallbackReasonDeniedRequest");
  v6(v13);
  v14 = OUTLINED_FUNCTION_13((v0 + 4 * v3));
  v15 = OUTLINED_FUNCTION_25(v14, "FallbackReasonGuardrailDetectedHallucination");
  v6(v15);
  v16 = OUTLINED_FUNCTION_19_2((v0 + 5 * v3));
  v17 = OUTLINED_FUNCTION_25(v16, "FallbackReasonModelDetectedHallucination");
  v6(v17);
  v18 = OUTLINED_FUNCTION_54_1(6);
  v19 = OUTLINED_FUNCTION_25(v18, "FallbackReasonOverridden");
  v6(v19);
  OUTLINED_FUNCTION_120();
  v21 = OUTLINED_FUNCTION_44(v20);
  *v22 = 7;
  v23 = OUTLINED_FUNCTION_25(v21, "FallbackReasonModelServerTimeout");
  v6(v23);
  v24 = OUTLINED_FUNCTION_39_3((v0 + 8 * v3));
  v25 = OUTLINED_FUNCTION_25(v24, "FallbackReasonModelServerError");
  v6(v25);
  v26 = OUTLINED_FUNCTION_44(9 * v3);
  *v27 = 9;
  v28 = OUTLINED_FUNCTION_25(v26, "FallbackReasonDetectedSafetyIssue");
  v6(v28);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_193521044()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEA94E8);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v1 = OUTLINED_FUNCTION_47_2();
  OUTLINED_FUNCTION_4_2(v1, xmmword_19394FBB0);
  OUTLINED_FUNCTION_44_8("started");
  sub_19393C400();
  OUTLINED_FUNCTION_31_1();
  v3 = *(v2 + 104);
  v4 = OUTLINED_FUNCTION_65();
  v3(v4);
  v5 = OUTLINED_FUNCTION_29_1();
  v6 = OUTLINED_FUNCTION_24_0(v5, "ended");
  v3(v6);
  v7 = OUTLINED_FUNCTION_13_12();
  v8 = OUTLINED_FUNCTION_20_13(v7, "failed");
  v3(v8);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_193521188()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_53_4();
  type metadata accessor for ResponseGeneration.Event.Generation.Ended(0);
  OUTLINED_FUNCTION_37_1();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_10_23();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3C980, &qword_19395BB90);
  v6 = OUTLINED_FUNCTION_47(v5);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_74_5();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_137_2();
  while (1)
  {
    v8 = OUTLINED_FUNCTION_124();
    if (v0 || (v9 & 1) != 0)
    {
      break;
    }

    switch(v8)
    {
      case 3:
        OUTLINED_FUNCTION_128_4();
        sub_193498018();
        OUTLINED_FUNCTION_58_8();
        sub_19352F504(v1, v17);
        if (v24 == 2)
        {
          ResponseGeneration.Event.Generation.Failed.init()();
          v19 = OUTLINED_FUNCTION_230();
        }

        else
        {
          v19 = OUTLINED_FUNCTION_190_0();
        }

        OUTLINED_FUNCTION_85_7(v18, v19);
        type metadata accessor for ResponseGeneration.Event.Generation.StateInfo(0);
        OUTLINED_FUNCTION_141_4();
        swift_storeEnumTagMultiPayload();
        break;
      case 2:
        OUTLINED_FUNCTION_73_5();
        sub_193498018();
        v12 = v2;
        OUTLINED_FUNCTION_58_8();
        sub_19352F504(v1, v13);
        OUTLINED_FUNCTION_125_3();
        v2 = &qword_19395BB90;
        sub_19344F184();
        OUTLINED_FUNCTION_9_14(v3);
        if (v14)
        {
          ResponseGeneration.Event.Generation.Ended.init()(v12);
          v15 = OUTLINED_FUNCTION_180_3();
          v2 = v12;
          sub_19344E6DC(v15, v16, &qword_19395BB90);
          OUTLINED_FUNCTION_9_14(v3);
          if (!v14)
          {
            sub_19344E6DC(v3, &qword_1EAE3C980, &qword_19395BB90);
          }
        }

        else
        {
          OUTLINED_FUNCTION_176_1();
          sub_19344E6DC(v20, v21, v22);
          OUTLINED_FUNCTION_100_8();
          OUTLINED_FUNCTION_219();
        }

        OUTLINED_FUNCTION_100_8();
        OUTLINED_FUNCTION_351();
        type metadata accessor for ResponseGeneration.Event.Generation.StateInfo(0);
        OUTLINED_FUNCTION_141_4();
        swift_storeEnumTagMultiPayload();
        break;
      case 1:
        sub_193498018();
        OUTLINED_FUNCTION_58_8();
        sub_19352F504(v1, v10);
        ResponseGeneration.Event.Generation.Started.init()();
        v11 = OUTLINED_FUNCTION_242_0(v23);
        type metadata accessor for ResponseGeneration.Event.Generation.StateInfo(v11);
        OUTLINED_FUNCTION_141_4();
        swift_storeEnumTagMultiPayload();
        break;
    }
  }

  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_27();
}

void sub_193521454()
{
  OUTLINED_FUNCTION_26();
  v0 = OUTLINED_FUNCTION_51_6();
  type metadata accessor for ResponseGeneration.Event.Generation.Ended(v0);
  OUTLINED_FUNCTION_37_1();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_29_13();
  type metadata accessor for ResponseGeneration.Event.Generation.StateInfo(v2);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_10_23();
  OUTLINED_FUNCTION_19_3();
  sub_19352EF70();
  OUTLINED_FUNCTION_208();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      OUTLINED_FUNCTION_100_8();
      OUTLINED_FUNCTION_121_0();
      sub_19352F4AC();
      OUTLINED_FUNCTION_63_7();
      sub_193447600();
      v5 = OUTLINED_FUNCTION_179_3();
      sub_19352F504(v5, v6);
    }

    else
    {
      OUTLINED_FUNCTION_136_3();
      OUTLINED_FUNCTION_78_1();
      sub_193447600();
      OUTLINED_FUNCTION_25_2();
      OUTLINED_FUNCTION_245_0();
      sub_193456418(v7, v8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_78_1();
    sub_193447600();
  }

  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_27();
}

double sub_1935217D0()
{
  OUTLINED_FUNCTION_241();
  v0 = ResponseGeneration.Event.RequestValidation.Started.init()();
  *&result = OUTLINED_FUNCTION_184_3(v0.assetVersion.value._countAndFlagsBits, v0.assetVersion.value._object, v1, v2, v3, v4, v5, v6, v7, v8).n128_u64[0];
  return result;
}

void sub_193521800()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEA9560);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v1 = OUTLINED_FUNCTION_47_2();
  OUTLINED_FUNCTION_4_2(v1, xmmword_19394FBB0);
  OUTLINED_FUNCTION_44_8("started");
  sub_19393C400();
  OUTLINED_FUNCTION_31_1();
  v3 = *(v2 + 104);
  v4 = OUTLINED_FUNCTION_65();
  v3(v4);
  v5 = OUTLINED_FUNCTION_29_1();
  v6 = OUTLINED_FUNCTION_24_0(v5, "ended");
  v3(v6);
  v7 = OUTLINED_FUNCTION_13_12();
  v8 = OUTLINED_FUNCTION_20_13(v7, "failed");
  v3(v8);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_193521AD8()
{
  OUTLINED_FUNCTION_89_0();
  if (*(v0 + 33))
  {
    OUTLINED_FUNCTION_228();
    if (v7)
    {
      OUTLINED_FUNCTION_134_5();
      OUTLINED_FUNCTION_165_4(v8, v9, v10, &type metadata for ResponseGeneration.Event.RequestValidation.Ended, v11, &off_1F07C6098, v12, v13, v20, v21);
    }

    else
    {
      OUTLINED_FUNCTION_134_5();
      OUTLINED_FUNCTION_175_1(v14, v15, v16, &type metadata for ResponseGeneration.Event.RequestValidation.Failed, v17, &off_1F07C60C8, v18, v19, v20, v21);
    }
  }

  else
  {
    OUTLINED_FUNCTION_153(v1, v2, v3, &type metadata for ResponseGeneration.Event.RequestValidation.Started, v4, &off_1F07C6068, v5, v6, v20, *v0);
  }

  sub_193447600();
}

void sub_193521BE4()
{
  OUTLINED_FUNCTION_21_0();
  while (1)
  {
    v1 = OUTLINED_FUNCTION_165_0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (v1 == 1)
    {
      OUTLINED_FUNCTION_62();
      sub_193498018();
    }
  }
}

void sub_193521C48()
{
  OUTLINED_FUNCTION_89_0();
  if (v0[4] >> 8 != 0xFFFFFFFF || v0[6] >= 0x200)
  {
    OUTLINED_FUNCTION_134(v1, v2, v3, &type metadata for ResponseGeneration.Event.Override.StateInfo, v4, &off_1F07C6210, v5, v6, *v0);
    sub_193447600();
  }
}

void sub_193521D78()
{
  OUTLINED_FUNCTION_115();
  v1 = sub_19393C420();
  __swift_allocate_value_buffer(v1, qword_1EAEA95A8);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v2 = OUTLINED_FUNCTION_47_2();
  OUTLINED_FUNCTION_4_2(v2, xmmword_19394FBB0);
  OUTLINED_FUNCTION_69_0("handledError");
  sub_19393C400();
  OUTLINED_FUNCTION_31_1();
  v4 = *(v3 + 104);
  v5 = OUTLINED_FUNCTION_65();
  (v4)(v5);
  v6 = OUTLINED_FUNCTION_29_1();
  v7 = OUTLINED_FUNCTION_48(v6, "type");
  (v4)(v7);
  v8 = OUTLINED_FUNCTION_13_12();
  *v8 = "id";
  *(v8 + 1) = v0;
  v8[16] = v0;
  OUTLINED_FUNCTION_10_0();
  v4();
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_193521ECC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_356();
  OUTLINED_FUNCTION_21_0();
  while (1)
  {
    v4 = OUTLINED_FUNCTION_165_0();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    switch(v4)
    {
      case 3:
        OUTLINED_FUNCTION_98();
        sub_19393C200();
        break;
      case 2:
        OUTLINED_FUNCTION_62();
        sub_1934982A8();
        break;
      case 1:
        OUTLINED_FUNCTION_89_2();
        sub_193498018();
        break;
    }
  }

  OUTLINED_FUNCTION_355();
}

void sub_193521F78()
{
  OUTLINED_FUNCTION_75_3();
  v2 = *(v0 + 49);
  v3 = *(v0 + 64);
  if (*(v0 + 8) != 1)
  {
    OUTLINED_FUNCTION_108_1();
    sub_193447600();
  }

  if (!v1)
  {
    if ((v2 & 1) == 0)
    {
      OUTLINED_FUNCTION_129_4();
      sub_193447324(v4, v5, v6, v7, v8, v9);
    }

    if (v3)
    {
      OUTLINED_FUNCTION_32_4();
      OUTLINED_FUNCTION_167_3();
      sub_19393C3C0();
    }
  }
}

void sub_1935220B4()
{
  OUTLINED_FUNCTION_115();
  v1 = sub_19393C420();
  __swift_allocate_value_buffer(v1, qword_1EAEA95C0);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v3 = *(v2 + 72);
  OUTLINED_FUNCTION_49_0();
  v4 = OUTLINED_FUNCTION_122_0();
  OUTLINED_FUNCTION_43_2(v4, xmmword_19394FBC0);
  OUTLINED_FUNCTION_102("OverrideTypeUnknown");
  sub_19393C400();
  OUTLINED_FUNCTION_11_0();
  v6 = *(v5 + 104);
  v7 = OUTLINED_FUNCTION_50_1();
  v6(v7);
  v8 = OUTLINED_FUNCTION_34_12();
  v9 = OUTLINED_FUNCTION_25(v8, "OverrideTypeFallbackDialog");
  v6(v9);
  v10 = OUTLINED_FUNCTION_69();
  v11 = OUTLINED_FUNCTION_25(v10, "OverrideTypeStringDialog");
  v6(v11);
  v12 = OUTLINED_FUNCTION_9_4((v0 + 3 * v3));
  v13 = OUTLINED_FUNCTION_25(v12, "OverrideTypeCatDialog");
  v6(v13);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

__n128 sub_1935222A4()
{
  OUTLINED_FUNCTION_241();
  ResponseGeneration.Event.Override.Started.init()();
  result = v2;
  *v0 = v2;
  v0[2].n128_u64[0] = 0;
  v0[3].n128_u64[0] = 0;
  return result;
}

void sub_1935222E0()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEA95F0);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v1 = OUTLINED_FUNCTION_47_2();
  OUTLINED_FUNCTION_4_2(v1, xmmword_19394FBB0);
  OUTLINED_FUNCTION_44_8("started");
  sub_19393C400();
  OUTLINED_FUNCTION_31_1();
  v3 = *(v2 + 104);
  v4 = OUTLINED_FUNCTION_65();
  v3(v4);
  v5 = OUTLINED_FUNCTION_29_1();
  v6 = OUTLINED_FUNCTION_24_0(v5, "ended");
  v3(v6);
  v7 = OUTLINED_FUNCTION_13_12();
  v8 = OUTLINED_FUNCTION_20_13(v7, "failed");
  v3(v8);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

uint64_t sub_193522424()
{
  OUTLINED_FUNCTION_53_4();
LABEL_2:
  v28 = v3;
  v4 = v2;
  v19 = v2 & 0x1FF;
  v20 = v3;
  while (1)
  {
    result = OUTLINED_FUNCTION_124();
    if (v0 || (v6 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 2:
        memset(__dst, 0, 64);
        *&__dst[4] = 1;
        OUTLINED_FUNCTION_28_7();
        sub_193498018();
        memcpy(v26, v1, 0x48uLL);
        sub_19351DA00(v26);
        v9 = *&__dst[4];
        if (*&__dst[4] == 1)
        {
          ResponseGeneration.Event.Override.Ended.init()();
          v9 = v25;
        }

        else
        {
          v21 = __dst[0];
          v22 = __dst[1];
          v23 = __dst[2];
          v24 = __dst[3];
        }

        v10 = v23;
        v11 = *(&v23 + 1);
        v12 = *(&v24 + 1);
        v13 = v24 & 0x1FF | 0x4000000000000000;
        v14 = v22;
        *v1 = v21;
        v1[1] = v14;
        *(v1 + 4) = v10;
        *(v1 + 5) = v11;
        *(v1 + 6) = v13;
        *(v1 + 7) = v12;
        *(v1 + 8) = v9;
        break;
      case 3:
        v26[0] = xmmword_19395BB80;
        memset(&v26[1], 0, 17);
        sub_193498018();
        memcpy(__dst, v1, 0x48uLL);
        sub_19351DA00(__dst);
        v15 = *(&v26[0] + 1);
        if (*(&v26[0] + 1) == 2)
        {
          ResponseGeneration.Event.Override.Failed.init()();
          v15 = *(&v21 + 1);
          v16 = v21;
          v17 = v22;
          v18 = v23;
        }

        else
        {
          v18 = LOBYTE(v26[2]);
          v17 = v26[1];
          v16 = *&v26[0];
          v21 = v26[0];
          *&v22 = *&v26[1];
        }

        v2 = v4;
        v3 = v28;
        *v1 = v16;
        *(v1 + 1) = v15;
        v1[1] = v17;
        *(v1 + 4) = v18;
        *(v1 + 6) = 0x8000000000000000;
        goto LABEL_2;
      case 1:
        v26[0] = xmmword_1939526A0;
        sub_193498018();
        memcpy(__dst, v1, 0x48uLL);
        sub_19351DA00(__dst);
        v7 = *(&v26[0] + 1);
        if (*(&v26[0] + 1) == 1)
        {
          v8 = &v21;
          ResponseGeneration.Event.Override.Started.init()();
          v7 = *(&v21 + 1);
        }

        else
        {
          v8 = v26;
        }

        *v1 = *v8;
        *(v1 + 1) = v7;
        v4 = v19;
        *(v1 + 4) = v20;
        *(v1 + 6) = v19;
        v28 = v20;
        break;
    }
  }
}

void sub_1935226EC()
{
  OUTLINED_FUNCTION_89_0();
  v7 = v0[6] >> 62;
  if (v7)
  {
    if (v7 == 1)
    {
      OUTLINED_FUNCTION_165_4(v1, v2, v3, &type metadata for ResponseGeneration.Event.Override.Ended, v4, &off_1F07C6188, v5, v6, v8, *v0);
    }

    else
    {
      OUTLINED_FUNCTION_175_1(v1, v2, v3, &type metadata for ResponseGeneration.Event.Override.Failed, v4, &off_1F07C61E0, v5, v6, v8, *v0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_153(v1, v2, v3, &type metadata for ResponseGeneration.Event.Override.Started, v4, &off_1F07C6158, v5, v6, v8, *v0);
  }

  sub_193447600();
}

uint64_t sub_1935228C8()
{
  OUTLINED_FUNCTION_21_0();
  while (1)
  {
    result = OUTLINED_FUNCTION_165_0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      OUTLINED_FUNCTION_125();
      sub_19393C200();
    }
  }

  return result;
}

double sub_1935229F0()
{
  OUTLINED_FUNCTION_241();
  v0 = ResponseGeneration.Event.ResponseCatalog.Started.init()();
  *&result = OUTLINED_FUNCTION_184_3(v0.assetVersion.value._countAndFlagsBits, v0.assetVersion.value._object, v1, v2, v3, v4, v5, v6, v7, v8).n128_u64[0];
  return result;
}

void sub_193522A20()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEA9668);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v1 = OUTLINED_FUNCTION_47_2();
  OUTLINED_FUNCTION_4_2(v1, xmmword_19394FBB0);
  OUTLINED_FUNCTION_44_8("started");
  sub_19393C400();
  OUTLINED_FUNCTION_31_1();
  v3 = *(v2 + 104);
  v4 = OUTLINED_FUNCTION_65();
  v3(v4);
  v5 = OUTLINED_FUNCTION_29_1();
  v6 = OUTLINED_FUNCTION_24_0(v5, "ended");
  v3(v6);
  v7 = OUTLINED_FUNCTION_13_12();
  v8 = OUTLINED_FUNCTION_20_13(v7, "failed");
  v3(v8);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_193522CF8()
{
  OUTLINED_FUNCTION_89_0();
  if (*(v0 + 33))
  {
    OUTLINED_FUNCTION_228();
    if (v7)
    {
      OUTLINED_FUNCTION_134_5();
      OUTLINED_FUNCTION_165_4(v8, v9, v10, &type metadata for ResponseGeneration.Event.ResponseCatalog.Ended, v11, &off_1F07C62A0, v12, v13, v20, v21);
    }

    else
    {
      OUTLINED_FUNCTION_134_5();
      OUTLINED_FUNCTION_175_1(v14, v15, v16, &type metadata for ResponseGeneration.Event.ResponseCatalog.Failed, v17, &off_1F07C62D0, v18, v19, v20, v21);
    }
  }

  else
  {
    OUTLINED_FUNCTION_153(v1, v2, v3, &type metadata for ResponseGeneration.Event.ResponseCatalog.Started, v4, &off_1F07C6270, v5, v6, v20, *v0);
  }

  sub_193447600();
}

void sub_193522E88()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEA9698);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v1 = OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_4_2(v1, xmmword_19394FBE0);
  OUTLINED_FUNCTION_69_0("modelVersion");
  sub_19393C400();
  OUTLINED_FUNCTION_31_1();
  v3 = *(v2 + 104);
  v4 = OUTLINED_FUNCTION_65();
  v3(v4);
  v5 = OUTLINED_FUNCTION_29_1();
  v6 = OUTLINED_FUNCTION_48(v5, "promptVersion");
  v3(v6);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_193522FB8()
{
  OUTLINED_FUNCTION_110();
  v2 = *(v0 + 24);
  if (*(v0 + 8))
  {
    OUTLINED_FUNCTION_167_3();
    sub_19393C3C0();
  }

  if (!v1)
  {
    if (v2)
    {
      OUTLINED_FUNCTION_32_4();
      OUTLINED_FUNCTION_167_3();
      sub_19393C3C0();
    }
  }
}

__n128 sub_193523104()
{
  OUTLINED_FUNCTION_241();
  ResponseGeneration.Event.ModelInference.Started.init()();
  result = v2;
  *v0 = v2;
  *(v0 + 16) = v3;
  *(v0 + 32) = 0;
  return result;
}

void sub_19352313C()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEA96E0);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v1 = OUTLINED_FUNCTION_47_2();
  OUTLINED_FUNCTION_4_2(v1, xmmword_19394FBB0);
  OUTLINED_FUNCTION_44_8("started");
  sub_19393C400();
  OUTLINED_FUNCTION_31_1();
  v3 = *(v2 + 104);
  v4 = OUTLINED_FUNCTION_65();
  v3(v4);
  v5 = OUTLINED_FUNCTION_29_1();
  v6 = OUTLINED_FUNCTION_24_0(v5, "ended");
  v3(v6);
  v7 = OUTLINED_FUNCTION_13_12();
  v8 = OUTLINED_FUNCTION_20_13(v7, "failed");
  v3(v8);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_19352342C()
{
  OUTLINED_FUNCTION_89_0();
  if (*(v0 + 33))
  {
    if (*(v0 + 33) == 1)
    {
      OUTLINED_FUNCTION_165_4(v1, v2, v3, &type metadata for ResponseGeneration.Event.ModelInference.Ended, v4, &off_1F07C6390, v5, v6, v7, *v0);
    }

    else
    {
      OUTLINED_FUNCTION_175_1(v1, v2, v3, &type metadata for ResponseGeneration.Event.ModelInference.Failed, v4, &off_1F07C63C0, v5, v6, v7, *v0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_153(v1, v2, v3, &type metadata for ResponseGeneration.Event.ModelInference.Started, v4, &off_1F07C6360, v5, v6, v7, *v0);
  }

  sub_193447600();
}

void sub_193523554()
{
  OUTLINED_FUNCTION_370();
  while (1)
  {
    OUTLINED_FUNCTION_234();
    v1 = sub_19393C0E0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (v1 == 1)
    {
      sub_193498018();
    }
  }
}

void sub_1935235C0()
{
  if (HIBYTE(*(v0 + 32)) <= 0xFEu)
  {
    OUTLINED_FUNCTION_89_0();
    OUTLINED_FUNCTION_134(v1, v2, v3, v4, v5, v6, v7, v8, *v0);
    sub_193447600();
  }
}

double sub_193523778()
{
  OUTLINED_FUNCTION_241();
  v0 = ResponseGeneration.Event.HallucinationDetection.Started.init()();
  *&result = OUTLINED_FUNCTION_184_3(v0.assetVersion.value._countAndFlagsBits, v0.assetVersion.value._object, v1, v2, v3, v4, v5, v6, v7, v8).n128_u64[0];
  return result;
}

void sub_1935237A8()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEA9758);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v1 = OUTLINED_FUNCTION_47_2();
  OUTLINED_FUNCTION_4_2(v1, xmmword_19394FBB0);
  OUTLINED_FUNCTION_44_8("started");
  sub_19393C400();
  OUTLINED_FUNCTION_31_1();
  v3 = *(v2 + 104);
  v4 = OUTLINED_FUNCTION_65();
  v3(v4);
  v5 = OUTLINED_FUNCTION_29_1();
  v6 = OUTLINED_FUNCTION_24_0(v5, "ended");
  v3(v6);
  v7 = OUTLINED_FUNCTION_13_12();
  v8 = OUTLINED_FUNCTION_20_13(v7, "failed");
  v3(v8);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

uint64_t sub_193523A80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6 == 2 || a6 == 1)
  {
    return sub_193456418(a1, a2);
  }

  if (!a6)
  {
    return OUTLINED_FUNCTION_161_0(a1, a2);
  }

  return a1;
}

void sub_193523AA4()
{
  OUTLINED_FUNCTION_89_0();
  if (*(v0 + 33))
  {
    OUTLINED_FUNCTION_228();
    if (v7)
    {
      OUTLINED_FUNCTION_134_5();
      OUTLINED_FUNCTION_165_4(v8, v9, v10, &type metadata for ResponseGeneration.Event.HallucinationDetection.Ended, v11, &off_1F07C6480, v12, v13, v20, v21);
    }

    else
    {
      OUTLINED_FUNCTION_134_5();
      OUTLINED_FUNCTION_175_1(v14, v15, v16, &type metadata for ResponseGeneration.Event.HallucinationDetection.Failed, v17, &off_1F07C64B0, v18, v19, v20, v21);
    }
  }

  else
  {
    OUTLINED_FUNCTION_153(v1, v2, v3, &type metadata for ResponseGeneration.Event.HallucinationDetection.Started, v4, &off_1F07C6450, v5, v6, v20, *v0);
  }

  sub_193447600();
}

void sub_193523B9C()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEA9770);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v1 = OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_4_2(v1, xmmword_19394FBE0);
  OUTLINED_FUNCTION_69_0("stateInfo");
  sub_19393C400();
  OUTLINED_FUNCTION_31_1();
  v3 = *(v2 + 104);
  v4 = OUTLINED_FUNCTION_65();
  v3(v4);
  v5 = OUTLINED_FUNCTION_29_1();
  v6 = OUTLINED_FUNCTION_48(v5, "traceId");
  v3(v6);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_193523E28()
{
  OUTLINED_FUNCTION_366();
  LOBYTE(v0) = ResponseGeneration.Event.CacheManagerCall.Started.init()();
  OUTLINED_FUNCTION_365(v0, v1, v2, v3, v4, v5, v6, v7, v8, v9, SWORD2(v9), SBYTE6(v9), HIBYTE(v9));
}

void sub_193523E58()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEA97D0);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v1 = OUTLINED_FUNCTION_47_2();
  OUTLINED_FUNCTION_4_2(v1, xmmword_19394FBB0);
  OUTLINED_FUNCTION_44_8("started");
  sub_19393C400();
  OUTLINED_FUNCTION_31_1();
  v3 = *(v2 + 104);
  v4 = OUTLINED_FUNCTION_65();
  v3(v4);
  v5 = OUTLINED_FUNCTION_29_1();
  v6 = OUTLINED_FUNCTION_24_0(v5, "ended");
  v3(v6);
  v7 = OUTLINED_FUNCTION_13_12();
  v8 = OUTLINED_FUNCTION_20_13(v7, "failed");
  v3(v8);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_193524118()
{
  OUTLINED_FUNCTION_89_0();
  if (*(v0 + 33))
  {
    OUTLINED_FUNCTION_359();
    if (v7)
    {
      OUTLINED_FUNCTION_195_0();
      OUTLINED_FUNCTION_165_4(v8, v9, v10, &type metadata for ResponseGeneration.Event.CacheManagerCall.Ended, v11, &off_1F07C6570, v12, v13, v20, v21);
    }

    else
    {
      OUTLINED_FUNCTION_195_0();
      OUTLINED_FUNCTION_175_1(v14, v15, v16, &type metadata for ResponseGeneration.Event.CacheManagerCall.Failed, v17, &off_1F07C65A0, v18, v19, v20, v21);
    }
  }

  else
  {
    OUTLINED_FUNCTION_153(v1, v2, v3, &type metadata for ResponseGeneration.Event.CacheManagerCall.Started, v4, &off_1F07C6540, v5, v6, v20, *v0 & 1);
  }

  sub_193447600();
}

void sub_193524214()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEA97E8);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v1 = OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_4_2(v1, xmmword_19394FBE0);
  OUTLINED_FUNCTION_69_0("stateInfo");
  sub_19393C400();
  OUTLINED_FUNCTION_31_1();
  v3 = *(v2 + 104);
  v4 = OUTLINED_FUNCTION_65();
  v3(v4);
  v5 = OUTLINED_FUNCTION_29_1();
  v6 = OUTLINED_FUNCTION_48(v5, "traceId");
  v3(v6);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_193524344(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_356();
  OUTLINED_FUNCTION_210();
  while (1)
  {
    OUTLINED_FUNCTION_19_3();
    v7 = sub_19393C0E0();
    if (v4 || (v8 & 1) != 0)
    {
      break;
    }

    if (v7 == 2)
    {
      v9 = v5(0);
      sub_193497890(v6 + *(v9 + 20));
LABEL_8:
      v4 = 0;
    }

    else if (v7 == 1)
    {
      sub_193498018();
      goto LABEL_8;
    }
  }

  OUTLINED_FUNCTION_355();
}

void sub_1935243EC()
{
  OUTLINED_FUNCTION_87_7();
  if (HIBYTE(*(v1 + 32)) <= 0xFEu)
  {
    OUTLINED_FUNCTION_117_7();
    sub_193447600();
  }

  if (!v0)
  {
    OUTLINED_FUNCTION_11_1();
    sub_19345931C();
  }
}

uint64_t sub_193524500()
{
  OUTLINED_FUNCTION_21_0();
  while (1)
  {
    result = OUTLINED_FUNCTION_165_0();
    if (v1 || (v3 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      OUTLINED_FUNCTION_98();
      sub_19393C0F0();
      *v0 = 0;
    }
  }

  return result;
}

void sub_193524630()
{
  OUTLINED_FUNCTION_366();
  LOBYTE(v0) = ResponseGeneration.Event.GMSCall.Started.init()();
  OUTLINED_FUNCTION_365(v0, v1, v2, v3, v4, v5, v6, v7, v8, v9, SWORD2(v9), SBYTE6(v9), HIBYTE(v9));
}

void sub_193524660()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEA9848);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v1 = OUTLINED_FUNCTION_47_2();
  OUTLINED_FUNCTION_4_2(v1, xmmword_19394FBB0);
  OUTLINED_FUNCTION_44_8("started");
  sub_19393C400();
  OUTLINED_FUNCTION_31_1();
  v3 = *(v2 + 104);
  v4 = OUTLINED_FUNCTION_65();
  v3(v4);
  v5 = OUTLINED_FUNCTION_29_1();
  v6 = OUTLINED_FUNCTION_24_0(v5, "ended");
  v3(v6);
  v7 = OUTLINED_FUNCTION_13_12();
  v8 = OUTLINED_FUNCTION_20_13(v7, "failed");
  v3(v8);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_193524920()
{
  OUTLINED_FUNCTION_89_0();
  if (*(v0 + 33))
  {
    OUTLINED_FUNCTION_359();
    if (v7)
    {
      OUTLINED_FUNCTION_195_0();
      OUTLINED_FUNCTION_165_4(v8, v9, v10, &type metadata for ResponseGeneration.Event.GMSCall.Ended, v11, &off_1F07C6660, v12, v13, v20, v21);
    }

    else
    {
      OUTLINED_FUNCTION_195_0();
      OUTLINED_FUNCTION_175_1(v14, v15, v16, &type metadata for ResponseGeneration.Event.GMSCall.Failed, v17, &off_1F07C6690, v18, v19, v20, v21);
    }
  }

  else
  {
    OUTLINED_FUNCTION_153(v1, v2, v3, &type metadata for ResponseGeneration.Event.GMSCall.Started, v4, &off_1F07C6630, v5, v6, v20, *v0 & 1);
  }

  sub_193447600();
}

void sub_193524A1C()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, qword_1EAEA9860);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v4 = *(v3 + 72);
  OUTLINED_FUNCTION_49_0();
  v5 = OUTLINED_FUNCTION_156();
  OUTLINED_FUNCTION_27_2(v5, xmmword_1939526B0);
  *v1 = 1;
  *v0 = "generation";
  *(v0 + 8) = 10;
  *(v0 + 16) = 2;
  sub_19393C400();
  OUTLINED_FUNCTION_11_0();
  v7 = *(v6 + 104);
  v8 = OUTLINED_FUNCTION_50_1();
  (v7)(v8);
  v9 = OUTLINED_FUNCTION_61();
  *v10 = 2;
  v11 = OUTLINED_FUNCTION_5_4(v9, "requestValidation");
  (v7)(v11);
  v12 = OUTLINED_FUNCTION_9_4((v1 + 2 * v4));
  v13 = OUTLINED_FUNCTION_5_4(v12, "override");
  (v7)(v13);
  v14 = OUTLINED_FUNCTION_13((v1 + 3 * v4));
  v15 = OUTLINED_FUNCTION_5_4(v14, "responseCatalog");
  (v7)(v15);
  v16 = OUTLINED_FUNCTION_19_2((v1 + 4 * v4));
  v17 = OUTLINED_FUNCTION_5_4(v16, "modelInference");
  (v7)(v17);
  v18 = OUTLINED_FUNCTION_44(5 * v4);
  *v19 = 6;
  v20 = OUTLINED_FUNCTION_5_4(v18, "hallucinationDetection");
  (v7)(v20);
  v21 = OUTLINED_FUNCTION_3_1(v1 + 6 * v4);
  *v22 = 7;
  v23 = OUTLINED_FUNCTION_5_4(v21, "cacheManagerCall");
  (v7)(v23);
  v24 = OUTLINED_FUNCTION_44(7 * v4);
  *v25 = 8;
  *v24 = "gmsCall";
  *(v24 + 8) = 7;
  *(v24 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v7();
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_193524C6C()
{
  OUTLINED_FUNCTION_26();
  v3 = v0;
  v5 = v4;
  v7 = v6;
  v85 = type metadata accessor for ResponseGeneration.Event.GMSCall(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_23_16(v10 - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3C990, &qword_19395BBA0);
  v12 = OUTLINED_FUNCTION_47(v11);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_6();
  v80[6] = v13 - v14;
  OUTLINED_FUNCTION_47_3();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_372();
  OUTLINED_FUNCTION_23_16(v16);
  v83 = type metadata accessor for ResponseGeneration.Event.CacheManagerCall(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_23_16(v19 - v18);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3C998, &qword_19395BBA8);
  v21 = OUTLINED_FUNCTION_47(v20);
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_6();
  v80[2] = v22 - v23;
  OUTLINED_FUNCTION_47_3();
  MEMORY[0x1EEE9AC00](v24);
  v26 = v80 - v25;
  v81 = type metadata accessor for ResponseGeneration.Event.Generation(0);
  MEMORY[0x1EEE9AC00](v81);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_23_16(v28 - v27);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3C9A0, &qword_19395BBB0);
  v30 = OUTLINED_FUNCTION_47(v29);
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_6();
  v33 = v31 - v32;
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_137_2();
  v82 = v26;
  v88 = v33;
  v89 = v2;
  v80[5] = v5;
  v87 = v7;
  v86 = v0;
  while (1)
  {
    OUTLINED_FUNCTION_25_2();
    v35 = sub_19393C0E0();
    if (v1 || (v36 & 1) != 0)
    {
      break;
    }

    switch(v35)
    {
      case 1:
        OUTLINED_FUNCTION_45();
        v37 = v81;
        __swift_storeEnumTagSinglePayload(v38, v39, v40, v81);
        sub_193498018();
        OUTLINED_FUNCTION_4_26();
        sub_19352F504(v3, v41);
        OUTLINED_FUNCTION_19_3();
        sub_19344F184();
        v42 = OUTLINED_FUNCTION_173();
        OUTLINED_FUNCTION_6_3(v42, v43, v37);
        if (v44)
        {
          ResponseGeneration.Event.Generation.init()();
          v45 = v88;
          sub_19344E6DC(v2, &qword_1EAE3C9A0, &qword_19395BBB0);
          v46 = OUTLINED_FUNCTION_173();
          OUTLINED_FUNCTION_6_3(v46, v47, v37);
          if (!v44)
          {
            sub_19344E6DC(v45, &qword_1EAE3C9A0, &qword_19395BBB0);
          }
        }

        else
        {
          sub_19344E6DC(v2, &qword_1EAE3C9A0, &qword_19395BBB0);
          OUTLINED_FUNCTION_98_7();
          sub_19352F4AC();
        }

        OUTLINED_FUNCTION_98_7();
        sub_19352F4AC();
        type metadata accessor for ResponseGeneration.Event.EventType(0);
        OUTLINED_FUNCTION_141_4();
        swift_storeEnumTagMultiPayload();
        goto LABEL_38;
      case 2:
        OUTLINED_FUNCTION_115_6();
        sub_193498018();
        OUTLINED_FUNCTION_4_26();
        sub_19352F504(v3, v66);
        OUTLINED_FUNCTION_189_0();
        if (!v44)
        {
          goto LABEL_26;
        }

        ResponseGeneration.Event.RequestValidation.init()(v91);
        v50 = OUTLINED_FUNCTION_367();
        goto LABEL_36;
      case 3:
        v92 = 0u;
        v93 = 0u;
        v94 = 0xFFFFFFFE00;
        v95 = 0u;
        v96 = 0u;
        sub_193498018();
        OUTLINED_FUNCTION_4_26();
        sub_19352F504(v3, v52);
        if (v94 >> 8 == 4294967294 && *(&v95 + 1) < 0x200uLL)
        {
          ResponseGeneration.Event.Override.init()(v90);
        }

        else
        {
          v90[0] = v92;
          v90[1] = v93;
          *(&v90[3] + 8) = v96;
          v90[2] = __PAIR128__(v95, v94);
          *&v90[3] = *(&v95 + 1);
        }

        memcpy(v3, v90, 0x48uLL);
        type metadata accessor for ResponseGeneration.Event.EventType(0);
        OUTLINED_FUNCTION_141_4();
        swift_storeEnumTagMultiPayload();
        continue;
      case 4:
        OUTLINED_FUNCTION_115_6();
        sub_193498018();
        OUTLINED_FUNCTION_4_26();
        sub_19352F504(v3, v53);
        OUTLINED_FUNCTION_189_0();
        if (!v44)
        {
          goto LABEL_26;
        }

        ResponseGeneration.Event.ResponseCatalog.init()(v91);
        v50 = OUTLINED_FUNCTION_367();
        goto LABEL_36;
      case 5:
        OUTLINED_FUNCTION_115_6();
        sub_193498018();
        OUTLINED_FUNCTION_4_26();
        sub_19352F504(v3, v48);
        OUTLINED_FUNCTION_189_0();
        if (!v44)
        {
          goto LABEL_26;
        }

        ResponseGeneration.Event.ModelInference.init()(v91);
        v50 = OUTLINED_FUNCTION_367();
        goto LABEL_36;
      case 6:
        OUTLINED_FUNCTION_115_6();
        sub_193498018();
        OUTLINED_FUNCTION_4_26();
        sub_19352F504(v3, v67);
        OUTLINED_FUNCTION_189_0();
        if (v44)
        {
          ResponseGeneration.Event.HallucinationDetection.init()(v91);
          v50 = OUTLINED_FUNCTION_367();
        }

        else
        {
LABEL_26:
          v50 = OUTLINED_FUNCTION_364_0();
        }

LABEL_36:
        OUTLINED_FUNCTION_222_0(v49, v50, v51);
        OUTLINED_FUNCTION_141_4();
        swift_storeEnumTagMultiPayload();
        break;
      case 7:
        v68 = v82;
        OUTLINED_FUNCTION_45();
        v69 = v83;
        __swift_storeEnumTagSinglePayload(v70, v71, v72, v83);
        OUTLINED_FUNCTION_32_4();
        sub_193498018();
        OUTLINED_FUNCTION_4_26();
        sub_19352F504(v3, v73);
        sub_19344F184();
        v74 = OUTLINED_FUNCTION_37_7();
        OUTLINED_FUNCTION_6_3(v74, v75, v69);
        if (v44)
        {
          ResponseGeneration.Event.CacheManagerCall.init()(v80[3]);
          sub_19344E6DC(v68, &qword_1EAE3C998, &qword_19395BBA8);
          v76 = OUTLINED_FUNCTION_37_7();
          OUTLINED_FUNCTION_6_3(v76, v77, v69);
          if (!v44)
          {
            v78 = OUTLINED_FUNCTION_180_3();
            sub_19344E6DC(v78, v79, &qword_19395BBA8);
          }
        }

        else
        {
          sub_19344E6DC(v68, &qword_1EAE3C998, &qword_19395BBA8);
          OUTLINED_FUNCTION_97_5();
          sub_19352F4AC();
        }

        OUTLINED_FUNCTION_97_5();
        sub_19352F4AC();
        type metadata accessor for ResponseGeneration.Event.EventType(0);
        OUTLINED_FUNCTION_141_4();
        swift_storeEnumTagMultiPayload();
        OUTLINED_FUNCTION_368();
LABEL_38:
        v2 = v89;
        break;
      case 8:
        v54 = v84;
        OUTLINED_FUNCTION_45();
        v55 = v85;
        __swift_storeEnumTagSinglePayload(v56, v57, v58, v85);
        sub_193498018();
        OUTLINED_FUNCTION_4_26();
        sub_19352F504(v86, v59);
        sub_19344F184();
        v60 = OUTLINED_FUNCTION_173();
        OUTLINED_FUNCTION_6_3(v60, v61, v55);
        if (v44)
        {
          ResponseGeneration.Event.GMSCall.init()(v80[4]);
          sub_19344E6DC(v54, &qword_1EAE3C990, &qword_19395BBA0);
          v62 = OUTLINED_FUNCTION_173();
          OUTLINED_FUNCTION_6_3(v62, v63, v55);
          v2 = v89;
          if (!v44)
          {
            v64 = OUTLINED_FUNCTION_208();
            sub_19344E6DC(v64, v65, &qword_19395BBA0);
          }
        }

        else
        {
          sub_19344E6DC(v54, &qword_1EAE3C990, &qword_19395BBA0);
          OUTLINED_FUNCTION_99_8();
          sub_19352F4AC();
          v2 = v89;
        }

        OUTLINED_FUNCTION_99_8();
        v3 = v86;
        sub_19352F4AC();
        type metadata accessor for ResponseGeneration.Event.EventType(0);
        OUTLINED_FUNCTION_141_4();
        swift_storeEnumTagMultiPayload();
        OUTLINED_FUNCTION_368();
        break;
      default:
        continue;
    }
  }

  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_27();
}

uint64_t sub_193525618(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if ((a5 & 0xFF00) != 0xFE00)
  {
    return sub_193510804(result, a2, a3, a4, a5);
  }

  return result;
}

void sub_193525630()
{
  OUTLINED_FUNCTION_26();
  type metadata accessor for ResponseGeneration.Event.GMSCall(0);
  OUTLINED_FUNCTION_37_1();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_29_13();
  type metadata accessor for ResponseGeneration.Event.CacheManagerCall(v2);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_10_23();
  type metadata accessor for ResponseGeneration.Event.Generation(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5_1();
  v7 = v6 - v5;
  type metadata accessor for ResponseGeneration.Event.EventType(0);
  OUTLINED_FUNCTION_11_0();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5_1();
  v11 = (v10 - v9);
  sub_19352EF70();
  OUTLINED_FUNCTION_125();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
    case 3u:
      OUTLINED_FUNCTION_133_5();
      OUTLINED_FUNCTION_220_0();
      v19 = OUTLINED_FUNCTION_221();
      goto LABEL_8;
    case 2u:
      memcpy(v29, v11, 0x48uLL);
      memcpy(v28, v11, sizeof(v28));
      OUTLINED_FUNCTION_220_0();
      sub_193510818(v29);
      goto LABEL_11;
    case 4u:
      OUTLINED_FUNCTION_133_5();
      OUTLINED_FUNCTION_220_0();
      v14 = OUTLINED_FUNCTION_221();
      sub_193510804(v14, v15, v16, v17, v18);
      goto LABEL_11;
    case 5u:
      v24 = v11[1];
      v25 = v11[2];
      v26 = v11[3];
      v27 = *(v11 + 16);
      v29[0] = *v11;
      v29[1] = v24;
      v29[2] = v25;
      v29[3] = v26;
      LOWORD(v29[4]) = v27;
      OUTLINED_FUNCTION_220_0();
      OUTLINED_FUNCTION_146();
      v22 = v26;
      v23 = v27;
LABEL_8:
      sub_19345DB58(v19, v20, v21, v22, v23);
      goto LABEL_11;
    case 6u:
      OUTLINED_FUNCTION_97_5();
      sub_19352F4AC();
      sub_193447600();
      v12 = type metadata accessor for ResponseGeneration.Event.CacheManagerCall;
      v13 = v0;
      goto LABEL_10;
    case 7u:
      OUTLINED_FUNCTION_99_8();
      sub_19352F4AC();
      sub_193447600();
      v13 = OUTLINED_FUNCTION_179_3();
      goto LABEL_10;
    default:
      OUTLINED_FUNCTION_98_7();
      sub_19352F4AC();
      sub_193447600();
      v12 = type metadata accessor for ResponseGeneration.Event.Generation;
      v13 = v7;
LABEL_10:
      sub_19352F504(v13, v12);
LABEL_11:
      OUTLINED_FUNCTION_169();
      OUTLINED_FUNCTION_27();
      return;
  }
}

void sub_193525A3C()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, qword_1EAEA9878);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v4 = *(v3 + 72);
  OUTLINED_FUNCTION_49_0();
  v5 = OUTLINED_FUNCTION_122_0();
  OUTLINED_FUNCTION_9_8(v5, xmmword_19394FBC0);
  *v0 = 1;
  OUTLINED_FUNCTION_63("stateInfo");
  sub_19393C400();
  OUTLINED_FUNCTION_11_0();
  v7 = *(v6 + 104);
  v8 = OUTLINED_FUNCTION_50_1();
  (v7)(v8);
  v9 = OUTLINED_FUNCTION_9_4((v0 + v4));
  v10 = OUTLINED_FUNCTION_0_0(v9, "event");
  (v7)(v10);
  v11 = OUTLINED_FUNCTION_59_2((v0 + 2 * v4));
  v12 = OUTLINED_FUNCTION_371(v11);
  v13 = OUTLINED_FUNCTION_1_3(v12);
  (v7)(v13);
  v14 = OUTLINED_FUNCTION_13((v0 + 3 * v4));
  *v14 = "planEventId";
  *(v14 + 1) = 11;
  v14[16] = v1;
  OUTLINED_FUNCTION_2_0();
  v7();
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_193525BD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_356();
  OUTLINED_FUNCTION_53_4();
  while (1)
  {
    v4 = OUTLINED_FUNCTION_124();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    switch(v4)
    {
      case 1:
        type metadata accessor for PlanGeneration.StateInfo(0);
        OUTLINED_FUNCTION_86();
        goto LABEL_7;
      case 2:
        v7 = *(type metadata accessor for PlanGeneration(0) + 24);
        goto LABEL_10;
      case 3:
        v6 = type metadata accessor for PlanGeneration(0);
        OUTLINED_FUNCTION_160(*(v6 + 20));
LABEL_7:
        sub_193498018();
        continue;
      case 4:
        v7 = *(type metadata accessor for PlanGeneration(0) + 28);
LABEL_10:
        v8 = OUTLINED_FUNCTION_160(v7);
        sub_193497890(v8);
        break;
      default:
        continue;
    }
  }

  OUTLINED_FUNCTION_355();
}

void sub_193525CC8()
{
  OUTLINED_FUNCTION_47_6();
  sub_193525D88();
  if (!v0)
  {
    v2 = type metadata accessor for PlanGeneration(0);
    if ((~*(v1 + *(v2 + 20)) & 0xF000000000000007) != 0)
    {
      OUTLINED_FUNCTION_175_1(v2, v3, v4, &type metadata for PlanGeneration.Event, v5, &off_1F07C6838, v6, v7, v8, *(v1 + *(v2 + 20)));
      OUTLINED_FUNCTION_78_1();
      sub_193447600();
    }

    OUTLINED_FUNCTION_11_1();
    sub_19352632C();
    OUTLINED_FUNCTION_11_1();
    sub_193525E7C();
  }
}

void sub_193525D88()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_5_8(v2, v3);
  v4 = OUTLINED_FUNCTION_275();
  OUTLINED_FUNCTION_47(v4);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_8();
  type metadata accessor for PlanGeneration.StateInfo(v6);
  OUTLINED_FUNCTION_14_7();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_7_26();
  OUTLINED_FUNCTION_139_6();
  OUTLINED_FUNCTION_20_10();
  if (v8)
  {
    sub_19344E6DC(v0, &qword_1EAE3C080, &unk_19395C2E0);
  }

  else
  {
    OUTLINED_FUNCTION_140_3();
    OUTLINED_FUNCTION_40_7();
    OUTLINED_FUNCTION_53_8();
    sub_19352F504(v1, v9);
  }

  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_27();
}

void sub_193525E7C()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_77(v3, v4, v5, v6);
  v7 = OUTLINED_FUNCTION_275();
  OUTLINED_FUNCTION_47(v7);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_14_5();
  sub_19393BE60();
  OUTLINED_FUNCTION_76();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_10_23();
  type metadata accessor for PlanGeneration(0);
  OUTLINED_FUNCTION_212();
  OUTLINED_FUNCTION_6_3(v1, 1, v0);
  if (v10)
  {
    sub_19344E6DC(v1, &qword_1EAE3AA88, &qword_19394F9C0);
  }

  else
  {
    v11 = OUTLINED_FUNCTION_178_2();
    v12(v11);
    OUTLINED_FUNCTION_116_0(v2, 4);
    OUTLINED_FUNCTION_362();
    v13 = OUTLINED_FUNCTION_121_0();
    v14(v13);
  }

  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_27();
}

void sub_193526028()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, qword_1EAEA9890);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v4 = *(v3 + 72);
  v5 = OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_34_5(v5, xmmword_19394FBE0);
  *v1 = 0;
  *v0 = "PlanGenerationFailureReasonUnknown";
  *(v0 + 8) = 34;
  *(v0 + 16) = 2;
  sub_19393C400();
  OUTLINED_FUNCTION_31_1();
  v7 = *(v6 + 104);
  v8 = OUTLINED_FUNCTION_65();
  v7(v8);
  v9 = OUTLINED_FUNCTION_17_8((v1 + v4));
  v10 = OUTLINED_FUNCTION_48(v9, "RecoverableError");
  v7(v10);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1935261DC()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEA98C0);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v1 = OUTLINED_FUNCTION_47_2();
  OUTLINED_FUNCTION_4_2(v1, xmmword_19394FBB0);
  OUTLINED_FUNCTION_69_0("failureReason");
  sub_19393C400();
  OUTLINED_FUNCTION_31_1();
  v3 = *(v2 + 104);
  v4 = OUTLINED_FUNCTION_65();
  v3(v4);
  v5 = OUTLINED_FUNCTION_29_1();
  v6 = OUTLINED_FUNCTION_48(v5, "promptResponse");
  v3(v6);
  v7 = OUTLINED_FUNCTION_13_12();
  v8 = OUTLINED_FUNCTION_48(v7, "transcriptEventId");
  v3(v8);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_19352632C()
{
  OUTLINED_FUNCTION_26();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  OUTLINED_FUNCTION_47(v3);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_15_9();
  v5 = sub_19393BE60();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5_1();
  v9 = v8 - v7;
  v2(0);
  sub_19344F184();
  OUTLINED_FUNCTION_9_14(v0);
  if (v10)
  {
    sub_19344E6DC(v0, &qword_1EAE3AA88, &qword_19394F9C0);
  }

  else
  {
    v11 = OUTLINED_FUNCTION_19_3();
    v12(v11);
    sub_19344652C();
    (*(v6 + 8))(v9, v5);
  }

  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_27();
}

void sub_193526574()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEA98F0);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v1 = OUTLINED_FUNCTION_47_2();
  OUTLINED_FUNCTION_4_2(v1, xmmword_19394FBB0);
  OUTLINED_FUNCTION_44_8("started");
  sub_19393C400();
  OUTLINED_FUNCTION_31_1();
  v3 = *(v2 + 104);
  v4 = OUTLINED_FUNCTION_65();
  v3(v4);
  v5 = OUTLINED_FUNCTION_29_1();
  v6 = OUTLINED_FUNCTION_24_0(v5, "ended");
  v3(v6);
  v7 = OUTLINED_FUNCTION_13_12();
  v8 = OUTLINED_FUNCTION_20_13(v7, "failed");
  v3(v8);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1935266B8()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_26_11();
  type metadata accessor for PlanGeneration.Ended(0);
  OUTLINED_FUNCTION_37_1();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_10_23();
  v5 = OUTLINED_FUNCTION_125_3();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  v8 = OUTLINED_FUNCTION_47(v7);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_6();
  v25 = v9 - v10;
  OUTLINED_FUNCTION_47_3();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_372();
  v26 = v12;
  while (1)
  {
    v13 = OUTLINED_FUNCTION_124();
    if (v0 || (v14 & 1) != 0)
    {
      break;
    }

    switch(v13)
    {
      case 3:
        OUTLINED_FUNCTION_128_4();
        OUTLINED_FUNCTION_23_18();
        sub_193498018();
        OUTLINED_FUNCTION_53_8();
        sub_19352F504(v1, v22);
        if (v29 == 2)
        {
          PlanGeneration.Failed.init()();
          v24 = OUTLINED_FUNCTION_230();
        }

        else
        {
          v24 = OUTLINED_FUNCTION_190_0();
        }

        OUTLINED_FUNCTION_85_7(v23, v24);
        type metadata accessor for PlanGeneration.StateInfo(0);
        OUTLINED_FUNCTION_141_4();
        swift_storeEnumTagMultiPayload();
        break;
      case 2:
        OUTLINED_FUNCTION_45();
        __swift_storeEnumTagSinglePayload(v17, v18, v19, v2);
        OUTLINED_FUNCTION_146();
        OUTLINED_FUNCTION_23_18();
        sub_193498018();
        OUTLINED_FUNCTION_53_8();
        sub_19352F504(v1, v20);
        OUTLINED_FUNCTION_245_0();
        sub_19344F184();
        OUTLINED_FUNCTION_9_14(v25);
        if (v21)
        {
          PlanGeneration.Ended.init()(v3);
          OUTLINED_FUNCTION_354(v26);
          OUTLINED_FUNCTION_9_14(v25);
          if (!v21)
          {
            OUTLINED_FUNCTION_354(v25);
          }
        }

        else
        {
          OUTLINED_FUNCTION_354(v26);
          OUTLINED_FUNCTION_94_6();
          sub_19352F4AC();
        }

        OUTLINED_FUNCTION_94_6();
        OUTLINED_FUNCTION_351();
        type metadata accessor for PlanGeneration.StateInfo(0);
        OUTLINED_FUNCTION_141_4();
        swift_storeEnumTagMultiPayload();
        break;
      case 1:
        OUTLINED_FUNCTION_358();
        OUTLINED_FUNCTION_23_18();
        sub_193498018();
        OUTLINED_FUNCTION_223();
        OUTLINED_FUNCTION_53_8();
        sub_19352F504(v1, v15);
        v16 = v29;
        if (v29 == 1)
        {
          v3 = v27;
          PlanGeneration.Started.init()();
          v16 = v27[1];
        }

        else
        {
          v3 = &v28;
        }

        *v1 = *v3;
        v1[1] = v16;
        type metadata accessor for PlanGeneration.StateInfo(0);
        OUTLINED_FUNCTION_141_4();
        swift_storeEnumTagMultiPayload();
        OUTLINED_FUNCTION_218();
        break;
    }
  }

  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_27();
}

void sub_1935269D0()
{
  OUTLINED_FUNCTION_26();
  v0 = OUTLINED_FUNCTION_51_6();
  type metadata accessor for PlanGeneration.Ended(v0);
  OUTLINED_FUNCTION_37_1();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_29_13();
  type metadata accessor for PlanGeneration.StateInfo(v2);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_10_23();
  OUTLINED_FUNCTION_19_3();
  sub_19352EF70();
  OUTLINED_FUNCTION_208();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      OUTLINED_FUNCTION_94_6();
      OUTLINED_FUNCTION_121_0();
      sub_19352F4AC();
      OUTLINED_FUNCTION_63_7();
      sub_193447600();
      v5 = OUTLINED_FUNCTION_179_3();
      sub_19352F504(v5, v6);
    }

    else
    {
      OUTLINED_FUNCTION_136_3();
      OUTLINED_FUNCTION_78_1();
      sub_193447600();
      OUTLINED_FUNCTION_25_2();
      OUTLINED_FUNCTION_245_0();
      sub_193456418(v7, v8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_78_1();
    sub_193447600();
  }

  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_27();
}

uint64_t sub_193526BE4@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for PlanGeneration.Event.PlanCreation(0);
  v2 = swift_allocBox();
  result = PlanGeneration.Event.PlanCreation.init()();
  *a1 = v2;
  return result;
}

void sub_193526C20()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEA9908);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v1 = OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_4_2(v1, xmmword_19394FBE0);
  OUTLINED_FUNCTION_69_0("planCreation");
  sub_19393C400();
  OUTLINED_FUNCTION_31_1();
  v3 = *(v2 + 104);
  v4 = OUTLINED_FUNCTION_65();
  v3(v4);
  v5 = OUTLINED_FUNCTION_29_1();
  v6 = OUTLINED_FUNCTION_48(v5, "modelInference");
  v3(v6);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_193526D50()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_53_4();
  type metadata accessor for PlanGeneration.Event.PlanCreation(0);
  OUTLINED_FUNCTION_37_1();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5_1();
  v8 = v7 - v6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3C9B8, &qword_19395BBC8);
  v10 = OUTLINED_FUNCTION_47(v9);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_47_3();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_137_2();
  v41 = v1;
  v40 = v2;
  v39 = v3;
  while (1)
  {
    v12 = OUTLINED_FUNCTION_124();
    if (v0 || (v13 & 1) != 0)
    {
      break;
    }

    if (v12 == 2)
    {
      memset(v49, 0, sizeof(v49));
      v50 = -16896;
      sub_193498018();
      v25 = v3;
      v26 = v2;
      v27 = v8;
      v28 = v4;
      v29 = v1;

      v30 = v50;
      if ((v50 & 0xFE00) == 0xBE00)
      {
        PlanGeneration.Event.ModelInference.init()(&v44);
        v31 = v44;
        v42 = v45;
        v43 = v46;
        v32 = v47;
        v30 = v48;
      }

      else
      {
        v32 = v49[5];
        v31 = v49[0];
        v44 = v49[0];
        v42 = *&v49[1];
        v43 = *&v49[3];
        *&v45 = v49[1];
      }

      v38 = swift_allocObject();
      *(v38 + 16) = v31;
      *(v38 + 24) = v42;
      *(v38 + 40) = v43;
      *(v38 + 56) = v32;
      *(v38 + 64) = v30;
      v1 = v29;
      *v29 = v38 | 0x8000000000000000;
      v4 = v28;
      v8 = v27;
      v2 = v26;
      v3 = v25;
    }

    else if (v12 == 1)
    {
      OUTLINED_FUNCTION_73_5();
      sub_193498018();

      sub_19344F184();
      v14 = OUTLINED_FUNCTION_37_7();
      OUTLINED_FUNCTION_6_3(v14, v15, v4);
      if (v16)
      {
        PlanGeneration.Event.PlanCreation.init()();
        OUTLINED_FUNCTION_209();
        sub_19344E6DC(v17, v18, v19);
        v20 = OUTLINED_FUNCTION_37_7();
        v33 = v4;
        OUTLINED_FUNCTION_6_3(v20, v21, v4);
        if (!v16)
        {
          OUTLINED_FUNCTION_209();
          sub_19344E6DC(v22, v23, v24);
        }
      }

      else
      {
        v33 = v4;
        OUTLINED_FUNCTION_209();
        sub_19344E6DC(v34, v35, v36);
        OUTLINED_FUNCTION_171_1();
        OUTLINED_FUNCTION_125_3();
        sub_19352F4AC();
      }

      v4 = v33;
      v37 = swift_allocBox();
      OUTLINED_FUNCTION_171_1();
      sub_19352F4AC();
      v1 = v41;
      *v41 = v37;
      v2 = v40;
      v3 = v39;
    }
  }

  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_27();
}

uint64_t sub_193527098(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned __int16 a7)
{
  if (a7 >> 9 != 95)
  {
    return sub_1935270AC(a1, a2, a3, a4, a5, a6, a7);
  }

  return a1;
}

uint64_t sub_1935270AC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned __int16 a7)
{
  if ((a7 >> 9) <= 0x7Eu)
  {
    return sub_193511EB4(result, a2, a3, a4, a5, a6, a7);
  }

  return result;
}

void sub_1935270C0()
{
  type metadata accessor for PlanGeneration.Event.PlanCreation(0);
  OUTLINED_FUNCTION_37_1();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_5_1();
  if ((*v0 & 0x8000000000000000) != 0)
  {
    sub_193447600();
  }

  else
  {
    swift_projectBox();
    sub_19352EF70();
    sub_193447600();
    v2 = OUTLINED_FUNCTION_179_3();
    sub_19352F504(v2, v3);
  }
}

void sub_193527298()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_5_8(v2, v3);
  v4 = OUTLINED_FUNCTION_275();
  OUTLINED_FUNCTION_47(v4);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_8();
  type metadata accessor for PlanGeneration.Event.PlanCreation.StateInfo(v6);
  OUTLINED_FUNCTION_14_7();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_7_26();
  OUTLINED_FUNCTION_139_6();
  OUTLINED_FUNCTION_20_10();
  if (v8)
  {
    sub_19344E6DC(v0, &qword_1EAE3C088, &qword_19395AF30);
  }

  else
  {
    OUTLINED_FUNCTION_140_3();
    OUTLINED_FUNCTION_40_7();
    OUTLINED_FUNCTION_57_4();
    sub_19352F504(v1, v9);
  }

  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_27();
}

uint64_t sub_19352740C()
{
  OUTLINED_FUNCTION_21_0();
  while (1)
  {
    result = OUTLINED_FUNCTION_165_0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      OUTLINED_FUNCTION_125();
      sub_19393C200();
    }
  }

  return result;
}

void sub_1935274A4()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEA9950);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v1 = OUTLINED_FUNCTION_47_2();
  OUTLINED_FUNCTION_4_2(v1, xmmword_19394FBB0);
  OUTLINED_FUNCTION_69_0("failureReason");
  sub_19393C400();
  OUTLINED_FUNCTION_31_1();
  v3 = *(v2 + 104);
  v4 = OUTLINED_FUNCTION_65();
  v3(v4);
  v5 = OUTLINED_FUNCTION_29_1();
  v6 = OUTLINED_FUNCTION_48(v5, "promptResponse");
  v3(v6);
  v7 = OUTLINED_FUNCTION_13_12();
  v8 = OUTLINED_FUNCTION_48(v7, "transcriptEventId");
  v3(v8);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1935275F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_356();
  v6 = v5;
  v7 = v4;
  OUTLINED_FUNCTION_370();
  while (1)
  {
    OUTLINED_FUNCTION_234();
    v8 = sub_19393C0E0();
    if (v7 || (v9 & 1) != 0)
    {
      break;
    }

    switch(v8)
    {
      case 3:
        v6(0);
        OUTLINED_FUNCTION_209();
        sub_193497890(v10);
LABEL_10:
        v7 = 0;
        break;
      case 2:
        OUTLINED_FUNCTION_209();
        sub_19393C200();
        goto LABEL_10;
      case 1:
        sub_1934982A8();
        goto LABEL_10;
    }
  }

  OUTLINED_FUNCTION_355();
}

void sub_1935276CC()
{
  OUTLINED_FUNCTION_87_7();
  if ((*(v1 + 9) & 1) == 0)
  {
    OUTLINED_FUNCTION_117_7();
    sub_193447324(v2, v3, v4, v5, v6, v7);
  }

  if (!v0)
  {
    if (*(v1 + 24))
    {
      sub_19393C3C0();
    }

    OUTLINED_FUNCTION_11_1();
    sub_19352632C();
  }
}

void sub_1935277EC()
{
  OUTLINED_FUNCTION_21_0();
  while (1)
  {
    v1 = OUTLINED_FUNCTION_165_0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (v1 == 1)
    {
      OUTLINED_FUNCTION_62();
      sub_193498018();
    }
  }
}

void sub_193527850()
{
  if (v0[1] != 1)
  {
    OUTLINED_FUNCTION_89_0();
    OUTLINED_FUNCTION_153(v1, v2, v3, &type metadata for IntelligenceFlowError, v4, &off_1F07C5D48, v5, v6, v7, *v0);
    sub_193447600();
  }
}

uint64_t sub_1935278F4@<X0>(void (*a1)(__int128 *__return_ptr)@<X0>, uint64_t (*a2)(void)@<X1>, _OWORD *a3@<X8>)
{
  a1(&v6);
  *a3 = v6;
  a2(0);
  OUTLINED_FUNCTION_227();

  return swift_storeEnumTagMultiPayload();
}

void sub_193527954()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEA9980);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v1 = OUTLINED_FUNCTION_47_2();
  OUTLINED_FUNCTION_4_2(v1, xmmword_19394FBB0);
  OUTLINED_FUNCTION_44_8("started");
  sub_19393C400();
  OUTLINED_FUNCTION_31_1();
  v3 = *(v2 + 104);
  v4 = OUTLINED_FUNCTION_65();
  v3(v4);
  v5 = OUTLINED_FUNCTION_29_1();
  v6 = OUTLINED_FUNCTION_24_0(v5, "ended");
  v3(v6);
  v7 = OUTLINED_FUNCTION_13_12();
  v8 = OUTLINED_FUNCTION_20_13(v7, "failed");
  v3(v8);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_193527A98()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_26_11();
  type metadata accessor for PlanGeneration.Event.PlanCreation.Ended(0);
  OUTLINED_FUNCTION_37_1();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_10_23();
  v5 = OUTLINED_FUNCTION_125_3();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  v8 = OUTLINED_FUNCTION_47(v7);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_6();
  v25 = v9 - v10;
  OUTLINED_FUNCTION_47_3();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_372();
  v26 = v12;
  while (1)
  {
    v13 = OUTLINED_FUNCTION_124();
    if (v0 || (v14 & 1) != 0)
    {
      break;
    }

    switch(v13)
    {
      case 3:
        OUTLINED_FUNCTION_128_4();
        OUTLINED_FUNCTION_23_18();
        sub_193498018();
        OUTLINED_FUNCTION_57_4();
        sub_19352F504(v1, v22);
        if (v29 == 2)
        {
          PlanGeneration.Event.PlanCreation.Failed.init()();
          v24 = OUTLINED_FUNCTION_230();
        }

        else
        {
          v24 = OUTLINED_FUNCTION_190_0();
        }

        OUTLINED_FUNCTION_85_7(v23, v24);
        type metadata accessor for PlanGeneration.Event.PlanCreation.StateInfo(0);
        OUTLINED_FUNCTION_141_4();
        swift_storeEnumTagMultiPayload();
        break;
      case 2:
        OUTLINED_FUNCTION_45();
        __swift_storeEnumTagSinglePayload(v17, v18, v19, v2);
        OUTLINED_FUNCTION_146();
        OUTLINED_FUNCTION_23_18();
        sub_193498018();
        OUTLINED_FUNCTION_57_4();
        sub_19352F504(v1, v20);
        OUTLINED_FUNCTION_245_0();
        sub_19344F184();
        OUTLINED_FUNCTION_9_14(v25);
        if (v21)
        {
          PlanGeneration.Event.PlanCreation.Ended.init()(v3);
          OUTLINED_FUNCTION_354(v26);
          OUTLINED_FUNCTION_9_14(v25);
          if (!v21)
          {
            OUTLINED_FUNCTION_354(v25);
          }
        }

        else
        {
          OUTLINED_FUNCTION_354(v26);
          OUTLINED_FUNCTION_102_6();
          sub_19352F4AC();
        }

        OUTLINED_FUNCTION_102_6();
        OUTLINED_FUNCTION_351();
        type metadata accessor for PlanGeneration.Event.PlanCreation.StateInfo(0);
        OUTLINED_FUNCTION_141_4();
        swift_storeEnumTagMultiPayload();
        break;
      case 1:
        OUTLINED_FUNCTION_358();
        OUTLINED_FUNCTION_23_18();
        sub_193498018();
        OUTLINED_FUNCTION_223();
        OUTLINED_FUNCTION_57_4();
        sub_19352F504(v1, v15);
        v16 = v29;
        if (v29 == 1)
        {
          v3 = v27;
          PlanGeneration.Event.PlanCreation.Started.init()();
          v16 = v27[1];
        }

        else
        {
          v3 = &v28;
        }

        *v1 = *v3;
        v1[1] = v16;
        type metadata accessor for PlanGeneration.Event.PlanCreation.StateInfo(0);
        OUTLINED_FUNCTION_141_4();
        swift_storeEnumTagMultiPayload();
        OUTLINED_FUNCTION_218();
        break;
    }
  }

  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_27();
}

void sub_193527DB0()
{
  OUTLINED_FUNCTION_26();
  v0 = OUTLINED_FUNCTION_51_6();
  type metadata accessor for PlanGeneration.Event.PlanCreation.Ended(v0);
  OUTLINED_FUNCTION_37_1();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_29_13();
  type metadata accessor for PlanGeneration.Event.PlanCreation.StateInfo(v2);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_10_23();
  OUTLINED_FUNCTION_19_3();
  sub_19352EF70();
  OUTLINED_FUNCTION_208();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      OUTLINED_FUNCTION_102_6();
      OUTLINED_FUNCTION_121_0();
      sub_19352F4AC();
      OUTLINED_FUNCTION_63_7();
      sub_193447600();
      v5 = OUTLINED_FUNCTION_179_3();
      sub_19352F504(v5, v6);
    }

    else
    {
      OUTLINED_FUNCTION_136_3();
      OUTLINED_FUNCTION_78_1();
      sub_193447600();
      OUTLINED_FUNCTION_25_2();
      OUTLINED_FUNCTION_245_0();
      sub_193456418(v7, v8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_78_1();
    sub_193447600();
  }

  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_27();
}

void sub_193527FD8()
{
  OUTLINED_FUNCTION_21_0();
  while (1)
  {
    v1 = OUTLINED_FUNCTION_165_0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (v1 == 1)
    {
      OUTLINED_FUNCTION_62();
      sub_193498018();
    }
  }
}

void sub_19352803C()
{
  if (*(v0 + 48) >> 9 <= 0x7Eu)
  {
    OUTLINED_FUNCTION_89_0();
    OUTLINED_FUNCTION_134(v1, v2, v3, &type metadata for PlanGeneration.Event.ModelInference.StateInfo, v4, &off_1F07C6A40, v5, v6, *v0);
    sub_193447600();
  }
}

void sub_193528110()
{
  OUTLINED_FUNCTION_115();
  v1 = sub_19393C420();
  __swift_allocate_value_buffer(v1, qword_1EAEA99B0);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v3 = *(v2 + 72);
  OUTLINED_FUNCTION_49_0();
  v4 = OUTLINED_FUNCTION_122_0();
  OUTLINED_FUNCTION_43_2(v4, xmmword_19394FBC0);
  OUTLINED_FUNCTION_102("Unknown");
  sub_19393C400();
  OUTLINED_FUNCTION_11_0();
  v6 = *(v5 + 104);
  v7 = OUTLINED_FUNCTION_50_1();
  v6(v7);
  v8 = OUTLINED_FUNCTION_34_12();
  v9 = OUTLINED_FUNCTION_25(v8, "FullPlannerHTTPClient");
  v6(v9);
  v10 = OUTLINED_FUNCTION_69();
  v11 = OUTLINED_FUNCTION_25(v10, "FullPlannerTokenGenerationClient");
  v6(v11);
  v12 = OUTLINED_FUNCTION_9_4((v0 + 3 * v3));
  v13 = OUTLINED_FUNCTION_25(v12, "FullPlannerTokenGenerationClientConstrainedDecoding");
  v6(v13);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

uint64_t sub_1935282B8()
{
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEA99C8);
  v1 = OUTLINED_FUNCTION_13_0();
  __swift_project_value_buffer(v1, v2);
  return sub_19393C410();
}

void sub_193528340()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEA99E0);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v1 = OUTLINED_FUNCTION_47_2();
  OUTLINED_FUNCTION_4_2(v1, xmmword_19394FBB0);
  OUTLINED_FUNCTION_69_0("failureReason");
  sub_19393C400();
  OUTLINED_FUNCTION_31_1();
  v3 = *(v2 + 104);
  v4 = OUTLINED_FUNCTION_65();
  v3(v4);
  v5 = OUTLINED_FUNCTION_29_1();
  v6 = OUTLINED_FUNCTION_48(v5, "modelInterface");
  v3(v6);
  v7 = OUTLINED_FUNCTION_13_12();
  v8 = OUTLINED_FUNCTION_48(v7, "modelIdentifier");
  v3(v8);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_193528490(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_356();
  OUTLINED_FUNCTION_21_0();
  while (1)
  {
    v4 = OUTLINED_FUNCTION_165_0();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    switch(v4)
    {
      case 3:
        OUTLINED_FUNCTION_98();
        sub_19393C200();
        break;
      case 2:
        OUTLINED_FUNCTION_62();
LABEL_9:
        sub_1934982A8();
        break;
      case 1:
        OUTLINED_FUNCTION_89_2();
        goto LABEL_9;
    }
  }

  OUTLINED_FUNCTION_355();
}

void sub_193528534()
{
  OUTLINED_FUNCTION_75_3();
  v2 = *(v0 + 25);
  v3 = *(v0 + 40);
  if ((*(v0 + 9) & 1) == 0)
  {
    OUTLINED_FUNCTION_108_1();
    sub_193447324(v4, v5, v6, v7, v8, v9);
  }

  if (!v1)
  {
    if ((v2 & 1) == 0)
    {
      OUTLINED_FUNCTION_129_4();
      sub_193447324(v10, v11, v12, v13, v14, v15);
    }

    if (v3)
    {
      OUTLINED_FUNCTION_32_4();
      OUTLINED_FUNCTION_167_3();
      sub_19393C3C0();
    }
  }
}

void sub_193528664()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEA99F8);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v1 = OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_4_2(v1, xmmword_19394FBE0);
  OUTLINED_FUNCTION_69_0("criticalError");
  sub_19393C400();
  OUTLINED_FUNCTION_31_1();
  v3 = *(v2 + 104);
  v4 = OUTLINED_FUNCTION_65();
  v3(v4);
  v5 = OUTLINED_FUNCTION_29_1();
  v6 = OUTLINED_FUNCTION_48(v5, "modelInterface");
  v3(v6);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_193528794(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_356();
  OUTLINED_FUNCTION_21_0();
  while (1)
  {
    v4 = OUTLINED_FUNCTION_165_0();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    if (v4 == 2)
    {
      OUTLINED_FUNCTION_62();
      sub_1934982A8();
    }

    else if (v4 == 1)
    {
      OUTLINED_FUNCTION_89_2();
      sub_193498018();
    }
  }

  OUTLINED_FUNCTION_355();
}

void sub_193528824()
{
  OUTLINED_FUNCTION_75_3();
  v2 = *(v0 + 49);
  if (*(v0 + 8) != 1)
  {
    OUTLINED_FUNCTION_108_1();
    sub_193447600();
  }

  if (!v1 && (v2 & 1) == 0)
  {
    OUTLINED_FUNCTION_129_4();
    sub_193447324(v3, v4, v5, v6, v7, v8);
  }
}

double sub_19352893C@<D0>(uint64_t a1@<X8>)
{
  PlanGeneration.Event.ModelInference.Started.init()();
  *(a1 + 48) = 0;
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  return result;
}

void sub_193528970()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEA9A10);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v1 = OUTLINED_FUNCTION_47_2();
  OUTLINED_FUNCTION_4_2(v1, xmmword_19394FBB0);
  OUTLINED_FUNCTION_44_8("started");
  sub_19393C400();
  OUTLINED_FUNCTION_31_1();
  v3 = *(v2 + 104);
  v4 = OUTLINED_FUNCTION_65();
  v3(v4);
  v5 = OUTLINED_FUNCTION_29_1();
  v6 = OUTLINED_FUNCTION_24_0(v5, "ended");
  v3(v6);
  v7 = OUTLINED_FUNCTION_13_12();
  v8 = OUTLINED_FUNCTION_20_13(v7, "failed");
  v3(v8);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_193528AB4()
{
  OUTLINED_FUNCTION_53_4();
  v39 = xmmword_19395BB80;
  while (1)
  {
    v3 = OUTLINED_FUNCTION_124();
    if (v0 || (v4 & 1) != 0)
    {
      break;
    }

    switch(v3)
    {
      case 3:
        OUTLINED_FUNCTION_240(3, v4, v5, v6, v7, v8, v9, v10, v39);
        memset(&v43[16], 0, 32);
        v44 = 0;
        sub_193498018();
        v27 = OUTLINED_FUNCTION_135_3();
        sub_193511EB4(v27, v28, v29, v30, v31, v32, *(v1 + 48));
        OUTLINED_FUNCTION_187_2();
        if (v34)
        {
          PlanGeneration.Event.ModelInference.Failed.init()();
          v38 = v40;
          v33 = *v41;
          v37 = *&v41[8];
          v36 = *&v41[24];
          v35 = v42;
        }

        else
        {
          v35 = v44;
          v37 = *&v43[16];
          v36 = *&v43[32];
          v38 = *v43;
          v40 = *v43;
          *v41 = v33;
        }

        *v1 = v38;
        *(v1 + 8) = v33;
        *(v1 + 16) = v37;
        *(v1 + 32) = v36;
        *(v1 + 48) = v35 & 0x1FF | 0x8000;
        break;
      case 2:
        memset(v43, 0, 40);
        *&v43[40] = 1;
        sub_193498018();
        v17 = OUTLINED_FUNCTION_135_3();
        sub_193511EB4(v17, v18, v19, v20, v21, v22, *(v1 + 48));
        v23 = *&v43[40];
        if (*&v43[40] == 1)
        {
          OUTLINED_FUNCTION_244_0();
          PlanGeneration.Event.ModelInference.Ended.init()(v24);
          v26 = *v41;
          v25 = *&v41[16];
          v23 = *&v41[32];
        }

        else
        {
          v25 = *&v43[24];
          v2 = v43;
          v26 = *&v43[8];
        }

        *v1 = *v2;
        *(v1 + 8) = v26;
        *(v1 + 24) = v25;
        *(v1 + 40) = v23;
        *(v1 + 48) = 0x4000;
        break;
      case 1:
        v43[0] = 1;
        OUTLINED_FUNCTION_90_8();
        sub_193498018();
        v11 = OUTLINED_FUNCTION_135_3();
        sub_193511EB4(v11, v12, v13, v14, v15, v16, *(v1 + 48));
        if (v43[0] == 1)
        {
          PlanGeneration.Event.ModelInference.Started.init()();
        }

        *(v1 + 48) = 0;
        *(v1 + 16) = 0u;
        *(v1 + 32) = 0u;
        *v1 = 0u;
        break;
    }
  }
}

uint64_t sub_193528CDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a6 != 1)
  {
  }

  return result;
}

void sub_193528CF0()
{
  OUTLINED_FUNCTION_89_0();
  v7 = *(v0 + 24);
  if (v7 >> 14)
  {
    v8 = *v0;
    if (v7 >> 14 == 1)
    {
      OUTLINED_FUNCTION_165_4(v1, v2, v3, &type metadata for PlanGeneration.Event.ModelInference.Ended, v4, &off_1F07C69E0, v5, v6, v9, v8);
    }

    else
    {
      OUTLINED_FUNCTION_175_1(v1, v2, v3, &type metadata for PlanGeneration.Event.ModelInference.Failed, v4, &off_1F07C6A10, v5, v6, v9, v8);
    }
  }

  sub_193447600();
}

void sub_193528E34()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEA9A28);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v1 = OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_4_2(v1, xmmword_19394FBE0);
  OUTLINED_FUNCTION_69_0("metadata");
  sub_19393C400();
  OUTLINED_FUNCTION_31_1();
  v3 = *(v2 + 104);
  v4 = OUTLINED_FUNCTION_65();
  v3(v4);
  v5 = OUTLINED_FUNCTION_29_1();
  v6 = OUTLINED_FUNCTION_48(v5, "event");
  v3(v6);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_193528F64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_356();
  OUTLINED_FUNCTION_53_4();
  while (1)
  {
    v4 = OUTLINED_FUNCTION_124();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    if (v4 == 2)
    {
      type metadata accessor for IntelligenceFlowFeedbackLearning(0);
      type metadata accessor for IntelligenceFlowFeedbackLearning.Event(0);
      OUTLINED_FUNCTION_111();
LABEL_8:
      sub_193498018();
    }

    else if (v4 == 1)
    {
      type metadata accessor for IntelligenceFlowFeedbackLearning.Metadata(0);
      OUTLINED_FUNCTION_86();
      goto LABEL_8;
    }
  }

  OUTLINED_FUNCTION_355();
}

void sub_193529008()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_5_8(v2, v3);
  v4 = OUTLINED_FUNCTION_275();
  OUTLINED_FUNCTION_47(v4);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_8();
  type metadata accessor for IntelligenceFlowFeedbackLearning.Metadata(v6);
  OUTLINED_FUNCTION_14_7();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_7_26();
  OUTLINED_FUNCTION_139_6();
  OUTLINED_FUNCTION_20_10();
  if (v8)
  {
    sub_19344E6DC(v0, &qword_1EAE3C098, &unk_19395C300);
  }

  else
  {
    OUTLINED_FUNCTION_140_3();
    OUTLINED_FUNCTION_40_7();
    sub_19352F504(v1, type metadata accessor for IntelligenceFlowFeedbackLearning.Metadata);
  }

  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_27();
}

void sub_19352910C()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_5_8(v2, v3);
  v4 = OUTLINED_FUNCTION_275();
  OUTLINED_FUNCTION_47(v4);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_8();
  type metadata accessor for IntelligenceFlowFeedbackLearning.Event(v6);
  OUTLINED_FUNCTION_14_7();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_9_18();
  v8 = type metadata accessor for IntelligenceFlowFeedbackLearning(0);
  OUTLINED_FUNCTION_236_0(v8);
  OUTLINED_FUNCTION_139_6();
  OUTLINED_FUNCTION_20_10();
  if (v9)
  {
    sub_19344E6DC(v0, &qword_1EAE3C090, &qword_19395AF38);
  }

  else
  {
    OUTLINED_FUNCTION_140_3();
    v10 = OUTLINED_FUNCTION_235();
    OUTLINED_FUNCTION_17(v10, v11);
    sub_19352F504(v1, type metadata accessor for IntelligenceFlowFeedbackLearning.Event);
  }

  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_27();
}

void sub_19352929C()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, qword_1EAEA9A40);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v4 = *(v3 + 72);
  v5 = OUTLINED_FUNCTION_47_2();
  OUTLINED_FUNCTION_34_5(v5, xmmword_19394FBB0);
  *v0 = 0;
  OUTLINED_FUNCTION_69_0("EvaluationTypeUnknown");
  sub_19393C400();
  OUTLINED_FUNCTION_31_1();
  v7 = *(v6 + 104);
  v8 = OUTLINED_FUNCTION_65();
  (v7)(v8);
  v9 = OUTLINED_FUNCTION_17_8((v0 + v4));
  *v9 = "EvaluationTypeFastEvaluator";
  *(v9 + 1) = 27;
  v9[16] = v1;
  OUTLINED_FUNCTION_10_0();
  v7();
  v10 = OUTLINED_FUNCTION_59_2((v0 + 2 * v4));
  *v10 = "EvaluationTypeFullEvaluator";
  *(v10 + 1) = 27;
  v10[16] = v1;
  OUTLINED_FUNCTION_10_0();
  v7();
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_193529430()
{
  OUTLINED_FUNCTION_115();
  v1 = sub_19393C420();
  __swift_allocate_value_buffer(v1, qword_1EAEA9A58);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v3 = *(v2 + 72);
  v4 = OUTLINED_FUNCTION_47_2();
  OUTLINED_FUNCTION_34_5(v4, xmmword_19394FBB0);
  *v0 = 0;
  OUTLINED_FUNCTION_69_0("ActionResolutionStateUnknown");
  sub_19393C400();
  OUTLINED_FUNCTION_31_1();
  v6 = *(v5 + 104);
  v7 = OUTLINED_FUNCTION_65();
  v6(v7);
  v8 = OUTLINED_FUNCTION_17_8((v0 + v3));
  v9 = OUTLINED_FUNCTION_48(v8, "ActionResolutionStateIncomplete");
  v6(v9);
  v10 = OUTLINED_FUNCTION_59_2((v0 + 2 * v3));
  v11 = OUTLINED_FUNCTION_48(v10, "ActionResolutionStateComplete");
  v6(v11);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1935295B8()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, qword_1EAEA9A70);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v4 = *(v3 + 72);
  OUTLINED_FUNCTION_49_0();
  v5 = OUTLINED_FUNCTION_188_1();
  OUTLINED_FUNCTION_9_8(v5, xmmword_193951270);
  *v0 = 0;
  OUTLINED_FUNCTION_63("TaskStatusUnknown");
  sub_19393C400();
  OUTLINED_FUNCTION_11_0();
  v7 = *(v6 + 104);
  v8 = OUTLINED_FUNCTION_50_1();
  (v7)(v8);
  v9 = OUTLINED_FUNCTION_17_8((v0 + v4));
  v10 = OUTLINED_FUNCTION_0_0(v9, "TaskStatusResultUnknown");
  (v7)(v10);
  v11 = OUTLINED_FUNCTION_59_2((v0 + 2 * v4));
  v12 = OUTLINED_FUNCTION_0_0(v11, "TaskStatusInferredSuccess");
  (v7)(v12);
  v13 = OUTLINED_FUNCTION_9_4((v0 + 3 * v4));
  v14 = OUTLINED_FUNCTION_0_0(v13, "TaskStatusInferredFailureUnknown");
  (v7)(v14);
  v15 = OUTLINED_FUNCTION_13((v0 + 4 * v4));
  v16 = OUTLINED_FUNCTION_0_0(v15, "TaskStatusInferredFailureExecutionFailure");
  (v7)(v16);
  v17 = OUTLINED_FUNCTION_19_2((v0 + 5 * v4));
  v18 = OUTLINED_FUNCTION_0_0(v17, "TaskStatusInferredFailureCriticalFailure");
  (v7)(v18);
  v19 = OUTLINED_FUNCTION_54_1(6);
  *v19 = "TaskStatusAbandoned";
  *(v19 + 1) = 19;
  v20 = OUTLINED_FUNCTION_1_3(v19);
  (v7)(v20);
  OUTLINED_FUNCTION_120();
  v22 = OUTLINED_FUNCTION_30_0((v0 + v21));
  *v22 = "TaskStatusCancelled";
  *(v22 + 1) = 19;
  v23 = OUTLINED_FUNCTION_1_3(v22);
  (v7)(v23);
  v24 = OUTLINED_FUNCTION_39_3(&v0[v4]);
  *v24 = "TaskStatusDidNotExecute";
  *(v24 + 1) = 23;
  v24[16] = v1;
  OUTLINED_FUNCTION_2_0();
  v7();
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_19352983C()
{
  OUTLINED_FUNCTION_115();
  v1 = sub_19393C420();
  __swift_allocate_value_buffer(v1, qword_1EAEA9A88);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v3 = *(v2 + 72);
  OUTLINED_FUNCTION_49_0();
  v4 = OUTLINED_FUNCTION_188_1();
  OUTLINED_FUNCTION_43_2(v4, xmmword_19394FBD0);
  OUTLINED_FUNCTION_102("TaskPromptStatusUnknown");
  sub_19393C400();
  OUTLINED_FUNCTION_11_0();
  v6 = *(v5 + 104);
  v7 = OUTLINED_FUNCTION_50_1();
  v6(v7);
  v8 = OUTLINED_FUNCTION_34_12();
  v9 = OUTLINED_FUNCTION_25(v8, "TaskPromptStatusNone");
  v6(v9);
  v10 = OUTLINED_FUNCTION_69();
  v11 = OUTLINED_FUNCTION_25(v10, "TaskPromptStatusConfirmationYes");
  v6(v11);
  v12 = OUTLINED_FUNCTION_9_4((v0 + 3 * v3));
  v13 = OUTLINED_FUNCTION_25(v12, "TaskPromptStatusConfirmationNo");
  v6(v13);
  v14 = OUTLINED_FUNCTION_13((v0 + 4 * v3));
  v15 = OUTLINED_FUNCTION_25(v14, "TaskPromptStatusConfirmationAbandon");
  v6(v15);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_193529A0C()
{
  OUTLINED_FUNCTION_115();
  v1 = sub_19393C420();
  __swift_allocate_value_buffer(v1, qword_1EAEA9AA0);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v3 = *(v2 + 72);
  OUTLINED_FUNCTION_49_0();
  v4 = OUTLINED_FUNCTION_188_1();
  OUTLINED_FUNCTION_43_2(v4, xmmword_193951270);
  OUTLINED_FUNCTION_102("UserAlignmentCategoryUnknown");
  sub_19393C400();
  OUTLINED_FUNCTION_11_0();
  v6 = *(v5 + 104);
  v7 = OUTLINED_FUNCTION_50_1();
  v6(v7);
  v8 = OUTLINED_FUNCTION_34_12();
  v9 = OUTLINED_FUNCTION_25(v8, "UserAlignmentCategoryCategoryUnknown");
  v6(v9);
  v10 = OUTLINED_FUNCTION_69();
  *v10 = "UserAlignmentCategoryExplicitlyRejected";
  *(v10 + 1) = 39;
  v11 = OUTLINED_FUNCTION_56_0(v10);
  v6(v11);
  v12 = OUTLINED_FUNCTION_9_4((v0 + 3 * v3));
  *v12 = "UserAlignmentCategoryImplicitlyRejected";
  *(v12 + 1) = 39;
  v13 = OUTLINED_FUNCTION_56_0(v12);
  v6(v13);
  v14 = OUTLINED_FUNCTION_13((v0 + 4 * v3));
  v15 = OUTLINED_FUNCTION_25(v14, "UserAlignmentCategoryExecuted");
  v6(v15);
  v16 = OUTLINED_FUNCTION_19_2((v0 + 5 * v3));
  *v16 = "UserAlignmentCategoryImplicitlyAccepted";
  *(v16 + 1) = 39;
  v17 = OUTLINED_FUNCTION_56_0(v16);
  v6(v17);
  v18 = OUTLINED_FUNCTION_54_1(6);
  *v18 = "UserAlignmentCategoryExplicitlyAccepted";
  *(v18 + 1) = 39;
  v19 = OUTLINED_FUNCTION_56_0(v18);
  v6(v19);
  OUTLINED_FUNCTION_120();
  v21 = OUTLINED_FUNCTION_44(v20);
  *v22 = 7;
  v23 = OUTLINED_FUNCTION_25(v21, "UserAlignmentCategoryTransientDeviceConfigurationFailure");
  v6(v23);
  v24 = OUTLINED_FUNCTION_39_3((v0 + 8 * v3));
  v25 = OUTLINED_FUNCTION_25(v24, "UserAlignmentCategoryNotSelected");
  v6(v25);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_193529C80()
{
  OUTLINED_FUNCTION_115();
  v1 = sub_19393C420();
  __swift_allocate_value_buffer(v1, qword_1EAEA9AB8);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v3 = *(v2 + 72);
  OUTLINED_FUNCTION_49_0();
  v4 = OUTLINED_FUNCTION_188_1();
  OUTLINED_FUNCTION_43_2(v4, xmmword_193951270);
  OUTLINED_FUNCTION_102("EvaluationSourceUnknown");
  sub_19393C400();
  OUTLINED_FUNCTION_11_0();
  v6 = *(v5 + 104);
  v7 = OUTLINED_FUNCTION_50_1();
  v6(v7);
  v8 = OUTLINED_FUNCTION_34_12();
  v9 = OUTLINED_FUNCTION_25(v8, "EvaluationSourceActionExecutedSuccessfully");
  v6(v9);
  v10 = OUTLINED_FUNCTION_69();
  v11 = OUTLINED_FUNCTION_25(v10, "EvaluationSourceActionNotExecuted");
  v6(v11);
  v12 = OUTLINED_FUNCTION_9_4((v0 + 3 * v3));
  *v12 = "EvaluationSourceActionExecutionFailed";
  *(v12 + 1) = 37;
  v13 = OUTLINED_FUNCTION_56_0(v12);
  v6(v13);
  v14 = OUTLINED_FUNCTION_13((v0 + 4 * v3));
  *v14 = "EvaluationSourceActionCriticalFailure";
  *(v14 + 1) = 37;
  v15 = OUTLINED_FUNCTION_56_0(v14);
  v6(v15);
  v16 = OUTLINED_FUNCTION_19_2((v0 + 5 * v3));
  v17 = OUTLINED_FUNCTION_25(v16, "EvaluationSourceActionCancelled");
  v6(v17);
  v18 = OUTLINED_FUNCTION_54_1(6);
  *v18 = "EvaluationSourceActionConfirmationYes";
  *(v18 + 1) = 37;
  v19 = OUTLINED_FUNCTION_56_0(v18);
  v6(v19);
  OUTLINED_FUNCTION_120();
  v21 = OUTLINED_FUNCTION_44(v20);
  *v22 = 7;
  v23 = OUTLINED_FUNCTION_25(v21, "EvaluationSourceActionConfirmationNo");
  v6(v23);
  v24 = OUTLINED_FUNCTION_39_3((v0 + 8 * v3));
  v25 = OUTLINED_FUNCTION_25(v24, "EvaluationSourceActionConfirmationAbandon");
  v6(v25);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_193529EF4()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEA9AD0);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v2 = *(v1 + 72);
  OUTLINED_FUNCTION_49_0();
  v3 = OUTLINED_FUNCTION_122_0();
  *(v3 + 16) = xmmword_19394FBC0;
  v4 = v3 + v0;
  v5 = v3 + v0 + dword_1EAEA9B08;
  *(v3 + v0) = 0;
  *v5 = "EvaluationVoteUnknown";
  *(v5 + 8) = 21;
  *(v5 + 16) = 2;
  sub_19393C400();
  OUTLINED_FUNCTION_31_1();
  v7 = *(v6 + 104);
  OUTLINED_FUNCTION_377();
  v7();
  v8 = OUTLINED_FUNCTION_34_12();
  *v8 = "EvaluationVoteAbstain";
  *(v8 + 8) = 21;
  *(v8 + 16) = 2;
  OUTLINED_FUNCTION_377();
  v7();
  v9 = OUTLINED_FUNCTION_3_1(v4 + 2 * v2);
  *v10 = 2;
  *v9 = "EvaluationVoteSuccess";
  *(v9 + 8) = 21;
  *(v9 + 16) = 2;
  OUTLINED_FUNCTION_377();
  v7();
  v11 = OUTLINED_FUNCTION_9_4((v4 + 3 * v2));
  *v11 = "EvaluationVoteFailure";
  *(v11 + 1) = 21;
  v11[16] = 2;
  OUTLINED_FUNCTION_377();
  v7();
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_19352A0D4()
{
  OUTLINED_FUNCTION_115();
  v1 = sub_19393C420();
  __swift_allocate_value_buffer(v1, qword_1EAEA9AE8);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v3 = *(v2 + 72);
  OUTLINED_FUNCTION_49_0();
  v4 = OUTLINED_FUNCTION_188_1();
  OUTLINED_FUNCTION_43_2(v4, xmmword_19394FBD0);
  OUTLINED_FUNCTION_102("CandidateResolutionUnknown");
  sub_19393C400();
  OUTLINED_FUNCTION_11_0();
  v6 = *(v5 + 104);
  v7 = OUTLINED_FUNCTION_50_1();
  v6(v7);
  v8 = OUTLINED_FUNCTION_34_12();
  v9 = OUTLINED_FUNCTION_25(v8, "CandidateResolutionUnresolved");
  v6(v9);
  v10 = OUTLINED_FUNCTION_69();
  v11 = OUTLINED_FUNCTION_25(v10, "CandidateResolutionResolvedNotSelected");
  v6(v11);
  v12 = OUTLINED_FUNCTION_9_4((v0 + 3 * v3));
  v13 = OUTLINED_FUNCTION_25(v12, "CandidateResolutionResolvedSelected");
  v6(v13);
  v14 = OUTLINED_FUNCTION_13((v0 + 4 * v3));
  v15 = OUTLINED_FUNCTION_25(v14, "CandidateResolutionExecuted");
  v6(v15);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_19352A2A4()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, &qword_1EAEA9B00);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v4 = *(v3 + 72);
  OUTLINED_FUNCTION_49_0();
  v5 = OUTLINED_FUNCTION_156();
  OUTLINED_FUNCTION_9_8(v5, xmmword_1939526C0);
  *v0 = 0;
  OUTLINED_FUNCTION_63("CandidateOutcomeUnknown");
  sub_19393C400();
  OUTLINED_FUNCTION_11_0();
  v7 = *(v6 + 104);
  v8 = OUTLINED_FUNCTION_50_1();
  (v7)(v8);
  v9 = OUTLINED_FUNCTION_17_8((v0 + v4));
  *v9 = "CandidateOutcomeConfirmationAbandoned";
  *(v9 + 1) = 37;
  v10 = OUTLINED_FUNCTION_1_3(v9);
  (v7)(v10);
  v11 = OUTLINED_FUNCTION_59_2((v0 + 2 * v4));
  *v11 = "CandidateOutcomeConfirmationConfirmed";
  *(v11 + 1) = 37;
  v12 = OUTLINED_FUNCTION_1_3(v11);
  (v7)(v12);
  v13 = OUTLINED_FUNCTION_9_4((v0 + 3 * v4));
  v14 = OUTLINED_FUNCTION_0_0(v13, "CandidateOutcomeConfirmationRejected");
  (v7)(v14);
  v15 = OUTLINED_FUNCTION_13((v0 + 4 * v4));
  v16 = OUTLINED_FUNCTION_0_0(v15, "CandidateOutcomeDisambiguationAbandoned");
  (v7)(v16);
  v17 = OUTLINED_FUNCTION_19_2((v0 + 5 * v4));
  v18 = OUTLINED_FUNCTION_0_0(v17, "CandidateOutcomeDisambiguationCandidateSelected");
  (v7)(v18);
  v19 = OUTLINED_FUNCTION_54_1(6);
  v20 = OUTLINED_FUNCTION_0_0(v19, "CandidateOutcomeDisambiguationOtherCandidateSelected");
  (v7)(v20);
  OUTLINED_FUNCTION_120();
  v22 = OUTLINED_FUNCTION_30_0((v0 + v21));
  v23 = OUTLINED_FUNCTION_0_0(v22, "CandidateOutcomeDisambiguationRejected");
  (v7)(v23);
  v24 = OUTLINED_FUNCTION_39_3(&v0[v4]);
  *v24 = "CandidateOutcomeInferredSuccess";
  *(v24 + 1) = 31;
  v25 = OUTLINED_FUNCTION_1_3(v24);
  (v7)(v25);
  v26 = OUTLINED_FUNCTION_3_1(v0 + 9 * v4);
  *v27 = 9;
  *v26 = "CandidateOutcomeInferredFailure";
  v26[1] = 31;
  v28 = OUTLINED_FUNCTION_1_3(v26);
  (v7)(v28);
  v29 = OUTLINED_FUNCTION_54_1(10);
  *v29 = "CandidateOutcomeUnableToDeriveOutcome";
  *(v29 + 1) = 37;
  v30 = OUTLINED_FUNCTION_1_3(v29);
  (v7)(v30);
  v31 = OUTLINED_FUNCTION_54_1(11);
  *v31 = "CandidateOutcomeInferredFromTask";
  *(v31 + 1) = 32;
  v31[16] = v1;
  OUTLINED_FUNCTION_2_0();
  v7();
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_19352A5B8()
{
  OUTLINED_FUNCTION_115();
  v1 = sub_19393C420();
  __swift_allocate_value_buffer(v1, qword_1EAEA9B18);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v3 = *(v2 + 72);
  OUTLINED_FUNCTION_49_0();
  v4 = OUTLINED_FUNCTION_122_0();
  OUTLINED_FUNCTION_43_2(v4, xmmword_19394FBC0);
  OUTLINED_FUNCTION_102("TriggerUnknown");
  sub_19393C400();
  OUTLINED_FUNCTION_11_0();
  v6 = *(v5 + 104);
  v7 = OUTLINED_FUNCTION_50_1();
  v6(v7);
  v8 = OUTLINED_FUNCTION_34_12();
  v9 = OUTLINED_FUNCTION_25(v8, "TriggerTriggerUnknown");
  v6(v9);
  v10 = OUTLINED_FUNCTION_69();
  v11 = OUTLINED_FUNCTION_25(v10, "TriggerRealtimeSession");
  v6(v11);
  v12 = OUTLINED_FUNCTION_9_4((v0 + 3 * v3));
  v13 = OUTLINED_FUNCTION_25(v12, "TriggerEndOfSession");
  v6(v13);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_19352A760()
{
  OUTLINED_FUNCTION_115();
  v1 = sub_19393C420();
  __swift_allocate_value_buffer(v1, qword_1EAEA9B30);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v3 = *(v2 + 72);
  OUTLINED_FUNCTION_49_0();
  v4 = OUTLINED_FUNCTION_156();
  OUTLINED_FUNCTION_43_2(v4, xmmword_1939526E0);
  OUTLINED_FUNCTION_102("EvaluatorUnknown");
  sub_19393C400();
  OUTLINED_FUNCTION_11_0();
  v6 = *(v5 + 104);
  v7 = OUTLINED_FUNCTION_50_1();
  v6(v7);
  v8 = OUTLINED_FUNCTION_34_12();
  v9 = OUTLINED_FUNCTION_25(v8, "EvaluatorActionPrompt");
  v6(v9);
  v10 = OUTLINED_FUNCTION_69();
  v11 = OUTLINED_FUNCTION_25(v10, "EvaluatorFixed");
  v6(v11);
  v12 = OUTLINED_FUNCTION_9_4((v0 + 3 * v3));
  v13 = OUTLINED_FUNCTION_25(v12, "EvaluatorTaskCompletion");
  v6(v13);
  v14 = OUTLINED_FUNCTION_13((v0 + 4 * v3));
  v15 = OUTLINED_FUNCTION_25(v14, "EvaluatorMajorityMediator");
  v6(v15);
  v16 = OUTLINED_FUNCTION_19_2((v0 + 5 * v3));
  v17 = OUTLINED_FUNCTION_25(v16, "EvaluatorWaterfallMediator");
  v6(v17);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_19352A994()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_5_8(v2, v3);
  v4 = OUTLINED_FUNCTION_275();
  OUTLINED_FUNCTION_47(v4);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_8();
  type metadata accessor for IntelligenceFlowFeedbackLearning.Event.EventValue(v6);
  OUTLINED_FUNCTION_14_7();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_7_26();
  OUTLINED_FUNCTION_139_6();
  OUTLINED_FUNCTION_20_10();
  if (v8)
  {
    sub_19344E6DC(v0, &qword_1EAE3C0A0, &unk_19395C310);
  }

  else
  {
    OUTLINED_FUNCTION_140_3();
    OUTLINED_FUNCTION_40_7();
    OUTLINED_FUNCTION_163_3();
    sub_19352F504(v1, v9);
  }

  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_27();
}

void sub_19352AAF4()
{
  OUTLINED_FUNCTION_115();
  v1 = sub_19393C420();
  __swift_allocate_value_buffer(v1, qword_1EAEA9B60);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v2 = OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_4_2(v2, xmmword_19394FBE0);
  OUTLINED_FUNCTION_199_0("stateInfo");
  sub_19393C400();
  OUTLINED_FUNCTION_31_1();
  v4 = *(v3 + 104);
  v5 = OUTLINED_FUNCTION_65();
  (v4)(v5);
  v6 = OUTLINED_FUNCTION_52();
  *v7 = v0;
  *(OUTLINED_FUNCTION_371(v6) + 16) = v0;
  OUTLINED_FUNCTION_10_0();
  v4();
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_19352AC28()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_210();
  while (1)
  {
    OUTLINED_FUNCTION_19_3();
    v3 = sub_19393C0E0();
    if (v0 || (v4 & 1) != 0)
    {
      break;
    }

    if (v3 == 2)
    {
      v1(0);
      type metadata accessor for AIML.UUID(0);
LABEL_8:
      sub_193498018();
    }

    else if (v3 == 1)
    {
      v2(0);
      goto LABEL_8;
    }
  }

  OUTLINED_FUNCTION_27();
}

void sub_19352ACE8()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_5_8(v2, v3);
  v4 = OUTLINED_FUNCTION_275();
  OUTLINED_FUNCTION_47(v4);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_8();
  type metadata accessor for IntelligenceFlowFeedbackLearning.Event.ActionEvaluation.StateInfo(v6);
  OUTLINED_FUNCTION_14_7();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_7_26();
  OUTLINED_FUNCTION_139_6();
  OUTLINED_FUNCTION_20_10();
  if (v8)
  {
    sub_19344E6DC(v0, &qword_1EAE3C0A8, &qword_19395AF40);
  }

  else
  {
    OUTLINED_FUNCTION_140_3();
    OUTLINED_FUNCTION_40_7();
    OUTLINED_FUNCTION_54_6();
    sub_19352F504(v1, v9);
  }

  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_27();
}

void sub_19352ADDC()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_5_8(v1, v2);
  v3 = OUTLINED_FUNCTION_275();
  OUTLINED_FUNCTION_47(v3);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_8();
  type metadata accessor for AIML.UUID(v5);
  OUTLINED_FUNCTION_14_7();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_9_18();
  v7 = type metadata accessor for IntelligenceFlowFeedbackLearning.Event.ActionEvaluation(0);
  OUTLINED_FUNCTION_236_0(v7);
  OUTLINED_FUNCTION_139_6();
  OUTLINED_FUNCTION_20_10();
  if (v8)
  {
    sub_19344E6DC(v0, &qword_1EAE3BCA0, &unk_19395C320);
  }

  else
  {
    OUTLINED_FUNCTION_71_8();
    v9 = OUTLINED_FUNCTION_235();
    OUTLINED_FUNCTION_17(v9, v10);
    OUTLINED_FUNCTION_72_5();
  }

  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_27();
}

void sub_19352AFA8()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, qword_1EAEA9B90);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v4 = *(v3 + 72);
  OUTLINED_FUNCTION_49_0();
  v5 = OUTLINED_FUNCTION_188_1();
  OUTLINED_FUNCTION_9_8(v5, xmmword_19394FBD0);
  *v0 = 1;
  OUTLINED_FUNCTION_63("ifSessionId");
  sub_19393C400();
  OUTLINED_FUNCTION_11_0();
  v7 = *(v6 + 104);
  v8 = OUTLINED_FUNCTION_50_1();
  (v7)(v8);
  v9 = OUTLINED_FUNCTION_29_1();
  v10 = OUTLINED_FUNCTION_0_0(v9, "actionStatementId");
  (v7)(v10);
  v11 = OUTLINED_FUNCTION_13_12();
  *v11 = "taskEvaluation";
  *(v11 + 1) = 14;
  v12 = OUTLINED_FUNCTION_1_3(v11);
  (v7)(v12);
  v13 = OUTLINED_FUNCTION_13((v0 + 3 * v4));
  v14 = OUTLINED_FUNCTION_0_0(v13, "candidateEvaluations");
  (v7)(v14);
  v15 = OUTLINED_FUNCTION_19_2((v0 + 4 * v4));
  *v15 = "evaluationType";
  *(v15 + 1) = 14;
  v15[16] = v1;
  OUTLINED_FUNCTION_2_0();
  v7();
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_19352B15C()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_53_4();
  while (1)
  {
    v1 = OUTLINED_FUNCTION_124();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(v1)
    {
      case 1:
        type metadata accessor for AIML.UUID(0);
        OUTLINED_FUNCTION_86();
        goto LABEL_8;
      case 2:
        type metadata accessor for IntelligenceFlowFeedbackLearning.Event.ActionEvaluation.Ended(0);
        OUTLINED_FUNCTION_113();
        sub_19393C220();
        break;
      case 3:
        v3 = type metadata accessor for IntelligenceFlowFeedbackLearning.Event.ActionEvaluation.Ended(0);
        OUTLINED_FUNCTION_160(*(v3 + 24));
LABEL_8:
        sub_193498018();
        break;
      case 4:
        type metadata accessor for IntelligenceFlowFeedbackLearning.Event.ActionEvaluation.Ended(0);
        type metadata accessor for IntelligenceFlowFeedbackLearning.CandidateEvaluation(0);
        v4 = OUTLINED_FUNCTION_111();
        sub_193498238(v4, v5, v6, v7, &off_1F07C6F28);
        break;
      case 5:
        type metadata accessor for IntelligenceFlowFeedbackLearning.Event.ActionEvaluation.Ended(0);
        OUTLINED_FUNCTION_28_7();
        sub_1934982A8();
        break;
      default:
        continue;
    }
  }

  OUTLINED_FUNCTION_27();
}

void sub_19352B290()
{
  OUTLINED_FUNCTION_47_6();
  sub_19352D998();
  if (!v0)
  {
    v2 = type metadata accessor for IntelligenceFlowFeedbackLearning.Event.ActionEvaluation.Ended(0);
    v8 = v2;
    if ((*(v1 + *(v2 + 20) + 4) & 1) == 0)
    {
      OUTLINED_FUNCTION_15_11();
      v2 = sub_19393C3D0();
    }

    v9 = (v1 + *(v8 + 24));
    if (v9[6])
    {
      OUTLINED_FUNCTION_175_1(v2, v3, v4, &type metadata for IntelligenceFlowFeedbackLearning.TaskEvaluation, v5, &off_1F07C6E98, v6, v7, v23, *v9);
      OUTLINED_FUNCTION_78_1();
      sub_193447600();
    }

    if (*(*(v1 + *(v8 + 28)) + 16))
    {
      type metadata accessor for IntelligenceFlowFeedbackLearning.CandidateEvaluation(0);
      OUTLINED_FUNCTION_78_1();
      sub_193451CFC(v10, v11, v12, v13, v14, v15);
    }

    OUTLINED_FUNCTION_238();
    if ((v16 & 1) == 0)
    {
      OUTLINED_FUNCTION_237_0();
      OUTLINED_FUNCTION_78_1();
      sub_193447324(v17, v18, v19, v20, v21, v22);
    }
  }
}

void sub_19352B4A4()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEA9BC0);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v1 = OUTLINED_FUNCTION_47_2();
  OUTLINED_FUNCTION_4_2(v1, xmmword_19394FBB0);
  OUTLINED_FUNCTION_44_8("started");
  sub_19393C400();
  OUTLINED_FUNCTION_31_1();
  v3 = *(v2 + 104);
  v4 = OUTLINED_FUNCTION_65();
  v3(v4);
  v5 = OUTLINED_FUNCTION_29_1();
  v6 = OUTLINED_FUNCTION_24_0(v5, "ended");
  v3(v6);
  v7 = OUTLINED_FUNCTION_13_12();
  v8 = OUTLINED_FUNCTION_20_13(v7, "failed");
  v3(v8);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_19352B5E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13)
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_53_4();
  type metadata accessor for IntelligenceFlowFeedbackLearning.Event.ActionEvaluation.Ended(0);
  OUTLINED_FUNCTION_37_1();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_10_23();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3C9C8, &qword_19395BBD8);
  v19 = OUTLINED_FUNCTION_47(v18);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_74_5();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_137_2();
  while (1)
  {
    v21 = OUTLINED_FUNCTION_124();
    if (v13 || (v22 & 1) != 0)
    {
      break;
    }

    switch(v21)
    {
      case 3:
        OUTLINED_FUNCTION_191_0();
        sub_193498018();
        OUTLINED_FUNCTION_54_6();
        sub_19352F504(v14, v31);
        v24 = a13;
        if (a13 == 3)
        {
          IntelligenceFlowFeedbackLearning.Event.ActionEvaluation.Failed.init()();
          v24 = a12;
        }

LABEL_8:
        v25 = OUTLINED_FUNCTION_242_0(v24);
        type metadata accessor for IntelligenceFlowFeedbackLearning.Event.ActionEvaluation.StateInfo(v25);
        OUTLINED_FUNCTION_141_4();
        swift_storeEnumTagMultiPayload();
        break;
      case 2:
        OUTLINED_FUNCTION_73_5();
        sub_193498018();
        v26 = v15;
        OUTLINED_FUNCTION_54_6();
        sub_19352F504(v14, v27);
        OUTLINED_FUNCTION_125_3();
        v15 = &qword_19395BBD8;
        sub_19344F184();
        OUTLINED_FUNCTION_9_14(v16);
        if (v28)
        {
          IntelligenceFlowFeedbackLearning.Event.ActionEvaluation.Ended.init()();
          v29 = OUTLINED_FUNCTION_180_3();
          v15 = v26;
          sub_19344E6DC(v29, v30, &qword_19395BBD8);
          OUTLINED_FUNCTION_9_14(v16);
          if (!v28)
          {
            sub_19344E6DC(v16, &qword_1EAE3C9C8, &qword_19395BBD8);
          }
        }

        else
        {
          OUTLINED_FUNCTION_176_1();
          sub_19344E6DC(v32, v33, v34);
          OUTLINED_FUNCTION_96_8();
          OUTLINED_FUNCTION_219();
        }

        OUTLINED_FUNCTION_96_8();
        OUTLINED_FUNCTION_351();
        type metadata accessor for IntelligenceFlowFeedbackLearning.Event.ActionEvaluation.StateInfo(0);
        OUTLINED_FUNCTION_141_4();
        swift_storeEnumTagMultiPayload();
        break;
      case 1:
        sub_193498018();
        OUTLINED_FUNCTION_54_6();
        sub_19352F504(v14, v23);
        IntelligenceFlowFeedbackLearning.Event.ActionEvaluation.Started.init()();
        v24 = a11;
        goto LABEL_8;
    }
  }

  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_27();
}

void sub_19352B88C()
{
  OUTLINED_FUNCTION_26();
  v0 = OUTLINED_FUNCTION_51_6();
  type metadata accessor for IntelligenceFlowFeedbackLearning.Event.ActionEvaluation.Ended(v0);
  OUTLINED_FUNCTION_37_1();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_29_13();
  type metadata accessor for IntelligenceFlowFeedbackLearning.Event.ActionEvaluation.StateInfo(v2);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_10_23();
  OUTLINED_FUNCTION_19_3();
  sub_19352EF70();
  OUTLINED_FUNCTION_208();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_96_8();
    OUTLINED_FUNCTION_121_0();
    sub_19352F4AC();
    OUTLINED_FUNCTION_63_7();
    sub_193447600();
    v4 = OUTLINED_FUNCTION_179_3();
    sub_19352F504(v4, v5);
  }

  else
  {
    OUTLINED_FUNCTION_78_1();
    sub_193447600();
  }

  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_27();
}

void sub_19352BA7C()
{
  OUTLINED_FUNCTION_115();
  v1 = sub_19393C420();
  __swift_allocate_value_buffer(v1, qword_1EAEA9BD8);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v2 = OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_4_2(v2, xmmword_19394FBE0);
  OUTLINED_FUNCTION_199_0("stateInfo");
  sub_19393C400();
  OUTLINED_FUNCTION_31_1();
  v4 = *(v3 + 104);
  v5 = OUTLINED_FUNCTION_65();
  (v4)(v5);
  v6 = OUTLINED_FUNCTION_52();
  *v7 = v0;
  *(OUTLINED_FUNCTION_371(v6) + 16) = v0;
  OUTLINED_FUNCTION_10_0();
  v4();
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

uint64_t sub_19352BBB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v7 = OUTLINED_FUNCTION_32_4();
  result = v8(v7);
  if (!v5)
  {
    v10 = OUTLINED_FUNCTION_32_4();
    return a5(v10);
  }

  return result;
}

void sub_19352BC20()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_5_8(v2, v3);
  v4 = OUTLINED_FUNCTION_275();
  OUTLINED_FUNCTION_47(v4);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_8();
  type metadata accessor for IntelligenceFlowFeedbackLearning.Event.InteractionDonation.StateInfo(v6);
  OUTLINED_FUNCTION_14_7();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_7_26();
  OUTLINED_FUNCTION_139_6();
  OUTLINED_FUNCTION_20_10();
  if (v8)
  {
    sub_19344E6DC(v0, &qword_1EAE3C0B8, &qword_19395AF50);
  }

  else
  {
    OUTLINED_FUNCTION_140_3();
    OUTLINED_FUNCTION_40_7();
    OUTLINED_FUNCTION_95_6();
    sub_19352F504(v1, v9);
  }

  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_27();
}

void sub_19352BD14()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_5_8(v1, v2);
  v3 = OUTLINED_FUNCTION_275();
  OUTLINED_FUNCTION_47(v3);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_8();
  type metadata accessor for AIML.UUID(v5);
  OUTLINED_FUNCTION_14_7();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_9_18();
  v7 = type metadata accessor for IntelligenceFlowFeedbackLearning.Event.InteractionDonation(0);
  OUTLINED_FUNCTION_236_0(v7);
  OUTLINED_FUNCTION_139_6();
  OUTLINED_FUNCTION_20_10();
  if (v8)
  {
    sub_19344E6DC(v0, &qword_1EAE3BCA0, &unk_19395C320);
  }

  else
  {
    OUTLINED_FUNCTION_71_8();
    v9 = OUTLINED_FUNCTION_235();
    OUTLINED_FUNCTION_17(v9, v10);
    OUTLINED_FUNCTION_72_5();
  }

  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_27();
}

uint64_t sub_19352BEE0()
{
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, qword_1EAEA9C08);
  v3 = OUTLINED_FUNCTION_13_0();
  __swift_project_value_buffer(v3, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v6 = *(v5 + 72);
  OUTLINED_FUNCTION_49_0();
  v27 = OUTLINED_FUNCTION_156();
  OUTLINED_FUNCTION_27_2(v27, xmmword_1939526B0);
  *v1 = 1;
  *v0 = "absoluteTime";
  *(v0 + 8) = 12;
  *(v0 + 16) = 2;
  sub_19393C400();
  OUTLINED_FUNCTION_11_0();
  v8 = *(v7 + 104);
  v9 = OUTLINED_FUNCTION_50_1();
  (v8)(v9);
  v10 = OUTLINED_FUNCTION_61();
  *v11 = 2;
  *v10 = "donationTime";
  v10[1] = 12;
  v12 = OUTLINED_FUNCTION_41(v10);
  (v8)(v12);
  v13 = OUTLINED_FUNCTION_9_4((v1 + 2 * v6));
  v14 = OUTLINED_FUNCTION_5_4(v13, "ifSessionId");
  (v8)(v14);
  v15 = OUTLINED_FUNCTION_13((v1 + 3 * v6));
  v16 = OUTLINED_FUNCTION_5_4(v15, "actionStatementId");
  (v8)(v16);
  v17 = OUTLINED_FUNCTION_19_2((v1 + 4 * v6));
  *v17 = "donationTrigger";
  *(v17 + 1) = 15;
  v18 = OUTLINED_FUNCTION_41(v17);
  (v8)(v18);
  v19 = OUTLINED_FUNCTION_44(5 * v6);
  *v20 = 6;
  *v19 = "wasTupleDonated";
  v19[1] = 15;
  v21 = OUTLINED_FUNCTION_41(v19);
  (v8)(v21);
  v22 = OUTLINED_FUNCTION_30_0((v1 + 6 * v6));
  *v22 = "tuple";
  *(v22 + 1) = 5;
  v23 = OUTLINED_FUNCTION_41(v22);
  (v8)(v23);
  v24 = OUTLINED_FUNCTION_44(7 * v6);
  *v25 = 8;
  *v24 = "candidates";
  *(v24 + 8) = 10;
  *(v24 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v8();
  return sub_19393C410();
}

void sub_19352C158()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_53_4();
  while (1)
  {
    v4 = OUTLINED_FUNCTION_124();
    if (v0 || (v5 & 1) != 0)
    {
      break;
    }

    switch(v4)
    {
      case 1:
        v6 = v1;
        goto LABEL_11;
      case 2:
        v6 = v1 + *(type metadata accessor for IntelligenceFlowFeedbackLearning.Event.InteractionDonation.Ended(0) + 20);
LABEL_11:
        sub_1934976E4(v6, 26211, 0xE200000000000000, v3, v2);
        continue;
      case 3:
        type metadata accessor for IntelligenceFlowFeedbackLearning.Event.InteractionDonation.Ended(0);
        type metadata accessor for AIML.UUID(0);
        OUTLINED_FUNCTION_111();
        goto LABEL_14;
      case 4:
        type metadata accessor for IntelligenceFlowFeedbackLearning.Event.InteractionDonation.Ended(0);
        OUTLINED_FUNCTION_113();
        sub_19393C220();
        continue;
      case 5:
        v7 = type metadata accessor for IntelligenceFlowFeedbackLearning.Event.InteractionDonation.Ended(0);
        OUTLINED_FUNCTION_160(*(v7 + 32));
        sub_1934982A8();
        continue;
      case 6:
        type metadata accessor for IntelligenceFlowFeedbackLearning.Event.InteractionDonation.Ended(0);
        OUTLINED_FUNCTION_113();
        sub_19393C0F0();
        continue;
      case 7:
        v13 = type metadata accessor for IntelligenceFlowFeedbackLearning.Event.InteractionDonation.Ended(0);
        OUTLINED_FUNCTION_160(*(v13 + 40));
LABEL_14:
        sub_193498018();
        break;
      case 8:
        type metadata accessor for IntelligenceFlowFeedbackLearning.Event.InteractionDonation.Ended(0);
        type metadata accessor for IntelligenceFlowFeedbackLearning.CandidateInteraction(0);
        OUTLINED_FUNCTION_90_8();
        sub_193498238(v8, v9, v10, v11, v12);
        break;
      default:
        continue;
    }
  }

  OUTLINED_FUNCTION_27();
}

void sub_19352C2F8()
{
  OUTLINED_FUNCTION_47_6();
  sub_19352C488();
  if (!v0)
  {
    OUTLINED_FUNCTION_11_1();
    sub_19352C5B8();
    OUTLINED_FUNCTION_11_1();
    sub_19352C6F0();
    v2 = type metadata accessor for IntelligenceFlowFeedbackLearning.Event.InteractionDonation.Ended(0);
    if ((*(v1 + v2[7] + 4) & 1) == 0)
    {
      OUTLINED_FUNCTION_15_11();
      sub_19393C3D0();
    }

    OUTLINED_FUNCTION_238();
    if ((v3 & 1) == 0)
    {
      OUTLINED_FUNCTION_237_0();
      OUTLINED_FUNCTION_78_1();
      sub_193447324(v4, v5, v6, v7, v8, v9);
    }

    if (*(v1 + v2[9]) != 2)
    {
      OUTLINED_FUNCTION_15_11();
      sub_19393C2E0();
    }

    if (*(v1 + v2[10]))
    {
      OUTLINED_FUNCTION_78_1();
      sub_193447600();
    }

    if (*(*(v1 + v2[11]) + 16))
    {
      type metadata accessor for IntelligenceFlowFeedbackLearning.CandidateInteraction(0);
      OUTLINED_FUNCTION_78_1();
      sub_193451CFC(v10, v11, v12, v13, v14, v15);
    }
  }
}

void sub_19352C488()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_77(v3, v4, v5, v6);
  v7 = OUTLINED_FUNCTION_275();
  OUTLINED_FUNCTION_47(v7);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_15_9();
  sub_19393BE00();
  OUTLINED_FUNCTION_76();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_7_26();
  OUTLINED_FUNCTION_212();
  v10 = OUTLINED_FUNCTION_173();
  OUTLINED_FUNCTION_6_3(v10, v11, v0);
  if (v12)
  {
    sub_19344E6DC(v2, &qword_1EAE3A9E8, &qword_19394F800);
  }

  else
  {
    v13 = OUTLINED_FUNCTION_243();
    v14(v13);
    OUTLINED_FUNCTION_231(v1, 1);
    OUTLINED_FUNCTION_362();
    v15 = OUTLINED_FUNCTION_234();
    v16(v15);
  }

  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_27();
}

void sub_19352C5B8()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_77(v2, v3, v4, v5);
  v6 = OUTLINED_FUNCTION_275();
  OUTLINED_FUNCTION_47(v6);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_15_9();
  sub_19393BE00();
  OUTLINED_FUNCTION_76();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_9_18();
  v9 = type metadata accessor for IntelligenceFlowFeedbackLearning.Event.InteractionDonation.Ended(0);
  OUTLINED_FUNCTION_236_0(v9);
  OUTLINED_FUNCTION_212();
  v10 = OUTLINED_FUNCTION_173();
  OUTLINED_FUNCTION_6_3(v10, v11, v0);
  if (v12)
  {
    sub_19344E6DC(v1, &qword_1EAE3A9E8, &qword_19394F800);
  }

  else
  {
    v13 = OUTLINED_FUNCTION_243();
    v14(v13);
    v15 = OUTLINED_FUNCTION_235();
    OUTLINED_FUNCTION_231(v15, v16);
    OUTLINED_FUNCTION_362();
    v17 = OUTLINED_FUNCTION_234();
    v18(v17);
  }

  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_27();
}

void sub_19352C6F0()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_5_8(v2, v3);
  v4 = OUTLINED_FUNCTION_275();
  OUTLINED_FUNCTION_47(v4);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_8();
  type metadata accessor for AIML.UUID(v6);
  OUTLINED_FUNCTION_14_7();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_9_18();
  type metadata accessor for IntelligenceFlowFeedbackLearning.Event.InteractionDonation.Ended(0);
  OUTLINED_FUNCTION_139_6();
  OUTLINED_FUNCTION_20_10();
  if (v8)
  {
    sub_19344E6DC(v0, &qword_1EAE3BCA0, &unk_19395C320);
  }

  else
  {
    OUTLINED_FUNCTION_71_8();
    OUTLINED_FUNCTION_17(v1, 3);
    OUTLINED_FUNCTION_72_5();
  }

  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_27();
}

uint64_t sub_19352C844@<X0>(void (*a1)(uint64_t *__return_ptr)@<X0>, uint64_t (*a2)(void)@<X1>, _BYTE *a3@<X8>)
{
  a1(&v6);
  *a3 = v6;
  a2(0);
  OUTLINED_FUNCTION_227();

  return swift_storeEnumTagMultiPayload();
}

void sub_19352C8A4()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEA9C20);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v1 = OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_4_2(v1, xmmword_19394FBE0);
  OUTLINED_FUNCTION_44_8("started");
  sub_19393C400();
  OUTLINED_FUNCTION_31_1();
  v3 = *(v2 + 104);
  v4 = OUTLINED_FUNCTION_65();
  v3(v4);
  v5 = OUTLINED_FUNCTION_29_1();
  v6 = OUTLINED_FUNCTION_48(v5, "ended");
  v3(v6);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_19352C9D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13)
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_53_4();
  type metadata accessor for IntelligenceFlowFeedbackLearning.Event.InteractionDonation.Ended(0);
  OUTLINED_FUNCTION_37_1();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_10_23();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3C9D0, &qword_19395BBE0);
  v19 = OUTLINED_FUNCTION_47(v18);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_74_5();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_137_2();
  while (1)
  {
    v21 = OUTLINED_FUNCTION_124();
    if (v13 || (v22 & 1) != 0)
    {
      break;
    }

    if (v21 == 2)
    {
      OUTLINED_FUNCTION_73_5();
      sub_193498018();
      v26 = v15;
      OUTLINED_FUNCTION_95_6();
      sub_19352F504(v14, v27);
      OUTLINED_FUNCTION_125_3();
      v15 = &qword_19395BBE0;
      sub_19344F184();
      OUTLINED_FUNCTION_9_14(v16);
      if (v28)
      {
        IntelligenceFlowFeedbackLearning.Event.InteractionDonation.Ended.init()();
        v29 = OUTLINED_FUNCTION_180_3();
        v15 = v26;
        sub_19344E6DC(v29, v30, &qword_19395BBE0);
        OUTLINED_FUNCTION_9_14(v16);
        if (!v28)
        {
          sub_19344E6DC(v16, &qword_1EAE3C9D0, &qword_19395BBE0);
        }
      }

      else
      {
        OUTLINED_FUNCTION_176_1();
        sub_19344E6DC(v31, v32, v33);
        OUTLINED_FUNCTION_104_6();
        OUTLINED_FUNCTION_219();
      }

      OUTLINED_FUNCTION_104_6();
      OUTLINED_FUNCTION_351();
      type metadata accessor for IntelligenceFlowFeedbackLearning.Event.InteractionDonation.StateInfo(0);
      OUTLINED_FUNCTION_141_4();
      swift_storeEnumTagMultiPayload();
    }

    else if (v21 == 1)
    {
      OUTLINED_FUNCTION_191_0();
      sub_193498018();
      OUTLINED_FUNCTION_95_6();
      sub_19352F504(v14, v23);
      v24 = a13;
      if (a13 == 3)
      {
        IntelligenceFlowFeedbackLearning.Event.InteractionDonation.Started.init()();
        v24 = a12;
      }

      v25 = OUTLINED_FUNCTION_242_0(v24);
      type metadata accessor for IntelligenceFlowFeedbackLearning.Event.InteractionDonation.StateInfo(v25);
      OUTLINED_FUNCTION_141_4();
      swift_storeEnumTagMultiPayload();
    }
  }

  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_27();
}

void sub_19352CBFC()
{
  OUTLINED_FUNCTION_26();
  v0 = OUTLINED_FUNCTION_51_6();
  type metadata accessor for IntelligenceFlowFeedbackLearning.Event.InteractionDonation.Ended(v0);
  OUTLINED_FUNCTION_37_1();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_29_13();
  type metadata accessor for IntelligenceFlowFeedbackLearning.Event.InteractionDonation.StateInfo(v2);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_10_23();
  OUTLINED_FUNCTION_19_3();
  sub_19352EF70();
  OUTLINED_FUNCTION_208();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_104_6();
    OUTLINED_FUNCTION_121_0();
    sub_19352F4AC();
    OUTLINED_FUNCTION_63_7();
    sub_193447600();
    v4 = OUTLINED_FUNCTION_179_3();
    sub_19352F504(v4, v5);
  }

  else
  {
    OUTLINED_FUNCTION_78_1();
    sub_193447600();
  }

  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_27();
}

uint64_t sub_19352CDC4(void (*a1)(void), uint64_t (*a2)(void))
{
  a1();
  a2(0);
  OUTLINED_FUNCTION_227();

  return swift_storeEnumTagMultiPayload();
}

void sub_19352CE10()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEA9C38);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v1 = OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_4_2(v1, xmmword_19394FBE0);
  OUTLINED_FUNCTION_69_0("actionEvaluation");
  sub_19393C400();
  OUTLINED_FUNCTION_31_1();
  v3 = *(v2 + 104);
  v4 = OUTLINED_FUNCTION_65();
  v3(v4);
  v5 = OUTLINED_FUNCTION_29_1();
  v6 = OUTLINED_FUNCTION_48(v5, "interactionDonation");
  v3(v6);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_19352CF40()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_53_4();
  type metadata accessor for IntelligenceFlowFeedbackLearning.Event.InteractionDonation(0);
  OUTLINED_FUNCTION_37_1();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5_1();
  v40 = v6 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3C9D8, &qword_19395BBE8);
  v8 = OUTLINED_FUNCTION_47(v7);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_6();
  v39 = v9 - v10;
  OUTLINED_FUNCTION_47_3();
  MEMORY[0x1EEE9AC00](v11);
  v13 = v37 - v12;
  v14 = type metadata accessor for IntelligenceFlowFeedbackLearning.Event.ActionEvaluation(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_5_1();
  v37[1] = v17 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3C9E0, &qword_19395BBF0);
  v19 = OUTLINED_FUNCTION_47(v18);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_74_5();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_372();
  v41 = v21;
  v42 = v3;
  v44 = v2;
  v43 = v13;
  v38 = v14;
  while (1)
  {
    v22 = OUTLINED_FUNCTION_124();
    if (v0 || (v23 & 1) != 0)
    {
      break;
    }

    if (v22 == 2)
    {
      OUTLINED_FUNCTION_45();
      __swift_storeEnumTagSinglePayload(v29, v30, v31, v2);
      OUTLINED_FUNCTION_146();
      sub_193498018();
      OUTLINED_FUNCTION_163_3();
      v32 = v1;
      sub_19352F504(v1, v33);
      v34 = v39;
      sub_19344F184();
      OUTLINED_FUNCTION_9_14(v34);
      if (v28)
      {
        IntelligenceFlowFeedbackLearning.Event.InteractionDonation.init()();
        sub_19344E6DC(v13, &qword_1EAE3C9D8, &qword_19395BBE8);
        OUTLINED_FUNCTION_9_14(v34);
        if (!v28)
        {
          sub_19344E6DC(v34, &qword_1EAE3C9D8, &qword_19395BBE8);
        }
      }

      else
      {
        v35 = OUTLINED_FUNCTION_208();
        sub_19344E6DC(v35, v36, &qword_19395BBE8);
        OUTLINED_FUNCTION_169_2();
        sub_19352F4AC();
      }

      v1 = v32;
      sub_19352F4AC();
      v14 = v38;
      v3 = v42;
LABEL_16:
      type metadata accessor for IntelligenceFlowFeedbackLearning.Event.EventValue(0);
      OUTLINED_FUNCTION_141_4();
      swift_storeEnumTagMultiPayload();
      v2 = v44;
      v13 = v43;
    }

    else if (v22 == 1)
    {
      v24 = v41;
      OUTLINED_FUNCTION_45();
      __swift_storeEnumTagSinglePayload(v25, v26, v27, v14);
      OUTLINED_FUNCTION_234();
      sub_193498018();
      sub_19352F504(v1, type metadata accessor for IntelligenceFlowFeedbackLearning.Event.EventValue);
      sub_19344F184();
      OUTLINED_FUNCTION_6_3(v3, 1, v14);
      if (v28)
      {
        IntelligenceFlowFeedbackLearning.Event.ActionEvaluation.init()();
        v3 = v42;
        sub_19344E6DC(v24, &qword_1EAE3C9E0, &qword_19395BBF0);
        OUTLINED_FUNCTION_6_3(v3, 1, v14);
        if (!v28)
        {
          sub_19344E6DC(v3, &qword_1EAE3C9E0, &qword_19395BBF0);
        }
      }

      else
      {
        sub_19344E6DC(v24, &qword_1EAE3C9E0, &qword_19395BBF0);
        OUTLINED_FUNCTION_170_2();
        sub_19352F4AC();
      }

      sub_19352F4AC();
      goto LABEL_16;
    }
  }

  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_27();
}

void sub_19352D37C()
{
  OUTLINED_FUNCTION_26();
  type metadata accessor for IntelligenceFlowFeedbackLearning.Event.InteractionDonation(0);
  OUTLINED_FUNCTION_37_1();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_29_13();
  type metadata accessor for IntelligenceFlowFeedbackLearning.Event.ActionEvaluation(v2);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_10_23();
  type metadata accessor for IntelligenceFlowFeedbackLearning.Event.EventValue(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5_1();
  sub_19352EF70();
  OUTLINED_FUNCTION_13_0();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_169_2();
    sub_19352F4AC();
    OUTLINED_FUNCTION_63_7();
    sub_193447600();
    v5 = OUTLINED_FUNCTION_179_3();
  }

  else
  {
    OUTLINED_FUNCTION_170_2();
    sub_19352F4AC();
    sub_193447600();
    v6 = type metadata accessor for IntelligenceFlowFeedbackLearning.Event.ActionEvaluation;
    v5 = v0;
  }

  sub_19352F504(v5, v6);
  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_27();
}

void sub_19352D61C()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEA9C68);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v1 = OUTLINED_FUNCTION_47_2();
  OUTLINED_FUNCTION_4_2(v1, xmmword_19394FBB0);
  OUTLINED_FUNCTION_69_0("actionResolutionState");
  sub_19393C400();
  OUTLINED_FUNCTION_31_1();
  v3 = *(v2 + 104);
  v4 = OUTLINED_FUNCTION_65();
  v3(v4);
  v5 = OUTLINED_FUNCTION_29_1();
  v6 = OUTLINED_FUNCTION_48(v5, "taskOutcome");
  v3(v6);
  v7 = OUTLINED_FUNCTION_13_12();
  v8 = OUTLINED_FUNCTION_48(v7, "evaluationNodes");
  v3(v8);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_19352D76C()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_21_0();
  while (1)
  {
    v4 = OUTLINED_FUNCTION_165_0();
    if (v1 || (v5 & 1) != 0)
    {
      break;
    }

    switch(v4)
    {
      case 3:
        sub_193498238(v0 + 48, v3, &type metadata for IntelligenceFlowFeedbackLearning.TaskEvaluationNode, v2, &off_1F07C6EF8);
        break;
      case 2:
        OUTLINED_FUNCTION_89_2();
        sub_193498018();
        break;
      case 1:
        OUTLINED_FUNCTION_125();
        sub_1934982A8();
        break;
    }
  }

  OUTLINED_FUNCTION_27();
}

void sub_19352D838()
{
  OUTLINED_FUNCTION_75_3();
  v2 = *(v0 + 42);
  v3 = *(v0 + 48);
  if ((*(v0 + 9) & 1) == 0)
  {
    OUTLINED_FUNCTION_376();
    OUTLINED_FUNCTION_108_1();
    sub_193447324(v4, v5, v6, v7, v8, v9);
  }

  if (!v1)
  {
    if ((v2 & 1) == 0)
    {
      OUTLINED_FUNCTION_129_4();
      sub_193447600();
    }

    if (*(v3 + 16))
    {
      v10 = OUTLINED_FUNCTION_373();
      sub_193451CFC(v10, v11, v12, v13, v14, v15);
    }
  }
}

void sub_19352D998()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_5_8(v1, v2);
  v3 = OUTLINED_FUNCTION_275();
  OUTLINED_FUNCTION_47(v3);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_8();
  type metadata accessor for AIML.UUID(v5);
  OUTLINED_FUNCTION_14_7();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_7_26();
  OUTLINED_FUNCTION_139_6();
  OUTLINED_FUNCTION_20_10();
  if (v7)
  {
    sub_19344E6DC(v0, &qword_1EAE3BCA0, &unk_19395C320);
  }

  else
  {
    OUTLINED_FUNCTION_71_8();
    OUTLINED_FUNCTION_40_7();
    OUTLINED_FUNCTION_72_5();
  }

  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_27();
}

void sub_19352DADC()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEA9C98);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v1 = OUTLINED_FUNCTION_47_2();
  OUTLINED_FUNCTION_4_2(v1, xmmword_19394FBB0);
  OUTLINED_FUNCTION_69_0("evaluator");
  sub_19393C400();
  OUTLINED_FUNCTION_31_1();
  v3 = *(v2 + 104);
  v4 = OUTLINED_FUNCTION_65();
  v3(v4);
  v5 = OUTLINED_FUNCTION_29_1();
  v6 = OUTLINED_FUNCTION_48(v5, "result");
  v3(v6);
  v7 = OUTLINED_FUNCTION_13_12();
  v8 = OUTLINED_FUNCTION_48(v7, "sources");
  v3(v8);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_19352DC2C()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_21_0();
  while (1)
  {
    v4 = OUTLINED_FUNCTION_165_0();
    if (v1 || (v5 & 1) != 0)
    {
      break;
    }

    switch(v4)
    {
      case 3:
        sub_1934984D4(v0 + 32, v3, &type metadata for IntelligenceFlowFeedbackLearning.EvaluationSource, v2, &off_1F07C6B68);
        break;
      case 2:
        OUTLINED_FUNCTION_89_2();
LABEL_9:
        sub_1934982A8();
        break;
      case 1:
        OUTLINED_FUNCTION_125();
        goto LABEL_9;
    }
  }

  OUTLINED_FUNCTION_27();
}

void sub_19352DCF0()
{
  OUTLINED_FUNCTION_75_3();
  v2 = *(v0 + 25);
  v3 = *(v0 + 32);
  if ((*(v0 + 9) & 1) == 0)
  {
    OUTLINED_FUNCTION_376();
    OUTLINED_FUNCTION_108_1();
    sub_193447324(v4, v5, v6, v7, v8, v9);
  }

  if (!v1)
  {
    if ((v2 & 1) == 0)
    {
      OUTLINED_FUNCTION_129_4();
      sub_193447324(v10, v11, v12, v13, v14, v15);
    }

    if (*(v3 + 16))
    {
      v16 = OUTLINED_FUNCTION_373();
      sub_193498B44(v16, v17, v18, v19, v20, v21);
    }
  }
}

void sub_19352DE18()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, qword_1EAEA9CB0);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v4 = *(v3 + 72);
  OUTLINED_FUNCTION_49_0();
  v5 = OUTLINED_FUNCTION_122_0();
  OUTLINED_FUNCTION_9_8(v5, xmmword_19394FBC0);
  *v0 = 1;
  OUTLINED_FUNCTION_63("candidateCategory");
  sub_19393C400();
  OUTLINED_FUNCTION_11_0();
  v7 = *(v6 + 104);
  v8 = OUTLINED_FUNCTION_50_1();
  (v7)(v8);
  v9 = OUTLINED_FUNCTION_29_1();
  v10 = OUTLINED_FUNCTION_0_0(v9, "candidateIdentifier");
  (v7)(v10);
  v11 = OUTLINED_FUNCTION_13_12();
  v12 = OUTLINED_FUNCTION_0_0(v11, "resolution");
  (v7)(v12);
  v13 = OUTLINED_FUNCTION_13((v0 + 3 * v4));
  *v13 = "outcome";
  *(v13 + 1) = 7;
  v13[16] = v1;
  OUTLINED_FUNCTION_2_0();
  v7();
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_19352DFA4()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_53_4();
  while (1)
  {
    v1 = OUTLINED_FUNCTION_124();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(v1)
    {
      case 1:
        type metadata accessor for IntelligenceFlowFeedbackLearning.CandidateCategory(0);
        OUTLINED_FUNCTION_86();
        goto LABEL_10;
      case 2:
        type metadata accessor for IntelligenceFlowFeedbackLearning.CandidateEvaluation(0);
        type metadata accessor for IntelligenceFlowFeedbackLearning.CandidateIdentifier(0);
        OUTLINED_FUNCTION_111();
LABEL_10:
        sub_193498018();
        continue;
      case 3:
        v3 = type metadata accessor for IntelligenceFlowFeedbackLearning.CandidateEvaluation(0);
        OUTLINED_FUNCTION_160(*(v3 + 24));
        goto LABEL_8;
      case 4:
        type metadata accessor for IntelligenceFlowFeedbackLearning.CandidateEvaluation(0);
        OUTLINED_FUNCTION_55_6();
LABEL_8:
        sub_1934982A8();
        break;
      default:
        continue;
    }
  }

  OUTLINED_FUNCTION_27();
}

void sub_19352E0B8()
{
  OUTLINED_FUNCTION_47_6();
  sub_19352E190();
  if (!v0)
  {
    OUTLINED_FUNCTION_11_1();
    sub_19352E284();
    type metadata accessor for IntelligenceFlowFeedbackLearning.CandidateEvaluation(0);
    OUTLINED_FUNCTION_238();
    if ((v1 & 1) == 0)
    {
      OUTLINED_FUNCTION_147();
      OUTLINED_FUNCTION_78_1();
      sub_193447324(v2, v3, v4, v5, v6, v7);
    }

    OUTLINED_FUNCTION_238();
    if ((v8 & 1) == 0)
    {
      OUTLINED_FUNCTION_147();
      OUTLINED_FUNCTION_78_1();
      sub_193447324(v9, v10, v11, v12, v13, v14);
    }
  }
}

void sub_19352E190()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_5_8(v2, v3);
  v4 = OUTLINED_FUNCTION_275();
  OUTLINED_FUNCTION_47(v4);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_8();
  type metadata accessor for IntelligenceFlowFeedbackLearning.CandidateCategory(v6);
  OUTLINED_FUNCTION_14_7();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_7_26();
  OUTLINED_FUNCTION_139_6();
  OUTLINED_FUNCTION_20_10();
  if (v8)
  {
    sub_19344E6DC(v0, &qword_1EAE3C0E0, &unk_19395C350);
  }

  else
  {
    OUTLINED_FUNCTION_140_3();
    OUTLINED_FUNCTION_40_7();
    OUTLINED_FUNCTION_103_6();
    sub_19352F504(v1, v9);
  }

  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_27();
}

void sub_19352E284()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_5_8(v1, v2);
  v3 = OUTLINED_FUNCTION_275();
  OUTLINED_FUNCTION_47(v3);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_8();
  type metadata accessor for IntelligenceFlowFeedbackLearning.CandidateIdentifier(v5);
  OUTLINED_FUNCTION_14_7();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_9_18();
  v7 = type metadata accessor for IntelligenceFlowFeedbackLearning.CandidateEvaluation(0);
  OUTLINED_FUNCTION_236_0(v7);
  OUTLINED_FUNCTION_139_6();
  OUTLINED_FUNCTION_20_10();
  if (v8)
  {
    sub_19344E6DC(v0, &qword_1EAE3C0D8, &qword_19395AF70);
  }

  else
  {
    OUTLINED_FUNCTION_140_3();
    v9 = OUTLINED_FUNCTION_235();
    OUTLINED_FUNCTION_17(v9, v10);
    OUTLINED_FUNCTION_172_3();
  }

  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_27();
}

void sub_19352E3E0()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEA9CC8);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v1 = OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_4_2(v1, xmmword_19394FBE0);
  OUTLINED_FUNCTION_69_0("identifiers");
  sub_19393C400();
  OUTLINED_FUNCTION_31_1();
  v3 = *(v2 + 104);
  v4 = OUTLINED_FUNCTION_65();
  v3(v4);
  v5 = OUTLINED_FUNCTION_29_1();
  v6 = OUTLINED_FUNCTION_48(v5, "alignment");
  v3(v6);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_19352E510(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_356();
  OUTLINED_FUNCTION_53_4();
  while (1)
  {
    v4 = OUTLINED_FUNCTION_124();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    if (v4 == 2)
    {
      OUTLINED_FUNCTION_28_7();
      sub_1934982A8();
    }

    else if (v4 == 1)
    {
      type metadata accessor for IntelligenceFlowFeedbackLearning.CandidateIdentifier(0);
      v6 = OUTLINED_FUNCTION_86();
      sub_193498238(v6, v7, v8, v9, &off_1F07C6EC8);
    }
  }

  OUTLINED_FUNCTION_355();
}