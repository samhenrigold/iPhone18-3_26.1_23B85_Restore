void GenerativePartnerServicePSSettingsManager.init(parentController:settings:)()
{
  sub_1BE4FFB64();
  v139 = v1;
  v144 = v2;
  v3 = sub_1BE54AF6C();
  v4 = sub_1BE4C7570(v3);
  MEMORY[0x1EEE9AC00](v4, v5);
  sub_1BE4C757C();
  v148 = v7 - v6;
  v8 = sub_1BE54AD8C();
  sub_1BE4C7500();
  v147 = v9;
  MEMORY[0x1EEE9AC00](v10, v11);
  sub_1BE4C757C();
  v14 = v13 - v12;
  v15 = sub_1BE54C6BC();
  v16 = sub_1BE4C7570(v15);
  MEMORY[0x1EEE9AC00](v16, v17);
  sub_1BE4C757C();
  v20 = v19 - v18;
  v140 = sub_1BE54ADAC();
  sub_1BE4C7500();
  v145 = v21;
  MEMORY[0x1EEE9AC00](v22, v23);
  sub_1BE4C757C();
  v26 = (v25 - v24);
  v27 = sub_1BE4BF11C(&qword_1EBDACCD8, &qword_1BE550500);
  sub_1BE4C7570(v27);
  sub_1BE4FFC80();
  MEMORY[0x1EEE9AC00](v28, v29);
  v31 = &v130 - v30;
  v32 = &v0[OBJC_IVAR____TtC26GenerativePartnerServiceUI41GenerativePartnerServicePSSettingsManager_previousPartnerID];
  *v32 = 0;
  *(v32 + 1) = 0;
  *(v32 + 2) = 0;
  v33 = &v0[OBJC_IVAR____TtC26GenerativePartnerServiceUI41GenerativePartnerServicePSSettingsManager_previousAvailability];
  v34 = sub_1BE54B12C();
  sub_1BE4C63F8(v31, 1, 1, v34);
  *v33 = 0;
  v35 = *(sub_1BE4BF11C(&qword_1EBDACCF0, &qword_1BE550508) + 28);
  v36 = sub_1BE4BF11C(&qword_1EBDACCF8, &qword_1BE550510);
  sub_1BE4C7570(v36);
  bzero(v33 + v35, *(v37 + 64));
  sub_1BE50CD10(v31, v33 + v35);
  v38 = OBJC_IVAR____TtC26GenerativePartnerServiceUI41GenerativePartnerServicePSSettingsManager_observer;
  *&v0[v38] = [objc_allocWithZone(type metadata accessor for SettingsObserver()) init];
  swift_unknownObjectWeakInit();
  v39 = OBJC_IVAR____TtC26GenerativePartnerServiceUI41GenerativePartnerServicePSSettingsManager_groupSpecifier;
  v40 = objc_opt_self();
  v41 = v20;
  sub_1BE54C65C();
  if (qword_1EBDABA88 != -1)
  {
    swift_once();
  }

  v42 = sub_1BE4C52BC(v8, qword_1EBDB0C08);
  v44 = v147 + 16;
  v43 = *(v147 + 16);
  v142 = v42;
  v143 = v8;
  v141 = v43;
  (v43)(v14);
  sub_1BE54AF2C();
  sub_1BE511AA4();
  sub_1BE54ADBC();
  v45 = sub_1BE54C72C();
  *&v0[v39] = sub_1BE510ACC(v45, v46, v40);
  *&v0[OBJC_IVAR____TtC26GenerativePartnerServiceUI41GenerativePartnerServicePSSettingsManager_setupButtonSpecifier] = 0;
  *&v0[OBJC_IVAR____TtC26GenerativePartnerServiceUI41GenerativePartnerServicePSSettingsManager_setupRequestsToggleSpecifier] = 0;
  *&v0[OBJC_IVAR____TtC26GenerativePartnerServiceUI41GenerativePartnerServicePSSettingsManager_panelLinkSpecifier] = 0;
  *&v0[OBJC_IVAR____TtC26GenerativePartnerServiceUI41GenerativePartnerServicePSSettingsManager_requestDialogToggleSpecifier] = 0;
  *&v0[OBJC_IVAR____TtC26GenerativePartnerServiceUI41GenerativePartnerServicePSSettingsManager_partnerSwitcherSpecifier] = 0;
  v0[OBJC_IVAR____TtC26GenerativePartnerServiceUI41GenerativePartnerServicePSSettingsManager_reloadLock] = 1;
  swift_unknownObjectWeakAssign();
  v47 = v139;
  *&v0[OBJC_IVAR____TtC26GenerativePartnerServiceUI41GenerativePartnerServicePSSettingsManager_settings] = v139;
  v48 = type metadata accessor for GenerativePartnerServicePSSettingsManager(0);
  v152.receiver = v0;
  v152.super_class = v48;
  v146 = v48;
  v135 = v47;
  v49 = objc_msgSendSuper2(&v152, sel_init);
  v50 = *&v49[OBJC_IVAR____TtC26GenerativePartnerServiceUI41GenerativePartnerServicePSSettingsManager_groupSpecifier];
  if (!v50)
  {
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v51 = *&v49[OBJC_IVAR____TtC26GenerativePartnerServiceUI41GenerativePartnerServicePSSettingsManager_settings];
  v52 = v49;
  [v51 addObject_];
  v53 = *&v52[OBJC_IVAR____TtC26GenerativePartnerServiceUI41GenerativePartnerServicePSSettingsManager_observer];
  v54 = v52;
  v55 = v53;
  sub_1BE509BA4(v54, v55);

  if (qword_1EDDD6890 != -1)
  {
    sub_1BE4C7480(&qword_1EDDD6890);
  }

  v56 = off_1EDDD6898;
  v57 = v54;
  v58 = sub_1BE539620();
  sub_1BE53FD60();

  v59 = v56[3];
  sub_1BE510DF8(v57, v59);

  sub_1BE54C65C();
  v147 = v44;
  v141(v14, v142, v143);
  sub_1BE54AF2C();
  v136 = v41;
  v137 = v14;
  sub_1BE511AD0();
  sub_1BE511AA4();
  sub_1BE54ADBC();
  v139 = v26;
  v60 = sub_1BE54C72C();
  v62 = v61;
  v151 = v146;
  v149 = v57;
  v63 = objc_allocWithZone(MEMORY[0x1E69C5748]);
  v64 = sub_1BE511AE0(v60, v62, &v149);
  v65 = OBJC_IVAR____TtC26GenerativePartnerServiceUI41GenerativePartnerServicePSSettingsManager_setupButtonSpecifier;
  v66 = *&v57[OBJC_IVAR____TtC26GenerativePartnerServiceUI41GenerativePartnerServicePSSettingsManager_setupButtonSpecifier];
  *&v57[OBJC_IVAR____TtC26GenerativePartnerServiceUI41GenerativePartnerServicePSSettingsManager_setupButtonSpecifier] = v64;
  v67 = v64;

  if (!v64)
  {
    goto LABEL_18;
  }

  v68 = sub_1BE4BF11C(&qword_1EBDACD48, &qword_1BE550518);
  inited = swift_initStackObject();
  v134 = xmmword_1BE54DC10;
  *(inited + 16) = xmmword_1BE54DC10;
  v149 = sub_1BE54C70C();
  v150 = v70;
  v71 = MEMORY[0x1E69E6158];
  sub_1BE54CA8C();
  v72 = type metadata accessor for ExternalAISetupPlacardCell();
  *(inited + 96) = sub_1BE4BF11C(&qword_1EBDACD50, &unk_1BE550520);
  *(inited + 72) = v72;
  v73 = *MEMORY[0x1E69C5918];
  v149 = sub_1BE54C70C();
  v150 = v74;
  sub_1BE54CA8C();
  *(inited + 168) = v71;
  sub_1BE511B98();
  *(inited + 144) = 0x6C616E7265747845;
  *(inited + 152) = v75;
  v76 = sub_1BE54C61C();
  sub_1BE510B7C(v76, v67);

  v77 = *&v57[v65];
  if (!v77)
  {
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v138 = v68;
  v131 = sel_showExternalAISetUpSelectionSheet;
  v132 = v73;
  [v77 setButtonAction_];
  v78 = v139;
  if (qword_1EBDABA50 != -1)
  {
    swift_once();
  }

  v79 = v140;
  v80 = sub_1BE4C52BC(v140, qword_1EBDB0BC0);
  v81 = *(v145 + 16);
  v145 += 16;
  v133 = v81;
  v81(v78, v80, v79);
  v82 = sub_1BE54C72C();
  v84 = v83;
  v85 = v146;
  v151 = v146;
  v149 = v57;
  v86 = objc_allocWithZone(MEMORY[0x1E69C5748]);
  v87 = v57;
  v88 = sub_1BE510218(v82, v84, &v149, sel_setAllowSetupRequests_, sel_allowSetupRequests, 0, 6, 0);
  v89 = *&v87[OBJC_IVAR____TtC26GenerativePartnerServiceUI41GenerativePartnerServicePSSettingsManager_setupRequestsToggleSpecifier];
  *&v87[OBJC_IVAR____TtC26GenerativePartnerServiceUI41GenerativePartnerServicePSSettingsManager_setupRequestsToggleSpecifier] = v88;
  v90 = v88;

  if (!v88)
  {
    goto LABEL_20;
  }

  v91 = swift_initStackObject();
  v130 = xmmword_1BE54E1A0;
  *(v91 + 16) = xmmword_1BE54E1A0;
  v149 = sub_1BE54C70C();
  v150 = v92;
  v93 = MEMORY[0x1E69E6158];
  sub_1BE54CA8C();
  sub_1BE511E6C();
  v94 = sub_1BE54C72C();
  *(v91 + 96) = v93;
  *(v91 + 72) = v94;
  *(v91 + 80) = v95;
  v96 = sub_1BE54C61C();
  sub_1BE510B7C(v96, v90);

  v151 = v85;
  v149 = v87;
  v97 = type metadata accessor for GenerativePartnerSettingsPanelController(0);
  v98 = objc_allocWithZone(MEMORY[0x1E69C5748]);
  v99 = v87;
  v100 = sub_1BE510218(45, 0xE100000000000000, &v149, 0, 0, v97, 1, 0);
  v101 = *&v99[OBJC_IVAR____TtC26GenerativePartnerServiceUI41GenerativePartnerServicePSSettingsManager_panelLinkSpecifier];
  *&v99[OBJC_IVAR____TtC26GenerativePartnerServiceUI41GenerativePartnerServicePSSettingsManager_panelLinkSpecifier] = v100;
  v102 = v100;

  if (!v100)
  {
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v103 = swift_initStackObject();
  *(v103 + 16) = v134;
  v149 = sub_1BE54C70C();
  v150 = v104;
  sub_1BE54CA8C();
  *(v103 + 96) = v93;
  *(v103 + 72) = 0x6C616E7265747845;
  sub_1BE511B98();
  *(v103 + 80) = v105;
  v149 = sub_1BE54C70C();
  v150 = v106;
  sub_1BE54CA8C();
  *(v103 + 168) = v93;
  *(v103 + 144) = 45;
  *(v103 + 152) = 0xE100000000000000;
  v107 = sub_1BE54C61C();
  sub_1BE510B7C(v107, v102);

  if (qword_1EBDABA58 != -1)
  {
    swift_once();
  }

  v108 = v140;
  v109 = sub_1BE4C52BC(v140, qword_1EBDB0BD8);
  v133(v139, v109, v108);
  sub_1BE54C72C();
  sub_1BE511B74();
  v110 = v146;
  v151 = v146;
  v149 = v99;
  objc_allocWithZone(MEMORY[0x1E69C5748]);
  v111 = v99;
  v112 = sub_1BE511B8C();
  v115 = sub_1BE510218(v112, v113, v114, sel_setShouldConfirmRequests_, sel_shouldConfirmRequests, 0, 6, 0);
  v116 = *&v111[OBJC_IVAR____TtC26GenerativePartnerServiceUI41GenerativePartnerServicePSSettingsManager_requestDialogToggleSpecifier];
  *&v111[OBJC_IVAR____TtC26GenerativePartnerServiceUI41GenerativePartnerServicePSSettingsManager_requestDialogToggleSpecifier] = v115;

  sub_1BE54C65C();
  v141(v137, v142, v143);
  sub_1BE54AF2C();
  sub_1BE511AD0();
  sub_1BE511AA4();
  sub_1BE54ADBC();
  sub_1BE54C72C();
  sub_1BE511B74();
  v151 = v110;
  v149 = v111;
  v117 = objc_allocWithZone(MEMORY[0x1E69C5748]);
  v118 = sub_1BE511B8C();
  v121 = sub_1BE511AE0(v118, v119, v120);
  v122 = OBJC_IVAR____TtC26GenerativePartnerServiceUI41GenerativePartnerServicePSSettingsManager_partnerSwitcherSpecifier;
  v123 = *&v111[OBJC_IVAR____TtC26GenerativePartnerServiceUI41GenerativePartnerServicePSSettingsManager_partnerSwitcherSpecifier];
  *&v111[OBJC_IVAR____TtC26GenerativePartnerServiceUI41GenerativePartnerServicePSSettingsManager_partnerSwitcherSpecifier] = v121;
  v124 = v121;

  v125 = v144;
  if (!v121)
  {
    goto LABEL_22;
  }

  v126 = swift_initStackObject();
  *(v126 + 16) = v130;
  v149 = sub_1BE54C70C();
  v150 = v127;
  sub_1BE54CA8C();
  *(v126 + 96) = MEMORY[0x1E69E6370];
  *(v126 + 72) = 1;
  v128 = sub_1BE54C61C();
  sub_1BE510B7C(v128, v124);

  v129 = *&v111[v122];
  if (v129)
  {
    [v129 setButtonAction_];
    sub_1BE50D28C();

    v111[OBJC_IVAR____TtC26GenerativePartnerServiceUI41GenerativePartnerServicePSSettingsManager_reloadLock] = 0;
    sub_1BE4FFB4C();
    return;
  }

LABEL_23:
  __break(1u);
}

uint64_t sub_1BE50CD10(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BE4BF11C(&qword_1EBDACCD8, &qword_1BE550500);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1BE50CDC4()
{
  v1 = v0 + OBJC_IVAR____TtC26GenerativePartnerServiceUI41GenerativePartnerServicePSSettingsManager_previousPartnerID;
  os_unfair_lock_lock((v0 + OBJC_IVAR____TtC26GenerativePartnerServiceUI41GenerativePartnerServicePSSettingsManager_previousPartnerID));
  sub_1BE50CE28((v1 + 8), v0);

  os_unfair_lock_unlock(v1);
}

void sub_1BE50CE28(uint64_t *a1, uint64_t a2)
{
  sub_1BE54B24C();
  sub_1BE54B22C();
  sub_1BE54B1FC();

  if (v22)
  {
    sub_1BE4C52F4(v21, v22);
    v5 = sub_1BE54B28C();
    v7 = v6;
    sub_1BE4C58A8(v21);
  }

  else
  {
    sub_1BE511848(v21, &qword_1EBDAC550, &qword_1BE54F7D0);
    v5 = 0;
    v7 = 0;
  }

  if (*(a2 + OBJC_IVAR____TtC26GenerativePartnerServiceUI41GenerativePartnerServicePSSettingsManager_reloadLock))
  {
LABEL_5:

    return;
  }

  v9 = *a1;
  v8 = a1[1];
  if (v7)
  {
    if (v8)
    {
      v10 = v5 == v9 && v7 == v8;
      if (v10 || (sub_1BE54CCDC() & 1) != 0)
      {
        goto LABEL_5;
      }
    }
  }

  else if (!v8)
  {
    return;
  }

  v23 = v2;
  *a1 = v5;
  a1[1] = v7;
  v11 = qword_1EBDABAA8;

  if (v11 != -1)
  {
    swift_once();
  }

  v12 = sub_1BE54B2EC();
  sub_1BE4C52BC(v12, qword_1EBDB0C38);

  v13 = sub_1BE54B2BC();
  v14 = sub_1BE54C97C();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v21[0] = v20;
    *v15 = 136446722;
    *(v15 + 4) = sub_1BE4C5338(0xD00000000000001ELL, 0x80000001BE554CB0, v21);
    *(v15 + 12) = 2082;
    if (v8)
    {
      v16 = v9;
    }

    else
    {
      v16 = 7104878;
    }

    if (!v8)
    {
      v8 = 0xE300000000000000;
    }

    v17 = sub_1BE4C5338(v16, v8, v21);

    *(v15 + 14) = v17;
    *(v15 + 22) = 2082;
    if (v7)
    {
      v18 = v5;
    }

    else
    {
      v18 = 7104878;
    }

    if (!v7)
    {
      v7 = 0xE300000000000000;
    }

    v19 = sub_1BE4C5338(v18, v7, v21);

    *(v15 + 24) = v19;
    _os_log_impl(&dword_1BE4B8000, v13, v14, "%{public}s: previousPartnerID: %{public}s, currentPartnerID: %{public}s", v15, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1BFB48AC0](v20, -1, -1);
    MEMORY[0x1BFB48AC0](v15, -1, -1);
  }

  else
  {
  }

  sub_1BE50D28C();
}

void sub_1BE50D160()
{
  v1 = v0;
  if (qword_1EBDABA78 != -1)
  {
    swift_once();
  }

  v2 = qword_1EBDB0BF8;
  if (qword_1EBDB0BF8)
  {
    v3 = sub_1BE54C6DC();
    v4 = [v2 BOOLForKey_];
  }

  else
  {
    v4 = 1;
  }

  type metadata accessor for GenerativePartnerServiceUserDefaults();
  if (v4 != (sub_1BE53EAA8() & 1))
  {
    sub_1BE53EBAC(v4, 1);
  }

  if ((*(v1 + OBJC_IVAR____TtC26GenerativePartnerServiceUI41GenerativePartnerServicePSSettingsManager_reloadLock) & 1) == 0)
  {

    sub_1BE50D28C();
  }
}

void sub_1BE50D28C()
{
  sub_1BE4FFB64();
  v1 = v0;
  v70 = v2;
  v71 = v3;
  v69 = v4;
  v5 = sub_1BE4BF11C(&qword_1EBDAC3A8, &qword_1BE550DA0);
  sub_1BE4C7570(v5);
  sub_1BE4FFC80();
  MEMORY[0x1EEE9AC00](v6, v7);
  v68 = &v67 - v8;
  v9 = sub_1BE54ADAC();
  v10 = sub_1BE4C7570(v9);
  MEMORY[0x1EEE9AC00](v10, v11);
  sub_1BE4C757C();
  v14 = v13 - v12;
  v15 = sub_1BE54AF6C();
  v16 = sub_1BE4C7570(v15);
  MEMORY[0x1EEE9AC00](v16, v17);
  sub_1BE4C757C();
  v18 = sub_1BE54C6BC();
  v19 = sub_1BE4C7570(v18);
  MEMORY[0x1EEE9AC00](v19, v20);
  sub_1BE4C757C();
  v21 = OBJC_IVAR____TtC26GenerativePartnerServiceUI41GenerativePartnerServicePSSettingsManager_panelLinkSpecifier;
  v22 = *&v0[OBJC_IVAR____TtC26GenerativePartnerServiceUI41GenerativePartnerServicePSSettingsManager_panelLinkSpecifier];
  if (!v22)
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  sub_1BE54B24C();
  v23 = v22;
  sub_1BE54B22C();
  sub_1BE54B20C();

  if (*(&v75 + 1))
  {
    sub_1BE4C52F4(&v74, *(&v75 + 1));
    sub_1BE54B26C();
    sub_1BE511B74();
    sub_1BE4C58A8(&v74);
  }

  else
  {
    sub_1BE511848(&v74, &qword_1EBDAC550, &qword_1BE54F7D0);
    sub_1BE54C65C();
    if (qword_1EBDABA80 != -1)
    {
      swift_once();
    }

    v24 = qword_1EBDB0C00;
    sub_1BE54AF2C();
    sub_1BE511AD0();
    sub_1BE511AA4();
    sub_1BE54C71C();
    sub_1BE511B74();
  }

  v25 = sub_1BE511B8C();
  sub_1BE5109EC(v25, v26, v23);

  v27 = static GenerativePartnerRestrictionUtils.isHardDisabled.getter();
  v28 = *&v0[OBJC_IVAR____TtC26GenerativePartnerServiceUI41GenerativePartnerServicePSSettingsManager_groupSpecifier];
  v67 = v21;
  if (v27)
  {
    if (!v28)
    {
LABEL_50:
      __break(1u);
      goto LABEL_51;
    }

    v29 = sub_1BE54C6DC();
  }

  else
  {
    if (!v28)
    {
LABEL_51:
      __break(1u);
      goto LABEL_52;
    }

    sub_1BE54B22C();
    sub_1BE54B20C();

    if (v73)
    {
      sub_1BE4C52F4(v72, v73);
      sub_1BE511B8C();
      sub_1BE4EB2CC(v30);
      sub_1BE4C58A8(v72);
    }

    else
    {
      sub_1BE511848(v72, &qword_1EBDAC550, &qword_1BE54F7D0);
      v74 = 0u;
      v75 = 0u;
      v76 = 0;
    }

    sub_1BE512114(&v74, v14);
    sub_1BE511848(&v74, &qword_1EBDABAF8, &qword_1BE54DC20);
    sub_1BE54C72C();
    v29 = sub_1BE54C6DC();
  }

  v31 = sub_1BE54C70C();
  sub_1BE510A50(v29, v31, v32, v28);

  v33 = sub_1BE50BFB0();
  v34 = sub_1BE4D0EB0();
  if (v34)
  {
    v35 = v34;
    if (v34 < 1)
    {
      __break(1u);
      goto LABEL_46;
    }

    v36 = 0;
    v37 = *&v1[OBJC_IVAR____TtC26GenerativePartnerServiceUI41GenerativePartnerServicePSSettingsManager_settings];
    do
    {
      if ((v33 & 0xC000000000000001) != 0)
      {
        v38 = MEMORY[0x1BFB47FF0](v36, v33);
      }

      else
      {
        v38 = *(v33 + 8 * v36 + 32);
      }

      v39 = v38;
      ++v36;
      [v37 removeObject_];
    }

    while (v35 != v36);
  }

  if ((static GenerativePartnerRestrictionUtils.isHardDisabled.getter() & 1) == 0)
  {
    sub_1BE4BF11C(&qword_1EBDABE48, &unk_1BE550660);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1BE5504F0;
    v45 = *&v1[v67];
    if (!v45)
    {
LABEL_52:
      __break(1u);
      return;
    }

    v46 = inited;
    *(inited + 32) = v45;
    v47 = *&v1[OBJC_IVAR____TtC26GenerativePartnerServiceUI41GenerativePartnerServicePSSettingsManager_settings];
    v48 = inited & 0xC000000000000001;
    v49 = v45;
    if (v48)
    {
      v50 = MEMORY[0x1BFB47FF0](0, v46);
LABEL_32:
      v51 = v50;
      [v47 ps:v50 insertObject:v28 afterObject:v67];

      swift_setDeallocating();
      swift_arrayDestroy();
      goto LABEL_33;
    }

    if (*((v46 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v50 = v49;
      goto LABEL_32;
    }

    __break(1u);
    goto LABEL_49;
  }

  sub_1BE5109EC(0, 0xE000000000000000, v28);
  if (qword_1EBDABAA8 != -1)
  {
    goto LABEL_47;
  }

  while (1)
  {
    v40 = sub_1BE54B2EC();
    sub_1BE4C52BC(v40, qword_1EBDB0C38);
    v41 = sub_1BE54B2BC();
    v42 = sub_1BE54C97C();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&dword_1BE4B8000, v41, v42, "[Settings] External AI hard disabled, not showing Apple Intelligence Extension settings", v43, 2u);
      sub_1BE4C75DC();
    }

LABEL_33:
    if (AFMontaraRestricted() & 1) == 0 && (static GenerativePartnerRestrictionUtils.isHardDisabled.getter() & 1) == 0 && (sub_1BE52AA84())
    {
      sub_1BE52AC38();
    }

    v52 = sub_1BE50BFB0();
    v53 = sub_1BE4D0EB0();
    if (!v53)
    {
      break;
    }

    v54 = v53;
    if (v53 >= 1)
    {
      v55 = 0;
      do
      {
        if ((v52 & 0xC000000000000001) != 0)
        {
          v56 = MEMORY[0x1BFB47FF0](v55, v52);
        }

        else
        {
          v56 = *(v52 + 8 * v55 + 32);
        }

        v57 = v56;
        ++v55;
        v58 = sub_1BE54C86C();
        v59 = sub_1BE54C70C();
        sub_1BE510A50(v58, v59, v60, v57);
      }

      while (v54 != v55);
      break;
    }

LABEL_46:
    __break(1u);
LABEL_47:
    sub_1BE4FFAF4(&qword_1EBDABAA8);
  }

  v61 = sub_1BE54C91C();
  sub_1BE4C63F8(v68, 1, 1, v61);
  sub_1BE54C8CC();
  v62 = v1;
  v63 = v71;

  v64 = sub_1BE54C8BC();
  v65 = swift_allocObject();
  v66 = MEMORY[0x1E69E85E0];
  *(v65 + 16) = v64;
  *(v65 + 24) = v66;
  *(v65 + 32) = v62;
  *(v65 + 40) = v69 & 1;
  *(v65 + 48) = v70;
  *(v65 + 56) = v63;
  sub_1BE50BA3C();

  sub_1BE4FFB4C();
}

uint64_t sub_1BE50D97C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 24) = a6;
  *(v7 + 32) = a7;
  *(v7 + 48) = a5;
  *(v7 + 16) = a4;
  sub_1BE54C8CC();
  *(v7 + 40) = sub_1BE54C8BC();
  v9 = sub_1BE54C87C();

  return MEMORY[0x1EEE6DFA0](sub_1BE50DA1C, v9, v8);
}

uint64_t sub_1BE50DA1C()
{
  v14 = v0;
  v1 = *(v0 + 48);
  v2 = *(v0 + 16);

  if ((*(v2 + OBJC_IVAR____TtC26GenerativePartnerServiceUI41GenerativePartnerServicePSSettingsManager_reloadLock) & 1) == 0)
  {
    if (v1)
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v4 = Strong;
        if (qword_1EBDABAA8 != -1)
        {
          sub_1BE4FFAF4(&qword_1EBDABAA8);
        }

        v5 = sub_1BE54B2EC();
        sub_1BE4C52BC(v5, qword_1EBDB0C38);

        v6 = sub_1BE54B2BC();
        v7 = sub_1BE54C97C();

        if (os_log_type_enabled(v6, v7))
        {
          v9 = *(v0 + 24);
          v8 = *(v0 + 32);
          v10 = swift_slowAlloc();
          v13 = swift_slowAlloc();
          *v10 = 136446466;
          *(v10 + 4) = sub_1BE4C5338(0xD00000000000003ALL, 0x80000001BE554D00, &v13);
          *(v10 + 12) = 2080;
          *(v10 + 14) = sub_1BE4C5338(v9, v8, &v13);
          _os_log_impl(&dword_1BE4B8000, v6, v7, "%{public}s - will perform reloadSpecifiers(), invocationSource: %s", v10, 0x16u);
          swift_arrayDestroy();
          sub_1BE4C75DC();
          sub_1BE4C75DC();
        }

        [v4 reloadSpecifiers];
      }
    }
  }

  sub_1BE4E01E0();

  return v11();
}

void sub_1BE50DC0C()
{
  sub_1BE4FFB64();
  v76[0] = v0;
  v1 = sub_1BE4BF11C(&qword_1EBDAC3A8, &qword_1BE550DA0);
  sub_1BE4C7570(v1);
  sub_1BE4FFC80();
  MEMORY[0x1EEE9AC00](v2, v3);
  v76[1] = v76 - v4;
  v82[0] = 0;
  sub_1BE54C5EC();
  v5 = v82[0];
  if (!v82[0])
  {
    if (qword_1EBDABAB0 != -1)
    {
      sub_1BE4E43AC(&qword_1EBDABAB0);
    }

    v52 = sub_1BE54B2EC();
    sub_1BE4C52BC(v52, qword_1EBDB0C50);
    v53 = sub_1BE54B2BC();
    v54 = sub_1BE54C98C();
    if (!os_log_type_enabled(v53, v54))
    {
      goto LABEL_49;
    }

    *swift_slowAlloc() = 0;
    sub_1BE511AC0();
    _os_log_impl(v55, v56, v57, v58, v59, 2u);
    goto LABEL_48;
  }

  sub_1BE4BF11C(&qword_1EBDAC370, &qword_1BE550530);
  v6 = sub_1BE54CBDC();
  v7 = v6;
  v8 = 0;
  v9 = v5 + 64;
  v10 = 1 << *(v5 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(v5 + 64);
  v13 = (v10 + 63) >> 6;
  v77 = v5;
  v78 = v6 + 64;
  if (v12)
  {
    while (1)
    {
      v14 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_11:
      v17 = v14 | (v8 << 6);
      v18 = v7;
      v19 = (*(v5 + 48) + 16 * v17);
      v21 = *v19;
      v20 = v19[1];
      sub_1BE4C6FB8(*(v5 + 56) + 32 * v17, v82);
      sub_1BE4C6FB8(v82, &v81);

      if (swift_dynamicCast())
      {
        v22 = v79;
        v7 = v80;
      }

      else
      {
        v22 = 0;
        v7 = 0xE000000000000000;
      }

      sub_1BE4C58A8(v82);
      *(v78 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v23 = (v18[6] + 16 * v17);
      *v23 = v21;
      v23[1] = v20;
      v24 = (v18[7] + 16 * v17);
      *v24 = v22;
      v24[1] = v7;
      v25 = v18[2];
      v26 = __OFADD__(v25, 1);
      v27 = v25 + 1;
      if (v26)
      {
        break;
      }

      v7 = v18;
      v18[2] = v27;
      v5 = v77;
      if (!v12)
      {
        goto LABEL_6;
      }
    }

LABEL_52:
    __break(1u);
LABEL_53:
    sub_1BE4E43AC(&qword_1EBDABAB0);
  }

  else
  {
LABEL_6:
    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_52;
      }

      if (v8 >= v13)
      {
        break;
      }

      v16 = *(v9 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_11;
      }
    }

    if (qword_1EBDABAB0 != -1)
    {
      goto LABEL_53;
    }
  }

  v28 = sub_1BE54B2EC();
  sub_1BE4C52BC(v28, qword_1EBDB0C50);

  v29 = sub_1BE54B2BC();
  v30 = sub_1BE54C97C();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v82[0] = v32;
    *v31 = 136446210;
    v33 = sub_1BE54C60C();
    v35 = sub_1BE4C5338(v33, v34, v82);

    *(v31 + 4) = v35;
    _os_log_impl(&dword_1BE4B8000, v29, v30, "[Deep Links] resourceDictionary dump:\n%{public}s", v31, 0xCu);
    sub_1BE4C58A8(v32);
    sub_1BE4C75DC();
    sub_1BE4C75DC();
  }

  v36 = sub_1BE50B8C8(1752457584, 0xE400000000000000, v7);
  if (v37)
  {
    v38 = v37;
  }

  else
  {
    v36 = 0;
    v38 = 0xE000000000000000;
  }

  v39 = sub_1BE4E1524(v36, v38);

  v40 = v39[2];
  if (v40)
  {
    v41 = v39[4] == 0x6C616E7265747845 && v39[5] == 0xEF6C65646F4D4941;
    if (v41 || (sub_1BE54CCDC() & 1) != 0)
    {

      v42 = sub_1BE50B8C8(2003134838, 0xE400000000000000, v7);
      if (!v43)
      {
        v42 = 0;
        v43 = 0xE000000000000000;
      }

      GenerativePartnerSettingsDeepLinks.Action.init(rawValue:)(*&v42);
      if (LOBYTE(v82[0]) == 4)
      {

        v65 = sub_1BE54C91C();
        sub_1BE511B20(v65);
        v66 = v76[0];
        v67 = sub_1BE54C8BC();
        v68 = swift_allocObject();
        v69 = MEMORY[0x1E69E85E0];
        v68[2] = v67;
        v68[3] = v69;
        v68[4] = v66;
      }

      else
      {
        if (LOBYTE(v82[0]))
        {

          goto LABEL_50;
        }

        v44 = sub_1BE50B8C8(0x72656E74726170, 0xE700000000000000, v7);
        v46 = v45;

        v47 = sub_1BE54C91C();
        sub_1BE511B20(v47);
        v48 = v76[0];
        v49 = sub_1BE54C8BC();
        v50 = swift_allocObject();
        v51 = MEMORY[0x1E69E85E0];
        v50[2] = v49;
        v50[3] = v51;
        v50[4] = v48;
        v50[5] = v44;
        v50[6] = v46;
      }

      sub_1BE50BA3C();

LABEL_50:
      sub_1BE4FFB4C();
      return;
    }
  }

  v53 = sub_1BE54B2BC();
  v60 = sub_1BE54C98C();

  if (!os_log_type_enabled(v53, v60))
  {

LABEL_49:

    goto LABEL_50;
  }

  v61 = swift_slowAlloc();
  v62 = swift_slowAlloc();
  v82[0] = v62;
  *v61 = 136446210;
  if (!v40)
  {
    v63 = 0xE500000000000000;
    v64 = 0x3E6C696E3CLL;
    goto LABEL_47;
  }

  if (v39[2])
  {
    v64 = v39[4];
    v63 = v39[5];

LABEL_47:

    v70 = sub_1BE4C5338(v64, v63, v82);

    *(v61 + 4) = v70;
    sub_1BE511AC0();
    _os_log_impl(v71, v72, v73, v74, v75, 0xCu);
    sub_1BE4C58A8(v62);
    sub_1BE4C75DC();
LABEL_48:
    sub_1BE4C75DC();
    goto LABEL_49;
  }

  __break(1u);
}

