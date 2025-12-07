void sub_229727DF0(void *a1)
{
  swift_getObjectType();
  v3 = sub_22A4DD07C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [v1 homeManager];
  if (!v7)
  {
    goto LABEL_4;
  }

  v8 = v7;
  v9 = [v7 idsServerBag];

  if (!v9)
  {
    __break(1u);
    return;
  }

  v10 = [v9 fetchHomeWiFiInfosMessageDisable];

  if (!v10)
  {

    sub_2297280B0(a1, sub_229728038, 0);
  }

  else
  {
LABEL_4:
    sub_2297A46D4();
    v11 = sub_22A4DD05C();
    v12 = sub_22A4DDCEC();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_229538000, v11, v12, "Responding with error to HMHomeFetchWiFiInfoMessage as it is disabled in IDS", v13, 2u);
      MEMORY[0x22AAD4E50](v13, -1, -1);
    }

    (*(v4 + 8))(v6, v3);
    v14 = [objc_opt_self() hmErrorWithCode_];
    v15 = sub_22A4DB3DC();

    [a1 respondWithError_];
  }
}

id sub_229728038()
{
  v0 = [objc_opt_self() sharedInstance];
  v1 = sub_22A4DB77C();
  v2 = [v0 isRapportDeviceDiscoveredWithIdentifier_];

  return v2;
}

void sub_2297280B0(void *a1, uint64_t (*a2)(char *), uint64_t a3)
{
  v4 = v3;
  v155 = a3;
  v156 = a2;
  v169 = a1;
  ObjectType = swift_getObjectType();
  v6 = sub_22A4DB7DC();
  v157 = *(v6 - 8);
  v7 = MEMORY[0x28223BE20](v6);
  v149 = &v145 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v151 = &v145 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v159 = &v145 - v12;
  MEMORY[0x28223BE20](v11);
  v14 = &v145 - v13;
  v167 = sub_22A4DD07C();
  v15 = *(v167 - 8);
  v16 = MEMORY[0x28223BE20](v167);
  v18 = &v145 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v16);
  v162 = &v145 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v160 = &v145 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v152 = &v145 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v148 = &v145 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v150 = &v145 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v153 = &v145 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v154 = &v145 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v161 = &v145 - v34;
  MEMORY[0x28223BE20](v33);
  v36 = &v145 - v35;
  v164 = [v4 wifiManager];
  v37 = [v164 currentNetworkAssociation];
  v165 = v37;
  v158 = v6;
  if (v37)
  {
    v38 = [v37 SSID];
    v39 = sub_22A4DD5EC();
    v41 = v40;
  }

  else
  {
    v39 = 0;
    v41 = 0;
  }

  v166 = ObjectType;
  sub_2297A46D4();
  v42 = sub_22A4DD05C();
  v43 = sub_22A4DDCCC();
  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    *v44 = 0;
    _os_log_impl(&dword_229538000, v42, v43, "Setting up the WiFi info fetch metric tracker", v44, 2u);
    MEMORY[0x22AAD4E50](v44, -1, -1);
  }

  v46 = v15 + 8;
  v45 = *(v15 + 8);
  v47 = v167;
  v168 = v45;
  v45(v36, v167);
  v48 = [v4 uuid];
  sub_22A4DB79C();
  v49 = [v4 logEventSubmitter];
  if (!v49)
  {
    __break(1u);
    return;
  }

  v50 = v49;

  _s35HomeWiFiInfoFetchMetricEventTrackerCMa(0);
  swift_allocObject();

  v51 = sub_22972A364(v14, v50, v39, v41);
  v52 = [v169 messagePayload];
  if (!v52)
  {
    goto LABEL_30;
  }

  v53 = v52;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
  v54 = sub_22A4DD49C();

  v55 = sub_22A4DD5EC();
  if (!*(v54 + 16))
  {
LABEL_27:

    goto LABEL_30;
  }

  v147 = v46;
  v163 = v51;
  v57 = sub_229543DBC(v55, v56);
  v59 = v58;

  if ((v59 & 1) == 0)
  {

    goto LABEL_30;
  }

  sub_2295404B0(*(v54 + 56) + 32 * v57, aBlock);

  sub_229562F68(0, &qword_281401770, 0x277CCABB0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_30:

    sub_2297A46D4();
    v74 = sub_22A4DD05C();
    v75 = sub_22A4DDCEC();
    if (os_log_type_enabled(v74, v75))
    {
      v76 = swift_slowAlloc();
      *v76 = 0;
      _os_log_impl(&dword_229538000, v74, v75, "No valid timeout specified in message payload", v76, 2u);
      MEMORY[0x22AAD4E50](v76, -1, -1);
    }

    v168(v18, v47);
    v77 = [objc_opt_self() hmErrorWithCode_];
    v78 = sub_22A4DB3DC();

    [v169 respondWithError_];

LABEL_33:

    return;
  }

  v60 = v171;
  [v171 doubleValue];
  if (v61 <= 0.0 || (v62 = v61, v61 < 2.22044605e-16))
  {

    v79 = v162;
    sub_2297A46D4();
    v80 = sub_22A4DD05C();
    v81 = sub_22A4DDCEC();
    if (os_log_type_enabled(v80, v81))
    {
      v82 = swift_slowAlloc();
      *v82 = 0;
      _os_log_impl(&dword_229538000, v80, v81, "Remote message timeout cannot be 0 or negative", v82, 2u);
      MEMORY[0x22AAD4E50](v82, -1, -1);
    }

    v168(v79, v47);
    v83 = [objc_opt_self() hmErrorWithCode_];
    v78 = sub_22A4DB3DC();

    [v169 respondWithError_];

    goto LABEL_33;
  }

  v63 = v161;
  sub_2297A46D4();
  v64 = sub_22A4DD05C();
  v65 = sub_22A4DDCCC();
  if (os_log_type_enabled(v64, v65))
  {
    v66 = swift_slowAlloc();
    *v66 = 134217984;
    *(v66 + 4) = v62;
    _os_log_impl(&dword_229538000, v64, v65, "Handling home WiFi info fetch with timeout: %f", v66, 0xCu);
    MEMORY[0x22AAD4E50](v66, -1, -1);
  }

  v168(v63, v47);
  v67 = [v4 appleMediaAccessories];
  sub_229562F68(0, &qword_281401920, off_278666038);
  v68 = sub_22A4DD83C();

  v146 = v60;
  if (v68 >> 62)
  {
LABEL_56:
    v69 = sub_22A4DE0EC();
    if (v69)
    {
      goto LABEL_17;
    }

LABEL_57:

    v140 = v160;
    sub_2297A46D4();
    v141 = sub_22A4DD05C();
    v142 = sub_22A4DDCEC();
    if (os_log_type_enabled(v141, v142))
    {
      v143 = swift_slowAlloc();
      *v143 = 0;
      _os_log_impl(&dword_229538000, v141, v142, "No accessory found for primary resident", v143, 2u);
      MEMORY[0x22AAD4E50](v143, -1, -1);
    }

    v168(v140, v167);
    v114 = [objc_opt_self() hmErrorWithCode_];
    v144 = sub_22A4DB3DC();
    [v169 respondWithError_];

    v116 = sub_22A4DB3DC();
    sub_22972A4D0(v116);

    v117 = v146;
LABEL_60:

    return;
  }

  v69 = *((v68 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v69)
  {
    goto LABEL_57;
  }

LABEL_17:
  v70 = 0;
  v18 = 0;
  v47 = v68 & 0xC000000000000001;
  while (1)
  {
    if (v47)
    {
      v71 = MEMORY[0x22AAD13F0](v70, v68);
      v72 = v70 + 1;
      if (__OFADD__(v70, 1))
      {
LABEL_26:
        __break(1u);
        goto LABEL_27;
      }
    }

    else
    {
      if (v70 >= *((v68 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_56;
      }

      v71 = *(v68 + 8 * v70 + 32);
      v72 = v70 + 1;
      if (__OFADD__(v70, 1))
      {
        goto LABEL_26;
      }
    }

    aBlock[0] = v71;
    v73 = v71;
    if (sub_22972C360(aBlock, v4))
    {
      break;
    }

    ++v70;
    if (v72 == v69)
    {
      goto LABEL_57;
    }
  }

  v162 = v73;
  v84 = [v73 idsIdentifier];
  v85 = v167;
  if (!v84)
  {
    v110 = v152;
    sub_2297A46D4();
    v111 = sub_22A4DD05C();
    v112 = sub_22A4DDCEC();
    if (os_log_type_enabled(v111, v112))
    {
      v113 = swift_slowAlloc();
      *v113 = 0;
      _os_log_impl(&dword_229538000, v111, v112, "Primary resident accessory does not have IDS identifier", v113, 2u);
      MEMORY[0x22AAD4E50](v113, -1, -1);
    }

    v168(v110, v85);
    v114 = [objc_opt_self() hmErrorWithCode_];
    v115 = sub_22A4DB3DC();
    [v169 respondWithError_];

    v116 = sub_22A4DB3DC();
    sub_22972A4D0(v116);

    v117 = v162;
    goto LABEL_60;
  }

  v86 = v159;
  v87 = v84;
  sub_22A4DB79C();

  v88 = v154;
  sub_2297A46D4();
  v89 = sub_22A4DD05C();
  v90 = sub_22A4DDCCC();
  if (os_log_type_enabled(v89, v90))
  {
    v91 = swift_slowAlloc();
    *v91 = 0;
    _os_log_impl(&dword_229538000, v89, v90, "Checking primary resident device Rapport reachability", v91, 2u);
    MEMORY[0x22AAD4E50](v91, -1, -1);
  }

  v168(v88, v85);
  v92 = v156(v86);
  v93 = v158;
  if (v92)
  {
    v94 = v153;
    sub_2297A46D4();
    v95 = v157;
    v96 = v151;
    (*(v157 + 16))(v151, v86, v93);
    v97 = sub_22A4DD05C();
    v98 = sub_22A4DDCCC();
    if (os_log_type_enabled(v97, v98))
    {
      v99 = swift_slowAlloc();
      v100 = v95;
      v101 = swift_slowAlloc();
      aBlock[0] = v101;
      *v99 = 136315138;
      sub_22953E218(&qword_281403860, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v102 = sub_22A4DE5CC();
      v103 = v96;
      v105 = v104;
      v106 = *(v100 + 8);
      v107 = v93;
      v106(v103, v93);
      v108 = sub_2295A3E30(v102, v105, aBlock);

      *(v99 + 4) = v108;
      _os_log_impl(&dword_229538000, v97, v98, "Primary resident with IDS identifier: %s is reachable via Rapport", v99, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v101);
      MEMORY[0x22AAD4E50](v101, -1, -1);
      MEMORY[0x22AAD4E50](v99, -1, -1);

      v109 = v153;
    }

    else
    {

      v106 = *(v95 + 8);
      v107 = v93;
      v106(v96, v93);
      v109 = v94;
    }

    v168(v109, v167);
    [v169 respondWithSuccess];
    sub_22972A664();

    v106(v159, v107);
  }

  else
  {
    v118 = [v4 homeManager];
    if (v118)
    {
      v119 = v118;
      v120 = v150;
      sub_2297A46D4();
      v121 = sub_22A4DD05C();
      v122 = sub_22A4DDCCC();
      if (os_log_type_enabled(v121, v122))
      {
        v123 = swift_slowAlloc();
        *v123 = 0;
        _os_log_impl(&dword_229538000, v121, v122, "Performing remote fetch from the primary resident ...", v123, 2u);
        v124 = v123;
        v120 = v150;
        MEMORY[0x22AAD4E50](v124, -1, -1);
      }

      v168(v120, v85);
      v125 = [v162 uuid];
      v126 = v149;
      sub_22A4DB79C();

      v127 = sub_22A4DB77C();
      v168 = *(v157 + 8);
      v168(v126, v93);
      v128 = swift_allocObject();
      v129 = v169;
      v128[2] = v4;
      v128[3] = v129;
      v130 = v166;
      v128[4] = v163;
      v128[5] = v130;
      aBlock[4] = sub_22972EB50;
      aBlock[5] = v128;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_229582E94;
      aBlock[3] = &block_descriptor_39;
      v131 = _Block_copy(aBlock);

      v132 = v4;
      v133 = v129;

      [v119 fetchSetupDiagnosticStateWithOptions:1 accessoryUUID:v127 remoteMessageTimeout:1 remoteMessageRestriction:v131 completion:v62];

      _Block_release(v131);

      v168(v86, v93);
    }

    else
    {
      v134 = v148;
      sub_2297A46D4();
      v135 = sub_22A4DD05C();
      v136 = sub_22A4DDCEC();
      if (os_log_type_enabled(v135, v136))
      {
        v137 = swift_slowAlloc();
        *v137 = 0;
        _os_log_impl(&dword_229538000, v135, v136, "homeManager is nil", v137, 2u);
        MEMORY[0x22AAD4E50](v137, -1, -1);
      }

      v168(v134, v85);
      v138 = [objc_opt_self() hmErrorWithCode_];
      v139 = sub_22A4DB3DC();

      [v169 respondWithError_];

      (*(v157 + 8))(v86, v93);
    }
  }
}

uint64_t sub_229729420(void *a1, void *a2, void *a3, void *a4, uint64_t a5, uint64_t a6)
{
  v44 = a5;
  v45 = a6;
  v43 = a2;
  v47 = sub_22A4DD26C();
  v50 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v46 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22A4DD29C();
  v48 = *(v10 - 8);
  v49 = v10;
  MEMORY[0x28223BE20](v10);
  v40 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E408, &unk_22A581160);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v16 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = &v39 - v17;
  v42 = &v39 - v17;
  v41 = [a3 workQueue];
  aBlock[0] = a1;
  v19 = a1;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8802C0, &qword_22A57C008);
  MEMORY[0x22AACEC10](aBlock, v20);
  v21 = *(v13 + 16);
  v22 = v18;
  v23 = v12;
  v39 = v12;
  v21(v16, v22, v12);
  v24 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v25 = (v14 + v24 + 7) & 0xFFFFFFFFFFFFFFF8;
  v26 = (v25 + 15) & 0xFFFFFFFFFFFFFFF8;
  v27 = swift_allocObject();
  *(v27 + 16) = a3;
  *(v27 + 24) = a4;
  (*(v13 + 32))(v27 + v24, v16, v23);
  v29 = v43;
  v28 = v44;
  *(v27 + v25) = v43;
  *(v27 + v26) = v28;
  *(v27 + ((v26 + 15) & 0xFFFFFFFFFFFFFFF8)) = v45;
  aBlock[4] = sub_22972EB5C;
  aBlock[5] = v27;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22953E640;
  aBlock[3] = &block_descriptor_45;
  v30 = _Block_copy(aBlock);
  v31 = a3;
  v32 = a4;
  v33 = v29;

  v34 = v40;
  sub_22A4DD28C();
  v51 = MEMORY[0x277D84F90];
  sub_22953E218(&qword_281401CF0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87CEA0, &unk_22A577A40);
  sub_22953E5DC();
  v36 = v46;
  v35 = v47;
  sub_22A4DE03C();
  v37 = v41;
  MEMORY[0x22AAD0F80](0, v34, v36, v30);
  _Block_release(v30);

  (*(v50 + 8))(v36, v35);
  (*(v48 + 8))(v34, v49);
  (*(v13 + 8))(v42, v39);
}

void sub_229729880(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5)
{
  v8 = sub_22A4DD07C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2297A46D4();
  v12 = sub_22A4DD05C();
  v13 = sub_22A4DDCCC();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v20[0] = a4;
    v15 = a5;
    v16 = v14;
    *v14 = 0;
    _os_log_impl(&dword_229538000, v12, v13, "Received response from the remote fetch", v14, 2u);
    v17 = v16;
    a5 = v15;
    a4 = v20[0];
    MEMORY[0x22AAD4E50](v17, -1, -1);
  }

  (*(v9 + 8))(v11, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E408, &unk_22A581160);
  sub_22A4DBA4C();
  v18 = v20[3];
  if (a4)
  {
    v20[2] = a4;
    v19 = a4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E520, &unk_22A579920);
    sub_229562F68(0, &qword_281401778, 0x277CCA9B8);
    if (swift_dynamicCast())
    {
      a4 = v20[1];
    }

    else
    {
      a4 = 0;
    }
  }

  sub_229729AB4(a2, v18, a4, a5);
}

void sub_229729AB4(void *a1, void *a2, void *a3, uint64_t a4)
{
  v70 = a1;
  v71 = a4;
  swift_getObjectType();
  v7 = sub_22A4DD07C();
  v68 = *(v7 - 8);
  v69 = v7;
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v66 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v66 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v67 = &v66 - v15;
  MEMORY[0x28223BE20](v14);
  v17 = &v66 - v16;
  v18 = sub_22A4DD2FC();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = (&v66 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v21 = [v4 workQueue];
  (*(v19 + 104))(v21, *MEMORY[0x277D85200], v18);
  v22 = sub_22A4DD31C();
  (*(v19 + 8))(v21, v18);
  if (v22)
  {
    if (a3)
    {
      v23 = a3;
      sub_2297A46D4();
      v24 = v23;
      v25 = sub_22A4DD05C();
      v26 = sub_22A4DDCEC();

      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        *v27 = 138412290;
        *(v27 + 4) = v24;
        *v28 = a3;
        v29 = v24;
        _os_log_impl(&dword_229538000, v25, v26, "Fetch from the primary resident resulting an error: %@", v27, 0xCu);
        sub_22953EAE4(v28, &qword_27D87D7D0, &unk_22A578D90);
        MEMORY[0x22AAD4E50](v28, -1, -1);
        MEMORY[0x22AAD4E50](v27, -1, -1);
      }

      (*(v68 + 8))(v17, v69);
      v30 = v24;
      v31 = sub_22A4DB3DC();

      [v70 respondWithError_];
      v32 = v30;
      sub_22972A804(a3);
      v33 = v32;
LABEL_23:

      return;
    }

    if (!a2)
    {
      sub_2297A46D4();
      v43 = sub_22A4DD05C();
      v44 = sub_22A4DDCEC();
      if (os_log_type_enabled(v43, v44))
      {
        v45 = swift_slowAlloc();
        v46 = swift_slowAlloc();
        *v45 = 138412290;
        *(v45 + 4) = 0;
        *v46 = 0;
        _os_log_impl(&dword_229538000, v43, v44, "No diagnostic info included in fetched response: %@", v45, 0xCu);
        sub_22953EAE4(v46, &qword_27D87D7D0, &unk_22A578D90);
        MEMORY[0x22AAD4E50](v46, -1, -1);
        MEMORY[0x22AAD4E50](v45, -1, -1);
      }

      (*(v68 + 8))(v10, v69);
      v32 = [objc_opt_self() hmErrorWithCode_];
      v47 = sub_22A4DB3DC();
      [v70 respondWithError_];

      v33 = sub_22A4DB3DC();
      sub_22972A9B4(v33);
      goto LABEL_23;
    }

    v34 = a2;
    v35 = [v34 appleMediaAccessoryDiagnosticInfo];
    if (v35)
    {
      v36 = v35;
      v33 = [v35 wifiInfo];

      if (v33)
      {
        v37 = [v33 networkSSID];
        if (v37)
        {
          v38 = v37;
          v39 = sub_22A4DD5EC();
          v41 = v40;

          if ([v33 hasRequiresPassword])
          {
            v42 = [v33 requiresPassword];
          }

          else
          {
            v42 = 1;
          }

          v53 = v67;
          v54 = sub_22A4DD8AC();
          sub_2297A46D4();

          v55 = sub_22A4DD05C();
          v56 = sub_22A4DDCCC();

          if (os_log_type_enabled(v55, v56))
          {
            v57 = swift_slowAlloc();
            v58 = swift_slowAlloc();
            v67 = v54;
            v59 = v58;
            v72 = v58;
            *v57 = 136315394;
            *(v57 + 4) = sub_2295A3E30(v39, v41, &v72);
            *(v57 + 12) = 1024;
            *(v57 + 14) = v42;
            _os_log_impl(&dword_229538000, v55, v56, "Responding to the fetch request with WiFi SSID: %s requiresPassword: %{BOOL}d", v57, 0x12u);
            __swift_destroy_boxed_opaque_existential_0(v59);
            v60 = v59;
            v54 = v67;
            MEMORY[0x22AAD4E50](v60, -1, -1);
            MEMORY[0x22AAD4E50](v57, -1, -1);
          }

          (*(v68 + 8))(v53, v69);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D080, &qword_22A57CF50);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_22A5761A0;
          *(inited + 32) = sub_22A4DD5EC();
          *(inited + 72) = MEMORY[0x277D837D0];
          *(inited + 40) = v62;
          *(inited + 48) = v39;
          *(inited + 56) = v41;
          *(inited + 80) = sub_22A4DD5EC();
          *(inited + 88) = v63;
          *(inited + 120) = sub_229562F68(0, &qword_281401770, 0x277CCABB0);
          *(inited + 96) = v54;

          v64 = v54;
          sub_22956AC5C(inited);
          swift_setDeallocating();
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87DE50, &qword_22A577CD0);
          swift_arrayDestroy();
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
          v65 = sub_22A4DD47C();

          [v70 respondWithPayload:v65 error:0];

          sub_22972AB64(v39, v41);

          v32 = v34;
          goto LABEL_23;
        }
      }
    }

    sub_2297A46D4();
    v48 = sub_22A4DD05C();
    v49 = sub_22A4DDCEC();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      *v50 = 0;
      _os_log_impl(&dword_229538000, v48, v49, "No primary resident WiFi SSID included in fetched diagnostic info", v50, 2u);
      MEMORY[0x22AAD4E50](v50, -1, -1);
    }

    (*(v68 + 8))(v13, v69);
    v51 = [objc_opt_self() hmErrorWithCode_];
    v52 = sub_22A4DB3DC();
    [v70 respondWithError_];

    v32 = sub_22A4DB3DC();
    sub_22972A9B4(v32);

    v33 = v34;
    goto LABEL_23;
  }

  __break(1u);
}

uint64_t sub_22972A364(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = OBJC_IVAR____TtCE13HomeKitDaemonCSo7HMDHomeP33_73012FE8AC56C4A293325838CCBABF8F35HomeWiFiInfoFetchMetricEventTracker_homeUUID;
  v10 = sub_22A4DB7DC();
  v11 = *(v10 - 8);
  (*(v11 + 16))(v4 + v9, a1, v10);
  *(v4 + OBJC_IVAR____TtCE13HomeKitDaemonCSo7HMDHomeP33_73012FE8AC56C4A293325838CCBABF8F35HomeWiFiInfoFetchMetricEventTracker_logEventSubmitter) = a2;
  v12 = (v4 + OBJC_IVAR____TtCE13HomeKitDaemonCSo7HMDHomeP33_73012FE8AC56C4A293325838CCBABF8F35HomeWiFiInfoFetchMetricEventTracker_currentNetworkSSID);
  *v12 = a3;
  v12[1] = a4;
  HMFUptime();
  v14 = v13;
  (*(v11 + 8))(a1, v10);
  *(v4 + OBJC_IVAR____TtCE13HomeKitDaemonCSo7HMDHomeP33_73012FE8AC56C4A293325838CCBABF8F35HomeWiFiInfoFetchMetricEventTracker_startTime) = v14;
  *(v4 + OBJC_IVAR____TtCE13HomeKitDaemonCSo7HMDHomeP33_73012FE8AC56C4A293325838CCBABF8F35HomeWiFiInfoFetchMetricEventTracker_primaryResidentAccessoryExist) = 0;
  *(v4 + OBJC_IVAR____TtCE13HomeKitDaemonCSo7HMDHomeP33_73012FE8AC56C4A293325838CCBABF8F35HomeWiFiInfoFetchMetricEventTracker_primaryResidentRapportDiscoverable) = 0;
  *(v4 + OBJC_IVAR____TtCE13HomeKitDaemonCSo7HMDHomeP33_73012FE8AC56C4A293325838CCBABF8F35HomeWiFiInfoFetchMetricEventTracker_fetchSucceeded) = 0;
  *(v4 + OBJC_IVAR____TtCE13HomeKitDaemonCSo7HMDHomeP33_73012FE8AC56C4A293325838CCBABF8F35HomeWiFiInfoFetchMetricEventTracker_fetchedResponseHasWiFiInfo) = 0;
  *(v4 + OBJC_IVAR____TtCE13HomeKitDaemonCSo7HMDHomeP33_73012FE8AC56C4A293325838CCBABF8F35HomeWiFiInfoFetchMetricEventTracker_fetchedResponseHasSSID) = 0;
  *(v4 + OBJC_IVAR____TtCE13HomeKitDaemonCSo7HMDHomeP33_73012FE8AC56C4A293325838CCBABF8F35HomeWiFiInfoFetchMetricEventTracker_fetchedResponseHasSameSSIDAsController) = 0;
  *(v4 + OBJC_IVAR____TtCE13HomeKitDaemonCSo7HMDHomeP33_73012FE8AC56C4A293325838CCBABF8F35HomeWiFiInfoFetchMetricEventTracker_currentSSIDExist) = 0;
  *(v4 + OBJC_IVAR____TtCE13HomeKitDaemonCSo7HMDHomeP33_73012FE8AC56C4A293325838CCBABF8F35HomeWiFiInfoFetchMetricEventTracker_fetchDurationInMS) = 0;
  return v4;
}

void sub_22972A4D0(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = sub_22A4DD07C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v2 + OBJC_IVAR____TtCE13HomeKitDaemonCSo7HMDHomeP33_73012FE8AC56C4A293325838CCBABF8F35HomeWiFiInfoFetchMetricEventTracker_primaryResidentAccessoryExist) = 0;
  sub_229541CB0(v4, &off_283CE2D28);
  v9 = sub_22A4DD05C();
  v10 = sub_22A4DDCCC();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_229538000, v9, v10, "Primary resident accessory does not exist", v11, 2u);
    MEMORY[0x22AAD4E50](v11, -1, -1);
  }

  (*(v6 + 8))(v8, v5);
  sub_22972AD7C(a1);
}

void sub_22972A664()
{
  v1 = v0;
  v2 = *v0;
  v3 = sub_22A4DD07C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v1 + OBJC_IVAR____TtCE13HomeKitDaemonCSo7HMDHomeP33_73012FE8AC56C4A293325838CCBABF8F35HomeWiFiInfoFetchMetricEventTracker_primaryResidentAccessoryExist) = 1;
  *(v1 + OBJC_IVAR____TtCE13HomeKitDaemonCSo7HMDHomeP33_73012FE8AC56C4A293325838CCBABF8F35HomeWiFiInfoFetchMetricEventTracker_primaryResidentRapportDiscoverable) = 1;
  sub_229541CB0(v2, &off_283CE2D28);
  v7 = sub_22A4DD05C();
  v8 = sub_22A4DDCCC();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_229538000, v7, v8, "Primary resident is rapport visible", v9, 2u);
    MEMORY[0x22AAD4E50](v9, -1, -1);
  }

  (*(v4 + 8))(v6, v3);
  sub_22972AD7C(0);
}

void sub_22972A804(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = sub_22A4DD07C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v2 + OBJC_IVAR____TtCE13HomeKitDaemonCSo7HMDHomeP33_73012FE8AC56C4A293325838CCBABF8F35HomeWiFiInfoFetchMetricEventTracker_primaryResidentAccessoryExist) = 1;
  *(v2 + OBJC_IVAR____TtCE13HomeKitDaemonCSo7HMDHomeP33_73012FE8AC56C4A293325838CCBABF8F35HomeWiFiInfoFetchMetricEventTracker_primaryResidentRapportDiscoverable) = 0;
  *(v2 + OBJC_IVAR____TtCE13HomeKitDaemonCSo7HMDHomeP33_73012FE8AC56C4A293325838CCBABF8F35HomeWiFiInfoFetchMetricEventTracker_fetchSucceeded) = 0;
  sub_229541CB0(v4, &off_283CE2D28);
  v9 = sub_22A4DD05C();
  v10 = sub_22A4DDCCC();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_229538000, v9, v10, "Fetch failed without response", v11, 2u);
    MEMORY[0x22AAD4E50](v11, -1, -1);
  }

  (*(v6 + 8))(v8, v5);
  sub_22972AD7C(a1);
}

void sub_22972A9B4(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = sub_22A4DD07C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v2 + OBJC_IVAR____TtCE13HomeKitDaemonCSo7HMDHomeP33_73012FE8AC56C4A293325838CCBABF8F35HomeWiFiInfoFetchMetricEventTracker_primaryResidentAccessoryExist) = 1;
  *(v2 + OBJC_IVAR____TtCE13HomeKitDaemonCSo7HMDHomeP33_73012FE8AC56C4A293325838CCBABF8F35HomeWiFiInfoFetchMetricEventTracker_primaryResidentRapportDiscoverable) = 0;
  *(v2 + OBJC_IVAR____TtCE13HomeKitDaemonCSo7HMDHomeP33_73012FE8AC56C4A293325838CCBABF8F35HomeWiFiInfoFetchMetricEventTracker_fetchedResponseHasWiFiInfo) = 0;
  sub_229541CB0(v4, &off_283CE2D28);
  v9 = sub_22A4DD05C();
  v10 = sub_22A4DDCCC();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_229538000, v9, v10, "Response has invalid WiFi info", v11, 2u);
    MEMORY[0x22AAD4E50](v11, -1, -1);
  }

  (*(v6 + 8))(v8, v5);
  sub_22972AD7C(a1);
}

void sub_22972AB64(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = sub_22A4DD07C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v3 + OBJC_IVAR____TtCE13HomeKitDaemonCSo7HMDHomeP33_73012FE8AC56C4A293325838CCBABF8F35HomeWiFiInfoFetchMetricEventTracker_primaryResidentAccessoryExist) = 1;
  *(v3 + OBJC_IVAR____TtCE13HomeKitDaemonCSo7HMDHomeP33_73012FE8AC56C4A293325838CCBABF8F35HomeWiFiInfoFetchMetricEventTracker_primaryResidentRapportDiscoverable) = 0;
  *(v3 + OBJC_IVAR____TtCE13HomeKitDaemonCSo7HMDHomeP33_73012FE8AC56C4A293325838CCBABF8F35HomeWiFiInfoFetchMetricEventTracker_fetchedResponseHasWiFiInfo) = 1;
  v11 = *(v3 + OBJC_IVAR____TtCE13HomeKitDaemonCSo7HMDHomeP33_73012FE8AC56C4A293325838CCBABF8F35HomeWiFiInfoFetchMetricEventTracker_currentNetworkSSID);
  v12 = *(v3 + OBJC_IVAR____TtCE13HomeKitDaemonCSo7HMDHomeP33_73012FE8AC56C4A293325838CCBABF8F35HomeWiFiInfoFetchMetricEventTracker_currentNetworkSSID + 8);
  *(v3 + OBJC_IVAR____TtCE13HomeKitDaemonCSo7HMDHomeP33_73012FE8AC56C4A293325838CCBABF8F35HomeWiFiInfoFetchMetricEventTracker_currentSSIDExist) = v12 != 0;
  if (v12)
  {
    if (v11 == a1 && v12 == a2)
    {
      v14 = 1;
    }

    else
    {
      v14 = sub_22A4DE60C();
    }
  }

  else
  {
    v14 = 0;
  }

  *(v3 + OBJC_IVAR____TtCE13HomeKitDaemonCSo7HMDHomeP33_73012FE8AC56C4A293325838CCBABF8F35HomeWiFiInfoFetchMetricEventTracker_fetchedResponseHasSameSSIDAsController) = v14 & 1;
  sub_229541CB0(v6, &off_283CE2D28);
  v15 = sub_22A4DD05C();
  v16 = sub_22A4DDCCC();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_229538000, v15, v16, "Response has valid WiFi info", v17, 2u);
    MEMORY[0x22AAD4E50](v17, -1, -1);
  }

  (*(v8 + 8))(v10, v7);
  sub_22972AD7C(0);
}

