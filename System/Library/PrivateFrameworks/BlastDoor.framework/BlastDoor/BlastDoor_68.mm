void sub_214630348(char *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C917510, &unk_214757860);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v42 - v6;
  sub_214638330(v63);
  v8 = *&a1[OBJC_IVAR____TtC9BlastDoor24_BlastDoorCKUserIdentity_userRecordID];
  if (v8)
  {
    sub_214630EF0(v8, v50);
    if (v2)
    {

      return;
    }

    v49[8] = v50[8];
    v49[9] = v50[9];
    *&v49[10] = v51;
    v49[4] = v50[4];
    v49[5] = v50[5];
    v49[6] = v50[6];
    v49[7] = v50[7];
    v49[0] = v50[0];
    v49[1] = v50[1];
    v49[2] = v50[2];
    v49[3] = v50[3];
    nullsub_1();
    v60 = v49[8];
    v61 = v49[9];
    v62 = *&v49[10];
    v56 = v49[4];
    v57 = v49[5];
    v59 = v49[7];
    v58 = v49[6];
    v52 = v49[0];
    v53 = v49[1];
    v10 = v49[2];
    v9 = v49[3];
  }

  else
  {
    v60 = v63[8];
    v61 = v63[9];
    v62 = v64;
    v56 = v63[4];
    v57 = v63[5];
    v59 = v63[7];
    v58 = v63[6];
    v52 = v63[0];
    v53 = v63[1];
    v10 = v63[2];
    v9 = v63[3];
  }

  v55 = v9;
  v54 = v10;
  sub_214638350(v50);
  v11 = *&a1[OBJC_IVAR____TtC9BlastDoor24_BlastDoorCKUserIdentity_lookupInfo];
  if (v11)
  {
    sub_21463178C(v11, v48);
    if (v2)
    {
      sub_213FB2DF4(&v52, &qword_27C917500, &qword_2146F42A8);

      return;
    }

    memcpy(v47, v48, sizeof(v47));
    nullsub_1();
    v12 = v47;
  }

  else
  {
    v12 = v50;
  }

  memcpy(v49, v12, sizeof(v49));
  if (*&a1[OBJC_IVAR____TtC9BlastDoor24_BlastDoorCKUserIdentity_nameComponents])
  {
    sub_2146D87F8();
    v13 = 0;
  }

  else
  {
    v13 = 1;
  }

  v14 = sub_2146D8808();
  (*(*(v14 - 8) + 56))(v7, v13, 1, v14);
  v15 = *&a1[OBJC_IVAR____TtC9BlastDoor24_BlastDoorCKUserIdentity_contactIdentifiers];
  v47[0] = 0;
  v16 = v15;
  sub_213FB2E54(&v52, v48, &qword_27C917500, &qword_2146F42A8);
  sub_213FB2E54(v49, v48, &qword_27C917520, &qword_2146F42B0);
  sub_2146D98F8();
  v17 = v47[0];
  if (v47[0])
  {

    v18 = *&a1[OBJC_IVAR____TtC9BlastDoor24_BlastDoorCKUserIdentity_publicSharingKey];
    if (v18)
    {
      v19 = v18;
      v65 = sub_2146D8A58();
      v46 = v20;
    }

    else
    {
      v65 = 0;
      v46 = 0xF000000000000000;
    }

    v21 = *&a1[OBJC_IVAR____TtC9BlastDoor24_BlastDoorCKUserIdentity_outOfNetworkPrivateKey];
    if (v21)
    {
      v22 = v21;
      v23 = sub_2146D8A58();
      v44 = v24;
      v45 = v23;
    }

    else
    {
      v44 = 0xF000000000000000;
      v45 = 0;
    }

    v25 = a1[OBJC_IVAR____TtC9BlastDoor24_BlastDoorCKUserIdentity_isCached];
    v42 = a1[OBJC_IVAR____TtC9BlastDoor24_BlastDoorCKUserIdentity_hasICloudAccount];
    v43 = v25;
    v26 = *&a1[OBJC_IVAR____TtC9BlastDoor24_BlastDoorCKUserIdentity_encryptedPersonalInfo];
    if (v26)
    {
      v27 = v26;
      v26 = sub_2146D8A58();
      v29 = v28;
      sub_213FB2DF4(&v52, &qword_27C917500, &qword_2146F42A8);
      sub_213FB2DF4(v49, &qword_27C917520, &qword_2146F42B0);
    }

    else
    {
      sub_213FB2DF4(v49, &qword_27C917520, &qword_2146F42B0);
      sub_213FB2DF4(&v52, &qword_27C917500, &qword_2146F42A8);
      v29 = 0xF000000000000000;
    }

    v30 = *&a1[OBJC_IVAR____TtC9BlastDoor24_BlastDoorCKUserIdentity_publicKeyVersion];

    v31 = v61;
    *(a2 + 128) = v60;
    *(a2 + 144) = v31;
    *(a2 + 160) = v62;
    v32 = v57;
    *(a2 + 64) = v56;
    *(a2 + 80) = v32;
    v33 = v59;
    *(a2 + 96) = v58;
    *(a2 + 112) = v33;
    v34 = v53;
    *a2 = v52;
    *(a2 + 16) = v34;
    v35 = v55;
    *(a2 + 32) = v54;
    *(a2 + 48) = v35;
    v36 = type metadata accessor for CloudKitUserIdentity(0);
    sub_21408AC04(v7, a2 + v36[5], &qword_27C917510, &unk_214757860);
    memcpy((a2 + v36[6]), v49, 0x110uLL);
    *(a2 + v36[7]) = v17;
    v37 = (a2 + v36[8]);
    v38 = v45;
    v39 = v46;
    *v37 = v65;
    v37[1] = v39;
    v40 = (a2 + v36[9]);
    *v40 = v38;
    v40[1] = v44;
    LOBYTE(v38) = v42;
    *(a2 + v36[10]) = v43;
    *(a2 + v36[11]) = v38;
    v41 = (a2 + v36[12]);
    *v41 = v26;
    v41[1] = v29;
    *(a2 + v36[13]) = v30;
  }

  else
  {
    __break(1u);
  }
}

