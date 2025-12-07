void *sub_1ED0()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 24);
  }

  else
  {
    v1 = sub_1F30(v0);
    *(v0 + 24) = v1;
  }

  return v1;
}

void *sub_1F30(uint64_t a1)
{
  v2 = sub_7E8C(&qword_392D8, &qword_2A118);
  __chkstk_darwin(v2 - 8);
  v23 = &v22 - v3;
  v4 = sub_28BC8();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v22 - v9;
  v11 = sub_28268();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_28178();
  v15 = sub_28258();
  v16 = sub_29108();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v22 = a1;
    *v17 = 0;
    _os_log_impl(&dword_0, v15, v16, "initializing sync controller", v17, 2u);
    a1 = v22;
  }

  (*(v12 + 8))(v14, v11);
  result = *(a1 + 32);
  if (result)
  {
    v19 = [result privateCloudDatabase];
    sub_7298(v23);
    sub_88D8(&qword_392E0, v20, type metadata accessor for GuestPassCloudSyncController, &unk_2A030);
    swift_unknownObjectRetain();
    sub_28BB8();
    sub_28BA8();
    (*(v5 + 16))(v8, v10, v4);
    sub_28DA8();
    swift_allocObject();
    v21 = sub_28DB8();
    (*(v5 + 8))(v10, v4);
    return v21;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2290@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_7E8C(&qword_39208, &unk_2A090);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v15 - v7;
  v9 = [*(v1 + 16) guestPassLocalStorageURL];
  if (v9)
  {
    v10 = v9;
    sub_27FA8();

    v11 = sub_27FD8();
    (*(*(v11 - 8) + 56))(v6, 0, 1, v11);
  }

  else
  {
    v11 = sub_27FD8();
    (*(*(v11 - 8) + 56))(v6, 1, 1, v11);
  }

  sub_98BC(v6, v8);
  sub_27FD8();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v8, 1, v11) == 1)
  {
    sub_925C(v8, &qword_39208, &unk_2A090);
    v13 = 1;
  }

  else
  {
    sub_27F98();
    (*(v12 + 8))(v8, v11);
    v13 = 0;
  }

  return (*(v12 + 56))(a1, v13, 1, v11);
}

uint64_t sub_24DC(void *a1)
{
  v2 = *(v1[19] + 32);
  if (v2)
  {
    v1[2] = v1;
    v1[7] = v1 + 18;
    v1[3] = sub_2600;
    v3 = swift_continuation_init();
    v1[17] = sub_7E8C(&qword_392C8, &qword_2A108);
    v1[10] = _NSConcreteStackBlock;
    v1[11] = 1107296256;
    v1[12] = sub_2800;
    v1[13] = &unk_35C40;
    v1[14] = v3;
    [v2 accountInfoWithCompletionHandler:v1 + 10];
    a1 = v1 + 2;
  }

  else
  {
    __break(1u);
  }

  return _swift_continuation_await(a1);
}

