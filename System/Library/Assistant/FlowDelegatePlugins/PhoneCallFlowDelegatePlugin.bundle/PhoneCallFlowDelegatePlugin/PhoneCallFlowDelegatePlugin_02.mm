uint64_t sub_35C44@<X0>(uint64_t *a1@<X8>)
{
  OUTLINED_FUNCTION_2_0();
  result = (*(v2 + 168))();
  *a1 = result;
  return result;
}

uint64_t sub_35C90()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_35CD0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_35D08@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 128))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_35D5C()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_35DB4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_13_2(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v6 = *(v5 + 64);

  v7 = type metadata accessor for SpeakableString();
  if (!__swift_getEnumTagSinglePayload(v0 + v4, 1, v7))
  {
    (*(*(v7 - 8) + 8))(v0 + v4, v7);
  }

  return _swift_deallocObject(v0, v4 + v6, v3 | 7);
}

uint64_t sub_35EEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology21NonTerminalIntentNodeVSgMd, &_s12SiriOntology21NonTerminalIntentNodeVSgMR);
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_35FA4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology21NonTerminalIntentNodeVSgMd, &_s12SiriOntology21NonTerminalIntentNodeVSgMR);
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_36090()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_360E0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 144))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_36158()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_36194()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_361D4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_13_2(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v6 = *(v5 + 64);

  v7 = type metadata accessor for SpeakableString();
  if (!__swift_getEnumTagSinglePayload(v0 + v4, 1, v7))
  {
    OUTLINED_FUNCTION_40();
    (*(v8 + 8))(v0 + v4, v7);
  }

  return _swift_deallocObject(v0, v4 + v6, v3 | 7);
}

uint64_t sub_362C8()
{
  v2 = type metadata accessor for PhoneSnippetDataModels(0);
  v3 = *(*(v2 - 1) + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(*(v2 - 1) + 64);
  v6 = type metadata accessor for PlayVoicemailModel(0);
  OUTLINED_FUNCTION_7();
  v8 = *(v7 + 80);
  v148 = *(v9 + 64);

  v10 = v0 + v4;
  OUTLINED_FUNCTION_72();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
      OUTLINED_FUNCTION_23_1();
      v54 = OUTLINED_FUNCTION_72();
      v55(v54);
      type metadata accessor for YesNoConfirmationModel(0);
      OUTLINED_FUNCTION_39_21();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
      OUTLINED_FUNCTION_8_5();
      v57 = *(v56 + 8);
      v58 = OUTLINED_FUNCTION_36_3();
      v57(v58);
      v59 = OUTLINED_FUNCTION_29_6();
      v60(v59);
      v61 = OUTLINED_FUNCTION_40_1();
      v57(v61);
      v4 = (v3 + 24) & ~v3;
      goto LABEL_8;
    case 1u:
      goto LABEL_16;
    case 2u:
    case 7u:
    case 8u:
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
      OUTLINED_FUNCTION_23_1();
      v11 = OUTLINED_FUNCTION_72();
      v12(v11);
      type metadata accessor for YesNoConfirmationModel(0);
      OUTLINED_FUNCTION_39_21();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
      OUTLINED_FUNCTION_8_5();
      v136 = v8;
      v14 = *(v13 + 8);
      v15 = OUTLINED_FUNCTION_36_3();
      v14(v15);
      v16 = OUTLINED_FUNCTION_29_6();
      v17(v16);
      v4 = (v3 + 24) & ~v3;
      v18 = OUTLINED_FUNCTION_40_1();
      v14(v18);
      v8 = v136;
LABEL_8:
      v62 = *(v1 + 32);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSSgGMd, &_s10SnippetKit8LoggableVySSSgGMR);
      OUTLINED_FUNCTION_23_5();
      (*(v63 + 8))(v10 + v62);
      goto LABEL_17;
    case 3u:
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
      OUTLINED_FUNCTION_23_1();
      v70 = *(v69 + 8);
      v143 = v5;
      v71 = OUTLINED_FUNCTION_92();
      v70(v71);
      v72 = type metadata accessor for EmergencyCountdownModel(0);
      v73 = OUTLINED_FUNCTION_14_10(v72[5]);
      v70(v73);
      v74 = OUTLINED_FUNCTION_14_10(v72[6]);
      v70(v74);
      v75 = OUTLINED_FUNCTION_14_10(v72[7]);
      v70(v75);
      v76 = OUTLINED_FUNCTION_14_10(v72[8]);
      v70(v76);
      v77 = OUTLINED_FUNCTION_14_10(v72[9]);
      v70(v77);
      v78 = OUTLINED_FUNCTION_14_10(v72[10]);
      v70(v78);
      v79 = OUTLINED_FUNCTION_14_10(v72[11]);
      v70(v79);
      v80 = OUTLINED_FUNCTION_14_10(v72[12]);
      v70(v80);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySbGMd, &_s10SnippetKit8LoggableVySbGMR);
      OUTLINED_FUNCTION_23_1();
      v82 = *(v81 + 8);
      v83 = OUTLINED_FUNCTION_58_11();
      v82(v83);
      v84 = OUTLINED_FUNCTION_14_10(v72[14]);
      v82(v84);
      v85 = OUTLINED_FUNCTION_14_10(v72[15]);
      v82(v85);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
      OUTLINED_FUNCTION_23_1();
      v87 = *(v86 + 8);
      v88 = OUTLINED_FUNCTION_58_11();
      v87(v88);
      v89 = OUTLINED_FUNCTION_14_10(v72[17]);
      v87(v89);
      v5 = v143;
      v4 = (v3 + 24) & ~v3;
      goto LABEL_17;
    case 4u:
      v90 = type metadata accessor for DisambiguationItemWithDirectInvocationModel(0);
      if (!OUTLINED_FUNCTION_59_12(v90))
      {
        type metadata accessor for UUID();
        OUTLINED_FUNCTION_23_5();
        (*(v91 + 8))(v0 + v4);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSSgGMd, &_s10SnippetKit8LoggableVySSSgGMR);
        OUTLINED_FUNCTION_6_71();
        v144 = v5;
        v93 = *(v92 + 8);
        v94 = OUTLINED_FUNCTION_58_11();
        v93(v94);
        v95 = v2[6];
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
        OUTLINED_FUNCTION_23_5();
        (*(v96 + 8))(v10 + v95);
        v97 = v2[7];
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySbGMd, &_s10SnippetKit8LoggableVySbGMR);
        OUTLINED_FUNCTION_23_5();
        (*(v98 + 8))(v10 + v97);
        v99 = OUTLINED_FUNCTION_14_10(v2[8]);
        v93(v99);
        v5 = v144;
        v4 = (v3 + 24) & ~v3;
        v100 = v2[9];
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVyAA16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGGMd, &_s10SnippetKit8LoggableVyAA16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGGMR);
        OUTLINED_FUNCTION_23_5();
        (*(v101 + 8))(v10 + v100);
        v102 = v2[10];
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVy27PhoneCallFlowDelegatePlugin43DisambiguationItemWithDirectInvocationModelV0J4TypeOGMd, &_s10SnippetKit8LoggableVy27PhoneCallFlowDelegatePlugin43DisambiguationItemWithDirectInvocationModelV0J4TypeOGMR);
        OUTLINED_FUNCTION_23_5();
        (*(v103 + 8))(v10 + v102);
      }

      v104 = v10 + *(type metadata accessor for ForeignEmergencyCallDisambiguationModel(0) + 20);
      if (!__swift_getEnumTagSinglePayload(v104, 1, v2))
      {
        type metadata accessor for UUID();
        OUTLINED_FUNCTION_23_5();
        (*(v105 + 8))(v104);
        v145 = v5;
        v106 = v2[5];
        v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSSgGMd, &_s10SnippetKit8LoggableVySSSgGMR);
        OUTLINED_FUNCTION_8_5();
        v146 = v4;
        v108 = *(v107 + 8);
        v108(v104 + v106);
        v109 = v2[6];
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
        OUTLINED_FUNCTION_23_5();
        (*(v110 + 8))(v104 + v109);
        v111 = v2[7];
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySbGMd, &_s10SnippetKit8LoggableVySbGMR);
        OUTLINED_FUNCTION_23_5();
        (*(v112 + 8))(v104 + v111);
        (v108)(v104 + v2[8], v139);
        v4 = v146;
        v113 = v2[9];
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVyAA16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGGMd, &_s10SnippetKit8LoggableVyAA16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGGMR);
        OUTLINED_FUNCTION_23_5();
        v115 = v104 + v113;
        v5 = v145;
        (*(v114 + 8))(v115);
        v116 = v2[10];
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVy27PhoneCallFlowDelegatePlugin43DisambiguationItemWithDirectInvocationModelV0J4TypeOGMd, &_s10SnippetKit8LoggableVy27PhoneCallFlowDelegatePlugin43DisambiguationItemWithDirectInvocationModelV0J4TypeOGMR);
        OUTLINED_FUNCTION_23_5();
        (*(v117 + 8))(v104 + v116);
      }

LABEL_16:

      goto LABEL_17;
    case 5u:

      v64 = type metadata accessor for LocalEmergencyCallDisambiguationModel(0);
      v65 = *(v64 + 28);
      type metadata accessor for UUID();
      OUTLINED_FUNCTION_23_5();
      (*(v66 + 8))(v10 + v65);
      v67 = *(v64 + 32);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
      OUTLINED_FUNCTION_23_5();
      (*(v68 + 8))(v10 + v67);
      goto LABEL_17;
    case 6u:
      goto LABEL_17;
    case 9u:

      v41 = type metadata accessor for SearchCallHistoryModel(0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
      OUTLINED_FUNCTION_6_71();
      v142 = v5;
      v43 = *(v42 + 8);
      v44 = OUTLINED_FUNCTION_58_11();
      v43(v44);
      v45 = v41[6];
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySay27PhoneCallFlowDelegatePlugin06SingleE11RecordModelVGGMd, &_s10SnippetKit8LoggableVySay27PhoneCallFlowDelegatePlugin06SingleE11RecordModelVGGMR);
      OUTLINED_FUNCTION_23_5();
      (*(v46 + 8))(v10 + v45);
      v47 = OUTLINED_FUNCTION_14_10(v41[7]);
      v43(v47);
      v48 = OUTLINED_FUNCTION_14_10(v41[8]);
      v43(v48);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySbGMd, &_s10SnippetKit8LoggableVySbGMR);
      OUTLINED_FUNCTION_23_1();
      v50 = *(v49 + 8);
      v51 = OUTLINED_FUNCTION_58_11();
      v50(v51);
      v52 = OUTLINED_FUNCTION_14_10(v41[10]);
      v50(v52);
      v5 = v142;
      v4 = (v3 + 24) & ~v3;
      v53 = v41[11];
      goto LABEL_22;
    case 0xAu:

      v128 = v6[5];
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySay27PhoneCallFlowDelegatePlugin20SingleVoicemailModelVGGMd, &_s10SnippetKit8LoggableVySay27PhoneCallFlowDelegatePlugin20SingleVoicemailModelVGGMR);
      OUTLINED_FUNCTION_23_5();
      (*(v129 + 8))(v10 + v128);
      v147 = v6[6];
      v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
      OUTLINED_FUNCTION_23_1();
      v132 = *(v131 + 8);
      v132(v10 + v147, v130);
      v132(v10 + v6[7], v130);
      v53 = v6[8];
LABEL_22:
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo13SABaseCommandCGMd, &_s10SnippetKit16CodableAceObjectVySo13SABaseCommandCGMR);
      OUTLINED_FUNCTION_23_5();
      (*(v133 + 8))(v10 + v53);
      goto LABEL_18;
    case 0xBu:

      v19 = type metadata accessor for SingleResultVoicemailModel(0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
      OUTLINED_FUNCTION_6_71();
      v140 = v5;
      v21 = *(v20 + 8);
      v22 = OUTLINED_FUNCTION_58_11();
      v21(v22);
      v23 = OUTLINED_FUNCTION_14_10(*(v19 + 56));
      v21(v23);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
      OUTLINED_FUNCTION_23_1();
      v24 = OUTLINED_FUNCTION_72();
      v25(v24);
      type metadata accessor for SearchCallHistoryBinaryButtonModel(0);
      OUTLINED_FUNCTION_39_21();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo24SABaseClientBoundCommandCGMd, &_s10SnippetKit16CodableAceObjectVySo24SABaseClientBoundCommandCGMR);
      OUTLINED_FUNCTION_8_5();
      v137 = v8;
      v27 = *(v26 + 8);
      v28 = OUTLINED_FUNCTION_36_3();
      v27(v28);
      v29 = OUTLINED_FUNCTION_29_6();
      v30(v29);
      v4 = (v3 + 24) & ~v3;
      v31 = OUTLINED_FUNCTION_40_1();
      v27(v31);
      v8 = v137;
      v5 = v140;
      goto LABEL_17;
    case 0xCu:

      v32 = v10 + *(type metadata accessor for SingleResultCallHistoryModel(0) + 36);
      v33 = type metadata accessor for SearchCallHistoryBinaryButtonModel(0);
      if (OUTLINED_FUNCTION_59_12(v33))
      {
        goto LABEL_18;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
      OUTLINED_FUNCTION_6_71();
      v141 = v5;
      v35 = *(v34 + 8);
      v36 = OUTLINED_FUNCTION_92();
      v35(v36);
      v135 = v2[5];
      v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo24SABaseClientBoundCommandCGMd, &_s10SnippetKit16CodableAceObjectVySo24SABaseClientBoundCommandCGMR);
      OUTLINED_FUNCTION_8_5();
      v138 = v8;
      v39 = *(v38 + 8);
      v39(v32 + v135, v37);
      v40 = OUTLINED_FUNCTION_14_10(v2[6]);
      v35(v40);
      v5 = v141;
      v4 = (v3 + 24) & ~v3;
      v39(v32 + v2[7], v37);
      v8 = v138;
LABEL_17:

LABEL_18:
      v118 = (v5 + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
      v119 = (v118 + v8 + 8) & ~v8;

      v120 = v6[5];
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySay27PhoneCallFlowDelegatePlugin20SingleVoicemailModelVGGMd, &_s10SnippetKit8LoggableVySay27PhoneCallFlowDelegatePlugin20SingleVoicemailModelVGGMR);
      OUTLINED_FUNCTION_23_5();
      (*(v121 + 8))(v0 + v119 + v120);
      v122 = v6[6];
      v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
      OUTLINED_FUNCTION_23_1();
      v125 = *(v124 + 8);
      v125(v0 + v119 + v122, v123);
      v125(v0 + v119 + v6[7], v123);
      v126 = v6[8];
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo13SABaseCommandCGMd, &_s10SnippetKit16CodableAceObjectVySo13SABaseCommandCGMR);
      OUTLINED_FUNCTION_23_5();
      (*(v127 + 8))(v0 + v119 + v126);

      return _swift_deallocObject(v0, v119 + v148, v3 | v8 | 7);
    default:
      goto LABEL_18;
  }
}

uint64_t sub_37180@<X0>(uint64_t *a1@<X8>)
{
  OUTLINED_FUNCTION_2_0();
  result = (*(v2 + 216))();
  *a1 = result;
  return result;
}

uint64_t sub_371CC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_3725C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Input();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(a1, a2, v4);
  if (EnumTagSinglePayload >= 4)
  {
    return EnumTagSinglePayload - 3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_372A4(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 3);
  }

  else
  {
    v5 = 0;
  }

  v6 = type metadata accessor for Input();

  return __swift_storeEnumTagSinglePayload(a1, v5, a3, v6);
}

uint64_t sub_3734C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 112))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_373C8()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 24));

  return _swift_deallocObject(v0, 96, 7);
}

uint64_t sub_37424()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 48));

  __swift_destroy_boxed_opaque_existential_1((v0 + 112));

  return _swift_deallocObject(v0, 160, 7);
}

uint64_t sub_374C8()
{
  OUTLINED_FUNCTION_13_4();
  result = EmergencyCountdownModel.sashTitle.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_374F4()
{
  OUTLINED_FUNCTION_13_4();
  result = SearchCallHistoryBinaryButtonModel.primaryAction.getter();
  *v0 = result;
  return result;
}

uint64_t sub_37520()
{
  OUTLINED_FUNCTION_13_4();
  result = SearchCallHistoryBinaryButtonModel.secondaryText.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_3754C()
{
  OUTLINED_FUNCTION_13_4();
  result = SearchCallHistoryBinaryButtonModel.secondaryAction.getter();
  *v0 = result;
  return result;
}

uint64_t sub_37578(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
  OUTLINED_FUNCTION_20_3();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
LABEL_5:

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo24SABaseClientBoundCommandCGMd, &_s10SnippetKit16CodableAceObjectVySo24SABaseClientBoundCommandCGMR);
  OUTLINED_FUNCTION_20_3();
  if (*(v11 + 84) == a2)
  {
    v8 = v10;
    v9 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v13 = *(a1 + *(a3 + 32) + 8);
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  return (v13 + 1);
}

void sub_37680(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
  OUTLINED_FUNCTION_20_3();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo24SABaseClientBoundCommandCGMd, &_s10SnippetKit16CodableAceObjectVySo24SABaseClientBoundCommandCGMR);
    OUTLINED_FUNCTION_20_3();
    if (*(v13 + 84) != a3)
    {
      *(a1 + *(a4 + 32) + 8) = (a2 - 1);
      return;
    }

    v10 = v12;
    v11 = a1 + *(a4 + 20);
  }

  __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

uint64_t sub_377AC()
{

  OUTLINED_FUNCTION_19_6();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_37868()
{
  OUTLINED_FUNCTION_55_21();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_20_3();
  if (*(v1 + 84) == v0)
  {
    v2 = OUTLINED_FUNCTION_58_12();

    return __swift_getEnumTagSinglePayload(v2, v3, v4);
  }

  else
  {
    OUTLINED_FUNCTION_26_31();
    return (v6 + 1);
  }
}

void sub_37900()
{
  OUTLINED_FUNCTION_25_32();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_20_3();
  if (*(v4 + 84) == v3)
  {
    v5 = OUTLINED_FUNCTION_27_32();

    __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  }

  else
  {
    *(v1 + *(v2 + 20)) = (v0 - 1);
  }
}

uint64_t _s27PhoneCallFlowDelegatePlugin06SearchB17HistoryCATsSimpleC26UnsupportedUnseenDialogIdsOSYAASY8rawValue03RawO0QzvgTW_0()
{
  v1 = OUTLINED_FUNCTION_40_2();
  result = SearchCallHistoryCATsSimple.ConfirmUnseenDialogIds.rawValue.getter(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

unint64_t _s27PhoneCallFlowDelegatePlugin06SearchB17HistoryCATsSimpleC46ErrorWithCodeAppConfigurationRequiredDialogIdsOSYAASY8rawValue03RawS0QzvgTW_0()
{
  v1 = OUTLINED_FUNCTION_40_2();
  result = SearchCallHistoryCATsSimple.ReadSingleVoiceMailRecordDialogIds.rawValue.getter(v1);
  *v0 = result;
  v0[1] = 0xE700000000000000;
  return result;
}

uint64_t sub_37D34()
{
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_36_4();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_37D78()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_37DB0()
{
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_36_4();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_37DF4()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_37F00()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_37F38()
{

  return _swift_deallocObject(v0, 208, 7);
}

uint64_t sub_38000()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 24));

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_38048()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));

  return _swift_deallocObject(v0, 96, 7);
}

uint64_t sub_38088()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 24));

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_380F0()
{
  OUTLINED_FUNCTION_13_4();
  result = SearchCallHistoryModel.appId.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_3811C()
{
  OUTLINED_FUNCTION_13_4();
  result = SearchCallHistoryModel.callRecords.getter();
  *v0 = result;
  return result;
}

uint64_t sub_38148()
{
  OUTLINED_FUNCTION_13_4();
  result = SearchCallHistoryModel.recentsText.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_38174()
{
  OUTLINED_FUNCTION_13_4();
  result = SearchCallHistoryModel.openPhoneText.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_381A0()
{
  OUTLINED_FUNCTION_13_4();
  result = SearchCallHistoryModel.shouldShowBottomView.getter();
  *v0 = result & 1;
  return result;
}

uint64_t sub_381F4()
{
  OUTLINED_FUNCTION_13_4();
  result = SearchCallHistoryModel.shouldReactOpenContact.getter();
  *v0 = result & 1;
  return result;
}

uint64_t sub_38248()
{
  OUTLINED_FUNCTION_13_4();
  result = SearchCallHistoryModel.openPhoneAction.getter();
  *v0 = result;
  return result;
}

uint64_t sub_38274(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
    OUTLINED_FUNCTION_20_3();
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = a3[5];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySay27PhoneCallFlowDelegatePlugin06SingleE11RecordModelVGGMd, &_s10SnippetKit8LoggableVySay27PhoneCallFlowDelegatePlugin06SingleE11RecordModelVGGMR);
      OUTLINED_FUNCTION_20_3();
      if (*(v13 + 84) == a2)
      {
        v10 = v12;
        v11 = a3[6];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySbGMd, &_s10SnippetKit8LoggableVySbGMR);
        OUTLINED_FUNCTION_20_3();
        if (*(v15 + 84) == a2)
        {
          v10 = v14;
          v11 = a3[9];
        }

        else
        {
          v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo13SABaseCommandCGMd, &_s10SnippetKit16CodableAceObjectVySo13SABaseCommandCGMR);
          v11 = a3[11];
        }
      }
    }

    return __swift_getEnumTagSinglePayload(a1 + v11, a2, v10);
  }
}

uint64_t sub_383EC(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
    OUTLINED_FUNCTION_20_3();
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = a4[5];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySay27PhoneCallFlowDelegatePlugin06SingleE11RecordModelVGGMd, &_s10SnippetKit8LoggableVySay27PhoneCallFlowDelegatePlugin06SingleE11RecordModelVGGMR);
      OUTLINED_FUNCTION_20_3();
      if (*(v13 + 84) == a3)
      {
        v10 = v12;
        v11 = a4[6];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySbGMd, &_s10SnippetKit8LoggableVySbGMR);
        OUTLINED_FUNCTION_20_3();
        if (*(v15 + 84) == a3)
        {
          v10 = v14;
          v11 = a4[9];
        }

        else
        {
          v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo13SABaseCommandCGMd, &_s10SnippetKit16CodableAceObjectVySo13SABaseCommandCGMR);
          v11 = a4[11];
        }
      }
    }

    return __swift_storeEnumTagSinglePayload(v5 + v11, a2, a2, v10);
  }

  return result;
}

uint64_t sub_38588()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_38604()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 24));
  OUTLINED_FUNCTION_70();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_38640()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 40));
  OUTLINED_FUNCTION_70();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_38684()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 24));
  __swift_destroy_boxed_opaque_existential_1((v0 + 64));

  return _swift_deallocObject(v0, 144, 7);
}

uint64_t sub_38740@<X0>(uint64_t *a1@<X8>)
{
  result = SingleCallRecordModel.directInvocation.getter();
  *a1 = result;
  return result;
}

uint64_t sub_38770@<X0>(uint64_t *a1@<X8>)
{
  result = SingleCallRecordModel.openContactDirectInvocation.getter();
  *a1 = result;
  return result;
}

uint64_t sub_387A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
    v9 = a1 + *(a3 + 44);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_38834(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
    v8 = v5 + *(a4 + 44);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_388E8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 160))();
  *a2 = result;
  return result;
}

uint64_t sub_38938()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_38988(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin06SearchB24HistoryBinaryButtonModelVSgMd, &_s27PhoneCallFlowDelegatePlugin06SearchB24HistoryBinaryButtonModelVSgMR);
    v9 = a1 + *(a3 + 36);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_38A1C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin06SearchB24HistoryBinaryButtonModelVSgMd, &_s27PhoneCallFlowDelegatePlugin06SearchB24HistoryBinaryButtonModelVSgMR);
    v8 = v5 + *(a4 + 36);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_38B08@<X0>(uint64_t *a1@<X8>)
{
  result = SingleResultVoicemailModel.callbackDirectInvocation.getter();
  *a1 = result;
  return result;
}

uint64_t sub_38B38@<X0>(uint64_t *a1@<X8>)
{
  result = SingleResultVoicemailModel.repeatDirectInvocation.getter();
  *a1 = result;
  return result;
}

uint64_t sub_38B68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
    if (*(*(v8 - 8) + 84) == a2)
    {
      v9 = v8;
      v10 = *(a3 + 52);
    }

    else
    {
      v9 = type metadata accessor for SearchCallHistoryBinaryButtonModel(0);
      v10 = *(a3 + 60);
    }

    return __swift_getEnumTagSinglePayload(a1 + v10, a2, v9);
  }
}

uint64_t sub_38C40(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
    if (*(*(v8 - 8) + 84) == a3)
    {
      v9 = v8;
      v10 = *(a4 + 52);
    }

    else
    {
      v9 = type metadata accessor for SearchCallHistoryBinaryButtonModel(0);
      v10 = *(a4 + 60);
    }

    return __swift_storeEnumTagSinglePayload(v5 + v10, a2, a2, v9);
  }

  return result;
}

uint64_t sub_38D84@<X0>(uint64_t *a1@<X8>)
{
  result = SingleVoicemailModel.openVoicemailRSKE.getter();
  *a1 = result;
  return result;
}

uint64_t sub_38DB4@<X0>(uint64_t *a1@<X8>)
{
  result = SingleVoicemailModel.openContactRSKE.getter();
  *a1 = result;
  return result;
}

