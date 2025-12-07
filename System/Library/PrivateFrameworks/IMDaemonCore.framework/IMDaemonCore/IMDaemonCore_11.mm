uint64_t sub_22B745E7C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_22B7DB348();
  v18 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_22B7DB398();
  v9 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v3 + OBJC_IVAR___IMDSyncedSettingsServiceManager_ubiquitousStoreQueue);
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v13 = swift_allocObject();
  v13[2] = v12;
  v13[3] = a1;
  v13[4] = a2;
  aBlock[4] = sub_22B747288;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22B4D22C0;
  aBlock[3] = &unk_283F1DA78;
  v14 = _Block_copy(aBlock);

  sub_22B7DACD8();
  v19 = MEMORY[0x277D84F90];
  sub_22B747690(&qword_28141F340, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  sub_22B6F0AD4(&unk_27D8CF580, &unk_22B7FB880);
  sub_22B4D1110(&qword_28141F2E0, &unk_27D8CF580, &unk_22B7FB880);
  sub_22B7DC138();
  MEMORY[0x2318956F0](0, v11, v8, v14);
  _Block_release(v14);
  (*(v18 + 8))(v8, v6);
  (*(v9 + 8))(v11, v17);
}

void sub_22B746188(uint64_t a1)
{
  v2 = v1;
  v143 = sub_22B7DB348();
  v144 = *(v143 - 8);
  MEMORY[0x28223BE20](v143);
  v5 = &v140 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22B7DB398();
  v146 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v145 = &v140 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22B7DA688();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v150 = &v140 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v140 - v12;
  if (qword_28141F3E8 != -1)
  {
    swift_once();
  }

  v14 = sub_22B7DB2B8();
  v15 = sub_22B4CFA74(v14, qword_2814226E0);
  v16 = *(v9 + 16);
  v151 = a1;
  v147 = v16;
  v148 = v9 + 16;
  v16(v13, a1, v8);
  v17 = sub_22B7DB298();
  v18 = sub_22B7DBCB8();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v142 = v1;
    v20 = v19;
    v140 = swift_slowAlloc();
    aBlock[0] = v140;
    *v20 = 136315138;
    sub_22B747690(&qword_281420E98, MEMORY[0x277CC8900], MEMORY[0x277CC8910]);
    v21 = sub_22B7DC4E8();
    v141 = v15;
    v22 = v9;
    v23 = v5;
    v24 = v6;
    v26 = v25;
    v149 = *(v22 + 8);
    v149(v13, v8);
    v27 = sub_22B4CFAAC(v21, v26, aBlock);
    v28 = v26;
    v6 = v24;
    v5 = v23;
    v28, v29, v30, v31, v32, v33, v34, v35, v140, v141;
    *(v20 + 4) = v27;
    _os_log_impl(&dword_22B4CC000, v17, v18, "Received NSUbiquitousKeyValueStoreDidChangeExternallyNotification {notification: %s}", v20, 0xCu);
    v36 = v140;
    sub_22B4CFB78(v140);
    MEMORY[0x231898D60](v36, -1, -1);
    v37 = v20;
    v2 = v142;
    MEMORY[0x231898D60](v37, -1, -1);
  }

  else
  {

    v149 = *(v9 + 8);
    v149(v13, v8);
  }

  v38 = *(v2 + OBJC_IVAR___IMDSyncedSettingsServiceManager_syncConfigurationDelegate);
  v39 = v151;
  if (!v38 || ([v38 cloudKitSyncingEnabled] & 1) == 0)
  {
    v110 = sub_22B7DB298();
    v111 = sub_22B7DBCB8();
    if (!os_log_type_enabled(v110, v111))
    {
LABEL_33:

      return;
    }

    v112 = swift_slowAlloc();
    *v112 = 0;
    v113 = "shouldSync == false. Ignoring NSUbiquitousKeyValueStoreDidChangeExternallyNotification.";
    goto LABEL_26;
  }

  v40 = sub_22B7DA678();
  if (!v40)
  {
    goto LABEL_28;
  }

  v41 = v40;
  v153 = sub_22B7DB6A8();
  v154 = v42;
  sub_22B7DC248();
  if (!*(v41 + 16) || (v50 = sub_22B4D7EC0(aBlock), (v43 & 1) == 0))
  {
    v41, v43, v44, v45, v46, v47, v48, v49, v140, v141;
    sub_22B4DA138(aBlock);
LABEL_28:
    v155 = 0u;
    v156 = 0u;
    goto LABEL_29;
  }

  sub_22B4D1F68(*(v41 + 56) + 32 * v50, &v155);
  sub_22B4DA138(aBlock);
  v41, v51, v52, v53, v54, v55, v56, v57, v140, v141;
  if (!*(&v156 + 1))
  {
LABEL_29:
    sub_22B4D0D64(&v155, &unk_27D8CCDC0, &qword_22B7F9580);
LABEL_30:
    v114 = v150;
    v147(v150, v39, v8);
    v110 = sub_22B7DB298();
    v115 = sub_22B7DBC98();
    if (!os_log_type_enabled(v110, v115))
    {

      v149(v114, v8);
      return;
    }

    v112 = swift_slowAlloc();
    v116 = swift_slowAlloc();
    aBlock[0] = v116;
    *v112 = 136315138;
    *&v155 = sub_22B7DA678();
    sub_22B6F0AD4(&qword_27D8CE9D8, &qword_22B7FADC0);
    v117 = sub_22B7DB6C8();
    v118 = v8;
    v120 = v119;
    v149(v114, v118);
    v121 = sub_22B4CFAAC(v117, v120, aBlock);
    v120, v122, v123, v124, v125, v126, v127, v128, v140, v141;
    *(v112 + 4) = v121;
    _os_log_impl(&dword_22B4CC000, v110, v115, "Could not find changed keys on notification or changed keys was empty: %s", v112, 0xCu);
    sub_22B4CFB78(v116);
    MEMORY[0x231898D60](v116, -1, -1);
    goto LABEL_32;
  }

  sub_22B6F0AD4(&unk_27D8CE9E0, &qword_22B7F99B0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_30;
  }

  v65 = aBlock[0];
  if (!*aBlock[0]->messageStore)
  {
    aBlock[0], v58, v59, v60, v61, v62, v63, v64, v140, v141;
    goto LABEL_30;
  }

  v66 = sub_22B7DA678();
  if (!v66)
  {
    v65, v67, v68, v69, v70, v71, v72, v73, v140, v141;
    v155 = 0u;
    v156 = 0u;
    goto LABEL_40;
  }

  v74 = v66;
  v153 = sub_22B7DB6A8();
  v154 = v75;
  sub_22B7DC248();
  if (!*(v74 + 16) || (v83 = sub_22B4D7EC0(aBlock), (v76 & 1) == 0))
  {
    v74, v76, v77, v78, v79, v80, v81, v82, v140, v141;
    sub_22B4DA138(aBlock);
    v155 = 0u;
    v156 = 0u;
    goto LABEL_38;
  }

  sub_22B4D1F68(*(v74 + 56) + 32 * v83, &v155);
  sub_22B4DA138(aBlock);
  v74, v84, v85, v86, v87, v88, v89, v90, v140, v141;
  if (!*(&v156 + 1))
  {
LABEL_38:
    v65, v91, v92, v93, v94, v95, v96, v97, v140, v141;
LABEL_40:
    sub_22B4D0D64(&v155, &unk_27D8CCDC0, &qword_22B7F9580);
LABEL_41:
    v110 = sub_22B7DB298();
    v111 = sub_22B7DBC98();
    if (!os_log_type_enabled(v110, v111))
    {
      goto LABEL_33;
    }

    v112 = swift_slowAlloc();
    *v112 = 0;
    v113 = "NSUbiquitousKeyValueStoreDidChangeExternallyNotification missing reason.";
LABEL_26:
    _os_log_impl(&dword_22B4CC000, v110, v111, v113, v112, 2u);
LABEL_32:
    MEMORY[0x231898D60](v112, -1, -1);
    goto LABEL_33;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    v65, v98, v99, v100, v101, v102, v103, v104, v140, v141;
    goto LABEL_41;
  }

  v105 = aBlock[0];
  v106 = sub_22B7DB298();
  if (v105 <= 1)
  {
    if (!v105)
    {
      v107 = sub_22B7DBCB8();
      if (os_log_type_enabled(v106, v107))
      {
        v108 = swift_slowAlloc();
        *v108 = 0;
        v109 = "handleNSUbiquitousKeyValueStoreDidChangeExternallyNotification change reason is NSUbiquitousKeyValueStoreServerChange.";
        goto LABEL_54;
      }

      goto LABEL_56;
    }

    if (v105 == 1)
    {
      v107 = sub_22B7DBCB8();
      if (os_log_type_enabled(v106, v107))
      {
        v108 = swift_slowAlloc();
        *v108 = 0;
        v109 = "handleNSUbiquitousKeyValueStoreDidChangeExternallyNotification change reason is NSUbiquitousKeyValueStoreInitialSyncChange.";
LABEL_54:
        v130 = v107;
        v131 = v106;
        v132 = v108;
        v133 = 2;
        goto LABEL_55;
      }

      goto LABEL_56;
    }

LABEL_48:
    v129 = sub_22B7DBC98();
    if (os_log_type_enabled(v106, v129))
    {
      v108 = swift_slowAlloc();
      *v108 = 134217984;
      *(v108 + 4) = v105;
      v109 = "handleNSUbiquitousKeyValueStoreDidChangeExternallyNotification change reason is %ld";
      v130 = v129;
      v131 = v106;
      v132 = v108;
      v133 = 12;
LABEL_55:
      _os_log_impl(&dword_22B4CC000, v131, v130, v109, v132, v133);
      MEMORY[0x231898D60](v108, -1, -1);
      goto LABEL_56;
    }

    goto LABEL_56;
  }

  if (v105 == 2)
  {
    v107 = sub_22B7DBCB8();
    if (os_log_type_enabled(v106, v107))
    {
      v108 = swift_slowAlloc();
      *v108 = 0;
      v109 = "handleNSUbiquitousKeyValueStoreDidChangeExternallyNotification change reason is NSUbiquitousKeyValueStoreQuotaViolationChange.";
      goto LABEL_54;
    }

    goto LABEL_56;
  }

  if (v105 != 3)
  {
    goto LABEL_48;
  }

  v107 = sub_22B7DBCB8();
  if (os_log_type_enabled(v106, v107))
  {
    v108 = swift_slowAlloc();
    *v108 = 0;
    v109 = "handleNSUbiquitousKeyValueStoreDidChangeExternallyNotification change reason is NSUbiquitousKeyValueStoreAccountChange.";
    goto LABEL_54;
  }

LABEL_56:

  sub_22B4D01A0(0, &qword_28141F210, 0x277D85C78);
  v134 = sub_22B7DBD58();
  v135 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v136 = swift_allocObject();
  *v136->messageStore = v135;
  *v136->chatRegistry = v65;
  aBlock[4] = sub_22B747238;
  aBlock[5] = v136;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22B4D22C0;
  aBlock[3] = &unk_283F1DA00;
  v137 = _Block_copy(aBlock);

  v138 = v145;
  sub_22B7DACD8();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_22B747690(&qword_28141F340, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  sub_22B6F0AD4(&unk_27D8CF580, &unk_22B7FB880);
  sub_22B4D1110(&qword_28141F2E0, &unk_27D8CF580, &unk_22B7FB880);
  v139 = v143;
  sub_22B7DC138();
  MEMORY[0x2318956F0](0, v138, v5, v137);
  _Block_release(v137);

  (*(v144 + 8))(v5, v139);
  (*(v146 + 8))(v138, v6);
}

void sub_22B746D2C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_22B743C80(a2);
  }
}

uint64_t sub_22B746DA0(void *a1, uint64_t a2, uint64_t a3, void (*a4)(char *))
{
  v6 = sub_22B7DA688();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22B7DA658();
  v10 = a1;
  a4(v9);

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_22B746EA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_22B7DB348();
  v22 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_22B7DB398();
  v8 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v12 = *(Strong + OBJC_IVAR___IMDSyncedSettingsServiceManager_remoteStorageDelegate), v13 = Strong, swift_unknownObjectRetain(), v13, v12))
  {
    v14 = [v12 dictionaryRepresentation];
    swift_unknownObjectRelease();
    v15 = sub_22B7DB588();
  }

  else
  {
    v15 = sub_22B71DF98(MEMORY[0x277D84F90]);
  }

  sub_22B4D01A0(0, &qword_28141F210, 0x277D85C78);
  v16 = sub_22B7DBD58();
  v17 = swift_allocObject();
  v17[2] = a2;
  v17[3] = a3;
  v17[4] = v15;
  aBlock[4] = sub_22B747294;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22B4D22C0;
  aBlock[3] = &unk_283F1DAC8;
  v18 = _Block_copy(aBlock);

  sub_22B7DACD8();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_22B747690(&qword_28141F340, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  sub_22B6F0AD4(&unk_27D8CF580, &unk_22B7FB880);
  sub_22B4D1110(&qword_28141F2E0, &unk_27D8CF580, &unk_22B7FB880);
  sub_22B7DC138();
  MEMORY[0x2318956F0](0, v10, v7, v18);
  _Block_release(v18);

  (*(v22 + 8))(v7, v5);
  return (*(v8 + 8))(v10, v21);
}

uint64_t sub_22B747240()
{

  *(v0 + 24), v1, v2, v3, v4, v5, v6, v7, vars0, vars8;

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22B747690(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_22B7476D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_22B6F0AD4(&unk_27D8CD7D0, &qword_22B7FA3F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22B74775C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 56);
    for (i = (a2 + 56); ; i += 4)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      v6 = v5 && *(v3 - 3) >> 16 == *(i - 3) >> 16;
      v7 = v6 && *(v3 - 2) >> 16 == *(i - 2) >> 16;
      if (!v7 && (sub_22B7DC4D8() & 1) == 0)
      {
        break;
      }

      v3 += 4;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_22B747814(uint64_t a1, uint64_t a2)
{
  v18 = sub_22B6F0AD4(&unk_27D8CEEC0, &qword_22B7FA060);
  v4 = *(v18 - 8);
  v5 = MEMORY[0x28223BE20](v18);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v17 - v8;
  v10 = *(a1 + 16);
  if (v10 != *(a2 + 16))
  {
LABEL_11:
    v15 = 0;
    return v15 & 1;
  }

  if (v10 && a1 != a2)
  {
    v11 = (*(v4 + 80) + 32) & ~*(v4 + 80);
    v12 = a1 + v11;
    v13 = a2 + v11;
    sub_22B7DA968();
    v14 = *(v4 + 72);
    while (1)
    {
      sub_22B74BD44(v12, v9);
      sub_22B74BD44(v13, v7);
      sub_22B74BDB4(&qword_281420E88, MEMORY[0x277CC9578], MEMORY[0x277CC9598]);
      if ((sub_22B7DB658() & 1) == 0)
      {
        break;
      }

      v15 = sub_22B7DB658();
      sub_22B4D0D64(v7, &unk_27D8CEEC0, &qword_22B7FA060);
      sub_22B4D0D64(v9, &unk_27D8CEEC0, &qword_22B7FA060);
      if (v15)
      {
        v13 += v14;
        v12 += v14;
        if (--v10)
        {
          continue;
        }
      }

      return v15 & 1;
    }

    sub_22B4D0D64(v7, &unk_27D8CEEC0, &qword_22B7FA060);
    sub_22B4D0D64(v9, &unk_27D8CEEC0, &qword_22B7FA060);
    goto LABEL_11;
  }

  v15 = 1;
  return v15 & 1;
}

uint64_t sub_22B747A64(unint64_t a1, unint64_t a2)
{
  v3 = a1;
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_44;
  }

  v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (!(a2 >> 62))
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5 != result)
    {
      goto LABEL_46;
    }

LABEL_5:
    if (!v5)
    {
      goto LABEL_29;
    }

    v7 = v3 & 0xFFFFFFFFFFFFFF8;
    v8 = (v3 & 0xFFFFFFFFFFFFFF8) + 32;
    if (v3 < 0)
    {
      v7 = v3;
    }

    if (v4)
    {
      v8 = v7;
    }

    v9 = a2 & 0xFFFFFFFFFFFFFF8;
    v10 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    if ((a2 & 0x8000000000000000) != 0)
    {
      v9 = a2;
    }

    if (a2 >> 62)
    {
      v10 = v9;
    }

    if (v8 == v10)
    {
LABEL_29:
      v18 = 1;
      return v18 & 1;
    }

    if (v5 < 0)
    {
      __break(1u);
      return result;
    }

    v4 = sub_22B74BCF8();
    if (((a2 | v3) & 0xC000000000000001) != 0)
    {
      v11 = a2 & 0xC000000000000001;
      v12 = 4;
      while (1)
      {
        v13 = v12 - 4;
        v14 = v12 - 3;
        if (__OFADD__(v12 - 4, 1))
        {
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        if ((v3 & 0xC000000000000001) != 0)
        {
          v15 = MEMORY[0x231895C80](v12 - 4, v3);
          if (!v11)
          {
            goto LABEL_24;
          }
        }

        else
        {
          if (v13 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_42;
          }

          v15 = *(v3 + 8 * v12);
          if (!v11)
          {
LABEL_24:
            if (v13 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_43;
            }

            v16 = *(a2 + 8 * v12);
            goto LABEL_26;
          }
        }

        v16 = MEMORY[0x231895C80](v12 - 4, a2);
LABEL_26:
        v17 = v16;
        v18 = sub_22B7DBFD8();

        if (v18)
        {
          ++v12;
          if (v14 != v5)
          {
            continue;
          }
        }

        return v18 & 1;
      }
    }

    v19 = (v3 + 32);
    v20 = (a2 + 32);
    v21 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v22 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v23 = v5 - 1;
    while (1)
    {
      if (!v21)
      {
        goto LABEL_40;
      }

      if (!v22)
      {
        break;
      }

      v25 = *v19++;
      v24 = v25;
      v26 = *v20++;
      a2 = v24;
      v3 = v26;
      v18 = sub_22B7DBFD8();

      v28 = v23-- != 0;
      if (v18)
      {
        --v22;
        --v21;
        if (v28)
        {
          continue;
        }
      }

      return v18 & 1;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    v5 = sub_22B7DC1C8();
  }

  result = sub_22B7DC1C8();
  if (v5 == result)
  {
    goto LABEL_5;
  }

LABEL_46:
  v18 = 0;
  return v18 & 1;
}

uint64_t sub_22B747CD0(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t (*a4)(unint64_t, uint64_t), uint64_t (*a5)(BOOL, uint64_t, uint64_t, uint64_t))
{
  v5 = a2;
  v7 = *(a3 + 16);
  v8 = MEMORY[0x277D84F90];
  if (v7)
  {
    v9 = (a3 + 40);
    v10 = 15;
    v11 = a1;
    v37 = a1;
    do
    {
      v13 = *v9;
      if (v10 >> 14 < *(v9 - 1) >> 14)
      {
        v14 = (a4)();
        v16 = v15;
        v18 = v17;
        v20 = v19;
        swift_beginAccess();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = a5(0, *(v8 + 16) + 1, 1, v8);
        }

        v22 = *(v8 + 16);
        v21 = *(v8 + 24);
        if (v22 >= v21 >> 1)
        {
          v8 = a5(v21 > 1, v22 + 1, 1, v8);
        }

        *(v8 + 16) = v22 + 1;
        v12 = (v8 + 32 * v22);
        v12[4] = v14;
        v12[5] = v16;
        v12[6] = v18;
        v12[7] = v20;
        swift_endAccess();
        v11 = v37;
        v5 = a2;
      }

      v9 += 2;
      v10 = v13;
      --v7;
    }

    while (v7);
  }

  else
  {
    v13 = 15;
    v11 = a1;
  }

  v23 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v23 = v11 & 0xFFFFFFFFFFFFLL;
  }

  if (v13 >> 14 < 4 * v23)
  {
    v24 = 7;
    if (((v5 >> 60) & ((v11 & 0x800000000000000) == 0)) != 0)
    {
      v24 = 11;
    }

    v25 = a4(v13, v24 | (v23 << 16));
    v27 = v26;
    v29 = v28;
    v31 = v30;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = a5(0, *(v8 + 16) + 1, 1, v8);
    }

    v33 = *(v8 + 16);
    v32 = *(v8 + 24);
    if (v33 >= v32 >> 1)
    {
      v8 = a5(v32 > 1, v33 + 1, 1, v8);
    }

    *(v8 + 16) = v33 + 1;
    v34 = (v8 + 32 * v33);
    v34[4] = v25;
    v34[5] = v27;
    v34[6] = v29;
    v34[7] = v31;
  }

  return v8;
}

uint64_t sub_22B747F0C()
{
  v0 = sub_22B7DB108();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_22B6F0AD4(&qword_27D8CEA20, &qword_22B7FAE58);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v10 - v7;
  sub_22B6F24F4(v6, qword_281422750);
  sub_22B4CFA74(v4, qword_281422750);
  sub_22B6F0AD4(&qword_27D8CEA28, &qword_22B7FAE60);
  sub_22B714FD8(&qword_28141F440, &qword_27D8CEA20, &qword_22B7FAE58, MEMORY[0x277D85AC0]);
  sub_22B7DB128();
  sub_22B7DB0F8();
  sub_22B7DB138();
  (*(v1 + 8))(v3, v0);
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_22B748120@<X0>(uint64_t a1@<X8>)
{
  v91 = a1;
  v87 = sub_22B6F0AD4(&qword_27D8CEA30, &qword_22B7FAE68);
  v88 = *(v87 - 8);
  v1 = MEMORY[0x28223BE20](v87);
  v85 = &v78 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v1);
  v86 = &v78 - v3;
  v4 = sub_22B6F0AD4(&qword_27D8CEA38, &qword_22B7FAE70);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v78 - v5;
  v94 = sub_22B6F0AD4(&qword_27D8CEA40, &qword_22B7FAE78);
  v96 = *(v94 - 8);
  v7 = MEMORY[0x28223BE20](v94);
  v81 = &v78 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v93 = &v78 - v9;
  v10 = sub_22B6F0AD4(&qword_27D8CEA48, &qword_22B7FAE80);
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v78 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v78 - v16;
  MEMORY[0x28223BE20](v15);
  v98 = &v78 - v18;
  v89 = sub_22B6F0AD4(&qword_27D8CEA50, &qword_22B7FAE88);
  v90 = *(v89 - 8);
  MEMORY[0x28223BE20](v89);
  v80 = &v78 - v19;
  v100 = sub_22B7DB0D8();
  v20 = *(v100 - 8);
  v21 = MEMORY[0x28223BE20](v100);
  v23 = &v78 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = &v78 - v24;
  v97 = sub_22B6F0AD4(&qword_27D8CEA58, &qword_22B7FAE90);
  v106 = *(v97 - 8);
  v26 = MEMORY[0x28223BE20](v97);
  v83 = &v78 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v26);
  v101 = &v78 - v29;
  MEMORY[0x28223BE20](v28);
  v105 = &v78 - v30;
  v107 = 37;
  v108 = 0xE100000000000000;
  v82 = sub_22B74BCA4();
  MEMORY[0x231894460](&v109, &v107, MEMORY[0x277D837D0], v82);
  sub_22B7DAB18();
  v31 = sub_22B7DB118();
  (*(*(v31 - 8) + 56))(v6, 1, 1, v31);
  sub_22B7DAB18();
  sub_22B748C14(v14);
  v84 = MEMORY[0x277D85AC0];
  v32 = sub_22B714FD8(&qword_28141F448, &qword_27D8CEA48, &qword_22B7FAE80, MEMORY[0x277D85AC0]);
  v33 = MEMORY[0x277D83E40];
  v79 = v17;
  v34 = v6;
  v35 = v10;
  v95 = v32;
  sub_22B7DB0C8();
  v102 = *(v11 + 8);
  v103 = v11 + 8;
  v102(v14, v10);
  v92 = *(v20 + 8);
  v104 = v20 + 8;
  v36 = v100;
  v92(v23, v100);
  sub_22B4D0D64(v34, &qword_27D8CEA38, &qword_22B7FAE70);
  v37 = v81;
  MEMORY[0x231894480](v17, v33);
  v38 = sub_22B714FD8(&qword_28141F480, &qword_27D8CEA40, &qword_22B7FAE78, MEMORY[0x277D853B0]);
  v40 = v93;
  v39 = v94;
  MEMORY[0x231894460](v37, v94, v38);
  v41 = *(v96 + 1);
  v41(v37, v39);
  v42 = v98;
  sub_22B7DAAF8();
  v41(v40, v39);
  v43 = sub_22B6F0AD4(&qword_27D8CEA60, &qword_22B7FAE98);
  v44 = v80;
  v93 = v43;
  v99 = v10;
  sub_22B7DB0A8();
  v45 = v42;
  v102(v42, v35);
  v46 = v92;
  v92(v25, v36);
  v47 = v101;
  v48 = v44;
  MEMORY[0x2318944B0](v44, v43);
  v94 = sub_22B714FD8(&qword_28141F470, &qword_27D8CEA58, &qword_22B7FAE90, MEMORY[0x277D85408]);
  v49 = v97;
  MEMORY[0x231894460](v47, v97, v94);
  v50 = *(v106 + 8);
  v106 += 8;
  v96 = v50;
  v50(v47, v49);
  sub_22B7DAB18();
  v51 = v85;
  sub_22B7DAB58();
  v52 = sub_22B714FD8(&qword_28141F468, &qword_27D8CEA30, &qword_22B7FAE68, MEMORY[0x277D85410]);
  v53 = v86;
  v54 = v87;
  MEMORY[0x231894460](v51, v87, v52);
  v55 = *(v88 + 8);
  v55(v51, v54);
  sub_22B7DAAF8();
  v55(v53, v54);
  v56 = v45;
  v57 = v93;
  v58 = v99;
  sub_22B7DB0A8();
  v59 = v102;
  v102(v56, v58);
  v46(v25, v100);
  v60 = v83;
  MEMORY[0x2318944B0](v48, v57);
  v61 = v97;
  MEMORY[0x231894460](v60, v97, v94);
  v96(v60, v61);
  v62 = v110;
  v107 = v109;
  v108 = v110;
  sub_22B7DAAF8();
  v62, v63, v64, v65, v66, v67, v68, v69, v78, v79;
  sub_22B7DAB18();
  v70 = v79;
  v71 = v99;
  sub_22B7DB098();
  sub_22B7DB078();
  v59(v70, v71);
  v72 = v100;
  v73 = v92;
  v92(v25, v100);
  sub_22B7DAB18();
  sub_22B6F0AD4(&qword_27D8CEA28, &qword_22B7FAE60);
  sub_22B714FD8(&qword_28141F438, &qword_27D8CEA50, &qword_22B7FAE88, v84);
  v74 = v101;
  v75 = v89;
  sub_22B7DB078();
  v73(v25, v72);
  (*(v90 + 8))(v48, v75);
  v102(v98, v99);
  v76 = v96;
  v96(v74, v61);
  return v76(v105, v61);
}

