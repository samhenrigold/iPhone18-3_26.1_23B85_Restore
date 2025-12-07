void sub_10003B738(void *a1, void *a2, _TtC40com_apple_CloudSharingUI_AddParticipants15InitiateSharing *a3, _TtC40com_apple_CloudSharingUI_AddParticipants15InitiateSharing *a4, _TtC40com_apple_CloudSharingUI_AddParticipants15InitiateSharing *a5, void (**a6)(const void *, void *, void, void *))
{
  v154 = a5;
  v157 = a3;
  v158 = a4;
  v9 = sub_10007AA3C();
  __chkstk_darwin(v9 - 8);
  v145 = &v143 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10007AA4C();
  v146 = *(v11 - 8);
  v147 = v11;
  __chkstk_darwin(v11);
  v144 = &v143 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1000057A0(&unk_10009ED10, &qword_10007D310);
  v14 = __chkstk_darwin(v13 - 8);
  v148 = &v143 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v151 = &v143 - v16;
  v159 = sub_10007AE2C();
  v17 = *(v159 - 8);
  v18 = __chkstk_darwin(v159);
  v156 = &v143 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v22 = &v143 - v21;
  v23 = __chkstk_darwin(v20);
  v25 = &v143 - v24;
  v26 = __chkstk_darwin(v23);
  v28 = &v143 - v27;
  __chkstk_darwin(v26);
  v30 = &v143 - v29;
  v155 = swift_allocObject();
  *(v155 + 16) = a6;
  v149 = a6;
  _Block_copy(a6);
  sub_10007AE0C();
  v31 = a1;
  v32 = sub_10007AE1C();
  v33 = sub_10007B41C();

  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v153 = v25;
    v36 = v17;
    v37 = a2;
    v38 = v35;
    *v34 = 138412290;
    *(v34 + 4) = v31;
    *v35 = v31;
    v39 = v31;
    _os_log_impl(&_mh_execute_header, v32, v33, "callForCloudKitAddToShare share: %@", v34, 0xCu);
    sub_100008824(v38, &qword_10009F570, &qword_10007DAF0);
    a2 = v37;
    v17 = v36;
    v25 = v153;
  }

  v152 = v22;
  v150 = v31;

  v40 = *(v17 + 8);
  v41 = v159;
  v40(v30, v159);
  sub_10007AE0C();
  v42 = a2;
  v43 = sub_10007AE1C();
  v44 = sub_10007B41C();

  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    *v45 = 138412290;
    *(v45 + 4) = v42;
    *v46 = v42;
    v47 = v42;
    _os_log_impl(&_mh_execute_header, v43, v44, "callForCloudKitAddToShare containerSetupInfo: %@", v45, 0xCu);
    sub_100008824(v46, &qword_10009F570, &qword_10007DAF0);

    v41 = v159;
  }

  v40(v28, v41);
  sub_10007AE0C();
  v48 = v157;

  v49 = sub_10007AE1C();
  v50 = sub_10007B3DC();
  v48, v51, v52, v53, v54, v55, v56, v57;
  v58 = os_log_type_enabled(v49, v50);
  v153 = v42;
  if (v58)
  {
    v59 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    aBlock[0] = v60;
    *v59 = 136315138;
    v61 = sub_10007B2BC();
    v63 = v62;
    v64 = sub_100037C08(v61, v62, aBlock);
    v63, v65, v66, v67, v68, v69, v70, v71;
    *(v59 + 4) = v64;
    _os_log_impl(&_mh_execute_header, v49, v50, "callForCloudKitAddToShare emailAddresses: %s", v59, 0xCu);
    sub_10000585C(v60);
    v41 = v159;
  }

  v40(v25, v41);
  v72 = v154;
  v73 = v152;
  sub_10007AE0C();
  v74 = v158;

  v75 = sub_10007AE1C();
  v76 = sub_10007B3DC();
  v74, v77, v78, v79, v80, v81, v82, v83;
  if (os_log_type_enabled(v75, v76))
  {
    v84 = swift_slowAlloc();
    v85 = swift_slowAlloc();
    aBlock[0] = v85;
    *v84 = 136315138;
    v86 = sub_10007B2BC();
    v88 = v87;
    v89 = sub_100037C08(v86, v87, aBlock);
    v88, v90, v91, v92, v93, v94, v95, v96;
    *(v84 + 4) = v89;
    _os_log_impl(&_mh_execute_header, v75, v76, "callForCloudKitAddToShare phoneNumbers: %s", v84, 0xCu);
    sub_10000585C(v85);
    v41 = v159;
  }

  v40(v73, v41);
  v97 = v156;
  sub_10007AE0C();

  v98 = sub_10007AE1C();
  v99 = sub_10007B3DC();
  v72, v100, v101, v102, v103, v104, v105, v106;
  if (os_log_type_enabled(v98, v99))
  {
    v107 = swift_slowAlloc();
    v108 = v41;
    v109 = swift_slowAlloc();
    aBlock[0] = v109;
    *v107 = 136315138;
    sub_100005C8C(0, &unk_10009F560, _SWCollaborationOptionsGroup_ptr);
    v110 = sub_10007B2BC();
    v112 = v111;
    v113 = sub_100037C08(v110, v111, aBlock);
    v112, v114, v115, v116, v117, v118, v119, v120;
    *(v107 + 4) = v113;
    _os_log_impl(&_mh_execute_header, v98, v99, "callForCloudKitAddToShare optionsGroups: %s", v107, 0xCu);
    sub_10000585C(v109);

    v121 = v156;
    v122 = v108;
  }

  else
  {

    v121 = v97;
    v122 = v41;
  }

  v40(v121, v122);
  v123 = v153;
  if (qword_10009DF50 != -1)
  {
    swift_once();
  }

  v124 = qword_1000A23D0;
  if (qword_1000A23D0)
  {
    swift_unknownObjectRetain();
    isa = sub_10007B29C().super.isa;
    v126 = sub_10007B29C().super.isa;
    sub_100005C8C(0, &unk_10009F560, _SWCollaborationOptionsGroup_ptr);
    v127 = sub_10007B29C().super.isa;
    v128 = swift_allocObject();
    v129 = v155;
    *(v128 + 16) = sub_100046368;
    *(v128 + 24) = v129;
    aBlock[4] = sub_100046430;
    aBlock[5] = v128;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10002AAC0;
    aBlock[3] = &unk_100097810;
    v130 = _Block_copy(aBlock);

    [v124 addToCloudKitSharing:v150 containerSetupInfo:v123 emailAddresses:isa phoneNumbers:v126 optionsGroups:v127 withReply:v130];
    _Block_release(v130);

    swift_unknownObjectRelease();
  }

  else
  {
    v131 = sub_10007AC4C();
    v132 = *(v131 - 8);
    v133 = v151;
    (*(v132 + 56))(v151, 1, 1, v131);
    sub_10007AA2C();
    sub_1000381B0(_swiftEmptyArrayStorage);
    sub_100038358(&qword_10009E938, &type metadata accessor for CocoaError, &protocol conformance descriptor for CocoaError);
    v134 = v144;
    v135 = v147;
    sub_10007AB6C();
    v136 = sub_10007AA1C();
    (*(v146 + 8))(v134, v135);
    v137 = v133;
    v138 = v148;
    sub_1000187C8(v137, v148, &unk_10009ED10, &qword_10007D310);
    v140 = 0;
    if ((*(v132 + 48))(v138, 1, v131) != 1)
    {
      sub_10007ABFC(v139);
      v140 = v141;
      (*(v132 + 8))(v138, v131);
    }

    v142 = sub_10007AB7C();
    v149[2](v149, v140, 0, v142);

    sub_100008824(v151, &unk_10009ED10, &qword_10007D310);
  }
}

void sub_10003C284(uint64_t a1, void *a2, _TtC40com_apple_CloudSharingUI_AddParticipants15InitiateSharing *a3, _TtC40com_apple_CloudSharingUI_AddParticipants15InitiateSharing *a4, uint64_t a5, uint64_t a6, int a7, const void *a8)
{
  v172 = a7;
  v173 = a5;
  v174 = a6;
  v176 = a4;
  v165 = a2;
  v11 = sub_10007AA3C();
  __chkstk_darwin(v11 - 8);
  v158 = &v156 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v160 = sub_10007AA4C();
  v159 = *(v160 - 8);
  __chkstk_darwin(v160);
  v157 = &v156 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10007AC4C();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v156 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_10007AE2C();
  v163 = *(v18 - 8);
  v19 = __chkstk_darwin(v18);
  v21 = &v156 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v19);
  v168 = &v156 - v23;
  v24 = __chkstk_darwin(v22);
  v167 = &v156 - v25;
  v26 = __chkstk_darwin(v24);
  v166 = &v156 - v27;
  v28 = __chkstk_darwin(v26);
  v164 = &v156 - v29;
  v30 = __chkstk_darwin(v28);
  v175 = &v156 - v31;
  __chkstk_darwin(v30);
  v33 = &v156 - v32;
  v170 = swift_allocObject();
  *(v170 + 16) = a8;
  v161 = a8;
  _Block_copy(a8);
  sub_10007AE0C();
  v34 = *(v15 + 16);
  v162 = a1;
  v34(v17, a1, v14);
  v35 = sub_10007AE1C();
  v36 = sub_10007B41C();
  v37 = os_log_type_enabled(v35, v36);
  v171 = a3;
  v177 = v18;
  v169 = v21;
  if (v37)
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    aBlock[0] = v39;
    *v38 = 136315138;
    sub_100038358(&qword_10009EB10, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v40 = sub_10007B69C();
    v42 = v41;
    (*(v15 + 8))(v17, v14);
    v43 = sub_100037C08(v40, v42, aBlock);
    v44 = v42;
    v18 = v177;
    v44, v45, v46, v47, v48, v49, v50, v51;
    *(v38 + 4) = v43;
    _os_log_impl(&_mh_execute_header, v35, v36, "callForSharingURLAddToShare sharingURL: %s", v38, 0xCu);
    sub_10000585C(v39);

    a3 = v171;
  }

  else
  {

    (*(v15 + 8))(v17, v14);
  }

  v52 = *(v163 + 8);
  v52(v33, v18);
  sub_10007AE0C();
  v53 = v165;
  v54 = sub_10007AE1C();
  v55 = sub_10007B41C();

  v56 = os_log_type_enabled(v54, v55);
  v57 = v167;
  if (v56)
  {
    v58 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    *v58 = 138412290;
    *(v58 + 4) = v53;
    *v59 = v53;
    v60 = v53;
    _os_log_impl(&_mh_execute_header, v54, v55, "callForSharingURLAddToShare containerSetupInfo: %@", v58, 0xCu);
    sub_100008824(v59, &qword_10009F570, &qword_10007DAF0);
  }

  v165 = v53;

  v52(v175, v18);
  v61 = v164;
  sub_10007AE0C();

  v62 = sub_10007AE1C();
  v63 = sub_10007B3DC();
  a3, v64, v65, v66, v67, v68, v69, v70;
  if (os_log_type_enabled(v62, v63))
  {
    v71 = swift_slowAlloc();
    v72 = swift_slowAlloc();
    aBlock[0] = v72;
    *v71 = 136315138;
    v73 = sub_10007B2BC();
    v75 = v74;
    v76 = sub_100037C08(v73, v74, aBlock);
    v75, v77, v78, v79, v80, v81, v82, v83;
    *(v71 + 4) = v76;
    v18 = v177;
    _os_log_impl(&_mh_execute_header, v62, v63, "callForSharingURLAddToShare emailAddresses: %s", v71, 0xCu);
    sub_10000585C(v72);
  }

  v52(v61, v18);
  v84 = v176;
  v85 = v166;
  sub_10007AE0C();

  v86 = sub_10007AE1C();
  v87 = sub_10007B3DC();
  v84, v88, v89, v90, v91, v92, v93, v94;
  if (os_log_type_enabled(v86, v87))
  {
    v95 = swift_slowAlloc();
    v96 = swift_slowAlloc();
    aBlock[0] = v96;
    *v95 = 136315138;
    v97 = sub_10007B2BC();
    v99 = v98;
    v100 = sub_100037C08(v97, v98, aBlock);
    v99, v101, v102, v103, v104, v105, v106, v107;
    *(v95 + 4) = v100;
    v18 = v177;
    _os_log_impl(&_mh_execute_header, v86, v87, "callForSharingURLAddToShare phoneNumbers: %s", v95, 0xCu);
    sub_10000585C(v96);
  }

  v52(v85, v18);
  sub_10007AE0C();
  v108 = sub_10007AE1C();
  v109 = sub_10007B3DC();
  v110 = os_log_type_enabled(v108, v109);
  v111 = v165;
  if (v110)
  {
    v112 = swift_slowAlloc();
    v113 = swift_slowAlloc();
    *v112 = 136315138;
    v178 = v173;
    aBlock[0] = v113;
    type metadata accessor for ParticipantPermission(0);
    v114 = sub_10007B1AC();
    v116 = v115;
    v117 = sub_100037C08(v114, v115, aBlock);
    v116, v118, v119, v120, v121, v122, v123, v124;
    *(v112 + 4) = v117;
    v18 = v177;
    _os_log_impl(&_mh_execute_header, v108, v109, "callForSharingURLAddToShare accessType: %s", v112, 0xCu);
    sub_10000585C(v113);
  }

  v52(v57, v18);
  v125 = v168;
  sub_10007AE0C();
  v126 = sub_10007AE1C();
  v127 = sub_10007B3DC();
  if (os_log_type_enabled(v126, v127))
  {
    v128 = swift_slowAlloc();
    v129 = swift_slowAlloc();
    *v128 = 136315138;
    v178 = v174;
    aBlock[0] = v129;
    type metadata accessor for ParticipantPermission(0);
    v130 = sub_10007B1AC();
    v132 = v131;
    v133 = sub_100037C08(v130, v131, aBlock);
    v132, v134, v135, v136, v137, v138, v139, v140;
    *(v128 + 4) = v133;
    v18 = v177;
    _os_log_impl(&_mh_execute_header, v126, v127, "callForSharingURLAddToShare permissionType: %s", v128, 0xCu);
    sub_10000585C(v129);
  }

  v52(v125, v18);
  v141 = v169;
  sub_10007AE0C();
  v142 = sub_10007AE1C();
  v143 = sub_10007B3DC();
  if (os_log_type_enabled(v142, v143))
  {
    v144 = swift_slowAlloc();
    *v144 = 67109120;
    *(v144 + 4) = v172 & 1;
    _os_log_impl(&_mh_execute_header, v142, v143, "callForSharingURLAddToShare allowOthersToInvite: %{BOOL}d", v144, 8u);
  }

  v52(v141, v18);
  if (qword_10009DF50 != -1)
  {
    swift_once();
  }

  v145 = qword_1000A23D0;
  if (qword_1000A23D0)
  {
    swift_unknownObjectRetain();
    sub_10007ABFC(&v180);
    v147 = v146;
    v148.super.isa = sub_10007B29C().super.isa;
    v149.super.isa = sub_10007B29C().super.isa;
    v150 = swift_allocObject();
    v151 = v170;
    *(v150 + 16) = sub_100046174;
    *(v150 + 24) = v151;
    aBlock[4] = sub_100046438;
    aBlock[5] = v150;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10002DDAC;
    aBlock[3] = &unk_100097798;
    v152 = _Block_copy(aBlock);

    LOBYTE(v155) = v172 & 1;
    [v145 addToShareFromSharingURL:v147 containerSetupInfo:v111 emailAddresses:v148.super.isa phoneNumbers:v149.super.isa accessType:v173 permissionType:v174 allowOthersToInvite:v155 withReply:v152];
    _Block_release(v152);

    swift_unknownObjectRelease();
  }

  else
  {
    sub_10007AA2C();
    sub_1000381B0(_swiftEmptyArrayStorage);
    sub_100038358(&qword_10009E938, &type metadata accessor for CocoaError, &protocol conformance descriptor for CocoaError);
    v153 = v157;
    v154 = v160;
    sub_10007AB6C();
    v148.super.isa = sub_10007AA1C();
    (*(v159 + 8))(v153, v154);
    v149.super.isa = sub_10007AB7C();
    (*(v161 + 2))(v161, 0, 0, v149.super.isa);
  }
}

void sub_10003CF68(uint64_t a1, void *a2, void (**a3)(const void *, void, void *))
{
  v65 = a2;
  v5 = sub_10007AA3C();
  __chkstk_darwin(v5 - 8);
  v60 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10007AA4C();
  v61 = *(v7 - 8);
  v62 = v7;
  __chkstk_darwin(v7);
  v59 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10007AC4C();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10007AE2C();
  v64 = *(v13 - 8);
  v14 = __chkstk_darwin(v13);
  v16 = &v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v55 - v17;
  v66 = swift_allocObject();
  *(v66 + 16) = a3;
  v58 = a3;
  _Block_copy(a3);
  sub_10007AE0C();
  v19 = *(v10 + 16);
  v63 = a1;
  v19(v12, a1, v9);
  v20 = sub_10007AE1C();
  v21 = sub_10007B41C();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    aBlock[0] = v57;
    *v22 = 136315138;
    sub_100038358(&qword_10009EB10, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v23 = sub_10007B69C();
    v56 = v13;
    v24 = v16;
    v26 = v25;
    (*(v10 + 8))(v12, v9);
    v27 = sub_100037C08(v23, v26, aBlock);
    v28 = v26;
    v16 = v24;
    v28, v29, v30, v31, v32, v33, v34, v35;
    *(v22 + 4) = v27;
    _os_log_impl(&_mh_execute_header, v20, v21, "callForSharingURLRemoveShare sharingURL: %s", v22, 0xCu);
    sub_10000585C(v57);

    v36 = *(v64 + 8);
    v37 = v56;
    v36(v18, v56);
  }

  else
  {

    (*(v10 + 8))(v12, v9);
    v36 = *(v64 + 8);
    v36(v18, v13);
    v37 = v13;
  }

  sub_10007AE0C();
  v38 = v65;
  v39 = v65;
  v40 = sub_10007AE1C();
  v41 = sub_10007B41C();

  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    *v42 = 138412290;
    *(v42 + 4) = v39;
    *v43 = v38;
    v44 = v39;
    _os_log_impl(&_mh_execute_header, v40, v41, "callForSharingURLRemoveShare containerSetupInfo: %@", v42, 0xCu);
    sub_100008824(v43, &qword_10009F570, &qword_10007DAF0);
  }

  v36(v16, v37);
  if (qword_10009DF50 != -1)
  {
    swift_once();
  }

  v45 = qword_1000A23D0;
  if (qword_1000A23D0)
  {
    swift_unknownObjectRetain();
    sub_10007ABFC(v46);
    v48 = v47;
    v49 = swift_allocObject();
    v50 = v66;
    *(v49 + 16) = sub_10004636C;
    *(v49 + 24) = v50;
    aBlock[4] = sub_100046254;
    aBlock[5] = v49;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10002E714;
    aBlock[3] = &unk_100097720;
    v51 = _Block_copy(aBlock);

    [v45 removeFromShareFromSharingURL:v48 containerSetupInfo:v39 withReply:v51];
    _Block_release(v51);

    swift_unknownObjectRelease();
  }

  else
  {
    sub_10007AA2C();
    sub_1000381B0(_swiftEmptyArrayStorage);
    sub_100038358(&qword_10009E938, &type metadata accessor for CocoaError, &protocol conformance descriptor for CocoaError);
    v52 = v59;
    v53 = v62;
    sub_10007AB6C();
    v54 = sub_10007AA1C();
    (*(v61 + 8))(v52, v53);
    v48 = sub_10007AB7C();
    v58[2](v58, 0, v48);
  }
}

void sub_10003D674(void *a1, void *a2, void (**a3)(const void *, void, void *))
{
  v6 = sub_10007AA3C();
  __chkstk_darwin(v6 - 8);
  v47 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10007AA4C();
  v48 = *(v8 - 8);
  v49 = v8;
  __chkstk_darwin(v8);
  v46 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10007AE2C();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v44 - v15;
  v17 = swift_allocObject();
  v50 = a3;
  v51 = v17;
  *(v17 + 16) = a3;
  _Block_copy(a3);
  sub_10007AE0C();
  v18 = a1;
  v19 = sub_10007AE1C();
  v20 = sub_10007B41C();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = a2;
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    *v22 = 138412290;
    *(v22 + 4) = v18;
    *v23 = v18;
    v24 = v18;
    _os_log_impl(&_mh_execute_header, v19, v20, "callForRemoveShare share: %@", v22, 0xCu);
    sub_100008824(v23, &qword_10009F570, &qword_10007DAF0);

    a2 = v21;
  }

  v25 = *(v11 + 8);
  v25(v16, v10);
  sub_10007AE0C();
  v26 = a2;
  v27 = sub_10007AE1C();
  v28 = sub_10007B41C();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v45 = v25;
    v30 = v10;
    v31 = v18;
    v32 = a2;
    v33 = v29;
    v34 = swift_slowAlloc();
    *v33 = 138412290;
    *(v33 + 4) = v26;
    *v34 = v32;
    v18 = v31;
    v10 = v30;
    v25 = v45;
    v35 = v26;
    _os_log_impl(&_mh_execute_header, v27, v28, "callForRemoveShare containerSetupInfo: %@", v33, 0xCu);
    sub_100008824(v34, &qword_10009F570, &qword_10007DAF0);
  }

  v25(v14, v10);
  if (qword_10009DF50 != -1)
  {
    swift_once();
  }

  v36 = qword_1000A23D0;
  if (qword_1000A23D0)
  {
    v37 = swift_allocObject();
    v38 = v51;
    *(v37 + 16) = sub_10004636C;
    *(v37 + 24) = v38;
    aBlock[4] = sub_100046254;
    aBlock[5] = v37;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10002E714;
    aBlock[3] = &unk_1000976A8;
    v39 = _Block_copy(aBlock);
    swift_unknownObjectRetain();

    [v36 removeFromShare:v18 containerSetupInfo:v26 withReply:v39];
    _Block_release(v39);

    swift_unknownObjectRelease();
  }

  else
  {
    sub_10007AA2C();
    sub_1000381B0(_swiftEmptyArrayStorage);
    sub_100038358(&qword_10009E938, &type metadata accessor for CocoaError, &protocol conformance descriptor for CocoaError);
    v40 = v46;
    v41 = v49;
    sub_10007AB6C();
    v42 = sub_10007AA1C();
    (*(v48 + 8))(v40, v41);
    v43 = sub_10007AB7C();
    v50[2](v50, 0, v43);
  }
}

void sub_10003DC2C(uint64_t a1, void (**a2)(void, void, void))
{
  v4 = sub_10007AA3C();
  __chkstk_darwin(v4 - 8);
  v47 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10007AA4C();
  v48 = *(v6 - 8);
  v49 = v6;
  __chkstk_darwin(v6);
  v46 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10007AC4C();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10007AE2C();
  v50 = *(v12 - 8);
  v51 = v12;
  __chkstk_darwin(v12);
  v14 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = swift_allocObject();
  *(v15 + 16) = a2;
  _Block_copy(a2);
  sub_10007AE0C();
  (*(v9 + 16))(v11, a1, v8);
  v16 = sub_10007AE1C();
  v17 = sub_10007B41C();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v45 = v15;
    v19 = v18;
    v43 = swift_slowAlloc();
    aBlock[0] = v43;
    *v19 = 136315138;
    sub_100038358(&qword_10009EB10, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v20 = sub_10007B69C();
    v44 = a1;
    v21 = a2;
    v23 = v22;
    (*(v9 + 8))(v11, v8);
    v24 = sub_100037C08(v20, v23, aBlock);
    v25 = v23;
    a2 = v21;
    v25, v26, v27, v28, v29, v30, v31, v32;
    *(v19 + 4) = v24;
    _os_log_impl(&_mh_execute_header, v16, v17, "callForFileURLRemoveShare url: %s", v19, 0xCu);
    sub_10000585C(v43);

    v15 = v45;
  }

  else
  {

    (*(v9 + 8))(v11, v8);
  }

  (*(v50 + 8))(v14, v51);
  if (qword_10009DF50 != -1)
  {
    swift_once();
  }

  v33 = qword_1000A23D0;
  if (qword_1000A23D0)
  {
    swift_unknownObjectRetain();
    sub_10007ABFC(v34);
    v36 = v35;
    v37 = swift_allocObject();
    *(v37 + 16) = sub_10004616C;
    *(v37 + 24) = v15;
    aBlock[4] = sub_100046254;
    aBlock[5] = v37;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10002E714;
    aBlock[3] = &unk_100097630;
    v38 = _Block_copy(aBlock);

    [v33 removeFromShareForFileURL:v36 withReply:v38];
    _Block_release(v38);

    swift_unknownObjectRelease();
  }

  else
  {
    sub_10007AA2C();
    sub_1000381B0(_swiftEmptyArrayStorage);
    sub_100038358(&qword_10009E938, &type metadata accessor for CocoaError, &protocol conformance descriptor for CocoaError);
    v39 = v46;
    v40 = v49;
    sub_10007AB6C();
    v41 = sub_10007AA1C();
    (*(v48 + 8))(v39, v40);
    v36 = sub_10007AB7C();
    (a2)[2](a2, 0, v36);
  }
}