void sub_22972AD7C(uint64_t a1)
{
  v2 = v1;
  v71 = a1;
  v52 = *v1;
  v3 = sub_22A4DD07C();
  v68 = *(v3 - 1);
  v69 = v3;
  MEMORY[0x28223BE20](v3);
  v51 = &v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22A4DB7DC();
  v72 = v5;
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  HMFUptime();
  v10 = v9 - *(v2 + OBJC_IVAR____TtCE13HomeKitDaemonCSo7HMDHomeP33_73012FE8AC56C4A293325838CCBABF8F35HomeWiFiInfoFetchMetricEventTracker_startTime);
  v67 = OBJC_IVAR____TtCE13HomeKitDaemonCSo7HMDHomeP33_73012FE8AC56C4A293325838CCBABF8F35HomeWiFiInfoFetchMetricEventTracker_fetchDurationInMS;
  *(v2 + OBJC_IVAR____TtCE13HomeKitDaemonCSo7HMDHomeP33_73012FE8AC56C4A293325838CCBABF8F35HomeWiFiInfoFetchMetricEventTracker_fetchDurationInMS) = v10;
  v66 = OBJC_IVAR____TtCE13HomeKitDaemonCSo7HMDHomeP33_73012FE8AC56C4A293325838CCBABF8F35HomeWiFiInfoFetchMetricEventTracker_primaryResidentAccessoryExist;
  LODWORD(v70) = *(v2 + OBJC_IVAR____TtCE13HomeKitDaemonCSo7HMDHomeP33_73012FE8AC56C4A293325838CCBABF8F35HomeWiFiInfoFetchMetricEventTracker_primaryResidentAccessoryExist);
  v65 = OBJC_IVAR____TtCE13HomeKitDaemonCSo7HMDHomeP33_73012FE8AC56C4A293325838CCBABF8F35HomeWiFiInfoFetchMetricEventTracker_primaryResidentRapportDiscoverable;
  v11 = *(v2 + OBJC_IVAR____TtCE13HomeKitDaemonCSo7HMDHomeP33_73012FE8AC56C4A293325838CCBABF8F35HomeWiFiInfoFetchMetricEventTracker_primaryResidentRapportDiscoverable);
  v63 = OBJC_IVAR____TtCE13HomeKitDaemonCSo7HMDHomeP33_73012FE8AC56C4A293325838CCBABF8F35HomeWiFiInfoFetchMetricEventTracker_fetchSucceeded;
  v12 = *(v2 + OBJC_IVAR____TtCE13HomeKitDaemonCSo7HMDHomeP33_73012FE8AC56C4A293325838CCBABF8F35HomeWiFiInfoFetchMetricEventTracker_fetchSucceeded);
  v62 = OBJC_IVAR____TtCE13HomeKitDaemonCSo7HMDHomeP33_73012FE8AC56C4A293325838CCBABF8F35HomeWiFiInfoFetchMetricEventTracker_fetchedResponseHasWiFiInfo;
  v13 = *(v2 + OBJC_IVAR____TtCE13HomeKitDaemonCSo7HMDHomeP33_73012FE8AC56C4A293325838CCBABF8F35HomeWiFiInfoFetchMetricEventTracker_fetchedResponseHasWiFiInfo);
  v61 = OBJC_IVAR____TtCE13HomeKitDaemonCSo7HMDHomeP33_73012FE8AC56C4A293325838CCBABF8F35HomeWiFiInfoFetchMetricEventTracker_fetchedResponseHasSSID;
  v14 = *(v2 + OBJC_IVAR____TtCE13HomeKitDaemonCSo7HMDHomeP33_73012FE8AC56C4A293325838CCBABF8F35HomeWiFiInfoFetchMetricEventTracker_fetchedResponseHasSSID);
  v59 = OBJC_IVAR____TtCE13HomeKitDaemonCSo7HMDHomeP33_73012FE8AC56C4A293325838CCBABF8F35HomeWiFiInfoFetchMetricEventTracker_fetchedResponseHasSameSSIDAsController;
  v15 = *(v2 + OBJC_IVAR____TtCE13HomeKitDaemonCSo7HMDHomeP33_73012FE8AC56C4A293325838CCBABF8F35HomeWiFiInfoFetchMetricEventTracker_fetchedResponseHasSameSSIDAsController);
  v55 = OBJC_IVAR____TtCE13HomeKitDaemonCSo7HMDHomeP33_73012FE8AC56C4A293325838CCBABF8F35HomeWiFiInfoFetchMetricEventTracker_currentSSIDExist;
  v16 = *(v2 + OBJC_IVAR____TtCE13HomeKitDaemonCSo7HMDHomeP33_73012FE8AC56C4A293325838CCBABF8F35HomeWiFiInfoFetchMetricEventTracker_currentSSIDExist);
  v17 = *(v6 + 16);
  v54 = OBJC_IVAR____TtCE13HomeKitDaemonCSo7HMDHomeP33_73012FE8AC56C4A293325838CCBABF8F35HomeWiFiInfoFetchMetricEventTracker_homeUUID;
  v57 = v6 + 16;
  v56 = v17;
  v17(v8, v2 + OBJC_IVAR____TtCE13HomeKitDaemonCSo7HMDHomeP33_73012FE8AC56C4A293325838CCBABF8F35HomeWiFiInfoFetchMetricEventTracker_homeUUID, v5);
  v77 = &type metadata for Metric.Setup.PrimaryResidentWiFiInfosFetch;
  v78 = &off_283CE5B80;
  LOBYTE(v75) = v70;
  BYTE1(v75) = v11;
  BYTE2(v75) = v12;
  BYTE3(v75) = v13;
  BYTE4(v75) = v14;
  BYTE5(v75) = v15;
  BYTE6(v75) = v16;
  v76 = v10;
  v18 = type metadata accessor for Metric.LogEventAdaptor();
  v19 = objc_allocWithZone(v18);
  v20 = &v19[OBJC_IVAR____TtCO13HomeKitDaemon6Metric15LogEventAdaptor_name];
  *v20 = 0xD00000000000002DLL;
  *(v20 + 1) = 0x800000022A594560;
  v58 = 0x800000022A594560;
  sub_22957F1C4(&v75, &v19[OBJC_IVAR____TtCO13HomeKitDaemon6Metric15LogEventAdaptor_event]);
  *&v19[OBJC_IVAR____TtCO13HomeKitDaemon6Metric15LogEventAdaptor_coreAnalyticsEventOptions] = 2;
  v21 = sub_22A4DB77C();
  v74.receiver = v19;
  v74.super_class = v18;
  v60 = v18;
  v22 = objc_msgSendSuper2(&v74, sel_initWithHomeUUID_, v21);

  v23 = *(v6 + 8);
  v70 = v8;
  v24 = v8;
  v25 = v51;
  v53 = v23;
  v23(v24, v72);
  __swift_destroy_boxed_opaque_existential_0(&v75);
  v64 = v22;
  sub_2297CDA58();
  sub_229541CB0(v52, &off_283CE2D28);

  v26 = sub_22A4DD05C();
  v27 = sub_22A4DDCCC();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v75 = v29;
    *v28 = 136315138;
    sub_229562F68(0, &qword_281401760, 0x277D82BB8);
    v30 = sub_22A4DD4AC();
    v32 = v31;

    v33 = sub_2295A3E30(v30, v32, &v75);

    *(v28 + 4) = v33;
    _os_log_impl(&dword_229538000, v26, v27, "Submitting metric log event: %s", v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v29);
    MEMORY[0x22AAD4E50](v29, -1, -1);
    MEMORY[0x22AAD4E50](v28, -1, -1);
  }

  else
  {
  }

  (*(v68 + 8))(v25, v69);
  v69 = *(v2 + OBJC_IVAR____TtCE13HomeKitDaemonCSo7HMDHomeP33_73012FE8AC56C4A293325838CCBABF8F35HomeWiFiInfoFetchMetricEventTracker_logEventSubmitter);
  v34 = *(v2 + v66);
  v35 = *(v2 + v65);
  v36 = *(v2 + v63);
  v37 = *(v2 + v62);
  v38 = *(v2 + v61);
  v39 = *(v2 + v59);
  v40 = *(v2 + v55);
  v41 = *(v2 + v67);
  v42 = v2 + v54;
  v43 = v70;
  v44 = v72;
  v56(v70, v42, v72);
  v77 = &type metadata for Metric.Setup.PrimaryResidentWiFiInfosFetch;
  v78 = &off_283CE5B80;
  LOBYTE(v75) = v34;
  BYTE1(v75) = v35;
  BYTE2(v75) = v36;
  BYTE3(v75) = v37;
  BYTE4(v75) = v38;
  BYTE5(v75) = v39;
  BYTE6(v75) = v40;
  v76 = v41;
  v45 = v60;
  v46 = objc_allocWithZone(v60);
  v47 = &v46[OBJC_IVAR____TtCO13HomeKitDaemon6Metric15LogEventAdaptor_name];
  *v47 = 0xD00000000000002DLL;
  *(v47 + 1) = v58;
  sub_22957F1C4(&v75, &v46[OBJC_IVAR____TtCO13HomeKitDaemon6Metric15LogEventAdaptor_event]);
  *&v46[OBJC_IVAR____TtCO13HomeKitDaemon6Metric15LogEventAdaptor_coreAnalyticsEventOptions] = 2;
  v48 = sub_22A4DB77C();
  v73.receiver = v46;
  v73.super_class = v45;
  v49 = objc_msgSendSuper2(&v73, sel_initWithHomeUUID_, v48);

  v53(v43, v44);
  __swift_destroy_boxed_opaque_existential_0(&v75);
  if (v71)
  {
    v50 = sub_22A4DB3DC();
  }

  else
  {
    v50 = 0;
  }

  [v69 submitLogEvent:v49 error:v50];
}

uint64_t sub_22972B420()
{
  v1 = OBJC_IVAR____TtCE13HomeKitDaemonCSo7HMDHomeP33_73012FE8AC56C4A293325838CCBABF8F35HomeWiFiInfoFetchMetricEventTracker_homeUUID;
  v2 = sub_22A4DB7DC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t _s35HomeWiFiInfoFetchMetricEventTrackerCMa(uint64_t a1)
{
  result = qword_27D8802A8;
  if (!qword_27D8802A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22972B534(uint64_t a1)
{
  result = sub_22A4DB7DC();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_22972B618(id a1)
{
  ObjectType = swift_getObjectType();
  v4 = sub_22A4DB7DC();
  v113 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v112 = &v106 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = sub_22A4DD07C();
  v6 = *(v118 - 1);
  v7 = MEMORY[0x28223BE20](v118);
  v9 = &v106 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v106 - v11;
  v13 = MEMORY[0x28223BE20](v10);
  v117 = &v106 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v116 = &v106 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v111 = &v106 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v115 = &v106 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v114 = &v106 - v22;
  MEMORY[0x28223BE20](v21);
  v24 = &v106 - v23;
  v25 = [a1 messagePayload];
  if (!v25)
  {
    goto LABEL_29;
  }

  v26 = v25;
  v107 = v4;
  v108 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
  v27 = sub_22A4DD49C();

  v28 = sub_22A4DD5EC();
  if (!*(v27 + 16))
  {
LABEL_26:

LABEL_29:
    v33 = v6;
    goto LABEL_30;
  }

  v109 = a1;
  v110 = ObjectType;
  v30 = sub_229543DBC(v28, v29);
  v32 = v31;

  if ((v32 & 1) == 0)
  {

    goto LABEL_28;
  }

  sub_2295404B0(*(v27 + 56) + 32 * v30, aBlock);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_28:
    a1 = v109;
    goto LABEL_29;
  }

  a1 = v109;
  v33 = v6;
  if (v120 != 1)
  {
LABEL_30:
    sub_2297A46D4();
    v56 = sub_22A4DD05C();
    v57 = sub_22A4DDCEC();
    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      *v58 = 0;
      _os_log_impl(&dword_229538000, v56, v57, "Invalid target specified in message payload", v58, 2u);
      MEMORY[0x22AAD4E50](v58, -1, -1);
    }

    (v33)[1](v9, v118);
    v59 = [objc_opt_self() hmErrorWithCode_];
LABEL_33:
    v60 = v59;
    v61 = sub_22A4DB3DC();

    [a1 respondWithError_];
    goto LABEL_34;
  }

  v34 = [v109 messagePayload];
  if (!v34)
  {
LABEL_38:
    sub_2297A46D4();
    v62 = sub_22A4DD05C();
    v63 = sub_22A4DDCEC();
    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      *v64 = 0;
      _os_log_impl(&dword_229538000, v62, v63, "No valid timeout specified in message payload", v64, 2u);
      MEMORY[0x22AAD4E50](v64, -1, -1);
    }

    (v6)[1](v12, v118);
    v59 = [objc_opt_self() hmErrorWithCode_];
    goto LABEL_33;
  }

  v35 = v34;
  v36 = sub_22A4DD49C();

  v37 = sub_22A4DD5EC();
  if (!*(v36 + 16))
  {

    goto LABEL_38;
  }

  v39 = sub_229543DBC(v37, v38);
  v41 = v40;

  if ((v41 & 1) == 0)
  {

    goto LABEL_37;
  }

  sub_2295404B0(*(v36 + 56) + 32 * v39, aBlock);

  sub_229562F68(0, &qword_281401770, 0x277CCABB0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_37:
    a1 = v109;
    goto LABEL_38;
  }

  v42 = v120;
  [v120 doubleValue];
  v44 = v109;
  if (v43 <= 0.0 || (v45 = v43, v43 < 2.22044605e-16))
  {
    v65 = v117;
    sub_2297A46D4();
    v66 = sub_22A4DD05C();
    v67 = sub_22A4DDCEC();
    v68 = os_log_type_enabled(v66, v67);
    v69 = v118;
    if (v68)
    {
      v70 = swift_slowAlloc();
      *v70 = 0;
      _os_log_impl(&dword_229538000, v66, v67, "Remote message timeout cannot be 0 or negative", v70, 2u);
      MEMORY[0x22AAD4E50](v70, -1, -1);
    }

    (v33)[1](v65, v69);
    v71 = [objc_opt_self() hmErrorWithCode_];
    v61 = sub_22A4DB3DC();

    [v44 respondWithError_];
    goto LABEL_34;
  }

  v117 = v42;
  sub_2297A46D4();
  v46 = sub_22A4DD05C();
  v47 = sub_22A4DDCCC();
  v48 = os_log_type_enabled(v46, v47);
  a1 = v118;
  if (v48)
  {
    v49 = swift_slowAlloc();
    *v49 = 134217984;
    *(v49 + 4) = v45;
    _os_log_impl(&dword_229538000, v46, v47, "Handling home network info fetch with timeout: %f", v49, 0xCu);
    MEMORY[0x22AAD4E50](v49, -1, -1);
  }

  v50 = v6[1];
  v50(v24, a1);
  v51 = [v108 appleMediaAccessories];
  sub_229562F68(0, &qword_281401920, off_278666038);
  v52 = sub_22A4DD83C();

  v106 = v50;
  if (!(v52 >> 62))
  {
    v53 = *((v52 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v53)
    {
      goto LABEL_16;
    }

LABEL_55:

    v101 = v116;
    sub_2297A46D4();
    v102 = sub_22A4DD05C();
    v103 = sub_22A4DDCEC();
    if (os_log_type_enabled(v102, v103))
    {
      v104 = swift_slowAlloc();
      *v104 = 0;
      _os_log_impl(&dword_229538000, v102, v103, "No accessory found for primary resident", v104, 2u);
      MEMORY[0x22AAD4E50](v104, -1, -1);
    }

    v106(v101, a1);
    v105 = [objc_opt_self() hmErrorWithCode_];
    v61 = sub_22A4DB3DC();
    [v109 respondWithError_];

    goto LABEL_34;
  }

LABEL_54:
  v53 = sub_22A4DE0EC();
  if (!v53)
  {
    goto LABEL_55;
  }

LABEL_16:
  v9 = 0;
  while (1)
  {
    if ((v52 & 0xC000000000000001) != 0)
    {
      v54 = MEMORY[0x22AAD13F0](v9, v52);
      v55 = (v9 + 1);
      if (__OFADD__(v9, 1))
      {
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }
    }

    else
    {
      if (v9 >= *((v52 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_54;
      }

      v54 = *(v52 + 8 * v9 + 32);
      v55 = (v9 + 1);
      if (__OFADD__(v9, 1))
      {
        goto LABEL_25;
      }
    }

    aBlock[0] = v54;
    v6 = v54;
    if (sub_22972C360(aBlock, v108))
    {
      break;
    }

    ++v9;
    if (v55 == v53)
    {
      goto LABEL_55;
    }
  }

  v72 = v114;
  sub_2297A46D4();
  v73 = sub_22A4DD05C();
  v74 = sub_22A4DDCCC();
  if (os_log_type_enabled(v73, v74))
  {
    v75 = swift_slowAlloc();
    *v75 = 0;
    _os_log_impl(&dword_229538000, v73, v74, "Checking primary resident device Rapport reachability", v75, 2u);
    MEMORY[0x22AAD4E50](v75, -1, -1);
  }

  v76 = v106;
  v106(v72, a1);
  v77 = [v108 homeManager];
  v78 = v107;
  v79 = v115;
  if (v77)
  {
    v80 = v77;
    sub_2297A46D4();
    v81 = sub_22A4DD05C();
    v82 = sub_22A4DDCCC();
    if (os_log_type_enabled(v81, v82))
    {
      v83 = swift_slowAlloc();
      *v83 = 0;
      _os_log_impl(&dword_229538000, v81, v82, "Performing remote fetch from the primary resident ...", v83, 2u);
      v84 = v83;
      v78 = v107;
      MEMORY[0x22AAD4E50](v84, -1, -1);
    }

    v76(v79, a1);
    v85 = v6;
    v86 = [v6 uuid];
    v87 = v112;
    sub_22A4DB79C();

    v88 = sub_22A4DB77C();
    (*(v113 + 8))(v87, v78);
    v89 = sub_22A4DD81C();
    v61 = sub_22A4DD81C();
    v90 = swift_allocObject();
    v92 = v108;
    v91 = v109;
    v90[2] = v108;
    v90[3] = v91;
    v90[4] = v110;
    aBlock[4] = sub_22972EA9C;
    aBlock[5] = v90;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_229582E94;
    aBlock[3] = &block_descriptor_26;
    v93 = _Block_copy(aBlock);
    v94 = v92;
    v95 = v91;

    [v80 fetchDiagnosticStateWithOptions:1 accessoryUUID:v88 additionalFetchKeys:v89 filteringKeyPaths:v61 remoteMessageTimeout:9 remoteMessageRestriction:v93 completion:v45];
    _Block_release(v93);
  }

  else
  {
    v96 = v111;
    sub_2297A46D4();
    v97 = sub_22A4DD05C();
    v98 = sub_22A4DDCEC();
    if (os_log_type_enabled(v97, v98))
    {
      v99 = swift_slowAlloc();
      *v99 = 0;
      _os_log_impl(&dword_229538000, v97, v98, "homeManager is nil", v99, 2u);
      MEMORY[0x22AAD4E50](v99, -1, -1);
    }

    v76(v96, a1);
    v100 = [objc_opt_self() hmErrorWithCode_];
    v61 = sub_22A4DB3DC();

    [v109 respondWithError_];
  }

LABEL_34:
}

uint64_t sub_22972C360(void **a1, void *a2)
{
  v53 = a2;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87DBA0, &qword_22A57A158);
  MEMORY[0x28223BE20](v52);
  v54 = v48 - v4;
  v5 = sub_22A4DB7DC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D2A0, &unk_22A578BD0);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v12 = v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = v48 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v55 = v48 - v17;
  MEMORY[0x28223BE20](v16);
  v19 = v48 - v18;
  v20 = *a1;
  v21 = [v20 idsIdentifier];
  if (v21)
  {
    v22 = v21;
    v50 = v12;
    v51 = v2;
    sub_22A4DB79C();

    v23 = v6[4];
    v48[1] = v6 + 4;
    v49 = v23;
    v23(v19, v8, v5);
    v24 = v6[7];
    v24(v19, 0, 1, v5);
    sub_22953EAE4(v19, &unk_27D87D2A0, &unk_22A578BD0);
    v25 = v53;
    v26 = [v53 primaryResident];
    if (v26)
    {
      v48[0] = v8;

      v27 = [v20 idsIdentifier];
      if (v27)
      {
        v28 = v15;
        v29 = v55;
        v30 = v27;
        sub_22A4DB79C();

        v31 = v29;
        v15 = v28;
        v32 = 0;
      }

      else
      {
        v32 = 1;
        v31 = v55;
      }

      v34 = 1;
      v24(v31, v32, 1, v5);
      v35 = [v25 primaryResident];
      if (v35)
      {
        v36 = v35;
        v37 = [v35 messageAddress];

        if (v37)
        {
          v38 = [v37 idsIdentifier];

          sub_22A4DB79C();
          v34 = 0;
        }

        else
        {
          v34 = 1;
        }
      }

      v24(v15, v34, 1, v5);
      v39 = *(v52 + 48);
      v40 = v55;
      v41 = v54;
      sub_2295F2274(v55, v54);
      sub_2295F2274(v15, v41 + v39);
      v42 = v6[6];
      if (v42(v41, 1, v5) == 1)
      {
        sub_22953EAE4(v15, &unk_27D87D2A0, &unk_22A578BD0);
        v43 = v54;
        sub_22953EAE4(v40, &unk_27D87D2A0, &unk_22A578BD0);
        if (v42(v43 + v39, 1, v5) == 1)
        {
          sub_22953EAE4(v43, &unk_27D87D2A0, &unk_22A578BD0);
          v33 = 1;
          return v33 & 1;
        }
      }

      else
      {
        v44 = v50;
        sub_2295F2274(v41, v50);
        if (v42(v41 + v39, 1, v5) != 1)
        {
          v45 = v48[0];
          v49(v48[0], v41 + v39, v5);
          sub_22953E218(&qword_281403870, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
          v33 = sub_22A4DD58C();
          v46 = v6[1];
          v46(v45, v5);
          sub_22953EAE4(v15, &unk_27D87D2A0, &unk_22A578BD0);
          sub_22953EAE4(v55, &unk_27D87D2A0, &unk_22A578BD0);
          v46(v44, v5);
          sub_22953EAE4(v41, &unk_27D87D2A0, &unk_22A578BD0);
          return v33 & 1;
        }

        sub_22953EAE4(v15, &unk_27D87D2A0, &unk_22A578BD0);
        v43 = v54;
        sub_22953EAE4(v55, &unk_27D87D2A0, &unk_22A578BD0);
        (v6[1])(v44, v5);
      }

      sub_22953EAE4(v43, &qword_27D87DBA0, &qword_22A57A158);
      v33 = 0;
      return v33 & 1;
    }

    v33 = 0;
  }

  else
  {
    (v6[7])(v19, 1, 1, v5);
    sub_22953EAE4(v19, &unk_27D87D2A0, &unk_22A578BD0);
    v33 = 0;
  }

  return v33 & 1;
}

uint64_t sub_22972C988(void *a1, void *a2, void *a3, void *a4, uint64_t a5)
{
  v36 = a2;
  v37 = a5;
  v39 = sub_22A4DD26C();
  v42 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v38 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22A4DD29C();
  v40 = *(v9 - 8);
  v41 = v9;
  MEMORY[0x28223BE20](v9);
  v34 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E408, &unk_22A581160);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v15 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = &v34 - v16;
  v35 = [a3 workQueue];
  aBlock[0] = a1;
  v18 = a1;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8802C0, &qword_22A57C008);
  MEMORY[0x22AACEC10](aBlock, v19);
  (*(v12 + 16))(v15, v17, v11);
  v20 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v21 = (v13 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = swift_allocObject();
  *(v22 + 16) = a3;
  *(v22 + 24) = a4;
  (*(v12 + 32))(v22 + v20, v15, v11);
  v24 = v36;
  v23 = v37;
  *(v22 + v21) = v36;
  *(v22 + ((v21 + 15) & 0xFFFFFFFFFFFFFFF8)) = v23;
  aBlock[4] = sub_22972EAA8;
  aBlock[5] = v22;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22953E640;
  aBlock[3] = &block_descriptor_33_0;
  v25 = _Block_copy(aBlock);
  v26 = a3;
  v27 = a4;
  v28 = v24;
  v29 = v34;
  sub_22A4DD28C();
  v43 = MEMORY[0x277D84F90];
  sub_22953E218(&qword_281401CF0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87CEA0, &unk_22A577A40);
  sub_22953E5DC();
  v31 = v38;
  v30 = v39;
  sub_22A4DE03C();
  v32 = v35;
  MEMORY[0x22AAD0F80](0, v29, v31, v25);
  _Block_release(v25);

  (*(v42 + 8))(v31, v30);
  (*(v40 + 8))(v29, v41);
  (*(v12 + 8))(v17, v11);
}

void sub_22972CDC0(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = sub_22A4DD07C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2297A46D4();
  v10 = sub_22A4DD05C();
  v11 = sub_22A4DDCCC();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_229538000, v10, v11, "Received response from the remote fetch", v12, 2u);
    MEMORY[0x22AAD4E50](v12, -1, -1);
  }

  (*(v7 + 8))(v9, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E408, &unk_22A581160);
  sub_22A4DBA4C();
  v13 = v15[3];
  if (a4)
  {
    v15[2] = a4;
    v14 = a4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E520, &unk_22A579920);
    sub_229562F68(0, &qword_281401778, 0x277CCA9B8);
    if (swift_dynamicCast())
    {
      a4 = v15[1];
    }

    else
    {
      a4 = 0;
    }
  }

  sub_22972CFC4(a2, v13, a4);
}