uint64_t sub_22B748C14@<X0>(uint64_t a1@<X8>)
{
  v49 = a1;
  v45 = sub_22B6F0AD4(&qword_27D8CEA48, &qword_22B7FAE80);
  v48 = *(v45 - 8);
  v1 = MEMORY[0x28223BE20](v45);
  v47 = &v43 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = MEMORY[0x28223BE20](v1);
  v46 = &v43 - v4;
  MEMORY[0x28223BE20](v3);
  v6 = &v43 - v5;
  v51 = sub_22B7DB0D8();
  v7 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v9 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22B6F0AD4(&qword_27D8CEA38, &qword_22B7FAE70);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v43 - v11;
  v13 = sub_22B7DAB28();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_22B6F0AD4(&qword_27D8CEA68, &qword_22B7FAEA0);
  v52 = *(v17 - 8);
  v18 = MEMORY[0x28223BE20](v17);
  v20 = &v43 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v50 = &v43 - v21;
  sub_22B7DB0E8();
  v22 = sub_22B7DB118();
  (*(*(v22 - 8) + 56))(v12, 1, 1, v22);
  sub_22B7DAB18();
  sub_22B74BDB4(&qword_28141F478, MEMORY[0x277D853D0], MEMORY[0x277D853C8]);
  v23 = MEMORY[0x277D83E40];
  sub_22B7DB0B8();
  v24 = *(v7 + 8);
  v43 = (v7 + 8);
  v44 = v24;
  (v24)(v9, v51);
  sub_22B4D0D64(v12, &qword_27D8CEA38, &qword_22B7FAE70);
  (*(v14 + 8))(v16, v13);
  v25 = v6;
  MEMORY[0x2318944E0](v6, v23);
  v26 = sub_22B714FD8(&qword_28141F460, &qword_27D8CEA68, &qword_22B7FAEA0, MEMORY[0x277D85420]);
  MEMORY[0x231894460](v20, v17, v26);
  v27 = *(v52 + 8);
  v52 += 8;
  v27(v20, v17);
  v53 = 36;
  v54 = 0xE100000000000000;
  v28 = sub_22B74BCA4();
  MEMORY[0x231894460](v55, &v53, MEMORY[0x277D837D0], v28);
  sub_22B7DAAF8();
  v30 = v55[0];
  v29 = v55[1];
  sub_22B7DAB18();
  v53 = v30;
  v54 = v29;
  sub_22B714FD8(&qword_28141F448, &qword_27D8CEA48, &qword_22B7FAE80, MEMORY[0x277D85AC0]);
  v31 = v45;
  v32 = v46;
  sub_22B7DB098();
  v33 = v47;
  sub_22B7DB098();
  v29, v34, v35, v36, v37, v38, v39, v40, v43, v44;
  sub_22B7DB078();
  v41 = *(v48 + 8);
  v41(v33, v31);
  v41(v32, v31);
  (v44)(v9, v51);
  v41(v25, v31);
  return (v27)(v50, v17);
}

uint64_t sub_22B7491E0@<X0>(uint64_t a1@<X8>)
{
  v51 = a1;
  v1 = sub_22B6F0AD4(&qword_27D8CEA48, &qword_22B7FAE80);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v44 - v2;
  v47 = sub_22B7DB0D8();
  v4 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v6 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22B6F0AD4(&qword_27D8CEA30, &qword_22B7FAE68);
  v50 = *(v7 - 8);
  v8 = MEMORY[0x28223BE20](v7);
  v49 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v44 - v10;
  v56 = 64;
  v57 = 0xE100000000000000;
  v12 = sub_22B74BCA4();
  v13 = MEMORY[0x277D837D0];
  MEMORY[0x231894440](&v58, &v56, MEMORY[0x277D837D0], v12);
  v54 = 115;
  v55 = 0xE100000000000000;
  MEMORY[0x231894440](&v56, &v54, v13, v12);
  v52 = 83;
  v53 = 0xE100000000000000;
  MEMORY[0x231894440](&v54, &v52, v13, v12);
  v14 = v59;
  v52 = v58;
  v53 = v59;
  v48 = v11;
  sub_22B7DAAD8();
  v14, v15, v16, v17, v18, v19, v20, v21, v44, v45;
  v22 = v57;
  v52 = v56;
  v53 = v57;
  sub_22B7DAB18();
  v46 = sub_22B714FD8(&qword_28141F468, &qword_27D8CEA30, &qword_22B7FAE68, MEMORY[0x277D85410]);
  v23 = MEMORY[0x277D83E40];
  sub_22B7DB088();
  v24 = *(v4 + 8);
  v45 = (v4 + 8);
  v25 = v47;
  v24(v6, v47);
  v22, v26, v27, v28, v29, v30, v31, v32, v44, v45;
  v33 = v49;
  MEMORY[0x2318944C0](v3, v23);
  v34 = v55;
  v52 = v54;
  v53 = v55;
  sub_22B7DAB18();
  sub_22B7DB088();
  v24(v6, v25);
  v34, v35, v36, v37, v38, v39, v40, v41, v44, v45;
  MEMORY[0x2318944C0](v3, v23);
  v42 = *(v50 + 8);
  v42(v33, v7);
  return (v42)(v48, v7);
}

uint64_t sub_22B749568(uint64_t a1, const char *a2, char a3, void *a4, uint64_t a5, void *a6, void *a7, void *a8)
{
  *(v8 + 16) = 0;
  *(v8 + 24) = MEMORY[0x277D84F90];
  *(v8 + 32) = 0;
  v11 = *(a1 + 16);
  v12 = v11;
  v13 = v11;
  if (v11)
  {
    v13 = 0;
    v14 = (a1 + 40);
    while (!((*v14 ^ *(v14 - 1)) >> 14))
    {
      v14 += 4;
      if (v11 == ++v13)
      {
        v13 = *(a1 + 16);
        break;
      }
    }
  }

  v15 = (a1 + 32 * v11 + 8);
  while (v12)
  {
    --v12;
    v16 = *v15 ^ *(v15 - 1);
    v15 -= 4;
    if (v16 >= 0x4000)
    {
      goto LABEL_11;
    }
  }

  v12 = v11 - 1;
LABEL_11:
  v17 = v11 - 1 - v12;
  *(v8 + 16) = (v13 == 0) & a2;
  *(v8 + 32) = a3 & (v17 == 0);
  v18 = v11 - v17;
  if (__OFSUB__(v11, v17))
  {
    __break(1u);
    goto LABEL_19;
  }

  if (v18 < v13)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v11 < v18)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (v18 < 0)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v11 != v18 - v13)
  {
LABEL_22:
    v21 = a1;
    sub_22B74ADF8(a1, a1 + 32, v13, (2 * v18) | 1);
    v23 = v22;
    v21, v24, v25, v26, v27, v28, v29, v30, v31, v32;
    v19 = *(v8 + 24);
    a1 = v23;
    goto LABEL_17;
  }

  v19 = MEMORY[0x277D84F90];
LABEL_17:
  *(v8 + 24) = a1;
  v19, a2, v13, a4, a5, a6, a7, a8, v31, v32;
  *(v8 + 40) = a4;
  return v8;
}

unint64_t sub_22B7496B0(unint64_t a1, uint64_t a2, uint64_t a3, IMDScheduledMessageCoordinator *a4, unint64_t a5, unint64_t a6)
{
  v10 = HIBYTE(a6) & 0xF;
  if ((a6 & 0x2000000000000000) == 0)
  {
    v10 = a5;
  }

  v75 = a6;
  v11 = 7;
  if (((a6 >> 60) & ((a5 & 0x800000000000000) == 0)) != 0)
  {
    v11 = 11;
  }

  v12 = v11 | (v10 << 16);
  v13 = a2 ^ a1;

  if (v13 >= 0x4000)
  {
    v21 = a2;
    v72 = a5;
    do
    {
      v44 = sub_22B7DC068();
      if (v12 < 0x4000)
      {
        a4, v45, v46, v47, v48, v49, v50, v51, v72, v75;
        return v21;
      }

      v52 = v44;
      sub_22B7DB788();
      v53 = sub_22B7DB878();
      v55 = v54;
      sub_22B7DC068();
      v57 = sub_22B7DC098();
      v63 = v56;
      if (v53 == v57 && v55 == v56)
      {
        v55, v56, v57, v58, v59, v60, v61, v62, v72, v75;
        v63, v64, v65, v66, v67, v68, v69, v70, v74, v77;
      }

      else
      {
        v22 = sub_22B7DC518();
        v55, v23, v24, v25, v26, v27, v28, v29, v72, v75;
        v63, v30, v31, v32, v33, v34, v35, v36, v73, v76;
        if ((v22 & 1) == 0)
        {
          a4, v37, v38, v39, v40, v41, v42, v43, v72, v75;
          return 0;
        }
      }

      v12 = sub_22B7DB788();
      v21 = v52;
    }

    while ((v52 ^ a1) >= 0x4000);
  }

  a4, v14, v15, v16, v17, v18, v19, v20, v72, v75;
  if (v12 >> 14)
  {
    return 0;
  }

  else
  {
    return a1;
  }
}

unint64_t sub_22B7498A4(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v12 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v12 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (((a2 >> 60) & ((a1 & 0x800000000000000) == 0)) != 0)
  {
    v13 = 11;
  }

  else
  {
    v13 = 7;
  }

  v14 = v13 | (v12 << 16);
  v52 = 15;

  if (v12)
  {
    v49 = v12 << 16;
    v48 = (a2 & 0xFFFFFFFFFFFFFFLL);
    v47 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v22 = 15;
    v23 = a3;
    while (1)
    {
      sub_22B74B0B8(&v52, a1, a2);
      if ((v23 ^ a4) < 0x4000)
      {
        a2, v24, v25, v26, v27, v28, v29, v30, v47, v48;
        return v22;
      }

      sub_22B75A66C(v23, a3, a4, a5, a6);
      if ((a6 & 0x1000000000000000) != 0)
      {
        v31 = sub_22B7DC2D8();
      }

      else
      {
        if ((a6 & 0x2000000000000000) != 0)
        {
          v50 = a5;
          v51 = a6 & 0xFFFFFFFFFFFFFFLL;
        }

        else if ((a5 & 0x1000000000000000) == 0)
        {
          sub_22B7DC328();
        }

        v31 = sub_22B7DC338();
      }

      v32 = v31;
      v33 = sub_22B7C1564(v22, a1, a2);
      if ((a2 & 0x1000000000000000) != 0)
      {
        v44 = sub_22B7DC2D8();
      }

      else
      {
        v41 = v33 >> 16;
        if ((a2 & 0x2000000000000000) != 0)
        {
          v50 = a1;
          v51 = a2 & 0xFFFFFFFFFFFFFFLL;
          v43 = &v50 + v41;
        }

        else
        {
          v42 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          if ((a1 & 0x1000000000000000) == 0)
          {
            v42 = sub_22B7DC328();
          }

          v43 = (v42 + v41);
        }

        v44 = *v43;
        if (*v43 < 0)
        {
          v45 = (__clz(v44 ^ 0xFF) - 24);
          if (v45 > 2)
          {
            if (v45 == 3)
            {
              v44 = ((v44 & 0xF) << 12) | ((v43[1] & 0x3F) << 6) | v43[2] & 0x3F;
            }

            else
            {
              v44 = ((v44 & 0xF) << 18) | ((v43[1] & 0x3F) << 12) | ((v43[2] & 0x3F) << 6) | v43[3] & 0x3F;
            }
          }

          else if (v45 != 1)
          {
            v44 = v43[1] & 0x3F | ((v44 & 0x1F) << 6);
          }
        }
      }

      if (v32 != v44)
      {
        break;
      }

      v23 = sub_22B7DC028();
      v22 = v52;
      if ((v52 ^ v49) < 0x4000)
      {
        goto LABEL_35;
      }
    }

    a2, v34, v35, v36, v37, v38, v39, v40, v47, v48;
    return 0;
  }

  else
  {
    v23 = a3;
LABEL_35:
    a2, v15, v16, v17, v18, v19, v20, v21, v47, v48;
    if ((v23 ^ a4) >> 14)
    {
      return 0;
    }

    else
    {
      return v14;
    }
  }
}

unint64_t sub_22B749B7C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7, unint64_t a8)
{
  v51[1] = a1;
  v51[2] = a2;
  v51[3] = a3;
  v51[4] = a4;
  sub_22B704A08();
  sub_22B7DBB78();
  v21 = v49;
  v51[0] = v49;
  if ((v49 ^ v50) >= 0x4000)
  {
    v44 = a3;
    v43 = (a3 & 0xFFFFFFFFFFFFLL);
    v22 = v49;
    v23 = a5;
    while (1)
    {
      sub_22B74B0B8(v51, v47, v48);
      if ((a5 ^ a6) < 0x4000)
      {
        break;
      }

      sub_22B75A66C(a5, v23, a6, a7, a8);
      v31 = v21;
      if ((a8 & 0x1000000000000000) != 0)
      {
        v32 = sub_22B7DC2D8();
      }

      else
      {
        if ((a8 & 0x2000000000000000) == 0 && (a7 & 0x1000000000000000) == 0)
        {
          sub_22B7DC328();
        }

        v32 = sub_22B7DC338();
      }

      v33 = v32;
      sub_22B75A66C(v22, a1, a2, v44, a4);
      if ((a4 & 0x1000000000000000) != 0)
      {
        if (v33 != sub_22B7DC2D8())
        {
          goto LABEL_21;
        }
      }

      else
      {
        if ((a4 & 0x2000000000000000) == 0 && (v44 & 0x1000000000000000) == 0)
        {
          sub_22B7DC328();
        }

        if (v33 != sub_22B7DC338())
        {
LABEL_21:
          v48, v34, v35, v36, v37, v38, v39, v40, v42, v43;
          return 0;
        }
      }

      a5 = sub_22B7DC028();
      v22 = v51[0];
      v21 = v31;
      if ((v51[0] ^ v50) < 0x4000)
      {
        goto LABEL_2;
      }
    }

    v48, v24, v25, v26, v27, v28, v29, v30, v42, v43;
  }

  else
  {
LABEL_2:
    v48, v14, v15, v16, v17, v18, v19, v20, v42, v43;
    if ((a5 ^ a6) >> 14)
    {
      return 0;
    }

    else
    {
      return a2;
    }
  }

  return v22;
}

unint64_t sub_22B749DEC(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v12 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v12 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v12)
  {
    v20 = 7;
    if (((a2 >> 60) & ((a1 & 0x800000000000000) == 0)) != 0)
    {
      v20 = 11;
    }

    v21 = v20 | (v12 << 16);
    v58 = &v59 + 7;
    v59 = a2 & 0xFFFFFFFFFFFFFFLL;
    v22 = a4;
    while (1)
    {
      v23 = sub_22B74AED0(v21, a1, a2);
      if ((v22 ^ a3) < 0x4000)
      {
        a2, v24, v25, v26, v27, v28, v29, v30, v57, &v59 + 7;
        return v21;
      }

      v31 = v23;
      v32 = sub_22B7DC038();
      sub_22B75A66C(v32, a3, a4, a5, a6);
      if ((a6 & 0x1000000000000000) != 0)
      {
        v33 = sub_22B7DC2D8();
      }

      else
      {
        if ((a6 & 0x2000000000000000) != 0)
        {
          v60 = a5;
          v61 = a6 & 0xFFFFFFFFFFFFFFLL;
        }

        else if ((a5 & 0x1000000000000000) == 0)
        {
          sub_22B7DC328();
        }

        v33 = sub_22B7DC338();
      }

      v34 = v33;
      result = sub_22B7030EC(v21, a1, a2);
      if (result < 0x4000)
      {
        __break(1u);
        return result;
      }

      if ((a2 & 0x1000000000000000) != 0)
      {
        v56 = sub_22B7DB728();
        sub_22B7C1564(v56, a1, a2);
        v54 = sub_22B7DC2D8();
        goto LABEL_35;
      }

      v36 = result >> 16;
      if ((a2 & 0x2000000000000000) != 0)
      {
        v60 = a1;
        v61 = v59;
        if ((*(&v59 + v36 + 7) & 0xC0) == 0x80)
        {
          v42 = -2;
          do
          {
            v43 = *(&v60 + v36 + v42--) & 0xC0;
          }

          while (v43 == 128);
          v41 = v42 + 1;
          goto LABEL_29;
        }
      }

      else
      {
        v37 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
        if ((a1 & 0x1000000000000000) == 0)
        {
          v57 = result;
          v37 = sub_22B7DC328();
          result = v57;
        }

        v38 = v37 + v36;
        if ((*(v38 - 1) & 0xC0) == 0x80)
        {
          v39 = -2;
          do
          {
            v40 = *(v38 + v39--) & 0xC0;
          }

          while (v40 == 128);
          v41 = v39 + 1;
          goto LABEL_29;
        }
      }

      v41 = -1;
LABEL_29:
      v51 = sub_22B7C1564((result + (v41 << 16)) & 0xFFFFFFFFFFFF0000 | 5, a1, a2) >> 16;
      if ((a2 & 0x2000000000000000) != 0)
      {
        v60 = a1;
        v61 = v59;
        v53 = &v60 + v51;
      }

      else
      {
        v52 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
        if ((a1 & 0x1000000000000000) == 0)
        {
          v52 = sub_22B7DC328();
        }

        v53 = (v52 + v51);
      }

      v54 = *v53;
      if (*v53 < 0)
      {
        v55 = (__clz(v54 ^ 0xFF) - 24);
        if (v55 > 2)
        {
          if (v55 == 3)
          {
            v54 = ((v54 & 0xF) << 12) | ((v53[1] & 0x3F) << 6) | v53[2] & 0x3F;
          }

          else
          {
            v54 = ((v54 & 0xF) << 18) | ((v53[1] & 0x3F) << 12) | ((v53[2] & 0x3F) << 6) | v53[3] & 0x3F;
          }
        }

        else if (v55 != 1)
        {
          v54 = v53[1] & 0x3F | ((v54 & 0x1F) << 6);
        }
      }

LABEL_35:
      if (v34 != v54)
      {
        a2, v44, v45, v46, v47, v48, v49, v50, v57, &v59 + 7;
        return 0;
      }

      v22 = sub_22B7DC038();
      v21 = v31;
      if (v31 < 0x4000)
      {
        goto LABEL_47;
      }
    }
  }

  v22 = a4;
LABEL_47:
  a2, v13, v14, v15, v16, v17, v18, v19, v57, v58;
  if ((v22 ^ a3) >> 14)
  {
    return 0;
  }

  else
  {
    return 15;
  }
}

unint64_t sub_22B74A1AC()
{
  v1 = *(v0 + 24);
  v2 = *(v1 + 16);
  if (!v2)
  {
    v3 = 0;
LABEL_16:
    result = v3 + 8;
    if (__OFADD__(v3, 8))
    {
      goto LABEL_19;
    }

    return result;
  }

  v3 = 0;
  v4 = (v1 + 56);
  while (1)
  {
    result = *(v4 - 3);
    v6 = *(v4 - 2);
    v7 = *(v4 - 1);
    v8 = *v4;
    if ((*v4 & 0x1000000000000000) != 0)
    {
      break;
    }

    if ((*(v4 - 3) & 0xC) == 8)
    {
      result = sub_22B7C1398(result, *(v4 - 1), *v4);
    }

    if ((v6 & 0xC) == 8)
    {
      v11 = result;
      v6 = sub_22B7C1398(v6, v7, v8);
      result = v11;
    }

    v9 = (v6 >> 16) - (result >> 16);
    v10 = __OFADD__(v3, v9);
    v3 += v9;
    if (v10)
    {
      goto LABEL_18;
    }

LABEL_9:
    v4 += 4;
    if (!--v2)
    {
      goto LABEL_16;
    }
  }

  result = sub_22B7DB848();
  if ((result + 0x4000000000000000) < 0)
  {
    goto LABEL_20;
  }

  v10 = __OFADD__(v3, 2 * result);
  v3 += 2 * result;
  if (!v10)
  {
    goto LABEL_9;
  }

LABEL_18:
  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_22B74A2AC()
{
  v1 = v0;
  v37 = 0;
  v2 = *(v0 + 24);
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = *(v0 + 16);
    v5 = *(v2 + 32);
    v6 = *(v2 + 40);
    v8 = *(v2 + 48);
    v7 = *(v2 + 56);

    if ((v4 & 1) == 0)
    {
      MEMORY[0x231895140](16421, 0xE200000000000000);
    }

    MEMORY[0x231895120](v5, v6, v8, v7);
    v7, v9, v10, v11, v12, v13, v14, v15, 0, 0xE000000000000000;
    v23 = v3 - 1;
    if (v23)
    {
      v24 = (v2 + 88);
      do
      {
        v25 = *(v24 - 3);
        v26 = *(v24 - 2);
        v27 = *(v24 - 1);
        v28 = *v24;

        MEMORY[0x231895140](16421, 0xE200000000000000);
        MEMORY[0x231895120](v25, v26, v27, v28);
        v28, v29, v30, v31, v32, v33, v34, v35, v38, v39;
        v24 += 4;
        --v23;
      }

      while (v23);
    }

    v2, v16, v17, v18, v19, v20, v21, v22, v38, v39;
  }

  if ((*(v1 + 32) & 1) == 0)
  {
    MEMORY[0x231895140](16421, 0xE200000000000000);
  }

  return v37;
}

uint64_t sub_22B74A3D4(uint64_t a1, const char *a2, uint64_t a3, void *a4, uint64_t a5, void *a6, void *a7, void *a8)
{
  *(v8 + 24), a2, a3, a4, a5, a6, a7, a8, vars0, vars8;
  *(v8 + 40), v9, v10, v11, v12, v13, v14, v15, vars0a, vars8a;

  return swift_deallocClassInstance();
}

