void sub_2297D5F30()
{
  v1 = sub_22A4DD07C();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v36 - v6;
  v8 = [v0 home];
  if (v8)
  {
    v9 = v8;
    v10 = [objc_msgSend(v8 featuresDataSource)];
    swift_unknownObjectRelease();
    if (v10)
    {
      sub_229562F68(0, &qword_281401B70, off_278666148);
      sub_22A4DDC0C();
      sub_22A4DD08C();
      v11 = v0;
      v12 = sub_22A4DD05C();
      v13 = sub_22A4DDCCC();

      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        v15 = swift_slowAlloc();
        v38 = v15;
        *v14 = 136315394;
        v39 = 91;
        v40 = 0xE100000000000000;
        v41 = v15;
        v16 = [v11 logIdentifier];
        v17 = sub_22A4DD5EC();
        v37 = v1;
        v18 = v17;
        v20 = v19;

        MEMORY[0x22AAD08C0](v18, v20);

        MEMORY[0x22AAD08C0](93, 0xE100000000000000);
        v21 = sub_2295A3E30(v39, v40, &v41);

        *(v14 + 4) = v21;
        *(v14 + 12) = 2080;
        *(v14 + 14) = sub_2295A3E30(0xD000000000000023, 0x800000022A597400, &v41);
        _os_log_impl(&dword_229538000, v12, v13, "%s %s Stopping", v14, 0x16u);
        v22 = v38;
        swift_arrayDestroy();
        MEMORY[0x22AAD4E50](v22, -1, -1);
        MEMORY[0x22AAD4E50](v14, -1, -1);

        (*(v2 + 8))(v7, v37);
      }

      else
      {

        (*(v2 + 8))(v7, v1);
      }

      v33 = [v9 notificationCenter];
      [v33 removeObserver:v11 name:@"HMDCHIPAccessoryServerConfiguredNotification" object:v11];

      v34 = [v9 notificationCenter];
      [v34 removeObserver:v11 name:@"HMDMobileAssetManagerFoundUpdateNotification" object:0];

      v35 = [v9 notificationCenter];
      [v35 removeObserver:v11 name:@"HMDAccessoryFirmwareVersionUpdatedNotification" object:v11];

      return;
    }
  }

  sub_229562F68(0, &qword_281401B70, off_278666148);
  sub_22A4DDC0C();
  sub_22A4DD08C();
  v23 = v0;
  v24 = sub_22A4DD05C();
  v25 = sub_22A4DDCEC();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *v26 = 136315394;
    v39 = 91;
    v40 = 0xE100000000000000;
    v41 = v27;
    v28 = [v23 logIdentifier];
    v29 = sub_22A4DD5EC();
    v31 = v30;

    MEMORY[0x22AAD08C0](v29, v31);

    MEMORY[0x22AAD08C0](93, 0xE100000000000000);
    v32 = sub_2295A3E30(v39, v40, &v41);

    *(v26 + 4) = v32;
    *(v26 + 12) = 2080;
    *(v26 + 14) = sub_2295A3E30(0xD000000000000023, 0x800000022A597400, &v41);
    _os_log_impl(&dword_229538000, v24, v25, "%s %s Home is missing or the feature is not enabled", v26, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v27, -1, -1);
    MEMORY[0x22AAD4E50](v26, -1, -1);
  }

  (*(v2 + 8))(v5, v1);
}

uint64_t sub_2297D656C()
{
  swift_getObjectType();
  v1 = sub_22A4DD07C();
  v2 = *(v1 - 8);
  v124 = v1;
  v125 = v2;
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v119 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v119 - v7;
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v119 - v10;
  v12 = MEMORY[0x28223BE20](v9);
  v123 = &v119 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v122 = &v119 - v15;
  MEMORY[0x28223BE20](v14);
  v121 = &v119 - v16;
  v17 = type metadata accessor for ClimateBulletinBuilder.ValenciaOnboardingContent(0);
  MEMORY[0x28223BE20](v17);
  v120 = (&v119 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = sub_22A4DD2FC();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = (&v119 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v22 = [v0 workQueue];
  (*(v20 + 104))(v22, *MEMORY[0x277D85200], v19);
  v23 = sub_22A4DD31C();
  result = (*(v20 + 8))(v22, v19);
  if ((v23 & 1) == 0)
  {
    __break(1u);
    return result;
  }

  v25 = [v0 home];
  if (!v25)
  {
LABEL_17:
    sub_229785E38();
    v49 = v0;
    v50 = sub_22A4DD05C();
    v51 = sub_22A4DDCEC();

    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      *v52 = 136315394;
      v126 = 91;
      v127 = 0xE100000000000000;
      v128 = v53;
      v54 = [v49 logIdentifier];
      v55 = sub_22A4DD5EC();
      v57 = v56;

      MEMORY[0x22AAD08C0](v55, v57);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v58 = sub_2295A3E30(v126, v127, &v128);

      *(v52 + 4) = v58;
      *(v52 + 12) = 2080;
      *(v52 + 14) = sub_2295A3E30(0xD00000000000003BLL, 0x800000022A597340, &v128);
      _os_log_impl(&dword_229538000, v50, v51, "[%s %s] Onboarding is not allowed, unqualified home", v52, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v53, -1, -1);
      MEMORY[0x22AAD4E50](v52, -1, -1);
    }

    return v125[1](v5, v124);
  }

  v26 = v25;
  if (![v25 isAllowedToEnableAdaptiveTemperatureAutomations])
  {

    goto LABEL_17;
  }

  if (([v26 isOwnerUser] & 1) == 0 && !objc_msgSend(v26, sel_isAdminUser))
  {
    sub_229785E38();
    v59 = v0;
    v60 = sub_22A4DD05C();
    v61 = sub_22A4DDCCC();

    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      *v62 = 136315394;
      v126 = 91;
      v127 = 0xE100000000000000;
      v128 = v63;
      v64 = [v59 logIdentifier];
      v65 = sub_22A4DD5EC();
      v67 = v66;

      MEMORY[0x22AAD08C0](v65, v67);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v68 = sub_2295A3E30(v126, v127, &v128);

      *(v62 + 4) = v68;
      *(v62 + 12) = 2080;
      *(v62 + 14) = sub_2295A3E30(0xD00000000000003BLL, 0x800000022A597340, &v128);
      _os_log_impl(&dword_229538000, v60, v61, "[%s %s] Onboarding is only handled by owner or admin user", v62, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v63, -1, -1);
      MEMORY[0x22AAD4E50](v62, -1, -1);
    }

    else
    {
    }

    return v125[1](v8, v124);
  }

  v27 = [v26 homeManager];
  if (!v27)
  {
    goto LABEL_24;
  }

  v28 = v27;
  if (![v27 hasLoadedData])
  {

LABEL_24:
    sub_229785E38();
    v69 = v0;
    v70 = sub_22A4DD05C();
    v71 = sub_22A4DDCCC();

    if (os_log_type_enabled(v70, v71))
    {
      v72 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      *v72 = 136315394;
      v126 = 91;
      v127 = 0xE100000000000000;
      v128 = v73;
      v74 = [v69 logIdentifier];
      v75 = sub_22A4DD5EC();
      v77 = v76;

      MEMORY[0x22AAD08C0](v75, v77);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v78 = sub_2295A3E30(v126, v127, &v128);

      *(v72 + 4) = v78;
      *(v72 + 12) = 2080;
      *(v72 + 14) = sub_2295A3E30(0xD00000000000003BLL, 0x800000022A597340, &v128);
      _os_log_impl(&dword_229538000, v70, v71, "[%s %s] Onboarding is only handled after home graph has loaded", v72, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v73, -1, -1);
      MEMORY[0x22AAD4E50](v72, -1, -1);

      return v125[1](v11, v124);
    }

LABEL_34:
    return v125[1](v11, v124);
  }

  v29 = [v26 currentDevice];
  if (!v29)
  {
LABEL_30:
    v11 = v123;
    sub_229785E38();
    v79 = v0;
    v80 = sub_22A4DD05C();
    v81 = sub_22A4DDCCC();

    if (os_log_type_enabled(v80, v81))
    {
      v82 = swift_slowAlloc();
      v41 = v11;
      v83 = swift_slowAlloc();
      *v82 = 136315394;
      v126 = 91;
      v127 = 0xE100000000000000;
      v128 = v83;
      v84 = [v79 logIdentifier];
      v85 = sub_22A4DD5EC();
      v87 = v86;

      MEMORY[0x22AAD08C0](v85, v87);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v88 = sub_2295A3E30(v126, v127, &v128);

      *(v82 + 4) = v88;
      *(v82 + 12) = 2080;
      *(v82 + 14) = sub_2295A3E30(0xD00000000000003BLL, 0x800000022A597340, &v128);
      _os_log_impl(&dword_229538000, v80, v81, "[%s %s] Onboarding is not handled on this device", v82, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v83, -1, -1);
      MEMORY[0x22AAD4E50](v82, -1, -1);

      return v125[1](v41, v124);
    }

    goto LABEL_34;
  }

  v30 = v29;
  v31 = [v29 productInfo];
  if (!v31 || (v32 = v31, v33 = [v31 productPlatform], v32, v33 > 5) || ((1 << v33) & 0x26) == 0)
  {

    goto LABEL_30;
  }

  v34 = [v0 supportsAdaptiveTemperatureAutomations];
  v35 = [v34 BOOLValue];

  if (v35)
  {
    v123 = v28;
    v36 = [v0 hasOnboardedForAdaptiveTemperatureAutomations];
    v37 = [v36 BOOLValue];

    if (v37)
    {
      v5 = v121;
      sub_229785E38();
      v38 = v0;
      v39 = sub_22A4DD05C();
      v40 = sub_22A4DDCEC();

      if (os_log_type_enabled(v39, v40))
      {
        v41 = v5;
        v42 = swift_slowAlloc();
        v43 = swift_slowAlloc();
        *v42 = 136315394;
        v126 = 91;
        v127 = 0xE100000000000000;
        v128 = v43;
        v44 = [v38 logIdentifier];
        v45 = sub_22A4DD5EC();
        v47 = v46;

        MEMORY[0x22AAD08C0](v45, v47);

        MEMORY[0x22AAD08C0](93, 0xE100000000000000);
        v48 = sub_2295A3E30(v126, v127, &v128);

        *(v42 + 4) = v48;
        *(v42 + 12) = 2080;
        *(v42 + 14) = sub_2295A3E30(0xD00000000000003BLL, 0x800000022A597340, &v128);
        _os_log_impl(&dword_229538000, v39, v40, "[%s %s] Feature was already onboarded by this accessory", v42, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x22AAD4E50](v43, -1, -1);
        MEMORY[0x22AAD4E50](v42, -1, -1);

        return v125[1](v41, v124);
      }

      goto LABEL_42;
    }

    v125 = v26;
    v100 = [v0 name];
    v124 = sub_22A4DD5EC();
    v122 = v101;

    v102 = v0;
    v103 = sub_22A4DD5AC();
    v104 = HMDLocalizedStringForKey(v103);

    sub_22A4DD5EC();
    v105 = sub_22A4DD5BC();
    v107 = v106;

    v108 = v120;
    *v120 = v105;
    v108[1] = v107;
    v109 = sub_22A4DD5AC();
    v110 = HMDLocalizedStringForKey(v109);

    sub_22A4DD5EC();
    v111 = sub_22A4DD5BC();
    v113 = v112;

    v108[2] = v111;
    v108[3] = v113;
    v114 = v125;
    sub_229559964(v124, v122, v102, v125);

    v115 = [v102 bulletinBoard];
    v116 = sub_22A4DD5AC();
    v117 = sub_22A4DD5AC();
    v118 = sub_22A4DB4EC();
    [v115 insertClimateBulletinForAccessory:v102 title:v116 body:v117 actionURL:v118];

    return sub_2297E3238(v108);
  }

  else
  {
    v5 = v122;
    sub_229785E38();
    v89 = v0;
    v90 = sub_22A4DD05C();
    v91 = sub_22A4DDCEC();

    if (!os_log_type_enabled(v90, v91))
    {

LABEL_42:
      return v125[1](v5, v124);
    }

    v92 = swift_slowAlloc();
    v93 = swift_slowAlloc();
    *v92 = 136315394;
    v126 = 91;
    v127 = 0xE100000000000000;
    v128 = v93;
    v94 = [v89 logIdentifier];
    v95 = sub_22A4DD5EC();
    v96 = v28;
    v98 = v97;

    MEMORY[0x22AAD08C0](v95, v98);

    MEMORY[0x22AAD08C0](93, 0xE100000000000000);
    v99 = sub_2295A3E30(v126, v127, &v128);

    *(v92 + 4) = v99;
    *(v92 + 12) = 2080;
    *(v92 + 14) = sub_2295A3E30(0xD00000000000003BLL, 0x800000022A597340, &v128);
    _os_log_impl(&dword_229538000, v90, v91, "[%s %s] Feature is not supported by this accessory", v92, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v93, -1, -1);
    MEMORY[0x22AAD4E50](v92, -1, -1);

    return v125[1](v122, v124);
  }
}

void sub_2297D753C(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v58 - v5;
  v7 = sub_22A4DD07C();
  v60 = *(v7 - 8);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v58 - v11;
  v13 = [a1 name];
  v14 = sub_22A4DD5EC();
  v16 = v15;
  if (v14 == sub_22A4DD5EC() && v16 == v17)
  {
  }

  else
  {
    v19 = sub_22A4DE60C();

    if ((v19 & 1) == 0)
    {
      sub_229562F68(0, &qword_281401B70, off_278666148);
      sub_22A4DDC0C();
      sub_22A4DD08C();
      v20 = v2;
      v21 = a1;
      v22 = sub_22A4DD05C();
      v23 = sub_22A4DDCEC();

      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        v59 = v26;
        *v24 = 136315650;
        v61 = 91;
        v62 = 0xE100000000000000;
        v63 = v26;
        v27 = [v20 logIdentifier];
        v28 = sub_22A4DD5EC();
        v30 = v29;

        MEMORY[0x22AAD08C0](v28, v30);

        MEMORY[0x22AAD08C0](93, 0xE100000000000000);
        v31 = sub_2295A3E30(v61, v62, &v63);

        *(v24 + 4) = v31;
        *(v24 + 12) = 2080;
        *(v24 + 14) = sub_2295A3E30(0xD000000000000047, 0x800000022A5972F0, &v63);
        *(v24 + 22) = 2112;
        *(v24 + 24) = v21;
        *v25 = v21;
        v32 = v21;
        _os_log_impl(&dword_229538000, v22, v23, "%s %s Unexpected message, unable to handle message: %@", v24, 0x20u);
        sub_22953EAE4(v25, &qword_27D87D7D0, &unk_22A578D90);
        MEMORY[0x22AAD4E50](v25, -1, -1);
        v33 = v59;
        swift_arrayDestroy();
        MEMORY[0x22AAD4E50](v33, -1, -1);
        MEMORY[0x22AAD4E50](v24, -1, -1);
      }

      (*(v60 + 8))(v12, v7);
      v34 = [objc_opt_self() hmErrorWithCode_];
      v35 = sub_22A4DB3DC();

      [v21 respondWithError_];
LABEL_20:

      return;
    }
  }

  v36 = [v2 supportsAdaptiveTemperatureAutomations];
  v37 = [v36 BOOLValue];

  if ((v37 & 1) == 0)
  {
    sub_229562F68(0, &qword_281401B70, off_278666148);
    sub_22A4DDC0C();
    sub_22A4DD08C();
    v42 = v2;
    v43 = a1;
    v44 = sub_22A4DD05C();
    v45 = sub_22A4DDCEC();

    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      *v46 = 136315650;
      v61 = 91;
      v62 = 0xE100000000000000;
      v63 = v48;
      v49 = [v42 logIdentifier];
      v50 = sub_22A4DD5EC();
      v59 = v7;
      v52 = v51;

      MEMORY[0x22AAD08C0](v50, v52);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v53 = sub_2295A3E30(v61, v62, &v63);

      *(v46 + 4) = v53;
      *(v46 + 12) = 2080;
      *(v46 + 14) = sub_2295A3E30(0xD000000000000047, 0x800000022A5972F0, &v63);
      *(v46 + 22) = 2112;
      *(v46 + 24) = v43;
      *v47 = v43;
      v54 = v43;
      _os_log_impl(&dword_229538000, v44, v45, "%s %s Accessory does not support adaptive temperature, unable to handle message: %@", v46, 0x20u);
      sub_22953EAE4(v47, &qword_27D87D7D0, &unk_22A578D90);
      MEMORY[0x22AAD4E50](v47, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v48, -1, -1);
      MEMORY[0x22AAD4E50](v46, -1, -1);

      (*(v60 + 8))(v10, v59);
    }

    else
    {

      (*(v60 + 8))(v10, v7);
    }

    v57 = [objc_opt_self() hmErrorWithCode_];
    v35 = sub_22A4DB3DC();

    [v43 respondWithError_];
    goto LABEL_20;
  }

  if (sub_2297D7D0C(a1))
  {
    v38 = sub_22A4DD9DC();
    (*(*(v38 - 8) + 56))(v6, 1, 1, v38);
    v39 = swift_allocObject();
    v39[2] = 0;
    v39[3] = 0;
    v39[4] = v2;
    v39[5] = a1;
    v40 = v2;
    v41 = a1;
    sub_22957F3C0(0, 0, v6, &unk_22A584378, v39);
  }

  else
  {
    v55 = [objc_opt_self() hmErrorWithCode_];
    v60 = sub_22A4DB3DC();

    [a1 respondWithError_];
    v56 = v60;
  }
}

uint64_t sub_2297D7D0C(void *a1)
{
  v2 = v1;
  v4 = sub_22A4DD07C();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v63 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v63 - v12;
  v14 = [v1 home];
  if (v14)
  {
    v15 = v14;
    v16 = [objc_msgSend(v14 featuresDataSource)];
    swift_unknownObjectRelease();
    if (v16)
    {
      if ([v15 isCurrentDeviceConfirmedPrimaryResident])
      {

        return 1;
      }

      v67 = v5;
      sub_229562F68(0, &qword_281401B70, off_278666148);
      sub_22A4DDC0C();
      sub_22A4DD08C();
      v49 = v2;
      v50 = a1;
      v51 = sub_22A4DD05C();
      v52 = sub_22A4DDCEC();

      if (os_log_type_enabled(v51, v52))
      {
        v53 = swift_slowAlloc();
        v64 = swift_slowAlloc();
        v54 = swift_slowAlloc();
        v65 = v54;
        *v53 = 136315650;
        v68 = 91;
        v69 = 0xE100000000000000;
        v70 = v54;
        v55 = [v49 logIdentifier];
        v56 = sub_22A4DD5EC();
        v66 = v4;
        v58 = v57;

        MEMORY[0x22AAD08C0](v56, v58);

        MEMORY[0x22AAD08C0](93, 0xE100000000000000);
        v59 = sub_2295A3E30(v68, v69, &v70);

        *(v53 + 4) = v59;
        *(v53 + 12) = 2080;
        *(v53 + 14) = sub_2295A3E30(0xD00000000000002DLL, 0x800000022A597280, &v70);
        *(v53 + 22) = 2112;
        *(v53 + 24) = v50;
        v60 = v64;
        *v64 = v50;
        v61 = v50;
        _os_log_impl(&dword_229538000, v51, v52, "%s %s Device is not primary resident, unable to handle message: %@", v53, 0x20u);
        sub_22953EAE4(v60, &qword_27D87D7D0, &unk_22A578D90);
        MEMORY[0x22AAD4E50](v60, -1, -1);
        v62 = v65;
        swift_arrayDestroy();
        MEMORY[0x22AAD4E50](v62, -1, -1);
        MEMORY[0x22AAD4E50](v53, -1, -1);

        (*(v67 + 8))(v13, v66);
      }

      else
      {

        (*(v67 + 8))(v13, v4);
      }
    }

    else
    {
      sub_229562F68(0, &qword_281401B70, off_278666148);
      sub_22A4DDC0C();
      sub_22A4DD08C();
      v34 = v2;
      v35 = a1;
      v36 = sub_22A4DD05C();
      v37 = sub_22A4DDCEC();

      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        v64 = swift_slowAlloc();
        v39 = swift_slowAlloc();
        v65 = v39;
        *v38 = 136315650;
        v68 = 91;
        v69 = 0xE100000000000000;
        v70 = v39;
        v40 = [v34 logIdentifier];
        v41 = sub_22A4DD5EC();
        v66 = v4;
        v67 = v5;
        v42 = v41;
        v44 = v43;

        MEMORY[0x22AAD08C0](v42, v44);

        MEMORY[0x22AAD08C0](93, 0xE100000000000000);
        v45 = sub_2295A3E30(v68, v69, &v70);

        *(v38 + 4) = v45;
        *(v38 + 12) = 2080;
        *(v38 + 14) = sub_2295A3E30(0xD00000000000002DLL, 0x800000022A597280, &v70);
        *(v38 + 22) = 2112;
        *(v38 + 24) = v35;
        v46 = v64;
        *v64 = v35;
        v47 = v35;
        _os_log_impl(&dword_229538000, v36, v37, "%s %s Home Activity State feature is not enabled, unable to handle message: %@", v38, 0x20u);
        sub_22953EAE4(v46, &qword_27D87D7D0, &unk_22A578D90);
        MEMORY[0x22AAD4E50](v46, -1, -1);
        v48 = v65;
        swift_arrayDestroy();
        MEMORY[0x22AAD4E50](v48, -1, -1);
        MEMORY[0x22AAD4E50](v38, -1, -1);

        (*(v67 + 8))(v11, v66);
      }

      else
      {

        (*(v5 + 8))(v11, v4);
      }
    }
  }

  else
  {
    sub_229562F68(0, &qword_281401B70, off_278666148);
    sub_22A4DDC0C();
    sub_22A4DD08C();
    v18 = v1;
    v19 = a1;
    v20 = sub_22A4DD05C();
    v21 = sub_22A4DDCEC();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v67 = v5;
      v24 = v23;
      v25 = swift_slowAlloc();
      v65 = v25;
      *v22 = 136315650;
      v68 = 91;
      v69 = 0xE100000000000000;
      v70 = v25;
      v26 = [v18 logIdentifier];
      v27 = sub_22A4DD5EC();
      v66 = v4;
      v28 = v27;
      v30 = v29;

      MEMORY[0x22AAD08C0](v28, v30);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v31 = sub_2295A3E30(v68, v69, &v70);

      *(v22 + 4) = v31;
      *(v22 + 12) = 2080;
      *(v22 + 14) = sub_2295A3E30(0xD00000000000002DLL, 0x800000022A597280, &v70);
      *(v22 + 22) = 2112;
      *(v22 + 24) = v19;
      *v24 = v19;
      v32 = v19;
      _os_log_impl(&dword_229538000, v20, v21, "%s %s Missing home, unable to handle message: %@", v22, 0x20u);
      sub_22953EAE4(v24, &qword_27D87D7D0, &unk_22A578D90);
      MEMORY[0x22AAD4E50](v24, -1, -1);
      v33 = v65;
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v33, -1, -1);
      MEMORY[0x22AAD4E50](v22, -1, -1);

      (*(v67 + 8))(v8, v66);
    }

    else
    {

      (*(v5 + 8))(v8, v4);
    }
  }

  return 0;
}

uint64_t sub_2297D8504(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[7] = a4;
  v5[8] = a5;
  v6 = sub_22A4DD07C();
  v5[9] = v6;
  v5[10] = *(v6 - 8);
  v5[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2297D85C4, 0, 0);
}

uint64_t sub_2297D85C4()
{
  sub_229785F6C(v0 + 2);
  __swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
  v1 = swift_task_alloc();
  v0[12] = v1;
  *v1 = v0;
  v1[1] = sub_2297D866C;

  return sub_2296C1028();
}

uint64_t sub_2297D866C()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_2297D8780;
  }

  else
  {
    v2 = sub_2297E32AC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2297D8780()
{
  v35 = v0;
  v1 = v0[13];
  v2 = v0[7];
  v3 = v0[8];
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  sub_229562F68(0, &qword_281401B70, off_278666148);
  sub_22A4DDC0C();
  sub_22A4DD08C();
  v4 = v2;
  v5 = v3;
  v6 = v1;
  v7 = sub_22A4DD05C();
  v8 = sub_22A4DDCEC();

  if (os_log_type_enabled(v7, v8))
  {
    v30 = v0[13];
    v31 = v0[10];
    v9 = v0[8];
    v32 = v0[9];
    v33 = v0[11];
    v10 = v0[7];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v11 = 136315906;
    v34[0] = v13;
    v34[1] = 91;
    v34[2] = 0xE100000000000000;
    v14 = [v10 logIdentifier];
    v15 = sub_22A4DD5EC();
    v17 = v16;

    MEMORY[0x22AAD08C0](v15, v17);

    MEMORY[0x22AAD08C0](93, 0xE100000000000000);
    v18 = sub_2295A3E30(91, 0xE100000000000000, v34);

    *(v11 + 4) = v18;
    *(v11 + 12) = 2080;
    *(v11 + 14) = sub_2295A3E30(0xD000000000000047, 0x800000022A5972F0, v34);
    *(v11 + 22) = 2112;
    *(v11 + 24) = v9;
    *v12 = v9;
    *(v11 + 32) = 2112;
    v19 = v9;
    v20 = v30;
    v21 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 34) = v21;
    v12[1] = v21;
    _os_log_impl(&dword_229538000, v7, v8, "%s %s Failed to save, unable to handle message %@ with error: %@", v11, 0x2Au);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D7D0, &unk_22A578D90);
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v12, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v13, -1, -1);
    MEMORY[0x22AAD4E50](v11, -1, -1);

    (*(v31 + 8))(v33, v32);
  }

  else
  {
    v23 = v0[10];
    v22 = v0[11];
    v24 = v0[9];

    (*(v23 + 8))(v22, v24);
  }

  v25 = v0[13];
  v26 = v0[8];
  v27 = sub_22A4DB3DC();
  [v26 respondWithError_];

  v28 = v0[1];

  return v28();
}

void sub_2297D8B30(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v58 - v5;
  v7 = sub_22A4DD07C();
  v60 = *(v7 - 8);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v58 - v11;
  v13 = [a1 name];
  v14 = sub_22A4DD5EC();
  v16 = v15;
  if (v14 == sub_22A4DD5EC() && v16 == v17)
  {
  }

  else
  {
    v19 = sub_22A4DE60C();

    if ((v19 & 1) == 0)
    {
      sub_229562F68(0, &qword_281401B70, off_278666148);
      sub_22A4DDC0C();
      sub_22A4DD08C();
      v20 = v2;
      v21 = a1;
      v22 = sub_22A4DD05C();
      v23 = sub_22A4DDCEC();

      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        v59 = v26;
        *v24 = 136315650;
        v61 = 91;
        v62 = 0xE100000000000000;
        v63 = v26;
        v27 = [v20 logIdentifier];
        v28 = sub_22A4DD5EC();
        v30 = v29;

        MEMORY[0x22AAD08C0](v28, v30);

        MEMORY[0x22AAD08C0](93, 0xE100000000000000);
        v31 = sub_2295A3E30(v61, v62, &v63);

        *(v24 + 4) = v31;
        *(v24 + 12) = 2080;
        *(v24 + 14) = sub_2295A3E30(0xD00000000000003ELL, 0x800000022A5972B0, &v63);
        *(v24 + 22) = 2112;
        *(v24 + 24) = v21;
        *v25 = v21;
        v32 = v21;
        _os_log_impl(&dword_229538000, v22, v23, "%s %s Unexpected message, unable to handle message: %@", v24, 0x20u);
        sub_22953EAE4(v25, &qword_27D87D7D0, &unk_22A578D90);
        MEMORY[0x22AAD4E50](v25, -1, -1);
        v33 = v59;
        swift_arrayDestroy();
        MEMORY[0x22AAD4E50](v33, -1, -1);
        MEMORY[0x22AAD4E50](v24, -1, -1);
      }

      (*(v60 + 8))(v12, v7);
      v34 = [objc_opt_self() hmErrorWithCode_];
      v35 = sub_22A4DB3DC();

      [v21 respondWithError_];
LABEL_20:

      return;
    }
  }

  v36 = [v2 supportsCleanEnergyAutomation];
  v37 = [v36 BOOLValue];

  if ((v37 & 1) == 0)
  {
    sub_229562F68(0, &qword_281401B70, off_278666148);
    sub_22A4DDC0C();
    sub_22A4DD08C();
    v42 = v2;
    v43 = a1;
    v44 = sub_22A4DD05C();
    v45 = sub_22A4DDCEC();

    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      *v46 = 136315650;
      v61 = 91;
      v62 = 0xE100000000000000;
      v63 = v48;
      v49 = [v42 logIdentifier];
      v50 = sub_22A4DD5EC();
      v59 = v7;
      v52 = v51;

      MEMORY[0x22AAD08C0](v50, v52);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v53 = sub_2295A3E30(v61, v62, &v63);

      *(v46 + 4) = v53;
      *(v46 + 12) = 2080;
      *(v46 + 14) = sub_2295A3E30(0xD00000000000003ELL, 0x800000022A5972B0, &v63);
      *(v46 + 22) = 2112;
      *(v46 + 24) = v43;
      *v47 = v43;
      v54 = v43;
      _os_log_impl(&dword_229538000, v44, v45, "%s %s Accessory does not support clean energy, unable to handle message: %@", v46, 0x20u);
      sub_22953EAE4(v47, &qword_27D87D7D0, &unk_22A578D90);
      MEMORY[0x22AAD4E50](v47, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v48, -1, -1);
      MEMORY[0x22AAD4E50](v46, -1, -1);

      (*(v60 + 8))(v10, v59);
    }

    else
    {

      (*(v60 + 8))(v10, v7);
    }

    v57 = [objc_opt_self() hmErrorWithCode_];
    v35 = sub_22A4DB3DC();

    [v43 respondWithError_];
    goto LABEL_20;
  }

  if (sub_2297D7D0C(a1))
  {
    v38 = sub_22A4DD9DC();
    (*(*(v38 - 8) + 56))(v6, 1, 1, v38);
    v39 = swift_allocObject();
    v39[2] = 0;
    v39[3] = 0;
    v39[4] = v2;
    v39[5] = a1;
    v40 = v2;
    v41 = a1;
    sub_22957F3C0(0, 0, v6, &unk_22A584368, v39);
  }

  else
  {
    v55 = [objc_opt_self() hmErrorWithCode_];
    v60 = sub_22A4DB3DC();

    [a1 respondWithError_];
    v56 = v60;
  }
}

uint64_t sub_2297D9300(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[7] = a4;
  v5[8] = a5;
  v6 = sub_22A4DD07C();
  v5[9] = v6;
  v5[10] = *(v6 - 8);
  v5[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2297D93C0, 0, 0);
}

uint64_t sub_2297D93C0()
{
  sub_229785F6C(v0 + 2);
  __swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
  v1 = swift_task_alloc();
  v0[12] = v1;
  *v1 = v0;
  v1[1] = sub_2297D9468;

  return sub_2296C189C();
}

uint64_t sub_2297D9468()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_2297D95F8;
  }

  else
  {
    v2 = sub_2297D957C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2297D957C()
{
  v1 = v0[8];
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  [v1 respondWithSuccess];

  v2 = v0[1];

  return v2();
}

uint64_t sub_2297D95F8()
{
  v35 = v0;
  v1 = v0[13];
  v2 = v0[7];
  v3 = v0[8];
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  sub_229562F68(0, &qword_281401B70, off_278666148);
  sub_22A4DDC0C();
  sub_22A4DD08C();
  v4 = v2;
  v5 = v3;
  v6 = v1;
  v7 = sub_22A4DD05C();
  v8 = sub_22A4DDCEC();

  if (os_log_type_enabled(v7, v8))
  {
    v30 = v0[13];
    v31 = v0[10];
    v9 = v0[8];
    v32 = v0[9];
    v33 = v0[11];
    v10 = v0[7];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v11 = 136315906;
    v34[0] = v13;
    v34[1] = 91;
    v34[2] = 0xE100000000000000;
    v14 = [v10 logIdentifier];
    v15 = sub_22A4DD5EC();
    v17 = v16;

    MEMORY[0x22AAD08C0](v15, v17);

    MEMORY[0x22AAD08C0](93, 0xE100000000000000);
    v18 = sub_2295A3E30(91, 0xE100000000000000, v34);

    *(v11 + 4) = v18;
    *(v11 + 12) = 2080;
    *(v11 + 14) = sub_2295A3E30(0xD00000000000003ELL, 0x800000022A5972B0, v34);
    *(v11 + 22) = 2112;
    *(v11 + 24) = v9;
    *v12 = v9;
    *(v11 + 32) = 2112;
    v19 = v9;
    v20 = v30;
    v21 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 34) = v21;
    v12[1] = v21;
    _os_log_impl(&dword_229538000, v7, v8, "%s %s Failed to save, unable to handle message %@ with error: %@", v11, 0x2Au);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D7D0, &unk_22A578D90);
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v12, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v13, -1, -1);
    MEMORY[0x22AAD4E50](v11, -1, -1);

    (*(v31 + 8))(v33, v32);
  }

  else
  {
    v23 = v0[10];
    v22 = v0[11];
    v24 = v0[9];

    (*(v23 + 8))(v22, v24);
  }

  v25 = v0[13];
  v26 = v0[8];
  v27 = sub_22A4DB3DC();
  [v26 respondWithError_];

  v28 = v0[1];

  return v28();
}

void sub_2297D99A8(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70);
  MEMORY[0x28223BE20](v4 - 8);
  v136 = &v135 - v5;
  v6 = sub_22A4DB7DC();
  v139 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v135 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22A4DD07C();
  v10 = *(v9 - 8);
  v140 = v9;
  v141 = v10;
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v135 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v138 = &v135 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v137 = &v135 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v135 = &v135 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v135 - v21;
  MEMORY[0x28223BE20](v20);
  v24 = &v135 - v23;
  v142 = a1;
  v25 = [a1 name];
  v26 = sub_22A4DD5EC();
  v28 = v27;
  if (v26 == sub_22A4DD5EC() && v28 == v29)
  {
  }

  else
  {
    v30 = sub_22A4DE60C();

    if ((v30 & 1) == 0)
    {
      sub_229562F68(0, &qword_281401B70, off_278666148);
      sub_22A4DDC0C();
      sub_22A4DD08C();
      v72 = v2;
      v44 = v142;
      v73 = sub_22A4DD05C();
      v74 = sub_22A4DDCEC();

      if (os_log_type_enabled(v73, v74))
      {
        v75 = swift_slowAlloc();
        v76 = swift_slowAlloc();
        v77 = swift_slowAlloc();
        *v75 = 136315650;
        v143 = 91;
        v144 = 0xE100000000000000;
        v145 = v77;
        v78 = [v72 logIdentifier];
        v79 = sub_22A4DD5EC();
        v81 = v80;

        MEMORY[0x22AAD08C0](v79, v81);

        MEMORY[0x22AAD08C0](93, 0xE100000000000000);
        v82 = sub_2295A3E30(v143, v144, &v145);

        *(v75 + 4) = v82;
        *(v75 + 12) = 2080;
        *(v75 + 14) = sub_2295A3E30(0xD00000000000002CLL, 0x800000022A597220, &v145);
        *(v75 + 22) = 2112;
        *(v75 + 24) = v44;
        *v76 = v44;
        v83 = v44;
        _os_log_impl(&dword_229538000, v73, v74, "%s %s Unexpected message, unable to handle message: %@", v75, 0x20u);
        sub_22953EAE4(v76, &qword_27D87D7D0, &unk_22A578D90);
        MEMORY[0x22AAD4E50](v76, -1, -1);
        swift_arrayDestroy();
        MEMORY[0x22AAD4E50](v77, -1, -1);
        MEMORY[0x22AAD4E50](v75, -1, -1);
      }

      v141[1](v24, v140);
      v56 = [objc_opt_self() hmErrorWithCode_];
      goto LABEL_25;
    }
  }

  v31 = [v2 supportsAdaptiveTemperatureAutomations];
  v32 = [v31 BOOLValue];

  v33 = v142;
  if ((v32 & 1) == 0)
  {
    sub_229562F68(0, &qword_281401B70, off_278666148);
    sub_22A4DDC0C();
    sub_22A4DD08C();
    v57 = v2;
    v58 = v33;
    v59 = sub_22A4DD05C();
    v60 = sub_22A4DDCEC();

    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      *v61 = 136315650;
      v143 = 91;
      v144 = 0xE100000000000000;
      v145 = v63;
      v64 = [v57 logIdentifier];
      v65 = sub_22A4DD5EC();
      v67 = v66;

      MEMORY[0x22AAD08C0](v65, v67);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v68 = sub_2295A3E30(v143, v144, &v145);

      *(v61 + 4) = v68;
      *(v61 + 12) = 2080;
      *(v61 + 14) = sub_2295A3E30(0xD00000000000002CLL, 0x800000022A597220, &v145);
      *(v61 + 22) = 2112;
      *(v61 + 24) = v58;
      *v62 = v58;
      v69 = v58;
      _os_log_impl(&dword_229538000, v59, v60, "%s %s Accessory does not support adaptive temperature, unable to handle message: %@", v61, 0x20u);
      sub_22953EAE4(v62, &qword_27D87D7D0, &unk_22A578D90);
      MEMORY[0x22AAD4E50](v62, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v63, -1, -1);
      MEMORY[0x22AAD4E50](v61, -1, -1);
    }

    v141[1](v22, v140);
    v70 = [objc_opt_self() hmErrorWithCode_];
    v71 = sub_22A4DB3DC();

    [v58 respondWithError_];
    goto LABEL_15;
  }

  if ((sub_2297D7D0C(v142) & 1) == 0)
  {
    sub_229562F68(0, &qword_281401B70, off_278666148);
    sub_22A4DDC0C();
    sub_22A4DD08C();
    v84 = v2;
    v44 = v33;
    v85 = sub_22A4DD05C();
    v86 = sub_22A4DDCEC();

    if (os_log_type_enabled(v85, v86))
    {
      v87 = swift_slowAlloc();
      v88 = swift_slowAlloc();
      v89 = swift_slowAlloc();
      *v87 = 136315650;
      v143 = 91;
      v144 = 0xE100000000000000;
      v145 = v89;
      v90 = [v84 logIdentifier];
      v91 = sub_22A4DD5EC();
      v93 = v92;

      MEMORY[0x22AAD08C0](v91, v93);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v94 = sub_2295A3E30(v143, v144, &v145);

      *(v87 + 4) = v94;
      *(v87 + 12) = 2080;
      *(v87 + 14) = sub_2295A3E30(0xD00000000000002CLL, 0x800000022A597220, &v145);
      *(v87 + 22) = 2112;
      *(v87 + 24) = v44;
      *v88 = v44;
      v95 = v44;
      _os_log_impl(&dword_229538000, v85, v86, "%s %s Device does not support climate settings, unable to handle message: %@", v87, 0x20u);
      sub_22953EAE4(v88, &qword_27D87D7D0, &unk_22A578D90);
      MEMORY[0x22AAD4E50](v88, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v89, -1, -1);
      MEMORY[0x22AAD4E50](v87, -1, -1);
    }

    v141[1](v13, v140);
    v56 = [objc_opt_self() hmErrorWithCode_];
    goto LABEL_25;
  }

  v34 = [v33 messagePayload];
  if (!v34)
  {
    sub_229562F68(0, &qword_281401B70, off_278666148);
    sub_22A4DDC0C();
    v96 = v138;
    sub_22A4DD08C();
    v97 = v2;
    v44 = v33;
    v98 = sub_22A4DD05C();
    v99 = sub_22A4DDCEC();

    if (os_log_type_enabled(v98, v99))
    {
      v100 = swift_slowAlloc();
      v101 = swift_slowAlloc();
      v102 = swift_slowAlloc();
      *v100 = 136315650;
      v143 = 91;
      v144 = 0xE100000000000000;
      v145 = v102;
      v103 = [v97 logIdentifier];
      v104 = sub_22A4DD5EC();
      v106 = v105;

      MEMORY[0x22AAD08C0](v104, v106);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v107 = sub_2295A3E30(v143, v144, &v145);

      *(v100 + 4) = v107;
      *(v100 + 12) = 2080;
      *(v100 + 14) = sub_2295A3E30(0xD00000000000002CLL, 0x800000022A597220, &v145);
      *(v100 + 22) = 2112;
      *(v100 + 24) = v44;
      *v101 = v44;
      v108 = v44;
      _os_log_impl(&dword_229538000, v98, v99, "%s %s Payload should not be nil: %@", v100, 0x20u);
      sub_22953EAE4(v101, &qword_27D87D7D0, &unk_22A578D90);
      MEMORY[0x22AAD4E50](v101, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v102, -1, -1);
      MEMORY[0x22AAD4E50](v100, -1, -1);
    }

    v141[1](v96, v140);
    v56 = [objc_opt_self() hmErrorWithCode_];
    goto LABEL_25;
  }

  v35 = v34;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
  v36 = sub_22A4DD49C();

  sub_2296F7AE8(v36);
  v38 = v37;

  v39 = sub_2297DACD4(v38);
  v41 = v40;

  if (v41 == 1)
  {
    sub_229562F68(0, &qword_281401B70, off_278666148);
    sub_22A4DDC0C();
    v42 = v137;
    sub_22A4DD08C();
    v43 = v2;
    v44 = v33;
    v45 = sub_22A4DD05C();
    v46 = sub_22A4DDCEC();

    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      *v47 = 136315650;
      v143 = 91;
      v144 = 0xE100000000000000;
      v145 = v49;
      v50 = [v43 logIdentifier];
      v51 = sub_22A4DD5EC();
      v53 = v52;

      MEMORY[0x22AAD08C0](v51, v53);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v54 = sub_2295A3E30(v143, v144, &v145);

      *(v47 + 4) = v54;
      *(v47 + 12) = 2080;
      *(v47 + 14) = sub_2295A3E30(0xD00000000000002CLL, 0x800000022A597220, &v145);
      *(v47 + 22) = 2112;
      *(v47 + 24) = v44;
      *v48 = v44;
      v55 = v44;
      _os_log_impl(&dword_229538000, v45, v46, "%s %s Unable to get settings from payload: %@", v47, 0x20u);
      sub_22953EAE4(v48, &qword_27D87D7D0, &unk_22A578D90);
      MEMORY[0x22AAD4E50](v48, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v49, -1, -1);
      MEMORY[0x22AAD4E50](v47, -1, -1);
    }

    v141[1](v42, v140);
    v56 = [objc_opt_self() hmErrorWithCode_];