void sub_10003E1E0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _TtC40com_apple_CloudSharingUI_AddParticipants15InitiateSharing *a5, uint64_t a6, unint64_t a7, const void *a8)
{
  v153 = a7;
  v154 = a4;
  v157 = a5;
  v158 = a3;
  v12 = sub_10007AA3C();
  __chkstk_darwin(v12 - 8);
  v137 = &v135 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v139 = sub_10007AA4C();
  v138 = *(v139 - 8);
  __chkstk_darwin(v139);
  v136 = &v135 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v142 = sub_1000057A0(&unk_10009ED10, &qword_10007D310);
  v15 = __chkstk_darwin(v142);
  v145 = &v135 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v141 = &v135 - v18;
  __chkstk_darwin(v17);
  v148 = &v135 - v19;
  v20 = sub_10007AC4C();
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v23 = &v135 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v159 = sub_10007AE2C();
  v24 = *(v159 - 1);
  v25 = __chkstk_darwin(v159);
  v156 = &v135 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __chkstk_darwin(v25);
  v149 = &v135 - v28;
  v29 = __chkstk_darwin(v27);
  v155 = &v135 - v30;
  v31 = __chkstk_darwin(v29);
  v147 = &v135 - v32;
  __chkstk_darwin(v31);
  v34 = &v135 - v33;
  v151 = swift_allocObject();
  *(v151 + 16) = a8;
  v140 = a8;
  _Block_copy(a8);
  sub_10007AE0C();
  v35 = *(v21 + 16);
  v146 = a1;
  v35(v23, a1, v20);
  v36 = sub_10007AE1C();
  v37 = sub_10007B41C();
  v38 = os_log_type_enabled(v36, v37);
  v152 = a6;
  v144 = v21;
  if (v38)
  {
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v150 = a2;
    v143 = v40;
    aBlock[0] = v40;
    *v39 = 136315138;
    sub_100038358(&qword_10009EB10, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v41 = sub_10007B69C();
    v42 = v24;
    v44 = v43;
    v135 = *(v21 + 8);
    v135(v23, v20);
    v45 = sub_100037C08(v41, v44, aBlock);
    v46 = v44;
    v24 = v42;
    v46, v47, v48, v49, v50, v51, v52, v53;
    *(v39 + 4) = v45;
    _os_log_impl(&_mh_execute_header, v36, v37, "callForMailContent sharingURL: %s", v39, 0xCu);
    sub_10000585C(v143);
    a2 = v150;
  }

  else
  {

    v135 = *(v21 + 8);
    v135(v23, v20);
  }

  v54 = *(v24 + 8);
  v55 = v159;
  (v54)(v34, v159);
  v150 = v20;
  v56 = v147;
  sub_10007AE0C();
  v57 = a2;
  v58 = sub_10007AE1C();
  v59 = sub_10007B41C();

  v60 = os_log_type_enabled(v58, v59);
  v159 = v54;
  v61 = v148;
  if (v60)
  {
    v62 = swift_slowAlloc();
    v63 = v55;
    v64 = swift_slowAlloc();
    *v62 = 138412290;
    *(v62 + 4) = v57;
    *v64 = v57;
    v65 = v57;
    _os_log_impl(&_mh_execute_header, v58, v59, "callForMailContent share: %@", v62, 0xCu);
    sub_100008824(v64, &qword_10009F570, &qword_10007DAF0);
    v55 = v63;

    v54 = v159;
  }

  v143 = v57;

  (v54)(v56, v55);
  v66 = v155;
  sub_10007AE0C();
  sub_1000187C8(v158, v61, &unk_10009ED10, &qword_10007D310);
  v67 = sub_10007AE1C();
  v68 = sub_10007B41C();
  if (os_log_type_enabled(v67, v68))
  {
    v69 = swift_slowAlloc();
    v70 = swift_slowAlloc();
    aBlock[0] = v70;
    *v69 = 136315138;
    v71 = v55;
    sub_1000187C8(v61, v141, &unk_10009ED10, &qword_10007D310);
    v72 = sub_10007B1AC();
    v73 = v61;
    v74 = v72;
    v76 = v75;
    sub_100008824(v73, &unk_10009ED10, &qword_10007D310);
    v77 = sub_100037C08(v74, v76, aBlock);
    v76, v78, v79, v80, v81, v82, v83, v84;
    *(v69 + 4) = v77;
    v55 = v71;
    _os_log_impl(&_mh_execute_header, v67, v68, "callForMailContent fileURL: %s", v69, 0xCu);
    sub_10000585C(v70);
    v54 = v159;

    v85 = v155;
    v86 = v71;
  }

  else
  {

    sub_100008824(v61, &unk_10009ED10, &qword_10007D310);
    v85 = v66;
    v86 = v55;
  }

  (v54)(v85, v86);
  v88 = v152;
  v87 = v153;
  v89 = v157;
  v90 = v149;
  sub_10007AE0C();

  v91 = sub_10007AE1C();
  v92 = sub_10007B3DC();
  v89, v93, v94, v95, v96, v97, v98, v99;
  if (os_log_type_enabled(v91, v92))
  {
    v100 = swift_slowAlloc();
    v101 = swift_slowAlloc();
    aBlock[0] = v101;
    *v100 = 136315138;
    *(v100 + 4) = sub_100037C08(v154, v89, aBlock);
    _os_log_impl(&_mh_execute_header, v91, v92, "callForMailContent appName: %s", v100, 0xCu);
    sub_10000585C(v101);
    v54 = v159;
  }

  (v54)(v90, v55);
  v102 = v156;
  sub_10007AE0C();
  sub_100038418(v88, v87);
  v103 = sub_10007AE1C();
  v104 = sub_10007B3EC();
  sub_10003846C(v88, v87);
  if (os_log_type_enabled(v103, v104))
  {
    v105 = swift_slowAlloc();
    v106 = swift_slowAlloc();
    aBlock[0] = v106;
    *v105 = 136315138;
    v107 = sub_10007AC5C();
    v108 = v55;
    v110 = v109;
    v111 = sub_100037C08(v107, v109, aBlock);
    v110, v112, v113, v114, v115, v116, v117, v118;
    *(v105 + 4) = v111;
    _os_log_impl(&_mh_execute_header, v103, v104, "callForMailContent appIconData: %s", v105, 0xCu);
    sub_10000585C(v106);

    (v159)(v156, v108);
  }

  else
  {

    (v54)(v102, v55);
  }

  v119 = v150;
  if (qword_10009DF50 != -1)
  {
    swift_once();
  }

  v120 = qword_1000A23D0;
  if (qword_1000A23D0)
  {
    swift_unknownObjectRetain();
    sub_10007ABFC(v121);
    v123 = v122;
    v124 = v145;
    sub_1000187C8(v158, v145, &unk_10009ED10, &qword_10007D310);
    if ((*(v144 + 48))(v124, 1, v119) == 1)
    {
      v126 = 0;
    }

    else
    {
      sub_10007ABFC(v125);
      v126 = v131;
      v135(v124, v119);
    }

    v129 = sub_10007B15C();
    isa = sub_10007AC6C().super.isa;
    v132 = swift_allocObject();
    v133 = v151;
    *(v132 + 16) = sub_100046164;
    *(v132 + 24) = v133;
    aBlock[4] = sub_100046374;
    aBlock[5] = v132;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10002FF84;
    aBlock[3] = &unk_1000975B8;
    v134 = _Block_copy(aBlock);

    [v120 mailContentFromSharingURL:v123 share:v143 fileURL:v126 appName:v129 appIconData:isa withReply:v134];
    _Block_release(v134);

    swift_unknownObjectRelease();
  }

  else
  {
    sub_10007AA2C();
    sub_1000381B0(_swiftEmptyArrayStorage);
    sub_100038358(&qword_10009E938, &type metadata accessor for CocoaError, &protocol conformance descriptor for CocoaError);
    v127 = v136;
    v128 = v139;
    sub_10007AB6C();
    v129 = sub_10007AA1C();
    (*(v138 + 8))(v127, v128);
    isa = sub_10007AB7C();
    (*(v140 + 2))(v140, 0, 0, isa);
  }
}

void sub_10003EEBC(uint64_t a1, void *a2, void (**a3)(const void *, void, void *))
{
  v65 = a2;
  v5 = sub_10007AA3C();
  __chkstk_darwin(v5 - 8);
  v60 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10007AA4C();
  v61 = *(v7 - 8);
  v62 = v7;
  __chkstk_darwin(v7);
  v59 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10007AC4C();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10007AE2C();
  v64 = *(v13 - 8);
  v14 = __chkstk_darwin(v13);
  v16 = &v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v55 - v17;
  v66 = swift_allocObject();
  *(v66 + 16) = a3;
  v58 = a3;
  _Block_copy(a3);
  sub_10007AE0C();
  v19 = *(v10 + 16);
  v63 = a1;
  v19(v12, a1, v9);
  v20 = sub_10007AE1C();
  v21 = sub_10007B41C();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    aBlock[0] = v57;
    *v22 = 136315138;
    sub_100038358(&qword_10009EB10, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v23 = sub_10007B69C();
    v56 = v13;
    v24 = v16;
    v26 = v25;
    (*(v10 + 8))(v12, v9);
    v27 = sub_100037C08(v23, v26, aBlock);
    v28 = v26;
    v16 = v24;
    v28, v29, v30, v31, v32, v33, v34, v35;
    *(v22 + 4) = v27;
    _os_log_impl(&_mh_execute_header, v20, v21, "callForMetadataFromShareURL sharingURL: %s", v22, 0xCu);
    sub_10000585C(v57);

    v36 = *(v64 + 8);
    v37 = v56;
    v36(v18, v56);
  }

  else
  {

    (*(v10 + 8))(v12, v9);
    v36 = *(v64 + 8);
    v36(v18, v13);
    v37 = v13;
  }

  sub_10007AE0C();
  v38 = v65;
  v39 = v65;
  v40 = sub_10007AE1C();
  v41 = sub_10007B41C();

  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    *v42 = 138412290;
    *(v42 + 4) = v39;
    *v43 = v38;
    v44 = v39;
    _os_log_impl(&_mh_execute_header, v40, v41, "callForMetadataFromShareURL containerSetupInfo: %@", v42, 0xCu);
    sub_100008824(v43, &qword_10009F570, &qword_10007DAF0);
  }

  v36(v16, v37);
  if (qword_10009DF50 != -1)
  {
    swift_once();
  }

  v45 = qword_1000A23D0;
  if (qword_1000A23D0)
  {
    swift_unknownObjectRetain();
    sub_10007ABFC(v46);
    v48 = v47;
    v49 = swift_allocObject();
    v50 = v66;
    *(v49 + 16) = sub_10004615C;
    *(v49 + 24) = v50;
    aBlock[4] = sub_10004625C;
    aBlock[5] = v49;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10001C29C;
    aBlock[3] = &unk_100097540;
    v51 = _Block_copy(aBlock);

    [v45 getMetadataFromShareFromSharingURL:v48 containerSetupInfo:v39 withReply:v51];
    _Block_release(v51);

    swift_unknownObjectRelease();
  }

  else
  {
    sub_10007AA2C();
    sub_1000381B0(_swiftEmptyArrayStorage);
    sub_100038358(&qword_10009E938, &type metadata accessor for CocoaError, &protocol conformance descriptor for CocoaError);
    v52 = v59;
    v53 = v62;
    sub_10007AB6C();
    v54 = sub_10007AA1C();
    (*(v61 + 8))(v52, v53);
    v48 = sub_10007AB7C();
    v58[2](v58, 0, v48);
  }
}

uint64_t sub_10003F5C8(void *a1, void *a2, void (**a3)(const void *, void *, void, void *))
{
  v6 = sub_10007AA3C();
  __chkstk_darwin(v6 - 8);
  v54[1] = v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10007AA4C();
  v55 = *(v8 - 8);
  v56 = v8;
  __chkstk_darwin(v8);
  v54[0] = v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000057A0(&unk_10009ED10, &qword_10007D310);
  v11 = __chkstk_darwin(v10 - 8);
  v57 = v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v58 = v54 - v13;
  v14 = sub_10007AE2C();
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v18 = v54 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = v54 - v19;
  v21 = swift_allocObject();
  v59 = a3;
  v60 = v21;
  *(v21 + 16) = a3;
  _Block_copy(a3);
  sub_10007AE0C();
  v22 = a1;
  v23 = sub_10007AE1C();
  v24 = sub_10007B41C();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = a2;
    v27 = swift_slowAlloc();
    *v25 = 138412290;
    *(v25 + 4) = v22;
    *v27 = v22;
    v28 = v22;
    _os_log_impl(&_mh_execute_header, v23, v24, "callForUpdateShare share: %@", v25, 0xCu);
    sub_100008824(v27, &qword_10009F570, &qword_10007DAF0);
    a2 = v26;
  }

  v29 = *(v15 + 8);
  v29(v20, v14);
  sub_10007AE0C();
  v30 = a2;
  v31 = sub_10007AE1C();
  v32 = sub_10007B41C();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v35 = a2;
    v36 = v34;
    *v33 = 138412290;
    *(v33 + 4) = v30;
    *v34 = v35;
    v37 = v30;
    _os_log_impl(&_mh_execute_header, v31, v32, "callForUpdateShare containerSetupInfo: %@", v33, 0xCu);
    sub_100008824(v36, &qword_10009F570, &qword_10007DAF0);
  }

  v29(v18, v14);
  if (qword_10009DF50 != -1)
  {
    swift_once();
  }

  v38 = qword_1000A23D0;
  if (qword_1000A23D0)
  {
    v39 = swift_allocObject();
    v40 = v60;
    *(v39 + 16) = sub_100046368;
    *(v39 + 24) = v40;
    aBlock[4] = sub_100046430;
    aBlock[5] = v39;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10002AAC0;
    aBlock[3] = &unk_1000974C8;
    v41 = _Block_copy(aBlock);
    swift_unknownObjectRetain();

    [v38 updateShare:v22 containerSetupInfo:v30 withReply:v41];
    _Block_release(v41);

    return swift_unknownObjectRelease();
  }

  else
  {
    v43 = sub_10007AC4C();
    v44 = *(v43 - 8);
    v45 = v58;
    (*(v44 + 56))(v58, 1, 1, v43);
    sub_10007AA2C();
    sub_1000381B0(_swiftEmptyArrayStorage);
    sub_100038358(&qword_10009E938, &type metadata accessor for CocoaError, &protocol conformance descriptor for CocoaError);
    v46 = v54[0];
    v47 = v56;
    sub_10007AB6C();
    v48 = sub_10007AA1C();
    (*(v55 + 8))(v46, v47);
    v49 = v57;
    sub_1000187C8(v45, v57, &unk_10009ED10, &qword_10007D310);
    v51 = 0;
    if ((*(v44 + 48))(v49, 1, v43) != 1)
    {
      sub_10007ABFC(v50);
      v51 = v52;
      (*(v44 + 8))(v49, v43);
    }

    v53 = sub_10007AB7C();
    v59[2](v59, v51, 0, v53);

    sub_100008824(v45, &unk_10009ED10, &qword_10007D310);
  }
}

void sub_10003FCD8(void *a1, void (**a2)(void, void, void))
{
  v4 = sub_10007AA3C();
  __chkstk_darwin(v4 - 8);
  v33 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10007AA4C();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v32 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10007AE2C();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  _Block_copy(a2);
  sub_10007AE0C();
  v14 = a1;
  v15 = sub_10007AE1C();
  v16 = sub_10007B41C();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v31 = a2;
    v18 = v17;
    v19 = swift_slowAlloc();
    v30 = v13;
    v20 = v7;
    v21 = v6;
    v22 = v19;
    *v18 = 138412290;
    *(v18 + 4) = v14;
    *v19 = v14;
    v23 = v14;
    _os_log_impl(&_mh_execute_header, v15, v16, "callForCurrentUserSharingStatus share: %@", v18, 0xCu);
    sub_100008824(v22, &qword_10009F570, &qword_10007DAF0);
    v6 = v21;
    v7 = v20;
    v13 = v30;

    a2 = v31;
  }

  (*(v10 + 8))(v12, v9);
  if (qword_10009DF50 != -1)
  {
    swift_once();
  }

  v24 = qword_1000A23D0;
  if (qword_1000A23D0)
  {
    v25 = swift_allocObject();
    *(v25 + 16) = sub_100046370;
    *(v25 + 24) = v13;
    aBlock[4] = sub_100046258;
    aBlock[5] = v25;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000316DC;
    aBlock[3] = &unk_100097450;
    v26 = _Block_copy(aBlock);
    swift_unknownObjectRetain();

    [v24 currentUserSharingStatusFor:v14 withReply:v26];
    _Block_release(v26);

    swift_unknownObjectRelease();
  }

  else
  {
    sub_10007AA2C();
    sub_1000381B0(_swiftEmptyArrayStorage);
    sub_100038358(&qword_10009E938, &type metadata accessor for CocoaError, &protocol conformance descriptor for CocoaError);
    v27 = v32;
    sub_10007AB6C();
    v28 = sub_10007AA1C();
    (*(v7 + 8))(v27, v6);
    v29 = sub_10007AB7C();
    (a2)[2](a2, 0, v29);
  }
}

void sub_100040168(void *a1, void *a2, _TtC40com_apple_CloudSharingUI_AddParticipants15InitiateSharing *a3, _TtC40com_apple_CloudSharingUI_AddParticipants15InitiateSharing *a4, void (**a5)(const void *, void *, void, void *))
{
  v128 = a4;
  v129 = a3;
  v8 = sub_10007AA3C();
  __chkstk_darwin(v8 - 8);
  v117 = &v115 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10007AA4C();
  v118 = *(v10 - 8);
  v119 = v10;
  __chkstk_darwin(v10);
  v116 = &v115 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1000057A0(&unk_10009ED10, &qword_10007D310);
  v13 = __chkstk_darwin(v12 - 8);
  v120 = &v115 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v122 = &v115 - v15;
  v127 = sub_10007AE2C();
  v16 = *(v127 - 8);
  v17 = __chkstk_darwin(v127);
  v19 = &v115 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v17);
  v123 = &v115 - v21;
  v22 = __chkstk_darwin(v20);
  v24 = &v115 - v23;
  __chkstk_darwin(v22);
  v26 = &v115 - v25;
  v126 = swift_allocObject();
  *(v126 + 16) = a5;
  v121 = a5;
  _Block_copy(a5);
  sub_10007AE0C();
  v27 = a1;
  v28 = sub_10007AE1C();
  v29 = sub_10007B41C();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = a2;
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    *v31 = 138412290;
    *(v31 + 4) = v27;
    *v32 = v27;
    v33 = v27;
    _os_log_impl(&_mh_execute_header, v28, v29, "callForAddParticipantsToShare share: %@", v31, 0xCu);
    sub_100008824(v32, &qword_10009F570, &qword_10007DAF0);

    a2 = v30;
  }

  v34 = *(v16 + 8);
  v35 = v127;
  v34(v26, v127);
  sub_10007AE0C();
  v36 = a2;
  v37 = sub_10007AE1C();
  v38 = sub_10007B41C();

  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    *v39 = 138412290;
    *(v39 + 4) = v36;
    *v40 = v36;
    v41 = v36;
    _os_log_impl(&_mh_execute_header, v37, v38, "callForAddParticipantsToShare containerSetupInfo: %@", v39, 0xCu);
    sub_100008824(v40, &qword_10009F570, &qword_10007DAF0);

    v35 = v127;
  }

  v34(v24, v35);
  v42 = v123;
  sub_10007AE0C();
  v43 = v129;

  v44 = sub_10007AE1C();
  v45 = sub_10007B3DC();
  v43, v46, v47, v48, v49, v50, v51, v52;
  v53 = os_log_type_enabled(v44, v45);
  v124 = v36;
  v125 = v27;
  if (v53)
  {
    v54 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    aBlock[0] = v55;
    *v54 = 136315138;
    v56 = sub_10007B2BC();
    v57 = v42;
    v59 = v58;
    v60 = sub_100037C08(v56, v58, aBlock);
    v59, v61, v62, v63, v64, v65, v66, v67;
    *(v54 + 4) = v60;
    _os_log_impl(&_mh_execute_header, v44, v45, "callForAddParticipantsToShare emailAddresses: %s", v54, 0xCu);
    sub_10000585C(v55);
    v35 = v127;

    v68 = v57;
  }

  else
  {

    v68 = v42;
  }

  v34(v68, v35);
  sub_10007AE0C();
  v69 = v128;

  v70 = sub_10007AE1C();
  v71 = sub_10007B3DC();
  v69, v72, v73, v74, v75, v76, v77, v78;
  if (os_log_type_enabled(v70, v71))
  {
    v79 = swift_slowAlloc();
    v80 = v35;
    v81 = swift_slowAlloc();
    aBlock[0] = v81;
    *v79 = 136315138;
    v82 = sub_10007B2BC();
    v84 = v83;
    v85 = sub_100037C08(v82, v83, aBlock);
    v84, v86, v87, v88, v89, v90, v91, v92;
    *(v79 + 4) = v85;
    _os_log_impl(&_mh_execute_header, v70, v71, "callForAddParticipantsToShare phoneNumbers: %s", v79, 0xCu);
    sub_10000585C(v81);

    v93 = v19;
    v94 = v80;
  }

  else
  {

    v93 = v19;
    v94 = v35;
  }

  v34(v93, v94);
  v96 = v124;
  v95 = v125;
  if (qword_10009DF50 != -1)
  {
    swift_once();
  }

  v97 = qword_1000A23D0;
  if (qword_1000A23D0)
  {
    swift_unknownObjectRetain();
    isa = sub_10007B29C().super.isa;
    v99 = sub_10007B29C().super.isa;
    v100 = swift_allocObject();
    v101 = v126;
    *(v100 + 16) = sub_100046368;
    *(v100 + 24) = v101;
    aBlock[4] = sub_100046430;
    aBlock[5] = v100;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10002AAC0;
    aBlock[3] = &unk_1000973D8;
    v102 = _Block_copy(aBlock);

    [v97 addParticipantsToShare:v95 containerSetupInfo:v96 emailAddresses:isa phoneNumbers:v99 withReply:v102];
    _Block_release(v102);

    swift_unknownObjectRelease();
  }

  else
  {
    v103 = sub_10007AC4C();
    v104 = *(v103 - 8);
    v105 = v122;
    (*(v104 + 56))(v122, 1, 1, v103);
    sub_10007AA2C();
    sub_1000381B0(_swiftEmptyArrayStorage);
    sub_100038358(&qword_10009E938, &type metadata accessor for CocoaError, &protocol conformance descriptor for CocoaError);
    v106 = v116;
    v107 = v119;
    sub_10007AB6C();
    v108 = sub_10007AA1C();
    (*(v118 + 8))(v106, v107);
    v109 = v105;
    v110 = v120;
    sub_1000187C8(v109, v120, &unk_10009ED10, &qword_10007D310);
    v112 = 0;
    if ((*(v104 + 48))(v110, 1, v103) != 1)
    {
      sub_10007ABFC(v111);
      v112 = v113;
      (*(v104 + 8))(v110, v103);
    }

    v114 = sub_10007AB7C();
    v121[2](v121, v112, 0, v114);

    sub_100008824(v122, &unk_10009ED10, &qword_10007D310);
  }
}

void sub_100040B34(void *a1, uint64_t a2, _TtC40com_apple_CloudSharingUI_AddParticipants15InitiateSharing *a3, _TtC40com_apple_CloudSharingUI_AddParticipants15InitiateSharing *a4, uint64_t a5, int a6, void (**a7)(const void *, void *, void, void *))
{
  LODWORD(v141) = a6;
  v144 = a3;
  v145 = a4;
  v137 = a2;
  v10 = sub_10007AA3C();
  __chkstk_darwin(v10 - 8);
  v131 = &v129 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v133 = sub_10007AA4C();
  v132 = *(v133 - 8);
  __chkstk_darwin(v133);
  v130 = &v129 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1000057A0(&unk_10009ED10, &qword_10007D310);
  v14 = __chkstk_darwin(v13 - 8);
  v134 = &v129 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v135 = &v129 - v16;
  v146 = sub_10007AE2C();
  v17 = *(v146 - 8);
  v18 = __chkstk_darwin(v146);
  v139 = &v129 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v138 = &v129 - v21;
  v22 = __chkstk_darwin(v20);
  v24 = &v129 - v23;
  v25 = __chkstk_darwin(v22);
  v27 = &v129 - v26;
  __chkstk_darwin(v25);
  v29 = &v129 - v28;
  v143 = swift_allocObject();
  *(v143 + 16) = a7;
  v136 = a7;
  _Block_copy(a7);
  sub_10007AE0C();
  v30 = a1;
  v31 = sub_10007AE1C();
  v32 = sub_10007B41C();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    *v33 = 138412290;
    *(v33 + 4) = v30;
    *v34 = v30;
    v35 = v30;
    _os_log_impl(&_mh_execute_header, v31, v32, "callForAddParticipantsToShare urlWrapper: %@", v33, 0xCu);
    sub_100008824(v34, &qword_10009F570, &qword_10007DAF0);
  }

  v140 = v30;

  v36 = *(v17 + 8);
  v37 = v146;
  v36(v29, v146);
  sub_10007AE0C();
  v38 = v144;

  v39 = sub_10007AE1C();
  v40 = sub_10007B3DC();
  v38, v41, v42, v43, v44, v45, v46, v47;
  v48 = os_log_type_enabled(v39, v40);
  v142 = a5;
  if (v48)
  {
    v49 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    aBlock[0] = v50;
    *v49 = 136315138;
    v51 = sub_10007B2BC();
    v53 = v52;
    v54 = sub_100037C08(v51, v52, aBlock);
    v53, v55, v56, v57, v58, v59, v60, v61;
    *(v49 + 4) = v54;
    _os_log_impl(&_mh_execute_header, v39, v40, "callForAddParticipantsToShare emailAddresses: %s", v49, 0xCu);
    sub_10000585C(v50);

    v37 = v146;
  }

  v36(v27, v37);
  v62 = v141;
  sub_10007AE0C();
  v63 = v145;

  v64 = sub_10007AE1C();
  v65 = sub_10007B3DC();
  v63, v66, v67, v68, v69, v70, v71, v72;
  if (os_log_type_enabled(v64, v65))
  {
    v73 = swift_slowAlloc();
    v74 = swift_slowAlloc();
    aBlock[0] = v74;
    *v73 = 136315138;
    v75 = sub_10007B2BC();
    v77 = v76;
    v78 = sub_100037C08(v75, v76, aBlock);
    v77, v79, v80, v81, v82, v83, v84, v85;
    *(v73 + 4) = v78;
    _os_log_impl(&_mh_execute_header, v64, v65, "callForAddParticipantsToShare phoneNumbers: %s", v73, 0xCu);
    sub_10000585C(v74);
    v37 = v146;
  }

  v36(v24, v37);
  v86 = v142;
  v87 = v138;
  sub_10007AE0C();
  v88 = sub_10007AE1C();
  v89 = sub_10007B3DC();
  if (os_log_type_enabled(v88, v89))
  {
    v90 = swift_slowAlloc();
    v91 = swift_slowAlloc();
    v147 = v86;
    aBlock[0] = v91;
    *v90 = 136315138;
    type metadata accessor for ParticipantPermission(0);
    v92 = sub_10007B1AC();
    v141 = v36;
    v93 = v86;
    v94 = v62;
    v95 = v87;
    v97 = v96;
    v98 = sub_100037C08(v92, v96, aBlock);
    v97, v99, v100, v101, v102, v103, v104, v105;
    *(v90 + 4) = v98;
    _os_log_impl(&_mh_execute_header, v88, v89, "callForAddParticipantsToShare permissionType: %s", v90, 0xCu);
    sub_10000585C(v91);
    v37 = v146;

    v106 = v95;
    v62 = v94;
    v86 = v93;
    v36 = v141;
    v141(v106, v37);
  }

  else
  {

    v36(v87, v37);
  }

  v107 = v139;
  sub_10007AE0C();
  v108 = sub_10007AE1C();
  v109 = sub_10007B3DC();
  if (os_log_type_enabled(v108, v109))
  {
    v110 = swift_slowAlloc();
    *v110 = 67109120;
    *(v110 + 4) = v62 & 1;
    _os_log_impl(&_mh_execute_header, v108, v109, "callForAddParticipantsToShare allowOthersToInvite: %{BOOL}d", v110, 8u);
  }

  v36(v107, v37);
  if (qword_10009DF50 != -1)
  {
    swift_once();
  }

  v111 = qword_1000A23D0;
  v112 = v140;
  if (qword_1000A23D0)
  {
    swift_unknownObjectRetain();
    isa = sub_10007B29C().super.isa;
    v114 = sub_10007B29C().super.isa;
    v115 = swift_allocObject();
    v116 = v143;
    *(v115 + 16) = sub_100046368;
    *(v115 + 24) = v116;
    aBlock[4] = sub_100046430;
    aBlock[5] = v115;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10002AAC0;
    aBlock[3] = &unk_100097360;
    v117 = _Block_copy(aBlock);

    [v111 addParticipantsToShareWithURLWrapper:v112 share:v137 emailAddresses:isa phoneNumbers:v114 permissionType:v86 allowOthersToInvite:v62 & 1 withReply:v117];
    _Block_release(v117);

    swift_unknownObjectRelease();
  }

  else
  {
    v118 = sub_10007AC4C();
    v119 = *(v118 - 8);
    v120 = v135;
    (*(v119 + 56))(v135, 1, 1, v118);
    sub_10007AA2C();
    sub_1000381B0(_swiftEmptyArrayStorage);
    sub_100038358(&qword_10009E938, &type metadata accessor for CocoaError, &protocol conformance descriptor for CocoaError);
    v121 = v130;
    v122 = v133;
    sub_10007AB6C();
    v123 = sub_10007AA1C();
    (*(v132 + 8))(v121, v122);
    v124 = v134;
    sub_1000187C8(v120, v134, &unk_10009ED10, &qword_10007D310);
    v126 = 0;
    if ((*(v119 + 48))(v124, 1, v118) != 1)
    {
      sub_10007ABFC(v125);
      v126 = v127;
      (*(v119 + 8))(v124, v118);
    }

    v128 = sub_10007AB7C();
    v136[2](v136, v126, 0, v128);

    sub_100008824(v120, &unk_10009ED10, &qword_10007D310);
  }
}

void sub_100041614(void *a1, uint64_t a2, _TtC40com_apple_CloudSharingUI_AddParticipants15InitiateSharing *a3, _TtC40com_apple_CloudSharingUI_AddParticipants15InitiateSharing *a4, _TtC40com_apple_CloudSharingUI_AddParticipants15InitiateSharing *a5, void (**a6)(const void *, void *, void, void *))
{
  v136 = a5;
  v141 = a4;
  v134 = a2;
  v9 = sub_10007AA3C();
  __chkstk_darwin(v9 - 8);
  v128[1] = v128 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10007AA4C();
  v129 = *(v11 - 8);
  v130 = v11;
  __chkstk_darwin(v11);
  v128[0] = v128 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1000057A0(&unk_10009ED10, &qword_10007D310);
  v14 = __chkstk_darwin(v13 - 8);
  v131 = v128 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v135 = v128 - v16;
  v17 = sub_10007AE2C();
  v18 = *(v17 - 8);
  v19 = __chkstk_darwin(v17);
  v138 = v128 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v19);
  v23 = v128 - v22;
  v24 = __chkstk_darwin(v21);
  v26 = v128 - v25;
  __chkstk_darwin(v24);
  v28 = v128 - v27;
  v137 = swift_allocObject();
  *(v137 + 16) = a6;
  v132 = a6;
  _Block_copy(a6);
  sub_10007AE0C();
  v29 = a1;
  v30 = sub_10007AE1C();
  v31 = sub_10007B41C();

  v32 = os_log_type_enabled(v30, v31);
  v139 = v17;
  v140 = a3;
  if (v32)
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    *v33 = 138412290;
    *(v33 + 4) = v29;
    *v34 = v29;
    v35 = v29;
    _os_log_impl(&_mh_execute_header, v30, v31, "callForAddParticipantsToShare urlWrapper: %@", v33, 0xCu);
    sub_100008824(v34, &qword_10009F570, &qword_10007DAF0);
    a3 = v140;

    v17 = v139;
  }

  v133 = v29;

  v36 = *(v18 + 8);
  v36(v28, v17);
  sub_10007AE0C();

  v37 = sub_10007AE1C();
  v38 = sub_10007B3DC();
  a3, v39, v40, v41, v42, v43, v44, v45;
  if (os_log_type_enabled(v37, v38))
  {
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    aBlock[0] = v47;
    *v46 = 136315138;
    v48 = sub_10007B2BC();
    v50 = v49;
    v51 = sub_100037C08(v48, v49, aBlock);
    v50, v52, v53, v54, v55, v56, v57, v58;
    *(v46 + 4) = v51;
    _os_log_impl(&_mh_execute_header, v37, v38, "callForAddParticipantsToShare emailAddresses: %s", v46, 0xCu);
    sub_10000585C(v47);
    v17 = v139;
  }

  v36(v26, v17);
  v59 = v136;
  v60 = v141;
  sub_10007AE0C();

  v61 = sub_10007AE1C();
  v62 = sub_10007B3DC();
  v60, v63, v64, v65, v66, v67, v68, v69;
  if (os_log_type_enabled(v61, v62))
  {
    v70 = swift_slowAlloc();
    v71 = swift_slowAlloc();
    aBlock[0] = v71;
    *v70 = 136315138;
    v72 = sub_10007B2BC();
    v74 = v73;
    v75 = sub_100037C08(v72, v73, aBlock);
    v74, v76, v77, v78, v79, v80, v81, v82;
    *(v70 + 4) = v75;
    _os_log_impl(&_mh_execute_header, v61, v62, "callForAddParticipantsToShare phoneNumbers: %s", v70, 0xCu);
    sub_10000585C(v71);
    v17 = v139;
  }

  v36(v23, v17);
  v83 = v138;
  sub_10007AE0C();

  v84 = sub_10007AE1C();
  v85 = sub_10007B3DC();
  v59, v86, v87, v88, v89, v90, v91, v92;
  if (os_log_type_enabled(v84, v85))
  {
    v93 = swift_slowAlloc();
    v94 = v17;
    v95 = swift_slowAlloc();
    aBlock[0] = v95;
    *v93 = 136315138;
    sub_100005C8C(0, &unk_10009F560, _SWCollaborationOptionsGroup_ptr);
    v96 = sub_10007B2BC();
    v98 = v97;
    v99 = sub_100037C08(v96, v97, aBlock);
    v98, v100, v101, v102, v103, v104, v105, v106;
    *(v93 + 4) = v99;
    _os_log_impl(&_mh_execute_header, v84, v85, "callForAddParticipantsToShare optionsGroups: %s", v93, 0xCu);
    sub_10000585C(v95);

    v107 = v138;
    v108 = v94;
  }

  else
  {

    v107 = v83;
    v108 = v17;
  }

  v36(v107, v108);
  if (qword_10009DF50 != -1)
  {
    swift_once();
  }

  v109 = qword_1000A23D0;
  if (qword_1000A23D0)
  {
    swift_unknownObjectRetain();
    isa = sub_10007B29C().super.isa;
    v111 = sub_10007B29C().super.isa;
    sub_100005C8C(0, &unk_10009F560, _SWCollaborationOptionsGroup_ptr);
    v112 = sub_10007B29C().super.isa;
    v113 = swift_allocObject();
    v114 = v137;
    *(v113 + 16) = sub_100046368;
    *(v113 + 24) = v114;
    aBlock[4] = sub_100046430;
    aBlock[5] = v113;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10002AAC0;
    aBlock[3] = &unk_1000972E8;
    v115 = _Block_copy(aBlock);

    [v109 addParticipantsToShareWithURLWrapper:v133 share:v134 emailAddresses:isa phoneNumbers:v111 optionsGroups:v112 withReply:v115];
    _Block_release(v115);

    swift_unknownObjectRelease();
  }

  else
  {
    v116 = sub_10007AC4C();
    v117 = *(v116 - 8);
    v118 = v135;
    (*(v117 + 56))(v135, 1, 1, v116);
    sub_10007AA2C();
    sub_1000381B0(_swiftEmptyArrayStorage);
    sub_100038358(&qword_10009E938, &type metadata accessor for CocoaError, &protocol conformance descriptor for CocoaError);
    v119 = v128[0];
    v120 = v130;
    sub_10007AB6C();
    v121 = sub_10007AA1C();
    (*(v129 + 8))(v119, v120);
    v122 = v118;
    v123 = v131;
    sub_1000187C8(v122, v131, &unk_10009ED10, &qword_10007D310);
    v125 = 0;
    if ((*(v117 + 48))(v123, 1, v116) != 1)
    {
      sub_10007ABFC(v124);
      v125 = v126;
      (*(v117 + 8))(v123, v116);
    }

    v127 = sub_10007AB7C();
    v132[2](v132, v125, 0, v127);

    sub_100008824(v135, &unk_10009ED10, &qword_10007D310);
  }
}