uint64_t sub_38DE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
    v9 = a1 + *(a3 + 40);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_38E78(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
    v8 = v5 + *(a4 + 40);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_38F2C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_38F94()
{

  return _swift_deallocObject(v0, 34, 7);
}

uint64_t sub_39068()
{
  OUTLINED_FUNCTION_0_3();
  result = (*(v1 + 224))();
  *v0 = result & 1;
  return result;
}

uint64_t sub_390F0()
{
  OUTLINED_FUNCTION_0_3();
  result = (*(v1 + 248))();
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_39134()
{
  OUTLINED_FUNCTION_0_3();
  result = (*(v1 + 272))();
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_39180()
{
  OUTLINED_FUNCTION_0_3();
  result = (*(v1 + 296))();
  *v0 = result;
  return result;
}

uint64_t sub_3921C()
{
  OUTLINED_FUNCTION_0_3();
  result = (*(v1 + 344))();
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_39268()
{
  OUTLINED_FUNCTION_0_3();
  result = (*(v1 + 368))();
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_392B4()
{
  OUTLINED_FUNCTION_0_3();
  result = (*(v1 + 392))();
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_39300()
{
  OUTLINED_FUNCTION_0_3();
  result = (*(v1 + 416))();
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_3934C()
{
  OUTLINED_FUNCTION_0_3();
  result = (*(v1 + 440))();
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_39398()
{
  OUTLINED_FUNCTION_0_3();
  result = (*(v1 + 464))();
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_393E4()
{
  OUTLINED_FUNCTION_0_3();
  result = (*(v1 + 488))();
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_39430()
{
  OUTLINED_FUNCTION_0_3();
  result = (*(v1 + 512))();
  *v0 = result;
  return result;
}

uint64_t sub_394C4()
{
  OUTLINED_FUNCTION_0_3();
  result = (*(v1 + 536))();
  *v0 = result;
  return result;
}

uint64_t sub_39558()
{
  OUTLINED_FUNCTION_0_3();
  result = (*(v1 + 560))();
  *v0 = result & 1;
  return result;
}

uint64_t sub_395F0()
{
  OUTLINED_FUNCTION_0_3();
  result = (*(v1 + 584))();
  *v0 = result;
  *(v0 + 2) = BYTE2(result);
  return result;
}

uint64_t sub_39644()
{
  OUTLINED_FUNCTION_0_3();
  result = (*(v1 + 608))();
  *v0 = result;
  return result;
}

uint64_t sub_3976C()
{
  OUTLINED_FUNCTION_66();
  v1 = *(v0 + 16);
  OUTLINED_FUNCTION_1_116();
  v3 = v2;
  v4 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  OUTLINED_FUNCTION_1_116();
  v6 = *(v5 + 64);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_7();
  v9 = v8;
  v10 = (v4 + v6 + *(v8 + 80)) & ~*(v8 + 80);
  (*(v3 + 8))(v0 + v4, v1);
  (*(v9 + 8))(v0 + v10, AssociatedTypeWitness);
  OUTLINED_FUNCTION_65();

  return _swift_deallocObject(v11, v12, v13);
}

uint64_t _s27PhoneCallFlowDelegatePlugin22FirstHitIntentResolver33_F6DF120089954B0E13EF06C80F55DC3CLLVMi_0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_39908()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_39944()
{
  swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5Error_pMd, &_ss5Error_pMR);
  type metadata accessor for CheckedContinuation();
  OUTLINED_FUNCTION_23_5();
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_39A74()
{
  OUTLINED_FUNCTION_19_6();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_39AB8()
{

  OUTLINED_FUNCTION_50();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_39AEC()
{

  return _swift_deallocObject(v0, 25, 7);
}

uint64_t sub_39B24@<X0>(_BYTE *a1@<X8>)
{
  result = TUCall.isMicrophoneMuted.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_39B7C@<X0>(_BYTE *a1@<X8>)
{
  result = TUCall.isSpeakerphoneEnabled.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_39BC4@<X0>(_BYTE *a1@<X8>)
{
  result = TUCall.isCameraEnabled.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_39C54@<X0>(uint64_t *a1@<X8>)
{
  result = ButtonConfigurationModel.action.getter();
  *a1 = result;
  return result;
}

uint64_t sub_39C84@<X0>(uint64_t *a1@<X8>)
{
  result = ButtonConfigurationModel.directInvocation.getter();
  *a1 = result;
  return result;
}

uint64_t sub_39CB4(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo13SABaseCommandCGMd, &_s10SnippetKit16CodableAceObjectVySo13SABaseCommandCGMR);
    OUTLINED_FUNCTION_20_3();
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = a3[5];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
      OUTLINED_FUNCTION_20_3();
      if (*(v13 + 84) == a2)
      {
        v10 = v12;
        v11 = a3[6];
      }

      else
      {
        v10 = type metadata accessor for UUID();
        v11 = a3[7];
      }
    }

    return __swift_getEnumTagSinglePayload(a1 + v11, a2, v10);
  }
}

uint64_t sub_39DD4(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo13SABaseCommandCGMd, &_s10SnippetKit16CodableAceObjectVySo13SABaseCommandCGMR);
    OUTLINED_FUNCTION_20_3();
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = a4[5];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
      OUTLINED_FUNCTION_20_3();
      if (*(v13 + 84) == a3)
      {
        v10 = v12;
        v11 = a4[6];
      }

      else
      {
        v10 = type metadata accessor for UUID();
        v11 = a4[7];
      }
    }

    return __swift_storeEnumTagSinglePayload(v5 + v11, a2, a2, v10);
  }

  return result;
}

uint64_t sub_39F78()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_39FB0()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_39FF8()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_3A10C()
{
  OUTLINED_FUNCTION_55_21();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_20_3();
  if (*(v3 + 84) != v1)
  {
    return OUTLINED_FUNCTION_8_78(*(v0 + *(v2 + 28)));
  }

  v4 = OUTLINED_FUNCTION_58_12();

  return __swift_getEnumTagSinglePayload(v4, v5, v6);
}

void sub_3A1A4()
{
  OUTLINED_FUNCTION_126_2();
  OUTLINED_FUNCTION_1_15();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_20_3();
  if (*(v4 + 84) == v3)
  {
    v5 = OUTLINED_FUNCTION_27_32();

    __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  }

  else
  {
    *(v1 + *(v2 + 28)) = v0;
  }
}

uint64_t sub_3A240()
{
  OUTLINED_FUNCTION_98_6();
  if (v2)
  {
    return OUTLINED_FUNCTION_8_78(*v0);
  }

  OUTLINED_FUNCTION_122_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v4 = OUTLINED_FUNCTION_54_0(*(v1 + 28));

  return __swift_getEnumTagSinglePayload(v4, v5, v6);
}

void sub_3A2B8()
{
  OUTLINED_FUNCTION_1_15();
  if (v3 == 2147483646)
  {
    *v1 = v0;
  }

  else
  {
    v4 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    v5 = OUTLINED_FUNCTION_54_0(*(v4 + 28));

    __swift_storeEnumTagSinglePayload(v5, v6, v0, v7);
  }
}

uint64_t sub_3A368(unint64_t *a1, int a2)
{
  if (a2 == 0x7FFFFFFF)
  {
    v2 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v2) = -1;
    }

    return (v2 + 1);
  }

  else
  {
    OUTLINED_FUNCTION_122_3();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    v4 = OUTLINED_FUNCTION_78_11();

    return __swift_getEnumTagSinglePayload(v4, v5, v6);
  }
}

void sub_3A3F0()
{
  OUTLINED_FUNCTION_1_15();
  if (v2 == 0x7FFFFFFF)
  {
    *v1 = (v0 - 1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    v3 = OUTLINED_FUNCTION_78_11();

    __swift_storeEnumTagSinglePayload(v3, v4, v0, v5);
  }
}

uint64_t sub_3A470()
{
  OUTLINED_FUNCTION_1_15();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);

  return __swift_getEnumTagSinglePayload(v1, v0, v2);
}

uint64_t sub_3A4C0()
{
  OUTLINED_FUNCTION_1_15();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v0 = OUTLINED_FUNCTION_27_32();

  return __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
}

uint64_t sub_3A510()
{
  OUTLINED_FUNCTION_98_6();
  if (v2)
  {
    return OUTLINED_FUNCTION_8_78(*v0);
  }

  OUTLINED_FUNCTION_122_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v4 = OUTLINED_FUNCTION_54_0(*(v1 + 24));

  return __swift_getEnumTagSinglePayload(v4, v5, v6);
}

void sub_3A588()
{
  OUTLINED_FUNCTION_1_15();
  if (v3 == 2147483646)
  {
    *v1 = v0;
  }

  else
  {
    v4 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    v5 = OUTLINED_FUNCTION_54_0(*(v4 + 24));

    __swift_storeEnumTagSinglePayload(v5, v6, v0, v7);
  }
}

void protocol witness for RawRepresentable.rawValue.getter in conformance UnsupportedFlowCATsSimple.SearchCallHistoryDialogIds()
{
  OUTLINED_FUNCTION_40_2();
  StartCallCATsSimple.GenericErrorDialogIds.rawValue.getter();
  *v0 = v1;
  v0[1] = 0xE700000000000000;
}

uint64_t sub_3ACFC()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_3AD4C()
{

  OUTLINED_FUNCTION_102_0();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_3ADA0()
{

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_3AE00()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_3AE38()
{

  OUTLINED_FUNCTION_102_0();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_3AE84()
{

  OUTLINED_FUNCTION_102_0();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_3AEC8()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_3AF28@<X0>(_BYTE *a1@<X8>)
{
  OUTLINED_FUNCTION_2_0();
  result = (*(v2 + 120))();
  *a1 = result;
  return result;
}

uint64_t sub_3AFC0@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 88))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_3B060()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_3B0A4()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));

  return _swift_deallocObject(v0, 96, 7);
}

uint64_t sub_3B0E4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_3B120()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 88, 7);
}

uint64_t sub_3B180()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo32SAIntentGroupLaunchAppWithIntentCs5Error_pGMd, &_sScCySo32SAIntentGroupLaunchAppWithIntentCs5Error_pGMR);
  OUTLINED_FUNCTION_23_1();
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_3B210()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_3B258()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_3B2A4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_3B2E0()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_3B3B4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_3B3F0()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_3B42C()
{

  return _swift_deallocObject(v0, 48, 7);
}

unint64_t _s27PhoneCallFlowDelegatePlugin21SuggestionsCATsSimpleC0ab6_StartB9DialogIdsOSYAASY8rawValue03RawM0QzvgTW_0@<X0>(void *a1@<X8>)
{
  result = SuggestionsCATsSimple.PhoneCall_StartFTCallDialogIds.rawValue.getter();
  *a1 = 0xD000000000000010;
  a1[1] = v3;
  return result;
}

uint64_t sub_3B630()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_3B670()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_3B6AC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_3B6EC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_3B724()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_3B80C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_3B854()
{

  OUTLINED_FUNCTION_4_68();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_3B890()
{
  type metadata accessor for TemplatingResult();
  OUTLINED_FUNCTION_23_5();
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (((*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v1 + 8))(v0 + v3);

  return _swift_deallocObject(v0, v4 + 16, v2 | 7);
}

uint64_t sub_3B934()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_3B9B8(unint64_t *a1, int a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v3 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v3) = -1;
    }

    v4 = v3 - 1;
    if (v4 < 0)
    {
      v4 = -1;
    }

    return (v4 + 1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    v7 = OUTLINED_FUNCTION_54_0(*(a3 + 24));

    return __swift_getEnumTagSinglePayload(v7, v8, v9);
  }
}

void *sub_3BA54(void *result, uint64_t a2, int a3, uint64_t a4)
{
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    v6 = OUTLINED_FUNCTION_54_0(*(a4 + 24));

    return __swift_storeEnumTagSinglePayload(v6, v7, a2, v8);
  }

  return result;
}

uint64_t sub_3BADC(unsigned __int8 *a1, int a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v3 = *a1;
    v4 = v3 >= 2;
    v5 = (v3 + 2147483646) & 0x7FFFFFFF;
    if (v4)
    {
      return (v5 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    v8 = OUTLINED_FUNCTION_54_0(*(a3 + 20));

    return __swift_getEnumTagSinglePayload(v8, v9, v10);
  }
}

_BYTE *sub_3BB6C(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    v6 = OUTLINED_FUNCTION_54_0(*(a4 + 20));

    return __swift_storeEnumTagSinglePayload(v6, v7, a2, v8);
  }

  return result;
}

uint64_t sub_3BF30@<X0>(_BYTE *a1@<X8>)
{
  OUTLINED_FUNCTION_2_0();
  result = (*(v2 + 128))();
  *a1 = result;
  return result;
}

uint64_t sub_3BFBC@<X0>(_BYTE *a1@<X8>)
{
  OUTLINED_FUNCTION_2_0();
  result = (*(v2 + 152))();
  *a1 = result;
  return result;
}

uint64_t sub_3C088()
{
  OUTLINED_FUNCTION_13_4();
  result = EmergencyCountdownModel.sashTitle.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_3C0B4()
{
  OUTLINED_FUNCTION_13_4();
  result = YesNoConfirmationModel.yesAction.getter();
  *v0 = result;
  return result;
}

uint64_t sub_3C0E0()
{
  OUTLINED_FUNCTION_13_4();
  result = YesNoConfirmationModel.noText.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_3C10C()
{
  OUTLINED_FUNCTION_13_4();
  result = YesNoConfirmationModel.noAction.getter();
  *v0 = result;
  return result;
}

uint64_t sub_3C138()
{
  OUTLINED_FUNCTION_13_4();
  result = YesNoConfirmationModel.dialogText.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_3C164(uint64_t a1, uint64_t a2, int *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
  OUTLINED_FUNCTION_20_3();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
LABEL_8:

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
  OUTLINED_FUNCTION_20_3();
  if (*(v11 + 84) == a2)
  {
    v8 = v10;
    v12 = a3[5];
LABEL_7:
    v9 = a1 + v12;
    goto LABEL_8;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSSgGMd, &_s10SnippetKit8LoggableVySSSgGMR);
  OUTLINED_FUNCTION_20_3();
  if (*(v14 + 84) == a2)
  {
    v8 = v13;
    v12 = a3[8];
    goto LABEL_7;
  }

  v16 = *(a1 + a3[9] + 8);
  if (v16 >= 0xFFFFFFFF)
  {
    LODWORD(v16) = -1;
  }

  return (v16 + 1);
}

void sub_3C2B8(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
  OUTLINED_FUNCTION_20_3();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
    OUTLINED_FUNCTION_20_3();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = a4[5];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSSgGMd, &_s10SnippetKit8LoggableVySSSgGMR);
      OUTLINED_FUNCTION_20_3();
      if (*(v16 + 84) != a3)
      {
        *(a1 + a4[9] + 8) = (a2 - 1);
        return;
      }

      v10 = v15;
      v14 = a4[8];
    }

    v11 = a1 + v14;
  }

  __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

uint64_t sub_3C430@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 96))();
  *a2 = result;
  return result;
}

uint64_t TrialSmartAppSelectionConfigProvider.__allocating_init(trialConfigSource:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance AddCallParticipantCATsSimple.ErrorRestrictedDeviceByRegionDialogIds()
{
  v1 = OUTLINED_FUNCTION_40_2();
  result = AnnounceGroupFaceTimeInviteCATsSimple.OfferFollowUpIntentDialogIds.rawValue.getter(v1);
  *v0 = result;
  v0[1] = 0xE700000000000000;
  return result;
}

void *CallingIntentRCHFlowStrategy.init(sharedGlobals:appResolved:phoneCallDisplayTextCATsSimple:startCallCATsSimple:)(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  outlined init with take of SPHConversation(a1, (v4 + 2));
  v4[7] = a2;
  v4[8] = a3;
  v4[9] = a4;
  return v4;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance DisambiguationItemWithDirectInvocationModel.ItemType.PhoneNumberCodingKeys@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = DisambiguationItemWithDirectInvocationModel.ItemType.PhoneNumberCodingKeys.init(stringValue:)(a2, a3);
  *a1 = result & 1;
  return result;
}

uint64_t AceOutput.withContextCommandsFirst()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  v1 = OUTLINED_FUNCTION_21(v0);
  __chkstk_darwin(v1);
  AceOutput.commands.getter();

  v3[0] = specialized Array._copyToContiguousArray()();
  specialized MutableCollection<>.sort(by:)(v3);

  AceOutput.flowActivity.getter();
  AceOutput.nlContextUpdate.getter();
  return AceOutput.init(commands:flowActivity:nlContextUpdate:)();
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t AceOutput.copyAndPrepend(commands:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  v2 = OUTLINED_FUNCTION_21(v1);
  __chkstk_darwin(v2);
  OUTLINED_FUNCTION_50_3();
  v3 = AceOutput.commands.getter();

  specialized Array.append<A>(contentsOf:)(v3, specialized Array.count.getter, specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:), specialized Array._copyContents(initializing:));
  AceOutput.flowActivity.getter();
  AceOutput.nlContextUpdate.getter();
  return AceOutput.init(commands:flowActivity:nlContextUpdate:)();
}

uint64_t specialized SetAlgebra<>.init(arrayLiteral:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = 0;
    v3 = (a1 + 32);
    do
    {
      v5 = *v3++;
      v4 = v5;
      if ((v5 & ~v2) == 0)
      {
        v4 = 0;
      }

      v2 |= v4;
      --v1;
    }

    while (v1);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

Swift::Bool (__swiftcall *default argument 0 of AnnotatedAppFinder.init(firstPartyAnnotatedAppStore:thirdPartyAnnotatedAppStore:)())(Swift::String appBundleId)
{
  if (one-time initialization token for instance != -1)
  {
    OUTLINED_FUNCTION_6_8(&one-time initialization token for instance);
  }

  memcpy(__dst, &static PhoneCallFeatureFlags.instance, sizeof(__dst));
  v0 = type metadata accessor for PhoneCallFeatureManager();
  v1 = OUTLINED_FUNCTION_67(v0);
  v21 = &type metadata for PhoneCallFeatureFlags;
  v22 = &protocol witness table for PhoneCallFeatureFlags;
  OUTLINED_FUNCTION_48_3();
  v2 = swift_allocObject();
  OUTLINED_FUNCTION_75(v2, v3, v4, v5, v6, v7, v8, v9, v19);
  v10 = outlined init with take of SPHConversation(&v19, v1 + 16);
  OUTLINED_FUNCTION_77_2(v10, v11, v12, v13, v14, v15, v16, v17, v19, *(&v19 + 1), v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41);
  return AnnotatedAppFinder.isInstalledOnDevice(appBundleId:);
}

uint64_t default argument 1 of AnnotatedAppFinder.init(firstPartyAnnotatedAppStore:thirdPartyAnnotatedAppStore:)()
{
  if (one-time initialization token for instance != -1)
  {
    OUTLINED_FUNCTION_35_4(&one-time initialization token for instance);
  }

  v0 = type metadata accessor for ThirdPartyAnnotatedAppStore();
  OUTLINED_FUNCTION_36_6(v0, &protocol witness table for ThirdPartyAnnotatedAppStore);
}

uint64_t default argument 1 of ContactUnsetRelationshipFlowStrategy.init(sharedGlobals:contactStore:labelTemplates:unsetRelationshipTemplates:displayTextCatFamily:phoneCallCommonCats:)@<X0>(void *a1@<X8>)
{
  v2 = [objc_allocWithZone(CNContactStore) init];
  result = type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for CNContactStore, CNContactStore_ptr);
  a1[3] = result;
  a1[4] = &protocol witness table for CNContactStore;
  *a1 = v2;
  return result;
}

id SharedGlobalsProviding.siriPhoneDefaults.getter@<X0>(void *a1@<X8>)
{
  if (one-time initialization token for instance != -1)
  {
    swift_once();
  }

  v2 = static SiriPhoneDefaults.instance;
  a1[3] = &type metadata for SiriPhoneDefaults;
  a1[4] = &protocol witness table for SiriPhoneDefaults;
  *a1 = v2;

  return v2;
}

uint64_t specialized Array.append<A>(contentsOf:)(uint64_t a1)
{
  return specialized Array.append<A>(contentsOf:)(a1, specialized Array.count.getter, specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:), specialized Array._copyContents(initializing:));
}

{
  return specialized Array.append<A>(contentsOf:)(a1, specialized Array.count.getter, specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:), specialized Array._copyContents(initializing:));
}

{
  return specialized Array.append<A>(contentsOf:)(a1, specialized Array.count.getter, specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:), specialized Array._copyContents(initializing:));
}

{
  return specialized Array.append<A>(contentsOf:)(a1, specialized Array.count.getter, specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:), specialized Array._copyContents(initializing:));
}

{
  return specialized Array.append<A>(contentsOf:)(a1, specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:), &type metadata accessor for DisplayHint);
}

{
  return specialized Array.append<A>(contentsOf:)(a1, specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:), &type metadata accessor for SemanticValue);
}

{
  return specialized Array.append<A>(contentsOf:)(a1, specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:), &type metadata accessor for UsoIdentifier);
}

{
  return specialized Array.append<A>(contentsOf:)(a1, specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:), &type metadata accessor for Siri_Nlu_External_UsoEntityIdentifier);
}

{
  return specialized Array.append<A>(contentsOf:)(a1, specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:), &type metadata accessor for ContactQuery);
}

{
  return specialized Array.append<A>(contentsOf:)(a1, specialized Array.count.getter, specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:), specialized Array._copyContents(initializing:));
}

{
  return specialized Array.append<A>(contentsOf:)(a1, specialized Array.count.getter, specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:), specialized Array._copyContents(initializing:));
}

{
  return specialized Array.append<A>(contentsOf:)(a1, specialized Array.count.getter, specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:), specialized Array._copyContents(initializing:));
}

uint64_t specialized Array.append<A>(contentsOf:)(uint64_t a1, uint64_t (*a2)(void), void (*a3)(uint64_t, uint64_t), uint64_t (*a4)(uint64_t, void, uint64_t))
{
  v9 = a2();
  v10 = (a2)(*v4);
  v11 = __OFADD__(v10, v9);
  result = v10 + v9;
  if (v11)
  {
    __break(1u);
    goto LABEL_8;
  }

  a3(result, 1);
  v13 = *v4;
  v14 = *v4 & 0xFFFFFFFFFFFFFF8;
  a4(v14 + 8 * *(&dword_10 + v14) + 32, (*(&dword_18 + v14) >> 1) - *(&dword_10 + v14), a1);
  v16 = v15;

  if (v16 < v9)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v16 < 1)
  {
LABEL_6:
    *v4 = v13;
    return result;
  }

  v17 = *(v14 + 16);
  v11 = __OFADD__(v17, v16);
  v18 = v17 + v16;
  if (!v11)
  {
    *(v14 + 16) = v18;
    goto LABEL_6;
  }

LABEL_9:
  __break(1u);
  return result;
}

void specialized Array.append<A>(contentsOf:)(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_8_10(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(v4, 1);
  OUTLINED_FUNCTION_51_4();
  if (!v6)
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_12_10();
  if (v7 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_57_0();

  if (!v1)
  {
LABEL_8:
    *v2 = v3;
    return;
  }

  OUTLINED_FUNCTION_49_2();
  if (!v5)
  {
    *(v3 + 16) = v8;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

{
  v4 = OUTLINED_FUNCTION_8_10(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(v4, 1);
  OUTLINED_FUNCTION_51_4();
  if (!v6)
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_12_10();
  if (v7 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriSignals15SignalProviding_pMd, &_s11SiriSignals15SignalProviding_pMR);
  OUTLINED_FUNCTION_76_0();

  if (!v1)
  {
LABEL_8:
    *v2 = v3;
    return;
  }

  OUTLINED_FUNCTION_49_2();
  if (!v5)
  {
    *(v3 + 16) = v8;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

{
  v4 = OUTLINED_FUNCTION_8_10(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(v4, 1);
  OUTLINED_FUNCTION_51_4();
  if (!v6)
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_12_10();
  if (v7 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_57_0();

  if (!v1)
  {
LABEL_8:
    *v2 = v3;
    return;
  }

  OUTLINED_FUNCTION_49_2();
  if (!v5)
  {
    *(v3 + 16) = v8;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

{
  v4 = OUTLINED_FUNCTION_8_10(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(v4, 1);
  OUTLINED_FUNCTION_51_4();
  if (!v6)
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_12_10();
  if (v7 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_57_0();

  if (!v1)
  {
LABEL_8:
    *v2 = v3;
    return;
  }

  OUTLINED_FUNCTION_49_2();
  if (!v5)
  {
    *(v3 + 16) = v8;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

{
  v4 = OUTLINED_FUNCTION_8_10(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(v4, 1);
  OUTLINED_FUNCTION_51_4();
  if (!v6)
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_12_10();
  if (v7 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology22UsoEntity_common_AgentC5agent_27PhoneCallFlowDelegatePlugin0hI11ContactRoleO07contactN0tMd, &_s12SiriOntology22UsoEntity_common_AgentC5agent_27PhoneCallFlowDelegatePlugin0hI11ContactRoleO07contactN0tMR);
  OUTLINED_FUNCTION_76_0();

  if (!v1)
  {
LABEL_8:
    *v2 = v3;
    return;
  }

  OUTLINED_FUNCTION_49_2();
  if (!v5)
  {
    *(v3 + 16) = v8;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

uint64_t specialized Array.append<A>(contentsOf:)(unint64_t a1)
{
  v3 = specialized Array.count.getter(a1);
  v4 = specialized Array.count.getter(*v1);
  v5 = __OFADD__(v4, v3);
  result = v4 + v3;
  if (v5)
  {
    __break(1u);
    goto LABEL_8;
  }

  specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)();
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  specialized Array._copyContents(initializing:)(v8 + 8 * *(&dword_10 + v8) + 32, (*(&dword_18 + v8) >> 1) - *(&dword_10 + v8), a1);
  v10 = v9;

  if (v10 < v3)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v10 < 1)
  {
LABEL_6:
    *v1 = v7;
    return result;
  }

  v11 = *(v8 + 16);
  v5 = __OFADD__(v11, v10);
  v12 = v11 + v10;
  if (!v5)
  {
    *(v8 + 16) = v12;
    goto LABEL_6;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t specialized Array.append<A>(contentsOf:)(uint64_t a1, void (*a2)(uint64_t, uint64_t), uint64_t (*a3)(void))
{
  v5 = *(a1 + 16);
  v6 = *(*v3 + 16);
  result = v6 + v5;
  if (__OFADD__(v6, v5))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  a2(result, 1);
  v9 = *v3;
  if (!*(a1 + 16))
  {

    if (!v5)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v10 = (*(v9 + 24) >> 1) - *(v9 + 16);
  result = a3(0);
  if (v10 < v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_arrayInitWithCopy();

  if (!v5)
  {
LABEL_8:
    *v3 = v9;
    return result;
  }

  v11 = *(v9 + 16);
  v12 = __OFADD__(v11, v5);
  v13 = v11 + v5;
  if (!v12)
  {
    *(v9 + 16) = v13;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t default argument 2 of SmartAppSelectionFeatureManager.init(sharedGlobals:trialSmartAppSelectionConfigProvider:diagnosticLogPermission:)()
{
  type metadata accessor for DiagnosticLogPermission();
  OUTLINED_FUNCTION_39_6();

  return swift_allocObject();
}

uint64_t default argument 4 of PhoneAppResolutionHelper.init(sharedGlobals:eligibleAppsFinder:smartAppSelection:phoneAppResolutionLogger:appUsageProvider:appResolver:)()
{
  type metadata accessor for AppUsageProvider();
  OUTLINED_FUNCTION_39_6();

  return swift_allocObject();
}

uint64_t variable initialization expression of AppSelectionState.forcedDisambiguationShadowPrediction()
{
  OUTLINED_FUNCTION_29_7();
  type metadata accessor for AppResolverResult();
  v0 = OUTLINED_FUNCTION_11_6();

  return __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
}

unint64_t *default argument 0 of AppSelectionUserPersonaCollector.init(userPersonaSignal:)()
{
  v1 = type metadata accessor for SignalComputationContext();
  OUTLINED_FUNCTION_7();
  v3 = v2;
  __chkstk_darwin(v4);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_73();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11SiriSignals13DomainUseCaseOGMd, &_ss23_ContiguousArrayStorageCy11SiriSignals13DomainUseCaseOGMR);
  v5 = type metadata accessor for DomainUseCase();
  OUTLINED_FUNCTION_7();
  v7 = v6;
  v8 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_424FD0;
  (*(v7 + 104))(v9 + v8, enum case for DomainUseCase.phoneCall(_:), v5);
  OUTLINED_FUNCTION_19_3();
  SignalComputationContext.init(bundleIds:entityId:sharedUserId:domainUseCases:)();
  v10 = static DomainUserPersonaSignal.instances(context:)();
  (*(v3 + 8))(v0, v1);
  v11 = specialized _arrayForceCast<A, B>(_:)(v10);

  return v11;
}

unint64_t *specialized _arrayForceCast<A, B>(_:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = _swiftEmptyArrayStorage;
  if (v1)
  {
    v12 = _swiftEmptyArrayStorage;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
    v2 = _swiftEmptyArrayStorage;
    v4 = a1 + 32;
    do
    {
      outlined init with copy of SignalProviding(v4, v10);
      v5 = OUTLINED_FUNCTION_72();
      __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriSignals27AppSelectionSignalComponent_pMd, &_s11SiriSignals27AppSelectionSignalComponent_pMR);
      swift_dynamicCast();
      v12 = v2;
      v8 = v2[2];
      v7 = v2[3];
      if (v8 >= v7 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v7 > 1), v8 + 1, 1);
        v2 = v12;
      }

      v2[2] = v8 + 1;
      outlined init with take of SPHConversation(&v11, &v2[5 * v8 + 4]);
      v4 += 40;
      --v1;
    }

    while (v1);
  }

  return v2;
}

void specialized _arrayForceCast<A, B>(_:)()
{
  OUTLINED_FUNCTION_69_0();
  if (v1)
  {
    v2 = OUTLINED_FUNCTION_43_5();
  }

  else
  {
    v2 = *(&dword_10 + (v0 & 0xFFFFFFFFFFFFFF8));
  }

  if (v2)
  {
    v9 = _swiftEmptyArrayStorage;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2 & ~(v2 >> 63), 0);
    if (v2 < 0)
    {
      __break(1u);
    }

    else
    {
      v3 = 0;
      v4 = v9;
      do
      {
        if ((v0 & 0xC000000000000001) != 0)
        {
          specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v5 = *(v0 + 8 * v3 + 32);
        }

        type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INPerson, INPerson_ptr);
        swift_dynamicCast();
        v9 = v4;
        v7 = v4[2];
        v6 = v4[3];
        if (v7 >= v6 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v6 > 1, v7 + 1, 1);
          v4 = v9;
        }

        ++v3;
        v4[2] = v7 + 1;
        outlined init with take of Any(&v8, &v4[4 * v7 + 4]);
      }

      while (v2 != v3);
    }
  }
}

{
  OUTLINED_FUNCTION_66();
  OUTLINED_FUNCTION_69_0();
  if (v1)
  {
    v2 = OUTLINED_FUNCTION_43_5();
  }

  else
  {
    v2 = *(&dword_10 + (v0 & 0xFFFFFFFFFFFFFF8));
  }

  if (!v2)
  {
LABEL_14:
    OUTLINED_FUNCTION_65();
    return;
  }

  v3 = OUTLINED_FUNCTION_55_5();
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v3, v4, v5);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v6 = 0;
    do
    {
      if ((v0 & 0xC000000000000001) != 0)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v7 = *(v0 + 8 * v6 + 32);
      }

      v8 = type metadata accessor for SiriPhoneContactImpl(0);
      v9 = OUTLINED_FUNCTION_54_4(v8);
      if (v11)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v7 + 1, 1);
        v12 = v22[3];
      }

      else
      {
        v12 = v9;
      }

      ++v6;
      __swift_mutable_project_boxed_opaque_existential_1(v22, v12);
      OUTLINED_FUNCTION_44_0();
      __chkstk_darwin(v13);
      OUTLINED_FUNCTION_4();
      v15 = OUTLINED_FUNCTION_53_4(v14);
      v16(v15);
      v17 = OUTLINED_FUNCTION_52_0();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)(v17, v18, v19, v20, v21);
      __swift_destroy_boxed_opaque_existential_1(v22);
    }

    while (v2 != v6);
    goto LABEL_14;
  }

  __break(1u);
}

{
  OUTLINED_FUNCTION_66();
  OUTLINED_FUNCTION_69_0();
  if (v1)
  {
    v2 = OUTLINED_FUNCTION_43_5();
  }

  else
  {
    v2 = *(&dword_10 + (v0 & 0xFFFFFFFFFFFFFF8));
  }

  if (!v2)
  {
LABEL_14:
    OUTLINED_FUNCTION_65();
    return;
  }

  v3 = OUTLINED_FUNCTION_55_5();
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v3, v4, v5);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v6 = 0;
    do
    {
      if ((v0 & 0xC000000000000001) != 0)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v7 = *(v0 + 8 * v6 + 32);
      }

      v8 = type metadata accessor for UsoEntity_common_Group();
      v9 = OUTLINED_FUNCTION_54_4(v8);
      if (v11)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v7 + 1, 1);
        v12 = v22[3];
      }

      else
      {
        v12 = v9;
      }

      ++v6;
      __swift_mutable_project_boxed_opaque_existential_1(v22, v12);
      OUTLINED_FUNCTION_44_0();
      __chkstk_darwin(v13);
      OUTLINED_FUNCTION_4();
      v15 = OUTLINED_FUNCTION_53_4(v14);
      v16(v15);
      v17 = OUTLINED_FUNCTION_52_0();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)(v17, v18, v19, v20, v21);
      __swift_destroy_boxed_opaque_existential_1(v22);
    }

    while (v2 != v6);
    goto LABEL_14;
  }

  __break(1u);
}

id variable initialization expression of BiomeEventSender.discoverabilitySource()
{
  v0 = [BiomeLibrary() Discoverability];
  swift_unknownObjectRelease();
  v1 = [v0 Signals];
  swift_unknownObjectRelease();
  v2 = [v1 source];

  return v2;
}

uint64_t variable initialization expression of CallingIntentBaseFlowStrategy.completionOutputManifest()
{
  OUTLINED_FUNCTION_29_7();
  v0 = type metadata accessor for DialogPhase();
  v1 = OUTLINED_FUNCTION_21(v0);
  __chkstk_darwin(v1);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_73();
  static DialogPhase.completion.getter();
  return OutputGenerationManifest.init(dialogPhase:_:)();
}

uint64_t default argument 8 of CallingIntentBaseFlowStrategy.init(delegate:startCallCATs:startCallCatPatterns:startCallCATsSimple:phoneCallCommonCATs:phoneCallCommonCATsSimple:phoneCallCommonCatPatterns:phoneCallDisplayTextCATsSimple:responseGenerator:siriKitEventSender:appInfoBuilder:)()
{
  OUTLINED_FUNCTION_29_7();
  v1 = type metadata accessor for ResponseFactory();
  OUTLINED_FUNCTION_41_1(v1);
  result = ResponseFactory.init()();
  v0[3] = v1;
  v0[4] = &protocol witness table for ResponseFactory;
  *v0 = result;
  return result;
}

uint64_t variable initialization expression of CallingIntentConfirmationFlowStrategy.confirmationResponse()
{
  OUTLINED_FUNCTION_29_7();
  type metadata accessor for ConfirmationResponse();
  v0 = OUTLINED_FUNCTION_11_6();

  return __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
}

id default argument 3 of CallingIntentContinueInAppFlow.init(factory:rchRecord:sharedGlobals:deviceStateConnection:phoneSettingProvider:)()
{
  v0 = objc_allocWithZone(AFDeviceStateConnection);

  return [v0 init];
}

double default argument 2 of ContactUnsetRelationshipFlowStrategy.init(sharedGlobals:contactStore:labelTemplates:unsetRelationshipTemplates:displayTextCatFamily:phoneCallCommonCats:)@<D0>(uint64_t *a1@<X8>)
{
  a1[3] = &type metadata for LabelTemplatesProvider;
  a1[4] = &protocol witness table for LabelTemplatesProvider;
  OUTLINED_FUNCTION_68_0();
  v2 = swift_allocObject();
  *a1 = v2;
  result = 0.0;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  return result;
}

uint64_t default argument 9 of static ContactResolution.updateSiriKitIntent(siriKitIntent:contactQueries:hasEmergencyContact:app:locale:nlIntent:sharedGlobals:multicardinalIndex:siriKitEventSender:emergencyContactResolution:)()
{
  type metadata accessor for EmergencyContactResolution();
  OUTLINED_FUNCTION_39_6();

  return swift_allocObject();
}

uint64_t default argument 1 of CallingIntentContinueInAppStrategy.init(sharedGlobals:startCallCATsSimple:phoneCallDisplayTextCATsSimple:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v5 = type metadata accessor for CATOption();
  v6 = OUTLINED_FUNCTION_21(v5);
  __chkstk_darwin(v6);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_73();
  a4(0);
  static CATOption.defaultMode.getter();
  return CATWrapperSimple.__allocating_init(options:globals:)();
}

uint64_t variable initialization expression of CallNotificationContextProvider.cache()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin21DictionaryBackedCacheCySSAA0B27NotificationContextProviderC0bI0VGMd, &_s27PhoneCallFlowDelegatePlugin21DictionaryBackedCacheCySSAA0B27NotificationContextProviderC0bI0VGMR);
  OUTLINED_FUNCTION_67(v0);
  OUTLINED_FUNCTION_27_4();
  return specialized DictionaryBackedCache.init(timeToLiveInSeconds:capacity:nowDateProvider:)(5, v1, 0, v2, v3, 30.0);
}

uint64_t variable initialization expression of CallStateNotificationManager.tasks()
{
  type metadata accessor for UUID();
  type metadata accessor for CallStateOneTimeTask(0);
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);

  return Dictionary.init(dictionaryLiteral:)();
}