void sub_22B74A468(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v81 = a1;
  v82 = a2;
  v83 = a3;
  v84 = a4;
  sub_22B74BC50();

  v6 = sub_22B7DB888();
  v14 = v6;
  if ((v7 & 0x1000000000000000) != 0)
  {
    v43 = v7;
    v14 = sub_22B74AA00(v6, v7);
    v45 = v44;
    v43, v44, v46, v47, v48, v49, v50, v51, v81, v82;
    v7 = v45;
    if ((v45 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v7 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v14 & 0x1000000000000000) != 0)
    {
      v15 = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v16 = v14 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      v79 = v7;
      v15 = sub_22B7DC328();
      v16 = v80;
      v7 = v79;
    }

    v17 = *v15;
    if (v17 == 43)
    {
      if (v16 >= 1)
      {
        v27 = v16 - 1;
        if (v27)
        {
          v28 = a5 + 48;
          v29 = a5 + 55;
          v30 = a5 + 87;
          if (a5 > 10)
          {
            v28 = 58;
          }

          else
          {
            v30 = 97;
            v29 = 65;
          }

          if (v15)
          {
            v31 = 0;
            v32 = v15 + 1;
            while (1)
            {
              v33 = *v32;
              if (v33 < 0x30 || v33 >= v28)
              {
                if (v33 < 0x41 || v33 >= v29)
                {
                  if (v33 < 0x61 || v33 >= v30)
                  {
                    goto LABEL_125;
                  }

                  v34 = -87;
                }

                else
                {
                  v34 = -55;
                }
              }

              else
              {
                v34 = -48;
              }

              v35 = v31 * a5;
              if ((v31 * a5) >> 64 == (v31 * a5) >> 63)
              {
                v31 = v35 + (v33 + v34);
                if (!__OFADD__(v35, (v33 + v34)))
                {
                  ++v32;
                  if (--v27)
                  {
                    continue;
                  }
                }
              }

              goto LABEL_125;
            }
          }
        }

        goto LABEL_125;
      }

      goto LABEL_129;
    }

    if (v17 != 45)
    {
      if (v16)
      {
        v36 = a5 + 48;
        v37 = a5 + 55;
        v38 = a5 + 87;
        if (a5 > 10)
        {
          v36 = 58;
        }

        else
        {
          v38 = 97;
          v37 = 65;
        }

        if (v15)
        {
          v39 = 0;
          while (1)
          {
            v40 = *v15;
            if (v40 < 0x30 || v40 >= v36)
            {
              if (v40 < 0x41 || v40 >= v37)
              {
                if (v40 < 0x61 || v40 >= v38)
                {
                  goto LABEL_125;
                }

                v41 = -87;
              }

              else
              {
                v41 = -55;
              }
            }

            else
            {
              v41 = -48;
            }

            v42 = v39 * a5;
            if ((v39 * a5) >> 64 == (v39 * a5) >> 63)
            {
              v39 = v42 + (v40 + v41);
              if (!__OFADD__(v42, (v40 + v41)))
              {
                ++v15;
                if (--v16)
                {
                  continue;
                }
              }
            }

            goto LABEL_125;
          }
        }
      }

      goto LABEL_125;
    }

    if (v16 >= 1)
    {
      v18 = v16 - 1;
      if (v18)
      {
        v19 = a5 + 48;
        v20 = a5 + 55;
        v21 = a5 + 87;
        if (a5 > 10)
        {
          v19 = 58;
        }

        else
        {
          v21 = 97;
          v20 = 65;
        }

        if (v15)
        {
          v22 = 0;
          v23 = v15 + 1;
          while (1)
          {
            v24 = *v23;
            if (v24 < 0x30 || v24 >= v19)
            {
              if (v24 < 0x41 || v24 >= v20)
              {
                if (v24 < 0x61 || v24 >= v21)
                {
                  break;
                }

                v25 = -87;
              }

              else
              {
                v25 = -55;
              }
            }

            else
            {
              v25 = -48;
            }

            v26 = v22 * a5;
            if ((v22 * a5) >> 64 == (v22 * a5) >> 63)
            {
              v22 = v26 - (v24 + v25);
              if (!__OFSUB__(v26, (v24 + v25)))
              {
                ++v23;
                if (--v18)
                {
                  continue;
                }
              }
            }

            break;
          }
        }
      }

LABEL_125:
      v7, v7, v8, v9, v10, v11, v12, v13, v81, v82;
      return;
    }

    __break(1u);
LABEL_128:
    __break(1u);
LABEL_129:
    __break(1u);
    goto LABEL_130;
  }

  v52 = HIBYTE(v7) & 0xF;
  v81 = v14;
  v82 = (v7 & 0xFFFFFFFFFFFFFFLL);
  if (v14 != 43)
  {
    if (v14 != 45)
    {
      if (v52)
      {
        v71 = 0;
        v72 = a5 + 48;
        v73 = a5 + 55;
        v74 = a5 + 87;
        if (a5 > 10)
        {
          v72 = 58;
        }

        else
        {
          v74 = 97;
          v73 = 65;
        }

        v75 = &v81;
        while (1)
        {
          v76 = *v75;
          if (v76 < 0x30 || v76 >= v72)
          {
            if (v76 < 0x41 || v76 >= v73)
            {
              if (v76 < 0x61 || v76 >= v74)
              {
                goto LABEL_125;
              }

              v77 = -87;
            }

            else
            {
              v77 = -55;
            }
          }

          else
          {
            v77 = -48;
          }

          v78 = v71 * a5;
          if ((v71 * a5) >> 64 == (v71 * a5) >> 63)
          {
            v71 = v78 + (v76 + v77);
            if (!__OFADD__(v78, (v76 + v77)))
            {
              v75 = (v75 + 1);
              if (--v52)
              {
                continue;
              }
            }
          }

          goto LABEL_125;
        }
      }

      goto LABEL_125;
    }

    if (v52)
    {
      v53 = v52 - 1;
      if (v53)
      {
        v54 = 0;
        v55 = a5 + 48;
        v56 = a5 + 55;
        v57 = a5 + 87;
        if (a5 > 10)
        {
          v55 = 58;
        }

        else
        {
          v57 = 97;
          v56 = 65;
        }

        v58 = &v81 + 1;
        while (1)
        {
          v59 = *v58;
          if (v59 < 0x30 || v59 >= v55)
          {
            if (v59 < 0x41 || v59 >= v56)
            {
              if (v59 < 0x61 || v59 >= v57)
              {
                goto LABEL_125;
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

          v61 = v54 * a5;
          if ((v54 * a5) >> 64 == (v54 * a5) >> 63)
          {
            v54 = v61 - (v59 + v60);
            if (!__OFSUB__(v61, (v59 + v60)))
            {
              ++v58;
              if (--v53)
              {
                continue;
              }
            }
          }

          goto LABEL_125;
        }
      }

      goto LABEL_125;
    }

    goto LABEL_128;
  }

  if (v52)
  {
    v62 = v52 - 1;
    if (v62)
    {
      v63 = 0;
      v64 = a5 + 48;
      v65 = a5 + 55;
      v66 = a5 + 87;
      if (a5 > 10)
      {
        v64 = 58;
      }

      else
      {
        v66 = 97;
        v65 = 65;
      }

      v67 = &v81 + 1;
      while (1)
      {
        v68 = *v67;
        if (v68 < 0x30 || v68 >= v64)
        {
          if (v68 < 0x41 || v68 >= v65)
          {
            if (v68 < 0x61 || v68 >= v66)
            {
              goto LABEL_125;
            }

            v69 = -87;
          }

          else
          {
            v69 = -55;
          }
        }

        else
        {
          v69 = -48;
        }

        v70 = v63 * a5;
        if ((v63 * a5) >> 64 == (v63 * a5) >> 63)
        {
          v63 = v70 + (v68 + v69);
          if (!__OFADD__(v70, (v68 + v69)))
          {
            ++v67;
            if (--v62)
            {
              continue;
            }
          }
        }

        goto LABEL_125;
      }
    }

    goto LABEL_125;
  }

LABEL_130:
  __break(1u);
}

uint64_t sub_22B74AA00(uint64_t a1, unint64_t a2)
{
  v2 = sub_22B7DB898();
  v4 = v3;
  v7 = sub_22B74AA80(v2, v5, v6, v3);
  v4, v8, v9, v10, v11, v12, v13, v14, v16, v17;
  return v7;
}

uint64_t sub_22B74AA80(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = sub_22B7DC078();
    if (!v9 || (v10 = v9, v11 = sub_22B4D1E08(v9, 0), v12 = sub_22B74ABD8(v23, (v11 + 4), v10, a1, a2, a3, a4), v13 = v23[3], , v13, v14, v15, v16, v17, v18, v19, v20, v22, v23[0], v12 == v10))
    {
      v21 = sub_22B7DB748();

      return v21;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v23[0] = a3;
      v23[1] = (a4 & 0xFFFFFFFFFFFFFFLL);
      return sub_22B7DB748();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  sub_22B7DC328();
LABEL_4:

  return sub_22B7DB748();
}

unint64_t sub_22B74ABD8(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
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
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
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
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_22B7C1398(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_22B7DB828();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_22B7DC328();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_22B7C1398(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = sub_22B7DB7F8();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

void sub_22B74ADF8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
LABEL_7:
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      sub_22B6F0AD4(&qword_27D8CDA20, &unk_22B7FA040);
      v7 = swift_allocObject();
      v8 = j__malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 1;
      }

      v7[2] = v5;
      v7[3] = 2 * (v9 >> 5);
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

uint64_t sub_22B74AED0(unint64_t a1, unint64_t a2, unint64_t a3)
{
  v5 = sub_22B7030EC(a1, a2, a3);
  if (v5 < 0x4000)
  {
    __break(1u);
  }

  else if ((a3 & 0x1000000000000000) == 0)
  {
    if ((a3 & 0x2000000000000000) != 0)
    {
      v15[0] = a2;
      v15[1] = a3 & 0xFFFFFFFFFFFFFFLL;
      v10 = v15 + (v5 >> 16);
      if ((*(v10 - 1) & 0xC0) == 0x80)
      {
        v8 = -2;
        do
        {
          v11 = v10[v8--] & 0xC0;
        }

        while (v11 == 128);
        goto LABEL_13;
      }
    }

    else
    {
      if ((a2 & 0x1000000000000000) != 0)
      {
        v6 = (a3 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        v14 = v5;
        v6 = sub_22B7DC328();
        v5 = v14;
      }

      v7 = v6 + (v5 >> 16);
      if ((*(v7 - 1) & 0xC0) == 0x80)
      {
        v8 = -2;
        do
        {
          v9 = *(v7 + v8--) & 0xC0;
        }

        while (v9 == 128);
LABEL_13:
        v12 = v8 + 1;
        return (v5 + (v12 << 16)) & 0xFFFFFFFFFFFF0000 | 5;
      }
    }

    v12 = -1;
    return (v5 + (v12 << 16)) & 0xFFFFFFFFFFFF0000 | 5;
  }

  return sub_22B7DB728();
}

uint64_t sub_22B74AFEC(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    result = 0;
    goto LABEL_8;
  }

  if ((a4 & 0x2000000000000000) != 0)
  {
    v14[0] = a3;
    v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
    v11 = v14;
  }

  else if ((a3 & 0x1000000000000000) != 0)
  {
    v11 = ((a4 & 0xFFFFFFFFFFFFFFFLL) + 32);
  }

  else
  {
    v11 = sub_22B7DC328();
  }

  result = sub_22B74B1E4(v11, a1, a2, a3, a4, a5);
  if (!v5)
  {
    v15 = v13 & 1;
LABEL_8:
    v16 = (a4 & 0x1000000000000000) != 0;
  }

  return result;
}

unint64_t sub_22B74B0B8(unint64_t *a1, unint64_t a2, unint64_t a3)
{
  v6 = sub_22B7C1564(*a1, a2, a3);
  if ((a3 & 0x1000000000000000) != 0)
  {
    result = sub_22B7DB718();
  }

  else
  {
    v7 = v6 >> 16;
    if ((a3 & 0x2000000000000000) != 0)
    {
      v13[0] = a2;
      v13[1] = a3 & 0xFFFFFFFFFFFFFFLL;
      v9 = *(v13 + v7);
    }

    else
    {
      if ((a2 & 0x1000000000000000) != 0)
      {
        v8 = (a3 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        v8 = sub_22B7DC328();
      }

      v9 = *(v8 + v7);
    }

    v10 = v9;
    v11 = __clz(v9 ^ 0xFF) - 24;
    if (v10 >= 0)
    {
      LOBYTE(v11) = 1;
    }

    result = ((v7 + v11) << 16) | 5;
  }

  *a1 = result;
  return result;
}

uint64_t sub_22B74B170(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) == *(a2 + 16) && *(a1 + 32) == *(a2 + 32))
  {
    return sub_22B74775C(*(a1 + 24), *(a2 + 24));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22B74B1E4(uint64_t result, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6)
{
  v8 = result;
  v9 = (a4 >> 59) & 1;
  if ((a5 & 0x1000000000000000) == 0)
  {
    LOBYTE(v9) = 1;
  }

  v10 = 4 << v9;
  v11 = a2 & 0xC;
  v12 = a2;
  if (v11 == v10)
  {
    v14 = a2;
    v15 = a3;
    v16 = a5;
    result = sub_22B7C1398(a2, a4, a5);
    a2 = v14;
    a3 = v15;
    a5 = v16;
    v12 = result;
    if ((v16 & 0x1000000000000000) == 0)
    {
LABEL_5:
      v13 = v12 >> 16;
      if (v11 != v10)
      {
        goto LABEL_6;
      }

      goto LABEL_14;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
    goto LABEL_5;
  }

  v17 = a4 & 0xFFFFFFFFFFFFLL;
  if ((a5 & 0x2000000000000000) != 0)
  {
    v17 = HIBYTE(a5) & 0xF;
  }

  if (v17 < v12 >> 16)
  {
    goto LABEL_95;
  }

  v18 = a2;
  v19 = a3;
  v20 = a5;
  result = sub_22B7DB818();
  a5 = v20;
  v13 = result;
  a3 = v19;
  a2 = v18;
  if (v11 == v10)
  {
LABEL_14:
    v21 = a3;
    v22 = a5;
    result = sub_22B7C1398(a2, a4, a5);
    a3 = v21;
    a5 = v22;
    a2 = result;
  }

LABEL_6:
  if ((a3 & 0xC) == v10)
  {
    v23 = a2;
    v24 = a5;
    result = sub_22B7C1398(a3, a4, a5);
    a2 = v23;
    a5 = v24;
    a3 = result;
    if ((v24 & 0x1000000000000000) == 0)
    {
      goto LABEL_8;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
LABEL_8:
    result = (a3 >> 16) - (a2 >> 16);
    goto LABEL_21;
  }

  v25 = HIBYTE(a5) & 0xF;
  if ((a5 & 0x2000000000000000) == 0)
  {
    v25 = a4 & 0xFFFFFFFFFFFFLL;
  }

  if (v25 < a2 >> 16)
  {
    goto LABEL_91;
  }

  if (v25 < a3 >> 16)
  {
LABEL_92:
    __break(1u);
    goto LABEL_93;
  }

  result = sub_22B7DB818();
LABEL_21:
  v26 = v13 + result;
  if (__OFADD__(v13, result))
  {
    __break(1u);
    goto LABEL_90;
  }

  if (v26 < v13)
  {
LABEL_90:
    __break(1u);
LABEL_91:
    __break(1u);
    goto LABEL_92;
  }

  v27 = (v13 + v8);
  if (!v8)
  {
    v27 = 0;
  }

  v28 = *v27;
  if (v28 == 43)
  {
    if (result >= 1)
    {
      if (result != 1)
      {
        v39 = a6 + 48;
        v40 = a6 + 55;
        v41 = a6 + 87;
        if (a6 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        if (v27)
        {
          v32 = 0;
          v42 = v27 + 1;
          v43 = result - 1;
          do
          {
            v44 = *v42;
            if (v44 < 0x30 || v44 >= v39)
            {
              if (v44 < 0x41 || v44 >= v40)
              {
                v37 = 0;
                if (v44 < 0x61 || v44 >= v41)
                {
                  return v37;
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

            v46 = v32 * a6;
            if ((v32 * a6) >> 64 != (v32 * a6) >> 63)
            {
              return 0;
            }

            v32 = v46 + (v44 + v45);
            if (__OFADD__(v46, (v44 + v45)))
            {
              return 0;
            }

            ++v42;
            --v43;
          }

          while (v43);
          return v32;
        }

        return 0;
      }

      return 0;
    }

    goto LABEL_94;
  }

  if (v28 != 45)
  {
    if (v26 != v13)
    {
      v47 = a6 + 48;
      v48 = a6 + 55;
      v49 = a6 + 87;
      if (a6 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      if (v27)
      {
        v32 = 0;
        while (1)
        {
          v50 = *v27;
          if (v50 < 0x30 || v50 >= v47)
          {
            if (v50 < 0x41 || v50 >= v48)
            {
              v37 = 0;
              if (v50 < 0x61 || v50 >= v49)
              {
                return v37;
              }

              v51 = -87;
            }

            else
            {
              v51 = -55;
            }
          }

          else
          {
            v51 = -48;
          }

          v52 = v32 * a6;
          if ((v32 * a6) >> 64 != (v32 * a6) >> 63)
          {
            return 0;
          }

          v32 = v52 + (v50 + v51);
          if (__OFADD__(v52, (v50 + v51)))
          {
            return 0;
          }

          ++v27;
          if (!--result)
          {
            return v32;
          }
        }
      }

      return 0;
    }

    return 0;
  }

  if (result >= 1)
  {
    if (result != 1)
    {
      v29 = a6 + 48;
      v30 = a6 + 55;
      v31 = a6 + 87;
      if (a6 > 10)
      {
        v29 = 58;
      }

      else
      {
        v31 = 97;
        v30 = 65;
      }

      if (v27)
      {
        v32 = 0;
        v33 = v27 + 1;
        v34 = result - 1;
        while (1)
        {
          v35 = *v33;
          if (v35 < 0x30 || v35 >= v29)
          {
            if (v35 < 0x41 || v35 >= v30)
            {
              v37 = 0;
              if (v35 < 0x61 || v35 >= v31)
              {
                return v37;
              }

              v36 = -87;
            }

            else
            {
              v36 = -55;
            }
          }

          else
          {
            v36 = -48;
          }

          v38 = v32 * a6;
          if ((v32 * a6) >> 64 != (v32 * a6) >> 63)
          {
            return 0;
          }

          v32 = v38 - (v35 + v36);
          if (__OFSUB__(v38, (v35 + v36)))
          {
            return 0;
          }

          ++v33;
          if (!--v34)
          {
            return v32;
          }
        }
      }

      return 0;
    }

    return 0;
  }

LABEL_93:
  __break(1u);
LABEL_94:
  __break(1u);
LABEL_95:
  __break(1u);
  return result;
}

uint64_t sub_22B74B650(uint64_t a1, IMDScheduledMessageCoordinator *a2)
{
  v137 = sub_22B6F0AD4(&qword_27D8CEA18, &qword_22B7FAE50);
  v4 = *(v137 - 8);
  v5 = MEMORY[0x28223BE20](v137);
  v132 = &v128 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v128 - v7;
  v130 = a1;
  v142 = a1;
  v143 = a2;
  v131 = a2;
  if (qword_281420940 != -1)
  {
LABEL_30:
    swift_once();
  }

  v9 = sub_22B6F0AD4(&qword_27D8CEA20, &qword_22B7FAE58);
  sub_22B4CFA74(v9, qword_281422750);
  sub_22B6F0AD4(&qword_27D8CEA28, &qword_22B7FAE60);
  sub_22B74BBFC();
  sub_22B714FD8(&qword_28141F440, &qword_27D8CEA20, &qword_22B7FAE58, MEMORY[0x277D85AC0]);
  v17 = sub_22B7DB5E8();
  v18 = *v17->messageStore;
  v19 = MEMORY[0x277D84F90];
  if (v18)
  {
    v142 = MEMORY[0x277D84F90];
    sub_22B7AB6D4(0, v18, 0);
    v19 = v142;
    v21 = *(v4 + 16);
    v20 = v4 + 16;
    v140 = v21;
    v22 = (*(v20 + 64) + 32) & ~*(v20 + 64);
    v129 = v17;
    v23 = v17 + v22;
    v24 = *(v20 + 56);
    v141 = v20;
    v138 = (v20 - 8);
    v139 = v24;
    v136 = v17 + v22;
    do
    {
      v25 = v137;
      v140(v8, v23, v137);
      v26 = sub_22B7DB148();
      v28 = v27;
      v29 = *v138;
      (*v138)(v8, v25);
      v142 = v19;
      v31 = *v19->messageStore;
      v30 = *v19->chatRegistry;
      if (v31 >= v30 >> 1)
      {
        sub_22B7AB6D4((v30 > 1), v31 + 1, 1);
        v19 = v142;
      }

      *v19->messageStore = v31 + 1;
      v32 = v19 + 16 * v31;
      *(v32 + 4) = v26;
      *(v32 + 5) = v28;
      v23 += v139;
      --v18;
    }

    while (v18);
    v17 = v129;
    v134 = *v129->messageStore;
    if (v134)
    {
      v133 = v29;
      v33 = 0;
      v34 = MEMORY[0x277D84F90];
      v35 = v136;
      v8 = v137;
      v36 = v132;
      while (1)
      {
        v135 = v34;
        v136 = v35;
        v140(v36, v35, v8);
        sub_22B7DB158();
        v37 = v145;
        v38 = v146;
        v4 = v147;
        v39 = v148;
        v40 = v149;
        v144, v41, v42, v43, v44, v45, v46, v47, v128, v129;
        v40, v48, v49, v50, v51, v52, v53, v54, v128, v129;
        v55 = sub_22B7496B0(v37, v38, v4, v39, 0x24uLL, 0xE100000000000000);
        if (v56)
        {
          v39, v56, v57, v58, v59, v60, v61, v62, v128, v129;
          v63 = v33;
        }

        else
        {
          if (v55 >> 14 < v37 >> 14)
          {
            __break(1u);
            goto LABEL_30;
          }

          v65 = sub_22B7DC0A8();
          v67 = v66;
          v69 = v68;
          v71 = v70;
          v39, v66, v68, v70, v72, v73, v74, v75, v128, v129;
          if ((v65 ^ v67) >> 14)
          {
            v83 = sub_22B74AFEC(v65, v67, v69, v71, 10);
            if ((v84 & 0x100) != 0)
            {
              sub_22B74A468(v65, v67, v69, v71, 10);
            }

            v91 = v83;
            v92 = v84;
            v71, v84, v85, v86, v87, v88, v89, v90, v128, v129;
            v36 = v132;
            v34 = v135;
            v64 = v136;
            if (v92)
            {
              v63 = v33;
            }

            else
            {
              v63 = v91;
            }

            v8 = v137;
            goto LABEL_20;
          }

          v71, v76, v77, v78, v79, v80, v81, v82, v128, v129;
          v63 = v33;
          v36 = v132;
        }

        v34 = v135;
        v64 = v136;
LABEL_20:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v34 = sub_22B71B8E0(0, *v34->messageStore + 1, 1, v34, v93, v94, v95, v96);
        }

        v98 = *v34->messageStore;
        v97 = *v34->chatRegistry;
        if (v98 >= v97 >> 1)
        {
          v34 = sub_22B71B8E0((v97 > 1), v98 + 1, 1, v34, v93, v94, v95, v96);
        }

        ++v33;
        v133(v36, v8);
        *v34->messageStore = v98 + 1;
        *&v34->queue[8 * v98] = v63;
        v35 = &v64[v139];
        if (v134 == v33)
        {
          v129, v99, v100, v101, v102, v103, v104, v105, v128, v129;
          goto LABEL_28;
        }
      }
    }
  }

  v17, v10, v11, v12, v13, v14, v15, v16, v128, v129;
  v34 = MEMORY[0x277D84F90];
LABEL_28:
  v106 = v131;
  v107 = sub_22B747CD0(v130, v131, v19, MEMORY[0x277D83868], sub_22B71B9F0);
  v106, v108, v109, v110, v111, v112, v113, v114, v128, v129;
  v19, v115, v116, v117, v118, v119, v120, v121, v128, v129;
  type metadata accessor for MatchCriteria();
  v122 = swift_allocObject();
  sub_22B749568(v107, 1, 1, v34, v123, v124, v125, v126);
  return v122;
}

unint64_t sub_22B74BBFC()
{
  result = qword_28141F318;
  if (!qword_28141F318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28141F318);
  }

  return result;
}

unint64_t sub_22B74BC50()
{
  result = qword_28141F2E8;
  if (!qword_28141F2E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28141F2E8);
  }

  return result;
}

unint64_t sub_22B74BCA4()
{
  result = qword_28141F320;
  if (!qword_28141F320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28141F320);
  }

  return result;
}

unint64_t sub_22B74BCF8()
{
  result = qword_28141F160;
  if (!qword_28141F160)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28141F160);
  }

  return result;
}

uint64_t sub_22B74BD44(uint64_t a1, uint64_t a2)
{
  v4 = sub_22B6F0AD4(&unk_27D8CEEC0, &qword_22B7FA060);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22B74BDB4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_22B74BDFC()
{
  result = [objc_allocWithZone(IMDServiceReachabilityController) init];
  qword_27D8CEA70 = result;
  return result;
}

void __swiftcall IMDServiceReachabilityController.init()(IMDServiceReachabilityController *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

void sub_22B74BF9C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = [a1 participantHandles];
  if (v8)
  {
    v9 = v8;
    sub_22B4D01A0(0, &qword_28141F298, off_2786FF850);
    v10 = sub_22B7DB8F8();
    v11 = [v4 reachabilityContextForChat_];
    v13[4] = a3;
    v13[5] = a4;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 1107296256;
    v13[2] = sub_22B74CEAC;
    v13[3] = &unk_283F1DC30;
    v12 = _Block_copy(v13);

    [v4 calculateServiceForSendingToHandles:v9 accounts:v10 context:v11 completionBlock:v12];
    _Block_release(v12);
  }

  else
  {
    __break(1u);
  }
}

void sub_22B74C1CC(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v89 = a1;
  v90 = a3;
  v88 = sub_22B7DA9A8();
  v9 = *(v88 - 8);
  MEMORY[0x28223BE20](v88);
  v87 = &v83 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v12 = swift_allocObject();
  v12[2] = v11;
  v12[3] = v5;
  v12[4] = a4;
  v12[5] = a5;
  v13 = objc_allocWithZone(MEMORY[0x277D1AB90]);
  aBlock[4] = sub_22B74C9D4;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22B74CEAC;
  aBlock[3] = &unk_283F1DBB8;
  v14 = _Block_copy(aBlock);

  v15 = v5;

  v16 = [v13 initWithDelegate:v15 updateHandler:v14];
  _Block_release(v14);

  swift_beginAccess();
  v83 = v11;
  swift_unknownObjectWeakAssign();
  swift_beginAccess();
  v91 = v16;
  sub_22B7C9340(&v94, v91);
  swift_endAccess();

  if (a2 >> 62)
  {
    v17 = sub_22B7DC1C8();
    if (v17)
    {
      goto LABEL_3;
    }

LABEL_21:
    v19 = MEMORY[0x277D84F90];
    goto LABEL_22;
  }

  v17 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v17)
  {
    goto LABEL_21;
  }

LABEL_3:
  if (v17 < 1)
  {
    __break(1u);
    return;
  }

  v18 = 0;
  v92 = a2 & 0xC000000000000001;
  v19 = MEMORY[0x277D84F90];
  v84 = (v9 + 8);
  v85 = v17;
  v86 = a2;
  do
  {
    if (v92)
    {
      v20 = MEMORY[0x231895C80](v18, a2);
    }

    else
    {
      v20 = *(a2 + 8 * v18 + 32);
    }

    v21 = v20;
    v22 = [v20 session];
    if (v22)
    {
      v23 = v22;
      v24 = v87;
      sub_22B7DA998();
      sub_22B7DA978();
      v26 = v25;
      (*v84)(v24, v88);
      v27 = [v21 service];
      v28 = [v27 internalName];

      if (!v28)
      {
        sub_22B7DB6A8();
        v30 = v29;
        v28 = sub_22B7DB678();
        v30, v31, v32, v33, v34, v35, v36, v37, v83, v84;
      }

      v93 = v19;
      v38 = [v21 accountID];
      if (!v38)
      {
        sub_22B7DB6A8();
        v40 = v39;
        v38 = sub_22B7DB678();
        v40, v41, v42, v43, v44, v45, v46, v47, v83, v84;
      }

      v48 = objc_allocWithZone(MEMORY[0x277D1ABA8]);
      v49 = sub_22B7DB8F8();
      v50 = sub_22B7DB678();
      v51 = [v48 initWithHandleIDs:v49 requestID:v50 serviceName:v28 accountID:v38 context:v90];

      v52 = sub_22B7DB678();
      v26, v53, v54, v55, v56, v57, v58, v59, v83, v84;
      v60 = v91;
      [v91 beganRequestWithID_];

      v61 = swift_allocObject();
      v61[2] = v23;
      v61[3] = v51;
      v61[4] = v60;
      v62 = v60;
      v63 = v23;
      v64 = v51;
      v19 = v93;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v19 = sub_22B71C2E8(0, (*v19->messageStore + 1), 1, v19, v65, v66, v67, v68);
      }

      v17 = v85;
      a2 = v86;
      v70 = *v19->messageStore;
      v69 = *v19->chatRegistry;
      if (v70 >= v69 >> 1)
      {
        v19 = sub_22B71C2E8((v69 > 1), (v70 + 1), 1, v19, v65, v66, v67, v68);
      }

      *v19->messageStore = v70 + 1;
      v71 = v19 + 16 * v70;
      *(v71 + 4) = sub_22B74CA48;
      *(v71 + 5) = v61;
    }

    else
    {
    }

    ++v18;
  }

  while (v17 != v18);
LABEL_22:
  v72 = *v19->messageStore;
  if (v72)
  {
    membershipObserver = v19->membershipObserver;
    do
    {
      v74 = *(membershipObserver - 1);

      v74(v75);

      membershipObserver += 16;
      --v72;
    }

    while (v72);
  }

  v19, v76, v77, v78, v79, v80, v81, v82, v83, v84;
}

void sub_22B74C734(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void *))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    if ([a1 isFinal])
    {
      swift_beginAccess();
      v8 = sub_22B711E8C(v7);
      swift_endAccess();

      a4(a1);
    }
  }
}

id IMDServiceReachabilityController.init()()
{
  *(v0 + OBJC_IVAR___IMDServiceReachabilityController_tasks) = MEMORY[0x277D84FA0];
  v2.super_class = IMDServiceReachabilityController;
  return objc_msgSendSuper2(&v2, sel_init);
}

void sub_22B74C9E0(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_22B74CA5C(uint64_t a1, uint64_t a2)
{
  v2 = [objc_opt_self() sharedController];
  v3 = sub_22B7DB678();
  v4 = [v2 serviceWithName_];

  if (v4)
  {
    v5 = [v4 serviceProperties];
    v6 = sub_22B7DB588();

    v53 = sub_22B7DB6A8();
    sub_22B7DC248();
    if (*(v6 + 16) && (v14 = sub_22B4D7EC0(v56), (v7 & 1) != 0))
    {
      sub_22B4D1F68(*(v6 + 56) + 32 * v14, v57);
      sub_22B4DA138(v56);
      v6, v15, v16, v17, v18, v19, v20, v21, v50, v53;
      sub_22B6F0AD4(&qword_27D8CEAE8, &qword_22B7FAEA8);
      if (swift_dynamicCast())
      {
        v22 = v54;
        v23 = sub_22B7DB6A8();
        if (*v54->messageStore)
        {
          v31 = v24;
          v32 = sub_22B723648(v23, v24);
          v34 = v33;
          v31, v33, v35, v36, v37, v38, v39, v40, v51, v54;
          if (v34)
          {
            v48 = *(*v22->isFirstFire + 8 * v32);
            v22, v41, v42, v43, v44, v45, v46, v47, v52, v55;

            return v48;
          }
        }

        else
        {
          v24, v24, v25, v26, v27, v28, v29, v30, v51, v54;
        }

        v22, v41, v42, v43, v44, v45, v46, v47, v52, v55;
      }

      else
      {
      }
    }

    else
    {
      v6, v7, v8, v9, v10, v11, v12, v13, v50, v53;

      sub_22B4DA138(v56);
    }
  }

  return 0;
}

id sub_22B74CC5C(void *a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277D1AB98]) init];
  if (!a1)
  {
    return v2;
  }

  v3 = a1;
  v4 = [v3 lastAddressedLocalHandle];
  [v2 setSenderLastAddressedHandle_];

  v5 = [v3 lastAddressedSIMID];
  [v2 setSenderLastAddressedSIMID_];

  v6 = [v3 chatIdentifier];
  [v2 setChatIdentifier_];

  [v2 setChatStyle_];
  result = [v3 account];
  if (result)
  {
    v8 = result;
    v9 = [result service];

    v10 = [v9 internalName];
    if (!v10)
    {
      sub_22B7DB6A8();
      v12 = v11;
      v10 = sub_22B7DB678();
      v12, v13, v14, v15, v16, v17, v18, v19, v23, v24;
    }

    [v2 setLastUsedServiceName_];

    v20 = [objc_opt_self() sharedInstance];
    v21 = [v20 lastMessageForChatWithRowID_];

    if (v21)
    {
      v22 = [v21 service];
      [v2 setServiceOfLastMessage_];
    }

    return v2;
  }

  __break(1u);
  return result;
}

uint64_t FileEventStream.__allocating_init(paths:streamEventID:latency:createFlags:pathFilter:callback:)(IMDScheduledMessageCoordinator *a1, FSEventStreamEventId a2, _DWORD *a3, _OWORD *a4, uint64_t a5, uint64_t a6, CFTimeInterval a7)
{
  v36 = *MEMORY[0x277D85DE8];
  v14 = sub_22B7DB368();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &context - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = swift_allocObject();
  LODWORD(a3) = *a3;
  *(v18 + 72) = a6;
  *(v18 + 80) = 0;
  *(v18 + 16) = a1;
  *(v18 + 24) = a2;
  *(v18 + 32) = a7;
  *(v18 + 40) = a3;
  *(v18 + 48) = *a4;
  *(v18 + 64) = a5;
  context.info = v18;
  memset(&context.retain, 0, 24);
  context.version = 0;
  v19 = *MEMORY[0x277CBECE8];

  v20 = sub_22B7DB8F8();
  a1, v21, v22, v23, v24, v25, v26, v27, context.version, context.info;
  v28 = FSEventStreamCreate(v19, sub_22B4D987C, &context, v20, a2, a7, a3);

  if (v28)
  {
    *(v18 + 80) = v28;
    sub_22B74D6EC();
    (*(v15 + 104))(v17, *MEMORY[0x277D851D0], v14);
    v29 = sub_22B7DBD98();
    (*(v15 + 8))(v17, v14);
    FSEventStreamSetDispatchQueue(v28, v29);

    FSEventStreamStart(v28);
  }

  else
  {
    if (qword_28141F430 != -1)
    {
      swift_once();
    }

    v30 = sub_22B7DB2B8();
    sub_22B4CFA74(v30, qword_281422710);
    v31 = sub_22B7DB298();
    v32 = sub_22B7DBCB8();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_22B4CC000, v31, v32, "Could not create FSEventStream", v33, 2u);
      MEMORY[0x231898D60](v33, -1, -1);
    }
  }

  return v18;
}