id sub_21463084C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C917510, &unk_214757860);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v64 - v3;
  v5 = v0[9];
  v85 = v0[8];
  v86 = v5;
  v87 = *(v0 + 20);
  v6 = v0[5];
  v81 = v0[4];
  v82 = v6;
  v7 = v0[7];
  v83 = v0[6];
  v84 = v7;
  v8 = v0[1];
  v77 = *v0;
  v78 = v8;
  v9 = v0[3];
  v79 = v0[2];
  v80 = v9;
  if (get_enum_tag_for_layout_string_9BlastDoor12MBDRichCardsVSg_0(&v77) == 1)
  {
    v10 = 0;
  }

  else
  {
    v76[8] = v85;
    v76[9] = v86;
    *&v76[10] = v87;
    v76[4] = v81;
    v76[5] = v82;
    v76[6] = v83;
    v76[7] = v84;
    v76[0] = v77;
    v76[1] = v78;
    v76[2] = v79;
    v76[3] = v80;
    v10 = sub_214631EAC();
  }

  v11 = type metadata accessor for CloudKitUserIdentity(0);
  memcpy(v76, v0 + v11[6], sizeof(v76));
  enum_tag_for_layout_string_9BlastDoor12MBDRichCardsVSg_0 = get_enum_tag_for_layout_string_9BlastDoor12MBDRichCardsVSg_0(v76);
  v13 = 0;
  if (enum_tag_for_layout_string_9BlastDoor12MBDRichCardsVSg_0 != 1)
  {
    memcpy(v74, v76, sizeof(v74));
    v13 = sub_214632150();
  }

  v73 = v13;
  sub_213FB2E54(v0 + v11[5], v4, &qword_27C917510, &unk_214757860);
  v14 = sub_2146D8808();
  v15 = *(v14 - 8);
  result = (*(v15 + 48))(v4, 1, v14);
  v17 = 0;
  if (result != 1)
  {
    v17 = sub_2146D87E8();
    result = (*(v15 + 8))(v4, v14);
  }

  v18 = *(v0 + v11[7]);
  v74[0] = MEMORY[0x277D84F90];
  v19 = *(v18 + 16);
  if (v19)
  {
    v72 = v17;
    v20 = v10;
    v21 = 0;
    v22 = v18 + 40;
    while (v21 < *(v18 + 16))
    {

      sub_2146D9588();

      MEMORY[0x2160547D0](v23);
      if (*((v74[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v74[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v71 = *((v74[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_2146D9938();
      }

      ++v21;
      result = sub_2146D9958();
      v22 += 16;
      if (v19 == v21)
      {
        v10 = v20;
        v17 = v72;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_15:
    sub_21404A8B8(0, &unk_27C9174A0, 0x277CCACA8);
    v24 = sub_2146D98E8();

    v25 = 0;
    if (*(v1 + v11[8] + 8) >> 60 != 15)
    {
      v25 = sub_2146D8A38();
    }

    v26 = *(v1 + v11[9] + 8) >> 60;
    v71 = v25;
    if (v26 == 15)
    {
      v69 = 0;
    }

    else
    {
      v69 = sub_2146D8A38();
    }

    v27 = *(v1 + v11[10]);
    v28 = *(v1 + v11[11]);
    v29 = *(v1 + v11[12] + 8) >> 60;
    v72 = v24;
    v70 = v28;
    v68 = v27;
    if (v29 == 15)
    {
      v66 = 0;
    }

    else
    {
      v66 = sub_2146D8A38();
    }

    v67 = *(v1 + v11[13]);
    v65 = type metadata accessor for _BlastDoorCKUserIdentity();
    v30 = objc_allocWithZone(v65);
    v31 = OBJC_IVAR____TtC9BlastDoor24_BlastDoorCKUserIdentity_userRecordID;
    *&v30[OBJC_IVAR____TtC9BlastDoor24_BlastDoorCKUserIdentity_userRecordID] = 0;
    v32 = OBJC_IVAR____TtC9BlastDoor24_BlastDoorCKUserIdentity_nameComponents;
    *&v30[OBJC_IVAR____TtC9BlastDoor24_BlastDoorCKUserIdentity_nameComponents] = 0;
    v33 = OBJC_IVAR____TtC9BlastDoor24_BlastDoorCKUserIdentity_lookupInfo;
    *&v30[OBJC_IVAR____TtC9BlastDoor24_BlastDoorCKUserIdentity_lookupInfo] = 0;
    v34 = OBJC_IVAR____TtC9BlastDoor24_BlastDoorCKUserIdentity_publicSharingKey;
    *&v30[OBJC_IVAR____TtC9BlastDoor24_BlastDoorCKUserIdentity_publicSharingKey] = 0;
    v35 = OBJC_IVAR____TtC9BlastDoor24_BlastDoorCKUserIdentity_outOfNetworkPrivateKey;
    *&v30[OBJC_IVAR____TtC9BlastDoor24_BlastDoorCKUserIdentity_outOfNetworkPrivateKey] = 0;
    v36 = OBJC_IVAR____TtC9BlastDoor24_BlastDoorCKUserIdentity_encryptedPersonalInfo;
    *&v30[OBJC_IVAR____TtC9BlastDoor24_BlastDoorCKUserIdentity_encryptedPersonalInfo] = 0;
    v37 = &v30[OBJC_IVAR____TtC9BlastDoor24_BlastDoorCKUserIdentity_UserRecordIDKey];
    strcpy(&v30[OBJC_IVAR____TtC9BlastDoor24_BlastDoorCKUserIdentity_UserRecordIDKey], "UserRecordID");
    v37[13] = 0;
    *(v37 + 7) = -5120;
    v38 = &v30[OBJC_IVAR____TtC9BlastDoor24_BlastDoorCKUserIdentity_NameComponentsKey];
    strcpy(&v30[OBJC_IVAR____TtC9BlastDoor24_BlastDoorCKUserIdentity_NameComponentsKey], "NameComponents");
    v38[15] = -18;
    v39 = &v30[OBJC_IVAR____TtC9BlastDoor24_BlastDoorCKUserIdentity_LookupInfoKey];
    *v39 = 0x6E4970756B6F6F4CLL;
    *(v39 + 1) = 0xEA00000000006F66;
    v40 = &v30[OBJC_IVAR____TtC9BlastDoor24_BlastDoorCKUserIdentity_ContactIdentifiersKey];
    *v40 = 0xD000000000000012;
    *(v40 + 1) = 0x80000002147A5CA0;
    v41 = &v30[OBJC_IVAR____TtC9BlastDoor24_BlastDoorCKUserIdentity_ProtectionDataKey];
    strcpy(&v30[OBJC_IVAR____TtC9BlastDoor24_BlastDoorCKUserIdentity_ProtectionDataKey], "ProtectionData");
    v41[15] = -18;
    v42 = &v30[OBJC_IVAR____TtC9BlastDoor24_BlastDoorCKUserIdentity_OONProtectionDataKey];
    *v42 = 0xD000000000000011;
    *(v42 + 1) = 0x80000002147A5CC0;
    v43 = &v30[OBJC_IVAR____TtC9BlastDoor24_BlastDoorCKUserIdentity_IsCachedKey];
    *v43 = 0x6465686361437349;
    *(v43 + 1) = 0xE800000000000000;
    v44 = &v30[OBJC_IVAR____TtC9BlastDoor24_BlastDoorCKUserIdentity_HasICloudAccountKey];
    *v44 = 0xD000000000000010;
    *(v44 + 1) = 0x80000002147A5CE0;
    v45 = &v30[OBJC_IVAR____TtC9BlastDoor24_BlastDoorCKUserIdentity_EncryptedPersonalInfoKey];
    *v45 = 0xD000000000000015;
    *(v45 + 1) = 0x80000002147A5BE0;
    v46 = &v30[OBJC_IVAR____TtC9BlastDoor24_BlastDoorCKUserIdentity_PublicKeyVersionKey];
    *v46 = 0xD000000000000010;
    *(v46 + 1) = 0x80000002147A5D00;
    *&v30[v31] = v10;
    *&v30[v32] = v17;
    v47 = *&v30[v33];
    v48 = v73;
    *&v30[v33] = v73;
    v49 = v10;
    v50 = v17;
    v51 = v48;

    v53 = v71;
    v52 = v72;
    *&v30[OBJC_IVAR____TtC9BlastDoor24_BlastDoorCKUserIdentity_contactIdentifiers] = v72;
    v54 = *&v30[v34];
    *&v30[v34] = v53;
    v55 = v52;
    v56 = v53;

    v57 = *&v30[v35];
    v58 = v69;
    *&v30[v35] = v69;
    v59 = v58;

    v30[OBJC_IVAR____TtC9BlastDoor24_BlastDoorCKUserIdentity_isCached] = v68;
    v30[OBJC_IVAR____TtC9BlastDoor24_BlastDoorCKUserIdentity_hasICloudAccount] = v70;
    v60 = *&v30[v36];
    v61 = v66;
    *&v30[v36] = v66;
    v62 = v61;

    *&v30[OBJC_IVAR____TtC9BlastDoor24_BlastDoorCKUserIdentity_publicKeyVersion] = v67;
    v75.receiver = v30;
    v75.super_class = v65;
    v63 = objc_msgSendSuper2(&v75, sel_init);

    return v63;
  }

  return result;
}

uint64_t sub_214630EF0@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = sub_2146D95B8();
  v5 = v4;
  v46 = a1;
  v6 = *&a1[OBJC_IVAR____TtC9BlastDoor20_BlastDoorCKRecordID_zoneID];
  v7 = sub_2146D95B8();
  v59 = v8;
  v9 = sub_2146D95B8();
  v58 = v10;
  v41 = v9;
  v42 = v7;
  if (*(v6 + OBJC_IVAR____TtC9BlastDoor24_BlastDoorCKRecordZoneID_anonymousCKUserID))
  {
    v40 = sub_2146D95B8();
    v56 = v11;
  }

  else
  {
    v40 = 0;
    v56 = 0;
  }

  v55 = *(v6 + OBJC_IVAR____TtC9BlastDoor24_BlastDoorCKRecordZoneID_databaseScope);
  sub_2144F57F0(&v66);
  v13 = v66;
  v12 = v67;
  v14 = v69;
  v43 = v68;
  v15 = v70;
  sub_2144F5948(&v95);
  v64 = v95;
  v104 = v96;
  v44 = v97;
  v63 = v98;
  v65 = v99;
  sub_2144F5AA0(v93);
  v60 = v93[0];
  v61 = v93[1];
  v45 = v93[2];
  v62 = v93[3];
  v52 = v94;
  sub_2144F5BB4(v91);
  v53 = v91[0];
  v57 = v91[2];
  v47 = v91[3];
  v48 = v91[1];
  v54 = v92;
  v95 = v3;
  v96 = v5;
  v51 = v15;
  LOBYTE(v93[0]) = v15;
  v66 = 0xD00000000000001BLL;
  v67 = 0x800000021478DA70;
  v68 = 0xD00000000000001CLL;
  v69 = 0x800000021478A360;

  v16 = v49;
  v50 = v13;
  v17 = v13(&v95, v93, &v66);
  if (v16)
  {
    goto LABEL_8;
  }

  v37 = v3;
  v38 = v5;
  if ((v17 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v21 = 0xD00000000000001BLL;
    v21[1] = 0x800000021478DA70;
    v21[2] = 0xD00000000000001CLL;
    v21[3] = 0x800000021478A360;
    swift_willThrow();

LABEL_8:

    v22 = v53;
    v18 = v12;
    v20 = v47;

    v23 = v43;
    v24 = v44;
    v25 = v54;
    v26 = v48;
    v27 = v52;
    v28 = v45;
    v29 = v63;
LABEL_9:
    v66 = v50;
    v67 = v18;
    v68 = v23;
    v69 = v14;
    v70 = v51;
    *v71 = v103[0];
    *&v71[3] = *(v103 + 3);
    v72 = v64;
    v73 = v104;
    v74 = v24;
    v75 = v29;
    v76 = v65;
    *v77 = *v102;
    *&v77[3] = *&v102[3];
    v78 = v60;
    v79 = v61;
    v80 = v28;
    v81 = v62;
    v82 = v27;
    *&v83[3] = *&v101[3];
    *v83 = *v101;
    v84 = v22;
    v85 = v26;
    v86 = v57;
    v87 = v20;
    v88 = v25;
    *v89 = v100[0];
    *&v89[3] = *(v100 + 3);
    v90 = v55;
    return sub_2142EAEA4(&v66);
  }

  v18 = v12;

  v95 = v42;
  v96 = v59;
  LOBYTE(v93[0]) = v65;
  v66 = 0xD000000000000019;
  v67 = 0x800000021478DA90;
  v68 = 0xD00000000000001CLL;
  v69 = 0x800000021478A360;

  v19 = v64(&v95, v93, &v66);
  v20 = v47;
  v26 = v48;
  if ((v19 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v32 = 0xD000000000000019;
    v32[1] = 0x800000021478DA90;
    v32[2] = 0xD00000000000001CLL;
    v32[3] = 0x800000021478A360;
    swift_willThrow();

    v22 = v53;
    v27 = v52;
    v29 = v63;

    v23 = v37;
    v14 = v38;
    v25 = v54;
    v24 = v44;
    v28 = v45;
    goto LABEL_9;
  }

  v95 = v41;
  v96 = v58;
  v27 = v52;
  LOBYTE(v93[0]) = v52;
  v66 = 0xD00000000000001ALL;
  v67 = 0x800000021478DAB0;
  v68 = 0xD00000000000001CLL;
  v69 = 0x800000021478A360;

  v31 = v60(&v95, v93, &v66);
  if ((v31 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v34 = 0xD00000000000001ALL;
    v34[1] = 0x800000021478DAB0;
    v34[2] = 0xD00000000000001CLL;
    v34[3] = 0x800000021478A360;
    swift_willThrow();

    v22 = v53;

    v23 = v37;
    v14 = v38;
    v24 = v42;
    v29 = v59;
    v25 = v54;
    v28 = v45;
    goto LABEL_9;
  }

  v95 = v40;
  v96 = v56;
  v25 = v54;
  LOBYTE(v93[0]) = v54;
  v66 = 0xD000000000000022;
  v67 = 0x800000021478DAD0;
  v68 = 0xD00000000000001CLL;
  v69 = 0x800000021478A360;

  sub_213FDC9D0(v57, v47);
  v33 = v53(&v95, v93, &v66);
  v22 = v53;
  if ((v33 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v36 = 0xD000000000000022;
    v36[1] = 0x800000021478DAD0;
    v36[2] = 0xD00000000000001CLL;
    v36[3] = 0x800000021478A360;
    swift_willThrow();

    sub_213FDC6D0(v57, v47);
    v23 = v37;
    v14 = v38;
    v28 = v41;
    v24 = v42;
    v29 = v59;
    v62 = v58;
    goto LABEL_9;
  }

  sub_213FDC6D0(v57, v47);

  result = sub_213FDC6D0(v57, v47);
  *a2 = v50;
  *(a2 + 8) = v12;
  *(a2 + 16) = v37;
  *(a2 + 24) = v38;
  *(a2 + 32) = v51;
  *(a2 + 33) = v103[0];
  *(a2 + 36) = *(v103 + 3);
  v35 = v104;
  *(a2 + 40) = v64;
  *(a2 + 48) = v35;
  *(a2 + 56) = v42;
  *(a2 + 64) = v59;
  *(a2 + 72) = v65;
  *(a2 + 73) = *v102;
  *(a2 + 76) = *&v102[3];
  *(a2 + 80) = v60;
  *(a2 + 88) = v61;
  *(a2 + 96) = v41;
  *(a2 + 104) = v58;
  *(a2 + 112) = v52;
  *(a2 + 116) = *&v101[3];
  *(a2 + 113) = *v101;
  *(a2 + 120) = v53;
  *(a2 + 128) = v48;
  *(a2 + 136) = v40;
  *(a2 + 144) = v56;
  *(a2 + 152) = v54;
  *(a2 + 156) = *(v100 + 3);
  *(a2 + 153) = v100[0];
  *(a2 + 160) = v55;
  return result;
}

void sub_21463178C(char *a1@<X0>, uint64_t a2@<X8>)
{
  sub_214638330(v87);
  v5 = *&a1[OBJC_IVAR____TtC9BlastDoor34_BlastDoorCKUserIdentityLookupInfo_userRecordID];
  if (v5)
  {
    sub_214630EF0(v5, &v59);
    if (v2)
    {

      return;
    }

    v56 = *&v63[64];
    v57 = *&v63[80];
    v58 = *&v63[96];
    v52 = *v63;
    v53 = *&v63[16];
    v54 = *&v63[32];
    v55 = *&v63[48];
    v48 = v59;
    v49 = v60;
    v50 = v61;
    v51 = v62;
    nullsub_1();
    v84 = v56;
    v85 = v57;
    v86 = v58;
    v80 = v52;
    v81 = v53;
    v82 = v54;
    v83 = v55;
    v76 = v48;
    v77 = v49;
    v7 = v50;
    v6 = v51;
  }

  else
  {
    v84 = v87[8];
    v85 = v87[9];
    v86 = v88;
    v80 = v87[4];
    v81 = v87[5];
    v82 = v87[6];
    v83 = v87[7];
    v76 = v87[0];
    v77 = v87[1];
    v7 = v87[2];
    v6 = v87[3];
  }

  v78 = v7;
  v79 = v6;
  if (*&a1[OBJC_IVAR____TtC9BlastDoor34_BlastDoorCKUserIdentityLookupInfo_emailAddress])
  {
    v9 = sub_2146D95B8();
  }

  else
  {
    v9 = 0;
    v8 = 0;
  }

  v47 = v8;
  v10 = *&a1[OBJC_IVAR____TtC9BlastDoor34_BlastDoorCKUserIdentityLookupInfo_phoneNumber];
  v35 = a2;
  if (v10)
  {
    v10 = sub_2146D95B8();
  }

  else
  {
    v11 = 0;
  }

  v36 = v10;
  v42 = a1[OBJC_IVAR____TtC9BlastDoor34_BlastDoorCKUserIdentityLookupInfo_shouldReportMissingIdentity];
  v12 = *&a1[OBJC_IVAR____TtC9BlastDoor34_BlastDoorCKUserIdentityLookupInfo_encryptedPersonalInfo];
  v43 = v11;
  sub_213FB2E54(&v76, &v59, &qword_27C917500, &qword_2146F42A8);
  if (v12)
  {
    v13 = v12;
    v12 = sub_2146D8A58();
    v15 = v14;
  }

  else
  {
    v15 = 0xF000000000000000;
  }

  v40 = v15;
  v41 = v12;
  sub_213FDCA18(v12, v15);
  sub_2144F5508(&v59);
  v16 = v59;
  v17 = *(&v60 + 1);
  v18 = v60;
  v19 = v61;
  sub_2144F553C(&v48);
  *&v73[119] = v83;
  *&v73[135] = v84;
  *&v73[151] = v85;
  *&v73[55] = v79;
  *&v73[71] = v80;
  *&v73[87] = v81;
  *&v73[103] = v82;
  *&v73[7] = v76;
  *&v73[23] = v77;
  v37 = *(&v48 + 1);
  v46 = v49;
  v44 = v48;
  v45 = *(&v49 + 1);
  v38 = v50;
  v39 = v19;
  *&v73[167] = v86;
  *&v73[39] = v78;
  *&v48 = v9;
  *(&v48 + 1) = v47;
  v72 = v19;
  *&v59 = 0xD00000000000002BLL;
  *(&v59 + 1) = 0x800000021478DA10;
  *&v60 = 0xD00000000000001CLL;
  *(&v60 + 1) = 0x800000021478A360;
  v89 = 0x800000021478A360;

  sub_213FDC9D0(v18, v17);
  v20 = (v16)(&v48, &v72, &v59);
  if (v2)
  {

    sub_213FB2DF4(&v76, &qword_27C917500, &qword_2146F42A8);
LABEL_20:

    v28 = v40;
    v22 = *(&v16 + 1);
    sub_213FDC6BC(v41, v40);

    sub_213FDC6D0(v18, v17);
    v24 = v38;
    v23 = v37;
LABEL_21:
    *&v59 = v16;
    *(&v59 + 1) = v22;
    *&v60 = v18;
    *(&v60 + 1) = v17;
    LOBYTE(v61) = v39;
    *(&v61 + 1) = *v75;
    DWORD1(v61) = *&v75[3];
    *(&v61 + 1) = v44;
    *&v62 = v23;
    *(&v62 + 1) = v46;
    *v63 = v45;
    v63[8] = v24;
    *&v63[41] = *&v73[32];
    *&v63[25] = *&v73[16];
    *&v63[9] = *v73;
    v64 = *&v73[96];
    *&v63[89] = *&v73[80];
    *&v63[73] = *&v73[64];
    *&v63[57] = *&v73[48];
    *&v67[15] = *&v73[159];
    *v67 = *&v73[144];
    v66 = *&v73[128];
    v65 = *&v73[112];
    v68 = v42;
    *v69 = v74[0];
    *&v69[3] = *(v74 + 3);
    v70 = *(&v16 + 1);
    v71 = v28;
    sub_2142EADA0(&v59);
    return;
  }

  if ((v20 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v26 = 0xD00000000000002BLL;
    v26[1] = 0x800000021478DA10;
    v27 = v89;
    v26[2] = 0xD00000000000001CLL;
    v26[3] = v27;
    swift_willThrow();

    sub_213FB2DF4(&v76, &qword_27C917500, &qword_2146F42A8);
    goto LABEL_20;
  }

  sub_213FDC6D0(v18, v17);
  v21 = v89;

  v22 = *(&v16 + 1);

  sub_213FDC6D0(v18, v17);
  v23 = v37;
  *&v48 = v36;
  *(&v48 + 1) = v43;
  v24 = v38;
  v72 = v38;
  *&v59 = 0xD00000000000002ALL;
  *(&v59 + 1) = 0x800000021478DA40;
  *&v60 = 0xD00000000000001CLL;
  *(&v60 + 1) = v21;

  sub_213FDC9D0(v46, v45);
  v25 = v44(&v48, &v72, &v59);
  if ((v25 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v34 = 0xD00000000000002ALL;
    v34[1] = 0x800000021478DA40;
    v34[2] = 0xD00000000000001CLL;
    v34[3] = v89;
    swift_willThrow();

    sub_213FB2DF4(&v76, &qword_27C917500, &qword_2146F42A8);

    v28 = v40;
    sub_213FDC6BC(v41, v40);

    sub_213FDC6D0(v46, v45);
    v18 = v9;
    v17 = v47;
    goto LABEL_21;
  }

  sub_213FDC6D0(v46, v45);

  sub_213FB2DF4(&v76, &qword_27C917500, &qword_2146F42A8);

  sub_213FDC6BC(v41, v40);

  sub_213FDC6D0(v46, v45);
  v29 = *&v73[96];
  *(v35 + 185) = *&v73[112];
  v30 = *&v73[144];
  *(v35 + 201) = *&v73[128];
  *(v35 + 217) = v30;
  *(v35 + 232) = *&v73[159];
  v31 = *&v73[32];
  *(v35 + 121) = *&v73[48];
  v32 = *&v73[80];
  *(v35 + 137) = *&v73[64];
  *(v35 + 153) = v32;
  *(v35 + 169) = v29;
  v33 = *&v73[16];
  *(v35 + 73) = *v73;
  *(v35 + 89) = v33;
  *v35 = v16;
  *(v35 + 16) = v9;
  *(v35 + 24) = v47;
  *(v35 + 32) = v39;
  *(v35 + 40) = v44;
  *(v35 + 48) = v37;
  *(v35 + 56) = v36;
  *(v35 + 64) = v43;
  *(v35 + 72) = v38;
  *(v35 + 105) = v31;
  *(v35 + 248) = v42;
  *(v35 + 256) = v41;
  *(v35 + 264) = v40;
}

id sub_214631EAC()
{
  if (!v0[8])
  {
    goto LABEL_8;
  }

  v1 = v0[3];
  v2 = v0[13];
  v4 = v0[17];
  v3 = v0[18];
  v5 = v0[20];

  v6 = sub_2146D9588();

  if (!v2)
  {
    goto LABEL_8;
  }

  v7 = sub_2146D9588();

  if (v3)
  {
    if (v3 == 1)
    {
      goto LABEL_8;
    }

    v8 = sub_2146D9588();
    sub_213FDC6D0(v4, v3);
    v3 = v8;
  }

  v9 = type metadata accessor for _BlastDoorCKRecordZoneID();
  v10 = objc_allocWithZone(v9);
  v11 = OBJC_IVAR____TtC9BlastDoor24_BlastDoorCKRecordZoneID_anonymousCKUserID;
  *&v10[OBJC_IVAR____TtC9BlastDoor24_BlastDoorCKRecordZoneID_anonymousCKUserID] = 0;
  v12 = &v10[OBJC_IVAR____TtC9BlastDoor24_BlastDoorCKRecordZoneID_ZoneNameKey];
  *v12 = 0x656D614E656E6F5ALL;
  *(v12 + 1) = 0xE800000000000000;
  v13 = &v10[OBJC_IVAR____TtC9BlastDoor24_BlastDoorCKRecordZoneID_OwnerNameKey];
  *v13 = 0x6D614E72656E776FLL;
  *(v13 + 1) = 0xE900000000000065;
  v14 = &v10[OBJC_IVAR____TtC9BlastDoor24_BlastDoorCKRecordZoneID_AnonymousCKUserIDKey];
  *v14 = 0xD000000000000011;
  *(v14 + 1) = 0x80000002147944C0;
  v15 = &v10[OBJC_IVAR____TtC9BlastDoor24_BlastDoorCKRecordZoneID_DatabaseScopeKey];
  *v15 = 0xD000000000000010;
  *(v15 + 1) = 0x80000002147A5C30;
  *&v10[OBJC_IVAR____TtC9BlastDoor24_BlastDoorCKRecordZoneID_zoneName] = v6;
  *&v10[OBJC_IVAR____TtC9BlastDoor24_BlastDoorCKRecordZoneID_ownerName] = v7;
  *&v10[v11] = v3;
  *&v10[OBJC_IVAR____TtC9BlastDoor24_BlastDoorCKRecordZoneID_databaseScope] = v5;
  v25.receiver = v10;
  v25.super_class = v9;
  v16 = objc_msgSendSuper2(&v25, sel_init);
  if (v1)
  {
    v17 = v16;

    v18 = sub_2146D9588();

    v19 = type metadata accessor for _BlastDoorCKRecordID();
    v20 = objc_allocWithZone(v19);
    v21 = &v20[OBJC_IVAR____TtC9BlastDoor20_BlastDoorCKRecordID_RecordNameKey];
    *v21 = 0x614E64726F636552;
    *(v21 + 1) = 0xEA0000000000656DLL;
    v22 = &v20[OBJC_IVAR____TtC9BlastDoor20_BlastDoorCKRecordID_ZoneIDKey];
    *v22 = 0x4449656E6F5ALL;
    *(v22 + 1) = 0xE600000000000000;
    *&v20[OBJC_IVAR____TtC9BlastDoor20_BlastDoorCKRecordID_recordName] = v18;
    *&v20[OBJC_IVAR____TtC9BlastDoor20_BlastDoorCKRecordID_zoneID] = v17;
    v24.receiver = v20;
    v24.super_class = v19;
    return objc_msgSendSuper2(&v24, sel_init);
  }

LABEL_8:
  result = sub_2146DA018();
  __break(1u);
  return result;
}

id sub_214632150()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v4 = *(v0 + 56);
  v3 = *(v0 + 64);
  v5 = *(v0 + 224);
  v36[8] = *(v0 + 208);
  v36[9] = v5;
  v37 = *(v0 + 240);
  v6 = *(v0 + 160);
  v36[4] = *(v0 + 144);
  v36[5] = v6;
  v7 = *(v0 + 192);
  v36[6] = *(v0 + 176);
  v36[7] = v7;
  v8 = *(v0 + 96);
  v36[0] = *(v0 + 80);
  v36[1] = v8;
  v9 = *(v0 + 128);
  v36[2] = *(v0 + 112);
  v36[3] = v9;
  v10 = *(v0 + 248);
  v11 = *(v0 + 264);
  if (get_enum_tag_for_layout_string_9BlastDoor12MBDRichCardsVSg_0(v36) == 1)
  {
    v12 = 0;
    if (!v1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v12 = sub_214631EAC();
    if (!v1)
    {
LABEL_3:
      if (!v3)
      {
        goto LABEL_10;
      }

      goto LABEL_8;
    }
  }

  if (v1 == 1)
  {
    goto LABEL_14;
  }

  v13 = sub_2146D9588();
  sub_213FDC6D0(v2, v1);
  v1 = v13;
  if (v3)
  {
LABEL_8:
    if (v3 != 1)
    {

      v14 = sub_2146D9588();
      sub_213FDC6D0(v4, v3);
      v3 = v14;
      goto LABEL_10;
    }

LABEL_14:
    result = sub_2146DA018();
    __break(1u);
    return result;
  }

LABEL_10:
  if (v11 >> 60 == 15)
  {
    v15 = 0;
  }

  else
  {
    v15 = sub_2146D8A38();
  }

  v16 = type metadata accessor for _BlastDoorCKUserIdentityLookupInfo();
  v17 = objc_allocWithZone(v16);
  v18 = OBJC_IVAR____TtC9BlastDoor34_BlastDoorCKUserIdentityLookupInfo_emailAddress;
  *&v17[OBJC_IVAR____TtC9BlastDoor34_BlastDoorCKUserIdentityLookupInfo_emailAddress] = 0;
  v19 = OBJC_IVAR____TtC9BlastDoor34_BlastDoorCKUserIdentityLookupInfo_phoneNumber;
  *&v17[OBJC_IVAR____TtC9BlastDoor34_BlastDoorCKUserIdentityLookupInfo_phoneNumber] = 0;
  v20 = OBJC_IVAR____TtC9BlastDoor34_BlastDoorCKUserIdentityLookupInfo_userRecordID;
  *&v17[OBJC_IVAR____TtC9BlastDoor34_BlastDoorCKUserIdentityLookupInfo_userRecordID] = 0;
  v21 = OBJC_IVAR____TtC9BlastDoor34_BlastDoorCKUserIdentityLookupInfo_encryptedPersonalInfo;
  *&v17[OBJC_IVAR____TtC9BlastDoor34_BlastDoorCKUserIdentityLookupInfo_encryptedPersonalInfo] = 0;
  v22 = &v17[OBJC_IVAR____TtC9BlastDoor34_BlastDoorCKUserIdentityLookupInfo_EmailAddressKey];
  strcpy(&v17[OBJC_IVAR____TtC9BlastDoor34_BlastDoorCKUserIdentityLookupInfo_EmailAddressKey], "EmailAddress");
  v22[13] = 0;
  *(v22 + 7) = -5120;
  v23 = &v17[OBJC_IVAR____TtC9BlastDoor34_BlastDoorCKUserIdentityLookupInfo_PhoneNumberKey];
  *v23 = 0x6D754E656E6F6850;
  *(v23 + 1) = 0xEB00000000726562;
  v24 = &v17[OBJC_IVAR____TtC9BlastDoor34_BlastDoorCKUserIdentityLookupInfo_RecordIDKey];
  *v24 = 0x444964726F636552;
  *(v24 + 1) = 0xE800000000000000;
  v25 = &v17[OBJC_IVAR____TtC9BlastDoor34_BlastDoorCKUserIdentityLookupInfo_ReportsMissingKey];
  strcpy(&v17[OBJC_IVAR____TtC9BlastDoor34_BlastDoorCKUserIdentityLookupInfo_ReportsMissingKey], "ReportsMissing");
  v25[15] = -18;
  v26 = &v17[OBJC_IVAR____TtC9BlastDoor34_BlastDoorCKUserIdentityLookupInfo_EncryptedPersonalInfoKey];
  *v26 = 0xD000000000000015;
  *(v26 + 1) = 0x80000002147A5BE0;
  *&v17[v18] = v1;
  *&v17[v19] = v3;
  v27 = *&v17[v20];
  *&v17[v20] = v12;
  v28 = v1;
  v29 = v3;
  v30 = v12;

  v17[OBJC_IVAR____TtC9BlastDoor34_BlastDoorCKUserIdentityLookupInfo_shouldReportMissingIdentity] = v10;
  v31 = *&v17[v21];
  *&v17[v21] = v15;
  v32 = v15;

  v35.receiver = v17;
  v35.super_class = v16;
  v33 = objc_msgSendSuper2(&v35, sel_init);

  return v33;
}

id sub_2146324B0(void *a1)
{
  v2 = v1;
  v71 = OBJC_IVAR____TtC9BlastDoor28_BlastDoorCKShareParticipant_inviterID;
  *&v2[OBJC_IVAR____TtC9BlastDoor28_BlastDoorCKShareParticipant_inviterID] = 0;
  v72 = OBJC_IVAR____TtC9BlastDoor28_BlastDoorCKShareParticipant_protectionInfo;
  *&v2[OBJC_IVAR____TtC9BlastDoor28_BlastDoorCKShareParticipant_protectionInfo] = 0;
  v73 = OBJC_IVAR____TtC9BlastDoor28_BlastDoorCKShareParticipant_encryptedPersonalInfo;
  *&v2[OBJC_IVAR____TtC9BlastDoor28_BlastDoorCKShareParticipant_encryptedPersonalInfo] = 0;
  v74 = OBJC_IVAR____TtC9BlastDoor28_BlastDoorCKShareParticipant_invitationToken;
  *&v2[OBJC_IVAR____TtC9BlastDoor28_BlastDoorCKShareParticipant_invitationToken] = 0;
  v75 = OBJC_IVAR____TtC9BlastDoor28_BlastDoorCKShareParticipant_protectionInfoPublicKey;
  *&v2[OBJC_IVAR____TtC9BlastDoor28_BlastDoorCKShareParticipant_protectionInfoPublicKey] = 0;
  v4 = &v2[OBJC_IVAR____TtC9BlastDoor28_BlastDoorCKShareParticipant_ParticipantIDKey];
  strcpy(&v2[OBJC_IVAR____TtC9BlastDoor28_BlastDoorCKShareParticipant_ParticipantIDKey], "ParticipantID");
  *(v4 + 7) = -4864;
  v5 = &v2[OBJC_IVAR____TtC9BlastDoor28_BlastDoorCKShareParticipant_InviterIDKey];
  *v5 = 0x4972657469766E49;
  *(v5 + 1) = 0xE900000000000044;
  v6 = &v2[OBJC_IVAR____TtC9BlastDoor28_BlastDoorCKShareParticipant_UserIdentityKey];
  strcpy(&v2[OBJC_IVAR____TtC9BlastDoor28_BlastDoorCKShareParticipant_UserIdentityKey], "UserIdentity");
  v6[13] = 0;
  *(v6 + 7) = -5120;
  v7 = &v2[OBJC_IVAR____TtC9BlastDoor28_BlastDoorCKShareParticipant_IsCurrentUserKey];
  strcpy(&v2[OBJC_IVAR____TtC9BlastDoor28_BlastDoorCKShareParticipant_IsCurrentUserKey], "IsCurrentUser");
  *(v7 + 7) = -4864;
  v8 = &v2[OBJC_IVAR____TtC9BlastDoor28_BlastDoorCKShareParticipant_IsOrgAdminUserKey];
  strcpy(&v2[OBJC_IVAR____TtC9BlastDoor28_BlastDoorCKShareParticipant_IsOrgAdminUserKey], "IsOrgAdminUser");
  v8[15] = -18;
  v9 = &v2[OBJC_IVAR____TtC9BlastDoor28_BlastDoorCKShareParticipant_AcceptanceStatusKey];
  *v9 = 0xD000000000000010;
  *(v9 + 1) = 0x80000002147A5D50;
  v10 = &v2[OBJC_IVAR____TtC9BlastDoor28_BlastDoorCKShareParticipant_RoleKey];
  *v10 = 1701869908;
  *(v10 + 1) = 0xE400000000000000;
  v11 = &v2[OBJC_IVAR____TtC9BlastDoor28_BlastDoorCKShareParticipant_PermissionKey];
  *v11 = 0x697373696D726550;
  *(v11 + 1) = 0xEA00000000006E6FLL;
  v12 = &v2[OBJC_IVAR____TtC9BlastDoor28_BlastDoorCKShareParticipant_OriginalParticipantRoleKey];
  *v12 = 0xD000000000000017;
  *(v12 + 1) = 0x80000002147A5D70;
  v13 = &v2[OBJC_IVAR____TtC9BlastDoor28_BlastDoorCKShareParticipant_OriginalAcceptanceStatusKey];
  *v13 = 0xD000000000000018;
  *(v13 + 1) = 0x80000002147A5D90;
  v14 = &v2[OBJC_IVAR____TtC9BlastDoor28_BlastDoorCKShareParticipant_OriginalPermissionKey];
  *v14 = 0xD000000000000012;
  *(v14 + 1) = 0x80000002147A5DB0;
  v15 = &v2[OBJC_IVAR____TtC9BlastDoor28_BlastDoorCKShareParticipant_ProtectionInfoKey];
  strcpy(&v2[OBJC_IVAR____TtC9BlastDoor28_BlastDoorCKShareParticipant_ProtectionInfoKey], "ProtectionInfo");
  v15[15] = -18;
  v16 = &v2[OBJC_IVAR____TtC9BlastDoor28_BlastDoorCKShareParticipant_EncryptedPersonalInfoKey];
  *v16 = 0xD000000000000015;
  *(v16 + 1) = 0x80000002147A5BE0;
  v17 = &v2[OBJC_IVAR____TtC9BlastDoor28_BlastDoorCKShareParticipant_CreatedInProcessKey];
  *v17 = 0xD000000000000010;
  *(v17 + 1) = 0x80000002147A5DD0;
  v18 = &v2[OBJC_IVAR____TtC9BlastDoor28_BlastDoorCKShareParticipant_AcceptedInProcessKey];
  *v18 = 0xD000000000000011;
  *(v18 + 1) = 0x80000002147A5DF0;
  v19 = &v2[OBJC_IVAR____TtC9BlastDoor28_BlastDoorCKShareParticipant_DeviceToDeviceShareInvitationTokenKey];
  *v19 = 0x6974617469766E49;
  *(v19 + 1) = 0xEF6E656B6F546E6FLL;
  v20 = &v2[OBJC_IVAR____TtC9BlastDoor28_BlastDoorCKShareParticipant_ProtectionInfoPublicIdentityKey];
  *v20 = 0xD000000000000017;
  *(v20 + 1) = 0x80000002147A5E10;
  v21 = &v2[OBJC_IVAR____TtC9BlastDoor28_BlastDoorCKShareParticipant_WantsNewInvitationTokenKey];
  *v21 = 0xD000000000000017;
  *(v21 + 1) = 0x80000002147943A0;
  v22 = &v2[OBJC_IVAR____TtC9BlastDoor28_BlastDoorCKShareParticipant_MutableInvitationTokenStatus];
  *v22 = 0xD00000000000001CLL;
  *(v22 + 1) = 0x80000002147A5E30;
  v23 = &v2[OBJC_IVAR____TtC9BlastDoor28_BlastDoorCKShareParticipant_IsAnonymousInvitedParticipant];
  *v23 = 0xD00000000000001DLL;
  *(v23 + 1) = 0x80000002147943C0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913160, &unk_21473D7C0);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_2146E6910;
  *(v24 + 32) = sub_21404A8B8(0, &unk_27C9174A0, 0x277CCACA8);
  *(v24 + 40) = sub_21404A8B8(0, &unk_27C9174D0, 0x277CCAB68);
  sub_2146D9D08();

  if (v81)
  {
    if (swift_dynamicCast())
    {
      type metadata accessor for _BlastDoorCKUserIdentity();

      v25 = sub_2146D9CF8();

      if (v25)
      {
        v70 = v79;

        v26 = sub_2146D9588();

        v27 = [a1 decodeInt64ForKey_];

        if (v27 < 5 && ((0x1Bu >> v27) & 1) != 0)
        {

          v28 = sub_2146D9588();

          v29 = [a1 &selRef:v28 decodeObjectOfClasses:? forKey:? + 7];

          if (v29 < 4)
          {
            v69 = v29;

            v30 = sub_2146D9588();

            v31 = [a1 decodeInt64ForKey_];

            if (v31 < 4)
            {
              v68 = v31;

              v32 = sub_2146D9588();

              v33 = [a1 decodeInt64ForKey_];

              if (v33 < 5 && ((0x1Bu >> v33) & 1) != 0)
              {

                v65 = sub_2146D9588();

                v67 = [a1 decodeInt64ForKey_];

                if (v67 < 4)
                {

                  v66 = sub_2146D9588();

                  v34 = [a1 decodeInt64ForKey_];

                  if (v34 < 4)
                  {
                    *&v2[OBJC_IVAR____TtC9BlastDoor28_BlastDoorCKShareParticipant_participantID] = v79;
                    v35 = v34;
                    v77 = v70;

                    v36 = sub_2146D9CF8();

                    v37 = *&v2[v71];
                    *&v2[v71] = v36;

                    *&v2[OBJC_IVAR____TtC9BlastDoor28_BlastDoorCKShareParticipant_userIdentity] = v25;
                    v76 = v25;

                    v38 = sub_2146D9588();

                    v39 = [a1 decodeBoolForKey_];

                    v2[OBJC_IVAR____TtC9BlastDoor28_BlastDoorCKShareParticipant_isCurrentUser] = v39;

                    v40 = sub_2146D9588();

                    v41 = [a1 decodeBoolForKey_];

                    v2[OBJC_IVAR____TtC9BlastDoor28_BlastDoorCKShareParticipant_isOrgAdminUser] = v41;
                    v2[OBJC_IVAR____TtC9BlastDoor28_BlastDoorCKShareParticipant_role] = 0x302000100uLL >> (8 * v27);
                    v2[OBJC_IVAR____TtC9BlastDoor28_BlastDoorCKShareParticipant_acceptanceStatus] = v69;
                    v2[OBJC_IVAR____TtC9BlastDoor28_BlastDoorCKShareParticipant_permission] = v68;
                    v2[OBJC_IVAR____TtC9BlastDoor28_BlastDoorCKShareParticipant_originalParticipantRole] = 0x302000100uLL >> (8 * v33);
                    v2[OBJC_IVAR____TtC9BlastDoor28_BlastDoorCKShareParticipant_originalAcceptanceStatus] = v67;
                    v2[OBJC_IVAR____TtC9BlastDoor28_BlastDoorCKShareParticipant_originalPermission] = v35;
                    sub_21404A8B8(0, &qword_27C9041F0, 0x277CBEA90);

                    v42 = sub_2146D9CF8();

                    v43 = *&v2[v72];
                    *&v2[v72] = v42;

                    v44 = sub_2146D9CF8();

                    v45 = *&v2[v73];
                    *&v2[v73] = v44;

                    v46 = sub_2146D9588();

                    v47 = [a1 decodeBoolForKey_];

                    v2[OBJC_IVAR____TtC9BlastDoor28_BlastDoorCKShareParticipant_createdInProcess] = v47;

                    v48 = sub_2146D9588();

                    v49 = [a1 decodeBoolForKey_];

                    v2[OBJC_IVAR____TtC9BlastDoor28_BlastDoorCKShareParticipant_acceptedInProcess] = v49;
                    sub_21404A8B8(0, &unk_27C9131C0, off_278175128);

                    v50 = sub_2146D9CF8();

                    v51 = *&v2[v74];
                    *&v2[v74] = v50;

                    v52 = sub_2146D9CF8();

                    v53 = *&v2[v75];
                    *&v2[v75] = v52;

                    v54 = sub_2146D9588();

                    LOBYTE(v50) = [a1 decodeBoolForKey_];

                    v2[OBJC_IVAR____TtC9BlastDoor28_BlastDoorCKShareParticipant_wantsNewInvitationToken] = v50;

                    v55 = sub_2146D9588();

                    LOBYTE(v50) = [a1 decodeBoolForKey_];

                    v2[OBJC_IVAR____TtC9BlastDoor28_BlastDoorCKShareParticipant_isAnonymousInvitedParticipant] = v50;
                    v56 = OBJC_IVAR____TtC9BlastDoor28_BlastDoorCKShareParticipant_invitationTokenStatus;
                    v2[OBJC_IVAR____TtC9BlastDoor28_BlastDoorCKShareParticipant_invitationTokenStatus] = 1;

                    v57 = sub_2146D9588();

                    LODWORD(v50) = [a1 containsValueForKey_];

                    if (v50)
                    {

                      v58 = sub_2146D9588();

                      v59 = [a1 decodeInt64ForKey_];

                      if (v59 <= 3)
                      {
                        v2[v56] = v59;
                      }
                    }

                    else
                    {
                    }

                    v78.receiver = v2;
                    v78.super_class = type metadata accessor for _BlastDoorCKShareParticipant();
                    v64 = objc_msgSendSuper2(&v78, sel_init);

                    return v64;
                  }
                }
              }
            }
          }
        }
      }

      else
      {
      }
    }
  }

  else
  {
    sub_213FB2DF4(v80, &qword_27C913170, &qword_2146EAB20);
  }

  if (qword_280B35360 != -1)
  {
    swift_once();
  }

  v60 = qword_280B35410;
  v61 = sub_2146D9BC8();
  if (os_log_type_enabled(v60, v61))
  {
    v62 = swift_slowAlloc();
    *v62 = 0;
    _os_log_impl(&dword_213FAF000, v60, v61, "Unable to decode CKShareParticipant", v62, 2u);
    MEMORY[0x216056AC0](v62, -1, -1);
  }

  type metadata accessor for _BlastDoorCKShareParticipant();
  swift_deallocPartialClassInstance();
  return 0;
}

unint64_t sub_214633270@<X0>(unint64_t result@<X0>, _BYTE *a2@<X8>)
{
  v2 = 0x302040100uLL >> (8 * result);
  if (result >= 5)
  {
    LOBYTE(v2) = 4;
  }

  *a2 = v2;
  return result;
}

unint64_t sub_214633298@<X0>(unint64_t result@<X0>, char *a2@<X8>)
{
  v2 = 4;
  if (result < 4)
  {
    v2 = result;
  }

  *a2 = v2;
  return result;
}

void sub_2146332D4(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC9BlastDoor28_BlastDoorCKShareParticipant_participantID);
  v4 = sub_2146D9588();
  [a1 encodeObject:v3 forKey:v4];

  v5 = *(v1 + OBJC_IVAR____TtC9BlastDoor28_BlastDoorCKShareParticipant_inviterID);
  v6 = sub_2146D9588();
  [a1 encodeObject:v5 forKey:v6];

  v7 = *(v1 + OBJC_IVAR____TtC9BlastDoor28_BlastDoorCKShareParticipant_userIdentity);
  v8 = sub_2146D9588();
  [a1 encodeObject:v7 forKey:v8];

  v9 = *(v1 + OBJC_IVAR____TtC9BlastDoor28_BlastDoorCKShareParticipant_isCurrentUser);
  v10 = sub_2146D9588();
  [a1 encodeBool:v9 forKey:v10];

  v11 = *(v1 + OBJC_IVAR____TtC9BlastDoor28_BlastDoorCKShareParticipant_isOrgAdminUser);
  v12 = sub_2146D9588();
  [a1 encodeBool:v11 forKey:v12];

  v13 = qword_214771328[*(v1 + OBJC_IVAR____TtC9BlastDoor28_BlastDoorCKShareParticipant_role)];
  v14 = sub_2146D9588();
  [a1 encodeInt64:v13 forKey:v14];

  v15 = *(v1 + OBJC_IVAR____TtC9BlastDoor28_BlastDoorCKShareParticipant_acceptanceStatus);
  v16 = sub_2146D9588();
  [a1 encodeInt64:v15 forKey:v16];

  v17 = *(v1 + OBJC_IVAR____TtC9BlastDoor28_BlastDoorCKShareParticipant_permission);
  v18 = sub_2146D9588();
  [a1 encodeInt64:v17 forKey:v18];

  v19 = qword_214771328[*(v1 + OBJC_IVAR____TtC9BlastDoor28_BlastDoorCKShareParticipant_originalParticipantRole)];
  v20 = sub_2146D9588();
  [a1 encodeInt64:v19 forKey:v20];

  v21 = *(v1 + OBJC_IVAR____TtC9BlastDoor28_BlastDoorCKShareParticipant_originalAcceptanceStatus);
  v22 = sub_2146D9588();
  [a1 encodeInt64:v21 forKey:v22];

  v23 = *(v1 + OBJC_IVAR____TtC9BlastDoor28_BlastDoorCKShareParticipant_originalPermission);
  v24 = sub_2146D9588();
  [a1 encodeInt64:v23 forKey:v24];

  v25 = *(v1 + OBJC_IVAR____TtC9BlastDoor28_BlastDoorCKShareParticipant_protectionInfo);
  v26 = sub_2146D9588();
  [a1 encodeObject:v25 forKey:v26];

  v27 = *(v1 + OBJC_IVAR____TtC9BlastDoor28_BlastDoorCKShareParticipant_encryptedPersonalInfo);
  v28 = sub_2146D9588();
  [a1 encodeObject:v27 forKey:v28];

  v29 = *(v1 + OBJC_IVAR____TtC9BlastDoor28_BlastDoorCKShareParticipant_createdInProcess);
  v30 = sub_2146D9588();
  [a1 encodeBool:v29 forKey:v30];

  v31 = *(v1 + OBJC_IVAR____TtC9BlastDoor28_BlastDoorCKShareParticipant_acceptedInProcess);
  v32 = sub_2146D9588();
  [a1 encodeBool:v31 forKey:v32];

  v33 = *(v1 + OBJC_IVAR____TtC9BlastDoor28_BlastDoorCKShareParticipant_invitationToken);
  v34 = sub_2146D9588();
  [a1 encodeObject:v33 forKey:v34];

  v35 = *(v1 + OBJC_IVAR____TtC9BlastDoor28_BlastDoorCKShareParticipant_protectionInfoPublicKey);
  v36 = sub_2146D9588();
  [a1 encodeObject:v35 forKey:v36];

  v37 = *(v1 + OBJC_IVAR____TtC9BlastDoor28_BlastDoorCKShareParticipant_wantsNewInvitationToken);
  v38 = sub_2146D9588();
  [a1 encodeBool:v37 forKey:v38];

  v39 = *(v1 + OBJC_IVAR____TtC9BlastDoor28_BlastDoorCKShareParticipant_isAnonymousInvitedParticipant);
  v40 = sub_2146D9588();
  [a1 encodeBool:v39 forKey:v40];

  v41 = *(v1 + OBJC_IVAR____TtC9BlastDoor28_BlastDoorCKShareParticipant_invitationTokenStatus);
  v42 = sub_2146D9588();
  [a1 encodeInt64:v41 forKey:v42];
}

uint64_t sub_214633900()
{
  v1 = v0;
  v2 = [objc_allocWithZone(MEMORY[0x277CCAAB0]) initRequiringSecureCoding_];
  v3 = sub_2146D9588();
  type metadata accessor for _BlastDoorCKShareParticipant();
  [v2 setClassName:v3 forClass:swift_getObjCClassFromMetadata()];

  v4 = sub_2146D9588();
  sub_21404A8B8(0, &unk_27C9131C0, off_278175128);
  [v2 setClassName:v4 forClass:swift_getObjCClassFromMetadata()];

  v5 = sub_2146D9588();
  type metadata accessor for _BlastDoorCKUserIdentity();
  [v2 setClassName:v5 forClass:swift_getObjCClassFromMetadata()];

  v6 = sub_2146D9588();
  type metadata accessor for _BlastDoorCKRecordID();
  [v2 setClassName:v6 forClass:swift_getObjCClassFromMetadata()];

  v7 = sub_2146D9588();
  type metadata accessor for _BlastDoorCKRecordZoneID();
  [v2 setClassName:v7 forClass:swift_getObjCClassFromMetadata()];

  v8 = sub_2146D9588();
  type metadata accessor for _BlastDoorCKUserIdentityLookupInfo();
  [v2 setClassName:v8 forClass:swift_getObjCClassFromMetadata()];

  [v2 encodeObject:v1 forKey:*MEMORY[0x277CCA308]];
  v9 = [v2 encodedData];
  v10 = sub_2146D8A58();

  return v10;
}

uint64_t sub_214633F50()
{
  v1 = *v0;
  sub_2146DA958();
  MEMORY[0x2160558A0](qword_214771328[v1]);
  return sub_2146DA9B8();
}

uint64_t sub_214633FD8(uint64_t a1)
{
  v2 = *v1;
  sub_2146DA958();
  MEMORY[0x2160558A0](qword_214771328[v2]);
  return sub_2146DA9B8();
}

uint64_t sub_2146340F4()
{
  v1 = *v0;
  sub_2146DA958();
  MEMORY[0x2160558A0](v1);
  return sub_2146DA9B8();
}

uint64_t sub_21463413C(uint64_t a1)
{
  v2 = *v1;
  sub_2146DA958();
  MEMORY[0x2160558A0](v2);
  return sub_2146DA9B8();
}

void sub_214634280(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC9BlastDoor24_BlastDoorCKUserIdentity_userRecordID);
  v4 = sub_2146D9588();
  [a1 encodeObject:v3 forKey:v4];

  v5 = *(v1 + OBJC_IVAR____TtC9BlastDoor24_BlastDoorCKUserIdentity_nameComponents);
  v6 = sub_2146D9588();
  [a1 encodeObject:v5 forKey:v6];

  v7 = *(v1 + OBJC_IVAR____TtC9BlastDoor24_BlastDoorCKUserIdentity_lookupInfo);
  v8 = sub_2146D9588();
  [a1 encodeObject:v7 forKey:v8];

  v9 = *(v1 + OBJC_IVAR____TtC9BlastDoor24_BlastDoorCKUserIdentity_contactIdentifiers);
  v10 = sub_2146D9588();
  [a1 encodeObject:v9 forKey:v10];

  v11 = *(v1 + OBJC_IVAR____TtC9BlastDoor24_BlastDoorCKUserIdentity_publicSharingKey);
  v12 = sub_2146D9588();
  [a1 encodeObject:v11 forKey:v12];

  v13 = *(v1 + OBJC_IVAR____TtC9BlastDoor24_BlastDoorCKUserIdentity_outOfNetworkPrivateKey);
  v14 = sub_2146D9588();
  [a1 encodeObject:v13 forKey:v14];

  v15 = *(v1 + OBJC_IVAR____TtC9BlastDoor24_BlastDoorCKUserIdentity_isCached);
  v16 = sub_2146D9588();
  [a1 encodeBool:v15 forKey:v16];

  v17 = *(v1 + OBJC_IVAR____TtC9BlastDoor24_BlastDoorCKUserIdentity_hasICloudAccount);
  v18 = sub_2146D9588();
  [a1 encodeBool:v17 forKey:v18];

  v19 = *(v1 + OBJC_IVAR____TtC9BlastDoor24_BlastDoorCKUserIdentity_encryptedPersonalInfo);
  v20 = sub_2146D9588();
  [a1 encodeObject:v19 forKey:v20];

  v21 = *(v1 + OBJC_IVAR____TtC9BlastDoor24_BlastDoorCKUserIdentity_publicKeyVersion);
  v22 = sub_2146D9588();
  [a1 encodeInt64:v21 forKey:v22];
}

id sub_2146347E4(void *a1)
{
  v2 = v1;
  v4 = &v2[OBJC_IVAR____TtC9BlastDoor20_BlastDoorCKRecordID_RecordNameKey];
  *v4 = 0x614E64726F636552;
  *(v4 + 1) = 0xEA0000000000656DLL;
  v5 = &v2[OBJC_IVAR____TtC9BlastDoor20_BlastDoorCKRecordID_ZoneIDKey];
  *v5 = 0x4449656E6F5ALL;
  *(v5 + 1) = 0xE600000000000000;
  sub_21404A8B8(0, &unk_27C9174A0, 0x277CCACA8);
  v6 = sub_2146D9CF8();
  if (v6)
  {
    v7 = v6;
    type metadata accessor for _BlastDoorCKRecordZoneID();

    v8 = sub_2146D9CF8();

    if (v8)
    {
      *&v2[OBJC_IVAR____TtC9BlastDoor20_BlastDoorCKRecordID_recordName] = v7;
      *&v2[OBJC_IVAR____TtC9BlastDoor20_BlastDoorCKRecordID_zoneID] = v8;
      v14.receiver = v2;
      v14.super_class = type metadata accessor for _BlastDoorCKRecordID();
      v9 = objc_msgSendSuper2(&v14, sel_init);

      return v9;
    }
  }

  if (qword_280B35360 != -1)
  {
    swift_once();
  }

  v11 = qword_280B35410;
  v12 = sub_2146D9BC8();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_213FAF000, v11, v12, "Unable to decode CKRecordID", v13, 2u);
    MEMORY[0x216056AC0](v13, -1, -1);
  }

  type metadata accessor for _BlastDoorCKRecordID();
  swift_deallocPartialClassInstance();
  return 0;
}

void sub_214634A10(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC9BlastDoor20_BlastDoorCKRecordID_recordName);
  v4 = sub_2146D9588();
  [a1 encodeObject:v3 forKey:v4];

  v5 = *(v1 + OBJC_IVAR____TtC9BlastDoor20_BlastDoorCKRecordID_zoneID);
  v6 = sub_2146D9588();
  [a1 encodeObject:v5 forKey:v6];
}

id sub_214634C38(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC9BlastDoor24_BlastDoorCKRecordZoneID_anonymousCKUserID;
  *&v2[OBJC_IVAR____TtC9BlastDoor24_BlastDoorCKRecordZoneID_anonymousCKUserID] = 0;
  v5 = &v2[OBJC_IVAR____TtC9BlastDoor24_BlastDoorCKRecordZoneID_ZoneNameKey];
  *v5 = 0x656D614E656E6F5ALL;
  *(v5 + 1) = 0xE800000000000000;
  v6 = &v2[OBJC_IVAR____TtC9BlastDoor24_BlastDoorCKRecordZoneID_OwnerNameKey];
  *v6 = 0x6D614E72656E776FLL;
  *(v6 + 1) = 0xE900000000000065;
  v7 = &v2[OBJC_IVAR____TtC9BlastDoor24_BlastDoorCKRecordZoneID_AnonymousCKUserIDKey];
  *v7 = 0xD000000000000011;
  *(v7 + 1) = 0x80000002147944C0;
  v8 = &v2[OBJC_IVAR____TtC9BlastDoor24_BlastDoorCKRecordZoneID_DatabaseScopeKey];
  *v8 = 0xD000000000000010;
  *(v8 + 1) = 0x80000002147A5C30;
  sub_21404A8B8(0, &unk_27C9174A0, 0x277CCACA8);
  v9 = sub_2146D9CF8();
  if (v9)
  {
    v10 = v9;

    v11 = sub_2146D9CF8();

    if (v11)
    {
      *&v2[OBJC_IVAR____TtC9BlastDoor24_BlastDoorCKRecordZoneID_zoneName] = v10;
      *&v2[OBJC_IVAR____TtC9BlastDoor24_BlastDoorCKRecordZoneID_ownerName] = v11;
      v12 = v10;
      v13 = v11;

      v14 = sub_2146D9CF8();

      v15 = *&v2[v4];
      *&v2[v4] = v14;

      v16 = sub_2146D9588();

      v17 = [a1 decodeIntegerForKey_];

      *&v2[OBJC_IVAR____TtC9BlastDoor24_BlastDoorCKRecordZoneID_databaseScope] = v17;
      v23.receiver = v2;
      v23.super_class = type metadata accessor for _BlastDoorCKRecordZoneID();
      v18 = objc_msgSendSuper2(&v23, sel_init);

      return v18;
    }
  }

  if (qword_280B35360 != -1)
  {
    swift_once();
  }

  v20 = qword_280B35410;
  v21 = sub_2146D9BC8();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&dword_213FAF000, v20, v21, "Unable to decode CKRecordZoneID", v22, 2u);
    MEMORY[0x216056AC0](v22, -1, -1);
  }

  type metadata accessor for _BlastDoorCKRecordZoneID();
  swift_deallocPartialClassInstance();
  return 0;
}

void sub_214634F80(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC9BlastDoor24_BlastDoorCKRecordZoneID_zoneName);
  v4 = sub_2146D9588();
  [a1 encodeObject:v3 forKey:v4];

  v5 = *(v1 + OBJC_IVAR____TtC9BlastDoor24_BlastDoorCKRecordZoneID_ownerName);
  v6 = sub_2146D9588();
  [a1 encodeObject:v5 forKey:v6];

  v7 = *(v1 + OBJC_IVAR____TtC9BlastDoor24_BlastDoorCKRecordZoneID_anonymousCKUserID);
  v8 = sub_2146D9588();
  [a1 encodeObject:v7 forKey:v8];

  v9 = *(v1 + OBJC_IVAR____TtC9BlastDoor24_BlastDoorCKRecordZoneID_databaseScope);
  v10 = sub_2146D9588();
  [a1 encodeInteger:v9 forKey:v10];
}

void sub_2146352A8(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC9BlastDoor34_BlastDoorCKUserIdentityLookupInfo_emailAddress);
  v4 = sub_2146D9588();
  [a1 encodeObject:v3 forKey:v4];

  v5 = *(v1 + OBJC_IVAR____TtC9BlastDoor34_BlastDoorCKUserIdentityLookupInfo_phoneNumber);
  v6 = sub_2146D9588();
  [a1 encodeObject:v5 forKey:v6];

  v7 = *(v1 + OBJC_IVAR____TtC9BlastDoor34_BlastDoorCKUserIdentityLookupInfo_userRecordID);
  v8 = sub_2146D9588();
  [a1 encodeObject:v7 forKey:v8];

  v9 = *(v1 + OBJC_IVAR____TtC9BlastDoor34_BlastDoorCKUserIdentityLookupInfo_shouldReportMissingIdentity);
  v10 = sub_2146D9588();
  [a1 encodeBool:v9 forKey:v10];

  v11 = *(v1 + OBJC_IVAR____TtC9BlastDoor34_BlastDoorCKUserIdentityLookupInfo_encryptedPersonalInfo);
  v12 = sub_2146D9588();
  [a1 encodeObject:v11 forKey:v12];
}

id sub_214635524(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

BOOL sub_21463562C(void *a1, void *a2)
{
  v3 = a1[3];
  if (!v3)
  {
    goto LABEL_28;
  }

  v4 = a2[3];
  if (!v4)
  {
    goto LABEL_28;
  }

  v5 = a1[7];
  v6 = a1[8];
  v7 = a1[12];
  v8 = a1[13];
  v9 = a1[18];
  v10 = a2[7];
  v11 = a2[8];
  v12 = a2[12];
  v13 = a2[13];
  v14 = a2[18];
  v18 = a2[17];
  v19 = a1[17];
  v16 = a2[20];
  v17 = a1[20];
  if ((a1[2] != a2[2] || v3 != v4) && (sub_2146DA6A8() & 1) == 0)
  {
    return 0;
  }

  if (!v6 || !v11)
  {
    goto LABEL_28;
  }

  if ((v5 != v10 || v6 != v11) && (sub_2146DA6A8() & 1) == 0)
  {
    return 0;
  }

  if (!v8 || !v13)
  {
    goto LABEL_28;
  }

  if ((v7 != v12 || v8 != v13) && (sub_2146DA6A8() & 1) == 0)
  {
    return 0;
  }

  if (v9 == 1 || v14 == 1)
  {
LABEL_28:
    while (1)
    {
      sub_2146DA018();
      __break(1u);
    }
  }

  if (v9)
  {
    if (!v14 || (v19 != v18 || v9 != v14) && (sub_2146DA6A8() & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (v14)
    {
      return 0;
    }

    sub_213FDC9D0(v18, 0);
    sub_213FDC9D0(v19, 0);
  }

  return v17 == v16;
}

uint64_t sub_214635818(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  v3 = *(a1 + 24);
  v5 = *(a1 + 56);
  v6 = *(a1 + 64);
  v7 = *(a1 + 224);
  v137[8] = *(a1 + 208);
  v137[9] = v7;
  v138 = *(a1 + 240);
  v8 = *(a1 + 160);
  v137[4] = *(a1 + 144);
  v137[5] = v8;
  v9 = *(a1 + 176);
  v137[7] = *(a1 + 192);
  v137[6] = v9;
  v10 = *(a1 + 96);
  v137[0] = *(a1 + 80);
  v137[1] = v10;
  v11 = *(a1 + 112);
  v137[3] = *(a1 + 128);
  v137[2] = v11;
  v12 = *(a1 + 248);
  v14 = *(a1 + 256);
  v13 = *(a1 + 264);
  v15 = *(a2 + 16);
  v16 = *(a2 + 24);
  v17 = *(a2 + 56);
  v18 = *(a2 + 64);
  v19 = *(a2 + 224);
  v139[8] = *(a2 + 208);
  v139[9] = v19;
  v140 = *(a2 + 240);
  v20 = *(a2 + 160);
  v139[4] = *(a2 + 144);
  v139[5] = v20;
  v21 = *(a2 + 176);
  v139[7] = *(a2 + 192);
  v139[6] = v21;
  v22 = *(a2 + 96);
  v139[0] = *(a2 + 80);
  v139[1] = v22;
  v23 = *(a2 + 112);
  v139[3] = *(a2 + 128);
  v139[2] = v23;
  if (v3 != 1 && v16 != 1)
  {
    v25 = *(a2 + 248);
    v26 = *(a2 + 264);
    if (v3)
    {
      if (!v16)
      {
        return 0;
      }

      v93 = *(a2 + 256);
      v94 = v14;
      v95 = v13;
      if ((v4 != v15 || v3 != v16) && (sub_2146DA6A8() & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      if (v16)
      {
        return 0;
      }

      v93 = *(a2 + 256);
      v94 = v14;
      v95 = v13;
      sub_213FDC9D0(v15, 0);
      sub_213FDC9D0(v4, 0);
    }

    if (v6 != 1 && v18 != 1)
    {
      if (v6)
      {
        if (!v18 || (v5 != v17 || v6 != v18) && (sub_2146DA6A8() & 1) == 0)
        {
          return 0;
        }
      }

      else
      {
        if (v18)
        {
          return 0;
        }

        sub_213FDC9D0(v17, 0);
        sub_213FDC9D0(v5, 0);
      }

      v27 = *(a1 + 192);
      v28 = *(a1 + 224);
      __src[8] = *(a1 + 208);
      __src[9] = v28;
      v29 = *(a1 + 128);
      v30 = *(a1 + 160);
      __src[4] = *(a1 + 144);
      __src[5] = v30;
      v32 = *(a1 + 160);
      v31 = *(a1 + 176);
      v33 = v31;
      __src[7] = *(a1 + 192);
      __src[6] = v31;
      v34 = *(a1 + 96);
      __src[0] = *(a1 + 80);
      __src[1] = v34;
      v35 = *(a1 + 112);
      v37 = *(a1 + 80);
      v36 = *(a1 + 96);
      v38 = v35;
      __src[3] = *(a1 + 128);
      __src[2] = v35;
      v39 = *(a2 + 224);
      *(&__src[18] + 8) = *(a2 + 208);
      *(&__src[19] + 8) = v39;
      v40 = *(a2 + 192);
      *(&__src[16] + 8) = *(a2 + 176);
      *(&__src[17] + 8) = v40;
      v41 = *(a2 + 112);
      *(&__src[13] + 8) = *(a2 + 128);
      v42 = *(a2 + 160);
      *(&__src[14] + 8) = *(a2 + 144);
      *(&__src[15] + 8) = v42;
      v43 = *(a2 + 96);
      *(&__src[10] + 8) = *(a2 + 80);
      *(&__src[11] + 8) = v43;
      *(&__src[12] + 8) = v41;
      v44 = *(a1 + 224);
      v135[8] = __src[8];
      v135[9] = v44;
      v135[4] = __src[4];
      v135[5] = v32;
      v135[7] = v27;
      v135[6] = v33;
      v135[0] = v37;
      v135[1] = v36;
      v45 = *(a2 + 240);
      *&__src[10] = *(a1 + 240);
      *(&__src[20] + 1) = v45;
      v136 = *(a1 + 240);
      v135[3] = v29;
      v135[2] = v38;
      if (get_enum_tag_for_layout_string_9BlastDoor12MBDRichCardsVSg_0(v135) == 1)
      {
        v46 = *(a2 + 224);
        __dst[8] = *(a2 + 208);
        __dst[9] = v46;
        *&__dst[10] = *(a2 + 240);
        v47 = *(a2 + 160);
        __dst[4] = *(a2 + 144);
        __dst[5] = v47;
        v48 = *(a2 + 192);
        __dst[6] = *(a2 + 176);
        __dst[7] = v48;
        v49 = *(a2 + 96);
        __dst[0] = *(a2 + 80);
        __dst[1] = v49;
        v50 = *(a2 + 128);
        __dst[2] = *(a2 + 112);
        __dst[3] = v50;
        if (get_enum_tag_for_layout_string_9BlastDoor12MBDRichCardsVSg_0(__dst) == 1)
        {
          v51 = *(a1 + 224);
          v131 = *(a1 + 208);
          v132 = v51;
          v133 = *(a1 + 240);
          v52 = *(a1 + 160);
          v127 = *(a1 + 144);
          v128 = v52;
          v53 = *(a1 + 176);
          v130 = *(a1 + 192);
          v129 = v53;
          v54 = *(a1 + 96);
          v123 = *(a1 + 80);
          v124 = v54;
          v55 = *(a1 + 112);
          v126 = *(a1 + 128);
          v125 = v55;
          sub_213FB2E54(v137, &v111, &qword_27C917500, &qword_2146F42A8);
          sub_213FB2E54(v139, &v111, &qword_27C917500, &qword_2146F42A8);
          sub_213FB2DF4(&v123, &qword_27C917500, &qword_2146F42A8);
          goto LABEL_29;
        }

        sub_213FB2E54(v137, &v123, &qword_27C917500, &qword_2146F42A8);
        sub_213FB2E54(v139, &v123, &qword_27C917500, &qword_2146F42A8);
LABEL_27:
        memcpy(__dst, __src, sizeof(__dst));
        sub_213FB2DF4(__dst, &qword_27C917508, &unk_214771300);
        return 0;
      }

      v56 = *(a1 + 192);
      v57 = *(a1 + 224);
      v131 = *(a1 + 208);
      v132 = v57;
      v58 = *(a1 + 128);
      v59 = *(a1 + 160);
      v127 = *(a1 + 144);
      v128 = v59;
      v61 = *(a1 + 160);
      v60 = *(a1 + 176);
      v62 = v60;
      v130 = *(a1 + 192);
      v129 = v60;
      v63 = *(a1 + 96);
      v123 = *(a1 + 80);
      v124 = v63;
      v64 = *(a1 + 112);
      v66 = *(a1 + 80);
      v65 = *(a1 + 96);
      v67 = v64;
      v126 = *(a1 + 128);
      v125 = v64;
      v68 = *(a1 + 224);
      v119 = v131;
      v120 = v68;
      v115 = v127;
      v116 = v61;
      v117 = v62;
      v118 = v56;
      v111 = v66;
      v112 = v65;
      v133 = *(a1 + 240);
      v121 = *(a1 + 240);
      v113 = v67;
      v114 = v58;
      v69 = *(a2 + 224);
      __dst[8] = *(a2 + 208);
      __dst[9] = v69;
      *&__dst[10] = *(a2 + 240);
      v70 = *(a2 + 160);
      __dst[4] = *(a2 + 144);
      __dst[5] = v70;
      v71 = *(a2 + 192);
      __dst[6] = *(a2 + 176);
      __dst[7] = v71;
      v72 = *(a2 + 96);
      __dst[0] = *(a2 + 80);
      __dst[1] = v72;
      v73 = *(a2 + 128);
      __dst[2] = *(a2 + 112);
      __dst[3] = v73;
      if (get_enum_tag_for_layout_string_9BlastDoor12MBDRichCardsVSg_0(__dst) == 1)
      {
        v74 = *(a1 + 224);
        v108 = *(a1 + 208);
        v109 = v74;
        v110 = *(a1 + 240);
        v75 = *(a1 + 160);
        v104 = *(a1 + 144);
        v105 = v75;
        v76 = *(a1 + 192);
        v106 = *(a1 + 176);
        v107 = v76;
        v77 = *(a1 + 96);
        v100 = *(a1 + 80);
        v101 = v77;
        v78 = *(a1 + 128);
        v102 = *(a1 + 112);
        v103 = v78;
        sub_213FB2E54(v137, v98, &qword_27C917500, &qword_2146F42A8);
        sub_213FB2E54(v139, v98, &qword_27C917500, &qword_2146F42A8);
        sub_213FB2E54(&v123, v98, &qword_27C917500, &qword_2146F42A8);
        sub_2142EAEA4(&v100);
        goto LABEL_27;
      }

      v80 = *(a2 + 224);
      v108 = *(a2 + 208);
      v109 = v80;
      v110 = *(a2 + 240);
      v81 = *(a2 + 160);
      v104 = *(a2 + 144);
      v105 = v81;
      v82 = *(a2 + 192);
      v106 = *(a2 + 176);
      v107 = v82;
      v83 = *(a2 + 96);
      v100 = *(a2 + 80);
      v101 = v83;
      v84 = *(a2 + 128);
      v102 = *(a2 + 112);
      v103 = v84;
      v85 = sub_21463562C(&v111, &v100);
      v96[8] = v108;
      v96[9] = v109;
      v97 = v110;
      v96[4] = v104;
      v96[5] = v105;
      v96[6] = v106;
      v96[7] = v107;
      v96[0] = v100;
      v96[1] = v101;
      v96[2] = v102;
      v96[3] = v103;
      sub_213FB2E54(v137, v98, &qword_27C917500, &qword_2146F42A8);
      sub_213FB2E54(v139, v98, &qword_27C917500, &qword_2146F42A8);
      sub_213FB2E54(&v123, v98, &qword_27C917500, &qword_2146F42A8);
      sub_2142EAEA4(v96);
      v98[8] = v119;
      v98[9] = v120;
      v99 = v121;
      v98[4] = v115;
      v98[5] = v116;
      v98[6] = v117;
      v98[7] = v118;
      v98[0] = v111;
      v98[1] = v112;
      v98[2] = v113;
      v98[3] = v114;
      sub_2142EAEA4(v98);
      v86 = *(a1 + 224);
      v108 = *(a1 + 208);
      v109 = v86;
      v110 = *(a1 + 240);
      v87 = *(a1 + 160);
      v104 = *(a1 + 144);
      v105 = v87;
      v88 = *(a1 + 192);
      v106 = *(a1 + 176);
      v107 = v88;
      v89 = *(a1 + 96);
      v100 = *(a1 + 80);
      v101 = v89;
      v90 = *(a1 + 128);
      v102 = *(a1 + 112);
      v103 = v90;
      sub_213FB2DF4(&v100, &qword_27C917500, &qword_2146F42A8);
      if (v85)
      {
LABEL_29:
        if (v12 == v25)
        {
          if (v95 >> 60 == 15)
          {
            v92 = v94;
            if (v26 >> 60 == 15)
            {
              sub_213FDCA18(v94, v95);
              sub_213FDCA18(v93, v26);
              sub_213FDC6BC(v94, v95);
              return 1;
            }
          }

          else
          {
            v92 = v94;
            if (v26 >> 60 != 15)
            {
              sub_213FDCA18(v94, v95);
              sub_213FDCA18(v93, v26);
              sub_213FDCA18(v94, v95);
              sub_213FDCA18(v93, v26);
              v79 = sub_214466780(v94, v95, v93, v26);
              sub_213FDC6BC(v93, v26);
              sub_213FDC6BC(v93, v26);
              sub_213FDC6BC(v94, v95);
              sub_213FDC6BC(v94, v95);
              return v79;
            }
          }

          sub_213FDCA18(v92, v95);
          sub_213FDCA18(v93, v26);
          sub_213FDC6BC(v92, v95);
          sub_213FDC6BC(v93, v26);
          return 0;
        }
      }

      return 0;
    }
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

BOOL sub_214635FDC(__int128 *a1, __int128 *a2)
{
  v4 = sub_2146D8808();
  v79 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v76 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C917510, &unk_214757860);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v76 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C917518, &unk_214771310);
  MEMORY[0x28223BE20](v10);
  v12 = &v76 - v11;
  v13 = a1[7];
  v14 = a1[9];
  v95 = a1[8];
  v96 = v14;
  v15 = a1[3];
  v16 = a1[5];
  v91 = a1[4];
  v92 = v16;
  v17 = a1[5];
  v18 = a1[6];
  v19 = v18;
  v94 = a1[7];
  v93 = v18;
  v20 = a1[1];
  v90[0] = *a1;
  v90[1] = v20;
  v21 = a1[2];
  v22 = *a1;
  v23 = a1[1];
  v24 = v21;
  v90[3] = a1[3];
  v90[2] = v21;
  v25 = a2[7];
  v26 = a2[9];
  v103 = a2[8];
  v104 = v26;
  v27 = a2[3];
  v28 = a2[5];
  v99 = a2[4];
  v100 = v28;
  v29 = a2[6];
  v30 = a2[5];
  v102 = a2[7];
  v101 = v29;
  v31 = a2[1];
  v98[0] = *a2;
  v98[1] = v31;
  v32 = a2[2];
  v34 = *a2;
  v33 = a2[1];
  v35 = v32;
  v98[3] = a2[3];
  v98[2] = v32;
  v36 = a1[7];
  v37 = a1[9];
  v86[8] = a1[8];
  v86[9] = v37;
  v38 = a1[3];
  v39 = a1[5];
  v86[4] = a1[4];
  v86[5] = v39;
  v40 = a1[6];
  v86[7] = v36;
  v86[6] = v40;
  v41 = a1[1];
  v86[0] = *a1;
  v86[1] = v41;
  v42 = a1[2];
  v86[3] = v38;
  v86[2] = v42;
  v43 = a2[9];
  *(&v86[18] + 8) = v103;
  *(&v86[19] + 8) = v43;
  *(&v86[16] + 8) = v29;
  *(&v86[17] + 8) = v25;
  *(&v86[13] + 8) = v27;
  *(&v86[14] + 8) = v99;
  *(&v86[15] + 8) = v30;
  *(&v86[10] + 8) = v34;
  *(&v86[11] + 8) = v33;
  *(&v86[12] + 8) = v35;
  v44 = a1[9];
  v106[8] = v95;
  v106[9] = v44;
  v106[4] = v91;
  v106[5] = v17;
  v106[7] = v13;
  v106[6] = v19;
  v106[0] = v22;
  v106[1] = v23;
  v97 = *(a1 + 20);
  v105 = *(a2 + 20);
  v45 = *(a2 + 20);
  *&v86[10] = *(a1 + 20);
  *(&v86[20] + 1) = v45;
  v107 = *(a1 + 20);
  v106[3] = v15;
  v106[2] = v24;
  if (get_enum_tag_for_layout_string_9BlastDoor12MBDRichCardsVSg_0(v106) == 1)
  {
    v84[8] = *(&v86[18] + 8);
    v84[9] = *(&v86[19] + 8);
    *&v84[10] = *(&v86[20] + 1);
    v84[4] = *(&v86[14] + 8);
    v84[5] = *(&v86[15] + 8);
    v84[7] = *(&v86[17] + 8);
    v84[6] = *(&v86[16] + 8);
    v84[0] = *(&v86[10] + 8);
    v84[1] = *(&v86[11] + 8);
    v84[3] = *(&v86[13] + 8);
    v84[2] = *(&v86[12] + 8);
    if (get_enum_tag_for_layout_string_9BlastDoor12MBDRichCardsVSg_0(v84) == 1)
    {
      v78 = v6;
      v89[8] = v86[8];
      v89[9] = v86[9];
      *&v89[10] = *&v86[10];
      v89[4] = v86[4];
      v89[5] = v86[5];
      v89[7] = v86[7];
      v89[6] = v86[6];
      v89[0] = v86[0];
      v89[1] = v86[1];
      v89[3] = v86[3];
      v89[2] = v86[2];
      sub_213FB2E54(v90, v88, &qword_27C917500, &qword_2146F42A8);
      sub_213FB2E54(v98, v88, &qword_27C917500, &qword_2146F42A8);
      sub_213FB2DF4(v89, &qword_27C917500, &qword_2146F42A8);
      goto LABEL_10;
    }

    sub_213FB2E54(v90, v89, &qword_27C917500, &qword_2146F42A8);
    sub_213FB2E54(v98, v89, &qword_27C917500, &qword_2146F42A8);
LABEL_7:
    memcpy(v84, v86, 0x150uLL);
    v46 = &qword_27C917508;
    v47 = &unk_214771300;
LABEL_8:
    v48 = v84;
LABEL_16:
    sub_213FB2DF4(v48, v46, v47);
    return 0;
  }

  v89[8] = v86[8];
  v89[9] = v86[9];
  v89[4] = v86[4];
  v89[5] = v86[5];
  v89[7] = v86[7];
  v89[6] = v86[6];
  v89[0] = v86[0];
  v89[1] = v86[1];
  v89[3] = v86[3];
  v89[2] = v86[2];
  v88[8] = v86[8];
  v88[9] = v86[9];
  v88[4] = v86[4];
  v88[5] = v86[5];
  v88[7] = v86[7];
  v88[6] = v86[6];
  v88[0] = v86[0];
  v88[1] = v86[1];
  *&v89[10] = *&v86[10];
  *&v88[10] = *&v86[10];
  v88[3] = v86[3];
  v88[2] = v86[2];
  v84[8] = *(&v86[18] + 8);
  v84[9] = *(&v86[19] + 8);
  *&v84[10] = *(&v86[20] + 1);
  v84[4] = *(&v86[14] + 8);
  v84[5] = *(&v86[15] + 8);
  v84[7] = *(&v86[17] + 8);
  v84[6] = *(&v86[16] + 8);
  v84[0] = *(&v86[10] + 8);
  v84[1] = *(&v86[11] + 8);
  v84[3] = *(&v86[13] + 8);
  v84[2] = *(&v86[12] + 8);
  if (get_enum_tag_for_layout_string_9BlastDoor12MBDRichCardsVSg_0(v84) == 1)
  {
    v87[8] = v86[8];
    v87[9] = v86[9];
    *&v87[10] = *&v86[10];
    v87[4] = v86[4];
    v87[5] = v86[5];
    v87[7] = v86[7];
    v87[6] = v86[6];
    v87[0] = v86[0];
    v87[1] = v86[1];
    v87[3] = v86[3];
    v87[2] = v86[2];
    sub_213FB2E54(v90, v85, &qword_27C917500, &qword_2146F42A8);
    sub_213FB2E54(v98, v85, &qword_27C917500, &qword_2146F42A8);
    sub_213FB2E54(v89, v85, &qword_27C917500, &qword_2146F42A8);
    sub_2142EAEA4(v87);
    goto LABEL_7;
  }

  v78 = v6;
  v87[8] = *(&v86[18] + 8);
  v87[9] = *(&v86[19] + 8);
  *&v87[10] = *(&v86[20] + 1);
  v87[4] = *(&v86[14] + 8);
  v87[5] = *(&v86[15] + 8);
  v87[7] = *(&v86[17] + 8);
  v87[6] = *(&v86[16] + 8);
  v87[0] = *(&v86[10] + 8);
  v87[1] = *(&v86[11] + 8);
  v87[3] = *(&v86[13] + 8);
  v87[2] = *(&v86[12] + 8);
  v49 = sub_21463562C(v88, v87);
  v83[8] = v87[8];
  v83[9] = v87[9];
  *&v83[10] = *&v87[10];
  v83[4] = v87[4];
  v83[5] = v87[5];
  v83[6] = v87[6];
  v83[7] = v87[7];
  v83[0] = v87[0];
  v83[1] = v87[1];
  v83[2] = v87[2];
  v83[3] = v87[3];
  sub_213FB2E54(v90, v85, &qword_27C917500, &qword_2146F42A8);
  sub_213FB2E54(v98, v85, &qword_27C917500, &qword_2146F42A8);
  sub_213FB2E54(v89, v85, &qword_27C917500, &qword_2146F42A8);
  sub_2142EAEA4(v83);
  v85[8] = v88[8];
  v85[9] = v88[9];
  *&v85[10] = *&v88[10];
  v85[4] = v88[4];
  v85[5] = v88[5];
  v85[7] = v88[7];
  v85[6] = v88[6];
  v85[0] = v88[0];
  v85[1] = v88[1];
  v85[3] = v88[3];
  v85[2] = v88[2];
  sub_2142EAEA4(v85);
  v87[8] = v86[8];
  v87[9] = v86[9];
  *&v87[10] = *&v86[10];
  v87[4] = v86[4];
  v87[5] = v86[5];
  v87[7] = v86[7];
  v87[6] = v86[6];
  v87[0] = v86[0];
  v87[1] = v86[1];
  v87[3] = v86[3];
  v87[2] = v86[2];
  sub_213FB2DF4(v87, &qword_27C917500, &qword_2146F42A8);
  if (!v49)
  {
    return 0;
  }

LABEL_10:
  v77 = type metadata accessor for CloudKitUserIdentity(0);
  v50 = *(v77 + 20);
  v51 = *(v10 + 48);
  sub_213FB2E54(a1 + v50, v12, &qword_27C917510, &unk_214757860);
  sub_213FB2E54(a2 + v50, &v12[v51], &qword_27C917510, &unk_214757860);
  v52 = v79;
  v53 = *(v79 + 48);
  if (v53(v12, 1, v4) == 1)
  {
    if (v53(&v12[v51], 1, v4) == 1)
    {
      sub_213FB2DF4(v12, &qword_27C917510, &unk_214757860);
      goto LABEL_19;
    }

LABEL_15:
    v46 = &qword_27C917518;
    v47 = &unk_214771310;
    v48 = v12;
    goto LABEL_16;
  }

  sub_213FB2E54(v12, v9, &qword_27C917510, &unk_214757860);
  if (v53(&v12[v51], 1, v4) == 1)
  {
    (*(v52 + 8))(v9, v4);
    goto LABEL_15;
  }

  v55 = &v12[v51];
  v56 = v78;
  (*(v52 + 32))(v78, v55, v4);
  sub_214638278();
  v57 = sub_2146D9578();
  v58 = *(v52 + 8);
  v58(v56, v4);
  v58(v9, v4);
  sub_213FB2DF4(v12, &qword_27C917510, &unk_214757860);
  if ((v57 & 1) == 0)
  {
    return 0;
  }

LABEL_19:
  v59 = v77;
  v60 = *(v77 + 24);
  memcpy(v87, a1 + v60, sizeof(v87));
  v61 = *(v77 + 24);
  memcpy(v88, a2 + v61, sizeof(v88));
  memcpy(v86, a1 + v60, 0x110uLL);
  memcpy(&v86[17], a2 + v61, 0x110uLL);
  memcpy(v89, a1 + v60, sizeof(v89));
  if (get_enum_tag_for_layout_string_9BlastDoor12MBDRichCardsVSg_0(v89) == 1)
  {
    memcpy(v84, &v86[17], 0x110uLL);
    if (get_enum_tag_for_layout_string_9BlastDoor12MBDRichCardsVSg_0(v84) == 1)
    {
      memcpy(v85, v86, sizeof(v85));
      sub_213FB2E54(v87, v83, &qword_27C917520, &qword_2146F42B0);
      sub_213FB2E54(v88, v83, &qword_27C917520, &qword_2146F42B0);
      sub_213FB2DF4(v85, &qword_27C917520, &qword_2146F42B0);
      goto LABEL_27;
    }

    sub_213FB2E54(v87, v85, &qword_27C917520, &qword_2146F42B0);
    sub_213FB2E54(v88, v85, &qword_27C917520, &qword_2146F42B0);
    goto LABEL_25;
  }

  memcpy(v85, v86, sizeof(v85));
  memcpy(v83, v86, sizeof(v83));
  memcpy(v84, &v86[17], 0x110uLL);
  if (get_enum_tag_for_layout_string_9BlastDoor12MBDRichCardsVSg_0(v84) == 1)
  {
    memcpy(v82, v86, sizeof(v82));
    sub_213FB2E54(v87, v81, &qword_27C917520, &qword_2146F42B0);
    sub_213FB2E54(v88, v81, &qword_27C917520, &qword_2146F42B0);
    sub_213FB2E54(v85, v81, &qword_27C917520, &qword_2146F42B0);
    sub_2142EADA0(v82);
LABEL_25:
    memcpy(v84, v86, sizeof(v84));
    v46 = &unk_27C917528;
    v47 = &unk_214771320;
    goto LABEL_8;
  }

  memcpy(v82, &v86[17], sizeof(v82));
  sub_213FB2E54(v87, v81, &qword_27C917520, &qword_2146F42B0);
  sub_213FB2E54(v88, v81, &qword_27C917520, &qword_2146F42B0);
  sub_213FB2E54(v85, v81, &qword_27C917520, &qword_2146F42B0);
  v62 = sub_214635818(v83, v82);
  memcpy(v80, v82, sizeof(v80));
  sub_2142EADA0(v80);
  memcpy(v81, v83, sizeof(v81));
  sub_2142EADA0(v81);
  memcpy(v82, v86, sizeof(v82));
  sub_213FB2DF4(v82, &qword_27C917520, &qword_2146F42B0);
  if ((v62 & 1) == 0)
  {
    return 0;
  }

LABEL_27:
  if ((sub_2143D53BC(*(a1 + v59[7]), *(a2 + v59[7])) & 1) == 0)
  {
    return 0;
  }

  v63 = v59[8];
  v65 = *(a1 + v63);
  v64 = *(a1 + v63 + 8);
  v66 = (a2 + v63);
  v68 = *v66;
  v67 = v66[1];
  if (v64 >> 60 == 15)
  {
    if (v67 >> 60 != 15)
    {
      goto LABEL_37;
    }

    sub_213FDCA18(v65, v64);
    sub_213FDCA18(v68, v67);
    sub_213FDC6BC(v65, v64);
  }

  else
  {
    if (v67 >> 60 == 15)
    {
      goto LABEL_37;
    }

    sub_213FDCA18(v65, v64);
    sub_213FDCA18(v68, v67);
    v69 = sub_214466780(v65, v64, v68, v67);
    sub_213FDC6BC(v68, v67);
    sub_213FDC6BC(v65, v64);
    if (!v69)
    {
      return 0;
    }
  }

  v70 = v59[9];
  v65 = *(a1 + v70);
  v64 = *(a1 + v70 + 8);
  v71 = (a2 + v70);
  v68 = *v71;
  v67 = v71[1];
  if (v64 >> 60 == 15)
  {
    if (v67 >> 60 == 15)
    {
      sub_213FDCA18(v65, v64);
      sub_213FDCA18(v68, v67);
      sub_213FDC6BC(v65, v64);
      goto LABEL_39;
    }

LABEL_37:
    sub_213FDCA18(v65, v64);
    sub_213FDCA18(v68, v67);
    sub_213FDC6BC(v65, v64);
    sub_213FDC6BC(v68, v67);
    return 0;
  }

  if (v67 >> 60 == 15)
  {
    goto LABEL_37;
  }

  sub_213FDCA18(v65, v64);
  sub_213FDCA18(v68, v67);
  v72 = sub_214466780(v65, v64, v68, v67);
  sub_213FDC6BC(v68, v67);
  sub_213FDC6BC(v65, v64);
  if (!v72)
  {
    return 0;
  }

LABEL_39:
  if (*(a1 + v59[10]) != *(a2 + v59[10]) || *(a1 + v59[11]) != *(a2 + v59[11]))
  {
    return 0;
  }

  v73 = v59[12];
  v65 = *(a1 + v73);
  v64 = *(a1 + v73 + 8);
  v74 = (a2 + v73);
  v68 = *v74;
  v67 = v74[1];
  if (v64 >> 60 != 15)
  {
    if (v67 >> 60 == 15)
    {
      goto LABEL_37;
    }

    sub_213FDCA18(v65, v64);
    sub_213FDCA18(v68, v67);
    v75 = sub_214466780(v65, v64, v68, v67);
    sub_213FDC6BC(v68, v67);
    sub_213FDC6BC(v65, v64);
    if (v75)
    {
      return *(a1 + v59[13]) == *(a2 + v59[13]);
    }

    return 0;
  }

  if (v67 >> 60 != 15)
  {
    goto LABEL_37;
  }

  sub_213FDCA18(v65, v64);
  sub_213FDCA18(v68, v67);
  sub_213FDC6BC(v65, v64);
  return *(a1 + v59[13]) == *(a2 + v59[13]);
}

uint64_t sub_214636E6C(void *a1, void *a2)
{
  v4 = type metadata accessor for CloudKitSharingToken(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v44[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9041D8, &qword_2146ED5C0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v44[-v9];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C917540, &unk_214751950);
  MEMORY[0x28223BE20](v11);
  v13 = &v44[-v12];
  v14 = a1[3];
  if (v14)
  {
    v15 = a2[3];
    if (v15)
    {
      if ((a1[2] != a2[2] || v14 != v15) && (sub_2146DA6A8() & 1) == 0)
      {
        return 0;
      }

      v16 = a1[8];
      if (v16 != 1)
      {
        v17 = a2[8];
        if (v17 != 1)
        {
          v18 = a1[7];
          if (v16)
          {
            if (!v17 || (v18 != a2[7] || v16 != v17) && (sub_2146DA6A8() & 1) == 0)
            {
              return 0;
            }
          }

          else
          {
            if (v17)
            {
              return 0;
            }

            sub_213FDC9D0(a2[7], 0);
            sub_213FDC9D0(v18, 0);
          }

          v19 = type metadata accessor for CloudKitShareParticipant(0);
          if (!sub_214635FDC((a1 + v19[6]), (a2 + v19[6])) || *(a1 + v19[7]) != *(a2 + v19[7]) || *(a1 + v19[8]) != *(a2 + v19[8]) || qword_214771328[*(a1 + v19[9])] != qword_214771328[*(a2 + v19[9])] || *(a1 + v19[10]) != *(a2 + v19[10]) || *(a1 + v19[11]) != *(a2 + v19[11]) || qword_214771328[*(a1 + v19[12])] != qword_214771328[*(a2 + v19[12])] || *(a1 + v19[13]) != *(a2 + v19[13]) || *(a1 + v19[14]) != *(a2 + v19[14]))
          {
            return 0;
          }

          v20 = v19[15];
          v22 = *(a1 + v20);
          v21 = *(a1 + v20 + 8);
          v23 = (a2 + v20);
          v24 = v23[1];
          v48 = *v23;
          if (v21 >> 60 == 15)
          {
            if (v24 >> 60 != 15)
            {
              goto LABEL_34;
            }

            v46 = v21;
            v47 = v22;
            sub_213FDCA18(v22, v21);
            sub_213FDCA18(v48, v24);
            sub_213FDC6BC(v47, v46);
          }

          else
          {
            if (v24 >> 60 == 15)
            {
              goto LABEL_34;
            }

            v46 = v21;
            v47 = v22;
            sub_213FDCA18(v22, v21);
            sub_213FDCA18(v48, v24);
            v45 = sub_214466780(v47, v46, v48, v24);
            sub_213FDC6BC(v48, v24);
            sub_213FDC6BC(v47, v46);
            if (!v45)
            {
              return 0;
            }
          }

          v25 = v19[16];
          v22 = *(a1 + v25);
          v21 = *(a1 + v25 + 8);
          v26 = (a2 + v25);
          v24 = v26[1];
          v48 = *v26;
          if (v21 >> 60 == 15)
          {
            if (v24 >> 60 == 15)
            {
              v46 = v21;
              v47 = v22;
              sub_213FDCA18(v22, v21);
              sub_213FDCA18(v48, v24);
              sub_213FDC6BC(v47, v46);
              goto LABEL_38;
            }
          }

          else if (v24 >> 60 != 15)
          {
            v46 = v21;
            v47 = v22;
            sub_213FDCA18(v22, v21);
            sub_213FDCA18(v48, v24);
            v45 = sub_214466780(v47, v46, v48, v24);
            sub_213FDC6BC(v48, v24);
            sub_213FDC6BC(v47, v46);
            if (!v45)
            {
              return 0;
            }

LABEL_38:
            if (*(a1 + v19[17]) != *(a2 + v19[17]) || *(a1 + v19[18]) != *(a2 + v19[18]))
            {
              return 0;
            }

            v33 = *(v11 + 48);
            v34 = v19[19];
            sub_213FB2E54(a1 + v34, v13, &qword_27C9041D8, &qword_2146ED5C0);
            v48 = v33;
            sub_213FB2E54(a2 + v34, &v13[v33], &qword_27C9041D8, &qword_2146ED5C0);
            v35 = *(v5 + 48);
            if (v35(v13, 1, v4) == 1)
            {
              if (v35(&v13[v48], 1, v4) == 1)
              {
                sub_213FB2DF4(v13, &qword_27C9041D8, &qword_2146ED5C0);
LABEL_47:
                v37 = v19[20];
                v39 = *(a1 + v37);
                v38 = *(a1 + v37 + 8);
                v40 = (a2 + v37);
                v42 = *v40;
                v41 = v40[1];
                if (v38 >> 60 == 15)
                {
                  if (v41 >> 60 == 15)
                  {
                    sub_213FDCA18(v39, v38);
                    sub_213FDCA18(v42, v41);
                    sub_213FDC6BC(v39, v38);
LABEL_53:
                    if (*(a1 + v19[21]) == *(a2 + v19[21]) && *(a1 + v19[22]) == *(a2 + v19[22]))
                    {
                      return *(a1 + v19[23]) == *(a2 + v19[23]);
                    }

                    return 0;
                  }
                }

                else if (v41 >> 60 != 15)
                {
                  sub_213FDCA18(v39, v38);
                  sub_213FDCA18(v42, v41);
                  v43 = sub_214466780(v39, v38, v42, v41);
                  sub_213FDC6BC(v42, v41);
                  sub_213FDC6BC(v39, v38);
                  if (!v43)
                  {
                    return 0;
                  }

                  goto LABEL_53;
                }

                sub_213FDCA18(v39, v38);
                sub_213FDCA18(v42, v41);
                sub_213FDC6BC(v39, v38);
                v30 = v42;
                v31 = v41;
LABEL_35:
                sub_213FDC6BC(v30, v31);
                return 0;
              }
            }

            else
            {
              sub_213FB2E54(v13, v10, &qword_27C9041D8, &qword_2146ED5C0);
              if (v35(&v13[v48], 1, v4) != 1)
              {
                sub_21404A900(&v13[v48], v7);
                v36 = sub_2145AF7C4(v10, v7);
                sub_2146382D0(v7, type metadata accessor for CloudKitSharingToken);
                sub_2146382D0(v10, type metadata accessor for CloudKitSharingToken);
                sub_213FB2DF4(v13, &qword_27C9041D8, &qword_2146ED5C0);
                if ((v36 & 1) == 0)
                {
                  return 0;
                }

                goto LABEL_47;
              }

              sub_2146382D0(v10, type metadata accessor for CloudKitSharingToken);
            }

            sub_213FB2DF4(v13, &qword_27C917540, &unk_214751950);
            return 0;
          }

LABEL_34:
          v27 = v22;
          v28 = v21;
          sub_213FDCA18(v22, v21);
          v29 = v48;
          sub_213FDCA18(v48, v24);
          sub_213FDC6BC(v27, v28);
          v30 = v29;
          v31 = v24;
          goto LABEL_35;
        }
      }
    }
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

unint64_t sub_214637628()
{
  result = qword_27C9171C8;
  if (!qword_27C9171C8)
  {
    result = swift_getWitnessTable(a9_13, &type metadata for CloudKitShareParticipantAcceptanceStatus, v0, v1);
    atomic_store(result, &qword_27C9171C8);
  }

  return result;
}

unint64_t sub_214637680()
{
  result = qword_27C9171D0;
  if (!qword_27C9171D0)
  {
    result = swift_getWitnessTable(aI_47, &type metadata for CloudKitShareParticipantPermission, v0, v1);
    atomic_store(result, &qword_27C9171D0);
  }

  return result;
}

unint64_t sub_2146376D8()
{
  result = qword_27C9171D8;
  if (!qword_27C9171D8)
  {
    result = swift_getWitnessTable(aY_42, &type metadata for CloudKitShareParticipantRole, v0, v1);
    atomic_store(result, &qword_27C9171D8);
  }

  return result;
}

unint64_t sub_214637730()
{
  result = qword_27C9171E0;
  if (!qword_27C9171E0)
  {
    result = swift_getWitnessTable(aI_48, &type metadata for CloudKitShareParticipantInvitationTokenStatus, v0, v1);
    atomic_store(result, &qword_27C9171E0);
  }

  return result;
}

id sub_214637878(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC9BlastDoor24_BlastDoorCKUserIdentity_userRecordID;
  *&v2[OBJC_IVAR____TtC9BlastDoor24_BlastDoorCKUserIdentity_userRecordID] = 0;
  v5 = OBJC_IVAR____TtC9BlastDoor24_BlastDoorCKUserIdentity_nameComponents;
  *&v2[OBJC_IVAR____TtC9BlastDoor24_BlastDoorCKUserIdentity_nameComponents] = 0;
  v6 = OBJC_IVAR____TtC9BlastDoor24_BlastDoorCKUserIdentity_lookupInfo;
  *&v2[OBJC_IVAR____TtC9BlastDoor24_BlastDoorCKUserIdentity_lookupInfo] = 0;
  v38 = OBJC_IVAR____TtC9BlastDoor24_BlastDoorCKUserIdentity_publicSharingKey;
  *&v2[OBJC_IVAR____TtC9BlastDoor24_BlastDoorCKUserIdentity_publicSharingKey] = 0;
  v39 = OBJC_IVAR____TtC9BlastDoor24_BlastDoorCKUserIdentity_outOfNetworkPrivateKey;
  *&v2[OBJC_IVAR____TtC9BlastDoor24_BlastDoorCKUserIdentity_outOfNetworkPrivateKey] = 0;
  v40 = OBJC_IVAR____TtC9BlastDoor24_BlastDoorCKUserIdentity_encryptedPersonalInfo;
  *&v2[OBJC_IVAR____TtC9BlastDoor24_BlastDoorCKUserIdentity_encryptedPersonalInfo] = 0;
  v7 = &v2[OBJC_IVAR____TtC9BlastDoor24_BlastDoorCKUserIdentity_UserRecordIDKey];
  strcpy(&v2[OBJC_IVAR____TtC9BlastDoor24_BlastDoorCKUserIdentity_UserRecordIDKey], "UserRecordID");
  v7[13] = 0;
  *(v7 + 7) = -5120;
  v8 = &v2[OBJC_IVAR____TtC9BlastDoor24_BlastDoorCKUserIdentity_NameComponentsKey];
  strcpy(&v2[OBJC_IVAR____TtC9BlastDoor24_BlastDoorCKUserIdentity_NameComponentsKey], "NameComponents");
  v8[15] = -18;
  v9 = &v2[OBJC_IVAR____TtC9BlastDoor24_BlastDoorCKUserIdentity_LookupInfoKey];
  *v9 = 0x6E4970756B6F6F4CLL;
  *(v9 + 1) = 0xEA00000000006F66;
  v10 = &v2[OBJC_IVAR____TtC9BlastDoor24_BlastDoorCKUserIdentity_ContactIdentifiersKey];
  *v10 = 0xD000000000000012;
  *(v10 + 1) = 0x80000002147A5CA0;
  v11 = &v2[OBJC_IVAR____TtC9BlastDoor24_BlastDoorCKUserIdentity_ProtectionDataKey];
  strcpy(&v2[OBJC_IVAR____TtC9BlastDoor24_BlastDoorCKUserIdentity_ProtectionDataKey], "ProtectionData");
  v11[15] = -18;
  v12 = &v2[OBJC_IVAR____TtC9BlastDoor24_BlastDoorCKUserIdentity_OONProtectionDataKey];
  *v12 = 0xD000000000000011;
  *(v12 + 1) = 0x80000002147A5CC0;
  v13 = &v2[OBJC_IVAR____TtC9BlastDoor24_BlastDoorCKUserIdentity_IsCachedKey];
  *v13 = 0x6465686361437349;
  *(v13 + 1) = 0xE800000000000000;
  v14 = &v2[OBJC_IVAR____TtC9BlastDoor24_BlastDoorCKUserIdentity_HasICloudAccountKey];
  *v14 = 0xD000000000000010;
  *(v14 + 1) = 0x80000002147A5CE0;
  v15 = &v2[OBJC_IVAR____TtC9BlastDoor24_BlastDoorCKUserIdentity_EncryptedPersonalInfoKey];
  *v15 = 0xD000000000000015;
  *(v15 + 1) = 0x80000002147A5BE0;
  v16 = &v2[OBJC_IVAR____TtC9BlastDoor24_BlastDoorCKUserIdentity_PublicKeyVersionKey];
  *v16 = 0xD000000000000010;
  *(v16 + 1) = 0x80000002147A5D00;
  type metadata accessor for _BlastDoorCKRecordID();
  v17 = sub_2146D9CF8();
  v18 = *&v2[v4];
  *&v2[v4] = v17;

  sub_21404A8B8(0, &unk_27C9174B0, 0x277CCAC00);

  v19 = sub_2146D9CF8();

  v20 = *&v2[v5];
  *&v2[v5] = v19;

  type metadata accessor for _BlastDoorCKUserIdentityLookupInfo();

  v21 = sub_2146D9CF8();

  v22 = *&v2[v6];
  *&v2[v6] = v21;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913160, &unk_21473D7C0);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_2146E6910;
  *(v23 + 32) = sub_21404A8B8(0, &unk_27C9174C0, 0x277CBEA60);
  *(v23 + 40) = sub_21404A8B8(0, &unk_27C9174A0, 0x277CCACA8);

  sub_2146D9D08();

  if (!v44)
  {
    sub_213FB2DF4(v43, &qword_27C913170, &qword_2146EAB20);
    goto LABEL_5;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_5:
    v24 = [objc_allocWithZone(MEMORY[0x277CBEA60]) init];
    goto LABEL_6;
  }

  v24 = v41;
LABEL_6:
  *&v2[OBJC_IVAR____TtC9BlastDoor24_BlastDoorCKUserIdentity_contactIdentifiers] = v24;
  sub_21404A8B8(0, &qword_27C9041F0, 0x277CBEA90);

  v25 = sub_2146D9CF8();

  v26 = *&v2[v38];
  *&v2[v38] = v25;

  v27 = sub_2146D9CF8();

  v28 = *&v2[v39];
  *&v2[v39] = v27;

  v29 = sub_2146D9588();

  v30 = [a1 decodeBoolForKey_];

  v2[OBJC_IVAR____TtC9BlastDoor24_BlastDoorCKUserIdentity_isCached] = v30;

  v31 = sub_2146D9588();

  v32 = [a1 decodeBoolForKey_];

  v2[OBJC_IVAR____TtC9BlastDoor24_BlastDoorCKUserIdentity_hasICloudAccount] = v32;

  v33 = sub_2146D9CF8();

  v34 = *&v2[v40];
  *&v2[v40] = v33;

  v35 = sub_2146D9588();

  v36 = [a1 decodeInt64ForKey_];

  *&v2[OBJC_IVAR____TtC9BlastDoor24_BlastDoorCKUserIdentity_publicKeyVersion] = v36;
  v42.receiver = v2;
  v42.super_class = type metadata accessor for _BlastDoorCKUserIdentity();
  return objc_msgSendSuper2(&v42, sel_init);
}

id sub_214637E54(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC9BlastDoor34_BlastDoorCKUserIdentityLookupInfo_emailAddress;
  *&v2[OBJC_IVAR____TtC9BlastDoor34_BlastDoorCKUserIdentityLookupInfo_emailAddress] = 0;
  v5 = OBJC_IVAR____TtC9BlastDoor34_BlastDoorCKUserIdentityLookupInfo_phoneNumber;
  *&v2[OBJC_IVAR____TtC9BlastDoor34_BlastDoorCKUserIdentityLookupInfo_phoneNumber] = 0;
  v6 = OBJC_IVAR____TtC9BlastDoor34_BlastDoorCKUserIdentityLookupInfo_userRecordID;
  *&v2[OBJC_IVAR____TtC9BlastDoor34_BlastDoorCKUserIdentityLookupInfo_userRecordID] = 0;
  v22 = OBJC_IVAR____TtC9BlastDoor34_BlastDoorCKUserIdentityLookupInfo_encryptedPersonalInfo;
  *&v2[OBJC_IVAR____TtC9BlastDoor34_BlastDoorCKUserIdentityLookupInfo_encryptedPersonalInfo] = 0;
  v7 = &v2[OBJC_IVAR____TtC9BlastDoor34_BlastDoorCKUserIdentityLookupInfo_EmailAddressKey];
  strcpy(&v2[OBJC_IVAR____TtC9BlastDoor34_BlastDoorCKUserIdentityLookupInfo_EmailAddressKey], "EmailAddress");
  v7[13] = 0;
  *(v7 + 7) = -5120;
  v8 = &v2[OBJC_IVAR____TtC9BlastDoor34_BlastDoorCKUserIdentityLookupInfo_PhoneNumberKey];
  *v8 = 0x6D754E656E6F6850;
  *(v8 + 1) = 0xEB00000000726562;
  v9 = &v2[OBJC_IVAR____TtC9BlastDoor34_BlastDoorCKUserIdentityLookupInfo_RecordIDKey];
  *v9 = 0x444964726F636552;
  *(v9 + 1) = 0xE800000000000000;
  v10 = &v2[OBJC_IVAR____TtC9BlastDoor34_BlastDoorCKUserIdentityLookupInfo_ReportsMissingKey];
  strcpy(&v2[OBJC_IVAR____TtC9BlastDoor34_BlastDoorCKUserIdentityLookupInfo_ReportsMissingKey], "ReportsMissing");
  v10[15] = -18;
  v11 = &v2[OBJC_IVAR____TtC9BlastDoor34_BlastDoorCKUserIdentityLookupInfo_EncryptedPersonalInfoKey];
  *v11 = 0xD000000000000015;
  *(v11 + 1) = 0x80000002147A5BE0;
  sub_21404A8B8(0, &unk_27C9174A0, 0x277CCACA8);
  v12 = sub_2146D9CF8();
  v13 = *&v2[v4];
  *&v2[v4] = v12;

  v14 = sub_2146D9CF8();

  v15 = *&v2[v5];
  *&v2[v5] = v14;

  type metadata accessor for _BlastDoorCKRecordID();

  v16 = sub_2146D9CF8();

  v17 = *&v2[v6];
  *&v2[v6] = v16;

  v18 = sub_2146D9588();

  LOBYTE(v8) = [a1 decodeBoolForKey_];

  v2[OBJC_IVAR____TtC9BlastDoor34_BlastDoorCKUserIdentityLookupInfo_shouldReportMissingIdentity] = v8;
  sub_21404A8B8(0, &qword_27C9041F0, 0x277CBEA90);

  v19 = sub_2146D9CF8();

  v20 = *&v2[v22];
  *&v2[v22] = v19;

  v23.receiver = v2;
  v23.super_class = type metadata accessor for _BlastDoorCKUserIdentityLookupInfo();
  return objc_msgSendSuper2(&v23, sel_init);
}

unint64_t sub_214638128()
{
  result = qword_27C9174E0;
  if (!qword_27C9174E0)
  {
    result = swift_getWitnessTable(aI_49, &type metadata for CloudKitShareParticipantInvitationTokenStatus, v0, v1);
    atomic_store(result, &qword_27C9174E0);
  }

  return result;
}

unint64_t sub_21463817C()
{
  result = qword_27C9174E8;
  if (!qword_27C9174E8)
  {
    result = swift_getWitnessTable(aA_48, &type metadata for CloudKitShareParticipantRole, v0, v1);
    atomic_store(result, &qword_27C9174E8);
  }

  return result;
}

unint64_t sub_2146381D0()
{
  result = qword_27C9174F0;
  if (!qword_27C9174F0)
  {
    result = swift_getWitnessTable(byte_214770EE8, &type metadata for CloudKitShareParticipantPermission, v0, v1);
    atomic_store(result, &qword_27C9174F0);
  }

  return result;
}

unint64_t sub_214638224()
{
  result = qword_27C9174F8;
  if (!qword_27C9174F8)
  {
    result = swift_getWitnessTable(byte_214770DF8, &type metadata for CloudKitShareParticipantAcceptanceStatus, v0, v1);
    atomic_store(result, &qword_27C9174F8);
  }

  return result;
}

unint64_t sub_214638278()
{
  result = qword_27C917530;
  if (!qword_27C917530)
  {
    v3 = sub_2146D8808();
    result = swift_getWitnessTable(MEMORY[0x277CC8E68], v3, v0, v1);
    atomic_store(result, &qword_27C917530);
  }

  return result;
}

uint64_t sub_2146382D0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

double sub_214638330(uint64_t a1)
{
  *(a1 + 160) = 0;
  result = 0.0;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

double sub_214638350(_OWORD *a1)
{
  result = 0.0;
  a1[15] = 0u;
  a1[16] = 0u;
  a1[13] = 0u;
  a1[14] = 0u;
  a1[11] = 0u;
  a1[12] = 0u;
  a1[9] = 0u;
  a1[10] = 0u;
  a1[7] = 0u;
  a1[8] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

unint64_t sub_21463839C@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v4 = swift_allocObject();
  *(v4 + 16) = sub_2140676DC;
  *(v4 + 24) = 0;
  *(v3 + 32) = v4;
  v5 = sub_2142E0070(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130C0, &unk_2146EAA60);
  v6 = swift_allocObject();
  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  *(v6 + 16) = sub_21403254C;
  *(v6 + 24) = v7;
  *(inited + 32) = v6;
  return sub_214042A28(inited, a1);
}

uint64_t sub_2146384BC@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return sub_213FDC9D0(v3, v4);
}

__n128 sub_214638514(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = v1[1].n128_i64[0];
  v7 = v1[1].n128_i64[1];

  sub_213FDC6D0(v6, v7);
  result = *a1;
  *v1 = *a1;
  v1[1].n128_u64[0] = v3;
  v1[1].n128_u64[1] = v4;
  v1[2].n128_u8[0] = v5;
  return result;
}

uint64_t sub_21463857C@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  v3 = *(v1 + 56);
  v4 = *(v1 + 64);
  v5 = *(v1 + 72);
  *a1 = *(v1 + 40);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return sub_213FDC9D0(v3, v4);
}

__n128 sub_2146385D4(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = *(v1 + 56);
  v7 = *(v1 + 64);

  sub_213FDC6D0(v6, v7);
  result = *a1;
  *(v1 + 40) = *a1;
  *(v1 + 56) = v3;
  *(v1 + 64) = v4;
  *(v1 + 72) = v5;
  return result;
}

uint64_t sub_21463863C()
{
  if (*(v0 + 24) == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v1 = *(v0 + 16);

    return v1;
  }

  return result;
}

uint64_t sub_2146386BC()
{
  if (*(v0 + 64) == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v1 = *(v0 + 56);

    return v1;
  }

  return result;
}

unint64_t sub_214638744@<X0>(unint64_t result@<X0>, char *a2@<X8>)
{
  v2 = 3;
  if (result < 3)
  {
    v2 = result;
  }

  *a2 = v2;
  return result;
}

void sub_214638810(uint64_t a1, uint64_t a2)
{
  v9[0] = a1;
  v9[1] = a2;
  v5 = *v2;
  v8 = *(v2 + 32);
  v7[0] = 0x6E776F6E6B6E753CLL;
  v7[1] = 0xE90000000000003ELL;
  v7[2] = 0xD00000000000001CLL;
  v7[3] = 0x800000021478A360;
  if (v5(v9, &v8, v7))
  {
    sub_213FDC6D0(*(v2 + 16), *(v2 + 24));

    *(v2 + 16) = a1;
    *(v2 + 24) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v6 = 0x6E776F6E6B6E753CLL;
    v6[1] = 0xE90000000000003ELL;
    v6[2] = 0xD00000000000001CLL;
    v6[3] = 0x800000021478A360;
    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
  }
}

void (*sub_214638954(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(v1 + 16);
  *(v3 + 24) = v5;
  v6 = *(v1 + 24);
  v4[4] = v6;
  if (v6 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *v4 = v5;
    v4[1] = v6;

    return sub_214074090;
  }

  return result;
}

void (*sub_214638A2C(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(v1 + 8);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + 32);
  *v4 = *v1;
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 32) = v8;

  sub_213FDC9D0(v6, v7);
  return sub_21407449C;
}

void sub_214638B04(uint64_t a1, uint64_t a2)
{
  v9[0] = a1;
  v9[1] = a2;
  v5 = *(v2 + 40);
  v8 = *(v2 + 72);
  v7[0] = 0x6E776F6E6B6E753CLL;
  v7[1] = 0xE90000000000003ELL;
  v7[2] = 0xD00000000000001CLL;
  v7[3] = 0x800000021478A360;
  if (v5(v9, &v8, v7))
  {
    sub_213FDC6D0(*(v2 + 56), *(v2 + 64));

    *(v2 + 56) = a1;
    *(v2 + 64) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v6 = 0x6E776F6E6B6E753CLL;
    v6[1] = 0xE90000000000003ELL;
    v6[2] = 0xD00000000000001CLL;
    v6[3] = 0x800000021478A360;
    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
  }
}

void (*sub_214638C48(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(v1 + 56);
  *(v3 + 24) = v5;
  v6 = *(v1 + 64);
  v4[4] = v6;
  if (v6 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *v4 = v5;
    v4[1] = v6;

    return sub_21407493C;
  }

  return result;
}

void (*sub_214638D20(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(v1 + 48);
  v6 = *(v1 + 56);
  v7 = *(v1 + 64);
  v8 = *(v1 + 72);
  *v4 = *(v1 + 40);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 32) = v8;

  sub_213FDC9D0(v6, v7);
  return sub_214074D48;
}

uint64_t sub_214638DC0@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for RelayReachabilityContext(0) + 28);

  return sub_214090414(v3, a1);
}

uint64_t type metadata accessor for RelayReachabilityContext(uint64_t a1)
{
  result = qword_280B2EC98;
  if (!qword_280B2EC98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_214638E50(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for RelayReachabilityContext(0) + 28);

  return sub_21460D13C(a1, v3);
}

uint64_t sub_214638EDC()
{
  v1 = *(v0 + *(type metadata accessor for RelayReachabilityContext(0) + 32));

  return v1;
}

void sub_214638F1C(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for RelayReachabilityContext(0) + 32));

  *v5 = a1;
  v5[1] = a2;
}

uint64_t sub_214638FAC()
{
  v1 = *(v0 + *(type metadata accessor for RelayReachabilityContext(0) + 36));

  return v1;
}

void sub_214638FEC(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for RelayReachabilityContext(0) + 36));

  *v5 = a1;
  v5[1] = a2;
}

uint64_t sub_2146390A0(char a1)
{
  result = type metadata accessor for RelayReachabilityContext(0);
  *(v1 + *(result + 40)) = a1;
  return result;
}

uint64_t sub_21463913C(char a1)
{
  result = type metadata accessor for RelayReachabilityContext(0);
  *(v1 + *(result + 44)) = a1;
  return result;
}

uint64_t sub_2146391D8(char a1)
{
  result = type metadata accessor for RelayReachabilityContext(0);
  *(v1 + *(result + 48)) = a1;
  return result;
}

uint64_t sub_214639274(char a1)
{
  result = type metadata accessor for RelayReachabilityContext(0);
  *(v1 + *(result + 52)) = a1;
  return result;
}

uint64_t sub_214639310(char a1)
{
  result = type metadata accessor for RelayReachabilityContext(0);
  *(v1 + *(result + 56)) = a1;
  return result;
}

uint64_t sub_2146393AC(char a1)
{
  result = type metadata accessor for RelayReachabilityContext(0);
  *(v1 + *(result + 60)) = a1;
  return result;
}

uint64_t sub_214639448(char a1)
{
  result = type metadata accessor for RelayReachabilityContext(0);
  *(v1 + *(result + 64)) = a1;
  return result;
}

unint64_t sub_2146394C4()
{
  result = qword_27C917548;
  if (!qword_27C917548)
  {
    result = swift_getWitnessTable(byte_214771348, &type metadata for RelayReachabilityContextChatStyle, v0, v1);
    atomic_store(result, &qword_27C917548);
  }

  return result;
}

unint64_t sub_214639518(uint64_t a1)
{
  *(a1 + 8) = sub_2142FE698();
  result = sub_2142FE6EC();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_214639548(uint64_t a1)
{
  *(a1 + 8) = sub_2146395B0(&qword_27C9087B8, aY_81);
  result = sub_2146395B0(&qword_27C9087C8, byte_2146FBCD8);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_2146395B0(unint64_t *a1, const char *a2)
{
  result = *a1;
  if (!result)
  {
    v5 = type metadata accessor for RelayReachabilityContext(255);
    result = swift_getWitnessTable(a2, v5);
    atomic_store(result, a1);
  }

  return result;
}

void sub_21463962C(uint64_t a1)
{
  sub_214084AA4(319);
  if (v1 <= 0x3F)
  {
    sub_21408202C(319);
    if (v2 <= 0x3F)
    {
      sub_2143ACE3C();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_2146396F8()
{
  result = qword_27C917550;
  if (!qword_27C917550)
  {
    result = swift_getWitnessTable(byte_2147713B0, &type metadata for RelayReachabilityContextChatStyle, v0, v1);
    atomic_store(result, &qword_27C917550);
  }

  return result;
}

uint64_t PNGEncoder.encode(imageSource:)()
{
  sub_214499648();
  swift_allocError();
  *v0 = 3;
  return swift_willThrow();
}

uint64_t PNGEncoder.encode(pixelBuffer:to:)()
{
  sub_21407D454();
  swift_allocError();
  *v0 = 1281;
  *(v0 + 8) = 0;
  return swift_willThrow();
}

uint64_t PNGEncoder.encode(pixelBuffer:)()
{
  sub_21407D454();
  swift_allocError();
  *v0 = 1281;
  *(v0 + 8) = 0;
  return swift_willThrow();
}

uint64_t sub_2146398D4()
{
  sub_214499648();
  swift_allocError();
  *v0 = 3;
  return swift_willThrow();
}

void sub_214639954(CGImageSource *a1)
{
  v1 = sub_2146D8898();
  v2 = sub_2146D9588();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913040, &qword_21473D440);
  inited = swift_initStackObject();
  v4 = MEMORY[0x277CD3678];
  *(inited + 16) = xmmword_2146E6910;
  v5 = *v4;
  *(inited + 32) = v5;
  *(inited + 40) = 0;
  v6 = *MEMORY[0x277CD35A0];
  *(inited + 48) = *MEMORY[0x277CD35A0];
  *(inited + 56) = 1;
  v16 = v5;
  v15 = v6;
  sub_214046938(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913048, &qword_21473D448);
  swift_arrayDestroy();
  type metadata accessor for CFString(0);
  sub_2143A6B04();
  v7 = sub_2146D9468();

  v8 = CGImageDestinationCreateWithURL(v1, v2, 1uLL, v7);

  if (v8)
  {
    v9 = swift_initStackObject();
    *(v9 + 16) = xmmword_2146E6910;
    *(v9 + 32) = v16;
    *(v9 + 40) = 0;
    *(v9 + 48) = v15;
    *(v9 + 56) = 1;
    v10 = v16;
    v11 = v15;
    sub_214046938(v9);
    swift_setDeallocating();
    swift_arrayDestroy();
    v12 = sub_2146D9468();

    CGImageDestinationAddImageFromSource(v8, a1, 0, v12);

    if (!CGImageDestinationFinalize(v8))
    {
      sub_214499648();
      swift_allocError();
      *v14 = 3;
      swift_willThrow();
    }
  }

  else
  {
    sub_214499648();
    swift_allocError();
    *v13 = 2;
    swift_willThrow();
  }
}

const __CFDictionary *sub_214639BFC(CGImage *a1)
{
  v2 = v1;
  Mutable = CFDataCreateMutable(0, 0);
  if (Mutable)
  {
    v5 = Mutable;
    v6 = sub_2146D9588();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913040, &qword_21473D440);
    inited = swift_initStackObject();
    v8 = MEMORY[0x277CD3678];
    *(inited + 16) = xmmword_2146E6910;
    v9 = *v8;
    *(inited + 32) = v9;
    *(inited + 40) = 0;
    v10 = *MEMORY[0x277CD35A0];
    *(inited + 48) = *MEMORY[0x277CD35A0];
    *(inited + 56) = 1;
    v22 = v9;
    v11 = v10;
    sub_214046938(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913048, &qword_21473D448);
    swift_arrayDestroy();
    type metadata accessor for CFString(0);
    v2 = sub_2143A6B04();
    v12 = sub_2146D9468();

    v13 = CGImageDestinationCreateWithData(v5, v6, 1uLL, v12);

    if (v13)
    {
      v14 = swift_initStackObject();
      *(v14 + 16) = xmmword_2146E6910;
      *(v14 + 32) = v22;
      *(v14 + 40) = 0;
      *(v14 + 48) = v11;
      *(v14 + 56) = 1;
      v15 = v22;
      v16 = v11;
      sub_214046938(v14);
      swift_setDeallocating();
      swift_arrayDestroy();
      v2 = sub_2146D9468();

      CGImageDestinationAddImage(v13, a1, v2);

      if (CGImageDestinationFinalize(v13))
      {
        v17 = v5;
        v2 = sub_2146D8A58();
      }

      else
      {
        sub_214499648();
        swift_allocError();
        *v20 = 3;
        swift_willThrow();
      }
    }

    else
    {
      sub_214499648();
      swift_allocError();
      *v19 = 2;
      swift_willThrow();
    }
  }

  else
  {
    sub_214499648();
    swift_allocError();
    *v18 = 1;
    swift_willThrow();
  }

  return v2;
}

void sub_214639F10(CGImage *a1)
{
  v1 = sub_2146D8898();
  v2 = sub_2146D9588();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913040, &qword_21473D440);
  inited = swift_initStackObject();
  v4 = MEMORY[0x277CD3678];
  *(inited + 16) = xmmword_2146E6910;
  v5 = *v4;
  *(inited + 32) = v5;
  *(inited + 40) = 0;
  v6 = *MEMORY[0x277CD35A0];
  *(inited + 48) = *MEMORY[0x277CD35A0];
  *(inited + 56) = 1;
  v16 = v5;
  v15 = v6;
  sub_214046938(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913048, &qword_21473D448);
  swift_arrayDestroy();
  type metadata accessor for CFString(0);
  sub_2143A6B04();
  v7 = sub_2146D9468();

  v8 = CGImageDestinationCreateWithURL(v1, v2, 1uLL, v7);

  if (v8)
  {
    v9 = swift_initStackObject();
    *(v9 + 16) = xmmword_2146E6910;
    *(v9 + 32) = v16;
    *(v9 + 40) = 0;
    *(v9 + 48) = v15;
    *(v9 + 56) = 1;
    v10 = v16;
    v11 = v15;
    sub_214046938(v9);
    swift_setDeallocating();
    swift_arrayDestroy();
    v12 = sub_2146D9468();

    CGImageDestinationAddImage(v8, a1, v12);

    if (!CGImageDestinationFinalize(v8))
    {
      sub_214499648();
      swift_allocError();
      *v14 = 3;
      swift_willThrow();
    }
  }

  else
  {
    sub_214499648();
    swift_allocError();
    *v13 = 2;
    swift_willThrow();
  }
}

unint64_t sub_21463A218()
{
  result = qword_27C917558;
  if (!qword_27C917558)
  {
    result = swift_getWitnessTable(byte_2147715D4, &type metadata for PNGEncodingError, v0, v1);
    atomic_store(result, &qword_27C917558);
  }

  return result;
}

uint64_t static BlastDoorServer.setVideoRestrictions(codecs:)(uint64_t a1)
{
  v1 = sub_2146D9B88();
  if (qword_280B35360 != -1)
  {
    v4 = v1;
    swift_once();
    v1 = v4;
  }

  sub_2146D91D8(v1, &dword_213FAF000, qword_280B35410, "Initializing video restrictions", 31, 2, MEMORY[0x277D84F90]);
  v2 = VTRestrictVideoDecoders();
  result = sub_2146D93B8();
  if (v2 != result)
  {
    sub_2146D9EF8();
    MEMORY[0x2160545D0](0xD000000000000032, 0x80000002147A5F40);
    v5 = sub_2146DA428();
    MEMORY[0x2160545D0](v5);

    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

void static BlastDoorServer.setImageRestrictions(allowedImageFormats:enableRawDecoding:enableMetadataParsing:)(uint64_t a1, char a2, char a3)
{
  v5 = sub_2146D9B88();
  if (qword_280B35360 != -1)
  {
    v11 = v5;
    swift_once();
    v5 = v11;
  }

  sub_2146D91D8(v5, &dword_213FAF000, qword_280B35410, "Initializing image restrictions", 31, 2, MEMORY[0x277D84F90]);
  v6 = sub_2146D98E8();
  v7 = CGImageSourceSetAllowableTypes();

  if (v7 != sub_2146D93B8())
  {
    goto LABEL_13;
  }

  v8 = CGImageSourceDisableHardwareDecoding();
  if (v8 != sub_2146D93B8())
  {
    goto LABEL_13;
  }

  v9 = CGImageSourceEnableRestrictedDecoding();
  if (v9 != sub_2146D93B8())
  {
    goto LABEL_13;
  }

  CGEnterLockdownModeForPDF();
  CGEnterLockdownModeForFonts();
  BD_IOSurfaceDisallowForever();
  if ((a2 & 1) != 0 || qword_280B2FD90 == -1)
  {
    if (a3)
    {
      return;
    }

LABEL_9:
    v10 = CGImageSourceDisableMetadataParsing();
    if (v10 == sub_2146D93B8())
    {
      return;
    }

LABEL_13:
    sub_2146DA018();
    __break(1u);
    return;
  }

  swift_once();
  if ((a3 & 1) == 0)
  {
    goto LABEL_9;
  }
}

uint64_t static BlastDoorServer.disableRawDecoding()()
{
  if (qword_280B2FD90 != -1)
  {
    return swift_once();
  }

  return result;
}

uint64_t sub_21463A64C(uint64_t a1)
{
  v1 = sub_2146D9B88();
  sub_214063750();
  v2 = sub_2146D9D18();
  sub_2146D91D8(v1, &dword_213FAF000, v2, "BlastDoor disabling raw decoding", 32, 2, MEMORY[0x277D84F90]);

  LODWORD(v1) = CGImageSourceDisableRAWDecoding();
  result = sub_2146D93B8();
  if (v1 != result)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

unint64_t sub_21463A71C@<X0>(char *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146EAEB0;
  v3 = sub_214069764(&unk_2826539A8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904110, qword_214734DE0);
  v4 = swift_allocObject();
  v5 = swift_allocObject();
  *(v5 + 16) = v3;
  *(v4 + 16) = sub_21409A858;
  *(v4 + 24) = v5;
  *(inited + 32) = v4;
  v6 = sub_214069888(&unk_282653A48);
  v7 = swift_allocObject();
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  *(v7 + 16) = sub_21409A860;
  *(v7 + 24) = v8;
  *(inited + 40) = v7;
  return sub_214042F80(inited, a1);
}

uint64_t type metadata accessor for FMFShareInvitation(uint64_t a1)
{
  result = qword_27C917560;
  if (!qword_27C917560)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21463A8DC(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for FMFShareInvitation(0) + 20);

  return sub_2143A009C(a1, v3);
}

uint64_t sub_21463A920@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for FMFShareInvitation(0) + 24));
  v4 = *v3;
  v5 = v3[1];
  v7 = v3[2];
  v6 = v3[3];
  LOBYTE(v3) = *(v3 + 32);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v7;
  *(a1 + 24) = v6;
  *(a1 + 32) = v3;
}

__n128 sub_21463A980(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = (v1 + *(type metadata accessor for FMFShareInvitation(0) + 24));

  result = *a1;
  *v6 = *a1;
  v6[1].n128_u64[0] = v3;
  v6[1].n128_u64[1] = v4;
  v6[2].n128_u8[0] = v5;
  return result;
}

uint64_t sub_21463A9EC@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for FMFShareInvitation(0) + 28));
  v4 = *v3;
  v5 = v3[1];
  v7 = v3[2];
  v6 = v3[3];
  LOBYTE(v3) = *(v3 + 32);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v7;
  *(a1 + 24) = v6;
  *(a1 + 32) = v3;
}

__n128 sub_21463AA4C(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = (v1 + *(type metadata accessor for FMFShareInvitation(0) + 28));

  result = *a1;
  *v6 = *a1;
  v6[1].n128_u64[0] = v3;
  v6[1].n128_u64[1] = v4;
  v6[2].n128_u8[0] = v5;
  return result;
}

uint64_t sub_21463AAB8@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for FMFShareInvitation(0) + 32));
  v4 = *v3;
  v5 = v3[1];
  v7 = v3[2];
  v6 = v3[3];
  LOBYTE(v3) = *(v3 + 32);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v7;
  *(a1 + 24) = v6;
  *(a1 + 32) = v3;
}

__n128 sub_21463AB18(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = (v1 + *(type metadata accessor for FMFShareInvitation(0) + 32));

  result = *a1;
  *v6 = *a1;
  v6[1].n128_u64[0] = v3;
  v6[1].n128_u64[1] = v4;
  v6[2].n128_u8[0] = v5;
  return result;
}

uint64_t sub_21463AB84@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v11 - v4;
  v6 = v1 + *(type metadata accessor for FMFShareInvitation(0) + 20);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131D0, &qword_2146EAA70);
  sub_213FB2E54(v6 + *(v7 + 28), v5, &unk_27C9131A0, &unk_2146E9D10);
  v8 = sub_2146D8958();
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v5, 1, v8) != 1)
  {
    return (*(v9 + 32))(a1, v5, v8);
  }

  sub_21407E248(v5);
  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t sub_21463AD0C()
{
  v1 = v0 + *(type metadata accessor for FMFShareInvitation(0) + 24);
  if (*(v1 + 24))
  {
    v2 = *(v1 + 16);

    return v2;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_21463AD98()
{
  v1 = v0 + *(type metadata accessor for FMFShareInvitation(0) + 28);
  if (*(v1 + 24))
  {
    v2 = *(v1 + 16);

    return v2;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_21463AE24()
{
  v1 = v0 + *(type metadata accessor for FMFShareInvitation(0) + 32);
  if (*(v1 + 24))
  {
    v2 = *(v1 + 16);

    return v2;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_21463AEE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v12 - v5;
  v7 = a1 + *(type metadata accessor for FMFShareInvitation(0) + 20);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131D0, &qword_2146EAA70);
  sub_213FB2E54(v7 + *(v8 + 28), v6, &unk_27C9131A0, &unk_2146E9D10);
  v9 = sub_2146D8958();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v6, 1, v9) != 1)
  {
    return (*(v10 + 32))(a2, v6, v9);
  }

  sub_21407E248(v6);
  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t sub_21463B070(uint64_t a1)
{
  v2 = sub_2146D8958();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - v7;
  v9 = *(v3 + 16);
  v9(&v11 - v7, a1, v2);
  v9(v6, v8, v2);
  type metadata accessor for FMFShareInvitation(0);
  sub_21402F904(v6);
  return (*(v3 + 8))(v8, v2);
}

uint64_t sub_21463B1B0(uint64_t a1)
{
  v2 = sub_2146D8958();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5, a1, v2);
  type metadata accessor for FMFShareInvitation(0);
  sub_21402F904(v5);
  return (*(v3 + 8))(a1, v2);
}

void (*sub_21463B2AC(void *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = sub_2146D8958();
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for FMFShareInvitation(0) + 20);
  *(v5 + 12) = v15;
  v16 = v1 + v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131D0, &qword_2146EAA70);
  sub_213FB2E54(v16 + *(v17 + 28), v8, &unk_27C9131A0, &unk_2146E9D10);
  if ((*(v11 + 48))(v8, 1, v9) == 1)
  {
    sub_21407E248(v8);
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    (*(v11 + 32))(v14, v8, v9);
    return sub_2143A47E0;
  }

  return result;
}

void (*sub_21463B4DC(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131D0, &qword_2146EAA70) - 8) + 64);
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(v3);
  }

  v5 = v4;
  *(a1 + 8) = v4;
  v6 = *(type metadata accessor for FMFShareInvitation(0) + 20);
  *(a1 + 16) = v6;
  sub_213FB2E54(v1 + v6, v5, &unk_27C9131D0, &qword_2146EAA70);
  return sub_2143A4970;
}

