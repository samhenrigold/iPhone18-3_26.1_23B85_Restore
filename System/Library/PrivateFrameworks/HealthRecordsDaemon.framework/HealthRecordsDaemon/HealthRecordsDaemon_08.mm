unint64_t sub_251B300C4()
{
  result = qword_27F479490;
  if (!qword_27F479490)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F479490);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_19HealthRecordsDaemon27ClinicalSharingFHIRAPIErrorO(uint64_t a1)
{
  if ((*(a1 + 24) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 24) & 3;
  }
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_251B30140(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 25))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 24);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_251B30188(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

uint64_t sub_251B301D0(uint64_t result, unsigned int a2)
{
  v2 = a2 - 3;
  if (a2 >= 3)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    LOBYTE(a2) = 3;
    *result = v2;
  }

  *(result + 24) = a2;
  return result;
}

BOOL sub_251B301FC(uint64_t a1, uint64_t a2, unint64_t a3, unsigned __int8 a4, uint64_t a5, uint64_t a6, unint64_t a7, char a8)
{
  if (a4 <= 1u)
  {
    if (!a4)
    {
      if (a8)
      {
        return 0;
      }

      if (!a2)
      {
        return !a6;
      }

      return a6 && (a1 == a5 && a2 == a6 || (sub_251C719D4() & 1) != 0);
    }

    if (a8 != 1)
    {
      return 0;
    }

    if (a2)
    {
      if (!a6)
      {
        return 0;
      }

      if (a1 != a5 || a2 != a6)
      {
        v8 = a3;
        v9 = a7;
        v10 = sub_251C719D4();
        a3 = v8;
        a7 = v9;
        if ((v10 & 1) == 0)
        {
          return 0;
        }
      }
    }

    else if (a6)
    {
      return 0;
    }

    if (a3)
    {
      if (a7)
      {
        v12 = a7;
        v13 = a3;
        sub_251B300C4();
        v14 = v12;
        v15 = v13;
        v16 = sub_251C71534();

        if (v16)
        {
          return 1;
        }
      }

      return 0;
    }

    return !a7;
  }

  if (a4 == 2)
  {
    if (a8 != 2)
    {
      return 0;
    }

    if (!a2)
    {
      return !a6;
    }

    return a6 && (a1 == a5 && a2 == a6 || (sub_251C719D4() & 1) != 0);
  }

  v11 = a3 | a2;
  if (!(a3 | a2 | a1))
  {
    return a8 == 3 && !(a7 | a6 | a5);
  }

  if (a1 != 1 || v11)
  {
    if (a1 != 2 || v11)
    {
      if (a8 != 3 || a5 != 3)
      {
        return 0;
      }
    }

    else if (a8 != 3 || a5 != 2)
    {
      return 0;
    }
  }

  else if (a8 != 3 || a5 != 1)
  {
    return 0;
  }

  return !(a7 | a6);
}

uint64_t sub_251B303BC()
{
  v1 = [v0 valueType];
  if (v1 < 0xC)
  {
    return qword_251C78BF8[v1];
  }

  sub_251C716A4();
  MEMORY[0x25308CDA0](0xD000000000000023, 0x8000000251C8B7D0);
  [v0 valueType];
  type metadata accessor for HKInspectableValueType(0);
  sub_251C717C4();
  MEMORY[0x25308CDA0](0xD000000000000015, 0x8000000251C8AEE0);
  result = sub_251C717E4();
  __break(1u);
  return result;
}

uint64_t sub_251B304E4(void *a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v6 = v5;
  v81 = a4;
  v87 = a3;
  sub_251ABCCD4(0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v74 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = sub_251C70074();
  v85 = *(v86 - 8);
  MEMORY[0x28223BE20](v86);
  v84 = &v74 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = v6 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_rootNode;
  *v14 = 0u;
  *(v14 + 16) = 0u;
  *(v14 + 32) = 0u;
  *(v14 + 48) = 0u;
  *(v14 + 64) = 0u;
  *(v14 + 80) = 0;
  v15 = v6 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_existingMultiDeviceInfo;
  *v15 = 0u;
  *(v15 + 16) = 0u;
  *(v15 + 32) = 0;
  v16 = OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_lastSync;
  v17 = sub_251C70014();
  v82 = *(*(v17 - 8) + 56);
  v82(v6 + v16, 1, 1, v17);
  *(v6 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_error) = 0;
  v79 = OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_firstTimeShare;
  *(v6 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_firstTimeShare) = 0;
  v95 = a1;
  v18 = [a1 gateway];
  if (!v18)
  {

    sub_251A82AF0();
    swift_allocError();
    *v41 = xmmword_251C78C70;
    *(v41 + 16) = 8;
    swift_willThrow();
LABEL_7:

    __swift_destroy_boxed_opaque_existential_1(v87);
    goto LABEL_15;
  }

  v19 = v18;
  v80 = a5;
  v20 = [a2 accessToken];
  if (!v20)
  {

    sub_251A82AF0();
    swift_allocError();
    *v42 = xmmword_251C78C60;
    *(v42 + 16) = 8;
    swift_willThrow();

    a2 = v19;
    goto LABEL_7;
  }

  v77 = a2;
  v21 = v20;
  v22 = sub_251C70F14();
  v23 = v19;
  v25 = v24;

  v26 = (v6 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_accessToken);
  *v26 = v22;
  v26[1] = v25;
  v76 = v23;
  v27 = [v23 externalID];
  v28 = sub_251C70F14();
  v30 = v29;

  *(v6 + 40) = v28;
  *(v6 + 48) = v30;
  v31 = v87;
  v32 = v95;
  v33 = [v95 identifier];
  v34 = v84;
  sub_251C70054();

  v35 = *(v85 + 32);
  v78 = OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_accountID;
  v35(v6 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_accountID, v34, v86);
  v75 = OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_accountStore;
  sub_251A823B4(v31, v6 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_accountStore);
  v36 = (v6 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_deviceID);
  v37 = v80;
  *v36 = v81;
  v36[1] = v37;
  v38 = [v32 clinicalSharingStatus];
  v81 = OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_clinicalSharingStatus;
  *(v6 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_clinicalSharingStatus) = v38;
  v39 = [v32 clinicalSharingStatus];
  v40 = [v39 firstSharedDate];

  if (v40)
  {
    sub_251C6FFE4();

    v82(v12, 0, 1, v17);
    sub_251B32A94(v12, sub_251ABCCD4);
  }

  else
  {
    v82(v12, 1, 1, v17);
    sub_251B32A94(v12, sub_251ABCCD4);
    *(v6 + v79) = 1;
  }

  if (qword_2813E26F8 != -1)
  {
    swift_once();
  }

  v43 = sub_251C70764();
  __swift_project_value_buffer(v43, qword_2813E8130);

  v44 = sub_251C70744();
  v45 = sub_251C713C4();

  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    v80 = swift_slowAlloc();
    v82 = swift_slowAlloc();
    *&v88 = v82;
    *v46 = 136315394;
    v47 = v85;
    v48 = v84;
    v49 = v86;
    (*(v85 + 16))(v84, v6 + v78, v86);
    sub_251B32A4C(&qword_27F479418, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v50 = sub_251C719A4();
    v52 = v51;
    (*(v47 + 8))(v48, v49);
    v53 = sub_251B10780(v50, v52, &v88);
    v31 = v87;

    *(v46 + 4) = v53;
    *(v46 + 12) = 2112;
    v54 = *(v6 + v81);
    *(v46 + 14) = v54;
    v55 = v80;
    *v80 = v54;
    v56 = v54;
    _os_log_impl(&dword_251A6C000, v44, v45, "ClinicalSharingSyncContext initialized. Account: %s HKClinicalSharingStatus: %@", v46, 0x16u);
    sub_251B32A94(v55, sub_251B32AF4);
    MEMORY[0x25308E2B0](v55, -1, -1);
    v57 = v82;
    __swift_destroy_boxed_opaque_existential_1(v82);
    MEMORY[0x25308E2B0](v57, -1, -1);
    MEMORY[0x25308E2B0](v46, -1, -1);
  }

  v58 = v76;
  *(v6 + 16) = v76;
  v59 = v58;
  v60 = v77;
  v61 = [v77 patientID];
  v62 = sub_251C70F14();
  v64 = v63;

  *(v6 + 24) = v62;
  *(v6 + 32) = v64;
  v65 = v59;

  v66 = v83;
  sub_251B3BFB8(v65, v62, v64, v94);
  if (!v66)
  {
    *(&v89 + 1) = &type metadata for ClinicalSharingDocumentReferenceForLookupInfo;
    *&v90 = &off_2863F9CD8;
    v70 = swift_allocObject();
    *&v88 = v70;

    v71 = v94[5];
    v70[5] = v94[4];
    v70[6] = v71;
    v70[7] = v94[6];
    v72 = v94[1];
    v70[1] = v94[0];
    v70[2] = v72;
    v73 = v94[3];
    v70[3] = v94[2];
    v70[4] = v73;
    __swift_destroy_boxed_opaque_existential_1(v31);
    sub_251A7E8D8(&v88, v6 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_docRefInfo);
    return v6;
  }

  __swift_destroy_boxed_opaque_existential_1(v31);

  (*(v85 + 8))(v6 + v78, v86);
  __swift_destroy_boxed_opaque_existential_1((v6 + v75));

LABEL_15:
  v67 = *(v6 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_rootNode + 48);
  v90 = *(v6 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_rootNode + 32);
  v91 = v67;
  v92 = *(v6 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_rootNode + 64);
  v93 = *(v6 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_rootNode + 80);
  v68 = *(v6 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_rootNode + 16);
  v88 = *(v6 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_rootNode);
  v89 = v68;
  sub_251B3282C(&v88, &qword_27F479718, &type metadata for ClinicalSharingRootNodeInfo);
  sub_251B220A8(*(v6 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_existingMultiDeviceInfo), *(v6 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_existingMultiDeviceInfo + 8), *(v6 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_existingMultiDeviceInfo + 16), *(v6 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_existingMultiDeviceInfo + 24));
  sub_251B32A94(v6 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_lastSync, sub_251ABCCD4);

  type metadata accessor for ClinicalSharingSyncContext(0);
  swift_deallocPartialClassInstance();
  return v6;
}

BOOL sub_251B30EC0()
{
  v1 = OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_clinicalSharingStatus;
  if ([*(v0 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_clinicalSharingStatus) featureStatus] != 1 || objc_msgSend(*(v0 + v1), sel_userStatus) != 2)
  {
    return 0;
  }

  if ([*(v0 + v1) multiDeviceStatus] == 2 || objc_msgSend(*(v0 + v1), sel_multiDeviceStatus) == 4)
  {
    return [*(v0 + v1) multiDeviceStatus] == 3;
  }

  v3 = *(v0 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_existingMultiDeviceInfo + 8);
  if (v3)
  {
    v4 = *(v0 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_existingMultiDeviceInfo) == *(v0 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_deviceID) && v3 == *(v0 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_deviceID + 8);
    if (!v4 && (sub_251C719D4() & 1) == 0)
    {
      return [*(v0 + v1) multiDeviceStatus] == 3;
    }
  }

  return 1;
}

uint64_t sub_251B30FAC()
{

  v1 = OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_accountID;
  v2 = sub_251C70074();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_accountStore));

  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_docRefInfo));
  sub_251B32B5C(*(v0 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_rootNode), *(v0 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_rootNode + 8), *(v0 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_rootNode + 16), *(v0 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_rootNode + 24), *(v0 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_rootNode + 32), *(v0 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_rootNode + 40), *(v0 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_rootNode + 48), *(v0 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_rootNode + 56), *(v0 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_rootNode + 64), *(v0 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_rootNode + 72), *(v0 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_rootNode + 80));
  sub_251B220A8(*(v0 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_existingMultiDeviceInfo), *(v0 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_existingMultiDeviceInfo + 8), *(v0 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_existingMultiDeviceInfo + 16), *(v0 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_existingMultiDeviceInfo + 24));
  sub_251B32A94(v0 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_lastSync, sub_251ABCCD4);

  return v0;
}

uint64_t sub_251B31104()
{
  sub_251B30FAC();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ClinicalSharingSyncContext(uint64_t a1)
{
  result = qword_2813E3A38;
  if (!qword_2813E3A38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_251B311B0(uint64_t a1)
{
  sub_251C70074();
  if (v1 <= 0x3F)
  {
    sub_251ABCCD4(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_251B312E0(void *a1, void *a2)
{
  v4 = sub_251C70014();
  v132 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v121 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251B32764(0);
  v8 = v7;
  MEMORY[0x28223BE20](v7);
  v131 = &v121 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251ABCCD4(0);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v13 = &v121 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v121 - v14;
  v16 = a1[2];
  v17 = a2[2];
  if (v16)
  {
    if (!v17)
    {
      goto LABEL_39;
    }

    v130 = v4;
    sub_251A8223C(0, &unk_27F47A260, 0x277D12408);
    v18 = v17;
    v19 = v16;
    v20 = sub_251C71534();

    if ((v20 & 1) == 0)
    {
      goto LABEL_39;
    }

LABEL_6:
    if ((a1[3] != a2[3] || a1[4] != a2[4]) && (sub_251C719D4() & 1) == 0)
    {
      goto LABEL_39;
    }

    if ((a1[5] != a2[5] || a1[6] != a2[6]) && (sub_251C719D4() & 1) == 0)
    {
      goto LABEL_39;
    }

    if ((sub_251C70044() & 1) == 0)
    {
      goto LABEL_39;
    }

    sub_251A8223C(0, &qword_2813E1D20, 0x277D82BB8);
    v21 = *(a2 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_clinicalSharingStatus);
    v22 = *(a1 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_clinicalSharingStatus);
    v23 = v21;
    v24 = sub_251C71534();

    if ((v24 & 1) == 0)
    {
      goto LABEL_39;
    }

    if ((*(a1 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_accessToken) != *(a2 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_accessToken) || *(a1 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_accessToken + 8) != *(a2 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_accessToken + 8)) && (sub_251C719D4() & 1) == 0)
    {
      goto LABEL_39;
    }

    if ((*(a1 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_deviceID) != *(a2 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_deviceID) || *(a1 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_deviceID + 8) != *(a2 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_deviceID + 8)) && (sub_251C719D4() & 1) == 0)
    {
      goto LABEL_39;
    }

    v25 = a1 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_rootNode;
    v26 = *(a1 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_rootNode + 48);
    v218[2] = *(a1 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_rootNode + 32);
    v218[3] = v26;
    v218[4] = *(a1 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_rootNode + 64);
    v219 = *(a1 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_rootNode + 80);
    v27 = *(a1 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_rootNode + 16);
    v218[0] = *(a1 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_rootNode);
    v218[1] = v27;
    v28 = a2 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_rootNode;
    v29 = *(a2 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_rootNode);
    v220[1] = *(a2 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_rootNode + 16);
    v220[0] = v29;
    v30 = *(a2 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_rootNode + 32);
    v31 = *(a2 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_rootNode + 48);
    v32 = *(a2 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_rootNode + 64);
    v221 = *(a2 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_rootNode + 80);
    v220[4] = v32;
    v220[3] = v31;
    v220[2] = v30;
    v33 = *&v218[0];
    v34 = *(a1 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_rootNode + 24);
    v35 = *(a1 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_rootNode + 56);
    v210 = *(a1 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_rootNode + 40);
    v211 = v35;
    v212 = *(a1 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_rootNode + 72);
    v36 = *(a1 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_rootNode + 8);
    v209 = v34;
    v208 = v36;
    if (*&v218[0])
    {
      if (*&v220[0])
      {
        *&v222[0] = *&v220[0];
        *(v222 + 8) = *(v28 + 8);
        *(&v222[1] + 8) = *(v28 + 24);
        *(&v222[2] + 8) = *(v28 + 40);
        *(&v222[3] + 8) = *(v28 + 56);
        *(&v222[4] + 8) = *(v28 + 72);
        v229[0] = v222[0];
        v229[1] = v222[1];
        v230 = *&v222[5];
        v229[3] = v222[3];
        v229[4] = v222[4];
        v229[2] = v222[2];
        v224 = *(v25 + 8);
        v37 = *(v25 + 24);
        v38 = *(v25 + 40);
        v39 = *(v25 + 56);
        v228 = *(v25 + 72);
        v227 = v39;
        v226 = v38;
        v225 = v37;
        v223 = *&v218[0];
        sub_251B32984(v218, v141, &qword_27F479718, &type metadata for ClinicalSharingRootNodeInfo);
        sub_251B32984(v220, v141, &qword_27F479718, &type metadata for ClinicalSharingRootNodeInfo);
        sub_251B32984(v218, v141, &qword_27F479718, &type metadata for ClinicalSharingRootNodeInfo);
        sub_251B32984(v220, v141, &qword_27F479718, &type metadata for ClinicalSharingRootNodeInfo);
        LODWORD(v129) = sub_251B5C710(&v223, v229);
        sub_251B3282C(v222, &qword_27F479718, &type metadata for ClinicalSharingRootNodeInfo);
        sub_251B3282C(v220, &qword_27F479718, &type metadata for ClinicalSharingRootNodeInfo);
        sub_251B3282C(v218, &qword_27F479718, &type metadata for ClinicalSharingRootNodeInfo);
        *&v141[0] = v33;
        *(&v141[1] + 8) = v209;
        *(&v141[2] + 8) = v210;
        *(&v141[3] + 8) = v211;
        *(&v141[4] + 8) = v212;
        *(v141 + 8) = v208;
        sub_251B3282C(v141, &qword_27F479718, &type metadata for ClinicalSharingRootNodeInfo);
        if ((v129 & 1) == 0)
        {
          goto LABEL_39;
        }

LABEL_28:
        v45 = *(a1 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_existingMultiDeviceInfo);
        v46 = *(a1 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_existingMultiDeviceInfo + 8);
        v47 = *(a1 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_existingMultiDeviceInfo + 16);
        v48 = *(a1 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_existingMultiDeviceInfo + 24);
        v128 = *(a1 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_existingMultiDeviceInfo + 32);
        v129 = v48;
        v49 = (a2 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_existingMultiDeviceInfo);
        v51 = *(a2 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_existingMultiDeviceInfo);
        v50 = *(a2 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_existingMultiDeviceInfo + 8);
        v52 = *(a2 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_existingMultiDeviceInfo + 16);
        v53 = *(a2 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_existingMultiDeviceInfo + 24);
        if (v46)
        {
          if (v50)
          {
            v125 = *(a2 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_existingMultiDeviceInfo + 32);
            v126 = v45;
            v124 = v53;
            if (v45 == v51 && v46 == v50 || (v121 = v52, v122 = v47, v54 = v50, v55 = sub_251C719D4(), v52 = v121, v47 = v122, v53 = v124, v50 = v54, (v55 & 1) != 0))
            {
              v123 = v46;
              v127 = v50;
              if (v47 == v52 && v129 == v53)
              {
                v56 = v51;
                v57 = v47;
                v58 = v129;
                sub_251B32888(v56, v50, v47, v129);
                v59 = v128;
                sub_251B32888(v126, v123, v57, v58);

                sub_251B220A8(v126, v123, v57, v58);
              }

              else
              {
                v73 = v129;
                v122 = v47;
                v74 = v52;
                LODWORD(v121) = sub_251C719D4();
                sub_251B32888(v51, v127, v74, v124);
                v59 = v128;
                sub_251B32888(v126, v123, v122, v73);

                sub_251B220A8(v126, v123, v122, v73);
                if ((v121 & 1) == 0)
                {
                  goto LABEL_39;
                }
              }

              if (v59 != v125)
              {
                goto LABEL_39;
              }

LABEL_43:
              v75 = OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_lastSync;
              swift_beginAccess();
              sub_251AC553C(a1 + v75, v15);
              v76 = OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_lastSync;
              swift_beginAccess();
              v77 = *(v8 + 48);
              v78 = v131;
              sub_251AC553C(v15, v131);
              sub_251AC553C(a2 + v76, v78 + v77);
              v79 = *(v132 + 48);
              if (v79(v78, 1, v130) == 1)
              {
                sub_251B32A94(v15, sub_251ABCCD4);
                if (v79(v78 + v77, 1, v130) == 1)
                {
                  sub_251B32A94(v78, sub_251ABCCD4);
                  goto LABEL_51;
                }
              }

              else
              {
                sub_251AC553C(v78, v13);
                if (v79(v78 + v77, 1, v130) != 1)
                {
                  v85 = v132;
                  v86 = v78 + v77;
                  v87 = v130;
                  (*(v132 + 32))(v6, v86, v130);
                  sub_251B32A4C(&qword_27F479160, MEMORY[0x277CC9578], MEMORY[0x277CC9598]);
                  LODWORD(v129) = sub_251C70ED4();
                  v88 = *(v85 + 8);
                  v88(v6, v87);
                  sub_251B32A94(v15, sub_251ABCCD4);
                  v88(v13, v87);
                  sub_251B32A94(v78, sub_251ABCCD4);
                  if ((v129 & 1) == 0)
                  {
                    goto LABEL_39;
                  }

LABEL_51:
                  v89 = *(a1 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_error);
                  v132 = OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_error;
                  if (v89)
                  {
                    ErrorValue = swift_getErrorValue();
                    v91 = v217;
                    v92 = *(v217 - 8);
                    MEMORY[0x28223BE20](ErrorValue);
                    v94 = &v121 - ((v93 + 15) & 0xFFFFFFFFFFFFFFF0);
                    (*(v92 + 16))(v94);
                    v131 = sub_251C71A44();
                    v96 = v95;
                    (*(v92 + 8))(v94, v91);
                    if (!*(a2 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_error))
                    {
                      if (!v96)
                      {
                        v106 = *(a1 + v132);
                        goto LABEL_70;
                      }

                      goto LABEL_64;
                    }

                    v130 = (a2 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_error);
                  }

                  else
                  {
                    if (!*(a2 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_error))
                    {
                      goto LABEL_71;
                    }

                    v130 = (a2 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_error);
                    v131 = 0;
                    v96 = 0;
                  }

                  v97 = swift_getErrorValue();
                  v98 = v216;
                  v99 = *(v216 - 8);
                  MEMORY[0x28223BE20](v97);
                  v101 = &v121 - ((v100 + 15) & 0xFFFFFFFFFFFFFFF0);
                  (*(v99 + 16))(v101);
                  v102 = sub_251C71A44();
                  v104 = v103;
                  (*(v99 + 8))(v101, v98);
                  if (v96)
                  {
                    if (v104)
                    {
                      if (v131 == v102 && v96 == v104)
                      {
                      }

                      else
                      {
                        v105 = sub_251C719D4();

                        if ((v105 & 1) == 0)
                        {
                          goto LABEL_39;
                        }
                      }

LABEL_66:
                      v106 = *(a1 + v132);
                      if (*v130)
                      {
                        if (!v106)
                        {
                          goto LABEL_39;
                        }

                        goto LABEL_71;
                      }

LABEL_70:
                      if (v106)
                      {
                        goto LABEL_39;
                      }

LABEL_71:
                      if (*(a1 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_firstTimeShare) != *(a2 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_firstTimeShare))
                      {
                        goto LABEL_39;
                      }

                      v107 = OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_docRefInfo;
                      swift_beginAccess();
                      sub_251A823B4(a1 + v107, v215);
                      sub_251B328CC();
                      if (swift_dynamicCast())
                      {
                        v205 = v212;
                        v206 = v213;
                        v207 = v214;
                        v201 = v208;
                        v202 = v209;
                        v204 = v211;
                        v203 = v210;
                        sub_251B29448(&v201);
                        v108 = OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_docRefInfo;
                        swift_beginAccess();
                        sub_251A823B4(a2 + v108, &v200);
                        if ((swift_dynamicCast() & 1) == 0)
                        {
                          goto LABEL_39;
                        }

                        v190 = v197;
                        v191 = v198;
                        v192 = v199;
                        v186 = v193;
                        v187 = v194;
                        v189 = v196;
                        v188 = v195;
                        sub_251B29448(&v186);
                        sub_251A823B4(a1 + v107, &v178);
                        if (swift_dynamicCast())
                        {
                          v183 = v175;
                          v184 = v176;
                          v185 = v177;
                          v179 = v171;
                          v180 = v172;
                          v182 = v174;
                          v181 = v173;
                        }

                        else
                        {
                          v185 = 0u;
                          v184 = 0u;
                          v183 = 0u;
                          v182 = 0u;
                          v181 = 0u;
                          v180 = 0u;
                          v179 = 0u;
                        }

                        sub_251A823B4(a2 + v108, &v163);
                        if (swift_dynamicCast())
                        {
                          v168 = v160;
                          v169 = v161;
                          v170 = v162;
                          v164 = v156;
                          v165 = v157;
                          v166 = v158;
                          v167 = v159;
                          v110 = *(&v156 + 1);
                          v111 = v156;
                        }

                        else
                        {
                          v110 = 0;
                          v111 = 0;
                          v169 = 0u;
                          v170 = 0u;
                          v167 = 0u;
                          v168 = 0u;
                          v165 = 0u;
                          v166 = 0u;
                          v164 = 0u;
                        }

                        v114 = v179;
                        v152 = v182;
                        v153 = v183;
                        v154 = v184;
                        v155 = v185;
                        v150 = v180;
                        v151 = v181;
                        if (*(&v179 + 1))
                        {
                          if (v110)
                          {
                            *&v133[0] = v111;
                            *(&v133[0] + 1) = v110;
                            v133[3] = v167;
                            v133[4] = v168;
                            v133[5] = v169;
                            v133[6] = v170;
                            v133[1] = v165;
                            v133[2] = v166;
                            v141[2] = v166;
                            v141[3] = v167;
                            v141[4] = v168;
                            v141[5] = v169;
                            v142 = v170;
                            v141[0] = v133[0];
                            v141[1] = v165;
                            v222[5] = v184;
                            v222[6] = v185;
                            v222[3] = v182;
                            v222[4] = v183;
                            v222[1] = v180;
                            v222[2] = v181;
                            v222[0] = v179;
                            v115 = &qword_27F47A258;
                            v116 = &type metadata for ClinicalSharingDocumentReferenceForLookupInfo;
                            sub_251B32984(&v179, &v134, &qword_27F47A258, &type metadata for ClinicalSharingDocumentReferenceForLookupInfo);
                            sub_251B32984(&v164, &v134, &qword_27F47A258, &type metadata for ClinicalSharingDocumentReferenceForLookupInfo);
                            v71 = sub_251B3BCD4(v222, v141);
                            sub_251B3282C(v133, &qword_27F47A258, &type metadata for ClinicalSharingDocumentReferenceForLookupInfo);
                            sub_251B3282C(&v164, &qword_27F47A258, &type metadata for ClinicalSharingDocumentReferenceForLookupInfo);
                            sub_251B3282C(&v179, &qword_27F47A258, &type metadata for ClinicalSharingDocumentReferenceForLookupInfo);
                            v134 = v114;
                            v137 = v152;
                            v138 = v153;
                            v139 = v154;
                            v140 = v155;
                            v135 = v150;
                            v136 = v151;
                            v117 = &v134;
LABEL_93:
                            sub_251B3282C(v117, v115, v116);
                            return v71 & 1;
                          }

                          goto LABEL_95;
                        }

                        if (v110)
                        {
LABEL_95:
                          v141[0] = v179;
                          v141[3] = v182;
                          v141[4] = v183;
                          v141[5] = v184;
                          v142 = v185;
                          v141[1] = v180;
                          v141[2] = v181;
                          *&v143 = v111;
                          *(&v143 + 1) = v110;
                          v144 = v165;
                          v145 = v166;
                          v148 = v169;
                          v149 = v170;
                          v146 = v167;
                          v147 = v168;
                          v42 = &unk_27F47A250;
                          v43 = &qword_27F47A258;
                          v44 = &type metadata for ClinicalSharingDocumentReferenceForLookupInfo;
                          goto LABEL_26;
                        }

                        v141[0] = v179;
                        v141[3] = v182;
                        v141[4] = v183;
                        v141[5] = v184;
                        v142 = v185;
                        v141[1] = v180;
                        v141[2] = v181;
                        v119 = &qword_27F47A258;
                        v120 = &type metadata for ClinicalSharingDocumentReferenceForLookupInfo;
LABEL_100:
                        sub_251B3282C(v141, v119, v120);
                        v71 = 1;
                        return v71 & 1;
                      }

                      v109 = OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_docRefInfo;
                      swift_beginAccess();
                      sub_251A823B4(a2 + v109, v133);
                      if ((swift_dynamicCast() & 1) == 0)
                      {
                        goto LABEL_39;
                      }

                      v203 = v210;
                      v204 = v211;
                      v205 = v212;
                      v206 = v213;
                      v201 = v208;
                      v202 = v209;
                      sub_251B32930(&v201);
                      sub_251A823B4(a1 + v107, &v150);
                      if (swift_dynamicCast())
                      {
                        v195 = v188;
                        v196 = v189;
                        v197 = v190;
                        v198 = v191;
                        v193 = v186;
                        v194 = v187;
                      }

                      else
                      {
                        v198 = 0u;
                        v197 = 0u;
                        v196 = 0u;
                        v195 = 0u;
                        v194 = 0u;
                        v193 = 0u;
                      }

                      sub_251A823B4(a2 + v109, v215);
                      if (swift_dynamicCast())
                      {
                        v181 = v173;
                        v182 = v174;
                        v183 = v175;
                        v184 = v176;
                        v179 = v171;
                        v180 = v172;
                        v112 = *(&v171 + 1);
                        v113 = v171;
                      }

                      else
                      {
                        v112 = 0;
                        v113 = 0;
                        v184 = 0u;
                        v183 = 0u;
                        v182 = 0u;
                        v181 = 0u;
                        v180 = 0u;
                        v179 = 0u;
                      }

                      v118 = v193;
                      v136 = v196;
                      v137 = v197;
                      v138 = v198;
                      v134 = v194;
                      v135 = v195;
                      if (*(&v193 + 1))
                      {
                        if (v112)
                        {
                          *&v156 = v113;
                          *(&v156 + 1) = v112;
                          v159 = v182;
                          v160 = v183;
                          v161 = v184;
                          v157 = v180;
                          v158 = v181;
                          v141[4] = v183;
                          v141[5] = v184;
                          v141[2] = v181;
                          v141[3] = v182;
                          v141[0] = v156;
                          v141[1] = v180;
                          v222[4] = v197;
                          v222[5] = v198;
                          v222[2] = v195;
                          v222[3] = v196;
                          v222[1] = v194;
                          v222[0] = v193;
                          v115 = &qword_27F47A248;
                          v116 = &type metadata for ClinicalSharingDocumentReferenceForDataAvailabilityIndicator;
                          sub_251B32984(&v193, &v164, &qword_27F47A248, &type metadata for ClinicalSharingDocumentReferenceForDataAvailabilityIndicator);
                          sub_251B32984(&v179, &v164, &qword_27F47A248, &type metadata for ClinicalSharingDocumentReferenceForDataAvailabilityIndicator);
                          v71 = sub_251B3BE64(v222, v141);
                          sub_251B3282C(&v156, &qword_27F47A248, &type metadata for ClinicalSharingDocumentReferenceForDataAvailabilityIndicator);
                          sub_251B3282C(&v179, &qword_27F47A248, &type metadata for ClinicalSharingDocumentReferenceForDataAvailabilityIndicator);
                          sub_251B3282C(&v193, &qword_27F47A248, &type metadata for ClinicalSharingDocumentReferenceForDataAvailabilityIndicator);
                          v164 = v118;
                          v167 = v136;
                          v168 = v137;
                          v169 = v138;
                          v165 = v134;
                          v166 = v135;
                          v117 = &v164;
                          goto LABEL_93;
                        }
                      }

                      else if (!v112)
                      {
                        v141[0] = v193;
                        v141[3] = v196;
                        v141[4] = v197;
                        v141[5] = v198;
                        v141[1] = v194;
                        v141[2] = v195;
                        v119 = &qword_27F47A248;
                        v120 = &type metadata for ClinicalSharingDocumentReferenceForDataAvailabilityIndicator;
                        goto LABEL_100;
                      }

                      v141[0] = v193;
                      v141[3] = v196;
                      v141[4] = v197;
                      v141[5] = v198;
                      v141[1] = v194;
                      v141[2] = v195;
                      *&v142 = v113;
                      *(&v142 + 1) = v112;
                      v146 = v183;
                      v147 = v184;
                      v144 = v181;
                      v145 = v182;
                      v143 = v180;
                      v42 = &unk_27F47A240;
                      v43 = &qword_27F47A248;
                      v44 = &type metadata for ClinicalSharingDocumentReferenceForDataAvailabilityIndicator;
                      goto LABEL_26;
                    }
                  }

                  else if (!v104)
                  {
                    goto LABEL_66;
                  }

LABEL_64:

                  goto LABEL_39;
                }

                sub_251B32A94(v15, sub_251ABCCD4);
                (*(v132 + 8))(v13, v130);
              }

              sub_251B32A94(v78, sub_251B32764);
              goto LABEL_39;
            }

            v80 = v51;
            v81 = v46;
            v82 = v122;
            sub_251B32888(v80, v54, v121, v124);
            v83 = v126;
            v84 = v129;
            sub_251B32888(v126, v81, v82, v129);

            v67 = v83;
            v68 = v81;
            v69 = v82;
            v70 = v84;
LABEL_38:
            sub_251B220A8(v67, v68, v69, v70);
            goto LABEL_39;
          }
        }

        else if (!v50)
        {
          goto LABEL_43;
        }

        v60 = v45;
        v61 = *v49;
        v62 = v49[1];
        v63 = v47;
        v64 = v49[2];
        v127 = v50;
        v65 = v53;
        sub_251B32888(v61, v62, v52, v53);
        v66 = v129;
        sub_251B32888(v60, v46, v63, v129);
        sub_251B220A8(v60, v46, v63, v66);
        v67 = v51;
        v68 = v127;
        v69 = v64;
        v70 = v65;
        goto LABEL_38;
      }
    }

    else if (!*&v220[0])
    {
      *&v141[0] = 0;
      *(&v141[1] + 8) = *(v25 + 24);
      *(&v141[2] + 8) = *(v25 + 40);
      *(&v141[3] + 8) = *(v25 + 56);
      *(&v141[4] + 8) = *(v25 + 72);
      *(v141 + 8) = *(v25 + 8);
      sub_251B32984(v218, v222, &qword_27F479718, &type metadata for ClinicalSharingRootNodeInfo);
      sub_251B32984(v220, v222, &qword_27F479718, &type metadata for ClinicalSharingRootNodeInfo);
      sub_251B3282C(v141, &qword_27F479718, &type metadata for ClinicalSharingRootNodeInfo);
      goto LABEL_28;
    }

    *(&v141[1] + 8) = *(v25 + 24);
    *(&v141[2] + 8) = *(v25 + 40);
    *(&v141[3] + 8) = *(v25 + 56);
    *(&v141[4] + 8) = *(v25 + 72);
    *(v141 + 8) = *(v25 + 8);
    *&v141[0] = *&v218[0];
    *(&v141[5] + 1) = *&v220[0];
    v40 = *(v28 + 24);
    v41 = *(v28 + 56);
    v144 = *(v28 + 40);
    v145 = v41;
    v146 = *(v28 + 72);
    v142 = *(v28 + 8);
    v143 = v40;
    sub_251B32984(v218, v222, &qword_27F479718, &type metadata for ClinicalSharingRootNodeInfo);
    sub_251B32984(v220, v222, &qword_27F479718, &type metadata for ClinicalSharingRootNodeInfo);
    v42 = &unk_27F47A238;
    v43 = &qword_27F479718;
    v44 = &type metadata for ClinicalSharingRootNodeInfo;
LABEL_26:
    sub_251B329F0(v141, v42, v43, v44);
    goto LABEL_39;
  }

  v130 = v4;
  if (!v17)
  {
    goto LABEL_6;
  }

LABEL_39:
  v71 = 0;
  return v71 & 1;
}

void sub_251B32764(uint64_t a1)
{
  if (!qword_27F47A230)
  {
    sub_251ABCCD4(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F47A230);
    }
  }
}

void sub_251B327C8(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    sub_251AE526C(255, a3, a4);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_251B3282C(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  sub_251AE526C(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_251B32888(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
  }
}

unint64_t sub_251B328CC()
{
  result = qword_27F47A178;
  if (!qword_27F47A178)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27F47A178);
  }

  return result;
}

uint64_t sub_251B32984(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  sub_251AE526C(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_251B329F0(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  sub_251B327C8(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t sub_251B32A4C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_251B32A94(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_251B32AF4(uint64_t a1)
{
  if (!qword_2813E1D10)
  {
    sub_251A8223C(255, &qword_2813E1D20, 0x277D82BB8);
    v1 = sub_251C71574();
    if (!v2)
    {
      atomic_store(v1, &qword_2813E1D10);
    }
  }
}

uint64_t sub_251B32B5C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (result)
  {

    sub_251A83028(a5, a6);
  }

  return result;
}

id sub_251B32C24()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ClinicalDocumentDownloader();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_251B32E80(uint64_t a1, char a2, void *aBlock, void *a4)
{
  *(v4 + 16) = a4;
  *(v4 + 56) = a2;
  *(v4 + 24) = _Block_copy(aBlock);
  sub_251B34B90();
  *(v4 + 32) = sub_251C71154();
  v6 = a4;

  return MEMORY[0x2822009F8](sub_251B32F1C, 0, 0);
}

uint64_t sub_251B32F1C()
{
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v1[1] = sub_251B32FC4;
  v2 = *(v0 + 32);
  v3 = *(v0 + 56);

  return sub_251BB6044(v2, v3);
}

uint64_t sub_251B32FC4()
{
  v2 = *v1;
  *(v2 + 48) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_251B33138, 0, 0);
  }

  else
  {
    v3 = *(v2 + 24);

    (*(v3 + 16))(v3, 1, 0);
    _Block_release(*(v2 + 24));
    v4 = *(v2 + 8);

    return v4();
  }
}

uint64_t sub_251B33138()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 24);

  v3 = sub_251C6FD74();

  (*(v2 + 16))(v2, 0, v3);
  _Block_release(*(v0 + 24));
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_251B33368(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  v7 = a3;

  return MEMORY[0x2822009F8](sub_251B333F4, 0, 0);
}

uint64_t sub_251B333F4()
{
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v1[1] = sub_251B33498;
  v2 = *(v0 + 16);

  return sub_251BBA334(v2);
}

uint64_t sub_251B33498()
{
  v2 = *v1;
  *(v2 + 48) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_251B33608, 0, 0);
  }

  else
  {
    v4 = *(v2 + 24);
    v3 = *(v2 + 32);

    (*(v3 + 16))(v3, 1, 0);
    _Block_release(*(v2 + 32));
    v5 = *(v2 + 8);

    return v5();
  }
}

uint64_t sub_251B33608()
{
  v1 = *(v0 + 48);
  v3 = *(v0 + 24);
  v2 = *(v0 + 32);

  v4 = sub_251C6FD74();
  (*(v2 + 16))(v2, 0, v4);

  _Block_release(*(v0 + 32));
  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_251B33820(const void *a1)
{
  *(v1 + 16) = _Block_copy(a1);

  return MEMORY[0x2822009F8](sub_251B33888, 0, 0);
}

uint64_t sub_251B33888()
{
  v1 = *(v0 + 16);
  v1[2](v1, 1, 0);
  _Block_release(v1);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_251B33A84(uint64_t a1, const void *a2, void *a3)
{
  v3[2] = a3;
  v6 = sub_251C70074();
  v3[3] = v6;
  v3[4] = *(v6 - 8);
  v3[5] = swift_task_alloc();
  v3[6] = _Block_copy(a2);
  sub_251C70054();
  v7 = a3;

  return MEMORY[0x2822009F8](sub_251B33B7C, 0, 0);
}

uint64_t sub_251B33B7C()
{
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  *v1 = v0;
  v1[1] = sub_251B33C20;
  v2 = *(v0 + 40);

  return sub_251BB92AC(v2);
}

uint64_t sub_251B33C20()
{
  v2 = *v1;
  *(v2 + 64) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_251B33DA8, 0, 0);
  }

  else
  {
    v3 = *(v2 + 48);
    v4 = *(v2 + 16);
    (*(*(v2 + 32) + 8))(*(v2 + 40), *(v2 + 24));

    (*(v3 + 16))(v3, 1, 0);
    _Block_release(*(v2 + 48));

    v5 = *(v2 + 8);

    return v5();
  }
}

uint64_t sub_251B33DA8()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 48);
  v3 = *(v0 + 16);
  (*(*(v0 + 32) + 8))(*(v0 + 40), *(v0 + 24));

  v4 = sub_251C6FD74();
  (*(v2 + 16))(v2, 0, v4);

  _Block_release(*(v0 + 48));

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_251B33EA8(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_251B14FE8;

  return v6();
}

uint64_t sub_251B33F90(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_251AF4F78;

  return v7();
}

uint64_t sub_251B34078(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_251AF4E18(0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251B346F4(a3, v11);
  v12 = sub_251C71214();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_251B34758(v11);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_251C71204();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v14 = sub_251C711C4();
  v16 = v15;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v17 = sub_251C70F84() + 32;
    v18 = swift_allocObject();
    *(v18 + 16) = a4;
    *(v18 + 24) = a5;

    if (v16 | v14)
    {
      v24[0] = 0;
      v24[1] = 0;
      v19 = v24;
      v24[2] = v14;
      v24[3] = v16;
    }

    else
    {
      v19 = 0;
    }

    v23[1] = 7;
    v23[2] = v19;
    v23[3] = v17;
    v21 = swift_task_create();

    sub_251B34758(a3);

    return v21;
  }

LABEL_8:
  sub_251B34758(a3);
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  *(v20 + 24) = a5;
  if (v16 | v14)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v14;
    v24[7] = v16;
  }

  return swift_task_create();
}

uint64_t sub_251B3432C(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_251B34424;

  return v6(a1);
}

uint64_t sub_251B34424()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

id sub_251B3451C(void *a1)
{
  v2 = v1;
  *&v2[OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalDocumentDownloader_client] = a1;
  v4 = objc_allocWithZone(MEMORY[0x277CCD4D8]);
  v5 = a1;
  v6 = [v4 init];
  v7 = OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalDocumentDownloader_healthStore;
  *&v2[OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalDocumentDownloader_healthStore] = v6;
  v8 = [objc_allocWithZone(MEMORY[0x277D12400]) initWithHealthStore_];
  v9 = OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalDocumentDownloader_documentStore;
  *&v2[OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalDocumentDownloader_documentStore] = v8;
  v10 = [objc_allocWithZone(MEMORY[0x277D123E8]) initWithHealthStore_];
  *&v2[OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalDocumentDownloader_accountStore] = v10;
  v11 = *&v2[v9];
  type metadata accessor for ClinicalDocumentDownloadTaskCoordinator();
  swift_allocObject();
  *&v2[OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalDocumentDownloader_taskCoordinator] = sub_251BB5FC8(v11, v10);
  v13.receiver = v2;
  v13.super_class = type metadata accessor for ClinicalDocumentDownloader();
  return objc_msgSendSuper2(&v13, sel_init);
}

uint64_t sub_251B34640()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_251B14FE8;

  return sub_251B33A84(v2, v3, v4);
}

uint64_t sub_251B346F4(uint64_t a1, uint64_t a2)
{
  sub_251AF4E18(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_251B34758(uint64_t a1)
{
  sub_251AF4E18(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_251B347B4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_251B14FE8;

  return sub_251B3432C(a1, v4);
}

uint64_t sub_251B3486C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_251AF4F78;

  return sub_251B3432C(a1, v4);
}

uint64_t sub_251B34924()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_251AF4F78;

  return sub_251B33820(v2);
}

uint64_t objectdestroyTm_4()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_251B34A18()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_251B14FE8;

  return sub_251B33368(v2, v3, v4);
}

uint64_t sub_251B34ACC()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v5 = *(v0 + 32);
  v4 = *(v0 + 40);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_251B14FE8;

  return sub_251B32E80(v2, v3, v5, v4);
}

