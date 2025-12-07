void *sub_10000175C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

void type metadata accessor for CSUIShareItemStatus()
{
  if (!qword_100010360)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_100010360);
    }
  }
}

void sub_100001850(void *a1)
{
  v2 = sub_1000064AC(&qword_1000103B0, &qword_100009CD8);
  __chkstk_darwin(v2 - 8);
  v146 = &v135 - v3;
  v4 = sub_100009400();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v135 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = &v135 - v10;
  v12 = __chkstk_darwin(v9);
  v147 = &v135 - v13;
  v14 = __chkstk_darwin(v12);
  v16 = &v135 - v15;
  v17 = __chkstk_darwin(v14);
  v144 = &v135 - v18;
  v19 = __chkstk_darwin(v17);
  v142 = &v135 - v20;
  v21 = __chkstk_darwin(v19);
  v143 = &v135 - v22;
  v23 = __chkstk_darwin(v21);
  v25 = &v135 - v24;
  __chkstk_darwin(v23);
  v27 = &v135 - v26;
  sub_1000093D0();
  v28 = sub_1000093F0();
  v29 = sub_100009520();
  v30 = os_log_type_enabled(v28, v29);
  v145 = v8;
  v141 = v16;
  if (v30)
  {
    v31 = v5;
    v32 = v4;
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v151[0] = v34;
    *v33 = 136446210;
    *(v33 + 4) = sub_100006B40(0xD000000000000013, 0x800000010000A2D0, v151);
    _os_log_impl(&_mh_execute_header, v28, v29, "%{public}s called.", v33, 0xCu);
    sub_100007510(v34);

    v4 = v32;
    v5 = v31;

    v35 = v31;
  }

  else
  {

    v35 = v5;
  }

  v36 = *(v35 + 8);
  v36(v27, v4);
  v37 = type metadata accessor for CreateiCloudLinkViewController(0);
  v38 = v148;
  v154.receiver = v148;
  v154.super_class = v37;
  objc_msgSendSuper2(&v154, "beginRequestWithExtensionContext:", a1);
  v39 = [a1 inputItems];
  v40 = sub_100009490();

  if (!*(v40 + 16))
  {

    goto LABEL_55;
  }

  sub_1000074B4(v40 + 32, v151);

  sub_10000776C(0, &qword_1000103E8, NSExtensionItem_ptr);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_55:
    sub_1000093D0();
    v131 = sub_1000093F0();
    v132 = sub_100009530();
    if (os_log_type_enabled(v131, v132))
    {
      v133 = swift_slowAlloc();
      v134 = swift_slowAlloc();
      v151[0] = v134;
      *v133 = 136446210;
      *(v133 + 4) = sub_100006B40(0xD000000000000013, 0x800000010000A2D0, v151);
      _os_log_impl(&_mh_execute_header, v131, v132, "%{public}s Extension did not receive item provider.", v133, 0xCu);
      sub_100007510(v134);
    }

    v80 = v11;
    goto LABEL_58;
  }

  v140 = v5;
  v41 = v152;
  v42 = [v152 attachments];
  if (!v42)
  {

    goto LABEL_55;
  }

  v43 = v42;
  sub_10000776C(0, &qword_1000103F0, NSItemProvider_ptr);
  v44 = sub_100009490();

  if (!(v44 >> 62))
  {
    if (*((v44 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_9;
    }

    goto LABEL_54;
  }

  if (!sub_100009640())
  {
LABEL_54:

    goto LABEL_55;
  }

LABEL_9:
  if ((v44 & 0xC000000000000001) != 0)
  {
    v45 = sub_1000095D0();
  }

  else
  {
    if (!*((v44 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v45 = *(v44 + 32);
  }

  v46 = v45;

  sub_1000093D0();
  v47 = v46;
  v48 = sub_1000093F0();
  v49 = sub_100009520();

  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    v139 = swift_slowAlloc();
    v151[0] = v139;
    *v50 = 136315138;
    v51 = [v47 debugDescription];
    v52 = sub_100009440();
    v138 = v49;
    v53 = v47;
    v54 = v41;
    v55 = v4;
    v56 = v52;
    v57 = v36;
    v59 = v58;

    v60 = v56;
    v4 = v55;
    v41 = v54;
    v47 = v53;
    v61 = sub_100006B40(v60, v59, v151);
    v36 = v57;

    *(v50 + 4) = v61;
    v38 = v148;
    _os_log_impl(&_mh_execute_header, v48, v138, "itemProvider: %s", v50, 0xCu);
    sub_100007510(v139);

    v57(v25, v4);
  }

  else
  {

    v36(v25, v4);
  }

  v63 = v146;
  v62 = v147;
  v64 = sub_100009500();
  (*(*(v64 - 8) + 56))(v63, 1, 1, v64);
  sub_1000094E0();
  v65 = v47;
  v66 = v38;
  v67 = sub_1000094D0();
  v68 = swift_allocObject();
  v68[2] = v67;
  v68[3] = &protocol witness table for MainActor;
  v68[4] = v65;
  v68[5] = v66;
  sub_100004300(0, 0, v63, &unk_100009D60, v68);

  v69 = [v41 userInfo];
  if (!v69)
  {
    goto LABEL_24;
  }

  v70 = v69;
  v71 = sub_100009420();

  v149 = 0xD000000000000017;
  v150 = 0x800000010000A2F0;
  sub_1000095B0();
  if (!*(v71 + 16) || (v72 = sub_1000070E8(v151), (v73 & 1) == 0))
  {

    sub_100007664(v151);
LABEL_24:
    v152 = 0u;
    v153 = 0u;
    goto LABEL_25;
  }

  sub_1000074B4(*(v71 + 56) + 32 * v72, &v152);
  sub_100007664(v151);

  if (!*(&v153 + 1))
  {
LABEL_25:
    sub_10000770C(&v152, &qword_1000103F8, &qword_100009D68);
    goto LABEL_26;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_26:
    sub_1000093D0();
    v77 = sub_1000093F0();
    v78 = sub_100009530();
    if (os_log_type_enabled(v77, v78))
    {
      v79 = swift_slowAlloc();
      *v79 = 0;
      _os_log_impl(&_mh_execute_header, v77, v78, "Extension did not receive required collaborationData.", v79, 2u);
    }

    else
    {
    }

    goto LABEL_30;
  }

  v146 = v66;
  v75 = v151[0];
  v74 = v151[1];
  sub_10000776C(0, &qword_100010400, NSKeyedUnarchiver_ptr);
  sub_10000776C(0, &qword_100010408, SWCollaborationMetadata_ptr);
  v76 = sub_100009570();
  v81 = v76;
  if (!v76)
  {
    v62 = v141;
    sub_1000093D0();
    v104 = sub_1000093F0();
    v105 = sub_100009530();
    if (os_log_type_enabled(v104, v105))
    {
      v106 = swift_slowAlloc();
      *v106 = 0;
      _os_log_impl(&_mh_execute_header, v104, v105, "No colloboration data received!", v106, 2u);

      sub_1000076B8(v75, v74);
    }

    else
    {

      sub_1000076B8(v75, v74);
    }

LABEL_30:
    v80 = v62;
LABEL_58:
    v36(v80, v4);
    return;
  }

  v147 = v75;
  v148 = v74;
  v145 = v65;
  v82 = v143;
  sub_1000093D0();
  v83 = v81;
  v84 = sub_1000093F0();
  v85 = sub_100009540();

  if (os_log_type_enabled(v84, v85))
  {
    v86 = swift_slowAlloc();
    v87 = v41;
    v88 = swift_slowAlloc();
    *v86 = 138412290;
    *(v86 + 4) = v83;
    *v88 = v81;
    v89 = v83;
    _os_log_impl(&_mh_execute_header, v84, v85, "Retrieved collaboration metadata: %@", v86, 0xCu);
    sub_10000770C(v88, &qword_100010410, &qword_100009D70);
    v41 = v87;

    v82 = v143;
  }

  v36(v82, v4);
  v90 = v142;
  sub_1000093D0();
  v91 = v83;
  v92 = sub_1000093F0();
  v93 = sub_100009520();

  v94 = os_log_type_enabled(v92, v93);
  v137 = v36;
  v136 = v41;
  if (v94)
  {
    v95 = v4;
    v96 = swift_slowAlloc();
    v97 = swift_slowAlloc();
    v151[0] = v97;
    *v96 = 136315138;
    v98 = [v91 userSelectedShareOptions];
    if (v98)
    {
      v99 = v98;
      v100 = [v98 summary];

      v101 = sub_100009440();
      v103 = v102;

      v90 = v142;
    }

    else
    {
      v103 = 0xE300000000000000;
      v101 = 7104878;
    }

    v107 = sub_100006B40(v101, v103, v151);

    *(v96 + 4) = v107;
    _os_log_impl(&_mh_execute_header, v92, v93, "summary: %s", v96, 0xCu);
    sub_100007510(v97);

    v4 = v95;
    v108 = v95;
    v36 = v137;
    v137(v90, v108);
    v41 = v136;
  }

  else
  {

    v36(v90, v4);
  }

  v109 = v144;
  sub_1000093D0();
  v110 = v91;
  v111 = sub_1000093F0();
  v112 = sub_100009520();

  if (os_log_type_enabled(v111, v112))
  {
    v113 = v4;
    v114 = swift_slowAlloc();
    v115 = swift_slowAlloc();
    v151[0] = v115;
    *v114 = 136315138;
    v116 = [v110 userSelectedShareOptions];
    if (v116)
    {
      v117 = v116;
      v118 = [v116 optionsGroups];

      sub_10000776C(0, &qword_100010418, SWCollaborationOptionsGroup_ptr);
      sub_100009490();
    }

    sub_10000776C(0, &qword_100010418, SWCollaborationOptionsGroup_ptr);
    v119 = sub_1000094A0();
    v121 = v120;

    v122 = sub_100006B40(v119, v121, v151);

    *(v114 + 4) = v122;
    _os_log_impl(&_mh_execute_header, v111, v112, "optionsGroups: %s", v114, 0xCu);
    sub_100007510(v115);

    v137(v144, v113);
    v41 = v136;
  }

  else
  {

    v36(v109, v4);
  }

  v123 = [v110 userSelectedShareOptions];
  v124 = v145;
  v126 = v147;
  v125 = v148;
  if (v123)
  {
    v127 = v123;
    v128 = [v123 optionsGroups];

    sub_10000776C(0, &qword_100010418, SWCollaborationOptionsGroup_ptr);
    v129 = sub_100009490();

    v130 = sub_1000045AC(v129);
    sub_1000076B8(v126, v125);

    if (v130)
    {
      *&v146[OBJC_IVAR____TtC25CreateiCloudLinkExtension30CreateiCloudLinkViewController_optionsGroups] = v130;
    }
  }

  else
  {

    sub_1000076B8(v126, v125);
  }
}

uint64_t sub_100002988(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[19] = a4;
  v5[20] = a5;
  sub_1000064AC(&qword_1000103B0, &qword_100009CD8);
  v5[21] = swift_task_alloc();
  v6 = sub_100009400();
  v5[22] = v6;
  v5[23] = *(v6 - 8);
  v5[24] = swift_task_alloc();
  v5[25] = swift_task_alloc();
  v5[26] = swift_task_alloc();
  v5[27] = swift_task_alloc();
  v5[28] = sub_1000064AC(&qword_1000103D0, &qword_100009D18);
  v5[29] = swift_task_alloc();
  v7 = sub_100009320();
  v5[30] = v7;
  v8 = *(v7 - 8);
  v5[31] = v8;
  v5[32] = *(v8 + 64);
  v5[33] = swift_task_alloc();
  v5[34] = swift_task_alloc();
  v5[35] = sub_1000094E0();
  v5[36] = sub_1000094D0();

  return _swift_task_switch(sub_100002B68, 0, 0);
}

uint64_t sub_100002B68()
{
  v1 = v0[19];
  v2 = swift_task_alloc();
  v0[37] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[38] = v3;
  *v3 = v0;
  v3[1] = sub_100002C50;
  v5 = v0[28];
  v4 = v0[29];

  return withCheckedContinuation<A>(isolation:function:_:)(v4, 0, 0, 0x284C525564616F6CLL, 0xE900000000000029, sub_100007810, v2, v5);
}

uint64_t sub_100002C50()
{
  v1 = *v0;

  v3 = sub_1000094B0();
  *(v1 + 312) = v3;
  *(v1 + 320) = v2;

  return _swift_task_switch(sub_100002DB0, v3, v2);
}

uint64_t sub_100002DB0()
{
  v22 = v0;
  v1 = v0[30];
  v2 = v0[31];
  v3 = v0[29];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {

    sub_10000770C(v3, &qword_1000103D0, &qword_100009D18);
    sub_1000093D0();
    v4 = sub_1000093F0();
    v5 = sub_100009530();
    v6 = os_log_type_enabled(v4, v5);
    v8 = v0[23];
    v7 = v0[24];
    v9 = v0[22];
    if (v6)
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v21 = v11;
      *v10 = 136446210;
      *(v10 + 4) = sub_100006B40(0xD000000000000013, 0x800000010000A2D0, &v21);
      _os_log_impl(&_mh_execute_header, v4, v5, "%{public}s Unable to load URL, will show nothing.", v10, 0xCu);
      sub_100007510(v11);
    }

    (*(v8 + 8))(v7, v9);

    v12 = v0[1];

    return v12();
  }

  else
  {
    v14 = v0[34];
    v15 = *(v2 + 32);
    v0[41] = v15;
    v0[42] = (v2 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v15(v14, v3, v1);
    v16 = objc_opt_self();
    sub_100009310(v17);
    v19 = v18;
    v0[43] = v18;
    v0[2] = v0;
    v0[7] = v0 + 18;
    v0[3] = sub_1000030F8;
    v20 = swift_continuation_init();
    v0[17] = sub_1000064AC(&qword_100010420, &qword_100009D78);
    v0[10] = _NSConcreteStackBlock;
    v0[11] = 1107296256;
    v0[12] = sub_100003834;
    v0[13] = &unk_10000C860;
    v0[14] = v20;
    [v16 sharingStatusForFileOrFolderURL:v19 completionHandler:v0 + 10];

    return _swift_continuation_await(v0 + 2);
  }
}

uint64_t sub_1000030F8()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 352) = v2;
  v3 = *(v1 + 320);
  v4 = *(v1 + 312);
  if (v2)
  {
    v5 = sub_10000372C;
  }

  else
  {
    v5 = sub_100003228;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100003228()
{
  v42 = v0;
  v1 = v0[43];

  v2 = v0[18];

  sub_1000093D0();
  v3 = sub_1000093F0();
  v4 = sub_100009510();
  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[27];
  v7 = v0[22];
  v8 = v0[23];
  if (v5)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v41 = v10;
    *v9 = 136446466;
    *(v9 + 4) = sub_100006B40(0xD000000000000013, 0x800000010000A2D0, &v41);
    *(v9 + 12) = 2050;
    *(v9 + 14) = v2;
    _os_log_impl(&_mh_execute_header, v3, v4, "%{public}s sharing status: %{public}ld", v9, 0x16u);
    sub_100007510(v10);
  }

  v11 = *(v8 + 8);
  v11(v6, v7);
  if (v2 == 2)
  {
    sub_1000093D0();
    v12 = sub_1000093F0();
    v13 = sub_100009510();
    v14 = os_log_type_enabled(v12, v13);
    v15 = v0[25];
    v16 = v0[22];
    if (v14)
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v41 = v18;
      *v17 = 136446210;
      *(v17 + 4) = sub_100006B40(0xD000000000000013, 0x800000010000A2D0, &v41);
      _os_log_impl(&_mh_execute_header, v12, v13, "%{public}s File is already shared by another user, copying existing link and exiting...", v17, 0xCu);
      sub_100007510(v18);
    }

    v11(v15, v16);
    v40 = &unk_100009D98;
  }

  else
  {
    sub_1000093D0();
    v19 = sub_1000093F0();
    v20 = sub_100009510();
    v21 = os_log_type_enabled(v19, v20);
    v22 = v0[26];
    v23 = v0[22];
    if (v21)
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v41 = v25;
      *v24 = 136446210;
      *(v24 + 4) = sub_100006B40(0xD000000000000013, 0x800000010000A2D0, &v41);
      _os_log_impl(&_mh_execute_header, v19, v20, "%{public}s File is eligible for sharing UI, setting it up...", v24, 0xCu);
      sub_100007510(v25);
    }

    v11(v22, v23);
    v40 = &unk_100009D88;
  }

  v39 = v0[41];
  v26 = v0[34];
  v27 = v0[33];
  v28 = v0[30];
  v29 = v0[31];
  v31 = v0[20];
  v30 = v0[21];
  v32 = sub_100009500();
  (*(*(v32 - 8) + 56))(v30, 1, 1, v32);
  (*(v29 + 16))(v27, v26, v28);
  v33 = v31;
  v34 = sub_1000094D0();
  v35 = (*(v29 + 80) + 40) & ~*(v29 + 80);
  v36 = swift_allocObject();
  *(v36 + 2) = v34;
  *(v36 + 3) = &protocol witness table for MainActor;
  *(v36 + 4) = v33;
  v39(&v36[v35], v27, v28);
  sub_100003AF4(0, 0, v30, v40, v36);

  (*(v29 + 8))(v26, v28);

  v37 = v0[1];

  return v37();
}