void sub_22972CFC4(void *a1, void *a2, void *a3)
{
  ObjectType = swift_getObjectType();
  v8 = sub_22A4DD07C();
  v211 = *(v8 - 8);
  v212 = v8;
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v184 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v208 = &v184 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v210 = &v184 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v209 = &v184 - v17;
  MEMORY[0x28223BE20](v16);
  v19 = &v184 - v18;
  v20 = sub_22A4DD2FC();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = (&v184 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v23 = [v3 workQueue];
  (*(v21 + 104))(v23, *MEMORY[0x277D85200], v20);
  v24 = sub_22A4DD31C();
  v26 = *(v21 + 8);
  v25 = v21 + 8;
  v26(v23, v20);
  if ((v24 & 1) == 0)
  {
    __break(1u);
    goto LABEL_52;
  }

  if (a3)
  {
    v27 = a3;
    sub_2297A46D4();
    v28 = v27;
    v29 = sub_22A4DD05C();
    v30 = sub_22A4DDCEC();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      *v31 = 138412290;
      *(v31 + 4) = v28;
      *v32 = a3;
      v33 = v28;
      _os_log_impl(&dword_229538000, v29, v30, "Fetch from the primary resident resulting an error: %@", v31, 0xCu);
      sub_22953EAE4(v32, &qword_27D87D7D0, &unk_22A578D90);
      MEMORY[0x22AAD4E50](v32, -1, -1);
      MEMORY[0x22AAD4E50](v31, -1, -1);
    }

    (*(v211 + 1))(v19, v212);
    v34 = v28;
    v35 = sub_22A4DB3DC();

LABEL_33:
    [a1 respondWithError_];

    return;
  }

  if (!a2)
  {
LABEL_30:
    sub_2297A46D4();
    v53 = sub_22A4DD05C();
    v54 = sub_22A4DDCEC();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      *v55 = 0;
      _os_log_impl(&dword_229538000, v53, v54, "No network info or network service info included in fetched diagnostic info", v55, 2u);
      MEMORY[0x22AAD4E50](v55, -1, -1);
    }

    (*(v211 + 1))(v11, v212);
    v34 = [objc_opt_self() hmErrorWithCode_];
    v35 = sub_22A4DB3DC();
    goto LABEL_33;
  }

  v25 = a2;
  v36 = [v25 appleMediaAccessoryDiagnosticInfo];
  if (!v36 || (v37 = v36, v38 = [v36 networkInfos], v37, !v38) || (v214 = 0, sub_229562F68(0, &unk_27D8802D0, 0x277CD1718), sub_22A4DD82C(), v38, (v207 = v214) == 0))
  {
LABEL_29:

    goto LABEL_30;
  }

  v39 = [v25 appleMediaAccessoryDiagnosticInfo];
  if (!v39)
  {
LABEL_146:
    __break(1u);
LABEL_147:
    __break(1u);
    goto LABEL_148;
  }

  v40 = v39;
  v41 = [v39 networkServiceInfos];

  if (!v41 || (v214 = 0, sub_229562F68(0, &unk_27D87D7A0, 0x277CD1720), sub_22A4DD82C(), v41, (v206 = v214) == 0))
  {

    goto LABEL_29;
  }

  a3 = MEMORY[0x277D84F90];
  v214 = MEMORY[0x277D84F90];
  v24 = v207 & 0xFFFFFFFFFFFFFF8;
  if (v207 >> 62)
  {
    goto LABEL_56;
  }

  for (i = *((v207 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_22A4DE0EC())
  {
    v204 = ObjectType;
    v194 = a1;
    v199 = v25;
    if (!i)
    {
      break;
    }

    v203 = v24;
    v213 = a3;
    v24 = &v213;
    sub_229583A60(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
LABEL_142:
      __break(1u);
LABEL_143:
      __break(1u);
LABEL_144:
      __break(1u);
LABEL_145:
      __break(1u);
      goto LABEL_146;
    }

    v43 = 0;
    v44 = v213;
    v205 = v207 & 0xC000000000000001;
    while (1)
    {
      v45 = v43 + 1;
      if (__OFADD__(v43, 1))
      {
        break;
      }

      if (v205)
      {
        v46 = MEMORY[0x22AAD13F0](v43, v207);
      }

      else
      {
        if (v43 >= *(v203 + 16))
        {
          goto LABEL_54;
        }

        v46 = *(v207 + 8 * v43 + 32);
      }

      ObjectType = v46;
      v47 = [v46 ifaceName];
      if (!v47)
      {
        goto LABEL_144;
      }

      v24 = v47;
      a1 = sub_22A4DD5EC();
      v49 = v48;

      v213 = v44;
      v25 = v44[2];
      v50 = v44[3];
      v51 = (v25 + 1);
      if (v25 >= v50 >> 1)
      {
        v24 = &v213;
        sub_229583A60((v50 > 1), v25 + 1, 1);
        v51 = (v25 + 1);
        v44 = v213;
      }

      v44[2] = v51;
      v52 = &v44[3 * v25];
      v52[4] = a1;
      v52[5] = v49;
      v52[6] = ObjectType;
      ++v43;
      if (v45 == i)
      {
        v25 = v199;
        goto LABEL_35;
      }
    }

LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    ;
  }

  if (a3[2])
  {
LABEL_35:
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8802E0, &qword_22A581170);
    v56 = sub_22A4DE40C();
    ObjectType = v204;
  }

  else
  {
    v56 = MEMORY[0x277D84F98];
  }

  v213 = v56;

  v58 = 0;
  sub_22972E6F0(v57, 1, &v213, sub_229898AC8, sub_229894964);

  v202 = v213;
  v59 = v206 & 0xFFFFFFFFFFFFFF8;
  if (!(v206 >> 62))
  {
    v60 = *((v206 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v60)
    {
      goto LABEL_58;
    }

    goto LABEL_38;
  }

  v60 = sub_22A4DE0EC();
  if (v60)
  {
LABEL_38:
    v203 = v59;
    v201 = 0;
    v213 = a3;
    v24 = &v213;
    sub_229583A20(0, v60 & ~(v60 >> 63), 0);
    if (v60 < 0)
    {
      goto LABEL_143;
    }

    v61 = 0;
    a3 = v213;
    v205 = v206 & 0xC000000000000001;
    while (1)
    {
      v62 = v61 + 1;
      if (__OFADD__(v61, 1))
      {
        goto LABEL_53;
      }

      if (v205)
      {
        v63 = MEMORY[0x22AAD13F0](v61, v206);
      }

      else
      {
        if (v61 >= *(v203 + 16))
        {
          goto LABEL_55;
        }

        v63 = *(v206 + 8 * v61 + 32);
      }

      ObjectType = v63;
      v64 = [v63 ifaceName];
      if (!v64)
      {
        goto LABEL_145;
      }

      v24 = v64;
      v65 = sub_22A4DD5EC();
      a1 = v66;

      v213 = a3;
      v25 = a3[2];
      v67 = a3[3];
      if (v25 >= v67 >> 1)
      {
        v24 = &v213;
        sub_229583A20((v67 > 1), v25 + 1, 1);
        a3 = v213;
      }

      a3[2] = v25 + 1;
      v68 = &a3[3 * v25];
      v68[4] = v65;
      v68[5] = a1;
      v68[6] = ObjectType;
      ++v61;
      if (v62 == v60)
      {
        v25 = v199;
        v58 = v201;
        goto LABEL_59;
      }
    }
  }

LABEL_58:
  if (a3[2])
  {
LABEL_59:
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8820F0, &qword_22A581178);
    v69 = sub_22A4DE40C();
  }

  else
  {
    v69 = MEMORY[0x277D84F98];
  }

  v213 = v69;

  sub_22972E6F0(v70, 1, &v213, sub_229898AB4, sub_229894950);
  v71 = v210;
  if (!v58)
  {

    v72 = v25;
    v73 = v213;
    v74 = [v72 appleMediaAccessoryDiagnosticInfo];
    v196 = [v74 wifiInfo];

    v75 = v202 + 8;
    v76 = 1 << *(v202 + 32);
    v77 = -1;
    if (v76 < 64)
    {
      v77 = ~(-1 << v76);
    }

    v78 = v77 & v202[8];
    v79 = (v76 + 63) >> 6;
    v80 = v211 + 8;

    v81 = 0;
    v195 = MEMORY[0x277D84F90];
    *&v82 = 136315138;
    v200 = v82;
    v198 = v80;
    v201 = v73;
    v205 = v75;
    v203 = v79;
LABEL_64:
    v83 = v81;
    while (v78)
    {
      v81 = v83;
LABEL_73:
      v84 = __clz(__rbit64(v78));
      v78 &= v78 - 1;
      v85 = v84 | (v81 << 6);
      v86 = (v202[6] + 16 * v85);
      v88 = *v86;
      v87 = v86[1];
      v89 = *(v202[7] + 8 * v85);
      v90 = v73;
      v91 = v73[2];

      v211 = v89;
      if (v91 && (v92 = sub_229543DBC(v88, v87), (v93 & 1) != 0))
      {
        v197 = *(v90[7] + 8 * v92);
        v94 = [v211 macAddress];
        if (v94)
        {
          v73 = v90;
          v110 = v94;
          sub_22A4DD5EC();
          v195 = v111;

          v112 = v197;
          v113 = [v197 ipv4Addresses];
          if (v113)
          {
            v213 = 0;
            v114 = v113;
            sub_22A4DD82C();

            v115 = v213;
          }

          else
          {
            v115 = 0;
          }

          v116 = [v112 ipv6Addresses];
          if (v116)
          {
            v213 = 0;
            v117 = v116;
            sub_22A4DD82C();

            v118 = v213;
          }

          else
          {
            v118 = 0;
          }

          v119 = [v112 networkSignatureV4];
          if (v119)
          {
            v120 = v119;
            v188 = sub_22A4DD5EC();
            v193 = v121;
          }

          else
          {
            v188 = 0;
            v193 = 0;
          }

          v122 = [v112 networkSignatureV6];
          if (v122)
          {
            v123 = v122;
            v187 = sub_22A4DD5EC();
            v192 = v124;
          }

          else
          {
            v187 = 0;
            v192 = 0;
          }

          v125 = [v112 routerIPv4];
          if (v125)
          {
            v126 = v125;
            v186 = sub_22A4DD5EC();
            v191 = v127;
          }

          else
          {
            v186 = 0;
            v191 = 0;
          }

          v128 = [v112 routerIPv6];
          if (v128)
          {
            v129 = v128;
            v185 = sub_22A4DD5EC();
            v190 = v130;
          }

          else
          {
            v185 = 0;
            v190 = 0;
          }

          if (v196)
          {
            v184 = v118;
            v189 = v115;
            v131 = v196;
            v132 = [v131 macAddress];
            if (!v132)
            {
              goto LABEL_147;
            }

            v133 = v132;

            sub_22A4DD5EC();

            v134 = sub_22A4DD65C();
            v136 = v135;

            v137 = sub_22A4DD65C();
            v139 = v138;

            if (v134 == v137 && v136 == v139)
            {

              v118 = v184;
              goto LABEL_107;
            }

            v140 = sub_22A4DE60C();

            v118 = v184;
            if (v140)
            {
LABEL_107:
              v141 = [v131 networkSSID];
              if (v141)
              {
                v142 = v141;
                sub_22A4DD5EC();
                v144 = v143;

                v145 = [v131 requiresPassword];
                if (v144)
                {
                  v146 = sub_22A4DD5AC();

                  goto LABEL_112;
                }
              }

              else
              {
                v145 = [v131 requiresPassword];
              }

              v146 = 0;
LABEL_112:
              v147 = [objc_allocWithZone(MEMORY[0x277CD1AC8]) initWithSSID:v146 requiresPassword:v145];

              v195 = v147;
            }

            else
            {

              v195 = 0;
            }

            v115 = v189;
          }

          else
          {

            v195 = 0;
          }

          if (v115)
          {
            v189 = sub_22A4DD81C();
          }

          else
          {
            v189 = 0;
          }

          v148 = v193;
          if (v118)
          {
            v193 = sub_22A4DD81C();
          }

          else
          {
            v193 = 0;
          }

          v149 = v191;
          v150 = v190;
          if (v148)
          {
            v191 = sub_22A4DD5AC();
          }

          else
          {
            v191 = 0;
          }

          if (v192)
          {
            v190 = sub_22A4DD5AC();
          }

          else
          {
            v190 = 0;
          }

          if (v149)
          {
            v151 = sub_22A4DD5AC();
          }

          else
          {
            v151 = 0;
          }

          if (v150)
          {
            v152 = sub_22A4DD5AC();
          }

          else
          {
            v152 = 0;
          }

          v153 = objc_allocWithZone(MEMORY[0x277CD1AA0]);
          v154 = v195;
          v183 = v151;
          v155 = v189;
          v156 = v193;
          v157 = v191;
          v158 = v151;
          v159 = v190;
          v192 = [v153 initWithIpv4Addresses:v189 ipv6Addresses:v193 ipv4NetworkSignature:v191 ipv6NetworkSignature:v190 binaryIPv4NetworkSignature:0 binaryIPv6NetworkSignature:0 routerIPV4:v183 routerIPV6:v152 wiFiInfo:v195];

          v160 = v192;
          MEMORY[0x22AAD09E0]();
          if (*((v214 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v214 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_22A4DD85C();
          }

          sub_22A4DD87C();

          v195 = v214;
          v71 = v210;
          v80 = v198;
          v75 = v205;
          v79 = v203;
          goto LABEL_64;
        }

        v95 = v209;
        sub_2297A46D4();

        v96 = sub_22A4DD05C();
        v97 = sub_22A4DDCEC();

        if (os_log_type_enabled(v96, v97))
        {
          v98 = swift_slowAlloc();
          v99 = swift_slowAlloc();
          v213 = v99;
          *v98 = v200;
          v100 = sub_2295A3E30(v88, v87, &v213);

          *(v98 + 4) = v100;
          _os_log_impl(&dword_229538000, v96, v97, "No mac address for %s, skipping", v98, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v99);
          v101 = v99;
          v80 = v198;
          MEMORY[0x22AAD4E50](v101, -1, -1);
          v102 = v98;
          v71 = v210;
          MEMORY[0x22AAD4E50](v102, -1, -1);
        }

        else
        {
        }

        (*v80)(v95, v212);
      }

      else
      {
        sub_2297A46D4();

        v103 = sub_22A4DD05C();
        v104 = sub_22A4DDCEC();

        if (os_log_type_enabled(v103, v104))
        {
          v105 = swift_slowAlloc();
          v106 = swift_slowAlloc();
          v213 = v106;
          *v105 = v200;
          v107 = sub_2295A3E30(v88, v87, &v213);

          *(v105 + 4) = v107;
          _os_log_impl(&dword_229538000, v103, v104, "No network service info for %s, skipping", v105, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v106);
          v108 = v106;
          v80 = v198;
          MEMORY[0x22AAD4E50](v108, -1, -1);
          v109 = v105;
          v71 = v210;
          MEMORY[0x22AAD4E50](v109, -1, -1);
        }

        else
        {
        }

        (*v80)(v71, v212);
      }

      v83 = v81;
      v73 = v201;
      v75 = v205;
      v79 = v203;
    }

    while (1)
    {
      v81 = v83 + 1;
      if (__OFADD__(v83, 1))
      {
        __break(1u);
        goto LABEL_142;
      }

      if (v81 >= v79)
      {
        break;
      }

      v78 = v75[v81];
      ++v83;
      if (v78)
      {
        goto LABEL_73;
      }
    }

    v161 = v208;
    sub_2297A46D4();
    v162 = sub_22A4DD05C();
    v163 = sub_22A4DDCCC();
    if (os_log_type_enabled(v162, v163))
    {
      v164 = swift_slowAlloc();
      v165 = swift_slowAlloc();
      v213 = v165;
      *v164 = v200;
      v166 = sub_229562F68(0, &qword_27D8802F0, 0x277CD1AA0);

      v168 = MEMORY[0x22AAD0A20](v167, v166);
      v169 = v80;
      v171 = v170;

      v172 = sub_2295A3E30(v168, v171, &v213);

      *(v164 + 4) = v172;
      _os_log_impl(&dword_229538000, v162, v163, "Responding to the fetch request with %s", v164, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v165);
      MEMORY[0x22AAD4E50](v165, -1, -1);
      MEMORY[0x22AAD4E50](v164, -1, -1);

      (*v169)(v161, v212);
    }

    else
    {

      (*v80)(v161, v212);
    }

    v173 = v194;
    v174 = v199;
    sub_229562F68(0, &qword_27D8802F0, 0x277CD1AA0);

    v175 = sub_22A4DD81C();

    v176 = encodeRootObjectForXPC(v175);

    v177 = sub_22A4DB62C();
    v179 = v178;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D080, &qword_22A57CF50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_22A576180;
    *(inited + 32) = sub_22A4DD5EC();
    *(inited + 72) = MEMORY[0x277CC9318];
    *(inited + 40) = v181;
    *(inited + 48) = v177;
    *(inited + 56) = v179;
    sub_22956C148(v177, v179);
    sub_22956AC5C(inited);
    swift_setDeallocating();
    sub_22953EAE4(inited + 32, &unk_27D87DE50, &qword_22A577CD0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
    v182 = sub_22A4DD47C();

    [v173 respondWithPayload:v182 error:0];

    sub_2295798D4(v177, v179);

    return;
  }

LABEL_148:
  swift_unexpectedError();
  __break(1u);
}

void sub_22972E6F0(void *a1, char a2, void *a3, void (*a4)(void), void (*a5)(uint64_t, uint64_t))
{
  v42 = a1[2];
  if (!v42)
  {
    goto LABEL_21;
  }

  LOBYTE(v8) = a2;
  v10 = a1[4];
  v9 = a1[5];
  v11 = a1[6];
  v12 = *a3;

  v13 = v11;
  v14 = sub_229543DBC(v10, v9);
  v16 = v12[2];
  v17 = (v15 & 1) == 0;
  v18 = __OFADD__(v16, v17);
  v19 = v16 + v17;
  if (v18)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  LOBYTE(v20) = v15;
  if (v12[3] < v19)
  {
    a5(v19, v8 & 1);
    v14 = sub_229543DBC(v10, v9);
    if ((v20 & 1) == (v21 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    v14 = sub_22A4DE67C();
    __break(1u);
  }

  if (v8)
  {
LABEL_7:
    if (v20)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v24 = v14;
  a4();
  v14 = v24;
  if (v20)
  {
LABEL_8:
    v22 = swift_allocError();
    swift_willThrow();
    v23 = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E520, &unk_22A579920);
    if ((swift_dynamicCast() & 1) == 0)
    {

      return;
    }

    goto LABEL_26;
  }

LABEL_11:
  v25 = *a3;
  *(*a3 + 8 * (v14 >> 6) + 64) |= 1 << v14;
  v26 = (v25[6] + 16 * v14);
  *v26 = v10;
  v26[1] = v9;
  *(v25[7] + 8 * v14) = v13;
  v27 = v25[2];
  v18 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (v18)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    sub_22A4DE1FC();
    MEMORY[0x22AAD08C0](0xD00000000000001BLL, 0x800000022A590BE0);
    sub_22A4DE31C();
    MEMORY[0x22AAD08C0](39, 0xE100000000000000);
    sub_22A4DE39C();
    __break(1u);
    return;
  }

  v25[2] = v28;
  if (v42 != 1)
  {
    v8 = (a1 + 9);
    v20 = 1;
    while (v20 < a1[2])
    {
      v10 = *(v8 - 2);
      v9 = *(v8 - 1);
      v29 = *v8;
      v30 = *a3;

      v13 = v29;
      v31 = sub_229543DBC(v10, v9);
      v33 = v30[2];
      v34 = (v32 & 1) == 0;
      v18 = __OFADD__(v33, v34);
      v35 = v33 + v34;
      if (v18)
      {
        goto LABEL_23;
      }

      a4 = v32;
      if (v30[3] < v35)
      {
        a5(v35, 1);
        v31 = sub_229543DBC(v10, v9);
        if ((a4 & 1) != (v36 & 1))
        {
          goto LABEL_5;
        }
      }

      if (a4)
      {
        goto LABEL_8;
      }

      v37 = *a3;
      *(*a3 + 8 * (v31 >> 6) + 64) |= 1 << v31;
      v38 = (v37[6] + 16 * v31);
      *v38 = v10;
      v38[1] = v9;
      *(v37[7] + 8 * v31) = v13;
      v39 = v37[2];
      v18 = __OFADD__(v39, 1);
      v40 = v39 + 1;
      if (v18)
      {
        goto LABEL_24;
      }

      ++v20;
      v37[2] = v40;
      v8 += 3;
      if (v42 == v20)
      {
        goto LABEL_21;
      }
    }

    goto LABEL_25;
  }

LABEL_21:
}

void sub_22972EAA8()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E408, &unk_22A581160) - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);

  sub_22972CDC0(v4, v5, v0 + v2, v3);
}

void sub_22972EB5C()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E408, &unk_22A581160) - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = *(v0 + v3);
  v7 = *(v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8));

  sub_229729880(v4, v5, v0 + v2, v6, v7);
}

uint64_t sub_22972EC38()
{
  v0 = sub_22A4DD07C();
  __swift_allocate_value_buffer(v0, qword_27D8802F8);
  __swift_project_value_buffer(v0, qword_27D8802F8);
  sub_22A4DD5EC();
  return sub_22A4DD06C();
}

uint64_t sub_22972ECCC()
{
  v12 = v0;
  if (qword_27D87BA68 != -1)
  {
    swift_once();
  }

  v1 = sub_22A4DD07C();
  __swift_project_value_buffer(v1, qword_27D8802F8);

  v2 = sub_22A4DD05C();
  v3 = sub_22A4DDCCC();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v11 = v5;
    *v4 = 136315138;
    sub_22A4DB7DC();
    sub_229737E14(&qword_281403860, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v6 = sub_22A4DE5CC();
    v8 = sub_2295A3E30(v6, v7, &v11);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_229538000, v2, v3, "[%s] Configuring energy guidance server", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x22AAD4E50](v5, -1, -1);
    MEMORY[0x22AAD4E50](v4, -1, -1);
  }

  v9 = swift_task_alloc();
  *(v0 + 24) = v9;
  *v9 = v0;
  v9[1] = sub_22972EEE8;

  return sub_22972EFE0();
}

uint64_t sub_22972EEE8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_22972EFE0()
{
  *(v1 + 96) = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70);
  *(v1 + 104) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22972F07C, v0, 0);
}

uint64_t sub_22972F07C()
{
  v12 = v0;
  if (*(*(v0 + 96) + 128))
  {
    if (qword_27D87BA68 != -1)
    {
      swift_once();
    }

    v1 = sub_22A4DD07C();
    __swift_project_value_buffer(v1, qword_27D8802F8);

    v2 = sub_22A4DD05C();
    v3 = sub_22A4DDCEC();

    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v11 = v5;
      *v4 = 136315138;
      sub_22A4DB7DC();
      sub_229737E14(&qword_281403860, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v6 = sub_22A4DE5CC();
      v8 = sub_2295A3E30(v6, v7, &v11);

      *(v4 + 4) = v8;
      _os_log_impl(&dword_229538000, v2, v3, "[%s] Matter service is already configured", v4, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v5);
      MEMORY[0x22AAD4E50](v5, -1, -1);
      MEMORY[0x22AAD4E50](v4, -1, -1);
    }

    v9 = *(v0 + 8);

    return v9();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_22972F2B8, 0, 0);
  }
}

uint64_t sub_22972F2B8()
{
  *(v0 + 80) = &_s44AlvaradoGuidanceProviderServiceSpecificationVN;
  *(v0 + 88) = &off_283CE0330;
  _s7ServiceCMa();
  v1 = swift_allocObject();
  *(v0 + 112) = v1;
  __swift_mutable_project_boxed_opaque_existential_0(v0 + 56, &_s44AlvaradoGuidanceProviderServiceSpecificationVN);
  *(v0 + 40) = &_s44AlvaradoGuidanceProviderServiceSpecificationVN;
  *(v0 + 48) = &off_283CE0330;
  swift_defaultActor_initialize();
  *(v1 + 168) = 0;
  *(v1 + 176) = 0;
  *(v1 + 184) = 0;
  *(v1 + 192) = 0u;
  *(v1 + 208) = 0u;
  *(v1 + 112) = 0xD000000000000018;
  *(v1 + 120) = 0x800000022A591820;
  sub_229557188((v0 + 16), v1 + 128);
  __swift_destroy_boxed_opaque_existential_0((v0 + 56));
  v2 = swift_task_alloc();
  *(v0 + 120) = v2;
  *v2 = v0;
  v2[1] = sub_22972F3D8;

  return sub_229731338();
}

uint64_t sub_22972F3D8()
{
  v1 = *(*v0 + 112);

  return MEMORY[0x2822009F8](sub_22972F4E8, v1, 0);
}

uint64_t sub_22972F4E8()
{
  sub_2297316E0(*(v0 + 112), *(v0 + 96));
  v1 = *(v0 + 96);

  return MEMORY[0x2822009F8](sub_22972F58C, v1, 0);
}

uint64_t sub_22972F58C()
{
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[12];
  *(v3 + 128) = v1;

  v4 = sub_22A4DD9DC();
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  v5 = swift_allocObject();
  v5[2] = 0;
  v5[3] = 0;
  v5[4] = v3;
  v5[5] = v1;

  sub_229568A2C(0, 0, v2, &unk_22A5812D8, v5);

  sub_22953EAE4(v2, &unk_27D87D8F0, &qword_22A578D70);

  v6 = v0[1];

  return v6();
}

uint64_t sub_22972F6F0()
{
  v21 = v0;
  if (qword_27D87BA68 != -1)
  {
    swift_once();
  }

  v1 = sub_22A4DD07C();
  __swift_project_value_buffer(v1, qword_27D8802F8);

  v2 = sub_22A4DD05C();
  v3 = sub_22A4DDCCC();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v20 = v5;
    *v4 = 136315138;
    sub_22A4DB7DC();
    sub_229737E14(&qword_281403860, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v6 = sub_22A4DE5CC();
    v8 = sub_2295A3E30(v6, v7, &v20);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_229538000, v2, v3, "[%s] Unconfiguring energy guidance server", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x22AAD4E50](v5, -1, -1);
    MEMORY[0x22AAD4E50](v4, -1, -1);
  }

  v9 = v0[5];
  v10 = OBJC_IVAR____TtC13HomeKitDaemon29DefaultEnergyGuidanceServerV2_notificationHandlerTasks;
  swift_beginAccess();
  v11 = *(*(v9 + v10) + 16);
  if (v11)
  {

    v12 = 32;
    do
    {

      sub_22A4DDA7C();

      v12 += 8;
      --v11;
    }

    while (v11);
  }

  v13 = v0[5];
  *(v9 + v10) = MEMORY[0x277D84F90];

  v14 = OBJC_IVAR____TtC13HomeKitDaemon29DefaultEnergyGuidanceServerV2_guidancePublisherTask;
  v0[6] = OBJC_IVAR____TtC13HomeKitDaemon29DefaultEnergyGuidanceServerV2_guidancePublisherTask;
  v15 = *(v13 + v14);
  v0[7] = v15;
  if (v15)
  {

    sub_22A4DDA7C();
    v16 = swift_task_alloc();
    v0[8] = v16;
    *v16 = v0;
    v16[1] = sub_22972FA7C;

    return MEMORY[0x282200460]();
  }

  else
  {
    __swift_project_boxed_opaque_existential_0((v0[5] + OBJC_IVAR____TtC13HomeKitDaemon29DefaultEnergyGuidanceServerV2_guidancePublisherFactory), *(v0[5] + OBJC_IVAR____TtC13HomeKitDaemon29DefaultEnergyGuidanceServerV2_guidancePublisherFactory + 24));
    v17 = off_283CE3F68[0];
    type metadata accessor for GuidancePublisherFactory();
    v17();
    v18 = v0[1];

    return v18();
  }
}

uint64_t sub_22972FA7C()
{
  v1 = *(*v0 + 40);

  return MEMORY[0x2822009F8](sub_22972FB8C, v1, 0);
}

uint64_t sub_22972FB8C()
{
  v1 = v0[6];
  v2 = v0[5];

  *(v2 + v1) = 0;

  __swift_project_boxed_opaque_existential_0((v0[5] + OBJC_IVAR____TtC13HomeKitDaemon29DefaultEnergyGuidanceServerV2_guidancePublisherFactory), *(v0[5] + OBJC_IVAR____TtC13HomeKitDaemon29DefaultEnergyGuidanceServerV2_guidancePublisherFactory + 24));
  v3 = off_283CE3F68[0];
  type metadata accessor for GuidancePublisherFactory();
  v3();
  v4 = v0[1];

  return v4();
}

uint64_t sub_22972FC48()
{

  swift_unknownObjectRelease();
  v1 = OBJC_IVAR____TtC13HomeKitDaemon29DefaultEnergyGuidanceServerV2_homeSPIClientIdentifier;
  v2 = sub_22A4DB7DC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC13HomeKitDaemon29DefaultEnergyGuidanceServerV2_guidancePublisherFactory));

  MEMORY[0x22AAD4F90](v0 + OBJC_IVAR____TtC13HomeKitDaemon29DefaultEnergyGuidanceServerV2_home);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_22972FD10()
{
  sub_22972FC48();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_22972FD64(uint64_t a1)
{
  result = sub_22A4DB7DC();
  if (v2 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_22972FE58(uint64_t a1, uint64_t a2)
{
  v2[2] = a2;
  v4 = sub_22A4DC6EC();
  v2[3] = v4;
  v2[4] = *(v4 - 8);
  v2[5] = swift_task_alloc();
  v5 = sub_22A4DC56C();
  v2[6] = v5;
  v2[7] = *(v5 - 8);
  v2[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22972FF78, a2, 0);
}

uint64_t sub_22972FF78()
{
  v52 = v0;
  if (qword_27D87BA68 != -1)
  {
    goto LABEL_34;
  }

  while (1)
  {
    v1 = sub_22A4DD07C();
    __swift_project_value_buffer(v1, qword_27D8802F8);

    v2 = sub_22A4DD05C();
    v3 = sub_22A4DDCCC();

    v50 = v0;
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v51 = v5;
      *v4 = 136315138;
      sub_22A4DB7DC();
      sub_229737E14(&qword_281403860, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v6 = sub_22A4DE5CC();
      v8 = sub_2295A3E30(v6, v7, &v51);

      *(v4 + 4) = v8;
      _os_log_impl(&dword_229538000, v2, v3, "[%s] Starting energy guidance server", v4, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v5);
      MEMORY[0x22AAD4E50](v5, -1, -1);
      MEMORY[0x22AAD4E50](v4, -1, -1);
    }

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v10 = Strong;
      v11 = sub_2297308F4();
    }

    else
    {
      v11 = MEMORY[0x277D84F90];
    }

    v12 = sub_22A4DD05C();
    v13 = sub_22A4DDCCC();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v51 = v15;
      *v14 = 136315394;
      sub_22A4DB7DC();
      sub_229737E14(&qword_281403860, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v16 = sub_22A4DE5CC();
      v18 = sub_2295A3E30(v16, v17, &v51);

      *(v14 + 4) = v18;
      *(v14 + 12) = 2080;
      v19 = sub_229690ADC();
      v20 = MEMORY[0x22AAD0A20](v11, v19);
      v22 = sub_2295A3E30(v20, v21, &v51);

      *(v14 + 14) = v22;
      _os_log_impl(&dword_229538000, v12, v13, "[%s] Adding access for accessories: %s", v14, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v15, -1, -1);
      MEMORY[0x22AAD4E50](v14, -1, -1);
    }

    v23 = *(v0[2] + 128);
    v0[9] = v23;
    if (!v23)
    {

      v40 = swift_task_alloc();
      v0[12] = v40;
      *v40 = v0;
      v40[1] = sub_2297307C4;

      return sub_229730A90();
    }

    v24 = v11 >> 62 ? sub_22A4DE0EC() : *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (!v24)
    {
      break;
    }

    v25 = 0;
    v48 = v11 & 0xFFFFFFFFFFFFFF8;
    v49 = v11 & 0xC000000000000001;
    v44 = (v0[4] + 32);
    v43 = *MEMORY[0x277D17190];
    v45 = v0[7];
    v26 = MEMORY[0x277D84F90];
    v46 = v24;
    v47 = v11;
    while (1)
    {
      if (v49)
      {
        v27 = MEMORY[0x22AAD13F0](v25, v11);
      }

      else
      {
        if (v25 >= *(v48 + 16))
        {
          goto LABEL_33;
        }

        v27 = *(v11 + 8 * v25 + 32);
      }

      v28 = v27;
      v29 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        break;
      }

      v30 = v0[8];
      v32 = v0[5];
      v31 = v0[6];
      v33 = v0[3];
      v34 = [v27 matterNodeID];
      [v34 unsignedLongLongValue];

      sub_22A4DC6DC();
      v35 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D880350, &qword_22A581330) + 48);
      (*v44)(v30, v32, v33);
      *(v30 + v35) = 1;
      (*(v45 + 104))(v30, v43, v31);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v26 = sub_22958B7AC(0, v26[2] + 1, 1, v26);
      }

      v11 = v47;
      v37 = v26[2];
      v36 = v26[3];
      v0 = v50;
      if (v37 >= v36 >> 1)
      {
        v26 = sub_22958B7AC((v36 > 1), v37 + 1, 1, v26);
      }

      v38 = v50[8];
      v39 = v50[6];
      v26[2] = v37 + 1;
      (*(v45 + 32))(v26 + ((*(v45 + 80) + 32) & ~*(v45 + 80)) + *(v45 + 72) * v37, v38, v39);
      ++v25;
      if (v29 == v46)
      {
        goto LABEL_29;
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    swift_once();
  }

  v26 = MEMORY[0x277D84F90];
LABEL_29:
  v0[10] = v26;

  v42 = swift_task_alloc();
  v0[11] = v42;
  *v42 = v0;
  v42[1] = sub_229730644;

  return sub_2297463B0(v26);
}

uint64_t sub_229730644()
{
  v1 = *v0;
  v2 = *v0;

  v3 = swift_task_alloc();
  *(v1 + 96) = v3;
  *v3 = v2;
  v3[1] = sub_2297307C4;

  return sub_229730A90();
}

uint64_t sub_2297307C4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_2297308F4()
{
  v1 = [v0 hapAccessories];
  sub_229690ADC();
  v2 = sub_22A4DD83C();

  v12 = MEMORY[0x277D84F90];
  if (v2 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_22A4DE0EC())
  {
    v4 = 0;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x22AAD13F0](v4, v2);
      }

      else
      {
        if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v5 = *(v2 + 8 * v4 + 32);
      }

      v6 = v5;
      v7 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      v8 = [v5 supportsCleanEnergyAutomation];
      v9 = [v8 BOOLValue];

      if (v9)
      {
        sub_22A4DE27C();
        sub_22A4DE2AC();
        sub_22A4DE2BC();
        sub_22A4DE28C();
      }

      else
      {
      }

      ++v4;
      if (v7 == i)
      {
        v10 = v12;
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

  v10 = MEMORY[0x277D84F90];
LABEL_18:

  return v10;
}

uint64_t sub_229730A90()
{
  v1[2] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70);
  v1[3] = swift_task_alloc();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D880358, &qword_22A581340);
  v1[4] = v2;
  v3 = *(v2 - 8);
  v1[5] = v3;
  v1[6] = *(v3 + 64);
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_229730BA8, v0, 0);
}