LABEL_25:
    v109 = v56;
    v110 = sub_22A4DB3DC();

    [v44 respondWithError_];
    return;
  }

  v111 = [v2 home];
  if (!v111)
  {
    sub_2295A70F8(v39, v41);
    sub_229562F68(0, &qword_281401B70, off_278666148);
    sub_22A4DDC0C();
    v123 = v135;
    sub_22A4DD08C();
    v124 = v2;
    v125 = sub_22A4DD05C();
    v126 = sub_22A4DDCEC();

    if (os_log_type_enabled(v125, v126))
    {
      v127 = swift_slowAlloc();
      v128 = swift_slowAlloc();
      *v127 = 136315394;
      v143 = 91;
      v144 = 0xE100000000000000;
      v145 = v128;
      v129 = [v124 logIdentifier];
      v130 = sub_22A4DD5EC();
      v132 = v131;

      MEMORY[0x22AAD08C0](v130, v132);
      v33 = v142;

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v133 = sub_2295A3E30(v143, v144, &v145);

      *(v127 + 4) = v133;
      *(v127 + 12) = 2080;
      *(v127 + 14) = sub_2295A3E30(0xD00000000000002CLL, 0x800000022A597220, &v145);
      _os_log_impl(&dword_229538000, v125, v126, "%s %s Unable to get home", v127, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v128, -1, -1);
      MEMORY[0x22AAD4E50](v127, -1, -1);
    }

    v141[1](v123, v140);
    v134 = [objc_opt_self() hmErrorWithCode_];
    v71 = sub_22A4DB3DC();

    [v33 respondWithError_];
LABEL_15:

    return;
  }

  v112 = v111;
  if (!v41)
  {
LABEL_34:
    v118 = sub_22A4DD9DC();
    v119 = v136;
    (*(*(v118 - 8) + 56))(v136, 1, 1, v118);
    v120 = swift_allocObject();
    v120[2] = 0;
    v120[3] = 0;
    v120[4] = v2;
    v120[5] = v39;
    v120[6] = v41;
    v120[7] = v33;
    v121 = v2;
    v122 = v33;
    sub_22957F3C0(0, 0, v119, &unk_22A584358, v120);

    return;
  }

  v140 = v39;

  v141 = v112;
  v113 = [v112 roomUUIDsSupportingLocalPresence];
  sub_2297E3070(&qword_281403880, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  v114 = sub_22A4DDB6C();

  v115 = *(v41 + 16);
  if (!v115)
  {
LABEL_33:

    v39 = v140;
    sub_2295A70F8(v140, v41);
    v112 = v141;
    v33 = v142;
    goto LABEL_34;
  }

  v116 = 0;
  v117 = (v139 + 8);
  while (v116 < *(v41 + 16))
  {
    (*(v139 + 16))(v8, v41 + ((*(v139 + 80) + 32) & ~*(v139 + 80)) + *(v139 + 72) * v116, v6);
    sub_2297DB7AC(v8, v114, v2);
    ++v116;
    (*v117)(v8, v6);
    if (v115 == v116)
    {
      goto LABEL_33;
    }
  }

  __break(1u);
}

uint64_t sub_2297DACD4(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D2A0, &unk_22A578BD0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v82 - v5;
  v7 = sub_22A4DB7DC();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v82 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22A4DD07C();
  v86 = *(v11 - 8);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v82 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v82 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v82 - v18;
  v20 = [v2 home];
  if (!v20)
  {
    sub_229562F68(0, &qword_281401B70, off_278666148);
    sub_22A4DDC0C();
    sub_22A4DD08C();
    v37 = v2;

    v38 = sub_22A4DD05C();
    v39 = sub_22A4DDCEC();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v89 = v41;
      *v40 = 136315650;
      v87 = 91;
      v88 = 0xE100000000000000;
      v42 = [v37 logIdentifier];
      v85 = v11;
      v43 = v42;
      v44 = sub_22A4DD5EC();
      v46 = v45;

      MEMORY[0x22AAD08C0](v44, v46);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v47 = sub_2295A3E30(v87, v88, &v89);

      *(v40 + 4) = v47;
      *(v40 + 12) = 2080;
      *(v40 + 14) = sub_2295A3E30(0xD000000000000028, 0x800000022A597250, &v89);
      *(v40 + 22) = 2080;
      v48 = sub_22A4DD4AC();
      v50 = sub_2295A3E30(v48, v49, &v89);

      *(v40 + 24) = v50;
      _os_log_impl(&dword_229538000, v38, v39, "%s %s Missing home, unable to handle message: %s", v40, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v41, -1, -1);
      MEMORY[0x22AAD4E50](v40, -1, -1);

      (*(v86 + 8))(v14, v85);
    }

    else
    {

      (*(v86 + 8))(v14, v11);
    }

    return 0;
  }

  v84 = v20;
  v85 = v11;
  v21 = sub_22A4DD5EC();
  if (!*(a1 + 16))
  {

LABEL_15:
    sub_229562F68(0, &qword_281401B70, off_278666148);
    sub_22A4DDC0C();
    sub_22A4DD08C();
    v51 = v2;

    v52 = sub_22A4DD05C();
    v53 = sub_22A4DDCEC();

    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v89 = v55;
      *v54 = 136315650;
      v87 = 91;
      v88 = 0xE100000000000000;
      v56 = [v51 logIdentifier];
      v57 = sub_22A4DD5EC();
      v59 = v58;

      MEMORY[0x22AAD08C0](v57, v59);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v60 = sub_2295A3E30(v87, v88, &v89);

      *(v54 + 4) = v60;
      *(v54 + 12) = 2080;
      *(v54 + 14) = sub_2295A3E30(0xD000000000000028, 0x800000022A597250, &v89);
      *(v54 + 22) = 2080;
      v61 = sub_22A4DD4AC();
      v63 = sub_2295A3E30(v61, v62, &v89);

      *(v54 + 24) = v63;
      _os_log_impl(&dword_229538000, v52, v53, "%s %s Failed to get adaptive temperature driver from: %s", v54, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v55, -1, -1);
      MEMORY[0x22AAD4E50](v54, -1, -1);
    }

    (*(v86 + 8))(v17, v85);
    return 0;
  }

  v83 = v8;
  v23 = sub_229543DBC(v21, v22);
  v25 = v24;

  if ((v25 & 1) == 0)
  {
    goto LABEL_15;
  }

  sub_2295404B0(*(a1 + 56) + 32 * v23, &v87);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_15;
  }

  v82 = v89;
  if (v89 == 2)
  {
    v26 = [objc_msgSend(v84 featuresDataSource)];
    swift_unknownObjectRelease();
    if ((v26 & 1) == 0)
    {
      sub_229562F68(0, &qword_281401B70, off_278666148);
      sub_22A4DDC0C();
      sub_22A4DD08C();
      v69 = v2;

      v70 = sub_22A4DD05C();
      v71 = sub_22A4DDCEC();

      if (os_log_type_enabled(v70, v71))
      {
        v72 = swift_slowAlloc();
        v83 = swift_slowAlloc();
        v89 = v83;
        *v72 = 136315650;
        v87 = 91;
        v88 = 0xE100000000000000;
        v73 = [v69 logIdentifier];
        v74 = sub_22A4DD5EC();
        v76 = v75;

        MEMORY[0x22AAD08C0](v74, v76);

        MEMORY[0x22AAD08C0](93, 0xE100000000000000);
        v77 = sub_2295A3E30(v87, v88, &v89);

        *(v72 + 4) = v77;
        *(v72 + 12) = 2080;
        *(v72 + 14) = sub_2295A3E30(0xD000000000000028, 0x800000022A597250, &v89);
        *(v72 + 22) = 2080;
        v78 = sub_22A4DD4AC();
        v80 = sub_2295A3E30(v78, v79, &v89);

        *(v72 + 24) = v80;
        _os_log_impl(&dword_229538000, v70, v71, "%s %s Device does not support local presence, unable to handle message: %s", v72, 0x20u);
        v81 = v83;
        swift_arrayDestroy();
        MEMORY[0x22AAD4E50](v81, -1, -1);
        MEMORY[0x22AAD4E50](v72, -1, -1);
      }

      (*(v86 + 8))(v19, v85);
      return 0;
    }
  }

  v27 = sub_22A4DD5EC();
  if (!*(a1 + 16))
  {

LABEL_30:

    return v82;
  }

  v29 = sub_229543DBC(v27, v28);
  v31 = v30;

  if ((v31 & 1) == 0)
  {
    goto LABEL_30;
  }

  sub_2295404B0(*(a1 + 56) + 32 * v29, &v87);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E400, "ll\b");
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_30;
  }

  result = v89;
  v86 = *(v89 + 16);
  if (v86)
  {
    v33 = 0;
    v34 = (v83 + 48);
    v85 = (v83 + 32);
    v35 = v89 + 40;
    v36 = MEMORY[0x277D84F90];
    while (v33 < *(result + 16))
    {
      v64 = result;

      sub_22A4DB75C();

      if ((*v34)(v6, 1, v7) == 1)
      {
        sub_22953EAE4(v6, &unk_27D87D2A0, &unk_22A578BD0);
      }

      else
      {
        v65 = *v85;
        (*v85)(v10, v6, v7);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v36 = sub_22958B1F0(0, v36[2] + 1, 1, v36);
        }

        v66 = v36;
        v68 = v36[2];
        v67 = v36[3];
        if (v68 >= v67 >> 1)
        {
          v66 = sub_22958B1F0((v67 > 1), v68 + 1, 1, v36);
        }

        v66[2] = v68 + 1;
        v36 = v66;
        v65(v66 + ((*(v83 + 80) + 32) & ~*(v83 + 80)) + *(v83 + 72) * v68, v10, v7);
      }

      ++v33;
      v35 += 16;
      result = v64;
      if (v86 == v33)
      {
        goto LABEL_34;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_34:

    return v82;
  }

  return result;
}

uint64_t sub_2297DB7AC(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = sub_22A4DB7DC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v29[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_22A4DD07C();
  v33 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v29[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  result = sub_22956F33C(a1, a2);
  if ((result & 1) == 0)
  {
    v32 = v10;
    sub_229562F68(0, &qword_281401B70, off_278666148);
    sub_22A4DDC0C();
    sub_22A4DD08C();
    (*(v7 + 16))(v9, a1, v6);
    v14 = a3;
    v15 = sub_22A4DD05C();
    v16 = sub_22A4DDCEC();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v36 = v31;
      *v17 = 136315650;
      v34 = 91;
      v35 = 0xE100000000000000;
      v18 = [v14 logIdentifier];
      v30 = v16;
      v19 = v18;
      v20 = sub_22A4DD5EC();
      v22 = v21;

      MEMORY[0x22AAD08C0](v20, v22);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v23 = sub_2295A3E30(v34, v35, &v36);

      *(v17 + 4) = v23;
      *(v17 + 12) = 2080;
      *(v17 + 14) = sub_2295A3E30(0xD00000000000002CLL, 0x800000022A597220, &v36);
      *(v17 + 22) = 2080;
      sub_2297E3070(&qword_281403860, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v24 = sub_22A4DE5CC();
      v26 = v25;
      (*(v7 + 8))(v9, v6);
      v27 = sub_2295A3E30(v24, v26, &v36);

      *(v17 + 24) = v27;
      _os_log_impl(&dword_229538000, v15, v30, "%s %s roomUUID: %s does not support local presence", v17, 0x20u);
      v28 = v31;
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v28, -1, -1);
      MEMORY[0x22AAD4E50](v17, -1, -1);
    }

    else
    {

      (*(v7 + 8))(v9, v6);
    }

    (*(v33 + 8))(v12, v32);
    type metadata accessor for HMError(0);
    v36 = 48;
    sub_22956AD8C(MEMORY[0x277D84F90]);
    sub_2297E3070(&qword_27D87D7C0, type metadata accessor for HMError, &unk_22A576D30);
    sub_22A4DB3CC();
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_2297DBC00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[9] = a6;
  v7[10] = a7;
  v7[7] = a4;
  v7[8] = a5;
  v8 = sub_22A4DD07C();
  v7[11] = v8;
  v7[12] = *(v8 - 8);
  v7[13] = swift_task_alloc();
  v7[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2297DBCD0, 0, 0);
}

uint64_t sub_2297DBCD0()
{
  sub_229785F6C(v0 + 2);
  __swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
  v1 = swift_task_alloc();
  v0[15] = v1;
  *v1 = v0;
  v1[1] = sub_2297DBD80;
  v3 = v0[8];
  v2 = v0[9];

  return sub_2296C21E0(v3, v2);
}

uint64_t sub_2297DBD80()
{
  *(*v1 + 128) = v0;

  if (v0)
  {
    v2 = sub_2297DBFE4;
  }

  else
  {
    v2 = sub_2297DBE94;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2297DBE94()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  sub_229562F68(0, &qword_281401B70, off_278666148);
  sub_22A4DDC0C();
  sub_22A4DD08C();
  v1 = sub_22A4DD05C();
  v2 = sub_22A4DDCCC();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_229538000, v1, v2, "Successfully updated adaptive thermostat driver settings", v3, 2u);
    MEMORY[0x22AAD4E50](v3, -1, -1);
  }

  v4 = v0[14];
  v5 = v0[11];
  v6 = v0[12];
  v7 = v0[10];

  (*(v6 + 8))(v4, v5);
  [v7 respondWithSuccess];

  v8 = v0[1];

  return v8();
}

uint64_t sub_2297DBFE4()
{
  v31 = v0;
  v1 = v0[16];
  v2 = v0[7];
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  sub_229562F68(0, &qword_281401B70, off_278666148);
  sub_22A4DDC0C();
  sub_22A4DD08C();
  v3 = v2;
  v4 = v1;
  v5 = sub_22A4DD05C();
  v6 = sub_22A4DDCEC();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[16];
    v27 = v0[12];
    v28 = v0[11];
    v29 = v0[13];
    v8 = v0[7];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v9 = 136315650;
    v30[0] = v11;
    v30[1] = 91;
    v30[2] = 0xE100000000000000;
    v12 = [v8 logIdentifier];
    v13 = sub_22A4DD5EC();
    v15 = v14;

    MEMORY[0x22AAD08C0](v13, v15);

    MEMORY[0x22AAD08C0](93, 0xE100000000000000);
    v16 = sub_2295A3E30(91, 0xE100000000000000, v30);

    *(v9 + 4) = v16;
    *(v9 + 12) = 2080;
    *(v9 + 14) = sub_2295A3E30(0xD00000000000002CLL, 0x800000022A597220, v30);
    *(v9 + 22) = 2112;
    v17 = v7;
    v18 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 24) = v18;
    *v10 = v18;
    _os_log_impl(&dword_229538000, v5, v6, "%s %s Failed to update settings with error: %@", v9, 0x20u);
    sub_22953EAE4(v10, &qword_27D87D7D0, &unk_22A578D90);
    MEMORY[0x22AAD4E50](v10, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v11, -1, -1);
    MEMORY[0x22AAD4E50](v9, -1, -1);

    (*(v27 + 8))(v29, v28);
  }

  else
  {
    v20 = v0[12];
    v19 = v0[13];
    v21 = v0[11];

    (*(v20 + 8))(v19, v21);
  }

  v22 = v0[16];
  v23 = v0[10];
  v24 = sub_22A4DB3DC();
  [v23 respondWithError_];

  v25 = v0[1];

  return v25();
}

void sub_2297DC370(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v94 - v5;
  v7 = sub_22A4DD07C();
  v8 = *(v7 - 8);
  v97 = v7;
  v98 = v8;
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v94 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v96 = &v94 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v94 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v94 - v17;
  v19 = [a1 name];
  v20 = sub_22A4DD5EC();
  v22 = v21;
  if (v20 == sub_22A4DD5EC() && v22 == v23)
  {
  }

  else
  {
    v25 = sub_22A4DE60C();

    if ((v25 & 1) == 0)
    {
      sub_229562F68(0, &qword_281401B70, off_278666148);
      sub_22A4DDC0C();
      sub_22A4DD08C();
      v26 = v2;
      v27 = a1;
      v28 = sub_22A4DD05C();
      v29 = sub_22A4DDCEC();

      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        v32 = swift_slowAlloc();
        v96 = v32;
        *v30 = 136315650;
        v99 = 91;
        v100 = 0xE100000000000000;
        v101 = v32;
        v33 = [v26 logIdentifier];
        v34 = sub_22A4DD5EC();
        v36 = v35;

        MEMORY[0x22AAD08C0](v34, v36);

        MEMORY[0x22AAD08C0](93, 0xE100000000000000);
        v37 = sub_2295A3E30(v99, v100, &v101);

        *(v30 + 4) = v37;
        *(v30 + 12) = 2080;
        *(v30 + 14) = sub_2295A3E30(0xD000000000000036, 0x800000022A5971E0, &v101);
        *(v30 + 22) = 2112;
        *(v30 + 24) = v27;
        *v31 = v27;
        v38 = v27;
        _os_log_impl(&dword_229538000, v28, v29, "%s %s Unexpected message, unable to handle message: %@", v30, 0x20u);
        sub_22953EAE4(v31, &qword_27D87D7D0, &unk_22A578D90);
        MEMORY[0x22AAD4E50](v31, -1, -1);
        v39 = v96;
        swift_arrayDestroy();
        MEMORY[0x22AAD4E50](v39, -1, -1);
        MEMORY[0x22AAD4E50](v30, -1, -1);
      }

      (*(v98 + 8))(v18, v97);
      v40 = [objc_opt_self() hmErrorWithCode_];
LABEL_20:
      v76 = v40;
      v77 = sub_22A4DB3DC();

      [v27 respondWithError_];
      goto LABEL_21;
    }
  }

  v41 = [v2 supportsAdaptiveTemperatureAutomations];
  v42 = [v41 BOOLValue];

  if ((v42 & 1) == 0)
  {
    sub_229562F68(0, &qword_281401B70, off_278666148);
    sub_22A4DDC0C();
    sub_22A4DD08C();
    v50 = v2;
    v27 = a1;
    v51 = sub_22A4DD05C();
    v52 = sub_22A4DDCEC();

    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v96 = v55;
      *v53 = 136315650;
      v99 = 91;
      v100 = 0xE100000000000000;
      v101 = v55;
      v56 = [v50 logIdentifier];
      v57 = sub_22A4DD5EC();
      v59 = v58;

      MEMORY[0x22AAD08C0](v57, v59);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v60 = sub_2295A3E30(v99, v100, &v101);

      *(v53 + 4) = v60;
      *(v53 + 12) = 2080;
      *(v53 + 14) = sub_2295A3E30(0xD000000000000036, 0x800000022A5971E0, &v101);
      *(v53 + 22) = 2112;
      *(v53 + 24) = v27;
      *v54 = v27;
      v61 = v27;
      _os_log_impl(&dword_229538000, v51, v52, "%s %s Accessory does not support adaptive temperature, unable to handle message: %@", v53, 0x20u);
      sub_22953EAE4(v54, &qword_27D87D7D0, &unk_22A578D90);
      MEMORY[0x22AAD4E50](v54, -1, -1);
      v62 = v96;
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v62, -1, -1);
      MEMORY[0x22AAD4E50](v53, -1, -1);
    }

    (*(v98 + 8))(v16, v97);
    v40 = [objc_opt_self() hmErrorWithCode_];
    goto LABEL_20;
  }

  v43 = [v2 home];
  if (!v43)
  {
    sub_229562F68(0, &qword_281401B70, off_278666148);
    sub_22A4DDC0C();
    sub_22A4DD08C();
    v63 = v2;
    v27 = a1;
    v64 = sub_22A4DD05C();
    v65 = sub_22A4DDCEC();

    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      v96 = v68;
      *v66 = 136315650;
      v99 = 91;
      v100 = 0xE100000000000000;
      v101 = v68;
      v69 = [v63 logIdentifier];
      v70 = sub_22A4DD5EC();
      v72 = v71;

      MEMORY[0x22AAD08C0](v70, v72);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v73 = sub_2295A3E30(v99, v100, &v101);

      *(v66 + 4) = v73;
      *(v66 + 12) = 2080;
      *(v66 + 14) = sub_2295A3E30(0xD000000000000036, 0x800000022A5971E0, &v101);
      *(v66 + 22) = 2112;
      *(v66 + 24) = v27;
      *v67 = v27;
      v74 = v27;
      _os_log_impl(&dword_229538000, v64, v65, "%s %s Missing home, unable to handle message: %@", v66, 0x20u);
      sub_22953EAE4(v67, &qword_27D87D7D0, &unk_22A578D90);
      MEMORY[0x22AAD4E50](v67, -1, -1);
      v75 = v96;
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v75, -1, -1);
      MEMORY[0x22AAD4E50](v66, -1, -1);
    }

    (*(v98 + 8))(v11, v97);
    v40 = [objc_opt_self() hmErrorWithCode_];
    goto LABEL_20;
  }

  v44 = v43;
  v45 = [objc_msgSend(v43 featuresDataSource)];
  swift_unknownObjectRelease();
  if (v45)
  {
    v46 = sub_22A4DD9DC();
    (*(*(v46 - 8) + 56))(v6, 1, 1, v46);
    v47 = swift_allocObject();
    v47[2] = 0;
    v47[3] = 0;
    v47[4] = v2;
    v47[5] = a1;
    v48 = v2;
    v49 = a1;
    sub_22957F3C0(0, 0, v6, &unk_22A584348, v47);

    return;
  }

  sub_229562F68(0, &qword_281401B70, off_278666148);
  sub_22A4DDC0C();
  v78 = v96;
  sub_22A4DD08C();
  v79 = v2;
  v80 = a1;
  v81 = sub_22A4DD05C();
  v82 = sub_22A4DDCEC();

  if (os_log_type_enabled(v81, v82))
  {
    v83 = swift_slowAlloc();
    v84 = swift_slowAlloc();
    v85 = swift_slowAlloc();
    v95 = v85;
    *v83 = 136315650;
    v99 = 91;
    v100 = 0xE100000000000000;
    v101 = v85;
    v86 = [v79 logIdentifier];
    v87 = sub_22A4DD5EC();
    v89 = v88;

    MEMORY[0x22AAD08C0](v87, v89);

    MEMORY[0x22AAD08C0](93, 0xE100000000000000);
    v90 = sub_2295A3E30(v99, v100, &v101);

    *(v83 + 4) = v90;
    *(v83 + 12) = 2080;
    *(v83 + 14) = sub_2295A3E30(0xD000000000000036, 0x800000022A5971E0, &v101);
    *(v83 + 22) = 2112;
    *(v83 + 24) = v80;
    *v84 = v80;
    v91 = v80;
    _os_log_impl(&dword_229538000, v81, v82, "%s %s Home Activity State feature is not enabled, unable to handle message: %@", v83, 0x20u);
    sub_22953EAE4(v84, &qword_27D87D7D0, &unk_22A578D90);
    MEMORY[0x22AAD4E50](v84, -1, -1);
    v92 = v95;
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v92, -1, -1);
    MEMORY[0x22AAD4E50](v83, -1, -1);

    (*(v98 + 8))(v96, v97);
  }

  else
  {

    (*(v98 + 8))(v78, v97);
  }

  v93 = [objc_opt_self() hmErrorWithCode_];
  v77 = sub_22A4DB3DC();

  [v80 respondWithError_];
LABEL_21:
}

uint64_t sub_2297DCFA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[18] = a4;
  v5[19] = a5;
  v6 = sub_22A4DD07C();
  v5[20] = v6;
  v5[21] = *(v6 - 8);
  v5[22] = swift_task_alloc();
  v5[23] = swift_task_alloc();
  v7 = sub_22A4DB7DC();
  v5[24] = v7;
  v5[25] = *(v7 - 8);
  v5[26] = swift_task_alloc();
  v8 = swift_task_alloc();
  v5[27] = v8;
  *v8 = v5;
  v8[1] = sub_2297DD100;

  return sub_2297D361C();
}

uint64_t sub_2297DD100(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[28] = a1;
  v4[29] = a2;
  v4[30] = v2;

  if (v2)
  {
    v5 = sub_2297DD794;
  }

  else
  {
    v5 = sub_2297DD218;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2297DD218()
{
  v57 = v0;
  v1 = v0[29];
  v2 = MEMORY[0x277D84F98];
  if (v1)
  {
    v51 = sub_22A4DD5EC();
    v52 = v3;
    v4 = *(v1 + 16);
    if (v4)
    {
      v5 = v0[25];
      v7 = *(v5 + 16);
      v6 = v5 + 16;
      v8 = v1 + ((*(v6 + 64) + 32) & ~*(v6 + 64));
      v53 = *(v6 + 56);
      v54 = v7;
      v9 = MEMORY[0x277D84F90];
      do
      {
        v10 = v0[26];
        v11 = v0[24];
        v54(v10, v8, v11);
        v12 = sub_22A4DB76C();
        v14 = v13;
        (*(v6 - 8))(v10, v11);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_22958A53C(0, *(v9 + 2) + 1, 1, v9);
        }

        v16 = *(v9 + 2);
        v15 = *(v9 + 3);
        if (v16 >= v15 >> 1)
        {
          v9 = sub_22958A53C((v15 > 1), v16 + 1, 1, v9);
        }

        *(v9 + 2) = v16 + 1;
        v17 = &v9[16 * v16];
        *(v17 + 4) = v12;
        *(v17 + 5) = v14;
        v8 += v53;
        --v4;
        v0 = v55;
      }

      while (v4);
    }

    else
    {
      v9 = MEMORY[0x277D84F90];
    }

    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E400, "ll\b");
    v0[13] = v18;
    v0[10] = v9;
    sub_229543C58((v0 + 10), (v0 + 14));
    v19 = MEMORY[0x277D84F98];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v56 = v19;
    v21 = v0[17];
    v22 = __swift_mutable_project_boxed_opaque_existential_0((v0 + 14), v21);
    v23 = *(v21 - 8);
    v24 = swift_task_alloc();
    (*(v23 + 16))(v24, v22, v21);
    sub_2297FF768(v24, v51, v52, isUniquelyReferenced_nonNull_native, &v56, v18);
    __swift_destroy_boxed_opaque_existential_0(v0 + 14);

    v2 = v56;
  }

  v25 = v0[28];
  v26 = v0;
  v27 = v0[19];
  v28 = sub_22A4DD5EC();
  v30 = v29;
  v0[5] = MEMORY[0x277D83E88];
  v0[2] = v25;
  sub_229543C58((v0 + 2), (v0 + 6));
  v31 = swift_isUniquelyReferenced_nonNull_native();
  v56 = v2;
  v32 = v0[9];
  v33 = __swift_mutable_project_boxed_opaque_existential_0((v0 + 6), v32);
  v34 = *(v32 - 8);
  v35 = swift_task_alloc();
  (*(v34 + 16))(v35, v33, v32);
  sub_2297FF580(*v35, v28, v30, v31, &v56);
  __swift_destroy_boxed_opaque_existential_0(v26 + 6);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
  v36 = sub_22A4DD47C();

  [v27 respondWithPayload_];

  sub_229562F68(0, &qword_281401B70, off_278666148);
  sub_22A4DDC0C();
  sub_22A4DD08C();
  v37 = sub_22A4DD05C();
  v38 = sub_22A4DDCCC();
  v39 = os_log_type_enabled(v37, v38);
  v40 = v26[23];
  v42 = v26[20];
  v41 = v26[21];
  if (v39)
  {
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v56 = v44;
    *v43 = 136315138;

    v45 = sub_22A4DD4AC();
    v47 = v46;

    v48 = sub_2295A3E30(v45, v47, &v56);

    *(v43 + 4) = v48;
    _os_log_impl(&dword_229538000, v37, v38, "Successfully fetched adaptive temperature driver settings: %s", v43, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v44);
    MEMORY[0x22AAD4E50](v44, -1, -1);
    MEMORY[0x22AAD4E50](v43, -1, -1);
  }

  (*(v41 + 8))(v40, v42);

  v49 = *(v55 + 8);

  return v49();
}

uint64_t sub_2297DD794()
{
  v31 = v0;
  v1 = v0[30];
  v2 = v0[18];
  sub_229562F68(0, &qword_281401B70, off_278666148);
  sub_22A4DDC0C();
  sub_22A4DD08C();
  v3 = v2;
  v4 = v1;
  v5 = sub_22A4DD05C();
  v6 = sub_22A4DDCEC();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[30];
    v27 = v0[21];
    v28 = v0[20];
    v29 = v0[22];
    v8 = v0[18];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v9 = 136315650;
    v30[0] = v11;
    v30[1] = 91;
    v30[2] = 0xE100000000000000;
    v12 = [v8 logIdentifier];
    v13 = sub_22A4DD5EC();
    v15 = v14;

    MEMORY[0x22AAD08C0](v13, v15);

    MEMORY[0x22AAD08C0](93, 0xE100000000000000);
    v16 = sub_2295A3E30(91, 0xE100000000000000, v30);

    *(v9 + 4) = v16;
    *(v9 + 12) = 2080;
    *(v9 + 14) = sub_2295A3E30(0xD000000000000036, 0x800000022A5971E0, v30);
    *(v9 + 22) = 2112;
    v17 = v7;
    v18 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 24) = v18;
    *v10 = v18;
    _os_log_impl(&dword_229538000, v5, v6, "%s %s Failed to update settings with error: %@", v9, 0x20u);
    sub_22953EAE4(v10, &qword_27D87D7D0, &unk_22A578D90);
    MEMORY[0x22AAD4E50](v10, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v11, -1, -1);
    MEMORY[0x22AAD4E50](v9, -1, -1);

    (*(v27 + 8))(v29, v28);
  }

  else
  {
    v20 = v0[21];
    v19 = v0[22];
    v21 = v0[20];

    (*(v20 + 8))(v19, v21);
  }

  v22 = v0[30];
  v23 = v0[19];
  v24 = sub_22A4DB3DC();
  [v23 respondWithError_];

  v25 = v0[1];

  return v25();
}

void sub_2297DDB24(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v94 - v5;
  v7 = sub_22A4DD07C();
  v8 = *(v7 - 8);
  v97 = v7;
  v98 = v8;
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v94 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v96 = &v94 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v94 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v94 - v17;
  v19 = [a1 name];
  v20 = sub_22A4DD5EC();
  v22 = v21;
  if (v20 == sub_22A4DD5EC() && v22 == v23)
  {
  }

  else
  {
    v25 = sub_22A4DE60C();

    if ((v25 & 1) == 0)
    {
      sub_229562F68(0, &qword_281401B70, off_278666148);
      sub_22A4DDC0C();
      sub_22A4DD08C();
      v26 = v2;
      v27 = a1;
      v28 = sub_22A4DD05C();
      v29 = sub_22A4DDCEC();

      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        v32 = swift_slowAlloc();
        v96 = v32;
        *v30 = 136315650;
        v99 = 91;
        v100 = 0xE100000000000000;
        v101 = v32;
        v33 = [v26 logIdentifier];
        v34 = sub_22A4DD5EC();
        v36 = v35;

        MEMORY[0x22AAD08C0](v34, v36);

        MEMORY[0x22AAD08C0](93, 0xE100000000000000);
        v37 = sub_2295A3E30(v99, v100, &v101);

        *(v30 + 4) = v37;
        *(v30 + 12) = 2080;
        *(v30 + 14) = sub_2295A3E30(0xD00000000000002DLL, 0x800000022A5971B0, &v101);
        *(v30 + 22) = 2112;
        *(v30 + 24) = v27;
        *v31 = v27;
        v38 = v27;
        _os_log_impl(&dword_229538000, v28, v29, "%s %s Unexpected message, unable to handle message: %@", v30, 0x20u);
        sub_22953EAE4(v31, &qword_27D87D7D0, &unk_22A578D90);
        MEMORY[0x22AAD4E50](v31, -1, -1);
        v39 = v96;
        swift_arrayDestroy();
        MEMORY[0x22AAD4E50](v39, -1, -1);
        MEMORY[0x22AAD4E50](v30, -1, -1);
      }

      (*(v98 + 8))(v18, v97);
      v40 = [objc_opt_self() hmErrorWithCode_];
LABEL_20:
      v76 = v40;
      v77 = sub_22A4DB3DC();

      [v27 respondWithError_];
      goto LABEL_21;
    }
  }

  v41 = [v2 supportsAdaptiveTemperatureAutomations];
  v42 = [v41 BOOLValue];

  if ((v42 & 1) == 0)
  {
    sub_229562F68(0, &qword_281401B70, off_278666148);
    sub_22A4DDC0C();
    sub_22A4DD08C();
    v50 = v2;
    v27 = a1;
    v51 = sub_22A4DD05C();
    v52 = sub_22A4DDCEC();

    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v96 = v55;
      *v53 = 136315650;
      v99 = 91;
      v100 = 0xE100000000000000;
      v101 = v55;
      v56 = [v50 logIdentifier];
      v57 = sub_22A4DD5EC();
      v59 = v58;

      MEMORY[0x22AAD08C0](v57, v59);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v60 = sub_2295A3E30(v99, v100, &v101);

      *(v53 + 4) = v60;
      *(v53 + 12) = 2080;
      *(v53 + 14) = sub_2295A3E30(0xD00000000000002DLL, 0x800000022A5971B0, &v101);
      *(v53 + 22) = 2112;
      *(v53 + 24) = v27;
      *v54 = v27;
      v61 = v27;
      _os_log_impl(&dword_229538000, v51, v52, "%s %s Accessory does not support adaptive temperature, unable to handle message: %@", v53, 0x20u);
      sub_22953EAE4(v54, &qword_27D87D7D0, &unk_22A578D90);
      MEMORY[0x22AAD4E50](v54, -1, -1);
      v62 = v96;
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v62, -1, -1);
      MEMORY[0x22AAD4E50](v53, -1, -1);
    }

    (*(v98 + 8))(v16, v97);
    v40 = [objc_opt_self() hmErrorWithCode_];
    goto LABEL_20;
  }

  v43 = [v2 home];
  if (!v43)
  {
    sub_229562F68(0, &qword_281401B70, off_278666148);
    sub_22A4DDC0C();
    sub_22A4DD08C();
    v63 = v2;
    v27 = a1;
    v64 = sub_22A4DD05C();
    v65 = sub_22A4DDCEC();

    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      v96 = v68;
      *v66 = 136315650;
      v99 = 91;
      v100 = 0xE100000000000000;
      v101 = v68;
      v69 = [v63 logIdentifier];
      v70 = sub_22A4DD5EC();
      v72 = v71;

      MEMORY[0x22AAD08C0](v70, v72);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v73 = sub_2295A3E30(v99, v100, &v101);

      *(v66 + 4) = v73;
      *(v66 + 12) = 2080;
      *(v66 + 14) = sub_2295A3E30(0xD00000000000002DLL, 0x800000022A5971B0, &v101);
      *(v66 + 22) = 2112;
      *(v66 + 24) = v27;
      *v67 = v27;
      v74 = v27;
      _os_log_impl(&dword_229538000, v64, v65, "%s %s Missing home, unable to handle message: %@", v66, 0x20u);
      sub_22953EAE4(v67, &qword_27D87D7D0, &unk_22A578D90);
      MEMORY[0x22AAD4E50](v67, -1, -1);
      v75 = v96;
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v75, -1, -1);
      MEMORY[0x22AAD4E50](v66, -1, -1);
    }

    (*(v98 + 8))(v11, v97);
    v40 = [objc_opt_self() hmErrorWithCode_];
    goto LABEL_20;
  }

  v44 = v43;
  v45 = [objc_msgSend(v43 featuresDataSource)];
  swift_unknownObjectRelease();
  if (v45)
  {
    v46 = sub_22A4DD9DC();
    (*(*(v46 - 8) + 56))(v6, 1, 1, v46);
    v47 = swift_allocObject();
    v47[2] = 0;
    v47[3] = 0;
    v47[4] = v2;
    v47[5] = a1;
    v48 = v2;
    v49 = a1;
    sub_22957F3C0(0, 0, v6, &unk_22A584338, v47);

    return;
  }

  sub_229562F68(0, &qword_281401B70, off_278666148);
  sub_22A4DDC0C();
  v78 = v96;
  sub_22A4DD08C();
  v79 = v2;
  v80 = a1;
  v81 = sub_22A4DD05C();
  v82 = sub_22A4DDCEC();

  if (os_log_type_enabled(v81, v82))
  {
    v83 = swift_slowAlloc();
    v84 = swift_slowAlloc();
    v85 = swift_slowAlloc();
    v95 = v85;
    *v83 = 136315650;
    v99 = 91;
    v100 = 0xE100000000000000;
    v101 = v85;
    v86 = [v79 logIdentifier];
    v87 = sub_22A4DD5EC();
    v89 = v88;

    MEMORY[0x22AAD08C0](v87, v89);

    MEMORY[0x22AAD08C0](93, 0xE100000000000000);
    v90 = sub_2295A3E30(v99, v100, &v101);

    *(v83 + 4) = v90;
    *(v83 + 12) = 2080;
    *(v83 + 14) = sub_2295A3E30(0xD00000000000002DLL, 0x800000022A5971B0, &v101);
    *(v83 + 22) = 2112;
    *(v83 + 24) = v80;
    *v84 = v80;
    v91 = v80;
    _os_log_impl(&dword_229538000, v81, v82, "%s %s Home Activity State feature is not enabled, unable to handle message: %@", v83, 0x20u);
    sub_22953EAE4(v84, &qword_27D87D7D0, &unk_22A578D90);
    MEMORY[0x22AAD4E50](v84, -1, -1);
    v92 = v95;
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v92, -1, -1);
    MEMORY[0x22AAD4E50](v83, -1, -1);

    (*(v98 + 8))(v96, v97);
  }

  else
  {

    (*(v98 + 8))(v78, v97);
  }

  v93 = [objc_opt_self() hmErrorWithCode_];
  v77 = sub_22A4DB3DC();

  [v80 respondWithError_];