uint64_t sub_2600()
{
  v1 = *(*v0 + 48);
  *(*v0 + 160) = v1;
  if (v1)
  {
    v2 = sub_2788;
  }

  else
  {
    v2 = sub_2710;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_2710()
{
  v1 = *(v0 + 144);
  v2 = [v1 supportsDeviceToDeviceEncryption];

  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_2788()
{
  swift_willThrow();

  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t sub_2800(uint64_t a1, void *a2, void *a3)
{
  v5 = sub_9878((a1 + 32), *(a1 + 56));
  v6 = *v5;
  if (a3)
  {
    sub_7E8C(&qword_392D0, &qword_2A110);
    v7 = swift_allocError();
    *v8 = a3;
    v9 = a3;

    return _swift_continuation_throwingResumeWithError(v6, v7);
  }

  else
  {
    if (a2)
    {
      **(v6[8] + 40) = a2;
      v10 = a2;
      v5 = v6;
    }

    else
    {
      __break(1u);
    }

    return _swift_continuation_throwingResume(v5);
  }
}

void *sub_28D8()
{
  v1 = v0;
  type metadata accessor for AXGuestPassServer(0);
  v2 = sub_AD5C();
  v3 = *&v2[OBJC_IVAR___AXGuestPassServer_settingsProfileManager];

  v1[2] = v3;
  v1[3] = 0;
  v1[5] = 0;
  v4 = objc_allocWithZone(CKRecordZone);
  v5 = sub_28E88();
  v6 = [v4 initWithZoneName:v5];

  v1[6] = v6;
  v7 = [objc_allocWithZone(CKContainerOptions) init];
  v8 = sub_28E88();
  [v7 setApplicationBundleIdentifierOverrideForPushTopicGeneration:v8];

  [v7 setUseZoneWidePCS:1];
  v9 = objc_allocWithZone(CKContainerID);
  v10 = sub_28E88();
  v11 = [v9 initWithContainerIdentifier:v10 environment:2];

  v12 = [objc_allocWithZone(CKContainer) initWithContainerID:v11 options:v7];
  v1[4] = v12;
  return v1;
}

Class sub_2A78()
{
  v1 = v0;
  v2 = sub_7E8C(&qword_391D8, &qword_2A078);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = &v25[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v3);
  v7 = &v25[-v6];
  v8 = sub_28058();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v25[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_290A8();
  v12 = sub_28FE8();
  v13 = direct field offset for AXSettings.guestPass;
  swift_beginAccess();
  v14 = *&v12[v13];

  sub_28FF8();
  v15 = *(v9 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    sub_28048();
    if (v15(v7, 1, v8) != 1)
    {
      sub_925C(v7, &qword_391D8, &qword_2A078);
    }
  }

  else
  {
    (*(v9 + 32))(v11, v7, v8);
  }

  v16 = sub_28FE8();
  v17 = direct field offset for AXSettings.guestPass;
  swift_beginAccess();
  v18 = *&v16[v17];

  (*(v9 + 16))(v5, v11, v8);
  (*(v9 + 56))(v5, 0, 1, v8);
  sub_29008();

  sub_9818(0, &qword_392C0, CKRecordID_ptr);
  v19 = sub_28038();
  v21 = v20;
  v22.super.isa = [*(v1 + 48) zoneID];
  v26._countAndFlagsBits = v19;
  v26._object = v21;
  isa = sub_290F8(v26, v22).super.isa;
  (*(v9 + 8))(v11, v8);
  return isa;
}

uint64_t sub_2DAC()
{
  sub_28F78();
  *(v0 + 24) = sub_28F68();
  v2 = sub_28F58();

  return _swift_task_switch(sub_2E40, v2, v1);
}

uint64_t sub_2E40()
{

  *(v0 + 32) = sub_1ED0();

  return _swift_task_switch(sub_2EB0, 0, 0);
}

uint64_t sub_2EB0()
{
  v1 = *(v0 + 16);
  sub_28D98();

  sub_7E8C(&qword_392A0, &qword_2A680);
  v2 = sub_28C58();
  v3 = *(v2 - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = swift_allocObject();
  *(v5 + 1) = xmmword_29DC0;
  *&v5[v4] = sub_2A78();
  (*(v3 + 104))(&v5[v4], enum case for CKSyncEngine.PendingRecordZoneChange.deleteRecord(_:), v2);
  v6._rawValue = v5;
  sub_28D88(v6);

  v7 = *(v1 + 40);
  *(v1 + 40) = 0;

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_3024(uint64_t a1, uint64_t a2)
{
  v3[12] = a2;
  v3[13] = v2;
  v3[11] = a1;
  v4 = sub_28D38();
  v3[14] = v4;
  v3[15] = *(v4 - 8);
  v3[16] = swift_task_alloc();
  v5 = sub_28058();
  v3[17] = v5;
  v3[18] = *(v5 - 8);
  v3[19] = swift_task_alloc();
  sub_7E8C(&qword_391D8, &qword_2A078);
  v3[20] = swift_task_alloc();
  v6 = sub_28CD8();
  v3[21] = v6;
  v3[22] = *(v6 - 8);
  v3[23] = swift_task_alloc();
  v3[24] = swift_task_alloc();
  v3[25] = swift_task_alloc();
  v7 = sub_28D08();
  v3[26] = v7;
  v3[27] = *(v7 - 8);
  v3[28] = swift_task_alloc();
  sub_7E8C(&qword_39288, &qword_2A540);
  v3[29] = swift_task_alloc();
  v3[30] = swift_task_alloc();
  v3[31] = swift_task_alloc();
  v8 = sub_28268();
  v3[32] = v8;
  v3[33] = *(v8 - 8);
  v3[34] = swift_task_alloc();
  v3[35] = swift_task_alloc();
  v3[36] = swift_task_alloc();
  v3[37] = swift_task_alloc();
  v3[38] = swift_task_alloc();
  v3[39] = swift_task_alloc();
  v9 = sub_28C88();
  v3[40] = v9;
  v3[41] = *(v9 - 8);
  v3[42] = swift_task_alloc();
  v10 = sub_28CA8();
  v3[43] = v10;
  v3[44] = *(v10 - 8);
  v3[45] = swift_task_alloc();
  v3[46] = swift_task_alloc();
  v11 = sub_28D58();
  v3[47] = v11;
  v3[48] = *(v11 - 8);
  v3[49] = swift_task_alloc();
  v12 = sub_28C78();
  v3[50] = v12;
  v3[51] = *(v12 - 8);
  v3[52] = swift_task_alloc();
  v13 = sub_28D48();
  v3[53] = v13;
  v3[54] = *(v13 - 8);
  v3[55] = swift_task_alloc();
  v3[56] = swift_task_alloc();

  return _swift_task_switch(sub_3518, 0, 0);
}

uint64_t sub_3518()
{
  v202 = v0;
  v1 = v0;
  v2 = v0[56];
  v3 = v0[53];
  v4 = v0[54];
  v5 = *(v4 + 16);
  (v5)(v2, v0[11], v3);
  v6 = (*(v4 + 88))(v2, v3);
  v7 = v0[53];
  if (v6 == enum case for CKSyncEngine.Event.stateUpdate(_:))
  {
    v8 = v0[56];
    v10 = v0[51];
    v9 = v1[52];
    v12 = v1[49];
    v11 = v1[50];
    v13 = v1[47];
    v14 = v1[48];
    (*(v1[54] + 96))(v1[56], v7);
    (*(v10 + 32))(v9, v8, v11);
    sub_28C68();
    sub_6EA8(v12);
    (*(v14 + 8))(v12, v13);
LABEL_3:
    (*(v10 + 8))(v9, v11);
    goto LABEL_60;
  }

  if (v6 == enum case for CKSyncEngine.Event.accountChange(_:))
  {
    v15 = v0[56];
    v16 = v0[46];
    v17 = v0[43];
    v18 = v0[44];
    v20 = v1[41];
    v19 = v1[42];
    v21 = v1[40];
    (*(v1[54] + 96))(v1[56], v7);
    (*(v18 + 32))(v16, v15, v17);
    sub_28C98();
    v22 = (*(v20 + 88))(v19, v21);
    if (v22 == enum case for CKSyncEngine.Event.AccountChange.ChangeType.signIn(_:))
    {
      v23 = v1[46];
      v24 = v1[43];
      v25 = v1[44];
      v26 = v1[31];
      v27 = v1[12];
      (*(v1[41] + 8))(v1[42], v1[40]);
      v28 = sub_28F98();
      (*(*(v28 - 8) + 56))(v26, 1, 1, v28);
      v29 = swift_allocObject();
      v29[2] = 0;
      v29[3] = 0;
      v29[4] = v27;

      sub_501C(0, 0, v26, &unk_2A0D8, v29);

      sub_925C(v26, &qword_39288, &qword_2A540);
      (*(v25 + 8))(v23, v24);
      goto LABEL_60;
    }

    if (v22 == enum case for CKSyncEngine.Event.AccountChange.ChangeType.signOut(_:) || v22 == enum case for CKSyncEngine.Event.AccountChange.ChangeType.switchAccounts(_:))
    {
      v53 = v1[13];
      (*(v1[41] + 8))(v1[42], v1[40]);
      [*(v53 + 16) deleteAllGuestPassProfiles];
      sub_28178();
      v54 = sub_28258();
      v55 = sub_29138();
      if (os_log_type_enabled(v54, v55))
      {
        v56 = swift_slowAlloc();
        *v56 = 0;
        _os_log_impl(&dword_0, v54, v55, "Turning off iCloud sync because iCloud account was signed out", v56, 2u);
      }

      v9 = v1[46];
      v11 = v1[43];
      v10 = v1[44];
      v57 = v1[39];
      v58 = v1[32];
      v59 = v1[33];

      (*(v59 + 8))(v57, v58);
      sub_290A8();
      v60 = sub_28FE8();
      [v60 setGuestPassShouldSyncToiCloud:0];

      goto LABEL_3;
    }

    v32 = v1[45];
    v33 = v1[46];
    v34 = v1[43];
    v35 = v1[44];
    sub_28178();
    (*(v35 + 16))(v32, v33, v34);
    v36 = sub_28258();
    v37 = sub_29128();
    v38 = os_log_type_enabled(v36, v37);
    v39 = v1[45];
    v40 = v1[46];
    v41 = v1[43];
    v42 = v1[44];
    v43 = v1[38];
    v44 = v1[33];
    v199 = v1[32];
    if (v38)
    {
      v195 = v1[38];
      v45 = swift_slowAlloc();
      v178 = v1;
      v46 = swift_slowAlloc();
      v201[0] = v46;
      *v45 = 136315138;
      sub_88D8(&qword_392A8, 255, &type metadata accessor for CKSyncEngine.Event.AccountChange, &protocol conformance descriptor for CKSyncEngine.Event.AccountChange);
      v189 = v37;
      v47 = sub_292F8();
      v192 = v40;
      v49 = v48;
      v50 = *(v42 + 8);
      v50(v39, v41);
      v51 = sub_89C0(v47, v49, v201);

      *(v45 + 4) = v51;
      _os_log_impl(&dword_0, v36, v189, "Unknown acocunt change event %s", v45, 0xCu);
      sub_8F68(v46);
      v1 = v178;

      (*(v44 + 8))(v195, v199);
      v50(v192, v41);
    }

    else
    {

      v150 = *(v42 + 8);
      v150(v39, v41);
      (*(v44 + 8))(v43, v199);
      v150(v40, v41);
    }

    v31 = v1[41];
    v30 = v1[42];
    v7 = v1[40];
    goto LABEL_59;
  }

  if (v6 == enum case for CKSyncEngine.Event.fetchedDatabaseChanges(_:))
  {
    goto LABEL_8;
  }

  if (v6 == enum case for CKSyncEngine.Event.fetchedRecordZoneChanges(_:))
  {
    v52 = v0[56];
    v10 = v0[15];
    v9 = v1[16];
    v11 = v1[14];
    (*(v1[54] + 96))(v1[56], v7);
    (*(v10 + 32))(v9, v52, v11);
    sub_6574(v9);
    goto LABEL_3;
  }

  if (v6 == enum case for CKSyncEngine.Event.sentDatabaseChanges(_:))
  {
    goto LABEL_8;
  }

  if (v6 == enum case for CKSyncEngine.Event.sentRecordZoneChanges(_:))
  {
    v61 = v0[56];
    v63 = v0[27];
    v62 = v1[28];
    v64 = v1[26];
    (*(v1[54] + 96))(v1[56], v7);
    (*(v63 + 32))(v62, v61, v64);
    v65 = v62;
    v66 = sub_28CE8();
    v188 = *(v66 + 16);
    v190 = v66;
    if (v188)
    {
      v67 = 0;
      v177 = v1 + 2;
      v68 = v1[22];
      v187 = v66 + ((*(v68 + 80) + 32) & ~*(v68 + 80));
      v185 = (v1[33] + 8);
      v186 = (v68 + 8);
      v69 = v1[18];
      v181 = (v69 + 48);
      v176 = (v69 + 16);
      v174 = v1[13];
      v175 = (v69 + 8);
      v173 = enum case for CKSyncEngine.PendingRecordZoneChange.saveRecord(_:);
      v182 = v68;
      v179 = v1;
      do
      {
        if (v67 >= *(v190 + 16))
        {
          __break(1u);
          goto LABEL_84;
        }

        v71 = *(v68 + 16);
        v71(v1[25], v187 + *(v68 + 72) * v67, v1[21]);
        v72 = sub_28CC8();
        v73 = sub_28CB8();
        v1[9] = v73;
        type metadata accessor for CKError(0);
        sub_88D8(&qword_39298, 255, type metadata accessor for CKError, &unk_2A318);
        sub_27F38();

        v74 = v1[10];
        if (v74 <= 0x1A)
        {
          if (((1 << v74) & 0x900258) != 0)
          {
            v65 = v1[36];
            v76 = v1[24];
            v75 = v1[25];
            v77 = v1[21];
            sub_28178();
            v71(v76, v75, v77);
            v78 = v72;
            v5 = sub_28258();
            v79 = sub_29118();

            v80 = os_log_type_enabled(v5, v79);
            v193 = v1[32];
            v196 = v1[36];
            v81 = v1[24];
            v82 = v1[25];
            v83 = v1[21];
            if (v80)
            {
              v84 = swift_slowAlloc();
              v184 = v82;
              v85 = swift_slowAlloc();
              *v84 = 138412546;
              v86 = [v78 recordID];
              *(v84 + 4) = v86;
              *v85 = v86;
              *(v84 + 12) = 2112;
              sub_28CB8();
              v87 = v67;
              v88 = _swift_stdlib_bridgeErrorToNSError();
              v183 = v78;
              v65 = *v186;
              (*v186)(v81, v83);
              *(v84 + 14) = v88;
              v85[1] = v88;
              v67 = v87;
              v68 = v182;
              v89 = v79;
              v90 = v5;
              v91 = "Retryable error saving %@: %@";
LABEL_30:
              _os_log_impl(&dword_0, v90, v89, v91, v84, 0x16u);
              sub_7E8C(&qword_391E8, &qword_2A080);
              swift_arrayDestroy();

              (*v185)(v196, v193);
              (v65)(v184, v83);
              goto LABEL_23;
            }

            goto LABEL_22;
          }

          if (v74 == 14)
          {
            v197 = v67;
            v101 = v1[20];
            v102 = v1[17];
            v103 = [v72 recordID];
            v104 = [v103 recordName];

            v5 = sub_28EC8();
            v106 = v105;

            sub_290A8();
            v107 = sub_28FE8();
            v108 = direct field offset for AXSettings.guestPass;
            swift_beginAccess();
            v109 = *&v107[v108];

            sub_28FF8();
            v110 = (*v181)(v101, 1, v102);
            v65 = v1[20];
            if (v110)
            {
              sub_925C(v1[20], &qword_391D8, &qword_2A078);

              v67 = v197;
              v68 = v182;
              goto LABEL_37;
            }

            v127 = v1[19];
            v128 = v1[17];
            (*v176)(v127, v1[20], v128);
            sub_925C(v65, &qword_391D8, &qword_2A078);
            v129 = sub_28038();
            v65 = v130;
            (*v175)(v127, v128);
            if (v5 == v129 && v106 == v65)
            {

              v68 = v182;
              goto LABEL_51;
            }

            v131 = sub_29308();

            v67 = v197;
            v68 = v182;
            if (v131)
            {
LABEL_51:
              v132 = sub_28CB8();
              v133 = sub_28E28();

              v134 = *(v174 + 40);
              *(v174 + 40) = v133;
              v135 = v133;

              if (v133)
              {
                v136 = [v135 encryptedValues];
                v137 = [v72 encryptedValues];
                v138 = sub_28E88();
                v139 = [v137 objectForKeyedSubscript:v138];
                swift_unknownObjectRelease();

                v140 = sub_28E88();
                [v136 setObject:v139 forKeyedSubscript:v140];

                swift_unknownObjectRelease();
                swift_unknownObjectRelease();
              }

              sub_28D98();
              sub_7E8C(&qword_392A0, &qword_2A680);
              v141 = sub_28C58();
              v142 = *(v141 - 8);
              v143 = (*(v142 + 80) + 32) & ~*(v142 + 80);
              v144 = swift_allocObject();
              *(v144 + 1) = xmmword_29DC0;
              *&v144[v143] = [v72 recordID];
              (*(v142 + 104))(&v144[v143], v173, v141);
              v145._rawValue = v144;
              sub_28D88(v145);

              sub_28178();
              v146 = sub_28258();
              v5 = sub_29108();
              v147 = os_log_type_enabled(v146, v5);
              v65 = v1[37];
              v148 = v1[32];
              if (v147)
              {
                v149 = swift_slowAlloc();
                *v149 = 0;
                _os_log_impl(&dword_0, v146, v5, "Tried to save a record that already existed on the server, updating the server record instead", v149, 2u);
              }

              (*v185)(v65, v148);
              v67 = v197;
            }

            else
            {
LABEL_37:
            }

            (*v186)(v1[25], v1[21]);
            goto LABEL_24;
          }

          if (v74 == 26)
          {
            v92 = v67;
            v94 = v1[29];
            v93 = v1[30];
            v95 = v1[12];
            v96 = sub_28F98();
            v97 = *(v96 - 8);
            (*(v97 + 56))(v93, 1, 1, v96);
            v98 = swift_allocObject();
            v98[2] = 0;
            v98[3] = 0;
            v98[4] = v72;
            v98[5] = v95;
            sub_91EC(v93, v94);
            LODWORD(v94) = (*(v97 + 48))(v94, 1, v96);

            v99 = v72;

            v100 = v1[29];
            if (v94 == 1)
            {
              sub_925C(v1[29], &qword_39288, &qword_2A540);
            }

            else
            {
              sub_28F88();
              (*(v97 + 8))(v100, v96);
            }

            v120 = v98[2];
            swift_unknownObjectRetain();

            v67 = v92;
            if (v120)
            {
              swift_getObjectType();
              v121 = sub_28F58();
              v123 = v122;
              swift_unknownObjectRelease();
            }

            else
            {
              v121 = 0;
              v123 = 0;
            }

            v124 = swift_allocObject();
            *(v124 + 16) = &unk_2A0B8;
            *(v124 + 24) = v98;
            if (v123 | v121)
            {
              *v177 = 0;
              v177[1] = 0;
              v1[4] = v121;
              v1[5] = v123;
            }

            v65 = v1[30];
            v125 = v1[25];
            v126 = v1[21];
            v5 = swift_task_create();

            sub_925C(v65, &qword_39288, &qword_2A540);
            (*v186)(v125, v126);

            goto LABEL_24;
          }
        }

        v65 = v1[35];
        v111 = v1[25];
        v112 = v1[23];
        v113 = v1[21];
        sub_28178();
        v71(v112, v111, v113);
        v78 = v72;
        v5 = sub_28258();
        v114 = sub_29128();

        v115 = os_log_type_enabled(v5, v114);
        v193 = v1[32];
        v196 = v1[35];
        v82 = v1[25];
        v81 = v1[23];
        v83 = v1[21];
        if (v115)
        {
          v84 = swift_slowAlloc();
          v184 = v82;
          v116 = swift_slowAlloc();
          *v84 = 138412546;
          v117 = [v78 recordID];
          *(v84 + 4) = v117;
          *v116 = v117;
          *(v84 + 12) = 2112;
          sub_28CB8();
          v118 = v67;
          v119 = _swift_stdlib_bridgeErrorToNSError();
          v183 = v78;
          v65 = *v186;
          (*v186)(v81, v83);
          *(v84 + 14) = v119;
          v116[1] = v119;
          v67 = v118;
          v68 = v182;
          v89 = v114;
          v90 = v5;
          v91 = "Error saving record %@: %@";
          goto LABEL_30;
        }

LABEL_22:

        v70 = *v186;
        (*v186)(v81, v83);
        (*v185)(v196, v193);
        v70(v82, v83);
LABEL_23:
        v1 = v179;
LABEL_24:
        ++v67;
      }

      while (v188 != v67);
    }

    v153 = sub_28CF8();
    v65 = v153;
    if (v153 >> 62)
    {
      v154 = sub_292A8();
      if (v154)
      {
        goto LABEL_75;
      }
    }

    else
    {
      v154 = *(&dword_10 + (v153 & 0xFFFFFFFFFFFFFF8));
      if (v154)
      {
LABEL_75:
        v155 = 0;
        while (1)
        {
          if ((v65 & 0xC000000000000001) != 0)
          {
            v156 = sub_29288();
          }

          else
          {
            if (v155 >= *(&dword_10 + (v65 & 0xFFFFFFFFFFFFFF8)))
            {
              goto LABEL_85;
            }

            v156 = *(v65 + 8 * v155 + 32);
          }

          v5 = v156;
          v157 = v155 + 1;
          if (__OFADD__(v155, 1))
          {
            break;
          }

          v158 = v1[13];
          v201[0] = v156;
          sub_5A4C(v201, v158);

          ++v155;
          if (v157 == v154)
          {
            goto LABEL_91;
          }
        }

LABEL_84:
        __break(1u);
LABEL_85:
        __break(1u);
        goto LABEL_86;
      }
    }

LABEL_91:
    v10 = v1[27];
    v9 = v1[28];
    v11 = v1[26];

    goto LABEL_3;
  }

  if (v6 == enum case for CKSyncEngine.Event.willFetchChanges(_:) || v6 == enum case for CKSyncEngine.Event.willFetchRecordZoneChanges(_:) || v6 == enum case for CKSyncEngine.Event.didFetchRecordZoneChanges(_:) || v6 == enum case for CKSyncEngine.Event.didFetchChanges(_:) || v6 == enum case for CKSyncEngine.Event.willSendChanges(_:) || v6 == enum case for CKSyncEngine.Event.didSendChanges(_:) || v6 == enum case for CKSyncEngine.Event.willFetchAsset(_:) || v6 == enum case for CKSyncEngine.Event.fetchedAsset(_:))
  {
LABEL_8:
    v30 = v0[56];
    v31 = v0[54];
LABEL_59:
    (*(v31 + 8))(v30, v7);
    goto LABEL_60;
  }

  v65 = v0[53];
  if (v6 != enum case for CKSyncEngine.Event.didFetchAsset(_:))
  {
LABEL_86:
    v159 = v1[55];
    v160 = v1[11];
    sub_28178();
    (v5)(v159, v160, v65);
    v161 = sub_28258();
    v194 = sub_29128();
    v162 = os_log_type_enabled(v161, v194);
    v164 = v1[54];
    v163 = v1[55];
    v165 = v1[53];
    v166 = v1[33];
    v200 = v1[34];
    v180 = v1;
    v198 = v1[32];
    if (v162)
    {
      v167 = swift_slowAlloc();
      v191 = swift_slowAlloc();
      v201[0] = v191;
      *v167 = 136315138;
      sub_88D8(&qword_39290, 255, &type metadata accessor for CKSyncEngine.Event, &protocol conformance descriptor for CKSyncEngine.Event);
      v168 = sub_292F8();
      v170 = v169;
      v171 = *(v164 + 8);
      v171(v163, v165);
      v172 = sub_89C0(v168, v170, v201);

      *(v167 + 4) = v172;
      _os_log_impl(&dword_0, v161, v194, "Unknown CKSyncEngine event %s", v167, 0xCu);
      sub_8F68(v191);
    }

    else
    {

      v171 = *(v164 + 8);
      v171(v163, v165);
    }

    (*(v166 + 8))(v200, v198);
    v1 = v180;
    v171(v180[56], v180[53]);
    goto LABEL_60;
  }

  (*(v0[54] + 8))(v0[56], v7);
LABEL_60:

  v151 = v1[1];

  return v151();
}

uint64_t sub_4C10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a4;
  v5 = sub_28C08();
  v4[4] = v5;
  v4[5] = *(v5 - 8);
  v4[6] = swift_task_alloc();
  v6 = sub_28C28();
  v4[7] = v6;
  v4[8] = *(v6 - 8);
  v4[9] = swift_task_alloc();

  return _swift_task_switch(sub_4D2C, 0, 0);
}

uint64_t sub_4D2C()
{
  (*(v0[5] + 104))(v0[6], enum case for CKSyncEngine.FetchChangesOptions.Scope.all(_:), v0[4]);
  sub_28C18();
  v1 = swift_task_alloc();
  v0[10] = v1;
  *v1 = v0;
  v1[1] = sub_4E04;
  v2 = v0[9];

  return CKSyncEngine.fetchChanges(_:)(v2);
}

uint64_t sub_4E04()
{
  v2 = *v1;
  *(*v1 + 88) = v0;

  v3 = v2[9];
  v4 = v2[8];
  v5 = v2[7];
  if (v0)
  {

    (*(v4 + 8))(v3, v5);
    v6 = sub_9CC4;
  }

  else
  {
    (*(v4 + 8))(v3, v5);
    v6 = sub_4F9C;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_4F9C()
{
  **(v0 + 16) = *(v0 + 88) != 0;

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_501C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_7E8C(&qword_39288, &qword_2A540);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_91EC(a3, v25 - v10);
  v12 = sub_28F98();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_925C(v11, &qword_39288, &qword_2A540);
  }

  else
  {
    sub_28F88();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_28F58();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_28EF8() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      sub_7E8C(&qword_392B0, &qword_2A0F0);
      v21 = (v18 | v16);
      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v22 = swift_task_create();

      return v22;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  sub_7E8C(&qword_392B0, &qword_2A0F0);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_52E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = sub_28BD8();
  v5[4] = v6;
  v5[5] = *(v6 - 8);
  v5[6] = swift_task_alloc();
  v7 = sub_28BF8();
  v5[7] = v7;
  v5[8] = *(v7 - 8);
  v5[9] = swift_task_alloc();
  v8 = sub_28268();
  v5[10] = v8;
  v5[11] = *(v8 - 8);
  v5[12] = swift_task_alloc();

  return _swift_task_switch(sub_5458, 0, 0);
}

uint64_t sub_5458()
{
  v1 = v0[2];
  v2 = [v1 recordID];
  v3 = [v2 zoneID];

  v4 = [objc_allocWithZone(CKRecordZone) initWithZoneID:v3];
  v0[13] = v4;

  sub_28D98();
  sub_7E8C(&qword_392B8, &qword_2A100);
  v5 = sub_28C38();
  v6 = *(v5 - 8);
  v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v8 = swift_allocObject();
  *(v8 + 1) = xmmword_29DC0;
  *&v8[v7] = v4;
  (*(v6 + 104))(&v8[v7], enum case for CKSyncEngine.PendingDatabaseChange.saveZone(_:), v5);
  v9 = v4;
  v10._rawValue = v8;
  sub_28D78(v10);

  sub_28D98();
  sub_7E8C(&qword_392A0, &qword_2A680);
  v11 = sub_28C58();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v14 = swift_allocObject();
  *(v14 + 1) = xmmword_29DC0;
  *&v14[v13] = [v1 recordID];
  (*(v12 + 104))(&v14[v13], enum case for CKSyncEngine.PendingRecordZoneChange.saveRecord(_:), v11);
  v15._rawValue = v14;
  sub_28D88(v15);

  sub_28178();
  v16 = sub_28258();
  v17 = sub_29138();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_0, v16, v17, "GuestPass zone not found, trying to create it now.", v18, 2u);
  }

  v20 = v0[11];
  v19 = v0[12];
  v21 = v0[10];
  v23 = v0[5];
  v22 = v0[6];
  v24 = v0[4];

  (*(v20 + 8))(v19, v21);
  (*(v23 + 104))(v22, enum case for CKSyncEngine.SendChangesOptions.Scope.all(_:), v24);
  sub_28BE8();
  v25 = swift_task_alloc();
  v0[14] = v25;
  *v25 = v0;
  v25[1] = sub_582C;
  v26 = v0[9];

  return CKSyncEngine.sendChanges(_:)(v26);
}

uint64_t sub_582C()
{
  v2 = *v1;

  v3 = v2[9];
  v4 = v2[8];
  v5 = v2[7];
  if (v0)
  {

    (*(v4 + 8))(v3, v5);
    v6 = sub_9CB8;
  }

  else
  {
    (*(v4 + 8))(v3, v5);
    v6 = sub_59C4;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_59C4()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_5A4C(id *a1, uint64_t a2)
{
  v38 = a2;
  v37 = sub_28268();
  v39 = *(v37 - 8);
  __chkstk_darwin(v37);
  v36 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_28058();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_7E8C(&qword_391D8, &qword_2A078);
  __chkstk_darwin(v8 - 8);
  v10 = &v35 - v9;
  v11 = *a1;
  v12 = [*a1 recordID];
  v13 = [v12 recordName];

  v14 = sub_28EC8();
  v16 = v15;

  sub_290A8();
  v17 = sub_28FE8();
  v18 = direct field offset for AXSettings.guestPass;
  swift_beginAccess();
  v19 = *&v17[v18];

  sub_28FF8();
  if ((*(v5 + 48))(v10, 1, v4))
  {
    sub_925C(v10, &qword_391D8, &qword_2A078);

    return;
  }

  v35 = v11;
  v21 = v37;
  v20 = v38;
  (*(v5 + 16))(v7, v10, v4);
  sub_925C(v10, &qword_391D8, &qword_2A078);
  v22 = sub_28038();
  v24 = v23;
  (*(v5 + 8))(v7, v4);
  if (v14 == v22 && v16 == v24)
  {

    v25 = v21;
    v26 = v39;
    v27 = v35;
  }

  else
  {
    v28 = sub_29308();

    v25 = v21;
    v26 = v39;
    v27 = v35;
    if ((v28 & 1) == 0)
    {
      return;
    }
  }

  v29 = v36;
  sub_28178();
  v30 = sub_28258();
  v31 = sub_29138();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    *v32 = 0;
    _os_log_impl(&dword_0, v30, v31, "Successfully synced latest guest pass data to CloudKit", v32, 2u);
  }

  (*(v26 + 8))(v29, v25);
  v33 = *(v20 + 40);
  *(v20 + 40) = v27;
  v34 = v27;
}

Class sub_5E44(void *a1, uint64_t a2)
{
  v60 = a2;
  v3 = sub_28268();
  v62 = *(v3 - 8);
  v63 = v3;
  v4 = __chkstk_darwin(v3);
  v6 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v58 - v7;
  v9 = sub_28058();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_7E8C(&qword_391D8, &qword_2A078);
  __chkstk_darwin(v13 - 8);
  v15 = &v58 - v14;
  v61 = a1;
  v16 = [a1 recordName];
  v17 = sub_28EC8();
  v19 = v18;

  sub_290A8();
  v20 = sub_28FE8();
  v21 = direct field offset for AXSettings.guestPass;
  swift_beginAccess();
  v22 = *&v20[v21];

  sub_28FF8();
  if ((*(v10 + 48))(v15, 1, v9))
  {
    sub_925C(v15, &qword_391D8, &qword_2A078);

LABEL_3:
    sub_28178();
    v23 = v61;
    v24 = sub_28258();
    v25 = sub_29128();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v64[0] = v27;
      *v26 = 136315138;
      v28 = [v23 recordName];
      v29 = sub_28EC8();
      v31 = v30;

      v32 = sub_89C0(v29, v31, v64);

      *(v26 + 4) = v32;
      _os_log_impl(&dword_0, v24, v25, "Asked to upload a record that didn't originate on this device: %s", v26, 0xCu);
      sub_8F68(v27);
    }

    (*(v62 + 8))(v8, v63);
    return 0;
  }

  v35 = v60;
  v59 = v6;
  (*(v10 + 16))(v12, v15, v9);
  sub_925C(v15, &qword_391D8, &qword_2A078);
  v36 = sub_28038();
  v38 = v37;
  (*(v10 + 8))(v12, v9);
  if (v17 == v36 && v19 == v38)
  {
  }

  else
  {
    v39 = sub_29308();

    if ((v39 & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  v40 = *(v35 + 40);
  if (v40)
  {
    isa = v40;
  }

  else
  {
    sub_9818(0, &qword_391E0, CKRecord_ptr);
    v41.super.isa = v61;
    v65._countAndFlagsBits = 0x7361507473657547;
    v65._object = 0xED00006174614473;
    isa = sub_291B8(v65, v41).super.isa;
  }

  v42 = objc_opt_self();
  sub_28168();
  v43 = v40;
  sub_28118();
  v44 = sub_28E38().super.isa;

  v64[0] = 0;
  v45 = [v42 dataWithPropertyList:v44 format:100 options:0 error:v64];

  v46 = v64[0];
  if (v45)
  {
    v47 = sub_28028();
    v49 = v48;

    v50 = [(objc_class *)isa encryptedValues];
    swift_getObjectType();
    v64[3] = &type metadata for Data;
    v64[4] = &protocol witness table for Data;
    v64[0] = v47;
    v64[1] = v49;
    sub_8FB4(v47, v49);
    sub_29188();
    sub_9008(v47, v49);
    swift_unknownObjectRelease();
    return isa;
  }

  v51 = v46;
  sub_27F78();

  swift_willThrow();
  v52 = v59;
  sub_28178();
  swift_errorRetain();
  v53 = sub_28258();
  v54 = sub_29128();

  if (os_log_type_enabled(v53, v54))
  {
    v55 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    *v55 = 138412290;
    swift_errorRetain();
    v57 = _swift_stdlib_bridgeErrorToNSError();
    *(v55 + 4) = v57;
    *v56 = v57;
    _os_log_impl(&dword_0, v53, v54, "Erring serializing guest pass payload %@", v55, 0xCu);
    sub_925C(v56, &qword_391E8, &qword_2A080);
  }

  else
  {
  }

  (*(v62 + 8))(v52, v63);
  return 0;
}

uint64_t sub_6574(uint64_t a1)
{
  v2 = sub_290E8();
  v3 = *(v2 - 8);
  v88 = v2;
  v89 = v3;
  v4 = __chkstk_darwin(v2);
  v6 = &v75 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v75 - v7;
  v95 = sub_28268();
  v9 = *(v95 - 8);
  v10 = __chkstk_darwin(v95);
  v12 = &v75 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v75 - v13;
  v92 = sub_290C8();
  v15 = *(v92 - 1);
  v16 = __chkstk_darwin(v92);
  v85 = (&v75 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v16);
  v19 = &v75 - v18;
  v20 = sub_28D18();
  v22 = *(v20 + 16);
  v23 = &GuestPassCloudSyncController;
  v91 = v12;
  v87 = v8;
  if (v22)
  {
    v77 = a1;
    v78 = v6;
    v24 = v15 + 16;
    v83 = *(v15 + 16);
    v25 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    v75 = v20;
    v26 = v20 + v25;
    v82 = *(v24 + 56);
    *&v84 = v24;
    v94 = (v24 - 8);
    v76 = v9;
    v81 = (v9 + 8);
    *&v21 = 136315138;
    v79 = v21;
    v90 = v14;
    v27 = v92;
    v80 = v19;
    while (1)
    {
      v28 = v83;
      v83(v19, v26, v27);
      sub_28178();
      v29 = v85;
      v28(v85, v19, v27);
      v30 = sub_28258();
      v31 = sub_29138();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        v33 = swift_slowAlloc();
        v96 = v33;
        *v32 = v79;
        v34 = sub_290B8();
        v35 = [v34 recordID];

        v36 = [v35 v23[34].ivars];
        v37 = sub_28EC8();
        v39 = v38;

        v93 = *v94;
        (v93)(v29, v92);
        v40 = sub_89C0(v37, v39, &v96);
        v23 = &GuestPassCloudSyncController;

        *(v32 + 4) = v40;
        _os_log_impl(&dword_0, v30, v31, "Got new synced guest pass data for record %s", v32, 0xCu);
        sub_8F68(v33);
        v19 = v80;

        (*v81)(v90, v95);
      }

      else
      {

        v93 = *v94;
        (v93)(v29, v27);
        (*v81)(v14, v95);
      }

      v41 = sub_290B8();
      v42 = [v41 encryptedValues];

      v43 = sub_28E88();
      isa = [v42 objectForKeyedSubscript:v43];
      swift_unknownObjectRelease();

      if (!isa)
      {
        goto LABEL_11;
      }

      v98[0] = isa;
      sub_7E8C(&qword_39280, &unk_2A0A0);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v45 = v96;
      v46 = v97;
      v47 = *(v86 + 16);
      sub_8FB4(v96, v97);
      isa = sub_28018().super.isa;
      sub_9008(v45, v46);
LABEL_12:
      v48 = sub_290B8();
      v49 = [v48 recordID];

      v50 = [v49 v23[34].ivars];
      if (!v50)
      {
        sub_28EC8();
        v50 = sub_28E88();
      }

      [v47 storeGuestPassProfile:isa name:{v50, v75}];

      sub_90BC(v45, v46);
      v27 = v92;
      (v93)(v19, v92);
      v26 += v82;
      --v22;
      v14 = v90;
      v12 = v91;
      if (!v22)
      {

        v6 = v78;
        v8 = v87;
        v9 = v76;
        goto LABEL_16;
      }
    }

    isa = 0;
LABEL_11:
    v45 = 0;
    v47 = *(v86 + 16);
    v46 = 0xF000000000000000;
    goto LABEL_12;
  }

LABEL_16:
  v51 = sub_28D28();
  v53 = *(v51 + 16);
  v54 = v88;
  if (v53)
  {
    v92 = *(v86 + 16);
    v55 = *(v89 + 16);
    v89 += 16;
    v90 = v55;
    v56 = (*(v89 + 64) + 32) & ~*(v89 + 64);
    v83 = v51;
    v57 = v51 + v56;
    v58 = *(v89 + 56);
    v94 = (v89 - 8);
    v85 = (v9 + 8);
    v86 = v58;
    *&v52 = 136315138;
    v84 = v52;
    do
    {
      v93 = v53;
      v59 = v90;
      (v90)(v8, v57, v54);
      sub_28178();
      v59(v6, v8, v54);
      v60 = v6;
      v61 = sub_28258();
      v62 = sub_29138();
      if (os_log_type_enabled(v61, v62))
      {
        v63 = swift_slowAlloc();
        v64 = swift_slowAlloc();
        v96 = v64;
        *v63 = v84;
        v65 = sub_290D8();
        v66 = [v65 recordName];

        v67 = sub_28EC8();
        v69 = v68;

        v70 = *v94;
        (*v94)(v60, v88);
        v71 = sub_89C0(v67, v69, &v96);
        v54 = v88;

        *(v63 + 4) = v71;
        _os_log_impl(&dword_0, v61, v62, "Synced deletion for guest pass record %s", v63, 0xCu);
        sub_8F68(v64);
        v12 = v91;
      }

      else
      {

        v70 = *v94;
        (*v94)(v60, v54);
      }

      (*v85)(v12, v95);
      v6 = v60;
      v8 = v87;
      v72 = sub_290D8();
      v73 = [v72 recordName];

      if (!v73)
      {
        sub_28EC8();
        v73 = sub_28E88();
      }

      [v92 deleteGuestPassProfile:v73];

      v70(v8, v54);
      v57 += v86;
      v53 = v93 - 1;
    }

    while (v93 != &dword_0 + 1);
  }
}

uint64_t sub_6EA8(uint64_t a1)
{
  v1 = sub_28268();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v22[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_7E8C(&qword_39208, &unk_2A090);
  __chkstk_darwin(v5 - 8);
  v7 = &v22[-v6];
  v8 = sub_27FD8();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v22[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_2290(v7);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_925C(v7, &qword_39208, &unk_2A090);
    sub_28178();
    v12 = sub_28258();
    v13 = sub_29128();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_0, v12, v13, "Unable to persist sync state because we could not read from the container", v14, 2u);
    }

    return (*(v2 + 8))(v4, v1);
  }

  else
  {
    (*(v9 + 32))(v11, v7, v8);
    sub_27E98();
    swift_allocObject();
    sub_27E88();
    sub_28D58();
    sub_88D8(&qword_39218, 255, &type metadata accessor for CKSyncEngine.State.Serialization, &protocol conformance descriptor for CKSyncEngine.State.Serialization);
    v16 = sub_27E78();
    v18 = v17;

    v19 = [objc_opt_self() defaultManager];
    sub_27FC8();
    v20 = sub_28E88();

    if (v18 >> 60 == 15)
    {
      isa = 0;
    }

    else
    {
      sub_8FB4(v16, v18);
      isa = sub_28018().super.isa;
      sub_90BC(v16, v18);
    }

    [v19 createFileAtPath:v20 contents:isa attributes:0];

    sub_90BC(v16, v18);
    return (*(v9 + 8))(v11, v8);
  }
}

uint64_t sub_7298@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_28268();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v25[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_7E8C(&qword_39208, &unk_2A090);
  __chkstk_darwin(v6 - 8);
  v8 = &v25[-v7];
  v9 = sub_27FD8();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v25[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_2290(v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_925C(v8, &qword_39208, &unk_2A090);
    sub_28178();
    v13 = sub_28258();
    v14 = sub_29128();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_0, v13, v14, "Unable to retrieve sync state because we could not read from the container", v15, 2u);
    }

    (*(v3 + 8))(v5, v2);
  }

  else
  {
    (*(v10 + 32))(v12, v8, v9);
    v16 = [objc_opt_self() defaultManager];
    sub_27FC8();
    v17 = sub_28E88();

    v18 = [v16 fileExistsAtPath:v17];

    if (v18)
    {
      sub_27E68();
      swift_allocObject();
      sub_27E58();
      v19 = sub_27FE8();
      v21 = v20;
      v22 = sub_28D58();
      sub_88D8(&qword_39210, 255, &type metadata accessor for CKSyncEngine.State.Serialization, &protocol conformance descriptor for CKSyncEngine.State.Serialization);
      sub_27E48();
      (*(v10 + 8))(v12, v9);
      sub_9008(v19, v21);

      return (*(*(v22 - 8) + 56))(a1, 0, 1, v22);
    }

    (*(v10 + 8))(v12, v9);
  }

  v23 = sub_28D58();
  return (*(*(v23 - 8) + 56))(a1, 1, 1, v23);
}

uint64_t sub_76F8()
{

  return _swift_deallocClassInstance(v0, 56, 7);
}

uint64_t sub_7750(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_77F4;

  return sub_3024(a1, a2);
}

uint64_t sub_77F4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_78E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[3] = a3;
  v4[4] = v3;
  v4[2] = a1;
  return _swift_task_switch(sub_790C, 0, 0);
}

uint64_t sub_790C(uint64_t a1)
{
  sub_28D98();
  sub_28D68();

  sub_28C48();
  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_79B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_9CB0;

  return CKSyncEngineDelegate.nextFetchChangesOptions(_:syncEngine:)(a1, a2, a3, a4, a5);
}

uint64_t variable initialization expression of AXGuestPassNetworkConnection.connectionState@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for NWConnection.State.setup(_:);
  v3 = sub_28388();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

id variable initialization expression of AXGuestPassRootView._guestPassSettings()
{
  sub_290A8();
  v0 = sub_28FE8();
  v1 = direct field offset for AXSettings.guestPass;
  swift_beginAccess();
  v2 = *&v0[v1];

  return v2;
}

uint64_t variable initialization expression of AXGuestPassRootView.browseDescriptor@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_284C8();
  __chkstk_darwin(v2);
  v3 = sub_284E8();
  __chkstk_darwin(v3 - 8);
  sub_7E8C(&qword_39040, &qword_29DE0);
  v4 = sub_280B8();
  v5 = sub_28158();
  v7 = v6;

  *a1 = v5;
  a1[1] = v7;
  sub_284D8();
  sub_7E8C(&qword_39048, &qword_29DE8);
  *(swift_allocObject() + 16) = xmmword_29DD0;
  sub_284B8();
  sub_284A8();
  sub_88D8(&qword_39050, 255, &type metadata accessor for NWBrowser.Descriptor.Options.DeviceType, &protocol conformance descriptor for NWBrowser.Descriptor.Options.DeviceType);
  sub_7E8C(&qword_39058, &qword_29DF0);
  sub_7ED4();
  sub_29208();
  sub_284F8();
  v8 = enum case for NWBrowser.Descriptor.applicationServiceWithOptions(_:);
  v9 = sub_28508();
  return (*(*(v9 - 8) + 104))(a1, v8, v9);
}

uint64_t sub_7E8C(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_7ED4()
{
  result = qword_39060;
  if (!qword_39060)
  {
    sub_7F38(&qword_39058, &qword_29DF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_39060);
  }

  return result;
}

uint64_t sub_7F38(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_7FE8(uint64_t a1)
{
  v2 = sub_88D8(&qword_39308, 255, type metadata accessor for CKError, &unk_2A2D4);

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_8058(uint64_t a1)
{
  v2 = sub_88D8(&qword_39308, 255, type metadata accessor for CKError, &unk_2A2D4);

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_80CC(uint64_t a1)
{
  v2 = sub_88D8(&qword_39298, 255, type metadata accessor for CKError, &unk_2A318);

  return _BridgedStoredNSError._getEmbeddedNSError()(a1, v2);
}

uint64_t sub_8158(uint64_t a1, id *a2)
{
  result = sub_28EA8();
  *a2 = 0;
  return result;
}

uint64_t sub_81D0(uint64_t a1, id *a2)
{
  v3 = sub_28EB8();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_8250@<X0>(uint64_t *a2@<X8>)
{
  sub_28EC8();
  v3 = sub_28E88();

  *a2 = v3;
  return result;
}

uint64_t sub_8294()
{
  sub_28EC8();
  v0 = sub_28F38();

  return v0;
}

uint64_t sub_82D0(uint64_t a1)
{
  sub_28EC8();
  sub_28F08();
}

Swift::Int sub_8324(uint64_t a1)
{
  sub_28EC8();
  sub_29368();
  sub_28F08();
  v1 = sub_29378();

  return v1;
}

uint64_t sub_83A8(uint64_t a1)
{
  v2 = sub_88D8(&qword_39298, 255, type metadata accessor for CKError, &unk_2A318);

  return _BridgedStoredNSError.errorCode.getter(a1, v2);
}

uint64_t sub_8418(uint64_t a1)
{
  v2 = sub_88D8(&qword_39298, 255, type metadata accessor for CKError, &unk_2A318);

  return _BridgedStoredNSError.errorUserInfo.getter(a1, v2);
}

uint64_t sub_8488(void *a1, uint64_t a2)
{
  v4 = sub_88D8(&qword_39298, 255, type metadata accessor for CKError, &unk_2A318);
  v5 = a1;

  return _BridgedStoredNSError.init(_bridgedNSError:)(v5, a2, v4);
}

uint64_t sub_8540(uint64_t a1, uint64_t a2)
{
  v4 = sub_88D8(&qword_39298, 255, type metadata accessor for CKError, &unk_2A318);

  return _BridgedStoredNSError.hash(into:)(a1, a2, v4);
}

Swift::Int sub_85C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_29368();
  sub_28E68();
  return sub_29378();
}

void *sub_8620@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_8630(void *a1, uint64_t *a2)
{
  v2 = sub_28EC8();
  v4 = v3;
  if (v2 == sub_28EC8() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_29308();
  }

  return v7 & 1;
}

uint64_t sub_86B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_88D8(&qword_39298, 255, type metadata accessor for CKError, &unk_2A318);

  return static _BridgedStoredNSError.== infix(_:_:)(a1, a2, a3, v6);
}

uint64_t sub_8754@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_28E88();

  *a2 = v3;
  return result;
}

uint64_t sub_879C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_28EC8();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_87C8(uint64_t a1)
{
  v2 = sub_88D8(&qword_391F8, 255, type metadata accessor for STBackgroundActivityIdentifier, &unk_29F7C);
  v3 = sub_88D8(&qword_39200, 255, type metadata accessor for STBackgroundActivityIdentifier, &unk_29F24);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_88D8(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

unint64_t sub_89C0(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_8A8C(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_905C(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_8F68(v11);
  return v7;
}

unint64_t sub_8A8C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_8B98(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_29298();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

char *sub_8B98(uint64_t a1, unint64_t a2)
{
  v3 = sub_8BE4(a1, a2);
  sub_8D14(&off_35AE8);
  return v3;
}

char *sub_8BE4(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return &_swiftEmptyArrayStorage;
  }

  v6 = sub_8E00(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 32, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_29298();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 32, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_28F28();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_8E00(v10, 0);
        result = sub_29268();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_8D14(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_8E74(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_8E00(uint64_t a1, uint64_t a2)
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
    return &_swiftEmptyArrayStorage;
  }

  sub_7E8C(&qword_391F0, &qword_2A088);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_8E74(char *result, int64_t a2, char a3, char *a4)
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
    sub_7E8C(&qword_391F0, &qword_2A088);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_8F68(void *a1)
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

uint64_t sub_8FB4(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_9008(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_905C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_90BC(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_9008(result, a2);
  }

  return result;
}

uint64_t sub_90E4()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_912C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_9CB0;

  return sub_52E0(a1, v4, v5, v7, v6);
}

uint64_t sub_91EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_7E8C(&qword_39288, &qword_2A540);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_925C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_7E8C(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_92BC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_92F4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_9CB0;

  return sub_1A290(a1, v4);
}

uint64_t sub_93AC()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_93EC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_77F4;

  return sub_4C10(a1, v4, v5, v6);
}

uint64_t sub_94A0(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_9594;

  return v5(v2 + 32);
}

uint64_t sub_9594()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v5 = *v0;

  *v2 = *(v1 + 32);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_96A8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_9CB0;

  return sub_94A0(a1, v4);
}

uint64_t sub_9760(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_77F4;

  return sub_94A0(a1, v4);
}

uint64_t sub_9818(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

void *sub_9878(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_98BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_7E8C(&qword_39208, &unk_2A090);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_9B1C(uint64_t a1, unint64_t *a2, uint64_t a3)
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

unint64_t sub_9BB8()
{
  result = qword_39330;
  if (!qword_39330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_39330);
  }

  return result;
}

uint64_t property wrapper backing initializer of AXGuestPassAlertView.guestPassServer(uint64_t a1)
{
  swift_getObjectType();
  sub_28A58();
  return v2;
}

uint64_t AXGuestPassAlertView.init()()
{
  type metadata accessor for AXGuestPassServer(0);
  sub_AD5C();
  sub_28A58();
  return v1;
}

uint64_t AXGuestPassAlertView.body.getter(uint64_t a1, uint64_t a2)
{
  v2._object = 0x800000000002B520;
  v2._countAndFlagsBits = 0xD000000000000016;
  GuestPassLocString(_:)(v2);
  sub_7E8C(&qword_393B0, &qword_2A450);
  sub_28A88();
  swift_getKeyPath();
  sub_7E8C(&qword_393B8, &qword_2A480);
  sub_28AE8();

  sub_7E8C(&qword_393C0, &qword_2A488);
  sub_A978();
  sub_A9CC();
  sub_289A8();
}

uint64_t sub_9F14@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_AD04();
  sub_28088();

  *a2 = *(v3 + OBJC_IVAR___AXGuestPassServer__presentStatusBarAlert);
  return result;
}

uint64_t sub_9FE8@<X0>(char *a1@<X8>)
{
  v27 = a1;
  v1 = sub_7E8C(&qword_393D8, &qword_2A528);
  __chkstk_darwin(v1 - 8);
  v3 = &v26 - v2;
  v4 = sub_7E8C(&qword_393E0, &qword_2A530);
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v26 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v10 = &v26 - v9;
  v11 = __chkstk_darwin(v8);
  v13 = &v26 - v12;
  __chkstk_darwin(v11);
  v15 = &v26 - v14;
  v16._countAndFlagsBits = 0xD000000000000024;
  v16._object = 0x800000000002B560;
  v28 = GuestPassLocString(_:)(v16);
  sub_28578();
  v17 = sub_28598();
  v18 = *(*(v17 - 8) + 56);
  v18(v3, 0, 1, v17);
  sub_A978();
  sub_28AB8();
  v19._object = 0x800000000002B590;
  v19._countAndFlagsBits = 0xD00000000000001ELL;
  v28 = GuestPassLocString(_:)(v19);
  sub_28588();
  v18(v3, 0, 1, v17);
  sub_28AB8();
  v20 = *(v5 + 16);
  v20(v10, v15, v4);
  v21 = v26;
  v20(v26, v13, v4);
  v22 = v27;
  v20(v27, v10, v4);
  v23 = sub_7E8C(&qword_393E8, &qword_2A538);
  v20(&v22[*(v23 + 48)], v21, v4);
  v24 = *(v5 + 8);
  v24(v13, v4);
  v24(v15, v4);
  v24(v21, v4);
  return (v24)(v10, v4);
}

uint64_t sub_A364()
{
  v0 = sub_7E8C(&qword_39288, &qword_2A540);
  __chkstk_darwin(v0 - 8);
  v2 = &v7 - v1;
  v3 = sub_28F98();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  sub_28F78();
  v4 = sub_28F68();
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = &protocol witness table for MainActor;
  sub_16BFC(0, 0, v2, &unk_2A550, v5);
}

uint64_t sub_A470()
{
  v1 = sub_28268();
  v0[2] = v1;
  v0[3] = *(v1 - 8);
  v0[4] = swift_task_alloc();
  sub_28F78();
  v0[5] = sub_28F68();
  v3 = sub_28F58();
  v0[6] = v3;
  v0[7] = v2;

  return _swift_task_switch(sub_A560, v3, v2);
}

uint64_t sub_A560()
{
  *(v0 + 64) = sub_280B8();
  v1 = swift_task_alloc();
  *(v0 + 72) = v1;
  *v1 = v0;
  v1[1] = sub_A5FC;

  return AXGuestPassService.endGuestPassSession()();
}

uint64_t sub_A5FC()
{
  v2 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v3 = *(v2 + 48);
    v4 = *(v2 + 56);
    v5 = sub_A780;
  }

  else
  {

    v3 = *(v2 + 48);
    v4 = *(v2 + 56);
    v5 = sub_A718;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_A718()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_A780()
{
  v1 = v0[8];

  sub_28178();
  swift_errorRetain();
  v2 = sub_28258();
  v3 = sub_29128();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&dword_0, v2, v3, "AXGuestPassAlertView: Unable to end guest pass session. %@", v4, 0xCu);
    sub_AC9C(v5);
  }

  else
  {
  }

  (*(v0[3] + 8))(v0[4], v0[2]);

  v7 = v0[1];

  return v7();
}

uint64_t sub_A908@<X0>(uint64_t a1@<X8>)
{
  v2._object = 0x800000000002B540;
  v2._countAndFlagsBits = 0xD000000000000018;
  GuestPassLocString(_:)(v2);
  sub_A978();
  result = sub_288F8();
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5 & 1;
  *(a1 + 24) = v6;
  return result;
}

unint64_t sub_A978()
{
  result = qword_393C8;
  if (!qword_393C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_393C8);
  }

  return result;
}

unint64_t sub_A9CC()
{
  result = qword_393D0;
  if (!qword_393D0)
  {
    sub_7F38(&qword_393C0, &qword_2A488);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_393D0);
  }

  return result;
}

__n128 sub_AA78(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_AA84(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_AACC(uint64_t result, int a2, int a3)
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

uint64_t sub_AB18()
{
  sub_7F38(&qword_393C0, &qword_2A488);
  sub_A978();
  sub_A9CC();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_ABB8()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_ABF0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_77F4;

  return sub_A470();
}

uint64_t sub_AC9C(uint64_t a1)
{
  v2 = sub_7E8C(&qword_391E8, &qword_2A080);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_AD04()
{
  result = qword_39550;
  if (!qword_39550)
  {
    type metadata accessor for AXGuestPassServer(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_39550);
  }

  return result;
}

id sub_AD5C()
{
  if (qword_39030 != -1)
  {
    swift_once();
  }

  v0 = swift_dynamicCastClassUnconditional();

  return v0;
}

uint64_t sub_ADD0()
{
  swift_getKeyPath();
  sub_1316C(&qword_39550, type metadata accessor for AXGuestPassServer, &unk_2A5F0);
  sub_28088();

  return *(v0 + OBJC_IVAR___AXGuestPassServer__presentStatusBarAlert);
}

uint64_t sub_AE78(uint64_t result)
{
  if (*(v1 + OBJC_IVAR___AXGuestPassServer__presentStatusBarAlert) == (result & 1))
  {
    *(v1 + OBJC_IVAR___AXGuestPassServer__presentStatusBarAlert) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1316C(&qword_39550, type metadata accessor for AXGuestPassServer, &unk_2A5F0);
    sub_28078();
  }

  return result;
}

void *sub_AFB8(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_1316C(&qword_39550, type metadata accessor for AXGuestPassServer, &unk_2A5F0);
  sub_28088();

  v4 = *(v2 + *a2);
  v5 = v4;
  return v4;
}

id sub_B060@<X0>(uint64_t *a1@<X0>, void *a3@<X4>, void *a4@<X8>)
{
  v6 = *a1;
  swift_getKeyPath();
  sub_1316C(&qword_39550, type metadata accessor for AXGuestPassServer, &unk_2A5F0);
  sub_28088();

  v7 = *(v6 + *a3);
  *a4 = v7;

  return v7;
}

void sub_B124(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v7 = *a2;
  v8 = *(v4 + *a2);
  if (!v8)
  {
    if (!a1)
    {
      v12 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1316C(&qword_39550, type metadata accessor for AXGuestPassServer, &unk_2A5F0);
    sub_28078();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_11F90();
  v9 = v8;
  v10 = a1;
  v11 = sub_291C8();

  if ((v11 & 1) == 0)
  {
    goto LABEL_6;
  }

  v12 = *(v5 + v7);
LABEL_8:
  *(v5 + v7) = a1;
}

uint64_t sub_B2A8()
{
  swift_getKeyPath();
  sub_1316C(&qword_39550, type metadata accessor for AXGuestPassServer, &unk_2A5F0);
  sub_28088();
}

uint64_t sub_B354(uint64_t a1, uint64_t a2)
{
  *(a1 + OBJC_IVAR___AXGuestPassServer__profileList) = a2;
}

uint64_t sub_B398()
{
  swift_getKeyPath();
  sub_1316C(&qword_39550, type metadata accessor for AXGuestPassServer, &unk_2A5F0);
  sub_28088();

  v1 = *(v0 + OBJC_IVAR___AXGuestPassServer__senderDescription);

  return v1;
}

uint64_t sub_B454@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1316C(&qword_39550, type metadata accessor for AXGuestPassServer, &unk_2A5F0);
  sub_28088();

  v4 = *(v3 + OBJC_IVAR___AXGuestPassServer__senderDescription + 8);
  *a2 = *(v3 + OBJC_IVAR___AXGuestPassServer__senderDescription);
  a2[1] = v4;
}

uint64_t sub_B50C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_B54C(v1, v2);
}

uint64_t sub_B54C(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR___AXGuestPassServer__senderDescription);
  v6 = *(v2 + OBJC_IVAR___AXGuestPassServer__senderDescription + 8);
  if (v6)
  {
    if (a2)
    {
      v7 = *v5 == a1 && v6 == a2;
      if (v7 || (sub_29308() & 1) != 0)
      {
        goto LABEL_8;
      }
    }

LABEL_12:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1316C(&qword_39550, type metadata accessor for AXGuestPassServer, &unk_2A5F0);
    sub_28078();
  }

  if (a2)
  {
    goto LABEL_12;
  }

LABEL_8:
  *v5 = a1;
  v5[1] = a2;
}

id sub_B6C8()
{
  swift_getKeyPath();
  sub_1316C(&qword_39550, type metadata accessor for AXGuestPassServer, &unk_2A5F0);
  sub_28088();

  v1 = *(v0 + OBJC_IVAR___AXGuestPassServer__networkConnection);

  return v1;
}

id sub_B780@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1316C(&qword_39550, type metadata accessor for AXGuestPassServer, &unk_2A5F0);
  sub_28088();

  v4 = *(v3 + OBJC_IVAR___AXGuestPassServer__networkConnection);
  *a2 = v4;

  return v4;
}

void sub_B86C(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR___AXGuestPassServer__networkConnection;
  v5 = *(v1 + OBJC_IVAR___AXGuestPassServer__networkConnection);
  type metadata accessor for AXGuestPassNetworkConnection(0);
  v6 = v5;
  v7 = sub_291C8();

  if (v7)
  {
    v8 = *(v2 + v4);
    *(v2 + v4) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1316C(&qword_39550, type metadata accessor for AXGuestPassServer, &unk_2A5F0);
    sub_28078();
  }
}

void *sub_B9D0()
{
  v1 = OBJC_IVAR___AXGuestPassServer____lazy_storage___syncController;
  if (*(v0 + OBJC_IVAR___AXGuestPassServer____lazy_storage___syncController))
  {
    v2 = *(v0 + OBJC_IVAR___AXGuestPassServer____lazy_storage___syncController);
  }

  else
  {
    v3 = v0;
    type metadata accessor for GuestPassCloudSyncController();
    swift_allocObject();
    v2 = sub_28D8();
    *(v3 + v1) = v2;
  }

  return v2;
}

id sub_BA4C()
{
  result = [objc_allocWithZone(type metadata accessor for AXGuestPassServer(0)) init];
  qword_393F0 = result;
  return result;
}

char *sub_BAB8()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  *&v0[OBJC_IVAR___AXGuestPassServer___gpTransferViewController] = 0;
  *&v0[OBJC_IVAR___AXGuestPassServer___gpSessionViewController] = 0;
  v3 = OBJC_IVAR___AXGuestPassServer_settingsProfileManager;
  *&v1[v3] = [objc_allocWithZone(AXSettingsProfileManager) init];
  *&v1[OBJC_IVAR___AXGuestPassServer__profileList] = sub_12218(&_swiftEmptyArrayStorage);
  v1[OBJC_IVAR___AXGuestPassServer__presentStatusBarAlert] = 0;
  v4 = &v1[OBJC_IVAR___AXGuestPassServer__senderDescription];
  v5 = type metadata accessor for AXGuestPassNetworkConnection(0);
  *v4 = 0;
  v4[1] = 0;
  v6 = [objc_allocWithZone(v5) init];
  *&v1[OBJC_IVAR___AXGuestPassServer__networkConnection] = v6;
  *&v1[OBJC_IVAR___AXGuestPassServer____lazy_storage___syncController] = 0;
  v7 = OBJC_IVAR___AXGuestPassServer_activityController;
  type metadata accessor for AXGuestPassBackgroundActivityController();
  swift_allocObject();
  *&v1[v7] = sub_20B74();
  v8 = OBJC_IVAR___AXGuestPassServer_pinManager;
  type metadata accessor for GuestPassPINManager();
  swift_allocObject();
  *&v1[v8] = sub_18B80();
  _s17AXGuestPassServer0aB17NetworkConnectionC22__observationRegistrar33_F8B8A65206FC09C8A21103A3AFF7C9E911Observation0rG0Vvpfi_0();
  v28.receiver = v1;
  v28.super_class = ObjectType;
  v9 = objc_msgSendSuper2(&v28, "init");
  sub_290A8();
  v10 = v9;
  v11 = sub_28FE8();
  v12 = direct field offset for AXSettings.guestPass;
  swift_beginAccess();
  v13 = *&v11[v12];

  sub_29068();
  v14 = sub_28FE8();
  v15 = direct field offset for AXSettings.guestPass;
  swift_beginAccess();
  v16 = *&v14[v15];

  sub_29048();
  v17 = sub_28FE8();
  v18 = direct field offset for AXSettings.guestPass;
  swift_beginAccess();
  v19 = *&v17[v18];

  sub_29088();
  v20 = *&v10[OBJC_IVAR___AXGuestPassServer_activityController];
  v21 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v22 = *(v20 + 40);
  v23 = *(v20 + 48);
  *(v20 + 40) = sub_135CC;
  *(v20 + 48) = v21;

  sub_135D4(v22, v23);

  v24 = [objc_opt_self() sharedInstance];
  aBlock[4] = sub_BF8C;
  aBlock[5] = 0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_C0F8;
  aBlock[3] = &unk_35E68;
  v25 = _Block_copy(aBlock);
  [v24 registerUpdateBlock:v25 forRetrieveSelector:sub_28068() withListener:v10];

  _Block_release(v25);
  return v10;
}

void sub_BE40(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    if (Strong[OBJC_IVAR___AXGuestPassServer__presentStatusBarAlert] == 1)
    {
      Strong[OBJC_IVAR___AXGuestPassServer__presentStatusBarAlert] = 1;
    }

    else
    {
      v2 = Strong;
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      sub_1316C(&qword_39550, type metadata accessor for AXGuestPassServer, &unk_2A5F0);
      sub_28078();
    }
  }
}

uint64_t sub_BF8C()
{
  v0 = sub_28268();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_28178();
  v4 = sub_28258();
  v5 = sub_29108();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_0, v4, v5, "Guest pass status changed, updating CC widget", v6, 2u);
  }

  (*(v1 + 8))(v3, v0);
  sub_28E18();
  sub_28E08();
  sub_28DF8();
}

uint64_t sub_C0F8(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_C16C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[18] = a5;
  v6[19] = a6;
  v6[17] = a4;
  return _swift_task_switch(sub_C190, 0, 0);
}

uint64_t sub_C190()
{
  *(v0 + 160) = sub_B9D0();
  v1 = swift_task_alloc();
  *(v0 + 168) = v1;
  *v1 = v0;
  v1[1] = sub_C22C;

  return sub_24BC();
}

uint64_t sub_C22C(char a1)
{
  *(*v1 + 176) = a1;

  return _swift_task_switch(sub_C34C, 0, 0);
}

uint64_t sub_C34C()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 144);
  sub_7E8C(&qword_39570, &qword_2A668);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_29DC0;
  strcpy((v0 + 120), "syncAvailable");
  *(v0 + 134) = -4864;
  sub_29248();
  *(inited + 96) = &type metadata for Bool;
  *(inited + 72) = v1;
  v4 = sub_1231C(inited);
  swift_setDeallocating();
  sub_925C(inited + 32, &qword_39578, &unk_2A670);
  v2(v4, 0);

  v5 = *(v0 + 8);

  return v5();
}

void sub_C578(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v5.super.isa = sub_28E38().super.isa;
    if (a2)
    {
LABEL_3:
      v6 = sub_27F68();
      goto LABEL_6;
    }
  }

  else
  {
    v5.super.isa = 0;
    if (a2)
    {
      goto LABEL_3;
    }
  }

  v6 = 0;
LABEL_6:
  v7 = v6;
  (*(a3 + 16))(a3, v5.super.isa);
}

unint64_t sub_C624(unint64_t a1, char *a2, uint64_t a3, unint64_t a4)
{
  v107 = a3;
  v110 = a2;
  v6 = sub_7E8C(&qword_39288, &qword_2A540);
  __chkstk_darwin(v6 - 8);
  v103 = &v96 - v7;
  v8 = sub_7E8C(&qword_39208, &unk_2A090);
  v9 = __chkstk_darwin(v8 - 8);
  v11 = &v96 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v104 = &v96 - v12;
  v13 = sub_27FD8();
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v99 = &v96 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v105 = &v96 - v18;
  v19 = __chkstk_darwin(v17);
  v101 = &v96 - v20;
  __chkstk_darwin(v19);
  v22 = &v96 - v21;
  v23 = sub_28268();
  v111 = *(v23 - 8);
  v112 = v23;
  __chkstk_darwin(v23);
  v25 = &v96 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = v22;
  if (a1)
  {
    v26 = a1;
  }

  else
  {
    v26 = sub_1231C(&_swiftEmptyArrayStorage);
  }

  v102 = v11;
  v108 = v13;

  v106 = sub_28E58();
  v28 = v27;
  sub_28178();

  v29 = sub_28258();
  v30 = sub_29138();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v109 = v26;
    v32 = v31;
    v33 = swift_slowAlloc();
    v98 = v14;
    v96 = v33;
    v117 = v33;
    *v32 = 134218498;
    v97 = v25;
    v34 = v110;
    *(v32 + 4) = v110;
    *(v32 + 12) = 2080;
    *(v32 + 14) = sub_89C0(v107, a4, &v117);
    *(v32 + 22) = 2080;
    v35 = sub_89C0(v106, v28, &v117);

    *(v32 + 24) = v35;
    _os_log_impl(&dword_0, v29, v30, "Service got a message: %ld from client: %s. Payload: %s", v32, 0x20u);
    swift_arrayDestroy();
    v36 = v98;

    v26 = v109;

    (*(v111 + 8))(v97, v112);
    if (v34 != &dword_8 + 2)
    {
      goto LABEL_6;
    }
  }

  else
  {

    (*(v111 + 8))(v25, v112);
    v34 = v110;
    v36 = v14;
    if (v110 != &dword_8 + 2)
    {
LABEL_6:
      if (v34 == &dword_8 + 1)
      {

        v37 = [*&v114[OBJC_IVAR___AXGuestPassServer_settingsProfileManager] guestPassLocalStorageURL];
        if (v37)
        {
          v38 = v100;
          v39 = v37;
          sub_27FA8();

          v40 = [objc_opt_self() defaultManager];
          sub_28EC8();
          v41 = v101;
          sub_27F98();

          sub_27FB8(1);
          v42 = *(v36 + 8);
          v43 = v108;
          v42(v41, v108);
          v44 = sub_28E88();

          v117 = 0;
          v45 = [v40 contentsOfDirectoryAtPath:v44 error:&v117];

          v46 = v117;
          if (v45)
          {
            v47 = sub_28F48();
            v48 = v46;

            sub_7E8C(&qword_39570, &qword_2A668);
            inited = swift_initStackObject();
            *(inited + 16) = xmmword_29DC0;
            v117 = 0x4C656C69666F7270;
            v118 = 0xEB00000000747369;
            sub_29248();
            *(inited + 96) = sub_7E8C(&unk_39580, &unk_2B320);
            *(inited + 72) = v47;
            v50 = sub_1231C(inited);
            swift_setDeallocating();
            sub_925C(inited + 32, &qword_39578, &unk_2A670);
            v42(v38, v43);
            return v50;
          }

          else
          {
            v71 = v117;
            sub_27F78();

            swift_willThrow();

            v72 = sub_1231C(&_swiftEmptyArrayStorage);
            v42(v38, v43);
            return v72;
          }
        }
      }

      else
      {
        v57 = sub_28F98();
        v58 = v103;
        (*(*(v57 - 8) + 56))(v103, 1, 1, v57);
        sub_28F78();
        v59 = v26;
        v60 = v114;
        v61 = sub_28F68();
        v62 = swift_allocObject();
        v62[2] = v61;
        v62[3] = &protocol witness table for MainActor;
        v62[4] = v34;
        v62[5] = v60;
        v62[6] = v59;
        sub_16BFC(0, 0, v58, &unk_2A660, v62);
      }

      return sub_1231C(&_swiftEmptyArrayStorage);
    }
  }

  v52 = [*&v114[OBJC_IVAR___AXGuestPassServer_settingsProfileManager] guestPassLocalStorageURL];
  v53 = v108;
  if (v52)
  {
    v54 = v102;
    v55 = v52;
    sub_27FA8();

    v56 = 0;
  }

  else
  {
    v56 = 1;
    v54 = v102;
  }

  (*(v36 + 56))(v54, v56, 1, v53);
  v63 = v104;
  sub_98BC(v54, v104);
  if ((*(v36 + 48))(v63, 1, v53) == 1)
  {

    sub_925C(v63, &qword_39208, &unk_2A090);
    return sub_1231C(&_swiftEmptyArrayStorage);
  }

  v109 = v26;
  sub_28EC8();
  v64 = v99;
  sub_27F98();

  v112 = *(v36 + 8);
  v112(v63, v53);
  (*(v36 + 32))(v105, v64, v53);
  v110 = objc_opt_self();
  v65 = [v110 defaultManager];
  sub_27FB8(1);
  v66 = sub_28E88();

  v117 = 0;
  v67 = [v65 contentsOfDirectoryAtPath:v66 error:&v117];

  v68 = v117;
  if (v67)
  {
    v69 = sub_28F48();
    v70 = v68;
  }

  else
  {
    v73 = v117;
    sub_27F78();

    swift_willThrow();

    v113 = 0;
    v69 = &_swiftEmptyArrayStorage;
  }

  v74 = v109;
  v75 = v112;
  v114 = v69[2];
  if (!v114)
  {

LABEL_37:

    v83 = sub_1231C(&_swiftEmptyArrayStorage);
    v75(v105, v53);
    return v83;
  }

  v111 = v36 + 8;
  v76 = 0;
  v77 = v69 + 5;
  while (1)
  {
    if (v76 >= v69[2])
    {
      __break(1u);
    }

    v79 = *(v77 - 1);
    v78 = *v77;
    v115 = 0x49656C69666F7270;
    v116 = 0xE900000000000044;

    sub_29248();
    if (*(v74 + 16))
    {
      v80 = sub_12054(&v117);
      if (v81)
      {
        break;
      }
    }

    sub_12548(&v117);
LABEL_25:

LABEL_26:
    ++v76;
    v77 += 2;
    if (v114 == v76)
    {

      v53 = v108;
      goto LABEL_37;
    }
  }

  sub_905C(*(v74 + 56) + 32 * v80, v119);
  sub_12548(&v117);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_25;
  }

  if (v79 == v115 && v78 == v116)
  {

    goto LABEL_40;
  }

  v82 = sub_29308();

  if ((v82 & 1) == 0)
  {

    v74 = v109;
    v75 = v112;
    goto LABEL_26;
  }

LABEL_40:

  v84 = [v110 defaultManager];
  v85 = v101;
  sub_27F98();

  sub_27FB8(1);
  v86 = v108;
  v87 = v112;
  v112(v85, v108);
  v88 = sub_28E88();

  v89 = [v84 contentsAtPath:v88];

  if (v89)
  {
    v90 = sub_28028();
    v92 = v91;

    sub_7E8C(&qword_39570, &qword_2A668);
    v93 = swift_initStackObject();
    *(v93 + 16) = xmmword_29DC0;
    v117 = 0x44656C69666F7270;
    v118 = 0xEB00000000617461;
    sub_8FB4(v90, v92);
    sub_29248();
    *(v93 + 96) = &type metadata for Data;
    *(v93 + 72) = v90;
    *(v93 + 80) = v92;
    v94 = sub_1231C(v93);
    swift_setDeallocating();
    sub_925C(v93 + 32, &qword_39578, &unk_2A670);
    sub_9008(v90, v92);
    v87(v105, v86);
    return v94;
  }

  else
  {
    v95 = sub_1231C(&_swiftEmptyArrayStorage);
    v87(v105, v86);
    return v95;
  }
}