uint64_t key path getter for SiriEnvironment.userIdentity : SiriEnvironment@<X0>(uint64_t *a1@<X8>)
{
  result = SiriEnvironment.userIdentity.getter();
  *a1 = result;
  return result;
}

uint64_t variable initialization expression of CommunalDeviceEmergencyFlow._identifiedUser(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  swift_getKeyPath();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_41_1(v5);
  return SiriEnvironmentValue.init(_:)();
}

uint64_t key path getter for SiriEnvironment.currentRequest : SiriEnvironment@<X0>(uint64_t *a1@<X8>)
{
  result = SiriEnvironment.currentRequest.getter();
  *a1 = result;
  return result;
}

uint64_t default argument 1 of EmergencyContactSlotResolver.init(sharedGlobals:medicalIDStore:)@<X0>(void *a1@<X8>)
{
  v2 = [objc_allocWithZone(HKHealthStore) init];
  v3 = [objc_allocWithZone(HKMedicalIDStore) initWithHealthStore:v2];

  result = type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for HKMedicalIDStore, HKMedicalIDStore_ptr);
  a1[3] = result;
  a1[4] = &protocol witness table for HKMedicalIDStore;
  *a1 = v3;
  return result;
}

uint64_t default argument 4 of CallingIntentContinueInAppFlow.init(factory:rchRecord:sharedGlobals:deviceStateConnection:phoneSettingProvider:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = OUTLINED_FUNCTION_74_1();
  v9 = v8(v7);
  OUTLINED_FUNCTION_39_6();
  result = swift_allocObject();
  v5[3] = v9;
  v5[4] = a5;
  *v5 = result;
  return result;
}

uint64_t default argument 0 of PhoneCallFeatureManager.init(featureFlags:)@<X0>(uint64_t *a1@<X8>)
{
  if (one-time initialization token for instance != -1)
  {
    OUTLINED_FUNCTION_6_8(&one-time initialization token for instance);
  }

  memcpy(__dst, &static PhoneCallFeatureFlags.instance, sizeof(__dst));
  a1[3] = &type metadata for PhoneCallFeatureFlags;
  a1[4] = &protocol witness table for PhoneCallFeatureFlags;
  OUTLINED_FUNCTION_48_3();
  v2 = swift_allocObject();
  *a1 = v2;
  v3 = memcpy((v2 + 16), &static PhoneCallFeatureFlags.instance, 0xC0uLL);
  return OUTLINED_FUNCTION_77_2(v3, v4, v5, v6, v7, v8, v9, v10, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35);
}

uint64_t default argument 4 of HangUpCallIntentRCHFlowStrategy.init(app:sharedGlobals:hangUpCallCATsSimple:responseGenerator:callRegistrationManager:)()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for CallRegistrationManager();
  OUTLINED_FUNCTION_36_6(v0, &protocol witness table for CallRegistrationManager);
}

uint64_t variable initialization expression of IdiomKeyedHintHistory.idiomMap(uint64_t a1)
{
  swift_getTupleTypeMetadata2();
  static Array._allocateUninitialized(_:)();

  return Dictionary.init(dictionaryLiteral:)();
}

uint64_t variable initialization expression of IncomingCallActionConfirmationStrategy.confirmationSynonymMap()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy27PhoneCallFlowDelegatePlugin17FollowUpOfferTypeO_ShyAC0dE4VerbOGtGMd, &_ss23_ContiguousArrayStorageCy27PhoneCallFlowDelegatePlugin17FollowUpOfferTypeO_ShyAC0dE4VerbOGtGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_424FD0;
  *(inited + 32) = 2;
  _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC27PhoneCallFlowDelegatePlugin0eF4VerbO_Tt0g5();
  *(inited + 40) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sShy27PhoneCallFlowDelegatePlugin0aB4VerbOGMd, &_sShy27PhoneCallFlowDelegatePlugin0aB4VerbOGMR);
  lazy protocol witness table accessor for type FollowUpOfferType and conformance FollowUpOfferType();
  return Dictionary.init(dictionaryLiteral:)();
}

uint64_t default argument 2 of IncomingCallActionHandleIntentFlowStrategy.init(strategy:sharedGlobals:callStateNotificationManager:audioSessionManager:sbsManager:)()
{
  if (one-time initialization token for instance != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for CallStateNotificationManager();
  OUTLINED_FUNCTION_36_6(v0, &protocol witness table for CallStateNotificationManager);
}

uint64_t variable initialization expression of LazyContainer.queue(uint64_t a1)
{
  v2 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  OUTLINED_FUNCTION_7();
  v4 = v3;
  __chkstk_darwin(v5);
  OUTLINED_FUNCTION_0_10();
  v6 = type metadata accessor for DispatchQoS();
  v7 = OUTLINED_FUNCTION_21(v6);
  __chkstk_darwin(v7);
  OUTLINED_FUNCTION_1_17();
  v8 = type metadata accessor for OS_dispatch_queue.Attributes();
  v9 = OUTLINED_FUNCTION_21(v8);
  __chkstk_darwin(v9);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_50_3();
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for OS_dispatch_queue, OS_dispatch_queue_ptr);
  swift_getMetatypeMetadata();
  v10._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v10);

  static OS_dispatch_queue.Attributes.concurrent.getter();
  static DispatchQoS.unspecified.getter();
  (*(v4 + 104))(v1, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v2);
  return OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
}

void variable initialization expression of NLTransformer.currentTransformation(uint64_t a1@<X8>)
{
  *(a1 + 80) = 0;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  OUTLINED_FUNCTION_63_2(a1, 0);
}

double default argument 0 of PhoneCallControlNLTransformer.init(cacheProvider:)()
{
  OUTLINED_FUNCTION_29_7();
  v1 = type metadata accessor for SingleIntentCacheProvider();
  v2 = swift_allocObject();
  result = NAN;
  *(v2 + 16) = xmmword_424FE0;
  v0[3] = v1;
  v0[4] = &protocol witness table for SingleIntentCacheProvider;
  *v0 = v2;
  return result;
}

uint64_t default argument 0 of FirstPartyAnnotatedAppStore.init(featureManager:appExistsPredicate:)()
{
  if (one-time initialization token for instance != -1)
  {
    OUTLINED_FUNCTION_6_8(&one-time initialization token for instance);
  }

  memcpy(__dst, &static PhoneCallFeatureFlags.instance, sizeof(__dst));
  v0 = type metadata accessor for PhoneCallFeatureManager();
  v1 = OUTLINED_FUNCTION_67(v0);
  v21 = &type metadata for PhoneCallFeatureFlags;
  v22 = &protocol witness table for PhoneCallFeatureFlags;
  OUTLINED_FUNCTION_48_3();
  v2 = swift_allocObject();
  OUTLINED_FUNCTION_75(v2, v3, v4, v5, v6, v7, v8, v9, v19);
  v10 = outlined init with take of SPHConversation(&v19, v1 + 16);
  OUTLINED_FUNCTION_77_2(v10, v11, v12, v13, v14, v15, v16, v17, v19, *(&v19 + 1), v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41);
  return v1;
}

uint64_t default argument 1 of PhoneAppResolutionHelper.init(sharedGlobals:eligibleAppsFinder:smartAppSelection:phoneAppResolutionLogger:appUsageProvider:appResolver:)()
{
  if (one-time initialization token for instance != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for EligibleAppFinder();
  OUTLINED_FUNCTION_36_6(v0, &protocol witness table for EligibleAppFinder);
}

id default argument 1 of PhoneAppResolutionLogger.init(sharedGlobals:messageStream:eligibleAppsFinder:)()
{
  v0 = [objc_opt_self() sharedAnalytics];
  v1 = [v0 defaultMessageStream];

  return v1;
}

uint64_t default argument 1 of TemplatingParallelizer.init(name:timeout:qos:)@<X0>(void *a1@<X8>)
{
  *a1 = 500;
  v2 = enum case for DispatchTimeInterval.milliseconds(_:);
  type metadata accessor for DispatchTimeInterval();
  OUTLINED_FUNCTION_23_1();
  v5 = *(v4 + 104);

  return v5(a1, v2, v3);
}

uint64_t variable initialization expression of PhoneCallFeatureFlags._pommesGeoSearchFlag()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy12FeatureFlags0dE3Key_pGMd, &_ss23_ContiguousArrayStorageCy12FeatureFlags0dE3Key_pGMR);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_424FF0;
  *(v0 + 56) = &type metadata for SiriPhoneFeature;
  *(v0 + 64) = lazy protocol witness table accessor for type SiriPhoneFeature and conformance SiriPhoneFeature();
  *(v0 + 32) = 5;
  *(v0 + 96) = &type metadata for PommesFeature;
  *(v0 + 104) = lazy protocol witness table accessor for type PommesFeature and conformance PommesFeature();
  return v0;
}

uint64_t variable initialization expression of PhoneCallFeatureFlags._siriCallExperiencePhoneAppFlag(uint64_t a1, uint64_t (*a2)(void), char a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy12FeatureFlags0dE3Key_pGMd, &_ss23_ContiguousArrayStorageCy12FeatureFlags0dE3Key_pGMR);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_424FD0;
  *(v6 + 56) = a1;
  *(v6 + 64) = a2();
  *(v6 + 32) = a3;
  return v6;
}

uint64_t variable initialization expression of PhoneCallFeatureFlags._siriInCallFlag(uint64_t a1, uint64_t (*a2)(void))
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy12FeatureFlags0dE3Key_pGMd, &_ss23_ContiguousArrayStorageCy12FeatureFlags0dE3Key_pGMR);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_424FD0;
  *(v4 + 56) = a1;
  *(v4 + 64) = a2();
  return v4;
}

id default argument 4 of static StartCallRCHFlowDelegate.makeLaunchAppCommandForHandle(app:sharedGlobals:intent:intentResponse:biomeEventSender:unsupportedFlowCats:_:)@<X0>(void *a1@<X8>)
{
  if (one-time initialization token for instance != -1)
  {
    swift_once();
  }

  v2 = static BiomeEventSender.instance;
  a1[3] = &type metadata for BiomeEventSender;
  a1[4] = &protocol witness table for BiomeEventSender;
  *a1 = v2;

  return v2;
}

uint64_t default argument 4 of IncomingCallActionConfirmationStrategy.init(incomingCallIntentResponse:incomingCallCats:sharedGlobals:announceCallsContext:phoneCommonCats:phoneCallCommonCatPatterns:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
{
  v6 = type metadata accessor for CATOption();
  v7 = OUTLINED_FUNCTION_21(v6);
  __chkstk_darwin(v7);
  v8 = OUTLINED_FUNCTION_0_10();
  v9 = a3(v8);
  OUTLINED_FUNCTION_47_5(v9);
  v10 = OUTLINED_FUNCTION_38_2();
  return a4(v10);
}

uint64_t default argument 5 of IncomingCallActionConfirmationStrategy.init(incomingCallIntentResponse:incomingCallCats:sharedGlobals:announceCallsContext:phoneCommonCats:phoneCallCommonCatPatterns:)@<X0>(uint64_t (*a1)(uint64_t)@<X2>, uint64_t a2@<X3>, uint64_t *a3@<X8>)
{
  v6 = type metadata accessor for CATOption();
  v7 = OUTLINED_FUNCTION_21(v6);
  __chkstk_darwin(v7);
  v8 = OUTLINED_FUNCTION_1_17();
  v9 = a1(v8);
  static CATOption.defaultMode.getter();
  result = CATWrapper.__allocating_init(options:globals:)();
  a3[3] = v9;
  a3[4] = a2;
  *a3 = result;
  return result;
}

uint64_t default argument 10 of CallingIntentBaseFlowStrategy.init(delegate:startCallCATs:startCallCatPatterns:startCallCATsSimple:phoneCallCommonCATs:phoneCallCommonCATsSimple:phoneCallCommonCatPatterns:phoneCallDisplayTextCATsSimple:responseGenerator:siriKitEventSender:appInfoBuilder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = OUTLINED_FUNCTION_74_1();
  v8 = v7(v6);
  OUTLINED_FUNCTION_39_6();
  result = swift_allocObject();
  v4[3] = v8;
  v4[4] = a4;
  *v4 = result;
  return result;
}

uint64_t variable initialization expression of PhoneCallNLv3Intent.appNode()
{
  v0 = type metadata accessor for AppOntologyNode();
  OUTLINED_FUNCTION_41_1(v0);
  return AppOntologyNode.init(name:multicardinal:)();
}

uint64_t variable initialization expression of PhoneCallNLv3Intent.attributes()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology08TerminalB4NodeCy27PhoneCallFlowDelegatePlugin0eF9AttributeOGMd, &_s12SiriOntology08TerminalB4NodeCy27PhoneCallFlowDelegatePlugin0eF9AttributeOGMR);
  OUTLINED_FUNCTION_41_1(v0);
  OUTLINED_FUNCTION_33_6();
  return TerminalOntologyNode.init(name:multicardinal:)();
}

uint64_t variable initialization expression of PhoneCallNLv3Intent.audioRoute()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology08TerminalB4NodeCy27PhoneCallFlowDelegatePlugin0eF10AudioRouteOGMd, &_s12SiriOntology08TerminalB4NodeCy27PhoneCallFlowDelegatePlugin0eF10AudioRouteOGMR);
  OUTLINED_FUNCTION_41_1(v0);
  OUTLINED_FUNCTION_33_6();
  return TerminalOntologyNode.init(name:multicardinal:)();
}

uint64_t variable initialization expression of PhoneCallNLv3Intent.capability()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology08TerminalB4NodeCy27PhoneCallFlowDelegatePlugin0eF10CapabilityOGMd, &_s12SiriOntology08TerminalB4NodeCy27PhoneCallFlowDelegatePlugin0eF10CapabilityOGMR);
  OUTLINED_FUNCTION_41_1(v0);
  OUTLINED_FUNCTION_33_6();
  return TerminalOntologyNode.init(name:multicardinal:)();
}

uint64_t variable initialization expression of PhoneCallNLv3Intent.preferredProvider()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology08TerminalB4NodeCy27PhoneCallFlowDelegatePlugin0eF17PreferredProviderOGMd, &_s12SiriOntology08TerminalB4NodeCy27PhoneCallFlowDelegatePlugin0eF17PreferredProviderOGMR);
  OUTLINED_FUNCTION_41_1(v0);
  OUTLINED_FUNCTION_37_2();
  return TerminalOntologyNode.init(name:multicardinal:)();
}

uint64_t variable initialization expression of PhoneCallNLv3Intent.destinationType()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology08TerminalB4NodeCy27PhoneCallFlowDelegatePlugin0eF15DestinationTypeOGMd, &_s12SiriOntology08TerminalB4NodeCy27PhoneCallFlowDelegatePlugin0eF15DestinationTypeOGMR);
  OUTLINED_FUNCTION_41_1(v0);
  OUTLINED_FUNCTION_37_2();
  return TerminalOntologyNode.init(name:multicardinal:)();
}

uint64_t variable initialization expression of PhoneCallNLv3Intent.contact()
{
  v0 = type metadata accessor for PhoneCallContactOntologyNode(0);
  OUTLINED_FUNCTION_41_1(v0);
  OUTLINED_FUNCTION_37_2();
  return PhoneCallContactOntologyNode.init(name:multicardinal:)();
}

uint64_t variable initialization expression of PhoneCallNLv3Intent.message()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology08TerminalB4NodeCySSGMd, &_s12SiriOntology08TerminalB4NodeCySSGMR);
  OUTLINED_FUNCTION_41_1(v0);
  OUTLINED_FUNCTION_37_2();
  return TerminalOntologyNode.init(name:multicardinal:)();
}

uint64_t variable initialization expression of PhoneCallNLv3Intent.noun(uint64_t *a1, uint64_t *a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  OUTLINED_FUNCTION_41_1(v2);
  return TerminalOntologyNode.init(name:multicardinal:)();
}

uint64_t variable initialization expression of PhoneCallNLv3Intent.voiceMail()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy12SiriOntology0E4Node_pGMd, &_ss23_ContiguousArrayStorageCy12SiriOntology0E4Node_pGMR);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_424FF0;
  if (one-time initialization token for voiceMailNoun != -1)
  {
    swift_once();
  }

  v1 = static VoiceMail.voiceMailNoun;
  v2 = OUTLINED_FUNCTION_72();
  *(v0 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  *(v0 + 64) = OUTLINED_FUNCTION_30_4(&lazy protocol witness table cache variable for type TerminalOntologyNode<VoiceMail.VoiceMailNoun> and conformance TerminalOntologyNode<A>);
  *(v0 + 32) = v1;
  v4 = one-time initialization token for voiceMailVerb;

  if (v4 != -1)
  {
    swift_once();
  }

  v5 = static VoiceMail.voiceMailVerb;
  v6 = OUTLINED_FUNCTION_72();
  *(v0 + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
  *(v0 + 104) = OUTLINED_FUNCTION_30_4(&lazy protocol witness table cache variable for type TerminalOntologyNode<VoiceMail.VoiceMailVerb> and conformance TerminalOntologyNode<A>);
  *(v0 + 72) = v5;
  v8 = type metadata accessor for NonTerminalOntologyNode();
  OUTLINED_FUNCTION_41_1(v8);

  return NonTerminalOntologyNode.init(name:multicardinal:childNodes:)();
}

uint64_t variable initialization expression of PhoneCallNLv3Intent.smsGroup()
{
  v0 = type metadata accessor for SmsGroupOntologyNode(0);
  OUTLINED_FUNCTION_41_1(v0);
  return SmsGroupOntologyNode.init(name:multicardinal:)();
}

uint64_t default argument 3 of PhoneCallRecord.init(callRecord:options:appInfoBuilder:locale:)()
{
  static Device.current.getter();
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  OUTLINED_FUNCTION_72();
  dispatch thunk of DeviceState.siriLocale.getter();
  return __swift_destroy_boxed_opaque_existential_1(v1);
}

uint64_t default argument 3 of PhoneCallStrategy.init(catFamily:catPatternFamily:responseGenerator:appInfoBuilder:deviceState:)()
{
  OUTLINED_FUNCTION_29_7();
  v1 = type metadata accessor for AppInfoBuilder();
  OUTLINED_FUNCTION_39_6();
  result = swift_allocObject();
  v0[3] = v1;
  v0[4] = &protocol witness table for AppInfoBuilder;
  *v0 = result;
  return result;
}

uint64_t default argument 0 of PhoneContactResolver.init(configCache:queryCache:resolver:)()
{
  type metadata accessor for ContactResolverConfigHashable(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay13SiriInference12ContactQueryVGMd, &_sSay13SiriInference12ContactQueryVGMR);
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type ContactResolverConfigHashable and conformance ContactResolverConfigHashable, type metadata accessor for ContactResolverConfigHashable, &protocol conformance descriptor for ContactResolverConfigHashable);
  OUTLINED_FUNCTION_71();

  return Dictionary.init(minimumCapacity:)();
}

uint64_t default argument 1 of PhoneContactResolver.init(configCache:queryCache:resolver:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay13SiriInference12ContactQueryVGMd, &_sSay13SiriInference12ContactQueryVGMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay13SiriInference08ResolvedA10KitContactVGMd, &_sSay13SiriInference08ResolvedA10KitContactVGMR);
  lazy protocol witness table accessor for type [ContactQuery] and conformance <A> [A]();
  OUTLINED_FUNCTION_71();

  return Dictionary.init(minimumCapacity:)();
}

uint64_t default argument 4 of static PhoneDomainContextMetricsUtils.populatePhoneDomainContext(phoneCallNLIntent:contextNLType:app:resolvedSiriKitContacts:callStateProvider:)@<X0>(uint64_t *a1@<X8>)
{
  if (one-time initialization token for instance != -1)
  {
    swift_once();
  }

  a1[3] = &type metadata for CallStateProvider;
  a1[4] = &protocol witness table for CallStateProvider;
  OUTLINED_FUNCTION_70();
  v2 = swift_allocObject();
  *a1 = v2;

  return outlined init with copy of CallStateProvider(&static CallStateProvider.instance, v2 + 16);
}

uint64_t default argument 2 of static PhoneReferenceResolution.resolveEntity(_:referenceResolver:matchedResultsSetting:)@<X0>(unsigned int *a1@<X0>, void (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v4 = *a1;
  a2(0);
  OUTLINED_FUNCTION_23_1();
  v7 = *(v6 + 104);

  return v7(a3, v4, v5);
}

void variable initialization expression of PluginPrewarmProvider.queue()
{
  OUTLINED_FUNCTION_66();
  type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  OUTLINED_FUNCTION_7();
  __chkstk_darwin(v0);
  OUTLINED_FUNCTION_0_10();
  type metadata accessor for OS_dispatch_queue.Attributes();
  OUTLINED_FUNCTION_23_1();
  __chkstk_darwin(v1);
  OUTLINED_FUNCTION_1_17();
  v2 = type metadata accessor for DispatchQoS();
  v3 = OUTLINED_FUNCTION_21(v2);
  __chkstk_darwin(v3);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_50_3();
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for OS_dispatch_queue, OS_dispatch_queue_ptr);
  static DispatchQoS.userInteractive.getter();
  OUTLINED_FUNCTION_9_5();
  lazy protocol witness table accessor for type UUID and conformance UUID(v4, v5, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  v6 = OUTLINED_FUNCTION_10_9(&lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A]);
  OUTLINED_FUNCTION_25_1(v6);
  v7 = OUTLINED_FUNCTION_45_2();
  v8(v7);
  OUTLINED_FUNCTION_26_6(28, 0x8000000000456C20);
  OUTLINED_FUNCTION_65();
}