LABEL_21:
}

uint64_t sub_2297DE75C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[10] = a4;
  v5[11] = a5;
  v6 = sub_22A4DD07C();
  v5[12] = v6;
  v5[13] = *(v6 - 8);
  v5[14] = swift_task_alloc();
  v5[15] = swift_task_alloc();
  v7 = swift_task_alloc();
  v5[16] = v7;
  *v7 = v5;
  v7[1] = sub_2297DE858;

  return sub_2297D39D4();
}

uint64_t sub_2297DE858(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 136) = v1;

  if (v1)
  {
    v5 = sub_2297DED34;
  }

  else
  {
    *(v4 + 144) = a1;
    v5 = sub_2297DE980;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2297DE980()
{
  v32 = v0;
  v29 = v0[11];
  v1 = sub_22A4DD5EC();
  v3 = v2;
  sub_229562F68(0, &qword_27D87CD80, 0x277CD1F20);
  v4 = sub_22A4DD81C();

  v5 = encodeRootObject();

  v6 = sub_22A4DB62C();
  v8 = v7;

  v0[2] = v6;
  v0[5] = MEMORY[0x277CC9318];
  v0[3] = v8;
  sub_229543C58((v0 + 2), (v0 + 6));
  v9 = MEMORY[0x277D84F98];
  LOBYTE(v8) = swift_isUniquelyReferenced_nonNull_native();
  v31 = v9;
  v10 = v0[9];
  v11 = __swift_mutable_project_boxed_opaque_existential_0((v0 + 6), v10);
  v12 = *(v10 - 8);
  v13 = swift_task_alloc();
  (*(v12 + 16))(v13, v11, v10);
  sub_2297FF398(*v13, v13[1], v1, v3, v8, &v31);
  __swift_destroy_boxed_opaque_existential_0(v0 + 6);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
  v14 = sub_22A4DD47C();

  [v29 respondWithPayload_];

  sub_229562F68(0, &qword_281401B70, off_278666148);
  sub_22A4DDC0C();
  sub_22A4DD08C();
  v15 = sub_22A4DD05C();
  v16 = sub_22A4DDCCC();
  v17 = os_log_type_enabled(v15, v16);
  v18 = v0[15];
  v20 = v0[12];
  v19 = v0[13];
  if (v17)
  {
    v30 = v0[15];
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v31 = v22;
    *v21 = 136315138;

    v23 = sub_22A4DD4AC();
    v25 = v24;

    v26 = sub_2295A3E30(v23, v25, &v31);

    *(v21 + 4) = v26;
    _os_log_impl(&dword_229538000, v15, v16, "Successfully fetched thermostat sleep schedule: %s", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v22);
    MEMORY[0x22AAD4E50](v22, -1, -1);
    MEMORY[0x22AAD4E50](v21, -1, -1);

    (*(v19 + 8))(v30, v20);
  }

  else
  {

    (*(v19 + 8))(v18, v20);
  }

  v27 = v0[1];

  return v27();
}

uint64_t sub_2297DED34()
{
  v31 = v0;
  v1 = v0[17];
  v2 = v0[10];
  sub_229562F68(0, &qword_281401B70, off_278666148);
  sub_22A4DDC0C();
  sub_22A4DD08C();
  v3 = v2;
  v4 = v1;
  v5 = sub_22A4DD05C();
  v6 = sub_22A4DDCEC();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[17];
    v27 = v0[13];
    v28 = v0[12];
    v29 = v0[14];
    v8 = v0[10];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v9 = 136315650;
    v30[0] = v11;
    v30[1] = 91;
    v30[2] = 0xE100000000000000;
    v12 = [v8 logIdentifier];
    v13 = sub_22A4DD5EC();
    v15 = v14;

    MEMORY[0x22AAD08C0](v13, v15);

    MEMORY[0x22AAD08C0](93, 0xE100000000000000);
    v16 = sub_2295A3E30(91, 0xE100000000000000, v30);

    *(v9 + 4) = v16;
    *(v9 + 12) = 2080;
    *(v9 + 14) = sub_2295A3E30(0xD00000000000002DLL, 0x800000022A5971B0, v30);
    *(v9 + 22) = 2112;
    v17 = v7;
    v18 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 24) = v18;
    *v10 = v18;
    _os_log_impl(&dword_229538000, v5, v6, "%s %s Failed to fetch thermostat sleep schedule with error: %@", v9, 0x20u);
    sub_22953EAE4(v10, &qword_27D87D7D0, &unk_22A578D90);
    MEMORY[0x22AAD4E50](v10, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v11, -1, -1);
    MEMORY[0x22AAD4E50](v9, -1, -1);

    (*(v27 + 8))(v29, v28);
  }

  else
  {
    v20 = v0[13];
    v19 = v0[14];
    v21 = v0[12];

    (*(v20 + 8))(v19, v21);
  }

  v22 = v0[17];
  v23 = v0[11];
  v24 = sub_22A4DB3DC();
  [v23 respondWithError_];

  v25 = v0[1];

  return v25();
}

void sub_2297DF0B8(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70);
  MEMORY[0x28223BE20](v4 - 8);
  v123 = &v122 - v5;
  v6 = sub_22A4DD07C();
  v7 = *(v6 - 8);
  v125 = v6;
  v126 = v7;
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v122 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v124 = &v122 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v122 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v122 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = &v122 - v19;
  v21 = a1;
  v22 = [a1 name];
  v23 = sub_22A4DD5EC();
  v25 = v24;
  if (v23 == sub_22A4DD5EC() && v25 == v26)
  {
  }

  else
  {
    v28 = sub_22A4DE60C();

    if ((v28 & 1) == 0)
    {
      sub_229562F68(0, &qword_281401B70, off_278666148);
      sub_22A4DDC0C();
      sub_22A4DD08C();
      v29 = v2;
      v30 = a1;
      v31 = sub_22A4DD05C();
      v32 = sub_22A4DDCEC();

      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        v124 = swift_slowAlloc();
        *&v128 = v124;
        *v33 = 136315650;
        *&v130[0] = 91;
        *(&v130[0] + 1) = 0xE100000000000000;
        v35 = [v29 logIdentifier];
        v36 = sub_22A4DD5EC();
        v38 = v37;

        MEMORY[0x22AAD08C0](v36, v38);

        MEMORY[0x22AAD08C0](93, 0xE100000000000000);
        v39 = sub_2295A3E30(*&v130[0], *(&v130[0] + 1), &v128);

        *(v33 + 4) = v39;
        *(v33 + 12) = 2080;
        *(v33 + 14) = sub_2295A3E30(0xD00000000000002BLL, 0x800000022A597180, &v128);
        *(v33 + 22) = 2112;
        *(v33 + 24) = v30;
        *v34 = v30;
        v40 = v30;
        _os_log_impl(&dword_229538000, v31, v32, "%s %s Unexpected message, unable to handle message: %@", v33, 0x20u);
        sub_22953EAE4(v34, &qword_27D87D7D0, &unk_22A578D90);
        MEMORY[0x22AAD4E50](v34, -1, -1);
        v41 = v124;
        swift_arrayDestroy();
        MEMORY[0x22AAD4E50](v41, -1, -1);
        MEMORY[0x22AAD4E50](v33, -1, -1);
      }

      (*(v126 + 8))(v20, v125);
      v42 = [objc_opt_self() hmErrorWithCode_];
LABEL_22:
      v82 = v42;
      v69 = sub_22A4DB3DC();

      [v30 respondWithError_];
      goto LABEL_38;
    }
  }

  v43 = [v2 supportsAdaptiveTemperatureAutomations];
  v44 = [v43 BOOLValue];

  if ((v44 & 1) == 0)
  {
    sub_229562F68(0, &qword_281401B70, off_278666148);
    sub_22A4DDC0C();
    sub_22A4DD08C();
    v55 = v2;
    v56 = v21;
    v57 = sub_22A4DD05C();
    v58 = sub_22A4DDCEC();

    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      v124 = swift_slowAlloc();
      *&v128 = v124;
      *v59 = 136315650;
      *&v130[0] = 91;
      *(&v130[0] + 1) = 0xE100000000000000;
      v61 = [v55 logIdentifier];
      v62 = sub_22A4DD5EC();
      v64 = v63;

      MEMORY[0x22AAD08C0](v62, v64);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v65 = sub_2295A3E30(*&v130[0], *(&v130[0] + 1), &v128);

      *(v59 + 4) = v65;
      *(v59 + 12) = 2080;
      *(v59 + 14) = sub_2295A3E30(0xD00000000000002BLL, 0x800000022A597180, &v128);
      *(v59 + 22) = 2112;
      *(v59 + 24) = v56;
      *v60 = v56;
      v66 = v56;
      _os_log_impl(&dword_229538000, v57, v58, "%s %s Accessory does not support adaptive temperature, unable to handle message: %@", v59, 0x20u);
      sub_22953EAE4(v60, &qword_27D87D7D0, &unk_22A578D90);
      MEMORY[0x22AAD4E50](v60, -1, -1);
      v67 = v124;
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v67, -1, -1);
      MEMORY[0x22AAD4E50](v59, -1, -1);
    }

    (*(v126 + 8))(v18, v125);
    v68 = [objc_opt_self() hmErrorWithCode_];
    v69 = sub_22A4DB3DC();

    [v56 respondWithError_];
    goto LABEL_38;
  }

  v45 = [v2 home];
  if (!v45)
  {
    sub_229562F68(0, &qword_281401B70, off_278666148);
    sub_22A4DDC0C();
    sub_22A4DD08C();
    v70 = v2;
    v30 = v21;
    v71 = sub_22A4DD05C();
    v72 = sub_22A4DDCEC();

    if (os_log_type_enabled(v71, v72))
    {
      v73 = swift_slowAlloc();
      v74 = swift_slowAlloc();
      v124 = swift_slowAlloc();
      *&v128 = v124;
      *v73 = 136315650;
      *&v130[0] = 91;
      *(&v130[0] + 1) = 0xE100000000000000;
      v75 = [v70 logIdentifier];
      v76 = sub_22A4DD5EC();
      v78 = v77;

      MEMORY[0x22AAD08C0](v76, v78);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v79 = sub_2295A3E30(*&v130[0], *(&v130[0] + 1), &v128);

      *(v73 + 4) = v79;
      *(v73 + 12) = 2080;
      *(v73 + 14) = sub_2295A3E30(0xD00000000000002BLL, 0x800000022A597180, &v128);
      *(v73 + 22) = 2112;
      *(v73 + 24) = v30;
      *v74 = v30;
      v80 = v30;
      _os_log_impl(&dword_229538000, v71, v72, "%s %s Missing home, unable to handle message: %@", v73, 0x20u);
      sub_22953EAE4(v74, &qword_27D87D7D0, &unk_22A578D90);
      MEMORY[0x22AAD4E50](v74, -1, -1);
      v81 = v124;
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v81, -1, -1);
      MEMORY[0x22AAD4E50](v73, -1, -1);
    }

    (*(v126 + 8))(v10, v125);
    v42 = [objc_opt_self() hmErrorWithCode_];
    goto LABEL_22;
  }

  v46 = v45;
  v47 = [objc_msgSend(v45 featuresDataSource)];
  swift_unknownObjectRelease();
  if (v47)
  {
    v48 = [v21 messagePayload];
    v49 = v15;
    if (v48)
    {

      v50 = *MEMORY[0x277CCF0A0];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87F060, &qword_22A578050);
      v51 = swift_allocObject();
      *(v51 + 16) = xmmword_22A5761A0;
      *(v51 + 32) = sub_229562F68(0, &unk_27D880900, 0x277CBEA60);
      *(v51 + 40) = sub_229562F68(0, &qword_27D87CD80, 0x277CD1F20);
      v52 = v50;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87F058, &unk_22A582DE0);
      v53 = sub_22A4DD81C();

      v54 = [v21 unarchivedObjectForKey:v52 ofClasses:v53];

      if (v54)
      {
        sub_22A4DE01C();
        swift_unknownObjectRelease();
      }

      else
      {
        v128 = 0u;
        v129 = 0u;
      }

      v130[0] = v128;
      v130[1] = v129;
      if (*(&v129 + 1))
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87F1E0, &unk_22A57E360);
        if (swift_dynamicCast())
        {
          v100 = v127;
          v101 = sub_22A4DD9DC();
          v102 = v123;
          (*(*(v101 - 8) + 56))(v123, 1, 1, v101);
          v103 = swift_allocObject();
          v103[2] = 0;
          v103[3] = 0;
          v103[4] = v2;
          v103[5] = v100;
          v103[6] = v21;
          v104 = v2;
          v105 = v21;
          sub_22957F3C0(0, 0, v102, &unk_22A584328, v103);

          return;
        }
      }

      else
      {
        sub_22953EAE4(v130, &unk_27D87DE60, &unk_22A57A960);
      }
    }

    sub_229562F68(0, &qword_281401B70, off_278666148);
    sub_22A4DDC0C();
    sub_22A4DD08C();
    v106 = v2;
    v85 = v21;
    v107 = sub_22A4DD05C();
    v108 = sub_22A4DDCEC();

    if (os_log_type_enabled(v107, v108))
    {
      v109 = swift_slowAlloc();
      v110 = swift_slowAlloc();
      v123 = v46;
      v111 = v110;
      v124 = swift_slowAlloc();
      *&v128 = v124;
      *v109 = 136315650;
      *&v130[0] = 91;
      *(&v130[0] + 1) = 0xE100000000000000;
      v112 = [v106 logIdentifier];
      v113 = sub_22A4DD5EC();
      v114 = v49;
      v116 = v115;

      MEMORY[0x22AAD08C0](v113, v116);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v117 = sub_2295A3E30(*&v130[0], *(&v130[0] + 1), &v128);

      *(v109 + 4) = v117;
      *(v109 + 12) = 2080;
      *(v109 + 14) = sub_2295A3E30(0xD00000000000002BLL, 0x800000022A597180, &v128);
      *(v109 + 22) = 2112;
      *(v109 + 24) = v85;
      *v111 = v85;
      v118 = v85;
      _os_log_impl(&dword_229538000, v107, v108, "%s %s Missing payload, unable to handle message: %@", v109, 0x20u);
      sub_22953EAE4(v111, &qword_27D87D7D0, &unk_22A578D90);
      v119 = v111;
      v46 = v123;
      MEMORY[0x22AAD4E50](v119, -1, -1);
      v120 = v124;
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v120, -1, -1);
      MEMORY[0x22AAD4E50](v109, -1, -1);

      (*(v126 + 8))(v114, v125);
    }

    else
    {

      (*(v126 + 8))(v49, v125);
    }

    v99 = [objc_opt_self() hmErrorWithCode_];
  }

  else
  {
    sub_229562F68(0, &qword_281401B70, off_278666148);
    sub_22A4DDC0C();
    v83 = v124;
    sub_22A4DD08C();
    v84 = v2;
    v85 = v21;
    v86 = sub_22A4DD05C();
    v87 = sub_22A4DDCEC();

    if (os_log_type_enabled(v86, v87))
    {
      v88 = swift_slowAlloc();
      v89 = swift_slowAlloc();
      v123 = v46;
      v90 = v89;
      v91 = swift_slowAlloc();
      *&v128 = v91;
      *v88 = 136315650;
      *&v130[0] = 91;
      *(&v130[0] + 1) = 0xE100000000000000;
      v92 = [v84 logIdentifier];
      v93 = sub_22A4DD5EC();
      v95 = v94;

      MEMORY[0x22AAD08C0](v93, v95);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v96 = sub_2295A3E30(*&v130[0], *(&v130[0] + 1), &v128);

      *(v88 + 4) = v96;
      *(v88 + 12) = 2080;
      *(v88 + 14) = sub_2295A3E30(0xD00000000000002BLL, 0x800000022A597180, &v128);
      *(v88 + 22) = 2112;
      *(v88 + 24) = v85;
      *v90 = v85;
      v97 = v85;
      _os_log_impl(&dword_229538000, v86, v87, "%s %s Home Activity State feature is not enabled, unable to handle message: %@", v88, 0x20u);
      sub_22953EAE4(v90, &qword_27D87D7D0, &unk_22A578D90);
      v98 = v90;
      v46 = v123;
      MEMORY[0x22AAD4E50](v98, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v91, -1, -1);
      MEMORY[0x22AAD4E50](v88, -1, -1);

      (*(v126 + 8))(v124, v125);
    }

    else
    {

      (*(v126 + 8))(v83, v125);
    }

    v99 = [objc_opt_self() hmErrorWithCode_];
  }

  v121 = v99;
  v69 = sub_22A4DB3DC();

  [v85 respondWithError_];
LABEL_38:
}

uint64_t sub_2297E0114(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[8] = a5;
  v6[9] = a6;
  v6[7] = a4;
  v7 = sub_22A4DD07C();
  v6[10] = v7;
  v6[11] = *(v7 - 8);
  v6[12] = swift_task_alloc();
  v6[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2297E01E4, 0, 0);
}

uint64_t sub_2297E01E4()
{
  sub_229785F6C(v0 + 2);
  __swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
  v1 = swift_task_alloc();
  v0[14] = v1;
  *v1 = v0;
  v1[1] = sub_2297E0294;
  v2 = v0[8];

  return sub_2296C4238(v2);
}

uint64_t sub_2297E0294()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_2297E0590;
  }

  else
  {
    v2 = sub_2297E03A8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2297E03A8()
{
  v17 = v0;
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  sub_229562F68(0, &qword_281401B70, off_278666148);
  sub_22A4DDC0C();
  sub_22A4DD08C();

  v1 = sub_22A4DD05C();
  v2 = sub_22A4DDCCC();

  v3 = os_log_type_enabled(v1, v2);
  v4 = *(v0 + 104);
  v5 = *(v0 + 80);
  v6 = *(v0 + 88);
  if (v3)
  {
    v7 = *(v0 + 64);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v16 = v9;
    *v8 = 136315138;
    v10 = sub_229562F68(0, &qword_27D87CD80, 0x277CD1F20);
    v11 = MEMORY[0x22AAD0A20](v7, v10);
    v13 = sub_2295A3E30(v11, v12, &v16);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_229538000, v1, v2, "Successfully set thermostat sleep schedule: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x22AAD4E50](v9, -1, -1);
    MEMORY[0x22AAD4E50](v8, -1, -1);
  }

  (*(v6 + 8))(v4, v5);
  [*(v0 + 72) respondWithSuccess];

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_2297E0590()
{
  v31 = v0;
  v1 = v0[15];
  v2 = v0[7];
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  sub_229562F68(0, &qword_281401B70, off_278666148);
  sub_22A4DDC0C();
  sub_22A4DD08C();
  v3 = v2;
  v4 = v1;
  v5 = sub_22A4DD05C();
  v6 = sub_22A4DDCEC();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[15];
    v27 = v0[11];
    v28 = v0[10];
    v29 = v0[12];
    v8 = v0[7];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v9 = 136315650;
    v30[0] = v11;
    v30[1] = 91;
    v30[2] = 0xE100000000000000;
    v12 = [v8 logIdentifier];
    v13 = sub_22A4DD5EC();
    v15 = v14;

    MEMORY[0x22AAD08C0](v13, v15);

    MEMORY[0x22AAD08C0](93, 0xE100000000000000);
    v16 = sub_2295A3E30(91, 0xE100000000000000, v30);

    *(v9 + 4) = v16;
    *(v9 + 12) = 2080;
    *(v9 + 14) = sub_2295A3E30(0xD00000000000002BLL, 0x800000022A597180, v30);
    *(v9 + 22) = 2112;
    v17 = v7;
    v18 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 24) = v18;
    *v10 = v18;
    _os_log_impl(&dword_229538000, v5, v6, "%s %s Failed to set thermostat sleep schedule with error: %@", v9, 0x20u);
    sub_22953EAE4(v10, &qword_27D87D7D0, &unk_22A578D90);
    MEMORY[0x22AAD4E50](v10, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v11, -1, -1);
    MEMORY[0x22AAD4E50](v9, -1, -1);

    (*(v27 + 8))(v29, v28);
  }

  else
  {
    v20 = v0[11];
    v19 = v0[12];
    v21 = v0[10];

    (*(v20 + 8))(v19, v21);
  }

  v22 = v0[15];
  v23 = v0[9];
  v24 = sub_22A4DB3DC();
  [v23 respondWithError_];

  v25 = v0[1];

  return v25();
}

uint64_t sub_2297E091C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_229586D38;

  return sub_2297E09F0(a1);
}

uint64_t sub_2297E09F0(uint64_t a1)
{
  v2[39] = a1;
  v2[40] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D280, &unk_22A57C730);
  v2[41] = v3;
  v2[42] = *(v3 - 8);
  v2[43] = swift_task_alloc();
  v4 = sub_22A4DB21C();
  v2[44] = v4;
  v2[45] = *(v4 - 8);
  v2[46] = swift_task_alloc();
  v2[47] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87DA18, &unk_22A579B60);
  v2[48] = v5;
  v2[49] = *(v5 - 8);
  v2[50] = swift_task_alloc();
  v2[51] = swift_task_alloc();
  v6 = sub_22A4DD07C();
  v2[52] = v6;
  v2[53] = *(v6 - 8);
  v2[54] = swift_task_alloc();
  v2[55] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2297E0C00, 0, 0);
}

uint64_t sub_2297E0C00()
{
  v84 = v0;
  v1 = v0[51];
  v2 = v0[48];
  v3 = v0[49];
  v5 = v0[39];
  v4 = v0[40];
  sub_229562F68(0, &qword_281401B70, off_278666148);
  sub_22A4DDC0C();
  sub_22A4DD08C();
  v80 = *(v3 + 16);
  v80(v1, v5, v2);
  v6 = v4;
  v7 = sub_22A4DD05C();
  v8 = sub_22A4DDCCC();

  v75 = v8;
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[55];
  v12 = v0[52];
  v11 = v0[53];
  v13 = v0[51];
  v14 = v0[48];
  v15 = v0[49];
  if (v9)
  {
    v78 = v0[45];
    v67 = v0[47];
    v68 = v0[44];
    v73 = v0[55];
    v16 = v0[40];
    log = v7;
    v17 = swift_slowAlloc();
    v71 = swift_slowAlloc();
    v83 = v71;
    *v17 = 136315394;
    v18 = [v16 logIdentifier];
    v19 = sub_22A4DD5EC();
    v21 = v20;

    v22 = sub_2295A3E30(v19, v21, &v83);

    *(v17 + 4) = v22;
    *(v17 + 12) = 2080;
    sub_22A4DBA4C();
    sub_2297E3070(&unk_2814038C0, MEMORY[0x277CC8900], MEMORY[0x277CC8910]);
    v23 = sub_22A4DE5CC();
    v25 = v24;
    (*(v78 + 8))(v67, v68);
    v79 = *(v15 + 8);
    v79(v13, v14);
    v26 = sub_2295A3E30(v23, v25, &v83);

    *(v17 + 14) = v26;
    _os_log_impl(&dword_229538000, log, v75, "%s handling %s", v17, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v71, -1, -1);
    MEMORY[0x22AAD4E50](v17, -1, -1);

    v27 = *(v11 + 8);
    v27(v73, v12);
  }

  else
  {

    v79 = *(v15 + 8);
    v79(v13, v14);
    v27 = *(v11 + 8);
    v27(v10, v12);
  }

  v28 = v0[45];
  v29 = v0[46];
  v30 = v0[44];
  sub_22A4DBA4C();
  sub_22A4DB1FC();
  v31 = *(v28 + 8);
  v31(v29, v30);
  if (v0[37])
  {
    if (swift_dynamicCast())
    {
      v32 = v0[38];
      v0[56] = v32;
      sub_229562F68(0, &qword_281401760, 0x277D82BB8);
      if (sub_22A4DDEDC())
      {
        v34 = v0[42];
        v33 = v0[43];
        v35 = v0[41];
        v0[2] = v0;
        v0[3] = sub_2297E1448;
        swift_continuation_init();
        v0[25] = v35;
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 22);
        sub_22A4DD8DC();
        v37 = *(v34 + 32);
        v0[57] = v37;
        v0[58] = (v34 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
        v37(boxed_opaque_existential_1, v33, v35);
        v0[18] = MEMORY[0x277D85DD0];
        v0[19] = 1107296256;
        v0[20] = sub_2297D3D1C;
        v0[21] = &block_descriptor_39;
        [v32 evaluateSupportsAdaptiveTemperatureAutomations_];
        v38 = *(v34 + 8);
        v0[59] = v38;
        v0[60] = (v34 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v38(boxed_opaque_existential_1, v35);

        return MEMORY[0x282200938](v0 + 2);
      }
    }
  }

  else
  {
    sub_22953EAE4((v0 + 34), &unk_27D87DE60, &unk_22A57A960);
  }

  v74 = v31;
  v76 = v27;
  v39 = v0[50];
  v40 = v0[48];
  v41 = v0[39];
  v42 = v0[40];
  sub_22A4DDC0C();
  sub_22A4DD08C();
  v80(v39, v41, v40);
  v43 = v42;
  v44 = sub_22A4DD05C();
  v45 = sub_22A4DDCEC();

  v46 = os_log_type_enabled(v44, v45);
  v47 = v0[54];
  v48 = v0[52];
  v49 = v0[50];
  v50 = v0[48];
  if (v46)
  {
    v81 = v0[54];
    v82 = v0[52];
    v51 = v0[47];
    loga = v0[44];
    v52 = v0[40];
    v72 = v45;
    v53 = swift_slowAlloc();
    v77 = swift_slowAlloc();
    v83 = v77;
    *v53 = 136315394;
    v54 = [v52 logIdentifier];
    v55 = sub_22A4DD5EC();
    v57 = v56;

    v58 = sub_2295A3E30(v55, v57, &v83);

    *(v53 + 4) = v58;
    *(v53 + 12) = 2080;
    sub_22A4DBA4C();
    sub_2297E3070(&unk_2814038C0, MEMORY[0x277CC8900], MEMORY[0x277CC8910]);
    v59 = sub_22A4DE5CC();
    v61 = v60;
    v74(v51, loga);
    v79(v49, v50);
    v62 = sub_2295A3E30(v59, v61, &v83);

    *(v53 + 14) = v62;
    _os_log_impl(&dword_229538000, v44, v72, "%s found unexpected object from notification: %s", v53, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v77, -1, -1);
    MEMORY[0x22AAD4E50](v53, -1, -1);

    v63 = v81;
    v64 = v82;
  }

  else
  {

    v79(v49, v50);
    v63 = v47;
    v64 = v48;
  }

  v76(v63, v64);

  v65 = v0[1];

  return v65();
}

uint64_t sub_2297E1448()
{

  return MEMORY[0x2822009F8](sub_2297E1528, 0, 0);
}

uint64_t sub_2297E1528()
{
  v7 = v0[59];
  v1 = v0[57];
  v6 = v0[56];
  v2 = v0[43];
  v3 = v0[41];
  v0[10] = v0;
  v0[11] = sub_2297E16C0;
  swift_continuation_init();
  v0[33] = v3;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 30);
  sub_22A4DD8DC();
  v1(boxed_opaque_existential_1, v2, v3);
  v0[26] = MEMORY[0x277D85DD0];
  v0[27] = 1107296256;
  v0[28] = sub_2297D3D1C;
  v0[29] = &block_descriptor_14_0;
  [v6 evaluateSupportsCleanEnergyAutomation_];
  v7(boxed_opaque_existential_1, v3);

  return MEMORY[0x282200938](v0 + 10);
}

uint64_t sub_2297E16C0()
{

  return MEMORY[0x2822009F8](sub_2297E17A0, 0, 0);
}

uint64_t sub_2297E17A0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2297E1854(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_229586D38;

  return sub_2297E18EC(a1);
}

uint64_t sub_2297E18EC(uint64_t a1)
{
  v2[34] = a1;
  v2[35] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D280, &unk_22A57C730);
  v2[36] = v3;
  v2[37] = *(v3 - 8);
  v2[38] = swift_task_alloc();
  v4 = sub_22A4DB21C();
  v2[39] = v4;
  v2[40] = *(v4 - 8);
  v2[41] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87DA18, &unk_22A579B60);
  v2[42] = v5;
  v2[43] = *(v5 - 8);
  v2[44] = swift_task_alloc();
  v6 = sub_22A4DD07C();
  v2[45] = v6;
  v2[46] = *(v6 - 8);
  v2[47] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2297E1AD8, 0, 0);
}

uint64_t sub_2297E1AD8()
{
  v44 = v0;
  v2 = v0[43];
  v1 = v0[44];
  v3 = v0[42];
  v4 = v0[34];
  v5 = v0[35];
  sub_229562F68(0, &qword_281401B70, off_278666148);
  sub_22A4DDC0C();
  sub_22A4DD08C();
  (*(v2 + 16))(v1, v4, v3);
  v6 = v5;
  v7 = sub_22A4DD05C();
  v8 = sub_22A4DDCCC();

  v9 = os_log_type_enabled(v7, v8);
  v11 = v0[46];
  v10 = v0[47];
  v13 = v0[44];
  v12 = v0[45];
  v15 = v0[42];
  v14 = v0[43];
  if (v9)
  {
    log = v7;
    v42 = v0[47];
    v16 = v0[41];
    v36 = v0[39];
    v37 = v0[40];
    v17 = v0[35];
    v38 = v8;
    v18 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v43 = v39;
    *v18 = 136315394;
    v19 = [v17 logIdentifier];
    v40 = v12;
    v20 = sub_22A4DD5EC();
    v22 = v21;

    v23 = sub_2295A3E30(v20, v22, &v43);

    *(v18 + 4) = v23;
    *(v18 + 12) = 2080;
    sub_22A4DBA4C();
    sub_2297E3070(&unk_2814038C0, MEMORY[0x277CC8900], MEMORY[0x277CC8910]);
    v24 = sub_22A4DE5CC();
    v26 = v25;
    (*(v37 + 8))(v16, v36);
    (*(v14 + 8))(v13, v15);
    v27 = sub_2295A3E30(v24, v26, &v43);

    *(v18 + 14) = v27;
    _os_log_impl(&dword_229538000, log, v38, "%s handling %s", v18, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v39, -1, -1);
    MEMORY[0x22AAD4E50](v18, -1, -1);

    (*(v11 + 8))(v42, v40);
  }

  else
  {

    (*(v14 + 8))(v13, v15);
    (*(v11 + 8))(v10, v12);
  }

  v29 = v0[37];
  v28 = v0[38];
  v31 = v0[35];
  v30 = v0[36];
  v0[2] = v0;
  v0[3] = sub_2297E1F1C;
  swift_continuation_init();
  v0[25] = v30;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 22);
  sub_22A4DD8DC();
  v33 = *(v29 + 32);
  v0[48] = v33;
  v0[49] = (v29 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v33(boxed_opaque_existential_1, v28, v30);
  v0[18] = MEMORY[0x277D85DD0];
  v0[19] = 1107296256;
  v0[20] = sub_2297D3D1C;
  v0[21] = &block_descriptor_27;
  [v31 evaluateSupportsAdaptiveTemperatureAutomations_];
  v34 = *(v29 + 8);
  v0[50] = v34;
  v0[51] = (v29 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v34(boxed_opaque_existential_1, v30);

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_2297E1F1C()
{

  return MEMORY[0x2822009F8](sub_2297E1FFC, 0, 0);
}

uint64_t sub_2297E1FFC()
{
  v7 = v0[50];
  v1 = v0[48];
  v2 = v0[38];
  v3 = v0[36];
  v6 = v0[35];
  v0[10] = v0;
  v0[11] = sub_2297E2190;
  swift_continuation_init();
  v0[33] = v3;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 30);
  sub_22A4DD8DC();
  v1(boxed_opaque_existential_1, v2, v3);
  v0[26] = MEMORY[0x277D85DD0];
  v0[27] = 1107296256;
  v0[28] = sub_2297D3D1C;
  v0[29] = &block_descriptor_30;
  [v6 evaluateSupportsCleanEnergyAutomation_];
  v7(boxed_opaque_existential_1, v3);

  return MEMORY[0x282200938](v0 + 10);
}

uint64_t sub_2297E2190()
{

  return MEMORY[0x2822009F8](sub_2297E2270, 0, 0);
}

uint64_t sub_2297E2270()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2297E2338(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = sub_22A4DB21C();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22A4DB1DC();
  v16 = a1;
  sub_2297E2450(v15, a4, a5, a6, a7);

  return (*(v13 + 8))(v15, v12);
}

uint64_t sub_2297E2450(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v30 = a4;
  v31 = a5;
  v29 = a3;
  v27 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70);
  MEMORY[0x28223BE20](v6 - 8);
  v28 = &v26 - v7;
  v8 = sub_22A4DB21C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87DA18, &unk_22A579B60);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v16 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = &v26 - v17;
  v19 = swift_allocObject();
  *(v19 + 16) = v5;
  (*(v9 + 16))(v11, v27, v8);
  v20 = v5;
  MEMORY[0x22AACEC10](v11, v8);
  v21 = sub_22A4DD9DC();
  v22 = v28;
  (*(*(v21 - 8) + 56))(v28, 1, 1, v21);
  (*(v13 + 16))(v16, v18, v12);
  v23 = (*(v13 + 80) + 48) & ~*(v13 + 80);
  v24 = swift_allocObject();
  *(v24 + 2) = 0;
  *(v24 + 3) = 0;
  *(v24 + 4) = v30;
  *(v24 + 5) = v19;
  (*(v13 + 32))(&v24[v23], v16, v12);

  sub_22957F3C0(0, 0, v22, v31, v24);

  return (*(v13 + 8))(v18, v12);
}

uint64_t sub_2297E2790(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_229586D38;

  return sub_2297E091C(a1);
}

uint64_t sub_2297E282C(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6)
{
  v10 = (a4 + *a4);
  v8 = swift_task_alloc();
  *(v6 + 16) = v8;
  *v8 = v6;
  v8[1] = sub_229569B30;

  return v10(a6);
}

uint64_t sub_2297E2924(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87DA18, &unk_22A579B60) - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_229586D38;

  return sub_2297E282C(a1, v6, v7, v8, v9, v1 + v5);
}

uint64_t sub_2297E2A34(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_229586D38;

  return sub_2297E1854(a1);
}

uint64_t sub_2297E2AD0(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87DA18, &unk_22A579B60) - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_229569B30;

  return sub_2297E282C(a1, v6, v7, v8, v9, v1 + v5);
}

uint64_t sub_2297E2BE0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_229586D38;

  return sub_2297E091C(a1);
}

uint64_t objectdestroy_7Tm_0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87DA18, &unk_22A579B60);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2297E2D54(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_229586D38;

  return sub_2297E0114(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_2297E2E1C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_229586D38;

  return sub_2297DE75C(a1, v4, v5, v7, v6);
}

uint64_t sub_2297E2EDC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_229586D38;

  return sub_2297DCFA8(a1, v4, v5, v7, v6);
}