uint64_t sub_D374(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v6[5] = sub_28F78();
  v6[6] = sub_28F68();
  v8 = sub_28F58();
  v6[7] = v8;
  v6[8] = v7;

  return _swift_task_switch(sub_D414, v8, v7);
}

uint64_t sub_D414()
{
  v1 = v0[2];
  if (v1 <= 5)
  {
    if (v1 > 2)
    {
      if (v1 == 3)
      {
        v10 = swift_task_alloc();
        v0[9] = v10;
        *v10 = v0;
        v10[1] = sub_D840;

        return sub_E1F4();
      }

      else if (v1 == 4)
      {
        v8 = swift_task_alloc();
        v0[10] = v8;
        *v8 = v0;
        v8[1] = sub_D960;

        return sub_ECF0();
      }

      else
      {
        v2 = swift_task_alloc();
        v0[13] = v2;
        *v2 = v0;
        v2[1] = sub_DCC0;

        return sub_10C68();
      }
    }

    if (v1 == 1)
    {
      v6 = swift_task_alloc();
      v0[11] = v6;
      *v6 = v0;
      v6[1] = sub_DA80;
      v7 = v0[4];

      return sub_F428(v7);
    }

    if (v1 == 2)
    {
      v5 = swift_task_alloc();
      v0[12] = v5;
      *v5 = v0;
      v5[1] = sub_DBA0;

      return sub_1032C();
    }

    goto LABEL_39;
  }

  if (v1 > 10)
  {
    switch(v1)
    {
      case 11:

        sub_1735C();
        goto LABEL_40;
      case 12:

        sub_18040();
        goto LABEL_40;
      case 13:

        sub_280E8();
        v4 = sub_280D8();
        sub_280C8();

LABEL_40:
        v11 = v0[1];

        return v11();
    }

LABEL_39:

    goto LABEL_40;
  }

  if (v1 == 6)
  {
    v0[14] = sub_B9D0();

    return _swift_task_switch(sub_DE40, 0, 0);
  }

  else
  {
    if (v1 != 7)
    {
      if (v1 == 8)
      {

        sub_B9D0();
        sub_1ED0();
      }

      goto LABEL_39;
    }

    v0[17] = sub_B9D0();
    v9 = swift_task_alloc();
    v0[18] = v9;
    *v9 = v0;
    v9[1] = sub_E0B0;

    return sub_2D8C();
  }
}