void sub_21463B59C(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = a1 + *(type metadata accessor for FMFShareInvitation(0) + 24);
  v4 = *(v3 + 24);
  if (v4)
  {
    *a2 = *(v3 + 16);
    a2[1] = v4;
  }

  else
  {
    sub_2146DA018();
    __break(1u);
  }
}

double sub_21463B634(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  type metadata accessor for FMFShareInvitation(0);
  sub_214031F20(v1, v2, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);

  return result;
}

void sub_21463B6FC(uint64_t a1, uint64_t a2)
{
  v5 = v2 + *(type metadata accessor for FMFShareInvitation(0) + 24);
  v10[0] = a1;
  v10[1] = a2;
  v6 = *v5;
  v9 = *(v5 + 32);
  v8[0] = 0x6E776F6E6B6E753CLL;
  v8[1] = 0xE90000000000003ELL;
  v8[2] = 0xD00000000000001CLL;
  v8[3] = 0x800000021478A360;
  if (v6(v10, &v9, v8))
  {

    *(v5 + 16) = a1;
    *(v5 + 24) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v7 = 0x6E776F6E6B6E753CLL;
    v7[1] = 0xE90000000000003ELL;
    v7[2] = 0xD00000000000001CLL;
    v7[3] = 0x800000021478A360;
    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
  }
}