void sub_10004202C(void *a1, void *a2, _TtC40com_apple_CloudSharingUI_AddParticipants15InitiateSharing *a3, _TtC40com_apple_CloudSharingUI_AddParticipants15InitiateSharing *a4, uint64_t a5, int a6, void (**a7)(const void *, void *, void, void *))
{
  v145 = a6;
  v146 = a5;
  v148 = a3;
  v144 = a2;
  v10 = sub_10007AA3C();
  __chkstk_darwin(v10 - 8);
  v134 = &v132 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v136 = sub_10007AA4C();
  v135 = *(v136 - 8);
  __chkstk_darwin(v136);
  v133 = &v132 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1000057A0(&unk_10009ED10, &qword_10007D310);
  v14 = __chkstk_darwin(v13 - 8);
  v137 = &v132 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v138 = &v132 - v16;
  v17 = sub_10007AE2C();
  v18 = *(v17 - 8);
  v19 = __chkstk_darwin(v17);
  v142 = &v132 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v19);
  v141 = &v132 - v22;
  v23 = __chkstk_darwin(v21);
  v25 = &v132 - v24;
  v26 = __chkstk_darwin(v23);
  v28 = &v132 - v27;
  v29 = __chkstk_darwin(v26);
  v31 = &v132 - v30;
  __chkstk_darwin(v29);
  v33 = &v132 - v32;
  v143 = swift_allocObject();
  *(v143 + 16) = a7;
  v139 = a7;
  _Block_copy(a7);
  sub_10007AE0C();
  v34 = a1;
  v35 = sub_10007AE1C();
  v36 = sub_10007B41C();

  v37 = os_log_type_enabled(v35, v36);
  v147 = a4;
  v149 = v17;
  if (v37)
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    *v38 = 138412290;
    *(v38 + 4) = v34;
    *v39 = v34;
    v40 = v34;
    _os_log_impl(&_mh_execute_header, v35, v36, "callForAddParticipantsToShare share: %@", v38, 0xCu);
    sub_100008824(v39, &qword_10009F570, &qword_10007DAF0);
    a4 = v147;

    v17 = v149;
  }

  v140 = v34;

  v41 = *(v18 + 8);
  v41(v33, v17);
  sub_10007AE0C();
  v42 = v144;
  v43 = sub_10007AE1C();
  v44 = sub_10007B41C();
  v144 = v42;

  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    *v45 = 138412290;
    v47 = v144;
    *(v45 + 4) = v144;
    *v46 = v47;
    v48 = v47;
    _os_log_impl(&_mh_execute_header, v43, v44, "callForAddParticipantsToShare containerSetupInfo: %@", v45, 0xCu);
    sub_100008824(v46, &qword_10009F570, &qword_10007DAF0);

    v17 = v149;
  }

  v41(v31, v17);
  sub_10007AE0C();
  v49 = v148;

  v50 = sub_10007AE1C();
  v51 = sub_10007B3DC();
  v49, v52, v53, v54, v55, v56, v57, v58;
  if (os_log_type_enabled(v50, v51))
  {
    v59 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    aBlock[0] = v60;
    *v59 = 136315138;
    v61 = sub_10007B2BC();
    v63 = v62;
    v64 = sub_100037C08(v61, v62, aBlock);
    v63, v65, v66, v67, v68, v69, v70, v71;
    *(v59 + 4) = v64;
    a4 = v147;
    _os_log_impl(&_mh_execute_header, v50, v51, "callForAddParticipantsToShare emailAddresses: %s", v59, 0xCu);
    sub_10000585C(v60);
    v17 = v149;
  }

  v41(v28, v17);
  sub_10007AE0C();

  v72 = sub_10007AE1C();
  v73 = sub_10007B3DC();
  a4, v74, v75, v76, v77, v78, v79, v80;
  if (os_log_type_enabled(v72, v73))
  {
    v81 = swift_slowAlloc();
    v82 = swift_slowAlloc();
    aBlock[0] = v82;
    *v81 = 136315138;
    v83 = sub_10007B2BC();
    v85 = v84;
    v86 = sub_100037C08(v83, v84, aBlock);
    v87 = v85;
    v17 = v149;
    v87, v88, v89, v90, v91, v92, v93, v94;
    *(v81 + 4) = v86;
    _os_log_impl(&_mh_execute_header, v72, v73, "callForAddParticipantsToShare phoneNumbers: %s", v81, 0xCu);
    sub_10000585C(v82);
  }

  v41(v25, v17);
  v95 = v141;
  sub_10007AE0C();
  v96 = sub_10007AE1C();
  v97 = sub_10007B3DC();
  if (os_log_type_enabled(v96, v97))
  {
    v98 = swift_slowAlloc();
    v99 = swift_slowAlloc();
    *v98 = 136315138;
    v150 = v146;
    aBlock[0] = v99;
    type metadata accessor for ParticipantPermission(0);
    v100 = sub_10007B1AC();
    v102 = v101;
    v103 = sub_100037C08(v100, v101, aBlock);
    v102, v104, v105, v106, v107, v108, v109, v110;
    *(v98 + 4) = v103;
    v17 = v149;
    _os_log_impl(&_mh_execute_header, v96, v97, "callForAddParticipantsToShare permissionType: %s", v98, 0xCu);
    sub_10000585C(v99);
  }

  v41(v95, v17);
  v111 = v142;
  sub_10007AE0C();
  v112 = sub_10007AE1C();
  v113 = sub_10007B3DC();
  if (os_log_type_enabled(v112, v113))
  {
    v114 = swift_slowAlloc();
    *v114 = 67109120;
    *(v114 + 4) = v145 & 1;
    _os_log_impl(&_mh_execute_header, v112, v113, "callForAddParticipantsToShare allowOthersToInvite: %{BOOL}d", v114, 8u);
  }

  v41(v111, v17);
  if (qword_10009DF50 != -1)
  {
    swift_once();
  }

  v115 = qword_1000A23D0;
  if (qword_1000A23D0)
  {
    swift_unknownObjectRetain();
    isa = sub_10007B29C().super.isa;
    v117 = sub_10007B29C().super.isa;
    v118 = swift_allocObject();
    v119 = v143;
    *(v118 + 16) = sub_100046368;
    *(v118 + 24) = v119;
    aBlock[4] = sub_100046430;
    aBlock[5] = v118;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10002AAC0;
    aBlock[3] = &unk_100097270;
    v120 = _Block_copy(aBlock);

    [v115 addParticipantsToShare:v140 containerSetupInfo:v144 emailAddresses:isa phoneNumbers:v117 permissionType:v146 allowOthersToInvite:v145 & 1 withReply:v120];
    _Block_release(v120);

    swift_unknownObjectRelease();
  }

  else
  {
    v121 = sub_10007AC4C();
    v122 = *(v121 - 8);
    v123 = v138;
    (*(v122 + 56))(v138, 1, 1, v121);
    sub_10007AA2C();
    sub_1000381B0(_swiftEmptyArrayStorage);
    sub_100038358(&qword_10009E938, &type metadata accessor for CocoaError, &protocol conformance descriptor for CocoaError);
    v124 = v133;
    v125 = v136;
    sub_10007AB6C();
    v126 = sub_10007AA1C();
    (*(v135 + 8))(v124, v125);
    v127 = v137;
    sub_1000187C8(v123, v137, &unk_10009ED10, &qword_10007D310);
    v129 = 0;
    if ((*(v122 + 48))(v127, 1, v121) != 1)
    {
      sub_10007ABFC(v128);
      v129 = v130;
      (*(v122 + 8))(v127, v121);
    }

    v131 = sub_10007AB7C();
    v139[2](v139, v129, 0, v131);

    sub_100008824(v123, &unk_10009ED10, &qword_10007D310);
  }
}

void sub_100042C00(void *a1, void *a2, _TtC40com_apple_CloudSharingUI_AddParticipants15InitiateSharing *a3, _TtC40com_apple_CloudSharingUI_AddParticipants15InitiateSharing *a4, _TtC40com_apple_CloudSharingUI_AddParticipants15InitiateSharing *a5, void (**a6)(const void *, void *, void, void *))
{
  v154 = a5;
  v157 = a3;
  v158 = a4;
  v9 = sub_10007AA3C();
  __chkstk_darwin(v9 - 8);
  v145 = &v143 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10007AA4C();
  v146 = *(v11 - 8);
  v147 = v11;
  __chkstk_darwin(v11);
  v144 = &v143 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1000057A0(&unk_10009ED10, &qword_10007D310);
  v14 = __chkstk_darwin(v13 - 8);
  v148 = &v143 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v151 = &v143 - v16;
  v159 = sub_10007AE2C();
  v17 = *(v159 - 8);
  v18 = __chkstk_darwin(v159);
  v156 = &v143 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v22 = &v143 - v21;
  v23 = __chkstk_darwin(v20);
  v25 = &v143 - v24;
  v26 = __chkstk_darwin(v23);
  v28 = &v143 - v27;
  __chkstk_darwin(v26);
  v30 = &v143 - v29;
  v155 = swift_allocObject();
  *(v155 + 16) = a6;
  v149 = a6;
  _Block_copy(a6);
  sub_10007AE0C();
  v31 = a1;
  v32 = sub_10007AE1C();
  v33 = sub_10007B41C();

  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v153 = v25;
    v36 = v17;
    v37 = a2;
    v38 = v35;
    *v34 = 138412290;
    *(v34 + 4) = v31;
    *v35 = v31;
    v39 = v31;
    _os_log_impl(&_mh_execute_header, v32, v33, "callForAddParticipantsToShare share: %@", v34, 0xCu);
    sub_100008824(v38, &qword_10009F570, &qword_10007DAF0);
    a2 = v37;
    v17 = v36;
    v25 = v153;
  }

  v152 = v22;
  v150 = v31;

  v40 = *(v17 + 8);
  v41 = v159;
  v40(v30, v159);
  sub_10007AE0C();
  v42 = a2;
  v43 = sub_10007AE1C();
  v44 = sub_10007B41C();

  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    *v45 = 138412290;
    *(v45 + 4) = v42;
    *v46 = v42;
    v47 = v42;
    _os_log_impl(&_mh_execute_header, v43, v44, "callForAddParticipantsToShare containerSetupInfo: %@", v45, 0xCu);
    sub_100008824(v46, &qword_10009F570, &qword_10007DAF0);

    v41 = v159;
  }

  v40(v28, v41);
  sub_10007AE0C();
  v48 = v157;

  v49 = sub_10007AE1C();
  v50 = sub_10007B3DC();
  v48, v51, v52, v53, v54, v55, v56, v57;
  v58 = os_log_type_enabled(v49, v50);
  v153 = v42;
  if (v58)
  {
    v59 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    aBlock[0] = v60;
    *v59 = 136315138;
    v61 = sub_10007B2BC();
    v63 = v62;
    v64 = sub_100037C08(v61, v62, aBlock);
    v63, v65, v66, v67, v68, v69, v70, v71;
    *(v59 + 4) = v64;
    _os_log_impl(&_mh_execute_header, v49, v50, "callForAddParticipantsToShare emailAddresses: %s", v59, 0xCu);
    sub_10000585C(v60);
    v41 = v159;
  }

  v40(v25, v41);
  v72 = v154;
  v73 = v152;
  sub_10007AE0C();
  v74 = v158;

  v75 = sub_10007AE1C();
  v76 = sub_10007B3DC();
  v74, v77, v78, v79, v80, v81, v82, v83;
  if (os_log_type_enabled(v75, v76))
  {
    v84 = swift_slowAlloc();
    v85 = swift_slowAlloc();
    aBlock[0] = v85;
    *v84 = 136315138;
    v86 = sub_10007B2BC();
    v88 = v87;
    v89 = sub_100037C08(v86, v87, aBlock);
    v88, v90, v91, v92, v93, v94, v95, v96;
    *(v84 + 4) = v89;
    _os_log_impl(&_mh_execute_header, v75, v76, "callForAddParticipantsToShare phoneNumbers: %s", v84, 0xCu);
    sub_10000585C(v85);
    v41 = v159;
  }

  v40(v73, v41);
  v97 = v156;
  sub_10007AE0C();

  v98 = sub_10007AE1C();
  v99 = sub_10007B3DC();
  v72, v100, v101, v102, v103, v104, v105, v106;
  if (os_log_type_enabled(v98, v99))
  {
    v107 = swift_slowAlloc();
    v108 = v41;
    v109 = swift_slowAlloc();
    aBlock[0] = v109;
    *v107 = 136315138;
    sub_100005C8C(0, &unk_10009F560, _SWCollaborationOptionsGroup_ptr);
    v110 = sub_10007B2BC();
    v112 = v111;
    v113 = sub_100037C08(v110, v111, aBlock);
    v112, v114, v115, v116, v117, v118, v119, v120;
    *(v107 + 4) = v113;
    _os_log_impl(&_mh_execute_header, v98, v99, "callForAddParticipantsToShare optionsGroups: %s", v107, 0xCu);
    sub_10000585C(v109);

    v121 = v156;
    v122 = v108;
  }

  else
  {

    v121 = v97;
    v122 = v41;
  }

  v40(v121, v122);
  v123 = v153;
  if (qword_10009DF50 != -1)
  {
    swift_once();
  }

  v124 = qword_1000A23D0;
  if (qword_1000A23D0)
  {
    swift_unknownObjectRetain();
    isa = sub_10007B29C().super.isa;
    v126 = sub_10007B29C().super.isa;
    sub_100005C8C(0, &unk_10009F560, _SWCollaborationOptionsGroup_ptr);
    v127 = sub_10007B29C().super.isa;
    v128 = swift_allocObject();
    v129 = v155;
    *(v128 + 16) = sub_100046368;
    *(v128 + 24) = v129;
    aBlock[4] = sub_100046430;
    aBlock[5] = v128;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10002AAC0;
    aBlock[3] = &unk_1000971F8;
    v130 = _Block_copy(aBlock);

    [v124 addParticipantsToShare:v150 containerSetupInfo:v123 emailAddresses:isa phoneNumbers:v126 optionsGroups:v127 withReply:v130];
    _Block_release(v130);

    swift_unknownObjectRelease();
  }

  else
  {
    v131 = sub_10007AC4C();
    v132 = *(v131 - 8);
    v133 = v151;
    (*(v132 + 56))(v151, 1, 1, v131);
    sub_10007AA2C();
    sub_1000381B0(_swiftEmptyArrayStorage);
    sub_100038358(&qword_10009E938, &type metadata accessor for CocoaError, &protocol conformance descriptor for CocoaError);
    v134 = v144;
    v135 = v147;
    sub_10007AB6C();
    v136 = sub_10007AA1C();
    (*(v146 + 8))(v134, v135);
    v137 = v133;
    v138 = v148;
    sub_1000187C8(v137, v148, &unk_10009ED10, &qword_10007D310);
    v140 = 0;
    if ((*(v132 + 48))(v138, 1, v131) != 1)
    {
      sub_10007ABFC(v139);
      v140 = v141;
      (*(v132 + 8))(v138, v131);
    }

    v142 = sub_10007AB7C();
    v149[2](v149, v140, 0, v142);

    sub_100008824(v151, &unk_10009ED10, &qword_10007D310);
  }
}

void sub_10004374C(uint64_t a1, void (**a2)(void, void, void, void))
{
  v4 = sub_10007AA3C();
  __chkstk_darwin(v4 - 8);
  v67 = &v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10007AA4C();
  v68 = *(v6 - 8);
  v69 = v6;
  __chkstk_darwin(v6);
  v66 = &v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000057A0(&unk_10009ED10, &qword_10007D310);
  v9 = __chkstk_darwin(v8 - 8);
  v64 = &v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v71 = &v62 - v12;
  v13 = __chkstk_darwin(v11);
  v65 = &v62 - v14;
  __chkstk_darwin(v13);
  v70 = &v62 - v15;
  v16 = sub_10007AC4C();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v62 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_10007AE2C();
  v74 = *(v20 - 8);
  __chkstk_darwin(v20);
  v22 = &v62 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = swift_allocObject();
  *(v23 + 16) = a2;
  _Block_copy(a2);
  sub_10007AE0C();
  v24 = *(v17 + 16);
  v75 = a1;
  v24(v19, a1, v16);
  v25 = sub_10007AE1C();
  v26 = sub_10007B41C();
  v27 = os_log_type_enabled(v25, v26);
  v73 = v16;
  if (v27)
  {
    v28 = swift_slowAlloc();
    v72 = v17;
    v29 = v28;
    v30 = swift_slowAlloc();
    v63 = a2;
    v31 = v30;
    aBlock[0] = v30;
    *v29 = 136315138;
    sub_100038358(&qword_10009EB10, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v32 = sub_10007B69C();
    v33 = v16;
    v34 = v23;
    v36 = v35;
    v62 = v20;
    v37 = *(v72 + 8);
    v37(v19, v33);
    v38 = sub_100037C08(v32, v36, aBlock);
    v39 = v36;
    v23 = v34;
    v39, v40, v41, v42, v43, v44, v45, v46;
    *(v29 + 4) = v38;
    _os_log_impl(&_mh_execute_header, v25, v26, "callForExistingShareForFile url: %s", v29, 0xCu);
    sub_10000585C(v31);
    a2 = v63;

    v17 = v72;

    v47 = v37;
    (*(v74 + 8))(v22, v62);
  }

  else
  {

    v47 = *(v17 + 8);
    v47(v19, v16);
    (*(v74 + 8))(v22, v20);
  }

  if (qword_10009DF50 != -1)
  {
    swift_once();
  }

  v48 = qword_1000A23D0;
  if (qword_1000A23D0)
  {
    swift_unknownObjectRetain();
    v57 = sub_10007AB9C();
    sub_10007ACAC();
    v60 = swift_allocObject();
    *(v60 + 16) = sub_100046368;
    *(v60 + 24) = v23;
    aBlock[4] = sub_100046430;
    aBlock[5] = v60;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10002AAC0;
    aBlock[3] = &unk_100097180;
    v61 = _Block_copy(aBlock);

    [v48 existingShareForFileWithURLWrapper:v57 withReply:v61];

    _Block_release(v61);

    swift_unknownObjectRelease();
  }

  else
  {
    v49 = v70;
    v50 = v73;
    (*(v17 + 56))(v70, 1, 1, v73);
    sub_10007AA2C();
    sub_1000381B0(_swiftEmptyArrayStorage);
    sub_100038358(&qword_10009E938, &type metadata accessor for CocoaError, &protocol conformance descriptor for CocoaError);
    v51 = v66;
    v52 = v69;
    sub_10007AB6C();
    v53 = sub_10007AA1C();
    (*(v68 + 8))(v51, v52);
    v54 = v65;
    sub_1000187C8(v49, v65, &unk_10009ED10, &qword_10007D310);
    if ((*(v17 + 48))(v54, 1, v50) == 1)
    {
      v56 = 0;
    }

    else
    {
      sub_10007ABFC(v55);
      v56 = v58;
      v47(v54, v50);
    }

    v59 = sub_10007AB7C();
    (a2)[2](a2, v56, 0, v59);

    sub_100008824(v49, &unk_10009ED10, &qword_10007D310);
  }
}

void sub_10004406C(uint64_t a1, void *a2, const void *a3)
{
  v6 = sub_10007AA3C();
  __chkstk_darwin(v6 - 8);
  v67 = &v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10007AA4C();
  v68 = *(v8 - 8);
  v69 = v8;
  __chkstk_darwin(v8);
  v66 = &v65 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10007AC4C();
  v11 = *(v10 - 8);
  v77 = v10;
  v78 = v11;
  __chkstk_darwin(v10);
  v76 = &v65 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_1000057A0(&unk_10009ED10, &qword_10007D310);
  v13 = __chkstk_darwin(v71);
  v75 = &v65 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v17 = &v65 - v16;
  __chkstk_darwin(v15);
  v19 = &v65 - v18;
  v20 = sub_10007AE2C();
  v73 = *(v20 - 8);
  v21 = __chkstk_darwin(v20);
  v23 = &v65 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v25 = &v65 - v24;
  v74 = swift_allocObject();
  *(v74 + 16) = a3;
  v70 = a3;
  _Block_copy(a3);
  sub_10007AE0C();
  v72 = a1;
  sub_1000187C8(a1, v19, &unk_10009ED10, &qword_10007D310);
  v26 = sub_10007AE1C();
  v27 = sub_10007B41C();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v65 = v23;
    v29 = v28;
    v30 = swift_slowAlloc();
    aBlock[0] = v30;
    *v29 = 136315138;
    sub_1000187C8(v19, v17, &unk_10009ED10, &qword_10007D310);
    v31 = sub_10007B1AC();
    v32 = a2;
    v33 = v20;
    v34 = v32;
    v36 = v35;
    sub_100008824(v19, &unk_10009ED10, &qword_10007D310);
    v37 = sub_100037C08(v31, v36, aBlock);
    v38 = v34;
    v20 = v33;
    a2 = v38;
    v36, v39, v40, v41, v42, v43, v44, v45;
    *(v29 + 4) = v37;
    _os_log_impl(&_mh_execute_header, v26, v27, "callForUserNameAndEmail url: %s", v29, 0xCu);
    sub_10000585C(v30);

    v23 = v65;
  }

  else
  {

    sub_100008824(v19, &unk_10009ED10, &qword_10007D310);
  }

  v46 = *(v73 + 8);
  v46(v25, v20);
  sub_10007AE0C();
  v47 = a2;
  v48 = sub_10007AE1C();
  v49 = sub_10007B41C();

  v50 = os_log_type_enabled(v48, v49);
  v51 = v78;
  if (v50)
  {
    v52 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    *v52 = 138412290;
    *(v52 + 4) = v47;
    *v53 = a2;
    v54 = v47;
    _os_log_impl(&_mh_execute_header, v48, v49, "callForUserNameAndEmail containerSetupInfo: %@", v52, 0xCu);
    sub_100008824(v53, &qword_10009F570, &qword_10007DAF0);

    v51 = v78;
  }

  v46(v23, v20);
  if (qword_10009DF50 != -1)
  {
    swift_once();
  }

  v55 = qword_1000A23D0;
  v56 = v75;
  v57 = v76;
  if (qword_1000A23D0)
  {
    sub_1000187C8(v72, v75, &unk_10009ED10, &qword_10007D310);
    if ((*(v51 + 48))(v56, 1, v77) == 1)
    {
      swift_unknownObjectRetain();
      sub_100008824(v56, &unk_10009ED10, &qword_10007D310);
      v58 = 0;
    }

    else
    {
      (*(v51 + 32))(v57, v56, v77);
      swift_unknownObjectRetain();
      v58 = sub_10007AB9C();
      sub_10007ACAC();
      (*(v51 + 8))(v57, v77);
    }

    v62 = swift_allocObject();
    v63 = v74;
    *(v62 + 16) = sub_100046154;
    *(v62 + 24) = v63;
    aBlock[4] = sub_100046434;
    aBlock[5] = v62;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100035D58;
    aBlock[3] = &unk_100097108;
    v64 = _Block_copy(aBlock);

    [v55 userNameAndEmailWithURLWrapper:v58 containerSetupInfo:v47 withReply:v64];

    _Block_release(v64);

    swift_unknownObjectRelease();
  }

  else
  {
    sub_10007AA2C();
    sub_1000381B0(_swiftEmptyArrayStorage);
    sub_100038358(&qword_10009E938, &type metadata accessor for CocoaError, &protocol conformance descriptor for CocoaError);
    v59 = v66;
    v60 = v69;
    sub_10007AB6C();
    v61 = sub_10007AA1C();
    (*(v68 + 8))(v59, v60);
    v58 = sub_10007AB7C();
    (*(v70 + 2))(v70, 0, 0, v58);
  }
}

void sub_100044994(uint64_t a1, _TtC40com_apple_CloudSharingUI_AddParticipants15InitiateSharing *a2, _TtC40com_apple_CloudSharingUI_AddParticipants15InitiateSharing *a3, uint64_t a4, uint64_t a5, int a6, void (**a7)(const void *, void *, void, void *))
{
  v164 = a5;
  v155 = a4;
  v161 = a3;
  v11 = sub_10007AA3C();
  __chkstk_darwin(v11 - 8);
  v148 = &v144 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v151 = sub_10007AA4C();
  v150 = *(v151 - 8);
  __chkstk_darwin(v151);
  v147 = &v144 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1000057A0(&unk_10009ED10, &qword_10007D310);
  v15 = __chkstk_darwin(v14 - 8);
  v149 = &v144 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v152 = &v144 - v17;
  v18 = sub_10007AC4C();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v144 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_10007AE2C();
  v166 = *(v22 - 8);
  v167 = v22;
  v23 = __chkstk_darwin(v22);
  v159 = &v144 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v23);
  v158 = &v144 - v26;
  v27 = __chkstk_darwin(v25);
  v157 = &v144 - v28;
  v29 = __chkstk_darwin(v27);
  v156 = &v144 - v30;
  __chkstk_darwin(v29);
  v32 = &v144 - v31;
  v162 = swift_allocObject();
  *(v162 + 16) = a7;
  v153 = a7;
  _Block_copy(a7);
  sub_10007AE0C();
  v33 = *(v19 + 16);
  v154 = a1;
  v33(v21, a1, v18);
  v34 = sub_10007AE1C();
  v35 = sub_10007B41C();
  v36 = os_log_type_enabled(v34, v35);
  v165 = a2;
  v163 = a6;
  v160 = v18;
  v146 = v19;
  if (v36)
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    aBlock[0] = v38;
    *v37 = 136315138;
    sub_100038358(&qword_10009EB10, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v39 = sub_10007B69C();
    v41 = v40;
    v145 = *(v19 + 8);
    v145(v21, v18);
    v42 = sub_100037C08(v39, v41, aBlock);
    v41, v43, v44, v45, v46, v47, v48, v49;
    *(v37 + 4) = v42;
    _os_log_impl(&_mh_execute_header, v34, v35, "callForForciblyShareFolder folderURL: %s", v37, 0xCu);
    sub_10000585C(v38);
    a2 = v165;
  }

  else
  {

    v145 = *(v19 + 8);
    v145(v21, v18);
  }

  v50 = *(v166 + 8);
  v51 = v32;
  v52 = v167;
  v50(v51, v167);
  v53 = v156;
  sub_10007AE0C();

  v54 = sub_10007AE1C();
  v55 = sub_10007B3DC();
  a2, v56, v57, v58, v59, v60, v61, v62;
  v63 = os_log_type_enabled(v54, v55);
  v64 = v161;
  if (v63)
  {
    v65 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    aBlock[0] = v66;
    *v65 = 136315138;
    v67 = sub_10007B2BC();
    v69 = v68;
    v70 = sub_100037C08(v67, v68, aBlock);
    v69, v71, v72, v73, v74, v75, v76, v77;
    *(v65 + 4) = v70;
    _os_log_impl(&_mh_execute_header, v54, v55, "callForForciblyShareFolder emailAddresses: %s", v65, 0xCu);
    sub_10000585C(v66);
    v52 = v167;
  }

  v50(v53, v52);
  v78 = v157;
  sub_10007AE0C();

  v79 = sub_10007AE1C();
  v80 = sub_10007B3DC();
  v64, v81, v82, v83, v84, v85, v86, v87;
  if (os_log_type_enabled(v79, v80))
  {
    v88 = swift_slowAlloc();
    v89 = swift_slowAlloc();
    aBlock[0] = v89;
    *v88 = 136315138;
    v90 = sub_10007B2BC();
    v92 = v91;
    v93 = sub_100037C08(v90, v91, aBlock);
    v92, v94, v95, v96, v97, v98, v99, v100;
    *(v88 + 4) = v93;
    _os_log_impl(&_mh_execute_header, v79, v80, "callForForciblyShareFolder phoneNumbers: %s", v88, 0xCu);
    sub_10000585C(v89);
    v52 = v167;
  }

  v50(v78, v52);
  v101 = v164;
  v102 = v158;
  sub_10007AE0C();
  v103 = sub_10007AE1C();
  v104 = sub_10007B3DC();
  if (os_log_type_enabled(v103, v104))
  {
    v105 = swift_slowAlloc();
    v106 = swift_slowAlloc();
    v168 = v101;
    aBlock[0] = v106;
    *v105 = 136315138;
    type metadata accessor for ParticipantPermission(0);
    v107 = sub_10007B1AC();
    v109 = v108;
    v110 = sub_100037C08(v107, v108, aBlock);
    v109, v111, v112, v113, v114, v115, v116, v117;
    *(v105 + 4) = v110;
    _os_log_impl(&_mh_execute_header, v103, v104, "callForForciblyShareFolder permissionType: %s", v105, 0xCu);
    sub_10000585C(v106);
    v52 = v167;
  }

  v50(v102, v52);
  v118 = v159;
  sub_10007AE0C();
  v119 = sub_10007AE1C();
  v120 = sub_10007B3DC();
  v121 = os_log_type_enabled(v119, v120);
  v122 = v163;
  if (v121)
  {
    v123 = swift_slowAlloc();
    *v123 = 67109120;
    *(v123 + 4) = v122 & 1;
    _os_log_impl(&_mh_execute_header, v119, v120, "callForForciblyShareFolder allowOthersToInvite: %{BOOL}d", v123, 8u);
  }

  v50(v118, v52);
  if (qword_10009DF50 != -1)
  {
    swift_once();
  }

  v124 = qword_1000A23D0;
  v125 = v160;
  if (qword_1000A23D0)
  {
    swift_unknownObjectRetain();
    sub_10007ABFC(v126);
    v128 = v127;
    isa = sub_10007B29C().super.isa;
    v130 = sub_10007B29C().super.isa;
    v131 = swift_allocObject();
    v132 = v162;
    *(v131 + 16) = sub_100046368;
    *(v131 + 24) = v132;
    aBlock[4] = sub_100046430;
    aBlock[5] = v131;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10002AAC0;
    aBlock[3] = &unk_100097090;
    v133 = _Block_copy(aBlock);

    [v124 forciblyShareFolder:v128 emailAddresses:isa phoneNumbers:v130 accessType:v155 permissionType:v101 allowOthersToInvite:v122 & 1 withReply:v133];
    _Block_release(v133);

    swift_unknownObjectRelease();
  }

  else
  {
    v134 = v146;
    v135 = v152;
    (*(v146 + 56))(v152, 1, 1, v160);
    sub_10007AA2C();
    sub_1000381B0(_swiftEmptyArrayStorage);
    sub_100038358(&qword_10009E938, &type metadata accessor for CocoaError, &protocol conformance descriptor for CocoaError);
    v136 = v147;
    v137 = v151;
    sub_10007AB6C();
    v138 = sub_10007AA1C();
    (*(v150 + 8))(v136, v137);
    v139 = v149;
    sub_1000187C8(v135, v149, &unk_10009ED10, &qword_10007D310);
    if ((*(v134 + 48))(v139, 1, v125) == 1)
    {
      v141 = 0;
    }

    else
    {
      sub_10007ABFC(v140);
      v141 = v142;
      v145(v139, v125);
    }

    v143 = sub_10007AB7C();
    v153[2](v153, v141, 0, v143);

    sub_100008824(v135, &unk_10009ED10, &qword_10007D310);
  }
}