uint64_t sub_10000372C()
{
  v1 = v0[43];
  v2 = v0[34];
  v3 = v0[30];
  v4 = v0[31];

  swift_willThrow();
  (*(v4 + 8))(v2, v3);

  v5 = v0[1];

  return v5();
}

uint64_t sub_100003834(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *sub_100007B60((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_1000064AC(&qword_100010428, &qword_100009DA0);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return _swift_continuation_throwingResumeWithError(v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;

    return _swift_continuation_throwingResume(v5);
  }
}

uint64_t sub_100003900(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  sub_1000064AC(&qword_1000103D0, &qword_100009D18);
  v5[7] = swift_task_alloc();
  sub_1000094E0();
  v5[8] = sub_1000094D0();
  v7 = sub_1000094B0();

  return _swift_task_switch(sub_1000039D0, v7, v6);
}

uint64_t sub_1000039D0()
{
  v1 = v0[7];
  v2 = v0[5];
  v3 = v0[6];

  v4 = sub_100009320();
  v5 = *(v4 - 8);
  (*(v5 + 16))(v1, v3, v4);
  (*(v5 + 56))(v1, 0, 1, v4);
  v6 = OBJC_IVAR____TtC25CreateiCloudLinkExtension30CreateiCloudLinkViewController_fileUrl;
  swift_beginAccess();
  sub_100007AF0(v1, v2 + v6);
  swift_endAccess();
  sub_10000477C();

  v7 = v0[1];

  return v7();
}

uint64_t sub_100003AF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1000064AC(&qword_1000103B0, &qword_100009CD8);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_1000068B0(a3, v25 - v10, &qword_1000103B0, &qword_100009CD8);
  v12 = sub_100009500();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_10000770C(v11, &qword_1000103B0, &qword_100009CD8);
  }

  else
  {
    sub_1000094F0();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_1000094B0();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_100009460() + 32;
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

      sub_10000770C(a3, &qword_1000103B0, &qword_100009CD8);

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

  sub_10000770C(a3, &qword_1000103B0, &qword_100009CD8);
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

uint64_t sub_100003DF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1000064AC(&qword_1000103B0, &qword_100009CD8);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_1000068B0(a3, v25 - v10, &qword_1000103B0, &qword_100009CD8);
  v12 = sub_100009500();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_10000770C(v11, &qword_1000103B0, &qword_100009CD8);
  }

  else
  {
    sub_1000094F0();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_1000094B0();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_100009460() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      sub_1000064AC(&qword_1000103E0, &qword_100009D48);
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

      sub_10000770C(a3, &qword_1000103B0, &qword_100009CD8);

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

  sub_10000770C(a3, &qword_1000103B0, &qword_100009CD8);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  sub_1000064AC(&qword_1000103E0, &qword_100009D48);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_100004108(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  sub_1000064AC(&qword_1000103D0, &qword_100009D18);
  v5[7] = swift_task_alloc();
  sub_1000094E0();
  v5[8] = sub_1000094D0();
  v7 = sub_1000094B0();

  return _swift_task_switch(sub_1000041D8, v7, v6);
}

uint64_t sub_1000041D8()
{
  v1 = v0[7];
  v2 = v0[5];
  v3 = v0[6];

  v4 = sub_100009320();
  v5 = *(v4 - 8);
  (*(v5 + 16))(v1, v3, v4);
  (*(v5 + 56))(v1, 0, 1, v4);
  v6 = OBJC_IVAR____TtC25CreateiCloudLinkExtension30CreateiCloudLinkViewController_fileUrl;
  swift_beginAccess();
  sub_100007AF0(v1, v2 + v6);
  swift_endAccess();
  sub_100005284(v3);

  v7 = v0[1];

  return v7();
}

uint64_t sub_100004300(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_1000064AC(&qword_1000103B0, &qword_100009CD8);
  __chkstk_darwin(v8 - 8);
  v10 = v22 - v9;
  sub_1000068B0(a3, v22 - v9, &qword_1000103B0, &qword_100009CD8);
  v11 = sub_100009500();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_10000770C(v10, &qword_1000103B0, &qword_100009CD8);
  }

  else
  {
    sub_1000094F0();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_1000094B0();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_100009460() + 32;

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

      sub_10000770C(a3, &qword_1000103B0, &qword_100009CD8);

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

  sub_10000770C(a3, &qword_1000103B0, &qword_100009CD8);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

void *sub_1000045AC(unint64_t a1)
{
  if (a1 >> 62)
  {
    goto LABEL_15;
  }

  sub_100009610();
  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_100009640())
  {
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v4 = sub_1000095D0();
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v4 = *(a1 + 8 * j + 32);
      }

      v5 = v4;
      v6 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      objc_opt_self();
      if (!swift_dynamicCastObjCClass())
      {

        return 0;
      }

      sub_1000095F0();
      sub_100009620();
      sub_100009630();
      sub_100009600();
      if (v6 == i)
      {
        return _swiftEmptyArrayStorage;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    sub_100009640();
    sub_100009610();
  }

  return _swiftEmptyArrayStorage;
}

void sub_10000477C()
{
  v1 = v0;
  v2 = sub_100009400();
  v58 = *(v2 - 8);
  v59 = v2;
  __chkstk_darwin(v2);
  v4 = &v58 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000093A0();
  v61 = *(v5 - 8);
  v62 = v5;
  v6 = __chkstk_darwin(v5);
  v60 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v63 = &v58 - v8;
  v9 = sub_1000064AC(&qword_1000103D0, &qword_100009D18);
  __chkstk_darwin(v9 - 8);
  v11 = &v58 - v10;
  v12 = sub_100009320();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v16 = &v58 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v58 - v17;
  v19 = OBJC_IVAR____TtC25CreateiCloudLinkExtension30CreateiCloudLinkViewController_fileUrl;
  swift_beginAccess();
  sub_1000068B0(&v1[v19], v11, &qword_1000103D0, &qword_100009D18);
  if ((v13[6])(v11, 1, v12) != 1)
  {
    v13[4](v18, v11, v12);
    sub_100009380();
    v23 = v13[2];
    v58 = v12;
    v59 = v18;
    v23(v16, v18, v12);
    swift_allocObject();
    swift_unknownObjectWeakInit();
    swift_unknownObjectWeakInit();

    v24 = sub_100009370();
    swift_unknownObjectWeakDestroy();

    *&v1[OBJC_IVAR____TtC25CreateiCloudLinkExtension30CreateiCloudLinkViewController_createiCloudLinkViewModel] = v24;
    swift_retain_n();

    v25 = v63;
    sub_100009390();
    (*(v61 + 16))(v60, v25, v62);
    v26 = objc_allocWithZone(sub_1000064AC(&qword_1000103D8, &qword_100009D20));
    v27 = sub_100009410();
    [v1 addChildViewController:v27];
    v28 = [v1 view];
    if (v28)
    {
      v29 = v28;
      v30 = [v27 view];
      if (v30)
      {
        v31 = v30;
        [v29 addSubview:v30];

        v32 = [v27 view];
        if (v32)
        {
          v60 = v13;
          [v32 setTranslatesAutoresizingMaskIntoConstraints:0];

          v33 = [v27 view];
          if (v33)
          {
            v34 = [v33 topAnchor];

            v35 = [v1 view];
            if (v35)
            {
              v36 = v35;
              v37 = [v35 topAnchor];

              v38 = [v34 constraintEqualToAnchor:v37];
              [v38 setActive:1];

              v39 = [v27 view];
              if (v39)
              {
                v40 = [v39 bottomAnchor];

                v41 = [v1 view];
                if (v41)
                {
                  v42 = v41;
                  v43 = [v41 bottomAnchor];

                  v44 = [v40 constraintEqualToAnchor:v43];
                  [v44 setActive:1];

                  v45 = [v27 view];
                  if (v45)
                  {
                    v46 = [v45 leftAnchor];

                    v47 = [v1 view];
                    if (v47)
                    {
                      v48 = v47;
                      v49 = [v47 leftAnchor];

                      v50 = [v46 constraintEqualToAnchor:v49];
                      [v50 setActive:1];

                      v51 = [v27 view];
                      if (v51)
                      {
                        v52 = [v51 rightAnchor];

                        v53 = [v1 view];
                        v54 = v59;
                        if (v53)
                        {
                          v55 = v53;
                          v56 = [v53 rightAnchor];

                          v57 = [v52 constraintEqualToAnchor:v56];
                          [v57 setActive:1];

                          (*(v61 + 8))(v63, v62);
                          (*(v60 + 1))(v54, v58);
                          return;
                        }

LABEL_28:
                        __break(1u);
                        return;
                      }

LABEL_27:
                      __break(1u);
                      goto LABEL_28;
                    }

LABEL_26:
                    __break(1u);
                    goto LABEL_27;
                  }

LABEL_25:
                  __break(1u);
                  goto LABEL_26;
                }

LABEL_24:
                __break(1u);
                goto LABEL_25;
              }

LABEL_23:
              __break(1u);
              goto LABEL_24;
            }

LABEL_22:
            __break(1u);
            goto LABEL_23;
          }

LABEL_21:
          __break(1u);
          goto LABEL_22;
        }

LABEL_20:
        __break(1u);
        goto LABEL_21;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_20;
  }

  sub_10000770C(v11, &qword_1000103D0, &qword_100009D18);
  sub_1000093D0();
  v20 = sub_1000093F0();
  v21 = sub_100009530();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&_mh_execute_header, v20, v21, "File URL is nil.", v22, 2u);
  }

  (*(v58 + 8))(v4, v59);
  sub_100005D80();
}

uint64_t sub_100005028(uint64_t a1)
{
  v2 = sub_1000064AC(&qword_1000103B0, &qword_100009CD8);
  __chkstk_darwin(v2 - 8);
  v4 = &v9 - v3;
  v5 = sub_100009500();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  sub_1000094E0();

  v6 = sub_1000094D0();
  v7 = swift_allocObject();
  v7[2] = v6;
  v7[3] = &protocol witness table for MainActor;
  v7[4] = a1;
  sub_100003DF4(0, 0, v4, &unk_100009D30, v7);
}

uint64_t sub_10000514C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a1;
  v4[6] = a4;
  sub_1000094E0();
  v4[7] = sub_1000094D0();
  v6 = sub_1000094B0();

  return _swift_task_switch(sub_1000051E4, v6, v5);
}

uint64_t sub_1000051E4()
{

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    sub_100005D80();
  }

  **(v0 + 40) = Strong == 0;
  v2 = *(v0 + 8);

  return v2();
}