uint64_t sub_2297E2F9C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_229586D38;

  return sub_2297DBC00(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_2297E3070(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2297E30B8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_229586D38;

  return sub_2297D9300(a1, v4, v5, v7, v6);
}

uint64_t sub_2297E3178(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_229586D38;

  return sub_2297D8504(a1, v4, v5, v7, v6);
}

uint64_t sub_2297E3238(uint64_t a1)
{
  v2 = type metadata accessor for ClimateBulletinBuilder.ValenciaOnboardingContent(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t _s20ControlBlockInternalVMa(uint64_t a1)
{
  result = qword_27D881510;
  if (!qword_27D881510)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2297E3324(uint64_t a1)
{
  result = sub_22A4DB7DC();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2297E3398(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_22A4DB7DC();
  v44 = *(v6 - 8);
  v45 = v6;
  MEMORY[0x28223BE20](v6);
  v43 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22A4DD07C();
  v47 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = _s20ControlBlockInternalVMa(0);
  MEMORY[0x28223BE20](v11);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a2 + 40);
  v14(a1, a2);
  v46 = v11;
  v15 = v13[*(v11 + 20)];
  result = sub_2297E3C30(v13);
  if ((v15 & 1) == 0)
  {
    (*(*(a2 + 8) + 8))(a1);
    swift_unknownObjectRetain_n();
    v17 = sub_22A4DD05C();
    v18 = sub_22A4DDCDC();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v40 = v18;
      v20 = v19;
      v42 = swift_slowAlloc();
      v48 = v3;
      v49[0] = v42;
      *v20 = 136315394;
      v39 = v17;
      v21 = sub_22A4DE5CC();
      v23 = sub_2295A3E30(v21, v22, v49);
      v41 = v8;
      v24 = v23;

      v38 = v20;
      *(v20 + 4) = v24;
      *(v20 + 12) = 2080;
      v14(a1, a2);
      v26 = v43;
      v25 = v44;
      v27 = v45;
      (*(v44 + 32))(v43, v13, v45);
      swift_unknownObjectRelease();
      sub_229586A3C();
      v28 = sub_22A4DE5CC();
      v30 = v29;
      swift_unknownObjectRelease();
      (*(v25 + 8))(v26, v27);
      v31 = sub_2295A3E30(v28, v30, v49);

      v33 = v38;
      v32 = v39;
      *(v38 + 14) = v31;
      _os_log_impl(&dword_229538000, v32, v40, "Scheduling %s with uuid: %s", v33, 0x16u);
      v34 = v42;
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v34, -1, -1);
      MEMORY[0x22AAD4E50](v33, -1, -1);

      (*(v47 + 8))(v10, v41);
    }

    else
    {

      swift_unknownObjectRelease_n();
      (*(v47 + 8))(v10, v8);
    }

    v35 = (*(a2 + 56))(v49, a1, a2);
    *(v36 + *(v46 + 20)) = 1;
    v35(v49, 0);
    return (*(a2 + 64))(a1, a2);
  }

  return result;
}

uint64_t sub_2297E37E4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_22A4DB7DC();
  v44 = *(v6 - 8);
  v45 = v6;
  MEMORY[0x28223BE20](v6);
  v43 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22A4DD07C();
  v47 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = _s20ControlBlockInternalVMa(0);
  MEMORY[0x28223BE20](v11);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a2 + 40);
  v14(a1, a2);
  v46 = v11;
  v15 = v13[*(v11 + 20)];
  result = sub_2297E3C30(v13);
  if (v15 == 1)
  {
    (*(*(a2 + 8) + 8))(a1);
    swift_unknownObjectRetain_n();
    v17 = sub_22A4DD05C();
    v18 = sub_22A4DDCDC();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v40 = v18;
      v20 = v19;
      v42 = swift_slowAlloc();
      v48 = v3;
      v49[0] = v42;
      *v20 = 136315394;
      v39 = v17;
      v21 = sub_22A4DE5CC();
      v23 = sub_2295A3E30(v21, v22, v49);
      v41 = v8;
      v24 = v23;

      v38 = v20;
      *(v20 + 4) = v24;
      *(v20 + 12) = 2080;
      v14(a1, a2);
      v26 = v43;
      v25 = v44;
      v27 = v45;
      (*(v44 + 32))(v43, v13, v45);
      swift_unknownObjectRelease();
      sub_229586A3C();
      v28 = sub_22A4DE5CC();
      v30 = v29;
      swift_unknownObjectRelease();
      (*(v25 + 8))(v26, v27);
      v31 = sub_2295A3E30(v28, v30, v49);

      v33 = v38;
      v32 = v39;
      *(v38 + 14) = v31;
      _os_log_impl(&dword_229538000, v32, v40, "Descheduling %s with uuid: %s", v33, 0x16u);
      v34 = v42;
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v34, -1, -1);
      MEMORY[0x22AAD4E50](v33, -1, -1);

      (*(v47 + 8))(v10, v41);
    }

    else
    {

      swift_unknownObjectRelease_n();
      (*(v47 + 8))(v10, v8);
    }

    v35 = (*(a2 + 56))(v49, a1, a2);
    *(v36 + *(v46 + 20)) = 0;
    v35(v49, 0);
    return (*(a2 + 72))(a1, a2);
  }

  return result;
}

uint64_t sub_2297E3C30(uint64_t a1)
{
  v2 = _s20ControlBlockInternalVMa(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double sub_2297E3C8C@<D0>(uint64_t a1@<X0>, uint64_t a4@<X8>)
{
  sub_2297E3D30(a1, v10);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *&result = sub_229678AD8(a1, AssociatedTypeWitness, AssociatedConformanceWitness, a4, v8).n128_u64[0];
  return result;
}

void sub_2297E3E40()
{
  v1 = [objc_msgSend(objc_opt_self() featuresDataSource)];
  swift_unknownObjectRelease();
  if (v1)
  {
    v2 = [v0 msgDispatcher];
    if (v2)
    {
      v54 = v2;
      v3 = [v0 accessory];
      if (v3 && (v4 = v3, v5 = [v3 home], v4, v5))
      {
        v6 = [objc_opt_self() defaultSecurePolicy];
        v7 = objc_opt_self();
        v8 = [v7 userMessagePolicyWithHome:v5 userPrivilege:4 remoteAccessRequired:0];
        v50 = [v7 userMessagePolicyWithHome:v5 userPrivilege:4 remoteAccessRequired:1];
        v9 = [objc_opt_self() policyWithEntitlements_];
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C350, &qword_22A576E40);
        v10 = swift_allocObject();
        *(v10 + 16) = xmmword_22A582080;
        *(v10 + 32) = v6;
        *(v10 + 40) = v8;
        sub_229562F68(0, qword_281401B40, 0x277D0F838);
        v11 = v6;
        v12 = v8;
        v13 = v11;
        v14 = v12;
        v15 = sub_22A4DD81C();

        [v54 registerForMessage:@"HMDAccessoryMatterEventMessageName" receiver:v0 policies:v15 selector:sel_handleMatterEventMessage_];

        v16 = [v0 accessory];
        if (v16)
        {
          v17 = v16;
          v49 = v5;
          objc_opt_self();
          v18 = swift_dynamicCastObjCClass();
          if (v18)
          {
            v19 = v13;
            if ([v18 isNativeMatter])
            {
              v20 = swift_allocObject();
              *(v20 + 16) = xmmword_22A582080;
              *(v20 + 32) = v13;
              *(v20 + 40) = v14;
              v21 = v13;
              v22 = v14;
              v23 = sub_22A4DD81C();

              [v54 registerForMessage:@"HMDAccessoryMatterAttributeMessageName" receiver:v0 policies:v23 selector:sel_handleMatterAttributeMessage_];

              v47 = *MEMORY[0x277CCEAB0];
              v24 = swift_allocObject();
              *(v24 + 16) = xmmword_22A5842A0;
              *(v24 + 32) = v21;
              *(v24 + 40) = v22;
              *(v24 + 48) = v9;
              v25 = v9;
              v26 = v21;
              v19 = v22;
              v27 = v25;
              v28 = sub_22A4DD81C();

              [v54 registerForMessage:v47 receiver:v0 policies:v28 selector:sel_handleFetchMatterPairingsMessage_];

              v48 = *MEMORY[0x277CCECB0];
              v29 = swift_allocObject();
              *(v29 + 16) = xmmword_22A5842A0;
              *(v29 + 32) = v26;
              *(v29 + 40) = v50;
              *(v29 + 48) = v27;
              v30 = v50;
              v31 = v26;
              v32 = v30;
              v33 = sub_22A4DD81C();

              [v54 registerForMessage:v48 receiver:v0 policies:v33 selector:sel_handleRemoveCorrespondingSystemCommissionerMessage_];

              v51 = *MEMORY[0x277CCECA0];
              v34 = swift_allocObject();
              *(v34 + 16) = xmmword_22A5842A0;
              *(v34 + 32) = v31;
              *(v34 + 40) = v32;
              *(v34 + 48) = v27;
              v35 = v31;
              v36 = sub_22A4DD81C();

              [v54 registerForMessage:v51 receiver:v0 policies:v36 selector:sel_handleRemoveMatterPairingsMessage_];

              v52 = *MEMORY[0x277CCE7B8];
              v37 = swift_allocObject();
              *(v37 + 16) = xmmword_22A5842A0;
              *(v37 + 32) = v35;
              *(v37 + 40) = v32;
              *(v37 + 48) = v27;
              v38 = v35;
              v39 = sub_22A4DD81C();

              [v54 registerForMessage:v52 receiver:v0 policies:v39 selector:sel_handleActivateMatterPairingModeMessage_];

              v53 = *MEMORY[0x277CCE7B0];
              v40 = swift_allocObject();
              *(v40 + 16) = xmmword_22A5842A0;
              *(v40 + 32) = v38;
              *(v40 + 40) = v32;
              *(v40 + 48) = v27;
              v41 = v38;
              v42 = sub_22A4DD81C();

              [v54 registerForMessage:v53 receiver:v0 policies:v42 selector:sel_handleActivateMatterPairingModeAndCreateSetupPayloadStringMessage_];

              v43 = swift_allocObject();
              *(v43 + 16) = xmmword_22A582080;
              *(v43 + 32) = v41;
              *(v43 + 40) = v19;
              v9 = sub_22A4DD81C();

              v44 = v0;
              v45 = v27;
              [v54 registerForMessage:@"HMDRVCServiceAreaMessageName" receiver:v44 policies:v9 selector:sel_submitServiceAreaChangesToCascadeFromMessage_];
              v5 = v17;
              v14 = v49;
              v17 = v54;
            }

            else
            {

              v5 = v50;
              v32 = v49;
              v45 = v54;
              v41 = v13;
              v17 = v14;
            }
          }

          else
          {

            v5 = v9;
            v9 = v50;
            v32 = v54;
            v19 = v13;
            v45 = v13;
            v41 = v14;
          }
        }

        else
        {
          v32 = v50;
          v45 = v54;
          v41 = v13;
          v17 = v14;
          v19 = v13;
        }

        v46 = v17;
      }

      else
      {
        v46 = v54;
      }
    }
  }
}

void sub_2297E4584(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  swift_getObjectType();
  v8 = sub_22A4DD07C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [v4 accessory];
  if (v12)
  {
    v13 = v12;
    v14 = [v12 primaryResidentMessageRouter];
    if (v14)
    {
      v15 = v14;
      v40 = a2;
      v41 = a3;
      aBlock = MEMORY[0x277D85DD0];
      v37 = 1107296256;
      v38 = sub_229566C20;
      v39 = &block_descriptor_46_0;
      v16 = _Block_copy(&aBlock);

      [v15 routeMessage:a1 localHandler:v16];
      _Block_release(v16);

      swift_unknownObjectRelease();
      return;
    }
  }

  sub_2296F8604();
  v17 = v4;
  v18 = a1;
  v19 = sub_22A4DD05C();
  v20 = sub_22A4DDCEC();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v42 = v22;
    *v21 = 136315394;
    aBlock = 91;
    v37 = 0xE100000000000000;
    v23 = [v17 logIdentifier];
    v24 = sub_22A4DD5EC();
    v35 = v8;
    v26 = v25;

    MEMORY[0x22AAD08C0](v24, v26);

    MEMORY[0x22AAD08C0](93, 0xE100000000000000);
    v27 = sub_2295A3E30(aBlock, v37, &v42);

    *(v21 + 4) = v27;
    *(v21 + 12) = 2080;
    v28 = [v18 shortDescription];
    v29 = sub_22A4DD5EC();
    v31 = v30;

    v32 = sub_2295A3E30(v29, v31, &v42);

    *(v21 + 14) = v32;
    _os_log_impl(&dword_229538000, v19, v20, "%s Could not find primary resident message router to handle message: %s", v21, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v22, -1, -1);
    MEMORY[0x22AAD4E50](v21, -1, -1);

    (*(v9 + 8))(v11, v35);
  }

  else
  {

    (*(v9 + 8))(v11, v8);
  }

  v33 = [objc_opt_self() hmErrorWithCode_];
  v34 = sub_22A4DB3DC();

  [v18 respondWithError_];
}

void sub_2297E49F8(void *a1)
{
  swift_getObjectType();
  v3 = sub_22A4DD07C();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v46[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v9 = &v46[-v8];
  v10 = [v1 accessory];
  if (!v10)
  {
LABEL_6:
    sub_2296F8604();
    v20 = v1;
    v21 = sub_22A4DD05C();
    v22 = sub_22A4DDCEC();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v57 = v24;
      *v23 = 136315138;
      aBlock = 91;
      v52 = 0xE100000000000000;
      v25 = [v20 logIdentifier];
      v26 = sub_22A4DD5EC();
      v50 = v3;
      v28 = v27;

      MEMORY[0x22AAD08C0](v26, v28);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v29 = sub_2295A3E30(aBlock, v52, &v57);

      *(v23 + 4) = v29;
      _os_log_impl(&dword_229538000, v21, v22, "%s Unable to find accessory server", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v24);
      MEMORY[0x22AAD4E50](v24, -1, -1);
      MEMORY[0x22AAD4E50](v23, -1, -1);

      (*(v4 + 8))(v7, v50);
    }

    else
    {

      (*(v4 + 8))(v7, v3);
    }

    v30 = [objc_opt_self() hmErrorWithCode_];
    v16 = sub_22A4DB3DC();

    [a1 respondWithError_];
    goto LABEL_14;
  }

  v11 = v10;
  v12 = [v10 accessoryServer];
  if (!v12)
  {

    goto LABEL_6;
  }

  v13 = v12;
  v14 = [a1 dictionaryForKey_];
  if (v14)
  {
    v15 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
    sub_22A4DD49C();

    v16 = sub_22A4DD47C();

    v17 = swift_allocObject();
    *(v17 + 16) = a1;
    v55 = sub_2297EC944;
    v56 = v17;
    aBlock = MEMORY[0x277D85DD0];
    v52 = 1107296256;
    v53 = sub_2297E5178;
    v54 = &block_descriptor_40_1;
    v18 = _Block_copy(&aBlock);
    v19 = a1;

    [v13 handleCHIPRemoteRequest:v16 completion:v18];
    _Block_release(v18);
  }

  else
  {
    v50 = v3;
    sub_2296F8604();
    v31 = a1;
    v32 = v1;
    v33 = sub_22A4DD05C();
    v34 = sub_22A4DDCEC();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v57 = v49;
      *v35 = 136315394;
      aBlock = 91;
      v52 = 0xE100000000000000;
      v36 = [v32 logIdentifier];
      v47 = v34;
      v37 = v36;
      v38 = sub_22A4DD5EC();
      v40 = v39;

      MEMORY[0x22AAD08C0](v38, v40);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v41 = sub_2295A3E30(aBlock, v52, &v57);

      *(v35 + 4) = v41;
      *(v35 + 12) = 2112;
      *(v35 + 14) = v31;
      v42 = v48;
      *v48 = v31;
      v43 = v31;
      _os_log_impl(&dword_229538000, v33, v47, "%s Invalid remote request message payload: %@", v35, 0x16u);
      sub_22953EAE4(v42, &qword_27D87D7D0, &unk_22A578D90);
      MEMORY[0x22AAD4E50](v42, -1, -1);
      v44 = v49;
      __swift_destroy_boxed_opaque_existential_0(v49);
      MEMORY[0x22AAD4E50](v44, -1, -1);
      MEMORY[0x22AAD4E50](v35, -1, -1);
    }

    (*(v4 + 8))(v9, v50);
    v45 = [objc_opt_self() hmErrorWithCode_];
    v16 = sub_22A4DB3DC();

    [v31 respondWithError_];
  }

LABEL_14:
}

void sub_2297E5024(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v4 = sub_22A4DB3DC();
  }

  else
  {
    if (a1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D080, &qword_22A57CF50);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_22A576180;
      *(inited + 32) = sub_22A4DD5EC();
      *(inited + 40) = v8;
      *(inited + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C370, &qword_22A578090);
      *(inited + 48) = a1;

      sub_22956AC5C(inited);
      swift_setDeallocating();
      sub_22953EAE4(inited + 32, &unk_27D87DE50, &qword_22A577CD0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
      v5 = sub_22A4DD47C();

      v4 = 0;
      goto LABEL_6;
    }

    v4 = 0;
  }

  v5 = 0;
LABEL_6:
  [a3 respondWithPayload:v5 error:v4];
}

uint64_t sub_2297E5178(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
    v4 = sub_22A4DD49C();
  }

  v6 = a3;
  v5(v4, a3);
}

void sub_2297E5290(void *a1)
{
  v2 = v1;
  swift_getObjectType();
  v4 = sub_22A4DD07C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [v1 accessory];
  if (v8)
  {
    v9 = v8;
    v10 = [v8 home];
    if (v10)
    {
      v11 = v10;
      v12 = swift_allocObject();
      *(v12 + 16) = v2;
      v33 = sub_2297EC920;
      v34 = v12;
      aBlock = MEMORY[0x277D85DD0];
      v30 = 1107296256;
      v31 = sub_229566C20;
      v32 = &block_descriptor_34_1;
      v13 = _Block_copy(&aBlock);
      v14 = v2;

      [v14 routeMessage:a1 localHandler:v13];
      _Block_release(v13);

      goto LABEL_8;
    }
  }

  sub_2296F8604();
  v15 = v1;
  v16 = sub_22A4DD05C();
  v17 = sub_22A4DDCEC();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v28 = a1;
    v20 = v19;
    v35 = v19;
    *v18 = 136315138;
    aBlock = 91;
    v30 = 0xE100000000000000;
    v21 = [v15 logIdentifier];
    v22 = sub_22A4DD5EC();
    v24 = v23;

    MEMORY[0x22AAD08C0](v22, v24);

    MEMORY[0x22AAD08C0](93, 0xE100000000000000);
    v25 = sub_2295A3E30(aBlock, v30, &v35);

    *(v18 + 4) = v25;
    _os_log_impl(&dword_229538000, v16, v17, "%s Unable to find accessory or home", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v20);
    v26 = v20;
    a1 = v28;
    MEMORY[0x22AAD4E50](v26, -1, -1);
    MEMORY[0x22AAD4E50](v18, -1, -1);
  }

  (*(v5 + 8))(v7, v4);
  v27 = [objc_opt_self() hmErrorWithCode_];
  v11 = sub_22A4DB3DC();

  [a1 respondWithError_];
LABEL_8:
}

uint64_t sub_2297E5664(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = [v1 accessory];
  if (v4 && (v5 = v4, v6 = [v4 chipStorage], v5, v7 = objc_msgSend(v6, sel_pairings), v6, v7))
  {
    sub_229562F68(0, &unk_27D87CF00, 0x277CD1880);
    sub_229707F80();
    v8 = sub_22A4DDB6C();
  }

  else
  {
    v8 = MEMORY[0x277D84FA0];
  }

  v9 = swift_allocObject();
  v9[2] = v1;
  v9[3] = a1;
  v9[4] = ObjectType;
  v10 = v1;
  v11 = a1;
  sub_22979B218(v8, sub_2297EC914, v9);
}

id sub_2297E57AC(void *a1, void *a2, void *a3)
{
  v6 = sub_22A4DD07C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2296F8604();
  v10 = a2;
  v11 = a1;
  v12 = sub_22A4DD05C();
  v13 = sub_22A4DDCCC();

  if (os_log_type_enabled(v12, v13))
  {
    v30 = v6;
    v31 = a3;
    v14 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v29 = v15;
    *v14 = 136315394;
    v32 = 91;
    v33 = 0xE100000000000000;
    v34 = v15;
    v16 = [v10 logIdentifier];
    v17 = sub_22A4DD5EC();
    v19 = v18;

    MEMORY[0x22AAD08C0](v17, v19);

    MEMORY[0x22AAD08C0](93, 0xE100000000000000);
    v20 = sub_2295A3E30(v32, v33, &v34);

    *(v14 + 4) = v20;
    *(v14 + 12) = 2112;
    if (a1)
    {
      v21 = a1;
      v22 = _swift_stdlib_bridgeErrorToNSError();
      v23 = v22;
    }

    else
    {
      v22 = 0;
      v23 = 0;
    }

    *(v14 + 14) = v22;
    v24 = v28;
    *v28 = v23;
    _os_log_impl(&dword_229538000, v12, v13, "%s Removed pairings with error: %@", v14, 0x16u);
    sub_22953EAE4(v24, &qword_27D87D7D0, &unk_22A578D90);
    MEMORY[0x22AAD4E50](v24, -1, -1);
    v25 = v29;
    __swift_destroy_boxed_opaque_existential_0(v29);
    MEMORY[0x22AAD4E50](v25, -1, -1);
    MEMORY[0x22AAD4E50](v14, -1, -1);

    (*(v7 + 8))(v9, v30);
    a3 = v31;
  }

  else
  {

    (*(v7 + 8))(v9, v6);
  }

  return [a3 respondWithSuccess];
}

void sub_2297E5AE8(void *a1)
{
  v2 = v1;
  v89 = a1;
  ObjectType = swift_getObjectType();
  v88 = sub_22A4DD07C();
  v4 = *(v88 - 8);
  v5 = MEMORY[0x28223BE20](v88);
  v7 = &v82[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v82[-v9];
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v82[-v12];
  MEMORY[0x28223BE20](v11);
  v15 = &v82[-v14];
  v16 = [v1 accessory];
  if (!v16)
  {
LABEL_6:
    sub_2296F8604();
    v25 = v1;
    v26 = sub_22A4DD05C();
    v27 = sub_22A4DDCEC();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = v4;
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      *&v95 = v30;
      *v29 = 136315138;
      *&aBlock = 91;
      *(&aBlock + 1) = 0xE100000000000000;
      v31 = [v25 logIdentifier];
      v32 = sub_22A4DD5EC();
      v34 = v33;

      MEMORY[0x22AAD08C0](v32, v34);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v35 = sub_2295A3E30(aBlock, *(&aBlock + 1), &v95);

      *(v29 + 4) = v35;
      _os_log_impl(&dword_229538000, v26, v27, "%s Unable to find accessory or home", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v30);
      MEMORY[0x22AAD4E50](v30, -1, -1);
      MEMORY[0x22AAD4E50](v29, -1, -1);

      (*(v28 + 8))(v7, v88);
    }

    else
    {

      (*(v4 + 8))(v7, v88);
    }

    v36 = [objc_opt_self() hmErrorWithCode_];
    v19 = sub_22A4DB3DC();

    [v89 respondWithError_];
    goto LABEL_28;
  }

  v17 = v16;
  v18 = [v16 home];
  if (!v18)
  {

    goto LABEL_6;
  }

  v19 = v18;
  v87 = v17;
  v20 = *MEMORY[0x277CCE830];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87F060, &qword_22A578050);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_22A5761A0;
  *(v21 + 32) = sub_229562F68(0, &qword_27D87DA30, 0x277CBEB98);
  *(v21 + 40) = sub_229562F68(0, &unk_27D87CF00, 0x277CD1880);
  v22 = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87F058, &unk_22A582DE0);
  v23 = sub_22A4DD81C();

  v24 = [v89 unarchivedObjectForKey:v22 ofClasses:v23];

  if (v24)
  {
    sub_22A4DE01C();
    swift_unknownObjectRelease();
  }

  else
  {
    v95 = 0u;
    v96 = 0u;
  }

  aBlock = v95;
  v91 = v96;
  if (*(&v96 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D880D80, &unk_22A582DF0);
    if (swift_dynamicCast())
    {
      v37 = v94;
      if (isFeatureMatteriPhoneOnlyPairingControlEnabled())
      {
        if ([v19 hasAnyResident])
        {
          v86 = v4;
          sub_2296F8604();
          v38 = v2;
          v39 = sub_22A4DD05C();
          v40 = sub_22A4DDCDC();

          if (os_log_type_enabled(v39, v40))
          {
            v41 = swift_slowAlloc();
            v85 = swift_slowAlloc();
            *&v95 = v85;
            *v41 = 136315138;
            *&aBlock = 91;
            *(&aBlock + 1) = 0xE100000000000000;
            v42 = [v38 logIdentifier];
            v43 = sub_22A4DD5EC();
            v45 = v44;

            MEMORY[0x22AAD08C0](v43, v45);

            MEMORY[0x22AAD08C0](93, 0xE100000000000000);
            v46 = sub_2295A3E30(aBlock, *(&aBlock + 1), &v95);

            *(v41 + 4) = v46;
            _os_log_impl(&dword_229538000, v39, v40, "%s Resident available in home, routing request to primaryResident", v41, 0xCu);
            v47 = v85;
            __swift_destroy_boxed_opaque_existential_0(v85);
            MEMORY[0x22AAD4E50](v47, -1, -1);
            MEMORY[0x22AAD4E50](v41, -1, -1);
          }

          (*(v86 + 8))(v13, v88);
        }

        else
        {
          sub_2296F8604();
          v63 = v2;
          v64 = sub_22A4DD05C();
          v65 = sub_22A4DDCCC();

          if (os_log_type_enabled(v64, v65))
          {
            v66 = swift_slowAlloc();
            v84 = v66;
            v85 = swift_slowAlloc();
            *&v95 = v85;
            *v66 = 136315138;
            *&aBlock = 91;
            *(&aBlock + 1) = 0xE100000000000000;
            v67 = [v63 logIdentifier];
            v68 = sub_22A4DD5EC();
            v86 = v4;
            v69 = v68;
            v83 = v65;
            v71 = v70;

            MEMORY[0x22AAD08C0](v69, v71);

            MEMORY[0x22AAD08C0](93, 0xE100000000000000);
            v72 = sub_2295A3E30(aBlock, *(&aBlock + 1), &v95);

            v73 = v84;
            *(v84 + 1) = v72;
            _os_log_impl(&dword_229538000, v64, v83, "%s No residents in home, handling request locally", v73, 0xCu);
            v74 = v85;
            __swift_destroy_boxed_opaque_existential_0(v85);
            MEMORY[0x22AAD4E50](v74, -1, -1);
            MEMORY[0x22AAD4E50](v73, -1, -1);

            (*(v86 + 8))(v15, v88);
          }

          else
          {

            (*(v4 + 8))(v15, v88);
          }

          v75 = swift_allocObject();
          v76 = v89;
          v75[2] = v63;
          v75[3] = v76;
          v75[4] = ObjectType;
          v77 = v63;
          v78 = v76;
          sub_22979B218(v37, sub_2297EC908, v75);
        }
      }

      sub_22979B218(v37, 0, 0);

      v79 = swift_allocObject();
      *(v79 + 16) = v2;
      v92 = sub_2297EC8E4;
      v93 = v79;
      *&aBlock = MEMORY[0x277D85DD0];
      *(&aBlock + 1) = 1107296256;
      *&v91 = sub_229566C20;
      *(&v91 + 1) = &block_descriptor_22_0;
      v80 = _Block_copy(&aBlock);
      v81 = v2;

      [v81 routeMessage:v89 localHandler:v80];
      _Block_release(v80);

      goto LABEL_28;
    }

    v86 = v4;
  }

  else
  {
    v86 = v4;
    sub_22953EAE4(&aBlock, &unk_27D87DE60, &unk_22A57A960);
  }

  sub_2296F8604();
  v48 = v2;
  v49 = v89;
  v50 = sub_22A4DD05C();
  v51 = sub_22A4DDCEC();

  if (os_log_type_enabled(v50, v51))
  {
    v52 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    v89 = swift_slowAlloc();
    *&v95 = v89;
    *v52 = 136315394;
    *&aBlock = 91;
    *(&aBlock + 1) = 0xE100000000000000;
    v54 = [v48 logIdentifier];
    v55 = sub_22A4DD5EC();
    v57 = v56;

    MEMORY[0x22AAD08C0](v55, v57);

    MEMORY[0x22AAD08C0](93, 0xE100000000000000);
    v58 = sub_2295A3E30(aBlock, *(&aBlock + 1), &v95);

    *(v52 + 4) = v58;
    *(v52 + 12) = 2112;
    *(v52 + 14) = v49;
    *v53 = v49;
    v59 = v49;
    _os_log_impl(&dword_229538000, v50, v51, "%s Could not find pairings in CHIP pairings message: %@", v52, 0x16u);
    sub_22953EAE4(v53, &qword_27D87D7D0, &unk_22A578D90);
    MEMORY[0x22AAD4E50](v53, -1, -1);
    v60 = v89;
    __swift_destroy_boxed_opaque_existential_0(v89);
    MEMORY[0x22AAD4E50](v60, -1, -1);
    MEMORY[0x22AAD4E50](v52, -1, -1);
  }

  (*(v86 + 8))(v10, v88);
  v61 = [objc_opt_self() hmErrorWithCode_];
  v62 = sub_22A4DB3DC();

  [v49 respondWithError_];
  v19 = v62;
LABEL_28:
}

void sub_2297E65CC(void *a1, void *a2, void *a3)
{
  v6 = sub_22A4DD07C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v10 = a1;
    sub_2296F8604();
    v11 = a1;
    v12 = a2;
    v13 = sub_22A4DD05C();
    v14 = sub_22A4DDCEC();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v30 = a2;
      v16 = v15;
      v28 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v29 = v17;
      *v16 = 136315394;
      v32 = 91;
      v33 = 0xE100000000000000;
      v34 = v17;
      v18 = [v12 logIdentifier];
      v19 = sub_22A4DD5EC();
      v31 = a3;
      v21 = v20;

      MEMORY[0x22AAD08C0](v19, v21);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v22 = sub_2295A3E30(v32, v33, &v34);
      a3 = v31;

      *(v16 + 4) = v22;
      *(v16 + 12) = 2112;
      v23 = a1;
      v24 = _swift_stdlib_bridgeErrorToNSError();
      *(v16 + 14) = v24;
      v25 = v28;
      *v28 = v24;
      _os_log_impl(&dword_229538000, v13, v14, "%s Could not remove system commissioner pairings with error: %@", v16, 0x16u);
      sub_22953EAE4(v25, &qword_27D87D7D0, &unk_22A578D90);
      MEMORY[0x22AAD4E50](v25, -1, -1);
      v26 = v29;
      __swift_destroy_boxed_opaque_existential_0(v29);
      MEMORY[0x22AAD4E50](v26, -1, -1);
      MEMORY[0x22AAD4E50](v16, -1, -1);
    }

    else
    {
    }

    (*(v7 + 8))(v9, v6);
  }

  sub_229799610(a3);
}