void sub_1000455A8(uint64_t a1, _TtC40com_apple_CloudSharingUI_AddParticipants15InitiateSharing *a2, _TtC40com_apple_CloudSharingUI_AddParticipants15InitiateSharing *a3, _TtC40com_apple_CloudSharingUI_AddParticipants15InitiateSharing *a4, void (**a5)(const void *, void *, void, void *))
{
  v159 = a3;
  v165 = a2;
  v8 = sub_10007AA3C();
  __chkstk_darwin(v8 - 8);
  v151 = &v147 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10007AA4C();
  v153 = *(v10 - 8);
  v154 = v10;
  __chkstk_darwin(v10);
  v150 = &v147 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1000057A0(&unk_10009ED10, &qword_10007D310);
  v13 = __chkstk_darwin(v12 - 8);
  v152 = &v147 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v157 = &v147 - v15;
  v16 = sub_10007AC4C();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v147 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_10007AE2C();
  v21 = *(v20 - 8);
  v22 = __chkstk_darwin(v20);
  v163 = &v147 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v22);
  v162 = &v147 - v25;
  v26 = __chkstk_darwin(v24);
  v158 = &v147 - v27;
  __chkstk_darwin(v26);
  v29 = &v147 - v28;
  v161 = swift_allocObject();
  *(v161 + 16) = a5;
  v155 = a5;
  _Block_copy(a5);
  sub_10007AE0C();
  v30 = *(v17 + 16);
  v156 = a1;
  v30(v19, a1, v16);
  v31 = sub_10007AE1C();
  v32 = sub_10007B41C();
  v33 = os_log_type_enabled(v31, v32);
  v164 = v21;
  v160 = a4;
  v149 = v16;
  v148 = v17;
  if (v33)
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    aBlock[0] = v35;
    *v34 = 136315138;
    sub_100038358(&qword_10009EB10, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v36 = sub_10007B69C();
    v37 = v16;
    v39 = v38;
    v147 = *(v17 + 8);
    v147(v19, v37);
    v40 = sub_100037C08(v36, v39, aBlock);
    v39, v41, v42, v43, v44, v45, v46, v47;
    *(v34 + 4) = v40;
    _os_log_impl(&_mh_execute_header, v31, v32, "callForForciblyShareFolder folderURL: %s", v34, 0xCu);
    sub_10000585C(v35);

    v21 = v164;
  }

  else
  {

    v147 = *(v17 + 8);
    v147(v19, v16);
  }

  v48 = *(v21 + 8);
  v48(v29, v20);
  v49 = v20;
  v50 = v158;
  sub_10007AE0C();
  v51 = v165;

  v52 = sub_10007AE1C();
  v53 = sub_10007B3DC();
  v51, v54, v55, v56, v57, v58, v59, v60;
  if (os_log_type_enabled(v52, v53))
  {
    v61 = swift_slowAlloc();
    v62 = swift_slowAlloc();
    aBlock[0] = v62;
    *v61 = 136315138;
    v63 = sub_10007B2BC();
    v65 = v64;
    v66 = sub_100037C08(v63, v64, aBlock);
    v65, v67, v68, v69, v70, v71, v72, v73;
    *(v61 + 4) = v66;
    _os_log_impl(&_mh_execute_header, v52, v53, "callForForciblyShareFolder emailAddresses: %s", v61, 0xCu);
    sub_10000585C(v62);
  }

  v48(v50, v49);
  v74 = v159;
  v75 = v162;
  sub_10007AE0C();

  v76 = sub_10007AE1C();
  v77 = sub_10007B3DC();
  v74, v78, v79, v80, v81, v82, v83, v84;
  if (os_log_type_enabled(v76, v77))
  {
    v85 = swift_slowAlloc();
    v86 = swift_slowAlloc();
    aBlock[0] = v86;
    *v85 = 136315138;
    v87 = sub_10007B2BC();
    v89 = v88;
    v90 = sub_100037C08(v87, v88, aBlock);
    v89, v91, v92, v93, v94, v95, v96, v97;
    *(v85 + 4) = v90;
    _os_log_impl(&_mh_execute_header, v76, v77, "callForForciblyShareFolder phoneNumbers: %s", v85, 0xCu);
    sub_10000585C(v86);

    v98 = v162;
  }

  else
  {

    v98 = v75;
  }

  v99 = v49;
  v48(v98, v49);
  v100 = v160;
  v101 = v163;
  sub_10007AE0C();

  v102 = sub_10007AE1C();
  v103 = sub_10007B3DC();
  v100, v104, v105, v106, v107, v108, v109, v110;
  if (os_log_type_enabled(v102, v103))
  {
    v111 = swift_slowAlloc();
    v112 = swift_slowAlloc();
    aBlock[0] = v112;
    *v111 = 136315138;
    sub_100005C8C(0, &unk_10009F560, _SWCollaborationOptionsGroup_ptr);
    v113 = sub_10007B2BC();
    v115 = v114;
    v116 = sub_100037C08(v113, v114, aBlock);
    v115, v117, v118, v119, v120, v121, v122, v123;
    *(v111 + 4) = v116;
    _os_log_impl(&_mh_execute_header, v102, v103, "callForAddParticipantsToShare optionsGroups: %s", v111, 0xCu);
    sub_10000585C(v112);

    v124 = v163;
  }

  else
  {

    v124 = v101;
  }

  v48(v124, v99);
  if (qword_10009DF50 != -1)
  {
    swift_once();
  }

  v125 = qword_1000A23D0;
  if (qword_1000A23D0)
  {
    swift_unknownObjectRetain();
    sub_10007ABFC(v126);
    v128 = v127;
    isa = sub_10007B29C().super.isa;
    v130 = sub_10007B29C().super.isa;
    sub_100005C8C(0, &unk_10009F560, _SWCollaborationOptionsGroup_ptr);
    v131 = sub_10007B29C().super.isa;
    v132 = swift_allocObject();
    v133 = v161;
    *(v132 + 16) = sub_10004614C;
    *(v132 + 24) = v133;
    aBlock[4] = sub_100046430;
    aBlock[5] = v132;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10002AAC0;
    aBlock[3] = &unk_100097018;
    v134 = _Block_copy(aBlock);

    [v125 forciblyShareFolder:v128 emailAddresses:isa phoneNumbers:v130 optionsGroups:v131 withReply:v134];
    _Block_release(v134);

    swift_unknownObjectRelease();
  }

  else
  {
    v135 = v148;
    v136 = v157;
    v137 = v149;
    (*(v148 + 56))(v157, 1, 1, v149);
    sub_10007AA2C();
    sub_1000381B0(_swiftEmptyArrayStorage);
    sub_100038358(&qword_10009E938, &type metadata accessor for CocoaError, &protocol conformance descriptor for CocoaError);
    v138 = v150;
    v139 = v154;
    sub_10007AB6C();
    v140 = sub_10007AA1C();
    (*(v153 + 8))(v138, v139);
    v141 = v136;
    v142 = v152;
    sub_1000187C8(v141, v152, &unk_10009ED10, &qword_10007D310);
    if ((*(v135 + 48))(v142, 1, v137) == 1)
    {
      v144 = 0;
    }

    else
    {
      sub_10007ABFC(v143);
      v144 = v145;
      v147(v142, v137);
    }

    v146 = sub_10007AB7C();
    v155[2](v155, v144, 0, v146);

    sub_100008824(v157, &unk_10009ED10, &qword_10007D310);
  }
}

uint64_t sub_100046114()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

void sub_10004643C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = 0;
    v3 = a1 + 40;
    v4 = _swiftEmptyArrayStorage;
    do
    {
      v5 = (v3 + 16 * v2);
      v6 = v2;
      while (1)
      {
        if (v6 >= v1)
        {
          __break(1u);
LABEL_20:
          __break(1u);
          return;
        }

        v2 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          goto LABEL_20;
        }

        isa = *(v5 - 1);
        v8 = *v5;

        v9 = sub_100047128(isa, v8, 0x20uLL);
        if (v9)
        {
          break;
        }

        if (sub_100047128(isa, v8, 0x800uLL))
        {
          goto LABEL_13;
        }

        v8, v10, v11, v12, v13, v14, v15, v16;
        ++v6;
        v5 += 2;
        if (v2 == v1)
        {
          goto LABEL_18;
        }
      }

      v17 = sub_100046618(isa, v8);
      if (v17[2].super.isa)
      {
        isa = v17[4].super.isa;
        v25 = v17[5].super.isa;
        v26 = v17;

        v26, v27, v28, v29, v30, v31, v32, v33;
        v8, v34, v35, v36, v37, v38, v39, v40;
        v8 = v25;
      }

      else
      {
        v17, v18, v19, v20, v21, v22, v23, v24;
      }

LABEL_13:
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v4 = sub_10004700C(0, v4[2].super.isa + 1, 1, v4, v41, v42, v43, v44);
      }

      v46 = v4[2].super.isa;
      v45 = v4[3].super.isa;
      if (v46 >= v45 >> 1)
      {
        v4 = sub_10004700C((v45 > 1), v46 + 1, 1, v4, v41, v42, v43, v44);
      }

      v4[2].super.isa = (v46 + 1);
      v47 = &v4[3 * v46];
      v47[4].super.isa = isa;
      v47[5].super.isa = v8;
      LOBYTE(v47[6].super.isa) = (v9 ^ 1) & 1;
    }

    while (v2 != v1);
  }

LABEL_18:
  swift_getKeyPath();
  swift_getKeyPath();

  sub_10007AF4C();
}

char *sub_100046618(uint64_t a1, uint64_t a2)
{
  v2 = sub_10007AE2C();
  __chkstk_darwin(v2);
  v37 = sub_10007B15C();
  v3 = objc_allocWithZone(NSRegularExpression);
  v4 = sub_100046F30(0xD00000000000002FLL, 0x8000000100081DC0, 1);
  v5 = sub_10007B1FC();
  v6 = sub_10007B15C();
  v7 = [v4 matchesInString:v6 options:1 range:{0, v5}];

  sub_1000474A0();
  v8 = sub_10007B2AC();

  if (!(v8 >> 62))
  {
    v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v9)
    {
      goto LABEL_3;
    }

LABEL_14:

    v8, v30, v31, v32, v33, v34, v35, v36;
    return _swiftEmptyArrayStorage;
  }

  v9 = sub_10007B64C();
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_3:
  result = sub_100027E0C(0, v9 & ~(v9 >> 63), 0);
  if ((v9 & 0x8000000000000000) == 0)
  {
    v11 = 0;
    do
    {
      if ((v8 & 0xC000000000000001) != 0)
      {
        v12 = sub_10007B5DC();
      }

      else
      {
        v12 = *(v8 + 8 * v11 + 32);
      }

      v13 = v12;
      v14 = [v12 range];
      v16 = [v37 substringWithRange:{v14, v15}];
      v17 = sub_10007B19C();
      v19 = v18;

      v28 = _swiftEmptyArrayStorage[2];
      v27 = _swiftEmptyArrayStorage[3];
      if (v28 >= v27 >> 1)
      {
        sub_100027E0C((v27 > 1), v28 + 1, 1);
      }

      ++v11;
      _swiftEmptyArrayStorage[2] = v28 + 1;
      v29 = &_swiftEmptyArrayStorage[2 * v28];
      v29[4] = v17;
      v29[5] = v19;
    }

    while (v9 != v11);
    v8, v20, v21, v22, v23, v24, v25, v26;

    return _swiftEmptyArrayStorage;
  }

  __break(1u);
  return result;
}

uint64_t sub_100046A78(void **a1, char a2, id a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_10007AE2C();
  v65 = *(v10 - 8);
  v66 = v10;
  v11 = __chkstk_darwin(v10);
  v13 = &v65 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v65 - v14;
  v16 = sub_1000057A0(&unk_10009ED10, &qword_10007D310);
  v17 = __chkstk_darwin(v16 - 8);
  v19 = &v65 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = &v65 - v20;
  v22 = *a1;
  if (a2)
  {
    v23 = [v22 URL];
    if (v23)
    {
      v24 = v23;
      sub_10007AC1C();

      v25 = sub_10007AC4C();
      (*(*(v25 - 8) + 56))(v19, 0, 1, v25);
    }

    else
    {
      v25 = sub_10007AC4C();
      (*(*(v25 - 8) + 56))(v19, 1, 1, v25);
    }

    sub_100018608(v19, v21);
    sub_10007AC4C();
    v43 = *(v25 - 8);
    if ((*(v43 + 48))(v21, 1, v25) == 1)
    {
      sub_1000474EC(v21);
      LOBYTE(v21) = 0;
    }

    else
    {
      v44 = sub_10007AC3C();
      v46 = v45;
      (*(v43 + 8))(v21, v25);
      if (v46)
      {
        if (v44 == 0x6F746C69616DLL && v46 == 0xE600000000000000)
        {
          v46, v47, 0x6F746C69616DLL, v48, v49, v50, v51, v52;
          LOBYTE(v21) = 1;
        }

        else
        {
          LOBYTE(v21) = sub_10007B6BC();
          v46, v54, v55, v56, v57, v58, v59, v60;
        }
      }

      else
      {
        LOBYTE(v21) = 0;
      }
    }

    sub_10007AE0C();
    v61 = sub_10007AE1C();
    v62 = sub_10007B41C();
    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      *v63 = 67109120;
      *(v63 + 4) = v21 & 1;
      _os_log_impl(&_mh_execute_header, v61, v62, "isValid(address...) is link, valid email: %{BOOL}d", v63, 8u);
    }

    (*(v65 + 8))(v15, v66);
  }

  else
  {
    LODWORD(v21) = [v22 range] == a3 && v26 == a4;
    sub_10007AE0C();
    v28 = sub_10007AE1C();
    v29 = sub_10007B41C();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v68 = v31;
      *v30 = 136315394;
      v67 = a5;
      type metadata accessor for CheckingType(0);
      v32 = sub_10007B1AC();
      v34 = v33;
      v35 = sub_100037C08(v32, v33, &v68);
      v34, v36, v37, v38, v39, v40, v41, v42;
      *(v30 + 4) = v35;
      *(v30 + 12) = 1024;
      *(v30 + 14) = v21;
      _os_log_impl(&_mh_execute_header, v28, v29, "isValid(address...) is %s, valid: %{BOOL}d", v30, 0x12u);
      sub_10000585C(v31);
    }

    (*(v65 + 8))(v13, v66);
  }

  return v21 & 1;
}

id sub_100046F30(uint64_t a1, _TtC40com_apple_CloudSharingUI_AddParticipants15InitiateSharing *a2, uint64_t a3)
{
  v6 = sub_10007B15C();
  a2, v7, v8, v9, v10, v11, v12, v13;
  v18 = 0;
  v14 = [v3 initWithPattern:v6 options:a3 error:&v18];

  if (v14)
  {
    v15 = v18;
  }

  else
  {
    v16 = v18;
    sub_10007AB8C();

    swift_willThrow();
  }

  return v14;
}

