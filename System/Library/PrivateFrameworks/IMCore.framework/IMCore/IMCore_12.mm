uint64_t sub_1A84761F4@<X0>(uint64_t a1@<X8>)
{
  v4 = [v1 accountLogin];
  if (!v4)
  {
    v13 = 0x80000001A8532840;
    sub_1A841D4A8();
    swift_allocError();
    v15 = 0xD00000000000004ALL;
LABEL_9:
    *v14 = v15;
    *(v14 + 8) = v13;
    *(v14 + 16) = 3;
    return swift_willThrow();
  }

  v5 = v4;
  v6 = sub_1A84E5DBC();
  v8 = v7;

  if (qword_1EB2E5948 != -1)
  {
    swift_once();
  }

  v9 = [v1 serviceName];
  sub_1A84E5DBC();
  v11 = v10;

  LOBYTE(v31) = 0;
  ImportExport.ServiceType.init(for:default:)(v11, &v31, &v40);
  sub_1A83FE5E8(v6, v8, &v40, &v41);
  if (v2)
  {
  }

  v30[6] = v47;
  v30[7] = v48;
  v30[2] = v43;
  v30[3] = v44;
  v30[4] = v45;
  v30[5] = v46;
  v30[0] = v41;
  v30[1] = v42;
  v36 = v46;
  v37 = v47;
  v38 = v48;
  v39 = v49;
  v32 = v42;
  v33 = v43;
  v34 = v44;
  v35 = v45;
  v30[8] = v49;
  v31 = v41;
  if (sub_1A84784FC(&v31) == 1)
  {
    v13 = 0x80000001A8532890;
    sub_1A841D4A8();
    swift_allocError();
    v15 = 0xD000000000000047;
    goto LABEL_9;
  }

  v27 = v37;
  v28 = v38;
  v29 = v39;
  v23 = v33;
  v24 = v34;
  v25 = v35;
  v26 = v36;
  v21 = v31;
  v22 = v32;
  v20 = 16;
  v16 = [v1 guid];
  v17 = sub_1A84E5DBC();
  v19 = v18;

  ImportExport.Participant.update(conversationStatusTo:forConversationID:)(&v20, v17, v19, a1);

  return sub_1A824B2D4(v30, &qword_1EB2E8190, &unk_1A8507740);
}

void sub_1A84764B4()
{
  v55 = sub_1A84E5C9C();
  v2 = *(v55 - 8);
  MEMORY[0x1EEE9AC00](v55);
  v4 = &v46 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_1A8478BF4();
  v61 = v0;
  v5 = [v0 handleRecords];
  sub_1A8244B68(0, &qword_1EB2E7180, 0x1E69A5DB0);
  v6 = sub_1A84E5FFC();

  if (v6 >> 62)
  {
    goto LABEL_31;
  }

  for (i = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1A84E654C())
  {
    v56 = v4;
    v4 = 0;
    v60 = v6 & 0xC000000000000001;
    v57 = v6 & 0xFFFFFFFFFFFFFF8;
    v53 = "resses list for: ";
    v54 = "GHIJKLMNOPQRSTUVWXYZ0123456789";
    v52 = (v2 + 8);
    v9 = MEMORY[0x1E69E7CC0];
    *&v7 = 136315394;
    v50 = v7;
    v58 = i;
    v59 = v6;
    if ((v6 & 0xC000000000000001) != 0)
    {
LABEL_4:
      v10 = MEMORY[0x1AC56AF80](v4, v6);
      goto LABEL_7;
    }

    while (v4 < *(v57 + 16))
    {
      v10 = *(v6 + 8 * v4 + 32);
LABEL_7:
      v11 = v10;
      if (__OFADD__(v4, 1))
      {
        __break(1u);
        break;
      }

      v62 = v4;
      v63 = v4 + 1;
      if (v64)
      {
        v12 = v64;
        v13 = sub_1A8400C40(v11);
        if (v1)
        {

          return;
        }

        v14 = v13;
        if (v13)
        {

          goto LABEL_16;
        }

        v15 = v56;
        sub_1A84E5C8C();
        v16 = v12;
        v17 = v11;
        v18 = sub_1A84E5C7C();
        v19 = sub_1A84E619C();

        v51 = v19;
        if (os_log_type_enabled(v18, v19))
        {
          v20 = swift_slowAlloc();
          v47 = swift_slowAlloc();
          v49 = swift_slowAlloc();
          *&v86[0] = v49;
          *v20 = v50;
          v21 = [v16 guid];
          v46 = v18;
          v22 = v21;
          v23 = sub_1A84E5DBC();
          v48 = v16;
          v24 = v23;
          v26 = v25;

          v27 = sub_1A82446BC(v24, v26, v86);

          *(v20 + 4) = v27;
          *(v20 + 12) = 2112;
          *(v20 + 14) = v17;
          v28 = v47;
          *v47 = v17;
          v29 = v17;
          v30 = v46;
          _os_log_impl(&dword_1A823F000, v46, v51, "Failed to find handle for chat %s with handle record: %@", v20, 0x16u);
          sub_1A824B2D4(v28, &unk_1EB2E9070, &unk_1A8501A90);
          MEMORY[0x1AC56D3F0](v28, -1, -1);
          v31 = v49;
          sub_1A8244788(v49);
          MEMORY[0x1AC56D3F0](v31, -1, -1);
          MEMORY[0x1AC56D3F0](v20, -1, -1);

          (*v52)(v56, v55);
        }

        else
        {

          (*v52)(v15, v55);
        }
      }

      v14 = 0;
LABEL_16:
      v32 = v14;
      v33 = v11;
      sub_1A846C858(v33, v14, v95);
      if (v1)
      {

        return;
      }

      v91 = v95[4];
      v92 = v95[5];
      v93 = v95[6];
      v94 = v95[7];
      v87 = v95[0];
      v88 = v95[1];
      v89 = v95[2];
      v90 = v95[3];
      if (qword_1EB2E5948 != -1)
      {
        swift_once();
      }

      v84[4] = v91;
      v84[5] = v92;
      v84[6] = v93;
      v84[7] = v94;
      v84[0] = v87;
      v84[1] = v88;
      v84[2] = v89;
      v84[3] = v90;
      sub_1A83FEE6C(v84, v85);
      sub_1A841E128(&v87);
      v81 = v85[6];
      v82 = v85[7];
      v83 = v85[8];
      v77 = v85[2];
      v78 = v85[3];
      v79 = v85[4];
      v80 = v85[5];
      v75 = v85[0];
      v76 = v85[1];
      v96 = 16;
      v34 = [v61 guid];
      v35 = sub_1A84E5DBC();
      v37 = v36;

      ImportExport.Participant.update(conversationStatusTo:forConversationID:)(&v96, v35, v37, v86);
      v65[6] = v81;
      v65[7] = v82;
      v65[8] = v83;
      v65[2] = v77;
      v65[3] = v78;
      v65[4] = v79;
      v65[5] = v80;
      v65[0] = v75;
      v65[1] = v76;
      sub_1A8400ED8(v65);

      v72 = v86[6];
      v73 = v86[7];
      v74 = v86[8];
      v68 = v86[2];
      v69 = v86[3];
      v70 = v86[4];
      v71 = v86[5];
      v66 = v86[0];
      v67 = v86[1];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = sub_1A83EF36C(0, *(v9 + 2) + 1, 1, v9);
      }

      v2 = *(v9 + 2);
      v38 = *(v9 + 3);
      if (v2 >= v38 >> 1)
      {
        v9 = sub_1A83EF36C((v38 > 1), v2 + 1, 1, v9);
      }

      *(v9 + 2) = v2 + 1;
      v39 = &v9[144 * v2];
      *(v39 + 2) = v66;
      v40 = v67;
      v41 = v68;
      v42 = v70;
      *(v39 + 5) = v69;
      *(v39 + 6) = v42;
      *(v39 + 3) = v40;
      *(v39 + 4) = v41;
      v43 = v71;
      v44 = v72;
      v45 = v74;
      *(v39 + 9) = v73;
      *(v39 + 10) = v45;
      *(v39 + 7) = v43;
      *(v39 + 8) = v44;
      if (v63 == v58)
      {

        goto LABEL_33;
      }

      v4 = v62 + 1;
      v6 = v59;
      if (v60)
      {
        goto LABEL_4;
      }
    }

    __break(1u);
LABEL_31:
    ;
  }

  v9 = MEMORY[0x1E69E7CC0];
LABEL_33:
  *&v86[0] = v9;

  sub_1A841D43C(v86);
  if (v1)
  {

    __break(1u);
  }

  else
  {
  }
}

uint64_t sub_1A8476C64()
{
  v1 = [objc_opt_self() sharedInstance];
  v2 = [v1 pinnedConversationIdentifiers];

  if (v2)
  {
    v3 = sub_1A84E5FFC();

    v4 = [v0 guid];
    v5 = sub_1A84E5DBC();
    v7 = v6;

    v12[0] = v5;
    v12[1] = v7;
    MEMORY[0x1EEE9AC00](v8);
    v11[2] = v12;
    v9 = sub_1A84ACB08(sub_1A8429618, v11, v3);
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

uint64_t sub_1A8476D94()
{
  v1 = v0;
  v2 = sub_1A84E5C9C();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v56 - v7;
  v9 = [v1 serviceName];
  v10 = sub_1A84E5DBC();
  v12 = v11;

  if (v10 == sub_1A84E5DBC() && v12 == v13)
  {
  }

  else
  {
    v15 = sub_1A84E67AC();

    if ((v15 & 1) == 0)
    {
      return 0;
    }
  }

  v16 = [v1 domainIdentifiers];
  if (!v16 || (v17 = v16, sub_1A83EA2FC(&qword_1EB2E6E48, &qword_1A8502950), v18 = sub_1A84E5D3C(), v17, v19 = *(v18 + 16), , !v19))
  {
    sub_1A84E5C8C();
    v38 = v1;
    v39 = sub_1A84E5C7C();
    v40 = sub_1A84E619C();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v57 = v42;
      *v41 = 136315394;
      v43 = [v38 guid];
      v56 = v2;
      v44 = v43;
      v45 = sub_1A84E5DBC();
      v47 = v46;

      v48 = sub_1A82446BC(v45, v47, &v57);

      *(v41 + 4) = v48;
      *(v41 + 12) = 2080;
      v49 = [v38 serviceName];
      v50 = sub_1A84E5DBC();
      v52 = v51;

      v53 = sub_1A82446BC(v50, v52, &v57);

      *(v41 + 14) = v53;
      _os_log_impl(&dword_1A823F000, v39, v40, "Chat Record: %s has no domainIdentifiers, yet has service name: %s. ", v41, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1AC56D3F0](v42, -1, -1);
      MEMORY[0x1AC56D3F0](v41, -1, -1);

      (*(v3 + 8))(v6, v56);
      return 0;
    }

    v54 = *(v3 + 8);
    v55 = v6;
LABEL_16:
    v54(v55, v2);
    return 0;
  }

  result = sub_1A8478DF0();
  if (v21)
  {
    return result;
  }

  sub_1A84E5C8C();
  v22 = v1;
  v23 = sub_1A84E5C7C();
  v24 = sub_1A84E619C();

  if (!os_log_type_enabled(v23, v24))
  {

    v54 = *(v3 + 8);
    v55 = v8;
    goto LABEL_16;
  }

  v25 = swift_slowAlloc();
  v26 = swift_slowAlloc();
  v57 = v26;
  *v25 = 136315394;
  v27 = [v22 guid];
  v56 = v2;
  v28 = v27;
  v29 = sub_1A84E5DBC();
  v31 = v30;

  v32 = sub_1A82446BC(v29, v31, &v57);

  *(v25 + 4) = v32;
  *(v25 + 12) = 2080;
  v33 = [v22 serviceName];
  v34 = sub_1A84E5DBC();
  v36 = v35;

  v37 = sub_1A82446BC(v34, v36, &v57);

  *(v25 + 14) = v37;
  _os_log_impl(&dword_1A823F000, v23, v24, "Chat Record: %s has no rcsConversationID, yet has service name: %s. ", v25, 0x16u);
  swift_arrayDestroy();
  MEMORY[0x1AC56D3F0](v26, -1, -1);
  MEMORY[0x1AC56D3F0](v25, -1, -1);

  (*(v3 + 8))(v8, v56);
  return 0;
}

uint64_t sub_1A8477308()
{
  v1 = v0;
  v2 = sub_1A84E5C9C();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v55 - v7;
  v9 = [v1 serviceName];
  v10 = sub_1A84E5DBC();
  v12 = v11;

  if (v10 == sub_1A84E5DBC() && v12 == v13)
  {
  }

  else
  {
    v15 = sub_1A84E67AC();

    if ((v15 & 1) == 0)
    {
      return 0;
    }
  }

  v16 = [v1 domainIdentifiers];
  if (v16)
  {
    v17 = v16;
    sub_1A83EA2FC(&qword_1EB2E6E48, &qword_1A8502950);
    v18 = sub_1A84E5D3C();

    if (*(v18 + 16))
    {
      v19 = sub_1A84799E8();
      if (v20)
      {
        v21 = v19;

        return v21;
      }

      sub_1A84E5C8C();
      v41 = v1;

      v42 = sub_1A84E5C7C();
      v43 = sub_1A84E619C();

      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        v56 = swift_slowAlloc();
        v58 = v56;
        *v44 = 136315394;
        v45 = [v41 guid];
        v46 = sub_1A84E5DBC();
        v57 = v2;
        v48 = v47;

        v49 = sub_1A82446BC(v46, v48, &v58);

        *(v44 + 4) = v49;
        *(v44 + 12) = 2080;
        v50 = sub_1A84E5D4C();
        v52 = v51;

        v53 = sub_1A82446BC(v50, v52, &v58);

        *(v44 + 14) = v53;
        _os_log_impl(&dword_1A823F000, v42, v43, "Failed to get RCS rcsGroupURI for chatRecord %s from domainIdentifiers: %s", v44, 0x16u);
        v54 = v56;
        swift_arrayDestroy();
        MEMORY[0x1AC56D3F0](v54, -1, -1);
        MEMORY[0x1AC56D3F0](v44, -1, -1);

        (*(v3 + 8))(v8, v57);
        return 0;
      }

      v39 = *(v3 + 8);
      v40 = v8;
      goto LABEL_16;
    }
  }

  sub_1A84E5C8C();
  v23 = v1;
  v24 = sub_1A84E5C7C();
  v25 = sub_1A84E619C();

  if (!os_log_type_enabled(v24, v25))
  {

    v39 = *(v3 + 8);
    v40 = v6;
LABEL_16:
    v39(v40, v2);
    return 0;
  }

  v26 = swift_slowAlloc();
  v27 = swift_slowAlloc();
  v58 = v27;
  *v26 = 136315394;
  v28 = [v23 guid];
  v57 = v2;
  v29 = v28;
  v30 = sub_1A84E5DBC();
  v32 = v31;

  v33 = sub_1A82446BC(v30, v32, &v58);

  *(v26 + 4) = v33;
  *(v26 + 12) = 2080;
  v34 = [v23 serviceName];
  v35 = sub_1A84E5DBC();
  v37 = v36;

  v38 = sub_1A82446BC(v35, v37, &v58);

  *(v26 + 14) = v38;
  _os_log_impl(&dword_1A823F000, v24, v25, "Chat Record: %s has no domainIdentifiers, yet has service name: %s.", v26, 0x16u);
  swift_arrayDestroy();
  MEMORY[0x1AC56D3F0](v27, -1, -1);
  MEMORY[0x1AC56D3F0](v26, -1, -1);

  (*(v3 + 8))(v6, v57);
  return 0;
}

void sub_1A84778B8(void *a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = [v1 canonicalizedURIString];
    sub_1A84E5DBC();

    v3 = sub_1A84E5D8C();
    v4 = [v3 _stripFZIDPrefix];

    if (v4)
    {
      sub_1A84E5DBC();
    }

    else
    {

      sub_1A84E646C();
      MEMORY[0x1AC56A990](0xD000000000000034, 0x80000001A85327F0);
      v6 = [v1 description];
      v7 = sub_1A84E5DBC();
      v9 = v8;

      MEMORY[0x1AC56A990](v7, v9);

      sub_1A841D4A8();
      swift_allocError();
      *v10 = 0;
      *(v10 + 8) = 0xE000000000000000;
      *(v10 + 16) = 3;
      swift_willThrow();
    }
  }

  else
  {
    sub_1A841D4A8();
    swift_allocError();
    *v5 = 0xD00000000000003BLL;
    *(v5 + 8) = 0x80000001A85327B0;
    *(v5 + 16) = 3;
    swift_willThrow();
  }
}

void sub_1A8477A9C(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  if (!a1)
  {
    sub_1A841D4A8();
    swift_allocError();
    *v11 = 0xD000000000000039;
    *(v11 + 8) = 0x80000001A8532770;
    *(v11 + 16) = 3;
    swift_willThrow();
    return;
  }

  v8 = a1;
  sub_1A84778B8(a1);
  if (v4)
  {

    return;
  }

  v77 = a2;
  v79 = v3;
  v83 = v8;
  v84 = a3;
  v12 = *(v3 + 240);
  v13 = *(v12 + 16);
  v14 = &selRef__postMultiWayStateChangedNotification_;
  if (!v13)
  {
LABEL_39:
    v41 = v14;
    v42 = [v77 serviceName];
    sub_1A84E5DBC();
    v44 = v43;

    LOBYTE(v85) = 0;
    ImportExport.ServiceType.init(for:default:)(v44, &v85, &v87);
    v45 = v87;
    v46 = [v77 country];
    if (v46)
    {
      v47 = v46;
      v78 = sub_1A84E5DBC();
      v96 = v48;
    }

    else
    {
      v78 = 0;
      v96 = 0xE000000000000000;
    }

    v49 = v41;
    v51 = *(v79 + 8);
    v50 = *(v79 + 16);

    v52 = sub_1A84E5D8C();
    v53 = [v52 v41 + 3596];

    if (v53)
    {
      v80 = v51;
      v82 = v50;
      v54 = sub_1A84E5DBC();
      v56 = v55;

      v57 = sub_1A84E5D8C();
      v58 = [v57 v49 + 3596];

      if (v58)
      {

        v59 = sub_1A84E5DBC();
        v61 = v60;

        sub_1A83EA2FC(&qword_1EB2E6ED0, &unk_1A8501A80);
        v62 = swift_allocObject();
        *(v62 + 16) = xmmword_1A85013E0;
        *(v62 + 32) = 0;
        *(v62 + 40) = v54;
        *(v62 + 48) = v56;
        *(v62 + 56) = v59;
        *(v62 + 64) = v61;
        *(v62 + 72) = v45;
        v63 = v96;
        *(v62 + 80) = v78;
        *(v62 + 88) = v63;
        *(v62 + 96) = 0u;
        *(v62 + 112) = 0u;
        *(v62 + 128) = 0u;
        *(v62 + 144) = 0u;
        LOBYTE(v85) = 0;
        v76 = v59;
        if (v45 > 3)
        {
          if (v45 > 5)
          {
            if (v45 == 6)
            {
              v64 = 0xE300000000000000;
              v65 = 5456722;
            }

            else
            {
              v64 = 0xEC000000534D5365;
              v65 = 0x74696C6C65746153;
            }
          }

          else if (v45 == 4)
          {
            v65 = 5459283;
            v64 = 0xE300000000000000;
          }

          else
          {
            v64 = 0xE800000000000000;
            v65 = 0x656D695465636146;
          }
        }

        else if (v45 > 1)
        {
          if (v45 == 2)
          {
            v64 = 0xE800000000000000;
          }

          else
          {
            v64 = 0xEC0000006574694CLL;
          }

          v65 = 0x6567617373654D69;
        }

        else if (v45)
        {
          v64 = 0xE300000000000000;
          v65 = 7958113;
        }

        else
        {
          v64 = 0xE700000000000000;
          v65 = 0x6E776F6E6B6E75;
        }

        swift_bridgeObjectRetain_n();

        v66 = v96;

        v67 = v85;
        *v84 = v54;
        *(v84 + 8) = v56;
        *(v84 + 16) = v62;
        *(v84 + 24) = 0;
        *(v84 + 32) = 0;
        *(v84 + 40) = v54;
        *(v84 + 48) = v56;
        *(v84 + 56) = v76;
        *(v84 + 64) = v61;
        *(v84 + 72) = v45;
        *(v84 + 80) = v78;
        *(v84 + 88) = v66;
        *(v84 + 96) = v80;
        *(v84 + 104) = v82;
        *(v84 + 112) = 32;
        *(v84 + 120) = v67;
        *(v84 + 128) = v65;
        *(v84 + 136) = v64;
        return;
      }
    }

    else
    {
LABEL_62:
      __break(1u);
    }

    __break(1u);
    return;
  }

  v15 = 0;
  v16 = v12 + 32;
  v75 = v10;
  v81 = v9;
  v68 = *(v12 + 16);
  v96 = v12 + 32;
  while (1)
  {
    if (v15 >= *(v12 + 16))
    {
      __break(1u);
      goto LABEL_62;
    }

    v17 = (v16 + 144 * v15);
    v87 = *v17;
    v18 = v17[1];
    v19 = v17[2];
    v20 = v17[4];
    v90 = v17[3];
    v91 = v20;
    v88 = v18;
    v89 = v19;
    v21 = v17[5];
    v22 = v17[6];
    v23 = v17[8];
    v94 = v17[7];
    v95 = v23;
    v92 = v21;
    v93 = v22;
    sub_1A8400E7C(&v87, &v85);
    v24 = sub_1A84E5D8C();
    v25 = [v24 v14[281]];

    if (v25)
    {
      break;
    }

    sub_1A8400ED8(&v87);
LABEL_8:
    if (++v15 == v13)
    {
      goto LABEL_39;
    }
  }

  v26 = sub_1A84E5DBC();
  v28 = v27;

  v29 = HIBYTE(v28) & 0xF;
  if ((v28 & 0x2000000000000000) == 0)
  {
    v29 = v26 & 0xFFFFFFFFFFFFLL;
  }

  if (!v29)
  {

    sub_1A8400ED8(&v87);
    v16 = v96;
    goto LABEL_8;
  }

  v30 = v88;
  v31 = *(v88 + 16);
  if (!v31)
  {

    sub_1A8400ED8(&v87);
LABEL_37:
    v13 = v68;
    v16 = v96;
    goto LABEL_8;
  }

  v69 = BYTE8(v94);
  v73 = *(&v93 + 1);
  v74 = v93;
  v32 = (v88 + 64);
  v72 = v87;
  v70 = v94;
  v71 = *(&v87 + 1);
  while (1)
  {
    v33 = *(v32 - 3);
    v34 = *(v32 - 2);
    v35 = *(v32 - 1);
    v36 = *v32;
    v37 = HIBYTE(v34) & 0xF;
    if ((v34 & 0x2000000000000000) == 0)
    {
      v37 = v33 & 0xFFFFFFFFFFFFLL;
    }

    if (v37)
    {
      v38 = v33 == v26 && v34 == v28;
      if (v38 || (sub_1A84E67AC() & 1) != 0)
      {
        break;
      }
    }

    v39 = HIBYTE(v36) & 0xF;
    if ((v36 & 0x2000000000000000) == 0)
    {
      v39 = v35 & 0xFFFFFFFFFFFFLL;
    }

    if (v39)
    {
      v40 = v35 == v26 && v36 == v28;
      if (v40 || (sub_1A84E67AC() & 1) != 0)
      {
        break;
      }
    }

    v32 += 16;
    if (!--v31)
    {

      sub_1A8400ED8(&v87);
      v14 = &selRef__postMultiWayStateChangedNotification_;
      goto LABEL_37;
    }
  }

  v85 = v70;
  v86 = v69;

  ImportExport.Participant.init(id:withParticipantAddresses:selectedAddress:conversationID:conversationStatus:)(v72, v71, v30, v81, v75, v74, v73, &v85, v84);

  sub_1A8400ED8(&v87);
}

uint64_t sub_1A84780C8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = *v3;
  v7 = *(v3 + 8);
  if (*v3 == a1[12] && v7 == a1[13])
  {
    v9 = 16;
  }

  else if (sub_1A84E67AC())
  {
    v9 = 16;
  }

  else
  {
    v9 = 32;
  }

  v22 = v6;
  v23 = v7;
  v10 = *(v3 + 96);
  v28 = *(v3 + 80);
  v29 = v10;
  v11 = *(v3 + 128);
  v30 = *(v3 + 112);
  v31 = v11;
  v12 = *(v3 + 32);
  v24 = *(v3 + 16);
  v25 = v12;
  v13 = *(v3 + 64);
  v26 = *(v3 + 48);
  v27 = v13;
  ImportExport.Conversation.participantIndex(for:)(&v22);
  v22 = v6;
  v23 = v7;
  v14 = *(v3 + 96);
  v28 = *(v3 + 80);
  v29 = v14;
  v15 = *(v3 + 128);
  v30 = *(v3 + 112);
  v31 = v15;
  v16 = *(v3 + 32);
  v24 = *(v3 + 16);
  v25 = v16;
  v17 = *(v3 + 64);
  v26 = *(v3 + 48);
  v27 = v17;
  v19 = 16;
  if (v18)
  {
    v19 = v9;
  }

  v21 = v19;
  return ImportExport.Participant.update(conversationStatusTo:forConversationID:)(&v21, a1[1], a1[2], a2);
}