uint64_t sub_D840()
{
  v1 = *v0;

  v2 = *(v1 + 64);
  v3 = *(v1 + 56);

  return _swift_task_switch(sub_13670, v3, v2);
}

uint64_t sub_D960()
{
  v1 = *v0;

  v2 = *(v1 + 64);
  v3 = *(v1 + 56);

  return _swift_task_switch(sub_13670, v3, v2);
}

uint64_t sub_DA80()
{
  v1 = *v0;

  v2 = *(v1 + 64);
  v3 = *(v1 + 56);

  return _swift_task_switch(sub_13670, v3, v2);
}

uint64_t sub_DBA0()
{
  v1 = *v0;

  v2 = *(v1 + 64);
  v3 = *(v1 + 56);

  return _swift_task_switch(sub_13670, v3, v2);
}

uint64_t sub_DCC0()
{
  v1 = *v0;

  v2 = *(v1 + 64);
  v3 = *(v1 + 56);

  return _swift_task_switch(sub_DDE0, v3, v2);
}

uint64_t sub_DDE0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_DE40()
{
  *(v0 + 120) = sub_28F68();
  v2 = sub_28F58();

  return _swift_task_switch(sub_DECC, v2, v1);
}

uint64_t sub_DECC()
{

  *(v0 + 128) = sub_1ED0();

  return _swift_task_switch(sub_DF3C, 0, 0);
}

uint64_t sub_DF3C(uint64_t a1)
{
  sub_28D98();

  sub_7E8C(&qword_392A0, &qword_2A680);
  v2 = sub_28C58();
  v3 = *(v2 - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = swift_allocObject();
  *(v5 + 1) = xmmword_29DC0;
  *&v5[v4] = sub_2A78();
  (*(v3 + 104))(&v5[v4], enum case for CKSyncEngine.PendingRecordZoneChange.saveRecord(_:), v2);
  v6._rawValue = v5;
  sub_28D88(v6);

  v7 = *(v1 + 56);
  v8 = *(v1 + 64);

  return _swift_task_switch(sub_13670, v7, v8);
}

uint64_t sub_E0B0()
{
  v1 = *v0;

  v2 = *(v1 + 64);
  v3 = *(v1 + 56);

  return _swift_task_switch(sub_13670, v3, v2);
}

uint64_t sub_E1F4()
{
  v1[22] = v0;
  v2 = sub_28268();
  v1[23] = v2;
  v1[24] = *(v2 - 8);
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();
  v1[27] = swift_task_alloc();
  v1[28] = swift_task_alloc();
  v1[29] = type metadata accessor for AXGuestPassRootView(0);
  v1[30] = swift_task_alloc();
  sub_28F78();
  v1[31] = sub_28F68();
  v4 = sub_28F58();
  v1[32] = v4;
  v1[33] = v3;

  return _swift_task_switch(sub_E33C, v4, v3);
}

uint64_t sub_E33C()
{
  sub_290A8();
  v1 = sub_28FE8();
  v2 = direct field offset for AXSettings.guestPass;
  swift_beginAccess();
  v3 = *(v1 + v2);

  LOBYTE(v1) = sub_29038();
  if (v1 & 1) != 0 || (v4 = sub_28FE8(), v5 = direct field offset for AXSettings.guestPass, swift_beginAccess(), v6 = *(v4 + v5), v4, LOBYTE(v4) = sub_29058(), v6, (v4))
  {

    sub_28178();
    v7 = sub_28258();
    v8 = sub_29128();
    v9 = os_log_type_enabled(v7, v8);
    v10 = *(v0 + 208);
    v11 = *(v0 + 184);
    v12 = *(v0 + 192);
    if (!v9)
    {
LABEL_6:

      (*(v12 + 8))(v10, v11);
LABEL_7:

      v15 = *(v0 + 8);

      return v15();
    }

    v13 = swift_slowAlloc();
    *v13 = 0;
    v14 = "Asked to show guest pass transfer UI when already shown";
LABEL_5:
    _os_log_impl(&dword_0, v7, v8, v14, v13, 2u);

    goto LABEL_6;
  }

  if (!AXDeviceIsUnlocked())
  {

    sub_28178();
    v7 = sub_28258();
    v8 = sub_29128();
    v20 = os_log_type_enabled(v7, v8);
    v10 = *(v0 + 216);
    v11 = *(v0 + 184);
    v12 = *(v0 + 192);
    if (!v20)
    {
      goto LABEL_6;
    }

    v13 = swift_slowAlloc();
    *v13 = 0;
    v14 = "Asked to show guest pass tranfser UI when device was locked.";
    goto LABEL_5;
  }

  v17 = sub_28FE8();
  v18 = [v17 guestPassSessionIsActive];

  if (v18)
  {

    sub_28178();
    v7 = sub_28258();
    v8 = sub_29128();
    v19 = os_log_type_enabled(v7, v8);
    v10 = *(v0 + 224);
    v11 = *(v0 + 184);
    v12 = *(v0 + 192);
    if (!v19)
    {
      goto LABEL_6;
    }

    v13 = swift_slowAlloc();
    *v13 = 0;
    v14 = "Asked to show guest pass tranfser UI when guest pass session was already active.";
    goto LABEL_5;
  }

  v21 = sub_28FE8();
  v22 = direct field offset for AXSettings.guestPass;
  swift_beginAccess();
  v23 = *&v21[v22];

  v24 = sub_29018();
  v25 = sub_28FE8();
  v26 = direct field offset for AXSettings.guestPass;
  swift_beginAccess();
  v27 = *&v25[v26];

  if (v24)
  {
    sub_29068();
  }

  else
  {
    sub_29048();
  }

  v28 = *(v0 + 176);

  swift_getKeyPath();
  *(v0 + 168) = v28;
  sub_1316C(&qword_39550, type metadata accessor for AXGuestPassServer, &unk_2A5F0);
  sub_28088();

  if (*(v28 + OBJC_IVAR___AXGuestPassServer___gpTransferViewController))
  {

    sub_113F0();
    goto LABEL_7;
  }

  v29 = *(v0 + 240);
  sub_281E8();
  *(v0 + 272) = sub_281D8();
  AXGuestPassRootView.init()(v29);
  v30 = sub_280B8();
  v31 = sub_28158();
  v33 = v32;

  *(v0 + 280) = v33;
  *(v0 + 32) = 0u;
  *(v0 + 16) = 0u;
  v34 = swift_task_alloc();
  *(v0 + 288) = v34;
  sub_1316C(&qword_39590, type metadata accessor for AXGuestPassRootView, &protocol conformance descriptor for AXGuestPassRootView);
  *v34 = v0;
  v34[1] = sub_E8A8;
  v35 = *(v0 + 240);
  v36 = *(v0 + 176);

  return AXUniversalDisplayManager.addContent<A>(withView:userInteractionEnabled:service:sceneClientIdentifier:windowIdentifier:context:userInterfaceStyle:windowScene:spatialConfiguration:)(v35, 1, v36, 0xD000000000000020, 0x800000000002B760, v31, v33, 0);
}

uint64_t sub_E8A8(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 272);
  v4[37] = v1;

  v6 = v4[30];
  if (v1)
  {
    sub_925C((v4 + 2), &qword_39598, &qword_2AEB0);
    sub_125F8(v6);
    v7 = v4[32];
    v8 = v4[33];
    v9 = sub_EB38;
  }

  else
  {
    v4[38] = a1;
    sub_925C((v4 + 2), &qword_39598, &qword_2AEB0);
    sub_125F8(v6);
    v7 = v4[32];
    v8 = v4[33];
    v9 = sub_EA64;
  }

  return _swift_task_switch(v9, v7, v8);
}

uint64_t sub_EA64()
{
  v1 = *(v0 + 304);

  sub_B124(v1, &OBJC_IVAR___AXGuestPassServer___gpTransferViewController, &unk_2A630, sub_13640);
  sub_113F0();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_EB38()
{

  sub_28178();
  swift_errorRetain();
  v1 = sub_28258();
  v2 = sub_29128();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138412290;
    swift_errorRetain();
    v5 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&dword_0, v1, v2, "Error beginning guest pass transfer: %@", v3, 0xCu);
    sub_925C(v4, &qword_391E8, &qword_2A080);
  }

  else
  {
  }

  (*(v0[24] + 8))(v0[25], v0[23]);

  v6 = v0[1];

  return v6();
}

uint64_t sub_ECF0()
{
  v1[13] = v0;
  v2 = sub_28268();
  v1[14] = v2;
  v1[15] = *(v2 - 8);
  v1[16] = swift_task_alloc();
  sub_28F78();
  v1[17] = sub_28F68();
  v4 = sub_28F58();
  v1[18] = v4;
  v1[19] = v3;

  return _swift_task_switch(sub_EDE4, v4, v3);
}

uint64_t sub_EDE4()
{
  v1 = v0[13];
  sub_290A8();
  v2 = sub_28FE8();
  v3 = direct field offset for AXSettings.guestPass;
  swift_beginAccess();
  v4 = *&v2[v3];

  sub_29068();
  v5 = sub_28FE8();
  v6 = direct field offset for AXSettings.guestPass;
  swift_beginAccess();
  v7 = *&v5[v6];

  sub_29048();
  v8 = sub_28FE8();
  v9 = direct field offset for AXSettings.guestPass;
  swift_beginAccess();
  v10 = *&v8[v9];

  sub_29088();
  sub_281E8();
  v0[20] = sub_281D8();
  swift_getKeyPath();
  v0[21] = OBJC_IVAR___AXGuestPassServer___observationRegistrar;
  v0[11] = v1;
  v0[22] = sub_1316C(&qword_39550, type metadata accessor for AXGuestPassServer, &unk_2A5F0);
  sub_28088();

  v11 = OBJC_IVAR___AXGuestPassServer___gpTransferViewController;
  v0[23] = OBJC_IVAR___AXGuestPassServer___gpTransferViewController;
  v12 = *(v1 + v11);
  v0[24] = v12;
  v13 = v12;
  v14 = sub_280B8();
  v15 = sub_28158();
  v17 = v16;

  v0[25] = v17;
  v18 = swift_task_alloc();
  v0[26] = v18;
  *v18 = v0;
  v18[1] = sub_F048;
  v19 = v0[13];

  return AXUniversalDisplayManager.removeContent(withViewController:userInteractionEnabled:windowIdentifier:service:context:)(v12, 1, v15, v17, v19, 0);
}

uint64_t sub_F048()
{
  v2 = *v1;
  *(*v1 + 216) = v0;

  if (v0)
  {
    v3 = v2[18];
    v4 = v2[19];
    v5 = sub_F280;
  }

  else
  {
    v6 = v2[24];
    v7 = v2[20];

    v3 = v2[18];
    v4 = v2[19];
    v5 = sub_F178;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_F178()
{
  v1 = v0[23];
  v2 = v0[13];

  if (*(v2 + v1))
  {
    v3 = v0[13];
    swift_getKeyPath();
    v4 = swift_task_alloc();
    *(v4 + 16) = v3;
    *(v4 + 24) = 0;
    v0[12] = v3;
    sub_28078();
  }

  v5 = v0[1];

  return v5();
}

uint64_t sub_F280()
{
  v1 = v0[24];
  v2 = v0[20];

  sub_28178();
  swift_errorRetain();
  v3 = sub_28258();
  v4 = sub_29128();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    swift_errorRetain();
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v7;
    *v6 = v7;
    _os_log_impl(&dword_0, v3, v4, "Error ending guest pass transfer: %@", v5, 0xCu);
    sub_925C(v6, &qword_391E8, &qword_2A080);
  }

  else
  {
  }

  (*(v0[15] + 8))(v0[16], v0[14]);

  v8 = v0[1];

  return v8();
}

uint64_t sub_F428(uint64_t a1)
{
  v2[44] = a1;
  v2[45] = v1;
  v2[46] = swift_getObjectType();
  v3 = sub_28268();
  v2[47] = v3;
  v2[48] = *(v3 - 8);
  v2[49] = swift_task_alloc();
  v2[50] = swift_task_alloc();
  sub_28F78();
  v2[51] = sub_28F68();
  v4 = sub_28F58();
  v2[52] = v4;
  v2[53] = v5;

  return _swift_task_switch(sub_F568, v4, v5);
}

uint64_t sub_F568()
{
  strcpy((v0 + 224), "guestPassData");
  v1 = *(v0 + 352);
  *(v0 + 238) = -4864;
  sub_29248();
  if (!*(v1 + 16) || (v2 = sub_12054(v0 + 16), (v3 & 1) == 0))
  {
    sub_12548(v0 + 16);
LABEL_11:

    sub_280F8();
    sub_1316C(&qword_395A0, &type metadata accessor for AXGuestPassError, &protocol conformance descriptor for AXGuestPassError);
    swift_allocError();
    sub_28108();
    swift_willThrow();
LABEL_12:
    sub_28178();
    swift_errorRetain();
    v15 = sub_28258();
    v16 = sub_29128();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *v17 = 138412290;
      swift_errorRetain();
      v19 = _swift_stdlib_bridgeErrorToNSError();
      *(v17 + 4) = v19;
      *v18 = v19;
      _os_log_impl(&dword_0, v15, v16, "Error beginning guest pass session: %@", v17, 0xCu);
      sub_925C(v18, &qword_391E8, &qword_2A080);
    }

    else
    {
    }

    (*(*(v0 + 384) + 8))(*(v0 + 392), *(v0 + 376));
LABEL_16:

    v20 = *(v0 + 8);

    return v20();
  }

  sub_905C(*(*(v0 + 352) + 56) + 32 * v2, v0 + 96);
  sub_12548(v0 + 16);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_11;
  }

  v5 = *(v0 + 240);
  v4 = *(v0 + 248);
  *(v0 + 432) = v5;
  *(v0 + 440) = v4;
  v6 = objc_opt_self();
  isa = sub_28018().super.isa;
  *(v0 + 320) = 0;
  v8 = [v6 propertyListWithData:isa options:0 format:0 error:v0 + 320];

  v9 = *(v0 + 320);
  if (!v8)
  {
    v22 = v9;

    sub_27F78();

LABEL_22:
    swift_willThrow();
    sub_9008(v5, v4);
    goto LABEL_12;
  }

  v10 = v9;
  sub_291F8();
  swift_unknownObjectRelease();
  sub_7E8C(&qword_395A8, &qword_2A6C0);
  if (!swift_dynamicCast())
  {

    sub_280F8();
    sub_1316C(&qword_395A0, &type metadata accessor for AXGuestPassError, &protocol conformance descriptor for AXGuestPassError);
    swift_allocError();
    sub_28108();
    goto LABEL_22;
  }

  v11 = *(v0 + 328);
  sub_28168();
  *(v0 + 256) = sub_28148();
  *(v0 + 264) = v12;
  sub_29248();
  if (*(v11 + 16) && (v13 = sub_12054(v0 + 56), (v14 & 1) != 0))
  {
    sub_905C(*(v11 + 56) + 32 * v13, v0 + 160);
    sub_12548(v0 + 56);

    if (swift_dynamicCast())
    {
      sub_B54C(*(v0 + 304), *(v0 + 312));
    }
  }

  else
  {

    sub_12548(v0 + 56);
  }

  v23 = *(v0 + 360);
  v24 = *(v23 + OBJC_IVAR___AXGuestPassServer_settingsProfileManager);
  v25 = sub_28018().super.isa;
  [v24 startGuestModeSessionWithData:v25];

  _AXSTripleClickAddOption();
  swift_getKeyPath();
  *(v0 + 336) = v23;
  sub_1316C(&qword_39550, type metadata accessor for AXGuestPassServer, &unk_2A5F0);
  sub_28088();

  if (*(v23 + OBJC_IVAR___AXGuestPassServer___gpSessionViewController))
  {

    sub_28178();
    v26 = sub_28258();
    v27 = sub_29128();
    v28 = os_log_type_enabled(v26, v27);
    v29 = *(v0 + 400);
    v30 = *(v0 + 376);
    v31 = *(v0 + 384);
    if (v28)
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_0, v26, v27, "Tried to start a guest pass session, but a session view already existed", v32, 2u);
    }

    sub_9008(v5, v4);

    (*(v31 + 8))(v29, v30);
    goto LABEL_16;
  }

  sub_281E8();
  *(v0 + 448) = sub_281D8();
  *(v0 + 344) = sub_AD5C();
  sub_28A58();
  v33 = *(v0 + 272);
  v34 = *(v0 + 280);
  *(v0 + 456) = v33;
  *(v0 + 464) = v34;
  *(v0 + 288) = v33;
  *(v0 + 296) = v34;
  v35 = sub_280B8();
  v36 = sub_28158();
  v38 = v37;

  *(v0 + 472) = v38;
  *(v0 + 208) = 0u;
  *(v0 + 192) = 0u;
  v39 = swift_task_alloc();
  *(v0 + 480) = v39;
  sub_13230();
  *v39 = v0;
  v39[1] = sub_FD5C;
  v40 = *(v0 + 360);

  return AXUniversalDisplayManager.addContent<A>(withView:userInteractionEnabled:service:sceneClientIdentifier:windowIdentifier:context:userInterfaceStyle:windowScene:spatialConfiguration:)(v0 + 288, 1, v40, 0, 0, v36, v38, 0);
}

uint64_t sub_FD5C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 488) = v1;

  if (v1)
  {
    v6 = v4[56];
    v5 = v4[57];

    sub_925C((v4 + 24), &qword_39598, &qword_2AEB0);

    v7 = v4[52];
    v8 = v4[53];
    v9 = sub_1015C;
  }

  else
  {
    v11 = v4[56];
    v10 = v4[57];

    v4[62] = a1;
    sub_925C((v4 + 24), &qword_39598, &qword_2AEB0);

    v7 = v4[52];
    v8 = v4[53];
    v9 = sub_FF30;
  }

  return _swift_task_switch(v9, v7, v8);
}

uint64_t sub_FF30()
{
  v2 = v0[61];
  v1 = v0[62];

  sub_B124(v1, &OBJC_IVAR___AXGuestPassServer___gpSessionViewController, &unk_2A6C8, sub_13314);
  sub_20978();
  v4 = v0[54];
  v3 = v0[55];
  if (v2)
  {
    sub_9008(v0[54], v0[55]);
    sub_28178();
    swift_errorRetain();
    v5 = sub_28258();
    v6 = sub_29128();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      *v7 = 138412290;
      swift_errorRetain();
      v9 = _swift_stdlib_bridgeErrorToNSError();
      *(v7 + 4) = v9;
      *v8 = v9;
      _os_log_impl(&dword_0, v5, v6, "Error beginning guest pass session: %@", v7, 0xCu);
      sub_925C(v8, &qword_391E8, &qword_2A080);
    }

    else
    {
    }

    (*(v0[48] + 8))(v0[49], v0[47]);
  }

  else
  {
    sub_113F0();
    sub_9008(v4, v3);
  }

  v10 = v0[1];

  return v10();
}