void variable initialization expression of EligibleAppFinder.queue()
{
  OUTLINED_FUNCTION_66();
  type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  OUTLINED_FUNCTION_7();
  __chkstk_darwin(v0);
  OUTLINED_FUNCTION_0_10();
  type metadata accessor for OS_dispatch_queue.Attributes();
  OUTLINED_FUNCTION_23_1();
  __chkstk_darwin(v1);
  OUTLINED_FUNCTION_1_17();
  v2 = type metadata accessor for DispatchQoS();
  v3 = OUTLINED_FUNCTION_21(v2);
  __chkstk_darwin(v3);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_50_3();
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for OS_dispatch_queue, OS_dispatch_queue_ptr);
  static DispatchQoS.userInteractive.getter();
  OUTLINED_FUNCTION_9_5();
  lazy protocol witness table accessor for type UUID and conformance UUID(v4, v5, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  v6 = OUTLINED_FUNCTION_10_9(&lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A]);
  OUTLINED_FUNCTION_25_1(v6);
  v7 = OUTLINED_FUNCTION_45_2();
  v8(v7);
  OUTLINED_FUNCTION_26_6(30, 0x8000000000456C40);
  OUTLINED_FUNCTION_65();
}

uint64_t variable initialization expression of ReaderNlIntent.traversableIntentNode()
{
  OUTLINED_FUNCTION_29_7();
  type metadata accessor for NonTerminalIntentNode();
  v0 = OUTLINED_FUNCTION_11_6();

  return __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
}

uint64_t default argument 6 of StartCallCatTemplatingService.init(sharedGlobals:startCallCats:displayTextCats:phoneCallCommonCats:unsupportedFlowCats:appInfoBuilder:operationManager:)(uint64_t (*a1)(void), uint64_t a2, uint64_t (*a3)(void))
{
  a1(0);
  swift_allocObject();
  return a3();
}

uint64_t default argument 2 of AddCallParticipantHandleIntentFollowUpFlow.init(rchRecord:sharedGlobals:patterns:)@<X0>(uint64_t (*a1)(uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = type metadata accessor for CATOption();
  v7 = OUTLINED_FUNCTION_21(v6);
  __chkstk_darwin(v7);
  v8 = OUTLINED_FUNCTION_1_17();
  v9 = a1(v8);
  static CATOption.defaultMode.getter();
  result = CATWrapper.__allocating_init(options:globals:)();
  a3[3] = v9;
  a3[4] = a2;
  *a3 = result;
  return result;
}

uint64_t default argument 2 of ActionableCallControlFlow.init(sharedGlobals:action:phoneCallControlCATsSimple:)(uint64_t (*a1)(uint64_t), uint64_t (*a2)(uint64_t))
{
  v4 = type metadata accessor for CATOption();
  v5 = OUTLINED_FUNCTION_21(v4);
  __chkstk_darwin(v5);
  v6 = OUTLINED_FUNCTION_0_10();
  v7 = a1(v6);
  OUTLINED_FUNCTION_47_5(v7);
  v8 = OUTLINED_FUNCTION_38_2();
  return a2(v8);
}

uint64_t default argument 3 of PhoneIncomingCall.init(intentResponse:siriLocale:options:appInfoBuilder:)(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_74_1();
  v6 = v5(v4);
  OUTLINED_FUNCTION_39_6();
  result = swift_allocObject();
  v2[3] = v6;
  v2[4] = a2;
  *v2 = result;
  return result;
}

uint64_t default argument 1 of SmartAppSelectionFeatureManager.init(sharedGlobals:trialSmartAppSelectionConfigProvider:diagnosticLogPermission:)()
{
  v0 = [objc_opt_self() clientWithIdentifier:112];
  type metadata accessor for TrialSmartAppSelectionConfigProvider();
  result = swift_allocObject();
  *(result + 16) = v0;
  return result;
}

id default argument 0 of TrialSmartAppSelectionConfigProvider.init(trialConfigSource:)()
{
  v0 = [objc_opt_self() clientWithIdentifier:112];

  return v0;
}

uint64_t variable initialization expression of SharedConfirmationRepromptContext.promptedTypes()
{
  lazy protocol witness table accessor for type SharedConfirmationRepromptContext.PromptType and conformance SharedConfirmationRepromptContext.PromptType();

  return Dictionary.init(dictionaryLiteral:)();
}

uint64_t default argument 6 of SingleCallResultFlow.init(app:callRecord:intent:intentResponse:isIncomingCallFollowupPrompt:sharedGlobals:schGlobals:)()
{
  OUTLINED_FUNCTION_29_7();
  v1 = type metadata accessor for CATOption();
  v2 = OUTLINED_FUNCTION_21(v1);
  __chkstk_darwin(v2);
  OUTLINED_FUNCTION_0_10();
  v3 = type metadata accessor for AppInfoBuilder();
  OUTLINED_FUNCTION_39_6();
  v4 = swift_allocObject();
  v0[3] = v3;
  v0[4] = &protocol witness table for AppInfoBuilder;
  *v0 = v4;
  v5 = type metadata accessor for SearchCallHistoryCATPatternsExecutor(0);
  OUTLINED_FUNCTION_47_5(v5);
  OUTLINED_FUNCTION_38_2();
  v6 = CATWrapper.__allocating_init(options:globals:)();
  v0[8] = v3;
  v0[9] = &protocol witness table for SearchCallHistoryCATPatternsExecutor;
  v0[5] = v6;
  v7 = type metadata accessor for ResponseFactory();
  v8 = OUTLINED_FUNCTION_41_1(v7);
  v9 = ResponseFactory.init()();
  v0[13] = v7;
  v0[14] = &protocol witness table for ResponseFactory;
  v0[10] = v9;
  v10 = type metadata accessor for PhoneCallCommonCATs(0);
  OUTLINED_FUNCTION_47_5(v10);
  OUTLINED_FUNCTION_38_2();
  v11 = CATWrapper.__allocating_init(options:globals:)();
  v12 = type metadata accessor for PhoneCallCommonCATPatternsExecutor(0);
  OUTLINED_FUNCTION_47_5(v12);
  OUTLINED_FUNCTION_38_2();
  v13 = CATWrapper.__allocating_init(options:globals:)();
  v0[19] = v8;
  v0[20] = &protocol witness table for PhoneCallCommonCATPatternsExecutor;
  v0[16] = v13;
  type metadata accessor for CallHistoryPromptDialogProvider();
  OUTLINED_FUNCTION_68_0();
  v14 = swift_allocObject();
  v15 = CallHistoryPromptDialogProvider.init()(v14);
  v16 = type metadata accessor for SearchCallHistoryCATs(0);
  OUTLINED_FUNCTION_47_5(v16);
  OUTLINED_FUNCTION_38_2();
  v17 = CATWrapper.__allocating_init(options:globals:)();
  v18 = type metadata accessor for SearchCallHistoryCATsSimple(0);
  OUTLINED_FUNCTION_47_5(v18);
  OUTLINED_FUNCTION_38_2();
  v19 = CATWrapperSimple.__allocating_init(options:globals:)();
  v20 = type metadata accessor for PhoneCallDisplayTextCATsSimple(0);
  OUTLINED_FUNCTION_47_5(v20);
  OUTLINED_FUNCTION_38_2();
  result = CATWrapperSimple.__allocating_init(options:globals:)();
  v0[15] = v11;
  v0[21] = v15;
  v0[22] = v17;
  v0[23] = v19;
  v0[24] = result;
  return result;
}

double variable initialization expression of SiriPhoneContactImpl.personName@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = xmmword_425000;
  a1[1] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  return result;
}

uint64_t variable initialization expression of SiriPhoneContactImpl.backingContact()
{
  v0 = OUTLINED_FUNCTION_29_7();
  type metadata accessor for BackingContact(v0);
  v1 = OUTLINED_FUNCTION_11_6();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

id variable initialization expression of SiriPhoneDefaults.userDefaults()
{
  v0 = objc_allocWithZone(NSUserDefaults);
  OUTLINED_FUNCTION_37_2();
  return @nonobjc NSUserDefaults.init(suiteName:)(0xD000000000000014, v1);
}

uint64_t default argument 5 of static AnswerCallIntentConversion.convertToIntent(phoneCallNLIntent:app:sharedGlobals:previousIntent:previousIntentResponse:groupResolver:)@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t *a4@<X8>)
{
  a4[3] = a1(0);
  a4[4] = a2;
  __swift_allocate_boxed_opaque_existential_1(a4);
  return a3();
}

void variable initialization expression of TemplatingOperationManager.operationQueue()
{
  OUTLINED_FUNCTION_66();
  type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  OUTLINED_FUNCTION_7();
  __chkstk_darwin(v0);
  OUTLINED_FUNCTION_0_10();
  type metadata accessor for OS_dispatch_queue.Attributes();
  OUTLINED_FUNCTION_23_1();
  __chkstk_darwin(v1);
  OUTLINED_FUNCTION_1_17();
  v2 = type metadata accessor for DispatchQoS();
  v3 = OUTLINED_FUNCTION_21(v2);
  __chkstk_darwin(v3);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_50_3();
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for OS_dispatch_queue, OS_dispatch_queue_ptr);
  static DispatchQoS.userInitiated.getter();
  OUTLINED_FUNCTION_9_5();
  lazy protocol witness table accessor for type UUID and conformance UUID(v4, v5, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  v6 = OUTLINED_FUNCTION_10_9(&lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A]);
  OUTLINED_FUNCTION_25_1(v6);
  v7 = OUTLINED_FUNCTION_45_2();
  v8(v7);
  OUTLINED_FUNCTION_26_6(22, 0x8000000000456DB0);
  OUTLINED_FUNCTION_65();
}

uint64_t variable initialization expression of TemplatingOperationManager.templatingQueue()
{
  v1 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  OUTLINED_FUNCTION_7();
  v3 = v2;
  __chkstk_darwin(v4);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_73();
  v5 = type metadata accessor for OS_dispatch_queue.Attributes();
  v6 = OUTLINED_FUNCTION_21(v5);
  __chkstk_darwin(v6);
  OUTLINED_FUNCTION_0_10();
  v7 = type metadata accessor for DispatchQoS();
  v8 = OUTLINED_FUNCTION_21(v7);
  __chkstk_darwin(v8);
  OUTLINED_FUNCTION_4();
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for OS_dispatch_queue, OS_dispatch_queue_ptr);
  static DispatchQoS.userInteractive.getter();
  static OS_dispatch_queue.Attributes.concurrent.getter();
  (*(v3 + 104))(v0, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v1);
  return OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
}

uint64_t variable initialization expression of TemplatingOperationManager.operations()
{
  type metadata accessor for TemplatingOperation(0);
  lazy protocol witness table accessor for type TemplatingOperationType and conformance TemplatingOperationType();

  return Dictionary.init(dictionaryLiteral:)();
}

uint64_t variable initialization expression of ThirdPartyAnnotatedAppStore.cache()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin21DictionaryBackedCacheCySSAA12AnnotatedAppVGMd, &_s27PhoneCallFlowDelegatePlugin21DictionaryBackedCacheCySSAA12AnnotatedAppVGMR);
  OUTLINED_FUNCTION_67(v0);
  OUTLINED_FUNCTION_27_4();
  return specialized DictionaryBackedCache.init(timeToLiveInSeconds:capacity:nowDateProvider:)(5, v1, 0, v2, v3, 1.0);
}

uint64_t variable initialization expression of AnnounceDropInCallFlow.completionOutputManifest(uint64_t a1)
{
  OUTLINED_FUNCTION_74_1();
  v1 = type metadata accessor for DialogPhase();
  v2 = OUTLINED_FUNCTION_21(v1);
  __chkstk_darwin(v2);
  OUTLINED_FUNCTION_4();
  static DialogPhase.completion.getter();
  return OutputGenerationManifest.init(dialogPhase:_:)();
}

uint64_t variable initialization expression of UnsupportedFlowSearchCallHistoryParameters.nonDefaultAppName()
{
  OUTLINED_FUNCTION_29_7();
  type metadata accessor for SpeakableString();
  v0 = OUTLINED_FUNCTION_11_6();

  return __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
}

id @nonobjc NSUserDefaults.init(suiteName:)(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = String._bridgeToObjectiveC()();
  }

  else
  {
    v3 = 0;
  }

  v4 = [v2 initWithSuiteName:v3];

  return v4;
}

uint64_t protocol witness for SetAlgebra.init() in conformance INCallRecordTypeOptions@<X0>(uint64_t *a1@<X8>)
{
  result = variable initialization expression of IdentifyIncomingCallerDirectAction.callerContactIdentifiers();
  *a1 = result;
  return result;
}

uint64_t protocol witness for SetAlgebra.intersection(_:) in conformance INCallRecordTypeOptions(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_14_11(a1);
  result = specialized OptionSet.intersection(_:)(v2, v3);
  *v1 = result;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance INCallCapability()
{
  v1 = OUTLINED_FUNCTION_17_7();
  INAddCallParticipantIntent.overwriteCallGroups(newCallGroups:)(v1);
  *v0 = v2;
}

NSString protocol witness for static _ObjectiveCBridgeable._unconditionallyBridgeFromObjectiveC(_:) in conformance INPersonHandleLabel@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  result = _ss20_SwiftNewtypeWrapperPss21_ObjectiveCBridgeable8RawValueRpzrlE026_unconditionallyBridgeFromD1CyxAD_01_D5CTypeQZSgFZSo19INPersonHandleLabela_Tt1gq5(a2);
  *a1 = result;
  return result;
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance TUCallStatus@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X8>)
{
  result = TUCallStatus.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 4) = BYTE4(result) & 1;
  return result;
}

void protocol witness for RawRepresentable.init(rawValue:) in conformance INAddCallParticipantParticipantUnsupportedReason(uint64_t a1@<X8>)
{
  INAddCallParticipantParticipantUnsupportedReason.init(rawValue:)();
  *a1 = v2;
  *(a1 + 8) = v3 & 1;
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance INPersonHandleLabel@<X0>(void *a2@<X8>)
{
  v3 = String._bridgeToObjectiveC()();

  *a2 = v3;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance INPersonHandleLabel@<X0>(uint64_t *a1@<X8>)
{
  result = INPersonHandleLabel.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance INPersonHandleLabel(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type INPersonHandleLabel and conformance INPersonHandleLabel, type metadata accessor for INPersonHandleLabel, &protocol conformance descriptor for INPersonHandleLabel);
  v3 = lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type INPersonHandleLabel and conformance INPersonHandleLabel, type metadata accessor for INPersonHandleLabel, &protocol conformance descriptor for INPersonHandleLabel);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

void specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(uint64_t *a1)
{
  v3 = a1[1];
  v4 = _minimumMergeRunLength(_:)(v3);
  if (v4 < v3)
  {
    v5 = v4;
    UninitializedySayxG_SpyxGtSiFZSo13SABaseCommandC_Tt0g5 = _sSa22_allocateUninitializedySayxG_SpyxGtSiFZSo13SABaseCommandC_Tt0g5(v3 / 2);
    v8[0] = v7;
    v8[1] = (v3 / 2);
    specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v8, v9, a1, v5);
    if (v1)
    {
      if (v3 < -1)
      {
        __break(1u);
        goto LABEL_5;
      }
    }

    else if (v3 < -1)
    {
LABEL_12:
      __break(1u);
      return;
    }

    *(&dword_10 + (UninitializedySayxG_SpyxGtSiFZSo13SABaseCommandC_Tt0g5 & 0xFFFFFFFFFFFFFF8)) = 0;

    return;
  }

LABEL_5:
  if (v3 < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v3)
  {
    specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(0, v3, 1, a1);
  }
}

{
  v3 = a1[1];
  v4 = _minimumMergeRunLength(_:)(v3);
  if (v4 < v3)
  {
    v5 = v4;
    UninitializedySayxG_SpyxGtSiFZSo28SANotificationOnDeviceObjectC_Tt0g5 = _sSa22_allocateUninitializedySayxG_SpyxGtSiFZSo28SANotificationOnDeviceObjectC_Tt0g5(v3 / 2);
    v8[0] = v7;
    v8[1] = (v3 / 2);
    specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v8, v9, a1, v5);
    if (v1)
    {
      if (v3 < -1)
      {
        __break(1u);
        goto LABEL_5;
      }
    }

    else if (v3 < -1)
    {
LABEL_12:
      __break(1u);
      return;
    }

    *(&dword_10 + (UninitializedySayxG_SpyxGtSiFZSo28SANotificationOnDeviceObjectC_Tt0g5 & 0xFFFFFFFFFFFFFF8)) = 0;

    return;
  }

LABEL_5:
  if (v3 < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v3)
  {
    specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(0, v3, 1, a1);
  }
}

{
  v3 = a1[1];
  v4 = _minimumMergeRunLength(_:)(v3);
  if (v4 < v3)
  {
    v5 = v4;
    UninitializedySayxG_SpyxGtSiFZSo28SANotificationOnDeviceObjectC_Tt0g5 = _sSa22_allocateUninitializedySayxG_SpyxGtSiFZSo28SANotificationOnDeviceObjectC_Tt0g5(v3 / 2);
    v8[0] = v7;
    v8[1] = (v3 / 2);
    specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v8, v9, a1, v5);
    if (v1)
    {
      if (v3 < -1)
      {
        __break(1u);
        goto LABEL_5;
      }
    }

    else if (v3 < -1)
    {
LABEL_12:
      __break(1u);
      return;
    }

    *(&dword_10 + (UninitializedySayxG_SpyxGtSiFZSo28SANotificationOnDeviceObjectC_Tt0g5 & 0xFFFFFFFFFFFFFF8)) = 0;

    return;
  }

LABEL_5:
  if (v3 < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v3)
  {
    specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(0, v3, 1, a1);
  }
}

{
  v3 = a1[1];
  v4 = _minimumMergeRunLength(_:)(v3);
  if (v4 < v3)
  {
    v5 = v4;
    UninitializedySayxG_SpyxGtSiFZ17SiriAppResolution0D0C_Tt0g5 = _sSa22_allocateUninitializedySayxG_SpyxGtSiFZ17SiriAppResolution0D0C_Tt0g5(v3 / 2);
    v8[0] = v7;
    v8[1] = (v3 / 2);
    specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v8, v9, a1, v5);
    if (v1)
    {
      if (v3 < -1)
      {
        __break(1u);
        goto LABEL_5;
      }
    }

    else if (v3 < -1)
    {
LABEL_12:
      __break(1u);
      return;
    }

    *(&dword_10 + (UninitializedySayxG_SpyxGtSiFZ17SiriAppResolution0D0C_Tt0g5 & 0xFFFFFFFFFFFFFF8)) = 0;

    return;
  }

LABEL_5:
  if (v3 < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v3)
  {
    specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(0, v3, 1, a1);
  }
}

uint64_t specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = *a4;
    v6 = (*a4 + 8 * a3 - 8);
    v7 = result - a3;
    while (2)
    {
      v8 = v7;
      v13 = v6;
      do
      {
        objc_opt_self();
        if (swift_dynamicCastObjCClass())
        {
          v9 = 0;
        }

        else
        {
          objc_opt_self();
          if (swift_dynamicCastObjCClass())
          {
            v9 = 1;
          }

          else
          {
            v9 = 2;
          }
        }

        objc_opt_self();
        result = swift_dynamicCastObjCClass();
        if (result)
        {
          break;
        }

        objc_opt_self();
        result = swift_dynamicCastObjCClass();
        if (result)
        {
          if (v9)
          {
            break;
          }
        }

        else if (v9 > 1)
        {
          break;
        }

        if (!v5)
        {
          __break(1u);
          return result;
        }

        v10 = *v6;
        *v6 = v6[1];
        v6[1] = v10;
        --v6;
      }

      while (!__CFADD__(v8++, 1));
      ++v4;
      v6 = v13 + 1;
      --v7;
      if (v4 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = (*a4 + 8 * a3 - 8);
    v6 = result - a3;
    while (2)
    {
      v21 = a3;
      v19 = v6;
      v20 = v5;
      while (1)
      {

        v7 = App.appIdentifier.getter();
        v9 = v8 ? v7 : 0;
        v10 = v8 ? v8 : 0xE000000000000000;
        v11 = App.appIdentifier.getter();
        if (v12)
        {
          v13 = v12;
        }

        else
        {
          v11 = 0;
          v13 = 0xE000000000000000;
        }

        if (v11 == v9 && v13 == v10)
        {
          break;
        }

        v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v15)
        {
          if (!v4)
          {
            __break(1u);
            return result;
          }

          v16 = *v5;
          *v5 = v5[1];
          v5[1] = v16;
          --v5;
          if (!__CFADD__(v6++, 1))
          {
            continue;
          }
        }

        goto LABEL_23;
      }

LABEL_23:
      a3 = v21 + 1;
      v5 = v20 + 1;
      v6 = v19 - 1;
      if (v21 + 1 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(char **result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v100 = _swiftEmptyArrayStorage;
  v5 = a3[1];
  if (v5 < 1)
  {
    goto LABEL_122;
  }

  v6 = 0;
  v7 = _swiftEmptyArrayStorage;
  v8 = &_s2os0A4_log_3dso0B04type_ys12StaticStringV_SVSgSo03OS_a1_B0CSo0a1_b1_D2_tas7CVarArg_pdtF_ptr;
  do
  {
    v9 = v6;
    v10 = v6 + 1;
    if (v6 + 1 >= v5)
    {
      goto LABEL_43;
    }

    v11 = *a3;
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      v96 = 0;
    }

    else
    {
      objc_opt_self();
      v12 = swift_dynamicCastObjCClass();
      v13 = 1;
      if (!v12)
      {
        v13 = 2;
      }

      v96 = v13;
    }

    v88 = v7;
    objc_opt_self();
    v14 = v10;
    if (swift_dynamicCastObjCClass())
    {
      v93 = 0;
    }

    else
    {
      objc_opt_self();
      v15 = swift_dynamicCastObjCClass();
      v16 = 1;
      if (!v15)
      {
        v16 = 2;
      }

      v93 = v16;
    }

    v17 = v9 + 2;
    if (v5 > v9 + 2)
    {
      v17 = v5;
    }

    v86 = v17;
    v18 = v11 + 8 * v9;
    v90 = v9;
    v19 = 8 * v9;
    for (i = v18 + 16; ; i += 8)
    {
      if (v14 + 1 >= v5)
      {
        v10 = v86;
        goto LABEL_32;
      }

      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        v21 = 0;
      }

      else
      {
        objc_opt_self();
        v21 = swift_dynamicCastObjCClass() ? 1 : 2;
      }

      objc_opt_self();
      if (!swift_dynamicCastObjCClass())
      {
        break;
      }

      if (v96 < v93)
      {
        v10 = v14 + 1;
        goto LABEL_34;
      }

LABEL_30:
      ++v14;
    }

    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      if (v96 < v93 == (v21 != 0))
      {
        v10 = v14 + 1;
        goto LABEL_32;
      }

      goto LABEL_30;
    }

    if (v96 < v93 != v21 > 1)
    {
      goto LABEL_30;
    }

    v10 = v14 + 1;
LABEL_32:
    if (v96 >= v93)
    {
      v7 = v88;
LABEL_41:
      v9 = v90;
      goto LABEL_43;
    }

LABEL_34:
    v7 = v88;
    v22 = v90;
    if (v10 < v90)
    {
      goto LABEL_143;
    }

    if (v90 < v10)
    {
      v23 = 8 * v10 - 8;
      v24 = v10;
      do
      {
        if (v22 != --v24)
        {
          v25 = *a3;
          if (!*a3)
          {
            goto LABEL_148;
          }

          v26 = *(v25 + v19);
          *(v25 + v19) = *(v25 + v23);
          *(v25 + v23) = v26;
        }

        ++v22;
        v23 -= 8;
        v19 += 8;
      }

      while (v22 < v24);
      goto LABEL_41;
    }

    v9 = v90;
LABEL_43:
    v27 = a3[1];
    if (v10 < v27)
    {
      if (__OFSUB__(v10, v9))
      {
        goto LABEL_142;
      }

      if (v10 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_144;
        }

        if (v9 + a4 >= v27)
        {
          v28 = a3[1];
        }

        else
        {
          v28 = v9 + a4;
        }

        if (v28 >= v9)
        {
          if (v10 != v28)
          {
            v29 = v9;
            v30 = *a3;
            v31 = *a3 + 8 * v10 - 8;
            v89 = v7;
            v91 = v29;
            v32 = v29 - v10;
            v94 = v28;
            do
            {
              v97 = v10;
              v33 = v32;
              v34 = v31;
              do
              {
                objc_opt_self();
                if (swift_dynamicCastObjCClass())
                {
                  v35 = 0;
                }

                else
                {
                  objc_opt_self();
                  v35 = swift_dynamicCastObjCClass() ? 1 : 2;
                }

                objc_opt_self();
                if (swift_dynamicCastObjCClass())
                {
                  break;
                }

                objc_opt_self();
                if (swift_dynamicCastObjCClass())
                {
                  if (v35)
                  {
                    break;
                  }
                }

                else if (v35 > 1)
                {
                  break;
                }

                if (!v30)
                {
                  goto LABEL_146;
                }

                v36 = *v34;
                *v34 = v34[1];
                v34[1] = v36;
                --v34;
              }

              while (!__CFADD__(v33++, 1));
              ++v10;
              v31 += 8;
              --v32;
            }

            while (v97 + 1 != v94);
            v10 = v94;
            v7 = v89;
            v9 = v91;
          }

          goto LABEL_69;
        }

LABEL_145:
        __break(1u);
LABEL_146:
        __break(1u);
LABEL_147:
        __break(1u);
LABEL_148:
        __break(1u);
LABEL_149:
        __break(1u);
LABEL_150:
        __break(1u);
        return;
      }
    }

LABEL_69:
    if (v10 < v9)
    {
      goto LABEL_141;
    }

    v98 = v10;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v7 = v84;
    }

    v38 = v7[2];
    v39 = v38 + 1;
    if (v38 >= v7[3] >> 1)
    {
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v7 = v85;
    }

    v7[2] = v39;
    v40 = v7 + 4;
    v41 = &v7[2 * v38 + 4];
    *v41 = v9;
    v41[1] = v98;
    v95 = *result;
    if (!*result)
    {
      goto LABEL_149;
    }

    if (v38)
    {
      while (2)
      {
        v42 = v39 - 1;
        v43 = &v40[2 * v39 - 2];
        v44 = &v7[2 * v39];
        if (v39 >= 4)
        {
          v49 = &v40[2 * v39];
          v50 = *(v49 - 8);
          v51 = *(v49 - 7);
          v55 = __OFSUB__(v51, v50);
          v52 = v51 - v50;
          if (v55)
          {
            goto LABEL_129;
          }

          v54 = *(v49 - 6);
          v53 = *(v49 - 5);
          v55 = __OFSUB__(v53, v54);
          v47 = v53 - v54;
          v48 = v55;
          if (v55)
          {
            goto LABEL_130;
          }

          v56 = v44[1];
          v57 = v56 - *v44;
          if (__OFSUB__(v56, *v44))
          {
            goto LABEL_132;
          }

          v55 = __OFADD__(v47, v57);
          v58 = v47 + v57;
          if (v55)
          {
            goto LABEL_135;
          }

          if (v58 >= v52)
          {
            v72 = *v43;
            v71 = v43[1];
            v55 = __OFSUB__(v71, v72);
            v73 = v71 - v72;
            if (v55)
            {
              goto LABEL_140;
            }

            if (v47 < v73)
            {
              v42 = v39 - 2;
            }
          }

          else
          {
LABEL_89:
            if (v48)
            {
              goto LABEL_131;
            }

            v60 = *v44;
            v59 = v44[1];
            v61 = __OFSUB__(v59, v60);
            v62 = v59 - v60;
            v63 = v61;
            if (v61)
            {
              goto LABEL_134;
            }

            v64 = v43[1];
            v65 = v64 - *v43;
            if (__OFSUB__(v64, *v43))
            {
              goto LABEL_137;
            }

            if (__OFADD__(v62, v65))
            {
              goto LABEL_139;
            }

            if (v62 + v65 < v47)
            {
              goto LABEL_104;
            }

            if (v47 < v65)
            {
              v42 = v39 - 2;
            }
          }
        }

        else
        {
          if (v39 == 3)
          {
            v45 = v7[4];
            v46 = v7[5];
            v55 = __OFSUB__(v46, v45);
            v47 = v46 - v45;
            v48 = v55;
            goto LABEL_89;
          }

          if (v39 < 2)
          {
            goto LABEL_133;
          }

          v67 = *v44;
          v66 = v44[1];
          v55 = __OFSUB__(v66, v67);
          v62 = v66 - v67;
          v63 = v55;
LABEL_104:
          if (v63)
          {
            goto LABEL_136;
          }

          v69 = *v43;
          v68 = v43[1];
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_138;
          }

          if (v70 < v62)
          {
            break;
          }
        }

        if (v42 - 1 >= v39)
        {
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
LABEL_140:
          __break(1u);
LABEL_141:
          __break(1u);
LABEL_142:
          __break(1u);
LABEL_143:
          __break(1u);
LABEL_144:
          __break(1u);
          goto LABEL_145;
        }

        if (!*a3)
        {
          goto LABEL_147;
        }

        v74 = v8;
        v75 = v7;
        v76 = &v40[2 * v42 - 2];
        v77 = *v76;
        v78 = v42;
        v79 = &v40[2 * v42];
        v80 = v79[1];
        specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 8 * *v76), (*a3 + 8 * *v79), (*a3 + 8 * v80), v95);
        if (v4)
        {
          goto LABEL_124;
        }

        if (v80 < v77)
        {
          goto LABEL_126;
        }

        v81 = v40;
        v82 = v75[2];
        if (v78 > v82)
        {
          goto LABEL_127;
        }

        *v76 = v77;
        v76[1] = v80;
        if (v78 >= v82)
        {
          goto LABEL_128;
        }

        v39 = v82 - 1;
        memmove(v79, v79 + 2, 16 * (v82 - 1 - v78));
        v7 = v75;
        v75[2] = v82 - 1;
        v83 = v82 > 2;
        v8 = v74;
        v40 = v81;
        if (!v83)
        {
          break;
        }

        continue;
      }
    }

    v6 = v98;
    v5 = a3[1];
  }

  while (v98 < v5);
  v100 = v7;