uint64_t FileEventStream.init(paths:streamEventID:latency:createFlags:pathFilter:callback:)(IMDScheduledMessageCoordinator *a1, FSEventStreamEventId a2, _DWORD *a3, _OWORD *a4, uint64_t a5, uint64_t a6, CFTimeInterval a7)
{
  v8 = v7;
  v37 = *MEMORY[0x277D85DE8];
  v16 = sub_22B7DB368();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &context - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  LODWORD(a3) = *a3;
  *(v8 + 72) = a6;
  *(v8 + 80) = 0;
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  *(v8 + 32) = a7;
  *(v8 + 40) = a3;
  *(v8 + 48) = *a4;
  *(v8 + 64) = a5;
  context.info = v8;
  memset(&context.retain, 0, 24);
  context.version = 0;
  v20 = *MEMORY[0x277CBECE8];

  v21 = sub_22B7DB8F8();
  a1, v22, v23, v24, v25, v26, v27, v28, context.version, context.info;
  v29 = FSEventStreamCreate(v20, sub_22B4D987C, &context, v21, a2, a7, a3);

  if (v29)
  {
    *(v8 + 80) = v29;
    sub_22B74D6EC();
    (*(v17 + 104))(v19, *MEMORY[0x277D851D0], v16);
    v30 = sub_22B7DBD98();
    (*(v17 + 8))(v19, v16);
    FSEventStreamSetDispatchQueue(v29, v30);

    FSEventStreamStart(v29);
  }

  else
  {
    if (qword_28141F430 != -1)
    {
      swift_once();
    }

    v31 = sub_22B7DB2B8();
    sub_22B4CFA74(v31, qword_281422710);
    v32 = sub_22B7DB298();
    v33 = sub_22B7DBCB8();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_22B4CC000, v32, v33, "Could not create FSEventStream", v34, 2u);
      MEMORY[0x231898D60](v34, -1, -1);
    }
  }

  return v8;
}

Swift::Void __swiftcall FileEventStream.stop()()
{
  v1 = *(v0 + 80);
  if (v1)
  {
    v2 = v0;
    if (qword_28141F430 != -1)
    {
      swift_once();
    }

    v3 = sub_22B7DB2B8();
    sub_22B4CFA74(v3, qword_281422710);
    v4 = sub_22B7DB298();
    v5 = sub_22B7DBCB8();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_22B4CC000, v4, v5, "Stopping observation for event stream, setting dispatch queue to nil", v6, 2u);
      MEMORY[0x231898D60](v6, -1, -1);
    }

    FSEventStreamSetDispatchQueue(v1, 0);
    FSEventStreamStop(v1);
    *(v2 + 80) = 0;
  }

  else
  {
    if (qword_28141F430 != -1)
    {
      swift_once();
    }

    v7 = sub_22B7DB2B8();
    sub_22B4CFA74(v7, qword_281422710);
    oslog = sub_22B7DB298();
    v8 = sub_22B7DBC98();
    if (os_log_type_enabled(oslog, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_22B4CC000, oslog, v8, "No file event stream to stop returning early", v9, 2u);
      MEMORY[0x231898D60](v9, -1, -1);
    }
  }
}

void *FileEventStream.deinit(uint64_t a1, const char *a2, uint64_t a3, void *a4, uint64_t a5, void *a6, void *a7, void *a8)
{
  *(v8 + 16), a2, a3, a4, a5, a6, a7, a8, vars0, vars8;
  *(v8 + 56), v9, v10, v11, v12, v13, v14, v15, vars0a, vars8a;

  return v8;
}

uint64_t FileEventStream.__deallocating_deinit(uint64_t a1, const char *a2, uint64_t a3, void *a4, uint64_t a5, void *a6, void *a7, void *a8)
{
  *(v8 + 16), a2, a3, a4, a5, a6, a7, a8, vars0, vars8;
  *(v8 + 56), v9, v10, v11, v12, v13, v14, v15, vars0a, vars8a;

  return swift_deallocClassInstance();
}

unint64_t sub_22B74D6EC()
{
  result = qword_28141F210;
  if (!qword_28141F210)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28141F210);
  }

  return result;
}

uint64_t sub_22B74D788(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22B74D7D8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
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

uint64_t sub_22B74D82C(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_22B74D844(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

uint64_t sub_22B74D874()
{
  v0 = sub_22B7DB2B8();
  sub_22B6F24F4(v0, qword_27D8CEAF0);
  sub_22B4CFA74(v0, qword_27D8CEAF0);
  sub_22B7DB288();
  return sub_22B7DB2A8();
}

uint64_t sub_22B74D8E0(uint64_t a1, char a2)
{
  *(v3 + 152) = a2;
  *(v3 + 120) = a1;
  *(v3 + 128) = v2;
  return MEMORY[0x2822009F8](sub_22B74D904, 0, 0);
}

uint64_t sub_22B74D904(__n128 a1)
{
  v42 = v1;
  v2 = *(v1 + 120);
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = (v2 + 32);
    v5 = MEMORY[0x277D84F90];
    a1.n128_u64[0] = 136315138;
    *v40 = a1;
    while (1)
    {
      v6 = *v4;
      *(v1 + 88) = sub_22B7DB6A8();
      *(v1 + 96) = v7;

      sub_22B7DC248();
      if (!*(v6 + 16))
      {
        break;
      }

      v15 = sub_22B4D7EC0(v1 + 16);
      if ((v8 & 1) == 0)
      {
        break;
      }

      sub_22B4D1F68(*(v6 + 56) + 32 * v15, v1 + 56);
      sub_22B4DA138(v1 + 16);
      v6, v16, v17, v18, v19, v20, v21, v22, v40[0], v40[1];
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_14;
      }

      v23 = *(v1 + 104);
      v24 = *(v1 + 112);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = sub_22B71BD80(0, *v5->messageStore + 1, 1, v5, v25, v26, v27, v28);
      }

      v30 = *v5->messageStore;
      v29 = *v5->chatRegistry;
      if (v30 >= v29 >> 1)
      {
        v5 = sub_22B71BD80((v29 > 1), v30 + 1, 1, v5, v25, v26, v27, v28);
      }

      *v5->messageStore = v30 + 1;
      v31 = v5 + 16 * v30;
      *(v31 + 4) = v23;
      *(v31 + 5) = v24;
LABEL_4:
      ++v4;
      if (!--v3)
      {
        goto LABEL_19;
      }
    }

    v6, v8, v9, v10, v11, v12, v13, v14, v40[0], v40[1];
    sub_22B4DA138(v1 + 16);
LABEL_14:
    if (qword_27D8CCC30 != -1)
    {
      swift_once();
    }

    v32 = sub_22B7DB2B8();
    sub_22B4CFA74(v32, qword_27D8CEAF0);
    v33 = sub_22B7DB298();
    v34 = sub_22B7DBC98();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v41 = v36;
      *v35 = v40[0];
      *(v35 + 4) = sub_22B4CFAAC(0xD000000000000032, 0x800000022B80FD60, &v41);
      _os_log_impl(&dword_22B4CC000, v33, v34, "%s didn't find IMFileTransferGUIDKey in the current transfer dictionary. Skipping it.", v35, 0xCu);
      sub_22B4CFB78(v36);
      MEMORY[0x231898D60](v36, -1, -1);
      MEMORY[0x231898D60](v35, -1, -1);
    }

    goto LABEL_4;
  }

  v5 = MEMORY[0x277D84F90];
LABEL_19:
  *(v1 + 136) = v5;
  v37 = swift_task_alloc();
  *(v1 + 144) = v37;
  *v37 = v1;
  v37[1] = sub_22B74DC2C;
  v38 = *(v1 + 152);

  return sub_22B74DD54(v5, v38);
}

uint64_t sub_22B74DC2C(uint64_t a1, char a2)
{
  v5 = *(*v2 + 136);
  v17 = *v2;

  v5, v6, v7, v8, v9, v10, v11, v12, v15, v16;
  v13 = *(v17 + 8);

  return v13(a1, a2 & 1);
}

uint64_t sub_22B74DD54(uint64_t a1, char a2)
{
  *(v3 + 128) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  v4 = sub_22B7DAEC8();
  *(v3 + 32) = v4;
  *(v3 + 40) = *(v4 - 8);
  *(v3 + 48) = swift_task_alloc();
  *(v3 + 56) = swift_task_alloc();
  *(v3 + 64) = sub_22B6F0AD4(&qword_27D8CEB10, &qword_22B7FAF70);
  *(v3 + 72) = swift_task_alloc();
  *(v3 + 80) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B74DE6C, 0, 0);
}

uint64_t sub_22B74DE6C()
{
  v1 = *(v0 + 16);
  v2 = v1[2];
  *(v0 + 88) = v2;
  if (v2)
  {
    v3 = MEMORY[0x277D84F90];
    *(v0 + 96) = 0;
    *(v0 + 104) = v3;
    v5 = v1[4];
    v4 = v1[5];
    *(v0 + 112) = v4;

    v6 = swift_task_alloc();
    *(v0 + 120) = v6;
    *v6 = v0;
    v6[1] = sub_22B74DFA8;
    v7 = *(v0 + 80);
    v8 = *(v0 + 128);

    return sub_22B74E3D4(v7, v5, v4, v8);
  }

  else
  {

    v10 = *(v0 + 8);
    v11 = MEMORY[0x277D84F90];

    return v10(v11, 0);
  }
}

uint64_t sub_22B74DFA8()
{
  v1 = *(*v0 + 112);
  v11 = *v0;

  v1, v2, v3, v4, v5, v6, v7, v8, v10, v11;

  return MEMORY[0x2822009F8](sub_22B74E0C0, 0, 0);
}

uint64_t sub_22B74E0C0()
{
  sub_22B4D7E58(*(v0 + 80), *(v0 + 72), &qword_27D8CEB10, &qword_22B7FAF70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v1 = *(v0 + 72);
    sub_22B4D0D64(*(v0 + 80), &qword_27D8CEB10, &qword_22B7FAF70);
    sub_22B4D0D64(v1, &qword_27D8CEB10, &qword_22B7FAF70);
    v9 = *(v0 + 104);
  }

  else
  {
    v11 = *(v0 + 48);
    v10 = *(v0 + 56);
    v12 = *(v0 + 32);
    v13 = *(v0 + 40);
    v14 = *(v13 + 32);
    v14(v10, *(v0 + 72), v12);
    (*(v13 + 16))(v11, v10, v12);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *(v0 + 104);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v9 = sub_22B71C528(0, *v9->messageStore + 1, 1, *(v0 + 104));
    }

    v17 = *v9->messageStore;
    v16 = *v9->chatRegistry;
    if (v17 >= v16 >> 1)
    {
      v9 = sub_22B71C528((v16 > 1), v17 + 1, 1, v9);
    }

    v18 = *(v0 + 80);
    v19 = *(v0 + 48);
    v20 = *(v0 + 32);
    v21 = *(v0 + 40);
    (*(v21 + 8))(*(v0 + 56), v20);
    sub_22B4D0D64(v18, &qword_27D8CEB10, &qword_22B7FAF70);
    *v9->messageStore = v17 + 1;
    v14(v9 + ((*(v21 + 80) + 32) & ~*(v21 + 80)) + *(v21 + 72) * v17, v19, v20);
  }

  v22 = *(v0 + 96) + 1;
  if (v22 == *(v0 + 88))
  {
    v23 = *v9->messageStore;
    if (!v23)
    {
      v9, v2, v3, v4, v5, v6, v7, v8, v33, v34;
      sub_22B752C04();
      v9 = swift_allocError();
      *v24 = 0;
    }

    v25 = *(v0 + 8);

    return v25(v9, v23 == 0);
  }

  else
  {
    *(v0 + 96) = v22;
    *(v0 + 104) = v9;
    v27 = *(v0 + 16) + 16 * v22;
    v29 = *(v27 + 32);
    v28 = *(v27 + 40);
    *(v0 + 112) = v28;

    v30 = swift_task_alloc();
    *(v0 + 120) = v30;
    *v30 = v0;
    v30[1] = sub_22B74DFA8;
    v31 = *(v0 + 80);
    v32 = *(v0 + 128);

    return sub_22B74E3D4(v31, v29, v28, v32);
  }
}

uint64_t sub_22B74E3D4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v4 + 552) = a4;
  *(v4 + 192) = a2;
  *(v4 + 200) = a3;
  *(v4 + 184) = a1;
  *(v4 + 208) = sub_22B6F0AD4(&qword_27D8CEB20, &unk_22B7FAF80);
  *(v4 + 216) = swift_task_alloc();
  *(v4 + 224) = swift_task_alloc();
  sub_22B6F0AD4(&qword_27D8CFC90, &unk_22B7FE140);
  *(v4 + 232) = swift_task_alloc();
  *(v4 + 240) = swift_task_alloc();
  v5 = sub_22B7DAEC8();
  *(v4 + 248) = v5;
  *(v4 + 256) = *(v5 - 8);
  *(v4 + 264) = swift_task_alloc();
  *(v4 + 272) = swift_task_alloc();
  v6 = sub_22B7DB248();
  *(v4 + 280) = v6;
  *(v4 + 288) = *(v6 - 8);
  *(v4 + 296) = swift_task_alloc();
  *(v4 + 304) = swift_task_alloc();
  sub_22B6F0AD4(&qword_27D8CEB28, &qword_22B7FAF90);
  *(v4 + 312) = swift_task_alloc();
  *(v4 + 320) = swift_task_alloc();
  v7 = sub_22B7DA828();
  *(v4 + 328) = v7;
  *(v4 + 336) = *(v7 - 8);
  *(v4 + 344) = swift_task_alloc();
  *(v4 + 352) = swift_task_alloc();
  *(v4 + 360) = swift_task_alloc();
  *(v4 + 368) = swift_task_alloc();
  *(v4 + 376) = swift_task_alloc();
  *(v4 + 384) = swift_task_alloc();
  *(v4 + 392) = swift_task_alloc();
  *(v4 + 400) = swift_task_alloc();
  *(v4 + 408) = swift_task_alloc();
  *(v4 + 416) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B74E6A8, 0, 0);
}

uint64_t sub_22B74E6A8()
{
  v1 = [objc_opt_self() sharedInstance];
  if (!v1)
  {
    __break(1u);
    return MEMORY[0x2822009F8](v1, v2, v3);
  }

  v4 = v1;
  v5 = sub_22B7DB678();
  v6 = [v4 transferForGUID_];
  v0[53] = v6;

  if (v6)
  {
    v0[54] = sub_22B7DBA18();
    v0[55] = sub_22B7DBA08();
    v7 = sub_22B7DB9C8();
    v9 = v8;
    v1 = sub_22B74E930;
    v2 = v7;
    v3 = v9;

    return MEMORY[0x2822009F8](v1, v2, v3);
  }

  v10 = v0[23];
  sub_22B752C04();
  v11 = swift_allocError();
  *v12 = 1;
  *v10 = v11;
  sub_22B6F0AD4(&qword_27D8CEB10, &qword_22B7FAF70);
  swift_storeEnumTagMultiPayload();

  v13 = v0[1];

  return v13();
}

uint64_t sub_22B74E930()
{
  v1 = *(v0 + 424);

  *(v0 + 448) = [v1 localURL];

  return MEMORY[0x2822009F8](sub_22B74E9B8, 0, 0);
}