uint64_t sub_1015C()
{
  v1 = v0[54];
  v2 = v0[55];

  sub_9008(v1, v2);
  sub_28178();
  swift_errorRetain();
  v3 = sub_28258();
  v4 = sub_29128();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    swift_errorRetain();
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v7;
    *v6 = v7;
    _os_log_impl(&dword_0, v3, v4, "Error beginning guest pass session: %@", v5, 0xCu);
    sub_925C(v6, &qword_391E8, &qword_2A080);
  }

  else
  {
  }

  (*(v0[48] + 8))(v0[49], v0[47]);

  v8 = v0[1];

  return v8();
}

uint64_t sub_1032C()
{
  v1[5] = v0;
  v2 = sub_28268();
  v1[6] = v2;
  v1[7] = *(v2 - 8);
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  sub_28F78();
  v1[10] = sub_28F68();
  v4 = sub_28F58();
  v1[11] = v4;
  v1[12] = v3;

  return _swift_task_switch(sub_1042C, v4, v3);
}

uint64_t sub_1042C()
{
  v1 = v0[5];
  [*(v1 + OBJC_IVAR___AXGuestPassServer_settingsProfileManager) endGuestModeSession];
  _AXSTripleClickRemoveOption();
  v0[13] = sub_281E8();
  v0[14] = sub_281D8();
  swift_getKeyPath();
  v0[15] = OBJC_IVAR___AXGuestPassServer___observationRegistrar;
  v0[2] = v1;
  v0[16] = sub_1316C(&qword_39550, type metadata accessor for AXGuestPassServer, &unk_2A5F0);
  sub_28088();

  v2 = OBJC_IVAR___AXGuestPassServer___gpSessionViewController;
  v0[17] = OBJC_IVAR___AXGuestPassServer___gpSessionViewController;
  v3 = *(v1 + v2);
  v0[18] = v3;
  v4 = v3;
  v5 = sub_280B8();
  v6 = sub_28158();
  v8 = v7;

  v0[19] = v8;
  v9 = swift_task_alloc();
  v0[20] = v9;
  *v9 = v0;
  v9[1] = sub_105D4;
  v10 = v0[5];

  return AXUniversalDisplayManager.removeContent(withViewController:userInteractionEnabled:windowIdentifier:service:context:)(v3, 1, v6, v8, v10, 0);
}

uint64_t sub_105D4()
{
  v2 = *v1;
  *(*v1 + 168) = v0;

  if (v0)
  {
    v3 = v2[11];
    v4 = v2[12];
    v5 = sub_10ABC;
  }

  else
  {
    v6 = v2[18];
    v7 = v2[14];

    v3 = v2[11];
    v4 = v2[12];
    v5 = sub_10704;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_10704()
{
  v1 = v0[17];
  v2 = v0[5];

  v3 = v0[21];
  if (*(v2 + v1))
  {
    v4 = v0[5];
    swift_getKeyPath();
    v5 = swift_task_alloc();
    *(v5 + 16) = v4;
    *(v5 + 24) = 0;
    v0[4] = v4;
    sub_28078();
  }

  if (AXDeviceHasJindo())
  {
    v6 = sub_281D8();
    v7 = sub_280B8();
    v8 = sub_28158();
    v10 = v9;

    v28._countAndFlagsBits = v8;
    v28._object = v10;
    sub_281A8(v28);

    if (v3)
    {
      sub_28178();
      swift_errorRetain();
      v11 = sub_28258();
      v12 = sub_29128();

      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        v14 = swift_slowAlloc();
        *v13 = 138412290;
        swift_errorRetain();
        v15 = _swift_stdlib_bridgeErrorToNSError();
        *(v13 + 4) = v15;
        *v14 = v15;
        _os_log_impl(&dword_0, v11, v12, "Error ending guest pass session: %@", v13, 0xCu);
        sub_925C(v14, &qword_391E8, &qword_2A080);
      }

      else
      {
      }

      (*(v0[7] + 8))(v0[8], v0[6]);
      goto LABEL_13;
    }
  }

  else
  {
    sub_2146C();
  }

  sub_11578();
  v16 = [objc_opt_self() sharedInstance];
  [v16 invalidateAssertionUIIfNeeded];

  sub_28178();
  v17 = sub_28258();
  v18 = sub_29138();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_0, v17, v18, "AXGuestPassNetworkConnection: tearing down sender connection and listener", v19, 2u);
  }

  v20 = v0[9];
  v21 = v0[6];
  v22 = v0[7];
  v23 = v0[5];

  (*(v22 + 8))(v20, v21);
  swift_getKeyPath();
  v0[3] = v23;
  sub_28088();

  v24 = *(v23 + OBJC_IVAR___AXGuestPassServer__networkConnection);
  sub_1ADF8();

LABEL_13:

  v25 = v0[1];

  return v25();
}

uint64_t sub_10ABC()
{
  v1 = v0[18];
  v2 = v0[14];

  sub_28178();
  swift_errorRetain();
  v3 = sub_28258();
  v4 = sub_29128();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    swift_errorRetain();
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v7;
    *v6 = v7;
    _os_log_impl(&dword_0, v3, v4, "Error ending guest pass session: %@", v5, 0xCu);
    sub_925C(v6, &qword_391E8, &qword_2A080);
  }

  else
  {
  }

  (*(v0[7] + 8))(v0[8], v0[6]);

  v8 = v0[1];

  return v8();
}

uint64_t sub_10C68()
{
  v1[11] = v0;
  v2 = sub_28268();
  v1[12] = v2;
  v1[13] = *(v2 - 8);
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  sub_28F78();
  v1[16] = sub_28F68();
  v4 = sub_28F58();
  v1[17] = v4;
  v1[18] = v3;

  return _swift_task_switch(sub_10D68, v4, v3);
}

uint64_t sub_10D68()
{
  v1 = [objc_opt_self() sharedInstance];
  v2 = [v1 guestPassSessionIsActive];

  if (v2)
  {
    sub_28178();
    v3 = sub_28258();
    v4 = sub_29138();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_0, v3, v4, "Guest pass session attempted to recover, most likely from a crash. Ending the session as the network connection has been severed.", v5, 2u);
    }

    v6 = v0[15];
    v7 = v0[12];
    v8 = v0[13];

    (*(v8 + 8))(v6, v7);
    v9 = swift_task_alloc();
    v0[19] = v9;
    *v9 = v0;
    v9[1] = sub_10FC4;

    return sub_1032C();
  }

  else
  {

    sub_28178();
    v11 = sub_28258();
    v12 = sub_29128();
    v13 = os_log_type_enabled(v11, v12);
    v15 = v0[13];
    v14 = v0[14];
    v16 = v0[12];
    if (v13)
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_0, v11, v12, "Attempted to resume guest pass session but session was inactive in preferences.", v17, 2u);
    }

    (*(v15 + 8))(v14, v16);

    v18 = v0[1];

    return v18();
  }
}

uint64_t sub_10FC4()
{
  v1 = *v0;

  v2 = *(v1 + 144);
  v3 = *(v1 + 136);

  return _swift_task_switch(sub_110E4, v3, v2);
}

uint64_t sub_110E4()
{

  sub_290A8();
  v1 = sub_28FE8();
  v2 = direct field offset for AXSettings.guestPass;
  swift_beginAccess();
  v3 = *&v1[v2];

  sub_29068();
  v4 = sub_28FE8();
  v5 = direct field offset for AXSettings.guestPass;
  swift_beginAccess();
  v6 = *&v4[v5];

  sub_29048();
  v7 = sub_28FE8();
  v8 = direct field offset for AXSettings.guestPass;
  swift_beginAccess();
  v9 = *&v7[v8];

  sub_29088();

  v10 = *(v0 + 8);

  return v10();
}

void sub_113F0()
{
  v1 = v0;
  v2 = sub_28268();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_28178();
  v6 = sub_28258();
  v7 = sub_29108();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_0, v6, v7, "Starting monitor for device lock status.", v8, 2u);
  }

  (*(v3 + 8))(v5, v2);
  v9 = CFNotificationCenterGetDarwinNotifyCenter();
  v10 = AXkMobileKeyBagLockStatusNotificationID();
  CFNotificationCenterAddObserver(v9, v1, sub_11A10, v10, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
}

void sub_11578()
{
  v1 = v0;
  v2 = sub_28268();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_28178();
  v6 = sub_28258();
  v7 = sub_29108();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_0, v6, v7, "Stopping monitor for device lock status.", v8, 2u);
  }

  (*(v3 + 8))(v5, v2);
  v9 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveEveryObserver(v9, v1);
}

uint64_t sub_116F4()
{
  v1 = [objc_opt_self() sharedInstance];
  v2 = [v1 guestPassSessionIsActive];

  if (v2)
  {
    v3 = swift_task_alloc();
    *(v0 + 24) = v3;
    *v3 = v0;
    v3[1] = sub_11828;

    return sub_1032C();
  }

  else
  {
    v5 = swift_task_alloc();
    *(v0 + 32) = v5;
    *v5 = v0;
    v5[1] = sub_1191C;

    return sub_ECF0();
  }
}

uint64_t sub_11828()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1191C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_11A18()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_77F4;

  return sub_ECF0();
}

id AXGuestPassNetworkConnection.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for AXGuestPassServer(uint64_t a1)
{
  result = qword_39538;
  if (!qword_39538)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_11D3C(uint64_t a1)
{
  result = sub_280A8();
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

uint64_t sub_11E20()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_9CB0;

  return sub_11A18();
}

void sub_11EFC(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_B124(v1, &OBJC_IVAR___AXGuestPassServer___gpTransferViewController, &unk_2A630, sub_13640);
}

void sub_11F50()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR___AXGuestPassServer___gpTransferViewController);
  *(v1 + OBJC_IVAR___AXGuestPassServer___gpTransferViewController) = v2;
  v4 = v2;
}

unint64_t sub_11F90()
{
  result = qword_39560;
  if (!qword_39560)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_39560);
  }

  return result;
}

unint64_t sub_11FDC(uint64_t a1, uint64_t a2)
{
  sub_29368();
  sub_28F08();
  v4 = sub_29378();

  return sub_12098(a1, a2, v4);
}

unint64_t sub_12054(uint64_t a1)
{
  v2 = v1;
  v4 = sub_29228(*(v2 + 40));

  return sub_12150(a1, v4);
}

unint64_t sub_12098(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_29308())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_12150(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_1259C(*(v2 + 48) + 40 * v4, v8);
      v6 = sub_29238();
      sub_12548(v8);
      if (v6)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_12218(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_7E8C(&qword_395C0, &qword_2A780);
    v3 = sub_292D8();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_11FDC(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_1231C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_7E8C(&qword_395B8, &qword_2A740);
    v3 = sub_292D8();
    v4 = a1 + 32;

    while (1)
    {
      sub_133C4(v4, v13);
      result = sub_12054(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_13434(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_12438()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_12480(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_77F4;

  return sub_D374(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_125F8(uint64_t a1)
{
  v2 = type metadata accessor for AXGuestPassRootView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_12654(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v29 = a5;
  v31 = a4;
  v10 = sub_7E8C(&qword_39288, &qword_2A540);
  __chkstk_darwin(v10 - 8);
  v30 = &v27 - v11;
  v12 = sub_28268();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_28178();

  v16 = sub_28258();
  v17 = sub_29118();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v28 = v6;
    v20 = v19;
    v32 = v19;
    *v18 = 134218242;
    *(v18 + 4) = a1;
    *(v18 + 12) = 2080;
    *(v18 + 14) = sub_89C0(a2, a3, &v32);
    _os_log_impl(&dword_0, v16, v17, "Service got async message: %ld from client: %s.", v18, 0x16u);
    sub_8F68(v20);
    v6 = v28;
  }

  result = (*(v13 + 8))(v15, v12);
  if (a1 == 14)
  {
    v22 = sub_28F98();
    v23 = v30;
    (*(*(v22 - 8) + 56))(v30, 1, 1, v22);
    v24 = swift_allocObject();
    v24[2] = 0;
    v24[3] = 0;
    v25 = v31;
    v24[4] = v6;
    v24[5] = v25;
    v24[6] = v29;
    v26 = v6;

    sub_16BFC(0, 0, v23, &unk_2A750, v24);
  }

  return result;
}

Swift::Int sub_12920(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_7E8C(&unk_395D0, &qword_2A790);
    v3 = sub_29258();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      sub_1259C(v6 + 40 * v4, v19);
      result = sub_29228(*(v3 + 40));
      v8 = ~(-1 << *(v3 + 32));
      for (i = result & v8; ; i = (i + 1) & v8)
      {
        v10 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v10) == 0)
        {
          break;
        }

        sub_1259C(*(v3 + 48) + 40 * i, v18);
        v11 = sub_29238();
        result = sub_12548(v18);
        if (v11)
        {
          sub_12548(v19);
          goto LABEL_4;
        }
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v10;
      v12 = *(v3 + 48) + 40 * i;
      v13 = v19[0];
      v14 = v19[1];
      *(v12 + 32) = v20;
      *v12 = v13;
      *(v12 + 16) = v14;
      v15 = *(v3 + 16);
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (!v16)
      {
        *(v3 + 16) = v17;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return &_swiftEmptySetSingleton;
  }

  return result;
}

Swift::Int sub_12A80(uint64_t a1)
{
  if (a1 > 8)
  {
    if ((a1 - 11) < 3 || (a1 - 9) < 2 || a1 != 14)
    {
      goto LABEL_10;
    }

LABEL_12:
    sub_7E8C(&qword_395C8, &qword_2A788);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_29DD0;
    sub_29248();
    sub_29248();
    v2 = sub_12920(inited);
    swift_setDeallocating();
LABEL_13:
    swift_arrayDestroy();
    return v2;
  }

  if ((a1 - 5) < 4)
  {
    goto LABEL_12;
  }

  if (a1 == 2)
  {
    sub_7E8C(&qword_395C8, &qword_2A788);
    v5 = swift_initStackObject();
    *(v5 + 16) = xmmword_2A580;
    sub_29248();
    sub_29248();
    sub_29248();
    v2 = sub_12920(v5);
    swift_setDeallocating();
    goto LABEL_13;
  }

  if (a1 == 3)
  {
    goto LABEL_12;
  }

LABEL_10:
  sub_7E8C(&qword_395C8, &qword_2A788);
  v1 = swift_initStackObject();
  *(v1 + 16) = xmmword_29DC0;
  sub_29248();
  v2 = sub_12920(v1);
  swift_setDeallocating();
  sub_12548(v1 + 32);
  return v2;
}

uint64_t sub_12E50(void *a1)
{
  v2 = sub_7E8C(&qword_39288, &qword_2A540);
  __chkstk_darwin(v2 - 8);
  v4 = &v16 - v3;
  v5 = sub_28268();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = AXDeviceIsUnlocked();
  if ((result & 1) == 0 && a1)
  {
    v10 = a1;
    sub_28178();
    v11 = sub_28258();
    v12 = sub_29108();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_0, v11, v12, "User locked device. Ending guest pass session.", v13, 2u);
    }

    (*(v6 + 8))(v8, v5);
    v14 = sub_28F98();
    (*(*(v14 - 8) + 56))(v4, 1, 1, v14);
    v15 = swift_allocObject();
    v15[2] = 0;
    v15[3] = 0;
    v15[4] = v10;
    sub_16BFC(0, 0, v4, &unk_2A6B8, v15);
  }

  return result;
}

uint64_t sub_13078()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_130B8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_9CB0;

  return sub_116D4(a1, v4, v5, v6);
}

uint64_t sub_1316C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_131DC(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_B124(v1, &OBJC_IVAR___AXGuestPassServer___gpSessionViewController, &unk_2A6C8, sub_13314);
}

unint64_t sub_13230()
{
  result = qword_395B0;
  if (!qword_395B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_395B0);
  }

  return result;
}

uint64_t sub_13288(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_B54C(v1, v2);
}

uint64_t sub_132C8()
{
  v1 = v0[4];
  v2 = (v0[2] + OBJC_IVAR___AXGuestPassServer__senderDescription);
  *v2 = v0[3];
  v2[1] = v1;
}

void sub_13314()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR___AXGuestPassServer___gpSessionViewController);
  *(v1 + OBJC_IVAR___AXGuestPassServer___gpSessionViewController) = v2;
  v4 = v2;
}

void sub_13384()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR___AXGuestPassServer__networkConnection);
  *(v1 + OBJC_IVAR___AXGuestPassServer__networkConnection) = v2;
  v4 = v2;
}

uint64_t sub_133C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_7E8C(&qword_39578, &unk_2A670);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

_OWORD *sub_13434(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_13444()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_13484()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_134CC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_9CB0;

  return sub_C16C(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_13594()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_135D4(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_135E4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t AXSUIGuestPassOnboardingView.init(isLearnMore:isPresented:presentDevicePicker:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X8>)
{
  *a8 = result;
  *(a8 + 8) = a2;
  *(a8 + 16) = a3;
  *(a8 + 24) = a4;
  *(a8 + 32) = a5;
  *(a8 + 40) = a6;
  *(a8 + 48) = a7;
  return result;
}

uint64_t AXSUIGuestPassOnboardingView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v41 = a1;
  v1 = sub_28228();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_7E8C(&qword_395E0, &qword_2A7C0);
  __chkstk_darwin(v5 - 8);
  v6 = sub_7E8C(&qword_395E8, &qword_2A7C8);
  v7 = *(v6 - 8);
  v37 = v6;
  v38 = v7;
  __chkstk_darwin(v6);
  v9 = v32 - v8;
  v10 = sub_7E8C(&qword_395F0, &qword_2A7D0);
  v39 = *(v10 - 8);
  v40 = v10;
  __chkstk_darwin(v10);
  v12 = v32 - v11;
  v48._object = 0x800000000002B940;
  v48._countAndFlagsBits = 0xD000000000000010;
  v13 = sub_281F8(v48);
  v35 = v14;
  v36 = v13;
  v15 = sub_28E88();
  v46 = sub_13D7C;
  v47 = 0;
  aBlock = _NSConcreteStackBlock;
  v43 = 1107296256;
  v44 = sub_13D9C;
  v45 = &unk_35E90;
  v16 = _Block_copy(&aBlock);
  v17 = AXLocStringForDeviceVariant();
  _Block_release(v16);

  if (v17)
  {
    v18 = sub_28EC8();
    v33 = v19;
    v34 = v18;
  }

  else
  {
    v33 = 0;
    v34 = 0;
  }

  v32[1] = "@NSString16@?0@NSString8";
  sub_7E8C(&qword_395F8, &qword_2A7D8);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_29DC0;
  sub_28218();
  aBlock = v20;
  sub_15638(&qword_39600, &type metadata accessor for OnboardingTraits, &protocol conformance descriptor for OnboardingTraits);
  sub_7E8C(&qword_39608, &qword_2A7E0);
  sub_15494(&qword_39610, &qword_39608, &qword_2A7E0, &protocol conformance descriptor for [A]);
  sub_29208();
  sub_28AF8();
  v21 = (*(v2 + 8))(v4, v1);
  __chkstk_darwin(v21);
  sub_7E8C(&qword_39618, &qword_2A7E8);
  sub_15494(&qword_39620, &qword_39618, &qword_2A7E8, &protocol conformance descriptor for VStack<A>);
  v22 = v9;
  sub_28208();
  sub_28B68();
  v23 = sub_7E8C(&qword_39628, &qword_2A7F0);
  v24 = sub_15494(&qword_39630, &qword_395E8, &qword_2A7C8, &protocol conformance descriptor for AXOnboardingView<A, B, C>);
  v25 = sub_149A4();
  v26 = v37;
  sub_289F8();
  v27 = (*(v38 + 8))(v22, v26);
  __chkstk_darwin(v27);
  sub_7E8C(&qword_39658, &qword_2A800);
  aBlock = v26;
  v43 = &type metadata for Solarium;
  v44 = v23;
  v45 = v24;
  v46 = &protocol witness table for Solarium;
  v47 = v25;
  swift_getOpaqueTypeConformance2();
  v28 = sub_7F38(&qword_39660, &qword_2A808);
  v29 = sub_14FE0();
  aBlock = v28;
  v43 = v29;
  swift_getOpaqueTypeConformance2();
  v30 = v40;
  sub_289D8();
  return (*(v39 + 8))(v12, v30);
}

uint64_t sub_13D7C(Swift::String result)
{
  if (result._object)
  {
    result._countAndFlagsBits = sub_281F8(result);
  }

  return result._countAndFlagsBits;
}

id sub_13D9C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    v3 = sub_28EC8();
    v5 = v4;
  }

  else
  {
    v3 = 0;
    v5 = 0;
  }

  v2(v3, v5);
  v7 = v6;

  if (v7)
  {
    v8 = sub_28E88();
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

uint64_t sub_13E4C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_13E64@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_7E8C(&qword_39618, &qword_2A7E8);
  __chkstk_darwin(v4);
  v7 = &v11 - v6;
  if (*a1)
  {
    v8 = *(v5 + 56);

    return v8(a2, 1, 1, v4);
  }

  else
  {
    v12 = v5;
    *v7 = sub_286B8();
    *(v7 + 1) = 0;
    v7[16] = 1;
    v10 = sub_7E8C(&qword_39698, &qword_2A8E8);
    sub_13FE0(a1, &v7[*(v10 + 44)]);
    sub_1551C(v7, a2, &qword_39618, &qword_2A7E8);
    return (*(v12 + 56))(a2, 0, 1, v4);
  }
}

uint64_t sub_13FE0@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v50 = a2;
  v48 = sub_28248();
  v46 = *(v48 - 8);
  __chkstk_darwin(v48);
  v44 = &v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_7E8C(&qword_396A0, &qword_2A8F0);
  v47 = *(v49 - 8);
  v4 = __chkstk_darwin(v49);
  v45 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v52 = &v41 - v6;
  v7 = sub_28238();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_7E8C(&qword_393E0, &qword_2A530);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v41 - v13;
  v43 = sub_7E8C(&qword_396A8, &qword_2A8F8);
  v51 = *(v43 - 8);
  v15 = __chkstk_darwin(v43);
  v42 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v18 = &v41 - v17;
  v19 = swift_allocObject();
  v20 = *(a1 + 16);
  *(v19 + 16) = *a1;
  *(v19 + 32) = v20;
  *(v19 + 48) = *(a1 + 32);
  *(v19 + 64) = *(a1 + 48);
  sub_154E4(a1, v53);
  sub_28AA8();
  sub_285B8();
  sub_15494(&qword_39688, &qword_393E0, &qword_2A530, &protocol conformance descriptor for Button<A>);
  sub_15638(&qword_396B0, &type metadata accessor for AXOnboardingPrimaryButtonStyle, &protocol conformance descriptor for AXOnboardingPrimaryButtonStyle);
  v21 = v18;
  v41 = v18;
  sub_28938();
  (*(v8 + 8))(v10, v7);
  v22 = *(v12 + 8);
  v22(v14, v11);
  v23 = swift_allocObject();
  v24 = *(a1 + 16);
  *(v23 + 16) = *a1;
  *(v23 + 32) = v24;
  *(v23 + 48) = *(a1 + 32);
  *(v23 + 64) = *(a1 + 48);
  sub_154E4(a1, v53);
  sub_28AA8();
  v25 = v44;
  sub_285C8();
  sub_15638(&qword_396B8, &type metadata accessor for AXOnboardingSecondaryButtonStyle, &protocol conformance descriptor for AXOnboardingSecondaryButtonStyle);
  v26 = v52;
  v27 = v48;
  sub_28938();
  (*(v46 + 8))(v25, v27);
  v22(v14, v11);
  v28 = *(v51 + 16);
  v29 = v42;
  v30 = v21;
  v31 = v43;
  v28(v42, v30, v43);
  v32 = v47;
  v33 = *(v47 + 16);
  v34 = v45;
  v35 = v49;
  v33(v45, v26, v49);
  v36 = v50;
  v28(v50, v29, v31);
  v37 = sub_7E8C(&qword_396C0, &unk_2A900);
  v33(&v36[*(v37 + 48)], v34, v35);
  v38 = *(v32 + 8);
  v38(v52, v35);
  v39 = *(v51 + 8);
  v39(v41, v31);
  v38(v34, v35);
  return (v39)(v29, v31);
}

uint64_t sub_14658(uint64_t a1)
{
  sub_290A8();
  v1 = sub_28FE8();
  v2 = direct field offset for AXSettings.guestPass;
  swift_beginAccess();
  v3 = *&v1[v2];

  sub_29028();
  sub_7E8C(&qword_39690, &qword_2A8E0);
  sub_28AD8();
  return sub_28AD8();
}