uint64_t sub_1BE50E2CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  sub_1BE54C8CC();
  v6[5] = sub_1BE54C8BC();
  v8 = sub_1BE54C87C();

  return MEMORY[0x1EEE6DFA0](sub_1BE50E368, v8, v7);
}

uint64_t sub_1BE50E368()
{
  sub_1BE4E4418();
  v1 = *(v0 + 32);
  v2 = *(v0 + 24);

  sub_1BE50E8AC(v2, v1);
  sub_1BE4E01E0();

  return v3();
}

uint64_t sub_1BE50E3D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 56) = a4;
  sub_1BE54C8CC();
  *(v4 + 64) = sub_1BE54C8BC();
  v6 = sub_1BE54C87C();

  return MEMORY[0x1EEE6DFA0](sub_1BE50E470, v6, v5);
}

uint64_t sub_1BE50E470()
{
  sub_1BE4E4418();

  if (qword_1EDDD6890 != -1)
  {
    sub_1BE4C7480(&qword_1EDDD6890);
  }

  sub_1BE53C930((v0 + 2));
  v1 = v0[5];
  if (v1)
  {
    v2 = v0[6];
    sub_1BE4C52F4(v0 + 2, v0[5]);
    v3 = (*(v2 + 8))(v1, v2);
    v1 = v4;
    sub_1BE4C58A8(v0 + 2);
  }

  else
  {
    sub_1BE511848((v0 + 2), &qword_1EBDABAF8, &qword_1BE54DC20);
    v3 = 0;
  }

  sub_1BE50E8AC(v3, v1);

  sub_1BE4E01E0();

  return v5();
}

uint64_t sub_1BE50E624()
{
  if (qword_1EDDD6890 != -1)
  {
    sub_1BE4C7480(&qword_1EDDD6890);
  }

  type metadata accessor for GenerativePartnerServiceUserDefaults();
  sub_1BE53FB20();

  return sub_1BE54C86C();
}

void sub_1BE50E6C8(id a1)
{
  if (qword_1EDDD6890 != -1)
  {
    sub_1BE4C7480(&qword_1EDDD6890);
  }

  v2 = [a1 BOOLValue];
  type metadata accessor for GenerativePartnerServiceUserDefaults();
  sub_1BE53FA78(v2, 0);
}

uint64_t sub_1BE50E78C()
{
  type metadata accessor for GenerativePartnerServiceUserDefaults();
  sub_1BE53EAA8();

  return sub_1BE54C86C();
}

void sub_1BE50E8AC(uint64_t a1, uint64_t a2)
{
  v4 = a2 != 0;
  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  objc_allocWithZone(type metadata accessor for GenerativePartnerOnboardingSheetController());

  v16 = sub_1BE4C78C0(a1, a2, v4, 0, sub_1BE511704, v5);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    [Strong presentViewController:v16 animated:1 completion:0];
  }

  else
  {
    if (qword_1EBDABAA8 != -1)
    {
      sub_1BE4FFAF4(&qword_1EBDABAA8);
    }

    v8 = sub_1BE54B2EC();
    sub_1BE4C52BC(v8, qword_1EBDB0C38);
    v9 = sub_1BE54B2BC();
    v10 = sub_1BE54C98C();
    if (os_log_type_enabled(v9, v10))
    {
      *swift_slowAlloc() = 0;
      sub_1BE511AC0();
      _os_log_impl(v11, v12, v13, v14, v15, 2u);
      sub_1BE4C75DC();
    }

    v7 = v16;
    v16 = v9;
  }
}

void sub_1BE50EA48(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_1BE50D28C();
  }
}

id GenerativePartnerServicePSSettingsManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id GenerativePartnerServicePSSettingsManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GenerativePartnerServicePSSettingsManager(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t GenerativePartnerServicePSSettingsManager.availabilityDidChange(for:availability:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1BE54B12C();
  sub_1BE4C7500();
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v10, v11);
  v12 = sub_1BE4BF11C(&qword_1EBDAC3A8, &qword_1BE550DA0);
  sub_1BE4C7570(v12);
  sub_1BE4FFC80();
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v24 - v15;
  v17 = sub_1BE54C91C();
  sub_1BE4C63F8(v16, 1, 1, v17);
  (*(v7 + 16))(&v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v5);
  sub_1BE54C8CC();
  v18 = v3;
  v19 = sub_1BE54C8BC();
  v20 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v21 = swift_allocObject();
  v22 = MEMORY[0x1E69E85E0];
  *(v21 + 2) = v19;
  *(v21 + 3) = v22;
  *(v21 + 4) = v18;
  (*(v7 + 32))(&v21[v20], &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  sub_1BE50BA3C();
}

uint64_t sub_1BE50EE4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  sub_1BE54C8CC();
  v5[4] = sub_1BE54C8BC();
  v7 = sub_1BE54C87C();

  return MEMORY[0x1EEE6DFA0](sub_1BE50EEE4, v7, v6);
}

uint64_t sub_1BE50EEE4()
{
  v1 = *(v0 + 16);

  if ((*(v1 + OBJC_IVAR____TtC26GenerativePartnerServiceUI41GenerativePartnerServicePSSettingsManager_reloadLock) & 1) == 0)
  {
    v2 = *(v0 + 16);
    v3 = *(v0 + 24);
    v4 = (v2 + OBJC_IVAR____TtC26GenerativePartnerServiceUI41GenerativePartnerServicePSSettingsManager_previousAvailability);
    os_unfair_lock_lock((v2 + OBJC_IVAR____TtC26GenerativePartnerServiceUI41GenerativePartnerServicePSSettingsManager_previousAvailability));
    v5 = sub_1BE4BF11C(&qword_1EBDACCF0, &qword_1BE550508);
    sub_1BE50EFCC(v4 + *(v5 + 28), v2, v3);
    os_unfair_lock_unlock(v4);
  }

  sub_1BE4E01E0();

  return v6();
}

uint64_t sub_1BE50EFCC(uint64_t a1, void (*a2)(char *, char *), uint64_t a3)
{
  v65 = a2;
  v5 = sub_1BE54B10C();
  v56 = *(v5 - 8);
  v57 = v5;
  v7 = MEMORY[0x1EEE9AC00](v5, v6);
  v58 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v9);
  v59 = &v55 - v10;
  v11 = sub_1BE54B0DC();
  v60 = *(v11 - 8);
  v61 = v11;
  v13 = MEMORY[0x1EEE9AC00](v11, v12);
  v62 = &v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v15);
  v63 = &v55 - v16;
  v17 = sub_1BE54B12C();
  isa = v17[-1].isa;
  MEMORY[0x1EEE9AC00](v17, v19);
  v21 = &v55 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1BE4BF11C(&qword_1EBDACCD8, &qword_1BE550500);
  MEMORY[0x1EEE9AC00](v22 - 8, v23);
  v25 = &v55 - v24;
  v64 = isa;
  v28 = *(isa + 2);
  v27 = isa + 16;
  v26 = v28;
  v29 = a3;
  (v28)(&v55 - v24, a3, v17);
  sub_1BE4C63F8(v25, 0, 1, v17);
  v30 = a1;
  v31 = sub_1BE50F7C4(v25, a1);
  result = sub_1BE511848(v25, &qword_1EBDACCD8, &qword_1BE550500);
  if (v31)
  {
    sub_1BE511848(a1, &qword_1EBDACCD8, &qword_1BE550500);
    (v26)(a1, v29, v17);
    sub_1BE4C63F8(a1, 0, 1, v17);
    sub_1BE50D28C();
    (v26)(v21, v29, v17);
    v33 = v64;
    result = (*(v64 + 11))(v21, v17);
    if (result == *MEMORY[0x1E69A0EF8])
    {
      (*(v33 + 12))(v21, v17);
      v34 = v60;
      v27 = v61;
      v26 = v63;
      (*(v60 + 32))(v63, v21, v61);
      if (qword_1EBDABAD8 != -1)
      {
        swift_once();
      }

      v35 = sub_1BE54B2EC();
      sub_1BE4C52BC(v35, qword_1EBDB0CB0);
      v36 = v62;
      (*(v34 + 16))(v62, v26, v27);
      v37 = sub_1BE54B2BC();
      v38 = sub_1BE54C97C();
      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        v40 = swift_slowAlloc();
        v66 = v40;
        *v39 = 136446210;
        sub_1BE54B0CC();
        sub_1BE54B0BC();
        sub_1BE511770(&qword_1EBDACD80, MEMORY[0x1E69A0F90], MEMORY[0x1E69A0FA8]);
        v41 = sub_1BE54C93C();
        v43 = v42;

        v65 = *(v34 + 8);
        v65(v62, v27);
        v44 = sub_1BE4C5338(v41, v43, &v66);

        *(v39 + 4) = v44;
        _os_log_impl(&dword_1BE4B8000, v37, v38, "reasons: %{public}s", v39, 0xCu);
        sub_1BE4C58A8(v40);
        MEMORY[0x1BFB48AC0](v40, -1, -1);
        MEMORY[0x1BFB48AC0](v39, -1, -1);

        v45 = v63;
        return (v65)(v45, v27);
      }

      v54 = *(v34 + 8);
      v54(v36, v27);
    }

    else
    {
      if (result == *MEMORY[0x1E69A0F00])
      {
        (*(v33 + 12))(v21, v17);
        v31 = v56;
        v27 = v57;
        v26 = v59;
        (*(v56 + 32))(v59, v21, v57);
        if (qword_1EBDABAD8 != -1)
        {
          swift_once();
        }

        v46 = sub_1BE54B2EC();
        sub_1BE4C52BC(v46, qword_1EBDB0CB0);
        v30 = v58;
        (*(v31 + 16))(v58, v26, v27);
        v17 = sub_1BE54B2BC();
        v47 = sub_1BE54C97C();
        if (os_log_type_enabled(v17, v47))
        {
          v48 = swift_slowAlloc();
          v49 = swift_slowAlloc();
          v66 = v49;
          *v48 = 136446210;
          sub_1BE54B0FC();
          sub_1BE54B0EC();
          sub_1BE511770(&qword_1EDDD66C0, MEMORY[0x1E69A1168], MEMORY[0x1E69A1170]);
          v50 = sub_1BE54C93C();
          v52 = v51;

          v65 = *(v31 + 8);
          v65(v58, v27);
          v53 = sub_1BE4C5338(v50, v52, &v66);

          *(v48 + 4) = v53;
          _os_log_impl(&dword_1BE4B8000, v17, v47, "reasons: %{public}s", v48, 0xCu);
          sub_1BE4C58A8(v49);
          MEMORY[0x1BFB48AC0](v49, -1, -1);
          MEMORY[0x1BFB48AC0](v48, -1, -1);

          v45 = v59;
          return (v65)(v45, v27);
        }
      }

      else
      {
        if (result == *MEMORY[0x1E69A11A0])
        {
          return result;
        }

        sub_1BE54CCCC();
        __break(1u);
      }

      v54 = *(v31 + 8);
      v54(v30, v27);
    }

    return (v54)(v26, v27);
  }

  return result;
}

uint64_t sub_1BE50F7C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BE54B0DC();
  v104 = *(v4 - 1);
  v105 = v4;
  v6 = MEMORY[0x1EEE9AC00](v4, v5);
  v97 = &v96 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v8);
  v96 = &v96 - v9;
  v10 = sub_1BE4BF11C(&qword_1EBDACCD8, &qword_1BE550500);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8, v11);
  *&v100 = &v96 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v12, v14);
  v17 = &v96 - v16;
  v19 = MEMORY[0x1EEE9AC00](v15, v18);
  v21 = &v96 - v20;
  MEMORY[0x1EEE9AC00](v19, v22);
  v24 = &v96 - v23;
  v25 = sub_1BE4BF11C(&qword_1EBDACD88, &unk_1BE550670);
  v26 = v25 - 8;
  MEMORY[0x1EEE9AC00](v25, v27);
  v29 = &v96 - v28;
  v30 = sub_1BE54B10C();
  v101 = *(v30 - 8);
  v102 = v30;
  v32 = MEMORY[0x1EEE9AC00](v30, v31);
  v99 = &v96 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = MEMORY[0x1EEE9AC00](v32, v34);
  v98 = &v96 - v36;
  MEMORY[0x1EEE9AC00](v35, v37);
  v39 = &v96 - v38;
  v40 = *(v26 + 56);
  sub_1BE51170C(a1, v29, &qword_1EBDACCD8, &qword_1BE550500);
  sub_1BE51170C(a2, &v29[v40], &qword_1EBDACCD8, &qword_1BE550500);
  v41 = sub_1BE54B12C();
  if (sub_1BE4C63BC(v29, 1, v41) == 1)
  {
    goto LABEL_20;
  }

  v103 = v40;
  sub_1BE51170C(v29, v24, &qword_1EBDACCD8, &qword_1BE550500);
  v42 = *(v41 - 8);
  v43 = *(v42 + 88);
  v44 = v43(v24, v41);
  v45 = v44;
  if (v44 != *MEMORY[0x1E69A0EF8])
  {
    v58 = *MEMORY[0x1E69A0F00];
    if (v44 == *MEMORY[0x1E69A0F00])
    {
      v105 = *(v42 + 96);
      v105(v24, v41);
      v59 = v103;
      if (sub_1BE4C63BC(&v29[v103], 1, v41) == 1)
      {
LABEL_8:
        v61 = v101;
        v60 = v102;
LABEL_15:
        (*(v61 + 8))(v24, v60);
        goto LABEL_20;
      }

      v64 = &v29[v59];
      v65 = v100;
      sub_1BE51170C(v64, v100, &qword_1EBDACCD8, &qword_1BE550500);
      v66 = v43(v65, v41);
      if (v66 == v45)
      {
        v105(v65, v41);
        v67 = *(v101 + 32);
        v68 = v102;
        v67();
        (v67)(v99, v65, v68);
        v69 = sub_1BE54B0FC();
        v104 = sub_1BE4BF11C(&qword_1EBDACD90, &qword_1BE5516E0);
        v70 = sub_1BE54B0EC();
        v71 = *(v70 - 8);
        v72 = (*(v71 + 80) + 32) & ~*(v71 + 80);
        v73 = swift_allocObject();
        v100 = xmmword_1BE54E1A0;
        *(v73 + 16) = xmmword_1BE54E1A0;
        v74 = *MEMORY[0x1E69A10B8];
        v75 = *(v71 + 104);
        v75(v73 + v72, v74, v70);
        sub_1BE5322D8(v73, v69);
        v105 = v76;
        swift_setDeallocating();
        sub_1BE52B6AC();
        v77 = v99;
        v78 = sub_1BE54B0FC();
        v79 = swift_allocObject();
        *(v79 + 16) = v100;
        v75(v79 + v72, v74, v70);
        sub_1BE5322D8(v79, v78);
        v81 = v80;
        swift_setDeallocating();
        sub_1BE52B6AC();
        sub_1BE539004(v105, v81);
        v56 = v82;

        v83 = *(v101 + 8);
        v84 = v77;
        v85 = v102;
        v83(v84, v102);
        v83(v98, v85);
        goto LABEL_18;
      }

      if (v66 != *MEMORY[0x1E69A11A0])
      {
        (*(v42 + 8))(v100, v41);
        goto LABEL_8;
      }

      v21 = v24;
    }

    else
    {
      if (v44 != *MEMORY[0x1E69A11A0])
      {
        (*(v42 + 8))(v24, v41);
        goto LABEL_20;
      }

      v62 = v103;
      if (sub_1BE4C63BC(&v29[v103], 1, v41) == 1)
      {
LABEL_20:
        sub_1BE511848(v29, &qword_1EBDACD88, &unk_1BE550670);
        v56 = 0;
        return v56 & 1;
      }

      sub_1BE51170C(&v29[v62], v21, &qword_1EBDACCD8, &qword_1BE550500);
      v63 = v43(v21, v41);
      if (v63 != v58)
      {
        if (v63 == v45)
        {
          sub_1BE511848(&v29[v62], &qword_1EBDACCD8, &qword_1BE550500);
          sub_1BE511848(v29, &qword_1EBDACCD8, &qword_1BE550500);
          v56 = 1;
          return v56 & 1;
        }

        (*(v42 + 8))(v21, v41);
        goto LABEL_20;
      }

      (*(v42 + 96))(v21, v41);
    }

    v88 = v101;
    v87 = v102;
    (*(v101 + 32))(v39, v21, v102);
    sub_1BE511848(&v29[v103], &qword_1EBDACCD8, &qword_1BE550500);
    sub_1BE511848(v29, &qword_1EBDACCD8, &qword_1BE550500);
    v89 = sub_1BE54B0FC();
    (*(v88 + 8))(v39, v87);
    sub_1BE4BF11C(&qword_1EBDACD90, &qword_1BE5516E0);
    v90 = sub_1BE54B0EC();
    v91 = *(v90 - 8);
    v92 = (*(v91 + 80) + 32) & ~*(v91 + 80);
    v93 = swift_allocObject();
    *(v93 + 16) = xmmword_1BE54E1A0;
    (*(v91 + 104))(v93 + v92, *MEMORY[0x1E69A10B8], v90);
    sub_1BE5103DC();
    sub_1BE539004(v89, v94);
    v56 = v95;

    return v56 & 1;
  }

  v46 = *(v42 + 96);
  v46(v24, v41);
  if (sub_1BE4C63BC(&v29[v103], 1, v41) == 1)
  {
LABEL_14:
    v61 = v104;
    v60 = v105;
    goto LABEL_15;
  }

  sub_1BE51170C(&v29[v103], v17, &qword_1EBDACCD8, &qword_1BE550500);
  if (v43(v17, v41) != v45)
  {
    (*(v42 + 8))(v17, v41);
    goto LABEL_14;
  }

  v46(v17, v41);
  v47 = v104;
  v48 = *(v104 + 32);
  v49 = v96;
  v50 = v24;
  v51 = v105;
  v48(v96, v50, v105);
  v52 = v97;
  v48(v97, v17, v51);
  v53 = sub_1BE54B0CC();
  v54 = sub_1BE54B0CC();
  sub_1BE539210(v53, v54);
  v56 = v55;

  v57 = *(v47 + 8);
  v57(v52, v51);
  v57(v49, v51);
LABEL_18:
  sub_1BE511848(&v29[v103], &qword_1EBDACCD8, &qword_1BE550500);
  sub_1BE511848(v29, &qword_1EBDACCD8, &qword_1BE550500);
  return v56 & 1;
}

id sub_1BE510218(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t ObjCClassFromMetadata, uint64_t a7, uint64_t a8)
{
  v23 = a5;
  v24 = a7;
  if (a2)
  {
    v12 = sub_1BE54C6DC();
  }

  else
  {
    v12 = 0;
  }

  v13 = a3[3];
  if (v13)
  {
    v14 = sub_1BE4C52F4(a3, a3[3]);
    v15 = *(v13 - 8);
    MEMORY[0x1EEE9AC00](v14, v14);
    v17 = v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v15 + 16))(v17);
    v18 = sub_1BE54CCBC();
    (*(v15 + 8))(v17, v13);
    sub_1BE4C58A8(a3);
    if (!ObjCClassFromMetadata)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v18 = 0;
  if (ObjCClassFromMetadata)
  {
LABEL_6:
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  }

LABEL_7:
  if (a8)
  {
    v19 = swift_getObjCClassFromMetadata();
  }

  else
  {
    v19 = 0;
  }

  v20 = [v22[1] initWithName:v12 target:v18 set:a4 get:v23 detail:ObjCClassFromMetadata cell:v24 edit:v19];

  swift_unknownObjectRelease();
  return v20;
}

void sub_1BE5103DC()
{
  sub_1BE4FFB64();
  v1 = v0;
  v2 = sub_1BE54B0EC();
  sub_1BE4C7500();
  v38 = v3;
  v6 = MEMORY[0x1EEE9AC00](v4, v5);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v9);
  v42 = &v33 - v10;
  if (*(v1 + 16) && (sub_1BE4BF11C(&qword_1EBDACD98, &unk_1BE550680), v11 = sub_1BE54CABC(), v12 = v11, (v37 = *(v1 + 16)) != 0))
  {
    v13 = 0;
    v41 = v11 + 56;
    v14 = *(v38 + 80);
    v35 = v1;
    v36 = v1 + ((v14 + 32) & ~v14);
    v40 = v38 + 16;
    v15 = (v38 + 8);
    v34 = (v38 + 32);
    while (v13 < *(v1 + 16))
    {
      v16 = *(v38 + 72);
      v39 = v13 + 1;
      v17 = *(v38 + 16);
      v17(v42, v36 + v16 * v13, v2);
      sub_1BE511A8C();
      sub_1BE511770(&qword_1EDDD66C0, v18, MEMORY[0x1E69A1170]);
      v19 = sub_1BE54C62C();
      v20 = ~(-1 << *(v12 + 32));
      while (1)
      {
        v21 = v19 & v20;
        v22 = (v19 & v20) >> 6;
        v23 = *(v41 + 8 * v22);
        v24 = 1 << (v19 & v20);
        if ((v24 & v23) == 0)
        {
          break;
        }

        v25 = v12;
        v17(v8, *(v12 + 48) + v21 * v16, v2);
        sub_1BE511A8C();
        sub_1BE511770(&qword_1EDDD66B8, v26, MEMORY[0x1E69A1178]);
        v27 = sub_1BE54C64C();
        v28 = *v15;
        (*v15)(v8, v2);
        if (v27)
        {
          v28(v42, v2);
          v12 = v25;
          goto LABEL_12;
        }

        v19 = v21 + 1;
        v12 = v25;
      }

      v29 = v42;
      *(v41 + 8 * v22) = v24 | v23;
      (*v34)(*(v12 + 48) + v21 * v16, v29, v2);
      v30 = *(v12 + 16);
      v31 = __OFADD__(v30, 1);
      v32 = v30 + 1;
      if (v31)
      {
        goto LABEL_15;
      }

      *(v12 + 16) = v32;
LABEL_12:
      v13 = v39;
      v1 = v35;
      if (v39 == v37)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
  }

  else
  {
LABEL_13:

    sub_1BE4FFB4C();
  }
}

void sub_1BE5106E4(uint64_t a1)
{
  v1 = a1;
  if (*(a1 + 16) && (sub_1BE4BF11C(qword_1EBDACDA8, &qword_1BE5506B8), v2 = sub_1BE54CABC(), (v26 = *(v1 + 16)) != 0))
  {
    v3 = 0;
    v24 = v1;
    v25 = v1 + 32;
    while (v3 < *(v1 + 16))
    {
      v4 = *(v25 + v3);
      v27 = v3 + 1;
      sub_1BE54CD8C();
      switch(v4)
      {
        case 1:
        case 3:
          sub_1BE511AB4();
          break;
        default:
          break;
      }

      sub_1BE54C77C();

      v5 = sub_1BE54CDAC();
      v6 = ~(-1 << *(v2 + 32));
      v7 = v5 & v6;
      sub_1BE511B60();
      if ((v10 & v9) != 0)
      {
        while (1)
        {
          v11 = 0xEF6E6F6974617267;
          v12 = 0x65746E4969726973;
          switch(*(*(v2 + 48) + v7))
          {
            case 1:
              sub_1BE511AB4();
              v12 = v13 + 3;
              v11 = 0x80000001BE552A90;
              break;
            case 2:
              v12 = 0xD000000000000013;
              v11 = 0x80000001BE552AB0;
              break;
            case 3:
              sub_1BE511AB4();
              v12 = v14 + 5;
              v11 = 0x80000001BE552AD0;
              break;
            default:
              break;
          }

          v15 = 0x65746E4969726973;
          v16 = 0xEF6E6F6974617267;
          switch(v4)
          {
            case 1:
              sub_1BE511AB4();
              v15 = v17 + 3;
              v16 = 0x80000001BE552A90;
              break;
            case 2:
              v15 = 0xD000000000000013;
              v16 = 0x80000001BE552AB0;
              break;
            case 3:
              sub_1BE511AB4();
              v15 = v18 + 5;
              v16 = 0x80000001BE552AD0;
              break;
            default:
              break;
          }

          if (v12 == v15 && v11 == v16)
          {
            break;
          }

          v20 = sub_1BE54CCDC();

          if (v20)
          {
            goto LABEL_25;
          }

          v7 = (v7 + 1) & v6;
          sub_1BE511B60();
          if ((v9 & v10) == 0)
          {
            goto LABEL_22;
          }
        }
      }

      else
      {
LABEL_22:
        *(v2 + 56 + 8 * v8) = v9 | v10;
        *(*(v2 + 48) + v7) = v4;
        v21 = *(v2 + 16);
        v22 = __OFADD__(v21, 1);
        v23 = v21 + 1;
        if (v22)
        {
          goto LABEL_28;
        }

        *(v2 + 16) = v23;
      }

LABEL_25:
      v3 = v27;
      v1 = v24;
      if (v27 == v26)
      {
        goto LABEL_26;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {
LABEL_26:
  }
}

void sub_1BE5109EC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1BE54C6DC();

  [a3 setName_];
}

void sub_1BE510A50(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = sub_1BE54C6DC();

  [a4 setProperty:a1 forKey:v6];
}

id sub_1BE510ACC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1BE54C6DC();

  v5 = [a3 groupSpecifierWithName_];

  return v5;
}

uint64_t type metadata accessor for GenerativePartnerServicePSSettingsManager(uint64_t a1)
{
  result = qword_1EBDACD58;
  if (!qword_1EBDACD58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BE510B7C(uint64_t a1, void *a2)
{
  v3 = sub_1BE54C5DC();

  [a2 setProperties_];
}

uint64_t sub_1BE510BFC(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_1BE510CF0;

  return v5(v2 + 32);
}

uint64_t sub_1BE510CF0()
{
  v1 = *(*v0 + 16);
  v5 = *v0;
  sub_1BE4E01C4();
  *v2 = v5;

  *v1 = *(v5 + 32);
  sub_1BE4E01E0();

  return v3();
}

void sub_1BE510DF8(void *a1, uint64_t a2)
{
  swift_getObjectType();
  v4 = sub_1BE5412A4();
  v5 = v4;
  v6 = *(v4 + 16);
  if (v6)
  {
    v7 = 0;
    v8 = v4 + 32;
    while (1)
    {
      if (v7 >= *(v5 + 16))
      {
        __break(1u);
        goto LABEL_17;
      }

      sub_1BE51196C(v8, &v28);
      Strong = swift_unknownObjectWeakLoadStrong();
      sub_1BE5119C8(&v28);
      if (Strong)
      {
        swift_unknownObjectRelease();
        if (Strong == a1)
        {
          break;
        }
      }

      ++v7;
      v8 += 16;
      if (v6 == v7)
      {
        goto LABEL_7;
      }
    }

    if (qword_1EDDD63E0 != -1)
    {
      swift_once();
    }

    v12 = sub_1BE54B2EC();
    sub_1BE4C52BC(v12, qword_1EDDD7030);
    v13 = a1;
    v14 = sub_1BE54B2BC();
    v15 = sub_1BE54C98C();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v27 = v17;
      *v16 = 136446722;
      nullsub_1();
      v18 = sub_1BE54CE0C();
      v20 = sub_1BE4C5338(v18, v19, &v27);

      *(v16 + 4) = v20;
      *(v16 + 12) = 2082;
      *(v16 + 14) = sub_1BE4C5338(0xD000000000000014, 0x80000001BE554D40, &v27);
      *(v16 + 22) = 2082;
      v28 = v13;
      v29 = &protocol witness table for GenerativePartnerServicePSSettingsManager;
      v21 = v13;
      sub_1BE4BF11C(&qword_1EBDACDA0, &qword_1BE5506B0);
      v22 = sub_1BE54C73C();
      v24 = sub_1BE4C5338(v22, v23, &v27);

      *(v16 + 24) = v24;
      _os_log_impl(&dword_1BE4B8000, v14, v15, "%{public}s.%{public}s: observer %{public}s already registered. Ignoring.", v16, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1BFB48AC0](v17, -1, -1);
      MEMORY[0x1BFB48AC0](v16, -1, -1);
    }
  }

  else
  {
LABEL_7:

    v29 = &protocol witness table for GenerativePartnerServicePSSettingsManager;
    swift_unknownObjectWeakInit();
    v5 = OBJC_IVAR____TtC26GenerativePartnerServiceUI36GenerativePartnerServiceUserDefaults____lazy_storage___observers;
    a1 = *(a2 + OBJC_IVAR____TtC26GenerativePartnerServiceUI36GenerativePartnerServiceUserDefaults____lazy_storage___observers);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_17:
      sub_1BE541EB8(0, a1[2] + 1, 1, a1);
      a1 = v25;
    }

    v11 = a1[2];
    v10 = a1[3];
    if (v11 >= v10 >> 1)
    {
      sub_1BE541EB8(v10 > 1, v11 + 1, 1, a1);
      a1 = v26;
    }

    a1[2] = v11 + 1;
    sub_1BE511A1C(&v28, &a1[2 * v11 + 4]);
    *(a2 + v5) = a1;
  }
}

uint64_t sub_1BE511118()
{
  sub_1BE4E4418();
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  v4 = sub_1BE4E4408(v3);
  *v4 = v5;
  v4[1] = sub_1BE511A78;
  v6 = sub_1BE511A7C();

  return sub_1BE50E3D8(v6, v7, v1, v2);
}

uint64_t sub_1BE5111B8()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = swift_task_alloc();
  v6 = sub_1BE4E4408(v5);
  *v6 = v7;
  v6[1] = sub_1BE511270;
  v8 = sub_1BE511A7C();

  return sub_1BE50E2CC(v8, v9, v1, v2, v3, v4);
}

uint64_t sub_1BE511270()
{
  v1 = *v0;
  sub_1BE4E01C4();
  *v2 = v1;

  sub_1BE4E01E0();

  return v3();
}

uint64_t sub_1BE511358()
{
  v1 = sub_1BE54B12C();
  sub_1BE4C7570(v1);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = swift_task_alloc();
  v5 = sub_1BE4E4408(v4);
  *v5 = v6;
  v5[1] = sub_1BE511A78;
  v7 = sub_1BE511A7C();

  return sub_1BE50EE4C(v7, v8, v2, v3, v9);
}

void sub_1BE511444(uint64_t a1)
{
  sub_1BE511580(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1BE511580(uint64_t a1)
{
  if (!qword_1EBDACD68)
  {
    sub_1BE4C5948(&qword_1EBDACCD8, &qword_1BE550500);
    v1 = sub_1BE54B08C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBDACD68);
    }
  }
}

