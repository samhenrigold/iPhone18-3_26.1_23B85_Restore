uint64_t sub_21AFAF108(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t *))
{
  v5 = *(a1 + 8);
  v7 = *a1;
  v8 = v5;
  return a5(&v7);
}

uint64_t (*Apple_Parsec_Ondeviceanalytics_SpotlightCarryReport.invocationType.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 16) = v1;
  v2 = *(v1 + 24);
  if (v2 < 0)
  {
    v3 = 0;
    LOBYTE(v2) = 1;
  }

  else
  {
    v3 = *(v1 + 16);
  }

  *a1 = v3;
  *(a1 + 8) = v2 & 1;
  return sub_21AFAF198;
}

uint64_t sub_21AFAF198(uint64_t result)
{
  v1 = *(result + 16);
  v2 = *(result + 8);
  *(v1 + 16) = *result;
  *(v1 + 24) = v2;
  return result;
}

uint64_t Apple_Parsec_Ondeviceanalytics_SpotlightCarryReport.invocationTypeSummarized.getter()
{
  if (*(v0 + 24) <= -3)
  {
    return OUTLINED_FUNCTION_41_0(*(v0 + 16));
  }

  else
  {
    return OUTLINED_FUNCTION_41_0(0);
  }
}

uint64_t Apple_Parsec_Ondeviceanalytics_SpotlightCarryReport.invocationTypeSummarized.setter(uint64_t result)
{
  *(v1 + 16) = result & 1;
  *(v1 + 24) = 0x80;
  return result;
}

uint64_t *(*Apple_Parsec_Ondeviceanalytics_SpotlightCarryReport.invocationTypeSummarized.modify(uint64_t a1))(uint64_t *result)
{
  *a1 = v1;
  if (*(v1 + 24) <= -3)
  {
    v2 = *(v1 + 16);
  }

  else
  {
    LOBYTE(v2) = 0;
  }

  *(a1 + 8) = v2 & 1;
  return sub_21AFAF224;
}

uint64_t *sub_21AFAF224(uint64_t *result)
{
  v1 = *result;
  *(v1 + 16) = *(result + 8);
  *(v1 + 24) = 0x80;
  return result;
}

uint64_t Apple_Parsec_Ondeviceanalytics_SpotlightCarryReport.isLockedScreen.getter()
{
  v1 = *(v0 + 25);
  if (v1 <= 0xFD)
  {
    return ((v1 & 0x80u) == 0) & v1;
  }

  else
  {
    return 0;
  }
}

uint64_t (*Apple_Parsec_Ondeviceanalytics_SpotlightCarryReport.isLockedScreen.modify(uint64_t a1))()
{
  *a1 = v1;
  v2 = *(v1 + 25);
  if (v2 <= 0xFD)
  {
    v3 = ((v2 & 0x80u) == 0) & v2;
  }

  else
  {
    v3 = 0;
  }

  *(a1 + 8) = v3;
  return sub_21AFAF2E8;
}

uint64_t (*Apple_Parsec_Ondeviceanalytics_SpotlightCarryReport.isLockedScreenSummarized.modify(uint64_t a1))()
{
  *a1 = v1;
  *(a1 + 8) = (*(v1 + 25) < -2) & *(v1 + 25);
  return sub_21AFAF350;
}

uint64_t Apple_Parsec_Ondeviceanalytics_SpotlightCarryReport.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Apple_Parsec_Ondeviceanalytics_SpotlightCarryReport(0) + 32);
  sub_21B111EC4();
  OUTLINED_FUNCTION_4_1();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t Apple_Parsec_Ondeviceanalytics_SpotlightCarryReport.unknownFields.setter()
{
  v2 = OUTLINED_FUNCTION_36_0();
  v3 = *(type metadata accessor for Apple_Parsec_Ondeviceanalytics_SpotlightCarryReport(v2) + 32);
  sub_21B111EC4();
  OUTLINED_FUNCTION_4_1();
  v5 = *(v4 + 40);

  return v5(v1 + v3, v0);
}

void (*Apple_Parsec_Ondeviceanalytics_SpotlightCarryReport.unknownFields.modify())()
{
  v0 = OUTLINED_FUNCTION_36_0();
  type metadata accessor for Apple_Parsec_Ondeviceanalytics_SpotlightCarryReport(v0);
  return nullsub_1;
}

uint64_t sub_21AFAF4C0(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *a2;
  v6 = *(a2 + 8);
  if (v4 < 0)
  {
    if (v6 < 0)
    {
      return OUTLINED_FUNCTION_41_0(v5 ^ v3 ^ 1);
    }
  }

  else if ((v6 & 0x80000000) == 0)
  {
    return sub_21AF82008(v3, v4 & 1, v5);
  }

  return OUTLINED_FUNCTION_41_0(0);
}

uint64_t sub_21AFAF508(char *a1, char *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = v3 ^ v2 ^ 1;
  v5 = v3 >= 0;
  if (v3 < 0)
  {
    v6 = v3 ^ v2 ^ 1;
  }

  else
  {
    v6 = 0;
  }

  if (!v5)
  {
    v4 = 0;
  }

  if (v2 >= 0)
  {
    return OUTLINED_FUNCTION_41_0(v4);
  }

  else
  {
    return OUTLINED_FUNCTION_41_0(v6);
  }
}

uint64_t Apple_Parsec_Ondeviceanalytics_SpotlightCarryReport.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = 0;
  *(a1 + 24) = -258;
  *(a1 + 28) = 0;
  type metadata accessor for Apple_Parsec_Ondeviceanalytics_SpotlightCarryReport(0);
  return sub_21B111EB4();
}