void (*sub_21463B850(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for FMFShareInvitation(0) + 24);
  *(v4 + 32) = v5;
  v6 = v1 + v5;
  v7 = *(v6 + 24);
  *(v4 + 24) = v7;
  if (v7)
  {
    *v4 = *(v6 + 16);
    *(v4 + 8) = v7;

    return sub_2145DF574;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_21463B934@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for FMFShareInvitation(0) + 24));
  v4 = *v3;
  v5 = v3[1];
  v7 = v3[2];
  v6 = v3[3];
  LOBYTE(v3) = *(v3 + 32);
  *a2 = v4;
  *(a2 + 8) = v5;
  *(a2 + 16) = v7;
  *(a2 + 24) = v6;
  *(a2 + 32) = v3;
}

void sub_21463B998(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = a1[2];
  v4 = a1[3];
  v6 = *(a1 + 32);
  v7 = a2 + *(type metadata accessor for FMFShareInvitation(0) + 24);

  *v7 = v3;
  *(v7 + 8) = v2;
  *(v7 + 16) = v5;
  *(v7 + 24) = v4;
  *(v7 + 32) = v6;
}

void (*sub_21463BA20(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(type metadata accessor for FMFShareInvitation(0) + 24);
  *(v4 + 36) = v5;
  v6 = (v1 + v5);
  v7 = *v6;
  v8 = v6[1];
  v10 = v6[2];
  v9 = v6[3];
  LOBYTE(v6) = *(v6 + 32);
  *v4 = v7;
  *(v4 + 8) = v8;
  *(v4 + 16) = v10;
  *(v4 + 24) = v9;
  *(v4 + 32) = v6;

  return sub_2145DF578;
}

void sub_21463BACC(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = a1 + *(type metadata accessor for FMFShareInvitation(0) + 28);
  v4 = *(v3 + 24);
  if (v4)
  {
    *a2 = *(v3 + 16);
    a2[1] = v4;
  }

  else
  {
    sub_2146DA018();
    __break(1u);
  }
}

double sub_21463BB64(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  type metadata accessor for FMFShareInvitation(0);
  sub_214031F20(v1, v2, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);

  return result;
}

void sub_21463BC2C(uint64_t a1, uint64_t a2)
{
  v5 = v2 + *(type metadata accessor for FMFShareInvitation(0) + 28);
  v10[0] = a1;
  v10[1] = a2;
  v6 = *v5;
  v9 = *(v5 + 32);
  v8[0] = 0x6E776F6E6B6E753CLL;
  v8[1] = 0xE90000000000003ELL;
  v8[2] = 0xD00000000000001CLL;
  v8[3] = 0x800000021478A360;
  if (v6(v10, &v9, v8))
  {

    *(v5 + 16) = a1;
    *(v5 + 24) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v7 = 0x6E776F6E6B6E753CLL;
    v7[1] = 0xE90000000000003ELL;
    v7[2] = 0xD00000000000001CLL;
    v7[3] = 0x800000021478A360;
    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
  }
}

void (*sub_21463BD80(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for FMFShareInvitation(0) + 28);
  *(v4 + 32) = v5;
  v6 = v1 + v5;
  v7 = *(v6 + 24);
  *(v4 + 24) = v7;
  if (v7)
  {
    *v4 = *(v6 + 16);
    *(v4 + 8) = v7;

    return sub_2145DF574;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_21463BE64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for FMFShareInvitation(0) + 28));
  v4 = *v3;
  v5 = v3[1];
  v7 = v3[2];
  v6 = v3[3];
  LOBYTE(v3) = *(v3 + 32);
  *a2 = v4;
  *(a2 + 8) = v5;
  *(a2 + 16) = v7;
  *(a2 + 24) = v6;
  *(a2 + 32) = v3;
}