uint64_t sub_229730BA8()
{
  v36 = v0;
  v1 = v0[2];
  if (*(v1 + OBJC_IVAR____TtC13HomeKitDaemon29DefaultEnergyGuidanceServerV2_guidancePublisherTask) || *(v1 + OBJC_IVAR____TtC13HomeKitDaemon29DefaultEnergyGuidanceServerV2_isConfiguringPublisher) == 1)
  {
    if (qword_27D87BA68 != -1)
    {
      swift_once();
    }

    v2 = sub_22A4DD07C();
    __swift_project_value_buffer(v2, qword_27D8802F8);

    v3 = sub_22A4DD05C();
    v4 = sub_22A4DDCEC();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v35 = v6;
      *v5 = 136315138;
      sub_22A4DB7DC();
      sub_229737E14(&qword_281403860, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v7 = sub_22A4DE5CC();
      v9 = sub_2295A3E30(v7, v8, &v35);

      *(v5 + 4) = v9;
      _os_log_impl(&dword_229538000, v3, v4, "[%s] EnergyGuidanceProvider is already set", v5, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v6);
      MEMORY[0x22AAD4E50](v6, -1, -1);
      MEMORY[0x22AAD4E50](v5, -1, -1);
    }
  }

  else
  {
    v33 = OBJC_IVAR____TtC13HomeKitDaemon29DefaultEnergyGuidanceServerV2_guidancePublisherTask;
    v34 = OBJC_IVAR____TtC13HomeKitDaemon29DefaultEnergyGuidanceServerV2_isConfiguringPublisher;
    v12 = v0[8];
    *(v1 + OBJC_IVAR____TtC13HomeKitDaemon29DefaultEnergyGuidanceServerV2_isConfiguringPublisher) = 1;
    __swift_project_boxed_opaque_existential_0((v1 + OBJC_IVAR____TtC13HomeKitDaemon29DefaultEnergyGuidanceServerV2_guidancePublisherFactory), *(v1 + OBJC_IVAR____TtC13HomeKitDaemon29DefaultEnergyGuidanceServerV2_guidancePublisherFactory + 24));
    sub_2297811D0((v1 + OBJC_IVAR____TtC13HomeKitDaemon29DefaultEnergyGuidanceServerV2_homeSPIClientIdentifier), v12);
    if (qword_27D87BA68 != -1)
    {
      swift_once();
    }

    v13 = sub_22A4DD07C();
    __swift_project_value_buffer(v13, qword_27D8802F8);

    v14 = sub_22A4DD05C();
    v15 = sub_22A4DDCCC();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v35 = v17;
      *v16 = 136315138;
      sub_22A4DB7DC();
      sub_229737E14(&qword_281403860, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v18 = sub_22A4DE5CC();
      v20 = sub_2295A3E30(v18, v19, &v35);

      *(v16 + 4) = v20;
      _os_log_impl(&dword_229538000, v14, v15, "[%s] Starting task to fetch guidance", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v17);
      MEMORY[0x22AAD4E50](v17, -1, -1);
      MEMORY[0x22AAD4E50](v16, -1, -1);
    }

    v22 = v0[7];
    v21 = v0[8];
    v23 = v0[5];
    v31 = v21;
    v32 = v0[6];
    v24 = v0[3];
    v25 = v0[4];
    sub_22A4DD98C();
    v26 = sub_22A4DD9DC();
    (*(*(v26 - 8) + 56))(v24, 0, 1, v26);
    v27 = swift_allocObject();
    swift_weakInit();
    (*(v23 + 16))(v22, v21, v25);
    v28 = (*(v23 + 80) + 32) & ~*(v23 + 80);
    v29 = swift_allocObject();
    *(v29 + 16) = 0;
    *(v29 + 24) = 0;
    (*(v23 + 32))(v29 + v28, v22, v25);
    *(v29 + ((v32 + v28 + 7) & 0xFFFFFFFFFFFFFFF8)) = v27;
    v30 = sub_229568A2C(0, 0, v24, &unk_22A581350, v29);
    sub_22953EAE4(v24, &unk_27D87D8F0, &qword_22A578D70);
    (*(v23 + 8))(v31, v25);
    *(v1 + v33) = v30;

    *(v1 + v34) = 0;
  }

  v10 = v0[1];

  return v10();
}

uint64_t sub_22973110C()
{
  v13 = v0;
  if (qword_27D87BA68 != -1)
  {
    swift_once();
  }

  v1 = sub_22A4DD07C();
  __swift_project_value_buffer(v1, qword_27D8802F8);

  v2 = sub_22A4DD05C();
  v3 = sub_22A4DDCCC();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v12 = v5;
    *v4 = 136315138;
    sub_22A4DB7DC();
    sub_229737E14(&qword_281403860, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v6 = sub_22A4DE5CC();
    v8 = sub_2295A3E30(v6, v7, &v12);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_229538000, v2, v3, "[%s] Stopping energy guidance server", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x22AAD4E50](v5, -1, -1);
    MEMORY[0x22AAD4E50](v4, -1, -1);
  }

  v9 = *(v0 + 16);
  if (*(v9 + OBJC_IVAR____TtC13HomeKitDaemon29DefaultEnergyGuidanceServerV2_guidancePublisherTask))
  {
    *(v9 + OBJC_IVAR____TtC13HomeKitDaemon29DefaultEnergyGuidanceServerV2_guidancePublisherTask) = 0;
    sub_22A4DDA7C();
  }

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_229731358()
{
  v1 = v0[5];
  v2 = OBJC_IVAR____TtC13HomeKitDaemon29DefaultEnergyGuidanceServerV2_notificationHandlerTasks;
  v3 = swift_beginAccess();
  if (*(*(v1 + v2) + 16))
  {
    __break(1u);
    return MEMORY[0x2822007B8](v3, v4, v5, v6, v7, v8, v9, v10);
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  v0[6] = Strong;
  if (Strong)
  {
    v12 = v0[5];
    v13 = Strong;
    v14 = [Strong notificationCenter];
    v15 = sub_22A4DDE5C();
    v0[7] = v15;

    v16 = sub_229737E14(&qword_27D880370, type metadata accessor for DefaultEnergyGuidanceServerV2, &unk_22A581288);
    v17 = swift_task_alloc();
    v0[8] = v17;
    v17[2] = v12;
    v17[3] = v15;
    v17[4] = v13;
    v3 = swift_task_alloc();
    v0[9] = v3;
    *v3 = v0;
    v3[1] = sub_229731550;
    v8 = sub_229737E5C;
    v7 = 0x800000022A58FDB0;
    v10 = MEMORY[0x277D84F78] + 8;
    v4 = v12;
    v5 = v16;
    v6 = 0xD00000000000001FLL;
    v9 = v17;

    return MEMORY[0x2822007B8](v3, v4, v5, v6, v7, v8, v9, v10);
  }

  v18 = v0[1];

  return v18();
}

uint64_t sub_229731550()
{
  v1 = *(*v0 + 40);

  return MEMORY[0x2822009F8](sub_22973167C, v1, 0);
}

uint64_t sub_22973167C()
{
  v1 = *(v0 + 48);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2297316E0(void *a1, uint64_t a2)
{
  v3 = swift_allocObject();
  swift_weakInit();
  v4 = a1[24];
  v5 = a1[25];
  a1[24] = &unk_22A5812E8;
  a1[25] = v3;

  sub_2295571A0(v4, v5);

  v6 = swift_allocObject();
  swift_weakInit();
  v8 = a1[26];
  v7 = a1[27];
  a1[26] = &unk_22A5812F8;
  a1[27] = v6;

  sub_2295571A0(v8, v7);
}

uint64_t sub_2297317EC()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[6] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[7] = v2;
    *v2 = v0;
    v2[1] = sub_229738B38;

    return sub_2297318D4();
  }

  else
  {
    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_2297318F4()
{
  v13 = v0;
  if (qword_27D87BA68 != -1)
  {
    swift_once();
  }

  v1 = sub_22A4DD07C();
  __swift_project_value_buffer(v1, qword_27D8802F8);

  v2 = sub_22A4DD05C();
  v3 = sub_22A4DDCCC();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v12 = v5;
    *v4 = 136315138;
    sub_22A4DB7DC();
    sub_229737E14(&qword_281403860, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v6 = sub_22A4DE5CC();
    v8 = sub_2295A3E30(v6, v7, &v12);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_229538000, v2, v3, "[%s] MatterService handling preparation", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x22AAD4E50](v5, -1, -1);
    MEMORY[0x22AAD4E50](v4, -1, -1);
  }

  v11 = (*MEMORY[0x277D0EF78] + MEMORY[0x277D0EF78]);
  v9 = swift_task_alloc();
  *(v0 + 24) = v9;
  *v9 = v0;
  v9[1] = sub_229731B4C;

  return v11();
}

void sub_229731B4C()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {
    v3 = *(v2 + 16);

    MEMORY[0x2822009F8](sub_229580884, v3, 0);
  }
}

uint64_t sub_229731C80(char a1, uint64_t a2)
{
  *(v2 + 40) = a2;
  *(v2 + 64) = a1;
  return MEMORY[0x2822009F8](sub_229731CA4, 0, 0);
}

uint64_t sub_229731CA4()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 48) = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    *(v0 + 56) = v2;
    *v2 = v0;
    v2[1] = sub_229731D94;
    v3 = *(v0 + 64);

    return sub_229731EA4(v3);
  }

  else
  {
    v5 = *(v0 + 8);

    return v5();
  }
}

uint64_t sub_229731D94()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_229731EA4(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 33) = a1;
  return MEMORY[0x2822009F8](sub_229731EC8, v1, 0);
}

uint64_t sub_229731EC8()
{
  v18 = v0;
  if (qword_27D87BA68 != -1)
  {
    swift_once();
  }

  v1 = sub_22A4DD07C();
  __swift_project_value_buffer(v1, qword_27D8802F8);

  v2 = sub_22A4DD05C();
  v3 = sub_22A4DDCCC();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 33);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v17 = v6;
    *v5 = 136315394;
    sub_22A4DB7DC();
    sub_229737E14(&qword_281403860, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v7 = sub_22A4DE5CC();
    v9 = sub_2295A3E30(v7, v8, &v17);

    *(v5 + 4) = v9;
    *(v5 + 12) = 2080;
    *(v0 + 32) = v4;
    v10 = sub_22A4DD64C();
    v12 = sub_2295A3E30(v10, v11, &v17);

    *(v5 + 14) = v12;
    _os_log_impl(&dword_229538000, v2, v3, "[%s] MatterService handling state update: %s", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v6, -1, -1);
    MEMORY[0x22AAD4E50](v5, -1, -1);
  }

  if (*(v0 + 33))
  {
    v13 = *(v0 + 8);

    return v13();
  }

  else
  {
    v16 = (*MEMORY[0x277D0EF78] + MEMORY[0x277D0EF78]);
    v15 = swift_task_alloc();
    *(v0 + 24) = v15;
    *v15 = v0;
    v15[1] = sub_2297321BC;

    return v16();
  }
}

void sub_2297321BC()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {
    v3 = *(v2 + 16);

    MEMORY[0x2822009F8](sub_229738B3C, v3, 0);
  }
}

uint64_t sub_2297322F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x2822009F8](sub_229732310, 0, 0);
}

uint64_t sub_229732310()
{
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_2297323AC;
  v2 = *(v0 + 24);

  return sub_229773D98(v2);
}

uint64_t sub_2297323AC()
{

  return MEMORY[0x2822009F8](sub_2297324A8, 0, 0);
}

uint64_t sub_2297324A8()
{
  v12 = v0;
  if (qword_27D87BA68 != -1)
  {
    swift_once();
  }

  v1 = sub_22A4DD07C();
  __swift_project_value_buffer(v1, qword_27D8802F8);

  v2 = sub_22A4DD05C();
  v3 = sub_22A4DDCCC();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v11 = v5;
    *v4 = 136315138;
    sub_22A4DB7DC();
    sub_229737E14(&qword_281403860, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v6 = sub_22A4DE5CC();
    v8 = sub_2295A3E30(v6, v7, &v11);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_229538000, v2, v3, "[%s] Configured Matter service", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x22AAD4E50](v5, -1, -1);
    MEMORY[0x22AAD4E50](v4, -1, -1);
  }

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_22973268C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[18] = a4;
  v5[19] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D880360, &qword_22A581358);
  v5[20] = v6;
  v5[21] = *(v6 - 8);
  v5[22] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_229732758, 0, 0);
}

uint64_t sub_229732758()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D880358, &qword_22A581340);
  sub_22A4DDA3C();
  swift_beginAccess();
  v1 = swift_task_alloc();
  *(v0 + 184) = v1;
  *v1 = v0;
  v1[1] = sub_229732840;
  v2 = *(v0 + 160);

  return MEMORY[0x2822003E8](v0 + 16, 0, 0, v2);
}

uint64_t sub_229732840()
{

  return MEMORY[0x2822009F8](sub_22973293C, 0, 0);
}

uint64_t sub_22973293C()
{
  if (*(v0 + 40))
  {
    sub_229557188((v0 + 16), v0 + 56);
    Strong = swift_weakLoadStrong();
    *(v0 + 192) = Strong;
    if (!Strong)
    {
      (*(*(v0 + 168) + 8))(*(v0 + 176), *(v0 + 160));
      goto LABEL_11;
    }

    v2 = Strong;
    if (sub_22A4DDAAC())
    {
      (*(*(v0 + 168) + 8))(*(v0 + 176), *(v0 + 160));

LABEL_11:
      __swift_destroy_boxed_opaque_existential_0((v0 + 56));
      goto LABEL_12;
    }

    *(v0 + 200) = *(v2 + 112);
    v5 = swift_task_alloc();
    *(v0 + 208) = v5;
    *(v5 + 16) = v2;
    *(v5 + 24) = v0 + 56;
    v8 = (*MEMORY[0x277D0EF78] + MEMORY[0x277D0EF78]);

    v6 = swift_task_alloc();
    *(v0 + 216) = v6;
    *v6 = v0;
    v6[1] = sub_229732B7C;

    return v8();
  }

  else
  {
    (*(*(v0 + 168) + 8))(*(v0 + 176), *(v0 + 160));
    if ((sub_22A4DDAAC() & 1) != 0 || (swift_beginAccess(), v3 = swift_weakLoadStrong(), (*(v0 + 224) = v3) == 0))
    {
LABEL_12:

      v4 = *(v0 + 8);

      return v4();
    }

    return MEMORY[0x2822009F8](sub_229732D78, v3, 0);
  }
}

void sub_229732B7C()
{

  if (v0)
  {
  }

  else
  {

    MEMORY[0x2822009F8](sub_229732CC0, 0, 0);
  }
}

uint64_t sub_229732CC0()
{

  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  v1 = swift_task_alloc();
  v0[23] = v1;
  *v1 = v0;
  v1[1] = sub_229732840;
  v2 = v0[20];

  return MEMORY[0x2822003E8](v0 + 2, 0, 0, v2);
}

uint64_t sub_229732D78()
{
  v1 = *(v0 + 224);
  if (*(v1 + OBJC_IVAR____TtC13HomeKitDaemon29DefaultEnergyGuidanceServerV2_guidancePublisherTask))
  {
    *(v1 + OBJC_IVAR____TtC13HomeKitDaemon29DefaultEnergyGuidanceServerV2_guidancePublisherTask) = 0;
    sub_22A4DDA7C();
  }

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_229732E28(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = __swift_project_boxed_opaque_existential_0(a3, a3[3]);
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_22953ED8C;

  return sub_2297369F0(v5, a2);
}

uint64_t sub_229732ED0(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8803E8, &qword_22A5815F0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_229738260();
  sub_22A4DE80C();
  v11 = 0;
  sub_22A4DC70C();
  sub_229737E14(&qword_27D8803F0, MEMORY[0x277D171F8], MEMORY[0x277D17200]);
  sub_22A4DE59C();
  if (!v1)
  {
    type metadata accessor for DefaultEnergyGuidanceServerV2.GuidanceForecastValueStruct(0);
    v10 = 1;
    sub_22A4DE59C();
    v9 = 2;
    sub_22A4DE56C();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_2297330C8()
{
  sub_22A4DE77C();
  sub_22A4DC70C();
  sub_229737E14(&qword_27D8803F8, MEMORY[0x277D171F8], MEMORY[0x277D17208]);
  sub_22A4DD4FC();
  v1 = type metadata accessor for DefaultEnergyGuidanceServerV2.GuidanceForecastValueStruct(0);
  sub_22A4DD4FC();
  v2 = *(v0 + *(v1 + 24));
  if (v2 == 0.0)
  {
    v2 = 0.0;
  }

  MEMORY[0x22AAD1980](*&v2);
  return sub_22A4DE7BC();
}

uint64_t sub_2297331AC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v30 = sub_22A4DC70C();
  v28 = *(v30 - 8);
  v4 = MEMORY[0x28223BE20](v30);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v29 = &v24 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8803D0, &qword_22A5815E8);
  v31 = *(v8 - 8);
  v32 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for DefaultEnergyGuidanceServerV2.GuidanceForecastValueStruct(0);
  MEMORY[0x28223BE20](v11);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_229738260();
  sub_22A4DE7FC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v25 = v13;
  v26 = a1;
  v24 = v11;
  v35 = 0;
  sub_229737E14(&qword_27D8803E0, MEMORY[0x277D171F8], MEMORY[0x277D17220]);
  v14 = v29;
  v15 = v30;
  sub_22A4DE4EC();
  v29 = *(v28 + 32);
  (v29)(v25, v14, v15);
  v34 = 1;
  v16 = v6;
  sub_22A4DE4EC();
  v18 = v24;
  v17 = v25;
  (v29)(&v25[*(v24 + 20)], v16, v15);
  v33 = 2;
  sub_22A4DE4BC();
  v19 = v17;
  v20 = v26;
  v22 = v21;
  (*(v31 + 8))(v10, v32);
  *(v19 + *(v18 + 24)) = v22;
  sub_2297382B4(v19, v27);
  __swift_destroy_boxed_opaque_existential_0(v20);
  return sub_229738318(v19);
}

unint64_t *sub_2297335CC@<X0>(unint64_t *result@<X0>, _BYTE *a2@<X8>)
{
  v2 = *result;
  if (*result >= 3)
  {
    LOBYTE(v2) = 3;
  }

  *a2 = v2;
  return result;
}

uint64_t sub_2297335E4()
{
  v1 = 0x656D6954646E65;
  if (*v0 != 1)
  {
    v1 = 0x65756C6176;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6D69547472617473;
  }
}

uint64_t sub_229733640@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_229738490(a2, a3);
  *a1 = result;
  return result;
}

unint64_t sub_229733674@<X0>(unint64_t result@<X0>, char *a2@<X8>)
{
  v2 = 3;
  if (result < 3)
  {
    v2 = result;
  }

  *a2 = v2;
  return result;
}

uint64_t sub_229733688(uint64_t a1)
{
  v2 = sub_229738260();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2297336C4(uint64_t a1)
{
  v2 = sub_229738260();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_229733734(uint64_t a1, uint64_t a2)
{
  sub_22A4DC70C();
  sub_229737E14(&qword_27D8803F8, MEMORY[0x277D171F8], MEMORY[0x277D17208]);
  sub_22A4DD4FC();
  sub_22A4DD4FC();
  v4 = *(v2 + *(a2 + 24));
  if (v4 == 0.0)
  {
    v4 = 0.0;
  }

  return MEMORY[0x22AAD1980](*&v4);
}

uint64_t sub_2297337F8(uint64_t a1, uint64_t a2)
{
  sub_22A4DE77C();
  sub_22A4DC70C();
  sub_229737E14(&qword_27D8803F8, MEMORY[0x277D171F8], MEMORY[0x277D17208]);
  sub_22A4DD4FC();
  sub_22A4DD4FC();
  v4 = *(v2 + *(a2 + 24));
  if (v4 == 0.0)
  {
    v4 = 0.0;
  }

  MEMORY[0x22AAD1980](*&v4);
  return sub_22A4DE7BC();
}

uint64_t sub_2297338D4(void *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v14 = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8803A0, &qword_22A5815D8);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v13 - v10;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_2297381B8();
  sub_22A4DE80C();
  v15 = a2;
  v16 = a3;
  v17 = 0;
  sub_22956C148(a2, a3);
  sub_22973820C();
  sub_22A4DE59C();
  sub_2295798D4(v15, v16);
  if (!v4)
  {
    v15 = v14;
    v17 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8803B8, &qword_22A5815E0);
    sub_229738864(&qword_27D8803C0, &qword_27D8803C8, &unk_22A581560, MEMORY[0x277D83948]);
    sub_22A4DE59C();
  }

  return (*(v9 + 8))(v11, v8);
}

void *sub_229733AD4@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

uint64_t sub_229733AF4()
{
  if (*v0)
  {
    return 0xD000000000000016;
  }

  else
  {
    return 0x44496C616E676973;
  }
}

uint64_t sub_229733B34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x44496C616E676973 && a2 == 0xE800000000000000;
  if (v6 || (sub_22A4DE60C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000016 && 0x800000022A594700 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_22A4DE60C();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_229733C18@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  if (result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (!result)
  {
    v2 = 0;
  }

  *a2 = v2;
  return result;
}

uint64_t sub_229733C34(uint64_t a1)
{
  v2 = sub_2297381B8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_229733C70(uint64_t a1)
{
  v2 = sub_2297381B8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_229733CAC@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_2297385AC(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
  }

  return result;
}

uint64_t sub_229733CFC()
{
  v1 = *(v0 + 16);
  sub_22A4DE77C();
  sub_22A4DB63C();
  sub_229735AE4(v3, v1);
  return sub_22A4DE7BC();
}

uint64_t sub_229733D60(uint64_t a1)
{
  v3 = *(v1 + 16);
  sub_22A4DB63C();

  return sub_229735AE4(a1, v3);
}

uint64_t sub_229733DA4(uint64_t a1)
{
  v2 = *(v1 + 16);
  sub_22A4DE77C();
  sub_22A4DB63C();
  sub_229735AE4(v4, v2);
  return sub_22A4DE7BC();
}

uint64_t sub_229733E04(_BOOL8 *a1, uint64_t *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  if (!sub_2297B7550(*a1, a1[1], *a2, a2[1]))
  {
    return 0;
  }

  return sub_2296AF240(v2, v3);
}

uint64_t sub_229733E68(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v31 = a3;
  v32 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D280, &unk_22A57C730);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v30 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v30 - v12;
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v14 = sub_22A4DD9DC();
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  v15 = swift_allocObject();
  swift_weakInit();
  (*(v7 + 16))(v10, a1, v6);
  v16 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v17 = (v8 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = (v17 + 15) & 0xFFFFFFFFFFFFFFF8;
  v30 = a2;
  v19 = swift_allocObject();
  *(v19 + 16) = 0;
  *(v19 + 24) = 0;
  (*(v7 + 32))(v19 + v16, v10, v6);
  v20 = v32;
  *(v19 + v17) = v31;
  *(v19 + v18) = v15;
  *(v19 + ((v18 + 15) & 0xFFFFFFFFFFFFFFF8)) = v20;

  v21 = v20;
  v22 = v30;
  v23 = sub_22957F3C0(0, 0, v13, &unk_22A581380, v19);
  v24 = OBJC_IVAR____TtC13HomeKitDaemon29DefaultEnergyGuidanceServerV2_notificationHandlerTasks;
  swift_beginAccess();
  v25 = *(v22 + v24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v22 + v24) = v25;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v25 = sub_22958A8B4(0, v25[2] + 1, 1, v25);
    *(v22 + v24) = v25;
  }

  v28 = v25[2];
  v27 = v25[3];
  if (v28 >= v27 >> 1)
  {
    v25 = sub_22958A8B4((v27 > 1), v28 + 1, 1, v25);
  }

  v25[2] = v28 + 1;
  v25[v28 + 4] = v23;
  *(v22 + v24) = v25;
  return swift_endAccess();
}

uint64_t sub_229734188(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[13] = a6;
  v7[14] = a7;
  v7[11] = a4;
  v7[12] = a5;
  v8 = sub_22A4DB21C();
  v7[15] = v8;
  v7[16] = *(v8 - 8);
  v7[17] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87DBB0, &unk_22A57CD50);
  v7[18] = swift_task_alloc();
  v9 = sub_22A4DDE4C();
  v7[19] = v9;
  v7[20] = *(v9 - 8);
  v7[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2297342E0, 0, 0);
}

uint64_t sub_2297342E0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D280, &unk_22A57C730);
  sub_22A4DD8FC();

  sub_22A4DDE3C();
  swift_beginAccess();
  v1 = sub_229737E14(&qword_27D87DBC0, MEMORY[0x277CC9D68], MEMORY[0x277CC9D70]);
  v2 = swift_task_alloc();
  v0[22] = v2;
  *v2 = v0;
  v2[1] = sub_229734410;
  v3 = v0[18];
  v4 = v0[19];

  return MEMORY[0x282200308](v3, v4, v1);
}

uint64_t sub_229734410()
{
  *(*v1 + 184) = v0;

  if (v0)
  {
    v2 = sub_2297349FC;
  }

  else
  {
    v2 = sub_229734524;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_229734540()
{
  v26 = v0;
  v1 = v0[18];
  v2 = v0[15];
  v3 = v0[16];
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
LABEL_10:
    (*(v0[20] + 8))(v0[21], v0[19]);

    v11 = v0[1];

    return v11();
  }

  (*(v3 + 32))(v0[17], v1, v2);
  if (qword_27D87BA68 != -1)
  {
    swift_once();
  }

  v4 = sub_22A4DD07C();
  v0[24] = __swift_project_value_buffer(v4, qword_27D8802F8);
  v5 = sub_22A4DD05C();
  v6 = sub_22A4DDCDC();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v25 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_2295A3E30(0xD00000000000001FLL, 0x800000022A58FDB0, &v25);
    _os_log_impl(&dword_229538000, v5, v6, "%s - Received supports clean energy automation updated notification", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x22AAD4E50](v8, -1, -1);
    MEMORY[0x22AAD4E50](v7, -1, -1);
  }

  Strong = swift_weakLoadStrong();
  v0[25] = Strong;
  if (!Strong)
  {
LABEL_9:
    (*(v0[16] + 8))(v0[17], v0[15]);
    goto LABEL_10;
  }

  v10 = Strong;
  if (sub_22A4DDAAC())
  {

    goto LABEL_9;
  }

  sub_22A4DB1FC();
  if (v0[5])
  {
    sub_229690ADC();
    if (swift_dynamicCast())
    {
      v0[26] = v0[10];

      return MEMORY[0x2822009F8](sub_229734A88, v10, 0);
    }
  }

  else
  {
    sub_22953EAE4((v0 + 2), &unk_27D87DE60, &unk_22A57A960);
  }

  v13 = sub_22A4DD05C();
  v14 = sub_22A4DDCCC();
  v15 = os_log_type_enabled(v13, v14);
  v17 = v0[16];
  v16 = v0[17];
  v18 = v0[15];
  if (v15)
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v25 = v20;
    *v19 = 136315138;
    *(v19 + 4) = sub_2295A3E30(0xD00000000000001FLL, 0x800000022A58FDB0, &v25);
    _os_log_impl(&dword_229538000, v13, v14, "%s - Matter service is not available", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v20);
    MEMORY[0x22AAD4E50](v20, -1, -1);
    MEMORY[0x22AAD4E50](v19, -1, -1);
  }

  else
  {
  }

  (*(v17 + 8))(v16, v18);
  v21 = sub_229737E14(&qword_27D87DBC0, MEMORY[0x277CC9D68], MEMORY[0x277CC9D70]);
  v22 = swift_task_alloc();
  v0[22] = v22;
  *v22 = v0;
  v22[1] = sub_229734410;
  v23 = v0[18];
  v24 = v0[19];

  return MEMORY[0x282200308](v23, v24, v21);
}

uint64_t sub_2297349FC()
{
  *(v0 + 72) = *(v0 + 184);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E520, &unk_22A579920);
  swift_dynamicCast();

  return swift_willThrowTypedImpl();
}

uint64_t sub_229734A88()
{
  *(v0 + 216) = *(*(v0 + 200) + 128);

  return MEMORY[0x2822009F8](sub_229734AFC, 0, 0);
}

uint64_t sub_229734AFC()
{
  v19 = v0;
  v1 = v0[27];
  if (v1)
  {
    v2 = swift_task_alloc();
    v0[28] = v2;
    *v2 = v0;
    v2[1] = sub_229734D88;
    v3 = v0[26];
    v4 = v0[14];

    return sub_229734FA8(v1, v3, v4);
  }

  else
  {

    v6 = sub_22A4DD05C();
    v7 = sub_22A4DDCCC();
    v8 = os_log_type_enabled(v6, v7);
    v10 = v0[16];
    v9 = v0[17];
    v11 = v0[15];
    if (v8)
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v18 = v13;
      *v12 = 136315138;
      *(v12 + 4) = sub_2295A3E30(0xD00000000000001FLL, 0x800000022A58FDB0, &v18);
      _os_log_impl(&dword_229538000, v6, v7, "%s - Matter service is not available", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v13);
      MEMORY[0x22AAD4E50](v13, -1, -1);
      MEMORY[0x22AAD4E50](v12, -1, -1);
    }

    else
    {
    }

    (*(v10 + 8))(v9, v11);
    v14 = sub_229737E14(&qword_27D87DBC0, MEMORY[0x277CC9D68], MEMORY[0x277CC9D70]);
    v15 = swift_task_alloc();
    v0[22] = v15;
    *v15 = v0;
    v15[1] = sub_229734410;
    v16 = v0[18];
    v17 = v0[19];

    return MEMORY[0x282200308](v16, v17, v14);
  }
}

uint64_t sub_229734D88()
{

  return MEMORY[0x2822009F8](sub_229734E84, 0, 0);
}

uint64_t sub_229734E84()
{
  v2 = *(v0 + 128);
  v1 = *(v0 + 136);
  v3 = *(v0 + 120);

  (*(v2 + 8))(v1, v3);
  v4 = sub_229737E14(&qword_27D87DBC0, MEMORY[0x277CC9D68], MEMORY[0x277CC9D70]);
  v5 = swift_task_alloc();
  *(v0 + 176) = v5;
  *v5 = v0;
  v5[1] = sub_229734410;
  v6 = *(v0 + 144);
  v7 = *(v0 + 152);

  return MEMORY[0x282200308](v6, v7, v4);
}

uint64_t sub_229734FA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[7] = a3;
  v4[8] = v3;
  v4[5] = a1;
  v4[6] = a2;
  v6 = sub_22A4DC6EC();
  v4[9] = v6;
  v4[10] = *(v6 - 8);
  v4[11] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D880378, &qword_22A581398);
  v4[12] = swift_task_alloc();
  v7 = sub_22A4DC56C();
  v4[13] = v7;
  v4[14] = *(v7 - 8);
  v4[15] = swift_task_alloc();
  v4[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_229735110, a1, 0);
}

uint64_t sub_229735110()
{
  v1 = v0[5];
  swift_beginAccess();
  if (*(v1 + 168))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    v2 = sub_22A4DC5CC();
    swift_unknownObjectRelease();
  }

  else
  {
    v2 = MEMORY[0x277D84F90];
  }

  v0[17] = v2;
  v3 = swift_task_alloc();
  v0[18] = v3;
  *v3 = v0;
  v3[1] = sub_229735214;

  return sub_229746624(v2);
}

uint64_t sub_229735214()
{
  v1 = *(*v0 + 64);

  return MEMORY[0x2822009F8](sub_229735340, v1, 0);
}