void sub_100005284(uint64_t a1)
{
  v2 = sub_100009360();
  v67 = *(v2 - 8);
  v68 = v2;
  v3 = __chkstk_darwin(v2);
  v65 = &v63 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v66 = &v63 - v5;
  v6 = sub_1000064AC(&qword_1000103B0, &qword_100009CD8);
  __chkstk_darwin(v6 - 8);
  v8 = &v63 - v7;
  v9 = sub_100009320();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v63 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100009400();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v63 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000093E0();
  v17 = sub_1000093F0();
  v18 = sub_100009510();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v63 = v9;
    *v19 = 0;
    _os_log_impl(&_mh_execute_header, v17, v18, "Show Copy iCloud Link view.", v19, 2u);
    v9 = v63;
  }

  (*(v14 + 8))(v16, v13);
  (*(v10 + 16))(v12, a1, v9);
  sub_100009340();
  swift_allocObject();
  v20 = sub_100009330();
  v21 = sub_100009500();
  (*(*(v21 - 8) + 56))(v8, 1, 1, v21);
  sub_1000094E0();

  v22 = sub_1000094D0();
  v23 = swift_allocObject();
  v23[2] = v22;
  v23[3] = &protocol witness table for MainActor;
  v23[4] = v20;
  sub_100003AF4(0, 0, v8, &unk_100009CE8, v23);

  v24 = swift_allocObject();
  v25 = v64;
  *(v24 + 16) = v64;
  *(swift_allocObject() + 16) = v25;
  v26 = v25;

  v27 = v26;
  v28 = v66;
  sub_100009350();
  (*(v67 + 16))(v65, v28, v68);
  v29 = objc_allocWithZone(sub_1000064AC(&qword_1000103B8, &qword_100009CF0));
  v30 = sub_100009410();
  [v27 addChildViewController:v30];
  v31 = [v27 view];
  if (!v31)
  {
    __break(1u);
    goto LABEL_16;
  }

  v32 = v31;
  v33 = [v30 view];
  if (!v33)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v34 = v33;
  [v32 addSubview:v33];

  v35 = [v30 view];
  if (!v35)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  [v35 setTranslatesAutoresizingMaskIntoConstraints:0];

  sub_1000064AC(&qword_1000103C0, &qword_100009CF8);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_100009C90;
  v37 = [v30 view];

  if (!v37)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v38 = [v37 topAnchor];

  v39 = [v27 view];
  if (!v39)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v40 = v39;
  v41 = [v39 topAnchor];

  v42 = [v38 constraintEqualToAnchor:v41];
  *(v36 + 32) = v42;
  v43 = [v30 view];

  if (!v43)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v44 = [v43 bottomAnchor];

  v45 = [v27 view];
  if (!v45)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v46 = v45;
  v47 = [v45 bottomAnchor];

  v48 = [v44 constraintEqualToAnchor:v47];
  *(v36 + 40) = v48;
  v49 = [v30 view];

  if (!v49)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v50 = [v49 leftAnchor];

  v51 = [v27 view];
  if (!v51)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v52 = v51;
  v53 = [v51 leftAnchor];

  v54 = [v50 constraintEqualToAnchor:v53];
  *(v36 + 48) = v54;
  v55 = [v30 view];

  if (!v55)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v56 = [v55 rightAnchor];

  v57 = [v27 view];
  if (v57)
  {
    v58 = v57;
    v59 = objc_opt_self();
    v60 = [v58 rightAnchor];

    v61 = [v56 constraintEqualToAnchor:v60];
    *(v36 + 56) = v61;
    sub_10000776C(0, &qword_1000103C8, NSLayoutConstraint_ptr);
    isa = sub_100009480().super.isa;

    [v59 activateConstraints:isa];

    (*(v67 + 8))(v66, v68);
    return;
  }