void sub_21463BEC8(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = a1[2];
  v4 = a1[3];
  v6 = *(a1 + 32);
  v7 = a2 + *(type metadata accessor for FMFShareInvitation(0) + 28);

  *v7 = v3;
  *(v7 + 8) = v2;
  *(v7 + 16) = v5;
  *(v7 + 24) = v4;
  *(v7 + 32) = v6;
}

void (*sub_21463BF50(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(type metadata accessor for FMFShareInvitation(0) + 28);
  *(v4 + 36) = v5;
  v6 = (v1 + v5);
  v7 = *v6;
  v8 = v6[1];
  v10 = v6[2];
  v9 = v6[3];
  LOBYTE(v6) = *(v6 + 32);
  *v4 = v7;
  *(v4 + 8) = v8;
  *(v4 + 16) = v10;
  *(v4 + 24) = v9;
  *(v4 + 32) = v6;

  return sub_2145DF578;
}

void sub_21463BFFC(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = a1 + *(type metadata accessor for FMFShareInvitation(0) + 32);
  v4 = *(v3 + 24);
  if (v4)
  {
    *a2 = *(v3 + 16);
    a2[1] = v4;
  }

  else
  {
    sub_2146DA018();
    __break(1u);
  }
}

double sub_21463C094(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  type metadata accessor for FMFShareInvitation(0);
  sub_214031F20(v1, v2, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);

  return result;
}

void sub_21463C15C(uint64_t a1, uint64_t a2)
{
  v5 = v2 + *(type metadata accessor for FMFShareInvitation(0) + 32);
  v10[0] = a1;
  v10[1] = a2;
  v6 = *v5;
  v9 = *(v5 + 32);
  v8[0] = 0x6E776F6E6B6E753CLL;
  v8[1] = 0xE90000000000003ELL;
  v8[2] = 0xD00000000000001CLL;
  v8[3] = 0x800000021478A360;
  if (v6(v10, &v9, v8))
  {

    *(v5 + 16) = a1;
    *(v5 + 24) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v7 = 0x6E776F6E6B6E753CLL;
    v7[1] = 0xE90000000000003ELL;
    v7[2] = 0xD00000000000001CLL;
    v7[3] = 0x800000021478A360;
    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
  }
}

void (*sub_21463C2B0(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for FMFShareInvitation(0) + 32);
  *(v4 + 32) = v5;
  v6 = v1 + v5;
  v7 = *(v6 + 24);
  *(v4 + 24) = v7;
  if (v7)
  {
    *v4 = *(v6 + 16);
    *(v4 + 8) = v7;

    return sub_2145D0344;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_21463C394@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for FMFShareInvitation(0) + 32));
  v4 = *v3;
  v5 = v3[1];
  v7 = v3[2];
  v6 = v3[3];
  LOBYTE(v3) = *(v3 + 32);
  *a2 = v4;
  *(a2 + 8) = v5;
  *(a2 + 16) = v7;
  *(a2 + 24) = v6;
  *(a2 + 32) = v3;
}

void sub_21463C3F8(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = a1[2];
  v4 = a1[3];
  v6 = *(a1 + 32);
  v7 = a2 + *(type metadata accessor for FMFShareInvitation(0) + 32);

  *v7 = v3;
  *(v7 + 8) = v2;
  *(v7 + 16) = v5;
  *(v7 + 24) = v4;
  *(v7 + 32) = v6;
}

