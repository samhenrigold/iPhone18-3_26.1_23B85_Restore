uint64_t sub_26BD6E5E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v7 = OUTLINED_FUNCTION_142_0();
  v9 = v8(v7);
  if (*(v5 + *(v9 + 20)) != *(v4 + *(v9 + 20)))
  {

    v10 = OUTLINED_FUNCTION_173();
    v11 = a4(v10);

    if ((v11 & 1) == 0)
    {
      return 0;
    }
  }

  sub_26BDA0850();
  OUTLINED_FUNCTION_0_8();
  sub_26BD6C1DC(v12, v13, MEMORY[0x277D216D0]);
  OUTLINED_FUNCTION_242();
  return sub_26BDA0BB0() & 1;
}

BOOL sub_26BD6E6BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_26BDA0810();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v270 = &v253 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v271 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804490C8, &qword_26BDA7780);
  v7 = MEMORY[0x28223BE20](v271);
  v257 = &v253 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v261 = &v253 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v263 = &v253 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v265 = &v253 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v269 = &v253 - v16;
  MEMORY[0x28223BE20](v15);
  v18 = &v253 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280448F88, &qword_26BDA5440);
  v20 = MEMORY[0x28223BE20](v19 - 8);
  v256 = &v253 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v255 = &v253 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v258 = &v253 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v259 = &v253 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v260 = &v253 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v262 = &v253 - v31;
  v32 = MEMORY[0x28223BE20](v30);
  v264 = &v253 - v33;
  v34 = MEMORY[0x28223BE20](v32);
  v266 = &v253 - v35;
  v36 = MEMORY[0x28223BE20](v34);
  v267 = &v253 - v37;
  v38 = MEMORY[0x28223BE20](v36);
  v268 = &v253 - v39;
  v40 = MEMORY[0x28223BE20](v38);
  v42 = &v253 - v41;
  MEMORY[0x28223BE20](v40);
  v44 = &v253 - v43;
  swift_beginAccess();
  v45 = *(a1 + 16);
  v46 = *(a1 + 24);
  swift_beginAccess();
  v47 = v45 == *(a2 + 16) && v46 == *(a2 + 24);
  if (!v47 && (sub_26BDA0FB0() & 1) == 0)
  {
    return 0;
  }

  swift_beginAccess();
  v48 = *(a1 + 32);
  v49 = *(a1 + 40);
  swift_beginAccess();
  v50 = v48 == *(a2 + 32) && v49 == *(a2 + 40);
  if (!v50 && (sub_26BDA0FB0() & 1) == 0)
  {
    return 0;
  }

  swift_beginAccess();
  v51 = *(a1 + 48);
  swift_beginAccess();
  if ((sub_26BCFF1F4(v51, *(a2 + 48)) & 1) == 0)
  {
    return 0;
  }

  swift_beginAccess();
  v52 = *(a1 + 56);
  v53 = *(a1 + 64);
  swift_beginAccess();
  v54 = v52 == *(a2 + 56) && v53 == *(a2 + 64);
  if (!v54 && (sub_26BDA0FB0() & 1) == 0)
  {
    return 0;
  }

  swift_beginAccess();
  v55 = *(a1 + 72);
  swift_beginAccess();
  if (v55 != *(a2 + 72))
  {
    return 0;
  }

  swift_beginAccess();
  v56 = *(a1 + 80);
  v57 = *(a1 + 88);
  swift_beginAccess();
  v58 = v56 == *(a2 + 80) && v57 == *(a2 + 88);
  if (!v58 && (sub_26BDA0FB0() & 1) == 0)
  {
    return 0;
  }

  v253 = v5;
  v254 = v4;
  swift_beginAccess();
  sub_26BD31AF8();
  swift_beginAccess();
  v59 = *(v271 + 48);
  sub_26BD31AF8();
  v60 = v254;
  sub_26BD31AF8();
  if (__swift_getEnumTagSinglePayload(v18, 1, v60) == 1)
  {

    sub_26BD04E80(v44, &qword_280448F88, &qword_26BDA5440);
    if (__swift_getEnumTagSinglePayload(&v18[v59], 1, v60) != 1)
    {
      goto LABEL_28;
    }

    sub_26BD04E80(v18, &qword_280448F88, &qword_26BDA5440);
  }

  else
  {
    sub_26BD31AF8();
    if (__swift_getEnumTagSinglePayload(&v18[v59], 1, v60) == 1)
    {

      sub_26BD04E80(v44, &qword_280448F88, &qword_26BDA5440);
      (*(v253 + 8))(v42, v60);
      goto LABEL_28;
    }

    v63 = v60;
    v64 = v253;
    v65 = v270;
    (*(v253 + 32))(v270, &v18[v59], v63);
    sub_26BD6C1DC(&qword_2804490D0, MEMORY[0x277D215C8], MEMORY[0x277D215D8]);

    LOBYTE(v63) = sub_26BDA0BB0();
    v66 = *(v64 + 8);
    v66(v65, v254);
    sub_26BD04E80(v44, &qword_280448F88, &qword_26BDA5440);
    v66(v42, v254);
    v60 = v254;
    sub_26BD04E80(v18, &qword_280448F88, &qword_26BDA5440);
    if ((v63 & 1) == 0)
    {
      goto LABEL_30;
    }
  }

  v67 = (a1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__userEnteredFirstName);
  swift_beginAccess();
  v68 = *v67;
  v69 = v67[1];
  v70 = (a2 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__userEnteredFirstName);
  swift_beginAccess();
  v71 = v68 == *v70 && v69 == v70[1];
  if (!v71 && (sub_26BDA0FB0() & 1) == 0)
  {
    goto LABEL_30;
  }

  v72 = (a1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__userEnteredLastName);
  swift_beginAccess();
  v73 = *v72;
  v74 = v72[1];
  v75 = (a2 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__userEnteredLastName);
  swift_beginAccess();
  v76 = v73 == *v75 && v74 == v75[1];
  if (!v76 && (sub_26BDA0FB0() & 1) == 0)
  {
    goto LABEL_30;
  }

  v77 = (a1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__userEnteredEmail);
  swift_beginAccess();
  v78 = *v77;
  v79 = v77[1];
  v80 = (a2 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__userEnteredEmail);
  swift_beginAccess();
  v81 = v78 == *v80 && v79 == v80[1];
  if (!v81 && (sub_26BDA0FB0() & 1) == 0)
  {
    goto LABEL_30;
  }

  v82 = (a1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__userEnteredPhoneNumber);
  swift_beginAccess();
  v83 = *v82;
  v84 = v82[1];
  v85 = (a2 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__userEnteredPhoneNumber);
  swift_beginAccess();
  v86 = v83 == *v85 && v84 == v85[1];
  if (!v86 && (sub_26BDA0FB0() & 1) == 0)
  {
    goto LABEL_30;
  }

  v87 = (a1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__userEnteredCountryCode);
  swift_beginAccess();
  v88 = *v87;
  v89 = v87[1];
  v90 = (a2 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__userEnteredCountryCode);
  swift_beginAccess();
  v91 = v88 == *v90 && v89 == v90[1];
  if (!v91 && (sub_26BDA0FB0() & 1) == 0)
  {
    goto LABEL_30;
  }

  v92 = (a1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__userEnteredCountryCharCode);
  swift_beginAccess();
  v93 = *v92;
  v94 = v92[1];
  v95 = (a2 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__userEnteredCountryCharCode);
  swift_beginAccess();
  v96 = v93 == *v95 && v94 == v95[1];
  if (!v96 && (sub_26BDA0FB0() & 1) == 0)
  {
    goto LABEL_30;
  }

  swift_beginAccess();
  v97 = v268;
  sub_26BD31AF8();
  swift_beginAccess();
  v98 = *(v271 + 48);
  v18 = v269;
  sub_26BD31AF8();
  sub_26BD31AF8();
  if (__swift_getEnumTagSinglePayload(v18, 1, v60) == 1)
  {
    sub_26BD04E80(v97, &qword_280448F88, &qword_26BDA5440);
    if (__swift_getEnumTagSinglePayload(&v18[v98], 1, v60) == 1)
    {
      sub_26BD04E80(v18, &qword_280448F88, &qword_26BDA5440);
      goto LABEL_70;
    }

LABEL_28:
    v61 = v18;
LABEL_29:
    sub_26BD04E80(v61, &qword_2804490C8, &qword_26BDA7780);
    goto LABEL_30;
  }

  v99 = v267;
  sub_26BD31AF8();
  if (__swift_getEnumTagSinglePayload(&v18[v98], 1, v60) == 1)
  {
    sub_26BD04E80(v97, &qword_280448F88, &qword_26BDA5440);
    (*(v253 + 8))(v99, v60);
    goto LABEL_28;
  }

  v100 = v253;
  v101 = v270;
  (*(v253 + 32))(v270, &v18[v98], v60);
  sub_26BD6C1DC(&qword_2804490D0, MEMORY[0x277D215C8], MEMORY[0x277D215D8]);
  v102 = sub_26BDA0BB0();
  v103 = *(v100 + 8);
  v103(v101, v60);
  sub_26BD04E80(v97, &qword_280448F88, &qword_26BDA5440);
  v103(v267, v60);
  sub_26BD04E80(v18, &qword_280448F88, &qword_26BDA5440);
  if ((v102 & 1) == 0)
  {
    goto LABEL_30;
  }

LABEL_70:
  v104 = (a1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__userEnteredSecondaryDetails);
  swift_beginAccess();
  v105 = *v104;
  v106 = v104[1];
  v107 = (a2 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__userEnteredSecondaryDetails);
  swift_beginAccess();
  v108 = v105 == *v107 && v106 == v107[1];
  if (!v108 && (sub_26BDA0FB0() & 1) == 0)
  {
    goto LABEL_30;
  }

  v109 = (a1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__clickToChatEstimatedWaitTimeID);
  swift_beginAccess();
  v110 = *v109;
  v111 = v109[1];
  v112 = (a2 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__clickToChatEstimatedWaitTimeID);
  swift_beginAccess();
  v113 = v110 == *v112 && v111 == v112[1];
  if (!v113 && (sub_26BDA0FB0() & 1) == 0)
  {
    goto LABEL_30;
  }

  v114 = (a1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__chatTransactionID);
  swift_beginAccess();
  v115 = *v114;
  v116 = v114[1];
  v117 = (a2 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__chatTransactionID);
  swift_beginAccess();
  v118 = v115 == *v117 && v116 == v117[1];
  if (!v118 && (sub_26BDA0FB0() & 1) == 0)
  {
    goto LABEL_30;
  }

  v119 = OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__rtctOpted;
  swift_beginAccess();
  LODWORD(v119) = *(a1 + v119);
  v120 = OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__rtctOpted;
  swift_beginAccess();
  if (v119 != *(a2 + v120))
  {
    goto LABEL_30;
  }

  v121 = (a1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__reservationSlot);
  swift_beginAccess();
  v122 = *v121;
  v123 = v121[1];
  v124 = (a2 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__reservationSlot);
  swift_beginAccess();
  v125 = v122 == *v124 && v123 == v124[1];
  if (!v125 && (sub_26BDA0FB0() & 1) == 0)
  {
    goto LABEL_30;
  }

  v126 = (a1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__clickToCallEstimatedWaitTimeID);
  swift_beginAccess();
  v127 = *v126;
  v128 = v126[1];
  v129 = (a2 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__clickToCallEstimatedWaitTimeID);
  swift_beginAccess();
  v130 = v127 == *v129 && v128 == v129[1];
  v131 = v265;
  if (!v130 && (sub_26BDA0FB0() & 1) == 0)
  {
    goto LABEL_30;
  }

  swift_beginAccess();
  sub_26BD31AF8();
  swift_beginAccess();
  v132 = *(v271 + 48);
  sub_26BD31AF8();
  sub_26BD31AF8();
  if (__swift_getEnumTagSinglePayload(v131, 1, v60) == 1)
  {
    sub_26BD04E80(v266, &qword_280448F88, &qword_26BDA5440);
    if (__swift_getEnumTagSinglePayload(v131 + v132, 1, v60) == 1)
    {
      sub_26BD04E80(v131, &qword_280448F88, &qword_26BDA5440);
      goto LABEL_103;
    }

    goto LABEL_101;
  }

  v133 = v264;
  sub_26BD31AF8();
  if (__swift_getEnumTagSinglePayload(v131 + v132, 1, v60) == 1)
  {
    sub_26BD04E80(v266, &qword_280448F88, &qword_26BDA5440);
    (*(v253 + 8))(v133, v60);
LABEL_101:
    v61 = v131;
    goto LABEL_29;
  }

  v134 = v253;
  v135 = v270;
  (*(v253 + 32))(v270, v131 + v132, v60);
  sub_26BD6C1DC(&qword_2804490D0, MEMORY[0x277D215C8], MEMORY[0x277D215D8]);
  LODWORD(v269) = sub_26BDA0BB0();
  v136 = *(v134 + 8);
  v136(v135, v60);
  sub_26BD04E80(v266, &qword_280448F88, &qword_26BDA5440);
  v136(v133, v60);
  sub_26BD04E80(v131, &qword_280448F88, &qword_26BDA5440);
  if ((v269 & 1) == 0)
  {
    goto LABEL_30;
  }

LABEL_103:
  v137 = (a1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__authorizedServiceProviderReferredStoreID);
  swift_beginAccess();
  v138 = *v137;
  v139 = v137[1];
  v140 = (a2 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__authorizedServiceProviderReferredStoreID);
  swift_beginAccess();
  v141 = v138 == *v140 && v139 == v140[1];
  if (!v141 && (sub_26BDA0FB0() & 1) == 0)
  {
    goto LABEL_30;
  }

  v142 = (a1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__authorizedServiceProviderReferredStoreURL);
  swift_beginAccess();
  v143 = *v142;
  v144 = v142[1];
  v145 = (a2 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__authorizedServiceProviderReferredStoreURL);
  swift_beginAccess();
  v146 = v143 == *v145 && v144 == v145[1];
  if (!v146 && (sub_26BDA0FB0() & 1) == 0)
  {
    goto LABEL_30;
  }

  v147 = (a1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__authorizedServiceProviderReferredStoreAddress);
  swift_beginAccess();
  v148 = *v147;
  v149 = v147[1];
  v150 = (a2 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__authorizedServiceProviderReferredStoreAddress);
  swift_beginAccess();
  v151 = v148 == *v150 && v149 == v150[1];
  if (!v151 && (sub_26BDA0FB0() & 1) == 0)
  {
    goto LABEL_30;
  }

  v152 = (a1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__authorizedServiceProviderReferredStoreName);
  swift_beginAccess();
  v153 = *v152;
  v154 = v152[1];
  v155 = (a2 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__authorizedServiceProviderReferredStoreName);
  swift_beginAccess();
  v156 = v153 == *v155 && v154 == v155[1];
  if (!v156 && (sub_26BDA0FB0() & 1) == 0)
  {
    goto LABEL_30;
  }

  v157 = (a1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__authorizedServiceProviderReferredPhoneNumber);
  swift_beginAccess();
  v158 = *v157;
  v159 = v157[1];
  v160 = (a2 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__authorizedServiceProviderReferredPhoneNumber);
  swift_beginAccess();
  v161 = v158 == *v160 && v159 == v160[1];
  if (!v161 && (sub_26BDA0FB0() & 1) == 0)
  {
    goto LABEL_30;
  }

  v162 = (a1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__genesysSonarEmailAddress);
  swift_beginAccess();
  v163 = *v162;
  v164 = v162[1];
  v165 = (a2 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__genesysSonarEmailAddress);
  swift_beginAccess();
  v166 = v163 == *v165 && v164 == v165[1];
  if (!v166 && (sub_26BDA0FB0() & 1) == 0)
  {
    goto LABEL_30;
  }

  v167 = (a1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__emailAttachmentToken);
  swift_beginAccess();
  v168 = *v167;
  v169 = v167[1];
  v170 = (a2 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__emailAttachmentToken);
  swift_beginAccess();
  v171 = v168 == *v170 && v169 == v170[1];
  if (!v171 && (sub_26BDA0FB0() & 1) == 0)
  {
    goto LABEL_30;
  }

  v172 = (a1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__emailTransactionID);
  swift_beginAccess();
  v173 = *v172;
  v174 = v172[1];
  v175 = (a2 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__emailTransactionID);
  swift_beginAccess();
  v176 = v173 == *v175 && v174 == v175[1];
  if (!v176 && (sub_26BDA0FB0() & 1) == 0)
  {
    goto LABEL_30;
  }

  v177 = (a1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__emailAdditionalDetails);
  swift_beginAccess();
  v178 = *v177;
  v179 = v177[1];
  v180 = (a2 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__emailAdditionalDetails);
  swift_beginAccess();
  v181 = v178 == *v180 && v179 == v180[1];
  if (!v181 && (sub_26BDA0FB0() & 1) == 0)
  {
    goto LABEL_30;
  }

  v182 = (a1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__emailEstimatedWaitTime);
  swift_beginAccess();
  v183 = *v182;
  v184 = v182[1];
  v185 = (a2 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__emailEstimatedWaitTime);
  swift_beginAccess();
  v186 = v183 == *v185 && v184 == v185[1];
  if (!v186 && (sub_26BDA0FB0() & 1) == 0)
  {
    goto LABEL_30;
  }

  v187 = OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__emailFileAttachmentIds;
  swift_beginAccess();
  v188 = *(a1 + v187);
  v189 = OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__emailFileAttachmentIds;
  swift_beginAccess();
  if ((sub_26BCFF1F4(v188, *(a2 + v189)) & 1) == 0)
  {
    goto LABEL_30;
  }

  v190 = (a1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__mobileCarrierReferredName);
  swift_beginAccess();
  v191 = *v190;
  v192 = v190[1];
  v193 = (a2 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__mobileCarrierReferredName);
  swift_beginAccess();
  v194 = v191 == *v193 && v192 == v193[1];
  if (!v194 && (sub_26BDA0FB0() & 1) == 0)
  {
    goto LABEL_30;
  }

  v195 = (a1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__mobileCarrierReferredURL);
  swift_beginAccess();
  v196 = *v195;
  v197 = v195[1];
  v198 = (a2 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__mobileCarrierReferredURL);
  swift_beginAccess();
  v199 = v196 == *v198 && v197 == v198[1];
  if (!v199 && (sub_26BDA0FB0() & 1) == 0)
  {
    goto LABEL_30;
  }

  v200 = (a1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__resolvedArticle);
  swift_beginAccess();
  v201 = *v200;
  v202 = v200[1];
  v203 = (a2 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__resolvedArticle);
  swift_beginAccess();
  v204 = v201 == *v203 && v202 == v203[1];
  if (!v204 && (sub_26BDA0FB0() & 1) == 0)
  {
    goto LABEL_30;
  }

  v205 = (a1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__resolvedArticleTitle);
  swift_beginAccess();
  v206 = *v205;
  v207 = v205[1];
  v208 = (a2 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__resolvedArticleTitle);
  swift_beginAccess();
  v209 = v206 == *v208 && v207 == v208[1];
  if (!v209 && (sub_26BDA0FB0() & 1) == 0)
  {
    goto LABEL_30;
  }

  v210 = (a1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__resolvedArticleURL);
  swift_beginAccess();
  v211 = *v210;
  v212 = v210[1];
  v213 = (a2 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__resolvedArticleURL);
  swift_beginAccess();
  v214 = v211 == *v213 && v212 == v213[1];
  if (!v214 && (sub_26BDA0FB0() & 1) == 0)
  {
    goto LABEL_30;
  }

  swift_beginAccess();
  sub_26BD31AF8();
  swift_beginAccess();
  v215 = *(v271 + 48);
  v216 = v263;
  sub_26BD31AF8();
  sub_26BD31AF8();
  if (__swift_getEnumTagSinglePayload(v216, 1, v254) == 1)
  {
    sub_26BD04E80(v262, &qword_280448F88, &qword_26BDA5440);
    if (__swift_getEnumTagSinglePayload(v263 + v215, 1, v254) == 1)
    {
      sub_26BD04E80(v263, &qword_280448F88, &qword_26BDA5440);
      goto LABEL_186;
    }

    goto LABEL_184;
  }

  v217 = v263;
  sub_26BD31AF8();
  if (__swift_getEnumTagSinglePayload(v217 + v215, 1, v254) == 1)
  {
    sub_26BD04E80(v262, &qword_280448F88, &qword_26BDA5440);
    (*(v253 + 8))(v260, v254);
LABEL_184:
    v61 = v263;
    goto LABEL_29;
  }

  v218 = v253;
  v219 = v254;
  v220 = v263;
  v221 = v270;
  (*(v253 + 32))(v270, v263 + v215, v254);
  sub_26BD6C1DC(&qword_2804490D0, MEMORY[0x277D215C8], MEMORY[0x277D215D8]);
  v222 = v260;
  LODWORD(v269) = sub_26BDA0BB0();
  v223 = *(v218 + 8);
  v223(v221, v219);
  sub_26BD04E80(v262, &qword_280448F88, &qword_26BDA5440);
  v223(v222, v219);
  sub_26BD04E80(v220, &qword_280448F88, &qword_26BDA5440);
  if ((v269 & 1) == 0)
  {
    goto LABEL_30;
  }

LABEL_186:
  swift_beginAccess();
  sub_26BD31AF8();
  swift_beginAccess();
  v224 = *(v271 + 48);
  v225 = v261;
  sub_26BD31AF8();
  sub_26BD31AF8();
  if (__swift_getEnumTagSinglePayload(v225, 1, v254) != 1)
  {
    v226 = v261;
    sub_26BD31AF8();
    if (__swift_getEnumTagSinglePayload(v226 + v224, 1, v254) != 1)
    {
      v227 = v253;
      v228 = v254;
      v229 = v261;
      v230 = v270;
      (*(v253 + 32))(v270, v261 + v224, v254);
      sub_26BD6C1DC(&qword_2804490D0, MEMORY[0x277D215C8], MEMORY[0x277D215D8]);
      v231 = v258;
      LODWORD(v269) = sub_26BDA0BB0();
      v232 = *(v227 + 8);
      v232(v230, v228);
      sub_26BD04E80(v259, &qword_280448F88, &qword_26BDA5440);
      v232(v231, v228);
      sub_26BD04E80(v229, &qword_280448F88, &qword_26BDA5440);
      if (v269)
      {
        goto LABEL_193;
      }

LABEL_30:

      return 0;
    }

    sub_26BD04E80(v259, &qword_280448F88, &qword_26BDA5440);
    (*(v253 + 8))(v258, v254);
    goto LABEL_191;
  }

  sub_26BD04E80(v259, &qword_280448F88, &qword_26BDA5440);
  if (__swift_getEnumTagSinglePayload(v261 + v224, 1, v254) != 1)
  {
LABEL_191:
    v61 = v261;
    goto LABEL_29;
  }

  sub_26BD04E80(v261, &qword_280448F88, &qword_26BDA5440);
LABEL_193:
  v233 = (a1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__applicationData);
  swift_beginAccess();
  v235 = *v233;
  v234 = v233[1];
  v236 = (a2 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__applicationData);
  swift_beginAccess();
  v238 = *v236;
  v237 = v236[1];
  sub_26BCFEFC4(v235, v234);
  sub_26BCFEFC4(v238, v237);
  v239 = MEMORY[0x26D695520](v235, v234, v238, v237);
  sub_26BCFF01C(v238, v237);
  sub_26BCFF01C(v235, v234);
  if ((v239 & 1) == 0)
  {
    goto LABEL_30;
  }

  v240 = OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__isCustomerOptedForSms;
  swift_beginAccess();
  LODWORD(v240) = *(a1 + v240);
  v241 = OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__isCustomerOptedForSms;
  swift_beginAccess();
  if (v240 != *(a2 + v241))
  {
    goto LABEL_30;
  }

  swift_beginAccess();
  sub_26BD31AF8();
  swift_beginAccess();
  v242 = *(v271 + 48);
  v243 = v257;
  sub_26BD31AF8();
  sub_26BD31AF8();
  if (__swift_getEnumTagSinglePayload(v243, 1, v254) == 1)
  {

    sub_26BD04E80(v255, &qword_280448F88, &qword_26BDA5440);
    if (__swift_getEnumTagSinglePayload(v257 + v242, 1, v254) == 1)
    {
      sub_26BD04E80(v257, &qword_280448F88, &qword_26BDA5440);
      return 1;
    }

    goto LABEL_200;
  }

  v244 = v257;
  sub_26BD31AF8();
  if (__swift_getEnumTagSinglePayload(v244 + v242, 1, v254) == 1)
  {

    sub_26BD04E80(v255, &qword_280448F88, &qword_26BDA5440);
    (*(v253 + 8))(v256, v254);
LABEL_200:
    sub_26BD04E80(v257, &qword_2804490C8, &qword_26BDA7780);
    return 0;
  }

  v245 = v253;
  v246 = v257;
  v247 = v257 + v242;
  v248 = v270;
  v249 = v254;
  (*(v253 + 32))(v270, v247, v254);
  sub_26BD6C1DC(&qword_2804490D0, MEMORY[0x277D215C8], MEMORY[0x277D215D8]);
  v250 = v256;
  v251 = sub_26BDA0BB0();

  v252 = *(v245 + 8);
  v252(v248, v249);
  sub_26BD04E80(v255, &qword_280448F88, &qword_26BDA5440);
  v252(v250, v249);
  sub_26BD04E80(v246, &qword_280448F88, &qword_26BDA5440);
  return (v251 & 1) != 0;
}

uint64_t sub_26BD706C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_26BD6C1DC(&qword_28044AED8, type metadata accessor for TriageRequest.ExecuteSupportOption, &protocol conformance descriptor for TriageRequest.ExecuteSupportOption);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26BD70748(uint64_t a1)
{
  v2 = sub_26BD6C1DC(&qword_28044AC30, type metadata accessor for TriageRequest.ExecuteSupportOption, &protocol conformance descriptor for TriageRequest.ExecuteSupportOption);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26BD707B8(uint64_t a1, uint64_t a2)
{
  sub_26BD6C1DC(&qword_28044AC30, type metadata accessor for TriageRequest.ExecuteSupportOption, &protocol conformance descriptor for TriageRequest.ExecuteSupportOption);

  return sub_26BDA0A00();
}

uint64_t sub_26BD70850()
{
  v0 = sub_26BDA0B10();
  __swift_allocate_value_buffer(v0, qword_28044A748);
  __swift_project_value_buffer(v0, qword_28044A748);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804495C8, &unk_26BDA3CB0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804495D0, &qword_26BDA3510) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_26BDA77D0;
  v4 = v31 + v3;
  v5 = v31 + v3 + v1[14];
  *(v31 + v3) = 1;
  *v5 = "super_group_id";
  *(v5 + 8) = 14;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21888];
  v7 = sub_26BDA0AE0();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "prod_family_class_id";
  *(v9 + 8) = 20;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "prod_group_family_id";
  *(v11 + 1) = 20;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "serial_number_key";
  *(v13 + 1) = 17;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "serial_number";
  *(v15 + 1) = 13;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "carrier_name";
  *(v17 + 1) = 12;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "coverage_type";
  *(v19 + 1) = 13;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "is_owned_device";
  *(v21 + 1) = 15;
  v21[16] = 2;
  v8();
  v22 = (v4 + 8 * v2);
  v23 = v22 + v1[14];
  *v22 = 9;
  *v23 = "smb_enrollment_type";
  *(v23 + 1) = 19;
  v23[16] = 2;
  v8();
  v24 = (v4 + 9 * v2);
  v25 = v24 + v1[14];
  *v24 = 10;
  *v25 = "product_name";
  *(v25 + 1) = 12;
  v25[16] = 2;
  v8();
  v26 = (v4 + 10 * v2);
  v27 = v26 + v1[14];
  *v26 = 11;
  *v27 = "operating_system_version";
  *(v27 + 1) = 24;
  v27[16] = 2;
  v8();
  v28 = (v4 + 11 * v2);
  v29 = v28 + v1[14];
  *v28 = 12;
  *v29 = "eligible_product_id";
  *(v29 + 1) = 19;
  v29[16] = 2;
  v8();
  return sub_26BDA0AF0();
}