uint64_t sub_229735340()
{
  v1 = *(v0[8] + 128);
  v0[19] = v1;
  if (v1)
  {

    v2 = sub_2297308F4();
    v3 = v2;
    if (v2 >> 62)
    {
      goto LABEL_23;
    }

    for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_22A4DE0EC())
    {
      v5 = 0;
      v6 = v0[14];
      v39 = v3 & 0xFFFFFFFFFFFFFF8;
      v40 = v3 & 0xC000000000000001;
      v36 = (v0[10] + 32);
      v34 = (v6 + 56);
      v35 = (v6 + 104);
      v30 = v6;
      v32 = (v6 + 32);
      v33 = (v6 + 48);
      v41 = MEMORY[0x277D84F90];
      v31 = *MEMORY[0x277D17190];
      v37 = i;
      v38 = v3;
      while (1)
      {
        if (v40)
        {
          v8 = MEMORY[0x22AAD13F0](v5, v3);
        }

        else
        {
          if (v5 >= *(v39 + 16))
          {
            goto LABEL_22;
          }

          v8 = *(v3 + 8 * v5 + 32);
        }

        v9 = v8;
        v10 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        v12 = v0[12];
        v11 = v0[13];
        v13 = v0[11];
        v14 = v0[9];
        v15 = [v8 matterNodeID];
        [v15 unsignedLongLongValue];

        sub_22A4DC6DC();
        v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D880350, &qword_22A581330) + 48);
        (*v36)(v12, v13, v14);
        *(v12 + v16) = 1;
        (*v35)(v12, v31, v11);
        (*v34)(v12, 0, 1, v11);

        if ((*v33)(v12, 1, v11) == 1)
        {
          sub_22953EAE4(v0[12], &qword_27D880378, &qword_22A581398);
          v7 = v37;
          v3 = v38;
        }

        else
        {
          v17 = v0[15];
          v18 = v0[16];
          v19 = v0[13];
          v20 = *v32;
          (*v32)(v18, v0[12], v19);
          v20(v17, v18, v19);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v41 = sub_22958B7AC(0, v41[2] + 1, 1, v41);
          }

          v22 = v41[2];
          v21 = v41[3];
          v7 = v37;
          if (v22 >= v21 >> 1)
          {
            v41 = sub_22958B7AC((v21 > 1), v22 + 1, 1, v41);
          }

          v23 = v0[15];
          v24 = v0[13];
          v41[2] = v22 + 1;
          v20(v41 + ((*(v30 + 80) + 32) & ~*(v30 + 80)) + *(v30 + 72) * v22, v23, v24);
          v3 = v38;
        }

        ++v5;
        if (v10 == v7)
        {
          goto LABEL_25;
        }
      }

      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      ;
    }

    v41 = MEMORY[0x277D84F90];
LABEL_25:
    v0[20] = v41;

    v29 = swift_task_alloc();
    v0[21] = v29;
    *v29 = v0;
    v29[1] = sub_22973578C;

    return sub_2297463B0(v41);
  }

  else
  {
    v25 = swift_task_alloc();
    v0[22] = v25;
    *v25 = v0;
    v25[1] = sub_229735978;
    v27 = v0[5];
    v26 = v0[6];

    return sub_229777054(v27, v26);
  }
}

uint64_t sub_22973578C()
{
  v1 = *(*v0 + 64);

  return MEMORY[0x2822009F8](sub_2297358DC, v1, 0);
}

uint64_t sub_2297358DC()
{
  v1 = swift_task_alloc();
  v0[22] = v1;
  *v1 = v0;
  v1[1] = sub_229735978;
  v3 = v0[5];
  v2 = v0[6];

  return sub_229777054(v3, v2);
}

uint64_t sub_229735978()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_229735AE4(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for DefaultEnergyGuidanceServerV2.GuidanceForecastValueStruct(0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a2 + 16);
  result = MEMORY[0x22AAD1960](v7);
  if (v7)
  {
    v9 = *(v3 + 24);
    v10 = a2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v11 = *(v4 + 72);
    do
    {
      sub_2297382B4(v10, v6);
      sub_22A4DC70C();
      sub_229737E14(&qword_27D8803F8, MEMORY[0x277D171F8], MEMORY[0x277D17208]);
      sub_22A4DD4FC();
      sub_22A4DD4FC();
      v12 = *&v6[v9];
      if (v12 == 0.0)
      {
        v12 = 0.0;
      }

      MEMORY[0x22AAD1980](*&v12);
      result = sub_229738318(v6);
      v10 += v11;
      --v7;
    }

    while (v7);
  }

  return result;
}

uint64_t sub_229735C80(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_229586D38;

  return sub_2297322F0(a1, v4, v5, v7, v6);
}

uint64_t sub_229735D40()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_229586D38;

  return sub_2297317CC(v0);
}

uint64_t sub_229735DD0(char a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_229586D38;

  return sub_229731C80(a1, v1);
}

uint64_t sub_229735E68(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_229586D38;

  return sub_2297310F0(a1, v1);
}

uint64_t sub_229735F04(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_229586D38;

  return sub_22972FE58(a1, v1);
}

uint64_t sub_229735FA0(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D880358, &qword_22A581340) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_229569B30;

  return sub_22973268C(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_2297360CC(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_229569B30;

  return sub_229732E28(a1, v5, v4);
}

uint64_t sub_229736178(uint64_t a1)
{
  v2 = sub_22A4DB74C();
  MEMORY[0x28223BE20](v2 - 8);
  v86 = &v69 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = sub_22A4DB19C();
  v89 = *(v85 - 8);
  MEMORY[0x28223BE20](v85);
  v83 = &v69 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = sub_22A4DD41C();
  v5 = *(v84 - 8);
  v6 = MEMORY[0x28223BE20](v84);
  v82 = &v69 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v81 = &v69 - v8;
  v9 = type metadata accessor for DefaultEnergyGuidanceServerV2.GuidanceForecastValueStruct(0);
  v79 = *(v9 - 8);
  v80 = v9;
  v10 = MEMORY[0x28223BE20](v9);
  v87 = &v69 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v88 = &v69 - v12;
  v13 = sub_22A4DB7DC();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v69 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_22A4DD44C();
  v92 = v17;
  v93 = &off_283CE4900;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v91);
  (*(*(v17 - 8) + 32))(boxed_opaque_existential_1, a1, v17);
  __swift_project_boxed_opaque_existential_0(v91, v92);
  sub_22A4DD3AC();
  v19 = sub_22A4DB77C();
  (*(v14 + 8))(v16, v13);
  v20 = [v19 hmf_bytesAsData];
  v21 = sub_22A4DB62C();
  v23 = v22;

  __swift_project_boxed_opaque_existential_0(v91, v92);
  v24 = *(sub_22A4DD42C() + 16);

  __swift_project_boxed_opaque_existential_0(v91, v92);
  result = sub_22A4DD42C();
  v26 = result;
  v27 = *(result + 16);
  if (v24 < 0x19)
  {
    if (!v27)
    {

      goto LABEL_14;
    }

    v71 = v23;
    v72 = v21;
    v73 = v19;
    v90 = MEMORY[0x277D84F90];
    sub_229583AA0(0, v27, 0);
    v77 = *(v5 + 16);
    v51 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v70 = v26;
    v52 = (v26 + v51);
    v76 = *(v5 + 72);
    v53 = v90;
    v75 = (v89 + 8);
    v78 = v5 + 16;
    v74 = (v5 + 8);
    v54 = v87;
    do
    {
      v88 = v27;
      v89 = v53;
      v55 = v81;
      v87 = v52;
      v56 = v84;
      v57 = v77;
      v77(v81, v52, v84);
      v58 = v82;
      v57(v82, v55, v56);
      v59 = v83;
      sub_22A4DD40C();
      sub_22A4DB18C();
      v60 = *v75;
      v61 = v85;
      (*v75)(v59, v85);
      sub_22A4DC71C();
      sub_22A4DD40C();
      sub_22A4DB16C();
      v60(v59, v61);
      v62 = v80;
      sub_22A4DC71C();
      sub_22A4DD3FC();
      v64 = v63;
      v65 = *v74;
      v66 = v58;
      v53 = v89;
      (*v74)(v66, v56);
      v65(v55, v56);
      *(v54 + *(v62 + 24)) = v64;
      v90 = v53;
      v68 = *(v53 + 16);
      v67 = *(v53 + 24);
      if (v68 >= v67 >> 1)
      {
        sub_229583AA0((v67 > 1), v68 + 1, 1);
        v53 = v90;
      }

      *(v53 + 16) = v68 + 1;
      sub_229737DB0(v54, v53 + ((*(v79 + 80) + 32) & ~*(v79 + 80)) + *(v79 + 72) * v68);
      v52 = &v87[v76];
      v27 = (v88 - 1);
    }

    while (v88 != 1);
LABEL_13:

    v21 = v72;
LABEL_14:
    __swift_destroy_boxed_opaque_existential_0(v91);
    return v21;
  }

  if (v27 >= 0x18)
  {
    v71 = v23;
    v72 = v21;
    v73 = v19;
    v28 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v70 = result;
    v29 = (result + v28);
    v90 = MEMORY[0x277D84F90];
    v30 = 24;
    sub_229583AA0(0, 24, 0);
    v31 = v29;
    v33 = *(v5 + 16);
    v32 = v5 + 16;
    v77 = v33;
    v76 = *(v32 + 56);
    v34 = v90;
    v75 = (v89 + 8);
    v78 = v32;
    v74 = (v32 - 8);
    v35 = v88;
    v36 = v81;
    v37 = (v89 + 8);
    do
    {
      v87 = v31;
      v88 = v30;
      v89 = v34;
      v38 = v84;
      v39 = v77;
      (v77)(v36);
      v40 = v82;
      v39(v82, v36, v38);
      v41 = v83;
      sub_22A4DD40C();
      sub_22A4DB18C();
      v42 = *v37;
      v43 = v85;
      (*v37)(v41, v85);
      sub_22A4DC71C();
      sub_22A4DD40C();
      sub_22A4DB16C();
      v42(v41, v43);
      v44 = v80;
      sub_22A4DC71C();
      sub_22A4DD3FC();
      v46 = v45;
      v47 = *v74;
      v48 = v40;
      v34 = v89;
      (*v74)(v48, v38);
      v47(v36, v38);
      *(v35 + *(v44 + 24)) = v46;
      v90 = v34;
      v50 = *(v34 + 16);
      v49 = *(v34 + 24);
      if (v50 >= v49 >> 1)
      {
        sub_229583AA0((v49 > 1), v50 + 1, 1);
        v34 = v90;
      }

      *(v34 + 16) = v50 + 1;
      sub_229737DB0(v35, v34 + ((*(v79 + 80) + 32) & ~*(v79 + 80)) + *(v79 + 72) * v50);
      v31 = &v87[v76];
      v30 = (v88 - 1);
    }

    while (v88 != 1);
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

uint64_t sub_2297369F0(uint64_t a1, uint64_t a2)
{
  v2[29] = a2;
  v5 = sub_22A4DD44C();
  v2[5] = v5;
  v2[6] = &off_283CE4900;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v2 + 2);
  (*(*(v5 - 8) + 16))(boxed_opaque_existential_1, a1, v5);

  return MEMORY[0x2822009F8](sub_229736AB4, a2, 0);
}

uint64_t sub_229736AB4()
{
  v13 = v0;
  v1 = *(v0[29] + 128);
  v0[30] = v1;
  if (v1)
  {

    return MEMORY[0x2822009F8](sub_229736D00, v1, 0);
  }

  else
  {
    if (qword_27D87BA68 != -1)
    {
      swift_once();
    }

    v2 = sub_22A4DD07C();
    __swift_project_value_buffer(v2, qword_27D8802F8);

    v3 = sub_22A4DD05C();
    v4 = sub_22A4DDCEC();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v12 = v6;
      *v5 = 136315138;
      sub_22A4DB7DC();
      sub_229737E14(&qword_281403860, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v7 = sub_22A4DE5CC();
      v9 = sub_2295A3E30(v7, v8, &v12);

      *(v5 + 4) = v9;
      _os_log_impl(&dword_229538000, v3, v4, "[%s] MatterService is nil! Cannot publish guidance", v5, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v6);
      MEMORY[0x22AAD4E50](v6, -1, -1);
      MEMORY[0x22AAD4E50](v5, -1, -1);
    }

    __swift_destroy_boxed_opaque_existential_0(v0 + 2);
    v10 = v0[1];

    return v10();
  }
}

uint64_t sub_229736D00()
{
  v1 = v0[30];
  swift_beginAccess();
  v2 = *(v1 + 168);
  v0[31] = v2;
  if (v2)
  {
    v3 = v0[29];
    v0[32] = *(v0[30] + 176);
    swift_unknownObjectRetain();
    v4 = sub_229736FB0;
    v5 = v3;
  }

  else
  {
    v5 = v0[29];
    v4 = sub_229736DB0;
  }

  return MEMORY[0x2822009F8](v4, v5, 0);
}

uint64_t sub_229736DB0()
{
  v12 = v0;
  if (qword_27D87BA68 != -1)
  {
    swift_once();
  }

  v1 = sub_22A4DD07C();
  __swift_project_value_buffer(v1, qword_27D8802F8);

  v2 = sub_22A4DD05C();
  v3 = sub_22A4DDCEC();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v11 = v5;
    *v4 = 136315138;
    sub_22A4DB7DC();
    sub_229737E14(&qword_281403860, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v6 = sub_22A4DE5CC();
    v8 = sub_2295A3E30(v6, v7, &v11);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_229538000, v2, v3, "[%s] AlvaradoGuidanceProvider is nil! Cannot publish guidance", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x22AAD4E50](v5, -1, -1);
    MEMORY[0x22AAD4E50](v4, -1, -1);
  }

  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_229736FB0()
{
  v59 = v0;
  swift_getObjectType();
  if (qword_27D87BA20 != -1)
  {
    swift_once();
  }

  v1 = sub_22A4DCC4C();
  __swift_project_value_buffer(v1, qword_27D8AB8F0);
  v2 = sub_22A4DC5FC();
  swift_unknownObjectRelease();
  if (!v2)
  {
    if (qword_27D87BA68 != -1)
    {
      swift_once();
    }

    v25 = sub_22A4DD07C();
    __swift_project_value_buffer(v25, qword_27D8802F8);

    v26 = sub_22A4DD05C();
    v27 = sub_22A4DDCEC();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v58[0] = v29;
      *v28 = 136315138;
      sub_22A4DB7DC();
      sub_229737E14(&qword_281403860, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v30 = sub_22A4DE5CC();
      v32 = sub_2295A3E30(v30, v31, v58);

      *(v28 + 4) = v32;
      _os_log_impl(&dword_229538000, v26, v27, "[%s] AlvaradoGuidanceProvider is nil! Cannot publish guidance", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v29);
      MEMORY[0x22AAD4E50](v29, -1, -1);
      MEMORY[0x22AAD4E50](v28, -1, -1);
    }

    goto LABEL_29;
  }

  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getObjectType();
  if (qword_27D87BA28 != -1)
  {
    swift_once();
  }

  v3 = sub_22A4DCDAC();
  __swift_project_value_buffer(v3, qword_27D8AB908);
  if (!sub_22A4DC5AC())
  {
    if (qword_27D87BA68 != -1)
    {
      swift_once();
    }

    v33 = sub_22A4DD07C();
    __swift_project_value_buffer(v33, qword_27D8802F8);

    v34 = sub_22A4DD05C();
    v35 = sub_22A4DDCEC();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v58[0] = v37;
      *v36 = 136315138;
      sub_22A4DB7DC();
      sub_229737E14(&qword_281403860, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v38 = sub_22A4DE5CC();
      v40 = sub_2295A3E30(v38, v39, v58);

      *(v36 + 4) = v40;
      _os_log_impl(&dword_229538000, v34, v35, "[%s] GuidanceSignalForecast attribute is nil! Cannot publish guidance", v36, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v37);
      MEMORY[0x22AAD4E50](v37, -1, -1);
      MEMORY[0x22AAD4E50](v36, -1, -1);
    }

    swift_unknownObjectRelease();
LABEL_29:

    goto LABEL_30;
  }

  sub_22957F1C4((v0 + 2), (v0 + 7));
  v4 = v0[10];
  v5 = __swift_mutable_project_boxed_opaque_existential_0((v0 + 7), v4);
  v6 = *(v4 - 8);
  v7 = swift_task_alloc();
  (*(v6 + 16))(v7, v5, v4);
  v8 = sub_229736178(v7);
  v10 = v9;
  v12 = v11;
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);

  v13 = *(v12 + 16);
  __swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
  v14 = *(sub_22A4DD42C() + 16);

  v15 = &OBJC_IVAR___HMCRedirectorChange__context;
  if (v13 != v14)
  {
    if (qword_27D87BA68 != -1)
    {
      swift_once();
    }

    v16 = sub_22A4DD07C();
    __swift_project_value_buffer(v16, qword_27D8802F8);
    sub_22957F1C4((v0 + 2), (v0 + 12));
    sub_22956C148(v8, v10);

    sub_22956C148(v8, v10);

    v17 = sub_22A4DD05C();
    v18 = sub_22A4DDCDC();

    if (os_log_type_enabled(v17, v18))
    {
      v56 = v18;
      v19 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v58[0] = v55;
      *v19 = 136315650;
      sub_22A4DB7DC();
      sub_229737E14(&qword_281403860, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v15 = &OBJC_IVAR___HMCRedirectorChange__context;
      v20 = sub_22A4DE5CC();
      v22 = sub_2295A3E30(v20, v21, v58);

      *(v19 + 4) = v22;
      *(v19 + 12) = 2048;
      v23 = *(v12 + 16);
      sub_2295798D4(v8, v10);

      *(v19 + 14) = v23;
      sub_2295798D4(v8, v10);

      *(v19 + 22) = 2048;
      __swift_project_boxed_opaque_existential_0(v0 + 12, v0[15]);
      v24 = *(sub_22A4DD42C() + 16);

      __swift_destroy_boxed_opaque_existential_0(v0 + 12);
      *(v19 + 24) = v24;
      _os_log_impl(&dword_229538000, v17, v56, "[%s] Guidance signal is too large to publish. Truncated to %ld values. Original size: %ld", v19, 0x20u);
      __swift_destroy_boxed_opaque_existential_0(v55);
      MEMORY[0x22AAD4E50](v55, -1, -1);
      MEMORY[0x22AAD4E50](v19, -1, -1);
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_0(v0 + 12);
      sub_2295798D4(v8, v10);

      sub_2295798D4(v8, v10);
    }
  }

  if (*(v15 + 333) != -1)
  {
    swift_once();
  }

  v41 = sub_22A4DD07C();
  __swift_project_value_buffer(v41, qword_27D8802F8);

  sub_22956C148(v8, v10);

  v42 = sub_22A4DD05C();
  v43 = sub_22A4DDCCC();

  sub_2295798D4(v8, v10);

  if (os_log_type_enabled(v42, v43))
  {
    v57 = v8;
    v44 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    v58[0] = v54;
    *v44 = 136315394;
    sub_22A4DB7DC();
    sub_229737E14(&qword_281403860, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v45 = sub_22A4DE5CC();
    v47 = sub_2295A3E30(v45, v46, v58);

    *(v44 + 4) = v47;
    *(v44 + 12) = 2080;
    v0[26] = v57;
    v0[27] = v10;
    v0[28] = v12;
    sub_22956C148(v57, v10);

    v48 = sub_22A4DD64C();
    v50 = sub_2295A3E30(v48, v49, v58);

    *(v44 + 14) = v50;
    _os_log_impl(&dword_229538000, v42, v43, "[%s] Setting guidance signal forecast: %s", v44, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v54, -1, -1);
    v51 = v44;
    v8 = v57;
    MEMORY[0x22AAD4E50](v51, -1, -1);
  }

  v0[20] = v8;
  v0[21] = v10;
  v0[22] = v12;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_229737D3C();
  sub_22A4DC60C();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  sub_2295798D4(v8, v10);

LABEL_30:
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v52 = v0[1];

  return v52();
}

unint64_t sub_229737D3C()
{
  result = qword_27D880368;
  if (!qword_27D880368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D880368);
  }

  return result;
}

uint64_t sub_229737DB0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DefaultEnergyGuidanceServerV2.GuidanceForecastValueStruct(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_229737E14(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_229737E68(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D280, &unk_22A57C730) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v1 + 16);
  v10 = *(v1 + 24);
  v11 = *(v1 + v7);
  v12 = *(v1 + v8);
  v13 = *(v1 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8));
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_229586D38;

  return sub_229734188(a1, v9, v10, v1 + v6, v11, v12, v13);
}

uint64_t sub_229737FE8(uint64_t a1)
{
  result = sub_22A4DC70C();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t sub_229738080(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2297380C8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_22973811C()
{
  result = qword_27D880390;
  if (!qword_27D880390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D880390);
  }

  return result;
}

unint64_t sub_2297381B8()
{
  result = qword_27D8803A8;
  if (!qword_27D8803A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8803A8);
  }

  return result;
}

unint64_t sub_22973820C()
{
  result = qword_27D8803B0;
  if (!qword_27D8803B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8803B0);
  }

  return result;
}

unint64_t sub_229738260()
{
  result = qword_27D8803D8;
  if (!qword_27D8803D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8803D8);
  }

  return result;
}

uint64_t sub_2297382B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DefaultEnergyGuidanceServerV2.GuidanceForecastValueStruct(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_229738318(uint64_t a1)
{
  v2 = type metadata accessor for DefaultEnergyGuidanceServerV2.GuidanceForecastValueStruct(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

BOOL sub_229738374(uint64_t a1, uint64_t a2)
{
  sub_22A4DC70C();
  sub_229737E14(&qword_27D87EE18, MEMORY[0x277D171F8], MEMORY[0x277D17218]);
  sub_22A4DD7DC();
  sub_22A4DD7DC();
  if (v7 != v6)
  {
    return 0;
  }

  v4 = type metadata accessor for DefaultEnergyGuidanceServerV2.GuidanceForecastValueStruct(0);
  sub_22A4DD7DC();
  sub_22A4DD7DC();
  return *(a1 + *(v4 + 24)) == *(a2 + *(v4 + 24));
}

uint64_t sub_229738490(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D69547472617473 && a2 == 0xE900000000000065;
  if (v4 || (sub_22A4DE60C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656D6954646E65 && a2 == 0xE700000000000000 || (sub_22A4DE60C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_22A4DE60C();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_2297385AC(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D880400, &qword_22A5815F8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v10 - v5;
  v7 = a1[3];
  __swift_project_boxed_opaque_existential_0(a1, v7);
  sub_2297381B8();
  sub_22A4DE7FC();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  else
  {
    v11 = 0;
    sub_229738810();
    sub_22A4DE4EC();
    v7 = v12;
    v9 = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8803B8, &qword_22A5815E0);
    v11 = 1;
    sub_229738864(&qword_27D880410, &qword_27D880418, &unk_22A581588, MEMORY[0x277D83978]);
    sub_22A4DE4EC();
    (*(v4 + 8))(v6, v3);
    sub_22956C148(v7, v9);

    __swift_destroy_boxed_opaque_existential_0(a1);
    sub_2295798D4(v7, v9);
  }

  return v7;
}

unint64_t sub_229738810()
{
  result = qword_27D880408;
  if (!qword_27D880408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D880408);
  }

  return result;
}

uint64_t sub_229738864(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D8803B8, &qword_22A5815E0);
    sub_229737E14(a2, type metadata accessor for DefaultEnergyGuidanceServerV2.GuidanceForecastValueStruct, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_229738928()
{
  result = qword_27D880420;
  if (!qword_27D880420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D880420);
  }

  return result;
}

unint64_t sub_229738984()
{
  result = qword_27D880428;
  if (!qword_27D880428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D880428);
  }

  return result;
}

unint64_t sub_2297389DC()
{
  result = qword_27D880430;
  if (!qword_27D880430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D880430);
  }

  return result;
}

unint64_t sub_229738A34()
{
  result = qword_27D880438;
  if (!qword_27D880438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D880438);
  }

  return result;
}

unint64_t sub_229738A8C()
{
  result = qword_27D880440;
  if (!qword_27D880440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D880440);
  }

  return result;
}

unint64_t sub_229738AE4()
{
  result = qword_27D880448;
  if (!qword_27D880448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D880448);
  }

  return result;
}

void sub_229738B40()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v96 = sub_22A4DD26C();
  v89 = *(v96 - 8);
  MEMORY[0x28223BE20](v96);
  v95 = &v86 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = sub_22A4DD29C();
  v88 = *(v94 - 8);
  MEMORY[0x28223BE20](v94);
  v93 = &v86 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = sub_22A4DD07C();
  v4 = *(v97 - 1);
  v5 = MEMORY[0x28223BE20](v97);
  v7 = &v86 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v86 - v9;
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v86 - v12;
  MEMORY[0x28223BE20](v11);
  v90 = &v86 - v14;
  v15 = sub_22A4DD2FC();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = (&v86 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v18 = [v1 workQueue];
  (*(v16 + 104))(v18, *MEMORY[0x277D85200], v15);
  v19 = sub_22A4DD31C();
  (*(v16 + 8))(v18, v15);
  if ((v19 & 1) == 0)
  {
    goto LABEL_48;
  }

  if (![v1 isAllowedToEnableAdaptiveTemperatureAutomations])
  {
    sub_2297A46D4();
    v33 = v1;
    v34 = sub_22A4DD05C();
    v35 = sub_22A4DDCEC();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = v4;
      v38 = swift_slowAlloc();
      v101[0] = v38;
      *v36 = 136315394;
      aBlock = 91;
      v99 = 0xE100000000000000;
      v39 = [v33 logIdentifier];
      v40 = sub_22A4DD5EC();
      v42 = v41;

      MEMORY[0x22AAD08C0](v40, v42);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v43 = sub_2295A3E30(aBlock, v99, v101);

      *(v36 + 4) = v43;
      *(v36 + 12) = 2080;
      *(v36 + 14) = sub_2295A3E30(0xD000000000000038, 0x800000022A594A90, v101);
      _os_log_impl(&dword_229538000, v34, v35, "[%s %s] Enablement is not yet allowed", v36, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v38, -1, -1);
      MEMORY[0x22AAD4E50](v36, -1, -1);

      (*(v37 + 8))(v7, v97);
    }

    else
    {

      (*(v4 + 8))(v7, v97);
    }

    return;
  }

  if (([v1 isOwnerUser] & 1) == 0 && !objc_msgSend(v1, sel_isAdminUser))
  {
    v44 = v4;
    sub_2297A46D4();
    v45 = v1;
    v46 = sub_22A4DD05C();
    v47 = sub_22A4DDCCC();

    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v101[0] = v49;
      *v48 = 136315394;
      aBlock = 91;
      v99 = 0xE100000000000000;
      v50 = [v45 logIdentifier];
      v51 = sub_22A4DD5EC();
      v53 = v52;

      MEMORY[0x22AAD08C0](v51, v53);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v54 = sub_2295A3E30(aBlock, v99, v101);

      *(v48 + 4) = v54;
      *(v48 + 12) = 2080;
      *(v48 + 14) = sub_2295A3E30(0xD000000000000038, 0x800000022A594A90, v101);
      _os_log_impl(&dword_229538000, v46, v47, "[%s %s] Enablement is only handled by owner or admin user", v48, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v49, -1, -1);
      MEMORY[0x22AAD4E50](v48, -1, -1);
    }

    (*(v44 + 8))(v10, v97);
    return;
  }

  v20 = [v1 homeManager];
  if (!v20)
  {
LABEL_28:
    v55 = v4;
    sub_2297A46D4();
    v56 = v1;
    v57 = sub_22A4DD05C();
    v58 = sub_22A4DDCCC();

    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      v101[0] = v60;
      *v59 = 136315394;
      aBlock = 91;
      v99 = 0xE100000000000000;
      v61 = [v56 logIdentifier];
      v62 = sub_22A4DD5EC();
      v64 = v63;

      MEMORY[0x22AAD08C0](v62, v64);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v65 = sub_2295A3E30(aBlock, v99, v101);

      *(v59 + 4) = v65;
      *(v59 + 12) = 2080;
      *(v59 + 14) = sub_2295A3E30(0xD000000000000038, 0x800000022A594A90, v101);
      _os_log_impl(&dword_229538000, v57, v58, "[%s %s] Enablement is only handled after home graph has loaded", v59, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v60, -1, -1);
      MEMORY[0x22AAD4E50](v59, -1, -1);
    }

    (*(v55 + 8))(v13, v97);
    return;
  }

  v21 = v20;
  if (![v20 hasLoadedData])
  {

    goto LABEL_28;
  }

  v87 = v21;
  v22 = [v1 hapAccessories];
  sub_229562F68(0, &qword_281401B70, off_278666148);
  v13 = sub_22A4DD83C();

  aBlock = MEMORY[0x277D84F90];
  if (v13 >> 62)
  {
    goto LABEL_49;
  }

  for (i = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_22A4DE0EC())
  {
    v24 = MEMORY[0x277D84F90];
    if (!i)
    {
      break;
    }

    v86 = v1;
    v92 = v4;
    v25 = 0;
    v4 = v13 & 0xFFFFFFFFFFFFFF8;
    v26 = &selRef_applicationProxyForIdentifier_;
    while (1)
    {
      if ((v13 & 0xC000000000000001) != 0)
      {
        v27 = MEMORY[0x22AAD13F0](v25, v13);
      }

      else
      {
        if (v25 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_46;
        }

        v27 = *(v13 + 8 * v25 + 32);
      }

      v28 = v27;
      v1 = (v25 + 1);
      if (__OFADD__(v25, 1))
      {
        break;
      }

      v29 = [v27 supportsAdaptiveTemperatureAutomations];
      v30 = [v29 v26[444]];

      if (!v30 || (v31 = [v28 hasOnboardedForAdaptiveTemperatureAutomations], v32 = objc_msgSend(v31, v26[444]), v31, (v32 & 1) != 0))
      {
      }

      else
      {
        sub_22A4DE27C();
        sub_22A4DE2AC();
        sub_22A4DE2BC();
        sub_22A4DE28C();
      }

      ++v25;
      v26 = &selRef_applicationProxyForIdentifier_;
      if (v1 == i)
      {
        v24 = aBlock;
        v4 = v92;
        v1 = v86;
        goto LABEL_32;
      }
    }

    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    ;
  }

LABEL_32:

  if (v24 < 0 || (v24 & 0x4000000000000000) != 0)
  {
    v92 = sub_22A4DE0EC();
    if (v92)
    {
      goto LABEL_35;
    }

LABEL_51:

    v74 = v90;
    sub_2297A46D4();
    v75 = v1;
    v76 = sub_22A4DD05C();
    v77 = sub_22A4DDCCC();

    if (os_log_type_enabled(v76, v77))
    {
      v78 = swift_slowAlloc();
      v79 = v4;
      v80 = swift_slowAlloc();
      v101[0] = v80;
      *v78 = 136315394;
      aBlock = 91;
      v99 = 0xE100000000000000;
      v81 = [v75 logIdentifier];
      v82 = sub_22A4DD5EC();
      v84 = v83;

      MEMORY[0x22AAD08C0](v82, v84);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v85 = sub_2295A3E30(aBlock, v99, v101);

      *(v78 + 4) = v85;
      *(v78 + 12) = 2080;
      *(v78 + 14) = sub_2295A3E30(0xD000000000000038, 0x800000022A594A90, v101);
      _os_log_impl(&dword_229538000, v76, v77, "[%s %s] Found no eligible accessories to onboard", v78, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v80, -1, -1);
      MEMORY[0x22AAD4E50](v78, -1, -1);

      (*(v79 + 8))(v74, v97);
    }

    else
    {

      (*(v4 + 8))(v74, v97);
    }

    return;
  }

  v92 = *(v24 + 16);
  if (!v92)
  {
    goto LABEL_51;
  }