void (*sub_21463C480(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(type metadata accessor for FMFShareInvitation(0) + 32);
  *(v4 + 36) = v5;
  v6 = (v1 + v5);
  v7 = *v6;
  v8 = v6[1];
  v10 = v6[2];
  v9 = v6[3];
  LOBYTE(v6) = *(v6 + 32);
  *v4 = v7;
  *(v4 + 8) = v8;
  *(v4 + 16) = v10;
  *(v4 + 24) = v9;
  *(v4 + 32) = v6;

  return sub_2145D04E0;
}

uint64_t sub_21463C52C(uint64_t a1)
{
  *(a1 + 8) = sub_21463C594(&qword_27C90CA88, aY_93);
  result = sub_21463C594(&qword_27C90C9A8, asc_2146F96B8);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_21463C594(unint64_t *a1, const char *a2)
{
  result = *a1;
  if (!result)
  {
    v5 = type metadata accessor for FMFShareInvitation(255);
    result = swift_getWitnessTable(a2, v5);
    atomic_store(result, a1);
  }

  return result;
}

void sub_21463C600(uint64_t a1)
{
  type metadata accessor for CloudKitSharingToken(319);
  if (v1 <= 0x3F)
  {
    sub_2143A5654(319);
    if (v2 <= 0x3F)
    {
      sub_214426938(319, v2, v3, v4);
      if (v5 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

__n128 sub_21463C6A4@<Q0>(__int128 *a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  sub_213FB77C8(a1, a5);
  v9 = *(a4 + 144);
  *(a5 + 184) = *(a4 + 128);
  *(a5 + 200) = v9;
  v10 = *(a4 + 176);
  *(a5 + 216) = *(a4 + 160);
  *(a5 + 232) = v10;
  v11 = *(a4 + 80);
  *(a5 + 120) = *(a4 + 64);
  *(a5 + 136) = v11;
  v12 = *(a4 + 112);
  *(a5 + 152) = *(a4 + 96);
  *(a5 + 168) = v12;
  v13 = *(a4 + 16);
  *(a5 + 56) = *a4;
  *(a5 + 72) = v13;
  result = *(a4 + 32);
  v15 = *(a4 + 48);
  *(a5 + 88) = result;
  *(a5 + 40) = a2;
  *(a5 + 48) = a3 & 1;
  *(a5 + 104) = v15;
  return result;
}

void *sub_21463C734(_OWORD *a1)
{
  v4 = a1[9];
  v80[8] = a1[8];
  v80[9] = v4;
  v5 = a1[11];
  v80[10] = a1[10];
  v80[11] = v5;
  v6 = a1[5];
  v80[4] = a1[4];
  v80[5] = v6;
  v7 = a1[7];
  v80[6] = a1[6];
  v80[7] = v7;
  v8 = a1[1];
  v80[0] = *a1;
  v80[1] = v8;
  v9 = a1[3];
  v80[2] = a1[2];
  v80[3] = v9;
  v10 = sub_21405FB08(v80);
  if (v10 <= 1)
  {
    if (v10)
    {
      v29 = sub_213FB4918(v80);
      v30 = *(v1 + 40);
      v31 = *(v1 + 48);
      type metadata accessor for PixelBufferEncoder();
      v32 = swift_allocObject();
      *(v32 + 16) = 0;
      *(v32 + 24) = 1;
      v33 = v29[3];
      v35 = *v29;
      v34 = v29[1];
      *(v32 + 64) = v29[2];
      *(v32 + 80) = v33;
      *(v32 + 32) = v35;
      *(v32 + 48) = v34;
      v36 = v29[7];
      v38 = v29[4];
      v37 = v29[5];
      *(v32 + 128) = v29[6];
      *(v32 + 144) = v36;
      *(v32 + 96) = v38;
      *(v32 + 112) = v37;
      v39 = v29[11];
      v41 = v29[8];
      v40 = v29[9];
      *(v32 + 192) = v29[10];
      *(v32 + 208) = v39;
      *(v32 + 160) = v41;
      *(v32 + 176) = v40;
      swift_beginAccess();
      *(v32 + 16) = v30;
      *(v32 + 24) = v31;
      v42 = a1[9];
      v79[8] = a1[8];
      v79[9] = v42;
      v43 = a1[11];
      v79[10] = a1[10];
      v79[11] = v43;
      v44 = a1[5];
      v79[4] = a1[4];
      v79[5] = v44;
      v45 = a1[7];
      v79[6] = a1[6];
      v79[7] = v45;
      v46 = a1[1];
      v79[0] = *a1;
      v79[1] = v46;
      v47 = a1[3];
      v79[2] = a1[2];
      v79[3] = v47;
      v48 = sub_213FB4918(v79);
      sub_214060FB0(v48, &v67);
      v49 = sub_21463D3C4(v32, sub_21463DFBC, sub_21463DFD8, sub_21463E034);
      if (v2)
      {
        swift_setDeallocating();
        v50 = *(v32 + 176);
        v75 = *(v32 + 160);
        v76 = v50;
        v51 = *(v32 + 208);
        v77 = *(v32 + 192);
        v78 = v51;
        v52 = *(v32 + 112);
        v71 = *(v32 + 96);
        v72 = v52;
        v53 = *(v32 + 144);
        v73 = *(v32 + 128);
        v74 = v53;
        v54 = *(v32 + 48);
        v67 = *(v32 + 32);
        v68 = v54;
        v55 = *(v32 + 80);
        v69 = *(v32 + 64);
        v70 = v55;
        sub_214061060(&v67);
        return swift_deallocClassInstance();
      }

      else
      {
        v58 = v49;
        swift_setDeallocating();
        v59 = *(v32 + 176);
        v75 = *(v32 + 160);
        v76 = v59;
        v60 = *(v32 + 208);
        v77 = *(v32 + 192);
        v78 = v60;
        v61 = *(v32 + 112);
        v71 = *(v32 + 96);
        v72 = v61;
        v62 = *(v32 + 144);
        v73 = *(v32 + 128);
        v74 = v62;
        v63 = *(v32 + 48);
        v67 = *(v32 + 32);
        v68 = v63;
        v64 = *(v32 + 80);
        v69 = *(v32 + 64);
        v70 = v64;
        sub_214061060(&v67);
        swift_deallocClassInstance();
        return v58;
      }
    }

    else
    {
      v15 = sub_213FB4918(v80);
      v81 = *v15;
      v66 = v15[1];
      v16 = *(v1 + 40);
      v17 = *(v1 + 48);
      type metadata accessor for ATXEncoder();
      v18 = swift_allocObject();
      *(v18 + 24) = 0;
      *(v18 + 32) = 1;
      v65 = sub_2146D9B88();
      if (qword_280B30DD8 != -1)
      {
        swift_once();
      }

      v19 = qword_280B30DE0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F00, &unk_2146EF9C0);
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_2146EA710;
      v82 = v17;
      if (v17)
      {
        v21 = v16;
        v22 = 0xE300000000000000;
        v23 = 7104878;
      }

      else
      {
        *&v79[0] = v16;
        v23 = sub_2146D9618();
        v21 = v16;
        v22 = v56;
      }

      *(v20 + 56) = MEMORY[0x277D837D0];
      *(v20 + 64) = sub_213FB2DA0();
      *(v20 + 32) = v23;
      *(v20 + 40) = v22;
      sub_2146D91D8(v65, &dword_213FAF000, v19, "Initializing ATXEncoder with maxPixelDimension: %@", 50, 2, v20);

      *(v18 + 16) = v81;
      *(v18 + 17) = v66;
      swift_beginAccess();
      *(v18 + 24) = v21;
      *(v18 + 32) = v82;
      v57 = sub_21463D3C4(v18, sub_21463E06C, sub_21463DD78, sub_21463DE34);
      swift_setDeallocating();
      result = swift_deallocClassInstance();
      if (!v2)
      {
        return v57;
      }
    }
  }

  else
  {
    if (v10 == 2)
    {
      v24 = *(v1 + 40);
      v25 = *(v1 + 48);
      type metadata accessor for BitmapEncoder();
      inited = swift_initStackObject();
      *(inited + 16) = 0;
      *(inited + 24) = 1;
      swift_beginAccess();
      *(inited + 16) = v24;
      *(inited + 24) = v25;
      v12 = sub_21463DE50;
      v13 = sub_21463DE88;
      v27 = sub_21463DEEC;
      v11 = inited;
    }

    else
    {
      if (v10 == 3)
      {
        type metadata accessor for JPEGEncoder();
        v11 = swift_initStackObject();
        v12 = sub_21463E06C;
        v13 = sub_21463DF0C;
        v14 = sub_21463DF38;
      }

      else
      {
        type metadata accessor for PNGEncoder();
        v11 = swift_initStackObject();
        v12 = sub_21463E06C;
        v13 = sub_21463DF64;
        v14 = sub_21463DF90;
      }

      v27 = v14;
    }

    return sub_21463D3C4(v11, v12, v13, v27);
  }

  return result;
}

double sub_21463CCCC@<D0>(__int128 *a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = a1[9];
  v5 = a1[7];
  v88 = a1[8];
  v89 = v4;
  v6 = a1[9];
  v7 = a1[11];
  v90 = a1[10];
  v91 = v7;
  v8 = a1[5];
  v9 = a1[3];
  v84 = a1[4];
  v85 = v8;
  v10 = a1[5];
  v11 = a1[7];
  v86 = a1[6];
  v87 = v11;
  v12 = a1[1];
  v80 = *a1;
  v81 = v12;
  v13 = a1[3];
  v15 = *a1;
  v14 = a1[1];
  v82 = a1[2];
  v83 = v13;
  v92[8] = v88;
  v92[9] = v6;
  v16 = a1[11];
  v92[10] = v90;
  v92[11] = v16;
  v92[4] = v84;
  v92[5] = v10;
  v92[6] = v86;
  v92[7] = v5;
  v92[0] = v15;
  v92[1] = v14;
  v92[2] = v82;
  v92[3] = v9;
  if (sub_21405FB08(v92) == 1)
  {
    sub_213FB4918(v92);
    v17 = v2[3];
    v18 = v2[4];
    __swift_project_boxed_opaque_existential_1(v2, v17);
    (*(v18 + 24))(v79, sub_21463D924, 0, &type metadata for PixelBufferEncodingConfiguration, v17, v18);
    v75 = v79[8];
    v76 = v79[9];
    v77 = v79[10];
    v78 = v79[11];
    v71 = v79[4];
    v72 = v79[5];
    v73 = v79[6];
    v74 = v79[7];
    v67 = v79[0];
    v68 = v79[1];
    v69 = v79[2];
    v70 = v79[3];
    v26 = sub_214061734(&v67);
    if (v26 == 1)
    {
      v27 = sub_2146D9BA8();
      if (qword_280B35360 != -1)
      {
        v53 = v27;
        swift_once();
        v27 = v53;
      }

      sub_2146D91D8(v27, &dword_213FAF000, qword_280B35410, "Could not create new configuration", 34, 2, MEMORY[0x277D84F90]);
      v28 = v89;
      v29 = v88;
      v30 = v89;
      a2[8] = v88;
      a2[9] = v28;
      v31 = v91;
      v32 = v90;
      v33 = v91;
      a2[10] = v90;
      a2[11] = v31;
      v34 = v85;
      v35 = v84;
      v36 = v85;
      a2[4] = v84;
      a2[5] = v34;
      v37 = v87;
      v38 = v86;
      v39 = v87;
      a2[6] = v86;
      a2[7] = v37;
      v40 = v81;
      v41 = v80;
      v42 = v81;
      *a2 = v80;
      a2[1] = v40;
      v43 = v83;
      v44 = v82;
      v45 = v83;
      a2[2] = v82;
      a2[3] = v43;
      v63 = v29;
      v64 = v30;
      v65 = v32;
      v66 = v33;
      v59 = v35;
      v60 = v36;
      v61 = v38;
      v62 = v39;
      v55 = v41;
      v56 = v42;
      v57 = v44;
      v58 = v45;
      v46 = sub_213FB4918(&v55);
      sub_214060FB0(v46, &v54);
    }

    else
    {
      v63 = v75;
      v64 = v76;
      v65 = v77;
      v66 = v78;
      v59 = v71;
      v60 = v72;
      v61 = v73;
      v62 = v74;
      v55 = v67;
      v56 = v68;
      v57 = v69;
      v58 = v70;
      sub_2140611C0(&v55);
      v47 = v64;
      a2[8] = v63;
      a2[9] = v47;
      v48 = v66;
      a2[10] = v65;
      a2[11] = v48;
      v49 = v60;
      a2[4] = v59;
      a2[5] = v49;
      v50 = v62;
      a2[6] = v61;
      a2[7] = v50;
      v51 = v56;
      *a2 = v55;
      a2[1] = v51;
      result = *&v57;
      v52 = v58;
      a2[2] = v57;
      a2[3] = v52;
    }
  }

  else
  {
    v19 = v89;
    a2[8] = v88;
    a2[9] = v19;
    v20 = v91;
    a2[10] = v90;
    a2[11] = v20;
    v21 = v85;
    a2[4] = v84;
    a2[5] = v21;
    v22 = v87;
    a2[6] = v86;
    a2[7] = v22;
    v23 = v81;
    *a2 = v80;
    a2[1] = v23;
    v24 = v83;
    a2[2] = v82;
    a2[3] = v24;
    sub_2140616D8(&v80, v79);
  }

  return result;
}

uint64_t sub_21463D020(uint64_t a1, _OWORD *a2)
{
  v4 = a2[9];
  v45[8] = a2[8];
  v45[9] = v4;
  v5 = a2[11];
  v45[10] = a2[10];
  v45[11] = v5;
  v6 = a2[5];
  v45[4] = a2[4];
  v45[5] = v6;
  v7 = a2[7];
  v45[6] = a2[6];
  v45[7] = v7;
  v8 = a2[1];
  v45[0] = *a2;
  v45[1] = v8;
  v9 = a2[3];
  v45[2] = a2[2];
  v45[3] = v9;
  v10 = sub_21405FB08(v45);
  if (v10 <= 1)
  {
    if (v10)
    {
      v19 = sub_213FB4918(v45);
      type metadata accessor for PixelBufferEncoder();
      v20 = swift_allocObject();
      *(v20 + 16) = 0;
      *(v20 + 24) = 1;
      v21 = v19[3];
      v22 = *v19;
      v23 = v19[1];
      *(v20 + 64) = v19[2];
      *(v20 + 80) = v21;
      *(v20 + 32) = v22;
      *(v20 + 48) = v23;
      v24 = v19[7];
      v25 = v19[4];
      v26 = v19[5];
      *(v20 + 128) = v19[6];
      *(v20 + 144) = v24;
      *(v20 + 96) = v25;
      *(v20 + 112) = v26;
      v27 = v19[11];
      v28 = v19[8];
      v29 = v19[9];
      *(v20 + 192) = v19[10];
      *(v20 + 208) = v27;
      *(v20 + 160) = v28;
      *(v20 + 176) = v29;
      v30 = a2[9];
      v44[8] = a2[8];
      v44[9] = v30;
      v31 = a2[11];
      v44[10] = a2[10];
      v44[11] = v31;
      v32 = a2[5];
      v44[4] = a2[4];
      v44[5] = v32;
      v33 = a2[7];
      v44[6] = a2[6];
      v44[7] = v33;
      v34 = a2[1];
      v44[0] = *a2;
      v44[1] = v34;
      v35 = a2[3];
      v44[2] = a2[2];
      v44[3] = v35;
      v36 = sub_213FB4918(v44);
      sub_214060FB0(v36, v43);
      sub_21407CAA4(a1, v20);
      swift_setDeallocating();
      v37 = *(v20 + 176);
      v43[8] = *(v20 + 160);
      v43[9] = v37;
      v38 = *(v20 + 208);
      v43[10] = *(v20 + 192);
      v43[11] = v38;
      v39 = *(v20 + 112);
      v43[4] = *(v20 + 96);
      v43[5] = v39;
      v40 = *(v20 + 144);
      v43[6] = *(v20 + 128);
      v43[7] = v40;
      v41 = *(v20 + 48);
      v43[0] = *(v20 + 32);
      v43[1] = v41;
      v42 = *(v20 + 80);
      v43[2] = *(v20 + 64);
      v43[3] = v42;
      sub_214061060(v43);
    }

    else
    {
      v13 = sub_213FB4918(v45);
      v14 = *v13;
      v15 = v13[1];
      type metadata accessor for ATXEncoder();
      v16 = swift_allocObject();
      *(v16 + 24) = 0;
      *(v16 + 32) = 1;
      *(v16 + 16) = v14;
      *(v16 + 17) = v15;
      sub_21407C9A4(a1, v16);
      swift_setDeallocating();
    }

    return swift_deallocClassInstance();
  }

  else if (v10 == 2)
  {
    type metadata accessor for BitmapEncoder();
    inited = swift_initStackObject();
    *(inited + 16) = 0;
    *(inited + 24) = 1;
    return sub_21407C9E4(a1, inited);
  }

  else if (v10 == 3)
  {
    type metadata accessor for JPEGEncoder();
    v11 = swift_initStackObject();
    return sub_21407CA24(a1, v11);
  }

  else
  {
    type metadata accessor for PNGEncoder();
    v18 = swift_initStackObject();
    return sub_21407CA64(a1, v18);
  }
}

uint64_t sub_21463D2B0@<X0>(_OWORD *a1@<X8>)
{
  v2 = *(v1 + 200);
  v16[8] = *(v1 + 184);
  v16[9] = v2;
  v3 = *(v1 + 232);
  v16[10] = *(v1 + 216);
  v16[11] = v3;
  v4 = *(v1 + 136);
  v16[4] = *(v1 + 120);
  v16[5] = v4;
  v5 = *(v1 + 168);
  v16[6] = *(v1 + 152);
  v16[7] = v5;
  v6 = *(v1 + 72);
  v16[0] = *(v1 + 56);
  v16[1] = v6;
  v7 = *(v1 + 104);
  v16[2] = *(v1 + 88);
  v16[3] = v7;
  v8 = *(v1 + 200);
  a1[8] = *(v1 + 184);
  a1[9] = v8;
  v9 = *(v1 + 232);
  a1[10] = *(v1 + 216);
  a1[11] = v9;
  v10 = *(v1 + 136);
  a1[4] = *(v1 + 120);
  a1[5] = v10;
  v11 = *(v1 + 168);
  a1[6] = *(v1 + 152);
  a1[7] = v11;
  v12 = *(v1 + 72);
  *a1 = *(v1 + 56);
  a1[1] = v12;
  v13 = *(v1 + 104);
  a1[2] = *(v1 + 88);
  a1[3] = v13;
  return sub_21407CE3C(v16, &v15);
}

void *sub_21463D3C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v94 = a1;
  v9 = *(v4 + 24);
  v10 = *(v4 + 32);
  __swift_project_boxed_opaque_existential_1(v4, v9);
  v51[2] = &v94;
  result = (*(v10 + 24))(v93, a2, v51, MEMORY[0x277CC9318], v9, v10);
  if (!v5)
  {
    if (v93[1] >> 60 == 15)
    {
      v48 = a4;
      v49 = 0;
      v12 = *(v4 + 24);
      v13 = *(v4 + 32);
      v14 = __swift_project_boxed_opaque_existential_1(v4, v12);
      v50 = &v47;
      v15 = *(v4 + 200);
      v92[8] = *(v4 + 184);
      v92[9] = v15;
      v16 = *(v4 + 232);
      v92[10] = *(v4 + 216);
      v92[11] = v16;
      v17 = *(v4 + 136);
      v92[4] = *(v4 + 120);
      v92[5] = v17;
      v18 = *(v4 + 168);
      v92[6] = *(v4 + 152);
      v92[7] = v18;
      v19 = *(v4 + 72);
      v92[0] = *(v4 + 56);
      v92[1] = v19;
      v20 = *(v4 + 104);
      v92[2] = *(v4 + 88);
      v92[3] = v20;
      v21 = *(v4 + 200);
      v87 = *(v4 + 184);
      v88 = v21;
      v22 = *(v4 + 232);
      v89 = *(v4 + 216);
      v90 = v22;
      v23 = *(v4 + 136);
      v83 = *(v4 + 120);
      v84 = v23;
      v24 = *(v4 + 168);
      v85 = *(v4 + 152);
      v86 = v24;
      v25 = *(v4 + 72);
      v79 = *(v4 + 56);
      v80 = v25;
      v26 = *(v4 + 104);
      v81 = *(v4 + 88);
      v82 = v26;
      MEMORY[0x28223BE20](v14);
      v46[2] = &v94;
      v27 = *(v13 + 8);
      sub_21407CE3C(v92, &v67);
      v28 = v49;
      v27(v91, &v79, a3, v46, MEMORY[0x277CC9318], v12, v13);
      if (v28)
      {
        v75 = v87;
        v76 = v88;
        v77 = v89;
        v78 = v90;
        v71 = v83;
        v72 = v84;
        v73 = v85;
        v74 = v86;
        v67 = v79;
        v68 = v80;
        v69 = v81;
        v70 = v82;
        return sub_21407CEAC(&v67);
      }

      else
      {
        v75 = v87;
        v76 = v88;
        v77 = v89;
        v78 = v90;
        v71 = v83;
        v72 = v84;
        v73 = v85;
        v74 = v86;
        v67 = v79;
        v68 = v80;
        v69 = v81;
        v70 = v82;
        sub_21407CEAC(&v67);
        if (v91[1] >> 60 == 15)
        {
          v29 = *(v4 + 24);
          v30 = *(v4 + 32);
          v31 = __swift_project_boxed_opaque_existential_1(v4, v29);
          v49 = v46;
          v32 = *(v4 + 200);
          v66[8] = *(v4 + 184);
          v66[9] = v32;
          v33 = *(v4 + 232);
          v66[10] = *(v4 + 216);
          v66[11] = v33;
          v34 = *(v4 + 136);
          v66[4] = *(v4 + 120);
          v66[5] = v34;
          v35 = *(v4 + 168);
          v66[6] = *(v4 + 152);
          v66[7] = v35;
          v36 = *(v4 + 72);
          v66[0] = *(v4 + 56);
          v66[1] = v36;
          v37 = *(v4 + 104);
          v66[2] = *(v4 + 88);
          v66[3] = v37;
          v38 = *(v4 + 200);
          v61 = *(v4 + 184);
          v62 = v38;
          v39 = *(v4 + 232);
          v63 = *(v4 + 216);
          v64 = v39;
          v40 = *(v4 + 136);
          v57 = *(v4 + 120);
          v58 = v40;
          v41 = *(v4 + 168);
          v59 = *(v4 + 152);
          v60 = v41;
          v42 = *(v4 + 72);
          v53 = *(v4 + 56);
          v54 = v42;
          v43 = *(v4 + 104);
          v55 = *(v4 + 88);
          v56 = v43;
          MEMORY[0x28223BE20](v31);
          v45[2] = &v94;
          v44 = *(v30 + 16);
          sub_21407CE3C(v66, v52);
          v44(v65, &v53, v48, v45, MEMORY[0x277CC9318], v29, v30);
          v52[8] = v61;
          v52[9] = v62;
          v52[10] = v63;
          v52[11] = v64;
          v52[4] = v57;
          v52[5] = v58;
          v52[6] = v59;
          v52[7] = v60;
          v52[0] = v53;
          v52[1] = v54;
          v52[2] = v55;
          v52[3] = v56;
          sub_21407CEAC(v52);
          if (v65[1] >> 60 == 15)
          {
            return 0;
          }

          else
          {
            return v65[0];
          }
        }

        else
        {
          return v91[0];
        }
      }
    }

    else
    {
      return v93[0];
    }
  }

  return result;
}

void sub_21463D854(CGImage *a1@<X0>, _OWORD *a2@<X8>)
{
  Width = CGImageGetWidth(a1);
  Height = CGImageGetHeight(a1);
  sub_21409B984(Width, Height);
  if (!v2)
  {
    *&v9 = sub_21408F798(v7);
    *(&v9 + 1) = v8;
    sub_2146808C0(&v9, 0);
    v10 = v9;
    sub_214680494(&v10, a1, 1, Width, Height);
    *a2 = v10;
  }
}

double sub_21463D924@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_2144AC218(a1, v10);
  nullsub_1();
  v3 = v18;
  a2[8] = v17;
  a2[9] = v3;
  v4 = v20;
  a2[10] = v19;
  a2[11] = v4;
  v5 = v14;
  a2[4] = v13;
  a2[5] = v5;
  v6 = v16;
  a2[6] = v15;
  a2[7] = v6;
  v7 = v10[1];
  *a2 = v10[0];
  a2[1] = v7;
  result = *&v11;
  v9 = v12;
  a2[2] = v11;
  a2[3] = v9;
  return result;
}

__n128 __swift_memcpy248_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  v8 = a2[8];
  v9 = a2[9];
  v10 = a2[11];
  *(a1 + 160) = a2[10];
  *(a1 + 176) = v10;
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  result = a2[12];
  v12 = a2[13];
  v13 = a2[14];
  *(a1 + 240) = *(a2 + 30);
  *(a1 + 208) = v12;
  *(a1 + 224) = v13;
  *(a1 + 192) = result;
  return result;
}

uint64_t sub_21463D9E4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 248))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_21463DA2C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 248) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 248) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_21463DAB8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 192))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24) >> 1;
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double sub_21463DB08(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    *(a1 + 184) = 0;
    result = 0.0;
    *(a1 + 168) = 0u;
    *(a1 + 152) = 0u;
    *(a1 + 136) = 0u;
    *(a1 + 120) = 0u;
    *(a1 + 104) = 0u;
    *(a1 + 88) = 0u;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 192) = 1;
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
      *a1 = 0;
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
      *(a1 + 24) = 2 * -a2;
      result = 0.0;
      *(a1 + 32) = 0u;
      *(a1 + 48) = 0u;
      *(a1 + 64) = 0u;
      *(a1 + 80) = 0u;
      *(a1 + 96) = 0u;
      *(a1 + 112) = 0u;
      *(a1 + 128) = 0u;
      *(a1 + 144) = 0u;
      *(a1 + 160) = 0u;
      *(a1 + 176) = 0u;
      return result;
    }

    *(a1 + 192) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_21463DB98(uint64_t result, uint64_t a2)
{
  if (a2 < 2)
  {
    v2 = *(result + 40) & 1;
    v3 = *(result + 56) & 1;
    v4 = *(result + 72) & 0xFF01;
    v5 = *(result + 104) & 0x101;
    v6 = *(result + 120) & 1;
    v7 = *(result + 136) & 1 | (a2 << 62);
    *(result + 24) &= 1uLL;
    *(result + 40) = v2;
    *(result + 56) = v3;
    *(result + 72) = v4;
    *(result + 104) = v5;
    *(result + 120) = v6;
    *(result + 136) = v7;
  }

  else
  {
    *result = (a2 - 2);
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0u;
    *(result + 56) = 0u;
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 104) = 0u;
    *(result + 120) = 0u;
    *(result + 136) = 0x8000000000000000;
    *(result + 144) = 0u;
    *(result + 160) = 0u;
    *(result + 176) = 0u;
  }

  return result;
}

uint64_t sub_21463DC50@<X0>(__CVBuffer *a1@<X0>, uint64_t *a2@<X1>, unint64_t *a3@<X8>)
{
  v5 = *a2;
  CVPixelBufferLockBaseAddress(a1, 1uLL);
  BaseAddress = CVPixelBufferGetBaseAddress(a1);
  if (BaseAddress)
  {
    v7 = BaseAddress;
    swift_beginAccess();
    v8 = sub_2144668E8(v7, *(v5 + 112));
    v10 = v9;
    result = CVPixelBufferUnlockBaseAddress(a1, 1uLL);
    *a3 = v8;
    a3[1] = v10;
  }

  else
  {
    sub_214061118();
    swift_allocError();
    *v12 = 257;
    *(v12 + 8) = 0;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_21463DD20(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t), uint64_t a4)
{
  a3(a1, a2);
  swift_allocError();
  *v4 = 1281;
  *(v4 + 8) = 0;
  return swift_willThrow();
}

uint64_t sub_21463DDA4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for CGImage(0);
  v12[3] = v5;
  v12[4] = &off_28269F358;
  v12[0] = a1;
  v6 = a1;
  v7 = sub_2146411E0(v12);
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v12);
  }

  v10 = v7;
  v11 = v8;
  result = __swift_destroy_boxed_opaque_existential_1(v12);
  *a2 = v10;
  a2[1] = v11;
  return result;
}