LABEL_122:
  if (!*result)
  {
    goto LABEL_150;
  }

  specialized UnsafeMutableBufferPointer._finalizeRuns(_:buffer:by:)(&v100, *result, a3);
LABEL_124:
}

uint64_t specialized UnsafeMutableBufferPointer._finalizeRuns(_:buffer:by:)(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v5 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v5);
    v5 = result;
  }

  v14 = v4;
  *v4 = v5;
  v7 = (v5 + 16);
  for (i = *(v5 + 16); ; *v7 = i)
  {
    v4 = (i - 2);
    if (i < 2)
    {
LABEL_10:
      *v14 = v5;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v9 = (v5 + 16 * i);
    v10 = *v9;
    v11 = &v7[2 * i];
    v12 = v11[1];
    specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 8 * *v9), (*a3 + 8 * *v11), (*a3 + 8 * v12), a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v12 < v10)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (v4 >= *v7)
    {
      goto LABEL_12;
    }

    *v9 = v10;
    v9[1] = v12;
    v13 = *v7 - i;
    if (*v7 < i)
    {
      goto LABEL_13;
    }

    i = *v7 - 1;
    result = memmove(v11, v11 + 2, 16 * v13);
  }

  *v14 = v5;
  __break(1u);
  return result;
}

uint64_t specialized _merge<A>(low:mid:high:buffer:by:)(char *a1, char *a2, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 8;
  v9 = (a3 - a2) / 8;
  if (v8 < v9)
  {
    specialized UnsafeMutablePointer.moveInitialize(from:count:)(a1, (a2 - a1) / 8, a4);
    v10 = &v4[8 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v15 = v7;
        goto LABEL_46;
      }

      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        v12 = 0;
      }

      else
      {
        objc_opt_self();
        v12 = swift_dynamicCastObjCClass() ? 1 : 2;
      }

      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        break;
      }

      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        if (v12)
        {
          break;
        }
      }

      else if (v12 > 1)
      {
        break;
      }

      v13 = v6;
      v14 = v7 == v6;
      v6 += 8;
      if (!v14)
      {
        goto LABEL_14;
      }

LABEL_15:
      v7 += 8;
    }

    v13 = v4;
    v14 = v7 == v4;
    v4 += 8;
    if (v14)
    {
      goto LABEL_15;
    }

LABEL_14:
    *v7 = *v13;
    goto LABEL_15;
  }

  specialized UnsafeMutablePointer.moveInitialize(from:count:)(a2, (a3 - a2) / 8, a4);
  v10 = &v4[8 * v9];
LABEL_24:
  v15 = v6;
  v6 -= 8;
  for (v5 -= 8; v10 > v4 && v15 > v7; v5 -= 8)
  {
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      v17 = 0;
    }

    else
    {
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        v17 = 1;
      }

      else
      {
        v17 = 2;
      }
    }

    objc_opt_self();
    if (!swift_dynamicCastObjCClass())
    {
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        if (!v17)
        {
          goto LABEL_43;
        }
      }

      else if (v17 <= 1)
      {
LABEL_43:
        if (v5 + 8 != v15)
        {
          *v5 = *v6;
        }

        goto LABEL_24;
      }
    }

    if (v10 != v5 + 8)
    {
      *v5 = *(v10 - 1);
    }

    v10 -= 8;
  }

LABEL_46:
  v18 = (v10 - v4) / 8;
  if (v15 != v4 || v15 >= &v4[8 * v18])
  {
    memmove(v15, v4, 8 * v18);
  }

  return 1;
}

{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 8;
  v9 = (a3 - a2) / 8;
  if (v8 < v9)
  {
    specialized UnsafeMutablePointer.moveInitialize(from:count:)(a1, (a2 - a1) / 8, a4);
    v10 = &v4[8 * v8];
    v43 = v5;
    v45 = v10;
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_56;
      }

      v12 = App.appIdentifier.getter();
      if (v13)
      {
        v14 = v12;
      }

      else
      {
        v14 = 0;
      }

      if (v13)
      {
        v15 = v13;
      }

      else
      {
        v15 = 0xE000000000000000;
      }

      v16 = App.appIdentifier.getter();
      if (v17)
      {
        v18 = v17;
      }

      else
      {
        v16 = 0;
        v18 = 0xE000000000000000;
      }

      if (v16 == v14 && v18 == v15)
      {
      }

      else
      {
        v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v20)
        {
          v21 = v6;
          v22 = v7 == v6;
          v6 += 8;
          goto LABEL_24;
        }
      }

      v21 = v4;
      v22 = v7 == v4;
      v4 += 8;
LABEL_24:
      v5 = v43;
      v10 = v45;
      if (!v22)
      {
        *v7 = *v21;
      }

      v7 += 8;
    }
  }

  specialized UnsafeMutablePointer.moveInitialize(from:count:)(a2, (a3 - a2) / 8, a4);
  v10 = &v4[8 * v9];
  v41 = v4;
  v42 = v7;
LABEL_28:
  v23 = v6 - 8;
  v5 -= 8;
  v44 = v6;
  while (v10 > v4 && v6 > v7)
  {
    v46 = v10;
    v25 = v10 - 8;
    v26 = v23;

    v27 = App.appIdentifier.getter();
    if (v28)
    {
      v29 = v27;
    }

    else
    {
      v29 = 0;
    }

    if (v28)
    {
      v30 = v28;
    }

    else
    {
      v30 = 0xE000000000000000;
    }

    v31 = App.appIdentifier.getter();
    if (v32)
    {
      v33 = v32;
    }

    else
    {
      v31 = 0;
      v33 = 0xE000000000000000;
    }

    if (v31 == v29 && v33 == v30)
    {
      v35 = 0;
    }

    else
    {
      v35 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    v36 = v5 + 8;
    if (v35)
    {
      v7 = v42;
      v37 = v26;
      v6 = v26;
      v10 = v46;
      v4 = v41;
      if (v36 != v44)
      {
        *v5 = *v37;
        v6 = v37;
      }

      goto LABEL_28;
    }

    v23 = v26;
    if (v46 != v36)
    {
      *v5 = *v25;
    }

    v5 -= 8;
    v10 = v25;
    v7 = v42;
    v6 = v44;
    v4 = v41;
  }

LABEL_56:
  v38 = (v10 - v4) / 8;
  if (v6 != v4 || v6 >= &v4[8 * v38])
  {
    memmove(v6, v4, 8 * v38);
  }

  return 1;
}

unint64_t lazy protocol witness table accessor for type FollowUpOfferType and conformance FollowUpOfferType()
{
  result = lazy protocol witness table cache variable for type FollowUpOfferType and conformance FollowUpOfferType;
  if (!lazy protocol witness table cache variable for type FollowUpOfferType and conformance FollowUpOfferType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FollowUpOfferType and conformance FollowUpOfferType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FollowUpOfferType and conformance FollowUpOfferType;
  if (!lazy protocol witness table cache variable for type FollowUpOfferType and conformance FollowUpOfferType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FollowUpOfferType and conformance FollowUpOfferType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SiriInCallFeature and conformance SiriInCallFeature()
{
  result = lazy protocol witness table cache variable for type SiriInCallFeature and conformance SiriInCallFeature;
  if (!lazy protocol witness table cache variable for type SiriInCallFeature and conformance SiriInCallFeature)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SiriInCallFeature and conformance SiriInCallFeature);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SiriInCallFeature and conformance SiriInCallFeature;
  if (!lazy protocol witness table cache variable for type SiriInCallFeature and conformance SiriInCallFeature)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SiriInCallFeature and conformance SiriInCallFeature);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TelephonyUtilitiesFeature and conformance TelephonyUtilitiesFeature()
{
  result = lazy protocol witness table cache variable for type TelephonyUtilitiesFeature and conformance TelephonyUtilitiesFeature;
  if (!lazy protocol witness table cache variable for type TelephonyUtilitiesFeature and conformance TelephonyUtilitiesFeature)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TelephonyUtilitiesFeature and conformance TelephonyUtilitiesFeature);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TelephonyUtilitiesFeature and conformance TelephonyUtilitiesFeature;
  if (!lazy protocol witness table cache variable for type TelephonyUtilitiesFeature and conformance TelephonyUtilitiesFeature)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TelephonyUtilitiesFeature and conformance TelephonyUtilitiesFeature);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type IDSFeature and conformance IDSFeature()
{
  result = lazy protocol witness table cache variable for type IDSFeature and conformance IDSFeature;
  if (!lazy protocol witness table cache variable for type IDSFeature and conformance IDSFeature)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IDSFeature and conformance IDSFeature);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IDSFeature and conformance IDSFeature;
  if (!lazy protocol witness table cache variable for type IDSFeature and conformance IDSFeature)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IDSFeature and conformance IDSFeature);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SiriPhoneFeature and conformance SiriPhoneFeature()
{
  result = lazy protocol witness table cache variable for type SiriPhoneFeature and conformance SiriPhoneFeature;
  if (!lazy protocol witness table cache variable for type SiriPhoneFeature and conformance SiriPhoneFeature)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SiriPhoneFeature and conformance SiriPhoneFeature);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SiriPhoneFeature and conformance SiriPhoneFeature;
  if (!lazy protocol witness table cache variable for type SiriPhoneFeature and conformance SiriPhoneFeature)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SiriPhoneFeature and conformance SiriPhoneFeature);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SiriPlaybackControlFeature and conformance SiriPlaybackControlFeature()
{
  result = lazy protocol witness table cache variable for type SiriPlaybackControlFeature and conformance SiriPlaybackControlFeature;
  if (!lazy protocol witness table cache variable for type SiriPlaybackControlFeature and conformance SiriPlaybackControlFeature)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SiriPlaybackControlFeature and conformance SiriPlaybackControlFeature);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SiriPlaybackControlFeature and conformance SiriPlaybackControlFeature;
  if (!lazy protocol witness table cache variable for type SiriPlaybackControlFeature and conformance SiriPlaybackControlFeature)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SiriPlaybackControlFeature and conformance SiriPlaybackControlFeature);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PommesFeature and conformance PommesFeature()
{
  result = lazy protocol witness table cache variable for type PommesFeature and conformance PommesFeature;
  if (!lazy protocol witness table cache variable for type PommesFeature and conformance PommesFeature)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PommesFeature and conformance PommesFeature);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PommesFeature and conformance PommesFeature;
  if (!lazy protocol witness table cache variable for type PommesFeature and conformance PommesFeature)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PommesFeature and conformance PommesFeature);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AppProtection and conformance AppProtection()
{
  result = lazy protocol witness table cache variable for type AppProtection and conformance AppProtection;
  if (!lazy protocol witness table cache variable for type AppProtection and conformance AppProtection)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppProtection and conformance AppProtection);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppProtection and conformance AppProtection;
  if (!lazy protocol witness table cache variable for type AppProtection and conformance AppProtection)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppProtection and conformance AppProtection);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CarPlayFeature and conformance CarPlayFeature()
{
  result = lazy protocol witness table cache variable for type CarPlayFeature and conformance CarPlayFeature;
  if (!lazy protocol witness table cache variable for type CarPlayFeature and conformance CarPlayFeature)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CarPlayFeature and conformance CarPlayFeature);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CarPlayFeature and conformance CarPlayFeature;
  if (!lazy protocol witness table cache variable for type CarPlayFeature and conformance CarPlayFeature)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CarPlayFeature and conformance CarPlayFeature);
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

uint64_t lazy protocol witness table accessor for type UUID and conformance UUID(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t lazy protocol witness table accessor for type TemplatingOperationType and conformance TemplatingOperationType()
{
  result = lazy protocol witness table cache variable for type TemplatingOperationType and conformance TemplatingOperationType;
  if (!lazy protocol witness table cache variable for type TemplatingOperationType and conformance TemplatingOperationType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TemplatingOperationType and conformance TemplatingOperationType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TemplatingOperationType and conformance TemplatingOperationType;
  if (!lazy protocol witness table cache variable for type TemplatingOperationType and conformance TemplatingOperationType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TemplatingOperationType and conformance TemplatingOperationType);
  }

  return result;
}

uint64_t specialized _SwiftNewtypeWrapper<>.hash(into:)(uint64_t a1, uint64_t a2)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();
}

Swift::Int specialized RawRepresentable<>._rawHashValue(seed:)(uint64_t a1, Swift::UInt a2)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a2);
  return Hasher._finalize()();
}

Swift::Int specialized _SwiftNewtypeWrapper<>._rawHashValue(seed:)(uint64_t a1, uint64_t a2)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v2 = Hasher._finalize()();

  return v2;
}

uint64_t specialized == infix<A>(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;
  if (v2 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v7 & 1;
}

{
  return specialized == infix<A>(_:_:)(a1, a2, AnnounceGroupFaceTimeInviteCATPatternsIdentifiers.rawValue.getter);
}

{
  return specialized == infix<A>(_:_:)(a1, a2, AnnounceGroupFaceTimeInviteCATsSimple.ReadGroupFaceTimeInviteAnnouncementDialogIds.rawValue.getter);
}

{
  return specialized == infix<A>(_:_:)(a1, a2, IdentifyIncomingCallerCATsSimple.Properties.rawValue.getter);
}

{
  return specialized == infix<A>(_:_:)(a1, a2, ForcedAppDisambiguationPhase.rawValue.getter);
}

{
  return specialized == infix<A>(_:_:)(a1, a2, AnnounceVoicemailCATsSimple.Properties.rawValue.getter);
}

{
  return specialized == infix<A>(_:_:)(a1, a2, UsoIdentifierNamespaceType.rawValue.getter);
}

{
  return specialized == infix<A>(_:_:)(a1, a2, SpecifyingContactAddress.rawValue.getter);
}

{
  return specialized == infix<A>(_:_:)(a1, a2, SuggestionsCATsSimple.Properties.rawValue.getter);
}

{
  v3 = 0xEF74706D6F72506CLL;
  if (a1)
  {
    v4 = OUTLINED_FUNCTION_15_43();
    if (v14)
    {
      v2 = v7;
    }

    else
    {
      v2 = v8;
    }
  }

  else
  {
    v4 = OUTLINED_FUNCTION_20_34(a1, a2, 0x6C6143724F646461);
  }

  if (v5)
  {
    OUTLINED_FUNCTION_27_2();
    if (v10 == 1)
    {
      v6 = v11;
    }

    else
    {
      v6 = v13;
    }

    if (v10 == 1)
    {
      v3 = v12;
    }

    else
    {
      v3 = v9;
    }
  }

  v14 = v4 == v6 && v2 == v3;
  if (v14)
  {
    v15 = 1;
  }

  else
  {
    v15 = OUTLINED_FUNCTION_5_71(v4, v5, v6);
  }

  return v15 & 1;
}

{
  return specialized == infix<A>(_:_:)(a1, a2, SlotResolutionError.rawValue.getter);
}

{
  v3 = 0xEB00000000737365;
  if (a1)
  {
    OUTLINED_FUNCTION_36_22();
    if (v6 == 1)
    {
      v9 = v7;
    }

    else
    {
      v9 = 0x54746C7561666564;
    }

    if (v6 == 1)
    {
      v2 = v8;
    }

    else
    {
      v2 = 0xED00007465677261;
    }
  }

  else
  {
    v9 = OUTLINED_FUNCTION_20_34(a1, a2, 0x6E69737542727273);
  }

  if (v4)
  {
    OUTLINED_FUNCTION_27_2();
    if (v11 == 1)
    {
      v5 = v12;
    }

    else
    {
      v5 = 0x54746C7561666564;
    }

    if (v11 == 1)
    {
      v3 = v10;
    }

    else
    {
      v3 = 0xED00007465677261;
    }
  }

  if (v9 == v5 && v2 == v3)
  {
    v14 = 1;
  }

  else
  {
    v14 = OUTLINED_FUNCTION_5_71(v9, v4, v5);
  }

  return v14 & 1;
}

{
  return specialized == infix<A>(_:_:)(a1, a2, DucFamilyNames.rawValue.getter);
}

{
  return specialized == infix<A>(_:_:)(a1, a2, PhoneCallSlotNames.rawValue.getter);
}

{
  return specialized == infix<A>(_:_:)(a1, a2, PhoneCallReference.rawValue.getter);
}

{
  return specialized == infix<A>(_:_:)(a1, a2, PhoneCallAttribute.rawValue.getter);
}

{
  return specialized == infix<A>(_:_:)(a1, a2, PhoneCallRecord.CodingKeys.rawValue.getter);
}

{
  return specialized == infix<A>(_:_:)(a1, a2, PhoneCallVerb.rawValue.getter);
}

{
  return specialized == infix<A>(_:_:)(a1, a2, PhoneCallCommonCATPatternsIdentifiers.rawValue.getter);
}

{
  v3 = 0xEB00000000656D69;
  v4 = 0x546563614677656ELL;
  v5 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v6 = 28532;
    }

    else
    {
      v6 = 0x6F68576F74;
    }

    if (v5 == 1)
    {
      v2 = 0xE200000000000000;
    }

    else
    {
      v2 = 0xE500000000000000;
    }
  }

  else
  {
    v6 = OUTLINED_FUNCTION_20_34(a1, a2, 0x546563614677656ELL);
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v4 = 28532;
    }

    else
    {
      v4 = 0x6F68576F74;
    }

    if (a2 == 1)
    {
      v3 = 0xE200000000000000;
    }

    else
    {
      v3 = 0xE500000000000000;
    }
  }

  if (v6 == v4 && v2 == v3)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_5_71(v6, a2, v4);
  }

  return v8 & 1;
}

{
  return specialized == infix<A>(_:_:)(a1, a2, PhoneCallDisplayTextCATsSimple.Properties.rawValue.getter);
}

{
  return specialized == infix<A>(_:_:)(a1, a2, PhoneCallControlCATsSimple.UnsupportedSwitchToFaceTimeDialogIds.rawValue.getter);
}

{
  if (a1)
  {
    v3 = OUTLINED_FUNCTION_28_21(0xD000000000000016);
    if (v8)
    {
      v2 = v6;
    }

    else
    {
      v2 = v7;
    }
  }

  else
  {
    v3 = OUTLINED_FUNCTION_47_21(a1, a2, 0x636972656E6567);
  }

  if (v4)
  {
    OUTLINED_FUNCTION_34_17();
    if (v8)
    {
      v5 = v9 + 1;
    }

    else
    {
      v5 = v9;
    }

    if (v8)
    {
      v12 = v11;
    }

    else
    {
      v12 = v10;
    }
  }

  else
  {
    v12 = 0xE700000000000000;
  }

  if (v3 == v5 && v2 == v12)
  {
    v14 = 1;
  }

  else
  {
    v14 = OUTLINED_FUNCTION_3_80(v3, v4, v5);
  }

  return v14 & 1;
}

{
  v3 = 0xEC000000656D756CLL;
  v4 = 0x6F5665676E616863;
  v5 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v6 = 0x6C6F566B63656863;
    }

    else
    {
      v6 = 0x636972656E6567;
    }

    if (v5 == 1)
    {
      v2 = 0xEB00000000656D75;
    }

    else
    {
      v2 = 0xE700000000000000;
    }
  }

  else
  {
    v6 = OUTLINED_FUNCTION_20_34(a1, a2, 0x6F5665676E616863);
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v4 = 0x6C6F566B63656863;
    }

    else
    {
      v4 = 0x636972656E6567;
    }

    if (a2 == 1)
    {
      v3 = 0xEB00000000656D75;
    }

    else
    {
      v3 = 0xE700000000000000;
    }
  }

  if (v6 == v4 && v2 == v3)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_5_71(v6, a2, v4);
  }

  return v8 & 1;
}

{
  return specialized == infix<A>(_:_:)(a1, a2, PhoneCallControlCATsSimple.Properties.rawValue.getter);
}

{
  return specialized == infix<A>(_:_:)(a1, a2, PhoneCallContactReference.rawValue.getter);
}

{
  return specialized == infix<A>(_:_:)(a1, a2, PhoneCallCommonCATsSimple.Properties.rawValue.getter);
}

{
  return specialized == infix<A>(_:_:)(a1, a2, PhoneCallDisplayTextCATs.Properties.rawValue.getter);
}

{
  return specialized == infix<A>(_:_:)(a1, a2, PhoneCallControlAction.rawValue.getter);
}

{
  return specialized == infix<A>(_:_:)(a1, a2, PhoneCallNLConstants.rawValue.getter);
}

{
  return specialized == infix<A>(_:_:)(a1, a2, PhoneCallControlCATs.Properties.rawValue.getter);
}

{
  return specialized == infix<A>(_:_:)(a1, a2, PhoneCallCommonCATs.Properties.rawValue.getter);
}

{
  v3 = 0xEC0000006C6C6143;
  if (a1)
  {
    v4 = OUTLINED_FUNCTION_15_43();
    if (v14)
    {
      v2 = v7;
    }

    else
    {
      v2 = v8;
    }
  }

  else
  {
    v4 = OUTLINED_FUNCTION_20_34(a1, a2, 0x676E696D6F636E69);
  }

  if (v5)
  {
    OUTLINED_FUNCTION_27_2();
    if (v10 == 1)
    {
      v6 = v11;
    }

    else
    {
      v6 = v13;
    }

    if (v10 == 1)
    {
      v3 = v12;
    }

    else
    {
      v3 = v9;
    }
  }

  v14 = v4 == v6 && v2 == v3;
  if (v14)
  {
    v15 = 1;
  }

  else
  {
    v15 = OUTLINED_FUNCTION_5_71(v4, v5, v6);
  }

  return v15 & 1;
}

{
  return specialized == infix<A>(_:_:)(a1, a2, PhoneAppSelectionSignalsGathererType.rawValue.getter);
}

{
  return specialized == infix<A>(_:_:)(a1, a2, PhoneAppResolutionLogger.CodePathId.rawValue.getter);
}

{
  return specialized == infix<A>(_:_:)(a1, a2, AnnounceCallBellCATs.Properties.rawValue.getter);
}

{
  return specialized == infix<A>(_:_:)(a1, a2, OngoingCallCATs.Properties.rawValue.getter);
}

{
  return specialized == infix<A>(_:_:)(a1, a2, OngoingCallCATsSimple.Properties.rawValue.getter);
}

{
  OUTLINED_FUNCTION_39_18();
  v6 = v2;
  if (v2)
  {
    if (v2 == 1)
    {
      v7 = v4;
    }

    else
    {
      v7 = v5;
    }

    if (v6 == 1)
    {
      v8 = 0x8000000000452AE0;
    }

    else
    {
      v8 = 0xE700000000000000;
    }
  }

  else
  {
    v8 = 0x8000000000452AC0;
    v7 = 0xD000000000000013;
  }

  if (v3)
  {
    OUTLINED_FUNCTION_34_17();
    if (v13)
    {
      v12 = v10;
    }

    else
    {
      v4 = v9;
      v12 = v11;
    }
  }

  else
  {
    v12 = 0x8000000000452AC0;
  }

  v13 = v7 == v4 && v8 == v12;
  if (v13)
  {
    v14 = 1;
  }

  else
  {
    v14 = OUTLINED_FUNCTION_3_80(v7, v3, v4);
  }

  return v14 & 1;
}

{
  return specialized == infix<A>(_:_:)(a1, a2, SearchCallHistoryCATPatternsIdentifiers.rawValue.getter);
}

{
  return specialized == infix<A>(_:_:)(a1, a2, SearchCallHistoryCATsSimple.ConfirmDateCreatedDialogIds.rawValue.getter);
}

{
  return specialized == infix<A>(_:_:)(a1, a2, SearchCallHistoryCATsSimple.Properties.rawValue.getter);
}

{
  v3 = 0xEE00657079546C6CLL;
  v4 = 0xD000000000000013;
  v5 = 0x6143656E4F736168;
  v6 = "hasCallTypeToConfirm";
  v7 = "NoCallTypeToConfirm";
  v8 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v9 = 0xD000000000000014;
    }

    else
    {
      v9 = 0x6143656E4F736168;
    }

    if (v8 == 1)
    {
      v2 = 0x80000000004544E0;
    }

    else
    {
      v2 = 0xEE00657079546C6CLL;
    }
  }

  else
  {
    v9 = OUTLINED_FUNCTION_55_16();
  }

  if (a2)
  {
    v10 = (v6 - 32) | 0x8000000000000000;
    if (a2 == 1)
    {
      ++v4;
    }

    else
    {
      v4 = v5;
    }

    if (a2 == 1)
    {
      v11 = v10;
    }

    else
    {
      v11 = v3;
    }
  }

  else
  {
    v11 = (v7 - 32) | 0x8000000000000000;
  }

  if (v9 == v4 && v2 == v11)
  {
    v13 = 1;
  }

  else
  {
    v13 = OUTLINED_FUNCTION_3_80(v9, a2, v4);
  }

  return v13 & 1;
}

{
  return specialized == infix<A>(_:_:)(a1, a2, SearchCallHistoryCATsSimple.ShowCallHistoryIntroDialogIds.rawValue.getter);
}

{
  return specialized == infix<A>(_:_:)(a1, a2, SearchCallHistoryCATs.Properties.rawValue.getter);
}

{
  return specialized == infix<A>(_:_:)(a1, a2, HangUpCallCATs.Properties.rawValue.getter);
}

{
  return specialized == infix<A>(_:_:)(a1, a2, AnswerCallCATs.Properties.rawValue.getter);
}

{
  return specialized == infix<A>(_:_:)(a1, a2, StartCallCATs.Properties.rawValue.getter);
}

{
  return specialized == infix<A>(_:_:)(a1, a2, StartCallCATPatternsIdentifiers.rawValue.getter);
}

{
  return specialized == infix<A>(_:_:)(a1, a2, StartCallCATsSimple.IntentConfirmationWithRestrictedContactsDialogIds.rawValue.getter);
}

{
  return specialized == infix<A>(_:_:)(a1, a2, StartCallCATsSimple.UnsupportedContactsNoContactFoundDialogIds.rawValue.getter);
}

{
  return specialized == infix<A>(_:_:)(a1, a2, StartCallCATsSimple.UnsupportedContactsInvalidHandleDialogIds.rawValue.getter);
}

{
  OUTLINED_FUNCTION_39_18();
  v6 = v2;
  if (v2)
  {
    if (v2 == 1)
    {
      v7 = v4 + 6;
    }

    else
    {
      v7 = v5;
    }

    if (v6 == 1)
    {
      v8 = 0x80000000004559A0;
    }

    else
    {
      v8 = 0xE700000000000000;
    }
  }

  else
  {
    v8 = 0x8000000000453330;
    v7 = 0xD000000000000011;
  }

  if (v3)
  {
    if (v3 == 1)
    {
      v4 += 6;
    }

    else
    {
      v4 = v5;
    }

    if (v3 == 1)
    {
      v9 = 0x80000000004559A0;
    }

    else
    {
      v9 = 0xE700000000000000;
    }
  }

  else
  {
    v9 = 0x8000000000453330;
  }

  if (v7 == v4 && v8 == v9)
  {
    v11 = 1;
  }

  else
  {
    v11 = OUTLINED_FUNCTION_3_80(v7, v3, v4);
  }

  return v11 & 1;
}