uint64_t sub_21AFAF580()
{
  v0 = sub_21B112254();
  __swift_allocate_value_buffer(v0, qword_27CD43138);
  __swift_project_value_buffer(v0, qword_27CD43138);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43128, &unk_21B116AD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43130, &unk_21B115090) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v194 = swift_allocObject();
  *(v194 + 16) = xmmword_21B1150A0;
  v4 = v194 + v3 + v1[14];
  *(v194 + v3) = 0;
  *v4 = "SPOTLIGHT_METRIC_UNSPECIFIED";
  *(v4 + 8) = 28;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x277D21870];
  v6 = sub_21B112234();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v194 + v3 + v2 + v1[14];
  *(v194 + v3 + v2) = 1;
  *v8 = "SPOTLIGHT_METRIC_TOTAL_SEARCHES_PERFORMED";
  *(v8 + 8) = 41;
  *(v8 + 16) = 2;
  v7();
  v9 = (v194 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 2;
  *v10 = "SPOTLIGHT_METRIC_APP_OR_STORE_SHOWN";
  *(v10 + 1) = 35;
  v10[16] = 2;
  v7();
  v11 = (v194 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "SPOTLIGHT_METRIC_APP_OR_STORE_ENGAGED";
  *(v12 + 1) = 37;
  v12[16] = 2;
  v7();
  v13 = (v194 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "SPOTLIGHT_METRIC_APPLE_RESULT_SHOWN";
  *(v14 + 1) = 35;
  v14[16] = 2;
  v7();
  v15 = (v194 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "SPOTLIGHT_METRIC_APPLE_RESULT_ENGAGED";
  *(v16 + 1) = 37;
  v16[16] = 2;
  v7();
  v17 = (v194 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "SPOTLIGHT_METRIC_COMMITTED_SUGGESTION_SHOWN";
  *(v18 + 1) = 43;
  v18[16] = 2;
  v7();
  v19 = (v194 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "SPOTLIGHT_METRIC_COMMITTED_SUGGESTION_ENGAGED";
  *(v20 + 1) = 45;
  v20[16] = 2;
  v7();
  v21 = (v194 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 8;
  *v22 = "SPOTLIGHT_METRIC_MAPS_SHOWN";
  *(v22 + 1) = 27;
  v22[16] = 2;
  v7();
  v23 = (v194 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 9;
  *v24 = "SPOTLIGHT_METRIC_MAPS_ENGAGED";
  *(v24 + 1) = 29;
  v24[16] = 2;
  v7();
  v25 = (v194 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 10;
  *v26 = "SPOTLIGHT_METRIC_DICTIONARY_SHOWN";
  *(v26 + 1) = 33;
  v26[16] = 2;
  v7();
  v27 = (v194 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 11;
  *v28 = "SPOTLIGHT_METRIC_DICTIONARY_ENGAGED";
  *(v28 + 1) = 35;
  v28[16] = 2;
  v7();
  v29 = (v194 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 12;
  *v30 = "SPOTLIGHT_METRIC_ENTITY_EXPERIENCE_ENTRYPOINT_SHOWN";
  *(v30 + 1) = 51;
  v30[16] = 2;
  v7();
  v31 = (v194 + v3 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 13;
  *v32 = "SPOTLIGHT_METRIC_ENTITY_EXPERIENCE_ENTRYPOINT_ENGAGED";
  *(v32 + 1) = 53;
  v32[16] = 2;
  v7();
  v33 = (v194 + v3 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 14;
  *v34 = "SPOTLIGHT_METRIC_ENTITY_EXPERIENCE_SHOWN";
  *(v34 + 1) = 40;
  v34[16] = 2;
  v7();
  v35 = (v194 + v3 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 15;
  *v36 = "SPOTLIGHT_METRIC_ENTITY_EXPERIENCE_ENGAGED";
  *(v36 + 1) = 42;
  v36[16] = 2;
  v7();
  v37 = (v194 + v3 + 16 * v2);
  v38 = v37 + v1[14];
  *v37 = 16;
  *v38 = "SPOTLIGHT_METRIC_KG_SHOWN";
  *(v38 + 1) = 25;
  v38[16] = 2;
  v7();
  v39 = (v194 + v3 + 17 * v2);
  v40 = v39 + v1[14];
  *v39 = 17;
  *v40 = "SPOTLIGHT_METRIC_KG_ENGAGED";
  *(v40 + 1) = 27;
  v40[16] = 2;
  v7();
  v41 = (v194 + v3 + 18 * v2);
  v42 = v41 + v1[14];
  *v41 = 18;
  *v42 = "SPOTLIGHT_METRIC_LOCAL_SHOWN";
  *(v42 + 1) = 28;
  v42[16] = 2;
  v7();
  v43 = (v194 + v3 + 19 * v2);
  v44 = v43 + v1[14];
  *v43 = 19;
  *v44 = "SPOTLIGHT_METRIC_LOCAL_ENGAGED";
  *(v44 + 1) = 30;
  v44[16] = 2;
  v7();
  v45 = (v194 + v3 + 20 * v2);
  v46 = v45 + v1[14];
  *v45 = 20;
  *v46 = "SPOTLIGHT_METRIC_LOCAL_CONTACT_SHOWN";
  *(v46 + 1) = 36;
  v46[16] = 2;
  v7();
  v47 = (v194 + v3 + 21 * v2);
  v48 = v47 + v1[14];
  *v47 = 21;
  *v48 = "SPOTLIGHT_METRIC_LOCAL_CONTACT_ENGAGED";
  *(v48 + 1) = 38;
  v48[16] = 2;
  v7();
  v49 = (v194 + v3 + 22 * v2);
  v50 = v49 + v1[14];
  *v49 = 22;
  *v50 = "SPOTLIGHT_METRIC_LOCAL_TOPHIT_SHOWN";
  *(v50 + 1) = 35;
  v50[16] = 2;
  v7();
  v51 = (v194 + v3 + 23 * v2);
  v52 = v51 + v1[14];
  *v51 = 23;
  *v52 = "SPOTLIGHT_METRIC_LOCAL_TOPHIT_ENGAGED";
  *(v52 + 1) = 37;
  v52[16] = 2;
  v7();
  v53 = (v194 + v3 + 24 * v2);
  v54 = v53 + v1[14];
  *v53 = 24;
  *v54 = "SPOTLIGHT_METRIC_LOCAL_PHOTO_SHOWN";
  *(v54 + 1) = 34;
  v54[16] = 2;
  v7();
  v55 = (v194 + v3 + 25 * v2);
  v56 = v55 + v1[14];
  *v55 = 25;
  *v56 = "SPOTLIGHT_METRIC_LOCAL_PHOTO_ENGAGED";
  *(v56 + 1) = 36;
  v56[16] = 2;
  v7();
  v57 = (v194 + v3 + 26 * v2);
  v58 = v57 + v1[14];
  *v57 = 26;
  *v58 = "SPOTLIGHT_METRIC_LOCAL_PREFERENCE_SHOWN";
  *(v58 + 1) = 39;
  v58[16] = 2;
  v7();
  v59 = (v194 + v3 + 27 * v2);
  v60 = v59 + v1[14];
  *v59 = 27;
  *v60 = "SPOTLIGHT_METRIC_LOCAL_PREFERENCE_ENGAGED";
  *(v60 + 1) = 41;
  v60[16] = 2;
  v7();
  v61 = (v194 + v3 + 28 * v2);
  v62 = v61 + v1[14];
  *v61 = 28;
  *v62 = "SPOTLIGHT_METRIC_RELATED_SEARCH_SHOWN";
  *(v62 + 1) = 37;
  v62[16] = 2;
  v7();
  v63 = (v194 + v3 + 29 * v2);
  v64 = v63 + v1[14];
  *v63 = 29;
  *v64 = "SPOTLIGHT_METRIC_RELATED_SEARCH_ENGAGED";
  *(v64 + 1) = 39;
  v64[16] = 2;
  v7();
  v65 = (v194 + v3 + 30 * v2);
  v66 = v65 + v1[14];
  *v65 = 30;
  *v66 = "SPOTLIGHT_METRIC_SERVER_SHOWN";
  *(v66 + 1) = 29;
  v66[16] = 2;
  v7();
  v67 = (v194 + v3 + 31 * v2);
  v68 = v67 + v1[14];
  *v67 = 31;
  *v68 = "SPOTLIGHT_METRIC_SERVER_ENGAGED";
  *(v68 + 1) = 31;
  v68[16] = 2;
  v7();
  v69 = (v194 + v3 + 32 * v2);
  v70 = v69 + v1[14];
  *v69 = 32;
  *v70 = "SPOTLIGHT_METRIC_SERVER_TOPHIT_SHOWN";
  *(v70 + 1) = 36;
  v70[16] = 2;
  v7();
  v71 = (v194 + v3 + 33 * v2);
  v72 = v71 + v1[14];
  *v71 = 33;
  *v72 = "SPOTLIGHT_METRIC_SERVER_TOPHIT_ENGAGED";
  *(v72 + 1) = 38;
  v72[16] = 2;
  v7();
  v73 = (v194 + v3 + 34 * v2);
  v74 = v73 + v1[14];
  *v73 = 34;
  *v74 = "SPOTLIGHT_METRIC_WEB_IMAGE_SHOWN";
  *(v74 + 1) = 32;
  v74[16] = 2;
  v7();
  v75 = (v194 + v3 + 35 * v2);
  v76 = v75 + v1[14];
  *v75 = 35;
  *v76 = "SPOTLIGHT_METRIC_WEB_IMAGE_ENGAGED";
  *(v76 + 1) = 34;
  v76[16] = 2;
  v7();
  v77 = (v194 + v3 + 36 * v2);
  v78 = v77 + v1[14];
  *v77 = 36;
  *v78 = "SPOTLIGHT_METRIC_WEB_INDEX_OR_SAFARI_HISTORY_SHOWN";
  *(v78 + 1) = 50;
  v78[16] = 2;
  v7();
  v79 = (v194 + v3 + 37 * v2);
  v80 = v79 + v1[14];
  *v79 = 37;
  *v80 = "SPOTLIGHT_METRIC_WEB_INDEX_OR_SAFARI_HISTORY_ENGAGED";
  *(v80 + 1) = 52;
  v80[16] = 2;
  v7();
  v81 = (v194 + v3 + 38 * v2);
  v82 = v81 + v1[14];
  *v81 = 38;
  *v82 = "SPOTLIGHT_METRIC_WEB_SUGGESTION_SHOWN";
  *(v82 + 1) = 37;
  v82[16] = 2;
  v7();
  v83 = (v194 + v3 + 39 * v2);
  v84 = v83 + v1[14];
  *v83 = 39;
  *v84 = "SPOTLIGHT_METRIC_WEB_SUGGESTION_ENGAGED";
  *(v84 + 1) = 39;
  v84[16] = 2;
  v7();
  v85 = (v194 + v3 + 40 * v2);
  v86 = v85 + v1[14];
  *v85 = 40;
  *v86 = "SPOTLIGHT_METRIC_ZKW_SHOWN";
  *(v86 + 1) = 26;
  v86[16] = 2;
  v7();
  v87 = (v194 + v3 + 41 * v2);
  v88 = v87 + v1[14];
  *v87 = 41;
  *v88 = "SPOTLIGHT_METRIC_ZKW_ENGAGED";
  *(v88 + 1) = 28;
  v88[16] = 2;
  v7();
  v89 = (v194 + v3 + 42 * v2);
  v90 = v89 + v1[14];
  *v89 = 42;
  *v90 = "SPOTLIGHT_METRIC_ZKW_APP_SHOWN";
  *(v90 + 1) = 30;
  v90[16] = 2;
  v7();
  v91 = (v194 + v3 + 43 * v2);
  v92 = v91 + v1[14];
  *v91 = 43;
  *v92 = "SPOTLIGHT_METRIC_ZKW_APP_ENGAGED";
  *(v92 + 1) = 32;
  v92[16] = 2;
  v7();
  v93 = (v194 + v3 + 44 * v2);
  v94 = v93 + v1[14];
  *v93 = 44;
  *v94 = "SPOTLIGHT_METRIC_ZKW_CONTEXTUAL_SUGGESTION_SHOWN";
  *(v94 + 1) = 48;
  v94[16] = 2;
  v7();
  v95 = (v194 + v3 + 45 * v2);
  v96 = v95 + v1[14];
  *v95 = 45;
  *v96 = "SPOTLIGHT_METRIC_ZKW_CONTEXTUAL_SUGGESTION_ENGAGED";
  *(v96 + 1) = 50;
  v96[16] = 2;
  v7();
  v97 = (v194 + v3 + 46 * v2);
  v98 = v97 + v1[14];
  *v97 = 46;
  *v98 = "SPOTLIGHT_METRIC_ZKW_RECENT_SHOWN";
  *(v98 + 1) = 33;
  v98[16] = 2;
  v7();
  v99 = (v194 + v3 + 47 * v2);
  v100 = v99 + v1[14];
  *v99 = 47;
  *v100 = "SPOTLIGHT_METRIC_ZKW_RECENT_ENGAGED";
  *(v100 + 1) = 35;
  v100[16] = 2;
  v7();
  v101 = (v194 + v3 + 48 * v2);
  v102 = v101 + v1[14];
  *v101 = 48;
  *v102 = "SPOTLIGHT_METRIC_TOTAL_SESSIONS";
  *(v102 + 1) = 31;
  v102[16] = 2;
  v7();
  v103 = (v194 + v3 + 49 * v2);
  v104 = v103 + v1[14];
  *v103 = 49;
  *v104 = "SPOTLIGHT_METRIC_ACTIVE_SESSIONS";
  *(v104 + 1) = 32;
  v104[16] = 2;
  v7();
  v105 = (v194 + v3 + 50 * v2);
  v106 = v105 + v1[14];
  *v105 = 50;
  *v106 = "SPOTLIGHT_METRIC_MAIL_ENGAGED";
  *(v106 + 1) = 29;
  v106[16] = 2;
  v7();
  v107 = (v194 + v3 + 51 * v2);
  v108 = v107 + v1[14];
  *v107 = 51;
  *v108 = "SPOTLIGHT_METRIC_MESSAGE_ENGAGED";
  *(v108 + 1) = 32;
  v108[16] = 2;
  v7();
  v109 = (v194 + v3 + 52 * v2);
  v110 = v109 + v1[14];
  *v109 = 52;
  *v110 = "SPOTLIGHT_METRIC_ODS_ENGAGED";
  *(v110 + 1) = 28;
  v110[16] = 2;
  v7();
  v111 = (v194 + v3 + 53 * v2);
  v112 = v111 + v1[14];
  *v111 = 53;
  *v112 = "SPOTLIGHT_METRIC_WEB_ANSWER_ENGAGED";
  *(v112 + 1) = 35;
  v112[16] = 2;
  v7();
  v113 = (v194 + v3 + 54 * v2);
  v114 = v113 + v1[14];
  *v113 = 54;
  *v114 = "SPOTLIGHT_METRIC_ZKW_CONTACT_ENGAGED";
  *(v114 + 1) = 36;
  v114[16] = 2;
  v7();
  v115 = (v194 + v3 + 55 * v2);
  v116 = v115 + v1[14];
  *v115 = 55;
  *v116 = "SPOTLIGHT_METRIC_ZKW_APPSHORTCUT_ENGAGED";
  *(v116 + 1) = 40;
  v116[16] = 2;
  v7();
  v117 = (v194 + v3 + 56 * v2);
  v118 = v117 + v1[14];
  *v117 = 56;
  *v118 = "SPOTLIGHT_METRIC_ZKW_CONTEXTUAL_ROUTINE_ENGAGED";
  *(v118 + 1) = 47;
  v118[16] = 2;
  v7();
  v119 = (v194 + v3 + 57 * v2);
  v120 = v119 + v1[14];
  *v119 = 57;
  *v120 = "SPOTLIGHT_METRIC_ZKW_DOCUMENTS_ENGAGED";
  *(v120 + 1) = 38;
  v120[16] = 2;
  v7();
  v121 = (v194 + v3 + 58 * v2);
  v122 = v121 + v1[14];
  *v121 = 58;
  *v122 = "SPOTLIGHT_METRIC_ZKW_MAIL_ENGAGED";
  *(v122 + 1) = 33;
  v122[16] = 2;
  v7();
  v123 = (v194 + v3 + 59 * v2);
  v124 = v123 + v1[14];
  *v123 = 59;
  *v124 = "SPOTLIGHT_METRIC_ZKW_MAPS_ENGAGED";
  *(v124 + 1) = 33;
  v124[16] = 2;
  v7();
  v125 = (v194 + v3 + 60 * v2);
  v126 = v125 + v1[14];
  *v125 = 60;
  *v126 = "SPOTLIGHT_METRIC_ZKW_NOTES_ENGAGED";
  *(v126 + 1) = 34;
  v126[16] = 2;
  v7();
  v127 = (v194 + v3 + 61 * v2);
  v128 = v127 + v1[14];
  *v127 = 61;
  *v128 = "SPOTLIGHT_METRIC_ZKW_PHOTOS_ENGAGED";
  *(v128 + 1) = 35;
  v128[16] = 2;
  v7();
  v129 = (v194 + v3 + 62 * v2);
  v130 = v129 + v1[14];
  *v129 = 62;
  *v130 = "SPOTLIGHT_METRIC_ZKW_REMINDER_ENGAGED";
  *(v130 + 1) = 37;
  v130[16] = 2;
  v7();
  v131 = (v194 + v3 + 63 * v2);
  v132 = v131 + v1[14];
  *v131 = 63;
  *v132 = "SPOTLIGHT_METRIC_ZKW_SETTINGS_ENGAGED";
  *(v132 + 1) = 37;
  v132[16] = 2;
  v7();
  v133 = (v194 + v3 + (v2 << 6));
  v134 = v133 + v1[14];
  *v133 = 64;
  *v134 = "SPOTLIGHT_METRIC_ZKW_SMS_ENGAGED";
  *(v134 + 1) = 32;
  v134[16] = 2;
  v7();
  v135 = (v194 + v3 + 65 * v2);
  v136 = v135 + v1[14];
  *v135 = 65;
  *v136 = "SPOTLIGHT_METRIC_ZKW_TIMER_ENGAGED";
  *(v136 + 1) = 34;
  v136[16] = 2;
  v7();
  v137 = (v194 + v3 + 66 * v2);
  v138 = v137 + v1[14];
  *v137 = 66;
  *v138 = "SPOTLIGHT_METRIC_ZKW_WEB_SUGGESTION_ENGAGED";
  *(v138 + 1) = 43;
  v138[16] = 2;
  v7();
  v139 = (v194 + v3 + 67 * v2);
  v140 = v139 + v1[14];
  *v139 = 67;
  *v140 = "SPOTLIGHT_METRIC_ZKW_WEBSITE_LOCAL_ENGAGED";
  *(v140 + 1) = 42;
  v140[16] = 2;
  v7();
  v141 = (v194 + v3 + 68 * v2);
  v142 = v141 + v1[14];
  *v141 = 68;
  *v142 = "SPOTLIGHT_METRIC_ZKW_WEBSITE_SERVER_ENGAGED";
  *(v142 + 1) = 43;
  v142[16] = 2;
  v7();
  v143 = (v194 + v3 + 69 * v2);
  v144 = v143 + v1[14];
  *v143 = 69;
  *v144 = "SPOTLIGHT_METRIC_SEARCH_APP_TOPHIT_SHORTCUT_ENGAGED";
  *(v144 + 1) = 51;
  v144[16] = 2;
  v7();
  v145 = (v194 + v3 + 70 * v2);
  v146 = v145 + v1[14];
  *v145 = 70;
  *v146 = "SPOTLIGHT_METRIC_SEARCH_LOCAL_ENGAGED";
  *(v146 + 1) = 37;
  v146[16] = 2;
  v7();
  v147 = (v194 + v3 + 71 * v2);
  v148 = v147 + v1[14];
  *v147 = 71;
  *v148 = "SPOTLIGHT_METRIC_SEARCH_APPSTORE_ENGAGED";
  *(v148 + 1) = 40;
  v148[16] = 2;
  v7();
  v149 = (v194 + v3 + 72 * v2);
  v150 = v149 + v1[14];
  *v149 = 72;
  *v150 = "SPOTLIGHT_METRIC_SEARCH_WEB_SUGGESTION_ASTYPED_ENGAGED";
  *(v150 + 1) = 54;
  v150[16] = 2;
  v7();
  v151 = (v194 + v3 + 73 * v2);
  v152 = v151 + v1[14];
  *v151 = 73;
  *v152 = "SPOTLIGHT_METRIC_SEARCH_ANY_RESULT_ENGAGED";
  *(v152 + 1) = 42;
  v152[16] = 2;
  v7();
  v153 = (v194 + v3 + 74 * v2);
  v154 = v153 + v1[14];
  *v153 = 74;
  *v154 = "SPOTLIGHT_METRIC_SEARCH_OR_ZKW_ANY_RESULT_ENGAGED";
  *(v154 + 1) = 49;
  v154[16] = 2;
  v7();
  v155 = (v194 + v3 + 75 * v2);
  v156 = v155 + v1[14];
  *v155 = 75;
  *v156 = "SPOTLIGHT_METRIC_SEARCH_APP_ENGAGED";
  *(v156 + 1) = 35;
  v156[16] = 2;
  v7();
  v157 = (v194 + v3 + 76 * v2);
  v158 = v157 + v1[14];
  *v157 = 76;
  *v158 = "SPOTLIGHT_METRIC_SEARCH_FIRST_PARTY_APP_TOPHIT_SHORTCUT_ENGAGED";
  *(v158 + 1) = 63;
  v158[16] = 2;
  v7();
  v159 = (v194 + v3 + 77 * v2);
  v160 = v159 + v1[14];
  *v159 = 77;
  *v160 = "SPOTLIGHT_METRIC_SEARCH_THIRD_PARTY_APP_TOPHIT_SHORTCUT_ENGAGED";
  *(v160 + 1) = 63;
  v160[16] = 2;
  v7();
  v161 = (v194 + v3 + 78 * v2);
  v162 = v161 + v1[14];
  *v161 = 78;
  *v162 = "SPOTLIGHT_METRIC_WEB_SUGGESTION_ASTYPED_NONASTYPE_ENGAGED";
  *(v162 + 1) = 57;
  v162[16] = 2;
  v7();
  v163 = (v194 + v3 + 79 * v2);
  v164 = v163 + v1[14];
  *v163 = 79;
  *v164 = "SPOTLIGHT_METRIC_SEARCH_OR_ZKW_APP_ENGAGED";
  *(v164 + 1) = 42;
  v164[16] = 2;
  v7();
  v165 = (v194 + v3 + 80 * v2);
  v166 = v165 + v1[14];
  *v165 = 80;
  *v166 = "SPOTLIGHT_METRIC_WEB_INDEX_ENGAGED";
  *(v166 + 1) = 34;
  v166[16] = 2;
  v7();
  v167 = (v194 + v3 + 81 * v2);
  v168 = v167 + v1[14];
  *v167 = 81;
  *v168 = "SPOTLIGHT_METRIC_SAFARI_HISTORY_ENGAGED";
  *(v168 + 1) = 39;
  v168[16] = 2;
  v7();
  v169 = (v194 + v3 + 82 * v2);
  v170 = v169 + v1[14];
  *v169 = 82;
  *v170 = "SPOTLIGHT_METRIC_FIRST_PARTY_APP_TOPHIT_SHORTCUT_ENGAGED";
  *(v170 + 1) = 56;
  v170[16] = 2;
  v7();
  v171 = (v194 + v3 + 83 * v2);
  v172 = v171 + v1[14];
  *v171 = 83;
  *v172 = "SPOTLIGHT_METRIC_THIRD_PARTY_APP_TOPHIT_SHORTCUT_ENGAGED";
  *(v172 + 1) = 56;
  v172[16] = 2;
  v7();
  v173 = (v194 + v3 + 84 * v2);
  v174 = v173 + v1[14];
  *v173 = 84;
  *v174 = "SPOTLIGHT_METRIC_ENGAGED_WITH_SCROLLING";
  *(v174 + 1) = 39;
  v174[16] = 2;
  v7();
  v175 = (v194 + v3 + 85 * v2);
  v176 = v175 + v1[14];
  *v175 = 85;
  *v176 = "SPOTLIGHT_METRIC_TOP_SECTION_ENGAGED";
  *(v176 + 1) = 36;
  v176[16] = 2;
  v7();
  v177 = (v194 + v3 + 86 * v2);
  v178 = v177 + v1[14];
  *v177 = 86;
  *v178 = "SPOTLIGHT_METRIC_TOP_SECTION_SKIPPED";
  *(v178 + 1) = 36;
  v178[16] = 2;
  v7();
  v179 = (v194 + v3 + 87 * v2);
  v180 = v179 + v1[14];
  *v179 = 87;
  *v180 = "SPOTLIGHT_METRIC_SEMANTICALLY_RETRIEVED_LOCAL_PHOTO_ENGAGED";
  *(v180 + 1) = 59;
  v180[16] = 2;
  v7();
  v181 = (v194 + v3 + 88 * v2);
  v182 = v181 + v1[14];
  *v181 = 88;
  *v182 = "SPOTLIGHT_METRIC_SEMANTICALLY_RETRIEVED_MAIL_ENGAGED";
  *(v182 + 1) = 52;
  v182[16] = 2;
  v7();
  v183 = (v194 + v3 + 89 * v2);
  v184 = v183 + v1[14];
  *v183 = 89;
  *v184 = "SPOTLIGHT_METRIC_SEMANTICALLY_RETRIEVED_MESSAGES_ENGAGED";
  *(v184 + 1) = 56;
  v184[16] = 2;
  v7();
  v185 = (v194 + v3 + 90 * v2);
  v186 = v185 + v1[14];
  *v185 = 90;
  *v186 = "SPOTLIGHT_METRIC_SEMANTICALLY_RETRIEVED_NOTES_ENGAGED";
  *(v186 + 1) = 53;
  v186[16] = 2;
  v7();
  v187 = (v194 + v3 + 91 * v2);
  v188 = v187 + v1[14];
  *v187 = 91;
  *v188 = "SPOTLIGHT_METRIC_SEMANTICALLY_RETRIEVED_SETTINGS_ENGAGED";
  *(v188 + 1) = 56;
  v188[16] = 2;
  v7();
  v189 = (v194 + v3 + 92 * v2);
  v190 = v189 + v1[14];
  *v189 = 92;
  *v190 = "SPOTLIGHT_METRIC_SEMANTICALLY_RETRIEVED_TOPHIT_ENGAGED";
  *(v190 + 1) = 54;
  v190[16] = 2;
  v7();
  v191 = (v194 + v3 + 93 * v2);
  v192 = v191 + v1[14];
  *v191 = 93;
  *v192 = "SPOTLIGHT_METRIC_SEMANTICALLY_RETRIEVED_RESULT_ENGAGED";
  *(v192 + 1) = 54;
  v192[16] = 2;
  v7();
  return sub_21B112244();
}

uint64_t sub_21AFB0CFC()
{
  v0 = sub_21B112254();
  __swift_allocate_value_buffer(v0, qword_27CD43150);
  __swift_project_value_buffer(v0, qword_27CD43150);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43128, &unk_21B116AD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43130, &unk_21B115090) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v46 = swift_allocObject();
  *(v46 + 16) = xmmword_21B1150B0;
  v4 = v46 + v3 + v1[14];
  *(v46 + v3) = 1;
  *v4 = "metric";
  *(v4 + 8) = 6;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x277D21870];
  v6 = sub_21B112234();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v46 + v3 + v2 + v1[14];
  *(v46 + v3 + v2) = 2;
  *v8 = "invocation_type";
  *(v8 + 8) = 15;
  *(v8 + 16) = 2;
  v7();
  v9 = (v46 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 19;
  *v10 = "invocation_type_summarized";
  *(v10 + 1) = 26;
  v10[16] = 2;
  v7();
  v11 = (v46 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "is_locked_screen";
  *(v12 + 1) = 16;
  v12[16] = 2;
  v7();
  v13 = (v46 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 20;
  *v14 = "is_locked_screen_summarized";
  *(v14 + 1) = 27;
  v14[16] = 2;
  v7();
  v15 = (v46 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "first_usage_in_days_since_1970";
  *(v16 + 1) = 30;
  v16[16] = 2;
  v7();
  v17 = (v46 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 5;
  *v18 = "first_usage_date_is_older_than_store_ttl";
  *(v18 + 1) = 40;
  v18[16] = 2;
  v7();
  v19 = (v46 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 9;
  *v20 = "dau_aggregation_day_of_week";
  *(v20 + 1) = 27;
  v20[16] = 2;
  v7();
  v21 = (v46 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 10;
  *v22 = "is_device_actively_used_in_day";
  *(v22 + 1) = 30;
  v22[16] = 2;
  v7();
  v23 = (v46 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 11;
  *v24 = "number_of_active_usage_days_in_week";
  *(v24 + 1) = 35;
  v24[16] = 2;
  v7();
  v25 = (v46 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 12;
  *v26 = "number_of_active_usage_days_in_fortnight";
  *(v26 + 1) = 40;
  v26[16] = 2;
  v7();
  v27 = (v46 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 13;
  *v28 = "number_of_active_usage_days_in_month";
  *(v28 + 1) = 36;
  v28[16] = 2;
  v7();
  v29 = (v46 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 14;
  *v30 = "week_over_week_retention";
  *(v30 + 1) = 24;
  v30[16] = 2;
  v7();
  v31 = (v46 + v3 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 15;
  *v32 = "month_over_month_retention";
  *(v32 + 1) = 26;
  v32[16] = 2;
  v7();
  v33 = (v46 + v3 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 16;
  *v34 = "weekly_usage_cohort";
  *(v34 + 1) = 19;
  v34[16] = 2;
  v7();
  v35 = (v46 + v3 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 17;
  *v36 = "total_searches_week_over_week";
  *(v36 + 1) = 29;
  v36[16] = 2;
  v7();
  v37 = (v46 + v3 + 16 * v2);
  v38 = v37 + v1[14];
  *v37 = 18;
  *v38 = "weekly_total_usages";
  *(v38 + 1) = 19;
  v38[16] = 2;
  v7();
  v39 = (v46 + v3 + 17 * v2);
  v40 = v39 + v1[14];
  *v39 = 21;
  *v40 = "active_usage_weeks_in_last_month";
  *(v40 + 1) = 32;
  v40[16] = 2;
  v7();
  v41 = (v46 + v3 + 18 * v2);
  v42 = v41 + v1[14];
  *v41 = 22;
  *v42 = "active_usage_weeks_in_last_3months";
  *(v42 + 1) = 34;
  v42[16] = 2;
  v7();
  v43 = (v46 + v3 + 19 * v2);
  v44 = v43 + v1[14];
  *v43 = 23;
  *v44 = "active_usage_months_in_last_3months";
  *(v44 + 1) = 35;
  v44[16] = 2;
  v7();
  return sub_21B112244();
}

uint64_t sub_21AFB1348()
{
  type metadata accessor for Apple_Parsec_Ondeviceanalytics_SpotlightFeatureReport._StorageClass();
  OUTLINED_FUNCTION_18_0();
  swift_allocObject();
  result = sub_21AFB13A8();
  qword_27CD43168 = result;
  return result;
}

uint64_t sub_21AFB13A8()
{
  result = v0;
  *(v0 + 16) = 0;
  *(v0 + 24) = 1;
  *(v0 + 32) = 0;
  *(v0 + 40) = -258;
  *(v0 + 44) = 0;
  *(v0 + 48) = 0;
  *(v0 + 52) = 0;
  *(v0 + 56) = 0;
  *(v0 + 68) = 0;
  *(v0 + 60) = 0;
  *(v0 + 76) = 0;
  *(v0 + 80) = 1;
  *(v0 + 88) = 0;
  *(v0 + 96) = 1;
  *(v0 + 104) = 0;
  *(v0 + 112) = 1;
  v2 = MEMORY[0x277D84F90];
  *(v0 + 128) = 0;
  *(v0 + 136) = 0;
  *(v0 + 120) = v2;
  return result;
}

uint64_t sub_21AFB1408(uint64_t a1)
{
  *(v1 + 16) = 0;
  *(v1 + 24) = 1;
  *(v1 + 32) = 0;
  *(v1 + 40) = -258;
  *(v1 + 44) = 0;
  *(v1 + 48) = 0;
  *(v1 + 52) = 0;
  *(v1 + 56) = 0;
  *(v1 + 68) = 0;
  *(v1 + 76) = 0;
  *(v1 + 60) = 0;
  *(v1 + 80) = 1;
  *(v1 + 88) = 0;
  *(v1 + 96) = 1;
  *(v1 + 104) = 0;
  *(v1 + 112) = 1;
  *(v1 + 120) = MEMORY[0x277D84F90];
  *(v1 + 136) = 0;
  *(v1 + 128) = 0;
  OUTLINED_FUNCTION_28_1(a1 + 16, v53);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  OUTLINED_FUNCTION_31_1(v1 + 16, v52);
  *(v1 + 16) = v3;
  *(v1 + 24) = v4;
  v5 = *(a1 + 40);
  *(v1 + 32) = *(a1 + 32);
  *(v1 + 40) = v5;
  *(v1 + 41) = *(a1 + 41);
  OUTLINED_FUNCTION_28_1(a1 + 44, v51);
  v6 = *(a1 + 44);
  OUTLINED_FUNCTION_31_1(v1 + 44, v50);
  *(v1 + 44) = v6;
  OUTLINED_FUNCTION_28_1(a1 + 48, v49);
  v7 = *(a1 + 48);
  OUTLINED_FUNCTION_31_1(v1 + 48, v48);
  *(v1 + 48) = v7;
  OUTLINED_FUNCTION_28_1(a1 + 52, v47);
  v8 = *(a1 + 52);
  OUTLINED_FUNCTION_31_1(v1 + 52, v46);
  *(v1 + 52) = v8;
  OUTLINED_FUNCTION_28_1(a1 + 56, v45);
  v9 = *(a1 + 56);
  OUTLINED_FUNCTION_31_1(v1 + 56, v44);
  *(v1 + 56) = v9;
  OUTLINED_FUNCTION_28_1(a1 + 60, v43);
  v10 = *(a1 + 60);
  OUTLINED_FUNCTION_31_1(v1 + 60, v42);
  *(v1 + 60) = v10;
  OUTLINED_FUNCTION_28_1(a1 + 64, v41);
  v11 = *(a1 + 64);
  OUTLINED_FUNCTION_31_1(v1 + 64, v40);
  *(v1 + 64) = v11;
  OUTLINED_FUNCTION_28_1(a1 + 68, v39);
  v12 = *(a1 + 68);
  OUTLINED_FUNCTION_31_1(v1 + 68, v38);
  *(v1 + 68) = v12;
  OUTLINED_FUNCTION_28_1(a1 + 72, v37);
  v13 = *(a1 + 72);
  LOBYTE(v8) = *(a1 + 80);
  OUTLINED_FUNCTION_31_1(v1 + 72, v36);
  *(v1 + 72) = v13;
  *(v1 + 80) = v8;
  OUTLINED_FUNCTION_28_1(a1 + 88, v35);
  v14 = *(a1 + 88);
  LOBYTE(v8) = *(a1 + 96);
  OUTLINED_FUNCTION_31_1(v1 + 88, v34);
  *(v1 + 88) = v14;
  *(v1 + 96) = v8;
  OUTLINED_FUNCTION_28_1(a1 + 104, v33);
  v15 = *(a1 + 104);
  LOBYTE(v8) = *(a1 + 112);
  OUTLINED_FUNCTION_31_1(v1 + 104, v32);
  *(v1 + 104) = v15;
  *(v1 + 112) = v8;
  OUTLINED_FUNCTION_28_1(a1 + 120, v31);
  v16 = *(a1 + 120);
  OUTLINED_FUNCTION_31_1(v1 + 120, v30);
  *(v1 + 120) = v16;
  OUTLINED_FUNCTION_28_1(a1 + 128, v29);
  v17 = *(a1 + 128);
  OUTLINED_FUNCTION_31_1(v1 + 128, v28);
  *(v1 + 128) = v17;
  OUTLINED_FUNCTION_28_1(a1 + 132, v27);
  v18 = *(a1 + 132);
  OUTLINED_FUNCTION_31_1(v1 + 132, v26);
  *(v1 + 132) = v18;
  OUTLINED_FUNCTION_28_1(a1 + 136, v25);
  v19 = *(a1 + 136);
  OUTLINED_FUNCTION_31_1(v1 + 136, v24);
  *(v1 + 136) = v19;
  OUTLINED_FUNCTION_28_1(a1 + 140, v23);
  v20 = *(a1 + 140);

  OUTLINED_FUNCTION_31_1(v1 + 140, v22);
  *(v1 + 140) = v20;
  return v1;
}

void *__swift_coroFrameAllocStub(size_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    return swift_coroFrameAlloc();
  }

  return malloc(a1);
}

uint64_t sub_21AFB17A8(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21AFB17E0()
{

  return MEMORY[0x2821FE8D8](v0, 144, 7);
}

uint64_t Apple_Parsec_Ondeviceanalytics_SpotlightFeatureReport.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(type metadata accessor for Apple_Parsec_Ondeviceanalytics_SpotlightFeatureReport(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v3 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Ondeviceanalytics_SpotlightFeatureReport._StorageClass();
    OUTLINED_FUNCTION_18_0();
    swift_allocObject();
    v11 = OUTLINED_FUNCTION_16_1();
    v10 = sub_21AFB1408(v11);
    *(v4 + v8) = v10;
  }

  return sub_21AFB18B4(v10, a1, a2, a3);
}

uint64_t sub_21AFB18B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  while (1)
  {
    result = sub_21B111F64();
    if (v4 || (v10 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        sub_21AFB1B54(a2, a1);
        break;
      case 2:
        sub_21AFB1BE8(a2, a1, a3, a4);
        break;
      case 3:
        sub_21AFB1C9C(a2, a1, a3, a4);
        break;
      case 4:
        sub_21AFB1D24(a2, a1, a3, a4);
        break;
      case 5:
        sub_21AFB1DA8(a2, a1, a3, a4);
        break;
      case 9:
        sub_21AFB1E2C(a2, a1, a3, a4);
        break;
      case 10:
        sub_21AFB1EB0(a2, a1, a3, a4);
        break;
      case 11:
        sub_21AFB1F34(a2, a1, a3, a4);
        break;
      case 12:
        sub_21AFB1FB8(a2, a1, a3, a4);
        break;
      case 13:
        sub_21AFB203C(a2, a1, a3, a4);
        break;
      case 14:
        sub_21AFB20C0(a2, a1);
        break;
      case 15:
        sub_21AFB2154(a2, a1);
        break;
      case 16:
        sub_21AFB21E8(a2, a1);
        break;
      case 17:
        sub_21AFB227C(a2, a1, a3, a4);
        break;
      case 18:
        sub_21AFB2300(a2, a1, a3, a4);
        break;
      case 19:
        sub_21AFB2384(a2, a1, a3, a4);
        break;
      case 20:
        sub_21AFB2414(a2, a1, a3, a4);
        break;
      case 21:
        sub_21AFB24A0(a2, a1, a3, a4);
        break;
      case 22:
        sub_21AFB2524(a2, a1, a3, a4);
        break;
      case 23:
        sub_21AFB25A8(a2, a1, a3, a4);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_21AFB1B54(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  sub_21AFB3BE0();
  sub_21B111FB4();
  return swift_endAccess();
}

uint64_t sub_21AFB1D24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_21B112084();
  return swift_endAccess();
}

uint64_t sub_21AFB1DA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_21B111F94();
  return swift_endAccess();
}

uint64_t sub_21AFB1E2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_21B112084();
  return swift_endAccess();
}

uint64_t sub_21AFB1EB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_21B111F94();
  return swift_endAccess();
}

uint64_t sub_21AFB1F34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_21B112084();
  return swift_endAccess();
}

uint64_t sub_21AFB1FB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_21B112084();
  return swift_endAccess();
}

uint64_t sub_21AFB203C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_21B112084();
  return swift_endAccess();
}

uint64_t sub_21AFB20C0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  sub_21AFABF70();
  sub_21B111FB4();
  return swift_endAccess();
}

uint64_t sub_21AFB2154(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  sub_21AFABF70();
  sub_21B111FB4();
  return swift_endAccess();
}

uint64_t sub_21AFB21E8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  sub_21AFABF1C();
  sub_21B111FB4();
  return swift_endAccess();
}

uint64_t sub_21AFB227C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_21B112024();
  return swift_endAccess();
}

uint64_t sub_21AFB2300(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_21B112084();
  return swift_endAccess();
}

uint64_t sub_21AFB24A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_21B112084();
  return swift_endAccess();
}

uint64_t sub_21AFB2524(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_21B112084();
  return swift_endAccess();
}

uint64_t sub_21AFB25A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_21B112084();
  return swift_endAccess();
}

uint64_t Apple_Parsec_Ondeviceanalytics_SpotlightFeatureReport.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = type metadata accessor for Apple_Parsec_Ondeviceanalytics_SpotlightFeatureReport(0);
  result = sub_21AFB2698(*(v3 + *(v8 + 20)), a1, a2, a3);
  if (!v4)
  {
    return sub_21B111EA4();
  }

  return result;
}

uint64_t sub_21AFB2698(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  if (!Apple_Parsec_Ondeviceanalytics_SpotlightMetric.rawValue.getter() || (sub_21AFB3BE0(), result = sub_21B112174(), !v4))
  {
    result = sub_21AFB2BE8(a1, a2, a3, a4);
    if (!v4)
    {
      sub_21AFB2C6C(a1, a2, a3, a4);
      swift_beginAccess();
      if (*(a1 + 44))
      {
        sub_21B1121F4();
      }

      swift_beginAccess();
      if (*(a1 + 48) == 1)
      {
        sub_21B112164();
      }

      swift_beginAccess();
      if (*(a1 + 52))
      {
        sub_21B1121F4();
      }

      swift_beginAccess();
      if (*(a1 + 56) == 1)
      {
        sub_21B112164();
      }

      swift_beginAccess();
      if (*(a1 + 60))
      {
        sub_21B1121F4();
      }

      swift_beginAccess();
      if (*(a1 + 64))
      {
        sub_21B1121F4();
      }

      swift_beginAccess();
      if (*(a1 + 68))
      {
        sub_21B1121F4();
      }

      swift_beginAccess();
      if (*(a1 + 72))
      {
        sub_21AFABF70();
        sub_21B112174();
      }

      swift_beginAccess();
      if (*(a1 + 88))
      {
        sub_21AFABF70();
        sub_21B112174();
      }

      swift_beginAccess();
      if (*(a1 + 104))
      {
        sub_21AFABF1C();
        sub_21B112174();
      }

      swift_beginAccess();
      if (*(*(a1 + 120) + 16))
      {

        sub_21B112144();
      }

      swift_beginAccess();
      if (*(a1 + 128))
      {
        sub_21B1121F4();
      }

      sub_21AFB2CA4(a1, a2, a3, a4);
      sub_21AFB2CE4(a1, a2, a3, a4);
      swift_beginAccess();
      if (*(a1 + 132))
      {
        sub_21B1121F4();
      }

      swift_beginAccess();
      if (*(a1 + 136))
      {
        sub_21B1121F4();
      }

      swift_beginAccess();
      result = *(a1 + 140);
      if (result)
      {
        return sub_21B1121F4();
      }
    }
  }

  return result;
}

uint64_t sub_21AFB2BE8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((*(result + 40) & 0x80000000) == 0)
  {
    sub_21AFB4A1C();
    return sub_21B112174();
  }

  return result;
}

uint64_t sub_21AFB2C6C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((*(result + 41) & 0x80000000) == 0)
  {
    return sub_21B112164();
  }

  return result;
}

uint64_t sub_21AFB2CA4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(result + 40) <= -3)
  {
    return sub_21B112164();
  }

  return result;
}

uint64_t sub_21AFB2CE4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(result + 41) <= -3)
  {
    return sub_21B112164();
  }

  return result;
}

uint64_t static Apple_Parsec_Ondeviceanalytics_SpotlightFeatureReport.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_5_6();
  v5 = *(a1 + v4);
  v6 = *(a2 + v4);
  if (v5 != v6 && !sub_21AFB2DBC(v5, v6))
  {
    return 0;
  }

  sub_21B111EC4();
  OUTLINED_FUNCTION_23_1();
  sub_21AFB33AC(v7, v8, MEMORY[0x277D216D0]);
  return sub_21B1123C4() & 1;
}

BOOL sub_21AFB2DBC(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_28_1(a1 + 16, v66);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  OUTLINED_FUNCTION_28_1(a2 + 16, v65);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  v63 = v4;
  v64 = v5;
  v61 = v6;
  v62 = v7;
  v8 = Apple_Parsec_Ondeviceanalytics_SpotlightMetric.rawValue.getter();
  if (v8 != Apple_Parsec_Ondeviceanalytics_SpotlightMetric.rawValue.getter())
  {
    return 0;
  }

  v9 = *(a1 + 40);
  v10 = *(a2 + 40);
  if (v9 > 0xFD)
  {
    if (v10 <= 0xFD)
    {
      return 0;
    }

    goto LABEL_4;
  }

  if (v10 > 0xFD)
  {
    return 0;
  }

  v13 = *(a2 + 32);
  if ((v9 & 0x80) == 0)
  {
    if ((v10 & 0x80) != 0 || !sub_21AF82008(*(a1 + 32), v9 & 1, v13))
    {
      return 0;
    }

LABEL_4:
    v11 = *(a1 + 41);
    v12 = *(a2 + 41);
    if (v11 > 0xFD)
    {
      if (v12 <= 0xFD)
      {
        return 0;
      }

LABEL_21:
      OUTLINED_FUNCTION_28_1(a1 + 44, &v63);
      v15 = *(a1 + 44);
      OUTLINED_FUNCTION_28_1(a2 + 44, &v61);
      if (v15 == *(a2 + 44))
      {
        OUTLINED_FUNCTION_28_1(a1 + 48, v60);
        v16 = *(a1 + 48);
        OUTLINED_FUNCTION_28_1(a2 + 48, v59);
        if (v16 == *(a2 + 48))
        {
          OUTLINED_FUNCTION_28_1(a1 + 52, v58);
          v17 = *(a1 + 52);
          OUTLINED_FUNCTION_28_1(a2 + 52, v57);
          if (v17 == *(a2 + 52))
          {
            OUTLINED_FUNCTION_28_1(a1 + 56, v56);
            v18 = *(a1 + 56);
            OUTLINED_FUNCTION_28_1(a2 + 56, v55);
            if (v18 == *(a2 + 56))
            {
              OUTLINED_FUNCTION_28_1(a1 + 60, v54);
              v19 = *(a1 + 60);
              OUTLINED_FUNCTION_28_1(a2 + 60, v53);
              if (v19 == *(a2 + 60))
              {
                OUTLINED_FUNCTION_28_1(a1 + 64, v52);
                v20 = *(a1 + 64);
                OUTLINED_FUNCTION_28_1(a2 + 64, v51);
                if (v20 == *(a2 + 64))
                {
                  OUTLINED_FUNCTION_28_1(a1 + 68, v50);
                  v21 = *(a1 + 68);
                  OUTLINED_FUNCTION_28_1(a2 + 68, v49);
                  if (v21 == *(a2 + 68))
                  {
                    OUTLINED_FUNCTION_28_1(a1 + 72, v48);
                    v22 = *(a1 + 72);
                    v23 = *(a1 + 80);
                    OUTLINED_FUNCTION_28_1(a2 + 72, v47);
                    if (sub_21AF82008(v22, v23, *(a2 + 72)))
                    {
                      OUTLINED_FUNCTION_28_1(a1 + 88, v46);
                      v24 = *(a1 + 88);
                      v25 = *(a1 + 96);
                      OUTLINED_FUNCTION_28_1(a2 + 88, v45);
                      if (sub_21AF82008(v24, v25, *(a2 + 88)))
                      {
                        OUTLINED_FUNCTION_28_1(a1 + 104, v44);
                        v26 = *(a1 + 104);
                        v27 = *(a1 + 112);
                        OUTLINED_FUNCTION_28_1(a2 + 104, v43);
                        if (sub_21AF82008(v26, v27, *(a2 + 104)))
                        {
                          OUTLINED_FUNCTION_28_1(a1 + 120, v42);
                          v28 = *(a1 + 120);
                          OUTLINED_FUNCTION_28_1(a2 + 120, v41);
                          if (sub_21AFC1808(v28, *(a2 + 120)))
                          {
                            OUTLINED_FUNCTION_28_1(a1 + 128, v40);
                            v29 = *(a1 + 128);
                            OUTLINED_FUNCTION_28_1(a2 + 128, v39);
                            if (v29 == *(a2 + 128))
                            {
                              OUTLINED_FUNCTION_28_1(a1 + 132, v38);
                              v30 = *(a1 + 132);
                              OUTLINED_FUNCTION_28_1(a2 + 132, v37);
                              if (v30 == *(a2 + 132))
                              {
                                OUTLINED_FUNCTION_28_1(a1 + 136, v36);
                                v31 = *(a1 + 136);
                                OUTLINED_FUNCTION_28_1(a2 + 136, v35);
                                if (v31 == *(a2 + 136))
                                {
                                  OUTLINED_FUNCTION_28_1(a1 + 140, v34);
                                  v32 = *(a1 + 140);
                                  OUTLINED_FUNCTION_28_1(a2 + 140, &v33);
                                  return v32 == *(a2 + 140);
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

      return 0;
    }

    if (v12 <= 0xFD)
    {
      result = 0;
      if ((v11 & 0x80) != 0)
      {
        if ((v12 & 0x80) == 0)
        {
          return result;
        }
      }

      else if ((v12 & 0x80) != 0)
      {
        return result;
      }

      if ((v12 ^ v11))
      {
        return result;
      }

      goto LABEL_21;
    }

    return 0;
  }

  result = 0;
  if ((v10 & 0x80) != 0 && ((v13 ^ *(a1 + 32)) & 1) == 0)
  {
    goto LABEL_4;
  }

  return result;
}

uint64_t sub_21AFB3240(uint64_t a1, uint64_t a2)
{
  v4 = sub_21AFB33AC(&qword_27CD43240, type metadata accessor for Apple_Parsec_Ondeviceanalytics_SpotlightFeatureReport, &protocol conformance descriptor for Apple_Parsec_Ondeviceanalytics_SpotlightFeatureReport);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_21AFB32C0(uint64_t a1)
{
  v2 = sub_21AFB33AC(&qword_27CD431D0, type metadata accessor for Apple_Parsec_Ondeviceanalytics_SpotlightFeatureReport, &protocol conformance descriptor for Apple_Parsec_Ondeviceanalytics_SpotlightFeatureReport);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_21AFB3330(uint64_t a1, uint64_t a2)
{
  sub_21AFB33AC(&qword_27CD431D0, type metadata accessor for Apple_Parsec_Ondeviceanalytics_SpotlightFeatureReport, &protocol conformance descriptor for Apple_Parsec_Ondeviceanalytics_SpotlightFeatureReport);

  return sub_21B112114();
}

uint64_t sub_21AFB33AC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_21AFB3414()
{
  v0 = sub_21B112254();
  __swift_allocate_value_buffer(v0, qword_27CD43170);
  __swift_project_value_buffer(v0, qword_27CD43170);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43128, &unk_21B116AD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43130, &unk_21B115090) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_21B113DA0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "metric";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_21B112234();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "invocation_type";
  *(v10 + 8) = 15;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 6;
  *v12 = "invocation_type_summarized";
  *(v12 + 1) = 26;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "is_locked_screen";
  *(v14 + 1) = 16;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 7;
  *v16 = "is_locked_screen_summarized";
  *(v16 + 1) = 27;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 5;
  *v18 = "total_usages";
  *(v18 + 1) = 12;
  v18[16] = 2;
  v9();
  return sub_21B112244();
}

uint64_t Apple_Parsec_Ondeviceanalytics_SpotlightCarryReport.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_21B111F64();
    if (v3 || (v5 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        v6 = OUTLINED_FUNCTION_10_2();
        sub_21AFB37E0(v6, v7);
        break;
      case 2:
        v16 = OUTLINED_FUNCTION_10_2();
        sub_21AFB3848(v16, v17, v18, v19);
        break;
      case 3:
        v12 = OUTLINED_FUNCTION_10_2();
        sub_21AFB38FC(v12, v13, v14, v15);
        break;
      case 5:
        sub_21B112084();
        break;
      case 6:
        v8 = OUTLINED_FUNCTION_10_2();
        sub_21AFB3984(v8, v9, v10, v11);
        break;
      case 7:
        v20 = OUTLINED_FUNCTION_10_2();
        sub_21AFB3A14(v20, v21, v22, v23);
        break;
      default:
        continue;
    }
  }
}

uint64_t Apple_Parsec_Ondeviceanalytics_SpotlightCarryReport.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!Apple_Parsec_Ondeviceanalytics_SpotlightMetric.rawValue.getter() || (sub_21AFB3BE0(), result = sub_21B112174(), !v4))
  {
    v6 = OUTLINED_FUNCTION_9_2();
    result = sub_21AFB3C34(v6, v7, v8, v9);
    if (!v4)
    {
      v10 = OUTLINED_FUNCTION_9_2();
      sub_21AFB3CB8(v10, v11, v12, v13);
      if (*(v3 + 28))
      {
        sub_21B1121F4();
      }

      v14 = OUTLINED_FUNCTION_9_2();
      sub_21AFB3CF0(v14, v15, v16, v17);
      v18 = OUTLINED_FUNCTION_9_2();
      sub_21AFB3D30(v18, v19, v20, v21);
      type metadata accessor for Apple_Parsec_Ondeviceanalytics_SpotlightCarryReport(0);
      return sub_21B111EA4();
    }
  }

  return result;
}

unint64_t sub_21AFB3BE0()
{
  result = qword_27CD43190;
  if (!qword_27CD43190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD43190);
  }

  return result;
}

uint64_t sub_21AFB3C34(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((*(result + 24) & 0x80000000) == 0)
  {
    sub_21AFB4A1C();
    return sub_21B112174();
  }

  return result;
}

uint64_t sub_21AFB3CB8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((*(result + 25) & 0x80000000) == 0)
  {
    return sub_21B112164();
  }

  return result;
}

uint64_t sub_21AFB3CF0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(result + 24) <= -3)
  {
    return sub_21B112164();
  }

  return result;
}

uint64_t sub_21AFB3D30(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(result + 25) <= -3)
  {
    return sub_21B112164();
  }

  return result;
}

uint64_t static Apple_Parsec_Ondeviceanalytics_SpotlightCarryReport.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = Apple_Parsec_Ondeviceanalytics_SpotlightMetric.rawValue.getter();
  if (v4 != Apple_Parsec_Ondeviceanalytics_SpotlightMetric.rawValue.getter())
  {
    return 0;
  }

  v5 = *(a1 + 24);
  v6 = *(a2 + 24);
  if (v5 <= 0xFD)
  {
    if (v6 > 0xFD)
    {
      return 0;
    }

    v9 = *(a1 + 16);
    v10 = *(a2 + 16);
    if ((v5 & 0x80) != 0)
    {
      if (v6 & 0x80) == 0 || ((v10 ^ v9))
      {
        return 0;
      }
    }

    else if ((v6 & 0x80) != 0 || !sub_21AF82008(v9, v5 & 1, v10))
    {
      return 0;
    }
  }

  else if (v6 <= 0xFD)
  {
    return 0;
  }

  v7 = *(a1 + 25);
  v8 = *(a2 + 25);
  if (v7 <= 0xFD)
  {
    if (v8 > 0xFD)
    {
      return 0;
    }

    if ((v7 & 0x80) != 0)
    {
      if ((v8 & 0x80) == 0)
      {
        return 0;
      }
    }

    else if ((v8 & 0x80) != 0)
    {
      return 0;
    }

    if ((v8 ^ v7))
    {
      return 0;
    }
  }

  else if (v8 <= 0xFD)
  {
    return 0;
  }

  if (*(a1 + 28) == *(a2 + 28))
  {
    type metadata accessor for Apple_Parsec_Ondeviceanalytics_SpotlightCarryReport(0);
    sub_21B111EC4();
    OUTLINED_FUNCTION_23_1();
    sub_21AFB33AC(v11, v12, MEMORY[0x277D216D0]);
    return sub_21B1123C4() & 1;
  }

  return 0;
}

uint64_t sub_21AFB3F20(uint64_t (*a1)(void), unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  sub_21B112EC4();
  a1(0);
  sub_21AFB33AC(a2, a3, a4);
  sub_21B112374();
  return sub_21B112F14();
}

uint64_t sub_21AFB4028(uint64_t a1, uint64_t a2)
{
  v4 = sub_21AFB33AC(&qword_27CD43238, type metadata accessor for Apple_Parsec_Ondeviceanalytics_SpotlightCarryReport, &protocol conformance descriptor for Apple_Parsec_Ondeviceanalytics_SpotlightCarryReport);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_21AFB40A8(uint64_t a1)
{
  v2 = sub_21AFB33AC(&qword_27CD431E8, type metadata accessor for Apple_Parsec_Ondeviceanalytics_SpotlightCarryReport, &protocol conformance descriptor for Apple_Parsec_Ondeviceanalytics_SpotlightCarryReport);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_21AFB4118(uint64_t a1, uint64_t a2)
{
  sub_21AFB33AC(&qword_27CD431E8, type metadata accessor for Apple_Parsec_Ondeviceanalytics_SpotlightCarryReport, &protocol conformance descriptor for Apple_Parsec_Ondeviceanalytics_SpotlightCarryReport);

  return sub_21B112114();
}

uint64_t sub_21AFB4194(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_21B112EC4();
  sub_21B112374();
  return sub_21B112F14();
}

unint64_t sub_21AFB41EC()
{
  result = qword_27CD431A0;
  if (!qword_27CD431A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD431A0);
  }

  return result;
}

unint64_t sub_21AFB4244()
{
  result = qword_27CD431A8;
  if (!qword_27CD431A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD431A8);
  }

  return result;
}

unint64_t sub_21AFB429C()
{
  result = qword_27CD431B0;
  if (!qword_27CD431B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD431B0);
  }

  return result;
}

unint64_t sub_21AFB42F4()
{
  result = qword_27CD431B8;
  if (!qword_27CD431B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD431C0, &qword_21B1151A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD431B8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Apple_Parsec_Ondeviceanalytics_SpotlightMetric(uint64_t a1, int a2)
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

uint64_t sub_21AFB45BC(uint64_t a1)
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

uint64_t sub_21AFB4610(uint64_t a1)
{
  result = sub_21B111EC4();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Apple_Parsec_Ondeviceanalytics_SpotlightFeatureReport._StorageClass();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_21AFB46DC(uint64_t a1)
{
  sub_21AFB47B0(319, &qword_27CD43218, &type metadata for Apple_Parsec_Ondeviceanalytics_SpotlightCarryReport.OneOf_InvocationTypePivot);
  if (v1 <= 0x3F)
  {
    sub_21AFB47B0(319, &qword_27CD43220, &type metadata for Apple_Parsec_Ondeviceanalytics_SpotlightCarryReport.OneOf_IsLockedScreenPivot);
    if (v2 <= 0x3F)
    {
      sub_21B111EC4();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_21AFB47B0(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_21B112774();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for Apple_Parsec_Feedback_V2_StartNetworkSearchFeedback.OneOf_Trigger(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7F && *(a1 + 9))
    {
      v2 = *a1 + 126;
    }

    else
    {
      v2 = (*(a1 + 8) & 0x7E | (*(a1 + 8) >> 7)) ^ 0x7F;
      if (v2 >= 0x7E)
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

uint64_t sub_21AFB4844(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7E)
  {
    *(result + 8) = 0;
    *result = a2 - 127;
    if (a3 >= 0x7F)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7F)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *result = 0;
      return OUTLINED_FUNCTION_42_0(result, 2 * (((-a2 >> 1) & 0x3F) - (a2 << 6)));
    }
  }

  return result;
}

uint64_t sub_21AFB48A4(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return v5 + 1;
  }

  if (a2 >= 0x7F)
  {
    if (a2 + 129 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 129) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 130;
    return v5 + 1;
  }

LABEL_17:
  v5 = (*a1 & 0x7E | (*a1 >> 7)) ^ 0x7F;
  if (v5 >= 0x7E)
  {
    v5 = -1;
  }

  return v5 + 1;
}

_BYTE *sub_21AFB4938(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 129 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 129) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0x7F)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0x7E)
  {
    v6 = ((a2 - 127) >> 8) + 1;
    *result = a2 - 127;
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
          result = OUTLINED_FUNCTION_39(result, 2 * (((-a2 >> 1) & 0x3F) - (a2 << 6)));
        }

        break;
    }
  }

  return result;
}

unint64_t sub_21AFB4A1C()
{
  result = qword_27CD43248;
  if (!qword_27CD43248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD43248);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_7(uint64_t a1)
{
  *v1 = a1;
  *(a1 + 72) = v2;
  result = type metadata accessor for Apple_Parsec_Ondeviceanalytics_SpotlightFeatureReport(0);
  *(a1 + 84) = *(result + 20);
  return result;
}

uint64_t OUTLINED_FUNCTION_1_6()
{
  result = type metadata accessor for Apple_Parsec_Ondeviceanalytics_SpotlightFeatureReport(0);
  *(v0 + 84) = *(result + 20);
  return result;
}

uint64_t OUTLINED_FUNCTION_2_8(uint64_t a1)
{

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_4_8()
{
  type metadata accessor for Apple_Parsec_Ondeviceanalytics_SpotlightFeatureReport(0);

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_7_4()
{
  type metadata accessor for Apple_Parsec_Ondeviceanalytics_SpotlightFeatureReport(0);

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_8_6()
{
  type metadata accessor for Apple_Parsec_Ondeviceanalytics_SpotlightFeatureReport(0);

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_12_4(uint64_t a1)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_13_3(uint64_t a1, uint64_t a2, ...)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_14_4(uint64_t a1, uint64_t a2, ...)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_15_4()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_17_3()
{

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_21_1()
{

  return type metadata accessor for Apple_Parsec_Ondeviceanalytics_SpotlightFeatureReport._StorageClass();
}

uint64_t OUTLINED_FUNCTION_27_1(uint64_t a1)
{

  return sub_21B112D04();
}

uint64_t OUTLINED_FUNCTION_28_1(uint64_t a1, uint64_t a2)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_31_1(uint64_t a1, uint64_t a2)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_32_1(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 16) = *result;
  *(v1 + 24) = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_33_1()
{

  return type metadata accessor for Apple_Parsec_Ondeviceanalytics_SpotlightFeatureReport._StorageClass();
}

uint64_t OUTLINED_FUNCTION_35_0(uint64_t a1)
{

  return swift_isUniquelyReferenced_nonNull_native();
}

void OUTLINED_FUNCTION_37_0(uint64_t a1@<X8>)
{
  v3 = *(v2 + a1);
  v4 = *(v3 + 32);
  LOBYTE(v3) = *(v3 + 40);
  *v1 = v4;
  *(v1 + 8) = v3;
}

uint64_t OUTLINED_FUNCTION_40_0(uint64_t a1)
{

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_43_0()
{

  return sub_21AFB1408(v0);
}

uint64_t sub_21AFB4EF8@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  OUTLINED_FUNCTION_5_7();
  v7 = a1 == 0xD000000000000014 && v6 == a2;
  if (v7 || (OUTLINED_FUNCTION_6_5(0xD000000000000014) & 1) != 0 || ((OUTLINED_FUNCTION_5_7(), a1 == 0xD000000000000016) ? (v13 = v12 == a2) : (v13 = 0), v13 || (OUTLINED_FUNCTION_6_5(0xD000000000000016) & 1) != 0 || ((OUTLINED_FUNCTION_5_7(), a1 == 0xD000000000000013) ? (v15 = v14 == a2) : (v15 = 0), v15 || (OUTLINED_FUNCTION_6_5(0xD000000000000013) & 1) != 0 || ((OUTLINED_FUNCTION_5_7(), a1 == 0xD000000000000015) ? (v17 = v16 == a2) : (v17 = 0), v17 || (OUTLINED_FUNCTION_6_5(0xD000000000000015) & 1) != 0 || ((OUTLINED_FUNCTION_5_7(), a1 == 0xD000000000000022) ? (v19 = v18 == a2) : (v19 = 0), v19 || (OUTLINED_FUNCTION_6_5(0xD000000000000022) & 1) != 0 || ((OUTLINED_FUNCTION_5_7(), a1 == 0xD00000000000001BLL) ? (v21 = v20 == a2) : (v21 = 0), v21 || (OUTLINED_FUNCTION_6_5(0xD00000000000001BLL) & 1) != 0 || ((OUTLINED_FUNCTION_5_7(), a1 == 0xD00000000000001ELL) ? (v23 = v22 == a2) : (v23 = 0), v23 || (OUTLINED_FUNCTION_6_5(0xD00000000000001ELL) & 1) != 0 || ((OUTLINED_FUNCTION_5_7(), a1 == 0xD000000000000028) ? (v25 = v24 == a2) : (v25 = 0), v25 || (OUTLINED_FUNCTION_6_5(0xD000000000000028) & 1) != 0))))))))
  {
    OUTLINED_FUNCTION_7_5();
  }

  else
  {
  }

  sub_21B112904();

  v8 = sub_21B112474();
  v10 = v9;

  MEMORY[0x21CEE9770](v8, v10);

  sub_21AFB5518(0x800000021B1329B0, a3);
}

uint64_t Apple_Parsec_Ondeviceanalytics_SpotlightFeatureReport.OneOf_InvocationTypePivot.hash(into:)(uint64_t a1)
{
  if (*(v1 + 8) < 0)
  {
    MEMORY[0x21CEEA150](2);
    return sub_21B112EE4();
  }

  else
  {
    MEMORY[0x21CEEA150](1);
    sub_21AFB4A1C();
    return sub_21B111F34();
  }
}

unint64_t sub_21AFB5274()
{
  result = qword_27CD43250;
  if (!qword_27CD43250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD43250);
  }

  return result;
}

uint64_t sub_21AFB52D0(uint64_t a1)
{
  v2 = *(v1 + 8);
  sub_21B112EC4();
  if (v2 < 0)
  {
    MEMORY[0x21CEEA150](2);
    sub_21B112EE4();
  }

  else
  {
    MEMORY[0x21CEEA150](1);
    sub_21AFB4A1C();
    sub_21B111F34();
  }

  return sub_21B112F14();
}

uint64_t Apple_Parsec_Ondeviceanalytics_SpotlightFeatureReport.OneOf_IsLockedScreenPivot.hash(into:)()
{
  if (*v0 >= 0)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  MEMORY[0x21CEEA150](v1);
  return sub_21B112EE4();
}

uint64_t Apple_Parsec_Ondeviceanalytics_SpotlightFeatureReport.OneOf_IsLockedScreenPivot.hashValue.getter()
{
  v1 = *v0;
  sub_21B112EC4();
  if (v1 >= 0)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  MEMORY[0x21CEEA150](v2);
  sub_21B112EE4();
  return sub_21B112F14();
}

uint64_t sub_21AFB5410(uint64_t a1)
{
  v2 = *v1;
  sub_21B112EC4();
  if (v2 >= 0)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  MEMORY[0x21CEEA150](v3);
  sub_21B112EE4();
  return sub_21B112F14();
}

unint64_t sub_21AFB546C()
{
  result = qword_27CD43258;
  if (!qword_27CD43258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD43258);
  }

  return result;
}

unint64_t sub_21AFB54C4()
{
  result = qword_27CD43260;
  if (!qword_27CD43260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD43260);
  }

  return result;
}

void sub_21AFB5518(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  OUTLINED_FUNCTION_5_7();
  v6 = v4 == 0xD000000000000029 && v5 == a1;
  if (v6 || (v7 = v4, (OUTLINED_FUNCTION_4_9(0xD000000000000029) & 1) != 0))
  {
    v8 = 1;
  }

  else
  {
    OUTLINED_FUNCTION_2_9();
    v10 = v6 && v9 == a1;
    if (v10 || (OUTLINED_FUNCTION_1_7() & 1) != 0)
    {
      v8 = 2;
    }

    else
    {
      OUTLINED_FUNCTION_5_7();
      v12 = v7 == 0xD000000000000025 && v11 == a1;
      if (v12 || (OUTLINED_FUNCTION_4_9(0xD000000000000025) & 1) != 0)
      {
        v8 = 3;
      }

      else
      {
        OUTLINED_FUNCTION_2_9();
        v14 = v6 && v13 == a1;
        if (v14 || (OUTLINED_FUNCTION_1_7() & 1) != 0)
        {
          v8 = 4;
        }

        else
        {
          OUTLINED_FUNCTION_0_8();
          v16 = v6 && v15 == a1;
          if (v16 || (OUTLINED_FUNCTION_4_9(0xD000000000000025) & 1) != 0)
          {
            v8 = 5;
          }

          else
          {
            OUTLINED_FUNCTION_5_7();
            v18 = v7 == 0xD00000000000002BLL && v17 == a1;
            if (v18 || (OUTLINED_FUNCTION_4_9(0xD00000000000002BLL) & 1) != 0)
            {
              v8 = 6;
            }

            else
            {
              OUTLINED_FUNCTION_5_7();
              v20 = v7 == 0xD00000000000002DLL && v19 == a1;
              if (v20 || (OUTLINED_FUNCTION_4_9(0xD00000000000002DLL) & 1) != 0)
              {
                v8 = 7;
              }

              else
              {
                OUTLINED_FUNCTION_5_7();
                v22 = v7 == 0xD00000000000001BLL && v21 == a1;
                if (v22 || (OUTLINED_FUNCTION_4_9(0xD00000000000001BLL) & 1) != 0)
                {
                  v8 = 8;
                }

                else
                {
                  OUTLINED_FUNCTION_5_7();
                  v24 = v7 == 0xD00000000000001DLL && v23 == a1;
                  if (v24 || (OUTLINED_FUNCTION_4_9(0xD00000000000001DLL) & 1) != 0)
                  {
                    v8 = 9;
                  }

                  else
                  {
                    OUTLINED_FUNCTION_5_7();
                    v26 = v7 == 0xD000000000000021 && v25 == a1;
                    if (v26 || (OUTLINED_FUNCTION_4_9(0xD000000000000021) & 1) != 0)
                    {
                      v8 = 10;
                    }

                    else
                    {
                      OUTLINED_FUNCTION_2_9();
                      v28 = v6 && v27 == a1;
                      if (v28 || (OUTLINED_FUNCTION_1_7() & 1) != 0)
                      {
                        v8 = 11;
                      }

                      else
                      {
                        OUTLINED_FUNCTION_5_7();
                        v30 = v7 == 0xD000000000000033 && v29 == a1;
                        if (v30 || (OUTLINED_FUNCTION_4_9(0xD000000000000033) & 1) != 0)
                        {
                          v8 = 12;
                        }

                        else
                        {
                          OUTLINED_FUNCTION_5_7();
                          v32 = v7 == 0xD000000000000035 && v31 == a1;
                          if (v32 || (OUTLINED_FUNCTION_4_9(0xD000000000000035) & 1) != 0)
                          {
                            v8 = 13;
                          }

                          else
                          {
                            OUTLINED_FUNCTION_5_7();
                            v34 = v7 == 0xD000000000000028 && v33 == a1;
                            if (v34 || (OUTLINED_FUNCTION_4_9(0xD000000000000028) & 1) != 0)
                            {
                              v8 = 14;
                            }

                            else
                            {
                              OUTLINED_FUNCTION_5_7();
                              v36 = v7 == 0xD00000000000002ALL && v35 == a1;
                              if (v36 || (OUTLINED_FUNCTION_4_9(0xD00000000000002ALL) & 1) != 0)
                              {
                                v8 = 15;
                              }

                              else
                              {
                                OUTLINED_FUNCTION_5_7();
                                v38 = v7 == 0xD000000000000019 && v37 == a1;
                                if (v38 || (OUTLINED_FUNCTION_4_9(0xD000000000000019) & 1) != 0)
                                {
                                  v8 = 16;
                                }

                                else
                                {
                                  OUTLINED_FUNCTION_5_7();
                                  v40 = v7 == 0xD00000000000001BLL && v39 == a1;
                                  if (v40 || (OUTLINED_FUNCTION_4_9(0xD00000000000001BLL) & 1) != 0)
                                  {
                                    v8 = 17;
                                  }

                                  else
                                  {
                                    OUTLINED_FUNCTION_5_7();
                                    v42 = v7 == 0xD00000000000001CLL && v41 == a1;
                                    if (v42 || (OUTLINED_FUNCTION_4_9(0xD00000000000001CLL) & 1) != 0)
                                    {
                                      v8 = 18;
                                    }

                                    else
                                    {
                                      OUTLINED_FUNCTION_5_7();
                                      v44 = v7 == 0xD00000000000001ELL && v43 == a1;
                                      if (v44 || (OUTLINED_FUNCTION_4_9(0xD00000000000001ELL) & 1) != 0)
                                      {
                                        v8 = 19;
                                      }

                                      else
                                      {
                                        OUTLINED_FUNCTION_5_7();
                                        v46 = v7 == 0xD000000000000024 && v45 == a1;
                                        if (v46 || (OUTLINED_FUNCTION_4_9(0xD000000000000024) & 1) != 0)
                                        {
                                          v8 = 20;
                                        }

                                        else
                                        {
                                          OUTLINED_FUNCTION_5_7();
                                          v48 = v7 == 0xD000000000000026 && v47 == a1;
                                          if (v48 || (OUTLINED_FUNCTION_4_9(0xD000000000000026) & 1) != 0)
                                          {
                                            v8 = 21;
                                          }

                                          else
                                          {
                                            OUTLINED_FUNCTION_2_9();
                                            v50 = v6 && v49 == a1;
                                            if (v50 || (OUTLINED_FUNCTION_1_7() & 1) != 0)
                                            {
                                              v8 = 22;
                                            }

                                            else
                                            {
                                              OUTLINED_FUNCTION_0_8();
                                              v52 = v6 && v51 == a1;
                                              if (v52 || (OUTLINED_FUNCTION_4_9(0xD000000000000025) & 1) != 0)
                                              {
                                                v8 = 23;
                                              }

                                              else
                                              {
                                                OUTLINED_FUNCTION_5_7();
                                                v54 = v7 == 0xD000000000000022 && v53 == a1;
                                                if (v54 || (OUTLINED_FUNCTION_4_9(0xD000000000000022) & 1) != 0)
                                                {
                                                  v8 = 24;
                                                }

                                                else
                                                {
                                                  OUTLINED_FUNCTION_3_8();
                                                  v56 = v6 && v55 == a1;
                                                  if (v56 || (OUTLINED_FUNCTION_4_9(0xD000000000000024) & 1) != 0)
                                                  {
                                                    v8 = 25;
                                                  }

                                                  else
                                                  {
                                                    OUTLINED_FUNCTION_5_7();
                                                    v58 = v7 == 0xD000000000000027 && v57 == a1;
                                                    if (v58 || (OUTLINED_FUNCTION_4_9(0xD000000000000027) & 1) != 0)
                                                    {
                                                      v8 = 26;
                                                    }

                                                    else
                                                    {
                                                      OUTLINED_FUNCTION_5_7();
                                                      v60 = v7 == 0xD000000000000029 && v59 == a1;
                                                      if (v60 || (OUTLINED_FUNCTION_4_9(0xD000000000000029) & 1) != 0)
                                                      {
                                                        v8 = 27;
                                                      }

                                                      else
                                                      {
                                                        OUTLINED_FUNCTION_0_8();
                                                        v62 = v6 && v61 == a1;
                                                        if (v62 || (OUTLINED_FUNCTION_4_9(0xD000000000000025) & 1) != 0)
                                                        {
                                                          v8 = 28;
                                                        }

                                                        else
                                                        {
                                                          OUTLINED_FUNCTION_5_7();
                                                          OUTLINED_FUNCTION_9_3();
                                                          v64 = v6 && v63 == a1;
                                                          if (v64 || (OUTLINED_FUNCTION_4_9(0xD000000000000027) & 1) != 0)
                                                          {
                                                            v8 = 29;
                                                          }

                                                          else
                                                          {
                                                            OUTLINED_FUNCTION_5_7();
                                                            v66 = v7 == 0xD00000000000001DLL && v65 == a1;
                                                            if (v66 || (OUTLINED_FUNCTION_4_9(0xD00000000000001DLL) & 1) != 0)
                                                            {
                                                              v8 = 30;
                                                            }

                                                            else
                                                            {
                                                              OUTLINED_FUNCTION_5_7();
                                                              v68 = v7 == 0xD00000000000001FLL && v67 == a1;
                                                              if (v68 || (OUTLINED_FUNCTION_4_9(0xD00000000000001FLL) & 1) != 0)
                                                              {
                                                                v8 = 31;
                                                              }

                                                              else
                                                              {
                                                                OUTLINED_FUNCTION_3_8();
                                                                v70 = v6 && v69 == a1;
                                                                if (v70 || (OUTLINED_FUNCTION_4_9(0xD000000000000024) & 1) != 0)
                                                                {
                                                                  v8 = 32;
                                                                }

                                                                else
                                                                {
                                                                  OUTLINED_FUNCTION_5_7();
                                                                  v72 = v7 == 0xD000000000000026 && v71 == a1;
                                                                  if (v72 || (OUTLINED_FUNCTION_4_9(0xD000000000000026) & 1) != 0)
                                                                  {
                                                                    v8 = 33;
                                                                  }

                                                                  else
                                                                  {
                                                                    OUTLINED_FUNCTION_5_7();
                                                                    v74 = v7 == 0xD000000000000020 && v73 == a1;
                                                                    if (v74 || (OUTLINED_FUNCTION_4_9(0xD000000000000020) & 1) != 0)
                                                                    {
                                                                      v8 = 34;
                                                                    }

                                                                    else
                                                                    {
                                                                      OUTLINED_FUNCTION_5_7();
                                                                      OUTLINED_FUNCTION_10_3();
                                                                      v76 = v6 && v75 == a1;
                                                                      if (v76 || (OUTLINED_FUNCTION_4_9(0xD000000000000022) & 1) != 0)
                                                                      {
                                                                        v8 = 35;
                                                                      }

                                                                      else
                                                                      {
                                                                        OUTLINED_FUNCTION_5_7();
                                                                        v78 = v7 == 0xD000000000000032 && v77 == a1;
                                                                        if (v78 || (OUTLINED_FUNCTION_4_9(0xD000000000000032) & 1) != 0)
                                                                        {
                                                                          v8 = 36;
                                                                        }

                                                                        else
                                                                        {
                                                                          OUTLINED_FUNCTION_5_7();
                                                                          v80 = v7 == 0xD000000000000034 && v79 == a1;
                                                                          if (v80 || (OUTLINED_FUNCTION_4_9(0xD000000000000034) & 1) != 0)
                                                                          {
                                                                            v8 = 37;
                                                                          }

                                                                          else
                                                                          {
                                                                            OUTLINED_FUNCTION_0_8();
                                                                            v82 = v6 && v81 == a1;
                                                                            if (v82 || (OUTLINED_FUNCTION_4_9(0xD000000000000025) & 1) != 0)
                                                                            {
                                                                              v8 = 38;
                                                                            }

                                                                            else
                                                                            {
                                                                              OUTLINED_FUNCTION_5_7();
                                                                              OUTLINED_FUNCTION_9_3();
                                                                              v84 = v6 && v83 == a1;
                                                                              if (v84 || (OUTLINED_FUNCTION_4_9(0xD000000000000027) & 1) != 0)
                                                                              {
                                                                                v8 = 39;
                                                                              }

                                                                              else
                                                                              {
                                                                                OUTLINED_FUNCTION_5_7();
                                                                                v86 = v7 == 0xD00000000000001ALL && v85 == a1;
                                                                                if (v86 || (OUTLINED_FUNCTION_4_9(0xD00000000000001ALL) & 1) != 0)
                                                                                {
                                                                                  v8 = 40;
                                                                                }

                                                                                else
                                                                                {
                                                                                  OUTLINED_FUNCTION_5_7();
                                                                                  v88 = v7 == 0xD00000000000001CLL && v87 == a1;
                                                                                  if (v88 || (OUTLINED_FUNCTION_4_9(0xD00000000000001CLL) & 1) != 0)
                                                                                  {
                                                                                    v8 = 41;
                                                                                  }

                                                                                  else
                                                                                  {
                                                                                    OUTLINED_FUNCTION_5_7();
                                                                                    v90 = v7 == 0xD00000000000001ELL && v89 == a1;
                                                                                    if (v90 || (OUTLINED_FUNCTION_4_9(0xD00000000000001ELL) & 1) != 0)
                                                                                    {
                                                                                      v8 = 42;
                                                                                    }

                                                                                    else
                                                                                    {
                                                                                      OUTLINED_FUNCTION_5_7();
                                                                                      OUTLINED_FUNCTION_8_7();
                                                                                      v92 = v6 && v91 == a1;
                                                                                      if (v92 || (OUTLINED_FUNCTION_4_9(0xD000000000000020) & 1) != 0)
                                                                                      {
                                                                                        v8 = 43;
                                                                                      }

                                                                                      else
                                                                                      {
                                                                                        OUTLINED_FUNCTION_5_7();
                                                                                        v94 = v7 == 0xD000000000000030 && v93 == a1;
                                                                                        if (v94 || (OUTLINED_FUNCTION_4_9(0xD000000000000030) & 1) != 0)
                                                                                        {
                                                                                          v8 = 44;
                                                                                        }

                                                                                        else
                                                                                        {
                                                                                          OUTLINED_FUNCTION_5_7();
                                                                                          v96 = v7 == 0xD000000000000032 && v95 == a1;
                                                                                          if (v96 || (OUTLINED_FUNCTION_4_9(0xD000000000000032) & 1) != 0)
                                                                                          {
                                                                                            v8 = 45;
                                                                                          }

                                                                                          else
                                                                                          {
                                                                                            OUTLINED_FUNCTION_5_7();
                                                                                            v98 = v7 == 0xD000000000000021 && v97 == a1;
                                                                                            if (v98 || (OUTLINED_FUNCTION_4_9(0xD000000000000021) & 1) != 0)
                                                                                            {
                                                                                              v8 = 46;
                                                                                            }

                                                                                            else
                                                                                            {
                                                                                              OUTLINED_FUNCTION_2_9();
                                                                                              v100 = v6 && v99 == a1;
                                                                                              if (v100 || (OUTLINED_FUNCTION_1_7() & 1) != 0)
                                                                                              {
                                                                                                v8 = 47;
                                                                                              }

                                                                                              else
                                                                                              {
                                                                                                OUTLINED_FUNCTION_5_7();
                                                                                                v102 = v7 == 0xD00000000000001FLL && v101 == a1;
                                                                                                if (v102 || (OUTLINED_FUNCTION_4_9(0xD00000000000001FLL) & 1) != 0)
                                                                                                {
                                                                                                  v8 = 48;
                                                                                                }

                                                                                                else
                                                                                                {
                                                                                                  OUTLINED_FUNCTION_5_7();
                                                                                                  OUTLINED_FUNCTION_8_7();
                                                                                                  v104 = v6 && v103 == a1;
                                                                                                  if (v104 || (OUTLINED_FUNCTION_4_9(0xD000000000000020) & 1) != 0)
                                                                                                  {
                                                                                                    v8 = 49;
                                                                                                  }

                                                                                                  else
                                                                                                  {
                                                                                                    OUTLINED_FUNCTION_5_7();
                                                                                                    v106 = v7 == 0xD00000000000001DLL && v105 == a1;
                                                                                                    if (v106 || (OUTLINED_FUNCTION_4_9(0xD00000000000001DLL) & 1) != 0)
                                                                                                    {
                                                                                                      v8 = 50;
                                                                                                    }

                                                                                                    else
                                                                                                    {
                                                                                                      OUTLINED_FUNCTION_5_7();
                                                                                                      OUTLINED_FUNCTION_8_7();
                                                                                                      v108 = v6 && v107 == a1;
                                                                                                      if (v108 || (OUTLINED_FUNCTION_4_9(0xD000000000000020) & 1) != 0)
                                                                                                      {
                                                                                                        v8 = 51;
                                                                                                      }

                                                                                                      else
                                                                                                      {
                                                                                                        OUTLINED_FUNCTION_5_7();
                                                                                                        v110 = v7 == 0xD00000000000001CLL && v109 == a1;
                                                                                                        if (v110 || (OUTLINED_FUNCTION_4_9(0xD00000000000001CLL) & 1) != 0)
                                                                                                        {
                                                                                                          v8 = 52;
                                                                                                        }

                                                                                                        else
                                                                                                        {
                                                                                                          OUTLINED_FUNCTION_2_9();
                                                                                                          v112 = v6 && v111 == a1;
                                                                                                          if (v112 || (OUTLINED_FUNCTION_1_7() & 1) != 0)
                                                                                                          {
                                                                                                            v8 = 53;
                                                                                                          }

                                                                                                          else
                                                                                                          {
                                                                                                            OUTLINED_FUNCTION_3_8();
                                                                                                            v114 = v6 && v113 == a1;
                                                                                                            if (v114 || (OUTLINED_FUNCTION_4_9(0xD000000000000024) & 1) != 0)
                                                                                                            {
                                                                                                              v8 = 54;
                                                                                                            }

                                                                                                            else
                                                                                                            {
                                                                                                              OUTLINED_FUNCTION_5_7();
                                                                                                              v116 = v7 == 0xD000000000000028 && v115 == a1;
                                                                                                              if (v116 || (OUTLINED_FUNCTION_4_9(0xD000000000000028) & 1) != 0)
                                                                                                              {
                                                                                                                v8 = 55;
                                                                                                              }

                                                                                                              else
                                                                                                              {
                                                                                                                OUTLINED_FUNCTION_5_7();
                                                                                                                v118 = v7 == 0xD00000000000002FLL && v117 == a1;
                                                                                                                if (v118 || (OUTLINED_FUNCTION_4_9(0xD00000000000002FLL) & 1) != 0)
                                                                                                                {
                                                                                                                  v8 = 56;
                                                                                                                }

                                                                                                                else
                                                                                                                {
                                                                                                                  OUTLINED_FUNCTION_5_7();
                                                                                                                  v120 = v7 == 0xD000000000000026 && v119 == a1;
                                                                                                                  if (v120 || (OUTLINED_FUNCTION_4_9(0xD000000000000026) & 1) != 0)
                                                                                                                  {
                                                                                                                    v8 = 57;
                                                                                                                  }

                                                                                                                  else
                                                                                                                  {
                                                                                                                    OUTLINED_FUNCTION_5_7();
                                                                                                                    v122 = v7 == 0xD000000000000021 && v121 == a1;
                                                                                                                    if (v122 || (OUTLINED_FUNCTION_4_9(0xD000000000000021) & 1) != 0)
                                                                                                                    {
                                                                                                                      v8 = 58;
                                                                                                                    }

                                                                                                                    else
                                                                                                                    {
                                                                                                                      OUTLINED_FUNCTION_5_7();
                                                                                                                      v124 = v7 == 0xD000000000000021 && v123 == a1;
                                                                                                                      if (v124 || (OUTLINED_FUNCTION_4_9(0xD000000000000021) & 1) != 0)
                                                                                                                      {
                                                                                                                        v8 = 59;
                                                                                                                      }

                                                                                                                      else
                                                                                                                      {
                                                                                                                        OUTLINED_FUNCTION_5_7();
                                                                                                                        OUTLINED_FUNCTION_10_3();
                                                                                                                        v126 = v6 && v125 == a1;
                                                                                                                        if (v126 || (OUTLINED_FUNCTION_4_9(0xD000000000000022) & 1) != 0)
                                                                                                                        {
                                                                                                                          v8 = 60;
                                                                                                                        }

                                                                                                                        else
                                                                                                                        {
                                                                                                                          OUTLINED_FUNCTION_2_9();
                                                                                                                          v128 = v6 && v127 == a1;
                                                                                                                          if (v128 || (OUTLINED_FUNCTION_1_7() & 1) != 0)
                                                                                                                          {
                                                                                                                            v8 = 61;
                                                                                                                          }

                                                                                                                          else
                                                                                                                          {
                                                                                                                            OUTLINED_FUNCTION_0_8();
                                                                                                                            v130 = v6 && v129 == a1;
                                                                                                                            if (v130 || (OUTLINED_FUNCTION_4_9(0xD000000000000025) & 1) != 0)
                                                                                                                            {
                                                                                                                              v8 = 62;
                                                                                                                            }

                                                                                                                            else
                                                                                                                            {
                                                                                                                              OUTLINED_FUNCTION_0_8();
                                                                                                                              v132 = v6 && v131 == a1;
                                                                                                                              if (v132 || (OUTLINED_FUNCTION_4_9(0xD000000000000025) & 1) != 0)
                                                                                                                              {
                                                                                                                                v8 = 63;
                                                                                                                              }

                                                                                                                              else
                                                                                                                              {
                                                                                                                                OUTLINED_FUNCTION_5_7();
                                                                                                                                OUTLINED_FUNCTION_8_7();
                                                                                                                                v134 = v6 && v133 == a1;
                                                                                                                                if (v134 || (OUTLINED_FUNCTION_4_9(0xD000000000000020) & 1) != 0)
                                                                                                                                {
                                                                                                                                  v8 = 64;
                                                                                                                                }

                                                                                                                                else
                                                                                                                                {
                                                                                                                                  OUTLINED_FUNCTION_5_7();
                                                                                                                                  OUTLINED_FUNCTION_10_3();
                                                                                                                                  v136 = v6 && v135 == a1;
                                                                                                                                  if (v136 || (OUTLINED_FUNCTION_4_9(0xD000000000000022) & 1) != 0)
                                                                                                                                  {
                                                                                                                                    v8 = 65;
                                                                                                                                  }

                                                                                                                                  else
                                                                                                                                  {
                                                                                                                                    OUTLINED_FUNCTION_5_7();
                                                                                                                                    v138 = v7 == 0xD00000000000002BLL && v137 == a1;
                                                                                                                                    if (v138 || (OUTLINED_FUNCTION_4_9(0xD00000000000002BLL) & 1) != 0)
                                                                                                                                    {
                                                                                                                                      v8 = 66;
                                                                                                                                    }

                                                                                                                                    else
                                                                                                                                    {
                                                                                                                                      OUTLINED_FUNCTION_5_7();
                                                                                                                                      v140 = v7 == 0xD00000000000002ALL && v139 == a1;
                                                                                                                                      if (v140 || (OUTLINED_FUNCTION_4_9(0xD00000000000002ALL) & 1) != 0)
                                                                                                                                      {
                                                                                                                                        v8 = 67;
                                                                                                                                      }

                                                                                                                                      else
                                                                                                                                      {
                                                                                                                                        OUTLINED_FUNCTION_5_7();
                                                                                                                                        v142 = v7 == 0xD00000000000002BLL && v141 == a1;
                                                                                                                                        if (v142 || (OUTLINED_FUNCTION_4_9(0xD00000000000002BLL) & 1) != 0)
                                                                                                                                        {
                                                                                                                                          v8 = 68;
                                                                                                                                        }

                                                                                                                                        else
                                                                                                                                        {
                                                                                                                                          OUTLINED_FUNCTION_5_7();
                                                                                                                                          v144 = v7 == 0xD000000000000033 && v143 == a1;
                                                                                                                                          if (v144 || (OUTLINED_FUNCTION_4_9(0xD000000000000033) & 1) != 0)
                                                                                                                                          {
                                                                                                                                            v8 = 69;
                                                                                                                                          }

                                                                                                                                          else
                                                                                                                                          {
                                                                                                                                            OUTLINED_FUNCTION_0_8();
                                                                                                                                            v146 = v6 && v145 == a1;
                                                                                                                                            if (v146 || (OUTLINED_FUNCTION_4_9(0xD000000000000025) & 1) != 0)
                                                                                                                                            {
                                                                                                                                              v8 = 70;
                                                                                                                                            }

                                                                                                                                            else
                                                                                                                                            {
                                                                                                                                              OUTLINED_FUNCTION_5_7();
                                                                                                                                              v148 = v7 == 0xD000000000000028 && v147 == a1;
                                                                                                                                              if (v148 || (OUTLINED_FUNCTION_4_9(0xD000000000000028) & 1) != 0)
                                                                                                                                              {
                                                                                                                                                v8 = 71;
                                                                                                                                              }

                                                                                                                                              else
                                                                                                                                              {
                                                                                                                                                OUTLINED_FUNCTION_5_7();
                                                                                                                                                v150 = v7 == 0xD000000000000036 && v149 == a1;
                                                                                                                                                if (v150 || (OUTLINED_FUNCTION_4_9(0xD000000000000036) & 1) != 0)
                                                                                                                                                {
                                                                                                                                                  v8 = 72;
                                                                                                                                                }

                                                                                                                                                else
                                                                                                                                                {
                                                                                                                                                  OUTLINED_FUNCTION_5_7();
                                                                                                                                                  v152 = v7 == 0xD00000000000002ALL && v151 == a1;
                                                                                                                                                  if (v152 || (OUTLINED_FUNCTION_4_9(0xD00000000000002ALL) & 1) != 0)
                                                                                                                                                  {
                                                                                                                                                    v8 = 73;
                                                                                                                                                  }

                                                                                                                                                  else
                                                                                                                                                  {
                                                                                                                                                    OUTLINED_FUNCTION_5_7();
                                                                                                                                                    v154 = v7 == 0xD000000000000031 && v153 == a1;
                                                                                                                                                    if (v154 || (OUTLINED_FUNCTION_4_9(0xD000000000000031) & 1) != 0)
                                                                                                                                                    {
                                                                                                                                                      v8 = 74;
                                                                                                                                                    }

                                                                                                                                                    else
                                                                                                                                                    {
                                                                                                                                                      OUTLINED_FUNCTION_2_9();
                                                                                                                                                      v156 = v6 && v155 == a1;
                                                                                                                                                      if (v156 || (OUTLINED_FUNCTION_1_7() & 1) != 0)
                                                                                                                                                      {
                                                                                                                                                        v8 = 75;
                                                                                                                                                      }

                                                                                                                                                      else
                                                                                                                                                      {
                                                                                                                                                        OUTLINED_FUNCTION_5_7();
                                                                                                                                                        v158 = v7 == 0xD00000000000003FLL && v157 == a1;
                                                                                                                                                        if (v158 || (OUTLINED_FUNCTION_4_9(0xD00000000000003FLL) & 1) != 0)
                                                                                                                                                        {
                                                                                                                                                          v8 = 76;
                                                                                                                                                        }

                                                                                                                                                        else
                                                                                                                                                        {
                                                                                                                                                          OUTLINED_FUNCTION_0_8();
                                                                                                                                                          v160 = v6 && v159 == a1;
                                                                                                                                                          if (v160 || (OUTLINED_FUNCTION_4_9(0xD00000000000003FLL) & 1) != 0)
                                                                                                                                                          {
                                                                                                                                                            v8 = 77;
                                                                                                                                                          }

                                                                                                                                                          else
                                                                                                                                                          {
                                                                                                                                                            OUTLINED_FUNCTION_5_7();
                                                                                                                                                            v162 = v7 == 0xD000000000000039 && v161 == a1;
                                                                                                                                                            if (v162 || (OUTLINED_FUNCTION_4_9(0xD000000000000039) & 1) != 0)
                                                                                                                                                            {
                                                                                                                                                              v8 = 78;
                                                                                                                                                            }

                                                                                                                                                            else
                                                                                                                                                            {
                                                                                                                                                              OUTLINED_FUNCTION_5_7();
                                                                                                                                                              v164 = v7 == 0xD00000000000002ALL && v163 == a1;
                                                                                                                                                              if (v164 || (OUTLINED_FUNCTION_4_9(0xD00000000000002ALL) & 1) != 0)
                                                                                                                                                              {
                                                                                                                                                                v8 = 79;
                                                                                                                                                              }

                                                                                                                                                              else
                                                                                                                                                              {
                                                                                                                                                                OUTLINED_FUNCTION_5_7();
                                                                                                                                                                OUTLINED_FUNCTION_10_3();
                                                                                                                                                                v166 = v6 && v165 == a1;
                                                                                                                                                                if (v166 || (OUTLINED_FUNCTION_4_9(0xD000000000000022) & 1) != 0)
                                                                                                                                                                {
                                                                                                                                                                  v8 = 80;
                                                                                                                                                                }

                                                                                                                                                                else
                                                                                                                                                                {
                                                                                                                                                                  OUTLINED_FUNCTION_5_7();
                                                                                                                                                                  OUTLINED_FUNCTION_9_3();
                                                                                                                                                                  v168 = v6 && v167 == a1;
                                                                                                                                                                  if (v168 || (OUTLINED_FUNCTION_4_9(0xD000000000000027) & 1) != 0)
                                                                                                                                                                  {
                                                                                                                                                                    v8 = 81;
                                                                                                                                                                  }

                                                                                                                                                                  else
                                                                                                                                                                  {
                                                                                                                                                                    OUTLINED_FUNCTION_5_7();
                                                                                                                                                                    v170 = v7 == 0xD000000000000038 && v169 == a1;
                                                                                                                                                                    if (v170 || (OUTLINED_FUNCTION_4_9(0xD000000000000038) & 1) != 0)
                                                                                                                                                                    {
                                                                                                                                                                      v8 = 82;
                                                                                                                                                                    }

                                                                                                                                                                    else
                                                                                                                                                                    {
                                                                                                                                                                      OUTLINED_FUNCTION_0_8();
                                                                                                                                                                      v172 = v6 && v171 == a1;
                                                                                                                                                                      if (v172 || (OUTLINED_FUNCTION_4_9(0xD000000000000038) & 1) != 0)
                                                                                                                                                                      {
                                                                                                                                                                        v8 = 83;
                                                                                                                                                                      }

                                                                                                                                                                      else
                                                                                                                                                                      {
                                                                                                                                                                        OUTLINED_FUNCTION_5_7();
                                                                                                                                                                        OUTLINED_FUNCTION_9_3();
                                                                                                                                                                        v174 = v6 && v173 == a1;
                                                                                                                                                                        if (v174 || (OUTLINED_FUNCTION_4_9(0xD000000000000027) & 1) != 0)
                                                                                                                                                                        {
                                                                                                                                                                          v8 = 84;
                                                                                                                                                                        }

                                                                                                                                                                        else
                                                                                                                                                                        {
                                                                                                                                                                          OUTLINED_FUNCTION_3_8();
                                                                                                                                                                          v176 = v6 && v175 == a1;
                                                                                                                                                                          if (v176 || (OUTLINED_FUNCTION_4_9(0xD000000000000024) & 1) != 0)
                                                                                                                                                                          {
                                                                                                                                                                            v8 = 85;
                                                                                                                                                                          }

                                                                                                                                                                          else
                                                                                                                                                                          {
                                                                                                                                                                            OUTLINED_FUNCTION_3_8();
                                                                                                                                                                            v178 = v6 && v177 == a1;
                                                                                                                                                                            if (v178 || (OUTLINED_FUNCTION_4_9(0xD000000000000024) & 1) != 0)
                                                                                                                                                                            {
                                                                                                                                                                              v8 = 86;
                                                                                                                                                                            }

                                                                                                                                                                            else
                                                                                                                                                                            {
                                                                                                                                                                              OUTLINED_FUNCTION_5_7();
                                                                                                                                                                              v180 = v7 == 0xD00000000000003BLL && v179 == a1;
                                                                                                                                                                              if (v180 || (OUTLINED_FUNCTION_4_9(0xD00000000000003BLL) & 1) != 0)
                                                                                                                                                                              {
                                                                                                                                                                                v8 = 87;
                                                                                                                                                                              }

                                                                                                                                                                              else
                                                                                                                                                                              {
                                                                                                                                                                                OUTLINED_FUNCTION_5_7();
                                                                                                                                                                                v182 = v7 == 0xD000000000000034 && v181 == a1;
                                                                                                                                                                                if (v182 || (OUTLINED_FUNCTION_4_9(0xD000000000000034) & 1) != 0)
                                                                                                                                                                                {
                                                                                                                                                                                  v8 = 88;
                                                                                                                                                                                }

                                                                                                                                                                                else
                                                                                                                                                                                {
                                                                                                                                                                                  OUTLINED_FUNCTION_0_8();
                                                                                                                                                                                  v184 = v6 && v183 == a1;
                                                                                                                                                                                  if (v184 || (OUTLINED_FUNCTION_4_9(0xD000000000000038) & 1) != 0)
                                                                                                                                                                                  {
                                                                                                                                                                                    v8 = 89;
                                                                                                                                                                                  }

                                                                                                                                                                                  else
                                                                                                                                                                                  {
                                                                                                                                                                                    OUTLINED_FUNCTION_5_7();
                                                                                                                                                                                    v186 = v7 == 0xD000000000000035 && v185 == a1;
                                                                                                                                                                                    if (v186 || (OUTLINED_FUNCTION_4_9(0xD000000000000035) & 1) != 0)
                                                                                                                                                                                    {
                                                                                                                                                                                      v8 = 90;
                                                                                                                                                                                    }

                                                                                                                                                                                    else
                                                                                                                                                                                    {
                                                                                                                                                                                      OUTLINED_FUNCTION_0_8();
                                                                                                                                                                                      v188 = v6 && v187 == a1;
                                                                                                                                                                                      if (v188 || (OUTLINED_FUNCTION_4_9(0xD000000000000038) & 1) != 0)
                                                                                                                                                                                      {
                                                                                                                                                                                        v8 = 91;
                                                                                                                                                                                      }

                                                                                                                                                                                      else
                                                                                                                                                                                      {
                                                                                                                                                                                        OUTLINED_FUNCTION_5_7();
                                                                                                                                                                                        v190 = v7 == 0xD000000000000036 && v189 == a1;
                                                                                                                                                                                        if (v190 || (OUTLINED_FUNCTION_4_9(0xD000000000000036) & 1) != 0)
                                                                                                                                                                                        {
                                                                                                                                                                                          v8 = 92;
                                                                                                                                                                                        }

                                                                                                                                                                                        else
                                                                                                                                                                                        {
                                                                                                                                                                                          OUTLINED_FUNCTION_5_7();
                                                                                                                                                                                          if (v7 == 0xD000000000000036 && v191 == a1)
                                                                                                                                                                                          {
                                                                                                                                                                                            v8 = 93;
                                                                                                                                                                                          }

                                                                                                                                                                                          else
                                                                                                                                                                                          {
                                                                                                                                                                                            v193 = OUTLINED_FUNCTION_4_9(0xD000000000000036);
                                                                                                                                                                                            v8 = 93;
                                                                                                                                                                                            if ((v193 & 1) == 0)
                                                                                                                                                                                            {
                                                                                                                                                                                              v8 = 0;
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

  *a2 = v8;
  *(a2 + 8) = 1;
}

uint64_t OUTLINED_FUNCTION_1_7()
{

  return sub_21B112D04();
}

uint64_t OUTLINED_FUNCTION_4_9(uint64_t a1)
{

  return sub_21B112D04();
}

uint64_t OUTLINED_FUNCTION_6_5(uint64_t a1)
{

  return sub_21B112D04();
}

uint64_t Apple_Parsec_Ondeviceanalytics_AnalyticsReportsGroup.init()@<X0>(void *a1@<X8>)
{
  *a1 = MEMORY[0x277D84F90];
  type metadata accessor for Apple_Parsec_Ondeviceanalytics_AnalyticsReportsGroup(0);
  sub_21B111EB4();
  type metadata accessor for Apple_Parsec_Ondeviceanalytics_ContextDimensions(0);
  OUTLINED_FUNCTION_34_0();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t Apple_Parsec_Ondeviceanalytics_AnalyticsReportsGroup.contextDimensions.setter()
{
  v1 = OUTLINED_FUNCTION_36_0();
  v2 = type metadata accessor for Apple_Parsec_Ondeviceanalytics_AnalyticsReportsGroup(v1);
  sub_21AF99BE0(v0 + *(v2 + 24), &qword_27CD42FB8, &qword_21B114A28);
  OUTLINED_FUNCTION_3_9();
  sub_21AFB6800();
  type metadata accessor for Apple_Parsec_Ondeviceanalytics_ContextDimensions(0);
  OUTLINED_FUNCTION_31_0();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

uint64_t sub_21AFB6800()
{
  OUTLINED_FUNCTION_81();
  v1(0);
  OUTLINED_FUNCTION_4_1();
  v2 = OUTLINED_FUNCTION_52();
  v3(v2);
  return v0;
}

uint64_t Apple_Parsec_Ondeviceanalytics_ContextDimensions.build.setter()
{
  OUTLINED_FUNCTION_99();

  *(v1 + 40) = v2;
  *(v1 + 48) = v0;
  return result;
}

uint64_t Apple_Parsec_Ondeviceanalytics_ContextDimensions.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_36_0();
  type metadata accessor for Apple_Parsec_Ondeviceanalytics_ContextDimensions(v0);
  return OUTLINED_FUNCTION_87();
}

uint64_t Apple_Parsec_Ondeviceanalytics_ContextDimensions.init()@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_29_2();
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = v2;
  type metadata accessor for Apple_Parsec_Ondeviceanalytics_ContextDimensions(0);
  return sub_21B111EB4();
}

uint64_t Apple_Parsec_Ondeviceanalytics_ReportMetadata.recipeVersion.setter()
{
  OUTLINED_FUNCTION_99();

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t Apple_Parsec_Ondeviceanalytics_ReportMetadata.unknownFields.getter()
{
  v0 = OUTLINED_FUNCTION_100();
  type metadata accessor for Apple_Parsec_Ondeviceanalytics_ReportMetadata(v0);
  sub_21B111EC4();
  OUTLINED_FUNCTION_4_1();
  v1 = OUTLINED_FUNCTION_68();

  return v2(v1);
}

uint64_t Apple_Parsec_Ondeviceanalytics_ReportMetadata.unknownFields.setter()
{
  v0 = OUTLINED_FUNCTION_36_0();
  type metadata accessor for Apple_Parsec_Ondeviceanalytics_ReportMetadata(v0);
  sub_21B111EC4();
  OUTLINED_FUNCTION_4_1();
  v1 = OUTLINED_FUNCTION_110();

  return v2(v1);
}

uint64_t Apple_Parsec_Ondeviceanalytics_ReportMetadata.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_36_0();
  type metadata accessor for Apple_Parsec_Ondeviceanalytics_ReportMetadata(v0);
  return OUTLINED_FUNCTION_87();
}

uint64_t Apple_Parsec_Ondeviceanalytics_ReportMetadata.init()@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_29_2();
  type metadata accessor for Apple_Parsec_Ondeviceanalytics_ReportMetadata(0);
  a1[5] = 0;
  a1[6] = 0;
  a1[4] = 0;
  return sub_21B111EB4();
}

uint64_t sub_21AFB6C9C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD42F90, &unk_21B115FC0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t Apple_Parsec_Ondeviceanalytics_AnalyticsReport.spotlightFeature.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_90();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_25(v5);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_89();
  type metadata accessor for Apple_Parsec_Ondeviceanalytics_AnalyticsReport.OneOf_Report(0);
  OUTLINED_FUNCTION_26_2(v1);
  if (v7)
  {
    sub_21AF99BE0(v1, &qword_27CD42F90, &unk_21B115FC0);
  }

  else
  {
    OUTLINED_FUNCTION_105();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload != 1)
    {
      OUTLINED_FUNCTION_16_5();
      return sub_21AFB6800();
    }

    sub_21AFB7024();
  }

  sub_21B111EB4();
  v9 = *(type metadata accessor for Apple_Parsec_Ondeviceanalytics_SpotlightFeatureReport(0) + 20);
  if (qword_27CD424D8 != -1)
  {
    OUTLINED_FUNCTION_69(&qword_27CD424D8);
  }

  *(a1 + v9) = qword_27CD43168;
}

void Apple_Parsec_Ondeviceanalytics_AnalyticsReport.spotlightFeature.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_115();
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  OUTLINED_FUNCTION_44_1(v3);
  v4 = OUTLINED_FUNCTION_79();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_25(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_43_1(v8);
  v10 = type metadata accessor for Apple_Parsec_Ondeviceanalytics_SpotlightFeatureReport(v9);
  OUTLINED_FUNCTION_4_1();
  v12 = *(v11 + 64);
  v2[2] = __swift_coroFrameAllocStub(v12);
  v13 = __swift_coroFrameAllocStub(v12);
  v2[3] = v13;
  v14 = OUTLINED_FUNCTION_48_1();
  OUTLINED_FUNCTION_101(v14);
  v2[4] = type metadata accessor for Apple_Parsec_Ondeviceanalytics_AnalyticsReport.OneOf_Report(0);
  OUTLINED_FUNCTION_12_5();
  if (v15)
  {
    sub_21AF99BE0(v1, &qword_27CD42F90, &unk_21B115FC0);
  }

  else
  {
    OUTLINED_FUNCTION_90();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload != 1)
    {
      OUTLINED_FUNCTION_16_5();
      OUTLINED_FUNCTION_75();
      sub_21AFB6800();
      goto LABEL_10;
    }

    sub_21AFB7024();
  }

  sub_21B111EB4();
  v17 = *(v10 + 20);
  if (qword_27CD424D8 != -1)
  {
    OUTLINED_FUNCTION_69(&qword_27CD424D8);
  }

  *&v13[v17] = qword_27CD43168;

LABEL_10:
  OUTLINED_FUNCTION_114();
}

uint64_t sub_21AFB7024()
{
  v1 = OUTLINED_FUNCTION_36_0();
  v2(v1);
  OUTLINED_FUNCTION_4_1();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t Apple_Parsec_Ondeviceanalytics_AnalyticsReport.spotlightCarry.getter@<X0>(uint64_t a2@<X8>)
{
  v4 = OUTLINED_FUNCTION_90();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_25(v6);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_89();
  type metadata accessor for Apple_Parsec_Ondeviceanalytics_AnalyticsReport.OneOf_Report(0);
  OUTLINED_FUNCTION_26_2(v2);
  if (v8)
  {
    sub_21AF99BE0(v2, &qword_27CD42F90, &unk_21B115FC0);
  }

  else
  {
    OUTLINED_FUNCTION_105();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 1)
    {
      OUTLINED_FUNCTION_14_5();
      return sub_21AFB6800();
    }

    sub_21AFB7024();
  }

  *a2 = 0;
  *(a2 + 8) = 1;
  *(a2 + 16) = 0;
  *(a2 + 24) = -258;
  *(a2 + 28) = 0;
  type metadata accessor for Apple_Parsec_Ondeviceanalytics_SpotlightCarryReport(0);
  return sub_21B111EB4();
}

uint64_t sub_21AFB7194(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(uint64_t))
{
  v9 = OUTLINED_FUNCTION_106();
  v11 = v10(v9);
  OUTLINED_FUNCTION_25(v11);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_73();
  OUTLINED_FUNCTION_90();
  sub_21AFB7598();
  return a7(v7);
}

uint64_t sub_21AFB723C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_21AF99BE0(v3, &qword_27CD42F90, &unk_21B115FC0);
  OUTLINED_FUNCTION_75();
  sub_21AFB6800();
  v4 = type metadata accessor for Apple_Parsec_Ondeviceanalytics_AnalyticsReport.OneOf_Report(0);
  OUTLINED_FUNCTION_105();
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_31_0();

  return __swift_storeEnumTagSinglePayload(v5, v6, v7, v4);
}

void Apple_Parsec_Ondeviceanalytics_AnalyticsReport.spotlightCarry.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_115();
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  OUTLINED_FUNCTION_44_1(v3);
  v4 = OUTLINED_FUNCTION_79();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_25(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_43_1(v8);
  type metadata accessor for Apple_Parsec_Ondeviceanalytics_SpotlightCarryReport(v9);
  OUTLINED_FUNCTION_4_1();
  v11 = *(v10 + 64);
  v2[2] = __swift_coroFrameAllocStub(v11);
  v12 = __swift_coroFrameAllocStub(v11);
  v2[3] = v12;
  v13 = OUTLINED_FUNCTION_48_1();
  OUTLINED_FUNCTION_101(v13);
  v2[4] = type metadata accessor for Apple_Parsec_Ondeviceanalytics_AnalyticsReport.OneOf_Report(0);
  OUTLINED_FUNCTION_12_5();
  if (v14)
  {
    sub_21AF99BE0(v1, &qword_27CD42F90, &unk_21B115FC0);
LABEL_7:
    *v12 = 0;
    v12[8] = 1;
    *(v12 + 2) = 0;
    *(v12 + 12) = -258;
    *(v12 + 7) = 0;
    sub_21B111EB4();
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_90();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 1)
  {
    sub_21AFB7024();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_14_5();
  OUTLINED_FUNCTION_75();
  sub_21AFB6800();
LABEL_8:
  OUTLINED_FUNCTION_114();
}

void sub_21AFB7478(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_76();
  v7 = (*v6)[3];
  v8 = (*v6)[4];
  v9 = (*v6)[1];
  v10 = (*v6)[2];
  v11 = **v6;
  if (v12)
  {
    OUTLINED_FUNCTION_84();
    sub_21AFB7598();
    sub_21AF99BE0(v11, &qword_27CD42F90, &unk_21B115FC0);
    sub_21AFB6800();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_31_0();
    __swift_storeEnumTagSinglePayload(v13, v14, v15, v8);
    sub_21AFB7024();
  }

  else
  {
    sub_21AF99BE0(**v6, &qword_27CD42F90, &unk_21B115FC0);
    OUTLINED_FUNCTION_113();
    sub_21AFB6800();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_31_0();
    __swift_storeEnumTagSinglePayload(v16, v17, v18, v8);
  }

  free(v7);
  free(v10);
  free(v9);
  OUTLINED_FUNCTION_77();

  free(v19);
}

uint64_t sub_21AFB7598()
{
  OUTLINED_FUNCTION_81();
  v1(0);
  OUTLINED_FUNCTION_4_1();
  v2 = OUTLINED_FUNCTION_52();
  v3(v2);
  return v0;
}

uint64_t Apple_Parsec_Ondeviceanalytics_AnalyticsReport.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_36_0();
  type metadata accessor for Apple_Parsec_Ondeviceanalytics_AnalyticsReport(v0);
  return OUTLINED_FUNCTION_87();
}

void static Apple_Parsec_Ondeviceanalytics_AnalyticsReport.OneOf_Report.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  OUTLINED_FUNCTION_76();
  v7 = type metadata accessor for Apple_Parsec_Ondeviceanalytics_SpotlightCarryReport(0);
  v8 = OUTLINED_FUNCTION_25(v7);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_2();
  v11 = v10 - v9;
  v12 = type metadata accessor for Apple_Parsec_Ondeviceanalytics_SpotlightFeatureReport(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_2();
  v34 = v15 - v14;
  type metadata accessor for Apple_Parsec_Ondeviceanalytics_AnalyticsReport.OneOf_Report(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_1_1();
  v19 = v17 - v18;
  MEMORY[0x28223BE20](v20);
  v22 = &v33 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD432F8, &qword_21B115FD0);
  OUTLINED_FUNCTION_25(v23);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v24);
  v26 = &v33 - v25;
  sub_21AFB7598();
  sub_21AFB7598();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_50_1();
    sub_21AFB7598();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      OUTLINED_FUNCTION_14_5();
      sub_21AFB6800();
      static Apple_Parsec_Ondeviceanalytics_SpotlightCarryReport.== infix(_:_:)(v19, v11);
      sub_21AFB7024();
      sub_21AFB7024();
      OUTLINED_FUNCTION_6_6();
      sub_21AFB7024();
      goto LABEL_10;
    }

LABEL_5:
    sub_21AFB7024();
    sub_21AF99BE0(v26, &qword_27CD432F8, &qword_21B115FD0);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_50_1();
  sub_21AFB7598();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    goto LABEL_5;
  }

  OUTLINED_FUNCTION_16_5();
  v27 = v34;
  sub_21AFB6800();
  v28 = *(v12 + 20);
  v29 = *&v22[v28];
  v30 = *(v27 + v28);
  if (v29 == v30 || sub_21AFB2DBC(v29, v30))
  {
    sub_21B111EC4();
    OUTLINED_FUNCTION_0_9();
    sub_21AFB94F8(v31, v32, MEMORY[0x277D216D0]);
    OUTLINED_FUNCTION_84();
    sub_21B1123C4();
  }

  OUTLINED_FUNCTION_55();
  sub_21AFB7024();
  OUTLINED_FUNCTION_75();
  sub_21AFB7024();
  OUTLINED_FUNCTION_6_6();
  sub_21AFB7024();
LABEL_10:
  OUTLINED_FUNCTION_77();
}

uint64_t Apple_Parsec_Ondeviceanalytics_AnalyticsReport.init()()
{
  v0 = OUTLINED_FUNCTION_100();
  type metadata accessor for Apple_Parsec_Ondeviceanalytics_AnalyticsReport.OneOf_Report(v0);
  OUTLINED_FUNCTION_34_0();
  __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
  type metadata accessor for Apple_Parsec_Ondeviceanalytics_AnalyticsReport(0);
  return sub_21B111EB4();
}

uint64_t Apple_Parsec_Ondeviceanalytics_AnalyticsReportsGroup.contextDimensions.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_111();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_25(v5);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v6);
  v7 = OUTLINED_FUNCTION_18_2();
  v8 = type metadata accessor for Apple_Parsec_Ondeviceanalytics_AnalyticsReportsGroup(v7);
  v9 = OUTLINED_FUNCTION_65(*(v8 + 24));
  sub_21AFC1EF8(v9);
  type metadata accessor for Apple_Parsec_Ondeviceanalytics_ContextDimensions(0);
  OUTLINED_FUNCTION_26_2(v1);
  if (v10)
  {
    OUTLINED_FUNCTION_29_2();
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
    *(a1 + 48) = v11;
    sub_21B111EB4();
    result = OUTLINED_FUNCTION_26_2(v1);
    if (!v10)
    {
      return sub_21AF99BE0(v1, &qword_27CD42FB8, &qword_21B114A28);
    }
  }

  else
  {
    OUTLINED_FUNCTION_3_9();
    OUTLINED_FUNCTION_60();
    return sub_21AFB6800();
  }

  return result;
}

void Apple_Parsec_Ondeviceanalytics_AnalyticsReportsGroup.contextDimensions.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_115();
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  OUTLINED_FUNCTION_44_1(v3);
  v4 = OUTLINED_FUNCTION_79();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_25(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_43_1(v8);
  *(v2 + 16) = type metadata accessor for Apple_Parsec_Ondeviceanalytics_ContextDimensions(v9);
  OUTLINED_FUNCTION_4_1();
  v11 = *(v10 + 64);
  *(v2 + 24) = __swift_coroFrameAllocStub(v11);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_93(v12);
  v14 = type metadata accessor for Apple_Parsec_Ondeviceanalytics_AnalyticsReportsGroup(v13);
  OUTLINED_FUNCTION_63(*(v14 + 24));
  OUTLINED_FUNCTION_12_5();
  if (v15)
  {
    OUTLINED_FUNCTION_92();
    *(v11 + 32) = 0;
    *(v11 + 40) = 0;
    *(v11 + 48) = v16;
    sub_21B111EB4();
    OUTLINED_FUNCTION_12_5();
    if (!v15)
    {
      sub_21AF99BE0(v1, &qword_27CD42FB8, &qword_21B114A28);
    }
  }

  else
  {
    OUTLINED_FUNCTION_3_9();
    OUTLINED_FUNCTION_84();
    sub_21AFB6800();
  }

  OUTLINED_FUNCTION_114();
}

void sub_21AFB7C40(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_115();
  OUTLINED_FUNCTION_47_1();
  if (v7)
  {
    OUTLINED_FUNCTION_75();
    sub_21AFB7598();
    sub_21AF99BE0(v6 + v5, &qword_27CD42FB8, &qword_21B114A28);
    OUTLINED_FUNCTION_3_9();
    sub_21AFB6800();
    OUTLINED_FUNCTION_38_1();
    OUTLINED_FUNCTION_53();
    sub_21AFB7024();
  }

  else
  {
    sub_21AF99BE0(v6 + v5, &qword_27CD42FB8, &qword_21B114A28);
    OUTLINED_FUNCTION_3_9();
    sub_21AFB6800();
    OUTLINED_FUNCTION_38_1();
  }

  free(v4);
  free(v2);
  free(v3);
  OUTLINED_FUNCTION_114();

  free(v8);
}

uint64_t Apple_Parsec_Ondeviceanalytics_AnalyticsReportsGroup.hasContextDimensions.getter()
{
  v0 = OUTLINED_FUNCTION_109();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_25(v2);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v3);
  v4 = OUTLINED_FUNCTION_18_2();
  v5 = type metadata accessor for Apple_Parsec_Ondeviceanalytics_AnalyticsReportsGroup(v4);
  v6 = OUTLINED_FUNCTION_65(*(v5 + 24));
  sub_21AFC1EF8(v6);
  type metadata accessor for Apple_Parsec_Ondeviceanalytics_ContextDimensions(0);
  v7 = OUTLINED_FUNCTION_41_1();
  OUTLINED_FUNCTION_37_1(v7, v8, v9);
  if (v10)
  {
    v11 = 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = OUTLINED_FUNCTION_60();
  sub_21AF99BE0(v12, v13, &qword_21B114A28);
  return v11;
}

Swift::Void __swiftcall Apple_Parsec_Ondeviceanalytics_AnalyticsReportsGroup.clearContextDimensions()()
{
  v1 = type metadata accessor for Apple_Parsec_Ondeviceanalytics_AnalyticsReportsGroup(0);
  sub_21AF99BE0(v0 + *(v1 + 24), &qword_27CD42FB8, &qword_21B114A28);
  type metadata accessor for Apple_Parsec_Ondeviceanalytics_ContextDimensions(0);
  v2 = OUTLINED_FUNCTION_70();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t Apple_Parsec_Ondeviceanalytics_AnalyticsReportsGroup.reports.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t sub_21AFB7E94()
{
  v0 = OUTLINED_FUNCTION_100();
  v1(v0);
  sub_21B111EC4();
  OUTLINED_FUNCTION_4_1();
  v2 = OUTLINED_FUNCTION_68();

  return v3(v2);
}

uint64_t sub_21AFB7F1C()
{
  v0 = OUTLINED_FUNCTION_36_0();
  v1(v0);
  sub_21B111EC4();
  OUTLINED_FUNCTION_4_1();
  v2 = OUTLINED_FUNCTION_110();

  return v3(v2);
}

uint64_t Apple_Parsec_Ondeviceanalytics_AnalyticsReportsGroup.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_36_0();
  type metadata accessor for Apple_Parsec_Ondeviceanalytics_AnalyticsReportsGroup(v0);
  return OUTLINED_FUNCTION_87();
}

uint64_t Apple_Parsec_Ondeviceanalytics_GlobalDimensions.federatedIdentifier.setter()
{
  OUTLINED_FUNCTION_99();

  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  return result;
}

uint64_t Apple_Parsec_Ondeviceanalytics_GlobalDimensions.buildAtAggregationTime.setter()
{
  OUTLINED_FUNCTION_99();

  *(v1 + 48) = v2;
  *(v1 + 56) = v0;
  return result;
}

uint64_t sub_21AFB810C()
{
  v0 = OUTLINED_FUNCTION_100();
  v1(v0);
  sub_21B111EC4();
  OUTLINED_FUNCTION_4_1();
  v2 = OUTLINED_FUNCTION_68();

  return v3(v2);
}

uint64_t sub_21AFB81B4()
{
  v0 = OUTLINED_FUNCTION_36_0();
  v1(v0);
  sub_21B111EC4();
  OUTLINED_FUNCTION_4_1();
  v2 = OUTLINED_FUNCTION_110();

  return v3(v2);
}

uint64_t Apple_Parsec_Ondeviceanalytics_GlobalDimensions.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_36_0();
  type metadata accessor for Apple_Parsec_Ondeviceanalytics_GlobalDimensions(v0);
  return OUTLINED_FUNCTION_87();
}

uint64_t Apple_Parsec_Ondeviceanalytics_GlobalDimensions.init()@<X0>(void *a2@<X8>)
{
  OUTLINED_FUNCTION_29_2();
  a2[4] = 0;
  a2[5] = v3;
  a2[6] = 0;
  a2[7] = v3;
  type metadata accessor for Apple_Parsec_Ondeviceanalytics_GlobalDimensions(0);
  return sub_21B111EB4();
}

uint64_t Apple_Parsec_Ondeviceanalytics_AnalyticsReportsUploadEvent.metadata.getter@<X0>(void *a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_111();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_25(v5);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v6);
  v7 = OUTLINED_FUNCTION_18_2();
  v8 = type metadata accessor for Apple_Parsec_Ondeviceanalytics_AnalyticsReportsUploadEvent(v7);
  v9 = OUTLINED_FUNCTION_65(*(v8 + 28));
  sub_21AFC1EF8(v9);
  type metadata accessor for Apple_Parsec_Ondeviceanalytics_ReportMetadata(0);
  OUTLINED_FUNCTION_26_2(v1);
  if (v10)
  {
    OUTLINED_FUNCTION_29_2();
    a1[5] = 0;
    a1[6] = 0;
    a1[4] = 0;
    sub_21B111EB4();
    result = OUTLINED_FUNCTION_26_2(v1);
    if (!v10)
    {
      return sub_21AF99BE0(v1, &qword_27CD43300, &qword_21B115FD8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_5_8();
    OUTLINED_FUNCTION_60();
    return sub_21AFB6800();
  }

  return result;
}

uint64_t Apple_Parsec_Ondeviceanalytics_AnalyticsReportsUploadEvent.metadata.setter()
{
  v1 = OUTLINED_FUNCTION_36_0();
  v2 = type metadata accessor for Apple_Parsec_Ondeviceanalytics_AnalyticsReportsUploadEvent(v1);
  sub_21AF99BE0(v0 + *(v2 + 28), &qword_27CD43300, &qword_21B115FD8);
  OUTLINED_FUNCTION_5_8();
  sub_21AFB6800();
  type metadata accessor for Apple_Parsec_Ondeviceanalytics_ReportMetadata(0);
  OUTLINED_FUNCTION_31_0();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Apple_Parsec_Ondeviceanalytics_AnalyticsReportsUploadEvent.metadata.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_115();
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  OUTLINED_FUNCTION_44_1(v3);
  v4 = OUTLINED_FUNCTION_79();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_25(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_43_1(v8);
  *(v2 + 16) = type metadata accessor for Apple_Parsec_Ondeviceanalytics_ReportMetadata(v9);
  OUTLINED_FUNCTION_4_1();
  v11 = *(v10 + 64);
  *(v2 + 24) = __swift_coroFrameAllocStub(v11);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_93(v12);
  v14 = type metadata accessor for Apple_Parsec_Ondeviceanalytics_AnalyticsReportsUploadEvent(v13);
  OUTLINED_FUNCTION_63(*(v14 + 28));
  OUTLINED_FUNCTION_12_5();
  if (v15)
  {
    OUTLINED_FUNCTION_92();
    v11[5] = 0;
    v11[6] = 0;
    v11[4] = 0;
    sub_21B111EB4();
    OUTLINED_FUNCTION_12_5();
    if (!v15)
    {
      sub_21AF99BE0(v1, &qword_27CD43300, &qword_21B115FD8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_5_8();
    OUTLINED_FUNCTION_84();
    sub_21AFB6800();
  }

  OUTLINED_FUNCTION_114();
}

void sub_21AFB8558(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_115();
  OUTLINED_FUNCTION_47_1();
  if (v7)
  {
    OUTLINED_FUNCTION_75();
    sub_21AFB7598();
    sub_21AF99BE0(v6 + v5, &qword_27CD43300, &qword_21B115FD8);
    OUTLINED_FUNCTION_5_8();
    sub_21AFB6800();
    OUTLINED_FUNCTION_38_1();
    OUTLINED_FUNCTION_58();
    sub_21AFB7024();
  }

  else
  {
    sub_21AF99BE0(v6 + v5, &qword_27CD43300, &qword_21B115FD8);
    OUTLINED_FUNCTION_5_8();
    sub_21AFB6800();
    OUTLINED_FUNCTION_38_1();
  }

  free(v4);
  free(v2);
  free(v3);
  OUTLINED_FUNCTION_114();

  free(v8);
}

uint64_t Apple_Parsec_Ondeviceanalytics_AnalyticsReportsUploadEvent.hasMetadata.getter()
{
  v0 = OUTLINED_FUNCTION_109();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_25(v2);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v3);
  v4 = OUTLINED_FUNCTION_18_2();
  v5 = type metadata accessor for Apple_Parsec_Ondeviceanalytics_AnalyticsReportsUploadEvent(v4);
  v6 = OUTLINED_FUNCTION_65(*(v5 + 28));
  sub_21AFC1EF8(v6);
  type metadata accessor for Apple_Parsec_Ondeviceanalytics_ReportMetadata(0);
  v7 = OUTLINED_FUNCTION_41_1();
  OUTLINED_FUNCTION_37_1(v7, v8, v9);
  if (v10)
  {
    v11 = 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = OUTLINED_FUNCTION_60();
  sub_21AF99BE0(v12, v13, &qword_21B115FD8);
  return v11;
}

Swift::Void __swiftcall Apple_Parsec_Ondeviceanalytics_AnalyticsReportsUploadEvent.clearMetadata()()
{
  v1 = type metadata accessor for Apple_Parsec_Ondeviceanalytics_AnalyticsReportsUploadEvent(0);
  sub_21AF99BE0(v0 + *(v1 + 28), &qword_27CD43300, &qword_21B115FD8);
  type metadata accessor for Apple_Parsec_Ondeviceanalytics_ReportMetadata(0);
  v2 = OUTLINED_FUNCTION_70();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t Apple_Parsec_Ondeviceanalytics_AnalyticsReportsUploadEvent.uploadEventUuid.setter()
{
  OUTLINED_FUNCTION_99();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t Apple_Parsec_Ondeviceanalytics_AnalyticsReportsUploadEvent.globalDimensions.getter@<X0>(void *a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_111();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_25(v5);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v6);
  v7 = OUTLINED_FUNCTION_18_2();
  v8 = type metadata accessor for Apple_Parsec_Ondeviceanalytics_AnalyticsReportsUploadEvent(v7);
  v9 = OUTLINED_FUNCTION_65(*(v8 + 32));
  sub_21AFC1EF8(v9);
  type metadata accessor for Apple_Parsec_Ondeviceanalytics_GlobalDimensions(0);
  OUTLINED_FUNCTION_26_2(v1);
  if (v10)
  {
    OUTLINED_FUNCTION_29_2();
    a1[4] = 0;
    a1[5] = v11;
    a1[6] = 0;
    a1[7] = v11;
    sub_21B111EB4();
    result = OUTLINED_FUNCTION_26_2(v1);
    if (!v10)
    {
      return sub_21AF99BE0(v1, &qword_27CD43308, &qword_21B115FE0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_4_10();
    OUTLINED_FUNCTION_60();
    return sub_21AFB6800();
  }

  return result;
}

uint64_t Apple_Parsec_Ondeviceanalytics_AnalyticsReportsUploadEvent.globalDimensions.setter()
{
  v1 = OUTLINED_FUNCTION_36_0();
  v2 = type metadata accessor for Apple_Parsec_Ondeviceanalytics_AnalyticsReportsUploadEvent(v1);
  sub_21AF99BE0(v0 + *(v2 + 32), &qword_27CD43308, &qword_21B115FE0);
  OUTLINED_FUNCTION_4_10();
  sub_21AFB6800();
  type metadata accessor for Apple_Parsec_Ondeviceanalytics_GlobalDimensions(0);
  OUTLINED_FUNCTION_31_0();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Apple_Parsec_Ondeviceanalytics_AnalyticsReportsUploadEvent.globalDimensions.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_115();
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  OUTLINED_FUNCTION_44_1(v3);
  v4 = OUTLINED_FUNCTION_79();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_25(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_43_1(v8);
  *(v2 + 16) = type metadata accessor for Apple_Parsec_Ondeviceanalytics_GlobalDimensions(v9);
  OUTLINED_FUNCTION_4_1();
  v11 = *(v10 + 64);
  *(v2 + 24) = __swift_coroFrameAllocStub(v11);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_93(v12);
  v14 = type metadata accessor for Apple_Parsec_Ondeviceanalytics_AnalyticsReportsUploadEvent(v13);
  OUTLINED_FUNCTION_63(*(v14 + 32));
  OUTLINED_FUNCTION_12_5();
  if (v15)
  {
    OUTLINED_FUNCTION_92();
    v11[4] = 0;
    v11[5] = v16;
    v11[6] = 0;
    v11[7] = v16;
    sub_21B111EB4();
    OUTLINED_FUNCTION_12_5();
    if (!v15)
    {
      sub_21AF99BE0(v1, &qword_27CD43308, &qword_21B115FE0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_4_10();
    OUTLINED_FUNCTION_84();
    sub_21AFB6800();
  }

  OUTLINED_FUNCTION_114();
}

void sub_21AFB8A54(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_115();
  OUTLINED_FUNCTION_47_1();
  if (v7)
  {
    OUTLINED_FUNCTION_75();
    sub_21AFB7598();
    sub_21AF99BE0(v6 + v5, &qword_27CD43308, &qword_21B115FE0);
    OUTLINED_FUNCTION_4_10();
    sub_21AFB6800();
    OUTLINED_FUNCTION_38_1();
    OUTLINED_FUNCTION_57();
    sub_21AFB7024();
  }

  else
  {
    sub_21AF99BE0(v6 + v5, &qword_27CD43308, &qword_21B115FE0);
    OUTLINED_FUNCTION_4_10();
    sub_21AFB6800();
    OUTLINED_FUNCTION_38_1();
  }

  free(v4);
  free(v2);
  free(v3);
  OUTLINED_FUNCTION_114();

  free(v8);
}

uint64_t Apple_Parsec_Ondeviceanalytics_AnalyticsReportsUploadEvent.hasGlobalDimensions.getter()
{
  v0 = OUTLINED_FUNCTION_109();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_25(v2);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v3);
  v4 = OUTLINED_FUNCTION_18_2();
  v5 = type metadata accessor for Apple_Parsec_Ondeviceanalytics_AnalyticsReportsUploadEvent(v4);
  v6 = OUTLINED_FUNCTION_65(*(v5 + 32));
  sub_21AFC1EF8(v6);
  type metadata accessor for Apple_Parsec_Ondeviceanalytics_GlobalDimensions(0);
  v7 = OUTLINED_FUNCTION_41_1();
  OUTLINED_FUNCTION_37_1(v7, v8, v9);
  if (v10)
  {
    v11 = 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = OUTLINED_FUNCTION_60();
  sub_21AF99BE0(v12, v13, &qword_21B115FE0);
  return v11;
}

Swift::Void __swiftcall Apple_Parsec_Ondeviceanalytics_AnalyticsReportsUploadEvent.clearGlobalDimensions()()
{
  v1 = type metadata accessor for Apple_Parsec_Ondeviceanalytics_AnalyticsReportsUploadEvent(0);
  sub_21AF99BE0(v0 + *(v1 + 32), &qword_27CD43308, &qword_21B115FE0);
  type metadata accessor for Apple_Parsec_Ondeviceanalytics_GlobalDimensions(0);
  v2 = OUTLINED_FUNCTION_70();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t Apple_Parsec_Ondeviceanalytics_AnalyticsReportsUploadEvent.reportsGroups.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t Apple_Parsec_Ondeviceanalytics_AnalyticsReportsUploadEvent.unknownFields.getter()
{
  v0 = OUTLINED_FUNCTION_100();
  type metadata accessor for Apple_Parsec_Ondeviceanalytics_AnalyticsReportsUploadEvent(v0);
  sub_21B111EC4();
  OUTLINED_FUNCTION_4_1();
  v1 = OUTLINED_FUNCTION_68();

  return v2(v1);
}

uint64_t Apple_Parsec_Ondeviceanalytics_AnalyticsReportsUploadEvent.unknownFields.setter()
{
  v0 = OUTLINED_FUNCTION_36_0();
  type metadata accessor for Apple_Parsec_Ondeviceanalytics_AnalyticsReportsUploadEvent(v0);
  sub_21B111EC4();
  OUTLINED_FUNCTION_4_1();
  v1 = OUTLINED_FUNCTION_110();

  return v2(v1);
}

uint64_t Apple_Parsec_Ondeviceanalytics_AnalyticsReportsUploadEvent.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_36_0();
  type metadata accessor for Apple_Parsec_Ondeviceanalytics_AnalyticsReportsUploadEvent(v0);
  return OUTLINED_FUNCTION_87();
}

uint64_t Apple_Parsec_Ondeviceanalytics_AnalyticsReportsUploadEvent.init()@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  a1[2] = MEMORY[0x277D84F90];
  type metadata accessor for Apple_Parsec_Ondeviceanalytics_AnalyticsReportsUploadEvent(0);
  sub_21B111EB4();
  type metadata accessor for Apple_Parsec_Ondeviceanalytics_ReportMetadata(0);
  OUTLINED_FUNCTION_34_0();
  __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
  type metadata accessor for Apple_Parsec_Ondeviceanalytics_GlobalDimensions(0);
  OUTLINED_FUNCTION_34_0();

  return __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
}

uint64_t sub_21AFB8E4C()
{
  v0 = sub_21B112254();
  __swift_allocate_value_buffer(v0, qword_27CD43268);
  __swift_project_value_buffer(v0, qword_27CD43268);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43128, &unk_21B116AD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43130, &unk_21B115090) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_21B113D80;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "locale";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_21B112234();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "country";
  *(v10 + 8) = 7;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "du_enabled";
  *(v12 + 1) = 10;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "build";
  *(v14 + 1) = 5;
  v14[16] = 2;
  v9();
  return sub_21B112244();
}

uint64_t Apple_Parsec_Ondeviceanalytics_ContextDimensions.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_17_4();
  while (1)
  {
    OUTLINED_FUNCTION_48_1();
    result = sub_21B111F64();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
      case 2:
      case 4:
        OUTLINED_FUNCTION_49_1();
        sub_21B112074();
        break;
      case 3:
        OUTLINED_FUNCTION_49_1();
        sub_21B111F94();
        break;
      default:
        continue;
    }
  }
}

uint64_t Apple_Parsec_Ondeviceanalytics_ContextDimensions.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_24_2();
  OUTLINED_FUNCTION_10_4();
  if (!v4 || (result = OUTLINED_FUNCTION_23_2(v2, v3, 1), !v0))
  {
    OUTLINED_FUNCTION_10_4();
    if (!v8 || (result = OUTLINED_FUNCTION_23_2(v6, v7, 2), !v0))
    {
      if (*(v1 + 32) != 1 || (OUTLINED_FUNCTION_36_1(), result = sub_21B112164(), !v0))
      {
        OUTLINED_FUNCTION_10_4();
        if (!v11 || (result = OUTLINED_FUNCTION_23_2(v9, v10, 4), !v0))
        {
          type metadata accessor for Apple_Parsec_Ondeviceanalytics_ContextDimensions(0);
          return OUTLINED_FUNCTION_27_2();
        }
      }
    }
  }

  return result;
}

uint64_t static Apple_Parsec_Ondeviceanalytics_ContextDimensions.== infix(_:_:)(uint64_t a1)
{
  OUTLINED_FUNCTION_30_1(a1);
  v5 = v5 && v3 == v4;
  if (!v5 && (sub_21B112D04() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_91();
  v8 = v5 && v6 == v7;
  if (!v8 && (sub_21B112D04() & 1) == 0)
  {
    return 0;
  }

  if (*(v2 + 32) != *(v1 + 32))
  {
    return 0;
  }

  v10 = *(v2 + 40) == *(v1 + 40) && *(v2 + 48) == *(v1 + 48);
  if (!v10 && (sub_21B112D04() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for Apple_Parsec_Ondeviceanalytics_ContextDimensions(0);
  sub_21B111EC4();
  OUTLINED_FUNCTION_0_9();
  v13 = sub_21AFB94F8(v11, v12, MEMORY[0x277D216D0]);
  return OUTLINED_FUNCTION_40_1(v13) & 1;
}

uint64_t sub_21AFB938C(uint64_t a1, uint64_t a2)
{
  v4 = sub_21AFB94F8(&qword_27CD434B0, type metadata accessor for Apple_Parsec_Ondeviceanalytics_ContextDimensions, &protocol conformance descriptor for Apple_Parsec_Ondeviceanalytics_ContextDimensions);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_21AFB940C(uint64_t a1)
{
  v2 = sub_21AFB94F8(&qword_27CD43370, type metadata accessor for Apple_Parsec_Ondeviceanalytics_ContextDimensions, &protocol conformance descriptor for Apple_Parsec_Ondeviceanalytics_ContextDimensions);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_21AFB947C(uint64_t a1, uint64_t a2)
{
  sub_21AFB94F8(&qword_27CD43370, type metadata accessor for Apple_Parsec_Ondeviceanalytics_ContextDimensions, &protocol conformance descriptor for Apple_Parsec_Ondeviceanalytics_ContextDimensions);

  return sub_21B112114();
}

uint64_t sub_21AFB94F8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_21AFB955C()
{
  v0 = sub_21B112254();
  __swift_allocate_value_buffer(v0, qword_27CD43280);
  __swift_project_value_buffer(v0, qword_27CD43280);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43128, &unk_21B116AD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43130, &unk_21B115090) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_21B115FB0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "recipe_identifier";
  *(v6 + 8) = 17;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21888];
  v8 = sub_21B112234();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "recipe_version";
  *(v10 + 8) = 14;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "aggregation_window_end_in_days_since_1970";
  *(v12 + 1) = 41;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "generation_ts_in_seconds_since_1970";
  *(v14 + 1) = 35;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "generation_duration_in_ms";
  *(v16 + 1) = 25;
  v16[16] = 2;
  v9();
  return sub_21B112244();
}

uint64_t Apple_Parsec_Ondeviceanalytics_ReportMetadata.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_17_4();
  while (1)
  {
    OUTLINED_FUNCTION_48_1();
    result = sub_21B111F64();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
      case 2:
        OUTLINED_FUNCTION_49_1();
        sub_21B112074();
        break;
      case 3:
      case 4:
      case 5:
        OUTLINED_FUNCTION_49_1();
        sub_21B112094();
        break;
      default:
        continue;
    }
  }
}

uint64_t Apple_Parsec_Ondeviceanalytics_ReportMetadata.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_24_2();
  OUTLINED_FUNCTION_10_4();
  if (!v4 || (result = OUTLINED_FUNCTION_23_2(v2, v3, 1), !v0))
  {
    OUTLINED_FUNCTION_10_4();
    if (!v8 || (result = OUTLINED_FUNCTION_23_2(v6, v7, 2), !v0))
    {
      if (!v1[4] || (OUTLINED_FUNCTION_36_1(), result = sub_21B112204(), !v0))
      {
        if (!v1[5] || (OUTLINED_FUNCTION_36_1(), result = sub_21B112204(), !v0))
        {
          if (!v1[6] || (OUTLINED_FUNCTION_36_1(), result = sub_21B112204(), !v0))
          {
            type metadata accessor for Apple_Parsec_Ondeviceanalytics_ReportMetadata(0);
            return OUTLINED_FUNCTION_27_2();
          }
        }
      }
    }
  }

  return result;
}

uint64_t static Apple_Parsec_Ondeviceanalytics_ReportMetadata.== infix(_:_:)(uint64_t a1)
{
  OUTLINED_FUNCTION_30_1(a1);
  v5 = v5 && v3 == v4;
  if (!v5 && (sub_21B112D04() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_91();
  v8 = v5 && v6 == v7;
  if (!v8 && (sub_21B112D04() & 1) == 0 || v2[4] != v1[4] || v2[5] != v1[5] || v2[6] != v1[6])
  {
    return 0;
  }

  type metadata accessor for Apple_Parsec_Ondeviceanalytics_ReportMetadata(0);
  sub_21B111EC4();
  OUTLINED_FUNCTION_0_9();
  v11 = sub_21AFB94F8(v9, v10, MEMORY[0x277D216D0]);
  return OUTLINED_FUNCTION_40_1(v11) & 1;
}

uint64_t sub_21AFB9B14(uint64_t a1, uint64_t a2)
{
  v4 = sub_21AFB94F8(&qword_27CD434A8, type metadata accessor for Apple_Parsec_Ondeviceanalytics_ReportMetadata, &protocol conformance descriptor for Apple_Parsec_Ondeviceanalytics_ReportMetadata);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_21AFB9B94(uint64_t a1)
{
  v2 = sub_21AFB94F8(&qword_27CD43388, type metadata accessor for Apple_Parsec_Ondeviceanalytics_ReportMetadata, &protocol conformance descriptor for Apple_Parsec_Ondeviceanalytics_ReportMetadata);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_21AFB9C04(uint64_t a1, uint64_t a2)
{
  sub_21AFB94F8(&qword_27CD43388, type metadata accessor for Apple_Parsec_Ondeviceanalytics_ReportMetadata, &protocol conformance descriptor for Apple_Parsec_Ondeviceanalytics_ReportMetadata);

  return sub_21B112114();
}

uint64_t sub_21AFB9C9C()
{
  v0 = sub_21B112254();
  __swift_allocate_value_buffer(v0, qword_27CD43298);
  __swift_project_value_buffer(v0, qword_27CD43298);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43128, &unk_21B116AD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43130, &unk_21B115090) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_21B113DB0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "spotlight_feature";
  *(v6 + 8) = 17;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21888];
  v8 = sub_21B112234();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "spotlight_carry";
  *(v10 + 1) = 15;
  v10[16] = 2;
  v9();
  return sub_21B112244();
}

uint64_t Apple_Parsec_Ondeviceanalytics_AnalyticsReport.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_17_4();
  while (1)
  {
    OUTLINED_FUNCTION_48_1();
    result = sub_21B111F64();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      OUTLINED_FUNCTION_52();
      OUTLINED_FUNCTION_42_1();
      sub_21AFBA3EC(v7, v8, v9, v10);
    }

    else if (result == 1)
    {
      OUTLINED_FUNCTION_52();
      OUTLINED_FUNCTION_42_1();
      sub_21AFB9EF4(v3, v4, v5, v6);
    }
  }

  return result;
}

uint64_t sub_21AFB9EF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  v5 = type metadata accessor for Apple_Parsec_Ondeviceanalytics_SpotlightFeatureReport(0);
  v6 = MEMORY[0x28223BE20](v5);
  v28 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD42F90, &unk_21B115FC0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for Apple_Parsec_Ondeviceanalytics_AnalyticsReport.OneOf_Report(0);
  v12 = MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD42F88, &qword_21B116AE0);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v24 - v17;
  __swift_storeEnumTagSinglePayload(&v24 - v17, 1, 1, v5);
  v25 = a1;
  sub_21AFC1EF8(a1);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  v27 = v11;
  if (EnumTagSinglePayload == 1)
  {
    sub_21AF99BE0(v10, &qword_27CD42F90, &unk_21B115FC0);
  }

  else
  {
    sub_21AFB6800();
    sub_21AFB6800();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_21AFB7024();
    }

    else
    {
      sub_21AF99BE0(v18, &qword_27CD42F88, &qword_21B116AE0);
      sub_21AFB6800();
      sub_21AFB6800();
      __swift_storeEnumTagSinglePayload(v18, 0, 1, v5);
    }
  }

  sub_21AFB94F8(&qword_27CD431D0, type metadata accessor for Apple_Parsec_Ondeviceanalytics_SpotlightFeatureReport, &protocol conformance descriptor for Apple_Parsec_Ondeviceanalytics_SpotlightFeatureReport);
  v19 = v29;
  sub_21B1120B4();
  if (v19)
  {
    v20 = v18;
    return sub_21AF99BE0(v20, &qword_27CD42F88, &qword_21B116AE0);
  }

  sub_21AFC1EF8(v18);
  if (__swift_getEnumTagSinglePayload(v16, 1, v5) == 1)
  {
    sub_21AF99BE0(v18, &qword_27CD42F88, &qword_21B116AE0);
    v20 = v16;
    return sub_21AF99BE0(v20, &qword_27CD42F88, &qword_21B116AE0);
  }

  sub_21AFB6800();
  if (EnumTagSinglePayload != 1)
  {
    sub_21B111F74();
  }

  v22 = v27;
  sub_21AF99BE0(v18, &qword_27CD42F88, &qword_21B116AE0);
  v23 = v25;
  sub_21AF99BE0(v25, &qword_27CD42F90, &unk_21B115FC0);
  sub_21AFB6800();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v23, 0, 1, v22);
}

uint64_t sub_21AFBA3EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  v5 = type metadata accessor for Apple_Parsec_Ondeviceanalytics_SpotlightCarryReport(0);
  v6 = MEMORY[0x28223BE20](v5);
  v28 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD42F90, &unk_21B115FC0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for Apple_Parsec_Ondeviceanalytics_AnalyticsReport.OneOf_Report(0);
  v12 = MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD434F8, &unk_21B116AE8);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v24 - v17;
  __swift_storeEnumTagSinglePayload(&v24 - v17, 1, 1, v5);
  v25 = a1;
  sub_21AFC1EF8(a1);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  v27 = v11;
  if (EnumTagSinglePayload == 1)
  {
    sub_21AF99BE0(v10, &qword_27CD42F90, &unk_21B115FC0);
  }

  else
  {
    sub_21AFB6800();
    sub_21AFB6800();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_21AF99BE0(v18, &qword_27CD434F8, &unk_21B116AE8);
      sub_21AFB6800();
      sub_21AFB6800();
      __swift_storeEnumTagSinglePayload(v18, 0, 1, v5);
    }

    else
    {
      sub_21AFB7024();
    }
  }

  sub_21AFB94F8(&qword_27CD431E8, type metadata accessor for Apple_Parsec_Ondeviceanalytics_SpotlightCarryReport, &protocol conformance descriptor for Apple_Parsec_Ondeviceanalytics_SpotlightCarryReport);
  v19 = v29;
  sub_21B1120B4();
  if (v19)
  {
    v20 = v18;
    return sub_21AF99BE0(v20, &qword_27CD434F8, &unk_21B116AE8);
  }

  sub_21AFC1EF8(v18);
  if (__swift_getEnumTagSinglePayload(v16, 1, v5) == 1)
  {
    sub_21AF99BE0(v18, &qword_27CD434F8, &unk_21B116AE8);
    v20 = v16;
    return sub_21AF99BE0(v20, &qword_27CD434F8, &unk_21B116AE8);
  }

  sub_21AFB6800();
  if (EnumTagSinglePayload != 1)
  {
    sub_21B111F74();
  }

  v22 = v27;
  sub_21AF99BE0(v18, &qword_27CD434F8, &unk_21B116AE8);
  v23 = v25;
  sub_21AF99BE0(v25, &qword_27CD42F90, &unk_21B115FC0);
  sub_21AFB6800();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v23, 0, 1, v22);
}

uint64_t Apple_Parsec_Ondeviceanalytics_AnalyticsReport.traverse<A>(visitor:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD42F90, &unk_21B115FC0);
  OUTLINED_FUNCTION_25(v2);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v3);
  v5 = &v17 - v4;
  v6 = OUTLINED_FUNCTION_97();
  sub_21AFC1EF8(v6);
  v7 = type metadata accessor for Apple_Parsec_Ondeviceanalytics_AnalyticsReport.OneOf_Report(0);
  if (__swift_getEnumTagSinglePayload(v5, 1, v7) == 1)
  {
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_79();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_42_1();
    sub_21AFBAC38(v8, v9, v10, v11);
  }

  else
  {
    OUTLINED_FUNCTION_42_1();
    sub_21AFBAA24(v12, v13, v14, v15);
  }

  OUTLINED_FUNCTION_6_6();
  result = sub_21AFB7024();
  if (!v1)
  {
LABEL_6:
    type metadata accessor for Apple_Parsec_Ondeviceanalytics_AnalyticsReport(0);
    OUTLINED_FUNCTION_49_1();
    return sub_21B111EA4();
  }

  return result;
}

uint64_t sub_21AFBAA24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD42F90, &unk_21B115FC0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for Apple_Parsec_Ondeviceanalytics_SpotlightFeatureReport(0);
  MEMORY[0x28223BE20](v8);
  sub_21AFC1EF8(a1);
  v9 = type metadata accessor for Apple_Parsec_Ondeviceanalytics_AnalyticsReport.OneOf_Report(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v9) == 1)
  {
    result = sub_21AF99BE0(v7, &qword_27CD42F90, &unk_21B115FC0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_21AFB6800();
      sub_21AFB94F8(&qword_27CD431D0, type metadata accessor for Apple_Parsec_Ondeviceanalytics_SpotlightFeatureReport, &protocol conformance descriptor for Apple_Parsec_Ondeviceanalytics_SpotlightFeatureReport);
      sub_21B112224();
      return sub_21AFB7024();
    }

    result = sub_21AFB7024();
  }

  __break(1u);
  return result;
}

uint64_t sub_21AFBAC38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD42F90, &unk_21B115FC0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for Apple_Parsec_Ondeviceanalytics_SpotlightCarryReport(0);
  MEMORY[0x28223BE20](v8);
  sub_21AFC1EF8(a1);
  v9 = type metadata accessor for Apple_Parsec_Ondeviceanalytics_AnalyticsReport.OneOf_Report(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v9) == 1)
  {
    result = sub_21AF99BE0(v7, &qword_27CD42F90, &unk_21B115FC0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_21AFB6800();
      sub_21AFB94F8(&qword_27CD431E8, type metadata accessor for Apple_Parsec_Ondeviceanalytics_SpotlightCarryReport, &protocol conformance descriptor for Apple_Parsec_Ondeviceanalytics_SpotlightCarryReport);
      sub_21B112224();
      return sub_21AFB7024();
    }

    result = sub_21AFB7024();
  }

  __break(1u);
  return result;
}

void static Apple_Parsec_Ondeviceanalytics_AnalyticsReport.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_76();
  a19 = v24;
  a20 = v25;
  OUTLINED_FUNCTION_81();
  v26 = type metadata accessor for Apple_Parsec_Ondeviceanalytics_AnalyticsReport.OneOf_Report(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_108();
  v28 = OUTLINED_FUNCTION_79();
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(v28, v29);
  OUTLINED_FUNCTION_25(v30);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_73();
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43318, &qword_21B115FE8);
  OUTLINED_FUNCTION_25(v32);
  OUTLINED_FUNCTION_6_3();
  v34 = MEMORY[0x28223BE20](v33);
  v36 = &a9 - v35;
  v37 = *(v34 + 56);
  OUTLINED_FUNCTION_101(v21);
  OUTLINED_FUNCTION_101(v20);
  v38 = OUTLINED_FUNCTION_41_1();
  OUTLINED_FUNCTION_37_1(v38, v39, v26);
  if (v41)
  {
    OUTLINED_FUNCTION_37_1(&v36[v37], 1, v26);
    if (v41)
    {
      sub_21AF99BE0(v36, &qword_27CD42F90, &unk_21B115FC0);
LABEL_12:
      type metadata accessor for Apple_Parsec_Ondeviceanalytics_AnalyticsReport(0);
      sub_21B111EC4();
      OUTLINED_FUNCTION_0_9();
      v51 = sub_21AFB94F8(v49, v50, MEMORY[0x277D216D0]);
      OUTLINED_FUNCTION_40_1(v51);
      goto LABEL_13;
    }

LABEL_9:
    sub_21AF99BE0(v36, &qword_27CD43318, &qword_21B115FE8);
    goto LABEL_13;
  }

  v40 = OUTLINED_FUNCTION_90();
  sub_21AFC1EF8(v40);
  OUTLINED_FUNCTION_37_1(&v36[v37], 1, v26);
  if (v41)
  {
    OUTLINED_FUNCTION_6_6();
    sub_21AFB7024();
    goto LABEL_9;
  }

  sub_21AFB6800();
  static Apple_Parsec_Ondeviceanalytics_AnalyticsReport.OneOf_Report.== infix(_:_:)(v23, v22, v42, v43, v44, v45, v46);
  v48 = v47;
  sub_21AFB7024();
  sub_21AFB7024();
  sub_21AF99BE0(v36, &qword_27CD42F90, &unk_21B115FC0);
  if (v48)
  {
    goto LABEL_12;
  }

LABEL_13:
  OUTLINED_FUNCTION_77();
}

uint64_t sub_21AFBB174(uint64_t a1, uint64_t a2)
{
  v4 = sub_21AFB94F8(&qword_27CD434A0, type metadata accessor for Apple_Parsec_Ondeviceanalytics_AnalyticsReport, &protocol conformance descriptor for Apple_Parsec_Ondeviceanalytics_AnalyticsReport);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_21AFBB1F4(uint64_t a1)
{
  v2 = sub_21AFB94F8(&qword_27CD43328, type metadata accessor for Apple_Parsec_Ondeviceanalytics_AnalyticsReport, &protocol conformance descriptor for Apple_Parsec_Ondeviceanalytics_AnalyticsReport);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_21AFBB264(uint64_t a1, uint64_t a2)
{
  sub_21AFB94F8(&qword_27CD43328, type metadata accessor for Apple_Parsec_Ondeviceanalytics_AnalyticsReport, &protocol conformance descriptor for Apple_Parsec_Ondeviceanalytics_AnalyticsReport);

  return sub_21B112114();
}

uint64_t sub_21AFBB2FC()
{
  v0 = sub_21B112254();
  __swift_allocate_value_buffer(v0, qword_27CD432B0);
  __swift_project_value_buffer(v0, qword_27CD432B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43128, &unk_21B116AD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43130, &unk_21B115090) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_21B113DB0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "context_dimensions";
  *(v6 + 8) = 18;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21888];
  v8 = sub_21B112234();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 3;
  *v10 = "reports";
  *(v10 + 1) = 7;
  v10[16] = 2;
  v9();
  return sub_21B112244();
}

uint64_t Apple_Parsec_Ondeviceanalytics_AnalyticsReportsGroup.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_17_4();
  while (1)
  {
    OUTLINED_FUNCTION_48_1();
    result = sub_21B111F64();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 3)
    {
      v7 = OUTLINED_FUNCTION_10_2();
      sub_21AFBB60C(v7, v8, v9, v10);
    }

    else if (result == 1)
    {
      v3 = OUTLINED_FUNCTION_10_2();
      sub_21AFBB558(v3, v4, v5, v6);
    }
  }

  return result;
}

uint64_t sub_21AFBB558(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Apple_Parsec_Ondeviceanalytics_AnalyticsReportsGroup(0);
  type metadata accessor for Apple_Parsec_Ondeviceanalytics_ContextDimensions(0);
  sub_21AFB94F8(&qword_27CD43370, type metadata accessor for Apple_Parsec_Ondeviceanalytics_ContextDimensions, &protocol conformance descriptor for Apple_Parsec_Ondeviceanalytics_ContextDimensions);
  return sub_21B1120B4();
}

uint64_t sub_21AFBB60C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Apple_Parsec_Ondeviceanalytics_AnalyticsReport(0);
  sub_21AFB94F8(&qword_27CD43328, type metadata accessor for Apple_Parsec_Ondeviceanalytics_AnalyticsReport, &protocol conformance descriptor for Apple_Parsec_Ondeviceanalytics_AnalyticsReport);
  return sub_21B1120A4();
}

uint64_t Apple_Parsec_Ondeviceanalytics_AnalyticsReportsGroup.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_24_2();
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_42_1();
  result = sub_21AFBB774(v2, v3, v4, v5);
  if (!v0)
  {
    v7 = *v1;
    if (*(*v1 + 16))
    {
      type metadata accessor for Apple_Parsec_Ondeviceanalytics_AnalyticsReport(0);
      v8 = sub_21AFB94F8(&qword_27CD43328, type metadata accessor for Apple_Parsec_Ondeviceanalytics_AnalyticsReport, &protocol conformance descriptor for Apple_Parsec_Ondeviceanalytics_AnalyticsReport);
      OUTLINED_FUNCTION_104(v7, 3, v9, v8);
    }

    type metadata accessor for Apple_Parsec_Ondeviceanalytics_AnalyticsReportsGroup(0);
    return OUTLINED_FUNCTION_27_2();
  }

  return result;
}

uint64_t sub_21AFBB774(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD42FB8, &qword_21B114A28);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for Apple_Parsec_Ondeviceanalytics_ContextDimensions(0);
  MEMORY[0x28223BE20](v8);
  v9 = type metadata accessor for Apple_Parsec_Ondeviceanalytics_AnalyticsReportsGroup(0);
  sub_21AFC1EF8(a1 + *(v9 + 24));
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_21AF99BE0(v7, &qword_27CD42FB8, &qword_21B114A28);
  }

  sub_21AFB6800();
  sub_21AFB94F8(&qword_27CD43370, type metadata accessor for Apple_Parsec_Ondeviceanalytics_ContextDimensions, &protocol conformance descriptor for Apple_Parsec_Ondeviceanalytics_ContextDimensions);
  sub_21B112224();
  return sub_21AFB7024();
}

void static Apple_Parsec_Ondeviceanalytics_AnalyticsReportsGroup.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  OUTLINED_FUNCTION_76();
  v10 = v9;
  v11 = OUTLINED_FUNCTION_106();
  v12 = type metadata accessor for Apple_Parsec_Ondeviceanalytics_ContextDimensions(v11);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_108();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD42FB8, &qword_21B114A28);
  OUTLINED_FUNCTION_25(v14);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43330, &qword_21B115FF0) - 8;
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_73();
  v18 = *(type metadata accessor for Apple_Parsec_Ondeviceanalytics_AnalyticsReportsGroup(0) + 24);
  v19 = *(v16 + 56);
  sub_21AFC1EF8(v7 + v18);
  sub_21AFC1EF8(v10 + v18);
  OUTLINED_FUNCTION_37_1(v8, 1, v12);
  if (!v20)
  {
    sub_21AFC1EF8(v8);
    OUTLINED_FUNCTION_37_1(v8 + v19, 1, v12);
    if (!v20)
    {
      OUTLINED_FUNCTION_3_9();
      sub_21AFB6800();
      v21 = OUTLINED_FUNCTION_98();
      v22 = static Apple_Parsec_Ondeviceanalytics_ContextDimensions.== infix(_:_:)(v21);
      sub_21AFB7024();
      sub_21AFB7024();
      sub_21AF99BE0(v8, &qword_27CD42FB8, &qword_21B114A28);
      if ((v22 & 1) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_11;
    }

    OUTLINED_FUNCTION_53();
    sub_21AFB7024();
LABEL_9:
    sub_21AF99BE0(v8, &qword_27CD43330, &qword_21B115FF0);
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_37_1(v8 + v19, 1, v12);
  if (!v20)
  {
    goto LABEL_9;
  }

  sub_21AF99BE0(v8, &qword_27CD42FB8, &qword_21B114A28);
LABEL_11:
  if (sub_21AFC0110(*v7, *v10))
  {
    sub_21B111EC4();
    OUTLINED_FUNCTION_0_9();
    sub_21AFB94F8(v23, v24, MEMORY[0x277D216D0]);
    sub_21B1123C4();
  }

LABEL_13:
  OUTLINED_FUNCTION_77();
}

uint64_t sub_21AFBBCA4(uint64_t a1, uint64_t a2)
{
  v4 = sub_21AFB94F8(&qword_27CD43498, type metadata accessor for Apple_Parsec_Ondeviceanalytics_AnalyticsReportsGroup, &protocol conformance descriptor for Apple_Parsec_Ondeviceanalytics_AnalyticsReportsGroup);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_21AFBBD24(uint64_t a1)
{
  v2 = sub_21AFB94F8(&qword_27CD43348, type metadata accessor for Apple_Parsec_Ondeviceanalytics_AnalyticsReportsGroup, &protocol conformance descriptor for Apple_Parsec_Ondeviceanalytics_AnalyticsReportsGroup);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_21AFBBD94(uint64_t a1, uint64_t a2)
{
  sub_21AFB94F8(&qword_27CD43348, type metadata accessor for Apple_Parsec_Ondeviceanalytics_AnalyticsReportsGroup, &protocol conformance descriptor for Apple_Parsec_Ondeviceanalytics_AnalyticsReportsGroup);

  return sub_21B112114();
}

uint64_t sub_21AFBBE2C()
{
  v0 = sub_21B112254();
  __swift_allocate_value_buffer(v0, qword_27CD432C8);
  __swift_project_value_buffer(v0, qword_27CD432C8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43128, &unk_21B116AD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43130, &unk_21B115090) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_21B113D80;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "hardware_model_string";
  *(v6 + 8) = 21;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21888];
  v8 = sub_21B112234();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "platform";
  *(v10 + 8) = 8;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "federated_identifier";
  *(v12 + 1) = 20;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "build_at_aggregation_time";
  *(v14 + 1) = 25;
  v14[16] = 2;
  v9();
  return sub_21B112244();
}

uint64_t Apple_Parsec_Ondeviceanalytics_GlobalDimensions.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_17_4();
  while (1)
  {
    OUTLINED_FUNCTION_48_1();
    result = sub_21B111F64();
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
        OUTLINED_FUNCTION_49_1();
        sub_21B112074();
        break;
      default:
        continue;
    }
  }
}

uint64_t Apple_Parsec_Ondeviceanalytics_GlobalDimensions.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_24_2();
  OUTLINED_FUNCTION_10_4();
  if (!v3 || (result = OUTLINED_FUNCTION_23_2(v1, v2, 1), !v0))
  {
    OUTLINED_FUNCTION_10_4();
    if (!v7 || (result = OUTLINED_FUNCTION_23_2(v5, v6, 2), !v0))
    {
      OUTLINED_FUNCTION_10_4();
      if (!v10 || (result = OUTLINED_FUNCTION_23_2(v8, v9, 3), !v0))
      {
        OUTLINED_FUNCTION_10_4();
        if (!v13 || (result = OUTLINED_FUNCTION_23_2(v11, v12, 5), !v0))
        {
          type metadata accessor for Apple_Parsec_Ondeviceanalytics_GlobalDimensions(0);
          return OUTLINED_FUNCTION_27_2();
        }
      }
    }
  }

  return result;
}

uint64_t static Apple_Parsec_Ondeviceanalytics_GlobalDimensions.== infix(_:_:)(uint64_t a1)
{
  OUTLINED_FUNCTION_30_1(a1);
  v5 = v5 && v3 == v4;
  if (!v5 && (sub_21B112D04() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_91();
  v8 = v5 && v6 == v7;
  if (!v8 && (sub_21B112D04() & 1) == 0)
  {
    return 0;
  }

  v9 = v2[4] == v1[4] && v2[5] == v1[5];
  if (!v9 && (sub_21B112D04() & 1) == 0)
  {
    return 0;
  }

  v10 = v2[6] == v1[6] && v2[7] == v1[7];
  if (!v10 && (sub_21B112D04() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for Apple_Parsec_Ondeviceanalytics_GlobalDimensions(0);
  sub_21B111EC4();
  OUTLINED_FUNCTION_0_9();
  v13 = sub_21AFB94F8(v11, v12, MEMORY[0x277D216D0]);
  return OUTLINED_FUNCTION_40_1(v13) & 1;
}

uint64_t sub_21AFBC368(uint64_t a1, uint64_t a2)
{
  v4 = sub_21AFB94F8(&qword_27CD43490, type metadata accessor for Apple_Parsec_Ondeviceanalytics_GlobalDimensions, &protocol conformance descriptor for Apple_Parsec_Ondeviceanalytics_GlobalDimensions);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_21AFBC3E8(uint64_t a1)
{
  v2 = sub_21AFB94F8(&qword_27CD433C0, type metadata accessor for Apple_Parsec_Ondeviceanalytics_GlobalDimensions, &protocol conformance descriptor for Apple_Parsec_Ondeviceanalytics_GlobalDimensions);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_21AFBC458(uint64_t a1, uint64_t a2)
{
  sub_21AFB94F8(&qword_27CD433C0, type metadata accessor for Apple_Parsec_Ondeviceanalytics_GlobalDimensions, &protocol conformance descriptor for Apple_Parsec_Ondeviceanalytics_GlobalDimensions);

  return sub_21B112114();
}

uint64_t sub_21AFBC4F0()
{
  v0 = sub_21B112254();
  __swift_allocate_value_buffer(v0, qword_27CD432E0);
  __swift_project_value_buffer(v0, qword_27CD432E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43128, &unk_21B116AD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43130, &unk_21B115090) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_21B113D80;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "metadata";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_21B112234();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "upload_event_uuid";
  *(v10 + 8) = 17;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "global_dimensions";
  *(v12 + 1) = 17;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "reports_groups";
  *(v14 + 1) = 14;
  v14[16] = 2;
  v9();
  return sub_21B112244();
}

uint64_t Apple_Parsec_Ondeviceanalytics_AnalyticsReportsUploadEvent.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_17_4();
  while (1)
  {
    OUTLINED_FUNCTION_48_1();
    result = sub_21B111F64();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        v3 = OUTLINED_FUNCTION_10_2();
        sub_21AFBC804(v3, v4, v5, v6);
        break;
      case 2:
        OUTLINED_FUNCTION_49_1();
        sub_21B112074();
        break;
      case 3:
        v7 = OUTLINED_FUNCTION_10_2();
        sub_21AFBC8B8(v7, v8, v9, v10);
        break;
      case 4:
        v11 = OUTLINED_FUNCTION_10_2();
        sub_21AFBC96C(v11, v12, v13, v14);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_21AFBC804(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Apple_Parsec_Ondeviceanalytics_AnalyticsReportsUploadEvent(0);
  type metadata accessor for Apple_Parsec_Ondeviceanalytics_ReportMetadata(0);
  sub_21AFB94F8(&qword_27CD43388, type metadata accessor for Apple_Parsec_Ondeviceanalytics_ReportMetadata, &protocol conformance descriptor for Apple_Parsec_Ondeviceanalytics_ReportMetadata);
  return sub_21B1120B4();
}

uint64_t sub_21AFBC8B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Apple_Parsec_Ondeviceanalytics_AnalyticsReportsUploadEvent(0);
  type metadata accessor for Apple_Parsec_Ondeviceanalytics_GlobalDimensions(0);
  sub_21AFB94F8(&qword_27CD433C0, type metadata accessor for Apple_Parsec_Ondeviceanalytics_GlobalDimensions, &protocol conformance descriptor for Apple_Parsec_Ondeviceanalytics_GlobalDimensions);
  return sub_21B1120B4();
}

uint64_t sub_21AFBC96C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Apple_Parsec_Ondeviceanalytics_AnalyticsReportsGroup(0);
  sub_21AFB94F8(&qword_27CD43348, type metadata accessor for Apple_Parsec_Ondeviceanalytics_AnalyticsReportsGroup, &protocol conformance descriptor for Apple_Parsec_Ondeviceanalytics_AnalyticsReportsGroup);
  return sub_21B1120A4();
}

uint64_t Apple_Parsec_Ondeviceanalytics_AnalyticsReportsUploadEvent.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_24_2();
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_42_1();
  result = sub_21AFBCB10(v2, v3, v4, v5);
  if (!v0)
  {
    OUTLINED_FUNCTION_10_4();
    if (v9)
    {
      OUTLINED_FUNCTION_23_2(v7, v8, 2);
    }

    OUTLINED_FUNCTION_42_1();
    sub_21AFBCCF0(v10, v11, v12, v13);
    v14 = *(v1 + 16);
    if (*(v14 + 16))
    {
      type metadata accessor for Apple_Parsec_Ondeviceanalytics_AnalyticsReportsGroup(0);
      v15 = sub_21AFB94F8(&qword_27CD43348, type metadata accessor for Apple_Parsec_Ondeviceanalytics_AnalyticsReportsGroup, &protocol conformance descriptor for Apple_Parsec_Ondeviceanalytics_AnalyticsReportsGroup);
      OUTLINED_FUNCTION_104(v14, 4, v16, v15);
    }

    type metadata accessor for Apple_Parsec_Ondeviceanalytics_AnalyticsReportsUploadEvent(0);
    return OUTLINED_FUNCTION_27_2();
  }

  return result;
}

uint64_t sub_21AFBCB10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43300, &qword_21B115FD8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for Apple_Parsec_Ondeviceanalytics_ReportMetadata(0);
  MEMORY[0x28223BE20](v8);
  v9 = type metadata accessor for Apple_Parsec_Ondeviceanalytics_AnalyticsReportsUploadEvent(0);
  sub_21AFC1EF8(a1 + *(v9 + 28));
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_21AF99BE0(v7, &qword_27CD43300, &qword_21B115FD8);
  }

  sub_21AFB6800();
  sub_21AFB94F8(&qword_27CD43388, type metadata accessor for Apple_Parsec_Ondeviceanalytics_ReportMetadata, &protocol conformance descriptor for Apple_Parsec_Ondeviceanalytics_ReportMetadata);
  sub_21B112224();
  return sub_21AFB7024();
}

uint64_t sub_21AFBCCF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43308, &qword_21B115FE0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for Apple_Parsec_Ondeviceanalytics_GlobalDimensions(0);
  MEMORY[0x28223BE20](v8);
  v9 = type metadata accessor for Apple_Parsec_Ondeviceanalytics_AnalyticsReportsUploadEvent(0);
  sub_21AFC1EF8(a1 + *(v9 + 32));
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_21AF99BE0(v7, &qword_27CD43308, &qword_21B115FE0);
  }

  sub_21AFB6800();
  sub_21AFB94F8(&qword_27CD433C0, type metadata accessor for Apple_Parsec_Ondeviceanalytics_GlobalDimensions, &protocol conformance descriptor for Apple_Parsec_Ondeviceanalytics_GlobalDimensions);
  sub_21B112224();
  return sub_21AFB7024();
}

void static Apple_Parsec_Ondeviceanalytics_AnalyticsReportsUploadEvent.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  OUTLINED_FUNCTION_76();
  v10 = v9;
  v11 = OUTLINED_FUNCTION_106();
  v51 = type metadata accessor for Apple_Parsec_Ondeviceanalytics_GlobalDimensions(v11);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_2();
  v47[1] = v14 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43308, &qword_21B115FE0);
  OUTLINED_FUNCTION_25(v15);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_83();
  v48 = v17;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43350, &qword_21B115FF8);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_72(v19, v47[0]);
  type metadata accessor for Apple_Parsec_Ondeviceanalytics_ReportMetadata(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_2();
  v21 = OUTLINED_FUNCTION_52();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(v21, v22);
  OUTLINED_FUNCTION_25(v23);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_108();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43358, &qword_21B116000) - 8;
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v26);
  v28 = v47 - v27;
  v50 = type metadata accessor for Apple_Parsec_Ondeviceanalytics_AnalyticsReportsUploadEvent(0);
  v29 = *(v50 + 28);
  v30 = *(v25 + 56);
  v53 = v8;
  OUTLINED_FUNCTION_116(v8 + v29);
  OUTLINED_FUNCTION_116(v10 + v29);
  OUTLINED_FUNCTION_14(v28);
  if (v31)
  {
    OUTLINED_FUNCTION_14(&v28[v30]);
    if (v31)
    {
      sub_21AF99BE0(v28, &qword_27CD43300, &qword_21B115FD8);
      goto LABEL_11;
    }

LABEL_9:
    v32 = &qword_27CD43358;
    v33 = &qword_21B116000;
    v34 = v28;
    goto LABEL_25;
  }

  sub_21AFC1EF8(v28);
  OUTLINED_FUNCTION_14(&v28[v30]);
  if (v31)
  {
    OUTLINED_FUNCTION_58();
    sub_21AFB7024();
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_5_8();
  sub_21AFB6800();
  v35 = static Apple_Parsec_Ondeviceanalytics_ReportMetadata.== infix(_:_:)(v7);
  sub_21AFB7024();
  sub_21AFB7024();
  sub_21AF99BE0(v28, &qword_27CD43300, &qword_21B115FD8);
  if ((v35 & 1) == 0)
  {
    goto LABEL_26;
  }

LABEL_11:
  v36 = v53;
  v37 = *v53 == *v10 && v53[1] == v10[1];
  if (v37 || (sub_21B112D04() & 1) != 0)
  {
    v38 = *(v50 + 32);
    v39 = *(v49 + 48);
    v40 = v52;
    OUTLINED_FUNCTION_116(v36 + v38);
    OUTLINED_FUNCTION_116(v10 + v38);
    v41 = v51;
    OUTLINED_FUNCTION_37_1(v40, 1, v51);
    if (v31)
    {
      OUTLINED_FUNCTION_37_1(v40 + v39, 1, v41);
      if (v31)
      {
        sub_21AF99BE0(v40, &qword_27CD43308, &qword_21B115FE0);
LABEL_28:
        if (sub_21AFBFB34(v36[2], v10[2]))
        {
          sub_21B111EC4();
          OUTLINED_FUNCTION_0_9();
          sub_21AFB94F8(v45, v46, MEMORY[0x277D216D0]);
          sub_21B1123C4();
        }

        goto LABEL_26;
      }
    }

    else
    {
      v42 = v48;
      sub_21AFC1EF8(v40);
      OUTLINED_FUNCTION_37_1(v40 + v39, 1, v41);
      if (!v43)
      {
        OUTLINED_FUNCTION_4_10();
        sub_21AFB6800();
        v44 = static Apple_Parsec_Ondeviceanalytics_GlobalDimensions.== infix(_:_:)(v42);
        sub_21AFB7024();
        sub_21AFB7024();
        sub_21AF99BE0(v40, &qword_27CD43308, &qword_21B115FE0);
        if ((v44 & 1) == 0)
        {
          goto LABEL_26;
        }

        goto LABEL_28;
      }

      OUTLINED_FUNCTION_57();
      sub_21AFB7024();
    }

    v32 = &qword_27CD43350;
    v33 = &qword_21B115FF8;
    v34 = v40;
LABEL_25:
    sub_21AF99BE0(v34, v32, v33);
  }

LABEL_26:
  OUTLINED_FUNCTION_77();
}

uint64_t sub_21AFBD3C4(uint64_t (*a1)(void), uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_21B112EC4();
  a1(0);
  v6 = OUTLINED_FUNCTION_84();
  sub_21AFB94F8(v6, v7, a4);
  sub_21B112374();
  return sub_21B112F14();
}

uint64_t sub_21AFBD4C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_21AFB94F8(&qword_27CD43488, type metadata accessor for Apple_Parsec_Ondeviceanalytics_AnalyticsReportsUploadEvent, &protocol conformance descriptor for Apple_Parsec_Ondeviceanalytics_AnalyticsReportsUploadEvent);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_21AFBD548(uint64_t a1)
{
  v2 = sub_21AFB94F8(&qword_27CD433D8, type metadata accessor for Apple_Parsec_Ondeviceanalytics_AnalyticsReportsUploadEvent, &protocol conformance descriptor for Apple_Parsec_Ondeviceanalytics_AnalyticsReportsUploadEvent);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_21AFBD5B8(uint64_t a1, uint64_t a2)
{
  sub_21AFB94F8(&qword_27CD433D8, type metadata accessor for Apple_Parsec_Ondeviceanalytics_AnalyticsReportsUploadEvent, &protocol conformance descriptor for Apple_Parsec_Ondeviceanalytics_AnalyticsReportsUploadEvent);

  return sub_21B112114();
}

void sub_21AFBD638(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_76();
  v16 = v15;
  v18 = v17;
  v48 = type metadata accessor for Apple_Parsec_Feedback_V2_Value.OneOf_Kind(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_2();
  v45 = v21 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD434C8, &qword_21B116AA0);
  OUTLINED_FUNCTION_25(v22);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_72(v24, v45);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD434D0, &qword_21B116AA8);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_73();
  type metadata accessor for Apple_Parsec_Feedback_V2_Value(0);
  OUTLINED_FUNCTION_11_3();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_22_1();
  v29 = v27 - v28;
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_96();
  v31 = *(v18 + 16);
  if (v31 != *(v16 + 16) || !v31 || v18 == v16)
  {
    goto LABEL_19;
  }

  OUTLINED_FUNCTION_20_2();
  v33 = v18 + v32;
  v34 = v16 + v32;
  v46 = *(v35 + 72);
  while (1)
  {
    sub_21AFB7598();
    sub_21AFB7598();
    v36 = *(v47 + 48);
    OUTLINED_FUNCTION_49_1();
    sub_21AFC1EF8(v37);
    sub_21AFC1EF8(v29);
    OUTLINED_FUNCTION_37_1(v14, 1, v48);
    if (!v40)
    {
      break;
    }

    OUTLINED_FUNCTION_37_1(v14 + v36, 1, v48);
    if (!v40)
    {
      goto LABEL_17;
    }

    v38 = OUTLINED_FUNCTION_48_1();
    sub_21AF99BE0(v38, v39, &qword_21B116AA0);
LABEL_12:
    sub_21B111EC4();
    OUTLINED_FUNCTION_0_9();
    sub_21AFB94F8(&unk_2811FAAE0, v43, MEMORY[0x277D216D0]);
    v44 = sub_21B1123C4();
    sub_21AFB7024();
    sub_21AFB7024();
    if (v44)
    {
      v34 += v46;
      v33 += v46;
      if (--v31)
      {
        continue;
      }
    }

    goto LABEL_19;
  }

  sub_21AFC1EF8(v14);
  OUTLINED_FUNCTION_37_1(v14 + v36, 1, v48);
  if (!v40)
  {
    sub_21AFB6800();
    static Apple_Parsec_Feedback_V2_Value.OneOf_Kind.== infix(_:_:)();
    v42 = v41;
    sub_21AFB7024();
    sub_21AFB7024();
    sub_21AF99BE0(v14, &qword_27CD434C8, &qword_21B116AA0);
    if ((v42 & 1) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_12;
  }

  sub_21AFB7024();
LABEL_17:
  sub_21AF99BE0(v14, &qword_27CD434D0, &qword_21B116AA8);
LABEL_18:
  sub_21AFB7024();
  OUTLINED_FUNCTION_112();
  sub_21AFB7024();
LABEL_19:
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_77();
}

void sub_21AFBDA58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_76();
  a19 = v23;
  a20 = v24;
  v25 = OUTLINED_FUNCTION_62();
  v26 = type metadata accessor for Apple_Parsec_Feedback_V2_SearchResultForFeedback(v25);
  OUTLINED_FUNCTION_11_3();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_19_3();
  MEMORY[0x28223BE20](v28);
  v30 = &a9 - v29;
  v31 = *(v22 + 16);
  if (v31 == *(v20 + 16) && v31 && v22 != v20)
  {
    OUTLINED_FUNCTION_20_2();
    v33 = v22 + v32;
    v34 = v20 + v32;
    v36 = *(v35 + 72);
    while (1)
    {
      OUTLINED_FUNCTION_48_1();
      sub_21AFB7598();
      OUTLINED_FUNCTION_98();
      sub_21AFB7598();
      v37 = *(v26 + 20);
      v38 = *&v30[v37];
      v39 = *(v21 + v37);
      if (v38 != v39)
      {

        v40 = sub_21B03D03C(v38, v39);

        if (!v40)
        {
          break;
        }
      }

      sub_21B111EC4();
      OUTLINED_FUNCTION_0_9();
      sub_21AFB94F8(&unk_2811FAAE0, v41, MEMORY[0x277D216D0]);
      OUTLINED_FUNCTION_84();
      if ((sub_21B1123C4() & 1) == 0)
      {
        break;
      }

      sub_21AFB7024();
      OUTLINED_FUNCTION_75();
      sub_21AFB7024();
      v34 += v36;
      v33 += v36;
      if (!--v31)
      {
        goto LABEL_11;
      }
    }

    OUTLINED_FUNCTION_2_10();
    sub_21AFB7024();
    OUTLINED_FUNCTION_60();
    sub_21AFB7024();
  }

LABEL_11:
  OUTLINED_FUNCTION_77();
}

void sub_21AFBDC54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  OUTLINED_FUNCTION_76();
  v12 = OUTLINED_FUNCTION_62();
  type metadata accessor for Apple_Parsec_Feedback_V2_SearchSuggestionForFeedback(v12);
  OUTLINED_FUNCTION_11_3();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_19_3();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_31_2();
  if (v15 && v11 && v10 != v7)
  {
    OUTLINED_FUNCTION_20_2();
    OUTLINED_FUNCTION_95();
    while (1)
    {
      OUTLINED_FUNCTION_48_1();
      sub_21AFB7598();
      OUTLINED_FUNCTION_98();
      sub_21AFB7598();
      v15 = *v9 == *v8 && *(v9 + 8) == *(v8 + 8);
      if (!v15 && (sub_21B112D04() & 1) == 0)
      {
        break;
      }

      OUTLINED_FUNCTION_94();
      v18 = v15 && v16 == v17;
      if (!v18 && (sub_21B112D04() & 1) == 0)
      {
        break;
      }

      v19 = *(v9 + 32) == *(v8 + 32) && *(v9 + 40) == *(v8 + 40);
      if (!v19 && (sub_21B112D04() & 1) == 0 || *(v9 + 48) != *(v8 + 48))
      {
        break;
      }

      v20 = *(v9 + 56);
      v21 = *(v8 + 56);
      if (*(v8 + 64) == 1)
      {
        switch(v21)
        {
          case 1:
            if (v20 != 1)
            {
              goto LABEL_70;
            }

            goto LABEL_25;
          case 2:
            if (v20 != 2)
            {
              goto LABEL_70;
            }

            goto LABEL_25;
          case 3:
            if (v20 != 3)
            {
              goto LABEL_70;
            }

            goto LABEL_25;
          case 4:
            if (v20 != 4)
            {
              goto LABEL_70;
            }

            goto LABEL_25;
          case 5:
            if (v20 != 5)
            {
              goto LABEL_70;
            }

            goto LABEL_25;
          case 6:
            if (v20 != 6)
            {
              goto LABEL_70;
            }

            goto LABEL_25;
          case 7:
            if (v20 != 7)
            {
              goto LABEL_70;
            }

            goto LABEL_25;
          case 8:
            if (v20 != 8)
            {
              goto LABEL_70;
            }

            goto LABEL_25;
          case 9:
            if (v20 != 9)
            {
              goto LABEL_70;
            }

            goto LABEL_25;
          case 10:
            if (v20 != 10)
            {
              goto LABEL_70;
            }

            goto LABEL_25;
          case 11:
            if (v20 != 11)
            {
              goto LABEL_70;
            }

            goto LABEL_25;
          case 12:
            if (v20 != 12)
            {
              goto LABEL_70;
            }

            goto LABEL_25;
          case 13:
            if (v20 != 13)
            {
              goto LABEL_70;
            }

            goto LABEL_25;
          case 14:
            if (v20 != 14)
            {
              goto LABEL_70;
            }

            goto LABEL_25;
          case 15:
            if (v20 != 15)
            {
              goto LABEL_70;
            }

            goto LABEL_25;
          case 16:
            if (v20 != 16)
            {
              goto LABEL_70;
            }

            goto LABEL_25;
          default:
            break;
        }
      }

      if (v20 != v21)
      {
        break;
      }

LABEL_25:
      v22 = *(v9 + 72) == *(v8 + 72) && *(v9 + 80) == *(v8 + 80);
      if (!v22 && (sub_21B112D04() & 1) == 0)
      {
        break;
      }

      v23 = *(v9 + 88) == *(v8 + 88) && *(v9 + 96) == *(v8 + 96);
      if (!v23 && (sub_21B112D04() & 1) == 0)
      {
        break;
      }

      sub_21B111EC4();
      OUTLINED_FUNCTION_0_9();
      v25 = sub_21AFB94F8(&unk_2811FAAE0, v24, MEMORY[0x277D216D0]);
      v26 = OUTLINED_FUNCTION_85(v25);
      sub_21AFB7024();
      OUTLINED_FUNCTION_113();
      sub_21AFB7024();
      if (v26)
      {
        OUTLINED_FUNCTION_46_1();
        if (!v15)
        {
          continue;
        }
      }

      goto LABEL_71;
    }

LABEL_70:
    sub_21AFB7024();
    OUTLINED_FUNCTION_60();
    sub_21AFB7024();
  }

LABEL_71:
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_77();
}

void sub_21AFBDF9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  OUTLINED_FUNCTION_76();
  v12 = OUTLINED_FUNCTION_62();
  type metadata accessor for Apple_Parsec_Feedback_V2_ButtonForFeedback(v12);
  OUTLINED_FUNCTION_11_3();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_19_3();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_31_2();
  if (v19 && v11 && v10 != v7)
  {
    OUTLINED_FUNCTION_20_2();
    OUTLINED_FUNCTION_95();
    while (1)
    {
      OUTLINED_FUNCTION_48_1();
      sub_21AFB7598();
      OUTLINED_FUNCTION_98();
      sub_21AFB7598();
      v15 = *v9;
      if (*(v9 + 8) == 1)
      {
        v15 = qword_21B116AF8[v15];
      }

      v16 = *v8;
      if (*(v8 + 8))
      {
        switch(v16)
        {
          case 23:
            if (v15 != 23)
            {
              goto LABEL_72;
            }

            goto LABEL_11;
          case 24:
            if (v15 != 24)
            {
              goto LABEL_72;
            }

            goto LABEL_11;
          case 25:
            if (v15 != 25)
            {
              goto LABEL_72;
            }

            goto LABEL_11;
          case 26:
            if (v15 != 26)
            {
              goto LABEL_72;
            }

            goto LABEL_11;
          case 27:
            if (v15 != 27)
            {
              goto LABEL_72;
            }

            goto LABEL_11;
          case 28:
            if (v15 != 28)
            {
              goto LABEL_72;
            }

            goto LABEL_11;
          case 29:
            if (v15 != 29)
            {
              goto LABEL_72;
            }

            goto LABEL_11;
          case 30:
            if (v15 != 30)
            {
              goto LABEL_72;
            }

            goto LABEL_11;
          case 31:
            if (v15 != 31)
            {
              goto LABEL_72;
            }

            goto LABEL_11;
          case 32:
            if (v15 != 32)
            {
              goto LABEL_72;
            }

            goto LABEL_11;
          case 33:
            if (v15 != 33)
            {
              goto LABEL_72;
            }

            goto LABEL_11;
          case 34:
            if (v15 != 34)
            {
              goto LABEL_72;
            }

            goto LABEL_11;
          case 35:
            if (v15 != 35)
            {
              goto LABEL_72;
            }

            goto LABEL_11;
          case 36:
            if (v15 != 36)
            {
              goto LABEL_72;
            }

            goto LABEL_11;
          case 37:
            if (v15 != 37)
            {
              goto LABEL_72;
            }

            goto LABEL_11;
          case 38:
            if (v15 != 38)
            {
              goto LABEL_72;
            }

            goto LABEL_11;
          case 39:
            if (v15 != 39)
            {
              goto LABEL_72;
            }

            goto LABEL_11;
          case 40:
            if (v15 != 40)
            {
              goto LABEL_72;
            }

            goto LABEL_11;
          case 41:
            if (v15 != 41)
            {
              goto LABEL_72;
            }

            goto LABEL_11;
          case 42:
            if (v15 != 42)
            {
              goto LABEL_72;
            }

            goto LABEL_11;
          case 43:
            if (v15 != 43)
            {
              goto LABEL_72;
            }

            goto LABEL_11;
          case 44:
            if (v15 != 44)
            {
              goto LABEL_72;
            }

            goto LABEL_11;
          case 45:
            if (v15 != 45)
            {
              goto LABEL_72;
            }

            goto LABEL_11;
          case 46:
            if (v15 != 46)
            {
              goto LABEL_72;
            }

            goto LABEL_11;
          case 47:
            if (v15 != 47)
            {
              goto LABEL_72;
            }

            goto LABEL_11;
          case 48:
            if (v15 != 50)
            {
              goto LABEL_72;
            }

            goto LABEL_11;
          default:
            break;
        }
      }

      if (v15 != v16)
      {
        break;
      }

LABEL_11:
      OUTLINED_FUNCTION_94();
      v19 = v19 && v17 == v18;
      if (!v19 && (sub_21B112D04() & 1) == 0 || v9[4] != v8[4])
      {
        break;
      }

      sub_21B111EC4();
      OUTLINED_FUNCTION_0_9();
      v21 = sub_21AFB94F8(&unk_2811FAAE0, v20, MEMORY[0x277D216D0]);
      v22 = OUTLINED_FUNCTION_85(v21);
      sub_21AFB7024();
      OUTLINED_FUNCTION_113();
      sub_21AFB7024();
      if (v22)
      {
        OUTLINED_FUNCTION_46_1();
        if (!v19)
        {
          continue;
        }
      }

      goto LABEL_73;
    }

LABEL_72:
    sub_21AFB7024();
    OUTLINED_FUNCTION_60();
    sub_21AFB7024();
  }

LABEL_73:
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_77();
}

uint64_t sub_21AFBE344(uint64_t result, uint64_t a2)
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

uint64_t sub_21AFBE3A0(uint64_t a1, uint64_t a2)
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
      if (!v5 && (sub_21B112D04() & 1) == 0)
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

void sub_21AFBE42C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  OUTLINED_FUNCTION_76();
  v9 = v8;
  v11 = v10;
  v12 = type metadata accessor for Apple_Parsec_Feedback_V2_SearchResultForFeedback(0);
  OUTLINED_FUNCTION_1();
  v14 = v13;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_1_1();
  v108 = v16 - v17;
  v19 = MEMORY[0x28223BE20](v18);
  v21 = v96 - v20;
  v22 = MEMORY[0x28223BE20](v19);
  v24 = v96 - v23;
  v25 = MEMORY[0x28223BE20](v22);
  v27 = v96 - v26;
  MEMORY[0x28223BE20](v25);
  v29 = v96 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD434D8, &qword_21B116AB0);
  OUTLINED_FUNCTION_25(v30);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v31);
  v33 = v96 - v32;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD434E0, &qword_21B116AB8);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_83();
  v104 = v35;
  v103 = type metadata accessor for Apple_Parsec_Feedback_V2_ResultRankingFeedback(0);
  OUTLINED_FUNCTION_11_3();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_22_1();
  v107 = v37 - v38;
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_96();
  v40 = *(v11 + 16);
  if (v40 == *(v9 + 16) && v40 && v11 != v9)
  {
    v97 = v29;
    v98 = v33;
    v99 = v14;
    v41 = 0;
    OUTLINED_FUNCTION_20_2();
    v43 = *(v42 + 72);
    v105 = v7;
    v106 = v12;
    v101 = v44;
    v96[2] = v9 + v45;
    v96[3] = v11 + v45;
    v96[1] = v43;
    while (1)
    {
      OUTLINED_FUNCTION_8_8();
      sub_21AFB7598();
      if (v41 == v101)
      {
        break;
      }

      v100 = v41;
      OUTLINED_FUNCTION_8_8();
      v46 = v107;
      sub_21AFB7598();
      if (*v7 != *v46)
      {
        goto LABEL_43;
      }

      v47 = *(v103 + 40);
      v48 = *(v102 + 48);
      v49 = v104;
      sub_21AFC1EF8(v105 + v47);
      sub_21AFC1EF8(v107 + v47);
      OUTLINED_FUNCTION_37_1(v49, 1, v12);
      if (v51)
      {
        OUTLINED_FUNCTION_37_1(v49 + v48, 1, v12);
        if (!v51)
        {
          goto LABEL_40;
        }

        sub_21AF99BE0(v49, &qword_27CD434D8, &qword_21B116AB0);
      }

      else
      {
        v50 = v98;
        sub_21AFC1EF8(v49);
        OUTLINED_FUNCTION_37_1(v49 + v48, 1, v12);
        if (v51)
        {
          OUTLINED_FUNCTION_56();
          sub_21AFB7024();
LABEL_40:
          v93 = &qword_27CD434E0;
          v94 = &qword_21B116AB8;
          v95 = v49;
          goto LABEL_42;
        }

        OUTLINED_FUNCTION_54();
        v52 = v97;
        sub_21AFB6800();
        if (*&v50[*(v12 + 20)] != *&v52[*(v12 + 20)])
        {

          v53 = OUTLINED_FUNCTION_105();
          v55 = sub_21B03D03C(v53, v54);

          if (!v55)
          {
            OUTLINED_FUNCTION_2_10();
            sub_21AFB7024();
            sub_21AFB7024();
            v93 = &qword_27CD434D8;
            v94 = &qword_21B116AB0;
            v95 = v104;
LABEL_42:
            sub_21AF99BE0(v95, v93, v94);
            goto LABEL_43;
          }
        }

        v56 = sub_21B111EC4();
        OUTLINED_FUNCTION_0_9();
        sub_21AFB94F8(&unk_2811FAAE0, v57, MEMORY[0x277D216D0]);
        sub_21B1123C4();
        OUTLINED_FUNCTION_7_6();
        sub_21AFB7024();
        sub_21AFB7024();
        sub_21AF99BE0(v104, &qword_27CD434D8, &qword_21B116AB0);
        if ((v56 & 1) == 0)
        {
          goto LABEL_43;
        }
      }

      v58 = v105[1];
      v59 = *(v107 + 8);
      v60 = *(v58 + 16);
      if (v60 != *(v59 + 16))
      {
        goto LABEL_43;
      }

      if (v60 && v58 != v59)
      {
        OUTLINED_FUNCTION_33_2();
        v63 = v61 + v62;
        v65 = v64 + v62;
        v67 = *(v66 + 72);
        while (1)
        {
          OUTLINED_FUNCTION_1_8();
          sub_21AFB7598();
          OUTLINED_FUNCTION_1_8();
          sub_21AFB7598();
          v68 = *(v12 + 20);
          v69 = *&v27[v68];
          v70 = *&v24[v68];
          if (v69 != v70)
          {

            v71 = sub_21B03D03C(v69, v70);

            if (!v71)
            {
              break;
            }
          }

          v72 = sub_21B111EC4();
          OUTLINED_FUNCTION_0_9();
          sub_21AFB94F8(&unk_2811FAAE0, v73, MEMORY[0x277D216D0]);
          sub_21B1123C4();
          OUTLINED_FUNCTION_7_6();
          sub_21AFB7024();
          OUTLINED_FUNCTION_79();
          sub_21AFB7024();
          v12 = v106;
          if ((v72 & 1) == 0)
          {
            goto LABEL_43;
          }

          v65 += v67;
          v63 += v67;
          if (!--v60)
          {
            goto LABEL_24;
          }
        }

LABEL_38:
        OUTLINED_FUNCTION_2_10();
        sub_21AFB7024();
        sub_21AFB7024();
LABEL_43:
        OUTLINED_FUNCTION_59();
        sub_21AFB7024();
        sub_21AFB7024();
        goto LABEL_44;
      }

LABEL_24:
      v74 = v105[2];
      v75 = *(v107 + 16);
      v76 = *(v74 + 16);
      if (v76 != *(v75 + 16))
      {
        goto LABEL_43;
      }

      if (v76 && v74 != v75)
      {
        OUTLINED_FUNCTION_33_2();
        v79 = v77 + v78;
        v81 = v80 + v78;
        v83 = *(v82 + 72);
        do
        {
          OUTLINED_FUNCTION_1_8();
          OUTLINED_FUNCTION_111();
          sub_21AFB7598();
          OUTLINED_FUNCTION_1_8();
          v84 = v108;
          sub_21AFB7598();
          v85 = *(v12 + 20);
          v86 = *&v21[v85];
          v87 = *(v84 + v85);
          if (v86 != v87)
          {

            v88 = sub_21B03D03C(v86, v87);

            if (!v88)
            {
              goto LABEL_38;
            }
          }

          v89 = sub_21B111EC4();
          OUTLINED_FUNCTION_0_9();
          sub_21AFB94F8(&unk_2811FAAE0, v90, MEMORY[0x277D216D0]);
          sub_21B1123C4();
          OUTLINED_FUNCTION_7_6();
          sub_21AFB7024();
          sub_21AFB7024();
          v12 = v106;
          if ((v89 & 1) == 0)
          {
            goto LABEL_43;
          }

          v81 += v83;
          v79 += v83;
        }

        while (--v76);
      }

      if (*(v105 + 6) != *(v107 + 24) || *(v105 + 4) != *(v107 + 32))
      {
        goto LABEL_43;
      }

      sub_21B111EC4();
      OUTLINED_FUNCTION_0_9();
      sub_21AFB94F8(&unk_2811FAAE0, v91, MEMORY[0x277D216D0]);
      v7 = v105;
      v92 = sub_21B1123C4();
      sub_21AFB7024();
      sub_21AFB7024();
      if (v92)
      {
        v41 = v100 + 1;
        if (v100 + 1 != v101)
        {
          continue;
        }
      }

      goto LABEL_44;
    }

    __break(1u);
  }

  else
  {
LABEL_44:
    OUTLINED_FUNCTION_88();
    OUTLINED_FUNCTION_77();
  }
}

void sub_21AFBECAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_76();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12(0) - 8;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_22_1();
  MEMORY[0x28223BE20](v14);
  v15 = *(v11 + 16);
  if (v15 == *(v9 + 16) && v15 && v11 != v9)
  {
    OUTLINED_FUNCTION_20_2();
    v17 = v11 + v16;
    v18 = v9 + v16;
    v20 = *(v19 + 72);
    do
    {
      sub_21AFB7598();
      OUTLINED_FUNCTION_107();
      sub_21AFB7598();
      v21 = OUTLINED_FUNCTION_48_1();
      v22 = v7(v21);
      OUTLINED_FUNCTION_60();
      sub_21AFB7024();
      sub_21AFB7024();
      if ((v22 & 1) == 0)
      {
        break;
      }

      v18 += v20;
      v17 += v20;
      --v15;
    }

    while (v15);
  }

  OUTLINED_FUNCTION_77();
}

void sub_21AFBEE20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  OUTLINED_FUNCTION_76();
  v9 = v8;
  v10 = OUTLINED_FUNCTION_36_0();
  v11 = type metadata accessor for Apple_Parsec_Feedback_V2_ResultSectionForFeedback(v10);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_2();
  v161 = v14 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CD434E8, &unk_21B116AC0);
  OUTLINED_FUNCTION_25(v15);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v16);
  v18 = &v142 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD434F0, &unk_21B1181C0);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v20);
  v22 = &v142 - v21;
  v172 = type metadata accessor for Apple_Parsec_Feedback_V2_SearchResultForFeedback(0);
  OUTLINED_FUNCTION_1();
  v164 = v23;
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_1_1();
  v171 = v25 - v26;
  v28 = MEMORY[0x28223BE20](v27);
  v30 = &v142 - v29;
  v31 = MEMORY[0x28223BE20](v28);
  v33 = &v142 - v32;
  v34 = MEMORY[0x28223BE20](v31);
  v36 = &v142 - v35;
  MEMORY[0x28223BE20](v34);
  v162 = &v142 - v37;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD434D8, &qword_21B116AB0);
  OUTLINED_FUNCTION_25(v38);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_83();
  v163 = v40;
  v165 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD434E0, &qword_21B116AB8);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_83();
  v166 = v42;
  type metadata accessor for Apple_Parsec_Feedback_V2_ResultRankingFeedback(0);
  OUTLINED_FUNCTION_1();
  v167 = v43;
  v168 = v44;
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_1_1();
  v170 = v45 - v46;
  MEMORY[0x28223BE20](v47);
  v49 = &v142 - v48;
  type metadata accessor for Apple_Parsec_Feedback_V2_SectionRankingFeedback(0);
  OUTLINED_FUNCTION_11_3();
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_22_1();
  v52 = MEMORY[0x28223BE20](v51);
  v55 = *(v7 + 16);
  if (v55 == *(v9 + 16) && v55 && v7 != v9)
  {
    v153 = v30;
    v154 = v11;
    v157 = v52;
    v158 = v55;
    v159 = &v142 - v53;
    v160 = v54;
    v56 = 0;
    OUTLINED_FUNCTION_20_2();
    v155 = v9 + v58;
    v60 = *(v59 + 72);
    v169 = v49;
    v152 = v7 + v58;
    v151 = v60;
    while (1)
    {
      v61 = v57;
      sub_21AFB7598();
      v156 = v56;
      if (v56 == v158)
      {
        break;
      }

      v62 = v160;
      sub_21AFB7598();
      v63 = v62;
      v64 = v61;
      if (*v61 != *v62)
      {
        goto LABEL_62;
      }

      v65 = v61[1];
      v66 = v62[1];
      v67 = *(v65 + 16);
      if (v67 != *(v66 + 16))
      {
        goto LABEL_62;
      }

      if (v67 && v65 != v66)
      {
        v68 = 0;
        v69 = (*(v168 + 80) + 32) & ~*(v168 + 80);
        v149 = v66 + v69;
        v147 = v18;
        v146 = v22;
        v145 = v19;
        v144 = v65;
        v150 = v66;
        v143 = v67;
        v142 = v65 + v69;
        do
        {
          if (v68 >= *(v65 + 16))
          {
            goto LABEL_67;
          }

          v70 = v169;
          v71 = v68;
          OUTLINED_FUNCTION_8_8();
          sub_21AFB7598();
          v72 = *(v150 + 16);
          v148 = v71;
          if (v71 >= v72)
          {
            goto LABEL_68;
          }

          OUTLINED_FUNCTION_8_8();
          v73 = v170;
          sub_21AFB7598();
          v74 = v172;
          if (*v70 != *v73)
          {
            goto LABEL_61;
          }

          v75 = v166;
          v76 = *(v167 + 40);
          v77 = *(v165 + 48);
          v78 = v169;
          sub_21AFC1EF8(&v169[v76]);
          sub_21AFC1EF8(v170 + v76);
          OUTLINED_FUNCTION_37_1(v75, 1, v74);
          if (v80)
          {
            OUTLINED_FUNCTION_37_1(v75 + v77, 1, v74);
            if (!v80)
            {
              goto LABEL_59;
            }
          }

          else
          {
            v79 = v163;
            sub_21AFC1EF8(v75);
            OUTLINED_FUNCTION_37_1(v75 + v77, 1, v74);
            if (v80)
            {
              OUTLINED_FUNCTION_56();
              sub_21AFB7024();
LABEL_59:
              v140 = &qword_27CD434E0;
              v141 = &qword_21B116AB8;
              goto LABEL_60;
            }

            OUTLINED_FUNCTION_54();
            v81 = v162;
            sub_21AFB6800();
            if (*(v79 + *(v74 + 20)) != *&v81[*(v74 + 20)] && (, , v82 = OUTLINED_FUNCTION_52(), v84 = sub_21B03D03C(v82, v83), , , !v84) || (sub_21B111EC4(), OUTLINED_FUNCTION_0_9(), sub_21AFB94F8(&unk_2811FAAE0, v85, MEMORY[0x277D216D0]), OUTLINED_FUNCTION_107(), (sub_21B1123C4() & 1) == 0))
            {
              OUTLINED_FUNCTION_2_10();
              sub_21AFB7024();
              sub_21AFB7024();
              v140 = &qword_27CD434D8;
              v141 = &qword_21B116AB0;
LABEL_60:
              sub_21AF99BE0(v75, v140, v141);
              goto LABEL_61;
            }

            OUTLINED_FUNCTION_2_10();
            sub_21AFB7024();
            sub_21AFB7024();
            v78 = v169;
          }

          sub_21AF99BE0(v75, &qword_27CD434D8, &qword_21B116AB0);
          v86 = *(v78 + 1);
          v87 = *(v170 + 8);
          v88 = *(v86 + 16);
          if (v88 != *(v87 + 16))
          {
            goto LABEL_61;
          }

          if (v88 && v86 != v87)
          {
            OUTLINED_FUNCTION_33_2();
            v91 = v89 + v90;
            v93 = v92 + v90;
            v95 = *(v94 + 72);
            while (1)
            {
              OUTLINED_FUNCTION_1_8();
              OUTLINED_FUNCTION_109();
              sub_21AFB7598();
              OUTLINED_FUNCTION_1_8();
              sub_21AFB7598();
              if (*&v36[*(v74 + 20)] != *&v33[*(v74 + 20)])
              {

                v96 = OUTLINED_FUNCTION_97();
                v98 = sub_21B03D03C(v96, v97);

                if (!v98)
                {
                  break;
                }
              }

              v99 = sub_21B111EC4();
              OUTLINED_FUNCTION_0_9();
              sub_21AFB94F8(&unk_2811FAAE0, v100, MEMORY[0x277D216D0]);
              sub_21B1123C4();
              OUTLINED_FUNCTION_7_6();
              sub_21AFB7024();
              sub_21AFB7024();
              v74 = v172;
              if ((v99 & 1) == 0)
              {
                goto LABEL_61;
              }

              v93 += v95;
              v91 += v95;
              if (!--v88)
              {
                goto LABEL_31;
              }
            }

LABEL_56:
            OUTLINED_FUNCTION_2_10();
            sub_21AFB7024();
            sub_21AFB7024();
LABEL_61:
            OUTLINED_FUNCTION_59();
            sub_21AFB7024();
            sub_21AFB7024();
            goto LABEL_62;
          }

LABEL_31:
          v101 = *(v169 + 2);
          v102 = *(v170 + 16);
          v103 = *(v101 + 16);
          if (v103 != *(v102 + 16))
          {
            goto LABEL_61;
          }

          if (v103 && v101 != v102)
          {
            OUTLINED_FUNCTION_33_2();
            v106 = v104 + v105;
            v108 = v107 + v105;
            v110 = *(v109 + 72);
            do
            {
              OUTLINED_FUNCTION_1_8();
              sub_21AFB7598();
              OUTLINED_FUNCTION_1_8();
              v111 = v171;
              sub_21AFB7598();
              if (*&v30[*(v74 + 20)] != *(v111 + *(v74 + 20)))
              {

                v112 = OUTLINED_FUNCTION_97();
                v114 = sub_21B03D03C(v112, v113);

                if (!v114)
                {
                  goto LABEL_56;
                }
              }

              v115 = sub_21B111EC4();
              OUTLINED_FUNCTION_0_9();
              sub_21AFB94F8(&unk_2811FAAE0, v116, MEMORY[0x277D216D0]);
              sub_21B1123C4();
              OUTLINED_FUNCTION_7_6();
              sub_21AFB7024();
              sub_21AFB7024();
              v74 = v172;
              if ((v115 & 1) == 0)
              {
                goto LABEL_61;
              }

              v108 += v110;
              v106 += v110;
            }

            while (--v103);
          }

          if (*(v169 + 6) != *(v170 + 24) || *(v169 + 4) != *(v170 + 32))
          {
            goto LABEL_61;
          }

          sub_21B111EC4();
          OUTLINED_FUNCTION_0_9();
          sub_21AFB94F8(&unk_2811FAAE0, v117, MEMORY[0x277D216D0]);
          v118 = sub_21B1123C4();
          sub_21AFB7024();
          sub_21AFB7024();
          v18 = v147;
          v22 = v146;
          v19 = v145;
          v64 = v159;
          v63 = v160;
          v65 = v144;
          if ((v118 & 1) == 0)
          {
            goto LABEL_62;
          }

          v68 = v148 + 1;
        }

        while (v148 + 1 != v143);
      }

      v119 = *(v157 + 36);
      v120 = *(v19 + 48);
      v121 = v63;
      sub_21AFC1EF8(v64 + v119);
      sub_21AFC1EF8(v121 + v119);
      v122 = v154;
      OUTLINED_FUNCTION_37_1(v22, 1, v154);
      if (v80)
      {
        OUTLINED_FUNCTION_37_1(&v22[v120], 1, v122);
        if (!v80)
        {
          goto LABEL_65;
        }

        v123 = OUTLINED_FUNCTION_107();
        sub_21AF99BE0(v123, v124, &unk_21B116AC0);
        v126 = v159;
        v125 = v160;
      }

      else
      {
        sub_21AFC1EF8(v22);
        OUTLINED_FUNCTION_37_1(&v22[v120], 1, v122);
        if (v127)
        {
          sub_21AFB7024();
LABEL_65:
          sub_21AF99BE0(v22, &qword_27CD434F0, &unk_21B1181C0);
LABEL_62:
          sub_21AFB7024();
          sub_21AFB7024();
          goto LABEL_63;
        }

        v128 = v161;
        sub_21AFB6800();
        v135 = static Apple_Parsec_Feedback_V2_ResultSectionForFeedback.== infix(_:_:)(v18, v128, v129, v130, v131, v132, v133, v134, v142, v143, v144, v145, v146, v147, v148, v149, v150, v151, v152, v153);
        sub_21AFB7024();
        sub_21AFB7024();
        v136 = OUTLINED_FUNCTION_107();
        sub_21AF99BE0(v136, v137, &unk_21B116AC0);
        v126 = v159;
        v125 = v160;
        if ((v135 & 1) == 0)
        {
          goto LABEL_62;
        }
      }

      if (*(v126 + 4) != *(v125 + 4) || *(v126 + 3) != *(v125 + 3))
      {
        goto LABEL_62;
      }

      sub_21B111EC4();
      OUTLINED_FUNCTION_0_9();
      sub_21AFB94F8(&unk_2811FAAE0, v138, MEMORY[0x277D216D0]);
      v139 = sub_21B1123C4();
      sub_21AFB7024();
      sub_21AFB7024();
      if (v139)
      {
        v56 = v156 + 1;
        v57 = v159;
        v30 = v153;
        if (v156 + 1 != v158)
        {
          continue;
        }
      }

      goto LABEL_63;
    }

    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
  }

  else
  {
LABEL_63:
    OUTLINED_FUNCTION_77();
  }
}

uint64_t sub_21AFBFB34(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Parsec_Ondeviceanalytics_ContextDimensions(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD42FB8, &qword_21B114A28);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v35 - v8;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43330, &qword_21B115FF0);
  MEMORY[0x28223BE20](v40);
  v39 = &v35 - v10;
  v42 = type metadata accessor for Apple_Parsec_Ondeviceanalytics_AnalyticsReportsGroup(0);
  v11 = MEMORY[0x28223BE20](v42);
  v13 = (&v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v11);
  v16 = (&v35 - v15);
  v17 = *(a1 + 16);
  if (v17 != *(a2 + 16))
  {
    goto LABEL_36;
  }

  if (!v17 || a1 == a2)
  {
    v31 = 1;
    return v31 & 1;
  }

  v18 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v19 = a1 + v18;
  v20 = a2 + v18;
  v35 = *(v14 + 72);
  v36 = (&v35 - v15);
  v37 = v13;
  v38 = v4;
  while (1)
  {
    sub_21AFB7598();
    v41 = v19;
    sub_21AFB7598();
    v21 = *(v42 + 24);
    v22 = *(v40 + 48);
    v23 = v16 + v21;
    v24 = v39;
    sub_21AFC1EF8(v23);
    v25 = v13 + v21;
    v26 = v38;
    sub_21AFC1EF8(v25);
    if (__swift_getEnumTagSinglePayload(v24, 1, v26) != 1)
    {
      break;
    }

    if (__swift_getEnumTagSinglePayload(v24 + v22, 1, v26) != 1)
    {
      goto LABEL_33;
    }

    sub_21AF99BE0(v24, &qword_27CD42FB8, &qword_21B114A28);
    v16 = v36;
    v13 = v37;
LABEL_26:
    if ((sub_21AFC0110(*v16, *v13) & 1) == 0)
    {
      goto LABEL_35;
    }

    sub_21B111EC4();
    sub_21AFB94F8(&unk_2811FAAE0, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v31 = sub_21B1123C4();
    sub_21AFB7024();
    sub_21AFB7024();
    if (v31)
    {
      v20 += v35;
      v19 = v41 + v35;
      if (--v17)
      {
        continue;
      }
    }

    return v31 & 1;
  }

  sub_21AFC1EF8(v24);
  if (__swift_getEnumTagSinglePayload(v24 + v22, 1, v26) != 1)
  {
    sub_21AFB6800();
    v27 = *v9 == *v6 && *(v9 + 1) == *(v6 + 1);
    if (!v27 && (sub_21B112D04() & 1) == 0 || (*(v9 + 2) == *(v6 + 2) ? (v28 = *(v9 + 3) == *(v6 + 3)) : (v28 = 0), !v28 && (sub_21B112D04() & 1) == 0 || v9[32] != v6[32] || (*(v9 + 5) == *(v6 + 5) ? (v29 = *(v9 + 6) == *(v6 + 6)) : (v29 = 0), !v29 && (sub_21B112D04() & 1) == 0)))
    {
      sub_21AFB7024();
      sub_21AFB7024();
      v32 = &qword_27CD42FB8;
      v33 = &qword_21B114A28;
      goto LABEL_34;
    }

    sub_21B111EC4();
    sub_21AFB94F8(&unk_2811FAAE0, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v30 = sub_21B1123C4();
    sub_21AFB7024();
    sub_21AFB7024();
    sub_21AF99BE0(v24, &qword_27CD42FB8, &qword_21B114A28);
    v16 = v36;
    v13 = v37;
    if ((v30 & 1) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_26;
  }

  sub_21AFB7024();
LABEL_33:
  v32 = &qword_27CD43330;
  v33 = &qword_21B115FF0;
LABEL_34:
  sub_21AF99BE0(v24, v32, v33);
LABEL_35:
  sub_21AFB7024();
  sub_21AFB7024();
LABEL_36:
  v31 = 0;
  return v31 & 1;
}

uint64_t sub_21AFC0110(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Parsec_Ondeviceanalytics_SpotlightCarryReport(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Apple_Parsec_Ondeviceanalytics_SpotlightFeatureReport(0);
  MEMORY[0x28223BE20](v7);
  v51 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD432F8, &qword_21B115FD0);
  MEMORY[0x28223BE20](v54);
  v58 = &v47 - v9;
  v10 = type metadata accessor for Apple_Parsec_Ondeviceanalytics_AnalyticsReport.OneOf_Report(0);
  v11 = MEMORY[0x28223BE20](v10);
  v52 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v53 = &v47 - v14;
  MEMORY[0x28223BE20](v13);
  v57 = &v47 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD42F90, &unk_21B115FC0);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v47 - v17;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43318, &qword_21B115FE8);
  MEMORY[0x28223BE20](v59);
  v20 = &v47 - v19;
  v56 = type metadata accessor for Apple_Parsec_Ondeviceanalytics_AnalyticsReport(0);
  v21 = MEMORY[0x28223BE20](v56);
  v23 = &v47 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v26 = &v47 - v25;
  v27 = *(a1 + 16);
  if (v27 != *(a2 + 16))
  {
    goto LABEL_29;
  }

  if (!v27 || a1 == a2)
  {
    v45 = 1;
    return v45 & 1;
  }

  v47 = v7;
  v48 = v6;
  v55 = v18;
  v28 = (*(v24 + 80) + 32) & ~*(v24 + 80);
  v29 = a1 + v28;
  v30 = a2 + v28;
  v31 = *(v24 + 72);
  v49 = v31;
  v50 = &v47 - v25;
  while (1)
  {
    sub_21AFB7598();
    v60 = v27;
    sub_21AFB7598();
    v32 = *(v59 + 48);
    sub_21AFC1EF8(v26);
    sub_21AFC1EF8(v23);
    if (__swift_getEnumTagSinglePayload(v20, 1, v10) != 1)
    {
      break;
    }

    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(&v20[v32], 1, v10);
    v34 = v60;
    if (EnumTagSinglePayload != 1)
    {
      sub_21AFB7024();
LABEL_24:
      sub_21AFB7024();
      sub_21AF99BE0(v20, &qword_27CD43318, &qword_21B115FE8);
      goto LABEL_29;
    }

LABEL_19:
    sub_21AF99BE0(v20, &qword_27CD42F90, &unk_21B115FC0);
    sub_21B111EC4();
    sub_21AFB94F8(&unk_2811FAAE0, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v45 = sub_21B1123C4();
    sub_21AFB7024();
    sub_21AFB7024();
    if (v45)
    {
      v30 += v31;
      v29 += v31;
      v27 = v34 - 1;
      if (v27)
      {
        continue;
      }
    }

    return v45 & 1;
  }

  sub_21AFC1EF8(v20);
  if (__swift_getEnumTagSinglePayload(&v20[v32], 1, v10) == 1)
  {
    sub_21AFB7024();
    sub_21AFB7024();
    goto LABEL_24;
  }

  sub_21AFB6800();
  sub_21AFB7598();
  sub_21AFB7598();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v35 = v52;
    sub_21AFB7598();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v34 = v60;
    if (EnumCaseMultiPayload != 1)
    {
      goto LABEL_26;
    }

    v37 = v48;
    sub_21AFB6800();
    v38 = static Apple_Parsec_Ondeviceanalytics_SpotlightCarryReport.== infix(_:_:)(v35, v37);
    sub_21AFB7024();
    sub_21AFB7024();
    v26 = v50;
    if ((v38 & 1) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_18;
  }

  v39 = v53;
  sub_21AFB7598();
  v40 = swift_getEnumCaseMultiPayload();
  v34 = v60;
  if (v40 == 1)
  {
LABEL_26:
    sub_21AFB7024();
    sub_21AF99BE0(v58, &qword_27CD432F8, &qword_21B115FD0);
    goto LABEL_28;
  }

  v41 = v51;
  sub_21AFB6800();
  v42 = *(v47 + 20);
  v43 = *&v39[v42];
  v44 = *&v41[v42];
  v26 = v50;
  if (v43 == v44 || sub_21AFB2DBC(v43, v44))
  {
    sub_21B111EC4();
    sub_21AFB94F8(&unk_2811FAAE0, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    if (sub_21B1123C4())
    {
      sub_21AFB7024();
      sub_21AFB7024();
LABEL_18:
      sub_21AFB7024();
      sub_21AFB7024();
      sub_21AFB7024();
      v31 = v49;
      goto LABEL_19;
    }
  }

  sub_21AFB7024();
  sub_21AFB7024();
LABEL_27:
  sub_21AFB7024();
LABEL_28:
  sub_21AFB7024();
  sub_21AFB7024();
  sub_21AF99BE0(v20, &qword_27CD42F90, &unk_21B115FC0);
  sub_21AFB7024();
  sub_21AFB7024();
LABEL_29:
  v45 = 0;
  return v45 & 1;
}

uint64_t sub_21AFC11A0(uint64_t a1)
{
  result = sub_21B111EC4();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_21AFC1258(uint64_t a1)
{
  sub_21AFC14A4(319, &qword_27CD43418, type metadata accessor for Apple_Parsec_Ondeviceanalytics_AnalyticsReport.OneOf_Report, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_21B111EC4();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_21AFC130C(uint64_t a1)
{
  result = type metadata accessor for Apple_Parsec_Ondeviceanalytics_SpotlightFeatureReport(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Apple_Parsec_Ondeviceanalytics_SpotlightCarryReport(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_21AFC13A8(uint64_t a1)
{
  sub_21AFC14A4(319, &qword_27CD43440, type metadata accessor for Apple_Parsec_Ondeviceanalytics_AnalyticsReport, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_21B111EC4();
    if (v2 <= 0x3F)
    {
      sub_21AFC14A4(319, &qword_27CD43448, type metadata accessor for Apple_Parsec_Ondeviceanalytics_ContextDimensions, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_21AFC14A4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t __swift_get_extra_inhabitant_indexTm()
{
  OUTLINED_FUNCTION_71();
  if (v2)
  {
    return OUTLINED_FUNCTION_35_1(*(v0 + 8));
  }

  OUTLINED_FUNCTION_86();
  v4 = OUTLINED_FUNCTION_78(*(v1 + 32));

  return __swift_getEnumTagSinglePayload(v4, v5, v6);
}

void __swift_store_extra_inhabitant_indexTm()
{
  OUTLINED_FUNCTION_34_2();
  if (v3)
  {
    *(v1 + 8) = (v0 - 1);
  }

  else
  {
    v4 = v2;
    sub_21B111EC4();
    v5 = OUTLINED_FUNCTION_64(*(v4 + 32));

    __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  }
}

uint64_t sub_21AFC160C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_21B111EC4();
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_21AFC16B4(uint64_t a1)
{
  sub_21AFC14A4(319, &qword_27CD43470, type metadata accessor for Apple_Parsec_Ondeviceanalytics_AnalyticsReportsGroup, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_21B111EC4();
    if (v2 <= 0x3F)
    {
      sub_21AFC14A4(319, &qword_27CD43478, type metadata accessor for Apple_Parsec_Ondeviceanalytics_ReportMetadata, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        sub_21AFC14A4(319, &qword_27CD43480, type metadata accessor for Apple_Parsec_Ondeviceanalytics_GlobalDimensions, MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_21AFC1808(uint64_t result, uint64_t a2)
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

void sub_21AFC1864(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  OUTLINED_FUNCTION_76();
  v12 = OUTLINED_FUNCTION_62();
  type metadata accessor for Apple_Parsec_Feedback_V2_ExperimentInfo(v12);
  OUTLINED_FUNCTION_11_3();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_19_3();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_31_2();
  if (v15 && v11 && v10 != v7)
  {
    OUTLINED_FUNCTION_20_2();
    OUTLINED_FUNCTION_95();
    while (1)
    {
      OUTLINED_FUNCTION_48_1();
      sub_21AFB7598();
      OUTLINED_FUNCTION_98();
      sub_21AFB7598();
      v15 = *v9 == *v8 && *(v9 + 8) == *(v8 + 8);
      if (!v15 && (sub_21B112D04() & 1) == 0)
      {
        break;
      }

      OUTLINED_FUNCTION_94();
      v18 = v15 && v16 == v17;
      if (!v18 && (sub_21B112D04() & 1) == 0)
      {
        break;
      }

      v19 = *(v9 + 32) == *(v8 + 32) && *(v9 + 40) == *(v8 + 40);
      if (!v19 && (sub_21B112D04() & 1) == 0 || *(v9 + 48) != *(v8 + 48) || *(v9 + 52) != *(v8 + 52))
      {
        break;
      }

      sub_21B111EC4();
      OUTLINED_FUNCTION_0_9();
      v21 = sub_21AFB94F8(&unk_2811FAAE0, v20, MEMORY[0x277D216D0]);
      v22 = OUTLINED_FUNCTION_85(v21);
      sub_21AFB7024();
      OUTLINED_FUNCTION_113();
      sub_21AFB7024();
      if (v22)
      {
        OUTLINED_FUNCTION_46_1();
        if (!v15)
        {
          continue;
        }
      }

      goto LABEL_29;
    }

    sub_21AFB7024();
    OUTLINED_FUNCTION_60();
    sub_21AFB7024();
  }

LABEL_29:
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_77();
}

uint64_t sub_21AFC1EF8(uint64_t a1)
{
  OUTLINED_FUNCTION_81();
  __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_4_1();
  v4 = OUTLINED_FUNCTION_52();
  v5(v4);
  return v1;
}

uint64_t OUTLINED_FUNCTION_23_2(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_21B1121E4();
}

uint64_t OUTLINED_FUNCTION_27_2()
{

  return sub_21B111EA4();
}

void OUTLINED_FUNCTION_29_2()
{
  *v0 = 0;
  v0[1] = 0xE000000000000000;
  v0[2] = 0;
  v0[3] = 0xE000000000000000;
}

uint64_t OUTLINED_FUNCTION_35_1@<X0>(unint64_t a1@<X8>)
{
  if (a1 >= 0xFFFFFFFF)
  {
    LODWORD(a1) = -1;
  }

  return (a1 + 1);
}

uint64_t OUTLINED_FUNCTION_38_1()
{

  return __swift_storeEnumTagSinglePayload(v2 + v1, 0, 1, v0);
}

uint64_t OUTLINED_FUNCTION_40_1(uint64_t a1)
{

  return sub_21B1123C4();
}

void *OUTLINED_FUNCTION_44_1(void *result)
{
  *v1 = result;
  *result = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_63@<X0>(uint64_t a1@<X8>)
{
  *(v2 + 40) = a1;

  return sub_21AFC1EF8(v1 + a1);
}

uint64_t OUTLINED_FUNCTION_69(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_85(uint64_t a1)
{

  return sub_21B1123C4();
}

uint64_t OUTLINED_FUNCTION_86()
{

  return sub_21B111EC4();
}

uint64_t OUTLINED_FUNCTION_89()
{

  return sub_21AFC1EF8(v0);
}

void OUTLINED_FUNCTION_92()
{
  *v0 = 0;
  v0[1] = 0xE000000000000000;
  v0[2] = 0;
  v0[3] = 0xE000000000000000;
}

uint64_t OUTLINED_FUNCTION_101(uint64_t a1)
{

  return sub_21AFC1EF8(a1);
}

uint64_t OUTLINED_FUNCTION_104(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_21B112214();
}

uint64_t OUTLINED_FUNCTION_116(uint64_t a1)
{

  return sub_21AFC1EF8(a1);
}

void sub_21AFC2798(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  *a2 = 0;
  a2[1] = 0xE000000000000000;
  a2[2] = 0;
  a2[3] = 0xE000000000000000;
  a2[4] = 0;
  a2[5] = 0xE000000000000000;
  a2[6] = 0;
  a2[7] = 0xE000000000000000;
  type metadata accessor for Apple_Parsec_Ondeviceanalytics_GlobalDimensions(0);
  v41 = a2;
  sub_21B111EB4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43500, &qword_21B116C80);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21B113DB0;
  *(inited + 32) = 1;
  *(inited + 40) = swift_getKeyPath();
  *(inited + 48) = 3;
  *(inited + 56) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43508, &qword_21B116CC8);
  sub_21AFC2C84();
  v6 = sub_21B112334();
  v7 = swift_initStackObject();
  *(v7 + 16) = xmmword_21B113D90;
  *(v7 + 32) = 2;
  *(v7 + 40) = swift_getKeyPath();
  v39 = sub_21B112334();
  OUTLINED_FUNCTION_1_9();
  v11 = v10 & v9;
  v13 = (v12 + 63) >> 6;
  if ((v10 & v9) != 0)
  {
    while (1)
    {
      v14 = v8;
LABEL_6:
      v15 = *(*(v6 + 48) + (__clz(__rbit64(v11)) | (v14 << 6)));

      sub_21B0B1054(v15);
      if (v2)
      {

        v30 = a1;
        goto LABEL_23;
      }

      if (!v16)
      {
        break;
      }

      v11 &= v11 - 1;
      swift_setAtWritableKeyPath();

      v8 = v14;
      if (!v11)
      {
        goto LABEL_3;
      }
    }

    sub_21B112904();

    v31 = sub_21B0C0144(v15);
    MEMORY[0x21CEE9770](v31);

    MEMORY[0x21CEE9770](0x73696D2073692027, 0xEE000A3A676E6973);
    v30 = a1;
    sub_21B111294();
    v32 = sub_21B0C00A0();

    v33 = MEMORY[0x21CEE9880](v32, MEMORY[0x277D837D0]);
    v35 = v34;

    MEMORY[0x21CEE9770](v33, v35);

    sub_21AF94BA0();
    swift_allocError();
    *v36 = 0x746E6174736E6F43;
    *(v36 + 8) = 0xEA00000000002720;
    *(v36 + 16) = 1;
    swift_willThrow();
LABEL_23:

    sub_21B1112A4();
    OUTLINED_FUNCTION_0_1();
    (*(v37 + 8))(v30);
LABEL_25:
    sub_21AFC2CD8(v41);
  }

  else
  {
    while (1)
    {
LABEL_3:
      v14 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v14 >= v13)
      {
        break;
      }

      v11 = *(v6 + 64 + 8 * v14);
      ++v8;
      if (v11)
      {
        goto LABEL_6;
      }
    }

    OUTLINED_FUNCTION_1_9();
    v20 = v19 & v18;
    v22 = (v21 + 63) >> 6;
    if ((v19 & v18) == 0)
    {
      goto LABEL_12;
    }

    do
    {
      v23 = v17;
LABEL_15:
      v24 = *(*(v39 + 48) + (__clz(__rbit64(v20)) | (v23 << 6)));

      sub_21B0B1054(v24);
      if (v3)
      {
        sub_21B1112A4();
        OUTLINED_FUNCTION_0_1();
        (*(v38 + 8))(a1);

        goto LABEL_25;
      }

      v20 &= v20 - 1;
      if (v25)
      {
        swift_setAtWritableKeyPath();
      }

      v17 = v23;
    }

    while (v20);
LABEL_12:
    while (1)
    {
      v23 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v23 >= v22)
      {

        v26 = sub_21B111A74();
        v28 = v27;
        sub_21B1112A4();
        OUTLINED_FUNCTION_0_1();
        (*(v29 + 8))(a1);

        v41[6] = v26;
        v41[7] = v28;
        return;
      }

      v20 = *(v39 + 64 + 8 * v23);
      ++v17;
      if (v20)
      {
        goto LABEL_15;
      }
    }

LABEL_27:
    __break(1u);
  }
}

unint64_t sub_21AFC2C84()
{
  result = qword_27CD43510;
  if (!qword_27CD43510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD43510);
  }

  return result;
}

uint64_t sub_21AFC2CD8(uint64_t a1)
{
  v2 = type metadata accessor for Apple_Parsec_Ondeviceanalytics_GlobalDimensions(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_21AFC2D48(void *result, uint64_t a2, uint64_t a3)
{
  v5 = result;
  v6 = *(v3 + 128);
  if (v6 != 1)
  {
    goto LABEL_5;
  }

  if (qword_27CD42A18 != -1)
  {
    result = swift_once();
  }

  if (byte_27CD6E890 == 1)
  {
LABEL_5:
    result = sub_21B0BBD24(v6, v5, v12);
    if (!v4)
    {
      swift_getObjectType();
      sub_21AF92198(v12, v11);
      sub_21AFC555C(v3, __src, &qword_27CD43550, &unk_21B116E50);
      v7 = swift_allocObject();
      sub_21AF81D68(v11, v7 + 16);
      memcpy((v7 + 56), __src, 0x81uLL);
      sub_21B111444();

      sub_21AFC555C(v3 + 80, __src, &qword_27CD42EF0, qword_21B114840);
      v8 = __src[3];
      sub_21AFA8918(__src, &qword_27CD42EF0, qword_21B114840);
      if (v8)
      {
        __swift_project_boxed_opaque_existential_0(v12, v12[3]);
        v9 = *(v3 + 24);
        v14.type = *(v3 + 8);
        v14.name = v9;
        v14.namespace = *(v3 + 40);
        v14.fields._rawValue = *(v3 + 56);
        sub_21AFC3468(&v14, v13);
        sub_21AFC367C();
        sub_21AFC5398(v13);
        sub_21AFC37D8(v5);
      }

      return __swift_destroy_boxed_opaque_existential_0(v12);
    }
  }

  return result;
}

uint64_t sub_21AFC2F5C(void *a1, uint64_t a2)
{
  v29 = a2;
  v4 = sub_21B112444();
  v25 = *(v4 - 8);
  v26 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_21B111564();
  v27 = *(v7 - 8);
  v28 = v7;
  v8 = MEMORY[0x28223BE20](v7);
  v24 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v23 - v10;
  v12 = sub_21B111EE4();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_21B111ED4();
  type metadata accessor for Apple_Parsec_Ondeviceanalytics_AnalyticsReportsUploadEvent(0);
  sub_21AFC5504();
  v16 = sub_21B1120C4();
  v18 = (v13 + 8);
  if (v2)
  {

    (*v18)(v15, v12);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43560, &unk_21B116E60);
    sub_21B111584();
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_21B113D90;
    (*(v27 + 104))(v24, *MEMORY[0x277D3E158], v28);
    sub_21B112434();
    sub_21B112414();
    (*(v25 + 8))(v6, v26);
    sub_21B111574();
  }

  else
  {
    v20 = v16;
    v21 = v17;
    (*v18)(v15, v12);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43560, &unk_21B116E60);
    sub_21B111584();
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_21B113D90;
    (*(v27 + 104))(v11, *MEMORY[0x277D3E150], v28);
    sub_21AF99818(v20, v21);
    sub_21B111574();
    sub_21AF99728(v20, v21);
  }

  return v19;
}

uint64_t sub_21AFC3468@<X0>(SwiftAvro::AvroRecordSchema *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = off_282C95D88;
  v6 = type metadata accessor for Apple_Parsec_Ondeviceanalytics_AnalyticsReportsUploadEvent(0);
  result = v5(0, v6);
  if (!v2)
  {
    v9 = v8;
    v25 = 0;
    v21 = result;
    sub_21AFC5454(a1, &v22);
    AvroRecord.init(schema:)(&v23, a1);
    rawValue = a1->fields._rawValue;
    v11 = rawValue[2];
    if (v11)
    {
      v12 = (rawValue + 6);
      v20 = v9;
      do
      {
        v13 = *(v12 - 2);
        v14 = *(v12 - 1);
        v15 = v13 == 0x7265746E695F7369 && v14 == 0xEB000000006C616ELL;
        if (!v15 && (sub_21B112D04() & 1) == 0)
        {
          v16 = v13 == 0x64616F6C796170 && v14 == 0xE700000000000000;
          if (v16 || (sub_21B112D04() & 1) != 0)
          {
            static AvroValue.bytes(_:)(v21, v9, v24);

            v17 = v25;
            AvroRecord.set(_:forField:)(v24, v13, v14);
            v25 = v17;
            if (v17)
            {
              sub_21AFC54B0(v24);
              sub_21AF99728(v21, v20);

              v22 = v23;
              return sub_21AFC5398(&v22);
            }

            sub_21AFC54B0(v24);
            v9 = v20;
          }
        }

        v12 += 24;
        --v11;
      }

      while (v11);
    }

    result = sub_21AF99728(v21, v9);
    name = v23.schema.name;
    *a2 = v23.schema.type;
    *(a2 + 16) = name;
    v19 = *&v23.schema.fields._rawValue;
    *(a2 + 32) = v23.schema.namespace;
    *(a2 + 48) = v19;
  }

  return result;
}

uint64_t sub_21AFC367C()
{
  sub_21AFC555C((v0 + 10), &v12, &qword_27CD42EF0, qword_21B114840);
  if (!v13)
  {
    return sub_21AFA8918(&v12, &qword_27CD42EF0, qword_21B114840);
  }

  sub_21AF81D68(&v12, v14);
  v1._rawValue = *v0;
  v2 = AvroRecord.encodeAsSingleObject(withFingerprint:)(v1);
  v4 = v3;
  v5 = objc_allocWithZone(MEMORY[0x277D4C310]);
  sub_21AF99818(v2, v4);
  v6 = sub_21AFC5244(18, v2, v4);
  if (v6)
  {
    v7 = v6;
    v8 = v15;
    v9 = v16;
    __swift_project_boxed_opaque_existential_0(v14, v15);
    (*(v9 + 8))(v7, v8, v9);
  }

  else
  {
    sub_21AFC53EC();
    swift_allocError();
    *v11 = 1;
    swift_willThrow();
  }

  sub_21AF99728(v2, v4);
  return __swift_destroy_boxed_opaque_existential_0(v14);
}

uint64_t sub_21AFC37D8(uint64_t a1)
{
  v73 = a1;
  v2 = sub_21B111334();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v76 = &v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v77 = &v63 - v6;
  v7 = sub_21B1112A4();
  v82 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_21B110F84();
  v71 = *(v10 - 8);
  v72 = v10;
  MEMORY[0x28223BE20](v10);
  v70 = &v63 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_21B111514();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v74 = &v63 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v1 + 64);
  ObjectType = swift_getObjectType();
  result = dynamic_cast_existential_1_conditional(v15, ObjectType, &protocol descriptor for WeeklyTaskHostEnvironment);
  if (!result)
  {
    return result;
  }

  v19 = v18;
  v67 = v13;
  v68 = v12;
  v20 = swift_getObjectType();
  v21 = *(v19 + 32);
  swift_unknownObjectRetain();
  if ((v21(v20, v19) & 1) == 0)
  {
    return swift_unknownObjectRelease();
  }

  v22 = swift_getObjectType();
  v23 = dynamic_cast_existential_1_conditional(v15, v22, &protocol descriptor for SODAHostEnvironment);
  if (!v23)
  {
    if (qword_2811FAAD8 != -1)
    {
      swift_once();
    }

    v31 = sub_21B1122D4();
    __swift_project_value_buffer(v31, qword_2811FAB28);
    v32 = sub_21B1122B4();
    v33 = sub_21B112704();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_21AF80000, v32, v33, "Failed to find SODAHostEnvironment for harvesting telemetry", v34, 2u);
      MEMORY[0x21CEEA9A0](v34, -1, -1);
    }

    sub_21AFC53EC();
    swift_allocError();
    *v35 = 3;
    swift_willThrow();
    return swift_unknownObjectRelease();
  }

  v64 = v24;
  v65 = v23;
  swift_unknownObjectRetain();
  sub_21B111534();
  result = sub_21B1114B4();
  v26 = *(result + 16);
  v27 = v26 - v25;
  v66 = v15;
  if (v26 == v25)
  {

    v28 = 0;
    v29 = 0;
    v7 = v67;
    v30 = v75;
LABEL_31:
    v50 = v70;
    sub_21B110F64();
    sub_21B110F44();
    v52 = v51;
    (*(v71 + 8))(v50, v72);
    v53 = v30;
    v54 = sub_21B0BE474();
    v38 = v30;
    v27 = v68;
    if (v53)
    {
      if (qword_2811FAAD8 != -1)
      {
        goto LABEL_42;
      }

      goto LABEL_33;
    }

    v60 = (v52 - v54) / 604800.0 + -1.0;
    v61 = swift_getObjectType();
    result = sub_21B0C67B8(v61, v64);
    if ((*&v60 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      v62 = v68;
      if (v60 > -9.22337204e18)
      {
        if (v60 < 9.22337204e18)
        {
          sub_21AFCB8A0(v29, v28, v60);
          swift_unknownObjectRelease_n();
          swift_unknownObjectRelease();
          return (*(v7 + 8))(v74, v62);
        }

        goto LABEL_48;
      }

LABEL_47:
      __break(1u);
LABEL_48:
      __break(1u);
      return result;
    }

LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  if (v26 <= v25)
  {
    __break(1u);
    goto LABEL_44;
  }

  if (v25 < 0)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  if (!v26)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v69 = 0;
  v81 = *(v82 + 16);
  v82 += 16;
  v36 = (*(v82 + 64) + 32) & ~*(v82 + 64);
  v37 = *(v82 + 56);
  v79 = v3 + 16;
  v80 = v37;
  v78 = v3 + 8;
  v38 = (v82 - 8);
  v63 = result;
  v39 = result + v36 + v25 * v37;
  while (1)
  {
    v81(v9, v39, v7);
    v40 = sub_21B111294();
    if (!*(v40 + 16) || (v41 = sub_21AF98B58(0x735F657669746361, 0xEF736E6F69737365), (v42 & 1) == 0))
    {

      goto LABEL_23;
    }

    v43 = v77;
    (*(v3 + 16))(v77, *(v40 + 56) + *(v3 + 72) * v41, v2);

    sub_21B111314();
    (*(v3 + 8))(v43, v2);
    if (swift_dynamicCast())
    {
      break;
    }

LABEL_23:
    v44 = sub_21B111294();
    if (*(v44 + 16) && (v45 = sub_21AF98B58(0x65735F6C61746F74, 0xEE00736E6F697373), (v46 & 1) != 0))
    {
      v47 = v2;
      v48 = v76;
      (*(v3 + 16))(v76, *(v44 + 56) + *(v3 + 72) * v45, v47);

      sub_21B111314();
      v49 = v48;
      v2 = v47;
      (*(v3 + 8))(v49, v47);
      (*v38)(v9, v7);
      if (swift_dynamicCast())
      {
        if (__CFADD__(v69, v83))
        {
          goto LABEL_41;
        }

        LODWORD(v69) = v69 + v83;
      }
    }

    else
    {

      (*v38)(v9, v7);
    }

    v39 += v80;
    if (!--v27)
    {

      v29 = HIDWORD(v69);
      v28 = v69;
      v30 = v75;
      v7 = v67;
      goto LABEL_31;
    }
  }

  if (!__CFADD__(HIDWORD(v69), v83))
  {
    HIDWORD(v69) += v83;
    goto LABEL_23;
  }

  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  swift_once();
LABEL_33:
  v55 = sub_21B1122D4();
  __swift_project_value_buffer(v55, qword_2811FAB28);
  v56 = sub_21B1122B4();
  v57 = sub_21B112704();
  if (os_log_type_enabled(v56, v57))
  {
    v58 = swift_slowAlloc();
    *v58 = 0;
    _os_log_impl(&dword_21AF80000, v56, v57, "Failed to find data start time for harvesting telemetry", v58, 2u);
    MEMORY[0x21CEEA9A0](v58, -1, -1);
  }

  sub_21AFC53EC();
  swift_allocError();
  *v59 = 3;
  swift_willThrow();

  swift_unknownObjectRelease_n();
  return (*(v7 + 8))(v74, v27);
}

uint64_t sub_21AFC4100(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43580, &qword_21B116E70);
  OUTLINED_FUNCTION_1();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  v7 = &v10[-v6];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_21AFC52D0();
  sub_21B112F34();
  v11 = 0;
  sub_21AFC57F0();
  sub_21B112AC4();
  v8 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD47280, &qword_21B12A150);
  v10[15] = 1;
  sub_21AFC5844(&qword_27CD43590, MEMORY[0x277D83808], MEMORY[0x277D83528]);
  sub_21B112A84();
  (*(v4 + 8))(v7, v2);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v8;
}

uint64_t sub_21AFC430C(uint64_t a1, char a2, uint64_t a3)
{
  sub_21AF92198(a1, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43528, &qword_21B128A70);
  result = swift_dynamicCast();
  if (result)
  {
    if (sub_21AFAC470(a2 & 1, v7))
    {
      if (a3)
      {
        if (v8)
        {

          v6 = sub_21B09984C(a3, v8);
          swift_bridgeObjectRelease_n();
          if (v6)
          {
            return 1;
          }
        }

        return 0;
      }

      if (!v8)
      {
        return 1;
      }
    }

    return 0;
  }

  return result;
}

BOOL sub_21AFC43DC(char a1, uint64_t a2, char a3, uint64_t a4)
{
  v6 = (a1 & 1) == 0;
  if (a1)
  {
    v7 = 0x6867696C746F7073;
  }

  else
  {
    v7 = 0xD000000000000010;
  }

  if (v6)
  {
    v8 = 0x800000021B12FFA0;
  }

  else
  {
    v8 = 0xEE00797272614374;
  }

  v9 = (a3 & 1) == 0;
  if (a3)
  {
    v10 = 0x6867696C746F7073;
  }

  else
  {
    v10 = 0xD000000000000010;
  }

  if (v9)
  {
    v11 = 0x800000021B12FFA0;
  }

  else
  {
    v11 = 0xEE00797272614374;
  }

  if (v7 == v10 && v8 == v11)
  {

    if (a2)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v13 = sub_21B112D04();

    result = 0;
    if ((v13 & 1) == 0)
    {
      return result;
    }

    if (a2)
    {
LABEL_19:
      if (a4)
      {

        v15 = sub_21B09984C(a2, a4);

        if (v15)
        {
          return 1;
        }
      }

      return 0;
    }
  }

  return !a4;
}

uint64_t sub_21AFC44E8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x795464616F6C7075 && a2 == 0xEA00000000006570;
  if (v4 || (sub_21B112D04() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x800000021B132E70 == a2)
  {

    return 1;
  }

  else
  {
    v7 = sub_21B112D04();

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

uint64_t sub_21AFC45D4(char a1)
{
  if (a1)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 0x795464616F6C7075;
  }
}

uint64_t sub_21AFC461C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21AFC44E8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21AFC4664@<X0>(_BYTE *a1@<X8>)
{
  result = sub_21AFC45C0();
  *a1 = result;
  return result;
}

uint64_t sub_21AFC468C(uint64_t a1)
{
  v2 = sub_21AFC52D0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21AFC46C8(uint64_t a1)
{
  v2 = sub_21AFC52D0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21AFC4704(void *a1, char a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43530, &unk_21B116E40);
  OUTLINED_FUNCTION_1();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  v12 = v14 - v11;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_21AFC52D0();
  sub_21B112F44();
  v17 = a2 & 1;
  v16 = 0;
  sub_21AFC5324();
  sub_21B112B54();
  if (!v3)
  {
    v14[1] = a3;
    v15 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD47280, &qword_21B12A150);
    sub_21AFC5844(&qword_27CD43548, MEMORY[0x277D837D8], MEMORY[0x277D83508]);
    sub_21B112B04();
  }

  return (*(v9 + 8))(v12, v7);
}

uint64_t sub_21AFC48D8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_21AFC4100(a1);
  if (!v2)
  {
    *a2 = result & 1;
    *(a2 + 8) = v5;
  }

  return result;
}

uint64_t sub_21AFC4948(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = sub_21B110D94();
  OUTLINED_FUNCTION_1();
  v60 = v11;
  v13 = MEMORY[0x28223BE20](v12);
  v15 = &v44[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v13);
  v17 = &v44[-v16];
  *(v5 + 16) = 0;
  sub_21AFC555C(a3, __dst, &qword_27CD43568, &unk_21B1290A0);
  if (!__dst[3])
  {
    v20 = a4;
    sub_21AFA8918(__dst, &qword_27CD43568, &unk_21B1290A0);
LABEL_7:
    sub_21AFC55C4();
    swift_allocError();
    *v21 = 0xD00000000000001BLL;
    v21[1] = 0x800000021B132E50;
    swift_willThrow();
    swift_unknownObjectRelease();
    sub_21AFA8918(v20, &qword_27CD42EF0, qword_21B114840);
    sub_21AFA8918(a3, &qword_27CD43568, &unk_21B1290A0);
    goto LABEL_14;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43528, &qword_21B128A70);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v20 = a4;
    goto LABEL_7;
  }

  v50 = v5;
  v45 = LOBYTE(v57[0]);
  v18 = v57[1];
  sub_21AFC555C(a4, v58, &qword_27CD42EF0, qword_21B114840);
  v48 = a4;
  v49 = a3;
  if (v18)
  {
    v19 = v18;
  }

  else
  {
    v19 = sub_21B112334();
  }

  v46 = v19;
  v47 = a1;
  v57[8] = a1;
  v57[9] = a2;
  v57[15] = v19;
  type metadata accessor for UploadBlock();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v23 = objc_opt_self();

  v24 = [v23 bundleForClass_];
  v25 = sub_21B1123D4();
  v26 = sub_21B1123D4();
  v27 = [v24 URLForResource:v25 withExtension:v26];

  if (!v27)
  {
    sub_21AFC53EC();
    swift_allocError();
    *v32 = 0;
    swift_willThrow();

    goto LABEL_13;
  }

  sub_21B110D34();

  v28 = v60;
  (*(v60 + 32))(v17, v15, v10);
  sub_21B110B84();
  swift_allocObject();
  sub_21B110B74();
  v29 = v51;
  v30 = sub_21B110DC4();
  if (v29)
  {
    (*(v28 + 8))(v17, v10);

LABEL_13:
    v5 = v50;
    OUTLINED_FUNCTION_1_10(v48);
    sub_21AFA8918(v49, &qword_27CD43568, &unk_21B1290A0);
    OUTLINED_FUNCTION_1_10(v58);

    swift_unknownObjectRelease();
    goto LABEL_14;
  }

  v34 = v30;
  v35 = v31;
  sub_21AFC5618();
  sub_21B110B64();
  v5 = v50;
  v36 = OUTLINED_FUNCTION_2_11();
  v37(v36);
  sub_21AF99728(v34, v35);

  *&v57[1] = v52;
  v57[3] = v53;
  v57[4] = v54;
  *&v57[5] = v55;
  v57[7] = v56;
  sub_21AFC555C(v58, &v57[10], &qword_27CD42EF0, qword_21B114840);
  LOBYTE(v57[16]) = v45;
  v38 = sub_21B110DF4();
  if (v39 >> 60 != 15)
  {
    v41 = v38;
    v42 = v39;
    sub_21AF99818(v38, v39);
    v43 = sub_21AFC566C(v41, v42);

    sub_21AFC5440(v41, v42);
    sub_21AFA8918(v48, &qword_27CD42EF0, qword_21B114840);
    sub_21AFA8918(v49, &qword_27CD43568, &unk_21B1290A0);
    sub_21AFA8918(v58, &qword_27CD42EF0, qword_21B114840);
    v57[0] = v43;
    v5 = v50;
    memcpy(__dst, v57, 0x81uLL);
    memcpy((v50 + 24), __dst, 0x81uLL);
    return v5;
  }

  sub_21AFC53EC();
  swift_allocError();
  *v40 = 1;
  swift_willThrow();

  OUTLINED_FUNCTION_1_10(v48);
  sub_21AFA8918(v49, &qword_27CD43568, &unk_21B1290A0);
  OUTLINED_FUNCTION_1_10(v58);
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_1_10(&v57[10]);

LABEL_14:
  type metadata accessor for UploadBlock();
  swift_deallocPartialClassInstance();
  return v5;
}

uint64_t sub_21AFC4FDC(void *a1, uint64_t a2, uint64_t a3)
{
  sub_21AFC2D48(a1, a2, a3);
  if (!v4)
  {
    *(v3 + 16) = 1;
  }

  return 1;
}

uint64_t sub_21AFC501C()
{
  sub_21AFA8918(v0 + 24, &qword_27CD43550, &unk_21B116E50);

  return MEMORY[0x2821FE8D8](v0, 153, 7);
}

uint64_t sub_21AFC5088(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 16))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_21AFC50DC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_21AFC5198()
{
  result = qword_27CD43518;
  if (!qword_27CD43518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD43518);
  }

  return result;
}

unint64_t sub_21AFC51F0()
{
  result = qword_27CD43520;
  if (!qword_27CD43520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD43520);
  }

  return result;
}

id sub_21AFC5244(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 >> 60 == 15)
  {
    v5 = 0;
  }

  else
  {
    v5 = sub_21B110E34();
    sub_21AFC5440(a2, a3);
  }

  v8 = [v3 initWithType:a1 data:v5];

  return v8;
}

unint64_t sub_21AFC52D0()
{
  result = qword_27CD43538;
  if (!qword_27CD43538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD43538);
  }

  return result;
}

unint64_t sub_21AFC5324()
{
  result = qword_27CD43540;
  if (!qword_27CD43540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD43540);
  }

  return result;
}

unint64_t sub_21AFC53EC()
{
  result = qword_27CD43558;
  if (!qword_27CD43558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD43558);
  }

  return result;
}

uint64_t sub_21AFC5440(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_21AF99728(result, a2);
  }

  return result;
}

unint64_t sub_21AFC5504()
{
  result = qword_27CD433D8;
  if (!qword_27CD433D8)
  {
    type metadata accessor for Apple_Parsec_Ondeviceanalytics_AnalyticsReportsUploadEvent(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD433D8);
  }

  return result;
}

uint64_t sub_21AFC555C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

unint64_t sub_21AFC55C4()
{
  result = qword_27CD43570;
  if (!qword_27CD43570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD43570);
  }

  return result;
}

unint64_t sub_21AFC5618()
{
  result = qword_27CD43578;
  if (!qword_27CD43578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD43578);
  }

  return result;
}

void *sub_21AFC566C(uint64_t a1, unint64_t a2)
{
  v4 = sub_21B110EA4();
  v5 = *(v4 - 8);
  result = MEMORY[0x28223BE20](v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  switch(a2 >> 62)
  {
    case 1uLL:
      if (!__OFSUB__(HIDWORD(a1), a1))
      {
        v9 = HIDWORD(a1) - a1;
        goto LABEL_6;
      }

      __break(1u);
      goto LABEL_12;
    case 2uLL:
      v11 = *(a1 + 16);
      v10 = *(a1 + 24);
      v9 = v10 - v11;
      if (!__OFSUB__(v10, v11))
      {
        goto LABEL_6;
      }

LABEL_12:
      __break(1u);
      return result;
    case 3uLL:
      goto LABEL_9;
    default:
      v9 = BYTE6(a2);
LABEL_6:
      if (!v9)
      {
        goto LABEL_9;
      }

      v12 = sub_21AF98C84(v9, 0);
      v13 = sub_21B110DE4();
      sub_21AF99728(a1, a2);
      (*(v5 + 8))(v8, v4);
      if (v13 != v9)
      {
        __break(1u);
LABEL_9:
        sub_21AF99728(a1, a2);
        return MEMORY[0x277D84F90];
      }

      return v12;
  }
}