uint64_t sub_22B74E9B8(uint64_t a1)
{
  v2 = v1[56];
  if (v2)
  {
    v4 = v1[51];
    v3 = v1[52];
    v5 = v1[41];
    v6 = v1[42];
    v7 = v1[40];
    v8 = v1[35];
    v9 = v1[36];
    sub_22B7DA7D8();

    v10 = *(v6 + 16);
    v1[57] = v10;
    v1[58] = (v6 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v10(v4, v3, v5);
    (*(v9 + 56))(v7, 1, 1, v8);
    v1[59] = sub_22B7DBA08();
    v12 = sub_22B7DB9C8();

    return MEMORY[0x2822009F8](sub_22B74EC48, v12, v11);
  }

  else
  {
    v13 = v1[53];
    v14 = v1[23];
    sub_22B752C04();
    v15 = swift_allocError();
    *v16 = 2;

    *v14 = v15;
    sub_22B6F0AD4(&qword_27D8CEB10, &qword_22B7FAF70);
    swift_storeEnumTagMultiPayload();

    v17 = v1[1];

    return v17();
  }
}

uint64_t sub_22B74EC48()
{
  v1 = *(v0 + 424);

  *(v0 + 480) = [v1 type];

  return MEMORY[0x2822009F8](sub_22B74ECD0, 0, 0);
}

uint64_t sub_22B74ECD0(uint64_t a1)
{
  v2 = *(v1 + 480);
  if (v2)
  {
    v4 = *(v1 + 312);
    v3 = *(v1 + 320);
    v5 = *(v1 + 280);
    v6 = *(v1 + 288);
    sub_22B7DB6A8();

    sub_22B7DB258();
    sub_22B752C58(v4, v3);
    if ((*(v6 + 48))(v3, 1, v5))
    {
      LOBYTE(v2) = 0;
    }

    else
    {
      v8 = *(v1 + 296);
      v7 = *(v1 + 304);
      v9 = *(v1 + 280);
      v10 = *(v1 + 288);
      (*(v10 + 16))(v7, *(v1 + 320), v9);
      sub_22B7DB228();
      LOBYTE(v2) = sub_22B7DB238();
      v11 = *(v10 + 8);
      v11(v8, v9);
      v11(v7, v9);
    }
  }

  *(v1 + 553) = v2 & 1;
  *(v1 + 488) = sub_22B7DBA08();
  v13 = sub_22B7DB9C8();

  return MEMORY[0x2822009F8](sub_22B74EE50, v13, v12);
}

uint64_t sub_22B74EE50()
{
  v1 = *(v0 + 424);

  *(v0 + 554) = [v1 isGenmoji];

  return MEMORY[0x2822009F8](sub_22B74EED0, 0, 0);
}

uint64_t sub_22B74EED0(uint64_t a1)
{
  if (*(v1 + 554))
  {
    v2 = 5;
LABEL_7:
    v46 = v2;
    v5 = *(v1 + 424);
    v6 = *(v1 + 408);
    v7 = *(v1 + 328);
    v8 = *(v1 + 336);
    v47 = *(v1 + 416);
    v48 = *(v1 + 320);
    v9 = *(v1 + 552);
    v11 = *(v1 + 192);
    v10 = *(v1 + 200);
    v12 = *(v1 + 184);
    sub_22B752C04();
    v13 = swift_allocError();
    *v14 = v46;
    sub_22B750934(v13, v9, v6, v11, v10, v12);

    v15 = *(v8 + 8);
    v15(v6, v7);
    v15(v47, v7);

    sub_22B4D0D64(v48, &qword_27D8CEB28, &qword_22B7FAF90);

    v16 = *(v1 + 8);

    return v16();
  }

  if (*(v1 + 553) != 1)
  {
    v2 = 3;
    goto LABEL_7;
  }

  v3 = sub_22B7DA788();
  v4 = IMFileURLIsActuallyAnimated();

  if (v4)
  {
    v2 = 4;
    goto LABEL_7;
  }

  sub_22B7DA7F8();
  v19 = v18;
  v20 = sub_22B7DB678();
  v19, v21, v22, v23, v24, v25, v26, v27, v44, v45;
  LODWORD(v19) = [v20 im_isLivePhoto];

  if (v19)
  {
    if (qword_27D8CCC38 != -1)
    {
      swift_once();
    }

    v28 = qword_27D8CEB08;
    v29 = swift_task_alloc();
    *(v1 + 496) = v29;
    *v29 = v1;
    v29[1] = sub_22B74F3B4;
    v30 = *(v1 + 424);
    v31 = *(v1 + 400);

    return sub_22B751014(v31, v30, v28);
  }

  else
  {
    v32 = *(v1 + 424);
    IMPreviewConstraintsZero();
    v33 = [v32 isSticker];
    v34 = [v32 isAdaptiveImageGlyph];
    v35 = [objc_opt_self() sharedInstance];
    *(v1 + 528) = v35;
    if (v35)
    {
      v36 = v35;
      v37 = v1 + 16;
      v38 = *(v1 + 224);
      v39 = sub_22B7DA788();
      *(v1 + 536) = v39;
      *(v1 + 16) = v1;
      *(v1 + 56) = v38;
      *(v1 + 24) = sub_22B74FA00;
      v40 = swift_continuation_init();
      v41 = sub_22B6F0AD4(&qword_27D8CEB30, &unk_22B7FAF98);
      *(v1 + 144) = xmmword_22B7FAF50;
      v42 = v1 + 144;
      *(v42 - 8) = v41;
      *(v42 - 64) = MEMORY[0x277D85DD0];
      *(v42 - 56) = 1107296256;
      *(v42 - 48) = sub_22B751B84;
      *(v42 - 40) = &unk_283F1DCE8;
      *(v42 - 32) = v40;
      *(v42 + 16) = xmmword_22B7F85B0;
      *(v42 + 32) = v33;
      *(v42 + 33) = 0;
      *(v42 + 34) = v34;
      [v36 generateSafeRender:v39 constraints:v42 completionBlock:?];
      v43 = v37;
    }

    else
    {
      v43 = (*(*(v1 + 336) + 8))(*(v1 + 408), *(v1 + 328));
      __break(1u);
    }

    return MEMORY[0x282200938](v43);
  }
}

uint64_t sub_22B74F3B4()
{
  v2 = *v1;
  *(*v1 + 504) = v0;

  if (v0)
  {
    v3 = sub_22B750204;
  }

  else
  {
    v4 = v2[51];
    v5 = v2[41];
    v6 = v2[42];
    v7 = *(v6 + 8);
    v2[64] = v7;
    v2[65] = (v6 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v7(v4, v5);
    v3 = sub_22B74F4F0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_22B74F4F0()
{
  v74 = v0;
  v1 = *(v0 + 456);
  v3 = *(v0 + 392);
  v2 = *(v0 + 400);
  v5 = *(v0 + 376);
  v4 = *(v0 + 384);
  v6 = *(v0 + 328);
  sub_22B7DA7C8();
  v1(v4, v3, v6);
  v1(v5, v2, v6);

  sub_22B7DAEA8();
  if (qword_27D8CCC30 != -1)
  {
    swift_once();
  }

  v7 = *(v0 + 456);
  v8 = *(v0 + 392);
  v9 = *(v0 + 400);
  v11 = *(v0 + 360);
  v10 = *(v0 + 368);
  v12 = *(v0 + 328);
  v13 = *(v0 + 200);
  v14 = sub_22B7DB2B8();
  sub_22B4CFA74(v14, qword_27D8CEAF0);
  v7(v10, v9, v12);
  v7(v11, v8, v12);

  v15 = sub_22B7DB298();
  LOBYTE(v9) = sub_22B7DBCB8();
  v13, v16, v17, v18, v19, v20, v21, v22, v60, v63;
  v72 = v9;
  v23 = os_log_type_enabled(v15, v9);
  v24 = *(v0 + 512);
  v25 = *(v0 + 416);
  v27 = *(v0 + 392);
  v26 = *(v0 + 400);
  v28 = *(v0 + 360);
  v29 = *(v0 + 368);
  v30 = *(v0 + 328);
  if (v23)
  {
    v70 = *(v0 + 400);
    v71 = *(v0 + 416);
    v32 = *(v0 + 192);
    v31 = *(v0 + 200);
    v69 = *(v0 + 424);
    log = v15;
    v33 = swift_slowAlloc();
    v68 = swift_slowAlloc();
    v73 = v68;
    *v33 = 136315906;
    *(v33 + 4) = sub_22B4CFAAC(0xD000000000000031, 0x800000022B80FDC0, &v73);
    *(v33 + 12) = 2080;
    *(v33 + 14) = sub_22B4CFAAC(v32, v31, &v73);
    *(v33 + 22) = 2080;
    sub_22B75332C(&qword_27D8CEB40, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
    v34 = sub_22B7DC4E8();
    v66 = v27;
    v36 = v35;
    v24(v29, v30);
    v37 = sub_22B4CFAAC(v34, v36, &v73);
    v36, v38, v39, v40, v41, v42, v43, v44, v61, v64;
    *(v33 + 24) = v37;
    *(v33 + 32) = 2080;
    v45 = sub_22B7DC4E8();
    v47 = v46;
    v24(v28, v30);
    v48 = sub_22B4CFAAC(v45, v47, &v73);
    v47, v49, v50, v51, v52, v53, v54, v55, v62, v65;
    *(v33 + 34) = v48;
    _os_log_impl(&dword_22B4CC000, log, v72, "%s compressed files for %s, dataURL: %s, mirror URL: %s", v33, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x231898D60](v68, -1, -1);
    MEMORY[0x231898D60](v33, -1, -1);

    v24(v66, v30);
    v24(v70, v30);
    v56 = v71;
  }

  else
  {

    v24(v28, v30);
    v24(v29, v30);
    v24(v27, v30);
    v24(v26, v30);
    v56 = v25;
  }

  v24(v56, v30);
  v57 = *(v0 + 320);
  (*(*(v0 + 256) + 32))(*(v0 + 184), *(v0 + 272), *(v0 + 248));
  sub_22B6F0AD4(&qword_27D8CEB10, &qword_22B7FAF70);
  swift_storeEnumTagMultiPayload();
  sub_22B4D0D64(v57, &qword_27D8CEB28, &qword_22B7FAF90);

  v58 = *(v0 + 8);

  return v58();
}

uint64_t sub_22B74FA00()
{
  v1 = *(*v0 + 48);
  *(*v0 + 544) = v1;
  if (v1)
  {
    v2 = sub_22B750590;
  }

  else
  {
    v2 = sub_22B74FB10;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22B74FB10()
{
  v82 = v0;
  v1 = *(v0 + 536);
  v2 = *(v0 + 528);
  v3 = *(v0 + 240);
  v4 = *(v0 + 216);
  v5 = *(v0 + 208);
  sub_22B6FC80C(*(v0 + 224), v4, &qword_27D8CEB20, &unk_22B7FAF80);
  v6 = *v4;
  sub_22B6FC80C(&v4[*(v5 + 48)], v3, &qword_27D8CFC90, &unk_22B7FE140);

  if (v6 != 1)
  {
    goto LABEL_4;
  }

  v7 = *(v0 + 328);
  v8 = *(v0 + 336);
  v9 = *(v0 + 232);
  sub_22B4D7E58(*(v0 + 240), v9, &qword_27D8CFC90, &unk_22B7FE140);
  if ((*(v8 + 48))(v9, 1, v7) == 1)
  {
    sub_22B4D0D64(*(v0 + 232), &qword_27D8CFC90, &unk_22B7FE140);
LABEL_4:
    v76 = *(v0 + 424);
    v78 = *(v0 + 416);
    v10 = *(v0 + 408);
    v12 = *(v0 + 328);
    v11 = *(v0 + 336);
    v80 = *(v0 + 320);
    v13 = *(v0 + 240);
    v14 = *(v0 + 552);
    v16 = *(v0 + 192);
    v15 = *(v0 + 200);
    v17 = *(v0 + 184);
    sub_22B752C04();
    v18 = swift_allocError();
    *v19 = 0;
    sub_22B750934(v18, v14, v10, v16, v15, v17);

    sub_22B4D0D64(v13, &qword_27D8CFC90, &unk_22B7FE140);
    v20 = *(v11 + 8);
    v20(v10, v12);
    v20(v78, v12);
    v21 = v18;
    v22 = v80;

    goto LABEL_11;
  }

  v23 = *(v0 + 456);
  v24 = *(v0 + 416);
  v25 = *(v0 + 376);
  v26 = *(v0 + 352);
  v28 = *(v0 + 328);
  v27 = *(v0 + 336);
  v29 = *(v0 + 232);
  v73 = *(v0 + 384);
  v79 = *(v27 + 8);
  v79(*(v0 + 408), v28);
  (*(v27 + 32))(v26, v29, v28);
  sub_22B75332C(&qword_27D8CEB38, MEMORY[0x277CC9260], MEMORY[0x277CC9278]);
  v30 = sub_22B7DB658() ^ 1;
  v23(v73, v24, v28);
  v23(v25, v26, v28);

  sub_22B7DAEA8();
  if (qword_27D8CCC30 != -1)
  {
    swift_once();
  }

  v31 = *(v0 + 456);
  v32 = *(v0 + 344);
  v33 = *(v0 + 352);
  v34 = *(v0 + 328);
  v35 = *(v0 + 200);
  v36 = sub_22B7DB2B8();
  sub_22B4CFA74(v36, qword_27D8CEAF0);
  v31(v32, v33, v34);

  v37 = sub_22B7DB298();
  v38 = sub_22B7DBCB8();
  v35, v39, v40, v41, v42, v43, v44, v45, v68, v70;
  v46 = os_log_type_enabled(v37, v38);
  v47 = *(v0 + 416);
  v48 = *(v0 + 344);
  v49 = *(v0 + 352);
  v50 = *(v0 + 328);
  v51 = *(v0 + 240);
  if (v46)
  {
    v77 = *(v0 + 416);
    v53 = *(v0 + 192);
    v52 = *(v0 + 200);
    v74 = *(v0 + 424);
    v75 = *(v0 + 352);
    v54 = swift_slowAlloc();
    v72 = swift_slowAlloc();
    v81 = v72;
    *v54 = 136315906;
    *(v54 + 4) = sub_22B4CFAAC(0xD000000000000031, 0x800000022B80FDC0, &v81);
    *(v54 + 12) = 2080;
    *(v54 + 14) = sub_22B4CFAAC(v53, v52, &v81);
    *(v54 + 22) = 1024;
    *(v54 + 24) = v30 & 1;
    *(v54 + 28) = 2080;
    sub_22B75332C(&qword_27D8CEB40, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
    v55 = sub_22B7DC4E8();
    v57 = v56;
    v79(v48, v50);
    v58 = sub_22B4CFAAC(v55, v57, &v81);
    v57, v59, v60, v61, v62, v63, v64, v65, v69, v71;
    *(v54 + 30) = v58;
    _os_log_impl(&dword_22B4CC000, v37, v38, "%s generated safe render for %s, removedOnCompletion: %{BOOL}d, dataURL: %s", v54, 0x26u);
    swift_arrayDestroy();
    MEMORY[0x231898D60](v72, -1, -1);
    MEMORY[0x231898D60](v54, -1, -1);

    v79(v75, v50);
    sub_22B4D0D64(v51, &qword_27D8CFC90, &unk_22B7FE140);
    v79(v77, v50);
  }

  else
  {

    v79(v48, v50);
    v79(v49, v50);
    sub_22B4D0D64(v51, &qword_27D8CFC90, &unk_22B7FE140);
    v79(v47, v50);
  }

  v22 = *(v0 + 320);
  (*(*(v0 + 256) + 32))(*(v0 + 184), *(v0 + 264), *(v0 + 248));
  sub_22B6F0AD4(&qword_27D8CEB10, &qword_22B7FAF70);
  swift_storeEnumTagMultiPayload();
LABEL_11:
  sub_22B4D0D64(v22, &qword_27D8CEB28, &qword_22B7FAF90);

  v66 = *(v0 + 8);

  return v66();
}

uint64_t sub_22B750204()
{
  v35 = v0;
  if (qword_27D8CCC30 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 504);
  v2 = *(v0 + 200);
  v3 = sub_22B7DB2B8();
  sub_22B4CFA74(v3, qword_27D8CEAF0);

  v4 = v1;
  v5 = sub_22B7DB298();
  v6 = sub_22B7DBC98();
  v2, v7, v8, v9, v10, v11, v12, v13, v32, v33;

  if (os_log_type_enabled(v5, v6))
  {
    v14 = *(v0 + 504);
    v16 = *(v0 + 192);
    v15 = *(v0 + 200);
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v34 = v19;
    *v17 = 136315650;
    *(v17 + 4) = sub_22B4CFAAC(0xD000000000000031, 0x800000022B80FDC0, &v34);
    *(v17 + 12) = 2080;
    *(v17 + 14) = sub_22B4CFAAC(v16, v15, &v34);
    *(v17 + 22) = 2112;
    v20 = v14;
    v21 = _swift_stdlib_bridgeErrorToNSError();
    *(v17 + 24) = v21;
    *v18 = v21;
    _os_log_impl(&dword_22B4CC000, v5, v6, "%s caught error while compressing multiple files for guid: %s. Error: %@", v17, 0x20u);
    sub_22B4D0D64(v18, &unk_27D8CEC60, &qword_22B7F9E20);
    MEMORY[0x231898D60](v18, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x231898D60](v19, -1, -1);
    MEMORY[0x231898D60](v17, -1, -1);
  }

  v22 = *(v0 + 504);
  v23 = *(v0 + 416);
  v24 = *(v0 + 424);
  v25 = *(v0 + 408);
  v26 = *(v0 + 328);
  v27 = *(v0 + 336);
  v28 = *(v0 + 320);
  sub_22B750934(v22, *(v0 + 552), v25, *(v0 + 192), *(v0 + 200), *(v0 + 184));

  v29 = *(v27 + 8);
  v29(v25, v26);
  v29(v23, v26);
  sub_22B4D0D64(v28, &qword_27D8CEB28, &qword_22B7FAF90);

  v30 = *(v0 + 8);

  return v30();
}

uint64_t sub_22B750590(uint64_t a1)
{
  v38 = v1;
  v2 = *(v1 + 536);
  v3 = *(v1 + 528);
  swift_willThrow();

  if (qword_27D8CCC30 != -1)
  {
    swift_once();
  }

  v4 = *(v1 + 544);
  v5 = *(v1 + 200);
  v6 = sub_22B7DB2B8();
  sub_22B4CFA74(v6, qword_27D8CEAF0);

  v7 = v4;
  v8 = sub_22B7DB298();
  v9 = sub_22B7DBC98();
  v5, v10, v11, v12, v13, v14, v15, v16, v35, v36;

  if (os_log_type_enabled(v8, v9))
  {
    v17 = *(v1 + 544);
    v19 = *(v1 + 192);
    v18 = *(v1 + 200);
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v37[0] = v22;
    *v20 = 136315650;
    *(v20 + 4) = sub_22B4CFAAC(0xD000000000000031, 0x800000022B80FDC0, v37);
    *(v20 + 12) = 2080;
    *(v20 + 14) = sub_22B4CFAAC(v19, v18, v37);
    *(v20 + 22) = 2112;
    v23 = v17;
    v24 = _swift_stdlib_bridgeErrorToNSError();
    *(v20 + 24) = v24;
    *v21 = v24;
    _os_log_impl(&dword_22B4CC000, v8, v9, "%s caught error while generating safe render for guid: %s. Error: %@", v20, 0x20u);
    sub_22B4D0D64(v21, &unk_27D8CEC60, &qword_22B7F9E20);
    MEMORY[0x231898D60](v21, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x231898D60](v22, -1, -1);
    MEMORY[0x231898D60](v20, -1, -1);
  }

  v25 = *(v1 + 544);
  v26 = *(v1 + 416);
  v27 = *(v1 + 424);
  v28 = *(v1 + 408);
  v29 = *(v1 + 328);
  v30 = *(v1 + 336);
  v31 = *(v1 + 320);
  sub_22B750934(v25, *(v1 + 552), v28, *(v1 + 192), *(v1 + 200), *(v1 + 184));

  v32 = *(v30 + 8);
  v32(v28, v29);
  v32(v26, v29);
  sub_22B4D0D64(v31, &qword_27D8CEB28, &qword_22B7FAF90);

  v33 = *(v1 + 8);

  return v33();
}

id sub_22B750934@<X0>(void *a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, void *a4@<X3>, IMDScheduledMessageCoordinator *a5@<X4>, void *a6@<X8>)
{
  v85 = a1;
  v11 = sub_22B7DA828();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v84 = &v77 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v77 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v77 - v18;
  v20 = sub_22B7DAEC8();
  v21 = MEMORY[0x28223BE20](v20);
  v24 = &v77 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v81 = v22;
    v82 = v21;
    v83 = a6;
    v79 = v12;
    v25 = *(v12 + 16);
    v25(v19, a3, v11);
    v25(v17, a3, v11);

    v80 = v24;
    v78 = a4;
    sub_22B7DAEA8();
    v26 = a5;
    if (qword_27D8CCC30 != -1)
    {
      swift_once();
    }

    v27 = sub_22B7DB2B8();
    sub_22B4CFA74(v27, qword_27D8CEAF0);
    v28 = v84;
    v25(v84, a3, v11);

    v29 = v85;
    v30 = v85;
    v31 = sub_22B7DB298();
    v32 = sub_22B7DBCB8();
    a5, v33, v34, v35, v36, v37, v38, v39, v77, v78;

    if (os_log_type_enabled(v31, v32))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v86 = v42;
      *v40 = 136315906;
      *(v40 + 4) = sub_22B4CFAAC(0xD000000000000031, 0x800000022B80FDC0, &v86);
      *(v40 + 12) = 2080;
      *(v40 + 14) = sub_22B4CFAAC(v78, v26, &v86);
      *(v40 + 22) = 2080;
      sub_22B75332C(&qword_27D8CEB40, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
      v43 = sub_22B7DC4E8();
      v45 = v44;
      (*(v79 + 8))(v28, v11);
      v46 = sub_22B4CFAAC(v43, v45, &v86);
      v45, v47, v48, v49, v50, v51, v52, v53, v77, v78;
      *(v40 + 24) = v46;
      *(v40 + 32) = 2112;
      v54 = v29;
      v55 = _swift_stdlib_bridgeErrorToNSError();
      *(v40 + 34) = v55;
      *v41 = v55;
      _os_log_impl(&dword_22B4CC000, v31, v32, "%s: Did not generate a safe render file for: %s, using the original file: %s. Error: %@", v40, 0x2Au);
      sub_22B4D0D64(v41, &unk_27D8CEC60, &qword_22B7F9E20);
      MEMORY[0x231898D60](v41, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x231898D60](v42, -1, -1);
      MEMORY[0x231898D60](v40, -1, -1);
    }

    else
    {

      (*(v79 + 8))(v28, v11);
    }

    (*(v81 + 32))(v83, v80, v82);
    sub_22B6F0AD4(&qword_27D8CEB10, &qword_22B7FAF70);
    return swift_storeEnumTagMultiPayload();
  }

  else
  {
    v56 = a5;
    if (qword_27D8CCC30 != -1)
    {
      swift_once();
    }

    v57 = sub_22B7DB2B8();
    sub_22B4CFA74(v57, qword_27D8CEAF0);

    v58 = v85;
    v59 = v85;
    v60 = sub_22B7DB298();
    v61 = sub_22B7DBC98();
    v56, v62, v63, v64, v65, v66, v67, v68, v77, v78;

    if (os_log_type_enabled(v60, v61))
    {
      v69 = swift_slowAlloc();
      v70 = a6;
      v71 = swift_slowAlloc();
      v72 = swift_slowAlloc();
      v86 = v72;
      *v69 = 136315650;
      *(v69 + 4) = sub_22B4CFAAC(0xD000000000000031, 0x800000022B80FDC0, &v86);
      *(v69 + 12) = 2080;
      *(v69 + 14) = sub_22B4CFAAC(a4, v56, &v86);
      *(v69 + 22) = 2112;
      v73 = v58;
      v74 = _swift_stdlib_bridgeErrorToNSError();
      *(v69 + 24) = v74;
      *v71 = v74;
      _os_log_impl(&dword_22B4CC000, v60, v61, "%s: Did not generate a safe render file for: %s. Error: %@", v69, 0x20u);
      sub_22B4D0D64(v71, &unk_27D8CEC60, &qword_22B7F9E20);
      v75 = v71;
      a6 = v70;
      MEMORY[0x231898D60](v75, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x231898D60](v72, -1, -1);
      MEMORY[0x231898D60](v69, -1, -1);
    }

    *a6 = v58;
    sub_22B6F0AD4(&qword_27D8CEB10, &qword_22B7FAF70);
    swift_storeEnumTagMultiPayload();

    return v58;
  }
}

uint64_t sub_22B751014(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = sub_22B7DA828();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v3[8] = swift_task_alloc();
  v3[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B7510F0, 0, 0);
}

uint64_t sub_22B7510F0()
{
  *(v0 + 80) = sub_22B7DBA18();
  *(v0 + 88) = sub_22B7DBA08();
  v2 = sub_22B7DB9C8();

  return MEMORY[0x2822009F8](sub_22B751188, v2, v1);
}

uint64_t sub_22B751188()
{
  v1 = *(v0 + 24);

  *(v0 + 96) = [v1 localURL];

  return MEMORY[0x2822009F8](sub_22B751210, 0, 0);
}

uint64_t sub_22B751210(uint64_t a1)
{
  v2 = v1[12];
  if (v2)
  {
    v3 = v1[9];
    v4 = v1[8];
    v5 = v1[5];
    v6 = v1[6];
    sub_22B7DA7D8();

    (*(v6 + 32))(v3, v4, v5);
    v1[13] = sub_22B7DBA08();
    v8 = sub_22B7DB9C8();

    return MEMORY[0x2822009F8](sub_22B751378, v8, v7);
  }

  else
  {
    sub_22B752C04();
    swift_allocError();
    *v9 = 6;
    swift_willThrow();

    v10 = v1[1];

    return v10();
  }
}

uint64_t sub_22B751378()
{
  v1 = *(v0 + 24);

  *(v0 + 112) = [v1 guid];

  return MEMORY[0x2822009F8](sub_22B751400, 0, 0);
}

uint64_t sub_22B751400()
{
  v56 = v0;
  v1 = v0[14];
  if (v1)
  {
    v2 = sub_22B7DB6A8();
    v4 = v3;

    v0[15] = v4;
    if (qword_27D8CCC30 != -1)
    {
      swift_once();
    }

    v54 = v4;
    v5 = v0[9];
    v6 = v0[6];
    v7 = v0[7];
    v8 = v0[5];
    v9 = sub_22B7DB2B8();
    sub_22B4CFA74(v9, qword_27D8CEAF0);
    (*(v6 + 16))(v7, v5, v8);
    v10 = sub_22B7DB298();
    v11 = sub_22B7DBCB8();
    v12 = os_log_type_enabled(v10, v11);
    v14 = v0[6];
    v13 = v0[7];
    v15 = v0[5];
    if (v12)
    {
      v53 = v2;
      v16 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v55[0] = v52;
      *v16 = 136315394;
      *(v16 + 4) = sub_22B4CFAAC(0xD00000000000001DLL, 0x800000022B80FE40, v55);
      *(v16 + 12) = 2080;
      sub_22B75332C(&qword_27D8CEB40, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
      v17 = sub_22B7DC4E8();
      v19 = v18;
      v20 = *(v14 + 8);
      v20(v13, v15);
      v21 = sub_22B4CFAAC(v17, v19, v55);
      v19, v22, v23, v24, v25, v26, v27, v28, v50, v52;
      *(v16 + 14) = v21;
      _os_log_impl(&dword_22B4CC000, v10, v11, "%s: local URL is %s", v16, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x231898D60](v51, -1, -1);
      v29 = v16;
      v2 = v53;
      MEMORY[0x231898D60](v29, -1, -1);
    }

    else
    {

      v20 = *(v14 + 8);
      v20(v13, v15);
    }

    v0[16] = v20;

    v33 = sub_22B7DB298();
    v34 = sub_22B7DBCB8();
    v54, v35, v36, v37, v38, v39, v40, v41, v50, v51;
    if (os_log_type_enabled(v33, v34))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v55[0] = v43;
      *v42 = 136315394;
      *(v42 + 4) = sub_22B4CFAAC(0xD00000000000001DLL, 0x800000022B80FE40, v55);
      *(v42 + 12) = 2080;
      *(v42 + 14) = sub_22B4CFAAC(v2, v54, v55);
      _os_log_impl(&dword_22B4CC000, v33, v34, "%s: guid is %s", v42, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x231898D60](v43, -1, -1);
      MEMORY[0x231898D60](v42, -1, -1);
    }

    v44 = v0[9];
    v45 = v0[4];
    v46 = swift_task_alloc();
    v0[17] = v46;
    v46[2] = v45;
    v46[3] = v2;
    v46[4] = v54;
    v46[5] = v44;
    v47 = swift_task_alloc();
    v0[18] = v47;
    *v47 = v0;
    v47[1] = sub_22B751900;
    v48 = v0[5];
    v49 = v0[2];

    return MEMORY[0x2822008A0](v49, 0, 0, 0xD00000000000001DLL, 0x800000022B80FE40, sub_22B753240, v46, v48);
  }

  else
  {
    (*(v0[6] + 8))(v0[9], v0[5]);
    sub_22B752C04();
    swift_allocError();
    *v30 = 6;
    swift_willThrow();

    v31 = v0[1];

    return v31();
  }
}

uint64_t sub_22B751900()
{
  v2 = *v1;
  v13 = *v1;
  (*v1)[19] = v0;

  if (v0)
  {
    v10 = sub_22B751AC8;
  }

  else
  {
    v2[15], v3, v4, v5, v6, v7, v8, v9, v12, v13;

    v10 = sub_22B751A28;
  }

  return MEMORY[0x2822009F8](v10, 0, 0);
}

uint64_t sub_22B751A28()
{
  (*(v0 + 128))(*(v0 + 72), *(v0 + 40));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22B751AC8(uint64_t a1, const char *a2, uint64_t a3, void *a4, uint64_t a5, void *a6, void *a7, void *a8)
{
  v9 = *(v8 + 128);
  v10 = *(v8 + 72);
  v11 = *(v8 + 40);
  *(v8 + 120), a2, a3, a4, a5, a6, a7, a8, v14, v15;

  v9(v10, v11);

  v12 = *(v8 + 8);

  return v12();
}

uint64_t sub_22B751B84(uint64_t a1, char a2, uint64_t a3, void *a4)
{
  v8 = sub_22B6F0AD4(&qword_27D8CFC90, &unk_22B7FE140);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v21 - v9;
  v11 = sub_22B6F0AD4(&qword_27D8CEB20, &unk_22B7FAF80);
  MEMORY[0x28223BE20](v11);
  v13 = &v21 - v12;
  v14 = *sub_22B4D2BCC((a1 + 32), *(a1 + 56));
  if (a4)
  {
    sub_22B6F0AD4(&unk_27D8CD800, &qword_22B7FA0C0);
    v15 = swift_allocError();
    *v16 = a4;
    v17 = a4;

    return MEMORY[0x282200958](v14, v15);
  }

  else
  {
    *v13 = a2;
    if (a3)
    {
      sub_22B7DA7D8();
      v18 = sub_22B7DA828();
      (*(*(v18 - 8) + 56))(v10, 0, 1, v18);
    }

    else
    {
      v19 = sub_22B7DA828();
      (*(*(v19 - 8) + 56))(v10, 1, 1, v19);
    }

    sub_22B6FC80C(v10, &v13[*(v11 + 48)], &qword_27D8CFC90, &unk_22B7FE140);
    sub_22B6FC80C(v13, *(*(v14 + 64) + 40), &qword_27D8CEB20, &unk_22B7FAF80);
    return swift_continuation_throwingResume();
  }
}

uint64_t sub_22B751DE0(uint64_t a1, char a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_22B751E88;

  return sub_22B74D8E0(a1, a2);
}

uint64_t sub_22B751E88(uint64_t a1, char a2)
{
  v7 = *v2;

  v5 = *(v7 + 8);

  return v5(a1, a2 & 1);
}

uint64_t sub_22B751F8C(uint64_t a1, char a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_22B753374;

  return sub_22B74DD54(a1, a2);
}

uint64_t sub_22B752034(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_22B6F0D94;

  return sub_22B74E3D4(a1, a2, a3, a4);
}

uint64_t sub_22B7520EC()
{
  v7 = sub_22B7DBD48();
  v0 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v2 = v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_22B7DBD38();
  MEMORY[0x28223BE20](v3);
  v4 = sub_22B7DB398();
  MEMORY[0x28223BE20](v4 - 8);
  v6[1] = sub_22B74D6EC();
  sub_22B7DACD8();
  v8 = MEMORY[0x277D84F90];
  sub_22B75332C(&unk_28141F220, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  sub_22B6F0AD4(&qword_27D8CEA10, &qword_22B7F9DC0);
  sub_22B4D1110(&qword_28141F2C0, &qword_27D8CEA10, &qword_22B7F9DC0);
  sub_22B7DC138();
  (*(v0 + 104))(v2, *MEMORY[0x277D85260], v7);
  result = sub_22B7DBD88();
  qword_27D8CEB08 = result;
  return result;
}

uint64_t sub_22B75233C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v30 = a3;
  v31 = a4;
  v29 = a2;
  v35 = sub_22B7DB348();
  v37 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v33 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_22B7DB398();
  v34 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v32 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22B6F0AD4(&qword_27D8CEB50, qword_22B7FB100);
  v28 = v9;
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v27 - v11;
  v13 = sub_22B7DA828();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v16, a5, v13);
  (*(v10 + 16))(v12, a1, v9);
  v17 = (*(v14 + 80) + 40) & ~*(v14 + 80);
  v18 = (v15 + *(v10 + 80) + v17) & ~*(v10 + 80);
  v19 = swift_allocObject();
  v21 = v29;
  v20 = v30;
  *(v19 + 2) = v29;
  *(v19 + 3) = v20;
  *(v19 + 4) = v31;
  (*(v14 + 32))(&v19[v17], v16, v13);
  (*(v10 + 32))(&v19[v18], v12, v28);
  aBlock[4] = sub_22B75324C;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22B4D22C0;
  aBlock[3] = &unk_283F1DDC8;
  v22 = _Block_copy(aBlock);
  v21;

  v23 = v32;
  sub_22B7DACD8();
  v38 = MEMORY[0x277D84F90];
  sub_22B75332C(&qword_28141F340, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  sub_22B6F0AD4(&unk_27D8CF580, &unk_22B7FB880);
  sub_22B4D1110(&qword_28141F2E0, &unk_27D8CF580, &unk_22B7FB880);
  v24 = v33;
  v25 = v35;
  sub_22B7DC138();
  MEMORY[0x2318956F0](0, v23, v24, v22);
  _Block_release(v22);
  (*(v37 + 8))(v24, v25);
  (*(v34 + 8))(v23, v36);
}

uint64_t sub_22B7527C8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_22B7DA828();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = v14 - v11;
  sub_22B752958(a2, a3, v14 - v11);
  (*(v7 + 16))(v10, v12, v6);
  sub_22B6F0AD4(&qword_27D8CEB50, qword_22B7FB100);
  sub_22B7DB9E8();
  return (*(v7 + 8))(v12, v6);
}

uint64_t sub_22B752958@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v52 = *MEMORY[0x277D85DE8];
  v49 = sub_22B7DA828();
  v6 = *(v49 - 1);
  MEMORY[0x28223BE20](v49);
  v8 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22B7DA7C8();
  v9 = NSTemporaryDirectory();
  v10 = sub_22B7DB6A8();
  v12 = v11;

  v50 = a1;
  v51 = a2;

  MEMORY[0x231895140](1918984494, 0xE400000000000000);
  v13 = v50;
  v14 = v51;
  v50 = v10;
  v51 = v12;

  MEMORY[0x231895140](v13, v14);
  v12, v15, v16, v17, v18, v19, v20, v21, v49, v50;
  v14, v22, v23, v24, v25, v26, v27, v28, v49, v50;
  v29 = v51;
  sub_22B7DA768();
  v29, v30, v31, v32, v33, v34, v35, v36, v49, v50;
  v37 = [objc_opt_self() defaultManager];
  v38 = sub_22B7DA788();
  v39 = sub_22B7DA788();
  v50 = 0;
  LOBYTE(v10) = [v37 __im_createArchiveOfDirectoryAtURL_withOutputURL_archiveFilePermissions_withError_];

  if (v10)
  {
    v40 = *(v6 + 8);
    v41 = v50;
    return v40(v8, v49);
  }

  else
  {
    v43 = v50;
    v44 = sub_22B7DA6F8();

    swift_willThrow();
    sub_22B752C04();
    swift_allocError();
    *v45 = 6;
    swift_willThrow();

    v46 = *(v6 + 8);
    v47 = a3;
    v48 = v49;
    v46(v47, v49);
    return v46(v8, v48);
  }
}

unint64_t sub_22B752C04()
{
  result = qword_27D8CEB18;
  if (!qword_27D8CEB18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8CEB18);
  }

  return result;
}

uint64_t sub_22B752C58(uint64_t a1, uint64_t a2)
{
  v4 = sub_22B6F0AD4(&qword_27D8CEB28, &qword_22B7FAF90);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t dispatch thunk of IntentFileSafeRenderProvider.generateSafeRenderFiles(for:useOriginalOnFailure:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 80) + **(*v2 + 80));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_22B751E88;

  return v8(a1, a2);
}

{
  v8 = (*(*v2 + 88) + **(*v2 + 88));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_22B753374;

  return v8(a1, a2);
}

uint64_t dispatch thunk of IntentFileSafeRenderProvider.generateSafeRenderFile(for:useOriginalOnFailure:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = (*(*v4 + 96) + **(*v4 + 96));
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = sub_22B6F0D94;

  return v12(a1, a2, a3, a4);
}

uint64_t getEnumTagSinglePayload for SafeRenderError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SafeRenderError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_22B7531EC()
{
  result = qword_27D8CEB48;
  if (!qword_27D8CEB48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8CEB48);
  }

  return result;
}

uint64_t sub_22B75324C()
{
  v1 = *(sub_22B7DA828() - 8);
  v2 = (*(v1 + 80) + 40) & ~*(v1 + 80);
  sub_22B6F0AD4(&qword_27D8CEB50, qword_22B7FB100);
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];

  return sub_22B7527C8(v3, v4, v5, v0 + v2);
}

uint64_t sub_22B75332C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_22B753378(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 16);
  if (v2)
  {
    sub_22B7DC388();
    v3 = v1 + 64;
    v4 = sub_22B7DC148();
    v5 = 0;
    v6 = *(v1 + 36);
    v23 = (v1 + 72);
    v24 = v1;
    while ((v4 & 0x8000000000000000) == 0 && v4 < 1 << *(v1 + 32))
    {
      v8 = v4 >> 6;
      if ((*(v3 + 8 * (v4 >> 6)) & (1 << v4)) == 0)
      {
        goto LABEL_20;
      }

      if (v6 != *(v1 + 36))
      {
        goto LABEL_21;
      }

      v25 = v5;
      v9 = *(*(v1 + 48) + 8 * v4);
      sub_22B7DC358();
      sub_22B7DC398();
      v1 = v24;
      sub_22B7DC3A8();
      sub_22B7DC368();
      v7 = 1 << *(v24 + 32);
      if (v4 >= v7)
      {
        goto LABEL_22;
      }

      v15 = *(v3 + 8 * v8);
      if ((v15 & (1 << v4)) == 0)
      {
        goto LABEL_23;
      }

      if (v6 != *(v24 + 36))
      {
        goto LABEL_24;
      }

      v16 = v15 & (-2 << (v4 & 0x3F));
      if (v16)
      {
        v7 = __clz(__rbit64(v16)) | v4 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v17 = v8 << 6;
        v18 = v8 + 1;
        v19 = &v23[8 * v8];
        while (v18 < (v7 + 63) >> 6)
        {
          v21 = *v19++;
          v20 = v21;
          v17 += 64;
          ++v18;
          if (v21)
          {
            sub_22B755198(v4, v6, 0, v10, v11, v12, v13, v14, v22, v23);
            v7 = __clz(__rbit64(v20)) + v17;
            goto LABEL_4;
          }
        }

        sub_22B755198(v4, v6, 0, v10, v11, v12, v13, v14, v22, v23);
      }

LABEL_4:
      v5 = v25 + 1;
      v4 = v7;
      if (v25 + 1 == v2)
      {
        return;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
  }
}

void IMDAttachmentStore.batchOfRecordIDsToDelete(limit:)(void *a1)
{
  v137[13] = *MEMORY[0x277D85DE8];
  sub_22B754C10(a1);
  if (v4)
  {
    v6 = v4;
    v7 = v5;
    v125 = a1;
    v130 = v1;
    if (qword_28141F368 != -1)
    {
      swift_once();
    }

    v8 = sub_22B7DB2B8();
    sub_22B4CFA74(v8, qword_281422608);
    v9 = v7;
    v10 = sub_22B7DB298();
    v11 = sub_22B7DBCB8();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *v12 = 138412290;
      *(v12 + 4) = v9;
      *v13 = v7;
      v14 = v9;
      _os_log_impl(&dword_22B4CC000, v10, v11, "Found new afterRow %@", v12, 0xCu);
      sub_22B4D0D64(v13, &unk_27D8CEC60, &qword_22B7F9E20);
      MEMORY[0x231898D60](v13, -1, -1);
      MEMORY[0x231898D60](v12, -1, -1);
    }

    v15 = [objc_opt_self() sharedInstance];
    v16 = *MEMORY[0x277D19A08];
    v17 = sub_22B7DB678();
    [v15 setValue:v9 forDomain:v16 forKey:v17];

    if (*v6->messageStore)
    {
      v136 = MEMORY[0x277D84F98];
      v137[0] = MEMORY[0x277D84F98];
      v25 = objc_autoreleasePoolPush();
      sub_22B753CE8(v6, &v136, v137);
      if (v2)
      {
        v6, v26, v27, v28, v29, v30, v31, v32, v125, v1;
        objc_autoreleasePoolPop(v25);
        __break(1u);
      }

      else
      {
        objc_autoreleasePoolPop(v25);

        v33 = sub_22B7DB298();
        v34 = sub_22B7DBCB8();
        v35 = v1;
        if (os_log_type_enabled(v33, v34))
        {
          v36 = swift_slowAlloc();
          *v36 = 134218496;
          v37 = *v6->messageStore;
          v6, v38, v39, v40, v41, v42, v43, v44, v125, v1;
          *(v36 + 4) = v37;
          v6, v45, v46, v47, v48, v49, v50, v51, v126, v131;
          *(v36 + 12) = 2048;
          swift_beginAccess();
          *(v36 + 14) = *v136->messageStore;
          *(v36 + 22) = 2048;
          swift_beginAccess();
          *(v36 + 24) = *(v137[0] + 16);
          _os_log_impl(&dword_22B4CC000, v33, v34, "Got %ld records queued for delete processing which split %ld to not delete and %ld to delete", v36, 0x20u);
          MEMORY[0x231898D60](v36, -1, -1);
        }

        else
        {

          swift_bridgeObjectRelease_n();
        }

        swift_beginAccess();
        v59 = v136;
        if (*v136->messageStore)
        {
          v60 = sub_22B7DB298();
          v61 = sub_22B7DBCB8();
          if (os_log_type_enabled(v60, v61))
          {
            v62 = swift_slowAlloc();
            *v62 = 134217984;
            *(v62 + 4) = *v59->messageStore;
            _os_log_impl(&dword_22B4CC000, v60, v61, "Clearing delete tombstones for %ld attachments still being referenced", v62, 0xCu);
            MEMORY[0x231898D60](v62, -1, -1);
          }

          sub_22B753378(v63);
          v65 = v64;
          v59, v66, v67, v68, v69, v70, v71, v72, v125, v130;
          sub_22B4D01A0(0, &qword_28141F2A8, 0x277CBC5D0);
          v73 = sub_22B7DB8F8();
          v65, v74, v75, v76, v77, v78, v79, v80, v127, v132;
          [v1 clearTombstonesForRecordIDs_];
        }

        swift_beginAccess();
        v88 = v137[0];
        if (*(v137[0] + 16))
        {
          v59, v81, v82, v83, v84, v85, v86, v87, v125, v130;
        }

        else
        {
          v89 = sub_22B7DB298();
          v90 = sub_22B7DBCB8();
          if (os_log_type_enabled(v89, v90))
          {
            v91 = swift_slowAlloc();
            *v91 = 0;
            _os_log_impl(&dword_22B4CC000, v89, v90, "All attachments pending delete from CloudKit were still being referenced, querying again", v91, 2u);
            MEMORY[0x231898D60](v91, -1, -1);
          }

          v135 = 0;
          v92 = [v35 batchOfRecordIDsToDeleteWithLimit:v125 error:&v135];
          v93 = v135;
          if (v92)
          {
            v94 = v92;
            sub_22B4D01A0(0, &qword_28141F2A8, 0x277CBC5D0);
            sub_22B71EF0C();
            sub_22B7DB588();
            v95 = v93;
            v88, v96, v97, v98, v99, v100, v101, v102, v125, v130;
            v59, v103, v104, v105, v106, v107, v108, v109, v128, v133;
          }

          else
          {
            v110 = v135;
            sub_22B7DA6F8();

            swift_willThrow();
            v88, v111, v112, v113, v114, v115, v116, v117, v125, v130;
            v59, v118, v119, v120, v121, v122, v123, v124, v129, v134;
          }
        }
      }
    }

    else
    {
      v6, v18, v19, v20, v21, v22, v23, v24, v125, v1;
      v56 = sub_22B7DB298();
      v57 = sub_22B7DBCB8();
      if (os_log_type_enabled(v56, v57))
      {
        v58 = swift_slowAlloc();
        *v58 = 0;
        _os_log_impl(&dword_22B4CC000, v56, v57, "No pending messages to delete/fetch from CloudKit", v58, 2u);
        MEMORY[0x231898D60](v58, -1, -1);
      }

      sub_22B71E2E4(MEMORY[0x277D84F90]);
    }
  }

  else
  {
    if (qword_28141F368 != -1)
    {
      swift_once();
    }

    v52 = sub_22B7DB2B8();
    sub_22B4CFA74(v52, qword_281422608);
    v53 = sub_22B7DB298();
    v54 = sub_22B7DBC98();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      *v55 = 0;
      _os_log_impl(&dword_22B4CC000, v53, v54, "Did not generate any records to delete for attachments returning nil", v55, 2u);
      MEMORY[0x231898D60](v55, -1, -1);
    }

    sub_22B71E2E4(MEMORY[0x277D84F90]);
  }
}

uint64_t sub_22B753CE8(uint64_t a1, uint64_t *a2, void *a3)
{
  v4 = a1 + 64;
  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1 + 64);
  v8 = (v5 + 63) >> 6;

  v9 = 0;
  v93 = a3;
  while (v7)
  {
LABEL_9:
    v11 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v12 = v11 | (v9 << 6);
    v13 = *(*(a1 + 48) + 8 * v12);
    v14 = (*(a1 + 56) + 16 * v12);
    v15 = *v14;
    v16 = v14[1];
    v17 = objc_opt_self();
    v97 = v13;

    v18 = [v17 sharedInstance];
    v96 = v15;
    v19 = sub_22B7DB678();
    LODWORD(v15) = [v18 isAttachmentReferencedByMessage_];

    if (v15)
    {
      if (qword_28141F368 != -1)
      {
        swift_once();
      }

      v20 = sub_22B7DB2B8();
      sub_22B4CFA74(v20, qword_281422608);

      v21 = sub_22B7DB298();
      v22 = sub_22B7DBCB8();
      v16, v23, v24, v25, v26, v27, v28, v29, v91, v92;
      if (os_log_type_enabled(v21, v22))
      {
        v30 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        v98 = v31;
        *v30 = 136315138;
        *(v30 + 4) = sub_22B4CFAAC(v96, v16, &v98);
        _os_log_impl(&dword_22B4CC000, v21, v22, "Attachment %s was to be deleted, but is still being referenced. Fetching instead.", v30, 0xCu);
        sub_22B4CFB78(v31);
        v32 = v31;
        a3 = v93;
        MEMORY[0x231898D60](v32, -1, -1);
        MEMORY[0x231898D60](v30, -1, -1);
      }

      if (*(*a2 + 16))
      {
        sub_22B7237AC(v97);
        if (v33)
        {
          goto LABEL_16;
        }

        v41 = a2;
      }

      else
      {
        v41 = a2;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v98 = *v41;
      v43 = v98;
      *v41 = 0x8000000000000000;
      v45 = sub_22B7237AC(v97);
      v46 = *(v43 + 16);
      v47 = (v44 & 1) == 0;
      v48 = v46 + v47;
      if (__OFADD__(v46, v47))
      {
        goto LABEL_48;
      }

      v49 = v44;
      if (*(v43 + 24) >= v48)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_22B7A428C();
        }

        v50 = v97;
        v53 = v98;
        if (v49)
        {
          goto LABEL_32;
        }
      }

      else
      {
        sub_22B7A2454(v48, isUniquelyReferenced_nonNull_native);
        v50 = v97;
        v51 = sub_22B7237AC(v97);
        if ((v49 & 1) != (v52 & 1))
        {
          goto LABEL_51;
        }

        v45 = v51;
        v53 = v98;
        if (v49)
        {
LABEL_32:
          v58 = (v53[7] + 16 * v45);
          v59 = v58[1];
          *v58 = v96;
          v58[1] = v16;

          v59, v60, v61, v62, v63, v64, v65, v66, v91, v92;
          goto LABEL_33;
        }
      }

      v53[(v45 >> 6) + 8] |= 1 << v45;
      *(v53[6] + 8 * v45) = v50;
      v54 = (v53[7] + 16 * v45);
      *v54 = v96;
      v54[1] = v16;
      v55 = v53[2];
      v56 = __OFADD__(v55, 1);
      v57 = v55 + 1;
      if (v56)
      {
        goto LABEL_49;
      }

      v53[2] = v57;
LABEL_33:
      a3 = v93;
      *a2 = v53;
    }

    else if (*(*a3 + 16))
    {
      v40 = v97;
      sub_22B7237AC(v97);
      if ((v33 & 1) == 0)
      {
        goto LABEL_34;
      }

LABEL_16:
      v16, v33, v34, v35, v36, v37, v38, v39, v91, v92;
    }

    else
    {
      v40 = v97;
LABEL_34:
      v67 = swift_isUniquelyReferenced_nonNull_native();
      v98 = *a3;
      v68 = v98;
      *a3 = 0x8000000000000000;
      v69 = sub_22B7237AC(v40);
      v71 = *(v68 + 16);
      v72 = (v70 & 1) == 0;
      v56 = __OFADD__(v71, v72);
      v73 = v71 + v72;
      if (v56)
      {
        goto LABEL_47;
      }

      v74 = v70;
      if (*(v68 + 24) < v73)
      {
        sub_22B7A2454(v73, v67);
        v69 = sub_22B7237AC(v40);
        if ((v74 & 1) != (v75 & 1))
        {
          goto LABEL_51;
        }

LABEL_39:
        v76 = v98;
        if (v74)
        {
          goto LABEL_40;
        }

        goto LABEL_42;
      }

      if (v67)
      {
        goto LABEL_39;
      }

      v86 = v69;
      sub_22B7A428C();
      v69 = v86;
      v76 = v98;
      if (v74)
      {
LABEL_40:
        v77 = (v76[7] + 16 * v69);
        v78 = v77[1];
        *v77 = v96;
        v77[1] = v16;

        v78, v79, v80, v81, v82, v83, v84, v85, v91, v92;
        goto LABEL_44;
      }

LABEL_42:
      v76[(v69 >> 6) + 8] |= 1 << v69;
      *(v76[6] + 8 * v69) = v40;
      v87 = (v76[7] + 16 * v69);
      *v87 = v96;
      v87[1] = v16;
      v88 = v76[2];
      v56 = __OFADD__(v88, 1);
      v89 = v88 + 1;
      if (v56)
      {
        goto LABEL_50;
      }

      v76[2] = v89;
LABEL_44:
      a3 = v93;
      *v93 = v76;
    }
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v8)
    {
    }

    v7 = *(v4 + 8 * v10);
    ++v9;
    if (v7)
    {
      v9 = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  sub_22B4D01A0(0, &qword_28141F2A8, 0x277CBC5D0);
  result = sub_22B7DC578();
  __break(1u);
  return result;
}