uint64_t sub_1BE5115E4()
{
  sub_1BE4E4418();
  sub_1BE511B80();
  v0 = swift_task_alloc();
  v1 = sub_1BE4E4408(v0);
  *v1 = v2;
  v3 = sub_1BE4E43CC(v1);

  return v4(v3);
}

uint64_t sub_1BE511674()
{
  sub_1BE4E4418();
  sub_1BE511B80();
  v0 = swift_task_alloc();
  v1 = sub_1BE4E4408(v0);
  *v1 = v2;
  v3 = sub_1BE4E43CC(v1);

  return v4(v3);
}

uint64_t sub_1BE51170C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_1BE4BF11C(a3, a4);
  sub_1BE50A884();
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1BE511770(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1BE5117B8()
{
  sub_1BE4E4418();
  sub_1BE511B80();
  v0 = swift_task_alloc();
  v1 = sub_1BE4E4408(v0);
  *v1 = v2;
  v3 = sub_1BE4E43CC(v1);

  return v4(v3);
}

uint64_t sub_1BE511848(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  sub_1BE4BF11C(a2, a3);
  sub_1BE50A884();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1BE5118A4()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v5 = *(v0 + 48);
  v4 = *(v0 + 56);
  v6 = swift_task_alloc();
  v7 = sub_1BE4E4408(v6);
  *v7 = v8;
  v7[1] = sub_1BE511A78;
  v9 = sub_1BE511A7C();

  return sub_1BE50D97C(v9, v10, v1, v2, v3, v5, v4);
}

id sub_1BE511AE0(uint64_t a1, uint64_t a2, void *a3)
{

  return sub_1BE510218(a1, a2, a3, 0, 0, 0, 13, 0);
}

uint64_t sub_1BE511B20(uint64_t a1)
{
  sub_1BE4C63F8(*(v1 - 184), 1, 1, a1);

  return sub_1BE54C8CC();
}

uint64_t sub_1BE511BAC(void *a1)
{
  v2 = sub_1BE54AF6C();
  v3 = sub_1BE4C7570(v2);
  MEMORY[0x1EEE9AC00](v3, v4);
  sub_1BE4C757C();
  v23 = sub_1BE54AD8C();
  sub_1BE4C7500();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7, v8);
  sub_1BE4C757C();
  v22 = v10 - v9;
  v11 = sub_1BE54C6BC();
  v12 = sub_1BE4C7570(v11);
  MEMORY[0x1EEE9AC00](v12, v13);
  sub_1BE4C757C();
  v14 = sub_1BE51293C();
  v15 = sub_1BE4C7570(v14);
  MEMORY[0x1EEE9AC00](v15, v16);
  sub_1BE4C757C();
  sub_1BE54C68C();
  sub_1BE54C67C();
  v18 = a1[3];
  v17 = a1[4];
  sub_1BE4C52F4(a1, v18);
  v19 = *(v17 + 16);
  v19(v18, v17);
  sub_1BE54C66C();

  sub_1BE54C67C();
  v19(v18, v17);
  sub_1BE54C66C();

  sub_1BE54C67C();
  sub_1BE54C6AC();
  if (qword_1EBDABA88 != -1)
  {
    sub_1BE4CE5C4(&qword_1EBDABA88);
  }

  v20 = sub_1BE4C52BC(v23, qword_1EBDB0C08);
  (*(v6 + 16))(v22, v20, v23);
  sub_1BE54AF2C();
  return sub_1BE54ADBC();
}

uint64_t sub_1BE511E6C()
{
  v0 = sub_1BE54AF6C();
  v1 = sub_1BE4C7570(v0);
  MEMORY[0x1EEE9AC00](v1, v2);
  sub_1BE4C757C();
  sub_1BE5128E8();
  v3 = sub_1BE54AD8C();
  sub_1BE4C7500();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6, v7);
  sub_1BE4C757C();
  v10 = v9 - v8;
  v11 = sub_1BE54C6BC();
  v12 = sub_1BE4C7570(v11);
  MEMORY[0x1EEE9AC00](v12, v13);
  sub_1BE4C757C();
  v14 = sub_1BE51293C();
  v15 = sub_1BE4C7570(v14);
  MEMORY[0x1EEE9AC00](v15, v16);
  sub_1BE4C757C();
  sub_1BE54C68C();
  sub_1BE54C67C();
  sub_1BE54B24C();
  sub_1BE54B22C();
  sub_1BE54B20C();

  if (v24)
  {
    sub_1BE4C52F4(v23, v24);
    sub_1BE54B26C();
    sub_1BE4C58A8(v23);
  }

  else
  {
    sub_1BE4E4348(v23, &qword_1EBDAC550, &qword_1BE54F7D0);
  }

  sub_1BE54C66C();

  sub_1BE54C67C();
  sub_1BE54C6AC();
  if (qword_1EBDABA88 != -1)
  {
    sub_1BE4CE5C4(&qword_1EBDABA88);
  }

  v17 = sub_1BE4C52BC(v3, qword_1EBDB0C08);
  (*(v5 + 16))(v10, v17, v3);
  sub_1BE54AF2C();
  v18 = sub_1BE5128D0();
  return sub_1BE4CE6D0(v18, v19, v20, v21, v10);
}

uint64_t sub_1BE512114@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1BE54AF6C();
  v6 = sub_1BE4C7570(v5);
  MEMORY[0x1EEE9AC00](v6, v7);
  sub_1BE4C757C();
  sub_1BE5128E8();
  v8 = sub_1BE54AD8C();
  sub_1BE4C7500();
  MEMORY[0x1EEE9AC00](v9, v10);
  sub_1BE4C757C();
  sub_1BE51292C();
  v11 = sub_1BE54C6BC();
  v12 = sub_1BE4C7570(v11);
  MEMORY[0x1EEE9AC00](v12, v13);
  sub_1BE4C757C();
  v14 = sub_1BE51293C();
  v15 = sub_1BE4C7570(v14);
  MEMORY[0x1EEE9AC00](v15, v16);
  sub_1BE4C757C();
  v17 = sub_1BE4BF11C(&qword_1EBDABE68, &qword_1BE54E470);
  v18 = sub_1BE4C7570(v17);
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v38 - v20;
  static GenerativePartnerRestrictionUtils.restrictionReasonText.getter();
  v22 = sub_1BE54ADAC();
  if (sub_1BE4C63BC(v21, 1, v22) != 1)
  {
    return (*(*(v22 - 8) + 32))(a2, v21, v22);
  }

  sub_1BE4E4348(v21, &qword_1EBDABE68, &qword_1BE54E470);
  sub_1BE5124C4(a1, &v39);
  if (v40)
  {
    sub_1BE4BF094(&v39, v41);
    sub_1BE54C68C();
    sub_1BE54C67C();
    v23 = v42;
    v24 = v43;
    sub_1BE4C52F4(v41, v42);
    (*(v24 + 16))(v23, v24);
    sub_1BE54C66C();

    sub_1BE54C67C();
    sub_1BE54C6AC();
    if (qword_1EBDABA88 != -1)
    {
      sub_1BE4CE5C4(&qword_1EBDABA88);
    }

    sub_1BE4C52BC(v8, qword_1EBDB0C08);
    v25 = sub_1BE512958();
    v26(v25);
    sub_1BE54AF2C();
    v27 = sub_1BE5128D0();
    sub_1BE4CE6D0(v27, v28, v29, v30, v2);
    return sub_1BE4C58A8(v41);
  }

  else
  {
    sub_1BE4E4348(&v39, &qword_1EBDABAF8, &qword_1BE54DC20);
    sub_1BE54C65C();
    if (qword_1EBDABA88 != -1)
    {
      sub_1BE4CE5C4(&qword_1EBDABA88);
    }

    sub_1BE4C52BC(v8, qword_1EBDB0C08);
    v32 = sub_1BE512958();
    v33(v32);
    sub_1BE54AF2C();
    v34 = sub_1BE5128D0();
    return sub_1BE4CE6D0(v34, v35, v36, v37, v2);
  }
}

uint64_t sub_1BE5124C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BE4BF11C(&qword_1EBDABAF8, &qword_1BE54DC20);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BE512534()
{
  v0 = sub_1BE54AF6C();
  v1 = sub_1BE4C7570(v0);
  MEMORY[0x1EEE9AC00](v1, v2);
  sub_1BE4C757C();
  v3 = sub_1BE54AD8C();
  sub_1BE4C7500();
  MEMORY[0x1EEE9AC00](v4, v5);
  sub_1BE4C757C();
  sub_1BE5128E8();
  v6 = sub_1BE54C6BC();
  v7 = sub_1BE4C7570(v6);
  MEMORY[0x1EEE9AC00](v7, v8);
  sub_1BE4C757C();
  sub_1BE51292C();
  v9 = sub_1BE54ADAC();
  sub_1BE51286C(v9, qword_1EBDB0BC0);
  sub_1BE4C52BC(v9, qword_1EBDB0BC0);
  sub_1BE54C65C();
  if (qword_1EBDABA88 != -1)
  {
    sub_1BE4CE5C4(&qword_1EBDABA88);
  }

  sub_1BE4C52BC(v3, qword_1EBDB0C08);
  v10 = sub_1BE51296C();
  v11(v10);
  sub_1BE54AF2C();
  return sub_1BE5128F8();
}

uint64_t sub_1BE5126D4()
{
  v0 = sub_1BE54AF6C();
  v1 = sub_1BE4C7570(v0);
  MEMORY[0x1EEE9AC00](v1, v2);
  sub_1BE4C757C();
  v3 = sub_1BE54AD8C();
  sub_1BE4C7500();
  MEMORY[0x1EEE9AC00](v4, v5);
  sub_1BE4C757C();
  sub_1BE5128E8();
  v6 = sub_1BE54C6BC();
  v7 = sub_1BE4C7570(v6);
  MEMORY[0x1EEE9AC00](v7, v8);
  sub_1BE4C757C();
  sub_1BE51292C();
  v9 = sub_1BE54ADAC();
  sub_1BE51286C(v9, qword_1EBDB0BD8);
  sub_1BE4C52BC(v9, qword_1EBDB0BD8);
  sub_1BE54C65C();
  if (qword_1EBDABA88 != -1)
  {
    sub_1BE4CE5C4(&qword_1EBDABA88);
  }

  sub_1BE4C52BC(v3, qword_1EBDB0C08);
  v10 = sub_1BE51296C();
  v11(v10);
  sub_1BE54AF2C();
  return sub_1BE5128F8();
}

uint64_t *sub_1BE51286C(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_1BE5128F8()
{

  return sub_1BE54ADBC();
}

uint64_t sub_1BE51293C()
{

  return sub_1BE54C69C();
}

uint64_t sub_1BE512980(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1BE5129C8(uint64_t *a1, int a2)
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

uint64_t sub_1BE512A08(uint64_t result, int a2, int a3)
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

uint64_t sub_1BE512AA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == 4)
  {
    return 0;
  }

  type metadata accessor for CGVector(0, a2, a3, a4);
  return sub_1BE54C61C();
}

uint64_t sub_1BE512B1C()
{
  v0 = sub_1BE54C69C();
  MEMORY[0x1EEE9AC00](v0 - 8, v1);
  sub_1BE4C757C();
  v2 = sub_1BE54AF6C();
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  sub_1BE4C757C();
  v4 = sub_1BE54AD8C();
  sub_1BE4C7500();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7, v8);
  sub_1BE4C757C();
  v11 = v10 - v9;
  v12 = sub_1BE54C6BC();
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  sub_1BE4C757C();
  v14 = *(sub_1BE513070() + 16);

  switch(v14)
  {
    case 0:
      sub_1BE54C65C();
      goto LABEL_18;
    case 1:
      sub_1BE54C68C();
      sub_1BE516B44();
      result = sub_1BE513070();
      if (!*(result + 16))
      {
        goto LABEL_23;
      }

      v20 = result + 32;
      goto LABEL_17;
    case 2:
      sub_1BE54C68C();
      sub_1BE516B44();
      result = sub_1BE513070();
      if (!*(result + 16))
      {
        __break(1u);
LABEL_22:
        __break(1u);
LABEL_23:
        __break(1u);
LABEL_24:
        __break(1u);
LABEL_25:
        __break(1u);
LABEL_26:
        __break(1u);
LABEL_27:
        __break(1u);
LABEL_28:
        __break(1u);
LABEL_29:
        __break(1u);
LABEL_30:
        __break(1u);
        return result;
      }

      sub_1BE516BD4(result);

      v16 = sub_1BE516B10();
      v18 = v17(v16);
      sub_1BE516BBC(v18, v19);

      sub_1BE4C58A8(v46);
      sub_1BE54C67C();
      result = sub_1BE513070();
      if (*(result + 16) < 2uLL)
      {
        goto LABEL_25;
      }

      v20 = result + 72;
LABEL_17:
      sub_1BE4C6918(v20, v46);

      v41 = sub_1BE516B10();
      v43 = v42(v41);
      sub_1BE516BBC(v43, v44);

      sub_1BE4C58A8(v46);
      sub_1BE54C67C();
      sub_1BE54C6AC();
LABEL_18:
      if (qword_1EBDABA88 != -1)
      {
        swift_once();
      }

      v45 = sub_1BE4C52BC(v4, qword_1EBDB0C08);
      (*(v6 + 16))(v11, v45, v4);
      sub_1BE54AF2C();
      return sub_1BE54ADBC();
    case 3:
      sub_1BE54C68C();
      sub_1BE516B44();
      result = sub_1BE513070();
      if (!*(result + 16))
      {
        goto LABEL_22;
      }

      sub_1BE516BD4(result);

      v21 = sub_1BE516B10();
      v23 = v22(v21);
      sub_1BE516BBC(v23, v24);

      sub_1BE516BF0();
      result = sub_1BE513070();
      if (*(result + 16) < 2uLL)
      {
        goto LABEL_26;
      }

      sub_1BE4C6918(result + 72, v46);

      v25 = sub_1BE516B10();
      v27 = v26(v25);
      sub_1BE516BBC(v27, v28);

      sub_1BE4C58A8(v46);
      sub_1BE516C20();
      result = sub_1BE513070();
      if (*(result + 16) < 3uLL)
      {
        goto LABEL_28;
      }

      v20 = result + 112;
      goto LABEL_17;
    default:
      sub_1BE54C68C();
      sub_1BE516B44();
      result = sub_1BE513070();
      if (!*(result + 16))
      {
        goto LABEL_24;
      }

      sub_1BE516BD4(result);

      v29 = sub_1BE516B10();
      v31 = v30(v29);
      sub_1BE516BBC(v31, v32);

      sub_1BE516BF0();
      result = sub_1BE513070();
      if (*(result + 16) < 2uLL)
      {
        goto LABEL_27;
      }

      sub_1BE4C6918(result + 72, v46);

      v33 = sub_1BE516B10();
      v35 = v34(v33);
      sub_1BE516BBC(v35, v36);

      sub_1BE516BF0();
      result = sub_1BE513070();
      if (*(result + 16) < 3uLL)
      {
        goto LABEL_29;
      }

      sub_1BE4C6918(result + 112, v46);

      v37 = sub_1BE516B10();
      v39 = v38(v37);
      sub_1BE516BBC(v39, v40);

      sub_1BE4C58A8(v46);
      sub_1BE516C20();
      result = sub_1BE513070();
      if (*(result + 16) < 4uLL)
      {
        goto LABEL_30;
      }

      v20 = result + 152;
      goto LABEL_17;
  }
}

uint64_t sub_1BE513070()
{
  if (qword_1EDDD6890 != -1)
  {
    swift_once();
  }

  v0 = off_1EDDD6898;
  sub_1BE53C930(v21);
  v1 = swift_beginAccess();
  v2 = v0[2];
  MEMORY[0x1EEE9AC00](v1, v3);
  v14[2] = v21;

  v4 = sub_1BE538DF8(sub_1BE516700, v14, v2);
  sub_1BE4BF11C(&qword_1EBDACF60, &unk_1BE5508E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BE54E1A0;
  sub_1BE4DCE50(v21, inited + 32, &qword_1EBDABAF8, &qword_1BE54DC20);
  v6 = sub_1BE52E1D4(v4);

  *&v18 = inited;
  sub_1BE4E0B88(v6);
  v7 = *(v18 + 16);
  if (v7)
  {
    v8 = MEMORY[0x1E69E7CC0];
    v9 = v18 + 32;
    do
    {
      sub_1BE4DCE50(v9, &v18, &qword_1EBDABAF8, &qword_1BE54DC20);
      v15[0] = v18;
      v15[1] = v19;
      v16 = v20;
      if (*(&v19 + 1))
      {
        sub_1BE4BF094(v15, v17);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1BE541FB8();
          v8 = v11;
        }

        v10 = *(v8 + 16);
        if (v10 >= *(v8 + 24) >> 1)
        {
          sub_1BE541FB8();
          v8 = v12;
        }

        *(v8 + 16) = v10 + 1;
        sub_1BE4BF094(v17, v8 + 40 * v10 + 32);
      }

      else
      {
        sub_1BE4D0E58(v15, &qword_1EBDABAF8, &qword_1BE54DC20);
      }

      v9 += 40;
      --v7;
    }

    while (v7);
  }

  else
  {

    v8 = MEMORY[0x1E69E7CC0];
  }

  sub_1BE4D0E58(v21, &qword_1EBDABAF8, &qword_1BE54DC20);
  return v8;
}

uint64_t sub_1BE51330C(void *a1, uint64_t a2)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1BE4C52F4(a1, v3);
  v5 = (*(v4 + 8))(v3, v4);
  v7 = v6;
  sub_1BE4DCE50(a2, v17, &qword_1EBDABAF8, &qword_1BE54DC20);
  v8 = v18;
  if (v18)
  {
    v9 = v19;
    sub_1BE4C52F4(v17, v18);
    v10 = (*(v9 + 8))(v8, v9);
    v12 = v11;
    sub_1BE4C58A8(v17);
    if (v5 == v10 && v7 == v12)
    {

      v15 = 0;
    }

    else
    {
      v14 = sub_1BE54CCDC();

      v15 = v14 ^ 1;
    }
  }

  else
  {
    sub_1BE4D0E58(v17, &qword_1EBDABAF8, &qword_1BE54DC20);

    v15 = 1;
  }

  return v15 & 1;
}

uint64_t sub_1BE513464@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v48 = a4;
  v49 = a2;
  v46 = a3;
  v47 = a1;
  v50 = a5;
  sub_1BE4C5948(&qword_1EBDACE30, &qword_1BE550778);
  sub_1BE4C5948(&qword_1EBDACE38, &unk_1BE550780);
  v5 = sub_1BE4D97D4();
  sub_1BE516C40(v5);
  sub_1BE4D97D4();
  sub_1BE54C3AC();
  sub_1BE516B68();
  swift_getWitnessTable();
  sub_1BE516B9C();
  sub_1BE54C2FC();
  sub_1BE4C5948(&qword_1EBDACE40, &qword_1BE551510);
  sub_1BE516B9C();
  sub_1BE54B79C();
  v6 = sub_1BE516BAC();
  sub_1BE516C40(v6);
  sub_1BE4D97D4();
  sub_1BE54C3AC();
  WitnessTable = swift_getWitnessTable();
  v7 = sub_1BE54C2CC();
  sub_1BE4C7500();
  v42 = v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &WitnessTable - v11;
  v13 = sub_1BE54B79C();
  sub_1BE4C7500();
  v43 = v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &WitnessTable - v17;
  v19 = sub_1BE54B79C();
  sub_1BE4C7500();
  v44 = v20;
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &WitnessTable - v23;
  v25 = sub_1BE54B79C();
  sub_1BE4C7500();
  v45 = v26;
  v29 = MEMORY[0x1EEE9AC00](v27, v28);
  v31 = &WitnessTable - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29, v32);
  v34 = &WitnessTable - v33;
  v51 = v46;
  v52 = v48;
  v53 = v47;
  v54 = v49;
  sub_1BE54BA4C();
  sub_1BE54C2BC();
  sub_1BE516B84();
  v35 = swift_getWitnessTable();
  sub_1BE54C17C();
  (*(v42 + 8))(v12, v7);
  sub_1BE54BE7C();
  v59 = v35;
  v60 = MEMORY[0x1E697EBE0];
  v36 = swift_getWitnessTable();
  sub_1BE54C13C();
  (*(v43 + 8))(v18, v13);
  sub_1BE54BE3C();
  v37 = MEMORY[0x1E697E5D8];
  v57 = v36;
  v58 = MEMORY[0x1E697E5D8];
  v38 = swift_getWitnessTable();
  sub_1BE54C13C();
  (*(v44 + 8))(v24, v19);
  v55 = v38;
  v56 = v37;
  swift_getWitnessTable();
  sub_1BE4D96B0();
  v39 = *(v45 + 8);
  v39(v31, v25);
  sub_1BE4D96B0();
  return (v39)(v34, v25);
}

uint64_t sub_1BE513930@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v59 = a4;
  v67 = a2;
  v64 = a1;
  v69 = a5;
  sub_1BE4C5948(&qword_1EBDACE38, &unk_1BE550780);
  v52 = a3;
  swift_getTupleTypeMetadata2();
  v62 = sub_1BE54C3AC();
  WitnessTable = swift_getWitnessTable();
  v58 = sub_1BE54C2FC();
  v65 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58, v6);
  v57 = &v50[-v7];
  sub_1BE4C5948(&qword_1EBDACE40, &qword_1BE551510);
  v66 = sub_1BE54B79C();
  v68 = *(v66 - 8);
  v9 = MEMORY[0x1EEE9AC00](v66, v8);
  v56 = &v50[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9, v11);
  v63 = &v50[-v12];
  v13 = sub_1BE4BF11C(&qword_1EBDACE30, &qword_1BE550778);
  v55 = v13;
  v15 = MEMORY[0x1EEE9AC00](v13, v14);
  v60 = &v50[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = MEMORY[0x1EEE9AC00](v15, v17);
  v20 = &v50[-v19];
  MEMORY[0x1EEE9AC00](v18, v21);
  v54 = &v50[-v22];
  v53 = sub_1BE54C1BC();
  sub_1BE513070();

  sub_1BE54C39C();
  sub_1BE54B69C();
  v23 = v77[4];
  v51 = v78;
  v24 = v79;
  v25 = v80;
  v27 = v81;
  v26 = v82;
  v28 = sub_1BE54C39C();
  v30 = v29;
  v31 = &v20[*(v13 + 36)];
  v32 = a3;
  v33 = v59;
  sub_1BE513F68(v32, v59, v31);
  v34 = (v31 + *(sub_1BE4BF11C(&qword_1EBDACE48, &unk_1BE550790) + 36));
  *v34 = v28;
  v34[1] = v30;
  *v20 = v53;
  *(v20 + 1) = v23;
  v20[16] = v51;
  *(v20 + 3) = v24;
  v20[32] = v25;
  *(v20 + 5) = v27;
  *(v20 + 6) = v26;
  v35 = v54;
  sub_1BE516950(v20, v54, &qword_1EBDACE30, &qword_1BE550778);
  sub_1BE54BB1C();
  v70 = v52;
  v71 = v33;
  v72 = v64;
  v73 = v67;
  v36 = v57;
  sub_1BE54C2EC();
  sub_1BE54BE8C();
  v37 = v58;
  v38 = swift_getWitnessTable();
  v39 = v56;
  sub_1BE54C0FC();

  (*(v65 + 8))(v36, v37);
  v40 = sub_1BE4C6A14(&qword_1EBDACE50, &qword_1EBDACE40, &qword_1BE551510, MEMORY[0x1E6980A18]);
  v77[2] = v38;
  v77[3] = v40;
  v41 = v66;
  v42 = swift_getWitnessTable();
  v43 = v63;
  sub_1BE4D96B0();
  v44 = v68;
  v45 = *(v68 + 8);
  v45(v39, v41);
  v46 = v35;
  v47 = v35;
  v48 = v60;
  sub_1BE4DCE50(v46, v60, &qword_1EBDACE30, &qword_1BE550778);
  v77[0] = v48;
  (*(v44 + 16))(v39, v43, v41);
  v77[1] = v39;
  v76[0] = v55;
  v76[1] = v41;
  v74 = sub_1BE515054();
  v75 = v42;
  sub_1BE4D13E8(v77, 2, v76);
  v45(v43, v41);
  sub_1BE4D0E58(v47, &qword_1EBDACE30, &qword_1BE550778);
  v45(v39, v41);
  return sub_1BE4D0E58(v48, &qword_1EBDACE30, &qword_1BE550778);
}

uint64_t sub_1BE513F68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v30[1] = a3;
  v5 = sub_1BE4BF11C(&qword_1EBDACE80, &qword_1BE5507D8);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = (v30 - v7);
  v9 = sub_1BE4BF11C(&qword_1EBDACE88, &qword_1BE5507E0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = v30 - v11;
  v13 = sub_1BE4BF11C(&qword_1EBDACE90, &qword_1BE5507E8);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = v30 - v15;
  v17 = *(sub_1BE513070() + 16);

  v21 = sub_1BE512AA0(v17, v18, v19, v20);
  if (v21)
  {
    v22 = v21;
    *v8 = sub_1BE54C39C();
    v8[1] = v23;
    sub_1BE4BF11C(&qword_1EBDACE98, &qword_1BE5507F0);
    sub_1BE5149BC(v22, v17, a1, a2);

    *(v8 + *(v5 + 36)) = 0x4000000000000000;
    sub_1BE4DCE50(v8, v12, &qword_1EBDACE80, &qword_1BE5507D8);
    swift_storeEnumTagMultiPayload();
    sub_1BE4C6A14(&qword_1EBDACEA0, &qword_1EBDACE90, &qword_1BE5507E8, MEMORY[0x1E697CD00]);
    sub_1BE5161E4();
    sub_1BE54BC0C();
    v24 = v8;
    v25 = &qword_1EBDACE80;
    v26 = &qword_1BE5507D8;
  }

  else
  {
    *v16 = sub_1BE54C39C();
    *(v16 + 1) = v27;
    *(v16 + 2) = 0;
    v16[24] = 0;
    *(v16 + 4) = 0;
    v16[40] = 0;
    v28 = sub_1BE4BF11C(&qword_1EBDACED0, &qword_1BE550808);
    sub_1BE514284(&v16[*(v28 + 44)]);
    sub_1BE4DCE50(v16, v12, &qword_1EBDACE90, &qword_1BE5507E8);
    swift_storeEnumTagMultiPayload();
    sub_1BE4C6A14(&qword_1EBDACEA0, &qword_1EBDACE90, &qword_1BE5507E8, MEMORY[0x1E697CD00]);
    sub_1BE5161E4();
    sub_1BE54BC0C();
    v24 = v16;
    v25 = &qword_1EBDACE90;
    v26 = &qword_1BE5507E8;
  }

  return sub_1BE4D0E58(v24, v25, v26);
}

uint64_t sub_1BE514284@<X0>(uint64_t a3@<X8>)
{
  v24 = a3;
  v3 = sub_1BE4BF11C(&qword_1EBDACED8, &qword_1BE550810);
  v4 = v3 - 8;
  v6 = MEMORY[0x1EEE9AC00](v3, v5);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v6, v9);
  v12 = &v23 - v11;
  v14 = MEMORY[0x1EEE9AC00](v10, v13);
  v16 = &v23 - v15;
  MEMORY[0x1EEE9AC00](v14, v17);
  v19 = &v23 - v18;
  *v19 = 0;
  v19[8] = 1;
  sub_1BE514478(&v23 + *(v4 + 44) - v18);
  *v16 = 0;
  v16[8] = 1;
  sub_1BE514718(&v16[*(v4 + 44)]);
  sub_1BE4DCE50(v19, v12, &qword_1EBDACED8, &qword_1BE550810);
  sub_1BE4DCE50(v16, v8, &qword_1EBDACED8, &qword_1BE550810);
  v20 = v24;
  sub_1BE4DCE50(v12, v24, &qword_1EBDACED8, &qword_1BE550810);
  v21 = sub_1BE4BF11C(&qword_1EBDACEE0, &qword_1BE550818);
  sub_1BE4DCE50(v8, v20 + *(v21 + 48), &qword_1EBDACED8, &qword_1BE550810);
  sub_1BE4D0E58(v16, &qword_1EBDACED8, &qword_1BE550810);
  sub_1BE4D0E58(v19, &qword_1EBDACED8, &qword_1BE550810);
  sub_1BE4D0E58(v8, &qword_1EBDACED8, &qword_1BE550810);
  return sub_1BE4D0E58(v12, &qword_1EBDACED8, &qword_1BE550810);
}