uint64_t sub_14740@<X0>(uint64_t a1@<X8>)
{
  v6._countAndFlagsBits = 0x45554E49544E4F43;
  v6._object = 0xE800000000000000;
  sub_281F8(v6);
  sub_A978();
  result = sub_288F8();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_147AC@<X0>(uint64_t a1@<X8>)
{
  v6._object = 0x800000000002B9C0;
  v6._countAndFlagsBits = 0xD000000000000014;
  sub_281F8(v6);
  sub_A978();
  result = sub_288F8();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_14824@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_7E8C(&qword_39648, &qword_2A7F8);
  __chkstk_darwin(v4);
  v6 = v17 - v5;
  sub_28818();
  sub_285A8();
  v19 = v7;
  v20 = v8;
  v21 = v9;
  v22 = v10;
  v23 = 0;
  sub_28748();
  v11 = sub_7E8C(&qword_395E8, &qword_2A7C8);
  (*(*(v11 - 8) + 16))(v6, a1, v11);
  sub_28828();
  AXDeviceIsPad();
  sub_285A8();
  v17[0] = v12;
  v17[1] = v13;
  v17[2] = v14;
  v17[3] = v15;
  v18 = 0;
  sub_7E8C(&qword_39628, &qword_2A7F0);
  sub_28748();
  return sub_1551C(v6, a2, &qword_39648, &qword_2A7F8);
}

unint64_t sub_149A4()
{
  result = qword_39638;
  if (!qword_39638)
  {
    sub_7F38(&qword_39628, &qword_2A7F0);
    sub_14A60();
    sub_15638(&qword_39650, &type metadata accessor for SafeAreaPaddingModifier, &protocol conformance descriptor for SafeAreaPaddingModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_39638);
  }

  return result;
}

unint64_t sub_14A60()
{
  result = qword_39640;
  if (!qword_39640)
  {
    sub_7F38(&qword_39648, &qword_2A7F8);
    sub_15494(&qword_39630, &qword_395E8, &qword_2A7C8, &protocol conformance descriptor for AXOnboardingView<A, B, C>);
    sub_15638(&qword_39650, &type metadata accessor for SafeAreaPaddingModifier, &protocol conformance descriptor for SafeAreaPaddingModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_39640);
  }

  return result;
}

uint64_t sub_14B48@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_7E8C(&qword_39680, &unk_2A8D0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v24 - v6;
  v8 = sub_286F8();
  __chkstk_darwin(v8 - 8);
  v9 = sub_7E8C(&qword_39670, &qword_2A810);
  v28 = *(v9 - 8);
  __chkstk_darwin(v9);
  v27 = v24 - v10;
  v11 = sub_7E8C(&qword_39660, &qword_2A808);
  v12 = __chkstk_darwin(v11);
  v14 = v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = v24 - v15;
  if (*a1)
  {
    v17 = sub_286E8();
    v24[1] = v24;
    __chkstk_darwin(v17);
    v25 = v7;
    v26 = a2;
    v24[-2] = a1;
    sub_7E8C(&qword_393E0, &qword_2A530);
    v24[0] = v9;
    sub_15494(&qword_39688, &qword_393E0, &qword_2A530, &protocol conformance descriptor for Button<A>);
    v18 = v27;
    sub_285E8();
    v19 = sub_15494(&qword_39678, &qword_39670, &qword_2A810, &protocol conformance descriptor for ToolbarItem<A, B>);
    v20 = v25;
    v21 = v24[0];
    sub_28708();
    (*(v5 + 16))(v14, v20, v4);
    (*(v5 + 56))(v14, 0, 1, v4);
    v29 = v21;
    v30 = v19;
    swift_getOpaqueTypeConformance2();
    sub_28718();
    sub_15424(v14);
    (*(v5 + 8))(v20, v4);
    (*(v28 + 8))(v18, v21);
  }

  else
  {
    (*(v5 + 56))(v14, 1, 1, v4);
    v22 = sub_15494(&qword_39678, &qword_39670, &qword_2A810, &protocol conformance descriptor for ToolbarItem<A, B>);
    v29 = v9;
    v30 = v22;
    swift_getOpaqueTypeConformance2();
    sub_28718();
    sub_15424(v14);
  }

  sub_14FE0();
  sub_28708();
  return sub_15424(v16);
}

unint64_t sub_14FE0()
{
  result = qword_39668;
  if (!qword_39668)
  {
    sub_7F38(&qword_39660, &qword_2A808);
    sub_7F38(&qword_39670, &qword_2A810);
    sub_15494(&qword_39678, &qword_39670, &qword_2A810, &protocol conformance descriptor for ToolbarItem<A, B>);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_39668);
  }

  return result;
}

uint64_t sub_150F0(uint64_t a1)
{
  v9._countAndFlagsBits = 1162760004;
  v9._object = 0xE400000000000000;
  v7 = sub_281F8(v9);
  v8 = v2;
  v3 = swift_allocObject();
  v4 = *(a1 + 16);
  *(v3 + 16) = *a1;
  *(v3 + 32) = v4;
  *(v3 + 48) = *(a1 + 32);
  *(v3 + 64) = *(a1 + 48);
  sub_154E4(a1, v6);
  sub_A978();
  return sub_28AC8();
}

__n128 sub_151EC(uint64_t a1, uint64_t a2)
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

uint64_t sub_15208(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 49))
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