void sub_22B75438C(uint64_t a1, IMDScheduledMessageCoordinator **a2, id *a3)
{
  v142 = a3;
  v3 = *(a1 + 16);
  if (!v3)
  {
    return;
  }

  v4 = 0;
  v157 = a1 + 32;
  v5 = &selRef_setFirstSyncDateToNow;
  while (1)
  {
    v6 = *(v157 + 8 * v4);
    v153 = 0x4449574F52;
    v154 = 0xE500000000000000;

    sub_22B7DC248();
    if (!*(v6 + 16))
    {
      goto LABEL_36;
    }

    v7 = sub_22B4D7EC0(v155);
    if ((v8 & 1) == 0)
    {
      goto LABEL_36;
    }

    sub_22B4D1F68(*(v6 + 56) + 32 * v7, v156);
    sub_22B4DA138(v155);
    sub_22B4D01A0(0, &qword_28141EFE0, 0x277CCABB0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_37;
    }

    v9 = v153;
    v153 = 1684632935;
    v154 = 0xE400000000000000;
    sub_22B7DC248();
    if (!*(v6 + 16))
    {
      goto LABEL_35;
    }

    v10 = sub_22B4D7EC0(v155);
    if ((v11 & 1) == 0)
    {
      goto LABEL_35;
    }

    sub_22B4D1F68(*(v6 + 56) + 32 * v10, v156);
    sub_22B4DA138(v155);
    if (swift_dynamicCast())
    {
      break;
    }

LABEL_46:

LABEL_37:
    if (qword_28141F368 != -1)
    {
      swift_once();
    }

    v88 = sub_22B7DB2B8();
    sub_22B4CFA74(v88, qword_281422608);

    v89 = sub_22B7DB298();
    v90 = sub_22B7DBC98();
    v6, v91, v92, v93, v94, v95, v96, v97, v136, v142;
    if (os_log_type_enabled(v89, v90))
    {
      v105 = swift_slowAlloc();
      v106 = swift_slowAlloc();
      v155[0] = v106;
      *v105 = 136315138;
      v107 = sub_22B7DB598();
      v109 = v108;
      v6, v108, v110, v111, v112, v113, v114, v115, v139, v144;
      v116 = sub_22B4CFAAC(v107, v109, v155);
      v117 = v109;
      v5 = &selRef_setFirstSyncDateToNow;
      v117, v118, v119, v120, v121, v122, v123, v124, v140, v145;
      *(v105 + 4) = v116;
      _os_log_impl(&dword_22B4CC000, v89, v90, "Could not create CKRecord for attachment delete, missing properties: %s", v105, 0xCu);
      sub_22B4CFB78(v106);
      MEMORY[0x231898D60](v106, -1, -1);
      MEMORY[0x231898D60](v105, -1, -1);
    }

    else
    {
      v6, v98, v99, v100, v101, v102, v103, v104, v139, v144;
    }

LABEL_43:
    if (++v4 == v3)
    {
      return;
    }
  }

  v147 = v153;
  v150 = v154;
  v153 = 0x444964726F636572;
  v154 = 0xE800000000000000;
  sub_22B7DC248();
  if (!*(v6 + 16) || (v19 = sub_22B4D7EC0(v155), (v12 & 1) == 0))
  {
    v150, v12, v13, v14, v15, v16, v17, v18, v136, v142;
LABEL_35:

LABEL_36:
    sub_22B4DA138(v155);
    goto LABEL_37;
  }

  sub_22B4D1F68(*(v6 + 56) + 32 * v19, v156);
  sub_22B4DA138(v155);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v150, v20, v21, v22, v23, v24, v25, v26, v136, v142;
    goto LABEL_46;
  }

  v137 = v9;
  v148 = v154;
  v27 = objc_opt_self();
  v28 = [v27 v5[437]];
  if (v28)
  {
    v29 = v28;
    v30 = [v28 attachmentRecordZoneID];

    v152[0] = v30;
    v31 = [v27 v5[437]];
    if (v31)
    {
      v39 = v31;
      v6, v32, v33, v34, v35, v36, v37, v38, v137, v142;
      v40 = [v39 chatBotAttachmentRecordZoneID];

      v48 = 0;
      v49 = 0;
      v152[1] = v40;
      while (2)
      {
        v67 = v48;
        v68 = v152[v49];
        if (!v68)
        {
          goto LABEL_18;
        }

        v149 = v48;
        sub_22B4D01A0(0, &qword_28141F2A8, 0x277CBC5D0);
        v69 = v68;

        v70 = sub_22B7DBC48();
        v71 = v70;
        if (*(*a2)->messageStore)
        {
          sub_22B7237AC(v70);
          if (v72)
          {

LABEL_17:
            v67 = v149;
LABEL_18:
            v48 = 1;
            v49 = 1;
            if (v67)
            {
              v148, v41, v42, v43, v44, v45, v46, v47, v138, v143;
              v150, v125, v126, v127, v128, v129, v130, v131, v141, v146;
              sub_22B6F0AD4(&qword_27D8CEB58, &qword_22B7FB138);
              swift_arrayDestroy();
              if (*v142)
              {
                v132 = *v142;
                v133 = [v136 longLongValue];
                v134 = [v132 longLongValue];

                if (v134 >= v133)
                {
                }

                else
                {
                  v135 = *v142;
                  *v142 = v136;
                }
              }

              else
              {
                *v142 = v136;
              }

              goto LABEL_43;
            }

            continue;
          }
        }

        break;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v155[0] = *a2;
      v74 = v155[0];
      *a2 = 0x8000000000000000;
      v76 = sub_22B7237AC(v71);
      v77 = *(v74 + 16);
      v78 = (v75 & 1) == 0;
      v79 = v77 + v78;
      if (__OFADD__(v77, v78))
      {
        __break(1u);
LABEL_54:
        __break(1u);
        goto LABEL_55;
      }

      v80 = v75;
      if (*(v74 + 24) >= v79)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          v83 = v155[0];
          if ((v75 & 1) == 0)
          {
            goto LABEL_30;
          }
        }

        else
        {
          sub_22B7A428C();
          v83 = v155[0];
          if ((v80 & 1) == 0)
          {
            goto LABEL_30;
          }
        }
      }

      else
      {
        sub_22B7A2454(v79, isUniquelyReferenced_nonNull_native);
        v81 = sub_22B7237AC(v71);
        if ((v80 & 1) != (v82 & 1))
        {
          goto LABEL_57;
        }

        v76 = v81;
        v83 = v155[0];
        if ((v80 & 1) == 0)
        {
LABEL_30:
          *&v83->timer[8 * (v76 >> 6) + 7] |= 1 << v76;
          *(*v83->blocklistObserver + 8 * v76) = v71;
          v84 = (*v83->isFirstFire + 16 * v76);
          *v84 = v147;
          v84[1] = v150;

          v85 = *v83->messageStore;
          v86 = __OFADD__(v85, 1);
          v87 = v85 + 1;
          if (v86)
          {
            goto LABEL_54;
          }

          *v83->messageStore = v87;
          goto LABEL_16;
        }
      }

      v50 = (*v83->isFirstFire + 16 * v76);
      v51 = v50[1];
      *v50 = v147;
      v50[1] = v150;

      v51, v52, v53, v54, v55, v56, v57, v58, v138, v143;
LABEL_16:
      v66 = *a2;
      *a2 = v83;
      v66, v59, v60, v61, v62, v63, v64, v65, v138, v143;
      v5 = &selRef_setFirstSyncDateToNow;
      goto LABEL_17;
    }

LABEL_55:
    __break(1u);
  }

  __break(1u);
LABEL_57:
  sub_22B7DC578();
  __break(1u);
}

uint64_t sub_22B754AC0()
{
  v0 = [objc_opt_self() sharedInstance];
  v1 = *MEMORY[0x277D19A08];
  v2 = sub_22B7DB678();
  v3 = [v0 getValueFromDomain:v1 forKey:v2];

  if (v3)
  {
    sub_22B7DC118();
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0u;
    v7 = 0u;
  }

  v8[0] = v6;
  v8[1] = v7;
  if (*(&v7 + 1))
  {
    sub_22B4D01A0(0, &qword_28141EFE0, 0x277CCABB0);
    if (swift_dynamicCast())
    {
      return v5;
    }
  }

  else
  {
    sub_22B4D0D64(v8, &unk_27D8CCDC0, &qword_22B7F9580);
  }

  return 0;
}

void sub_22B754C10(uint64_t a1)
{
  v2 = [objc_opt_self() sharedInstance];
  if (!v2)
  {
    __break(1u);
    objc_autoreleasePoolPop(v1);
    __break(1u);
    return;
  }

  v3 = v2;
  v4 = [v2 attachmentRecordZone];

  if (!v4)
  {
    if (qword_28141F368 != -1)
    {
      swift_once();
    }

    v9 = sub_22B7DB2B8();
    sub_22B4CFA74(v9, qword_281422608);
    v5 = sub_22B7DB298();
    v10 = sub_22B7DBC98();
    if (os_log_type_enabled(v5, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_22B4CC000, v5, v10, "No message record zone initialized in IMDRecordZoneManager.", v11, 2u);
      MEMORY[0x231898D60](v11, -1, -1);
    }

    goto LABEL_10;
  }

  v5 = sub_22B754AC0();
  v6 = IMDAttachmentCopyRecordIDsToDeleteAfterRowWithLimit();
  if (!v6)
  {
LABEL_10:

    return;
  }

  v7 = v6;
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    v8 = v7;
    sub_22B6F0AD4(&qword_27D8CF710, qword_22B7FA230);
    sub_22B7DB908();
  }

  if (qword_28141F368 != -1)
  {
    swift_once();
  }

  v12 = sub_22B7DB2B8();
  sub_22B4CFA74(v12, qword_281422608);
  v13 = sub_22B7DB298();
  v14 = sub_22B7DBC98();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_22B4CC000, v13, v14, "Could not bridge CFArray to [[AnyHashable: Any]]", v15, 2u);
    MEMORY[0x231898D60](v15, -1, -1);
  }
}

void _sSo18IMDAttachmentStoreC12IMDaemonCoreE15clearTombstones12forRecordIDsySaySo10CKRecordIDCG_tF_0(IMDScheduledMessageCoordinator *a1)
{
  if (qword_28141F368 != -1)
  {
    swift_once();
  }

  v2 = sub_22B7DB2B8();
  sub_22B4CFA74(v2, qword_281422608);

  v3 = sub_22B7DB298();
  v4 = sub_22B7DBCB8();
  a1, v5, v6, v7, v8, v9, v10, v11, v46, v49;
  if (os_log_type_enabled(v3, v4))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v49 = v13;
    *v12 = 136315138;
    v14 = sub_22B4D01A0(0, &qword_28141F2A8, 0x277CBC5D0);
    v15 = MEMORY[0x2318952A0](a1, v14);
    v17 = v16;
    v18 = sub_22B4CFAAC(v15, v16, &v49);
    v17, v19, v20, v21, v22, v23, v24, v25, v47, v49;
    *(v12 + 4) = v18;
    _os_log_impl(&dword_22B4CC000, v3, v4, "Clearing attachment tombstones for recordIDs: %s", v12, 0xCu);
    sub_22B4CFB78(v13);
    MEMORY[0x231898D60](v13, -1, -1);
    MEMORY[0x231898D60](v12, -1, -1);
  }

  if (a1 >> 62)
  {
    v26 = sub_22B7DC1C8();
  }

  else
  {
    v26 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v27 = MEMORY[0x277D84F90];
  if (v26)
  {
    v49 = MEMORY[0x277D84F90];
    sub_22B7AB6B4(0, v26 & ~(v26 >> 63), 0);
    if (v26 < 0)
    {
      __break(1u);
      return;
    }

    v28 = 0;
    v27 = v49;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v29 = MEMORY[0x231895C80](v28, a1);
      }

      else
      {
        v29 = *&a1->queue[8 * v28];
      }

      v30 = v29;
      v31 = [v29 recordName];
      v32 = sub_22B7DB6A8();
      v34 = v33;

      v49 = v27;
      v36 = *v27->messageStore;
      v35 = *v27->chatRegistry;
      if (v36 >= v35 >> 1)
      {
        sub_22B7AB6B4((v35 > 1), v36 + 1, 1);
        v27 = v49;
      }

      ++v28;
      *v27->messageStore = v36 + 1;
      v37 = v27 + 16 * v36;
      *(v37 + 4) = v32;
      *(v37 + 5) = v34;
    }

    while (v26 != v28);
  }

  v38 = sub_22B7DB8F8();
  v27, v39, v40, v41, v42, v43, v44, v45, v38, v49;
  IMDAttachmentRecordDeleteTombStonedAttachmentsWithRecordIDs();
}

void sub_22B755198(IMDScheduledMessageCoordinator *result, SEL a2, uint64_t a3, id x3_0, uint64_t w4_0, id x5_0, id x6_0, id x7_0, id _40, id _48)
{
  if (a3)
  {
    result, a2, a3, x3_0, w4_0, x5_0, x6_0, x7_0, _40, _48;
  }
}

uint64_t sub_22B7551A4()
{
  result = sub_22B7551C8();
  qword_2814225D0 = result;
  *algn_2814225D8 = v1;
  return result;
}

uint64_t sub_22B7551C8()
{
  v0 = sub_22B7DA6D8();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v49 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_22B7DA828();
  v4 = *(v50 - 1);
  v5 = MEMORY[0x28223BE20](v50);
  v7 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v49 - v8;
  v10 = IMAttachmentsDirectoryURL();
  sub_22B7DA7D8();

  sub_22B6F0AD4(&qword_27D8CE558, &qword_22B7FA550);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22B7F93B0;
  v12 = *MEMORY[0x277CBE7A0];
  *(inited + 32) = *MEMORY[0x277CBE7A0];
  v13 = v12;
  sub_22B7177E8(inited);
  v15 = v14;
  swift_setDeallocating();
  sub_22B724C4C(inited + 32);
  sub_22B7DA758();
  v15, v16, v17, v18, v19, v20, v21, v22, v49, v50;
  v30 = sub_22B7DA6B8();
  if (*(v30 + 16) && (v31 = sub_22B725574(), (v23 & 1) != 0))
  {
    sub_22B4D1F68(*(v30 + 56) + 32 * v31, v52);
    v30, v32, v33, v34, v35, v36, v37, v38, v49, v50;
    if (swift_dynamicCast())
    {
      (*(v1 + 8))(v3, v0);
      (*(v4 + 8))(v9, v50);
      return v51;
    }
  }

  else
  {
    v30, v23, v24, v25, v26, v27, v28, v29, v49, v50;
  }

  sub_22B755D68();
  v40 = swift_allocError();
  swift_willThrow();
  v41 = v40;
  (*(v1 + 8))(v3, v0);
  if (qword_28141F430 != -1)
  {
    swift_once();
  }

  v42 = sub_22B7DB2B8();
  sub_22B4CFA74(v42, qword_281422710);
  v43 = sub_22B7DB298();
  v44 = sub_22B7DBC98();
  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    *v45 = 0;
    _os_log_impl(&dword_22B4CC000, v43, v44, "Could not retrieve canonical path key to get full path to attachments with /private in path, falling back to .resolvingSymLinksInPath", v45, 2u);
    MEMORY[0x231898D60](v45, -1, -1);
  }

  sub_22B7DA7A8();
  v39 = sub_22B7DA7E8();

  v46 = *(v4 + 8);
  v47 = v50;
  v46(v7, v50);
  v46(v9, v47);
  return v39;
}