uint64_t sub_1BE514478@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for ExternalAIPartnerIconView(0);
  v4 = MEMORY[0x1EEE9AC00](v2, v3);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v4, v7);
  v10 = &v22 - v9;
  v12 = MEMORY[0x1EEE9AC00](v8, v11);
  v14 = (&v22 - v13);
  MEMORY[0x1EEE9AC00](v12, v15);
  v17 = (&v22 - v16);
  result = sub_1BE513070();
  if (*(result + 16))
  {
    sub_1BE4C6918(result + 32, v17 + v2[6]);

    *v17 = swift_getKeyPath();
    sub_1BE4BF11C(&qword_1EBDACEE8, &qword_1BE550850);
    swift_storeEnumTagMultiPayload();
    v19 = v2[5];
    *(v17 + v19) = swift_getKeyPath();
    sub_1BE4BF11C(&qword_1EBDACEF0, &unk_1BE5519A0);
    swift_storeEnumTagMultiPayload();
    *(v17 + v2[7]) = 0;
    result = sub_1BE513070();
    if (*(result + 16) >= 2uLL)
    {
      sub_1BE4C6918(result + 72, v14 + v2[6]);

      *v14 = swift_getKeyPath();
      swift_storeEnumTagMultiPayload();
      v20 = v2[5];
      *(v14 + v20) = swift_getKeyPath();
      swift_storeEnumTagMultiPayload();
      *(v14 + v2[7]) = 0;
      sub_1BE5168F0(v17, v10, type metadata accessor for ExternalAIPartnerIconView);
      sub_1BE5168F0(v14, v6, type metadata accessor for ExternalAIPartnerIconView);
      sub_1BE5168F0(v10, a1, type metadata accessor for ExternalAIPartnerIconView);
      v21 = sub_1BE4BF11C(&qword_1EBDACEF8, &unk_1BE550890);
      sub_1BE5168F0(v6, a1 + *(v21 + 48), type metadata accessor for ExternalAIPartnerIconView);
      sub_1BE516314(v14);
      sub_1BE516314(v17);
      sub_1BE516314(v6);
      return sub_1BE516314(v10);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1BE514718@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for ExternalAIPartnerIconView(0);
  v4 = MEMORY[0x1EEE9AC00](v2, v3);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v4, v7);
  v10 = &v22 - v9;
  v12 = MEMORY[0x1EEE9AC00](v8, v11);
  v14 = (&v22 - v13);
  MEMORY[0x1EEE9AC00](v12, v15);
  v17 = (&v22 - v16);
  result = sub_1BE513070();
  if (*(result + 16) < 3uLL)
  {
    __break(1u);
  }

  else
  {
    sub_1BE4C6918(result + 112, v17 + v2[6]);

    *v17 = swift_getKeyPath();
    sub_1BE4BF11C(&qword_1EBDACEE8, &qword_1BE550850);
    swift_storeEnumTagMultiPayload();
    v19 = v2[5];
    *(v17 + v19) = swift_getKeyPath();
    sub_1BE4BF11C(&qword_1EBDACEF0, &unk_1BE5519A0);
    swift_storeEnumTagMultiPayload();
    *(v17 + v2[7]) = 0;
    result = sub_1BE513070();
    if (*(result + 16) >= 4uLL)
    {
      sub_1BE4C6918(result + 152, v14 + v2[6]);

      *v14 = swift_getKeyPath();
      swift_storeEnumTagMultiPayload();
      v20 = v2[5];
      *(v14 + v20) = swift_getKeyPath();
      swift_storeEnumTagMultiPayload();
      *(v14 + v2[7]) = 0;
      sub_1BE5168F0(v17, v10, type metadata accessor for ExternalAIPartnerIconView);
      sub_1BE5168F0(v14, v6, type metadata accessor for ExternalAIPartnerIconView);
      sub_1BE5168F0(v10, a1, type metadata accessor for ExternalAIPartnerIconView);
      v21 = sub_1BE4BF11C(&qword_1EBDACEF8, &unk_1BE550890);
      sub_1BE5168F0(v6, a1 + *(v21 + 48), type metadata accessor for ExternalAIPartnerIconView);
      sub_1BE516314(v14);
      sub_1BE516314(v17);
      sub_1BE516314(v6);
      return sub_1BE516314(v10);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1BE5149BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1BE513070();

  swift_getKeyPath();
  v8 = swift_allocObject();
  v8[2] = a3;
  v8[3] = a4;
  v8[4] = a1;
  v8[5] = a2;

  sub_1BE4BF11C(&qword_1EBDACF00, &qword_1BE5508B8);
  sub_1BE4BF11C(&qword_1EBDACF08, &qword_1BE5508C0);
  sub_1BE51637C();
  sub_1BE5164E0();
  return sub_1BE54C32C();
}

uint64_t sub_1BE514AD0@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_1BE4BF11C(&qword_1EBDACF50, &qword_1BE5508D8);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = (&v30 - v10);
  v12 = sub_1BE4BF11C(&qword_1EBDACF40, &qword_1BE5508D0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v30 - v14;
  if (*(a2 + 16))
  {
    v16 = *a1;
    v17 = sub_1BE52F80C(v16);
    if (v18)
    {
      v19 = (*(a2 + 56) + 16 * v17);
      v20 = *v19;
      v21 = v19[1];
      result = sub_1BE513070();
      if ((v16 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else
      {
        v23 = result;
        if (v16 < *(result + 16))
        {
          v24 = type metadata accessor for ExternalAIPartnerIconView(0);
          sub_1BE4C6918(v23 + 40 * v16 + 32, v11 + v24[6]);

          *v11 = swift_getKeyPath();
          sub_1BE4BF11C(&qword_1EBDACEE8, &qword_1BE550850);
          swift_storeEnumTagMultiPayload();
          v25 = v24[5];
          *(v11 + v25) = swift_getKeyPath();
          sub_1BE4BF11C(&qword_1EBDACEF0, &unk_1BE5519A0);
          swift_storeEnumTagMultiPayload();
          *(v11 + v24[7]) = a3 == 1;
          v26 = (v11 + *(v8 + 36));
          *v26 = v20;
          v26[1] = v21;
          v27 = a3 == 4 || a3 == 1;
          v28 = -1.0;
          if (v16 != 1)
          {
            v28 = 0.0;
          }

          if (v27)
          {
            v29 = 0.0;
          }

          else
          {
            v29 = v28;
          }

          sub_1BE516950(v11, v15, &qword_1EBDACF50, &qword_1BE5508D8);
          *&v15[*(v12 + 36)] = v29;
          sub_1BE516950(v15, a4, &qword_1EBDACF40, &qword_1BE5508D0);
          return sub_1BE4C63F8(a4, 0, 1, v12);
        }
      }

      __break(1u);
      return result;
    }
  }

  return sub_1BE4C63F8(a4, 1, 1, v12);
}

uint64_t sub_1BE514D80@<X0>(void (*a1)(void)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v27 = a1;
  v28 = a5;
  v7 = *(a3 - 8);
  v8 = MEMORY[0x1EEE9AC00](a1, a2);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v11);
  v13 = &v25 - v12;
  v14 = sub_1BE54ADAC();
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v26 = a4;
  sub_1BE512B1C();
  v16 = sub_1BE54BF7C();
  v18 = v17;
  v20 = v19;
  v25 = v21;
  KeyPath = swift_getKeyPath();
  v27();
  sub_1BE4D96B0();
  v27 = *(v7 + 8);
  (v27)(v10, a3);
  v32 = v16;
  v33 = v18;
  v34 = v20 & 1;
  v35 = v25;
  v36 = KeyPath;
  v37 = 0xC000000000000000;
  v38[0] = &v32;
  (*(v7 + 16))(v10, v13, a3);
  v38[1] = v10;
  sub_1BE4D91B0(v16, v18, v20 & 1);

  v31[0] = sub_1BE4BF11C(&qword_1EBDACE38, &unk_1BE550780);
  v31[1] = a3;
  v29 = sub_1BE51612C();
  v30 = v26;
  sub_1BE4D13E8(v38, 2, v31);
  sub_1BE4C68C8(v16, v18, v20 & 1);

  v23 = v27;
  (v27)(v13, a3);
  (v23)(v10, a3);
  sub_1BE4C68C8(v32, v33, v34);
}

unint64_t sub_1BE515054()
{
  result = qword_1EBDACE58;
  if (!qword_1EBDACE58)
  {
    sub_1BE4C5948(&qword_1EBDACE30, &qword_1BE550778);
    sub_1BE4FCEFC();
    sub_1BE4C6A14(&qword_1EBDACE60, &qword_1EBDACE48, &unk_1BE550790, MEMORY[0x1E697EC18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDACE58);
  }

  return result;
}

double sub_1BE51510C@<D0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v169 = a1;
  v153 = sub_1BE54BC5C();
  v152 = *(v153 - 8);
  v4 = MEMORY[0x1EEE9AC00](v153, v3);
  v151 = &v136 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4, v6);
  v150 = &v136 - v7;
  v149 = sub_1BE4BF11C(&qword_1EBDACFA0, &qword_1BE550990);
  v9 = MEMORY[0x1EEE9AC00](v149, v8);
  v156 = &v136 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v9, v11);
  v147 = &v136 - v13;
  MEMORY[0x1EEE9AC00](v12, v14);
  v167 = &v136 - v15;
  v143 = sub_1BE4BF11C(&qword_1EBDACFA8, &qword_1BE550998) - 8;
  MEMORY[0x1EEE9AC00](v143, v16);
  v145 = &v136 - v17;
  v18 = sub_1BE4BF11C(&qword_1EBDACFB0, &qword_1BE5509A0);
  v20 = MEMORY[0x1EEE9AC00](v18 - 8, v19);
  v155 = &v136 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v22);
  v166 = &v136 - v23;
  v161 = sub_1BE4BF11C(&qword_1EBDACFB8, &qword_1BE5509A8) - 8;
  v25 = MEMORY[0x1EEE9AC00](v161, v24);
  v154 = &v136 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25, v27);
  v164 = (&v136 - v28);
  v29 = sub_1BE4BF11C(&qword_1EBDAC240, &qword_1BE5509B0);
  MEMORY[0x1EEE9AC00](v29 - 8, v30);
  v160 = &v136 - v31;
  v32 = sub_1BE54B5FC();
  v33 = *(v32 - 8);
  v35 = MEMORY[0x1EEE9AC00](v32, v34);
  v37 = &v136 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35, v38);
  v40 = &v136 - v39;
  v144 = type metadata accessor for ExternalAIPartnerIconView(0);
  LODWORD(v159) = *(v1 + v144[7]);
  v41 = v144[5];
  sub_1BE5369F8(v40);
  v42 = *MEMORY[0x1E697DBA8];
  v43 = v33 + 104;
  v168 = *(v33 + 104);
  v168(v37, v42, v32);
  v44 = sub_1BE54B5EC();
  v47 = *(v33 + 8);
  v46 = v33 + 8;
  v45 = v47;
  v47(v37, v32);
  v47(v40, v32);
  v48 = objc_opt_self();
  v49 = &selRef_tertiarySystemBackgroundColor;
  if ((v44 & 1) == 0)
  {
    v49 = &selRef_secondarySystemBackgroundColor;
  }

  v50 = [v48 *v49];
  v163 = sub_1BE54C1EC();
  v165 = v2;
  sub_1BE5369F8(v40);
  v168(v37, v42, v32);
  v51 = sub_1BE54B5EC();
  v45(v37, v32);
  v45(v40, v32);
  v52 = objc_opt_self();
  v53 = &selRef_secondarySystemBackgroundColor;
  if ((v51 & 1) == 0)
  {
    v53 = &selRef_systemBackgroundColor;
  }

  v54 = [v52 *v53];
  v162 = sub_1BE54C1EC();
  v141 = v41;
  sub_1BE5369F8(v40);
  v138 = v42;
  v139 = v43;
  v168(v37, v42, v32);
  v55 = sub_1BE54B5EC();
  v45(v37, v32);
  v136 = v40;
  v137 = v32;
  v142 = v46;
  v140 = v45;
  v45(v40, v32);
  v56 = objc_opt_self();
  v57 = &selRef_secondarySystemBackgroundColor;
  if ((v55 & 1) == 0)
  {
    v57 = &selRef_systemBackgroundColor;
  }

  v58 = [v56 *v57];
  v59 = sub_1BE54C1EC();
  v60 = sub_1BE54BEAC();
  v61 = v160;
  sub_1BE4C63F8(v160, 1, 1, v60);
  sub_1BE54BEEC();
  sub_1BE4D0E58(v61, &qword_1EBDAC240, &qword_1BE5509B0);
  sub_1BE54BECC();
  v157 = sub_1BE54BF1C();

  v62 = sub_1BE54C39C();
  v63 = v169;
  *v169 = v62;
  v63[1] = v64;
  v65 = sub_1BE54B7EC();
  v66 = *(v65 + 20);
  v67 = *MEMORY[0x1E697F468];
  v68 = sub_1BE54BAFC();
  v69 = *(v68 - 8);
  v70 = *(v69 + 104);
  v71 = v69 + 104;
  v72 = v164;
  v70(v164 + v66, v67, v68);
  __asm { FMOV            V0.2D, #7.0 }

  *v72 = _Q0;
  v78 = v143;
  *(v72 + *(v143 + 60)) = v59;
  v79 = v78;
  *(v72 + *(v78 + 64)) = 256;
  v148 = v59;

  LOBYTE(v66) = sub_1BE54BE4C();
  sub_1BE54B59C();
  v80 = v72 + *(v161 + 44);
  *v80 = v66;
  *(v80 + 1) = v81;
  *(v80 + 2) = v82;
  *(v80 + 3) = v83;
  *(v80 + 4) = v84;
  v80[40] = 0;
  v85 = v145;
  v86 = &v145[*(v65 + 20)];
  LODWORD(v161) = v67;
  v160 = v68;
  v159 = v70;
  v158 = v71;
  v70(v86, v67, v68);
  __asm { FMOV            V0.2D, #8.0 }

  v146 = _Q0;
  v88 = v85;
  *v85 = _Q0;
  *(v85 + *(v79 + 60)) = v163;
  *(v85 + *(v79 + 64)) = 256;

  sub_1BE54B64C();
  v89 = v85;
  v90 = v166;
  sub_1BE5168F0(v89, v166, MEMORY[0x1E697EAF0]);
  v91 = v90 + *(sub_1BE4BF11C(&qword_1EBDACFC0, &qword_1BE5509B8) + 36);
  v92 = v174;
  *v91 = v173;
  *(v91 + 16) = v92;
  *(v91 + 32) = v175;
  v93 = sub_1BE4BF11C(&qword_1EBDACFC8, &qword_1BE5509C0);
  *(v90 + *(v93 + 52)) = v162;
  *(v90 + *(v93 + 56)) = 256;
  v94 = v90 + *(sub_1BE4BF11C(&qword_1EBDACFD0, &qword_1BE5509C8) + 36);
  sub_1BE4DCE50(v88, v94, &qword_1EBDACFA8, &qword_1BE550998);

  v95 = sub_1BE54C39C();
  v97 = v96;
  sub_1BE4D0E58(v88, &qword_1EBDACFA8, &qword_1BE550998);
  v98 = (v94 + *(sub_1BE4BF11C(&qword_1EBDACFD8, &qword_1BE5509D0) + 36));
  *v98 = v95;
  v98[1] = v97;
  v99 = (v165 + v144[6]);
  v100 = v99[3];
  v101 = v99[4];
  sub_1BE4C52F4(v99, v100);
  (*(v101 + 96))(v100, v101);
  if (v102)
  {
    v103 = sub_1BE54C20C();
  }

  else
  {
    v103 = 0;
  }

  v104 = sub_1BE54C1AC();
  KeyPath = swift_getKeyPath();
  v106 = swift_getKeyPath();
  v107 = v157;

  sub_1BE54C39C();
  sub_1BE54B69C();
  v108 = v147;
  v109 = &v147[*(v149 + 36)];
  v149 = v65;
  v159(&v109[*(v65 + 20)], v161, v160);
  __asm { FMOV            V0.2D, #6.0 }

  *v109 = _Q0;
  v145 = sub_1BE4BF11C(&qword_1EBDACFE0, &qword_1BE550A38);
  *&v109[*(v145 + 9)] = 256;
  *v108 = v103;
  *(v108 + 8) = KeyPath;
  *(v108 + 16) = v104;
  *(v108 + 24) = v106;
  *(v108 + 32) = v107;
  v111 = v171;
  *(v108 + 40) = v170;
  *(v108 + 56) = v111;
  *(v108 + 72) = v172;
  sub_1BE516950(v108, v167, &qword_1EBDACFA0, &qword_1BE550990);
  v112 = v150;
  sub_1BE536BFC(v150);
  v113 = v151;
  sub_1BE54BC4C();
  LOBYTE(v108) = sub_1BE54BC2C();
  v114 = *(v152 + 8);
  v115 = v113;
  v116 = v153;
  v114(v115, v153);
  v114(v112, v116);
  if (v108)
  {
    sub_1BE54C1DC();
    v117 = v136;
    sub_1BE5369F8(v136);
    v118 = v137;
    v168(v37, v138, v137);
    sub_1BE54B5EC();
    v119 = v140;
    v140(v37, v118);
    v119(v117, v118);
    v120 = sub_1BE54C1CC();

    v168 = v120;
  }

  else
  {
    v168 = 0;
  }

  v121 = sub_1BE4BF11C(&qword_1EBDACFE8, &qword_1BE550A40);
  v122 = v169 + *(v121 + 44);
  v123 = v164;
  v124 = v154;
  sub_1BE4DCE50(v164, v154, &qword_1EBDACFB8, &qword_1BE5509A8);
  v125 = v166;
  v126 = v155;
  sub_1BE4DCE50(v166, v155, &qword_1EBDACFB0, &qword_1BE5509A0);
  v127 = v167;
  v128 = v156;
  sub_1BE4DCE50(v167, v156, &qword_1EBDACFA0, &qword_1BE550990);
  sub_1BE4DCE50(v124, v122, &qword_1EBDACFB8, &qword_1BE5509A8);
  v129 = sub_1BE4BF11C(&qword_1EBDACFF0, &qword_1BE550A48);
  sub_1BE4DCE50(v126, v122 + v129[12], &qword_1EBDACFB0, &qword_1BE5509A0);
  sub_1BE4DCE50(v128, v122 + v129[16], &qword_1EBDACFA0, &qword_1BE550990);
  *(v122 + v129[20]) = v168;
  sub_1BE4D0E58(v127, &qword_1EBDACFA0, &qword_1BE550990);
  sub_1BE4D0E58(v125, &qword_1EBDACFB0, &qword_1BE5509A0);
  sub_1BE4D0E58(v123, &qword_1EBDACFB8, &qword_1BE5509A8);

  sub_1BE4D0E58(v128, &qword_1EBDACFA0, &qword_1BE550990);
  sub_1BE4D0E58(v126, &qword_1EBDACFB0, &qword_1BE5509A0);
  sub_1BE4D0E58(v124, &qword_1EBDACFB8, &qword_1BE5509A8);
  sub_1BE54C39C();
  sub_1BE54B69C();

  v130 = sub_1BE4BF11C(&qword_1EBDACFF8, &qword_1BE550A50);
  v131 = v169;
  v132 = (v169 + *(v130 + 36));
  v133 = v177;
  *v132 = v176;
  v132[1] = v133;
  v132[2] = v178;
  v134 = v131 + *(sub_1BE4BF11C(&qword_1EBDAD000, &qword_1BE550A58) + 36);
  v159(&v134[*(v149 + 20)], v161, v160);
  result = *&v146;
  *v134 = v146;
  *&v134[*(v145 + 9)] = 256;
  return result;
}

uint64_t sub_1BE516034(uint64_t a1)
{
  v2 = sub_1BE54B5FC();
  MEMORY[0x1EEE9AC00](v2, v3);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_1BE54B86C();
}

unint64_t sub_1BE51612C()
{
  result = qword_1EBDACE68;
  if (!qword_1EBDACE68)
  {
    sub_1BE4C5948(&qword_1EBDACE38, &unk_1BE550780);
    sub_1BE4C6A14(&qword_1EBDACE70, &qword_1EBDACE78, &qword_1BE5507D0, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDACE68);
  }

  return result;
}

unint64_t sub_1BE5161E4()
{
  result = qword_1EBDACEA8;
  if (!qword_1EBDACEA8)
  {
    sub_1BE4C5948(&qword_1EBDACE80, &qword_1BE5507D8);
    sub_1BE4C6A14(&qword_1EBDACEB0, &qword_1EBDACEB8, &qword_1BE5507F8, MEMORY[0x1E6981880]);
    sub_1BE4C6A14(&qword_1EBDACEC0, &qword_1EBDACEC8, &qword_1BE550800, MEMORY[0x1E697FDC0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDACEA8);
  }

  return result;
}

uint64_t type metadata accessor for ExternalAIPartnerIconView(uint64_t a1)
{
  result = qword_1EBDACF78;
  if (!qword_1EBDACF78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BE516314(uint64_t a1)
{
  v2 = type metadata accessor for ExternalAIPartnerIconView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1BE51637C()
{
  result = qword_1EBDACF10;
  if (!qword_1EBDACF10)
  {
    sub_1BE4C5948(&qword_1EBDACF00, &qword_1BE5508B8);
    sub_1BE516400();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDACF10);
  }

  return result;
}

unint64_t sub_1BE516400()
{
  result = qword_1EBDACF18;
  if (!qword_1EBDACF18)
  {
    v1 = sub_1BE4C5948(&qword_1EBDACF20, &qword_1BE5508C8);
    sub_1BE51648C(v1, v2, v3);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDACF18);
  }

  return result;
}

unint64_t sub_1BE51648C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBDACF28;
  if (!qword_1EBDACF28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDACF28);
  }

  return result;
}

unint64_t sub_1BE5164E0()
{
  result = qword_1EBDACF30;
  if (!qword_1EBDACF30)
  {
    sub_1BE4C5948(&qword_1EBDACF08, &qword_1BE5508C0);
    sub_1BE516564();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDACF30);
  }

  return result;
}

unint64_t sub_1BE516564()
{
  result = qword_1EBDACF38;
  if (!qword_1EBDACF38)
  {
    sub_1BE4C5948(&qword_1EBDACF40, &qword_1BE5508D0);
    sub_1BE51661C();
    sub_1BE4C6A14(&qword_1EBDACEC0, &qword_1EBDACEC8, &qword_1BE550800, MEMORY[0x1E697FDC0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDACF38);
  }

  return result;
}

unint64_t sub_1BE51661C()
{
  result = qword_1EBDACF48;
  if (!qword_1EBDACF48)
  {
    sub_1BE4C5948(&qword_1EBDACF50, &qword_1BE5508D8);
    sub_1BE5166A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDACF48);
  }

  return result;
}

unint64_t sub_1BE5166A8()
{
  result = qword_1EBDACF58;
  if (!qword_1EBDACF58)
  {
    type metadata accessor for ExternalAIPartnerIconView(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDACF58);
  }

  return result;
}

void sub_1BE516748(uint64_t a1)
{
  sub_1BE516824(319, &qword_1EBDACF88, MEMORY[0x1E697F990]);
  if (v1 <= 0x3F)
  {
    sub_1BE516824(319, &qword_1EBDACF90, MEMORY[0x1E697DBD0]);
    if (v2 <= 0x3F)
    {
      sub_1BE516878();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1BE516824(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1BE54B62C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1BE516878()
{
  result = qword_1EBDACF98;
  if (!qword_1EBDACF98)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EBDACF98);
  }

  return result;
}

uint64_t sub_1BE5168F0(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1BE4C7470();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1BE516950(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_1BE4D97E0(a1, a2, a3, a4);
  sub_1BE4C7470();
  (*(v6 + 32))(v4, v5);
  return v4;
}

unint64_t sub_1BE5169A0()
{
  result = qword_1EBDAD008;
  if (!qword_1EBDAD008)
  {
    sub_1BE4C5948(&qword_1EBDAD000, &qword_1BE550A58);
    sub_1BE516A58();
    sub_1BE4C6A14(&qword_1EBDAD028, &qword_1EBDACFE0, &qword_1BE550A38, MEMORY[0x1E697DDB0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDAD008);
  }

  return result;
}

unint64_t sub_1BE516A58()
{
  result = qword_1EBDAD010;
  if (!qword_1EBDAD010)
  {
    sub_1BE4C5948(&qword_1EBDACFF8, &qword_1BE550A50);
    sub_1BE4C6A14(&qword_1EBDAD018, &qword_1EBDAD020, &unk_1BE550A60, MEMORY[0x1E6981880]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDAD010);
  }

  return result;
}

uint64_t sub_1BE516B10()
{
  v1 = *(v0 - 96);
  sub_1BE4C52F4((v0 - 120), v1);
  return v1;
}

uint64_t sub_1BE516B44()
{

  return sub_1BE54C67C();
}

uint64_t sub_1BE516BBC(uint64_t a1, uint64_t a2)
{

  return sub_1BE54C66C();
}

uint64_t sub_1BE516BD4(uint64_t a1)
{
  v3 = a1 + 32;

  return sub_1BE4C6918(v3, v1 - 120);
}

uint64_t sub_1BE516BF0()
{
  sub_1BE4C58A8((v0 - 120));

  return sub_1BE54C67C();
}

uint64_t sub_1BE516C20()
{

  return sub_1BE54C67C();
}

uint64_t sub_1BE516C40(uint64_t a1)
{

  return swift_getTupleTypeMetadata2();
}

uint64_t sub_1BE516C58(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v75 = a3;
  v9 = &qword_1BE550DA0;
  v10 = sub_1BE4BF11C(&qword_1EBDAC3A8, &qword_1BE550DA0);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v14 = &v67 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v15);
  sub_1BE4CE710();
  v72 = v16;
  sub_1BE4CE6F8();
  MEMORY[0x1EEE9AC00](v17, v18);
  sub_1BE4CE710();
  v71 = v19;
  sub_1BE4CE6F8();
  MEMORY[0x1EEE9AC00](v20, v21);
  sub_1BE4CE710();
  v74 = v22;
  sub_1BE4CE6F8();
  MEMORY[0x1EEE9AC00](v23, v24);
  sub_1BE4CE710();
  v70 = v25;
  sub_1BE4CE6F8();
  MEMORY[0x1EEE9AC00](v26, v27);
  v73 = &v67 - v28;
  v29 = 0;
  v68 = v14;
  v69 = a2;
  do
  {
    v30 = byte_1F3CCADA0[v29++ + 32];
    switch(v30)
    {
      case 2:
      case 4:
        v37 = v74;
        sub_1BE54C8DC();
        v38 = sub_1BE54C91C();
        sub_1BE519E6C(v38);
        sub_1BE519F64();
        v39 = swift_allocObject();
        *(sub_1BE519E1C(v39) + 64) = v30;
        v40 = v37;
        v41 = v71;
        sub_1BE51170C(v40, v71, &qword_1EBDAC3A8, &qword_1BE550DA0);
        sub_1BE519F88();
        v42 = a2;

        if (v30 == 1)
        {
          sub_1BE519F70(v41);
          v5 = 4096;
        }

        else
        {
          v57 = sub_1BE54C90C();
          sub_1BE50A884();
          (*(v58 + 8))(v41, v5);
          v5 = v57 | 0x1000;
        }

        v59 = *(v4 + 16);
        v60 = *(v4 + 24);
        swift_unknownObjectRetain();

        if (v59)
        {
          swift_getObjectType();
          sub_1BE54C87C();
          sub_1BE519EE8();
        }

        else
        {
          v9 = 0;
          v60 = 0;
        }

        if (v60 | v9)
        {
          v80 = 0;
          v81 = 0;
          v82 = v9;
          v83 = v60;
        }

        v9 = &qword_1BE550DA0;
        sub_1BE519ECC();
        v61 = v74;
        break;
      case 3:
        v43 = v72;
        sub_1BE54C8DC();
        v44 = sub_1BE54C91C();
        sub_1BE519E6C(v44);
        sub_1BE519F64();
        v45 = swift_allocObject();
        *(sub_1BE519E1C(v45) + 64) = 3;
        v46 = v68;
        sub_1BE51170C(v43, v68, &qword_1EBDAC3A8, &qword_1BE550DA0);
        v47 = sub_1BE4C63BC(v46, 1, v5);
        v48 = a1;
        v49 = v47;
        v50 = v48;

        v51 = a2;
        v52 = a4;

        if (v49 == 1)
        {
          sub_1BE519F70(v46);
          v5 = 4096;
        }

        else
        {
          v62 = sub_1BE54C90C();
          sub_1BE50A884();
          (*(v63 + 8))(v46, v5);
          v5 = v62 | 0x1000;
        }

        v64 = *(v4 + 16);
        v65 = *(v4 + 24);
        swift_unknownObjectRetain();

        a4 = v52;
        a1 = v50;
        if (v64)
        {
          swift_getObjectType();
          sub_1BE54C87C();
          sub_1BE519EE8();
        }

        else
        {
          v9 = 0;
          v65 = 0;
        }

        a2 = v69;
        if (v65 | v9)
        {
          v84 = 0;
          v85 = 0;
          v86 = v9;
          v87 = v65;
        }

        v9 = &qword_1BE550DA0;
        sub_1BE519ECC();
        v61 = v72;
        break;
      default:
        v31 = v73;
        sub_1BE54C8DC();
        v32 = sub_1BE54C91C();
        sub_1BE519E6C(v32);
        sub_1BE519F64();
        v33 = swift_allocObject();
        *(sub_1BE519E1C(v33) + 64) = v30;
        v34 = v31;
        v35 = v70;
        sub_1BE51170C(v34, v70, &qword_1EBDAC3A8, &qword_1BE550DA0);
        sub_1BE519F88();
        v36 = a2;

        if (v30 == 1)
        {
          sub_1BE519F70(v35);
          v5 = 4096;
        }

        else
        {
          v53 = sub_1BE54C90C();
          sub_1BE50A884();
          (*(v54 + 8))(v35, v5);
          v5 = v53 | 0x1000;
        }

        v55 = *(v4 + 16);
        v56 = *(v4 + 24);
        swift_unknownObjectRetain();

        if (v55)
        {
          swift_getObjectType();
          sub_1BE54C87C();
          sub_1BE519EE8();
        }

        else
        {
          v9 = 0;
          v56 = 0;
        }

        if (v56 | v9)
        {
          v76 = 0;
          v77 = 0;
          v78 = v9;
          v79 = v56;
        }

        v9 = &qword_1BE550DA0;
        sub_1BE519ECC();
        v61 = v73;
        break;
    }

    sub_1BE519F70(v61);
  }

  while (v29 != 5);
  return result;
}

uint64_t sub_1BE5171F0(char a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 32) = a5;
  *(v6 + 40) = a6;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 81) = a2;
  *(v6 + 80) = a1;
  return sub_1BE519E34();
}

uint64_t sub_1BE517210()
{
  sub_1BE4E01D4();
  v1 = *(v0 + 24);
  v2 = sub_1BE5175DC(*(v0 + 32), *(v0 + 40), *(v0 + 80));
  v3 = [v1 stringForKey_];
  *(v0 + 48) = v3;

  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  *v4 = v0;
  v4[1] = sub_1BE5172E8;
  v5 = *(v0 + 16);
  v6 = *(v0 + 81);
  v7 = *(v0 + 80);

  return sub_1BE5181C4(v3, v7, v6, v5);
}

uint64_t sub_1BE5172E8()
{
  sub_1BE4E4418();
  v3 = v2;
  sub_1BE4E0228();
  v5 = v4;
  v6 = *v1;
  sub_1BE4E01C4();
  *v7 = v6;
  *(v5 + 64) = v0;

  if (v0)
  {
    v8 = sub_1BE517488;
  }

  else
  {

    *(v5 + 72) = v3;
    v8 = sub_1BE517408;
  }

  return MEMORY[0x1EEE6DFA0](v8, 0, 0);
}

uint64_t sub_1BE517408()
{
  sub_1BE4E4418();
  v1 = *(v0 + 72);
  v2 = sub_1BE54C70C();
  v4 = v3;

  v5 = *(v0 + 8);

  return v5(v2, v4);
}

uint64_t sub_1BE517488()
{
  sub_1BE4E01D4();

  sub_1BE4E01E0();

  return v1();
}

uint64_t sub_1BE5174E4()
{
  if (qword_1EDDD6890 != -1)
  {
    swift_once();
  }

  sub_1BE53C930(v7);
  if (v8)
  {
    v0 = v9;
    sub_1BE4C52F4(v7, v8);
    v1 = sub_1BE50A968();
    v2(v1, v0);
    if (v6 == 1)
    {
      sub_1BE4C58A8(v7);
      return 0;
    }

    else
    {
      v3 = v5;
      sub_1BE4C58A8(v7);
    }
  }

  else
  {
    sub_1BE511848(v7, &qword_1EBDABAF8, &qword_1BE54DC20);
    return 0;
  }

  return v3;
}

uint64_t *sub_1BE5175DC(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = a3;
  if (a2)
  {
    v7[0] = a1;
    v7[1] = a2;

    MEMORY[0x1BFB47CA0](47, 0xE100000000000000);
    v5 = sub_1BE517700(v4);
    v3 = v7;
    MEMORY[0x1BFB47CA0](v5);
  }

  else
  {
    switch(a3)
    {
      case 2:
      case 4:
        sub_1BE4DCED0();
        break;
      default:
        break;
    }
  }

  sub_1BE54C6DC();
  sub_1BE50A968();

  return v3;
}

unint64_t sub_1BE517700(char a1)
{
  result = 0x496D616441707061;
  switch(a1)
  {
    case 1:
      result = 0x6C646E7542707061;
      break;
    case 2:
      result = 0xD000000000000017;
      break;
    case 3:
      result = 0xD000000000000013;
      break;
    case 4:
      result = 0xD00000000000001ALL;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1BE5177BC(uint64_t a1)
{
  sub_1BE54CC0C();
  sub_1BE50A968();

  if (v1 >= 5)
  {
    return 5;
  }

  else
  {
    return v1;
  }
}

unint64_t sub_1BE517828@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1BE5177BC(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_1BE517858@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1BE517700(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1BE5178A4()
{
  v0 = sub_1BE4BF11C(&qword_1EBDAD050, &qword_1BE550AE8);
  sub_1BE519994(v0, v1, v2);
  result = sub_1BE54C61C();
  qword_1EBDAD030 = result;
  return result;
}

uint64_t sub_1BE517900(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  *(v8 + 72) = a8;
  *(v8 + 32) = a6;
  *(v8 + 40) = a7;
  *(v8 + 24) = a5;
  return MEMORY[0x1EEE6DFA0](sub_1BE517928, 0, 0);
}

uint64_t sub_1BE517928()
{
  sub_1BE4E4418();
  v1 = *(v0 + 24);
  v2 = sub_1BE5175DC(*(v0 + 32), *(v0 + 40), *(v0 + 72));
  v3 = [v1 arrayForKey_];
  *(v0 + 48) = v3;

  v4 = sub_1BE519F28();
  *(v0 + 56) = v4;
  *(v4 + 16) = v3;
  v5 = swift_task_alloc();
  *(v0 + 64) = v5;
  sub_1BE4BF11C(&qword_1EBDAD070, &qword_1BE550B48);
  *v5 = v0;
  v5[1] = sub_1BE517A50;
  sub_1BE519E44();

  return MEMORY[0x1EEE6DDE0](v6);
}

uint64_t sub_1BE517A50()
{
  sub_1BE4E01D4();
  sub_1BE4E0228();
  v1 = *v0;
  sub_1BE4E01C4();
  *v2 = v1;

  v3 = sub_1BE50AAA4();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1BE517B50()
{
  sub_1BE4E4418();
  v4 = *(v0 + 48);
  if (*(v0 + 16))
  {
  }

  else
  {
    v6 = sub_1BE51914C(v1, v2, v3);
    v7 = sub_1BE519F40(&unk_1F3CCCC80, v6);
    sub_1BE519EB0(v7, v8);
  }

  sub_1BE4E01E0();

  return v5();
}

uint64_t sub_1BE517BE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  v14 = swift_task_alloc();
  *(v8 + 16) = v14;
  *v14 = v8;
  v14[1] = sub_1BE517CB0;

  return sub_1BE5171F0(a8, 0, a4, a5, a6, a7);
}

uint64_t sub_1BE517CB0()
{
  sub_1BE4E01D4();
  sub_1BE4E0228();
  v2 = *v1;
  sub_1BE4E01C4();
  *v3 = v2;

  if (!v0)
  {
  }

  sub_1BE4E01E0();

  return v4();
}

uint64_t sub_1BE517DA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  *(v8 + 88) = a8;
  *(v8 + 24) = a6;
  *(v8 + 32) = a7;
  *(v8 + 16) = a5;
  *(v8 + 40) = sub_1BE4BF11C(&qword_1EBDABEE8, &unk_1BE54F050);
  *(v8 + 48) = swift_task_alloc();
  *(v8 + 56) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BE517E54, 0, 0);
}

uint64_t sub_1BE517E54()
{
  sub_1BE4E4418();
  v1 = *(v0 + 16);
  v2 = sub_1BE5175DC(*(v0 + 24), *(v0 + 32), *(v0 + 88));
  v3 = [v1 URLForKey_];
  *(v0 + 64) = v3;

  v4 = sub_1BE519F28();
  *(v0 + 72) = v4;
  *(v4 + 16) = v3;
  v5 = swift_task_alloc();
  *(v0 + 80) = v5;
  *v5 = v0;
  v5[1] = sub_1BE517F5C;
  sub_1BE519E90();

  return MEMORY[0x1EEE6DDE0](v6);
}

uint64_t sub_1BE517F5C()
{
  sub_1BE4E01D4();
  sub_1BE4E0228();
  v1 = *v0;
  sub_1BE4E01C4();
  *v2 = v1;

  v3 = sub_1BE50AAA4();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1BE51805C()
{
  sub_1BE519F58();
  v1 = v0[6];
  sub_1BE51170C(v0[7], v1, &qword_1EBDABEE8, &unk_1BE54F050);
  v2 = sub_1BE54AE3C();
  v3 = sub_1BE4C63BC(v1, 1, v2);
  v4 = v0[7];
  v5 = v0[8];
  v6 = v0[6];
  if (v3 == 1)
  {
    v7 = sub_1BE511848(v0[6], &qword_1EBDABEE8, &unk_1BE54F050);
    v10 = sub_1BE51914C(v7, v8, v9);
    sub_1BE519F40(&unk_1F3CCCC80, v10);
    *v11 = 0;
    swift_willThrow();

    sub_1BE511848(v4, &qword_1EBDABEE8, &unk_1BE54F050);
  }

  else
  {

    sub_1BE511848(v4, &qword_1EBDABEE8, &unk_1BE54F050);
    sub_1BE511848(v6, &qword_1EBDABEE8, &unk_1BE54F050);
  }

  sub_1BE4E01E0();

  return v12();
}

uint64_t sub_1BE5181C4(uint64_t a1, char a2, char a3, uint64_t a4)
{
  *(v4 + 105) = a3;
  *(v4 + 104) = a2;
  *(v4 + 72) = a1;
  *(v4 + 80) = a4;
  return MEMORY[0x1EEE6DFA0](sub_1BE5181EC, 0, 0);
}

uint64_t sub_1BE5181EC()
{
  sub_1BE4E4418();
  v1 = v0[9];
  v2 = sub_1BE519F28();
  v0[11] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[12] = v3;
  sub_1BE4BF11C(&qword_1EBDAD038, &qword_1BE550AD8);
  *v3 = v0;
  v3[1] = sub_1BE5182DC;
  sub_1BE519E44();

  return MEMORY[0x1EEE6DDE0](v4);
}

uint64_t sub_1BE5182DC()
{
  sub_1BE4E01D4();
  sub_1BE4E0228();
  v1 = *v0;
  sub_1BE4E01C4();
  *v2 = v1;

  v3 = sub_1BE50AAA4();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1BE5183DC()
{
  sub_1BE4E4418();
  v3 = *(v0 + 56);
  if (v3)
  {
LABEL_2:
    v4 = *(v0 + 8);

    return v4();
  }

  if (*(v0 + 105))
  {
    sub_1BE50B96C(*(v0 + 80), v0 + 16, *(v0 + 104));
    if (*(v0 + 40))
    {
      sub_1BE4BF11C(&qword_1EBDAD050, &qword_1BE550AE8);
      v6 = sub_1BE5191A0();
      v3 = sub_1BE519F04(v6);
      if (v3)
      {
        goto LABEL_2;
      }
    }

    else
    {
      v3 = sub_1BE511848(v0 + 16, &qword_1EBDAD048, &qword_1BE550AE0);
    }
  }

  v7 = sub_1BE51914C(v3, v1, v2);
  v8 = sub_1BE519F40(&unk_1F3CCCC80, v7);
  sub_1BE519EB0(v8, v9);
  sub_1BE4E01E0();

  return v10();
}

uint64_t sub_1BE5184F4()
{
  sub_1BE4E01D4();
  *(v0 + 80) = v1;
  *(v0 + 88) = v2;
  *(v0 + 145) = v3;
  *(v0 + 144) = v4;
  *(v0 + 72) = v5;
  *(v0 + 96) = sub_1BE4BF11C(&qword_1EBDABEE8, &unk_1BE54F050);
  *(v0 + 104) = swift_task_alloc();
  *(v0 + 112) = swift_task_alloc();
  *(v0 + 120) = swift_task_alloc();
  v6 = sub_1BE50AAA4();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1BE5185AC()
{
  sub_1BE4E4418();
  v1 = v0[10];
  v2 = sub_1BE519F28();
  v0[16] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[17] = v3;
  *v3 = v0;
  v3[1] = sub_1BE51867C;
  sub_1BE519E90();

  return MEMORY[0x1EEE6DDE0](v4);
}

uint64_t sub_1BE51867C()
{
  sub_1BE4E01D4();
  sub_1BE4E0228();
  v1 = *v0;
  sub_1BE4E01C4();
  *v2 = v1;

  v3 = sub_1BE50AAA4();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1BE51877C()
{
  v2 = (v1 + 112);
  sub_1BE51170C(*(v1 + 120), *(v1 + 112), &qword_1EBDABEE8, &unk_1BE54F050);
  sub_1BE54AE3C();
  v3 = sub_1BE50A968();
  if (sub_1BE4C63BC(v3, 1, v0) != 1)
  {
    goto LABEL_7;
  }

  v4 = *(v1 + 145);
  v5 = sub_1BE511848(*(v1 + 112), &qword_1EBDABEE8, &unk_1BE54F050);
  if (v4 == 1)
  {
    sub_1BE50B96C(*(v1 + 88), v1 + 16, *(v1 + 144));
    if (!*(v1 + 40))
    {
      v10 = &qword_1EBDAD048;
      v11 = &qword_1BE550AE0;
      v9 = v1 + 16;
      goto LABEL_9;
    }

    sub_1BE4BF11C(&qword_1EBDAD050, &qword_1BE550AE8);
    v5 = swift_dynamicCast();
    if (v5)
    {
      v2 = (v1 + 104);
      v8 = *(v1 + 104);
      sub_1BE54AE1C();

      if (sub_1BE4C63BC(v8, 1, v0) == 1)
      {
        v9 = *v2;
        v10 = &qword_1EBDABEE8;
        v11 = &unk_1BE54F050;
LABEL_9:
        v5 = sub_1BE511848(v9, v10, v11);
        goto LABEL_10;
      }

LABEL_7:
      v12 = *v2;
      v13 = *(v1 + 72);
      sub_1BE511848(*(v1 + 120), &qword_1EBDABEE8, &unk_1BE54F050);
      sub_1BE50A884();
      (*(v14 + 32))(v13, v12, v0);

      sub_1BE4E01E0();
      goto LABEL_11;
    }
  }

LABEL_10:
  v16 = *(v1 + 120);
  v17 = sub_1BE51914C(v5, v6, v7);
  sub_1BE519F40(&unk_1F3CCCC80, v17);
  *v18 = 0;
  swift_willThrow();
  sub_1BE511848(v16, &qword_1EBDABEE8, &unk_1BE54F050);

  sub_1BE4E01E0();
LABEL_11:

  return v15();
}

uint64_t sub_1BE5189D8(uint64_t a1, char a2, char a3, uint64_t a4)
{
  *(v4 + 105) = a3;
  *(v4 + 104) = a2;
  *(v4 + 72) = a1;
  *(v4 + 80) = a4;
  return sub_1BE519E34();
}

uint64_t sub_1BE5189F4()
{
  sub_1BE4E4418();
  v1 = v0[9];
  v2 = sub_1BE519F28();
  v0[11] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[12] = v3;
  sub_1BE4BF11C(&qword_1EBDAD070, &qword_1BE550B48);
  *v3 = v0;
  v3[1] = sub_1BE518AE4;
  sub_1BE519E44();

  return MEMORY[0x1EEE6DDE0](v4);
}

uint64_t sub_1BE518AE4()
{
  sub_1BE4E01D4();
  sub_1BE4E0228();
  v1 = *v0;
  sub_1BE4E01C4();
  *v2 = v1;

  v3 = sub_1BE50AAA4();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1BE518BE4()
{
  sub_1BE4E4418();
  v3 = *(v0 + 56);
  if (v3)
  {
LABEL_2:
    v4 = *(v0 + 8);

    return v4();
  }

  if (*(v0 + 105))
  {
    sub_1BE50B96C(*(v0 + 80), v0 + 16, *(v0 + 104));
    if (*(v0 + 40))
    {
      sub_1BE4BF11C(&qword_1EBDAD050, &qword_1BE550AE8);
      v6 = sub_1BE4BF11C(&qword_1EBDAD080, qword_1BE550B60);
      v3 = sub_1BE519F04(v6);
      if (v3)
      {
        goto LABEL_2;
      }
    }

    else
    {
      v3 = sub_1BE511848(v0 + 16, &qword_1EBDAD048, &qword_1BE550AE0);
    }
  }

  v7 = sub_1BE51914C(v3, v1, v2);
  v8 = sub_1BE519F40(&unk_1F3CCCC80, v7);
  sub_1BE519EB0(v8, v9);
  sub_1BE4E01E0();

  return v10();
}

void sub_1BE518D08(uint64_t a1, void *a2)
{
  v4 = sub_1BE4BF11C(&qword_1EBDAD068, &qword_1BE550B38);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = aBlock - v7;
  (*(v5 + 16))(aBlock - v7, a1, v4);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  (*(v5 + 32))(v10 + v9, v8, v4);
  aBlock[4] = sub_1BE519534;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BE519DDC;
  aBlock[3] = &unk_1F3CCCB08;
  v11 = _Block_copy(aBlock);

  [a2 valueWithCompletion_];
  _Block_release(v11);
}

uint64_t sub_1BE518EB8(uint64_t a1)
{
  v2 = sub_1BE4BF11C(&qword_1EBDABEE8, &unk_1BE54F050);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v9 - v4;
  if (a1)
  {
    sub_1BE54AE0C();
    v6 = sub_1BE54AE3C();
    v7 = 0;
  }

  else
  {
    v6 = sub_1BE54AE3C();
    v7 = 1;
  }

  sub_1BE4C63F8(v5, v7, 1, v6);
  sub_1BE4BF11C(&qword_1EBDAD068, &qword_1BE550B38);
  return sub_1BE54C88C();
}

void sub_1BE518F94(uint64_t a1, void *a2)
{
  v4 = sub_1BE4BF11C(&qword_1EBDAD060, &unk_1BE550AF0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = aBlock - v7;
  (*(v5 + 16))(aBlock - v7, a1, v4);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  (*(v5 + 32))(v10 + v9, v8, v4);
  aBlock[4] = sub_1BE519234;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BE51925C;
  aBlock[3] = &unk_1F3CCCA40;
  v11 = _Block_copy(aBlock);

  [a2 valueWithCompletion_];
  _Block_release(v11);
}

unint64_t sub_1BE51914C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBDAD040;
  if (!qword_1EBDAD040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDAD040);
  }

  return result;
}

unint64_t sub_1BE5191A0()
{
  result = qword_1EBDAD058;
  if (!qword_1EBDAD058)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBDAD058);
  }

  return result;
}

uint64_t sub_1BE5191E4(void *a1)
{
  v1 = a1;
  sub_1BE4BF11C(&qword_1EBDAD060, &unk_1BE550AF0);
  return sub_1BE54C88C();
}

uint64_t sub_1BE51925C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = *(a1 + 32);

  swift_unknownObjectRetain();
  v8 = a4;
  v7(a2, a3, a4);

  return swift_unknownObjectRelease();
}

double sub_1BE5192E8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_1BE519300()
{
  sub_1BE519F58();
  sub_1BE519E58();
  v0 = swift_task_alloc();
  v1 = sub_1BE4E4408(v0);
  *v1 = v2;
  v3 = sub_1BE519DF0(v1);

  return sub_1BE517900(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1BE5193A0()
{
  sub_1BE519F58();
  sub_1BE519E58();
  v0 = swift_task_alloc();
  v1 = sub_1BE4E4408(v0);
  *v1 = v2;
  v3 = sub_1BE519DF0(v1);

  return sub_1BE517DA0(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1BE519440()
{
  swift_unknownObjectRelease();

  sub_1BE519F64();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1BE51948C()
{
  sub_1BE519F58();
  sub_1BE519E58();
  v0 = swift_task_alloc();
  v1 = sub_1BE4E4408(v0);
  *v1 = v2;
  v3 = sub_1BE519DF0(v1);

  return sub_1BE517BE8(v3, v4, v5, v6, v7, v8, v9, v10);
}

void sub_1BE51955C(uint64_t a1, void *a2)
{
  v4 = sub_1BE4BF11C(&qword_1EBDAD078, &qword_1BE550B50);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = aBlock - v7;
  (*(v5 + 16))(aBlock - v7, a1, v4);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  (*(v5 + 32))(v10 + v9, v8, v4);
  aBlock[4] = sub_1BE519838;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BE519DDC;
  aBlock[3] = &unk_1F3CCCB58;
  v11 = _Block_copy(aBlock);

  [a2 valueWithCompletion_];
  _Block_release(v11);
}

void sub_1BE519714(void *a1)
{
  if (a1)
  {
    v1 = a1;
    sub_1BE54C81C();
  }

  sub_1BE4BF11C(&qword_1EBDAD078, &qword_1BE550B50);
  sub_1BE54C88C();
}

uint64_t sub_1BE5197B8(uint64_t *a1, uint64_t *a2)
{
  sub_1BE4BF11C(a1, a2);
  sub_1BE50A884();
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = *(v3 + 64);
  (*(v3 + 8))(v2 + v5);

  return MEMORY[0x1EEE6BDD0](v2, v5 + v6, v4 | 7);
}

uint64_t sub_1BE519860(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t (*a6)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v10 = *(sub_1BE4BF11C(a4, a5) - 8);
  v11 = v6 + ((*(v10 + 80) + 16) & ~*(v10 + 80));

  return a6(a1, a2, a3, v11);
}

void sub_1BE519900(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v7 = *(a1 + 32);

  v9 = a2;
  v8 = a4;
  v7(a2, a3, a4);
}

unint64_t sub_1BE519994(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBDAD088;
  if (!qword_1EBDAD088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDAD088);
  }

  return result;
}

__n128 sub_1BE5199E8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1BE5199F4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_1BE519A34(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

_BYTE *sub_1BE519A80(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1BE519B58(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_1BE519B98(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

_BYTE *sub_1BE519BE4(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1BE519CC0()
{
  result = qword_1EBDAD090;
  if (!qword_1EBDAD090)
  {
    sub_1BE4C5948(&qword_1EBDAD098, qword_1BE550BC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDAD090);
  }

  return result;
}

unint64_t sub_1BE519D28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBDAD0A0;
  if (!qword_1EBDAD0A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDAD0A0);
  }

  return result;
}

unint64_t sub_1BE519D80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBDAD0A8;
  if (!qword_1EBDAD0A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDAD0A8);
  }

  return result;
}

void *sub_1BE519E1C(void *result)
{
  result[2] = 0;
  result[3] = 0;
  result[4] = v2;
  result[5] = v3;
  result[6] = *(v4 - 192);
  result[7] = v1;
  return result;
}

uint64_t sub_1BE519E6C(uint64_t a1)
{

  return sub_1BE4C63F8(v1, 0, 1, a1);
}

uint64_t sub_1BE519EB0(uint64_t a1, _BYTE *a2)
{
  *a2 = 0;

  return swift_willThrow();
}

uint64_t sub_1BE519ECC()
{

  return swift_task_create();
}

uint64_t sub_1BE519EE8()
{

  return swift_unknownObjectRelease();
}

uint64_t sub_1BE519F04(uint64_t a1)
{

  return swift_dynamicCast();
}

uint64_t sub_1BE519F28()
{

  return swift_task_alloc();
}

uint64_t sub_1BE519F40(uint64_t a1, uint64_t a2)
{

  return swift_allocError();
}

uint64_t sub_1BE519F70(uint64_t a1)
{

  return sub_1BE511848(a1, v1, v2);
}

uint64_t sub_1BE519F88()
{
  sub_1BE4C63BC(v0, 1, v1);
}

void sub_1BE519FC0(char a1)
{
  v2 = v1;
  if (qword_1EBDABAC8 != -1)
  {
    sub_1BE50A7E0(&qword_1EBDABAC8);
  }

  v4 = sub_1BE54B2EC();
  v5 = sub_1BE51DB8C(v4, qword_1EBDB0C98);
  v6 = sub_1BE54C97C();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = sub_1BE50AB7C();
    v8 = sub_1BE50AAC4();
    v10 = v8;
    *v7 = 136446210;
    sub_1BE4FFAA0();
    *(v7 + 4) = sub_1BE4C5338(0xD000000000000022, v9, &v10);
    _os_log_impl(&dword_1BE4B8000, v5, v6, "%{public}s", v7, 0xCu);
    sub_1BE4C58A8(v8);
    sub_1BE4C75DC();
    sub_1BE4C75DC();
  }

  if (v2[26] == 1)
  {
    v2[24] = 0;
  }

  if (a1)
  {
    v2[25] = 0;
  }
}

uint64_t sub_1BE51A0E4()
{
  sub_1BE4E01D4();
  v1[17] = v0;
  v2 = sub_1BE4BF11C(&qword_1EBDAC3A8, &qword_1BE550DA0);
  sub_1BE4C7570(v2);
  v1[18] = sub_1BE51DB24();
  v3 = sub_1BE4BF11C(&qword_1EBDAD0B0, &unk_1BE550DA8);
  sub_1BE4C7570(v3);
  v1[19] = sub_1BE51DB24();
  v4 = sub_1BE4BF11C(&qword_1EBDAC5B0, &unk_1BE54F820);
  sub_1BE4C7570(v4);
  v1[20] = sub_1BE51DB24();
  v5 = sub_1BE4BF11C(&qword_1EBDAC5A8, &qword_1BE54F818);
  sub_1BE4C7570(v5);
  v1[21] = sub_1BE51DB24();
  v6 = sub_1BE54B4FC();
  v1[22] = v6;
  sub_1BE4CE78C(v6);
  v1[23] = v7;
  v1[24] = sub_1BE51DB24();
  v1[25] = sub_1BE54C8CC();
  v1[26] = sub_1BE54C8BC();
  v9 = sub_1BE54C87C();
  v1[27] = v9;
  v1[28] = v8;

  return MEMORY[0x1EEE6DFA0](sub_1BE51A278, v9, v8);
}

uint64_t sub_1BE51A278()
{
  if (!swift_weakLoadStrong())
  {

    sub_1BE51DC5C();
LABEL_7:
    v3 = &qword_1EBDABAF8;
    v4 = &qword_1BE54DC20;
    v5 = v0 + 56;
    goto LABEL_8;
  }

  sub_1BE5010B4(v0 + 56);

  if (!*(v0 + 80))
  {

    goto LABEL_7;
  }

  v1 = *(v0 + 168);
  sub_1BE4BF094((v0 + 56), v0 + 16);
  sub_1BE4C6918(v0 + 16, v0 + 96);
  type metadata accessor for ExternalAIAuthenticatorHelper(0);
  swift_allocObject();
  sub_1BE534D4C((v0 + 96));
  sub_1BE533EC4();

  if (sub_1BE51DAF8() == 1)
  {
    v2 = *(v0 + 168);
    sub_1BE4C58A8((v0 + 16));

    v3 = &qword_1EBDAC5A8;
    v4 = &qword_1BE54F818;
    v5 = v2;
LABEL_8:
    sub_1BE4E4348(v5, v3, v4);
    if (qword_1EBDABAC8 != -1)
    {
      sub_1BE50A7E0(&qword_1EBDABAC8);
    }

    v6 = sub_1BE54B2EC();
    v7 = sub_1BE51DB8C(v6, qword_1EBDB0C98);
    v8 = sub_1BE54C9AC();
    if (sub_1BE51D898(v8))
    {
      *swift_slowAlloc() = 0;
      sub_1BE51D7E8();
      _os_log_impl(v9, v10, v11, v12, v13, 2u);
      sub_1BE51D87C();
    }

    sub_1BE51DBD8();

    sub_1BE4E01E0();

    return v14();
  }

  v16 = *(v0 + 160);
  (*(*(v0 + 184) + 32))(*(v0 + 192), *(v0 + 168), *(v0 + 176));
  sub_1BE54B45C();
  v17 = sub_1BE54B3DC();
  if (sub_1BE4C63BC(v16, 1, v17) == 1)
  {
    v18 = *(v0 + 160);

    v19 = sub_1BE51DA54();
    v20(v19);
    sub_1BE4C58A8((v0 + 16));
    v3 = &qword_1EBDAC5B0;
    v4 = &unk_1BE54F820;
    v5 = v18;
    goto LABEL_8;
  }

  sub_1BE4E4348(*(v0 + 160), &qword_1EBDAC5B0, &unk_1BE54F820);
  if (qword_1EBDABAC8 != -1)
  {
    sub_1BE50A7E0(&qword_1EBDABAC8);
  }

  v21 = sub_1BE54B2EC();
  *(v0 + 232) = sub_1BE4C52BC(v21, qword_1EBDB0C98);
  v22 = sub_1BE54B2BC();
  v23 = sub_1BE54C97C();
  if (sub_1BE51D898(v23))
  {
    sub_1BE50AB7C();
    sub_1BE51D8D4();
    sub_1BE51DB74();
    *v1 = 136446210;
    sub_1BE4FFAA0();
    *(v1 + 4) = sub_1BE51DBF4(v24, v25, v26, v27);
    sub_1BE51D7E8();
    _os_log_impl(v28, v29, v30, v31, v32, 0xCu);
    sub_1BE51D7F8();
    sub_1BE51D87C();
  }

  v33 = swift_task_alloc();
  *(v0 + 240) = v33;
  *v33 = v0;
  v33[1] = sub_1BE51A62C;
  v34 = *(v0 + 152);

  return MEMORY[0x1EEDEB750](v34);
}

uint64_t sub_1BE51A62C()
{
  sub_1BE4E4418();
  sub_1BE4E0228();
  v3 = v2;
  sub_1BE51D9B8();
  *v4 = v3;
  v5 = *v1;
  sub_1BE4E01C4();
  *v6 = v5;

  if (v0)
  {

    v7 = *(v3 + 216);
    v8 = *(v3 + 224);
    v9 = sub_1BE51A8F8;
  }

  else
  {
    v7 = *(v3 + 216);
    v8 = *(v3 + 224);
    v9 = sub_1BE51A73C;
  }

  return MEMORY[0x1EEE6DFA0](v9, v7, v8);
}

uint64_t sub_1BE51A73C()
{
  v3 = *(v1 + 152);

  v4 = sub_1BE54B39C();
  sub_1BE4C63F8(v3, 0, 1, v4);
  sub_1BE4E4348(v3, &qword_1EBDAD0B0, &unk_1BE550DA8);
  v5 = sub_1BE54B2BC();
  v6 = sub_1BE54C97C();
  if (sub_1BE51D898(v6))
  {
    sub_1BE50AB7C();
    sub_1BE51D8D4();
    sub_1BE51DB74();
    *v0 = 136446210;
    sub_1BE4FFAA0();
    *(v0 + 4) = sub_1BE51DBF4(v7, v8, v9, v10);
    sub_1BE51D7E8();
    _os_log_impl(v11, v12, v13, v14, v15, 0xCu);
    sub_1BE51D7F8();
    sub_1BE51D87C();
  }

  sub_1BE51DC90();
  sub_1BE50A890();
  sub_1BE4C63F8(v16, v17, v18, v19);

  v20 = sub_1BE54C8BC();
  v21 = sub_1BE51DD50(&unk_1F3CCCDD8);
  v22 = MEMORY[0x1E69E85E0];
  v21[2] = v20;
  v21[3] = v22;
  v21[4] = v2;
  sub_1BE51D960();
  sub_1BE50BCEC();

  v23 = sub_1BE4E0628();
  v24(v23);
  sub_1BE4C58A8((v1 + 16));
  sub_1BE51DBD8();

  sub_1BE4E01E0();

  return v25();
}

uint64_t sub_1BE51A8F8()
{
  v3 = *(v1 + 152);

  sub_1BE54B39C();
  sub_1BE50A890();
  sub_1BE4C63F8(v4, v5, v6, v7);
  sub_1BE4E4348(v3, &qword_1EBDAD0B0, &unk_1BE550DA8);
  v8 = sub_1BE54B2BC();
  v9 = sub_1BE54C97C();
  if (sub_1BE51D898(v9))
  {
    sub_1BE50AB7C();
    sub_1BE51D8D4();
    sub_1BE51DB74();
    *v0 = 136446210;
    sub_1BE4FFAA0();
    *(v0 + 4) = sub_1BE51DBF4(v10, v11, v12, v13);
    sub_1BE51D7E8();
    _os_log_impl(v14, v15, v16, v17, v18, 0xCu);
    sub_1BE51D7F8();
    sub_1BE51D87C();
  }

  sub_1BE51DC90();
  sub_1BE50A890();
  sub_1BE4C63F8(v19, v20, v21, v22);

  v23 = sub_1BE54C8BC();
  v24 = sub_1BE51DD50(&unk_1F3CCCDD8);
  v25 = MEMORY[0x1E69E85E0];
  v24[2] = v23;
  v24[3] = v25;
  v24[4] = v2;
  sub_1BE51D960();
  sub_1BE50BCEC();

  v26 = sub_1BE4E0628();
  v27(v26);
  sub_1BE4C58A8((v1 + 16));
  sub_1BE51DBD8();

  sub_1BE4E01E0();

  return v28();
}

void sub_1BE51AAB0()
{
  v1 = v0;
  v2 = *v0;
  v3 = sub_1BE4BF11C(&qword_1EBDAC3A8, &qword_1BE550DA0);
  v4 = sub_1BE4C7570(v3);
  MEMORY[0x1EEE9AC00](v4, v5);
  if (*(v0 + 26) == 1)
  {
    *(v0 + 24) = 1;
    if (qword_1EBDABAC8 != -1)
    {
      sub_1BE50A7E0(&qword_1EBDABAC8);
    }

    v6 = sub_1BE54B2EC();
    v26 = sub_1BE51DB8C(v6, qword_1EBDB0C98);
    v7 = sub_1BE54C97C();
    if (os_log_type_enabled(v26, v7))
    {
      v8 = sub_1BE50AB7C();
      v9 = sub_1BE50AAC4();
      v27 = v9;
      *v8 = 136446210;
      sub_1BE4FFAA0();
      *(v8 + 4) = sub_1BE51DA90(v10, v11, &v27);
      _os_log_impl(&dword_1BE4B8000, v26, v7, "%{public}s Duplicate request to poll; re-enabling post-poll timer", v8, 0xCu);
      sub_1BE4C58A8(v9);
      sub_1BE51D87C();
      sub_1BE4C75DC();
    }

    else
    {
    }
  }

  else
  {
    *(v0 + 26) = 1;
    *(v0 + 24) = 1;
    if (qword_1EBDABAC8 != -1)
    {
      sub_1BE50A7E0(&qword_1EBDABAC8);
    }

    v12 = sub_1BE54B2EC();
    v13 = sub_1BE51DB8C(v12, qword_1EBDB0C98);
    v14 = sub_1BE54C97C();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = sub_1BE50AB7C();
      v16 = sub_1BE50AAC4();
      v27 = v16;
      *v15 = 136446210;
      sub_1BE4FFAA0();
      *(v15 + 4) = sub_1BE51DA90(v17, v18, &v27);
      _os_log_impl(&dword_1BE4B8000, v13, v14, "%{public}s", v15, 0xCu);
      sub_1BE4C58A8(v16);
      sub_1BE4C75DC();
      sub_1BE4C75DC();
    }

    sub_1BE54C91C();
    sub_1BE50A890();
    sub_1BE4C63F8(v19, v20, v21, v22);
    sub_1BE54C8CC();

    v23 = sub_1BE54C8BC();
    v24 = swift_allocObject();
    v25 = MEMORY[0x1E69E85E0];
    v24[2] = v23;
    v24[3] = v25;
    v24[4] = v1;
    v24[5] = v2;
    sub_1BE51D960();
    sub_1BE50BA3C();
  }
}

uint64_t sub_1BE51ADBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a4;
  type metadata accessor for SettingsViewModel.AccountSignInStatus(0);
  v4[4] = swift_task_alloc();
  sub_1BE54C8CC();
  v4[5] = sub_1BE54C8BC();
  v6 = sub_1BE54C87C();

  return MEMORY[0x1EEE6DFA0](sub_1BE51D7A0, v6, v5);
}

uint64_t sub_1BE51AE80()
{
  sub_1BE4E01D4();
  v1[17] = v0;
  v2 = sub_1BE4BF11C(&qword_1EBDAC3A8, &qword_1BE550DA0);
  sub_1BE4C7570(v2);
  v1[18] = sub_1BE51DB24();
  v3 = sub_1BE54B36C();
  v1[19] = v3;
  sub_1BE4CE78C(v3);
  v1[20] = v4;
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();
  v5 = sub_1BE54B39C();
  v1[23] = v5;
  sub_1BE4CE78C(v5);
  v1[24] = v6;
  v1[25] = sub_1BE51DB24();
  v7 = sub_1BE4BF11C(&qword_1EBDAD0B0, &unk_1BE550DA8);
  sub_1BE4C7570(v7);
  v1[26] = swift_task_alloc();
  v1[27] = swift_task_alloc();
  v8 = sub_1BE4BF11C(&qword_1EBDAC5B0, &unk_1BE54F820);
  sub_1BE4C7570(v8);
  v1[28] = swift_task_alloc();
  v1[29] = swift_task_alloc();
  v9 = sub_1BE4BF11C(&qword_1EBDAC5A8, &qword_1BE54F818);
  sub_1BE4C7570(v9);
  v1[30] = sub_1BE51DB24();
  v10 = sub_1BE54B4FC();
  v1[31] = v10;
  sub_1BE4CE78C(v10);
  v1[32] = v11;
  v1[33] = sub_1BE51DB24();
  v1[34] = sub_1BE54C8CC();
  v1[35] = sub_1BE54C8BC();
  v13 = sub_1BE54C87C();
  v1[36] = v13;
  v1[37] = v12;

  return MEMORY[0x1EEE6DFA0](sub_1BE51B0E8, v13, v12);
}

uint64_t sub_1BE51B0E8()
{
  v33 = v0;
  if (!swift_weakLoadStrong())
  {

    sub_1BE51DC5C();
LABEL_7:
    v3 = &qword_1EBDABAF8;
    v4 = &qword_1BE54DC20;
    v5 = v0 + 56;
    goto LABEL_8;
  }

  sub_1BE5010B4(v0 + 56);

  if (!*(v0 + 80))
  {

    goto LABEL_7;
  }

  v1 = *(v0 + 240);
  sub_1BE4BF094((v0 + 56), v0 + 16);
  sub_1BE4C6918(v0 + 16, v0 + 96);
  type metadata accessor for ExternalAIAuthenticatorHelper(0);
  swift_allocObject();
  sub_1BE534D4C((v0 + 96));
  sub_1BE533EC4();

  if (sub_1BE51DAF8() == 1)
  {
    v2 = *(v0 + 240);
    sub_1BE4C58A8((v0 + 16));

    v3 = &qword_1EBDAC5A8;
    v4 = &qword_1BE54F818;
    v5 = v2;
LABEL_8:
    sub_1BE4E4348(v5, v3, v4);
    if (qword_1EBDABAC8 != -1)
    {
      sub_1BE50A7E0(&qword_1EBDABAC8);
    }

    v6 = sub_1BE54B2EC();
    v7 = sub_1BE51DB8C(v6, qword_1EBDB0C98);
    v8 = sub_1BE54C9AC();
    if (sub_1BE51D898(v8))
    {
      *swift_slowAlloc() = 0;
      sub_1BE51D7E8();
      _os_log_impl(v9, v10, v11, v12, v13, 2u);
      sub_1BE51D87C();
    }

    v14 = *(v0 + 8);

    return v14(0);
  }

  v16 = *(v0 + 232);
  (*(*(v0 + 256) + 32))(*(v0 + 264), *(v0 + 240), *(v0 + 248));
  sub_1BE54B45C();
  v17 = sub_1BE54B3DC();
  *(v0 + 304) = v17;
  if (sub_1BE4C63BC(v16, 1, v17) == 1)
  {
    v18 = *(v0 + 232);

    v19 = sub_1BE51DA54();
    v20(v19);
    sub_1BE4C58A8((v0 + 16));
    v3 = &qword_1EBDAC5B0;
    v4 = &unk_1BE54F820;
    v5 = v18;
    goto LABEL_8;
  }

  sub_1BE4E4348(*(v0 + 232), &qword_1EBDAC5B0, &unk_1BE54F820);
  if (qword_1EBDABAC8 != -1)
  {
    sub_1BE50A7E0(&qword_1EBDABAC8);
  }

  v21 = sub_1BE54B2EC();
  *(v0 + 312) = sub_1BE4C52BC(v21, qword_1EBDB0C98);
  v22 = sub_1BE54B2BC();
  v23 = sub_1BE54C97C();
  if (sub_1BE51D898(v23))
  {
    sub_1BE50AB7C();
    v32 = sub_1BE51D8D4();
    *v1 = 136446210;
    sub_1BE4FFAA0();
    *(v1 + 4) = sub_1BE4C5338(0xD000000000000019, v24, &v32);
    sub_1BE51D7E8();
    _os_log_impl(v25, v26, v27, v28, v29, 0xCu);
    sub_1BE51D7F8();
    sub_1BE51D87C();
  }

  v30 = swift_task_alloc();
  *(v0 + 320) = v30;
  *v30 = v0;
  v30[1] = sub_1BE51B510;
  v31 = *(v0 + 216);

  return MEMORY[0x1EEDEB750](v31);
}

uint64_t sub_1BE51B510()
{
  sub_1BE4E4418();
  sub_1BE4E0228();
  v3 = v2;
  sub_1BE51D9B8();
  *v4 = v3;
  v5 = *v1;
  sub_1BE4E01C4();
  *v6 = v5;

  if (v0)
  {

    v7 = *(v3 + 288);
    v8 = *(v3 + 296);
    v9 = sub_1BE51BA1C;
  }

  else
  {
    v7 = *(v3 + 288);
    v8 = *(v3 + 296);
    v9 = sub_1BE51B620;
  }

  return MEMORY[0x1EEE6DFA0](v9, v7, v8);
}

uint64_t sub_1BE51B620()
{
  sub_1BE51DD30();
  sub_1BE4C63F8(v0, 0, 1, v1);
  v5 = sub_1BE54B2BC();
  v6 = sub_1BE54C97C();
  if (sub_1BE51D898(v6))
  {
    sub_1BE50AB7C();
    v3 = sub_1BE51D8D4();
    *v1 = 136446210;
    *(v1 + 4) = sub_1BE51D8B4("startPollingBillingChanges()", v48, v49);
    sub_1BE51D7E8();
    _os_log_impl(v7, v8, v9, v10, v11, 0xCu);
    sub_1BE51D7F8();
    sub_1BE51D87C();
  }

  sub_1BE51DD10(v12);
  v13 = sub_1BE51DAF8();
  sub_1BE4E4348(v1, &qword_1EBDAC5B0, &unk_1BE54F820);
  if (v13 == 1)
  {
    v14 = sub_1BE54B2BC();
    sub_1BE54C97C();
    sub_1BE51DAEC();
    os_log_type_enabled(v14, v15);
    sub_1BE51D9F0();
    if (v16)
    {
      v17 = sub_1BE50AB7C();
      sub_1BE50AAC4();
      sub_1BE51D9E0();
      *(v17 + 4) = sub_1BE51D854(v18, 136446210, v48, v49);
      v21 = "%{public}s User is unexpectedly logged out while waiting for billing refresh; not updating cached credentials";
LABEL_13:
      sub_1BE51DCD0(&dword_1BE4B8000, v19, v20, v21);
      sub_1BE4C58A8("updateBillingOnPaidPlan()");
      sub_1BE51D9C4();
      sub_1BE4C75DC();
    }
  }

  else
  {
    v22 = v2[26];
    v23 = v2[23];
    sub_1BE51D64C(v2[27], v22);
    if (sub_1BE4C63BC(v22, 1, v23) == 1)
    {
      sub_1BE4E4348(v2[26], &qword_1EBDAD0B0, &unk_1BE550DA8);
    }

    else
    {
      v24 = sub_1BE51DA34();
      v25(v24);
      sub_1BE54B37C();
      v26 = sub_1BE51DC48();
      v27(v26);
      sub_1BE4E0628();
      v28 = sub_1BE54B35C();
      v31 = *(v4 + 8);
      v29 = v4 + 8;
      v30 = v31;
      v32 = sub_1BE51DB80();
      v31(v32);
      (v31)(v23, v3);
      if (v28)
      {
        sub_1BE51DA60();
        v50 = 1;
        sub_1BE50A890();
        sub_1BE4C63F8(v33, v34, v35, v36);

        v37 = sub_1BE54C8BC();
        v38 = sub_1BE51DD50(&unk_1F3CCCE28);
        v39 = MEMORY[0x1E69E85E0];
        v38[2] = v37;
        v38[3] = v39;
        v38[4] = &loc_1BE54D000;
        sub_1BE51D960();
        sub_1BE50BCEC();

        (*(v1 + 8))(v30, "updateBillingOnPaidPlan()");
        sub_1BE4E4348(v29, &qword_1EBDAD0B0, &unk_1BE550DA8);
        (*(v23 + 8))(v48, v3);
        sub_1BE4C58A8(v2 + 2);
        goto LABEL_15;
      }

      (*(v2[24] + 8))(v2[25], v2[23]);
    }

    v14 = sub_1BE54B2BC();
    sub_1BE54C97C();
    sub_1BE51DAEC();
    os_log_type_enabled(v14, v40);
    sub_1BE51D9F0();
    if (v41)
    {
      v42 = sub_1BE50AB7C();
      sub_1BE50AAC4();
      sub_1BE51D9E0();
      *(v42 + 4) = sub_1BE51D854(v43, 136446210, v48, v49);
      v21 = "%{public}s User is not on a paid plan; not updating cached credentials";
      goto LABEL_13;
    }
  }

  sub_1BE4E4348(v3, &qword_1EBDAD0B0, &unk_1BE550DA8);
  v44 = sub_1BE51DA54();
  v45(v44);
  sub_1BE4C58A8(v2 + 2);
  v50 = 0;
LABEL_15:
  sub_1BE51DB4C();

  v46 = v2[1];

  return v46(v50);
}

uint64_t sub_1BE51BA1C()
{
  sub_1BE51DD30();
  sub_1BE50A890();
  sub_1BE4C63F8(v4, v5, v6, v0);
  v7 = sub_1BE54B2BC();
  v8 = sub_1BE54C97C();
  if (sub_1BE51D898(v8))
  {
    sub_1BE50AB7C();
    v2 = sub_1BE51D8D4();
    *v0 = 136446210;
    *(v0 + 4) = sub_1BE51D8B4("startPollingBillingChanges()", v50, v51);
    sub_1BE51D7E8();
    _os_log_impl(v9, v10, v11, v12, v13, 0xCu);
    sub_1BE51D7F8();
    sub_1BE51D87C();
  }

  sub_1BE51DD10(v14);
  v15 = sub_1BE51DAF8();
  sub_1BE4E4348(v0, &qword_1EBDAC5B0, &unk_1BE54F820);
  if (v15 == 1)
  {
    v16 = sub_1BE54B2BC();
    sub_1BE54C97C();
    sub_1BE51DAEC();
    os_log_type_enabled(v16, v17);
    sub_1BE51D9F0();
    if (v18)
    {
      v19 = sub_1BE50AB7C();
      sub_1BE50AAC4();
      sub_1BE51D9E0();
      *(v19 + 4) = sub_1BE51D854(v20, 136446210, v50, v51);
      v23 = "%{public}s User is unexpectedly logged out while waiting for billing refresh; not updating cached credentials";
LABEL_13:
      sub_1BE51DCD0(&dword_1BE4B8000, v21, v22, v23);
      sub_1BE4C58A8("updateBillingOnPaidPlan()");
      sub_1BE51D9C4();
      sub_1BE4C75DC();
    }
  }

  else
  {
    v24 = v1[26];
    v25 = v1[23];
    sub_1BE51D64C(v1[27], v24);
    if (sub_1BE4C63BC(v24, 1, v25) == 1)
    {
      sub_1BE4E4348(v1[26], &qword_1EBDAD0B0, &unk_1BE550DA8);
    }

    else
    {
      v26 = sub_1BE51DA34();
      v27(v26);
      sub_1BE54B37C();
      v28 = sub_1BE51DC48();
      v29(v28);
      sub_1BE4E0628();
      v30 = sub_1BE54B35C();
      v33 = *(v3 + 8);
      v31 = v3 + 8;
      v32 = v33;
      v34 = sub_1BE51DB80();
      v33(v34);
      (v33)(v25, v2);
      if (v30)
      {
        sub_1BE51DA60();
        v52 = 1;
        sub_1BE50A890();
        sub_1BE4C63F8(v35, v36, v37, v38);

        v39 = sub_1BE54C8BC();
        v40 = sub_1BE51DD50(&unk_1F3CCCE28);
        v41 = MEMORY[0x1E69E85E0];
        v40[2] = v39;
        v40[3] = v41;
        v40[4] = &loc_1BE54D000;
        sub_1BE51D960();
        sub_1BE50BCEC();

        (*(v0 + 8))(v32, "updateBillingOnPaidPlan()");
        sub_1BE4E4348(v31, &qword_1EBDAD0B0, &unk_1BE550DA8);
        (*(v25 + 8))(v50, v2);
        sub_1BE4C58A8(v1 + 2);
        goto LABEL_15;
      }

      (*(v1[24] + 8))(v1[25], v1[23]);
    }

    v16 = sub_1BE54B2BC();
    sub_1BE54C97C();
    sub_1BE51DAEC();
    os_log_type_enabled(v16, v42);
    sub_1BE51D9F0();
    if (v43)
    {
      v44 = sub_1BE50AB7C();
      sub_1BE50AAC4();
      sub_1BE51D9E0();
      *(v44 + 4) = sub_1BE51D854(v45, 136446210, v50, v51);
      v23 = "%{public}s User is not on a paid plan; not updating cached credentials";
      goto LABEL_13;
    }
  }

  sub_1BE4E4348(v2, &qword_1EBDAD0B0, &unk_1BE550DA8);
  v46 = sub_1BE51DA54();
  v47(v46);
  sub_1BE4C58A8(v1 + 2);
  v52 = 0;
LABEL_15:
  sub_1BE51DB4C();

  v48 = v1[1];

  return v48(v52);
}

uint64_t sub_1BE51BE14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a4;
  type metadata accessor for SettingsViewModel.AccountSignInStatus(0);
  v4[4] = swift_task_alloc();
  sub_1BE54C8CC();
  v4[5] = sub_1BE54C8BC();
  v6 = sub_1BE54C87C();

  return MEMORY[0x1EEE6DFA0](sub_1BE51BED8, v6, v5);
}

uint64_t sub_1BE51BED8()
{
  sub_1BE4E01D4();

  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_1BE500020(*(v0 + 32));
    sub_1BE5014C4();
  }

  **(v0 + 16) = Strong == 0;

  sub_1BE4E01E0();

  return v2();
}

uint64_t sub_1BE51BF78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[13] = a4;
  v5 = sub_1BE54CB7C();
  v4[14] = v5;
  v4[15] = *(v5 - 8);
  v4[16] = swift_task_alloc();
  v4[17] = swift_task_alloc();
  v6 = sub_1BE54CB8C();
  v4[18] = v6;
  v4[19] = *(v6 - 8);
  v4[20] = swift_task_alloc();
  v7 = sub_1BE54AE9C();
  v4[21] = v7;
  v4[22] = *(v7 - 8);
  v4[23] = swift_task_alloc();
  v4[24] = swift_task_alloc();
  v4[25] = swift_task_alloc();
  sub_1BE54C8CC();
  v4[26] = sub_1BE54C8BC();
  v9 = sub_1BE54C87C();
  v4[27] = v9;
  v4[28] = v8;

  return MEMORY[0x1EEE6DFA0](sub_1BE51C148, v9, v8);
}

uint64_t sub_1BE51C148(uint64_t a1)
{
  v39 = v2;
  sub_1BE54AE8C();
  sub_1BE54AE6C();
  swift_beginAccess();
  swift_beginAccess();
  sub_1BE54AE7C();
  if (v4 > -2.0 && v4 < 0.0)
  {
    sub_1BE51D914();
    if (v6 ^ v7 | v5)
    {
      if (v3 > -1.0)
      {
        sub_1BE51DB14();
        if (v6)
        {
          if (qword_1EBDABAC8 == -1)
          {
LABEL_9:
            v8 = sub_1BE54B2EC();
            v9 = sub_1BE51DB8C(v8, qword_1EBDB0C98);
            v10 = sub_1BE54C97C();
            if (sub_1BE51D898(v10))
            {
              swift_slowAlloc();
              sub_1BE51D8D4();
              sub_1BE51DB74();
              *v1 = 136446466;
              v12 = sub_1BE51DA90(v11, 0x80000001BE555160, &v38);
              sub_1BE51DB3C(v12);
              *(v1 + 14) = v3;
              sub_1BE51D7E8();
              _os_log_impl(v13, v14, v15, v16, v17, 0x16u);
              sub_1BE51D7F8();
              sub_1BE51D87C();
            }

            sub_1BE51DA00();
            sub_1BE54CD2C();
            v18 = sub_1BE51D7BC();

            return MEMORY[0x1EEE6DFA0](v18, v19, v20);
          }

LABEL_25:
          sub_1BE50A7E0(&qword_1EBDABAC8);
          goto LABEL_9;
        }

LABEL_24:
        __break(1u);
        goto LABEL_25;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_24;
  }

  v21 = v2[22];
  v22 = v2[13];
  sub_1BE54AE8C();
  v23 = *(v21 + 40);
  v24 = sub_1BE51DA54();
  v23(v24);
  if (*(v22 + 24) == 1)
  {
    v25 = v2[23];
    sub_1BE54AE6C();
    v26 = sub_1BE4E0628();
    v23(v26);
    if (qword_1EBDABAC8 != -1)
    {
      sub_1BE50A7E0(&qword_1EBDABAC8);
    }

    v27 = sub_1BE54B2EC();
    v28 = sub_1BE51DB8C(v27, qword_1EBDB0C98);
    v29 = sub_1BE54C97C();
    if (sub_1BE51D898(v29))
    {
      sub_1BE50AB7C();
      sub_1BE51D8D4();
      sub_1BE51DB74();
      *v25 = 136446210;
      *(v25 + 4) = sub_1BE51DA90(v30, 0x80000001BE555160, &v38);
      sub_1BE51D7E8();
      _os_log_impl(v31, v32, v33, v34, v35, 0xCu);
      sub_1BE51D7F8();
      sub_1BE51D87C();
    }
  }

  v36 = swift_task_alloc();
  v2[33] = v36;
  *v36 = v2;
  sub_1BE51D82C(v36);

  return sub_1BE51AE80();
}

uint64_t sub_1BE51C45C()
{
  v2 = v0[15];
  v1 = v0[16];
  v3 = v0[14];
  v4 = sub_1BE51D604(&qword_1EBDAC2F8, MEMORY[0x1E69E8820], MEMORY[0x1E69E8828]);
  sub_1BE54CD0C();
  sub_1BE51D604(&qword_1EBDAC300, MEMORY[0x1E69E87E8], MEMORY[0x1E69E8818]);
  sub_1BE54CB9C();
  v5 = *(v2 + 8);
  v0[29] = v5;
  v0[30] = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v5(v1, v3);
  v6 = swift_task_alloc();
  v0[31] = v6;
  *v6 = v0;
  v6[1] = sub_1BE51C5E0;
  v8 = v0[17];
  v7 = v0[18];

  return MEMORY[0x1EEE6DE58](v8, v0 + 8, v7, v4);
}

uint64_t sub_1BE51C5E0()
{
  sub_1BE4E0228();
  v3 = v2;
  sub_1BE51D9B8();
  *v4 = v3;
  v6 = *(v5 + 232);
  v7 = *v1;
  sub_1BE4E01C4();
  *v8 = v7;
  v3[32] = v0;

  v9 = sub_1BE51DB80();
  v6(v9);
  if (v0)
  {
    v10 = sub_1BE51CCF8;
    v11 = 0;
    v12 = 0;
  }

  else
  {
    (*(v3[19] + 8))(v3[20], v3[18]);
    v11 = v3[27];
    v12 = v3[28];
    v10 = sub_1BE51C76C;
  }

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1BE51C76C()
{
  if (qword_1EBDABAC8 != -1)
  {
    sub_1BE50A7E0(&qword_1EBDABAC8);
  }

  v112 = sub_1BE54B2EC();
  v5 = sub_1BE4C52BC(v112, qword_1EBDB0C98);
  v6 = sub_1BE54B2BC();
  sub_1BE54C97C();
  sub_1BE51DAEC();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = sub_1BE51DAC4();
    sub_1BE4FFE98();
    sub_1BE51DC84();
    *v8 = 136446466;
    *(v8 + 4) = sub_1BE51D92C(v9, v3 | 0x8000000000000000, v10, v11, v12, v13, v14, v15);
    *(v8 + 12) = 2082;
    sub_1BE51D7A4();
    sub_1BE51D604(v16, v17, MEMORY[0x1E6969570]);
    v18 = sub_1BE54CC9C();
    sub_1BE51DD80(v18, v19, v20, v21, v22, v23, v24, v25);
    sub_1BE51DD68();
    *(v8 + 14) = &unk_1BE54F000;
    sub_1BE51DCF0(&dword_1BE4B8000, v26, v27, "%{public}s pollingEndTime: %{public}s");
    sub_1BE51DAA8();
    sub_1BE51D9C4();
    sub_1BE4C75DC();
  }

  v28 = sub_1BE54B2BC();
  v29 = sub_1BE54C97C();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = v0[21];
    v1 = sub_1BE51DAC4();
    sub_1BE4FFE98();
    sub_1BE51DC84();
    *v1 = 136446466;
    *(v1 + 4) = sub_1BE51D92C(v31, v3 | 0x8000000000000000, v32, v33, v34, v35, v36, v37);
    *(v1 + 12) = 2082;
    sub_1BE51D7A4();
    sub_1BE51D604(v38, v39, MEMORY[0x1E6969570]);
    v40 = sub_1BE54CC9C();
    sub_1BE51DD80(v40, v41, v42, v43, v44, v45, v46, v47);
    sub_1BE51DD68();
    *(v1 + 14) = v30;
    sub_1BE51DCB0(&dword_1BE4B8000, v48, v49, "%{public}s lastPollStarted: %{public}s");
    sub_1BE51DAA8();
    sub_1BE51D9C4();
    sub_1BE4C75DC();
  }

  v50 = sub_1BE51DA14();
  v51(v50);
  sub_1BE54AE5C();
  v52 = sub_1BE51DC34();
  (v3)(v52);
  if (v4 <= 0.0 || (*(v0[13] + 25) & 1) == 0)
  {

    v77 = sub_1BE54B2BC();
    v78 = sub_1BE54C97C();
    if (sub_1BE51D898(v78))
    {
      sub_1BE50AB7C();
      sub_1BE51D8D4();
      sub_1BE51DAE0();
      *(v5 + 4) = sub_1BE51D8F0(4.8751e-34, v79, v80, v81, v82, v83, v84);
      sub_1BE51D7E8();
      _os_log_impl(v85, v86, v87, v88, v89, 0xCu);
      sub_1BE51D7F8();
      sub_1BE51D87C();
    }

    v90 = sub_1BE51D990();
    (v3)(v90);
    (v3)(v77, v28);

    sub_1BE4E01E0();
    sub_1BE51D970();

    __asm { BRAA            X1, X16 }
  }

  v53 = sub_1BE54AE7C();
  if (v54 > -2.0 && v54 < 0.0)
  {
    sub_1BE51D914();
    if (v56 ^ v57 | v55)
    {
      if (v4 > -1.0)
      {
        sub_1BE51DB14();
        if (v56)
        {
          if (qword_1EBDABAC8 == -1)
          {
LABEL_17:
            v58 = sub_1BE51DB8C(v112, qword_1EBDB0C98);
            v59 = sub_1BE54C97C();
            if (sub_1BE51D898(v59))
            {
              swift_slowAlloc();
              sub_1BE51D8D4();
              sub_1BE51DAE0();
              *v5 = 136446466;
              v67 = sub_1BE51D92C(v60, 0x80000001BE555160, v61, v62, v63, v64, v65, v66);
              sub_1BE51DB3C(v67);
              *(v5 + 14) = v4;
              sub_1BE51D7E8();
              _os_log_impl(v68, v69, v70, v71, v72, 0x16u);
              sub_1BE51D7F8();
              sub_1BE51D87C();
            }

            sub_1BE51DA00();
            sub_1BE54CD2C();
            sub_1BE51D7BC();
            sub_1BE51D970();

            return MEMORY[0x1EEE6DFA0](v73, v74, v75);
          }

LABEL_38:
          sub_1BE50A7E0(&qword_1EBDABAC8);
          goto LABEL_17;
        }

LABEL_37:
        __break(1u);
        goto LABEL_38;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_37;
  }

  sub_1BE51DBB4(v53);
  v93 = sub_1BE51DC70();
  v94 = v2(v93);
  if (*(v1 + 24) == 1)
  {
    sub_1BE51DC10(v94);
    v95 = sub_1BE51DB80();
    v2(v95);
    if (qword_1EBDABAC8 != -1)
    {
      sub_1BE50A7E0(&qword_1EBDABAC8);
    }

    v96 = sub_1BE51DB8C(v112, qword_1EBDB0C98);
    v97 = sub_1BE54C97C();
    if (sub_1BE51D898(v97))
    {
      sub_1BE50AB7C();
      sub_1BE51D8D4();
      sub_1BE51DAE0();
      *(v5 + 4) = sub_1BE51D8F0(4.8751e-34, v98, v99, v100, v101, v102, v103);
      sub_1BE51D7E8();
      _os_log_impl(v104, v105, v106, v107, v108, 0xCu);
      sub_1BE51D7F8();
      sub_1BE51D87C();
    }
  }

  v109 = swift_task_alloc();
  v0[33] = v109;
  *v109 = v0;
  sub_1BE51D82C(v109);
  sub_1BE51D970();

  return sub_1BE51AE80();
}

uint64_t sub_1BE51CCF8()
{
  sub_1BE4E4418();

  v1 = sub_1BE51DA54();
  v2(v1);
  v3 = *(v0 + 216);
  v4 = *(v0 + 224);

  return MEMORY[0x1EEE6DFA0](sub_1BE51D79C, v3, v4);
}

uint64_t sub_1BE51CD7C()
{
  sub_1BE4E01D4();
  v1 = *v0;
  sub_1BE51D9B8();
  *v3 = v2;
  v4 = *v0;
  sub_1BE51D9B8();
  *v5 = v4;
  *(v7 + 81) = v6;

  v8 = *(v1 + 224);
  v9 = *(v1 + 216);

  return MEMORY[0x1EEE6DFA0](sub_1BE51CE98, v9, v8);
}

uint64_t sub_1BE51CE98()
{
  if (*(v0 + 81))
  {
    sub_1BE519FC0(0);
  }

  if (qword_1EBDABAC8 != -1)
  {
    sub_1BE50A7E0(&qword_1EBDABAC8);
  }

  v112 = sub_1BE54B2EC();
  v5 = sub_1BE4C52BC(v112, qword_1EBDB0C98);
  v6 = sub_1BE54B2BC();
  sub_1BE54C97C();
  sub_1BE51DAEC();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = sub_1BE51DAC4();
    sub_1BE4FFE98();
    sub_1BE51DC84();
    *v8 = 136446466;
    *(v8 + 4) = sub_1BE51D92C(v9, v3 | 0x8000000000000000, v10, v11, v12, v13, v14, v15);
    *(v8 + 12) = 2082;
    sub_1BE51D7A4();
    sub_1BE51D604(v16, v17, MEMORY[0x1E6969570]);
    v18 = sub_1BE54CC9C();
    sub_1BE51DD80(v18, v19, v20, v21, v22, v23, v24, v25);
    sub_1BE51DD68();
    *(v8 + 14) = &unk_1BE54F000;
    sub_1BE51DCF0(&dword_1BE4B8000, v26, v27, "%{public}s pollingEndTime: %{public}s");
    sub_1BE51DAA8();
    sub_1BE51D9C4();
    sub_1BE4C75DC();
  }

  v28 = sub_1BE54B2BC();
  v29 = sub_1BE54C97C();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = *(v0 + 168);
    v1 = sub_1BE51DAC4();
    sub_1BE4FFE98();
    sub_1BE51DC84();
    *v1 = 136446466;
    *(v1 + 4) = sub_1BE51D92C(v31, v3 | 0x8000000000000000, v32, v33, v34, v35, v36, v37);
    *(v1 + 12) = 2082;
    sub_1BE51D7A4();
    sub_1BE51D604(v38, v39, MEMORY[0x1E6969570]);
    v40 = sub_1BE54CC9C();
    sub_1BE51DD80(v40, v41, v42, v43, v44, v45, v46, v47);
    sub_1BE51DD68();
    *(v1 + 14) = v30;
    sub_1BE51DCB0(&dword_1BE4B8000, v48, v49, "%{public}s lastPollStarted: %{public}s");
    sub_1BE51DAA8();
    sub_1BE51D9C4();
    sub_1BE4C75DC();
  }

  v50 = sub_1BE51DA14();
  v51(v50);
  sub_1BE54AE5C();
  v52 = sub_1BE51DC34();
  (v3)(v52);
  if (v4 <= 0.0 || (*(*(v0 + 104) + 25) & 1) == 0)
  {

    v77 = sub_1BE54B2BC();
    v78 = sub_1BE54C97C();
    if (sub_1BE51D898(v78))
    {
      sub_1BE50AB7C();
      sub_1BE51D8D4();
      sub_1BE51DAE0();
      *(v5 + 4) = sub_1BE51D8F0(4.8751e-34, v79, v80, v81, v82, v83, v84);
      sub_1BE51D7E8();
      _os_log_impl(v85, v86, v87, v88, v89, 0xCu);
      sub_1BE51D7F8();
      sub_1BE51D87C();
    }

    v90 = sub_1BE51D990();
    (v3)(v90);
    (v3)(v77, v28);

    sub_1BE4E01E0();
    sub_1BE51D970();

    __asm { BRAA            X1, X16 }
  }

  v53 = sub_1BE54AE7C();
  if (v54 > -2.0 && v54 < 0.0)
  {
    sub_1BE51D914();
    if (v56 ^ v57 | v55)
    {
      if (v4 > -1.0)
      {
        sub_1BE51DB14();
        if (v56)
        {
          if (qword_1EBDABAC8 == -1)
          {
LABEL_19:
            v58 = sub_1BE51DB8C(v112, qword_1EBDB0C98);
            v59 = sub_1BE54C97C();
            if (sub_1BE51D898(v59))
            {
              swift_slowAlloc();
              sub_1BE51D8D4();
              sub_1BE51DAE0();
              *v5 = 136446466;
              v67 = sub_1BE51D92C(v60, 0x80000001BE555160, v61, v62, v63, v64, v65, v66);
              sub_1BE51DB3C(v67);
              *(v5 + 14) = v4;
              sub_1BE51D7E8();
              _os_log_impl(v68, v69, v70, v71, v72, 0x16u);
              sub_1BE51D7F8();
              sub_1BE51D87C();
            }

            sub_1BE51DA00();
            sub_1BE54CD2C();
            sub_1BE51D7BC();
            sub_1BE51D970();

            return MEMORY[0x1EEE6DFA0](v73, v74, v75);
          }

LABEL_40:
          sub_1BE50A7E0(&qword_1EBDABAC8);
          goto LABEL_19;
        }

LABEL_39:
        __break(1u);
        goto LABEL_40;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_39;
  }

  sub_1BE51DBB4(v53);
  v93 = sub_1BE51DC70();
  v94 = v2(v93);
  if (*(v1 + 24) == 1)
  {
    sub_1BE51DC10(v94);
    v95 = sub_1BE51DB80();
    v2(v95);
    if (qword_1EBDABAC8 != -1)
    {
      sub_1BE50A7E0(&qword_1EBDABAC8);
    }

    v96 = sub_1BE51DB8C(v112, qword_1EBDB0C98);
    v97 = sub_1BE54C97C();
    if (sub_1BE51D898(v97))
    {
      sub_1BE50AB7C();
      sub_1BE51D8D4();
      sub_1BE51DAE0();
      *(v5 + 4) = sub_1BE51D8F0(4.8751e-34, v98, v99, v100, v101, v102, v103);
      sub_1BE51D7E8();
      _os_log_impl(v104, v105, v106, v107, v108, 0xCu);
      sub_1BE51D7F8();
      sub_1BE51D87C();
    }
  }

  v109 = swift_task_alloc();
  *(v0 + 264) = v109;
  *v109 = v0;
  sub_1BE51D82C(v109);
  sub_1BE51D970();

  return sub_1BE51AE80();
}

uint64_t sub_1BE51D438()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDC0](v0, 27, 7);
}

uint64_t sub_1BE51D494()
{
  swift_weakInit();
  *(v0 + 24) = 256;
  *(v0 + 26) = 0;
  return v0;
}

uint64_t sub_1BE51D4C4()
{
  sub_1BE4E4418();
  v1 = *(v0 + 32);
  v2 = swift_task_alloc();
  v3 = sub_1BE4E4408(v2);
  *v3 = v4;
  v5 = sub_1BE51D948(v3);

  return sub_1BE51ADBC(v5, v6, v7, v1);
}

uint64_t sub_1BE51D55C()
{
  v1 = *(v0 + 32);
  v2 = swift_task_alloc();
  v3 = sub_1BE4E4408(v2);
  *v3 = v4;
  v5 = sub_1BE51D948(v3);

  return sub_1BE51BF78(v5, v6, v7, v1);
}

uint64_t sub_1BE51D604(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1BE51D64C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BE4BF11C(&qword_1EBDAD0B0, &unk_1BE550DA8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BE51D6BC()
{
  swift_unknownObjectRelease();

  v0 = sub_1BE51DA54();

  return MEMORY[0x1EEE6BDD0](v0, v1, 7);
}

uint64_t sub_1BE51D704()
{
  sub_1BE4E4418();
  v1 = *(v0 + 32);
  v2 = swift_task_alloc();
  v3 = sub_1BE4E4408(v2);
  *v3 = v4;
  v5 = sub_1BE51D948(v3);

  return sub_1BE51BE14(v5, v6, v7, v1);
}

uint64_t (*sub_1BE51D7BC())()
{
  *(v2 + 88) = v1;
  *(v2 + 96) = v0;
  *(v2 + 64) = 0;
  *(v2 + 72) = 0;
  *(v2 + 80) = 1;
  return sub_1BE51C45C;
}

void sub_1BE51D7F8()
{
  sub_1BE4C58A8(v0);

  JUMPOUT(0x1BFB48AC0);
}

unint64_t sub_1BE51D854@<X0>(uint64_t a1@<X8>, int a2@<S0>, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  *v4 = a2;

  return sub_1BE4C5338(0xD000000000000019, (a1 - 32) | 0x8000000000000000, va);
}

void sub_1BE51D87C()
{

  JUMPOUT(0x1BFB48AC0);
}

BOOL sub_1BE51D898(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

unint64_t sub_1BE51D8B4@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);

  return sub_1BE4C5338(0xD000000000000019, a1 | 0x8000000000000000, va);
}

uint64_t sub_1BE51D8D4()
{

  return swift_slowAlloc();
}

unint64_t sub_1BE51D8F0(float a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  *v7 = a1;

  return sub_1BE4C5338(0xD00000000000001CLL, v8 | 0x8000000000000000, va);
}

unint64_t sub_1BE51D92C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  return sub_1BE4C5338(0xD00000000000001CLL, a2, va);
}

uint64_t sub_1BE51D990()
{
  v1 = *(v0 + 192);
  *(*(v0 + 104) + 25) = 1;
  return v1;
}

void sub_1BE51D9C4()
{

  JUMPOUT(0x1BFB48AC0);
}

uint64_t sub_1BE51DA60()
{

  return sub_1BE54C91C();
}

unint64_t sub_1BE51DA90(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  return sub_1BE4C5338(0xD00000000000001CLL, a2, a3);
}

uint64_t sub_1BE51DAA8()
{

  return swift_arrayDestroy();
}

uint64_t sub_1BE51DAC4()
{

  return swift_slowAlloc();
}

uint64_t sub_1BE51DAF8()
{

  return sub_1BE4C63BC(v1, 1, v0);
}

uint64_t sub_1BE51DB24()
{

  return swift_task_alloc();
}

uint64_t sub_1BE51DB3C(uint64_t result)
{
  *(v1 + 4) = result;
  *(v1 + 12) = 2050;
  return result;
}

uint64_t sub_1BE51DB4C()
{
}

uint64_t sub_1BE51DB8C(uint64_t a1, uint64_t a2)
{
  sub_1BE4C52BC(a1, a2);

  return sub_1BE54B2BC();
}

uint64_t sub_1BE51DBB4(uint64_t a1)
{

  return sub_1BE54AE8C();
}

uint64_t sub_1BE51DBD8()
{
}

unint64_t sub_1BE51DBF4(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);

  return sub_1BE4C5338(0xD000000000000013, a2, va);
}

uint64_t sub_1BE51DC10(uint64_t a1)
{

  return sub_1BE54AE6C();
}

double sub_1BE51DC5C()
{
  *(v0 + 88) = 0;
  result = 0.0;
  *(v0 + 72) = 0u;
  *(v0 + 56) = 0u;
  return result;
}

uint64_t sub_1BE51DC90()
{

  return sub_1BE54C91C();
}

void sub_1BE51DCB0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0x16u);
}

void sub_1BE51DCD0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

void sub_1BE51DCF0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0x16u);
}