uint64_t sub_2297E68FC(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70);
  MEMORY[0x28223BE20](v5 - 8);
  v332 = &v327 - v6;
  v7 = sub_22A4DD07C();
  v344 = *(v7 - 8);
  v345 = v7;
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v327 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v327 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v327 - v15;
  v17 = MEMORY[0x28223BE20](v14);
  v342 = &v327 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v341 = &v327 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v338 = &v327 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v337 = &v327 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v336 = &v327 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v334 = &v327 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v333 = &v327 - v30;
  MEMORY[0x28223BE20](v29);
  v335 = &v327 - v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D2A0, &unk_22A578BD0);
  MEMORY[0x28223BE20](v32 - 8);
  v34 = &v327 - v33;
  v340 = sub_22A4DB7DC();
  v35 = *(v340 - 8);
  v36 = MEMORY[0x28223BE20](v340);
  v38 = &v327 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v339 = &v327 - v39;
  v40 = [a1 messagePayload];
  if (!v40)
  {
    sub_2296F8604();
    v57 = v1;
    v58 = a1;
    v59 = sub_22A4DD05C();
    v60 = sub_22A4DDCEC();

    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      v346 = v62;
      *v61 = 136315394;
      v347 = 91;
      v348 = 0xE100000000000000;
      v63 = [v57 logIdentifier];
      v64 = sub_22A4DD5EC();
      v66 = v65;

      MEMORY[0x22AAD08C0](v64, v66);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v67 = sub_2295A3E30(v347, v348, &v346);

      *(v61 + 4) = v67;
      *(v61 + 12) = 2080;
      v68 = [v58 shortDescription];
      v69 = sub_22A4DD5EC();
      v71 = v70;

      v72 = sub_2295A3E30(v69, v71, &v346);

      *(v61 + 14) = v72;
      _os_log_impl(&dword_229538000, v59, v60, "%s Ignoring %s, missing payload", v61, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v62, -1, -1);
      MEMORY[0x22AAD4E50](v61, -1, -1);
    }

    v73 = *(v344 + 8);
    v74 = v10;
    return v73(v74, v345);
  }

  v41 = v40;
  v343 = ObjectType;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
  v43 = sub_22A4DD49C();

  v44 = [v2 accessory];
  if (!v44)
  {

    sub_2296F8604();
    v75 = v2;
    v76 = a1;
    v77 = sub_22A4DD05C();
    v78 = sub_22A4DDCEC();

    if (os_log_type_enabled(v77, v78))
    {
      v79 = swift_slowAlloc();
      v80 = swift_slowAlloc();
      v346 = v80;
      *v79 = 136315394;
      v347 = 91;
      v348 = 0xE100000000000000;
      v81 = [v75 logIdentifier];
      v82 = sub_22A4DD5EC();
      v84 = v83;

      MEMORY[0x22AAD08C0](v82, v84);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v85 = sub_2295A3E30(v347, v348, &v346);

      *(v79 + 4) = v85;
      *(v79 + 12) = 2080;
      v86 = [v76 shortDescription];
      v87 = sub_22A4DD5EC();
      v89 = v88;

      v90 = sub_2295A3E30(v87, v89, &v346);

      *(v79 + 14) = v90;
      _os_log_impl(&dword_229538000, v77, v78, "%s Ignoring %s, nil accessory", v79, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v80, -1, -1);
      MEMORY[0x22AAD4E50](v79, -1, -1);
    }

    v73 = *(v344 + 8);
    v74 = v13;
    return v73(v74, v345);
  }

  v331 = v43;
  v330 = v44;
  v45 = [v44 home];
  if (!v45)
  {

    sub_2296F8604();
    v91 = v2;
    v92 = a1;
    v93 = sub_22A4DD05C();
    v94 = sub_22A4DDCEC();

    if (os_log_type_enabled(v93, v94))
    {
      v95 = swift_slowAlloc();
      v96 = swift_slowAlloc();
      v346 = v96;
      *v95 = 136315394;
      v347 = 91;
      v348 = 0xE100000000000000;
      v97 = [v91 logIdentifier];
      v98 = sub_22A4DD5EC();
      v100 = v99;

      MEMORY[0x22AAD08C0](v98, v100);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v101 = sub_2295A3E30(v347, v348, &v346);

      *(v95 + 4) = v101;
      *(v95 + 12) = 2080;
      v102 = [v92 shortDescription];
      v103 = sub_22A4DD5EC();
      v105 = v104;

      v106 = sub_2295A3E30(v103, v105, &v346);

      *(v95 + 14) = v106;
      _os_log_impl(&dword_229538000, v93, v94, "%s Ignoring %s, nil home", v95, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v96, -1, -1);
      MEMORY[0x22AAD4E50](v95, -1, -1);

LABEL_20:
      v73 = *(v344 + 8);
      v74 = v16;
      return v73(v74, v345);
    }

LABEL_19:
    goto LABEL_20;
  }

  v46 = v45;
  v329 = v42;
  v47 = sub_22A4DD5EC();
  v49 = v331;
  if (!*(v331 + 16))
  {

    goto LABEL_21;
  }

  v50 = sub_229543DBC(v47, v48);
  v52 = v51;

  if ((v52 & 1) == 0 || (sub_2295404B0(*(v49 + 56) + 32 * v50, &v347), (swift_dynamicCast() & 1) == 0))
  {
LABEL_21:
    v107 = v342;
    sub_2296F8604();
    v108 = v2;
    v109 = a1;
    v110 = v107;
    v111 = v109;

    v112 = sub_22A4DD05C();
    v113 = sub_22A4DDCEC();

    if (os_log_type_enabled(v112, v113))
    {
      v114 = swift_slowAlloc();
      v341 = v46;
      v115 = v114;
      v116 = swift_slowAlloc();
      v346 = v116;
      *v115 = 136315650;
      v347 = 91;
      v348 = 0xE100000000000000;
      v117 = [v108 logIdentifier];
      v118 = sub_22A4DD5EC();
      v120 = v119;

      MEMORY[0x22AAD08C0](v118, v120);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v121 = sub_2295A3E30(v347, v348, &v346);

      *(v115 + 4) = v121;
      *(v115 + 12) = 2080;
      v122 = [v111 shortDescription];
      v123 = sub_22A4DD5EC();
      v125 = v124;

      v126 = sub_2295A3E30(v123, v125, &v346);

      *(v115 + 14) = v126;
      *(v115 + 22) = 2080;
      v127 = sub_22A4DD4AC();
      v129 = v128;

      v130 = sub_2295A3E30(v127, v129, &v346);

      *(v115 + 24) = v130;
      _os_log_impl(&dword_229538000, v112, v113, "%s Ignoring %s, payload missing accessory UUID: %s", v115, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v116, -1, -1);
      MEMORY[0x22AAD4E50](v115, -1, -1);
    }

    else
    {
    }

    v73 = *(v344 + 8);
    v74 = v110;
    return v73(v74, v345);
  }

  sub_22A4DB75C();

  v53 = v35;
  v54 = *(v35 + 48);
  v55 = v340;
  if (v54(v34, 1, v340) == 1)
  {
    sub_22953EAE4(v34, &unk_27D87D2A0, &unk_22A578BD0);
    v56 = a1;
LABEL_46:
    v16 = v341;
    sub_2296F8604();
    v199 = v2;
    v200 = v56;

    v201 = sub_22A4DD05C();
    v202 = sub_22A4DDCEC();

    if (os_log_type_enabled(v201, v202))
    {
      v203 = swift_slowAlloc();
      v204 = v46;
      v205 = swift_slowAlloc();
      v346 = v205;
      *v203 = 136315650;
      v347 = 91;
      v348 = 0xE100000000000000;
      v206 = [v199 logIdentifier];
      v207 = sub_22A4DD5EC();
      v209 = v208;

      MEMORY[0x22AAD08C0](v207, v209);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v210 = sub_2295A3E30(v347, v348, &v346);

      *(v203 + 4) = v210;
      *(v203 + 12) = 2080;
      v211 = [v200 shortDescription];
      v212 = sub_22A4DD5EC();
      v214 = v213;

      v215 = sub_2295A3E30(v212, v214, &v346);

      *(v203 + 14) = v215;
      *(v203 + 22) = 2080;
      v216 = sub_22A4DD4AC();
      v218 = v217;

      v219 = sub_2295A3E30(v216, v218, &v346);

      *(v203 + 24) = v219;
      _os_log_impl(&dword_229538000, v201, v202, "%s Ignoring %s, payload has invalid accessory UUID: %s", v203, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v205, -1, -1);
      MEMORY[0x22AAD4E50](v203, -1, -1);

      v73 = *(v344 + 8);
      v74 = v341;
      return v73(v74, v345);
    }

    goto LABEL_19;
  }

  v132 = v339;
  (*(v53 + 32))(v339, v34, v55);
  v133 = [v330 uuid];
  sub_22A4DB79C();

  LOBYTE(v133) = sub_22A4DB78C();
  v136 = *(v53 + 8);
  v134 = v53 + 8;
  v135 = v136;
  (v136)(v38, v55);
  v56 = a1;
  if ((v133 & 1) == 0)
  {
    (v135)(v132, v55);
    goto LABEL_46;
  }

  v342 = v135;
  v137 = sub_22A4DD5EC();
  v139 = v331;
  if (*(v331 + 16))
  {
    v140 = sub_229543DBC(v137, v138);
    v142 = v141;
    v56 = a1;

    if (v142)
    {
      sub_2295404B0(*(v139 + 56) + 32 * v140, &v347);
      sub_229562F68(0, &qword_281401770, 0x277CCABB0);
      if (swift_dynamicCast())
      {
        v328 = v134;
        v338 = v346;
        v143 = sub_22A4DD5EC();
        if (*(v139 + 16))
        {
          v145 = sub_229543DBC(v143, v144);
          v147 = v146;
          v56 = a1;

          if (v147)
          {
            sub_2295404B0(*(v139 + 56) + 32 * v145, &v347);
            if (swift_dynamicCast())
            {
              v337 = v346;
              v148 = sub_22A4DD5EC();
              if (*(v139 + 16))
              {
                v150 = sub_229543DBC(v148, v149);
                v152 = v151;
                v153 = v139;

                v154 = v342;
                if (v152)
                {
                  v341 = v46;
                  sub_2295404B0(*(v153 + 56) + 32 * v150, &v347);
                  if (swift_dynamicCast())
                  {
                    v336 = v346;
                    sub_2296F8604();
                    v155 = v2;
                    v156 = a1;

                    v157 = sub_22A4DD05C();
                    v158 = sub_22A4DDCCC();

                    if (os_log_type_enabled(v157, v158))
                    {
                      v159 = swift_slowAlloc();
                      v160 = swift_slowAlloc();
                      v346 = v160;
                      *v159 = 136315650;
                      v347 = 91;
                      v348 = 0xE100000000000000;
                      v161 = [v155 logIdentifier];
                      v162 = sub_22A4DD5EC();
                      v164 = v163;

                      MEMORY[0x22AAD08C0](v162, v164);

                      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
                      v165 = sub_2295A3E30(v347, v348, &v346);

                      *(v159 + 4) = v165;
                      *(v159 + 12) = 2080;
                      v166 = [v156 shortDescription];
                      v167 = sub_22A4DD5EC();
                      v169 = v168;

                      v170 = sub_2295A3E30(v167, v169, &v346);

                      *(v159 + 14) = v170;
                      *(v159 + 22) = 2080;
                      v171 = sub_22A4DD4AC();
                      v173 = sub_2295A3E30(v171, v172, &v346);

                      *(v159 + 24) = v173;
                      _os_log_impl(&dword_229538000, v157, v158, "%s Received %s with payload=%s", v159, 0x20u);
                      swift_arrayDestroy();
                      MEMORY[0x22AAD4E50](v160, -1, -1);
                      MEMORY[0x22AAD4E50](v159, -1, -1);
                    }

                    v174 = v335;
                    v335 = *(v344 + 8);
                    (v335)(v174, v345);
                    v175 = objc_opt_self();
                    v176 = v330;
                    v177 = [v175 PathWithEventID:v336 endpointID:v338 clusterID:v337 accessory:v330];
                    if ([objc_opt_self() isBulletinSupportedForMatterPath:v177 accessory:v176])
                    {
                      objc_opt_self();
                      v178 = swift_dynamicCastObjCClass();
                      if (v178)
                      {
                        v179 = v178;
                        v180 = v330;
                        if (sub_229768668(v336, v337))
                        {
                          v181 = sub_22A4DD9DC();
                          v182 = v332;
                          (*(*(v181 - 8) + 56))(v332, 1, 1, v181);
                          v183 = swift_allocObject();
                          v183[2] = 0;
                          v183[3] = 0;
                          v183[4] = v331;
                          v183[5] = v179;
                          v184 = v341;
                          v183[6] = v341;
                          v183[7] = v180;
                          v185 = v343;
                          v183[8] = v155;
                          v183[9] = v185;
                          v186 = v180;
                          v187 = v155;

                          v188 = v186;
                          v189 = v184;
                          sub_22957F3C0(0, 0, v182, &unk_22A584450, v183);
                        }

                        if ((sub_22976869C(v336, v337) & 1) == 0)
                        {
                          (v342)(v339, v340);
                        }

                        v190 = sub_22A4DD9DC();
                        v191 = v332;
                        (*(*(v190 - 8) + 56))(v332, 1, 1, v190);
                        v192 = swift_allocObject();
                        v192[2] = 0;
                        v192[3] = 0;
                        v192[4] = v331;
                        v192[5] = v179;
                        v193 = v341;
                        v192[6] = v341;
                        v192[7] = v180;
                        v194 = v343;
                        v192[8] = v155;
                        v192[9] = v194;
                        v195 = v180;
                        v196 = v155;
                        v197 = v195;
                        v198 = v193;
                        sub_22957F3C0(0, 0, v191, &unk_22A584440, v192);

                        goto LABEL_72;
                      }

                      sub_2296F8604();
                      v311 = v155;
                      v312 = v156;
                      v313 = sub_22A4DD05C();
                      v314 = sub_22A4DDCEC();

                      if (os_log_type_enabled(v313, v314))
                      {
                        v315 = swift_slowAlloc();
                        v316 = swift_slowAlloc();
                        v346 = v316;
                        *v315 = 136315394;
                        v347 = 91;
                        v348 = 0xE100000000000000;
                        v317 = [v311 logIdentifier];
                        v318 = sub_22A4DD5EC();
                        v320 = v319;

                        MEMORY[0x22AAD08C0](v318, v320);

                        MEMORY[0x22AAD08C0](93, 0xE100000000000000);
                        v321 = sub_2295A3E30(v347, v348, &v346);

                        *(v315 + 4) = v321;
                        *(v315 + 12) = 2080;
                        v322 = [v312 shortDescription];
                        v323 = sub_22A4DD5EC();
                        v325 = v324;

                        v326 = sub_2295A3E30(v323, v325, &v346);

                        *(v315 + 14) = v326;
                        _os_log_impl(&dword_229538000, v313, v314, "%s Ignoring %s, expected hapAccessory", v315, 0x16u);
                        swift_arrayDestroy();
                        MEMORY[0x22AAD4E50](v316, -1, -1);
                        MEMORY[0x22AAD4E50](v315, -1, -1);
                      }

                      v310 = v333;
                    }

                    else
                    {

                      sub_2296F8604();
                      v291 = v155;
                      v292 = v156;
                      v293 = v177;
                      v294 = sub_22A4DD05C();
                      v295 = sub_22A4DDCDC();

                      if (os_log_type_enabled(v294, v295))
                      {
                        v296 = swift_slowAlloc();
                        v297 = swift_slowAlloc();
                        v298 = swift_slowAlloc();
                        v346 = v298;
                        *v296 = 136315650;
                        v347 = 91;
                        v348 = 0xE100000000000000;
                        v299 = [v291 logIdentifier];
                        v300 = sub_22A4DD5EC();
                        v302 = v301;

                        MEMORY[0x22AAD08C0](v300, v302);

                        MEMORY[0x22AAD08C0](93, 0xE100000000000000);
                        v303 = sub_2295A3E30(v347, v348, &v346);

                        *(v296 + 4) = v303;
                        *(v296 + 12) = 2080;
                        v304 = [v292 shortDescription];
                        v305 = sub_22A4DD5EC();
                        v307 = v306;

                        v308 = sub_2295A3E30(v305, v307, &v346);

                        *(v296 + 14) = v308;
                        *(v296 + 22) = 2112;
                        *(v296 + 24) = v293;
                        *v297 = v293;
                        v309 = v293;
                        _os_log_impl(&dword_229538000, v294, v295, "%s Ignoring message %s, unsupported matterPath: %@", v296, 0x20u);
                        sub_22953EAE4(v297, &qword_27D87D7D0, &unk_22A578D90);
                        MEMORY[0x22AAD4E50](v297, -1, -1);
                        swift_arrayDestroy();
                        MEMORY[0x22AAD4E50](v298, -1, -1);
                        MEMORY[0x22AAD4E50](v296, -1, -1);
                      }

                      else
                      {
                      }

                      v310 = v334;
                    }

                    (v335)(v310, v345);
LABEL_72:
                    v267 = v339;
                    v268 = v340;
                    return (v342)(v267, v268);
                  }

                  v55 = v340;
                  v46 = v341;
                  v154 = v342;
                }
              }

              else
              {

                v154 = v342;
              }

              v269 = v336;
              sub_2296F8604();
              v270 = v2;
              v271 = a1;

              v272 = sub_22A4DD05C();
              v273 = sub_22A4DDCEC();

              if (!os_log_type_enabled(v272, v273))
              {

                (*(v344 + 8))(v269, v345);
                return v154(v339, v55);
              }

              v274 = swift_slowAlloc();
              v275 = swift_slowAlloc();
              v341 = v46;
              v276 = v275;
              v346 = v275;
              *v274 = 136315650;
              v347 = 91;
              v348 = 0xE100000000000000;
              v277 = [v270 logIdentifier];
              v278 = sub_22A4DD5EC();
              v254 = v55;
              v280 = v279;

              MEMORY[0x22AAD08C0](v278, v280);

              MEMORY[0x22AAD08C0](93, 0xE100000000000000);
              v281 = sub_2295A3E30(v347, v348, &v346);

              *(v274 + 4) = v281;
              *(v274 + 12) = 2080;
              v282 = [v271 shortDescription];
              v283 = sub_22A4DD5EC();
              v285 = v284;

              v286 = sub_2295A3E30(v283, v285, &v346);

              *(v274 + 14) = v286;
              *(v274 + 22) = 2080;
              v287 = sub_22A4DD4AC();
              v289 = v288;

              v290 = sub_2295A3E30(v287, v289, &v346);

              *(v274 + 24) = v290;
              _os_log_impl(&dword_229538000, v272, v273, "%s Ignoring %s, payload missing Matter eventID: %s", v274, 0x20u);
              swift_arrayDestroy();
              MEMORY[0x22AAD4E50](v276, -1, -1);
              MEMORY[0x22AAD4E50](v274, -1, -1);

              (*(v344 + 8))(v336, v345);
              goto LABEL_56;
            }
          }
        }

        else
        {
        }

        v244 = v337;
        sub_2296F8604();
        v245 = v2;
        v246 = v56;

        v247 = sub_22A4DD05C();
        v248 = sub_22A4DDCEC();

        if (!os_log_type_enabled(v247, v248))
        {

          (*(v344 + 8))(v244, v345);
          v267 = v339;
          v268 = v55;
          return (v342)(v267, v268);
        }

        v249 = swift_slowAlloc();
        v250 = swift_slowAlloc();
        v341 = v46;
        v251 = v250;
        v346 = v250;
        *v249 = 136315650;
        v347 = 91;
        v348 = 0xE100000000000000;
        v252 = [v245 logIdentifier];
        v253 = sub_22A4DD5EC();
        v254 = v55;
        v256 = v255;

        MEMORY[0x22AAD08C0](v253, v256);

        MEMORY[0x22AAD08C0](93, 0xE100000000000000);
        v257 = sub_2295A3E30(v347, v348, &v346);

        *(v249 + 4) = v257;
        *(v249 + 12) = 2080;
        v258 = [v246 shortDescription];
        v259 = sub_22A4DD5EC();
        v261 = v260;

        v262 = sub_2295A3E30(v259, v261, &v346);

        *(v249 + 14) = v262;
        *(v249 + 22) = 2080;
        v263 = sub_22A4DD4AC();
        v265 = v264;

        v266 = sub_2295A3E30(v263, v265, &v346);

        *(v249 + 24) = v266;
        _os_log_impl(&dword_229538000, v247, v248, "%s Ignoring %s, payload missing Matter clusterID: %s", v249, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x22AAD4E50](v251, -1, -1);
        MEMORY[0x22AAD4E50](v249, -1, -1);

        (*(v344 + 8))(v337, v345);
LABEL_56:
        v267 = v339;
        v268 = v254;
        return (v342)(v267, v268);
      }
    }
  }

  else
  {
  }

  v220 = v338;
  sub_2296F8604();
  v221 = v2;
  v222 = v56;

  v223 = sub_22A4DD05C();
  v224 = sub_22A4DDCEC();

  if (os_log_type_enabled(v223, v224))
  {
    v225 = swift_slowAlloc();
    v328 = v134;
    v226 = v225;
    v227 = swift_slowAlloc();
    v341 = v46;
    v228 = v227;
    v346 = v227;
    *v226 = 136315650;
    v347 = 91;
    v348 = 0xE100000000000000;
    v229 = v224;
    v230 = [v221 logIdentifier];
    v231 = sub_22A4DD5EC();
    v233 = v232;

    MEMORY[0x22AAD08C0](v231, v233);

    MEMORY[0x22AAD08C0](93, 0xE100000000000000);
    v234 = sub_2295A3E30(v347, v348, &v346);

    *(v226 + 4) = v234;
    *(v226 + 12) = 2080;
    v235 = [v222 shortDescription];
    v236 = sub_22A4DD5EC();
    v238 = v237;

    v239 = sub_2295A3E30(v236, v238, &v346);

    *(v226 + 14) = v239;
    *(v226 + 22) = 2080;
    v240 = sub_22A4DD4AC();
    v242 = v241;

    v243 = sub_2295A3E30(v240, v242, &v346);

    *(v226 + 24) = v243;
    _os_log_impl(&dword_229538000, v223, v229, "%s Ignoring %s, payload missing Matter endpointID: %s", v226, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v228, -1, -1);
    MEMORY[0x22AAD4E50](v226, -1, -1);

    (*(v344 + 8))(v220, v345);
    return (v342)(v339, v340);
  }

  else
  {

    (*(v344 + 8))(v220, v345);
    return (v342)(v339, v55);
  }
}

uint64_t sub_2297E8BC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[8] = a8;
  v8[9] = v13;
  v8[6] = a6;
  v8[7] = a7;
  v8[4] = a4;
  v8[5] = a5;
  v9 = sub_22A4DD07C();
  v8[10] = v9;
  v8[11] = *(v9 - 8);
  v8[12] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D881520, &qword_22A584458);
  v8[13] = swift_task_alloc();
  v10 = type metadata accessor for ClimateBulletinBuilder.ValenciaContent(0);
  v8[14] = v10;
  v8[15] = *(v10 - 8);
  v8[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2297E8D28, 0, 0);
}

uint64_t sub_2297E8D28()
{
  v1 = v0[5];
  v2 = v0[6];
  sub_2296F7AE8(v0[4]);
  v4 = v3;
  v5 = [v1 name];
  v6 = sub_22A4DD5EC();
  v8 = v7;

  v9 = v1;
  v10 = v2;
  v11 = swift_task_alloc();
  v0[17] = v11;
  *v11 = v0;
  v11[1] = sub_2297E8E24;
  v12 = v0[13];
  v13 = v0[5];
  v14 = v0[6];

  return sub_2295579D0(v12, v4, v6, v8, v13, v14);
}

uint64_t sub_2297E8E24()
{

  return MEMORY[0x2822009F8](sub_2297E8F20, 0, 0);
}

uint64_t sub_2297E8F20()
{
  v39 = v0;
  v1 = v0[13];
  if ((*(v0[15] + 48))(v1, 1, v0[14]) == 1)
  {
    v2 = v0[8];
    v3 = v0[5];
    sub_22953EAE4(v1, &qword_27D881520, &qword_22A584458);
    sub_2296F8604();
    v4 = v3;
    v5 = v2;

    v6 = sub_22A4DD05C();
    v7 = sub_22A4DDCEC();

    v8 = os_log_type_enabled(v6, v7);
    v10 = v0[11];
    v9 = v0[12];
    v11 = v0[10];
    if (v8)
    {
      v36 = v0[10];
      v37 = v0[12];
      v12 = v0[8];
      v13 = v0[4];
      v35 = v0[5];
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *v14 = 136315650;
      v38[0] = v15;
      v38[1] = 91;
      v38[2] = 0xE100000000000000;
      v16 = [v12 logIdentifier];
      v17 = sub_22A4DD5EC();
      v19 = v18;

      MEMORY[0x22AAD08C0](v17, v19);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v20 = sub_2295A3E30(91, 0xE100000000000000, v38);

      *(v14 + 4) = v20;
      *(v14 + 12) = 2080;
      v0[2] = v13;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C370, &qword_22A578090);
      v21 = sub_22A4DBA6C();
      v23 = sub_2295A3E30(v21, v22, v38);

      *(v14 + 14) = v23;
      *(v14 + 22) = 2080;
      v0[3] = v35;
      sub_229562F68(0, &qword_281401B70, off_278666148);
      v24 = sub_22A4DBA6C();
      v26 = sub_2295A3E30(v24, v25, v38);

      *(v14 + 24) = v26;
      _os_log_impl(&dword_229538000, v6, v7, "%s Failed to build content given valid payload: %s, for accessory: %s", v14, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v15, -1, -1);
      MEMORY[0x22AAD4E50](v14, -1, -1);

      (*(v10 + 8))(v37, v36);
    }

    else
    {

      (*(v10 + 8))(v9, v11);
    }
  }

  else
  {
    v27 = v0[16];
    v28 = v0[7];
    sub_229562FD0(v1, v27, type metadata accessor for ClimateBulletinBuilder.ValenciaContent);
    v29 = [v28 bulletinBoard];
    v30 = sub_22A4DD5AC();
    v31 = sub_22A4DD5AC();
    v32 = sub_22A4DB4EC();
    [v29 insertClimateBulletinForAccessory:v28 title:v30 body:v31 actionURL:v32];

    sub_2297EC884(v27, type metadata accessor for ClimateBulletinBuilder.ValenciaContent);
  }

  v33 = v0[1];

  return v33();
}

uint64_t sub_2297E92EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[7] = a8;
  v8[8] = v13;
  v8[5] = a6;
  v8[6] = a7;
  v8[3] = a4;
  v8[4] = a5;
  v9 = sub_22A4DD07C();
  v8[9] = v9;
  v8[10] = *(v9 - 8);
  v8[11] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D881528, &unk_22A584460);
  v8[12] = swift_task_alloc();
  v10 = type metadata accessor for ClimateBulletinBuilder.AlvaradoContent(0);
  v8[13] = v10;
  v8[14] = *(v10 - 8);
  v8[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2297E9450, 0, 0);
}

uint64_t sub_2297E9450()
{
  v1 = v0[4];
  v2 = v0[5];
  sub_2296F7AE8(v0[3]);
  v4 = v3;
  v5 = [v1 name];
  v6 = sub_22A4DD5EC();
  v8 = v7;

  v9 = v1;
  v10 = v2;
  v11 = swift_task_alloc();
  v0[16] = v11;
  *v11 = v0;
  v11[1] = sub_2297E954C;
  v12 = v0[12];
  v13 = v0[4];
  v14 = v0[5];

  return sub_2295572C4(v12, v4, v6, v8, v13, v14);
}

uint64_t sub_2297E954C()
{

  return MEMORY[0x2822009F8](sub_2297E9648, 0, 0);
}

uint64_t sub_2297E9648()
{
  v32 = v0;
  v1 = v0[12];
  if ((*(v0[14] + 48))(v1, 1, v0[13]) == 1)
  {
    v2 = v0[7];
    sub_22953EAE4(v1, &qword_27D881528, &unk_22A584460);
    sub_2296F8604();
    v3 = v2;

    v4 = sub_22A4DD05C();
    v5 = sub_22A4DDCEC();

    v6 = os_log_type_enabled(v4, v5);
    v8 = v0[10];
    v7 = v0[11];
    v9 = v0[9];
    if (v6)
    {
      v30 = v0[11];
      v10 = v0[7];
      v29 = v0[3];
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *v11 = 136315394;
      v31[0] = v12;
      v31[1] = 91;
      v31[2] = 0xE100000000000000;
      v13 = [v10 logIdentifier];
      v14 = sub_22A4DD5EC();
      v16 = v15;

      MEMORY[0x22AAD08C0](v14, v16);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v17 = sub_2295A3E30(91, 0xE100000000000000, v31);

      *(v11 + 4) = v17;
      *(v11 + 12) = 2080;
      v0[2] = v29;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C370, &qword_22A578090);
      v18 = sub_22A4DBA6C();
      v20 = sub_2295A3E30(v18, v19, v31);

      *(v11 + 14) = v20;
      _os_log_impl(&dword_229538000, v4, v5, "%s Failed to build content given valid payload: %s", v11, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v12, -1, -1);
      MEMORY[0x22AAD4E50](v11, -1, -1);

      (*(v8 + 8))(v30, v9);
    }

    else
    {

      (*(v8 + 8))(v7, v9);
    }
  }

  else
  {
    v21 = v0[15];
    v22 = v0[6];
    sub_229562FD0(v1, v21, type metadata accessor for ClimateBulletinBuilder.AlvaradoContent);
    v23 = [v22 bulletinBoard];
    v24 = sub_22A4DD5AC();
    v25 = sub_22A4DD5AC();
    v26 = sub_22A4DB4EC();
    [v23 insertClimateBulletinForAccessory:v22 title:v24 body:v25 actionURL:v26];

    sub_2297EC884(v21, type metadata accessor for ClimateBulletinBuilder.AlvaradoContent);
  }

  v27 = v0[1];

  return v27();
}

uint64_t sub_2297E9A28(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_22A4DD07C();
  v170 = *(v5 - 8);
  v6 = MEMORY[0x28223BE20](v5);
  v8 = &v155 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v168 = &v155 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v166 = &v155 - v12;
  MEMORY[0x28223BE20](v11);
  v14 = &v155 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D2A0, &unk_22A578BD0);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v155 - v16;
  v18 = sub_22A4DB7DC();
  v19 = *(v18 - 8);
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v155 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v169 = &v155 - v23;
  v167 = a1;
  v24 = [a1 messagePayload];
  if (!v24)
  {
    goto LABEL_12;
  }

  v25 = v24;
  v162 = v14;
  v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
  v26 = sub_22A4DD49C();

  v27 = [v2 accessory];
  if (!v27)
  {
    goto LABEL_8;
  }

  v164 = v27;
  v165 = v5;
  v28 = sub_22A4DD5EC();
  if (!*(v26 + 16))
  {

    goto LABEL_10;
  }

  v160 = v18;
  v161 = ObjectType;
  v30 = sub_229543DBC(v28, v29);
  v32 = v31;

  if ((v32 & 1) == 0)
  {
LABEL_10:

LABEL_11:
    v5 = v165;
LABEL_12:
    sub_2296F8604();
    v36 = v2;
    v37 = sub_22A4DD05C();
    v38 = sub_22A4DDCEC();

    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v172 = v40;
      *v39 = 136315138;
      v173 = 91;
      v174 = 0xE100000000000000;
      v41 = [v36 logIdentifier];
      v42 = sub_22A4DD5EC();
      v43 = v5;
      v45 = v44;

      MEMORY[0x22AAD08C0](v42, v45);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v46 = sub_2295A3E30(v173, v174, &v172);

      *(v39 + 4) = v46;
      _os_log_impl(&dword_229538000, v37, v38, "%s Message received for accessory that is not this accessory. Not handling.", v39, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v40);
      MEMORY[0x22AAD4E50](v40, -1, -1);
      MEMORY[0x22AAD4E50](v39, -1, -1);

      return (*(v170 + 8))(v8, v43);
    }

    else
    {

      return (*(v170 + 8))(v8, v5);
    }
  }

  sub_2295404B0(*(v26 + 56) + 32 * v30, &v173);
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_11;
  }

  v159 = v26;
  sub_22A4DB75C();

  v33 = v19;
  v34 = v160;
  v35 = (*(v19 + 48))(v17, 1, v160);
  v5 = v165;
  if (v35 == 1)
  {

    sub_22953EAE4(v17, &unk_27D87D2A0, &unk_22A578BD0);
    goto LABEL_12;
  }

  v48 = v169;
  (*(v19 + 32))(v169, v17, v34);
  v49 = v164;
  v50 = [v164 uuid];
  sub_22A4DB79C();

  LOBYTE(v50) = sub_22A4DB78C();
  v52 = *(v33 + 8);
  v51 = v33 + 8;
  v53 = v22;
  v54 = v52;
  v52(v53, v34);
  if ((v50 & 1) == 0)
  {
    v54(v48, v34);

LABEL_8:

    goto LABEL_12;
  }

  v157 = v54;
  v55 = v162;
  sub_2296F8604();
  v56 = v2;
  v57 = v167;
  v58 = v159;

  v59 = sub_22A4DD05C();
  v60 = sub_22A4DDCCC();

  v61 = os_log_type_enabled(v59, v60);
  v158 = v51;
  v167 = v57;
  if (v61)
  {
    v62 = swift_slowAlloc();
    v155 = swift_slowAlloc();
    v172 = v155;
    *v62 = 136315650;
    v173 = 91;
    v174 = 0xE100000000000000;
    v63 = [v56 logIdentifier];
    v64 = sub_22A4DD5EC();
    v156 = v56;
    v65 = v64;
    v67 = v66;

    MEMORY[0x22AAD08C0](v65, v67);

    MEMORY[0x22AAD08C0](93, 0xE100000000000000);
    v68 = sub_2295A3E30(v173, v174, &v172);

    *(v62 + 4) = v68;
    *(v62 + 12) = 2080;
    v69 = [v57 shortDescription];
    v70 = sub_22A4DD5EC();
    v72 = v71;

    v73 = sub_2295A3E30(v70, v72, &v172);

    *(v62 + 14) = v73;
    *(v62 + 22) = 2080;
    v74 = sub_22A4DD4AC();
    v76 = sub_2295A3E30(v74, v75, &v172);

    *(v62 + 24) = v76;
    v56 = v156;
    _os_log_impl(&dword_229538000, v59, v60, "%s Received %s with payload=%s", v62, 0x20u);
    v77 = v155;
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v77, -1, -1);
    MEMORY[0x22AAD4E50](v62, -1, -1);

    v78 = *(v170 + 8);
    v78(v55, v165);
  }

  else
  {

    v78 = *(v170 + 8);
    v78(v55, v5);
  }

  v79 = v168;
  v80 = sub_22A4DD5EC();
  if (!*(v58 + 16))
  {

LABEL_37:

    goto LABEL_38;
  }

  v82 = sub_229543DBC(v80, v81);
  v84 = v83;

  if ((v84 & 1) == 0)
  {
    goto LABEL_37;
  }

  sub_2295404B0(*(v58 + 56) + 32 * v82, &v173);
  sub_229562F68(0, &qword_281401770, 0x277CCABB0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_37;
  }

  v85 = v56;
  v86 = v172;
  v87 = sub_22A4DD5EC();
  if (!*(v58 + 16))
  {

LABEL_49:

    goto LABEL_50;
  }

  v89 = sub_229543DBC(v87, v88);
  v91 = v90;

  if ((v91 & 1) == 0)
  {

    goto LABEL_49;
  }

  sub_2295404B0(*(v58 + 56) + 32 * v89, &v173);
  if ((swift_dynamicCast() & 1) == 0)
  {

LABEL_50:
    v56 = v85;
LABEL_38:
    sub_2296F8604();
    v112 = v56;
    v113 = v167;
    v114 = sub_22A4DD05C();
    v115 = sub_22A4DDCEC();

    if (os_log_type_enabled(v114, v115))
    {
      v116 = swift_slowAlloc();
      v117 = v79;
      v118 = swift_slowAlloc();
      v172 = v118;
      *v116 = 136315394;
      v173 = 91;
      v174 = 0xE100000000000000;
      v119 = [v112 logIdentifier];
      v120 = sub_22A4DD5EC();
      v122 = v121;

      MEMORY[0x22AAD08C0](v120, v122);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v123 = sub_2295A3E30(v173, v174, &v172);

      *(v116 + 4) = v123;
      *(v116 + 12) = 2080;
      v124 = [v113 shortDescription];
      v125 = sub_22A4DD5EC();
      v127 = v126;

      v128 = sub_2295A3E30(v125, v127, &v172);

      *(v116 + 14) = v128;
      _os_log_impl(&dword_229538000, v114, v115, "%s %s received for accessory that is not this accessory. Not handling.", v116, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v118, -1, -1);
      MEMORY[0x22AAD4E50](v116, -1, -1);

      v129 = v117;
    }

    else
    {

      v129 = v79;
    }

LABEL_41:
    v78(v129, v165);
    return v157(v169, v160);
  }

  v92 = v172;
  v93 = sub_22A4DD5EC();
  if (!*(v58 + 16))
  {

LABEL_48:

    goto LABEL_49;
  }

  v95 = sub_229543DBC(v93, v94);
  v97 = v96;

  if ((v97 & 1) == 0)
  {

    goto LABEL_48;
  }

  sub_2295404B0(*(v58 + 56) + 32 * v95, &v173);
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_50;
  }

  v98 = v172;
  v99 = objc_opt_self();
  v155 = v98;
  v168 = v86;
  v162 = v92;
  v156 = [v99 PathWithAttributeID:v98 endpointID:v86 clusterID:v92 accessory:v164];
  v100 = sub_22A4DD5EC();
  if (!*(v58 + 16))
  {

    goto LABEL_53;
  }

  v102 = sub_229543DBC(v100, v101);
  v104 = v103;

  if ((v104 & 1) == 0)
  {
LABEL_53:
    sub_2296F8604();
    v130 = v85;
    v131 = v167;

    v132 = sub_22A4DD05C();
    v133 = sub_22A4DDCEC();

    if (os_log_type_enabled(v132, v133))
    {
      v134 = swift_slowAlloc();
      v135 = swift_slowAlloc();
      v172 = v135;
      *v134 = 136315650;
      v173 = 91;
      v174 = 0xE100000000000000;
      v136 = [v130 logIdentifier];
      v137 = sub_22A4DD5EC();
      v139 = v138;

      MEMORY[0x22AAD08C0](v137, v139);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v140 = sub_2295A3E30(v173, v174, &v172);

      *(v134 + 4) = v140;
      *(v134 + 12) = 2080;
      v141 = [v131 shortDescription];
      v142 = sub_22A4DD5EC();
      v144 = v143;

      v145 = sub_2295A3E30(v142, v144, &v172);

      *(v134 + 14) = v145;
      *(v134 + 22) = 2080;
      v146 = sub_22A4DD4AC();
      v148 = v147;

      v149 = sub_2295A3E30(v146, v148, &v172);

      *(v134 + 24) = v149;
      _os_log_impl(&dword_229538000, v132, v133, "%s %s does not contain attribute value. payload=%s", v134, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v135, -1, -1);
      MEMORY[0x22AAD4E50](v134, -1, -1);
    }

    else
    {
    }

    v129 = v166;
    goto LABEL_41;
  }

  v105 = v159;
  sub_2295404B0(*(v159 + 56) + 32 * v102, &v172);
  sub_229543C58(&v172, &v173);
  v106 = sub_22A4DD5EC();
  if (!*(v105 + 16))
  {

    goto LABEL_58;
  }

  v108 = sub_229543DBC(v106, v107);
  v110 = v109;

  if ((v110 & 1) == 0)
  {
LABEL_58:

    goto LABEL_59;
  }

  sub_2295404B0(*(v159 + 56) + 32 * v108, &v172);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87C410, &qword_22A576EE0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_59:
    v111 = 0;
    goto LABEL_60;
  }

  v111 = v171;
LABEL_60:
  v150 = [v164 bulletinBoard];
  __swift_project_boxed_opaque_existential_0(&v173, v175);
  v151 = sub_22A4DE5FC();
  if (v111)
  {
    v152 = sub_22A4DD47C();
  }

  else
  {
    v152 = 0;
  }

  v153 = v164;
  v154 = v156;
  [v150 insertBulletinForMatterAttributeWithAccessory:v164 attributePath:v156 value:v151 fields:v152];

  swift_unknownObjectRelease();
  v157(v169, v160);
  return __swift_destroy_boxed_opaque_existential_0(&v173);
}

void sub_2297EAC58(void *a1, void (*a2)(id), void (*a3)(id), void *a4, uint64_t a5)
{
  v87 = a2;
  v88 = a4;
  v8 = v5;
  swift_getObjectType();
  v89 = sub_22A4DD07C();
  v10 = *(v89 - 8);
  v11 = MEMORY[0x28223BE20](v89);
  v13 = &v81 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v81 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v81 - v17;
  v19 = [v5 accessory];
  if (v19)
  {
    v20 = v19;
    v86 = a5;
    v21 = [v19 home];
    if (v21)
    {
      v22 = v21;
      if (isFeatureMatteriPhoneOnlyPairingControlEnabled())
      {
        if (([v22 hasAnyResident] & 1) == 0)
        {
          sub_2296F8604();
          v60 = v5;
          v61 = a1;
          v62 = sub_22A4DD05C();
          v63 = sub_22A4DDCCC();

          if (os_log_type_enabled(v62, v63))
          {
            v64 = swift_slowAlloc();
            v86 = swift_slowAlloc();
            v96 = v86;
            *v64 = 136315394;
            aBlock = 91;
            v91 = 0xE100000000000000;
            v65 = [v60 logIdentifier];
            LODWORD(v85) = v63;
            v66 = v65;
            v67 = sub_22A4DD5EC();
            v88 = v60;
            v68 = v67;
            v70 = v69;

            MEMORY[0x22AAD08C0](v68, v70);

            MEMORY[0x22AAD08C0](93, 0xE100000000000000);
            v71 = sub_2295A3E30(aBlock, v91, &v96);

            *(v64 + 4) = v71;
            *(v64 + 12) = 2080;
            v72 = [v61 shortDescription];
            v73 = sub_22A4DD5EC();
            v75 = v74;

            v76 = sub_2295A3E30(v73, v75, &v96);

            *(v64 + 14) = v76;
            _os_log_impl(&dword_229538000, v62, v85, "%s No residents in home, handling request locally: %s", v64, 0x16u);
            v77 = v86;
            swift_arrayDestroy();
            MEMORY[0x22AAD4E50](v77, -1, -1);
            MEMORY[0x22AAD4E50](v64, -1, -1);
          }

          (*(v10 + 8))(v18, v89);
          v87(v61);
          goto LABEL_17;
        }

        v87 = a3;
        sub_2296F8604();
        v23 = v5;
        v24 = a1;
        v25 = sub_22A4DD05C();
        v26 = sub_22A4DDCDC();
        v85 = v24;

        v84 = v26;
        if (os_log_type_enabled(v25, v26))
        {
          v27 = swift_slowAlloc();
          v81 = v27;
          v83 = swift_slowAlloc();
          v96 = v83;
          *v27 = 136315394;
          aBlock = 91;
          v91 = 0xE100000000000000;
          v28 = [v23 logIdentifier];
          v82 = v25;
          v29 = v28;
          v30 = sub_22A4DD5EC();
          v32 = v31;

          MEMORY[0x22AAD08C0](v30, v32);

          MEMORY[0x22AAD08C0](93, 0xE100000000000000);
          v33 = sub_2295A3E30(aBlock, v91, &v96);

          v34 = v81;
          *(v81 + 1) = v33;
          *(v34 + 6) = 2080;
          v35 = v34;
          v36 = [v85 shortDescription];
          v37 = sub_22A4DD5EC();
          v39 = v38;

          v40 = sub_2295A3E30(v37, v39, &v96);

          *(v35 + 14) = v40;
          v41 = v82;
          _os_log_impl(&dword_229538000, v82, v84, "%s Resident available in home, routing request to primaryResident: %s", v35, 0x16u);
          v42 = v83;
          swift_arrayDestroy();
          MEMORY[0x22AAD4E50](v42, -1, -1);
          MEMORY[0x22AAD4E50](v35, -1, -1);
        }

        else
        {
        }

        (*(v10 + 8))(v16, v89);
      }

      v78 = swift_allocObject();
      *(v78 + 16) = v8;
      v94 = v88;
      v95 = v78;
      aBlock = MEMORY[0x277D85DD0];
      v91 = 1107296256;
      v92 = sub_229566C20;
      v93 = v86;
      v79 = _Block_copy(&aBlock);
      v80 = v8;

      [v80 routeMessage:a1 localHandler:v79];
      _Block_release(v79);
LABEL_17:

      goto LABEL_18;
    }
  }

  sub_2296F8604();
  v43 = v5;
  v44 = a1;
  v45 = sub_22A4DD05C();
  v46 = sub_22A4DDCEC();

  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    v96 = v48;
    *v47 = 136315394;
    aBlock = 91;
    v91 = 0xE100000000000000;
    v49 = [v43 logIdentifier];
    v50 = sub_22A4DD5EC();
    v52 = v51;

    MEMORY[0x22AAD08C0](v50, v52);

    MEMORY[0x22AAD08C0](93, 0xE100000000000000);
    v53 = sub_2295A3E30(aBlock, v91, &v96);

    *(v47 + 4) = v53;
    *(v47 + 12) = 2080;
    v54 = [v44 shortDescription];
    v55 = sub_22A4DD5EC();
    v57 = v56;

    v58 = sub_2295A3E30(v55, v57, &v96);

    *(v47 + 14) = v58;
    _os_log_impl(&dword_229538000, v45, v46, "%s Unable to find accessory or home to handle: %s", v47, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v48, -1, -1);
    MEMORY[0x22AAD4E50](v47, -1, -1);
  }

  (*(v10 + 8))(v13, v89);
  v59 = [objc_opt_self() hmErrorWithCode_];
  v22 = sub_22A4DB3DC();

  [v44 respondWithError_];
LABEL_18:
}