id sub_22B7555BC()
{
  result = [objc_allocWithZone(IMDFileEventBroadcaster) init];
  qword_28141F140 = result;
  return result;
}

void __swiftcall IMDFileEventBroadcaster.init()(IMDFileEventBroadcaster *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

id static IMDFileEventBroadcaster.shared()()
{
  if (qword_28141F138 != -1)
  {
    swift_once();
  }

  v1 = qword_28141F140;

  return v1;
}

Swift::Void __swiftcall IMDFileEventBroadcaster.observeChanges(in:)(Swift::String in)
{
  v2 = v1;
  object = in._object;
  countAndFlagsBits = in._countAndFlagsBits;
  v50 = *MEMORY[0x277D85DE8];
  v5 = sub_22B7DB368();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28141F430 != -1)
  {
    swift_once();
  }

  v9 = sub_22B7DB2B8();
  v10 = sub_22B4CFA74(v9, qword_281422710);

  v48 = v10;
  v11 = sub_22B7DB298();
  v12 = sub_22B7DBCB8();
  object, v13, v14, v15, v16, v17, v18, v19, v47, v48;
  if (os_log_type_enabled(v11, v12))
  {
    v20 = swift_slowAlloc();
    v21 = v8;
    v22 = v6;
    v23 = v5;
    v24 = v2;
    v25 = swift_slowAlloc();
    context.version = v25;
    *v20 = 136315138;
    *(v20 + 4) = sub_22B4CFAAC(countAndFlagsBits, object, &context.version);
    _os_log_impl(&dword_22B4CC000, v11, v12, "Observing file changes for %s", v20, 0xCu);
    sub_22B4CFB78(v25);
    v26 = v25;
    v2 = v24;
    v5 = v23;
    v6 = v22;
    v8 = v21;
    MEMORY[0x231898D60](v26, -1, -1);
    MEMORY[0x231898D60](v20, -1, -1);
  }

  sub_22B6F0AD4(&unk_27D8CEA00, &qword_22B7F98C8);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_22B7F93B0;
  *(v27 + 32) = countAndFlagsBits;
  *(v27 + 40) = object;
  v28 = qword_28141F150;

  if (v28 != -1)
  {
    swift_once();
  }

  v30 = qword_2814225D0;
  v29 = *algn_2814225D8;
  v31 = swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for FileEventStream();
  v32 = swift_allocObject();
  *(v32 + 72) = v31;
  *(v32 + 80) = 0;
  *(v32 + 16) = v27;
  *(v32 + 24) = -1;
  *(v32 + 32) = 0x4000000000000000;
  *(v32 + 40) = 17;
  *(v32 + 48) = v30;
  *(v32 + 56) = v29;
  *(v32 + 64) = sub_22B4D9B94;
  context.info = v32;
  memset(&context.retain, 0, 24);
  context.version = 0;
  v33 = *MEMORY[0x277CBECE8];

  swift_retain_n();

  v34 = sub_22B7DB8F8();
  v27, v35, v36, v37, v38, v39, v40, v41, v47, v48;
  v42 = FSEventStreamCreate(v33, sub_22B4D987C, &context, v34, 0xFFFFFFFFFFFFFFFFLL, 2.0, 0x11u);

  if (v42)
  {
    *(v32 + 80) = v42;
    sub_22B4D01A0(0, &qword_28141F210, 0x277D85C78);
    (*(v6 + 104))(v8, *MEMORY[0x277D851D0], v5);
    v43 = sub_22B7DBD98();
    (*(v6 + 8))(v8, v5);
    FSEventStreamSetDispatchQueue(v42, v43);

    FSEventStreamStart(v42);
  }

  else
  {
    v44 = sub_22B7DB298();
    v45 = sub_22B7DBCB8();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      *v46 = 0;
      _os_log_impl(&dword_22B4CC000, v44, v45, "Could not create FSEventStream", v46, 2u);
      MEMORY[0x231898D60](v46, -1, -1);
    }
  }

  *(v2 + OBJC_IVAR___IMDFileEventBroadcaster_fileEventStream) = v32;
}

Swift::Void __swiftcall IMDFileEventBroadcaster.stopObserving()()
{
  if (*(v0 + OBJC_IVAR___IMDFileEventBroadcaster_fileEventStream))
  {

    FileEventStream.stop()();
  }
}

id IMDFileEventBroadcaster.init()()
{
  *(v0 + OBJC_IVAR___IMDFileEventBroadcaster_fileEventStream) = 0;
  v2.super_class = IMDFileEventBroadcaster;
  return objc_msgSendSuper2(&v2, sel_init);
}

unint64_t sub_22B755D68()
{
  result = qword_27D8CEB70;
  if (!qword_27D8CEB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8CEB70);
  }

  return result;
}

unint64_t sub_22B755DD0()
{
  result = qword_27D8CEB78;
  if (!qword_27D8CEB78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8CEB78);
  }

  return result;
}

uint64_t sub_22B755E24(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = result + 56;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 56);
  v7 = (v4 + 63) >> 6;
  if (v6)
  {
    while (1)
    {
      v8 = v2;
LABEL_9:
      v9 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      result = sub_22B7C8BE4(v10, *(*(v1 + 48) + ((v8 << 7) | (2 * v9))));
      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return result;
    }

    if (v8 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }
}

uint64_t sub_22B755F04()
{
  v0 = sub_22B7DB2B8();
  sub_22B6F24F4(v0, qword_27D8CEB80);
  sub_22B4CFA74(v0, qword_27D8CEB80);
  return sub_22B7DB2A8();
}

id sub_22B755F84()
{
  v1 = MEMORY[0x277D84FA0];
  *&v0[OBJC_IVAR___IMDMutedChatListRebuilder_identifiersFound] = MEMORY[0x277D84FA0];
  *&v0[OBJC_IVAR___IMDMutedChatListRebuilder_chatsFound] = 0;
  v2 = OBJC_IVAR___IMDMutedChatListRebuilder_state;
  v3 = sub_22B71E6EC(MEMORY[0x277D84F90]);
  sub_22B6F0AD4(&qword_27D8CEBE8, qword_22B7FB2D0);
  v4 = swift_allocObject();
  *(v4 + 64) = 0;
  *(v4 + 16) = v3;
  *(v4 + 24) = 0;
  *(v4 + 32) = v1;
  *(v4 + 40) = 0;
  *(v4 + 48) = v1;
  *(v4 + 56) = v1;
  *&v0[v2] = v4;
  *&v0[OBJC_IVAR___IMDMutedChatListRebuilder_batchLimit] = 50;
  v5 = &v0[OBJC_IVAR___IMDMutedChatListRebuilder_findChat];
  *v5 = sub_22B7560C8;
  v5[1] = 0;
  v6 = &v0[OBJC_IVAR___IMDMutedChatListRebuilder_mutedChatList];
  *v6 = sub_22B7561DC;
  v6[1] = 0;
  v7 = &v0[OBJC_IVAR___IMDMutedChatListRebuilder_muteChat];
  *v7 = sub_22B756278;
  v7[1] = 0;
  v8 = &v0[OBJC_IVAR___IMDMutedChatListRebuilder_muteIdentifiers];
  *v8 = sub_22B756328;
  v8[1] = 0;
  v10.receiver = v0;
  v10.super_class = IMDMutedChatListRebuilder;
  return objc_msgSendSuper2(&v10, sel_init);
}

id sub_22B7560C8(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  v2 = objc_opt_self();
  v3 = [v2 sharedInstance];
  v4 = sub_22B7DB678();
  v5 = [v3 existingiMessageChatForID_];

  result = v5;
  if (!v5)
  {
    v7 = [v2 sharedInstance];
    v8 = sub_22B7DB678();
    v9 = [v7 existingChatWithGroupID:v8 onService:*MEMORY[0x277D1A5F8]];

    return v9;
  }

  return result;
}

uint64_t sub_22B7561DC()
{
  v0 = [objc_opt_self() sharedList];
  v1 = [v0 mutedChatList];

  sub_22B4D01A0(0, &qword_28141EFE0, 0x277CCABB0);
  v2 = sub_22B7DB588();

  return v2;
}

void sub_22B756278(uint64_t a1, uint64_t a2, char a3)
{
  v4 = [objc_opt_self() sharedList];
  v5 = sub_22B7DB8F8();
  v6 = sub_22B7DA8B8();
  [v4 muteChatWithMuteIdentifiers:v5 untilDate:v6 syncToPairedDevice:a3 & 1];
}

uint64_t sub_22B756328(unsigned __int8 a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v11 = [objc_opt_self() sharedList];
  v12 = sub_22B7DB678();
  sub_22B6F0AD4(&unk_27D8CE9E0, &qword_22B7F99B0);
  v13 = sub_22B7DB568();
  v14 = sub_22B7DB8F8();
  v15 = sub_22B7DB678();
  v16 = sub_22B7DB678();
  v17 = sub_22B7DB678();
  v18 = [v11 muteIdentifiersForChatStyle:a1 groupID:v12 domainIdentifiers:v13 participantIDs:v14 lastAddressedHandleID:v15 originalGroupID:v16 chatIdentifier:v17];

  v19 = sub_22B7DB918();
  return v19;
}

id sub_22B7564D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v16 = MEMORY[0x277D84FA0];
  *&v9[OBJC_IVAR___IMDMutedChatListRebuilder_identifiersFound] = MEMORY[0x277D84FA0];
  *&v9[OBJC_IVAR___IMDMutedChatListRebuilder_chatsFound] = 0;
  v17 = OBJC_IVAR___IMDMutedChatListRebuilder_state;
  v18 = sub_22B71E6EC(MEMORY[0x277D84F90]);
  sub_22B6F0AD4(&qword_27D8CEBE8, qword_22B7FB2D0);
  v19 = swift_allocObject();
  *(v19 + 64) = 0;
  *(v19 + 16) = v18;
  *(v19 + 24) = 0;
  *(v19 + 32) = v16;
  *(v19 + 40) = 0;
  *(v19 + 48) = v16;
  *(v19 + 56) = v16;
  *&v9[v17] = v19;
  *&v9[OBJC_IVAR___IMDMutedChatListRebuilder_batchLimit] = a1;
  v20 = &v9[OBJC_IVAR___IMDMutedChatListRebuilder_findChat];
  *v20 = a2;
  *(v20 + 1) = a3;
  v21 = &v9[OBJC_IVAR___IMDMutedChatListRebuilder_mutedChatList];
  *v21 = a4;
  *(v21 + 1) = a5;
  v22 = &v9[OBJC_IVAR___IMDMutedChatListRebuilder_muteChat];
  *v22 = a6;
  *(v22 + 1) = a7;
  v23 = &v9[OBJC_IVAR___IMDMutedChatListRebuilder_muteIdentifiers];
  *v23 = a8;
  *(v23 + 1) = a9;
  v27.receiver = v9;
  v27.super_class = IMDMutedChatListRebuilder;
  return objc_msgSendSuper2(&v27, sel_init);
}

id sub_22B756770(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v4 = sub_22B7DB678();
  }

  else
  {
    v4 = 0;
  }

  v5 = (*(a3 + 16))(a3, v4);

  return v5;
}

uint64_t sub_22B7567CC(uint64_t a1)
{
  v1 = (*(a1 + 16))();
  sub_22B4D01A0(0, &qword_28141EFE0, 0x277CCABB0);
  v2 = sub_22B7DB588();

  return v2;
}

void sub_22B756840(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v6 = sub_22B7DB8F8();
  v7 = sub_22B7DA8B8();
  (*(a4 + 16))(a4, v6, v7, a3 & 1);
}

uint64_t sub_22B7568C4(unsigned __int8 a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v12 = sub_22B7DB678();
  sub_22B6F0AD4(&unk_27D8CE9E0, &qword_22B7F99B0);
  v13 = sub_22B7DB568();
  v14 = sub_22B7DB8F8();
  v15 = sub_22B7DB678();
  v16 = sub_22B7DB678();
  v17 = sub_22B7DB678();
  v18 = (*(a12 + 16))(a12, a1, v12, v13, v14, v15, v16, v17);

  v19 = sub_22B7DB918();
  return v19;
}

void sub_22B756A20()
{
  v1 = v0;
  v2 = sub_22B6F0AD4(&qword_27D8CD5C0, &qword_22B7F8CF0);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v22 - v4;
  v6 = (*&v0[OBJC_IVAR___IMDMutedChatListRebuilder_mutedChatList])(v3);
  v14 = v6;
  if (*v6->messageStore)
  {
    v15 = sub_22B7DBA58();
    (*(*(v15 - 8) + 56))(v5, 1, 1, v15);
    v16 = swift_allocObject();
    v16[2] = 0;
    v16[3] = 0;
    v16[4] = v14;
    v16[5] = v1;
    v17 = v1;
    sub_22B77E3D4(0, 0, v5, &unk_22B7FB200, v16);
  }

  else
  {
    v6, v7, v8, v9, v10, v11, v12, v13, v22, v23;
    if (qword_27D8CCC40 != -1)
    {
      swift_once();
    }

    v18 = sub_22B7DB2B8();
    sub_22B4CFA74(v18, qword_27D8CEB80);
    v23 = sub_22B7DB298();
    v19 = sub_22B7DBCB8();
    if (os_log_type_enabled(v23, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_22B4CC000, v23, v19, "No muted identifiers to process", v20, 2u);
      MEMORY[0x231898D60](v20, -1, -1);
    }

    v21 = v23;
  }
}

uint64_t sub_22B756C30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 24) = a4;
  *(v5 + 32) = a5;
  return MEMORY[0x2822009F8](sub_22B756C50, 0, 0);
}

uint64_t sub_22B756C50()
{
  if (qword_27D8CCC40 == -1)
  {
    goto LABEL_2;
  }

  while (1)
  {
    swift_once();
LABEL_2:
    v1 = sub_22B7DB2B8();
    sub_22B4CFA74(v1, qword_27D8CEB80);

    v2 = sub_22B7DB298();
    v3 = sub_22B7DBCB8();
    v4 = os_log_type_enabled(v2, v3);
    v12 = *(v0 + 24);
    if (v4)
    {
      v13 = swift_slowAlloc();
      *v13 = 134217984;
      *(v13 + 4) = *v12->messageStore;
      v12, v14, v15, v16, v17, v18, v19, v20, v68, v69;
      _os_log_impl(&dword_22B4CC000, v2, v3, "Starting muted chat list rebuild with %ld identifiers", v13, 0xCu);
      MEMORY[0x231898D60](v13, -1, -1);
    }

    else
    {
      *(v0 + 24), v5, v6, v7, v8, v9, v10, v11, v68, v69;
    }

    v21 = *(v0 + 24);
    v22 = *(v21 + 32);
    *(v0 + 136) = v22;
    v23 = 1 << v22;
    v24 = v23 < 64 ? ~(-1 << v23) : -1;
    v25 = v24 & *(v21 + 64);
    v26 = OBJC_IVAR___IMDMutedChatListRebuilder_state;
    *(v0 + 40) = OBJC_IVAR___IMDMutedChatListRebuilder_batchLimit;
    *(v0 + 48) = v26;

    v27 = 0;
    v28 = 0;
    *(v0 + 56) = 0;
    if (v25)
    {
      break;
    }

LABEL_10:
    while (1)
    {
      v30 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        break;
      }

      v29 = *(v0 + 24);
      if (v30 >= (((1 << *(v0 + 136)) + 63) >> 6))
      {

        sub_22B7DBA18();
        *(v0 + 64) = sub_22B7DBA08();
        v52 = sub_22B7DB9C8();
        v54 = v53;
        v55 = sub_22B757020;
        goto LABEL_21;
      }

      v25 = v29[v30 + 8];
      ++v28;
      if (v25)
      {
        v28 = v30;
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
  }

  while (1)
  {
    v29 = *(v0 + 24);
LABEL_14:
    *(v0 + 72) = v25;
    *(v0 + 80) = v28;
    v31 = __clz(__rbit64(v25)) | (v28 << 6);
    v32 = (v29[6] + 16 * v31);
    v34 = *v32;
    v33 = v32[1];
    v35 = *(v29[7] + 8 * v31);
    v36 = v27 + 1;
    *(v0 + 88) = v35;
    *(v0 + 96) = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      goto LABEL_27;
    }

    v37 = *(v0 + 32);
    v38 = *(v37 + *(v0 + 40));
    v39 = __OFSUB__(v38, 1);
    v40 = v38 - 1;
    if (v39)
    {
      goto LABEL_28;
    }

    if (v27 == v40)
    {
      break;
    }

    v41 = *(v0 + 48);
    if (v27 == v29[2] - 1)
    {
      goto LABEL_25;
    }

    v42 = *(v37 + v41);
    v43 = swift_task_alloc();
    v43[2] = v34;
    v43[3] = v33;
    v43[4] = v35;

    v44 = v35;
    os_unfair_lock_lock((v42 + 64));
    sub_22B758C68((v42 + 16));
    os_unfair_lock_unlock((v42 + 64));
    v25 &= v25 - 1;
    v33, v45, v46, v47, v48, v49, v50, v51, v68, v69;

    v27 = v36;
    *(v0 + 56) = 0;
    if (!v25)
    {
      goto LABEL_10;
    }
  }

  v41 = *(v0 + 48);
LABEL_25:
  v56 = *(v37 + v41);
  *(v0 + 104) = v56;
  v57 = swift_task_alloc();
  v57[2] = v34;
  v57[3] = v33;
  v57[4] = v35;

  v58 = v35;
  os_unfair_lock_lock((v56 + 64));
  sub_22B758C88((v56 + 16));
  *(v0 + 112) = 0;
  os_unfair_lock_unlock((v56 + 64));
  v33, v59, v60, v61, v62, v63, v64, v65, v68, v69;

  sub_22B7DBA18();
  *(v0 + 120) = sub_22B7DBA08();
  v52 = sub_22B7DB9C8();
  v54 = v66;
  v55 = sub_22B7570DC;
LABEL_21:

  return MEMORY[0x2822009F8](v55, v52, v54);
}

void sub_22B757020()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 32);

  sub_22B758094(v2);
  if (v1)
  {
  }

  else
  {

    MEMORY[0x2822009F8](sub_22B7570C8, 0, 0);
  }
}

void sub_22B7570DC()
{
  v1 = v0[14];
  v2 = v0[13];

  KeyPath = swift_getKeyPath();
  v4 = swift_task_alloc();
  *(v4 + 16) = sub_22B758CA8;
  *(v4 + 24) = KeyPath;

  os_unfair_lock_lock((v2 + 64));
  sub_22B758CC4((v2 + 16), v0 + 2);
  v0[16] = v1;
  if (v1)
  {
    v5 = (v0[13] + 64);

    os_unfair_lock_unlock(v5);
  }

  else
  {
    os_unfair_lock_unlock((v0[13] + 64));

    v6 = v0[2];

    sub_22B757644(v6);
    v6, v7, v8, v9, v10, v11, v12, v13, v14, v15;

    MEMORY[0x2822009F8](sub_22B757218, 0, 0);
  }
}

void sub_22B757218()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 88);
  os_unfair_lock_lock((v1 + 64));
  v3 = sub_22B71E6EC(MEMORY[0x277D84F90]);
  v4 = *(v1 + 16);
  *(v1 + 16) = v3;
  v4, v5, v6, v7, v8, v9, v10, v11, v56, v58;
  os_unfair_lock_unlock((v1 + 64));

  v15 = 0;
  v16 = *(v0 + 128);
  v17 = *(v0 + 96);
  v18 = *(v0 + 80);
  v19 = (*(v0 + 72) - 1) & *(v0 + 72);
  while (1)
  {
    *(v0 + 56) = v16;
    if (!v19)
    {
      while (1)
      {
        v20 = v18 + 1;
        if (__OFADD__(v18, 1))
        {
          break;
        }

        v12 = *(v0 + 24);
        if (v20 >= (((1 << *(v0 + 136)) + 63) >> 6))
        {
          goto LABEL_16;
        }

        v19 = v12[v20 + 8];
        ++v18;
        if (v19)
        {
          v18 = v20;
          goto LABEL_8;
        }
      }

      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
      goto _swift_task_switch;
    }

    v12 = *(v0 + 24);
LABEL_8:
    *(v0 + 72) = v19;
    *(v0 + 80) = v18;
    v21 = __clz(__rbit64(v19)) | (v18 << 6);
    v22 = (v12[6] + 16 * v21);
    v23 = *v22;
    v24 = v22[1];
    v25 = *(v12[7] + 8 * v21);
    v26 = v17 + 1;
    *(v0 + 88) = v25;
    *(v0 + 96) = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      goto LABEL_24;
    }

    v27 = *(v0 + 32);
    v28 = *(v27 + *(v0 + 40));
    v29 = __OFSUB__(v28, 1);
    v30 = (v28 - 1);
    if (v29)
    {
      goto LABEL_25;
    }

    if (v15 == v30 || v17 == v12[2] - 1)
    {
      break;
    }

    v60 = v15;
    v31 = *(v27 + *(v0 + 48));
    v32 = swift_task_alloc();
    v32[2] = v23;
    v32[3] = v24;
    v32[4] = v25;

    v33 = v25;
    os_unfair_lock_lock((v31 + 64));
    sub_22B758C68((v31 + 16));
    os_unfair_lock_unlock((v31 + 64));
    if (v16)
    {
      return;
    }

    v19 &= v19 - 1;
    v24, v34, v35, v36, v37, v38, v39, v40, v57, v60;

    v17 = v26;
    v15 = v59 + 1;
    if (__OFADD__(v59, 1))
    {
      __break(1u);
LABEL_16:

      sub_22B7DBA18();
      *(v0 + 64) = sub_22B7DBA08();
      v41 = sub_22B7DB9C8();
      v43 = v42;
      v44 = sub_22B757020;
      goto LABEL_17;
    }
  }

  v45 = *(v27 + *(v0 + 48));
  *(v0 + 104) = v45;
  v46 = swift_task_alloc();
  v46[2] = v23;
  v46[3] = v24;
  v46[4] = v25;

  v47 = v25;
  os_unfair_lock_lock((v45 + 64));
  sub_22B758C88((v45 + 16));
  *(v0 + 112) = v16;
  os_unfair_lock_unlock((v45 + 64));
  if (v16)
  {
    return;
  }

  v24, v48, v49, v50, v51, v52, v53, v54, v57, v59;

  sub_22B7DBA18();
  *(v0 + 120) = sub_22B7DBA08();
  v41 = sub_22B7DB9C8();
  v43 = v55;
  v44 = sub_22B7570DC;
LABEL_17:
  v12 = v44;
  v13 = v41;
  v14 = v43;

void sub_22B757508(void **a1, uint64_t a2, IMDScheduledMessageCoordinator *a3, void *a4)
{

  v8 = a4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = *a1;
  sub_22B768FFC(v8, a2, a3, isUniquelyReferenced_nonNull_native);
  a3, v10, v11, v12, v13, v14, v15, v16, v17, v18;
  *a1 = v19;
}

void sub_22B75759C(void **a1, uint64_t a2, IMDScheduledMessageCoordinator *a3, void *a4)
{

  v8 = a4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v21 = *a1;
  sub_22B768FFC(v8, a2, a3, isUniquelyReferenced_nonNull_native);
  a3, v10, v11, v12, v13, v14, v15, v16, v20, v21;
  *a1 = v22;
  v17 = a1[1];
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    a1[1] = v19;
  }
}