uint64_t TriageRequest.Product.decodeMessage<A>(decoder:)()
{
  v1 = v0;
  OUTLINED_FUNCTION_109();
  while (1)
  {
    OUTLINED_FUNCTION_167();
    result = sub_26BDA0900();
    if (v1 || (v3 & 1) != 0)
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
      case 10:
      case 11:
      case 12:
        OUTLINED_FUNCTION_129();
        sub_26BDA0990();
        goto LABEL_8;
      case 7:
        OUTLINED_FUNCTION_129();
        sub_26BDA0950();
        goto LABEL_8;
      case 8:
        OUTLINED_FUNCTION_129();
        sub_26BDA0920();
        goto LABEL_8;
      case 9:
        type metadata accessor for TriageRequest.Product(0);
        sub_26BDA0810();
        OUTLINED_FUNCTION_5_2();
        sub_26BD6C1DC(&qword_280449130, v4, MEMORY[0x277D215C0]);
        sub_26BDA09B0();
LABEL_8:
        v1 = 0;
        break;
      default:
        continue;
    }
  }
}

void TriageRequest.Product.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_246();
  OUTLINED_FUNCTION_197_0();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280448F88, &qword_26BDA5440);
  OUTLINED_FUNCTION_110(v4);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_128_0();
  v6 = sub_26BDA0810();
  OUTLINED_FUNCTION_18();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_44();
  v12 = v11 - v10;
  OUTLINED_FUNCTION_29();
  if (!v13 || (OUTLINED_FUNCTION_195_0(), sub_26BDA0AB0(), (v0 = v1) == 0))
  {
    OUTLINED_FUNCTION_29();
    if (!v14 || (OUTLINED_FUNCTION_195_0(), sub_26BDA0AB0(), (v0 = v1) == 0))
    {
      OUTLINED_FUNCTION_29();
      if (!v15 || (OUTLINED_FUNCTION_195_0(), sub_26BDA0AB0(), (v0 = v1) == 0))
      {
        OUTLINED_FUNCTION_29();
        if (!v16 || (OUTLINED_FUNCTION_195_0(), sub_26BDA0AB0(), (v0 = v1) == 0))
        {
          OUTLINED_FUNCTION_29();
          if (!v17 || (OUTLINED_FUNCTION_195_0(), sub_26BDA0AB0(), (v0 = v1) == 0))
          {
            OUTLINED_FUNCTION_29();
            if (!v18 || (OUTLINED_FUNCTION_195_0(), sub_26BDA0AB0(), (v0 = v1) == 0))
            {
              if (!*(v2 + 96) || (v1 = v0, OUTLINED_FUNCTION_235_0(), sub_26BDA0A70(), !v0))
              {
                if (*(v2 + 100) != 1 || (v1 = v0, OUTLINED_FUNCTION_235_0(), sub_26BDA0A40(), !v0))
                {
                  type metadata accessor for TriageRequest.Product(0);
                  sub_26BD31AF8();
                  OUTLINED_FUNCTION_238_0();
                  if (__swift_getEnumTagSinglePayload(v19, v20, v21) == 1)
                  {
                    sub_26BD04E80(v3, &qword_280448F88, &qword_26BDA5440);
                  }

                  else
                  {
                    (*(v8 + 32))(v12, v3, v6);
                    OUTLINED_FUNCTION_5_2();
                    sub_26BD6C1DC(v22, v23, MEMORY[0x277D215C0]);
                    v1 = v0;
                    sub_26BDA0AD0();
                    if (v0)
                    {
                      (*(v8 + 8))(v12, v6);
                      goto LABEL_29;
                    }

                    (*(v8 + 8))(v12, v6);
                  }

                  OUTLINED_FUNCTION_29();
                  if (!v24 || (OUTLINED_FUNCTION_195_0(), sub_26BDA0AB0(), !v1))
                  {
                    OUTLINED_FUNCTION_29();
                    if (!v25 || (OUTLINED_FUNCTION_195_0(), sub_26BDA0AB0(), !v1))
                    {
                      OUTLINED_FUNCTION_29();
                      if (!v26 || (OUTLINED_FUNCTION_195_0(), sub_26BDA0AB0(), !v1))
                      {
                        OUTLINED_FUNCTION_276_0();
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

LABEL_29:
  OUTLINED_FUNCTION_253();
  OUTLINED_FUNCTION_247();
}

void static TriageRequest.Product.== infix(_:_:)()
{
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_90();
  v3 = sub_26BDA0810();
  OUTLINED_FUNCTION_18();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_44();
  v9 = v8 - v7;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280448F88, &qword_26BDA5440);
  OUTLINED_FUNCTION_110(v10);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v11);
  v13 = v35 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804490C8, &qword_26BDA7780);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_150();
  v16 = *v1 == *v0 && *(v1 + 8) == *(v0 + 8);
  if (!v16 && (sub_26BDA0FB0() & 1) == 0)
  {
    goto LABEL_42;
  }

  v17 = *(v1 + 16) == *(v0 + 16) && *(v1 + 24) == *(v0 + 24);
  if (!v17 && (sub_26BDA0FB0() & 1) == 0)
  {
    goto LABEL_42;
  }

  v18 = *(v1 + 32) == *(v0 + 32) && *(v1 + 40) == *(v0 + 40);
  if (!v18 && (sub_26BDA0FB0() & 1) == 0)
  {
    goto LABEL_42;
  }

  v19 = *(v1 + 48) == *(v0 + 48) && *(v1 + 56) == *(v0 + 56);
  if (!v19 && (sub_26BDA0FB0() & 1) == 0)
  {
    goto LABEL_42;
  }

  v20 = *(v1 + 64) == *(v0 + 64) && *(v1 + 72) == *(v0 + 72);
  if (!v20 && (sub_26BDA0FB0() & 1) == 0)
  {
    goto LABEL_42;
  }

  v21 = *(v1 + 80) == *(v0 + 80) && *(v1 + 88) == *(v0 + 88);
  if (!v21 && (sub_26BDA0FB0() & 1) == 0 || *(v1 + 96) != *(v0 + 96) || *(v1 + 100) != *(v0 + 100))
  {
    goto LABEL_42;
  }

  v35[1] = type metadata accessor for TriageRequest.Product(0);
  v22 = *(v14 + 48);
  sub_26BD31AF8();
  sub_26BD31AF8();
  OUTLINED_FUNCTION_28(v2);
  if (!v16)
  {
    OUTLINED_FUNCTION_256();
    sub_26BD31AF8();
    OUTLINED_FUNCTION_28(v2 + v22);
    if (!v23)
    {
      (*(v5 + 32))(v9, v2 + v22, v3);
      OUTLINED_FUNCTION_5_2();
      sub_26BD6C1DC(v25, v26, MEMORY[0x277D215D8]);
      v27 = sub_26BDA0BB0();
      v28 = *(v5 + 8);
      v29 = OUTLINED_FUNCTION_170();
      v28(v29);
      (v28)(v13, v3);
      sub_26BD04E80(v2, &qword_280448F88, &qword_26BDA5440);
      if ((v27 & 1) == 0)
      {
        goto LABEL_42;
      }

      goto LABEL_45;
    }

    (*(v5 + 8))(v13, v3);
LABEL_41:
    sub_26BD04E80(v2, &qword_2804490C8, &qword_26BDA7780);
    goto LABEL_42;
  }

  OUTLINED_FUNCTION_28(v2 + v22);
  if (!v16)
  {
    goto LABEL_41;
  }

  sub_26BD04E80(v2, &qword_280448F88, &qword_26BDA5440);
LABEL_45:
  v30 = *(v1 + 104) == *(v0 + 104) && *(v1 + 112) == *(v0 + 112);
  if (v30 || (sub_26BDA0FB0() & 1) != 0)
  {
    v31 = *(v1 + 120) == *(v0 + 120) && *(v1 + 128) == *(v0 + 128);
    if (v31 || (sub_26BDA0FB0() & 1) != 0)
    {
      v32 = *(v1 + 136) == *(v0 + 136) && *(v1 + 144) == *(v0 + 144);
      if (v32 || (sub_26BDA0FB0() & 1) != 0)
      {
        sub_26BDA0850();
        OUTLINED_FUNCTION_0_8();
        sub_26BD6C1DC(v33, v34, MEMORY[0x277D216D0]);
        v24 = sub_26BDA0BB0();
        goto LABEL_43;
      }
    }
  }

LABEL_42:
  v24 = 0;
LABEL_43:
  OUTLINED_FUNCTION_258(v24);
  OUTLINED_FUNCTION_188();
}

uint64_t sub_26BD716B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_26BD6C1DC(&qword_28044AED0, type metadata accessor for TriageRequest.Product, &protocol conformance descriptor for TriageRequest.Product);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26BD71730(uint64_t a1)
{
  v2 = sub_26BD6C1DC(&qword_28044AC48, type metadata accessor for TriageRequest.Product, &protocol conformance descriptor for TriageRequest.Product);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26BD717A0(uint64_t a1, uint64_t a2)
{
  sub_26BD6C1DC(&qword_28044AC48, type metadata accessor for TriageRequest.Product, &protocol conformance descriptor for TriageRequest.Product);

  return sub_26BDA0A00();
}

uint64_t sub_26BD71838()
{
  v0 = sub_26BDA0B10();
  __swift_allocate_value_buffer(v0, qword_28044A760);
  __swift_project_value_buffer(v0, qword_28044A760);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804495C8, &unk_26BDA3CB0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804495D0, &qword_26BDA3510) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26BDA19E0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "symptom_category_id";
  *(v6 + 8) = 19;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21888];
  v8 = sub_26BDA0AE0();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "symptom_category_description";
  *(v10 + 8) = 28;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "symptom_id";
  *(v12 + 1) = 10;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "symptom_description";
  *(v14 + 1) = 19;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "user_utterance";
  *(v16 + 1) = 14;
  v16[16] = 2;
  v9();
  return sub_26BDA0AF0();
}

uint64_t TriageRequest.SymptomInformation.decodeMessage<A>(decoder:)()
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
      case 5:
        OUTLINED_FUNCTION_129();
        sub_26BDA0990();
        break;
      default:
        continue;
    }
  }
}

uint64_t TriageRequest.SymptomInformation.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_29();
  if (!v3 || (result = OUTLINED_FUNCTION_103(v1, v2, 1), !v0))
  {
    OUTLINED_FUNCTION_29();
    if (!v7 || (result = OUTLINED_FUNCTION_103(v5, v6, 2), !v0))
    {
      OUTLINED_FUNCTION_29();
      if (!v10 || (result = OUTLINED_FUNCTION_103(v8, v9, 3), !v0))
      {
        OUTLINED_FUNCTION_29();
        if (!v13 || (result = OUTLINED_FUNCTION_103(v11, v12, 4), !v0))
        {
          OUTLINED_FUNCTION_29();
          if (!v16 || (result = OUTLINED_FUNCTION_103(v14, v15, 5), !v0))
          {
            type metadata accessor for TriageRequest.SymptomInformation(0);
            return OUTLINED_FUNCTION_104();
          }
        }
      }
    }
  }

  return result;
}

uint64_t static TriageRequest.SymptomInformation.== infix(_:_:)(uint64_t a1)
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

  OUTLINED_FUNCTION_249_0();
  v11 = v5 && v9 == v10;
  if (!v11 && (sub_26BDA0FB0() & 1) == 0)
  {
    return 0;
  }

  v12 = v2[6] == v1[6] && v2[7] == v1[7];
  if (!v12 && (sub_26BDA0FB0() & 1) == 0)
  {
    return 0;
  }

  v13 = v2[8] == v1[8] && v2[9] == v1[9];
  if (!v13 && (sub_26BDA0FB0() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for TriageRequest.SymptomInformation(0);
  sub_26BDA0850();
  OUTLINED_FUNCTION_0_8();
  sub_26BD6C1DC(v14, v15, MEMORY[0x277D216D0]);
  return OUTLINED_FUNCTION_105() & 1;
}

uint64_t sub_26BD71DF8(uint64_t a1, uint64_t a2)
{
  v4 = sub_26BD6C1DC(&qword_28044AEC8, type metadata accessor for TriageRequest.SymptomInformation, &protocol conformance descriptor for TriageRequest.SymptomInformation);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26BD71E78(uint64_t a1)
{
  v2 = sub_26BD6C1DC(&qword_28044AC60, type metadata accessor for TriageRequest.SymptomInformation, &protocol conformance descriptor for TriageRequest.SymptomInformation);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26BD71EE8(uint64_t a1, uint64_t a2)
{
  sub_26BD6C1DC(&qword_28044AC60, type metadata accessor for TriageRequest.SymptomInformation, &protocol conformance descriptor for TriageRequest.SymptomInformation);

  return sub_26BDA0A00();
}

uint64_t sub_26BD71F80()
{
  v0 = sub_26BDA0B10();
  __swift_allocate_value_buffer(v0, qword_28044A778);
  __swift_project_value_buffer(v0, qword_28044A778);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804495C8, &unk_26BDA3CB0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804495D0, &qword_26BDA3510) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26BDA77E0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "did_get_user_consent";
  *(v6 + 8) = 20;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21888];
  v8 = sub_26BDA0AE0();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "settings_groups";
  *(v10 + 8) = 15;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "suggested_user_actions";
  *(v12 + 1) = 22;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "executed_user_actions";
  *(v14 + 1) = 21;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "suggested_articles";
  *(v16 + 1) = 18;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "opened_articles";
  *(v18 + 1) = 15;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "suggested_bcs_articles";
  *(v20 + 1) = 22;
  v20[16] = 2;
  v9();
  v21 = (v5 + 7 * v2);
  v22 = v21 + v1[14];
  *v21 = 8;
  *v22 = "opened_bcs_articles";
  *(v22 + 1) = 19;
  v22[16] = 2;
  v9();
  v23 = (v5 + 8 * v2);
  v24 = v23 + v1[14];
  *v23 = 9;
  *v24 = "user_selections";
  *(v24 + 1) = 15;
  v24[16] = 2;
  v9();
  return sub_26BDA0AF0();
}

void TriageRequest.HMTContext.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_246();
  v1 = v0;
  while (1)
  {
    OUTLINED_FUNCTION_204();
    v2 = sub_26BDA0900();
    if (v1 || (v3 & 1) != 0)
    {
      break;
    }

    switch(v2)
    {
      case 1:
        OUTLINED_FUNCTION_236_0();
        sub_26BDA0920();
        goto LABEL_12;
      case 2:
        type metadata accessor for TriageRequest.HMTContext.SettingsGroup(0);
        OUTLINED_FUNCTION_168_1();
        sub_26BD6C1DC(&qword_28044AB60, v7, &protocol conformance descriptor for TriageRequest.HMTContext.SettingsGroup);
        goto LABEL_11;
      case 3:
      case 4:
        type metadata accessor for TriageRequest.HMTContext.UserAction(0);
        OUTLINED_FUNCTION_33_1();
        sub_26BD6C1DC(&qword_28044AB58, v5, &protocol conformance descriptor for TriageRequest.HMTContext.UserAction);
        goto LABEL_11;
      case 5:
      case 6:
        type metadata accessor for TriageRequest.HMTContext.Article(0);
        OUTLINED_FUNCTION_34_2();
        sub_26BD6C1DC(&qword_28044AB50, v4, &protocol conformance descriptor for TriageRequest.HMTContext.Article);
        goto LABEL_11;
      case 7:
      case 8:
        type metadata accessor for TriageRequest.HMTContext.BCSArticle(0);
        OUTLINED_FUNCTION_32_4();
        sub_26BD6C1DC(&qword_28044AB48, v6, &protocol conformance descriptor for TriageRequest.HMTContext.BCSArticle);
        goto LABEL_11;
      case 9:
        type metadata accessor for TriageRequest.HMTContext.UserSelection(0);
        OUTLINED_FUNCTION_167_1();
        sub_26BD6C1DC(&qword_28044AB40, v8, &protocol conformance descriptor for TriageRequest.HMTContext.UserSelection);
LABEL_11:
        sub_26BDA09A0();
LABEL_12:
        v1 = 0;
        break;
      default:
        continue;
    }
  }

  OUTLINED_FUNCTION_247();
}

uint64_t TriageRequest.HMTContext.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_60();
  if (*v1 != 1 || (v2 = v0, result = sub_26BDA0A40(), !v0))
  {
    if (!*(v3[1] + 16) || (type metadata accessor for TriageRequest.HMTContext.SettingsGroup(0), OUTLINED_FUNCTION_168_1(), sub_26BD6C1DC(v5, v6, &protocol conformance descriptor for TriageRequest.HMTContext.SettingsGroup), OUTLINED_FUNCTION_242(), OUTLINED_FUNCTION_47_2(), result = sub_26BDA0AC0(), !v2))
    {
      if (!*(v3[2] + 16) || (type metadata accessor for TriageRequest.HMTContext.UserAction(0), OUTLINED_FUNCTION_33_1(), sub_26BD6C1DC(v7, v8, &protocol conformance descriptor for TriageRequest.HMTContext.UserAction), OUTLINED_FUNCTION_242(), OUTLINED_FUNCTION_47_2(), result = sub_26BDA0AC0(), !v2))
      {
        if (!*(v3[3] + 16) || (type metadata accessor for TriageRequest.HMTContext.UserAction(0), OUTLINED_FUNCTION_33_1(), sub_26BD6C1DC(v9, v10, &protocol conformance descriptor for TriageRequest.HMTContext.UserAction), OUTLINED_FUNCTION_242(), OUTLINED_FUNCTION_47_2(), result = sub_26BDA0AC0(), !v2))
        {
          if (!*(v3[4] + 16) || (type metadata accessor for TriageRequest.HMTContext.Article(0), OUTLINED_FUNCTION_34_2(), sub_26BD6C1DC(v11, v12, &protocol conformance descriptor for TriageRequest.HMTContext.Article), OUTLINED_FUNCTION_242(), OUTLINED_FUNCTION_47_2(), result = sub_26BDA0AC0(), !v2))
          {
            if (!*(v3[5] + 16) || (type metadata accessor for TriageRequest.HMTContext.Article(0), OUTLINED_FUNCTION_34_2(), sub_26BD6C1DC(v13, v14, &protocol conformance descriptor for TriageRequest.HMTContext.Article), OUTLINED_FUNCTION_242(), OUTLINED_FUNCTION_47_2(), result = sub_26BDA0AC0(), !v2))
            {
              if (!*(v3[6] + 16) || (type metadata accessor for TriageRequest.HMTContext.BCSArticle(0), OUTLINED_FUNCTION_32_4(), sub_26BD6C1DC(v15, v16, &protocol conformance descriptor for TriageRequest.HMTContext.BCSArticle), OUTLINED_FUNCTION_242(), OUTLINED_FUNCTION_47_2(), result = sub_26BDA0AC0(), !v2))
              {
                if (!*(v3[7] + 16) || (type metadata accessor for TriageRequest.HMTContext.BCSArticle(0), OUTLINED_FUNCTION_32_4(), sub_26BD6C1DC(v17, v18, &protocol conformance descriptor for TriageRequest.HMTContext.BCSArticle), OUTLINED_FUNCTION_242(), OUTLINED_FUNCTION_47_2(), result = sub_26BDA0AC0(), !v2))
                {
                  if (!*(v3[8] + 16) || (type metadata accessor for TriageRequest.HMTContext.UserSelection(0), OUTLINED_FUNCTION_167_1(), sub_26BD6C1DC(v19, v20, &protocol conformance descriptor for TriageRequest.HMTContext.UserSelection), OUTLINED_FUNCTION_242(), OUTLINED_FUNCTION_47_2(), result = sub_26BDA0AC0(), !v2))
                  {
                    type metadata accessor for TriageRequest.HMTContext(0);
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

uint64_t static TriageRequest.HMTContext.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  OUTLINED_FUNCTION_184();
  sub_26BCFF3AC(*(v4 + 8), *(v5 + 8));
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  sub_26BCFFF00(v3[2], v2[2]);
  if ((v7 & 1) == 0)
  {
    return 0;
  }

  sub_26BCFFF00(v3[3], v2[3]);
  if ((v8 & 1) == 0)
  {
    return 0;
  }

  sub_26BD00398(v3[4], v2[4]);
  if ((v9 & 1) == 0)
  {
    return 0;
  }

  sub_26BD00398(v3[5], v2[5]);
  if ((v10 & 1) == 0)
  {
    return 0;
  }

  sub_26BD003D8(v3[6], v2[6]);
  if ((v11 & 1) == 0)
  {
    return 0;
  }

  sub_26BD003D8(v3[7], v2[7]);
  if ((v12 & 1) == 0)
  {
    return 0;
  }

  sub_26BD00418(v3[8], v2[8]);
  if ((v13 & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for TriageRequest.HMTContext(0);
  sub_26BDA0850();
  OUTLINED_FUNCTION_0_8();
  sub_26BD6C1DC(v14, v15, MEMORY[0x277D216D0]);
  return OUTLINED_FUNCTION_105() & 1;
}

uint64_t sub_26BD72AC4(uint64_t a1, uint64_t a2)
{
  v4 = sub_26BD6C1DC(&qword_28044AEC0, type metadata accessor for TriageRequest.HMTContext, &protocol conformance descriptor for TriageRequest.HMTContext);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26BD72B44(uint64_t a1)
{
  v2 = sub_26BD6C1DC(&qword_28044A660, type metadata accessor for TriageRequest.HMTContext, &protocol conformance descriptor for TriageRequest.HMTContext);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26BD72BB4(uint64_t a1, uint64_t a2)
{
  sub_26BD6C1DC(&qword_28044A660, type metadata accessor for TriageRequest.HMTContext, &protocol conformance descriptor for TriageRequest.HMTContext);

  return sub_26BDA0A00();
}

uint64_t sub_26BD72C84()
{
  v0 = sub_26BDA0B10();
  __swift_allocate_value_buffer(v0, qword_28044A7A0);
  __swift_project_value_buffer(v0, qword_28044A7A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804495C8, &unk_26BDA3CB0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804495D0, &qword_26BDA3510) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26BDA1A20;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "group_key";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21888];
  v8 = sub_26BDA0AE0();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "pre";
  *(v10 + 1) = 3;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "post";
  *(v12 + 1) = 4;
  v12[16] = 2;
  v9();
  return sub_26BDA0AF0();
}

uint64_t TriageRequest.HMTContext.SettingsGroup.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_49();
  while (1)
  {
    OUTLINED_FUNCTION_204();
    result = sub_26BDA0900();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    if (result == 3 || result == 2)
    {
      type metadata accessor for TriageRequest.HMTContext.SettingsGroup(0);
      type metadata accessor for TriageRequest.HMTContext.SettingsEvent(0);
      OUTLINED_FUNCTION_61_0();
      sub_26BD6C1DC(&qword_28044AB70, v3, &protocol conformance descriptor for TriageRequest.HMTContext.SettingsEvent);
      OUTLINED_FUNCTION_35_0();
      sub_26BDA09B0();
LABEL_9:
      v0 = 0;
    }

    else if (result == 1)
    {
      OUTLINED_FUNCTION_236_0();
      sub_26BDA0990();
      goto LABEL_9;
    }
  }
}

void TriageRequest.HMTContext.SettingsGroup.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_246();
  OUTLINED_FUNCTION_197_0();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804495B8, &qword_26BDA7810);
  v4 = OUTLINED_FUNCTION_110(v3);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_57();
  v7 = v5 - v6;
  MEMORY[0x28223BE20](v8);
  v10 = v25 - v9;
  type metadata accessor for TriageRequest.HMTContext.SettingsEvent(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_38();
  v25[1] = v12;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_29();
  if (!v14 || (sub_26BDA0AB0(), !v0))
  {
    type metadata accessor for TriageRequest.HMTContext.SettingsGroup(0);
    sub_26BD31AF8();
    OUTLINED_FUNCTION_238_0();
    if (__swift_getEnumTagSinglePayload(v15, v16, v17) == 1)
    {
      sub_26BD04E80(v10, &qword_2804495B8, &qword_26BDA7810);
    }

    else
    {
      v25[0] = v2;
      sub_26BD65C08();
      OUTLINED_FUNCTION_61_0();
      sub_26BD6C1DC(v18, v19, &protocol conformance descriptor for TriageRequest.HMTContext.SettingsEvent);
      sub_26BDA0AD0();
      OUTLINED_FUNCTION_167();
      sub_26BD65CB0();
      if (v0)
      {
        goto LABEL_10;
      }
    }

    sub_26BD31AF8();
    OUTLINED_FUNCTION_238_0();
    if (__swift_getEnumTagSinglePayload(v20, v21, v22) == 1)
    {
      sub_26BD04E80(v7, &qword_2804495B8, &qword_26BDA7810);
LABEL_9:
      OUTLINED_FUNCTION_276_0();
      goto LABEL_10;
    }

    sub_26BD65C08();
    OUTLINED_FUNCTION_61_0();
    sub_26BD6C1DC(v23, v24, &protocol conformance descriptor for TriageRequest.HMTContext.SettingsEvent);
    sub_26BDA0AD0();
    OUTLINED_FUNCTION_290_0();
    sub_26BD65CB0();
    if (!v0)
    {
      goto LABEL_9;
    }
  }

LABEL_10:
  OUTLINED_FUNCTION_253();
  OUTLINED_FUNCTION_247();
}

void static TriageRequest.HMTContext.SettingsGroup.== infix(_:_:)()
{
  OUTLINED_FUNCTION_189();
  v2 = OUTLINED_FUNCTION_142_0();
  type metadata accessor for TriageRequest.HMTContext.SettingsEvent(v2);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_44();
  v6 = v5 - v4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804495B8, &qword_26BDA7810);
  v8 = OUTLINED_FUNCTION_110(v7);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_57();
  v11 = v9 - v10;
  MEMORY[0x28223BE20](v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804495C0, &unk_26BDA3500);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_57();
  v17 = v15 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = v38 - v19;
  v21 = *v1;
  v22 = v1[1];
  v23 = *v0;
  v24 = v0[1];
  v39 = v0;
  v25 = v21 == v23 && v22 == v24;
  if (!v25 && (sub_26BDA0FB0() & 1) == 0)
  {
    goto LABEL_26;
  }

  v38[0] = v11;
  v38[1] = v6;
  v38[2] = type metadata accessor for TriageRequest.HMTContext.SettingsGroup(0);
  v26 = *(v13 + 48);
  sub_26BD31AF8();
  sub_26BD31AF8();
  OUTLINED_FUNCTION_30_1(v20);
  if (v25)
  {
    OUTLINED_FUNCTION_30_1(&v20[v26]);
    if (v25)
    {
      sub_26BD04E80(v20, &qword_2804495B8, &qword_26BDA7810);
      goto LABEL_16;
    }

LABEL_14:
    v28 = v20;
LABEL_25:
    sub_26BD04E80(v28, &qword_2804495C0, &unk_26BDA3500);
    goto LABEL_26;
  }

  sub_26BD31AF8();
  OUTLINED_FUNCTION_30_1(&v20[v26]);
  if (v27)
  {
    OUTLINED_FUNCTION_187_0();
    sub_26BD65CB0();
    goto LABEL_14;
  }

  sub_26BD65C08();
  static TriageRequest.HMTContext.SettingsEvent.== infix(_:_:)();
  v30 = v29;
  sub_26BD65CB0();
  sub_26BD65CB0();
  sub_26BD04E80(v20, &qword_2804495B8, &qword_26BDA7810);
  if ((v30 & 1) == 0)
  {
    goto LABEL_26;
  }

LABEL_16:
  v31 = *(v13 + 48);
  sub_26BD31AF8();
  sub_26BD31AF8();
  OUTLINED_FUNCTION_30_1(v17);
  if (v25)
  {
    OUTLINED_FUNCTION_30_1(v17 + v31);
    if (v25)
    {
      sub_26BD04E80(v17, &qword_2804495B8, &qword_26BDA7810);
LABEL_29:
      sub_26BDA0850();
      OUTLINED_FUNCTION_0_8();
      sub_26BD6C1DC(v36, v37, MEMORY[0x277D216D0]);
      v33 = sub_26BDA0BB0();
      goto LABEL_27;
    }

    goto LABEL_24;
  }

  sub_26BD31AF8();
  OUTLINED_FUNCTION_30_1(v17 + v31);
  if (v32)
  {
    OUTLINED_FUNCTION_187_0();
    sub_26BD65CB0();
LABEL_24:
    v28 = v17;
    goto LABEL_25;
  }

  sub_26BD65C08();
  static TriageRequest.HMTContext.SettingsEvent.== infix(_:_:)();
  v35 = v34;
  sub_26BD65CB0();
  OUTLINED_FUNCTION_154_0();
  sub_26BD65CB0();
  sub_26BD04E80(v17, &qword_2804495B8, &qword_26BDA7810);
  if (v35)
  {
    goto LABEL_29;
  }

LABEL_26:
  v33 = 0;
LABEL_27:
  OUTLINED_FUNCTION_258(v33);
  OUTLINED_FUNCTION_188();
}

uint64_t sub_26BD73758(uint64_t a1, uint64_t a2)
{
  v4 = sub_26BD6C1DC(&qword_28044AEB8, type metadata accessor for TriageRequest.HMTContext.SettingsGroup, &protocol conformance descriptor for TriageRequest.HMTContext.SettingsGroup);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26BD737D8(uint64_t a1)
{
  v2 = sub_26BD6C1DC(&qword_28044AB60, type metadata accessor for TriageRequest.HMTContext.SettingsGroup, &protocol conformance descriptor for TriageRequest.HMTContext.SettingsGroup);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26BD73848(uint64_t a1, uint64_t a2)
{
  sub_26BD6C1DC(&qword_28044AB60, type metadata accessor for TriageRequest.HMTContext.SettingsGroup, &protocol conformance descriptor for TriageRequest.HMTContext.SettingsGroup);

  return sub_26BDA0A00();
}

uint64_t sub_26BD73918()
{
  v0 = sub_26BDA0B10();
  __swift_allocate_value_buffer(v0, qword_28044A7C8);
  __swift_project_value_buffer(v0, qword_28044A7C8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804495C8, &unk_26BDA3CB0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804495D0, &qword_26BDA3510) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26BDA1990;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "captured_timestamp";
  *(v6 + 8) = 18;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21888];
  v8 = sub_26BDA0AE0();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "settings";
  *(v10 + 1) = 8;
  v10[16] = 2;
  v9();
  return sub_26BDA0AF0();
}

void TriageRequest.HMTContext.SettingsEvent.decodeMessage<A>(decoder:)()
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

    if (v1 == 2)
    {
      type metadata accessor for TriageRequest.HMTContext.Setting(0);
      OUTLINED_FUNCTION_163_1();
      sub_26BD6C1DC(&qword_28044AB80, v4, &protocol conformance descriptor for TriageRequest.HMTContext.Setting);
      OUTLINED_FUNCTION_35_0();
      sub_26BDA09A0();
LABEL_8:
      v0 = 0;
    }

    else if (v1 == 1)
    {
      type metadata accessor for TriageRequest.HMTContext.SettingsEvent(0);
      sub_26BDA07E0();
      OUTLINED_FUNCTION_4_2();
      sub_26BD6C1DC(&qword_280449B70, v3, MEMORY[0x277D21568]);
      OUTLINED_FUNCTION_35_0();
      sub_26BDA09B0();
      goto LABEL_8;
    }
  }

  OUTLINED_FUNCTION_247();
}

void TriageRequest.HMTContext.SettingsEvent.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_246();
  OUTLINED_FUNCTION_197_0();
  v3 = OUTLINED_FUNCTION_173();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_110(v5);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_299_0();
  OUTLINED_FUNCTION_18();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_44();
  v8 = OUTLINED_FUNCTION_128_0();
  type metadata accessor for TriageRequest.HMTContext.SettingsEvent(v8);
  OUTLINED_FUNCTION_214_0();
  sub_26BD31AF8();
  OUTLINED_FUNCTION_258_0();
  if (__swift_getEnumTagSinglePayload(v9, v10, v11) == 1)
  {
    sub_26BD04E80(v1, &qword_280449520, &unk_26BDA44F0);
  }

  else
  {
    v12 = OUTLINED_FUNCTION_262_0();
    v13(v12);
    OUTLINED_FUNCTION_4_2();
    sub_26BD6C1DC(v14, v15, MEMORY[0x277D21568]);
    OUTLINED_FUNCTION_207_0();
    sub_26BDA0AD0();
    if (v0)
    {
      v16 = OUTLINED_FUNCTION_200_0();
      v17(v16);
      goto LABEL_9;
    }

    v18 = OUTLINED_FUNCTION_200_0();
    v19(v18);
  }

  if (!*(*v2 + 16) || (type metadata accessor for TriageRequest.HMTContext.Setting(0), OUTLINED_FUNCTION_163_1(), sub_26BD6C1DC(v20, v21, &protocol conformance descriptor for TriageRequest.HMTContext.Setting), OUTLINED_FUNCTION_242(), sub_26BDA0AC0(), !v0))
  {
    OUTLINED_FUNCTION_117_0();
    sub_26BDA0830();
  }

LABEL_9:
  OUTLINED_FUNCTION_253();
  OUTLINED_FUNCTION_247();
}

void static TriageRequest.HMTContext.SettingsEvent.== infix(_:_:)()
{
  OUTLINED_FUNCTION_189();
  v4 = v3;
  OUTLINED_FUNCTION_134();
  sub_26BDA07E0();
  OUTLINED_FUNCTION_18();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_44();
  v8 = v7 - v6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280449520, &unk_26BDA44F0);
  OUTLINED_FUNCTION_110(v9);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_129_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280449528, &unk_26BDA34F0);
  OUTLINED_FUNCTION_245_0();
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v11);
  v12 = OUTLINED_FUNCTION_85_1();
  type metadata accessor for TriageRequest.HMTContext.SettingsEvent(v12);
  v13 = *(v2 + 56);
  OUTLINED_FUNCTION_202();
  sub_26BD31AF8();
  OUTLINED_FUNCTION_202();
  sub_26BD31AF8();
  OUTLINED_FUNCTION_28(v1);
  if (v14)
  {
    OUTLINED_FUNCTION_28(v1 + v13);
    if (v14)
    {
      sub_26BD04E80(v1, &qword_280449520, &unk_26BDA44F0);
      goto LABEL_11;
    }

LABEL_9:
    sub_26BD04E80(v1, &qword_280449528, &unk_26BDA34F0);
LABEL_13:
    v27 = 0;
    goto LABEL_14;
  }

  OUTLINED_FUNCTION_131();
  sub_26BD31AF8();
  OUTLINED_FUNCTION_28(v1 + v13);
  if (v14)
  {
    v15 = OUTLINED_FUNCTION_199_0();
    v16(v15);
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_289_0();
  v17(v8);
  OUTLINED_FUNCTION_4_2();
  sub_26BD6C1DC(v18, v19, MEMORY[0x277D21578]);
  v20 = sub_26BDA0BB0();
  v21 = v0[1];
  v22 = OUTLINED_FUNCTION_170();
  v21(v22);
  v23 = OUTLINED_FUNCTION_222_0();
  v21(v23);
  sub_26BD04E80(v1, &qword_280449520, &unk_26BDA44F0);
  if ((v20 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_11:
  sub_26BD00960(*v0, *v4);
  if ((v24 & 1) == 0)
  {
    goto LABEL_13;
  }

  sub_26BDA0850();
  OUTLINED_FUNCTION_0_8();
  sub_26BD6C1DC(v25, v26, MEMORY[0x277D216D0]);
  v27 = OUTLINED_FUNCTION_170_0();
LABEL_14:
  OUTLINED_FUNCTION_258(v27);
  OUTLINED_FUNCTION_188();
}

uint64_t sub_26BD74194(uint64_t a1, uint64_t a2)
{
  v4 = sub_26BD6C1DC(&qword_28044AEB0, type metadata accessor for TriageRequest.HMTContext.SettingsEvent, &protocol conformance descriptor for TriageRequest.HMTContext.SettingsEvent);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26BD74214(uint64_t a1)
{
  v2 = sub_26BD6C1DC(&qword_28044AB70, type metadata accessor for TriageRequest.HMTContext.SettingsEvent, &protocol conformance descriptor for TriageRequest.HMTContext.SettingsEvent);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26BD74284(uint64_t a1, uint64_t a2)
{
  sub_26BD6C1DC(&qword_28044AB70, type metadata accessor for TriageRequest.HMTContext.SettingsEvent, &protocol conformance descriptor for TriageRequest.HMTContext.SettingsEvent);

  return sub_26BDA0A00();
}

uint64_t sub_26BD74348()
{
  v0 = sub_26BDA0B10();
  __swift_allocate_value_buffer(v0, qword_28044A7F0);
  __swift_project_value_buffer(v0, qword_28044A7F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804495C8, &unk_26BDA3CB0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804495D0, &qword_26BDA3510) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26BDA1990;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "key";
  *(v6 + 8) = 3;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_26BDA0AE0();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "value";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  return sub_26BDA0AF0();
}

uint64_t TriageRequest.HMTContext.Setting.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_109();
  while (1)
  {
    OUTLINED_FUNCTION_167();
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

uint64_t TriageRequest.HMTContext.Setting.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_29();
  if (!v3 || (result = OUTLINED_FUNCTION_103(v1, v2, 1), !v0))
  {
    OUTLINED_FUNCTION_29();
    if (!v7 || (result = OUTLINED_FUNCTION_103(v5, v6, 2), !v0))
    {
      type metadata accessor for TriageRequest.HMTContext.Setting(0);
      return OUTLINED_FUNCTION_104();
    }
  }

  return result;
}

uint64_t static TriageRequest.HMTContext.Setting.== infix(_:_:)(uint64_t a1)
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

  type metadata accessor for TriageRequest.HMTContext.Setting(0);
  sub_26BDA0850();
  OUTLINED_FUNCTION_0_8();
  sub_26BD6C1DC(v7, v8, MEMORY[0x277D216D0]);
  return OUTLINED_FUNCTION_105() & 1;
}

uint64_t sub_26BD7473C(uint64_t a1, uint64_t a2)
{
  v4 = sub_26BD6C1DC(&qword_28044AEA8, type metadata accessor for TriageRequest.HMTContext.Setting, &protocol conformance descriptor for TriageRequest.HMTContext.Setting);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26BD747BC(uint64_t a1)
{
  v2 = sub_26BD6C1DC(&qword_28044AB80, type metadata accessor for TriageRequest.HMTContext.Setting, &protocol conformance descriptor for TriageRequest.HMTContext.Setting);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26BD7482C(uint64_t a1, uint64_t a2)
{
  sub_26BD6C1DC(&qword_28044AB80, type metadata accessor for TriageRequest.HMTContext.Setting, &protocol conformance descriptor for TriageRequest.HMTContext.Setting);

  return sub_26BDA0A00();
}

uint64_t sub_26BD748F8()
{
  v0 = sub_26BDA0B10();
  __swift_allocate_value_buffer(v0, qword_28044A818);
  __swift_project_value_buffer(v0, qword_28044A818);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804495C8, &unk_26BDA3CB0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804495D0, &qword_26BDA3510) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26BDA1A20;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "captured_timestamp";
  *(v6 + 8) = 18;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21888];
  v8 = sub_26BDA0AE0();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "id";
  *(v10 + 1) = 2;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "action_title";
  *(v12 + 1) = 12;
  v12[16] = 2;
  v9();
  return sub_26BDA0AF0();
}

uint64_t TriageRequest.HMTContext.UserAction.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_49();
  while (1)
  {
    OUTLINED_FUNCTION_204();
    result = sub_26BDA0900();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    if (result == 3 || result == 2)
    {
      OUTLINED_FUNCTION_236_0();
      sub_26BDA0990();
LABEL_9:
      v0 = 0;
    }

    else if (result == 1)
    {
      type metadata accessor for TriageRequest.HMTContext.UserAction(0);
      sub_26BDA07E0();
      OUTLINED_FUNCTION_4_2();
      sub_26BD6C1DC(&qword_280449B70, v3, MEMORY[0x277D21568]);
      OUTLINED_FUNCTION_35_0();
      sub_26BDA09B0();
      goto LABEL_9;
    }
  }
}

void TriageRequest.HMTContext.UserAction.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_246();
  OUTLINED_FUNCTION_197_0();
  v3 = OUTLINED_FUNCTION_173();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_110(v5);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_299_0();
  OUTLINED_FUNCTION_18();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_44();
  v8 = OUTLINED_FUNCTION_128_0();
  type metadata accessor for TriageRequest.HMTContext.UserAction(v8);
  OUTLINED_FUNCTION_214_0();
  sub_26BD31AF8();
  OUTLINED_FUNCTION_258_0();
  if (__swift_getEnumTagSinglePayload(v9, v10, v11) == 1)
  {
    sub_26BD04E80(v1, &qword_280449520, &unk_26BDA44F0);
  }

  else
  {
    v12 = OUTLINED_FUNCTION_262_0();
    v13(v12);
    OUTLINED_FUNCTION_4_2();
    sub_26BD6C1DC(v14, v15, MEMORY[0x277D21568]);
    OUTLINED_FUNCTION_207_0();
    v2 = v0;
    sub_26BDA0AD0();
    if (v0)
    {
      v16 = OUTLINED_FUNCTION_200_0();
      v17(v16);
      goto LABEL_11;
    }

    v18 = OUTLINED_FUNCTION_200_0();
    v19(v18);
  }

  OUTLINED_FUNCTION_29();
  if (!v22 || (OUTLINED_FUNCTION_297_0(v20, v21, 2), !v2))
  {
    OUTLINED_FUNCTION_29();
    if (!v25 || (OUTLINED_FUNCTION_297_0(v23, v24, 3), !v2))
    {
      sub_26BDA0830();
    }
  }

LABEL_11:
  OUTLINED_FUNCTION_253();
  OUTLINED_FUNCTION_247();
}

void static TriageRequest.HMTContext.UserAction.== infix(_:_:)()
{
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_246_0();
  v4 = sub_26BDA07E0();
  OUTLINED_FUNCTION_18();
  v31 = v5;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_44();
  v9 = v8 - v7;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280449520, &unk_26BDA44F0);
  OUTLINED_FUNCTION_110(v10);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_129_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280449528, &unk_26BDA34F0);
  OUTLINED_FUNCTION_245_0();
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v12);
  v13 = OUTLINED_FUNCTION_85_1();
  type metadata accessor for TriageRequest.HMTContext.UserAction(v13);
  v14 = *(v3 + 56);
  OUTLINED_FUNCTION_202();
  sub_26BD31AF8();
  OUTLINED_FUNCTION_202();
  sub_26BD31AF8();
  OUTLINED_FUNCTION_28(v2);
  if (!v15)
  {
    OUTLINED_FUNCTION_131();
    sub_26BD31AF8();
    OUTLINED_FUNCTION_28(v2 + v14);
    if (!v15)
    {
      (*(v31 + 32))(v9, v2 + v14, v4);
      OUTLINED_FUNCTION_4_2();
      sub_26BD6C1DC(v19, v20, MEMORY[0x277D21578]);
      OUTLINED_FUNCTION_154_0();
      v21 = sub_26BDA0BB0();
      v0 = v31 + 8;
      v22 = *(v31 + 8);
      v23 = OUTLINED_FUNCTION_222();
      v22(v23);
      v24 = OUTLINED_FUNCTION_222_0();
      v22(v24);
      sub_26BD04E80(v2, &qword_280449520, &unk_26BDA44F0);
      if ((v21 & 1) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_12;
    }

    v16 = OUTLINED_FUNCTION_199_0();
    v17(v16);
LABEL_9:
    sub_26BD04E80(v2, &qword_280449528, &unk_26BDA34F0);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_28(v2 + v14);
  if (!v15)
  {
    goto LABEL_9;
  }

  sub_26BD04E80(v2, &qword_280449520, &unk_26BDA44F0);
LABEL_12:
  OUTLINED_FUNCTION_288_0();
  if (v15)
  {
    v27 = v25 == v26;
  }

  else
  {
    v27 = 0;
  }

  if (v27 || (sub_26BDA0FB0() & 1) != 0)
  {
    v28 = *(v1 + 16) == *(v0 + 16) && *(v1 + 24) == *(v0 + 24);
    if (v28 || (sub_26BDA0FB0() & 1) != 0)
    {
      sub_26BDA0850();
      OUTLINED_FUNCTION_0_8();
      sub_26BD6C1DC(v29, v30, MEMORY[0x277D216D0]);
      v18 = OUTLINED_FUNCTION_170_0();
      goto LABEL_23;
    }
  }

LABEL_10:
  v18 = 0;
LABEL_23:
  OUTLINED_FUNCTION_258(v18);
  OUTLINED_FUNCTION_188();
}

uint64_t sub_26BD75184(uint64_t a1, uint64_t a2)
{
  v4 = sub_26BD6C1DC(&qword_28044AEA0, type metadata accessor for TriageRequest.HMTContext.UserAction, &protocol conformance descriptor for TriageRequest.HMTContext.UserAction);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26BD75204(uint64_t a1)
{
  v2 = sub_26BD6C1DC(&qword_28044AB58, type metadata accessor for TriageRequest.HMTContext.UserAction, &protocol conformance descriptor for TriageRequest.HMTContext.UserAction);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26BD75274(uint64_t a1, uint64_t a2)
{
  sub_26BD6C1DC(&qword_28044AB58, type metadata accessor for TriageRequest.HMTContext.UserAction, &protocol conformance descriptor for TriageRequest.HMTContext.UserAction);

  return sub_26BDA0A00();
}

uint64_t sub_26BD75440(uint64_t a1, uint64_t a2)
{
  v4 = sub_26BD6C1DC(&qword_28044AE98, type metadata accessor for TriageRequest.HMTContext.Article, &protocol conformance descriptor for TriageRequest.HMTContext.Article);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26BD754C0(uint64_t a1)
{
  v2 = sub_26BD6C1DC(&qword_28044AB50, type metadata accessor for TriageRequest.HMTContext.Article, &protocol conformance descriptor for TriageRequest.HMTContext.Article);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26BD75530(uint64_t a1, uint64_t a2)
{
  sub_26BD6C1DC(&qword_28044AB50, type metadata accessor for TriageRequest.HMTContext.Article, &protocol conformance descriptor for TriageRequest.HMTContext.Article);

  return sub_26BDA0A00();
}

uint64_t sub_26BD75608(uint64_t a1, uint64_t *a2)
{
  v3 = sub_26BDA0B10();
  __swift_allocate_value_buffer(v3, a2);
  v4 = OUTLINED_FUNCTION_259();
  __swift_project_value_buffer(v4, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804495C8, &unk_26BDA3CB0);
  v6 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804495D0, &qword_26BDA3510) - 8);
  v7 = *(*v6 + 72);
  v8 = (*(*v6 + 80) + 32) & ~*(*v6 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_26BDA19D0;
  v10 = v9 + v8;
  v11 = v9 + v8 + v6[14];
  *(v9 + v8) = 1;
  *v11 = "captured_timestamp";
  *(v11 + 8) = 18;
  *(v11 + 16) = 2;
  v12 = *MEMORY[0x277D21888];
  v13 = sub_26BDA0AE0();
  OUTLINED_FUNCTION_34();
  v15 = *(v14 + 104);
  (v15)(v11, v12, v13);
  v16 = v10 + v7 + v6[14];
  *(v10 + v7) = 2;
  *v16 = "id";
  *(v16 + 8) = 2;
  *(v16 + 16) = 2;
  v15();
  v17 = (v10 + 2 * v7);
  v18 = v17 + v6[14];
  *v17 = 3;
  *v18 = "title";
  *(v18 + 1) = 5;
  v18[16] = 2;
  v15();
  v19 = (v10 + 3 * v7);
  v20 = v19 + v6[14];
  *v19 = 4;
  *v20 = "url";
  *(v20 + 1) = 3;
  v20[16] = 2;
  v15();
  return sub_26BDA0AF0();
}

uint64_t sub_26BD7593C(uint64_t a1, uint64_t a2)
{
  v4 = sub_26BD6C1DC(&qword_28044AE90, type metadata accessor for TriageRequest.HMTContext.BCSArticle, &protocol conformance descriptor for TriageRequest.HMTContext.BCSArticle);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26BD759BC(uint64_t a1)
{
  v2 = sub_26BD6C1DC(&qword_28044AB48, type metadata accessor for TriageRequest.HMTContext.BCSArticle, &protocol conformance descriptor for TriageRequest.HMTContext.BCSArticle);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26BD75A2C(uint64_t a1, uint64_t a2)
{
  sub_26BD6C1DC(&qword_28044AB48, type metadata accessor for TriageRequest.HMTContext.BCSArticle, &protocol conformance descriptor for TriageRequest.HMTContext.BCSArticle);

  return sub_26BDA0A00();
}

uint64_t sub_26BD75ADC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  result = MEMORY[0x26D695B80](a2, a3);
  *a4 = 0xD000000000000018;
  *a5 = 0x800000026BDAE090;
  return result;
}

uint64_t sub_26BD75B68(void *a1, uint64_t a2, void *a3)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  return OUTLINED_FUNCTION_259();
}

uint64_t sub_26BD75BB8()
{
  v0 = sub_26BDA0B10();
  __swift_allocate_value_buffer(v0, qword_28044A890);
  __swift_project_value_buffer(v0, qword_28044A890);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804495C8, &unk_26BDA3CB0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804495D0, &qword_26BDA3510) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26BDA19D0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "captured_timestamp";
  *(v6 + 8) = 18;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21888];
  v8 = sub_26BDA0AE0();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "id";
  *(v10 + 8) = 2;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "question";
  *(v12 + 1) = 8;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "answer";
  *(v14 + 1) = 6;
  v14[16] = 2;
  v9();
  return sub_26BDA0AF0();
}

void sub_26BD75E44()
{
  OUTLINED_FUNCTION_246();
  v2 = v1;
  v3 = v0;
  while (1)
  {
    OUTLINED_FUNCTION_286_0();
    v4 = sub_26BDA0900();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    switch(v4)
    {
      case 1:
        v2(0);
        sub_26BDA07E0();
        OUTLINED_FUNCTION_4_2();
        sub_26BD6C1DC(&qword_280449B70, v6, MEMORY[0x277D21568]);
        OUTLINED_FUNCTION_195_0();
        sub_26BDA09B0();
        goto LABEL_7;
      case 2:
      case 3:
      case 4:
        OUTLINED_FUNCTION_293_0();
        sub_26BDA0990();
LABEL_7:
        v3 = 0;
        break;
      default:
        continue;
    }
  }

  OUTLINED_FUNCTION_247();
}

void sub_26BD75F84()
{
  OUTLINED_FUNCTION_246();
  v4 = v3;
  v5 = OUTLINED_FUNCTION_154_0();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  OUTLINED_FUNCTION_110(v7);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_17();
  v9 = sub_26BDA07E0();
  OUTLINED_FUNCTION_18();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_44();
  v13 = OUTLINED_FUNCTION_128_0();
  v4(v13);
  OUTLINED_FUNCTION_235_0();
  sub_26BD31AF8();
  OUTLINED_FUNCTION_258_0();
  if (__swift_getEnumTagSinglePayload(v14, v15, v16) == 1)
  {
    sub_26BD04E80(v1, &qword_280449520, &unk_26BDA44F0);
  }

  else
  {
    (*(v11 + 32))(v2, v1, v9);
    OUTLINED_FUNCTION_4_2();
    sub_26BD6C1DC(v17, v18, MEMORY[0x277D21568]);
    OUTLINED_FUNCTION_207_0();
    sub_26BDA0AD0();
    if (v0)
    {
      (*(v11 + 8))(v2, v9);
      goto LABEL_13;
    }

    (*(v11 + 8))(v2, v9);
  }

  OUTLINED_FUNCTION_29();
  if (!v21 || (OUTLINED_FUNCTION_103(v19, v20, 2), !v0))
  {
    OUTLINED_FUNCTION_29();
    if (!v24 || (OUTLINED_FUNCTION_103(v22, v23, 3), !v0))
    {
      OUTLINED_FUNCTION_29();
      if (!v27 || (OUTLINED_FUNCTION_103(v25, v26, 4), !v0))
      {
        OUTLINED_FUNCTION_129();
        sub_26BDA0830();
      }
    }
  }

LABEL_13:
  OUTLINED_FUNCTION_253();
  OUTLINED_FUNCTION_247();
}

void sub_26BD761F0()
{
  OUTLINED_FUNCTION_189();
  v4 = v3;
  v6 = v5;
  OUTLINED_FUNCTION_134();
  sub_26BDA07E0();
  OUTLINED_FUNCTION_18();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_44();
  v10 = v9 - v8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280449520, &unk_26BDA44F0);
  OUTLINED_FUNCTION_110(v11);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_129_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280449528, &unk_26BDA34F0);
  OUTLINED_FUNCTION_245_0();
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v13);
  v14 = OUTLINED_FUNCTION_85_1();
  v15 = *(v4(v14) + 32);
  v16 = *(v2 + 56);
  OUTLINED_FUNCTION_202();
  sub_26BD31AF8();
  OUTLINED_FUNCTION_202();
  sub_26BD31AF8();
  OUTLINED_FUNCTION_28(v1);
  if (!v17)
  {
    OUTLINED_FUNCTION_131();
    sub_26BD31AF8();
    OUTLINED_FUNCTION_28(v1 + v16);
    if (!v17)
    {
      OUTLINED_FUNCTION_289_0();
      v21(v10);
      OUTLINED_FUNCTION_4_2();
      sub_26BD6C1DC(v22, v23, MEMORY[0x277D21578]);
      OUTLINED_FUNCTION_154_0();
      v24 = sub_26BDA0BB0();
      v15 = *(v0 + 8);
      v25 = OUTLINED_FUNCTION_222();
      (v15)(v25);
      v26 = OUTLINED_FUNCTION_222_0();
      (v15)(v26);
      sub_26BD04E80(v1, &qword_280449520, &unk_26BDA44F0);
      if ((v24 & 1) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_13;
    }

    v18 = OUTLINED_FUNCTION_199_0();
    v19(v18);
LABEL_9:
    sub_26BD04E80(v1, &qword_280449528, &unk_26BDA34F0);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_28(v1 + v16);
  if (!v17)
  {
    goto LABEL_9;
  }

  sub_26BD04E80(v1, &qword_280449520, &unk_26BDA44F0);
LABEL_13:
  OUTLINED_FUNCTION_288_0();
  if (v17)
  {
    v29 = v27 == v28;
  }

  else
  {
    v29 = 0;
  }

  if (v29 || (sub_26BDA0FB0() & 1) != 0)
  {
    v30 = *(v15 + 16) == v6[2] && *(v15 + 24) == v6[3];
    if (v30 || (sub_26BDA0FB0() & 1) != 0)
    {
      v31 = *(v15 + 32) == v6[4] && *(v15 + 40) == v6[5];
      if (v31 || (sub_26BDA0FB0() & 1) != 0)
      {
        sub_26BDA0850();
        OUTLINED_FUNCTION_0_8();
        sub_26BD6C1DC(v32, v33, MEMORY[0x277D216D0]);
        v20 = OUTLINED_FUNCTION_170_0();
        goto LABEL_11;
      }
    }
  }

LABEL_10:
  v20 = 0;
LABEL_11:
  OUTLINED_FUNCTION_258(v20);
  OUTLINED_FUNCTION_188();
}

uint64_t sub_26BD7653C()
{
  OUTLINED_FUNCTION_177();
  v2 = v1;
  sub_26BDA1050();
  v2(0);
  v3 = OUTLINED_FUNCTION_130();
  sub_26BD6C1DC(v3, v4, v0);
  sub_26BDA0BA0();
  return sub_26BDA1070();
}

uint64_t sub_26BD765F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_26BD6C1DC(&qword_28044AE88, type metadata accessor for TriageRequest.HMTContext.UserSelection, &protocol conformance descriptor for TriageRequest.HMTContext.UserSelection);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26BD76678(uint64_t a1)
{
  v2 = sub_26BD6C1DC(&qword_28044AB40, type metadata accessor for TriageRequest.HMTContext.UserSelection, &protocol conformance descriptor for TriageRequest.HMTContext.UserSelection);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26BD766E8(uint64_t a1, uint64_t a2)
{
  sub_26BD6C1DC(&qword_28044AB40, type metadata accessor for TriageRequest.HMTContext.UserSelection, &protocol conformance descriptor for TriageRequest.HMTContext.UserSelection);

  return sub_26BDA0A00();
}

uint64_t sub_26BD77B68()
{
  OUTLINED_FUNCTION_65_0();
  result = TriageRequest.CaseMetaData.triggerDetails.getter(v1);
  *v0 = result;
  return result;
}

uint64_t sub_26BD77C60()
{
  OUTLINED_FUNCTION_65_0();
  result = TriageRequest.CaseMetaData.internalCaseActionTypeString.getter(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_26BD77C8C()
{
  OUTLINED_FUNCTION_65_0();
  result = TriageRequest.CaseMetaData.caseID.getter(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_26BD77CB8()
{
  OUTLINED_FUNCTION_65_0();
  result = TriageRequest.CaseMetaData.articleID.getter(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_26BD77CE4()
{
  OUTLINED_FUNCTION_65_0();
  result = TriageRequest.CaseMetaData.comptiaCode.getter(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_26BD77D10()
{
  OUTLINED_FUNCTION_65_0();
  result = TriageRequest.CaseMetaData.diagnosticsCaptureID.getter(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_26BD77D3C()
{
  OUTLINED_FUNCTION_65_0();
  v1 = TriageRequest.CaseMetaData.isDiagnosticsCompletedSuccessfully.getter(v0);
  return OUTLINED_FUNCTION_39_3(v1);
}

uint64_t sub_26BD77D88()
{
  OUTLINED_FUNCTION_65_0();
  result = TriageRequest.CaseMetaData.deepDiveCaller.getter(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_26BD77DB4()
{
  OUTLINED_FUNCTION_65_0();
  result = TriageRequest.CaseMetaData.overrideLanguage.getter(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_26BD77DE0()
{
  OUTLINED_FUNCTION_65_0();
  result = TriageRequest.CaseMetaData.recommendedSolutionSearchIntentID.getter(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_26BD77E0C()
{
  OUTLINED_FUNCTION_65_0();
  result = TriageRequest.CaseMetaData.kbMiniID.getter(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_26BD77E38()
{
  OUTLINED_FUNCTION_65_0();
  result = TriageRequest.CaseMetaData.callToActionURL.getter(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_26BD77EB8()
{
  OUTLINED_FUNCTION_65_0();
  HasAml = TriageRequest.CaseMetaData.solutionIntentHasAmlArticles.getter(v0);
  return OUTLINED_FUNCTION_39_3(HasAml);
}

uint64_t sub_26BD77F04()
{
  OUTLINED_FUNCTION_65_0();
  HasConfigured = TriageRequest.CaseMetaData.solutionIntentHasConfiguredSolution.getter(v0);
  return OUTLINED_FUNCTION_39_3(HasConfigured);
}

uint64_t sub_26BD77F50()
{
  OUTLINED_FUNCTION_65_0();
  result = TriageRequest.CaseMetaData.excludedArticleIds.getter(v1);
  *v0 = result;
  return result;
}

uint64_t sub_26BD77F7C()
{
  OUTLINED_FUNCTION_65_0();
  result = TriageRequest.CaseMetaData.recommendedSolutionSearchIntentSolutions.getter(v1);
  *v0 = result;
  return result;
}

uint64_t sub_26BD78020()
{
  OUTLINED_FUNCTION_65_0();
  result = TriageRequest.CaseMetaData.triageConfigurationID.getter(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_26BD780B4()
{
  OUTLINED_FUNCTION_65_0();
  result = TriageRequest.ClientContext.deviceName.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_26BD780E0()
{
  OUTLINED_FUNCTION_65_0();
  result = TriageRequest.ClientContext.deviceOs.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_26BD7810C()
{
  OUTLINED_FUNCTION_65_0();
  result = TriageRequest.ClientContext.ipAddress.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_26BD78138()
{
  OUTLINED_FUNCTION_65_0();
  result = TriageRequest.ClientContext.dsID.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_26BD78164()
{
  OUTLINED_FUNCTION_65_0();
  result = TriageRequest.ClientContext.email.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_26BD78190()
{
  OUTLINED_FUNCTION_65_0();
  result = TriageRequest.ClientContext.timeZone.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_26BD781BC()
{
  OUTLINED_FUNCTION_65_0();
  result = TriageRequest.ClientContext.fullTimeZone.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_26BD78238()
{
  OUTLINED_FUNCTION_65_0();
  v0 = TriageRequest.ClientContext.locationServicesEnabled.getter();
  return OUTLINED_FUNCTION_39_3(v0);
}

uint64_t sub_26BD78284()
{
  OUTLINED_FUNCTION_65_0();
  result = TriageRequest.ClientContext.deviceLocale.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_26BD78300()
{
  OUTLINED_FUNCTION_65_0();
  result = TriageRequest.ClientContext.serialNumberInputMethod.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_26BD7832C()
{
  OUTLINED_FUNCTION_65_0();
  result = TriageRequest.ClientContext.appLocale.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_26BD78358()
{
  OUTLINED_FUNCTION_65_0();
  v0 = TriageRequest.ClientContext.isPasscodeSet.getter();
  return OUTLINED_FUNCTION_39_3(v0);
}

uint64_t sub_26BD783A4()
{
  OUTLINED_FUNCTION_65_0();
  v0 = TriageRequest.ClientContext.isCurrentDevice.getter();
  return OUTLINED_FUNCTION_39_3(v0);
}

uint64_t sub_26BD784BC()
{
  OUTLINED_FUNCTION_65_0();
  result = TriageRequest.ClientContext.iTunesUserDsIDHash.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_26BD784E8()
{
  OUTLINED_FUNCTION_65_0();
  result = TriageRequest.ClientContext.entryPoint.getter(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_26BD78514()
{
  OUTLINED_FUNCTION_65_0();
  v1 = TriageRequest.ClientContext.isServiceRecommended.getter(v0);
  return OUTLINED_FUNCTION_39_3(v1);
}

uint64_t sub_26BD78604()
{
  OUTLINED_FUNCTION_65_0();
  v1 = TriageRequest.ClientContext.restartedAfterRecommendation.getter(v0);
  return OUTLINED_FUNCTION_39_3(v1);
}

uint64_t sub_26BD78650()
{
  OUTLINED_FUNCTION_65_0();
  result = TriageRequest.ClientContext.osBuildNumber.getter(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_26BD7867C()
{
  OUTLINED_FUNCTION_65_0();
  result = TriageRequest.ClientContext.currentDeviceSerialNumber.getter(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_26BD786A8()
{
  OUTLINED_FUNCTION_65_0();
  result = TriageRequest.ExecuteSupportOption.solutionTypeString.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_26BD786D4()
{
  OUTLINED_FUNCTION_65_0();
  result = TriageRequest.ExecuteSupportOption.solutionSubTypeString.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_26BD78700()
{
  OUTLINED_FUNCTION_65_0();
  result = TriageRequest.ExecuteSupportOption.solutionSubTypesString.getter();
  *v0 = result;
  return result;
}

uint64_t sub_26BD7872C()
{
  OUTLINED_FUNCTION_65_0();
  result = TriageRequest.ExecuteSupportOption.uuid.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_26BD78758()
{
  OUTLINED_FUNCTION_65_0();
  v0 = TriageRequest.ExecuteSupportOption.isForPremiumAdvisor.getter();
  return OUTLINED_FUNCTION_39_3(v0);
}

uint64_t sub_26BD787A4()
{
  OUTLINED_FUNCTION_65_0();
  result = TriageRequest.ExecuteSupportOption.appleID.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_26BD78824()
{
  OUTLINED_FUNCTION_65_0();
  result = TriageRequest.ExecuteSupportOption.userEnteredFirstName.getter(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_26BD78850()
{
  OUTLINED_FUNCTION_65_0();
  result = TriageRequest.ExecuteSupportOption.userEnteredLastName.getter(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_26BD7887C()
{
  OUTLINED_FUNCTION_65_0();
  result = TriageRequest.ExecuteSupportOption.userEnteredEmail.getter(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_26BD788A8()
{
  OUTLINED_FUNCTION_65_0();
  result = TriageRequest.ExecuteSupportOption.userEnteredPhoneNumber.getter(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_26BD788D4()
{
  OUTLINED_FUNCTION_65_0();
  result = TriageRequest.ExecuteSupportOption.userEnteredCountryCode.getter(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_26BD78900()
{
  OUTLINED_FUNCTION_65_0();
  result = TriageRequest.ExecuteSupportOption.userEnteredCountryCharCode.getter(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_26BD78980()
{
  OUTLINED_FUNCTION_65_0();
  result = TriageRequest.ExecuteSupportOption.userEnteredSecondaryDetails.getter(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_26BD789AC()
{
  OUTLINED_FUNCTION_65_0();
  result = TriageRequest.ExecuteSupportOption.clickToChatEstimatedWaitTimeID.getter(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_26BD789D8()
{
  OUTLINED_FUNCTION_65_0();
  result = TriageRequest.ExecuteSupportOption.chatTransactionID.getter(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_26BD78A04()
{
  OUTLINED_FUNCTION_65_0();
  v1 = TriageRequest.ExecuteSupportOption.rtctOpted.getter(v0);
  return OUTLINED_FUNCTION_39_3(v1);
}

uint64_t sub_26BD78A50()
{
  OUTLINED_FUNCTION_65_0();
  result = TriageRequest.ExecuteSupportOption.reservationSlot.getter(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_26BD78A7C()
{
  OUTLINED_FUNCTION_65_0();
  result = TriageRequest.ExecuteSupportOption.clickToCallEstimatedWaitTimeID.getter(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_26BD78AFC()
{
  OUTLINED_FUNCTION_65_0();
  result = TriageRequest.ExecuteSupportOption.authorizedServiceProviderReferredStoreID.getter(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_26BD78B28()
{
  OUTLINED_FUNCTION_65_0();
  result = TriageRequest.ExecuteSupportOption.authorizedServiceProviderReferredStoreURL.getter(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_26BD78B54()
{
  OUTLINED_FUNCTION_65_0();
  result = TriageRequest.ExecuteSupportOption.authorizedServiceProviderReferredStoreAddress.getter(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_26BD78B80()
{
  OUTLINED_FUNCTION_65_0();
  result = TriageRequest.ExecuteSupportOption.authorizedServiceProviderReferredStoreName.getter(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_26BD78BAC()
{
  OUTLINED_FUNCTION_65_0();
  result = TriageRequest.ExecuteSupportOption.authorizedServiceProviderReferredPhoneNumber.getter(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_26BD78BD8()
{
  OUTLINED_FUNCTION_65_0();
  result = TriageRequest.ExecuteSupportOption.genesysSonarEmailAddress.getter(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_26BD78C04()
{
  OUTLINED_FUNCTION_65_0();
  result = TriageRequest.ExecuteSupportOption.emailAttachmentToken.getter(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_26BD78C30()
{
  OUTLINED_FUNCTION_65_0();
  result = TriageRequest.ExecuteSupportOption.emailTransactionID.getter(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_26BD78C5C()
{
  OUTLINED_FUNCTION_65_0();
  result = TriageRequest.ExecuteSupportOption.emailAdditionalDetails.getter(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_26BD78C88()
{
  OUTLINED_FUNCTION_65_0();
  result = TriageRequest.ExecuteSupportOption.emailEstimatedWaitTime.getter(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_26BD78CB4()
{
  OUTLINED_FUNCTION_65_0();
  result = TriageRequest.ExecuteSupportOption.emailFileAttachmentIds.getter();
  *v0 = result;
  return result;
}

uint64_t sub_26BD78CE0()
{
  OUTLINED_FUNCTION_65_0();
  result = TriageRequest.ExecuteSupportOption.mobileCarrierReferredName.getter(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_26BD78D0C()
{
  OUTLINED_FUNCTION_65_0();
  result = TriageRequest.ExecuteSupportOption.mobileCarrierReferredURL.getter(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_26BD78D38()
{
  OUTLINED_FUNCTION_65_0();
  result = TriageRequest.ExecuteSupportOption.resolvedArticle.getter(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_26BD78D64()
{
  OUTLINED_FUNCTION_65_0();
  result = TriageRequest.ExecuteSupportOption.resolvedArticleTitle.getter(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_26BD78D90()
{
  OUTLINED_FUNCTION_65_0();
  result = TriageRequest.ExecuteSupportOption.resolvedArticleURL.getter(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_26BD78E64()
{
  OUTLINED_FUNCTION_65_0();
  result = TriageRequest.ExecuteSupportOption.applicationData.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_26BD78E90()
{
  OUTLINED_FUNCTION_65_0();
  v1 = TriageRequest.ExecuteSupportOption.isCustomerOptedForSms.getter(v0);
  return OUTLINED_FUNCTION_39_3(v1);
}

uint64_t sub_26BD7920C()
{
  v2 = OUTLINED_FUNCTION_144_0();

  return __swift_getEnumTagSinglePayload(v1, v0, v2);
}

uint64_t sub_26BD7925C()
{
  OUTLINED_FUNCTION_144_0();
  v1 = OUTLINED_FUNCTION_242();

  return __swift_storeEnumTagSinglePayload(v1, v0, v0, v2);
}

uint64_t sub_26BD792F4()
{
  OUTLINED_FUNCTION_102();
  if (v1)
  {
    return OUTLINED_FUNCTION_46(*(v0 + 24));
  }

  OUTLINED_FUNCTION_210();
  OUTLINED_FUNCTION_253_0();
  v4 = OUTLINED_FUNCTION_174(v3);

  return __swift_getEnumTagSinglePayload(v4, v5, v6);
}

void sub_26BD79368()
{
  OUTLINED_FUNCTION_52();
  if (v2)
  {
    *(v1 + 24) = (v0 - 1);
  }

  else
  {
    OUTLINED_FUNCTION_312();
    OUTLINED_FUNCTION_259_0();
    v4 = OUTLINED_FUNCTION_107(v3);

    __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  }
}

uint64_t sub_26BD79414(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = sub_26BDA0850();
  if (v6 <= 0x3F)
  {
    result = a4(319);
    if (v7 <= 0x3F)
    {
      OUTLINED_FUNCTION_247_0();
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_26BD794AC()
{
  OUTLINED_FUNCTION_102();
  if (v1)
  {
    return OUTLINED_FUNCTION_7_0();
  }

  OUTLINED_FUNCTION_210();
  v3 = OUTLINED_FUNCTION_174(*(v0 + 68));

  return __swift_getEnumTagSinglePayload(v3, v4, v5);
}

void sub_26BD79520()
{
  OUTLINED_FUNCTION_52();
  if (v1)
  {
    OUTLINED_FUNCTION_254();
  }

  else
  {
    OUTLINED_FUNCTION_312();
    v2 = OUTLINED_FUNCTION_107(*(v0 + 68));

    __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  }
}

uint64_t sub_26BD79580(uint64_t a1)
{
  result = sub_26BDA0850();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_26BD79634()
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

void sub_26BD796A8()
{
  OUTLINED_FUNCTION_52();
  if (v1)
  {
    OUTLINED_FUNCTION_254();
  }

  else
  {
    OUTLINED_FUNCTION_312();
    v2 = OUTLINED_FUNCTION_107(*(v0 + 28));

    __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  }
}

void __swift_store_extra_inhabitant_index_314Tm(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_144_0();
  OUTLINED_FUNCTION_175();
  if (*(v8 + 84) == a3)
  {
    v9 = OUTLINED_FUNCTION_242();

    __swift_storeEnumTagSinglePayload(v9, v4, v4, v10);
  }

  else
  {
    *(v5 + *(a4 + 20)) = (v4 - 1);
  }
}

uint64_t sub_26BD797F0()
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
    v5 = *(v1 + 60);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280448F88, &qword_26BDA5440);
    v5 = *(v1 + 64);
  }

  v6 = OUTLINED_FUNCTION_174(v5);

  return __swift_getEnumTagSinglePayload(v6, v7, v8);
}

void sub_26BD798B0()
{
  OUTLINED_FUNCTION_52();
  if (v2)
  {
    OUTLINED_FUNCTION_254();
  }

  else
  {
    OUTLINED_FUNCTION_220_0();
    OUTLINED_FUNCTION_175();
    if (*(v3 + 84) == v1)
    {
      v4 = *(v0 + 60);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280448F88, &qword_26BDA5440);
      v4 = *(v0 + 64);
    }

    v5 = OUTLINED_FUNCTION_107(v4);

    __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  }
}

void sub_26BD7995C(uint64_t a1)
{
  sub_26BDA0850();
  if (v1 <= 0x3F)
  {
    sub_26BD79E8C(319, &unk_2804493A0, MEMORY[0x277D215C8], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_26BD79A64()
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

void sub_26BD79AD8()
{
  OUTLINED_FUNCTION_52();
  if (v1)
  {
    OUTLINED_FUNCTION_254();
  }

  else
  {
    OUTLINED_FUNCTION_312();
    v2 = OUTLINED_FUNCTION_107(*(v0 + 36));

    __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  }
}

uint64_t sub_26BD79B38(uint64_t a1)
{
  result = sub_26BDA0850();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_26BD79BD4()
{
  OUTLINED_FUNCTION_102();
  if (v1)
  {
    return OUTLINED_FUNCTION_7_0();
  }

  OUTLINED_FUNCTION_210();
  v3 = OUTLINED_FUNCTION_174(*(v0 + 52));

  return __swift_getEnumTagSinglePayload(v3, v4, v5);
}

void sub_26BD79C48()
{
  OUTLINED_FUNCTION_52();
  if (v1)
  {
    OUTLINED_FUNCTION_254();
  }

  else
  {
    OUTLINED_FUNCTION_312();
    v2 = OUTLINED_FUNCTION_107(*(v0 + 52));

    __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  }
}

void sub_26BD79CA8(uint64_t a1)
{
  sub_26BD79E8C(319, &qword_28044AD90, type metadata accessor for TriageRequest.HMTContext.SettingsGroup, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_26BD79E8C(319, &qword_28044AD98, type metadata accessor for TriageRequest.HMTContext.UserAction, MEMORY[0x277D83940]);
    if (v2 <= 0x3F)
    {
      sub_26BD79E8C(319, &qword_28044ADA0, type metadata accessor for TriageRequest.HMTContext.Article, MEMORY[0x277D83940]);
      if (v3 <= 0x3F)
      {
        sub_26BD79E8C(319, &qword_28044ADA8, type metadata accessor for TriageRequest.HMTContext.BCSArticle, MEMORY[0x277D83940]);
        if (v4 <= 0x3F)
        {
          sub_26BD79E8C(319, &qword_28044ADB0, type metadata accessor for TriageRequest.HMTContext.UserSelection, MEMORY[0x277D83940]);
          if (v5 <= 0x3F)
          {
            sub_26BDA0850();
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_26BD79E8C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_26BD79F04()
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
    v5 = *(v1 + 20);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804495B8, &qword_26BDA7810);
    OUTLINED_FUNCTION_253_0();
  }

  v6 = OUTLINED_FUNCTION_174(v5);

  return __swift_getEnumTagSinglePayload(v6, v7, v8);
}

void sub_26BD79FC0()
{
  OUTLINED_FUNCTION_52();
  if (v2)
  {
    OUTLINED_FUNCTION_254();
  }

  else
  {
    OUTLINED_FUNCTION_220_0();
    OUTLINED_FUNCTION_175();
    if (*(v3 + 84) == v1)
    {
      v4 = *(v0 + 20);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804495B8, &qword_26BDA7810);
      OUTLINED_FUNCTION_259_0();
    }

    v5 = OUTLINED_FUNCTION_107(v4);

    __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  }
}

void sub_26BD7A068(uint64_t a1)
{
  sub_26BDA0850();
  if (v1 <= 0x3F)
  {
    sub_26BD79E8C(319, &qword_28044ADC8, type metadata accessor for TriageRequest.HMTContext.SettingsEvent, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_26BD7A140()
{
  OUTLINED_FUNCTION_102();
  if (v3)
  {
    return OUTLINED_FUNCTION_46(*v1);
  }

  OUTLINED_FUNCTION_210();
  OUTLINED_FUNCTION_175();
  if (*(v5 + 84) == v0)
  {
    v6 = *(v2 + 20);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280449520, &unk_26BDA44F0);
    OUTLINED_FUNCTION_253_0();
  }

  v7 = OUTLINED_FUNCTION_174(v6);

  return __swift_getEnumTagSinglePayload(v7, v8, v9);
}

void sub_26BD7A200()
{
  OUTLINED_FUNCTION_52();
  if (v4)
  {
    *v1 = (v0 - 1);
  }

  else
  {
    OUTLINED_FUNCTION_220_0();
    OUTLINED_FUNCTION_175();
    if (*(v5 + 84) == v3)
    {
      v6 = *(v2 + 20);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280449520, &unk_26BDA44F0);
      OUTLINED_FUNCTION_259_0();
    }

    v7 = OUTLINED_FUNCTION_107(v6);

    __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
  }
}

void sub_26BD7A2AC(uint64_t a1)
{
  sub_26BD79E8C(319, &qword_28044ADE0, type metadata accessor for TriageRequest.HMTContext.Setting, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_26BDA0850();
    if (v2 <= 0x3F)
    {
      sub_26BD79E8C(319, &qword_280449C00, MEMORY[0x277D21570], MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_26BD7A3BC()
{
  OUTLINED_FUNCTION_102();
  if (v0)
  {
    return OUTLINED_FUNCTION_7_0();
  }

  OUTLINED_FUNCTION_210();
  OUTLINED_FUNCTION_253_0();
  v3 = OUTLINED_FUNCTION_174(v2);

  return __swift_getEnumTagSinglePayload(v3, v4, v5);
}

void sub_26BD7A42C()
{
  OUTLINED_FUNCTION_52();
  if (v0)
  {
    OUTLINED_FUNCTION_254();
  }

  else
  {
    OUTLINED_FUNCTION_312();
    OUTLINED_FUNCTION_259_0();
    v2 = OUTLINED_FUNCTION_107(v1);

    __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  }
}

uint64_t sub_26BD7A494(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_26BDA0850();
  if (v5 <= 0x3F)
  {
    OUTLINED_FUNCTION_247_0();
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_26BD7A51C()
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
    OUTLINED_FUNCTION_253_0();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280449520, &unk_26BDA44F0);
    v5 = *(v1 + 28);
  }

  v6 = OUTLINED_FUNCTION_174(v5);

  return __swift_getEnumTagSinglePayload(v6, v7, v8);
}

void sub_26BD7A5D8()
{
  OUTLINED_FUNCTION_52();
  if (v2)
  {
    OUTLINED_FUNCTION_254();
  }

  else
  {
    OUTLINED_FUNCTION_220_0();
    OUTLINED_FUNCTION_175();
    if (*(v3 + 84) == v1)
    {
      OUTLINED_FUNCTION_259_0();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280449520, &unk_26BDA44F0);
      v4 = *(v0 + 28);
    }

    v5 = OUTLINED_FUNCTION_107(v4);

    __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  }
}

void sub_26BD7A680(uint64_t a1)
{
  sub_26BDA0850();
  if (v1 <= 0x3F)
  {
    sub_26BD79E8C(319, &qword_280449C00, MEMORY[0x277D21570], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_430Tm()
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
    v5 = *(v1 + 28);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280449520, &unk_26BDA44F0);
    v5 = *(v1 + 32);
  }

  v6 = OUTLINED_FUNCTION_174(v5);

  return __swift_getEnumTagSinglePayload(v6, v7, v8);
}

void __swift_store_extra_inhabitant_index_431Tm()
{
  OUTLINED_FUNCTION_52();
  if (v2)
  {
    OUTLINED_FUNCTION_254();
  }

  else
  {
    OUTLINED_FUNCTION_220_0();
    OUTLINED_FUNCTION_175();
    if (*(v3 + 84) == v1)
    {
      v4 = *(v0 + 28);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280449520, &unk_26BDA44F0);
      v4 = *(v0 + 32);
    }

    v5 = OUTLINED_FUNCTION_107(v4);

    __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  }
}

void sub_26BD7A920()
{
  sub_26BDA0850();
  if (v0 <= 0x3F)
  {
    sub_26BD79E8C(319, &qword_280449C00, MEMORY[0x277D21570], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      OUTLINED_FUNCTION_247_0();
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_26BD7A9EC(uint64_t a1)
{
  sub_26BD79E8C(319, &qword_28044AE48, type metadata accessor for TriageRequest.Product, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_26BD79E8C(319, &qword_28044AE50, type metadata accessor for TriageRequest.SymptomInformation, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_26BD79E8C(319, &unk_2804493A0, MEMORY[0x277D215C8], MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        sub_26BD79E8C(319, &qword_28044AE58, type metadata accessor for TriageRequest.ExecuteSupportOption, MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          sub_26BD79E8C(319, &qword_28044AE60, type metadata accessor for TriageRequest.CaseMetaData.SupportOptionReference, MEMORY[0x277D83D88]);
          if (v5 <= 0x3F)
          {
            swift_updateClassMetadata2();
          }
        }
      }
    }
  }
}

void sub_26BD7ACB4(uint64_t a1)
{
  sub_26BD79E8C(319, &qword_280449810, type metadata accessor for PhoneNumber, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_26BD79E8C(319, &unk_2804493A0, MEMORY[0x277D215C8], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_26BD7AE4C(uint64_t a1)
{
  sub_26BD79E8C(319, &unk_2804493A0, MEMORY[0x277D215C8], MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t OUTLINED_FUNCTION_1_5(uint64_t a1)
{
  *v1 = a1;
  *(a1 + 64) = v2;
  result = type metadata accessor for TriageRequest.ExecuteSupportOption(0);
  *(a1 + 72) = *(result + 20);
  return result;
}

uint64_t OUTLINED_FUNCTION_3_3(uint64_t a1)
{
  *v1 = a1;
  *(a1 + 64) = v2;
  result = type metadata accessor for TriageRequest.ExecuteSupportOption(0);
  *(a1 + 72) = *(result + 20);
  return result;
}

uint64_t OUTLINED_FUNCTION_8_4(uint64_t a1)
{
  *v1 = a1;
  *(a1 + 64) = v2;
  result = type metadata accessor for TriageRequest.ClientContext(0);
  *(a1 + 72) = *(result + 20);
  return result;
}

uint64_t OUTLINED_FUNCTION_9_2(uint64_t a1)
{
  *v1 = a1;
  *(a1 + 64) = v2;
  result = type metadata accessor for TriageRequest.CaseMetaData(0);
  *(a1 + 72) = *(result + 20);
  return result;
}

uint64_t OUTLINED_FUNCTION_38_3(uint64_t a1)
{
  *v1 = a1;
  *(a1 + 72) = v2;
  return 0;
}

uint64_t OUTLINED_FUNCTION_58_1()
{
  type metadata accessor for TriageRequest.ClientContext._StorageClass(0);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_71_1()
{

  return sub_26BD31AF8();
}

uint64_t OUTLINED_FUNCTION_78_0@<X0>(int a1@<W8>)
{
  *(v1 + 48) = a1;

  return sub_26BD31AF8();
}

uint64_t OUTLINED_FUNCTION_86_2(uint64_t a1)
{
  *v1 = a1;
  *(a1 + 56) = v2;
  return 0;
}

uint64_t OUTLINED_FUNCTION_91_1()
{
  type metadata accessor for TriageRequest.ExecuteSupportOption._StorageClass(0);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_92_2()
{
  type metadata accessor for TriageRequest.CaseMetaData._StorageClass(0);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_107_0(uint64_t a1, uint64_t a2)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_113_0(uint64_t a1)
{

  return swift_beginAccess();
}

void OUTLINED_FUNCTION_118_0()
{
  *v0 = 0;
  v0[1] = 0xE000000000000000;
  v0[2] = 0;
  v0[3] = 0xE000000000000000;
  v0[4] = 0;
  v0[5] = 0xE000000000000000;
  v0[6] = 0;
  v0[7] = 0xE000000000000000;
  v0[8] = 0;
  v0[9] = 0xE000000000000000;
}

uint64_t OUTLINED_FUNCTION_125_0(uint64_t a1, uint64_t a2)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_127_1(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v1, 0, 1, a1);
}

uint64_t OUTLINED_FUNCTION_138_1(uint64_t a1, uint64_t a2)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_149_1()
{
  type metadata accessor for TriageRequest.ClientContext(0);

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_151_1()
{

  return sub_26BDA0FB0();
}

uint64_t OUTLINED_FUNCTION_156_1()
{
  *v2 = v1;
  v2[1] = v0;
}

uint64_t OUTLINED_FUNCTION_201_0()
{

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_203_0(uint64_t a1)
{

  return swift_once();
}

void OUTLINED_FUNCTION_209_0(uint64_t a1@<X8>)
{
  v1[4] = 0;
  v1[5] = a1;
  v1[6] = 0;
  v1[7] = a1;
  v1[8] = 0;
  v1[9] = a1;
}

uint64_t OUTLINED_FUNCTION_212_0(uint64_t a1)
{
  type metadata accessor for TriageRequest.ClientContext(a1);

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_213_0(uint64_t a1)
{
  type metadata accessor for TriageRequest.ExecuteSupportOption(a1);

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_220_0()
{

  return sub_26BDA0850();
}

uint64_t OUTLINED_FUNCTION_221_0(uint64_t a1)
{

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_227_0@<X0>(uint64_t a2@<X8>)
{
  *(v2 + 80) = 0;
  *(v2 + 88) = a2;
  *(v2 + 96) = 0;
  *(v2 + 100) = 0;
  *(v2 + 104) = 0;
  *(v2 + 112) = a2;
  *(v2 + 120) = 0;
  *(v2 + 128) = a2;
  *(v2 + 136) = 0;
  *(v2 + 144) = a2;

  return _s15SupportServices0A19OptionTypeNamespaceVACycfC_0();
}

uint64_t OUTLINED_FUNCTION_231_0()
{

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_232_0()
{

  return sub_26BD31AF8();
}

uint64_t OUTLINED_FUNCTION_251_0()
{

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_276_0()
{

  return sub_26BDA0830();
}

uint64_t OUTLINED_FUNCTION_277_0()
{

  return sub_26BD31AF8();
}

uint64_t OUTLINED_FUNCTION_278_0()
{

  return sub_26BD65C08();
}

uint64_t OUTLINED_FUNCTION_279_0@<X0>(int a1@<W8>)
{
  *(v1 + 40) = a1;

  return sub_26BD31AF8();
}

uint64_t OUTLINED_FUNCTION_285_0(uint64_t a1)
{

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_297_0(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_26BDA0AB0();
}

uint64_t OUTLINED_FUNCTION_298_0()
{

  return sub_26BD2E160();
}

uint64_t OUTLINED_FUNCTION_299_0()
{

  return sub_26BDA07E0();
}

uint64_t OUTLINED_FUNCTION_302_0()
{
  type metadata accessor for TriageRequest.ClientContext(0);

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t CaseDetails.caseID.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t CaseDetails.bizChatURL.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t CaseDetails.phoneNumber.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t CaseDetails.init(with:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + *(type metadata accessor for ExecuteResponse(0) + 20));
  swift_beginAccess();
  v5 = v4[3];
  *a2 = v4[2];
  a2[1] = v5;
  swift_beginAccess();
  v6 = v4[63];
  a2[2] = v4[62];
  a2[3] = v6;
  swift_beginAccess();
  v7 = v4[70];
  v8 = v4[71];

  result = sub_26BD7C040(a1);
  a2[4] = v7;
  a2[5] = v8;
  return result;
}

uint64_t sub_26BD7C040(uint64_t a1)
{
  v2 = type metadata accessor for ExecuteResponse(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_26BD7C0B0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_26BD7C0F0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

SupportServices::ContactSolutionSubtype_optional __swiftcall ContactSolutionSubtype.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_26BDA0F30();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t ContactSolutionSubtype.rawValue.getter()
{
  v1 = 0x454E4F4850;
  if (*v0 != 1)
  {
    v1 = 0x5448435A42;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 4475971;
  }
}

unint64_t sub_26BD7C204()
{
  result = qword_28044AF30;
  if (!qword_28044AF30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28044AF30);
  }

  return result;
}

uint64_t sub_26BD7C27C@<X0>(uint64_t *a1@<X8>)
{
  result = ContactSolutionSubtype.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for ContactSolutionSubtype(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *storeEnumTagSinglePayload for ContactSolutionSubtype(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x26BD7C404);
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

uint64_t ContactType.id.getter()
{
  if (*v0)
  {
    return 1952540771;
  }

  else
  {
    return 1819042147;
  }
}

uint64_t ContactType.hashValue.getter()
{
  v1 = *v0;
  sub_26BDA1050();
  MEMORY[0x26D695FC0](v1);
  return sub_26BDA1070();
}

uint64_t sub_26BD7C508(uint64_t a1)
{
  v2 = *v1;
  sub_26BDA1050();
  MEMORY[0x26D695FC0](v2);
  return sub_26BDA1070();
}

unint64_t sub_26BD7C550()
{
  result = qword_28044AF38;
  if (!qword_28044AF38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28044AF38);
  }

  return result;
}

uint64_t sub_26BD7C5B0@<X0>(uint64_t *a1@<X8>)
{
  result = ContactType.id.getter();
  *a1 = result;
  a1[1] = 0xE400000000000000;
  return result;
}

uint64_t getEnumTagSinglePayload for ContactType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
    if (a2 + 1 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 1) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = v6 - 2;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for ContactType(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x26BD7C730);
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

void HMTSolution.Step.alternativeSymptomInfo.getter(uint64_t *a1@<X8>)
{
  v2 = v1[4];
  v3 = v1[5];
  v4 = v1[6];
  v5 = v1[7];
  v6 = v1[8];
  v7 = v1[9];
  v8 = v1[10];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  a1[6] = v8;
  sub_26BD7C7D4(v2, v3, v4, v5, v6, v7);
}

void sub_26BD7C7D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
  }
}

void __swiftcall HMTSolution.Step.init(id:articles:shouldShowContactOptions:alternativeSymptomInfo:)(SupportServices::HMTSolution::Step *__return_ptr retstr, Swift::String id, Swift::OpaquePointer articles, Swift::Bool shouldShowContactOptions, SupportServices::SupportSymptomInfo_optional *alternativeSymptomInfo)
{
  batteryServiceLevel = alternativeSymptomInfo->value.batteryServiceLevel;
  retstr->id = id;
  retstr->articles = articles;
  retstr->shouldShowContactOptions = shouldShowContactOptions;
  symptomId = alternativeSymptomInfo->value.symptomId;
  *(&retstr->alternativeSymptomInfo.value.categoryId + 7) = alternativeSymptomInfo->value.categoryId;
  *(&retstr->alternativeSymptomInfo.value.symptomId + 7) = symptomId;
  *(&retstr->alternativeSymptomInfo.value.productId + 7) = alternativeSymptomInfo->value.productId;
  *(&retstr->alternativeSymptomInfo.value.batteryServiceLevel + 7) = batteryServiceLevel;
}

uint64_t HMTSolution.Article.ArticleType.hashValue.getter()
{
  v1 = *v0;
  sub_26BDA1050();
  MEMORY[0x26D695FC0](v1);
  return sub_26BDA1070();
}

uint64_t type metadata accessor for HMTSolution.Article(uint64_t a1)
{
  result = qword_28044AF50;
  if (!qword_28044AF50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t HMTSolution.Article.type.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for HMTSolution.Article(0);
  *a1 = *(v1 + *(result + 40));
  return result;
}

uint64_t HMTSolution.Article.init(id:localeIdentifier:rank:title:summary:url:type:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, uint64_t a11, char *a12)
{
  v13 = *a12;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a10;
  *(a9 + 40) = a5;
  *(a9 + 48) = a6;
  *(a9 + 56) = a7;
  *(a9 + 64) = a8;
  v14 = type metadata accessor for HMTSolution.Article(0);
  result = sub_26BD31AA0();
  *(a9 + *(v14 + 40)) = v13;
  return result;
}

uint64_t sub_26BD7CAD8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 8);
  *a2 = *a1;
  a2[1] = v4;
  v5 = *(a1 + 24);
  a2[2] = *(a1 + 16);
  a2[3] = v5;
  a2[4] = *(a1 + 32);
  v6 = *(a1 + 48);
  a2[5] = *(a1 + 40);
  a2[6] = v6;
  v7 = *(a1 + 64);
  a2[7] = *(a1 + 56);
  a2[8] = v7;
  v8 = type metadata accessor for HMTSolution.Article(0);

  sub_26BDA04E0();
  v9 = *(a1 + 72);
  LODWORD(v5) = *(a1 + 80);
  OUTLINED_FUNCTION_8_5();
  result = sub_26BD8055C(a1, v10);
  if (v5)
  {
    v12 = v9;
  }

  else
  {
    v12 = 0;
  }

  *(a2 + *(v8 + 40)) = v12;
  return result;
}

uint64_t sub_26BD7CBAC@<X0>(uint64_t *a1@<X8>)
{
  result = HMTSolution.Article.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_26BD7CBE8()
{
  result = qword_28044AF48;
  if (!qword_28044AF48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28044AF48);
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_26BD7CC48(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_26BD7CC88(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_15SupportServices0A11SymptomInfoVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_26BD7CCF4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 88))
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

uint64_t sub_26BD7CD34(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_26BD7CDAC(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28044AF40, &qword_26BDA9580);
    v9 = a1 + *(a3 + 36);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_26BD7CE54(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28044AF40, &qword_26BDA9580);
    v8 = v5 + *(a4 + 36);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

void sub_26BD7CEE0(uint64_t a1)
{
  sub_26BD7CF88();
  if (v1 <= 0x3F)
  {
    sub_26BD7CFD8(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_26BD7CF88()
{
  if (!qword_28044AF60)
  {
    v0 = sub_26BDA0DA0();
    if (!v1)
    {
      atomic_store(v0, &qword_28044AF60);
    }
  }
}

void sub_26BD7CFD8(uint64_t a1)
{
  if (!qword_28044AF68)
  {
    sub_26BDA0510();
    v1 = sub_26BDA0DA0();
    if (!v2)
    {
      atomic_store(v1, &qword_28044AF68);
    }
  }
}

uint64_t getEnumTagSinglePayload for HMTSolution.Article.ArticleType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFD)
  {
    if (a2 + 3 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 3) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 4;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v5 = v6 - 4;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for HMTSolution.Article.ArticleType(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
        JUMPOUT(0x26BD7D184);
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_26BD7D1BC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v175 = a2;
  v3 = type metadata accessor for HMTBCSSolution(0);
  v177 = *(v3 - 8);
  MEMORY[0x28223BE20](v3 - 8);
  OUTLINED_FUNCTION_44();
  v6 = OUTLINED_FUNCTION_145(v5 - v4);
  v7 = type metadata accessor for HMTSolution.Article(v6);
  v8 = OUTLINED_FUNCTION_22_1(v7, &v214);
  v194 = v9;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_57();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_252();
  OUTLINED_FUNCTION_14_2(v13);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28044A1B0, &qword_26BDA6188);
  v15 = OUTLINED_FUNCTION_110(v14);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_57();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_252();
  v18 = OUTLINED_FUNCTION_145(v17);
  v19 = type metadata accessor for HMTArticle(v18);
  v178 = *(v19 - 8);
  MEMORY[0x28223BE20](v19 - 8);
  OUTLINED_FUNCTION_57();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_252();
  v22 = OUTLINED_FUNCTION_145(v21);
  v198 = type metadata accessor for HMTSolutionResponse.AlternativeSymptomInfo(v22);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_14_2(v25 - v24);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280449CA0, &qword_26BDA4B78);
  v27 = OUTLINED_FUNCTION_110(v26);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_14_2(&v174 - v28);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28044A1C0, &qword_26BDA6198);
  v30 = OUTLINED_FUNCTION_110(v29);
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_57();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_252();
  v33 = OUTLINED_FUNCTION_145(v32);
  v34 = type metadata accessor for HMTSolutionResponse.Step(v33);
  v35 = OUTLINED_FUNCTION_22_1(v34, &v215);
  v183 = v36;
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_57();
  v39 = v37 - v38;
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_252();
  OUTLINED_FUNCTION_14_2(v41);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28044A1D0, &qword_26BDA61A8);
  v43 = OUTLINED_FUNCTION_110(v42);
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_57();
  v46 = (v44 - v45);
  MEMORY[0x28223BE20](v47);
  v49 = (&v174 - v48);
  v50 = sub_26BDA0B70();
  v191 = a1;
  v51 = *a1 + 64;
  OUTLINED_FUNCTION_3_4();
  v54 = v53 & v52;
  v202 = (v55 + 63) >> 6;
  v184 = v56;

  v57 = 0;
  v200 = 0;
  v195 = v49;
  v190 = v51;
  v182 = v39;
  v189 = v46;
  while (1)
  {
    v201 = v50;
    if (v54)
    {
LABEL_7:
      v54 &= v54 - 1;
      OUTLINED_FUNCTION_18_3();
      v61 = *v59;
      v60 = v59[1];
      OUTLINED_FUNCTION_17_4(v62);
      sub_26BD80504();
      v63 = &unk_26BDA61B0;
      v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28044A1D8, &unk_26BDA61B0);
      *v46 = v61;
      v46[1] = v60;
      OUTLINED_FUNCTION_10_0();
      sub_26BD7EEE0();
      __swift_storeEnumTagSinglePayload(v46, 0, 1, v64);

      v39 = v182;
    }

    else
    {
      while (1)
      {
        v58 = v57 + 1;
        if (__OFADD__(v57, 1))
        {
          __break(1u);
LABEL_59:
          __break(1u);
          goto LABEL_60;
        }

        if (v58 >= v202)
        {
          break;
        }

        v54 = *(v51 + 8 * v58);
        ++v57;
        if (v54)
        {
          v57 = v58;
          goto LABEL_7;
        }
      }

      v63 = &unk_26BDA61B0;
      v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28044A1D8, &unk_26BDA61B0);
      OUTLINED_FUNCTION_26_1(v90);
      v54 = 0;
    }

    sub_26BD31AA0();
    v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28044A1D8, &unk_26BDA61B0);
    if (__swift_getEnumTagSinglePayload(v49, 1, v65) == 1)
    {
      break;
    }

    v67 = *v49;
    v66 = v49[1];
    OUTLINED_FUNCTION_10_0();
    v68 = sub_26BD7EEE0();
    v69 = v39;
    MEMORY[0x28223BE20](v68);
    v70 = v191;
    *(&v174 - 2) = v191;
    v71 = v200;
    v73 = sub_26BD7E3EC(sub_26BD7EEA8, (&v174 - 4), v72);
    MEMORY[0x28223BE20](v73);
    *(&v174 - 2) = v70;
    v75 = sub_26BD7E3EC(sub_26BD7EEC4, (&v174 - 4), v74);
    v203[0] = v73;
    sub_26BD93E7C(v75);

    sub_26BD7ED9C(v203);
    v58 = &v216;
    v200 = v71;
    if (v71)
    {
      goto LABEL_65;
    }

    v76 = v203[0];
    v77 = v197;
    sub_26BD31AF8();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v77, 1, v198);
    sub_26BD04E80(v77, &qword_280449CA0, &qword_26BDA4B78);
    if (EnumTagSinglePayload == 1)
    {
      v79 = 0;
      v80 = 0;
      v81 = 0;
      v82 = 0;
      v83 = 0;
      v84 = 0uLL;
    }

    else
    {
      v85 = v176;
      sub_26BD17EC4();
      sub_26BD7E8EC(v85, v203);
      v79 = v203[0];
      v80 = v203[1];
      v81 = v203[2];
      v82 = v203[3];
      v84 = v204;
      v83 = v205;
    }

    v86 = v201;
    v46 = v189;
    v39 = v69;
    v87 = *(v69 + 8);
    v88 = *(v69 + 32);
    v206[0] = *v69;
    v206[1] = v87;
    v206[2] = v76;
    v207 = v88;
    v208 = v79;
    v209 = v80;
    v210 = v81;
    v211 = v82;
    v212 = v84;
    v213 = v83;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v203[0] = v86;
    sub_26BD9EBDC(v206, v67, v66, isUniquelyReferenced_nonNull_native);

    v50 = v203[0];
    sub_26BD8055C(v69, type metadata accessor for HMTSolutionResponse.Step);
    v49 = v195;
    v51 = v190;
  }

  v202 = sub_26BDA0B70();
  v91 = v191[1] + 64;
  OUTLINED_FUNCTION_3_4();
  v94 = v93 & v92;
  v96 = (v95 + 63) >> 6;
  v184 = v97;

  v98 = 0;
  v99 = v188;
  v189 = v96;
  v190 = v91;
  if (!v94)
  {
    goto LABEL_17;
  }

LABEL_21:
  while (1)
  {
    OUTLINED_FUNCTION_20_6();
    OUTLINED_FUNCTION_18_3();
    v102 = *v100;
    v101 = v100[1];
    OUTLINED_FUNCTION_17_4(v103);
    sub_26BD80504();
    v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28044A1C8, &qword_26BDA61A0);
    *v99 = v102;
    v99[1] = v101;
    OUTLINED_FUNCTION_9_3();
    sub_26BD7EEE0();
    __swift_storeEnumTagSinglePayload(v99, 0, 1, v104);

LABEL_22:
    v105 = v187;
    sub_26BD31AA0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28044A1C8, &qword_26BDA61A0);
    OUTLINED_FUNCTION_28_3(v105, 1);
    if (v106)
    {
      break;
    }

    v107 = v105[1];
    v198 = *v105;
    v197 = v107;
    OUTLINED_FUNCTION_9_3();
    v108 = v185;
    sub_26BD7EEE0();
    v109 = *(v108 + 8);
    v110 = v186;
    *v186 = *v108;
    v110[1] = v109;
    v111 = *(v108 + 24);
    v110[2] = *(v108 + 16);
    v110[3] = v111;
    v110[4] = *(v108 + 32);
    v112 = *(v108 + 48);
    v110[5] = *(v108 + 40);
    v110[6] = v112;
    v113 = *(v108 + 64);
    v110[7] = *(v108 + 56);
    v110[8] = v113;
    v114 = *(v108 + 96);
    v196 = *(v108 + 88);
    OUTLINED_FUNCTION_23_2(v114);

    v115 = v197;
    sub_26BDA04E0();
    v116 = *(v108 + 72);
    LODWORD(v111) = *(v108 + 80);
    OUTLINED_FUNCTION_8_5();
    sub_26BD8055C(v108, v117);
    if (v111)
    {
      v118 = v116;
    }

    else
    {
      v118 = 0;
    }

    v119 = v63[10];
    v63 = v198;
    *(v110 + v119) = v118;
    OUTLINED_FUNCTION_0_9();
    sub_26BD7EEE0();
    swift_isUniquelyReferenced_nonNull_native();
    v203[0] = v105;
    sub_26BD31908(v63, v115);
    OUTLINED_FUNCTION_24_1();
    if (v122)
    {
      goto LABEL_61;
    }

    v123 = v120;
    v124 = v121;
    v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28044AF70, &qword_26BDA9730);
    if (OUTLINED_FUNCTION_27_1(v125))
    {
      v126 = sub_26BD31908(v63, v115);
      v91 = v190;
      if ((v124 & 1) != (v127 & 1))
      {
        goto LABEL_66;
      }

      v123 = v126;
    }

    else
    {
      v91 = v190;
    }

    v96 = v189;
    if (v124)
    {

      v202 = v203[0];
      OUTLINED_FUNCTION_13_3();
      sub_26BD7EE44(v199, v128 + v129 * v123);
    }

    else
    {
      v130 = v203[0];
      *(v203[0] + 8 * (v123 >> 6) + 64) |= 1 << v123;
      v131 = (*(v130 + 48) + 16 * v123);
      *v131 = v63;
      v131[1] = v115;
      OUTLINED_FUNCTION_13_3();
      OUTLINED_FUNCTION_0_9();
      sub_26BD7EEE0();
      v202 = v130;
      v132 = *(v130 + 16);
      v122 = __OFADD__(v132, 1);
      v58 = v132 + 1;
      if (v122)
      {
        goto LABEL_63;
      }

      *(v202 + 16) = v58;
    }

    v99 = v188;
    if (!v94)
    {
LABEL_17:
      while (1)
      {
        v58 = v98 + 1;
        if (__OFADD__(v98, 1))
        {
          goto LABEL_59;
        }

        if (v58 >= v96)
        {
          v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28044A1C8, &qword_26BDA61A0);
          __swift_storeEnumTagSinglePayload(v99, 1, 1, v133);
          v94 = 0;
          goto LABEL_22;
        }

        v94 = *(v91 + 8 * v58);
        ++v98;
        if (v94)
        {
          v98 = v58;
          goto LABEL_21;
        }
      }
    }
  }

  v134 = v191[2] + 64;
  OUTLINED_FUNCTION_3_4();
  v137 = v136 & v135;
  v139 = (v138 + 63) >> 6;
  v190 = v140;

  v141 = 0;
  v142 = v181;
  v196 = v134;
  v195 = v139;
  if (!v137)
  {
    goto LABEL_40;
  }

  do
  {
LABEL_44:
    OUTLINED_FUNCTION_20_6();
    OUTLINED_FUNCTION_18_3();
    v144 = *v143;
    v145 = v143[1];
    OUTLINED_FUNCTION_17_4(v146);
    sub_26BD80504();
    v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28044A1B8, &qword_26BDA6190);
    *v142 = v144;
    v142[1] = v145;
    OUTLINED_FUNCTION_7_3();
    sub_26BD7EEE0();
    __swift_storeEnumTagSinglePayload(v142, 0, 1, v147);

LABEL_45:
    v148 = v180;
    sub_26BD31AA0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28044A1B8, &qword_26BDA6190);
    OUTLINED_FUNCTION_28_3(v148, 1);
    if (v106)
    {

      v171 = v175;
      v172 = v202;
      *v175 = v201;
      v171[1] = v172;
      return sub_26BD8055C(v191, type metadata accessor for HMTSolutionResponse);
    }

    v149 = v148[1];
    v199 = *v148;
    v198 = v149;
    OUTLINED_FUNCTION_7_3();
    v150 = v192;
    sub_26BD7EEE0();
    v151 = v150[1];
    v152 = v179;
    *v179 = *v150;
    v152[1] = v151;
    v152[2] = 0;
    v152[3] = 0;
    v152[4] = v150[2];
    v153 = v150[6];
    v152[5] = v150[5];
    v152[6] = v153;
    v154 = v150[8];
    v152[7] = v150[7];
    v152[8] = v154;
    OUTLINED_FUNCTION_23_2(v150[9]);

    sub_26BDA04E0();
    sub_26BD8055C(v150, type metadata accessor for HMTBCSSolution);
    v155 = v198;
    *(v152 + 43648) = 3;
    OUTLINED_FUNCTION_0_9();
    sub_26BD7EEE0();
    swift_isUniquelyReferenced_nonNull_native();
    v203[0] = v148;
    v156 = v199;
    sub_26BD31908(v199, v155);
    OUTLINED_FUNCTION_24_1();
    if (v122)
    {
      goto LABEL_62;
    }

    v159 = v157;
    v160 = v158;
    v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28044AF70, &qword_26BDA9730);
    if (OUTLINED_FUNCTION_27_1(v161))
    {
      v162 = sub_26BD31908(v156, v155);
      v164 = v196;
      v139 = v195;
      if ((v160 & 1) != (v163 & 1))
      {
        goto LABEL_66;
      }

      v159 = v162;
      if (v160)
      {
LABEL_53:

        v202 = v203[0];
        OUTLINED_FUNCTION_13_3();
        sub_26BD7EE44(v193, v168 + v169 * v159);
        goto LABEL_54;
      }
    }

    else
    {
      v164 = v196;
      v139 = v195;
      if (v160)
      {
        goto LABEL_53;
      }
    }

    v165 = v203[0];
    *(v203[0] + 8 * (v159 >> 6) + 64) |= 1 << v159;
    v166 = (*(v165 + 48) + 16 * v159);
    *v166 = v156;
    v166[1] = v155;
    OUTLINED_FUNCTION_13_3();
    OUTLINED_FUNCTION_0_9();
    sub_26BD7EEE0();
    v202 = v165;
    v167 = *(v165 + 16);
    v122 = __OFADD__(v167, 1);
    v58 = v167 + 1;
    if (v122)
    {
      goto LABEL_64;
    }

    *(v202 + 16) = v58;
LABEL_54:
    v142 = v181;
    v134 = v164;
  }

  while (v137);
LABEL_40:
  while (1)
  {
    v58 = v141 + 1;
    if (__OFADD__(v141, 1))
    {
      break;
    }

    if (v58 >= v139)
    {
      v170 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28044A1B8, &qword_26BDA6190);
      OUTLINED_FUNCTION_26_1(v170);
      v137 = 0;
      goto LABEL_45;
    }

    v137 = *(v134 + 8 * v58);
    ++v141;
    if (v137)
    {
      v141 = v58;
      goto LABEL_44;
    }
  }

LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
LABEL_65:

  __break(1u);
LABEL_66:
  result = sub_26BDA0FE0();
  __break(1u);
  return result;
}

uint64_t sub_26BD7E220@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = type metadata accessor for HMTArticle(0) - 8;
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  MEMORY[0x28223BE20](v10);
  v12 = &v18 - v11;
  if (*(*(a2 + 8) + 16) && (sub_26BD31908(*a1, a1[1]), (v13 & 1) != 0))
  {
    sub_26BD80504();
    sub_26BD7EEE0();
    sub_26BD80504();
    sub_26BD7CAD8(v9, a3);
    sub_26BD8055C(v12, type metadata accessor for HMTArticle);
    v14 = type metadata accessor for HMTSolution.Article(0);
    v15 = a3;
    v16 = 0;
  }

  else
  {
    v14 = type metadata accessor for HMTSolution.Article(0);
    v15 = a3;
    v16 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v15, v16, 1, v14);
}

uint64_t sub_26BD7E3EC(void (*a1)(void), uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28044AF90, &unk_26BDA9740);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v20 - v7;
  v24 = type metadata accessor for HMTSolution.Article(0);
  v20[1] = *(v24 - 8);
  v9 = MEMORY[0x28223BE20](v24);
  v22 = v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = *(a3 + 16);
  v12 = (a3 + 40);
  v13 = MEMORY[0x277D84F90];
  v21 = a1;
  if (v11)
  {
    while (1)
    {
      v14 = *v12;
      v23[0] = *(v12 - 1);
      v23[1] = v14;

      a1(v23);
      if (v3)
      {
        break;
      }

      if (__swift_getEnumTagSinglePayload(v8, 1, v24) == 1)
      {
        sub_26BD04E80(v8, &qword_28044AF90, &unk_26BDA9740);
      }

      else
      {
        sub_26BD7EEE0();
        sub_26BD7EEE0();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_26BD88E6C(0, *(v13 + 16) + 1, 1, v13);
          v13 = v17;
        }

        v16 = *(v13 + 16);
        v15 = *(v13 + 24);
        if (v16 >= v15 >> 1)
        {
          sub_26BD88E6C(v15 > 1, v16 + 1, 1, v13);
          v13 = v18;
        }

        *(v13 + 16) = v16 + 1;
        sub_26BD7EEE0();
        a1 = v21;
      }

      v12 += 2;
      if (!--v11)
      {
        return v13;
      }
    }
  }

  return v13;
}

uint64_t sub_26BD7E6A0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = type metadata accessor for HMTBCSSolution(0) - 8;
  v7 = MEMORY[0x28223BE20](v6);
  v9 = (&v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = MEMORY[0x28223BE20](v7);
  MEMORY[0x28223BE20](v10);
  v12 = &v20 - v11;
  if (*(*(a2 + 16) + 16) && (sub_26BD31908(*a1, a1[1]), (v13 & 1) != 0))
  {
    sub_26BD80504();
    sub_26BD7EEE0();
    sub_26BD80504();
    v14 = v9[1];
    *a3 = *v9;
    a3[1] = v14;
    a3[2] = 0;
    a3[3] = 0;
    a3[4] = v9[2];
    v15 = v9[6];
    a3[5] = v9[5];
    a3[6] = v15;
    v16 = v9[8];
    a3[7] = v9[7];
    a3[8] = v16;
    v17 = type metadata accessor for HMTSolution.Article(0);

    sub_26BDA04E0();
    sub_26BD8055C(v12, type metadata accessor for HMTBCSSolution);
    sub_26BD8055C(v9, type metadata accessor for HMTBCSSolution);
    *(a3 + *(v17 + 40)) = 3;
    return __swift_storeEnumTagSinglePayload(a3, 0, 1, v17);
  }

  else
  {
    v19 = type metadata accessor for HMTSolution.Article(0);
    return __swift_storeEnumTagSinglePayload(a3, 1, 1, v19);
  }
}

uint64_t sub_26BD7E8EC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280449CC8, &unk_26BDA4B90);
  v5 = OUTLINED_FUNCTION_110(v4);
  MEMORY[0x28223BE20](v5);
  v40 = v39 - v6;
  v39[1] = type metadata accessor for ProductPedigreeInfo(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_44();
  v10 = (v9 - v8);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280449CC0, &qword_26BDA4B88);
  v12 = OUTLINED_FUNCTION_110(v11);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_57();
  v15 = v13 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = v39 - v17;
  type metadata accessor for SymptomInfo(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_57();
  v22 = (v20 - v21);
  MEMORY[0x28223BE20](v23);
  v25 = (v39 - v24);
  v39[0] = type metadata accessor for HMTSolutionResponse.AlternativeSymptomInfo(0);
  v41 = a1;
  sub_26BD31AF8();
  OUTLINED_FUNCTION_16_1(v18);
  if (v26)
  {
    *v25 = 0;
    v25[1] = 0xE000000000000000;
    v25[2] = 0;
    v25[3] = 0xE000000000000000;
    _s15SupportServices0A19OptionTypeNamespaceVACycfC_0();
    OUTLINED_FUNCTION_16_1(v18);
    if (!v26)
    {
      sub_26BD04E80(v18, &qword_280449CC0, &qword_26BDA4B88);
    }
  }

  else
  {
    OUTLINED_FUNCTION_6_3();
    sub_26BD7EEE0();
  }

  v28 = v25[2];
  v27 = v25[3];

  OUTLINED_FUNCTION_5_3();
  sub_26BD8055C(v25, v29);
  *a2 = v28;
  a2[1] = v27;
  v30 = v41;
  sub_26BD31AF8();
  OUTLINED_FUNCTION_16_1(v15);
  if (v26)
  {
    *v22 = 0;
    v22[1] = 0xE000000000000000;
    v22[2] = 0;
    v22[3] = 0xE000000000000000;
    _s15SupportServices0A19OptionTypeNamespaceVACycfC_0();
    OUTLINED_FUNCTION_16_1(v15);
    if (!v26)
    {
      sub_26BD04E80(v15, &qword_280449CC0, &qword_26BDA4B88);
    }
  }

  else
  {
    OUTLINED_FUNCTION_6_3();
    sub_26BD7EEE0();
  }

  v32 = *v22;
  v31 = v22[1];

  OUTLINED_FUNCTION_5_3();
  sub_26BD8055C(v22, v33);
  a2[2] = v32;
  a2[3] = v31;
  v34 = v40;
  sub_26BD31AF8();
  OUTLINED_FUNCTION_28_3(v34, 1);
  if (v26)
  {
    *v10 = 0;
    v10[1] = 0xE000000000000000;
    v10[2] = 0;
    v10[3] = 0xE000000000000000;
    v10[4] = 0;
    v10[5] = 0xE000000000000000;
    _s15SupportServices0A19OptionTypeNamespaceVACycfC_0();
    OUTLINED_FUNCTION_28_3(v34, 1);
    if (!v26)
    {
      sub_26BD04E80(v34, &qword_280449CC8, &unk_26BDA4B90);
    }
  }

  else
  {
    sub_26BD7EEE0();
  }

  v35 = sub_26BD7ECB0();
  v37 = v36;
  sub_26BD8055C(v30, type metadata accessor for HMTSolutionResponse.AlternativeSymptomInfo);
  result = sub_26BD8055C(v10, type metadata accessor for ProductPedigreeInfo);
  a2[4] = v35;
  a2[5] = v37;
  a2[6] = 0;
  return result;
}

uint64_t sub_26BD7ECB0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28044AF78, &qword_26BDAA1C0);
  inited = swift_initStackObject();
  v2 = 0;
  *(inited + 16) = xmmword_26BDA1A20;
  v3 = v0[1];
  *(inited + 32) = *v0;
  *(inited + 40) = v3;
  v4 = v0[3];
  *(inited + 48) = v0[2];
  *(inited + 56) = v4;
  v5 = v0[5];
  *(inited + 64) = v0[4];
  *(inited + 72) = v5;
  while (1)
  {
    v6 = v2 + 16;
    if (v2 == 48)
    {
      break;
    }

    v7 = inited + v2;
    v8 = *(v7 + 32);
    v9 = *(v7 + 40);
    v10 = v8 & 0xFFFFFFFFFFFFLL;
    if ((v9 & 0x2000000000000000) != 0)
    {
      v10 = HIBYTE(v9) & 0xF;
    }

    v2 = v6;
    if (v10)
    {

      goto LABEL_8;
    }
  }

  v8 = 0;
LABEL_8:

  return v8;
}

uint64_t sub_26BD7ED9C(uint64_t *a1)
{
  v2 = *(type metadata accessor for HMTSolution.Article(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_26BD804F0(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_26BD7EF38(v6);
  *a1 = v3;
  return result;
}

uint64_t sub_26BD7EE44(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HMTSolution.Article(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_26BD7EEE0()
{
  OUTLINED_FUNCTION_184();
  v1(0);
  OUTLINED_FUNCTION_34();
  v2 = OUTLINED_FUNCTION_147();
  v3(v2);
  return v0;
}

uint64_t sub_26BD7EF38(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_26BDA0F90();
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
        type metadata accessor for HMTSolution.Article(0);
        v6 = sub_26BDA0CA0();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for HMTSolution.Article(0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_26BD7F2AC(v8, v9, a1, v4);
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
    return sub_26BD7F068(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_26BD7F068(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v32 = type metadata accessor for HMTSolution.Article(0);
  v8 = MEMORY[0x28223BE20](v32);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = (&v25 - v10);
  result = MEMORY[0x28223BE20](v9);
  v15 = (&v25 - v14);
  v27 = a2;
  if (a3 != a2)
  {
    v16 = *a4;
    v17 = *(v13 + 72);
    v18 = *a4 + v17 * (a3 - 1);
    v19 = -v17;
    v20 = a1 - a3;
    v26 = v17;
    v21 = v16 + v17 * a3;
    while (2)
    {
      v30 = v18;
      v31 = a3;
      v28 = v21;
      v29 = v20;
      do
      {
        sub_26BD80504();
        sub_26BD80504();
        v22 = v15[4];
        v23 = v11[4];
        sub_26BD8055C(v11, type metadata accessor for HMTSolution.Article);
        result = sub_26BD8055C(v15, type metadata accessor for HMTSolution.Article);
        if (v22 >= v23)
        {
          break;
        }

        if (!v16)
        {
          __break(1u);
          return result;
        }

        sub_26BD7EEE0();
        swift_arrayInitWithTakeFrontToBack();
        result = sub_26BD7EEE0();
        v18 += v19;
        v21 += v19;
      }

      while (!__CFADD__(v20++, 1));
      a3 = v31 + 1;
      v18 = v30 + v26;
      v20 = v29 - 1;
      v21 = v28 + v26;
      if (v31 + 1 != v27)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_26BD7F2AC(unint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = v4;
  v109 = a1;
  v120 = type metadata accessor for HMTSolution.Article(0);
  v115 = *(v120 - 8);
  v9 = MEMORY[0x28223BE20](v120);
  v112 = &v105 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v119 = &v105 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v121 = &v105 - v14;
  MEMORY[0x28223BE20](v13);
  v16 = (&v105 - v15);
  v116 = a3;
  v17 = a3[1];
  if (v17 < 1)
  {
    v19 = MEMORY[0x277D84F90];
LABEL_100:
    v5 = *v109;
    if (!*v109)
    {
      goto LABEL_141;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_102:
      v99 = (v19 + 16);
      v100 = *(v19 + 16);
      for (i = v19; v100 >= 2; v19 = i)
      {
        if (!*v116)
        {
          goto LABEL_138;
        }

        v101 = (v19 + 16 * v100);
        v19 = *v101;
        v102 = &v99[2 * v100];
        v103 = v102[1];
        sub_26BD7FBC8(*v116 + *(v115 + 72) * *v101, *v116 + *(v115 + 72) * *v102, *v116 + *(v115 + 72) * v103, v5);
        if (v6)
        {
          break;
        }

        if (v103 < v19)
        {
          goto LABEL_126;
        }

        if (v100 - 2 >= *v99)
        {
          goto LABEL_127;
        }

        *v101 = v19;
        v101[1] = v103;
        v104 = *v99 - v100;
        if (*v99 < v100)
        {
          goto LABEL_128;
        }

        v100 = *v99 - 1;
        memmove(v102, v102 + 2, 16 * v104);
        *v99 = v100;
      }

LABEL_110:

      return;
    }

LABEL_135:
    v19 = sub_26BD80048(v19);
    goto LABEL_102;
  }

  v107 = a4;
  v18 = 0;
  v19 = MEMORY[0x277D84F90];
  while (1)
  {
    v20 = v18;
    v21 = v18 + 1;
    if (v18 + 1 < v17)
    {
      v22 = *v116;
      v23 = *(v115 + 72);
      v118 = v18 + 1;
      v24 = v22 + v23 * v21;
      v25 = v22;
      v114 = v17;
      sub_26BD80504();
      v5 = v20;
      v26 = v121;
      sub_26BD80504();
      v27 = v16[4];
      v28 = *(v26 + 32);
      sub_26BD8055C(v26, type metadata accessor for HMTSolution.Article);
      sub_26BD8055C(v16, type metadata accessor for HMTSolution.Article);
      v29 = v114;
      v108 = v5;
      v30 = v5 + 2;
      i = v23;
      v31 = v25 + v23 * (v5 + 2);
      while (1)
      {
        v32 = v30;
        if (++v118 >= v29)
        {
          break;
        }

        sub_26BD80504();
        v5 = v121;
        sub_26BD80504();
        v33 = v16[4];
        v34 = *(v5 + 32);
        sub_26BD8055C(v5, type metadata accessor for HMTSolution.Article);
        sub_26BD8055C(v16, type metadata accessor for HMTSolution.Article);
        v29 = v114;
        v31 += i;
        v24 += i;
        v30 = v32 + 1;
        if (v27 < v28 == v33 >= v34)
        {
          goto LABEL_9;
        }
      }

      v118 = v29;
LABEL_9:
      if (v27 < v28)
      {
        v21 = v118;
        if (v118 < v108)
        {
          goto LABEL_132;
        }

        if (v108 >= v118)
        {
          v20 = v108;
          goto LABEL_31;
        }

        v5 = v19;
        v106 = v6;
        if (v29 >= v32)
        {
          v35 = v32;
        }

        else
        {
          v35 = v29;
        }

        v36 = i * (v35 - 1);
        v37 = i * v35;
        v38 = v108 * i;
        v39 = v108;
        do
        {
          if (v39 != --v21)
          {
            v40 = *v116;
            if (!*v116)
            {
              goto LABEL_139;
            }

            sub_26BD7EEE0();
            v41 = v38 < v36 || v40 + v38 >= (v40 + v37);
            if (v41)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v38 != v36)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            sub_26BD7EEE0();
          }

          ++v39;
          v36 -= i;
          v37 -= i;
          v38 += i;
        }

        while (v39 < v21);
        v6 = v106;
        v19 = v5;
      }

      v21 = v118;
      v20 = v108;
    }

LABEL_31:
    v42 = v116[1];
    if (v21 < v42)
    {
      if (__OFSUB__(v21, v20))
      {
        goto LABEL_131;
      }

      if (v21 - v20 < v107)
      {
        break;
      }
    }

LABEL_47:
    if (v21 < v20)
    {
      goto LABEL_130;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_26BD88D7C(0, *(v19 + 16) + 1, 1, v19);
      v19 = v97;
    }

    v56 = *(v19 + 16);
    v55 = *(v19 + 24);
    v57 = v56 + 1;
    if (v56 >= v55 >> 1)
    {
      sub_26BD88D7C(v55 > 1, v56 + 1, 1, v19);
      v19 = v98;
    }

    *(v19 + 16) = v57;
    v58 = v19 + 32;
    v59 = (v19 + 32 + 16 * v56);
    *v59 = v20;
    v59[1] = v21;
    v114 = *v109;
    if (!v114)
    {
      goto LABEL_140;
    }

    v118 = v21;
    if (v56)
    {
      i = v19;
      while (1)
      {
        v60 = v57 - 1;
        v61 = (v58 + 16 * (v57 - 1));
        v62 = (v19 + 16 * v57);
        if (v57 >= 4)
        {
          break;
        }

        if (v57 == 3)
        {
          v63 = *(v19 + 32);
          v64 = *(v19 + 40);
          v73 = __OFSUB__(v64, v63);
          v65 = v64 - v63;
          v66 = v73;
LABEL_68:
          if (v66)
          {
            goto LABEL_117;
          }

          v78 = *v62;
          v77 = v62[1];
          v79 = __OFSUB__(v77, v78);
          v80 = v77 - v78;
          v81 = v79;
          if (v79)
          {
            goto LABEL_120;
          }

          v82 = v61[1];
          v83 = v82 - *v61;
          if (__OFSUB__(v82, *v61))
          {
            goto LABEL_123;
          }

          if (__OFADD__(v80, v83))
          {
            goto LABEL_125;
          }

          if (v80 + v83 >= v65)
          {
            if (v65 < v83)
            {
              v60 = v57 - 2;
            }

            goto LABEL_90;
          }

          goto LABEL_83;
        }

        if (v57 < 2)
        {
          goto LABEL_119;
        }

        v85 = *v62;
        v84 = v62[1];
        v73 = __OFSUB__(v84, v85);
        v80 = v84 - v85;
        v81 = v73;
LABEL_83:
        if (v81)
        {
          goto LABEL_122;
        }

        v87 = *v61;
        v86 = v61[1];
        v73 = __OFSUB__(v86, v87);
        v88 = v86 - v87;
        if (v73)
        {
          goto LABEL_124;
        }

        if (v88 < v80)
        {
          goto LABEL_97;
        }

LABEL_90:
        if (v60 - 1 >= v57)
        {
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
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
          goto LABEL_134;
        }

        if (!*v116)
        {
          goto LABEL_137;
        }

        v5 = v16;
        v92 = (v58 + 16 * (v60 - 1));
        v93 = *v92;
        v94 = v60;
        v95 = (v58 + 16 * v60);
        v19 = v95[1];
        sub_26BD7FBC8(*v116 + *(v115 + 72) * *v92, *v116 + *(v115 + 72) * *v95, *v116 + *(v115 + 72) * v19, v114);
        if (v6)
        {
          goto LABEL_110;
        }

        if (v19 < v93)
        {
          goto LABEL_112;
        }

        v6 = *(i + 16);
        if (v94 > v6)
        {
          goto LABEL_113;
        }

        *v92 = v93;
        v92[1] = v19;
        if (v94 >= v6)
        {
          goto LABEL_114;
        }

        v57 = v6 - 1;
        memmove(v95, v95 + 2, 16 * (v6 - 1 - v94));
        v19 = i;
        *(i + 16) = v6 - 1;
        v96 = v6 > 2;
        v6 = 0;
        v16 = v5;
        if (!v96)
        {
          goto LABEL_97;
        }
      }

      v67 = v58 + 16 * v57;
      v68 = *(v67 - 64);
      v69 = *(v67 - 56);
      v73 = __OFSUB__(v69, v68);
      v70 = v69 - v68;
      if (v73)
      {
        goto LABEL_115;
      }

      v72 = *(v67 - 48);
      v71 = *(v67 - 40);
      v73 = __OFSUB__(v71, v72);
      v65 = v71 - v72;
      v66 = v73;
      if (v73)
      {
        goto LABEL_116;
      }

      v74 = v62[1];
      v75 = v74 - *v62;
      if (__OFSUB__(v74, *v62))
      {
        goto LABEL_118;
      }

      v73 = __OFADD__(v65, v75);
      v76 = v65 + v75;
      if (v73)
      {
        goto LABEL_121;
      }

      if (v76 >= v70)
      {
        v90 = *v61;
        v89 = v61[1];
        v73 = __OFSUB__(v89, v90);
        v91 = v89 - v90;
        if (v73)
        {
          goto LABEL_129;
        }

        if (v65 < v91)
        {
          v60 = v57 - 2;
        }

        goto LABEL_90;
      }

      goto LABEL_68;
    }

LABEL_97:
    v17 = v116[1];
    v18 = v118;
    if (v118 >= v17)
    {
      goto LABEL_100;
    }
  }

  v43 = v20 + v107;
  if (__OFADD__(v20, v107))
  {
    goto LABEL_133;
  }

  if (v43 >= v42)
  {
    v43 = v116[1];
  }

  if (v43 < v20)
  {
LABEL_134:
    __break(1u);
    goto LABEL_135;
  }

  if (v21 == v43)
  {
    goto LABEL_47;
  }

  i = v19;
  v106 = v6;
  v44 = *v116;
  v45 = *(v115 + 72);
  v46 = *v116 + v45 * (v21 - 1);
  v47 = v20;
  v48 = -v45;
  v108 = v47;
  v49 = v47 - v21;
  v110 = v45;
  v111 = v43;
  v50 = v44 + v21 * v45;
LABEL_40:
  v118 = v21;
  v51 = v50;
  v113 = v49;
  v114 = v46;
  v52 = v46;
  while (1)
  {
    sub_26BD80504();
    v5 = v121;
    sub_26BD80504();
    v53 = v16[4];
    v54 = *(v5 + 32);
    sub_26BD8055C(v5, type metadata accessor for HMTSolution.Article);
    sub_26BD8055C(v16, type metadata accessor for HMTSolution.Article);
    if (v53 >= v54)
    {
LABEL_45:
      v21 = v118 + 1;
      v46 = v114 + v110;
      v49 = v113 - 1;
      v50 += v110;
      if (v118 + 1 == v111)
      {
        v21 = v111;
        v6 = v106;
        v19 = i;
        v20 = v108;
        goto LABEL_47;
      }

      goto LABEL_40;
    }

    if (!v44)
    {
      break;
    }

    v5 = v119;
    sub_26BD7EEE0();
    swift_arrayInitWithTakeFrontToBack();
    sub_26BD7EEE0();
    v52 += v48;
    v51 += v48;
    v41 = __CFADD__(v49++, 1);
    if (v41)
    {
      goto LABEL_45;
    }
  }

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
}

uint64_t sub_26BD7FBC8(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v54 = type metadata accessor for HMTSolution.Article(0);
  v9 = MEMORY[0x28223BE20](v54);
  v11 = (v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = MEMORY[0x28223BE20](v9);
  v14 = (v48 - v13);
  v16 = *(v15 + 72);
  if (!v16)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return result;
  }

  v17 = a2 - a1;
  v18 = a2 - a1 == 0x8000000000000000 && v16 == -1;
  if (v18)
  {
    goto LABEL_61;
  }

  v19 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v16 == -1)
  {
    goto LABEL_62;
  }

  v48[1] = v4;
  v21 = v17 / v16;
  v57 = a1;
  v56 = a4;
  v22 = v19 / v16;
  if (v17 / v16 >= v19 / v16)
  {
    v51 = v11;
    sub_26BD891D8(a2, v19 / v16, a4);
    v29 = a4 + v22 * v16;
    v30 = -v16;
    v31 = v29;
    v32 = a3;
    v52 = v30;
    v50 = a1;
LABEL_37:
    v53 = a2 + v30;
    v33 = v32;
    v48[0] = v31;
    while (1)
    {
      if (v29 <= a4)
      {
        v57 = a2;
        v55 = v31;
        goto LABEL_59;
      }

      if (a2 <= a1)
      {
        break;
      }

      v49 = v31;
      v34 = a2;
      v35 = a4;
      v32 = v33 + v52;
      v36 = v29 + v52;
      v37 = v29;
      v38 = v33;
      sub_26BD80504();
      v39 = v14;
      v40 = v51;
      sub_26BD80504();
      v41 = *(v39 + 32);
      v42 = *(v40 + 32);
      v43 = v40;
      v14 = v39;
      sub_26BD8055C(v43, type metadata accessor for HMTSolution.Article);
      sub_26BD8055C(v39, type metadata accessor for HMTSolution.Article);
      if (v41 < v42)
      {
        v45 = v38 < v34 || v32 >= v34;
        a4 = v35;
        if (v45)
        {
          a2 = v53;
          swift_arrayInitWithTakeFrontToBack();
          v31 = v49;
          a1 = v50;
          v30 = v52;
          v29 = v37;
        }

        else
        {
          v31 = v49;
          v18 = v38 == v34;
          v30 = v52;
          v46 = v53;
          a2 = v53;
          v29 = v37;
          a1 = v50;
          if (!v18)
          {
            v47 = v49;
            swift_arrayInitWithTakeBackToFront();
            v29 = v37;
            a2 = v46;
            v31 = v47;
          }
        }

        goto LABEL_37;
      }

      v44 = v38 < v37 || v32 >= v37;
      a4 = v35;
      if (v44)
      {
        swift_arrayInitWithTakeFrontToBack();
        v33 = v32;
        v29 = v36;
        v31 = v36;
        a2 = v34;
        a1 = v50;
      }

      else
      {
        v31 = v36;
        v18 = v37 == v38;
        v33 = v32;
        v29 = v36;
        a2 = v34;
        a1 = v50;
        if (!v18)
        {
          swift_arrayInitWithTakeBackToFront();
          v33 = v32;
          v29 = v36;
          v31 = v36;
        }
      }
    }

    v57 = a2;
    v55 = v48[0];
  }

  else
  {
    sub_26BD891D8(a1, v17 / v16, a4);
    v23 = a4 + v21 * v16;
    v55 = v23;
    while (a4 < v23 && a2 < a3)
    {
      sub_26BD80504();
      sub_26BD80504();
      v25 = v14[4];
      v26 = v11[4];
      sub_26BD8055C(v11, type metadata accessor for HMTSolution.Article);
      sub_26BD8055C(v14, type metadata accessor for HMTSolution.Article);
      if (v25 >= v26)
      {
        if (a1 < a4 || a1 >= a4 + v16)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != a4)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        v56 = a4 + v16;
        a4 += v16;
      }

      else
      {
        if (a1 < a2 || a1 >= a2 + v16)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != a2)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        a2 += v16;
      }

      a1 += v16;
      v57 = a1;
    }
  }

LABEL_59:
  sub_26BD8005C(&v57, &v56, &v55);
  return 1;
}

uint64_t sub_26BD8005C(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = type metadata accessor for HMTSolution.Article(0);
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

char *sub_26BD8013C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28044AF80, &qword_26BDA9738);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 16 * v8);
  }

  return v10;
}

void *sub_26BD8023C(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_25:
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28044AF88, &qword_26BDA9D60);
  v10 = *(type metadata accessor for HMTSolution.Article(0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_24;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for HMTSolution.Article(0) - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    sub_26BD891D8(a4 + v16, v8, v13 + v16);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void *sub_26BD803F0(void *result, int64_t a2, char a3, char *a4)
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
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28044AF78, &qword_26BDAA1C0);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 16);
      if (v5)
      {
LABEL_13:
        sub_26BD892AC(a4 + 32, v8, (v10 + 32));
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

    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_26BD80504()
{
  OUTLINED_FUNCTION_184();
  v1(0);
  OUTLINED_FUNCTION_34();
  v2 = OUTLINED_FUNCTION_147();
  v3(v2);
  return v0;
}

uint64_t sub_26BD8055C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_34();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t OUTLINED_FUNCTION_26_1(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v1, 1, 1, a1);
}

uint64_t OUTLINED_FUNCTION_27_1(uint64_t a1)
{

  return sub_26BDA0ED0();
}

void sub_26BD80818(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, void *a5)
{
  v7 = sub_26BDA0BC0();
  v8 = MGGetStringAnswer();

  if (v8)
  {
    v9 = sub_26BDA0BD0();
    v11 = v10;

    *a4 = v9;
    *a5 = v11;
  }

  else
  {
    __break(1u);
  }
}

void sub_26BD8088C()
{
  v0 = sub_26BDA0BC0();
  v1 = MGGetBoolAnswer();

  byte_28045A000 = v1;
}

uint64_t SupportProductType.init(productId:serialNumber:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  if (!a2 || (a1 == 0x3330304753 ? (v10 = a2 == 0xE500000000000000) : (v10 = 0), v10 || (result = sub_26BDA0FB0(), (result & 1) != 0)))
  {

    a3 = 0;
    a4 = 0;
    v12 = 0;
  }

  else
  {
    v12 = 1;
  }

  *a5 = a1;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  *(a5 + 24) = a4;
  *(a5 + 32) = v12;
  return result;
}

uint64_t SupportProductType.serialNumber.getter()
{
  if (*(v0 + 32))
  {
    v1 = (v0 + 16);
  }

  else
  {
    if (qword_280448F30 != -1)
    {
      swift_once();
    }

    v1 = &qword_280459FD0;
  }

  v2 = *v1;

  return v2;
}

uint64_t sub_26BD80A1C(uint64_t a1)
{
  v2 = *v1;
  if (*(v1 + 32) != 1 && !v1[1])
  {
    return 0;
  }

  if ((sub_26BDA0C80() & 1) == 0)
  {

    return 0;
  }

  return v2;
}

uint64_t SupportProductType.superGroup.getter()
{
  v1 = *v0;
  if (*(v0 + 32) != 1 && !v0[1])
  {
    return 0x3330304753;
  }

  if ((sub_26BDA0C80() & 1) == 0)
  {

    return 0;
  }

  return v1;
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_26BD80B3C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 33))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 32);
      if (v3 <= 1)
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

uint64_t sub_26BD80B7C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

unint64_t sub_26BD80BE8(uint64_t a1, uint64_t a2)
{
  v2 = sub_26BDA0F30();

  if (v2 >= 6)
  {
    return 6;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_26BD80C4C(char a1)
{
  result = 0x646F43726F727265;
  switch(a1)
  {
    case 1:
      result = 0x6B6F54726F727265;
      break;
    case 2:
      result = 0x726F727245776172;
      break;
    case 3:
      result = 0x73654D726F727265;
      break;
    case 4:
      result = 0x4974736575716572;
      break;
    case 5:
      result = 0x746954726F727265;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_26BD80D5C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_26BD80BE8(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_26BD80D8C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_26BD80C4C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_26BD80DC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26BD80C34(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26BD80E08@<X0>(_BYTE *a1@<X8>)
{
  result = sub_26BD80C38();
  *a1 = result;
  return result;
}

uint64_t sub_26BD80E30(uint64_t a1)
{
  v2 = sub_26BD8127C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26BD80E6C(uint64_t a1)
{
  v2 = sub_26BD8127C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SupportServicesError.errorMessage.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t SupportServicesError.requestId.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t SupportServicesError.errorTitle.getter()
{
  v1 = *(v0 + 56);

  return v1;
}

uint64_t SupportServicesError.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28044AF98, &qword_26BDA97F0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v23 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26BD8127C();
  sub_26BDA1080();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v29[0]) = 0;
  v9 = sub_26BDA0F60();
  OUTLINED_FUNCTION_0_11(1);
  v10 = sub_26BDA0F60();
  OUTLINED_FUNCTION_0_11(2);
  v26 = sub_26BDA0F60();
  v27 = v10;
  OUTLINED_FUNCTION_0_11(3);
  v11 = sub_26BDA0F50();
  v13 = v12;
  v25 = v11;
  OUTLINED_FUNCTION_0_11(4);
  v23 = sub_26BDA0F50();
  v24 = v9;
  v15 = v14;
  v30 = 5;
  v16 = sub_26BDA0F50();
  v17 = v8;
  v19 = v18;
  (*(v6 + 8))(v17, v5);
  v21 = v26;
  v20 = v27;
  __src[0] = v24;
  __src[1] = v27;
  __src[2] = v26;
  __src[3] = v25;
  __src[4] = v13;
  __src[5] = v23;
  __src[6] = v15;
  __src[7] = v16;
  __src[8] = v19;
  memcpy(a2, __src, 0x48uLL);
  sub_26BD8131C(__src, v29);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v29[0] = v24;
  v29[1] = v20;
  v29[2] = v21;
  v29[3] = v25;
  v29[4] = v13;
  v29[5] = v23;
  v29[6] = v15;
  v29[7] = v16;
  v29[8] = v19;
  return sub_26BD81354(v29);
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_26BD8127C()
{
  result = qword_28044AFA0;
  if (!qword_28044AFA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28044AFA0);
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_26BD813B4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 72))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 32);
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

uint64_t sub_26BD813F4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SupportServicesError.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFB)
  {
    if (a2 + 5 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 5) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 6;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v5 = v6 - 6;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for SupportServicesError.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
        JUMPOUT(0x26BD815A8);
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
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_26BD815E4()
{
  result = qword_28044AFA8;
  if (!qword_28044AFA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28044AFA8);
  }

  return result;
}

unint64_t sub_26BD8163C()
{
  result = qword_28044AFB0;
  if (!qword_28044AFB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28044AFB0);
  }

  return result;
}

unint64_t sub_26BD81694()
{
  result = qword_28044AFB8;
  if (!qword_28044AFB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28044AFB8);
  }

  return result;
}

void __swiftcall SupportSymptomInfo.init(categoryId:symptomId:productId:batteryServiceLevel:)(SupportServices::SupportSymptomInfo *__return_ptr retstr, Swift::String categoryId, Swift::String symptomId, Swift::String_optional productId, Swift::Int batteryServiceLevel)
{
  retstr->categoryId = categoryId;
  retstr->symptomId = symptomId;
  retstr->productId = productId;
  retstr->batteryServiceLevel = batteryServiceLevel;
}

uint64_t SupportSymptomInfo.categoryId.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t SupportSymptomInfo.symptomId.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t SupportSymptomInfo.productId.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t SupportSymptomInfo.debugDescription.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v6 = v0[4];
  v5 = v0[5];

  sub_26BDA0DF0();

  strcpy(v9, "Category ID: ");
  HIWORD(v9[1]) = -4864;
  MEMORY[0x26D695B80](v1, v2);
  MEMORY[0x26D695B80](0x6F74706D7953202CLL, 0xEE00203A4449206DLL);
  MEMORY[0x26D695B80](v3, v4);
  MEMORY[0x26D695B80](0x6375646F7250202CLL, 0xEE00203A44492074);
  if (v5)
  {
    v7 = v6;
  }

  else
  {
    v7 = 7104878;
  }

  if (!v5)
  {
    v5 = 0xE300000000000000;
  }

  MEMORY[0x26D695B80](v7, v5);

  MEMORY[0x26D695B80](41, 0xE100000000000000);
  return v9[0];
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

uint64_t sub_26BD81914(uint64_t a1, int a2)
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

uint64_t sub_26BD81954(uint64_t result, int a2, int a3)
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

void __swiftcall UserAgent.init(appName:systemName:systemVersion:deviceModel:)(SupportServices::UserAgent *__return_ptr retstr, Swift::String appName, Swift::String systemName, Swift::String systemVersion, Swift::String deviceModel)
{
  retstr->appName = appName;
  retstr->systemName = systemName;
  retstr->systemVersion = systemVersion;
  retstr->deviceModel = deviceModel;
}

void static UserAgent.hmt.getter(void *a1@<X8>)
{
  v2 = objc_opt_self();
  v3 = [v2 currentDevice];
  v4 = [v3 systemName];

  v5 = sub_26BDA0BD0();
  v7 = v6;

  v8 = [v2 currentDevice];
  v9 = [v8 systemVersion];

  v10 = sub_26BDA0BD0();
  v12 = v11;

  v13 = [v2 currentDevice];
  v14 = [v13 model];

  v15 = sub_26BDA0BD0();
  v17 = v16;

  *a1 = 0xD000000000000011;
  a1[1] = 0x800000026BDAFB30;
  a1[2] = v5;
  a1[3] = v7;
  a1[4] = v10;
  a1[5] = v12;
  a1[6] = v15;
  a1[7] = v17;
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_26BD81BD0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_26BD81C10(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t AllSolutionsResponse.hasRepairSolutions.getter()
{
  v1 = type metadata accessor for SupportOption(0);
  OUTLINED_FUNCTION_18();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  v6 = &v16[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = *(v0 + *(type metadata accessor for AllSolutionsResponse(0) + 20));
  swift_beginAccess();
  v8 = *(v7 + 16);
  v9 = *(v8 + 16);
  if (!v9)
  {
    return 0;
  }

  v10 = *(v1 + 20);
  v11 = v8 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  v13 = 0;
  while (v13 < *(v8 + 16))
  {
    sub_26BD81E2C(v11 + *(v3 + 72) * v13, v6);
    v14 = *&v6[v10];
    swift_beginAccess();
    v15 = *(v14 + 16);
    if (*(v14 + 24) == 1)
    {
      if ((v15 - 2) >= 9)
      {
        if (v15)
        {
LABEL_15:

          sub_26BD81E90(v6);
        }

        else
        {
          sub_26BD81E90(v6);
LABEL_14:
        }

        return 1;
      }

      result = sub_26BD81E90(v6);
    }

    else
    {
      if (v15 == 1)
      {
        goto LABEL_15;
      }

      result = sub_26BD81E90(v6);
      if (!v15)
      {
        goto LABEL_14;
      }
    }

    if (v9 == ++v13)
    {

      return 0;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_26BD81E2C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SupportOption(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26BD81E90(uint64_t a1)
{
  v2 = type metadata accessor for SupportOption(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t ContactSupportOptions.firstCallSupportOptionForHMT.getter@<X0>(uint64_t a1@<X8>)
{
  v19 = a1;
  v2 = type metadata accessor for SupportOption(0);
  OUTLINED_FUNCTION_18();
  v4 = v3;
  result = MEMORY[0x28223BE20](v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = 0;
  v10 = *v1;
  v11 = *(v10 + 16);
  while (1)
  {
    if (v11 == v9)
    {
      v18 = 1;
      v17 = v19;
      return __swift_storeEnumTagSinglePayload(v17, v18, 1, v2);
    }

    if (v9 >= *(v10 + 16))
    {
      break;
    }

    sub_26BD81E2C(v10 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v9, v8);
    v12 = *&v8[*(v2 + 20)];
    swift_beginAccess();
    v13 = *(v12 + 32);
    v14 = *(v12 + 40);
    v15 = v13 == 4475971 && v14 == 0xE300000000000000;
    if (v15 || (sub_26BDA0FB0() & 1) != 0 || (v13 == 0x454E4F4850 ? (v16 = v14 == 0xE500000000000000) : (v16 = 0), v16 || (sub_26BDA0FB0() & 1) != 0))
    {
      v17 = v19;
      sub_26BD820B4(v8, v19);
      v18 = 0;
      return __swift_storeEnumTagSinglePayload(v17, v18, 1, v2);
    }

    result = sub_26BD81E90(v8);
    ++v9;
  }

  __break(1u);
  return result;
}

uint64_t sub_26BD820B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SupportOption(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t HelpMeTroubleshootError.hashValue.getter()
{
  v1 = *v0;
  sub_26BDA1050();
  MEMORY[0x26D695FC0](v1);
  return sub_26BDA1070();
}

uint64_t sub_26BD821AC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28044AF40, &qword_26BDA9580);
  v1 = OUTLINED_FUNCTION_110(v0);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_57();
  MEMORY[0x28223BE20](v2);
  v4 = &v18 - v3;
  v5 = type metadata accessor for HelpMeTroubleshootCoordinator.ServerEnvironment(0);
  v6 = OUTLINED_FUNCTION_110(v5);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_44();
  v9 = v8 - v7;
  OUTLINED_FUNCTION_13_4();
  sub_26BD893FC();
  v10 = sub_26BDA0510();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v9, 2, v10);
  if (!EnumTagSinglePayload)
  {
    goto LABEL_8;
  }

  if (EnumTagSinglePayload == 1)
  {
    sub_26BDA04E0();
    OUTLINED_FUNCTION_112(v4, 1, v10);
    if (v12)
    {
      __break(1u);
    }

    goto LABEL_8;
  }

  sub_26BDA04E0();
  v13 = OUTLINED_FUNCTION_81_1();
  result = __swift_getEnumTagSinglePayload(v13, v14, v10);
  if (result != 1)
  {
LABEL_8:
    v16 = OUTLINED_FUNCTION_147();
    return v17(v16);
  }

  __break(1u);
  return result;
}

uint64_t sub_26BD82368@<X0>(uint64_t a3@<X8>)
{
  v35 = a3;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28044AF40, &qword_26BDA9580);
  v4 = OUTLINED_FUNCTION_110(v3);
  MEMORY[0x28223BE20](v4);
  v6 = &v34 - v5;
  v7 = sub_26BDA0510();
  OUTLINED_FUNCTION_18();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_44();
  v13 = (v12 - v11);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28044B098, &unk_26BDA9D80);
  v15 = OUTLINED_FUNCTION_110(v14);
  MEMORY[0x28223BE20](v15);
  v17 = &v34 - v16;
  v18 = sub_26BDA0430();
  OUTLINED_FUNCTION_18();
  v20 = v19;
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_44();
  v24 = v23 - v22;
  sub_26BDA0420();

  OUTLINED_FUNCTION_112(v17, 1, v18);
  if (v25)
  {
    v26 = &qword_28044B098;
    v27 = &unk_26BDA9D80;
    v28 = v17;
LABEL_8:
    sub_26BD04E80(v28, v26, v27);
LABEL_10:
    v33 = 1;
    v32 = v35;
    return __swift_storeEnumTagSinglePayload(v32, v33, 2, v7);
  }

  (*(v20 + 32))(v24, v17, v18);
  sub_26BDA0410();
  if (!v29)
  {
    (*(v20 + 8))(v24, v18);
    goto LABEL_10;
  }

  sub_26BDA0400();
  (*(v20 + 8))(v24, v18);
  OUTLINED_FUNCTION_23(v6);
  if (v25)
  {
    v26 = &qword_28044AF40;
    v27 = &qword_26BDA9580;
    v28 = v6;
    goto LABEL_8;
  }

  v31 = *(v9 + 32);
  v31(v13, v6, v7);
  v32 = v35;
  v31(v35, v13, v7);
  v33 = 0;
  return __swift_storeEnumTagSinglePayload(v32, v33, 2, v7);
}

uint64_t HelpMeTroubleshootCoordinator.__allocating_init(with:environment:allowOverrides:)(_OWORD *a1, uint64_t a2, char a3)
{
  v37 = a2;
  v5 = type metadata accessor for HTTPRequestManager(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_57();
  v36 = v7 - v8;
  v10 = MEMORY[0x28223BE20](v9);
  v12 = (&v36 - v11);
  MEMORY[0x28223BE20](v10);
  v14 = &v36 - v13;
  v15 = type metadata accessor for HelpMeTroubleshootCoordinator.ServerEnvironment(0);
  v16 = OUTLINED_FUNCTION_110(v15);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_57();
  v19 = v17 - v18;
  v21 = MEMORY[0x28223BE20](v20);
  v23 = &v36 - v22;
  MEMORY[0x28223BE20](v21);
  v25 = &v36 - v24;
  v26 = a1[1];
  v41[0] = *a1;
  v41[1] = v26;
  v27 = a1[3];
  v41[2] = a1[2];
  v41[3] = v27;
  v28 = [objc_opt_self() standardUserDefaults];
  v29 = sub_26BD829F0();
  v40[3] = v29;
  v40[4] = &off_287CB0E08;
  v40[0] = v28;
  v39[0] = a3;
  if ((a3 & 1) != 0 && (__swift_project_boxed_opaque_existential_1(v40, v29), (off_287CB0E10)(0xD00000000000001DLL, 0x800000026BDAFB50), v30))
  {
    sub_26BD82368(v23);
    v31 = v37;
  }

  else
  {
    OUTLINED_FUNCTION_13_4();
    v31 = v37;
    sub_26BD893FC();
  }

  sub_26BD89348();
  v32 = [objc_opt_self() mainBundle];
  result = sub_26BD892D8(v32);
  if (v34)
  {
    sub_26BDA0B30();
    *v12 = &unk_26BDA9F00;
    v12[1] = 0;
    v12[2] = sub_26BD90D44;
    v12[3] = 0;
    *(v12 + *(v5 + 28)) = 0;
    sub_26BD89348();
    OUTLINED_FUNCTION_13_4();
    sub_26BD893FC();
    sub_26BD893A0(v39, v38);
    sub_26BD893FC();
    v35 = sub_26BD89454(v41, v19, v38);
    sub_26BD89728(v31, type metadata accessor for HelpMeTroubleshootCoordinator.ServerEnvironment);
    sub_26BD89728(v14, type metadata accessor for HTTPRequestManager);
    sub_26BD89728(v25, type metadata accessor for HelpMeTroubleshootCoordinator.ServerEnvironment);
    sub_26BD89780(v39);
    return v35;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_26BD829F0()
{
  result = qword_28044AFC0;
  if (!qword_28044AFC0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28044AFC0);
  }

  return result;
}

uint64_t HelpMeTroubleshootCoordinator.fetchHMTSolution(languageID:regionID:)()
{
  OUTLINED_FUNCTION_30_2();
  v1[46] = v2;
  v1[47] = v0;
  v1[44] = v3;
  v1[45] = v4;
  v1[42] = v5;
  v1[43] = v6;
  v7 = sub_26BDA0770();
  v1[48] = v7;
  OUTLINED_FUNCTION_38_4(v7);
  v1[49] = v8;
  v1[50] = OUTLINED_FUNCTION_78_1();
  v9 = type metadata accessor for HMTSolutionResponse(0);
  OUTLINED_FUNCTION_110(v9);
  v1[51] = OUTLINED_FUNCTION_79_2();
  v1[52] = swift_task_alloc();
  sub_26BDA0D10();
  v1[53] = sub_26BDA0D00();
  v11 = sub_26BDA0CC0();
  v1[54] = v11;
  v1[55] = v10;

  return MEMORY[0x2822009F8](sub_26BD82B48, v11, v10);
}

uint64_t sub_26BD82B48()
{
  OUTLINED_FUNCTION_86_3();
  OUTLINED_FUNCTION_34_3();
  v1 = v0[50];
  v2 = v0[46];
  v3 = v0[45];
  v4 = v0[43];
  OUTLINED_FUNCTION_22_2((v0[47] + OBJC_IVAR____TtC15SupportServices29HelpMeTroubleshootCoordinator_userAgent));
  OUTLINED_FUNCTION_98_2(v5);
  OUTLINED_FUNCTION_112_0();

  sub_26BD9FC20(v4, v3, v2, v1);
  swift_task_alloc();
  OUTLINED_FUNCTION_35_4();
  v0[56] = v6;
  *v6 = v7;
  v6[1] = sub_26BD82C38;
  OUTLINED_FUNCTION_84_1();

  return sub_26BD82F1C(v8, v9, v10);
}

uint64_t sub_26BD82C38()
{
  OUTLINED_FUNCTION_86_3();
  OUTLINED_FUNCTION_34_3();
  v2 = *v1;
  v3 = *v1;
  OUTLINED_FUNCTION_9_4();
  *v4 = v3;
  v5 = v2[49];
  *v4 = *v1;
  v3[57] = v0;

  (*(v5 + 8))(v2[50], v2[48]);
  v6 = *(v3 + 5);
  v7 = *(v3 + 6);
  v8 = *(v3 + 8);
  if (v0)
  {
    *(v3 + 15) = *(v3 + 7);
    *(v3 + 16) = v8;
    *(v3 + 13) = v6;
    *(v3 + 14) = v7;
    sub_26BD89830((v3 + 26));
  }

  else
  {
    *(v3 + 19) = *(v3 + 7);
    *(v3 + 20) = v8;
    *(v3 + 17) = v6;
    *(v3 + 18) = v7;
    sub_26BD89830((v3 + 34));
  }

  OUTLINED_FUNCTION_84_1();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_26BD82DD8()
{
  OUTLINED_FUNCTION_31_4();
  v1 = v0[52];
  v2 = v0[51];
  v3 = v0[42];

  OUTLINED_FUNCTION_259();
  sub_26BD893FC();
  sub_26BD7D1BC(v2, v3);
  sub_26BD89728(v1, type metadata accessor for HMTSolutionResponse);

  OUTLINED_FUNCTION_21_2();

  return v4();
}

uint64_t sub_26BD82E9C()
{
  OUTLINED_FUNCTION_31_4();

  OUTLINED_FUNCTION_25_1();

  return v0();
}

uint64_t sub_26BD82F1C(uint64_t a1, _OWORD *a2, uint64_t a3)
{
  *(v4 + 88) = a3;
  *(v4 + 96) = v3;
  *(v4 + 80) = a1;
  v6 = sub_26BDA0370();
  *(v4 + 104) = v6;
  *(v4 + 112) = *(v6 - 8);
  *(v4 + 120) = swift_task_alloc();
  v7 = a2[1];
  *(v4 + 16) = *a2;
  *(v4 + 32) = v7;
  v8 = a2[3];
  *(v4 + 48) = a2[2];
  *(v4 + 64) = v8;

  return MEMORY[0x2822009F8](sub_26BD82FF4, 0, 0);
}

uint64_t sub_26BD82FF4()
{
  OUTLINED_FUNCTION_34_3();
  sub_26BD8B378();
  v1 = v0[15];
  v2 = v0[12];
  v3 = swift_task_alloc();
  v0[16] = v3;
  v3[2] = v2;
  v3[3] = v1;
  v3[4] = v0 + 2;
  swift_task_alloc();
  OUTLINED_FUNCTION_35_4();
  v0[17] = v4;
  *v4 = v5;
  v4[1] = sub_26BD83128;
  OUTLINED_FUNCTION_55_0();

  return sub_26BD86F78(v6, v7, v8);
}

uint64_t sub_26BD83128()
{
  OUTLINED_FUNCTION_30_2();
  OUTLINED_FUNCTION_40_3();
  v3 = v2;
  OUTLINED_FUNCTION_17_5();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_9_4();
  *v6 = v5;
  *(v3 + 144) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_41_2();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_26BD83228()
{
  OUTLINED_FUNCTION_30_2();
  (*(v0[14] + 8))(v0[15], v0[13]);

  OUTLINED_FUNCTION_21_2();

  return v1();
}

uint64_t sub_26BD8329C()
{
  OUTLINED_FUNCTION_31_4();

  v0 = OUTLINED_FUNCTION_259();
  v1(v0);

  OUTLINED_FUNCTION_25_1();

  return v2();
}

uint64_t HelpMeTroubleshootCoordinator.fetchSolutions(for:supportSymptomInfo:languageID:regionID:)()
{
  OUTLINED_FUNCTION_31_4();
  v3 = v2;
  v5 = v4;
  *(v1 + 488) = v6;
  *(v1 + 496) = v0;
  *(v1 + 472) = v7;
  *(v1 + 480) = v8;
  *(v1 + 456) = v9;
  *(v1 + 464) = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28044AFD0, &qword_26BDA9B08);
  OUTLINED_FUNCTION_110(v11);
  *(v1 + 504) = OUTLINED_FUNCTION_78_1();
  v12 = sub_26BDA0770();
  *(v1 + 512) = v12;
  OUTLINED_FUNCTION_38_4(v12);
  *(v1 + 520) = v13;
  *(v1 + 528) = OUTLINED_FUNCTION_78_1();
  v14 = type metadata accessor for TriageRequest.SymptomInformation(0);
  *(v1 + 536) = v14;
  OUTLINED_FUNCTION_110(v14);
  *(v1 + 544) = OUTLINED_FUNCTION_78_1();
  v15 = *(v5 + 16);
  *(v1 + 552) = *v5;
  *(v1 + 568) = v15;
  *(v1 + 425) = *(v5 + 32);
  v16 = *(v3 + 16);
  *(v1 + 336) = *v3;
  *(v1 + 352) = v16;
  *(v1 + 368) = *(v3 + 32);
  *(v1 + 384) = *(v3 + 48);
  sub_26BDA0D10();
  *(v1 + 584) = sub_26BDA0D00();
  v18 = sub_26BDA0CC0();
  *(v1 + 592) = v18;
  *(v1 + 600) = v17;

  return MEMORY[0x2822009F8](sub_26BD8349C, v18, v17);
}

uint64_t sub_26BD8349C()
{
  v1 = *(v0 + 425);
  v2 = *(v0 + 488);
  v3 = *(v0 + 496);
  v18 = *(v0 + 480);
  v19 = *(v0 + 528);
  v17 = *(v0 + 464);
  v4 = swift_task_alloc();
  OUTLINED_FUNCTION_12_3();
  sub_26BD8A2E0(v5, v6, &protocol conformance descriptor for TriageRequest.SymptomInformation);
  v15 = *(v0 + 568);
  v16 = *(v0 + 552);
  *(v4 + 16) = v0 + 336;
  OUTLINED_FUNCTION_100_2(sub_26BD8A440);

  *(v0 + 392) = v16;
  *(v0 + 408) = v15;
  *(v0 + 424) = v1;
  OUTLINED_FUNCTION_22_2((v3 + OBJC_IVAR____TtC15SupportServices29HelpMeTroubleshootCoordinator_userAgent));
  OUTLINED_FUNCTION_98_2(v7);
  v8 = *(v0 + 384);
  OUTLINED_FUNCTION_112_0();

  sub_26BD9FC20(v17, v18, v2, v19);
  swift_task_alloc();
  OUTLINED_FUNCTION_35_4();
  *(v0 + 608) = v9;
  *v9 = v10;
  v9[1] = sub_26BD83640;
  v11 = *(v0 + 544);
  v12 = *(v0 + 528);
  v13 = *(v0 + 456);

  return sub_26BD83988(v13, v0 + 392, (v0 + 80), v11, v8, v12);
}

uint64_t sub_26BD83640()
{
  OUTLINED_FUNCTION_31_4();
  v2 = *v1;
  v3 = *v1;
  OUTLINED_FUNCTION_9_4();
  *v4 = v3;
  *v4 = *v1;
  v3[77] = v0;

  (*(v2[65] + 8))(v2[66], v2[64]);
  v5 = *(v3 + 5);
  v6 = *(v3 + 6);
  v7 = *(v3 + 8);
  if (v0)
  {
    *(v3 + 15) = *(v3 + 7);
    *(v3 + 16) = v7;
    *(v3 + 13) = v5;
    *(v3 + 14) = v6;
    sub_26BD89830((v3 + 26));
    v8 = v3[75];
    v9 = v3[74];
    v10 = sub_26BD838F4;
  }

  else
  {
    *(v3 + 19) = *(v3 + 7);
    *(v3 + 20) = v7;
    *(v3 + 17) = v5;
    *(v3 + 18) = v6;
    sub_26BD89830((v3 + 34));
    v8 = v3[75];
    v9 = v3[74];
    v10 = sub_26BD837E8;
  }

  return MEMORY[0x2822009F8](v10, v9, v8);
}

uint64_t sub_26BD837E8()
{
  OUTLINED_FUNCTION_86_3();
  OUTLINED_FUNCTION_34_3();
  v1 = *(v0 + 544);

  OUTLINED_FUNCTION_5_4();
  sub_26BD89728(v1, v2);
  sub_26BD893FC();
  type metadata accessor for AllSolutionsResponse(0);
  OUTLINED_FUNCTION_151();
  __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
  swift_beginAccess();
  sub_26BD2E160();
  swift_endAccess();

  OUTLINED_FUNCTION_21_2();
  OUTLINED_FUNCTION_84_1();

  return v8(v7, v8, v9, v10, v11, v12, v13, v14);
}

uint64_t sub_26BD838F4()
{
  OUTLINED_FUNCTION_31_4();
  v1 = *(v0 + 544);

  OUTLINED_FUNCTION_5_4();
  sub_26BD89728(v1, v2);

  OUTLINED_FUNCTION_25_1();

  return v3();
}

uint64_t sub_26BD83988(uint64_t a1, uint64_t a2, _OWORD *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v7 + 112) = a6;
  *(v7 + 120) = v6;
  *(v7 + 96) = a4;
  *(v7 + 104) = a5;
  *(v7 + 80) = a1;
  *(v7 + 88) = a3;
  v10 = sub_26BDA0370();
  *(v7 + 128) = v10;
  *(v7 + 136) = *(v10 - 8);
  *(v7 + 144) = swift_task_alloc();
  v11 = *(a2 + 16);
  *(v7 + 152) = *a2;
  *(v7 + 168) = v11;
  *(v7 + 208) = *(a2 + 32);
  v12 = a3[1];
  *(v7 + 16) = *a3;
  *(v7 + 32) = v12;
  v13 = a3[3];
  *(v7 + 48) = a3[2];
  *(v7 + 64) = v13;

  return MEMORY[0x2822009F8](sub_26BD83A84, 0, 0);
}

uint64_t sub_26BD83A84()
{
  sub_26BD8B998();
  v1 = v0[18];
  v2 = v0[15];
  v3 = swift_task_alloc();
  v0[23] = v3;
  v3[2] = v2;
  v3[3] = v1;
  v3[4] = v0 + 2;
  swift_task_alloc();
  OUTLINED_FUNCTION_35_4();
  v0[24] = v4;
  *v4 = v5;
  v4[1] = sub_26BD83BF0;
  OUTLINED_FUNCTION_55_0();

  return sub_26BD8742C(v6, v7, v8);
}

uint64_t sub_26BD83BF0()
{
  OUTLINED_FUNCTION_30_2();
  OUTLINED_FUNCTION_40_3();
  v3 = v2;
  OUTLINED_FUNCTION_17_5();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_9_4();
  *v6 = v5;
  *(v3 + 200) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_41_2();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_26BD83CF0()
{
  OUTLINED_FUNCTION_30_2();
  (*(v0[17] + 8))(v0[18], v0[16]);

  OUTLINED_FUNCTION_21_2();

  return v1();
}

uint64_t sub_26BD83D64()
{
  OUTLINED_FUNCTION_31_4();

  v0 = OUTLINED_FUNCTION_259();
  v1(v0);

  OUTLINED_FUNCTION_25_1();

  return v2();
}

uint64_t HelpMeTroubleshootCoordinator.createCase(for:contactType:supportSymptomInfo:context:languageID:regionID:)()
{
  OUTLINED_FUNCTION_31_4();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  *(v1 + 720) = v0;
  *(v1 + 712) = v32;
  *(v1 + 704) = v8;
  *(v1 + 696) = v9;
  *(v1 + 688) = v10;
  *(v1 + 680) = v11;
  *(v1 + 672) = v12;
  v13 = sub_26BDA0770();
  *(v1 + 728) = v13;
  OUTLINED_FUNCTION_38_4(v13);
  *(v1 + 736) = v14;
  *(v1 + 744) = OUTLINED_FUNCTION_78_1();
  v15 = type metadata accessor for ExecuteResponse(0);
  *(v1 + 752) = v15;
  OUTLINED_FUNCTION_110(v15);
  *(v1 + 760) = OUTLINED_FUNCTION_79_2();
  *(v1 + 768) = swift_task_alloc();
  v16 = type metadata accessor for TriageRequest.SymptomInformation(0);
  *(v1 + 776) = v16;
  OUTLINED_FUNCTION_110(v16);
  *(v1 + 784) = OUTLINED_FUNCTION_78_1();
  v17 = type metadata accessor for SupportOption(0);
  *(v1 + 792) = v17;
  OUTLINED_FUNCTION_38_4(v17);
  *(v1 + 800) = v18;
  *(v1 + 808) = OUTLINED_FUNCTION_79_2();
  *(v1 + 816) = swift_task_alloc();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280448F78, &unk_26BDA1A40);
  OUTLINED_FUNCTION_110(v19);
  *(v1 + 824) = OUTLINED_FUNCTION_79_2();
  *(v1 + 832) = swift_task_alloc();
  v20 = type metadata accessor for ContactSupportOptions(0);
  *(v1 + 840) = v20;
  OUTLINED_FUNCTION_110(v20);
  *(v1 + 848) = OUTLINED_FUNCTION_79_2();
  *(v1 + 856) = swift_task_alloc();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804490F0, &qword_26BDA1A88);
  OUTLINED_FUNCTION_110(v21);
  *(v1 + 864) = OUTLINED_FUNCTION_79_2();
  *(v1 + 872) = swift_task_alloc();
  *(v1 + 880) = swift_task_alloc();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28044AFE0, &qword_26BDA9B20);
  OUTLINED_FUNCTION_110(v22);
  *(v1 + 888) = OUTLINED_FUNCTION_79_2();
  *(v1 + 896) = swift_task_alloc();
  v23 = type metadata accessor for AuthResponse(0);
  *(v1 + 904) = v23;
  OUTLINED_FUNCTION_110(v23);
  *(v1 + 912) = OUTLINED_FUNCTION_79_2();
  *(v1 + 920) = swift_task_alloc();
  *(v1 + 928) = swift_task_alloc();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28044AFD0, &qword_26BDA9B08);
  OUTLINED_FUNCTION_110(v24);
  *(v1 + 936) = OUTLINED_FUNCTION_78_1();
  v25 = type metadata accessor for AllSolutionsResponse(0);
  *(v1 + 944) = v25;
  OUTLINED_FUNCTION_110(v25);
  *(v1 + 952) = OUTLINED_FUNCTION_78_1();
  v26 = *(v7 + 16);
  *(v1 + 960) = *v7;
  *(v1 + 976) = v26;
  *(v1 + 425) = *(v7 + 32);
  *(v1 + 426) = *v5;
  v27 = *(v3 + 16);
  *(v1 + 336) = *v3;
  *(v1 + 352) = v27;
  *(v1 + 368) = *(v3 + 32);
  *(v1 + 384) = *(v3 + 48);
  sub_26BDA0D10();
  *(v1 + 992) = sub_26BDA0D00();
  v29 = sub_26BDA0CC0();
  *(v1 + 1000) = v29;
  *(v1 + 1008) = v28;

  return MEMORY[0x2822009F8](sub_26BD84150, v29, v28);
}

void sub_26BD84150()
{
  v3 = *(v0 + 944);
  v4 = *(v0 + 936);
  OUTLINED_FUNCTION_230(*(v0 + 720) + OBJC_IVAR____TtC15SupportServices29HelpMeTroubleshootCoordinator_savedSolutionsResponse, v0 + 432);
  sub_26BD31AF8();
  OUTLINED_FUNCTION_112(v4, 1, v3);
  if (v13)
  {
    v5 = *(v0 + 936);

    sub_26BD04E80(v5, &qword_28044AFD0, &qword_26BDA9B08);
    v6 = sub_26BD89884();
    OUTLINED_FUNCTION_72_1(&type metadata for HelpMeTroubleshootError, v6);
    *v7 = 2;
    swift_willThrow();
LABEL_4:
    OUTLINED_FUNCTION_91_2();
    OUTLINED_FUNCTION_8_6();

    OUTLINED_FUNCTION_25_1();

    v8();
    return;
  }

  v9 = *(v0 + 904);
  v10 = *(v0 + 896);
  v11 = *(v0 + 720);
  sub_26BD89348();
  v12 = OBJC_IVAR____TtC15SupportServices29HelpMeTroubleshootCoordinator_savedAuthResponse;
  *(v0 + 1016) = OBJC_IVAR____TtC15SupportServices29HelpMeTroubleshootCoordinator_savedAuthResponse;
  OUTLINED_FUNCTION_230(v11 + v12, v0 + 456);
  sub_26BD31AF8();
  OUTLINED_FUNCTION_112(v10, 1, v9);
  if (v13)
  {
    sub_26BD04E80(*(v0 + 896), &qword_28044AFE0, &qword_26BDA9B20);
    swift_task_alloc();
    OUTLINED_FUNCTION_35_4();
    *(v0 + 1024) = v14;
    *v14 = v15;
    v14[1] = sub_26BD84938;
    v16 = *(v0 + 912);

    sub_26BD85850(v16);
  }

  else
  {
    v17 = v0 + 392;
    sub_26BD89348();
    sub_26BD89348();
    OUTLINED_FUNCTION_87_1();
    v21 = *(v19 + v20);
    v22 = OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__contactSupportOptions;
    v23 = *(v0 + 840);
    v95 = v21;
    if (v18)
    {
      OUTLINED_FUNCTION_230(v21 + OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__contactSupportOptions, v0 + 504);
      sub_26BD31AF8();
      v24 = OUTLINED_FUNCTION_81_1();
      if (__swift_getEnumTagSinglePayload(v24, v25, v23) == 1)
      {
        v26 = *(v0 + 840);
        v27 = *(v0 + 824);
        v1 = *(v0 + 792);
        OUTLINED_FUNCTION_16_2(MEMORY[0x277D84F90]);
        _s15SupportServices0A19OptionTypeNamespaceVACycfC_0();
        v28 = OUTLINED_FUNCTION_23_3(*(v26 + 44));
        __swift_storeEnumTagSinglePayload(v28, v29, v30, v1);
        v31 = OUTLINED_FUNCTION_23_3(*(v26 + 48));
        __swift_storeEnumTagSinglePayload(v31, v32, v33, v1);
        OUTLINED_FUNCTION_23(v27);
        if (!v13)
        {
          sub_26BD04E80(*(v0 + 824), &unk_280448F78, &unk_26BDA1A40);
        }
      }

      else
      {
        OUTLINED_FUNCTION_7_4();
      }

      v47 = *(v0 + 792);
      ContactSupportOptions.chatSupportOption.getter(*(v0 + 872));
      OUTLINED_FUNCTION_6_4();
      OUTLINED_FUNCTION_151();
      __swift_storeEnumTagSinglePayload(v48, v49, v50, v47);
LABEL_39:
      v60 = *(v0 + 880);
      v61 = *(v0 + 792);
      sub_26BD898D8(*(v0 + 872), v60);
      sub_26BD31AF8();
      v62 = OUTLINED_FUNCTION_81_1();
      OUTLINED_FUNCTION_112(v62, v63, v61);
      if (!v13)
      {
        v68 = *(v17 + 33);
        v69 = *(v0 + 720);
        v70 = *(v0 + 712);
        v93 = *(v0 + 704);
        v94 = *(v0 + 744);
        v92 = *(v0 + 688);
        v90 = *(v0 + 976);
        v91 = *(v0 + 960);
        OUTLINED_FUNCTION_10_1();
        *(swift_task_alloc() + 16) = v0 + 336;
        OUTLINED_FUNCTION_12_3();
        sub_26BD8A2E0(v71, v72, &protocol conformance descriptor for TriageRequest.SymptomInformation);
        v73 = OUTLINED_FUNCTION_39_5();
        OUTLINED_FUNCTION_100_2(v73);

        OUTLINED_FUNCTION_22_2((v69 + OBJC_IVAR____TtC15SupportServices29HelpMeTroubleshootCoordinator_userAgent));
        OUTLINED_FUNCTION_69_0(v74, v86, v87, v88, v89, v90, v91);
        *(v17 + 32) = v68;
        v75 = OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__reportingContext;
        OUTLINED_FUNCTION_230(v95 + OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__reportingContext, v0 + 528);
        v76 = *(v95 + v75);
        *(v0 + 1040) = v76;
        OUTLINED_FUNCTION_112_0();

        sub_26BD9FC20(v92, v93, v70, v94);
        swift_task_alloc();
        OUTLINED_FUNCTION_35_4();
        *(v0 + 1048) = v77;
        *v77 = v78;
        v79 = OUTLINED_FUNCTION_29_2(v77);

        sub_26BD85C98(v79, v80, v81, v82, v83, v84, v85, v76);
        return;
      }

      OUTLINED_FUNCTION_85_2();
      OUTLINED_FUNCTION_110_0(v60);
      v64 = sub_26BD89884();
      OUTLINED_FUNCTION_72_1(&type metadata for HelpMeTroubleshootError, v64);
      *v65 = 3;
      swift_willThrow();
      OUTLINED_FUNCTION_110_0(v1);
      OUTLINED_FUNCTION_3_5();
      sub_26BD89728(v61, v66);
      OUTLINED_FUNCTION_2_4();
      sub_26BD89728(v22, v67);
      goto LABEL_4;
    }

    OUTLINED_FUNCTION_230(v21 + OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__contactSupportOptions, v0 + 624);
    sub_26BD31AF8();
    v34 = OUTLINED_FUNCTION_81_1();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v34, v35, v23);
    v37 = *(v0 + 856);
    if (EnumTagSinglePayload == 1)
    {
      v38 = *(v0 + 840);
      v39 = *(v0 + 832);
      v40 = *(v0 + 792);
      OUTLINED_FUNCTION_16_2(MEMORY[0x277D84F90]);
      _s15SupportServices0A19OptionTypeNamespaceVACycfC_0();
      v41 = OUTLINED_FUNCTION_23_3(*(v38 + 44));
      __swift_storeEnumTagSinglePayload(v41, v42, v43, v40);
      v44 = OUTLINED_FUNCTION_23_3(*(v38 + 48));
      __swift_storeEnumTagSinglePayload(v44, v45, v46, v40);
      OUTLINED_FUNCTION_23(v39);
      if (!v13)
      {
        sub_26BD04E80(*(v0 + 832), &unk_280448F78, &unk_26BDA1A40);
      }
    }

    else
    {
      OUTLINED_FUNCTION_7_4();
    }

    v1 = 0;
    OUTLINED_FUNCTION_60_1();
    v22 = *(v2 + 16);
    while (1)
    {
      if (v22 == v1)
      {
        v59 = 1;
        goto LABEL_38;
      }

      if (v1 >= *(v2 + 16))
      {
        break;
      }

      v51 = *(v0 + 816);
      OUTLINED_FUNCTION_82_2();
      OUTLINED_FUNCTION_44_0();
      sub_26BD893FC();
      v52 = *(v51 + *(v0 + 412));
      OUTLINED_FUNCTION_230(v52 + 32, v0 + 648);
      v53 = *(v52 + 32);
      v54 = *(v52 + 40);
      v55 = v53 == 4475971 && v54 == 0xE300000000000000;
      if (v55 || (OUTLINED_FUNCTION_102_0(v53) & 1) != 0 || (v53 == v37 ? (v56 = v54 == 0xE500000000000000) : (v56 = 0), v56 || (sub_26BDA0FB0() & 1) != 0))
      {
        OUTLINED_FUNCTION_10_1();
        v59 = 0;
LABEL_38:
        __swift_storeEnumTagSinglePayload(*(v0 + 872), v59, 1, *(v0 + 792));
        OUTLINED_FUNCTION_6_4();
        v17 = v0 + 392;
        goto LABEL_39;
      }

      OUTLINED_FUNCTION_4_4();
      sub_26BD89728(v57, v58);
      ++v1;
    }

    __break(1u);
  }
}

uint64_t sub_26BD84938()
{
  OUTLINED_FUNCTION_31_4();
  v2 = *v1;
  OUTLINED_FUNCTION_17_5();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 1032) = v0;

  v5 = *(v2 + 1008);
  v6 = *(v2 + 1000);
  if (v0)
  {
    v7 = sub_26BD8557C;
  }

  else
  {
    v7 = sub_26BD84A68;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

void sub_26BD84A68()
{
  v2 = v0 + 392;
  v3 = *(v0 + 904);
  sub_26BD893FC();
  sub_26BD89348();
  OUTLINED_FUNCTION_151();
  __swift_storeEnumTagSinglePayload(v4, v5, v6, v3);
  swift_beginAccess();
  sub_26BD2E160();
  swift_endAccess();
  OUTLINED_FUNCTION_87_1();
  v9 = *(v7 + v8);
  v10 = OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__contactSupportOptions;
  v11 = *(v0 + 840);
  if (v12)
  {
    v13 = *(v0 + 824);
    OUTLINED_FUNCTION_230(v9 + OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__contactSupportOptions, v0 + 504);
    sub_26BD31AF8();
    if (__swift_getEnumTagSinglePayload(v13, 1, v11) == 1)
    {
      v14 = *(v0 + 840);
      v15 = *(v0 + 824);
      v16 = *(v0 + 792);
      OUTLINED_FUNCTION_16_2(MEMORY[0x277D84F90]);
      _s15SupportServices0A19OptionTypeNamespaceVACycfC_0();
      v17 = OUTLINED_FUNCTION_23_3(*(v14 + 44));
      __swift_storeEnumTagSinglePayload(v17, v18, v19, v16);
      v20 = OUTLINED_FUNCTION_23_3(*(v14 + 48));
      __swift_storeEnumTagSinglePayload(v20, v21, v22, v16);
      OUTLINED_FUNCTION_112(v15, 1, v14);
      if (!v44)
      {
        sub_26BD04E80(*(v0 + 824), &unk_280448F78, &unk_26BDA1A40);
      }
    }

    else
    {
      OUTLINED_FUNCTION_7_4();
    }

    v35 = *(v0 + 792);
    ContactSupportOptions.chatSupportOption.getter(*(v0 + 872));
    OUTLINED_FUNCTION_6_4();
    OUTLINED_FUNCTION_151();
    __swift_storeEnumTagSinglePayload(v36, v37, v38, v35);
LABEL_28:
    v50 = *(v0 + 880);
    v51 = *(v0 + 864);
    v52 = *(v0 + 792);
    sub_26BD898D8(*(v0 + 872), v50);
    sub_26BD31AF8();
    OUTLINED_FUNCTION_112(v51, 1, v52);
    if (v44)
    {
      OUTLINED_FUNCTION_85_2();
      OUTLINED_FUNCTION_110_0(v50);
      v53 = sub_26BD89884();
      OUTLINED_FUNCTION_72_1(&type metadata for HelpMeTroubleshootError, v53);
      *v54 = 3;
      swift_willThrow();
      OUTLINED_FUNCTION_110_0(v52);
      OUTLINED_FUNCTION_3_5();
      sub_26BD89728(v51, v55);
      OUTLINED_FUNCTION_2_4();
      sub_26BD89728(v10, v56);
      OUTLINED_FUNCTION_91_2();
      OUTLINED_FUNCTION_8_6();

      OUTLINED_FUNCTION_25_1();

      v57();
    }

    else
    {
      v58 = *(v2 + 33);
      v59 = *(v0 + 720);
      v60 = *(v0 + 712);
      v82 = *(v0 + 704);
      v83 = *(v0 + 744);
      v81 = *(v0 + 688);
      v79 = *(v0 + 976);
      v80 = *(v0 + 960);
      OUTLINED_FUNCTION_10_1();
      *(swift_task_alloc() + 16) = v0 + 336;
      OUTLINED_FUNCTION_12_3();
      sub_26BD8A2E0(v61, v62, &protocol conformance descriptor for TriageRequest.SymptomInformation);
      OUTLINED_FUNCTION_39_5();
      sub_26BDA0A10();

      OUTLINED_FUNCTION_22_2((v59 + OBJC_IVAR____TtC15SupportServices29HelpMeTroubleshootCoordinator_userAgent));
      OUTLINED_FUNCTION_69_0(v63, v75, v76, v77, v78, v79, v80);
      *(v2 + 32) = v58;
      v64 = OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__reportingContext;
      OUTLINED_FUNCTION_230(v9 + OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__reportingContext, v0 + 528);
      v65 = *(v9 + v64);
      *(v0 + 1040) = v65;
      OUTLINED_FUNCTION_112_0();

      sub_26BD9FC20(v81, v82, v60, v83);
      swift_task_alloc();
      OUTLINED_FUNCTION_35_4();
      *(v0 + 1048) = v66;
      *v66 = v67;
      v68 = OUTLINED_FUNCTION_29_2(v66);

      sub_26BD85C98(v68, v69, v70, v71, v72, v73, v74, v65);
    }
  }

  else
  {
    v23 = *(v0 + 832);
    OUTLINED_FUNCTION_230(v9 + OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__contactSupportOptions, v0 + 624);
    sub_26BD31AF8();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v23, 1, v11);
    v25 = *(v0 + 856);
    if (EnumTagSinglePayload == 1)
    {
      v26 = *(v0 + 840);
      v27 = *(v0 + 832);
      v28 = *(v0 + 792);
      OUTLINED_FUNCTION_16_2(MEMORY[0x277D84F90]);
      _s15SupportServices0A19OptionTypeNamespaceVACycfC_0();
      v29 = OUTLINED_FUNCTION_23_3(*(v26 + 44));
      __swift_storeEnumTagSinglePayload(v29, v30, v31, v28);
      v32 = OUTLINED_FUNCTION_23_3(*(v26 + 48));
      __swift_storeEnumTagSinglePayload(v32, v33, v34, v28);
      OUTLINED_FUNCTION_112(v27, 1, v26);
      if (!v44)
      {
        sub_26BD04E80(*(v0 + 832), &unk_280448F78, &unk_26BDA1A40);
      }
    }

    else
    {
      OUTLINED_FUNCTION_7_4();
    }

    v10 = 0;
    OUTLINED_FUNCTION_60_1();
    v39 = *(v1 + 16);
    while (1)
    {
      if (v39 == v10)
      {
        v49 = 1;
        goto LABEL_27;
      }

      if (v10 >= *(v1 + 16))
      {
        break;
      }

      v40 = *(v0 + 816);
      OUTLINED_FUNCTION_82_2();
      OUTLINED_FUNCTION_44_0();
      sub_26BD893FC();
      v41 = *(v40 + *(v0 + 412));
      OUTLINED_FUNCTION_230(v41 + 32, v0 + 648);
      v42 = *(v41 + 32);
      v43 = *(v41 + 40);
      v44 = v42 == 4475971 && v43 == 0xE300000000000000;
      if (v44 || (v45 = OUTLINED_FUNCTION_256(), (OUTLINED_FUNCTION_102_0(v45) & 1) != 0) || (v42 == v25 ? (v46 = v43 == 0xE500000000000000) : (v46 = 0), v46 || (OUTLINED_FUNCTION_256(), (sub_26BDA0FB0() & 1) != 0)))
      {
        OUTLINED_FUNCTION_10_1();
        v49 = 0;
LABEL_27:
        __swift_storeEnumTagSinglePayload(*(v0 + 872), v49, 1, *(v0 + 792));
        OUTLINED_FUNCTION_6_4();
        v2 = v0 + 392;
        goto LABEL_28;
      }

      OUTLINED_FUNCTION_4_4();
      sub_26BD89728(v47, v48);
      ++v10;
    }

    __break(1u);
  }
}