id sub_2297EB4FC(void *a1, uint64_t a2)
{
  v4 = sub_22A4DD07C();
  v5 = *(v4 - 1);
  MEMORY[0x28223BE20](v4);
  v7 = &v125 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  objc_opt_self();
  v8 = swift_dynamicCastObjCClass();
  if (!v8)
  {
    goto LABEL_9;
  }

  v9 = v8;
  swift_unknownObjectRetain();
  v10 = [v9 accessory];
  if (!v10 || (v11 = v10, v12 = [v10 home], v11, !v12))
  {
    swift_unknownObjectRelease();
LABEL_9:
    sub_2296F8604();
    swift_unknownObjectRetain();
    v24 = a1;
    v25 = sub_22A4DD05C();
    v26 = sub_22A4DDCEC();
    swift_unknownObjectRelease();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v134 = v28;
      *v27 = 136315394;
      v29 = [v24 shortDescription];
      v30 = sub_22A4DD5EC();
      v132 = v4;
      v32 = v31;

      v33 = sub_2295A3E30(v30, v32, &v134);

      *(v27 + 4) = v33;
      *(v27 + 12) = 2080;
      swift_getObjectType();
      v133 = a2;
      swift_unknownObjectRetain();
      v34 = sub_22A4DD64C();
      v36 = sub_2295A3E30(v34, v35, &v134);

      *(v27 + 14) = v36;
      _os_log_impl(&dword_229538000, v25, v26, "Could not find binding for %s, unexpected receiver: %s", v27, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v28, -1, -1);
      MEMORY[0x22AAD4E50](v27, -1, -1);

      (*(v5 + 8))(v7, v132);
    }

    else
    {

      (*(v5 + 8))(v7, v4);
    }

    return 0;
  }

  v132 = a1;
  v13 = [objc_opt_self() defaultSecurePolicy];
  v14 = objc_opt_self();
  v15 = [v14 userMessagePolicyWithHome:v12 userPrivilege:4 remoteAccessRequired:0];
  v16 = [v14 userMessagePolicyWithHome:v12 userPrivilege:4 remoteAccessRequired:1];
  v17 = [objc_opt_self() policyWithEntitlements_];
  v131 = v12;
  v18 = [objc_msgSend(v12 featuresDataSource)];
  swift_unknownObjectRelease();
  if (v18)
  {
    v130 = v9;
    v19 = [v132 name];
    v20 = sub_22A4DD5EC();
    v22 = v21;
    if (v20 == sub_22A4DD5EC() && v22 == v23)
    {

LABEL_14:
      v39 = [v132 name];
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C350, &qword_22A576E40);
      v40 = swift_allocObject();
      *(v40 + 16) = xmmword_22A582080;
      *(v40 + 32) = v13;
      *(v40 + 40) = v15;
      sub_229562F68(0, qword_281401B40, 0x277D0F838);
      v41 = v16;
      v42 = v13;
      v43 = v15;
      v44 = sub_22A4DD81C();

      v45 = HMFCreateMessageBindingWithReceiver();
      swift_unknownObjectRelease();

      return v45;
    }

    v38 = sub_22A4DE60C();

    v9 = v130;
    if (v38)
    {
      goto LABEL_14;
    }
  }

  v46 = [v9 accessory];
  if (!v46)
  {

    swift_unknownObjectRelease();
    return 0;
  }

  v47 = v46;
  v48 = v17;
  objc_opt_self();
  v49 = swift_dynamicCastObjCClass();
  v50 = v131;
  if (!v49)
  {

    swift_unknownObjectRelease();
    return 0;
  }

  if (![v49 isNativeMatter] || (v51 = objc_msgSend(objc_msgSend(v50, sel_featuresDataSource), sel_isRVCEnabled), swift_unknownObjectRelease(), !v51))
  {

LABEL_24:
    swift_unknownObjectRelease();
    return 0;
  }

  v128 = v16;
  v129 = v47;
  v127 = v15;
  v52 = [v132 name];
  v53 = sub_22A4DD5EC();
  v55 = v54;
  if (v53 != sub_22A4DD5EC() || v55 != v56)
  {
    v57 = sub_22A4DE60C();

    if (v57)
    {
      goto LABEL_27;
    }

    v66 = [v132 &selRef_networkProtectionMode];
    v67 = sub_22A4DD5EC();
    v69 = v68;
    if (v67 == sub_22A4DD5EC() && v69 == v70)
    {

LABEL_33:
      v72 = v13;
      v59 = [v132 &selRef_networkProtectionMode];
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C350, &qword_22A576E40);
      v73 = swift_allocObject();
      *(v73 + 16) = xmmword_22A5842A0;
      v74 = v127;
      *(v73 + 32) = v72;
      *(v73 + 40) = v74;
      *(v73 + 48) = v48;
      sub_229562F68(0, qword_281401B40, 0x277D0F838);
      v75 = v72;
      v76 = v74;
      v77 = v48;
      v64 = sub_22A4DD81C();

      v65 = HMFCreateMessageBindingWithReceiver();
      swift_unknownObjectRelease();

LABEL_34:
      goto LABEL_35;
    }

    v71 = sub_22A4DE60C();

    if (v71)
    {
      goto LABEL_33;
    }

    v78 = [v132 &selRef_networkProtectionMode];
    v79 = sub_22A4DD5EC();
    v81 = v80;
    if (v79 == sub_22A4DD5EC() && v81 == v82)
    {

LABEL_41:
      v84 = [v132 &selRef_networkProtectionMode];
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C350, &qword_22A576E40);
      v85 = swift_allocObject();
      *(v85 + 16) = xmmword_22A5842A0;
      *(v85 + 32) = v13;
      v86 = v128;
      *(v85 + 40) = v128;
      *(v85 + 48) = v48;
      sub_229562F68(0, qword_281401B40, 0x277D0F838);
      v87 = v13;
      v88 = v48;
      v89 = v86;
      v64 = sub_22A4DD81C();

      v65 = HMFCreateMessageBindingWithReceiver();
      swift_unknownObjectRelease();

      goto LABEL_36;
    }

    v83 = sub_22A4DE60C();

    if (v83)
    {
      goto LABEL_41;
    }

    v90 = [v132 &selRef_networkProtectionMode];
    v91 = sub_22A4DD5EC();
    v93 = v92;
    v94 = sub_22A4DD5EC();
    v130 = v9;
    v126 = v13;
    if (v91 == v94 && v93 == v95)
    {

LABEL_46:
      v59 = [v132 &selRef_networkProtectionMode];
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C350, &qword_22A576E40);
      v97 = swift_allocObject();
      *(v97 + 16) = xmmword_22A5842A0;
      v98 = v126;
      v99 = v128;
      *(v97 + 32) = v126;
      *(v97 + 40) = v99;
      *(v97 + 48) = v48;
      sub_229562F68(0, qword_281401B40, 0x277D0F838);
      v100 = v98;
      v77 = v48;
      v101 = v99;
      v64 = sub_22A4DD81C();

      v65 = HMFCreateMessageBindingWithReceiver();
      swift_unknownObjectRelease();

LABEL_52:
      goto LABEL_34;
    }

    v96 = sub_22A4DE60C();

    if (v96)
    {
      goto LABEL_46;
    }

    v102 = [v132 &selRef_networkProtectionMode];
    v103 = sub_22A4DD5EC();
    v105 = v104;
    if (v103 == sub_22A4DD5EC() && v105 == v106)
    {
      goto LABEL_49;
    }

    v107 = sub_22A4DE60C();

    if (v107)
    {
      goto LABEL_51;
    }

    v102 = [v132 &selRef_networkProtectionMode];
    v111 = sub_22A4DD5EC();
    v113 = v112;
    if (v111 == sub_22A4DD5EC() && v113 == v114)
    {
LABEL_49:

LABEL_51:
      v59 = [v132 &selRef_networkProtectionMode];
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C350, &qword_22A576E40);
      v108 = swift_allocObject();
      *(v108 + 16) = xmmword_22A5842A0;
      v109 = v126;
      v110 = v128;
      *(v108 + 32) = v126;
      *(v108 + 40) = v110;
      *(v108 + 48) = v48;
      sub_229562F68(0, qword_281401B40, 0x277D0F838);
      v100 = v109;
      v77 = v48;
      v101 = v110;
      v64 = sub_22A4DD81C();

      v65 = HMFCreateMessageBindingWithReceiver();
      swift_unknownObjectRelease();

      goto LABEL_52;
    }

    v115 = sub_22A4DE60C();

    if (v115)
    {
      goto LABEL_51;
    }

    v116 = [v132 &selRef_networkProtectionMode];
    v117 = sub_22A4DD5EC();
    v119 = v118;
    if (v117 == sub_22A4DD5EC() && v119 == v120)
    {

LABEL_60:
      v59 = [v132 &selRef_networkProtectionMode];
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C350, &qword_22A576E40);
      v122 = swift_allocObject();
      *(v122 + 16) = xmmword_22A582080;
      v123 = v126;
      v124 = v127;
      *(v122 + 32) = v126;
      *(v122 + 40) = v124;
      sub_229562F68(0, qword_281401B40, 0x277D0F838);
      v62 = v123;
      v63 = v124;
      v64 = sub_22A4DD81C();

      v65 = HMFCreateMessageBindingWithReceiver();
      swift_unknownObjectRelease();

      goto LABEL_28;
    }

    v121 = sub_22A4DE60C();

    if (v121)
    {
      goto LABEL_60;
    }

    goto LABEL_24;
  }

LABEL_27:
  v58 = v13;
  v59 = [v132 &selRef_networkProtectionMode];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C350, &qword_22A576E40);
  v60 = swift_allocObject();
  *(v60 + 16) = xmmword_22A582080;
  v61 = v127;
  *(v60 + 32) = v58;
  *(v60 + 40) = v61;
  sub_229562F68(0, qword_281401B40, 0x277D0F838);
  v62 = v58;
  v63 = v61;
  v64 = sub_22A4DD81C();

  v65 = HMFCreateMessageBindingWithReceiver();
  swift_unknownObjectRelease();

LABEL_28:
LABEL_35:

LABEL_36:
  return v65;
}

uint64_t sub_2297EC64C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_229569B30;

  return sub_2297E92EC(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t objectdestroy_8Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_2297EC798(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_229586D38;

  return sub_2297E8BC4(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_2297EC884(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2297EC974()
{
  sub_2296792B0(v0 + OBJC_IVAR____TtCOO13HomeKitDaemon16DeviceMediaState16FrameworkAdapter21MediaExperienceVolume_updateStream);

  return swift_deallocClassInstance();
}

uint64_t _s21MediaExperienceVolumeCMa(uint64_t a1)
{
  result = qword_27D881530;
  if (!qword_27D881530)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2297ECA2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_2296791B4(319, a2, a3, a4);
  if (v4 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_2297ECBCC()
{
  v1 = v0;
  if (*(v0 + OBJC_IVAR____TtCOO13HomeKitDaemon6Metric10MediaGroup22PreflightCheckLogEvent_firstImportCompleted) != 1)
  {
    if ((*(v0 + OBJC_IVAR____TtCOO13HomeKitDaemon6Metric10MediaGroup22PreflightCheckLogEvent_hasMediaRouteIdentifier) & 1) == 0)
    {
      if ((*(v0 + OBJC_IVAR____TtCOO13HomeKitDaemon6Metric10MediaGroup22PreflightCheckLogEvent_hasPairingIdentity) & 1) == 0)
      {
        if ((*(v0 + OBJC_IVAR____TtCOO13HomeKitDaemon6Metric10MediaGroup22PreflightCheckLogEvent_hasConnectedEventRouterClient) & 1) == 0)
        {
          if (*(v0 + OBJC_IVAR____TtCOO13HomeKitDaemon6Metric10MediaGroup22PreflightCheckLogEvent_isCloudSignedIn) == 1)
          {
            if (*(v0 + OBJC_IVAR____TtCOO13HomeKitDaemon6Metric10MediaGroup22PreflightCheckLogEvent_hasManatee))
            {
              v2 = 0;
              goto LABEL_17;
            }

            if (*(v0 + OBJC_IVAR____TtCOO13HomeKitDaemon6Metric10MediaGroup22PreflightCheckLogEvent_isIdsReady))
            {
              v2 = 0;
              v3 = 1;
              goto LABEL_26;
            }

            v2 = 0;
            goto LABEL_59;
          }

          if (*(v0 + OBJC_IVAR____TtCOO13HomeKitDaemon6Metric10MediaGroup22PreflightCheckLogEvent_hasManatee))
          {
            v2 = 0;
            goto LABEL_19;
          }

          if (*(v0 + OBJC_IVAR____TtCOO13HomeKitDaemon6Metric10MediaGroup22PreflightCheckLogEvent_isIdsReady))
          {
            v3 = 0;
            v2 = 0;
            goto LABEL_26;
          }

          v3 = 0;
          v2 = 0;
          goto LABEL_37;
        }

        v2 = 0;
        goto LABEL_14;
      }

      v2 = 0;
      goto LABEL_12;
    }

    v2 = 2;
    goto LABEL_6;
  }

  if (*(v0 + OBJC_IVAR____TtCOO13HomeKitDaemon6Metric10MediaGroup22PreflightCheckLogEvent_hasMediaRouteIdentifier))
  {
    v2 = 3;
LABEL_6:
    if (*(v0 + OBJC_IVAR____TtCOO13HomeKitDaemon6Metric10MediaGroup22PreflightCheckLogEvent_hasPairingIdentity) != 1)
    {
LABEL_13:
      if (*(v0 + OBJC_IVAR____TtCOO13HomeKitDaemon6Metric10MediaGroup22PreflightCheckLogEvent_hasConnectedEventRouterClient) != 1)
      {
LABEL_15:
        if (*(v0 + OBJC_IVAR____TtCOO13HomeKitDaemon6Metric10MediaGroup22PreflightCheckLogEvent_isCloudSignedIn) == 1)
        {
          if (*(v0 + OBJC_IVAR____TtCOO13HomeKitDaemon6Metric10MediaGroup22PreflightCheckLogEvent_hasManatee))
          {
LABEL_17:
            v3 = 3;
            goto LABEL_20;
          }

          if (*(v0 + OBJC_IVAR____TtCOO13HomeKitDaemon6Metric10MediaGroup22PreflightCheckLogEvent_isIdsReady))
          {
            v3 = 1;
            goto LABEL_26;
          }

LABEL_59:
          v3 = 1;
          if ((*(v0 + OBJC_IVAR____TtCOO13HomeKitDaemon6Metric10MediaGroup22PreflightCheckLogEvent_isOwnerUser) & 1) == 0)
          {
            goto LABEL_29;
          }

LABEL_28:
          v3 |= 8uLL;
          goto LABEL_29;
        }

        if (*(v0 + OBJC_IVAR____TtCOO13HomeKitDaemon6Metric10MediaGroup22PreflightCheckLogEvent_hasManatee))
        {
LABEL_19:
          v3 = 2;
LABEL_20:
          if (*(v0 + OBJC_IVAR____TtCOO13HomeKitDaemon6Metric10MediaGroup22PreflightCheckLogEvent_isIdsReady) != 1)
          {
LABEL_27:
            if (*(v0 + OBJC_IVAR____TtCOO13HomeKitDaemon6Metric10MediaGroup22PreflightCheckLogEvent_isOwnerUser) != 1)
            {
              goto LABEL_29;
            }

            goto LABEL_28;
          }

LABEL_26:
          v3 |= 4uLL;
          goto LABEL_27;
        }

        if (*(v0 + OBJC_IVAR____TtCOO13HomeKitDaemon6Metric10MediaGroup22PreflightCheckLogEvent_isIdsReady))
        {
          v3 = 0;
          goto LABEL_26;
        }

        v3 = 0;
LABEL_37:
        if ((*(v0 + OBJC_IVAR____TtCOO13HomeKitDaemon6Metric10MediaGroup22PreflightCheckLogEvent_isOwnerUser) & 1) == 0)
        {
          goto LABEL_29;
        }

        goto LABEL_28;
      }

LABEL_14:
      v2 |= 8uLL;
      goto LABEL_15;
    }

LABEL_12:
    v2 |= 4uLL;
    goto LABEL_13;
  }

  if (*(v0 + OBJC_IVAR____TtCOO13HomeKitDaemon6Metric10MediaGroup22PreflightCheckLogEvent_hasPairingIdentity))
  {
    v2 = 1;
    goto LABEL_12;
  }

  if (*(v0 + OBJC_IVAR____TtCOO13HomeKitDaemon6Metric10MediaGroup22PreflightCheckLogEvent_hasConnectedEventRouterClient))
  {
    v2 = 1;
    goto LABEL_14;
  }

  if (*(v0 + OBJC_IVAR____TtCOO13HomeKitDaemon6Metric10MediaGroup22PreflightCheckLogEvent_isCloudSignedIn) == 1)
  {
    if (*(v0 + OBJC_IVAR____TtCOO13HomeKitDaemon6Metric10MediaGroup22PreflightCheckLogEvent_hasManatee))
    {
      v2 = 1;
      goto LABEL_17;
    }

    if (*(v0 + OBJC_IVAR____TtCOO13HomeKitDaemon6Metric10MediaGroup22PreflightCheckLogEvent_isIdsReady))
    {
      v3 = 1;
      v2 = 1;
      goto LABEL_26;
    }

    v17 = *(v0 + OBJC_IVAR____TtCOO13HomeKitDaemon6Metric10MediaGroup22PreflightCheckLogEvent_isOwnerUser);
    v3 = 1;
  }

  else
  {
    if (*(v0 + OBJC_IVAR____TtCOO13HomeKitDaemon6Metric10MediaGroup22PreflightCheckLogEvent_hasManatee))
    {
      v2 = 1;
      goto LABEL_19;
    }

    if (*(v0 + OBJC_IVAR____TtCOO13HomeKitDaemon6Metric10MediaGroup22PreflightCheckLogEvent_isIdsReady))
    {
      v3 = 0;
      v2 = 1;
      goto LABEL_26;
    }

    v3 = 0;
    v17 = *(v0 + OBJC_IVAR____TtCOO13HomeKitDaemon6Metric10MediaGroup22PreflightCheckLogEvent_isOwnerUser);
  }

  v2 = 1;
  if (v17)
  {
    goto LABEL_28;
  }

LABEL_29:
  v4 = *(v0 + OBJC_IVAR____TtCOO13HomeKitDaemon6Metric10MediaGroup22PreflightCheckLogEvent_sessionIdentifier + 8);
  v5 = MEMORY[0x277D84F98];
  if (v4)
  {
    v6 = sub_22A4DD5AC();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_2295AAFCC(v6, 0xD000000000000016, 0x800000022A596ED0, isUniquelyReferenced_nonNull_native);
  }

  v8 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  v9 = swift_isUniquelyReferenced_nonNull_native();
  sub_2295AAFCC(v8, 0xD000000000000011, 0x800000022A5975F0, v9);
  v10 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  v11 = swift_isUniquelyReferenced_nonNull_native();
  sub_2295AAFCC(v10, 0xD000000000000016, 0x800000022A597710, v11);
  v12 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  v13 = swift_isUniquelyReferenced_nonNull_native();
  sub_2295AAFCC(v12, 0xD000000000000014, 0x800000022A597730, v13);
  v14 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  v15 = swift_isUniquelyReferenced_nonNull_native();
  sub_2295AAFCC(v14, 0xD000000000000015, 0x800000022A597750, v15);
  return v5;
}

id sub_2297ED198()
{
  v2.receiver = v0;
  v2.super_class = _s10MediaGroupO22PreflightCheckLogEventCMa();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2297ED430(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  if (sub_22A4DD5EC() == a1 && v4 == a2)
  {

    return 1;
  }

  v6 = sub_22A4DE60C();

  if (v6)
  {
    return 1;
  }

  if (sub_22A4DD5EC() == a1 && v7 == a2)
  {

    return 2;
  }

  else
  {
    v9 = sub_22A4DE60C();

    if (v9)
    {
      return 2;
    }

    else
    {
      return 0;
    }
  }
}

id sub_2297ED524(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, int a6, int a7, int a8, double a9, unsigned __int8 a10, unsigned __int8 a11, unsigned __int8 a12, unsigned __int8 a13, uint64_t a14)
{
  v37 = a8;
  v38 = a13;
  v35 = a7;
  v36 = a12;
  v33 = a6;
  v34 = a11;
  HIDWORD(v32) = a10;
  v20 = sub_22A4DB7DC();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = &v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v21 + 16))(v23, a14, v20);
  v24 = _s10MediaGroupO22PreflightCheckLogEventCMa();
  v25 = objc_allocWithZone(v24);
  v26 = &v25[OBJC_IVAR____TtCOO13HomeKitDaemon6Metric10MediaGroup22PreflightCheckLogEvent_eventName];
  *v26 = 0xD00000000000003BLL;
  v26[1] = 0x800000022A5977A0;
  v27 = &v25[OBJC_IVAR____TtCOO13HomeKitDaemon6Metric10MediaGroup22PreflightCheckLogEvent_sessionIdentifier];
  *v27 = a1;
  v27[1] = a2;
  v28 = &v25[OBJC_IVAR____TtCOO13HomeKitDaemon6Metric10MediaGroup22PreflightCheckLogEvent_accessoryCategory];
  *v28 = a3;
  v28[1] = a4;
  *&v25[OBJC_IVAR____TtCOO13HomeKitDaemon6Metric10MediaGroup22PreflightCheckLogEvent_fetchDuration] = a9;
  v25[OBJC_IVAR____TtCOO13HomeKitDaemon6Metric10MediaGroup22PreflightCheckLogEvent_firstImportCompleted] = a5;
  v25[OBJC_IVAR____TtCOO13HomeKitDaemon6Metric10MediaGroup22PreflightCheckLogEvent_hasMediaRouteIdentifier] = v33;
  v25[OBJC_IVAR____TtCOO13HomeKitDaemon6Metric10MediaGroup22PreflightCheckLogEvent_hasPairingIdentity] = v35;
  v25[OBJC_IVAR____TtCOO13HomeKitDaemon6Metric10MediaGroup22PreflightCheckLogEvent_hasConnectedEventRouterClient] = v37;
  v25[OBJC_IVAR____TtCOO13HomeKitDaemon6Metric10MediaGroup22PreflightCheckLogEvent_isCloudSignedIn] = BYTE4(v32);
  v25[OBJC_IVAR____TtCOO13HomeKitDaemon6Metric10MediaGroup22PreflightCheckLogEvent_hasManatee] = v34;
  v25[OBJC_IVAR____TtCOO13HomeKitDaemon6Metric10MediaGroup22PreflightCheckLogEvent_isIdsReady] = v36;
  v25[OBJC_IVAR____TtCOO13HomeKitDaemon6Metric10MediaGroup22PreflightCheckLogEvent_isOwnerUser] = v38;
  *&v25[OBJC_IVAR____TtCOO13HomeKitDaemon6Metric10MediaGroup22PreflightCheckLogEvent_coreAnalyticsEventOptions] = 2;

  v29 = sub_22A4DB77C();
  v39.receiver = v25;
  v39.super_class = v24;
  v30 = objc_msgSendSuper2(&v39, sel_initWithHomeUUID_, v29);

  (*(v21 + 8))(v23, v20);
  return v30;
}

uint64_t sub_2297ED7B0(uint64_t a1)
{
  v3 = sub_22A4DB7DC();
  v4 = *(v3 - 8);
  v41 = v3;
  v42 = v4;
  MEMORY[0x28223BE20](v3);
  v6 = v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v7 = sub_22A4DE0EC();
  }

  else
  {
    v7 = *(a1 + 16);
  }

  result = MEMORY[0x277D84F90];
  if (v7)
  {
    v49 = MEMORY[0x277D84F90];
    sub_22958345C(0, v7 & ~(v7 >> 63), 0);
    v44 = v49;
    if (v43)
    {
      result = sub_22A4DE08C();
    }

    else
    {
      result = sub_22A4DE04C();
      v9 = *(a1 + 36);
    }

    v46 = result;
    v47 = v9;
    v48 = v43 != 0;
    if ((v7 & 0x8000000000000000) == 0)
    {
      v10 = 0;
      v39 = v7;
      v40 = v42 + 32;
      v11 = a1 & 0xFFFFFFFFFFFFFF8;
      if (a1 < 0)
      {
        v11 = a1;
      }

      v37 = a1 + 56;
      v38 = v11;
      v35[1] = v1;
      v36 = a1 + 64;
      while (v10 < v7)
      {
        if (__OFADD__(v10++, 1))
        {
          goto LABEL_37;
        }

        v14 = v46;
        v15 = v47;
        v16 = v48;
        v17 = a1;
        sub_22962F6AC(v46, v47, v48, a1);
        v19 = v18;
        v20 = [v18 identifier];
        sub_22A4DB79C();

        v21 = v44;
        v49 = v44;
        v23 = *(v44 + 16);
        v22 = *(v44 + 24);
        if (v23 >= v22 >> 1)
        {
          sub_22958345C((v22 > 1), v23 + 1, 1);
          v21 = v49;
        }

        *(v21 + 16) = v23 + 1;
        v24 = (*(v42 + 80) + 32) & ~*(v42 + 80);
        v44 = v21;
        result = (*(v42 + 32))(v21 + v24 + *(v42 + 72) * v23, v6, v41);
        if (v43)
        {
          if (!v16)
          {
            goto LABEL_42;
          }

          a1 = v17;
          if (sub_22A4DE0AC())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v7 = v39;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D881608, &qword_22A5845A8);
          v12 = sub_22A4DDB9C();
          sub_22A4DE15C();
          result = v12(v45, 0);
          if (v10 == v7)
          {
LABEL_34:
            sub_22962F424(v46, v47, v48);
            return v44;
          }
        }

        else
        {
          if (v16)
          {
            goto LABEL_43;
          }

          if ((v14 & 0x8000000000000000) != 0)
          {
            goto LABEL_38;
          }

          a1 = v17;
          v25 = 1 << *(v17 + 32);
          if (v14 >= v25)
          {
            goto LABEL_38;
          }

          v26 = v14 >> 6;
          v27 = *(v37 + 8 * (v14 >> 6));
          if (((v27 >> v14) & 1) == 0)
          {
            goto LABEL_39;
          }

          if (*(v17 + 36) != v15)
          {
            goto LABEL_40;
          }

          v28 = v27 & (-2 << (v14 & 0x3F));
          if (v28)
          {
            v25 = __clz(__rbit64(v28)) | v14 & 0x7FFFFFFFFFFFFFC0;
          }

          else
          {
            v29 = v26 << 6;
            v30 = v26 + 1;
            v31 = (v36 + 8 * v26);
            while (v30 < (v25 + 63) >> 6)
            {
              v33 = *v31++;
              v32 = v33;
              v29 += 64;
              ++v30;
              if (v33)
              {
                result = sub_22962F424(v14, v15, 0);
                v25 = __clz(__rbit64(v32)) + v29;
                goto LABEL_33;
              }
            }

            result = sub_22962F424(v14, v15, 0);
          }

LABEL_33:
          v34 = *(v17 + 36);
          v46 = v25;
          v47 = v34;
          v48 = 0;
          v7 = v39;
          if (v10 == v39)
          {
            goto LABEL_34;
          }
        }
      }

      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
    }

    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
  }

  return result;
}

void sub_2297EDBBC(void *a1, uint64_t a2)
{
  v163 = a2;
  swift_getObjectType();
  v4 = sub_22A4DD07C();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v155 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v155 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v155 - v12;
  v14 = [v2 accessory];
  if (!v14)
  {
    sub_2296F8604();
    v37 = a1;
    v38 = v2;
    v39 = sub_22A4DD05C();
    v40 = sub_22A4DDCEC();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v161 = v5;
      v43 = v42;
      v44 = swift_slowAlloc();
      *&v165 = v44;
      *v41 = 136315394;
      *&v167 = 91;
      *(&v167 + 1) = 0xE100000000000000;
      v45 = [v38 logIdentifier];
      v46 = sub_22A4DD5EC();
      v162 = v4;
      v48 = v47;

      MEMORY[0x22AAD08C0](v46, v48);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v49 = sub_2295A3E30(v167, *(&v167 + 1), &v165);

      *(v41 + 4) = v49;
      *(v41 + 12) = 2112;
      *(v41 + 14) = v37;
      *v43 = v37;
      v50 = v37;
      _os_log_impl(&dword_229538000, v39, v40, "%s No accessory to handle attribute report: %@", v41, 0x16u);
      sub_22953EAE4(v43, &qword_27D87D7D0, &unk_22A578D90);
      MEMORY[0x22AAD4E50](v43, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v44);
      MEMORY[0x22AAD4E50](v44, -1, -1);
      MEMORY[0x22AAD4E50](v41, -1, -1);

      (*(v161 + 8))(v8, v162);
    }

    else
    {

      (*(v5 + 8))(v8, v4);
    }

    return;
  }

  v15 = v14;
  v16 = [v14 home];
  if (v16)
  {
    v17 = v16;
    v161 = v5;
    v162 = v4;
    v160 = v15;
    sub_2296F8604();
    v18 = a1;
    v19 = v2;
    v20 = sub_22A4DD05C();
    v21 = sub_22A4DDCCC();

    v22 = os_log_type_enabled(v20, v21);
    v159 = v19;
    if (v22)
    {
      v157 = v21;
      v158 = v17;
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v156 = swift_slowAlloc();
      *&v165 = v156;
      *v23 = 136316162;
      *&v167 = 91;
      *(&v167 + 1) = 0xE100000000000000;
      v25 = [v19 logIdentifier];
      v26 = sub_22A4DD5EC();
      v28 = v27;

      MEMORY[0x22AAD08C0](v26, v28);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v29 = sub_2295A3E30(v167, *(&v167 + 1), &v165);

      *(v23 + 4) = v29;
      *(v23 + 12) = 2112;
      v30 = [v18 path];
      v31 = [v30 endpoint];

      *(v23 + 14) = v31;
      *v24 = v31;
      *(v23 + 22) = 2112;
      v32 = [v18 path];
      v33 = [v32 cluster];

      *(v23 + 24) = v33;
      v24[1] = v33;
      *(v23 + 32) = 2112;
      v34 = [v18 path];
      v35 = [v34 attribute];

      *(v23 + 34) = v35;
      v24[2] = v35;
      *(v23 + 42) = 2080;
      v36 = v18;
      if ([v18 value])
      {
        sub_22A4DE01C();
        swift_unknownObjectRelease();
      }

      else
      {
        v167 = 0u;
        v168 = 0u;
      }

      v58 = v162;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87DE60, &unk_22A57A960);
      v59 = sub_22A4DD64C();
      v61 = sub_2295A3E30(v59, v60, &v165);

      *(v23 + 44) = v61;
      _os_log_impl(&dword_229538000, v20, v157, "%s Handling Matter attribute report for path=%@/%@/%@ with value=%s", v23, 0x34u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D7D0, &unk_22A578D90);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v24, -1, -1);
      v62 = v156;
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v62, -1, -1);
      MEMORY[0x22AAD4E50](v23, -1, -1);

      (*(v161 + 8))(v13, v58);
      v17 = v158;
      v57 = &selRef_disconnectFromBTLEAccessoryServer_;
    }

    else
    {
      v36 = v18;

      (*(v161 + 8))(v13, v162);
      v57 = 0x1FABA3000;
    }

    v63 = MEMORY[0x277D84F98];
    v169 = MEMORY[0x277D84F98];
    v64 = sub_22A4DD5EC();
    v66 = v65;
    v67 = &selRef_ownerDismissedNaturalLightingOnboarding;
    v68 = v36;
    v69 = [v36 &selRef_parseHMAccessoryFirmwareUpdatePolicyCharacteristics_];
    v70 = [v69 *(v57 + 2768)];

    v71 = sub_229562F68(0, &qword_281401770, 0x277CCABB0);
    *(&v168 + 1) = v71;
    *&v167 = v70;
    sub_229543C5C(&v167, &v165);
    LOBYTE(v70) = swift_isUniquelyReferenced_nonNull_native();
    v164 = v63;
    v72 = __swift_mutable_project_boxed_opaque_existential_0(&v165, *(&v166 + 1));
    MEMORY[0x28223BE20](v72);
    v74 = (&v155 - ((v73 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v75 + 16))(v74);
    sub_2297FED80(*v74, v64, v66, v70, &v164);

    __swift_destroy_boxed_opaque_existential_0(&v165);
    v76 = v164;
    v169 = v164;
    v77 = sub_22A4DD5EC();
    v79 = v78;
    v80 = [v36 &selRef_parseHMAccessoryFirmwareUpdatePolicyCharacteristics_];
    v81 = [v80 cluster];

    *(&v168 + 1) = v71;
    *&v167 = v81;
    sub_229543C5C(&v167, &v165);
    LOBYTE(v80) = swift_isUniquelyReferenced_nonNull_native();
    v164 = v76;
    v82 = __swift_mutable_project_boxed_opaque_existential_0(&v165, *(&v166 + 1));
    MEMORY[0x28223BE20](v82);
    v84 = (&v155 - ((v83 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v85 + 16))(v84);
    sub_2297FED80(*v84, v77, v79, v80, &v164);

    __swift_destroy_boxed_opaque_existential_0(&v165);
    v86 = v164;
    v169 = v164;
    v87 = sub_22A4DD5EC();
    v89 = v88;
    v90 = [v68 &selRef_parseHMAccessoryFirmwareUpdatePolicyCharacteristics_];
    v91 = [v90 attribute];

    *(&v168 + 1) = v71;
    *&v167 = v91;
    sub_229543C5C(&v167, &v165);
    LOBYTE(v71) = swift_isUniquelyReferenced_nonNull_native();
    v164 = v86;
    v92 = __swift_mutable_project_boxed_opaque_existential_0(&v165, *(&v166 + 1));
    MEMORY[0x28223BE20](v92);
    v94 = (&v155 - ((v93 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v95 + 16))(v94);
    sub_2297FED80(*v94, v87, v89, v71, &v164);

    __swift_destroy_boxed_opaque_existential_0(&v165);
    v96 = v164;
    v169 = v164;
    v97 = sub_22A4DD5EC();
    v99 = v98;
    if ([v68 value])
    {
      sub_22A4DE01C();
      swift_unknownObjectRelease();
    }

    else
    {
      v165 = 0u;
      v166 = 0u;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87DE60, &unk_22A57A960);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
    sub_22A4DBA0C();
    sub_22953EAE4(&v165, &unk_27D87DE60, &unk_22A57A960);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v165 = v96;
    v101 = *(&v168 + 1);
    v102 = __swift_mutable_project_boxed_opaque_existential_0(&v167, *(&v168 + 1));
    MEMORY[0x28223BE20](v102);
    v104 = &v155 - ((v103 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v105 + 16))(v104);
    sub_2297FF768(v104, v97, v99, isUniquelyReferenced_nonNull_native, &v165, v101);

    __swift_destroy_boxed_opaque_existential_0(&v167);
    v169 = v165;
    v106 = sub_22A4DD5EC();
    v108 = v107;
    v109 = sub_22A4DD5EC();
    v111 = v163;
    if (*(v163 + 16))
    {
      v112 = sub_229543DBC(v109, v110);
      v114 = v113;

      if (v114)
      {
        sub_2295404B0(*(v111 + 56) + 32 * v112, &v167);
        v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C370, &qword_22A578090);
        if (swift_dynamicCast())
        {
          *(&v168 + 1) = v115;
          *&v167 = v165;
          sub_229543C5C(&v167, &v165);
          v116 = v169;
          v117 = swift_isUniquelyReferenced_nonNull_native();
          v164 = v116;
          v118 = __swift_mutable_project_boxed_opaque_existential_0(&v165, *(&v166 + 1));
          MEMORY[0x28223BE20](v118);
          v120 = &v155 - ((v119 + 15) & 0xFFFFFFFFFFFFFFF0);
          (*(v121 + 16))(v120);
          v122 = v120;
          v111 = v163;
          sub_2297FF768(v122, v106, v108, v117, &v164, v115);

          __swift_destroy_boxed_opaque_existential_0(&v165);
          v67 = &selRef_ownerDismissedNaturalLightingOnboarding;
          v169 = v164;
          goto LABEL_26;
        }
      }
    }

    else
    {
    }

    sub_2297FD02C(v106, v108, sub_229543C58, sub_229897D20, &v167);

    sub_22953EAE4(&v167, &unk_27D87FC20, &unk_22A578810);
LABEL_26:
    v123 = sub_22A4DD5EC();
    if (*(v111 + 16))
    {
      v125 = sub_229543DBC(v123, v124);
      v127 = v126;

      if (v127)
      {
        sub_2295404B0(*(v111 + 56) + 32 * v125, &v167);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C370, &qword_22A578090);
        if (swift_dynamicCast())
        {
          v128 = v165;
          v129 = sub_22A4DD5EC();
          v131 = v130;
          if (v128)
          {
            v132 = v129;
            v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C370, &qword_22A578090);
            *(&v168 + 1) = v133;
            *&v167 = v128;
            sub_229543C5C(&v167, &v165);

            v134 = v169;
            v135 = swift_isUniquelyReferenced_nonNull_native();
            v164 = v134;
            v136 = __swift_mutable_project_boxed_opaque_existential_0(&v165, *(&v166 + 1));
            MEMORY[0x28223BE20](v136);
            v138 = &v155 - ((v137 + 15) & 0xFFFFFFFFFFFFFFF0);
            (*(v139 + 16))(v138);
            sub_2297FF768(v138, v132, v131, v135, &v164, v133);

            __swift_destroy_boxed_opaque_existential_0(&v165);
            v169 = v164;
            v140 = sub_22A4DD5EC();
            if (*(v128 + 16))
            {
              v142 = sub_229543DBC(v140, v141);
              v144 = v143;

              v145 = v160;
              v67 = &selRef_ownerDismissedNaturalLightingOnboarding;
              if (v144)
              {
                sub_2295404B0(*(v128 + 56) + 32 * v142, &v167);
              }

              else
              {

                v167 = 0u;
                v168 = 0u;
              }
            }

            else
            {

              v167 = 0u;
              v168 = 0u;
              v145 = v160;
              v67 = &selRef_ownerDismissedNaturalLightingOnboarding;
            }

LABEL_36:
            v147 = [v17 notificationCenter];
            v148 = v169;
            v149 = v145;
            sub_2296F7AE8(v148);
            v150 = sub_22A4DD47C();

            logAndPostNotificationWithNotificationCenter(v147, @"HMDMatterAttributeChangedNotification", v149, v150);

            v151 = [objc_msgSend(objc_opt_self() featuresDataSource)];
            swift_unknownObjectRelease();
            if (v151)
            {
              v152 = [v68 v67[150]];
              v153 = [objc_opt_self() PathWithMTRPath:v152 accessory:v149];

              if ([objc_opt_self() isBulletinSupportedForMatterPath:v153 accessory:v149])
              {
                v154 = [v17 isCurrentDeviceConfirmedPrimaryResident];

                if (v154)
                {
                  sub_2297EF894(v153, v68, &v167);
                }
              }

              else
              {
              }

              sub_22953EAE4(&v167, &unk_27D87FC20, &unk_22A578810);
            }

            else
            {
              sub_22953EAE4(&v167, &unk_27D87FC20, &unk_22A578810);
            }

            return;
          }

LABEL_35:
          sub_2297FD02C(v129, v131, sub_229543C58, sub_229897D20, &v165);

          sub_22953EAE4(&v165, &unk_27D87FC20, &unk_22A578810);
          v167 = 0u;
          v168 = 0u;
          v145 = v160;
          goto LABEL_36;
        }
      }
    }

    else
    {
    }

    v129 = sub_22A4DD5EC();
    v131 = v146;
    goto LABEL_35;
  }

  sub_2296F8604();
  v51 = v15;
  v52 = sub_22A4DD05C();
  v53 = sub_22A4DDCDC();

  if (os_log_type_enabled(v52, v53))
  {
    v54 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    *v54 = 138412290;
    *(v54 + 4) = v51;
    *v55 = v15;
    v56 = v51;
    _os_log_impl(&dword_229538000, v52, v53, "Home is nil for accessory=%@, (likely just removed), cannot post HMDMatterAttributeChanged notification", v54, 0xCu);
    sub_22953EAE4(v55, &qword_27D87D7D0, &unk_22A578D90);
    MEMORY[0x22AAD4E50](v55, -1, -1);
    MEMORY[0x22AAD4E50](v54, -1, -1);
  }

  else
  {
    v56 = v52;
    v52 = v51;
  }

  (*(v5 + 8))(v11, v4);
}

uint64_t sub_2297EEF40(uint64_t a1, uint64_t a2)
{
  v3[13] = a2;
  v3[14] = v2;
  v3[12] = a1;
  v3[15] = swift_getObjectType();
  v4 = sub_22A4DD07C();
  v3[16] = v4;
  v3[17] = *(v4 - 8);
  v3[18] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70);
  v3[19] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2297EF048, 0, 0);
}