void sub_1A84781D4(id a1@<X0>, uint64_t a2@<X8>)
{
  v4 = v3;
  if (qword_1EB2E5948 != -1)
  {
    swift_once();
  }

  v6 = [a1 account];
  if (v6)
  {
    v7 = v6;
    v8 = sub_1A84E5DBC();
    v10 = v9;
  }

  else
  {
    v8 = 0;
    v10 = 0;
  }

  v11 = [a1 serviceName];
  sub_1A84E5DBC();
  v13 = v12;

  LOBYTE(v30) = 0;
  ImportExport.ServiceType.init(for:default:)(v13, &v30, v29);
  v14 = v2[15];
  if ((v14 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v15 = v2[14];
  if (v14 >= *(v15 + 16))
  {
LABEL_14:
    __break(1u);
    return;
  }

  v16 = v15 + (v14 << 7);
  v17 = *(v16 + 40);
  v18 = *(v16 + 48);

  sub_1A83FE48C(v8, v10, v29, v17, v18);
  if (v4)
  {
  }

  else
  {
    v21 = v20;
    v22 = v19;

    v23 = [a1 serviceName];
    sub_1A84E5DBC();
    v25 = v24;

    LOBYTE(v29[0]) = 0;
    ImportExport.ServiceType.init(for:default:)(v25, v29, &v39);
    sub_1A83FE5E8(v22, v21, &v39, &v30);

    v28[6] = v36;
    v28[7] = v37;
    v28[8] = v38;
    v28[2] = v32;
    v28[3] = v33;
    v28[4] = v34;
    v28[5] = v35;
    v28[0] = v30;
    v28[1] = v31;
    v29[6] = v36;
    v29[7] = v37;
    v29[8] = v38;
    v29[2] = v32;
    v29[3] = v33;
    v29[4] = v34;
    v29[5] = v35;
    v29[0] = v30;
    v29[1] = v31;
    if (sub_1A84784FC(v29) == 1)
    {
      sub_1A841D4A8();
      swift_allocError();
      *v26 = 0xD000000000000022;
      *(v26 + 8) = 0x80000001A8532740;
      *(v26 + 16) = 3;
      swift_willThrow();
    }

    else
    {
      sub_1A84780C8(v2, a2);
      sub_1A824B2D4(v28, &qword_1EB2E8190, &unk_1A8507740);
    }
  }
}

uint64_t sub_1A84784FC(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void sub_1A8478514(uint64_t a1)
{
  v67 = sub_1A84E5C9C();
  v69 = *(v67 - 8);
  v3 = MEMORY[0x1EEE9AC00](v67);
  v5 = &v61 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v3);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v61 - v8;
  v68 = a1;
  if (a1)
  {
    v65 = "GHIJKLMNOPQRSTUVWXYZ0123456789";
    v66 = v7;
    v64 = "resses list for: ";
    sub_1A84E5C8C();
    v10 = v1;
    v11 = sub_1A84E5C7C();
    v12 = sub_1A84E619C();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v71 = v14;
      *v13 = 136315394;
      v15 = [v10 guid];
      v16 = sub_1A84E5DBC();
      v18 = v17;

      v19 = sub_1A82446BC(v16, v18, &v71);

      *(v13 + 4) = v19;
      *(v13 + 12) = 2080;
      v20 = [v10 serviceName];
      v21 = sub_1A84E5DBC();
      v23 = v22;

      v24 = sub_1A82446BC(v21, v23, &v71);

      *(v13 + 14) = v24;
      _os_log_impl(&dword_1A823F000, v11, v12, "Domain identifiers for IMDChatRecord: %s: serviceType: %s", v13, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1AC56D3F0](v14, -1, -1);
      MEMORY[0x1AC56D3F0](v13, -1, -1);
    }

    v25 = *(v69 + 8);
    v69 += 8;
    v63 = v25;
    v25(v9, v67);
    v26 = v68 + 64;
    v27 = 1 << *(v68 + 32);
    v28 = -1;
    if (v27 < 64)
    {
      v28 = ~(-1 << v27);
    }

    v29 = v28 & *(v68 + 64);
    v30 = (v27 + 63) >> 6;

    v31 = 0;
    *&v32 = 136315394;
    v61 = v32;
    v33 = v66;
    if (v29)
    {
      goto LABEL_9;
    }

LABEL_10:
    while (1)
    {
      v34 = v31 + 1;
      if (__OFADD__(v31, 1))
      {
        break;
      }

      if (v34 >= v30)
      {

        return;
      }

      v29 = *(v26 + 8 * v34);
      ++v31;
      if (v29)
      {
        while (1)
        {
          v35 = __clz(__rbit64(v29));
          v29 &= v29 - 1;
          v36 = v35 | (v34 << 6);
          v37 = (*(v68 + 48) + 16 * v36);
          v38 = *v37;
          v39 = v37[1];
          v40 = *(*(v68 + 56) + 8 * v36);

          sub_1A84E5C8C();

          v41 = sub_1A84E5C7C();
          v42 = sub_1A84E619C();

          LODWORD(v66) = v42;
          if (os_log_type_enabled(v41, v42))
          {
            v43 = swift_slowAlloc();
            v62 = swift_slowAlloc();
            v71 = v62;
            *v43 = v61;
            v44 = sub_1A82446BC(v38, v39, &v71);

            *(v43 + 4) = v44;
            *(v43 + 12) = 2080;
            v70 = v40;
            sub_1A83EA2FC(&qword_1EB2E6E48, &qword_1A8502950);
            sub_1A8407D84();
            v45 = v33;
            v46 = sub_1A84E5D6C();
            v48 = v47;

            v49 = sub_1A82446BC(v46, v48, &v71);

            *(v43 + 14) = v49;
            _os_log_impl(&dword_1A823F000, v41, v66, "%s: %s", v43, 0x16u);
            v50 = v62;
            swift_arrayDestroy();
            MEMORY[0x1AC56D3F0](v50, -1, -1);
            MEMORY[0x1AC56D3F0](v43, -1, -1);

            v63(v45, v67);
            v31 = v34;
            v33 = v45;
            if (!v29)
            {
              goto LABEL_10;
            }
          }

          else
          {

            v63(v33, v67);
            v31 = v34;
            if (!v29)
            {
              goto LABEL_10;
            }
          }

LABEL_9:
          v34 = v31;
        }
      }
    }

    __break(1u);
  }

  else
  {
    sub_1A84E5C8C();
    v51 = v1;
    v52 = sub_1A84E5C7C();
    v53 = sub_1A84E619C();

    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v71 = v55;
      *v54 = 136315138;
      v56 = [v51 guid];
      v57 = sub_1A84E5DBC();
      v59 = v58;

      v60 = sub_1A82446BC(v57, v59, &v71);

      *(v54 + 4) = v60;
      _os_log_impl(&dword_1A823F000, v52, v53, "Domain identifiers are nil for IMDChatRecord: %s", v54, 0xCu);
      sub_1A8244788(v55);
      MEMORY[0x1AC56D3F0](v55, -1, -1);
      MEMORY[0x1AC56D3F0](v54, -1, -1);
    }

    (*(v69 + 8))(v5, v67);
  }
}

uint64_t sub_1A8478BF4()
{
  v1 = v0;
  v10 = 0;
  sub_1A8244B68(0, &qword_1ED767638, 0x1E69E9610);
  v2 = sub_1A84E624C();
  v3 = swift_allocObject();
  *(v3 + 16) = &v10;
  *(v3 + 24) = v1;
  v4 = swift_allocObject();
  *(v4 + 16) = sub_1A847AAE0;
  *(v4 + 24) = v3;
  aBlock[4] = sub_1A824C100;
  aBlock[5] = v4;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A83EB688;
  aBlock[3] = &unk_1F1B749E8;
  v5 = _Block_copy(aBlock);
  v6 = v1;

  dispatch_sync(v2, v5);

  _Block_release(v5);
  LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

  if (v2)
  {
    __break(1u);
  }

  else
  {
    v8 = v10;

    return v8;
  }

  return result;
}

void sub_1A8478D78(void **a1, void *a2)
{
  v4 = [objc_opt_self() sharedRegistry];
  v5 = sub_1A84009FC(a2);

  v6 = *a1;
  *a1 = v5;
}

uint64_t sub_1A8478DF0()
{
  v1 = v0;
  v2 = sub_1A84E5C9C();
  v3 = *(v2 - 8);
  v119 = v2;
  v120 = v3;
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v114 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v114 - v8;
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v114 - v11;
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v114 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v114 - v16;
  v18 = sub_1A84E5DFC();
  MEMORY[0x1EEE9AC00](v18 - 8);
  v19 = [v1 serviceName];
  v20 = sub_1A84E5DBC();
  v22 = v21;

  if (v20 == sub_1A84E5DBC() && v22 == v23)
  {
  }

  else
  {
    v25 = sub_1A84E67AC();

    if ((v25 & 1) == 0)
    {
      return 0;
    }
  }

  v26 = [objc_opt_self() sharedFeatureFlags];
  v27 = [v26 isMissingMessagesEnabled];

  if (!v27)
  {
    v48 = objc_opt_self();
    v49 = [v1 originalGroupID];
    v50 = [v48 __imDataWithHexString_];

    if (!v50)
    {
      return 0;
    }

    v51 = sub_1A84E55FC();
    v53 = v52;

    sub_1A84E5DEC();
    v47 = sub_1A84E5DCC();
    v55 = v54;
    sub_1A83F5994(v51, v53);
    if (!v55)
    {
      return 0;
    }

    return v47;
  }

  v28 = [v1 domainIdentifiers];
  if (!v28)
  {
    sub_1A84E5C8C();
    v57 = v1;
    v58 = sub_1A84E5C7C();
    v59 = sub_1A84E619C();

    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      v121 = v61;
      *v60 = 136315138;
      v62 = [v57 guid];
      v63 = sub_1A84E5DBC();
      v65 = v64;

      v66 = sub_1A82446BC(v63, v65, &v121);

      *(v60 + 4) = v66;
      _os_log_impl(&dword_1A823F000, v58, v59, "Failed to get domain identifiers for IMDChatRecord %s", v60, 0xCu);
      sub_1A8244788(v61);
      MEMORY[0x1AC56D3F0](v61, -1, -1);
      MEMORY[0x1AC56D3F0](v60, -1, -1);
    }

    (*(v120 + 8))(v6, v119);
    return 0;
  }

  v29 = v28;
  sub_1A83EA2FC(&qword_1EB2E6E48, &qword_1A8502950);
  v30 = sub_1A84E5D3C();

  v31 = sub_1A84E5DBC();
  if (!*(v30 + 16))
  {

    goto LABEL_23;
  }

  v33 = sub_1A824B390(v31, v32);
  v35 = v34;

  if ((v35 & 1) == 0)
  {
LABEL_23:
    sub_1A84E5C8C();
    v67 = v1;
    v68 = sub_1A84E5C7C();
    v69 = sub_1A84E619C();

    if (os_log_type_enabled(v68, v69))
    {
      v70 = swift_slowAlloc();
      v71 = swift_slowAlloc();
      v121 = v71;
      *v70 = 136315138;
      v72 = [v67 guid];
      v73 = sub_1A84E5DBC();
      v75 = v74;

      v76 = sub_1A82446BC(v73, v75, &v121);

      *(v70 + 4) = v76;
      _os_log_impl(&dword_1A823F000, v68, v69, "Failed to get RCS domain identifiers for IMDChatRecord %s", v70, 0xCu);
      sub_1A8244788(v71);
      MEMORY[0x1AC56D3F0](v71, -1, -1);
      MEMORY[0x1AC56D3F0](v70, -1, -1);
    }

    (*(v120 + 8))(v9, v119);
    goto LABEL_26;
  }

  v36 = *(*(v30 + 56) + 8 * v33);
  if (!v36[2])
  {
    sub_1A84E5C8C();
    v78 = v1;
    v79 = sub_1A84E5C7C();
    v80 = sub_1A84E619C();

    if (os_log_type_enabled(v79, v80))
    {
      v81 = swift_slowAlloc();
      v82 = swift_slowAlloc();
      v121 = v82;
      *v81 = 136315138;
      v83 = [v78 guid];
      v84 = sub_1A84E5DBC();
      v86 = v85;

      v87 = sub_1A82446BC(v84, v86, &v121);

      *(v81 + 4) = v87;
      _os_log_impl(&dword_1A823F000, v79, v80, "Failed to get latestRCSConversationID for IMDChatRecord %s", v81, 0xCu);
      sub_1A8244788(v82);
      MEMORY[0x1AC56D3F0](v82, -1, -1);
      MEMORY[0x1AC56D3F0](v81, -1, -1);
    }

    (*(v120 + 8))(v12, v119);
LABEL_26:
    v77 = v30;
    goto LABEL_27;
  }

  v38 = v36[4];
  v37 = v36[5];
  v39 = objc_opt_self();

  v40 = sub_1A84E5D8C();
  v41 = [v39 __imDataWithHexString_];

  if (v41)
  {
    v42 = sub_1A84E55FC();
    v44 = v43;

    sub_1A84E5DEC();
    v45 = sub_1A84E5DCC();
    if (!v46)
    {
      sub_1A84E5C8C();

      v100 = v1;
      v101 = sub_1A84E5C7C();
      v102 = sub_1A84E619C();

      if (os_log_type_enabled(v101, v102))
      {
        v103 = swift_slowAlloc();
        v116 = v102;
        v104 = v103;
        v117 = swift_slowAlloc();
        v121 = v117;
        *v104 = 136315394;
        v105 = [v100 guid];
        v118 = v100;
        v106 = v105;
        v107 = sub_1A84E5DBC();
        v115 = v101;
        v109 = v108;

        v110 = sub_1A82446BC(v107, v109, &v121);

        *(v104 + 4) = v110;
        *(v104 + 12) = 2080;
        v111 = sub_1A82446BC(v38, v37, &v121);

        *(v104 + 14) = v111;
        v112 = v115;
        _os_log_impl(&dword_1A823F000, v115, v116, "Failed to get decode latestRCSConversationID for IMDChatRecord %s for encoded groupID: %s", v104, 0x16u);
        v113 = v117;
        swift_arrayDestroy();
        MEMORY[0x1AC56D3F0](v113, -1, -1);
        MEMORY[0x1AC56D3F0](v104, -1, -1);
      }

      else
      {
      }

      (*(v120 + 8))(v17, v119);
      sub_1A8478514(v30);

      sub_1A83F5994(v42, v44);
      return 0;
    }

    v47 = v45;
    sub_1A83F5994(v42, v44);

    return v47;
  }

  sub_1A84E5C8C();

  v88 = v1;
  v89 = sub_1A84E5C7C();
  v90 = sub_1A84E619C();

  if (os_log_type_enabled(v89, v90))
  {
    v91 = swift_slowAlloc();
    v117 = swift_slowAlloc();
    v121 = v117;
    *v91 = 136315394;
    v92 = [v88 guid];
    v118 = v88;
    v93 = v92;
    v94 = sub_1A84E5DBC();
    v96 = v95;

    v97 = sub_1A82446BC(v94, v96, &v121);

    *(v91 + 4) = v97;
    *(v91 + 12) = 2080;
    v98 = sub_1A82446BC(v38, v37, &v121);

    *(v91 + 14) = v98;
    _os_log_impl(&dword_1A823F000, v89, v90, "Failed to get encoded latestRCSConversationID for IMDChatRecord %s for encoded groupID: %s", v91, 0x16u);
    v99 = v117;
    swift_arrayDestroy();
    MEMORY[0x1AC56D3F0](v99, -1, -1);
    MEMORY[0x1AC56D3F0](v91, -1, -1);
  }

  else
  {
  }

  (*(v120 + 8))(v15, v119);
  v77 = v30;
LABEL_27:
  sub_1A8478514(v77);

  return 0;
}

uint64_t sub_1A84799E8()
{
  v1 = v0;
  v85 = sub_1A84E5C9C();
  v79 = *(v85 - 8);
  v2 = MEMORY[0x1EEE9AC00](v85);
  v4 = &v77 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v78 = &v77 - v6;
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v77 - v7;
  v9 = [v1 serviceName];
  v10 = sub_1A84E5DBC();
  v12 = v11;

  if (v10 == sub_1A84E5DBC() && v12 == v13)
  {
  }

  else
  {
    v15 = sub_1A84E67AC();

    if ((v15 & 1) == 0)
    {
      return 0;
    }
  }

  v16 = [v1 properties];
  if (!v16)
  {
    sub_1A84E5C8C();
    v67 = v1;
    v68 = sub_1A84E5C7C();
    v69 = sub_1A84E619C();

    if (os_log_type_enabled(v68, v69))
    {
      v70 = swift_slowAlloc();
      v71 = swift_slowAlloc();
      *&v97 = v71;
      *v70 = 136315138;
      v72 = [v67 guid];
      v73 = sub_1A84E5DBC();
      v75 = v74;

      v76 = sub_1A82446BC(v73, v75, &v97);

      *(v70 + 4) = v76;
      _os_log_impl(&dword_1A823F000, v68, v69, "Failed to get chat properties for IMDChatRecord %s", v70, 0xCu);
      sub_1A8244788(v71);
      MEMORY[0x1AC56D3F0](v71, -1, -1);
      MEMORY[0x1AC56D3F0](v70, -1, -1);
    }

    (*(v79 + 8))(v4, v85);
    return 0;
  }

  v17 = v16;
  v18 = sub_1A84E5D3C();

  *&v90[0] = 0x70756F7247534352;
  *(&v90[0] + 1) = 0xEB00000000495255;
  sub_1A84E641C();
  if (*(v18 + 16) && (v19 = sub_1A8250C0C(&v97), (v20 & 1) != 0))
  {
    sub_1A8244F40(*(v18 + 56) + 32 * v19, &v92);
    sub_1A8250D18(&v97);
    if (swift_dynamicCast())
    {

      return *&v90[0];
    }
  }

  else
  {
    sub_1A8250D18(&v97);
  }

  v83 = "resses list for: ";
  v84 = "GHIJKLMNOPQRSTUVWXYZ0123456789";
  sub_1A84E5C8C();
  v22 = v1;
  v23 = sub_1A84E5C7C();
  v24 = sub_1A84E619C();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    LODWORD(v82) = v24;
    v26 = v25;
    v27 = swift_slowAlloc();
    *&v97 = v27;
    *v26 = 136315394;
    v28 = [v22 guid];
    v29 = sub_1A84E5DBC();
    v31 = v30;

    v32 = sub_1A82446BC(v29, v31, &v97);

    *(v26 + 4) = v32;
    *(v26 + 12) = 2080;
    v33 = [v22 serviceName];
    v34 = sub_1A84E5DBC();
    v36 = v35;

    v37 = sub_1A82446BC(v34, v36, &v97);

    *(v26 + 14) = v37;
    _os_log_impl(&dword_1A823F000, v23, v82, "Failed to get chat rcsGroupURI from chatProperties for IMDChatRecord %s, serviceType: %s, properties:", v26, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1AC56D3F0](v27, -1, -1);
    MEMORY[0x1AC56D3F0](v26, -1, -1);
  }

  v38 = v79 + 8;
  v82 = *(v79 + 8);
  result = v82(v8, v85);
  v40 = v78;
  v41 = 0;
  v80 = v18;
  v42 = v18 + 64;
  v43 = 1 << *(v18 + 32);
  v44 = -1;
  if (v43 < 64)
  {
    v44 = ~(-1 << v43);
  }

  v45 = v44 & *(v18 + 64);
  v46 = (v43 + 63) >> 6;
  *&v39 = 136315394;
  v77 = v39;
  v79 = v38;
  if (!v45)
  {
    goto LABEL_22;
  }

  do
  {
    while (1)
    {
      v59 = v41;
LABEL_29:
      v62 = __clz(__rbit64(v45));
      v45 &= v45 - 1;
      v63 = v62 | (v59 << 6);
      v64 = v80;
      sub_1A824B334(*(v80 + 48) + 40 * v63, v90);
      sub_1A8244F40(*(v64 + 56) + 32 * v63, v89);
      v92 = v90[0];
      v93 = v90[1];
      *&v94 = v91;
      sub_1A8243DDC(v89, (&v94 + 8));
      v61 = v59;
LABEL_30:
      v99[0] = v94;
      v99[1] = v95;
      v100 = v96;
      v97 = v92;
      v98 = v93;
      if (!*(&v93 + 1))
      {

        return 0;
      }

      v92 = v97;
      v93 = v98;
      *&v94 = *&v99[0];
      sub_1A8243DDC((v99 + 8), v89);
      sub_1A84E5C8C();
      sub_1A824B334(&v92, v90);
      sub_1A8244F40(v89, v88);
      v65 = sub_1A84E5C7C();
      v66 = sub_1A84E619C();
      if (!os_log_type_enabled(v65, v66))
      {
        break;
      }

      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v81 = v61;
      v49 = v48;
      v87 = v48;
      *v47 = v77;
      v50 = sub_1A84E63EC();
      v52 = v51;
      sub_1A8250D18(v90);
      v53 = sub_1A82446BC(v50, v52, &v87);

      *(v47 + 4) = v53;
      *(v47 + 12) = 2080;
      sub_1A8244F40(v88, &v86);
      v54 = sub_1A84E5E0C();
      v56 = v55;
      sub_1A8244788(v88);
      v57 = sub_1A82446BC(v54, v56, &v87);

      *(v47 + 14) = v57;
      _os_log_impl(&dword_1A823F000, v65, v66, "%s:%s", v47, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1AC56D3F0](v49, -1, -1);
      v58 = v47;
      v40 = v78;
      MEMORY[0x1AC56D3F0](v58, -1, -1);

      v82(v40, v85);
      sub_1A8244788(v89);
      result = sub_1A8250D18(&v92);
      v41 = v81;
      if (!v45)
      {
        goto LABEL_22;
      }
    }

    sub_1A8244788(v88);
    sub_1A8250D18(v90);
    v82(v40, v85);
    sub_1A8244788(v89);
    result = sub_1A8250D18(&v92);
    v41 = v61;
  }

  while (v45);
LABEL_22:
  if (v46 <= v41 + 1)
  {
    v60 = v41 + 1;
  }

  else
  {
    v60 = v46;
  }

  v61 = v60 - 1;
  while (1)
  {
    v59 = v41 + 1;
    if (__OFADD__(v41, 1))
    {
      break;
    }

    if (v59 >= v46)
    {
      v45 = 0;
      v96 = 0;
      v94 = 0u;
      v95 = 0u;
      v92 = 0u;
      v93 = 0u;
      goto LABEL_30;
    }

    v45 = *(v42 + 8 * v59);
    ++v41;
    if (v45)
    {
      goto LABEL_29;
    }
  }

  __break(1u);
  return result;
}

id sub_1A847A2F0()
{
  result = [v0 properties];
  if (result)
  {
    v2 = result;
    v3 = sub_1A84E5D3C();

    v6 = sub_1A84E5DBC();
    sub_1A84E641C();
    if (*(v3 + 16) && (v4 = sub_1A8250C0C(v7), (v5 & 1) != 0))
    {
      sub_1A8244F40(*(v3 + 56) + 32 * v4, v8);
      sub_1A8250D18(v7);

      if (swift_dynamicCast())
      {
        return v6;
      }
    }

    else
    {

      sub_1A8250D18(v7);
    }

    return 0;
  }

  return result;
}

uint64_t sub_1A847A408(void *a1, uint64_t a2)
{
  v26 = a2;
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  v4 = [objc_opt_self() synchronousDatabase];
  v5 = sub_1A84E5D8C();
  sub_1A8244B68(0, &qword_1EB2E7548, 0x1E696AE18);
  sub_1A83EA2FC(&qword_1EB2E7048, &qword_1A8502980);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1A85013E0;
  v23 = a1;
  v7 = *a1;
  v8 = MEMORY[0x1E69E73D8];
  *(v6 + 56) = MEMORY[0x1E69E7360];
  *(v6 + 64) = v8;
  *(v6 + 32) = v7;
  v9 = sub_1A84E614C();
  sub_1A83EA2FC(&qword_1EB2E9060, &qword_1A850A730);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1A8507730;
  v11 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  v12 = sub_1A84E5D8C();
  v13 = [v11 initWithKey:v12 ascending:1];

  *(v10 + 32) = v13;
  sub_1A8244B68(0, &qword_1EB2E7550, 0x1E696AEB0);
  v14 = sub_1A84E5FEC();

  aBlock[4] = sub_1A847A804;
  aBlock[5] = v3;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A847A80C;
  aBlock[3] = &unk_1F1B74970;
  v15 = _Block_copy(aBlock);

  [v4 fetchMessageRecordsForChatRecordWithGUID:v5 filteredUsingPredicate:v9 sortedUsingDescriptors:v14 limit:v26 completionHandler:v15];
  _Block_release(v15);
  swift_unknownObjectRelease();

  swift_beginAccess();
  v16 = *(v3 + 16);
  if (!v16)
  {

    return v16;
  }

  if (!(v16 >> 62))
  {
    result = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_4;
    }

LABEL_12:

    return 0;
  }

  result = sub_1A84E654C();
  if (!result)
  {
    goto LABEL_12;
  }

LABEL_4:
  v18 = result - 1;
  if (__OFSUB__(result, 1))
  {
    __break(1u);
    goto LABEL_15;
  }

  if ((v16 & 0xC000000000000001) != 0)
  {
LABEL_15:

    v20 = MEMORY[0x1AC56AF80](v18, v16);
    goto LABEL_9;
  }

  if ((v18 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v18 < *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v19 = *(v16 + 8 * v18 + 32);

    v20 = v19;
LABEL_9:
    v21 = v20;
    v22 = [v20 rowID];

    *v24 = v22;
    return v16;
  }

  __break(1u);
  return result;
}