LABEL_25:
  __break(1u);
}

uint64_t sub_100005B20()
{
  v0[2] = sub_1000094E0();
  v0[3] = sub_1000094D0();
  v3 = (&async function pointer to dispatch thunk of CopyiCloudLinkViewModel.fetchShareURL() + async function pointer to dispatch thunk of CopyiCloudLinkViewModel.fetchShareURL());
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_100005BE4;

  return v3();
}

uint64_t sub_100005BE4()
{

  v1 = sub_1000094B0();

  return _swift_task_switch(sub_100005D20, v1, v0);
}

uint64_t sub_100005D20()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_100005D80()
{
  v1 = v0;
  v2 = sub_100009400();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000093E0();
  v6 = sub_1000093F0();
  v7 = sub_100009510();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "Dismissing CreateiCloudLinkExtension Flow.", v8, 2u);
  }

  (*(v3 + 8))(v5, v2);
  v9 = swift_allocObject();
  *(v9 + 16) = v1;
  aBlock[4] = sub_10000648C;
  aBlock[5] = v9;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006010;
  aBlock[3] = &unk_10000C6A8;
  v10 = _Block_copy(aBlock);
  v11 = v1;

  [v11 dismissViewControllerAnimated:1 completion:v10];
  _Block_release(v10);
}