uint64_t sub_1BE51DD10(uint64_t a1)
{

  return sub_1BE54B45C();
}

uint64_t sub_1BE51DD30()
{
}

uint64_t sub_1BE51DD50(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t sub_1BE51DD68()
{
}

unint64_t sub_1BE51DD80(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  return sub_1BE4C5338(a1, a2, va);
}

uint64_t sub_1BE51DD98()
{
  v1 = sub_1BE54AF6C();
  v0[2] = v1;
  v0[3] = *(v1 - 8);
  v0[4] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BE51DE54, 0, 0);
}

uint64_t sub_1BE51DE54()
{
  sub_1BE4BF11C(&qword_1EBDAD0E0, &qword_1BE551740);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1BE54E1A0;
  v2 = [objc_opt_self() sharedPreferences];
  v3 = sub_1BE5202B4(v2);
  if (v4)
  {
    v5 = v3;
    v6 = v4;
  }

  else
  {
    v8 = v0[3];
    v7 = v0[4];
    v9 = v0[2];
    sub_1BE54AF2C();
    v5 = sub_1BE54AEFC();
    v6 = v10;
    (*(v8 + 8))(v7, v9);
  }

  *(v1 + 32) = v5;
  *(v1 + 40) = v6;

  v11 = v0[1];

  return v11(v1);
}