_TtC40com_apple_CloudSharingUI_AddParticipants15InitiateSharing *sub_10004700C(_TtC40com_apple_CloudSharingUI_AddParticipants15InitiateSharing *result, int64_t a2, char a3, _TtC40com_apple_CloudSharingUI_AddParticipants15InitiateSharing *a4, void *a5, void *a6, int64_t a7, int64_t a8)
{
  v9 = result;
  if (a3)
  {
    isa = a4[3].super.isa;
    v11 = isa >> 1;
    if ((isa >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v11 = isa & 0xFFFFFFFFFFFFFFFELL;
      if ((isa & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2].super.isa;
  if (v11 <= v12)
  {
    v13 = a4[2].super.isa;
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    sub_1000057A0(&qword_10009E988, &unk_10007E638);
    v14 = swift_allocObject();
    v15 = j__malloc_size(v14);
    v14[2].super.isa = v12;
    v14[3].super.isa = (2 * ((v15 - 32) / 24));
  }

  else
  {
    v14 = _swiftEmptyArrayStorage;
  }

  v16 = v14 + 4;
  v17 = a4 + 4;
  if (v9)
  {
    v18 = 24 * v12;
    if (v14 != a4 || v16 >= &v17[3 * v12])
    {
      memmove(v16, v17, v18);
    }

    a4[2].super.isa = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  a4, v17, v18, a4, a5, a6, a7, a8;
  return v14;
}

uint64_t sub_100047128(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = sub_10007B23C();
  v37 = 0;
  v5 = [objc_allocWithZone(NSDataDetector) initWithTypes:a3 error:&v37];
  if (v5)
  {
    v6 = v5;
    v7 = v37;
    v8 = sub_10007B15C();
    v35 = v6;
    v36 = v4;
    v9 = [v6 matchesInString:v8 options:0 range:{0, v4}];

    sub_1000474A0();
    v10 = sub_10007B2AC();

    v37 = _swiftEmptyArrayStorage;
    if (v10 >> 62)
    {
      goto LABEL_17;
    }

    for (i = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_10007B64C())
    {
      v34 = a3;
      a3 = 0;
      v19 = v10 & 0xC000000000000001;
      v20 = v10 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v19)
        {
          v21 = sub_10007B5DC();
        }

        else
        {
          if (a3 >= *(v20 + 16))
          {
            goto LABEL_16;
          }

          v21 = *(v10 + 8 * a3 + 32);
        }

        v22 = v21;
        v23 = a3 + 1;
        if (__OFADD__(a3, 1))
        {
          break;
        }

        [v21 range];
        sub_10007B3CC();
        if (v24)
        {
        }

        else
        {
          sub_10007B5FC();
          sub_10007B61C();
          sub_10007B62C();
          sub_10007B60C();
          v19 = v10 & 0xC000000000000001;
          v20 = v10 & 0xFFFFFFFFFFFFFF8;
        }

        ++a3;
        if (v23 == i)
        {
          v25 = v37;
          a3 = v34;
          goto LABEL_19;
        }
      }

      __break(1u);
LABEL_16:
      __break(1u);
LABEL_17:
      ;
    }

    v25 = _swiftEmptyArrayStorage;
LABEL_19:
    v10, v11, v12, v13, v14, v15, v16, v17;
    if ((v25 & 0x8000000000000000) != 0 || (v25 & 0x4000000000000000) != 0)
    {
      goto LABEL_34;
    }

    for (j = *(v25 + 16); j; j = sub_10007B64C())
    {
      v27 = 0;
      while (1)
      {
        if ((v25 & 0xC000000000000001) != 0)
        {
          v28 = sub_10007B5DC();
        }

        else
        {
          if (v27 >= *(v25 + 16))
          {
            goto LABEL_33;
          }

          v28 = *(v25 + 8 * v27 + 32);
        }

        v29 = v28;
        v30 = v27 + 1;
        if (__OFADD__(v27, 1))
        {
          break;
        }

        v37 = v28;
        v31 = sub_100046A78(&v37, a3 == 32, 0, v36, a3);

        if (v31)
        {

          return 1;
        }

        ++v27;
        if (v30 == j)
        {
          goto LABEL_35;
        }
      }

      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      ;
    }

LABEL_35:

    return 0;
  }

  else
  {
    v33 = v37;
    sub_10007AB8C();

    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

unint64_t sub_1000474A0()
{
  result = qword_10009E980;
  if (!qword_10009E980)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10009E980);
  }

  return result;
}

uint64_t sub_1000474EC(uint64_t a1)
{
  v2 = sub_1000057A0(&unk_10009ED10, &qword_10007D310);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100047568(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10007AC9C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_10004763C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_10007AC9C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

void sub_100047718(uint64_t a1)
{
  sub_10007AC9C();
  if (v1 <= 0x3F)
  {
    sub_1000477EC();
    if (v2 <= 0x3F)
    {
      sub_100047BF8(319, &unk_10009EA00, type metadata accessor for AlertViewModelButton, &type metadata accessor for Array);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1000477EC()
{
  if (!qword_10009E9F8)
  {
    v0 = sub_10007B55C();
    if (!v1)
    {
      atomic_store(v0, &qword_10009E9F8);
    }
  }
}

uint64_t sub_10004785C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000478A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10007AC9C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20) + 24);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = sub_1000057A0(&qword_10009EA38, &qword_10007E658);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 24);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_1000479F0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_10007AC9C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20) + 24) = (a2 - 1);
  }

  else
  {
    v11 = sub_1000057A0(&qword_10009EA38, &qword_10007E658);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

void sub_100047B24(uint64_t a1)
{
  sub_10007AC9C();
  if (v1 <= 0x3F)
  {
    sub_100047BF8(319, &qword_10009EAA8, &type metadata accessor for ButtonRole, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      sub_100047C5C(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_100047BF8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_100047C5C(uint64_t a1)
{
  if (!qword_10009EAB0)
  {
    sub_100004AD8(&unk_10009EAB8, qword_10007E678);
    v1 = sub_10007B55C();
    if (!v2)
    {
      atomic_store(v1, &qword_10009EAB0);
    }
  }
}

unint64_t sub_100047CC0()
{
  result = qword_10009EAF0;
  if (!qword_10009EAF0)
  {
    sub_10007AC9C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009EAF0);
  }

  return result;
}

uint64_t sub_100047D20@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10007AC9C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_100047DB8(uint64_t a1, uint64_t a2)
{
  v3[10] = a2;
  v3[11] = v2;
  v3[9] = a1;
  sub_10007B32C();
  v3[12] = sub_10007B31C();
  v5 = sub_10007B2EC();
  v3[13] = v5;
  v3[14] = v4;

  return _swift_task_switch(sub_100047E54, v5, v4);
}

uint64_t sub_100047E54()
{
  type metadata accessor for CloudKitOperations(0);
  v1 = swift_allocObject();
  v0[15] = v1;
  v1[2] = 0xD000000000000021;
  v1[3] = 0x8000000100081B20;
  v1[4] = 0xD000000000000016;
  v1[5] = 0x8000000100081B50;
  v1[6] = 0xD00000000000001DLL;
  v1[7] = 0x8000000100081B70;
  v0[6] = 0;
  v0[5] = 0;
  sub_1000057A0(&qword_10009ED20, &qword_10007CF90);
  sub_10007AF0C();

  return _swift_task_switch(sub_100047F5C, 0, 0);
}

uint64_t sub_100047F5C()
{
  v1 = v0[15];
  v3 = v0[9];
  v2 = v0[10];
  v4 = swift_task_alloc();
  v0[16] = v4;
  v4[2] = v1;
  v4[3] = v3;
  v4[4] = v2;
  v5 = swift_task_alloc();
  v0[17] = v5;
  v6 = sub_1000057A0(&qword_10009F3D0, &qword_10007F458);
  *v5 = v0;
  v5[1] = sub_100048074;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 2, 0, 0, 0xD00000000000002DLL, 0x8000000100081100, sub_100068590, v4, v6);
}

uint64_t sub_100048074()
{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = sub_1000483E4;
  }

  else
  {

    v2 = sub_100048190;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100048190()
{
  *(v0 + 152) = *(v0 + 16);
  *(v0 + 168) = *(v0 + 32);
  return _swift_task_switch(sub_1000481B8, *(v0 + 104), *(v0 + 112));
}

uint64_t sub_1000481B8()
{
  v1 = v0[10];

  if (v1)
  {
    v2 = v0[10];
    swift_getKeyPath();
    swift_getKeyPath();
    v0[8] = v2;
    v3 = v2;

    sub_10007AF4C();
  }

  else
  {
    v4 = v0[20];

    v5 = v4;
    sub_100008A60(v4, 0);
  }

  v7 = v0[20];
  v6 = v0[21];
  v8 = v0[19];
  v9 = v0[15];
  v10 = v0[11];
  v11 = *(v10 + OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants12SharingModel_ckMetadata);
  *(v10 + OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants12SharingModel_ckMetadata) = v6;
  v12 = v6;

  swift_getKeyPath();
  swift_getKeyPath();
  v0[7] = v8;

  v13 = v8;
  sub_10007AF4C();
  swift_setDeallocating();
  v9[3], v14, v15, v16, v17, v18, v19, v20;
  v9[5], v21, v22, v23, v24, v25, v26, v27;
  v9[7], v28, v29, v30, v31, v32, v33, v34;
  v35 = OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants18CloudKitOperations__ckSourceAppBundleID;
  v36 = sub_1000057A0(&qword_10009E2B8, &unk_10007ED10);
  (*(*(v36 - 8) + 8))(v9 + v35, v36);
  swift_deallocClassInstance();

  v37 = v0[1];

  return v37();
}

uint64_t sub_1000483E4()
{

  v1 = *(v0 + 104);
  v2 = *(v0 + 112);

  return _swift_task_switch(sub_100048448, v1, v2);
}

uint64_t sub_100048448()
{
  v1 = *(v0 + 120);

  swift_setDeallocating();
  v1[3], v2, v3, v4, v5, v6, v7, v8;
  v1[5], v9, v10, v11, v12, v13, v14, v15;
  v1[7], v16, v17, v18, v19, v20, v21, v22;
  v23 = OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants18CloudKitOperations__ckSourceAppBundleID;
  v24 = sub_1000057A0(&qword_10009E2B8, &unk_10007ED10);
  (*(*(v24 - 8) + 8))(v1 + v23, v24);
  swift_deallocClassInstance();
  v25 = *(v0 + 8);

  return v25();
}

uint64_t sub_100048564(char a1, char a2)
{
  *(v3 + 48) = v2;
  *(v3 + 220) = a2;
  *(v3 + 219) = a1;
  v4 = sub_10007AE2C();
  *(v3 + 56) = v4;
  *(v3 + 64) = *(v4 - 8);
  *(v3 + 72) = swift_task_alloc();
  *(v3 + 80) = swift_task_alloc();
  sub_10007B32C();
  *(v3 + 88) = sub_10007B31C();
  v6 = sub_10007B2EC();
  *(v3 + 96) = v6;
  *(v3 + 104) = v5;

  return _swift_task_switch(sub_10004866C, v6, v5);
}

uint64_t sub_10004866C()
{
  swift_getKeyPath();
  swift_getKeyPath();

  sub_10007AF3C();

  v1 = *(v0 + 16);
  *(v0 + 112) = v1;
  if (!v1)
  {

    sub_100005AB8();
    swift_allocError();
    *v10 = 0xD000000000000043;
    *(v10 + 8) = 0x80000001000824B0;
    *(v10 + 16) = xmmword_10007E710;
    *(v10 + 32) = 0x8000000100082500;
    *(v10 + 40) = 11;
    swift_willThrow();

    v9 = *(v0 + 8);
LABEL_7:

    return v9();
  }

  swift_getKeyPath();
  swift_getKeyPath();

  sub_10007AF3C();

  if (*(v0 + 216) == 1)
  {

    sub_10007AE0C();
    v2 = sub_10007AE1C();
    v3 = sub_10007B41C();
    v4 = os_log_type_enabled(v2, v3);
    v5 = *(v0 + 80);
    v6 = *(v0 + 56);
    v7 = *(v0 + 64);
    if (v4)
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "addParticipantsToShare, doing nothing as we have a public share", v8, 2u);
    }

    (*(v7 + 8))(v5, v6);

    v9 = *(v0 + 8);
    goto LABEL_7;
  }

  *(v0 + 24) = _swiftEmptyArrayStorage;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10007AF3C();

  result = *(v0 + 32);
  *(v0 + 120) = result;
  v19 = *(result + 16);
  *(v0 + 128) = v19;
  if (v19)
  {
    *(v0 + 136) = _swiftEmptyArrayStorage;
    *(v0 + 144) = 0;
    if (*(result + 16))
    {
      v20 = *(result + 32);
      *(v0 + 152) = v20;
      v21 = *(result + 40);
      *(v0 + 160) = v21;
      v22 = *(result + 48);
      *(v0 + 221) = v22;
      sub_100068244(v20, v21);
      v23 = swift_task_alloc();
      *(v0 + 168) = v23;
      *v23 = v0;
      v23[1] = sub_100048BC8;

      return sub_10005814C(v20, v21, v22);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    *(v0 + 192) = _swiftEmptyArrayStorage;
    v24 = *(v0 + 112);
    v25 = *(v0 + 220);
    result, v12, v13, v14, v15, v16, v17, v18;
    [v24 setAllowsAccessRequests:v25];
    sub_10007AE0C();

    v26 = sub_10007AE1C();
    v27 = sub_10007B41C();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 134217984;
      swift_getKeyPath();
      swift_getKeyPath();
      sub_10007AF3C();

      v29 = *(v0 + 40);
      isa = v29[2].super.isa;
      v29, v31, v32, v33, v34, v35, v36, v37;
      *(v28 + 4) = isa;

      _os_log_impl(&_mh_execute_header, v26, v27, "addParticipantsToShare, adding %ld", v28, 0xCu);
    }

    else
    {
    }

    (*(*(v0 + 64) + 8))(*(v0 + 72), *(v0 + 56));
    v38 = swift_task_alloc();
    *(v0 + 200) = v38;
    *v38 = v0;
    v38[1] = sub_100049208;

    return sub_100059058(_swiftEmptyArrayStorage, 1, 1);
  }

  return result;
}

uint64_t sub_100048BC8(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 176) = a1;
  *(v4 + 184) = v1;

  v10 = *(v4 + 221);
  v11 = *(v3 + 160);
  v12 = *(v3 + 152);
  if (v1)
  {
    v13 = *(v4 + 136);
    v14 = *(v4 + 120);
    sub_10006824C(v12, v11, v10, v5, v6, v7, v8, v9);
    v14, v15, v16, v17, v18, v19, v20, v21;
    v13, v22, v23, v24, v25, v26, v27, v28;
    v29 = *(v4 + 96);
    v30 = *(v4 + 104);
    v31 = sub_1000493A0;
  }

  else
  {
    sub_10006824C(v12, v11, v10, v5, v6, v7, v8, v9);
    v29 = *(v4 + 96);
    v30 = *(v4 + 104);
    v31 = sub_100048D38;
  }

  return _swift_task_switch(v31, v29, v30);
}

void sub_100048D38()
{
  swift_getKeyPath();
  swift_getKeyPath();

  sub_10007AF3C();

  if (*(v0 + 217) == 3)
  {
    v1 = 2;
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();

    sub_10007AF3C();

    if (*(v0 + 218) > 1u)
    {
      if (*(v0 + 218) != 2)
      {
        sub_10007B63C("Fatal error", 11, 2, 0xD000000000000044, 0x8000000100082580, "com_apple_CloudSharingUI_AddParticipants/SharingOptions.swift", 61, 2, 107, 0);
        return;
      }

      v1 = 2;
    }

    else if (*(v0 + 218))
    {
      v1 = 3;
    }

    else
    {
      v1 = 1;
    }
  }

  v2 = *(v0 + 176);
  v3 = *(v0 + 219);
  [v2 setPermission:v1];
  [v2 setRole:{sub_100058E7C(objc_msgSend(v2, "permission"), v3)}];
  v4 = v2;
  sub_10007B28C();
  if (*((*(v0 + 24) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 24) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_10007B2CC();
  }

  v5 = *(v0 + 176);
  v6 = *(v0 + 128);
  v7 = *(v0 + 144) + 1;
  sub_10007B2DC();

  v15 = *(v0 + 24);
  if (v7 == v6)
  {
    *(v0 + 192) = v15;
    v16 = *(v0 + 112);
    v17 = *(v0 + 220);
    *(v0 + 120), v8, v9, v10, v11, v12, v13, v14;
    [v16 setAllowsAccessRequests:v17];
    sub_10007AE0C();

    v18 = sub_10007AE1C();
    v19 = sub_10007B41C();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 134217984;
      swift_getKeyPath();
      swift_getKeyPath();
      sub_10007AF3C();

      v21 = *(v0 + 40);
      isa = v21[2].super.isa;
      v21, v23, v24, v25, v26, v27, v28, v29;
      *(v20 + 4) = isa;

      _os_log_impl(&_mh_execute_header, v18, v19, "addParticipantsToShare, adding %ld", v20, 0xCu);
    }

    else
    {
    }

    (*(*(v0 + 64) + 8))(*(v0 + 72), *(v0 + 56));
    v37 = swift_task_alloc();
    *(v0 + 200) = v37;
    *v37 = v0;
    v37[1] = sub_100049208;

    sub_100059058(v15, 1, 1);
  }

  else
  {
    v30 = *(v0 + 144) + 1;
    *(v0 + 136) = v15;
    *(v0 + 144) = v30;
    v31 = *(v0 + 120);
    if (v30 >= *(v31 + 16))
    {
      __break(1u);
    }

    else
    {
      v32 = v31 + 24 * v30;
      v33 = *(v32 + 32);
      *(v0 + 152) = v33;
      v34 = *(v32 + 40);
      *(v0 + 160) = v34;
      v35 = *(v32 + 48);
      *(v0 + 221) = v35;
      sub_100068244(v33, v34);
      v36 = swift_task_alloc();
      *(v0 + 168) = v36;
      *v36 = v0;
      v36[1] = sub_100048BC8;

      sub_10005814C(v33, v34, v35);
    }
  }
}

uint64_t sub_100049208()
{
  v2 = *v1;
  *(*v1 + 208) = v0;

  if (v0)
  {
    v10 = *(v2 + 96);
    v11 = *(v2 + 104);
    v12 = sub_10004941C;
  }

  else
  {
    *(v2 + 192), v3, v4, v5, v6, v7, v8, v9;
    v10 = *(v2 + 96);
    v11 = *(v2 + 104);
    v12 = sub_100049324;
  }

  return _swift_task_switch(v12, v10, v11);
}

uint64_t sub_100049324()
{
  v1 = *(v0 + 112);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1000493A0()
{
  v1 = *(v0 + 112);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10004941C()
{
  v1 = v0[24];
  v2 = v0[14];

  v1, v3, v4, v5, v6, v7, v8, v9;

  v10 = v0[1];

  return v10();
}

uint64_t sub_1000494A4(uint64_t a1, char a2, char a3)
{
  *(v4 + 217) = a3;
  *(v4 + 216) = a2;
  *(v4 + 48) = a1;
  *(v4 + 56) = v3;
  v5 = sub_10007AE2C();
  *(v4 + 64) = v5;
  *(v4 + 72) = *(v5 - 8);
  *(v4 + 80) = swift_task_alloc();
  sub_10007B32C();
  *(v4 + 88) = sub_10007B31C();
  v7 = sub_10007B2EC();
  *(v4 + 96) = v7;
  *(v4 + 104) = v6;

  return _swift_task_switch(sub_1000495A0, v7, v6);
}

uint64_t sub_1000495A0()
{
  swift_getKeyPath();
  swift_getKeyPath();

  sub_10007AF3C();

  v1 = *(v0 + 16);
  *(v0 + 112) = v1;
  if (v1)
  {
    if ([v1 publicPermission] == 1)
    {
      *(v0 + 24) = _swiftEmptyArrayStorage;
      swift_getKeyPath();
      swift_getKeyPath();
      sub_10007AF3C();

      result = *(v0 + 32);
      *(v0 + 120) = result;
      v10 = *(result + 16);
      *(v0 + 128) = v10;
      if (v10)
      {
        *(v0 + 136) = _swiftEmptyArrayStorage;
        *(v0 + 144) = 0;
        if (*(result + 16))
        {
          v11 = *(result + 32);
          *(v0 + 152) = v11;
          v12 = *(result + 40);
          *(v0 + 160) = v12;
          v13 = *(result + 48);
          *(v0 + 218) = v13;
          sub_100068244(v11, v12);
          v14 = swift_task_alloc();
          *(v0 + 168) = v14;
          *v14 = v0;
          v14[1] = sub_1000499EC;

          return sub_10005814C(v11, v12, v13);
        }

        else
        {
          __break(1u);
        }
      }

      else
      {
        *(v0 + 192) = _swiftEmptyArrayStorage;
        v17 = *(v0 + 112);
        v18 = *(v0 + 217);
        result, v2, v3, v4, v5, v6, v7, v8;
        [v17 setAllowsAccessRequests:v18];
        sub_10007AE0C();

        v19 = sub_10007AE1C();
        v20 = sub_10007B41C();
        if (os_log_type_enabled(v19, v20))
        {
          v21 = swift_slowAlloc();
          *v21 = 134217984;
          swift_getKeyPath();
          swift_getKeyPath();
          sub_10007AF3C();

          v22 = *(v0 + 40);
          isa = v22[2].super.isa;
          v22, v24, v25, v26, v27, v28, v29, v30;
          *(v21 + 4) = isa;

          _os_log_impl(&_mh_execute_header, v19, v20, "addParticipantsToShareWithOptions, adding %ld", v21, 0xCu);
        }

        else
        {
        }

        (*(*(v0 + 72) + 8))(*(v0 + 80), *(v0 + 64));
        v31 = swift_task_alloc();
        *(v0 + 200) = v31;
        *v31 = v0;
        v31[1] = sub_100049ECC;

        return sub_100059058(_swiftEmptyArrayStorage, 0, 1);
      }

      return result;
    }
  }

  sub_100005AB8();
  swift_allocError();
  *v15 = 0xD00000000000005DLL;
  *(v15 + 8) = 0x8000000100082720;
  *(v15 + 16) = xmmword_10007E720;
  *(v15 + 32) = 0x8000000100082780;
  *(v15 + 40) = 11;
  swift_willThrow();

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_1000499EC(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 176) = a1;
  *(v4 + 184) = v1;

  v10 = *(v4 + 218);
  v11 = *(v3 + 160);
  v12 = *(v3 + 152);
  if (v1)
  {
    v13 = *(v4 + 136);
    v14 = *(v4 + 120);
    sub_10006824C(v12, v11, v10, v5, v6, v7, v8, v9);
    v14, v15, v16, v17, v18, v19, v20, v21;
    v13, v22, v23, v24, v25, v26, v27, v28;
    v29 = *(v4 + 96);
    v30 = *(v4 + 104);
    v31 = sub_10004A05C;
  }

  else
  {
    sub_10006824C(v12, v11, v10, v5, v6, v7, v8, v9);
    v29 = *(v4 + 96);
    v30 = *(v4 + 104);
    v31 = sub_100049B5C;
  }

  return _swift_task_switch(v31, v29, v30);
}

void sub_100049B5C()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 216);
  v3 = *(v0 + 48);
  [v1 setPermission:v3];
  [v1 setRole:{sub_100058E7C(v3, v2)}];
  v4 = v1;
  sub_10007B28C();
  if (*((*(v0 + 24) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 24) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_10007B2CC();
  }

  v5 = *(v0 + 176);
  v6 = *(v0 + 128);
  v7 = *(v0 + 144) + 1;
  sub_10007B2DC();

  v15 = *(v0 + 24);
  if (v7 == v6)
  {
    *(v0 + 192) = v15;
    v16 = *(v0 + 112);
    v17 = *(v0 + 217);
    *(v0 + 120), v8, v9, v10, v11, v12, v13, v14;
    [v16 setAllowsAccessRequests:v17];
    sub_10007AE0C();

    v18 = sub_10007AE1C();
    v19 = sub_10007B41C();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 134217984;
      swift_getKeyPath();
      swift_getKeyPath();
      sub_10007AF3C();

      v21 = *(v0 + 40);
      isa = v21[2].super.isa;
      v21, v23, v24, v25, v26, v27, v28, v29;
      *(v20 + 4) = isa;

      _os_log_impl(&_mh_execute_header, v18, v19, "addParticipantsToShareWithOptions, adding %ld", v20, 0xCu);
    }

    else
    {
    }

    (*(*(v0 + 72) + 8))(*(v0 + 80), *(v0 + 64));
    v37 = swift_task_alloc();
    *(v0 + 200) = v37;
    *v37 = v0;
    v37[1] = sub_100049ECC;

    sub_100059058(v15, 0, 1);
  }

  else
  {
    v30 = *(v0 + 144) + 1;
    *(v0 + 136) = v15;
    *(v0 + 144) = v30;
    v31 = *(v0 + 120);
    if (v30 >= *(v31 + 16))
    {
      __break(1u);
    }

    else
    {
      v32 = v31 + 24 * v30;
      v33 = *(v32 + 32);
      *(v0 + 152) = v33;
      v34 = *(v32 + 40);
      *(v0 + 160) = v34;
      v35 = *(v32 + 48);
      *(v0 + 218) = v35;
      sub_100068244(v33, v34);
      v36 = swift_task_alloc();
      *(v0 + 168) = v36;
      *v36 = v0;
      v36[1] = sub_1000499EC;

      sub_10005814C(v33, v34, v35);
    }
  }
}

uint64_t sub_100049ECC()
{
  v2 = *v1;
  *(*v1 + 208) = v0;

  if (v0)
  {
    v10 = *(v2 + 96);
    v11 = *(v2 + 104);
    v12 = sub_10004A0D0;
  }

  else
  {
    *(v2 + 192), v3, v4, v5, v6, v7, v8, v9;
    v10 = *(v2 + 96);
    v11 = *(v2 + 104);
    v12 = sub_100049FE8;
  }

  return _swift_task_switch(v12, v10, v11);
}

uint64_t sub_100049FE8()
{
  v1 = *(v0 + 112);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10004A05C()
{
  v1 = *(v0 + 112);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10004A0D0()
{
  v1 = v0[24];
  v2 = v0[14];

  v1, v3, v4, v5, v6, v7, v8, v9;

  v10 = v0[1];

  return v10();
}

uint64_t sub_10004A150()
{
  v1[6] = v0;
  v2 = sub_10007AE2C();
  v1[7] = v2;
  v1[8] = *(v2 - 8);
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  sub_1000057A0(&unk_10009ED10, &qword_10007D310);
  v1[11] = swift_task_alloc();
  sub_10007B32C();
  v1[12] = sub_10007B31C();
  v4 = sub_10007B2EC();
  v1[13] = v4;
  v1[14] = v3;

  return _swift_task_switch(sub_10004A288, v4, v3);
}

uint64_t sub_10004A288()
{
  v34 = v0;
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 168) = 2;

  sub_10007AF4C();
  swift_getKeyPath();
  swift_getKeyPath();

  sub_10007AF3C();

  v1 = *(v0 + 16);
  *(v0 + 120) = v1;
  if (v1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_10007AF3C();

    swift_getKeyPath();
    swift_getKeyPath();
    sub_10007AF3C();

    if ((*(v0 + 170) & 0xFE) == 8)
    {
      v2 = 0;
    }

    else
    {
      v2 = sub_100021AB0();
    }

    *(v0 + 128) = v2;
    v25 = sub_100069054();
    v27 = v26;
    v29 = v28;
    *(v0 + 136) = v26;
    v30 = swift_task_alloc();
    *(v0 + 144) = v30;
    *v30 = v0;
    v30[1] = sub_10004A75C;
    v31 = *(v0 + 88);

    return sub_100025984(v31, v1, v2, v25 & 0x101FFFFFFFFFFLL, v27, v29 & 0x101);
  }

  else
  {

    sub_100005AB8();
    v3 = swift_allocError();
    *v4 = xmmword_10007E730;
    *(v4 + 16) = xmmword_10007E740;
    *(v4 + 32) = 0x8000000100082480;
    *(v4 + 40) = 11;
    swift_willThrow();
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 169) = 0;

    sub_10007AF4C();
    sub_10007AE0C();
    swift_errorRetain();
    v5 = sub_10007AE1C();
    v6 = sub_10007B3FC();

    v7 = os_log_type_enabled(v5, v6);
    v8 = *(v0 + 64);
    v32 = *(v0 + 72);
    v9 = *(v0 + 56);
    if (v7)
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v33 = v11;
      *v10 = 136315138;
      *(v0 + 24) = v3;
      swift_errorRetain();
      sub_1000057A0(&qword_10009E7B0, &qword_10007CFC0);
      v12 = sub_10007B1AC();
      v14 = v13;
      v15 = sub_100037C08(v12, v13, &v33);
      v14, v16, v17, v18, v19, v20, v21, v22;
      *(v10 + 4) = v15;
      _os_log_impl(&_mh_execute_header, v5, v6, "saveShare error: %s", v10, 0xCu);
      sub_10000585C(v11);
    }

    (*(v8 + 8))(v32, v9);
    swift_willThrow();

    v23 = *(v0 + 8);

    return v23();
  }
}

uint64_t sub_10004A75C(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[19] = a1;
  v4[20] = v1;

  v5 = v3[17];
  v6 = v3[16];
  sub_100008824(v3[11], &unk_10009ED10, &qword_10007D310);
  v5, v7, v8, v9, v10, v11, v12, v13;

  v14 = v3[14];
  v15 = v3[13];
  if (v1)
  {
    v16 = sub_10004AC04;
  }

  else
  {
    v16 = sub_10004A904;
  }

  return _swift_task_switch(v16, v15, v14);
}

uint64_t sub_10004A904()
{
  v32 = v0;
  v1 = *(v0 + 152);

  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 32) = v1;

  v2 = v1;
  sub_10007AF4C();
  sub_10007AE0C();
  v3 = v2;
  v4 = sub_10007AE1C();
  v5 = sub_10007B41C();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 152);
    v30 = *(v0 + 80);
    v8 = *(v0 + 56);
    v7 = *(v0 + 64);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v31 = v10;
    *v9 = 136315394;
    *(v0 + 40) = [v6 rootRecordID];
    sub_1000057A0(&unk_10009F3A0, &qword_10007F078);
    v11 = sub_10007B1AC();
    v13 = v12;
    v14 = sub_100037C08(v11, v12, &v31);
    v13, v15, v16, v17, v18, v19, v20, v21;
    *(v9 + 4) = v14;
    *(v9 + 12) = 1026;
    LODWORD(v13) = [v6 allowsAccessRequests];

    *(v9 + 14) = v13;
    _os_log_impl(&_mh_execute_header, v4, v5, "saveShare succeeded, rootRecordID: %s, share allowAccessRequests: %{BOOL,public}d", v9, 0x12u);
    sub_10000585C(v10);

    (*(v7 + 8))(v30, v8);
  }

  else
  {
    v22 = *(v0 + 152);
    v23 = *(v0 + 80);
    v24 = *(v0 + 56);
    v25 = *(v0 + 64);

    (*(v25 + 8))(v23, v24);
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_unknownObjectRelease();
  }

  v26 = *(v0 + 152);
  v27 = *(v0 + 120);
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 171) = 3;

  sub_10007AF4C();

  v28 = *(v0 + 8);

  return v28();
}

uint64_t sub_10004AC04()
{
  v27 = v0;
  v1 = *(v0 + 120);

  v2 = *(v0 + 160);
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 169) = 0;

  sub_10007AF4C();
  sub_10007AE0C();
  swift_errorRetain();
  v3 = sub_10007AE1C();
  v4 = sub_10007B3FC();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 64);
    v25 = *(v0 + 72);
    v6 = *(v0 + 56);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v26 = v8;
    *v7 = 136315138;
    *(v0 + 24) = v2;
    swift_errorRetain();
    sub_1000057A0(&qword_10009E7B0, &qword_10007CFC0);
    v9 = sub_10007B1AC();
    v11 = v10;
    v12 = sub_100037C08(v9, v10, &v26);
    v11, v13, v14, v15, v16, v17, v18, v19;
    *(v7 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v3, v4, "saveShare error: %s", v7, 0xCu);
    sub_10000585C(v8);

    (*(v5 + 8))(v25, v6);
  }

  else
  {
    v21 = *(v0 + 64);
    v20 = *(v0 + 72);
    v22 = *(v0 + 56);

    (*(v21 + 8))(v20, v22);
  }

  swift_willThrow();

  v23 = *(v0 + 8);

  return v23();
}

uint64_t sub_10004AE58(uint64_t a1)
{
  v2[94] = v1;
  v2[93] = a1;
  v2[95] = sub_1000057A0(&qword_10009E708, &qword_10007DAA0);
  v2[96] = swift_task_alloc();
  v2[97] = swift_task_alloc();
  v2[98] = swift_task_alloc();
  v2[99] = swift_task_alloc();
  v2[100] = swift_task_alloc();
  v2[101] = swift_task_alloc();
  v2[102] = swift_task_alloc();
  sub_1000057A0(&unk_10009ED10, &qword_10007D310);
  v2[103] = swift_task_alloc();
  v2[104] = swift_task_alloc();
  v2[105] = swift_task_alloc();
  v3 = sub_10007AC4C();
  v2[106] = v3;
  v2[107] = *(v3 - 8);
  v2[108] = swift_task_alloc();
  v2[109] = swift_task_alloc();
  v2[110] = swift_task_alloc();
  v4 = sub_10007AE2C();
  v2[111] = v4;
  v2[112] = *(v4 - 8);
  v2[113] = swift_task_alloc();
  v2[114] = swift_task_alloc();
  v2[115] = swift_task_alloc();
  v2[116] = swift_task_alloc();
  v2[117] = swift_task_alloc();
  sub_10007B32C();
  v2[118] = sub_10007B31C();
  v6 = sub_10007B2EC();
  v2[119] = v6;
  v2[120] = v5;

  return _swift_task_switch(sub_10004B0CC, v6, v5);
}

uint64_t sub_10004B0CC(uint64_t a1)
{
  v72 = v1;
  sub_10007AE0C();
  v2 = sub_10007AE1C();
  v3 = sub_10007B3DC();
  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v1 + 936);
  v6 = *(v1 + 896);
  v7 = *(v1 + 888);
  if (v4)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v71 = v9;
    *v8 = 136446210;
    *(v8 + 4) = sub_100037C08(0xD00000000000001CLL, 0x8000000100082460, &v71);
    _os_log_impl(&_mh_execute_header, v2, v3, "%{public}s Start", v8, 0xCu);
    sub_10000585C(v9);
  }

  v10 = *(v6 + 8);
  v10(v5, v7);
  *(v1 + 968) = v10;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10007AF3C();

  if ((*(v1 + 1012) & 0xFE) != 8)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    sub_10007AF3C();

    v11 = *(v1 + 696);
    if (v11)
    {
      v12 = [*(v1 + 696) URL];
      if (v12)
      {
        v13 = v12;
        v70 = v11;
        v14 = *(v1 + 880);
        v15 = *(v1 + 872);
        v16 = *(v1 + 856);
        v17 = *(v1 + 848);

        sub_10007AC1C();

        sub_10007AE0C();
        v69 = *(v16 + 16);
        v69(v15, v14, v17);
        v18 = sub_10007AE1C();
        v19 = sub_10007B3DC();
        v20 = os_log_type_enabled(v18, v19);
        v21 = *(v1 + 928);
        v22 = *(v1 + 888);
        v23 = *(v1 + 872);
        v24 = *(v1 + 856);
        v25 = *(v1 + 848);
        if (v20)
        {
          v26 = swift_slowAlloc();
          v71 = swift_slowAlloc();
          *v26 = 136315394;
          *(v26 + 4) = sub_100037C08(0xD00000000000001CLL, 0x8000000100082460, &v71);
          *(v26 + 12) = 2080;
          v66 = v22;
          v67 = v21;
          v27 = sub_10007ABDC();
          v29 = v28;
          v68 = *(v24 + 8);
          v68(v23, v25);
          v30 = sub_100037C08(v27, v29, &v71);
          v29, v31, v32, v33, v34, v35, v36, v37;
          *(v26 + 14) = v30;
          _os_log_impl(&_mh_execute_header, v18, v19, "%s Found CKShare URL, replacing URL with: %s", v26, 0x16u);
          swift_arrayDestroy();

          v39 = v66;
          v38 = v67;
        }

        else
        {

          v68 = *(v24 + 8);
          v68(v23, v25);
          v38 = v21;
          v39 = v22;
        }

        v10(v38, v39);
        v59 = *(v1 + 880);
        v60 = *(v1 + 856);
        v61 = *(v1 + 848);
        v62 = *(v1 + 840);
        v63 = *(v1 + 832);
        v69(v62, v59, v61);
        (*(v60 + 56))(v62, 0, 1, v61);
        swift_getKeyPath();
        swift_getKeyPath();
        sub_1000187C8(v62, v63, &unk_10009ED10, &qword_10007D310);

        sub_10007AF4C();

        sub_100008824(v62, &unk_10009ED10, &qword_10007D310);
        v68(v59, v61);
LABEL_20:
        sub_10005AA6C();

        v64 = *(v1 + 8);

        return v64();
      }
    }
  }

  v40 = *(v1 + 856);
  v41 = *(v1 + 848);
  v42 = *(v1 + 824);
  sub_1000187C8(*(v1 + 744), v42, &unk_10009ED10, &qword_10007D310);
  v43 = *(v40 + 48);
  *(v1 + 976) = v43;
  *(v1 + 984) = (v40 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v43(v42, 1, v41) == 1)
  {
    v44 = *(v1 + 824);

    sub_100008824(v44, &unk_10009ED10, &qword_10007D310);
    sub_10007AE0C();
    v45 = sub_10007AE1C();
    v46 = sub_10007B3FC();
    v47 = os_log_type_enabled(v45, v46);
    v48 = *(v1 + 904);
    v49 = *(v1 + 888);
    if (v47)
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v71 = v51;
      *v50 = 136446210;
      *(v50 + 4) = sub_100037C08(0xD00000000000001CLL, 0x8000000100082460, &v71);
      _os_log_impl(&_mh_execute_header, v45, v46, "%{public}s Is not a CKShare nor is there a fileURL. This is a silent failure.", v50, 0xCu);
      sub_10000585C(v51);
    }

    v10(v48, v49);
    goto LABEL_20;
  }

  (*(*(v1 + 856) + 32))(*(v1 + 864), *(v1 + 824), *(v1 + 848));
  sub_10007AE0C();
  v52 = sub_10007AE1C();
  v53 = sub_10007B3DC();
  v54 = os_log_type_enabled(v52, v53);
  v55 = *(v1 + 920);
  v56 = *(v1 + 888);
  if (v54)
  {
    v57 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    v71 = v58;
    *v57 = 136446210;
    *(v57 + 4) = sub_100037C08(0xD00000000000001CLL, 0x8000000100082460, &v71);
    _os_log_impl(&_mh_execute_header, v52, v53, "%{public}s Copying sharing URL...", v57, 0xCu);
    sub_10000585C(v58);
  }

  v10(v55, v56);
  *(v1 + 1008) = *(*(v1 + 760) + 48);

  return _swift_task_switch(sub_10004B9D0, 0, 0);
}

uint64_t sub_10004B9D0()
{
  v1 = v0[108];
  v2 = swift_task_alloc();
  v0[124] = v2;
  *(v2 + 16) = v1;
  swift_asyncLet_begin();
  v3 = v0[101];

  return _swift_asyncLet_get(v0 + 2, v3, sub_10004BA84, v0 + 82);
}

uint64_t sub_10004BAA0()
{
  v1 = v0[102];
  v2 = v0[100];
  v3 = v0[95];
  sub_1000187C8(v0[101], v2, &qword_10009E708, &qword_10007DAA0);
  v0[125] = *(v2 + *(v3 + 48));
  sub_10002591C(v2, v1, &unk_10009ED10, &qword_10007D310);
  v4 = v0[101];

  return _swift_asyncLet_finish(v0 + 2, v4, sub_10004BB5C, v0 + 88);
}

uint64_t sub_10004BB78()
{

  v1 = *(v0 + 960);
  v2 = *(v0 + 952);

  return _swift_task_switch(sub_10004BBE0, v2, v1);
}

uint64_t sub_10004BBE0()
{
  v59 = v0;
  v1 = *(v0 + 816);
  v2 = *(v0 + 792);
  v3 = *(v0 + 760);
  *(v1 + *(v0 + 1008)) = *(v0 + 1000);
  sub_1000187C8(v1, v2, &qword_10009E708, &qword_10007DAA0);
  v4 = *(v2 + *(v3 + 48));
  if (!v4)
  {
    v12 = *(v0 + 816);
    v13 = *(v0 + 784);
    sub_100008824(*(v0 + 792), &unk_10009ED10, &qword_10007D310);
    sub_10007AE0C();
    sub_1000187C8(v12, v13, &qword_10009E708, &qword_10007DAA0);
    v14 = sub_10007AE1C();
    v15 = sub_10007B3DC();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = *(v0 + 976);
      v17 = *(v0 + 848);
      v18 = *(v0 + 784);
      v19 = *(v0 + 776);
      v20 = *(v0 + 760);
      v21 = swift_slowAlloc();
      v58[0] = swift_slowAlloc();
      *v21 = 136315394;
      *(v21 + 4) = sub_100037C08(0xD00000000000001CLL, 0x8000000100082460, v58);
      *(v21 + 12) = 2080;
      sub_1000187C8(v18, v19, &qword_10009E708, &qword_10007DAA0);

      result = v16(v19, 1, v17);
      if (result == 1)
      {
        goto LABEL_13;
      }

      v54 = *(v0 + 912);
      v56 = *(v0 + 968);
      v53 = *(v0 + 888);
      v23 = *(v0 + 856);
      v24 = *(v0 + 848);
      v25 = *(v0 + 784);
      v26 = *(v0 + 776);
      v27 = sub_10007ABDC();
      v29 = v28;
      sub_100008824(v25, &qword_10009E708, &qword_10007DAA0);
      (*(v23 + 8))(v26, v24);
      v30 = sub_100037C08(v27, v29, v58);
      v29, v31, v32, v33, v34, v35, v36, v37;
      *(v21 + 14) = v30;
      _os_log_impl(&_mh_execute_header, v14, v15, "%s Replacing URL with: %s", v21, 0x16u);
      swift_arrayDestroy();

      v56(v54, v53);
    }

    else
    {
      v38 = *(v0 + 968);
      v39 = *(v0 + 912);
      v40 = *(v0 + 888);
      v41 = *(v0 + 784);

      sub_100008824(v41, &qword_10009E708, &qword_10007DAA0);
      v38(v39, v40);
    }

    v42 = *(v0 + 976);
    v43 = *(v0 + 848);
    v44 = *(v0 + 768);
    v45 = *(v0 + 760);
    sub_1000187C8(*(v0 + 816), v44, &qword_10009E708, &qword_10007DAA0);
    v46 = *(v44 + *(v45 + 48));

    result = v42(v44, 1, v43);
    if (result != 1)
    {
      v47 = *(v0 + 856);
      v48 = *(v0 + 848);
      v49 = *(v0 + 840);
      v50 = *(v0 + 832);
      v55 = *(v0 + 816);
      v57 = *(v0 + 864);
      v51 = *(v0 + 768);

      (*(v47 + 16))(v49, v51, v48);
      (*(v47 + 56))(v49, 0, 1, v48);
      swift_getKeyPath();
      swift_getKeyPath();
      sub_1000187C8(v49, v50, &unk_10009ED10, &qword_10007D310);
      sub_10007AF4C();
      sub_100008824(v49, &unk_10009ED10, &qword_10007D310);
      sub_100008824(v55, &qword_10009E708, &qword_10007DAA0);
      v52 = *(v47 + 8);
      v52(v57, v48);
      v52(v51, v48);
      sub_10005AA6C();

      v11 = *(v0 + 8);
      goto LABEL_9;
    }

    __break(1u);
LABEL_13:
    __break(1u);
    return result;
  }

  v5 = *(v0 + 864);
  v6 = *(v0 + 856);
  v7 = *(v0 + 848);
  v8 = *(v0 + 816);
  v9 = *(v0 + 792);

  sub_100008824(v9, &unk_10009ED10, &qword_10007D310);
  sub_100005AB8();
  swift_allocError();
  *v10 = 0xD00000000000001CLL;
  *(v10 + 8) = 0x8000000100082460;
  *(v10 + 24) = 0;
  *(v10 + 32) = 0;
  *(v10 + 16) = v4;
  *(v10 + 40) = 7;
  swift_willThrow();
  sub_100008824(v8, &qword_10009E708, &qword_10007DAA0);
  (*(v6 + 8))(v5, v7);
  sub_10005AA6C();

  v11 = *(v0 + 8);