uint64_t sub_21463DEB4@<X0>(uint64_t (*a1)(void)@<X1>, uint64_t *a2@<X8>)
{
  result = a1();
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

uint64_t sub_21463E004@<X0>(uint64_t (*a1)(void)@<X1>, uint64_t *a2@<X8>)
{
  result = a1();
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

uint64_t sub_21463E084(mem_entry_name_port_t *a1, vm_size_t a2)
{
  v4 = swift_allocObject();
  sub_21463EB14(a1, a2);
  return v4;
}

void sub_21463E0DC(char *a3@<X8>)
{
  v4 = sub_2146DA098();

  v5 = 3;
  if (v4 < 3)
  {
    v5 = v4;
  }

  *a3 = v5;
}

uint64_t sub_21463E138()
{
  v1 = 1684104562;
  if (*v0 != 1)
  {
    v1 = 0x6574697277;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x696C616974696E69;
  }
}

uint64_t sub_21463E194(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE400000000000000;
  v4 = 1684104562;
  if (v2 != 1)
  {
    v4 = 0x6574697277;
    v3 = 0xE500000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x696C616974696E69;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xEE006E6F6974617ALL;
  }

  v7 = 0xE400000000000000;
  v8 = 1684104562;
  if (*a2 != 1)
  {
    v8 = 0x6574697277;
    v7 = 0xE500000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x696C616974696E69;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xEE006E6F6974617ALL;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_2146DA6A8();
  }

  return v11 & 1;
}

uint64_t sub_21463E288()
{
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

double sub_21463E32C(uint64_t a1)
{
  sub_2146D9698();

  return result;
}

uint64_t sub_21463E3BC(uint64_t a1)
{
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

void sub_21463E468(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEE006E6F6974617ALL;
  v4 = 0xE400000000000000;
  v5 = 1684104562;
  if (v2 != 1)
  {
    v5 = 0x6574697277;
    v4 = 0xE500000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x696C616974696E69;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

void sub_21463E4C8(char *a3@<X8>)
{
  v4 = sub_2146DA098();

  v5 = 13;
  if (v4 < 0xD)
  {
    v5 = v4;
  }

  *a3 = v5;
}

unint64_t sub_21463E524()
{
  result = 0x6863614D6C6C756ELL;
  switch(*v0)
  {
    case 1:
      result = 0x654D64656C696166;
      break;
    case 2:
      result = 0xD000000000000015;
      break;
    case 3:
      result = 0x6F4379726F6D656DLL;
      break;
    case 4:
      result = 0xD000000000000018;
      break;
    case 5:
      result = 0xD000000000000012;
      break;
    case 6:
      result = 0x65666675426C696ELL;
      break;
    case 7:
      result = 0x6567616D496C696ELL;
      break;
    case 8:
      result = 0xD000000000000010;
      break;
    case 9:
      result = 0xD000000000000012;
      break;
    case 0xA:
      result = 0x696C616E69666E75;
      break;
    case 0xB:
      result = 0xD000000000000019;
      break;
    case 0xC:
      result = 0xD000000000000017;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_21463E6E0()
{
  v0 = sub_21463E524();
  v2 = v1;
  if (v0 == sub_21463E524() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_2146DA6A8();
  }

  return v5 & 1;
}

uint64_t sub_21463E77C()
{
  sub_2146DA958();
  sub_21463E524();
  sub_2146D9698();

  return sub_2146DA9B8();
}

double sub_21463E7E4(uint64_t a1)
{
  sub_21463E524();
  sub_2146D9698();

  return result;
}

uint64_t sub_21463E848(uint64_t a1)
{
  sub_2146DA958();
  sub_21463E524();
  sub_2146D9698();

  return sub_2146DA9B8();
}

unint64_t sub_21463E8B8@<X0>(unint64_t *a1@<X8>)
{
  result = sub_21463E524();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_21463E900()
{
  sub_2146D9EF8();
  MEMORY[0x2160545D0](0xD00000000000001DLL, 0x80000002147A61B0);
  v0 = sub_2146DA428();
  MEMORY[0x2160545D0](v0);

  MEMORY[0x2160545D0](0xD000000000000015, 0x80000002147A61D0);
  v1 = sub_2146DA428();
  MEMORY[0x2160545D0](v1);

  MEMORY[0x2160545D0](0x3A6874646977202CLL, 0xE900000000000020);
  v2 = sub_2146DA428();
  MEMORY[0x2160545D0](v2);

  MEMORY[0x2160545D0](0x746867696568202CLL, 0xEA0000000000203ALL);
  v3 = sub_2146DA428();
  MEMORY[0x2160545D0](v3);

  MEMORY[0x2160545D0](41, 0xE100000000000000);
  return 0;
}

uint64_t sub_21463EAC0@<X0>(_DWORD *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = *(v1 + 16);
  return result;
}

uint64_t sub_21463EB14(mem_entry_name_port_t *a1, vm_size_t size)
{
  address[1] = *MEMORY[0x277D85DE8];
  v3 = *a1;
  *(v2 + 16) = *a1;
  *(v2 + 24) = size;
  if (v3)
  {
    address[0] = 0;
    if ((size & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    v5 = 1;
    v6 = vm_map(*MEMORY[0x277D85F48], address, size, 0, 1, v3, 0, 0, 3, 3, 1u);
    v7 = address[0];
    *(v2 + 64) = address[0];
    *(v2 + 72) = 0;
    if (!v6)
    {
      if (v7)
      {
        if (*v7 == 0xB1A57D002)
        {
          *(v2 + 40) = v7;
          *(v2 + 48) = v7 + size;
          *(v2 + 56) = 0;
          *(v2 + 32) = 1;
          return v2;
        }

        v5 = 3;
      }

      else
      {
        v5 = 2;
      }
    }

    sub_21463EC98();
    swift_allocError();
    *v8 = 0;
    *(v8 + 1) = v5;
  }

  else
  {
    sub_21463EC98();
    swift_allocError();
    *v8 = 0;
  }

  *(v8 + 8) = 0;
  swift_willThrow();
  type metadata accessor for MachImage();
  swift_deallocPartialClassInstance();
  return v2;
}

unint64_t sub_21463EC98()
{
  result = qword_280B2F778[0];
  if (!qword_280B2F778[0])
  {
    result = swift_getWitnessTable(byte_214771A80, &type metadata for MachImageError, v0, v1);
    atomic_store(result, qword_280B2F778);
  }

  return result;
}

uint64_t sub_21463ED10(const void *a1, uint64_t a2)
{
  *(v2 + 16) = 0;
  *(v2 + 64) = 0;
  *(v2 + 72) = 1;
  if (!a1)
  {
    *(v2 + 24) = 0;
    goto LABEL_5;
  }

  v4 = a2 - a1;
  *(v2 + 24) = a2 - a1;
  v5 = aligned_alloc(8uLL, a2 - a1);
  if (!v5)
  {
LABEL_5:
    type metadata accessor for MachImage();
    swift_deallocPartialClassInstance();
    return 0;
  }

  v6 = v5;
  memmove(v5, a1, v4);
  *(v2 + 40) = v6;
  *(v2 + 48) = &v6[v4];
  *(v2 + 56) = 0;
  *(v2 + 32) = 0;
  return v2;
}

void sub_21463EDAC()
{
  v1 = MEMORY[0x277D85F48];
  if ((*(v0 + 72) & 1) == 0)
  {
    if ((*(v0 + 24) & 0x8000000000000000) != 0)
    {
      __break(1u);
      return;
    }

    MEMORY[0x216056C00](*MEMORY[0x277D85F48], *(v0 + 64));
  }

  swift_beginAccess();
  v2 = *(v0 + 16);
  if (v2)
  {
    mach_port_deallocate(*v1, v2);
  }

  if ((*(v0 + 32) & 1) == 0 && (*(v0 + 56) & 1) == 0)
  {
    v3 = *(v0 + 40);
    if (v3)
    {
      MEMORY[0x216056AC0](v3, -1, -1);
    }
  }
}

void sub_21463EE44()
{
  v1 = MEMORY[0x277D85F48];
  if ((*(v0 + 72) & 1) == 0)
  {
    if ((*(v0 + 24) & 0x8000000000000000) != 0)
    {
      __break(1u);
      return;
    }

    MEMORY[0x216056C00](*MEMORY[0x277D85F48], *(v0 + 64));
  }

  swift_beginAccess();
  v2 = *(v0 + 16);
  if (v2)
  {
    mach_port_deallocate(*v1, v2);
  }

  if ((*(v0 + 32) & 1) == 0 && (*(v0 + 56) & 1) == 0)
  {
    v3 = *(v0 + 40);
    if (v3)
    {
      MEMORY[0x216056AC0](v3, -1, -1);
    }
  }

  swift_deallocClassInstance();
}

uint64_t sub_21463EEE8()
{
  if (*(v0 + 56))
  {
    return 0;
  }

  v4 = v0 + 40;
  v3 = *(v0 + 40);
  v2 = *(v4 + 8);
  type metadata accessor for MachImage();
  swift_allocObject();
  return sub_21463ED10(v3, v2);
}

void sub_21463EF3C(uint64_t a1)
{
  v54 = *MEMORY[0x277D85DE8];
  if (*(v1 + 56))
  {
    sub_21463EC98();
    swift_allocError();
    v4 = 1537;
    goto LABEL_3;
  }

  v6 = *a1;
  v5 = *(a1 + 8);
  v7 = *(a1 + 16);
  v8 = *(v1 + 40);
  v9 = *(v1 + 48);
  sub_2140615A8(v52);
  v53[8] = v52[8];
  v53[9] = v52[9];
  v53[10] = v52[10];
  v53[11] = v52[11];
  v53[4] = v52[4];
  v53[5] = v52[5];
  v53[6] = v52[6];
  v53[7] = v52[7];
  v53[0] = v52[0];
  v53[1] = v52[1];
  v53[2] = v52[2];
  v53[3] = v52[3];
  if (!v5)
  {
    v12 = sub_21449C904(v6, 0, v7, v53);
    if (v2)
    {
      return;
    }

    v13 = v12;
    if (v12)
    {
      goto LABEL_12;
    }

LABEL_28:
    sub_21463EC98();
    swift_allocError();
    v4 = 1794;
LABEL_3:
    *v3 = v4;
    *(v3 + 8) = 0;
    swift_willThrow();
    return;
  }

  sub_2146A5650(v10);
  if (v2)
  {
LABEL_36:

    return;
  }

  v13 = sub_21449C904(v6, v5, v7, v53);
  if ((*(v5 + 40) & 1) == 0)
  {
    v18 = sandbox_extension_release();
    if (v18 == sub_2146D93B8())
    {
      *(v5 + 32) = 0;
      *(v5 + 40) = 1;
      goto LABEL_27;
    }

    v25 = MEMORY[0x2160542A0]();
    sub_21408FA04();
    v26 = swift_allocError();
    *v27 = v25;
    *(v27 + 4) = 0;
    swift_willThrow();

    if (*(v5 + 40))
    {
      v11 = sub_2146D9B88();
      if (qword_280B35360 != -1)
      {
        v46 = v11;
        swift_once();
        v11 = v46;
      }

      sub_2146D91D8(v11, &dword_213FAF000, qword_280B35410, "Trying to release sandbox extension that is not consumed.", 57, 2, MEMORY[0x277D84F90]);
    }

    else
    {
      v28 = sandbox_extension_release();
      if (v28 != sub_2146D93B8())
      {
        v29 = MEMORY[0x2160542A0]();
        sub_21408FA04();
        swift_allocError();
        *v30 = v29;
        *(v30 + 4) = 0;
        swift_willThrow();

        return;
      }

      *(v5 + 32) = 0;
      *(v5 + 40) = 1;
    }

    swift_willThrow();
    goto LABEL_36;
  }

  v14 = sub_2146D9B88();
  if (qword_280B35360 != -1)
  {
    goto LABEL_52;
  }

  while (1)
  {
    sub_2146D91D8(v14, &dword_213FAF000, qword_280B35410, "Trying to release sandbox extension that is not consumed.", 57, 2, MEMORY[0x277D84F90]);
LABEL_27:

    if (!v13)
    {
      goto LABEL_28;
    }

LABEL_12:
    sub_2143C122C(v49);
    if (!v8)
    {
      sub_21463F708(v49);
      sub_21463EC98();
      swift_allocError();
      v17 = 2050;
LABEL_24:
      *v16 = v17;
      *(v16 + 8) = 0;
LABEL_31:
      swift_willThrow();

      return;
    }

    if (v50 <= -9.22337204e18)
    {
      __break(1u);
LABEL_48:
      __break(1u);
LABEL_49:
      __break(1u);
LABEL_50:
      __break(1u);
      goto LABEL_51;
    }

    if (v50 >= 9.22337204e18)
    {
      goto LABEL_48;
    }

    if ((*&v50 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&v51 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      goto LABEL_49;
    }

    if (v51 <= -9.22337204e18)
    {
      goto LABEL_50;
    }

    if (v51 < 9.22337204e18)
    {
      break;
    }

LABEL_51:
    __break(1u);
LABEL_52:
    v47 = v14;
    swift_once();
    v14 = v47;
  }

  v15 = sub_21464050C(v50, v51);
  v19 = v9 - v8;
  if (v9 - v8 < v15)
  {
    v20 = v15;
    sub_21463F708(v49);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903FD8, &unk_2146EA750);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2146E6910;
    strcpy((inited + 32), "buffer.count");
    v22 = MEMORY[0x277D83B88];
    *(inited + 45) = 0;
    *(inited + 46) = -5120;
    *(inited + 48) = v19;
    *(inited + 72) = v22;
    *(inited + 80) = 0xD000000000000010;
    *(inited + 120) = v22;
    *(inited + 88) = 0x80000002147A6100;
    *(inited + 96) = v20;
    v23 = sub_2140457C0(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903FE0, &unk_2146EA760);
    swift_arrayDestroy();
    sub_21463EC98();
    swift_allocError();
    *v24 = 1282;
    *(v24 + 8) = v23;
    goto LABEL_31;
  }

  if (*v8 != 0xB1A57D002)
  {
    sub_21463F708(v49);
    sub_21463EC98();
    swift_allocError();
    v17 = 770;
    goto LABEL_24;
  }

  cbks.putBytes = sub_21463FE60;
  cbks.releaseConsumer = 0;
  v31 = CGDataConsumerCreate(v8, &cbks);
  if (v31)
  {
    v32 = v31;
    sub_21463F708(v49);
    v33 = sub_2146D9588();
    v34 = CGImageDestinationCreateWithDataConsumer(v32, v33, 1uLL, 0);
    if (v34)
    {
      v35 = v34;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913040, &qword_21473D440);
      v36 = swift_initStackObject();
      v37 = *MEMORY[0x277CD3618];
      *(v36 + 32) = *MEMORY[0x277CD3618];
      *(v36 + 16) = xmmword_2146E68D0;
      *(v36 + 40) = 0;
      v38 = *MEMORY[0x277CD3678];
      *(v36 + 48) = *MEMORY[0x277CD3678];
      *(v36 + 56) = 0;
      v39 = *MEMORY[0x277CD35A0];
      *(v36 + 64) = *MEMORY[0x277CD35A0];
      *(v36 + 72) = 1;
      v40 = v37;
      v41 = v38;
      v42 = v39;
      sub_214046938(v36);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913048, &qword_21473D448);
      swift_arrayDestroy();
      type metadata accessor for CFString(0);
      sub_2143A6B04();
      v43 = sub_2146D9468();

      CGImageDestinationAddImageFromSource(v35, v13, 0, v43);
      if (!CGImageDestinationFinalize(v35))
      {
        sub_21463EC98();
        swift_allocError();
        *v44 = 2562;
        *(v44 + 8) = 0;
        swift_willThrow();
      }
    }

    else
    {
      sub_21463EC98();
      swift_allocError();
      *v45 = 2306;
      *(v45 + 8) = 0;
      swift_willThrow();
    }
  }

  else
  {
    __break(1u);
  }
}

size_t sub_21463F774(uint64_t a1, const void *a2, size_t a3)
{
  if (!a1)
  {
    v31 = sub_2146D9BA8();
    if (qword_280B35358 != -1)
    {
      swift_once();
    }

    v32 = qword_280B35408;
    if (!os_log_type_enabled(qword_280B35408, v31))
    {
      return 0;
    }

    v33 = swift_slowAlloc();
    *v33 = 134217984;
    *(v33 + 4) = a3;
    v34 = "MachImage write had nil destPtr. bytesCount %ld";
LABEL_25:
    _os_log_impl(&dword_213FAF000, v32, v31, v34, v33, 0xCu);
    v35 = v33;
LABEL_31:
    MEMORY[0x216056AC0](v35, -1, -1);
    return 0;
  }

  if (*a1 != 0xB1A57D002)
  {
    v31 = sub_2146D9BA8();
    if (qword_280B35358 != -1)
    {
      swift_once();
    }

    v32 = qword_280B35408;
    if (!os_log_type_enabled(qword_280B35408, v31))
    {
      return 0;
    }

    v33 = swift_slowAlloc();
    *v33 = 134217984;
    *(v33 + 4) = a3;
    v34 = "During MachImage write, the MachImageHeader was not valid at the destPtr. bytesCount %ld";
    goto LABEL_25;
  }

  v5 = *(a1 + 8);
  v4 = *(a1 + 12);
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  v8 = sub_2146D9B88();
  if (qword_280B35358 != -1)
  {
    swift_once();
  }

  v9 = qword_280B35408;
  if (os_log_type_enabled(qword_280B35408, v8))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v56 = v11;
    *v10 = 136315394;
    v12 = sub_21463E900();
    v53 = v8;
    v14 = sub_2144AEA38(v12, v13, &v56);

    *(v10 + 4) = v14;
    *(v10 + 12) = 2048;
    *(v10 + 14) = a3;
    _os_log_impl(&dword_213FAF000, v9, v53, "MachImage destPtr has header: %s. bytesCount %ld", v10, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x216056AC0](v11, -1, -1);
    MEMORY[0x216056AC0](v10, -1, -1);
  }

  if (a3 < 1 || (v15 = v7 - a3, v7 < a3))
  {
    v36 = sub_2146D9BA8();
    if (os_log_type_enabled(v9, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v56 = v38;
      *v37 = 134218242;
      *(v37 + 4) = a3;
      *(v37 + 12) = 2080;
      v39 = sub_21463E900();
      v41 = sub_2144AEA38(v39, v40, &v56);

      *(v37 + 14) = v41;
      _os_log_impl(&dword_213FAF000, v9, v36, "MachImage attempted to write more bytes than what was expected. bytesCount %ld, header: %s", v37, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v38);
      v42 = v38;
LABEL_30:
      MEMORY[0x216056AC0](v42, -1, -1);
      v35 = v37;
      goto LABEL_31;
    }

    return 0;
  }

  v16 = sub_2146D9B88();
  result = os_log_type_enabled(v9, v16);
  if (result)
  {
    v18 = swift_slowAlloc();
    v52 = v5;
    v19 = swift_slowAlloc();
    v56 = v19;
    *v18 = 136315650;
    v20 = sub_21463E900();
    v51 = v4;
    v22 = sub_2144AEA38(v20, v21, &v56);
    v15 = v7 - a3;

    *(v18 + 4) = v22;
    *(v18 + 12) = 2048;
    *(v18 + 14) = a3;
    *(v18 + 22) = 2080;
    v23 = sub_21463E900();
    v25 = sub_2144AEA38(v23, v24, &v56);
    v4 = v51;

    *(v18 + 24) = v25;
    _os_log_impl(&dword_213FAF000, v9, v16, "MachImage writing new header to destPtr: %s. bytesCount %ld, old header: %s", v18, 0x20u);
    swift_arrayDestroy();
    v26 = v19;
    v5 = v52;
    MEMORY[0x216056AC0](v26, -1, -1);
    result = MEMORY[0x216056AC0](v18, -1, -1);
  }

  *a1 = 0xB1A57D002;
  *(a1 + 8) = v5;
  *(a1 + 12) = v4;
  *(a1 + 16) = v6;
  *(a1 + 24) = v15;
  v27 = v6 - 32;
  if (v6 < 0x20)
  {
    __break(1u);
  }

  else
  {
    v28 = v27 - v7;
    if (v27 >= v7)
    {
      if ((v28 & 0x8000000000000000) == 0)
      {
        v29 = sub_2146D9B88();
        if (os_log_type_enabled(v9, v29))
        {
          v30 = swift_slowAlloc();
          *v30 = 134218240;
          *(v30 + 4) = a3;
          *(v30 + 12) = 2048;
          *(v30 + 14) = v28;
          _os_log_impl(&dword_213FAF000, v9, v29, "MachImage writing %ld bytes to imageOffsetPointer. byteOffset: %llu", v30, 0x16u);
          MEMORY[0x216056AC0](v30, -1, -1);
        }

        memmove((a1 + 32 + v28), a2, a3);
        return a3;
      }

      v43 = sub_2146D9BA8();
      if (os_log_type_enabled(v9, v43))
      {
        v37 = swift_slowAlloc();
        v44 = swift_slowAlloc();
        v56 = v44;
        *v37 = 134218754;
        *(v37 + 4) = v28;
        *(v37 + 12) = 2048;
        *(v37 + 14) = a3;
        *(v37 + 22) = 2080;
        v45 = sub_21463E900();
        v47 = sub_2144AEA38(v45, v46, &v56);

        *(v37 + 24) = v47;
        *(v37 + 32) = 2080;
        v48 = sub_21463E900();
        v50 = sub_2144AEA38(v48, v49, &v56);

        *(v37 + 34) = v50;
        _os_log_impl(&dword_213FAF000, v9, v43, "byteOffset (%llu) was greater than Int.max, bailing on write. bytesCount %ld, header: %s, newHeader %s", v37, 0x2Au);
        swift_arrayDestroy();
        v42 = v44;
        goto LABEL_30;
      }

      return 0;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_21463FF98()
{
  if (*(v0 + 56))
  {
    sub_21463EC98();
    swift_allocError();
    v4 = 1537;
LABEL_16:
    *v3 = v4;
    *(v3 + 8) = 0;
LABEL_17:
    swift_willThrow();
    return ThumbnailAtIndex;
  }

  v5 = *(v0 + 40);
  if (!v5)
  {
    sub_21463EC98();
    swift_allocError();
    v4 = 2049;
    goto LABEL_16;
  }

  ThumbnailAtIndex = *(v0 + 48) - v5;
  if (ThumbnailAtIndex < 33)
  {
    sub_21463EC98();
    swift_allocError();
    v4 = 1025;
    goto LABEL_16;
  }

  if (*v5 != 0xB1A57D002)
  {
    sub_21463EC98();
    swift_allocError();
    v4 = 769;
    goto LABEL_16;
  }

  v6 = sub_21464050C(*(v5 + 8), *(v5 + 12));
  if (!v1)
  {
    if (ThumbnailAtIndex != v6)
    {
      v40 = v6;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903FD8, &unk_2146EA750);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_2146E6910;
      strcpy((inited + 32), "buffer.count");
      v42 = MEMORY[0x277D83B88];
      *(inited + 45) = 0;
      *(inited + 46) = -5120;
      *(inited + 48) = ThumbnailAtIndex;
      *(inited + 72) = v42;
      *(inited + 80) = 0xD000000000000010;
      *(inited + 120) = v42;
      *(inited + 88) = 0x80000002147A6100;
      *(inited + 96) = v40;
      ThumbnailAtIndex = sub_2140457C0(inited);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903FE0, &unk_2146EA760);
      swift_arrayDestroy();
      sub_21463EC98();
      swift_allocError();
      *v43 = 1281;
      *(v43 + 8) = ThumbnailAtIndex;
      goto LABEL_17;
    }

    v7 = CGDataProviderCreateWithData(0, (v5 + 32), ThumbnailAtIndex - 32, nullsub_55);
    if (!v7)
    {
      sub_21463EC98();
      swift_allocError();
      v4 = 2305;
      goto LABEL_16;
    }

    v8 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C912220, &qword_214734E10);
    v9 = swift_initStackObject();
    *(v9 + 16) = xmmword_2146E68D0;
    v10 = *MEMORY[0x277CD3648];
    *(v9 + 32) = *MEMORY[0x277CD3648];
    v11 = MEMORY[0x277D839B0];
    *(v9 + 40) = 1;
    v12 = *MEMORY[0x277CD3668];
    *(v9 + 64) = v11;
    *(v9 + 72) = v12;
    v13 = v10;
    v14 = v12;
    v15 = sub_2146D9588();
    type metadata accessor for CFString(0);
    ThumbnailAtIndex = v16;
    v17 = MEMORY[0x277CD35A8];
    *(v9 + 80) = v15;
    v18 = *v17;
    *(v9 + 104) = v16;
    *(v9 + 112) = v18;
    *(v9 + 144) = v11;
    *(v9 + 120) = 1;
    v19 = v18;
    sub_214045EE0(v9);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9040A0, &unk_214771CE0);
    swift_arrayDestroy();
    sub_2143A6B04();
    v20 = sub_2146D9468();

    v21 = CGImageSourceCreateWithDataProvider(v8, v20);

    if (v21)
    {
      v46 = v8;
      v22 = swift_initStackObject();
      *(v22 + 16) = xmmword_214737980;
      v23 = *MEMORY[0x277CD3568];
      *(v22 + 32) = *MEMORY[0x277CD3568];
      v24 = MEMORY[0x277CD3578];
      *(v22 + 40) = 1;
      v25 = *v24;
      *(v22 + 64) = v11;
      *(v22 + 72) = v25;
      v26 = MEMORY[0x277CD3618];
      *(v22 + 80) = 1;
      v27 = v21;
      v28 = *v26;
      *(v22 + 104) = v11;
      *(v22 + 112) = v28;
      v29 = MEMORY[0x277CD3678];
      *(v22 + 120) = 0;
      v30 = *v29;
      *(v22 + 144) = v11;
      *(v22 + 152) = v30;
      v31 = MEMORY[0x277CD35A0];
      *(v22 + 160) = 0;
      v32 = *v31;
      *(v22 + 184) = v11;
      *(v22 + 192) = v32;
      *(v22 + 224) = v11;
      *(v22 + 200) = 1;
      v33 = v23;
      v34 = v25;
      v35 = v28;
      v36 = v30;
      v37 = v32;
      sub_214045EE0(v22);
      swift_setDeallocating();
      swift_arrayDestroy();
      v38 = sub_2146D9468();

      ThumbnailAtIndex = CGImageSourceCreateThumbnailAtIndex(v27, 0, v38);

      if (!ThumbnailAtIndex)
      {
        sub_21463EC98();
        swift_allocError();
        *v45 = 3073;
        *(v45 + 8) = 0;
        swift_willThrow();
      }
    }

    else
    {
      sub_21463EC98();
      swift_allocError();
      *v44 = 2817;
      *(v44 + 8) = 0;
      swift_willThrow();
    }
  }

  return ThumbnailAtIndex;
}

uint64_t sub_21464050C(uint64_t a1, uint64_t a2)
{
  v2 = a2 * a1;
  if ((a2 * a1) >> 64 != (a2 * a1) >> 63 || (v2 - 0x2000000000000000) >> 62 != 3)
  {
    v3 = 2;
LABEL_4:
    sub_21408014C();
    swift_allocError();
    *v4 = 0;
    v4[1] = v3;
    return swift_willThrow();
  }

  v6 = 4 * v2;
  v7 = __OFADD__(v6, 32);
  v8 = v6 + 32;
  if (v7 || (result = v8 + 32000, __OFADD__(v8, 32000)))
  {
    v3 = 0;
    goto LABEL_4;
  }

  return result;
}

unint64_t sub_2146405B0()
{
  result = qword_27C917570;
  if (!qword_27C917570)
  {
    result = swift_getWitnessTable(byte_214771940, &type metadata for MachImageError.ErrorKind, v0, v1);
    atomic_store(result, &qword_27C917570);
  }

  return result;
}

unint64_t sub_214640608()
{
  result = qword_27C917578;
  if (!qword_27C917578)
  {
    result = swift_getWitnessTable(aM_128, &type metadata for MachImageError.Description, v0, v1);
    atomic_store(result, &qword_27C917578);
  }

  return result;
}

unint64_t sub_214640830(uint64_t a1)
{
  *(a1 + 8) = sub_2142FCE0C();
  result = sub_2142FCF88();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_214640870@<X0>(uint64_t result@<X0>, char a2@<W1>, _BYTE *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t ATXEncoder.__allocating_init(configuration:maxPixelDimension:)(char *a1, uint64_t a2, char a3)
{
  v6 = swift_allocObject();
  ATXEncoder.init(configuration:maxPixelDimension:)(a1, a2, a3 & 1);
  return v6;
}

uint64_t ATXEncoder.__allocating_init(configuration:)(char *a1)
{
  result = swift_allocObject();
  v3 = *a1;
  v4 = a1[1];
  *(result + 24) = 0;
  *(result + 32) = 1;
  *(result + 16) = v3;
  *(result + 17) = v4;
  return result;
}

unint64_t sub_214640980()
{
  v1 = *v0;
  v2 = v0[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C912220, &qword_214734E10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_214737980;
  v4 = *MEMORY[0x277CD2F40];
  *(inited + 32) = *MEMORY[0x277CD2F40];
  v5 = *MEMORY[0x277CD2DD8];
  type metadata accessor for CFString(0);
  *(inited + 40) = v5;
  v6 = *MEMORY[0x277CD2DD0];
  v7 = MEMORY[0x277D84CC0];
  *(inited + 64) = v8;
  *(inited + 72) = v6;
  *(inited + 80) = 68;
  v9 = *MEMORY[0x277CD2DE0];
  v10 = MEMORY[0x277D839B0];
  *(inited + 120) = v1;
  v11 = MEMORY[0x277CD2DE8];
  *(inited + 104) = v7;
  *(inited + 112) = v9;
  v12 = *v11;
  *(inited + 160) = v2;
  v13 = MEMORY[0x277CD3678];
  *(inited + 144) = v10;
  *(inited + 152) = v12;
  v14 = *v13;
  *(inited + 184) = v10;
  *(inited + 192) = v14;
  *(inited + 224) = v10;
  *(inited + 200) = 0;
  v15 = v4;
  v16 = v5;
  v17 = v6;
  v18 = v9;
  v19 = v12;
  v20 = v14;
  v21 = sub_214045EE0(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9040A0, &unk_214771CE0);
  swift_arrayDestroy();
  return v21;
}

uint64_t ATXEncoder.maxPixelDimension.setter(uint64_t a1, char a2)
{
  result = swift_beginAccess();
  *(v2 + 24) = a1;
  *(v2 + 32) = a2 & 1;
  return result;
}

uint64_t ATXEncoder.init(configuration:)(char *a1)
{
  v2 = *a1;
  v3 = a1[1];
  *(v1 + 24) = 0;
  *(v1 + 32) = 1;
  *(v1 + 16) = v2;
  *(v1 + 17) = v3;
  return v1;
}

uint64_t ATXEncoder.init(configuration:maxPixelDimension:)(char *a1, uint64_t a2, char a3)
{
  v6 = *a1;
  v14 = a1[1];
  *(v3 + 24) = 0;
  *(v3 + 32) = 1;
  v7 = sub_2146D9B88();
  if (qword_280B30DD8 != -1)
  {
    swift_once();
  }

  v8 = qword_280B30DE0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F00, &unk_2146EF9C0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_2146EA710;
  if (a3)
  {
    v10 = 0xE300000000000000;
    v11 = 7104878;
  }

  else
  {
    v11 = sub_2146D9618();
    v10 = v12;
  }

  *(v9 + 56) = MEMORY[0x277D837D0];
  *(v9 + 64) = sub_213FB2DA0();
  *(v9 + 32) = v11;
  *(v9 + 40) = v10;
  sub_2146D91D8(v7, &dword_213FAF000, v8, "Initializing ATXEncoder with maxPixelDimension: %@", 50, 2, v9);

  *(v3 + 16) = v6;
  *(v3 + 17) = v14;
  swift_beginAccess();
  *(v3 + 24) = a2;
  *(v3 + 32) = a3 & 1;
  return v3;
}

void sub_214640D60(void *a1)
{
  v3 = v1;
  v5 = sub_2146D8898();
  v6 = sub_2146D9588();
  v7 = CGImageDestinationCreateWithURL(v5, v6, 1uLL, 0);

  if (v7)
  {
    v8 = a1[3];
    v9 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v8);
    swift_beginAccess();
    v10 = sub_214640EF0(a1, *(v3 + 24), *(v3 + 32));
    if (!v2)
    {
      v11 = v10;
      (*(v9 + 8))(v7, v10, v8, v9);

      if (!CGImageDestinationFinalize(v7))
      {
        sub_214641B7C();
        swift_allocError();
        *v12 = 2;
        swift_willThrow();
      }
    }
  }

  else
  {
    sub_214641B7C();
    swift_allocError();
    *v13 = 1;
    swift_willThrow();
  }
}

uint64_t sub_214640EF0(void *a1, uint64_t a2, char a3)
{
  v8 = *(v3 + 17);
  LOBYTE(v40) = *(v3 + 16);
  BYTE1(v40) = v8;
  v9 = sub_214640980();
  if (a3)
  {
LABEL_12:
    type metadata accessor for CFString(0);
    sub_214641C1C(&qword_280B34D70, type metadata accessor for CFString, byte_2146E97A8);
    v15 = sub_2146D9468();

    return v15;
  }

  v10 = a1[3];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v10);
  v12 = (*(v11 + 16))(v10, v11);
  v14 = v13;
  v15 = type metadata accessor for EncoderUtils();
  sub_21407FF6C(a2, v12, v14);
  v17 = v16;
  v19 = v18;
  v20 = sub_21407E534(0x682E63696C627570, 0xEB00000000666965, v12, v14, v16, v18);
  if (!v4)
  {
    v21 = v12 == v17 && v14 == v19;
    v22 = MEMORY[0x277D83B88];
    if (!v21)
    {
      v23 = *MEMORY[0x277CD2D40];
      v41 = MEMORY[0x277D83B88];
      *&v40 = a2;
      v24 = v20;
      sub_213FDC730(&v40, v39);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v42 = v9;
      sub_2140529F8(v39, v23, isUniquelyReferenced_nonNull_native);
      v20 = v24;
      v9 = v42;
    }

    v26 = *MEMORY[0x277CD3650];
    v27 = *&v20;
    v28 = MEMORY[0x277D85048];
    if (v20 <= 0.0)
    {
      v28 = v22;
      v27 = 2;
    }

    v41 = v28;
    *&v40 = v27;
    sub_213FDC730(&v40, v39);
    v29 = v26;
    v30 = swift_isUniquelyReferenced_nonNull_native();
    v42 = v9;
    sub_2140529F8(v39, v29, v30);

    v31 = v42;
    v32 = *MEMORY[0x277CD3578];
    v33 = MEMORY[0x277D839B0];
    v41 = MEMORY[0x277D839B0];
    LOBYTE(v40) = 1;
    sub_213FDC730(&v40, v39);
    v34 = swift_isUniquelyReferenced_nonNull_native();
    v42 = v31;
    sub_2140529F8(v39, v32, v34);
    v35 = v42;
    v36 = *MEMORY[0x277CD35A0];
    v41 = v33;
    LOBYTE(v40) = 1;
    sub_213FDC730(&v40, v39);
    v37 = swift_isUniquelyReferenced_nonNull_native();
    v42 = v35;
    sub_2140529F8(v39, v36, v37);
    goto LABEL_12;
  }

  return v15;
}

uint64_t sub_2146411E0(void *a1)
{
  Mutable = CFDataCreateMutable(0, 0);
  if (!Mutable)
  {
    sub_214641B7C();
    swift_allocError();
    *v9 = 0;
    swift_willThrow();
    return v1;
  }

  v5 = Mutable;
  v6 = sub_2146D9588();
  v7 = CGImageDestinationCreateWithData(v5, v6, 1uLL, 0);

  if (!v7)
  {
    sub_214641B7C();
    swift_allocError();
    *v10 = 1;
    swift_willThrow();

    return v1;
  }

  swift_beginAccess();
  v8 = sub_214640EF0(a1, *(v1 + 24), *(v1 + 32));
  if (!v2)
  {
    v11 = v8;
    v29 = sub_2146D9B88();
    if (qword_280B35360 != -1)
    {
      swift_once();
    }

    v28 = qword_280B35410;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F00, &unk_2146EF9C0);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_2146EA710;
    sub_214641BD0();
    sub_214641C1C(&qword_280B30DF0, sub_214641BD0, MEMORY[0x277D85378]);
    sub_2146D9488();
    sub_2146D9498();

    v13 = MEMORY[0x277D837D0];
    v14 = sub_2146D9618();
    v16 = v15;
    *(v12 + 56) = v13;
    *(v12 + 64) = sub_213FB2DA0();
    *(v12 + 32) = v14;
    *(v12 + 40) = v16;
    sub_2146D91D8(v29, &dword_213FAF000, v28, "Encoding using ATXEncoder with options %@", 41, 2, v12);

    v17 = a1[3];
    v18 = a1[4];
    v1 = __swift_project_boxed_opaque_existential_1(a1, v17);
    (*(v18 + 8))(v7, v11, v17, v18);
    if (!CGImageDestinationFinalize(v7))
    {
      sub_214641B7C();
      swift_allocError();
      *v23 = 2;
      swift_willThrow();

LABEL_20:
      return v1;
    }

    v19 = v5;
    v1 = sub_2146D8A58();
    v21 = v20;

    v22 = v21 >> 62;
    if ((v21 >> 62) > 1)
    {
      if (v22 != 2)
      {
        goto LABEL_19;
      }

      v24 = *(v1 + 16);
      v25 = *(v1 + 24);
    }

    else
    {
      if (!v22)
      {
        if ((v21 & 0xFF000000000000) == 0)
        {
          goto LABEL_19;
        }

LABEL_22:

        return v1;
      }

      v24 = v1;
      v25 = v1 >> 32;
    }

    if (v24 != v25)
    {
      goto LABEL_22;
    }

LABEL_19:
    sub_214641B7C();
    swift_allocError();
    *v26 = 3;
    swift_willThrow();
    sub_213FB54FC(v1, v21);

    goto LABEL_20;
  }

  return v1;
}

uint64_t sub_21464167C(void *a1, uint64_t (*a2)(void), uint64_t a3)
{
  v8[3] = a2(0);
  v8[4] = a3;
  v8[0] = a1;
  v5 = a1;
  v6 = sub_2146411E0(v8);
  __swift_destroy_boxed_opaque_existential_1(v8);
  return v6;
}

uint64_t sub_21464172C(void *a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4)
{
  v8[3] = a3(0);
  v8[4] = a4;
  v8[0] = a1;
  v6 = a1;
  sub_214640D60(v8);
  return __swift_destroy_boxed_opaque_existential_1(v8);
}

uint64_t ATXEncoder.encode(pixelBuffer:to:)()
{
  sub_21407D454();
  swift_allocError();
  *v0 = 1281;
  *(v0 + 8) = 0;
  return swift_willThrow();
}

uint64_t ATXEncoder.encode(pixelBuffer:)()
{
  sub_21407D454();
  swift_allocError();
  *v0 = 1281;
  *(v0 + 8) = 0;
  return swift_willThrow();
}

uint64_t sub_214641848@<X0>(char *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  result = swift_allocObject();
  *(result + 24) = 0;
  *(result + 32) = 1;
  *(result + 16) = v3;
  *(result + 17) = v4;
  *a2 = result;
  return result;
}

uint64_t sub_21464193C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6)
{
  v10[3] = a5(0);
  v10[4] = a6;
  v10[0] = a1;
  v8 = a1;
  sub_214640D60(v10);
  return __swift_destroy_boxed_opaque_existential_1(v10);
}

uint64_t sub_2146419F0(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t a5)
{
  v10[3] = (a4)(0, a2, a3);
  v10[4] = a5;
  v10[0] = a1;
  v7 = a1;
  v8 = sub_2146411E0(v10);
  __swift_destroy_boxed_opaque_existential_1(v10);
  return v8;
}

double sub_214641A7C()
{
  v1 = *v0;
  Width = CGImageGetWidth(*v0);
  CGImageGetHeight(v1);
  return Width;
}

double sub_214641AC8()
{
  sub_2143C122C(v1);
  sub_21463F708(v1);
  return v2;
}

unint64_t sub_214641B7C()
{
  result = qword_27C917580;
  if (!qword_27C917580)
  {
    result = swift_getWitnessTable(asc_214771D6C, &type metadata for ATXEncodingError, v0, v1);
    atomic_store(result, &qword_27C917580);
  }

  return result;
}

unint64_t sub_214641BD0()
{
  result = qword_280B30DE8;
  if (!qword_280B30DE8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280B30DE8);
  }

  return result;
}

uint64_t sub_214641C1C(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_214641C78()
{
  result = qword_27C917588;
  if (!qword_27C917588)
  {
    result = swift_getWitnessTable(byte_214771D44, &type metadata for ATXEncodingError, v0, v1);
    atomic_store(result, &qword_27C917588);
  }

  return result;
}

void sub_214641CCC(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9041A8, &unk_2146EAEA0);
    v2 = sub_2146DA058();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v8 = 0;
  while (v5)
  {
LABEL_15:
    v12 = __clz(__rbit64(v5)) | (v8 << 6);
    v13 = (*(a1 + 48) + 16 * v12);
    v15 = *v13;
    v14 = v13[1];
    sub_2140537E4(*(a1 + 56) + 32 * v12, v35);
    *&v34 = v15;
    *(&v34 + 1) = v14;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    sub_213FDC730(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_213FDC730(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_213FDC730(v31, v32);
    v16 = sub_2146D9E78();
    v17 = -1 << *(v2 + 32);
    v18 = v16 & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v7 + 8 * (v18 >> 6))) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = *(v7 + 8 * v19);
        if (v23 != -1)
        {
          v9 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v9 = __clz(__rbit64((-1 << v18) & ~*(v7 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
    v10 = *(v2 + 48) + 40 * v9;
    *v10 = v24;
    *(v10 + 16) = v25;
    *(v10 + 32) = v26;
    sub_213FDC730(v32, (*(v2 + 56) + 32 * v9));
    ++*(v2 + 16);
  }

  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v8;
    if (v5)
    {
      v8 = v11;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
}

void sub_214641F94(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9041A8, &unk_2146EAEA0);
    v2 = sub_2146DA058();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v8 = 0;
  while (v5)
  {
LABEL_15:
    v12 = (v8 << 10) | (16 * __clz(__rbit64(v5)));
    v13 = (*(a1 + 48) + v12);
    v14 = v13[1];
    v15 = (*(a1 + 56) + v12);
    v16 = *v15;
    v17 = v15[1];
    *&v34[0] = *v13;
    *(&v34[0] + 1) = v14;

    sub_21402D9F8(v16, v17);
    swift_dynamicCast();
    swift_dynamicCast();
    v30 = v26;
    v31 = v27;
    v32 = v28;
    sub_213FDC730(&v29, v33);
    v26 = v30;
    v27 = v31;
    v28 = v32;
    sub_213FDC730(v33, v34);
    v18 = sub_2146D9E78();
    v19 = -1 << *(v2 + 32);
    v20 = v18 & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v7 + 8 * (v20 >> 6))) == 0)
    {
      v22 = 0;
      v23 = (63 - v19) >> 6;
      while (++v21 != v23 || (v22 & 1) == 0)
      {
        v24 = v21 == v23;
        if (v21 == v23)
        {
          v21 = 0;
        }

        v22 |= v24;
        v25 = *(v7 + 8 * v21);
        if (v25 != -1)
        {
          v9 = __clz(__rbit64(~v25)) + (v21 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v9 = __clz(__rbit64((-1 << v20) & ~*(v7 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
    v10 = *(v2 + 48) + 40 * v9;
    *v10 = v26;
    *(v10 + 16) = v27;
    *(v10 + 32) = v28;
    sub_213FDC730(v34, (*(v2 + 56) + 32 * v9));
    ++*(v2 + 16);
  }

  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v8;
    if (v5)
    {
      v8 = v11;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
}

void sub_21464225C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C914350, &qword_21474D950);
    v2 = sub_2146DA058();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v11 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v7;
    if (v5)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v13 = v12 | (v11 << 6);
        v14 = (*(a1 + 48) + 16 * v13);
        v16 = *v14;
        v15 = v14[1];
        v17 = *(*(a1 + 56) + 8 * v13);
        sub_21404A8B8(0, &unk_27C9131C0, off_278175128);

        v18 = v17;
        swift_dynamicCast();
        sub_213FDC730(&v25, v27);
        sub_213FDC730(v27, v28);
        sub_213FDC730(v28, &v26);
        v19 = sub_21408C300(v16, v15);
        if (v20)
        {
          v8 = (v2[6] + 16 * v19);
          *v8 = v16;
          v8[1] = v15;
          v9 = v19;

          v10 = (v2[7] + 32 * v9);
          __swift_destroy_boxed_opaque_existential_1(v10);
          sub_213FDC730(&v26, v10);
          v7 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v19;
          v21 = (v2[6] + 16 * v19);
          *v21 = v16;
          v21[1] = v15;
          sub_213FDC730(&v26, (v2[7] + 32 * v19));
          v22 = v2[2];
          v23 = __OFADD__(v22, 1);
          v24 = v22 + 1;
          if (v23)
          {
            goto LABEL_21;
          }

          v2[2] = v24;
          v7 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v11 = v7;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
}

void sub_2146424C8(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C914350, &qword_21474D950);
    v2 = sub_2146DA058();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v11 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v7;
    if (v5)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v13 = (*(a1 + 48) + ((v11 << 10) | (16 * v12)));
        v15 = *v13;
        v14 = v13[1];

        swift_dynamicCast();
        sub_213FDC730(&v22, v24);
        sub_213FDC730(v24, v25);
        sub_213FDC730(v25, &v23);
        v16 = sub_21408C300(v15, v14);
        if (v17)
        {
          v8 = (v2[6] + 16 * v16);
          *v8 = v15;
          v8[1] = v14;
          v9 = v16;

          v10 = (v2[7] + 32 * v9);
          __swift_destroy_boxed_opaque_existential_1(v10);
          sub_213FDC730(&v23, v10);
          v7 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v16;
          v18 = (v2[6] + 16 * v16);
          *v18 = v15;
          v18[1] = v14;
          sub_213FDC730(&v23, (v2[7] + 32 * v16));
          v19 = v2[2];
          v20 = __OFADD__(v19, 1);
          v21 = v19 + 1;
          if (v20)
          {
            goto LABEL_21;
          }

          v2[2] = v21;
          v7 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v11 = v7;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
}

void sub_214642720(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C914350, &qword_21474D950);
    v2 = sub_2146DA058();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v10 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v10);
    ++v7;
    if (v5)
    {
      while (1)
      {
        v11 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v12 = v11 | (v10 << 6);
        v13 = (*(a1 + 48) + 16 * v12);
        v14 = *v13;
        v15 = v13[1];
        sub_2140537E4(*(a1 + 56) + 32 * v12, v29);
        *&v28 = v14;
        *(&v28 + 1) = v15;
        v26[2] = v28;
        v27[0] = v29[0];
        v27[1] = v29[1];
        v16 = v28;
        sub_213FDC730(v27, &v22);

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C917590, &qword_214771DB8);
        swift_dynamicCast();
        sub_213FDC730(&v23, v25);
        sub_213FDC730(v25, v26);
        sub_213FDC730(v26, &v24);
        v17 = sub_21408C300(v16, *(&v16 + 1));
        if (v18)
        {
          *(v2[6] + 16 * v17) = v16;
          v8 = v17;

          v9 = (v2[7] + 32 * v8);
          __swift_destroy_boxed_opaque_existential_1(v9);
          sub_213FDC730(&v24, v9);
          v7 = v10;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v17;
          *(v2[6] + 16 * v17) = v16;
          sub_213FDC730(&v24, (v2[7] + 32 * v17));
          v19 = v2[2];
          v20 = __OFADD__(v19, 1);
          v21 = v19 + 1;
          if (v20)
          {
            goto LABEL_21;
          }

          v2[2] = v21;
          v7 = v10;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v10 = v7;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
}

uint64_t sub_2146429AC(uint64_t a1)
{
  sub_214642A54();
  v1 = sub_2146D9468();

  return v1;
}

uint64_t sub_214642A00(uint64_t a1)
{
  sub_214642A54();
  v1 = sub_2146D9468();

  return v1;
}

uint64_t sub_214642A54()
{
  v58 = *MEMORY[0x277D85DE8];
  v1 = *v0;
  v32 = sub_2146D93B8();
  v2 = [objc_allocWithZone(OPackCoder) init];
  v57 = xmmword_2146ECC00;
  if ((v1 - 16) >= 3)
  {
    if ((v1 - 21) > 2)
    {
      goto LABEL_23;
    }

    v3 = *(v0 + 120);
    v4 = *(v0 + 152);
    v53 = *(v0 + 136);
    v54 = v4;
    LOBYTE(v55) = v0[168];
    v5 = *(v0 + 56);
    v6 = *(v0 + 88);
    v49 = *(v0 + 72);
    v50 = v6;
    v51 = *(v0 + 104);
    v52 = v3;
    v7 = *(v0 + 24);
    v45 = *(v0 + 8);
    v46 = v7;
    v47 = *(v0 + 40);
    v48 = v5;
    result = get_enum_tag_for_layout_string_9BlastDoor12MBDRichCardsVSg_0(&v45);
    if (result != 1)
    {
      v41 = v53;
      v42 = v54;
      LOBYTE(v43) = v55;
      v37 = v49;
      v38 = v50;
      v39 = v51;
      v40 = v52;
      v33 = v45;
      v34 = v46;
      v35 = v47;
      v36 = v48;
      v9 = sub_2143DE178();
      sub_214641CCC(v9);

      v10 = sub_2146D9468();

      v11 = [v2 pack:v10 status:&v32];
      goto LABEL_7;
    }

    __break(1u);
LABEL_25:
    __break(1u);
    return result;
  }

  v12 = *(v0 + 22);
  v55 = *(v0 + 21);
  v56[0] = v12;
  v13 = *(v0 + 18);
  v51 = *(v0 + 17);
  v52 = v13;
  v14 = *(v0 + 20);
  v53 = *(v0 + 19);
  v54 = v14;
  v15 = *(v0 + 14);
  v47 = *(v0 + 13);
  v48 = v15;
  v16 = *(v0 + 16);
  v49 = *(v0 + 15);
  v50 = v16;
  v17 = *(v0 + 12);
  v45 = *(v0 + 11);
  v46 = v17;
  *(v56 + 9) = *(v0 + 361);
  result = get_enum_tag_for_layout_string_9BlastDoor23CSDMConversationMessageVSg_0(&v45);
  if (result == 1)
  {
    goto LABEL_25;
  }

  v43 = v55;
  v44[0] = v56[0];
  *(v44 + 9) = *(v56 + 9);
  v39 = v51;
  v40 = v52;
  v41 = v53;
  v42 = v54;
  v35 = v47;
  v36 = v48;
  v37 = v49;
  v38 = v50;
  v33 = v45;
  v34 = v46;
  v18 = sub_2143DFC90();
  sub_214641CCC(v18);

  v10 = sub_2146D9468();

  v11 = [v2 pack:v10 status:&v32];
LABEL_7:
  v19 = v11;

  if (!v19)
  {
    goto LABEL_23;
  }

  v20 = v19;
  v21 = sub_2146D9CC8();
  v22 = sub_2146D9CD8();
  v23 = sub_2146D9CC8();
  v24 = sub_2146D9CD8();
  if (v21 < v23 || v24 < v21)
  {
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v25 = sub_2146D9CC8();
  v26 = sub_2146D9CD8();

  if (v22 < v25 || v26 < v22)
  {
    goto LABEL_19;
  }

  v27 = v22 - v21;
  if (__OFSUB__(v22, v21))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if ((v27 & 0x8000000000000000) != 0)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (HIDWORD(v27))
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
  }

  LODWORD(v45) = bswap32(v27);
  if (sub_214643890(&v45, &v45 + 4)[2])
  {
    sub_2146D8A08();
  }

  sub_2146D8A28();
  v28 = v20;

  sub_214642E88(v28);

  v29 = v57;
  *(&v46 + 1) = MEMORY[0x277CC9318];
  v45 = v57;
  sub_213FDC730(&v45, &v33);
  sub_21402D9F8(v29, *(&v29 + 1));
  v30 = MEMORY[0x277D84F98];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_2140524DC(&v33, 0xD000000000000010, 0x800000021478BC50, isUniquelyReferenced_nonNull_native);

  sub_213FB54FC(v29, *(&v29 + 1));
  return v30;
}

void sub_214642E88(void *a1)
{
  v2 = v1;
  v43[5] = *MEMORY[0x277D85DE8];
  v39 = a1;
  v40 = a1;
  sub_21404A8B8(0, &qword_27C9041F0, 0x277CBEA90);
  v4 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C916B50, &qword_21476B170);
  if (swift_dynamicCast())
  {
    sub_213FB77C8(v41, v43);
    v5 = __swift_project_boxed_opaque_existential_1(v43, v43[3]);
    MEMORY[0x28223BE20](v5);
    v38 = v2;
    sub_2146D8788();
    __swift_destroy_boxed_opaque_existential_1(v43);
    return;
  }

  v42 = 0;
  memset(v41, 0, sizeof(v41));
  sub_21464390C(v41);
  v6 = sub_2146D9CC8();
  v7 = sub_2146D9CD8();
  v8 = sub_2146D9CC8();
  v9 = sub_2146D9CD8();
  if (v6 < v8 || v9 < v6)
  {
    goto LABEL_54;
  }

  v10 = sub_2146D9CC8();
  v11 = sub_2146D9CD8();
  if (v7 < v10 || v11 < v7)
  {
    goto LABEL_55;
  }

  v12 = v7 - v6;
  if (__OFSUB__(v7, v6))
  {
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  v13 = *v2;
  v14 = v2[1];
  v15 = v14 >> 62;
  if ((v14 >> 62) <= 1)
  {
    if (!v15)
    {
      v16 = BYTE6(v14);
      v17 = BYTE6(v14);
      goto LABEL_18;
    }

    goto LABEL_15;
  }

  if (v15 != 2)
  {
    v16 = 0;
    v17 = 0;
    goto LABEL_18;
  }

  v18 = v13 + 16;
  v13 = *(v13 + 16);
  v16 = *(v18 + 8);
  v17 = v16 - v13;
  if (__OFSUB__(v16, v13))
  {
    __break(1u);
LABEL_15:
    if (__OFSUB__(HIDWORD(v13), v13))
    {
      goto LABEL_63;
    }

    v17 = HIDWORD(v13) - v13;
    v16 = v13 >> 32;
  }

LABEL_18:
  if (__OFADD__(v16, v12))
  {
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  if (v16 + v12 < v16)
  {
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  if (v16 < 0)
  {
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  v19 = sub_2146D89E8();
  MEMORY[0x28223BE20](v19);
  v37[2] = v17;
  v37[3] = v7 - v6;
  v38 = &v40;
  v22 = sub_2146432EC(sub_214643974, v37);
  if (v21 != v12)
  {
LABEL_34:
    v30 = 0;
    v31 = *v2;
    v32 = v2[1];
    v33 = v32 >> 62;
    if ((v32 >> 62) > 1)
    {
      if (v33 == 2)
      {
        v30 = *(v31 + 16);
      }
    }

    else if (v33)
    {
      v30 = v31;
    }

    v34 = __OFADD__(v30, v17);
    v35 = v30 + v17;
    if (!v34)
    {
      if (!__OFADD__(v35, v21))
      {
        if (v33 > 1)
        {
          if (v33 == 2)
          {
            v36 = *(v31 + 24);
          }

          else
          {
            v36 = 0;
          }
        }

        else if (v33)
        {
          v36 = v31 >> 32;
        }

        else
        {
          v36 = BYTE6(v32);
        }

        if (v36 >= v35 + v21)
        {
          sub_2146D89F8();
          goto LABEL_50;
        }

        goto LABEL_62;
      }

LABEL_61:
      __break(1u);
LABEL_62:
      __break(1u);
LABEL_63:
      __break(1u);
    }

LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  v23 = v20;
  memset(v43, 0, 15);
  if (v20 == sub_2146D9CD8())
  {
    goto LABEL_50;
  }

  v24 = sub_2146D9CE8();
  v17 = sub_2146D9CC8();
  v25 = sub_2146D9CD8();
  if (v23 < v17 || v23 >= v25)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  LOBYTE(v26) = 0;
  v27 = v23 + 1;
  while (1)
  {
    *(v43 + v26) = v24;
    v26 = v26 + 1;
    if ((v26 >> 8))
    {
      __break(1u);
LABEL_54:
      __break(1u);
LABEL_55:
      __break(1u);
      goto LABEL_56;
    }

    if (v26 == 14)
    {
      *&v41[0] = v43[0];
      *(v41 + 6) = *(v43 + 6);
      sub_2146D8A08();
      if (v27 == sub_2146D9CD8())
      {
        goto LABEL_50;
      }

      LOBYTE(v26) = 0;
      goto LABEL_31;
    }

    if (v27 == sub_2146D9CD8())
    {
      break;
    }

LABEL_31:
    v24 = sub_2146D9CE8();
    v17 = sub_2146D9CC8();
    v28 = sub_2146D9CD8();
    if (v27 >= v17 && v27++ < v28)
    {
      continue;
    }

    goto LABEL_33;
  }

  *&v41[0] = v43[0];
  *(v41 + 6) = *(v43 + 6);
  sub_2146D8A08();
LABEL_50:
}

char *sub_2146432EC(void *(*a1)(uint64_t *__return_ptr, char *, char *), uint64_t a2)
{
  v4 = v2;
  v19[2] = *MEMORY[0x277D85DE8];
  v7 = *v2;
  v6 = v2[1];
  v8 = v6 >> 62;
  if ((v6 >> 62) <= 1)
  {
    if (!v8)
    {
      sub_213FB54FC(v7, v6);
      v19[0] = v7;
      LOWORD(v19[1]) = v6;
      BYTE2(v19[1]) = BYTE2(v6);
      BYTE3(v19[1]) = BYTE3(v6);
      BYTE4(v19[1]) = BYTE4(v6);
      BYTE5(v19[1]) = BYTE5(v6);
      BYTE6(v19[1]) = BYTE6(v6);
      result = a1(&v17, v19, v19 + BYTE6(v6));
      if (!v3)
      {
        result = v17;
      }

      v10 = LODWORD(v19[1]) | ((WORD2(v19[1]) | (BYTE6(v19[1]) << 16)) << 32);
      *v4 = v19[0];
      v4[1] = v10;
      return result;
    }

    v12 = v6 & 0x3FFFFFFFFFFFFFFFLL;

    sub_213FB54FC(v7, v6);
    *v4 = xmmword_2146ECC00;
    sub_213FB54FC(0, 0xC000000000000000);
    v13 = v7 >> 32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      if (v13 < v7)
      {
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      if (sub_2146D8728() && __OFSUB__(v7, sub_2146D8758()))
      {
LABEL_26:
        __break(1u);
      }

      sub_2146D8778();
      swift_allocObject();
      v14 = sub_2146D8708();

      v12 = v14;
    }

    if (v13 >= v7)
    {

      v15 = sub_2146436EC(v7, v7 >> 32, a1);

      v11 = v12 | 0x4000000000000000;
      if (!v3)
      {
        *v4 = v7;
        v4[1] = v11;
        return v15;
      }

      *v4 = v7;
      goto LABEL_21;
    }

    __break(1u);
    goto LABEL_25;
  }

  if (v8 == 2)
  {

    sub_213FB54FC(v7, v6);
    v17 = v7;
    v18 = v6 & 0x3FFFFFFFFFFFFFFFLL;
    *v4 = xmmword_2146ECC00;
    sub_213FB54FC(0, 0xC000000000000000);
    sub_2146D8968();
    result = sub_2146436EC(*(v17 + 2), *(v17 + 3), a1);
    v11 = v18 | 0x8000000000000000;
    if (!v3)
    {
      *v4 = v17;
      v4[1] = v11;
      return result;
    }

    *v4 = v17;
LABEL_21:
    v4[1] = v11;
    return result;
  }

  memset(v19, 0, 15);
  result = a1(&v17, v19, v19);
  if (!v3)
  {
    return v17;
  }

  return result;
}

void *sub_214643684(void *(*a1)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    result = a1(&v6, a3, a4 - a3);
    if (!v4)
    {
      return v6;
    }
  }

  else
  {
    result = (a1)(&v6, 0, 0, 0, a4);
    if (!v4)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

char *sub_2146436EC(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, char *, char *))
{
  result = sub_2146D8728();
  if (!result)
  {
    goto LABEL_12;
  }

  v8 = result;
  result = sub_2146D8758();
  v9 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = __OFSUB__(a2, a1);
  v11 = a2 - a1;
  if (v10)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v12 = sub_2146D8748();
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  result = a3(&v14, &v8[v9], &v8[v9 + v13]);
  if (!v3)
  {
    return v14;
  }

  return result;
}

uint64_t sub_2146437A0(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  result = sub_2146D9CC8();
  v9 = result;
  if (!a2)
  {
LABEL_12:
    a3 = 0;
    goto LABEL_15;
  }

  if (!a3)
  {
LABEL_15:
    *a1 = a4;
    a1[1] = v9;
    v14 = a4;
    return a3;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v10 = 0;
    while (1)
    {
      v11 = v9 + v10;
      if (v9 + v10 == sub_2146D9CD8())
      {
        v9 += v10;
        a3 = v10;
        goto LABEL_15;
      }

      v12 = sub_2146D9CE8();
      v13 = sub_2146D9CC8();
      result = sub_2146D9CD8();
      if (v11 < v13 || v11 >= result)
      {
        break;
      }

      *(a2 + v10) = v12;
      if (a3 - 1 == v10)
      {
        v9 += v10 + 1;
        goto LABEL_15;
      }

      if (__OFADD__(++v10, 1))
      {
        __break(1u);
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_214643890(_BYTE *a1, _BYTE *a2)
{
  if (!a1)
  {
    return MEMORY[0x277D84F90];
  }

  v3 = a2 - a1;
  if (a2 == a1)
  {
    return MEMORY[0x277D84F90];
  }

  result = sub_2146701CC(a2 - a1, 0);
  if (a2 > a1)
  {
    if ((v3 & 0x8000000000000000) == 0)
    {
      v6 = result;
      memmove(result + 4, a1, v3);
      return v6;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_21464390C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C916B58, qword_21476B178);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_214643974@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_2146439DC(a1, a2, *(v3 + 16), **(v3 + 32));
  if (!v4)
  {
    *a3 = result;
    a3[1] = v7;
    a3[2] = v8;
  }

  return result;
}

id sub_2146439DC(id result, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = result;
  if (!result)
  {
    v8 = a4;
    sub_2146D9CC8();
    return v8;
  }

  v6 = a2 - result - a3;
  if (!__OFSUB__(a2 - result, a3))
  {
    v7 = a4;
    sub_2146437A0(&v9, v4 + a3, v6, v7);
    v8 = v9;

    return v8;
  }

  __break(1u);
  return result;
}

uint64_t sub_214643A7C@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 64);
  v3 = *(v1 + 72);
  v4 = *(v1 + 80);
  *a1 = *(v1 + 56);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
}

__n128 sub_214643AC8(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u8[8];

  result = *a1;
  *(v1 + 56) = *a1;
  *(v1 + 72) = v3;
  *(v1 + 80) = v4;
  return result;
}

void sub_214643B20()
{
  if (*(v0 + 72))
  {
  }

  else
  {
    sub_2146DA018();
    __break(1u);
  }
}

double sub_214643B90@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;

  return result;
}

uint64_t sub_214643BD4(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);

  *v1 = v2;
  *(v1 + 8) = v3;
  *(v1 + 16) = v4;
  return result;
}

uint64_t sub_214643C40@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 8);
  v3 = *(result + 16);
  *a2 = *result;
  *(a2 + 8) = v2;
  *(a2 + 16) = v3;
  return result;
}

uint64_t sub_214643C54(uint64_t a1)
{
  v2 = sub_214643E4C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214643C90(uint64_t a1)
{
  v2 = sub_214643E4C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214643CCC(void *a1)
{
  v11[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C917598, &qword_214771DC0);
  v3 = *(v11[0] - 8);
  MEMORY[0x28223BE20](v11[0]);
  v5 = v11 - v4;
  v6 = *v1;
  v7 = v1[1];
  v8 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214643E4C();

  sub_2146DAA28();
  v11[1] = v6;
  v11[2] = v7;
  v12 = v8;
  sub_2140A6418();
  v9 = v11[0];
  sub_2146DA388();

  return (*(v3 + 8))(v5, v9);
}

unint64_t sub_214643E4C()
{
  result = qword_27C9175A0;
  if (!qword_27C9175A0)
  {
    result = swift_getWitnessTable(aI_50, &type metadata for WalletOrderPreview.Context.CodingKeys, v0, v1);
    atomic_store(result, &qword_27C9175A0);
  }

  return result;
}

uint64_t sub_214643EA0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9175A8, &qword_214771DC8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v12 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214643E4C();
  sub_2146DAA08();
  if (!v2)
  {
    sub_21406100C();
    sub_2146DA1C8();
    (*(v6 + 8))(v8, v5);
    v9 = v12[2];
    v10 = v13;
    *a2 = v12[1];
    *(a2 + 8) = v9;
    *(a2 + 16) = v10;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_214644048()
{
  v1 = *v0;
  sub_21402D9F8(*v0, *(v0 + 8));
  return v1;
}

uint64_t sub_21464407C(uint64_t a1, uint64_t a2)
{
  result = sub_213FB54FC(*v2, *(v2 + 8));
  *v2 = a1;
  *(v2 + 8) = a2;
  return result;
}

uint64_t sub_2146440D4()
{
  v1 = *(v0 + 16);
  sub_21402D9F8(v1, *(v0 + 24));
  return v1;
}

uint64_t sub_214644108(uint64_t a1, uint64_t a2)
{
  result = sub_213FB54FC(*(v2 + 16), *(v2 + 24));
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t sub_214644160()
{
  v1 = *(v0 + 32);
  sub_21402D9F8(v1, *(v0 + 40));
  return v1;
}

uint64_t sub_214644194(uint64_t a1, uint64_t a2)
{
  result = sub_213FB54FC(*(v2 + 32), *(v2 + 40));
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t sub_214644240@<X0>(uint64_t a1@<X8>)
{
  result = sub_213FB2E54(v1, &v11, &qword_27C904858, &qword_214736F00);
  if (*(&v12 + 1))
  {
    v4 = v24;
    *(a1 + 192) = v23;
    *(a1 + 208) = v4;
    *(a1 + 224) = v25;
    *(a1 + 240) = v26;
    v5 = v20;
    *(a1 + 128) = v19;
    *(a1 + 144) = v5;
    v6 = v22;
    *(a1 + 160) = v21;
    *(a1 + 176) = v6;
    v7 = v16;
    *(a1 + 64) = v15;
    *(a1 + 80) = v7;
    v8 = v18;
    *(a1 + 96) = v17;
    *(a1 + 112) = v8;
    v9 = v12;
    *a1 = v11;
    *(a1 + 16) = v9;
    v10 = v14;
    *(a1 + 32) = v13;
    *(a1 + 48) = v10;
  }

  else
  {
    __break(1u);
  }

  return result;
}

__n128 sub_2146442D8(uint64_t a1)
{
  sub_213FB2DF4(v1, &qword_27C904858, &qword_214736F00);
  v3 = *(a1 + 208);
  *(v1 + 192) = *(a1 + 192);
  *(v1 + 208) = v3;
  *(v1 + 224) = *(a1 + 224);
  *(v1 + 240) = *(a1 + 240);
  v4 = *(a1 + 144);
  *(v1 + 128) = *(a1 + 128);
  *(v1 + 144) = v4;
  v5 = *(a1 + 176);
  *(v1 + 160) = *(a1 + 160);
  *(v1 + 176) = v5;
  v6 = *(a1 + 80);
  *(v1 + 64) = *(a1 + 64);
  *(v1 + 80) = v6;
  v7 = *(a1 + 112);
  *(v1 + 96) = *(a1 + 96);
  *(v1 + 112) = v7;
  v8 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = v8;
  result = *(a1 + 32);
  v10 = *(a1 + 48);
  *(v1 + 32) = result;
  *(v1 + 48) = v10;
  return result;
}

void (*sub_214644358(uint64_t *a1))(uint64_t *a1, char a2)
{
  v2 = v1;
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x1F8uLL);
  }

  v5 = v4;
  *a1 = v4;
  v6 = v4 + 248;
  *(v4 + 496) = v2;
  result = sub_213FB2E54(v2, v4 + 248, &qword_27C904858, &qword_214736F00);
  if (*(v5 + 272))
  {
    v8 = *(v6 + 208);
    *(v5 + 192) = *(v6 + 192);
    *(v5 + 208) = v8;
    *(v5 + 224) = *(v6 + 224);
    *(v5 + 240) = *(v6 + 240);
    v9 = *(v6 + 144);
    *(v5 + 128) = *(v6 + 128);
    *(v5 + 144) = v9;
    v10 = *(v6 + 176);
    *(v5 + 160) = *(v6 + 160);
    *(v5 + 176) = v10;
    v11 = *(v6 + 80);
    *(v5 + 64) = *(v6 + 64);
    *(v5 + 80) = v11;
    v12 = *(v6 + 112);
    *(v5 + 96) = *(v6 + 96);
    *(v5 + 112) = v12;
    v13 = *(v6 + 16);
    *v5 = *v6;
    *(v5 + 16) = v13;
    v14 = *(v6 + 48);
    *(v5 + 32) = *(v6 + 32);
    *(v5 + 48) = v14;
    return sub_2140A3C24;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_214644470(const void *a1)
{
  sub_213FB2DF4(v1, &qword_27C905500, &qword_2146F2BE0);

  return memcpy(v1, a1, 0x1B8uLL);
}

void (*sub_2146444C4(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x378uLL);
  }

  *a1 = v3;
  *(v3 + 880) = v1;
  sub_213FB2E54(v1, v3, &qword_27C905500, &qword_2146F2BE0);
  return sub_2140A3E5C;
}

__n128 sub_214644550@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 472);
  result = *(v1 + 440);
  v4 = *(v1 + 456);
  *a1 = result;
  *(a1 + 16) = v4;
  *(a1 + 32) = v2;
  return result;
}

__n128 sub_214644568(uint64_t a1)
{
  v2 = *(a1 + 32);
  result = *a1;
  v4 = *(a1 + 16);
  *(v1 + 440) = *a1;
  *(v1 + 456) = v4;
  *(v1 + 472) = v2;
  return result;
}

__n128 sub_2146445A0@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_214061854(v21);
  v4 = v21[8];
  v5 = v21[10];
  v6 = v21[11];
  *(a2 + 392) = v21[9];
  *(a2 + 408) = v5;
  *(a2 + 424) = v6;
  v7 = v21[4];
  v8 = v21[6];
  v9 = v21[7];
  *(a2 + 328) = v21[5];
  *(a2 + 344) = v8;
  *(a2 + 360) = v9;
  *(a2 + 376) = v4;
  v10 = v21[1];
  *(a2 + 248) = v21[0];
  v11 = v21[2];
  v12 = v21[3];
  *(a2 + 264) = v10;
  *(a2 + 280) = v11;
  *(a2 + 296) = v12;
  *(a2 + 312) = v7;
  *(a2 + 240) = 0;
  *(a2 + 208) = 0u;
  *(a2 + 224) = 0u;
  *(a2 + 176) = 0u;
  *(a2 + 192) = 0u;
  *(a2 + 144) = 0u;
  *(a2 + 160) = 0u;
  *(a2 + 112) = 0u;
  *(a2 + 128) = 0u;
  *(a2 + 80) = 0u;
  *(a2 + 96) = 0u;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  *(a2 + 440) = 0u;
  *(a2 + 456) = 0u;
  *(a2 + 472) = 1;
  sub_213FB2DF4(a2, &qword_27C904858, &qword_214736F00);
  v13 = *(a1 + 208);
  *(a2 + 192) = *(a1 + 192);
  *(a2 + 208) = v13;
  *(a2 + 224) = *(a1 + 224);
  *(a2 + 240) = *(a1 + 240);
  v14 = *(a1 + 144);
  *(a2 + 128) = *(a1 + 128);
  *(a2 + 144) = v14;
  v15 = *(a1 + 176);
  *(a2 + 160) = *(a1 + 160);
  *(a2 + 176) = v15;
  v16 = *(a1 + 80);
  *(a2 + 64) = *(a1 + 64);
  *(a2 + 80) = v16;
  v17 = *(a1 + 112);
  *(a2 + 96) = *(a1 + 96);
  *(a2 + 112) = v17;
  v18 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v18;
  result = *(a1 + 32);
  v20 = *(a1 + 48);
  *(a2 + 32) = result;
  *(a2 + 48) = v20;
  return result;
}

uint64_t sub_2146446A4()
{
  if (*v0)
  {
    return 0x756F72676B636162;
  }

  else
  {
    return 0x6567616D69;
  }
}

void sub_2146446E8(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6567616D69 && a2 == 0xE500000000000000;
  if (v6 || (sub_2146DA6A8() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x756F72676B636162 && a2 == 0xEF726F6C6F43646ELL)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_2146DA6A8();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
}

uint64_t sub_2146447C8(uint64_t a1)
{
  v2 = sub_214644A08();

  return MEMORY[0x2821FE718](a1, v2);
}