LABEL_35:
  v66 = 0;
  v90 = v100;
  ObjectType = v24 & 0xC000000000000001;
  ++v88;
  ++v89;
  while (ObjectType)
  {
    v68 = MEMORY[0x22AAD13F0](v66, v24);
    v67 = MEMORY[0x277D84F90];
    v1 = (v66 + 1);
    if (__OFADD__(v66, 1))
    {
      goto LABEL_43;
    }

LABEL_39:
    v69 = [v68 workQueue];
    v70 = swift_allocObject();
    *(v70 + 16) = v68;
    v100[2] = sub_229746344;
    v100[3] = v70;
    aBlock = MEMORY[0x277D85DD0];
    v99 = 1107296256;
    v100[0] = sub_22953E640;
    v100[1] = &block_descriptor_53_1;
    v71 = _Block_copy(&aBlock);
    v97 = v68;
    v4 = v93;
    sub_22A4DD28C();
    v101[0] = v67;
    v13 = sub_229746354(&qword_281401CF0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87CEA0, &unk_22A577A40);
    sub_22953E5DC();
    v73 = v95;
    v72 = v96;
    sub_22A4DE03C();
    MEMORY[0x22AAD0F80](0, v4, v73, v71);
    _Block_release(v71);

    (*v89)(v73, v72);
    (*v88)(v4, v94);

    ++v66;
    if (v1 == v92)
    {
      goto LABEL_44;
    }
  }

  v67 = MEMORY[0x277D84F90];
  if (v66 >= *(v24 + 16))
  {
    goto LABEL_47;
  }

  v68 = *(v24 + 8 * v66 + 32);
  v1 = (v66 + 1);
  if (!__OFADD__(v66, 1))
  {
    goto LABEL_39;
  }

LABEL_43:
  __break(1u);
LABEL_44:
}

uint64_t sub_229739994(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v3[6] = swift_getObjectType();
  v4 = sub_22A4DD07C();
  v3[7] = v4;
  v3[8] = *(v4 - 8);
  v3[9] = swift_task_alloc();
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_229739A88, 0, 0);
}

uint64_t sub_229739A88()
{
  v100 = v0;
  v90 = v0;
  if (!sub_22973A7D0())
  {
    v15 = v0[5];
    sub_2297A46D4();
    v16 = v15;
    v17 = sub_22A4DD05C();
    v18 = sub_22A4DDCCC();

    v19 = os_log_type_enabled(v17, v18);
    v21 = v0[8];
    v20 = v0[9];
    v22 = v0[7];
    if (v19)
    {
      v93 = v0[9];
      v23 = v0[5];
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      *v24 = 136315394;
      v97 = v25;
      v98 = 91;
      v99 = 0xE100000000000000;
      v26 = [v23 logIdentifier];
      v27 = sub_22A4DD5EC();
      v29 = v28;

      MEMORY[0x22AAD08C0](v27, v29);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v30 = sub_2295A3E30(91, 0xE100000000000000, &v97);

      *(v24 + 4) = v30;
      *(v24 + 12) = 2080;
      *(v24 + 14) = sub_2295A3E30(0xD000000000000042, 0x800000022A594A40, &v97);
      _os_log_impl(&dword_229538000, v17, v18, "%s %s YES - No accessories with adaptive temperature automations enabled", v24, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v25, -1, -1);
      MEMORY[0x22AAD4E50](v24, -1, -1);

      (*(v21 + 8))(v93, v22);
    }

    else
    {

      (*(v21 + 8))(v20, v22);
    }

    v31 = v0[1];
    goto LABEL_40;
  }

  if (!v0[4])
  {
    v50 = v0[5];
    sub_2297A46D4();
    v51 = v50;
    v52 = sub_22A4DD05C();
    v53 = sub_22A4DDCEC();

    v54 = os_log_type_enabled(v52, v53);
    v55 = v0[10];
    v57 = v0[7];
    v56 = v0[8];
    if (v54)
    {
      v95 = v0[10];
      v58 = v0[5];
      v59 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      *v59 = 136315394;
      v97 = v60;
      v98 = 91;
      v99 = 0xE100000000000000;
      v61 = [v58 logIdentifier];
      v62 = sub_22A4DD5EC();
      v64 = v63;

      MEMORY[0x22AAD08C0](v62, v64);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v65 = sub_2295A3E30(91, 0xE100000000000000, &v97);

      *(v59 + 4) = v65;
      *(v59 + 12) = 2080;
      *(v59 + 14) = sub_2295A3E30(0xD000000000000042, 0x800000022A594A40, &v97);
      _os_log_impl(&dword_229538000, v52, v53, "%s %s NO - missing query controller, could not verify invited account capabilities", v59, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v60, -1, -1);
      MEMORY[0x22AAD4E50](v59, -1, -1);

      (*(v56 + 8))(v95, v57);
    }

    else
    {

      (*(v56 + 8))(v55, v57);
    }

    [objc_opt_self() hmErrorWithCode_];
    swift_willThrow();
    goto LABEL_39;
  }

  v1 = v0[3];
  if (!(v1 >> 62))
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
      goto LABEL_5;
    }

    goto LABEL_35;
  }

LABEL_34:
  v2 = sub_22A4DE0EC();
  if (!v2)
  {
LABEL_35:
    v73 = v0[5];
    swift_unknownObjectRetain();
    sub_2297A46D4();
    v74 = v73;
    v75 = sub_22A4DD05C();
    v76 = sub_22A4DDCEC();

    v77 = os_log_type_enabled(v75, v76);
    v78 = v0[11];
    v79 = v0[7];
    v80 = v0[8];
    if (v77)
    {
      v96 = v0[7];
      v81 = v0[5];
      v82 = swift_slowAlloc();
      v83 = swift_slowAlloc();
      *v82 = 136315394;
      v97 = v83;
      v98 = 91;
      v99 = 0xE100000000000000;
      v84 = [v81 logIdentifier];
      v85 = sub_22A4DD5EC();
      v87 = v86;

      MEMORY[0x22AAD08C0](v85, v87);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v88 = sub_2295A3E30(v98, v99, &v97);

      *(v82 + 4) = v88;
      *(v82 + 12) = 2080;
      *(v82 + 14) = sub_2295A3E30(0xD000000000000042, 0x800000022A594A40, &v97);
      _os_log_impl(&dword_229538000, v75, v76, "%s %s NO - missing invitations, could not verify invited account capabilities", v82, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v83, -1, -1);
      MEMORY[0x22AAD4E50](v82, -1, -1);

      (*(v80 + 8))(v78, v96);
    }

    else
    {

      (*(v80 + 8))(v78, v79);
    }

    [objc_opt_self() hmErrorWithCode_];
    swift_willThrow();
    swift_unknownObjectRelease();
LABEL_39:

    v31 = v90[1];
LABEL_40:

    return v31();
  }

LABEL_5:
  v92 = v1 & 0xC000000000000001;
  v3 = v1 & 0xFFFFFFFFFFFFFF8;
  v4 = v0[3] + 32;
  swift_unknownObjectRetain();
  v5 = 0;
  v6 = MEMORY[0x277D84F90];
  v89 = v2;
  do
  {
    if (v92)
    {
      v8 = MEMORY[0x22AAD13F0](v5, v0[3]);
    }

    else
    {
      if (v5 >= *(v3 + 16))
      {
        goto LABEL_33;
      }

      v8 = *(v4 + 8 * v5);
    }

    v9 = v8;
    v10 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    v11 = v0[5];
    v97 = v8;
    sub_22973A8FC(&v97, v11, &v98);

    v1 = v99;
    if (v99)
    {
      v12 = v98;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = sub_22958A53C(0, *(v6 + 2) + 1, 1, v6);
      }

      v14 = *(v6 + 2);
      v13 = *(v6 + 3);
      if (v14 >= v13 >> 1)
      {
        v6 = sub_22958A53C((v13 > 1), v14 + 1, 1, v6);
      }

      *(v6 + 2) = v14 + 1;
      v7 = &v6[16 * v14];
      *(v7 + 4) = v12;
      *(v7 + 5) = v1;
      v2 = v89;
      v0 = v90;
    }

    ++v5;
  }

  while (v10 != v2);
  v32 = v0[5];
  sub_2297A46D4();
  v33 = v32;

  v34 = sub_22A4DD05C();
  v35 = sub_22A4DDCCC();

  v36 = os_log_type_enabled(v34, v35);
  v37 = v0[12];
  v38 = v0[7];
  v39 = v0[8];
  if (v36)
  {
    v94 = v0[7];
    v40 = v0[5];
    v41 = swift_slowAlloc();
    v91 = swift_slowAlloc();
    *v41 = 136315650;
    v97 = v91;
    v98 = 91;
    v99 = 0xE100000000000000;
    v42 = [v40 logIdentifier];
    v43 = sub_22A4DD5EC();
    v45 = v44;

    MEMORY[0x22AAD08C0](v43, v45);

    MEMORY[0x22AAD08C0](93, 0xE100000000000000);
    v46 = sub_2295A3E30(v98, v99, &v97);

    *(v41 + 4) = v46;
    *(v41 + 12) = 2080;
    *(v41 + 14) = sub_2295A3E30(0xD000000000000042, 0x800000022A594A40, &v97);
    *(v41 + 22) = 2080;
    v0[2] = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E400, "ll\b");
    v47 = sub_22A4DBA6C();
    v49 = sub_2295A3E30(v47, v48, &v97);

    *(v41 + 24) = v49;
    _os_log_impl(&dword_229538000, v34, v35, "%s %s Verifying capabilities of invited account(s): %s", v41, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v91, -1, -1);
    MEMORY[0x22AAD4E50](v41, -1, -1);

    (*(v39 + 8))(v37, v94);
  }

  else
  {

    (*(v39 + 8))(v37, v38);
  }

  v66 = v0[5];
  ObjectType = swift_getObjectType();
  v68 = sub_229869FC0(v6);
  v0[13] = v68;

  v69 = [objc_opt_self() refreshIDInfo];
  v0[14] = v69;
  v70 = [v66 workQueue];
  v0[15] = v70;
  v71 = swift_task_alloc();
  v0[16] = v71;
  *v71 = v0;
  v71[1] = sub_22973A560;

  return sub_22973AF24(v68, v69, v70, ObjectType);
}

uint64_t sub_22973A560()
{
  v2 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v3 = sub_22973A724;
  }

  else
  {
    v4 = *(v2 + 112);

    v3 = sub_22973A694;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_22973A694()
{
  swift_unknownObjectRelease();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22973A724()
{
  v1 = *(v0 + 112);

  swift_unknownObjectRelease();

  v2 = *(v0 + 8);

  return v2();
}

BOOL sub_22973A7D0()
{
  v1 = [v0 hapAccessories];
  sub_229562F68(0, &qword_281401B70, off_278666148);
  v2 = sub_22A4DD83C();

  if (v2 >> 62)
  {
LABEL_15:
    v3 = sub_22A4DE0EC();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = 0;
  do
  {
    v5 = v4;
    if (v3 == v4)
    {
      break;
    }

    if ((v2 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x22AAD13F0](v4, v2);
    }

    else
    {
      if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_14;
      }

      v6 = *(v2 + 8 * v4 + 32);
    }

    v7 = v6;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
LABEL_14:
      __break(1u);
      goto LABEL_15;
    }

    v8 = [v6 isAdaptiveTemperatureAutomationsEnabled];

    v4 = v5 + 1;
  }

  while (!v8);

  return v3 != v5;
}

void sub_22973A8FC(void **a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = sub_22A4DD07C();
  v57 = *(v7 - 8);
  v58 = v7;
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v53 - v11;
  v13 = *a1;
  v14 = [v13 user];
  if (!v14)
  {
    __break(1u);
    return;
  }

  v15 = v14;
  v16 = [v14 accountHandle];

  if (v16)
  {
    v17 = [v16 type];
    if (v17 == 2)
    {
      v18 = [v16 value];
      if (!v18)
      {
        sub_22A4DD5EC();
        v18 = sub_22A4DD5AC();
      }

      v19 = IDSCopyIDForPhoneNumber();
      goto LABEL_14;
    }

    if (v17 == 1)
    {
      v18 = [v16 value];
      if (!v18)
      {
        sub_22A4DD5EC();
        v18 = sub_22A4DD5AC();
      }

      v19 = MEMORY[0x22AAD2AB0](v18);
LABEL_14:
      v34 = v19;

      if (v34)
      {
        v35 = sub_22A4DD5EC();
        v37 = v36;
      }

      else
      {

        v35 = 0;
        v37 = 0;
      }

      *a3 = v35;
      a3[1] = v37;
      return;
    }

    v55 = v3;
    sub_2297A46D4();
    v38 = a2;
    v39 = v16;
    v40 = sub_22A4DD05C();
    v41 = sub_22A4DDCEC();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v56 = a3;
      v43 = v42;
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v61 = v54;
      *v43 = 136315650;
      v59 = 91;
      v60 = 0xE100000000000000;
      v44 = [v38 logIdentifier];
      v45 = sub_22A4DD5EC();
      v47 = v46;

      MEMORY[0x22AAD08C0](v45, v47);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v48 = sub_2295A3E30(v59, v60, &v61);

      *(v43 + 4) = v48;
      *(v43 + 12) = 2080;
      *(v43 + 14) = sub_2295A3E30(0xD000000000000042, 0x800000022A594A40, &v61);
      *(v43 + 22) = 2112;
      *(v43 + 24) = v39;
      v49 = v53;
      *v53 = v16;
      v50 = v39;
      _os_log_impl(&dword_229538000, v40, v41, "%s %s Ignoring handle with unsupported type: %@", v43, 0x20u);
      sub_22953EAE4(v49, &qword_27D87D7D0, &unk_22A578D90);
      MEMORY[0x22AAD4E50](v49, -1, -1);
      v51 = v54;
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v51, -1, -1);
      v52 = v43;
      a3 = v56;
      MEMORY[0x22AAD4E50](v52, -1, -1);
    }

    else
    {
    }

    (*(v57 + 8))(v12, v58);
    *a3 = 0;
    a3[1] = 0;
  }

  else
  {
    v56 = a3;
    sub_2297A46D4();
    v20 = a2;
    v21 = v13;
    v22 = sub_22A4DD05C();
    v23 = sub_22A4DDCEC();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v61 = v55;
      *v24 = 136315650;
      v59 = 91;
      v60 = 0xE100000000000000;
      v25 = [v20 logIdentifier];
      v26 = sub_22A4DD5EC();
      v28 = v27;

      MEMORY[0x22AAD08C0](v26, v28);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v29 = sub_2295A3E30(v59, v60, &v61);

      *(v24 + 4) = v29;
      *(v24 + 12) = 2080;
      *(v24 + 14) = sub_2295A3E30(0xD000000000000042, 0x800000022A594A40, &v61);
      *(v24 + 22) = 2112;
      *(v24 + 24) = v21;
      v30 = v54;
      *v54 = v21;
      v31 = v21;
      _os_log_impl(&dword_229538000, v22, v23, "%s %s Ignoring invitation with missing handle: %@", v24, 0x20u);
      sub_22953EAE4(v30, &qword_27D87D7D0, &unk_22A578D90);
      MEMORY[0x22AAD4E50](v30, -1, -1);
      v32 = v55;
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v32, -1, -1);
      MEMORY[0x22AAD4E50](v24, -1, -1);
    }

    (*(v57 + 8))(v10, v58);
    v33 = v56;
    *v56 = 0;
    v33[1] = 0;
  }
}

uint64_t sub_22973AF24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_22973AF4C, 0, 0);
}

uint64_t sub_22973AF4C()
{
  v1 = *(v0 + 32);
  v2 = swift_task_alloc();
  *(v0 + 56) = v2;
  v3 = *(v0 + 16);
  *(v2 + 16) = *(v0 + 40);
  *(v2 + 32) = v3;
  *(v2 + 48) = v1;
  v4 = swift_task_alloc();
  *(v0 + 64) = v4;
  *v4 = v0;
  v4[1] = sub_22973B04C;
  v5 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v4, 0, 0, 0xD000000000000059, 0x800000022A5948F0, sub_22974603C, v2, v5);
}

uint64_t sub_22973B04C()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_22973B168;
  }

  else
  {

    v2 = sub_229566EE4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22973B168()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22973B360(uint64_t a1, uint64_t a2, void *aBlock, void *a4)
{
  v4[2] = a2;
  v4[3] = a4;
  v4[4] = _Block_copy(aBlock);
  sub_229562F68(0, &unk_27D8805A0, off_2786662C8);
  v7 = sub_22A4DD83C();
  v4[5] = v7;
  swift_unknownObjectRetain();
  a4;
  v8 = swift_task_alloc();
  v4[6] = v8;
  *v8 = v4;
  v8[1] = sub_22973B45C;

  return sub_229739994(v7, a2);
}

uint64_t sub_22973B45C()
{
  v2 = *v1;
  v3 = *(*v1 + 32);
  v4 = *(*v1 + 24);
  v5 = *v1;

  swift_unknownObjectRelease();

  if (v0)
  {
    if (v3)
    {
      v6 = *(v2 + 32);
      v7 = sub_22A4DB3DC();

      (v6)[2](v6, v7);
      _Block_release(v6);
    }

    else
    {
    }
  }

  else if (v3)
  {
    v8 = *(v2 + 32);
    v8[2](v8, 0);
    _Block_release(v8);
  }

  v9 = *(v5 + 8);

  return v9();
}

void sub_22973B638()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v68 = sub_22A4DD07C();
  v3 = *(v68 - 8);
  v4 = MEMORY[0x28223BE20](v68);
  v6 = &v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v66 - v8;
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v66 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v66 - v13;
  v15 = [objc_msgSend(v1 featuresDataSource)];
  swift_unknownObjectRelease();
  if (v15)
  {
    if ([v1 isCurrentDevicePrimaryResident])
    {
      v66 = ObjectType;
      sub_2297A46D4();
      v16 = v1;
      v17 = sub_22A4DD05C();
      v18 = sub_22A4DDCCC();

      v19 = os_log_type_enabled(v17, v18);
      v67 = v3;
      if (v19)
      {
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        *v20 = 136315394;
        v69 = 91;
        v70 = 0xE100000000000000;
        v71 = v21;
        v22 = [v16 logIdentifier];
        v23 = sub_22A4DD5EC();
        v25 = v24;

        MEMORY[0x22AAD08C0](v23, v25);

        MEMORY[0x22AAD08C0](93, 0xE100000000000000);
        v26 = sub_2295A3E30(v69, v70, &v71);

        *(v20 + 4) = v26;
        *(v20 + 12) = 2080;
        *(v20 + 14) = sub_2295A3E30(0xD00000000000004BLL, 0x800000022A5947D0, &v71);
        _os_log_impl(&dword_229538000, v17, v18, "%s %s Configuring", v20, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x22AAD4E50](v21, -1, -1);
        MEMORY[0x22AAD4E50](v20, -1, -1);

        v27 = v67;
      }

      else
      {

        v27 = v3;
      }

      v50 = *(v27 + 8);
      v50(v14, v68);
      v51 = [v16 notificationCenter];
      [v51 addObserver:v16 selector:sel_handleValenciaEnabledStateAttributeChanged_ name:@"HMDAccessoryValenciaStateEnabledAttributeChanged" object:0];

      v52 = [v16 notificationCenter];
      [v52 addObserver:v16 selector:sel_handleHomePresenceUpdate_ name:@"HMDHomePresenceUpdateNotification" object:0];

      v53 = [v16 notificationCenter];
      [v53 addObserver:v16 selector:sel_handleNotificationsForIsAllowedToEnableAdaptiveTemperatureAutomations_ name:@"HMDHomeUserAddedNotification" object:0];

      v54 = [v16 notificationCenter];
      [v54 addObserver:v16 selector:sel_handleNotificationsForIsAllowedToEnableAdaptiveTemperatureAutomations_ name:@"HMDHomeUserRemovedNotification" object:0];

      sub_2297A46D4();
      v55 = v16;
      v56 = sub_22A4DD05C();
      v57 = sub_22A4DDCCC();

      if (os_log_type_enabled(v56, v57))
      {
        v58 = swift_slowAlloc();
        v59 = swift_slowAlloc();
        v66 = v50;
        v60 = v59;
        *v58 = 136315394;
        v69 = 91;
        v70 = 0xE100000000000000;
        v71 = v59;
        v61 = [v55 logIdentifier];
        v62 = sub_22A4DD5EC();
        v64 = v63;

        MEMORY[0x22AAD08C0](v62, v64);

        MEMORY[0x22AAD08C0](93, 0xE100000000000000);
        v65 = sub_2295A3E30(v69, v70, &v71);

        *(v58 + 4) = v65;
        *(v58 + 12) = 2080;
        *(v58 + 14) = sub_2295A3E30(0xD00000000000004BLL, 0x800000022A5947D0, &v71);
        _os_log_impl(&dword_229538000, v56, v57, "%s %s Handling primary resident change", v58, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x22AAD4E50](v60, -1, -1);
        MEMORY[0x22AAD4E50](v58, -1, -1);

        v66(v12, v68);
      }

      else
      {

        v50(v12, v68);
      }

      sub_22973BF64();
    }

    else
    {
      sub_2297A46D4();
      v39 = v1;
      v40 = sub_22A4DD05C();
      v41 = sub_22A4DDCCC();

      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        v43 = swift_slowAlloc();
        *v42 = 136315394;
        v69 = 91;
        v70 = 0xE100000000000000;
        v71 = v43;
        v44 = v3;
        v45 = [v39 logIdentifier];
        v46 = sub_22A4DD5EC();
        v48 = v47;

        MEMORY[0x22AAD08C0](v46, v48);

        MEMORY[0x22AAD08C0](93, 0xE100000000000000);
        v49 = sub_2295A3E30(v69, v70, &v71);

        *(v42 + 4) = v49;
        *(v42 + 12) = 2080;
        *(v42 + 14) = sub_2295A3E30(0xD00000000000004BLL, 0x800000022A5947D0, &v71);
        _os_log_impl(&dword_229538000, v40, v41, "%s %s Current device is not the primary resident", v42, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x22AAD4E50](v43, -1, -1);
        MEMORY[0x22AAD4E50](v42, -1, -1);

        (*(v44 + 8))(v9, v68);
      }

      else
      {

        (*(v3 + 8))(v9, v68);
      }
    }
  }

  else
  {
    sub_2297A46D4();
    v28 = v1;
    v29 = sub_22A4DD05C();
    v30 = sub_22A4DDCCC();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      *v31 = 136315394;
      v69 = 91;
      v70 = 0xE100000000000000;
      v71 = v32;
      v33 = v3;
      v34 = [v28 logIdentifier];
      v35 = sub_22A4DD5EC();
      v37 = v36;

      MEMORY[0x22AAD08C0](v35, v37);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v38 = sub_2295A3E30(v69, v70, &v71);

      *(v31 + 4) = v38;
      *(v31 + 12) = 2080;
      *(v31 + 14) = sub_2295A3E30(0xD00000000000004BLL, 0x800000022A5947D0, &v71);
      _os_log_impl(&dword_229538000, v29, v30, "%s %s Not configuring adaptive temperature automation notifications because HomeAS features it not enabled", v31, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v32, -1, -1);
      MEMORY[0x22AAD4E50](v31, -1, -1);

      (*(v33 + 8))(v6, v68);
    }

    else
    {

      (*(v3 + 8))(v6, v68);
    }
  }
}

void sub_22973BF64()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v74 - v4;
  v6 = sub_22A4DD07C();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = v74 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = v74 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v16 = v74 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = v74 - v17;
  if (![v1 isCurrentDeviceConfirmedPrimaryResident])
  {
    sub_2297A46D4();
    v30 = v1;
    v31 = sub_22A4DD05C();
    v32 = sub_22A4DDCEC();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      *v33 = 136315394;
      v76 = 91;
      v77 = 0xE100000000000000;
      v78 = v34;
      v35 = [v30 logIdentifier];
      v36 = sub_22A4DD5EC();
      v38 = v37;

      MEMORY[0x22AAD08C0](v36, v38);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v39 = sub_2295A3E30(v76, v77, &v78);

      *(v33 + 4) = v39;
      *(v33 + 12) = 2080;
      *(v33 + 14) = sub_2295A3E30(0xD000000000000039, 0x800000022A594820, &v78);
      _os_log_impl(&dword_229538000, v31, v32, "%s %s Not evaluating because current device is not primary resident", v33, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v34, -1, -1);
      MEMORY[0x22AAD4E50](v33, -1, -1);
    }

    v40 = *(v7 + 8);
    v41 = v10;
    goto LABEL_20;
  }

  v19 = [v1 homeActivityStateManager];
  if (!v19)
  {
    sub_2297A46D4();
    v42 = v1;
    v43 = sub_22A4DD05C();
    v44 = sub_22A4DDCEC();

    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      *v45 = 136315394;
      v76 = 91;
      v77 = 0xE100000000000000;
      v78 = v46;
      v47 = [v42 logIdentifier];
      v48 = sub_22A4DD5EC();
      v50 = v49;

      MEMORY[0x22AAD08C0](v48, v50);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v51 = sub_2295A3E30(v76, v77, &v78);

      *(v45 + 4) = v51;
      *(v45 + 12) = 2080;
      *(v45 + 14) = sub_2295A3E30(0xD000000000000039, 0x800000022A594820, &v78);
      _os_log_impl(&dword_229538000, v43, v44, "%s %s Missing home activity state manager", v45, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v46, -1, -1);
      MEMORY[0x22AAD4E50](v45, -1, -1);
    }

    v40 = *(v7 + 8);
    v41 = v13;
LABEL_20:
    v40(v41, v6);
    return;
  }

  v20 = v19;
  v21 = [v19 userActivityStatesDetails];
  if (!v21)
  {
    sub_2297A46D4();
    v52 = v1;
    v53 = sub_22A4DD05C();
    v54 = sub_22A4DDCEC();

    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      *v55 = 136315394;
      v76 = 91;
      v77 = 0xE100000000000000;
      v78 = v56;
      v57 = [v52 logIdentifier];
      v58 = sub_22A4DD5EC();
      v75 = v6;
      v60 = v59;

      MEMORY[0x22AAD08C0](v58, v60);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v61 = sub_2295A3E30(v76, v77, &v78);

      *(v55 + 4) = v61;
      *(v55 + 12) = 2080;
      *(v55 + 14) = sub_2295A3E30(0xD000000000000039, 0x800000022A594820, &v78);
      _os_log_impl(&dword_229538000, v53, v54, "%s %s Missing user activity state details", v55, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v56, -1, -1);
      MEMORY[0x22AAD4E50](v55, -1, -1);

      (*(v7 + 8))(v16, v75);
      return;
    }

    v40 = *(v7 + 8);
    v41 = v16;
    goto LABEL_20;
  }

  v22 = v21;
  v23 = [v1 users];
  if (v23)
  {
    v24 = v23;
    sub_229562F68(0, &qword_281401790, off_278666348);
    v25 = sub_22A4DD83C();

    if (v25 >> 62)
    {
      v26 = sub_22A4DE0EC();
    }

    else
    {
      v26 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v26)
    {
      v27 = sub_22A4DD9DC();
      (*(*(v27 - 8) + 56))(v5, 1, 1, v27);
      v28 = swift_allocObject();
      v28[2] = 0;
      v28[3] = 0;
      v28[4] = v1;
      v28[5] = v22;
      v28[6] = ObjectType;
      v29 = v1;
      sub_22957F3C0(0, 0, v5, &unk_22A581908, v28);
    }

    else
    {
      sub_2297A46D4();
      v62 = v1;
      v63 = sub_22A4DD05C();
      v64 = sub_22A4DDCCC();

      if (os_log_type_enabled(v63, v64))
      {
        v65 = swift_slowAlloc();
        v66 = swift_slowAlloc();
        v74[0] = v66;
        *v65 = 136315394;
        v76 = 91;
        v77 = 0xE100000000000000;
        v78 = v66;
        v67 = [v62 logIdentifier];
        v68 = sub_22A4DD5EC();
        v74[1] = v62;
        v75 = v6;
        v69 = v68;
        v71 = v70;

        MEMORY[0x22AAD08C0](v69, v71);

        MEMORY[0x22AAD08C0](93, 0xE100000000000000);
        v72 = sub_2295A3E30(v76, v77, &v78);

        *(v65 + 4) = v72;
        *(v65 + 12) = 2080;
        *(v65 + 14) = sub_2295A3E30(0xD000000000000039, 0x800000022A594820, &v78);
        _os_log_impl(&dword_229538000, v63, v64, "%s %s Evaluated false because there are no users in the home", v65, 0x16u);
        v73 = v74[0];
        swift_arrayDestroy();
        MEMORY[0x22AAD4E50](v73, -1, -1);
        MEMORY[0x22AAD4E50](v65, -1, -1);

        (*(v7 + 8))(v18, v75);
      }

      else
      {

        (*(v7 + 8))(v18, v6);
      }

      sub_22973CDE8(0);

      swift_unknownObjectRelease();
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_22973C8B0()
{
  swift_getObjectType();
  v1 = sub_22A4DD07C();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v33 - v6;
  v8 = [objc_msgSend(v0 featuresDataSource)];
  swift_unknownObjectRelease();
  if (v8)
  {
    sub_2297A46D4();
    v9 = v0;
    v10 = sub_22A4DD05C();
    v11 = sub_22A4DDCCC();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *v12 = 136315394;
      v34 = 91;
      v35 = 0xE100000000000000;
      v36 = v13;
      v14 = [v9 logIdentifier];
      v15 = sub_22A4DD5EC();
      v33 = v1;
      v17 = v16;

      MEMORY[0x22AAD08C0](v15, v17);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v18 = sub_2295A3E30(v34, v35, &v36);

      *(v12 + 4) = v18;
      *(v12 + 12) = 2080;
      *(v12 + 14) = sub_2295A3E30(0xD000000000000049, 0x800000022A594780, &v36);
      _os_log_impl(&dword_229538000, v10, v11, "%s %s Unconfiguring", v12, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v13, -1, -1);
      MEMORY[0x22AAD4E50](v12, -1, -1);

      (*(v2 + 8))(v7, v33);
    }

    else
    {

      (*(v2 + 8))(v7, v1);
    }

    v29 = [v9 notificationCenter];
    [v29 removeObserver:v9 name:@"HMDAccessoryValenciaStateEnabledAttributeChanged" object:0];

    v30 = [v9 notificationCenter];
    [v30 removeObserver:v9 name:@"HMDHomePresenceUpdateNotification" object:0];

    v31 = [v9 notificationCenter];
    [v31 removeObserver:v9 name:@"HMDHomeUserAddedNotification" object:0];

    v32 = [v9 notificationCenter];
    [v32 removeObserver:v9 name:@"HMDHomeUserRemovedNotification" object:0];
  }

  else
  {
    sub_2297A46D4();
    v19 = v0;
    v20 = sub_22A4DD05C();
    v21 = sub_22A4DDCCC();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *v22 = 136315394;
      v34 = 91;
      v35 = 0xE100000000000000;
      v36 = v23;
      v24 = [v19 logIdentifier];
      v25 = sub_22A4DD5EC();
      v27 = v26;

      MEMORY[0x22AAD08C0](v25, v27);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v28 = sub_2295A3E30(v34, v35, &v36);

      *(v22 + 4) = v28;
      *(v22 + 12) = 2080;
      *(v22 + 14) = sub_2295A3E30(0xD000000000000049, 0x800000022A594780, &v36);
      _os_log_impl(&dword_229538000, v20, v21, "%s %s Not configuring adaptive temperature automation notifications because HomeAS feature is not enabled", v22, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v23, -1, -1);
      MEMORY[0x22AAD4E50](v22, -1, -1);
    }

    (*(v2 + 8))(v5, v1);
  }
}