uint64_t sub_15250(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_152B0()
{
  sub_7F38(&qword_395F0, &qword_2A7D0);
  sub_7F38(&qword_39658, &qword_2A800);
  sub_7F38(&qword_395E8, &qword_2A7C8);
  sub_7F38(&qword_39628, &qword_2A7F0);
  sub_15494(&qword_39630, &qword_395E8, &qword_2A7C8, &protocol conformance descriptor for AXOnboardingView<A, B, C>);
  sub_149A4();
  swift_getOpaqueTypeConformance2();
  sub_7F38(&qword_39660, &qword_2A808);
  sub_14FE0();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_15424(uint64_t a1)
{
  v2 = sub_7E8C(&qword_39660, &qword_2A808);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_15494(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_7F38(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1551C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_7E8C(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_1558C()
{

  return _swift_deallocObject(v0, 65, 7);
}

uint64_t sub_15638(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

Swift::String __swiftcall GuestPassLocString(_:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  if (qword_39038 != -1)
  {
    swift_once();
  }

  if (qword_396C8)
  {
    v3 = qword_396C8;
    v4 = sub_28E88();
    v5 = sub_28E88();
    v6 = sub_28E88();
    v7 = [v3 localizedStringForKey:v4 value:v5 table:v6];

    countAndFlagsBits = sub_28EC8();
    object = v8;
  }

  else
  {
  }

  v9 = countAndFlagsBits;
  v10 = object;
  result._object = v10;
  result._countAndFlagsBits = v9;
  return result;
}

void sub_157A8()
{
  v0 = sub_28E88();
  v1 = [objc_opt_self() bundleWithIdentifier:v0];

  qword_396C8 = v1;
}

id sub_15818()
{
  v1 = sub_7E8C(&qword_39288, &qword_2A540);
  __chkstk_darwin(v1 - 8);
  v3 = &v18 - v2;
  v4 = sub_28508();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_16A38();
  (*(v5 + 16))(v7, v0, v4);
  type metadata accessor for AXDevicePickerRepresentable(0);

  result = sub_29198();
  if (result)
  {
    v9 = result;
    v10._object = 0x800000000002B940;
    v10._countAndFlagsBits = 0xD000000000000010;
    GuestPassLocString(_:)(v10);
    v11 = sub_28E88();

    [v9 setTitle:v11];

    sub_7E8C(&qword_397C0, &qword_2AA58);
    sub_287F8();
    v12 = v19;
    v14 = *&v19[OBJC_IVAR____TtCV17AXGuestPassServer27AXDevicePickerRepresentable11Coordinator_onSelect];
    v13 = *&v19[OBJC_IVAR____TtCV17AXGuestPassServer27AXDevicePickerRepresentable11Coordinator_onSelect + 8];
    v15 = sub_28F98();
    (*(*(v15 - 8) + 56))(v3, 1, 1, v15);
    v16 = swift_allocObject();
    v16[2] = 0;
    v16[3] = 0;
    v16[4] = v9;
    v16[5] = v14;
    v16[6] = v13;
    v17 = v9;

    *&v12[OBJC_IVAR____TtCV17AXGuestPassServer27AXDevicePickerRepresentable11Coordinator_endpointTask] = sub_15F38(0, 0, v3, &unk_2AA68, v16);

    return v17;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_15AB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v7 = sub_28298();
  v6[5] = v7;
  v6[6] = *(v7 - 8);
  v6[7] = swift_task_alloc();

  return _swift_task_switch(sub_15B7C, 0, 0);
}

uint64_t sub_15B7C()
{
  v0[8] = sub_28F78();
  sub_28F68();

  v1 = swift_task_alloc();
  v0[9] = v1;
  *v1 = v0;
  v1[1] = sub_15C30;
  v2 = v0[7];

  return DDDevicePickerViewController.endpoint.getter(v2);
}

uint64_t sub_15C30()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_15ED4;
  }

  else
  {
    v2 = sub_15D44;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_15D44()
{
  *(v0 + 88) = sub_28F68();
  v2 = sub_28F58();

  return _swift_task_switch(sub_15DD0, v2, v1);
}

uint64_t sub_15DD0()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 24);

  v2(v1);

  return _swift_task_switch(sub_15E54, 0, 0);
}

uint64_t sub_15E54()
{
  (*(v0[6] + 8))(v0[7], v0[5]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_15ED4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_15F38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_7E8C(&qword_39288, &qword_2A540);
  __chkstk_darwin(v8 - 8);
  v10 = v22 - v9;
  sub_91EC(a3, v22 - v9);
  v11 = sub_28F98();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_16B94(v10);
  }

  else
  {
    sub_28F88();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_28F58();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_28EF8() + 32;

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_16B94(a3);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_16B94(a3);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

id sub_161D4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AXDevicePickerRepresentable.Coordinator(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_16294(uint64_t a1)
{
  result = type metadata accessor for AXDevicePickerRepresentable(319);
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

uint64_t sub_1635C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_163B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_28508();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_16488(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_28508();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_16540(uint64_t a1)
{
  result = sub_28508();
  if (v2 <= 0x3F)
  {
    result = sub_28438();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_16608(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = OBJC_IVAR____TtCV17AXGuestPassServer27AXDevicePickerRepresentable11Coordinator_endpointTask;
  if (*(*a2 + OBJC_IVAR____TtCV17AXGuestPassServer27AXDevicePickerRepresentable11Coordinator_endpointTask))
  {

    sub_7E8C(&qword_392D0, &qword_2A110);
    sub_28FA8();
  }

  *(v2 + v3) = 0;
}

uint64_t sub_166A4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = a1 - 8;
  __chkstk_darwin(a1);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_16978(v2, v6);
  v7 = (v2 + *(v4 + 28));
  v9 = *v7;
  v8 = v7[1];
  v10 = type metadata accessor for AXDevicePickerRepresentable.Coordinator(0);
  v11 = objc_allocWithZone(v10);
  *&v11[OBJC_IVAR____TtCV17AXGuestPassServer27AXDevicePickerRepresentable11Coordinator_endpointTask] = 0;
  sub_16978(v6, &v11[OBJC_IVAR____TtCV17AXGuestPassServer27AXDevicePickerRepresentable11Coordinator_parent]);
  v12 = &v11[OBJC_IVAR____TtCV17AXGuestPassServer27AXDevicePickerRepresentable11Coordinator_onSelect];
  *v12 = v9;
  *(v12 + 1) = v8;
  v15.receiver = v11;
  v15.super_class = v10;

  v13 = objc_msgSendSuper2(&v15, "init");
  result = sub_169DC(v6);
  *a2 = v13;
  return result;
}

uint64_t sub_167F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_16934(&qword_397B0, &unk_2A98C);

  return static UIViewControllerRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_16870(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_16934(&qword_397B0, &unk_2A98C);

  return static UIViewControllerRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_168F0(uint64_t a1)
{
  sub_16934(&qword_397B0, &unk_2A98C);
  sub_287A8();
  __break(1u);
}

uint64_t sub_16934(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for AXDevicePickerRepresentable(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_16978(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AXDevicePickerRepresentable(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_169DC(uint64_t a1)
{
  v2 = type metadata accessor for AXDevicePickerRepresentable(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_16A38()
{
  result = qword_397B8;
  if (!qword_397B8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_397B8);
  }

  return result;
}

uint64_t sub_16A84()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_16ACC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_77F4;

  return sub_15AB8(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_16B94(uint64_t a1)
{
  v2 = sub_7E8C(&qword_39288, &qword_2A540);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_16BFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_7E8C(&qword_39288, &qword_2A540);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_1ABBC(a3, v25 - v10, &qword_39288, &qword_2A540);
  v12 = sub_28F98();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_925C(v11, &qword_39288, &qword_2A540);
  }

  else
  {
    sub_28F88();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_28F58();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_28EF8() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_925C(a3, &qword_39288, &qword_2A540);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_925C(a3, &qword_39288, &qword_2A540);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_16EFC()
{
  swift_getKeyPath();
  sub_1A6DC(&qword_39A08, type metadata accessor for GuestPassPIN, "ݫ");
  sub_28088();

  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_16FAC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A6DC(&qword_39A08, type metadata accessor for GuestPassPIN, "ݫ");
  sub_28088();

  v4 = *(v3 + 24);
  *a2 = *(v3 + 16);
  a2[1] = v4;
}

uint64_t sub_17058(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);
  if (v5)
  {
    if (a2)
    {
      v6 = *(v2 + 16) == a1 && v5 == a2;
      if (v6 || (sub_29308() & 1) != 0)
      {
        goto LABEL_8;
      }
    }

LABEL_12:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1A6DC(&qword_39A08, type metadata accessor for GuestPassPIN, "ݫ");
    sub_28078();
  }

  if (a2)
  {
    goto LABEL_12;
  }

LABEL_8:
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

uint64_t sub_171C8()
{

  v1 = OBJC_IVAR____TtC17AXGuestPassServer12GuestPassPIN___observationRegistrar;
  v2 = sub_280A8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v3, v4);
}

uint64_t type metadata accessor for GuestPassPIN(uint64_t a1)
{
  result = qword_397F8;
  if (!qword_397F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_172C0(uint64_t a1)
{
  result = sub_280A8();
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

uint64_t sub_1735C()
{
  v1 = sub_7E8C(&qword_39288, &qword_2A540);
  __chkstk_darwin(v1 - 8);
  v3 = &v16 - v2;
  v4 = sub_28268();
  v5 = *(v4 - 8);
  result = __chkstk_darwin(v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(v0 + 16) && (*(v0 + 24) & 1) == 0)
  {
    v9 = result;
    v10 = v0;
    sub_28178();
    v11 = sub_28258();
    v12 = sub_29138();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_0, v11, v12, "showing PIN", v13, 2u);
    }

    (*(v5 + 8))(v8, v9);
    *(v10 + 24) = 1;
    sub_28518();
    swift_allocObject();
    swift_weakInit();

    sub_28528();

    sub_28558();
    v14 = sub_28F98();
    (*(*(v14 - 8) + 56))(v3, 1, 1, v14);
    v15 = swift_allocObject();
    v15[2] = 0;
    v15[3] = 0;
    v15[4] = v10;

    sub_16BFC(0, 0, v3, &unk_2AB38, v15);
  }

  return result;
}

uint64_t sub_175F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_7E8C(&qword_39288, &qword_2A540);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {

    sub_17058(a1, a2);
  }

  if (!a2)
  {
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      v9 = result;
      sub_28538();
      *(v9 + 24) = 0;
      sub_28518();
      v10 = *(v9 + 40);
      if (*(v10 + 24))
      {
        KeyPath = swift_getKeyPath();
        __chkstk_darwin(KeyPath);
        v14[-3] = 0;
        v14[-2] = 0;
        v14[-4] = v10;
        v14[1] = v10;
        sub_1A6DC(&qword_39A08, type metadata accessor for GuestPassPIN, "ݫ");

        sub_28078();
      }

      else
      {
        *(v10 + 16) = 0;
        *(v10 + 24) = 0;
      }

      v12 = sub_28F98();
      (*(*(v12 - 8) + 56))(v7, 1, 1, v12);
      v13 = swift_allocObject();
      v13[2] = 0;
      v13[3] = 0;
      v13[4] = v9;
      sub_16BFC(0, 0, v7, &unk_2AB68, v13);
    }
  }

  return result;
}

uint64_t sub_17898(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[16] = a4;
  v5 = sub_28268();
  v4[17] = v5;
  v4[18] = *(v5 - 8);
  v4[19] = swift_task_alloc();

  return _swift_task_switch(sub_17958, 0, 0);
}

uint64_t sub_17958()
{
  *(v0 + 160) = sub_281E8();
  sub_28F78();
  *(v0 + 168) = sub_28F68();
  v2 = sub_28F58();

  return _swift_task_switch(sub_179F8, v2, v1);
}

uint64_t sub_179F8()
{

  *(v0 + 176) = sub_281D8();

  return _swift_task_switch(sub_17A68, 0, 0);
}

uint64_t sub_17A68()
{
  v1 = *(v0 + 128);
  *(v0 + 112) = *(v1 + 40);
  type metadata accessor for GuestPassPIN(0);

  sub_28A58();
  v2 = *(v0 + 96);
  v3 = *(v0 + 104);
  *(v0 + 184) = v2;
  *(v0 + 192) = v3;
  *(v0 + 48) = v2;
  *(v0 + 56) = v3;
  *(v0 + 64) = v1;
  type metadata accessor for AXGuestPassServer(0);

  v4 = sub_AD5C();
  *(v0 + 200) = v4;
  v5 = sub_280B8();
  v6 = sub_28158();
  v8 = v7;

  *(v0 + 208) = v8;
  *(v0 + 32) = 0u;
  *(v0 + 16) = 0u;
  v9 = swift_task_alloc();
  *(v0 + 216) = v9;
  sub_1A570();
  *v9 = v0;
  v9[1] = sub_17BF4;

  return AXUniversalDisplayManager.addContent<A>(withView:userInteractionEnabled:service:sceneClientIdentifier:windowIdentifier:context:userInterfaceStyle:windowScene:spatialConfiguration:)(v0 + 48, 1, v4, 0, 0, v6, v8, 0);
}

uint64_t sub_17BF4(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 200);
  v6 = *(*v2 + 176);
  *(*v2 + 224) = v1;

  if (v1)
  {
    sub_925C(v4 + 16, &qword_39598, &qword_2AEB0);

    v7 = sub_17E50;
  }

  else
  {
    *(v4 + 232) = a1;
    sub_925C(v4 + 16, &qword_39598, &qword_2AEB0);

    v7 = sub_17DDC;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_17DDC()
{
  v1 = v0[16];
  v2 = *(v1 + 16);
  *(v1 + 16) = v0[29];

  v3 = v0[1];

  return v3();
}

uint64_t sub_17E50()
{
  v17 = v0;
  *(v0[16] + 24) = 0;
  sub_28518();
  sub_28178();
  swift_errorRetain();
  v1 = sub_28258();
  v2 = sub_29128();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[18];
    v15 = v0[19];
    v4 = v0[17];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v16 = v6;
    *v5 = 136315138;
    swift_getErrorValue();
    v7 = sub_29348();
    v9 = sub_89C0(v7, v8, &v16);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_0, v1, v2, "Unalbe to install PIN gesture view %s", v5, 0xCu);
    sub_8F68(v6);

    (*(v3 + 8))(v15, v4);
  }

  else
  {
    v11 = v0[18];
    v10 = v0[19];
    v12 = v0[17];

    (*(v11 + 8))(v10, v12);
  }

  v13 = v0[1];

  return v13();
}

void sub_18040()
{
  v1 = v0;
  v2 = sub_28268();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v4);
  v9 = v28 - v8;
  __chkstk_darwin(v7);
  v11 = v28 - v10;
  v12 = *(v0 + 40);
  swift_getKeyPath();
  v28[0] = v12;
  sub_1A6DC(&qword_39A08, type metadata accessor for GuestPassPIN, "ݫ");

  sub_28088();

  v14 = *(v12 + 16);
  v13 = *(v12 + 24);

  if (v13)
  {
    sub_28178();
    v15 = sub_28258();
    v16 = sub_29138();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_0, v15, v16, "speaking PIN", v17, 2u);
    }

    v18 = *(v3 + 8);
    v18(v11, v2);
    v28[0] = 0;
    v28[1] = 0xE000000000000000;
    sub_29278(60);
    v29._countAndFlagsBits = 0xD000000000000029;
    v29._object = 0x800000000002BB30;
    sub_28F18(v29);
    v30._countAndFlagsBits = v14;
    v30._object = v13;
    sub_28F18(v30);

    v31._object = 0x800000000002BB60;
    v31._countAndFlagsBits = 0xD000000000000011;
    sub_28F18(v31);
    v19 = objc_allocWithZone(AVSpeechUtterance);
    v20 = sub_28E88();

    v21 = [v19 initWithSSMLRepresentation:v20];

    if (v21)
    {
      [*(v1 + 48) speakUtterance:v21];
    }

    else
    {
      sub_28178();
      v25 = sub_28258();
      v26 = sub_29128();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        *v27 = 0;
        _os_log_impl(&dword_0, v25, v26, "Error creating utterance", v27, 2u);
      }

      v18(v9, v2);
    }
  }

  else
  {
    sub_28178();
    v22 = sub_28258();
    v23 = sub_29128();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_0, v22, v23, "Asked to speak PIN but none existed", v24, 2u);
    }

    (*(v3 + 8))(v6, v2);
  }
}

uint64_t sub_18458(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a4;
  v5 = sub_28268();
  v4[7] = v5;
  v4[8] = *(v5 - 8);
  v4[9] = swift_task_alloc();

  return _swift_task_switch(sub_18518, 0, 0);
}

uint64_t sub_18518()
{
  *(v0 + 80) = sub_281E8();
  sub_28F78();
  *(v0 + 88) = sub_28F68();
  v2 = sub_28F58();

  return _swift_task_switch(sub_185B8, v2, v1);
}

uint64_t sub_185B8()
{

  *(v0 + 96) = sub_281D8();

  return _swift_task_switch(sub_18628, 0, 0);
}

uint64_t sub_18628()
{
  v1 = *(v0[6] + 16);
  v0[13] = v1;
  v2 = v1;
  v3 = sub_280B8();
  v4 = sub_28158();
  v6 = v5;

  v0[14] = v6;
  type metadata accessor for AXGuestPassServer(0);
  v7 = sub_AD5C();
  v0[15] = v7;
  v8 = swift_task_alloc();
  v0[16] = v8;
  *v8 = v0;
  v8[1] = sub_18728;

  return AXUniversalDisplayManager.removeContent(withViewController:userInteractionEnabled:windowIdentifier:service:context:)(v1, 1, v4, v6, v7, 0);
}

uint64_t sub_18728()
{
  v2 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v3 = sub_188D0;
  }

  else
  {
    v4 = *(v2 + 120);
    v7 = v2 + 96;
    v5 = *(v2 + 96);
    v6 = *(v7 + 8);

    v3 = sub_18860;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_18860()
{
  v1 = *(v0 + 48);
  v2 = *(v1 + 16);
  *(v1 + 16) = 0;

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_188D0()
{
  v19 = v0;
  v2 = *(v0 + 96);
  v1 = *(v0 + 104);

  sub_28178();
  swift_errorRetain();
  v3 = sub_28258();
  v4 = sub_29128();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 64);
    v17 = *(v0 + 72);
    v6 = *(v0 + 56);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v18 = v8;
    *v7 = 136315138;
    swift_getErrorValue();
    v9 = sub_29348();
    v11 = sub_89C0(v9, v10, &v18);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_0, v3, v4, "Error removing PIN view %s", v7, 0xCu);
    sub_8F68(v8);

    (*(v5 + 8))(v17, v6);
  }

  else
  {
    v13 = *(v0 + 64);
    v12 = *(v0 + 72);
    v14 = *(v0 + 56);

    (*(v13 + 8))(v12, v14);
  }

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_18AC8()
{

  return _swift_deallocClassInstance(v0, 56, 7);
}

uint64_t sub_18B40(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_17058(v1, v2);
}

uint64_t sub_18B80()
{
  v1 = v0;
  v12 = sub_29158();
  v2 = *(v12 - 8);
  __chkstk_darwin(v12);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_29148();
  __chkstk_darwin(v5);
  v6 = sub_28DE8();
  __chkstk_darwin(v6 - 8);
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  v7 = sub_1A690();
  v11[0] = "</say-as></speak>";
  v11[1] = v7;
  sub_28DD8();
  v13 = &_swiftEmptyArrayStorage;
  sub_1A6DC(&qword_39A20, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_7E8C(&qword_39A28, &qword_2AB70);
  sub_15494(&qword_39A30, &qword_39A28, &qword_2AB70, &protocol conformance descriptor for [A]);
  sub_29208();
  (*(v2 + 104))(v4, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v12);
  sub_29178();
  v8 = objc_allocWithZone(sub_28568());
  *(v0 + 32) = sub_28548();
  type metadata accessor for GuestPassPIN(0);
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  *(v9 + 24) = 0;
  _s17AXGuestPassServer0aB17NetworkConnectionC22__observationRegistrar33_F8B8A65206FC09C8A21103A3AFF7C9E911Observation0rG0Vvpfi_0();
  *(v1 + 40) = v9;
  *(v1 + 48) = [objc_allocWithZone(AVSpeechSynthesizer) init];
  return v1;
}

uint64_t sub_18E5C@<X0>(void (*a1)()@<X0>, ValueMetadata *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v39 = a4;
  v41 = sub_7E8C(&qword_39A38, &qword_2AC18);
  __chkstk_darwin(v41);
  v8 = &v34 - v7;
  v9 = sub_7E8C(&qword_39A40, &qword_2AC20);
  __chkstk_darwin(v9);
  v11 = (&v34 - v10);
  v40 = sub_7E8C(&qword_39A48, &qword_2AC28);
  v36 = *(v40 - 8);
  __chkstk_darwin(v40);
  v35 = &v34 - v12;
  v13 = sub_7E8C(&qword_39A50, &qword_2AC30);
  v38 = *(v13 - 8);
  __chkstk_darwin(v13);
  v37 = &v34 - v14;
  v44 = a1;
  v45 = a2;
  sub_7E8C(&qword_39A58, &qword_2AC38);
  sub_28A68();
  v15 = v42;
  swift_getKeyPath();
  v44 = v15;
  sub_1A6DC(&qword_39A08, type metadata accessor for GuestPassPIN, "ݫ");
  sub_28088();

  v17 = *(v15 + 16);
  v16 = *(v15 + 24);

  if (v16)
  {
    *v11 = sub_28B78();
    v11[1] = v18;
    v19 = sub_7E8C(&qword_39A70, &qword_2AC40);
    sub_1943C(v17, v16, v11 + *(v19 + 44));

    v20 = swift_allocObject();
    v20[2] = a1;
    v20[3] = a2;
    v20[4] = a3;
    v34 = v13;
    v21 = sub_15494(&qword_39A60, &qword_39A40, &qword_2AC20, &protocol conformance descriptor for ZStack<A>);

    v22 = v35;
    sub_28948();

    sub_925C(v11, &qword_39A40, &qword_2AC20);
    v23 = swift_allocObject();
    v23[1].Kind = a1;
    v23[1].Description = a2;
    v23[2].Kind = a3;
    v44 = sub_1A898;
    v45 = v23;

    v42 = v9;
    v43 = v21;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v25 = sub_1A7EC();
    v26 = v37;
    v27 = v40;
    sub_289C8();

    (*(v36 + 8))(v22, v27);
    v28 = v38;
    v29 = v34;
    (*(v38 + 16))(v8, v26, v34);
    swift_storeEnumTagMultiPayload();
    v44 = v27;
    v45 = &type metadata for GuestPassSpeakPINGesture;
    v46 = OpaqueTypeConformance2;
    v47 = v25;
    swift_getOpaqueTypeConformance2();
    sub_286D8();
    return (*(v28 + 8))(v26, v29);
  }

  else
  {
    swift_storeEnumTagMultiPayload();
    v31 = sub_15494(&qword_39A60, &qword_39A40, &qword_2AC20, &protocol conformance descriptor for ZStack<A>);
    v44 = v9;
    v45 = v31;
    v32 = swift_getOpaqueTypeConformance2();
    v33 = sub_1A7EC();
    v44 = v40;
    v45 = &type metadata for GuestPassSpeakPINGesture;
    v46 = v32;
    v47 = v33;
    swift_getOpaqueTypeConformance2();
    return sub_286D8();
  }
}

uint64_t sub_1943C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v46 = a1;
  v47 = a2;
  v50 = a3;
  v48 = sub_7E8C(&qword_39A78, &qword_2AC50) - 8;
  v3 = __chkstk_darwin(v48);
  v49 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v6 = &v44 - v5;
  v7 = sub_7E8C(&qword_39A80, &qword_2AC58);
  v8 = v7 - 8;
  __chkstk_darwin(v7);
  v10 = &v44 - v9;
  v11 = sub_7E8C(&qword_39A88, &qword_2AC60);
  v12 = v11 - 8;
  __chkstk_darwin(v11);
  v14 = &v44 - v13;
  v15 = sub_7E8C(&qword_39A90, &qword_2AC68);
  v16 = v15 - 8;
  v17 = __chkstk_darwin(v15);
  v45 = &v44 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v21 = &v44 - v20;
  __chkstk_darwin(v19);
  v44 = &v44 - v22;
  sub_28B58();
  v23 = sub_28808();
  v10[*(sub_7E8C(&qword_39A98, &qword_2AC70) + 36)] = v23;
  v24 = *(v8 + 44);
  v25 = enum case for ColorScheme.dark(_:);
  v26 = sub_285D8();
  v27 = *(v26 - 8);
  (*(v27 + 104))(&v10[v24], v25, v26);
  (*(v27 + 56))(&v10[v24], 0, 1, v26);
  sub_28B78();
  sub_28648();
  sub_1551C(v10, v14, &qword_39A80, &qword_2AC58);
  v28 = &v14[*(v12 + 44)];
  v29 = v56;
  *(v28 + 4) = v55;
  *(v28 + 5) = v29;
  *(v28 + 6) = v57;
  v30 = v52;
  *v28 = v51;
  *(v28 + 1) = v30;
  v31 = v54;
  *(v28 + 2) = v53;
  *(v28 + 3) = v31;
  v32 = sub_28618();
  LOBYTE(v25) = sub_28808();
  sub_1551C(v14, v21, &qword_39A88, &qword_2AC60);
  v33 = &v21[*(v16 + 44)];
  *v33 = v32;
  v33[8] = v25;
  v34 = v44;
  sub_1551C(v21, v44, &qword_39A90, &qword_2AC68);
  *v6 = sub_286B8();
  *(v6 + 1) = 0;
  v6[16] = 1;
  v35 = sub_7E8C(&qword_39AA0, &qword_2AC78);
  sub_19930(v46, v47, &v6[*(v35 + 44)]);
  v36 = sub_28A18();
  *&v6[*(sub_7E8C(&qword_39AA8, &qword_2AC80) + 36)] = v36;
  v37 = sub_28808();
  v38 = &v6[*(v48 + 44)];
  *v38 = v37;
  *(v38 + 8) = 0u;
  *(v38 + 24) = 0u;
  v38[40] = 1;
  v39 = v45;
  sub_1ABBC(v34, v45, &qword_39A90, &qword_2AC68);
  v40 = v49;
  sub_1ABBC(v6, v49, &qword_39A78, &qword_2AC50);
  v41 = v50;
  sub_1ABBC(v39, v50, &qword_39A90, &qword_2AC68);
  v42 = sub_7E8C(&qword_39AB0, &qword_2AC88);
  sub_1ABBC(v40, v41 + *(v42 + 48), &qword_39A78, &qword_2AC50);
  sub_925C(v6, &qword_39A78, &qword_2AC50);
  sub_925C(v34, &qword_39A90, &qword_2AC68);
  sub_925C(v40, &qword_39A78, &qword_2AC50);
  return sub_925C(v39, &qword_39A90, &qword_2AC68);
}

uint64_t sub_19930@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _OWORD *a3@<X8>)
{
  v55 = a3;
  v5 = sub_28608();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_7E8C(&qword_39AB8, &qword_2AC90) - 8;
  v9 = __chkstk_darwin(v52);
  v54 = v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v56 = v51 - v11;
  v12._object = 0x800000000002B940;
  v12._countAndFlagsBits = 0xD000000000000010;
  v69 = GuestPassLocString(_:)(v12);
  v51[1] = sub_A978();
  v13 = sub_288F8();
  v60 = v14;
  v61 = v13;
  v16 = v15;
  v53 = v17;
  KeyPath = swift_getKeyPath();
  v62 = sub_28888();
  v58 = swift_getKeyPath();
  v57 = v16 & 1;
  v69._countAndFlagsBits = a1;
  v69._object = a2;

  v18 = sub_288F8();
  v20 = v19;
  LOBYTE(a2) = v21;
  v23 = v22;
  v51[0] = v22;
  v24 = swift_getKeyPath();
  v69._countAndFlagsBits = v18;
  v69._object = v20;
  v70 = a2 & 1;
  v72 = v23;
  v73 = v24;
  v74 = 1;
  (*(v6 + 104))(v8, enum case for DynamicTypeSize.accessibility5(_:), v5);
  sub_7E8C(&qword_39AC0, &qword_2ACF8);
  sub_1AAF4();
  v25 = v56;
  sub_28968();
  (*(v6 + 8))(v8, v5);
  sub_1ABAC(v18, v20, a2 & 1);

  v26 = sub_28868();
  v27 = swift_getKeyPath();
  v28 = (v25 + *(v52 + 44));
  *v28 = v27;
  v28[1] = v26;
  v29._countAndFlagsBits = 0xD000000000000015;
  v29._object = 0x800000000002BBA0;
  v69 = GuestPassLocString(_:)(v29);
  v30 = sub_288F8();
  v32 = v31;
  v34 = v33;
  sub_28878();
  v35 = sub_288E8();
  v37 = v36;
  LODWORD(v52) = v38;
  v40 = v39;

  sub_1ABAC(v30, v32, v34 & 1);

  v41 = v54;
  sub_1ABBC(v25, v54, &qword_39AB8, &qword_2AC90);
  *&v65 = v61;
  *(&v65 + 1) = v60;
  LOBYTE(v66) = v57;
  *(&v66 + 1) = *v64;
  DWORD1(v66) = *&v64[3];
  v42 = v53;
  *(&v66 + 1) = v53;
  *&v67 = KeyPath;
  BYTE8(v67) = 1;
  *(&v67 + 9) = *v63;
  HIDWORD(v67) = *&v63[3];
  *&v68 = v58;
  *(&v68 + 1) = v62;
  v43 = v65;
  v44 = v66;
  v45 = v68;
  v46 = v55;
  v55[2] = v67;
  v46[3] = v45;
  *v46 = v43;
  v46[1] = v44;
  v47 = v46;
  v48 = sub_7E8C(&qword_39AE0, &qword_2AD08);
  sub_1ABBC(v41, v47 + *(v48 + 48), &qword_39AB8, &qword_2AC90);
  v49 = v47 + *(v48 + 64);
  *v49 = v35;
  *(v49 + 1) = v37;
  LOBYTE(v32) = v52 & 1;
  v49[16] = v52 & 1;
  *(v49 + 3) = v40;
  sub_1ABBC(&v65, &v69, &qword_39AE8, &qword_2AD10);
  sub_1AC24(v35, v37, v32);

  sub_925C(v56, &qword_39AB8, &qword_2AC90);
  sub_1ABAC(v35, v37, v32);

  sub_925C(v41, &qword_39AB8, &qword_2AC90);
  v69._countAndFlagsBits = v61;
  v69._object = v60;
  v70 = v57;
  *v71 = *v64;
  *&v71[3] = *&v64[3];
  v72 = v42;
  v73 = KeyPath;
  v74 = 1;
  *v75 = *v63;
  *&v75[3] = *&v63[3];
  v76 = v58;
  v77 = v62;
  return sub_925C(&v69, &qword_39AE8, &qword_2AD10);
}

uint64_t sub_19EC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_7E8C(&qword_39288, &qword_2A540);
  __chkstk_darwin(v4 - 8);
  v6 = v12 - v5;
  sub_28538();
  *(a3 + 24) = 0;
  sub_28518();
  v7 = *(a3 + 40);
  if (*(v7 + 24))
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    v12[-3] = 0;
    v12[-2] = 0;
    v12[-4] = v7;
    v12[1] = v7;
    sub_1A6DC(&qword_39A08, type metadata accessor for GuestPassPIN, "ݫ");

    sub_28078();
  }

  else
  {
    *(v7 + 16) = 0;
    *(v7 + 24) = 0;
  }

  v9 = sub_28F98();
  (*(*(v9 - 8) + 56))(v6, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = a3;

  sub_16BFC(0, 0, v6, &unk_2AC48, v10);
}

id sub_1A0F8()
{
  v0 = [objc_allocWithZone(UILongPressGestureRecognizer) init];
  [v0 setNumberOfTouchesRequired:3];
  [v0 setMinimumPressDuration:5.0];
  return v0;
}

char *sub_1A15C(void *a1)
{
  v2 = *v1;
  result = [a1 state];
  if (result == &dword_0 + 1)
  {
    return v2();
  }

  return result;
}

uint64_t sub_1A198()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1A1DC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_9CB0;

  return sub_17898(a1, v4, v5, v6);
}

uint64_t sub_1A290(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1A388;

  return v6(a1);
}

uint64_t sub_1A388()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1A480()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1A4B8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_77F4;

  return sub_1A290(a1, v4);
}

unint64_t sub_1A570()
{
  result = qword_39A10;
  if (!qword_39A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_39A10);
  }

  return result;
}

uint64_t sub_1A5C4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_9CB0;

  return sub_18458(a1, v4, v5, v6);
}

unint64_t sub_1A690()
{
  result = qword_39A18;
  if (!qword_39A18)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_39A18);
  }

  return result;
}

uint64_t sub_1A6DC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

__n128 sub_1A724(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_1A738(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_1A780(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

unint64_t sub_1A7EC()
{
  result = qword_39A68;
  if (!qword_39A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_39A68);
  }

  return result;
}

uint64_t sub_1A850()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1A8BC()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1A8FC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_77F4;

  return sub_18458(a1, v4, v5, v6);
}

uint64_t sub_1A9B0()
{
  v1 = v0[2];
  v2 = v0[4];
  *(v1 + 16) = v0[3];
  *(v1 + 24) = v2;
}

uint64_t sub_1A9F0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_28658();
  *a1 = result;
  return result;
}

uint64_t sub_1AA44@<X0>(uint64_t *a1@<X8>)
{
  result = sub_28678();
  *a1 = result;
  return result;
}

uint64_t sub_1AA70@<X0>(uint64_t *a1@<X8>)
{
  result = sub_28678();
  *a1 = result;
  return result;
}

unint64_t sub_1AAF4()
{
  result = qword_39AC8;
  if (!qword_39AC8)
  {
    sub_7F38(&qword_39AC0, &qword_2ACF8);
    sub_15494(&qword_39AD0, &qword_39AD8, &qword_2AD00, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_39AC8);
  }

  return result;
}

uint64_t sub_1ABAC(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_1ABBC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_7E8C(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1AC24(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_1AC48()
{
  result = qword_39AF0;
  if (!qword_39AF0)
  {
    sub_7F38(&qword_39AF8, &qword_2AD60);
    sub_7F38(&qword_39A48, &qword_2AC28);
    sub_7F38(&qword_39A40, &qword_2AC20);
    sub_15494(&qword_39A60, &qword_39A40, &qword_2AC20, &protocol conformance descriptor for ZStack<A>);
    swift_getOpaqueTypeConformance2();
    sub_1A7EC();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_39AF0);
  }

  return result;
}

id AXGuestPassNetworkConnection.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void sub_1ADF8()
{
  if (*(v0 + OBJC_IVAR____TtC17AXGuestPassServer28AXGuestPassNetworkConnection_connection))
  {

    sub_283A8();
  }

  if (*(v0 + OBJC_IVAR____TtC17AXGuestPassServer28AXGuestPassNetworkConnection_senderConnection))
  {

    sub_283A8();
  }

  if (*(v0 + OBJC_IVAR____TtC17AXGuestPassServer28AXGuestPassNetworkConnection_listener))
  {

    sub_282F8();
  }
}

uint64_t sub_1AE9C@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v6 = v1;
  sub_2092C(&qword_39BA8, type metadata accessor for AXGuestPassNetworkConnection, &protocol conformance descriptor for AXGuestPassNetworkConnection);
  sub_28088();

  v3 = OBJC_IVAR____TtC17AXGuestPassServer28AXGuestPassNetworkConnection__connectionState;
  swift_beginAccess();
  v4 = sub_28388();
  return (*(*(v4 - 8) + 16))(a1, v6 + v3, v4);
}

uint64_t sub_1AF94@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_2092C(&qword_39BA8, type metadata accessor for AXGuestPassNetworkConnection, &protocol conformance descriptor for AXGuestPassNetworkConnection);
  sub_28088();

  v4 = OBJC_IVAR____TtC17AXGuestPassServer28AXGuestPassNetworkConnection__connectionState;
  swift_beginAccess();
  v5 = sub_28388();
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

uint64_t sub_1B08C(uint64_t a1)
{
  v2 = sub_28388();
  __chkstk_darwin(v2);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v4, a1);
  return sub_1B158(v4);
}

uint64_t sub_1B158(uint64_t a1)
{
  v2 = v1;
  v4 = sub_28388();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC17AXGuestPassServer28AXGuestPassNetworkConnection__connectionState;
  swift_beginAccess();
  (*(v5 + 16))(v7, v1 + v8, v4);
  sub_2092C(&qword_39BA0, &type metadata accessor for NWConnection.State, &protocol conformance descriptor for NWConnection.State);
  v9 = sub_28E78();
  v10 = *(v5 + 8);
  v10(v7, v4);
  if (v9)
  {
    swift_beginAccess();
    (*(v5 + 24))(v2 + v8, a1, v4);
    swift_endAccess();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    v13[-2] = v2;
    v13[-1] = a1;
    v13[1] = v2;
    sub_2092C(&qword_39BA8, type metadata accessor for AXGuestPassNetworkConnection, &protocol conformance descriptor for AXGuestPassNetworkConnection);
    sub_28078();
  }

  return (v10)(a1, v4);
}

uint64_t sub_1B3D8(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC17AXGuestPassServer28AXGuestPassNetworkConnection__connectionState;
  swift_beginAccess();
  v5 = sub_28388();
  (*(*(v5 - 8) + 24))(a1 + v4, a2, v5);
  return swift_endAccess();
}

uint64_t sub_1B474(uint64_t a1)
{
  v2 = v1;
  v56 = sub_28298();
  v4 = *(v56 - 1);
  v5 = __chkstk_darwin(v56);
  v7 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v48 - v8;
  v55 = sub_28268();
  v10 = *(v55 - 8);
  v11 = __chkstk_darwin(v55);
  v13 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v48 - v14;
  result = sub_28288();
  if (result)
  {
    v17 = result;
    v53 = v13;
    v54 = v10;
    v18 = swift_slowAlloc();
    *v18 = 0;
    v18[1] = 0;
    v52 = v17;
    nw_endpoint_set_agent_identifier();

    sub_28178();
    v19 = *(v4 + 16);
    v51 = a1;
    v19(v9, a1, v56);
    v20 = sub_28258();
    v21 = sub_29138();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v48 = v19;
      v23 = v22;
      v24 = swift_slowAlloc();
      v50 = v2;
      v25 = v24;
      v57 = v24;
      *v23 = 136315138;
      v26 = sub_28278();
      v49 = v7;
      v28 = v27;
      (*(v4 + 8))(v9, v56);
      v29 = sub_89C0(v26, v28, &v57);
      v7 = v49;

      *(v23 + 4) = v29;
      _os_log_impl(&dword_0, v20, v21, "AXGuestPassNetworkConnection: Attempting to connect to %s", v23, 0xCu);
      sub_8F68(v25);
      v2 = v50;

      v19 = v48;
    }

    else
    {

      (*(v4 + 8))(v9, v56);
    }

    v30 = v55;
    v31 = *(v54 + 8);
    v31(v15, v55);
    v19(v7, v51, v56);
    sub_28438();
    sub_28418();
    sub_28428();
    nw_parameters_set_attach_protocol_listener();
    swift_unknownObjectRelease();
    sub_7E8C(&qword_39B80, &qword_2AE68);
    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_29DC0;
    v33 = *(v2 + OBJC_IVAR____TtC17AXGuestPassServer28AXGuestPassNetworkConnection_networkAgentDomain + 8);
    *(v32 + 32) = *(v2 + OBJC_IVAR____TtC17AXGuestPassServer28AXGuestPassNetworkConnection_networkAgentDomain);
    *(v32 + 40) = v33;
    v34 = *(v2 + OBJC_IVAR____TtC17AXGuestPassServer28AXGuestPassNetworkConnection_networkAgentType + 8);
    *(v32 + 48) = *(v2 + OBJC_IVAR____TtC17AXGuestPassServer28AXGuestPassNetworkConnection_networkAgentType);
    *(v32 + 56) = v34;

    sub_28408();
    sub_283E8();
    sub_283D8();
    swift_allocObject();
    v35 = sub_28368();
    v36 = swift_allocObject();
    swift_unknownObjectWeakInit();

    sub_1F96C(sub_1F964, v36);
    sub_28358();

    sub_1A690();
    v37 = sub_29168();
    sub_28398();

    v38 = v53;
    sub_28178();

    v39 = sub_28258();
    v40 = sub_29138();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v56 = v31;
      v42 = v41;
      v43 = v2;
      v44 = swift_slowAlloc();
      v57 = v44;
      *v42 = 136315138;
      v45 = sub_28348();
      v47 = sub_89C0(v45, v46, &v57);

      *(v42 + 4) = v47;
      _os_log_impl(&dword_0, v39, v40, "AXGuestPassNetworkConnection: Started connection %s", v42, 0xCu);
      sub_8F68(v44);
      v2 = v43;

      swift_unknownObjectRelease();
      v56(v38, v55);
    }

    else
    {

      swift_unknownObjectRelease();
      v31(v38, v30);
    }

    *(v2 + OBJC_IVAR____TtC17AXGuestPassServer28AXGuestPassNetworkConnection_connection) = v35;
  }

  return result;
}

void sub_1BA68(uint64_t a1, uint64_t a2)
{
  v3 = sub_28388();
  v37 = *(v3 - 8);
  v4 = __chkstk_darwin(v3);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v4);
  v9 = &v28 - v8;
  __chkstk_darwin(v7);
  v11 = &v28 - v10;
  v12 = sub_28268();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v33 = v13;
    v34 = v12;
    v35 = Strong;
    sub_28178();
    v36 = *(v37 + 16);
    v36(v11, a1, v3);
    v17 = sub_28258();
    v18 = sub_29138();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v28 = v19;
      v29 = swift_slowAlloc();
      v38 = v29;
      *v19 = 136315138;
      v36(v9, v11, v3);
      v20 = sub_28EE8();
      v30 = a1;
      v31 = v6;
      v21 = v20;
      v23 = v22;
      v32 = *(v37 + 8);
      v32(v11, v3);
      v24 = sub_89C0(v21, v23, &v38);
      a1 = v30;

      v25 = v28;
      *(v28 + 1) = v24;
      v6 = v31;
      _os_log_impl(&dword_0, v17, v18, "AXGuestPassNetworkConnection: New endpoint connection state %s", v25, 0xCu);
      sub_8F68(v29);
    }

    else
    {

      v32 = *(v37 + 8);
      v32(v11, v3);
    }

    (*(v33 + 8))(v15, v34);
    v26 = v36;
    v36(v9, a1, v3);
    v27 = v35;
    sub_1B158(v9);
    v26(v6, a1, v3);
    if ((*(v37 + 88))(v6, v3) == enum case for NWConnection.State.ready(_:))
    {
      sub_1BE40();
    }

    else
    {

      v32(v6, v3);
    }
  }
}

uint64_t sub_1BE40()
{
  v1 = v0;
  v2 = sub_28268();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v30 - v7;
  v9 = *&v1[OBJC_IVAR____TtC17AXGuestPassServer28AXGuestPassNetworkConnection_connection];
  if (v9)
  {

    sub_28178();

    v10 = sub_28258();
    v11 = sub_29138();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v30 = v2;
      v13 = v12;
      v14 = swift_slowAlloc();
      v31 = v14;
      *v13 = 136315138;
      v15 = sub_28348();
      v17 = sub_89C0(v15, v16, &v31);

      *(v13 + 4) = v17;
      _os_log_impl(&dword_0, v10, v11, "AXGuestPassNetworkConnection: Attempting to setup listener for sender connection using %s", v13, 0xCu);
      sub_8F68(v14);

      (*(v3 + 8))(v8, v30);
    }

    else
    {

      (*(v3 + 8))(v8, v2);
    }

    sub_28308();
    sub_28438();

    sub_28418();
    sub_28428();
    nw_parameters_set_attach_protocol_listener();
    swift_unknownObjectRelease();
    sub_7E8C(&qword_39B80, &qword_2AE68);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_29DC0;
    v23 = *&v1[OBJC_IVAR____TtC17AXGuestPassServer28AXGuestPassNetworkConnection_networkAgentDomain + 8];
    *(v22 + 32) = *&v1[OBJC_IVAR____TtC17AXGuestPassServer28AXGuestPassNetworkConnection_networkAgentDomain];
    *(v22 + 40) = v23;
    v24 = *&v1[OBJC_IVAR____TtC17AXGuestPassServer28AXGuestPassNetworkConnection_networkAgentType + 8];
    *(v22 + 48) = *&v1[OBJC_IVAR____TtC17AXGuestPassServer28AXGuestPassNetworkConnection_networkAgentType];
    *(v22 + 56) = v24;

    sub_28408();
    sub_283E8();
    v25 = sub_282A8();
    v26 = OBJC_IVAR____TtC17AXGuestPassServer28AXGuestPassNetworkConnection_listener;
    *&v1[OBJC_IVAR____TtC17AXGuestPassServer28AXGuestPassNetworkConnection_listener] = v25;

    if (*&v1[v26])
    {
      v27 = swift_allocObject();
      *(v27 + 16) = v1;
      *(v27 + 24) = v9;

      v28 = v1;
      sub_1F96C(sub_1F97C, v27);
      sub_282C8();

      if (*&v1[v26])
      {

        sub_1F96C(sub_1CE38, 0);
        sub_282B8();

        if (*&v1[v26])
        {
          sub_1A690();

          v29 = sub_29168();
          sub_282E8();
        }
      }
    }
  }

  else
  {
    sub_28178();
    v18 = sub_28258();
    v19 = sub_29128();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_0, v18, v19, "Unable to setup new listener. Connection is invalid.", v20, 2u);
    }

    return (*(v3 + 8))(v6, v2);
  }
}