void sub_1A847A77C(unint64_t a1, uint64_t a2)
{
  if (a1 >> 62)
  {
    v4 = a2;
    v5 = sub_1A84E654C();
    a2 = v4;
    if (!v5)
    {
      return;
    }
  }

  else if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return;
  }

  v3 = a2;
  swift_beginAccess();
  *(v3 + 16) = a1;
}

uint64_t sub_1A847A80C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  sub_1A8244B68(0, &qword_1EB2E8198, 0x1E69A5DC8);
  v3 = sub_1A84E5FFC();

  v2(v3);
}

uint64_t sub_1A847A890(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = [v3 ID];
  v7 = sub_1A84E5DBC();
  v9 = v8;

  if (v7 == a1 && v9 == a2)
  {
    goto LABEL_22;
  }

  v11 = sub_1A84E67AC();

  if ((v11 & 1) == 0)
  {
    v13 = [v3 normalizedID];
    if (v13)
    {
      v14 = v13;
      v15 = sub_1A84E5DBC();
      v17 = v16;

      if (v15 == a1 && v17 == a2)
      {
        goto LABEL_22;
      }

      v18 = sub_1A84E67AC();

      if (v18)
      {
        goto LABEL_6;
      }
    }

    v19 = [v3 _unformattedPhoneNumber];
    if (v19)
    {
      v20 = v19;
      v21 = sub_1A84E5DBC();
      v23 = v22;

      if (v21 == a1 && v23 == a2)
      {
        goto LABEL_22;
      }

      v24 = sub_1A84E67AC();

      if (v24)
      {
        goto LABEL_6;
      }
    }

    v25 = [v3 _formattedPhoneNumber];
    if (v25)
    {
      v26 = v25;
      v27 = sub_1A84E5DBC();
      v29 = v28;

      if (v27 == a1 && v29 == a2)
      {
        goto LABEL_22;
      }

      v30 = sub_1A84E67AC();

      if (v30)
      {
        goto LABEL_6;
      }
    }

    v31 = [v3 originalID];
    if (!v31)
    {
      v12 = 0;
      return v12 & 1;
    }

    v32 = v31;
    v33 = sub_1A84E5DBC();
    v35 = v34;

    if (v33 != a1 || v35 != a2)
    {
      v12 = sub_1A84E67AC();
      goto LABEL_23;
    }

LABEL_22:
    v12 = 1;
LABEL_23:

    return v12 & 1;
  }

LABEL_6:
  v12 = 1;
  return v12 & 1;
}

uint64_t sub_1A847AAF0(unsigned __int8 a1)
{
  if (a1 != 5)
  {
    sub_1A84E646C();
    sub_1A840D3B0();
    v2 = sub_1A84E635C();
    v4 = v3;

    MEMORY[0x1AC56A990](v2, v4);

    MEMORY[0x1AC56A990](0xD000000000000010, 0x80000001A85328E0);
    v5 = sub_1A84E676C();
    MEMORY[0x1AC56A990](v5);

    MEMORY[0x1AC56A990](0x202C6C61746F7420, 0xE800000000000000);
    v6 = sub_1A84E676C();
    MEMORY[0x1AC56A990](v6);

    MEMORY[0x1AC56A990](0x6576696C20, 0xE500000000000000);
  }

  return 0;
}

__n128 initializeBufferWithCopyOfBuffer for SyncStoreCounts(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for SyncStoreCounts(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFB && a1[24])
  {
    return (*a1 + 251);
  }

  v3 = *a1;
  if (v3 <= 5)
  {
    v4 = 5;
  }

  else
  {
    v4 = *a1;
  }

  v5 = v4 - 6;
  if (v3 < 5)
  {
    v6 = -1;
  }

  else
  {
    v6 = v5;
  }

  return (v6 + 1);
}

uint64_t storeEnumTagSinglePayload for SyncStoreCounts(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 251;
    if (a3 >= 0xFB)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2 + 5;
    }
  }

  return result;
}

uint64_t sub_1A847ADC0(void *a1, char a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a3;
  v7 = sub_1A83EA2FC(&qword_1EB2E81B0, &qword_1A8507830);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v12 - v9;
  sub_1A82471E0(a1, a1[3]);
  sub_1A847B45C();
  sub_1A84E68AC();
  v16 = a2;
  v15 = 0;
  sub_1A8474E38();
  sub_1A84E66BC();
  if (v4)
  {
    return (*(v8 + 8))(v10, v7);
  }

  v14 = 1;
  sub_1A84E671C();
  v13 = 2;
  sub_1A84E671C();
  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_1A847AF84()
{
  v1 = 0x6C61746F74;
  if (*v0 != 1)
  {
    v1 = 1702259052;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x707954746E756F63;
  }
}

uint64_t sub_1A847AFD8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1A847B158(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1A847B000(uint64_t a1)
{
  v2 = sub_1A847B45C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A847B03C(uint64_t a1)
{
  v2 = sub_1A847B45C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A847B078@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_1A847B274(a2);
  if (!v2)
  {
    *a1 = result;
    *(a1 + 8) = v5;
    *(a1 + 16) = v6;
  }

  return result;
}

BOOL sub_1A847B0C8(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v4 = *a1;
  v6 = *(a1 + 1);
  v5 = *(a1 + 2);
  v7 = *a2;
  v9 = *(a2 + 1);
  v8 = *(a2 + 2);
  if (v4 == 5)
  {
    if (v7 != 5 || v6 != v9)
    {
      return 0;
    }

    return v5 == v8;
  }

  if (v7 == 5)
  {
    return 0;
  }

  v12 = sub_1A8436500(v4, v7);
  result = 0;
  if ((v12 & 1) != 0 && v6 == v9)
  {
    return v5 == v8;
  }

  return result;
}

uint64_t sub_1A847B158(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x707954746E756F63 && a2 == 0xE900000000000065;
  if (v4 || (sub_1A84E67AC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C61746F74 && a2 == 0xE500000000000000 || (sub_1A84E67AC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1702259052 && a2 == 0xE400000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1A84E67AC();

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

uint64_t sub_1A847B274(void *a1)
{
  v2 = sub_1A83EA2FC(&qword_1EB2E81A0, &qword_1A8507828);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v8[-v4];
  sub_1A82471E0(a1, a1[3]);
  sub_1A847B45C();
  sub_1A84E689C();
  v8[14] = 0;
  sub_1A8474DE4();
  sub_1A84E65FC();
  v6 = v8[15];
  v8[13] = 1;
  sub_1A84E665C();
  v8[12] = 2;
  sub_1A84E665C();
  (*(v3 + 8))(v5, v2);
  sub_1A8244788(a1);
  return v6;
}

unint64_t sub_1A847B45C()
{
  result = qword_1EB2E81A8;
  if (!qword_1EB2E81A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E81A8);
  }

  return result;
}

unint64_t sub_1A847B4C4()
{
  result = qword_1EB2E81B8;
  if (!qword_1EB2E81B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E81B8);
  }

  return result;
}

unint64_t sub_1A847B51C()
{
  result = qword_1EB2E81C0;
  if (!qword_1EB2E81C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E81C0);
  }

  return result;
}

unint64_t sub_1A847B574()
{
  result = qword_1EB2E81C8;
  if (!qword_1EB2E81C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E81C8);
  }

  return result;
}

uint64_t sub_1A847BA20()
{
  sub_1A84E526C();
  swift_allocObject();
  result = sub_1A84E525C();
  qword_1EB2E45F0 = result;
  return result;
}

id sub_1A847BA60(uint64_t a1)
{
  v2 = v1;
  __dst[63] = *MEMORY[0x1E69E9840];
  v3 = objc_opt_self();
  v4 = sub_1A84E5D2C();

  __dst[0] = 0;
  v5 = [v3 dataWithJSONObject:v4 options:0 error:__dst];

  v6 = __dst[0];
  if (v5)
  {
    v7 = sub_1A84E55FC();
    v9 = v8;

    if (qword_1EB2E45E8 != -1)
    {
      swift_once();
    }

    sub_1A847C130();
    sub_1A84E524C();
    sub_1A83F5994(v7, v9);
  }

  else
  {
    v10 = v6;
    v11 = sub_1A84E548C();

    swift_willThrow();
    if (qword_1EB2E46B8 != -1)
    {
      swift_once();
    }

    v12 = sub_1A84E5C9C();
    sub_1A824431C(v12, qword_1EB2FEFF8);
    v13 = sub_1A84E5C7C();
    v14 = sub_1A84E619C();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_1A823F000, v13, v14, "Failed to get data from dictionary. Resetting statistic counts", v15, 2u);
      MEMORY[0x1AC56D3F0](v15, -1, -1);
    }

    if (qword_1EB2E5938 != -1)
    {
      swift_once();
    }

    memcpy(__dst, &qword_1EB2FF028, 0x1F8uLL);
  }

  memcpy(&v2[OBJC_IVAR___IMCloudKitSyncStatistics_statistics], __dst, 0x1F8uLL);
  v17.receiver = v2;
  v17.super_class = IMCloudKitSyncStatistics;
  return objc_msgSendSuper2(&v17, sel_init);
}

unint64_t IMCloudKitSyncStatistics.description.getter()
{
  v1 = v0;
  swift_getObjectType();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  [v1 percentSynced];
  v3 = [ObjCClassFromMetadata percentStringFromDouble_];
  if (v3)
  {
    v4 = v3;
    v5 = sub_1A84E5DBC();
    v7 = v6;
  }

  else
  {
    v7 = 0xE300000000000000;
    v5 = 7104878;
  }

  __dst[0] = 0;
  __dst[1] = 0xE000000000000000;
  sub_1A84E646C();

  v11 = 0xD000000000000014;
  v12 = 0x80000001A8532900;
  MEMORY[0x1AC56A990](v5, v7);

  MEMORY[0x1AC56A990](10, 0xE100000000000000);
  memcpy(__dst, &v1[OBJC_IVAR___IMCloudKitSyncStatistics_statistics], sizeof(__dst));
  v8 = CountStatistics.description.getter();
  MEMORY[0x1AC56A990](v8);

  return v11;
}

void __swiftcall IMCloudKitSyncStatistics.init()(IMCloudKitSyncStatistics *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

unint64_t sub_1A847C130()
{
  result = qword_1EB2E4628;
  if (!qword_1EB2E4628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E4628);
  }

  return result;
}

__n128 sub_1A847C184(uint64_t a1, uint64_t a2)
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

uint64_t sub_1A847C1A0(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFB && a1[96])
  {
    return (*a1 + 251);
  }

  v3 = *a1;
  if (v3 <= 5)
  {
    v4 = 5;
  }

  else
  {
    v4 = *a1;
  }

  v5 = v4 - 6;
  if (v3 < 5)
  {
    v6 = -1;
  }

  else
  {
    v6 = v5;
  }

  return (v6 + 1);
}

uint64_t sub_1A847C1F4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 251;
    if (a3 >= 0xFB)
    {
      *(result + 96) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
    {
      *(result + 96) = 0;
    }

    if (a2)
    {
      *result = a2 + 5;
    }
  }

  return result;
}

double sub_1A847C260()
{
  LOBYTE(xmmword_1EB2FF2C0) = 5;
  BYTE8(xmmword_1EB2FF2C0) = 5;
  result = 0.0;
  xmmword_1EB2FF2D0 = 0u;
  xmmword_1EB2FF2E0 = 0u;
  LOBYTE(xmmword_1EB2FF2F0) = 5;
  *(&xmmword_1EB2FF2F0 + 1) = 0;
  *&xmmword_1EB2FF300 = 0;
  BYTE8(xmmword_1EB2FF300) = 5;
  xmmword_1EB2FF310 = 0uLL;
  return result;
}

uint64_t sub_1A847C290(void *a1)
{
  v3 = v1;
  v5 = sub_1A83EA2FC(&qword_1EB2E8208, &qword_1A8507A28);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11 - v7;
  sub_1A82471E0(a1, a1[3]);
  sub_1A847CD98();
  sub_1A84E68AC();
  LOBYTE(v11) = *v3;
  v14 = 0;
  sub_1A8474E38();
  sub_1A84E66BC();
  if (!v2)
  {
    v9 = *(v3 + 24);
    v11 = *(v3 + 8);
    v12 = v9;
    v13 = *(v3 + 40);
    v14 = 1;
    sub_1A847CEE8();
    sub_1A84E672C();
    v11 = *(v3 + 48);
    *&v12 = *(v3 + 64);
    v14 = 2;
    sub_1A847CF3C();
    sub_1A84E672C();
    v11 = *(v3 + 72);
    *&v12 = *(v3 + 88);
    v14 = 3;
    sub_1A847CF90();
    sub_1A84E672C();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_1A847C4C0()
{
  v1 = 0x707954746E756F63;
  v2 = 0x726F7453636E7973;
  if (*v0 != 2)
  {
    v2 = 0x6F43726576726573;
  }

  if (*v0)
  {
    v1 = 0xD000000000000012;
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

uint64_t sub_1A847C558@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1A847C980(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1A847C580(uint64_t a1)
{
  v2 = sub_1A847CD98();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A847C5BC(uint64_t a1)
{
  v2 = sub_1A847CD98();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1A847C5F8@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_1A847CB00(a2, v8);
  if (!v2)
  {
    v5 = v8[3];
    a1[2] = v8[2];
    a1[3] = v5;
    v6 = v8[5];
    a1[4] = v8[4];
    a1[5] = v6;
    result = *v8;
    v7 = v8[1];
    *a1 = v8[0];
    a1[1] = v7;
  }

  return result;
}

uint64_t sub_1A847C65C(_OWORD *a1, _OWORD *a2)
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
  return sub_1A847C790(v9, v10) & 1;
}

uint64_t sub_1A847C6B8()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  v3 = *(v0 + 72);
  v4 = *(v0 + 48);
  v8 = sub_1A84740F4();
  MEMORY[0x1AC56A990](10, 0xE100000000000000);
  v5 = sub_1A847AAF0(v3);
  MEMORY[0x1AC56A990](v5);

  MEMORY[0x1AC56A990](10, 0xE100000000000000);
  v6 = sub_1A84953E4(v4, v1, v2);
  MEMORY[0x1AC56A990](v6);

  return v8;
}

uint64_t sub_1A847C790(uint64_t a1, unsigned __int8 *a2)
{
  v2 = *a2;
  if (*a1 == 5)
  {
    if (v2 != 5)
    {
      return 0;
    }
  }

  else
  {
    if (v2 == 5)
    {
      return 0;
    }

    v3 = a1;
    v4 = a2;
    v5 = sub_1A8436500(*a1, *a2);
    a2 = v4;
    v6 = v5;
    a1 = v3;
    if ((v6 & 1) == 0)
    {
      return 0;
    }
  }

  v8 = *(a1 + 16);
  v7 = *(a1 + 24);
  v10 = *(a1 + 32);
  v9 = *(a1 + 40);
  v11 = a2[8];
  v13 = *(a2 + 2);
  v12 = *(a2 + 3);
  v15 = *(a2 + 4);
  v14 = *(a2 + 5);
  if (*(a1 + 8) == 5)
  {
    v16 = a1;
    result = 0;
    if (v11 != 5 || v8 != v13 || v7 != v12 || v10 != v15 || v9 != v14)
    {
      return result;
    }

    goto LABEL_19;
  }

  if (v11 == 5)
  {
    return 0;
  }

  v18 = a1;
  v19 = a2;
  v20 = sub_1A8436500(*(a1 + 8), a2[8]);
  result = 0;
  if ((v20 & 1) != 0 && v8 == v13 && v7 == v12 && v10 == v15)
  {
    a2 = v19;
    v16 = v18;
    if (v9 == v14)
    {
LABEL_19:
      v21 = *(v16 + 48);
      v23 = *(v16 + 56);
      v22 = *(v16 + 64);
      v24 = a2[48];
      v26 = *(a2 + 7);
      v25 = *(a2 + 8);
      if (v21 == 5)
      {
        result = 0;
        if (v24 != 5 || v23 != v26 || v22 != v25)
        {
          return result;
        }

        goto LABEL_28;
      }

      if (v24 != 5)
      {
        v27 = v16;
        v28 = a2;
        v29 = sub_1A8436500(v21, a2[48]);
        result = 0;
        if ((v29 & 1) == 0)
        {
          return result;
        }

        if (v23 != v26)
        {
          return result;
        }

        a2 = v28;
        v16 = v27;
        if (v22 != v25)
        {
          return result;
        }

LABEL_28:
        v30 = *(v16 + 72);
        v32 = *(v16 + 80);
        v31 = *(v16 + 88);
        v33 = a2[72];
        v35 = *(a2 + 10);
        v34 = *(a2 + 11);
        if (v30 == 5)
        {
          if (v33 != 5)
          {
            return 0;
          }
        }

        else if (v33 == 5 || (sub_1A8436500(v30, a2[72]) & 1) == 0)
        {
          return 0;
        }

        if (v32 == v35 && v31 == v34)
        {
          return 1;
        }
      }

      return 0;
    }
  }

  return result;
}

uint64_t sub_1A847C980(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x707954746E756F63 && a2 == 0xE900000000000065;
  if (v4 || (sub_1A84E67AC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001A8532E50 == a2 || (sub_1A84E67AC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x726F7453636E7973 && a2 == 0xEF73746E756F4365 || (sub_1A84E67AC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6F43726576726573 && a2 == 0xEC00000073746E75)
  {

    return 3;
  }

  else
  {
    v6 = sub_1A84E67AC();

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

uint64_t sub_1A847CB00@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1A83EA2FC(&qword_1EB2E81E0, &qword_1A8507A20);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v16 - v7;
  sub_1A82471E0(a1, a1[3]);
  sub_1A847CD98();
  sub_1A84E689C();
  if (v2)
  {
    return sub_1A8244788(a1);
  }

  v24 = 0;
  sub_1A8474DE4();
  sub_1A84E65FC();
  v9 = v20;
  v24 = 1;
  sub_1A847CDEC();
  sub_1A84E666C();
  v10 = v20;
  v18 = v22;
  v19 = v21;
  v24 = 2;
  sub_1A847CE40();
  sub_1A84E666C();
  v23 = v20;
  v16 = *(&v21 + 1);
  v17 = v21;
  v24 = 3;
  sub_1A847CE94();
  sub_1A84E666C();
  (*(v6 + 8))(v8, v5);
  v11 = v20;
  v12 = v21;
  result = sub_1A8244788(a1);
  *a2 = v9;
  *(a2 + 8) = v10;
  v14 = v18;
  *(a2 + 16) = v19;
  *(a2 + 32) = v14;
  *(a2 + 48) = v23;
  v15 = v16;
  *(a2 + 56) = v17;
  *(a2 + 64) = v15;
  *(a2 + 72) = v11;
  *(a2 + 80) = v12;
  return result;
}

unint64_t sub_1A847CD98()
{
  result = qword_1EB2E81E8;
  if (!qword_1EB2E81E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E81E8);
  }

  return result;
}

unint64_t sub_1A847CDEC()
{
  result = qword_1EB2E81F0;
  if (!qword_1EB2E81F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E81F0);
  }

  return result;
}

unint64_t sub_1A847CE40()
{
  result = qword_1EB2E81F8;
  if (!qword_1EB2E81F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E81F8);
  }

  return result;
}

unint64_t sub_1A847CE94()
{
  result = qword_1EB2E8200;
  if (!qword_1EB2E8200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E8200);
  }

  return result;
}

unint64_t sub_1A847CEE8()
{
  result = qword_1EB2E8210;
  if (!qword_1EB2E8210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E8210);
  }

  return result;
}

unint64_t sub_1A847CF3C()
{
  result = qword_1EB2E8218;
  if (!qword_1EB2E8218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E8218);
  }

  return result;
}

unint64_t sub_1A847CF90()
{
  result = qword_1EB2E8220;
  if (!qword_1EB2E8220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E8220);
  }

  return result;
}

unint64_t sub_1A847CFF8()
{
  result = qword_1EB2E8228;
  if (!qword_1EB2E8228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E8228);
  }

  return result;
}

unint64_t sub_1A847D050()
{
  result = qword_1EB2E8230;
  if (!qword_1EB2E8230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E8230);
  }

  return result;
}

unint64_t sub_1A847D0A8()
{
  result = qword_1EB2E8238;
  if (!qword_1EB2E8238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E8238);
  }

  return result;
}

uint64_t MultiplexedDaemonConnection.label.getter()
{
  v1 = *(v0 + OBJC_IVAR___IMMultiplexedDaemonConnection_label);

  return v1;
}

id sub_1A847D1DC(uint64_t a1, uint64_t a2, SEL *a3)
{
  v4 = [objc_opt_self() sharedController];
  v5 = [v4 *a3];

  return v5;
}

id sub_1A847D258(SEL *a1)
{
  v2 = [objc_opt_self() sharedController];
  v3 = [v2 *a1];

  return v3;
}

Swift::Void __swiftcall MultiplexedDaemonConnection.waitForSetup()()
{
  if (qword_1ED7675D0 != -1)
  {
    swift_once();
  }

  v1 = sub_1A84E5C9C();
  sub_1A824431C(v1, qword_1ED7679F8);
  v2 = v0;
  v3 = sub_1A84E5C7C();
  v4 = sub_1A84E617C();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v13 = v6;
    *v5 = 136315394;
    *(v5 + 4) = sub_1A82446BC(*&v2[OBJC_IVAR___IMMultiplexedDaemonConnection_label], *&v2[OBJC_IVAR___IMMultiplexedDaemonConnection_label + 8], &v13);
    *(v5 + 12) = 2080;
    v7 = IMStringFromClientCapabilities();
    v8 = sub_1A84E5DBC();
    v10 = v9;

    v11 = sub_1A82446BC(v8, v10, &v13);

    *(v5 + 14) = v11;
    _os_log_impl(&dword_1A823F000, v3, v4, "Multiplexed connection %s is waiting for setup with capabilities %s", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1AC56D3F0](v6, -1, -1);
    MEMORY[0x1AC56D3F0](v5, -1, -1);
  }

  v12 = [objc_opt_self() sharedController];
  [v12 blockUntilConnected];
}

Swift::Void __swiftcall MultiplexedDaemonConnection.invalidate()()
{
  if (qword_1ED7675D0 != -1)
  {
    swift_once();
  }

  v1 = sub_1A84E5C9C();
  sub_1A824431C(v1, qword_1ED7679F8);
  v2 = v0;
  v3 = sub_1A84E5C7C();
  v4 = sub_1A84E617C();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v7 = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_1A82446BC(*&v2[OBJC_IVAR___IMMultiplexedDaemonConnection_label], *&v2[OBJC_IVAR___IMMultiplexedDaemonConnection_label + 8], &v7);
    _os_log_impl(&dword_1A823F000, v3, v4, "Multiplexed connection %s was invalidated by caller", v5, 0xCu);
    sub_1A8244788(v6);
    MEMORY[0x1AC56D3F0](v6, -1, -1);
    MEMORY[0x1AC56D3F0](v5, -1, -1);
  }

  (*&v2[OBJC_IVAR___IMMultiplexedDaemonConnection_onInvalidate])();
}

id MultiplexedDaemonConnection.__allocating_init(label:capabilities:context:onInvalidate:onDeinit:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v17 = objc_allocWithZone(v8);
  v18 = &v17[OBJC_IVAR___IMMultiplexedDaemonConnection_label];
  *v18 = a1;
  *(v18 + 1) = a2;
  *&v17[OBJC_IVAR___IMMultiplexedDaemonConnection_capabilities] = a3;
  *&v17[OBJC_IVAR___IMMultiplexedDaemonConnection_context] = a4;
  v19 = &v17[OBJC_IVAR___IMMultiplexedDaemonConnection_onInvalidate];
  *v19 = a5;
  *(v19 + 1) = a6;
  v20 = &v17[OBJC_IVAR___IMMultiplexedDaemonConnection_onDeinit];
  *v20 = a7;
  *(v20 + 1) = a8;
  v22.receiver = v17;
  v22.super_class = v8;
  return objc_msgSendSuper2(&v22, sel_init);
}

id MultiplexedDaemonConnection.init(label:capabilities:context:onInvalidate:onDeinit:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  ObjectType = swift_getObjectType();
  v18 = &v8[OBJC_IVAR___IMMultiplexedDaemonConnection_label];
  *v18 = a1;
  *(v18 + 1) = a2;
  *&v8[OBJC_IVAR___IMMultiplexedDaemonConnection_capabilities] = a3;
  *&v8[OBJC_IVAR___IMMultiplexedDaemonConnection_context] = a4;
  v19 = &v8[OBJC_IVAR___IMMultiplexedDaemonConnection_onInvalidate];
  *v19 = a5;
  *(v19 + 1) = a6;
  v20 = &v8[OBJC_IVAR___IMMultiplexedDaemonConnection_onDeinit];
  *v20 = a7;
  *(v20 + 1) = a8;
  v22.receiver = v8;
  v22.super_class = ObjectType;
  return objc_msgSendSuper2(&v22, sel_init);
}

id MultiplexedDaemonConnection.__deallocating_deinit()
{
  ObjectType = swift_getObjectType();
  v2 = *&v0[OBJC_IVAR___IMMultiplexedDaemonConnection_onDeinit];

  v2(v3);

  v5.receiver = v0;
  v5.super_class = ObjectType;
  return objc_msgSendSuper2(&v5, sel_dealloc);
}

id MultiplexedDaemonConnection.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