uint64_t sub_2297EF048()
{
  v1 = [*(v0 + 112) accessory];
  if (!v1)
  {
    goto LABEL_16;
  }

  v2 = v1;
  v3 = [v1 home];
  if (!v3)
  {

LABEL_16:
    v38 = *(v0 + 112);
    v39 = *(v0 + 96);
    v40 = swift_task_alloc();
    *(v40 + 16) = v38;
    *(v40 + 24) = v39;
    sub_22A4DD5EC();
    sub_22A4DBCEC();
    sub_22A4DBD1C();

LABEL_18:

    goto LABEL_19;
  }

  v4 = v3;
  v5 = [v2 description];
  v6 = sub_22A4DD5EC();
  v8 = v7;

  v9 = [v4 isCurrentDeviceConfirmedPrimaryResident];
  v10 = *(v0 + 112);
  if ((v9 & 1) == 0)
  {
    v41 = *(v0 + 96);
    v42 = swift_task_alloc();
    v42[2] = v10;
    v42[3] = v6;
    v42[4] = v8;
    v42[5] = v41;
    sub_22A4DD5EC();
    sub_22A4DBCEC();
    sub_22A4DBD1C();

    goto LABEL_18;
  }

  if ((sub_2297F01B8() & 1) == 0)
  {

    goto LABEL_19;
  }

  v11 = *(v0 + 96);
  v12 = sub_22A4DD5EC();
  if (!*(v11 + 16))
  {

    goto LABEL_26;
  }

  v14 = sub_229543DBC(v12, v13);
  v16 = v15;

  if ((v16 & 1) == 0 || (v17 = *(v0 + 96), sub_2295404B0(*(v17 + 56) + 32 * v14, v0 + 16), __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90), sub_229562F68(0, &qword_27D8815E8, 0x277CD5408), (swift_dynamicCast() & 1) == 0))
  {
LABEL_26:
    sub_229562F68(0, &qword_27D8809F0, off_278666248);
    sub_22A4DDC0C();
    sub_22A4DD08C();
    v45 = sub_22A4DD05C();
    v46 = sub_22A4DDCEC();
    v47 = os_log_type_enabled(v45, v46);
    v49 = *(v0 + 136);
    v48 = *(v0 + 144);
    v50 = *(v0 + 128);
    if (v47)
    {
      v51 = swift_slowAlloc();
      *v51 = 0;
      _os_log_impl(&dword_229538000, v45, v46, "Opaque dictionary does not have required keys, not handling event", v51, 2u);
      MEMORY[0x22AAD4E50](v51, -1, -1);
    }

    else
    {
    }

    (*(v49 + 8))(v48, v50);
    goto LABEL_19;
  }

  v18 = *(v0 + 80);
  v19 = sub_22A4DD5EC();
  if (!*(v11 + 16))
  {

LABEL_25:

    goto LABEL_26;
  }

  v21 = sub_229543DBC(v19, v20);
  v23 = v22;

  if ((v23 & 1) == 0)
  {
    goto LABEL_25;
  }

  sub_2295404B0(*(v17 + 56) + 32 * v21, v0 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87C410, &qword_22A576EE0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_25;
  }

  v24 = [objc_opt_self() PathWithMTRPath:v18 accessory:v2];
  v25 = [v24 eventID];
  if (v25)
  {
    v26 = v25;
    if (sub_229768300(v24))
    {
      objc_opt_self();
      v27 = swift_dynamicCastObjCClass();
      if (v27)
      {
        v28 = v27;
        v29 = *(v0 + 152);
        v30 = *(v0 + 112);
        v52 = *(v0 + 120);
        v53 = v29;
        v31 = *(v0 + 96);
        v32 = sub_22A4DD9DC();
        (*(*(v32 - 8) + 56))(v29, 1, 1, v32);
        v33 = swift_allocObject();
        v33[2] = 0;
        v33[3] = 0;
        v33[4] = v28;
        v33[5] = v24;
        v33[6] = v26;
        v33[7] = v31;
        v33[8] = v30;
        v33[9] = v4;
        v33[10] = v52;
        v34 = v2;
        v35 = v24;
        v36 = v26;

        v37 = v30;
        sub_22957F3C0(0, 0, v53, &unk_22A584590, v33);
      }

      else
      {
      }
    }

    else
    {
    }
  }

  else
  {
  }

LABEL_19:

  v43 = *(v0 + 8);

  return v43();
}

id sub_2297EF658(void *a1)
{
  v18[1] = *MEMORY[0x277D85DE8];
  ObjectType = swift_getObjectType();
  v18[0] = 0;
  v4 = [objc_opt_self() futureWithPromise_];
  [v1 setRvcCleaningPayload_];
  v5 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedInt_];
  v6 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedInt_];
  v7 = [v1 accessory];
  v8 = [objc_opt_self() PathWithAttributeID:v5 endpointID:a1 clusterID:v6 accessory:v7];

  v9 = [v1 reportFromAttributePathRead:v8 retryTimeout:1.0];
  v10 = v18[0];
  v11 = swift_allocObject();
  v11[2] = a1;
  v11[3] = v1;
  v11[4] = v10;
  v11[5] = ObjectType;
  v17[4] = sub_2297FFFDC;
  v17[5] = v11;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 1107296256;
  v17[2] = sub_229800B04;
  v17[3] = &block_descriptor_31_0;
  v12 = _Block_copy(v17);
  v13 = v10;
  v14 = a1;
  v15 = v1;

  [v9 getResultWithCompletion_];
  _Block_release(v12);

  return v4;
}

void sub_2297EF894(void *a1, void *a2, void *a3)
{
  v4 = v3;
  v91 = a2;
  v92 = a3;
  ObjectType = swift_getObjectType();
  v6 = sub_22A4DD07C();
  v93 = *(v6 - 8);
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v82 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v82 - v10;
  v12 = sub_22A4DB7DC();
  v94 = *(v12 - 8);
  v95 = v12;
  v13 = *(v94 + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v15 = &v82 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = &v82 - v16;
  v18 = [objc_msgSend(objc_opt_self() featuresDataSource)];
  swift_unknownObjectRelease();
  if (!v18)
  {
    return;
  }

  if (![objc_opt_self() supportsBulletinBoard])
  {
    return;
  }

  v19 = [a1 accessory];
  if (!v19)
  {
    return;
  }

  v90 = v19;
  v20 = [v4 msgDispatcher];
  if (!v20)
  {
    goto LABEL_13;
  }

  v21 = v20;
  v22 = [v90 home];
  if (!v22)
  {

LABEL_13:
    v53 = v90;

    return;
  }

  v23 = v22;
  v89 = v21;
  v24 = [v22 accessoryBulletinNotificationManager];

  if (!v24)
  {

    goto LABEL_13;
  }

  v25 = [v24 devicesToNotifyForMatterPath_];

  sub_229562F68(0, &qword_27D87CEF0, off_278666100);
  sub_2298002FC();
  v26 = sub_22A4DDB6C();

  v27 = [v90 messageTargetUUID];
  sub_22A4DB79C();

  v28 = v26;
  if ((v26 & 0xC000000000000001) != 0)
  {
    if (sub_22A4DE0EC())
    {
LABEL_9:
      sub_2296F8604();
      v29 = v4;
      v30 = a1;

      v31 = sub_22A4DD05C();
      v32 = sub_22A4DDCCC();

      v33 = os_log_type_enabled(v31, v32);
      v88 = v28;
      if (v33)
      {
        v34 = swift_slowAlloc();
        v82 = v34;
        v85 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        v86 = v35;
        *v34 = 136315650;
        v97 = v35;
        aBlock = 91;
        v99 = 0xE100000000000000;
        v36 = [v29 logIdentifier];
        v37 = sub_22A4DD5EC();
        v87 = v29;
        v38 = v37;
        v84 = v32;
        v39 = v30;
        v41 = v40;

        v83 = v31;
        MEMORY[0x22AAD08C0](v38, v41);
        v30 = v39;

        MEMORY[0x22AAD08C0](93, 0xE100000000000000);
        v42 = sub_2295A3E30(aBlock, v99, &v97);

        v43 = v82;
        *(v82 + 1) = v42;
        *(v43 + 6) = 2080;
        sub_2297ED7B0(v88);
        v44 = MEMORY[0x22AAD0A20]();
        v46 = v45;

        v47 = sub_2295A3E30(v44, v46, &v97);
        v29 = v87;

        *(v43 + 14) = v47;
        *(v43 + 11) = 2112;
        *(v43 + 3) = v30;
        v48 = v43;
        v49 = v85;
        *v85 = v30;
        v50 = v30;
        v51 = v83;
        _os_log_impl(&dword_229538000, v83, v84, "%s Devices to notify: %s for path=%@", v48, 0x20u);
        sub_22953EAE4(v49, &qword_27D87D7D0, &unk_22A578D90);
        MEMORY[0x22AAD4E50](v49, -1, -1);
        v52 = v86;
        swift_arrayDestroy();
        MEMORY[0x22AAD4E50](v52, -1, -1);
        MEMORY[0x22AAD4E50](v48, -1, -1);
      }

      else
      {
      }

      (v93)[1](v9, v6);
      HMDMatterAccessoryAdapter.payloadForMatterAttributeMessage(with:report:previousValue:)(v30, v91, v92);
      v93 = v69;
      v71 = v94;
      v70 = v95;
      (*(v94 + 16))(v15, v17, v95);
      v72 = v29;
      v73 = (*(v71 + 80) + 32) & ~*(v71 + 80);
      v74 = (v13 + v73 + 7) & 0xFFFFFFFFFFFFFFF8;
      v75 = swift_allocObject();
      v76 = v88;
      *(v75 + 16) = v72;
      *(v75 + 24) = v76;
      (*(v71 + 32))(v75 + v73, v15, v70);
      v77 = v89;
      *(v75 + v74) = v89;
      *(v75 + ((v74 + 15) & 0xFFFFFFFFFFFFFFF8)) = ObjectType;
      v102 = sub_229800500;
      v103 = v75;
      aBlock = MEMORY[0x277D85DD0];
      v99 = 1107296256;
      v100 = sub_229800B04;
      v101 = &block_descriptor_106_0;
      v78 = _Block_copy(&aBlock);
      v79 = v72;
      v80 = v77;

      v81 = v93;
      [v93 getResultWithCompletion_];

      _Block_release(v78);
      (*(v71 + 8))(v17, v70);
      return;
    }
  }

  else if (*(v26 + 16))
  {
    goto LABEL_9;
  }

  sub_2296F8604();
  v54 = v4;
  v55 = a1;
  v56 = sub_22A4DD05C();
  v57 = sub_22A4DDCCC();

  if (os_log_type_enabled(v56, v57))
  {
    v58 = swift_slowAlloc();
    v92 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    ObjectType = v59;
    *v58 = 136315394;
    v97 = v59;
    aBlock = 91;
    v99 = 0xE100000000000000;
    v60 = [v54 logIdentifier];
    LODWORD(v91) = v57;
    v61 = v60;
    v62 = sub_22A4DD5EC();
    v64 = v63;

    MEMORY[0x22AAD08C0](v62, v64);

    MEMORY[0x22AAD08C0](93, 0xE100000000000000);
    v65 = sub_2295A3E30(aBlock, v99, &v97);

    *(v58 + 4) = v65;
    *(v58 + 12) = 2112;
    *(v58 + 14) = v55;
    v66 = v92;
    *v92 = v55;
    v67 = v55;
    _os_log_impl(&dword_229538000, v56, v91, "%s No devices to notify for path=%@", v58, 0x16u);
    sub_22953EAE4(v66, &qword_27D87D7D0, &unk_22A578D90);
    MEMORY[0x22AAD4E50](v66, -1, -1);
    v68 = ObjectType;
    __swift_destroy_boxed_opaque_existential_0(ObjectType);
    MEMORY[0x22AAD4E50](v68, -1, -1);
    MEMORY[0x22AAD4E50](v58, -1, -1);
  }

  (v93)[1](v11, v6);
  (*(v94 + 8))(v17, v95);
}

uint64_t sub_2297F01B8()
{
  v1 = sub_22A4DD07C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [v0 accessory];
  if (!v5)
  {
    goto LABEL_9;
  }

  v6 = v5;
  v7 = [v5 home];
  if (!v7)
  {
    v8 = v6;
LABEL_8:

    goto LABEL_9;
  }

  v8 = v7;
  if (![v7 isCurrentDeviceConfirmedPrimaryResident])
  {

    goto LABEL_8;
  }

  v9 = [objc_msgSend(v8 featuresDataSource)];
  swift_unknownObjectRelease();

  if (v9)
  {
    return 1;
  }

LABEL_9:
  sub_229562F68(0, &qword_27D8809F0, off_278666248);
  sub_22A4DDC0C();
  sub_22A4DD08C();
  v11 = sub_22A4DD05C();
  v12 = sub_22A4DDCEC();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_229538000, v11, v12, "should not handle nil event report", v13, 2u);
    MEMORY[0x22AAD4E50](v13, -1, -1);
  }

  (*(v2 + 8))(v4, v1);
  return 0;
}

uint64_t sub_2297F03C0(void *a1, void *a2)
{
  sub_22A4DE1FC();
  v4 = [a1 logIdentifier];
  v5 = sub_22A4DD5EC();
  v7 = v6;

  MEMORY[0x22AAD08C0](v5, v7);

  MEMORY[0x22AAD08C0](93, 0xE100000000000000);

  MEMORY[0x22AAD08C0](0xD00000000000002CLL, 0x800000022A5978F0);
  v8 = a2;
  v9 = [v8 description];
  v10 = sub_22A4DD5EC();
  v12 = v11;

  MEMORY[0x22AAD08C0](v10, v12);

  sub_22A4DBD3C();
}

uint64_t sub_2297F050C(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  sub_22A4DE1FC();
  v8 = [a1 logIdentifier];
  v9 = sub_22A4DD5EC();
  v11 = v10;

  MEMORY[0x22AAD08C0](v9, v11);

  MEMORY[0x22AAD08C0](93, 0xE100000000000000);
  MEMORY[0x22AAD08C0](91, 0xE100000000000000);

  MEMORY[0x22AAD08C0](0xD000000000000069, 0x800000022A597810);
  MEMORY[0x22AAD08C0](a2, a3);
  MEMORY[0x22AAD08C0](0x6552746E65766520, 0xED00003D74726F70);
  v12 = a4;
  v13 = [v12 description];
  v14 = sub_22A4DD5EC();
  v16 = v15;

  MEMORY[0x22AAD08C0](v14, v16);

  sub_22A4DBD0C();
}

uint64_t sub_2297F06AC(void *a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  sub_22A4DE1FC();
  v10 = [a1 logIdentifier];
  v11 = sub_22A4DD5EC();
  v13 = v12;

  MEMORY[0x22AAD08C0](v11, v13);

  MEMORY[0x22AAD08C0](93, 0xE100000000000000);
  MEMORY[0x22AAD08C0](91, 0xE100000000000000);

  MEMORY[0x22AAD08C0](0xD00000000000002CLL, 0x800000022A5978C0);
  MEMORY[0x22AAD08C0](a2, a3);
  MEMORY[0x22AAD08C0](0x72657473756C6320, 0xEB000000003D4449);
  v14 = [a4 description];
  v15 = sub_22A4DD5EC();
  v17 = v16;

  MEMORY[0x22AAD08C0](v15, v17);

  MEMORY[0x22AAD08C0](0x6552746E65766520, 0xED00003D74726F70);
  v18 = [a5 description];
  v19 = sub_22A4DD5EC();
  v21 = v20;

  MEMORY[0x22AAD08C0](v19, v21);

  sub_22A4DBD0C();
}

uint64_t sub_2297F08AC(void *a1, uint64_t a2)
{
  sub_22A4DE1FC();
  v3 = [a1 logIdentifier];
  v4 = sub_22A4DD5EC();
  v6 = v5;

  MEMORY[0x22AAD08C0](v4, v6);

  MEMORY[0x22AAD08C0](93, 0xE100000000000000);
  MEMORY[0x22AAD08C0](91, 0xE100000000000000);

  MEMORY[0x22AAD08C0](0xD000000000000030, 0x800000022A597880);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
  v7 = sub_22A4DD4AC();
  MEMORY[0x22AAD08C0](v7);

  sub_22A4DBD3C();
}

uint64_t sub_2297F09FC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_22A4DE1FC();
  v7 = [a1 logIdentifier];
  v8 = sub_22A4DD5EC();
  v10 = v9;

  MEMORY[0x22AAD08C0](v8, v10);

  MEMORY[0x22AAD08C0](93, 0xE100000000000000);
  MEMORY[0x22AAD08C0](91, 0xE100000000000000);

  MEMORY[0x22AAD08C0](0xD000000000000069, 0x800000022A597810);
  MEMORY[0x22AAD08C0](a2, a3);
  MEMORY[0x22AAD08C0](0x6552746E65766520, 0xED00003D74726F70);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
  v11 = sub_22A4DD4AC();
  MEMORY[0x22AAD08C0](v11);

  sub_22A4DBD0C();
}

uint64_t sub_2297F0B94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[93] = v18;
  v8[92] = v17;
  v8[91] = a8;
  v8[90] = a7;
  v8[89] = a6;
  v8[88] = a5;
  v8[87] = a4;
  v9 = sub_22A4DD07C();
  v8[94] = v9;
  v8[95] = *(v9 - 8);
  v8[96] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8811F8, &qword_22A5837A0);
  v8[97] = v10;
  v8[98] = *(v10 - 8);
  v8[99] = swift_task_alloc();
  v11 = sub_22A4DC75C();
  v8[100] = v11;
  v8[101] = *(v11 - 8);
  v8[102] = swift_task_alloc();
  v12 = sub_22A4DC86C();
  v8[103] = v12;
  v8[104] = *(v12 - 8);
  v8[105] = swift_task_alloc();
  v8[106] = swift_task_alloc();
  v13 = sub_22A4DCA0C();
  v8[107] = v13;
  v8[108] = *(v13 - 8);
  v8[109] = swift_task_alloc();
  v14 = sub_22A4DB7DC();
  v8[110] = v14;
  v8[111] = *(v14 - 8);
  v8[112] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2297F0E58, 0, 0);
}

uint64_t sub_2297F0E58()
{
  v93 = v0;
  v1 = *(v0 + 896);
  v2 = *(v0 + 888);
  v3 = *(v0 + 880);
  v91 = *(v0 + 720);
  v89 = *(v0 + 712);
  v4 = *(v0 + 704);
  v5 = *(v0 + 696);
  v6 = sub_22A4DD5EC();
  v8 = v7;
  v9 = [v5 uuid];
  sub_22A4DB79C();

  v10 = sub_22A4DB76C();
  v12 = v11;
  v85 = *(v2 + 8);
  v85(v1, v3);
  *(v0 + 168) = MEMORY[0x277D837D0];
  *(v0 + 144) = v10;
  *(v0 + 152) = v12;
  sub_229543C5C((v0 + 144), (v0 + 176));
  v13 = MEMORY[0x277D84F98];
  LOBYTE(v3) = swift_isUniquelyReferenced_nonNull_native();
  v92 = v13;
  v14 = *(v0 + 200);
  v15 = __swift_mutable_project_boxed_opaque_existential_0(v0 + 176, v14);
  v16 = *(v14 - 8);
  v17 = swift_task_alloc();
  (*(v16 + 16))(v17, v15, v14);
  sub_2297FE940(*v17, v17[1], v6, v8, v3, &v92);

  __swift_destroy_boxed_opaque_existential_0((v0 + 176));

  v18 = v92;
  v86 = sub_22A4DD5EC();
  v88 = v4;
  v20 = v19;
  v21 = v4;
  v22 = [v4 endpointID];
  v23 = sub_229562F68(0, &qword_281401770, 0x277CCABB0);
  *(v0 + 208) = v22;
  *(v0 + 904) = v23;
  *(v0 + 232) = v23;
  sub_229543C5C((v0 + 208), (v0 + 240));
  LOBYTE(v22) = swift_isUniquelyReferenced_nonNull_native();
  v92 = v18;
  v24 = *(v0 + 264);
  v25 = __swift_mutable_project_boxed_opaque_existential_0(v0 + 240, v24);
  v26 = *(v24 - 8);
  v27 = swift_task_alloc();
  (*(v26 + 16))(v27, v25, v24);
  sub_2297FED80(*v27, v86, v20, v22, &v92);

  __swift_destroy_boxed_opaque_existential_0((v0 + 240));

  v28 = v92;
  v87 = sub_22A4DD5EC();
  v30 = v29;
  v31 = [v21 clusterID];
  *(v0 + 296) = v23;
  *(v0 + 272) = v31;
  sub_229543C5C((v0 + 272), (v0 + 304));
  LOBYTE(v27) = swift_isUniquelyReferenced_nonNull_native();
  v92 = v28;
  v32 = *(v0 + 328);
  v33 = __swift_mutable_project_boxed_opaque_existential_0(v0 + 304, v32);
  v34 = *(v32 - 8);
  v35 = swift_task_alloc();
  (*(v34 + 16))(v35, v33, v32);
  sub_2297FED80(*v35, v87, v30, v27, &v92);

  __swift_destroy_boxed_opaque_existential_0((v0 + 304));

  v36 = v92;
  v37 = sub_22A4DD5EC();
  v39 = v38;
  *(v0 + 360) = v23;
  *(v0 + 336) = v89;
  sub_229543C5C((v0 + 336), (v0 + 368));
  v90 = v89;
  LOBYTE(v23) = swift_isUniquelyReferenced_nonNull_native();
  v92 = v36;
  v40 = *(v0 + 392);
  v41 = __swift_mutable_project_boxed_opaque_existential_0(v0 + 368, v40);
  v42 = *(v40 - 8);
  v43 = swift_task_alloc();
  (*(v42 + 16))(v43, v41, v40);
  sub_2297FED80(*v43, v37, v39, v23, &v92);

  __swift_destroy_boxed_opaque_existential_0((v0 + 368));

  v44 = v92;
  *(v0 + 688) = v91;
  v45 = sub_22A4DD5EC();
  v47 = v46;

  sub_2297FD02C(v45, v47, sub_229543C58, sub_229897D20, (v0 + 400));

  sub_22953EAE4(v0 + 400, &unk_27D87FC20, &unk_22A578810);
  v48 = sub_22A4DD5EC();
  v50 = v49;
  v51 = *(v0 + 688);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C370, &qword_22A578090);
  *(v0 + 912) = v52;
  *(v0 + 456) = v52;
  *(v0 + 432) = v51;
  sub_229543C5C((v0 + 432), (v0 + 464));

  LOBYTE(v42) = swift_isUniquelyReferenced_nonNull_native();
  v92 = v44;
  v53 = *(v0 + 488);
  v54 = __swift_mutable_project_boxed_opaque_existential_0(v0 + 464, v53);
  v55 = *(v53 - 8);
  v56 = swift_task_alloc();
  (*(v55 + 16))(v56, v54, v53);
  sub_2297FEB50(*v56, v48, v50, v42, &v92, &unk_27D87C370, &qword_22A578090);

  __swift_destroy_boxed_opaque_existential_0((v0 + 464));

  *(v0 + 920) = v92;
  v57 = [v88 clusterID];
  LOBYTE(v50) = sub_229768668(v90, v57);

  if (v50)
  {
    sub_2296F7AE8(v51);
    v59 = v58;
    *(v0 + 928) = v58;

    v60 = swift_task_alloc();
    *(v0 + 936) = v60;
    *v60 = v0;
    v60[1] = sub_2297F192C;

    return sub_2297689D0(v59);
  }

  v62 = *(v0 + 712);
  v63 = [*(v0 + 704) clusterID];
  v64 = sub_22976869C(v62, v63);

  if (v64)
  {
    v65 = *(v0 + 816);
    v66 = *(v0 + 808);
    v67 = *(v0 + 800);
    v68 = [*(v0 + 712) unsignedIntValue];
    sub_22A4DC73C();
    v69 = sub_22A4DC74C();
    (*(v66 + 8))(v65, v67);
    if (v68 == v69)
    {
      v70 = *(v0 + 896);
      v71 = *(v0 + 880);
      v72 = *(v0 + 736);
      v73 = [v72 uuid];
      sub_22A4DB79C();

      v74 = objc_allocWithZone(type metadata accessor for CleanEnergyAutomationReducedEnergyLogEvent());
      v75 = sub_22A4DB77C();
      v76 = [v74 initWithHomeUUID_];

      v85(v70, v71);
      v77 = [v72 logEventSubmitter];
      if (!v77)
      {
        __break(1u);
        return MEMORY[0x282200938](v77);
      }

      v78 = v77;

      [v78 submitLogEvent_];
      swift_unknownObjectRelease();
    }

    else
    {
    }

    v80 = *(v0 + 792);
    v81 = *(v0 + 784);
    v82 = *(v0 + 776);
    v83 = *(v0 + 736);
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 984;
    *(v0 + 24) = sub_2297F2130;
    swift_continuation_init();
    *(v0 + 136) = v82;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 112));
    sub_22A4DD8DC();
    (*(v81 + 32))(boxed_opaque_existential_1, v80, v82);
    *(v0 + 80) = MEMORY[0x277D85DD0];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_229862C18;
    *(v0 + 104) = &block_descriptor_56_0;
    [v83 isEnergyCurrentlyExpensiveWithCompletion_];
    (*(v81 + 8))(boxed_opaque_existential_1, v82);
    v77 = (v0 + 16);

    return MEMORY[0x282200938](v77);
  }

  v79 = *(v0 + 8);

  return v79();
}

uint64_t sub_2297F192C(uint64_t a1)
{
  *(*v1 + 944) = a1;

  return MEMORY[0x2822009F8](sub_2297F1A4C, 0, 0);
}