uint64_t sub_1BE51DF6C(uint64_t a1, uint64_t a2)
{

  return sub_1BE54AEEC();
}

uint64_t sub_1BE51DFC0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1BE51E04C;

  return sub_1BE51DD98();
}

uint64_t sub_1BE51E04C()
{
  sub_1BE4E01D4();
  v3 = v2;
  sub_1BE4E0228();
  v4 = *v1;
  sub_1BE4E01C4();
  *v5 = v4;

  v7 = *(v4 + 8);
  if (!v0)
  {
    v6 = v3;
  }

  return v7(v6);
}

uint64_t static SettingsRemoteLocalization.upgradeIAPString()()
{
  sub_1BE4E01D4();
  v1 = sub_1BE54C53C();
  v0[7] = v1;
  v0[8] = *(v1 - 8);
  v0[9] = swift_task_alloc();
  sub_1BE4CE6EC();

  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

uint64_t sub_1BE51E1F4()
{
  sub_1BE4E01D4();
  sub_1BE54C52C();
  v1 = swift_task_alloc();
  *(v0 + 80) = v1;
  *v1 = v0;
  v1[1] = sub_1BE51E29C;

  return sub_1BE51E518(v0 + 16);
}

uint64_t sub_1BE51E29C()
{
  sub_1BE4E01D4();
  sub_1BE4E0228();
  sub_1BE51D9B8();
  *v3 = v2;
  v4 = *v1;
  sub_1BE4E01C4();
  *v5 = v4;
  *(v6 + 88) = v0;

  sub_1BE4CE6EC();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1BE51E398()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];
  sub_1BE4C52F4(v0 + 2, v0[5]);
  v4 = sub_1BE54C5CC();
  v6 = v5;
  (*(v2 + 8))(v1, v3);
  sub_1BE4C58A8(v0 + 2);

  v7 = v0[1];

  return v7(v4, v6);
}