uint64_t sub_1C2B0(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  v7 = a2;

  sub_1F96C(sub_1F9C8, v6);
  sub_28358();

  sub_1A690();
  v8 = sub_29168();
  sub_28398();

  *&v7[OBJC_IVAR____TtC17AXGuestPassServer28AXGuestPassNetworkConnection_senderConnection] = a1;
}

uint64_t sub_1C38C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v75 = a2;
  v76 = a3;
  v4 = sub_28458();
  v72 = *(v4 - 8);
  __chkstk_darwin(v4);
  v71 = (&v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_28388();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v79 = &v65 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v12 = &v65 - v11;
  __chkstk_darwin(v10);
  v14 = &v65 - v13;
  v15 = sub_28268();
  v16 = *(v15 - 8);
  v80 = v15;
  v81 = v16;
  v17 = __chkstk_darwin(v15);
  v77 = &v65 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v73 = &v65 - v20;
  v21 = __chkstk_darwin(v19);
  v70 = &v65 - v22;
  v23 = __chkstk_darwin(v21);
  v74 = &v65 - v24;
  __chkstk_darwin(v23);
  v26 = &v65 - v25;
  sub_28178();
  v27 = *(v7 + 16);
  v78 = a1;
  v28 = a1;
  v29 = v27;
  v30 = v6;
  v27(v14, v28, v6);
  v31 = sub_28258();
  v32 = sub_29108();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v69 = v4;
    v34 = v33;
    v66 = v33;
    v67 = swift_slowAlloc();
    v68 = v7;
    v82 = v67;
    *v34 = 136315138;
    v29(v12, v14, v30);
    v35 = sub_28EE8();
    v37 = v36;
    v65 = v29;
    v38 = *(v7 + 8);
    v39 = v30;
    v38(v14, v30);
    v40 = sub_89C0(v35, v37, &v82);

    v41 = v66;
    *(v66 + 4) = v40;
    v42 = v65;
    _os_log_impl(&dword_0, v31, v32, "AXGuestPassNetworkConnection: [senderConnection] New endpoint connection state %s", v41, 0xCu);
    sub_8F68(v67);

    v4 = v69;

    v43 = *(v81 + 8);
    v43(v26, v80);
    v44 = v39;
    v7 = v68;
  }

  else
  {

    v42 = v29;
    v38 = *(v7 + 8);
    v44 = v30;
    v38(v14, v30);
    v43 = *(v81 + 8);
    v43(v26, v80);
  }

  v45 = v79;
  v42(v79, v78, v44);
  v46 = (*(v7 + 88))(v45, v44);
  if (v46 == enum case for NWConnection.State.failed(_:))
  {
    v47 = v77;
    sub_28178();
    v48 = sub_28258();
    v49 = sub_29128();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      *v50 = 0;
      _os_log_impl(&dword_0, v48, v49, "AXGuestPassNetworkConnection: [senderConnection] Unable to establish network connection to retrieve device class.", v50, 2u);
    }

    v43(v47, v80);
    return (v38)(v45, v44);
  }

  if (v46 != enum case for NWConnection.State.ready(_:))
  {
    if (v46 != enum case for NWConnection.State.cancelled(_:))
    {
      return (v38)(v45, v44);
    }

    v60 = v73;
    sub_28178();
    v61 = sub_28258();
    v62 = sub_29128();
    if (!os_log_type_enabled(v61, v62))
    {
      goto LABEL_22;
    }

    v63 = swift_slowAlloc();
    *v63 = 0;
    v64 = "AXGuestPassNetworkConnection: [senderConnection] Has been cancelled.";
    goto LABEL_21;
  }

  sub_1CB10();
  sub_28488();
  sub_28448();
  v52 = sub_283C8();

  if (v52)
  {
    sub_28478();
    if (swift_dynamicCastClass())
    {
      v54 = v71;
      v53 = v72;
      *v71 = 1;
      (*(v53 + 104))(v54, enum case for NWProtocolQUIC.Metadata.KeepAliveBehavior.seconds(_:), v4);
      sub_28468();
      v55 = v70;
      sub_28178();
      v56 = sub_28258();
      v57 = sub_29138();
      if (os_log_type_enabled(v56, v57))
      {
        v58 = swift_slowAlloc();
        *v58 = 0;
        _os_log_impl(&dword_0, v56, v57, "AXGuestPassNetworkConnection [senderConnection]: Setting connection keep alive timer to 1 seconds.", v58, 2u);
      }

      v59 = v55;
      return (v43)(v59, v80);
    }
  }

  v60 = v74;
  sub_28178();
  v61 = sub_28258();
  v62 = sub_29128();
  if (os_log_type_enabled(v61, v62))
  {
    v63 = swift_slowAlloc();
    *v63 = 0;
    v64 = "AXGuestPassNetworkConnection [senderConnection]: Failed to retrieve metadata from connection.";
LABEL_21:
    _os_log_impl(&dword_0, v61, v62, v64, v63, 2u);
  }

LABEL_22:

  v59 = v60;
  return (v43)(v59, v80);
}

uint64_t sub_1CB10()
{
  v1 = v0;
  v2 = sub_28268();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v24 - v7;
  v9 = *(v1 + OBJC_IVAR____TtC17AXGuestPassServer28AXGuestPassNetworkConnection_senderConnection);
  if (v9)
  {

    sub_28178();

    v10 = sub_28258();
    v11 = sub_29108();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v24 = v2;
      v13 = v12;
      v14 = swift_slowAlloc();
      v25 = v14;
      *v13 = 136315138;
      v15 = sub_28348();
      v17 = sub_89C0(v15, v16, &v25);

      *(v13 + 4) = v17;
      _os_log_impl(&dword_0, v10, v11, "AXGuestPassNetworkConnection: Attempting to retrieve device class with connection %s", v13, 0xCu);
      sub_8F68(v14);

      (*(v3 + 8))(v8, v24);
    }

    else
    {

      (*(v3 + 8))(v8, v2);
    }

    v22 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v23 = swift_allocObject();
    *(v23 + 16) = v22;
    *(v23 + 24) = v9;

    sub_283B8();
  }

  else
  {
    sub_28178();
    v18 = sub_28258();
    v19 = sub_29128();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_0, v18, v19, "AXGuestPassNetworkConnection: No valid sender connection.", v20, 2u);
    }

    return (*(v3 + 8))(v6, v2);
  }
}

uint64_t sub_1CE38(uint64_t a1)
{
  v2 = sub_282D8();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v22 - v7;
  v9 = sub_28268();
  v24 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_28178();
  v12 = *(v3 + 16);
  v12(v8, a1, v2);
  v13 = sub_28258();
  v14 = sub_29108();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v23 = v9;
    v16 = v15;
    v22 = swift_slowAlloc();
    v25 = v22;
    *v16 = 136315138;
    v12(v6, v8, v2);
    v17 = sub_28EE8();
    v19 = v18;
    (*(v3 + 8))(v8, v2);
    v20 = sub_89C0(v17, v19, &v25);

    *(v16 + 4) = v20;
    _os_log_impl(&dword_0, v13, v14, "AXGuestPassNetworkConnection: New listener state: %s", v16, 0xCu);
    sub_8F68(v22);

    return (*(v24 + 8))(v11, v23);
  }

  else
  {

    (*(v3 + 8))(v8, v2);
    return (*(v24 + 8))(v11, v9);
  }
}

uint64_t sub_1D10C(unint64_t a1, unint64_t a2)
{
  v5 = sub_28338();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = (&v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_28268();
  v10 = *(v9 - 8);
  result = __chkstk_darwin(v9);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v2 + OBJC_IVAR____TtC17AXGuestPassServer28AXGuestPassNetworkConnection_connection);
  if (v14)
  {
    v15 = a2 >> 60 == 15;
  }

  else
  {
    v15 = 1;
  }

  if (!v15)
  {
    v43 = v8;
    v46 = result;

    sub_1EEA4(a1, a2);
    sub_28178();

    v16 = sub_28258();
    v17 = sub_29108();

    v18 = os_log_type_enabled(v16, v17);
    v44 = v6;
    v45 = v5;
    if (v18)
    {
      v19 = swift_slowAlloc();
      v42 = a1;
      v20 = a2;
      v21 = v19;
      v22 = swift_slowAlloc();
      v47 = v22;
      *v21 = 136315138;
      v23 = sub_28348();
      v25 = sub_89C0(v23, v24, &v47);

      *(v21 + 4) = v25;
      _os_log_impl(&dword_0, v16, v17, "AXGuestPassNetworkConnection: Attempting to send payload with connection %s", v21, 0xCu);
      sub_8F68(v22);

      a2 = v20;
      a1 = v42;
    }

    (*(v10 + 8))(v13, v46);
    v26 = a2 >> 62;
    if ((a2 >> 62) > 1)
    {
      if (v26 != 2)
      {
        goto LABEL_18;
      }

      v29 = *(a1 + 16);
      v28 = *(a1 + 24);
      v30 = __OFSUB__(v28, v29);
      v27 = v28 - v29;
      if (!v30)
      {
LABEL_16:
        if ((v27 & 0x8000000000000000) == 0)
        {
          goto LABEL_19;
        }

        __break(1u);
LABEL_18:
        v27 = 0;
        goto LABEL_19;
      }

      __break(1u);
    }

    else if (!v26)
    {
      v27 = BYTE6(a2);
LABEL_19:
      v47 = bswap64(v27);
      v31 = sub_1D554(&v47, v48);
      v33 = v32;
      v49 = v31;
      v50 = v32;
      v46 = v31;
      v42 = v32;
      v48[2] = &type metadata for Data;
      v48[3] = &protocol witness table for Data;
      v47 = a1;
      v48[0] = a2;
      v34 = sub_9878(&v47, &type metadata for Data);
      v35 = *v34;
      v36 = v34[1];
      sub_1EEA4(a1, a2);
      sub_8FB4(v31, v33);
      sub_1EEB8(v35, v36, &v49);
      sub_8F68(&v47);
      v37 = v49;
      v38 = v50;
      sub_28328();
      sub_28318();
      v40 = v43;
      v39 = v44;
      *v43 = sub_1EFF0;
      v40[1] = v14;
      v41 = v45;
      (*(v39 + 104))(v40, enum case for NWConnection.SendCompletion.contentProcessed(_:), v45);

      sub_28378();

      sub_9008(v37, v38);
      sub_90BC(a1, a2);
      sub_9008(v46, v42);

      return (*(v39 + 8))(v40, v41);
    }

    LODWORD(v27) = HIDWORD(a1) - a1;
    if (__OFSUB__(HIDWORD(a1), a1))
    {
      __break(1u);
    }

    v27 = v27;
    goto LABEL_16;
  }

  return result;
}

uint64_t sub_1D554(uint64_t a1, uint64_t a2)
{
  v8[3] = &type metadata for UnsafeRawBufferPointer;
  v8[4] = &protocol witness table for UnsafeRawBufferPointer;
  v8[0] = a1;
  v8[1] = a2;
  v2 = sub_9878(v8, &type metadata for UnsafeRawBufferPointer);
  v3 = *v2;
  if (*v2 && (v4 = v2[1], v5 = v4 - v3, v4 != v3))
  {
    if (v5 <= 14)
    {
      v6 = sub_1F774(v3, v4);
    }

    else if (v5 >= 0x7FFFFFFF)
    {
      v6 = sub_1F8B0(v3, v4);
    }

    else
    {
      v6 = sub_1F82C(v3, v4);
    }
  }

  else
  {
    v6 = 0;
  }

  sub_8F68(v8);
  return v6;
}

uint64_t sub_1D610(uint64_t a1, uint64_t a2)
{
  v3 = sub_7E8C(&qword_39288, &qword_2A540);
  __chkstk_darwin(v3 - 8);
  v47 = &v43[-v4];
  v5 = sub_28268();
  v48 = *(v5 - 8);
  v6 = __chkstk_darwin(v5);
  v8 = &v43[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v10 = &v43[-v9];
  v11 = sub_7E8C(&qword_39B70, &qword_2AE48);
  __chkstk_darwin(v11 - 8);
  v13 = &v43[-v12];
  v14 = sub_28498();
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v18 = &v43[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v16);
  v20 = &v43[-v19];
  sub_1EFF8(a1, v13);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_925C(v13, &qword_39B70, &qword_2AE48);
    sub_28178();

    v21 = sub_28258();
    v22 = sub_29138();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = v5;
      v25 = swift_slowAlloc();
      v49 = v25;
      *v23 = 136315138;
      v26 = sub_28348();
      v28 = sub_89C0(v26, v27, &v49);

      *(v23 + 4) = v28;
      _os_log_impl(&dword_0, v21, v22, "AXGuestPassNetworkConnection: sent data to %s!", v23, 0xCu);
      sub_8F68(v25);

      (*(v48 + 8))(v8, v24);
    }

    else
    {

      (*(v48 + 8))(v8, v5);
    }

    v38 = sub_28F98();
    v39 = v47;
    (*(*(v38 - 8) + 56))(v47, 1, 1, v38);
    sub_28F78();
    v40 = sub_28F68();
    v41 = swift_allocObject();
    *(v41 + 16) = v40;
    *(v41 + 24) = &protocol witness table for MainActor;
    sub_16BFC(0, 0, v39, &unk_2AE58, v41);
  }

  else
  {
    v47 = v5;
    (*(v15 + 32))(v20, v13, v14);
    sub_28178();
    v29 = *(v15 + 16);
    v29(v18, v20, v14);
    v30 = sub_28258();
    v31 = sub_29128();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v49 = v46;
      *v32 = 136315394;
      *(v32 + 4) = sub_89C0(0x6C796150646E6573, 0xEF293A5F2864616FLL, &v49);
      *(v32 + 12) = 2112;
      sub_2092C(&qword_39B78, &type metadata accessor for NWError, &protocol conformance descriptor for NWError);
      swift_allocError();
      v44 = v31;
      v29(v33, v18, v14);
      v34 = _swift_stdlib_bridgeErrorToNSError();
      v35 = *(v15 + 8);
      v35(v18, v14);
      *(v32 + 14) = v34;
      v36 = v45;
      *v45 = v34;
      _os_log_impl(&dword_0, v30, v44, "AXGuestPassNetworkConnection: %s %@", v32, 0x16u);
      sub_925C(v36, &qword_391E8, &qword_2A080);

      sub_8F68(v46);

      (*(v48 + 8))(v10, v47);
      return (v35)(v20, v14);
    }

    else
    {

      v42 = *(v15 + 8);
      v42(v18, v14);
      (*(v48 + 8))(v10, v47);
      return (v42)(v20, v14);
    }
  }
}

uint64_t sub_1DCA4()
{
  v1 = sub_28268();
  v0[2] = v1;
  v0[3] = *(v1 - 8);
  v0[4] = swift_task_alloc();
  sub_28F78();
  v0[5] = sub_28F68();
  v3 = sub_28F58();
  v0[6] = v3;
  v0[7] = v2;

  return _swift_task_switch(sub_1DD94, v3, v2);
}

uint64_t sub_1DD94(uint64_t a1)
{
  *(v1 + 64) = sub_280B8();
  v2 = swift_task_alloc();
  *(v1 + 72) = v2;
  *v2 = v1;
  v2[1] = sub_1DE30;

  return AXGuestPassService.endGuestPassTransfer()();
}

uint64_t sub_1DE30()
{
  v2 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v3 = *(v2 + 48);
    v4 = *(v2 + 56);
    v5 = sub_1DF4C;
  }

  else
  {

    v3 = *(v2 + 48);
    v4 = *(v2 + 56);
    v5 = sub_A718;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_1DF4C()
{
  v1 = v0[8];

  sub_28178();
  swift_errorRetain();
  v2 = sub_28258();
  v3 = sub_29128();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&dword_0, v2, v3, "Error ending guest pass transfer after network transfer: %@", v4, 0xCu);
    sub_925C(v5, &qword_391E8, &qword_2A080);
  }

  else
  {
  }

  (*(v0[3] + 8))(v0[4], v0[2]);

  v7 = v0[1];

  return v7();
}

void sub_1E0E0(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    if (a2 >> 60 == 15)
    {
LABEL_28:

      return;
    }

    v10 = a2 >> 62;
    if ((a2 >> 62) > 1)
    {
      if (v10 != 2)
      {
        goto LABEL_27;
      }

      v12 = *(a1 + 16);
      v11 = *(a1 + 24);
      v13 = v11 - v12;
      if (!__OFSUB__(v11, v12))
      {
LABEL_13:
        sub_8FB4(a1, a2);
        if (v13 == 8)
        {
LABEL_14:
          v14 = a1;
          if (v10)
          {
            if (v10 == 2)
            {
              v15 = *(a1 + 16);
              v16 = sub_27EB8();
              if (!v16)
              {
LABEL_35:
                sub_27EC8();
LABEL_36:
                __break(1u);
                goto LABEL_37;
              }

              v17 = v16;
              v18 = sub_27ED8();
              if (__OFSUB__(v15, v18))
              {
                goto LABEL_33;
              }

              v19 = (v15 - v18 + v17);
              sub_27EC8();
              if (!v19)
              {
                goto LABEL_36;
              }
            }

            else
            {
              if (a1 > a1 >> 32)
              {
LABEL_32:
                __break(1u);
LABEL_33:
                __break(1u);
LABEL_34:
                __break(1u);
                goto LABEL_35;
              }

              v20 = sub_27EB8();
              if (!v20)
              {
LABEL_37:
                sub_27EC8();
                __break(1u);
                goto LABEL_38;
              }

              v21 = v20;
              v22 = sub_27ED8();
              if (__OFSUB__(a1, v22))
              {
                goto LABEL_34;
              }

              v19 = (a1 - v22 + v21);
              sub_27EC8();
              if (!v19)
              {
LABEL_38:
                __break(1u);
                return;
              }
            }

            v14 = *v19;
          }

          v23 = bswap64(v14);
          if ((v23 & 0x8000000000000000) == 0)
          {
            v24 = swift_allocObject();
            swift_unknownObjectWeakInit();
            v25 = swift_allocObject();
            *(v25 + 16) = v24;
            *(v25 + 24) = v23;

            sub_283B8();

            goto LABEL_27;
          }

          __break(1u);
LABEL_31:
          __break(1u);
          goto LABEL_32;
        }

LABEL_27:
        sub_90BC(a1, a2);
        goto LABEL_28;
      }

      __break(1u);
    }

    else if (!v10)
    {
      if (BYTE6(a2) != 8)
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (__OFSUB__(HIDWORD(a1), a1))
    {
      goto LABEL_31;
    }

    v13 = HIDWORD(a1) - a1;
    goto LABEL_13;
  }
}

void sub_1E308(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = sub_28268();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v15 = Strong;
  if (a2 >> 60 == 15)
  {
    goto LABEL_17;
  }

  v16 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v16)
    {
      v17 = BYTE6(a2);
      if (a7 < 0)
      {
        goto LABEL_20;
      }

      goto LABEL_14;
    }

    goto LABEL_11;
  }

  if (v16 != 2)
  {
    v17 = 0;
    if ((a7 & 0x8000000000000000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_20;
  }

  v19 = *(a1 + 16);
  v18 = *(a1 + 24);
  v17 = v18 - v19;
  if (__OFSUB__(v18, v19))
  {
    __break(1u);
LABEL_11:
    if (__OFSUB__(HIDWORD(a1), a1))
    {
      __break(1u);
      goto LABEL_57;
    }

    v17 = HIDWORD(a1) - a1;
  }

  sub_8FB4(a1, a2);
  if ((a7 & 0x8000000000000000) == 0)
  {
LABEL_14:
    if (v17 == a7)
    {
      sub_27E68();
      swift_allocObject();
      sub_27E58();
      sub_7E8C(&qword_39B88, &qword_2AE70);
      sub_1FA58();
      v17 = 0;
      sub_27E48();
      goto LABEL_21;
    }

    sub_90BC(a1, a2);
LABEL_17:

    return;
  }

LABEL_20:
  __break(1u);
LABEL_21:
  v65 = v17;

  v20 = v67[0];
  sub_28178();
  sub_8FB4(a1, a2);
  v21 = sub_28258();
  v22 = sub_29138();
  if (!os_log_type_enabled(v21, v22))
  {
    sub_90BC(a1, a2);
    goto LABEL_34;
  }

  v23 = swift_slowAlloc();
  *v23 = 134217984;
  if (v16 > 1)
  {
    if (v16 != 2)
    {
      v24 = 0;
      goto LABEL_33;
    }

    v26 = *(a1 + 16);
    v25 = *(a1 + 24);
    v27 = __OFSUB__(v25, v26);
    v24 = v25 - v26;
    if (!v27)
    {
      goto LABEL_33;
    }

    __break(1u);
LABEL_30:
    LODWORD(v24) = HIDWORD(a1) - a1;
    if (!__OFSUB__(HIDWORD(a1), a1))
    {
      v24 = v24;
      goto LABEL_33;
    }

LABEL_57:
    __break(1u);
  }

  if (v16)
  {
    goto LABEL_30;
  }

  v24 = BYTE6(a2);
LABEL_33:
  *(v23 + 4) = v24;
  v28 = v23;
  sub_90BC(a1, a2);
  _os_log_impl(&dword_0, v21, v22, "AXGuestPassNetworkConnection: Retrieved data... %ld bytes", v28, 0xCu);

LABEL_34:

  (*(v11 + 8))(v13, v10);
  if (v20[2] && (v29 = sub_11FDC(0x6C43656369766564, 0xEB00000000737361), (v30 & 1) != 0))
  {
    v31 = v20[7] + 16 * v29;
    v33 = *v31;
    v32 = *(v31 + 8);
  }

  else
  {
    v33 = 0;
    v32 = 0xE000000000000000;
  }

  v34 = objc_opt_self();
  sub_28168();
  sub_28118();
  isa = sub_28E38().super.isa;

  v67[0] = 0;
  v36 = [v34 dataWithPropertyList:isa format:100 options:0 error:v67];

  v37 = v67[0];
  if (v36)
  {
    v66 = sub_28028();
    v39 = v38;
  }

  else
  {
    v40 = v37;
    sub_27F78();

    swift_willThrow();

    v65 = 0;
    v66 = 0;
    v39 = 0xF000000000000000;
  }

  v41 = [objc_opt_self() deviceClassForBuddy];
  if (v41)
  {
    v42 = v41;
    v43 = sub_28EC8();
    v45 = v44;

    if (v33 == v43 && v32 == v45)
    {

      goto LABEL_51;
    }

    v46 = sub_29308();

    if (v46)
    {
      goto LABEL_51;
    }
  }

  v47 = sub_1FAD4(v33, v32);

  if (!v47)
  {
LABEL_52:
    v56 = v66;
    sub_1D10C(v66, v39);

    sub_90BC(a1, a2);
    sub_90BC(v56, v39);
    return;
  }

  v48 = v47[2];
  if (!v48)
  {
LABEL_51:

    goto LABEL_52;
  }

  v64 = v39;
  if (v48 == 1)
  {
    v49 = sub_1EABC(v47);

    v67[0] = v49;
    sub_7E8C(&qword_39B98, &qword_2AE78);
    v50 = sub_291E8();

    v67[0] = 0;
    v51 = [v34 dataWithPropertyList:v50 format:100 options:0 error:v67];
    swift_unknownObjectRelease();
    v52 = v67[0];
    if (v51)
    {
      v53 = sub_28028();
      v55 = v54;
    }

    else
    {
      v62 = v52;
      sub_27F78();

      swift_willThrow();

      v53 = 0;
      v55 = 0xF000000000000000;
    }

    sub_1D10C(v53, v55);

    sub_90BC(a1, a2);
    sub_90BC(v66, v64);
    sub_90BC(v53, v55);
  }

  else
  {
    type metadata accessor for AXGuestPassServer(0);
    v57 = sub_AD5C();
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    *(&v63 - 2) = v57;
    *(&v63 - 1) = v47;
    v67[0] = v57;
    sub_2092C(&qword_39550, type metadata accessor for AXGuestPassServer, &unk_2A5F0);
    sub_28078();

    sub_290A8();
    v59 = sub_28FE8();
    v60 = direct field offset for AXSettings.guestPass;
    swift_beginAccess();
    v61 = *&v59[v60];

    sub_29088();
    sub_90BC(a1, a2);
    sub_90BC(v66, v64);
  }
}