LABEL_9:

  return v11();
}

uint64_t sub_10004C328(uint64_t a1, _TtC40com_apple_CloudSharingUI_AddParticipants15InitiateSharing *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_1000057A0(&qword_10009F370, &qword_10007FC90);
  __chkstk_darwin(v8 - 8);
  v10 = v29 - v9;
  sub_1000187C8(a3, v29 - v9, &qword_10009F370, &qword_10007FC90);
  v11 = sub_10007B35C();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_100008824(v10, &qword_10009F370, &qword_10007FC90);
  }

  else
  {
    sub_10007B34C();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_10007B2EC();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_10007B1CC() + 32;

      if (v17 | v15)
      {
        v30[0] = 0;
        v30[1] = 0;
        v19 = v30;
        v30[2] = v15;
        v30[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v29[1] = 7;
      v29[2] = v19;
      v29[3] = v18;
      v20 = swift_task_create();

      sub_100008824(a3, &qword_10009F370, &qword_10007FC90);
      a2, v21, v22, v23, v24, v25, v26, v27;

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

  sub_100008824(a3, &qword_10009F370, &qword_10007FC90);
  if (v17 | v15)
  {
    v30[4] = 0;
    v30[5] = 0;
    v30[6] = v15;
    v30[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_10004C5D4()
{
  v1[4] = v0;
  sub_1000057A0(&unk_10009ED10, &qword_10007D310);
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();
  v2 = sub_10007AC4C();
  v1[8] = v2;
  v1[9] = *(v2 - 8);
  v1[10] = swift_task_alloc();
  sub_10007B32C();
  v1[11] = sub_10007B31C();
  v4 = sub_10007B2EC();

  return _swift_task_switch(sub_10004C718, v4, v3);
}

uint64_t sub_10004C718()
{
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 96) = 1;

  sub_10007AF4C();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10007AF3C();

  if ((*(v0 + 97) & 0xFE) == 8)
  {
    v1 = *(v0 + 64);
    v2 = *(v0 + 72);
    v3 = *(v0 + 56);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_10007AF3C();

    if ((*(v2 + 48))(v3, 1, v1) == 1)
    {
      v4 = *(v0 + 56);

      sub_100008824(v4, &unk_10009ED10, &qword_10007D310);
      sub_100005AB8();
      swift_allocError();
      *v5 = 0xD000000000000016;
      *(v5 + 8) = 0x80000001000822D0;
      *(v5 + 24) = 0;
      *(v5 + 32) = 0;
      *(v5 + 16) = 0;
      *(v5 + 40) = 0;
      swift_willThrow();
      swift_getKeyPath();
      swift_getKeyPath();
      *(v0 + 98) = 0;
    }

    else
    {
      v6 = *(v0 + 80);
      (*(*(v0 + 72) + 32))(v6, *(v0 + 56), *(v0 + 64));
      v7 = sub_10001E7F4(v6);
      v9 = v7;
      if (v8)
      {
        v10 = *(v0 + 72);
        v30 = *(v0 + 80);
        v11 = *(v0 + 64);
        v12 = v7;
        v13 = v8;
        v14 = v8;

        sub_100005AB8();
        swift_allocError();
        *v15 = xmmword_10007E750;
        *(v15 + 24) = 0;
        *(v15 + 32) = 0;
        *(v15 + 16) = v13;
        *(v15 + 40) = 1;
        swift_willThrow();

        (*(v10 + 8))(v30, v11);
        swift_getKeyPath();
        swift_getKeyPath();
        *(v0 + 103) = 0;
      }

      else
      {

        if (v9)
        {
          v18 = *(v0 + 32);
          swift_getKeyPath();
          swift_getKeyPath();
          v19 = v9;

          sub_10007AF3C();

          if (*(v0 + 100) == 1)
          {
            swift_getKeyPath();
            swift_getKeyPath();

            sub_10007AF3C();

            if (*(v0 + 102) > 1u)
            {
              if (*(v0 + 102) != 2)
              {
                return sub_10007B63C("Fatal error", 11, 2, 0xD000000000000044, 0x8000000100082580, "com_apple_CloudSharingUI_AddParticipants/SharingOptions.swift", 61, 2, 107, 0);
              }

              v20 = 2;
            }

            else if (*(v0 + 102))
            {
              v20 = 3;
            }

            else
            {
              v20 = 1;
            }
          }

          else
          {
            v20 = 1;
          }

          [v19 setPublicPermission:v20];
          v25 = *(*(v18 + 16) + OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants12OptionsModel_allowAccessRequestsSPIOverride);
          v26 = v9;
          if (v25 == 2)
          {
            swift_getKeyPath();
            swift_getKeyPath();

            sub_10007AF3C();

            LOBYTE(v25) = *(v0 + 101);
          }

          v27 = *(v0 + 72);
          v28 = *(v0 + 80);
          v29 = *(v0 + 64);
          [v19 setAllowsAccessRequests:v25 & 1];
          swift_getKeyPath();
          swift_getKeyPath();
          *(v0 + 24) = v26;

          sub_10007AF4C();

          (*(v27 + 8))(v28, v29);
        }

        else
        {
          v21 = *(v0 + 72);
          v22 = *(v0 + 64);
          v31 = *(v0 + 80);
          v24 = *(v0 + 40);
          v23 = *(v0 + 48);
          swift_getKeyPath();
          swift_getKeyPath();
          *(v0 + 16) = 0;
          swift_retain_n();
          sub_10007AF4C();
          (*(v21 + 56))(v23, 1, 1, v22);
          swift_getKeyPath();
          swift_getKeyPath();
          sub_1000187C8(v23, v24, &unk_10009ED10, &qword_10007D310);

          sub_10007AF4C();
          sub_100008824(v23, &unk_10009ED10, &qword_10007D310);

          (*(v21 + 8))(v31, v22);
        }

        swift_getKeyPath();
        swift_getKeyPath();
        *(v0 + 99) = 0;
      }
    }
  }

  else
  {
    sub_10004F634();

    swift_unknownObjectRelease();
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 104) = 0;
  }

  sub_10007AF4C();

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_10004CEF0()
{
  v1[20] = v0;
  sub_1000057A0(&unk_10009ED10, &qword_10007D310);
  v1[21] = swift_task_alloc();
  v2 = sub_10007AC4C();
  v1[22] = v2;
  v1[23] = *(v2 - 8);
  v1[24] = swift_task_alloc();
  sub_10007B32C();
  v1[25] = sub_10007B31C();
  v4 = sub_10007B2EC();
  v1[26] = v4;
  v1[27] = v3;

  return _swift_task_switch(sub_10004D01C, v4, v3);
}

uint64_t sub_10004D01C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10007AF3C();

  v8 = *(v0 + 104);
  v9 = *(v0 + 112);
  v10 = *(v0 + 120);
  if (*(v0 + 96) || v8 != 0xE000000000000000)
  {
    v18 = sub_10007B6BC();
    v8, v19, v20, v21, v22, v23, v24, v25;
    if ((v18 & 1) == 0)
    {

      v10, v39, v40, v41, v42, v43, v44, v45;
      goto LABEL_15;
    }
  }

  else
  {
    0xE000000000000000, v1, v2, v3, v4, v5, v6, v7;
  }

  if (v9 || v10 != 0xE000000000000000)
  {
    v26 = sub_10007B6BC();
    v10, v27, v28, v29, v30, v31, v32, v33;
    if ((v26 & 1) == 0)
    {

      goto LABEL_15;
    }
  }

  else
  {
    0xE000000000000000, v11, v12, v13, v14, v15, v16, v17;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_10007AF3C();

  if ((*(v0 + 384) & 0xFE) == 8)
  {
    v34 = *(v0 + 176);
    v35 = *(v0 + 184);
    v36 = *(v0 + 168);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_10007AF3C();

    if ((*(v35 + 48))(v36, 1, v34) == 1)
    {
      v37 = *(v0 + 168);

      sub_100008824(v37, &unk_10009ED10, &qword_10007D310);
LABEL_15:

      v46 = *(v0 + 8);

      return v46();
    }

    (*(*(v0 + 184) + 32))(*(v0 + 192), *(v0 + 168), *(v0 + 176));
    v48 = swift_task_alloc();
    *(v0 + 280) = v48;
    *v48 = v0;
    v48[1] = sub_10004D7B0;
    v49 = *(v0 + 192);

    return sub_100019390(v0 + 16, v49);
  }

  else
  {
    v38 = sub_100021AB0();
    *(v0 + 224) = v38;
    v50 = v38;
    v51 = swift_task_alloc();
    *(v0 + 232) = v51;
    *v51 = v0;
    v51[1] = sub_10004D438;

    return sub_100005138(v50);
  }
}

uint64_t sub_10004D438(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *v5;
  *(*v5 + 240) = v4;

  if (v4)
  {
    v11 = *(v10 + 208);
    v12 = *(v10 + 216);
    v13 = sub_10004D70C;
  }

  else
  {

    *(v10 + 248) = a4;
    *(v10 + 256) = a3;
    *(v10 + 264) = a2;
    *(v10 + 272) = a1;
    v11 = *(v10 + 208);
    v12 = *(v10 + 216);
    v13 = sub_10004D588;
  }

  return _swift_task_switch(v13, v11, v12);
}

uint64_t sub_10004D588()
{

  v8 = v0[33];
  v9 = v0[31];
  if (v8)
  {
    if (v9)
    {
      v10 = v0[34];
      v11 = v0[32];
      swift_getKeyPath();
      swift_getKeyPath();
      v0[16] = v10;
      v0[17] = v8;
      v0[18] = v11;
      v0[19] = v9;

      sub_10007AF4C();

      v12 = v0[1];
      goto LABEL_7;
    }

    v13 = v0[33];
  }

  else
  {
    v13 = v0[31];
  }

  v13, v1, v2, v3, v4, v5, v6, v7;
  sub_100005AB8();
  swift_allocError();
  *v14 = 0xD000000000000016;
  *(v14 + 8) = 0x80000001000822B0;
  *(v14 + 24) = 0;
  *(v14 + 32) = 0;
  *(v14 + 16) = 0;
  *(v14 + 40) = 6;
  swift_willThrow();

  v12 = v0[1];
LABEL_7:

  return v12();
}

uint64_t sub_10004D70C()
{
  *(v0 + 328) = *(v0 + 240);
  v1 = swift_task_alloc();
  *(v0 + 336) = v1;
  *v1 = v0;
  v1[1] = sub_10004DB20;

  return sub_100019B14(v0 + 56);
}

uint64_t sub_10004D7B0()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 32);
  *(v2 + 18) = *(v2 + 1);
  *(v2 + 19) = v3;
  v2[40] = v1[6];

  v4 = v1[27];
  v5 = v1[26];

  return _swift_task_switch(sub_10004D8EC, v5, v4);
}

uint64_t sub_10004D8EC()
{
  v1 = v0[40];

  if (v1)
  {
    v2 = v0[39];
    v3 = v0[40];
    v4 = v0[37];
    v6 = v0[23];
    v5 = v0[24];
    v7 = v0[22];
    sub_100005AB8();
    swift_allocError();
    *v8 = 0xD000000000000016;
    *(v8 + 8) = 0x80000001000822B0;
    *(v8 + 24) = 0;
    *(v8 + 32) = 0;
    *(v8 + 16) = v3;
    *(v8 + 40) = 6;
    swift_willThrow();
    v4, v9, v10, v11, v12, v13, v14, v15;
    v2, v16, v17, v18, v19, v20, v21, v22;
    (*(v6 + 8))(v5, v7);
  }

  else
  {
    (*(v0[23] + 8))(v0[24], v0[22]);
    v30 = v0[39];
    v31 = v0[37];
    if (v31)
    {
      if (v30)
      {
        v32 = v0[38];
        v33 = v0[36];
        swift_getKeyPath();
        swift_getKeyPath();
        v0[16] = v33;
        v0[17] = v31;
        v0[18] = v32;
        v0[19] = v30;

        sub_10007AF4C();

        v34 = v0[1];
        goto LABEL_10;
      }

      v35 = v0[37];
    }

    else
    {
      v35 = v0[39];
    }

    v35, v23, v24, v25, v26, v27, v28, v29;
    sub_100005AB8();
    swift_allocError();
    *v36 = 0xD000000000000016;
    *(v36 + 8) = 0x80000001000822B0;
    *(v36 + 24) = 0;
    *(v36 + 32) = 0;
    *(v36 + 16) = 0;
    *(v36 + 40) = 6;
    swift_willThrow();
  }

  v34 = v0[1];
LABEL_10:

  return v34();
}

uint64_t sub_10004DB20()
{
  v1 = *v0;
  v2 = *v0;
  *(v2 + 43) = *(v2 + 7);
  *(v2 + 45) = *(v2 + 9);
  v2[47] = v1[11];

  v3 = v1[27];
  v4 = v1[26];

  return _swift_task_switch(sub_10004DC6C, v4, v3);
}

uint64_t sub_10004DC6C()
{
  v1 = v0[47];

  if (v1)
  {
    v2 = v0[46];
    v3 = v0[47];
    v4 = v0[44];
    sub_100005AB8();
    swift_allocError();
    *v5 = 0xD000000000000016;
    *(v5 + 8) = 0x80000001000822B0;
    *(v5 + 24) = 0;
    *(v5 + 32) = 0;
    *(v5 + 16) = v3;
    *(v5 + 40) = 6;
    swift_willThrow();
    v4, v6, v7, v8, v9, v10, v11, v12;
    v2, v13, v14, v15, v16, v17, v18, v19;
  }

  else
  {

    v27 = v0[46];
    v28 = v0[44];
    if (v28)
    {
      if (v27)
      {
        v29 = v0[45];
        v30 = v0[43];
        swift_getKeyPath();
        swift_getKeyPath();
        v0[16] = v30;
        v0[17] = v28;
        v0[18] = v29;
        v0[19] = v27;

        sub_10007AF4C();

        v31 = v0[1];
        goto LABEL_10;
      }

      v32 = v0[44];
    }

    else
    {
      v32 = v0[46];
    }

    v32, v20, v21, v22, v23, v24, v25, v26;
    sub_100005AB8();
    swift_allocError();
    *v33 = 0xD000000000000016;
    *(v33 + 8) = 0x80000001000822B0;
    *(v33 + 24) = 0;
    *(v33 + 32) = 0;
    *(v33 + 16) = 0;
    *(v33 + 40) = 6;
    swift_willThrow();
  }

  v31 = v0[1];
LABEL_10:

  return v31();
}

uint64_t sub_10004DE7C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10007AF3C();

  return v1;
}

uint64_t sub_10004DEF4(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 57) = a3;
  *(v3 + 72) = a1;
  *(v3 + 80) = a2;
  sub_1000057A0(&unk_10009ED10, &qword_10007D310);
  *(v3 + 88) = swift_task_alloc();
  v4 = sub_10007AE2C();
  *(v3 + 96) = v4;
  *(v3 + 104) = *(v4 - 8);
  *(v3 + 112) = swift_task_alloc();
  *(v3 + 120) = swift_task_alloc();
  *(v3 + 128) = swift_task_alloc();
  *(v3 + 136) = swift_task_alloc();
  *(v3 + 144) = swift_task_alloc();
  sub_10007B32C();
  *(v3 + 152) = sub_10007B31C();
  v6 = sub_10007B2EC();
  *(v3 + 160) = v6;
  *(v3 + 168) = v5;

  return _swift_task_switch(sub_10004E054, v6, v5);
}

void sub_10004E054()
{
  v2 = v0[9];
  if (v2 < 1)
  {
    __break(1u);
  }

  else
  {
    v0[22] = BRCloudDocsErrorDomain;
    v0[23] = v2;
    v3 = swift_task_alloc();
    v0[24] = v3;
    *v3 = v0;
    v3[1] = sub_10004E104;

    sub_100059770();
  }
}

uint64_t sub_10004E104()
{
  v2 = *v1;
  *(*v1 + 200) = v0;

  v3 = *(v2 + 168);
  v4 = *(v2 + 160);
  if (v0)
  {
    v5 = sub_10004E394;
  }

  else
  {
    v5 = sub_10004E240;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_10004E240()
{

  sub_10007AE0C();
  v1 = sub_10007AE1C();
  v2 = sub_10007B41C();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[23];
    v4 = swift_slowAlloc();
    *v4 = 134217984;
    *(v4 + 4) = v3;
    _os_log_impl(&_mh_execute_header, v1, v2, "fetchShare completed with this many retries left: %ld", v4, 0xCu);
  }

  v5 = v0[18];
  v6 = v0[12];
  v7 = v0[13];

  (*(v7 + 8))(v5, v6);

  v8 = v0[1];

  return v8();
}

uint64_t sub_10004E394()
{
  *(v0 + 64) = *(v0 + 200);
  swift_errorRetain();
  sub_1000057A0(&qword_10009E7B0, &qword_10007CFC0);
  v1 = swift_dynamicCast();
  if (v1)
  {
    v3 = *(v0 + 16);
    v2 = *(v0 + 24);
    *(v0 + 208) = v3;
    *(v0 + 216) = v2;
    v4 = *(v0 + 32);
    v5 = *(v0 + 40);
    *(v0 + 224) = v4;
    *(v0 + 232) = v5;
    v6 = *(v0 + 48);
    *(v0 + 240) = v6;
    v7 = *(v0 + 56);
    v123 = v5;
    if (v7 != 5)
    {

      sub_10007AE0C();
      v30 = sub_10007AE1C();
      v31 = sub_10007B3FC();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = *(v0 + 184);
        v33 = swift_slowAlloc();
        *v33 = 134217984;
        *(v33 + 4) = v32;
        _os_log_impl(&_mh_execute_header, v30, v31, "tryToFetchShare error: throwing unexpected error--retries that were left: %ld", v33, 0xCu);
      }

      v35 = *(v0 + 104);
      v34 = *(v0 + 112);
      v36 = *(v0 + 96);

      (*(v35 + 8))(v34, v36);
      sub_100005AB8();
      swift_allocError();
      *v37 = 0xD00000000000003ELL;
      *(v37 + 8) = 0x8000000100083190;
      *(v37 + 16) = xmmword_10007E760;
      *(v37 + 32) = 0x80000001000831D0;
      *(v37 + 40) = 11;
      swift_willThrow();
      v40 = v3;
      v41 = v2;
      v42 = v4;
      v43 = v123;
      v44 = v6;
      v45 = v7;
      goto LABEL_21;
    }

    v122 = v3;
    if (v4)
    {

      v8 = v4;

      v9 = v8;
      v10 = [v9 domain];
      v11 = sub_10007B19C();
      v13 = v12;

      v15 = sub_10007B19C();
      v21 = v14;
      if (v11 == v15 && v13 == v14)
      {
        v14, v14, v15, v16, v17, v18, v19, v20;
        v13, v22, v23, v24, v25, v26, v27, v28;
        v29 = v122;
      }

      else
      {
        v46 = sub_10007B6BC();
        v21, v47, v48, v49, v50, v51, v52, v53;
        v13, v54, v55, v56, v57, v58, v59, v60;
        v29 = v122;
        if ((v46 & 1) == 0)
        {

          goto LABEL_17;
        }
      }

      v61 = [v9 code];

      if (v61 != 7)
      {

        goto LABEL_17;
      }

      v62 = *(v0 + 88);
      swift_getKeyPath();
      swift_getKeyPath();
      sub_10007AF3C();

      v63 = sub_10007AC4C();
      if ((*(*(v63 - 8) + 48))(v62, 1, v63) == 1)
      {
        v64 = *(v0 + 88);

        sub_100008824(v64, &unk_10009ED10, &qword_10007D310);
        v29 = v122;
LABEL_17:
        sub_10007AE0C();
        v65 = v9;
        v66 = sub_10007AE1C();
        v67 = sub_10007B3FC();

        if (os_log_type_enabled(v66, v67))
        {
          v68 = *(v0 + 184);
          v69 = swift_slowAlloc();
          v70 = swift_slowAlloc();
          *v69 = 134218242;
          *(v69 + 4) = v68;
          *(v69 + 12) = 2112;
          *(v69 + 14) = v65;
          *v70 = v4;
          v71 = v65;
          _os_log_impl(&_mh_execute_header, v66, v67, "tryToFetchShare failed to fetch share so throwing--retries that were left: %ld, error: %@", v69, 0x16u);
          sub_100008824(v70, &qword_10009F570, &qword_10007DAF0);
          v29 = v122;
        }

        v72 = *(v0 + 120);
        v73 = *(v0 + 96);
        v74 = *(v0 + 104);

        (*(v74 + 8))(v72, v73);
        sub_100005AB8();
        swift_allocError();
        *v75 = v29;
        *(v75 + 8) = v2;
        *(v75 + 16) = v4;
        *(v75 + 24) = v123;
        *(v75 + 32) = v6;
        *(v75 + 40) = 5;
        swift_willThrow();
        sub_100018B7C(v29, v2, v4, v123, v6, 5u);

        v2, v76, v77, v78, v79, v80, v81, v82;
        v6, v83, v84, v85, v86, v87, v88, v89;
        v40 = v29;
        v41 = v2;
        v42 = v4;
        v43 = v123;
LABEL_20:
        v44 = v6;
        v45 = 5;
LABEL_21:
        sub_100018BDC(v40, v41, v42, v43, v44, v45, v38, v39);
        goto LABEL_22;
      }

      v92 = *(v0 + 57);
      sub_100008824(*(v0 + 88), &unk_10009ED10, &qword_10007D310);
      if ((v92 & 1) == 0)
      {

        sub_10007AE0C();
        v101 = sub_10007AE1C();
        v102 = sub_10007B3FC();
        if (os_log_type_enabled(v101, v102))
        {
          v103 = swift_slowAlloc();
          *v103 = 0;
          _os_log_impl(&_mh_execute_header, v101, v102, "tryToFetchShare not synced to iCloud AND not shared so throw notInICloud error", v103, 2u);
        }

        v104 = *(v0 + 136);
        v105 = *(v0 + 96);
        v106 = *(v0 + 104);

        (*(v106 + 8))(v104, v105);
        sub_100005AB8();
        swift_allocError();
        *v107 = v122;
        *(v107 + 8) = v2;
        *(v107 + 16) = v4;
        *(v107 + 24) = v5;
        *(v107 + 32) = v6;
        *(v107 + 40) = 5;
        swift_willThrow();
        sub_100018B7C(v122, v2, v4, v5, v6, 5u);

        v2, v108, v109, v110, v111, v112, v113, v114;
        v6, v115, v116, v117, v118, v119, v120, v121;
        v40 = v122;
        v41 = v2;
        v42 = v4;
        v43 = v5;
        goto LABEL_20;
      }

      sub_10007AE0C();
      v93 = sub_10007AE1C();
      v94 = sub_10007B41C();
      if (os_log_type_enabled(v93, v94))
      {
        v95 = *(v0 + 184);
        v96 = swift_slowAlloc();
        *v96 = 134217984;
        *(v96 + 4) = v95;
        _os_log_impl(&_mh_execute_header, v93, v94, "About to retry tryToFetchShare post-share when unsynced after 1 second--retries left including this one: %ld", v96, 0xCu);
      }

      v97 = *(v0 + 128);
      v98 = *(v0 + 96);
      v99 = *(v0 + 104);

      (*(v99 + 8))(v97, v98);
      v100 = swift_task_alloc();
      *(v0 + 248) = v100;
      *v100 = v0;
      v100[1] = sub_10004EBEC;
      v1 = 1000000000;
    }

    else
    {
      __break(1u);
    }

    return static Task<>.sleep(nanoseconds:)(v1);
  }

LABEL_22:

  v90 = *(v0 + 8);

  return v90();
}

uint64_t sub_10004EBEC()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 160);
    v4 = *(v2 + 168);
    v5 = sub_100068860;
  }

  else
  {
    v3 = *(v2 + 160);
    v4 = *(v2 + 168);
    v5 = sub_10004ED10;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_10004ED10(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, int64_t a7, int64_t a8)
{
  v9 = v8[29];
  v10 = v8[30];
  v12 = v8[27];
  v11 = v8[28];
  v13 = v8[26];
  v14 = v8[23];
  v10, a2, a3, a4, a5, a6, a7, a8;

  v12, v15, v16, v17, v18, v19, v20, v21;
  sub_100018BDC(v13, v12, v11, v9, v10, 5, v22, v23);

  if (v14 == 1)
  {

    v27 = v8[1];

    return v27();
  }

  else
  {
    v25 = v8[23];
    if (v25 < 2)
    {
      __break(1u);
    }

    else
    {
      v8[23] = v25 - 1;
      v26 = swift_task_alloc();
      v8[24] = v26;
      *v26 = v8;
      v26[1] = sub_10004E104;

      return sub_100059770();
    }
  }

  return result;
}

uint64_t sub_10004EE9C(char a1, char a2)
{
  v4 = sub_10007AE2C();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v15[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (a2)
  {
    if (a1)
    {
      v9 = v6;
      sub_10007AE0C();
      v10 = sub_10007AE1C();
      v11 = sub_10007B3FC();
      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        *v12 = 0;
        _os_log_impl(&_mh_execute_header, v10, v11, "setExecutionModeForSPI specified true for both isPreShare and isAddPeople; this will eventually become an internal error", v12, 2u);
      }

      (*(v5 + 8))(v8, v9);
    }

    swift_getKeyPath();
    swift_getKeyPath();
    v15[13] = 3;
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_10007AF3C();

    if (v15[15] == 3)
    {
      return result;
    }

    if (a1)
    {
      v14 = 1;
    }

    else
    {
      v14 = 2;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    v15[14] = v14;
  }

  return sub_10007AF4C();
}

uint64_t sub_10004F0D8(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 88) = a1;
  sub_1000057A0(&unk_10009ED10, &qword_10007D310);
  *(v2 + 24) = swift_task_alloc();
  sub_10007B32C();
  *(v2 + 32) = sub_10007B31C();
  v4 = sub_10007B2EC();
  *(v2 + 40) = v4;
  *(v2 + 48) = v3;

  return _swift_task_switch(sub_10004F1AC, v4, v3);
}

uint64_t sub_10004F1AC()
{
  v1 = *(v0 + 24);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10007AF3C();

  v2 = sub_10007AC4C();
  *(v0 + 56) = v2;
  v3 = *(v2 - 8);
  *(v0 + 64) = v3;
  result = (*(v3 + 48))(v1, 1, v2);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v5 = swift_task_alloc();
    *(v0 + 72) = v5;
    *v5 = v0;
    v5[1] = sub_10004F2F4;
    v6 = *(v0 + 24);
    v7 = *(v0 + 88);

    return sub_10001A398(v6, v7);
  }

  return result;
}

uint64_t sub_10004F2F4()
{
  v2 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v3 = v2[5];
    v4 = v2[6];
    v5 = sub_10004F48C;
  }

  else
  {
    (*(v2[8] + 8))(v2[3], v2[7]);
    v3 = v2[5];
    v4 = v2[6];
    v5 = sub_10004F420;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_10004F420()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10004F48C()
{
  v1 = v0[7];
  v2 = v0[8];
  v3 = v0[3];

  (*(v2 + 8))(v3, v1);

  v4 = v0[1];

  return v4();
}

unint64_t sub_10004F544(uint64_t a1, _TtC40com_apple_CloudSharingUI_AddParticipants15InitiateSharing *a2, uint64_t a3, unint64_t a4)
{
  v4 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v4 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {
    return 0;
  }

  v7 = 4 * v4;
  v8 = 15;
  while (1)
  {
    v9 = sub_10007B26C();
    v17 = v10;
    if (v9 == a1 && v10 == a2)
    {
      break;
    }

    v18 = sub_10007B6BC();
    v17, v19, v20, v21, v22, v23, v24, v25;
    if (v18)
    {
      return v8;
    }

    v8 = sub_10007B20C();
    if (v7 == v8 >> 14)
    {
      return 0;
    }
  }

  v10, v10, v11, v12, v13, v14, v15, v16;
  return v8;
}

uint64_t sub_10004F634()
{
  v0 = sub_10007AE2C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_unknownObjectRelease();
  }

  else
  {
    sub_10007AE0C();
    v4 = sub_10007AE1C();
    v5 = sub_10007B41C();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "ext computed property--extensionController is nil--will assert", v6, 2u);
    }

    (*(v1 + 8))(v3, v0);
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    __break(1u);
  }

  return result;
}