void sub_100005F74(void *a1)
{
  v1 = [a1 extensionContext];
  if (v1)
  {
    v2 = v1;
    isa = sub_100009480().super.isa;
    [v2 completeRequestReturningItems:isa completionHandler:0];
  }
}

uint64_t sub_100006010(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

id sub_10000625C(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for CreateiCloudLinkViewController(0);
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t type metadata accessor for CreateiCloudLinkViewController(uint64_t a1)
{
  result = qword_100010398;
  if (!qword_100010398)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100006354(uint64_t a1)
{
  sub_1000063FC(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1000063FC(uint64_t a1)
{
  if (!qword_1000103A8)
  {
    sub_100009320();
    v1 = sub_100009580();
    if (!v2)
    {
      atomic_store(v1, &qword_1000103A8);
    }
  }
}

uint64_t sub_100006454()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100006494(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000064AC(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_1000064F8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100007BC4;

  return sub_100005B20();
}

uint64_t sub_1000065D0(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1000066C8;

  return v6(a1);
}

uint64_t sub_1000066C8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1000067C0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000067F8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100007BC4;

  return sub_1000065D0(a1, v4);
}

uint64_t sub_1000068B0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1000064AC(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_100006918()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100006958()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100006998(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100006A4C;

  return sub_10000514C(a1, v4, v5, v6);
}

uint64_t sub_100006A4C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

unint64_t sub_100006B40(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100006C0C(v11, 0, 0, 1, a1, a2);
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
    sub_1000074B4(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100007510(v11);
  return v7;
}

unint64_t sub_100006C0C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_100006D18(a5, a6);
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
    result = sub_1000095E0();
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

void *sub_100006D18(uint64_t a1, unint64_t a2)
{
  v3 = sub_100006D64(a1, a2);
  sub_100006E94(&off_10000C638);
  return v3;
}

void *sub_100006D64(uint64_t a1, unint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  v6 = sub_100006F80(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_1000095E0();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_100009470();
        if (!v10)
        {
          return _swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_100006F80(v10, 0);
        result = sub_1000095C0();
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

uint64_t sub_100006E94(uint64_t result)
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

  result = sub_100006FF4(result, v11, 1, v3);
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

void *sub_100006F80(uint64_t a1, uint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  sub_1000064AC(&qword_100010430, &unk_100009DA8);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_100006FF4(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000064AC(&qword_100010430, &unk_100009DA8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
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

unint64_t sub_1000070E8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100009590(*(v2 + 40));

  return sub_10000712C(a1, v4);
}

unint64_t sub_10000712C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_1000077B4(*(v2 + 48) + 40 * v4, v8);
      v6 = sub_1000095A0();
      sub_100007664(v8);
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

uint64_t sub_1000071F4(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_1000072E8;

  return v5(v2 + 32);
}

uint64_t sub_1000072E8()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v5 = *v0;

  *v2 = *(v1 + 32);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_1000073FC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100007BC4;

  return sub_1000071F4(a1, v4);
}

uint64_t sub_1000074B4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100007510(void *a1)
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

uint64_t sub_10000755C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000075A4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100006A4C;

  return sub_100002988(a1, v4, v5, v7, v6);
}

uint64_t sub_1000076B8(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_10000770C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_1000064AC(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_10000776C(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_100007834(uint64_t a1)
{
  v4 = *(sub_100009320() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100007BC4;

  return sub_100003900(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_10000792C()
{
  v1 = sub_100009320();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1000079F8(uint64_t a1)
{
  v4 = *(sub_100009320() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100007BC4;

  return sub_100004108(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_100007AF0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000064AC(&qword_1000103D0, &qword_100009D18);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void *sub_100007B60(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_100007BCC(uint64_t a1, void *a2)
{
  v30 = a2;
  v28 = sub_1000064AC(&qword_100010438, &unk_100009DD0);
  v3 = *(v28 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v28);
  v26 = &v24 - v5;
  v29 = sub_1000093C0();
  v27 = *(v29 - 8);
  __chkstk_darwin(v29);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100009400();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000093D0();
  v12 = sub_1000093F0();
  v13 = sub_100009510();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v25 = a1;
    v15 = v14;
    v16 = swift_slowAlloc();
    v31 = v16;
    *v15 = 136446210;
    *(v15 + 4) = sub_100006B40(0x284C525564616F6CLL, 0xE900000000000029, &v31);
    _os_log_impl(&_mh_execute_header, v12, v13, "%{public}s Starting to load URL...", v15, 0xCu);
    sub_100007510(v16);

    a1 = v25;
  }

  (*(v9 + 8))(v11, v8);
  sub_1000093B0();
  v17 = v26;
  v18 = v28;
  (*(v3 + 16))(v26, a1, v28);
  v19 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v20 = swift_allocObject();
  (*(v3 + 32))(v20 + v19, v17, v18);
  v21 = v30;
  *(v20 + ((v4 + v19 + 7) & 0xFFFFFFFFFFFFFFF8)) = v30;
  v22 = v21;

  return (*(v27 + 8))(v7, v29);
}

uint64_t sub_100007F54(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v80 = a5;
  v85 = a4;
  LODWORD(v84) = a2;
  v6 = sub_1000064AC(&qword_100010438, &unk_100009DD0);
  v79 = *(v6 - 8);
  v77 = *(v79 + 64);
  __chkstk_darwin(v6);
  v78 = &v71 - v7;
  v8 = sub_100009320();
  v88 = *(v8 - 8);
  v9 = __chkstk_darwin(v8);
  v72 = &v71 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v86 = &v71 - v11;
  v12 = sub_1000064AC(&qword_1000103D0, &qword_100009D18);
  v13 = __chkstk_darwin(v12 - 8);
  v73 = &v71 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v81 = &v71 - v16;
  v17 = __chkstk_darwin(v15);
  v19 = &v71 - v18;
  __chkstk_darwin(v17);
  v21 = &v71 - v20;
  v22 = sub_100009400();
  v23 = *(v22 - 8);
  v24 = __chkstk_darwin(v22);
  v83 = &v71 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin(v24);
  v87 = &v71 - v27;
  __chkstk_darwin(v26);
  v29 = &v71 - v28;
  sub_1000093D0();
  v82 = a1;
  sub_100009090(a1, v21);
  v30 = sub_1000093F0();
  v31 = sub_100009510();
  if (os_log_type_enabled(v30, v31))
  {
    v74 = v23;
    v75 = v22;
    v76 = v6;
    v32 = swift_slowAlloc();
    v90[0] = swift_slowAlloc();
    *v32 = 136446722;
    *(v32 + 4) = sub_100006B40(0x284C525564616F6CLL, 0xE900000000000029, v90);
    *(v32 + 12) = 2080;
    sub_100009090(v21, v19);
    v33 = v88[6](v19, 1, v8);
    v71 = v8;
    if (v33 == 1)
    {
      sub_100009100(v19);
      v34 = 0;
      v35 = 0;
    }

    else
    {
      v34 = sub_100009300();
      v35 = v38;
      (v88[1])(v19, v8);
    }

    v89[0] = v34;
    v89[1] = v35;
    sub_1000064AC(&qword_100010450, &qword_100009DE0);
    v39 = sub_100009450();
    v41 = v40;
    sub_100009100(v21);
    v42 = sub_100006B40(v39, v41, v90);

    *(v32 + 14) = v42;
    *(v32 + 22) = 1026;
    *(v32 + 24) = v84 & 1;
    _os_log_impl(&_mh_execute_header, v30, v31, "%{public}s Received URL %s, openInPlace %{BOOL,public}d", v32, 0x1Cu);
    swift_arrayDestroy();

    v23 = v74;
    v37 = v75;
    v36 = *(v74 + 8);
    (v36)(v29, v75);
    v8 = v71;
    v6 = v76;
  }

  else
  {

    sub_100009100(v21);
    v36 = *(v23 + 8);
    (v36)(v29, v22);
    v37 = v22;
  }

  v43 = v81;
  sub_100009090(v82, v81);
  v44 = v88;
  v45 = v88[6](v43, 1, v8);
  v46 = v86;
  v47 = v83;
  if (v45 == 1)
  {
    sub_100009100(v43);
LABEL_13:
    sub_1000093D0();
    v58 = sub_1000093F0();
    v59 = sub_100009510();
    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      v88 = v36;
      v61 = v47;
      v62 = v60;
      v63 = swift_slowAlloc();
      v89[0] = v63;
      *v62 = 136446210;
      *(v62 + 4) = sub_100006B40(0x284C525564616F6CLL, 0xE900000000000029, v89);
      _os_log_impl(&_mh_execute_header, v58, v59, "%{public}s Either fileURL is nil or openInPlace is false. Attempting to load URL from item provider...", v62, 0xCu);
      sub_100007510(v63);

      (v88)(v61, v37);
    }

    else
    {

      (v36)(v47, v37);
    }

    v65 = v78;
    v64 = v79;
    (*(v79 + 16))(v78, v85, v6);
    v66 = (*(v64 + 80) + 16) & ~*(v64 + 80);
    v67 = swift_allocObject();
    (*(v64 + 32))(v67 + v66, v65, v6);
    sub_100009288(&qword_100010440, &protocol conformance descriptor for URL);
  }

  v44[4](v86, v43, v8);
  if ((v84 & 1) == 0)
  {
    (v44[1])(v46, v8);
    goto LABEL_13;
  }

  v74 = v23;
  v75 = v37;
  v76 = v6;
  sub_1000093D0();
  v48 = v72;
  v84 = v44[2];
  v84(v72, v46, v8);
  v49 = sub_1000093F0();
  v50 = sub_100009510();
  if (os_log_type_enabled(v49, v50))
  {
    v51 = swift_slowAlloc();
    v83 = swift_slowAlloc();
    v89[0] = v83;
    *v51 = 136315394;
    *(v51 + 4) = sub_100006B40(0x284C525564616F6CLL, 0xE900000000000029, v89);
    *(v51 + 12) = 2080;
    sub_100009288(&qword_100010448, &protocol conformance descriptor for URL);
    v52 = sub_100009650();
    v54 = v53;
    v55 = v48;
    v56 = v88[1];
    (v56)(v55, v8);
    v57 = sub_100006B40(v52, v54, v89);
    v46 = v86;

    *(v51 + 14) = v57;
    _os_log_impl(&_mh_execute_header, v49, v50, "%s openInPlace is true, resuming with url %s.", v51, 0x16u);
    swift_arrayDestroy();

    v44 = v88;
  }

  else
  {

    v69 = v48;
    v56 = v44[1];
    (v56)(v69, v8);
  }

  (v36)(v87, v75);
  v70 = v73;
  v84(v73, v46, v8);
  (v44[7])(v70, 0, 1, v8);
  sub_1000094C0();
  return (v56)(v46, v8);
}

uint64_t sub_100008924()
{
  v1 = sub_1000064AC(&qword_100010438, &unk_100009DD0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_1000089CC(uint64_t a1, int a2, uint64_t a3)
{
  v7 = *(sub_1000064AC(&qword_100010438, &unk_100009DD0) - 8);
  v8 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v9 = *(v3 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_100007F54(a1, a2, a3, v3 + v8, v9);
}

uint64_t sub_100008A8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v54 = a3;
  v5 = sub_100009400();
  v51 = *(v5 - 8);
  v52 = v5;
  v6 = __chkstk_darwin(v5);
  v8 = &v46[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v10 = &v46[-v9];
  v11 = sub_1000064AC(&qword_1000103D0, &qword_100009D18);
  v12 = __chkstk_darwin(v11 - 8);
  v53 = &v46[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v12);
  v15 = &v46[-v14];
  v16 = sub_100009320();
  v17 = *(v16 - 8);
  v18 = __chkstk_darwin(v16);
  v20 = &v46[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v18);
  v22 = &v46[-v21];
  sub_100009090(a1, v15);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    sub_100009100(v15);
    sub_1000093D0();
    swift_errorRetain();
    v23 = sub_1000093F0();
    v24 = sub_100009530();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v55 = a2;
      v56 = v26;
      *v25 = 136315138;
      swift_errorRetain();
      sub_1000064AC(&qword_100010458, qword_100009DE8);
      v27 = sub_100009450();
      v29 = sub_100006B40(v27, v28, &v56);

      *(v25 + 4) = v29;
      _os_log_impl(&_mh_execute_header, v23, v24, "Failed to load URL from item provider: %s", v25, 0xCu);
      sub_100007510(v26);
    }

    (*(v51 + 8))(v8, v52);
    (*(v17 + 56))(v53, 1, 1, v16);
    sub_1000064AC(&qword_100010438, &unk_100009DD0);
    return sub_1000094C0();
  }

  else
  {
    (*(v17 + 32))(v22, v15, v16);
    sub_1000093D0();
    v31 = *(v17 + 16);
    v31(v20, v22, v16);
    v32 = sub_1000093F0();
    v33 = sub_100009510();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v50 = v31;
      v35 = v34;
      v49 = swift_slowAlloc();
      v56 = v49;
      *v35 = 136446466;
      *(v35 + 4) = sub_100006B40(0x284C525564616F6CLL, 0xE900000000000029, &v56);
      *(v35 + 12) = 2080;
      sub_100009288(&qword_100010448, &protocol conformance descriptor for URL);
      v48 = v32;
      v36 = sub_100009650();
      v38 = v37;
      v39 = *(v17 + 8);
      v47 = v33;
      v40 = v20;
      v41 = v39;
      v39(v40, v16);
      v42 = sub_100006B40(v36, v38, &v56);

      *(v35 + 14) = v42;
      v43 = v48;
      _os_log_impl(&_mh_execute_header, v48, v47, "%{public}s Loaded fileUrl using NSURL: %s.", v35, 0x16u);
      swift_arrayDestroy();

      v31 = v50;
    }

    else
    {

      v44 = v20;
      v41 = *(v17 + 8);
      v41(v44, v16);
    }

    (*(v51 + 8))(v10, v52);
    v45 = v53;
    v31(v53, v22, v16);
    (*(v17 + 56))(v45, 0, 1, v16);
    sub_1000064AC(&qword_100010438, &unk_100009DD0);
    sub_1000094C0();
    return (v41)(v22, v16);
  }
}

uint64_t sub_100009090(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000064AC(&qword_1000103D0, &qword_100009D18);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100009100(uint64_t a1)
{
  v2 = sub_1000064AC(&qword_1000103D0, &qword_100009D18);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100009168()
{
  v1 = sub_1000064AC(&qword_100010438, &unk_100009DD0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1000091FC(uint64_t a1, uint64_t a2)
{
  v5 = *(sub_1000064AC(&qword_100010438, &unk_100009DD0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_100008A8C(a1, a2, v6);
}

uint64_t sub_100009288(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_100009320();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}