{
  return specialized == infix<A>(_:_:)(a1, a2, StartCallCATsSimple.BusinessCallingFeatureDisabledDialogIds.rawValue.getter);
}

{
  return specialized == infix<A>(_:_:)(a1, a2, StartCallCATsSimple.DisambiguateAppsVoiceModeDialogIds.rawValue.getter);
}

{
  return specialized == infix<A>(_:_:)(a1, a2, StartCallCATsSimple.IntentHandledResponseDialogIds.rawValue.getter);
}

{
  return specialized == infix<A>(_:_:)(a1, a2, StartCallCATsSimple.DisambiguateContactsDialogIds.rawValue.getter);
}

{
  return specialized == infix<A>(_:_:)(a1, a2, StartCallCATsSimple.ConfirmContactsDialogIds.rawValue.getter);
}

{
  return specialized == infix<A>(_:_:)(a1, a2, StartCallCATsSimple.RelationshipDialogIds.rawValue.getter);
}

{
  return specialized == infix<A>(_:_:)(a1, a2, StartCallCATsSimple.ConfirmAppDialogIds.rawValue.getter);
}

{
  return specialized == infix<A>(_:_:)(a1, a2, StartCallCATsSimple.Properties.rawValue.getter);
}

{
  v3 = 0x6423317473726966;
  v4 = 0x31676F6C616964;
  if (a1)
  {
    if (a1 == 1)
    {
      v2 = 0xEE0031676F6C6169;
    }

    else
    {
      v2 = 0xEE0032676F6C6169;
    }

    v5 = 0x6423317473726966;
  }

  else
  {
    v5 = OUTLINED_FUNCTION_47_21(a1, a2, 0x31676F6C616964);
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v6 = 0xEE0031676F6C6169;
    }

    else
    {
      v6 = 0xEE0032676F6C6169;
    }

    v4 = v3;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  if (v5 == v4 && v2 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_3_80(v5, a2, v4);
  }

  return v8 & 1;
}

{
  v3 = 0xEC00000065636976;
  v4 = 0x6544687469575446;
  v5 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v6 = 0x756F687469575446;
    }

    else
    {
      v6 = 0x636972656E6547;
    }

    if (v5 == 1)
    {
      v2 = 0xEF65636976654474;
    }

    else
    {
      v2 = 0xE700000000000000;
    }
  }

  else
  {
    v6 = OUTLINED_FUNCTION_20_34(a1, a2, 0x6544687469575446);
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v4 = 0x756F687469575446;
    }

    else
    {
      v4 = 0x636972656E6547;
    }

    if (a2 == 1)
    {
      v3 = 0xEF65636976654474;
    }

    else
    {
      v3 = 0xE700000000000000;
    }
  }

  if (v6 == v4 && v2 == v3)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_5_71(v6, a2, v4);
  }

  return v8 & 1;
}

{
  return specialized == infix<A>(_:_:)(a1, a2, SiriPhoneDefaultsKey.rawValue.getter);
}

{
  return specialized == infix<A>(_:_:)(a1, a2, PostCallInquiryAnswerCallCATs.Properties.rawValue.getter);
}

{
  v3 = 0xEE006C6C61436465;
  if (a1)
  {
    OUTLINED_FUNCTION_36_22();
    if (v6 == 1)
    {
      v9 = v7;
    }

    else
    {
      v9 = 0x696D6F636E496F4ELL;
    }

    if (v6 == 1)
    {
      v2 = v8;
    }

    else
    {
      v2 = 0xEE006C6C6143676ELL;
    }
  }

  else
  {
    v9 = OUTLINED_FUNCTION_20_34(a1, a2, 0x7373694D7473754ALL);
  }

  if (v4)
  {
    OUTLINED_FUNCTION_27_2();
    if (v11 == 1)
    {
      v5 = v12;
    }

    else
    {
      v5 = 0x696D6F636E496F4ELL;
    }

    if (v11 == 1)
    {
      v3 = v10;
    }

    else
    {
      v3 = 0xEE006C6C6143676ELL;
    }
  }

  if (v9 == v5 && v2 == v3)
  {
    v14 = 1;
  }

  else
  {
    v14 = OUTLINED_FUNCTION_5_71(v9, v4, v5);
  }

  return v14 & 1;
}

{
  return specialized == infix<A>(_:_:)(a1, a2, AddCallParticipantCATPatternsIdentifiers.rawValue.getter);
}

{
  return specialized == infix<A>(_:_:)(a1, a2, AddCallParticipantCATsSimple.Properties.rawValue.getter);
}

{
  return specialized == infix<A>(_:_:)(a1, a2, AddCallParticipantCATs.Properties.rawValue.getter);
}

{
  v3 = 0xEB0000000064657ALL;
  v4 = 0x696C616974696E69;
  v5 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v6 = 0x46676E6974696177;
    }

    else
    {
      v6 = 0x6365527475706E69;
    }

    if (v5 == 1)
    {
      v2 = 0xEF7475706E49726FLL;
    }

    else
    {
      v2 = 0xED00006465766965;
    }
  }

  else
  {
    v6 = OUTLINED_FUNCTION_20_34(a1, a2, 0x696C616974696E69);
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v4 = 0x46676E6974696177;
    }

    else
    {
      v4 = 0x6365527475706E69;
    }

    if (a2 == 1)
    {
      v3 = 0xEF7475706E49726FLL;
    }

    else
    {
      v3 = 0xED00006465766965;
    }
  }

  if (v6 == v4 && v2 == v3)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_5_71(v6, a2, v4);
  }

  return v8 & 1;
}

{
  return specialized == infix<A>(_:_:)(a1, a2, AnnounceIncomingCallCATs.Properties.rawValue.getter);
}

{
  return specialized == infix<A>(_:_:)(a1, a2, UnsupportedPhoneCall.rawValue.getter);
}

{
  return specialized == infix<A>(_:_:)(a1, a2, UnsupportedFlowCATs.Properties.rawValue.getter);
}

{
  return specialized == infix<A>(_:_:)(a1, a2, UnsupportedFlowCATPatternsIdentifiers.rawValue.getter);
}

{
  return specialized == infix<A>(_:_:)(a1, a2, UnsupportedFlowCATsSimple.Properties.rawValue.getter);
}

{
  return specialized == infix<A>(_:_:)(a1, a2, ActionableCallControlFlow.UnsupportedSwitchToFaceTimeReason.rawValue.getter);
}

{
  v3 = 0xEF6C6C6143646574;
  if (a1)
  {
    v4 = OUTLINED_FUNCTION_28_21(0xD000000000000016);
    if (v9)
    {
      v2 = v7;
    }

    else
    {
      v2 = v8;
    }
  }

  else
  {
    v4 = OUTLINED_FUNCTION_20_34(a1, a2, 0x726F707075736E75);
  }

  if (v5)
  {
    OUTLINED_FUNCTION_34_17();
    if (v9)
    {
      v6 = v10 + 1;
    }

    else
    {
      v6 = v10;
    }

    if (v9)
    {
      v3 = v12;
    }

    else
    {
      v3 = v11;
    }
  }

  if (v4 == v6 && v2 == v3)
  {
    v14 = 1;
  }

  else
  {
    v14 = OUTLINED_FUNCTION_5_71(v4, v5, v6);
  }

  return v14 & 1;
}

{
  return specialized == infix<A>(_:_:)(a1, a2, &type metadata accessor for ContactActionType, &lazy protocol witness table cache variable for type ContactActionType and conformance ContactActionType, &type metadata accessor for ContactActionType, &protocol conformance descriptor for ContactActionType);
}

{
  return specialized == infix<A>(_:_:)(a1, a2, &type metadata accessor for InputOrigin, &lazy protocol witness table cache variable for type InputOrigin and conformance InputOrigin, &type metadata accessor for InputOrigin, &protocol conformance descriptor for InputOrigin);
}

{
  return specialized == infix<A>(_:_:)(a1, a2, &type metadata accessor for InteractionType, &lazy protocol witness table cache variable for type InteractionType and conformance InteractionType, &type metadata accessor for InteractionType, &protocol conformance descriptor for InteractionType);
}

{
  return specialized == infix<A>(_:_:)(a1, a2, &type metadata accessor for UsoEntity_applePhoneCall_PhoneCallAttribute.DefinedValues, &lazy protocol witness table cache variable for type UsoEntity_applePhoneCall_PhoneCallAttribute.DefinedValues and conformance UsoEntity_applePhoneCall_PhoneCallAttribute.DefinedValues, &type metadata accessor for UsoEntity_applePhoneCall_PhoneCallAttribute.DefinedValues, &protocol conformance descriptor for UsoEntity_applePhoneCall_PhoneCallAttribute.DefinedValues);
}

{
  return specialized == infix<A>(_:_:)(a1, a2, &type metadata accessor for UsoEntity_common_PhoneCallMode.DefinedValues, &lazy protocol witness table cache variable for type UsoEntity_common_PhoneCallMode.DefinedValues and conformance UsoEntity_common_PhoneCallMode.DefinedValues, &type metadata accessor for UsoEntity_common_PhoneCallMode.DefinedValues, &protocol conformance descriptor for UsoEntity_common_PhoneCallMode.DefinedValues);
}

uint64_t _ss20_SwiftNewtypeWrapperPss21_ObjectiveCBridgeable8RawValueRpzrlE016_forceBridgeFromD1C_6resultyAD_01_D5CTypeQZ_xSgztFZSo19INPersonHandleLabela_Tt1gq5(uint64_t a1, id *a2)
{
  result = static String._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return result;
}

uint64_t _ss20_SwiftNewtypeWrapperPss21_ObjectiveCBridgeable8RawValueRpzrlE024_conditionallyBridgeFromD1C_6resultSbAD_01_D5CTypeQZ_xSgztFZSo19INPersonHandleLabela_Tt1gq5(uint64_t a1, id *a2)
{
  v3 = static String._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return v3 & 1;
}

NSString _ss20_SwiftNewtypeWrapperPss21_ObjectiveCBridgeable8RawValueRpzrlE026_unconditionallyBridgeFromD1CyxAD_01_D5CTypeQZSgFZSo19INPersonHandleLabela_Tt1gq5(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v1 = String._bridgeToObjectiveC()();

  return v1;
}

Swift::Int specialized RawRepresentable<>.hashValue.getter(Swift::UInt a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  return Hasher._finalize()();
}

{
  OUTLINED_FUNCTION_17_58();
  Hasher._combine(_:)(a1);
  return Hasher._finalize()();
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

_OWORD *outlined init with take of Any(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t lazy protocol witness table accessor for type TerminalOntologyNode<VoiceMail.VoiceMailNoun> and conformance TerminalOntologyNode<A>(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void type metadata accessor for FLOWSchemaFLOWDomainExecutionType(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t specialized _SwiftNewtypeWrapper<>.hashValue.getter(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v1 = String.hashValue.getter();

  return v1;
}

uint64_t OUTLINED_FUNCTION_26_6(uint64_t a1, uint64_t a2)
{

  return OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
}

uint64_t OUTLINED_FUNCTION_36_6@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2[3] = a1;
  v2[4] = a2;
  *v2 = v3;
  return v3;
}

uint64_t OUTLINED_FUNCTION_47_5(uint64_t a1)
{

  return static CATOption.defaultMode.getter();
}

uint64_t OUTLINED_FUNCTION_54_4(uint64_t result)
{
  *(v4 - 104) = result;
  *(v4 - 96) = v3;
  *(v4 - 128) = v1;
  *(v4 - 88) = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_77_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, ...)
{
  va_start(va, a32);

  return outlined init with copy of PhoneCallFeatureFlags(va, &a9);
}

uint64_t AceServiceInvokerAsync.submitWithBargeInDetection<A>(_:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v4[2] = a3;
  objc_opt_self();
  if (swift_dynamicCastObjCClass() || (objc_opt_self(), swift_dynamicCastObjCClass()))
  {
    v9 = swift_task_alloc();
    v4[3] = v9;
    v10 = type metadata accessor for SABaseCommand();
    *v9 = v4;
    v9[1] = AceServiceInvokerAsync.submitWithBargeInDetection<A>(_:);
    v11 = a1;
    v12 = a2;
  }

  else
  {
    v13 = swift_task_alloc();
    v4[5] = v13;
    *v13 = v4;
    v13[1] = AceServiceInvokerAsync.submitWithBargeInDetection<A>(_:);
    v11 = a1;
    v12 = a2;
    v10 = a3;
  }

  return AceServiceInvokerAsync.submit<A>(_:)(v11, v12, v10, a4);
}

uint64_t AceServiceInvokerAsync.submitWithBargeInDetection<A>(_:)(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 32) = a1;

  if (v1)
  {
    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return _swift_task_switch(AceServiceInvokerAsync.submitWithBargeInDetection<A>(_:), 0, 0);
  }
}

{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

uint64_t AceServiceInvokerAsync.submitWithBargeInDetection<A>(_:)()
{
  v1 = *(v0 + 32);
  v2 = swift_dynamicCastUnknownClass();
  if (!v2)
  {
    goto LABEL_17;
  }

  v3 = v2;
  v4 = [v1 encodedClassName];
  if (v4)
  {
    v5 = v4;
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (v8)
  {
    v11 = *(v0 + 32);
    if (v6 == v9 && v8 == v10)
    {

LABEL_17:
      if (one-time initialization token for siriPhone != -1)
      {
        swift_once();
      }

      v16 = type metadata accessor for Logger();
      __swift_project_value_buffer(v16, static Logger.siriPhone);
      v17 = Logger.logObject.getter();
      v18 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        *v19 = 0;
        _os_log_impl(&dword_0, v17, v18, "#AceServiceInvokerAsync Received simulated response, throwing InferredBargeInError", v19, 2u);
      }

      v20 = *(v0 + 32);

      lazy protocol witness table accessor for type InferredBargeInError and conformance InferredBargeInError();
      swift_allocError();
      swift_willThrow();

      v21 = *(v0 + 8);

      return v21();
    }

    v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v13)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  v14 = *(v0 + 8);

  return v14(v3);
}

unint64_t type metadata accessor for SABaseCommand()
{
  result = lazy cache variable for type metadata for SABaseCommand;
  if (!lazy cache variable for type metadata for SABaseCommand)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for SABaseCommand);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type InferredBargeInError and conformance InferredBargeInError()
{
  result = lazy protocol witness table cache variable for type InferredBargeInError and conformance InferredBargeInError;
  if (!lazy protocol witness table cache variable for type InferredBargeInError and conformance InferredBargeInError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InferredBargeInError and conformance InferredBargeInError);
  }

  return result;
}

uint64_t UnsupportedAction.typeName.getter(uint64_t a1)
{
  swift_getDynamicType();
  swift_getMetatypeMetadata();
  return String.init<A>(describing:)();
}

uint64_t UnsupportedAction.toSpeakableString.getter(uint64_t a1, uint64_t a2)
{
  dispatch thunk of RawRepresentable.rawValue.getter();
  String.toSpeakableString.getter();
}

uint64_t UnsupportedAction.description.getter(uint64_t a1, uint64_t a2)
{
  v5 = UnsupportedAction.typeName.getter(a1);
  v2._countAndFlagsBits = 46;
  v2._object = 0xE100000000000000;
  String.append(_:)(v2);
  dispatch thunk of RawRepresentable.rawValue.getter();
  String.append(_:)(v4);

  return v5;
}

unint64_t ActionableCallControlFlow.ActionableCallControlFlowError.description.getter()
{
  outlined init with copy of ActionableCallControlFlow.ActionableCallControlFlowError(v0, v16);
  switch(v17)
  {
    case 1:
      outlined init with take of SPHConversation(v16, &v13);
      _StringGuts.grow(_:)(25);
      v10._object = 0x8000000000456E50;
      v10._countAndFlagsBits = 0xD000000000000016;
      String.append(_:)(v10);
      __swift_project_boxed_opaque_existential_1(&v13, v15);
      DefaultStringInterpolation.appendInterpolation<A>(_:)();
      v11._countAndFlagsBits = 41;
      v11._object = 0xE100000000000000;
      String.append(_:)(v11);
      v9 = 0;
      __swift_destroy_boxed_opaque_existential_1(&v13);
      break;
    case 2:
      v5 = v16[0];
      _StringGuts.grow(_:)(25);

      OUTLINED_FUNCTION_52_1();
      v13 = v7;
      v14 = v6;
      String.append(_:)(v5);

      v8._countAndFlagsBits = 41;
      v8._object = 0xE100000000000000;
      String.append(_:)(v8);
      goto LABEL_4;
    case 3:
      v9 = 0xD00000000000001ELL;
      break;
    default:
      v1 = LOBYTE(v16[0]);
      _StringGuts.grow(_:)(40);

      OUTLINED_FUNCTION_52_1();
      v13 = v3 + 16;
      v14 = v2;
      v4._countAndFlagsBits = PhoneCallControlAction.description.getter(v1);
      String.append(_:)(v4);

LABEL_4:
      v9 = v13;
      break;
  }

  return v9;
}

unint64_t static ActionableCallControlFlow.ActionableCallControlFlowError.unsupportedAction(_:)@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 24) = &type metadata for ActionableCallControlFlow.UnsupportedActionReason;
  result = lazy protocol witness table accessor for type ActionableCallControlFlow.UnsupportedActionReason and conformance ActionableCallControlFlow.UnsupportedActionReason();
  *(a1 + 32) = result;
  *(a1 + 40) = 1;
  return result;
}

unint64_t static ActionableCallControlFlow.ActionableCallControlFlowError.unsupportedSpeakerPhoneAction(_:)@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 24) = &type metadata for ActionableCallControlFlow.UnsupportedSpeakerphoneActionReason;
  result = lazy protocol witness table accessor for type ActionableCallControlFlow.UnsupportedSpeakerphoneActionReason and conformance ActionableCallControlFlow.UnsupportedSpeakerphoneActionReason();
  *(a1 + 32) = result;
  *(a1 + 40) = 1;
  return result;
}

uint64_t static ActionableCallControlFlow.ActionableCallControlFlowError.unsupportedSwitchToFaceTimeAction(_:)@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 24) = &type metadata for ActionableCallControlFlow.UnsupportedSwitchToFaceTimeReason;
  v1 = lazy protocol witness table accessor for type ActionableCallControlFlow.UnsupportedSwitchToFaceTimeReason and conformance ActionableCallControlFlow.UnsupportedSwitchToFaceTimeReason();
  return OUTLINED_FUNCTION_53_5(v1);
}

uint64_t static ActionableCallControlFlow.ActionableCallControlFlowError.unsupportedHoldAction(_:)@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 24) = &type metadata for ActionableCallControlFlow.UnsupportedHoldActionReason;
  v1 = lazy protocol witness table accessor for type ActionableCallControlFlow.UnsupportedHoldActionReason and conformance ActionableCallControlFlow.UnsupportedHoldActionReason();
  return OUTLINED_FUNCTION_53_5(v1);
}

BOOL ActionableCallControlFlow.UnsupportedActionReason.init(rawValue:)()
{
  OUTLINED_FUNCTION_38();
  v2._object = v0;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of ActionableCallControlFlow.UnsupportedActionReason.init(rawValue:), v2);
  OUTLINED_FUNCTION_40_0();

  return v1 != 0;
}

BOOL protocol witness for RawRepresentable.init(rawValue:) in conformance ActionableCallControlFlow.UnsupportedActionReason@<W0>(_BYTE *a1@<X8>)
{
  result = ActionableCallControlFlow.UnsupportedActionReason.init(rawValue:)();
  *a1 = result;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance ActionableCallControlFlow.UnsupportedActionReason(uint64_t a1@<X8>)
{
  strcpy(a1, "noActiveCall");
  *(a1 + 13) = 0;
  *(a1 + 14) = -5120;
}

BOOL ActionableCallControlFlow.UnsupportedSpeakerphoneActionReason.init(rawValue:)()
{
  OUTLINED_FUNCTION_38();
  v2._object = v0;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of ActionableCallControlFlow.UnsupportedSpeakerphoneActionReason.init(rawValue:), v2);
  OUTLINED_FUNCTION_40_0();

  return v1 != 0;
}

BOOL protocol witness for RawRepresentable.init(rawValue:) in conformance ActionableCallControlFlow.UnsupportedSpeakerphoneActionReason@<W0>(_BYTE *a1@<X8>)
{
  result = ActionableCallControlFlow.UnsupportedSpeakerphoneActionReason.init(rawValue:)();
  *a1 = result;
  return result;
}

unint64_t protocol witness for RawRepresentable.rawValue.getter in conformance ActionableCallControlFlow.UnsupportedSpeakerphoneActionReason@<X0>(void *a1@<X8>)
{
  result = PhoneCallControlCATsSimple.UnsupportedSpeakerphoneActionDialogIds.rawValue.getter();
  *a1 = 0xD000000000000023;
  a1[1] = v3;
  return result;
}

PhoneCallFlowDelegatePlugin::ActionableCallControlFlow::UnsupportedHoldActionReason_optional __swiftcall ActionableCallControlFlow.UnsupportedHoldActionReason.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_38();
  v3._object = v1;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of ActionableCallControlFlow.UnsupportedHoldActionReason.init(rawValue:), v3);
  OUTLINED_FUNCTION_40_0();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

uint64_t ActionableCallControlFlow.UnsupportedHoldActionReason.rawValue.getter(char a1)
{
  if (!a1)
  {
    return 0x726F707075736E75;
  }

  if (a1 == 1)
  {
    return 0xD000000000000017;
  }

  return 0xD000000000000016;
}

PhoneCallFlowDelegatePlugin::ActionableCallControlFlow::UnsupportedHoldActionReason_optional protocol witness for RawRepresentable.init(rawValue:) in conformance ActionableCallControlFlow.UnsupportedHoldActionReason@<W0>(Swift::String *a1@<X0>, PhoneCallFlowDelegatePlugin::ActionableCallControlFlow::UnsupportedHoldActionReason_optional *a2@<X8>)
{
  result.value = ActionableCallControlFlow.UnsupportedHoldActionReason.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance ActionableCallControlFlow.UnsupportedHoldActionReason@<X0>(uint64_t *a1@<X8>)
{
  result = ActionableCallControlFlow.UnsupportedHoldActionReason.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

PhoneCallFlowDelegatePlugin::ActionableCallControlFlow::UnsupportedSwitchToFaceTimeReason_optional __swiftcall ActionableCallControlFlow.UnsupportedSwitchToFaceTimeReason.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_38();
  v3._object = v1;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of ActionableCallControlFlow.UnsupportedSwitchToFaceTimeReason.init(rawValue:), v3);
  OUTLINED_FUNCTION_40_0();

  if (v2 >= 0xA)
  {
    return 10;
  }

  else
  {
    return v2;
  }
}

unint64_t ActionableCallControlFlow.UnsupportedSwitchToFaceTimeReason.rawValue.getter(char a1)
{
  result = 0xD00000000000001ALL;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000011;
      break;
    case 2:
      result = 0xD000000000000028;
      break;
    case 3:
    case 4:
      result = 0xD000000000000017;
      break;
    case 5:
    case 8:
      result = 0xD000000000000013;
      break;
    case 6:
      result = 0xD000000000000021;
      break;
    case 7:
      result = 0xD000000000000015;
      break;
    case 9:
      result = 0xD000000000000014;
      break;
    default:
      return result;
  }

  return result;
}