BOOL sub_10004F79C()
{
  swift_getKeyPath();
  swift_getKeyPath();

  sub_10007AF3C();

  if (!v3)
  {
    return 0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_10007AF3C();

  if (!v2)
  {
    return 0;
  }

  swift_getKeyPath();
  swift_getKeyPath();

  sub_10007AF3C();

  return v1 != 0;
}

uint64_t sub_10004F8DC(uint64_t a1, uint64_t a2, _TtC40com_apple_CloudSharingUI_AddParticipants15InitiateSharing *a3, uint64_t a4, _TtC40com_apple_CloudSharingUI_AddParticipants15InitiateSharing *a5, char a6)
{
  v120 = a2;
  v121 = a3;
  v10 = sub_10007AE2C();
  v11 = *(v10 - 8);
  v122 = v10;
  v123 = v11;
  v12 = __chkstk_darwin(v10);
  v14 = &v119 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v12);
  v17 = &v119 - v16;
  v18 = __chkstk_darwin(v15);
  v20 = &v119 - v19;
  __chkstk_darwin(v18);
  v22 = &v119 - v21;
  v23 = sub_1000057A0(&unk_10009ED10, &qword_10007D310);
  __chkstk_darwin(v23 - 8);
  v25 = &v119 - v24;
  if ((a6 & 1) == 0)
  {
    return 8;
  }

  if (!a5)
  {
    sub_1000187C8(a1, &v119 - v24, &unk_10009ED10, &qword_10007D310);
    v75 = sub_10007AC4C();
    v76 = (*(*(v75 - 8) + 48))(v25, 1, v75);
    sub_100008824(v25, &unk_10009ED10, &qword_10007D310);
    if (v76 != 1)
    {
      return 9;
    }

    v77 = sub_100050218();
    if ((v77 & 0xFE) != 8 && (v77 > 7u || ((1 << v77) & 0xC1) == 0))
    {
      v102 = v77;
      sub_10007AE0C();
      v103 = sub_10007AE1C();
      v104 = sub_10007B41C();
      if (os_log_type_enabled(v103, v104))
      {
        v105 = swift_slowAlloc();
        v106 = swift_slowAlloc();
        v124[0] = v106;
        *v105 = 136315138;
        v107 = sub_10001F500(v102);
        v109 = v108;
        v110 = sub_100037C08(v107, v108, v124);
        v109, v111, v112, v113, v114, v115, v116, v117;
        *(v105 + 4) = v110;
        _os_log_impl(&_mh_execute_header, v103, v104, "Combine for sharingType specific CK sharingType: %s.", v105, 0xCu);
        sub_10000585C(v106);
      }

      (*(v123 + 8))(v17, v122);
      return v102;
    }

    sub_10007AE0C();
    v78 = v121;

    v79 = sub_10007AE1C();
    v80 = sub_10007B41C();
    v78, v81, v82, v83, v84, v85, v86, v87;
    if (os_log_type_enabled(v79, v80))
    {
      v88 = swift_slowAlloc();
      v89 = swift_slowAlloc();
      v124[1] = v78;
      v125 = v89;
      *v88 = 136315138;
      v90 = v120;
      v124[0] = v120;
      sub_1000057A0(&qword_10009ED20, &qword_10007CF90);
      v91 = sub_10007B54C();
      v93 = v92;
      v94 = sub_100037C08(v91, v92, &v125);
      v93, v95, v96, v97, v98, v99, v100, v101;
      *(v88 + 4) = v94;
      _os_log_impl(&_mh_execute_header, v79, v80, "Combine for sharingType sourceAppBundleID: %s.", v88, 0xCu);
      sub_10000585C(v89);

      (*(v123 + 8))(v14, v122);
      if (!v78)
      {
        return 0;
      }
    }

    else
    {

      (*(v123 + 8))(v14, v122);
      v90 = v120;
      if (!v78)
      {
        return 0;
      }
    }

    if (v90 == 0x6C7070612E6D6F63 && v78 == 0xEF7365746F4E2E65 || (sub_10007B6BC() & 1) != 0 || v90 == 0xD000000000000015 && 0x8000000100082700 == v78 || (sub_10007B6BC() & 1) != 0)
    {
      return 1;
    }

    if (v90 == 0xD000000000000013 && 0x80000001000826E0 == v78 || (sub_10007B6BC() & 1) != 0)
    {
      return 3;
    }

    if (v90 == 0xD000000000000010 && 0x80000001000826C0 == v78 || (sub_10007B6BC() & 1) != 0 || v90 == 0xD000000000000016 && 0x80000001000826A0 == v78 || (sub_10007B6BC() & 1) != 0)
    {
      return 4;
    }

    if (v90 == 0xD000000000000010 && 0x8000000100082680 == v121 || (sub_10007B6BC() & 1) != 0 || v120 == 0xD000000000000012 && 0x8000000100082660 == v121 || (sub_10007B6BC() & 1) != 0)
    {
      return 5;
    }

    v118 = (v121 >> 56) & 0xF;
    if ((v121 & 0x2000000000000000) == 0)
    {
      v118 = v120 & 0xFFFFFFFFFFFFLL;
    }

    if (v118)
    {
      return 6;
    }

    return 0;
  }

  v26 = sub_100021110(a4, a5, a1);
  v27 = sub_10001F6E0(v26);
  if ((v27 & 0xFE) != 8 && (v27 == 7 || !v27) && v121)
  {
    v28 = (v121 >> 56) & 0xF;
    if ((v121 & 0x2000000000000000) == 0)
    {
      v28 = v120 & 0xFFFFFFFFFFFFLL;
    }

    if (v28)
    {
      v29 = v27;
      sub_10007AE0C();

      v30 = sub_10007AE1C();
      v31 = sub_10007B41C();
      a5, v32, v33, v34, v35, v36, v37, v38;
      if (os_log_type_enabled(v30, v31))
      {
        v39 = swift_slowAlloc();
        v124[0] = swift_slowAlloc();
        *v39 = 136315394;
        *(v39 + 4) = sub_100037C08(a4, a5, v124);
        *(v39 + 12) = 2080;
        v40 = sub_10001F500(v29);
        v42 = v41;
        v43 = sub_100037C08(v40, v41, v124);
        v42, v44, v45, v46, v47, v48, v49, v50;
        *(v39 + 14) = v43;
        _os_log_impl(&_mh_execute_header, v30, v31, "Combine for sharingType itemUTI: %s, sharingType: %s--return .other for unspecified.", v39, 0x16u);
        swift_arrayDestroy();
      }

      (*(v123 + 8))(v22, v122);
      return 6;
    }
  }

  v52 = v27;
  sub_10007AE0C();

  v53 = sub_10007AE1C();
  v54 = sub_10007B41C();
  a5, v55, v56, v57, v58, v59, v60, v61;
  if (os_log_type_enabled(v53, v54))
  {
    v62 = swift_slowAlloc();
    v124[0] = swift_slowAlloc();
    *v62 = 136315394;
    *(v62 + 4) = sub_100037C08(a4, a5, v124);
    *(v62 + 12) = 2080;
    v63 = v52;
    v64 = sub_10001F500(v52);
    v66 = v65;
    v67 = sub_100037C08(v64, v65, v124);
    v66, v68, v69, v70, v71, v72, v73, v74;
    *(v62 + 14) = v67;
    _os_log_impl(&_mh_execute_header, v53, v54, "Combine for sharingType itemUTI: %s, sharingType: %s.", v62, 0x16u);
    swift_arrayDestroy();

    (*(v123 + 8))(v20, v122);
    return v63;
  }

  else
  {

    (*(v123 + 8))(v20, v122);
    return v52;
  }
}

uint64_t sub_100050218()
{
  v0 = sub_10007AE2C();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v71 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v2);
  v7 = &v71 - v6;
  __chkstk_darwin(v5);
  v9 = &v71 - v8;
  swift_getKeyPath();
  swift_getKeyPath();

  sub_10007AF3C();

  if (!v74)
  {
    sub_10007AE0C();
    v68 = sub_10007AE1C();
    v69 = sub_10007B41C();
    if (os_log_type_enabled(v68, v69))
    {
      v70 = swift_slowAlloc();
      *v70 = 0;
      _os_log_impl(&_mh_execute_header, v68, v69, "ckSharingTypeFromShare on model--no CKShare yet so return .cloudKit(type: .other).", v70, 2u);
    }

    (*(v1 + 8))(v4, v0);
    return 6;
  }

  v10 = v74;
  sub_10007B4FC();
  v12 = v11;
  v13 = sub_10007B50C();

  v12, v14, v15, v16, v17, v18, v19, v20;
  if (!v13 || (v76 = v13, sub_1000057A0(&unk_10009E7A0, &unk_10007DBA8), (swift_dynamicCast() & 1) == 0))
  {
    sub_10007AE0C();
    v65 = sub_10007AE1C();
    v66 = sub_10007B41C();
    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      *v67 = 0;
      _os_log_impl(&_mh_execute_header, v65, v66, "ckSharingTypeFromShare on model--couldn't get a string from CKShare.shareType so return .cloudKit(type: .other).", v67, 2u);
    }

    else
    {
    }

    (*(v1 + 8))(v7, v0);
    return 6;
  }

  v21 = v75;
  v22 = sub_10001FAA4(v74, v75);
  v24 = v23;
  v21, v23, v25, v26, v27, v28, v29, v30;
  sub_10007AE0C();

  v31 = sub_10007AE1C();
  v32 = sub_10007B41C();
  v24, v33, v34, v35, v36, v37, v38, v39;
  if (os_log_type_enabled(v31, v32))
  {
    v40 = swift_slowAlloc();
    v72 = v40;
    v73 = swift_slowAlloc();
    v74 = v73;
    *v40 = 136315138;
    v41 = sub_100020B88(v22, v24);
    v42 = sub_10001F6E0(v41);
    v43 = sub_10001F500(v42);
    v45 = v44;
    LOBYTE(v40) = v32;
    v46 = v22;
    v47 = sub_100037C08(v43, v44, &v74);
    v45, v48, v49, v50, v51, v52, v53, v54;
    v55 = v72;
    *(v72 + 1) = v47;
    v22 = v46;
    _os_log_impl(&_mh_execute_header, v31, v40, "ckSharingTypeFromShare on model--CKShare converts to: %s.", v55, 0xCu);
    sub_10000585C(v73);
  }

  (*(v1 + 8))(v9, v0);
  v56 = sub_100020B88(v22, v24);
  v24, v57, v58, v59, v60, v61, v62, v63;

  return sub_10001F6E0(v56);
}

uint64_t sub_100050658@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t, void, void, void, void, void)@<X1>, _BYTE *a3@<X8>)
{
  v6 = sub_1000057A0(&qword_10009F3C0, &qword_10007F440);
  result = a2(a1, *(a1 + v6[12]), *(a1 + v6[12] + 8), *(a1 + v6[16]), *(a1 + v6[16] + 8), *(a1 + v6[20]));
  *a3 = result;
  return result;
}

_BYTE *sub_1000506D0(_BYTE *result, uint64_t a2)
{
  if (*result == 1)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    return sub_10007AF4C();
  }

  return result;
}

_UNKNOWN **sub_100050754(char a1, void *a2, uint64_t a3)
{
  swift_beginAccess();
  if (!swift_weakLoadStrong())
  {
    return &off_100095B00;
  }

  if (!a2)
  {

    return &off_100095B00;
  }

  v5 = a2;
  v6 = [v5 participants];
  sub_100005C8C(0, &qword_10009E600, CKShareParticipant_ptr);
  v7 = sub_10007B2AC();

  v8 = v5;

  sub_10000CF38(a2);
  v29 = v9;

  if (v7 >> 62)
  {
    goto LABEL_53;
  }

  for (i = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_10007B64C())
  {
    if (i)
    {
      v11 = 0;
      do
      {
        if ((v7 & 0xC000000000000001) != 0)
        {
          v12 = sub_10007B5DC();
        }

        else
        {
          if (v11 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_50;
          }

          v12 = *(v7 + 8 * v11 + 32);
        }

        v13 = v12;
        v14 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          __break(1u);
LABEL_50:
          __break(1u);
          goto LABEL_51;
        }

        if ([v12 role] != 1 && objc_msgSend(v13, "role") == 2 && objc_msgSend(v13, "permission") == 3)
        {
          sub_10007B5FC();
          sub_10007B61C();
          sub_10007B62C();
          sub_10007B60C();
        }

        else
        {
        }

        ++v11;
      }

      while (v14 != i);
      if ((_swiftEmptyArrayStorage & 0x8000000000000000) == 0)
      {
        goto LABEL_23;
      }
    }

    else if ((_swiftEmptyArrayStorage & 0x8000000000000000) == 0)
    {
LABEL_23:
      if ((_swiftEmptyArrayStorage & 0x4000000000000000) == 0)
      {
        v16 = _swiftEmptyArrayStorage[2];
        goto LABEL_25;
      }
    }

    v16 = sub_10007B64C();
LABEL_25:

    if (!i)
    {
      break;
    }

    v24 = 0;
    while (1)
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        v25 = sub_10007B5DC();
      }

      else
      {
        if (v24 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_52;
        }

        v25 = *(v7 + 8 * v24 + 32);
      }

      v26 = v25;
      v27 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if ([v25 role] == 1 || objc_msgSend(v26, "role") == 2 && objc_msgSend(v26, "permission") != 2)
      {
      }

      else
      {
        sub_10007B5FC();
        sub_10007B61C();
        sub_10007B62C();
        sub_10007B60C();
      }

      ++v24;
      if (v27 == i)
      {
        goto LABEL_38;
      }
    }

LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    ;
  }

LABEL_38:
  v7, v17, v18, v19, v20, v21, v22, v23;
  if ((_swiftEmptyArrayStorage & 0x8000000000000000) != 0 || (_swiftEmptyArrayStorage & 0x4000000000000000) != 0)
  {
    goto LABEL_56;
  }

  for (j = _swiftEmptyArrayStorage[2]; ; j = sub_10007B64C())
  {

    if (!__OFSUB__(j, v29))
    {
      break;
    }

    __break(1u);
LABEL_56:
    ;
  }

  if (v16 <= 0)
  {

    return &off_100095A60;
  }

  else if (j - v29 < 1)
  {

    return &off_100095AD8;
  }

  else
  {

    if (a1 == 3)
    {
      return &off_100095A88;
    }

    else
    {
      return &off_100095AB0;
    }
  }
}

uint64_t sub_100050B60(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, _TtC40com_apple_CloudSharingUI_AddParticipants15InitiateSharing *a6, uint64_t a7, uint64_t a8)
{
  v10 = sub_10007AE2C();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v72 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v12);
  v17 = &v72 - v16;
  v18 = __chkstk_darwin(v15);
  v79 = &v72 - v19;
  v20 = __chkstk_darwin(v18);
  v22 = &v72 - v21;
  __chkstk_darwin(v20);
  v24 = &v72 - v23;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v26 = result;
    if (a1)
    {
      v73 = v14;
      v74 = v17;
      v76 = v11;
      v77 = v10;
      swift_getKeyPath();
      swift_getKeyPath();
      sub_10007AF3C();

      v75 = v80;
      swift_getKeyPath();
      swift_getKeyPath();
      sub_10007AF3C();

      v27 = v80;
      swift_getKeyPath();
      swift_getKeyPath();

      sub_10007AF3C();

      v28 = v80;
      swift_getKeyPath();
      swift_getKeyPath();
      sub_10007AF3C();

      v29 = v80 == 1 && (a1 == 1) | v28 & 1 && v75 != 2 && v27 == 2;
      swift_getKeyPath();
      swift_getKeyPath();
      LOBYTE(v80) = v29;

      sub_10007AF4C();
      sub_10007AE0C();

      v30 = sub_10007AE1C();
      v31 = sub_10007B41C();
      v32 = os_log_type_enabled(v30, v31);
      v78 = v26;
      v72 = a6;
      if (v32)
      {
        v33 = v75 == 2;
        v34 = swift_slowAlloc();
        *v34 = 67241216;
        *(v34 + 4) = 1;
        *(v34 + 8) = 1026;
        *(v34 + 10) = v33;
        *(v34 + 14) = 1026;
        *(v34 + 16) = v27 == 2;
        *(v34 + 20) = 1026;
        *(v34 + 22) = a1 == 1;
        *(v34 + 26) = 1026;
        swift_getKeyPath();
        swift_getKeyPath();
        sub_10007AF3C();

        *(v34 + 28) = v80;

        _os_log_impl(&_mh_execute_header, v30, v31, "executionMode is set. appIsOKForCoOwners: %{BOOL,public}d, R/O: %{BOOL,public}d, private: %{BOOL,public}d, isPreShare: %{BOOL,public}d, allowCoOwnersEditing: %{BOOL,public}d", v34, 0x20u);
      }

      else
      {
      }

      v35 = v77;
      v36 = *(v76 + 8);
      v36(v24, v77);
      swift_getKeyPath();
      swift_getKeyPath();
      sub_10007AF3C();

      if (v80)
      {
        if (a1 != 1)
        {
          swift_getKeyPath();
          swift_getKeyPath();

          sub_10007AF3C();

          v37 = v80;
          if (v80)
          {
            v38 = [(InitiateSharing *)v80 participants];
            sub_100005C8C(0, &qword_10009E600, CKShareParticipant_ptr);
            v39 = sub_10007B2AC();

            v47 = v39;
            if (v39 >> 62)
            {
              v48 = sub_10007B64C();
              v47 = v39;
            }

            else
            {
              v48 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            v49 = v74;
            v47, v40, v41, v42, v43, v44, v45, v46;

            if (v48 > 1)
            {
              sub_10007AE0C();
              v50 = sub_10007AE1C();
              v51 = sub_10007B3DC();
              if (os_log_type_enabled(v50, v51))
              {
                v52 = swift_slowAlloc();
                *v52 = 0;
                _os_log_impl(&_mh_execute_header, v50, v51, "Do allow co-owner editing with participants.", v52, 2u);
              }

              v36(v79, v35);
              swift_getKeyPath();
              swift_getKeyPath();

              sub_10007AF3C();

              if (v80 == 1)
              {
                v53 = v72;
              }

              else
              {
                swift_getKeyPath();
                swift_getKeyPath();
                sub_10007AF3C();

                v53 = v80;
              }

              sub_100077834(v53);
              v53, v62, v63, v64, v65, v66, v67, v68;
              sub_10007AE0C();

              v69 = sub_10007AE1C();
              v70 = sub_10007B41C();
              if (os_log_type_enabled(v69, v70))
              {
                v71 = swift_slowAlloc();
                *v71 = 67109120;
                *(v71 + 4) = sub_100078014() & 1;

                _os_log_impl(&_mh_execute_header, v69, v70, "Setting newParticipantsCanBeCoOwners from CKShare state: %{BOOL}d.", v71, 8u);
                v49 = v74;
              }

              else
              {
              }

              v61 = v49;
              return (v36)(v61, v35);
            }
          }

          else
          {
          }

          v57 = v73;
          sub_10007AE0C();
          v58 = sub_10007AE1C();
          v59 = sub_10007B3DC();
          if (os_log_type_enabled(v58, v59))
          {
            v60 = swift_slowAlloc();
            *v60 = 0;
            _os_log_impl(&_mh_execute_header, v58, v59, "Do allow co-owner editing without participants.", v60, 2u);
          }

          else
          {
          }

          v61 = v57;
          return (v36)(v61, v35);
        }
      }

      else
      {
        sub_10007AE0C();
        v54 = sub_10007AE1C();
        v55 = sub_10007B3DC();
        if (os_log_type_enabled(v54, v55))
        {
          v56 = swift_slowAlloc();
          *v56 = 0;
          _os_log_impl(&_mh_execute_header, v54, v55, "Do not allow co-owner editing. Updating state.", v56, 2u);
        }

        v36(v22, v35);
        sub_100077834(&off_100095B28);
      }
    }
  }

  return result;
}

void sub_1000514D4(void **a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    if (v2)
    {
      v3 = v2;
      sub_10007B4FC();
      v5 = v4;
      v6 = sub_10007B50C();

      v5, v7, v8, v9, v10, v11, v12, v13;
      if (v6)
      {
        objc_opt_self();
        if (swift_dynamicCastObjCClass())
        {
          sub_10007B19C();
          swift_getKeyPath();
          swift_getKeyPath();
          sub_10007AF4C();

          swift_unknownObjectRelease();
          return;
        }

        swift_unknownObjectRelease();
      }

      swift_getKeyPath();
      swift_getKeyPath();
      sub_10007AF4C();
    }

    else
    {
    }
  }
}

uint64_t sub_100051618(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (swift_unknownObjectWeakLoadStrong())
    {
      if (v2 == 8)
      {
LABEL_4:

        return swift_unknownObjectRelease();
      }

      swift_getKeyPath();
      swift_getKeyPath();
      sub_10007AF3C();

      if (v4 != 8)
      {
        if (v4 == 9)
        {
          if (v2 > 6)
          {
            goto LABEL_4;
          }

LABEL_16:
          if (v2 == 4)
          {
            swift_getKeyPath();
            swift_getKeyPath();

            sub_10007AF4C();
          }

          goto LABEL_4;
        }

        if (v2 == 9 || v4 == 7 || v2 == 7 || v4 == v2)
        {
          goto LABEL_4;
        }
      }

      if (v2 > 6)
      {
        goto LABEL_4;
      }

      goto LABEL_16;
    }
  }

  return result;
}

uint64_t sub_10005179C(_BYTE *a1, uint64_t a2)
{
  v3 = sub_1000057A0(&qword_10009F370, &qword_10007FC90);
  result = __chkstk_darwin(v3 - 8);
  v6 = &v11[-v5];
  if (*a1 == 2)
  {
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      v7 = result;
      swift_getKeyPath();
      swift_getKeyPath();
      sub_10007AF3C();

      if (v11[7] == 3)
      {
        sub_10007B33C();
        v8 = sub_10007B35C();
        (*(*(v8 - 8) + 56))(v6, 0, 1, v8);
        sub_10007B32C();

        v9 = sub_10007B31C();
        v10 = swift_allocObject();
        v10[2] = v9;
        v10[3] = &protocol witness table for MainActor;
        v10[4] = v7;
        sub_10000DAD0(0, 0, v6, &unk_10007F360, v10);
      }
    }
  }

  return result;
}

uint64_t sub_10005196C()
{
  v0[2] = sub_10007B32C();
  v0[3] = sub_10007B31C();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_100051A1C;

  return sub_100051B58(1500);
}

uint64_t sub_100051A1C()
{

  v1 = sub_10007B2EC();

  return _swift_task_switch(sub_10006886C, v1, v0);
}

uint64_t sub_100051B58(uint64_t a1)
{
  v2[9] = a1;
  v2[10] = v1;
  v3 = sub_10007AE2C();
  v2[11] = v3;
  v2[12] = *(v3 - 8);
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  sub_10007B32C();
  v2[15] = sub_10007B31C();
  v5 = sub_10007B2EC();
  v2[16] = v5;
  v2[17] = v4;

  return _swift_task_switch(sub_100051C58, v5, v4);
}

uint64_t sub_100051C58(uint64_t a1)
{
  v2 = *(v1 + 72);
  if (v2 < 1)
  {
    __break(1u);
    return static Task<>.sleep(nanoseconds:)(a1);
  }

  *(v1 + 144) = BRCloudDocsErrorDomain;
  *(v1 + 152) = CKErrorDomain;
  *(v1 + 160) = v2;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10007AF3C();

  v3 = *(v1 + 57);
  if (v3 > 2)
  {
    if (v3 - 4 < 2)
    {
      goto LABEL_15;
    }
  }

  else
  {
    if (v3 == 1)
    {
      v4 = swift_task_alloc();
      *(v1 + 168) = v4;
      *v4 = v1;
      v4[1] = sub_100051F44;
      a1 = 1000000000;

      return static Task<>.sleep(nanoseconds:)(a1);
    }

    swift_getKeyPath();
    swift_getKeyPath();
    *(v1 + 63) = 3;

    sub_10007AF4C();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_10007AF3C();

  v5 = *(v1 + 58);
  if (v5 == 4 || v5 == 2)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    *(v1 + 59) = 1;

    sub_10007AF4C();
    v6 = swift_task_alloc();
    *(v1 + 176) = v6;
    *v6 = v1;
    v6[1] = sub_100052340;

    return sub_10004C5D4();
  }

LABEL_15:

  v8 = *(v1 + 8);

  return v8();
}

uint64_t sub_100051F44()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 128);
    v4 = *(v2 + 136);
    v5 = sub_100068844;
  }

  else
  {
    v3 = *(v2 + 128);
    v4 = *(v2 + 136);
    v5 = sub_100052068;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_100052068(uint64_t a1)
{
  v2 = *(v1 + 160);
  if (v2 == 1)
  {
    goto LABEL_16;
  }

  if (v2 < 2)
  {
    __break(1u);
    return static Task<>.sleep(nanoseconds:)(a1);
  }

  *(v1 + 160) = v2 - 1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10007AF3C();

  v3 = *(v1 + 57);
  if (v3 > 2)
  {
    if (v3 - 4 < 2)
    {
      goto LABEL_16;
    }
  }

  else
  {
    if (v3 == 1)
    {
      v4 = swift_task_alloc();
      *(v1 + 168) = v4;
      *v4 = v1;
      v4[1] = sub_100051F44;
      a1 = 1000000000;

      return static Task<>.sleep(nanoseconds:)(a1);
    }

    swift_getKeyPath();
    swift_getKeyPath();
    *(v1 + 63) = 3;

    sub_10007AF4C();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_10007AF3C();

  v5 = *(v1 + 58);
  if (v5 == 4 || v5 == 2)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    *(v1 + 59) = 1;

    sub_10007AF4C();
    v6 = swift_task_alloc();
    *(v1 + 176) = v6;
    *v6 = v1;
    v6[1] = sub_100052340;

    return sub_10004C5D4();
  }

LABEL_16:

  v8 = *(v1 + 8);

  return v8();
}

uint64_t sub_100052340()
{
  v2 = *v1;
  *(*v1 + 184) = v0;

  v3 = *(v2 + 136);
  v4 = *(v2 + 128);
  if (v0)
  {
    v5 = sub_1000527B8;
  }

  else
  {
    v5 = sub_10005247C;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_10005247C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 62) = 4;

  v1 = sub_10007AF4C();
  v2 = *(v0 + 160);
  if (v2 == 1)
  {
    goto LABEL_16;
  }

  if (v2 < 2)
  {
    __break(1u);
    return static Task<>.sleep(nanoseconds:)(v1);
  }

  *(v0 + 160) = v2 - 1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10007AF3C();

  v3 = *(v0 + 57);
  if (v3 > 2)
  {
    if (v3 - 4 < 2)
    {
      goto LABEL_16;
    }
  }

  else
  {
    if (v3 == 1)
    {
      v4 = swift_task_alloc();
      *(v0 + 168) = v4;
      *v4 = v0;
      v4[1] = sub_100051F44;
      v1 = 1000000000;

      return static Task<>.sleep(nanoseconds:)(v1);
    }

    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 63) = 3;

    sub_10007AF4C();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_10007AF3C();

  v5 = *(v0 + 58);
  if (v5 == 4 || v5 == 2)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 59) = 1;

    sub_10007AF4C();
    v6 = swift_task_alloc();
    *(v0 + 176) = v6;
    *v6 = v0;
    v6[1] = sub_100052340;

    return sub_10004C5D4();
  }

LABEL_16:

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_1000527B8()
{
  v125 = v0;
  *(v0 + 64) = *(v0 + 184);
  swift_errorRetain();
  sub_1000057A0(&qword_10009E7B0, &qword_10007CFC0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_16;
  }

  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  *(v0 + 192) = v3;
  *(v0 + 200) = v4;
  v6 = *(v0 + 32);
  v5 = *(v0 + 40);
  *(v0 + 208) = v6;
  *(v0 + 216) = v5;
  v7 = *(v0 + 48);
  *(v0 + 224) = v7;
  v8 = *(v0 + 56);
  if (v8 != 1)
  {
    sub_100018BDC(v3, v4, v6, v5, v7, v8, v1, v2);
    goto LABEL_16;
  }

  v121 = v5;
  v122 = v3;
  if (!v6)
  {
LABEL_38:
    __break(1u);
    return static Task<>.sleep(nanoseconds:)(v3);
  }

  v9 = v6;
  v123 = v4;

  v10 = [v9 domain];
  v11 = sub_10007B19C();
  v13 = v12;

  v15 = sub_10007B19C();
  v21 = v14;
  if (v11 == v15 && v13 == v14)
  {
    v14, v14, v15, v16, v17, v18, v19, v20;
    v13, v22, v23, v24, v25, v26, v27, v28;
    goto LABEL_9;
  }

  v29 = sub_10007B6BC();
  v21, v30, v31, v32, v33, v34, v35, v36;
  v13, v37, v38, v39, v40, v41, v42, v43;
  if (v29)
  {
LABEL_9:
    v44 = [v9 code];

    if (v44 == 7)
    {
      v45 = swift_task_alloc();
      *(v0 + 232) = v45;
      *v45 = v0;
      v46 = sub_100052FE4;
      goto LABEL_23;
    }

    goto LABEL_12;
  }

LABEL_12:
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 61) = 5;

  sub_10007AF4C();
  sub_10007AE0C();
  v47 = v9;
  v48 = v123;

  v49 = sub_10007AE1C();
  v50 = sub_10007B3FC();
  v123, v51, v52, v53, v54, v55, v56, v57;

  v7, v58, v59, v60, v61, v62, v63, v64;
  v120 = v50;
  v65 = os_log_type_enabled(v49, v50);
  v66 = *(v0 + 112);
  v68 = *(v0 + 88);
  v67 = *(v0 + 96);
  if (v65)
  {
    v118 = *(v0 + 112);
    v69 = swift_slowAlloc();
    v117 = swift_slowAlloc();
    v124 = v117;
    *v69 = 136315138;
    v119 = v47;
    v70 = v47;
    v71 = [v70 description];
    log = v49;
    v116 = v68;
    v72 = sub_10007B19C();
    v74 = v73;

    v48 = v123;
    v75 = sub_100037C08(v72, v74, &v124);
    v74, v76, v77, v78, v79, v80, v81, v82;
    *(v69 + 4) = v75;
    v47 = v119;
    _os_log_impl(&_mh_execute_header, log, v120, "tryToCreateShareIfNeeded not-in-iCloud error after retries: %s", v69, 0xCu);
    sub_10000585C(v117);

    (*(v67 + 8))(v118, v116);
  }

  else
  {

    (*(v67 + 8))(v66, v68);
  }

  v83 = v47;
  sub_10005A3E4(1u, v6);
  sub_100018BDC(v122, v48, v6, v121, v7, 1, v84, v85);

  v48, v86, v87, v88, v89, v90, v91, v92;
  v7, v93, v94, v95, v96, v97, v98, v99;
LABEL_16:
  v100 = *(v0 + 152);
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 60) = 5;

  sub_10007AF4C();
  v101 = [objc_allocWithZone(NSError) initWithDomain:v100 code:1 userInfo:0];
  sub_10007AE0C();
  v102 = sub_10007AE1C();
  v103 = sub_10007B3FC();
  if (os_log_type_enabled(v102, v103))
  {
    v104 = swift_slowAlloc();
    *v104 = 0;
    _os_log_impl(&_mh_execute_header, v102, v103, "tryToCreateShareIfNeeded unexpected error, returning CKError.internalError as best approximation", v104, 2u);
  }

  v106 = *(v0 + 96);
  v105 = *(v0 + 104);
  v107 = *(v0 + 88);

  (*(v106 + 8))(v105, v107);
  v108 = v101;
  sub_10005A3E4(1u, v101);

  v109 = *(v0 + 160);
  if (v109 == 1)
  {
    goto LABEL_34;
  }

  if (v109 < 2)
  {
    __break(1u);
    goto LABEL_38;
  }

  *(v0 + 160) = v109 - 1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10007AF3C();

  v110 = *(v0 + 57);
  if (v110 > 2)
  {
    if (v110 - 4 < 2)
    {
      goto LABEL_34;
    }
  }

  else
  {
    if (v110 == 1)
    {
      v45 = swift_task_alloc();
      *(v0 + 168) = v45;
      *v45 = v0;
      v46 = sub_100051F44;
LABEL_23:
      v45[1] = v46;
      v3 = 1000000000;

      return static Task<>.sleep(nanoseconds:)(v3);
    }

    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 63) = 3;

    sub_10007AF4C();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_10007AF3C();

  v111 = *(v0 + 58);
  if (v111 == 4 || v111 == 2)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 59) = 1;

    sub_10007AF4C();
    v112 = swift_task_alloc();
    *(v0 + 176) = v112;
    *v112 = v0;
    v112[1] = sub_100052340;

    return sub_10004C5D4();
  }