unint64_t sub_251B34B90()
{
  result = qword_27F47A308;
  if (!qword_27F47A308)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F47A308);
  }

  return result;
}

uint64_t type metadata accessor for ClinicalSharingHistogramQuery(uint64_t a1)
{
  result = qword_27F47A310;
  if (!qword_27F47A310)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_251B34C50(uint64_t a1)
{
  type metadata accessor for ClinicalSharingQueryContext(319);
  if (v1 <= 0x3F)
  {
    sub_251C6FAE4();
    if (v2 <= 0x3F)
    {
      sub_251A8223C(319, &qword_27F4797C0, 0x277CCD830);
      if (v3 <= 0x3F)
      {
        sub_251B36F3C(319, &qword_27F47A320, &qword_27F47A328, 0x277CCD7F8, MEMORY[0x277D83940]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_251B34D48@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_251C70014();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_251C701E4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v1;
  (*(v8 + 16))(v10, *v1 + OBJC_IVAR____TtC19HealthRecordsDaemon27ClinicalSharingQueryContext_gregorianCalendar, v7);
  (*(v4 + 16))(v6, v11 + OBJC_IVAR____TtC19HealthRecordsDaemon27ClinicalSharingQueryContext_date, v3);
  v12 = v1 + *(type metadata accessor for ClinicalSharingHistogramQuery(0) + 28);
  if (v12[8] == 1 && (v13 = *v12, ((1 << v13) & 0x67) == 0))
  {
    if (v13 == 3)
    {
      sub_251B1C960(0, v6, a1);
    }

    else
    {
      sub_251B1D048(v6, a1);
    }
  }

  else
  {
    sub_251C700C4();
  }

  (*(v4 + 8))(v6, v3);
  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_251B34F80()
{
  v1 = type metadata accessor for ClinicalSharingHistogramQuery(0);
  v2 = (v1 - 8);
  v84 = *(v1 - 8);
  v83 = *(v84 + 64);
  MEMORY[0x28223BE20](v1);
  v82 = &v71 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251B36914(0, &qword_27F47A330, type metadata accessor for PBTypedData);
  v5 = *(v4 - 8);
  v89 = v4;
  v90 = v5;
  MEMORY[0x28223BE20](v4);
  v85 = &v71 - v6;
  sub_251B36914(0, &qword_27F47A350, type metadata accessor for ClinicalSharingQueryOutput);
  v8 = *(v7 - 8);
  v87 = v7;
  v88 = v8;
  MEMORY[0x28223BE20](v7);
  v86 = &v71 - v9;
  sub_251B369E0(0, &qword_27F4793E0, MEMORY[0x277CC99E8]);
  MEMORY[0x28223BE20](v10 - 8);
  v75 = &v71 - v11;
  v12 = sub_251C6FC94();
  v13 = *(v12 - 8);
  v95 = v12;
  v96 = v13;
  v79 = *(v13 + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v78 = &v71 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v97 = &v71 - v16;
  v17 = sub_251C70014();
  v91 = *(v17 - 8);
  v18 = v91;
  v76 = *(v91 + 64);
  v19 = MEMORY[0x28223BE20](v17);
  v93 = &v71 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v22 = &v71 - v21;
  v23 = objc_opt_self();
  v24 = v0;
  sub_251C6FAB4();
  v25 = sub_251C6FF94();
  v26 = *(v18 + 8);
  v74 = v17;
  v26(v22, v17);
  v80 = v26;
  v81 = v18 + 8;
  sub_251C6FA84();
  v27 = sub_251C6FF94();
  v26(v22, v17);
  v92 = [v23 predicateForSamplesWithStartDate:v25 endDate:v27 options:0];

  v28 = v24;
  v29 = v97;
  sub_251AFC81C(*(v24 + v2[9]), *(v24 + v2[9] + 8));
  v30 = *v24;
  v31 = OBJC_IVAR____TtC19HealthRecordsDaemon27ClinicalSharingQueryContext_gregorianCalendar;
  v32 = sub_251C701E4();
  v33 = *(v32 - 8);
  v34 = v30 + v31;
  v35 = v75;
  (*(v33 + 16))(v75, v34, v32);
  (*(v33 + 56))(v35, 0, 1, v32);
  v36 = v29;
  sub_251C6FC84();
  sub_251A823B4(v30 + 16, v99);
  v37 = __swift_project_boxed_opaque_existential_1(v99, v99[3]);
  v38 = v2[8];
  v94 = v28;
  v72 = *(v28 + v38);
  v77 = v22;
  sub_251B34D48(v22);
  v73 = *(v28 + v2[10]);
  v75 = *v37;
  v39 = v91;
  v40 = v74;
  (*(v91 + 16))(v93, v22, v74);
  v41 = v95;
  v42 = v96;
  v43 = v78;
  (*(v96 + 16))(v78, v36, v95);
  v44 = (*(v39 + 80) + 32) & ~*(v39 + 80);
  v45 = v42;
  v46 = (v76 + *(v42 + 80) + v44) & ~*(v42 + 80);
  v47 = (v79 + v46 + 7) & 0xFFFFFFFFFFFFFFF8;
  v48 = swift_allocObject();
  v49 = v72;
  v51 = v91;
  v50 = v92;
  *(v48 + 16) = v72;
  *(v48 + 24) = v50;
  (*(v51 + 32))(v48 + v44, v93, v40);
  (*(v45 + 32))(v48 + v46, v43, v41);
  *(v48 + v47) = v73;
  v52 = v75;
  *(v48 + ((v47 + 15) & 0xFFFFFFFFFFFFFFF8)) = v75;
  v53 = MEMORY[0x277CBCEA8];
  sub_251B36B54(0, &qword_27F47A358, MEMORY[0x277CBCEA8]);
  swift_allocObject();
  v54 = v49;
  v93 = v92;

  v55 = v52;
  v98 = sub_251C70A64();
  sub_251B36BDC(&qword_27F47A360, &qword_27F47A358, v53, MEMORY[0x277CBCEB0]);
  v56 = sub_251C70A94();

  v98 = v56;
  v57 = MEMORY[0x277CBCD88];
  sub_251B36B54(0, &qword_27F47A338, MEMORY[0x277CBCD88]);
  v91 = v58;
  v92 = sub_251B36BDC(&qword_27F47A348, &qword_27F47A338, v57, MEMORY[0x277CBCD90]);
  v59 = sub_251C70A94();
  v80(v77, v40);

  v98 = v59;
  v60 = v82;
  sub_251B37044(v94, v82, type metadata accessor for ClinicalSharingHistogramQuery);
  v61 = (*(v84 + 80) + 16) & ~*(v84 + 80);
  v62 = swift_allocObject();
  sub_251B37168(v60, v62 + v61, type metadata accessor for ClinicalSharingHistogramQuery);
  v63 = swift_allocObject();
  *(v63 + 16) = sub_251B36C20;
  *(v63 + 24) = v62;
  type metadata accessor for PBTypedData(0);
  v64 = v85;
  sub_251C70AA4();

  __swift_destroy_boxed_opaque_existential_1(v99);
  sub_251B37044(v94, v60, type metadata accessor for ClinicalSharingHistogramQuery);
  v65 = swift_allocObject();
  sub_251B37168(v60, v65 + v61, type metadata accessor for ClinicalSharingHistogramQuery);
  type metadata accessor for ClinicalSharingQueryOutput(0);
  v66 = v86;
  v67 = v89;
  sub_251C70774();

  (*(v90 + 8))(v64, v67);
  sub_251B36E40();
  v68 = v87;
  v69 = sub_251C70A94();

  (*(v88 + 8))(v66, v68);
  (*(v96 + 8))(v97, v95);
  return v69;
}

uint64_t sub_251B35964@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v88 = a2;
  v89 = type metadata accessor for ClinicalSharingHistogramQuery(0);
  MEMORY[0x28223BE20](v89);
  v81 = &v77 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251B369E0(0, qword_2813E6EE8, type metadata accessor for PBDateRange);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v84 = &v77 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v90 = &v77 - v9;
  v91 = type metadata accessor for PBTypedData(0);
  v87 = *(v91 - 8);
  MEMORY[0x28223BE20](v91);
  v11 = &v77 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251B369E0(0, &qword_27F478D90, MEMORY[0x277CC88A8]);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v77 - v13;
  v85 = type metadata accessor for PBDateRange(0);
  v82 = *(v85 - 8);
  v15 = MEMORY[0x28223BE20](v85);
  v80 = &v77 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v86 = &v77 - v17;
  v18 = type metadata accessor for PBHistogramSeries(0);
  v19 = MEMORY[0x28223BE20](v18);
  v83 = &v77 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v22 = &v77 - v21;
  v23 = [a1 valueHistograms];
  sub_251A8223C(0, &qword_27F47A370, 0x277CCDB88);
  v24 = sub_251C71154();

  if (v24 >> 62)
  {
    v25 = sub_251C717F4();
  }

  else
  {
    v25 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v25)
  {
    v26 = v3;
    v27 = v89;
    v28 = *(v26 + *(v89 + 24));
    v29 = sub_251C2C490();
    if (v29)
    {
      v78 = v28;
      v30 = v22;
      v31 = v29;
      v32 = [a1 valueHistograms];
      v33 = sub_251C71154();

      MEMORY[0x28223BE20](v34);
      *(&v77 - 2) = v31;
      *(&v77 - 1) = v26;
      sub_251C4FA60(sub_251B36FA4, (&v77 - 4), v33);
      v36 = v35;

      sub_251C703A4();
      *v30 = v36;
      v81 = v31;
      v37 = [v31 unitString];
      v38 = sub_251C70F14();
      v40 = v39;

      v30[1] = v38;
      v30[2] = v40;
      v79 = v30;
      v41 = *(v89 + 20);
      v42 = sub_251C6FAE4();
      v43 = *(v42 - 8);
      (*(v43 + 16))(v14, v26 + v41, v42);
      (*(v43 + 56))(v14, 0, 1, v42);
      v44 = v86;
      sub_251BFC464();
      sub_251B370AC(v14, &qword_27F478D90, MEMORY[0x277CC88A8]);
      v45 = v90;
      sub_251B37044(v44, v90, type metadata accessor for PBDateRange);
      v46 = v82;
      v47 = *(v82 + 56);
      v48 = v85;
      v47(v45, 0, 1, v85);
      *v11 = 0;
      v11[8] = 1;
      v49 = v91;
      v50 = *(v91 + 20);
      v51 = type metadata accessor for PBTypedData.OneOf_Raw(0);
      v52 = *(v51 - 8);
      v89 = *(v52 + 56);
      v77 = v52 + 56;
      (v89)(&v11[v50], 1, 1, v51);
      sub_251C703A4();
      v53 = *(v49 + 28);
      v47(&v11[v53], 1, 1, v48);
      v54 = v78;
      v55 = sub_251B3C450();
      if ((v56 & 0x100) == 0)
      {
        *v11 = v55;
        v11[8] = v56 & 1;
      }

      v57 = v84;
      sub_251B36FC4(v90, v84);
      v58 = v85;
      if ((*(v46 + 48))(v57, 1, v85) == 1)
      {
        sub_251B370AC(v57, qword_2813E6EE8, type metadata accessor for PBDateRange);
      }

      else
      {
        v70 = v54;
        v71 = v80;
        sub_251B37168(v57, v80, type metadata accessor for PBDateRange);
        sub_251B370AC(&v11[v53], qword_2813E6EE8, type metadata accessor for PBDateRange);
        v72 = v71;
        v54 = v70;
        sub_251B37168(v72, &v11[v53], type metadata accessor for PBDateRange);
        v47(&v11[v53], 0, 1, v58);
      }

      sub_251B370AC(v90, qword_2813E6EE8, type metadata accessor for PBDateRange);
      v73 = v79;
      v74 = v83;
      sub_251B37044(v79, v83, type metadata accessor for PBHistogramSeries);
      sub_251B370AC(&v11[v50], qword_2813E6C90, type metadata accessor for PBTypedData.OneOf_Raw);
      sub_251B37168(v74, &v11[v50], type metadata accessor for PBHistogramSeries);
      swift_storeEnumTagMultiPayload();
      (v89)(&v11[v50], 0, 1, v51);
      v75 = [v54 code];

      sub_251B37108(v86, type metadata accessor for PBDateRange);
      if (v75 == 15)
      {
        *v11 = 130;
        v11[8] = 1;
      }

      v76 = v88;
      sub_251B37168(v11, v88, type metadata accessor for PBTypedData);
      (*(v87 + 56))(v76, 0, 1, v91);
      return sub_251B37108(v73, type metadata accessor for PBHistogramSeries);
    }

    else
    {
      if (qword_2813E26F8 != -1)
      {
        swift_once();
      }

      v63 = sub_251C70764();
      __swift_project_value_buffer(v63, qword_2813E8130);
      v64 = v81;
      sub_251B37044(v26, v81, type metadata accessor for ClinicalSharingHistogramQuery);
      v65 = sub_251C70744();
      v66 = sub_251C713E4();
      if (os_log_type_enabled(v65, v66))
      {
        v67 = swift_slowAlloc();
        v68 = swift_slowAlloc();
        *v67 = 138412290;
        v69 = *&v64[*(v27 + 24)];
        sub_251B37108(v64, type metadata accessor for ClinicalSharingHistogramQuery);
        *(v67 + 4) = v69;
        *v68 = v69;
        _os_log_impl(&dword_251A6C000, v65, v66, "Missing encoding unit for %@", v67, 0xCu);
        sub_251B36EB4(v68);
        MEMORY[0x25308E2B0](v68, -1, -1);
        MEMORY[0x25308E2B0](v67, -1, -1);
      }

      else
      {

        sub_251B37108(v64, type metadata accessor for ClinicalSharingHistogramQuery);
      }

      return (*(v87 + 56))(v88, 1, 1, v91);
    }
  }

  else
  {
    v59 = v88;
    v60 = *(v87 + 56);
    v61 = v91;

    return v60(v59, 1, 1, v61);
  }
}

void *sub_251B363C8@<X0>(void **a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t *a4@<X8>)
{
  v5 = v4;
  v51 = a3;
  v57 = a2;
  v58 = type metadata accessor for PBBucket(0);
  v56 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v9 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_251C70014();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v50 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_251C6FAE4();
  v48 = *(v13 - 8);
  v49 = v13;
  MEMORY[0x28223BE20](v13);
  v47 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a1;
  a4[3] = 0;
  a4[4] = 0xE000000000000000;
  type metadata accessor for PBHistogramSeries.Value(0);
  sub_251C703A4();
  v46 = v15;
  v16 = [v15 segments];
  sub_251A8223C(0, &qword_27F47A378, 0x277CCDBA0);
  v17 = sub_251C71154();

  if (v17 >> 62)
  {
    goto LABEL_16;
  }

  v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v52 = v11;
  v53 = v10;
  if (v18)
  {
    while (1)
    {
      v59 = v18;
      v60 = MEMORY[0x277D84F90];
      result = sub_251C0BCE4(0, v18 & ~(v18 >> 63), 0);
      if (v59 < 0)
      {
        break;
      }

      v44 = a4;
      v45 = v5;
      v5 = 0;
      v11 = v60;
      v54 = v17;
      v55 = v17 & 0xC000000000000001;
      while (1)
      {
        v20 = v55 ? MEMORY[0x25308D460](v5, v17) : *(v17 + 8 * v5 + 32);
        v21 = v20;
        sub_251C703A4();
        v22 = [v21 count];
        if (v22 < 0xFFFFFFFF80000000)
        {
          break;
        }

        if (v22 > 0x7FFFFFFF)
        {
          goto LABEL_15;
        }

        *(v9 + 4) = v22;
        v23 = [v21 quantityRange];
        v24 = [v23 minimum];

        a4 = &off_2796E0000;
        v25 = v57;
        [v24 doubleValueForUnit_];
        v27 = v26;

        *v9 = v27;
        v28 = [v21 quantityRange];
        v29 = [v28 maximum];

        [v29 doubleValueForUnit_];
        v31 = v30;

        *(v9 + 1) = v31;
        v60 = v11;
        v33 = *(v11 + 16);
        v32 = *(v11 + 24);
        v10 = v33 + 1;
        if (v33 >= v32 >> 1)
        {
          sub_251C0BCE4((v32 > 1), v33 + 1, 1);
          v11 = v60;
        }

        ++v5;
        *(v11 + 16) = v10;
        sub_251B37168(v9, v11 + ((*(v56 + 80) + 32) & ~*(v56 + 80)) + *(v56 + 72) * v33, type metadata accessor for PBBucket);
        v17 = v54;
        if (v59 == v5)
        {

          a4 = v44;
          goto LABEL_18;
        }
      }

      __break(1u);
LABEL_15:
      __break(1u);
LABEL_16:
      v18 = sub_251C717F4();
      v52 = v11;
      v53 = v10;
      if (!v18)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:

    v11 = MEMORY[0x277D84F90];
LABEL_18:
    a4[2] = v11;
    v34 = [v46 dateInterval];
    v35 = v47;
    sub_251C6FA74();

    v36 = v50;
    sub_251C6FAB4();
    (*(v48 + 8))(v35, v49);
    v37 = *(*v51 + OBJC_IVAR____TtC19HealthRecordsDaemon27ClinicalSharingQueryContext_isoDateFormatter);
    v38 = sub_251C6FF94();
    v39 = [v37 stringFromDate_];

    v40 = sub_251C70F14();
    v42 = v41;

    result = (*(v52 + 8))(v36, v53);
    *a4 = v40;
    a4[1] = v42;
  }

  return result;
}

void sub_251B36914(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    v5 = MEMORY[0x277CBCD88];
    sub_251B36B54(255, &qword_27F47A338, MEMORY[0x277CBCD88]);
    a3(255);
    sub_251B36BDC(&qword_27F47A348, &qword_27F47A338, v5, MEMORY[0x277CBCD90]);
    v6 = sub_251C70784();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_251B369E0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_251C71574();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_251B36A34(uint64_t a1, uint64_t a2)
{
  v5 = *(sub_251C70014() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_251C6FC94() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = (*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(v2 + 16);
  v12 = *(v2 + 24);
  v13 = *(v2 + v10);
  v14 = *(v2 + ((v10 + 15) & 0xFFFFFFFFFFFFFFF8));

  sub_251BBF7D4(a1, a2, v11, v12, v2 + v6, v2 + v9, v13, v14);
}

void sub_251B36B54(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, unint64_t, void))
{
  if (!*a2)
  {
    v6 = sub_251A8223C(255, &qword_27F47A340, 0x277CCDB90);
    v7 = sub_251A82284();
    v8 = a3(a1, v6, v7, MEMORY[0x277D84950]);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_251B36BDC(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, unint64_t, void), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_251B36B54(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t objectdestroy_4Tm()
{
  v1 = (type metadata accessor for ClinicalSharingHistogramQuery(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[7];
  v6 = sub_251C6FAE4();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

unint64_t sub_251B36E40()
{
  result = qword_27F47A368;
  if (!qword_27F47A368)
  {
    sub_251B36914(255, &qword_27F47A350, type metadata accessor for ClinicalSharingQueryOutput);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47A368);
  }

  return result;
}

uint64_t sub_251B36EB4(uint64_t a1)
{
  sub_251B36F3C(0, &qword_2813E1D10, &qword_2813E1D20, 0x277D82BB8, MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_251B36F3C(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_251A8223C(255, a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_251B36FC4(uint64_t a1, uint64_t a2)
{
  sub_251B369E0(0, qword_2813E6EE8, type metadata accessor for PBDateRange);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_251B37044(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_251B370AC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_251B369E0(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_251B37108(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_251B37168(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t CatalogEntry.id.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t CatalogEntry.url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for CatalogEntry(0) + 24);
  v4 = sub_251C6FE64();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for CatalogEntry(uint64_t a1)
{
  result = qword_27F47A3A8;
  if (!qword_27F47A3A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t CatalogEntry.init(id:version:url:bytes:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, char *a7@<X8>)
{
  *a7 = a1;
  *(a7 + 1) = a2;
  *(a7 + 2) = a3;
  v11 = type metadata accessor for CatalogEntry(0);
  v12 = *(v11 + 24);
  v13 = sub_251C6FE64();
  result = (*(*(v13 - 8) + 32))(&a7[v12], a4, v13);
  v15 = &a7[*(v11 + 28)];
  *v15 = a5;
  v15[8] = a6 & 1;
  return result;
}

uint64_t sub_251B373A0()
{
  v1 = 25705;
  v2 = 7107189;
  if (*v0 != 2)
  {
    v2 = 0x7365747962;
  }

  if (*v0)
  {
    v1 = 118;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_251B373F8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_251B37E64(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_251B3742C(uint64_t a1)
{
  v2 = sub_251B376B0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_251B37468(uint64_t a1)
{
  v2 = sub_251B376B0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CatalogEntry.encode(to:)(void *a1)
{
  sub_251B37AF0(0, &qword_27F47A380, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v9[-v6];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_251B376B0();
  sub_251C71B14();
  v9[15] = 0;
  sub_251C71934();
  if (!v1)
  {
    v9[14] = 1;
    sub_251C71954();
    type metadata accessor for CatalogEntry(0);
    v9[13] = 2;
    sub_251C6FE64();
    sub_251B37B54(&qword_27F47A390, MEMORY[0x277CC9268]);
    sub_251C71964();
    v9[12] = 3;
    sub_251C71914();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_251B376B0()
{
  result = qword_27F47A388;
  if (!qword_27F47A388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47A388);
  }

  return result;
}

uint64_t CatalogEntry.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v3 = sub_251C6FE64();
  v23 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251B37AF0(0, &qword_27F47A398, MEMORY[0x277D844C8]);
  v26 = v6;
  v24 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = v21 - v7;
  v9 = type metadata accessor for CatalogEntry(0);
  MEMORY[0x28223BE20](v9);
  v11 = (v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_251B376B0();
  v25 = v8;
  v12 = v27;
  sub_251C71B04();
  if (v12)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v27 = a1;
  v13 = v24;
  v31 = 0;
  *v11 = sub_251C718B4();
  v11[1] = v14;
  v21[1] = v14;
  v30 = 1;
  v11[2] = sub_251C718C4();
  v29 = 2;
  sub_251B37B54(&qword_27F47A3A0, MEMORY[0x277CC9280]);
  sub_251C718D4();
  (*(v23 + 32))(v11 + *(v9 + 24), v5, v3);
  v28 = 3;
  v15 = v11;
  v16 = sub_251C71894();
  v18 = v17;
  (*(v13 + 8))(v25, v26);
  v19 = v15 + *(v9 + 28);
  *v19 = v16;
  *(v19 + 8) = v18 & 1;
  sub_251B37B98(v15, v22);
  __swift_destroy_boxed_opaque_existential_1(v27);
  return sub_251B37BFC(v15);
}

void sub_251B37AF0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_251B376B0();
    v7 = a3(a1, &type metadata for CatalogEntry.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_251B37B54(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_251C6FE64();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_251B37B98(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CatalogEntry(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_251B37BFC(uint64_t a1)
{
  v2 = type metadata accessor for CatalogEntry(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_251B37CB0(uint64_t a1)
{
  sub_251C6FE64();
  if (v1 <= 0x3F)
  {
    sub_251B167A8();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_251B37D60()
{
  result = qword_27F47A3B8;
  if (!qword_27F47A3B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47A3B8);
  }

  return result;
}

unint64_t sub_251B37DB8()
{
  result = qword_27F47A3C0;
  if (!qword_27F47A3C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47A3C0);
  }

  return result;
}

unint64_t sub_251B37E10()
{
  result = qword_27F47A3C8;
  if (!qword_27F47A3C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47A3C8);
  }

  return result;
}

uint64_t sub_251B37E64(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_251C719D4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 118 && a2 == 0xE100000000000000 || (sub_251C719D4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 7107189 && a2 == 0xE300000000000000 || (sub_251C719D4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7365747962 && a2 == 0xE500000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_251C719D4();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

id sub_251B37FB0()
{
  v0 = [swift_getObjCClassFromMetadata() ephemeralSessionConfiguration];
  sub_251B3810C(0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_251C74800;
  v2 = MEMORY[0x277D837D0];
  sub_251C71644();
  v3 = HDHealthRecordsPublicUserAgentString();
  v4 = sub_251C70F14();
  v6 = v5;

  *(inited + 96) = v2;
  *(inited + 72) = v4;
  *(inited + 80) = v6;
  sub_251C4C024(inited);
  swift_setDeallocating();
  sub_251B381C8(inited + 32);
  v7 = sub_251C70E44();

  [v0 setHTTPAdditionalHeaders_];

  [v0 set:*MEMORY[0x277CCE3A8] sourceApplicationBundleIdentifier:?];
  return v0;
}

void sub_251B3810C(uint64_t a1)
{
  if (!qword_2813E1C48)
  {
    sub_251B38164();
    v1 = sub_251C719B4();
    if (!v2)
    {
      atomic_store(v1, &qword_2813E1C48);
    }
  }
}

void sub_251B38164()
{
  if (!qword_2813E1CE0)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2813E1CE0);
    }
  }
}

uint64_t sub_251B381C8(uint64_t a1)
{
  sub_251B38164();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_251B38224@<X0>(void **a1@<X0>, uint64_t *a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v162 = a3;
  v181 = a2;
  v179 = a4;
  sub_251B3B6FC(0, qword_2813E5D48, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord);
  MEMORY[0x28223BE20](v5 - 8);
  v163 = &v155 - v6;
  sub_251B3B6FC(0, qword_2813E52A0, type metadata accessor for PBGeneralMedication);
  MEMORY[0x28223BE20](v7 - 8);
  v161 = &v155 - v8;
  v9 = sub_251C70014();
  v177 = *(v9 - 8);
  v178 = v9;
  MEMORY[0x28223BE20](v9);
  v176 = &v155 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v168 = sub_251C701E4();
  v175 = *(v168 - 8);
  MEMORY[0x28223BE20](v168);
  v174 = &v155 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v173 = type metadata accessor for PBHKConcept(0);
  v12 = *(v173 - 8);
  MEMORY[0x28223BE20](v173);
  v167 = &v155 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for PBGeneralMedication(0);
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v159 = &v155 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = (&v155 - v19);
  MEMORY[0x28223BE20](v18);
  v157 = &v155 - v21;
  v22 = type metadata accessor for PBHKMedicationRecord(0);
  v23 = v22 - 8;
  v24 = MEMORY[0x28223BE20](v22);
  v160 = &v155 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v27 = &v155 - v26;
  v28 = *a1;
  *v27 = 0;
  *(v27 + 1) = 0xE000000000000000;
  *(v27 + 2) = 0;
  *(v27 + 3) = 0xE000000000000000;
  *(v27 + 4) = 0;
  v27[40] = 1;
  *(v27 + 6) = 0;
  *(v27 + 7) = 0xE000000000000000;
  *(v27 + 8) = 0;
  *(v27 + 9) = 0xE000000000000000;
  v27[80] = 0;
  v29 = MEMORY[0x277D84F90];
  *(v27 + 11) = MEMORY[0x277D84F90];
  *(v27 + 12) = v29;
  sub_251C703A4();
  v166 = *(v23 + 60);
  v158 = v15;
  v171 = *(v15 + 56);
  v172 = v15 + 56;
  v171(&v27[v166], 1, 1, v14);
  v170 = [v28 medication];
  v169 = [v28 earliestDosageDate];
  v30 = [v28 dosages];
  if (v30)
  {
    v31 = v30;
    sub_251A8223C(0, &qword_27F47A3D0, 0x277CCD648);
    v156 = sub_251C71154();
  }

  else
  {
    v156 = 0;
  }

  v155 = [v28 status];
  *v20 = 0;
  v20[1] = 0xE000000000000000;
  v20[2] = v29;
  v20[3] = 0;
  v20[4] = 0xE000000000000000;
  v20[5] = v29;
  sub_251C703A4();
  v32 = *(v14 + 36);
  v33 = *(v12 + 56);
  v34 = v173;
  v33(v20 + v32, 1, 1, v173);
  v180 = v14;
  v35 = *(v14 + 40);
  v33(v20 + v35, 1, 1, v34);
  v36 = v167;
  v37 = v181;
  sub_251AF0ACC(v170, 1, v167);
  sub_251B393FC(v20 + v32, qword_2813E6D28, type metadata accessor for PBHKConcept);
  sub_251B3B750(v36, v20 + v32, type metadata accessor for PBHKConcept);
  v165 = v12 + 56;
  v164 = v33;
  v38 = (v33)(v20 + v32, 0, 1, v34);
  v39 = v169;
  if (v169)
  {
    v40 = *v37;
    v42 = v174;
    v41 = v175;
    v43 = v168;
    (*(v175 + 16))(v174, *v37 + OBJC_IVAR____TtC19HealthRecordsDaemon27ClinicalSharingQueryContext_gregorianCalendar, v168);
    v44 = v39;
    v45 = sub_251C70114();
    (*(v41 + 8))(v42, v43);
    v46 = [v44 adjustedDateForCalendar_];

    v47 = v176;
    sub_251C6FFE4();

    v48 = *(v40 + OBJC_IVAR____TtC19HealthRecordsDaemon27ClinicalSharingQueryContext_isoDateFormatter);
    v49 = sub_251C6FF94();
    v50 = [v48 stringFromDate_];

    v51 = sub_251C70F14();
    v53 = v52;

    v38 = (*(v177 + 8))(v47, v178);
    *v20 = v51;
    v20[1] = v53;
  }

  v54 = v168;
  v55 = v156;
  if (v156)
  {
    MEMORY[0x28223BE20](v38);
    *(&v155 - 2) = v181;
    sub_251C4FAB4(sub_251B3B6CC, (&v155 - 4), v55);
    v20[2] = v56;
  }

  if (v155)
  {
    v57 = v155;
    v58 = v167;
    sub_251AF0ACC(v57, 1, v167);

    sub_251B393FC(v20 + v35, qword_2813E6D28, type metadata accessor for PBHKConcept);
    sub_251B3B750(v58, v20 + v35, type metadata accessor for PBHKConcept);
    v164(v20 + v35, 0, 1, v173);
  }

  else
  {
  }

  v59 = v157;
  sub_251B3B750(v20, v157, type metadata accessor for PBGeneralMedication);
  v60 = v166;
  sub_251B393FC(&v27[v166], qword_2813E52A0, type metadata accessor for PBGeneralMedication);
  sub_251B3B750(v59, &v27[v60], type metadata accessor for PBGeneralMedication);
  v171(&v27[v60], 0, 1, v180);
  v61 = [v28 asserter];
  if (v61)
  {
    v62 = v61;
    v63 = sub_251C70F14();
    v65 = v64;

    *v27 = v63;
    *(v27 + 1) = v65;
  }

  v66 = [v28 assertionDate];
  v67 = v181;
  if (v66)
  {
    v68 = v66;
    v69 = *v181;
    v71 = v174;
    v70 = v175;
    (*(v175 + 16))(v174, *v181 + OBJC_IVAR____TtC19HealthRecordsDaemon27ClinicalSharingQueryContext_gregorianCalendar, v54);
    v72 = sub_251C70114();
    (*(v70 + 8))(v71, v54);
    v73 = [v68 adjustedDateForCalendar_];

    v74 = v176;
    sub_251C6FFE4();

    v75 = *(v69 + OBJC_IVAR____TtC19HealthRecordsDaemon27ClinicalSharingQueryContext_isoDateFormatter);
    v76 = sub_251C6FF94();
    v77 = [v75 stringFromDate_];

    v78 = sub_251C70F14();
    v80 = v79;

    v81 = v74;
    v67 = v181;
    (*(v177 + 8))(v81, v178);
    *(v27 + 2) = v78;
    *(v27 + 3) = v80;
  }

  *(v27 + 4) = sub_251BC10B8([v28 assertionType]);
  v27[40] = v82 & 1;
  v83 = [v28 effectiveStartDate];
  if (v83)
  {
    v84 = v83;
    v85 = *v67;
    v87 = v174;
    v86 = v175;
    (*(v175 + 16))(v174, v85 + OBJC_IVAR____TtC19HealthRecordsDaemon27ClinicalSharingQueryContext_gregorianCalendar, v54);
    v88 = sub_251C70114();
    (*(v86 + 8))(v87, v54);
    v89 = [v84 adjustedDateForCalendar_];

    v90 = v176;
    sub_251C6FFE4();

    v91 = *(v85 + OBJC_IVAR____TtC19HealthRecordsDaemon27ClinicalSharingQueryContext_isoDateFormatter);
    v92 = sub_251C6FF94();
    v93 = [v91 stringFromDate_];

    v94 = sub_251C70F14();
    v96 = v95;

    v97 = v90;
    v67 = v181;
    (*(v177 + 8))(v97, v178);
    *(v27 + 6) = v94;
    *(v27 + 7) = v96;
  }

  v98 = [v28 effectiveEndDate];
  if (v98)
  {
    v99 = v98;
    v100 = *v67;
    v102 = v174;
    v101 = v175;
    (*(v175 + 16))(v174, v100 + OBJC_IVAR____TtC19HealthRecordsDaemon27ClinicalSharingQueryContext_gregorianCalendar, v54);
    v103 = sub_251C70114();
    (*(v101 + 8))(v102, v54);
    v104 = [v99 adjustedDateForCalendar_];

    v105 = v176;
    sub_251C6FFE4();

    v106 = *(v100 + OBJC_IVAR____TtC19HealthRecordsDaemon27ClinicalSharingQueryContext_isoDateFormatter);
    v107 = sub_251C6FF94();
    v108 = [v106 stringFromDate_];

    v109 = sub_251C70F14();
    v111 = v110;

    v112 = v105;
    v67 = v181;
    (*(v177 + 8))(v112, v178);
    *(v27 + 8) = v109;
    *(v27 + 9) = v111;
  }

  v27[80] = [v28 notTaken];
  v113 = [v28 reasonForUse];
  if (v113)
  {
    v114 = v113;
    sub_251A8223C(0, &qword_27F479F70, 0x277CCD1B0);
    v115 = sub_251C71154();

    MEMORY[0x28223BE20](v116);
    *(&v155 - 2) = v67;
    sub_251C4FA0C(sub_251B3B7B8, (&v155 - 4), v115);
    v118 = v117;

    *(v27 + 11) = v118;
  }

  v119 = v159;
  v120 = v180;
  v121 = [v28 reasonsNotTaken];
  if (v121)
  {
    v122 = v121;
    sub_251A8223C(0, &qword_27F479F70, 0x277CCD1B0);
    v123 = sub_251C71154();

    MEMORY[0x28223BE20](v124);
    *(&v155 - 2) = v67;
    sub_251C4FA0C(sub_251B3B7B8, (&v155 - 4), v123);
    v126 = v125;

    *(v27 + 12) = v126;
  }

  v127 = [v28 medicationCodingCollection];
  v128 = sub_251C22DE8();

  v129 = v161;
  sub_251B39458(&v27[v60], v161);
  v130 = *(v158 + 48);
  if (v130(v129, 1, v120) == 1)
  {
    *v119 = 0;
    *(v119 + 1) = 0xE000000000000000;
    v131 = MEMORY[0x277D84F90];
    *(v119 + 2) = MEMORY[0x277D84F90];
    *(v119 + 3) = 0;
    *(v119 + 4) = 0xE000000000000000;
    *(v119 + 5) = v131;
    sub_251C703A4();
    v132 = &v119[*(v120 + 36)];
    v133 = v173;
    v134 = v164;
    v164(v132, 1, 1, v173);
    v134(&v119[*(v180 + 40)], 1, 1, v133);
    v120 = v180;
    v135 = v130(v129, 1, v180);
    v60 = v166;
    if (v135 != 1)
    {
      sub_251B393FC(v129, qword_2813E52A0, type metadata accessor for PBGeneralMedication);
    }
  }

  else
  {
    sub_251B3B750(v129, v119, type metadata accessor for PBGeneralMedication);
  }

  *(v119 + 5) = v128;
  sub_251B393FC(&v27[v60], qword_2813E52A0, type metadata accessor for PBGeneralMedication);
  sub_251B3B750(v119, &v27[v60], type metadata accessor for PBGeneralMedication);
  v171(&v27[v60], 0, 1, v120);
  v136 = v179;
  sub_251AF11B4(v28, v162, v179);
  v137 = v160;
  sub_251B394D8(v27, v160, type metadata accessor for PBHKMedicationRecord);
  v138 = *(type metadata accessor for PBClinicalRecord(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v140 = *(v136 + v138);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for PBClinicalRecord._StorageClass(0);
    swift_allocObject();
    v141 = sub_251BB2A8C(v140);

    *(v179 + v138) = v141;
    v140 = v141;
  }

  v142 = v137;
  v143 = v163;
  sub_251B3B750(v142, v163, type metadata accessor for PBHKMedicationRecord);
  v144 = type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v144 - 8) + 56))(v143, 0, 1, v144);
  v145 = OBJC_IVAR____TtCV19HealthRecordsDaemon16PBClinicalRecordP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__medicalRecord;
  swift_beginAccess();
  sub_251B3B5EC(v143, &v140[v145]);
  swift_endAccess();
  v146 = sub_251C6CC54();
  v148 = v147;
  v149 = v179;
  v150 = swift_isUniquelyReferenced_nonNull_native();
  v151 = *(v149 + v138);
  if ((v150 & 1) == 0)
  {
    type metadata accessor for PBClinicalRecord._StorageClass(0);
    swift_allocObject();
    v152 = sub_251BB2A8C(v151);

    *(v179 + v138) = v152;
    v151 = v152;
  }

  v153 = (v151 + OBJC_IVAR____TtCV19HealthRecordsDaemon16PBClinicalRecordP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__iosDerivedDisplayName);
  swift_beginAccess();
  *v153 = v146;
  v153[1] = v148;

  return sub_251B3B66C(v27, type metadata accessor for PBHKMedicationRecord);
}

uint64_t sub_251B393FC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_251B3B6FC(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_251B39458(uint64_t a1, uint64_t a2)
{
  sub_251B3B6FC(0, qword_2813E52A0, type metadata accessor for PBGeneralMedication);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_251B394D8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_251B39540@<X0>(void **a1@<X0>, uint64_t *a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v131 = a3;
  v154 = a2;
  v139 = a4;
  sub_251B3B6FC(0, qword_2813E5D48, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord);
  MEMORY[0x28223BE20](v5 - 8);
  v132 = &v128 - v6;
  v7 = sub_251C70014();
  v146 = *(v7 - 8);
  v147 = v7;
  MEMORY[0x28223BE20](v7);
  v145 = &v128 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_251C701E4();
  v143 = *(v9 - 8);
  v144 = v9;
  MEMORY[0x28223BE20](v9);
  v142 = &v128 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for PBHKConcept(0);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v152 = &v128 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for PBGeneralMedication(0);
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = (&v128 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v16);
  v137 = &v128 - v19;
  v20 = type metadata accessor for PBHKMedicationOrder(0);
  v21 = (v20 - 8);
  v22 = MEMORY[0x28223BE20](v20);
  v130 = &v128 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v25 = &v128 - v24;
  v26 = *a1;
  *v25 = 0;
  *(v25 + 1) = 0xE000000000000000;
  *(v25 + 4) = 0;
  *(v25 + 3) = 0;
  *(v25 + 4) = 0xE000000000000000;
  v27 = MEMORY[0x277D84F90];
  *(v25 + 5) = MEMORY[0x277D84F90];
  *(v25 + 6) = 0;
  *(v25 + 7) = 0xE000000000000000;
  sub_251C703A4();
  v28 = *(v15 + 56);
  v135 = v21[12];
  v150 = v14;
  v138 = v15 + 56;
  v136 = v28;
  v28(&v25[v135], 1, 1, v14);
  v29 = *(v12 + 56);
  v129 = v21[13];
  v29(&v25[v129], 1, 1, v11);
  v30 = &v25[v21[14]];
  v153 = v12 + 56;
  v151 = v29;
  v29(v30, 1, 1, v11);
  v149 = [v26 medication];
  v148 = [v26 earliestDosageDate];
  v31 = [v26 dosages];
  if (v31)
  {
    v32 = v31;
    sub_251A8223C(0, &qword_27F47A3D0, 0x277CCD648);
    v134 = sub_251C71154();
  }

  else
  {
    v134 = 0;
  }

  v133 = [v26 status];
  *v18 = 0;
  v18[1] = 0xE000000000000000;
  v18[2] = v27;
  v18[3] = 0;
  v18[4] = 0xE000000000000000;
  v18[5] = v27;
  v33 = v150;
  sub_251C703A4();
  v34 = *(v33 + 36);
  v35 = v151;
  v151(v18 + v34, 1, 1, v11);
  v36 = *(v33 + 40);
  v35(v18 + v36, 1, 1, v11);
  v37 = v152;
  v38 = v154;
  sub_251AF0ACC(v149, 1, v152);
  sub_251B393FC(v18 + v34, qword_2813E6D28, type metadata accessor for PBHKConcept);
  sub_251B3B750(v37, v18 + v34, type metadata accessor for PBHKConcept);
  v39 = (v35)(v18 + v34, 0, 1, v11);
  v140 = v11;
  v141 = v26;
  v40 = v148;
  if (v148)
  {
    v41 = *v38;
    v42 = v142;
    v43 = v143;
    v44 = v144;
    (*(v143 + 16))(v142, v41 + OBJC_IVAR____TtC19HealthRecordsDaemon27ClinicalSharingQueryContext_gregorianCalendar, v144);
    v45 = v40;
    v46 = sub_251C70114();
    (*(v43 + 8))(v42, v44);
    v47 = [v45 adjustedDateForCalendar_];

    v26 = v141;
    v48 = v145;
    sub_251C6FFE4();

    v49 = *(v41 + OBJC_IVAR____TtC19HealthRecordsDaemon27ClinicalSharingQueryContext_isoDateFormatter);
    v50 = sub_251C6FF94();
    v51 = [v49 stringFromDate_];

    v52 = sub_251C70F14();
    v54 = v53;

    v55 = v48;
    v11 = v140;
    v39 = (*(v146 + 8))(v55, v147);
    *v18 = v52;
    v18[1] = v54;
  }

  v56 = v134;
  if (v134)
  {
    MEMORY[0x28223BE20](v39);
    *(&v128 - 2) = v154;
    sub_251C4FAB4(sub_251B3B7D0, (&v128 - 4), v56);
    v18[2] = v57;
  }

  if (v133)
  {
    v58 = v133;
    v59 = v152;
    sub_251AF0ACC(v58, 1, v152);

    sub_251B393FC(v18 + v36, qword_2813E6D28, type metadata accessor for PBHKConcept);
    sub_251B3B750(v59, v18 + v36, type metadata accessor for PBHKConcept);
    v151(v18 + v36, 0, 1, v11);
  }

  else
  {
  }

  v60 = v137;
  sub_251B3B750(v18, v137, type metadata accessor for PBGeneralMedication);
  v61 = v135;
  sub_251B393FC(&v25[v135], qword_2813E52A0, type metadata accessor for PBGeneralMedication);
  sub_251B3B750(v60, &v25[v61], type metadata accessor for PBGeneralMedication);
  v136(&v25[v61], 0, 1, v150);
  v62 = [v26 endedDate];
  v63 = v139;
  v64 = v154;
  if (v62)
  {
    v65 = v62;
    v66 = *v154;
    v67 = v142;
    v68 = v143;
    v69 = v144;
    (*(v143 + 16))(v142, *v154 + OBJC_IVAR____TtC19HealthRecordsDaemon27ClinicalSharingQueryContext_gregorianCalendar, v144);
    v70 = sub_251C70114();
    v71 = v67;
    v26 = v141;
    (*(v68 + 8))(v71, v69);
    v72 = [v65 adjustedDateForCalendar_];

    v73 = v145;
    sub_251C6FFE4();

    v74 = *(v66 + OBJC_IVAR____TtC19HealthRecordsDaemon27ClinicalSharingQueryContext_isoDateFormatter);
    v75 = sub_251C6FF94();
    v76 = [v74 stringFromDate_];

    v77 = sub_251C70F14();
    v79 = v78;

    (*(v146 + 8))(v73, v147);
    *v25 = v77;
    *(v25 + 1) = v79;
  }

  result = [v26 numberOfFills];
  if (result < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_29;
  }

  if (result > 0x7FFFFFFF)
  {
LABEL_29:
    __break(1u);
    return result;
  }

  *(v25 + 4) = result;
  v81 = [v26 prescriber];
  if (v81)
  {
    v82 = v81;
    v83 = sub_251C70F14();
    v85 = v84;

    *(v25 + 3) = v83;
    *(v25 + 4) = v85;
  }

  v86 = [v26 reason];
  if (v86)
  {
    v87 = v86;
    sub_251A8223C(0, &qword_27F479F70, 0x277CCD1B0);
    v88 = sub_251C71154();

    MEMORY[0x28223BE20](v89);
    *(&v128 - 2) = v64;
    sub_251C4FA0C(sub_251B18000, (&v128 - 4), v88);
    v91 = v90;

    *(v25 + 5) = v91;
  }

  v92 = [v26 reasonEnded];
  if (v92)
  {
    v93 = v152;
    v94 = v92;
    sub_251AF0ACC(v92, 1, v152);

    v95 = v129;
    sub_251B393FC(&v25[v129], qword_2813E6D28, type metadata accessor for PBHKConcept);
    sub_251B3B750(v93, &v25[v95], type metadata accessor for PBHKConcept);
    v151(&v25[v95], 0, 1, v140);
  }

  v96 = [v26 writtenDate];
  if (v96)
  {
    v97 = v96;
    v98 = *v64;
    v100 = v142;
    v99 = v143;
    v101 = v144;
    (*(v143 + 16))(v142, *v64 + OBJC_IVAR____TtC19HealthRecordsDaemon27ClinicalSharingQueryContext_gregorianCalendar, v144);
    v102 = sub_251C70114();
    v103 = v100;
    v26 = v141;
    (*(v99 + 8))(v103, v101);
    v104 = [v97 adjustedDateForCalendar_];

    v105 = v145;
    sub_251C6FFE4();

    v106 = *(v98 + OBJC_IVAR____TtC19HealthRecordsDaemon27ClinicalSharingQueryContext_isoDateFormatter);
    v107 = sub_251C6FF94();
    v108 = [v106 stringFromDate_];

    v109 = sub_251C70F14();
    v111 = v110;

    (*(v146 + 8))(v105, v147);
    *(v25 + 6) = v109;
    *(v25 + 7) = v111;
  }

  sub_251AF11B4(v26, v131, v63);
  v112 = v130;
  sub_251B394D8(v25, v130, type metadata accessor for PBHKMedicationOrder);
  v113 = *(type metadata accessor for PBClinicalRecord(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v115 = *(v63 + v113);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for PBClinicalRecord._StorageClass(0);
    swift_allocObject();
    v116 = sub_251BB2A8C(v115);

    *(v63 + v113) = v116;
    v115 = v116;
  }

  v117 = v112;
  v118 = v132;
  sub_251B3B750(v117, v132, type metadata accessor for PBHKMedicationOrder);
  v119 = type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v119 - 8) + 56))(v118, 0, 1, v119);
  v120 = OBJC_IVAR____TtCV19HealthRecordsDaemon16PBClinicalRecordP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__medicalRecord;
  swift_beginAccess();
  sub_251B3B5EC(v118, &v115[v120]);
  swift_endAccess();
  v121 = sub_251C6CC54();
  v123 = v122;
  v124 = swift_isUniquelyReferenced_nonNull_native();
  v125 = *(v63 + v113);
  if ((v124 & 1) == 0)
  {
    type metadata accessor for PBClinicalRecord._StorageClass(0);
    swift_allocObject();
    v126 = sub_251BB2A8C(v125);

    *(v63 + v113) = v126;
    v125 = v126;
  }

  v127 = (v125 + OBJC_IVAR____TtCV19HealthRecordsDaemon16PBClinicalRecordP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__iosDerivedDisplayName);
  swift_beginAccess();
  *v127 = v121;
  v127[1] = v123;

  return sub_251B3B66C(v25, type metadata accessor for PBHKMedicationOrder);
}

uint64_t sub_251B3A3C4@<X0>(void **a1@<X0>, void *a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v121 = a3;
  v136 = a2;
  v123 = a4;
  sub_251B3B6FC(0, qword_2813E5D48, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord);
  MEMORY[0x28223BE20](v5 - 8);
  v122 = &v113 - v6;
  v7 = sub_251C70014();
  v132 = *(v7 - 8);
  v133 = v7;
  MEMORY[0x28223BE20](v7);
  v131 = &v113 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_251C701E4();
  v129 = *(v9 - 8);
  v130 = v9;
  MEMORY[0x28223BE20](v9);
  v128 = &v113 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v127 = type metadata accessor for PBHKConcept(0);
  v135 = *(v127 - 8);
  MEMORY[0x28223BE20](v127);
  v126 = &v113 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for PBGeneralMedication(0);
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = (&v113 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v14);
  v118 = &v113 - v17;
  v18 = type metadata accessor for PBHKMedicationDispenseRecord(0);
  v19 = (v18 - 8);
  v20 = MEMORY[0x28223BE20](v18);
  v120 = &v113 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v23 = (&v113 - v22);
  v24 = *a1;
  *v23 = 0;
  v23[1] = 0xE000000000000000;
  v23[2] = 0;
  v23[3] = 0xE000000000000000;
  sub_251C703A4();
  v25 = *(v13 + 56);
  v116 = v19[9];
  v119 = v13 + 56;
  v117 = v25;
  v25(v23 + v116, 1, 1, v12);
  v26 = v19[10];
  v27 = type metadata accessor for PBQuantity(0);
  v28 = *(*(v27 - 8) + 56);
  v28(v23 + v26, 1, 1, v27);
  v28(v23 + v19[11], 1, 1, v27);
  v134 = [v24 medication];
  v125 = [v24 earliestDosageDate];
  v137 = v24;
  v29 = [v24 dosages];
  if (v29)
  {
    v30 = v29;
    sub_251A8223C(0, &qword_27F47A3D0, 0x277CCD648);
    v124 = sub_251C71154();
  }

  else
  {
    v124 = 0;
  }

  v31 = [v137 status];
  v32 = MEMORY[0x277D84F90];
  *v16 = 0;
  v16[1] = 0xE000000000000000;
  v16[2] = v32;
  v16[3] = 0;
  v16[4] = 0xE000000000000000;
  v16[5] = v32;
  sub_251C703A4();
  v33 = *(v12 + 36);
  v35 = v135 + 56;
  v34 = *(v135 + 56);
  v36 = v127;
  v34(v16 + v33, 1, 1, v127);
  v115 = *(v12 + 40);
  v34(v16 + v115, 1, 1, v36);
  v37 = v126;
  v38 = v136;
  sub_251AF0ACC(v134, 1, v126);
  sub_251B393FC(v16 + v33, qword_2813E6D28, type metadata accessor for PBHKConcept);
  sub_251B3B750(v37, v16 + v33, type metadata accessor for PBHKConcept);
  v39 = (v34)(v16 + v33, 0, 1, v36);
  v40 = v125;
  if (v125)
  {
    v41 = *v136;
    v135 = v35;
    v42 = v128;
    v43 = v129;
    v44 = *(v129 + 16);
    v114 = v12;
    v45 = v130;
    v44(v128, v41 + OBJC_IVAR____TtC19HealthRecordsDaemon27ClinicalSharingQueryContext_gregorianCalendar, v130);
    v46 = v40;
    v47 = sub_251C70114();
    (*(v43 + 8))(v42, v45);
    v48 = v31;
    v49 = [v46 adjustedDateForCalendar_];

    v50 = v131;
    sub_251C6FFE4();

    v51 = *(v41 + OBJC_IVAR____TtC19HealthRecordsDaemon27ClinicalSharingQueryContext_isoDateFormatter);
    v52 = sub_251C6FF94();
    v53 = [v51 stringFromDate_];

    v54 = sub_251C70F14();
    v56 = v55;

    v38 = v136;
    v57 = v50;
    v12 = v114;
    v39 = (*(v132 + 8))(v57, v133);
    *v16 = v54;
    v16[1] = v56;
    v40 = v125;
    v31 = v48;
  }

  v58 = v124;
  if (v124)
  {
    MEMORY[0x28223BE20](v39);
    *(&v113 - 2) = v38;
    sub_251C4FAB4(sub_251B3B7D0, (&v113 - 4), v58);
    v16[2] = v59;
  }

  if (v31)
  {
    v60 = v31;
    v61 = v126;
    sub_251AF0ACC(v60, 1, v126);

    v62 = v115;
    sub_251B393FC(v16 + v115, qword_2813E6D28, type metadata accessor for PBHKConcept);
    sub_251B3B750(v61, v16 + v62, type metadata accessor for PBHKConcept);
    v34(v16 + v62, 0, 1, v127);
  }

  else
  {
  }

  v63 = v123;
  v64 = v118;
  sub_251B3B750(v16, v118, type metadata accessor for PBGeneralMedication);
  v65 = v116;
  sub_251B393FC(v23 + v116, qword_2813E52A0, type metadata accessor for PBGeneralMedication);
  sub_251B3B750(v64, v23 + v65, type metadata accessor for PBGeneralMedication);
  v117(v23 + v65, 0, 1, v12);
  v66 = [v137 handOverDate];
  if (v66)
  {
    v67 = v66;
    v68 = *v136;
    v70 = v128;
    v69 = v129;
    v71 = v130;
    (*(v129 + 16))(v128, *v136 + OBJC_IVAR____TtC19HealthRecordsDaemon27ClinicalSharingQueryContext_gregorianCalendar, v130);
    v72 = sub_251C70114();
    (*(v69 + 8))(v70, v71);
    v73 = [v67 adjustedDateForCalendar_];

    v74 = v131;
    sub_251C6FFE4();

    v75 = *(v68 + OBJC_IVAR____TtC19HealthRecordsDaemon27ClinicalSharingQueryContext_isoDateFormatter);
    v76 = sub_251C6FF94();
    v77 = [v75 stringFromDate_];

    v78 = sub_251C70F14();
    v80 = v79;

    (*(v132 + 8))(v74, v133);
    *v23 = v78;
    v23[1] = v80;
  }

  v81 = [v137 preparationDate];
  if (v81)
  {
    v82 = v81;
    v83 = *v136;
    v85 = v128;
    v84 = v129;
    v86 = v130;
    (*(v129 + 16))(v128, *v136 + OBJC_IVAR____TtC19HealthRecordsDaemon27ClinicalSharingQueryContext_gregorianCalendar, v130);
    v87 = sub_251C70114();
    (*(v84 + 8))(v85, v86);
    v88 = [v82 adjustedDateForCalendar_];

    v89 = v131;
    sub_251C6FFE4();

    v90 = *(v83 + OBJC_IVAR____TtC19HealthRecordsDaemon27ClinicalSharingQueryContext_isoDateFormatter);
    v91 = sub_251C6FF94();
    v92 = [v90 stringFromDate_];

    v93 = sub_251C70F14();
    v95 = v94;

    (*(v132 + 8))(v89, v133);
    v23[2] = v93;
    v23[3] = v95;
  }

  sub_251AF11B4(v137, v121, v63);
  v96 = v120;
  sub_251B394D8(v23, v120, type metadata accessor for PBHKMedicationDispenseRecord);
  v97 = *(type metadata accessor for PBClinicalRecord(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v99 = *(v63 + v97);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for PBClinicalRecord._StorageClass(0);
    swift_allocObject();
    v100 = sub_251BB2A8C(v99);

    *(v63 + v97) = v100;
    v99 = v100;
  }

  v101 = v96;
  v102 = v122;
  sub_251B3B750(v101, v122, type metadata accessor for PBHKMedicationDispenseRecord);
  v103 = type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v103 - 8) + 56))(v102, 0, 1, v103);
  v104 = OBJC_IVAR____TtCV19HealthRecordsDaemon16PBClinicalRecordP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__medicalRecord;
  swift_beginAccess();
  sub_251B3B5EC(v102, &v99[v104]);
  swift_endAccess();
  v105 = sub_251C6CC54();
  v107 = v106;
  v108 = swift_isUniquelyReferenced_nonNull_native();
  v109 = *(v63 + v97);
  if ((v108 & 1) == 0)
  {
    type metadata accessor for PBClinicalRecord._StorageClass(0);
    swift_allocObject();
    v110 = sub_251BB2A8C(v109);

    *(v63 + v97) = v110;
    v109 = v110;
  }

  v111 = (v109 + OBJC_IVAR____TtCV19HealthRecordsDaemon16PBClinicalRecordP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__iosDerivedDisplayName);
  swift_beginAccess();
  *v111 = v105;
  v111[1] = v107;

  return sub_251B3B66C(v23, type metadata accessor for PBHKMedicationDispenseRecord);
}

id sub_251B3B08C@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v5 = sub_251C701E4();
  v55 = *(v5 - 8);
  v56 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251B3B6FC(0, &qword_2813E7500, MEMORY[0x277CC9578]);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v49 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v47 - v11;
  v13 = type metadata accessor for PBDateRange(0);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v52 = &v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a2 = 0;
  *(a2 + 1) = 0xE000000000000000;
  v16 = type metadata accessor for PBMedicationDosage(0);
  sub_251C703A4();
  v17 = *(v14 + 56);
  v50 = *(v16 + 24);
  v51 = v17;
  v53 = v13;
  v17(&a2[v50], 1, 1, v13);
  v18 = [a1 instruction];
  if (v18)
  {
    v19 = v18;
    v20 = sub_251C70F14();
    v22 = v21;

    *a2 = v20;
    *(a2 + 1) = v22;
  }

  result = [a1 timingPeriod];
  if (result)
  {
    v24 = result;
    v25 = [result startDate];
    v54 = v12;
    v48 = v2;
    if (v25)
    {
      v26 = v25;
      v27 = v55;
      v28 = v56;
      (*(v55 + 16))(v7, *v2 + OBJC_IVAR____TtC19HealthRecordsDaemon27ClinicalSharingQueryContext_gregorianCalendar, v56);
      v29 = sub_251C70114();
      v30 = v54;
      (*(v27 + 8))(v7, v28);
      v31 = [v26 adjustedDateForCalendar_];

      sub_251C6FFE4();
      v32 = sub_251C70014();
      (*(*(v32 - 8) + 56))(v30, 0, 1, v32);
    }

    else
    {
      v33 = sub_251C70014();
      (*(*(v33 - 8) + 56))(v12, 1, 1, v33);
    }

    v34 = [v24 endDate];
    if (v34)
    {
      v35 = v34;
      v37 = v55;
      v36 = v56;
      (*(v55 + 16))(v7, *v48 + OBJC_IVAR____TtC19HealthRecordsDaemon27ClinicalSharingQueryContext_gregorianCalendar, v56);
      v38 = sub_251C70114();
      (*(v37 + 8))(v7, v36);
      v39 = [v35 &selRef_quantityRange + 6];

      v40 = v49;
      sub_251C6FFE4();

      v41 = 0;
    }

    else
    {
      v41 = 1;
      v40 = v49;
    }

    v42 = sub_251C70014();
    (*(*(v42 - 8) + 56))(v40, v41, 1, v42);
    v43 = v52;
    v44 = v54;
    sub_251C15BE4();

    v45 = MEMORY[0x277CC9578];
    sub_251B393FC(v40, &qword_2813E7500, MEMORY[0x277CC9578]);
    sub_251B393FC(v44, &qword_2813E7500, v45);
    v46 = v50;
    sub_251B393FC(&a2[v50], qword_2813E6EE8, type metadata accessor for PBDateRange);
    sub_251B3B750(v43, &a2[v46], type metadata accessor for PBDateRange);
    return v51(&a2[v46], 0, 1, v53);
  }

  return result;
}

uint64_t sub_251B3B5EC(uint64_t a1, uint64_t a2)
{
  sub_251B3B6FC(0, qword_2813E5D48, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_251B3B66C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_251B3B6FC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_251C71574();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_251B3B750(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_251B3B7E8()
{
  v1 = v0;
  sub_251B3C340(0);
  inited = swift_initStackObject();
  *(inited + 32) = 0x746E6569746170;
  *(inited + 16) = xmmword_251C74800;
  *(inited + 40) = 0xE700000000000000;
  v17 = *v1;
  *(inited + 48) = v17;
  sub_251B3C398(&v17, &v16);
  v3 = sub_251C4BEF8(inited);
  swift_setDeallocating();
  sub_251B3C3F4(inited + 32);
  v16 = v3;
  v4 = *(v1 + 5);
  if (v4)
  {
    v5 = *(v1 + 4);

    sub_251AC7024(v5, v4, 1734431845, 0xE400000000000000);
  }

  v6 = *(v1 + 3);
  if (v6)
  {
    v7 = *(v1 + 2);

    sub_251AC7024(v7, v6, 0x656372756F736572, 0xEA00000000004449);
  }

  v8 = *(v1 + 9);
  if (v8)
  {
    v9 = *(v1 + 8);

    sub_251AC7024(v9, v8, 0x44494C44746F6F72, 0xE800000000000000);
  }

  v10 = *(v1 + 7);
  if (v10)
  {
    v11 = *(v1 + 6);
    v12 = v10;
  }

  else
  {
    v12 = 0xE100000000000000;
    v11 = 45;
  }

  v13 = v16;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_251ACCFD8(v11, v12, 0xD000000000000015, 0x8000000251C89B90, isUniquelyReferenced_nonNull_native);
  return v13;
}

uint64_t sub_251B3B994()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_251B3B9C4()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_251B3B9F4(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t sub_251B3BA2C(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t sub_251B3BA88(_OWORD *a1, __int128 *a2)
{
  v2 = a1[5];
  v13[4] = a1[4];
  v13[5] = v2;
  v3 = a1[6];
  v4 = a1[1];
  v13[0] = *a1;
  v13[1] = v4;
  v5 = a1[3];
  v13[2] = a1[2];
  v13[3] = v5;
  v6 = *a2;
  v7 = a2[1];
  v13[6] = v3;
  v14[0] = v6;
  v8 = a2[2];
  v9 = a2[3];
  v10 = a2[6];
  v14[5] = a2[5];
  v14[6] = v10;
  v11 = a2[4];
  v14[3] = v9;
  v14[4] = v11;
  v14[1] = v7;
  v14[2] = v8;
  return sub_251B3BCD4(v13, v14) & 1;
}

unint64_t sub_251B3BAF0()
{
  v1 = v0;
  sub_251B3C340(0);
  inited = swift_initStackObject();
  *(inited + 32) = 0x746E6569746170;
  *(inited + 16) = xmmword_251C74800;
  *(inited + 40) = 0xE700000000000000;
  v15 = *v1;
  *(inited + 48) = v15;
  sub_251B3C398(&v15, &v14);
  v3 = sub_251C4BEF8(inited);
  swift_setDeallocating();
  sub_251B3C3F4(inited + 32);
  v14 = v3;
  v4 = *(v1 + 5);
  if (v4)
  {
    v5 = *(v1 + 4);

    sub_251AC7024(v5, v4, 1734431845, 0xE400000000000000);
  }

  v6 = *(v1 + 3);
  if (v6)
  {
    v7 = *(v1 + 2);

    sub_251AC7024(v7, v6, 0x656372756F736572, 0xEA00000000004449);
  }

  v8 = *(v1 + 7);
  if (v8)
  {
    v9 = *(v1 + 6);
    v10 = v8;
  }

  else
  {
    v10 = 0xE100000000000000;
    v9 = 45;
  }

  v11 = v14;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_251ACCFD8(v9, v10, 0xD000000000000015, 0x8000000251C89B90, isUniquelyReferenced_nonNull_native);
  return v11;
}

uint64_t sub_251B3BC78(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[3];
  v9[2] = a1[2];
  v9[3] = v2;
  v3 = a1[5];
  v9[4] = a1[4];
  v9[5] = v3;
  v4 = a1[1];
  v9[0] = *a1;
  v9[1] = v4;
  v5 = a2[3];
  v10[2] = a2[2];
  v10[3] = v5;
  v6 = a2[5];
  v10[4] = a2[4];
  v10[5] = v6;
  v7 = a2[1];
  v10[0] = *a2;
  v10[1] = v7;
  return sub_251B3BE64(v9, v10) & 1;
}

uint64_t sub_251B3BCD4(uint64_t *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_251C719D4() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[3];
  v6 = a2[3];
  if (v5)
  {
    if (!v6)
    {
      return 0;
    }

    v7 = a1[2] == a2[2] && v5 == v6;
    if (!v7 && (sub_251C719D4() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  v8 = a1[5];
  v9 = a2[5];
  if (v8)
  {
    if (!v9 || (a1[4] != a2[4] || v8 != v9) && (sub_251C719D4() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v9)
  {
    return 0;
  }

  v10 = a1[7];
  v11 = a2[7];
  if (v10)
  {
    if (!v11 || (a1[6] != a2[6] || v10 != v11) && (sub_251C719D4() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v11)
  {
    return 0;
  }

  v12 = a1[9];
  v13 = a2[9];
  if (v12)
  {
    if (!v13 || (a1[8] != a2[8] || v12 != v13) && (sub_251C719D4() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v13)
  {
    return 0;
  }

  sub_251B1B1EC();
  if (sub_251C71534() & 1) != 0 && (sub_251C71534() & 1) != 0 && (sub_251C71534())
  {
    return sub_251C71534() & 1;
  }

  return 0;
}

uint64_t sub_251B3BE64(uint64_t *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_251C719D4() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[3];
  v6 = a2[3];
  if (v5)
  {
    if (!v6)
    {
      return 0;
    }

    v7 = a1[2] == a2[2] && v5 == v6;
    if (!v7 && (sub_251C719D4() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  v8 = a1[5];
  v9 = a2[5];
  if (v8)
  {
    if (!v9 || (a1[4] != a2[4] || v8 != v9) && (sub_251C719D4() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v9)
  {
    return 0;
  }

  v10 = a1[7];
  v11 = a2[7];
  if (v10)
  {
    if (!v11 || (a1[6] != a2[6] || v10 != v11) && (sub_251C719D4() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v11)
  {
    return 0;
  }

  sub_251B1B1EC();
  if (sub_251C71534() & 1) != 0 && (sub_251C71534() & 1) != 0 && (sub_251C71534())
  {
    return sub_251C71534() & 1;
  }

  return 0;
}

uint64_t sub_251B3BFB8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  v9 = sub_251BC0450(*MEMORY[0x277D12300]);
  if (v4)
  {
  }

  else
  {
    v10 = v9;
    v11 = sub_251A828A0(0xD000000000000015, 0x8000000251C8BA70);
    v12 = sub_251A828A0(0xD000000000000017, 0x8000000251C8BA90);
    v13 = sub_251A828A0(0xD000000000000017, 0x8000000251C8BAB0);
    v35 = sub_251A828A0(0xD000000000000017, 0x8000000251C8BAD0);

    *&v19 = a2;
    *(&v19 + 1) = a3;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    *&v24 = v11;
    *(&v24 + 1) = v12;
    *&v25 = v13;
    *(&v25 + 1) = v35;
    v26[0] = a2;
    v26[1] = a3;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = v11;
    v32 = v12;
    v33 = v13;
    v34 = v35;
    sub_251B293EC(&v19, v18);
    result = sub_251B29448(v26);
    v15 = v24;
    a4[4] = v23;
    a4[5] = v15;
    a4[6] = v25;
    v16 = v20;
    *a4 = v19;
    a4[1] = v16;
    v17 = v22;
    a4[2] = v21;
    a4[3] = v17;
  }

  return result;
}

__n128 __swift_memcpy96_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t sub_251B3C1B8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_251B3C200(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy112_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = result;
  *(a1 + 64) = v5;
  return result;
}

uint64_t sub_251B3C28C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 112))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_251B3C2D4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_251B3C340(uint64_t a1)
{
  if (!qword_27F47A3D8)
  {
    sub_251AF2E30();
    v1 = sub_251C719B4();
    if (!v2)
    {
      atomic_store(v1, &qword_27F47A3D8);
    }
  }
}

uint64_t sub_251B3C3F4(uint64_t a1)
{
  sub_251AF2E30();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_251B3C65C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ClinicalSharingServer();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_251B3C710(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, void *))
{
  if (a2)
  {
    v4 = a1;
    swift_getErrorValue();
    v5 = sub_251BC0124(v6, v7);
    a1 = v4;
  }

  else
  {
    v5 = 0;
  }

  a3(a1, v5);
}

void sub_251B3C9C0(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, void *))
{
  if (a2)
  {
    v4 = a1;
    swift_getErrorValue();
    v5 = sub_251BC0124(v6, v7);
    a1 = v4;
  }

  else
  {
    v5 = 0;
  }

  a3(a1, v5);
}

void sub_251B3CB74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = MEMORY[0x277CC9260];
  sub_251B3F274(0, &qword_2813E7520, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v14 - v8;
  sub_251B3F2D8(a1, &v14 - v8, &qword_2813E7520, v6);
  v10 = sub_251C6FE64();
  v11 = *(v10 - 8);
  v12 = 0;
  if ((*(v11 + 48))(v9, 1, v10) != 1)
  {
    v12 = sub_251C6FDD4();
    (*(v11 + 8))(v9, v10);
  }

  if (a2)
  {
    v13 = sub_251C6FD74();
  }

  else
  {
    v13 = 0;
  }

  (*(a3 + 16))(a3, v12, v13);
}

uint64_t sub_251B3CCF4(uint64_t a1, uint64_t a2)
{
  v47 = a1;
  v48 = a2;
  sub_251AE5884(0);
  v43 = v3;
  v46 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v44 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251B3DF80(0);
  v45 = v5;
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_251C70014();
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ClinicalSharingDailyAnalyticsSubmissionTask(0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2813E26F8 != -1)
  {
    swift_once();
  }

  v15 = sub_251C70764();
  __swift_project_value_buffer(v15, qword_2813E8130);
  v16 = v2;
  v17 = sub_251C70744();
  v18 = sub_251C713F4();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v40 = v18;
    v20 = v19;
    v39 = swift_slowAlloc();
    v49[0] = v39;
    *v20 = 136315138;
    v21 = *&v16[OBJC_IVAR____TtC19HealthRecordsDaemon21ClinicalSharingServer_client];
    v42 = v6;
    v22 = v21;
    v23 = [v21 description];
    v24 = sub_251C70F14();
    v41 = v8;
    v26 = v25;

    v6 = v42;
    v27 = sub_251B10780(v24, v26, v49);
    v8 = v41;

    *(v20 + 4) = v27;
    _os_log_impl(&dword_251A6C000, v17, v40, "Submitting clinical sharing daily analytics on behalf of %s", v20, 0xCu);
    v28 = v39;
    __swift_destroy_boxed_opaque_existential_1(v39);
    MEMORY[0x25308E2B0](v28, -1, -1);
    MEMORY[0x25308E2B0](v20, -1, -1);
  }

  v29 = __swift_project_boxed_opaque_existential_1(&v16[OBJC_IVAR____TtC19HealthRecordsDaemon21ClinicalSharingServer_contextProvider], *&v16[OBJC_IVAR____TtC19HealthRecordsDaemon21ClinicalSharingServer_contextProvider + 24]);
  sub_251A823B4(*v29 + 16, v49);
  sub_251C70004();
  sub_251B41060(v49, v11, v14);
  v49[0] = sub_251B4131C();
  sub_251B1853C(0);
  v30 = MEMORY[0x277CBCD90];
  sub_251B3E014(&qword_2813E2200, sub_251B1853C, MEMORY[0x277CBCD90]);
  v31 = v44;
  sub_251C70AE4();

  sub_251B3E014(&qword_2813E2668, sub_251AE5884, MEMORY[0x277CBCC08]);
  v32 = v43;
  v33 = sub_251C70A94();
  (*(v46 + 8))(v31, v32);
  v49[0] = v33;
  sub_251B28D44(0);
  sub_251B3E014(&qword_2813E20D8, sub_251B28D44, v30);
  sub_251C70AC4();

  v34 = swift_allocObject();
  v35 = v48;
  *(v34 + 16) = v47;
  *(v34 + 24) = v35;
  sub_251B3E014(&qword_2813E26A0, sub_251B3DF80, MEMORY[0x277CBCB68]);

  v36 = v45;
  sub_251C70AF4();

  (*(v6 + 8))(v8, v36);
  swift_beginAccess();
  sub_251C70984();
  swift_endAccess();

  return sub_251B3E15C(v14, type metadata accessor for ClinicalSharingDailyAnalyticsSubmissionTask);
}

uint64_t sub_251B3D360(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v90 = a6;
  v91 = a3;
  v87 = a5;
  v78 = a1;
  sub_251AE5884(0);
  v84 = *(v9 - 8);
  v85 = v9;
  MEMORY[0x28223BE20](v9);
  v83 = &v73 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251B3DF80(0);
  v88 = *(v11 - 8);
  v89 = v11;
  MEMORY[0x28223BE20](v11);
  v86 = &v73 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_251C70074();
  v79 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v77 = &v73 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_251C70014();
  v81 = *(v15 - 8);
  v82 = v15;
  MEMORY[0x28223BE20](v15);
  v80 = &v73 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for ClinicalSharingOnboardingSubmissionTask(0);
  MEMORY[0x28223BE20](v17);
  v19 = &v73 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2813E26F8 != -1)
  {
    swift_once();
  }

  v20 = sub_251C70764();
  __swift_project_value_buffer(v20, qword_2813E8130);
  v21 = v6;

  v22 = sub_251C70744();
  v23 = sub_251C713F4();

  v24 = os_log_type_enabled(v22, v23);
  v92 = v21;
  if (v24)
  {
    v25 = swift_slowAlloc();
    v75 = swift_slowAlloc();
    v95[0] = v75;
    *v25 = 136315650;
    v26 = *&v21[OBJC_IVAR____TtC19HealthRecordsDaemon21ClinicalSharingServer_client];
    v27 = [v26 description];
    v74 = v23;
    v28 = a2;
    v29 = v27;
    v30 = sub_251C70F14();
    v73 = v22;
    v31 = v17;
    v32 = a4;
    v33 = v30;
    v76 = v13;
    v35 = v34;

    a2 = v28;
    v36 = v33;
    a4 = v32;
    v17 = v31;
    v37 = v91;
    v38 = sub_251B10780(v36, v35, v95);
    v13 = v76;

    *(v25 + 4) = v38;
    *(v25 + 12) = 2080;
    v39 = v78;
    *(v25 + 14) = sub_251B10780(v78, a2, v95);
    *(v25 + 22) = 2080;
    v21 = v92;
    *(v25 + 24) = sub_251B10780(v37, a4, v95);
    v40 = v73;
    _os_log_impl(&dword_251A6C000, v73, v74, "Submitting clinical sharing onboarding analytics on behalf of %s: %s:%s", v25, 0x20u);
    v41 = v75;
    swift_arrayDestroy();
    MEMORY[0x25308E2B0](v41, -1, -1);
    MEMORY[0x25308E2B0](v25, -1, -1);
  }

  else
  {

    v39 = v78;
  }

  v42 = __swift_project_boxed_opaque_existential_1(&v21[OBJC_IVAR____TtC19HealthRecordsDaemon21ClinicalSharingServer_contextProvider], *&v21[OBJC_IVAR____TtC19HealthRecordsDaemon21ClinicalSharingServer_contextProvider + 24]);
  sub_251A823B4(*v42 + 16, v95);
  v43 = v80;
  sub_251C70004();
  sub_251A823B4(v95, v19);
  *(v19 + 5) = v39;
  *(v19 + 6) = a2;
  *(v19 + 7) = v91;
  *(v19 + 8) = a4;
  v45 = v81;
  v44 = v82;
  (*(v81 + 16))(&v19[v17[7]], v43, v82);

  v19[v17[8]] = HKImproveHealthAndActivityAnalyticsAllowed();
  v93 = v17;
  sub_251B3E05C();
  v93 = sub_251C70F74();
  v94 = v46;
  MEMORY[0x25308CDA0](45, 0xE100000000000000);
  v47 = v77;
  sub_251C70064();
  v48 = sub_251C70024();
  v50 = v49;
  (*(v79 + 8))(v47, v13);
  v51 = sub_251AE3EAC(8, v48, v50);
  v53 = v52;
  v55 = v54;
  v57 = v56;

  v58 = MEMORY[0x25308CD40](v51, v53, v55, v57);
  v60 = v59;

  MEMORY[0x25308CDA0](v58, v60);

  MEMORY[0x25308CDA0](58, 0xE100000000000000);
  v61 = v93;
  v62 = v94;
  (*(v45 + 8))(v43, v44);
  __swift_destroy_boxed_opaque_existential_1(v95);
  v63 = &v19[v17[9]];
  *v63 = v61;
  v63[1] = v62;
  v95[0] = sub_251BE9E2C();
  sub_251B1853C(0);
  v64 = MEMORY[0x277CBCD90];
  sub_251B3E014(&qword_2813E2200, sub_251B1853C, MEMORY[0x277CBCD90]);
  v65 = v83;
  sub_251C70AE4();

  sub_251B3E014(&qword_2813E2668, sub_251AE5884, MEMORY[0x277CBCC08]);
  v66 = v85;
  v67 = sub_251C70A94();
  (*(v84 + 8))(v65, v66);
  v95[0] = v67;
  sub_251B28D44(0);
  sub_251B3E014(&qword_2813E20D8, sub_251B28D44, v64);
  v68 = v86;
  sub_251C70AC4();

  v69 = swift_allocObject();
  v70 = v90;
  *(v69 + 16) = v87;
  *(v69 + 24) = v70;
  sub_251B3E014(&qword_2813E26A0, sub_251B3DF80, MEMORY[0x277CBCB68]);

  v71 = v89;
  sub_251C70AF4();

  (*(v88 + 8))(v68, v71);
  swift_beginAccess();
  sub_251C70984();
  swift_endAccess();

  return sub_251B3E15C(v19, type metadata accessor for ClinicalSharingOnboardingSubmissionTask);
}

void sub_251B3DC2C(void **a1, void (*a2)(uint64_t, void *), uint64_t a3, const char *a4)
{
  v6 = *a1;
  if (qword_2813E26F8 != -1)
  {
    swift_once();
  }

  v7 = sub_251C70764();
  __swift_project_value_buffer(v7, qword_2813E8130);
  v8 = v6;
  v9 = sub_251C70744();
  v10 = sub_251C713F4();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v21 = v12;
    *v11 = 136315138;
    v13 = v6;
    sub_251B3E0C8(0);
    v14 = sub_251C70F74();
    v16 = sub_251B10780(v14, v15, &v21);

    *(v11 + 4) = v16;
    _os_log_impl(&dword_251A6C000, v9, v10, a4, v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v12);
    MEMORY[0x25308E2B0](v12, -1, -1);
    MEMORY[0x25308E2B0](v11, -1, -1);
  }

  if (v6)
  {
    v21 = v6;
    v17 = v6;
    sub_251AA98B0(0, &qword_2813E1C30, MEMORY[0x277D84948]);
    v18 = sub_251C719C4();
    if (v18)
    {
      v19 = v18;
    }

    else
    {
      v19 = swift_allocError();
      *v20 = v6;
    }

    a2(0, v19);
  }

  else
  {
    a2(1, 0);
  }
}

void sub_251B3DF80(uint64_t a1)
{
  if (!qword_2813E2698)
  {
    sub_251B28D44(255);
    sub_251B3E014(&qword_2813E20D8, sub_251B28D44, MEMORY[0x277CBCD90]);
    v1 = sub_251C707B4();
    if (!v2)
    {
      atomic_store(v1, &qword_2813E2698);
    }
  }
}

uint64_t sub_251B3E014(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_251B3E05C()
{
  result = qword_27F47A460;
  if (!qword_27F47A460)
  {
    type metadata accessor for ClinicalSharingOnboardingSubmissionTask(255);
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_27F47A460);
  }

  return result;
}

void sub_251B3E0C8(uint64_t a1)
{
  if (!qword_2813E2218)
  {
    sub_251AA98B0(255, &qword_2813E1C30, MEMORY[0x277D84948]);
    v1 = sub_251C70934();
    if (!v2)
    {
      atomic_store(v1, &qword_2813E2218);
    }
  }
}

uint64_t sub_251B3E15C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_251B3E1BC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v45 = a2;
  v9 = sub_251C70014();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x277CC9578];
  sub_251B3F274(0, &qword_2813E7500, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v42 - v15;
  sub_251B3F2D8(a3, &v42 - v15, &qword_2813E7500, v13);
  if ((*(v10 + 48))(v16, 1, v9) == 1)
  {
    _Block_copy(a5);
    v17 = 0;
    v18 = 0xE000000000000000;
  }

  else
  {
    (*(v10 + 32))(v12, v16, v9);
    v46 = 0x2065746164202CLL;
    v47 = 0xE700000000000000;
    _Block_copy(a5);
    sub_251B3E014(&unk_27F47A470, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
    v19 = sub_251C719A4();
    MEMORY[0x25308CDA0](v19);

    v17 = v46;
    v18 = v47;
    (*(v10 + 8))(v12, v9);
  }

  if (qword_2813E26F8 != -1)
  {
    swift_once();
  }

  v20 = sub_251C70764();
  __swift_project_value_buffer(v20, qword_2813E8130);

  v21 = a4;
  v22 = sub_251C70744();
  v23 = sub_251C713F4();

  if (os_log_type_enabled(v22, v23))
  {
    v42 = v17;
    v44 = a3;
    v24 = a1;
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v46 = v26;
    *v25 = 136315906;
    v43 = v24;
    v27 = sub_251B24874();
    v29 = v28;
    sub_251B245C4(&unk_2863F3318);
    v30 = sub_251B10780(v27, v29, &v46);

    *(v25 + 4) = v30;
    *(v25 + 12) = 2080;
    if (v45 > 3)
    {
      switch(v45)
      {
        case 4:
          v31 = 0xE700000000000000;
          v32 = 0x676E6974736574;
          goto LABEL_22;
        case 5:
          v31 = 0xEE00646574616974;
          v32 = 0x696E692D72657375;
          goto LABEL_22;
        case 6:
          v31 = 0x8000000251C8A720;
          v32 = 0xD000000000000010;
          goto LABEL_22;
      }
    }

    else
    {
      switch(v45)
      {
        case 1:
          v31 = 0xED00006E6F697461;
          v32 = 0x7A69726F68747561;
          goto LABEL_22;
        case 2:
          v31 = 0xE800000000000000;
          v32 = 0x617461642D77656ELL;
          goto LABEL_22;
        case 3:
          v31 = 0xEA0000000000646ELL;
          v32 = 0x756F72676B636162;
LABEL_22:
          v33 = sub_251B10780(v32, v31, &v46);

          *(v25 + 14) = v33;
          *(v25 + 22) = 2080;
          v34 = sub_251B10780(v42, v18, &v46);

          *(v25 + 24) = v34;
          *(v25 + 32) = 2080;
          v35 = *&v21[OBJC_IVAR____TtC19HealthRecordsDaemon21ClinicalSharingServer_client];
          v36 = [v35 description];
          v37 = sub_251C70F14();
          v39 = v38;

          v40 = sub_251B10780(v37, v39, &v46);

          *(v25 + 34) = v40;
          _os_log_impl(&dword_251A6C000, v22, v23, "Sharing health data with options %s, reason %s%s on behalf of %s", v25, 0x2Au);
          swift_arrayDestroy();
          MEMORY[0x25308E2B0](v26, -1, -1);
          MEMORY[0x25308E2B0](v25, -1, -1);

          a1 = v43;
          a3 = v44;
          goto LABEL_23;
      }
    }

    v31 = 0xE700000000000000;
    v32 = 0x6E776F6E6B6E75;
    goto LABEL_22;
  }

LABEL_23:
  v41 = *(*__swift_project_boxed_opaque_existential_1(&v21[OBJC_IVAR____TtC19HealthRecordsDaemon21ClinicalSharingServer_contextProvider], *&v21[OBJC_IVAR____TtC19HealthRecordsDaemon21ClinicalSharingServer_contextProvider + 24]) + 56);
  _Block_copy(a5);

  sub_251C5C9CC(a1, v45, a3, v41, a5);
  _Block_release(a5);

  _Block_release(a5);
}

uint64_t sub_251B3E790(uint64_t a1, void *a2, uint64_t a3)
{
  if (qword_2813E26F8 != -1)
  {
    swift_once();
  }

  v6 = sub_251C70764();
  __swift_project_value_buffer(v6, qword_2813E8130);
  v7 = a2;
  v8 = sub_251C70744();
  v9 = sub_251C713F4();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 136315394;
    v23 = a3;
    v24 = v11;
    if (a1 > 3)
    {
      switch(a1)
      {
        case 4:
          v12 = 0xE700000000000000;
          v13 = 0x676E6974736574;
          goto LABEL_19;
        case 5:
          v12 = 0xEE00646574616974;
          v13 = 0x696E692D72657375;
          goto LABEL_19;
        case 6:
          v12 = 0x8000000251C8A720;
          v13 = 0xD000000000000010;
          goto LABEL_19;
      }
    }

    else
    {
      switch(a1)
      {
        case 1:
          v12 = 0xED00006E6F697461;
          v13 = 0x7A69726F68747561;
          goto LABEL_19;
        case 2:
          v12 = 0xE800000000000000;
          v13 = 0x617461642D77656ELL;
          goto LABEL_19;
        case 3:
          v12 = 0xEA0000000000646ELL;
          v13 = 0x756F72676B636162;
LABEL_19:
          v14 = sub_251B10780(v13, v12, &v24);

          *(v10 + 4) = v14;
          *(v10 + 12) = 2080;
          v15 = *&v7[OBJC_IVAR____TtC19HealthRecordsDaemon21ClinicalSharingServer_client];
          v16 = [v15 description];
          v17 = sub_251C70F14();
          v19 = v18;

          v20 = sub_251B10780(v17, v19, &v24);

          *(v10 + 14) = v20;
          _os_log_impl(&dword_251A6C000, v8, v9, "Scheduling health data share with reason %s on behalf of %s", v10, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x25308E2B0](v11, -1, -1);
          MEMORY[0x25308E2B0](v10, -1, -1);

          a3 = v23;
          goto LABEL_20;
      }
    }

    v12 = 0xE700000000000000;
    v13 = 0x6E776F6E6B6E75;
    goto LABEL_19;
  }

LABEL_20:
  v21 = __swift_project_boxed_opaque_existential_1(&v7[OBJC_IVAR____TtC19HealthRecordsDaemon21ClinicalSharingServer_contextProvider], *&v7[OBJC_IVAR____TtC19HealthRecordsDaemon21ClinicalSharingServer_contextProvider + 24]);
  v24 = *(*(*(*v21 + 56) + 56) + 136);
  MEMORY[0x28223BE20](v21);
  sub_251B3F274(0, &qword_2813E1D00, type metadata accessor for os_unfair_lock_s, MEMORY[0x277D83D58]);
  sub_251B3F1EC();

  sub_251C702C4();

  return (*(a3 + 16))(a3, 1, 0);
}

uint64_t sub_251B3EB60(uint64_t a1, uint64_t a2, char *a3, void (**a4)(void, void, void))
{
  v46 = a1;
  sub_251B3F274(0, &qword_2813E7520, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v45 - v11;
  v13 = swift_allocObject();
  *(v13 + 16) = a4;
  v14 = *&a3[OBJC_IVAR____TtC19HealthRecordsDaemon21ClinicalSharingServer_client];
  _Block_copy(a4);
  v15 = [v14 process];
  v16 = [v15 hasEntitlement_];

  if (v16)
  {
    if (qword_2813E26F8 != -1)
    {
      swift_once();
    }

    v17 = sub_251C70764();
    __swift_project_value_buffer(v17, qword_2813E8130);
    v18 = a3;
    v19 = sub_251C70744();
    v20 = sub_251C713F4();

    v21 = os_log_type_enabled(v19, v20);
    v22 = v46;
    if (v21)
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v47 = v24;
      *v23 = 136315394;
      v25 = sub_251B24874();
      v45 = a2;
      v27 = v26;
      sub_251B2463C(0, &qword_27F4791B8, type metadata accessor for HKClinicalSharingQueryDiagnosticOptions);
      swift_arrayDestroy();
      v28 = sub_251B10780(v25, v27, &v47);

      *(v23 + 4) = v28;
      *(v23 + 12) = 2080;
      v29 = v14;
      v30 = [v29 description];
      v31 = sub_251C70F14();
      v33 = v32;

      a2 = v45;
      v34 = sub_251B10780(v31, v33, &v47);
      v22 = v46;

      *(v23 + 14) = v34;
      _os_log_impl(&dword_251A6C000, v19, v20, "Gathering query diagnostics with options %s on behalf of %s", v23, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x25308E2B0](v24, -1, -1);
      MEMORY[0x25308E2B0](v23, -1, -1);
    }

    __swift_project_boxed_opaque_existential_1(&v18[OBJC_IVAR____TtC19HealthRecordsDaemon21ClinicalSharingServer_contextProvider], *&v18[OBJC_IVAR____TtC19HealthRecordsDaemon21ClinicalSharingServer_contextProvider + 24]);
    v35 = swift_allocObject();
    *(v35 + 16) = sub_251B3F160;
    *(v35 + 24) = v13;

    sub_251C5A9C8(v22, a2, sub_251B3F1D8, v35);
  }

  else
  {
    v37 = sub_251C6FE64();
    v38 = *(v37 - 8);
    (*(v38 + 56))(v12, 1, 1, v37);
    v39 = objc_opt_self();
    v47 = 0;
    v48 = 0xE000000000000000;
    sub_251C716A4();

    v47 = 0x20676E697373694DLL;
    v48 = 0xE800000000000000;
    v40 = sub_251C70F14();
    MEMORY[0x25308CDA0](v40);

    MEMORY[0x25308CDA0](0x656C7469746E6520, 0xEC000000746E656DLL);
    v41 = sub_251C70EE4();

    v42 = [v39 hk:4 error:v41 description:?];

    sub_251B3F2D8(v12, v10, &qword_2813E7520, MEMORY[0x277CC9260]);
    v43 = 0;
    if ((*(v38 + 48))(v10, 1, v37) != 1)
    {
      v43 = sub_251C6FDD4();
      (*(v38 + 8))(v10, v37);
    }

    v44 = sub_251C6FD74();
    (a4)[2](a4, v43, v44);

    sub_251B3F168(v12, &qword_2813E7520, MEMORY[0x277CC9260]);
  }
}

uint64_t sub_251B3F168(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_251B3F274(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_251B3F1EC()
{
  result = qword_2813E1CF0;
  if (!qword_2813E1CF0)
  {
    sub_251B3F274(255, &qword_2813E1D00, type metadata accessor for os_unfair_lock_s, MEMORY[0x277D83D58]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813E1CF0);
  }

  return result;
}

void sub_251B3F274(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_251B3F2D8(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_251B3F274(0, a3, a4, MEMORY[0x277D83D88]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

id sub_251B3F35C(void *a1)
{
  v2 = type metadata accessor for HealthRecordsIngestionServiceServer();
  v3 = objc_allocWithZone(v2);
  *&v3[OBJC_IVAR____TtC19HealthRecordsDaemon35HealthRecordsIngestionServiceServer_client] = a1;
  v6.receiver = v3;
  v6.super_class = v2;
  v4 = a1;
  return objc_msgSendSuper2(&v6, sel_init);
}

uint64_t sub_251B3F404()
{
  sub_251B3F554(0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_251C74800;
  v1 = sub_251C70F14();
  v3 = v2;
  v4 = type metadata accessor for DefaultDaemonXPCService();
  v5 = objc_allocWithZone(v4);
  v6 = &v5[OBJC_IVAR____TtC19HealthRecordsDaemon23DefaultDaemonXPCService_identifier];
  *v6 = v1;
  v6[1] = v3;
  v7 = &v5[OBJC_IVAR____TtC19HealthRecordsDaemon23DefaultDaemonXPCService_requiredEntitlementOverride];
  *v7 = 0;
  *(v7 + 1) = 0;
  v8 = objc_allocWithZone(MEMORY[0x277D10BF0]);

  v9 = sub_251C70EE4();

  v10 = [v8 initWithLabel_];

  *&v5[OBJC_IVAR____TtC19HealthRecordsDaemon23DefaultDaemonXPCService_listener] = v10;
  v11 = &v5[OBJC_IVAR____TtC19HealthRecordsDaemon23DefaultDaemonXPCService_serverGenerator];
  *v11 = sub_251B3F35C;
  v11[1] = 0;
  v14.receiver = v5;
  v14.super_class = v4;
  v12 = objc_msgSendSuper2(&v14, sel_init);
  *(v0 + 56) = v4;
  *(v0 + 64) = &off_2863F5E58;
  *(v0 + 32) = v12;
  return v0;
}

void sub_251B3F554(uint64_t a1)
{
  if (!qword_2813E1C70)
  {
    sub_251ACFD80();
    v1 = sub_251C719B4();
    if (!v2)
    {
      atomic_store(v1, &qword_2813E1C70);
    }
  }
}

uint64_t sub_251B3F5AC(uint64_t a1)
{
  v2 = v1;
  v32 = a1;
  v33[1] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277D83B88];
  sub_251B3FE58(0, &qword_2813E2098, MEMORY[0x277D83B88], MEMORY[0x277CBCE68]);
  v5 = v4;
  v31 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v30 - v6;
  sub_251B3FE0C(0, &qword_2813E2070, v3);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v12 = &v30 - v11;
  sub_251B3FE58(0, &qword_2813E1BC0, v3, MEMORY[0x277CBCF38]);
  v14 = v13;
  v15 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v17 = &v30 - v16;
  v33[0] = 0;
  v18 = [v2 dateOfBirthComponentsWithError_];
  if (v18)
  {
    v19 = v18;
    v20 = v33[0];
    v21 = sub_251C6FF94();
    v22 = [v19 hk:v21 ageWithCurrentDate:?];

    v33[0] = v22;
    v23 = MEMORY[0x277D83B88];
    sub_251C70A24();
    sub_251A82284();
    sub_251C709F4();
    (*(v10 + 8))(v12, v9);
    sub_251B3FDA8(&qword_2813E1BC8, &qword_2813E1BC0, v23);
    v24 = sub_251C70A94();

    (*(v15 + 8))(v17, v14);
  }

  else
  {
    v25 = v33[0];
    v26 = sub_251C6FD84();

    swift_willThrow();
    v33[0] = v26;
    v27 = v26;
    sub_251A82284();
    v28 = MEMORY[0x277D83B88];
    sub_251C709E4();
    sub_251B3FEC8(&qword_27F47A488, &qword_2813E2098, v28);
    v24 = sub_251C70A94();

    (*(v31 + 8))(v7, v5);
  }

  return v24;
}

uint64_t sub_251B3F978()
{
  v1 = v0;
  v32[3] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277D837D0];
  sub_251B3FE58(0, &unk_2813E20A0, MEMORY[0x277D837D0], MEMORY[0x277CBCE68]);
  v4 = v3;
  v31 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v30 - v5;
  sub_251B3FE0C(0, &qword_2813E2090, v2);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v11 = &v30 - v10;
  sub_251B3FE58(0, &qword_2813E1C00, v2, MEMORY[0x277CBCF38]);
  v13 = v12;
  v14 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v16 = &v30 - v15;
  v32[0] = 0;
  v17 = [v1 biologicalSexWithError_];
  if (v17)
  {
    v18 = v17;
    v19 = v32[0];
    v20 = [v18 biologicalSex];

    if (v20 > 1)
    {
      if (v20 == 2)
      {
        v21 = 0xE400000000000000;
        v22 = 1701601645;
        goto LABEL_13;
      }

      if (v20 == 3)
      {
        v21 = 0xE500000000000000;
        v22 = 0x726568746FLL;
        goto LABEL_13;
      }
    }

    else
    {
      if (!v20)
      {
        v21 = 0xE700000000000000;
        v22 = 0x74657320746F6ELL;
        goto LABEL_13;
      }

      if (v20 == 1)
      {
        v21 = 0xE600000000000000;
        v22 = 0x656C616D6566;
LABEL_13:
        v32[0] = v22;
        v32[1] = v21;
        v28 = MEMORY[0x277D837D0];
        sub_251C70A24();
        sub_251A82284();
        sub_251C709F4();
        (*(v9 + 8))(v11, v8);
        sub_251B3FDA8(&qword_2813E1C08, &qword_2813E1C00, v28);
        v27 = sub_251C70A94();
        (*(v14 + 8))(v16, v13);
        return v27;
      }
    }

    v21 = 0xE200000000000000;
    v22 = 24942;
    goto LABEL_13;
  }

  v23 = v32[0];
  v24 = sub_251C6FD84();

  swift_willThrow();
  v32[0] = v24;
  v25 = v24;
  sub_251A82284();
  v26 = MEMORY[0x277D837D0];
  sub_251C709E4();
  sub_251B3FEC8(&qword_27F47A480, &unk_2813E20A0, v26);
  v27 = sub_251C70A94();

  (*(v31 + 8))(v6, v4);
  return v27;
}

uint64_t sub_251B3FDA8(unint64_t *a1, unint64_t *a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_251B3FE58(255, a2, a3, MEMORY[0x277CBCF38]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_251B3FE0C(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_251C70A14();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_251B3FE58(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, unint64_t, void))
{
  if (!*a2)
  {
    v8 = sub_251A82284();
    v9 = a4(a1, a3, v8, MEMORY[0x277D84950]);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_251B3FEC8(unint64_t *a1, unint64_t *a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_251B3FE58(255, a2, a3, MEMORY[0x277CBCE68]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_251B3FF2C()
{
  v1 = OBJC_IVAR____TtC19HealthRecordsDaemon33ClinicalSharingSyncObserverServer_lock;
  v4 = *&v0[OBJC_IVAR____TtC19HealthRecordsDaemon33ClinicalSharingSyncObserverServer_lock];
  sub_251B40DE8(0, &qword_2813E1D00, type metadata accessor for os_unfair_lock_s, MEMORY[0x277D83D58]);
  sub_251B3F1EC();
  sub_251C702C4();
  MEMORY[0x25308E2B0](*&v0[v1], -1, -1);
  v3.receiver = v0;
  v3.super_class = type metadata accessor for ClinicalSharingSyncObserverServer();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_251B40144(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = [*(v5 + OBJC_IVAR____TtC19HealthRecordsDaemon33ClinicalSharingSyncObserverServer_client) connection];
  if (v11)
  {
    v12 = v11;
    v13 = swift_allocObject();
    v13[2] = a1;
    v13[3] = a2;
    v13[4] = a3;
    v13[5] = a4;
    v13[6] = a5;
    v19 = sub_251B41034;
    v20 = v13;
    *&v17 = MEMORY[0x277D85DD0];
    *(&v17 + 1) = 1107296256;
    *&v18 = sub_251B40D80;
    *(&v18 + 1) = &block_descriptor_10;
    v14 = _Block_copy(&v17);

    v15 = [v12 remoteObjectProxyWithErrorHandler_];
    _Block_release(v14);
    sub_251C715C4();

    swift_unknownObjectRelease();
  }

  else
  {
    v17 = 0u;
    v18 = 0u;
  }

  v22[0] = v17;
  v22[1] = v18;
  if (*(&v18 + 1))
  {
    sub_251B40FD0();
    if (swift_dynamicCast())
    {
      return v21;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_251AFEC38(v22);
    return 0;
  }
}

uint64_t sub_251B402FC()
{
  sub_251B40E84();
  sub_251B40EE4(&qword_27F47A518, sub_251B40E84, MEMORY[0x277CBCE48]);
  sub_251C70B24();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_251B40F34(0);
  sub_251B40EE4(&unk_27F47A528, sub_251B40F34, MEMORY[0x277CBCC78]);
  sub_251C70BC4();

  sub_251B40DE8(0, &qword_2813E1D00, type metadata accessor for os_unfair_lock_s, MEMORY[0x277D83D58]);
  sub_251B3F1EC();
  sub_251C702C4();
}

void sub_251B404C0(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    sub_251B40610(v2, v3);
  }
}

uint64_t sub_251B40530(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC19HealthRecordsDaemon33ClinicalSharingSyncObserverServer_syncStateCancellable;
  if (*(a1 + OBJC_IVAR____TtC19HealthRecordsDaemon33ClinicalSharingSyncObserverServer_syncStateCancellable))
  {

    sub_251C70994();
  }

  *(a1 + v4) = a2;
}

uint64_t sub_251B405A4(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC19HealthRecordsDaemon33ClinicalSharingSyncObserverServer_syncStateCancellable;
  if (*(a1 + OBJC_IVAR____TtC19HealthRecordsDaemon33ClinicalSharingSyncObserverServer_syncStateCancellable))
  {

    sub_251C70994();
  }

  *(a1 + v2) = 0;
}

void sub_251B40610(void *a1, char a2)
{
  v5 = sub_251B40144(0xD000000000000015, 0x8000000251C8BCB0, 0xD000000000000092, 0x8000000251C8BCD0, 63);
  if (!v5)
  {
    return;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v6 = v5;
      if (a1)
      {
        v7 = a1;
        if (qword_2813E26F8 != -1)
        {
          swift_once();
        }

        v8 = sub_251C70764();
        __swift_project_value_buffer(v8, qword_2813E8130);
        v9 = v2;
        sub_251B40E4C(a1, 1u);
        v10 = sub_251C70744();
        v11 = sub_251C713F4();

        sub_251B40E68(a1, 1u);
        if (os_log_type_enabled(v10, v11))
        {
          v12 = swift_slowAlloc();
          v13 = swift_slowAlloc();
          v14 = swift_slowAlloc();
          *v12 = 138412546;
          v15 = *&v9[OBJC_IVAR____TtC19HealthRecordsDaemon33ClinicalSharingSyncObserverServer_client];
          v39 = a1;
          v40[0] = v14;
          *(v12 + 4) = v15;
          *v13 = v15;
          *(v12 + 12) = 2080;
          sub_251B40E4C(a1, 1u);
          sub_251A82284();
          v16 = v15;
          v17 = sub_251C70F74();
          v19 = sub_251B10780(v17, v18, v40);

          *(v12 + 14) = v19;
          _os_log_impl(&dword_251A6C000, v10, v11, "Delivering sync did finish to %@: %s", v12, 0x16u);
          sub_251B36EB4(v13);
          MEMORY[0x25308E2B0](v13, -1, -1);
          __swift_destroy_boxed_opaque_existential_1(v14);
          MEMORY[0x25308E2B0](v14, -1, -1);
          MEMORY[0x25308E2B0](v12, -1, -1);
          sub_251B40E68(a1, 1u);
        }

        else
        {

          sub_251B40E68(a1, 1u);
        }

        swift_getErrorValue();
        v38 = sub_251BC0124(v40[2], v40[3]);
        v37 = sub_251C6FD74();
      }

      else
      {
        if (qword_2813E26F8 != -1)
        {
          swift_once();
        }

        v29 = sub_251C70764();
        __swift_project_value_buffer(v29, qword_2813E8130);
        v30 = v2;
        v31 = sub_251C70744();
        v32 = sub_251C713F4();

        if (os_log_type_enabled(v31, v32))
        {
          v33 = swift_slowAlloc();
          v34 = swift_slowAlloc();
          *v33 = 138412290;
          v35 = *&v30[OBJC_IVAR____TtC19HealthRecordsDaemon33ClinicalSharingSyncObserverServer_client];
          *(v33 + 4) = v35;
          *v34 = v35;
          v36 = v35;
          _os_log_impl(&dword_251A6C000, v31, v32, "Delivering sync did finish to %@", v33, 0xCu);
          sub_251B36EB4(v34);
          MEMORY[0x25308E2B0](v34, -1, -1);
          MEMORY[0x25308E2B0](v33, -1, -1);
        }

        v37 = 0;
      }

      [v6 client:v37 syncDidFinishWithError:{v39, v40[0]}];
      swift_unknownObjectRelease();

      return;
    }
  }

  else
  {
    v20 = v5;
    if (qword_2813E26F8 != -1)
    {
      swift_once();
    }

    v21 = sub_251C70764();
    __swift_project_value_buffer(v21, qword_2813E8130);
    v22 = v2;
    sub_251B40E4C(a1, 0);
    v23 = sub_251C70744();
    v24 = sub_251C713F4();

    sub_251B40E68(a1, 0);
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      *v25 = 138412546;
      v27 = *&v22[OBJC_IVAR____TtC19HealthRecordsDaemon33ClinicalSharingSyncObserverServer_client];
      *(v25 + 4) = v27;
      *(v25 + 12) = 2112;
      *(v25 + 14) = a1;
      *v26 = v27;
      v26[1] = a1;
      sub_251B40E4C(a1, 0);
      v28 = v27;
      _os_log_impl(&dword_251A6C000, v23, v24, "Delivering sync did start to %@: %@", v25, 0x16u);
      sub_251B40DE8(0, &qword_2813E1D10, sub_251B1B1EC, MEMORY[0x277D83D88]);
      swift_arrayDestroy();
      MEMORY[0x25308E2B0](v26, -1, -1);
      MEMORY[0x25308E2B0](v25, -1, -1);
    }

    [v20 client:a1 syncDidStartWithInfo:?];
  }

  swift_unknownObjectRelease();
}

void sub_251B40D80(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

void sub_251B40DE8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

id sub_251B40E4C(id result, unsigned __int8 a2)
{
  if (a2 <= 1u)
  {
    return result;
  }

  return result;
}

void sub_251B40E68(id a1, unsigned __int8 a2)
{
  if (a2 <= 1u)
  {
  }
}

void sub_251B40E84()
{
  if (!qword_2813E20B0)
  {
    v0 = sub_251C709C4();
    if (!v1)
    {
      atomic_store(v0, &qword_2813E20B0);
    }
  }
}

uint64_t sub_251B40EE4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_251B40F34(uint64_t a1)
{
  if (!qword_27F47A520)
  {
    sub_251B40E84();
    sub_251B40EE4(&qword_27F47A518, sub_251B40E84, MEMORY[0x277CBCE48]);
    v1 = sub_251C70894();
    if (!v2)
    {
      atomic_store(v1, &qword_27F47A520);
    }
  }
}

unint64_t sub_251B40FD0()
{
  result = qword_27F47A538;
  if (!qword_27F47A538)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27F47A538);
  }

  return result;
}

uint64_t block_copy_helper_10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_251B41060@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v37 = a2;
  v36 = sub_251C70074();
  v6 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251A823B4(a1, a3);
  v9 = type metadata accessor for ClinicalSharingDailyAnalyticsSubmissionTask(0);
  v10 = v9[5];
  v11 = sub_251C70014();
  v12 = *(v11 - 8);
  (*(v12 + 16))(a3 + v10, a2, v11);
  v13 = *__swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v14 = objc_allocWithZone(MEMORY[0x277CCD570]);
  v15 = v13;
  v16 = sub_251C70EE4();
  v17 = [v14 initWithCategory:3 domainName:v16 healthStore:v15];

  *(a3 + v9[6]) = v17;
  *(a3 + v9[7]) = HKImproveHealthAndActivityAnalyticsAllowed();
  v38 = v9;
  sub_251B46518();
  v38 = sub_251C70F74();
  v39 = v18;
  MEMORY[0x25308CDA0](45, 0xE100000000000000);
  sub_251C70064();
  v19 = sub_251C70024();
  v21 = v20;
  (*(v6 + 8))(v8, v36);
  v22 = sub_251AE3EAC(8, v19, v21);
  v24 = v23;
  v26 = v25;
  v28 = v27;

  v29 = MEMORY[0x25308CD40](v22, v24, v26, v28);
  v31 = v30;

  MEMORY[0x25308CDA0](v29, v31);

  MEMORY[0x25308CDA0](58, 0xE100000000000000);
  v32 = v38;
  v33 = v39;
  (*(v12 + 8))(v37, v11);
  v34 = (a3 + v9[8]);
  *v34 = v32;
  v34[1] = v33;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_251B4131C()
{
  v1 = type metadata accessor for ClinicalSharingDailyAnalyticsSubmissionTask(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = MEMORY[0x277D839B0];
  sub_251B460B4(0, &qword_2813E2598, &qword_2813E20D0, MEMORY[0x277D839B0], sub_251B41EF8);
  v60 = v5;
  v61 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v59 = v58 - v6;
  sub_251B41F74(0);
  v63 = v7;
  v64 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v78 = v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251B421D0(0);
  v65 = v9;
  v66 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v79 = v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251B42338(0);
  v68 = v11;
  v69 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v62 = v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251B42374(0);
  v14 = *(v13 - 8);
  v71 = v13;
  v72 = v14;
  MEMORY[0x28223BE20](v13);
  v80 = v58 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251B423B0(0);
  v17 = *(v16 - 8);
  v73 = v16;
  v74 = v17;
  MEMORY[0x28223BE20](v16);
  v67 = v58 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251B423EC(0);
  v20 = *(v19 - 8);
  v75 = v19;
  v76 = v20;
  MEMORY[0x28223BE20](v19);
  v70 = v58 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251A823B4(v0, v85);
  v22 = swift_allocObject();
  sub_251AE7B64(v85, v22 + 16);
  sub_251B42050(0, &qword_2813E1FF0, v4, MEMORY[0x277CBCEA8]);
  swift_allocObject();
  *&v85[0] = sub_251C70A64();
  sub_251B45330();
  v23 = sub_251C70A94();

  *&v85[0] = v23;
  v24 = MEMORY[0x277CBCD88];
  sub_251B42050(0, &qword_2813E20D0, v4, MEMORY[0x277CBCD88]);
  sub_251B41EF8();
  sub_251C70AE4();

  v83 = v0;
  v81 = v58 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251B453AC(v0, v81);
  v82 = *(v2 + 80);
  v25 = (v82 + 16) & ~v82;
  v58[1] = v3;
  v26 = swift_allocObject();
  v84 = type metadata accessor for ClinicalSharingDailyAnalyticsSubmissionTask;
  sub_251B45704(v58 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v26 + v25, type metadata accessor for ClinicalSharingDailyAnalyticsSubmissionTask);
  sub_251C70964();
  sub_251B42050(0, &qword_2813E21E0, &type metadata for DailyMetricDetailList, v24);
  v77 = v27;
  sub_251B4214C();
  v28 = sub_251B420D0();
  v29 = v60;
  v58[0] = v28;
  v30 = v59;
  sub_251C70B94();

  (*(v61 + 8))(v30, v29);
  v31 = v83;
  v32 = v81;
  sub_251B453AC(v83, v81);
  v33 = swift_allocObject();
  sub_251B45704(v32, v33 + v25, type metadata accessor for ClinicalSharingDailyAnalyticsSubmissionTask);
  sub_251C70964();
  v34 = MEMORY[0x277CBCCE0];
  sub_251B422F0(&qword_2813E2410, sub_251B41F74, MEMORY[0x277CBCCE0]);
  v35 = v63;
  v36 = v78;
  sub_251C70B94();

  (*(v64 + 8))(v36, v35);
  sub_251B453AC(v31, v32);
  v37 = swift_allocObject();
  sub_251B45704(v32, v37 + v25, v84);
  sub_251C70964();
  v61 = v34;
  sub_251B422F0(&qword_2813E2400, sub_251B421D0, v34);
  v38 = v62;
  v39 = v65;
  v40 = v79;
  sub_251C70B94();

  (*(v66 + 8))(v40, v39);
  v41 = v83;
  v42 = v81;
  sub_251B453AC(v83, v81);
  v43 = swift_allocObject();
  sub_251B45704(v42, v43 + v25, v84);
  sub_251C70964();
  sub_251B422F0(&qword_2813E23F0, sub_251B42338, v34);
  v44 = v68;
  sub_251C70B94();

  (*(v69 + 8))(v38, v44);
  v45 = v41;
  v46 = v81;
  sub_251B453AC(v45, v81);
  v47 = swift_allocObject();
  sub_251B45704(v46, v47 + v25, v84);
  sub_251C70964();
  v48 = v61;
  sub_251B422F0(&qword_2813E23E0, sub_251B42374, v61);
  v49 = v67;
  v50 = v71;
  v51 = v80;
  sub_251C70B94();

  (*(v72 + 8))(v51, v50);
  sub_251B453AC(v83, v46);
  v52 = swift_allocObject();
  sub_251B45704(v46, v52 + v25, v84);
  sub_251AA98B0(0, qword_2813E46A0, &protocol descriptor for ClinicalSharingMetric);
  sub_251B422F0(&qword_2813E23D0, sub_251B423B0, v48);
  v53 = v70;
  v54 = v73;
  sub_251C70AE4();

  (*(v74 + 8))(v49, v54);
  sub_251B422F0(&qword_2813E2550, sub_251B423EC, MEMORY[0x277CBCC08]);
  v55 = v75;
  v56 = sub_251C70A94();
  (*(v76 + 8))(v53, v55);
  return v56;
}

uint64_t type metadata accessor for ClinicalSharingDailyAnalyticsSubmissionTask(uint64_t a1)
{
  result = qword_2813E2AB8;
  if (!qword_2813E2AB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_251B41EF8()
{
  result = qword_2813E20D8;
  if (!qword_2813E20D8)
  {
    sub_251B42050(255, &qword_2813E20D0, MEMORY[0x277D839B0], MEMORY[0x277CBCD88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813E20D8);
  }

  return result;
}

void sub_251B41F74(uint64_t a1)
{
  if (!qword_2813E2408)
  {
    sub_251B42050(255, &qword_2813E21E0, &type metadata for DailyMetricDetailList, MEMORY[0x277CBCD88]);
    sub_251B460B4(255, &qword_2813E2598, &qword_2813E20D0, MEMORY[0x277D839B0], sub_251B41EF8);
    sub_251B420D0();
    sub_251B4214C();
    v1 = sub_251C708D4();
    if (!v2)
    {
      atomic_store(v1, &qword_2813E2408);
    }
  }
}

void sub_251B42050(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, void))
{
  if (!*a2)
  {
    v8 = sub_251AA98B0(255, &qword_2813E1C30, MEMORY[0x277D84948]);
    v9 = a4(a1, a3, v8, MEMORY[0x277D84950]);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

unint64_t sub_251B420D0()
{
  result = qword_2813E21E8;
  if (!qword_2813E21E8)
  {
    sub_251B42050(255, &qword_2813E21E0, &type metadata for DailyMetricDetailList, MEMORY[0x277CBCD88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813E21E8);
  }

  return result;
}

unint64_t sub_251B4214C()
{
  result = qword_2813E25A0;
  if (!qword_2813E25A0)
  {
    sub_251B460B4(255, &qword_2813E2598, &qword_2813E20D0, MEMORY[0x277D839B0], sub_251B41EF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813E25A0);
  }

  return result;
}

void sub_251B4220C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), unint64_t *a4, uint64_t (*a5)(uint64_t))
{
  if (!*a2)
  {
    sub_251B42050(255, &qword_2813E21E0, &type metadata for DailyMetricDetailList, MEMORY[0x277CBCD88]);
    a3(255);
    sub_251B420D0();
    sub_251B422F0(a4, a5, MEMORY[0x277CBCCE0]);
    v9 = sub_251C708D4();
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_251B422F0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_251B423EC(uint64_t a1)
{
  if (!qword_2813E2548)
  {
    sub_251B423B0(255);
    sub_251AA98B0(255, qword_2813E46A0, &protocol descriptor for ClinicalSharingMetric);
    sub_251B422F0(&qword_2813E23D0, sub_251B423B0, MEMORY[0x277CBCCE0]);
    v1 = sub_251C70804();
    if (!v2)
    {
      atomic_store(v1, &qword_2813E2548);
    }
  }
}

double sub_251B424A8@<D0>(_BYTE *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = *a1;
  result = 0.0;
  *(a2 + 8) = 0u;
  *(a2 + 24) = 0u;
  *(a2 + 40) = 1;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  return result;
}

uint64_t sub_251B424D8@<X0>(__int128 *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v50 = a3;
  sub_251B46334(0);
  v48 = v5;
  v46 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v44 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251B463D0(0);
  v49 = v7;
  v47 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v45 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ClinicalSharingDailyAnalyticsSubmissionTask(0);
  v43 = *(v9 - 8);
  v10 = *(v43 + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v12 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v43 - v13;
  v15 = a1[1];
  v53 = *a1;
  v54 = v15;
  v16 = a1[3];
  v55 = a1[2];
  v56 = v16;
  if (qword_2813E26F8 != -1)
  {
    swift_once();
  }

  v17 = sub_251C70764();
  __swift_project_value_buffer(v17, qword_2813E8130);
  sub_251B453AC(a2, v14);
  v18 = sub_251C70744();
  v19 = sub_251C713C4();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v51[0] = v21;
    *v20 = 136315138;
    v22 = &v14[*(v9 + 32)];
    v23 = *v22;
    v24 = v22[1];

    sub_251B456A8(v14);
    v25 = sub_251B10780(v23, v24, v51);

    *(v20 + 4) = v25;
    _os_log_impl(&dword_251A6C000, v18, v19, "%s Retrieving HKClinicalAccount list", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v21);
    MEMORY[0x25308E2B0](v21, -1, -1);
    MEMORY[0x25308E2B0](v20, -1, -1);
  }

  else
  {

    sub_251B456A8(v14);
  }

  v26 = __swift_project_boxed_opaque_existential_1(a2, a2[3])[2];
  v52[3] = &type metadata for ClinicalSharingAccountStore;
  v52[4] = &off_2863F67B8;
  v52[0] = v26;
  __swift_project_boxed_opaque_existential_1(v52, &type metadata for ClinicalSharingAccountStore);
  v27 = off_2863F67E8[0];
  v28 = v26;
  v51[8] = v27();
  v29 = swift_allocObject();
  v30 = v54;
  v29[1] = v53;
  v29[2] = v30;
  v31 = v56;
  v29[3] = v55;
  v29[4] = v31;
  sub_251B45950(&v53, v51);
  sub_251AA8E00(0);
  sub_251B422F0(&qword_2813E2118, sub_251AA8E00, MEMORY[0x277CBCD90]);
  v32 = v44;
  sub_251C70AE4();

  __swift_destroy_boxed_opaque_existential_1(v52);
  sub_251B453AC(a2, v12);
  v33 = (*(v43 + 80) + 16) & ~*(v43 + 80);
  v34 = swift_allocObject();
  sub_251B45704(v12, v34 + v33, type metadata accessor for ClinicalSharingDailyAnalyticsSubmissionTask);
  v35 = (v34 + ((v10 + v33 + 7) & 0xFFFFFFFFFFFFFFF8));
  v36 = v54;
  *v35 = v53;
  v35[1] = v36;
  v37 = v56;
  v35[2] = v55;
  v35[3] = v37;
  sub_251B45950(&v53, v51);
  sub_251B42050(0, &qword_2813E21E0, &type metadata for DailyMetricDetailList, MEMORY[0x277CBCD88]);
  sub_251B422F0(&qword_2813E25C0, sub_251B46334, MEMORY[0x277CBCC08]);
  sub_251B420D0();
  v38 = v45;
  v39 = v48;
  sub_251C70B04();

  (*(v46 + 8))(v32, v39);
  sub_251B422F0(&qword_2813E24F0, sub_251B463D0, MEMORY[0x277CBCC40]);
  v40 = v49;
  v41 = sub_251C70A94();
  result = (*(v47 + 8))(v38, v40);
  *v50 = v41;
  return result;
}

uint64_t sub_251B42B2C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a1;
  v4 = *(a2 + 16);
  v7 = *(a2 + 48);
  v6 = *(a2 + 56);
  v5 = *(a2 + 40);
  *a3 = *a2;
  *(a3 + 8) = v3;
  *(a3 + 16) = v4;
  *(a3 + 24) = *(a2 + 24);
  *(a3 + 40) = v5;
  *(a3 + 48) = v7;
  *(a3 + 56) = v6;
}

void *sub_251B42BB4@<X0>(__int128 *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  sub_251B460B4(0, &qword_2813E25F8, &qword_2813E2170, &type metadata for ClinicalSharingAuthorizations, sub_251B46144);
  v7 = v6;
  v70 = *(v6 - 1);
  MEMORY[0x28223BE20](v6);
  v68 = &v64 - v8;
  sub_251B461C0(0);
  v10 = v9;
  v11 = *(v9 - 1);
  MEMORY[0x28223BE20](v9);
  v69 = &v64 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_251C70074();
  v14 = *(v13 - 8);
  v77 = v13;
  v78 = v14;
  MEMORY[0x28223BE20](v13);
  v76 = &v64 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for ClinicalSharingDailyAnalyticsSubmissionTask(0);
  v65 = *(v16 - 8);
  v17 = MEMORY[0x28223BE20](v16);
  v67 = &v64 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = v18;
  MEMORY[0x28223BE20](v17);
  v20 = &v64 - v19;
  v21 = a1[1];
  v80 = *a1;
  v81 = v21;
  v22 = a1[3];
  v82 = a1[2];
  v83 = v22;
  if (qword_2813E26F8 != -1)
  {
LABEL_35:
    swift_once();
  }

  v23 = sub_251C70764();
  __swift_project_value_buffer(v23, qword_2813E8130);
  sub_251B453AC(a2, v20);
  v24 = sub_251C70744();
  v25 = sub_251C713C4();
  v26 = os_log_type_enabled(v24, v25);
  v75 = a2;
  v74 = a3;
  v73 = v10;
  v72 = v7;
  v71 = v11;
  if (v26)
  {
    v27 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v79[0] = v7;
    *v27 = 136315138;
    v28 = &v20[*(v16 + 32)];
    v29 = *v28;
    v30 = v28[1];

    sub_251B456A8(v20);
    v31 = sub_251B10780(v29, v30, v79);
    a2 = v75;

    *(v27 + 4) = v31;
    _os_log_impl(&dword_251A6C000, v24, v25, "%s Retrieving ClinicalSharingAuthorizations", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x25308E2B0](v7, -1, -1);
    MEMORY[0x25308E2B0](v27, -1, -1);
  }

  else
  {

    sub_251B456A8(v20);
  }

  v16 = *(&v80 + 1);
  v11 = MEMORY[0x277D84F90];
  if (!*(&v80 + 1))
  {
    goto LABEL_39;
  }

  v79[0] = MEMORY[0x277D84F90];
  a2 = (*(&v80 + 1) & 0xFFFFFFFFFFFFFF8);
  if (*(&v80 + 1) >> 62)
  {
    v20 = sub_251C717F4();
  }

  else
  {
    v20 = *((*(&v80 + 1) & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v32 = MEMORY[0x277D84F90];
  if (v20)
  {
    v33 = 0;
    a3 = (v16 & 0xC000000000000001);
    while (1)
    {
      if (a3)
      {
        v34 = MEMORY[0x25308D460](v33, v16);
        v10 = (v33 + 1);
        if (__OFADD__(v33, 1))
        {
LABEL_19:
          __break(1u);
LABEL_20:
          v36 = v79[0];
          goto LABEL_22;
        }
      }

      else
      {
        if (v33 >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_35;
        }

        v34 = *(v16 + 8 * v33 + 32);
        v10 = (v33 + 1);
        if (__OFADD__(v33, 1))
        {
          goto LABEL_19;
        }
      }

      v11 = v34;
      v35 = sub_251C71474();

      if (v35)
      {
        sub_251C71734();
        v7 = *(v79[0] + 16);
        sub_251C71774();
        sub_251C71784();
        sub_251C71744();
      }

      else
      {
      }

      ++v33;
      if (v10 == v20)
      {
        goto LABEL_20;
      }
    }
  }

  v36 = MEMORY[0x277D84F90];
LABEL_22:
  a2 = v75;
  if ((v36 & 0x8000000000000000) == 0 && (v36 & 0x4000000000000000) == 0)
  {
    v37 = *(v36 + 16);
    if (v37)
    {
      goto LABEL_25;
    }

LABEL_38:

    v11 = MEMORY[0x277D84F90];
LABEL_39:
    v46 = *__swift_project_boxed_opaque_existential_1(a2, a2[3]);
    v47 = sub_251C5D708(v11);

    v79[8] = v47;
    v48 = swift_allocObject();
    v49 = v81;
    v48[1] = v80;
    v48[2] = v49;
    v50 = v83;
    v48[3] = v82;
    v48[4] = v50;
    sub_251B45950(&v80, v79);
    v51 = MEMORY[0x277CBCD88];
    sub_251B42050(0, &qword_2813E2170, &type metadata for ClinicalSharingAuthorizations, MEMORY[0x277CBCD88]);
    sub_251B46144();
    v52 = v68;
    sub_251C70AE4();

    v53 = v67;
    sub_251B453AC(a2, v67);
    v54 = (*(v65 + 80) + 16) & ~*(v65 + 80);
    v55 = (v66 + v54 + 7) & 0xFFFFFFFFFFFFFFF8;
    v56 = swift_allocObject();
    sub_251B45704(v53, v56 + v54, type metadata accessor for ClinicalSharingDailyAnalyticsSubmissionTask);
    v57 = (v56 + v55);
    v58 = v81;
    *v57 = v80;
    v57[1] = v58;
    v59 = v83;
    v57[2] = v82;
    v57[3] = v59;
    sub_251B45950(&v80, v79);
    sub_251B42050(0, &qword_2813E21E0, &type metadata for DailyMetricDetailList, v51);
    sub_251B4629C();
    sub_251B420D0();
    v60 = v69;
    v61 = v72;
    sub_251C70B04();

    (*(v70 + 8))(v52, v61);
    sub_251B422F0(&qword_2813E2510, sub_251B461C0, MEMORY[0x277CBCC40]);
    v62 = v73;
    v63 = sub_251C70A94();
    result = (v71[1])(v60, v62);
    *v74 = v63;
    return result;
  }

  v37 = sub_251C717F4();
  if (!v37)
  {
    goto LABEL_38;
  }

LABEL_25:
  v79[0] = v32;
  result = sub_251C0B5E4(0, v37 & ~(v37 >> 63), 0);
  if ((v37 & 0x8000000000000000) == 0)
  {
    v39 = 0;
    v11 = v79[0];
    v40 = v76;
    do
    {
      if ((v36 & 0xC000000000000001) != 0)
      {
        v41 = MEMORY[0x25308D460](v39, v36);
      }

      else
      {
        v41 = *(v36 + 8 * v39 + 32);
      }

      v42 = v41;
      v43 = [v42 identifier];
      sub_251C70054();

      v79[0] = v11;
      v45 = v11[2];
      v44 = v11[3];
      if (v45 >= v44 >> 1)
      {
        sub_251C0B5E4((v44 > 1), v45 + 1, 1);
        v11 = v79[0];
      }

      ++v39;
      v11[2] = v45 + 1;
      (*(v78 + 32))(v11 + ((*(v78 + 80) + 32) & ~*(v78 + 80)) + *(v78 + 72) * v45, v40, v77);
    }

    while (v37 != v39);

    a2 = v75;
    goto LABEL_39;
  }

  __break(1u);
  return result;
}

uint64_t sub_251B434A8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a1;
  v4 = *(a2 + 8);
  v7 = *(a2 + 48);
  v6 = *(a2 + 56);
  v5 = *(a2 + 40);
  *a3 = *a2;
  *(a3 + 8) = v4;
  *(a3 + 16) = v3;
  *(a3 + 24) = *(a2 + 24);
  *(a3 + 40) = v5;
  *(a3 + 48) = v7;
  *(a3 + 56) = v6;
}

uint64_t sub_251B43530@<X0>(void **a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, const char *a4@<X3>, uint64_t *a5@<X8>)
{
  v45 = a4;
  sub_251B45E00(0, &qword_27F47A540, &type metadata for DailyMetricDetailList, MEMORY[0x277CBCE78]);
  v48 = *(v9 - 8);
  v49 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v42 - v10;
  sub_251B42050(0, &qword_27F47A548, &type metadata for DailyMetricDetailList, MEMORY[0x277CBCF38]);
  v46 = *(v12 - 8);
  v47 = v12;
  MEMORY[0x28223BE20](v12);
  v14 = &v42 - v13;
  v15 = type metadata accessor for ClinicalSharingDailyAnalyticsSubmissionTask(0);
  MEMORY[0x28223BE20](v15);
  v17 = &v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *a1;
  if (qword_2813E26F8 != -1)
  {
    swift_once();
  }

  v19 = sub_251C70764();
  __swift_project_value_buffer(v19, qword_2813E8130);
  sub_251B453AC(a2, v17);
  v20 = v18;
  v21 = sub_251C70744();
  v22 = sub_251C713C4();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v44 = a5;
    v24 = v23;
    v43 = swift_slowAlloc();
    v50[0] = v43;
    *v24 = 136315394;
    v25 = &v17[*(v15 + 32)];
    v27 = *v25;
    v26 = v25[1];

    sub_251B456A8(v17);
    v28 = sub_251B10780(v27, v26, v50);

    *(v24 + 4) = v28;
    *(v24 + 12) = 2080;
    *&v51 = v18;
    v29 = v18;
    sub_251AA98B0(0, &qword_2813E1C30, MEMORY[0x277D84948]);
    sub_251C719F4();
    v30 = HKSensitiveLogItem();
    swift_unknownObjectRelease();
    sub_251C715C4();
    swift_unknownObjectRelease();
    v31 = sub_251C70F74();
    v33 = sub_251B10780(v31, v32, v50);

    *(v24 + 14) = v33;
    _os_log_impl(&dword_251A6C000, v21, v22, v45, v24, 0x16u);
    v34 = v43;
    swift_arrayDestroy();
    MEMORY[0x25308E2B0](v34, -1, -1);
    v35 = v24;
    a5 = v44;
    MEMORY[0x25308E2B0](v35, -1, -1);
  }

  else
  {

    sub_251B456A8(v17);
  }

  v36 = a3[1];
  v51 = *a3;
  v52 = v36;
  v37 = a3[3];
  v53 = a3[2];
  v54 = v37;
  sub_251B45950(a3, v50);
  sub_251C70A24();
  sub_251AA98B0(0, &qword_2813E1C30, MEMORY[0x277D84948]);
  v38 = v49;
  sub_251C709F4();
  (*(v48 + 8))(v11, v38);
  sub_251B45994();
  v39 = v47;
  v40 = sub_251C70A94();
  result = (*(v46 + 8))(v14, v39);
  *a5 = v40;
  return result;
}

uint64_t sub_251B439D0@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v59 = a3;
  sub_251B45D34(0);
  v6 = v5;
  v51 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v49 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251B45E50(0);
  v48 = v8;
  v57 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v55 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251B45F8C(0);
  v50 = v10;
  v58 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v56 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ClinicalSharingDailyAnalyticsSubmissionTask(0);
  v52 = *(v12 - 8);
  v13 = MEMORY[0x28223BE20](v12);
  v54 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = v14;
  MEMORY[0x28223BE20](v13);
  v16 = &v47 - v15;
  v17 = a1[1];
  v61 = *a1;
  v62 = v17;
  v18 = a1[3];
  v63 = a1[2];
  v64 = v18;
  if (qword_2813E26F8 != -1)
  {
    swift_once();
  }

  v19 = sub_251C70764();
  __swift_project_value_buffer(v19, qword_2813E8130);
  sub_251B453AC(a2, v16);
  v20 = sub_251C70744();
  v21 = sub_251C713C4();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v60[0] = v23;
    *v22 = 136315138;
    v24 = &v16[*(v12 + 32)];
    v47 = a2;
    v26 = *v24;
    v25 = v24[1];

    sub_251B456A8(v16);
    v27 = sub_251B10780(v26, v25, v60);
    a2 = v47;

    *(v22 + 4) = v27;
    _os_log_impl(&dword_251A6C000, v20, v21, "%s Retrieving ClinicalSharingSyncHistory", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v23);
    MEMORY[0x25308E2B0](v23, -1, -1);
    MEMORY[0x25308E2B0](v22, -1, -1);
  }

  else
  {

    sub_251B456A8(v16);
  }

  v60[0] = sub_251C71444();
  sub_251B45EE8(0, &qword_2813E2060, &qword_2813E7518, MEMORY[0x277CC9318], MEMORY[0x277CBCEA8]);
  sub_251B45E00(0, &qword_2813E37D0, &type metadata for ClinicalSharingSyncHistory, MEMORY[0x277D83D88]);
  sub_251AE9E20();
  v28 = v49;
  sub_251C70AE4();

  v29 = MEMORY[0x277CBCC08];
  sub_251B422F0(&qword_2813E2580, sub_251B45D34, MEMORY[0x277CBCC08]);
  v30 = sub_251C70A94();
  (*(v51 + 8))(v28, v6);
  v60[8] = v30;
  v31 = swift_allocObject();
  v32 = v62;
  v31[1] = v61;
  v31[2] = v32;
  v33 = v64;
  v31[3] = v63;
  v31[4] = v33;
  sub_251B45950(&v61, v60);
  sub_251B45EE8(0, &qword_2813E21A0, &qword_2813E37D0, &type metadata for ClinicalSharingSyncHistory, MEMORY[0x277CBCD88]);
  sub_251AE5D00();
  v34 = v55;
  sub_251C70AE4();

  v35 = v54;
  sub_251B453AC(a2, v54);
  v36 = (*(v52 + 80) + 16) & ~*(v52 + 80);
  v37 = (v53 + v36 + 7) & 0xFFFFFFFFFFFFFFF8;
  v38 = swift_allocObject();
  sub_251B45704(v35, v38 + v36, type metadata accessor for ClinicalSharingDailyAnalyticsSubmissionTask);
  v39 = (v38 + v37);
  v40 = v62;
  *v39 = v61;
  v39[1] = v40;
  v41 = v64;
  v39[2] = v63;
  v39[3] = v41;
  sub_251B45950(&v61, v60);
  sub_251B42050(0, &qword_2813E21E0, &type metadata for DailyMetricDetailList, MEMORY[0x277CBCD88]);
  sub_251B422F0(&qword_2813E2640, sub_251B45E50, v29);
  sub_251B420D0();
  v42 = v56;
  v43 = v48;
  sub_251C70B04();

  (*(v57 + 8))(v34, v43);
  sub_251B422F0(&qword_2813E2520, sub_251B45F8C, MEMORY[0x277CBCC40]);
  v44 = v50;
  v45 = sub_251C70A94();
  result = (*(v58 + 8))(v42, v44);
  *v59 = v45;
  return result;
}

uint64_t sub_251B44184@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  if (!v5)
  {
  }

  v6 = *(a2 + 8);
  v7 = *(a2 + 16);
  v8 = *(a2 + 32);
  v11 = *(a2 + 48);
  v10 = *(a2 + 56);
  v9 = *(a2 + 40);
  *a3 = *a2;
  *(a3 + 8) = v6;
  *(a3 + 16) = v7;
  *(a3 + 24) = v5;
  *(a3 + 32) = v8;
  *(a3 + 40) = v9;
  *(a3 + 48) = v11;
  *(a3 + 56) = v10;
}

uint64_t sub_251B4422C@<X0>(__int128 *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v56 = a3;
  sub_251B460B4(0, &qword_2813E2588, &qword_2813E20B8, MEMORY[0x277D83B88], sub_251B45A10);
  v51 = v5;
  v55 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v53 = &v46 - v6;
  sub_251B45A8C(0);
  v52 = v7;
  v50 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v54 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ClinicalSharingDailyAnalyticsSubmissionTask(0);
  v49 = *(v9 - 8);
  v10 = *(v49 + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v12 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v46 - v13;
  v15 = a1[1];
  v58 = *a1;
  v59 = v15;
  v16 = a1[3];
  v60 = a1[2];
  v61 = v16;
  if (qword_2813E26F8 != -1)
  {
    swift_once();
  }

  v17 = sub_251C70764();
  __swift_project_value_buffer(v17, qword_2813E8130);
  sub_251B453AC(a2, v14);
  v18 = sub_251C70744();
  v19 = sub_251C713C4();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v57[0] = v21;
    *v20 = 136315138;
    v22 = &v14[*(v9 + 32)];
    v47 = v9;
    v23 = *v22;
    v24 = v22[1];
    v48 = v10;

    sub_251B456A8(v14);
    v25 = sub_251B10780(v23, v24, v57);
    v10 = v48;

    *(v20 + 4) = v25;
    v9 = v47;
    _os_log_impl(&dword_251A6C000, v18, v19, "%s Retrieving Age", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v21);
    MEMORY[0x25308E2B0](v21, -1, -1);
    MEMORY[0x25308E2B0](v20, -1, -1);
  }

  else
  {

    sub_251B456A8(v14);
  }

  v26 = __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v27 = a2;
  v28 = *(v9 + 20);
  v29 = *v26;
  v30 = sub_251B3F5AC(v27 + v28);

  v57[8] = v30;
  v31 = swift_allocObject();
  v32 = v59;
  v31[1] = v58;
  v31[2] = v32;
  v33 = v61;
  v31[3] = v60;
  v31[4] = v33;
  sub_251B45950(&v58, v57);
  v34 = MEMORY[0x277CBCD88];
  sub_251B42050(0, &qword_2813E20B8, MEMORY[0x277D83B88], MEMORY[0x277CBCD88]);
  sub_251B45A10();
  v35 = v53;
  sub_251C70AE4();

  sub_251B453AC(v27, v12);
  v36 = (*(v49 + 80) + 16) & ~*(v49 + 80);
  v37 = swift_allocObject();
  sub_251B45704(v12, v37 + v36, type metadata accessor for ClinicalSharingDailyAnalyticsSubmissionTask);
  v38 = (v37 + ((v10 + v36 + 7) & 0xFFFFFFFFFFFFFFF8));
  v39 = v59;
  *v38 = v58;
  v38[1] = v39;
  v40 = v61;
  v38[2] = v60;
  v38[3] = v40;
  sub_251B45950(&v58, v57);
  sub_251B42050(0, &qword_2813E21E0, &type metadata for DailyMetricDetailList, v34);
  sub_251B45B68();
  sub_251B420D0();
  v41 = v54;
  v42 = v51;
  sub_251C70B04();

  (*(v55 + 8))(v35, v42);
  sub_251B422F0(&qword_2813E24E0, sub_251B45A8C, MEMORY[0x277CBCC40]);
  v43 = v52;
  v44 = sub_251C70A94();
  result = (*(v50 + 8))(v41, v43);
  *v56 = v44;
  return result;
}

uint64_t sub_251B44830@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a1;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v8 = *(a2 + 48);
  v7 = *(a2 + 56);
  *a3 = *a2;
  *(a3 + 8) = v4;
  *(a3 + 16) = v5;
  *(a3 + 24) = v6;
  *(a3 + 32) = v3;
  *(a3 + 40) = 0;
  *(a3 + 48) = v8;
  *(a3 + 56) = v7;
}

uint64_t sub_251B448B0@<X0>(__int128 *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v51 = a3;
  sub_251B460B4(0, &qword_2813E25E8, &qword_2813E2160, MEMORY[0x277D837D0], sub_251B4576C);
  v6 = v5;
  v53 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v50 = &v45 - v7;
  sub_251B457E8(0);
  v49 = v8;
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v52 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ClinicalSharingDailyAnalyticsSubmissionTask(0);
  v46 = *(v11 - 8);
  v12 = MEMORY[0x28223BE20](v11);
  v48 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = v13;
  MEMORY[0x28223BE20](v12);
  v15 = &v45 - v14;
  v16 = a1[1];
  v55 = *a1;
  v56 = v16;
  v17 = a1[3];
  v57 = a1[2];
  v58 = v17;
  if (qword_2813E26F8 != -1)
  {
    swift_once();
  }

  v18 = sub_251C70764();
  __swift_project_value_buffer(v18, qword_2813E8130);
  sub_251B453AC(a2, v15);
  v19 = sub_251C70744();
  v20 = sub_251C713C4();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v54[0] = v22;
    *v21 = 136315138;
    v23 = &v15[*(v11 + 32)];
    v24 = *v23;
    v25 = v23[1];
    v45 = v9;

    sub_251B456A8(v15);
    v26 = sub_251B10780(v24, v25, v54);
    v9 = v45;

    *(v21 + 4) = v26;
    _os_log_impl(&dword_251A6C000, v19, v20, "%s Retrieving Sex", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v22);
    MEMORY[0x25308E2B0](v22, -1, -1);
    MEMORY[0x25308E2B0](v21, -1, -1);
  }

  else
  {

    sub_251B456A8(v15);
  }

  v27 = *__swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v28 = sub_251B3F978();

  v54[8] = v28;
  v29 = swift_allocObject();
  v30 = v56;
  v29[1] = v55;
  v29[2] = v30;
  v31 = v58;
  v29[3] = v57;
  v29[4] = v31;
  sub_251B45950(&v55, v54);
  v32 = MEMORY[0x277CBCD88];
  sub_251B42050(0, &qword_2813E2160, MEMORY[0x277D837D0], MEMORY[0x277CBCD88]);
  sub_251B4576C();
  v33 = v50;
  sub_251C70AE4();

  v34 = v48;
  sub_251B453AC(a2, v48);
  v35 = (*(v46 + 80) + 16) & ~*(v46 + 80);
  v36 = (v47 + v35 + 7) & 0xFFFFFFFFFFFFFFF8;
  v37 = swift_allocObject();
  sub_251B45704(v34, v37 + v35, type metadata accessor for ClinicalSharingDailyAnalyticsSubmissionTask);
  v38 = (v37 + v36);
  v39 = v56;
  *v38 = v55;
  v38[1] = v39;
  v40 = v58;
  v38[2] = v57;
  v38[3] = v40;
  sub_251B45950(&v55, v54);
  sub_251B42050(0, &qword_2813E21E0, &type metadata for DailyMetricDetailList, v32);
  sub_251B458C4();
  sub_251B420D0();
  v41 = v52;
  sub_251C70B04();

  (*(v53 + 8))(v33, v6);
  sub_251B422F0(&qword_2813E2500, sub_251B457E8, MEMORY[0x277CBCC40]);
  v42 = v49;
  v43 = sub_251C70A94();
  result = (*(v9 + 8))(v41, v42);
  *v51 = v43;
  return result;
}

uint64_t sub_251B44EA0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  v7 = *(a2 + 40);
  *a3 = *a2;
  *(a3 + 8) = v5;
  *(a3 + 16) = v6;
  *(a3 + 24) = *(a2 + 24);
  *(a3 + 40) = v7;
  *(a3 + 48) = v3;
  *(a3 + 56) = v4;
}

uint64_t sub_251B44F24@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v53 = a2;
  v5 = type metadata accessor for ClinicalSharingDailyMetric(0);
  MEMORY[0x28223BE20](v5);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_251C70014();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v52 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = type metadata accessor for ClinicalSharingDailyAnalyticsSubmissionTask(0);
  MEMORY[0x28223BE20](v47);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = *a1;
  v14 = *(a1 + 1);
  v13 = *(a1 + 2);
  v15 = *(a1 + 4);
  v50 = *(a1 + 3);
  v51 = v13;
  v46 = v15;
  v45 = a1[40];
  v16 = *(a1 + 7);
  v44 = *(a1 + 6);
  v49 = v16;
  if (qword_2813E26F8 != -1)
  {
    swift_once();
  }

  v17 = sub_251C70764();
  __swift_project_value_buffer(v17, qword_2813E8130);
  sub_251B453AC(v53, v12);
  v18 = sub_251C70744();
  v19 = sub_251C713C4();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v41 = v14;
    v21 = v20;
    v22 = swift_slowAlloc();
    v43 = v8;
    v23 = v22;
    v54 = v22;
    *v21 = 136315138;
    v24 = v47;
    v25 = &v12[*(v47 + 32)];
    v42 = a3;
    v40 = v9;
    v26 = *v25;
    v27 = v25[1];

    sub_251B456A8(v12);
    v28 = sub_251B10780(v26, v27, &v54);
    v9 = v40;

    *(v21 + 4) = v28;
    a3 = v42;
    _os_log_impl(&dword_251A6C000, v18, v19, "%s Creating ClinicalSharingDailyMetric", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v23);
    v29 = v23;
    v8 = v43;
    MEMORY[0x25308E2B0](v29, -1, -1);
    v30 = v21;
    v14 = v41;
    MEMORY[0x25308E2B0](v30, -1, -1);
  }

  else
  {

    sub_251B456A8(v12);
    v24 = v47;
  }

  v32 = v52;
  v31 = v53;
  (*(v9 + 16))(v52, v53 + *(v24 + 20), v8);
  v33 = *(v31 + *(v24 + 28));
  a3[3] = v5;
  a3[4] = &off_2863F90E8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a3);
  v35 = &v7[v5[12]];
  *v35 = 0xD000000000000026;
  *(v35 + 1) = 0x8000000251C8BDD0;
  v36 = v46;
  *(v7 + 1) = v14;
  *(v7 + 2) = v36;
  v7[24] = v45;
  v37 = v49;
  *(v7 + 4) = v44;
  *(v7 + 5) = v37;
  *v7 = v51;
  v7[v5[9]] = v33;
  v7[v5[10]] = v48 & 1;
  (*(v9 + 32))(&v7[v5[8]], v32, v8);
  *&v7[v5[11]] = v50;
  sub_251B45704(v7, boxed_opaque_existential_1, type metadata accessor for ClinicalSharingDailyMetric);
}

unint64_t sub_251B45330()
{
  result = qword_2813E1FF8;
  if (!qword_2813E1FF8)
  {
    sub_251B42050(255, &qword_2813E1FF0, MEMORY[0x277D839B0], MEMORY[0x277CBCEA8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813E1FF8);
  }

  return result;
}

uint64_t sub_251B453AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ClinicalSharingDailyAnalyticsSubmissionTask(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroy_2Tm()
{
  v1 = (type metadata accessor for ClinicalSharingDailyAnalyticsSubmissionTask(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  __swift_destroy_boxed_opaque_existential_1((v0 + v3));
  v5 = v1[7];
  v6 = sub_251C70014();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_251B45594(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for ClinicalSharingDailyAnalyticsSubmissionTask(0) - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

uint64_t sub_251B45628@<X0>(unsigned __int8 *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(type metadata accessor for ClinicalSharingDailyAnalyticsSubmissionTask(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_251B44F24(a1, v6, a2);
}

uint64_t sub_251B456A8(uint64_t a1)
{
  v2 = type metadata accessor for ClinicalSharingDailyAnalyticsSubmissionTask(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_251B45704(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_251B4576C()
{
  result = qword_2813E2168;
  if (!qword_2813E2168)
  {
    sub_251B42050(255, &qword_2813E2160, MEMORY[0x277D837D0], MEMORY[0x277CBCD88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813E2168);
  }

  return result;
}

void sub_251B457E8(uint64_t a1)
{
  if (!qword_2813E24F8)
  {
    sub_251B460B4(255, &qword_2813E25E8, &qword_2813E2160, MEMORY[0x277D837D0], sub_251B4576C);
    sub_251B42050(255, &qword_2813E21E0, &type metadata for DailyMetricDetailList, MEMORY[0x277CBCD88]);
    sub_251B458C4();
    sub_251B420D0();
    v1 = sub_251C70854();
    if (!v2)
    {
      atomic_store(v1, &qword_2813E24F8);
    }
  }
}

unint64_t sub_251B458C4()
{
  result = qword_2813E25F0;
  if (!qword_2813E25F0)
  {
    sub_251B460B4(255, &qword_2813E25E8, &qword_2813E2160, MEMORY[0x277D837D0], sub_251B4576C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813E25F0);
  }

  return result;
}

unint64_t sub_251B45994()
{
  result = qword_27F47A550;
  if (!qword_27F47A550)
  {
    sub_251B42050(255, &qword_27F47A548, &type metadata for DailyMetricDetailList, MEMORY[0x277CBCF38]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47A550);
  }

  return result;
}

unint64_t sub_251B45A10()
{
  result = qword_2813E20C0;
  if (!qword_2813E20C0)
  {
    sub_251B42050(255, &qword_2813E20B8, MEMORY[0x277D83B88], MEMORY[0x277CBCD88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813E20C0);
  }

  return result;
}

void sub_251B45A8C(uint64_t a1)
{
  if (!qword_2813E24D8)
  {
    sub_251B460B4(255, &qword_2813E2588, &qword_2813E20B8, MEMORY[0x277D83B88], sub_251B45A10);
    sub_251B42050(255, &qword_2813E21E0, &type metadata for DailyMetricDetailList, MEMORY[0x277CBCD88]);
    sub_251B45B68();
    sub_251B420D0();
    v1 = sub_251C70854();
    if (!v2)
    {
      atomic_store(v1, &qword_2813E24D8);
    }
  }
}

unint64_t sub_251B45B68()
{
  result = qword_2813E2590;
  if (!qword_2813E2590)
  {
    sub_251B460B4(255, &qword_2813E2588, &qword_2813E20B8, MEMORY[0x277D83B88], sub_251B45A10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813E2590);
  }

  return result;
}

uint64_t objectdestroy_23Tm()
{
  v1 = (type metadata accessor for ClinicalSharingDailyAnalyticsSubmissionTask(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v3;
  __swift_destroy_boxed_opaque_existential_1((v0 + v3));
  v6 = v1[7];
  v7 = sub_251C70014();
  (*(*(v7 - 8) + 8))(v5 + v6, v7);

  return MEMORY[0x2821FE8E8](v0, v4 + 64, v2 | 7);
}

void sub_251B45D34(uint64_t a1)
{
  if (!qword_2813E2578)
  {
    sub_251B45EE8(255, &qword_2813E2060, &qword_2813E7518, MEMORY[0x277CC9318], MEMORY[0x277CBCEA8]);
    sub_251B45E00(255, &qword_2813E37D0, &type metadata for ClinicalSharingSyncHistory, MEMORY[0x277D83D88]);
    sub_251AE9E20();
    v1 = sub_251C70804();
    if (!v2)
    {
      atomic_store(v1, &qword_2813E2578);
    }
  }
}

void sub_251B45E00(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_251B45E50(uint64_t a1)
{
  if (!qword_2813E2638)
  {
    sub_251B45EE8(255, &qword_2813E21A0, &qword_2813E37D0, &type metadata for ClinicalSharingSyncHistory, MEMORY[0x277CBCD88]);
    sub_251AE5D00();
    v1 = sub_251C70804();
    if (!v2)
    {
      atomic_store(v1, &qword_2813E2638);
    }
  }
}

void sub_251B45EE8(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t, void))
{
  if (!*a2)
  {
    sub_251B45E00(255, a3, a4, MEMORY[0x277D83D88]);
    v9 = v8;
    v10 = sub_251AA98B0(255, &qword_2813E1C30, MEMORY[0x277D84948]);
    v11 = a5(a1, v9, v10, MEMORY[0x277D84950]);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

void sub_251B45FC8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), unint64_t *a4, uint64_t (*a5)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_251B42050(255, &qword_2813E21E0, &type metadata for DailyMetricDetailList, MEMORY[0x277CBCD88]);
    sub_251B422F0(a4, a5, MEMORY[0x277CBCC08]);
    sub_251B420D0();
    v8 = sub_251C70854();
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_251B460B4(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(void))
{
  if (!*a2)
  {
    sub_251B42050(255, a3, a4, MEMORY[0x277CBCD88]);
    a5();
    v7 = sub_251C70804();
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_251B46144()
{
  result = qword_2813E2178;
  if (!qword_2813E2178)
  {
    sub_251B42050(255, &qword_2813E2170, &type metadata for ClinicalSharingAuthorizations, MEMORY[0x277CBCD88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813E2178);
  }

  return result;
}

void sub_251B461C0(uint64_t a1)
{
  if (!qword_2813E2508)
  {
    sub_251B460B4(255, &qword_2813E25F8, &qword_2813E2170, &type metadata for ClinicalSharingAuthorizations, sub_251B46144);
    sub_251B42050(255, &qword_2813E21E0, &type metadata for DailyMetricDetailList, MEMORY[0x277CBCD88]);
    sub_251B4629C();
    sub_251B420D0();
    v1 = sub_251C70854();
    if (!v2)
    {
      atomic_store(v1, &qword_2813E2508);
    }
  }
}

unint64_t sub_251B4629C()
{
  result = qword_2813E2600;
  if (!qword_2813E2600)
  {
    sub_251B460B4(255, &qword_2813E25F8, &qword_2813E2170, &type metadata for ClinicalSharingAuthorizations, sub_251B46144);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813E2600);
  }

  return result;
}

void sub_251B46334(uint64_t a1)
{
  if (!qword_2813E25B8)
  {
    sub_251AA8E00(255);
    sub_251B422F0(&qword_2813E2118, sub_251AA8E00, MEMORY[0x277CBCD90]);
    v1 = sub_251C70804();
    if (!v2)
    {
      atomic_store(v1, &qword_2813E25B8);
    }
  }
}

uint64_t objectdestroy_20Tm()
{

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_251B46470@<X0>(const char *a1@<X1>, void **a2@<X0>, uint64_t *a3@<X8>, ...)
{
  v7 = *(type metadata accessor for ClinicalSharingDailyAnalyticsSubmissionTask(0) - 8);
  v8 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  return sub_251B43530(a2, v3 + v8, (v3 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8)), a1, a3);
}

unint64_t sub_251B46518()
{
  result = qword_2813E2A20[0];
  if (!qword_2813E2A20[0])
  {
    type metadata accessor for ClinicalSharingDailyAnalyticsSubmissionTask(255);
    result = swift_getMetatypeMetadata();
    atomic_store(result, qword_2813E2A20);
  }

  return result;
}

uint64_t sub_251B46560(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 64))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_251B465BC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_251B46658(uint64_t a1)
{
  result = sub_251AA98B0(319, qword_2813E7418, &protocol descriptor for ClinicalSharingDaemonEnvironment);
  if (v2 <= 0x3F)
  {
    result = sub_251C70014();
    if (v3 <= 0x3F)
    {
      result = sub_251A8223C(319, &qword_2813E1DB0, 0x277CCD570);
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_251B4672C()
{
  v1 = type metadata accessor for PBBlobPushResult(0);
  v2 = *(v1 - 8);
  result = MEMORY[0x28223BE20](v1 - 8);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v0;
  v7 = *(v6 + 16);
  if (!v7)
  {
    return 0;
  }

  v8 = 0;
  while (v8 < *(v6 + 16))
  {
    sub_251B46858(v6 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v8, v5);
    v9 = *(v5 + 4);
    v10 = v5[40];
    result = sub_251B468BC(v5);
    if (v10 == 1)
    {
      if (v9 == 4)
      {
        return 1;
      }
    }

    else if (v9 == 5)
    {
      return 1;
    }

    if (v7 == ++v8)
    {
      return 0;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_251B46858(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PBBlobPushResult(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_251B468BC(uint64_t a1)
{
  v2 = type metadata accessor for PBBlobPushResult(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_251B46918()
{
  v0 = sub_251C706D4();
  __swift_allocate_value_buffer(v0, qword_27F4A1C10);
  __swift_project_value_buffer(v0, qword_27F4A1C10);
  sub_251ADA5E0(0);
  sub_251A93770(0);
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_251C75800;
  v6 = (v5 + v4);
  v7 = v5 + v4 + *(v2 + 56);
  *v6 = 1;
  *v7 = "w0";
  *(v7 + 8) = 2;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x277D21870];
  v9 = sub_251C706B4();
  v10 = *(*(v9 - 8) + 104);
  (v10)(v7, v8, v9);
  v11 = v6 + v3 + *(v2 + 56);
  *(v6 + v3) = 2;
  *v11 = "L";
  *(v11 + 1) = 1;
  v11[16] = 2;
  v10();
  return sub_251C706C4();
}

uint64_t sub_251B46AC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_251C70444();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    if (result == 1 || result == 2)
    {
      sub_251C704D4();
    }
  }

  return result;
}

uint64_t sub_251B46B44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v3;
  v6 = v3[1];
  v7 = v6 >> 62;
  if ((v6 >> 62) > 1)
  {
    if (v7 != 2)
    {
      goto LABEL_10;
    }

    v8 = *(v5 + 16);
    v9 = *(v5 + 24);
  }

  else
  {
    if (!v7)
    {
      if ((v6 & 0xFF000000000000) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }

    v8 = v5;
    v9 = v5 >> 32;
  }

  if (v8 == v9)
  {
    goto LABEL_10;
  }

LABEL_9:
  result = sub_251C70624();
  if (v4)
  {
    return result;
  }

LABEL_10:
  v11 = v3[2];
  v12 = v3[3];
  v13 = v12 >> 62;
  if ((v12 >> 62) > 1)
  {
    if (v13 != 2)
    {
      goto LABEL_19;
    }

    v14 = *(v11 + 16);
    v15 = *(v11 + 24);
  }

  else
  {
    if (!v13)
    {
      if ((v12 & 0xFF000000000000) == 0)
      {
        goto LABEL_19;
      }

LABEL_18:
      result = sub_251C70624();
      if (v4)
      {
        return result;
      }

      goto LABEL_19;
    }

    v14 = v11;
    v15 = v11 >> 32;
  }

  if (v14 != v15)
  {
    goto LABEL_18;
  }

LABEL_19:
  type metadata accessor for PBVerificationValuePair(0);
  return sub_251C70394();
}

uint64_t sub_251B46C58@<X0>(_OWORD *a2@<X8>)
{
  *a2 = xmmword_251C745D0;
  a2[1] = xmmword_251C745D0;
  return sub_251C703A4();
}

uint64_t sub_251B46CD0(uint64_t a1, uint64_t a2)
{
  v4 = sub_251B47A30(&qword_27F47A5F8, type metadata accessor for PBVerificationValuePair, &unk_251C79A28);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_251B46D70(uint64_t a1)
{
  v2 = sub_251B47A30(&qword_27F47A5E0, type metadata accessor for PBVerificationValuePair, &unk_251C79A60);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_251B46DDC(uint64_t a1, uint64_t a2)
{
  sub_251B47A30(&qword_27F47A5E0, type metadata accessor for PBVerificationValuePair, &unk_251C79A60);

  return sub_251C705C4();
}

uint64_t sub_251B46E58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!sub_251A9D1F0(*a1, *(a1 + 8), *a2, *(a2 + 8)) || !sub_251A9D1F0(*(a1 + 16), *(a1 + 24), *(a2 + 16), *(a2 + 24)))
  {
    return 0;
  }

  sub_251C703B4();
  sub_251B47A30(&qword_27F478F98, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_251C70ED4() & 1;
}

uint64_t sub_251B46F70(uint64_t a1, uint64_t a2)
{
  v4 = sub_251B47A30(&qword_27F47A600, type metadata accessor for PBPA, &unk_251C798C0);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_251B47010(uint64_t a1)
{
  v2 = sub_251B47A30(&qword_27F47A5C0, type metadata accessor for PBPA, &unk_251C798F8);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_251B4707C(uint64_t a1, uint64_t a2)
{
  sub_251B47A30(&qword_27F47A5C0, type metadata accessor for PBPA, &unk_251C798F8);

  return sub_251C705C4();
}

uint64_t sub_251B4710C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  v6 = *v4;
  v7 = v4[1];
  v8 = v7 >> 62;
  if ((v7 >> 62) > 1)
  {
    if (v8 != 2 || *(v6 + 16) == *(v6 + 24))
    {
      goto LABEL_11;
    }
  }

  else if (v8)
  {
    if (v6 == v6 >> 32)
    {
      goto LABEL_11;
    }
  }

  else if ((v7 & 0xFF000000000000) == 0)
  {
    goto LABEL_11;
  }

  v9 = a4;
  result = sub_251C70624();
  if (v5)
  {
    return result;
  }

  a4 = v9;
LABEL_11:
  a4(0);
  return sub_251C70394();
}

uint64_t sub_251B47234(uint64_t a1, uint64_t a2)
{
  v4 = sub_251B47A30(&qword_27F47A608, type metadata accessor for PBPB, &unk_251C79758);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_251B472D4(uint64_t a1)
{
  v2 = sub_251B47A30(&qword_27F47A5A0, type metadata accessor for PBPB, &unk_251C79790);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_251B47340(uint64_t a1, uint64_t a2)
{
  sub_251B47A30(&qword_27F47A5A0, type metadata accessor for PBPB, &unk_251C79790);

  return sub_251C705C4();
}

uint64_t sub_251B47418(uint64_t a1, uint64_t a2)
{
  v4 = sub_251B47A30(&qword_27F47A610, type metadata accessor for PBConfirmationA, &unk_251C795F0);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_251B474B8(uint64_t a1)
{
  v2 = sub_251B47A30(&qword_27F47A580, type metadata accessor for PBConfirmationA, &unk_251C79628);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_251B47524(uint64_t a1, uint64_t a2)
{
  sub_251B47A30(&qword_27F47A580, type metadata accessor for PBConfirmationA, &unk_251C79628);

  return sub_251C705C4();
}

uint64_t sub_251B475B4(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v5 = sub_251C706D4();
  __swift_allocate_value_buffer(v5, a2);
  __swift_project_value_buffer(v5, a2);
  sub_251ADA5E0(0);
  sub_251A93770(0);
  v7 = v6 - 8;
  v8 = (*(*(v6 - 8) + 80) + 32) & ~*(*(v6 - 8) + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_251C74800;
  v10 = v9 + v8 + *(v7 + 56);
  *(v9 + v8) = 1;
  *v10 = a3;
  *(v10 + 8) = 1;
  *(v10 + 16) = 2;
  v11 = *MEMORY[0x277D21870];
  v12 = sub_251C706B4();
  (*(*(v12 - 8) + 104))(v10, v11, v12);
  return sub_251C706C4();
}

uint64_t sub_251B4774C(uint64_t a1, uint64_t a2)
{
  v4 = sub_251B47A30(&qword_27F47A618, type metadata accessor for PBConfirmationB, &unk_251C79488);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_251B477EC(uint64_t a1)
{
  v2 = sub_251B47A30(&qword_27F47A560, type metadata accessor for PBConfirmationB, &unk_251C794C0);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_251B47858(uint64_t a1, uint64_t a2)
{
  sub_251B47A30(&qword_27F47A560, type metadata accessor for PBConfirmationB, &unk_251C794C0);

  return sub_251C705C4();
}

uint64_t sub_251B478D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!sub_251A9D1F0(*a1, *(a1 + 8), *a2, *(a2 + 8)))
  {
    return 0;
  }

  sub_251C703B4();
  sub_251B47A30(&qword_27F478F98, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_251C70ED4() & 1;
}

uint64_t sub_251B47A30(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_251B48030(uint64_t a1)
{
  result = sub_251C703B4();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_8Tm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 12)
  {
    v4 = *(a1 + 8) >> 60;
    if (((4 * v4) & 0xC) != 0)
    {
      return 16 - ((4 * v4) & 0xC | (v4 >> 2));
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = sub_251C703B4();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *__swift_store_extra_inhabitant_index_9Tm(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 12)
  {
    *result = 0;
    result[1] = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  else
  {
    v7 = sub_251C703B4();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for ClinicalSharingWalkingSteadinessEventQuery(uint64_t a1)
{
  result = qword_27F47A670;
  if (!qword_27F47A670)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_251B48348(uint64_t a1)
{
  result = type metadata accessor for ClinicalSharingQueryContext(319);
  if (v2 <= 0x3F)
  {
    result = sub_251C6FAE4();
    if (v3 <= 0x3F)
    {
      result = sub_251A8223C(319, &qword_27F479E00, 0x277CCD0C0);
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_251B48420()
{
  v1 = type metadata accessor for ClinicalSharingWalkingSteadinessEventQuery(0);
  v2 = v1 - 8;
  v46 = *(v1 - 8);
  v45 = *(v46 + 64);
  MEMORY[0x28223BE20](v1);
  v44 = v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251A82308(0, &qword_27F478D58, type metadata accessor for PBTypedData);
  v5 = *(v4 - 8);
  v49 = v4;
  v50 = v5;
  MEMORY[0x28223BE20](v4);
  v47 = v40 - v6;
  sub_251A822E8(0);
  v8 = *(v7 - 8);
  v51 = v7;
  v52 = v8;
  MEMORY[0x28223BE20](v7);
  v48 = v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_251C70014();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v0 + *(v2 + 32));
  v15 = objc_opt_self();
  v16 = v0;
  sub_251C6FAB4();
  v17 = sub_251C6FF94();
  v18 = *(v11 + 8);
  v18(v13, v10);
  sub_251C6FA84();
  v19 = sub_251C6FF94();
  v18(v13, v10);
  v20 = [v15 predicateForSamplesWithStartDate:v17 endDate:v19 options:0];

  v21 = [objc_allocWithZone(MEMORY[0x277CCD848]) initWithSampleType:v14 predicate:v20];
  v22 = sub_251BFC460();
  v24 = v23;
  v42 = v16;
  sub_251A823B4(*v16 + 16, v54);
  __swift_project_boxed_opaque_existential_1(v54, v54[3]);
  sub_251A82418();
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_251C74560;
  *(v25 + 32) = v21;
  v26 = off_2863FD750;
  v43 = v21;
  v27 = v26(v25, v22, v24, MEMORY[0x277D84F90], 0);
  v40[1] = v27;

  v53 = v27;
  v41 = type metadata accessor for ClinicalSharingWalkingSteadinessEventQuery;
  v28 = v16;
  v29 = v44;
  sub_251B497E8(v28, v44, type metadata accessor for ClinicalSharingWalkingSteadinessEventQuery);
  v30 = (*(v46 + 80) + 16) & ~*(v46 + 80);
  v31 = swift_allocObject();
  sub_251B49850(v29, v31 + v30, type metadata accessor for ClinicalSharingWalkingSteadinessEventQuery);
  v32 = swift_allocObject();
  *(v32 + 16) = sub_251B495E0;
  *(v32 + 24) = v31;
  sub_251A82164(0);
  type metadata accessor for PBTypedData(0);
  sub_251A8265C(&qword_27F478D78, sub_251A82164, MEMORY[0x277CBCD90]);
  v33 = v47;
  sub_251C70AA4();

  __swift_destroy_boxed_opaque_existential_1(v54);
  sub_251B497E8(v42, v29, v41);
  v34 = swift_allocObject();
  sub_251B49850(v29, v34 + v30, type metadata accessor for ClinicalSharingWalkingSteadinessEventQuery);
  type metadata accessor for ClinicalSharingQueryOutput(0);
  v36 = v48;
  v35 = v49;
  sub_251C70774();

  (*(v50 + 8))(v33, v35);
  sub_251A8265C(&qword_27F478D88, sub_251A822E8, MEMORY[0x277CBCB10]);
  v37 = v51;
  v38 = sub_251C70A94();

  (*(v52 + 8))(v36, v37);
  return v38;
}

uint64_t sub_251B48A54@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_251A826A4(0, &qword_27F478D90, MEMORY[0x277CC88A8]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v47 - v6;
  v8 = type metadata accessor for PBDateRange(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v56 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for PBTypedData(0);
  v57 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for PBCategorySeries(0);
  v15 = MEMORY[0x28223BE20](v14);
  MEMORY[0x28223BE20](v15);
  v18 = &v47 - v17;
  if (a1 >> 62)
  {
    v55 = a1;
    v39 = v16;
    v40 = sub_251C717F4();
    v16 = v39;
    a1 = v55;
    if (v40)
    {
LABEL_3:
      v53 = v16;
      v54 = v7;
      v55 = a2;
      v19 = sub_251B14FFC(a1);
      if (v19)
      {
        v20 = v19;
        MEMORY[0x28223BE20](v19);
        v46 = v2;
        sub_251C5608C(sub_251B497C8, (&v47 - 4), v20);
        v22 = v21;

        *v18 = 0;
        *(v18 + 1) = 0xE000000000000000;
        sub_251C703A4();
        v23 = *(v9 + 56);
        v23(&v18[*(v14 + 28)], 1, 1, v8);
        v49 = v23;
        *(v18 + 2) = v22;
        *v13 = 0;
        v13[8] = 1;
        v24 = *(v11 + 20);
        v25 = type metadata accessor for PBTypedData.OneOf_Raw(0);
        v26 = *(v25 - 8);
        v51 = *(v26 + 56);
        v52 = v26 + 56;
        v51(&v13[v24], 1, 1, v25);
        sub_251C703A4();
        v27 = v8;
        v48 = v8;
        v28 = *(v11 + 28);
        v23(&v13[v28], 1, 1, v27);
        v29 = *(type metadata accessor for ClinicalSharingWalkingSteadinessEventQuery(0) + 20);
        v30 = sub_251C6FAE4();
        v31 = *(v30 - 8);
        v50 = v11;
        v32 = v31;
        v33 = v2 + v29;
        v34 = v54;
        (*(v31 + 16))(v54, v33, v30);
        (*(v32 + 56))(v34, 0, 1, v30);
        v35 = v56;
        sub_251BFC464();
        sub_251A82844(v34, &qword_27F478D90, MEMORY[0x277CC88A8]);
        sub_251A82844(&v13[v28], qword_2813E6EE8, type metadata accessor for PBDateRange);
        sub_251B49850(v35, &v13[v28], type metadata accessor for PBDateRange);
        v49(&v13[v28], 0, 1, v48);
        *v13 = 126;
        v13[8] = 1;
        v36 = v53;
        sub_251B497E8(v18, v53, type metadata accessor for PBCategorySeries);
        sub_251A82844(&v13[v24], qword_2813E6C90, type metadata accessor for PBTypedData.OneOf_Raw);
        sub_251B49850(v36, &v13[v24], type metadata accessor for PBCategorySeries);
        swift_storeEnumTagMultiPayload();
        v51(&v13[v24], 0, 1, v25);
        v37 = v55;
        sub_251B49850(v13, v55, type metadata accessor for PBTypedData);
        (*(v57 + 56))(v37, 0, 1, v50);
        return sub_251A827E8(v18);
      }

      else
      {
        v58 = 0;
        v59 = 0xE000000000000000;
        sub_251C716A4();

        v58 = 0xD000000000000023;
        v59 = 0x8000000251C89D50;
        v42 = [*(v2 + *(type metadata accessor for ClinicalSharingWalkingSteadinessEventQuery(0) + 24)) description];
        v43 = sub_251C70F14();
        v45 = v44;

        MEMORY[0x25308CDA0](v43, v45);

        result = sub_251C717E4();
        __break(1u);
      }

      return result;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v41 = *(v57 + 56);

  return v41(a2, 1, 1, v11);
}

uint64_t sub_251B4910C@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v46 = a2;
  v45 = MEMORY[0x277CC9578];
  sub_251A826A4(0, &qword_2813E7500, MEMORY[0x277CC9578]);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v36 - v9;
  v11 = type metadata accessor for PBDateRange(0);
  v42 = v11;
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v44 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a1;
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0xE000000000000000;
  *(a3 + 24) = 0;
  *(a3 + 32) = 0xE000000000000000;
  v15 = type metadata accessor for PBCategorySeries.Event(0);
  v16 = a3 + *(v15 + 28);
  v17 = type metadata accessor for PBCategorySeries.Event.OneOf_AdditionalData(0);
  v18 = *(v17 - 8);
  v19 = *(v18 + 56);
  v37 = v16;
  v38 = v18 + 56;
  v39 = v19;
  v40 = v17;
  (v19)(v16, 1, 1);
  sub_251C703A4();
  v20 = *(v15 + 36);
  v21 = *(v12 + 56);
  v41 = v12 + 56;
  v43 = v21;
  v21(a3 + v20, 1, 1, v11);
  v22 = [v14 startDate];
  sub_251C6FFE4();

  v23 = sub_251C70014();
  v24 = *(*(v23 - 8) + 56);
  v24(v10, 0, 1, v23);
  v25 = [v14 endDate];
  sub_251C6FFE4();

  v24(v8, 0, 1, v23);
  v26 = v44;
  sub_251C15BE4();
  v27 = v45;
  sub_251A82844(v8, &qword_2813E7500, v45);
  sub_251A82844(v10, &qword_2813E7500, v27);
  sub_251A82844(a3 + v20, qword_2813E6EE8, type metadata accessor for PBDateRange);
  sub_251B49850(v26, a3 + v20, type metadata accessor for PBDateRange);
  v43(a3 + v20, 0, 1, v42);
  result = [v14 value];
  if (result < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (result <= 0x7FFFFFFF)
  {
    *a3 = result;
    v29 = [v14 value];
    v30 = v29;
    if ((v29 - 1) >= 4)
    {
      v31 = 0;
    }

    else
    {
      v31 = v29;
    }

    v32 = v37;
    sub_251A82844(v37, qword_2813E5FC8, type metadata accessor for PBCategorySeries.Event.OneOf_AdditionalData);
    *v32 = v31;
    *(v32 + 8) = 1;
    v33 = v40;
    swift_storeEnumTagMultiPayload();
    result = v39(v32, 0, 1, v33);
    if (v30 > 2)
    {
      if (v30 == 3)
      {
        v34 = 0xE900000000000077;
        v35 = 0x6F4C746165706572;
        goto LABEL_16;
      }

      if (v30 == 4)
      {
        v34 = 0xED0000776F4C7972;
        v35 = 0x6556746165706572;
        goto LABEL_16;
      }
    }

    else
    {
      if (v30 == 1)
      {
        v34 = 0xEA0000000000776FLL;
        v35 = 0x4C6C616974696E69;
        goto LABEL_16;
      }

      if (v30 == 2)
      {
        v34 = 0xEE00776F4C797265;
        v35 = 0x566C616974696E69;
LABEL_16:
        *(a3 + 8) = v35;
        *(a3 + 16) = v34;
        return result;
      }
    }

    v34 = 0xE600000000000000;
    v35 = 0x746553746F6ELL;
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t objectdestroyTm_5()
{
  v1 = (type metadata accessor for ClinicalSharingWalkingSteadinessEventQuery(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[7];
  v6 = sub_251C6FAE4();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_251B497E8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_251B49850(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t type metadata accessor for LinkResolverError(uint64_t a1)
{
  result = qword_27F47A690;
  if (!qword_27F47A690)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_251B4994C()
{
  v1 = v0;
  v2 = sub_251C6FE64();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for LinkResolverError(0);
  MEMORY[0x28223BE20](v6);
  v8 = (v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_251B49C84(v1, v8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v12 = *v8;
      v21 = 0;
      v22 = 0xE000000000000000;
      sub_251C716A4();
      MEMORY[0x25308CDA0](0xD00000000000001FLL, 0x8000000251C8BF70);
      v20[1] = v12;
      sub_251A82284();
      sub_251C717C4();

      return v21;
    }

    return 0xD000000000000039;
  }

  else
  {
    if (!EnumCaseMultiPayload)
    {
      v10 = *v8;
      v11 = v8[1];
      v21 = 0;
      v22 = 0xE000000000000000;
      sub_251C716A4();

      v21 = 0xD00000000000001ALL;
      v22 = 0x8000000251C8BFB0;
      MEMORY[0x25308CDA0](v10, v11);

      return v21;
    }

    sub_251B49CE8(0);
    v15 = (v8 + *(v14 + 48));
    v16 = *v15;
    v17 = v15[1];
    (*(v3 + 32))(v5, v8, v2);
    v21 = 0;
    v22 = 0xE000000000000000;
    sub_251C716A4();

    v21 = 0xD000000000000015;
    v22 = 0x8000000251C8BF90;
    MEMORY[0x25308CDA0](v16, v17);

    MEMORY[0x25308CDA0](10272, 0xE200000000000000);
    sub_251B49D50(&qword_27F478E68, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
    v18 = sub_251C719A4();
    MEMORY[0x25308CDA0](v18);

    MEMORY[0x25308CDA0](41, 0xE100000000000000);
    v19 = v21;
    (*(v3 + 8))(v5, v2);
    return v19;
  }
}

uint64_t sub_251B49C84(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LinkResolverError(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_251B49CE8(uint64_t a1)
{
  if (!qword_27F47A688)
  {
    sub_251C6FE64();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F47A688);
    }
  }
}

uint64_t sub_251B49D50(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_251B49D98(uint64_t a1)
{
  sub_251B49CE8(319);
  if (v1 <= 0x3F)
  {
    sub_251A82284();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_251B49E18(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v67 = a2;
  v81 = a3;
  v80 = sub_251C70074();
  v66 = *(v80 - 8);
  MEMORY[0x28223BE20](v80);
  v65 = &v64 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251B4B034(0);
  v78 = *(v5 - 8);
  v79 = v5;
  MEMORY[0x28223BE20](v5);
  v75 = &v64 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251B4B1A4(0, &qword_2813E2368, MEMORY[0x277CBCCD8]);
  v69 = *(v7 - 8);
  v70 = v7;
  MEMORY[0x28223BE20](v7);
  v68 = &v64 - v8;
  sub_251B4B1A4(0, &qword_27F47A6A8, MEMORY[0x277CBCD28]);
  v72 = *(v9 - 8);
  v73 = v9;
  MEMORY[0x28223BE20](v9);
  v71 = &v64 - v10;
  sub_251B4B1A4(0, &qword_27F479C30, MEMORY[0x277CBCC38]);
  v76 = *(v11 - 8);
  v77 = v11;
  MEMORY[0x28223BE20](v11);
  v74 = &v64 - v12;
  sub_251B4B2E8(0, &qword_27F479400, type metadata accessor for ClinicalSharingSyncContext, MEMORY[0x277CBCE78]);
  v14 = v13;
  v15 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v17 = &v64 - v16;
  v18 = MEMORY[0x277CBCF38];
  sub_251AFD990(0, &qword_27F479408, MEMORY[0x277CBCF38]);
  v20 = v19;
  v21 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v23 = &v64 - v22;
  v24 = *a1;
  v84[0] = v24;
  v25 = type metadata accessor for ClinicalSharingSyncContext(0);

  v82 = v25;
  sub_251C70A24();
  sub_251A82284();
  sub_251C709F4();
  (*(v15 + 8))(v17, v14);
  sub_251AFDA08(&qword_27F479410, &qword_27F479408, v18, MEMORY[0x277CBCF40]);
  v26 = sub_251C70A94();
  (*(v21 + 8))(v23, v20);
  v27 = OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_error;
  if (*(v24 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_error))
  {
    v28 = v80;
    if (qword_2813E26F8 != -1)
    {
      swift_once();
    }

    v29 = sub_251C70764();
    __swift_project_value_buffer(v29, qword_2813E8130);

    v30 = sub_251C70744();
    v31 = sub_251C713D4();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v82 = swift_slowAlloc();
      v84[0] = v82;
      *v32 = 136315394;
      v33 = v66;
      v34 = v66[2];
      LODWORD(v79) = v31;
      v35 = v65;
      v34(v65, v24 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_accountID, v28);
      sub_251B4B298(&qword_27F479418, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v36 = sub_251C719A4();
      v38 = v37;
      (v33[1])(v35, v28);
      v39 = sub_251B10780(v36, v38, v84);

      *(v32 + 4) = v39;
      *(v32 + 12) = 2080;
      v83 = *(v24 + v27);
      v40 = v83;
      sub_251B4B2E8(0, &qword_2813E1C20, sub_251A82284, MEMORY[0x277D83D88]);
      v41 = sub_251C70F74();
      v43 = sub_251B10780(v41, v42, v84);

      *(v32 + 14) = v43;
      _os_log_impl(&dword_251A6C000, v30, v79, "ClinicalSharingSyncContext for account %s is in error state, will not be able to update DocumentReference. Error: %s", v32, 0x16u);
      v44 = v82;
      swift_arrayDestroy();
      MEMORY[0x25308E2B0](v44, -1, -1);
      MEMORY[0x25308E2B0](v32, -1, -1);
    }
  }

  else
  {
    v84[0] = v26;
    v45 = swift_allocObject();
    v46 = v67;
    *(v45 + 16) = v67;
    v66 = v46;
    sub_251C70964();
    v80 = v26;
    v47 = MEMORY[0x277CBCD88];
    sub_251AFD990(0, &qword_2813E21B0, MEMORY[0x277CBCD88]);
    sub_251AFDA08(&qword_2813E21B8, &qword_2813E21B0, v47, MEMORY[0x277CBCD90]);
    v48 = v68;
    sub_251C70B94();

    v67 = MEMORY[0x277CBCCE0];
    sub_251B4B160(&qword_2813E2370, &qword_2813E2368, MEMORY[0x277CBCCD8], MEMORY[0x277CBCCE0]);
    v49 = v70;
    v50 = sub_251C70A94();
    v65 = v69[1];
    (v65)(v48, v49);
    v84[0] = v50;
    v51 = swift_allocObject();
    v52 = v66;
    *(v51 + 16) = v66;
    *(v51 + 24) = 3;
    v69 = v52;
    sub_251C70964();
    sub_251C70B94();

    v53 = sub_251C70A94();

    (v65)(v48, v49);
    v84[0] = v53;

    v54 = v71;
    sub_251C70BA4();

    v55 = swift_allocObject();
    v56 = v69;
    *(v55 + 16) = v69;
    v57 = v56;
    sub_251C70964();
    sub_251B4B160(&qword_27F47A6B0, &qword_27F47A6A8, MEMORY[0x277CBCD28], MEMORY[0x277CBCD30]);
    v58 = v75;
    v59 = v73;
    sub_251C70B94();

    sub_251B4B298(&qword_27F47A6B8, sub_251B4B034, v67);
    v60 = v79;
    v61 = sub_251C70A94();
    (*(v78 + 8))(v58, v60);
    (*(v72 + 8))(v54, v59);
    v84[0] = v61;

    v62 = v74;
    sub_251C70B04();

    sub_251B4B160(&qword_27F479C38, &qword_27F479C30, MEMORY[0x277CBCC38], MEMORY[0x277CBCC40]);
    v63 = v77;
    v26 = sub_251C70A94();

    (*(v76 + 8))(v62, v63);
  }

  *v81 = v26;
}

id sub_251B4A9AC@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  sub_251B4B2E8(0, &qword_27F479400, type metadata accessor for ClinicalSharingSyncContext, MEMORY[0x277CBCE78]);
  v8 = v7;
  v33 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v30 - v9;
  sub_251AFD990(0, &qword_27F479408, MEMORY[0x277CBCF38]);
  v12 = v11;
  v34 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v30 - v13;
  v15 = *a1;
  if ([*(a2 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_clinicalSharingStatus) userStatus] == 5)
  {
    v31 = v12;
    v32 = a3;
    if (qword_2813E26F8 != -1)
    {
      swift_once();
    }

    v16 = sub_251C70764();
    __swift_project_value_buffer(v16, qword_2813E8130);
    v17 = v15;
    v18 = sub_251C70744();
    v19 = sub_251C713D4();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v30[0] = swift_slowAlloc();
      v36 = v30[0];
      *v20 = 136315138;
      v35 = v15;
      v21 = v15;
      sub_251A82284();
      sub_251C719F4();
      v22 = HKSensitiveLogItem();
      v30[1] = v3;
      swift_unknownObjectRelease();
      sub_251C715C4();
      swift_unknownObjectRelease();
      v23 = sub_251C70F74();
      v25 = sub_251B10780(v23, v24, &v36);

      *(v20 + 4) = v25;
      _os_log_impl(&dword_251A6C000, v18, v19, "ClinicalSharingSyncTask: Error searching for or updating DocumentReference while deleting the account, ignoring. Error: %s", v20, 0xCu);
      v26 = v30[0];
      __swift_destroy_boxed_opaque_existential_1(v30[0]);
      MEMORY[0x25308E2B0](v26, -1, -1);
      MEMORY[0x25308E2B0](v20, -1, -1);
    }

    v35 = a2;
    type metadata accessor for ClinicalSharingSyncContext(0);

    sub_251C70A24();
    sub_251A82284();
    sub_251C709F4();
    (*(v33 + 8))(v10, v8);
    sub_251AFDA08(&qword_27F479410, &qword_27F479408, MEMORY[0x277CBCF38], MEMORY[0x277CBCF40]);
    v27 = v31;
    v28 = sub_251C70A94();
    result = (*(v34 + 8))(v14, v27);
    *v32 = v28;
  }

  else
  {
    swift_willThrow();
    return v15;
  }

  return result;
}

uint64_t sub_251B4ADE0@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v18[0] = a3;
  sub_251B4B2E8(0, &qword_27F479400, type metadata accessor for ClinicalSharingSyncContext, MEMORY[0x277CBCE78]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = v18 - v8;
  v10 = MEMORY[0x277CBCF38];
  sub_251AFD990(0, &qword_27F479408, MEMORY[0x277CBCF38]);
  v12 = v11;
  v13 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v15 = v18 - v14;
  sub_251B26C14(*a1);
  v18[1] = a2;
  type metadata accessor for ClinicalSharingSyncContext(0);

  sub_251C70A24();
  sub_251A82284();
  sub_251C709F4();
  (*(v7 + 8))(v9, v6);
  sub_251AFDA08(&qword_27F479410, &qword_27F479408, v10, MEMORY[0x277CBCF40]);
  v16 = sub_251C70A94();
  result = (*(v13 + 8))(v15, v12);
  *v18[0] = v16;
  return result;
}

void sub_251B4B034(uint64_t a1)
{
  if (!qword_27F47A6A0)
  {
    v1 = MEMORY[0x277CBCD88];
    sub_251AFD990(255, &qword_2813E21B0, MEMORY[0x277CBCD88]);
    v2 = MEMORY[0x277CBCD28];
    sub_251B4B1A4(255, &qword_27F47A6A8, MEMORY[0x277CBCD28]);
    sub_251AFDA08(&qword_2813E21B8, &qword_2813E21B0, v1, MEMORY[0x277CBCD90]);
    sub_251B4B160(&qword_27F47A6B0, &qword_27F47A6A8, v2, MEMORY[0x277CBCD30]);
    v3 = sub_251C708D4();
    if (!v4)
    {
      atomic_store(v3, &qword_27F47A6A0);
    }
  }
}

uint64_t sub_251B4B160(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_251B4B1A4(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_251B4B1A4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v6 = MEMORY[0x277CBCD88];
    sub_251AFD990(255, &qword_2813E21B0, MEMORY[0x277CBCD88]);
    v10[0] = v7;
    v10[1] = v7;
    v11 = sub_251AFDA08(&qword_2813E21B8, &qword_2813E21B0, v6, MEMORY[0x277CBCD90]);
    v12 = v11;
    v8 = a3(a1, v10);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_251B4B298(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_251B4B2E8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_251B4B364()
{
  result = *v0;
  if (*(v0 + 8) == 1)
  {
    return qword_251C7BF50[result];
  }

  return result;
}

void sub_251B4B3AC(void *a1@<X8>)
{
  v2 = *v1;
  if (*(v1 + 8) == 1)
  {
    v2 = qword_251C7BF50[v2];
  }

  *a1 = v2;
}

uint64_t sub_251B4B3D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_251B59518();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_251B4B450()
{
  result = *v0;
  if (*(v0 + 8) == 1)
  {
    return qword_251C7BF88[result];
  }

  return result;
}

void sub_251B4B498(void *a1@<X8>)
{
  v2 = *v1;
  if (*(v1 + 8) == 1)
  {
    v2 = qword_251C7BF88[v2];
  }

  *a1 = v2;
}

uint64_t sub_251B4B4BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_251B5956C();

  return MEMORY[0x28217E238](a1, a2, v4);
}

BOOL sub_251B4B508(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  if (*(a1 + 8) == 1)
  {
    v2 = qword_251C7BF88[v2];
  }

  v3 = *a2;
  if (*(a2 + 8))
  {
    v3 = qword_251C7BF88[v3];
  }

  return v2 == v3;
}

uint64_t sub_251B4B558()
{
  result = *v0;
  if (*(v0 + 8) == 1)
  {
    return qword_251C7BF28[result];
  }

  return result;
}

void sub_251B4B5A0(void *a1@<X8>)
{
  v2 = *v1;
  if (*(v1 + 8) == 1)
  {
    v2 = qword_251C7BF28[v2];
  }

  *a1 = v2;
}

uint64_t sub_251B4B5C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_251B595C0();

  return MEMORY[0x28217E238](a1, a2, v4);
}

BOOL sub_251B4B610(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  if (*(a1 + 8) == 1)
  {
    v2 = qword_251C7BF28[v2];
  }

  v3 = *a2;
  if (*(a2 + 8))
  {
    v3 = qword_251C7BF28[v3];
  }

  return v2 == v3;
}

uint64_t sub_251B4B660@<X0>(uint64_t (*a1)(void)@<X3>, uint64_t a2@<X8>)
{
  result = a1();
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 9) = v5 & 1;
  return result;
}

uint64_t sub_251B4B6C0@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X8>)
{
  result = a2(*a1);
  *a3 = result;
  *(a3 + 8) = v5;
  *(a3 + 9) = v6 & 1;
  return result;
}

uint64_t sub_251B4B6FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_251B5977C();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_251B4B748()
{
  v0 = sub_251C706D4();
  __swift_allocate_value_buffer(v0, qword_27F4A1C88);
  __swift_project_value_buffer(v0, qword_27F4A1C88);
  sub_251B55C24(0, &qword_27F478F88, sub_251A93770, MEMORY[0x277D84560]);
  sub_251A93770(0);
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_251C75800;
  v6 = (v5 + v4);
  v7 = v5 + v4 + *(v2 + 56);
  *v6 = 1;
  *v7 = "blobs";
  *(v7 + 8) = 5;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x277D21870];
  v9 = sub_251C706B4();
  v10 = *(*(v9 - 8) + 104);
  (v10)(v7, v8, v9);
  v11 = v6 + v3 + *(v2 + 56);
  *(v6 + v3) = 2;
  *v11 = "blob_auth";
  *(v11 + 1) = 9;
  v11[16] = 2;
  v10();
  return sub_251C706C4();
}

uint64_t sub_251B4B930(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for PBPushBlobsRequest(0);
  type metadata accessor for PBBlobs(0);
  sub_251B5438C(&qword_27F479DA0, type metadata accessor for PBBlobs, &unk_251C7B5A8);
  return sub_251C70564();
}

uint64_t sub_251B4B9E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  sub_251B55C24(0, &qword_27F47A938, type metadata accessor for PBBlobs, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for PBBlobs(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for PBPushBlobsRequest(0);
  sub_251B59614(a1 + *(v12 + 20), v7, &qword_27F47A938, type metadata accessor for PBBlobs);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_251B59694(v7, &qword_27F47A938, type metadata accessor for PBBlobs);
  }

  sub_251B55C88(v7, v11, type metadata accessor for PBBlobs);
  sub_251B5438C(&qword_27F479DA0, type metadata accessor for PBBlobs, &unk_251C7B5A8);
  sub_251C706A4();
  return sub_251B55CF0(v11, type metadata accessor for PBBlobs);
}

uint64_t sub_251B4BCD8(uint64_t a1, uint64_t a2)
{
  v4 = sub_251B5438C(&qword_27F47A930, type metadata accessor for PBPushBlobsRequest, &unk_251C7B840);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_251B4BD78(uint64_t a1)
{
  v2 = sub_251B5438C(&qword_27F47A918, type metadata accessor for PBPushBlobsRequest, &unk_251C7B878);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_251B4BDE4(uint64_t a1, uint64_t a2)
{
  sub_251B5438C(&qword_27F47A918, type metadata accessor for PBPushBlobsRequest, &unk_251C7B878);

  return sub_251C705C4();
}

uint64_t sub_251B4BE64()
{
  v0 = sub_251C706D4();
  __swift_allocate_value_buffer(v0, qword_27F4A1CA0);
  __swift_project_value_buffer(v0, qword_27F4A1CA0);
  sub_251B55C24(0, &qword_27F478F88, sub_251A93770, MEMORY[0x277D84560]);
  sub_251A93770(0);
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_251C76AF0;
  v6 = (v5 + v4);
  v7 = v5 + v4 + *(v2 + 56);
  *v6 = 1;
  *v7 = "certs";
  *(v7 + 8) = 5;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x277D21870];
  v9 = sub_251C706B4();
  v10 = *(*(v9 - 8) + 104);
  (v10)(v7, v8, v9);
  v11 = v6 + v3 + *(v2 + 56);
  *(v6 + v3) = 2;
  *v11 = "sig";
  *(v11 + 1) = 3;
  v11[16] = 2;
  v10();
  v12 = v6 + 2 * v3 + *(v2 + 56);
  *(v6 + 2 * v3) = 3;
  *v12 = "alg";
  *(v12 + 8) = 3;
  *(v12 + 16) = 2;
  v10();
  return sub_251C706C4();
}

uint64_t sub_251B4C088(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_251C70444();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        sub_251C70534();
        break;
      case 2:
        sub_251C704D4();
        break;
      case 1:
        sub_251C704A4();
        break;
    }
  }

  return result;
}

uint64_t sub_251B4C134(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(*v3 + 16))
  {
    result = sub_251C70614();
    if (v4)
    {
      return result;
    }
  }

  v6 = v3[1];
  v7 = v3[2];
  v8 = v7 >> 62;
  if ((v7 >> 62) > 1)
  {
    if (v8 != 2)
    {
      goto LABEL_12;
    }

    v9 = *(v6 + 16);
    v10 = *(v6 + 24);
  }

  else
  {
    if (!v8)
    {
      if ((v7 & 0xFF000000000000) == 0)
      {
        goto LABEL_12;
      }

LABEL_11:
      result = sub_251C70624();
      if (v4)
      {
        return result;
      }

      goto LABEL_12;
    }

    v9 = v6;
    v10 = v6 >> 32;
  }

  if (v9 != v10)
  {
    goto LABEL_11;
  }

LABEL_12:
  v11 = v3[4];
  v12 = HIBYTE(v11) & 0xF;
  if ((v11 & 0x2000000000000000) == 0)
  {
    v12 = v3[3] & 0xFFFFFFFFFFFFLL;
  }

  if (!v12 || (result = sub_251C70674(), !v4))
  {
    type metadata accessor for PBBlobAuth(0);
    return sub_251C70394();
  }

  return result;
}

uint64_t sub_251B4C244@<X0>(uint64_t a2@<X8>)
{
  *a2 = MEMORY[0x277D84F90];
  *(a2 + 8) = xmmword_251C745D0;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0xE000000000000000;
  return sub_251C703A4();
}

uint64_t sub_251B4C2D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_251B5438C(&qword_27F47A950, type metadata accessor for PBBlobAuth, &unk_251C7B6D8);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_251B4C370(uint64_t a1)
{
  v2 = sub_251B5438C(&qword_27F47A8F8, type metadata accessor for PBBlobAuth, &unk_251C7B710);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_251B4C3DC(uint64_t a1, uint64_t a2)
{
  sub_251B5438C(&qword_27F47A8F8, type metadata accessor for PBBlobAuth, &unk_251C7B710);

  return sub_251C705C4();
}

uint64_t sub_251B4C47C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (type metadata accessor for PBBlob(0), sub_251B5438C(&qword_27F47A8C0, type metadata accessor for PBBlob, &unk_251C7B440), result = sub_251C70694(), !v4))
  {
    type metadata accessor for PBBlobs(0);
    return sub_251C70394();
  }

  return result;
}

uint64_t sub_251B4C5F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_251B5438C(&qword_27F47A958, type metadata accessor for PBBlobs, &unk_251C7B570);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_251B4C690(uint64_t a1)
{
  v2 = sub_251B5438C(&qword_27F479DA0, type metadata accessor for PBBlobs, &unk_251C7B5A8);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_251B4C6FC(uint64_t a1, uint64_t a2)
{
  sub_251B5438C(&qword_27F479DA0, type metadata accessor for PBBlobs, &unk_251C7B5A8);

  return sub_251C705C4();
}

uint64_t sub_251B4C790()
{
  v0 = sub_251C706D4();
  __swift_allocate_value_buffer(v0, qword_27F4A1CD0);
  __swift_project_value_buffer(v0, qword_27F4A1CD0);
  sub_251B55C24(0, &qword_27F478F88, sub_251A93770, MEMORY[0x277D84560]);
  sub_251A93770(0);
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_251C763E0;
  v6 = v5 + v4;
  v7 = v5 + v4 + *(v2 + 56);
  *(v5 + v4) = 1;
  *v7 = "id";
  *(v7 + 8) = 2;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x277D21870];
  v9 = sub_251C706B4();
  v10 = *(*(v9 - 8) + 104);
  (v10)(v7, v8, v9);
  v11 = v6 + v3 + *(v2 + 56);
  *(v6 + v3) = 2;
  *v11 = "content";
  *(v11 + 8) = 7;
  *(v11 + 16) = 2;
  v10();
  v12 = (v6 + 2 * v3);
  v13 = v12 + *(v2 + 56);
  *v12 = 3;
  *v13 = "attributes";
  *(v13 + 1) = 10;
  v13[16] = 2;
  v10();
  v14 = (v6 + 3 * v3);
  v15 = v14 + *(v2 + 56);
  *v14 = 4;
  *v15 = "expiration_time";
  *(v15 + 1) = 15;
  v15[16] = 2;
  v10();
  return sub_251C706C4();
}

uint64_t sub_251B4C9F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_251C70444();
  if (!v4)
  {
    while ((v10 & 1) == 0)
    {
      if (result > 2)
      {
        if (result == 3)
        {
          type metadata accessor for PBBlobAttribute(0);
          sub_251B5438C(&qword_27F47A8A0, type metadata accessor for PBBlobAttribute, &unk_251C7B2D8);
          sub_251C70554();
        }

        else if (result == 4)
        {
          sub_251B4DBA8(a1, v5, a2, a3, type metadata accessor for PBBlob);
        }
      }

      else if (result == 1)
      {
        sub_251C70534();
      }

      else if (result == 2)
      {
        sub_251C704D4();
      }

      result = sub_251C70444();
    }
  }

  return result;
}

uint64_t sub_251B4CB50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = v3[1];
  v9 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v9 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v9 || (result = sub_251C70674(), !v4))
  {
    v11 = v3[2];
    v12 = v3[3];
    v13 = v12 >> 62;
    if ((v12 >> 62) > 1)
    {
      if (v13 != 2)
      {
        goto LABEL_14;
      }

      v14 = *(v11 + 16);
      v15 = *(v11 + 24);
    }

    else
    {
      if (!v13)
      {
        if ((v12 & 0xFF000000000000) == 0)
        {
          goto LABEL_14;
        }

LABEL_13:
        result = sub_251C70624();
        if (v4)
        {
          return result;
        }

        goto LABEL_14;
      }

      v14 = v11;
      v15 = v11 >> 32;
    }

    if (v14 != v15)
    {
      goto LABEL_13;
    }

LABEL_14:
    if (!*(v3[4] + 16) || (type metadata accessor for PBBlobAttribute(0), sub_251B5438C(&qword_27F47A8A0, type metadata accessor for PBBlobAttribute, &unk_251C7B2D8), result = sub_251C70694(), !v4))
    {
      result = sub_251B4DDA8(v3, a1, a2, a3, type metadata accessor for PBBlob);
      if (!v4)
      {
        type metadata accessor for PBBlob(0);
        return sub_251C70394();
      }
    }
  }

  return result;
}