uint64_t sub_1BE51E480()
{
  sub_1BE4E01D4();
  v1 = v0[11];
  (*(v0[8] + 8))(v0[9], v0[7]);

  v2 = v0[1];

  return v2(0xD000000000000017, 0x80000001BE5551C0);
}

uint64_t sub_1BE51E518(uint64_t a1)
{
  v1[27] = a1;
  sub_1BE54AF8C();
  v1[28] = swift_task_alloc();
  v2 = sub_1BE54AFAC();
  v1[29] = v2;
  v1[30] = *(v2 - 8);
  v1[31] = swift_task_alloc();
  v3 = sub_1BE54C57C();
  v1[32] = v3;
  v1[33] = *(v3 - 8);
  v1[34] = swift_task_alloc();
  v4 = sub_1BE54C40C();
  v1[35] = v4;
  v1[36] = *(v4 - 8);
  v1[37] = swift_task_alloc();
  v5 = sub_1BE54C46C();
  v1[38] = v5;
  v1[39] = *(v5 - 8);
  v1[40] = swift_task_alloc();
  v6 = sub_1BE54C3FC();
  v1[41] = v6;
  v1[42] = *(v6 - 8);
  v1[43] = swift_task_alloc();
  v7 = sub_1BE54C4BC();
  v1[44] = v7;
  v1[45] = *(v7 - 8);
  v1[46] = swift_task_alloc();
  v8 = sub_1BE54C5BC();
  v1[47] = v8;
  v1[48] = *(v8 - 8);
  v1[49] = swift_task_alloc();
  v9 = sub_1BE54C4FC();
  v1[50] = v9;
  v1[51] = *(v9 - 8);
  v1[52] = swift_task_alloc();
  v10 = sub_1BE54C59C();
  v1[53] = v10;
  v1[54] = *(v10 - 8);
  v1[55] = swift_task_alloc();
  sub_1BE54C43C();
  v1[56] = swift_task_alloc();
  v11 = sub_1BE54C4CC();
  v1[57] = v11;
  v1[58] = *(v11 - 8);
  v1[59] = swift_task_alloc();
  v1[60] = swift_task_alloc();
  sub_1BE4BF11C(&qword_1EBDABEE8, &unk_1BE54F050);
  v1[61] = swift_task_alloc();
  v12 = sub_1BE54AE3C();
  v1[62] = v12;
  v1[63] = *(v12 - 8);
  v1[64] = swift_task_alloc();
  v1[65] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BE51EA18, 0, 0);
}

uint64_t sub_1BE51EA18()
{
  if (qword_1EBDABA60 != -1)
  {
    swift_once();
  }

  v2 = v0[61];
  v1 = v0[62];

  sub_1BE508B1C(v3, 0xD000000000000011, 0x80000001BE554730, 49, 0xE100000000000000);
  v5 = v4;

  v0[66] = v5;

  sub_1BE54AE1C();
  if (sub_1BE4C63BC(v2, 1, v1) == 1)
  {
    v7 = v0[30];
    v6 = v0[31];
    v8 = v0[29];
    sub_1BE520324(v0[61]);
    sub_1BE54AF7C();
    sub_1BE520050(MEMORY[0x1E69E7CC0]);
    sub_1BE52038C(&qword_1EBDAD0C0, MEMORY[0x1E6969C20], MEMORY[0x1E6969C18]);
    sub_1BE54AD7C();
    sub_1BE54AF9C();
    (*(v7 + 8))(v6, v8);
    swift_willThrow();

    sub_1BE5204D4();

    sub_1BE4E01E0();

    return v10();
  }

  else
  {
    (*(v0[63] + 32))(v0[65], v0[61], v0[62]);
    sub_1BE54C4DC();
    sub_1BE54C51C();
    v0[67] = sub_1BE54C50C();
    sub_1BE54C48C();
    v0[68] = sub_1BE54C47C();
    v9 = v0[65];
    v12 = v0[63];
    v13 = v0[64];
    v27 = v0[62];
    v15 = v0[45];
    v14 = v0[46];
    v28 = v0[44];

    sub_1BE54C42C();
    sub_1BE54C45C();
    swift_allocObject();
    v0[69] = sub_1BE54C44C();
    v16 = objc_opt_self();
    v17 = objc_opt_self();
    v18 = v5;
    v19 = [v17 currentProcess];
    v20 = [v16 ams:v19 configurationWithProcessInfo:v18 bag:?];

    sub_1BE54C58C();
    (*(v12 + 16))(v13, v9, v27);
    (*(v15 + 104))(v14, *MEMORY[0x1E69AAEB8], v28);
    sub_1BE54C5AC();
    v21 = swift_task_alloc();
    v0[70] = v21;
    v22 = sub_1BE52038C(&qword_1EBDAD0C8, MEMORY[0x1E69AB368], MEMORY[0x1E69AB360]);
    *v21 = v0;
    v21[1] = sub_1BE51EF78;
    v23 = v0[55];
    v24 = v0[52];
    v25 = v0[53];
    v26 = v0[49];

    return MEMORY[0x1EEE15D98](v24, v26, v23, v25, v22);
  }
}

uint64_t sub_1BE51EF78()
{
  v2 = *v1;
  sub_1BE51D9B8();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 568) = v0;

  (*(v2[48] + 8))(v2[49], v2[47]);
  sub_1BE4CE6EC();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1BE51F0D8()
{
  (*(v0[39] + 104))(v0[40], *MEMORY[0x1E69AAE90], v0[38]);
  v1 = sub_1BE54C4AC();
  v2 = MEMORY[0x1E69AAEA8];
  v0[5] = v1;
  v0[6] = v2;
  sub_1BE50B648(v0 + 2);
  sub_1BE54C49C();
  sub_1BE54C3DC();
  sub_1BE54C4EC();
  v3 = swift_task_alloc();
  v0[72] = v3;
  *v3 = v0;
  v3[1] = sub_1BE51F1EC;
  v4 = v0[37];

  return MEMORY[0x1EEE15D10](v4, v0 + 7);
}

uint64_t sub_1BE51F1EC()
{
  sub_1BE4E01D4();
  sub_1BE4E0228();
  v3 = v2;
  sub_1BE51D9B8();
  *v4 = v3;
  v5 = *v1;
  sub_1BE4E01C4();
  *v6 = v5;
  *(v3 + 584) = v0;

  sub_1BE4C58A8((v3 + 56));
  sub_1BE4CE6EC();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1BE51F2F0()
{
  v1 = v0[73];
  v2 = v0[59];
  v3 = v0[60];
  v4 = v0[57];
  v5 = v0[58];
  v7 = v0[36];
  v6 = v0[37];
  v8 = v0[35];
  v9 = MEMORY[0x1E69AAE48];
  v0[15] = v8;
  v0[16] = v9;
  v10 = sub_1BE50B648(v0 + 12);
  (*(v7 + 16))(v10, v6, v8);
  (*(v5 + 16))(v2, v3, v4);
  sub_1BE54C56C();
  if (v1)
  {
    v33 = v0[66];
    v11 = v0[63];
    v42 = v0[62];
    v43 = v0[65];
    v12 = v0[58];
    v40 = v0[57];
    v41 = v0[60];
    v13 = v0[54];
    v38 = v0[53];
    v39 = v0[55];
    v14 = v0[51];
    v36 = v0[50];
    v37 = v0[52];
    v15 = v0[42];
    v34 = v0[41];
    v35 = v0[43];
    v17 = v0[36];
    v16 = v0[37];
    v18 = v0[35];

    (*(v17 + 8))(v16, v18);
    (*(v15 + 8))(v35, v34);
    (*(v14 + 8))(v37, v36);
    (*(v13 + 8))(v39, v38);
    (*(v12 + 8))(v41, v40);
    (*(v11 + 8))(v43, v42);

    sub_1BE4E01E0();
    sub_1BE520500();

    __asm { BRAA            X1, X16 }
  }

  v22 = v0[33];
  v21 = v0[34];
  v23 = v0[32];
  v0[74] = sub_1BE54C55C();
  v24 = MEMORY[0x1E69AB348];
  v0[20] = v23;
  v0[21] = v24;
  v25 = sub_1BE50B648(v0 + 17);
  v26 = (*(v22 + 16))(v25, v21, v23);
  v0[25] = &type metadata for SettingsRemoteLocalization.SiriLanguageSource;
  v0[26] = sub_1BE5203D4(v26, v27, v28);
  v29 = swift_task_alloc();
  v0[75] = v29;
  *v29 = v0;
  v29[1] = sub_1BE51F658;
  sub_1BE520500();

  return MEMORY[0x1EEE17078](v30);
}

uint64_t sub_1BE51F658(uint64_t a1)
{
  sub_1BE4E0228();
  v5 = v4;
  sub_1BE51D9B8();
  *v6 = v5;
  v7 = *v2;
  sub_1BE4E01C4();
  *v8 = v7;
  v5[76] = v1;

  if (!v1)
  {
    v5[77] = a1;
    sub_1BE4C58A8(v5 + 22);
    sub_1BE4C58A8(v5 + 17);
  }

  sub_1BE4CE6EC();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1BE51F77C()
{
  v18 = v0[77];
  v15 = v0[66];
  v27 = v0[65];
  v25 = v0[63];
  v26 = v0[62];
  v24 = v0[60];
  v1 = v0[58];
  v23 = v0[57];
  v2 = v0[54];
  v21 = v0[53];
  v22 = v0[55];
  v3 = v0[51];
  v19 = v0[50];
  v20 = v0[52];
  v4 = v0[42];
  v16 = v0[41];
  v17 = v0[43];
  v5 = v0[36];
  v6 = v0[34];
  v13 = v0[35];
  v14 = v0[37];
  v8 = v0[32];
  v7 = v0[33];
  v9 = v0[27];
  v10 = MEMORY[0x1E69AB330];
  v9[3] = v0[74];
  v9[4] = v10;

  *v9 = v18;
  (*(v7 + 8))(v6, v8);
  (*(v5 + 8))(v14, v13);
  (*(v4 + 8))(v17, v16);
  (*(v3 + 8))(v20, v19);
  (*(v2 + 8))(v22, v21);
  (*(v1 + 8))(v24, v23);
  (*(v25 + 8))(v27, v26);

  sub_1BE4E01E0();

  return v11();
}

uint64_t sub_1BE51F9F8()
{
  v1 = v0[66];
  v2 = v0[63];
  v11 = v0[62];
  v12 = v0[65];
  v10 = v0[60];
  v4 = v0[57];
  v3 = v0[58];
  v5 = v0[54];
  v6 = v0[55];
  v7 = v0[53];

  (*(v5 + 8))(v6, v7);
  (*(v3 + 8))(v10, v4);
  (*(v2 + 8))(v12, v11);
  sub_1BE5204A8();
  sub_1BE5204D4();

  sub_1BE4E01E0();

  return v8();
}

uint64_t sub_1BE51FB84()
{
  v1 = v0[66];
  v2 = v0[63];
  v17 = v0[62];
  v18 = v0[65];
  v3 = v0[58];
  v15 = v0[57];
  v16 = v0[60];
  v4 = v0[54];
  v13 = v0[53];
  v14 = v0[55];
  v12 = v0[52];
  v5 = v0[51];
  v11 = v0[50];
  v7 = v0[42];
  v6 = v0[43];
  v8 = v0[41];

  (*(v7 + 8))(v6, v8);
  (*(v5 + 8))(v12, v11);
  (*(v4 + 8))(v14, v13);
  (*(v3 + 8))(v16, v15);
  (*(v2 + 8))(v18, v17);
  sub_1BE5204A8();

  sub_1BE4E01E0();

  return v9();
}

void sub_1BE51FD6C()
{
  v13 = v0[66];
  v24 = v0[65];
  v22 = v0[63];
  v23 = v0[62];
  v1 = v0[58];
  v20 = v0[57];
  v21 = v0[60];
  v2 = v0[54];
  v18 = v0[53];
  v19 = v0[55];
  v3 = v0[51];
  v16 = v0[50];
  v17 = v0[52];
  v4 = v0[42];
  v14 = v0[41];
  v15 = v0[43];
  v5 = v0[36];
  v6 = v0[34];
  v11 = v0[35];
  v12 = v0[37];
  v8 = v0[32];
  v7 = v0[33];

  (*(v7 + 8))(v6, v8);
  (*(v5 + 8))(v12, v11);
  (*(v4 + 8))(v15, v14);
  (*(v3 + 8))(v17, v16);
  (*(v2 + 8))(v19, v18);
  (*(v1 + 8))(v21, v20);
  (*(v22 + 8))(v24, v23);
  sub_1BE4C58A8(v0 + 22);
  sub_1BE4C58A8(v0 + 17);
  sub_1BE5204A8();

  sub_1BE4E01E0();
  sub_1BE520500();

  __asm { BRAA            X1, X16 }
}

_BYTE *storeEnumTagSinglePayload for SettingsRemoteLocalization(_BYTE *result, int a2, int a3)
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

unint64_t sub_1BE520050(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    v3 = MEMORY[0x1E69E7CC8];
LABEL_9:

    return v3;
  }

  sub_1BE4BF11C(&qword_1EBDAC3B0, &qword_1BE54F570);
  v2 = sub_1BE54CBEC();
  v3 = v2;
  v4 = *(a1 + 16);
  if (!v4)
  {
    goto LABEL_9;
  }

  v5 = v2 + 64;
  v6 = a1 + 32;

  while (1)
  {
    sub_1BE520428(v6, &v15);
    v7 = v15;
    v8 = v16;
    result = sub_1BE520188(v15, v16);
    if (v10)
    {
      break;
    }

    *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
    v11 = (v3[6] + 16 * result);
    *v11 = v7;
    v11[1] = v8;
    result = sub_1BE4E3E7C(&v17, (v3[7] + 32 * result));
    v12 = v3[2];
    v13 = __OFADD__(v12, 1);
    v14 = v12 + 1;
    if (v13)
    {
      goto LABEL_12;
    }

    v3[2] = v14;
    v6 += 48;
    if (!--v4)
    {

      return v3;
    }
  }

  __break(1u);
LABEL_12:
  __break(1u);
  return result;
}

unint64_t sub_1BE520188(uint64_t a1, uint64_t a2)
{
  sub_1BE54CD8C();
  sub_1BE54C77C();
  v4 = sub_1BE54CDAC();

  return sub_1BE520200(a1, a2, v4);
}

unint64_t sub_1BE520200(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_1BE54CCDC() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

uint64_t sub_1BE5202B4(void *a1)
{
  v2 = [a1 languageCode];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_1BE54C70C();

  return v3;
}

uint64_t sub_1BE520324(uint64_t a1)
{
  v2 = sub_1BE4BF11C(&qword_1EBDABEE8, &unk_1BE54F050);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BE52038C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1BE5203D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBDAD0D0;
  if (!qword_1EBDAD0D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDAD0D0);
  }

  return result;
}

uint64_t sub_1BE520428(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BE4BF11C(&qword_1EBDAD0D8, &unk_1BE550E20);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BE5204D4()
{
}

uint64_t sub_1BE52051C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  swift_getKeyPath();
  sub_1BE525D0C();
  v6 = sub_1BE5257EC(v4, v5, &unk_1BE551090);
  sub_1BE4DCEC0(v6, v7, v8, v9, v10, v11, v12, v13, v17, v1);
  sub_1BE54AFCC();

  v15 = OBJC_IVAR____TtC26GenerativePartnerServiceUI16SubscriptionInfo__storeURL;
  sub_1BE525D40(v14);
  return sub_1BE5256F0(v2 + v15, a1);
}

uint64_t sub_1BE5205BC()
{
  swift_getKeyPath();
  sub_1BE525D0C();
  v3 = sub_1BE5257EC(v1, v2, &unk_1BE551090);
  sub_1BE4DCEC0(v3, v4, v5, v6, v7, v8, v9, v10, v13, v0);
  sub_1BE54AFCC();

  v11 = *(v0 + OBJC_IVAR____TtC26GenerativePartnerServiceUI16SubscriptionInfo__upgradeCTAText);

  return v11;
}

uint64_t sub_1BE520660(uint64_t a1, uint64_t a2)
{
  KeyPath = swift_getKeyPath();
  v8 = v2;
  v9 = a1;
  v10 = a2;
  sub_1BE522468(KeyPath, sub_1BE525528, &v7);

  return swift_unknownObjectRelease();
}

uint64_t sub_1BE5206E4(uint64_t result)
{
  v2 = result;
  v3 = *(v1 + OBJC_IVAR____TtC26GenerativePartnerServiceUI16SubscriptionInfo__accountReportsPaidPlan);
  if (v3 != 2)
  {
    if (result != 2 && ((v3 ^ result) & 1) == 0)
    {
      goto LABEL_7;
    }

LABEL_6:
    swift_getKeyPath();
    sub_1BE525D78();
    MEMORY[0x1EEE9AC00](v4, v5);
    sub_1BE525D30();
    *(v6 - 16) = v1;
    *(v6 - 8) = v2;
    sub_1BE525DC4(v7, v8, v9);
  }

  if (result != 2)
  {
    goto LABEL_6;
  }

LABEL_7:
  *(v1 + OBJC_IVAR____TtC26GenerativePartnerServiceUI16SubscriptionInfo__accountReportsPaidPlan) = result;
  return result;
}

uint64_t sub_1BE5207AC()
{
  sub_1BE4E01D4();
  v1[7] = v0;
  v1[8] = sub_1BE54C8CC();
  v1[9] = sub_1BE54C8BC();
  sub_1BE50A968();
  v3 = sub_1BE54C87C();
  v1[10] = v3;
  v1[11] = v2;

  return MEMORY[0x1EEE6DFA0](sub_1BE520840, v3, v2);
}

uint64_t sub_1BE520840()
{
  sub_1BE4E4418();
  sub_1BE522A7C((v0 + 2));
  sub_1BE4C52F4(v0 + 2, v0[5]);
  v1 = swift_task_alloc();
  v0[12] = v1;
  *v1 = v0;
  sub_1BE525D6C(v1);

  return sub_1BE520D40();
}

uint64_t sub_1BE5208FC()
{
  sub_1BE4E4418();
  v3 = v2;
  sub_1BE4E0228();
  v5 = v4;
  sub_1BE51D9B8();
  *v6 = v5;
  v7 = *v1;
  sub_1BE4E01C4();
  *v8 = v7;
  v5[13] = v0;

  if (v0)
  {
    v9 = v5[10];
    v10 = v5[11];
    v11 = sub_1BE520B7C;
  }

  else
  {
    v5[14] = v3;
    v9 = v5[10];
    v10 = v5[11];
    v11 = sub_1BE520A10;
  }

  return MEMORY[0x1EEE6DFA0](v11, v9, v10);
}

uint64_t sub_1BE520A10()
{
  sub_1BE4E4418();
  v1 = *(v0 + 112);
  sub_1BE4C58A8((v0 + 16));
  v2 = *(v1 + 16);

  v3 = sub_1BE522C74();
  if (v3 == 2)
  {
    v4 = 0;
  }

  else if (v2)
  {
    if (v3)
    {
      v4 = 2;
    }

    else
    {
      if (qword_1EBDABAC8 != -1)
      {
        swift_once();
      }

      v5 = sub_1BE54B2EC();
      sub_1BE4C52BC(v5, qword_1EBDB0C98);
      v6 = sub_1BE54B2BC();
      v7 = sub_1BE54C9AC();
      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        *v8 = 0;
        _os_log_impl(&dword_1BE4B8000, v6, v7, "Current ChatGPT account reports free plan, but has Apple IAP subscription. This is not supported and will default to free behavior. Please login with the ChatGPT account associated with this IAP subscription.", v8, 2u);
        MEMORY[0x1BFB48AC0](v8, -1, -1);
      }

      v4 = 4;
    }
  }

  else if (v3)
  {
    v4 = 3;
  }

  else
  {
    v4 = 0;
  }

  *(v0 + 128) = v4;
  v9 = sub_1BE50AAA4();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1BE520B7C()
{
  sub_1BE4E01D4();
  v1 = *(v0 + 104);
  sub_1BE4C58A8((v0 + 16));

  *(v0 + 128) = 1;
  v2 = sub_1BE50AAA4();

  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

uint64_t sub_1BE520BEC()
{
  sub_1BE4E01D4();
  *(v0 + 120) = sub_1BE54C8BC();
  sub_1BE50A968();
  sub_1BE54C87C();
  sub_1BE525D24();
  v1 = sub_1BE50AA94();

  return MEMORY[0x1EEE6DFA0](v1, v2, v3);
}

uint64_t sub_1BE520C64()
{
  sub_1BE4E01D4();
  v1 = *(v0 + 128);

  sub_1BE5220D8(v1);
  v2 = *(v0 + 80);
  v3 = *(v0 + 88);

  return MEMORY[0x1EEE6DFA0](sub_1BE520CD4, v2, v3);
}

uint64_t sub_1BE520CD4()
{
  sub_1BE4E01D4();

  sub_1BE525D60();
  v2 = *(v0 + 128);

  return v1(v2);
}

uint64_t sub_1BE520D40()
{
  sub_1BE4E021C();
  v0[3] = sub_1BE54C8CC();
  v0[4] = sub_1BE54C8BC();
  v1 = swift_task_alloc();
  v0[5] = v1;
  *v1 = v0;
  sub_1BE525D6C(v1);

  return sub_1BE5212D8();
}

uint64_t sub_1BE520E0C()
{
  sub_1BE4E021C();
  v3 = v2;
  v4 = *v1;
  sub_1BE4E01C4();
  *v5 = v4;
  *v5 = *v1;
  v4[6] = v0;

  if (v0)
  {
    sub_1BE54C87C();
    sub_1BE525D24();
    v6 = sub_1BE52127C;
    v8 = v7;
    v10 = v9;
  }

  else
  {
    v4[7] = v3;
    v11 = sub_1BE54C87C();
    v10 = v12;
    v4[8] = v11;
    v4[9] = v12;
    v6 = sub_1BE520F8C;
    v8 = v11;
  }

  return MEMORY[0x1EEE6DFA0](v6, v8, v10);
}

uint64_t sub_1BE520F8C()
{
  sub_1BE4E4418();
  v1 = v0[7];
  v0[10] = sub_1BE54C8BC();
  v2 = swift_task_alloc();
  v0[11] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[12] = v3;
  sub_1BE4BF11C(&qword_1EBDAD080, qword_1BE550B60);
  *v3 = v0;
  v3[1] = sub_1BE5210A4;

  return MEMORY[0x1EEE6DDE0](v0 + 2);
}

uint64_t sub_1BE5210A4()
{
  sub_1BE4E021C();
  v1 = *v0;
  v2 = *v0;
  sub_1BE4E01C4();
  *v3 = v2;

  v4 = *(v1 + 72);
  v5 = *(v1 + 64);

  return MEMORY[0x1EEE6DFA0](sub_1BE52121C, v5, v4);
}

uint64_t sub_1BE52121C()
{
  sub_1BE4E01D4();

  sub_1BE525D60();

  return v0();
}

uint64_t sub_1BE52127C()
{
  sub_1BE4E01D4();

  sub_1BE4E01E0();

  return v0();
}

uint64_t sub_1BE5212D8()
{
  sub_1BE4E01D4();
  v0[4] = v1;
  v0[5] = v2;
  v0[2] = v3;
  v0[3] = v4;
  v0[6] = sub_1BE54C8CC();
  v0[7] = sub_1BE54C8BC();
  v5 = sub_1BE50AAA4();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1BE52134C()
{
  sub_1BE4E4418();
  v9 = v0;
  v1 = *(v0 + 40);
  if (v1)
  {
    v7 = *(v0 + 32);
    v8 = v1;

    sub_1BE525DA8();
    sub_1BE4FFAA0();
    v2 = &v7;
    MEMORY[0x1BFB47CA0](0xD000000000000013);
    sub_1BE54C6DC();
    sub_1BE50A968();
  }

  else
  {
    sub_1BE4FFAA0();
    v2 = sub_1BE54C6DC();
  }

  v3 = [*(v0 + 24) arrayForKey_];
  *(v0 + 64) = v3;

  v4 = swift_task_alloc();
  *(v0 + 72) = v4;
  *v4 = v0;
  v4[1] = sub_1BE521480;
  v5 = *(v0 + 16);

  return sub_1BE5189D8(v3, 3, 1, v5);
}

uint64_t sub_1BE521480()
{
  sub_1BE4E4418();
  v3 = v2;
  sub_1BE4E0228();
  v5 = v4;
  sub_1BE51D9B8();
  *v6 = v5;
  v7 = *v1;
  sub_1BE4E01C4();
  *v8 = v7;
  *(v5 + 80) = v0;

  if (v0)
  {
    v9 = sub_1BE521614;
    v10 = 0;
    v11 = 0;
  }

  else
  {

    *(v5 + 88) = v3;
    sub_1BE54C87C();
    sub_1BE525D24();
    v9 = sub_1BE50AA94();
  }

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1BE5215B4()
{
  sub_1BE4E01D4();

  sub_1BE525D60();
  v2 = *(v0 + 88);

  return v1(v2);
}

uint64_t sub_1BE521614()
{
  sub_1BE4E01D4();

  sub_1BE54C87C();
  sub_1BE525D24();
  v1 = sub_1BE50AA94();

  return MEMORY[0x1EEE6DFA0](v1, v2, v3);
}

uint64_t sub_1BE521688()
{
  sub_1BE4E01D4();

  sub_1BE4E01E0();

  return v0();
}

void sub_1BE5216E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BE4BF11C(&qword_1EBDAD140, &qword_1BE551150);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = aBlock - v8;
  v10 = [objc_opt_self() sharedInstance];
  (*(v5 + 16))(v9, a1, v4);
  v11 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v12 = swift_allocObject();
  (*(v5 + 32))(v12 + v11, v9, v4);
  *(v12 + ((v6 + v11 + 7) & 0xFFFFFFFFFFFFFFF8)) = a2;
  aBlock[4] = sub_1BE5250DC;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BE521C08;
  aBlock[3] = &unk_1F3CCD010;
  v13 = _Block_copy(aBlock);

  [v10 getAllIAPsForActiveAccountWithResultHandler_];
  _Block_release(v13);
}

void sub_1BE5218D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a4;
  if (a1)
  {
    v32 = a3;
    isUniquelyReferenced_nonNull_native = sub_1BE4D0EB0();
    v7 = isUniquelyReferenced_nonNull_native;
    v8 = 0;
    v9 = MEMORY[0x1E69E7CC0];
    while (v7 != v8)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x1BFB47FF0](v8, a1);
      }

      else
      {
        if (v8 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_29;
        }

        v10 = *(a1 + 8 * v8 + 32);
      }

      v11 = v10;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
LABEL_29:
        __break(1u);
LABEL_30:
        __break(1u);
        return;
      }

      v12 = [v10 adamId];
      v13 = [v12 stringValue];

      v14 = sub_1BE54C70C();
      v16 = v15;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1BE542208();
        v9 = isUniquelyReferenced_nonNull_native;
      }

      v17 = *(v9 + 16);
      if (v17 >= *(v9 + 24) >> 1)
      {
        sub_1BE542208();
        v9 = isUniquelyReferenced_nonNull_native;
      }

      *(v9 + 16) = v17 + 1;
      v18 = v9 + 16 * v17;
      *(v18 + 32) = v14;
      *(v18 + 40) = v16;
      ++v8;
    }

    v19 = 0;
    v20 = *(v9 + 16);
    v21 = v9 + 40;
    v33 = MEMORY[0x1E69E7CC0];
    v31 = v9 + 40;