void sub_22B757644(uint64_t a1)
{
  v258 = sub_22B7DA968();
  v3 = *(v258 - 8);
  MEMORY[0x28223BE20](v258);
  v257 = &v254 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = a1 + 64;
  v6 = 1 << *(a1 + 32);
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  else
  {
    v7 = -1;
  }

  v8 = v7 & *(a1 + 64);
  v9 = OBJC_IVAR___IMDMutedChatListRebuilder_identifiersFound;
  v270 = (v1 + OBJC_IVAR___IMDMutedChatListRebuilder_findChat);
  v269 = OBJC_IVAR___IMDMutedChatListRebuilder_state;
  v266 = v1 + OBJC_IVAR___IMDMutedChatListRebuilder_muteIdentifiers;
  v256 = (v1 + OBJC_IVAR___IMDMutedChatListRebuilder_muteChat);
  v274 = a1;

  v273 = v9;
  swift_beginAccess();
  v10 = 0;
  v276 = 0;
  v11 = (v6 + 63) >> 6;
  v255 = (v3 + 8);
  v277 = v1;
  v272 = a1 + 64;
  v267 = v11;
  while (v8)
  {
LABEL_11:
    v20 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v21 = v20 | (v10 << 6);
    v22 = (*(v274 + 48) + 16 * v21);
    v23 = *v22;
    v24 = v22[1];
    v25 = *(*(v274 + 56) + 8 * v21);
    v26 = *(v277 + v273);
    v27 = *v26->messageStore;
    v275 = v25;
    if (v27)
    {
      sub_22B7DC668();

      v28 = v25;

      sub_22B7DB758();
      v29 = sub_22B7DC6B8();
      v37 = -1 << v26->queue[0];
      v38 = v29 & ~v37;
      if (((*&v26->isFirstFire[(v38 >> 3) & 0xFFFFFFFFFFFFFF8] >> v38) & 1) == 0)
      {
LABEL_20:
        v26, v30, v31, v32, v33, v34, v35, v36, v254, v255;
        goto LABEL_22;
      }

      v39 = ~v37;
      while (1)
      {
        v40 = (*v26->blocklistObserver + 16 * v38);
        v30 = v40[1];
        v41 = *v40 == v23 && v30 == v24;
        if (v41 || (sub_22B7DC518() & 1) != 0)
        {
          break;
        }

        v38 = (v38 + 1) & v39;
        if (((*&v26->isFirstFire[(v38 >> 3) & 0xFFFFFFFFFFFFFF8] >> v38) & 1) == 0)
        {
          goto LABEL_20;
        }
      }

      v26, v30, v31, v32, v33, v34, v35, v36, v254, v255;
      v24, v12, v13, v14, v15, v16, v17, v18, v254, v255;

      v5 = v272;
    }

    else
    {

      v42 = v25;
LABEL_22:
      v43 = *v270;

      v44 = v43(v23, v24);
      v24, v45, v46, v47, v48, v49, v50, v51, v254, v255;
      if (!v44)
      {
        v100 = *(v277 + v269);
        MEMORY[0x28223BE20](v52);
        os_unfair_lock_lock(v100 + 16);
        v101 = v276;
        sub_22B7590B0(v280);
        os_unfair_lock_unlock(v100 + 16);
        v281, v102, v103, v104, v105, v106, v107, v108, v254, v255;
        MEMORY[0x28223BE20](v109);
        os_unfair_lock_lock(v100 + 16);
        sub_22B758D70(v280);
        v276 = v101;
        os_unfair_lock_unlock(v100 + 16);
        v24, v110, v111, v112, v113, v114, v115, v116, v254, v255;
        goto LABEL_53;
      }

      v53 = [v44 guid];
      if (v53)
      {
        v271 = v44;
        v61 = v53;
        v62 = sub_22B7DB6A8();
        v279 = v63;

        v64 = *(v277 + v269);
        KeyPath = swift_getKeyPath();
        MEMORY[0x28223BE20](KeyPath);

        os_unfair_lock_lock((v64 + 64));
        v66 = v276;
        sub_22B759080((v64 + 16), v280);
        v276 = v66;
        v268 = v64;
        v11 = v267;
        os_unfair_lock_unlock((v64 + 64));

        v74 = v280[0];
        v75 = *(v280[0] + 16);
        v278 = v62;
        if (v75 && (sub_22B7DC668(), sub_22B7DB758(), v76 = sub_22B7DC6B8(), v77 = v278, v78 = -1 << v74->queue[0], v79 = v76 & ~v78, ((*&v74->isFirstFire[(v79 >> 3) & 0xFFFFFFFFFFFFFF8] >> v79) & 1) != 0))
        {
          v80 = ~v78;
          while (1)
          {
            v81 = (*v74->blocklistObserver + 16 * v79);
            v67 = v81[1];
            if (*v81 == v77 && v67 == v279)
            {
              break;
            }

            v83 = sub_22B7DC518();
            v77 = v278;
            if (v83)
            {
              break;
            }

            v79 = (v79 + 1) & v80;
            if (((*&v74->isFirstFire[(v79 >> 3) & 0xFFFFFFFFFFFFFF8] >> v79) & 1) == 0)
            {
              goto LABEL_33;
            }
          }

          v74, v67, v68, v69, v70, v71, v72, v73, v254, v255;
          v24, v239, v240, v241, v242, v243, v244, v245, v254, v255;

          v279, v246, v247, v248, v249, v250, v251, v252, v254, v255;
          v5 = v272;
        }

        else
        {
LABEL_33:
          v74, v67, v68, v69, v70, v71, v72, v73, v254, v255;
          MEMORY[0x28223BE20](v84);
          v85 = v268;
          os_unfair_lock_lock(v268 + 16);
          v86 = v276;
          sub_22B758E44(v280);
          v276 = v86;
          os_unfair_lock_unlock(v85 + 16);
          v281, v87, v88, v89, v90, v91, v92, v93, v254, v255;
          v94 = v271;
          LODWORD(v265) = [v271 style];
          v95 = *(v266 + 8);
          v263 = *v266;
          v96 = [v94 groupID];
          if (v96)
          {
            v97 = v96;
            v98 = sub_22B7DB6A8();
            v264 = v99;
          }

          else
          {
            v98 = 0;
            v264 = 0xE000000000000000;
          }

          v121 = [v94 domainIdentifiers];
          if (!v121)
          {
            goto LABEL_58;
          }

          v122 = v121;
          sub_22B6F0AD4(&unk_27D8CE9E0, &qword_22B7F99B0);
          v262 = sub_22B7DB588();

          v123 = [v94 participantHandles];
          if (!v123)
          {
            goto LABEL_59;
          }

          v131 = v123;
          v24, v124, v125, v126, v127, v128, v129, v130, v254, v255;
          v260 = sub_22B7DB918();

          v132 = [v94 lastAddressedLocalHandle];
          if (v132)
          {
            v133 = v132;
            v134 = sub_22B7DB6A8();
            v259 = v135;
          }

          else
          {
            v134 = 0;
            v259 = 0xE000000000000000;
          }

          v261 = v95;
          v136 = [v94 originalGroupID];
          if (v136)
          {
            v137 = v136;
            v138 = sub_22B7DB6A8();
            v140 = v139;
          }

          else
          {
            v138 = 0;
            v140 = 0xE000000000000000;
          }

          v141 = v98;
          v142 = [v271 chatIdentifier];
          if (v142)
          {
            v143 = v142;
            v144 = sub_22B7DB6A8();
            v146 = v145;
          }

          else
          {
            v144 = 0;
            v146 = 0xE000000000000000;
          }

          v253 = v140;
          v147 = v265;
          v148 = v141;
          v149 = v264;
          v265 = v140;
          v150 = v262;
          v151 = v260;
          v152 = v134;
          v153 = v259;
          v154 = v263(v147, v148, v264, v262, v260, v152, v259, v138, v253, v144, v146);
          v146, v155, v156, v157, v158, v159, v160, v161, v254, v255;
          v149, v162, v163, v164, v165, v166, v167, v168, v254, v255;
          v150, v169, v170, v171, v172, v173, v174, v175, v254, v255;
          v151, v176, v177, v178, v179, v180, v181, v182, v254, v255;
          v153, v183, v184, v185, v186, v187, v188, v189, v254, v255;
          v265, v190, v191, v192, v193, v194, v195, v196, v254, v255;
          if (*v154->messageStore)
          {
            v279, v197, v198, v199, v200, v201, v202, v203, v254, v255;
            swift_beginAccess();

            sub_22B758EA8(v204);
            swift_endAccess();
            v154, v205, v206, v207, v208, v209, v210, v211, v254, v255;
            v212 = v275;
            [v275 doubleValue];
            v213 = v257;
            sub_22B7DA8F8();
            (*v256)(v154, v213, 0);
            v154, v214, v215, v216, v217, v218, v219, v220, v254, v255;

            (*v255)(v213, v258);
            v5 = v272;
          }

          else
          {
            v154, v197, v198, v199, v200, v201, v202, v203, v254, v255;
            MEMORY[0x28223BE20](v221);
            v222 = v279;
            v223 = v268;
            os_unfair_lock_lock(v268 + 16);
            v224 = v276;
            sub_22B758F18(v280);
            v276 = v224;
            os_unfair_lock_unlock(v223 + 16);
            v222, v225, v226, v227, v228, v229, v230, v231, v254, v255;

LABEL_53:
            v281, v232, v233, v234, v235, v236, v237, v238, v254, v255;
            v5 = v272;
          }
        }
      }

      else
      {
        v24, v54, v55, v56, v57, v58, v59, v60, v254, v255;
        v117 = *(v277 + v269);
        os_unfair_lock_lock((v117 + 64));
        v118 = *(v117 + 40);
        v119 = __OFADD__(v118, 1);
        v120 = v118 + 1;
        if (v119)
        {
          goto LABEL_57;
        }

        *(v117 + 40) = v120;
        os_unfair_lock_unlock((v117 + 64));

        v5 = v272;
      }
    }
  }

  while (1)
  {
    v19 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v19 >= v11)
    {

      return;
    }

    v8 = *(v5 + 8 * v19);
    ++v10;
    if (v8)
    {
      v10 = v19;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
}

void sub_22B758094(void *a1)
{
  v2 = v1;
  if (qword_27D8CCC40 != -1)
  {
    swift_once();
  }

  v4 = sub_22B7DB2B8();
  sub_22B4CFA74(v4, qword_27D8CEB80);
  v5 = sub_22B7DB298();
  v6 = sub_22B7DBCB8();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_22B4CC000, v5, v6, "Completed muted chat list rebuild.", v7, 2u);
    MEMORY[0x231898D60](v7, -1, -1);
  }

  v8 = a1;
  v9 = sub_22B7DB298();
  v10 = sub_22B7DBCB8();
  p_prots = &OBJC_PROTOCOL___IMDaemonChatCountRequestProtocol.prots;
  if (os_log_type_enabled(v9, v10))
  {
    v12 = swift_slowAlloc();
    *v12 = 134218240;
    v13 = *&v8[OBJC_IVAR___IMDMutedChatListRebuilder_state];
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);

    os_unfair_lock_lock((v13 + 64));
    sub_22B759080((v13 + 16), &v108);
    if (v1)
    {

      goto LABEL_25;
    }

    os_unfair_lock_unlock((v13 + 64));

    v15 = *v108->messageStore;
    v108, v16, v17, v18, v19, v20, v21, v22, v96, v101;
    *(v12 + 4) = v15;

    *(v12 + 12) = 2048;
    v23 = swift_getKeyPath();
    MEMORY[0x28223BE20](v23);

    os_unfair_lock_lock((v13 + 64));
    sub_22B759098((v13 + 16), &v108);
    v2 = 0;
    os_unfair_lock_unlock((v13 + 64));

    *(v12 + 14) = v108;

    _os_log_impl(&dword_22B4CC000, v9, v10, "Processed %ld chats in %ld", v12, 0x16u);
    MEMORY[0x231898D60](v12, -1, -1);

    p_prots = (&OBJC_PROTOCOL___IMDaemonChatCountRequestProtocol + 16);
  }

  else
  {
  }

  v13 = *(&p_prots[378]->count + v8);
  v24 = swift_getKeyPath();
  MEMORY[0x28223BE20](v24);

  os_unfair_lock_lock((v13 + 64));
  sub_22B758CE0((v13 + 16), &v108);
  if (v2)
  {
LABEL_25:
    os_unfair_lock_unlock((v13 + 64));
    __break(1u);
    return;
  }

  os_unfair_lock_unlock((v13 + 64));

  v25 = *v108->messageStore;
  v108, v26, v27, v28, v29, v30, v31, v32, v96, v101;
  if (v25)
  {
    v33 = v8;
    v34 = sub_22B7DB298();
    v35 = sub_22B7DBCB8();

    if (os_log_type_enabled(v34, v35))
    {
      v103 = v8;
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v108 = v37;
      *v36 = 136315138;
      v38 = swift_getKeyPath();
      MEMORY[0x28223BE20](v38);

      os_unfair_lock_lock((v13 + 64));
      sub_22B759080((v13 + 16), &v107);
      os_unfair_lock_unlock((v13 + 64));

      v39 = v107;
      v40 = sub_22B7DBB08();
      v42 = v41;
      v39, v41, v43, v44, v45, v46, v47, v48, v97, v103;
      v49 = sub_22B4CFAAC(v40, v42, &v108);
      v42, v50, v51, v52, v53, v54, v55, v56, v98, v104;
      *(v36 + 4) = v49;
      _os_log_impl(&dword_22B4CC000, v34, v35, "Could not find a chat for the following identifiers: %s", v36, 0xCu);
      sub_22B4CFB78(v37);
      MEMORY[0x231898D60](v37, -1, -1);
      MEMORY[0x231898D60](v36, -1, -1);

      v8 = v102;
    }

    else
    {
    }
  }

  v57 = swift_getKeyPath();
  MEMORY[0x28223BE20](v57);

  os_unfair_lock_lock((v13 + 64));
  sub_22B758CFC((v13 + 16), &v108);
  os_unfair_lock_unlock((v13 + 64));

  if (v108 > 0)
  {
    v58 = v8;
    v59 = sub_22B7DB298();
    v60 = sub_22B7DBCB8();
    if (os_log_type_enabled(v59, v60))
    {
      v102 = v8;
      v61 = swift_slowAlloc();
      *v61 = 134217984;
      v62 = swift_getKeyPath();
      MEMORY[0x28223BE20](v62);

      os_unfair_lock_lock((v13 + 64));
      sub_22B759098((v13 + 16), &v108);
      os_unfair_lock_unlock((v13 + 64));

      *(v61 + 4) = v108;

      _os_log_impl(&dword_22B4CC000, v59, v60, "Found %ld chats without guids.", v61, 0xCu);
      MEMORY[0x231898D60](v61, -1, -1);
    }

    else
    {

      v59 = v58;
    }
  }

  v63 = swift_getKeyPath();
  MEMORY[0x28223BE20](v63);

  os_unfair_lock_lock((v13 + 64));
  sub_22B759080((v13 + 16), &v108);
  os_unfair_lock_unlock((v13 + 64));

  v64 = *v108->messageStore;
  v108, v65, v66, v67, v68, v69, v70, v71, v97, v102;
  if (v64)
  {
    v72 = v8;
    v73 = sub_22B7DB298();
    v74 = sub_22B7DBCB8();

    if (os_log_type_enabled(v73, v74))
    {
      v75 = swift_slowAlloc();
      v76 = swift_slowAlloc();
      v108 = v76;
      *v75 = 136315138;
      v77 = swift_getKeyPath();
      MEMORY[0x28223BE20](v77);

      os_unfair_lock_lock((v13 + 64));
      sub_22B759080((v13 + 16), &v107);
      os_unfair_lock_unlock((v13 + 64));

      v78 = v107;
      v79 = sub_22B7DBB08();
      v81 = v80;
      v78, v80, v82, v83, v84, v85, v86, v87, v99, v105;
      v88 = sub_22B4CFAAC(v79, v81, &v108);
      v81, v89, v90, v91, v92, v93, v94, v95, v100, v106;
      *(v75 + 4) = v88;
      _os_log_impl(&dword_22B4CC000, v73, v74, "Could not generate mute identifiers for the following chats: %s", v75, 0xCu);
      sub_22B4CFB78(v76);
      MEMORY[0x231898D60](v76, -1, -1);
      MEMORY[0x231898D60](v75, -1, -1);
    }
  }
}

uint64_t sub_22B758990(void *a1, uint64_t a2)
{
  v2 = *a1;
  v12 = a1[2];
  v13 = v2;
  v3 = a1[4];
  v10 = a1[5];
  v11 = v3;
  v4 = *(a1 + 1);
  v7 = *a1;
  v8 = v4;
  v9 = *(a1 + 2);
  sub_22B4D7E58(&v13, &v6, &qword_27D8CEBE0, &qword_22B7FB2C8);
  sub_22B4D7E58(&v12, &v6, &qword_27D8CEF00, &qword_22B7FBAD0);
  sub_22B4D7E58(&v11, &v6, &qword_27D8CEF00, &qword_22B7FBAD0);
  sub_22B4D7E58(&v10, &v6, &qword_27D8CEF00, &qword_22B7FBAD0);
  swift_getAtKeyPath();
  sub_22B4D0D64(&v13, &qword_27D8CEBE0, &qword_22B7FB2C8);
  sub_22B4D0D64(&v12, &qword_27D8CEF00, &qword_22B7FBAD0);
  sub_22B4D0D64(&v11, &qword_27D8CEF00, &qword_22B7FBAD0);
  sub_22B4D0D64(&v10, &qword_27D8CEF00, &qword_22B7FBAD0);
  return v6;
}

uint64_t sub_22B758BA8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_22B6F0D94;

  return sub_22B756C30(a1, v4, v5, v7, v6);
}

uint64_t sub_22B758D14@<X0>(_OWORD *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = a1[1];
  v7[0] = *a1;
  v7[1] = v5;
  v7[2] = a1[2];
  result = v4(v7);
  *a2 = result;
  return result;
}

uint64_t sub_22B758D88@<X0>(_BYTE *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);

  result = sub_22B7C9068(a1 + 1, v3, v4);
  *a1 = result & 1;
  return result;
}

uint64_t sub_22B758DEC@<X0>(_OWORD *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = a1[1];
  v7[0] = *a1;
  v7[1] = v5;
  v7[2] = a1[2];
  result = v4(v7);
  *a2 = result;
  return result;
}

uint64_t sub_22B758E44@<X0>(_BYTE *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);

  result = sub_22B7C9068(a1 + 1, v3, v4);
  *a1 = result & 1;
  return result;
}

void sub_22B758EA8(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = (result + 40);
    do
    {
      v4 = *(v2 - 1);
      v3 = *v2;

      sub_22B7C9068(&v12, v4, v3);
      v13, v5, v6, v7, v8, v9, v10, v11, v12, v13;
      v2 += 2;
      --v1;
    }

    while (v1);
  }
}

uint64_t sub_22B758F18@<X0>(_BYTE *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);

  result = sub_22B7C9068(a1 + 1, v3, v4);
  *a1 = result & 1;
  return result;
}

__n128 sub_22B758FC8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_22B758FDC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_22B759024(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_22B7590CC()
{
  v0 = sub_22B77A2DC(&unk_283F1BA20);
  result = swift_arrayDestroy();
  qword_281422728 = v0;
  return result;
}

uint64_t sub_22B759118(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[12] = a4;
  v5[13] = v4;
  v5[10] = a2;
  v5[11] = a3;
  v5[9] = a1;
  return MEMORY[0x2822009F8](sub_22B759140, v4, 0);
}

uint64_t sub_22B759140()
{
  v1 = v0[13];
  v2 = IMGetDaemonProtocol();
  v3 = objc_allocWithZone(MEMORY[0x277D1AA20]);
  v0[6] = sub_22B7595EC;
  v0[7] = v1;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_22B4D1BA8;
  v0[5] = &unk_283F1E000;
  v4 = _Block_copy(v0 + 2);

  v0[14] = [v3 initWithProtocol:v2 forwardingHandler:v4];

  _Block_release(v4);

  v0[8] = &unk_283FBD3A0;
  v5 = swift_dynamicCastObjCProtocolUnconditional();
  v6 = swift_task_alloc();
  v0[15] = v6;
  *v6 = v0;
  v6[1] = sub_22B7592E4;
  v7 = v0[11];
  v8 = v0[12];
  v9 = v0[9];
  v10 = v0[10];

  return MEMORY[0x282173B40](v9, v10, v5, v7, v8);
}

uint64_t sub_22B7592E4()
{
  v2 = *v1;
  *(v2 + 128) = v0;

  if (v0)
  {
    v3 = *(v2 + 104);

    return MEMORY[0x2822009F8](sub_22B759420, v3, 0);
  }

  else
  {

    v4 = *(v2 + 8);

    return v4();
  }
}

uint64_t sub_22B759420()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22B7594A4()
{
  v1 = v0[9];
  v2 = IMGetDaemonProtocol();
  v3 = objc_allocWithZone(MEMORY[0x277D1AA20]);
  v0[6] = sub_22B75ADD0;
  v0[7] = v1;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_22B4D1BA8;
  v0[5] = &unk_283F1E028;
  v4 = _Block_copy(v0 + 2);

  [v3 initWithProtocol:v2 forwardingHandler:v4];

  _Block_release(v4);

  v0[8] = &unk_283FBD3A0;
  v5 = swift_dynamicCastObjCProtocolUnconditional();
  v6 = v0[1];

  return v6(v5);
}

void (*sub_22B759618(uint64_t *a1))(IMDScheduledMessageCoordinator **a1, const char *a2, uint64_t a3, void *a4, uint64_t a5, void *a6, void *a7, void *a8, void *a9, void *a10)
{
  if (qword_28141F5D8 != -1)
  {
    swift_once();
  }

  v2 = qword_281422728;
  v3 = *(qword_281422728 + 16);
  if (!v3)
  {
    goto LABEL_6;
  }

  v4 = sub_22B759CB4(*(qword_281422728 + 16), 0);
  v5 = sub_22B75A414(&v8, v4 + 4, v3, v2);
  v6 = v8;

  sub_22B705E3C(v6);
  if (v5 != v3)
  {
    __break(1u);
LABEL_6:
    v4 = MEMORY[0x277D84F90];
  }

  *a1 = v4;
  return sub_22B759728;
}

id IncomingIntentClientConnectionListener.init(requestHandlers:)(IMDScheduledMessageCoordinator *a1)
{
  v2 = v1;
  swift_defaultActor_initialize();
  v4 = type metadata accessor for IntentFileSafeRenderProvider();
  v5 = swift_allocObject();
  v27 = v4;
  v6 = sub_22B75A870(qword_2814201E8, type metadata accessor for IntentFileSafeRenderProvider, &protocol conformance descriptor for IntentFileSafeRenderProvider);
  v28 = v6;
  v26 = v5;
  v7 = type metadata accessor for ChatContactsProvider();
  v8 = swift_allocObject();
  v24 = v7;
  v9 = sub_22B75A870(&unk_281420930, type metadata accessor for ChatContactsProvider, &protocol conformance descriptor for ChatContactsProvider);
  v25 = v9;
  v23 = v8;
  sub_22B7DAFB8();
  swift_allocObject();
  v2[14] = sub_22B7DAFA8();
  if (qword_28141F5D8 != -1)
  {
    swift_once();
  }

  v10 = qword_281422728;
  v2[15] = a1;
  type metadata accessor for IntentClientConnectionRouteProvider();
  v11 = swift_allocObject();
  v27 = v4;
  v28 = v6;
  v26 = swift_allocObject();
  v24 = v7;
  v25 = v9;
  v23 = swift_allocObject();
  v12 = objc_allocWithZone(sub_22B7DAEE8());

  *(v11 + 16) = sub_22B7DAED8();
  v13 = sub_22B4D0A08(v11, 268476932, a1, v10, type metadata accessor for IntentClientConnectionRouteProvider, &off_283F20C70, sub_22B4D0D5C);
  a1, v14, v15, v16, v17, v18, v19, v20, v22.receiver, v22.super_class;
  v2[16] = v13;
  v22.receiver = v2;
  v22.super_class = type metadata accessor for IncomingIntentClientConnectionListener();
  return [(IMDScheduledMessageCoordinator *)&v22 init];
}

void IncomingIntentClientConnectionListener.__allocating_init()()
{
  swift_allocObject();
  swift_defaultActor_initialize();
  _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
}

void IncomingIntentClientConnectionListener.init()()
{
  swift_defaultActor_initialize();
  _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
}

void *IncomingIntentClientConnectionListener.deinit()
{

  *(v0 + 120), v1, v2, v3, v4, v5, v6, v7, vars0, vars8;

  swift_defaultActor_destroy();
  return v0;
}

uint64_t IncomingIntentClientConnectionListener.__deallocating_deinit()
{

  *(v0 + 120), v1, v2, v3, v4, v5, v6, v7, vars0, vars8;

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_22B759B4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_22B6F0D94;

  return sub_22B759118(a1, a2, a3, a4);
}

void *sub_22B759C38(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  if (a2 <= a1)
  {
    v4 = a1;
  }

  else
  {
    v4 = a2;
  }

  if (!v4)
  {
    return MEMORY[0x277D84F90];
  }

  sub_22B6F0AD4(a3, a4);
  v6 = swift_allocObject();
  v7 = j__malloc_size(v6);
  result = v6;
  v10 = v7 - 32;
  v9 = v7 < 32;
  v11 = v7 - 25;
  if (!v9)
  {
    v11 = v10;
  }

  v6[2] = a1;
  v6[3] = 2 * (v11 >> 3);
  return result;
}

void *sub_22B759CB4(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  sub_22B6F0AD4(&unk_27D8CEA00, &qword_22B7F98C8);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

void *sub_22B759D38(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  sub_22B6F0AD4(&unk_27D8CD970, &qword_22B7FB330);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

void *sub_22B759DC0(void *result, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (!a2)
  {
    v6 = 0;
LABEL_40:
    *result = a4;
    result[1] = a5;
    result[2] = a6;
    result[3] = v6;
    return v6;
  }

  if (!a3)
  {
LABEL_38:
    v6 = a3;
    goto LABEL_40;
  }

  if (a3 < 0)
  {
    goto LABEL_46;
  }

  v6 = a6;
  if (!a6)
  {
    goto LABEL_40;
  }

  v7 = 64 - a5;
  if (__OFSUB__(64, a5))
  {
    goto LABEL_47;
  }

  v8 = 0;
  v9 = -1 - a5;
  v10 = 1;
  while (1)
  {
    v11 = v8 >= 0 ? v8 : v8 + 63;
    if (v8 < -63)
    {
      break;
    }

    if (v11 >> 6 >= *(a4 + 16))
    {
      goto LABEL_42;
    }

    v12 = 64 - (v8 - (v11 & 0xFFFFFFFFFFFFFFC0));
    v13 = __OFSUB__(v12, a5);
    v14 = v12 - a5;
    if (v13)
    {
      goto LABEL_43;
    }

    if (v14 > -65 && v14 <= 64)
    {
      v17 = *(a4 + 32 + 8 * (v11 >> 6));
      if (v14 < 0)
      {
        if (v14 != -64)
        {
          v16 = v17 >> -v14;
          if (v9 <= 0xFFFFFFFFFFFFFF7ELL)
          {
            goto LABEL_22;
          }

          goto LABEL_27;
        }
      }

      else if (v14 != 64)
      {
        v16 = v17 << v14;
        if (v9 <= 0xFFFFFFFFFFFFFF7ELL)
        {
          goto LABEL_22;
        }

LABEL_27:
        if ((v7 & 0x8000000000000000) == 0)
        {
          if (v7 >= 0x40)
          {
            goto LABEL_22;
          }

LABEL_29:
          v15 = v16 >> v7;
          goto LABEL_30;
        }

        if (v7 <= 0xFFFFFFFFFFFFFFC0)
        {
LABEL_22:
          v15 = 0;
          goto LABEL_30;
        }

LABEL_36:
        v15 = v16 << (a5 - 64);
        goto LABEL_30;
      }
    }

    if (v9 < 0xFFFFFFFFFFFFFF7FLL)
    {
      goto LABEL_22;
    }

    if ((v7 & 0x8000000000000000) != 0)
    {
      v15 = 0;
      v16 = 0;
      if (v7 > 0xFFFFFFFFFFFFFFC0)
      {
        goto LABEL_36;
      }
    }

    else
    {
      v15 = 0;
      v16 = 0;
      if (v7 < 0x40)
      {
        goto LABEL_29;
      }
    }

LABEL_30:
    *a2 = v15;
    if (a3 == v10)
    {
      goto LABEL_38;
    }

    if (__OFADD__(v10, 1))
    {
      goto LABEL_44;
    }

    if (a6 == v10)
    {
      v6 = a6;
      goto LABEL_40;
    }

    ++a2;
    v8 = v10 * a5;
    v18 = (v10 * a5) >> 64 == (v10 * a5) >> 63;
    ++v10;
    if (!v18)
    {
      goto LABEL_45;
    }
  }

  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
  return result;
}

void *sub_22B759F48(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = *(*(a4 + 56) + ((v12 << 9) | (8 * v17)));
      *v11 = v18;
      if (v14 == v10)
      {
        v22 = v18;
        goto LABEL_24;
      }

      ++v11;
      v19 = v18;
      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v21 = v12 + 1;
    }

    else
    {
      v21 = (63 - v7) >> 6;
    }

    v12 = v21 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

unint64_t sub_22B75A09C(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v22 = result;
  if (!a2)
  {
LABEL_35:
    v14 = 0;
    v17 = a5;
LABEL_38:
    *v22 = a4;
    v22[1] = a5;
    v22[2] = a6;
    v22[3] = a7;
    v22[4] = v17;
    return v14;
  }

  if (!a3)
  {
    v17 = a5;
    v14 = 0;
    goto LABEL_38;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a4 >> 14;
    v12 = a5 >> 14;
    if (a5 >> 14 != a4 >> 14)
    {
      v14 = 0;
      v15 = (a6 >> 59) & 1;
      if ((a7 & 0x1000000000000000) == 0)
      {
        LOBYTE(v15) = 1;
      }

      v16 = 4 << v15;
      v23 = a4 >> 14;
      v24 = a3 - 1;
      while (1)
      {
        sub_22B7DC048();
        v17 = a5;
        if ((a5 & 0xC) == v16 || (a5 & 1) == 0)
        {
          result = a5;
          if ((a5 & 0xC) == v16)
          {
            result = sub_22B7C1398(a5, a6, a7);
          }

          if (result >> 14 < v11 || result >> 14 >= v12)
          {
            goto LABEL_41;
          }

          if ((result & 1) == 0)
          {
            sub_22B7C1670(result, a6, a7);
          }
        }

        else
        {
          v20 = a5 >> 14 < v11 || a5 >> 14 >= v12;
          result = a5;
          if (v20)
          {
            goto LABEL_40;
          }
        }

        if ((a7 & 0x1000000000000000) != 0)
        {
          result = sub_22B7DC2D8();
        }

        else
        {
          if ((a7 & 0x2000000000000000) == 0 && (a6 & 0x1000000000000000) == 0)
          {
            sub_22B7DC328();
          }

          result = sub_22B7DC338();
          v11 = v23;
        }

        *(a2 + 4 * v14) = result;
        if (v24 == v14)
        {
          v14 = a3;
          goto LABEL_38;
        }

        if (__OFADD__(v14 + 1, 1))
        {
          break;
        }

        ++v14;
        if (v11 == a5 >> 14)
        {
          goto LABEL_38;
        }
      }

      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
      goto LABEL_42;
    }

    goto LABEL_35;
  }

LABEL_42:
  __break(1u);
  return result;
}

void *sub_22B75A2BC(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_22B75A414(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_22B75A56C(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 56;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 56);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2 = *(*(a4 + 48) + ((v9 << 9) | (8 * v14)));
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      ++a2;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v16 = v9 + 1;
    }

    else
    {
      v16 = (63 - v6) >> 6;
    }

    v9 = v16 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}