uint64_t sub_2297F1A4C()
{
  v25 = v0;
  v1 = *(v0 + 944);
  if (v1)
  {
    v2 = *(v0 + 920);
    v3 = *(v0 + 912);
    v4 = sub_22A4DD5EC();
    v6 = v5;
    *(v0 + 648) = v3;
    *(v0 + 624) = v1;
    sub_229543C5C((v0 + 624), (v0 + 656));
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v2;
    v8 = *(v0 + 680);
    v9 = __swift_mutable_project_boxed_opaque_existential_0(v0 + 656, v8);
    v10 = *(v8 - 8);
    v11 = swift_task_alloc();
    (*(v10 + 16))(v11, v9, v8);
    sub_2297FEB50(*v11, v4, v6, isUniquelyReferenced_nonNull_native, &v24, &unk_27D87C370, &qword_22A578090);

    __swift_destroy_boxed_opaque_existential_0((v0 + 656));

    v12 = v24;
  }

  else
  {
    v12 = *(v0 + 920);
  }

  *(v0 + 952) = v12;
  sub_2296F7AE8(*(v0 + 720));
  sub_22A4DC9FC();
  v13 = *(v0 + 840);
  v14 = *(v0 + 832);
  v15 = *(v0 + 824);
  sub_22A4DC9BC();
  (*(v14 + 104))(v13, *MEMORY[0x277D17278], v15);
  sub_2297FFF94(&qword_27D8815F0, MEMORY[0x277D17298], MEMORY[0x277D172A0]);
  v16 = sub_22A4DD58C();
  v17 = *(v14 + 8);
  *(v0 + 960) = v17;
  *(v0 + 968) = (v14 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v17(v13, v15);
  if (v16)
  {
    v18 = swift_task_alloc();
    *(v0 + 976) = v18;
    *v18 = v0;
    v18[1] = sub_2297F1EF4;

    return sub_22976AEB8();
  }

  else
  {
    v17(*(v0 + 848), *(v0 + 824));
    v20 = *(v0 + 872);
    v21 = *(v0 + 864);
    v22 = *(v0 + 856);
    sub_2297F251C(*(v0 + 704), *(v0 + 952));

    (*(v21 + 8))(v20, v22);

    v23 = *(v0 + 8);

    return v23();
  }
}

uint64_t sub_2297F1EF4(char a1)
{
  *(*v1 + 985) = a1;

  return MEMORY[0x2822009F8](sub_2297F1FF4, 0, 0);
}

uint64_t sub_2297F1FF4()
{
  v1 = *(v0 + 985);
  (*(v0 + 960))(*(v0 + 848), *(v0 + 824));
  v2 = *(v0 + 872);
  v3 = *(v0 + 864);
  v4 = *(v0 + 856);
  if (v1 == 1)
  {
    sub_2297F251C(*(v0 + 704), *(v0 + 952));

    (*(v3 + 8))(v2, v4);
  }

  else
  {
    (*(v3 + 8))(*(v0 + 872), *(v0 + 856));
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_2297F2130()
{

  return MEMORY[0x2822009F8](sub_2297F2210, 0, 0);
}

uint64_t sub_2297F2210()
{
  v26 = v0;
  v1 = *(v0 + 920);
  v2 = *(v0 + 912);
  v3 = *(v0 + 904);
  v24 = *(v0 + 704);
  v4 = *(v0 + 984);
  v5 = sub_22A4DD5EC();
  v7 = v6;
  v8 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  *(v0 + 520) = v3;
  *(v0 + 496) = v8;
  sub_229543C5C((v0 + 496), (v0 + 528));
  v9 = MEMORY[0x277D84F98];
  LOBYTE(v3) = swift_isUniquelyReferenced_nonNull_native();
  v25 = v9;
  v10 = *(v0 + 552);
  v11 = __swift_mutable_project_boxed_opaque_existential_0(v0 + 528, v10);
  v12 = *(v10 - 8);
  v13 = swift_task_alloc();
  (*(v12 + 16))(v13, v11, v10);
  sub_2297FED80(*v13, v5, v7, v3, &v25);

  __swift_destroy_boxed_opaque_existential_0((v0 + 528));

  v14 = v25;
  v15 = sub_22A4DD5EC();
  v17 = v16;
  *(v0 + 584) = v2;
  *(v0 + 560) = v14;
  sub_229543C5C((v0 + 560), (v0 + 592));
  LOBYTE(v10) = swift_isUniquelyReferenced_nonNull_native();
  v25 = v1;
  v18 = *(v0 + 616);
  v19 = __swift_mutable_project_boxed_opaque_existential_0(v0 + 592, v18);
  v20 = *(v18 - 8);
  v21 = swift_task_alloc();
  (*(v20 + 16))(v21, v19, v18);
  sub_2297FEB50(*v21, v15, v17, v10, &v25, &unk_27D87C370, &qword_22A578090);

  __swift_destroy_boxed_opaque_existential_0((v0 + 592));

  sub_2297F251C(v24, v25);

  v22 = *(v0 + 8);

  return v22();
}

void sub_2297F251C(void *a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v7 = sub_22A4DB7DC();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [a1 accessory];
  if (!v11)
  {
    return;
  }

  v25 = v11;
  v12 = [v11 home];
  if (!v12)
  {
    goto LABEL_11;
  }

  v24 = v12;
  v13 = [v3 msgDispatcher];
  if (!v13)
  {

    v22 = v24;
LABEL_12:

    return;
  }

  v14 = v13;
  v15 = [v24 accessoryBulletinNotificationManager];
  if (!v15)
  {

LABEL_11:
    v22 = v25;
    goto LABEL_12;
  }

  v16 = v15;
  v17 = [v15 devicesToNotifyForMatterPath_];

  sub_229562F68(0, &qword_27D87CEF0, off_278666100);
  sub_2298002FC();
  v18 = sub_22A4DDB6C();

  v19 = [a1 eventID];
  if (v19)
  {

    v20 = [v25 messageTargetUUID];
    sub_22A4DB79C();

    if ((v18 & 0xC000000000000001) != 0)
    {
      v21 = sub_22A4DE0EC();
      if (v21)
      {
LABEL_8:
        MEMORY[0x28223BE20](v21);
        *(&v23 - 6) = v10;
        *(&v23 - 5) = a2;
        *(&v23 - 4) = v3;
        *(&v23 - 3) = v14;
        *(&v23 - 2) = ObjectType;
        sub_229839B44(sub_229800364, (&v23 - 8), v18);

LABEL_20:
        (*(v8 + 8))(v10, v7);
        return;
      }
    }

    else
    {
      v21 = *(v18 + 16);
      if (v21)
      {
        goto LABEL_8;
      }
    }

    goto LABEL_20;
  }
}

void HMDMatterAccessoryAdapter.payloadForMatterAttributeMessage(with:report:previousValue:)(void *a1, void *a2, _DWORD *a3)
{
  v4 = v3;
  v420 = a3;
  v419 = a2;
  v433[1] = *MEMORY[0x277D85DE8];
  ObjectType = swift_getObjectType();
  v418 = sub_22A4DB7DC();
  v417 = *(v418 - 1);
  MEMORY[0x28223BE20](v418);
  v416 = &v405 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v421 = sub_22A4DD07C();
  v422 = *(v421 - 8);
  v8 = MEMORY[0x28223BE20](v421);
  v10 = &v405 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v415 = &v405 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v409 = &v405 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v408 = (&v405 - v16);
  v17 = MEMORY[0x28223BE20](v15);
  v414 = &v405 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v405 - v20;
  v22 = MEMORY[0x28223BE20](v19);
  v411 = &v405 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v410 = &v405 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v413 = &v405 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v412 = &v405 - v29;
  MEMORY[0x28223BE20](v28);
  v31 = &v405 - v30;
  v433[0] = 0;
  v423 = [objc_opt_self() futureWithPromise_];
  v32 = [a1 clusterID];
  v33 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedInt_];
  v34 = [v32 isEqualToNumber_];

  if (!v34)
  {
    sub_2296F8604();
    v41 = v4;
    v42 = a1;
    v43 = sub_22A4DD05C();
    v44 = sub_22A4DDCCC();

    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      *&v431 = v47;
      *v45 = 136315394;
      *&aBlock = 91;
      *(&aBlock + 1) = 0xE100000000000000;
      v48 = [v41 logIdentifier];
      v49 = sub_22A4DD5EC();
      v51 = v50;

      MEMORY[0x22AAD08C0](v49, v51);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v52 = sub_2295A3E30(aBlock, *(&aBlock + 1), &v431);

      *(v45 + 4) = v52;
      *(v45 + 12) = 2112;
      v53 = [v42 clusterID];
      *(v45 + 14) = v53;
      *v46 = v53;
      _os_log_impl(&dword_229538000, v43, v44, "%s Cannot build Native Matter cluster attribute message payload: We do not support bulletin for clusterID=%@", v45, 0x16u);
      sub_22953EAE4(v46, &qword_27D87D7D0, &unk_22A578D90);
      MEMORY[0x22AAD4E50](v46, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v47);
      MEMORY[0x22AAD4E50](v47, -1, -1);
      MEMORY[0x22AAD4E50](v45, -1, -1);
    }

    (*(v422 + 8))(v10, v421);
    v54 = v433[0];
    if (v433[0])
    {
      goto LABEL_10;
    }

    goto LABEL_186;
  }

  v406 = ObjectType;
  v407 = v4;
  v35 = &selRef_applicationProxyForIdentifier_;
  v36 = [a1 attributeID];
  if (!v36)
  {
    __break(1u);
LABEL_186:
    __break(1u);
    goto LABEL_187;
  }

  v37 = v36;
  v38 = a1;
  v39 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedInt_];
  v40 = [v37 isEqualToNumber_];

  if (v40)
  {
    if (*(v420 + 3))
    {
      if ([v419 value])
      {
        sub_22A4DE01C();
        swift_unknownObjectRelease();
        goto LABEL_30;
      }

LABEL_29:
      v431 = 0u;
      v432 = 0u;
LABEL_30:
      aBlock = v431;
      v426 = v432;
      if (*(&v432 + 1))
      {
        sub_229562F68(0, &qword_281401770, 0x277CCABB0);
        if (swift_dynamicCast())
        {
          v85 = v430[0];
        }

        else
        {
          v85 = 0;
        }
      }

      else
      {
        sub_22953EAE4(&aBlock, &unk_27D87DE60, &unk_22A57A960);
        v85 = 0;
      }

      v430[0] = MEMORY[0x277D84F98];
      v86 = sub_22A4DD5EC();
      v88 = v87;
      v89 = [v38 accessory];
      if (v89)
      {
        v90 = v89;
        v91 = [v89 uuid];

        v92 = v416;
        sub_22A4DB79C();

        v93 = sub_22A4DB76C();
        v95 = v94;
        (*(v417 + 8))(v92, v418);
        *(&v426 + 1) = MEMORY[0x277D837D0];
        *&aBlock = v93;
        *(&aBlock + 1) = v95;
        sub_229543C5C(&aBlock, &v431);
        v96 = v430[0];
        LOBYTE(v95) = swift_isUniquelyReferenced_nonNull_native();
        v429 = v96;
        v97 = __swift_mutable_project_boxed_opaque_existential_0(&v431, *(&v432 + 1));
        MEMORY[0x28223BE20](v97);
        v99 = (&v405 - ((v98 + 15) & 0xFFFFFFFFFFFFFFF0));
        (*(v100 + 16))(v99);
        sub_2297FE940(*v99, v99[1], v86, v88, v95, &v429);
        __swift_destroy_boxed_opaque_existential_0(&v431);

        v101 = v429;
        v430[0] = v429;
        v102 = sub_22A4DD5EC();
        v104 = v103;
        v105 = [v38 endpointID];
        v106 = sub_229562F68(0, &qword_281401770, 0x277CCABB0);
        *(&v426 + 1) = v106;
        *&aBlock = v105;
        sub_229543C5C(&aBlock, &v431);
        LOBYTE(v105) = swift_isUniquelyReferenced_nonNull_native();
        v429 = v101;
        v107 = __swift_mutable_project_boxed_opaque_existential_0(&v431, *(&v432 + 1));
        MEMORY[0x28223BE20](v107);
        v109 = (&v405 - ((v108 + 15) & 0xFFFFFFFFFFFFFFF0));
        (*(v110 + 16))(v109);
        sub_2297FED80(*v109, v102, v104, v105, &v429);
        __swift_destroy_boxed_opaque_existential_0(&v431);

        v111 = v429;
        v430[0] = v429;
        v112 = sub_22A4DD5EC();
        v114 = v113;
        v115 = [v38 clusterID];
        *(&v426 + 1) = v106;
        *&aBlock = v115;
        sub_229543C5C(&aBlock, &v431);
        LOBYTE(v105) = swift_isUniquelyReferenced_nonNull_native();
        v429 = v111;
        v116 = __swift_mutable_project_boxed_opaque_existential_0(&v431, *(&v432 + 1));
        MEMORY[0x28223BE20](v116);
        v118 = (&v405 - ((v117 + 15) & 0xFFFFFFFFFFFFFFF0));
        (*(v119 + 16))(v118);
        sub_2297FED80(*v118, v112, v114, v105, &v429);
        __swift_destroy_boxed_opaque_existential_0(&v431);

        v120 = v429;
        v430[0] = v429;
        v121 = sub_22A4DD5EC();
        v123 = v122;
        v124 = [v38 attributeID];
        if (v124)
        {
          *(&v426 + 1) = v106;
          *&aBlock = v124;
          sub_229543C5C(&aBlock, &v431);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v429 = v120;
          v126 = __swift_mutable_project_boxed_opaque_existential_0(&v431, *(&v432 + 1));
          MEMORY[0x28223BE20](v126);
          v128 = &v405 - ((v127 + 15) & 0xFFFFFFFFFFFFFFF0);
          (*(v129 + 16))(v128);
          sub_2297FF768(v128, v121, v123, isUniquelyReferenced_nonNull_native, &v429, v106);
          __swift_destroy_boxed_opaque_existential_0(&v431);

          v430[0] = v429;
        }

        else
        {
          sub_2297FD02C(v121, v123, sub_229543C58, sub_229897D20, &aBlock);

          sub_22953EAE4(&aBlock, &unk_27D87FC20, &unk_22A578810);
        }

        v130 = sub_22A4DD5EC();
        v132 = v131;
        if ([v419 value])
        {
          sub_22A4DE01C();
          swift_unknownObjectRelease();
        }

        else
        {
          v431 = 0u;
          v432 = 0u;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87DE60, &unk_22A57A960);
        v419 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
        sub_22A4DBA0C();
        sub_22953EAE4(&v431, &unk_27D87DE60, &unk_22A57A960);
        sub_229543C5C(&aBlock, &v431);
        v133 = v430[0];
        v134 = swift_isUniquelyReferenced_nonNull_native();
        v429 = v133;
        v135 = *(&v432 + 1);
        v136 = __swift_mutable_project_boxed_opaque_existential_0(&v431, *(&v432 + 1));
        MEMORY[0x28223BE20](v136);
        v138 = &v405 - ((v137 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v139 + 16))(v138);
        sub_2297FF768(v138, v130, v132, v134, &v429, v135);
        __swift_destroy_boxed_opaque_existential_0(&v431);

        v140 = v429;
        v141 = sub_22A4DE74C();
        v142 = v141;
        if (v85)
        {
          v35 = v85;
          v143 = sub_22A4DDEDC();

          if (v143)
          {
            v144 = v420;
            sub_229564F88(v420, &aBlock, &unk_27D87FC20, &unk_22A578810);
            v145 = v407;
            if (*(&v426 + 1))
            {
              if (swift_dynamicCast())
              {
                v146 = v431;
                v147 = sub_22A4DE74C();
                if (v146)
                {
                  v148 = v147;
                  v149 = sub_22A4DDEDC();

                  if (v149)
                  {
                    v150 = v412;
                    sub_2296F8604();
                    sub_229564F88(v144, &aBlock, &unk_27D87FC20, &unk_22A578810);
                    v151 = v145;
                    v152 = sub_22A4DD05C();
                    v153 = sub_22A4DDCCC();

                    if (!os_log_type_enabled(v152, v153))
                    {

                      sub_22953EAE4(&aBlock, &unk_27D87FC20, &unk_22A578810);
                      (*(v422 + 8))(v150, v421);
                      goto LABEL_151;
                    }

                    v420 = v106;
                    v154 = swift_slowAlloc();
                    v155 = swift_slowAlloc();
                    v156 = swift_slowAlloc();
                    v429 = v156;
                    *v154 = 136315394;
                    *&v431 = 91;
                    *(&v431 + 1) = 0xE100000000000000;
                    v157 = [v151 logIdentifier];
                    v158 = sub_22A4DD5EC();
                    v160 = v159;

                    MEMORY[0x22AAD08C0](v158, v160);

                    MEMORY[0x22AAD08C0](93, 0xE100000000000000);
                    v161 = sub_2295A3E30(v431, *(&v431 + 1), &v429);

                    *(v154 + 4) = v161;
                    *(v154 + 12) = 2112;
                    sub_229564F88(&aBlock, &v431, &unk_27D87FC20, &unk_22A578810);
                    if (*(&v432 + 1))
                    {
                      if (swift_dynamicCast())
                      {
                        v162 = v424;
                        v163 = v424;
                        v164 = v422;
                        v165 = v421;
LABEL_150:
                        *(v154 + 14) = v162;
                        *v155 = v163;
                        sub_22953EAE4(&aBlock, &unk_27D87FC20, &unk_22A578810);
                        _os_log_impl(&dword_229538000, v152, v153, "%s Cannot build RVC operational state attribute message payload: Value is running but previousValue=%@ we do not support showing bulletin for", v154, 0x16u);
                        sub_22953EAE4(v155, &qword_27D87D7D0, &unk_22A578D90);
                        MEMORY[0x22AAD4E50](v155, -1, -1);
                        __swift_destroy_boxed_opaque_existential_0(v156);
                        MEMORY[0x22AAD4E50](v156, -1, -1);
                        MEMORY[0x22AAD4E50](v154, -1, -1);

                        (*(v164 + 8))(v412, v165);
LABEL_151:
                        if (v433[0])
                        {
                          v299 = v433[0];
                          goto LABEL_131;
                        }

                        goto LABEL_190;
                      }
                    }

                    else
                    {
                      sub_22953EAE4(&v431, &unk_27D87FC20, &unk_22A578810);
                    }

                    v164 = v422;
                    v165 = v421;
                    v162 = 0;
                    v163 = 0;
                    goto LABEL_150;
                  }

                  goto LABEL_77;
                }

LABEL_76:

LABEL_77:
                v219 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedInt_];
                v220 = [v38 endpointID];
                v221 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedInt_];
                v222 = [v145 accessory];
                v179 = [objc_opt_self() PathWithAttributeID:v219 endpointID:v220 clusterID:v221 accessory:v222];

                v180 = [v145 reportFromAttributePathRead:v179 retryTimeout:1.0];
                v223 = v433[0];
                v224 = swift_allocObject();
                v224[2] = v38;
                v224[3] = v145;
                v224[4] = v223;
                v224[5] = v140;
                v224[6] = v406;
                v427 = sub_2297FFF14;
                v428 = v224;
                *&aBlock = MEMORY[0x277D85DD0];
                *(&aBlock + 1) = 1107296256;
                *&v426 = sub_229800B04;
                *(&v426 + 1) = &block_descriptor_24;
                v185 = _Block_copy(&aBlock);
                v225 = v223;
                v226 = v38;
LABEL_78:
                v227 = v145;
                goto LABEL_79;
              }
            }

            else
            {
              sub_22953EAE4(&aBlock, &unk_27D87FC20, &unk_22A578810);
            }

            v147 = sub_22A4DE74C();
            goto LABEL_76;
          }

          v167 = sub_22A4DE74C();
          v35 = v35;
          v168 = sub_22A4DDEDC();

          v145 = v407;
          v57 = v420;
          if (v168)
          {
            v418 = v140;
            sub_229564F88(v420, &aBlock, &unk_27D87FC20, &unk_22A578810);
            if (*(&v426 + 1))
            {
              v169 = swift_dynamicCast();
              v170 = v413;
              if (v169)
              {
                v171 = v431;
                v172 = sub_22A4DE74C();
                if (v171)
                {
                  v173 = v172;
                  v174 = sub_22A4DDEDC();

                  if (v174)
                  {
                    v175 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedInt_];
                    v176 = [v38 endpointID];
                    v177 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedInt_];
                    v178 = [v145 accessory];
                    v179 = [objc_opt_self() PathWithAttributeID:v175 endpointID:v176 clusterID:v177 accessory:v178];

                    v180 = [v145 reportFromAttributePathRead:v179 retryTimeout:1.0];
                    v181 = v433[0];
                    v182 = swift_allocObject();
                    v182[2] = v38;
                    v182[3] = v145;
                    v183 = v418;
                    v182[4] = v181;
                    v182[5] = v183;
                    v182[6] = v406;
                    v427 = sub_2297FFED8;
                    v428 = v182;
                    *&aBlock = MEMORY[0x277D85DD0];
                    *(&aBlock + 1) = 1107296256;
                    v184 = &block_descriptor_18;
LABEL_59:
                    *&v426 = sub_229800B04;
                    *(&v426 + 1) = v184;
                    v185 = _Block_copy(&aBlock);
                    v186 = v181;
                    v187 = v145;
                    v188 = v38;
LABEL_79:

                    [v180 getResultWithCompletion_];

                    _Block_release(v185);
                    goto LABEL_11;
                  }

LABEL_100:
                  sub_229564F88(v57, &aBlock, &unk_27D87FC20, &unk_22A578810);
                  if (*(&v426 + 1))
                  {
                    if (swift_dynamicCast())
                    {
                      v254 = v431;
                      v255 = sub_22A4DE74C();
                      if (v254)
                      {
                        v256 = v255;
                        v257 = sub_22A4DDEDC();

                        if (v257)
                        {
                          if (!v433[0])
                          {
LABEL_191:
                            __break(1u);
LABEL_192:
                            __break(1u);
LABEL_193:
                            __break(1u);
                            goto LABEL_194;
                          }

                          v258 = v433[0];
                          sub_2296F77EC(v418);

                          v259 = objc_allocWithZone(MEMORY[0x277CBEAC0]);
                          v260 = sub_22A4DD47C();

                          v235 = [v259 initWithDictionary_];

                          [v258 fulfillWithValue_];
                          goto LABEL_106;
                        }

LABEL_110:
                        sub_2296F8604();
                        sub_229564F88(v57, &aBlock, &unk_27D87FC20, &unk_22A578810);
                        v261 = v145;
                        v262 = sub_22A4DD05C();
                        v263 = sub_22A4DDCCC();

                        if (!os_log_type_enabled(v262, v263))
                        {

                          sub_22953EAE4(&aBlock, &unk_27D87FC20, &unk_22A578810);
                          (*(v422 + 8))(v170, v421);
                          goto LABEL_129;
                        }

                        v420 = v106;
                        v264 = swift_slowAlloc();
                        v265 = swift_slowAlloc();
                        v266 = swift_slowAlloc();
                        v429 = v266;
                        *v264 = 136315394;
                        *&v431 = 91;
                        *(&v431 + 1) = 0xE100000000000000;
                        v267 = [v261 logIdentifier];
                        v268 = sub_22A4DD5EC();
                        v270 = v269;

                        MEMORY[0x22AAD08C0](v268, v270);

                        MEMORY[0x22AAD08C0](93, 0xE100000000000000);
                        v271 = sub_2295A3E30(v431, *(&v431 + 1), &v429);

                        *(v264 + 4) = v271;
                        *(v264 + 12) = 2112;
                        sub_229564F88(&aBlock, &v431, &unk_27D87FC20, &unk_22A578810);
                        if (*(&v432 + 1))
                        {
                          if (swift_dynamicCast())
                          {
                            v272 = v424;
                            v273 = v424;
                            v274 = v422;
                            v275 = v421;
LABEL_128:
                            *(v264 + 14) = v272;
                            *v265 = v273;
                            sub_22953EAE4(&aBlock, &unk_27D87FC20, &unk_22A578810);
                            _os_log_impl(&dword_229538000, v262, v263, "%s Cannot build RVC operational state attribute message payload: Value is paused but previousValue=%@ we do not support showing bulletin for", v264, 0x16u);
                            sub_22953EAE4(v265, &qword_27D87D7D0, &unk_22A578D90);
                            MEMORY[0x22AAD4E50](v265, -1, -1);
                            __swift_destroy_boxed_opaque_existential_0(v266);
                            MEMORY[0x22AAD4E50](v266, -1, -1);
                            MEMORY[0x22AAD4E50](v264, -1, -1);

                            (*(v274 + 8))(v413, v275);
LABEL_129:
                            v298 = v433[0];
                            if (v433[0])
                            {
LABEL_130:
                              v299 = v298;
LABEL_131:

                              [v299 fulfillWithNoValue];

                              goto LABEL_11;
                            }

LABEL_189:
                            __break(1u);
LABEL_190:
                            __break(1u);
                            goto LABEL_191;
                          }
                        }

                        else
                        {
                          sub_22953EAE4(&v431, &unk_27D87FC20, &unk_22A578810);
                        }

                        v274 = v422;
                        v275 = v421;
                        v272 = 0;
                        v273 = 0;
                        goto LABEL_128;
                      }

LABEL_109:

                      goto LABEL_110;
                    }
                  }

                  else
                  {
                    sub_22953EAE4(&aBlock, &unk_27D87FC20, &unk_22A578810);
                  }

                  v255 = sub_22A4DE74C();
                  goto LABEL_109;
                }

LABEL_99:

                goto LABEL_100;
              }

LABEL_98:
              v172 = sub_22A4DE74C();
              goto LABEL_99;
            }

LABEL_97:
            sub_22953EAE4(&aBlock, &unk_27D87FC20, &unk_22A578810);
            v170 = v413;
            goto LABEL_98;
          }

          v198 = sub_22A4DE74C();
          v35 = v35;
          v199 = sub_22A4DDEDC();

          if (v199)
          {
            sub_229564F88(v57, &aBlock, &unk_27D87FC20, &unk_22A578810);
            v418 = v140;
            if (*(&v426 + 1))
            {
              if (swift_dynamicCast())
              {
                v200 = v431;
                v201 = sub_22A4DE74C();
                if (v200)
                {
                  v202 = v201;
                  v203 = sub_22A4DDEDC();

                  if (v203)
                  {
                    v204 = v410;
                    sub_2296F8604();
                    sub_229564F88(v420, &aBlock, &unk_27D87FC20, &unk_22A578810);
                    v205 = v145;
                    v206 = sub_22A4DD05C();
                    v207 = sub_22A4DDCCC();

                    if (os_log_type_enabled(v206, v207))
                    {
                      v420 = v106;
                      v204 = swift_slowAlloc();
                      v208 = swift_slowAlloc();
                      v209 = swift_slowAlloc();
                      v429 = v209;
                      *v204 = 136315394;
                      *&v431 = 91;
                      *(&v431 + 1) = 0xE100000000000000;
                      v210 = [v205 logIdentifier];
                      v211 = sub_22A4DD5EC();
                      v213 = v212;

                      MEMORY[0x22AAD08C0](v211, v213);

                      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
                      v214 = sub_2295A3E30(v431, *(&v431 + 1), &v429);

                      *(v204 + 4) = v214;
                      *(v204 + 12) = 2112;
                      sub_229564F88(&aBlock, &v431, &unk_27D87FC20, &unk_22A578810);
                      if (*(&v432 + 1))
                      {
                        if (swift_dynamicCast())
                        {
                          v215 = v424;
                          v216 = v424;
                          v217 = v422;
                          v218 = v421;
LABEL_173:
                          *(v204 + 14) = v215;
                          *v208 = v216;
                          sub_22953EAE4(&aBlock, &unk_27D87FC20, &unk_22A578810);
                          _os_log_impl(&dword_229538000, v206, v207, "%s Cannot build RVC operational state attribute message payload: Value is error but previousValue=%@ we do not support showing bulletin for", v204, 0x16u);
                          sub_22953EAE4(v208, &qword_27D87D7D0, &unk_22A578D90);
                          MEMORY[0x22AAD4E50](v208, -1, -1);
                          __swift_destroy_boxed_opaque_existential_0(v209);
                          MEMORY[0x22AAD4E50](v209, -1, -1);
                          MEMORY[0x22AAD4E50](v204, -1, -1);

                          (*(v217 + 8))(v410, v218);
                          goto LABEL_174;
                        }
                      }

                      else
                      {
                        sub_22953EAE4(&v431, &unk_27D87FC20, &unk_22A578810);
                      }

                      v217 = v422;
                      v218 = v421;
                      v215 = 0;
                      v216 = 0;
                      goto LABEL_173;
                    }

LABEL_158:

                    sub_22953EAE4(&aBlock, &unk_27D87FC20, &unk_22A578810);
                    (*(v422 + 8))(v204, v421);
LABEL_174:
                    v298 = v433[0];
                    if (v433[0])
                    {
                      goto LABEL_130;
                    }

                    __break(1u);
                    goto LABEL_176;
                  }

LABEL_125:
                  v290 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedInt_];
                  v291 = [v38 endpointID];
                  v292 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedInt_];
                  v293 = [v145 accessory];
                  v179 = [objc_opt_self() PathWithAttributeID:v290 endpointID:v291 clusterID:v292 accessory:v293];

                  v180 = [v145 reportFromAttributePathRead:v179 retryTimeout:1.0];
                  v294 = v433[0];
                  sub_229564F88(v420, &v431, &unk_27D87FC20, &unk_22A578810);
                  v295 = swift_allocObject();
                  v296 = v432;
                  *(v295 + 40) = v431;
                  *(v295 + 16) = v145;
                  *(v295 + 24) = v294;
                  *(v295 + 32) = v418;
                  *(v295 + 56) = v296;
                  *(v295 + 72) = v406;
                  v427 = sub_2297FFEC4;
                  v428 = v295;
                  *&aBlock = MEMORY[0x277D85DD0];
                  *(&aBlock + 1) = 1107296256;
                  *&v426 = sub_229800B04;
                  *(&v426 + 1) = &block_descriptor_12;
                  v185 = _Block_copy(&aBlock);
                  v297 = v294;
                  goto LABEL_78;
                }

LABEL_124:

                goto LABEL_125;
              }
            }

            else
            {
              sub_22953EAE4(&aBlock, &unk_27D87FC20, &unk_22A578810);
            }

            v201 = sub_22A4DE74C();
            goto LABEL_124;
          }

          v228 = sub_22A4DE74C();
          v229 = v35;
          v230 = sub_22A4DDEDC();

          if (v230)
          {
            v231 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedInt_];
            v232 = [v38 endpointID];
            v233 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedInt_];
            v234 = [v145 accessory];
            v235 = [objc_opt_self() PathWithAttributeID:v231 endpointID:v232 clusterID:v233 accessory:v234];

            v35 = [v145 reportFromAttributePathRead:v235 retryTimeout:1.0];
            v236 = v433[0];
            v237 = swift_allocObject();
            v237[2] = v38;
            v237[3] = v145;
            v237[4] = v236;
            v237[5] = v140;
            v237[6] = v406;
            v427 = sub_2297FFE88;
            v428 = v237;
            *&aBlock = MEMORY[0x277D85DD0];
            *(&aBlock + 1) = 1107296256;
            *&v426 = sub_229800B04;
            *(&v426 + 1) = &block_descriptor_6_1;
            v238 = _Block_copy(&aBlock);
            v239 = v236;
            v240 = v145;
            v241 = v38;

            [v35 getResultWithCompletion_];

            _Block_release(v238);
LABEL_106:

            goto LABEL_11;
          }

          v204 = sub_22A4DE74C();
          v35 = v229;
          v276 = sub_22A4DDEDC();

          if ((v276 & 1) == 0)
          {
            v204 = sub_22A4DE74C();
            v277 = v35;
            v278 = sub_22A4DDEDC();

            if ((v278 & 1) == 0)
            {

              goto LABEL_11;
            }
          }

          v418 = v140;
          sub_229564F88(v57, &aBlock, &unk_27D87FC20, &unk_22A578810);
          if (*(&v426 + 1))
          {
            v279 = swift_dynamicCast();
            v280 = v411;
            if (v279)
            {
              v281 = v431;
              v282 = sub_22A4DE74C();
              if (v281)
              {
                v204 = v282;
                v283 = sub_22A4DDEDC();

                if (v283)
                {
                  v284 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedInt_];
                  v285 = [v38 endpointID];
                  v286 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedInt_];
                  v287 = [v145 accessory];
                  v179 = [objc_opt_self() PathWithAttributeID:v284 endpointID:v285 clusterID:v286 accessory:v287];

                  v180 = [v145 reportFromAttributePathRead:v179 retryTimeout:1.0];
                  v181 = v433[0];
                  v288 = swift_allocObject();
                  v288[2] = v38;
                  v288[3] = v145;
                  v289 = v418;
                  v288[4] = v181;
                  v288[5] = v289;
                  v288[6] = v406;
                  v427 = sub_2297FFE4C;
                  v428 = v288;
                  *&aBlock = MEMORY[0x277D85DD0];
                  *(&aBlock + 1) = 1107296256;
                  v184 = &block_descriptor_41;
                  goto LABEL_59;
                }

LABEL_142:
                sub_2296F8604();
                sub_229564F88(v57, &aBlock, &unk_27D87FC20, &unk_22A578810);
                v300 = v145;
                v206 = sub_22A4DD05C();
                v301 = sub_22A4DDCCC();

                if (!os_log_type_enabled(v206, v301))
                {

                  sub_22953EAE4(&aBlock, &unk_27D87FC20, &unk_22A578810);
                  (*(v422 + 8))(v280, v421);
LABEL_156:
                  v298 = v433[0];
                  if (v433[0])
                  {
                    goto LABEL_130;
                  }

                  __break(1u);
                  goto LABEL_158;
                }

                v420 = v106;
                v204 = swift_slowAlloc();
                v302 = swift_slowAlloc();
                v303 = swift_slowAlloc();
                v429 = v303;
                *v204 = 136315394;
                *&v431 = 91;
                *(&v431 + 1) = 0xE100000000000000;
                v304 = [v300 logIdentifier];
                v305 = sub_22A4DD5EC();
                v307 = v306;

                MEMORY[0x22AAD08C0](v305, v307);

                MEMORY[0x22AAD08C0](93, 0xE100000000000000);
                v308 = sub_2295A3E30(v431, *(&v431 + 1), &v429);

                *(v204 + 4) = v308;
                *(v204 + 12) = 2112;
                sub_229564F88(&aBlock, &v431, &unk_27D87FC20, &unk_22A578810);
                if (*(&v432 + 1))
                {
                  if (swift_dynamicCast())
                  {
                    v309 = v424;
                    v310 = v424;
                    v311 = v422;
                    v312 = v421;
LABEL_155:
                    *(v204 + 14) = v309;
                    *v302 = v310;
                    sub_22953EAE4(&aBlock, &unk_27D87FC20, &unk_22A578810);
                    _os_log_impl(&dword_229538000, v206, v301, "%s Cannot build RVC operational state attribute message payload: Value is charging or docked but previousValue=%@ we do not support showing bulletin for", v204, 0x16u);
                    sub_22953EAE4(v302, &qword_27D87D7D0, &unk_22A578D90);
                    MEMORY[0x22AAD4E50](v302, -1, -1);
                    __swift_destroy_boxed_opaque_existential_0(v303);
                    MEMORY[0x22AAD4E50](v303, -1, -1);
                    MEMORY[0x22AAD4E50](v204, -1, -1);

                    (*(v311 + 8))(v411, v312);
                    goto LABEL_156;
                  }
                }

                else
                {
                  sub_22953EAE4(&v431, &unk_27D87FC20, &unk_22A578810);
                }

                v311 = v422;
                v312 = v421;
                v309 = 0;
                v310 = 0;
                goto LABEL_155;
              }

LABEL_141:

              goto LABEL_142;
            }
          }

          else
          {
            sub_22953EAE4(&aBlock, &unk_27D87FC20, &unk_22A578810);
            v280 = v411;
          }

          v282 = sub_22A4DE74C();
          goto LABEL_141;
        }

        v166 = sub_22A4DE74C();

LABEL_11:
        return;
      }

LABEL_188:
      __break(1u);
      goto LABEL_189;
    }

LABEL_25:
    sub_2296F8604();
    v76 = v407;
    v77 = sub_22A4DD05C();
    v78 = sub_22A4DDCCC();

    if (os_log_type_enabled(v77, v78))
    {
      v79 = swift_slowAlloc();
      v80 = swift_slowAlloc();
      *&v431 = v80;
      *v79 = 136315138;
      *&aBlock = 91;
      *(&aBlock + 1) = 0xE100000000000000;
      v81 = [v76 logIdentifier];
      v82 = sub_22A4DD5EC();
      v38 = v83;

      MEMORY[0x22AAD08C0](v82, v38);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v84 = sub_2295A3E30(aBlock, *(&aBlock + 1), &v431);

      *(v79 + 4) = v84;
      _os_log_impl(&dword_229538000, v77, v78, "%s Cannot build matter attribute message payload for operational state: previous value is nil", v79, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v80);
      MEMORY[0x22AAD4E50](v80, -1, -1);
      MEMORY[0x22AAD4E50](v79, -1, -1);
    }

    (*(v422 + 8))(v31, v421);
    v54 = v433[0];
    if (!v433[0])
    {
      __break(1u);
      goto LABEL_29;
    }

LABEL_10:
    [v54 fulfillWithNoValue];
    goto LABEL_11;
  }

  v55 = [a1 attributeID];
  if (!v55)
  {
LABEL_187:
    __break(1u);
    goto LABEL_188;
  }

  v56 = v55;
  v57 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedInt_];
  v58 = [v56 isEqualToNumber_];

  if (!v58)
  {
    v64 = v415;
    sub_2296F8604();
    v65 = v407;
    v66 = a1;
    v67 = sub_22A4DD05C();
    v68 = sub_22A4DDCCC();

    if (os_log_type_enabled(v67, v68))
    {
      v69 = swift_slowAlloc();
      v70 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      *&v431 = v38;
      *v69 = 136315394;
      *&aBlock = 91;
      *(&aBlock + 1) = 0xE100000000000000;
      v71 = [v65 logIdentifier];
      v72 = sub_22A4DD5EC();
      v31 = v73;

      MEMORY[0x22AAD08C0](v72, v31);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v74 = sub_2295A3E30(aBlock, *(&aBlock + 1), &v431);

      *(v69 + 4) = v74;
      *(v69 + 12) = 2112;
      v75 = [v66 attributeID];
      *(v69 + 14) = v75;
      *v70 = v75;
      _os_log_impl(&dword_229538000, v67, v68, "%s Cannot build RVC cluster attribute message payload: We do not support bulletin for attributeID=%@", v69, 0x16u);
      sub_22953EAE4(v70, &qword_27D87D7D0, &unk_22A578D90);
      MEMORY[0x22AAD4E50](v70, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v38);
      MEMORY[0x22AAD4E50](v38, -1, -1);
      MEMORY[0x22AAD4E50](v69, -1, -1);
    }

    (*(v422 + 8))(v64, v421);
    v54 = v433[0];
    if (v433[0])
    {
      goto LABEL_10;
    }

    __break(1u);
    goto LABEL_25;
  }

  if (!*(v420 + 3))
  {
    sub_2296F8604();
    v189 = v407;
    v190 = sub_22A4DD05C();
    v57 = sub_22A4DDCCC();

    if (os_log_type_enabled(v190, v57))
    {
      v191 = swift_slowAlloc();
      v192 = swift_slowAlloc();
      *&v431 = v192;
      *v191 = 136315138;
      *&aBlock = 91;
      *(&aBlock + 1) = 0xE100000000000000;
      v193 = [v189 logIdentifier];
      v194 = sub_22A4DD5EC();
      v196 = v195;

      MEMORY[0x22AAD08C0](v194, v196);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v197 = sub_2295A3E30(aBlock, *(&aBlock + 1), &v431);

      *(v191 + 4) = v197;
      _os_log_impl(&dword_229538000, v190, v57, "%s Cannot build matter attribute message payload for operational error: previous value is nil", v191, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v192);
      MEMORY[0x22AAD4E50](v192, -1, -1);
      MEMORY[0x22AAD4E50](v191, -1, -1);
    }

    (*(v422 + 8))(v21, v421);
    v54 = v433[0];
    if (v433[0])
    {
      goto LABEL_10;
    }

    __break(1u);
    goto LABEL_64;
  }

  sub_229564F88(v420, v430, &unk_27D87FC20, &unk_22A578810);
  if (!v430[3])
  {
LABEL_64:
    sub_22953EAE4(v430, &unk_27D87FC20, &unk_22A578810);
    goto LABEL_89;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87DED0, &qword_22A57A940);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_89:
    v431 = 0u;
    v432 = 0u;
LABEL_90:
    sub_22953EAE4(&v431, &unk_27D87DE60, &unk_22A57A960);
    goto LABEL_91;
  }

  if (!v429[2])
  {

    goto LABEL_89;
  }

  v59 = v429[4];

  v60 = sub_22A4DD5EC();
  if (*(v59 + 16) && (v62 = sub_229543DBC(v60, v61), (v63 & 1) != 0))
  {
    sub_2295404B0(*(v59 + 56) + 32 * v62, &v431);
  }

  else
  {
    v431 = 0u;
    v432 = 0u;
  }

  if (!*(&v432 + 1))
  {
    goto LABEL_90;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87C410, &qword_22A576EE0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_91:
    aBlock = 0u;
    v426 = 0u;
LABEL_92:
    sub_22953EAE4(&aBlock, &unk_27D87DE60, &unk_22A57A960);
    goto LABEL_93;
  }

  v242 = v430[0];
  v243 = sub_22A4DD5EC();
  if (v242[2] && (v245 = sub_229543DBC(v243, v244), (v246 & 1) != 0))
  {
    sub_2295404B0(v242[7] + 32 * v245, &aBlock);
  }

  else
  {
    aBlock = 0u;
    v426 = 0u;
  }

  if (!*(&v426 + 1))
  {
    goto LABEL_92;
  }

  if ((swift_dynamicCast() & 1) == 0 || !v431)
  {
LABEL_93:
    v145 = v414;
    sub_2296F8604();
    v106 = v407;
    v247 = sub_22A4DD05C();
    v248 = sub_22A4DDCCC();

    if (os_log_type_enabled(v247, v248))
    {
      v57 = swift_slowAlloc();
      v249 = swift_slowAlloc();
      *&v431 = v249;
      *v57 = 136315138;
      *&aBlock = 91;
      *(&aBlock + 1) = 0xE100000000000000;
      v250 = [v106 logIdentifier];
      v251 = sub_22A4DD5EC();
      v253 = v252;

      MEMORY[0x22AAD08C0](v251, v253);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v106 = sub_2295A3E30(aBlock, *(&aBlock + 1), &v431);

      *(v57 + 1) = v106;
      _os_log_impl(&dword_229538000, v247, v248, "%s Cannot build RVC operational error attribute message payload: previousValue=nil (error), or previousValue=0 (we handle this case with operational state attribute change)", v57, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v249);
      MEMORY[0x22AAD4E50](v249, -1, -1);
      MEMORY[0x22AAD4E50](v57, -1, -1);
    }

    (*(v422 + 8))(v145, v421);
    v54 = v433[0];
    if (!v433[0])
    {
      __break(1u);
      goto LABEL_97;
    }

    goto LABEL_10;
  }

  if ([v419 value])
  {
    sub_22A4DE01C();
    swift_unknownObjectRelease();
  }

  else
  {
    v431 = 0u;
    v432 = 0u;
  }

  aBlock = v431;
  v426 = v432;
  if (!*(&v432 + 1))
  {
    sub_22953EAE4(&aBlock, &unk_27D87DE60, &unk_22A57A960);
LABEL_167:
    v330 = v409;
    sub_2296F8604();
    v331 = v407;
    v332 = sub_22A4DD05C();
    v333 = sub_22A4DDCEC();

    if (os_log_type_enabled(v332, v333))
    {
      v334 = swift_slowAlloc();
      v335 = swift_slowAlloc();
      *&v431 = v335;
      *v334 = 136315138;
      *&aBlock = 91;
      *(&aBlock + 1) = 0xE100000000000000;
      v336 = [v331 logIdentifier];
      v337 = sub_22A4DD5EC();
      v339 = v338;

      MEMORY[0x22AAD08C0](v337, v339);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v340 = sub_2295A3E30(aBlock, *(&aBlock + 1), &v431);

      *(v334 + 4) = v340;
      _os_log_impl(&dword_229538000, v332, v333, "%s report.value is not a MTRRVCOperationalStateClusterErrorStateStruct", v334, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v335);
      MEMORY[0x22AAD4E50](v335, -1, -1);
      MEMORY[0x22AAD4E50](v334, -1, -1);
    }

    (*(v422 + 8))(v330, v421);
    v341 = v433[0];
    if (v433[0])
    {
      type metadata accessor for HMError(0);
      *&v431 = 3;
      v342 = v341;
      sub_22956AD8C(MEMORY[0x277D84F90]);
      sub_2297FFF94(&qword_27D87D7C0, type metadata accessor for HMError, &unk_22A576D30);
      sub_22A4DB3CC();
      v343 = aBlock;
      v344 = sub_22A4DB3DC();

      [v342 rejectWithError_];
      goto LABEL_11;
    }

    goto LABEL_192;
  }

  sub_229562F68(0, &qword_27D8815A8, 0x277CD54A8);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_167;
  }

  v313 = v430[0];
  v314 = [v430[0] errorStateID];
  v315 = [v314 integerValue];

  if (v315 < 64 || (v316 = [v313 errorStateID], v317 = objc_msgSend(v316, sel_integerValue), v316, v317 >= 72))
  {
    v35 = v408;
    sub_2296F8604();
    v318 = v313;
    v319 = v407;
    v206 = v318;
    v204 = sub_22A4DD05C();
    v320 = sub_22A4DDCCC();

    if (os_log_type_enabled(v204, v320))
    {
      v321 = swift_slowAlloc();
      v322 = swift_slowAlloc();
      *&v431 = v322;
      *v321 = 136315394;
      *&aBlock = 91;
      *(&aBlock + 1) = 0xE100000000000000;
      v323 = [v319 logIdentifier];
      v324 = sub_22A4DD5EC();
      v326 = v325;

      MEMORY[0x22AAD08C0](v324, v326);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v327 = sub_2295A3E30(aBlock, *(&aBlock + 1), &v431);

      *(v321 + 4) = v327;
      *(v321 + 12) = 2048;
      v328 = [v206 &selRef___handleRemovedRemoteAccount_ + 2];
      v329 = [v328 integerValue];

      *(v321 + 14) = v329;
      _os_log_impl(&dword_229538000, v204, v320, "%s Cannot build RVC operational error attribute message payload: value=%ld which we do not support for bulletin", v321, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v322);
      MEMORY[0x22AAD4E50](v322, -1, -1);
      MEMORY[0x22AAD4E50](v321, -1, -1);

      goto LABEL_177;
    }

LABEL_176:

LABEL_177:
    (*(v422 + 8))(v35, v421);
    if (v433[0])
    {
      v345 = v433[0];
      [v345 fulfillWithNoValue];

      goto LABEL_11;
    }

    goto LABEL_193;
  }

  v430[0] = MEMORY[0x277D84F98];
  v346 = sub_22A4DD5EC();
  v348 = v347;
  v349 = [a1 accessory];
  if (!v349)
  {
LABEL_194:
    __break(1u);
    goto LABEL_195;
  }

  v350 = v349;
  v351 = [v349 uuid];

  v352 = v416;
  sub_22A4DB79C();

  v353 = sub_22A4DB76C();
  v355 = v354;
  (*(v417 + 8))(v352, v418);
  *(&v426 + 1) = MEMORY[0x277D837D0];
  *&aBlock = v353;
  *(&aBlock + 1) = v355;
  sub_229543C5C(&aBlock, &v431);
  v356 = v430[0];
  LOBYTE(v355) = swift_isUniquelyReferenced_nonNull_native();
  v429 = v356;
  v357 = __swift_mutable_project_boxed_opaque_existential_0(&v431, *(&v432 + 1));
  MEMORY[0x28223BE20](v357);
  v359 = (&v405 - ((v358 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v360 + 16))(v359);
  sub_2297FE940(*v359, v359[1], v346, v348, v355, &v429);
  __swift_destroy_boxed_opaque_existential_0(&v431);

  v361 = v429;
  v430[0] = v429;
  v362 = sub_22A4DD5EC();
  v364 = v363;
  v365 = [a1 endpointID];
  v366 = sub_229562F68(0, &qword_281401770, 0x277CCABB0);
  *(&v426 + 1) = v366;
  *&aBlock = v365;
  sub_229543C5C(&aBlock, &v431);
  LOBYTE(v365) = swift_isUniquelyReferenced_nonNull_native();
  v429 = v361;
  v367 = __swift_mutable_project_boxed_opaque_existential_0(&v431, *(&v432 + 1));
  MEMORY[0x28223BE20](v367);
  v369 = (&v405 - ((v368 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v370 + 16))(v369);
  sub_2297FED80(*v369, v362, v364, v365, &v429);
  __swift_destroy_boxed_opaque_existential_0(&v431);

  v371 = v429;
  v430[0] = v429;
  v372 = sub_22A4DD5EC();
  v374 = v373;
  v375 = [a1 clusterID];
  *(&v426 + 1) = v366;
  *&aBlock = v375;
  sub_229543C5C(&aBlock, &v431);
  LOBYTE(v365) = swift_isUniquelyReferenced_nonNull_native();
  v429 = v371;
  v376 = __swift_mutable_project_boxed_opaque_existential_0(&v431, *(&v432 + 1));
  MEMORY[0x28223BE20](v376);
  v378 = (&v405 - ((v377 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v379 + 16))(v378);
  sub_2297FED80(*v378, v372, v374, v365, &v429);
  __swift_destroy_boxed_opaque_existential_0(&v431);

  v380 = v429;
  v430[0] = v429;
  v381 = sub_22A4DD5EC();
  v383 = v382;
  v384 = [a1 attributeID];
  if (v384)
  {
    *(&v426 + 1) = v366;
    *&aBlock = v384;
    sub_229543C5C(&aBlock, &v431);
    v385 = swift_isUniquelyReferenced_nonNull_native();
    v429 = v380;
    v386 = __swift_mutable_project_boxed_opaque_existential_0(&v431, *(&v432 + 1));
    MEMORY[0x28223BE20](v386);
    v388 = &v405 - ((v387 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v389 + 16))(v388);
    sub_2297FF768(v388, v381, v383, v385, &v429, v366);
    __swift_destroy_boxed_opaque_existential_0(&v431);

    v390 = v429;
    v430[0] = v429;
  }

  else
  {
    sub_2297FD02C(v381, v383, sub_229543C58, sub_229897D20, &aBlock);

    sub_22953EAE4(&aBlock, &unk_27D87FC20, &unk_22A578810);
    v390 = v430[0];
  }

  v391 = sub_22A4DD5EC();
  v393 = v392;
  v394 = [v313 errorStateID];
  *(&v426 + 1) = v366;
  *&aBlock = v394;
  sub_229543C5C(&aBlock, &v431);
  v395 = swift_isUniquelyReferenced_nonNull_native();
  v429 = v390;
  v396 = __swift_mutable_project_boxed_opaque_existential_0(&v431, *(&v432 + 1));
  MEMORY[0x28223BE20](v396);
  v398 = (&v405 - ((v397 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v399 + 16))(v398);
  sub_2297FED80(*v398, v391, v393, v395, &v429);
  __swift_destroy_boxed_opaque_existential_0(&v431);

  if (v433[0])
  {
    v400 = v429;
    v401 = v433[0];
    sub_2296F77EC(v400);

    v402 = objc_allocWithZone(MEMORY[0x277CBEAC0]);
    v403 = sub_22A4DD47C();

    v404 = [v402 initWithDictionary_];

    [v401 fulfillWithValue_];
    goto LABEL_11;
  }

LABEL_195:
  __break(1u);
}