PhoneCallFlowDelegatePlugin::ActionableCallControlFlow::UnsupportedSwitchToFaceTimeReason_optional protocol witness for RawRepresentable.init(rawValue:) in conformance ActionableCallControlFlow.UnsupportedSwitchToFaceTimeReason@<W0>(Swift::String *a1@<X0>, PhoneCallFlowDelegatePlugin::ActionableCallControlFlow::UnsupportedSwitchToFaceTimeReason_optional *a2@<X8>)
{
  result.value = ActionableCallControlFlow.UnsupportedSwitchToFaceTimeReason.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

unint64_t protocol witness for RawRepresentable.rawValue.getter in conformance ActionableCallControlFlow.UnsupportedSwitchToFaceTimeReason@<X0>(unint64_t *a1@<X8>)
{
  result = ActionableCallControlFlow.UnsupportedSwitchToFaceTimeReason.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t ActionableCallControlFlow.State.description.getter()
{
  outlined init with copy of ActionableCallControlFlow.State(v0, &v6);
  v1 = 0x6C616974696E692ELL;
  switch(v7)
  {
    case 0:
      return v1;
    case 1:
      v1 = 0x6D726F667265702ELL;
      break;
    case 2:
      v1 = 0xD00000000000001BLL;
      break;
    case 3:
      v1 = 0x7373696D7369642ELL;
      break;
    case 4:
      v1 = 0x636972656E65672ELL;
      break;
    default:
      outlined init with take of SPHConversation(&v6, v5);
      _StringGuts.grow(_:)(36);
      v2._countAndFlagsBits = 0xD000000000000021;
      v2._object = 0x8000000000456EC0;
      String.append(_:)(v2);
      __swift_project_boxed_opaque_existential_1(v5, v5[3]);
      DefaultStringInterpolation.appendInterpolation<A>(_:)();
      v3._countAndFlagsBits = 41;
      v3._object = 0xE100000000000000;
      String.append(_:)(v3);
      v1 = 0;
      __swift_destroy_boxed_opaque_existential_1(v5);
      break;
  }

  return v1;
}

uint64_t static ActionableCallControlFlow.State.== infix(_:_:)()
{
  v0 = ActionableCallControlFlow.State.description.getter();
  v2 = v1;
  if (v0 == ActionableCallControlFlow.State.description.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v5 & 1;
}

uint64_t ActionableCallControlFlow.state.setter(uint64_t a1)
{
  swift_beginAccess();
  outlined assign with take of ActionableCallControlFlow.State(a1, v1 + 72);
  return swift_endAccess();
}

uint64_t ActionableCallControlFlow.__allocating_init(sharedGlobals:action:phoneCallControlCATsSimple:)(void *a1, uint64_t a2, uint64_t a3)
{
  v11 = 0;
  memset(v10, 0, sizeof(v10));
  outlined init with copy of SharedGlobalsProviding();
  v7 = (*(v3 + 144))(v10, v9, a2, a3);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v7;
}

uint64_t ActionableCallControlFlow.__allocating_init(state:sharedGlobals:action:phoneCallControlCATsSimple:)(uint64_t a1, __int128 *a2, char a3, uint64_t a4)
{
  v8 = swift_allocObject();
  outlined init with take of SPHConversation(a2, v8 + 16);
  *(v8 + 56) = a3;
  *(v8 + 64) = a4;
  v9 = *(a1 + 16);
  *(v8 + 72) = *a1;
  *(v8 + 88) = v9;
  *(v8 + 104) = *(a1 + 32);
  return v8;
}

uint64_t ActionableCallControlFlow.init(state:sharedGlobals:action:phoneCallControlCATsSimple:)(uint64_t a1, __int128 *a2, char a3, uint64_t a4)
{
  outlined init with take of SPHConversation(a2, v4 + 16);
  *(v4 + 56) = a3;
  *(v4 + 64) = a4;
  v8 = *(a1 + 16);
  *(v4 + 72) = *a1;
  *(v4 + 88) = v8;
  *(v4 + 104) = *(a1 + 32);
  return v4;
}

uint64_t ActionableCallControlFlow.execute(completion:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ActionableCallControlFlow();
  lazy protocol witness table accessor for type ActionableCallControlFlow and conformance ActionableCallControlFlow(&lazy protocol witness table cache variable for type ActionableCallControlFlow and conformance ActionableCallControlFlow, v2, type metadata accessor for ActionableCallControlFlow, &protocol conformance descriptor for ActionableCallControlFlow);
  return Flow.deferToExecuteAsync(_:)();
}

uint64_t ActionableCallControlFlow.execute()()
{
  OUTLINED_FUNCTION_15();
  v1[100] = v0;
  v1[99] = v2;
  v3 = type metadata accessor for CATOption();
  OUTLINED_FUNCTION_21(v3);
  v1[101] = OUTLINED_FUNCTION_45();
  v4 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v4, v5, v6);
}

{
  v172 = v0;
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
  }

  v2 = type metadata accessor for Logger();
  *(v0 + 816) = __swift_project_value_buffer(v2, static Logger.siriPhone);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 800);
  v7 = (v6 & 0xFFFFFFFFFFFFLL | 0x6AE1000000000000);
  if (v5)
  {
    v1 = OUTLINED_FUNCTION_36();
    v170[0] = swift_slowAlloc();
    v8 = v170[0];
    *v1 = 136315650;
    *(v0 + 776) = *v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin010Actionableb7ControlC0CmMd, &_s27PhoneCallFlowDelegatePlugin010Actionableb7ControlC0CmMR);
    v9 = String.init<A>(describing:)();
    v17 = OUTLINED_FUNCTION_47_6(v9, v10, v11, v12, v13, v14, v15, v16);

    *(v1 + 4) = v17;
    *(v1 + 12) = 2080;
    v18 = PhoneCallControlAction.description.getter(*(v6 + 56));
    v26 = OUTLINED_FUNCTION_47_6(v18, v19, v20, v21, v22, v23, v24, v25);

    *(v1 + 14) = v26;
    *(v1 + 22) = 2080;
    (*(*v6 + 112))(v27);
    v28 = ActionableCallControlFlow.State.description.getter();
    v30 = v29;
    outlined destroy of ActionableCallControlFlow.State(v0 + 160);
    v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v30, v170);

    *(v1 + 24) = v31;
    _os_log_impl(&dword_0, v3, v4, "#%s executing for action=%s in state=%s", v1, 0x20u);
    swift_arrayDestroy();
    v32 = v8;
    v7 = (v6 & 0xFFFFFFFFFFFFLL | 0x6AE1000000000000);
    OUTLINED_FUNCTION_26_0(v32);
    OUTLINED_FUNCTION_26_0(v1);
  }

  *(v0 + 824) = v6;
  (*(**(v0 + 800) + 112))();
  switch(*(v0 + 584))
  {
    case 0:
      OUTLINED_FUNCTION_64_1();
      v33 = OUTLINED_FUNCTION_7_1();
      v34(v33);
      __swift_project_boxed_opaque_existential_1((v0 + 200), *(v0 + 224));
      v35 = OUTLINED_FUNCTION_7_1();
      if (v36(v35))
      {
        swift_unknownObjectRelease();
        __swift_destroy_boxed_opaque_existential_1((v0 + 200));
        v37 = Logger.logObject.getter();
        v38 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v37, v38))
        {
          *swift_slowAlloc() = 0;
          OUTLINED_FUNCTION_12_3();
        }

        v41 = *(v0 + 800);

        OUTLINED_FUNCTION_34_1();
        v171 = xmmword_426250;
      }

      else
      {
        __swift_destroy_boxed_opaque_existential_1((v0 + 200));
        v90 = Logger.logObject.getter();
        v91 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v90, v91))
        {
          *swift_slowAlloc() = 0;
          OUTLINED_FUNCTION_12_3();
        }

        v41 = *(v0 + 800);

        *&v171 = &type metadata for ActionableCallControlFlow.UnsupportedActionReason;
        *(&v171 + 1) = lazy protocol witness table accessor for type ActionableCallControlFlow.UnsupportedActionReason and conformance ActionableCallControlFlow.UnsupportedActionReason();
      }

      (*(*v41 + 120))(v170);
      goto LABEL_43;
    case 1:
      OUTLINED_FUNCTION_64_1();
      v69 = OUTLINED_FUNCTION_7_1();
      v70(v69);
      __swift_project_boxed_opaque_existential_1((v0 + 520), *(v0 + 544));
      v71 = OUTLINED_FUNCTION_7_1();
      v73 = v72(v71);
      *(v0 + 832) = v73;
      if (v73)
      {
        v75 = v73;
        v76 = v74;
        v77 = *(v0 + 800);
        __swift_destroy_boxed_opaque_existential_1((v0 + 520));
        v169 = (*(*v77 + 152) + **(*v77 + 152));
        swift_task_alloc();
        OUTLINED_FUNCTION_25();
        *(v0 + 840) = v78;
        *v78 = v79;
        v78[1] = ActionableCallControlFlow.execute();

        return v169(v0 + 280, v75, v76);
      }

      v94 = *(v0 + 800);
      __swift_destroy_boxed_opaque_existential_1((v0 + 520));

      v95 = Logger.logObject.getter();
      v96 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v95, v96))
      {
        v97 = *(v0 + 800);
        OUTLINED_FUNCTION_42();
        OUTLINED_FUNCTION_32_0();
        OUTLINED_FUNCTION_49_3();
        *v94 = 136315138;
        *(v0 + 752) = *v97;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin010Actionableb7ControlC0CmMd, &_s27PhoneCallFlowDelegatePlugin010Actionableb7ControlC0CmMR);
        v98 = String.init<A>(describing:)();
        v1 = v99;
        v7 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v98, v99, v170);

        *(v94 + 4) = v7;
        OUTLINED_FUNCTION_17_4();
        _os_log_impl(v100, v101, v102, v103, v104, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v4);
        OUTLINED_FUNCTION_14_0();
        OUTLINED_FUNCTION_12_3();
      }

      lazy protocol witness table accessor for type ActionableCallControlFlow.ActionableCallControlFlowError and conformance ActionableCallControlFlow.ActionableCallControlFlowError();
      v105 = &type metadata for ActionableCallControlFlow.ActionableCallControlFlowError;
      v106 = swift_allocError();
      v108 = v107;
      *(v107 + 24) = &type metadata for ActionableCallControlFlow.UnsupportedActionReason;
      *(v107 + 32) = lazy protocol witness table accessor for type ActionableCallControlFlow.UnsupportedActionReason and conformance ActionableCallControlFlow.UnsupportedActionReason();
      *(v108 + 40) = 1;
      swift_willThrow();
      *(v0 + 784) = v106;
      swift_errorRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_37;
      }

      if (*(v0 + 152))
      {
        if (*(v0 + 152) == 1)
        {
          OUTLINED_FUNCTION_44_1();
          outlined init with take of SPHConversation((v0 + 112), v0 + 640);
          outlined init with copy of SharedGlobalsProviding();

          v109 = Logger.logObject.getter();
          v110 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v109, v110))
          {
            v111 = *(v0 + 800);
            v112 = OUTLINED_FUNCTION_36();
            swift_slowAlloc();
            OUTLINED_FUNCTION_49_3();
            *v112 = 136315650;
            *(v0 + 744) = *v111;
            __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin010Actionableb7ControlC0CmMd, &_s27PhoneCallFlowDelegatePlugin010Actionableb7ControlC0CmMR);
            v113 = String.init<A>(describing:)();
            OUTLINED_FUNCTION_47_6(v113, v114, v115, v116, v117, v118, v119, v120);
            OUTLINED_FUNCTION_63_1();
            v121 = OUTLINED_FUNCTION_57_1();
            OUTLINED_FUNCTION_47_6(v121, v122, v123, v124, v125, v126, v127, v128);
            OUTLINED_FUNCTION_63_1();
            *(v112 + 14) = v1;
            *(v112 + 22) = &unk_426000;
            __swift_project_boxed_opaque_existential_1((v0 + 600), *(v0 + 624));
            OUTLINED_FUNCTION_33_3();
            v105 = dispatch thunk of CustomStringConvertible.description.getter();
            v130 = v129;
            __swift_destroy_boxed_opaque_existential_1((v0 + 600));
            getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v105, v130, v170);
            OUTLINED_FUNCTION_33_3();

            *(v112 + 24) = v105;
            OUTLINED_FUNCTION_35_5();
            _os_log_impl(v131, v132, v133, v134, v135, 0x20u);
            swift_arrayDestroy();
            OUTLINED_FUNCTION_14_0();
            OUTLINED_FUNCTION_12_3();
          }

          else
          {

            __swift_destroy_boxed_opaque_existential_1((v0 + 600));
          }

          OUTLINED_FUNCTION_55_6();
          (*(v105->Kind + 120))(v0 + 480);
          __swift_destroy_boxed_opaque_existential_1((v0 + 640));
        }

        else
        {
          outlined destroy of ActionableCallControlFlow.ActionableCallControlFlowError(v0 + 112);
LABEL_37:

          swift_errorRetain();
          v152 = Logger.logObject.getter();
          v153 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v152, v153))
          {
            v154 = OUTLINED_FUNCTION_42();
            v155 = OUTLINED_FUNCTION_36();
            v170[0] = v155;
            OUTLINED_FUNCTION_56_0(4.8149e-34);
            v156 = Error.localizedDescription.getter();
            v164 = OUTLINED_FUNCTION_47_6(v156, v157, v158, v159, v160, v161, v162, v163);

            *(v154 + 4) = v164;
            OUTLINED_FUNCTION_59_2(&dword_0, v165, v166, "#ActionableCallControlFlow encountered error: %s");
            __swift_destroy_boxed_opaque_existential_1(v155);
            OUTLINED_FUNCTION_26_0(v155);
            OUTLINED_FUNCTION_14_0();
          }

          OUTLINED_FUNCTION_39_7();
          OUTLINED_FUNCTION_34_1();
          v171 = xmmword_426240;
          OUTLINED_FUNCTION_37_3();
          (*(v167 + 120))(v170);
        }
      }

      else
      {
        OUTLINED_FUNCTION_44_1();
        v136 = *(v0 + 112);

        v137 = Logger.logObject.getter();
        v138 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v137, v138))
        {
          v139 = OUTLINED_FUNCTION_58_0();
          swift_slowAlloc();
          OUTLINED_FUNCTION_49_3();
          *v139 = 136315394;
          *(v0 + 712) = *v7;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin010Actionableb7ControlC0CmMd, &_s27PhoneCallFlowDelegatePlugin010Actionableb7ControlC0CmMR);
          v140 = String.init<A>(describing:)();
          v142 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v140, v141, v170);

          *(v139 + 4) = v142;
          *(v139 + 12) = 2080;
          v143 = PhoneCallControlAction.description.getter(v136);
          v145 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v143, v144, v170);

          *(v139 + 14) = v145;
          OUTLINED_FUNCTION_17_4();
          _os_log_impl(v146, v147, v148, v149, v150, 0x16u);
          swift_arrayDestroy();
          OUTLINED_FUNCTION_14_0();
          OUTLINED_FUNCTION_12_3();
        }

        OUTLINED_FUNCTION_39_7();
        OUTLINED_FUNCTION_34_1();
        v171 = xmmword_426240;
        OUTLINED_FUNCTION_37_3();
        (*(v151 + 120))(v170);
      }

LABEL_43:
      static ExecuteResponse.ongoing(requireInput:)();
LABEL_44:

      OUTLINED_FUNCTION_11();

      return v168();
    case 2:
      v47 = *(v0 + 800);
      OUTLINED_FUNCTION_34_1();
      v171 = xmmword_426240;
      (*(*v47 + 120))(v170);
      v48 = v47[5];
      v49 = v47[6];
      __swift_project_boxed_opaque_existential_1(v47 + 2, v48);
      (*(v49 + 16))(v48, v49);
      v50 = *(v0 + 40);
      v51 = *(v0 + 56);
      v52 = __swift_project_boxed_opaque_existential_1((v0 + 16), v50);
      *(v0 + 264) = v50;
      *(v0 + 272) = v51;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 240));
      (*(*(v50 - 8) + 16))(boxed_opaque_existential_1, v52, v50);
      type metadata accessor for SimpleOutputFlowAsync();
      swift_allocObject();

      v54 = SimpleOutputFlowAsync.init(outputPublisher:outputGenerator:)();
      __swift_destroy_boxed_opaque_existential_1((v0 + 16));
      *(v0 + 760) = v54;
      goto LABEL_12;
    case 3:
      v55 = *(v0 + 800);

      v56 = Logger.logObject.getter();
      v57 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v56, v57))
      {
        v58 = *(v0 + 800);
        OUTLINED_FUNCTION_42();
        v59 = OUTLINED_FUNCTION_32_0();
        v170[0] = v59;
        *v55 = 136315138;
        *(v0 + 704) = *v58;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin010Actionableb7ControlC0CmMd, &_s27PhoneCallFlowDelegatePlugin010Actionableb7ControlC0CmMR);
        v60 = String.init<A>(describing:)();
        v62 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v60, v61, v170);

        *(v55 + 4) = v62;
        OUTLINED_FUNCTION_17_4();
        _os_log_impl(v63, v64, v65, v66, v67, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v59);
        OUTLINED_FUNCTION_26_0(v59);
        OUTLINED_FUNCTION_12_3();
      }

      outlined init with copy of SharedGlobalsProviding();
      type metadata accessor for DismissSiriFlow();
      v68 = swift_allocObject();
      outlined init with take of SPHConversation((v0 + 360), v68 + 16);
      *(v0 + 768) = v68;
      lazy protocol witness table accessor for type ActionableCallControlFlow and conformance ActionableCallControlFlow(&lazy protocol witness table cache variable for type DismissSiriFlow and conformance DismissSiriFlow, 255, type metadata accessor for DismissSiriFlow, &protocol conformance descriptor for DismissSiriFlow);
      static ExecuteResponse.complete<A>(next:)();
      goto LABEL_21;
    case 4:
      v42 = *(v0 + 800);
      OUTLINED_FUNCTION_34_1();
      v171 = xmmword_426240;
      (*(*v42 + 120))(v170);
      type metadata accessor for StartCallCATsSimple(0);
      static CATOption.defaultMode.getter();
      v43 = CATWrapperSimple.__allocating_init(options:globals:)();
      v44 = static CommonOutputs.genericError(sharedGlobals:startCallCATsSimple:)(v42 + 2, v43);

      v46 = (*(*v44 + 112))(v45);

      *(v0 + 728) = v46;
      type metadata accessor for SimpleOutputFlowAsync();
LABEL_12:
      static ExecuteResponse.ongoing<A>(next:)();
      goto LABEL_21;
    default:
      v81 = *(v0 + 800);
      outlined init with take of SPHConversation((v0 + 560), v0 + 320);
      OUTLINED_FUNCTION_34_1();
      v171 = xmmword_426240;
      (*(*v81 + 120))(v170);
      v82 = v81[5];
      v83 = v81[6];
      __swift_project_boxed_opaque_existential_1(v81 + 2, v82);
      (*(v83 + 16))(v82, v83);
      v84 = *(v0 + 88);
      v85 = *(v0 + 104);
      v86 = __swift_project_boxed_opaque_existential_1((v0 + 64), v84);
      *(v0 + 424) = v84;
      *(v0 + 432) = v85;
      v87 = __swift_allocate_boxed_opaque_existential_1((v0 + 400));
      (*(*(v84 - 8) + 16))(v87, v86, v84);
      outlined init with copy of SharedGlobalsProviding();
      v88 = swift_allocObject();
      *(v88 + 16) = v81;
      outlined init with take of SPHConversation((v0 + 440), v88 + 24);
      type metadata accessor for SimpleOutputFlowAsync();
      swift_allocObject();

      v89 = SimpleOutputFlowAsync.init(outputPublisher:outputGenerator:)();
      __swift_destroy_boxed_opaque_existential_1((v0 + 64));
      *(v0 + 736) = v89;
      static ExecuteResponse.ongoing<A>(next:)();
      __swift_destroy_boxed_opaque_existential_1((v0 + 320));
LABEL_21:

      goto LABEL_44;
  }
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v5 = v4;
  *(v6 + 848) = v0;

  if (v0)
  {
    v7 = ActionableCallControlFlow.execute();
  }

  else
  {
    v7 = ActionableCallControlFlow.execute();
  }

  return _swift_task_switch(v7, 0, 0);
}

{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_39_7();
  OUTLINED_FUNCTION_37_3();
  (*(v1 + 120))(v0 + 280);
  static ExecuteResponse.ongoing(requireInput:)();
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_11();

  return v2();
}

{
  v47 = v1;
  swift_unknownObjectRelease();
  *(v1 + 784) = *(v1 + 848);
  swift_errorRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_10:

    swift_errorRetain();
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = OUTLINED_FUNCTION_42();
      v34 = OUTLINED_FUNCTION_36();
      v43 = v34;
      OUTLINED_FUNCTION_56_0(4.8149e-34);
      v35 = Error.localizedDescription.getter();
      v37 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35, v36, &v43);

      *(v33 + 4) = v37;
      OUTLINED_FUNCTION_59_2(&dword_0, v38, v39, "#ActionableCallControlFlow encountered error: %s");
      __swift_destroy_boxed_opaque_existential_1(v34);
      OUTLINED_FUNCTION_26_0(v34);
      OUTLINED_FUNCTION_14_0();
    }

    OUTLINED_FUNCTION_39_7();
    v43 = 0;
    v44 = 0;
    v45 = 0;
    v46 = xmmword_426240;
    OUTLINED_FUNCTION_37_3();
    (*(v40 + 120))(&v43);
    goto LABEL_15;
  }

  if (*(v1 + 152))
  {
    if (*(v1 + 152) == 1)
    {
      OUTLINED_FUNCTION_44_1();
      outlined init with take of SPHConversation((v1 + 112), v1 + 640);
      outlined init with copy of SharedGlobalsProviding();

      v5 = Logger.logObject.getter();
      v6 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v5, v6))
      {
        v7 = *(v1 + 800);
        v8 = OUTLINED_FUNCTION_36();
        v43 = swift_slowAlloc();
        *v8 = 136315650;
        *(v1 + 744) = *v7;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin010Actionableb7ControlC0CmMd, &_s27PhoneCallFlowDelegatePlugin010Actionableb7ControlC0CmMR);
        v9 = String.init<A>(describing:)();
        getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, &v43);
        OUTLINED_FUNCTION_63_1();
        v11 = OUTLINED_FUNCTION_57_1();
        getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, &v43);
        OUTLINED_FUNCTION_63_1();
        *(v8 + 14) = v2;
        *(v8 + 22) = v4;
        __swift_project_boxed_opaque_existential_1((v1 + 600), *(v1 + 624));
        OUTLINED_FUNCTION_33_3();
        v0 = dispatch thunk of CustomStringConvertible.description.getter();
        v14 = v13;
        __swift_destroy_boxed_opaque_existential_1((v1 + 600));
        getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v0, v14, &v43);
        OUTLINED_FUNCTION_33_3();

        *(v8 + 24) = v0;
        OUTLINED_FUNCTION_35_5();
        _os_log_impl(v15, v16, v17, v18, v19, 0x20u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_14_0();
        OUTLINED_FUNCTION_12_3();
      }

      else
      {

        __swift_destroy_boxed_opaque_existential_1((v1 + 600));
      }

      OUTLINED_FUNCTION_55_6();
      (*(*v0 + 120))(v1 + 480);
      __swift_destroy_boxed_opaque_existential_1((v1 + 640));
      goto LABEL_15;
    }

    outlined destroy of ActionableCallControlFlow.ActionableCallControlFlowError(v1 + 112);
    goto LABEL_10;
  }

  v20 = *(v1 + 112);

  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = OUTLINED_FUNCTION_58_0();
    v43 = swift_slowAlloc();
    *v23 = 136315394;
    *(v1 + 712) = *v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin010Actionableb7ControlC0CmMd, &_s27PhoneCallFlowDelegatePlugin010Actionableb7ControlC0CmMR);
    v24 = String.init<A>(describing:)();
    v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v25, &v43);

    *(v23 + 4) = v26;
    *(v23 + 12) = 2080;
    v27 = PhoneCallControlAction.description.getter(v20);
    v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v28, &v43);

    *(v23 + 14) = v29;
    _os_log_impl(&dword_0, v21, v22, "#ActionableCallControlFlow of type %s called with unsupported action %s", v23, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_14_0();
    OUTLINED_FUNCTION_26_0(v23);
  }

  OUTLINED_FUNCTION_39_7();
  v43 = 0;
  v44 = 0;
  v45 = 0;
  v46 = xmmword_426240;
  OUTLINED_FUNCTION_37_3();
  (*(v30 + 120))(&v43);
LABEL_15:

  static ExecuteResponse.ongoing(requireInput:)();

  OUTLINED_FUNCTION_11();

  return v41();
}

uint64_t closure #1 in ActionableCallControlFlow.execute()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = closure #1 in ActionableCallControlFlow.execute();

  return ActionableCallControlFlow.makeUnsupportedActionOnCallOutput(unsupportedActionReason:)();
}

uint64_t ActionableCallControlFlow.makeUnsupportedActionOnCallOutput(unsupportedActionReason:)()
{
  OUTLINED_FUNCTION_15();
  v1[30] = v2;
  v1[31] = v0;
  v1[29] = v3;
  v4 = type metadata accessor for DialogPhase();
  OUTLINED_FUNCTION_21(v4);
  v1[32] = OUTLINED_FUNCTION_45();
  v5 = type metadata accessor for OutputGenerationManifest();
  v1[33] = v5;
  v1[34] = *(v5 - 8);
  v1[35] = OUTLINED_FUNCTION_45();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v6);
  v1[36] = swift_task_alloc();
  v1[37] = swift_task_alloc();
  v1[38] = swift_task_alloc();
  v1[39] = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v7, v8, v9);
}

{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_51_5();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v2[17] = v1;
  v2[18] = v4;
  v2[19] = v0;
  OUTLINED_FUNCTION_24_9();
  *v5 = *v1;
  *(v6 + 328) = v0;

  OUTLINED_FUNCTION_24_9();
  outlined destroy of SpeakableString?(*(v7 + 312));
  OUTLINED_FUNCTION_19_5();

  return _swift_task_switch(v8, v9, v10);
}

{
  OUTLINED_FUNCTION_66_2();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_29_10(*(v0 + 144));
  OUTLINED_FUNCTION_30_5();
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_62_2(v1, v2);
  v3 = OUTLINED_FUNCTION_3_2();
  v4(v3);
  OUTLINED_FUNCTION_16_14();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v6 = OUTLINED_FUNCTION_48_0(v5);
  v7 = OUTLINED_FUNCTION_50_4(v6);
  OUTLINED_FUNCTION_22_1(v7, xmmword_426260);
  v8 = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_20_10(v8);
  *v9 = v10;
  OUTLINED_FUNCTION_1_18(v9);
  OUTLINED_FUNCTION_65_1();

  return dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)(v11, v12, v13, v14, v15, v16, v17, v18);
}

{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_51_5();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v2[20] = v1;
  v2[21] = v4;
  v2[22] = v0;
  OUTLINED_FUNCTION_24_9();
  *v5 = *v1;
  *(v6 + 344) = v0;

  OUTLINED_FUNCTION_24_9();
  outlined destroy of SpeakableString?(*(v7 + 304));
  OUTLINED_FUNCTION_19_5();

  return _swift_task_switch(v8, v9, v10);
}

{
  OUTLINED_FUNCTION_66_2();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_29_10(*(v0 + 168));
  OUTLINED_FUNCTION_30_5();
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_62_2(v1, v2);
  v3 = OUTLINED_FUNCTION_3_2();
  v4(v3);
  OUTLINED_FUNCTION_16_14();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v6 = OUTLINED_FUNCTION_48_0(v5);
  v7 = OUTLINED_FUNCTION_50_4(v6);
  OUTLINED_FUNCTION_22_1(v7, xmmword_426260);
  v8 = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_20_10(v8);
  *v9 = v10;
  OUTLINED_FUNCTION_1_18(v9);
  OUTLINED_FUNCTION_65_1();

  return dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)(v11, v12, v13, v14, v15, v16, v17, v18);
}

{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_51_5();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v2[23] = v1;
  v2[24] = v4;
  v2[25] = v0;
  OUTLINED_FUNCTION_24_9();
  *v5 = *v1;
  *(v6 + 360) = v0;

  OUTLINED_FUNCTION_24_9();
  outlined destroy of SpeakableString?(*(v7 + 296));
  OUTLINED_FUNCTION_19_5();

  return _swift_task_switch(v8, v9, v10);
}

{
  OUTLINED_FUNCTION_66_2();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_29_10(*(v0 + 192));
  OUTLINED_FUNCTION_30_5();
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_62_2(v1, v2);
  v3 = OUTLINED_FUNCTION_3_2();
  v4(v3);
  OUTLINED_FUNCTION_16_14();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v6 = OUTLINED_FUNCTION_48_0(v5);
  v7 = OUTLINED_FUNCTION_50_4(v6);
  OUTLINED_FUNCTION_22_1(v7, xmmword_426260);
  v8 = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_20_10(v8);
  *v9 = v10;
  OUTLINED_FUNCTION_1_18(v9);
  OUTLINED_FUNCTION_65_1();

  return dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)(v11, v12, v13, v14, v15, v16, v17, v18);
}

{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_51_5();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v2[26] = v1;
  v2[27] = v4;
  v2[28] = v0;
  OUTLINED_FUNCTION_24_9();
  *v5 = *v1;
  *(v6 + 376) = v0;

  OUTLINED_FUNCTION_24_9();
  outlined destroy of SpeakableString?(*(v7 + 288));
  OUTLINED_FUNCTION_19_5();

  return _swift_task_switch(v8, v9, v10);
}

{
  OUTLINED_FUNCTION_66_2();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_29_10(*(v0 + 216));
  OUTLINED_FUNCTION_30_5();
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_62_2(v1, v2);
  v3 = OUTLINED_FUNCTION_3_2();
  v4(v3);
  OUTLINED_FUNCTION_16_14();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v6 = OUTLINED_FUNCTION_48_0(v5);
  v7 = OUTLINED_FUNCTION_50_4(v6);
  OUTLINED_FUNCTION_22_1(v7, xmmword_426260);
  v8 = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_20_10(v8);
  *v9 = v10;
  OUTLINED_FUNCTION_1_18(v9);
  OUTLINED_FUNCTION_65_1();

  return dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)(v11, v12, v13, v14, v15, v16, v17, v18);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  v1 = *v0;
  OUTLINED_FUNCTION_4_2();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v3, v4, v5);
}

{
  OUTLINED_FUNCTION_31();
  v2 = *(v0 + 272);
  v1 = *(v0 + 280);
  v3 = *(v0 + 264);

  (*(v2 + 8))(v1, v3);
  __swift_destroy_boxed_opaque_existential_1((v0 + 96));

  OUTLINED_FUNCTION_11();

  return v4();
}