LABEL_15:
    v22 = (v21 + 16 * v19);
    while (v20 != v19)
    {
      if (v19 >= *(v9 + 16))
      {
        goto LABEL_30;
      }

      v24 = *(v22 - 1);
      v23 = *v22;
      v35[0] = v24;
      v35[1] = v23;
      MEMORY[0x1EEE9AC00](isUniquelyReferenced_nonNull_native, v6);
      v30[2] = v35;

      if (sub_1BE54729C(sub_1BE4E1F04, v30, v34))
      {
        v25 = v33;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v36 = v25;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          isUniquelyReferenced_nonNull_native = sub_1BE52B7C8(0, *(v25 + 16) + 1, 1);
          v25 = v36;
        }

        v27 = *(v25 + 16);
        v26 = *(v25 + 24);
        if (v27 >= v26 >> 1)
        {
          isUniquelyReferenced_nonNull_native = sub_1BE52B7C8((v26 > 1), v27 + 1, 1);
          v25 = v36;
        }

        ++v19;
        *(v25 + 16) = v27 + 1;
        v33 = v25;
        v28 = v25 + 16 * v27;
        *(v28 + 32) = v24;
        *(v28 + 40) = v23;
        v21 = v31;
        goto LABEL_15;
      }

      v22 += 2;
      ++v19;
    }

    v29 = v33;
  }

  else
  {
    v29 = MEMORY[0x1E69E7CC0];
  }

  v35[0] = v29;
  sub_1BE4BF11C(&qword_1EBDAD140, &qword_1BE551150);
  sub_1BE54C88C();
}

uint64_t sub_1BE521BC4()
{
  sub_1BE54CD8C();
  MEMORY[0x1BFB482A0](0);
  return sub_1BE54CDAC();
}

uint64_t sub_1BE521C08(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {
    sub_1BE4D0D48(0, &qword_1EBDAD148, 0x1E698B4C0);
    v4 = sub_1BE54C82C();
  }

  v6 = a3;
  v5(v4, a3);
}

uint64_t sub_1BE521CB0(uint64_t a1)
{
  sub_1BE54CD8C();
  MEMORY[0x1BFB482A0](0);
  return sub_1BE54CDAC();
}

uint64_t sub_1BE521D18(unsigned __int8 a1)
{
  sub_1BE54CD8C();
  MEMORY[0x1BFB482A0](a1);
  return sub_1BE54CDAC();
}

uint64_t sub_1BE521D7C(uint64_t a1)
{
  v2 = v1;
  v3 = a1;
  v4 = a1;
  result = sub_1BE521FA8();
  if (v4 == 5)
  {
    if (result == 5)
    {
      return result;
    }
  }

  else if (result != 5 && result == v3)
  {
    return result;
  }

  result = sub_1BE522030();
  v6 = result;
  v7 = 0;
  v8 = result + 56;
  v9 = 1 << *(result + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(result + 56);
  for (i = (v9 + 63) >> 6; v11; result = )
  {
    v13 = v7;
LABEL_14:
    v14 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v15 = *(*(v6 + 48) + ((v13 << 10) | (16 * v14)));

    v15(v16);
  }

  while (1)
  {
    v13 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v13 >= i)
    {

      swift_getKeyPath();
      sub_1BE5257EC(&qword_1EBDAC5D0, type metadata accessor for SubscriptionInfo, &unk_1BE551090);
      sub_1BE54AFCC();

      swift_getKeyPath();
      sub_1BE54AFEC();

      v17 = OBJC_IVAR____TtC26GenerativePartnerServiceUI16SubscriptionInfo__queuedActions;
      swift_beginAccess();
      *(v2 + v17) = MEMORY[0x1E69E7CD0];

      swift_getKeyPath();
      sub_1BE54AFDC();
    }

    v11 = *(v8 + 8 * v13);
    ++v7;
    if (v11)
    {
      v7 = v13;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1BE521FA8()
{
  swift_getKeyPath();
  sub_1BE525D0C();
  v3 = sub_1BE5257EC(v1, v2, &unk_1BE551090);
  sub_1BE4DCEC0(v3, v4, v5, v6, v7, v8, v9, v10, v12, v0);
  sub_1BE54AFCC();

  return *(v0 + 16);
}

uint64_t sub_1BE522030()
{
  swift_getKeyPath();
  sub_1BE525D0C();
  v3 = sub_1BE5257EC(v1, v2, &unk_1BE551090);
  sub_1BE4DCEC0(v3, v4, v5, v6, v7, v8, v9, v10, v13, v0);
  sub_1BE54AFCC();

  sub_1BE525D40(v11);
}

uint64_t sub_1BE5220C8(char a1)
{
  v2 = *(v1 + 16);
  *(v1 + 16) = a1;
  return sub_1BE521D7C(v2);
}

uint64_t sub_1BE5220D8(char a1)
{
  if (*(v1 + 16) == a1)
  {

    return sub_1BE5220C8(a1);
  }

  else
  {
    swift_getKeyPath();
    sub_1BE525D78();
    MEMORY[0x1EEE9AC00](v4, v5);
    sub_1BE525D30();
    *(v6 - 16) = v1;
    *(v6 - 8) = a1;
    sub_1BE525DC4(v7, v8, v9);
  }
}

uint64_t sub_1BE522198(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BE54AE3C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1BE4BF11C(&qword_1EBDABEE8, &unk_1BE54F050);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v23 - v11;
  v13 = sub_1BE4BF11C(&qword_1EBDAD150, &qword_1BE551228);
  v15 = MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v17 = &v23 - v16;
  v18 = *(v15 + 56);
  sub_1BE5256F0(a1, &v23 - v16);
  sub_1BE5256F0(a2, &v17[v18]);
  if (sub_1BE4C63BC(v17, 1, v4) != 1)
  {
    sub_1BE5256F0(v17, v12);
    if (sub_1BE4C63BC(&v17[v18], 1, v4) != 1)
    {
      (*(v5 + 32))(v8, &v17[v18], v4);
      sub_1BE5257EC(&qword_1EBDAD158, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC8]);
      v20 = sub_1BE54C64C();
      v21 = *(v5 + 8);
      v21(v8, v4);
      v21(v12, v4);
      sub_1BE4C6F5C(v17, &qword_1EBDABEE8, &unk_1BE54F050);
      v19 = v20 ^ 1;
      return v19 & 1;
    }

    (*(v5 + 8))(v12, v4);
    goto LABEL_6;
  }

  if (sub_1BE4C63BC(&v17[v18], 1, v4) != 1)
  {
LABEL_6:
    sub_1BE4C6F5C(v17, &qword_1EBDAD150, &qword_1BE551228);
    v19 = 1;
    return v19 & 1;
  }

  sub_1BE4C6F5C(v17, &qword_1EBDABEE8, &unk_1BE54F050);
  v19 = 0;
  return v19 & 1;
}

uint64_t sub_1BE522468(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1BE525D0C();
  sub_1BE5257EC(v3, v4, &unk_1BE551090);
  return sub_1BE54AFBC();
}

uint64_t sub_1BE522510(uint64_t a1)
{
  v2 = sub_1BE4BF11C(&qword_1EBDABEE8, &unk_1BE54F050);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v7 - v4;
  sub_1BE5256F0(a1, &v7 - v4);
  return sub_1BE5225A4(v5);
}

uint64_t sub_1BE5225A4(uint64_t a1)
{
  v3 = sub_1BE4BF11C(&qword_1EBDABEE8, &unk_1BE54F050);
  v4 = sub_1BE4C7570(v3);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v17 - v6;
  v8 = OBJC_IVAR____TtC26GenerativePartnerServiceUI16SubscriptionInfo__storeURL;
  swift_beginAccess();
  sub_1BE5256F0(v1 + v8, v7);
  v9 = sub_1BE522198(v7, a1);
  sub_1BE4C6F5C(v7, &qword_1EBDABEE8, &unk_1BE54F050);
  if (v9)
  {
    swift_getKeyPath();
    sub_1BE525D78();
    MEMORY[0x1EEE9AC00](v10, v11);
    sub_1BE525D30();
    *(v12 - 16) = v1;
    *(v12 - 8) = a1;
    sub_1BE525DC4(v13, v14, v15);
  }

  else
  {
    swift_beginAccess();
    sub_1BE525760(a1, v1 + v8);
    swift_endAccess();
  }

  return sub_1BE4C6F5C(a1, &qword_1EBDABEE8, &unk_1BE54F050);
}

uint64_t sub_1BE522710(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC26GenerativePartnerServiceUI16SubscriptionInfo__storeURL;
  swift_beginAccess();
  sub_1BE525760(a2, a1 + v4);
  return swift_endAccess();
}

uint64_t sub_1BE5227BC()
{
  sub_1BE525E18();
  v3 = (v1 + OBJC_IVAR____TtC26GenerativePartnerServiceUI16SubscriptionInfo__upgradeCTAText);
  if (sub_1BE5080E8(*(v1 + OBJC_IVAR____TtC26GenerativePartnerServiceUI16SubscriptionInfo__upgradeCTAText), *(v1 + OBJC_IVAR____TtC26GenerativePartnerServiceUI16SubscriptionInfo__upgradeCTAText + 8), v2, v0))
  {
    swift_getKeyPath();
    sub_1BE525D78();
    v6 = MEMORY[0x1EEE9AC00](v4, v5);
    v9[2] = v1;
    v9[3] = v2;
    v9[4] = v0;
    sub_1BE525DC4(v6, v7, v9);
  }

  else
  {
    *v3 = v2;
    v3[1] = v0;
  }
}

uint64_t sub_1BE5228A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = (a1 + OBJC_IVAR____TtC26GenerativePartnerServiceUI16SubscriptionInfo__upgradeCTAText);
  *v3 = a2;
  v3[1] = a3;
}

uint64_t sub_1BE5228F0()
{
  sub_1BE50A878();
  result = sub_1BE522030();
  *v0 = result;
  return result;
}

uint64_t sub_1BE522944(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC26GenerativePartnerServiceUI16SubscriptionInfo__queuedActions;
  swift_beginAccess();
  sub_1BE53941C(*(v1 + v3), a1);
  if (v4)
  {
    *(v1 + v3) = a1;
  }

  else
  {
    swift_getKeyPath();
    sub_1BE525D78();
    MEMORY[0x1EEE9AC00](v6, v7);
    sub_1BE525D30();
    *(v8 - 16) = v1;
    *(v8 - 8) = a1;
    sub_1BE525DC4(v9, v10, v11);
  }
}

uint64_t sub_1BE522A0C(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC26GenerativePartnerServiceUI16SubscriptionInfo__queuedActions;
  swift_beginAccess();
  *(a1 + v4) = a2;
}

uint64_t sub_1BE522A7C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  swift_getKeyPath();
  sub_1BE525D0C();
  v6 = sub_1BE5257EC(v4, v5, &unk_1BE551090);
  sub_1BE4DCEC0(v6, v7, v8, v9, v10, v11, v12, v13, v17, v1);
  sub_1BE54AFCC();

  v15 = OBJC_IVAR____TtC26GenerativePartnerServiceUI16SubscriptionInfo__appStoreDataSource;
  sub_1BE525D40(v14);
  return sub_1BE4C6918(v2 + v15, a1);
}

uint64_t sub_1BE522B1C(uint64_t a1, uint64_t *a2)
{
  sub_1BE4C6918(a1, v10);
  v3 = *a2;
  v4 = sub_1BE50A568(v10, v10[3]);
  MEMORY[0x1EEE9AC00](v4, v4);
  v6 = (&v10[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v7 + 16))(v6);
  sub_1BE525224(*v6, v6[1], v6[2], v6[3], v3);
  return sub_1BE4C58A8(v10);
}

uint64_t sub_1BE522C08(uint64_t a1, uint64_t *a2)
{
  v4 = OBJC_IVAR____TtC26GenerativePartnerServiceUI16SubscriptionInfo__appStoreDataSource;
  swift_beginAccess();
  sub_1BE525304((a1 + v4), a2);
  return swift_endAccess();
}

uint64_t sub_1BE522C74()
{
  swift_getKeyPath();
  sub_1BE525D0C();
  v3 = sub_1BE5257EC(v1, v2, &unk_1BE551090);
  sub_1BE4DCEC0(v3, v4, v5, v6, v7, v8, v9, v10, v12, v0);
  sub_1BE54AFCC();

  return *(v0 + OBJC_IVAR____TtC26GenerativePartnerServiceUI16SubscriptionInfo__accountReportsPaidPlan);
}

uint64_t sub_1BE522D04()
{
  swift_getKeyPath();
  sub_1BE525D0C();
  v3 = sub_1BE5257EC(v1, v2, &unk_1BE551090);
  sub_1BE4DCEC0(v3, v4, v5, v6, v7, v8, v9, v10, v12, v0);
  sub_1BE54AFCC();

  return swift_unknownObjectWeakLoadStrong();
}

uint64_t sub_1BE522DA0(void *a1, uint64_t a2)
{
  v2 = a1[1];
  v3 = swift_unknownObjectRetain();
  return sub_1BE520660(v3, v2);
}

uint64_t sub_1BE522DDC()
{
  sub_1BE4E01D4();
  *(v0 + 16) = v1;
  sub_1BE54C8CC();
  *(v0 + 24) = sub_1BE54C8BC();
  sub_1BE50A968();
  sub_1BE54C87C();
  sub_1BE525D24();
  v2 = sub_1BE50AA94();

  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

uint64_t sub_1BE522E60()
{
  sub_1BE4E01D4();

  sub_1BE522EF8(&unk_1F3CCD098);
  sub_1BE522EF8(&unk_1F3CCD070);
  sub_1BE4E01E0();

  return v0();
}

uint64_t sub_1BE522EF8(uint64_t a1)
{
  v2 = v1;
  v3 = sub_1BE4BF11C(&qword_1EBDAC3A8, &qword_1BE550DA0);
  v4 = sub_1BE4C7570(v3);
  MEMORY[0x1EEE9AC00](v4, v5);
  sub_1BE54C91C();
  sub_1BE50A890();
  sub_1BE4C63F8(v6, v7, v8, v9);
  sub_1BE54C8CC();

  v10 = sub_1BE54C8BC();
  v11 = swift_allocObject();
  v12 = MEMORY[0x1E69E85E0];
  v11[2] = v10;
  v11[3] = v12;
  v11[4] = v2;
  sub_1BE50BA3C();
}

uint64_t sub_1BE522FEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  sub_1BE4BF11C(&qword_1EBDABEE8, &unk_1BE54F050);
  v4[3] = swift_task_alloc();
  v4[4] = swift_task_alloc();
  v4[5] = sub_1BE54C8CC();
  v4[6] = sub_1BE54C8BC();
  v6 = sub_1BE54C87C();
  v4[7] = v6;
  v4[8] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1BE5230CC, v6, v5);
}

uint64_t sub_1BE5230CC()
{
  sub_1BE4E01D4();
  if (qword_1EBDABA60 != -1)
  {
    sub_1BE50A974(&qword_1EBDABA60);
  }

  sub_1BE525D84(v1);
  v0[9] = v2;
  v0[10] = v3;
  v0[11] = v4;
  v0[12] = v5;
  v6 = sub_1BE50AAA4();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1BE523164()
{
  sub_1BE4E4418();
  v8 = v0;
  v1 = *(v0 + 96);
  if (v1)
  {
    v6 = *(v0 + 88);
    v7 = v1;

    sub_1BE525DA8();
    sub_1BE4FFAA0();
    v2 = &v6;
    v3 = sub_1BE525E24();
    MEMORY[0x1BFB47CA0](v3);
    sub_1BE54C6DC();
    sub_1BE50A968();
  }

  else
  {
    sub_1BE4FFAA0();
    sub_1BE525E24();
    v2 = sub_1BE54C6DC();
  }

  *(v0 + 104) = [*(v0 + 80) URLForKey_];

  v4 = swift_task_alloc();
  *(v0 + 112) = v4;
  *v4 = v0;
  v4[1] = sub_1BE52328C;
  sub_1BE525E04();

  return sub_1BE5184F4();
}

uint64_t sub_1BE52328C()
{
  sub_1BE4E021C();
  v2 = *v1;
  v3 = *v1;
  sub_1BE4E01C4();
  *v4 = v3;
  *v4 = *v1;

  v5 = v2[13];
  if (v0)
  {

    v6 = sub_1BE525DF0();
  }

  else
  {
    v9 = v3[10];

    v7 = v3[7];
    v8 = v3[8];
    v6 = sub_1BE5233E0;
  }

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1BE5233E0()
{
  sub_1BE4E01D4();
  v1 = *(v0 + 32);
  v2 = sub_1BE54AE3C();
  sub_1BE4C63F8(v1, 0, 1, v2);
  v3 = sub_1BE50AAA4();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1BE523454()
{
  sub_1BE4E01D4();
  v1 = v0[10];

  v2 = v0[7];
  v3 = v0[8];

  return MEMORY[0x1EEE6DFA0](sub_1BE5234C4, v2, v3);
}

uint64_t sub_1BE5234C4()
{
  sub_1BE4E01D4();
  sub_1BE54AE3C();
  sub_1BE50A890();
  sub_1BE4C63F8(v0, v1, v2, v3);
  v4 = sub_1BE50AAA4();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1BE523534()
{
  sub_1BE4E01D4();
  *(v0 + 120) = sub_1BE54C8BC();
  sub_1BE50A968();
  sub_1BE54C87C();
  sub_1BE525D24();
  v1 = sub_1BE50AA94();

  return MEMORY[0x1EEE6DFA0](v1, v2, v3);
}

uint64_t sub_1BE5235AC()
{
  sub_1BE4E4418();
  v1 = v0[3];

  v2 = sub_1BE4FFBD8();
  sub_1BE5256F0(v2, v3);
  sub_1BE5225A4(v1);
  v4 = v0[7];
  v5 = v0[8];

  return MEMORY[0x1EEE6DFA0](sub_1BE52362C, v4, v5);
}

uint64_t sub_1BE52362C()
{
  sub_1BE4E01D4();
  v1 = *(v0 + 32);

  sub_1BE4C6F5C(v1, &qword_1EBDABEE8, &unk_1BE54F050);

  sub_1BE4E01E0();

  return v2();
}

uint64_t sub_1BE5236B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v4[3] = sub_1BE54C8CC();
  v4[4] = sub_1BE54C8BC();
  v5 = swift_task_alloc();
  v4[5] = v5;
  *v5 = v4;
  v5[1] = sub_1BE52375C;

  return static SettingsRemoteLocalization.upgradeIAPString()();
}

uint64_t sub_1BE52375C()
{
  sub_1BE4E01D4();
  sub_1BE4E0228();
  sub_1BE51D9B8();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 48) = v3;
  *(v1 + 56) = v4;

  v5 = sub_1BE50AAA4();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1BE523848()
{
  sub_1BE4E01D4();
  *(v0 + 64) = sub_1BE54C8BC();
  sub_1BE50A968();
  sub_1BE54C87C();
  sub_1BE525D24();
  v1 = sub_1BE50AA94();

  return MEMORY[0x1EEE6DFA0](v1, v2, v3);
}

uint64_t sub_1BE5238C0()
{
  sub_1BE4E021C();

  sub_1BE5227BC();

  sub_1BE54C87C();
  sub_1BE525D24();
  v0 = sub_1BE50AA94();

  return MEMORY[0x1EEE6DFA0](v0, v1, v2);
}

uint64_t sub_1BE52396C()
{
  sub_1BE4E01D4();

  sub_1BE4E01E0();

  return v0();
}

uint64_t sub_1BE5239C4()
{
  sub_1BE4E01D4();
  v2 = v1;
  *(v0 + 392) = v3;
  v4 = sub_1BE54B2EC();
  *(v0 + 264) = v4;
  sub_1BE4CE78C(v4);
  *(v0 + 272) = v5;
  *(v0 + 280) = swift_task_alloc();
  v6 = sub_1BE4BF11C(&qword_1EBDABEE8, &unk_1BE54F050);
  sub_1BE4C7570(v6);
  *(v0 + 288) = swift_task_alloc();
  v7 = sub_1BE54AE3C();
  *(v0 + 296) = v7;
  sub_1BE4CE78C(v7);
  *(v0 + 304) = v8;
  *(v0 + 312) = swift_task_alloc();
  *(v0 + 393) = *v2;
  sub_1BE54C8CC();
  *(v0 + 320) = sub_1BE54C8BC();
  sub_1BE50A968();
  v10 = sub_1BE54C87C();
  *(v0 + 328) = v10;
  *(v0 + 336) = v9;

  return MEMORY[0x1EEE6DFA0](sub_1BE523B3C, v10, v9);
}

uint64_t sub_1BE523B3C()
{
  sub_1BE4E01D4();
  if (qword_1EBDABA60 != -1)
  {
    sub_1BE50A974(&qword_1EBDABA60);
  }

  sub_1BE525D84(v1);
  v0[43] = v2;
  v0[44] = v3;
  v0[45] = v4;
  v0[46] = v5;
  v6 = sub_1BE50AAA4();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1BE523BD4()
{
  sub_1BE4E4418();
  v8 = v0;
  v1 = *(v0 + 368);
  if (v1)
  {
    v6 = *(v0 + 360);
    v7 = v1;

    sub_1BE525DA8();
    sub_1BE4FFAA0();
    v2 = &v6;
    v3 = sub_1BE525E24();
    MEMORY[0x1BFB47CA0](v3);
    sub_1BE54C6DC();
    sub_1BE50A968();
  }

  else
  {
    sub_1BE4FFAA0();
    sub_1BE525E24();
    v2 = sub_1BE54C6DC();
  }

  *(v0 + 376) = [*(v0 + 352) URLForKey_];

  v4 = swift_task_alloc();
  *(v0 + 384) = v4;
  *v4 = v0;
  v4[1] = sub_1BE523CFC;
  sub_1BE525E04();

  return sub_1BE5184F4();
}

uint64_t sub_1BE523CFC()
{
  sub_1BE4E021C();
  v2 = *v1;
  v3 = *v1;
  sub_1BE4E01C4();
  *v4 = v3;
  *v4 = *v1;

  v5 = v2[47];
  if (v0)
  {

    v6 = sub_1BE525DF0();
  }

  else
  {
    v9 = v3[44];

    v7 = v3[41];
    v8 = v3[42];
    v6 = sub_1BE523E50;
  }

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1BE523E50()
{
  v1 = *(v0 + 312);
  v2 = *(v0 + 393);
  v3 = *(v0 + 296);
  v4 = *(v0 + 304);
  v5 = *(v0 + 288);

  sub_1BE4C63F8(v5, 0, 1, v3);
  (*(v4 + 32))(v1, v5, v3);
  v6 = [objc_opt_self() ams:*MEMORY[0x1E698C4D0] sharedAccountStoreForMediaType:?];
  v7 = [objc_allocWithZone(MEMORY[0x1E698C908]) init];
  v8 = sub_1BE54ADFC();
  [v7 setURL_];

  [v7 setAnonymousMetrics_];
  v9 = [v6 ams_activeiTunesAccount];
  [v7 setAccount_];

  sub_1BE4BF11C(&qword_1EBDACD48, &qword_1BE550518);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BE54E1A0;
  *(v0 + 248) = 0x696F507972746E65;
  *(v0 + 256) = 0xEA0000000000746ELL;
  sub_1BE54CA8C();
  v11 = sub_1BE54C6DC();

  *(inited + 96) = sub_1BE4D0D48(0, &qword_1EBDAD058, 0x1E696AEC0);
  *(inited + 72) = v11;
  v12 = sub_1BE54C61C();
  sub_1BE52519C(v12, v7, &selRef_setClientData_);
  v13 = 0xEF746168632E6961;
  v14 = 0x6E65706F2E6D6F63;
  switch(v2)
  {
    case 1:
      v13 = 0x80000001BE5553E0;
      v14 = 0xD000000000000015;
      break;
    case 2:
      v13 = 0xEE00697269532E65;
      v14 = 0x6C7070612E6D6F63;
      break;
    case 3:
      v13 = 0x80000001BE555380;
      v14 = 0xD00000000000001FLL;
      break;
    default:
      break;
  }

  v15 = *(v0 + 393);
  sub_1BE4BF11C(&qword_1EBDAD160, &qword_1BE551250);
  v16 = swift_initStackObject();
  *(v16 + 16) = xmmword_1BE550E90;
  *(v16 + 32) = 7368801;
  *(v16 + 40) = 0xE300000000000000;
  *(v16 + 48) = 0xD000000000000012;
  *(v16 + 56) = 0x80000001BE5553A0;
  *(v16 + 64) = 0x6369706F74;
  *(v16 + 72) = 0xE500000000000000;
  *(v16 + 80) = 0xD000000000000016;
  *(v16 + 88) = 0x80000001BE5553C0;
  *(v16 + 96) = 0x70704174736F68;
  *(v16 + 104) = 0xE700000000000000;
  *(v16 + 112) = v14;
  *(v16 + 120) = v13;
  v17 = sub_1BE54C61C();
  switch(v15)
  {
    case 1:

      goto LABEL_8;
    default:
      v18 = sub_1BE54CCDC();

      if (v18)
      {
LABEL_8:
        swift_isUniquelyReferenced_nonNull_native();
        sub_1BE5428D4();
        swift_isUniquelyReferenced_nonNull_native();
        sub_1BE5428D4();
      }

      else
      {
      }

      v20 = *(v0 + 304);
      v19 = *(v0 + 312);
      v21 = *(v0 + 296);
      v22 = sub_1BE5371B8(v17);

      sub_1BE52519C(v22, v7, &selRef_setMetricsOverlay_);

      (*(v20 + 8))(v19, v21);

      sub_1BE525D60();

      return v23(v7);
  }
}

uint64_t sub_1BE5243BC()
{
  sub_1BE4E01D4();
  v1 = v0[44];

  v2 = v0[41];
  v3 = v0[42];

  return MEMORY[0x1EEE6DFA0](sub_1BE52442C, v2, v3);
}

uint64_t sub_1BE52442C()
{
  sub_1BE4E021C();
  v1 = v0[36];
  v2 = v0[37];

  sub_1BE50A890();
  sub_1BE4C63F8(v3, v4, v5, v2);
  sub_1BE4C6F5C(v1, &qword_1EBDABEE8, &unk_1BE54F050);
  sub_1BE54B2DC();
  v6 = sub_1BE54B2BC();
  v7 = sub_1BE54C98C();
  v8 = os_log_type_enabled(v6, v7);
  v10 = v0[34];
  v9 = v0[35];
  v11 = v0[33];
  if (v8)
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_1BE4B8000, v6, v7, "Failed to find subscription manage Apple URL", v12, 2u);
    MEMORY[0x1BFB48AC0](v12, -1, -1);
  }

  (*(v10 + 8))(v9, v11);

  sub_1BE525D60();

  return v13(0);
}

uint64_t sub_1BE52457C()
{
  sub_1BE4E021C();
  v1[2] = sub_1BE525E50();
  v1[3] = sub_1BE54C8BC();
  sub_1BE4C52F4(v0, v0[3]);
  v2 = sub_1BE525E30();
  v1[4] = v2;
  *v2 = v1;
  sub_1BE525D6C(v2);
  sub_1BE525DDC();

  return v3();
}

uint64_t sub_1BE524638()
{
  sub_1BE4E01D4();
  sub_1BE4E0228();
  v1 = *v0;
  sub_1BE4E01C4();
  *v2 = v1;

  sub_1BE54C87C();
  sub_1BE525D24();
  v3 = sub_1BE50AA94();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1BE524758()
{
  sub_1BE4E021C();
  v1[2] = sub_1BE525E50();
  v1[3] = sub_1BE54C8BC();
  sub_1BE4C52F4(v0, v0[3]);
  v2 = sub_1BE525E30();
  v1[4] = v2;
  *v2 = v1;
  sub_1BE525D6C(v2);
  sub_1BE525DDC();

  return v3();
}

uint64_t sub_1BE524814()
{
  sub_1BE4E01D4();
  sub_1BE4E0228();
  v1 = *v0;
  sub_1BE4E01C4();
  *v2 = v1;

  sub_1BE54C87C();
  sub_1BE525D24();
  v3 = sub_1BE50AA94();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1BE524934(uint64_t a1, char a2, uint64_t a3)
{
  v5 = sub_1BE4BF11C(&qword_1EBDAC3A8, &qword_1BE550DA0);
  v6 = sub_1BE4C7570(v5);
  MEMORY[0x1EEE9AC00](v6, v7);
  sub_1BE54C91C();
  sub_1BE50A890();
  sub_1BE4C63F8(v8, v9, v10, v11);
  v12 = swift_allocObject();
  swift_weakInit();
  sub_1BE4C6918(a3, v17);
  sub_1BE54C8CC();

  v13 = sub_1BE54C8BC();
  v14 = swift_allocObject();
  v15 = MEMORY[0x1E69E85E0];
  *(v14 + 16) = v13;
  *(v14 + 24) = v15;
  *(v14 + 32) = v12;
  *(v14 + 40) = a2;
  sub_1BE4FF8C0(v17, v14 + 48);

  sub_1BE50BCEC();
}

uint64_t sub_1BE524A8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  *(v6 + 48) = a4;
  *(v6 + 56) = a6;
  *(v6 + 72) = a5;
  *(v6 + 40) = a1;
  sub_1BE54C8CC();
  *(v6 + 64) = sub_1BE54C8BC();
  v8 = sub_1BE54C87C();

  return MEMORY[0x1EEE6DFA0](sub_1BE524B2C, v8, v7);
}

uint64_t sub_1BE524B2C()
{
  sub_1BE4E01D4();

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = *(v0 + 72);
    v3 = sub_1BE4C52F4(*(v0 + 56), *(*(v0 + 56) + 24));
    sub_1BE4FD8CC(v2, *v3, Strong);
  }

  **(v0 + 40) = Strong == 0;
  sub_1BE4E01E0();

  return v4();
}

uint64_t sub_1BE524BE4()
{
  sub_1BE4C6F5C(v0 + OBJC_IVAR____TtC26GenerativePartnerServiceUI16SubscriptionInfo__storeURL, &qword_1EBDABEE8, &unk_1BE54F050);

  sub_1BE4C58A8((v0 + OBJC_IVAR____TtC26GenerativePartnerServiceUI16SubscriptionInfo__appStoreDataSource));
  sub_1BE525044(v0 + OBJC_IVAR____TtC26GenerativePartnerServiceUI16SubscriptionInfo__subscriptionDelegate);
  v1 = OBJC_IVAR____TtC26GenerativePartnerServiceUI16SubscriptionInfo___observationRegistrar;
  sub_1BE54B00C();
  sub_1BE4C745C();
  (*(v2 + 8))(v0 + v1);
  return v0;
}

uint64_t sub_1BE524C9C()
{
  sub_1BE524BE4();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t type metadata accessor for SubscriptionInfo(uint64_t a1)
{
  result = qword_1EBDAD120;
  if (!qword_1EBDAD120)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}