LABEL_34:

  v114 = *(v0 + 8);

  return v114();
}

uint64_t sub_100052FE4()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 128);
    v4 = *(v2 + 136);
    v5 = sub_100068864;
  }

  else
  {
    v3 = *(v2 + 128);
    v4 = *(v2 + 136);
    v5 = sub_100053108;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_100053108()
{
  v1 = *(v0 + 216);
  v2 = *(v0 + 224);
  v4 = *(v0 + 200);
  v3 = *(v0 + 208);
  v5 = *(v0 + 192);

  v4, v6, v7, v8, v9, v10, v11, v12;

  v2, v13, v14, v15, v16, v17, v18, v19;
  sub_100018BDC(v5, v4, v3, v1, v2, 1, v20, v21);
  v23 = *(v0 + 160);
  if (v23 == 1)
  {
    goto LABEL_16;
  }

  if (v23 < 2)
  {
    __break(1u);
    return static Task<>.sleep(nanoseconds:)(v22);
  }

  *(v0 + 160) = v23 - 1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10007AF3C();

  v24 = *(v0 + 57);
  if (v24 > 2)
  {
    if (v24 - 4 < 2)
    {
      goto LABEL_16;
    }
  }

  else
  {
    if (v24 == 1)
    {
      v25 = swift_task_alloc();
      *(v0 + 168) = v25;
      *v25 = v0;
      v25[1] = sub_100051F44;
      v22 = 1000000000;

      return static Task<>.sleep(nanoseconds:)(v22);
    }

    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 63) = 3;

    sub_10007AF4C();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_10007AF3C();

  v26 = *(v0 + 58);
  if (v26 == 4 || v26 == 2)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 59) = 1;

    sub_10007AF4C();
    v27 = swift_task_alloc();
    *(v0 + 176) = v27;
    *v27 = v0;
    v27[1] = sub_100052340;

    return sub_10004C5D4();
  }

LABEL_16:

  v29 = *(v0 + 8);

  return v29();
}

uint64_t sub_100053430(unsigned __int8 a1, uint64_t a2)
{
  v2 = a1;
  v3 = sub_1000057A0(&qword_10009F370, &qword_10007FC90);
  result = __chkstk_darwin(v3 - 8);
  v6 = &v12 - v5;
  if (v2 == 4)
  {
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      v7 = result;
      swift_getKeyPath();
      swift_getKeyPath();
      sub_10007AF3C();

      if (HIBYTE(v12) == 1)
      {
        v8 = &unk_10007F350;
      }

      else
      {
        swift_getKeyPath();
        swift_getKeyPath();
        sub_10007AF3C();

        if (HIBYTE(v12) != 3)
        {
        }

        swift_getKeyPath();
        swift_getKeyPath();
        sub_10007AF3C();

        if ((HIBYTE(v12) - 2) < 4u || (v12 & 0x100000000000000) != 0)
        {
        }

        v8 = &unk_10007F340;
      }

      sub_10007B33C();
      v9 = sub_10007B35C();
      (*(*(v9 - 8) + 56))(v6, 0, 1, v9);
      sub_10007B32C();

      v10 = sub_10007B31C();
      v11 = swift_allocObject();
      v11[2] = v10;
      v11[3] = &protocol witness table for MainActor;
      v11[4] = v7;
      sub_10000DAD0(0, 0, v6, v8, v11);
    }
  }

  return result;
}

uint64_t sub_1000536DC()
{
  v0[2] = sub_10007B32C();
  v0[3] = sub_10007B31C();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_100051A1C;

  return sub_10005378C(1);
}

uint64_t sub_10005378C(char a1)
{
  *(v2 + 96) = v1;
  *(v2 + 163) = a1;
  *(v2 + 104) = sub_10007B32C();
  *(v2 + 112) = sub_10007B31C();
  v3 = swift_task_alloc();
  *(v2 + 120) = v3;
  *v3 = v2;
  v3[1] = sub_100053844;

  return sub_100051B58(300);
}

uint64_t sub_100053844()
{
  v1 = *v0;

  v3 = sub_10007B2EC();
  *(v1 + 128) = v3;
  *(v1 + 136) = v2;

  return _swift_task_switch(sub_100053988, v3, v2);
}

uint64_t sub_100053988()
{
  if ((*(v0 + 163) & 1) == 0)
  {

    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 57) = 3;

LABEL_7:
    sub_10007AF4C();
    goto LABEL_8;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_10007AF3C();

  if (*(v0 + 58) != 4)
  {

    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 59) = 1;

    goto LABEL_7;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_10007AF3C();

  if (*(v0 + 60) == 2)
  {

LABEL_8:
    v1 = *(v0 + 8);

    return v1();
  }

  v3 = *(v0 + 96);
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 61) = 1;

  sub_10007AF4C();

  v4 = sub_100078014();

  v5 = *(*(v3 + 16) + OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants12OptionsModel_allowAccessRequestsSPIOverride);
  if (v5 == 2)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    sub_10007AF3C();

    LOBYTE(v5) = *(v0 + 62);
  }

  v6 = swift_task_alloc();
  *(v0 + 144) = v6;
  *v6 = v0;
  v6[1] = sub_100053C94;

  return sub_100048564(v4 & 1, v5 & 1);
}

uint64_t sub_100053C94()
{
  v2 = *v1;
  *(*v1 + 152) = v0;

  v3 = *(v2 + 136);
  v4 = *(v2 + 128);
  if (v0)
  {
    v5 = sub_100053E84;
  }

  else
  {
    v5 = sub_100053DD0;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100053DD0()
{

  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 162) = 2;

  sub_10007AF4C();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100053E84()
{
  v1 = v0;
  v2 = *(v0 + 152);

  *(v0 + 64) = v2;
  v3 = v0 + 64;
  swift_errorRetain();
  sub_1000057A0(&qword_10009E7B0, &qword_10007CFC0);
  if (swift_dynamicCast())
  {

    v4 = *(v0 + 24);
    v36 = *(v0 + 16);
    v6 = *(v0 + 32);
    v5 = *(v0 + 40);
    v7 = *(v0 + 48);
    v8 = *(v0 + 56);
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 161) = 4;

    result = sub_10007AF4C();
    if (v8 == 10)
    {
      if (!v6)
      {
        __break(1u);
        return result;
      }

      v10 = v6;

      sub_10005A3E4(1u, v6);
      sub_100018BDC(v36, v4, v6, v5, v7, 0xA, v11, v12);

      v4, v13, v14, v15, v16, v17, v18, v19;
      v7, v20, v21, v22, v23, v24, v25, v26;
    }

    else
    {
      v31 = [objc_allocWithZone(NSError) initWithDomain:BRCloudDocsErrorDomain code:46 userInfo:0];
      sub_10005A3E4(2u, v31);
      sub_100018BDC(v36, v4, v6, v5, v7, v8, v32, v33);
    }
  }

  else
  {
    v27 = *(v0 + 152);

    *(v1 + 72) = v27;
    swift_errorRetain();
    type metadata accessor for CKError(0);
    if (swift_dynamicCast())
    {

      v28 = *(v3 + 16);
      swift_getKeyPath();
      swift_getKeyPath();
      *(v3 + 96) = 4;

      sub_10007AF4C();
      *(v3 + 24) = v28;
      sub_1000661F4(&qword_10009E0B8, type metadata accessor for CKError, &unk_10007CDC0);
      v29 = CKErrorDomain;
      v30 = [objc_allocWithZone(NSError) initWithDomain:v29 code:sub_10007AB5C() userInfo:0];

      sub_10005A3E4(1u, v30);
    }

    else
    {

      swift_getKeyPath();
      swift_getKeyPath();
      *(v3 - 1) = 4;

      sub_10007AF4C();
      v34 = sub_10007AB7C();
      sub_10005A3E4(2u, v34);
    }
  }

  v35 = *(v1 + 8);

  return v35();
}

uint64_t sub_100054280(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  sub_10007B32C();
  v4[3] = sub_10007B31C();
  v6 = sub_10007B2EC();
  v4[4] = v6;
  v4[5] = v5;

  return _swift_task_switch(sub_100054318, v6, v5);
}

uint64_t sub_100054318()
{
  v1 = (v0[2] + OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants12SharingModel_lastServicesData);
  v2 = *v1;
  v0[6] = *v1;
  v3 = v1[1];
  swift_unknownObjectRetain();
  v4 = swift_task_alloc();
  v0[7] = v4;
  *v4 = v0;
  v4[1] = sub_1000543E4;

  return sub_100054528(0, v2, v3);
}

uint64_t sub_1000543E4()
{
  v1 = *v0;

  swift_unknownObjectRelease();
  v2 = *(v1 + 40);
  v3 = *(v1 + 32);

  return _swift_task_switch(sub_10006886C, v3, v2);
}

uint64_t sub_100054528(char a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 80) = a3;
  *(v4 + 88) = v3;
  *(v4 + 72) = a2;
  *(v4 + 145) = a1;
  sub_10007B32C();
  *(v4 + 96) = sub_10007B31C();
  v6 = sub_10007B2EC();
  *(v4 + 104) = v6;
  *(v4 + 112) = v5;

  return _swift_task_switch(sub_1000545C8, v6, v5);
}

uint64_t sub_1000545C8()
{
  *(*(v0 + 88) + OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants12SharingModel_lastServicesData) = *(v0 + 72);
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  v1 = swift_task_alloc();
  *(v0 + 120) = v1;
  *v1 = v0;
  v1[1] = sub_100054688;
  v2 = *(v0 + 145);

  return sub_10005378C(v2);
}

uint64_t sub_100054688()
{
  v1 = *v0;

  v2 = *(v1 + 112);
  v3 = *(v1 + 104);

  return _swift_task_switch(sub_1000547A8, v3, v2);
}

uint64_t sub_1000547A8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10007AF3C();

  if (*(v0 + 57) != 4 || (swift_getKeyPath(), swift_getKeyPath(), sub_10007AF3C(), , , *(v0 + 59) != 3) && (swift_getKeyPath(), swift_getKeyPath(), sub_10007AF3C(), , , *(v0 + 60) != 2))
  {
    v1 = *(v0 + 145);

    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 58) = v1;

    sub_10007AF4C();
    goto LABEL_7;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_10007AF3C();

  if (*(v0 + 61) == 3)
  {

LABEL_7:
    v2 = *(v0 + 8);

    return v2();
  }

  v4 = *(v0 + 145);
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 62) = v4;

  sub_10007AF4C();
  v5 = swift_task_alloc();
  *(v0 + 128) = v5;
  *v5 = v0;
  v5[1] = sub_100054A74;

  return sub_10004A150();
}

uint64_t sub_100054A74()
{
  v2 = *v1;
  *(*v1 + 136) = v0;

  v3 = *(v2 + 112);
  v4 = *(v2 + 104);
  if (v0)
  {
    v5 = sub_100054C60;
  }

  else
  {
    v5 = sub_100054BB0;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100054BB0()
{

  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 144) = 3;

  sub_10007AF4C();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100054C60()
{
  v1 = v0;
  v2 = *(v0 + 136);

  *(v0 + 64) = v2;
  swift_errorRetain();
  sub_1000057A0(&qword_10009E7B0, &qword_10007CFC0);
  if (swift_dynamicCast())
  {

    v3 = *(v0 + 24);
    v31 = *(v0 + 16);
    v5 = *(v0 + 32);
    v4 = *(v0 + 40);
    v6 = *(v0 + 48);
    v7 = *(v0 + 56);
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 63) = 5;

    result = sub_10007AF4C();
    if (v7 == 4)
    {
      if (!v5)
      {
        __break(1u);
        return result;
      }

      v9 = v5;

      sub_10005A3E4(5u, v5);
      sub_100018BDC(v31, v3, v5, v4, v6, 4, v10, v11);

      v3, v12, v13, v14, v15, v16, v17, v18;
      v6, v19, v20, v21, v22, v23, v24, v25;
    }

    else
    {
      v27 = [objc_allocWithZone(NSError) initWithDomain:BRCloudDocsErrorDomain code:46 userInfo:0];
      sub_10005A3E4(2u, v27);
      sub_100018BDC(v31, v3, v5, v4, v6, v7, v28, v29);
    }
  }

  else
  {

    v26 = sub_10007AB7C();
    sub_10005A3E4(2u, v26);
  }

  v30 = *(v1 + 8);

  return v30();
}

uint64_t sub_100054EB4(unsigned __int8 a1, uint64_t a2)
{
  v2 = a1;
  v3 = sub_1000057A0(&qword_10009F370, &qword_10007FC90);
  result = __chkstk_darwin(v3 - 8);
  v6 = &v12 - v5;
  if (v2 == 2)
  {
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      v7 = result;
      swift_getKeyPath();
      swift_getKeyPath();
      sub_10007AF3C();

      v8 = HIBYTE(v12);
      if (HIBYTE(v12) - 2 >= 4)
      {
        sub_10007B33C();
        v9 = sub_10007B35C();
        (*(*(v9 - 8) + 56))(v6, 0, 1, v9);
        sub_10007B32C();

        v10 = sub_10007B31C();
        v11 = swift_allocObject();
        *(v11 + 16) = v10;
        *(v11 + 24) = &protocol witness table for MainActor;
        *(v11 + 32) = v7;
        *(v11 + 40) = v8 & 1;
        sub_10000DAD0(0, 0, v6, &unk_10007EF80, v11);
      }
    }
  }

  return result;
}

uint64_t sub_100055078(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 64) = a5;
  *(v5 + 16) = a4;
  sub_10007B32C();
  *(v5 + 24) = sub_10007B31C();
  v7 = sub_10007B2EC();
  *(v5 + 32) = v7;
  *(v5 + 40) = v6;

  return _swift_task_switch(sub_100055114, v7, v6);
}

uint64_t sub_100055114()
{
  v1 = (*(v0 + 16) + OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants12SharingModel_lastServicesData);
  v2 = *v1;
  *(v0 + 48) = *v1;
  v3 = v1[1];
  swift_unknownObjectRetain();
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  *v4 = v0;
  v4[1] = sub_1000551E4;
  v5 = *(v0 + 64);

  return sub_100054528(v5, v2, v3);
}

uint64_t sub_1000551E4()
{
  v1 = *v0;

  swift_unknownObjectRelease();
  v2 = *(v1 + 40);
  v3 = *(v1 + 32);

  return _swift_task_switch(sub_100055328, v3, v2);
}

uint64_t sub_100055328()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100055388(unsigned __int8 a1, uint64_t a2)
{
  v2 = a1;
  v3 = sub_1000057A0(&qword_10009F370, &qword_10007FC90);
  result = __chkstk_darwin(v3 - 8);
  v6 = &v11 - v5;
  if (v2 == 3)
  {
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      v7 = result;
      sub_10007B33C();
      v8 = sub_10007B35C();
      (*(*(v8 - 8) + 56))(v6, 0, 1, v8);
      sub_10007B32C();

      v9 = sub_10007B31C();
      v10 = swift_allocObject();
      v10[2] = v9;
      v10[3] = &protocol witness table for MainActor;
      v10[4] = v7;
      sub_10004C328(0, 0, v6, &unk_10007EF10, v10);
    }
  }

  return result;
}

uint64_t sub_1000554F0(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6, double a7)
{
  *(v7 + 104) = a6;
  *(v7 + 112) = a7;
  *(v7 + 88) = a4;
  *(v7 + 96) = a5;
  *(v7 + 256) = a2;
  *(v7 + 72) = a1;
  *(v7 + 80) = a3;
  v8 = sub_10007B09C();
  *(v7 + 120) = v8;
  *(v7 + 128) = *(v8 - 8);
  *(v7 + 136) = swift_task_alloc();
  sub_1000057A0(&unk_10009ED10, &qword_10007D310);
  *(v7 + 144) = swift_task_alloc();
  *(v7 + 152) = swift_task_alloc();
  v9 = sub_10007AC4C();
  *(v7 + 160) = v9;
  *(v7 + 168) = *(v9 - 8);
  *(v7 + 176) = swift_task_alloc();
  v10 = sub_10007AE2C();
  *(v7 + 184) = v10;
  *(v7 + 192) = *(v10 - 8);
  *(v7 + 200) = swift_task_alloc();
  sub_10007B32C();
  *(v7 + 208) = sub_10007B31C();
  v12 = sub_10007B2EC();
  *(v7 + 216) = v12;
  *(v7 + 224) = v11;

  return _swift_task_switch(sub_1000556EC, v12, v11);
}

uint64_t sub_1000556EC()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 232) = Strong;
  if (!Strong)
  {

    v4 = [objc_allocWithZone(UIImage) init];
LABEL_22:

    v22 = *(v0 + 8);

    return v22(v4);
  }

  v2 = *(v0 + 80);
  if (v2)
  {
    v3 = v2;

    v4 = *(v0 + 80);
    goto LABEL_12;
  }

  if (*(v0 + 256))
  {

    v4 = sub_10001ED64();
    v5 = v4;
    sub_10007AE0C();
    v6 = v5;
    v7 = sub_10007AE1C();
    v8 = sub_10007B41C();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      *v9 = 138412290;
      *(v9 + 4) = v6;
      *v10 = v4;
      _os_log_impl(&_mh_execute_header, v7, v8, "iOS appIcon: icon: %@", v9, 0xCu);
      sub_100008824(v10, &qword_10009F570, &qword_10007DAF0);
    }

    else
    {

      v7 = v6;
    }

    v14 = *(v0 + 192);
    v13 = *(v0 + 200);
    v15 = *(v0 + 184);

    (*(v14 + 8))(v13, v15);
LABEL_12:
    sub_100005C8C(0, &unk_10009F380, NSObject_ptr);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_10007AF3C();

    v16 = *(v0 + 40);
    if (qword_10009DF58 != -1)
    {
      swift_once();
    }

    v17 = qword_10009EB00;
    v18 = sub_10007B51C();

    if (v18)
    {
      if (v4)
      {
        goto LABEL_21;
      }
    }

    else
    {
      swift_getKeyPath();
      swift_getKeyPath();
      sub_10007AF3C();

      v19 = *(v0 + 48);
      v20 = [objc_allocWithZone(UIImage) init];
      v21 = sub_10007B51C();

      if (v4)
      {
        goto LABEL_21;
      }

      if ((v21 & 1) == 0)
      {
        swift_getKeyPath();
        swift_getKeyPath();
        sub_10007AF3C();

        v4 = *(v0 + 56);
        goto LABEL_22;
      }
    }

    v4 = v17;
LABEL_21:

    goto LABEL_22;
  }

  v11 = *(v0 + 88);
  if (v11)
  {
    v12 = v11;

    v4 = *(v0 + 88);
    goto LABEL_12;
  }

  v24 = Strong;
  v25 = *(v0 + 160);
  v26 = *(v0 + 168);
  v27 = *(v0 + 152);
  sub_1000187C8(*(v0 + 72), v27, &unk_10009ED10, &qword_10007D310);
  if ((*(v26 + 48))(v27, 1, v25) == 1)
  {
    v28 = *(v0 + 152);

    sub_100008824(v28, &unk_10009ED10, &qword_10007D310);
    v4 = 0;
    goto LABEL_12;
  }

  (*(*(v0 + 168) + 32))(*(v0 + 176), *(v0 + 152), *(v0 + 160));
  v29 = *(v24 + 56);
  if (*(v24 + 64) == 1)
  {
    v30 = *(v24 + 56);
  }

  else
  {
    v32 = *(v0 + 128);
    v31 = *(v0 + 136);
    v33 = *(v0 + 120);
    swift_retain_n();
    sub_10007B40C();
    v34 = sub_10007B0BC();
    sub_10007ADFC();

    sub_10007B08C();
    swift_getAtKeyPath();
    sub_100066FD8(v29, 0);
    (*(v32 + 8))(v31, v33);
    sub_100066FD8(v29, 0);
    v30 = *(v0 + 64);
  }

  v35 = swift_unknownObjectWeakLoadStrong();
  if (v35)
  {
    v36 = *(v35 + OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants16ModelDelegateSPI_itemUTI + 8);
    if (v36)
    {
      v37 = *(v0 + 168);
      v38 = *(v0 + 160);
      v39 = *(v0 + 144);
      v40 = *(v35 + OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants16ModelDelegateSPI_itemUTI);
      (*(v37 + 16))(v39, *(v0 + 176), v38);
      (*(v37 + 56))(v39, 0, 1, v38);

      LOBYTE(v38) = sub_100021110(v40, v36, v39);
      v36, v41, v42, v43, v44, v45, v46, v47;
      sub_100008824(v39, &unk_10009ED10, &qword_10007D310);
      if (sub_10001F6F4(v38) == 0x7265646C6F66 && v48 == 0xE600000000000000)
      {
        0xE600000000000000, 0xE600000000000000, v49, v50, v51, v52, v53, v54;
        goto LABEL_37;
      }

      v55 = v48;
      v56 = sub_10007B6BC();
      v55, v57, v58, v59, v60, v61, v62, v63;
      if (v56)
      {
LABEL_37:
        v4 = sub_10001ED64();
        swift_unknownObjectRelease();
        if (v4)
        {

          (*(*(v0 + 168) + 8))(*(v0 + 176), *(v0 + 160));
          goto LABEL_12;
        }

        goto LABEL_40;
      }
    }

    swift_unknownObjectRelease();
  }

LABEL_40:
  v64 = swift_task_alloc();
  *(v0 + 240) = v64;
  *v64 = v0;
  v64[1] = sub_100055E0C;
  v65 = *(v0 + 176);
  v66 = *(v0 + 104);
  v67 = *(v0 + 112);

  return sub_1000676B0(v65, v66, v67, v30);
}

uint64_t sub_100055E0C(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 248) = a1;

  v3 = *(v2 + 224);
  v4 = *(v2 + 216);

  return _swift_task_switch(sub_100055F34, v4, v3);
}

uint64_t sub_100055F34()
{

  v1 = v0[31];
  (*(v0[21] + 8))(v0[22], v0[20]);
  sub_100005C8C(0, &unk_10009F380, NSObject_ptr);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10007AF3C();

  v2 = v0[5];
  if (qword_10009DF58 != -1)
  {
    swift_once();
  }

  v3 = qword_10009EB00;
  v4 = sub_10007B51C();

  if (v4)
  {
    if (v1)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_10007AF3C();

  v5 = v0[6];
  v6 = [objc_allocWithZone(UIImage) init];
  v7 = sub_10007B51C();

  if (v1)
  {
    goto LABEL_10;
  }

  if (v7)
  {
LABEL_9:
    v1 = v3;
LABEL_10:

    goto LABEL_11;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_10007AF3C();

  v1 = v0[7];
LABEL_11:

  v8 = v0[1];

  return v8(v1);
}

uint64_t sub_1000561B4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10007AF3C();

  return v1;
}

uint64_t sub_100056228(uint64_t a1, uint64_t a2, int *a3)
{
  *(v3 + 16) = a1;
  v6 = sub_1000057A0(&qword_10009F378, &qword_10007EE90);
  v7 = *(a2 + v6[12]);
  v8 = *(a2 + v6[16]);
  v9 = *(a2 + v6[20]);
  v12 = (a3 + *a3);
  v10 = swift_task_alloc();
  *(v3 + 24) = v10;
  *v10 = v3;
  v10[1] = sub_10005636C;

  return v12(a2, v7, v8, v9);
}

uint64_t sub_10005636C(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  *v3 = a1;
  v4 = *(v6 + 8);

  return v4();
}

void sub_10005647C(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  if (v3)
  {
    v5 = [v3 containerOptions];
    v6 = [v5 prefersHiddenAllowedSharingOptionsUI];

    if (v6)
    {
      v4 = 0;
    }
  }

  *a2 = v4;
}

uint64_t sub_1000564E4(char *a1, uint64_t a2)
{
  v3 = sub_1000057A0(&qword_10009F370, &qword_10007FC90);
  __chkstk_darwin(v3 - 8);
  v5 = &v18[-v4];
  v6 = sub_1000057A0(&unk_10009ED10, &qword_10007D310);
  __chkstk_darwin(v6 - 8);
  v8 = &v18[-v7];
  v9 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_10007AF3C();

    v11 = sub_10007AC4C();
    v12 = (*(*(v11 - 8) + 48))(v8, 1, v11);
    sub_100008824(v8, &unk_10009ED10, &qword_10007D310);
    if (v12 == 1)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      sub_10007AF3C();

      v13 = (v19 & 0xFE) != 8;
      if (v9)
      {
      }
    }

    else
    {
      if (v9)
      {
      }

      v13 = 1;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_10007AF3C();

    if (v19 == 2 && v13)
    {
      v14 = sub_10007B35C();
      (*(*(v14 - 8) + 56))(v5, 1, 1, v14);
      v15 = swift_allocObject();
      swift_weakInit();
      sub_10007B32C();

      v16 = sub_10007B31C();
      v17 = swift_allocObject();
      v17[2] = v16;
      v17[3] = &protocol witness table for MainActor;
      v17[4] = v15;

      sub_10000DAD0(0, 0, v5, &unk_10007EE38, v17);
    }
  }

  return result;
}

uint64_t sub_100056820(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a4;
  v5 = sub_10007AE2C();
  v4[7] = v5;
  v4[8] = *(v5 - 8);
  v4[9] = swift_task_alloc();
  v4[10] = swift_task_alloc();
  v4[11] = sub_10007B32C();
  v4[12] = sub_10007B31C();
  v7 = sub_10007B2EC();
  v4[13] = v7;
  v4[14] = v6;

  return _swift_task_switch(sub_100056924, v7, v6);
}

uint64_t sub_100056924()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[15] = Strong;
  if (Strong)
  {
    v2 = swift_unknownObjectWeakLoadStrong();
    v0[16] = v2;
    if (v2)
    {
      sub_10007AE0C();
      v3 = sub_10007AE1C();
      v4 = sub_10007B41C();
      if (os_log_type_enabled(v3, v4))
      {
        v5 = swift_slowAlloc();
        *v5 = 0;
        _os_log_impl(&_mh_execute_header, v3, v4, "Refetching share due to network change.", v5, 2u);
      }

      v6 = v0[10];
      v7 = v0[7];
      v8 = v0[8];

      v9 = *(v8 + 8);
      v0[17] = v9;
      v9(v6, v7);
      v0[18] = sub_10007B31C();
      v10 = swift_task_alloc();
      v0[19] = v10;
      *v10 = v0;
      v10[1] = sub_100056B04;

      return sub_100059770();
    }
  }

  v12 = v0[1];

  return v12();
}

uint64_t sub_100056B04()
{
  *(*v1 + 160) = v0;

  v3 = sub_10007B2EC();
  if (v0)
  {
    v4 = sub_100056D48;
  }

  else
  {
    v4 = sub_100056C60;
  }

  return _swift_task_switch(v4, v3, v2);
}

uint64_t sub_100056C60()
{

  v1 = *(v0 + 104);
  v2 = *(v0 + 112);

  return _swift_task_switch(sub_100056CC4, v1, v2);
}

uint64_t sub_100056CC4()
{

  swift_unknownObjectRelease();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100056D48()
{

  v1 = *(v0 + 104);
  v2 = *(v0 + 112);

  return _swift_task_switch(sub_100056DAC, v1, v2);
}

uint64_t sub_100056DAC()
{
  v26 = v0;

  swift_unknownObjectRelease();

  sub_10007AE0C();
  swift_errorRetain();
  v1 = sub_10007AE1C();
  v2 = sub_10007B3FC();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[20];
    v23 = v0[9];
    v24 = v0[17];
    v4 = v0[7];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v25 = v6;
    *v5 = 136315138;
    v0[5] = v3;
    swift_errorRetain();
    sub_1000057A0(&qword_10009E7B0, &qword_10007CFC0);
    v7 = sub_10007B1AC();
    v9 = v8;
    v10 = sub_100037C08(v7, v8, &v25);
    v9, v11, v12, v13, v14, v15, v16, v17;
    *(v5 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v1, v2, "Failed to refetch share for network change %s", v5, 0xCu);
    sub_10000585C(v6);

    v24(v23, v4);
  }

  else
  {
    v18 = v0[17];
    v19 = v0[9];
    v20 = v0[7];

    v18(v19, v20);
  }

  v21 = v0[1];

  return v21();
}

uint64_t sub_100057040()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10007AF3C();

  return v1;
}

uint64_t sub_1000570B4@<X0>(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10007AF3C();

  *a2 = v4;
  return result;
}

uint64_t sub_100057134(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_10007AF4C();
}

uint64_t sub_1000571C4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10007AF3C();
}

uint64_t sub_100057248(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10007AF3C();

  return v3;
}

uint64_t sub_1000572DC(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10007AC4C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000057A0(&unk_10009ED10, &qword_10007D310);
  v9 = __chkstk_darwin(v8 - 8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v17 - v12;
  v14 = OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants12SharingModel_shouldStopAccessingSharedFileOrFolderURL;
  if (*(v2 + OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants12SharingModel_shouldStopAccessingSharedFileOrFolderURL) == 1)
  {
    sub_1000187C8(a1, &v17 - v12, &unk_10009ED10, &qword_10007D310);
    if ((*(v5 + 48))(v13, 1, v4) == 1)
    {
      sub_100008824(v13, &unk_10009ED10, &qword_10007D310);
    }

    else
    {
      sub_10007AC0C();
      (*(v5 + 8))(v13, v4);
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_10007AF3C();

  if ((*(v5 + 48))(v11, 1, v4))
  {
    result = sub_100008824(v11, &unk_10009ED10, &qword_10007D310);
    v16 = 0;
  }

  else
  {
    (*(v5 + 16))(v7, v11, v4);
    sub_100008824(v11, &unk_10009ED10, &qword_10007D310);
    v16 = sub_10007AC2C();
    result = (*(v5 + 8))(v7, v4);
  }

  *(v2 + v14) = v16;
  return result;
}

uint64_t sub_10005759C(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1000057A0(&unk_10009ED10, &qword_10007D310);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v4);
  v9 = &v13 - v8;
  __chkstk_darwin(v7);
  v11 = &v13 - v10;
  sub_1000187C8(a1, &v13 - v10, &unk_10009ED10, &qword_10007D310);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10007AF3C();

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000187C8(v11, v6, &unk_10009ED10, &qword_10007D310);

  sub_10007AF4C();
  sub_1000572DC(v9);
  sub_100008824(v9, &unk_10009ED10, &qword_10007D310);
  return sub_100008824(v11, &unk_10009ED10, &qword_10007D310);
}

uint64_t sub_100057768(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10007AF3C();

  return v3;
}

double sub_1000577D4@<D0>(_OWORD *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10007AF3C();

  result = *&v4;
  *a2 = v4;
  return result;
}