void ActionableCallControlFlow.makeUnsupportedActionOnCallOutput(unsupportedActionReason:)()
{
  outlined init with copy of SharedGlobalsProviding();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin17UnsupportedAction_pMd, &_s27PhoneCallFlowDelegatePlugin17UnsupportedAction_pMR);
  v3 = swift_dynamicCast();
  if (v3)
  {
    v6 = OUTLINED_FUNCTION_2_15();
    v7(v6);
    v8 = type metadata accessor for SpeakableString();
    OUTLINED_FUNCTION_8_11(v8);
    OUTLINED_FUNCTION_18_1();
    v9 = swift_task_alloc();
    v1[40] = v9;
    *v9 = v1;
    v9[1] = ActionableCallControlFlow.makeUnsupportedActionOnCallOutput(unsupportedActionReason:);
    OUTLINED_FUNCTION_9_6(v1[39]);
    OUTLINED_FUNCTION_46_0();

    __asm { BRAA            X1, X16 }
  }

  if (OUTLINED_FUNCTION_43_6(v3, v4, v5, &type metadata for ActionableCallControlFlow.UnsupportedSpeakerphoneActionReason))
  {
    v14 = OUTLINED_FUNCTION_2_15();
    v15(v14);
    v16 = type metadata accessor for SpeakableString();
    OUTLINED_FUNCTION_8_11(v16);
    OUTLINED_FUNCTION_18_1();
    v17 = swift_task_alloc();
    v1[42] = v17;
    *v17 = v1;
    v17[1] = ActionableCallControlFlow.makeUnsupportedActionOnCallOutput(unsupportedActionReason:);
    OUTLINED_FUNCTION_9_6(v1[38]);
    OUTLINED_FUNCTION_46_0();

    __asm { BRAA            X1, X16 }
  }

  if (OUTLINED_FUNCTION_43_6((v1 + 51), v12, v13, &type metadata for ActionableCallControlFlow.UnsupportedSwitchToFaceTimeReason))
  {
    v22 = OUTLINED_FUNCTION_2_15();
    v23(v22);
    v24 = type metadata accessor for SpeakableString();
    OUTLINED_FUNCTION_8_11(v24);
    OUTLINED_FUNCTION_18_1();
    v25 = swift_task_alloc();
    v1[44] = v25;
    *v25 = v1;
    v25[1] = ActionableCallControlFlow.makeUnsupportedActionOnCallOutput(unsupportedActionReason:);
    OUTLINED_FUNCTION_9_6(v1[37]);
    OUTLINED_FUNCTION_46_0();

    __asm { BRAA            X1, X16 }
  }

  if (OUTLINED_FUNCTION_43_6(v1 + 409, v20, v21, &type metadata for ActionableCallControlFlow.UnsupportedHoldActionReason))
  {
    v28 = OUTLINED_FUNCTION_2_15();
    v29(v28);
    v30 = type metadata accessor for SpeakableString();
    OUTLINED_FUNCTION_8_11(v30);
    OUTLINED_FUNCTION_18_1();
    v31 = swift_task_alloc();
    v1[46] = v31;
    *v31 = v1;
    v31[1] = ActionableCallControlFlow.makeUnsupportedActionOnCallOutput(unsupportedActionReason:);
    OUTLINED_FUNCTION_9_6(v1[36]);
    OUTLINED_FUNCTION_46_0();

    __asm { BRAA            X1, X16 }
  }

  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
  }

  v34 = type metadata accessor for Logger();
  __swift_project_value_buffer(v34, static Logger.siriPhone);
  outlined init with copy of SharedGlobalsProviding();
  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v35, v36))
  {
    OUTLINED_FUNCTION_42();
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_49_3();
    *v0 = 136315138;
    __swift_project_boxed_opaque_existential_1(v1 + 7, v1[10]);
    OUTLINED_FUNCTION_33_3();
    v37 = dispatch thunk of CustomStringConvertible.description.getter();
    v39 = v38;
    __swift_destroy_boxed_opaque_existential_1(v1 + 7);
    getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v37, v39, &v48);
    OUTLINED_FUNCTION_33_3();

    *(v0 + 4) = v37;
    OUTLINED_FUNCTION_35_5();
    _os_log_impl(v40, v41, v42, v43, v44, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v2);
    OUTLINED_FUNCTION_14_0();
    OUTLINED_FUNCTION_12_3();
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1(v1 + 7);
  }

  lazy protocol witness table accessor for type ActionableCallControlFlow.ActionableCallControlFlowError and conformance ActionableCallControlFlow.ActionableCallControlFlowError();
  swift_allocError();
  *v45 = 0u;
  *(v45 + 16) = 0u;
  *(v45 + 32) = 0;
  *(v45 + 40) = 3;
  swift_willThrow();
  OUTLINED_FUNCTION_5_10();

  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_46_0();

  __asm { BRAA            X1, X16 }
}

uint64_t ActionableCallControlFlow.makeUnsupportedActionOnCallOutput(unsupportedActionReason:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_61_0();
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_5_10();

  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_60();

  return v11(v10, v11, v12, v13, v14, v15, v16, v17, a9, a10);
}

{
  OUTLINED_FUNCTION_61_0();
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_5_10();

  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_60();

  return v11(v10, v11, v12, v13, v14, v15, v16, v17, a9, a10);
}

{
  OUTLINED_FUNCTION_61_0();
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_5_10();

  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_60();

  return v11(v10, v11, v12, v13, v14, v15, v16, v17, a9, a10);
}

{
  OUTLINED_FUNCTION_61_0();
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_5_10();

  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_60();

  return v11(v10, v11, v12, v13, v14, v15, v16, v17, a9, a10);
}

uint64_t closure #2 in ActionableCallControlFlow.execute()(uint64_t a1)
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = closure #2 in ActionableCallControlFlow.execute();

  return ActionableCallControlFlow.makeCallControlOutput()();
}

uint64_t closure #2 in ActionableCallControlFlow.execute()()
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  v1 = *v0;
  OUTLINED_FUNCTION_4_2();
  *v2 = v1;

  OUTLINED_FUNCTION_11();

  return v3();
}

uint64_t ActionableCallControlFlow.makeCallControlOutput()()
{
  OUTLINED_FUNCTION_15();
  v1[7] = v2;
  v1[8] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v3);
  v1[9] = OUTLINED_FUNCTION_45();
  v4 = type metadata accessor for DialogPhase();
  OUTLINED_FUNCTION_21(v4);
  v1[10] = OUTLINED_FUNCTION_45();
  v5 = type metadata accessor for OutputGenerationManifest();
  v1[11] = v5;
  v1[12] = *(v5 - 8);
  v1[13] = OUTLINED_FUNCTION_45();
  v6 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v6, v7, v8);
}

{
  OUTLINED_FUNCTION_23_0();
  v1 = v0[9];
  v2 = v0[8];
  static DialogPhase.summary.getter();
  OUTLINED_FUNCTION_0_11();
  OutputGenerationManifest.init(dialogPhase:_:)();
  v3 = *(v2 + 64);
  PhoneCallControlAction.rawValue.getter(*(v2 + 56));
  String.toSpeakableString.getter();

  v4 = type metadata accessor for SpeakableString();
  __swift_storeEnumTagSinglePayload(v1, 0, 1, v4);
  v8 = (*(*v3 + class metadata base offset for PhoneCallControlCATsSimple) + **(*v3 + class metadata base offset for PhoneCallControlCATsSimple));
  v5 = swift_task_alloc();
  v0[14] = v5;
  *v5 = v0;
  v5[1] = ActionableCallControlFlow.makeCallControlOutput();
  v6 = v0[9];

  return v8(v6);
}

{
  OUTLINED_FUNCTION_66_2();
  OUTLINED_FUNCTION_23_0();
  v3 = v2;
  v4 = *v1;
  v5 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v6 = v5;
  *v6 = *v1;
  *(v5 + 120) = v0;

  v7 = *(v4 + 72);
  if (!v0)
  {
    *(v5 + 128) = v3;
  }

  outlined destroy of SpeakableString?(v7);
  OUTLINED_FUNCTION_65_1();

  return _swift_task_switch(v8, v9, v10);
}

{
  OUTLINED_FUNCTION_23_0();
  v1 = v0[16];
  v2 = v0[8];
  v3 = v2[6];
  __swift_project_boxed_opaque_existential_1(v2 + 2, v2[5]);
  v4 = OUTLINED_FUNCTION_40_0();
  v5(v4, v3);
  v6 = v0[5];
  v7 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v9 = OUTLINED_FUNCTION_48_0(v8);
  v0[17] = v9;
  *(v9 + 16) = xmmword_426260;
  *(v9 + 32) = v1;
  v10 = *(v7 + 8);
  v11 = v1;
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v0[18] = v15;
  *v15 = v16;
  v15[1] = ActionableCallControlFlow.makeCallControlOutput();
  v17 = v0[13];
  v18 = v0[7];

  return dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)(v18, v9, v17, v6, v10, v12, v13, v14);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  v1 = *v0;
  OUTLINED_FUNCTION_4_2();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v3, v4, v5);
}

{
  OUTLINED_FUNCTION_66_2();
  OUTLINED_FUNCTION_23_0();
  v2 = *(v0 + 96);
  v1 = *(v0 + 104);
  v3 = *(v0 + 88);

  (*(v2 + 8))(v1, v3);
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_65_1();

  return v5(v4, v5, v6, v7, v8, v9, v10, v11);
}

{
  OUTLINED_FUNCTION_27();
  (*(v0[12] + 8))(v0[13], v0[11]);

  OUTLINED_FUNCTION_11();

  return v1();
}

uint64_t ActionableCallControlFlow.executeAction(currentCall:)()
{
  return _swift_task_switch(ActionableCallControlFlow.executeAction(currentCall:), 0, 0);
}

{
  OUTLINED_FUNCTION_31();
  v15 = v1;
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.siriPhone);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v3, v4))
  {
    OUTLINED_FUNCTION_42();
    v5 = OUTLINED_FUNCTION_32_0();
    v14 = v5;
    *v0 = 136315138;
    *(v0 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000055, 0x8000000000456EF0, &v14);
    OUTLINED_FUNCTION_17_4();
    _os_log_impl(v6, v7, v8, v9, v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v5);
    OUTLINED_FUNCTION_26_0(v5);
    OUTLINED_FUNCTION_12_3();
  }

  lazy protocol witness table accessor for type ActionableCallControlFlow.ActionableCallControlFlowError and conformance ActionableCallControlFlow.ActionableCallControlFlowError();
  swift_allocError();
  *v11 = 0xD00000000000001BLL;
  *(v11 + 8) = 0x8000000000456F50;
  *(v11 + 40) = 2;
  swift_willThrow();
  OUTLINED_FUNCTION_11();

  return v12();
}

uint64_t ActionableCallControlFlow.deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  outlined destroy of ActionableCallControlFlow.State(v0 + 72);
  return v0;
}

uint64_t ActionableCallControlFlow.__deallocating_deinit()
{
  ActionableCallControlFlow.deinit();

  return swift_deallocClassInstance();
}

uint64_t protocol witness for Flow.onAsync(input:) in conformance ActionableCallControlFlow(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = protocol witness for Flow.onAsync(input:) in conformance ActionableCallControlFlow;

  return Flow.onAsync(input:)(a1, a2, a3);
}

uint64_t protocol witness for Flow.execute() in conformance ActionableCallControlFlow()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = closure #2 in ActionableCallControlFlow.execute();

  return ActionableCallControlFlow.execute()();
}

uint64_t protocol witness for Flow.exitValue.getter in conformance ActionableCallControlFlow(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for ActionableCallControlFlow();

  return Flow<>.exitValue.getter(v3, a2);
}

unint64_t lazy protocol witness table accessor for type ActionableCallControlFlow.UnsupportedActionReason and conformance ActionableCallControlFlow.UnsupportedActionReason()
{
  result = lazy protocol witness table cache variable for type ActionableCallControlFlow.UnsupportedActionReason and conformance ActionableCallControlFlow.UnsupportedActionReason;
  if (!lazy protocol witness table cache variable for type ActionableCallControlFlow.UnsupportedActionReason and conformance ActionableCallControlFlow.UnsupportedActionReason)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ActionableCallControlFlow.UnsupportedActionReason and conformance ActionableCallControlFlow.UnsupportedActionReason);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ActionableCallControlFlow.UnsupportedActionReason and conformance ActionableCallControlFlow.UnsupportedActionReason;
  if (!lazy protocol witness table cache variable for type ActionableCallControlFlow.UnsupportedActionReason and conformance ActionableCallControlFlow.UnsupportedActionReason)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ActionableCallControlFlow.UnsupportedActionReason and conformance ActionableCallControlFlow.UnsupportedActionReason);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ActionableCallControlFlow.UnsupportedActionReason and conformance ActionableCallControlFlow.UnsupportedActionReason;
  if (!lazy protocol witness table cache variable for type ActionableCallControlFlow.UnsupportedActionReason and conformance ActionableCallControlFlow.UnsupportedActionReason)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ActionableCallControlFlow.UnsupportedActionReason and conformance ActionableCallControlFlow.UnsupportedActionReason);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ActionableCallControlFlow.UnsupportedActionReason and conformance ActionableCallControlFlow.UnsupportedActionReason;
  if (!lazy protocol witness table cache variable for type ActionableCallControlFlow.UnsupportedActionReason and conformance ActionableCallControlFlow.UnsupportedActionReason)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ActionableCallControlFlow.UnsupportedActionReason and conformance ActionableCallControlFlow.UnsupportedActionReason);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ActionableCallControlFlow.UnsupportedSpeakerphoneActionReason and conformance ActionableCallControlFlow.UnsupportedSpeakerphoneActionReason()
{
  result = lazy protocol witness table cache variable for type ActionableCallControlFlow.UnsupportedSpeakerphoneActionReason and conformance ActionableCallControlFlow.UnsupportedSpeakerphoneActionReason;
  if (!lazy protocol witness table cache variable for type ActionableCallControlFlow.UnsupportedSpeakerphoneActionReason and conformance ActionableCallControlFlow.UnsupportedSpeakerphoneActionReason)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ActionableCallControlFlow.UnsupportedSpeakerphoneActionReason and conformance ActionableCallControlFlow.UnsupportedSpeakerphoneActionReason);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ActionableCallControlFlow.UnsupportedSpeakerphoneActionReason and conformance ActionableCallControlFlow.UnsupportedSpeakerphoneActionReason;
  if (!lazy protocol witness table cache variable for type ActionableCallControlFlow.UnsupportedSpeakerphoneActionReason and conformance ActionableCallControlFlow.UnsupportedSpeakerphoneActionReason)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ActionableCallControlFlow.UnsupportedSpeakerphoneActionReason and conformance ActionableCallControlFlow.UnsupportedSpeakerphoneActionReason);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ActionableCallControlFlow.UnsupportedSpeakerphoneActionReason and conformance ActionableCallControlFlow.UnsupportedSpeakerphoneActionReason;
  if (!lazy protocol witness table cache variable for type ActionableCallControlFlow.UnsupportedSpeakerphoneActionReason and conformance ActionableCallControlFlow.UnsupportedSpeakerphoneActionReason)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ActionableCallControlFlow.UnsupportedSpeakerphoneActionReason and conformance ActionableCallControlFlow.UnsupportedSpeakerphoneActionReason);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ActionableCallControlFlow.UnsupportedSpeakerphoneActionReason and conformance ActionableCallControlFlow.UnsupportedSpeakerphoneActionReason;
  if (!lazy protocol witness table cache variable for type ActionableCallControlFlow.UnsupportedSpeakerphoneActionReason and conformance ActionableCallControlFlow.UnsupportedSpeakerphoneActionReason)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ActionableCallControlFlow.UnsupportedSpeakerphoneActionReason and conformance ActionableCallControlFlow.UnsupportedSpeakerphoneActionReason);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ActionableCallControlFlow.UnsupportedSwitchToFaceTimeReason and conformance ActionableCallControlFlow.UnsupportedSwitchToFaceTimeReason()
{
  result = lazy protocol witness table cache variable for type ActionableCallControlFlow.UnsupportedSwitchToFaceTimeReason and conformance ActionableCallControlFlow.UnsupportedSwitchToFaceTimeReason;
  if (!lazy protocol witness table cache variable for type ActionableCallControlFlow.UnsupportedSwitchToFaceTimeReason and conformance ActionableCallControlFlow.UnsupportedSwitchToFaceTimeReason)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ActionableCallControlFlow.UnsupportedSwitchToFaceTimeReason and conformance ActionableCallControlFlow.UnsupportedSwitchToFaceTimeReason);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ActionableCallControlFlow.UnsupportedSwitchToFaceTimeReason and conformance ActionableCallControlFlow.UnsupportedSwitchToFaceTimeReason;
  if (!lazy protocol witness table cache variable for type ActionableCallControlFlow.UnsupportedSwitchToFaceTimeReason and conformance ActionableCallControlFlow.UnsupportedSwitchToFaceTimeReason)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ActionableCallControlFlow.UnsupportedSwitchToFaceTimeReason and conformance ActionableCallControlFlow.UnsupportedSwitchToFaceTimeReason);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ActionableCallControlFlow.UnsupportedSwitchToFaceTimeReason and conformance ActionableCallControlFlow.UnsupportedSwitchToFaceTimeReason;
  if (!lazy protocol witness table cache variable for type ActionableCallControlFlow.UnsupportedSwitchToFaceTimeReason and conformance ActionableCallControlFlow.UnsupportedSwitchToFaceTimeReason)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ActionableCallControlFlow.UnsupportedSwitchToFaceTimeReason and conformance ActionableCallControlFlow.UnsupportedSwitchToFaceTimeReason);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ActionableCallControlFlow.UnsupportedSwitchToFaceTimeReason and conformance ActionableCallControlFlow.UnsupportedSwitchToFaceTimeReason;
  if (!lazy protocol witness table cache variable for type ActionableCallControlFlow.UnsupportedSwitchToFaceTimeReason and conformance ActionableCallControlFlow.UnsupportedSwitchToFaceTimeReason)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ActionableCallControlFlow.UnsupportedSwitchToFaceTimeReason and conformance ActionableCallControlFlow.UnsupportedSwitchToFaceTimeReason);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ActionableCallControlFlow.UnsupportedHoldActionReason and conformance ActionableCallControlFlow.UnsupportedHoldActionReason()
{
  result = lazy protocol witness table cache variable for type ActionableCallControlFlow.UnsupportedHoldActionReason and conformance ActionableCallControlFlow.UnsupportedHoldActionReason;
  if (!lazy protocol witness table cache variable for type ActionableCallControlFlow.UnsupportedHoldActionReason and conformance ActionableCallControlFlow.UnsupportedHoldActionReason)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ActionableCallControlFlow.UnsupportedHoldActionReason and conformance ActionableCallControlFlow.UnsupportedHoldActionReason);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ActionableCallControlFlow.UnsupportedHoldActionReason and conformance ActionableCallControlFlow.UnsupportedHoldActionReason;
  if (!lazy protocol witness table cache variable for type ActionableCallControlFlow.UnsupportedHoldActionReason and conformance ActionableCallControlFlow.UnsupportedHoldActionReason)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ActionableCallControlFlow.UnsupportedHoldActionReason and conformance ActionableCallControlFlow.UnsupportedHoldActionReason);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ActionableCallControlFlow.UnsupportedHoldActionReason and conformance ActionableCallControlFlow.UnsupportedHoldActionReason;
  if (!lazy protocol witness table cache variable for type ActionableCallControlFlow.UnsupportedHoldActionReason and conformance ActionableCallControlFlow.UnsupportedHoldActionReason)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ActionableCallControlFlow.UnsupportedHoldActionReason and conformance ActionableCallControlFlow.UnsupportedHoldActionReason);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ActionableCallControlFlow.UnsupportedHoldActionReason and conformance ActionableCallControlFlow.UnsupportedHoldActionReason;
  if (!lazy protocol witness table cache variable for type ActionableCallControlFlow.UnsupportedHoldActionReason and conformance ActionableCallControlFlow.UnsupportedHoldActionReason)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ActionableCallControlFlow.UnsupportedHoldActionReason and conformance ActionableCallControlFlow.UnsupportedHoldActionReason);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type ActionableCallControlFlow and conformance ActionableCallControlFlow(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t partial apply for closure #2 in ActionableCallControlFlow.execute()()
{
  OUTLINED_FUNCTION_15();
  v2 = v1;
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v0 + 16) = v3;
  *v3 = v4;
  v3[1] = closure #2 in ActionableCallControlFlow.execute();

  return closure #2 in ActionableCallControlFlow.execute()(v2);
}

uint64_t partial apply for closure #1 in ActionableCallControlFlow.execute()()
{
  OUTLINED_FUNCTION_27();
  v3 = v2;
  v4 = *(v0 + 16);
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v1 + 16) = v5;
  *v5 = v6;
  v5[1] = closure #1 in ActionableCallControlFlow.execute();

  return closure #1 in ActionableCallControlFlow.execute()(v3, v4, v0 + 24);
}

unint64_t lazy protocol witness table accessor for type ActionableCallControlFlow.ActionableCallControlFlowError and conformance ActionableCallControlFlow.ActionableCallControlFlowError()
{
  result = lazy protocol witness table cache variable for type ActionableCallControlFlow.ActionableCallControlFlowError and conformance ActionableCallControlFlow.ActionableCallControlFlowError;
  if (!lazy protocol witness table cache variable for type ActionableCallControlFlow.ActionableCallControlFlowError and conformance ActionableCallControlFlow.ActionableCallControlFlowError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ActionableCallControlFlow.ActionableCallControlFlowError and conformance ActionableCallControlFlow.ActionableCallControlFlowError);
  }

  return result;
}

uint64_t outlined destroy of SpeakableString?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t instantiation function for generic protocol witness table for ActionableCallControlFlow.UnsupportedActionReason(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  a1[1] = (a4)(a1, a2, a3);
  a1[2] = a5();
  result = a6();
  a1[3] = result;
  return result;
}

uint64_t get_enum_tag_for_layout_string_27PhoneCallFlowDelegatePlugin010Actionableb7ControlC0C0fbgC5ErrorO(uint64_t a1)
{
  if ((*(a1 + 40) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 40) & 3;
  }
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

uint64_t getEnumTagSinglePayload for ActionableCallControlFlow.ActionableCallControlFlowError(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 41))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 40);
  if (v3 >= 4)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ActionableCallControlFlow.ActionableCallControlFlowError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 25) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t destructiveInjectEnumTag for ActionableCallControlFlow.ActionableCallControlFlowError(uint64_t result, unsigned int a2)
{
  if (a2 > 2)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 3;
    LOBYTE(a2) = 3;
  }

  *(result + 40) = a2;
  return result;
}

uint64_t getEnumTagSinglePayload for ActionableCallControlFlow.UnsupportedActionReason(unsigned int *a1, int a2)
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

_BYTE *storeEnumTagSinglePayload for ActionableCallControlFlow.UnsupportedActionReason(_BYTE *result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for ActionableCallControlFlow.UnsupportedHoldActionReason(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFE)
  {
    if (a2 + 2 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 2) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 3;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v5 = v6 - 3;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for ActionableCallControlFlow.UnsupportedHoldActionReason(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for ActionableCallControlFlow.UnsupportedSwitchToFaceTimeReason(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF7)
  {
    if (a2 + 9 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 9) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 10;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v5 = v6 - 10;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for ActionableCallControlFlow.UnsupportedSwitchToFaceTimeReason(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t get_enum_tag_for_layout_string_27PhoneCallFlowDelegatePlugin010Actionableb7ControlC0C5StateO(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for ActionableCallControlFlow.State(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFFA && *(a1 + 40))
  {
    return (*a1 + 2147483643);
  }

  v3 = *(a1 + 24);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 4;
  if (v4 >= 6)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ActionableCallControlFlow.State(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFB)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2147483643;
    if (a3 >= 0x7FFFFFFB)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFB)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2 + 4;
    }
  }

  return result;
}

double destructiveInjectEnumTag for ActionableCallControlFlow.State(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 8) = 0u;
    *(a1 + 24) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
  }

  else if (a2)
  {
    *(a1 + 24) = (a2 - 1);
  }

  return result;
}

id OUTLINED_FUNCTION_29_10@<X0>(void *a1@<X8>)
{
  *(v1 + 384) = a1;

  return a1;
}

unint64_t OUTLINED_FUNCTION_47_6(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  return getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, va);
}

uint64_t OUTLINED_FUNCTION_53_5(uint64_t result)
{
  *(v2 + 32) = result;
  *v2 = v1;
  *(v2 + 40) = 1;
  return result;
}

void OUTLINED_FUNCTION_54_5(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v6, v4, a4, v5, 2u);
}

uint64_t OUTLINED_FUNCTION_55_6()
{

  return outlined init with copy of SharedGlobalsProviding();
}

uint64_t OUTLINED_FUNCTION_56_0(float a1)
{
  *v1 = a1;

  return swift_getErrorValue();
}

uint64_t OUTLINED_FUNCTION_58_0()
{

  return swift_slowAlloc();
}

PhoneCallFlowDelegatePlugin::AddCallParticipantCATPatternsIdentifiers_optional __swiftcall AddCallParticipantCATPatternsIdentifiers.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v2._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of AddCallParticipantCATPatternsIdentifiers.init(rawValue:), v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

unint64_t AddCallParticipantCATPatternsIdentifiers.rawValue.getter(char a1)
{
  result = 0xD000000000000028;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000027;
      break;
    case 2:
      result = 0xD00000000000002ALL;
      break;
    case 3:
      result = 0xD000000000000045;
      break;
    default:
      return result;
  }

  return result;
}

PhoneCallFlowDelegatePlugin::AddCallParticipantCATPatternsIdentifiers_optional protocol witness for RawRepresentable.init(rawValue:) in conformance AddCallParticipantCATPatternsIdentifiers@<W0>(Swift::String *a1@<X0>, PhoneCallFlowDelegatePlugin::AddCallParticipantCATPatternsIdentifiers_optional *a2@<X8>)
{
  result.value = AddCallParticipantCATPatternsIdentifiers.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

unint64_t protocol witness for RawRepresentable.rawValue.getter in conformance AddCallParticipantCATPatternsIdentifiers@<X0>(unint64_t *a1@<X8>)
{
  result = AddCallParticipantCATPatternsIdentifiers.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t UserDialogActParse.task.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t StartCallUnsupportedPreferredCallProviderAccountSetupRequiredParameters.intent.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

__n128 *AddCallParticipantIntentHandledResponseParameters.asKeyValuePairs()(unint64_t a1, unint64_t a2, char a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v6 = swift_allocObject();
  OUTLINED_FUNCTION_2_10(v6, xmmword_426980);
  if (a1)
  {
    v7 = type metadata accessor for PhoneCallInvite(0);
    v8 = a1;
  }

  else
  {
    v8 = 0;
    v7 = 0;
    v6[3].n128_u64[1] = 0;
    v6[4].n128_u64[0] = 0;
  }

  v6[3].n128_u64[0] = v8;
  v6[4].n128_u64[1] = v7;
  v6[5].n128_u64[0] = 0x656369766564;
  v6[5].n128_u64[1] = 0xE600000000000000;
  if (a2)
  {
    v9 = type metadata accessor for SirikitDeviceState();
    v10 = a2;
  }

  else
  {
    v10 = 0;
    v9 = 0;
    v6[6].n128_u64[1] = 0;
    v6[7].n128_u64[0] = 0;
  }

  v6[6].n128_u64[0] = v10;
  v6[7].n128_u64[1] = v9;
  v6[8].n128_u64[0] = 0xD000000000000015;
  v6[8].n128_u64[1] = 0x8000000000456FF0;
  v6[10].n128_u64[1] = &type metadata for Bool;
  v6[9].n128_u8[0] = a3 & 1;

  return v6;
}

double AddCallParticipantPromptForParticipantParameters.asKeyValuePairs()(char a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v2 = swift_allocObject();
  *&result = 1;
  *(v2 + 16) = xmmword_424FD0;
  *(v2 + 32) = 0xD000000000000015;
  *(v2 + 40) = 0x8000000000457010;
  *(v2 + 72) = &type metadata for Bool;
  *(v2 + 48) = a1;
  return result;
}

uint64_t AddCallParticipantCATPatternsExecutor.intentHandledResponse(isFaceTimeFirstDevice:_:)(char a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 48) = a3;
  *(v4 + 56) = v3;
  *(v4 + 40) = a2;
  *(v4 + 33) = a1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t AddCallParticipantCATPatternsExecutor.intentHandledResponse(isFaceTimeFirstDevice:_:)()
{
  *(v0 + 16) = 0;
  v1 = *(v0 + 40);
  v2 = *(v0 + 33);
  *(v0 + 24) = 0;
  *(v0 + 32) = v2;
  v1(v0 + 16);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  *(v0 + 64) = v3;
  v5 = *(v0 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v6 = swift_allocObject();
  *(v0 + 72) = v6;
  OUTLINED_FUNCTION_2_10(v6, xmmword_426980);
  if (v3)
  {
    v7 = type metadata accessor for PhoneCallInvite(0);
    v8 = v3;
  }

  else
  {
    v8 = 0;
    v7 = 0;
    v6[3].n128_u64[1] = 0;
    v6[4].n128_u64[0] = 0;
  }

  v6[3].n128_u64[0] = v8;
  v6[4].n128_u64[1] = v7;
  v6[5].n128_u64[0] = 0x656369766564;
  v6[5].n128_u64[1] = 0xE600000000000000;
  v9 = 0;
  if (v4)
  {
    v9 = type metadata accessor for SirikitDeviceState();
  }

  else
  {
    v6[6].n128_u64[1] = 0;
    v6[7].n128_u64[0] = 0;
  }

  *(v0 + 80) = v4;
  v6[6].n128_u64[0] = v4;
  v6[8].n128_u64[1] = 0x8000000000456FF0;
  v6[10].n128_u64[1] = &type metadata for Bool;
  v6[9].n128_u8[0] = v5;
  v12 = (&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
  v6[7].n128_u64[1] = v9;
  v6[8].n128_u64[0] = 0xD000000000000015;

  v10 = swift_task_alloc();
  *(v0 + 88) = v10;
  *v10 = v0;
  v10[1] = AddCallParticipantCATPatternsExecutor.intentHandledResponse(isFaceTimeFirstDevice:_:);

  return v12(0xD000000000000028, 0x80000000004519A0, v6);
}

{
  OUTLINED_FUNCTION_15();

  v1 = *(v0 + 8);
  v2 = *(v0 + 104);

  return v1(v2);
}

{
  OUTLINED_FUNCTION_15();

  v1 = *(v0 + 8);

  return v1();
}