__n128 ImportExport.ImportStatistics.expectedCounts.getter@<Q0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 72);
  result = *(v1 + 40);
  v5 = *(v1 + 56);
  *a1 = result;
  *(a1 + 16) = v5;
  *(a1 + 32) = v3;
  return result;
}

__n128 ImportExport.ImportStatistics.importedCounts.getter@<Q0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 112);
  result = *(v1 + 80);
  v5 = *(v1 + 96);
  *a1 = result;
  *(a1 + 16) = v5;
  *(a1 + 32) = v3;
  return result;
}

void *ImportExport.ImportStatistics.remainingCounts.getter@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 72);
  v4 = *(v1 + 56);
  v10[0] = *(v1 + 40);
  v10[1] = v4;
  v11 = v3;
  swift_beginAccess();
  v5 = *(v1 + 112);
  v6 = *(v1 + 96);
  v8[0] = *(v1 + 80);
  v8[1] = v6;
  v9 = v5;
  return static ImportExport.RecordCounts.- infix(_:_:)(v10, v8, a1);
}

BOOL ImportExport.ImportStatistics.isEmpty.getter()
{
  swift_beginAccess();
  result = 0;
  if ((vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_s64(*(v0 + 40)), vceqzq_s64(*(v0 + 56)))))) & 1) == 0 && !*(v0 + 72))
  {
    swift_beginAccess();
    result = 0;
    if ((vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_s64(*(v0 + 80)), vceqzq_s64(*(v0 + 96)))))) & 1) == 0 && !*(v0 + 112))
    {
      swift_beginAccess();
      return *(v0 + 32) == 0;
    }
  }

  return result;
}

uint64_t ImportExport.ImportStatistics.__allocating_init()()
{
  v0 = swift_allocObject();
  ImportExport.ImportStatistics.init()();
  return v0;
}

uint64_t ImportExport.ImportStatistics.init()()
{
  v1 = sub_1A83EA2FC(&qword_1EB2E6F48, &unk_1A8501F00);
  v2 = MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v13 - v5;
  v7 = sub_1A84E56DC();
  v8 = *(*(v7 - 8) + 56);
  v8(v6, 1, 1, v7);
  v8(v4, 1, 1, v7);
  type metadata accessor for ImportExport.Timer(0);
  v9 = swift_allocObject();
  v10 = OBJC_IVAR____TtCO6IMCore12ImportExport5Timer_startTime;
  v8((v9 + OBJC_IVAR____TtCO6IMCore12ImportExport5Timer_startTime), 1, 1, v7);
  v11 = OBJC_IVAR____TtCO6IMCore12ImportExport5Timer_endTime;
  v8((v9 + OBJC_IVAR____TtCO6IMCore12ImportExport5Timer_endTime), 1, 1, v7);
  swift_beginAccess();
  sub_1A843E9F0(v6, v9 + v10);
  swift_endAccess();
  swift_beginAccess();
  sub_1A843E9F0(v4, v9 + v11);
  swift_endAccess();
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0u;
  *(v0 + 80) = 0u;
  *(v0 + 96) = 0u;
  *(v0 + 112) = 0;
  *(v0 + 16) = 0x3FF199999999999ALL;
  *(v0 + 24) = v9;
  return v0;
}

Swift::Void __swiftcall ImportExport.ImportStatistics.reset()()
{
  v1 = sub_1A83EA2FC(&qword_1EB2E6F48, &unk_1A8501F00);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v13 - v2;
  swift_beginAccess();
  v4 = *(v0 + 24);
  v5 = sub_1A84E56DC();
  v6 = *(*(v5 - 8) + 56);
  v6(v3, 1, 1, v5);
  v7 = OBJC_IVAR____TtCO6IMCore12ImportExport5Timer_startTime;
  swift_beginAccess();

  sub_1A843E9F0(v3, v4 + v7);
  swift_endAccess();
  v6(v3, 1, 1, v5);
  v8 = OBJC_IVAR____TtCO6IMCore12ImportExport5Timer_endTime;
  swift_beginAccess();
  sub_1A843E9F0(v3, v4 + v8);
  swift_endAccess();

  if (qword_1EB2E5980 != -1)
  {
    swift_once();
  }

  v9 = xmmword_1EB2E7F00;
  v13 = unk_1EB2E7F18;
  v14 = *(&xmmword_1EB2E7F00 + 8);
  swift_beginAccess();
  *(v0 + 80) = v9;
  v10 = v14;
  *(v0 + 104) = v13;
  *(v0 + 88) = v10;
  v11 = qword_1EB2E7F20;
  v13 = *&qword_1EB2E7F10;
  v14 = xmmword_1EB2E7F00;
  swift_beginAccess();
  v12 = v14;
  *(v0 + 56) = v13;
  *(v0 + 40) = v12;
  *(v0 + 72) = v11;
  swift_beginAccess();
  *(v0 + 32) = 0;
}