char *sub_22973CDE8(int a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v43 - v6;
  v8 = sub_22A4DD07C();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v43 - v13;
  if (([v2 isAllowedToEnableAdaptiveTemperatureAutomations] ^ a1))
  {
    result = [v2 swiftExtensions];
    if (result)
    {
      v16 = result;
      swift_getObjectType();
      result = swift_conformsToProtocol2();
      if (result)
      {
        v17 = OBJC_IVAR____TtCE13HomeKitDaemonCSo7HMDHomeP33_0B6F54D380C02F3DBB7BB084234D6AED22DefaultSwiftExtensions_homeStorage;
        swift_beginAccess();
        sub_229564F88(&v16[v17], &v44, &unk_27D8804B0, &qword_22A581910);
        swift_unknownObjectRelease();
        if (v45)
        {
          sub_229557188(&v44, &v46);
          v18 = sub_22A4DD9DC();
          (*(*(v18 - 8) + 56))(v7, 1, 1, v18);
          sub_22957F1C4(&v46, &v44);
          v19 = swift_allocObject();
          *(v19 + 16) = 0;
          *(v19 + 24) = 0;
          sub_229557188(&v44, v19 + 32);
          *(v19 + 72) = a1 & 1;
          *(v19 + 80) = v2;
          *(v19 + 88) = ObjectType;
          v20 = v2;
          sub_22957F3C0(0, 0, v7, &unk_22A581920, v19);

          return __swift_destroy_boxed_opaque_existential_0(&v46);
        }

        sub_22953EAE4(&v44, &unk_27D8804B0, &qword_22A581910);
        sub_2297A46D4();
        v33 = v2;
        v34 = sub_22A4DD05C();
        v35 = sub_22A4DDCEC();

        if (os_log_type_enabled(v34, v35))
        {
          v36 = swift_slowAlloc();
          v37 = swift_slowAlloc();
          *&v44 = v37;
          *v36 = 136315650;
          v46 = 91;
          v47 = 0xE100000000000000;
          v38 = [v33 logIdentifier];
          v39 = sub_22A4DD5EC();
          v43 = v8;
          v41 = v40;

          MEMORY[0x22AAD08C0](v39, v41);

          MEMORY[0x22AAD08C0](93, 0xE100000000000000);
          v42 = sub_2295A3E30(v46, v47, &v44);

          *(v36 + 4) = v42;
          *(v36 + 12) = 2080;
          *(v36 + 14) = sub_2295A3E30(0xD000000000000037, 0x800000022A594860, &v44);
          *(v36 + 22) = 1024;
          *(v36 + 24) = a1 & 1;
          _os_log_impl(&dword_229538000, v34, v35, "%s %s Failed to save %{BOOL}d because home is missing storage", v36, 0x1Cu);
          swift_arrayDestroy();
          MEMORY[0x22AAD4E50](v37, -1, -1);
          MEMORY[0x22AAD4E50](v36, -1, -1);

          return (*(v9 + 8))(v12, v43);
        }

        v31 = *(v9 + 8);
        v32 = v12;
        return v31(v32, v8);
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return result;
  }

  sub_2297A46D4();
  v21 = v2;
  v22 = sub_22A4DD05C();
  v23 = sub_22A4DDCCC();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    *&v44 = v25;
    *v24 = 136315650;
    v46 = 91;
    v47 = 0xE100000000000000;
    v26 = [v21 logIdentifier];
    v27 = sub_22A4DD5EC();
    v43 = v8;
    v29 = v28;

    MEMORY[0x22AAD08C0](v27, v29);

    MEMORY[0x22AAD08C0](93, 0xE100000000000000);
    v30 = sub_2295A3E30(v46, v47, &v44);

    *(v24 + 4) = v30;
    *(v24 + 12) = 2080;
    *(v24 + 14) = sub_2295A3E30(0xD000000000000037, 0x800000022A594860, &v44);
    *(v24 + 22) = 1024;
    *(v24 + 24) = a1 & 1;
    _os_log_impl(&dword_229538000, v22, v23, "%s %s Not saving %{BOOL}d because it has not changed", v24, 0x1Cu);
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v25, -1, -1);
    MEMORY[0x22AAD4E50](v24, -1, -1);

    return (*(v9 + 8))(v14, v43);
  }

  v31 = *(v9 + 8);
  v32 = v14;
  return v31(v32, v8);
}

uint64_t sub_22973D400(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[13] = a5;
  v6[14] = a6;
  v6[12] = a4;
  v7 = sub_22A4DB7DC();
  v6[15] = v7;
  v6[16] = *(v7 - 8);
  v6[17] = swift_task_alloc();
  v8 = sub_22A4DD07C();
  v6[18] = v8;
  v6[19] = *(v8 - 8);
  v6[20] = swift_task_alloc();
  v6[21] = swift_task_alloc();
  v6[22] = swift_task_alloc();
  v6[23] = swift_task_alloc();
  v6[24] = swift_task_alloc();
  v6[25] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22973D55C, 0, 0);
}

id sub_22973D55C()
{
  v171 = v1;
  result = [*(v1 + 96) users];
  if (!result)
  {
    __break(1u);
    goto LABEL_63;
  }

  v4 = result;
  *(v1 + 208) = sub_229562F68(0, &qword_281401790, off_278666348);
  v5 = sub_22A4DD83C();
  *(v1 + 216) = v5;

  if (!(v5 >> 62))
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    *(v1 + 224) = v6;
    if (v6)
    {
      goto LABEL_4;
    }

    goto LABEL_42;
  }

  v6 = sub_22A4DE0EC();
  *(v1 + 224) = v6;
  if (!v6)
  {
LABEL_42:
    v2 = MEMORY[0x277D84F90];
LABEL_43:

    v0 = *(v2 + 2);
    result = [*(v1 + 96) users];
    if (result)
    {
      v102 = result;
      v103 = sub_22A4DD83C();

      if (!(v103 >> 62))
      {
        v104 = *((v103 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_46:

        if (v0 == v104)
        {
          v105 = *(v2 + 2);
          v106 = v2 + 32;
          do
          {
            v107 = v105;
            if (!v105)
            {
              break;
            }

            v108 = *v106++;
            --v105;
          }

          while ((v108 & 1) != 0);
          v109 = *(v1 + 96);

          sub_2297A46D4();
          v110 = v109;
          v111 = sub_22A4DD05C();
          v112 = sub_22A4DDCCC();
          v113 = os_log_type_enabled(v111, v112);
          v114 = *(v1 + 176);
          v115 = *(v1 + 144);
          v116 = *(v1 + 152);
          v117 = *(v1 + 96);
          if (v113)
          {
            v118 = swift_slowAlloc();
            v166 = swift_slowAlloc();
            v168 = v166;
            *v118 = 136315906;
            v169 = 91;
            v170 = 0xE100000000000000;
            v161 = v114;
            v119 = [v117 logIdentifier];
            v120 = sub_22A4DD5EC();
            v157 = v115;
            v122 = v121;

            MEMORY[0x22AAD08C0](v120, v122);

            MEMORY[0x22AAD08C0](93, 0xE100000000000000);
            v123 = sub_2295A3E30(v169, v170, &v168);

            *(v118 + 4) = v123;
            *(v118 + 12) = 2080;
            *(v118 + 14) = sub_2295A3E30(0xD000000000000039, 0x800000022A594820, &v168);
            *(v118 + 22) = 1024;
            LODWORD(v119) = [v117 isAllowedToEnableAdaptiveTemperatureAutomations];

            *(v118 + 24) = v119;
            *(v118 + 28) = 1024;
            *(v118 + 30) = v107 == 0;
            _os_log_impl(&dword_229538000, v111, v112, "%s %s Evaluated from %{BOOL}d to %{BOOL}d", v118, 0x22u);
            swift_arrayDestroy();
            MEMORY[0x22AAD4E50](v166, -1, -1);
            MEMORY[0x22AAD4E50](v118, -1, -1);

            (*(v116 + 8))(v161, v157);
          }

          else
          {

            (*(v116 + 8))(v114, v115);
          }

          sub_22973CDE8(v107 == 0);
        }

        else
        {
          v124 = *(v1 + 96);

          sub_2297A46D4();
          v125 = v124;
          v126 = sub_22A4DD05C();
          v127 = sub_22A4DDCCC();
          v128 = os_log_type_enabled(v126, v127);
          v129 = *(v1 + 168);
          v130 = *(v1 + 144);
          v131 = *(v1 + 152);
          v132 = *(v1 + 96);
          if (v128)
          {
            v133 = swift_slowAlloc();
            v134 = swift_slowAlloc();
            v168 = v134;
            *v133 = 136315650;
            v169 = 91;
            v170 = 0xE100000000000000;
            v167 = v129;
            v135 = [v132 logIdentifier];
            v136 = sub_22A4DD5EC();
            v162 = v130;
            v138 = v137;

            MEMORY[0x22AAD08C0](v136, v138);

            MEMORY[0x22AAD08C0](93, 0xE100000000000000);
            v139 = sub_2295A3E30(v169, v170, &v168);

            *(v133 + 4) = v139;
            *(v133 + 12) = 2080;
            *(v133 + 14) = sub_2295A3E30(0xD000000000000039, 0x800000022A594820, &v168);
            *(v133 + 22) = 1024;
            LODWORD(v135) = [v132 isAllowedToEnableAdaptiveTemperatureAutomations];

            *(v133 + 24) = v135;
            _os_log_impl(&dword_229538000, v126, v127, "%s %s Cannot determine qualification for all users - isAllowedToEnableAdaptiveTemperatureAutomations is %{BOOL}d and not changing", v133, 0x1Cu);
            swift_arrayDestroy();
            MEMORY[0x22AAD4E50](v134, -1, -1);
            MEMORY[0x22AAD4E50](v133, -1, -1);

            (*(v131 + 8))(v167, v162);
          }

          else
          {

            (*(v131 + 8))(v129, v130);
          }
        }

        v140 = *(v1 + 8);

        return v140();
      }

LABEL_61:
      v104 = sub_22A4DE0EC();
      goto LABEL_46;
    }

LABEL_63:
    __break(1u);
    return result;
  }

LABEL_4:
  if (v6 < 1)
  {
    __break(1u);
    goto LABEL_61;
  }

  v7 = 0;
  v2 = MEMORY[0x277D84F90];
  while (1)
  {
    *(v1 + 232) = v7;
    *(v1 + 240) = v2;
    v8 = *(v1 + 216);
    v9 = (v8 & 0xC000000000000001) != 0 ? MEMORY[0x22AAD13F0]() : *(v8 + 8 * v7 + 32);
    v10 = v9;
    *(v1 + 248) = v9;
    v11 = [*(v1 + 104) detailForUser_];
    if (!v11)
    {
      break;
    }

    v12 = v11;
    ObjectType = swift_getObjectType();
    if (([v12 isAtHome] & 1) == 0 && !objc_msgSend(v12, sel_isNotAtHome))
    {
      v77 = *(v1 + 96);
      sub_2297A46D4();
      v78 = v77;
      v79 = v10;
      v80 = sub_22A4DD05C();
      v81 = sub_22A4DDCCC();

      v82 = os_log_type_enabled(v80, v81);
      v83 = *(v1 + 184);
      v85 = *(v1 + 144);
      v84 = *(v1 + 152);
      if (v82)
      {
        v152 = *(v1 + 128);
        v146 = *(v1 + 136);
        v149 = *(v1 + 120);
        v165 = *(v1 + 184);
        v86 = *(v1 + 96);
        v155 = v81;
        v87 = swift_slowAlloc();
        v160 = swift_slowAlloc();
        v169 = v160;
        *v87 = 136315650;
        *(v1 + 32) = 91;
        *(v1 + 40) = 0xE100000000000000;
        v88 = [v86 logIdentifier];
        v89 = sub_22A4DD5EC();
        v156 = v85;
        v91 = v90;

        MEMORY[0x22AAD08C0](v89, v91);

        MEMORY[0x22AAD08C0](93, 0xE100000000000000);
        v92 = sub_2295A3E30(*(v1 + 32), *(v1 + 40), &v169);

        *(v87 + 4) = v92;
        *(v87 + 12) = 2080;
        *(v87 + 14) = sub_2295A3E30(0xD000000000000039, 0x800000022A594820, &v169);
        *(v87 + 22) = 2080;
        v93 = [v79 uuid];
        sub_22A4DB79C();

        sub_229746354(&qword_281403860, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
        v94 = sub_22A4DE5CC();
        v96 = v95;
        (*(v152 + 8))(v146, v149);
        v97 = sub_2295A3E30(v94, v96, &v169);

        *(v87 + 24) = v97;
        _os_log_impl(&dword_229538000, v80, v155, "%s %s Presence is expired for user %s: checking if they have any qualifying devices", v87, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x22AAD4E50](v160, -1, -1);
        MEMORY[0x22AAD4E50](v87, -1, -1);

        swift_unknownObjectRelease();
        (*(v84 + 8))(v165, v156);
      }

      else
      {
        swift_unknownObjectRelease();

        (*(v84 + 8))(v83, v85);
      }

      break;
    }

    v14 = [v12 deviceWhichUpdatedUserPresence];
    if (v14)
    {
      v15 = v14;
      v16 = [v14 version];
      if (!v16)
      {
        goto LABEL_26;
      }

      v17 = v16;
      v18 = [objc_opt_self() version13_0];
      v19 = [v17 compare_];

      if (v19 == -1)
      {

LABEL_26:
        v164 = v2;
        v48 = *(v1 + 96);
        sub_2297A46D4();
        v49 = v48;
        v50 = v10;
        v51 = v15;
        v52 = sub_22A4DD05C();
        v53 = sub_22A4DDCCC();

        v54 = os_log_type_enabled(v52, v53);
        v55 = *(v1 + 200);
        v57 = *(v1 + 144);
        v56 = *(v1 + 152);
        if (v54)
        {
          v145 = v53;
          v58 = *(v1 + 128);
          v59 = *(v1 + 136);
          v141 = *(v1 + 120);
          v151 = *(v1 + 200);
          v60 = *(v1 + 96);
          v148 = *(v1 + 144);
          v61 = swift_slowAlloc();
          v143 = swift_slowAlloc();
          v169 = v143;
          *v61 = 136315906;
          *(v1 + 64) = 91;
          *(v1 + 72) = 0xE100000000000000;
          v62 = [v60 logIdentifier];
          v159 = v50;
          v63 = sub_22A4DD5EC();
          v154 = v51;
          v65 = v64;

          MEMORY[0x22AAD08C0](v63, v65);

          MEMORY[0x22AAD08C0](93, 0xE100000000000000);
          v66 = sub_2295A3E30(*(v1 + 64), *(v1 + 72), &v169);

          *(v61 + 4) = v66;
          *(v61 + 12) = 2080;
          *(v61 + 14) = sub_2295A3E30(0xD000000000000039, 0x800000022A594820, &v169);
          *(v61 + 22) = 2080;
          v67 = [v159 uuid];
          sub_22A4DB79C();

          sub_229746354(&qword_281403860, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
          v68 = sub_22A4DE5CC();
          v70 = v69;
          (*(v58 + 8))(v59, v141);
          v71 = sub_2295A3E30(v68, v70, &v169);

          *(v61 + 24) = v71;
          *(v61 + 32) = 2080;
          v51 = v154;
          *(v1 + 88) = v154;
          sub_229562F68(0, &qword_27D87CEF0, off_278666100);
          v72 = sub_22A4DBA6C();
          v74 = sub_2295A3E30(v72, v73, &v169);

          *(v61 + 34) = v74;
          v50 = v159;
          _os_log_impl(&dword_229538000, v52, v145, "%s %s Unqualified user %s: sharing presence from unqualified device %s", v61, 0x2Au);
          swift_arrayDestroy();
          MEMORY[0x22AAD4E50](v143, -1, -1);
          MEMORY[0x22AAD4E50](v61, -1, -1);

          (*(v56 + 8))(v151, v148);
        }

        else
        {

          (*(v56 + 8))(v55, v57);
        }

        v2 = v164;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v2 = sub_22958B0B0(0, *(v164 + 2) + 1, 1, v164);
        }

        v76 = *(v2 + 2);
        v75 = *(v2 + 3);
        if (v76 >= v75 >> 1)
        {
          v2 = sub_22958B0B0((v75 > 1), v76 + 1, 1, v2);
        }

        swift_unknownObjectRelease();
        *(v2 + 2) = v76 + 1;
        v2[v76 + 32] = 0;
        goto LABEL_8;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v2 = sub_22958B0B0(0, *(v2 + 2) + 1, 1, v2);
      }

      v21 = *(v2 + 2);
      v20 = *(v2 + 3);
      if (v21 >= v20 >> 1)
      {
        v2 = sub_22958B0B0((v20 > 1), v21 + 1, 1, v2);
      }

      swift_unknownObjectRelease();
      *(v2 + 2) = v21 + 1;
      v2[v21 + 32] = 1;
    }

    else
    {
      v163 = v2;
      v22 = *(v1 + 96);
      sub_2297A46D4();
      v23 = v22;
      v24 = v10;
      swift_unknownObjectRetain();
      v25 = sub_22A4DD05C();
      v26 = sub_22A4DDCCC();

      swift_unknownObjectRelease();
      v27 = os_log_type_enabled(v25, v26);
      v28 = *(v1 + 192);
      v29 = *(v1 + 144);
      v30 = *(v1 + 152);
      if (v27)
      {
        v158 = *(v1 + 144);
        v31 = *(v1 + 136);
        v150 = v26;
        v142 = *(v1 + 120);
        v144 = *(v1 + 128);
        v153 = *(v1 + 192);
        v32 = *(v1 + 96);
        v33 = swift_slowAlloc();
        v147 = swift_slowAlloc();
        v169 = v147;
        *v33 = 136315906;
        *(v1 + 48) = 91;
        *(v1 + 56) = 0xE100000000000000;
        v34 = [v32 logIdentifier];
        v141 = ObjectType;
        v35 = sub_22A4DD5EC();
        v36 = v24;
        v38 = v37;

        MEMORY[0x22AAD08C0](v35, v38);

        MEMORY[0x22AAD08C0](93, 0xE100000000000000);
        v39 = sub_2295A3E30(*(v1 + 48), *(v1 + 56), &v169);

        *(v33 + 4) = v39;
        *(v33 + 12) = 2080;
        *(v33 + 14) = sub_2295A3E30(0xD000000000000039, 0x800000022A594820, &v169);
        *(v33 + 22) = 2080;
        v40 = [v36 uuid];
        sub_22A4DB79C();

        sub_229746354(&qword_281403860, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
        v41 = sub_22A4DE5CC();
        v43 = v42;
        (*(v144 + 8))(v31, v142);
        v44 = sub_2295A3E30(v41, v43, &v169);

        *(v33 + 24) = v44;
        *(v33 + 32) = 2080;
        *(v1 + 80) = v12;
        v45 = sub_22A4DBA6C();
        v47 = sub_2295A3E30(v45, v46, &v169);

        *(v33 + 34) = v47;
        _os_log_impl(&dword_229538000, v25, v150, "%s %s Unqualified user %s: missing device %s", v33, 0x2Au);
        swift_arrayDestroy();
        MEMORY[0x22AAD4E50](v147, -1, -1);
        MEMORY[0x22AAD4E50](v33, -1, -1);

        swift_unknownObjectRelease();
        (*(v30 + 8))(v153, v158);
      }

      else
      {

        swift_unknownObjectRelease();
        (*(v30 + 8))(v28, v29);
      }

      v2 = v163;
    }

LABEL_8:
    v7 = *(v1 + 232) + 1;
    if (v7 == *(v1 + 224))
    {
      goto LABEL_43;
    }
  }

  v98 = *(v1 + 96);
  v99 = [objc_msgSend(v98 dataSource)];
  *(v1 + 256) = v99;
  swift_unknownObjectRelease();
  v100 = [v98 workQueue];
  *(v1 + 264) = v100;
  v101 = swift_task_alloc();
  *(v1 + 272) = v101;
  *v101 = v1;
  v101[1] = sub_22973E734;

  return sub_229740E64(v99, v100);
}

uint64_t sub_22973E734()
{
  v2 = *v1;
  *(*v1 + 280) = v0;

  if (v0)
  {
    v3 = sub_22973FA04;
  }

  else
  {

    swift_unknownObjectRelease();
    v3 = sub_22973E858;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

id sub_22973E858()
{
  v173 = v0;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v2 = *(v0 + 240);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_22958B0B0(0, *(v2 + 2) + 1, 1, *(v0 + 240));
  }

  v4 = *(v2 + 2);
  v3 = *(v2 + 3);
  if (v4 >= v3 >> 1)
  {
    v2 = sub_22958B0B0((v3 > 1), v4 + 1, 1, v2);
  }

  *(v2 + 2) = v4 + 1;
  v2[v4 + 32] = 1;
  v5 = *(v0 + 232) + 1;
  if (v5 == *(v0 + 224))
  {
LABEL_6:

    v6 = *(v2 + 2);
    result = [*(v0 + 96) users];
    if (result)
    {
      v8 = result;
      v9 = sub_22A4DD83C();

      if (v9 >> 62)
      {
        v10 = sub_22A4DE0EC();
      }

      else
      {
        v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v6 == v10)
      {
        v11 = *(v2 + 2);
        v12 = v2 + 32;
        do
        {
          v13 = v11;
          if (!v11)
          {
            break;
          }

          v14 = *v12++;
          --v11;
        }

        while ((v14 & 1) != 0);
        v15 = *(v0 + 96);

        sub_2297A46D4();
        v16 = v15;
        v17 = sub_22A4DD05C();
        v18 = sub_22A4DDCCC();
        v19 = os_log_type_enabled(v17, v18);
        v20 = *(v0 + 176);
        v21 = *(v0 + 144);
        v22 = *(v0 + 152);
        v23 = *(v0 + 96);
        if (v19)
        {
          v24 = swift_slowAlloc();
          v166 = swift_slowAlloc();
          *v24 = 136315906;
          v170 = v166;
          v171 = 91;
          v172 = 0xE100000000000000;
          v161 = v20;
          v25 = [v23 logIdentifier];
          v26 = sub_22A4DD5EC();
          v156 = v21;
          v28 = v27;

          MEMORY[0x22AAD08C0](v26, v28);

          MEMORY[0x22AAD08C0](93, 0xE100000000000000);
          v29 = sub_2295A3E30(v171, v172, &v170);

          *(v24 + 4) = v29;
          *(v24 + 12) = 2080;
          *(v24 + 14) = sub_2295A3E30(0xD000000000000039, 0x800000022A594820, &v170);
          *(v24 + 22) = 1024;
          LODWORD(v25) = [v23 isAllowedToEnableAdaptiveTemperatureAutomations];

          *(v24 + 24) = v25;
          *(v24 + 28) = 1024;
          *(v24 + 30) = v13 == 0;
          _os_log_impl(&dword_229538000, v17, v18, "%s %s Evaluated from %{BOOL}d to %{BOOL}d", v24, 0x22u);
          swift_arrayDestroy();
          MEMORY[0x22AAD4E50](v166, -1, -1);
          MEMORY[0x22AAD4E50](v24, -1, -1);

          (*(v22 + 8))(v161, v156);
        }

        else
        {

          (*(v22 + 8))(v20, v21);
        }

        sub_22973CDE8(v13 == 0);
      }

      else
      {
        v101 = *(v0 + 96);

        sub_2297A46D4();
        v102 = v101;
        v103 = sub_22A4DD05C();
        v104 = sub_22A4DDCCC();
        v105 = os_log_type_enabled(v103, v104);
        v106 = *(v0 + 168);
        v107 = *(v0 + 144);
        v108 = *(v0 + 152);
        v109 = *(v0 + 96);
        if (v105)
        {
          v110 = swift_slowAlloc();
          v111 = swift_slowAlloc();
          *v110 = 136315650;
          v170 = v111;
          v171 = 91;
          v172 = 0xE100000000000000;
          v168 = v106;
          v112 = [v109 logIdentifier];
          v113 = sub_22A4DD5EC();
          v164 = v107;
          v115 = v114;

          MEMORY[0x22AAD08C0](v113, v115);

          MEMORY[0x22AAD08C0](93, 0xE100000000000000);
          v116 = sub_2295A3E30(v171, v172, &v170);

          *(v110 + 4) = v116;
          *(v110 + 12) = 2080;
          *(v110 + 14) = sub_2295A3E30(0xD000000000000039, 0x800000022A594820, &v170);
          *(v110 + 22) = 1024;
          LODWORD(v112) = [v109 isAllowedToEnableAdaptiveTemperatureAutomations];

          *(v110 + 24) = v112;
          _os_log_impl(&dword_229538000, v103, v104, "%s %s Cannot determine qualification for all users - isAllowedToEnableAdaptiveTemperatureAutomations is %{BOOL}d and not changing", v110, 0x1Cu);
          swift_arrayDestroy();
          MEMORY[0x22AAD4E50](v111, -1, -1);
          MEMORY[0x22AAD4E50](v110, -1, -1);

          (*(v108 + 8))(v168, v164);
        }

        else
        {

          (*(v108 + 8))(v106, v107);
        }
      }

      v117 = *(v0 + 8);

      return v117();
    }

    else
    {
      __break(1u);
    }

    return result;
  }

  v30 = &selRef_delayInSecs;
  v146 = v2;
  while (1)
  {
    *(v0 + 232) = v5;
    *(v0 + 240) = v2;
    v49 = *(v0 + 216);
    v50 = (v49 & 0xC000000000000001) != 0 ? MEMORY[0x22AAD13F0]() : *(v49 + 8 * v5 + 32);
    v51 = v50;
    *(v0 + 248) = v50;
    v52 = [*(v0 + 104) v30[191]];
    if (!v52)
    {
      break;
    }

    v53 = v52;
    swift_getObjectType();
    if (([v53 isAtHome] & 1) == 0 && !objc_msgSend(v53, sel_isNotAtHome))
    {
      v118 = *(v0 + 96);
      sub_2297A46D4();
      v119 = v118;
      v120 = v51;
      v121 = sub_22A4DD05C();
      v122 = sub_22A4DDCCC();

      v123 = os_log_type_enabled(v121, v122);
      v124 = *(v0 + 184);
      v126 = *(v0 + 144);
      v125 = *(v0 + 152);
      if (v123)
      {
        v165 = *(v0 + 184);
        v169 = *(v0 + 144);
        v127 = *(v0 + 136);
        v152 = *(v0 + 120);
        v155 = *(v0 + 128);
        v128 = *(v0 + 96);
        v129 = swift_slowAlloc();
        v159 = swift_slowAlloc();
        v171 = v159;
        *v129 = 136315650;
        *(v0 + 32) = 91;
        *(v0 + 40) = 0xE100000000000000;
        v130 = [v128 logIdentifier];
        v131 = sub_22A4DD5EC();
        logb = v122;
        v133 = v132;

        MEMORY[0x22AAD08C0](v131, v133);

        MEMORY[0x22AAD08C0](93, 0xE100000000000000);
        v134 = sub_2295A3E30(*(v0 + 32), *(v0 + 40), &v171);

        *(v129 + 4) = v134;
        *(v129 + 12) = 2080;
        *(v129 + 14) = sub_2295A3E30(0xD000000000000039, 0x800000022A594820, &v171);
        *(v129 + 22) = 2080;
        v135 = [v120 uuid];
        sub_22A4DB79C();

        sub_229746354(&qword_281403860, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
        v136 = sub_22A4DE5CC();
        v138 = v137;
        (*(v155 + 8))(v127, v152);
        v139 = sub_2295A3E30(v136, v138, &v171);

        *(v129 + 24) = v139;
        _os_log_impl(&dword_229538000, v121, logb, "%s %s Presence is expired for user %s: checking if they have any qualifying devices", v129, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x22AAD4E50](v159, -1, -1);
        MEMORY[0x22AAD4E50](v129, -1, -1);

        swift_unknownObjectRelease();
        (*(v125 + 8))(v165, v169);
      }

      else
      {
        swift_unknownObjectRelease();

        (*(v125 + 8))(v124, v126);
      }

      break;
    }

    v54 = [v53 deviceWhichUpdatedUserPresence];
    if (v54)
    {
      v64 = v54;
      v65 = [v54 version];
      if (v65)
      {
        v66 = v65;
        v67 = [objc_opt_self() version13_0];
        v68 = [v66 compare_];

        if (v68 != -1)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v2 = sub_22958B0B0(0, *(v2 + 2) + 1, 1, v2);
          }

          v70 = *(v2 + 2);
          v69 = *(v2 + 3);
          v71 = v70 + 1;
          if (v70 >= v69 >> 1)
          {
            v2 = sub_22958B0B0((v69 > 1), v70 + 1, 1, v2);
          }

          v72 = 1;
          goto LABEL_43;
        }
      }

      v73 = *(v0 + 96);
      sub_2297A46D4();
      v74 = v73;
      v75 = v51;
      v76 = v64;
      v77 = sub_22A4DD05C();
      v78 = sub_22A4DDCCC();

      v163 = v76;
      v167 = v78;
      v79 = os_log_type_enabled(v77, v78);
      v80 = *(v0 + 200);
      v82 = *(v0 + 144);
      v81 = *(v0 + 152);
      if (v79)
      {
        v144 = *(v0 + 136);
        v145 = *(v0 + 128);
        loga = v77;
        v83 = *(v0 + 120);
        v158 = *(v0 + 200);
        v84 = *(v0 + 96);
        v85 = swift_slowAlloc();
        v151 = swift_slowAlloc();
        v171 = v151;
        *v85 = 136315906;
        *(v0 + 64) = 91;
        *(v0 + 72) = 0xE100000000000000;
        v86 = [v84 logIdentifier];
        v87 = sub_22A4DD5EC();
        v154 = v82;
        v89 = v88;

        v90 = v87;
        v2 = v146;
        MEMORY[0x22AAD08C0](v90, v89);

        MEMORY[0x22AAD08C0](93, 0xE100000000000000);
        v91 = sub_2295A3E30(*(v0 + 64), *(v0 + 72), &v171);

        *(v85 + 4) = v91;
        *(v85 + 12) = 2080;
        *(v85 + 14) = sub_2295A3E30(0xD000000000000039, 0x800000022A594820, &v171);
        *(v85 + 22) = 2080;
        v92 = [v75 uuid];
        sub_22A4DB79C();

        sub_229746354(&qword_281403860, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
        v93 = sub_22A4DE5CC();
        v95 = v94;
        (*(v145 + 8))(v144, v83);
        v96 = sub_2295A3E30(v93, v95, &v171);

        *(v85 + 24) = v96;
        *(v85 + 32) = 2080;
        *(v0 + 88) = v163;
        sub_229562F68(0, &qword_27D87CEF0, off_278666100);
        v97 = sub_22A4DBA6C();
        v99 = sub_2295A3E30(v97, v98, &v171);

        *(v85 + 34) = v99;
        _os_log_impl(&dword_229538000, loga, v167, "%s %s Unqualified user %s: sharing presence from unqualified device %s", v85, 0x2Au);
        swift_arrayDestroy();
        MEMORY[0x22AAD4E50](v151, -1, -1);
        MEMORY[0x22AAD4E50](v85, -1, -1);

        (*(v81 + 8))(v158, v154);
      }

      else
      {

        (*(v81 + 8))(v80, v82);
      }

      v30 = &selRef_delayInSecs;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v2 = sub_22958B0B0(0, *(v2 + 2) + 1, 1, v2);
      }

      v70 = *(v2 + 2);
      v100 = *(v2 + 3);
      v71 = v70 + 1;
      if (v70 >= v100 >> 1)
      {
        v2 = sub_22958B0B0((v100 > 1), v70 + 1, 1, v2);
      }

      v72 = 0;
LABEL_43:

      swift_unknownObjectRelease();
      *(v2 + 2) = v71;
      v2[v70 + 32] = v72;
      v5 = *(v0 + 232) + 1;
      if (v5 == *(v0 + 224))
      {
        goto LABEL_6;
      }

      v146 = v2;
    }

    else
    {
      v55 = *(v0 + 96);
      sub_2297A46D4();
      v56 = v55;
      v57 = v51;
      swift_unknownObjectRetain();
      v58 = sub_22A4DD05C();
      v59 = sub_22A4DDCCC();

      swift_unknownObjectRelease();
      v162 = v59;
      v60 = os_log_type_enabled(v58, v59);
      v61 = *(v0 + 192);
      v62 = *(v0 + 144);
      v63 = *(v0 + 152);
      if (v60)
      {
        v31 = *(v0 + 128);
        v32 = *(v0 + 136);
        log = *(v0 + 120);
        v157 = *(v0 + 192);
        v33 = *(v0 + 96);
        v153 = *(v0 + 144);
        v34 = swift_slowAlloc();
        v150 = swift_slowAlloc();
        v171 = v150;
        *v34 = 136315906;
        *(v0 + 48) = 91;
        *(v0 + 56) = 0xE100000000000000;
        v35 = [v33 logIdentifier];
        v36 = sub_22A4DD5EC();
        v160 = v53;
        v38 = v37;

        MEMORY[0x22AAD08C0](v36, v38);

        MEMORY[0x22AAD08C0](93, 0xE100000000000000);
        v39 = sub_2295A3E30(*(v0 + 48), *(v0 + 56), &v171);

        *(v34 + 4) = v39;
        *(v34 + 12) = 2080;
        *(v34 + 14) = sub_2295A3E30(0xD000000000000039, 0x800000022A594820, &v171);
        *(v34 + 22) = 2080;
        v40 = [v57 uuid];
        sub_22A4DB79C();

        sub_229746354(&qword_281403860, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
        v41 = sub_22A4DE5CC();
        v43 = v42;
        v44 = v32;
        v2 = v146;
        (*(v31 + 8))(v44, log);
        v30 = &selRef_delayInSecs;
        v45 = sub_2295A3E30(v41, v43, &v171);

        *(v34 + 24) = v45;
        *(v34 + 32) = 2080;
        *(v0 + 80) = v160;
        v46 = sub_22A4DBA6C();
        v48 = sub_2295A3E30(v46, v47, &v171);

        *(v34 + 34) = v48;
        _os_log_impl(&dword_229538000, v58, v162, "%s %s Unqualified user %s: missing device %s", v34, 0x2Au);
        swift_arrayDestroy();
        MEMORY[0x22AAD4E50](v150, -1, -1);
        MEMORY[0x22AAD4E50](v34, -1, -1);

        swift_unknownObjectRelease();
        (*(v63 + 8))(v157, v153);
      }

      else
      {

        swift_unknownObjectRelease();
        (*(v63 + 8))(v61, v62);
      }

      v5 = *(v0 + 232) + 1;
      if (v5 == *(v0 + 224))
      {
        goto LABEL_6;
      }
    }
  }

  v140 = *(v0 + 96);
  v141 = [objc_msgSend(v140 dataSource)];
  *(v0 + 256) = v141;
  swift_unknownObjectRelease();
  v142 = [v140 workQueue];
  *(v0 + 264) = v142;
  v143 = swift_task_alloc();
  *(v0 + 272) = v143;
  *v143 = v0;
  v143[1] = sub_22973E734;

  return sub_229740E64(v141, v142);
}

id sub_22973FA04()
{
  v200 = v0;
  v1 = *(v0 + 248);
  v2 = *(v0 + 96);

  swift_unknownObjectRelease();
  sub_2297A46D4();
  v3 = v2;
  v4 = v1;
  v5 = sub_22A4DD05C();
  v6 = sub_22A4DDCCC();

  if (os_log_type_enabled(v5, v6))
  {
    v184 = *(v0 + 152);
    v7 = *(v0 + 136);
    v186 = *(v0 + 144);
    v192 = *(v0 + 160);
    v8 = *(v0 + 128);
    v171 = *(v0 + 248);
    v175 = *(v0 + 120);
    v9 = *(v0 + 96);
    v10 = swift_slowAlloc();
    v179 = swift_slowAlloc();
    v198 = v179;
    *v10 = 136315650;
    *(v0 + 16) = 91;
    *(v0 + 24) = 0xE100000000000000;
    v11 = [v9 logIdentifier];
    v12 = sub_22A4DD5EC();
    v14 = v13;

    MEMORY[0x22AAD08C0](v12, v14);

    MEMORY[0x22AAD08C0](93, 0xE100000000000000);
    v15 = sub_2295A3E30(*(v0 + 16), *(v0 + 24), &v198);

    *(v10 + 4) = v15;
    *(v10 + 12) = 2080;
    *(v10 + 14) = sub_2295A3E30(0xD000000000000039, 0x800000022A594820, &v198);
    *(v10 + 22) = 2080;
    v16 = [v171 uuid];
    sub_22A4DB79C();

    sub_229746354(&qword_281403860, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v17 = sub_22A4DE5CC();
    v19 = v18;
    (*(v8 + 8))(v7, v175);
    v20 = sub_2295A3E30(v17, v19, &v198);

    *(v10 + 24) = v20;
    _os_log_impl(&dword_229538000, v5, v6, "%s %s Found user %s with no qualified devices", v10, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v179, -1, -1);
    MEMORY[0x22AAD4E50](v10, -1, -1);

    (*(v184 + 8))(v192, v186);
  }

  else
  {
    v22 = *(v0 + 152);
    v21 = *(v0 + 160);
    v23 = *(v0 + 144);

    (*(v22 + 8))(v21, v23);
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v25 = *(v0 + 240);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v25 = sub_22958B0B0(0, *(v25 + 2) + 1, 1, *(v0 + 240));
  }

  v27 = *(v25 + 2);
  v26 = *(v25 + 3);
  if (v27 >= v26 >> 1)
  {
    v25 = sub_22958B0B0((v26 > 1), v27 + 1, 1, v25);
  }

  v28 = *(v0 + 248);

  *(v25 + 2) = v27 + 1;
  v25[v27 + 32] = 0;
  v29 = *(v0 + 232) + 1;
  if (v29 != *(v0 + 224))
  {
    while (2)
    {
      v167 = v25;
      while (1)
      {
        *(v0 + 232) = v29;
        *(v0 + 240) = v25;
        v71 = *(v0 + 216);
        if ((v71 & 0xC000000000000001) != 0)
        {
          v72 = MEMORY[0x22AAD13F0]();
        }

        else
        {
          v72 = *(v71 + 8 * v29 + 32);
        }

        v73 = v72;
        *(v0 + 248) = v72;
        v74 = [*(v0 + 104) detailForUser_];
        if (!v74)
        {
          goto LABEL_59;
        }

        v75 = v74;
        swift_getObjectType();
        if (([v75 isAtHome] & 1) == 0 && !objc_msgSend(v75, sel_isNotAtHome))
        {
          v139 = *(v0 + 96);
          sub_2297A46D4();
          v140 = v139;
          v141 = v73;
          v142 = sub_22A4DD05C();
          v143 = sub_22A4DDCCC();

          v144 = os_log_type_enabled(v142, v143);
          v145 = *(v0 + 184);
          v147 = *(v0 + 144);
          v146 = *(v0 + 152);
          if (v144)
          {
            v191 = *(v0 + 184);
            v196 = *(v0 + 144);
            v148 = *(v0 + 136);
            v174 = *(v0 + 120);
            v178 = *(v0 + 128);
            v149 = *(v0 + 96);
            v150 = swift_slowAlloc();
            v183 = swift_slowAlloc();
            v198 = v183;
            *v150 = 136315650;
            *(v0 + 32) = 91;
            *(v0 + 40) = 0xE100000000000000;
            v151 = [v149 logIdentifier];
            logb = v143;
            v152 = sub_22A4DD5EC();
            v154 = v153;

            MEMORY[0x22AAD08C0](v152, v154);

            MEMORY[0x22AAD08C0](93, 0xE100000000000000);
            v155 = sub_2295A3E30(*(v0 + 32), *(v0 + 40), &v198);

            *(v150 + 4) = v155;
            *(v150 + 12) = 2080;
            *(v150 + 14) = sub_2295A3E30(0xD000000000000039, 0x800000022A594820, &v198);
            *(v150 + 22) = 2080;
            v156 = [v141 uuid];
            sub_22A4DB79C();

            sub_229746354(&qword_281403860, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
            v157 = sub_22A4DE5CC();
            v159 = v158;
            (*(v178 + 8))(v148, v174);
            v160 = sub_2295A3E30(v157, v159, &v198);

            *(v150 + 24) = v160;
            _os_log_impl(&dword_229538000, v142, logb, "%s %s Presence is expired for user %s: checking if they have any qualifying devices", v150, 0x20u);
            swift_arrayDestroy();
            MEMORY[0x22AAD4E50](v183, -1, -1);
            MEMORY[0x22AAD4E50](v150, -1, -1);

            swift_unknownObjectRelease();
            (*(v146 + 8))(v191, v196);
          }

          else
          {
            swift_unknownObjectRelease();

            (*(v146 + 8))(v145, v147);
          }

LABEL_59:
          v161 = *(v0 + 96);
          v162 = [objc_msgSend(v161 dataSource)];
          *(v0 + 256) = v162;
          swift_unknownObjectRelease();
          v163 = [v161 workQueue];
          *(v0 + 264) = v163;
          v164 = swift_task_alloc();
          *(v0 + 272) = v164;
          *v164 = v0;
          v164[1] = sub_22973E734;

          return sub_229740E64(v162, v163);
        }

        v76 = [v75 deviceWhichUpdatedUserPresence];
        if (v76)
        {
          break;
        }

        v77 = *(v0 + 96);
        sub_2297A46D4();
        v78 = v77;
        v79 = v73;
        swift_unknownObjectRetain();
        v80 = sub_22A4DD05C();
        v81 = sub_22A4DDCCC();

        swift_unknownObjectRelease();
        v188 = v81;
        v82 = os_log_type_enabled(v80, v81);
        v83 = *(v0 + 192);
        v84 = *(v0 + 144);
        v85 = *(v0 + 152);
        if (v82)
        {
          v54 = *(v0 + 128);
          v55 = *(v0 + 136);
          log = *(v0 + 120);
          v181 = *(v0 + 192);
          v56 = *(v0 + 96);
          v176 = *(v0 + 144);
          v57 = swift_slowAlloc();
          v172 = swift_slowAlloc();
          v198 = v172;
          *v57 = 136315906;
          *(v0 + 48) = 91;
          *(v0 + 56) = 0xE100000000000000;
          v58 = [v56 logIdentifier];
          v59 = sub_22A4DD5EC();
          v185 = v75;
          v61 = v60;

          MEMORY[0x22AAD08C0](v59, v61);

          MEMORY[0x22AAD08C0](93, 0xE100000000000000);
          v62 = sub_2295A3E30(*(v0 + 48), *(v0 + 56), &v198);

          *(v57 + 4) = v62;
          *(v57 + 12) = 2080;
          *(v57 + 14) = sub_2295A3E30(0xD000000000000039, 0x800000022A594820, &v198);
          *(v57 + 22) = 2080;
          v63 = [v79 uuid];
          sub_22A4DB79C();

          sub_229746354(&qword_281403860, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
          v64 = sub_22A4DE5CC();
          v66 = v65;
          (*(v54 + 8))(v55, log);
          v25 = v167;
          v67 = sub_2295A3E30(v64, v66, &v198);

          *(v57 + 24) = v67;
          *(v57 + 32) = 2080;
          *(v0 + 80) = v185;
          v68 = sub_22A4DBA6C();
          v70 = sub_2295A3E30(v68, v69, &v198);

          *(v57 + 34) = v70;
          _os_log_impl(&dword_229538000, v80, v188, "%s %s Unqualified user %s: missing device %s", v57, 0x2Au);
          swift_arrayDestroy();
          MEMORY[0x22AAD4E50](v172, -1, -1);
          MEMORY[0x22AAD4E50](v57, -1, -1);

          swift_unknownObjectRelease();
          (*(v85 + 8))(v181, v176);
        }

        else
        {

          swift_unknownObjectRelease();
          (*(v85 + 8))(v83, v84);
        }

        v29 = *(v0 + 232) + 1;
        if (v29 == *(v0 + 224))
        {
          goto LABEL_9;
        }
      }

      v86 = v76;
      v87 = [v76 version];
      if (v87)
      {
        v88 = v87;
        v89 = [objc_opt_self() version13_0];
        v90 = [v88 compare_];

        if (v90 != -1)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v25 = sub_22958B0B0(0, *(v25 + 2) + 1, 1, v25);
          }

          v92 = *(v25 + 2);
          v91 = *(v25 + 3);
          v93 = v92 + 1;
          if (v92 >= v91 >> 1)
          {
            v25 = sub_22958B0B0((v91 > 1), v92 + 1, 1, v25);
          }

          v94 = 1;
          goto LABEL_46;
        }
      }

      v95 = *(v0 + 96);
      sub_2297A46D4();
      v96 = v95;
      v97 = v73;
      v98 = v86;
      v99 = sub_22A4DD05C();
      v100 = sub_22A4DDCCC();

      v189 = v98;
      v194 = v100;
      v101 = os_log_type_enabled(v99, v100);
      v102 = *(v0 + 200);
      v104 = *(v0 + 144);
      v103 = *(v0 + 152);
      if (v101)
      {
        v165 = *(v0 + 136);
        v166 = *(v0 + 128);
        loga = v99;
        v105 = *(v0 + 120);
        v182 = *(v0 + 200);
        v106 = *(v0 + 96);
        v107 = swift_slowAlloc();
        v173 = swift_slowAlloc();
        v198 = v173;
        *v107 = 136315906;
        *(v0 + 64) = 91;
        *(v0 + 72) = 0xE100000000000000;
        v108 = [v106 logIdentifier];
        v109 = sub_22A4DD5EC();
        v177 = v104;
        v111 = v110;

        MEMORY[0x22AAD08C0](v109, v111);

        MEMORY[0x22AAD08C0](93, 0xE100000000000000);
        v112 = sub_2295A3E30(*(v0 + 64), *(v0 + 72), &v198);

        *(v107 + 4) = v112;
        *(v107 + 12) = 2080;
        *(v107 + 14) = sub_2295A3E30(0xD000000000000039, 0x800000022A594820, &v198);
        *(v107 + 22) = 2080;
        v113 = [v97 uuid];
        sub_22A4DB79C();

        sub_229746354(&qword_281403860, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
        v114 = sub_22A4DE5CC();
        v116 = v115;
        (*(v166 + 8))(v165, v105);
        v117 = sub_2295A3E30(v114, v116, &v198);

        *(v107 + 24) = v117;
        *(v107 + 32) = 2080;
        *(v0 + 88) = v189;
        sub_229562F68(0, &qword_27D87CEF0, off_278666100);
        v118 = sub_22A4DBA6C();
        v120 = sub_2295A3E30(v118, v119, &v198);

        *(v107 + 34) = v120;
        _os_log_impl(&dword_229538000, loga, v194, "%s %s Unqualified user %s: sharing presence from unqualified device %s", v107, 0x2Au);
        swift_arrayDestroy();
        MEMORY[0x22AAD4E50](v173, -1, -1);
        MEMORY[0x22AAD4E50](v107, -1, -1);

        (*(v103 + 8))(v182, v177);
      }

      else
      {

        (*(v103 + 8))(v102, v104);
      }

      v25 = v167;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v25 = sub_22958B0B0(0, *(v167 + 2) + 1, 1, v167);
      }

      v92 = *(v25 + 2);
      v121 = *(v25 + 3);
      v93 = v92 + 1;
      if (v92 >= v121 >> 1)
      {
        v25 = sub_22958B0B0((v121 > 1), v92 + 1, 1, v25);
      }

      v94 = 0;
LABEL_46:

      swift_unknownObjectRelease();
      *(v25 + 2) = v93;
      v25[v92 + 32] = v94;
      v29 = *(v0 + 232) + 1;
      if (v29 != *(v0 + 224))
      {
        continue;
      }

      break;
    }
  }

LABEL_9:

  v30 = *(v25 + 2);
  result = [*(v0 + 96) users];
  if (result)
  {
    v32 = result;
    v33 = sub_22A4DD83C();

    if (v33 >> 62)
    {
      v34 = sub_22A4DE0EC();
    }

    else
    {
      v34 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v30 == v34)
    {
      v35 = *(v25 + 2);
      v36 = v25 + 32;
      do
      {
        v37 = v35;
        if (!v35)
        {
          break;
        }

        v38 = *v36++;
        --v35;
      }

      while ((v38 & 1) != 0);
      v39 = *(v0 + 96);

      sub_2297A46D4();
      v40 = v39;
      v41 = sub_22A4DD05C();
      v42 = sub_22A4DDCCC();
      v43 = os_log_type_enabled(v41, v42);
      v44 = *(v0 + 176);
      v45 = *(v0 + 144);
      v46 = *(v0 + 152);
      v47 = *(v0 + 96);
      if (v43)
      {
        v48 = swift_slowAlloc();
        v187 = swift_slowAlloc();
        *v48 = 136315906;
        v197 = v187;
        v198 = 91;
        v199 = 0xE100000000000000;
        v193 = v44;
        v49 = [v47 logIdentifier];
        v50 = sub_22A4DD5EC();
        v180 = v45;
        v52 = v51;

        MEMORY[0x22AAD08C0](v50, v52);

        MEMORY[0x22AAD08C0](93, 0xE100000000000000);
        v53 = sub_2295A3E30(v198, v199, &v197);

        *(v48 + 4) = v53;
        *(v48 + 12) = 2080;
        *(v48 + 14) = sub_2295A3E30(0xD000000000000039, 0x800000022A594820, &v197);
        *(v48 + 22) = 1024;
        LODWORD(v49) = [v47 isAllowedToEnableAdaptiveTemperatureAutomations];

        *(v48 + 24) = v49;
        *(v48 + 28) = 1024;
        *(v48 + 30) = v37 == 0;
        _os_log_impl(&dword_229538000, v41, v42, "%s %s Evaluated from %{BOOL}d to %{BOOL}d", v48, 0x22u);
        swift_arrayDestroy();
        MEMORY[0x22AAD4E50](v187, -1, -1);
        MEMORY[0x22AAD4E50](v48, -1, -1);

        (*(v46 + 8))(v193, v180);
      }

      else
      {

        (*(v46 + 8))(v44, v45);
      }

      sub_22973CDE8(v37 == 0);
    }

    else
    {
      v122 = *(v0 + 96);

      sub_2297A46D4();
      v123 = v122;
      v124 = sub_22A4DD05C();
      v125 = sub_22A4DDCCC();
      v126 = os_log_type_enabled(v124, v125);
      v127 = *(v0 + 168);
      v128 = *(v0 + 144);
      v129 = *(v0 + 152);
      v130 = *(v0 + 96);
      if (v126)
      {
        v131 = swift_slowAlloc();
        v132 = swift_slowAlloc();
        *v131 = 136315650;
        v197 = v132;
        v198 = 91;
        v199 = 0xE100000000000000;
        v195 = v127;
        v133 = [v130 logIdentifier];
        v134 = sub_22A4DD5EC();
        v190 = v128;
        v136 = v135;

        MEMORY[0x22AAD08C0](v134, v136);

        MEMORY[0x22AAD08C0](93, 0xE100000000000000);
        v137 = sub_2295A3E30(v198, v199, &v197);

        *(v131 + 4) = v137;
        *(v131 + 12) = 2080;
        *(v131 + 14) = sub_2295A3E30(0xD000000000000039, 0x800000022A594820, &v197);
        *(v131 + 22) = 1024;
        LODWORD(v133) = [v130 isAllowedToEnableAdaptiveTemperatureAutomations];

        *(v131 + 24) = v133;
        _os_log_impl(&dword_229538000, v124, v125, "%s %s Cannot determine qualification for all users - isAllowedToEnableAdaptiveTemperatureAutomations is %{BOOL}d and not changing", v131, 0x1Cu);
        swift_arrayDestroy();
        MEMORY[0x22AAD4E50](v132, -1, -1);
        MEMORY[0x22AAD4E50](v131, -1, -1);

        (*(v129 + 8))(v195, v190);
      }

      else
      {

        (*(v129 + 8))(v127, v128);
      }
    }

    v138 = *(v0 + 8);

    return v138();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_229740E64(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_22A4DB7DC();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v5 = sub_22A4DD07C();
  v3[8] = v5;
  v3[9] = *(v5 - 8);
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_229740F90, 0, 0);
}

uint64_t sub_229740F90()
{
  v63 = v0;
  v1 = [*(v0 + 32) accountHandle];
  *(v0 + 96) = v1;
  if (!v1)
  {
LABEL_9:
    v6 = *(v0 + 32);
    sub_229562F68(0, &qword_2814017B0, off_278666198);
    sub_2297A46D4();
    v7 = v6;
    v8 = sub_22A4DD05C();
    v9 = sub_22A4DDCEC();

    v10 = os_log_type_enabled(v8, v9);
    v12 = *(v0 + 72);
    v11 = *(v0 + 80);
    v13 = *(v0 + 64);
    if (v10)
    {
      v60 = *(v0 + 80);
      v15 = *(v0 + 48);
      v14 = *(v0 + 56);
      v17 = *(v0 + 32);
      v16 = *(v0 + 40);
      v18 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      v62[0] = v58;
      *v18 = 136315394;
      v19 = [v17 uuid];
      sub_22A4DB79C();

      sub_229746354(&qword_281403860, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v20 = sub_22A4DE5CC();
      v56 = v13;
      v22 = v21;
      (*(v15 + 8))(v14, v16);
      v23 = sub_2295A3E30(v20, v22, v62);

      *(v18 + 4) = v23;
      *(v18 + 12) = 2080;
      *(v18 + 14) = sub_2295A3E30(0xD000000000000040, 0x800000022A5948A0, v62);
      _os_log_impl(&dword_229538000, v8, v9, "User %s %s Unknown - missing account handle or IDS query controller", v18, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v58, -1, -1);
      MEMORY[0x22AAD4E50](v18, -1, -1);

      (*(v12 + 8))(v60, v56);
    }

    else
    {

      (*(v12 + 8))(v11, v13);
    }

    [objc_opt_self() hmErrorWithCode_];
    swift_willThrow();
    goto LABEL_24;
  }

  v2 = v1;
  if (!*(v0 + 16))
  {

    goto LABEL_9;
  }

  swift_unknownObjectRetain();
  v3 = [v2 type];
  if (v3 == 1)
  {
    v4 = [v2 value];
    if (!v4)
    {
      sub_22A4DD5EC();
      v4 = sub_22A4DD5AC();
    }

    v5 = MEMORY[0x22AAD2AB0](v4);
LABEL_16:
    v24 = v5;

    if (v24)
    {
      v25 = sub_22A4DD5EC();
      v27 = v26;

      ObjectType = swift_getObjectType();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D1D0, &qword_22A578100);
      v29 = swift_allocObject();
      *(v0 + 104) = v29;
      v30 = MEMORY[0x277D837D0];
      *(v29 + 16) = xmmword_22A576180;
      *(v29 + 56) = v30;
      *(v29 + 32) = v25;
      *(v29 + 40) = v27;
      v31 = [objc_opt_self() currentIDInfo];
      *(v0 + 112) = v31;
      v32 = swift_task_alloc();
      *(v0 + 120) = v32;
      *v32 = v0;
      v32[1] = sub_2297416A8;
      v33 = *(v0 + 24);

      return sub_22973AF24(v29, v31, v33, ObjectType);
    }

    goto LABEL_20;
  }

  if (v3 == 2)
  {
    v4 = [v2 value];
    if (!v4)
    {
      sub_22A4DD5EC();
      v4 = sub_22A4DD5AC();
    }

    v5 = IDSCopyIDForPhoneNumber();
    goto LABEL_16;
  }

LABEL_20:
  v35 = *(v0 + 32);
  sub_229562F68(0, &qword_2814017B0, off_278666198);
  sub_2297A46D4();
  v36 = v35;
  v37 = sub_22A4DD05C();
  v38 = sub_22A4DDCEC();

  v39 = os_log_type_enabled(v37, v38);
  v40 = *(v0 + 88);
  v42 = *(v0 + 64);
  v41 = *(v0 + 72);
  if (v39)
  {
    v59 = *(v0 + 64);
    v61 = *(v0 + 88);
    v57 = v38;
    v44 = *(v0 + 48);
    v43 = *(v0 + 56);
    log = v37;
    v46 = *(v0 + 32);
    v45 = *(v0 + 40);
    v47 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    v62[0] = v55;
    *v47 = 136315394;
    v48 = [v46 uuid];
    sub_22A4DB79C();

    sub_229746354(&qword_281403860, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v49 = sub_22A4DE5CC();
    v51 = v50;
    (*(v44 + 8))(v43, v45);
    v52 = sub_2295A3E30(v49, v51, v62);

    *(v47 + 4) = v52;
    *(v47 + 12) = 2080;
    *(v47 + 14) = sub_2295A3E30(0xD000000000000040, 0x800000022A5948A0, v62);
    _os_log_impl(&dword_229538000, log, v57, "User %s %s Unknown - found handle with unsupported type", v47, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v55, -1, -1);
    MEMORY[0x22AAD4E50](v47, -1, -1);

    (*(v41 + 8))(v61, v59);
  }

  else
  {

    (*(v41 + 8))(v40, v42);
  }

  [objc_opt_self() hmErrorWithCode_];
  swift_willThrow();
  swift_unknownObjectRelease();

LABEL_24:

  v53 = *(v0 + 8);

  return v53();
}

uint64_t sub_2297416A8()
{
  v2 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v3 = sub_229741864;
  }

  else
  {

    v3 = sub_2297417CC;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2297417CC()
{
  swift_unknownObjectRelease();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_229741864()
{
  v1 = *(v0 + 96);

  swift_unknownObjectRelease();

  v2 = *(v0 + 8);

  return v2();
}

void sub_229741908(uint64_t a1)
{
  swift_getObjectType();
  v3 = sub_22A4DB21C();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v53 - v8;
  v10 = sub_22A4DD07C();
  v58 = *(v10 - 8);
  v59 = v10;
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v53 - v14;
  v16 = [v1 homeManager];
  if (v16)
  {
    v17 = v16;
    if ([v16 hasLoadedData])
    {
      sub_2297A46D4();
      v18 = *(v4 + 16);
      v18(v9, a1, v3);
      v18(v7, a1, v3);
      v19 = v1;
      v20 = sub_22A4DD05C();
      v21 = sub_22A4DDCCC();

      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        v56 = v23;
        *v22 = 136315906;
        v60 = 91;
        v61 = 0xE100000000000000;
        v62 = v23;
        v24 = [v19 logIdentifier];
        v55 = v20;
        v25 = v24;
        v26 = sub_22A4DD5EC();
        v57 = v19;
        v27 = v26;
        v54 = v21;
        v29 = v28;

        MEMORY[0x22AAD08C0](v27, v29);

        MEMORY[0x22AAD08C0](93, 0xE100000000000000);
        v30 = sub_2295A3E30(v60, v61, &v62);

        *(v22 + 4) = v30;
        *(v22 + 12) = 2080;
        *(v22 + 14) = sub_2295A3E30(0xD000000000000049, 0x800000022A5949F0, &v62);
        *(v22 + 22) = 2080;
        v31 = sub_22A4DB1EC();
        v32 = sub_22A4DD5EC();
        v34 = v33;

        v53 = *(v4 + 8);
        v53(v9, v3);
        v35 = sub_2295A3E30(v32, v34, &v62);

        *(v22 + 24) = v35;
        *(v22 + 32) = 2080;
        v60 = sub_22A4DB20C();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87DA20, &unk_22A579B70);
        v36 = sub_22A4DDF7C();
        v38 = v37;
        v53(v7, v3);

        v39 = sub_2295A3E30(v36, v38, &v62);

        *(v22 + 34) = v39;
        v40 = v55;
        _os_log_impl(&dword_229538000, v55, v54, "%s %s Handling %s with %s", v22, 0x2Au);
        v41 = v56;
        swift_arrayDestroy();
        MEMORY[0x22AAD4E50](v41, -1, -1);
        MEMORY[0x22AAD4E50](v22, -1, -1);
      }

      else
      {

        v52 = *(v4 + 8);
        v52(v7, v3);
        v52(v9, v3);
      }

      (*(v58 + 8))(v15, v59);
      sub_22973BF64();

      return;
    }
  }

  sub_2297A46D4();
  v42 = v1;
  v43 = sub_22A4DD05C();
  v44 = sub_22A4DDCEC();

  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    *v45 = 136315394;
    v60 = 91;
    v61 = 0xE100000000000000;
    v62 = v46;
    v47 = [v42 logIdentifier];
    v48 = sub_22A4DD5EC();
    v50 = v49;

    MEMORY[0x22AAD08C0](v48, v50);

    MEMORY[0x22AAD08C0](93, 0xE100000000000000);
    v51 = sub_2295A3E30(v60, v61, &v62);

    *(v45 + 4) = v51;
    *(v45 + 12) = 2080;
    *(v45 + 14) = sub_2295A3E30(0xD000000000000049, 0x800000022A5949F0, &v62);
    _os_log_impl(&dword_229538000, v43, v44, "%s %s Not handling because home data load is in progress", v45, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v46, -1, -1);
    MEMORY[0x22AAD4E50](v45, -1, -1);
  }

  (*(v58 + 8))(v13, v59);
}

uint64_t sub_229741F5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 24) = a6;
  *(v7 + 32) = a7;
  *(v7 + 80) = a5;
  *(v7 + 16) = a4;
  v8 = sub_22A4DD07C();
  *(v7 + 40) = v8;
  *(v7 + 48) = *(v8 - 8);
  *(v7 + 56) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_229742024, 0, 0);
}