uint64_t sub_1A847E158()
{
  v1 = *v0;
  v2 = 0x6E6F6973726576;
  v3 = 0x756F436863746162;
  v4 = 0x6465746365707865;
  if (v1 != 3)
  {
    v4 = 0x646574726F706D69;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x72656D6974;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1A847E20C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1A847FA58(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1A847E234(uint64_t a1)
{
  v2 = sub_1A847E5C8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A847E270(uint64_t a1)
{
  v2 = sub_1A847E5C8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ImportExport.ImportStatistics.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t ImportExport.ImportStatistics.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_1A83EA2FC(&qword_1EB2E8278, &qword_1A8507BD8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v14[-v7];
  sub_1A82471E0(a1, a1[3]);
  sub_1A847E5C8();
  sub_1A84E68AC();
  LOBYTE(v15) = 0;
  sub_1A84E66EC();
  if (!v2)
  {
    swift_beginAccess();
    *&v15 = *(v3 + 24);
    v18 = 1;
    type metadata accessor for ImportExport.Timer(0);
    sub_1A84805EC(&qword_1EB2E8288, 255, type metadata accessor for ImportExport.Timer, &protocol conformance descriptor for ImportExport.Timer);
    sub_1A84E672C();
    swift_beginAccess();
    LOBYTE(v15) = 2;
    sub_1A84E671C();
    swift_beginAccess();
    v9 = *(v3 + 72);
    v10 = *(v3 + 56);
    v15 = *(v3 + 40);
    v16 = v10;
    v17 = v9;
    v14[8] = 3;
    sub_1A847E61C();
    sub_1A84E672C();
    swift_beginAccess();
    v11 = *(v3 + 112);
    v12 = *(v3 + 96);
    v15 = *(v3 + 80);
    v16 = v12;
    v17 = v11;
    v14[7] = 4;
    sub_1A84E672C();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_1A847E5C8()
{
  result = qword_1EB2E8280;
  if (!qword_1EB2E8280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E8280);
  }

  return result;
}

unint64_t sub_1A847E61C()
{
  result = qword_1EB2E8290;
  if (!qword_1EB2E8290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E8290);
  }

  return result;
}

uint64_t ImportExport.ImportStatistics.__allocating_init(from:)(void *a1)
{
  v2 = swift_allocObject();
  ImportExport.ImportStatistics.init(from:)(a1);
  return v2;
}

uint64_t ImportExport.ImportStatistics.init(from:)(void *a1)
{
  v35 = a1;
  *&v34 = *v1;
  v33 = sub_1A83EA2FC(&qword_1EB2E8298, &qword_1A8507BE0);
  v32 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  *&v37 = &v32 - v2;
  v3 = sub_1A83EA2FC(&qword_1EB2E6F48, &unk_1A8501F00);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v32 - v7;
  v9 = sub_1A84E56DC();
  v10 = *(*(v9 - 8) + 56);
  v10(v8, 1, 1, v9);
  v10(v6, 1, 1, v9);
  type metadata accessor for ImportExport.Timer(0);
  v11 = swift_allocObject();
  v12 = OBJC_IVAR____TtCO6IMCore12ImportExport5Timer_startTime;
  v10((v11 + OBJC_IVAR____TtCO6IMCore12ImportExport5Timer_startTime), 1, 1, v9);
  v13 = OBJC_IVAR____TtCO6IMCore12ImportExport5Timer_endTime;
  v10((v11 + OBJC_IVAR____TtCO6IMCore12ImportExport5Timer_endTime), 1, 1, v9);
  swift_beginAccess();
  v14 = v11 + v12;
  v15 = v35;
  sub_1A843E9F0(v8, v14);
  swift_endAccess();
  swift_beginAccess();
  v16 = v11 + v13;
  v17 = v44;
  sub_1A843E9F0(v6, v16);
  swift_endAccess();
  *(v17 + 24) = v11;
  v18 = (v17 + 24);
  *(v17 + 32) = 0u;
  v19 = (v17 + 32);
  *(v17 + 80) = 0u;
  *(v17 + 48) = 0u;
  *(v17 + 64) = 0u;
  *(v17 + 96) = 0u;
  *(v17 + 112) = 0;
  sub_1A82471E0(v15, v15[3]);
  sub_1A847E5C8();
  v20 = v36;
  sub_1A84E689C();
  if (v20)
  {

    swift_deallocPartialClassInstance();
    sub_1A8244788(v15);
  }

  else
  {
    v21 = v32;
    LOBYTE(v40) = 0;
    v22 = v33;
    sub_1A84E662C();
    *(v44 + 16) = v24;
    v43 = 1;
    sub_1A84805EC(&qword_1EB2E82A0, 255, type metadata accessor for ImportExport.Timer, &protocol conformance descriptor for ImportExport.Timer);
    sub_1A84E666C();
    v25 = v40;
    swift_beginAccess();
    *v18 = v25;

    LOBYTE(v40) = 2;
    v26 = sub_1A84E665C();
    swift_beginAccess();
    *v19 = v26;
    v39 = 3;
    sub_1A847EC5C();
    sub_1A84E666C();
    v27 = v42;
    v36 = v40;
    v34 = v41;
    v28 = v44;
    swift_beginAccess();
    *(v28 + 56) = v34;
    *(v28 + 40) = v36;
    *(v28 + 72) = v27;
    v38 = 4;
    v29 = v37;
    sub_1A84E666C();
    (*(v21 + 8))(v29, v22);
    v30 = v42;
    v36 = v41;
    v37 = v40;
    swift_beginAccess();
    v31 = v36;
    *(v28 + 80) = v37;
    *(v28 + 96) = v31;
    *(v28 + 112) = v30;
    sub_1A8244788(v15);
    return v28;
  }

  return v17;
}

unint64_t sub_1A847EC5C()
{
  result = qword_1EB2E82A8;
  if (!qword_1EB2E82A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E82A8);
  }

  return result;
}

uint64_t sub_1A847ED04@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = swift_allocObject();
  result = ImportExport.ImportStatistics.init(from:)(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

uint64_t ImportExport.ImportStatistics.description.getter()
{
  sub_1A84E646C();
  v0 = sub_1A84E69AC();
  MEMORY[0x1AC56A990](v0);

  MEMORY[0x1AC56A990](0x6F6973726576203ALL, 0xEB00000000203A6ELL);
  sub_1A84E60EC();
  MEMORY[0x1AC56A990](2604, 0xE200000000000000);
  v1 = _s6IMCore12ImportExportO0B10StatisticsC19progressDescriptionSSvg_0();
  MEMORY[0x1AC56A990](v1);

  return 0;
}

uint64_t ImportExport.ImportStatistics.format(report:)(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 16);
  *(&v32 + 1) = MEMORY[0x1E69E63B0];
  *&v31 = v4;
  ImportExport.Report.add(key:value:)(0x6E6F6973726556, 0xE700000000000000, &v31);
  sub_1A8244788(&v31);
  swift_beginAccess();
  v5 = *(v2 + 32);
  *(&v32 + 1) = MEMORY[0x1E69E6810];
  *&v31 = v5;
  ImportExport.Report.add(key:value:)(0x6F43206863746142, 0xEB00000000746E75, &v31);
  sub_1A8244788(&v31);
  swift_beginAccess();
  v6 = *(v2 + 96);
  v31 = *(v2 + 80);
  v32 = v6;
  v33 = *(v2 + 112);
  sub_1A84A8550(0x6465746365707845, 0xEF73746E756F4320, &v31, a1);
  v7 = *(v2 + 96);
  v29[0] = *(v2 + 80);
  v29[1] = v7;
  v30 = *(v2 + 112);
  sub_1A84A8550(0x646574726F706D49, 0xEF73746E756F4320, v29, a1);
  result = swift_beginAccess();
  v9 = *(v2 + 40);
  v10 = *(v2 + 80);
  v11 = __OFSUB__(v9, v10);
  v12 = v9 - v10;
  if (v11)
  {
    __break(1u);
    goto LABEL_8;
  }

  v13 = *(v2 + 88);
  v14 = *(v2 + 48);
  v11 = __OFSUB__(v14, v13);
  v15 = v14 - v13;
  if (v11)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v16 = *(v2 + 56);
  v17 = *(v2 + 96);
  v11 = __OFSUB__(v16, v17);
  v18 = v16 - v17;
  if (v11)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v19 = *(v2 + 64);
  v20 = *(v2 + 104);
  v11 = __OFSUB__(v19, v20);
  v21 = v19 - v20;
  if (v11)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v22 = *(v2 + 72);
  v23 = *(v2 + 112);
  v11 = __OFSUB__(v22, v23);
  v24 = v22 - v23;
  if (!v11)
  {
    *&v25 = v12;
    *(&v25 + 1) = v15;
    v26 = v18;
    v27 = v21;
    v28 = v24;
    sub_1A84A8550(0xD000000000000010, 0x80000001A8532F80, &v25, a1);
    swift_beginAccess();

    ImportExport.Timer.format(report:)(a1);
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t sub_1A847F12C()
{
  type metadata accessor for ImportExport.ImportStatistics();
  v0 = swift_allocObject();
  result = ImportExport.ImportStatistics.init()();
  qword_1EB2E8270 = v0;
  return result;
}

uint64_t static ImportExport.ImportStatistics.zero.getter()
{
  if (qword_1EB2E59A8 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1A847F1D0@<X0>(void *a1@<X8>)
{
  if (qword_1EB2E59A8 != -1)
  {
    v2 = a1;
    swift_once();
    a1 = v2;
  }

  *a1 = qword_1EB2E8270;
}

uint64_t sub_1A847F240@<X0>(void *a1@<X0>, uint64_t **a2@<X1>, uint64_t *a3@<X8>)
{
  result = _s6IMCore12ImportExportO0B10StatisticsC1poiyA2E_AEtFZ_0(*a1, *a2);
  *a3 = result;
  return result;
}

uint64_t sub_1A847F270(uint64_t *a1, uint64_t **a2)
{
  v3 = _s6IMCore12ImportExportO0B10StatisticsC1poiyA2E_AEtFZ_0(*a1, *a2);

  *a1 = v3;
  return result;
}

uint64_t sub_1A847F2B8@<X0>(void *a1@<X0>, uint64_t **a2@<X1>, uint64_t *a3@<X8>)
{
  result = _s6IMCore12ImportExportO0B10StatisticsC1soiyA2E_AEtFZ_0(*a1, *a2);
  *a3 = result;
  return result;
}

uint64_t sub_1A847F2E8(uint64_t *a1, uint64_t **a2)
{
  v3 = _s6IMCore12ImportExportO0B10StatisticsC1soiyA2E_AEtFZ_0(*a1, *a2);

  *a1 = v3;
  return result;
}

uint64_t ImportExport.ImportStatistics.totalConversationCount.getter()
{
  swift_beginAccess();
  result = *(v0 + 40);
  if (result < 0)
  {
    __break(1u);
  }

  return result;
}

uint64_t ImportExport.ImportStatistics.totalMessageCount.getter()
{
  swift_beginAccess();
  result = *(v0 + 48);
  if (result < 0)
  {
    __break(1u);
  }

  return result;
}

uint64_t ImportExport.ImportStatistics.totalAttachmentCount.getter()
{
  swift_beginAccess();
  result = *(v0 + 56);
  if (result < 0)
  {
    __break(1u);
  }

  return result;
}

uint64_t ImportExport.ImportStatistics.totalParticipantCount.getter()
{
  swift_beginAccess();
  result = *(v0 + 64);
  if (result < 0)
  {
    __break(1u);
  }

  return result;
}

uint64_t ImportExport.ImportStatistics.conversationCount.getter()
{
  swift_beginAccess();
  result = *(v0 + 80);
  if (result < 0)
  {
    __break(1u);
  }

  return result;
}

uint64_t ImportExport.ImportStatistics.messageCount.getter()
{
  swift_beginAccess();
  result = *(v0 + 88);
  if (result < 0)
  {
    __break(1u);
  }

  return result;
}

uint64_t ImportExport.ImportStatistics.attachmentCount.getter()
{
  swift_beginAccess();
  result = *(v0 + 96);
  if (result < 0)
  {
    __break(1u);
  }

  return result;
}

uint64_t ImportExport.ImportStatistics.participantCount.getter()
{
  swift_beginAccess();
  result = *(v0 + 104);
  if (result < 0)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1A847F584()
{
  v1 = *v0;
  swift_beginAccess();
  result = *(v1 + 40);
  if (result < 0)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1A847F5CC()
{
  v1 = *v0;
  swift_beginAccess();
  result = *(v1 + 48);
  if (result < 0)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1A847F614()
{
  v1 = *v0;
  swift_beginAccess();
  result = *(v1 + 56);
  if (result < 0)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1A847F65C()
{
  v1 = *v0;
  swift_beginAccess();
  result = *(v1 + 64);
  if (result < 0)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1A847F6A4()
{
  v1 = *v0;
  swift_beginAccess();
  return *(v1 + 72);
}

uint64_t sub_1A847F6E4()
{
  v1 = *v0;
  swift_beginAccess();
  result = *(v1 + 80);
  if (result < 0)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1A847F72C()
{
  v1 = *v0;
  swift_beginAccess();
  result = *(v1 + 88);
  if (result < 0)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1A847F774()
{
  v1 = *v0;
  swift_beginAccess();
  result = *(v1 + 96);
  if (result < 0)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1A847F7BC()
{
  v1 = *v0;
  swift_beginAccess();
  result = *(v1 + 104);
  if (result < 0)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1A847F804()
{
  v1 = *v0;
  swift_beginAccess();
  return *(v1 + 112);
}

BOOL _s6IMCore12ImportExportO0B10StatisticsC2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  swift_beginAccess();
  v4 = *(a1 + 24);
  swift_beginAccess();
  v5 = *(a2 + 24);

  v6 = _s6IMCore12ImportExportO5TimerC2eeoiySbAE_AEtFZ_0(v4, v5);

  if ((v6 & 1) == 0)
  {
    return 0;
  }

  swift_beginAccess();
  v7 = *(a1 + 32);
  swift_beginAccess();
  if (v7 != *(a2 + 32))
  {
    return 0;
  }

  swift_beginAccess();
  v8 = *(a1 + 72);
  v11 = *(a1 + 56);
  v13 = *(a1 + 40);
  swift_beginAccess();
  result = 0;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_s64(v13, *(a2 + 40)), vceqq_s64(v11, *(a2 + 56))))) & 1) != 0 && v8 == *(a2 + 72))
  {
    swift_beginAccess();
    v10 = *(a1 + 112);
    v12 = *(a1 + 96);
    v14 = *(a1 + 80);
    swift_beginAccess();
    if (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_s64(v14, *(a2 + 80)), vceqq_s64(v12, *(a2 + 96))))))
    {
      return v10 == *(a2 + 112);
    }

    return 0;
  }

  return result;
}

uint64_t sub_1A847FA58(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000;
  if (v4 || (sub_1A84E67AC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x72656D6974 && a2 == 0xE500000000000000 || (sub_1A84E67AC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x756F436863746162 && a2 == 0xEA0000000000746ELL || (sub_1A84E67AC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6465746365707865 && a2 == 0xEE0073746E756F43 || (sub_1A84E67AC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x646574726F706D69 && a2 == 0xEE0073746E756F43)
  {

    return 4;
  }

  else
  {
    v6 = sub_1A84E67AC();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t _s6IMCore12ImportExportO0B10StatisticsC1poiyA2E_AEtFZ_0(void *a1, uint64_t *a2)
{
  v4 = sub_1A83EA2FC(&qword_1EB2E6F48, &unk_1A8501F00);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v62 - v8;
  swift_beginAccess();
  v10 = a1[3];
  swift_beginAccess();
  v11 = a1[4];
  result = swift_beginAccess();
  v13 = a2[4];
  v14 = __CFADD__(v11, v13);
  v15 = v11 + v13;
  if (v14)
  {
    __break(1u);
    goto LABEL_14;
  }

  v73 = v7;
  v74 = v15;
  v75 = v10;
  swift_beginAccess();
  v16 = a1[5];
  v17 = a1[6];
  v19 = a1[7];
  v18 = a1[8];
  v20 = a1[9];
  result = swift_beginAccess();
  v21 = a2[5];
  v22 = v16 + v21;
  if (__OFADD__(v16, v21))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v23 = a2[6];
  v24 = v17 + v23;
  if (__OFADD__(v17, v23))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v25 = a2[7];
  v26 = __OFADD__(v19, v25);
  v27 = v19 + v25;
  if (v26)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v28 = a2[8];
  v29 = v18 + v28;
  if (__OFADD__(v18, v28))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v30 = a2[9];
  v26 = __OFADD__(v20, v30);
  v31 = v20 + v30;
  if (v26)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v69 = v31;
  v70 = v29;
  v71 = v24;
  v72 = v22;
  swift_beginAccess();
  v32 = a1[10];
  v33 = a1[11];
  v35 = a1[12];
  v34 = a1[13];
  v36 = a1[14];
  result = swift_beginAccess();
  v37 = a2[10];
  v38 = v32 + v37;
  if (__OFADD__(v32, v37))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v39 = a2[11];
  v40 = v33 + v39;
  if (__OFADD__(v33, v39))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v41 = a2[12];
  v42 = v35 + v41;
  if (__OFADD__(v35, v41))
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v43 = a2[13];
  v44 = v34 + v43;
  if (__OFADD__(v34, v43))
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v45 = a2[14];
  v26 = __OFADD__(v36, v45);
  v46 = v36 + v45;
  if (!v26)
  {
    v63 = v38;
    v64 = v40;
    v65 = v42;
    v66 = v44;
    v68 = v46;
    v47 = swift_allocObject();
    v48 = sub_1A84E56DC();
    v49 = *(*(v48 - 8) + 56);
    v67 = v27;
    v49(v9, 1, 1, v48);
    v50 = v73;
    v49(v73, 1, 1, v48);
    type metadata accessor for ImportExport.Timer(0);
    v51 = swift_allocObject();
    v52 = OBJC_IVAR____TtCO6IMCore12ImportExport5Timer_startTime;
    v49((v51 + OBJC_IVAR____TtCO6IMCore12ImportExport5Timer_startTime), 1, 1, v48);
    v53 = OBJC_IVAR____TtCO6IMCore12ImportExport5Timer_endTime;
    v49((v51 + OBJC_IVAR____TtCO6IMCore12ImportExport5Timer_endTime), 1, 1, v48);
    swift_beginAccess();
    v54 = v75;

    sub_1A843E9F0(v9, v51 + v52);
    swift_endAccess();
    swift_beginAccess();
    sub_1A843E9F0(v50, v51 + v53);
    swift_endAccess();
    *(v47 + 24) = v51;
    *(v47 + 48) = 0u;
    *(v47 + 64) = 0u;
    *(v47 + 96) = 0u;
    *(v47 + 112) = 0;
    *(v47 + 80) = 0u;
    *(v47 + 32) = 0u;
    swift_beginAccess();
    *(v47 + 24) = v54;

    swift_beginAccess();
    *(v47 + 32) = v74;
    swift_beginAccess();
    v55 = v64;
    *(v47 + 80) = v63;
    v56 = v65;
    v57 = v66;
    *(v47 + 88) = v55;
    *(v47 + 96) = v56;
    v58 = v68;
    *(v47 + 104) = v57;
    *(v47 + 112) = v58;
    swift_beginAccess();
    v59 = v71;
    *(v47 + 40) = v72;
    *(v47 + 48) = v59;
    v60 = v69;
    v61 = v70;
    *(v47 + 56) = v67;
    *(v47 + 64) = v61;
    *(v47 + 72) = v60;
    *(v47 + 16) = 0x3FF199999999999ALL;
    return v47;
  }

LABEL_23:
  __break(1u);
  return result;
}

uint64_t _s6IMCore12ImportExportO0B10StatisticsC1soiyA2E_AEtFZ_0(void *a1, uint64_t *a2)
{
  v4 = sub_1A83EA2FC(&qword_1EB2E6F48, &unk_1A8501F00);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v62 - v8;
  swift_beginAccess();
  v10 = a1[3];
  swift_beginAccess();
  v11 = a1[4];
  result = swift_beginAccess();
  v13 = a2[4];
  v14 = v11 >= v13;
  v15 = v11 - v13;
  if (!v14)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v73 = v7;
  v74 = v15;
  v75 = v10;
  swift_beginAccess();
  v16 = a1[5];
  v17 = a1[6];
  v19 = a1[7];
  v18 = a1[8];
  v20 = a1[9];
  result = swift_beginAccess();
  v21 = a2[5];
  v22 = v16 - v21;
  if (__OFSUB__(v16, v21))
  {
    goto LABEL_14;
  }

  v23 = a2[6];
  v24 = v17 - v23;
  if (__OFSUB__(v17, v23))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v25 = a2[7];
  v26 = __OFSUB__(v19, v25);
  v27 = v19 - v25;
  if (v26)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v28 = a2[8];
  v29 = v18 - v28;
  if (__OFSUB__(v18, v28))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v30 = a2[9];
  v26 = __OFSUB__(v20, v30);
  v31 = v20 - v30;
  if (v26)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v69 = v31;
  v70 = v29;
  v71 = v24;
  v72 = v22;
  swift_beginAccess();
  v32 = a1[10];
  v33 = a1[11];
  v35 = a1[12];
  v34 = a1[13];
  v36 = a1[14];
  result = swift_beginAccess();
  v37 = a2[10];
  v38 = v32 - v37;
  if (__OFSUB__(v32, v37))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v39 = a2[11];
  v40 = v33 - v39;
  if (__OFSUB__(v33, v39))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v41 = a2[12];
  v42 = v35 - v41;
  if (__OFSUB__(v35, v41))
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v43 = a2[13];
  v44 = v34 - v43;
  if (__OFSUB__(v34, v43))
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v45 = a2[14];
  v26 = __OFSUB__(v36, v45);
  v46 = v36 - v45;
  if (!v26)
  {
    v63 = v38;
    v64 = v40;
    v65 = v42;
    v66 = v44;
    v68 = v46;
    v47 = swift_allocObject();
    v48 = sub_1A84E56DC();
    v49 = *(*(v48 - 8) + 56);
    v67 = v27;
    v49(v9, 1, 1, v48);
    v50 = v73;
    v49(v73, 1, 1, v48);
    type metadata accessor for ImportExport.Timer(0);
    v51 = swift_allocObject();
    v52 = OBJC_IVAR____TtCO6IMCore12ImportExport5Timer_startTime;
    v49((v51 + OBJC_IVAR____TtCO6IMCore12ImportExport5Timer_startTime), 1, 1, v48);
    v53 = OBJC_IVAR____TtCO6IMCore12ImportExport5Timer_endTime;
    v49((v51 + OBJC_IVAR____TtCO6IMCore12ImportExport5Timer_endTime), 1, 1, v48);
    swift_beginAccess();
    v54 = v75;

    sub_1A843E9F0(v9, v51 + v52);
    swift_endAccess();
    swift_beginAccess();
    sub_1A843E9F0(v50, v51 + v53);
    swift_endAccess();
    *(v47 + 24) = v51;
    *(v47 + 48) = 0u;
    *(v47 + 64) = 0u;
    *(v47 + 96) = 0u;
    *(v47 + 112) = 0;
    *(v47 + 80) = 0u;
    *(v47 + 32) = 0u;
    swift_beginAccess();
    *(v47 + 24) = v54;

    swift_beginAccess();
    *(v47 + 32) = v74;
    swift_beginAccess();
    v55 = v64;
    *(v47 + 80) = v63;
    v56 = v65;
    v57 = v66;
    *(v47 + 88) = v55;
    *(v47 + 96) = v56;
    v58 = v68;
    *(v47 + 104) = v57;
    *(v47 + 112) = v58;
    swift_beginAccess();
    v59 = v71;
    *(v47 + 40) = v72;
    *(v47 + 48) = v59;
    v60 = v69;
    v61 = v70;
    *(v47 + 56) = v67;
    *(v47 + 64) = v61;
    *(v47 + 72) = v60;
    *(v47 + 16) = 0x3FF199999999999ALL;
    return v47;
  }

LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_1A84804FC(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = sub_1A84805EC(&qword_1EB2E82B0, a2, type metadata accessor for ImportExport.ImportStatistics, &protocol conformance descriptor for ImportExport.ImportStatistics);
  result = sub_1A84805EC(&qword_1EB2E82B8, v3, type metadata accessor for ImportExport.ImportStatistics, &protocol conformance descriptor for ImportExport.ImportStatistics);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1A84805EC(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

unint64_t sub_1A848069C()
{
  result = qword_1EB2E82C8;
  if (!qword_1EB2E82C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E82C8);
  }

  return result;
}

unint64_t sub_1A84806F4()
{
  result = qword_1EB2E82D0;
  if (!qword_1EB2E82D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E82D0);
  }

  return result;
}

unint64_t sub_1A848074C()
{
  result = qword_1EB2E82D8;
  if (!qword_1EB2E82D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E82D8);
  }

  return result;
}

uint64_t ImportExport.Importer.progress.getter@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  a1[3] = type metadata accessor for ImportExport.ImportStatistics();
  a1[4] = &protocol witness table for ImportExport.ImportStatistics;
  *a1 = v3;
}

uint64_t ImportExport.Importer.__allocating_init()()
{
  v0 = swift_allocObject();
  type metadata accessor for ImportExport.ImportStatistics();
  swift_allocObject();
  v1 = ImportExport.ImportStatistics.init()();
  v2 = MEMORY[0x1E69E7CD0];
  *(v0 + 16) = v1;
  *(v0 + 24) = v2;
  return v0;
}

uint64_t ImportExport.Importer.init()()
{
  type metadata accessor for ImportExport.ImportStatistics();
  swift_allocObject();
  v1 = ImportExport.ImportStatistics.init()();
  v2 = MEMORY[0x1E69E7CD0];
  *(v0 + 16) = v1;
  *(v0 + 24) = v2;
  return v0;
}

uint64_t ImportExport.Importer.begin(withExpectedCounts:)(uint64_t *a1)
{
  v2 = v1;
  v27 = sub_1A84E5C9C();
  v4 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  v7 = a1[1];
  v10 = a1[2];
  v9 = a1[3];
  v28 = a1[4];
  sub_1A84E5C8C();
  v11 = sub_1A84E5C7C();
  v12 = sub_1A84E617C();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v26 = v9;
    v14 = v13;
    v24 = swift_slowAlloc();
    v34 = v24;
    *v14 = 136315138;
    v29 = 0;
    v30 = 0xE000000000000000;
    sub_1A84E646C();

    strcpy(v35, "RecordCounts: ");
    HIBYTE(v35[1]) = -18;
    v29 = v8;
    v30 = v7;
    v31 = v10;
    v32 = v26;
    v33 = v28;
    v15 = ImportExport.RecordCounts.displayDescription.getter();
    v25 = v10;
    v16 = v7;
    v17 = v2;
    v18 = v8;
    MEMORY[0x1AC56A990](v15);

    v19 = sub_1A82446BC(v35[0], v35[1], &v34);

    *(v14 + 4) = v19;
    v8 = v18;
    v2 = v17;
    v7 = v16;
    v10 = v25;
    _os_log_impl(&dword_1A823F000, v11, v12, "Beginning importing with expected count: %s", v14, 0xCu);
    v20 = v24;
    sub_1A8244788(v24);
    MEMORY[0x1AC56D3F0](v20, -1, -1);
    v21 = v14;
    v9 = v26;
    MEMORY[0x1AC56D3F0](v21, -1, -1);
  }

  (*(v4 + 8))(v6, v27);
  swift_beginAccess();
  v22 = *(v2 + 16);
  result = swift_beginAccess();
  v22[5] = v8;
  v22[6] = v7;
  v22[7] = v10;
  v22[8] = v9;
  v22[9] = v28;
  return result;
}

uint64_t ImportExport.Importer.import(messageBatch:)(uint64_t a1, uint64_t a2)
{
  v3[30] = a2;
  v3[31] = v2;
  v3[29] = a1;
  v3[32] = type metadata accessor for ImportExport.MessageBatch(0);
  v3[33] = swift_task_alloc();
  v3[34] = swift_task_alloc();
  v3[35] = type metadata accessor for ImportExport.ImportedMessageBatch(0);
  v3[36] = swift_task_alloc();
  v3[37] = swift_task_alloc();
  v3[38] = swift_task_alloc();
  v4 = sub_1A84E5C9C();
  v3[39] = v4;
  v3[40] = *(v4 - 8);
  v3[41] = swift_task_alloc();
  v3[42] = swift_task_alloc();
  sub_1A83EA2FC(&qword_1EB2E6F48, &unk_1A8501F00);
  v3[43] = swift_task_alloc();
  v3[44] = swift_task_alloc();
  v3[45] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A8480D48, 0, 0);
}

uint64_t sub_1A8480D48()
{
  v66 = v0;
  v1 = v0[45];
  v2 = v0[31];
  swift_beginAccess();
  v3 = *(v2 + 16);
  swift_beginAccess();
  v4 = *(v3 + 24);
  v5 = OBJC_IVAR____TtCO6IMCore12ImportExport5Timer_startTime;
  swift_beginAccess();
  sub_1A843ED60(v4 + v5, v1);
  v6 = sub_1A84E56DC();
  v7 = *(*(v6 - 8) + 48);
  LODWORD(v5) = v7(v1, 1, v6);
  sub_1A824B2D4(v1, &qword_1EB2E6F48, &unk_1A8501F00);
  if (v5 == 1)
  {
    goto LABEL_2;
  }

  v8 = v0[44];
  v9 = *(v2 + 16);
  swift_beginAccess();
  v10 = *(v9 + 24);
  v11 = OBJC_IVAR____TtCO6IMCore12ImportExport5Timer_startTime;
  swift_beginAccess();
  sub_1A843ED60(v10 + v11, v8);
  v12 = v7(v8, 1, v6);
  v13 = v0[44];
  if (v12 == 1)
  {
    sub_1A824B2D4(v0[44], &qword_1EB2E6F48, &unk_1A8501F00);
  }

  else
  {
    v14 = v0[43];

    sub_1A824B2D4(v13, &qword_1EB2E6F48, &unk_1A8501F00);
    v15 = OBJC_IVAR____TtCO6IMCore12ImportExport5Timer_endTime;
    swift_beginAccess();
    sub_1A843ED60(v10 + v15, v14);

    v16 = v7(v14, 1, v6);
    sub_1A824B2D4(v14, &qword_1EB2E6F48, &unk_1A8501F00);
    if (v16 != 1)
    {
LABEL_2:
      swift_beginAccess();

      ImportExport.Timer.start()();
    }
  }

  sub_1A8441B3C(v0[30], v0[29]);
  v17 = *(v2 + 16);
  result = swift_beginAccess();
  v19 = *(v17 + 32);
  v20 = __CFADD__(v19, 1);
  v21 = v19 + 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    v22 = v0[37];
    v23 = v0[38];
    v25 = v0[35];
    v24 = v0[36];
    v26 = v0[29];
    *(v17 + 32) = v21;
    v27 = v26 + *(v25 + 20);
    v28 = *(v27 + 32);
    v57 = *(v27 + 16);
    v58 = *v27;
    swift_beginAccess();
    v60[0] = v58;
    v60[1] = v57;
    v61 = v28;
    v29 = *(v17 + 112);
    v30 = *(v17 + 96);
    v63 = *(v17 + 80);
    v64 = v30;
    v65 = v29;
    static ImportExport.RecordCounts.+ infix(_:_:)(&v63, v60, (v17 + 80));
    sub_1A84E5C8C();
    sub_1A8483510(v26, v23, type metadata accessor for ImportExport.ImportedMessageBatch);
    sub_1A8483510(v26, v22, type metadata accessor for ImportExport.ImportedMessageBatch);
    sub_1A8483510(v26, v24, type metadata accessor for ImportExport.ImportedMessageBatch);
    v31 = sub_1A84E5C7C();
    v32 = sub_1A84E617C();
    v33 = os_log_type_enabled(v31, v32);
    v34 = v0[42];
    v35 = v0[39];
    v36 = v0[40];
    v38 = v0[37];
    v37 = v0[38];
    v39 = v0[36];
    if (v33)
    {
      v56 = v32;
      v40 = v0[32];
      v59 = v0[39];
      v41 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v62 = v55;
      *v41 = 134218498;
      v42 = *(*(v37 + *(v40 + 20)) + 16);
      sub_1A8483578(v37, type metadata accessor for ImportExport.ImportedMessageBatch);
      *(v41 + 4) = v42;
      *(v41 + 12) = 2080;
      v43 = ImportExport.Conversation.description.getter();
      v45 = v44;
      sub_1A8483578(v38, type metadata accessor for ImportExport.ImportedMessageBatch);
      v46 = sub_1A82446BC(v43, v45, &v62);

      *(v41 + 14) = v46;
      *(v41 + 22) = 2080;
      v47 = v39 + *(v25 + 20);
      v48 = *(v47 + 32);
      *&v63 = 0;
      *(&v63 + 1) = 0xE000000000000000;
      v53 = *(v47 + 16);
      v54 = *v47;
      sub_1A84E646C();

      strcpy(v60, "RecordCounts: ");
      HIBYTE(v60[0]) = -18;
      v63 = v54;
      v64 = v53;
      v65 = v48;
      v49 = ImportExport.RecordCounts.displayDescription.getter();
      MEMORY[0x1AC56A990](v49);

      v50 = v60[0];
      sub_1A8483578(v39, type metadata accessor for ImportExport.ImportedMessageBatch);
      v51 = sub_1A82446BC(v50, *(&v50 + 1), &v62);

      *(v41 + 24) = v51;
      _os_log_impl(&dword_1A823F000, v31, v56, "Importing %ld messages into chat: %s: %s", v41, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1AC56D3F0](v55, -1, -1);
      MEMORY[0x1AC56D3F0](v41, -1, -1);

      (*(v36 + 8))(v34, v59);
    }

    else
    {
      sub_1A8483578(v0[38], type metadata accessor for ImportExport.ImportedMessageBatch);

      sub_1A8483578(v39, type metadata accessor for ImportExport.ImportedMessageBatch);
      sub_1A8483578(v38, type metadata accessor for ImportExport.ImportedMessageBatch);
      (*(v36 + 8))(v34, v35);
    }

    v52 = v0[1];

    return v52();
  }

  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ImportExport.Importer.finish()()
{
  v0 = sub_1A84E5C9C();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s6IMCore12ImportExportO8ImporterC32sendReloadNotificationToMessagesyyFZ_0();
  sub_1A84E5C8C();

  v4 = sub_1A84E5C7C();
  v5 = sub_1A84E617C();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v15 = v1;
    v7 = v6;
    v8 = swift_slowAlloc();
    v16 = v8;
    *v7 = 136315138;
    swift_beginAccess();

    v9 = ImportExport.ImportStatistics.description.getter();
    v14 = v0;
    v11 = v10;

    v12 = sub_1A82446BC(v9, v11, &v16);

    *(v7 + 4) = v12;
    _os_log_impl(&dword_1A823F000, v4, v5, "Finished import: %s", v7, 0xCu);
    sub_1A8244788(v8);
    MEMORY[0x1AC56D3F0](v8, -1, -1);
    MEMORY[0x1AC56D3F0](v7, -1, -1);

    (*(v15 + 8))(v3, v14);
  }

  else
  {

    (*(v1 + 8))(v3, v0);
  }
}

unint64_t sub_1A8481938()
{
  if (*v0)
  {
    return 0xD000000000000017;
  }

  else
  {
    return 0xD000000000000010;
  }
}

uint64_t sub_1A8481974@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000010 && 0x80000001A8533060 == a2 || (sub_1A84E67AC() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001A8533080 == a2)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1A84E67AC();

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
  return result;
}

uint64_t sub_1A8481A58(uint64_t a1)
{
  v2 = sub_1A848378C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A8481A94(uint64_t a1)
{
  v2 = sub_1A848378C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ImportExport.Importer.deinit()
{

  return v0;
}

uint64_t ImportExport.Importer.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t ImportExport.Importer.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_1A83EA2FC(&qword_1EB2E82E0, &qword_1A8507EB8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10[-v7];
  sub_1A82471E0(a1, a1[3]);
  sub_1A848378C();
  sub_1A84E68AC();
  swift_beginAccess();
  v12 = *(v3 + 16);
  LOBYTE(v11) = 0;
  type metadata accessor for ImportExport.ImportStatistics();
  sub_1A84837E0(&qword_1EB2E82B8, &protocol conformance descriptor for ImportExport.ImportStatistics);
  sub_1A84E672C();
  if (!v2)
  {
    swift_beginAccess();
    v11 = *(v3 + 24);
    v10[7] = 1;
    sub_1A83EA2FC(&qword_1EB2E82F0, &qword_1A8507EC0);
    sub_1A8483824(&qword_1EB2E82F8, MEMORY[0x1E69E6160], MEMORY[0x1E69E64F0]);
    sub_1A84E672C();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t ImportExport.Importer.__allocating_init(from:)(void *a1)
{
  v2 = swift_allocObject();
  ImportExport.Importer.init(from:)(a1);
  return v2;
}

void *ImportExport.Importer.init(from:)(void *a1)
{
  v2 = v1;
  v4 = sub_1A83EA2FC(&qword_1EB2E8300, &qword_1A8507EC8);
  v13 = *(v4 - 8);
  v14 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v12 - v5;
  type metadata accessor for ImportExport.ImportStatistics();
  swift_allocObject();
  *(v1 + 16) = ImportExport.ImportStatistics.init()();
  v7 = (v1 + 16);
  sub_1A82471E0(a1, a1[3]);
  sub_1A848378C();
  v8 = v15;
  sub_1A84E689C();
  if (v8)
  {

    swift_deallocPartialClassInstance();
  }

  else
  {
    v17 = 0;
    sub_1A84837E0(&qword_1EB2E82B0, &protocol conformance descriptor for ImportExport.ImportStatistics);
    v9 = v14;
    sub_1A84E666C();
    v10 = v18;
    swift_beginAccess();
    *v7 = v10;

    sub_1A83EA2FC(&qword_1EB2E82F0, &qword_1A8507EC0);
    v16 = 1;
    sub_1A8483824(&qword_1EB2E8308, MEMORY[0x1E69E6190], MEMORY[0x1E69E6510]);
    sub_1A84E666C();
    (*(v13 + 8))(v6, v9);
    *(v2 + 24) = v18;
  }

  sub_1A8244788(a1);
  return v2;
}

void *sub_1A8482064@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = swift_allocObject();
  result = ImportExport.Importer.init(from:)(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

unint64_t sub_1A84820E0()
{
  v1 = *v0;
  if (v1 == 4)
  {
    v2 = 0xD000000000000013;
  }

  else
  {
    v2 = 0xD000000000000012;
  }

  if (v1 == 3)
  {
    v3 = 0xD000000000000012;
  }

  else
  {
    v3 = v2;
  }

  if (v1 == 1)
  {
    v4 = 0xD000000000000013;
  }

  else
  {
    v4 = 0xD000000000000016;
  }

  if (!*v0)
  {
    v4 = 0xD000000000000010;
  }

  if (*v0 <= 2u)
  {
    return v4;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1A8482180@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1A84842F8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1A84821A8(uint64_t a1)
{
  v2 = sub_1A8483890();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A84821E4(uint64_t a1)
{
  v2 = sub_1A8483890();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A8482220(uint64_t a1)
{
  v2 = sub_1A8483938();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A848225C(uint64_t a1)
{
  v2 = sub_1A8483938();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A8482298(uint64_t a1)
{
  v2 = sub_1A84838E4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A84822D4(uint64_t a1)
{
  v2 = sub_1A84838E4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A848231C(uint64_t a1)
{
  v2 = sub_1A84839E0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A8482358(uint64_t a1)
{
  v2 = sub_1A84839E0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A8482394(uint64_t a1)
{
  v2 = sub_1A8483A88();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A84823D0(uint64_t a1)
{
  v2 = sub_1A8483A88();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A848240C(uint64_t a1)
{
  v2 = sub_1A848398C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A8482448(uint64_t a1)
{
  v2 = sub_1A848398C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A8482484(uint64_t a1)
{
  v2 = sub_1A8483A34();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A84824C0(uint64_t a1)
{
  v2 = sub_1A8483A34();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ImportExport.ImportError.encode(to:)(void *a1)
{
  v3 = sub_1A83EA2FC(&qword_1EB2E8310, &qword_1A8507ED0);
  v47 = *(v3 - 8);
  v48 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v46 = &v31 - v4;
  v5 = sub_1A83EA2FC(&qword_1EB2E8318, &qword_1A8507ED8);
  v44 = *(v5 - 8);
  v45 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v43 = &v31 - v6;
  v7 = sub_1A83EA2FC(&qword_1EB2E8320, &qword_1A8507EE0);
  v41 = *(v7 - 8);
  v42 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v40 = &v31 - v8;
  v9 = sub_1A83EA2FC(&qword_1EB2E8328, &qword_1A8507EE8);
  v38 = *(v9 - 8);
  v39 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v37 = &v31 - v10;
  v11 = sub_1A83EA2FC(&qword_1EB2E8330, &qword_1A8507EF0);
  v35 = *(v11 - 8);
  v36 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v34 = &v31 - v12;
  v13 = sub_1A83EA2FC(&qword_1EB2E8338, &qword_1A8507EF8);
  v32 = *(v13 - 8);
  v33 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v31 - v14;
  v16 = sub_1A83EA2FC(&qword_1EB2E8340, &qword_1A8507F00);
  v49 = *(v16 - 8);
  v50 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v31 - v17;
  v19 = *v1;
  v20 = *(v1 + 8);
  v21 = *(v1 + 16);
  sub_1A82471E0(a1, a1[3]);
  sub_1A8483890();
  sub_1A84E68AC();
  if (!v21)
  {
    v55 = 4;
    sub_1A8483938();
    v22 = v43;
    v23 = v50;
    sub_1A84E669C();
    v24 = v45;
    sub_1A84E66CC();
    v25 = v44;
    goto LABEL_5;
  }

  if (v21 == 1)
  {
    v56 = 5;
    sub_1A84838E4();
    v22 = v46;
    v23 = v50;
    sub_1A84E669C();
    v24 = v48;
    sub_1A84E66CC();
    v25 = v47;
LABEL_5:
    (*(v25 + 8))(v22, v24);
    return (*(v49 + 8))(v18, v23);
  }

  if (v19 > 1)
  {
    if (v19 ^ 2 | v20)
    {
      v54 = 3;
      sub_1A848398C();
      v28 = v40;
      v27 = v50;
      sub_1A84E669C();
      v30 = v41;
      v29 = v42;
    }

    else
    {
      v53 = 2;
      sub_1A84839E0();
      v28 = v37;
      v27 = v50;
      sub_1A84E669C();
      v30 = v38;
      v29 = v39;
    }

    goto LABEL_13;
  }

  if (v19 | v20)
  {
    v52 = 1;
    sub_1A8483A34();
    v28 = v34;
    v27 = v50;
    sub_1A84E669C();
    v30 = v35;
    v29 = v36;
LABEL_13:
    (*(v30 + 8))(v28, v29);
    return (*(v49 + 8))(v18, v27);
  }

  v51 = 0;
  sub_1A8483A88();
  v27 = v50;
  sub_1A84E669C();
  (*(v32 + 8))(v15, v33);
  return (*(v49 + 8))(v18, v27);
}

uint64_t ImportExport.ImportError.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v68 = a2;
  v60 = sub_1A83EA2FC(&qword_1EB2E8380, &qword_1A8507F08);
  v63 = *(v60 - 8);
  MEMORY[0x1EEE9AC00](v60);
  v67 = &v50 - v3;
  v4 = sub_1A83EA2FC(&qword_1EB2E8388, &qword_1A8507F10);
  v61 = *(v4 - 8);
  v62 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v64 = &v50 - v5;
  v59 = sub_1A83EA2FC(&qword_1EB2E8390, &qword_1A8507F18);
  v56 = *(v59 - 8);
  MEMORY[0x1EEE9AC00](v59);
  v66 = &v50 - v6;
  v7 = sub_1A83EA2FC(&qword_1EB2E8398, &qword_1A8507F20);
  v57 = *(v7 - 8);
  v58 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v65 = &v50 - v8;
  v9 = sub_1A83EA2FC(&qword_1EB2E83A0, &qword_1A8507F28);
  v54 = *(v9 - 8);
  v55 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v50 - v10;
  v12 = sub_1A83EA2FC(&qword_1EB2E83A8, &qword_1A8507F30);
  v53 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v50 - v13;
  v15 = sub_1A83EA2FC(&qword_1EB2E83B0, &unk_1A8507F38);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v50 - v17;
  v19 = a1[3];
  v70 = a1;
  sub_1A82471E0(a1, v19);
  sub_1A8483890();
  v20 = v69;
  sub_1A84E689C();
  if (!v20)
  {
    v21 = v14;
    v51 = v12;
    v22 = v11;
    v24 = v66;
    v23 = v67;
    v69 = v16;
    v25 = v68;
    v52 = v15;
    v26 = sub_1A84E668C();
    v27 = (2 * *(v26 + 16)) | 1;
    v71 = v26;
    v72 = v26 + 32;
    v73 = 0;
    v74 = v27;
    v28 = sub_1A8400988();
    if (v28 == 6 || v73 != v74 >> 1)
    {
      v33 = sub_1A84E64BC();
      swift_allocError();
      v35 = v34;
      sub_1A83EA2FC(&qword_1EB2E7110, &qword_1A8502A20);
      *v35 = &type metadata for ImportExport.ImportError;
      v36 = v52;
      sub_1A84E65CC();
      sub_1A84E64AC();
      (*(*(v33 - 8) + 104))(v35, *MEMORY[0x1E69E6AF8], v33);
      swift_willThrow();
      (*(v69 + 8))(v18, v36);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v28 > 2u)
      {
        v38 = v69;
        if (v28 == 3)
        {
          v75 = 3;
          sub_1A848398C();
          v43 = v52;
          sub_1A84E65BC();
          (*(v56 + 8))(v24, v59);
          (*(v38 + 8))(v18, v43);
          swift_unknownObjectRelease();
          v30 = 0;
          v31 = 2;
          v32 = 3;
        }

        else
        {
          v39 = v52;
          if (v28 == 4)
          {
            v75 = 4;
            sub_1A8483938();
            v40 = v64;
            sub_1A84E65BC();
            v41 = v62;
            v32 = sub_1A84E660C();
            v30 = v48;
            (*(v61 + 8))(v40, v41);
            (*(v38 + 8))(v18, v39);
            swift_unknownObjectRelease();
            v31 = 0;
          }

          else
          {
            v75 = 5;
            sub_1A84838E4();
            sub_1A84E65BC();
            v46 = v60;
            v32 = sub_1A84E660C();
            v47 = v23;
            v30 = v49;
            (*(v63 + 8))(v47, v46);
            (*(v38 + 8))(v18, v39);
            swift_unknownObjectRelease();
            v31 = 1;
          }
        }
      }

      else if (v28)
      {
        if (v28 == 1)
        {
          v75 = 1;
          sub_1A8483A34();
          v29 = v52;
          sub_1A84E65BC();
          (*(v54 + 8))(v22, v55);
          (*(v69 + 8))(v18, v29);
          swift_unknownObjectRelease();
          v30 = 0;
          v31 = 2;
          v32 = 1;
        }

        else
        {
          v75 = 2;
          sub_1A84839E0();
          v44 = v65;
          v45 = v52;
          sub_1A84E65BC();
          (*(v57 + 8))(v44, v58);
          (*(v69 + 8))(v18, v45);
          swift_unknownObjectRelease();
          v30 = 0;
          v32 = 2;
          v31 = 2;
        }
      }

      else
      {
        v75 = 0;
        sub_1A8483A88();
        v42 = v52;
        sub_1A84E65BC();
        (*(v53 + 8))(v21, v51);
        (*(v69 + 8))(v18, v42);
        swift_unknownObjectRelease();
        v32 = 0;
        v30 = 0;
        v31 = 2;
      }

      *v25 = v32;
      *(v25 + 8) = v30;
      *(v25 + 16) = v31;
    }
  }

  return sub_1A8244788(v70);
}

uint64_t sub_1A8483510(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A8483578(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t _s6IMCore12ImportExportO8ImporterC32sendReloadNotificationToMessagesyyFZ_0()
{
  v0 = sub_1A84E5C9C();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = CFNotificationCenterGetDarwinNotifyCenter();
  v5 = sub_1A84E5D8C();
  CFNotificationCenterPostNotification(v4, v5, 0, 0, 1u);

  sub_1A84E5C8C();
  v6 = sub_1A84E5C7C();
  v7 = sub_1A84E617C();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_1A823F000, v6, v7, "Sent reload notification to Messages processes...", v8, 2u);
    MEMORY[0x1AC56D3F0](v8, -1, -1);
  }

  return (*(v1 + 8))(v3, v0);
}

unint64_t sub_1A848378C()
{
  result = qword_1EB2E82E8;
  if (!qword_1EB2E82E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E82E8);
  }

  return result;
}

uint64_t sub_1A84837E0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ImportExport.ImportStatistics();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A8483824(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1A83EC9D4(&qword_1EB2E82F0, &qword_1A8507EC0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A8483890()
{
  result = qword_1EB2E8348;
  if (!qword_1EB2E8348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E8348);
  }

  return result;
}

unint64_t sub_1A84838E4()
{
  result = qword_1EB2E8350;
  if (!qword_1EB2E8350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E8350);
  }

  return result;
}

unint64_t sub_1A8483938()
{
  result = qword_1EB2E8358;
  if (!qword_1EB2E8358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E8358);
  }

  return result;
}

unint64_t sub_1A848398C()
{
  result = qword_1EB2E8360;
  if (!qword_1EB2E8360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E8360);
  }

  return result;
}

unint64_t sub_1A84839E0()
{
  result = qword_1EB2E8368;
  if (!qword_1EB2E8368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E8368);
  }

  return result;
}

unint64_t sub_1A8483A34()
{
  result = qword_1EB2E8370;
  if (!qword_1EB2E8370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E8370);
  }

  return result;
}

unint64_t sub_1A8483A88()
{
  result = qword_1EB2E8378;
  if (!qword_1EB2E8378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E8378);
  }

  return result;
}

uint64_t sub_1A8483B54(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t sub_1A8483B70(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

unint64_t sub_1A8483C1C()
{
  result = qword_1EB2E83B8;
  if (!qword_1EB2E83B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E83B8);
  }

  return result;
}

unint64_t sub_1A8483C74()
{
  result = qword_1EB2E83C0;
  if (!qword_1EB2E83C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E83C0);
  }

  return result;
}

unint64_t sub_1A8483CCC()
{
  result = qword_1EB2E83C8;
  if (!qword_1EB2E83C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E83C8);
  }

  return result;
}

unint64_t sub_1A8483D24()
{
  result = qword_1EB2E83D0;
  if (!qword_1EB2E83D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E83D0);
  }

  return result;
}

unint64_t sub_1A8483D7C()
{
  result = qword_1EB2E83D8;
  if (!qword_1EB2E83D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E83D8);
  }

  return result;
}

unint64_t sub_1A8483DD4()
{
  result = qword_1EB2E83E0;
  if (!qword_1EB2E83E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E83E0);
  }

  return result;
}

unint64_t sub_1A8483E2C()
{
  result = qword_1EB2E83E8;
  if (!qword_1EB2E83E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E83E8);
  }

  return result;
}

unint64_t sub_1A8483E84()
{
  result = qword_1EB2E83F0;
  if (!qword_1EB2E83F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E83F0);
  }

  return result;
}

unint64_t sub_1A8483EDC()
{
  result = qword_1EB2E83F8;
  if (!qword_1EB2E83F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E83F8);
  }

  return result;
}

unint64_t sub_1A8483F34()
{
  result = qword_1EB2E8400;
  if (!qword_1EB2E8400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E8400);
  }

  return result;
}

unint64_t sub_1A8483F8C()
{
  result = qword_1EB2E8408;
  if (!qword_1EB2E8408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E8408);
  }

  return result;
}

unint64_t sub_1A8483FE4()
{
  result = qword_1EB2E8410;
  if (!qword_1EB2E8410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E8410);
  }

  return result;
}

unint64_t sub_1A848403C()
{
  result = qword_1EB2E8418;
  if (!qword_1EB2E8418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E8418);
  }

  return result;
}

unint64_t sub_1A8484094()
{
  result = qword_1EB2E8420;
  if (!qword_1EB2E8420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E8420);
  }

  return result;
}

unint64_t sub_1A84840EC()
{
  result = qword_1EB2E8428;
  if (!qword_1EB2E8428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E8428);
  }

  return result;
}

unint64_t sub_1A8484144()
{
  result = qword_1EB2E8430;
  if (!qword_1EB2E8430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E8430);
  }

  return result;
}

unint64_t sub_1A848419C()
{
  result = qword_1EB2E8438;
  if (!qword_1EB2E8438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E8438);
  }

  return result;
}

unint64_t sub_1A84841F4()
{
  result = qword_1EB2E8440;
  if (!qword_1EB2E8440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E8440);
  }

  return result;
}

unint64_t sub_1A848424C()
{
  result = qword_1EB2E8448;
  if (!qword_1EB2E8448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E8448);
  }

  return result;
}

unint64_t sub_1A84842A4()
{
  result = qword_1EB2E8450;
  if (!qword_1EB2E8450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E8450);
  }

  return result;
}

uint64_t sub_1A84842F8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000010 && 0x80000001A85330A0 == a2;
  if (v4 || (sub_1A84E67AC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001A85330C0 == a2 || (sub_1A84E67AC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001A85330E0 == a2 || (sub_1A84E67AC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001A8531170 == a2 || (sub_1A84E67AC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001A8533100 == a2 || (sub_1A84E67AC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001A8530940 == a2)
  {

    return 5;
  }

  else
  {
    v6 = sub_1A84E67AC();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t ImportExport.ArchiveImporter.archiveManifest.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtCO6IMCore12ImportExport15ArchiveImporter_archiveManifest;
  swift_beginAccess();
  return sub_1A845AFD8(v1 + v3, a1);
}

uint64_t ImportExport.ArchiveImporter.progress.getter@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtCO6IMCore12ImportExport15ArchiveImporter_importer);
  swift_beginAccess();
  v4 = *(v3 + 16);
  a1[3] = type metadata accessor for ImportExport.ImportStatistics();
  a1[4] = &protocol witness table for ImportExport.ImportStatistics;
  *a1 = v4;
}

uint64_t ImportExport.ArchiveImporter.__allocating_init(withArchiveManifest:)(uint64_t a1)
{
  v2 = swift_allocObject();
  ImportExport.ArchiveImporter.init(withArchiveManifest:)(a1);
  return v2;
}

uint64_t ImportExport.ArchiveImporter.init(withArchiveManifest:)(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtCO6IMCore12ImportExport15ArchiveImporter_archiveImporterStatistics;
  type metadata accessor for ImportExport.ArchiveImporterStatistics();
  v5 = swift_allocObject();
  type metadata accessor for ImportExport.ImportStatistics();
  swift_allocObject();
  v6 = ImportExport.ImportStatistics.init()();
  v7 = MEMORY[0x1E69E7CC0];
  *(v5 + 16) = v6;
  *(v5 + 24) = v7;
  *(v1 + v4) = v5;
  sub_1A845AFD8(a1, v1 + OBJC_IVAR____TtCO6IMCore12ImportExport15ArchiveImporter_archiveManifest);
  type metadata accessor for ImportExport.Importer();
  v8 = swift_allocObject();
  swift_allocObject();
  v9 = ImportExport.ImportStatistics.init()();
  sub_1A845B03C(a1);
  v10 = MEMORY[0x1E69E7CD0];
  *(v8 + 16) = v9;
  *(v8 + 24) = v10;
  *(v2 + OBJC_IVAR____TtCO6IMCore12ImportExport15ArchiveImporter_importer) = v8;
  return v2;
}

void *ImportExport.ArchiveImporter.makeAsyncIterator()()
{
  type metadata accessor for ImportExport.ArchiveImportIterator();
  v1 = swift_allocObject();
  v1[5] = 0;
  v1[6] = 0;
  v1[4] = 0;
  v2 = MEMORY[0x1E69E7CC0];
  v1[2] = v0;
  v1[3] = v2;

  return v1;
}

uint64_t static ImportExport.ArchiveImporter.readArchiveManifest(fromFileURL:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1A8484828, 0, 0);
}

uint64_t sub_1A8484828()
{
  static ImportExport.ArchiveManifest.read(fromFileURL:)(*(v0 + 24), *(v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

unint64_t sub_1A84848A4()
{
  v1 = 0x726574726F706D69;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000019;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x4D65766968637261;
  }
}

uint64_t sub_1A8484910@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1A8485630(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1A8484938(uint64_t a1)
{
  v2 = sub_1A84852D8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A8484974(uint64_t a1)
{
  v2 = sub_1A84852D8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ImportExport.ArchiveImporter.deinit()
{
  sub_1A845B03C(v0 + OBJC_IVAR____TtCO6IMCore12ImportExport15ArchiveImporter_archiveManifest);

  return v0;
}

uint64_t ImportExport.ArchiveImporter.__deallocating_deinit()
{
  sub_1A845B03C(v0 + OBJC_IVAR____TtCO6IMCore12ImportExport15ArchiveImporter_archiveManifest);

  return swift_deallocClassInstance();
}

uint64_t ImportExport.ArchiveImporter.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for ImportExport.ArchiveManifest(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1A83EA2FC(&qword_1EB2E8458, &qword_1A8508888);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v15 - v9;
  sub_1A82471E0(a1, a1[3]);
  sub_1A84852D8();
  sub_1A84E68AC();
  v11 = OBJC_IVAR____TtCO6IMCore12ImportExport15ArchiveImporter_archiveManifest;
  swift_beginAccess();
  sub_1A845AFD8(v2 + v11, v6);
  LOBYTE(v17) = 0;
  sub_1A8485374(&qword_1EB2E7DC0, type metadata accessor for ImportExport.ArchiveManifest, &protocol conformance descriptor for ImportExport.ArchiveManifest);
  v12 = v15;
  sub_1A84E672C();
  sub_1A845B03C(v6);
  if (!v12)
  {
    v17 = *(v2 + OBJC_IVAR____TtCO6IMCore12ImportExport15ArchiveImporter_importer);
    LOBYTE(v18) = 1;
    type metadata accessor for ImportExport.Importer();
    sub_1A8485374(&qword_1EB2E8468, type metadata accessor for ImportExport.Importer, &protocol conformance descriptor for ImportExport.Importer);
    sub_1A84E672C();
    v13 = OBJC_IVAR____TtCO6IMCore12ImportExport15ArchiveImporter_archiveImporterStatistics;
    swift_beginAccess();
    v18 = *(v2 + v13);
    v16 = 2;
    type metadata accessor for ImportExport.ArchiveImporterStatistics();
    sub_1A8485374(&qword_1EB2E8470, type metadata accessor for ImportExport.ArchiveImporterStatistics, &protocol conformance descriptor for ImportExport.ArchiveImporterStatistics);
    sub_1A84E672C();
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t ImportExport.ArchiveImporter.__allocating_init(from:)(void *a1)
{
  v2 = swift_allocObject();
  ImportExport.ArchiveImporter.init(from:)(a1);
  return v2;
}

uint64_t *ImportExport.ArchiveImporter.init(from:)(void *a1)
{
  v3 = v1;
  v25 = *v1;
  v26 = v2;
  v5 = type metadata accessor for ImportExport.ArchiveManifest(0);
  MEMORY[0x1EEE9AC00](v5);
  v23 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_1A83EA2FC(&qword_1EB2E8478, &qword_1A8508890);
  v22 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v8 = &v21 - v7;
  v9 = OBJC_IVAR____TtCO6IMCore12ImportExport15ArchiveImporter_archiveImporterStatistics;
  type metadata accessor for ImportExport.ArchiveImporterStatistics();
  v10 = swift_allocObject();
  type metadata accessor for ImportExport.ImportStatistics();
  swift_allocObject();
  v11 = ImportExport.ImportStatistics.init()();
  v12 = MEMORY[0x1E69E7CC0];
  *(v10 + 16) = v11;
  *(v10 + 24) = v12;
  *(v1 + v9) = v10;
  v13 = a1[3];
  v27 = a1;
  sub_1A82471E0(a1, v13);
  sub_1A84852D8();
  v14 = v26;
  sub_1A84E689C();
  if (v14)
  {

    swift_deallocPartialClassInstance();
  }

  else
  {
    v26 = v9;
    v15 = v22;
    LOBYTE(v28) = 0;
    sub_1A8485374(&qword_1EB2E7DC8, type metadata accessor for ImportExport.ArchiveManifest, &protocol conformance descriptor for ImportExport.ArchiveManifest);
    v16 = v23;
    v17 = v24;
    sub_1A84E666C();
    sub_1A845B0B8(v16, v1 + OBJC_IVAR____TtCO6IMCore12ImportExport15ArchiveImporter_archiveManifest);
    type metadata accessor for ImportExport.Importer();
    LOBYTE(v29) = 1;
    sub_1A8485374(&qword_1EB2E8480, type metadata accessor for ImportExport.Importer, &protocol conformance descriptor for ImportExport.Importer);
    sub_1A84E666C();
    *(v1 + OBJC_IVAR____TtCO6IMCore12ImportExport15ArchiveImporter_importer) = v28;
    LOBYTE(v28) = 2;
    sub_1A8485374(&qword_1EB2E8488, type metadata accessor for ImportExport.ArchiveImporterStatistics, &protocol conformance descriptor for ImportExport.ArchiveImporterStatistics);
    sub_1A84E666C();
    (*(v15 + 8))(v8, v17);
    v19 = v29;
    v20 = v26;
    swift_beginAccess();
    *(v3 + v20) = v19;
  }

  sub_1A8244788(v27);
  return v3;
}

void *sub_1A848520C@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  type metadata accessor for ImportExport.ArchiveImportIterator();
  result = swift_allocObject();
  result[5] = 0;
  result[6] = 0;
  result[4] = 0;
  v5 = MEMORY[0x1E69E7CC0];
  result[2] = v3;
  result[3] = v5;
  *a1 = result;
  return result;
}

uint64_t *sub_1A848525C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = swift_allocObject();
  result = ImportExport.ArchiveImporter.init(from:)(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

unint64_t sub_1A84852D8()
{
  result = qword_1EB2E8460;
  if (!qword_1EB2E8460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E8460);
  }

  return result;
}

uint64_t sub_1A8485374(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for ImportExport.ArchiveImporter(uint64_t a1)
{
  result = qword_1EB2E8498;
  if (!qword_1EB2E8498)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A8485410(uint64_t a1)
{
  result = type metadata accessor for ImportExport.ArchiveManifest(319);
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

unint64_t sub_1A848552C()
{
  result = qword_1EB2E84A8;
  if (!qword_1EB2E84A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E84A8);
  }

  return result;
}

unint64_t sub_1A8485584()
{
  result = qword_1EB2E84B0;
  if (!qword_1EB2E84B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E84B0);
  }

  return result;
}

unint64_t sub_1A84855DC()
{
  result = qword_1EB2E84B8;
  if (!qword_1EB2E84B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E84B8);
  }

  return result;
}

uint64_t sub_1A8485630(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4D65766968637261 && a2 == 0xEF74736566696E61;
  if (v4 || (sub_1A84E67AC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x726574726F706D69 && a2 == 0xE800000000000000 || (sub_1A84E67AC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000019 && 0x80000001A85331A0 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_1A84E67AC();

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

uint64_t sub_1A8485758()
{
  v1 = *(v0 + 16);
  sub_1A84E684C();
  sub_1A84E5E5C();
  MEMORY[0x1AC56B350](v1);
  return sub_1A84E687C();
}

uint64_t sub_1A84857BC(uint64_t a1)
{
  v2 = *(v1 + 16);
  sub_1A84E5E5C();
  return MEMORY[0x1AC56B350](v2);
}

uint64_t sub_1A84857F4(uint64_t a1)
{
  v2 = *(v1 + 16);
  sub_1A84E684C();
  sub_1A84E5E5C();
  MEMORY[0x1AC56B350](v2);
  return sub_1A84E687C();
}

BOOL sub_1A8485854(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return v2 == v3;
  }

  v5 = sub_1A84E67AC();
  result = 0;
  if (v5)
  {
    return v2 == v3;
  }

  return result;
}

char *sub_1A84858B0(uint64_t a1, uint64_t a2)
{
  v5 = &v2[OBJC_IVAR___IMPersistentTaskMonitor_changeHandler];
  *v5 = 0;
  v5[1] = 0;
  *&v2[OBJC_IVAR___IMPersistentTaskMonitor_notificationObserver] = 0;
  v6 = [objc_allocWithZone(MEMORY[0x1E696AFB0]) init];
  *&v2[OBJC_IVAR___IMPersistentTaskMonitor_id] = v6;
  v7 = sub_1A83EC580(MEMORY[0x1E69E7CC0]);
  sub_1A83EA2FC(&qword_1EB2E8560, &qword_1A8508B00);
  v8 = swift_allocObject();
  *(v8 + 24) = 0;
  *(v8 + 16) = v7;
  *&v2[OBJC_IVAR___IMPersistentTaskMonitor_state] = v8;
  sub_1A83EA2FC(&qword_1EB2E8568, qword_1A8508B08);
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  *(v9 + 24) = 0;
  *(v9 + 32) = 0;
  *&v2[OBJC_IVAR___IMPersistentTaskMonitor_derivedState] = v9;
  v10 = *v5;
  v11 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  sub_1A8242AE8(a1, a2);
  sub_1A8245638(v10, v11);
  v26.receiver = v2;
  v26.super_class = IMPersistentTaskMonitor;
  v12 = objc_msgSendSuper2(&v26, sel_init);
  v13 = objc_opt_self();
  v14 = v12;
  v15 = [v13 sharedController];
  v16 = [v15 remoteDaemon];

  v17 = [*&v14[OBJC_IVAR___IMPersistentTaskMonitor_id] UUIDString];
  if (!v17)
  {
    sub_1A84E5DBC();
    v17 = sub_1A84E5D8C();
  }

  [v16 addPersistentTaskExecutorMonitor:v14 withID:v17];
  swift_unknownObjectRelease();

  v18 = [objc_opt_self() defaultCenter];
  v19 = [objc_opt_self() mainQueue];
  v20 = swift_allocObject();
  *(v20 + 16) = v14;
  v25[4] = sub_1A8487010;
  v25[5] = v20;
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 1107296256;
  v25[2] = sub_1A8485CD8;
  v25[3] = &unk_1F1B752B8;
  v21 = _Block_copy(v25);
  v22 = v14;

  v23 = [v18 addObserverForName:@"__kIMDaemonDidConnectNotification" object:0 queue:v19 usingBlock:v21];
  sub_1A8245638(a1, a2);
  _Block_release(v21);

  *&v22[OBJC_IVAR___IMPersistentTaskMonitor_notificationObserver] = v23;
  swift_unknownObjectRelease();
  return v22;
}

void sub_1A8485BF0(uint64_t a1, uint64_t a2)
{
  v3 = [objc_opt_self() sharedController];
  v4 = [v3 remoteDaemon];

  v5 = [*(a2 + OBJC_IVAR___IMPersistentTaskMonitor_id) UUIDString];
  if (!v5)
  {
    sub_1A84E5DBC();
    v6 = sub_1A84E5D8C();

    v5 = v6;
  }

  v7 = v5;
  [v4 addPersistentTaskExecutorMonitor:a2 withID:?];
  swift_unknownObjectRelease();
}

uint64_t sub_1A8485CD8(uint64_t a1, uint64_t a2)
{
  v3 = sub_1A84E535C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 32);
  sub_1A84E533C();

  v7(v6);

  return (*(v4 + 8))(v6, v3);
}

void sub_1A8485E38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1A8244B68(0, &unk_1EB2E45D8, 0x1E69A81C8);
  v4 = sub_1A84E5FEC();
  v5 = sub_1A84E5FEC();
  (*(a3 + 16))(a3, v4, v5);
}

void sub_1A8485EEC()
{
  v1 = *(v0 + OBJC_IVAR___IMPersistentTaskMonitor_state);
  swift_getKeyPath();

  os_unfair_lock_lock((v1 + 24));
  v2 = 0;
  sub_1A8486E9C((v1 + 16), &v28);
  os_unfair_lock_unlock((v1 + 24));

  v3 = 0;
  v4 = 0;
  v5 = v28 + 64;
  v26 = 0;
  v27 = v28;
  v6 = 1 << *(v28 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(v28 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = v4;
LABEL_9:
    v11 = *(*(v27 + 56) + ((v10 << 9) | (8 * __clz(__rbit64(v8)))));
    v12 = [v11 taskReports];
    if (v12)
    {
      v13 = v12;
      sub_1A8244B68(0, &qword_1EB2E4618, 0x1E69A81D0);
      v14 = sub_1A84E5FFC();

      if (v14 >> 62)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v14 = MEMORY[0x1E69E7CC0];
      if (MEMORY[0x1E69E7CC0] >> 62)
      {
LABEL_15:
        v15 = sub_1A84E654C();
        goto LABEL_12;
      }
    }

    v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_12:
    v8 &= v8 - 1;
    if (v15)
    {
      v24 = v2;
      v25 = v3;
      if (v15 < 1)
      {
        goto LABEL_41;
      }

      for (i = 0; i != v15; ++i)
      {
        if ((v14 & 0xC000000000000001) != 0)
        {
          v17 = MEMORY[0x1AC56AF80](i, v14);
        }

        else
        {
          v17 = *(v14 + 8 * i + 32);
        }

        v18 = v17;
        v19 = [v17 flag];
        if (v19 == 1)
        {
          v23 = [v18 count];

          v21 = __OFADD__(v26, v23);
          v26 += v23;
          if (v21)
          {
            goto LABEL_39;
          }
        }

        else if (v19 == 2)
        {
          v22 = [v18 count];

          v21 = __OFADD__(v26, v22);
          v26 += v22;
          if (v21)
          {
            goto LABEL_40;
          }
        }

        else if (v19 == 3)
        {
          v20 = [v18 count];

          v21 = __OFADD__(v25, v20);
          v25 += v20;
          if (v21)
          {
            goto LABEL_38;
          }
        }

        else
        {
        }
      }

      v4 = v10;
      v2 = v24;
      v3 = v25;
    }

    else
    {

      v4 = v10;
    }
  }

  while (1)
  {
    v10 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      break;
    }

    if (v10 >= v9)
    {

      return;
    }

    v8 = *(v5 + 8 * v10);
    ++v4;
    if (v8)
    {
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
}

uint64_t sub_1A84861F8(uint64_t a1, uint64_t a2)
{

  swift_getAtKeyPath();

  return v3;
}

uint64_t sub_1A8486248()
{
  v1 = (v0 + OBJC_IVAR___IMPersistentTaskMonitor_changeHandler);
  v2 = *(v0 + OBJC_IVAR___IMPersistentTaskMonitor_changeHandler);
  v3 = *(v0 + OBJC_IVAR___IMPersistentTaskMonitor_changeHandler + 8);
  *v1 = 0;
  v1[1] = 0;
  sub_1A8245638(v2, v3);
  v4 = [objc_opt_self() sharedController];
  v5 = [v4 remoteDaemon];

  v6 = [*(v0 + OBJC_IVAR___IMPersistentTaskMonitor_id) UUIDString];
  if (!v6)
  {
    sub_1A84E5DBC();
    v6 = sub_1A84E5D8C();
  }

  [v5 removePersistentTaskExecutorMonitorWithID_];
  swift_unknownObjectRelease();

  v7 = OBJC_IVAR___IMPersistentTaskMonitor_notificationObserver;
  v8 = *(v0 + OBJC_IVAR___IMPersistentTaskMonitor_notificationObserver);
  if (v8)
  {
    v9 = objc_opt_self();
    swift_unknownObjectRetain();
    v10 = [v9 defaultCenter];
    [v10 removeObserver_];
    swift_unknownObjectRelease();
  }

  *(v0 + v7) = 0;

  return swift_unknownObjectRelease();
}

uint64_t sub_1A84863EC(unint64_t a1)
{
  v2 = v1;
  v4 = MEMORY[0x1E69E7CC0];
  v15 = MEMORY[0x1E69E7CC0];
  v5 = *(v2 + OBJC_IVAR___IMPersistentTaskMonitor_state);
  os_unfair_lock_lock((v5 + 24));
  v6 = *(v5 + 16);
  v7 = sub_1A83EC580(v4);

  v8 = sub_1A8486EE0(v7, a1, v6, &v15);
  swift_bridgeObjectRelease_n();
  *(v5 + 16) = v8;
  os_unfair_lock_unlock((v5 + 24));
  v9 = *(v2 + OBJC_IVAR___IMPersistentTaskMonitor_derivedState);
  os_unfair_lock_lock((v9 + 32));
  sub_1A8487130((v9 + 16));
  os_unfair_lock_unlock((v9 + 32));
  v10 = v2 + OBJC_IVAR___IMPersistentTaskMonitor_changeHandler;
  v11 = *(v2 + OBJC_IVAR___IMPersistentTaskMonitor_changeHandler);
  v12 = v15;
  if (v11)
  {
    v13 = *(v10 + 8);

    v11(a1, v12);
    sub_1A8245638(v11, v13);
  }
}

void sub_1A8486508(uint64_t *a1, id *a2, uint64_t a3, void *a4)
{
  v7 = *a2;
  v8 = [*a2 groupName];
  v9 = sub_1A84E5DBC();
  v11 = v10;

  v12 = [v7 lane];

  v13 = v7;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v22 = *a1;
  sub_1A848DEF8(v13, v9, v11, v12, isUniquelyReferenced_nonNull_native);

  *a1 = v22;
  if (*(a3 + 16))
  {
    v15 = sub_1A8489F0C(v9, v11, v12);
    v17 = v16;

    if (v17)
    {
      v18 = *(*(a3 + 56) + 8 * v15);
      sub_1A8244B68(0, &unk_1EB2E45D8, 0x1E69A81C8);
      v19 = v18;
      if ((sub_1A84E631C() & 1) == 0)
      {
        v20 = v13;
        MEMORY[0x1AC56AAD0]();
        if (*((*a4 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1A84E601C();
        }

        sub_1A84E603C();
      }

      return;
    }
  }

  else
  {
  }

  v21 = v13;
  MEMORY[0x1AC56AAD0]();
  if (*((*a4 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1A84E601C();
  }

  sub_1A84E603C();
}

uint64_t sub_1A8486728(unint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR___IMPersistentTaskMonitor_state);
  os_unfair_lock_lock((v3 + 24));
  v4 = a1;
  if (a1 >> 62)
  {
    goto LABEL_31;
  }

  v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v41 = v4;
  v39 = v1;
  if (v5)
  {
    if (v5 >= 1)
    {
      v6 = 0;
      v40 = v4 & 0xC000000000000001;
      while (1)
      {
        if (v40)
        {
          v9 = MEMORY[0x1AC56AF80](v6);
        }

        else
        {
          v9 = *(v4 + 8 * v6 + 32);
        }

        v10 = v9;
        v11 = [v10 groupName];
        v12 = sub_1A84E5DBC();
        v14 = v13;

        v15 = [v10 lane];
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v42 = *(v3 + 16);
        v1 = v42;
        *(v3 + 16) = 0x8000000000000000;
        v17 = sub_1A8489F0C(v12, v14, v15);
        v18 = v1[2];
        v19 = (v4 & 1) == 0;
        v20 = __OFADD__(v18, v19);
        v21 = v18 + v19;
        if (v20)
        {
          __break(1u);
LABEL_30:
          __break(1u);
LABEL_31:
          v37 = v4;
          v38 = sub_1A84E654C();
          v4 = v37;
          v5 = v38;
          goto LABEL_3;
        }

        v22 = v4;
        if (v1[3] < v21)
        {
          break;
        }

        if (isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_16;
        }

        v26 = v17;
        sub_1A848F450();
        v17 = v26;
        v1 = v42;
        if (v22)
        {
LABEL_6:
          v7 = v1[7];
          v8 = *(v7 + 8 * v17);
          *(v7 + 8 * v17) = v10;

          goto LABEL_7;
        }

LABEL_17:
        v1[(v17 >> 6) + 8] |= 1 << v17;
        v23 = (v1[6] + 24 * v17);
        *v23 = v12;
        v23[1] = v14;
        v23[2] = v15;
        *(v1[7] + 8 * v17) = v10;
        v24 = v1[2];
        v20 = __OFADD__(v24, 1);
        v25 = v24 + 1;
        if (v20)
        {
          goto LABEL_30;
        }

        v1[2] = v25;
LABEL_7:
        ++v6;
        *(v3 + 16) = v1;
        v4 = v41;
        if (v5 == v6)
        {
          goto LABEL_22;
        }
      }

      sub_1A848C23C(v21, isUniquelyReferenced_nonNull_native);
      v17 = sub_1A8489F0C(v12, v14, v15);
      if ((v22 & 1) != (v4 & 1))
      {
        goto LABEL_34;
      }

LABEL_16:
      v1 = v42;
      if (v22)
      {
        goto LABEL_6;
      }

      goto LABEL_17;
    }

    __break(1u);
    goto LABEL_33;
  }

  v1 = *(v3 + 16);
LABEL_22:
  v27 = v1[2];
  if (!v27)
  {
    v31 = v4;
    v28 = MEMORY[0x1E69E7CC0];
    goto LABEL_26;
  }

  v28 = sub_1A84D83B0(v1[2], 0);
  v29 = sub_1A84D8590(&v42, v28 + 4, v27, v1);
  v30 = v42;

  sub_1A8267334(v30);
  if (v29 == v27)
  {
    v31 = v41;
LABEL_26:
    os_unfair_lock_unlock((v3 + 24));
    v32 = *(v39 + OBJC_IVAR___IMPersistentTaskMonitor_derivedState);
    MEMORY[0x1EEE9AC00](v33);
    os_unfair_lock_lock((v32 + 32));
    sub_1A8486E04((v32 + 16));
    os_unfair_lock_unlock((v32 + 32));
    v34 = *(v39 + OBJC_IVAR___IMPersistentTaskMonitor_changeHandler);
    if (v34)
    {
      v35 = *(v39 + OBJC_IVAR___IMPersistentTaskMonitor_changeHandler + 8);

      v34(v28, v31);
      sub_1A8245638(v34, v35);
    }
  }

LABEL_33:
  __break(1u);
LABEL_34:
  result = sub_1A84E67EC();
  __break(1u);
  return result;
}

uint64_t sub_1A8486AC4(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  sub_1A8244B68(0, &unk_1EB2E45D8, 0x1E69A81C8);
  v6 = sub_1A84E5FFC();
  v7 = a1;
  a4(v6);
}

uint64_t sub_1A8486B7C()
{
  v1 = *(v0 + OBJC_IVAR___IMPersistentTaskMonitor_derivedState);
  swift_getKeyPath();

  os_unfair_lock_lock((v1 + 32));
  sub_1A8487118((v1 + 16), &v3);
  os_unfair_lock_unlock((v1 + 32));

  return v3;
}

uint64_t sub_1A8486C44()
{
  v1 = *(v0 + OBJC_IVAR___IMPersistentTaskMonitor_derivedState);
  swift_getKeyPath();

  os_unfair_lock_lock((v1 + 32));
  sub_1A8486D6C((v1 + 16), &v3);
  os_unfair_lock_unlock((v1 + 32));

  return v3;
}

uint64_t sub_1A8486DBC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(v2 + 16))(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1A8486E04(void *a1)
{
  sub_1A8485EEC();
  *a1 = v2;
  a1[1] = v3;
}

unint64_t sub_1A8486E40()
{
  result = qword_1EB2E4610;
  if (!qword_1EB2E4610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E4610);
  }

  return result;
}

uint64_t sub_1A8486E9C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(v2 + 16))(*a1);
  *a2 = result;
  return result;
}

id sub_1A8486EE0(id result, unint64_t a2, uint64_t a3, void *a4)
{
  v14 = result;
  if (a2 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; result = v11)
  {
    for (j = 0; ; ++j)
    {
      if ((a2 & 0xC000000000000001) != 0)
      {
        result = MEMORY[0x1AC56AF80](j, a2);
      }

      else
      {
        if (j >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        result = *(a2 + 8 * j + 32);
      }

      v9 = result;
      v10 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      v13 = result;
      sub_1A8486508(&v14, &v13, a3, a4);

      if (v4)
      {
      }

      if (v10 == i)
      {
        return v14;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    v11 = result;
    i = sub_1A84E654C();
  }

  return result;
}

uint64_t sub_1A8487018(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_1A8487060(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_1A84870C4()
{
  result = qword_1EB2E4600;
  if (!qword_1EB2E4600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E4600);
  }

  return result;
}

Swift::Void __swiftcall IMChat.refreshSupportEncryptionStatus()()
{
  v0 = objc_opt_self();
  v1 = [v0 sharedController];
  IMServiceReachabilityController.accountsForQuerying.getter();
  v3 = v2;

  v76 = sub_1A83EBA20(MEMORY[0x1E69E7CC0]);
  v4 = v3 & 0xFFFFFFFFFFFFFF8;
  if (v3 >> 62)
  {
    goto LABEL_58;
  }

  v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v6 = MEMORY[0x1E69A7AD8];
  if (v5)
  {
    v7 = 0;
    v78 = v3 & 0xC000000000000001;
    v72 = v0;
    v74 = v3;
LABEL_5:
    v0 = v7;
    while (1)
    {
      if (v78)
      {
        v8 = MEMORY[0x1AC56AF80](v0, v3);
      }

      else
      {
        if (v0 >= *(v4 + 16))
        {
          goto LABEL_57;
        }

        v8 = *(v3 + 8 * v0 + 32);
      }

      v9 = v8;
      v7 = v0 + 1;
      if (__OFADD__(v0, 1))
      {
        __break(1u);
LABEL_57:
        __break(1u);
LABEL_58:
        v5 = sub_1A84E654C();
        goto LABEL_3;
      }

      v10 = [v8 serviceName];
      if (!v10)
      {
        break;
      }

      v11 = v10;
      v12 = sub_1A84E5DBC();
      v14 = v13;

      v15 = sub_1A84E5DBC();
      if (!v14)
      {
        goto LABEL_7;
      }

      v17 = v12 == v15 && v14 == v16;
      if (v17)
      {
      }

      else
      {
        v18 = sub_1A84E67AC();

        if ((v18 & 1) == 0)
        {

          goto LABEL_8;
        }
      }

      v19 = v5;
      v20 = v6;
      v21 = [v9 serviceName];
      if (!v21)
      {
        goto LABEL_65;
      }

      v22 = v21;
      v23 = sub_1A84E5DBC();
      v25 = v24;

      v26 = [v9 uniqueID];
      if (v26)
      {
        v30 = v26;
        v70 = sub_1A84E5DBC();
        v71 = v31;

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v79 = v76;
        v34 = sub_1A824B390(v23, v25);
        v35 = v76[2];
        v36 = (v33 & 1) == 0;
        v37 = v35 + v36;
        if (__OFADD__(v35, v36))
        {
          goto LABEL_63;
        }

        if (v76[3] >= v37)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v48 = v33;
            sub_1A848F2D8();
            v33 = v48;
          }
        }

        else
        {
          v77 = v33;
          sub_1A848BF7C(v37, isUniquelyReferenced_nonNull_native);
          v38 = sub_1A824B390(v23, v25);
          v40 = v39 & 1;
          v33 = v77;
          if ((v77 & 1) != v40)
          {
            goto LABEL_66;
          }

          v34 = v38;
        }

        v0 = v72;
        v76 = v79;
        if (v33)
        {
          v42 = (v79[7] + 16 * v34);
          *v42 = v70;
          v42[1] = v71;
        }

        else
        {
          v79[(v34 >> 6) + 8] |= 1 << v34;
          v43 = (v79[6] + 16 * v34);
          *v43 = v23;
          v43[1] = v25;
          v44 = (v79[7] + 16 * v34);
          *v44 = v70;
          v44[1] = v71;
          v45 = v79[2];
          v46 = __OFADD__(v45, 1);
          v47 = v45 + 1;
          if (v46)
          {
            goto LABEL_64;
          }

          v79[2] = v47;
        }

        v6 = v20;
LABEL_41:
        v5 = v19;
        v17 = v7 == v19;
        v3 = v74;
        if (v17)
        {
          goto LABEL_45;
        }

        goto LABEL_5;
      }

      v27 = sub_1A824B390(v23, v25);
      v29 = v28;

      if (v29)
      {
        v41 = v76;
        v6 = v20;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1A848F2D8();
          v41 = v76;
        }

        v76 = v41;
        sub_1A848D064(v27, v41);

        v0 = v72;
        goto LABEL_41;
      }

      v6 = v20;
      v5 = v19;
      v3 = v74;
LABEL_8:
      ++v0;
      if (v7 == v5)
      {
        v0 = v72;
        goto LABEL_45;
      }
    }

    sub_1A84E5DBC();
LABEL_7:

    goto LABEL_8;
  }

LABEL_45:

  v49 = [v0 sharedController];
  v50 = [v49 reachabilityContextForChat_];

  sub_1A83EA2FC(&unk_1EB2E8DC0, &qword_1A8500C50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A85013E0;
  *(inited + 32) = sub_1A84E5DBC();
  *(inited + 40) = v52;
  sub_1A848FD30(inited);
  swift_setDeallocating();
  sub_1A848FE98(inited + 32);
  v53 = sub_1A84E610C();

  [v50 setPreconditionsIgnoredForServices_];

  v54 = [v0 sharedController];
  v55 = [v73 participants];
  sub_1A8244B68(0, &qword_1EB2E4760, off_1E780DA00);
  v56 = sub_1A84E5FFC();

  if (!(v56 >> 62))
  {
    v57 = *((v56 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v57)
    {
      goto LABEL_47;
    }

LABEL_60:

    v59 = MEMORY[0x1E69E7CC0];
LABEL_61:
    v69 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_1A8454F90(v59, v76, v50, v54, v69);

    return;
  }

  v57 = sub_1A84E654C();
  if (!v57)
  {
    goto LABEL_60;
  }

LABEL_47:
  v80 = MEMORY[0x1E69E7CC0];
  sub_1A83EF534(0, v57 & ~(v57 >> 63), 0);
  if ((v57 & 0x8000000000000000) == 0)
  {
    v75 = v54;
    v58 = 0;
    v59 = v80;
    do
    {
      if ((v56 & 0xC000000000000001) != 0)
      {
        v60 = MEMORY[0x1AC56AF80](v58, v56);
      }

      else
      {
        v60 = *(v56 + 8 * v58 + 32);
      }

      v61 = v60;
      v62 = [v61 ID];
      v63 = sub_1A84E5DBC();
      v65 = v64;

      v67 = *(v80 + 16);
      v66 = *(v80 + 24);
      if (v67 >= v66 >> 1)
      {
        sub_1A83EF534((v66 > 1), v67 + 1, 1);
      }

      ++v58;
      *(v80 + 16) = v67 + 1;
      v68 = v80 + 16 * v67;
      *(v68 + 32) = v63;
      *(v68 + 40) = v65;
    }

    while (v57 != v58);

    v54 = v75;
    goto LABEL_61;
  }

  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
LABEL_65:
  __break(1u);
LABEL_66:
  sub_1A84E67EC();
  __break(1u);
}

uint64_t sub_1A8487854()
{
  v0 = sub_1A84E5C9C();
  sub_1A82442B8(v0, qword_1EB2E4748);
  sub_1A824431C(v0, qword_1EB2E4748);
  sub_1A84E5C6C();
  return sub_1A84E5C8C();
}

uint64_t sub_1A84878C0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v21 = a1;
  v22 = a2;
  v4 = sub_1A84E56DC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v21 - v9;
  sub_1A84E56CC();
  v11 = [objc_opt_self() sharedController];
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  (*(v5 + 16))(v8, v10, v4);
  v13 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v14 = (v6 + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = swift_allocObject();
  *(v15 + 16) = v12;
  (*(v5 + 32))(v15 + v13, v8, v4);
  v16 = (v15 + v14);
  v18 = v21;
  v17 = v22;
  *v16 = v21;
  v16[1] = v17;
  aBlock[4] = sub_1A8490160;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A8454E30;
  aBlock[3] = &unk_1F1B75458;
  v19 = _Block_copy(aBlock);
  sub_1A8242AE8(v18, v17);

  [v11 calculateServiceForSendingToChat:v3 completionBlock:v19];
  _Block_release(v19);

  return (*(v5 + 8))(v10, v4);
}

void sub_1A8487B2C(char **a1, uint64_t a2, unint64_t a3, void (*a4)(id))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    sub_1A8487BCC(a1, a3);
  }

  if (a4)
  {
    a4([a1 isFinal]);
  }
}

NSObject *sub_1A8487BCC(char **a1, unint64_t a2)
{
  v3 = v2;
  v6 = sub_1A84E56DC();
  v7 = *(v6 - 1);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v94 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v94 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v15 = (&v94 - v14);
  v16 = [v3 lastCompletedServiceReachabilityRequestStartTime];
  if (v16)
  {
    v17 = v16;
    sub_1A84E569C();

    if (sub_1A84E566C())
    {
      v98 = v10;
      v18 = [a1 bestResult];
      if (v18)
      {
        v19 = v18;
        v20 = [v18 service];

        v97 = sub_1A84E5DBC();
        v22 = v21;
      }

      else
      {
        v22 = 0xE300000000000000;
        v97 = 4999502;
      }

      if (qword_1EB2E4740 == -1)
      {
        goto LABEL_42;
      }

      goto LABEL_68;
    }

    (*(v7 + 8))(v15, v6);
  }

  v6 = &selRef__updateChatItemsForChatItemUpdater;
  if ([a1 isFinal])
  {
    v23 = sub_1A84E565C();
    [v3 setLastCompletedServiceReachabilityRequestStartTime_];
  }

  if (qword_1EB2E4740 != -1)
  {
LABEL_47:
    swift_once();
  }

  v24 = sub_1A84E5C9C();
  sub_1A824431C(v24, qword_1EB2E4748);
  v15 = a1;
  v25 = sub_1A84E5C7C();
  v26 = sub_1A84E617C();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v99 = v28;
    *v27 = 136315394;
    v29 = [v15 bestResult];
    if (v29)
    {
      v30 = v29;
      v31 = [v29 service];

      v32 = sub_1A84E5DBC();
      v34 = v33;

      v6 = &selRef__updateChatItemsForChatItemUpdater;
    }

    else
    {
      v34 = 0xE500000000000000;
      v32 = 0x3E6C696E3CLL;
    }

    v35 = sub_1A82446BC(v32, v34, &v99);

    *(v27 + 4) = v35;
    *(v27 + 12) = 1024;
    v36 = [v15 v6[136]];

    *(v27 + 14) = v36;
    _os_log_impl(&dword_1A823F000, v25, v26, "Preferred service for sending updated to %s isFinal %{BOOL}d", v27, 0x12u);
    sub_1A8244788(v28);
    MEMORY[0x1AC56D3F0](v28, -1, -1);
    MEMORY[0x1AC56D3F0](v27, -1, -1);
  }

  else
  {
  }

  v37 = [v15 resultsByAccountID];
  v7 = sub_1A8244B68(0, &qword_1EB2E4728, 0x1E69A8260);
  v38 = sub_1A84E5D3C();

  v6 = (v38 + 64);
  v39 = 1 << *(v38 + 32);
  v40 = -1;
  if (v39 < 64)
  {
    v40 = ~(-1 << v39);
  }

  v22 = v40 & *(v38 + 64);
  v41 = (v39 + 63) >> 6;

  v42 = 0;
  a1 = &selRef_contactHandles;
  do
  {
    if (!v22)
    {
      while (1)
      {
        v43 = v42 + 1;
        if (__OFADD__(v42, 1))
        {
          break;
        }

        if (v43 >= v41)
        {

          goto LABEL_31;
        }

        v22 = v6[v43];
        ++v42;
        if (v22)
        {
          v42 = v43;
          goto LABEL_24;
        }
      }

      __break(1u);
      goto LABEL_47;
    }

    v43 = v42;
LABEL_24:
    v44 = __clz(__rbit64(v22));
    v22 &= v22 - 1;
  }

  while ([*(*(v38 + 56) + ((v43 << 9) | (8 * v44))) error] != 5);

  sub_1A8488F80();
  if ((v45 & 1) != 0 || (v46 = sub_1A8488F80(), (v47 & 1) == 0) && v46 == -1)
  {
    result = [objc_opt_self() sharedInstance];
    if (!result)
    {
      goto LABEL_71;
    }

    v49 = result;
    [result trackSpamEvent:2];

    v50 = sub_1A84E613C();
    [v3 setValue:v50 forChatProperty:@"smsHandshakeState"];
  }

LABEL_31:
  v13 = [v15 resultsForServiceName_];
  a2 = sub_1A84E5FFC();

  if (!(a2 >> 62))
  {
    if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_33;
    }

LABEL_49:

    [v3 _updateHybridGroupStateWithReachabilityResult_];
LABEL_50:
    if (sub_1A848949C())
    {
      if (sub_1A84896C4(v15))
      {
        v74 = [v15 bestResult];
        if (!v74)
        {
          return [v3 setHasRefreshedServiceForSending_];
        }

        v75 = v74;
        v76 = [v74 service];
        if (!v76)
        {
          sub_1A84E5DBC();
          v76 = sub_1A84E5D8C();
        }

        v77 = [objc_opt_self() serviceWithInternalName_];

        if (v77)
        {
          v78 = [v75 service];
          v79 = sub_1A84E5DBC();
          v81 = v80;

          sub_1A8489AA8(v79, v81);

          [v3 _targetToService_newComposition_supportsEncryption_];

          return [v3 setHasRefreshedServiceForSending_];
        }

        v83 = v75;
        v3 = v3;
        v82 = sub_1A84E5C7C();
        v84 = sub_1A84E61AC();

        if (os_log_type_enabled(v82, v84))
        {
          v85 = swift_slowAlloc();
          v86 = swift_slowAlloc();
          v87 = swift_slowAlloc();
          v99 = v87;
          *v85 = 136315394;
          v88 = [v83 service];
          v89 = sub_1A84E5DBC();
          v91 = v90;

          v92 = sub_1A82446BC(v89, v91, &v99);

          *(v85 + 4) = v92;
          *(v85 + 12) = 2112;
          *(v85 + 14) = v3;
          *v86 = v3;
          v93 = v3;
          _os_log_impl(&dword_1A823F000, v82, v84, "Daemon told us %s was the best service for sending on %@ but I can't find the service instance", v85, 0x16u);
          sub_1A824B2D4(v86, &unk_1EB2E9070, &unk_1A8501A90);
          MEMORY[0x1AC56D3F0](v86, -1, -1);
          sub_1A8244788(v87);
          MEMORY[0x1AC56D3F0](v87, -1, -1);
          MEMORY[0x1AC56D3F0](v85, -1, -1);

          return [v3 setHasRefreshedServiceForSending_];
        }

LABEL_61:
        return [v3 setHasRefreshedServiceForSending_];
      }

      sub_1A8244B68(0, &unk_1ED767528, off_1E780DCE8);
      result = [swift_getObjCClassFromMetadata() rcsService];
      if (result)
      {
        v82 = result;
        [v3 _targetToService_newComposition_supportsEncryption_];
        goto LABEL_61;
      }
    }

    else
    {
      sub_1A8244B68(0, &unk_1ED767528, off_1E780DCE8);
      result = [swift_getObjCClassFromMetadata() iMessageService];
      if (result)
      {
        v82 = result;
        [v3 _targetToService_newComposition_supportsEncryption_];
        goto LABEL_61;
      }

      __break(1u);
    }

    __break(1u);
LABEL_71:
    __break(1u);
    return result;
  }

  if (!sub_1A84E654C())
  {
    goto LABEL_49;
  }

LABEL_33:
  if ((a2 & 0xC000000000000001) != 0)
  {
    v51 = MEMORY[0x1AC56AF80](0, a2);
LABEL_36:
    v52 = v51;

    [v3 _updateHybridGroupStateWithReachabilityResult_];
    if (v52)
    {
      v53 = v52;
      sub_1A848FEEC(v53);
      if ([v53 allAreReachable])
      {
        [v3 setHasHadSuccessfulQuery_];
      }
    }

    goto LABEL_50;
  }

  if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v51 = *(a2 + 32);
    goto LABEL_36;
  }

  __break(1u);
LABEL_68:
  swift_once();
LABEL_42:
  v54 = sub_1A84E5C9C();
  sub_1A824431C(v54, qword_1EB2E4748);
  v55 = *(v7 + 16);
  v55(v13, a2, v6);
  v56 = v98;
  v55(v98, v15, v6);

  v57 = sub_1A84E5C7C();
  v58 = sub_1A84E617C();

  if (os_log_type_enabled(v57, v58))
  {
    v59 = swift_slowAlloc();
    v96 = swift_slowAlloc();
    v99 = v96;
    *v59 = 136315650;
    v60 = sub_1A82446BC(v97, v22, &v99);
    LODWORD(v97) = v58;
    v61 = v60;

    *(v59 + 4) = v61;
    *(v59 + 12) = 2080;
    sub_1A84904BC(&qword_1EB2E46C0, MEMORY[0x1E6969530], MEMORY[0x1E6969570]);
    v62 = sub_1A84E676C();
    v63 = v56;
    v65 = v64;
    v95 = v57;
    v66 = *(v7 + 8);
    v66(v13, v6);
    v67 = sub_1A82446BC(v62, v65, &v99);

    *(v59 + 14) = v67;
    *(v59 + 22) = 2080;
    v68 = sub_1A84E676C();
    v70 = v69;
    v66(v63, v6);
    v71 = sub_1A82446BC(v68, v70, &v99);

    *(v59 + 24) = v71;
    v72 = v95;
    _os_log_impl(&dword_1A823F000, v95, v97, "Dropping service for sending result %s because task's startTime (%s) is older than the chat's last known start time (%s)", v59, 0x20u);
    v73 = v96;
    swift_arrayDestroy();
    MEMORY[0x1AC56D3F0](v73, -1, -1);
    MEMORY[0x1AC56D3F0](v59, -1, -1);
  }

  else
  {

    v66 = *(v7 + 8);
    v66(v56, v6);
    v66(v13, v6);
  }

  return (v66)(v15, v6);
}

void sub_1A84888EC(void *a1, uint64_t a2)
{
  v2 = [a1 bestResult];
  if (v2)
  {
    v3 = v2;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v5 = Strong;
      [Strong setSupportsEncryption_];
    }
  }
}

void sub_1A8488980()
{
  v3 = [objc_opt_self() sharedInstance];
  if (!v3)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v4 = v3;
  v5 = [objc_opt_self() iMessageService];
  v6 = [v4 accountsForService_];

  if (!v6)
  {
LABEL_32:
    __break(1u);
    return;
  }

  sub_1A8244B68(0, &qword_1EB2E4708, off_1E780D7A0);
  v7 = sub_1A84E5FFC();

  if (v7 >> 62)
  {
    if (sub_1A84E654C())
    {
LABEL_5:
      if ((v7 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x1AC56AF80](0, v7);
      }

      else
      {
        if (!*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_26;
        }

        v8 = *(v7 + 32);
      }

      v9 = v8;

      v10 = [v9 uniqueID];

      if (!v10)
      {
        return;
      }

      v11 = sub_1A84E5DBC();
      v34 = v12;
      v35 = v11;

      v6 = objc_opt_self();
      v2 = [v6 sharedController];
      v13 = [v0 participants];
      sub_1A8244B68(0, &qword_1EB2E4760, off_1E780DA00);
      v1 = sub_1A84E5FFC();

      if (!(v1 >> 62))
      {
        v14 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v14)
        {
LABEL_11:
          v32 = v2;
          v33 = v0;
          v36 = MEMORY[0x1E69E7CC0];
          sub_1A83EF534(0, v14 & ~(v14 >> 63), 0);
          if ((v14 & 0x8000000000000000) == 0)
          {
            v15 = 0;
            v16 = v36;
            do
            {
              if ((v1 & 0xC000000000000001) != 0)
              {
                v17 = MEMORY[0x1AC56AF80](v15, v1);
              }

              else
              {
                v17 = *(v1 + 8 * v15 + 32);
              }

              v18 = v17;
              v19 = [v18 ID];
              v20 = sub_1A84E5DBC();
              v22 = v21;

              v24 = *(v36 + 16);
              v23 = *(v36 + 24);
              if (v24 >= v23 >> 1)
              {
                sub_1A83EF534((v23 > 1), v24 + 1, 1);
                v0 = v33;
              }

              ++v15;
              *(v36 + 16) = v24 + 1;
              v25 = v36 + 16 * v24;
              *(v25 + 32) = v20;
              *(v25 + 40) = v22;
            }

            while (v14 != v15);

            v2 = v32;
            goto LABEL_28;
          }

          __break(1u);
          goto LABEL_31;
        }

LABEL_27:

        v16 = MEMORY[0x1E69E7CC0];
LABEL_28:
        sub_1A83EA2FC(&qword_1EB2E8570, &qword_1A8508BD8);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1A85013E0;
        *(inited + 32) = sub_1A84E5DBC();
        *(inited + 40) = v27;
        *(inited + 48) = v35;
        *(inited + 56) = v34;
        v28 = sub_1A83EBA20(inited);
        swift_setDeallocating();
        sub_1A824B2D4(inited + 32, &qword_1EB2E8578, &qword_1A8508BE0);
        v29 = [v6 sharedController];
        v30 = [v29 reachabilityContextForChat_];

        v31 = swift_allocObject();
        swift_unknownObjectWeakInit();
        sub_1A8456DFC(v16, v28, v30, v2, v31);

        return;
      }

LABEL_26:
      v14 = sub_1A84E654C();
      if (v14)
      {
        goto LABEL_11;
      }

      goto LABEL_27;
    }
  }

  else if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_5;
  }
}

void sub_1A8488DF8(void *a1, uint64_t a2)
{
  v2 = [a1 resultsForServiceName_];
  sub_1A8244B68(0, &qword_1EB2E4728, 0x1E69A8260);
  v3 = sub_1A84E5FFC();

  if (v3 >> 62)
  {
    if (sub_1A84E654C())
    {
      goto LABEL_3;
    }

LABEL_10:

    return;
  }

  if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_10;
  }

LABEL_3:
  if ((v3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x1AC56AF80](0, v3);
  }

  else
  {
    if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v4 = *(v3 + 32);
  }

  v5 = v4;

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    sub_1A848FEEC(v5);
  }
}

uint64_t sub_1A8488F80()
{
  if ([v0 valueForChatProperty_])
  {
    sub_1A84E63AC();
    swift_unknownObjectRelease();
  }

  else
  {
    v3 = 0u;
    v4 = 0u;
  }

  v5[0] = v3;
  v5[1] = v4;
  if (*(&v4 + 1))
  {
    if (swift_dynamicCast())
    {
      return v2;
    }
  }

  else
  {
    sub_1A824B2D4(v5, &qword_1EB2E66B0, &qword_1A8500960);
  }

  return 0;
}

uint64_t sub_1A8489050()
{
  v1 = [v0 participants];
  sub_1A8244B68(0, &qword_1EB2E4760, off_1E780DA00);
  v2 = sub_1A84E5FFC();

  if (v2 >> 62)
  {
LABEL_23:
    v3 = sub_1A84E654C();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v3)
  {
    v4 = 0;
    v5 = *MEMORY[0x1E69A83E8];
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x1AC56AF80](v4, v2);
      }

      else
      {
        if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_22;
        }

        v6 = *(v2 + 8 * v4 + 32);
      }

      v7 = v6;
      v8 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        __break(1u);
LABEL_22:
        __break(1u);
        goto LABEL_23;
      }

      v9 = [v6 ID];
      if (!v9)
      {
        sub_1A84E5DBC();
        v9 = sub_1A84E5D8C();
      }

      v10 = [objc_opt_self() mapID:v9 usingKey:v5];

      v11 = sub_1A84E5DBC();
      v13 = v12;

      v14 = sub_1A84E5D8C();
      LODWORD(v10) = IMStringIsEmail();

      if (v10)
      {
        break;
      }

      ++v4;
      if (v8 == v3)
      {
        goto LABEL_15;
      }
    }

    if (qword_1EB2E4740 != -1)
    {
      swift_once();
    }

    v16 = sub_1A84E5C9C();
    sub_1A824431C(v16, qword_1EB2E4748);

    v17 = sub_1A84E5C7C();
    v18 = sub_1A84E617C();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v21 = v20;
      *v19 = 136315138;
      *(v19 + 4) = sub_1A82446BC(v11, v13, &v21);
      _os_log_impl(&dword_1A823F000, v17, v18, "%s was email, so not retargeting", v19, 0xCu);
      sub_1A8244788(v20);
      MEMORY[0x1AC56D3F0](v20, -1, -1);
      MEMORY[0x1AC56D3F0](v19, -1, -1);
    }

    swift_bridgeObjectRelease_n();

    return 1;
  }

  else
  {
LABEL_15:
    swift_bridgeObjectRelease_n();
    return 0;
  }
}

uint64_t sub_1A8489360()
{
  v1 = [v0 lastAddressedHandleID];
  if (v1)
  {
    v2 = v1;
    v3 = [objc_opt_self() mapID:v1 usingKey:*MEMORY[0x1E69A83F0]];

    v4 = sub_1A84E5DBC();
    v6 = v5;

    v7 = HIBYTE(v6) & 0xF;
    if ((v6 & 0x2000000000000000) == 0)
    {
      v7 = v4 & 0xFFFFFFFFFFFFLL;
    }

    if (v7)
    {
      goto LABEL_9;
    }
  }

  v8 = [v0 account];
  if (!v8)
  {
    return 0;
  }

  v9 = v8;
  v10 = [v8 displayName];

  if (!v10)
  {
    return 0;
  }

  sub_1A84E5DBC();

LABEL_9:
  v11 = sub_1A84E5D8C();

  IsEmail = IMStringIsEmail();

  return IsEmail;
}

uint64_t sub_1A848949C()
{
  v1 = v0;
  v2 = [v0 account];
  v3 = [v2 service];

  sub_1A8244B68(0, &unk_1ED767528, off_1E780DCE8);
  v4 = [swift_getObjCClassFromMetadata() iMessageService];
  v5 = v4;
  if (v3)
  {
    if (v4)
    {
      v6 = sub_1A84E631C();

      if ((v6 & 1) == 0)
      {
        return 1;
      }

      goto LABEL_7;
    }

    v7 = 1;
LABEL_17:

    return v7;
  }

  if (v4)
  {
    v7 = 1;
    v3 = v4;
    goto LABEL_17;
  }

LABEL_7:
  if ([v1 isGroupChat] && ((sub_1A8489050() & 1) != 0 || (sub_1A8489360() & 1) != 0))
  {
    if (qword_1EB2E4740 != -1)
    {
      swift_once();
    }

    v8 = sub_1A84E5C9C();
    sub_1A824431C(v8, qword_1EB2E4748);
    v9 = v1;
    v3 = sub_1A84E5C7C();
    v10 = sub_1A84E617C();

    if (os_log_type_enabled(v3, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *v11 = 138412290;
      *(v11 + 4) = v9;
      *v12 = v9;
      v13 = v9;
      _os_log_impl(&dword_1A823F000, v3, v10, "This group contains emails, don't downgrade: %@", v11, 0xCu);
      sub_1A824B2D4(v12, &unk_1EB2E9070, &unk_1A8501A90);
      MEMORY[0x1AC56D3F0](v12, -1, -1);
      MEMORY[0x1AC56D3F0](v11, -1, -1);
    }

    v7 = 0;
    goto LABEL_17;
  }

  return 1;
}

uint64_t sub_1A84896C4(void *a1)
{
  v2 = v1;
  v4 = [v1 account];
  v5 = [v4 service];

  sub_1A8244B68(0, &unk_1ED767528, off_1E780DCE8);
  v6 = [swift_getObjCClassFromMetadata() rcsService];
  v7 = v6;
  if (v5)
  {
    if (!v6)
    {
      v9 = 1;
      goto LABEL_15;
    }

    v8 = sub_1A84E631C();

    if ((v8 & 1) == 0)
    {
      return 1;
    }
  }

  else if (v6)
  {
    v9 = 1;
    v5 = v6;
    goto LABEL_15;
  }

  v10 = [v2 account];
  if (!v10 || (v11 = v10, v12 = [v10 login], v11, !v12))
  {
    v12 = 0;
  }

  v13 = objc_opt_self();
  v14 = [v2 lastAddressedSIMID];
  v15 = [v13 IMMMSMaxRecipientsForPhoneNumber:v12 simID:v14];

  v16 = [a1 bestResult];
  if (!v16)
  {
    return 1;
  }

  v17 = v16;
  v18 = [v16 service];

  v19 = sub_1A84E5DBC();
  v21 = v20;

  if (v19 == sub_1A84E5DBC() && v21 == v22)
  {
  }

  else
  {
    v23 = sub_1A84E67AC();

    if ((v23 & 1) == 0)
    {
      return 1;
    }
  }

  if (![v2 isGroupChat])
  {
    return 1;
  }

  v24 = [v2 participantsWithState_];
  sub_1A8244B68(0, &qword_1EB2E4760, off_1E780DA00);
  v25 = sub_1A84E5FFC();

  v26 = v25 >> 62 ? sub_1A84E654C() : *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);

  if (v26 <= v15)
  {
    return 1;
  }

  if (qword_1EB2E4740 != -1)
  {
    swift_once();
  }

  v27 = sub_1A84E5C9C();
  sub_1A824431C(v27, qword_1EB2E4748);
  v28 = v2;
  v5 = sub_1A84E5C7C();
  v29 = sub_1A84E617C();

  if (os_log_type_enabled(v5, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    *v30 = 138412290;
    *(v30 + 4) = v28;
    *v31 = v28;
    v32 = v28;
    _os_log_impl(&dword_1A823F000, v5, v29, "This group contains more participants than MMS allows, don't downgrade: %@", v30, 0xCu);
    sub_1A824B2D4(v31, &unk_1EB2E9070, &unk_1A8501A90);
    MEMORY[0x1AC56D3F0](v31, -1, -1);
    MEMORY[0x1AC56D3F0](v30, -1, -1);
  }

  v9 = 0;
LABEL_15:

  return v9;
}

void sub_1A8489AA8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = [objc_opt_self() sharedController];
  v27 = [v6 reachabilityContextForChat_];

  v7 = [v27 lastUsedServiceName];
  if (v7)
  {
    v8 = v7;
    v9 = sub_1A84E5DBC();
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0;
  }

  v12 = sub_1A8490204(v9, v11);

  v13 = sub_1A8490204(a1, a2);
  if (v12 != v13 && (v12 == 4 || v13 == 4))
  {
    v14 = v13;
    v15 = [objc_opt_self() sharedInstance];
    if (v15)
    {
      v16 = v15;
      v17 = [v15 isRCSEnabled];

      v18 = 2 * (v12 == 4);
      if (v14 == 4)
      {
        v18 = 1;
      }

      if (v17)
      {
        v19 = v18;
      }

      else
      {
        v19 = 3;
      }

      sub_1A83EA2FC(&qword_1EB2E8580, &qword_1A8508BE8);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1A8505C20;
      *(inited + 32) = 0x73756F6976657250;
      v21 = MEMORY[0x1E69E6810];
      *(inited + 40) = 0xEF65636976726553;
      *(inited + 48) = v12;
      *(inited + 72) = v21;
      strcpy((inited + 80), "CurrentService");
      *(inited + 95) = -18;
      *(inited + 96) = v14;
      *(inited + 120) = v21;
      *(inited + 128) = 0xD000000000000013;
      *(inited + 168) = v21;
      *(inited + 136) = 0x80000001A85332B0;
      *(inited + 144) = v19;
      v22 = sub_1A8242810(inited);
      swift_setDeallocating();
      sub_1A83EA2FC(&unk_1EB2E66C0, &unk_1A8500970);
      swift_arrayDestroy();
      v23 = [objc_opt_self() sharedInstance];
      if (v23)
      {
        v24 = v23;
        v25 = *MEMORY[0x1E69A76A0];
        sub_1A84A5368(v22);

        v26 = sub_1A84E5D2C();

        [v24 trackEvent:v25 withDictionary:v26];

        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  else
  {
  }
}

unint64_t sub_1A8489DCC(uint64_t a1)
{
  v2 = a1;
  v3 = sub_1A84A17A4(*(v1 + 40), a1);

  return sub_1A8489FE4(v2, v3);
}

unint64_t sub_1A8489E10(uint64_t a1)
{
  sub_1A84E5DBC();
  sub_1A84E684C();
  sub_1A84E5E5C();
  v2 = sub_1A84E687C();

  return sub_1A848A260(a1, v2);
}

unint64_t sub_1A8489EA0(uint64_t a1)
{
  sub_1A84E684C();
  MEMORY[0x1AC56B360](a1);
  v2 = sub_1A84E687C();

  return sub_1A848A364(a1, v2);
}

unint64_t sub_1A8489F0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1A84E684C();
  sub_1A84E5E5C();
  MEMORY[0x1AC56B350](a3);
  v6 = sub_1A84E687C();

  return sub_1A848A3D0(a1, a2, a3, v6);
}

unint64_t sub_1A8489FA0(uint64_t a1)
{
  v2 = sub_1A84E630C();

  return sub_1A848A4B4(a1, v2);
}

unint64_t sub_1A8489FE4(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v23 = ~v3;
    v5 = a1;
    while (1)
    {
      v6 = *(*(v25 + 48) + v4);
      if (v6 > 3)
      {
        if (*(*(v25 + 48) + v4) > 5u)
        {
          if (v6 == 6)
          {
            v11 = 0xE300000000000000;
            v10 = 5456722;
          }

          else
          {
            v10 = 0x74696C6C65746153;
            v11 = 0xEC000000534D5365;
          }
        }

        else
        {
          if (v6 == 4)
          {
            v10 = 5459283;
          }

          else
          {
            v10 = 0x656D695465636146;
          }

          if (v6 == 4)
          {
            v11 = 0xE300000000000000;
          }

          else
          {
            v11 = 0xE800000000000000;
          }
        }
      }

      else
      {
        if (v6 == 2)
        {
          v7 = 0xE800000000000000;
        }

        else
        {
          v7 = 0xEC0000006574694CLL;
        }

        if (*(*(v25 + 48) + v4))
        {
          v8 = 7958113;
        }

        else
        {
          v8 = 0x6E776F6E6B6E75;
        }

        if (*(*(v25 + 48) + v4))
        {
          v9 = 0xE300000000000000;
        }

        else
        {
          v9 = 0xE700000000000000;
        }

        if (*(*(v25 + 48) + v4) <= 1u)
        {
          v10 = v8;
        }

        else
        {
          v10 = 0x6567617373654D69;
        }

        if (*(*(v25 + 48) + v4) <= 1u)
        {
          v11 = v9;
        }

        else
        {
          v11 = v7;
        }
      }

      v12 = 0x74696C6C65746153;
      if (v5 == 6)
      {
        v12 = 5456722;
      }

      v13 = 0xEC000000534D5365;
      if (v5 == 6)
      {
        v13 = 0xE300000000000000;
      }

      v14 = 5459283;
      if (v5 == 4)
      {
        v15 = 0xE300000000000000;
      }

      else
      {
        v14 = 0x656D695465636146;
        v15 = 0xE800000000000000;
      }

      if (v5 <= 5)
      {
        v12 = v14;
        v13 = v15;
      }

      v16 = v5 == 2 ? 0xE800000000000000 : 0xEC0000006574694CLL;
      v17 = v5 ? 7958113 : 0x6E776F6E6B6E75;
      v18 = v5 ? 0xE300000000000000 : 0xE700000000000000;
      if (v5 <= 1)
      {
        v16 = v18;
      }

      else
      {
        v17 = 0x6567617373654D69;
      }

      v19 = v5 <= 3 ? v17 : v12;
      v20 = v5 <= 3 ? v16 : v13;
      if (v10 == v19 && v11 == v20)
      {
        break;
      }

      v21 = sub_1A84E67AC();

      if ((v21 & 1) == 0)
      {
        v4 = (v4 + 1) & v23;
        if ((*(v24 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_1A848A260(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = sub_1A84E5DBC();
      v8 = v7;
      if (v6 == sub_1A84E5DBC() && v8 == v9)
      {
        break;
      }

      v11 = sub_1A84E67AC();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_1A848A364(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_1A848A3D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4 + 64;
  v6 = -1 << *(v4 + 32);
  v7 = a4 & ~v6;
  if ((*(v4 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v11 = ~v6;
    v12 = *(v4 + 48);
    do
    {
      v13 = (v12 + 24 * v7);
      v14 = v13[2];
      v15 = *v13 == a1 && v13[1] == a2;
      if (v15 || (sub_1A84E67AC()) && v14 == a3)
      {
        break;
      }

      v7 = (v7 + 1) & v11;
    }

    while (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  return v7;
}

unint64_t sub_1A848A4B4(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    sub_1A8244B68(0, &qword_1EB2E4760, off_1E780DA00);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_1A84E631C();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

uint64_t sub_1A848A588(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for ImportExport.Message(0);
  v39 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v41 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  sub_1A83EA2FC(&qword_1EB2E8590, &qword_1A8508BF8);
  v40 = v4;
  result = sub_1A84E656C();
  v9 = result;
  if (*(v7 + 16))
  {
    v37 = v2;
    v38 = v7;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = *(v7 + 56);
      v24 = (*(v7 + 48) + 16 * v22);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(v39 + 72);
      v28 = v23 + v27 * v22;
      if (v40)
      {
        sub_1A8462480(v28, v41);
      }

      else
      {
        sub_1A8490458(v28, v41);
      }

      sub_1A84E684C();
      sub_1A84E5E5C();
      result = sub_1A84E687C();
      v29 = -1 << *(v9 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v16 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v16 + 8 * v31);
          if (v35 != -1)
          {
            v17 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v30) & ~*(v16 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v25;
      v18[1] = v26;
      result = sub_1A8462480(v41, *(v9 + 56) + v27 * v17);
      ++*(v9 + 16);
      v7 = v38;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_34;
    }

    v36 = 1 << *(v7 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v11, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v36;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
  return result;
}

uint64_t sub_1A848A8C4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1A83EA2FC(&qword_1EB2E6630, &qword_1A85008F8);
  v34 = v4;
  result = sub_1A84E656C();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
      }

      sub_1A84E684C();
      sub_1A84E5E5C();
      result = sub_1A84E687C();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1A848AB64(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1A83EA2FC(&qword_1EB2E6610, &qword_1A85008D8);
  v35 = v4;
  result = sub_1A84E656C();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v2;
    v34 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(v5 + 56);
      v21 = *(*(v5 + 48) + 8 * v19);
      v22 = (v20 + 32 * v19);
      if (v35)
      {
        sub_1A8243DDC(v22, v36);
      }

      else
      {
        sub_1A8244F40(v22, v36);
        v23 = v21;
      }

      sub_1A84E5DBC();
      sub_1A84E684C();
      sub_1A84E5E5C();
      v24 = sub_1A84E687C();

      v25 = -1 << *(v7 + 32);
      v26 = v24 & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v21;
      result = sub_1A8243DDC(v36, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
      v5 = v34;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v33;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v33;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_1A848AE48(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  sub_1A83EA2FC(a3, a4);
  v33 = v6;
  result = sub_1A84E656C();
  v9 = result;
  if (*(v7 + 16))
  {
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = result + 64;
    while (v14)
    {
      v21 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_17:
      v24 = v21 | (v10 << 6);
      v25 = *(*(v7 + 48) + v24);
      v26 = *(*(v7 + 56) + 8 * v24);
      if ((v33 & 1) == 0)
      {
        v27 = v26;
      }

      sub_1A84E684C();
      sub_1A84E5E5C();

      result = sub_1A84E687C();
      v17 = -1 << *(v9 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v16 + 8 * (v18 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v17) >> 6;
        while (++v19 != v29 || (v28 & 1) == 0)
        {
          v30 = v19 == v29;
          if (v19 == v29)
          {
            v19 = 0;
          }

          v28 |= v30;
          v31 = *(v16 + 8 * v19);
          if (v31 != -1)
          {
            v20 = __clz(__rbit64(~v31)) + (v19 << 6);
            goto LABEL_9;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v18) & ~*(v16 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v16 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      *(*(v9 + 48) + v20) = v25;
      *(*(v9 + 56) + 8 * v20) = v26;
      ++*(v9 + 16);
    }

    v22 = v10;
    while (1)
    {
      v10 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v23 = v11[v10];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v14 = (v23 - 1) & v23;
        goto LABEL_17;
      }
    }

    if (v33)
    {
      v32 = 1 << *(v7 + 32);
      if (v32 >= 64)
      {
        bzero((v7 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v11 = -1 << v32;
      }

      *(v7 + 16) = 0;
    }

    v5 = v4;
  }

  else
  {
  }

  *v5 = v9;
  return result;
}

uint64_t sub_1A848B1B8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1A83EA2FC(&qword_1EB2E6640, &qword_1A8500908);
  v30 = v4;
  result = sub_1A84E656C();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_16:
      v22 = v19 | (v8 << 6);
      v23 = *(*(v5 + 48) + v22);
      v24 = *(*(v5 + 56) + 8 * v22);
      if ((v30 & 1) == 0)
      {
      }

      sub_1A84E684C();
      sub_1A84E5E5C();

      result = sub_1A84E687C();
      v15 = -1 << *(v7 + 32);
      v16 = result & ~v15;
      v17 = v16 >> 6;
      if (((-1 << v16) & ~*(v14 + 8 * (v16 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v15) >> 6;
        while (++v17 != v26 || (v25 & 1) == 0)
        {
          v27 = v17 == v26;
          if (v17 == v26)
          {
            v17 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v17);
          if (v28 != -1)
          {
            v18 = __clz(__rbit64(~v28)) + (v17 << 6);
            goto LABEL_8;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v16) & ~*(v14 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_8:
      *(v14 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v7 + 48) + v18) = v23;
      *(*(v7 + 56) + 8 * v18) = v24;
      ++*(v7 + 16);
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_16;
      }
    }

    if ((v30 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v2;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}